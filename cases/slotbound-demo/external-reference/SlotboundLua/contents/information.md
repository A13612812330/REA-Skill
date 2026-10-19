# SlotBound 최신 구현 정보 문서

> 갱신 기준: 2026-07-14 현재 워크스페이스의 실제 게임 파일  
> 확인한 주요 파일: `main.lua`, `conf.lua`, `src/data/constants.lua`, `src/game/slot.lua`, `src/game/battlefield.lua`, `src/game/promotion.lua`, `src/game/promotion_stats.lua`, `src/game/item.lua`, `src/game/cores.lua`, `src/game/quest.lua`, `src/game/stone.lua`, `src/ui/upgrade.lua`, `src/ui/config.lua`, `src/language/*.json`

이 문서는 이전 `information.md`의 깨진 인코딩, 오래된 수치, 존재하지 않는 파일 참조, 실제 구현과 맞지 않는 설명을 현재 코드 기준으로 다시 정리한 문서다. 일부 오래된 Lua 문자열 자체가 이미 mojibake 상태라서, 확인 가능한 경우에는 한국어 표시명과 영문 key/id를 함께 적었다.

---

## 1. 게임 개요

| 항목 | 현재 구현 |
|:---|:---|
| 장르 | 3x3 슬롯 기반 오토 배틀러 + 웨이브 생존 + 로그라이트 영구 성장 |
| 엔진 | LÖVE 11.x |
| 기본 해상도 | 640x360 가상 캔버스, 기본 창 1280x720, 정수 스케일/nearest 필터 중심 |
| 저장 ID | `slotbound` |
| 기본 언어 | 한국어(`ko`), 영어/일본어/중국어 리소스 존재 |
| 현재 실행 진입점 | `conf.lua`, `main.lua` |

플레이어는 준비 단계에서 슬롯을 돌려 유닛을 얻고, 유닛 배치/흡수/상점/코어/스톤을 관리한 뒤 자동 전투로 웨이브를 처리한다. 전투 중 적이 기지까지 통과하면 기지 HP가 감소한다. 심판 웨이브와 보스 웨이브는 급사 웨이브로 취급되어, 통과 또는 패배 판정이 런 종료로 이어진다.

---

## 2. 실행과 창 설정

`conf.lua` 기준:

- 게임 제목: `SlotBound`
- 아이콘: `icon.png`
- 기본 표시 모드: 저장 설정이 없으면 `borderless`
- 웹 빌드 감지 시 `windowed`, `resizable = true`
- 일반 데스크톱 빌드는 초기 창 숨김 후 로딩 완료 시 표시
- Windows DPI 스케일 보정을 위해 FFI로 DPI awareness를 먼저 설정
- 기본 창 크기: 1280x720
- 가상 캔버스: 640x360
- HiDPI 활성화, MSAA 0, vsync 1

---

## 3. 전체 루프

1. 메인 메뉴에서 스테이지와 난이도 선택
2. 준비/스핀 단계 진입
3. 슬롯 스핀으로 유닛 획득
4. 유닛 배치, 흡수, 상점, 코어, 스톤 관리
5. 전투 준비 아이콘을 누르면 전투 시작
6. 자동 전투 결과에 따라 보상, 퀘스트, 원석, 클리어/패배 처리
7. 다음 웨이브 준비 또는 게임 종료/클리어 화면 진입

난이도별 클리어 목표 웨이브는 `main.lua:getVictoryClearWaveForDifficulty` 기준이다.

| 난이도 | 클리어 웨이브 |
|:---|---:|
| 쉬움 | 10 |
| 보통 | 20 |
| 어려움 | 30 |

심판 웨이브는 `wave % 10 == 5`, 보스 웨이브는 `wave % 10 == 0`이다. 둘 다 `suddenDeathWave`로 처리된다.


---

## 4. 주요 조작

| 입력 | 기능 |
|:---|:---|
| 스핀 버튼 / `S` | 슬롯 스핀 |
| 유닛 드래그 | 준비 단계 배치 변경 |
| 흡수 모드 버튼 / `D` | 흡수 모드 전환 |
| 흡수 모드에서 유닛 드롭 | 대상 유닛에 재료 유닛 흡수 |
| 전투 준비 아이콘 | 원하는 시점에 전투 시작 |
| `Esc` | 일시정지/옵션/메뉴 흐름 |
| `F2` | 샌드박스/디버그 HUD 토글 |
| `F11` | 전체 화면 토글 |

---

## 5. 경제와 스핀

`main.lua`와 `src/data/constants.lua` 기준 현재 실제 스핀 흐름:

| 항목 | 값 |
|:---|---:|
| 웨이브당 스핀 수 | 6 |
| 웨이브 시작 스핀 가격 | 100 골드 |
| 유료 스핀 가격 증가 | 스핀마다 +50 |
| `freeSpinCredits` | 코어/효과로 받는 무료 스핀 크레딧 |
| 기본 강제 당첨률 | 0% (`constants.slot.forceWinProb = 0.0`) |
| 릴 정지 타이밍 | 0.6초, 0.9초, 1.2초 |

`constants.lua`에는 `freePerWave = 3`, `paidMaxPerWave = 3` 설정이 남아 있지만, 실제 `main.lua` 흐름은 `spinsLeft = 6`, `freeSpinCredits = 0`, `spinCost = 100`, `spinCostStep = 50`를 중심으로 작동한다. 따라서 문서 기준은 `main.lua`의 실제 실행 흐름을 우선한다.

준비 웨이브 타이머는 현재 완전히 비활성화되어 있다. 준비 단계는 시간에 따라 자동으로 전투로 넘어가지 않으며, 플레이어가 전투 준비 아이콘을 눌러야만 시작된다.

스핀 가격은 코어 효과에 의해 할인되거나 되돌려질 수 있다. 예를 들어 `VerticalCore`는 세로 라인 당첨 시 해당 유료 스핀의 가격 증가분을 되돌릴 수 있고, `HorizontalCore`, `NutrientLeaf`, `EntropySpoonFreeSpin`, `ResonoscopeChain`, `RewindClock` 등은 다음 스핀 가격에 영향을 준다.

---

## 6. 슬롯 시스템

`src/game/slot.lua` 기준:

- 그리드: 3x3
- 라인: 총 8개
  - 1~3: 가로
  - 4~5: 대각선
  - 6~8: 세로
- 승리 조건: 한 라인의 3칸이 같은 심볼이면 당첨
- 조커: `Joker` 또는 `J`는 아무 심볼 대체 가능, 단 조커 3개만으로는 라인 심볼이 되지 않음
- 잭팟 판정: 기본 5라인(가로 3 + 대각 2)이 모두 완성되면 잭팟 취급
- 샌드박스용 다음 스핀 강제 라인 수/심볼 기능 존재
- 첫 스핀 보장, 코어, 스톤, 조커 강제 셀 등은 `slot._coreSpinMods`로 스핀 전에 주입됨

### 6.1 심볼 확률

`src/data/constants.lua` 기준 현재 확률:

| 심볼 | 역할 | 확률 |
|:---:|:---|---:|
| W | Warrior / 전사 | 20% |
| A | Archer / 궁수 | 20% |
| S | Spear / 창병 | 20% |
| M | Mage / 마법사 | 15% |
| H | Horse/Cavalry / 기병 | 15% |
| D | Duelist / 결투사 | 10% |

확률 값은 내부에서 합산 후 정규화된다. README의 24/24/24/10/10/8 정보는 현재 코드와 다르다.

### 6.2 넛지

`slot:nudgeColumn(col)` 기준:

- 특정 열을 아래로 1칸 밀고 맨 위에 새 심볼을 넣는다.
- 스핀 중, 릴 애니메이션 중, 그리드 없음 상태에서는 실패한다.
- 넛지 후에는 이동한 열을 포함하는 당첨 라인만 보상 대상으로 계산한다.
- `quest.onNudgeUsed()`가 호출되어 넛지 미사용 퀘스트 진행을 초기화한다.
- 기본 애니메이션 시간은 `src/ui/config.lua`의 `ui.nudgeButtons.reelAnimDurSec = 0.18`.

---

## 7. 유닛 기본 스탯

`src/game/battlefield.lua`의 `baseBySym` 기준:

| 심볼 | 유닛 | HP | ATK | ASPD | 사거리 | 이동속도 | 역할 |
|:---:|:---|---:|---:|---:|---:|---:|:---|
| W | 전사 / Warrior | 70 | 9 | 1.5 | 50 | 55 | 근접 탱커 |
| A | 궁수 / Archer | 40 | 8 | 1.3 | 150 | 45 | 원거리 |
| S | 창병 / Spearman | 65 | 12 | 1.25 | 55 | 40 | 근접 밸런스 |
| M | 마법사 / Mage | 55 | 17 | 1.135 | 140 | 45 | 원거리 고화력 |
| H | 기병 / Cavalry | 90 | 17 | 1.135 | 55 | 70 | 빠른 근접 |
| D | 결투사 / Duelist | 120 | 23 | 1.2 | 60 | 55 | 고스탯 근접 |

ASPD는 내부값이며, UI 표시값은 `constants.ui.aspd.displayScale = 20`을 사용한다.

---

## 8. 유닛 희귀도

`src/data/constants.lua` 기준 기본 유닛 희귀도 확률:

| 희귀도 | 기본 확률 |
|:---|---:|
| normal | 100% |
| advanced | 0% |
| rare | 0% |
| legendary | 0% |
| prism | 0% |

영구 업그레이드나 스톤을 사용하면 희귀도 분포가 바뀐다.

영구 업그레이드로 확인되는 희귀도 변화:

| 업그레이드 | 효과 |
|:---|:---|
| R01 `slotadvanced` | Advanced 0% -> 5% |
| R02 `slotadvanced2` | Advanced 5% -> 10% |
| R03 `slotadvanced3` | Advanced 10% -> 15% |
| R04 `slotrare` | Rare 0% -> 2% |

---

## 9. 성장, 흡수, 승급

`src/data/constants.lua`, `src/game/promotion.lua`, `src/game/promotion_stats.lua`, `src/game/power.lua` 기준:

### 9.1 흡수

- 흡수 대상의 파워를 기반으로 흡수자에게 스탯 성장량을 계산한다.
- `Power` 모듈은 피해/체력/공속 조합을 PWR로 환산한다.
- 흡수 게이지는 희귀도별 승급 요구치와 연결된다.
- 최대 등급에 도달한 유닛은 더 이상 승급하지 않고 직접 스탯 보너스를 받는다.

`constants.evolution.maxTier.rates` 기준 최대 티어 흡수 보너스:

| 흡수한 심볼 | 보너스 |
|:---:|:---|
| W | HP +5% |
| S | ATK +4% |
| A | ASPD +3% |

최소 보정: HP +6, ATK +3, ASPD +0.10.

### 9.2 승급 요구치

| 희귀도 | 2성 요구 흡수 LV | 3성 요구 흡수 LV |
|:---|---:|---:|
| normal | 5 | 12 |
| advanced | 6 | 14 |
| rare | 8 | 18 |
| legendary | 10 | 20 |
| prism | 16 | 28 |

현재 `maxRankByGrade`는 모든 희귀도 공통 3성이다. 예전 문서의 “M/H/D는 5성까지” 설명은 현재 `constants.lua` 기준과 맞지 않는다. 다만 `promotion.lua`에는 일부 4성/5성 분기 코드와 자산 참조가 남아 있으므로, 향후 확장용/부분 구현 코드로 보는 것이 안전하다.

### 9.3 승급 파워 배율

| 희귀도 | 1성 | 2성 | 3성 |
|:---|---:|---:|---:|
| normal | 1.0 | 2.2 | 4.8 |
| advanced | 1.0 | 2.7 | 6.0 |
| rare | 1.0 | 3.1 | 7.2 |
| legendary | 1.0 | 3.6 | 9.5 |
| prism | 1.0 | 4.2 | 12.8 |

클래스별 승급 보너스:

| 심볼 | 보너스 |
|:---:|---:|
| W | +35% |
| A | +35% |
| S | +30% |

M/H/D에 대한 클래스 보너스는 현재 `constants.lua`에 명시되어 있지 않다.

### 9.4 주요 승급 분기

`src/game/promotion.lua` 기준. 현재 밸런스 상 최대 등급은 3성이지만, 코드에는 일부 4성/5성 확장 분기가 남아 있다.

| 기본 심볼 | 2성 대표 분기 | 3성 대표 분기/스킬 |
|:---:|:---|:---|
| W 전사 | 병사, 해적, 특수축 분기 | 기사: 반격 태세. 4초마다 1.5초간 피해를 막고 공격자에게 반사 피해 |
| W 전사 | 병사 -> 기사 | 암기사: 암영 흡혈. 다음 공격 피해 일부 회복 |
| W 전사 | 병사 -> 기사 | 성기사: 성스러운 회복. 주기적으로 최저 체력 아군 회복 |
| W 전사 | 해적 | 해적왕: 폭풍의 칼날. 전방 최대 3명에게 ATK 130% |
| A 궁수 | 석궁수, 순찰자 | 장궁병/상위 궁수 계열. 멀티샷/정밀 사격 계열 |
| A 궁수 | 정찰병 특수축 | 엘프 궁수, 레인저 계열 |
| S 창병 | 창위병, 약탈자 | 근위병: 결벽의 방진. 주기적 피해 감소와 반격 |
| S 창병 | 약탈자 | 무법자 계열 |
| S 창병 | 엘프/바이킹 특수축 | 하이 엘프 보병, 바바리안, 엘프 근위병, 해골 근위병 |
| M 마법사 | 주술사 | 대주술사: 공격 마법 강화 계열 |
| M 마법사 | 치유술사 | 대사제: 최저 체력 아군 다수 회복 |
| M 마법사 | 엘프/야생/해골 축 | 엘프 현자, 원시법사, 해골 마도사 |
| H 기병 | 돌격병, 도끼 기병 | 중기병, 무법 기병 |
| H 기병 | 엘프/야만/철기병 축 | 하이 엘프 기병, 광폭 기병 |

전사 3성 기본 옵션은 축(axis)에 따라 달라진다. HP축은 기사, ATK축은 공허기사, ASPD축은 엘프기사가 대표 후보로 고정되고, 나머지 후보는 같은 축 또는 전체 풀에서 무작위로 채워진다.

### 9.5 랜덤옵션

`src/data/randomoption.lua` 기준. 랜덤옵션은 유닛 생성 시 또는 승급 카드 선택 시 부여되는 개별 특성이다. 유닛은 중복 없이 최대 5개까지 보유할 수 있으며, 승급 카드는 해당 유닛이 아직 갖지 않은 옵션을 제시한다.

- `Spawn`: 유닛 생성 시 등장 가능
- `Promotion`: 승급 카드에서만 등장 가능
- `Both`: 생성과 승급 양쪽에서 등장 가능
- 생성 옵션 희귀도 가중치는 1성 `common 70 / rare 25 / legend 5`이며, 승급 등급이 올라갈수록 rare·legend 비중이 증가한다.
- `도시락`, `황금알`, `비상금`은 normal·advanced·rare 유닛에게만 생성 옵션으로 붙는다.
- 수치형 옵션의 세부 수치는 기본적으로 `40% / 25% / 18% / 12% / 5%` 확률의 5단계 변형 중 하나가 선택된다.

| id | 이름 | 희귀도 | 출처 | 효과 |
|:---:|:---|:---:|:---:|:---|
| 01 | 전투 본능 | common | Spawn | ATK +6~10% |
| 02 | 생존 본능 | common | Spawn | HP +8~12% |
| 03 | 반사 신경 | common | Spawn | ASPD +4~8% |
| 04 | 개시 일격 | common | Both | 첫 공격 피해 +25~45% |
| 05 | 마무리 일격 | common | Both | 마지막 적 대상 피해 +15~35% |
| 06 | 배수진 | rare | Both | HP 50% 이하에서 ATK +20~40% |
| 07 | 불굴 | common | Both | 사망 시 1 HP로 1회 생존 |
| 08 | 광기 | rare | Both | ATK +18~32%, 받는 피해 +10~18% |
| 09 | 피의 사투 | rare | Both | 잃은 HP 비례 ATK 최대 +30~62% |
| 10 | 전투 고조 | rare | Both | 전투 시작 후 2초마다 ATK +3~7%, 최대 5중첩 |
| 11 | 혈전 | rare | Both | 쓰러진 아군 1명당 ATK +4~8% |
| 12 | 도시락 | common | Spawn | 흡수 재료가 될 때 흡수 LV +1~5 |
| 13 | 황금알 | common | Spawn | 흡수 재료가 될 때 정수 +1~5 |
| 14 | 통솔력 | legend | Promotion | 해당 유닛을 최대 유닛 수 제한에서 제외 |
| 15 | 공수 전환 | legend | Promotion | HP 50% 초과 시 ATK +20%, HP 50% 이하 시 받는 피해 -20% |
| 16 | 처치 회복 | rare | Both | 적 처치 시 최대 HP의 4~8% 회복, 전투당 최대 3회 |
| 17 | 독보적 | rare | Promotion | 같은 계열의 다른 아군이 없으면 ATK +8~16%, 받는 피해 -3~7% |
| 18 | 비상금 | common | Spawn | 흡수 재료가 될 때 골드 +50~250 |
| 19 | 기지 수호자 | rare | Promotion | 기지 근처의 적을 우선 공격하고, 해당 적에게 주는 피해 {atk.png} +15~35% |
| 20 | 결전의 날 | legend | Both | 심판 웨이브에서 ATK +30~50% |
| 21 | 보스 슬레이어 | legend | Both | 보스 웨이브에서 ATK +30~50% |
| 22 | 기술 가속 | rare | Promotion | 액티브 스킬 쿨타임 -8~16%, 액티브 스킬 보유 유닛에게만 등장 |

---

## 10. 각인 시스템

`src/data/constants.lua`와 `src/ui/imprint.lua` 기준:

### 10.1 희귀도별 각인 슬롯

| 유닛 희귀도 | 각인 슬롯 |
|:---|---:|
| normal | 1 |
| advanced | 2 |
| rare | 3 |
| legendary | 4 |
| prism | 5 |

각인은 유닛별 슬롯에 장착되는 전투 특성이다. 같은 각인도 레벨에 따라 수치가 달라지고, 일부 각인은 쿨다운/내부 대기시간/확률 조건을 가진다.

### 10.2 각인 상세표

| id | 표시명 | 타입 | 조건 | LV1 | LV2 | LV3 | LV4 | LV5 | 추가 규칙 |
|:---|:---|:---:|:---|:---|:---|:---|:---|:---|:---|
| `fortify` | 견고함 | buff | 상시 | 받는 피해 -15% | -22% | -27% | -31% | -34% | 탱커형 상시 생존 각인 |
| `pierce` | 관통 | buff | 기본 공격 | 관통 +1 | +2 | +3 | +4 | +5 | 기본 공격이 추가 대상 관통 |
| `brace` | 굳히기 | buff | 공격 후 | 다음 타격 125% | 135% | 150% | 165% | 180% | 공격 후 0.25초 딜레이 기반 강화 |
| `volley` | 연사 | spawn | 3번째 공격마다 | 추가타 40% | 60% | 80% | 100% | 130% | 공격 횟수 카운트형 추가 공격 |
| `blind` | 실명 | buff | 공격 시 16% | 0.4초 | 0.6초 | 0.8초 | 1.0초 | 1.3초 | 내부 대기시간 2.0초 |
| `transfer` | 전이 | buff | 공격 시 | 1명에게 40% | 1명 | 2명 | 2명 | 3명 | 반경 36 주변 적에게 피해 전이 |
| `overdrive` | 오버드라이브 | buff | 적 처치 후 | 다음 기본공격 +75% | +100% | +125% | +150% | +175% | 처치 후 다음 공격 1회 강화 |
| `relentless` | 집요함 | buff | 공격 시 | 중첩당 ASPD +4%, 최대 4 | +5%, 최대 4 | +5%, 최대 5 | +6%, 최대 5 | +6%, 최대 6 | 0.5초 이상 끊기면 초기화 |
| `bash` | 충격타 | buff | 공격 시 18% | 기절 0.5초 | 0.7초 | 0.9초 | 1.1초 | 1.3초 | 내부 대기시간 2.0초 |
| `knockback` | 넉백 | body | 공격 시 22% | 20 | 28 | 36 | 45 | 55 | 내부 대기시간 1.5초 |
| `poison` | 독 | buff | 공격 시 25% | 2.0초 | 2.5초 | 3.0초 | 4.0초 | 5.0초 | 0.5초마다 최대 HP 1.2%, 최대 1중첩 |
| `block` | 블록 | buff | 상시 | 15% | 18% | 22% | 26% | 30% | 확률적으로 공격 차단 |
| `lifesteal` | 흡혈 | buff | 상시 | 6% | 8% | 10% | 12% | 15% | 피해량 비례 회복 |
| `self_destruct` | 자폭 | body | 사망 시 | ATK 200% | 220% | 250% | 290% | 340% | 사망 폭발 피해 |
| `fear` | 공포 | body | 공격 적중 시 | 12% | 14% | 16% | 18% | 20% | 공포 지속 0.8초 |
| `chain` | 연쇄 | spawn | 공격 적중 시 30% | 1회 튕김 | 2회 | 3회 | 4회 | 5회 | 튕김 피해 60% |
| `chill` | 냉기 | buff | 공격 시 | 이동/행동 둔화 30% | 35% | 40% | 45% | 50% | 지속 2.0초 |
| `enlarge` | 거대화 | buff | 피격 시 15% | 4초 | 5초 | 6초 | 8초 | 10초 | HP +30%, ATK +25% |
| `execute` | 처형 | buff | 공격 적중 시 | HP 12% 이하 처형 | 14% | 16% | 18% | 20% | 보스 제외 |
| `earthquake` | 지진 | body | 공격 시 8% | ATK 220% | 260% | 300% | 340% | 400% | 내부 대기시간 6초, 기절 0.8초 |
| `annihilation` | 궤멸 | spawn | 공격 시 35% | ATK 160% | 180% | 210% | 250% | 300% | 최대 5명, 반경 60 |
| `meteor` | 메테오 | spawn | 공격 시 10% | ATK 280% | 320% | 360% | 420% | 500% | 내부 대기시간 8초 |
| `shadow_clone` | 분신술 | spawn | 전투 시 | HP 55%, ATK 70% | 60/75% | 65/80% | 70/85% | 75/90% | 8초 지속, 2초 재소환 |
| `panther_fury` | 흑표의 맹습 | spawn | 전투 시 | HP 40%, ATK 55% | 50/65% | 60/75% | 70/85% | 80/100% | 10초 지속, 쿨다운 5초 |
| `revival` | 부활 | buff | 사망 시 | HP 40%, ATK +20% | 50/+25% | 60/+30% | 70/+35% | 80/+40% | 강화 지속 4/5/6/7/8초 |
| `majesty` | 위엄 | debuff | 생존 중 | 적 ATK -12%, HP -15% | -20/-23% | -27/-30% | -35/-38% | -42/-45% | 전장 전체 약화형 |
| `ruin` | 섬멸 | buff | 상시 | 초당 ATK 6% | 9% | 12% | 16% | 20% | 모든 적에게 지속 피해 |
| `colossus_descent` | 거신강림 | spawn | 상시 | HP 200%, ATK 40% | 240/50% | 300/60% | 340/75% | 400/90% | 3초 재소환, 5초마다 스킬, 스킬 피해 100/140/200/240/300% |
| `overlord` | 군주 | spawn | 적 처치 후 | 추종자 2명 | 3명 | 4명 | 4명, 위력 x2 | 4명, 위력 x4 | 처치 기반 소환 |
| `undying_soul` | 불사혼 | buff | 사망 시 | ATK 40% | 60% | 80% | 100% | 120% | 사망 후 효과형 각인 |
| `timeless` | 타임리스 | buff | 공격 시 | 8%, 3초 | 10%, 3.5초 | 12%, 4초 | 15%, 5초 | 18%, 6초 | 내부 대기시간 5초 |
| `amplify` | 증폭 | buff | 스킬 발동 시 | 스킬 범위 130% | 135% | 140% | 145% | 150% | 스킬형 유닛에게만 체감이 큼 |

표시명은 코드에 들어 있는 현재 문자열 기준으로 정리했다. 밸런스 관리나 저장 데이터 추적은 표시명보다 `id` 기준으로 보는 것이 안전하다.

---

## 11. 코어 시스템

`src/game/cores.lua` 기준:

- 코어는 전투/스핀 규칙을 바꾸는 장착형 유물이다.
- 희귀도: C, U, R, L
- 최초 오퍼 풀은 `INITIAL_OFFER_CORE_IDS`에 제한되어 있다.
- 코어 오퍼 희귀도는 오퍼 순서에 따라 점진적으로 좋아지는 `OFFER_RARITY_WEIGHTS_BY_ORDER`를 사용한다.
- 코어는 `prepareSpin`, `onSpinResult`, `onNudgeComplete`, `onAbsorb` 훅으로 작동한다.

현재 정의된 주요 코어:

| id | key | 희귀도 | 핵심 효과 요약 |
|:---:|:---|:---:|:---|
| 01 | TwistedBell | C | 웨이브 첫 유료 스핀 실패 시 릴 재굴림 |
| 02 | Rootshroom | C | 유료 스핀 실패 누적 후 특정 심볼 확률 상승 |
| 03 | DiagonalCore | C | 대각선 당첨 후 해당 심볼 확률 상승 |
| 04 | VerticalCore | C | 세로 당첨 시 스핀 비용 증가분 되돌림 |
| 05 | HorizontalCore | C | 가로 당첨 후 다음 스핀 비용 40% 감소 |
| 06 | FinalTrail | C | 4번째 유료 스핀 비용 50% 감소 |
| 07 | Rushtrail | U | 연속 당첨마다 다음 당첨 확률 보너스, 최대 +30% |
| 08 | MultiEchoMirror | C | 4개 이상 같은 심볼인데 미당첨이면 정수 +1 |
| 09 | HarvestFlag | C | 웨이브 첫 당첨 심볼 확률을 해당 웨이브 동안 +8% |
| 11 | NutrientLeaf | C | 웨이브 첫 흡수 후 다음 스핀 비용 50% 감소 |
| 12 | OldCrown | C | 첫 2성 달성 심볼의 출현 확률 증가 |
| 19 | ResonoscopeChain | C | 웨이브 첫 유료 당첨 후 다음 스핀 비용 50% 감소 |
| 20 | SpareBattery | C | 넛지 실패 시 넛지 1회 환급 |
| 25 | JokerSeed | U | 칸마다 2% 확률로 조커 등장 |
| 26 | TornNote | U | 6번째 스핀마다 조커 1개 강제 |
| 39 | ReboundAxis | U | 3번째 이후 유료 스핀 실패 시 넛지 +1 |
| 40 | RewindClock | U | 유료 스핀 실패 후 다음 스핀 비용 25 감소 |
| 42 | DoubleLedger | U | 같은 웨이브 두 번째 당첨 후 다음 상점 리롤 무료 |
| 44 | EchoLantern | U | 직전 당첨 심볼로 다시 당첨 시 추가 소환 |
| 45 | BlackNote | R | 웨이브 첫 스핀에 조커 1개 강제 |
| 50 | ResonantAnvil | R | 같은 심볼 4개 이상이면 추가 소환 |
| 51 | SplinteredTorch | R | 한 스핀에서 2라인 이상 당첨 시 추가 소환 |
| 55 | BloodlineSeal | R | 웨이브 첫 흡수 재료 심볼이 다음 스핀에 강제 |
| 59 | Wildcard | L | 조커 확률 3%, 조커 당첨 시 추가 소환 |
| 64 | EntropySpoonFreeSpin | L | 웨이브 첫 유닛 소환 후 다음 스핀 무료 |

코어 파일에는 `13~18` 같은 오래된/후보 코어도 남아 있지만, 현재 초기 오퍼 풀에는 포함되지 않는 항목이 있다.

---

## 12. 아이템/상점 시스템

`src/game/item.lua` 기준:

- 아이템 희귀도: C, U, R, L
- 타입: `BATTLE`, `TRAINING`
- 기본 상점 오퍼 슬롯 타입:
  - 1번: 전투 아이템
  - 2번: 제한 없음
  - 3번: 훈련 아이템
- 중복 오퍼 방지와 최대 레벨 아이템 제외 로직이 있다.
- 대부분 아이템은 `cooldownSec = 0`인 패시브/전투당 1회형 효과다.

### 12.1 아이템 희귀도 분포

| 웨이브 | C | U | R | L |
|:---|---:|---:|---:|---:|
| 1~4 | 92 | 8 | 0 | 0 |
| 5~9 | 85 | 15 | 0 | 0 |
| 10~14 | 78 | 20 | 2 | 0 |
| 15~19 | 68 | 28 | 4 | 0 |
| 20+ | 58 | 35 | 7 | 0 |

### 12.2 현재 아이템 목록

| id | key | 희귀도 | 타입 | 가격 | 최대 LV | 효과 요약 |
|:---:|:---|:---:|:---:|:---|---:|:---|
| 01 | SturdyFist | C | BATTLE | 2/3/4 | 3 | 아군 기본 공격 피해 +5/8/12% |
| 02 | SturdyShield | C | BATTLE | 2/3/4 | 3 | 아군 최대 HP +5/8/12% |
| 03 | FirstAid | C | BATTLE | 2/3/4 | 3 | 전투당 1회, HP 30% 이하 아군 회복 |
| 04 | BrokenShield | C | BATTLE | 2/3/4 | 3 | 처음 공격받은 아군 피해 감소 |
| 05 | HuntersMark | C | BATTLE | 2/3/4 | 3 | 가장 체력 높은 적 받는 피해 증가 |
| 06 | FrontlineArmor | C | BATTLE | 2/3/4 | 3 | 가장 앞의 아군 받는 피해 감소 |
| 07 | DustCloak | C | BATTLE | 2/3/4 | 3 | 원거리 아군이 원거리 적에게 받는 피해 감소 |
| 08 | CursedMushroom | C | BATTLE | 2/3/4 | 3 | 적 6명 이상이면 현재 체력 비례 피해 |
| 12 | GateNet | U | BATTLE | 3/4/5 | 3 | 기지 근처 적 속박 |
| 14 | OathHelm | U | BATTLE | 3/4/5 | 3 | 죽을 피해를 1 HP로 버티기 |
| 15 | BattleCryItem | U | BATTLE | 3/4/5 | 3 | 아군 5명 이상이면 ATK 증가 |
| 16 | SolitaryOath | U | BATTLE | 3/4/5 | 3 | 아군 3명 이하이면 ATK 증가/피해 감소 |
| 31 | WarriorTraining | C | TRAINING | 3/4/5 | 3 | 전사 계열 최대 HP 증가 |
| 32 | ArcherTraining | C | TRAINING | 3/4/5 | 3 | 궁수 계열 ASPD 증가 |
| 33 | SpearmanTraining | C | TRAINING | 3/4/5 | 3 | 창병 계열 ATK 증가 |
| 34 | MageTraining | C | TRAINING | 3/4/5 | 3 | 마법사 계열 ATK/ASPD 증가 |
| 35 | CavalryTraining | C | TRAINING | 3/4/5 | 3 | 기병 계열 HP/ATK 증가 |
| 36 | DuelistTraining | C | TRAINING | 3/4/5 | 3 | 결투사 계열 ATK 증가 |
| 37 | ShieldManual | U | TRAINING | 4/6 | 2 | 전사 계열 첫 교전 후 피해 감소 |
| 38 | VolleyManual | U | TRAINING | 4/6 | 2 | 궁수 계열 5회 공격마다 추가 피해 |

이전 문서의 “레거시/유물 5개” 설명은 현재 구현과 맞지 않는다.

---

## 13. 스톤/퀘스트 시스템

`src/game/stone.lua`, `src/game/quest.lua` 기준:

- 스톤은 퀘스트 보상으로 얻는 1회용 슬롯 강화 아이템이다.
- 사용 시 다음 스핀 비용이 무료가 되고, 최소 1개 당첨 라인을 보장하며, 해당 스핀의 유닛 희귀도 분포를 스톤 확률로 교체한다.
- 스톤은 3종이다.

| id | key | 연결 퀘스트 | 희귀도 분포 |
|:---:|:---|:---|:---|
| 01 | OriginStone | 쉬움 퀘스트 1,2,6,11 중 하나 | normal 60%, advanced 30%, rare 8.5%, legendary 1%, prism 0.5% |
| 08 | MileStone | 보통 퀘스트 13~23 중 하나 | normal 50%, advanced 35%, rare 13.5%, legendary 1%, prism 0.5% |
| 14 | BlessingStone | 어려움 퀘스트 24~28 중 하나 | normal 40%, advanced 40%, rare 16.5%, legendary 3%, prism 0.5% |

퀘스트는 `appearanceCondition`으로 현재 상태에 맞는 항목만 뽑으려 시도하고, 조건을 만족하는 퀘스트가 없으면 전체 후보에서 폴백 선택한다.

### 13.1 퀘스트 개수

| 난이도 | 퀘스트 번호 |
|:---|:---|
| 쉬움 | 1~12 |
| 보통 | 13~23 |
| 어려움 | 24~28 |

퀘스트 목표 타입 예시:

- 라운드 내 스핀 수
- 누적 스핀 수
- 정수 보유량
- 동일 유닛 수
- 서로 다른 유닛 수
- 총 흡수 횟수
- 각인 슬롯 보유
- 2성 이상 유닛 보유
- 사망 제한
- 마지막 유닛 1명 생존 승리
- 특정 웨이브 동안 노흡수/노넛지/노상점/노아이템
- 원거리 유닛만 보유
- 적은 유닛 수로 승리
- 4성 이상 단일 유닛 승리 조건은 현재 최대 3성 구조와 충돌 가능성이 있어 주의 필요

---

## 14. 스테이지와 웨이브

### 14.1 스테이지 선택/잠금

`main.lua`와 `src/ui/mainmenu.lua` 흐름 기준:

- 새 저장에서는 Stage 1의 쉬움 난이도만 열려 있다.
- 같은 스테이지의 쉬움 클리어로 보통, 보통 클리어로 어려움이 해금된다.
- Stage 2는 Stage 1 보통 클리어, Stage 3은 Stage 2 보통 클리어가 필요하다. 이후 Stage도 바로 앞 Stage의 보통 클리어를 요구한다.
- 기본 `demo` 에디션에서는 Stage 2의 쉬움까지만 플레이할 수 있고, Stage 2 보통/어려움과 Stage 3 이상은 full 에디션에서만 선택할 수 있다.
- 스테이지 이름 fallback:
  - Stage 1: 열린 숲 / Open Forest
  - Stage 2: 깊은 동굴 / Deep Cave
  - Stage 3: 메마른 황야 / Wasteland
- Stage 4 이후는 메뉴 해금 흐름은 있으나, 현재 전용 적 웨이브 테이블이 없다.

### 14.2 Stage 1 열린 숲

구현 상태. 각 웨이브의 `/`는 해당 후보 중 하나가 선택된다는 뜻이다.

| 난이도 | 구현 웨이브 | 보스 |
|:---|:---|:---|
| 쉬움 | 1~10 | 10: Grimwolf Orc |
| 보통 | 1~20 | 10: Grimwolf Orc, 20: Howl Orc |
| 어려움 | 1~30 | 10: Grimwolf Orc, 20: Howl Orc, 30: Orc Arch Shaman |

#### 14.2.1 Stage 1 쉬움 등장표

| 웨이브 | 등장 후보 |
|:---:|:---|
| 1 | Goblin x1 |
| 2 | Goblin x2 |
| 3 | Goblin x3 / Goblin x1 + GoblinThief x1 / Goblin x2 + GoblinThief x1 |
| 4 | Goblin x4 / Goblin x2 + GoblinThief x1 / Goblin x1 + GoblinThief x2 |
| 5 | Orc x1 + Goblin x2 / Orc x1 + GoblinThief x1 / Orc x1 + GoblinThief x1 + Goblin x1 |
| 6 | Orc x2 / Orc x1 + GoblinThief x2 / Orc x1 + Orc Axe Raider x1 + Goblin x1 |
| 7 | Orc x2 + GoblinThief x1 / Orc x1 + Orc Axe Raider x2 / Orc x1 + Orc Axe Raider x1 + GoblinThief x2 |
| 8 | Orc x2 + Orc Axe Raider x1 / Orc x1 + Orc Axe Raider x2 + GoblinThief x1 / Orc x2 + GoblinThief x2 |
| 9 | Orc x2 + Orc Axe Raider x2 / Orc x1 + Orc Axe Raider x3 / Orc x2 + Orc Axe Raider x1 + GoblinThief x1 |
| 10 | Grimwolf Orc x1 |

#### 14.2.2 Stage 1 보통 등장표

`battlefield.lua` 안에는 보통 난이도 1~20 중복 테이블이 하나 더 있지만, 현재 실행 경로에서는 먼저 선언된 1~20 테이블이 바로 반환된다. 아래 표가 실제 도달하는 구성이다.

| 웨이브 | 등장 후보 |
|:---:|:---|
| 1 | Goblin x1 |
| 2 | Goblin x2 |
| 3 | Goblin x3 / Goblin x1 + GoblinThief x1 / Goblin x2 + GoblinThief x1 |
| 4 | Goblin x2 + GoblinThief x1 / Goblin x1 + Orc x1 / Goblin x3 + GoblinThief x1 |
| 5 | Orc x2 / Orc x1 + GoblinThief x2 / Orc x1 + Orc Axe Raider x1 + Goblin x1 |
| 6 | Orc x2 + GoblinThief x1 / Orc x1 + Orc Axe Raider x2 + Goblin x1 / Orc x1 + GoblinThief x3 |
| 7 | Orc x2 + Orc Axe Raider x1 / Orc x1 + Orc Axe Raider x2 + GoblinThief x1 / Orc x2 + GoblinThief x2 |
| 8 | Orc x2 + Orc Axe Raider x2 / Orc x1 + Orc Axe Raider x3 + GoblinThief x1 / Orc x2 + Orc Axe Raider x1 + GoblinThief x2 |
| 9 | Orc x2 + Orc Axe Raider x2 + GoblinThief x1 / Orc x1 + Orc Axe Raider x4 / Orc x3 + Orc Axe Raider x1 + GoblinThief x1 |
| 10 | Grimwolf Orc x1 |
| 11 | Charge Orc x1 + Orc x2 + Orc Axe Raider x1 / Charge Orc x2 + Orc x1 / Charge Orc x1 + Orc Axe Raider x2 + GoblinThief x1 |
| 12 | Charge Orc x2 + Orc x1 + Orc Axe Raider x1 / Charge Orc x1 + Orc x2 + Orc Axe Raider x2 / Charge Orc x2 + Orc Axe Raider x2 + GoblinThief x1 |
| 13 | Charge Orc x2 + Orc Axe Raider x2 + GoblinThief x2 / Charge Orc x2 + Orc x2 + Orc Axe Raider x1 / Charge Orc x1 + Goblin Rider x1 + Orc Axe Raider x2 + GoblinThief x2 |
| 14 | Goblin Rider x1 + Charge Orc x2 + Orc Axe Raider x2 / Goblin Rider x2 + Charge Orc x1 + Orc x1 + Orc Axe Raider x2 / Goblin Rider x1 + Charge Orc x2 + Orc x2 |
| 15 | Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x2 / Charge Orc x1 + Goblin Rider x2 + Orc Axe Raider x2 / Charge Orc x1 + Goblin Rider x1 + Orc x2 + Orc Axe Raider x2 |
| 16 | Charge Orc x2 + Goblin Rider x2 + Orc Axe Raider x2 / Charge Orc x1 + Goblin Rider x2 + Warg Orc x1 + Orc Axe Raider x1 / Charge Orc x2 + Goblin Rider x1 + Orc x2 + Orc Axe Raider x1 |
| 17 | Warg Orc x1 + Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x2 / Warg Orc x1 + Charge Orc x1 + Goblin Rider x2 + Orc Axe Raider x2 / Warg Orc x1 + Charge Orc x2 + Orc x1 + Orc Axe Raider x2 |
| 18 | Warg Orc x1 + Goblin Rider x2 + Orc Axe Raider x2 / Warg Orc x2 + Goblin Rider x1 + Charge Orc x1 + Orc Axe Raider x1 / Warg Orc x1 + Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x2 |
| 19 | Warg Orc x2 + Goblin Rider x1 + Charge Orc x1 + Orc Axe Raider x2 / Warg Orc x1 + Goblin Rider x2 + Charge Orc x2 + Orc Axe Raider x1 / Warg Orc x1 + Charge Orc x2 + Orc x2 + Orc Axe Raider x2 |
| 20 | Howl Orc x1 |

#### 14.2.3 Stage 1 어려움 등장표

| 웨이브 | 등장 후보 |
|:---:|:---|
| 1 | Goblin x1 |
| 2 | Goblin x2 |
| 3 | Goblin x3 / Goblin x1 + GoblinThief x1 / Goblin x2 + GoblinThief x1 |
| 4 | Goblin x2 + GoblinThief x1 / Goblin x1 + Orc x1 / Goblin x2 + Orc x1 |
| 5 | Orc x2 + GoblinThief x1 / Orc x2 / Orc x1 + Orc Axe Raider x1 + GoblinThief x1 |
| 6 | Orc x2 + GoblinThief x2 / Orc x1 + Orc Axe Raider x2 + Goblin x1 / Orc x2 + Orc Axe Raider x1 + GoblinThief x1 |
| 7 | Orc x2 + Orc Axe Raider x2 / Orc x2 + Orc Axe Raider x1 + GoblinThief x2 / Orc x1 + Orc Axe Raider x3 + GoblinThief x1 |
| 8 | Orc x2 + Orc Axe Raider x3 / Orc x1 + Orc Axe Raider x3 + GoblinThief x2 / Orc x3 + Orc Axe Raider x1 + GoblinThief x1 |
| 9 | Orc x2 + Orc Axe Raider x3 + GoblinThief x1 / Orc x1 + Orc Axe Raider x4 + GoblinThief x1 / Orc x3 + Orc Axe Raider x2 |
| 10 | Grimwolf Orc x1 |
| 11 | Charge Orc x2 + Orc x1 + Orc Axe Raider x2 / Charge Orc x1 + Orc x2 + Orc Axe Raider x2 + GoblinThief x1 / Charge Orc x2 + Orc Axe Raider x2 + GoblinThief x1 |
| 12 | Charge Orc x2 + Orc x2 + Orc Axe Raider x2 / Charge Orc x2 + Orc x1 + Orc Axe Raider x3 / Charge Orc x3 + Orc x1 + Orc Axe Raider x1 |
| 13 | Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x2 + GoblinThief x2 / Charge Orc x2 + Orc x2 + Orc Axe Raider x2 / Charge Orc x1 + Goblin Rider x2 + Orc Axe Raider x2 + GoblinThief x1 |
| 14 | Goblin Rider x2 + Charge Orc x2 + Orc Axe Raider x2 / Goblin Rider x3 + Charge Orc x1 + Orc Axe Raider x2 / Goblin Rider x2 + Charge Orc x2 + Orc x1 + Orc Axe Raider x2 |
| 15 | Charge Orc x2 + Goblin Rider x2 + Orc Axe Raider x2 / Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x3 / Charge Orc x1 + Goblin Rider x2 + Orc x2 + Orc Axe Raider x2 |
| 16 | Charge Orc x2 + Goblin Rider x2 + Orc Axe Raider x3 / Charge Orc x2 + Goblin Rider x2 + Warg Orc x1 + Orc Axe Raider x1 / Charge Orc x2 + Goblin Rider x1 + Orc x2 + Orc Axe Raider x2 |
| 17 | Warg Orc x1 + Charge Orc x2 + Goblin Rider x2 + Orc Axe Raider x2 / Warg Orc x2 + Charge Orc x1 + Goblin Rider x1 + Orc Axe Raider x2 / Warg Orc x1 + Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x3 |
| 18 | Warg Orc x2 + Goblin Rider x2 + Orc Axe Raider x2 / Warg Orc x2 + Goblin Rider x1 + Charge Orc x2 + Orc Axe Raider x1 / Warg Orc x1 + Charge Orc x2 + Goblin Rider x2 + Orc Axe Raider x2 |
| 19 | Warg Orc x2 + Goblin Rider x2 + Charge Orc x1 + Orc Axe Raider x2 / Warg Orc x2 + Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x2 / Warg Orc x3 + Charge Orc x1 + Goblin Rider x1 + Orc Axe Raider x1 |
| 20 | Howl Orc x1 |
| 21 | Orc War Chief x1 + Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x2 / Orc War Chief x1 + Warg Orc x1 + Charge Orc x1 + Orc Axe Raider x2 / Orc War Chief x1 + Goblin Rider x2 + Charge Orc x1 + Orc x1 + Orc Axe Raider x1 |
| 22 | Orc War Chief x1 + Warg Orc x2 + Goblin Rider x1 + Orc Axe Raider x2 / Orc War Chief x1 + Charge Orc x2 + Goblin Rider x2 + Orc Axe Raider x2 / Orc War Chief x2 + Orc x1 + Orc Axe Raider x2 |
| 23 | Orc War Chief x2 + Warg Orc x1 + Goblin Rider x1 + Orc Axe Raider x2 / Orc War Chief x1 + Warg Orc x2 + Charge Orc x2 + Orc Axe Raider x1 / Orc War Chief x2 + Charge Orc x1 + Goblin Rider x2 + Orc Axe Raider x1 |
| 24 | Orc War Chief x2 + Orc Berserker x1 + Warg Orc x1 / Orc War Chief x1 + Orc Berserker x1 + Charge Orc x2 + Goblin Rider x1 + Orc Axe Raider x1 / Orc War Chief x1 + Orc Berserker x1 + Warg Orc x2 + Orc Axe Raider x1 |
| 25 | Orc War Chief x2 + Orc Berserker x1 + Warg Orc x1 + Orc Axe Raider x1 / Orc War Chief x1 + Orc Berserker x2 + Goblin Rider x1 + Orc Axe Raider x1 / Orc War Chief x2 + Orc Berserker x1 + Charge Orc x1 + Goblin Rider x1 |
| 26 | Orc Berserker x2 + Orc War Chief x1 + Warg Orc x2 + Orc Axe Raider x1 / Orc Berserker x1 + Orc War Chief x2 + Charge Orc x2 + Orc Axe Raider x1 / Orc Berserker x1 + Orc War Chief x1 + Warg Orc x3 + Orc Axe Raider x2 |
| 27 | Orc Veteran x1 + Orc War Chief x1 + Orc Berserker x1 + Goblin Rider x1 + Orc Axe Raider x2 / Orc Veteran x1 + Orc War Chief x1 + Warg Orc x2 + Charge Orc x1 + Orc Axe Raider x1 / Orc Veteran x1 + Orc War Chief x1 + Orc Berserker x1 + Warg Orc x1 + Goblin Rider x1 |
| 28 | Orc Veteran x1 + Orc War Chief x2 + Orc Berserker x1 + Warg Orc x1 + Orc Axe Raider x1 / Orc Veteran x1 + Orc War Chief x1 + Orc Berserker x2 + Goblin Rider x1 + Orc Axe Raider x1 / Orc Veteran x1 + Orc War Chief x1 + Orc Berserker x1 + Warg Orc x2 + Goblin Rider x1 |
| 29 | Orc Veteran x1 + Orc War Chief x2 + Orc Berserker x1 + Warg Orc x1 + Orc Axe Raider x1 / Orc Veteran x1 + Orc War Chief x1 + Orc Berserker x2 + Warg Orc x1 + Goblin Rider x1 / Orc Veteran x1 + Orc War Chief x2 + Orc Berserker x1 + Goblin Rider x1 + Orc Axe Raider x2 |
| 30 | Orc Arch Shaman x1 |

주요 적:

- Goblin
- GoblinThief
- Orc
- Orc Axe Raider
- Charge Orc
- Goblin Rider
- Warg Orc
- Orc War Chief
- Orc Berserker
- Orc Veteran
- Wolf: Grimwolf Orc 소환수이며 기지 피해 없음 플래그가 붙는 경로가 있음
- Grimwolf Orc
- Howl Orc
- Orc Arch Shaman

### 14.3 Stage 2 깊은 동굴

현재 Stage 2 전용 적 구성은 쉬움 1~10 웨이브만 명확히 구현되어 있다. `battlefield.lua` 주석에는 눈/시야 계열 적 구성으로 되어 있고, 메뉴 fallback 이름은 깊은 동굴이다.

| 웨이브 | 구성 요약 |
|:---:|:---|
| 1 | Eye Crawler x1 |
| 2 | Eye Crawler x2 |
| 3 | Eye Crawler x2 + Eye Bat x1 |
| 4 | Eye Crawler x4 + Eye Bat x1 / Eye Crawler x3 + Eye Bat x2 |
| 5 | Eye Crawler x8 |
| 6 | Observer x1 + Eye Crawler x4 / Observer x1 + Eye Crawler x3 + Eye Bat x2 / Observer x2 + Eye Crawler x2 + Eye Bat x1 |
| 7 | Observer x2 + Eye Crawler x3 + Eye Bat x2 / Observer x1 + Eye Crawler x4 + Eye Bat x3 / Observer x2 + Eye Crawler x2 + Eye Bat x2 |
| 8 | Observer x2 + Eye Crawler x4 + Eye Bat x3 / Observer x3 + Eye Crawler x2 + Eye Bat x2 / Observer x2 + Eye Crawler x3 + Eye Bat x4 |
| 9 | Observer x3 + Eye Crawler x4 + Eye Bat x3 / Observer x4 + Eye Crawler x2 + Eye Bat x3 / Observer x3 + Eye Crawler x3 + Eye Bat x4 |
| 10 | Beholder x1 |

보통/어려움은 현재 `{}`를 반환하는 경로가 있어, 완성 콘텐츠로 보기 어렵다.

### 14.4 Stage 3 메마른 황야

Stage 3은 전용 웨이브 테이블이 구현돼 있다. 기본 `demo` 에디션에서는 잠기며, full 에디션에서만 진입할 수 있다.

| 난이도 | 실제 적 구성 범위 | 현재 빈 게이트 |
|:---|:---|:---|
| 쉬움 | 1~9 일반 웨이브, 10: Pack Chief x1 | 없음 |
| 보통 | 1~9, 11~19 일반 웨이브 | 10, 20 |
| 어려움 | 1~9, 11~19, 21~29 일반 웨이브 | 10, 20, 30 |

- 쉬움 10웨이브는 `Pack Chief` 1마리가 등장한다.
- 보통/어려움의 10·20웨이브와 어려움 30웨이브는 현재 빈 적 목록을 반환한다. 이 웨이브들은 보스 웨이브 판정 자체는 받지만 보스가 생성되지 않아 즉시 정리되는 미완성 게이트다.
- 5·15·25웨이브는 심판 웨이브 판정이므로, Stage 3에서도 일반 적 조합이 등장하더라도 기지 통과 시 즉시 패배한다.
- Stage 4 이후는 별도 웨이브 테이블이 없어 정상 콘텐츠로 볼 수 없다.

### 14.5 적 기본 스탯

`battlefield.lua`의 `enemyPresets` 기준:

| enemy key | HP | ATK | 사거리 | 공격주기 | 이동속도 | 비고 |
|:---|---:|---:|---:|---:|---:|:---|
| Goblin | 45 | 6 | 50 | 0.85 | 50 | 기본 근접 |
| GoblinThief | 55 | 10 | 45 | 0.62 | 60 | 빠른 근접 |
| Orc | 220 | 13 | 55 | 0.95 | 35 | 탱커형 |
| Orc Axe Raider | 150 | 15 | 120 | 0.92 | 42 | 원거리 |
| Charge Orc | 360 | 18 | 55 | 0.82 | 48 | 돌격 근접 |
| Goblin Rider | 260 | 21 | 55 | 0.78 | 78 | 고속 기병 |
| Warg Orc | 360 | 30 | 55 | 0.80 | 72 | 고속 근접 |
| Orc War Chief | 1250 | 30 | 60 | 0.85 | 42 | 2타 콤보 특수 |
| Orc Berserker | 1200 | 30 | 100 | 0.75 | 52 | 고속 엘리트 |
| Orc Veteran | 4100 | 33 | 60 | 0.88 | 40 | 고체력 엘리트 |
| Wolf | 60 | 7 | 55 | 0.78 | 80 | 보스 소환수 |
| Grimwolf Orc | 1900 | 20 | 75 | 20/21 | 32 | 10웨이브 보스 |
| Howl Orc | 4800 | 26 | 70 | 10/11 | 33 | 20웨이브 보스, 코드에서 8100/33을 4800/26으로 보정 |
| Orc Arch Shaman | 11000 | 34 | 160 | 10/11 | 24 | 30웨이브 보스 |
| Eye Crawler | 70 | 7 | 50 | 2/3 | 58 | Stage 2 기본 |
| Eye Bat | 55 | 0 | 0 | 1.0 | 90 | 공격하지 않고 통과형 |
| Observer | 120 | 16 | 180 | 5/6 | 36 | 장거리 |
| Beholder | 4200 | 23 | 160 | 20/21 | 24 | Stage 2 보스 |
| Dust Hyena | 75 | 7 | 50 | 20/28 | 52 | Stage 3 기본 근접 |
| Gnoll Archer | 85 | 14 | 145 | 20/24 | 36 | Stage 3 원거리 |
| Shield Gnoll | 420 | 14 | 55 | 20/22 | 34 | 피해 감소 방패 2회 |
| Wasteland Warrior | 720 | 25 | 55 | 20/25 | 38 | 5초마다 다음 공격 150% |
| Blood Assassin | 520 | 42 | 55 | 20/32 | 48 | 전투 시작 시 최저 HP 비율 아군을 노리는 강공격 |
| Gnoll Berserker | 1450 | 40 | 60 | 20/27 | 42 | HP 50% 이하에서 주변 최대 3명에게 광폭 오라 |
| Cackle Shaman | 2000 | 26 | 135 | 20/21 | 28 | 8초마다 최고 PWR 아군에게 저주/실명 |
| Pack Chief | 4300 | 34 | 70 | 20/21 | 24 | 9초마다 주변 하이에나·놀 최대 5명의 다음 공격 강화 |

다음 적은 `enemyPresets`와 자산/전투 AI는 정의돼 있으나, 현재 Stage 1~3의 일반 웨이브 테이블에는 배정되지 않았다: Canyon Raptor, Lizard Hunter, Firebreather, Axe Lizard, Bat Matron, Gazer, Stinger Bat, Deceiver, Cave Brute.

---

## 15. 기지 HP와 패배

- 기본 기지 HP는 5.
- 영구 업그레이드 `maxhp`, `maxhp2`로 최대 7까지 증가한다.
- 일반 웨이브에서는 적이 통과하면 기지 HP가 감소하고, 남은 HP가 있으면 다음 웨이브 진행 가능.
- 심판/보스 웨이브에서는 통과 또는 패배가 런 실패로 이어진다.
- `noviceshield` 업그레이드는 초반 웨이브에서 최초 기지 피해를 막는 흐름이 있다.
- `gateheal` 업그레이드는 웨이브 종료 시 기지 HP 회복 경로가 있다.

---

## 16. 원석과 영구 업그레이드

원석(Originite)은 심판/보스 게이트 클리어 시 지급되며 영구 업그레이드에 사용된다.

### 16.1 원석 보상

`main.lua:awardOriginiteForGate` 기준:

`baseReward = gateIndex * stageMultiplier * difficultyMultiplier`

- gateIndex = wave / 5
- stageMultiplier = `{1, 2, 4, 6, 9, 13, 18, 24}`
- difficultyMultiplier = 쉬움 1, 보통 2, 어려움 3
- 최초 도달 게이트는 같은 양의 first reach bonus를 추가로 받는다.

예시:

| 조건 | 기본 보상 | 최초 도달 총합 |
|:---|---:|---:|
| Stage 1 쉬움 wave 5 | 1 | 2 |
| Stage 1 쉬움 wave 10 | 2 | 4 |
| Stage 1 보통 wave 20 | 8 | 16 |
| Stage 2 쉬움 wave 10 | 4 | 8 |

### 16.2 영구 업그레이드 목록

`src/ui/upgrade.lua` 기준:

| id | node | 비용 | 효과 |
|:---|:---:|---:|:---|
| maxhp | A01 | 1 | 기지 HP 5 -> 6 |
| maxhp2 | A11 | 22 | 기지 HP 6 -> 7 |
| noviceshield | A03 | 4 | 첫 기지 피해 방어 |
| startgold | A02 | 2 | 시작 골드 450 -> 500 |
| comebackspin | A06 | 20 | 첫 스핀 당첨 보장 |
| gateheal | A09 | 48 | 기지 HP 회복 |
| comebackgold | A05 | 9 | 패배 후 골드 0 -> 100 |
| startgold2 | A04 | 7 | 시작 골드 500 -> 550 |
| slotnudge | B02 | 3 | 넛지 스핀 비용 감소 |
| interest | B05 | 8 | 이자 0 -> 50 |
| slotodds | S01 | 1 | 슬롯 확률 시스템 해금 |
| slotadvanced | R01 | 4 | Advanced 0% -> 5% |
| slotadvanced2 | R02 | 12 | Advanced 5% -> 10% |
| slotadvanced3 | R03 | 28 | Advanced 10% -> 15% |
| slotrare | R04 | 70 | Rare 0% -> 2% |
| corereroll | K01 | 10 | 코어 무료 리롤 0 -> 1 |
| firstcorespin | K02 | 30 | 첫 코어 필요 스핀 0 -> -1 |
| firstcoreuncommon | K03 | 60 | 언커먼 코어 등장 |
| shopreroll | M01 | 6 | 상점 리롤 할인 0 -> 1 |
| iteminventory | M03 | 45 | 아이템 슬롯 6 -> 7 |
| itemrefund | M04 | 35 | 환불률 50% -> 80% |
| iteminventory2 | M12 | 160 | 아이템 슬롯 7 -> 8 |
| itemresearch | M05 | 24 | 전문 아이템 2개 추가, 현재 구매조건에서 full version 처리 |
| shoppin | M02 | 30 | 상품 고정, 현재 구매조건에서 full version 처리 |
| maxunit | B01 | 6 | 최대 유닛 5 -> 6 |
| maxunit2 | B06 | 70 | 최대 유닛 6 -> 7 |
| maxunit3 | B09 | 180 | 최대 유닛 7 -> 8 |

구매 조건:

- `slotadvanced`: Stage 1 쉬움 클리어 필요
- `slotrare`: Stage 3 보통 클리어 필요
- `itemresearch`, `shoppin`: 현재 `isPurchaseRequirementMet`에서 false를 반환하므로 full version 힌트/잠금 상태
- 여러 업그레이드는 선행 업그레이드 maxed 조건을 요구한다.

`preptime`, `preptime2`, `preptimerdisabled`는 아이콘·정리 코드 등 레거시 참조가 남아 있지만, 현재 구매 가능한 `upgrades` 데이터에 존재하지 않는다. 준비 타이머 자체가 비활성화되어 있으므로 영구 업그레이드 효과로도 작동하지 않는다.

---

## 17. 사운드와 배경

`main.lua` 기준:

- 메인 메뉴 BGM: `src/audio/soundtrack/mainmenu.ogg`
- Stage 1 BGM: `src/audio/soundtrack/stage1.mp3`
- Stage 2 BGM: `src/audio/soundtrack/stage2.mp3`
- 전투/심판/보스 BGM: `battle.ogg`, `judgement.ogg`, `boss.ogg`
- 현재 선택 스테이지의 BGM은 게임 중 계속 깔리고, 전투/심판/보스 BGM이 믹싱된다.
- Stage 2는 전용 BGM과 눈/시야 계열 전용 적 웨이브(쉬움 1~10)를 사용한다.

---

## 18. UI/렌더링 정보

`src/ui/config.lua` 기준 주요 정보:

- 기본 UI 언어: `ko`
- 중국어 전용 폰트/그림자 처리 및 라틴 fallback 처리 존재
- 전역 post-processing:
  - toneMap enabled
  - bloom enabled
  - vignette enabled
  - grainSharpen enabled
- 보스 HP 바 설정 존재
- 전장/상점/스톤 섹션 아이콘 위치 설정 존재
- 장착 코어 바, 코어 선택 카드, 스크롤/웨이브 카운터 UI 설정 존재
- 슬롯/전장 UI는 sprite 기반이며 pixel-perfect/nearest 렌더링을 우선한다.

---

## 19. 저장 데이터

`src/save.lua`, `main.lua` 저장 흐름 기준 저장되는 대표 항목:

- 설정
- 원석 보유량
- 영구 업그레이드 상태
- 언락 스테이지
- 언락 난이도
- 신규 스테이지 표시 상태
- 클리어 난이도
- 최초 도달 게이트 보상 수령 상태

저장 identity는 `slotbound`이며, `conf.lua`에서 Windows 문서 경로/한글 문서 경로 fallback을 별도로 시도한다.

---

## 20. 코드 구조

| 영역 | 주요 파일 | 설명 |
|:---|:---|:---|
| 진입/상태 | `conf.lua`, `main.lua` | 창 설정, 페이즈, 입력, 저장, BGM, 전체 게임 흐름 |
| 상수/폰트/언어 | `src/data/constants.lua`, `src/data/language.lua`, `src/language/*.json`, `src/data/font_resolver.lua` | 밸런스 상수, 다국어, 폰트 |
| 슬롯 | `src/game/slot.lua` | 3x3 그리드, 라인 판정, 스핀/넛지 |
| 전투 | `src/game/battlefield.lua`, `src/game/battlefield_update_big_chunk.lua` | 유닛/적 생성, 전투 AI, 웨이브, 스킬 처리 |
| 성장 | `src/game/promotion.lua`, `src/game/promotion_stats.lua`, `src/game/power.lua` | 승급 선택, 하위 클래스 스탯, PWR 계산 |
| 아이템/코어 | `src/game/item.lua`, `src/game/cores.lua` | 상점 아이템, 코어 정의와 훅 |
| 스톤/퀘스트 | `src/game/stone.lua`, `src/game/quest.lua` | 퀘스트 보상 스톤과 진행 추적 |
| UI | `src/ui/*.lua` | 메인 메뉴, 렌더링, 툴팁, 튜토리얼, 영구 업그레이드, 각인 |
| 빌드 | `tools/*.ps1`, `tools/*.js`, `dist/` | 릴리즈/웹 빌드 스크립트와 산출물 |

---

## 21. 이전 문서 대비 수정한 핵심 오류

- 깨진 인코딩 문서를 UTF-8 한글 문서로 재작성했다.
- 존재하지 않는 `src/data/constants.lua` 참조 문제는 실제 파일이 존재하므로 최신 기준으로 정리했다.
- 슬롯 확률을 README의 오래된 24/24/24/10/10/8에서 현재 코드의 20/20/20/15/15/10으로 수정했다.
- “강제 당첨 기본 보정” 설명을 현재 `forceWinProb = 0.0` 기준으로 수정했다.
- 스핀 구조를 `freePerWave/paidMaxPerWave` 상수보다 실제 `main.lua`의 `spinsLeft = 6` 흐름 기준으로 정리했다.
- 아이템 시스템을 오래된 5개 레거시 설명에서 현재 `item.lua`의 20개 아이템 목록으로 갱신했다.
- 코어 목록을 현재 `cores.lua`의 실제 key/id 중심으로 갱신했다.
- M/H/D 5성 확정 설명을 제거하고, 현재 `constants.lua`의 모든 희귀도 최대 3성 기준과 `promotion.lua`의 잔존 확장 분기 상태를 분리해서 설명했다.
- Stage 2/3 구현 상태를 완성 콘텐츠처럼 쓰지 않고, 현재 구현된 범위와 빈 구성 반환 경로를 명시했다.
- 원석 보상 계산식과 영구 업그레이드 비용/선행 조건을 실제 코드 기준으로 추가했다.
- Stage 3 전용 웨이브 테이블과 황야 적 8종을 추가하고, 실제로 비어 있는 보스 게이트를 명시했다.

---

## 22. 현재 남아 있는 문서화/구현 주의점

- 일부 Lua 파일의 한국어 문자열이 이미 깨져 있어, 표시명 중심 문서화보다 key/id 중심 관리가 안전하다.
- `promotion.lua`와 `promotion_stats.lua`에는 4성/5성 확장 분기가 남아 있지만, `constants.evolution.maxRankByGrade`는 현재 3성을 최대치로 둔다.
- `src/game/cores.lua`에는 초기 오퍼 풀에 없는 코어 정의가 함께 남아 있어, “정의됨”과 “일반 플레이에서 등장 가능”을 구분해야 한다.
- Stage 2 보통/어려움, Stage 4 이후 웨이브는 아직 완성 콘텐츠로 보기 어렵다.
- Stage 3 보통/어려움에도 일반 웨이브는 구현됐지만 10·20·30 보스 게이트는 빈 적 목록을 반환한다.
- `itemresearch`, `shoppin`은 UI/데이터 정의가 있으나 구매 조건이 현재 false로 막혀 있다.
- `quest #27`은 4성 이상 유닛 조건이라 현재 3성 최대 구조와 충돌 가능성이 있다.
