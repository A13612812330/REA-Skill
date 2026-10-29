;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\cores.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 67 slots
	;;;; constant tables ;;;;
	ktable#30 = [
		#1: 3,
		#2: 3,
		]
	
	
	ktable#31 = [
		#1: 3,
		#2: 2,
		]
	
	
	ktable#32 = [
		#1: 3,
		#2: 1,
		]
	
	
	ktable#33 = [
		#1: 2,
		#2: 3,
		]
	
	
	ktable#34 = [
		#1: 2,
		#2: 2,
		]
	
	
	ktable#35 = [
		#1: 2,
		#2: 1,
		]
	
	
	ktable#36 = [
		#1: 1,
		#2: 3,
		]
	
	
	ktable#37 = [
		#1: 1,
		#2: 2,
		]
	
	
	ktable#38 = [
		#1: 1,
		#2: 1,
		]
	
	
	ktable#44 = [
		#1: 3,
		#2: 3,
		]
	
	
	ktable#45 = [
		#1: 2,
		#2: 3,
		]
	
	
	ktable#46 = [
		#1: 1,
		#2: 3,
		]
	
	
	ktable#47 = [
		#1: 3,
		#2: 2,
		]
	
	
	ktable#48 = [
		#1: 2,
		#2: 2,
		]
	
	
	ktable#49 = [
		#1: 1,
		#2: 2,
		]
	
	
	ktable#50 = [
		#1: 3,
		#2: 1,
		]
	
	
	ktable#51 = [
		#1: 2,
		#2: 1,
		]
	
	
	ktable#52 = [
		#1: 1,
		#2: 1,
		]
	
	
	ktable#53 = [
		#1: 3,
		#2: 1,
		]
	
	
	ktable#54 = [
		#1: 2,
		#2: 2,
		]
	
	
	ktable#55 = [
		#1: 1,
		#2: 3,
		]
	
	
	ktable#56 = [
		#1: 3,
		#2: 3,
		]
	
	
	ktable#57 = [
		#1: 2,
		#2: 2,
		]
	
	
	ktable#58 = [
		#1: 1,
		#2: 1,
		]
	
	
	ktable#59 = [
		#1: 3,
		#2: 3,
		]
	
	
	ktable#60 = [
		#1: 3,
		#2: 2,
		]
	
	
	ktable#61 = [
		#1: 3,
		#2: 1,
		]
	
	
	ktable#62 = [
		#1: 2,
		#2: 3,
		]
	
	
	ktable#63 = [
		#1: 2,
		#2: 2,
		]
	
	
	ktable#64 = [
		#1: 2,
		#2: 1,
		]
	
	
	ktable#65 = [
		#1: 1,
		#2: 3,
		]
	
	
	ktable#66 = [
		#1: 1,
		#2: 2,
		]
	
	
	ktable#67 = [
		#1: 1,
		#2: 1,
		]
	
	
	ktable#145 = [
		[S] = 0.21,
		[D] = 0.05,
		[H] = 0.16,
		[M] = 0.16,
		[A] = 0.21,
		[W] = 0.21,
		]
	
	
	ktable#147 = [
		[S] = true,
		[D] = true,
		[H] = true,
		[M] = true,
		[A] = true,
		[W] = true,
		]
	
	
	ktable#148 = [
		#1: W,
		#2: A,
		#3: S,
		#4: M,
		#5: H,
		#6: D,
		]
	
	
	ktable#181 = [
		[S] = true,
		[D] = true,
		[H] = true,
		[M] = true,
		[A] = true,
		[W] = true,
		]
	
	
	ktable#212 = [
		[_weightsApplied] = false,
		]
	
	
	ktable#215 = [
		[triggerText] = 5번째 스핀,
		[desc] = 5번째 스핀마다 황금 스핀이 됩니다. 황금 심볼로 당첨되면 해당 유닛의 희귀도가 한 단계 상승합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/64 Golden Lever.png,
		[rarity] = L,
		[name] = 황금 레버 (Golden Lever),
		[key] = GoldenLever,
		[id] = 64,
		[spawnChance] = 0.02,
		[duration] = 0,
		]
	
	
	ktable#216 = [
		[triggerText] = 조커 당첨,
		[desc] = 슬롯 칸마다 2% 확률로 {joker_tooltip.png} 가 등장하고, {joker_tooltip.png} 로 당첨되면 당첨된 심볼의 유닛을 1명 추가로 소환합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/59 Wildcard.png,
		[rarity] = L,
		[name] = 와일드카드 (Wildcard),
		[key] = Wildcard,
		[id] = 59,
		[spawnChance] = 0.02,
		[duration] = 0,
		]
	
	
	ktable#217 = [
		[triggerText] = 넛지 사용 후,
		[desc] = 넛지 후 같은 릴을 추가로 한 번 더 넛지할 수 있습니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/55 Rebound Axis.png,
		[rarity] = R,
		[name] = 반동축 (Rebound Axis),
		[key] = ReboundAxis,
		[id] = 55,
		[spawnChance] = 0.03,
		[duration] = 0,
		]
	
	
	ktable#218 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 당첨 실패 후 심볼 하나를 중앙 심볼과 교환할 수 있습니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/51 Crooked Fang.png,
		[rarity] = R,
		[name] = 맞물린 송곳니 (Crooked Fang),
		[key] = CrookedFang,
		[id] = 51,
		[spawnChance] = 0.03,
		[duration] = 0,
		]
	
	
	ktable#219 = [
		[triggerText] = 스핀당 1회,
		[desc] = 당첨된 심볼이 슬롯에 4개 이상 있으면 해당 유닛을 1명 추가로 소환합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/50 Resonant Anvil.png,
		[rarity] = R,
		[name] = 공명의 모루 (Resonant Anvil),
		[key] = ResonantAnvil,
		[id] = 50,
		[spawnChance] = 0.03,
		[duration] = 0,
		]
	
	
	ktable#220 = [
		[triggerText] = 웨이브 첫 스핀,
		[desc] = 매 웨이브 첫 스핀에 {joker_tooltip.png} 1개가 반드시 등장합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/45 Black Note.png,
		[rarity] = R,
		[name] = 검은 쪽지 (Black Note),
		[key] = BlackNote,
		[id] = 45,
		[spawnChance] = 0.03,
		[duration] = 0,
		]
	
	
	ktable#221 = [
		[triggerText] = 직전 심볼 재당첨,
		[desc] = 직전 당첨과 같은 심볼로 다시 당첨되면 해당 유닛을 1명 추가로 소환합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/44 Echo Lantern.png,
		[rarity] = U,
		[name] = 메아리 등불 (Echo Lantern),
		[key] = EchoLantern,
		[id] = 44,
		[spawnChance] = 0.04,
		[duration] = 0,
		]
	
	
	ktable#222 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 당첨에 실패했지만 한 릴의 위아래 심볼이 같으면 가운데 심볼도 같은 심볼로 바뀝니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/42 Copycap.png,
		[rarity] = U,
		[name] = 복제 버섯 (Copycap),
		[key] = Copycap,
		[id] = 42,
		[spawnChance] = 0.04,
		[duration] = 0,
		]
	
	
	ktable#223 = [
		[triggerText] = 당첨 실패 시,
		[desc] = 당첨에 실패하면 다음 스핀 비용이 {gold.png} 25 감소합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/40 Rewind Clock.png,
		[rarity] = U,
		[name] = 되감는 시계 (Rewind Clock),
		[key] = RewindClock,
		[id] = 40,
		[spawnChance] = 0.04,
		[duration] = 0,
		]
	
	
	ktable#224 = [
		[triggerText] = 웨이브 첫 흡수,
		[desc] = 매 웨이브 첫 흡수 후, 다음 스핀에 흡수로 사라진 유닛의 계열 심볼 3개가 등장합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/39 Bloodline Seal.png,
		[rarity] = U,
		[name] = 혈통의 인장 (Bloodline Seal),
		[key] = BloodlineSeal,
		[id] = 39,
		[spawnChance] = 0.04,
		[duration] = 0,
		]
	
	
	ktable#225 = [
		[triggerText] = 6번째 스핀마다,
		[desc] = 스핀 6번째마다 {joker_tooltip.png} 1개가 반드시 등장합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/26 Torn Note.png,
		[rarity] = U,
		[name] = 찢어진 쪽지 (Torn Note),
		[key] = TornNote,
		[id] = 26,
		[spawnChance] = 0.04,
		[duration] = 0,
		]
	
	
	ktable#226 = [
		[triggerText] = 상시,
		[desc] = 슬롯 칸마다 1.5% 확률로 {joker_tooltip.png} 이 등장합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/25 Joker Seed.png,
		[rarity] = U,
		[name] = 조커의 씨앗 (Joker Seed),
		[key] = JokerSeed,
		[id] = 25,
		[spawnChance] = 0.04,
		[duration] = 0,
		]
	
	
	ktable#227 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 넛지로 당첨을 만들지 못하면 다음 스핀 이후 1회 돌려받습니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/20 Spare Battery.png,
		[rarity] = C,
		[name] = 예비 전지 (Spare Battery),
		[key] = SpareBattery,
		[id] = 20,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#228 = [
		[triggerText] = 당첨 실패 시,
		[desc] = 당첨에 실패하면 무작위 릴 1개의 넛지 예정 심볼을 보여줍니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/19 Resonoscope.png,
		[rarity] = C,
		[name] = 동조의 망원경 (Resonoscope),
		[key] = ResonoscopeChain,
		[id] = 19,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#229 = [
		[triggerText] = 상시,
		[desc] = 선택한 심볼의 등장 확률이 5% 증가하며, 언제든 변경할 수 있습니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/12 Old Crown.png,
		[rarity] = C,
		[name] = 낡은 왕관 (Old Crown),
		[key] = OldCrown,
		[id] = 12,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#230 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 매 웨이브 첫 흡수 후 다음 스핀 비용이 50% 감소합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/11 Nutrient Leaf.png,
		[rarity] = C,
		[name] = 양분의 잎 (Nutrient Leaf),
		[key] = NutrientLeaf,
		[id] = 11,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#231 = [
		[triggerText] = 웨이브당 1회,
		[unlock] = MercContract,
		[desc] = {gold.png} 200 으로 일반 유닛 3명 중 1명을 선택합니다. 2회 사용 가능.,
		[iconH] = 32,
		[iconW] = 32,
		[consumable] = true,
		[icon] = src/sprites/icons/relics icon/core icons/10 Merc Contract.png,
		[rarity] = C,
		[manualUse] = true,
		[name] = 용병 계약서 (Merc Contract),
		[key] = MercContract,
		[id] = 10,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#232 = [
		[triggerText] = 웨이브 3번째 스핀,
		[desc] = 매 웨이브 3번째 스핀 실패 시, {middle.png}을 최대 2회 다시 굴립니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/09 Greedy Tail.png,
		[rarity] = C,
		[name] = 욕심쟁이 꼬리 (Greedy Tail),
		[key] = GreedyTail,
		[id] = 09,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#233 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 당첨에 실패했지만 같은 심볼이 4개 이상 나오면 {essence.png} +1을 얻습니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/08 Echo Mirror.png,
		[rarity] = C,
		[name] = 다중의 거울 (Echo Mirror),
		[key] = MultiEchoMirror,
		[id] = 08,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#234 = [
		[triggerText] = 수동 활성화,
		[desc] = 스핀에 {gold.png} 200을 추가로 지불하고 당첨 시 해당 유닛을 2배로 소환합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/07 X2.png,
		[rarity] = C,
		[name] = X2 (X2),
		[key] = X2,
		[id] = 07,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#235 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 당첨 실패 시, 가로줄에 같은 심볼 2개가 있으면 둘을 고정하고 남은 릴을 직접 멈춥니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/06 Lucky Nail.png,
		[rarity] = C,
		[name] = 행운의 못 (Lucky Nail),
		[key] = LuckyNail,
		[id] = 06,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#236 = [
		[triggerText] = 남은 스핀,
		[desc] = 전투 시작 시 남은 기본 스핀 1회당 {gold.png} 20을 지급합니다. {gold.png} 300을 모으면 전부 획득합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/05 Coin Sack.png,
		[rarity] = C,
		[name] = 동전 자루 (Coin Sack),
		[key] = CoinSack,
		[id] = 05,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#237 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 현재 슬롯의 심볼 하나를 선택하면 다음 스핀에 해당 심볼이 등장하지 않습니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/04 Ban Stamp.png,
		[rarity] = C,
		[name] = 금지 도장 (Ban Stamp),
		[key] = BanStamp,
		[id] = 04,
		[spawnChance] = 0.05,
		[duration] = 0,
		]
	
	
	ktable#238 = [
		[triggerText] = 첫 스핀 당첨 실패,
		[desc] = 매 웨이브 첫 스핀에서 당첨에 실패하면 마지막 릴이 첫 번째 릴의 심볼 배열을 복사합니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/03 Twin Cherries.png,
		[rarity] = C,
		[name] = 쌍둥이 체리 (Twin Cherries),
		[key] = TwinCherries,
		[id] = 03,
		[spawnChance] = 0.055,
		[duration] = 0,
		]
	
	
	ktable#239 = [
		[triggerText] = 웨이브 첫 당첨,
		[desc] = 모든 당첨선의 심볼이 사라지고 새 심볼이 위에서 떨어집니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/02 Double Ledger.png,
		[rarity] = C,
		[name] = 이중 장부 (Double Ledger),
		[key] = DoubleLedger,
		[id] = 02,
		[spawnChance] = 0.06,
		[duration] = 0,
		]
	
	
	ktable#240 = [
		[triggerText] = 웨이브당 1회,
		[desc] = 매 웨이브 첫 스핀 당첨 실패 시 그 스핀을 무료로 한 번 다시 굴립니다.,
		[iconH] = 32,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/core icons/01 Twisted Bell.png,
		[rarity] = C,
		[name] = 뒤틀린 방울 (Twisted Bell),
		[key] = TwistedBell,
		[id] = 01,
		[spawnChance] = 0.06,
		[duration] = 0,
		]
	
	
	ktable#241 = [
		[08] = true,
		[07] = true,
		[06] = true,
		[05] = true,
		[04] = true,
		[03] = true,
		[02] = true,
		[01] = true,
		[64] = true,
		[59] = true,
		[55] = true,
		[51] = true,
		[50] = true,
		[45] = true,
		[44] = true,
		[42] = true,
		[40] = true,
		[39] = true,
		[26] = true,
		[25] = true,
		[20] = true,
		[19] = true,
		[12] = true,
		[11] = true,
		[10] = true,
		[09] = true,
		]
	
	
	ktable#242 = [
		[U] = 35,
		[C] = 30,
		[L] = 7,
		[R] = 28,
		]
	
	
	ktable#243 = [
		[U] = 34,
		[C] = 36,
		[L] = 6,
		[R] = 24,
		]
	
	
	ktable#244 = [
		[U] = 33,
		[C] = 44,
		[L] = 4,
		[R] = 19,
		]
	
	
	ktable#245 = [
		[U] = 31,
		[C] = 52,
		[L] = 3,
		[R] = 14,
		]
	
	
	ktable#246 = [
		[U] = 28,
		[C] = 60,
		[L] = 2,
		[R] = 10,
		]
	
	
	ktable#247 = [
		[U] = 24,
		[C] = 68,
		[L] = 1,
		[R] = 7,
		]
	
	
	ktable#248 = [
		[U] = 21,
		[C] = 74,
		[L] = 0.5,
		[R] = 4.5,
		]
	
	
	ktable#249 = [
		[U] = 18,
		[C] = 80,
		[L] = 0,
		[R] = 2,
		]
	
	
	ktable#250 = [
		[U] = 2,
		[C] = 1,
		[L] = 4,
		[R] = 3,
		]
	
	
	ktable#251 = [
		#1: C,
		#2: U,
		#3: R,
		#4: L,
		]
	
	
	ktable#253 = [
		#1: 0.95,
		#2: 0.65,
		#3: 0.25,
		#4: 1,
		]
	
	
	ktable#254 = [
		[label] = LEGEND,
		]
	
	
	ktable#256 = [
		#1: 0.55,
		#2: 0.65,
		#3: 0.95,
		#4: 1,
		]
	
	
	ktable#257 = [
		[label] = RARE,
		]
	
	
	ktable#259 = [
		#1: 0.55,
		#2: 0.9,
		#3: 0.55,
		#4: 1,
		]
	
	
	ktable#260 = [
		[label] = UNCOMMON,
		]
	
	
	ktable#262 = [
		]
	
	
	ktable#264 = [
		#1: 1,
		#2: 1,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#265 = [
		[label] = COMMON,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	GGET 	  0		268	; slot0 = _env["require"]
	  2	[  0]	KSTR 	  2		267	; slot2 = "src.data.constants"
	  3	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	  4	[  0]	GGET 	  1		268	; slot1 = _env["require"]
	  5	[  0]	KSTR 	  3		266	; slot3 = "src.data.randomoption"
	  6	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
	  7	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
	  8	[  0]	TDUP 	  3		262	; slot3 = copy table#k262
	  9	[  0]	TDUP 	  4		265	; slot4 = copy table#k265
	 10	[  0]	TDUP 	  5		264	; slot5 = copy table#k264
	 11	[  0]	TSETS	  5	4	263	; slot4.color = slot5
	 12	[  0]	TSETS	  4	3	261	; slot3.C = slot4
	 13	[  0]	TDUP 	  4		260	; slot4 = copy table#k260
	 14	[  0]	TDUP 	  5		259	; slot5 = copy table#k259
	 15	[  0]	TSETS	  5	4	263	; slot4.color = slot5
	 16	[  0]	TSETS	  4	3	258	; slot3.U = slot4
	 17	[  0]	TDUP 	  4		257	; slot4 = copy table#k257
	 18	[  0]	TDUP 	  5		256	; slot5 = copy table#k256
	 19	[  0]	TSETS	  5	4	263	; slot4.color = slot5
	 20	[  0]	TSETS	  4	3	255	; slot3.R = slot4
	 21	[  0]	TDUP 	  4		254	; slot4 = copy table#k254
	 22	[  0]	TDUP 	  5		253	; slot5 = copy table#k253
	 23	[  0]	TSETS	  5	4	263	; slot4.color = slot5
	 24	[  0]	TSETS	  4	3	252	; slot3.L = slot4
	 25	[  0]	TDUP 	  4		251	; slot4 = copy table#k251
	 26	[  0]	TDUP 	  5		250	; slot5 = copy table#k250
	 27	[  0]	TNEW 	  6		9	; slot6 = new table( array: 9, dict: 1)
	 28	[  0]	TDUP 	  7		249	; slot7 = copy table#k249
	 29	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
	 30	[  0]	TDUP 	  7		248	; slot7 = copy table#k248
	 31	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
	 32	[  0]	TDUP 	  7		247	; slot7 = copy table#k247
	 33	[  0]	TSETB	  7	6	3	; slot6[3] = slot7
	 34	[  0]	TDUP 	  7		246	; slot7 = copy table#k246
	 35	[  0]	TSETB	  7	6	4	; slot6[4] = slot7
	 36	[  0]	TDUP 	  7		245	; slot7 = copy table#k245
	 37	[  0]	TSETB	  7	6	5	; slot6[5] = slot7
	 38	[  0]	TDUP 	  7		244	; slot7 = copy table#k244
	 39	[  0]	TSETB	  7	6	6	; slot6[6] = slot7
	 40	[  0]	TDUP 	  7		243	; slot7 = copy table#k243
	 41	[  0]	TSETB	  7	6	7	; slot6[7] = slot7
	 42	[  0]	TDUP 	  7		242	; slot7 = copy table#k242
	 43	[  0]	TSETB	  7	6	8	; slot6[8] = slot7
	 44	[  0]	TDUP 	  7		241	; slot7 = copy table#k241
	 45	[  0]	TNEW 	  8		27	; slot8 = new table( array: 27, dict: 1)
	 46	[  0]	TDUP 	  9		240	; slot9 = copy table#k240
	 47	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
	 48	[  0]	TDUP 	  9		239	; slot9 = copy table#k239
	 49	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
	 50	[  0]	TDUP 	  9		238	; slot9 = copy table#k238
	 51	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
	 52	[  0]	TDUP 	  9		237	; slot9 = copy table#k237
	 53	[  0]	TSETB	  9	8	4	; slot8[4] = slot9
	 54	[  0]	TDUP 	  9		236	; slot9 = copy table#k236
	 55	[  0]	TSETB	  9	8	5	; slot8[5] = slot9
	 56	[  0]	TDUP 	  9		235	; slot9 = copy table#k235
	 57	[  0]	TSETB	  9	8	6	; slot8[6] = slot9
	 58	[  0]	TDUP 	  9		234	; slot9 = copy table#k234
	 59	[  0]	TSETB	  9	8	7	; slot8[7] = slot9
	 60	[  0]	TDUP 	  9		233	; slot9 = copy table#k233
	 61	[  0]	TSETB	  9	8	8	; slot8[8] = slot9
	 62	[  0]	TDUP 	  9		232	; slot9 = copy table#k232
	 63	[  0]	TSETB	  9	8	9	; slot8[9] = slot9
	 64	[  0]	TDUP 	  9		231	; slot9 = copy table#k231
	 65	[  0]	TSETB	  9	8	10	; slot8[10] = slot9
	 66	[  0]	TDUP 	  9		230	; slot9 = copy table#k230
	 67	[  0]	TSETB	  9	8	11	; slot8[11] = slot9
	 68	[  0]	TDUP 	  9		229	; slot9 = copy table#k229
	 69	[  0]	TSETB	  9	8	12	; slot8[12] = slot9
	 70	[  0]	TDUP 	  9		228	; slot9 = copy table#k228
	 71	[  0]	TSETB	  9	8	13	; slot8[13] = slot9
	 72	[  0]	TDUP 	  9		227	; slot9 = copy table#k227
	 73	[  0]	TSETB	  9	8	14	; slot8[14] = slot9
	 74	[  0]	TDUP 	  9		226	; slot9 = copy table#k226
	 75	[  0]	TSETB	  9	8	15	; slot8[15] = slot9
	 76	[  0]	TDUP 	  9		225	; slot9 = copy table#k225
	 77	[  0]	TSETB	  9	8	16	; slot8[16] = slot9
	 78	[  0]	TDUP 	  9		224	; slot9 = copy table#k224
	 79	[  0]	TSETB	  9	8	17	; slot8[17] = slot9
	 80	[  0]	TDUP 	  9		223	; slot9 = copy table#k223
	 81	[  0]	TSETB	  9	8	18	; slot8[18] = slot9
	 82	[  0]	TDUP 	  9		222	; slot9 = copy table#k222
	 83	[  0]	TSETB	  9	8	19	; slot8[19] = slot9
	 84	[  0]	TDUP 	  9		221	; slot9 = copy table#k221
	 85	[  0]	TSETB	  9	8	20	; slot8[20] = slot9
	 86	[  0]	TDUP 	  9		220	; slot9 = copy table#k220
	 87	[  0]	TSETB	  9	8	21	; slot8[21] = slot9
	 88	[  0]	TDUP 	  9		219	; slot9 = copy table#k219
	 89	[  0]	TSETB	  9	8	22	; slot8[22] = slot9
	 90	[  0]	TDUP 	  9		218	; slot9 = copy table#k218
	 91	[  0]	TSETB	  9	8	23	; slot8[23] = slot9
	 92	[  0]	TDUP 	  9		217	; slot9 = copy table#k217
	 93	[  0]	TSETB	  9	8	24	; slot8[24] = slot9
	 94	[  0]	TDUP 	  9		216	; slot9 = copy table#k216
	 95	[  0]	TSETB	  9	8	25	; slot8[25] = slot9
	 96	[  0]	TDUP 	  9		215	; slot9 = copy table#k215
	 97	[  0]	FNEW 	 10		214	; N/A:0-0: 0 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	ISF  	   		0	; if not uv0"unknown"
		  3	[  0]	JMP  	  1		9	; 	goto 13
		  4	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  5	[  0]	TGETS	  0	0	6	; slot0 = uv0"unknown".unitGrades
		  6	[  0]	ISF  	   		0	; if not uv0"unknown".unitGrades
		  7	[  0]	JMP  	  1		5	; 	goto 13
		  8	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  9	[  0]	TGETS	  0	0	6	; slot0 = uv0"unknown".unitGrades
		 10	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown".unitGrades.probabilities
		 11	[  0]	IST  	   		0	; if uv0"unknown".unitGrades.probabilities
		 12	[  0]	JMP  	  1		1	; 	goto 14
		 13	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		 14	[  0]	GGET 	  1		4	; slot1 = _env["tonumber"]
		 15	[  0]	TGETS	  3	0	3	; slot3 = slot0.advanced
		 16	[  0]	IST  	   		3	; if <unknown table>.advanced
		 17	[  0]	JMP  	  4		1	; 	goto 19
		 18	[  0]	KSHORT	  3		0	; slot3 = 0
		 19	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		 20	[  0]	IST  	   		1	; if slot1
		 21	[  0]	JMP  	  2		1	; 	goto 23
		 22	[  0]	KSHORT	  1		0	; slot1 = 0
		 23	[  0]	KSHORT	  2		0	; slot2 = 0
		 24	[  0]	ISLT 	  2		1	; if slot2 < slot1
		 25	[  0]	JMP  	  1		38	; 	goto 64
		 26	[  0]	GGET 	  1		4	; slot1 = _env["tonumber"]
		 27	[  0]	TGETS	  3	0	2	; slot3 = slot0.rare
		 28	[  0]	IST  	   		3	; if <unknown table>.rare
		 29	[  0]	JMP  	  4		1	; 	goto 31
		 30	[  0]	KSHORT	  3		0	; slot3 = 0
		 31	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		 32	[  0]	IST  	   		1	; if slot1
		 33	[  0]	JMP  	  2		1	; 	goto 35
		 34	[  0]	KSHORT	  1		0	; slot1 = 0
		 35	[  0]	KSHORT	  2		0	; slot2 = 0
		 36	[  0]	ISLT 	  2		1	; if slot2 < slot1
		 37	[  0]	JMP  	  1		26	; 	goto 64
		 38	[  0]	GGET 	  1		4	; slot1 = _env["tonumber"]
		 39	[  0]	TGETS	  3	0	1	; slot3 = slot0.legendary
		 40	[  0]	IST  	   		3	; if <unknown table>.legendary
		 41	[  0]	JMP  	  4		1	; 	goto 43
		 42	[  0]	KSHORT	  3		0	; slot3 = 0
		 43	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		 44	[  0]	IST  	   		1	; if slot1
		 45	[  0]	JMP  	  2		1	; 	goto 47
		 46	[  0]	KSHORT	  1		0	; slot1 = 0
		 47	[  0]	KSHORT	  2		0	; slot2 = 0
		 48	[  0]	ISLT 	  2		1	; if slot2 < slot1
		 49	[  0]	JMP  	  1		14	; 	goto 64
		 50	[  0]	GGET 	  1		4	; slot1 = _env["tonumber"]
		 51	[  0]	TGETS	  3	0	0	; slot3 = slot0.prism
		 52	[  0]	IST  	   		3	; if <unknown table>.prism
		 53	[  0]	JMP  	  4		1	; 	goto 55
		 54	[  0]	KSHORT	  3		0	; slot3 = 0
		 55	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		 56	[  0]	IST  	   		1	; if slot1
		 57	[  0]	JMP  	  2		1	; 	goto 59
		 58	[  0]	KSHORT	  1		0	; slot1 = 0
		 59	[  0]	KSHORT	  2		0	; slot2 = 0
		 60	[  0]	ISLT 	  2		1	; if slot2 < slot1
		 61	[  0]	JMP  	  1		2	; 	goto 64
		 62	[  0]	KPRI 	  1		1	; slot1 = false
		 63	[  0]	JMP  	  2		1	; 	goto 65
		 64	[  0]	KPRI 	  1		2	; slot1 = true
		 65	[  0]	RET1 	  1		2	; return slot1
	 98	[  0]	TSETS	 10	9	213	; slot9.unlock = slot10
	 99	[  0]	TSETB	  9	8	26	; slot8[26] = slot9
	100	[  0]	TDUP 	  9		212	; slot9 = copy table#k212
	101	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
	102	[  0]	TSETS	 10	9	211	; slot9.active = slot10
	103	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
	104	[  0]	TSETS	 10	9	210	; slot9.iconCache = slot10
	105	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
	106	[  0]	TSETS	 10	9	209	; slot9.iconDataCache = slot10
	107	[  0]	FNEW 	 10		208	; N/A:0-0: 0 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		5	; slot0 = _env["rawget"]
		  2	[  0]	GGET 	  2		4	; slot2 = _env["_G"]
		  3	[  0]	KSTR 	  3		3	; slot3 = "Tutorial"
		  4	[  0]	CALL 	  0	2	3	; slot0 = rawget(slot1, _G)
		  5	[  0]	IST  	   		0	; if slot0
		  6	[  0]	JMP  	  1		2	; 	goto 9
		  7	[  0]	KPRI 	  1		1	; slot1 = false
		  8	[  0]	RET1 	  1		2	; return slot1
		  9	[  0]	TGETS	  1	0	2	; slot1 = slot0.isRunning
		 10	[  0]	ISF  	   		1	; if not <unknown table>.isRunning
		 11	[  0]	JMP  	  2		6	; 	goto 18
		 12	[  0]	TGETS	  1	0	2	; slot1 = slot0.isRunning
		 13	[  0]	CALL 	  1	2	1	; slot1 = <unknown table>.isRunning()
		 14	[  0]	ISF  	   		1	; if not slot1
		 15	[  0]	JMP  	  2		2	; 	goto 18
		 16	[  0]	KPRI 	  1		2	; slot1 = true
		 17	[  0]	RET1 	  1		2	; return slot1
		 18	[  0]	TGETS	  1	0	1	; slot1 = slot0.isActive
		 19	[  0]	ISF  	   		1	; if not <unknown table>.isActive
		 20	[  0]	JMP  	  2		6	; 	goto 27
		 21	[  0]	TGETS	  1	0	1	; slot1 = slot0.isActive
		 22	[  0]	CALL 	  1	2	1	; slot1 = <unknown table>.isActive()
		 23	[  0]	ISF  	   		1	; if not slot1
		 24	[  0]	JMP  	  2		2	; 	goto 27
		 25	[  0]	KPRI 	  1		2	; slot1 = true
		 26	[  0]	RET1 	  1		2	; return slot1
		 27	[  0]	TGETS	  1	0	0	; slot1 = slot0.isPending
		 28	[  0]	ISF  	   		1	; if not <unknown table>.isPending
		 29	[  0]	JMP  	  2		4	; 	goto 34
		 30	[  0]	TGETS	  1	0	0	; slot1 = slot0.isPending
		 31	[  0]	CALL 	  1	2	1	; slot1 = <unknown table>.isPending()
		 32	[  0]	IST  	   		1	; if slot1
		 33	[  0]	JMP  	  2		1	; 	goto 35
		 34	[  0]	KPRI 	  1		1	; slot1 = false
		 35	[  0]	RET1 	  1		2	; return slot1
	108	[  0]	FNEW 	 11		206	; N/A:0-0: 0 args, 1 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	CALLT	  0		1	; return uv0"unknown"()
	109	[  0]	TSETS	 11	2	207	; slot2.areEffectsSuppressed = slot11
	110	[  0]	FNEW 	 11		205	; N/A:0-0: 1 args, 2 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSHORT	  1		0	; slot1 = 0
		  2	[  0]	GGET 	  2		1	; slot2 = _env["tonumber"]
		  3	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	KSHORT	  4		0	; slot4 = 0
		  6	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  7	[  0]	IST  	   		2	; if slot2
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	KSHORT	  2		0	; slot2 = 0
		 10	[  0]	FNEW 	  3		0	; N/A:0-0: 0 args, 4 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	CALL 	  0	2	1	; slot0 = uv0"unknown"()
			  3	[  0]	ISF  	   		0	; if not slot0
			  4	[  0]	JMP  	  1		2	; 	goto 7
			  5	[  0]	KPRI 	  0		0	; slot0 = nil
			  6	[  0]	RET1 	  0		2	; return slot0
			  7	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			  8	[  0]	UGET 	  1		2	; slot1 = uv2"unknwon"
			  9	[  0]	TGETS	  1	1	2	; slot1 = uv2"unknown".active
			 10	[  0]	LEN  	  1		1	; slot1 = #uv2"unknown".active
			 11	[  0]	ISGE 	  0		1	; if uv1"unknown" >= slot1
			 12	[  0]	JMP  	  0		22	; 	goto 35
			 13	[  0]	LOOP 	  0		21	; Loop start, exit goto 35
			 14	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
			 15	[  0]	ADDVN	  0	0	0	; slot0 = uv1"unknown" + 1
			 16	[  0]	USETV	  1		0	; uv1"unknwon" = slot0
			 17	[  0]	UGET 	  0		2	; slot0 = uv2"unknwon"
			 18	[  0]	TGETS	  0	0	2	; slot0 = uv2"unknown".active
			 19	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 20	[  0]	TGETV	  0	0	1	; slot0 = uv2"unknown".active[uv1"unknown"]
			 21	[  0]	GGET 	  1		1	; slot1 = _env["tonumber"]
			 22	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
			 23	[  0]	JMP  	  3		1	; 	goto 25
			 24	[  0]	TGETS	  3	0	0	; slot3 = slot0.startWave
			 25	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
			 26	[  0]	ISF  	   		0	; if not slot0
			 27	[  0]	JMP  	  2		-21	; 	goto 7
			 28	[  0]	ISF  	   		1	; if not slot1
			 29	[  0]	JMP  	  2		3	; 	goto 33
			 30	[  0]	UGET 	  2		3	; slot2 = uv3"unknwon"
			 31	[  0]	ISGT 	  1		2	; if slot1 > uv3"unknown"
			 32	[  0]	JMP  	  2		-26	; 	goto 7
			 33	[  0]	RET1 	  0		2	; return slot0
			 34	[  0]	JMP  	  0		-28	; 	goto 7
			 35	[  0]	KPRI 	  0		0	; slot0 = nil
			 36	[  0]	RET1 	  0		2	; return slot0
		 11	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 12
		 12	[  0]	RET1 	  3		2	; return slot3
	111	[  0]	FNEW 	 12		204	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	LEN  	  1		0	; slot1 = #slot0
		  2	[  0]	KSHORT	  2		2	; slot2 = 2
		  3	[  0]	KSHORT	  3		65535	; slot3 = 65535
		  4	[  0]	FORI 	  1		11	; for slot4 = slot1,slot2,slot3 else goto 16
		  5	[  0]	GGET 	  5		2	; slot5 = _env["love"]
		  6	[  0]	TGETS	  5	5	1	; slot5 = love.math
		  7	[  0]	TGETS	  5	5	0	; slot5 = love.math.random
		  8	[  0]	KSHORT	  7		1	; slot7 = 1
		  9	[  0]	MOV  	  8		4	; slot8 = slot4
		 10	[  0]	CALL 	  5	2	3	; slot5 = love.math.random(slot6, slot7)
		 11	[  0]	TGETV	  6	0	5	; slot6 = slot0[love.math.random]
		 12	[  0]	TGETV	  7	0	4	; slot7 = slot0[slot4]
		 13	[  0]	TSETV	  7	0	5	; slot0[love.math.random] = slot7
		 14	[  0]	TSETV	  6	0	4	; slot0[slot4] = slot6
		 15	[  0]	FORL 	  1		-11	; slot4 = slot4 + slot3; if cmp(slot4, sign slot3,  slot2) goto 5
		 16	[  0]	RET1 	  0		2	; return slot0
	112	[  0]	FNEW 	 13		203	; N/A:0-0: 1 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	KSHORT	  1		0	; slot1 = 0
		  4	[  0]	ISGT 	  0		1	; if slot0 > slot1
		  5	[  0]	JMP  	  1		1	; 	goto 7
		  6	[  0]	RET0 	  0		1	; return
		  7	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  8	[  0]	GGET 	  2		10	; slot2 = _env["ipairs"]
		  9	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 10	[  0]	TGETS	  4	4	9	; slot4 = uv0"unknown".active
		 11	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 12	[  0]	JMP  	  5		30	; 	goto 43
		 13	[  0]	TGETS	  7	6	8	; slot7 = slot6.expiryWave
		 14	[  0]	ISF  	   		7	; if not <unknown table>.expiryWave
		 15	[  0]	JMP  	  7		3	; 	goto 19
		 16	[  0]	TGETS	  7	6	8	; slot7 = slot6.expiryWave
		 17	[  0]	ISGT 	  0		7	; if slot0 > <unknown table>.expiryWave
		 18	[  0]	JMP  	  7		24	; 	goto 43
		 19	[  0]	TGETS	  7	6	7	; slot7 = slot6.key
		 20	[  0]	ISNES	  7		6	; if <unknown table>.key ~= "GreedyTail"
		 21	[  0]	JMP  	  7		6	; 	goto 28
		 22	[  0]	TGETS	  7	6	5	; slot7 = slot6._greedyTailUsedWave
		 23	[  0]	ISEQV	  7		0	; if <unknown table>._greedyTailUsedWave == slot0
		 24	[  0]	JMP  	  7		13	; 	goto 38
		 25	[  0]	KPRI 	  7		0	; slot7 = nil
		 26	[  0]	TSETS	  7	6	5	; slot6._greedyTailUsedWave = slot7
		 27	[  0]	JMP  	  7		10	; 	goto 38
		 28	[  0]	TGETS	  7	6	7	; slot7 = slot6.key
		 29	[  0]	ISNES	  7		4	; if <unknown table>.key ~= "NutrientLeaf"
		 30	[  0]	JMP  	  7		7	; 	goto 38
		 31	[  0]	TGETS	  7	6	3	; slot7 = slot6._nutrientWaveId
		 32	[  0]	ISEQV	  7		0	; if <unknown table>._nutrientWaveId == slot0
		 33	[  0]	JMP  	  7		4	; 	goto 38
		 34	[  0]	KPRI 	  7		0	; slot7 = nil
		 35	[  0]	TSETS	  7	6	3	; slot6._nutrientWaveId = slot7
		 36	[  0]	KPRI 	  7		0	; slot7 = nil
		 37	[  0]	TSETS	  7	6	2	; slot6._nutrientDiscountPending = slot7
		 38	[  0]	GGET 	  7		1	; slot7 = _env["table"]
		 39	[  0]	TGETS	  7	7	0	; slot7 = table.insert
		 40	[  0]	MOV  	  9		1	; slot9 = slot1
		 41	[  0]	MOV  	 10		6	; slot10 = slot6
		 42	[  0]	CALL 	  7	1	3	;  = table.insert(slot8, slot9)
		 43	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown".active; slot5, slot6 = slot2(slot3, uv0"unknown".active)
		 44	[  0]	ITERL	  5		-32	; uv0"unknown".active = slot5; if slot5 != nil goto 13
		 45	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 46	[  0]	TSETS	  1	2	9	; uv0"unknown".active = slot1
		 47	[  0]	RET0 	  0		1	; return
	113	[  0]	FNEW 	 14		201	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	9	; slot1 = slot0.icon
		  4	[  0]	IST  	   		1	; if <unknown table>.icon
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	TGETS	  1	1	8	; slot1 = uv0"unknown".iconCache
		 10	[  0]	TGETS	  2	0	9	; slot2 = slot0.icon
		 11	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown".iconCache[<unknown table>.icon]
		 12	[  0]	ISEQP	  1		0	; if slot1 == nil
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 15	[  0]	JMP  	  2		1	; 	goto 17
		 16	[  0]	KPRI 	  2		0	; slot2 = nil
		 17	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	GGET 	  2		7	; slot2 = _env["love"]
		 19	[  0]	TGETS	  2	2	6	; slot2 = love.filesystem
		 20	[  0]	TGETS	  2	2	5	; slot2 = love.filesystem.getInfo
		 21	[  0]	TGETS	  4	0	9	; slot4 = slot0.icon
		 22	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
		 23	[  0]	IST  	   		2	; if slot2
		 24	[  0]	JMP  	  3		7	; 	goto 32
		 25	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 26	[  0]	TGETS	  3	3	8	; slot3 = uv0"unknown".iconCache
		 27	[  0]	TGETS	  4	0	9	; slot4 = slot0.icon
		 28	[  0]	KPRI 	  5		1	; slot5 = false
		 29	[  0]	TSETV	  5	3	4	; uv0"unknown".iconCache[<unknown table>.icon] = slot5
		 30	[  0]	KPRI 	  3		0	; slot3 = nil
		 31	[  0]	RET1 	  3		2	; return slot3
		 32	[  0]	GGET 	  3		4	; slot3 = _env["pcall"]
		 33	[  0]	GGET 	  5		7	; slot5 = _env["love"]
		 34	[  0]	TGETS	  5	5	3	; slot5 = love.graphics
		 35	[  0]	TGETS	  5	5	2	; slot5 = love.graphics.newImage
		 36	[  0]	TGETS	  6	0	9	; slot6 = slot0.icon
		 37	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(<unknown table>.icon, love.graphics.newImage)
		 38	[  0]	ISF  	   		3	; if not slot3
		 39	[  0]	JMP  	  5		2	; 	goto 42
		 40	[  0]	IST  	   		4	; if <unknown table>.icon
		 41	[  0]	JMP  	  5		7	; 	goto 49
		 42	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 43	[  0]	TGETS	  5	5	8	; slot5 = uv0"unknown".iconCache
		 44	[  0]	TGETS	  6	0	9	; slot6 = slot0.icon
		 45	[  0]	KPRI 	  7		1	; slot7 = false
		 46	[  0]	TSETV	  7	5	6	; uv0"unknown".iconCache[<unknown table>.icon] = slot7
		 47	[  0]	KPRI 	  5		0	; slot5 = nil
		 48	[  0]	RET1 	  5		2	; return slot5
		 49	[  0]	MOV  	  7		4	; slot7 = <unknown table>.icon
		 50	[  0]	TGETS	  5	4	1	; slot5 = <unknown table>.icon.setFilter
		 51	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 52	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		 53	[  0]	CALL 	  5	1	4	;  = <unknown table>.icon.setFilter(<unknown table>.icon, <unknown table>.icon, slot8)
		 54	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 55	[  0]	TGETS	  5	5	8	; slot5 = uv0"unknown".iconCache
		 56	[  0]	TGETS	  6	0	9	; slot6 = slot0.icon
		 57	[  0]	TSETV	  4	5	6	; uv0"unknown".iconCache[<unknown table>.icon] = <unknown table>.icon
		 58	[  0]	RET1 	  4		2	; return <unknown table>.icon
	114	[  0]	TSETS	 14	2	202	; slot2.getIcon = slot14
	115	[  0]	FNEW 	 14		199	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	7	; slot1 = slot0.icon
		  4	[  0]	IST  	   		1	; if <unknown table>.icon
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown".iconDataCache
		 10	[  0]	TGETS	  2	0	7	; slot2 = slot0.icon
		 11	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown".iconDataCache[<unknown table>.icon]
		 12	[  0]	ISEQP	  1		0	; if slot1 == nil
		 13	[  0]	JMP  	  2		4	; 	goto 18
		 14	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 15	[  0]	JMP  	  2		1	; 	goto 17
		 16	[  0]	KPRI 	  2		0	; slot2 = nil
		 17	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	GGET 	  2		5	; slot2 = _env["love"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = love.filesystem
		 20	[  0]	TGETS	  2	2	3	; slot2 = love.filesystem.getInfo
		 21	[  0]	TGETS	  4	0	7	; slot4 = slot0.icon
		 22	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
		 23	[  0]	IST  	   		2	; if slot2
		 24	[  0]	JMP  	  3		7	; 	goto 32
		 25	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 26	[  0]	TGETS	  3	3	6	; slot3 = uv0"unknown".iconDataCache
		 27	[  0]	TGETS	  4	0	7	; slot4 = slot0.icon
		 28	[  0]	KPRI 	  5		1	; slot5 = false
		 29	[  0]	TSETV	  5	3	4	; uv0"unknown".iconDataCache[<unknown table>.icon] = slot5
		 30	[  0]	KPRI 	  3		0	; slot3 = nil
		 31	[  0]	RET1 	  3		2	; return slot3
		 32	[  0]	GGET 	  3		2	; slot3 = _env["pcall"]
		 33	[  0]	GGET 	  5		5	; slot5 = _env["love"]
		 34	[  0]	TGETS	  5	5	1	; slot5 = love.image
		 35	[  0]	TGETS	  5	5	0	; slot5 = love.image.newImageData
		 36	[  0]	TGETS	  6	0	7	; slot6 = slot0.icon
		 37	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(<unknown table>.icon, love.image.newImageData)
		 38	[  0]	ISF  	   		3	; if not slot3
		 39	[  0]	JMP  	  5		2	; 	goto 42
		 40	[  0]	IST  	   		4	; if <unknown table>.icon
		 41	[  0]	JMP  	  5		7	; 	goto 49
		 42	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 43	[  0]	TGETS	  5	5	6	; slot5 = uv0"unknown".iconDataCache
		 44	[  0]	TGETS	  6	0	7	; slot6 = slot0.icon
		 45	[  0]	KPRI 	  7		1	; slot7 = false
		 46	[  0]	TSETV	  7	5	6	; uv0"unknown".iconDataCache[<unknown table>.icon] = slot7
		 47	[  0]	KPRI 	  5		0	; slot5 = nil
		 48	[  0]	RET1 	  5		2	; return slot5
		 49	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 50	[  0]	TGETS	  5	5	6	; slot5 = uv0"unknown".iconDataCache
		 51	[  0]	TGETS	  6	0	7	; slot6 = slot0.icon
		 52	[  0]	TSETV	  4	5	6	; uv0"unknown".iconDataCache[<unknown table>.icon] = <unknown table>.icon
		 53	[  0]	RET1 	  4		2	; return <unknown table>.icon
	116	[  0]	TSETS	 14	2	200	; slot2.getIconData = slot14
	117	[  0]	FNEW 	 14		197	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 1,
			#2: 1,
			#3: 1,
			#4: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		6	; 	goto 9
		  3	[  0]	TGETS	  1	0	4	; slot1 = slot0.rarity
		  4	[  0]	ISF  	   		1	; if not <unknown table>.rarity
		  5	[  0]	JMP  	  2		3	; 	goto 9
		  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  7	[  0]	TGETS	  2	0	4	; slot2 = slot0.rarity
		  8	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[<unknown table>.rarity]
		  9	[  0]	ISF  	   		1	; if not slot1
		 10	[  0]	JMP  	  2		3	; 	goto 14
		 11	[  0]	TGETS	  2	1	3	; slot2 = slot1.label
		 12	[  0]	TGETS	  3	1	2	; slot3 = slot1.color
		 13	[  0]	RET  	  2		3	; return <unknown table>.label, <unknown table>.color
		 14	[  0]	ISFC 	  2		0	; slot2 = slot0; if not slot0
		 15	[  0]	JMP  	  2		4	; 	goto 20
		 16	[  0]	TGETS	  2	0	4	; slot2 = slot0.rarity
		 17	[  0]	IST  	   		2	; if <unknown table>.rarity
		 18	[  0]	JMP  	  3		1	; 	goto 20
		 19	[  0]	KSTR 	  2		1	; slot2 = ""
		 20	[  0]	TDUP 	  3		0	; slot3 = copy table#k0
		 21	[  0]	RET  	  2		3	; return slot2, slot3
	118	[  0]	TSETS	 14	2	198	; slot2.getRarity = slot14
	119	[  0]	FNEW 	 14		195	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  1		1	; slot1 = _env["ipairs"]
		  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  4	[  0]	TGETS	  3	3	0	; slot3 = uv0"unknown".active
		  5	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		  6	[  0]	JMP  	  4		1	; 	goto 8
		  7	[  0]	TSETV	  5	0	4	; slot0[slot4] = slot5
		  8	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".active; slot4, slot5 = slot1(slot2, uv0"unknown".active)
		  9	[  0]	ITERL	  4		-3	; uv0"unknown".active = slot4; if slot4 != nil goto 7
		 10	[  0]	RET1 	  0		2	; return slot0
	120	[  0]	TSETS	 14	2	196	; slot2.getActive = slot14
	121	[  0]	FNEW 	 14		194	; N/A:0-0: 3 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		11	; slot3 = _env["type"]
		  2	[  0]	MOV  	  5		0	; slot5 = slot0
		  3	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		  4	[  0]	ISEQS	  3		10	; if type == "nil"
		  5	[  0]	JMP  	  4		4	; 	goto 10
		  6	[  0]	ISEQS	  3		9	; if type == "boolean"
		  7	[  0]	JMP  	  4		2	; 	goto 10
		  8	[  0]	ISNES	  3		8	; if type ~= "string"
		  9	[  0]	JMP  	  4		1	; 	goto 11
		 10	[  0]	RET1 	  0		2	; return slot0
		 11	[  0]	ISNES	  3		7	; if type ~= "number"
		 12	[  0]	JMP  	  4		14	; 	goto 27
		 13	[  0]	ISNEV	  0		0	; if slot0 ~= slot0
		 14	[  0]	JMP  	  4		9	; 	goto 24
		 15	[  0]	GGET 	  4		6	; slot4 = _env["math"]
		 16	[  0]	TGETS	  4	4	5	; slot4 = math.huge
		 17	[  0]	ISEQV	  0		4	; if slot0 == math.huge
		 18	[  0]	JMP  	  4		5	; 	goto 24
		 19	[  0]	GGET 	  4		6	; slot4 = _env["math"]
		 20	[  0]	TGETS	  4	4	5	; slot4 = math.huge
		 21	[  0]	UNM  	  4		4	; slot4 = -math.huge
		 22	[  0]	ISNEV	  0		4	; if slot0 ~= slot4
		 23	[  0]	JMP  	  4		2	; 	goto 26
		 24	[  0]	KPRI 	  4		0	; slot4 = nil
		 25	[  0]	RET1 	  4		2	; return slot4
		 26	[  0]	RET1 	  0		2	; return slot0
		 27	[  0]	ISNES	  3		4	; if type ~= "table"
		 28	[  0]	JMP  	  4		6	; 	goto 35
		 29	[  0]	KSHORT	  4		16	; slot4 = 16
		 30	[  0]	ISLT 	  4		2	; if slot4 < slot2
		 31	[  0]	JMP  	  4		3	; 	goto 35
		 32	[  0]	TGETV	  4	1	0	; slot4 = slot1[slot0]
		 33	[  0]	ISF  	   		4	; if not slot4
		 34	[  0]	JMP  	  5		2	; 	goto 37
		 35	[  0]	KPRI 	  4		0	; slot4 = nil
		 36	[  0]	RET1 	  4		2	; return slot4
		 37	[  0]	KPRI 	  4		2	; slot4 = true
		 38	[  0]	TSETV	  4	1	0	; slot1[slot0] = slot4
		 39	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 40	[  0]	GGET 	  5		3	; slot5 = _env["pairs"]
		 41	[  0]	MOV  	  7		0	; slot7 = slot0
		 42	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
		 43	[  0]	ISNEXT	  8		31	; Verify ITERN at 75; goto 75
		 44	[  0]	GGET 	 10		11	; slot10 = _env["type"]
		 45	[  0]	MOV  	 12		8	; slot12 = slot8
		 46	[  0]	CALL 	 10	2	2	; slot10 = type(slot11)
		 47	[  0]	ISEQS	 10		8	; if type == "string"
		 48	[  0]	JMP  	 10		5	; 	goto 54
		 49	[  0]	GGET 	 10		11	; slot10 = _env["type"]
		 50	[  0]	MOV  	 12		8	; slot12 = slot8
		 51	[  0]	CALL 	 10	2	2	; slot10 = type(slot11)
		 52	[  0]	ISNES	 10		7	; if type ~= "number"
		 53	[  0]	JMP  	 10		21	; 	goto 75
		 54	[  0]	ISEQS	  8		2	; if slot8 == "def"
		 55	[  0]	JMP  	 10		19	; 	goto 75
		 56	[  0]	GGET 	 10		11	; slot10 = _env["type"]
		 57	[  0]	MOV  	 12		8	; slot12 = slot8
		 58	[  0]	CALL 	 10	2	2	; slot10 = type(slot11)
		 59	[  0]	ISNES	 10		8	; if type ~= "string"
		 60	[  0]	JMP  	 10		6	; 	goto 67
		 61	[  0]	MOV  	 12		8	; slot12 = slot8
		 62	[  0]	TGETS	 10	8	1	; slot10 = slot8.match
		 63	[  0]	KSTR 	 13		0	; slot13 = "^_ui"
		 64	[  0]	CALL 	 10	2	3	; slot10 = <unknown table>.match(slot11, slot12)
		 65	[  0]	IST  	   		10	; if <unknown table>.match
		 66	[  0]	JMP  	 10		8	; 	goto 75
		 67	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 68	[  0]	MOV  	 12		9	; slot12 = slot9
		 69	[  0]	MOV  	 13		1	; slot13 = slot1
		 70	[  0]	ADDVN	 14	2	0	; slot14 = slot2 + 1
		 71	[  0]	CALL 	 10	2	4	; slot10 = uv0"unknown"(slot11, slot12, slot13)
		 72	[  0]	ISEQP	 10		0	; if uv0"unknown" == nil
		 73	[  0]	JMP  	 11		1	; 	goto 75
		 74	[  0]	TSETV	 10	4	8	; slot4[slot8] = uv0"unknown"
		 75	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, slot7; slot8, slot9 = pairs(slot6, slot7)
		 76	[  0]	ITERL	  8		-33	; slot7 = slot8; if slot8 != nil goto 44
		 77	[  0]	KPRI 	  5		0	; slot5 = nil
		 78	[  0]	TSETV	  5	1	0	; slot1[slot0] = slot5
		 79	[  0]	RET1 	  4		2	; return slot4
	122	[  0]	FNEW 	 15		192	; N/A:0-0: 0 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  1		8	; slot1 = _env["ipairs"]
		  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  4	[  0]	TGETS	  3	3	7	; slot3 = uv0"unknown".active
		  5	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		  6	[  0]	JMP  	  4		39	; 	goto 46
		  7	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		  8	[  0]	MOV  	  8		5	; slot8 = slot5
		  9	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 10	[  0]	KSHORT	 10		0	; slot10 = 0
		 11	[  0]	CALL 	  6	2	4	; slot6 = uv1"unknown"(slot7, slot8, slot9)
		 12	[  0]	IST  	   		6	; if uv1"unknown"
		 13	[  0]	JMP  	  7		1	; 	goto 15
		 14	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 15	[  0]	TGETS	  7	5	6	; slot7 = slot5.key
		 16	[  0]	ISNES	  7		5	; if <unknown table>.key ~= "X2"
		 17	[  0]	JMP  	  7		6	; 	goto 24
		 18	[  0]	KPRI 	  7		0	; slot7 = nil
		 19	[  0]	TSETS	  7	6	4	; slot6._x2Armed = slot7
		 20	[  0]	KPRI 	  7		0	; slot7 = nil
		 21	[  0]	TSETS	  7	6	3	; slot6._x2BetPaid = slot7
		 22	[  0]	KPRI 	  7		0	; slot7 = nil
		 23	[  0]	TSETS	  7	6	2	; slot6._x2ManualActivation = slot7
		 24	[  0]	TGETS	  7	5	0	; slot7 = slot5.def
		 25	[  0]	ISF  	   		7	; if not <unknown table>.def
		 26	[  0]	JMP  	  8		4	; 	goto 31
		 27	[  0]	TGETS	  7	5	0	; slot7 = slot5.def
		 28	[  0]	TGETS	  7	7	1	; slot7 = <unknown table>.def.id
		 29	[  0]	IST  	   		7	; if <unknown table>.def.id
		 30	[  0]	JMP  	  8		1	; 	goto 32
		 31	[  0]	TGETS	  7	6	1	; slot7 = slot6.id
		 32	[  0]	TSETS	  7	6	1	; slot6.id = <unknown table>.id
		 33	[  0]	TGETS	  7	5	6	; slot7 = slot5.key
		 34	[  0]	IST  	   		7	; if <unknown table>.key
		 35	[  0]	JMP  	  8		8	; 	goto 44
		 36	[  0]	TGETS	  7	5	0	; slot7 = slot5.def
		 37	[  0]	ISF  	   		7	; if not <unknown table>.def
		 38	[  0]	JMP  	  8		4	; 	goto 43
		 39	[  0]	TGETS	  7	5	0	; slot7 = slot5.def
		 40	[  0]	TGETS	  7	7	6	; slot7 = <unknown table>.def.key
		 41	[  0]	IST  	   		7	; if <unknown table>.def.key
		 42	[  0]	JMP  	  8		1	; 	goto 44
		 43	[  0]	TGETS	  7	6	6	; slot7 = slot6.key
		 44	[  0]	TSETS	  7	6	6	; slot6.key = <unknown table>.key
		 45	[  0]	TSETV	  6	0	4	; slot0[slot4] = slot6
		 46	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown".active; slot4, slot5 = slot1(slot2, uv0"unknown".active)
		 47	[  0]	ITERL	  4		-41	; uv0"unknown".active = slot4; if slot4 != nil goto 7
		 48	[  0]	RET1 	  0		2	; return slot0
	123	[  0]	TSETS	 15	2	193	; slot2.exportState = slot15
	124	[  0]	FNEW 	 15		190	; N/A:0-0: 1 args, 3 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	22	; slot1 = uv0"unknown".reset
		  3	[  0]	CALL 	  1	1	1	;  = uv0"unknown".reset()
		  4	[  0]	GGET 	  1		21	; slot1 = _env["type"]
		  5	[  0]	MOV  	  3		0	; slot3 = slot0
		  6	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  7	[  0]	ISEQS	  1		20	; if slot1 == "table"
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	RET1 	  1		2	; return slot1
		 11	[  0]	GGET 	  1		19	; slot1 = _env["ipairs"]
		 12	[  0]	MOV  	  3		0	; slot3 = slot0
		 13	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		 14	[  0]	JMP  	  4		102	; 	goto 117
		 15	[  0]	GGET 	  6		21	; slot6 = _env["type"]
		 16	[  0]	MOV  	  8		5	; slot8 = slot5
		 17	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		 18	[  0]	ISNES	  6		20	; if type ~= "table"
		 19	[  0]	JMP  	  6		97	; 	goto 117
		 20	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 21	[  0]	TGETS	  6	6	18	; slot6 = uv0"unknown".getById
		 22	[  0]	TGETS	  8	5	17	; slot8 = slot5.id
		 23	[  0]	IST  	   		8	; if <unknown table>.id
		 24	[  0]	JMP  	  9		1	; 	goto 26
		 25	[  0]	TGETS	  8	5	16	; slot8 = slot5.key
		 26	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown".getById(slot7)
		 27	[  0]	ISF  	   		6	; if not uv0"unknown".getById
		 28	[  0]	JMP  	  7		88	; 	goto 117
		 29	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 30	[  0]	MOV  	  9		5	; slot9 = slot5
		 31	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		 32	[  0]	KSHORT	 11		0	; slot11 = 0
		 33	[  0]	CALL 	  7	2	4	; slot7 = uv1"unknown"(<unknown table>.key, slot9, slot10)
		 34	[  0]	IST  	   		7	; if uv1"unknown"
		 35	[  0]	JMP  	  8		1	; 	goto 37
		 36	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 37	[  0]	KPRI 	  8		0	; slot8 = nil
		 38	[  0]	TSETS	  8	7	17	; slot7.id = slot8
		 39	[  0]	TSETS	  6	7	15	; slot7.def = uv0"unknown".getById
		 40	[  0]	TGETS	  8	6	16	; slot8 = uv0"unknown".getById.key
		 41	[  0]	IST  	   		8	; if uv0"unknown".getById.key
		 42	[  0]	JMP  	  9		1	; 	goto 44
		 43	[  0]	TGETS	  8	6	17	; slot8 = uv0"unknown".getById.id
		 44	[  0]	TSETS	  8	7	16	; slot7.key = uv0"unknown".getById.id
		 45	[  0]	GGET 	  8		13	; slot8 = _env["math"]
		 46	[  0]	TGETS	  8	8	12	; slot8 = math.max
		 47	[  0]	KSHORT	 10		0	; slot10 = 0
		 48	[  0]	GGET 	 11		13	; slot11 = _env["math"]
		 49	[  0]	TGETS	 11	11	11	; slot11 = math.floor
		 50	[  0]	GGET 	 13		10	; slot13 = _env["tonumber"]
		 51	[  0]	TGETS	 15	7	14	; slot15 = slot7.stacks
		 52	[  0]	IST  	   		15	; if <unknown table>.stacks
		 53	[  0]	JMP  	 16		1	; 	goto 55
		 54	[  0]	KSHORT	 15		0	; slot15 = 0
		 55	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 56	[  0]	IST  	   		13	; if tonumber
		 57	[  0]	JMP  	 14		1	; 	goto 59
		 58	[  0]	KSHORT	 13		0	; slot13 = 0
		 59	[  0]	CALL 	 11	0	2	; MULTRES = math.floor(slot12)
		 60	[  0]	CALLM	  8	2	1	; slot8 = math.max(slot9, ...MULTRES)
		 61	[  0]	TSETS	  8	7	14	; slot7.stacks = math.max
		 62	[  0]	GGET 	  8		13	; slot8 = _env["math"]
		 63	[  0]	TGETS	  8	8	12	; slot8 = math.max
		 64	[  0]	KSHORT	 10		1	; slot10 = 1
		 65	[  0]	GGET 	 11		13	; slot11 = _env["math"]
		 66	[  0]	TGETS	 11	11	11	; slot11 = math.floor
		 67	[  0]	GGET 	 13		10	; slot13 = _env["tonumber"]
		 68	[  0]	TGETS	 15	7	9	; slot15 = slot7.maxStacks
		 69	[  0]	IST  	   		15	; if <unknown table>.maxStacks
		 70	[  0]	JMP  	 16		1	; 	goto 72
		 71	[  0]	KSHORT	 15		3	; slot15 = 3
		 72	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 73	[  0]	IST  	   		13	; if tonumber
		 74	[  0]	JMP  	 14		1	; 	goto 76
		 75	[  0]	KSHORT	 13		3	; slot13 = 3
		 76	[  0]	CALL 	 11	0	2	; MULTRES = math.floor(slot12)
		 77	[  0]	CALLM	  8	2	1	; slot8 = math.max(slot9, ...MULTRES)
		 78	[  0]	TSETS	  8	7	9	; slot7.maxStacks = math.max
		 79	[  0]	GGET 	  8		13	; slot8 = _env["math"]
		 80	[  0]	TGETS	  8	8	12	; slot8 = math.max
		 81	[  0]	KSHORT	 10		1	; slot10 = 1
		 82	[  0]	GGET 	 11		13	; slot11 = _env["math"]
		 83	[  0]	TGETS	 11	11	11	; slot11 = math.floor
		 84	[  0]	GGET 	 13		10	; slot13 = _env["tonumber"]
		 85	[  0]	TGETS	 15	7	8	; slot15 = slot7.startWave
		 86	[  0]	IST  	   		15	; if <unknown table>.startWave
		 87	[  0]	JMP  	 16		1	; 	goto 89
		 88	[  0]	KSHORT	 15		1	; slot15 = 1
		 89	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 90	[  0]	IST  	   		13	; if tonumber
		 91	[  0]	JMP  	 14		1	; 	goto 93
		 92	[  0]	KSHORT	 13		1	; slot13 = 1
		 93	[  0]	CALL 	 11	0	2	; MULTRES = math.floor(slot12)
		 94	[  0]	CALLM	  8	2	1	; slot8 = math.max(slot9, ...MULTRES)
		 95	[  0]	TSETS	  8	7	8	; slot7.startWave = math.max
		 96	[  0]	TGETS	  8	7	7	; slot8 = slot7.expiryWave
		 97	[  0]	ISNEP	  8		0	; if <unknown table>.expiryWave ~= nil
		 98	[  0]	JMP  	  8		3	; 	goto 102
		 99	[  0]	GGET 	  8		13	; slot8 = _env["math"]
		100	[  0]	TGETS	  8	8	6	; slot8 = math.huge
		101	[  0]	TSETS	  8	7	7	; slot7.expiryWave = math.huge
		102	[  0]	TGETS	  8	7	16	; slot8 = slot7.key
		103	[  0]	ISNES	  8		5	; if <unknown table>.key ~= "X2"
		104	[  0]	JMP  	  8		6	; 	goto 111
		105	[  0]	KPRI 	  8		0	; slot8 = nil
		106	[  0]	TSETS	  8	7	4	; slot7._x2Armed = slot8
		107	[  0]	KPRI 	  8		0	; slot8 = nil
		108	[  0]	TSETS	  8	7	3	; slot7._x2BetPaid = slot8
		109	[  0]	KPRI 	  8		0	; slot8 = nil
		110	[  0]	TSETS	  8	7	2	; slot7._x2ManualActivation = slot8
		111	[  0]	GGET 	  8		20	; slot8 = _env["table"]
		112	[  0]	TGETS	  8	8	1	; slot8 = table.insert
		113	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		114	[  0]	TGETS	 10	10	0	; slot10 = uv2"unknown".active
		115	[  0]	MOV  	 11		7	; slot11 = slot7
		116	[  0]	CALL 	  8	1	3	;  = table.insert(slot9, uv2"unknown".active)
		117	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, slot3; slot4, slot5 = slot1(slot2, slot3)
		118	[  0]	ITERL	  4		-104	; slot3 = slot4; if slot4 != nil goto 15
		119	[  0]	KPRI 	  1		2	; slot1 = true
		120	[  0]	RET1 	  1		2	; return slot1
	125	[  0]	TSETS	 15	2	191	; slot2.importState = slot15
	126	[  0]	FNEW 	 15		188	; N/A:0-0: 1 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			#1: normal,
			#2: advanced,
			#3: rare,
			#4: legendary,
			#5: prism,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	ISF  	   		1	; if not uv0"unknown"
		  3	[  0]	JMP  	  2		4	; 	goto 8
		  4	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  5	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown".unitGrades
		  6	[  0]	IST  	   		1	; if uv0"unknown".unitGrades
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KPRI 	  1		0	; slot1 = nil
		  9	[  0]	ISF  	   		1	; if not slot1
		 10	[  0]	JMP  	  2		3	; 	goto 14
		 11	[  0]	TGETS	  2	1	5	; slot2 = slot1.order
		 12	[  0]	IST  	   		2	; if <unknown table>.order
		 13	[  0]	JMP  	  3		1	; 	goto 15
		 14	[  0]	TDUP 	  2		4	; slot2 = copy table#k4
		 15	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		 16	[  0]	JMP  	  3		6	; 	goto 23
		 17	[  0]	ISF  	   		1	; if not slot1
		 18	[  0]	JMP  	  3		3	; 	goto 22
		 19	[  0]	TGETS	  3	1	3	; slot3 = slot1.probabilities
		 20	[  0]	IST  	   		3	; if <unknown table>.probabilities
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 23	[  0]	TGETB	  4	2	1	; slot4 = slot2[1]
		 24	[  0]	IST  	   		4	; if slot4
		 25	[  0]	JMP  	  5		1	; 	goto 27
		 26	[  0]	KSTR 	  4		2	; slot4 = "normal"
		 27	[  0]	GGET 	  5		1	; slot5 = _env["ipairs"]
		 28	[  0]	MOV  	  7		2	; slot7 = slot2
		 29	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 30	[  0]	JMP  	  8		13	; 	goto 44
		 31	[  0]	GGET 	 10		0	; slot10 = _env["tonumber"]
		 32	[  0]	TGETV	 12	3	9	; slot12 = slot3[slot9]
		 33	[  0]	IST  	   		12	; if slot12
		 34	[  0]	JMP  	 13		1	; 	goto 36
		 35	[  0]	KSHORT	 12		0	; slot12 = 0
		 36	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 37	[  0]	IST  	   		10	; if tonumber
		 38	[  0]	JMP  	 11		1	; 	goto 40
		 39	[  0]	KSHORT	 10		0	; slot10 = 0
		 40	[  0]	KSHORT	 11		0	; slot11 = 0
		 41	[  0]	ISGE 	 11		10	; if slot11 >= slot10
		 42	[  0]	JMP  	 10		1	; 	goto 44
		 43	[  0]	MOV  	  4		9	; slot4 = slot9
		 44	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 45	[  0]	ITERL	  8		-15	; slot7 = slot8; if slot8 != nil goto 31
		 46	[  0]	RET1 	  4		2	; return slot4
	127	[  0]	TSETS	 15	2	189	; slot2.getGoldenLeverMaxGrade = slot15
	128	[  0]	FNEW 	 15		186	; N/A:0-0: 3 args, 1 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: normal,
			#2: advanced,
			#3: rare,
			#4: legendary,
			#5: prism,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	ISF  	   		3	; if not uv0"unknown"
		  3	[  0]	JMP  	  4		4	; 	goto 8
		  4	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  5	[  0]	TGETS	  3	3	9	; slot3 = uv0"unknown".unitGrades
		  6	[  0]	IST  	   		3	; if uv0"unknown".unitGrades
		  7	[  0]	JMP  	  4		1	; 	goto 9
		  8	[  0]	KPRI 	  3		0	; slot3 = nil
		  9	[  0]	ISF  	   		3	; if not slot3
		 10	[  0]	JMP  	  4		3	; 	goto 14
		 11	[  0]	TGETS	  4	3	8	; slot4 = slot3.order
		 12	[  0]	IST  	   		4	; if <unknown table>.order
		 13	[  0]	JMP  	  5		1	; 	goto 15
		 14	[  0]	TDUP 	  4		7	; slot4 = copy table#k7
		 15	[  0]	KSHORT	  5		1	; slot5 = 1
		 16	[  0]	KSHORT	  6		1	; slot6 = 1
		 17	[  0]	GGET 	  7		6	; slot7 = _env["ipairs"]
		 18	[  0]	MOV  	  9		4	; slot9 = slot4
		 19	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 20	[  0]	JMP  	 10		6	; 	goto 27
		 21	[  0]	ISNEV	 11		0	; if slot11 ~= slot0
		 22	[  0]	JMP  	 12		1	; 	goto 24
		 23	[  0]	MOV  	  5		10	; slot5 = slot10
		 24	[  0]	ISNEV	 11		1	; if slot11 ~= slot1
		 25	[  0]	JMP  	 12		1	; 	goto 27
		 26	[  0]	MOV  	  6		10	; slot6 = slot10
		 27	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 28	[  0]	ITERL	 10		-8	; slot9 = slot10; if slot10 != nil goto 21
		 29	[  0]	ISGT 	  6		5	; if slot6 > slot5
		 30	[  0]	JMP  	  7		7	; 	goto 38
		 31	[  0]	TGETV	  7	4	5	; slot7 = slot4[slot5]
		 32	[  0]	IST  	   		7	; if slot7
		 33	[  0]	JMP  	  8		3	; 	goto 37
		 34	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		 35	[  0]	JMP  	  7		1	; 	goto 37
		 36	[  0]	KSTR 	  7		5	; slot7 = "normal"
		 37	[  0]	RET1 	  7		2	; return slot7
		 38	[  0]	GGET 	  7		4	; slot7 = _env["math"]
		 39	[  0]	TGETS	  7	7	3	; slot7 = math.min
		 40	[  0]	MOV  	  9		6	; slot9 = slot6
		 41	[  0]	GGET 	 10		4	; slot10 = _env["math"]
		 42	[  0]	TGETS	 10	10	2	; slot10 = math.max
		 43	[  0]	KSHORT	 12		0	; slot12 = 0
		 44	[  0]	GGET 	 13		4	; slot13 = _env["math"]
		 45	[  0]	TGETS	 13	13	1	; slot13 = math.floor
		 46	[  0]	GGET 	 15		0	; slot15 = _env["tonumber"]
		 47	[  0]	ISTC 	 17		2	; slot17 = slot2; if slot2
		 48	[  0]	JMP  	 17		1	; 	goto 50
		 49	[  0]	KSHORT	 17		1	; slot17 = 1
		 50	[  0]	CALL 	 15	2	2	; slot15 = tonumber(slot16)
		 51	[  0]	IST  	   		15	; if tonumber
		 52	[  0]	JMP  	 16		1	; 	goto 54
		 53	[  0]	KSHORT	 15		1	; slot15 = 1
		 54	[  0]	CALL 	 13	0	2	; MULTRES = math.floor(slot14)
		 55	[  0]	CALLM	 10	2	1	; slot10 = math.max(slot11, ...MULTRES)
		 56	[  0]	ADDVV	 10	5	10	; slot10 = slot5 + math.max
		 57	[  0]	CALL 	  7	2	3	; slot7 = math.min(slot8, slot9)
		 58	[  0]	TGETV	  8	4	7	; slot8 = slot4[math.min]
		 59	[  0]	IST  	   		8	; if slot8
		 60	[  0]	JMP  	  9		3	; 	goto 64
		 61	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		 62	[  0]	JMP  	  8		1	; 	goto 64
		 63	[  0]	KSTR 	  8		5	; slot8 = "normal"
		 64	[  0]	RET1 	  8		2	; return slot8
	129	[  0]	TSETS	 15	2	187	; slot2.upgradeGoldenLeverGrade = slot15
	130	[  0]	FNEW 	 15		184	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	GGET 	  4		0	; slot4 = _env["tonumber"]
		  4	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  5	[  0]	JMP  	  6		1	; 	goto 7
		  6	[  0]	KSHORT	  6		0	; slot6 = 0
		  7	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		  8	[  0]	IST  	   		4	; if tonumber
		  9	[  0]	JMP  	  5		1	; 	goto 11
		 10	[  0]	KSHORT	  4		0	; slot4 = 0
		 11	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv0"unknown"(slot3)
		 12	[  0]	JMP  	  5		3	; 	goto 16
		 13	[  0]	LEN  	  6		1	; slot6 = #slot1
		 14	[  0]	ADDVN	  6	6	0	; slot6 = slot6 + 1
		 15	[  0]	TSETV	  5	1	6	; slot1[slot6] = slot5
		 16	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 17	[  0]	ITERL	  5		-5	; slot4 = slot5; if slot5 != nil goto 13
		 18	[  0]	RET1 	  1		2	; return slot1
	131	[  0]	TSETS	 15	2	185	; slot2.getRuntimeActive = slot15
	132	[  0]	FNEW 	 15		183	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  6	[  0]	GGET 	  2		0	; slot2 = _env["pairs"]
		  7	[  0]	MOV  	  4		0	; slot4 = slot0
		  8	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		  9	[  0]	ISNEXT	  5		1	; Verify ITERN at 11; goto 11
		 10	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
		 11	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 12	[  0]	ITERL	  5		-3	; slot4 = slot5; if slot5 != nil goto 10
		 13	[  0]	RET1 	  1		2	; return slot1
	133	[  0]	FNEW 	 16		182	; N/A:0-0: 3 args, 0 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		7	; 	goto 10
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  3		5	; 	goto 10
		  5	[  0]	ISF  	   		2	; if not slot2
		  6	[  0]	JMP  	  3		3	; 	goto 10
		  7	[  0]	KSHORT	  3		0	; slot3 = 0
		  8	[  0]	ISGT 	  2		3	; if slot2 > slot3
		  9	[  0]	JMP  	  3		1	; 	goto 11
		 10	[  0]	RET1 	  0		2	; return slot0
		 11	[  0]	KSHORT	  3		0	; slot3 = 0
		 12	[  0]	GGET 	  4		4	; slot4 = _env["pairs"]
		 13	[  0]	MOV  	  6		0	; slot6 = slot0
		 14	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = pairs(slot5)
		 15	[  0]	ISNEXT	  7		9	; Verify ITERN at 25; goto 25
		 16	[  0]	GGET 	  9		3	; slot9 = _env["tonumber"]
		 17	[  0]	ISTC 	 11		8	; slot11 = slot8; if slot8
		 18	[  0]	JMP  	 11		1	; 	goto 20
		 19	[  0]	KSHORT	 11		0	; slot11 = 0
		 20	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 21	[  0]	IST  	   		9	; if tonumber
		 22	[  0]	JMP  	 10		1	; 	goto 24
		 23	[  0]	KSHORT	  9		0	; slot9 = 0
		 24	[  0]	ADDVV	  3	3	9	; slot3 = slot3 + slot9
		 25	[  0]	ITERN	  7	3	3	; slot7, slot8, slot9 = pairs, slot5, slot6; slot7, slot8 = pairs(slot5, slot6)
		 26	[  0]	ITERL	  7		-11	; slot6 = slot7; if slot7 != nil goto 16
		 27	[  0]	KNUM 	  4		0	; slot4 = 1e-09
		 28	[  0]	ISGT 	  3		4	; if slot3 > slot4
		 29	[  0]	JMP  	  4		1	; 	goto 31
		 30	[  0]	RET1 	  0		2	; return slot0
		 31	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 32	[  0]	GGET 	  5		4	; slot5 = _env["pairs"]
		 33	[  0]	MOV  	  7		0	; slot7 = slot0
		 34	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
		 35	[  0]	ISNEXT	  8		10	; Verify ITERN at 46; goto 46
		 36	[  0]	GGET 	 10		3	; slot10 = _env["tonumber"]
		 37	[  0]	ISTC 	 12		9	; slot12 = slot9; if slot9
		 38	[  0]	JMP  	 12		1	; 	goto 40
		 39	[  0]	KSHORT	 12		0	; slot12 = 0
		 40	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 41	[  0]	IST  	   		10	; if tonumber
		 42	[  0]	JMP  	 11		1	; 	goto 44
		 43	[  0]	KSHORT	 10		0	; slot10 = 0
		 44	[  0]	DIVVV	 10	10	3	; slot10 = slot10 / slot3
		 45	[  0]	TSETV	 10	4	8	; slot4[slot8] = slot10
		 46	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, slot7; slot8, slot9 = pairs(slot6, slot7)
		 47	[  0]	ITERL	  8		-12	; slot7 = slot8; if slot8 != nil goto 36
		 48	[  0]	TGETV	  5	4	1	; slot5 = slot4[slot1]
		 49	[  0]	IST  	   		5	; if slot5
		 50	[  0]	JMP  	  6		1	; 	goto 52
		 51	[  0]	KSHORT	  5		0	; slot5 = 0
		 52	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 53	[  0]	TGETS	  6	6	1	; slot6 = math.max
		 54	[  0]	KSHORT	  8		0	; slot8 = 0
		 55	[  0]	GGET 	  9		2	; slot9 = _env["math"]
		 56	[  0]	TGETS	  9	9	0	; slot9 = math.min
		 57	[  0]	KSHORT	 11		1	; slot11 = 1
		 58	[  0]	ADDVV	 12	5	2	; slot12 = slot5 + slot2
		 59	[  0]	CALL 	  9	0	3	; MULTRES = math.min(slot10, slot11)
		 60	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
		 61	[  0]	SUBNV	  7	5	1	; slot7 = 1 - slot5
		 62	[  0]	KNUM 	  8		0	; slot8 = 1e-09
		 63	[  0]	ISGT 	  7		8	; if slot7 > slot8
		 64	[  0]	JMP  	  8		1	; 	goto 66
		 65	[  0]	KSHORT	  7		1	; slot7 = 1
		 66	[  0]	SUBNV	  8	6	1	; slot8 = 1 - math.max
		 67	[  0]	DIVVV	  8	8	7	; slot8 = slot8 / slot7
		 68	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 69	[  0]	GGET 	 10		4	; slot10 = _env["pairs"]
		 70	[  0]	MOV  	 12		4	; slot12 = slot4
		 71	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = pairs(slot11)
		 72	[  0]	ISNEXT	 13		6	; Verify ITERN at 79; goto 79
		 73	[  0]	ISNEV	 13		1	; if slot13 ~= slot1
		 74	[  0]	JMP  	 15		2	; 	goto 77
		 75	[  0]	TSETV	  6	9	13	; slot9[slot13] = math.max
		 76	[  0]	JMP  	 15		2	; 	goto 79
		 77	[  0]	MULVV	 15	14	8	; slot15 = slot14 * slot8
		 78	[  0]	TSETV	 15	9	13	; slot9[slot13] = slot15
		 79	[  0]	ITERN	 13	3	3	; slot13, slot14, slot15 = pairs, slot11, slot12; slot13, slot14 = pairs(slot11, slot12)
		 80	[  0]	ITERL	 13		-8	; slot12 = slot13; if slot13 != nil goto 73
		 81	[  0]	RET1 	  9		2	; return slot9
	134	[  0]	TDUP 	 17		181	; slot17 = copy table#k181
	135	[  0]	FNEW 	 18		180	; N/A:0-0: 2 args, 1 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		4	; 	goto 7
		  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  4	[  0]	TGETV	  2	2	1	; slot2 = uv0"unknown"[slot1]
		  5	[  0]	IST  	   		2	; if slot2
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	RET1 	  0		2	; return slot0
		  8	[  0]	KSHORT	  2		0	; slot2 = 0
		  9	[  0]	KSHORT	  3		0	; slot3 = 0
		 10	[  0]	GGET 	  4		3	; slot4 = _env["pairs"]
		 11	[  0]	MOV  	  6		0	; slot6 = slot0
		 12	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = pairs(slot5)
		 13	[  0]	ISNEXT	  7		16	; Verify ITERN at 30; goto 30
		 14	[  0]	GGET 	  9		2	; slot9 = _env["math"]
		 15	[  0]	TGETS	  9	9	1	; slot9 = math.max
		 16	[  0]	KSHORT	 11		0	; slot11 = 0
		 17	[  0]	GGET 	 12		0	; slot12 = _env["tonumber"]
		 18	[  0]	ISTC 	 14		8	; slot14 = slot8; if slot8
		 19	[  0]	JMP  	 14		1	; 	goto 21
		 20	[  0]	KSHORT	 14		0	; slot14 = 0
		 21	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 22	[  0]	IST  	   		12	; if tonumber
		 23	[  0]	JMP  	 13		1	; 	goto 25
		 24	[  0]	KSHORT	 12		0	; slot12 = 0
		 25	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 26	[  0]	ADDVV	  2	2	9	; slot2 = slot2 + math.max
		 27	[  0]	ISEQV	  7		1	; if slot7 == slot1
		 28	[  0]	JMP  	 10		1	; 	goto 30
		 29	[  0]	ADDVV	  3	3	9	; slot3 = slot3 + math.max
		 30	[  0]	ITERN	  7	3	3	; slot7, slot8, slot9 = pairs, slot5, slot6; slot7, slot8 = pairs(slot5, slot6)
		 31	[  0]	ITERL	  7		-18	; slot6 = slot7; if slot7 != nil goto 14
		 32	[  0]	KNUM 	  4		0	; slot4 = 1e-09
		 33	[  0]	ISLE 	  2		4	; if slot2 <= slot4
		 34	[  0]	JMP  	  4		3	; 	goto 38
		 35	[  0]	KNUM 	  4		0	; slot4 = 1e-09
		 36	[  0]	ISGT 	  3		4	; if slot3 > slot4
		 37	[  0]	JMP  	  4		1	; 	goto 39
		 38	[  0]	RET1 	  0		2	; return slot0
		 39	[  0]	DIVVV	  4	2	3	; slot4 = slot2 / slot3
		 40	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 41	[  0]	GGET 	  6		3	; slot6 = _env["pairs"]
		 42	[  0]	MOV  	  8		0	; slot8 = slot0
		 43	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = pairs(slot7)
		 44	[  0]	ISNEXT	  9		19	; Verify ITERN at 64; goto 64
		 45	[  0]	ISNEV	  9		1	; if slot9 ~= slot1
		 46	[  0]	JMP  	 11		3	; 	goto 50
		 47	[  0]	KSHORT	 11		0	; slot11 = 0
		 48	[  0]	TSETV	 11	5	9	; slot5[slot9] = slot11
		 49	[  0]	JMP  	 11		14	; 	goto 64
		 50	[  0]	GGET 	 11		2	; slot11 = _env["math"]
		 51	[  0]	TGETS	 11	11	1	; slot11 = math.max
		 52	[  0]	KSHORT	 13		0	; slot13 = 0
		 53	[  0]	GGET 	 14		0	; slot14 = _env["tonumber"]
		 54	[  0]	ISTC 	 16		10	; slot16 = slot10; if slot10
		 55	[  0]	JMP  	 16		1	; 	goto 57
		 56	[  0]	KSHORT	 16		0	; slot16 = 0
		 57	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		 58	[  0]	IST  	   		14	; if tonumber
		 59	[  0]	JMP  	 15		1	; 	goto 61
		 60	[  0]	KSHORT	 14		0	; slot14 = 0
		 61	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		 62	[  0]	MULVV	 11	11	4	; slot11 = math.max * slot4
		 63	[  0]	TSETV	 11	5	9	; slot5[slot9] = slot11
		 64	[  0]	ITERN	  9	3	3	; slot9, slot10, slot11 = pairs, slot7, slot8; slot9, slot10 = pairs(slot7, slot8)
		 65	[  0]	ITERL	  9		-21	; slot8 = slot9; if slot9 != nil goto 45
		 66	[  0]	RET1 	  5		2	; return slot5
	136	[  0]	FNEW 	 19		178	; N/A:0-0: 2 args, 7 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		14	; slot2 = _env["tonumber"]
		  2	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  3	[  0]	JMP  	  4		1	; 	goto 5
		  4	[  0]	KSHORT	  4		0	; slot4 = 0
		  5	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  6	[  0]	IST  	   		2	; if slot2
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	KSHORT	  2		0	; slot2 = 0
		  9	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 10	[  0]	MOV  	  5		2	; slot5 = slot2
		 11	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	TGETS	  3	3	13	; slot3 = uv1"unknown"._weightsApplied
		 14	[  0]	ISF  	   		3	; if not uv1"unknown"._weightsApplied
		 15	[  0]	JMP  	  4		4	; 	goto 20
		 16	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 17	[  0]	TGETS	  3	3	12	; slot3 = uv1"unknown"._baseSymbolWeights
		 18	[  0]	IST  	   		3	; if uv1"unknown"._baseSymbolWeights
		 19	[  0]	JMP  	  4		13	; 	goto 33
		 20	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 21	[  0]	ISF  	   		3	; if not uv2"unknown"
		 22	[  0]	JMP  	  4		9	; 	goto 32
		 23	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 24	[  0]	TGETS	  3	3	11	; slot3 = uv2"unknown".slot
		 25	[  0]	ISF  	   		3	; if not uv2"unknown".slot
		 26	[  0]	JMP  	  4		5	; 	goto 32
		 27	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 28	[  0]	TGETS	  3	3	11	; slot3 = uv2"unknown".slot
		 29	[  0]	TGETS	  3	3	10	; slot3 = uv2"unknown".slot.symbolWeights
		 30	[  0]	IST  	   		3	; if uv2"unknown".slot.symbolWeights
		 31	[  0]	JMP  	  4		1	; 	goto 33
		 32	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 33	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
		 34	[  0]	MOV  	  6		3	; slot6 = slot3
		 35	[  0]	CALL 	  4	2	2	; slot4 = uv3"unknown"(slot5)
		 36	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 37	[  0]	MOV  	  7		4	; slot7 = uv3"unknown"
		 38	[  0]	CALL 	  5	2	2	; slot5 = uv3"unknown"(slot6)
		 39	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 40	[  0]	FNEW 	  7		9	; N/A:0-0: 2 args, 4 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  2	[  0]	ISF  	   		2	; if not uv0"unknown"
			  3	[  0]	JMP  	  3		2	; 	goto 6
			  4	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
			  5	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
			  6	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
			  7	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
			  8	[  0]	MOV  	  6		0	; slot6 = slot0
			  9	[  0]	MOV  	  7		1	; slot7 = slot1
			 10	[  0]	CALL 	  3	2	4	; slot3 = uv1"unknown"(slot4, uv0"unknown", slot6)
			 11	[  0]	ISF  	   		3	; if not slot3
			 12	[  0]	JMP  	  4		9	; 	goto 22
			 13	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
			 14	[  0]	MOV  	  6		3	; slot6 = slot3
			 15	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(uv0"unknown")
			 16	[  0]	USETV	  0		4	; uv0"unknwon" = uv2"unknown"
			 17	[  0]	ISF  	   		0	; if not slot0
			 18	[  0]	JMP  	  4		3	; 	goto 22
			 19	[  0]	UGET 	  4		3	; slot4 = uv3"unknwon"
			 20	[  0]	KPRI 	  5		2	; slot5 = true
			 21	[  0]	TSETV	  5	4	0	; uv3"unknown"[slot0] = slot5
			 22	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 23	[  0]	ISF  	   		4	; if not uv0"unknown"
			 24	[  0]	JMP  	  5		2	; 	goto 27
			 25	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
			 26	[  0]	TGETV	  4	4	0	; slot4 = uv0"unknown"[slot0]
			 27	[  0]	ISNEV	  2		4	; if slot2 ~= slot4
			 28	[  0]	JMP  	  4		2	; 	goto 31
			 29	[  0]	KPRI 	  4		1	; slot4 = false
			 30	[  0]	JMP  	  5		1	; 	goto 32
			 31	[  0]	KPRI 	  4		2	; slot4 = true
			 32	[  0]	RET1 	  4		2	; return slot4
		 41	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
		 42	[  0]	MOV  	 10		2	; slot10 = slot2
		 43	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = uv5"unknown"(slot9)
		 44	[  0]	JMP  	 11		17	; 	goto 62
		 45	[  0]	TGETS	 12	11	8	; slot12 = slot11.key
		 46	[  0]	ISNES	 12		7	; if <unknown table>.key ~= "MirageGoblet"
		 47	[  0]	JMP  	 12		14	; 	goto 62
		 48	[  0]	TGETS	 12	11	6	; slot12 = slot11._mirageSpins
		 49	[  0]	IST  	   		12	; if <unknown table>._mirageSpins
		 50	[  0]	JMP  	 13		1	; 	goto 52
		 51	[  0]	KSHORT	 12		0	; slot12 = 0
		 52	[  0]	KSHORT	 13		0	; slot13 = 0
		 53	[  0]	ISGE 	 13		12	; if slot13 >= slot12
		 54	[  0]	JMP  	 12		7	; 	goto 62
		 55	[  0]	TGETS	 12	11	5	; slot12 = slot11._mirageTargetSym
		 56	[  0]	ISF  	   		12	; if not <unknown table>._mirageTargetSym
		 57	[  0]	JMP  	 13		4	; 	goto 62
		 58	[  0]	MOV  	 12		7	; slot12 = slot7
		 59	[  0]	TGETS	 14	11	5	; slot14 = slot11._mirageTargetSym
		 60	[  0]	KNUM 	 15		0	; slot15 = 0.05
		 61	[  0]	CALL 	 12	1	3	;  = slot12(slot13, <unknown table>._mirageTargetSym)
		 62	[  0]	ITERC	 11	2	3	; slot11, slot12, slot13 = uv5"unknown", slot9, slot10; slot11 = uv5"unknown"(slot9, slot10)
		 63	[  0]	ITERL	 11		-19	; slot10 = slot11; if slot11 != nil goto 45
		 64	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
		 65	[  0]	MOV  	 10		2	; slot10 = slot2
		 66	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = uv5"unknown"(slot9)
		 67	[  0]	JMP  	 11		10	; 	goto 78
		 68	[  0]	TGETS	 12	11	8	; slot12 = slot11.key
		 69	[  0]	ISNES	 12		4	; if <unknown table>.key ~= "OldCrown"
		 70	[  0]	JMP  	 12		7	; 	goto 78
		 71	[  0]	TGETS	 12	11	3	; slot12 = slot11._oldCrownTargetSym
		 72	[  0]	ISF  	   		12	; if not <unknown table>._oldCrownTargetSym
		 73	[  0]	JMP  	 13		4	; 	goto 78
		 74	[  0]	MOV  	 12		7	; slot12 = slot7
		 75	[  0]	TGETS	 14	11	3	; slot14 = slot11._oldCrownTargetSym
		 76	[  0]	KNUM 	 15		0	; slot15 = 0.05
		 77	[  0]	CALL 	 12	1	3	;  = slot12(slot13, <unknown table>._oldCrownTargetSym)
		 78	[  0]	ITERC	 11	2	3	; slot11, slot12, slot13 = uv5"unknown", slot9, slot10; slot11 = uv5"unknown"(slot9, slot10)
		 79	[  0]	ITERL	 11		-12	; slot10 = slot11; if slot11 != nil goto 68
		 80	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
		 81	[  0]	MOV  	 10		2	; slot10 = slot2
		 82	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = uv5"unknown"(slot9)
		 83	[  0]	JMP  	 11		19	; 	goto 103
		 84	[  0]	TGETS	 12	11	8	; slot12 = slot11.key
		 85	[  0]	ISNES	 12		2	; if <unknown table>.key ~= "BanStamp"
		 86	[  0]	JMP  	 12		16	; 	goto 103
		 87	[  0]	TGETS	 12	11	1	; slot12 = slot11._banStampPendingWave
		 88	[  0]	ISNEV	 12		2	; if <unknown table>._banStampPendingWave ~= slot2
		 89	[  0]	JMP  	 12		13	; 	goto 103
		 90	[  0]	TGETS	 12	11	0	; slot12 = slot11._banStampPendingSym
		 91	[  0]	ISF  	   		12	; if not <unknown table>._banStampPendingSym
		 92	[  0]	JMP  	 13		10	; 	goto 103
		 93	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		 94	[  0]	UGET 	 14		6	; slot14 = uv6"unknwon"
		 95	[  0]	MOV  	 16		5	; slot16 = uv3"unknown"
		 96	[  0]	TGETS	 17	11	0	; slot17 = slot11._banStampPendingSym
		 97	[  0]	CALL 	 14	0	3	; MULTRES = uv6"unknown"(slot15, uv3"unknown")
		 98	[  0]	CALLM	 12	2	0	; slot12 = uv3"unknown"(, ...MULTRES)
		 99	[  0]	MOV  	  5		12	; slot5 = uv3"unknown"
		100	[  0]	TGETS	 12	11	0	; slot12 = slot11._banStampPendingSym
		101	[  0]	KPRI 	 13		2	; slot13 = true
		102	[  0]	TSETV	 13	6	12	; slot6[<unknown table>._banStampPendingSym] = slot13
		103	[  0]	ITERC	 11	2	3	; slot11, slot12, slot13 = uv5"unknown", slot9, slot10; slot11 = uv5"unknown"(slot9, slot10)
		104	[  0]	ITERL	 11		-21	; slot10 = slot11; if slot11 != nil goto 84
		105	[  0]	MOV  	  8		5	; slot8 = uv3"unknown"
		106	[  0]	MOV  	  9		4	; slot9 = uv3"unknown"
		107	[  0]	MOV  	 10		6	; slot10 = slot6
		108	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 109
		109	[  0]	RET  	  8		4	; return uv3"unknown", uv3"unknown", slot10
	137	[  0]	TSETS	 19	2	179	; slot2.getProjectedSymbolWeights = slot19
	138	[  0]	FNEW 	 19		176	; N/A:0-0: 1 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["tonumber"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 12	[  0]	KSHORT	  2		0	; slot2 = 0
		 13	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 14	[  0]	MOV  	  5		1	; slot5 = slot1
		 15	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv1"unknown"(slot4)
		 16	[  0]	JMP  	  6		9	; 	goto 26
		 17	[  0]	TGETS	  7	6	5	; slot7 = slot6.key
		 18	[  0]	ISNES	  7		4	; if <unknown table>.key ~= "JokerSeed"
		 19	[  0]	JMP  	  7		2	; 	goto 22
		 20	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 0.015
		 21	[  0]	JMP  	  7		4	; 	goto 26
		 22	[  0]	TGETS	  7	6	5	; slot7 = slot6.key
		 23	[  0]	ISNES	  7		3	; if <unknown table>.key ~= "Wildcard"
		 24	[  0]	JMP  	  7		1	; 	goto 26
		 25	[  0]	ADDVN	  2	2	1	; slot2 = slot2 + 0.02
		 26	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv1"unknown", slot4, slot5; slot6 = uv1"unknown"(slot4, slot5)
		 27	[  0]	ITERL	  6		-11	; slot5 = slot6; if slot6 != nil goto 17
		 28	[  0]	GGET 	  3		2	; slot3 = _env["math"]
		 29	[  0]	TGETS	  3	3	1	; slot3 = math.max
		 30	[  0]	KSHORT	  5		0	; slot5 = 0
		 31	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 32	[  0]	TGETS	  6	6	0	; slot6 = math.min
		 33	[  0]	KNUM 	  8		2	; slot8 = 0.05
		 34	[  0]	MOV  	  9		2	; slot9 = slot2
		 35	[  0]	CALL 	  6	0	3	; MULTRES = math.min(<unknown table>.key, slot8)
		 36	[  0]	CALLMT	  3		1	; return math.max(, ...MULTRES)
	139	[  0]	TSETS	 19	2	177	; slot2.getJokerChance = slot19
	140	[  0]	KSHORT	 19		200	; slot19 = 200
	141	[  0]	FNEW 	 20		174	; N/A:0-0: 1 args, 3 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			[available] = false,
			[betPaid] = false,
			[armed] = false,
			]
		
		
		ktable#7 = [
			[available] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		10	; slot1 = _env["tonumber"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 12	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		 15	[  0]	JMP  	  5		22	; 	goto 38
		 16	[  0]	TGETS	  6	5	9	; slot6 = slot5.key
		 17	[  0]	ISNES	  6		8	; if <unknown table>.key ~= "X2"
		 18	[  0]	JMP  	  6		19	; 	goto 38
		 19	[  0]	TDUP 	  6		7	; slot6 = copy table#k7
		 20	[  0]	TGETS	  7	5	6	; slot7 = slot5._x2Armed
		 21	[  0]	ISEQP	  7		2	; if <unknown table>._x2Armed == true
		 22	[  0]	JMP  	  7		2	; 	goto 25
		 23	[  0]	KPRI 	  7		1	; slot7 = false
		 24	[  0]	JMP  	  8		1	; 	goto 26
		 25	[  0]	KPRI 	  7		2	; slot7 = true
		 26	[  0]	TSETS	  7	6	5	; slot6.armed = slot7
		 27	[  0]	TGETS	  7	5	4	; slot7 = slot5._x2BetPaid
		 28	[  0]	ISEQP	  7		2	; if <unknown table>._x2BetPaid == true
		 29	[  0]	JMP  	  7		2	; 	goto 32
		 30	[  0]	KPRI 	  7		1	; slot7 = false
		 31	[  0]	JMP  	  8		1	; 	goto 33
		 32	[  0]	KPRI 	  7		2	; slot7 = true
		 33	[  0]	TSETS	  7	6	3	; slot6.betPaid = slot7
		 34	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 35	[  0]	TSETS	  7	6	2	; slot6.extraCost = uv2"unknown"
		 36	[  0]	TSETS	  5	6	1	; slot6.instance = slot5
		 37	[  0]	RET1 	  6		2	; return slot6
		 38	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 39	[  0]	ITERL	  5		-24	; slot4 = slot5; if slot5 != nil goto 16
		 40	[  0]	TDUP 	  2		0	; slot2 = copy table#k0
		 41	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 42	[  0]	TSETS	  3	2	2	; slot2.extraCost = uv2"unknown"
		 43	[  0]	RET1 	  2		2	; return slot2
	142	[  0]	TSETS	 20	2	175	; slot2.getX2State = slot20
	143	[  0]	FNEW 	 20		172	; N/A:0-0: 2 args, 1 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	10	; slot2 = uv0"unknown".getX2State
		  3	[  0]	ISFC 	  4		1	; slot4 = slot1; if not slot1
		  4	[  0]	JMP  	  4		1	; 	goto 6
		  5	[  0]	TGETS	  4	1	9	; slot4 = slot1.waveId
		  6	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".getX2State(slot3)
		  7	[  0]	ISFC 	  3		2	; slot3 = slot2; if not slot2
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	TGETS	  3	2	8	; slot3 = slot2.instance
		 10	[  0]	IST  	   		3	; if <unknown table>.instance
		 11	[  0]	JMP  	  4		2	; 	goto 14
		 12	[  0]	KPRI 	  4		1	; slot4 = false
		 13	[  0]	RET1 	  4		2	; return slot4
		 14	[  0]	ISEQP	  0		2	; if slot0 == true
		 15	[  0]	JMP  	  4		4	; 	goto 20
		 16	[  0]	KPRI 	  4		0	; slot4 = nil
		 17	[  0]	JMP  	  5		3	; 	goto 21
		 18	[  0]	KPRI 	  4		1	; slot4 = false
		 19	[  0]	JMP  	  5		1	; 	goto 21
		 20	[  0]	KPRI 	  4		2	; slot4 = true
		 21	[  0]	TSETS	  4	3	7	; <unknown table>.instance._x2Armed = slot4
		 22	[  0]	ISEQP	  0		2	; if slot0 == true
		 23	[  0]	JMP  	  4		4	; 	goto 28
		 24	[  0]	KPRI 	  4		0	; slot4 = nil
		 25	[  0]	JMP  	  5		3	; 	goto 29
		 26	[  0]	KPRI 	  4		1	; slot4 = false
		 27	[  0]	JMP  	  5		1	; 	goto 29
		 28	[  0]	KPRI 	  4		2	; slot4 = true
		 29	[  0]	TSETS	  4	3	6	; <unknown table>.instance._x2ManualActivation = slot4
		 30	[  0]	KPRI 	  4		0	; slot4 = nil
		 31	[  0]	TSETS	  4	3	5	; <unknown table>.instance._x2BetPaid = slot4
		 32	[  0]	KPRI 	  4		2	; slot4 = true
		 33	[  0]	TSETS	  4	3	4	; <unknown table>.instance._uiTrigger = slot4
		 34	[  0]	GGET 	  4		2	; slot4 = _env["love"]
		 35	[  0]	TGETS	  4	4	1	; slot4 = love.timer
		 36	[  0]	TGETS	  4	4	0	; slot4 = love.timer.getTime
		 37	[  0]	CALL 	  4	2	1	; slot4 = love.timer.getTime()
		 38	[  0]	TSETS	  4	3	3	; <unknown table>.instance._uiPulseT0 = love.timer.getTime
		 39	[  0]	KPRI 	  4		2	; slot4 = true
		 40	[  0]	RET1 	  4		2	; return slot4
	144	[  0]	TSETS	 20	2	173	; slot2.setX2Armed = slot20
	145	[  0]	FNEW 	 20		170	; N/A:0-0: 1 args, 2 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".getX2State
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".getX2State(slot2)
		  5	[  0]	ISFC 	  2		1	; slot2 = slot1; if not slot1
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	TGETS	  2	1	3	; slot2 = slot1.instance
		  8	[  0]	TGETS	  3	1	2	; slot3 = slot1.available
		  9	[  0]	ISF  	   		3	; if not <unknown table>.available
		 10	[  0]	JMP  	  4		11	; 	goto 22
		 11	[  0]	TGETS	  3	1	1	; slot3 = slot1.armed
		 12	[  0]	ISF  	   		3	; if not <unknown table>.armed
		 13	[  0]	JMP  	  4		8	; 	goto 22
		 14	[  0]	ISF  	   		2	; if not <unknown table>.instance
		 15	[  0]	JMP  	  3		6	; 	goto 22
		 16	[  0]	TGETS	  3	2	0	; slot3 = <unknown table>.instance._x2ManualActivation
		 17	[  0]	ISNEP	  3		2	; if <unknown table>.instance._x2ManualActivation ~= true
		 18	[  0]	JMP  	  3		3	; 	goto 22
		 19	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 20	[  0]	IST  	   		3	; if uv1"unknown"
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	KSHORT	  3		0	; slot3 = 0
		 23	[  0]	RET1 	  3		2	; return slot3
	146	[  0]	TSETS	 20	2	171	; slot2.getX2ExtraCost = slot20
	147	[  0]	FNEW 	 20		168	; N/A:0-0: 2 args, 2 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".getX2State
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".getX2State(slot3)
		  5	[  0]	ISFC 	  3		2	; slot3 = slot2; if not slot2
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TGETS	  3	2	4	; slot3 = slot2.instance
		  8	[  0]	ISF  	   		3	; if not <unknown table>.instance
		  9	[  0]	JMP  	  4		14	; 	goto 24
		 10	[  0]	TGETS	  4	2	3	; slot4 = slot2.armed
		 11	[  0]	ISF  	   		4	; if not <unknown table>.armed
		 12	[  0]	JMP  	  5		11	; 	goto 24
		 13	[  0]	TGETS	  4	3	2	; slot4 = <unknown table>.instance._x2ManualActivation
		 14	[  0]	ISNEP	  4		2	; if <unknown table>.instance._x2ManualActivation ~= true
		 15	[  0]	JMP  	  4		8	; 	goto 24
		 16	[  0]	GGET 	  4		1	; slot4 = _env["tonumber"]
		 17	[  0]	ISTC 	  6		1	; slot6 = slot1; if slot1
		 18	[  0]	JMP  	  6		1	; 	goto 20
		 19	[  0]	KSHORT	  6		0	; slot6 = 0
		 20	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 21	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 22	[  0]	ISEQV	  4		5	; if tonumber == uv1"unknown"
		 23	[  0]	JMP  	  4		2	; 	goto 26
		 24	[  0]	KPRI 	  4		1	; slot4 = false
		 25	[  0]	RET1 	  4		2	; return slot4
		 26	[  0]	KPRI 	  4		2	; slot4 = true
		 27	[  0]	TSETS	  4	3	0	; <unknown table>.instance._x2BetPaid = slot4
		 28	[  0]	KPRI 	  4		2	; slot4 = true
		 29	[  0]	RET1 	  4		2	; return slot4
	148	[  0]	TSETS	 20	2	169	; slot2.markX2BetPaid = slot20
	149	[  0]	FNEW 	 20		166	; N/A:0-0: 2 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	GGET 	  4		5	; slot4 = _env["tonumber"]
		  3	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  4	[  0]	JMP  	  6		1	; 	goto 6
		  5	[  0]	KSHORT	  6		0	; slot6 = 0
		  6	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		  7	[  0]	IST  	   		4	; if tonumber
		  8	[  0]	JMP  	  5		1	; 	goto 10
		  9	[  0]	KSHORT	  4		0	; slot4 = 0
		 10	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 11	[  0]	GGET 	  2		5	; slot2 = _env["tonumber"]
		 12	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		 13	[  0]	JMP  	  4		1	; 	goto 15
		 14	[  0]	KSHORT	  4		0	; slot4 = 0
		 15	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 16	[  0]	IST  	   		2	; if slot2
		 17	[  0]	JMP  	  3		1	; 	goto 19
		 18	[  0]	KSHORT	  2		0	; slot2 = 0
		 19	[  0]	KSHORT	  3		0	; slot3 = 0
		 20	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 21	[  0]	MOV  	  6		2	; slot6 = slot2
		 22	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv1"unknown"(slot5)
		 23	[  0]	JMP  	  7		24	; 	goto 48
		 24	[  0]	TGETS	  8	7	4	; slot8 = slot7.key
		 25	[  0]	ISNES	  8		3	; if <unknown table>.key ~= "NutrientLeaf"
		 26	[  0]	JMP  	  8		21	; 	goto 48
		 27	[  0]	TGETS	  8	7	2	; slot8 = slot7._nutrientDiscountPending
		 28	[  0]	IST  	   		8	; if <unknown table>._nutrientDiscountPending
		 29	[  0]	JMP  	  9		1	; 	goto 31
		 30	[  0]	KSHORT	  8		0	; slot8 = 0
		 31	[  0]	KSHORT	  9		0	; slot9 = 0
		 32	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		 33	[  0]	JMP  	  8		14	; 	goto 48
		 34	[  0]	GGET 	  8		1	; slot8 = _env["math"]
		 35	[  0]	TGETS	  8	8	0	; slot8 = math.max
		 36	[  0]	MOV  	 10		3	; slot10 = slot3
		 37	[  0]	GGET 	 11		5	; slot11 = _env["tonumber"]
		 38	[  0]	TGETS	 13	7	2	; slot13 = slot7._nutrientDiscountPending
		 39	[  0]	IST  	   		13	; if <unknown table>._nutrientDiscountPending
		 40	[  0]	JMP  	 14		1	; 	goto 42
		 41	[  0]	KSHORT	 13		0	; slot13 = 0
		 42	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 43	[  0]	IST  	   		11	; if tonumber
		 44	[  0]	JMP  	 12		1	; 	goto 46
		 45	[  0]	KSHORT	 11		0	; slot11 = 0
		 46	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 47	[  0]	MOV  	  3		8	; slot3 = math.max
		 48	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv1"unknown", slot5, slot6; slot7 = uv1"unknown"(slot5, slot6)
		 49	[  0]	ITERL	  7		-26	; slot6 = slot7; if slot7 != nil goto 24
		 50	[  0]	RET1 	  3		2	; return math.max
	150	[  0]	TSETS	 20	2	167	; slot2.getSpinPriceDiscount = slot20
	151	[  0]	FNEW 	 20		164	; N/A:0-0: 2 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	GGET 	  4		6	; slot4 = _env["tonumber"]
		  3	[  0]	ISTC 	  6		0	; slot6 = slot0; if slot0
		  4	[  0]	JMP  	  6		1	; 	goto 6
		  5	[  0]	KSHORT	  6		0	; slot6 = 0
		  6	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		  7	[  0]	IST  	   		4	; if tonumber
		  8	[  0]	JMP  	  5		1	; 	goto 10
		  9	[  0]	KSHORT	  4		0	; slot4 = 0
		 10	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 11	[  0]	KSHORT	  2		0	; slot2 = 0
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	GGET 	  5		6	; slot5 = _env["tonumber"]
		 14	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		 15	[  0]	JMP  	  7		1	; 	goto 17
		 16	[  0]	KSHORT	  7		0	; slot7 = 0
		 17	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 18	[  0]	IST  	   		5	; if tonumber
		 19	[  0]	JMP  	  6		1	; 	goto 21
		 20	[  0]	KSHORT	  5		0	; slot5 = 0
		 21	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv1"unknown"(slot4)
		 22	[  0]	JMP  	  6		35	; 	goto 58
		 23	[  0]	TGETS	  7	6	5	; slot7 = slot6.key
		 24	[  0]	ISNES	  7		4	; if <unknown table>.key ~= "RewindClock"
		 25	[  0]	JMP  	  7		32	; 	goto 58
		 26	[  0]	TGETS	  7	6	3	; slot7 = slot6._rewindCostReductionPending
		 27	[  0]	IST  	   		7	; if <unknown table>._rewindCostReductionPending
		 28	[  0]	JMP  	  8		1	; 	goto 30
		 29	[  0]	KSHORT	  7		0	; slot7 = 0
		 30	[  0]	KSHORT	  8		0	; slot8 = 0
		 31	[  0]	ISGE 	  8		7	; if slot8 >= slot7
		 32	[  0]	JMP  	  7		14	; 	goto 47
		 33	[  0]	GGET 	  7		2	; slot7 = _env["math"]
		 34	[  0]	TGETS	  7	7	1	; slot7 = math.max
		 35	[  0]	MOV  	  9		2	; slot9 = slot2
		 36	[  0]	GGET 	 10		6	; slot10 = _env["tonumber"]
		 37	[  0]	TGETS	 12	6	3	; slot12 = slot6._rewindCostReductionPending
		 38	[  0]	IST  	   		12	; if <unknown table>._rewindCostReductionPending
		 39	[  0]	JMP  	 13		1	; 	goto 41
		 40	[  0]	KSHORT	 12		0	; slot12 = 0
		 41	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 42	[  0]	IST  	   		10	; if tonumber
		 43	[  0]	JMP  	 11		1	; 	goto 45
		 44	[  0]	KSHORT	 10		0	; slot10 = 0
		 45	[  0]	CALL 	  7	2	3	; slot7 = math.max(slot8, slot9)
		 46	[  0]	MOV  	  2		7	; slot2 = math.max
		 47	[  0]	ISF  	   		1	; if not slot1
		 48	[  0]	JMP  	  7		9	; 	goto 58
		 49	[  0]	TGETS	  7	1	0	; slot7 = slot1.pendingPaidFailure
		 50	[  0]	ISNEP	  7		2	; if <unknown table>.pendingPaidFailure ~= true
		 51	[  0]	JMP  	  7		6	; 	goto 58
		 52	[  0]	GGET 	  7		2	; slot7 = _env["math"]
		 53	[  0]	TGETS	  7	7	1	; slot7 = math.max
		 54	[  0]	MOV  	  9		2	; slot9 = math.max
		 55	[  0]	KSHORT	 10		25	; slot10 = 25
		 56	[  0]	CALL 	  7	2	3	; slot7 = math.max(slot8, math.max)
		 57	[  0]	MOV  	  2		7	; slot2 = math.max
		 58	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv1"unknown", slot4, slot5; slot6 = uv1"unknown"(slot4, slot5)
		 59	[  0]	ITERL	  6		-37	; slot5 = slot6; if slot6 != nil goto 23
		 60	[  0]	RET1 	  2		2	; return math.max
	152	[  0]	TSETS	 20	2	165	; slot2.getSpinPriceFlatReduction = slot20
	153	[  0]	FNEW 	 20		163	; N/A:0-0: 2 args, 2 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		1	; slot2 = false
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	TGETS	  2	0	9	; slot2 = slot0.id
		  6	[  0]	ISF  	   		2	; if not <unknown table>.id
		  7	[  0]	JMP  	  3		5	; 	goto 13
		  8	[  0]	GGET 	  2		8	; slot2 = _env["tostring"]
		  9	[  0]	TGETS	  4	0	9	; slot4 = slot0.id
		 10	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		 11	[  0]	IST  	   		2	; if slot2
		 12	[  0]	JMP  	  3		1	; 	goto 14
		 13	[  0]	KPRI 	  2		0	; slot2 = nil
		 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 15	[  0]	TGETV	  3	3	2	; slot3 = uv0"unknown"[slot2]
		 16	[  0]	ISEQP	  3		2	; if slot3 == true
		 17	[  0]	JMP  	  3		2	; 	goto 20
		 18	[  0]	KPRI 	  3		1	; slot3 = false
		 19	[  0]	RET1 	  3		2	; return slot3
		 20	[  0]	TGETS	  3	0	7	; slot3 = slot0.locked
		 21	[  0]	ISEQP	  3		2	; if <unknown table>.locked == true
		 22	[  0]	JMP  	  3		3	; 	goto 26
		 23	[  0]	TGETS	  3	0	6	; slot3 = slot0.unlocked
		 24	[  0]	ISNEP	  3		1	; if <unknown table>.unlocked ~= false
		 25	[  0]	JMP  	  3		2	; 	goto 28
		 26	[  0]	KPRI 	  3		1	; slot3 = false
		 27	[  0]	RET1 	  3		2	; return slot3
		 28	[  0]	GGET 	  3		5	; slot3 = _env["type"]
		 29	[  0]	TGETS	  5	0	4	; slot5 = slot0.unlock
		 30	[  0]	CALL 	  3	2	2	; slot3 = type(<unknown table>.id)
		 31	[  0]	ISNES	  3		3	; if type ~= "function"
		 32	[  0]	JMP  	  3		11	; 	goto 44
		 33	[  0]	GGET 	  3		2	; slot3 = _env["pcall"]
		 34	[  0]	TGETS	  5	0	4	; slot5 = slot0.unlock
		 35	[  0]	CALL 	  3	3	2	; slot3, slot4 = pcall(<unknown table>.id)
		 36	[  0]	ISFC 	  5		3	; slot5 = pcall; if not pcall
		 37	[  0]	JMP  	  5		5	; 	goto 43
		 38	[  0]	ISEQP	  4		2	; if <unknown table>.id == true
		 39	[  0]	JMP  	  5		2	; 	goto 42
		 40	[  0]	KPRI 	  5		1	; slot5 = false
		 41	[  0]	JMP  	  6		1	; 	goto 43
		 42	[  0]	KPRI 	  5		2	; slot5 = true
		 43	[  0]	RET1 	  5		2	; return slot5
		 44	[  0]	GGET 	  3		5	; slot3 = _env["type"]
		 45	[  0]	TGETS	  5	0	4	; slot5 = slot0.unlock
		 46	[  0]	CALL 	  3	2	2	; slot3 = type(<unknown table>.id)
		 47	[  0]	ISNES	  3		1	; if type ~= "string"
		 48	[  0]	JMP  	  3		20	; 	goto 69
		 49	[  0]	ISF  	   		1	; if not slot1
		 50	[  0]	JMP  	  3		4	; 	goto 55
		 51	[  0]	TGETS	  3	0	4	; slot3 = slot0.unlock
		 52	[  0]	TGETV	  3	1	3	; slot3 = slot1[<unknown table>.unlock]
		 53	[  0]	ISEQP	  3		2	; if slot3 == true
		 54	[  0]	JMP  	  3		12	; 	goto 67
		 55	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 56	[  0]	TGETS	  3	3	0	; slot3 = uv1"unknown".unlocks
		 57	[  0]	ISF  	   		3	; if not uv1"unknown".unlocks
		 58	[  0]	JMP  	  4		9	; 	goto 68
		 59	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 60	[  0]	TGETS	  3	3	0	; slot3 = uv1"unknown".unlocks
		 61	[  0]	TGETS	  4	0	4	; slot4 = slot0.unlock
		 62	[  0]	TGETV	  3	3	4	; slot3 = uv1"unknown".unlocks[<unknown table>.unlock]
		 63	[  0]	ISEQP	  3		2	; if slot3 == true
		 64	[  0]	JMP  	  3		2	; 	goto 67
		 65	[  0]	KPRI 	  3		1	; slot3 = false
		 66	[  0]	JMP  	  4		1	; 	goto 68
		 67	[  0]	KPRI 	  3		2	; slot3 = true
		 68	[  0]	RET1 	  3		2	; return slot3
		 69	[  0]	KPRI 	  3		2	; slot3 = true
		 70	[  0]	RET1 	  3		2	; return slot3
	154	[  0]	FNEW 	 21		162	; N/A:0-0: 2 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  2		1	; 	goto 6
		  5	[  0]	RET0 	  0		1	; return
		  6	[  0]	TGETS	  2	1	2	; slot2 = slot1.def
		  7	[  0]	IST  	   		2	; if <unknown table>.def
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	MOV  	  2		1	; slot2 = slot1
		 10	[  0]	TGETS	  3	1	1	; slot3 = slot1.key
		 11	[  0]	IST  	   		3	; if <unknown table>.key
		 12	[  0]	JMP  	  4		1	; 	goto 14
		 13	[  0]	TGETS	  3	2	1	; slot3 = slot2.key
		 14	[  0]	TGETS	  4	1	0	; slot4 = slot1.id
		 15	[  0]	IST  	   		4	; if <unknown table>.id
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	TGETS	  4	2	0	; slot4 = slot2.id
		 18	[  0]	ISF  	   		3	; if not <unknown table>.key
		 19	[  0]	JMP  	  5		2	; 	goto 22
		 20	[  0]	KPRI 	  5		2	; slot5 = true
		 21	[  0]	TSETV	  5	0	3	; slot0[<unknown table>.key] = slot5
		 22	[  0]	ISF  	   		4	; if not <unknown table>.id
		 23	[  0]	JMP  	  5		2	; 	goto 26
		 24	[  0]	KPRI 	  5		2	; slot5 = true
		 25	[  0]	TSETV	  5	0	4	; slot0[<unknown table>.id] = slot5
		 26	[  0]	RET0 	  0		1	; return
	155	[  0]	FNEW 	 22		161	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	3	; slot1 = math.max
		  3	[  0]	KSHORT	  3		1	; slot3 = 1
		  4	[  0]	GGET 	  4		4	; slot4 = _env["math"]
		  5	[  0]	TGETS	  4	4	2	; slot4 = math.floor
		  6	[  0]	GGET 	  6		1	; slot6 = _env["tonumber"]
		  7	[  0]	ISTC 	  8		0	; slot8 = slot0; if slot0
		  8	[  0]	JMP  	  8		1	; 	goto 10
		  9	[  0]	KSHORT	  8		1	; slot8 = 1
		 10	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 11	[  0]	IST  	   		6	; if tonumber
		 12	[  0]	JMP  	  7		1	; 	goto 14
		 13	[  0]	KSHORT	  6		1	; slot6 = 1
		 14	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 15	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 17	[  0]	GGET 	  3		4	; slot3 = _env["math"]
		 18	[  0]	TGETS	  3	3	0	; slot3 = math.min
		 19	[  0]	MOV  	  5		1	; slot5 = slot1
		 20	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 21	[  0]	LEN  	  6		6	; slot6 = #uv0"unknown"
		 22	[  0]	CALL 	  3	2	3	; slot3 = math.min(math.floor, slot5)
		 23	[  0]	TGETV	  2	2	3	; slot2 = uv0"unknown"[slot3]
		 24	[  0]	RET1 	  2		2	; return slot2
	156	[  0]	FNEW 	 23		160	; N/A:0-0: 1 args, 2 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	KSHORT	  2		0	; slot2 = 0
		  5	[  0]	GGET 	  3		6	; slot3 = _env["ipairs"]
		  6	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		  7	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		  8	[  0]	JMP  	  6		14	; 	goto 23
		  9	[  0]	GGET 	  8		5	; slot8 = _env["math"]
		 10	[  0]	TGETS	  8	8	4	; slot8 = math.max
		 11	[  0]	KSHORT	 10		0	; slot10 = 0
		 12	[  0]	GGET 	 11		3	; slot11 = _env["tonumber"]
		 13	[  0]	TGETV	 13	1	7	; slot13 = slot1[slot7]
		 14	[  0]	IST  	   		13	; if slot13
		 15	[  0]	JMP  	 14		1	; 	goto 17
		 16	[  0]	KSHORT	 13		0	; slot13 = 0
		 17	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 18	[  0]	IST  	   		11	; if tonumber
		 19	[  0]	JMP  	 12		1	; 	goto 21
		 20	[  0]	KSHORT	 11		0	; slot11 = 0
		 21	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 22	[  0]	ADDVV	  2	2	8	; slot2 = slot2 + math.max
		 23	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv1"unknown"; slot6, slot7 = ipairs(slot4, uv1"unknown")
		 24	[  0]	ITERL	  6		-16	; uv1"unknown" = slot6; if slot6 != nil goto 9
		 25	[  0]	KSHORT	  3		0	; slot3 = 0
		 26	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 27	[  0]	JMP  	  3		2	; 	goto 30
		 28	[  0]	KSTR 	  3		2	; slot3 = "C"
		 29	[  0]	RET1 	  3		2	; return slot3
		 30	[  0]	GGET 	  3		1	; slot3 = _env["love"]
		 31	[  0]	TGETS	  3	3	5	; slot3 = love.math
		 32	[  0]	TGETS	  3	3	0	; slot3 = love.math.random
		 33	[  0]	CALL 	  3	2	1	; slot3 = love.math.random()
		 34	[  0]	MULVV	  3	3	2	; slot3 = love.math.random * slot2
		 35	[  0]	GGET 	  4		6	; slot4 = _env["ipairs"]
		 36	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 37	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(uv1"unknown")
		 38	[  0]	JMP  	  7		17	; 	goto 56
		 39	[  0]	GGET 	  9		5	; slot9 = _env["math"]
		 40	[  0]	TGETS	  9	9	4	; slot9 = math.max
		 41	[  0]	KSHORT	 11		0	; slot11 = 0
		 42	[  0]	GGET 	 12		3	; slot12 = _env["tonumber"]
		 43	[  0]	TGETV	 14	1	8	; slot14 = slot1[math.max]
		 44	[  0]	IST  	   		14	; if slot14
		 45	[  0]	JMP  	 15		1	; 	goto 47
		 46	[  0]	KSHORT	 14		0	; slot14 = 0
		 47	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 48	[  0]	IST  	   		12	; if tonumber
		 49	[  0]	JMP  	 13		1	; 	goto 51
		 50	[  0]	KSHORT	 12		0	; slot12 = 0
		 51	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 52	[  0]	ISGE 	  3		9	; if slot3 >= math.max
		 53	[  0]	JMP  	 10		1	; 	goto 55
		 54	[  0]	RET1 	  8		2	; return math.max
		 55	[  0]	SUBVV	  3	3	9	; slot3 = slot3 - math.max
		 56	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, uv1"unknown", uv1"unknown"; slot7, slot8 = ipairs(uv1"unknown", uv1"unknown")
		 57	[  0]	ITERL	  7		-19	; uv1"unknown" = slot7; if slot7 != nil goto 39
		 58	[  0]	KSTR 	  4		2	; slot4 = "C"
		 59	[  0]	RET1 	  4		2	; return slot4
	157	[  0]	FNEW 	 24		159	; N/A:0-0: 5 args, 3 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  6		7	; slot6 = _env["ipairs"]
		  3	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		  4	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		  5	[  0]	JMP  	  9		59	; 	goto 65
		  6	[  0]	TGETS	 11	10	6	; slot11 = slot10.key
		  7	[  0]	IST  	   		11	; if <unknown table>.key
		  8	[  0]	JMP  	 12		1	; 	goto 10
		  9	[  0]	TGETS	 11	10	5	; slot11 = slot10.id
		 10	[  0]	TGETS	 12	10	5	; slot12 = slot10.id
		 11	[  0]	ISF  	   		11	; if not <unknown table>.id
		 12	[  0]	JMP  	 13		3	; 	goto 16
		 13	[  0]	TGETV	 13	2	11	; slot13 = slot2[<unknown table>.id]
		 14	[  0]	IST  	   		13	; if slot13
		 15	[  0]	JMP  	 14		3	; 	goto 19
		 16	[  0]	ISFC 	 13		12	; slot13 = <unknown table>.id; if not <unknown table>.id
		 17	[  0]	JMP  	 13		1	; 	goto 19
		 18	[  0]	TGETV	 13	2	12	; slot13 = slot2[<unknown table>.id]
		 19	[  0]	ISF  	   		11	; if not <unknown table>.id
		 20	[  0]	JMP  	 14		3	; 	goto 24
		 21	[  0]	TGETV	 14	1	11	; slot14 = slot1[<unknown table>.id]
		 22	[  0]	IST  	   		14	; if slot14
		 23	[  0]	JMP  	 15		3	; 	goto 27
		 24	[  0]	ISFC 	 14		12	; slot14 = <unknown table>.id; if not <unknown table>.id
		 25	[  0]	JMP  	 14		1	; 	goto 27
		 26	[  0]	TGETV	 14	1	12	; slot14 = slot1[<unknown table>.id]
		 27	[  0]	TGETS	 15	10	4	; slot15 = slot10.rarity
		 28	[  0]	IST  	   		15	; if <unknown table>.rarity
		 29	[  0]	JMP  	 16		1	; 	goto 31
		 30	[  0]	KSTR 	 15		3	; slot15 = "C"
		 31	[  0]	ISEQV	 15		0	; if slot15 == slot0
		 32	[  0]	JMP  	 15		2	; 	goto 35
		 33	[  0]	KPRI 	 15		1	; slot15 = false
		 34	[  0]	JMP  	 16		1	; 	goto 36
		 35	[  0]	KPRI 	 15		2	; slot15 = true
		 36	[  0]	TGETS	 16	10	4	; slot16 = slot10.rarity
		 37	[  0]	ISNES	 16		2	; if <unknown table>.rarity ~= "L"
		 38	[  0]	JMP  	 16		4	; 	goto 43
		 39	[  0]	NOT  	 16		3	; slot16 = not slot3
		 40	[  0]	JMP  	 17		3	; 	goto 44
		 41	[  0]	KPRI 	 16		1	; slot16 = false
		 42	[  0]	JMP  	 17		1	; 	goto 44
		 43	[  0]	KPRI 	 16		2	; slot16 = true
		 44	[  0]	ISF  	   		15	; if not slot15
		 45	[  0]	JMP  	 17		19	; 	goto 65
		 46	[  0]	ISF  	   		16	; if not slot16
		 47	[  0]	JMP  	 17		17	; 	goto 65
		 48	[  0]	ISF  	   		11	; if not <unknown table>.id
		 49	[  0]	JMP  	 17		15	; 	goto 65
		 50	[  0]	IST  	   		13	; if slot13
		 51	[  0]	JMP  	 17		13	; 	goto 65
		 52	[  0]	IST  	   		14	; if slot14
		 53	[  0]	JMP  	 17		11	; 	goto 65
		 54	[  0]	UGET 	 17		1	; slot17 = uv1"unknwon"
		 55	[  0]	MOV  	 19		10	; slot19 = slot10
		 56	[  0]	MOV  	 20		4	; slot20 = slot4
		 57	[  0]	CALL 	 17	2	3	; slot17 = uv1"unknown"(slot18, slot19)
		 58	[  0]	ISF  	   		17	; if not uv1"unknown"
		 59	[  0]	JMP  	 18		5	; 	goto 65
		 60	[  0]	GGET 	 17		1	; slot17 = _env["table"]
		 61	[  0]	TGETS	 17	17	0	; slot17 = table.insert
		 62	[  0]	MOV  	 19		5	; slot19 = slot5
		 63	[  0]	MOV  	 20		10	; slot20 = slot10
		 64	[  0]	CALL 	 17	1	3	;  = table.insert(slot18, slot19)
		 65	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, uv0"unknown"; slot9, slot10 = ipairs(slot7, uv0"unknown")
		 66	[  0]	ITERL	  9		-61	; uv0"unknown" = slot9; if slot9 != nil goto 6
		 67	[  0]	LEN  	  6		5	; slot6 = #slot5
		 68	[  0]	KSHORT	  7		1	; slot7 = 1
		 69	[  0]	ISGE 	  7		6	; if slot7 >= slot6
		 70	[  0]	JMP  	  6		3	; 	goto 74
		 71	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
		 72	[  0]	MOV  	  8		5	; slot8 = slot5
		 73	[  0]	CALL 	  6	1	2	;  = uv2"unknown"(slot7)
		 74	[  0]	RET1 	  5		2	; return slot5
	158	[  0]	FNEW 	 25		158	; N/A:0-0: 5 args, 3 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	TGETV	  5	5	0	; slot5 = uv0"unknown"[slot0]
		  3	[  0]	IST  	   		5	; if slot5
		  4	[  0]	JMP  	  6		1	; 	goto 6
		  5	[  0]	KSHORT	  5		1	; slot5 = 1
		  6	[  0]	MOV  	  6		5	; slot6 = slot5
		  7	[  0]	KSHORT	  7		1	; slot7 = 1
		  8	[  0]	KSHORT	  8		65535	; slot8 = 65535
		  9	[  0]	FORI 	  6		14	; for slot9 = slot6,slot7,slot8 else goto 24
		 10	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 11	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		 12	[  0]	TGETV	 12	12	9	; slot12 = uv2"unknown"[slot9]
		 13	[  0]	MOV  	 13		1	; slot13 = slot1
		 14	[  0]	MOV  	 14		2	; slot14 = slot2
		 15	[  0]	MOV  	 15		3	; slot15 = slot3
		 16	[  0]	MOV  	 16		4	; slot16 = slot4
		 17	[  0]	CALL 	 10	2	6	; slot10 = uv1"unknown"(slot11, slot12, slot13, slot14, slot15)
		 18	[  0]	TGETB	 11	10	1	; slot11 = uv1"unknown"[1]
		 19	[  0]	ISF  	   		11	; if not slot11
		 20	[  0]	JMP  	 12		2	; 	goto 23
		 21	[  0]	TGETB	 11	10	1	; slot11 = uv1"unknown"[1]
		 22	[  0]	RET1 	 11		2	; return slot11
		 23	[  0]	FORL 	  6		-14	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 10
		 24	[  0]	KSHORT	  6		1	; slot6 = 1
		 25	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 26	[  0]	LEN  	  7		7	; slot7 = #uv2"unknown"
		 27	[  0]	KSHORT	  8		1	; slot8 = 1
		 28	[  0]	FORI 	  6		14	; for slot9 = slot6,slot7,slot8 else goto 43
		 29	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 30	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		 31	[  0]	TGETV	 12	12	9	; slot12 = uv2"unknown"[slot9]
		 32	[  0]	MOV  	 13		1	; slot13 = slot1
		 33	[  0]	MOV  	 14		2	; slot14 = slot2
		 34	[  0]	MOV  	 15		3	; slot15 = slot3
		 35	[  0]	MOV  	 16		4	; slot16 = slot4
		 36	[  0]	CALL 	 10	2	6	; slot10 = uv1"unknown"(slot11, slot12, slot13, slot14, slot15)
		 37	[  0]	TGETB	 11	10	1	; slot11 = uv1"unknown"[1]
		 38	[  0]	ISF  	   		11	; if not slot11
		 39	[  0]	JMP  	 12		2	; 	goto 42
		 40	[  0]	TGETB	 11	10	1	; slot11 = uv1"unknown"[1]
		 41	[  0]	RET1 	 11		2	; return slot11
		 42	[  0]	FORL 	  6		-14	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 29
		 43	[  0]	KPRI 	  6		0	; slot6 = nil
		 44	[  0]	RET1 	  6		2	; return slot6
	159	[  0]	FNEW 	 26		157	; N/A:0-0: 1 args, 2 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		  4	[  0]	KSHORT	  2		0	; slot2 = 0
		  5	[  0]	KSHORT	  3		2	; slot3 = 2
		  6	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		  7	[  0]	LEN  	  4		4	; slot4 = #uv1"unknown"
		  8	[  0]	KSHORT	  5		1	; slot5 = 1
		  9	[  0]	FORI 	  3		17	; for slot6 = slot3,slot4,slot5 else goto 27
		 10	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 11	[  0]	TGETV	  7	7	6	; slot7 = uv1"unknown"[slot6]
		 12	[  0]	GGET 	  8		5	; slot8 = _env["math"]
		 13	[  0]	TGETS	  8	8	4	; slot8 = math.max
		 14	[  0]	KSHORT	 10		0	; slot10 = 0
		 15	[  0]	GGET 	 11		3	; slot11 = _env["tonumber"]
		 16	[  0]	TGETV	 13	1	7	; slot13 = slot1[slot7]
		 17	[  0]	IST  	   		13	; if slot13
		 18	[  0]	JMP  	 14		1	; 	goto 20
		 19	[  0]	KSHORT	 13		0	; slot13 = 0
		 20	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 21	[  0]	IST  	   		11	; if tonumber
		 22	[  0]	JMP  	 12		1	; 	goto 24
		 23	[  0]	KSHORT	 11		0	; slot11 = 0
		 24	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 25	[  0]	ADDVV	  2	2	8	; slot2 = slot2 + math.max
		 26	[  0]	FORL 	  3		-17	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 10
		 27	[  0]	KSHORT	  3		0	; slot3 = 0
		 28	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 29	[  0]	JMP  	  3		2	; 	goto 32
		 30	[  0]	KSTR 	  3		2	; slot3 = "U"
		 31	[  0]	RET1 	  3		2	; return slot3
		 32	[  0]	GGET 	  3		1	; slot3 = _env["love"]
		 33	[  0]	TGETS	  3	3	5	; slot3 = love.math
		 34	[  0]	TGETS	  3	3	0	; slot3 = love.math.random
		 35	[  0]	CALL 	  3	2	1	; slot3 = love.math.random()
		 36	[  0]	MULVV	  3	3	2	; slot3 = love.math.random * slot2
		 37	[  0]	KSHORT	  4		2	; slot4 = 2
		 38	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 39	[  0]	LEN  	  5		5	; slot5 = #uv1"unknown"
		 40	[  0]	KSHORT	  6		1	; slot6 = 1
		 41	[  0]	FORI 	  4		20	; for slot7 = slot4,slot5,slot6 else goto 62
		 42	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 43	[  0]	TGETV	  8	8	7	; slot8 = uv1"unknown"[slot7]
		 44	[  0]	GGET 	  9		5	; slot9 = _env["math"]
		 45	[  0]	TGETS	  9	9	4	; slot9 = math.max
		 46	[  0]	KSHORT	 11		0	; slot11 = 0
		 47	[  0]	GGET 	 12		3	; slot12 = _env["tonumber"]
		 48	[  0]	TGETV	 14	1	8	; slot14 = slot1[slot8]
		 49	[  0]	IST  	   		14	; if slot14
		 50	[  0]	JMP  	 15		1	; 	goto 52
		 51	[  0]	KSHORT	 14		0	; slot14 = 0
		 52	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 53	[  0]	IST  	   		12	; if tonumber
		 54	[  0]	JMP  	 13		1	; 	goto 56
		 55	[  0]	KSHORT	 12		0	; slot12 = 0
		 56	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 57	[  0]	ISGE 	  3		9	; if slot3 >= math.max
		 58	[  0]	JMP  	 10		1	; 	goto 60
		 59	[  0]	RET1 	  8		2	; return slot8
		 60	[  0]	SUBVV	  3	3	9	; slot3 = slot3 - math.max
		 61	[  0]	FORL 	  4		-20	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 42
		 62	[  0]	KSTR 	  4		2	; slot4 = "U"
		 63	[  0]	RET1 	  4		2	; return slot4
	160	[  0]	FNEW 	 27		156	; N/A:0-0: 5 args, 4 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  2	[  0]	MOV  	  7		0	; slot7 = slot0
		  3	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(slot6)
		  4	[  0]	GGET 	  6		1	; slot6 = _env["math"]
		  5	[  0]	TGETS	  6	6	0	; slot6 = math.max
		  6	[  0]	KSHORT	  8		2	; slot8 = 2
		  7	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		  8	[  0]	TGETV	  9	9	5	; slot9 = uv1"unknown"[uv0"unknown"]
		  9	[  0]	IST  	   		9	; if slot9
		 10	[  0]	JMP  	 10		1	; 	goto 12
		 11	[  0]	KSHORT	  9		2	; slot9 = 2
		 12	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		 13	[  0]	MOV  	  7		6	; slot7 = math.max
		 14	[  0]	KSHORT	  8		2	; slot8 = 2
		 15	[  0]	KSHORT	  9		65535	; slot9 = 65535
		 16	[  0]	FORI 	  7		14	; for slot10 = slot7,slot8,slot9 else goto 31
		 17	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 18	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		 19	[  0]	TGETV	 13	13	10	; slot13 = uv3"unknown"[slot10]
		 20	[  0]	MOV  	 14		1	; slot14 = slot1
		 21	[  0]	MOV  	 15		2	; slot15 = slot2
		 22	[  0]	MOV  	 16		3	; slot16 = slot3
		 23	[  0]	MOV  	 17		4	; slot17 = slot4
		 24	[  0]	CALL 	 11	2	6	; slot11 = uv2"unknown"(slot12, slot13, slot14, slot15, slot16)
		 25	[  0]	TGETB	 12	11	1	; slot12 = uv2"unknown"[1]
		 26	[  0]	ISF  	   		12	; if not slot12
		 27	[  0]	JMP  	 13		2	; 	goto 30
		 28	[  0]	TGETB	 12	11	1	; slot12 = uv2"unknown"[1]
		 29	[  0]	RET1 	 12		2	; return slot12
		 30	[  0]	FORL 	  7		-14	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 17
		 31	[  0]	KSHORT	  7		2	; slot7 = 2
		 32	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 33	[  0]	LEN  	  8		8	; slot8 = #uv3"unknown"
		 34	[  0]	KSHORT	  9		1	; slot9 = 1
		 35	[  0]	FORI 	  7		14	; for slot10 = slot7,slot8,slot9 else goto 50
		 36	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 37	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		 38	[  0]	TGETV	 13	13	10	; slot13 = uv3"unknown"[slot10]
		 39	[  0]	MOV  	 14		1	; slot14 = slot1
		 40	[  0]	MOV  	 15		2	; slot15 = slot2
		 41	[  0]	MOV  	 16		3	; slot16 = slot3
		 42	[  0]	MOV  	 17		4	; slot17 = slot4
		 43	[  0]	CALL 	 11	2	6	; slot11 = uv2"unknown"(slot12, slot13, slot14, slot15, slot16)
		 44	[  0]	TGETB	 12	11	1	; slot12 = uv2"unknown"[1]
		 45	[  0]	ISF  	   		12	; if not slot12
		 46	[  0]	JMP  	 13		2	; 	goto 49
		 47	[  0]	TGETB	 12	11	1	; slot12 = uv2"unknown"[1]
		 48	[  0]	RET1 	 12		2	; return slot12
		 49	[  0]	FORL 	  7		-14	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 36
		 50	[  0]	KPRI 	  7		0	; slot7 = nil
		 51	[  0]	RET1 	  7		2	; return slot7
	161	[  0]	FNEW 	 28		154	; N/A:0-0: 4 args, 5 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		7	; slot4 = _env["math"]
		  2	[  0]	TGETS	  4	4	6	; slot4 = math.max
		  3	[  0]	KSHORT	  6		1	; slot6 = 1
		  4	[  0]	GGET 	  7		7	; slot7 = _env["math"]
		  5	[  0]	TGETS	  7	7	5	; slot7 = math.floor
		  6	[  0]	GGET 	  9		4	; slot9 = _env["tonumber"]
		  7	[  0]	ISTC 	 11		0	; slot11 = slot0; if slot0
		  8	[  0]	JMP  	 11		1	; 	goto 10
		  9	[  0]	KSHORT	 11		3	; slot11 = 3
		 10	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 11	[  0]	IST  	   		9	; if tonumber
		 12	[  0]	JMP  	 10		1	; 	goto 14
		 13	[  0]	KSHORT	  9		3	; slot9 = 3
		 14	[  0]	CALL 	  7	0	2	; MULTRES = math.floor(slot8)
		 15	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 16	[  0]	MOV  	  0		4	; slot0 = math.max
		 17	[  0]	GGET 	  4		7	; slot4 = _env["math"]
		 18	[  0]	TGETS	  4	4	6	; slot4 = math.max
		 19	[  0]	KSHORT	  6		1	; slot6 = 1
		 20	[  0]	GGET 	  7		7	; slot7 = _env["math"]
		 21	[  0]	TGETS	  7	7	5	; slot7 = math.floor
		 22	[  0]	GGET 	  9		4	; slot9 = _env["tonumber"]
		 23	[  0]	ISTC 	 11		1	; slot11 = slot1; if slot1
		 24	[  0]	JMP  	 11		1	; 	goto 26
		 25	[  0]	KSHORT	 11		1	; slot11 = 1
		 26	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 27	[  0]	IST  	   		9	; if tonumber
		 28	[  0]	JMP  	 10		1	; 	goto 30
		 29	[  0]	KSHORT	  9		1	; slot9 = 1
		 30	[  0]	CALL 	  7	0	2	; MULTRES = math.floor(slot8)
		 31	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 32	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 33	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		 34	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 35	[  0]	TGETS	  8	8	2	; slot8 = uv0"unknown".active
		 36	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(math.floor)
		 37	[  0]	JMP  	  9		4	; 	goto 42
		 38	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		 39	[  0]	MOV  	 13		5	; slot13 = slot5
		 40	[  0]	MOV  	 14		10	; slot14 = slot10
		 41	[  0]	CALL 	 11	1	3	;  = uv1"unknown"(slot12, slot13)
		 42	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, math.floor, uv0"unknown".active; slot9, slot10 = ipairs(math.floor, uv0"unknown".active)
		 43	[  0]	ITERL	  9		-6	; uv0"unknown".active = slot9; if slot9 != nil goto 38
		 44	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 45	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 46	[  0]	KPRI 	  8		1	; slot8 = false
		 47	[  0]	KSHORT	  9		1	; slot9 = 1
		 48	[  0]	MOV  	 10		0	; slot10 = math.max
		 49	[  0]	KSHORT	 11		1	; slot11 = 1
		 50	[  0]	FORI 	  9		42	; for slot12 = slot9,slot10,slot11 else goto 93
		 51	[  0]	ISNEP	  2		2	; if slot2 ~= true
		 52	[  0]	JMP  	 13		4	; 	goto 57
		 53	[  0]	ISNEN	  4		0	; if math.max ~= 1
		 54	[  0]	JMP  	 13		2	; 	goto 57
		 55	[  0]	ISEQN	 12		0	; if slot12 == 1
		 56	[  0]	JMP  	 13		2	; 	goto 59
		 57	[  0]	KPRI 	 13		1	; slot13 = false
		 58	[  0]	JMP  	 14		1	; 	goto 60
		 59	[  0]	KPRI 	 13		2	; slot13 = true
		 60	[  0]	ISF  	   		13	; if not slot13
		 61	[  0]	JMP  	 14		9	; 	goto 71
		 62	[  0]	UGET 	 14		2	; slot14 = uv2"unknwon"
		 63	[  0]	MOV  	 16		4	; slot16 = math.max
		 64	[  0]	MOV  	 17		5	; slot17 = slot5
		 65	[  0]	MOV  	 18		7	; slot18 = slot7
		 66	[  0]	MOV  	 19		8	; slot19 = slot8
		 67	[  0]	MOV  	 20		3	; slot20 = slot3
		 68	[  0]	CALL 	 14	2	6	; slot14 = uv2"unknown"(slot15, math.max, slot17, slot18, slot19)
		 69	[  0]	IST  	   		14	; if uv2"unknown"
		 70	[  0]	JMP  	 15		9	; 	goto 80
		 71	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		 72	[  0]	UGET 	 16		4	; slot16 = uv4"unknwon"
		 73	[  0]	MOV  	 18		4	; slot18 = math.max
		 74	[  0]	CALL 	 16	2	2	; slot16 = uv4"unknown"(slot17)
		 75	[  0]	MOV  	 17		5	; slot17 = slot5
		 76	[  0]	MOV  	 18		7	; slot18 = slot7
		 77	[  0]	MOV  	 19		8	; slot19 = slot8
		 78	[  0]	MOV  	 20		3	; slot20 = slot3
		 79	[  0]	CALL 	 14	2	6	; slot14 = uv3"unknown"(slot15, uv4"unknown", slot17, slot18, slot19)
		 80	[  0]	IST  	   		14	; if uv3"unknown"
		 81	[  0]	JMP  	 15		1	; 	goto 83
		 82	[  0]	JMP  	  9		10	; 	goto 93
		 83	[  0]	TSETV	 14	6	12	; slot6[slot12] = uv3"unknown"
		 84	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
		 85	[  0]	MOV  	 17		7	; slot17 = slot7
		 86	[  0]	MOV  	 18		14	; slot18 = uv3"unknown"
		 87	[  0]	CALL 	 15	1	3	;  = uv1"unknown"(uv4"unknown", slot17)
		 88	[  0]	TGETS	 15	14	1	; slot15 = uv3"unknown".rarity
		 89	[  0]	ISNES	 15		0	; if uv3"unknown".rarity ~= "L"
		 90	[  0]	JMP  	 15		1	; 	goto 92
		 91	[  0]	KPRI 	  8		2	; slot8 = true
		 92	[  0]	FORL 	  9		-42	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 51
		 93	[  0]	RET1 	  6		2	; return slot6
	162	[  0]	TSETS	 28	2	155	; slot2.offer = slot28
	163	[  0]	FNEW 	 28		152	; N/A:0-0: 2 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		ktable#20 = [
			[maxStacks] = 3,
			[stacks] = 0,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	UCLO 	  0		91	; nil uvs >= r0; goto 95
		  4	[  0]	GGET 	  2		22	; slot2 = _env["tonumber"]
		  5	[  0]	ISTC 	  4		1	; slot4 = slot1; if slot1
		  6	[  0]	JMP  	  4		1	; 	goto 8
		  7	[  0]	KSHORT	  4		0	; slot4 = 0
		  8	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  9	[  0]	IST  	   		2	; if slot2
		 10	[  0]	JMP  	  3		1	; 	goto 12
		 11	[  0]	KSHORT	  2		0	; slot2 = 0
		 12	[  0]	GGET 	  3		22	; slot3 = _env["tonumber"]
		 13	[  0]	TGETS	  5	0	21	; slot5 = slot0.duration
		 14	[  0]	IST  	   		5	; if <unknown table>.duration
		 15	[  0]	JMP  	  6		1	; 	goto 17
		 16	[  0]	KSHORT	  5		0	; slot5 = 0
		 17	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 18	[  0]	IST  	   		3	; if tonumber
		 19	[  0]	JMP  	  4		1	; 	goto 21
		 20	[  0]	KSHORT	  3		0	; slot3 = 0
		 21	[  0]	TDUP 	  4		20	; slot4 = copy table#k20
		 22	[  0]	TSETS	  0	4	19	; slot4.def = slot0
		 23	[  0]	TGETS	  5	0	18	; slot5 = slot0.key
		 24	[  0]	IST  	   		5	; if <unknown table>.key
		 25	[  0]	JMP  	  6		1	; 	goto 27
		 26	[  0]	TGETS	  5	0	17	; slot5 = slot0.id
		 27	[  0]	TSETS	  5	4	18	; slot4.key = <unknown table>.id
		 28	[  0]	TSETS	  2	4	16	; slot4.startWave = slot2
		 29	[  0]	KSHORT	  5		0	; slot5 = 0
		 30	[  0]	ISGE 	  5		3	; if slot5 >= slot3
		 31	[  0]	JMP  	  5		4	; 	goto 36
		 32	[  0]	ADDVV	  5	2	3	; slot5 = slot2 + slot3
		 33	[  0]	SUBVN	  5	5	0	; slot5 = slot5 - 1
		 34	[  0]	IST  	   		5	; if slot5
		 35	[  0]	JMP  	  6		2	; 	goto 38
		 36	[  0]	GGET 	  5		15	; slot5 = _env["math"]
		 37	[  0]	TGETS	  5	5	14	; slot5 = math.huge
		 38	[  0]	TSETS	  5	4	13	; slot4.expiryWave = math.huge
		 39	[  0]	GGET 	  5		12	; slot5 = _env["table"]
		 40	[  0]	TGETS	  5	5	11	; slot5 = table.insert
		 41	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 42	[  0]	TGETS	  7	7	10	; slot7 = uv0"unknown".active
		 43	[  0]	MOV  	  8		4	; slot8 = slot4
		 44	[  0]	CALL 	  5	1	3	;  = table.insert(slot6, uv0"unknown".active)
		 45	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 46	[  0]	TGETS	  5	5	9	; slot5 = uv1"unknown".getRarity
		 47	[  0]	MOV  	  7		0	; slot7 = slot0
		 48	[  0]	CALL 	  5	3	2	; slot5, slot6 = uv1"unknown".getRarity(slot6)
		 49	[  0]	TDUP 	  7		4	; slot7 = copy table#k4
		 50	[  0]	GGET 	  8		7	; slot8 = _env["love"]
		 51	[  0]	TGETS	  8	8	6	; slot8 = love.timer
		 52	[  0]	ISF  	   		8	; if not love.timer
		 53	[  0]	JMP  	  9		11	; 	goto 65
		 54	[  0]	GGET 	  8		7	; slot8 = _env["love"]
		 55	[  0]	TGETS	  8	8	6	; slot8 = love.timer
		 56	[  0]	TGETS	  8	8	5	; slot8 = love.timer.getTime
		 57	[  0]	ISF  	   		8	; if not love.timer.getTime
		 58	[  0]	JMP  	  9		6	; 	goto 65
		 59	[  0]	GGET 	  8		7	; slot8 = _env["love"]
		 60	[  0]	TGETS	  8	8	6	; slot8 = love.timer
		 61	[  0]	TGETS	  8	8	5	; slot8 = love.timer.getTime
		 62	[  0]	CALL 	  8	2	1	; slot8 = love.timer.getTime()
		 63	[  0]	IST  	   		8	; if love.timer.getTime
		 64	[  0]	JMP  	  9		1	; 	goto 66
		 65	[  0]	KSHORT	  8		0	; slot8 = 0
		 66	[  0]	TSETS	  8	7	3	; slot7.startT = slot8
		 67	[  0]	FNEW 	  8		2	; N/A:0-0: 0 args, 0 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			ktable#0 = [
				#1: 0.6,
				#2: 0.5,
				#3: 0.4,
				]
			
			
			ktable#2 = [
				#1: 0.6,
				#2: 0.5,
				#3: 0.4,
				]
			
			
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  0		11	; slot0 = _env["pcall"]
			  2	[  0]	GGET 	  2		10	; slot2 = _env["require"]
			  3	[  0]	KSTR 	  3		9	; slot3 = "src.ui.config"
			  4	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, require)
			  5	[  0]	ISF  	   		0	; if not slot0
			  6	[  0]	JMP  	  2		5	; 	goto 12
			  7	[  0]	ISF  	   		1	; if not slot1
			  8	[  0]	JMP  	  2		3	; 	goto 12
			  9	[  0]	TGETS	  2	1	8	; slot2 = slot1._active
			 10	[  0]	ISF  	   		2	; if not <unknown table>._active
			 11	[  0]	JMP  	  3		0	; 	goto 12
			 12	[  0]	GGET 	  2		11	; slot2 = _env["pcall"]
			 13	[  0]	FNEW 	  4		7	; N/A:0-0: 0 args, 0 upvalues, 1 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	GGET 	  0		1	; slot0 = _env["_G"]
				  2	[  0]	TGETS	  0	0	0	; slot0 = _G.ui
				  3	[  0]	RET1 	  0		2	; return _G.ui
			 14	[  0]	CALL 	  2	3	2	; slot2, slot3 = pcall(slot3)
			 15	[  0]	ISF  	   		2	; if not slot2
			 16	[  0]	JMP  	  4		46	; 	goto 63
			 17	[  0]	ISF  	   		3	; if not slot3
			 18	[  0]	JMP  	  4		44	; 	goto 63
			 19	[  0]	TGETS	  4	3	6	; slot4 = slot3.coreEquipped
			 20	[  0]	ISF  	   		4	; if not <unknown table>.coreEquipped
			 21	[  0]	JMP  	  5		41	; 	goto 63
			 22	[  0]	TGETS	  4	3	6	; slot4 = slot3.coreEquipped
			 23	[  0]	TGETS	  4	4	5	; slot4 = <unknown table>.coreEquipped.fx
			 24	[  0]	ISF  	   		4	; if not <unknown table>.coreEquipped.fx
			 25	[  0]	JMP  	  5		37	; 	goto 63
			 26	[  0]	TGETS	  4	3	6	; slot4 = slot3.coreEquipped
			 27	[  0]	TGETS	  4	4	5	; slot4 = <unknown table>.coreEquipped.fx
			 28	[  0]	TGETS	  4	4	4	; slot4 = <unknown table>.coreEquipped.fx.spawn
			 29	[  0]	ISF  	   		4	; if not <unknown table>.coreEquipped.fx.spawn
			 30	[  0]	JMP  	  5		32	; 	goto 63
			 31	[  0]	TGETS	  4	3	6	; slot4 = slot3.coreEquipped
			 32	[  0]	TGETS	  4	4	5	; slot4 = <unknown table>.coreEquipped.fx
			 33	[  0]	TGETS	  4	4	4	; slot4 = <unknown table>.coreEquipped.fx.spawn
			 34	[  0]	TGETS	  5	4	3	; slot5 = <unknown table>.coreEquipped.fx.spawn.dur
			 35	[  0]	IST  	   		5	; if <unknown table>.coreEquipped.fx.spawn.dur
			 36	[  0]	JMP  	  6		1	; 	goto 38
			 37	[  0]	TDUP 	  5		2	; slot5 = copy table#k2
			 38	[  0]	TGETS	  6	4	1	; slot6 = <unknown table>.coreEquipped.fx.spawn.mul
			 39	[  0]	IST  	   		6	; if <unknown table>.coreEquipped.fx.spawn.mul
			 40	[  0]	JMP  	  7		1	; 	goto 42
			 41	[  0]	KSHORT	  6		1	; slot6 = 1
			 42	[  0]	TNEW 	  7		4	; slot7 = new table( array: 4, dict: 1)
			 43	[  0]	TGETB	  8	5	1	; slot8 = slot5[1]
			 44	[  0]	IST  	   		8	; if slot8
			 45	[  0]	JMP  	  9		1	; 	goto 47
			 46	[  0]	KNUM 	  8		0	; slot8 = 0.6
			 47	[  0]	MULVV	  8	8	6	; slot8 = slot8 * slot6
			 48	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
			 49	[  0]	TGETB	  8	5	2	; slot8 = slot5[2]
			 50	[  0]	IST  	   		8	; if slot8
			 51	[  0]	JMP  	  9		1	; 	goto 53
			 52	[  0]	KNUM 	  8		1	; slot8 = 0.5
			 53	[  0]	MULVV	  8	8	6	; slot8 = slot8 * slot6
			 54	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
			 55	[  0]	TGETB	  8	5	3	; slot8 = slot5[3]
			 56	[  0]	IST  	   		8	; if slot8
			 57	[  0]	JMP  	  9		1	; 	goto 59
			 58	[  0]	KNUM 	  8		2	; slot8 = 0.4
			 59	[  0]	MULVV	  8	8	6	; slot8 = slot8 * slot6
			 60	[  0]	TSETB	  8	7	3	; slot7[3] = slot8
			 61	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 62
			 62	[  0]	RET1 	  7		2	; return slot7
			 63	[  0]	TDUP 	  4		0	; slot4 = copy table#k0
			 64	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 65
			 65	[  0]	RET1 	  4		2	; return slot4
		 68	[  0]	CALL 	  8	2	1	; slot8 = slot8()
		 69	[  0]	TSETS	  8	7	1	; slot7.dur = slot8
		 70	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 71	[  0]	ISF  	   		6	; if not slot6
		 72	[  0]	JMP  	  9		3	; 	goto 76
		 73	[  0]	TGETB	  9	6	1	; slot9 = slot6[1]
		 74	[  0]	IST  	   		9	; if slot9
		 75	[  0]	JMP  	 10		1	; 	goto 77
		 76	[  0]	KSHORT	  9		1	; slot9 = 1
		 77	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 78	[  0]	ISF  	   		6	; if not slot6
		 79	[  0]	JMP  	  9		3	; 	goto 83
		 80	[  0]	TGETB	  9	6	2	; slot9 = slot6[2]
		 81	[  0]	IST  	   		9	; if slot9
		 82	[  0]	JMP  	 10		1	; 	goto 84
		 83	[  0]	KSHORT	  9		1	; slot9 = 1
		 84	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 85	[  0]	ISF  	   		6	; if not slot6
		 86	[  0]	JMP  	  9		3	; 	goto 90
		 87	[  0]	TGETB	  9	6	3	; slot9 = slot6[3]
		 88	[  0]	IST  	   		9	; if slot9
		 89	[  0]	JMP  	 10		1	; 	goto 91
		 90	[  0]	KSHORT	  9		1	; slot9 = 1
		 91	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 92	[  0]	TSETS	  8	7	0	; slot7.tint = slot8
		 93	[  0]	TSETS	  7	4	8	; slot4._uiSpawnVFX = slot7
		 94	[  0]	RET0 	  0		1	; return
		 95	[  0]	RET0 	  0		1	; return
	164	[  0]	TSETS	 28	2	153	; slot2.select = slot28
	165	[  0]	FNEW 	 28		151	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	GGET 	  1		3	; slot1 = _env["love"]
		  5	[  0]	TGETS	  1	1	2	; slot1 = love.timer
		  6	[  0]	ISF  	   		1	; if not love.timer
		  7	[  0]	JMP  	  2		11	; 	goto 19
		  8	[  0]	GGET 	  1		3	; slot1 = _env["love"]
		  9	[  0]	TGETS	  1	1	2	; slot1 = love.timer
		 10	[  0]	TGETS	  1	1	1	; slot1 = love.timer.getTime
		 11	[  0]	ISF  	   		1	; if not love.timer.getTime
		 12	[  0]	JMP  	  2		6	; 	goto 19
		 13	[  0]	GGET 	  1		3	; slot1 = _env["love"]
		 14	[  0]	TGETS	  1	1	2	; slot1 = love.timer
		 15	[  0]	TGETS	  1	1	1	; slot1 = love.timer.getTime
		 16	[  0]	CALL 	  1	2	1	; slot1 = love.timer.getTime()
		 17	[  0]	IST  	   		1	; if slot1
		 18	[  0]	JMP  	  2		1	; 	goto 20
		 19	[  0]	KSHORT	  1		0	; slot1 = 0
		 20	[  0]	TSETS	  1	0	4	; slot0._uiPulseT0 = slot1
		 21	[  0]	KNUM 	  1		0	; slot1 = 0.6
		 22	[  0]	TSETS	  1	0	0	; slot0._uiPulseDur = slot1
		 23	[  0]	RET0 	  0		1	; return
	166	[  0]	KSHORT	 29		200	; slot29 = 200
	167	[  0]	TSETS	 29	2	150	; slot2.MERC_CONTRACT_COST = slot29
	168	[  0]	KSHORT	 29		2	; slot29 = 2
	169	[  0]	TSETS	 29	2	149	; slot2.MERC_CONTRACT_MAX_USES = slot29
	170	[  0]	TDUP 	 29		148	; slot29 = copy table#k148
	171	[  0]	TDUP 	 30		147	; slot30 = copy table#k147
	172	[  0]	TDUP 	 31		145	; slot31 = copy table#k145
	173	[  0]	TSETS	 31	2	146	; slot2.MERC_CONTRACT_SYMBOL_WEIGHTS = slot31
	174	[  0]	FNEW 	 31		143	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	7	; slot1 = slot0.key
		  4	[  0]	ISEQS	  1		6	; if <unknown table>.key == "MercContract"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  1		5	; slot1 = _env["math"]
		  9	[  0]	TGETS	  1	1	4	; slot1 = math.max
		 10	[  0]	KSHORT	  3		0	; slot3 = 0
		 11	[  0]	GGET 	  4		5	; slot4 = _env["math"]
		 12	[  0]	TGETS	  4	4	3	; slot4 = math.floor
		 13	[  0]	GGET 	  6		2	; slot6 = _env["tonumber"]
		 14	[  0]	TGETS	  8	0	1	; slot8 = slot0._mercContractUses
		 15	[  0]	IST  	   		8	; if <unknown table>._mercContractUses
		 16	[  0]	JMP  	  9		1	; 	goto 18
		 17	[  0]	KSHORT	  8		0	; slot8 = 0
		 18	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 19	[  0]	IST  	   		6	; if tonumber
		 20	[  0]	JMP  	  7		1	; 	goto 22
		 21	[  0]	KSHORT	  6		0	; slot6 = 0
		 22	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 23	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 24	[  0]	GGET 	  2		5	; slot2 = _env["math"]
		 25	[  0]	TGETS	  2	2	4	; slot2 = math.max
		 26	[  0]	KSHORT	  4		0	; slot4 = 0
		 27	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 28	[  0]	TGETS	  5	5	0	; slot5 = uv0"unknown".MERC_CONTRACT_MAX_USES
		 29	[  0]	SUBVV	  5	5	1	; slot5 = uv0"unknown".MERC_CONTRACT_MAX_USES - slot1
		 30	[  0]	CALLT	  2		3	; return math.max(slot3, slot4)
	175	[  0]	TSETS	 31	2	144	; slot2.getMercContractRemainingUses = slot31
	176	[  0]	FNEW 	 31		141	; N/A:0-0: 2 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		0	; slot2 = nil
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	TGETS	  2	0	19	; slot2 = slot0.key
		  6	[  0]	ISNES	  2		18	; if <unknown table>.key ~= "MercContract"
		  7	[  0]	JMP  	  2		11	; 	goto 19
		  8	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  9	[  0]	TGETS	  2	2	17	; slot2 = uv0"unknown".getMercContractRemainingUses
		 10	[  0]	MOV  	  4		0	; slot4 = slot0
		 11	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".getMercContractRemainingUses(slot3)
		 12	[  0]	KSHORT	  3		0	; slot3 = 0
		 13	[  0]	ISGE 	  3		2	; if slot3 >= slot2
		 14	[  0]	JMP  	  3		2	; 	goto 17
		 15	[  0]	ISTC 	  3		2	; slot3 = slot2; if slot2
		 16	[  0]	JMP  	  3		1	; 	goto 18
		 17	[  0]	KPRI 	  3		0	; slot3 = nil
		 18	[  0]	RET1 	  3		2	; return slot3
		 19	[  0]	KNIL 	  2		3	; slot2, slot3 = nil
		 20	[  0]	TGETS	  4	0	19	; slot4 = slot0.key
		 21	[  0]	ISNES	  4		16	; if <unknown table>.key ~= "TornNote"
		 22	[  0]	JMP  	  4		4	; 	goto 27
		 23	[  0]	KSHORT	  4		6	; slot4 = 6
		 24	[  0]	TGETS	  3	0	15	; slot3 = slot0._tornNoteSpinCount
		 25	[  0]	MOV  	  2		4	; slot2 = slot4
		 26	[  0]	JMP  	  4		69	; 	goto 96
		 27	[  0]	TGETS	  4	0	19	; slot4 = slot0.key
		 28	[  0]	ISNES	  4		14	; if <unknown table>.key ~= "GoldenLever"
		 29	[  0]	JMP  	  4		4	; 	goto 34
		 30	[  0]	KSHORT	  4		5	; slot4 = 5
		 31	[  0]	TGETS	  3	0	13	; slot3 = slot0._goldenLeverSpinCount
		 32	[  0]	MOV  	  2		4	; slot2 = slot4
		 33	[  0]	JMP  	  4		62	; 	goto 96
		 34	[  0]	TGETS	  4	0	19	; slot4 = slot0.key
		 35	[  0]	ISNES	  4		12	; if <unknown table>.key ~= "OracleSigil"
		 36	[  0]	JMP  	  4		4	; 	goto 41
		 37	[  0]	KSHORT	  4		6	; slot4 = 6
		 38	[  0]	TGETS	  3	0	11	; slot3 = slot0._oracleCount
		 39	[  0]	MOV  	  2		4	; slot2 = slot4
		 40	[  0]	JMP  	  4		55	; 	goto 96
		 41	[  0]	TGETS	  4	0	19	; slot4 = slot0.key
		 42	[  0]	ISNES	  4		10	; if <unknown table>.key ~= "GreedyTail"
		 43	[  0]	JMP  	  4		22	; 	goto 66
		 44	[  0]	GGET 	  4		9	; slot4 = _env["math"]
		 45	[  0]	TGETS	  4	4	8	; slot4 = math.max
		 46	[  0]	KSHORT	  6		0	; slot6 = 0
		 47	[  0]	GGET 	  7		9	; slot7 = _env["math"]
		 48	[  0]	TGETS	  7	7	7	; slot7 = math.floor
		 49	[  0]	GGET 	  9		6	; slot9 = _env["tonumber"]
		 50	[  0]	MOV  	 11		1	; slot11 = slot1
		 51	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 52	[  0]	IST  	   		9	; if tonumber
		 53	[  0]	JMP  	 10		1	; 	goto 55
		 54	[  0]	KSHORT	  9		0	; slot9 = 0
		 55	[  0]	CALL 	  7	0	2	; MULTRES = math.floor(slot8)
		 56	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 57	[  0]	SUBNV	  4	4	0	; slot4 = 3 - math.max
		 58	[  0]	KSHORT	  5		0	; slot5 = 0
		 59	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 60	[  0]	JMP  	  5		2	; 	goto 63
		 61	[  0]	ISTC 	  5		4	; slot5 = slot4; if slot4
		 62	[  0]	JMP  	  5		1	; 	goto 64
		 63	[  0]	KPRI 	  5		0	; slot5 = nil
		 64	[  0]	RET1 	  5		2	; return slot5
		 65	[  0]	JMP  	  4		30	; 	goto 96
		 66	[  0]	TGETS	  4	0	19	; slot4 = slot0.key
		 67	[  0]	ISNES	  4		5	; if <unknown table>.key ~= "ReverseShell"
		 68	[  0]	JMP  	  4		9	; 	goto 78
		 69	[  0]	TGETS	  4	0	4	; slot4 = slot0._forceNextWinOnce
		 70	[  0]	ISF  	   		4	; if not <unknown table>._forceNextWinOnce
		 71	[  0]	JMP  	  5		2	; 	goto 74
		 72	[  0]	KSHORT	  4		0	; slot4 = 0
		 73	[  0]	RET1 	  4		2	; return slot4
		 74	[  0]	KSHORT	  4		3	; slot4 = 3
		 75	[  0]	TGETS	  3	0	3	; slot3 = slot0._rsFails
		 76	[  0]	MOV  	  2		4	; slot2 = slot4
		 77	[  0]	JMP  	  4		18	; 	goto 96
		 78	[  0]	TGETS	  4	0	19	; slot4 = slot0.key
		 79	[  0]	ISNES	  4		2	; if <unknown table>.key ~= "Prosperfang"
		 80	[  0]	JMP  	  4		13	; 	goto 94
		 81	[  0]	TGETS	  4	0	1	; slot4 = slot0._prosperNextMul
		 82	[  0]	IST  	   		4	; if <unknown table>._prosperNextMul
		 83	[  0]	JMP  	  5		1	; 	goto 85
		 84	[  0]	KSHORT	  4		1	; slot4 = 1
		 85	[  0]	KSHORT	  5		1	; slot5 = 1
		 86	[  0]	ISGE 	  5		4	; if slot5 >= slot4
		 87	[  0]	JMP  	  4		2	; 	goto 90
		 88	[  0]	KSHORT	  4		0	; slot4 = 0
		 89	[  0]	RET1 	  4		2	; return slot4
		 90	[  0]	KSHORT	  4		3	; slot4 = 3
		 91	[  0]	TGETS	  3	0	0	; slot3 = slot0._pfWins
		 92	[  0]	MOV  	  2		4	; slot2 = slot4
		 93	[  0]	JMP  	  4		2	; 	goto 96
		 94	[  0]	KPRI 	  4		0	; slot4 = nil
		 95	[  0]	RET1 	  4		2	; return slot4
		 96	[  0]	GGET 	  4		9	; slot4 = _env["math"]
		 97	[  0]	TGETS	  4	4	8	; slot4 = math.max
		 98	[  0]	KSHORT	  6		0	; slot6 = 0
		 99	[  0]	GGET 	  7		9	; slot7 = _env["math"]
		100	[  0]	TGETS	  7	7	7	; slot7 = math.floor
		101	[  0]	GGET 	  9		6	; slot9 = _env["tonumber"]
		102	[  0]	MOV  	 11		3	; slot11 = <unknown table>._pfWins
		103	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		104	[  0]	IST  	   		9	; if tonumber
		105	[  0]	JMP  	 10		1	; 	goto 107
		106	[  0]	KSHORT	  9		0	; slot9 = 0
		107	[  0]	CALL 	  7	0	2	; MULTRES = math.floor(slot8)
		108	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		109	[  0]	MODVV	  4	4	2	; slot4 = math.max % slot2
		110	[  0]	SUBVV	  4	2	4	; slot4 = slot2 - slot4
		111	[  0]	RET1 	  4		2	; return slot4
	177	[  0]	TSETS	 31	2	142	; slot2.getIconCounter = slot31
	178	[  0]	FNEW 	 31		140	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		7	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISNES	  1		6	; if slot1 ~= "function"
		  5	[  0]	JMP  	  1		16	; 	goto 22
		  6	[  0]	GGET 	  1		5	; slot1 = _env["tonumber"]
		  7	[  0]	MOV  	  3		0	; slot3 = slot0
		  8	[  0]	CALL 	  3	0	1	; MULTRES = slot3()
		  9	[  0]	CALLM	  1	2	0	; slot1 = tonumber(, ...MULTRES)
		 10	[  0]	IST  	   		1	; if tonumber
		 11	[  0]	JMP  	  2		1	; 	goto 13
		 12	[  0]	KSHORT	  1		0	; slot1 = 0
		 13	[  0]	GGET 	  2		4	; slot2 = _env["math"]
		 14	[  0]	TGETS	  2	2	3	; slot2 = math.max
		 15	[  0]	KSHORT	  4		0	; slot4 = 0
		 16	[  0]	GGET 	  5		4	; slot5 = _env["math"]
		 17	[  0]	TGETS	  5	5	2	; slot5 = math.min
		 18	[  0]	KNUM 	  7		0	; slot7 = 0.999999999
		 19	[  0]	MOV  	  8		1	; slot8 = slot1
		 20	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 21	[  0]	CALLMT	  2		1	; return math.max(, ...MULTRES)
		 22	[  0]	GGET 	  1		1	; slot1 = _env["love"]
		 23	[  0]	ISF  	   		1	; if not love
		 24	[  0]	JMP  	  2		13	; 	goto 38
		 25	[  0]	GGET 	  1		1	; slot1 = _env["love"]
		 26	[  0]	TGETS	  1	1	4	; slot1 = love.math
		 27	[  0]	ISF  	   		1	; if not love.math
		 28	[  0]	JMP  	  2		9	; 	goto 38
		 29	[  0]	GGET 	  1		1	; slot1 = _env["love"]
		 30	[  0]	TGETS	  1	1	4	; slot1 = love.math
		 31	[  0]	TGETS	  1	1	0	; slot1 = love.math.random
		 32	[  0]	ISF  	   		1	; if not love.math.random
		 33	[  0]	JMP  	  2		4	; 	goto 38
		 34	[  0]	GGET 	  1		1	; slot1 = _env["love"]
		 35	[  0]	TGETS	  1	1	4	; slot1 = love.math
		 36	[  0]	TGETS	  1	1	0	; slot1 = love.math.random
		 37	[  0]	CALLT	  1		1	; return love.math.random()
		 38	[  0]	GGET 	  1		4	; slot1 = _env["math"]
		 39	[  0]	TGETS	  1	1	0	; slot1 = math.random
		 40	[  0]	CALLT	  1		1	; return math.random()
	179	[  0]	FNEW 	 32		139	; N/A:0-0: 2 args, 3 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	4	; slot2 = uv0"unknown".MERC_CONTRACT_SYMBOL_WEIGHTS
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	GGET 	  4		3	; slot4 = _env["ipairs"]
		  5	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		  6	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		  7	[  0]	JMP  	  7		19	; 	goto 27
		  8	[  0]	ISF  	   		1	; if not slot1
		  9	[  0]	JMP  	  9		3	; 	goto 13
		 10	[  0]	TGETV	  9	1	8	; slot9 = slot1[slot8]
		 11	[  0]	IST  	   		9	; if slot9
		 12	[  0]	JMP  	  9		14	; 	goto 27
		 13	[  0]	GGET 	  9		2	; slot9 = _env["math"]
		 14	[  0]	TGETS	  9	9	1	; slot9 = math.max
		 15	[  0]	KSHORT	 11		0	; slot11 = 0
		 16	[  0]	GGET 	 12		0	; slot12 = _env["tonumber"]
		 17	[  0]	TGETV	 14	2	8	; slot14 = uv0"unknown".MERC_CONTRACT_SYMBOL_WEIGHTS[slot8]
		 18	[  0]	IST  	   		14	; if slot14
		 19	[  0]	JMP  	 15		1	; 	goto 21
		 20	[  0]	KSHORT	 14		0	; slot14 = 0
		 21	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 22	[  0]	IST  	   		12	; if tonumber
		 23	[  0]	JMP  	 13		1	; 	goto 25
		 24	[  0]	KSHORT	 12		0	; slot12 = 0
		 25	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 26	[  0]	ADDVV	  3	3	9	; slot3 = slot3 + math.max
		 27	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, uv1"unknown"; slot7, slot8 = ipairs(slot5, uv1"unknown")
		 28	[  0]	ITERL	  7		-21	; uv1"unknown" = slot7; if slot7 != nil goto 8
		 29	[  0]	KSHORT	  4		0	; slot4 = 0
		 30	[  0]	ISGT 	  3		4	; if slot3 > slot4
		 31	[  0]	JMP  	  4		14	; 	goto 46
		 32	[  0]	GGET 	  4		3	; slot4 = _env["ipairs"]
		 33	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 34	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 35	[  0]	JMP  	  7		6	; 	goto 42
		 36	[  0]	ISF  	   		1	; if not slot1
		 37	[  0]	JMP  	  9		3	; 	goto 41
		 38	[  0]	TGETV	  9	1	8	; slot9 = slot1[slot8]
		 39	[  0]	IST  	   		9	; if slot9
		 40	[  0]	JMP  	  9		1	; 	goto 42
		 41	[  0]	RET1 	  8		2	; return slot8
		 42	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, uv1"unknown"; slot7, slot8 = ipairs(slot5, uv1"unknown")
		 43	[  0]	ITERL	  7		-8	; uv1"unknown" = slot7; if slot7 != nil goto 36
		 44	[  0]	KPRI 	  4		0	; slot4 = nil
		 45	[  0]	RET1 	  4		2	; return slot4
		 46	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 47	[  0]	MOV  	  6		0	; slot6 = slot0
		 48	[  0]	CALL 	  4	2	2	; slot4 = uv2"unknown"(slot5)
		 49	[  0]	MULVV	  4	4	3	; slot4 = uv2"unknown" * slot3
		 50	[  0]	KPRI 	  5		0	; slot5 = nil
		 51	[  0]	GGET 	  6		3	; slot6 = _env["ipairs"]
		 52	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 53	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = ipairs(slot7)
		 54	[  0]	JMP  	  9		24	; 	goto 79
		 55	[  0]	ISF  	   		1	; if not slot1
		 56	[  0]	JMP  	 11		3	; 	goto 60
		 57	[  0]	TGETV	 11	1	10	; slot11 = slot1[slot10]
		 58	[  0]	IST  	   		11	; if slot11
		 59	[  0]	JMP  	 11		19	; 	goto 79
		 60	[  0]	MOV  	  5		10	; slot5 = slot10
		 61	[  0]	GGET 	 11		2	; slot11 = _env["math"]
		 62	[  0]	TGETS	 11	11	1	; slot11 = math.max
		 63	[  0]	KSHORT	 13		0	; slot13 = 0
		 64	[  0]	GGET 	 14		0	; slot14 = _env["tonumber"]
		 65	[  0]	TGETV	 16	2	10	; slot16 = uv0"unknown".MERC_CONTRACT_SYMBOL_WEIGHTS[slot10]
		 66	[  0]	IST  	   		16	; if slot16
		 67	[  0]	JMP  	 17		1	; 	goto 69
		 68	[  0]	KSHORT	 16		0	; slot16 = 0
		 69	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		 70	[  0]	IST  	   		14	; if tonumber
		 71	[  0]	JMP  	 15		1	; 	goto 73
		 72	[  0]	KSHORT	 14		0	; slot14 = 0
		 73	[  0]	CALL 	 11	2	3	; slot11 = math.max(slot12, slot13)
		 74	[  0]	SUBVV	  4	4	11	; slot4 = slot4 - math.max
		 75	[  0]	KSHORT	 11		0	; slot11 = 0
		 76	[  0]	ISGE 	  4		11	; if slot4 >= slot11
		 77	[  0]	JMP  	 11		1	; 	goto 79
		 78	[  0]	RET1 	 10		2	; return slot10
		 79	[  0]	ITERC	  9	3	3	; slot9, slot10, slot11 = ipairs, slot7, uv1"unknown"; slot9, slot10 = ipairs(slot7, uv1"unknown")
		 80	[  0]	ITERL	  9		-26	; uv1"unknown" = slot9; if slot9 != nil goto 55
		 81	[  0]	RET1 	  5		2	; return slot5
	180	[  0]	FNEW 	 33		137	; N/A:0-0: 1 args, 3 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			[grade] = normal,
			[rank] = 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  5	[  0]	TSETB	  2	1	1	; slot1[1] = slot2
		  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  7	[  0]	MOV  	  4		0	; slot4 = slot0
		  8	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  9	[  0]	TSETB	  2	1	2	; slot1[2] = slot2
		 10	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 11	[  0]	TGETB	  3	1	1	; slot3 = slot1[1]
		 12	[  0]	ISF  	   		3	; if not slot3
		 13	[  0]	JMP  	  4		7	; 	goto 21
		 14	[  0]	TGETB	  3	1	1	; slot3 = slot1[1]
		 15	[  0]	TGETB	  4	1	2	; slot4 = slot1[2]
		 16	[  0]	ISNEV	  3		4	; if slot3 ~= slot4
		 17	[  0]	JMP  	  3		3	; 	goto 21
		 18	[  0]	TGETB	  3	1	1	; slot3 = slot1[1]
		 19	[  0]	KPRI 	  4		2	; slot4 = true
		 20	[  0]	TSETV	  4	2	3	; slot2[slot3] = slot4
		 21	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 22	[  0]	MOV  	  5		0	; slot5 = slot0
		 23	[  0]	MOV  	  6		2	; slot6 = slot2
		 24	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown"(slot4, slot5)
		 25	[  0]	TSETB	  3	1	3	; slot1[3] = slot3
		 26	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 27	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 28	[  0]	KSHORT	  5		1	; slot5 = 1
		 29	[  0]	KSHORT	  6		3	; slot6 = 3
		 30	[  0]	KSHORT	  7		1	; slot7 = 1
		 31	[  0]	FORI 	  5		36	; for slot8 = slot5,slot6,slot7 else goto 68
		 32	[  0]	TGETV	  9	1	8	; slot9 = slot1[slot8]
		 33	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 34	[  0]	TGETV	 10	10	9	; slot10 = uv1"unknown"[slot9]
		 35	[  0]	IST  	   		10	; if slot10
		 36	[  0]	JMP  	 10		2	; 	goto 39
		 37	[  0]	KPRI 	 10		0	; slot10 = nil
		 38	[  0]	RET1 	 10		2	; return slot10
		 39	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 40	[  0]	TGETS	 10	10	7	; slot10 = uv2"unknown".rollForSpawnExcluding
		 41	[  0]	MOV  	 12		4	; slot12 = slot4
		 42	[  0]	MOV  	 13		0	; slot13 = slot0
		 43	[  0]	KSTR 	 14		6	; slot14 = "normal"
		 44	[  0]	KPRI 	 15		0	; slot15 = nil
		 45	[  0]	KPRI 	 16		1	; slot16 = false
		 46	[  0]	KPRI 	 17		2	; slot17 = true
		 47	[  0]	CALL 	 10	2	7	; slot10 = uv2"unknown".rollForSpawnExcluding(slot11, slot12, slot13, slot14, slot15, slot16)
		 48	[  0]	ISF  	   		10	; if not uv2"unknown".rollForSpawnExcluding
		 49	[  0]	JMP  	 11		3	; 	goto 53
		 50	[  0]	TGETS	 11	10	5	; slot11 = uv2"unknown".rollForSpawnExcluding.id
		 51	[  0]	IST  	   		11	; if uv2"unknown".rollForSpawnExcluding.id
		 52	[  0]	JMP  	 11		2	; 	goto 55
		 53	[  0]	KPRI 	 11		0	; slot11 = nil
		 54	[  0]	RET1 	 11		2	; return slot11
		 55	[  0]	GGET 	 11		4	; slot11 = _env["tostring"]
		 56	[  0]	TGETS	 13	10	5	; slot13 = uv2"unknown".rollForSpawnExcluding.id
		 57	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
		 58	[  0]	KPRI 	 12		2	; slot12 = true
		 59	[  0]	TSETV	 12	4	11	; slot4[tostring] = slot12
		 60	[  0]	TDUP 	 11		3	; slot11 = copy table#k3
		 61	[  0]	TSETS	  9	11	2	; slot11.sym = slot9
		 62	[  0]	TSETS	 10	11	1	; slot11.randomOption = uv2"unknown".rollForSpawnExcluding
		 63	[  0]	TNEW 	 12		3	; slot12 = new table( array: 3, dict: 1)
		 64	[  0]	TSETB	 10	12	1	; slot12[1] = uv2"unknown".rollForSpawnExcluding
		 65	[  0]	TSETS	 12	11	0	; slot11.randomOptions = slot12
		 66	[  0]	TSETV	 11	3	8	; slot3[slot8] = slot11
		 67	[  0]	FORL 	  5		-36	; slot8 = slot8 + slot7; if cmp(slot8, sign slot7,  slot6) goto 32
		 68	[  0]	RET1 	  3		2	; return slot3
	181	[  0]	TSETS	 33	2	138	; slot2.rollMercContractCandidates = slot33
	182	[  0]	FNEW 	 33		135	; N/A:0-0: 1 args, 3 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			[active] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		20	; slot1 = _env["tonumber"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 12	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		 15	[  0]	JMP  	  5		72	; 	goto 88
		 16	[  0]	TGETS	  6	5	19	; slot6 = slot5.key
		 17	[  0]	ISNES	  6		18	; if <unknown table>.key ~= "MercContract"
		 18	[  0]	JMP  	  6		69	; 	goto 88
		 19	[  0]	GGET 	  6		17	; slot6 = _env["math"]
		 20	[  0]	TGETS	  6	6	16	; slot6 = math.max
		 21	[  0]	KSHORT	  8		0	; slot8 = 0
		 22	[  0]	GGET 	  9		17	; slot9 = _env["math"]
		 23	[  0]	TGETS	  9	9	15	; slot9 = math.floor
		 24	[  0]	GGET 	 11		20	; slot11 = _env["tonumber"]
		 25	[  0]	TGETS	 13	5	14	; slot13 = slot5._mercContractUses
		 26	[  0]	IST  	   		13	; if <unknown table>._mercContractUses
		 27	[  0]	JMP  	 14		1	; 	goto 29
		 28	[  0]	KSHORT	 13		0	; slot13 = 0
		 29	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 30	[  0]	IST  	   		11	; if tonumber
		 31	[  0]	JMP  	 12		1	; 	goto 33
		 32	[  0]	KSHORT	 11		0	; slot11 = 0
		 33	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 34	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
		 35	[  0]	TGETS	  7	5	13	; slot7 = slot5._mercContractUsedWave
		 36	[  0]	IST  	   		7	; if <unknown table>._mercContractUsedWave
		 37	[  0]	JMP  	  8		1	; 	goto 39
		 38	[  0]	KSHORT	  7		65535	; slot7 = 65535
		 39	[  0]	ISEQV	  7		1	; if slot7 == slot1
		 40	[  0]	JMP  	  7		2	; 	goto 43
		 41	[  0]	KPRI 	  7		1	; slot7 = false
		 42	[  0]	JMP  	  8		1	; 	goto 44
		 43	[  0]	KPRI 	  7		2	; slot7 = true
		 44	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 45	[  0]	TGETS	  8	8	12	; slot8 = uv2"unknown".MERC_CONTRACT_MAX_USES
		 46	[  0]	ISLE 	  8		6	; if uv2"unknown".MERC_CONTRACT_MAX_USES <= math.max
		 47	[  0]	JMP  	  8		2	; 	goto 50
		 48	[  0]	KPRI 	  8		1	; slot8 = false
		 49	[  0]	JMP  	  9		1	; 	goto 51
		 50	[  0]	KPRI 	  8		2	; slot8 = true
		 51	[  0]	TGETS	  9	5	11	; slot9 = slot5._mercContractPending
		 52	[  0]	ISF  	   		9	; if not <unknown table>._mercContractPending
		 53	[  0]	JMP  	 10		6	; 	goto 60
		 54	[  0]	TGETS	 10	9	10	; slot10 = <unknown table>._mercContractPending.waveId
		 55	[  0]	ISEQV	 10		1	; if <unknown table>._mercContractPending.waveId == slot1
		 56	[  0]	JMP  	 10		3	; 	goto 60
		 57	[  0]	KPRI 	 10		0	; slot10 = nil
		 58	[  0]	TSETS	 10	5	11	; slot5._mercContractPending = slot10
		 59	[  0]	KPRI 	  9		0	; slot9 = nil
		 60	[  0]	TDUP 	 10		9	; slot10 = copy table#k9
		 61	[  0]	IST  	   		7	; if slot7
		 62	[  0]	JMP  	 11		2	; 	goto 65
		 63	[  0]	NOT  	 11		8	; slot11 = not slot8
		 64	[  0]	JMP  	 12		3	; 	goto 68
		 65	[  0]	KPRI 	 11		1	; slot11 = false
		 66	[  0]	JMP  	 12		1	; 	goto 68
		 67	[  0]	KPRI 	 11		2	; slot11 = true
		 68	[  0]	TSETS	 11	10	8	; slot10.available = slot11
		 69	[  0]	TSETS	  7	10	7	; slot10.used = slot7
		 70	[  0]	TSETS	  6	10	6	; slot10.uses = math.max
		 71	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 72	[  0]	TGETS	 11	11	5	; slot11 = uv2"unknown".getMercContractRemainingUses
		 73	[  0]	MOV  	 13		5	; slot13 = slot5
		 74	[  0]	CALL 	 11	2	2	; slot11 = uv2"unknown".getMercContractRemainingUses(slot12)
		 75	[  0]	TSETS	 11	10	4	; slot10.remainingUses = uv2"unknown".getMercContractRemainingUses
		 76	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 77	[  0]	TGETS	 11	11	3	; slot11 = uv2"unknown".MERC_CONTRACT_COST
		 78	[  0]	TSETS	 11	10	2	; slot10.cost = uv2"unknown".MERC_CONTRACT_COST
		 79	[  0]	ISF  	   		9	; if not slot9
		 80	[  0]	JMP  	 11		3	; 	goto 84
		 81	[  0]	TGETS	 11	9	1	; slot11 = slot9.candidates
		 82	[  0]	IST  	   		11	; if <unknown table>.candidates
		 83	[  0]	JMP  	 12		1	; 	goto 85
		 84	[  0]	KPRI 	 11		0	; slot11 = nil
		 85	[  0]	TSETS	 11	10	1	; slot10.candidates = slot11
		 86	[  0]	TSETS	  5	10	0	; slot10.instance = slot5
		 87	[  0]	RET1 	 10		2	; return slot10
		 88	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 89	[  0]	ITERL	  5		-74	; slot4 = slot5; if slot5 != nil goto 16
		 90	[  0]	KPRI 	  2		0	; slot2 = nil
		 91	[  0]	RET1 	  2		2	; return slot2
	183	[  0]	TSETS	 33	2	136	; slot2.getMercContractState = slot33
	184	[  0]	FNEW 	 33		133	; N/A:0-0: 2 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["tonumber"]
		  2	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  3	[  0]	JMP  	  4		1	; 	goto 5
		  4	[  0]	KSHORT	  4		0	; slot4 = 0
		  5	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  6	[  0]	IST  	   		2	; if slot2
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	KSHORT	  2		0	; slot2 = 0
		  9	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 10	[  0]	TGETS	  3	3	7	; slot3 = uv0"unknown".getMercContractState
		 11	[  0]	MOV  	  5		2	; slot5 = slot2
		 12	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown".getMercContractState(slot4)
		 13	[  0]	ISF  	   		3	; if not uv0"unknown".getMercContractState
		 14	[  0]	JMP  	  4		6	; 	goto 21
		 15	[  0]	TGETS	  4	3	6	; slot4 = uv0"unknown".getMercContractState.available
		 16	[  0]	ISF  	   		4	; if not uv0"unknown".getMercContractState.available
		 17	[  0]	JMP  	  5		3	; 	goto 21
		 18	[  0]	TGETS	  4	3	5	; slot4 = uv0"unknown".getMercContractState.instance
		 19	[  0]	IST  	   		4	; if uv0"unknown".getMercContractState.instance
		 20	[  0]	JMP  	  4		3	; 	goto 24
		 21	[  0]	KPRI 	  4		0	; slot4 = nil
		 22	[  0]	KPRI 	  5		1	; slot5 = false
		 23	[  0]	RET  	  4		3	; return slot4, slot5
		 24	[  0]	TGETS	  4	3	5	; slot4 = uv0"unknown".getMercContractState.instance
		 25	[  0]	TGETS	  4	4	4	; slot4 = uv0"unknown".getMercContractState.instance._mercContractPending
		 26	[  0]	ISF  	   		4	; if not uv0"unknown".getMercContractState.instance._mercContractPending
		 27	[  0]	JMP  	  5		9	; 	goto 37
		 28	[  0]	TGETS	  5	4	3	; slot5 = uv0"unknown".getMercContractState.instance._mercContractPending.waveId
		 29	[  0]	ISNEV	  5		2	; if uv0"unknown".getMercContractState.instance._mercContractPending.waveId ~= slot2
		 30	[  0]	JMP  	  5		6	; 	goto 37
		 31	[  0]	TGETS	  5	4	2	; slot5 = uv0"unknown".getMercContractState.instance._mercContractPending.candidates
		 32	[  0]	ISF  	   		5	; if not uv0"unknown".getMercContractState.instance._mercContractPending.candidates
		 33	[  0]	JMP  	  6		3	; 	goto 37
		 34	[  0]	TGETS	  5	4	2	; slot5 = uv0"unknown".getMercContractState.instance._mercContractPending.candidates
		 35	[  0]	KPRI 	  6		1	; slot6 = false
		 36	[  0]	RET  	  5		3	; return uv0"unknown".getMercContractState.instance._mercContractPending.candidates, slot6
		 37	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 38	[  0]	TGETS	  5	5	1	; slot5 = uv0"unknown".rollMercContractCandidates
		 39	[  0]	MOV  	  7		1	; slot7 = slot1
		 40	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown".rollMercContractCandidates(slot6)
		 41	[  0]	IST  	   		5	; if uv0"unknown".rollMercContractCandidates
		 42	[  0]	JMP  	  6		3	; 	goto 46
		 43	[  0]	KPRI 	  6		0	; slot6 = nil
		 44	[  0]	KPRI 	  7		1	; slot7 = false
		 45	[  0]	RET  	  6		3	; return slot6, slot7
		 46	[  0]	TGETS	  6	3	5	; slot6 = uv0"unknown".getMercContractState.instance
		 47	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 48	[  0]	TSETS	  2	7	3	; slot7.waveId = slot2
		 49	[  0]	TSETS	  5	7	2	; slot7.candidates = uv0"unknown".rollMercContractCandidates
		 50	[  0]	TSETS	  7	6	4	; uv0"unknown".getMercContractState.instance._mercContractPending = slot7
		 51	[  0]	MOV  	  6		5	; slot6 = uv0"unknown".rollMercContractCandidates
		 52	[  0]	KPRI 	  7		2	; slot7 = true
		 53	[  0]	RET  	  6		3	; return uv0"unknown".rollMercContractCandidates, slot7
	185	[  0]	TSETS	 33	2	134	; slot2.beginMercContract = slot33
	186	[  0]	FNEW 	 33		132	; N/A:0-0: 3 args, 1 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		7	; slot3 = _env["tonumber"]
		  2	[  0]	ISTC 	  5		0	; slot5 = slot0; if slot0
		  3	[  0]	JMP  	  5		1	; 	goto 5
		  4	[  0]	KSHORT	  5		0	; slot5 = 0
		  5	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		  6	[  0]	IST  	   		3	; if tonumber
		  7	[  0]	JMP  	  4		1	; 	goto 9
		  8	[  0]	KSHORT	  3		0	; slot3 = 0
		  9	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 10	[  0]	TGETS	  4	4	6	; slot4 = uv0"unknown".getMercContractState
		 11	[  0]	MOV  	  6		3	; slot6 = slot3
		 12	[  0]	CALL 	  4	2	2	; slot4 = uv0"unknown".getMercContractState(slot5)
		 13	[  0]	ISFC 	  5		4	; slot5 = uv0"unknown".getMercContractState; if not uv0"unknown".getMercContractState
		 14	[  0]	JMP  	  5		1	; 	goto 16
		 15	[  0]	TGETS	  5	4	5	; slot5 = uv0"unknown".getMercContractState.instance
		 16	[  0]	ISFC 	  6		5	; slot6 = uv0"unknown".getMercContractState.instance; if not uv0"unknown".getMercContractState.instance
		 17	[  0]	JMP  	  6		1	; 	goto 19
		 18	[  0]	TGETS	  6	5	4	; slot6 = uv0"unknown".getMercContractState.instance._mercContractPending
		 19	[  0]	ISF  	   		4	; if not uv0"unknown".getMercContractState
		 20	[  0]	JMP  	  7		8	; 	goto 29
		 21	[  0]	TGETS	  7	4	3	; slot7 = uv0"unknown".getMercContractState.available
		 22	[  0]	ISF  	   		7	; if not uv0"unknown".getMercContractState.available
		 23	[  0]	JMP  	  8		5	; 	goto 29
		 24	[  0]	ISF  	   		6	; if not uv0"unknown".getMercContractState.instance._mercContractPending
		 25	[  0]	JMP  	  7		3	; 	goto 29
		 26	[  0]	TGETS	  7	6	2	; slot7 = uv0"unknown".getMercContractState.instance._mercContractPending.waveId
		 27	[  0]	ISEQV	  7		3	; if uv0"unknown".getMercContractState.instance._mercContractPending.waveId == slot3
		 28	[  0]	JMP  	  7		2	; 	goto 31
		 29	[  0]	KPRI 	  7		0	; slot7 = nil
		 30	[  0]	RET1 	  7		2	; return slot7
		 31	[  0]	ISF  	   		1	; if not slot1
		 32	[  0]	JMP  	  7		4	; 	goto 37
		 33	[  0]	ISEQV	  5		1	; if uv0"unknown".getMercContractState.instance == slot1
		 34	[  0]	JMP  	  7		2	; 	goto 37
		 35	[  0]	KPRI 	  7		0	; slot7 = nil
		 36	[  0]	RET1 	  7		2	; return slot7
		 37	[  0]	ISF  	   		2	; if not slot2
		 38	[  0]	JMP  	  7		18	; 	goto 57
		 39	[  0]	KPRI 	  7		1	; slot7 = false
		 40	[  0]	GGET 	  8		1	; slot8 = _env["ipairs"]
		 41	[  0]	TGETS	 10	6	0	; slot10 = uv0"unknown".getMercContractState.instance._mercContractPending.candidates
		 42	[  0]	IST  	   		10	; if uv0"unknown".getMercContractState.instance._mercContractPending.candidates
		 43	[  0]	JMP  	 11		1	; 	goto 45
		 44	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		 45	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
		 46	[  0]	JMP  	 11		4	; 	goto 51
		 47	[  0]	ISNEV	 12		2	; if slot12 ~= slot2
		 48	[  0]	JMP  	 13		2	; 	goto 51
		 49	[  0]	KPRI 	  7		2	; slot7 = true
		 50	[  0]	JMP  	  8		2	; 	goto 53
		 51	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, slot10; slot11, slot12 = ipairs(slot9, slot10)
		 52	[  0]	ITERL	 11		-6	; slot10 = slot11; if slot11 != nil goto 47
		 53	[  0]	IST  	   		7	; if slot7
		 54	[  0]	JMP  	  8		2	; 	goto 57
		 55	[  0]	KPRI 	  8		0	; slot8 = nil
		 56	[  0]	RET1 	  8		2	; return slot8
		 57	[  0]	MOV  	  7		4	; slot7 = uv0"unknown".getMercContractState
		 58	[  0]	MOV  	  8		5	; slot8 = uv0"unknown".getMercContractState.instance
		 59	[  0]	MOV  	  9		6	; slot9 = uv0"unknown".getMercContractState.instance._mercContractPending
		 60	[  0]	MOV  	 10		3	; slot10 = slot3
		 61	[  0]	RET  	  7		5	; return uv0"unknown".getMercContractState, uv0"unknown".getMercContractState.instance, uv0"unknown".getMercContractState.instance._mercContractPending, slot10
	187	[  0]	FNEW 	 34		130	; N/A:0-0: 3 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	MOV  	  5		0	; slot5 = slot0
		  3	[  0]	MOV  	  6		1	; slot6 = slot1
		  4	[  0]	MOV  	  7		2	; slot7 = slot2
		  5	[  0]	CALL 	  3	2	4	; slot3 = uv0"unknown"(slot4, slot5, slot6)
		  6	[  0]	ISNEP	  3		0	; if slot3 ~= nil
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  3		1	; slot3 = false
		  9	[  0]	JMP  	  4		1	; 	goto 11
		 10	[  0]	KPRI 	  3		2	; slot3 = true
		 11	[  0]	RET1 	  3		2	; return slot3
	188	[  0]	TSETS	 34	2	131	; slot2.canCompleteMercContract = slot34
	189	[  0]	FNEW 	 34		128	; N/A:0-0: 3 args, 4 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	MOV  	  5		0	; slot5 = slot0
		  3	[  0]	MOV  	  6		1	; slot6 = slot1
		  4	[  0]	MOV  	  7		2	; slot7 = slot2
		  5	[  0]	CALL 	  3	5	4	; slot3, slot4, slot5, slot6 = uv0"unknown"(slot4, slot5, slot6)
		  6	[  0]	IST  	   		3	; if slot3
		  7	[  0]	JMP  	  7		2	; 	goto 10
		  8	[  0]	KPRI 	  7		1	; slot7 = false
		  9	[  0]	RET1 	  7		2	; return slot7
		 10	[  0]	GGET 	  7		9	; slot7 = _env["math"]
		 11	[  0]	TGETS	  7	7	8	; slot7 = math.max
		 12	[  0]	KSHORT	  9		0	; slot9 = 0
		 13	[  0]	GGET 	 10		9	; slot10 = _env["math"]
		 14	[  0]	TGETS	 10	10	7	; slot10 = math.floor
		 15	[  0]	GGET 	 12		6	; slot12 = _env["tonumber"]
		 16	[  0]	TGETS	 14	4	10	; slot14 = slot4._mercContractUses
		 17	[  0]	IST  	   		14	; if <unknown table>._mercContractUses
		 18	[  0]	JMP  	 15		1	; 	goto 20
		 19	[  0]	KSHORT	 14		0	; slot14 = 0
		 20	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 21	[  0]	IST  	   		12	; if tonumber
		 22	[  0]	JMP  	 13		1	; 	goto 24
		 23	[  0]	KSHORT	 12		0	; slot12 = 0
		 24	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 25	[  0]	CALLM	  7	2	1	; slot7 = math.max(slot8, ...MULTRES)
		 26	[  0]	ADDVN	  7	7	0	; slot7 = math.max + 1
		 27	[  0]	TSETS	  7	4	10	; slot4._mercContractUses = slot7
		 28	[  0]	TSETS	  6	4	5	; slot4._mercContractUsedWave = slot6
		 29	[  0]	KPRI 	  7		0	; slot7 = nil
		 30	[  0]	TSETS	  7	4	4	; slot4._mercContractPending = slot7
		 31	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 32	[  0]	MOV  	  9		4	; slot9 = slot4
		 33	[  0]	CALL 	  7	1	2	;  = uv1"unknown"(slot8)
		 34	[  0]	TGETS	  7	4	10	; slot7 = slot4._mercContractUses
		 35	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 36	[  0]	TGETS	  8	8	3	; slot8 = uv2"unknown".MERC_CONTRACT_MAX_USES
		 37	[  0]	ISGE 	  7		8	; if <unknown table>._mercContractUses >= uv2"unknown".MERC_CONTRACT_MAX_USES
		 38	[  0]	JMP  	  7		2	; 	goto 41
		 39	[  0]	KPRI 	  7		2	; slot7 = true
		 40	[  0]	RET1 	  7		2	; return slot7
		 41	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 42	[  0]	TGETS	  7	7	2	; slot7 = uv3"unknown".active
		 43	[  0]	LEN  	  7		7	; slot7 = #uv3"unknown".active
		 44	[  0]	KSHORT	  8		1	; slot8 = 1
		 45	[  0]	KSHORT	  9		65535	; slot9 = 65535
		 46	[  0]	FORI 	  7		14	; for math.floor = slot7,slot8,slot9 else goto 61
		 47	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		 48	[  0]	TGETS	 11	11	2	; slot11 = uv3"unknown".active
		 49	[  0]	TGETV	 11	11	10	; slot11 = uv3"unknown".active[slot10]
		 50	[  0]	ISNEV	 11		4	; if slot11 ~= slot4
		 51	[  0]	JMP  	 11		8	; 	goto 60
		 52	[  0]	GGET 	 11		1	; slot11 = _env["table"]
		 53	[  0]	TGETS	 11	11	0	; slot11 = table.remove
		 54	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		 55	[  0]	TGETS	 13	13	2	; slot13 = uv3"unknown".active
		 56	[  0]	MOV  	 14		10	; slot14 = slot10
		 57	[  0]	CALL 	 11	1	3	;  = table.remove(slot12, uv3"unknown".active)
		 58	[  0]	KPRI 	 11		2	; slot11 = true
		 59	[  0]	RET1 	 11		2	; return slot11
		 60	[  0]	FORL 	  7		-14	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 47
		 61	[  0]	KPRI 	  7		1	; slot7 = false
		 62	[  0]	RET1 	  7		2	; return slot7
	190	[  0]	TSETS	 34	2	129	; slot2.completeMercContract = slot34
	191	[  0]	FNEW 	 34		126	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			[active] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		10	; slot1 = _env["tonumber"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 12	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		 15	[  0]	JMP  	  5		34	; 	goto 50
		 16	[  0]	TGETS	  6	5	9	; slot6 = slot5.key
		 17	[  0]	ISNES	  6		8	; if <unknown table>.key ~= "BanStamp"
		 18	[  0]	JMP  	  6		31	; 	goto 50
		 19	[  0]	TGETS	  6	5	7	; slot6 = slot5._banStampPendingWave
		 20	[  0]	ISNEV	  6		1	; if <unknown table>._banStampPendingWave ~= slot1
		 21	[  0]	JMP  	  6		3	; 	goto 25
		 22	[  0]	TGETS	  6	5	6	; slot6 = slot5._banStampPendingSym
		 23	[  0]	IST  	   		6	; if <unknown table>._banStampPendingSym
		 24	[  0]	JMP  	  7		1	; 	goto 26
		 25	[  0]	KPRI 	  6		0	; slot6 = nil
		 26	[  0]	TDUP 	  7		5	; slot7 = copy table#k5
		 27	[  0]	TGETS	  8	5	4	; slot8 = slot5._banStampUsedWave
		 28	[  0]	IST  	   		8	; if <unknown table>._banStampUsedWave
		 29	[  0]	JMP  	  9		1	; 	goto 31
		 30	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 31	[  0]	ISNEV	  8		1	; if slot8 ~= slot1
		 32	[  0]	JMP  	  8		2	; 	goto 35
		 33	[  0]	KPRI 	  8		1	; slot8 = false
		 34	[  0]	JMP  	  9		1	; 	goto 36
		 35	[  0]	KPRI 	  8		2	; slot8 = true
		 36	[  0]	TSETS	  8	7	3	; slot7.available = slot8
		 37	[  0]	TSETS	  6	7	2	; slot7.pendingSymbol = slot6
		 38	[  0]	TGETS	  8	5	4	; slot8 = slot5._banStampUsedWave
		 39	[  0]	IST  	   		8	; if <unknown table>._banStampUsedWave
		 40	[  0]	JMP  	  9		1	; 	goto 42
		 41	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 42	[  0]	ISEQV	  8		1	; if slot8 == slot1
		 43	[  0]	JMP  	  8		2	; 	goto 46
		 44	[  0]	KPRI 	  8		1	; slot8 = false
		 45	[  0]	JMP  	  9		1	; 	goto 47
		 46	[  0]	KPRI 	  8		2	; slot8 = true
		 47	[  0]	TSETS	  8	7	1	; slot7.used = slot8
		 48	[  0]	TSETS	  5	7	0	; slot7.instance = slot5
		 49	[  0]	RET1 	  7		2	; return slot7
		 50	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 51	[  0]	ITERL	  5		-36	; slot4 = slot5; if slot5 != nil goto 16
		 52	[  0]	KPRI 	  2		0	; slot2 = nil
		 53	[  0]	RET1 	  2		2	; return slot2
	192	[  0]	TSETS	 34	2	127	; slot2.getBanStampState = slot34
	193	[  0]	FNEW 	 34		124	; N/A:0-0: 2 args, 4 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
		  3	[  0]	IST  	   		2	; if slot2
		  4	[  0]	JMP  	  2		2	; 	goto 7
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	RET1 	  2		2	; return slot2
		  7	[  0]	GGET 	  2		12	; slot2 = _env["tonumber"]
		  8	[  0]	ISF  	   		1	; if not slot1
		  9	[  0]	JMP  	  4		3	; 	goto 13
		 10	[  0]	TGETS	  4	1	11	; slot4 = slot1.waveId
		 11	[  0]	IST  	   		4	; if <unknown table>.waveId
		 12	[  0]	JMP  	  5		1	; 	goto 14
		 13	[  0]	KSHORT	  4		0	; slot4 = 0
		 14	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 15	[  0]	IST  	   		2	; if slot2
		 16	[  0]	JMP  	  3		1	; 	goto 18
		 17	[  0]	KSHORT	  2		0	; slot2 = 0
		 18	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 19	[  0]	MOV  	  5		2	; slot5 = slot2
		 20	[  0]	CALL 	  3	1	2	;  = uv1"unknown"(slot4)
		 21	[  0]	ISFC 	  3		1	; slot3 = slot1; if not slot1
		 22	[  0]	JMP  	  3		1	; 	goto 24
		 23	[  0]	TGETS	  3	1	10	; slot3 = slot1.grid
		 24	[  0]	ISF  	   		3	; if not <unknown table>.grid
		 25	[  0]	JMP  	  4		27	; 	goto 53
		 26	[  0]	KPRI 	  4		1	; slot4 = false
		 27	[  0]	KSHORT	  5		1	; slot5 = 1
		 28	[  0]	KSHORT	  6		3	; slot6 = 3
		 29	[  0]	KSHORT	  7		1	; slot7 = 1
		 30	[  0]	FORI 	  5		18	; for slot8 = slot5,slot6,slot7 else goto 49
		 31	[  0]	KSHORT	  9		1	; slot9 = 1
		 32	[  0]	KSHORT	 10		3	; slot10 = 3
		 33	[  0]	KSHORT	 11		1	; slot11 = 1
		 34	[  0]	FORI 	  9		10	; for slot12 = slot9,slot10,slot11 else goto 45
		 35	[  0]	TGETV	 13	3	8	; slot13 = <unknown table>.grid[slot8]
		 36	[  0]	ISF  	   		13	; if not slot13
		 37	[  0]	JMP  	 14		6	; 	goto 44
		 38	[  0]	TGETV	 13	3	8	; slot13 = <unknown table>.grid[slot8]
		 39	[  0]	TGETV	 13	13	12	; slot13 = slot13[slot12]
		 40	[  0]	ISNEV	 13		0	; if slot13 ~= slot0
		 41	[  0]	JMP  	 13		2	; 	goto 44
		 42	[  0]	KPRI 	  4		2	; slot4 = true
		 43	[  0]	JMP  	  9		1	; 	goto 45
		 44	[  0]	FORL 	  9		-10	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 35
		 45	[  0]	ISF  	   		4	; if not slot4
		 46	[  0]	JMP  	  9		1	; 	goto 48
		 47	[  0]	JMP  	  5		1	; 	goto 49
		 48	[  0]	FORL 	  5		-18	; slot8 = slot8 + slot7; if cmp(slot8, sign slot7,  slot6) goto 31
		 49	[  0]	IST  	   		4	; if slot4
		 50	[  0]	JMP  	  5		2	; 	goto 53
		 51	[  0]	KPRI 	  5		1	; slot5 = false
		 52	[  0]	RET1 	  5		2	; return slot5
		 53	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 54	[  0]	MOV  	  6		2	; slot6 = slot2
		 55	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv2"unknown"(slot5)
		 56	[  0]	JMP  	  7		36	; 	goto 93
		 57	[  0]	TGETS	  8	7	9	; slot8 = slot7.key
		 58	[  0]	ISNES	  8		8	; if <unknown table>.key ~= "BanStamp"
		 59	[  0]	JMP  	  8		33	; 	goto 93
		 60	[  0]	TGETS	  8	7	7	; slot8 = slot7._banStampUsedWave
		 61	[  0]	IST  	   		8	; if <unknown table>._banStampUsedWave
		 62	[  0]	JMP  	  9		1	; 	goto 64
		 63	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 64	[  0]	ISEQV	  8		2	; if slot8 == slot2
		 65	[  0]	JMP  	  8		27	; 	goto 93
		 66	[  0]	TSETS	  2	7	7	; slot7._banStampUsedWave = slot2
		 67	[  0]	TSETS	  2	7	6	; slot7._banStampPendingWave = slot2
		 68	[  0]	TSETS	  0	7	5	; slot7._banStampPendingSym = slot0
		 69	[  0]	GGET 	  8		3	; slot8 = _env["love"]
		 70	[  0]	TGETS	  8	8	2	; slot8 = love.timer
		 71	[  0]	ISF  	   		8	; if not love.timer
		 72	[  0]	JMP  	  9		11	; 	goto 84
		 73	[  0]	GGET 	  8		3	; slot8 = _env["love"]
		 74	[  0]	TGETS	  8	8	2	; slot8 = love.timer
		 75	[  0]	TGETS	  8	8	1	; slot8 = love.timer.getTime
		 76	[  0]	ISF  	   		8	; if not love.timer.getTime
		 77	[  0]	JMP  	  9		6	; 	goto 84
		 78	[  0]	GGET 	  8		3	; slot8 = _env["love"]
		 79	[  0]	TGETS	  8	8	2	; slot8 = love.timer
		 80	[  0]	TGETS	  8	8	1	; slot8 = love.timer.getTime
		 81	[  0]	CALL 	  8	2	1	; slot8 = love.timer.getTime()
		 82	[  0]	IST  	   		8	; if love.timer.getTime
		 83	[  0]	JMP  	  9		1	; 	goto 85
		 84	[  0]	KSHORT	  8		0	; slot8 = 0
		 85	[  0]	TSETS	  8	7	4	; slot7._banStampSelectedT = slot8
		 86	[  0]	KPRI 	  8		2	; slot8 = true
		 87	[  0]	TSETS	  8	7	0	; slot7._uiTrigger = slot8
		 88	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 89	[  0]	MOV  	 10		7	; slot10 = slot7
		 90	[  0]	CALL 	  8	1	2	;  = uv3"unknown"(slot9)
		 91	[  0]	KPRI 	  8		2	; slot8 = true
		 92	[  0]	RET1 	  8		2	; return slot8
		 93	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv2"unknown", slot5, slot6; slot7 = uv2"unknown"(slot5, slot6)
		 94	[  0]	ITERL	  7		-38	; slot6 = slot7; if slot7 != nil goto 57
		 95	[  0]	KPRI 	  4		1	; slot4 = false
		 96	[  0]	RET1 	  4		2	; return slot4
	194	[  0]	TSETS	 34	2	125	; slot2.selectBanStampSymbol = slot34
	195	[  0]	FNEW 	 34		122	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			[available] = true,
			[active] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		6	; slot1 = _env["tonumber"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 12	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		 15	[  0]	JMP  	  5		8	; 	goto 24
		 16	[  0]	TGETS	  6	5	5	; slot6 = slot5.key
		 17	[  0]	ISNES	  6		4	; if <unknown table>.key ~= "OldCrown"
		 18	[  0]	JMP  	  6		5	; 	goto 24
		 19	[  0]	TDUP 	  6		3	; slot6 = copy table#k3
		 20	[  0]	TGETS	  7	5	2	; slot7 = slot5._oldCrownTargetSym
		 21	[  0]	TSETS	  7	6	1	; slot6.selectedSymbol = <unknown table>._oldCrownTargetSym
		 22	[  0]	TSETS	  5	6	0	; slot6.instance = slot5
		 23	[  0]	RET1 	  6		2	; return slot6
		 24	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 25	[  0]	ITERL	  5		-10	; slot4 = slot5; if slot5 != nil goto 16
		 26	[  0]	KPRI 	  2		0	; slot2 = nil
		 27	[  0]	RET1 	  2		2	; return slot2
	196	[  0]	TSETS	 34	2	123	; slot2.getOldCrownState = slot34
	197	[  0]	FNEW 	 34		120	; N/A:0-0: 2 args, 4 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETV	  2	2	0	; slot2 = uv0"unknown"[slot0]
		  3	[  0]	IST  	   		2	; if slot2
		  4	[  0]	JMP  	  2		2	; 	goto 7
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	RET1 	  2		2	; return slot2
		  7	[  0]	GGET 	  2		10	; slot2 = _env["tonumber"]
		  8	[  0]	ISF  	   		1	; if not slot1
		  9	[  0]	JMP  	  4		3	; 	goto 13
		 10	[  0]	TGETS	  4	1	9	; slot4 = slot1.waveId
		 11	[  0]	IST  	   		4	; if <unknown table>.waveId
		 12	[  0]	JMP  	  5		1	; 	goto 14
		 13	[  0]	KSHORT	  4		0	; slot4 = 0
		 14	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 15	[  0]	IST  	   		2	; if slot2
		 16	[  0]	JMP  	  3		1	; 	goto 18
		 17	[  0]	KSHORT	  2		0	; slot2 = 0
		 18	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 19	[  0]	MOV  	  5		2	; slot5 = slot2
		 20	[  0]	CALL 	  3	1	2	;  = uv1"unknown"(slot4)
		 21	[  0]	ISFC 	  3		1	; slot3 = slot1; if not slot1
		 22	[  0]	JMP  	  3		1	; 	goto 24
		 23	[  0]	TGETS	  3	1	8	; slot3 = slot1.grid
		 24	[  0]	ISF  	   		3	; if not <unknown table>.grid
		 25	[  0]	JMP  	  4		27	; 	goto 53
		 26	[  0]	KPRI 	  4		1	; slot4 = false
		 27	[  0]	KSHORT	  5		1	; slot5 = 1
		 28	[  0]	KSHORT	  6		3	; slot6 = 3
		 29	[  0]	KSHORT	  7		1	; slot7 = 1
		 30	[  0]	FORI 	  5		18	; for slot8 = slot5,slot6,slot7 else goto 49
		 31	[  0]	KSHORT	  9		1	; slot9 = 1
		 32	[  0]	KSHORT	 10		3	; slot10 = 3
		 33	[  0]	KSHORT	 11		1	; slot11 = 1
		 34	[  0]	FORI 	  9		10	; for slot12 = slot9,slot10,slot11 else goto 45
		 35	[  0]	TGETV	 13	3	8	; slot13 = <unknown table>.grid[slot8]
		 36	[  0]	ISF  	   		13	; if not slot13
		 37	[  0]	JMP  	 14		6	; 	goto 44
		 38	[  0]	TGETV	 13	3	8	; slot13 = <unknown table>.grid[slot8]
		 39	[  0]	TGETV	 13	13	12	; slot13 = slot13[slot12]
		 40	[  0]	ISNEV	 13		0	; if slot13 ~= slot0
		 41	[  0]	JMP  	 13		2	; 	goto 44
		 42	[  0]	KPRI 	  4		2	; slot4 = true
		 43	[  0]	JMP  	  9		1	; 	goto 45
		 44	[  0]	FORL 	  9		-10	; slot12 = slot12 + slot11; if cmp(slot12, sign slot11,  slot10) goto 35
		 45	[  0]	ISF  	   		4	; if not slot4
		 46	[  0]	JMP  	  9		1	; 	goto 48
		 47	[  0]	JMP  	  5		1	; 	goto 49
		 48	[  0]	FORL 	  5		-18	; slot8 = slot8 + slot7; if cmp(slot8, sign slot7,  slot6) goto 31
		 49	[  0]	IST  	   		4	; if slot4
		 50	[  0]	JMP  	  5		2	; 	goto 53
		 51	[  0]	KPRI 	  5		1	; slot5 = false
		 52	[  0]	RET1 	  5		2	; return slot5
		 53	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 54	[  0]	MOV  	  6		2	; slot6 = slot2
		 55	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv2"unknown"(slot5)
		 56	[  0]	JMP  	  7		28	; 	goto 85
		 57	[  0]	TGETS	  8	7	7	; slot8 = slot7.key
		 58	[  0]	ISNES	  8		6	; if <unknown table>.key ~= "OldCrown"
		 59	[  0]	JMP  	  8		25	; 	goto 85
		 60	[  0]	TSETS	  0	7	5	; slot7._oldCrownTargetSym = slot0
		 61	[  0]	GGET 	  8		3	; slot8 = _env["love"]
		 62	[  0]	TGETS	  8	8	2	; slot8 = love.timer
		 63	[  0]	ISF  	   		8	; if not love.timer
		 64	[  0]	JMP  	  9		11	; 	goto 76
		 65	[  0]	GGET 	  8		3	; slot8 = _env["love"]
		 66	[  0]	TGETS	  8	8	2	; slot8 = love.timer
		 67	[  0]	TGETS	  8	8	1	; slot8 = love.timer.getTime
		 68	[  0]	ISF  	   		8	; if not love.timer.getTime
		 69	[  0]	JMP  	  9		6	; 	goto 76
		 70	[  0]	GGET 	  8		3	; slot8 = _env["love"]
		 71	[  0]	TGETS	  8	8	2	; slot8 = love.timer
		 72	[  0]	TGETS	  8	8	1	; slot8 = love.timer.getTime
		 73	[  0]	CALL 	  8	2	1	; slot8 = love.timer.getTime()
		 74	[  0]	IST  	   		8	; if love.timer.getTime
		 75	[  0]	JMP  	  9		1	; 	goto 77
		 76	[  0]	KSHORT	  8		0	; slot8 = 0
		 77	[  0]	TSETS	  8	7	4	; slot7._oldCrownSelectedT = slot8
		 78	[  0]	KPRI 	  8		2	; slot8 = true
		 79	[  0]	TSETS	  8	7	0	; slot7._uiTrigger = slot8
		 80	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 81	[  0]	MOV  	 10		7	; slot10 = slot7
		 82	[  0]	CALL 	  8	1	2	;  = uv3"unknown"(slot9)
		 83	[  0]	KPRI 	  8		2	; slot8 = true
		 84	[  0]	RET1 	  8		2	; return slot8
		 85	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv2"unknown", slot5, slot6; slot7 = uv2"unknown"(slot5, slot6)
		 86	[  0]	ITERL	  7		-30	; slot6 = slot7; if slot7 != nil goto 57
		 87	[  0]	KPRI 	  4		1	; slot4 = false
		 88	[  0]	RET1 	  4		2	; return slot4
	198	[  0]	TSETS	 34	2	121	; slot2.selectOldCrownSymbol = slot34
	199	[  0]	FNEW 	 34		119	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	7	; slot1 = slot0.key
		  4	[  0]	ISEQS	  1		6	; if <unknown table>.key == "CoinSack"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	GGET 	  1		5	; slot1 = _env["math"]
		  9	[  0]	TGETS	  1	1	4	; slot1 = math.max
		 10	[  0]	KSHORT	  3		0	; slot3 = 0
		 11	[  0]	GGET 	  4		3	; slot4 = _env["tonumber"]
		 12	[  0]	TGETS	  6	0	2	; slot6 = slot0._coinSackBanked
		 13	[  0]	IST  	   		6	; if <unknown table>._coinSackBanked
		 14	[  0]	JMP  	  7		1	; 	goto 16
		 15	[  0]	KSHORT	  6		0	; slot6 = 0
		 16	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 17	[  0]	IST  	   		4	; if tonumber
		 18	[  0]	JMP  	  5		1	; 	goto 20
		 19	[  0]	KSHORT	  4		0	; slot4 = 0
		 20	[  0]	CALL 	  1	2	3	; slot1 = math.max(slot2, slot3)
		 21	[  0]	GGET 	  2		5	; slot2 = _env["math"]
		 22	[  0]	TGETS	  2	2	4	; slot2 = math.max
		 23	[  0]	KSHORT	  4		0	; slot4 = 0
		 24	[  0]	GGET 	  5		3	; slot5 = _env["tonumber"]
		 25	[  0]	TGETS	  7	0	1	; slot7 = slot0._coinSackPending
		 26	[  0]	IST  	   		7	; if <unknown table>._coinSackPending
		 27	[  0]	JMP  	  8		1	; 	goto 29
		 28	[  0]	KSHORT	  7		0	; slot7 = 0
		 29	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 30	[  0]	IST  	   		5	; if tonumber
		 31	[  0]	JMP  	  6		1	; 	goto 33
		 32	[  0]	KSHORT	  5		0	; slot5 = 0
		 33	[  0]	CALL 	  2	2	3	; slot2 = math.max(slot3, slot4)
		 34	[  0]	GGET 	  3		5	; slot3 = _env["math"]
		 35	[  0]	TGETS	  3	3	4	; slot3 = math.max
		 36	[  0]	KSHORT	  5		0	; slot5 = 0
		 37	[  0]	GGET 	  6		5	; slot6 = _env["math"]
		 38	[  0]	TGETS	  6	6	0	; slot6 = math.floor
		 39	[  0]	ADDVV	  8	1	2	; slot8 = slot1 + slot2
		 40	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 0.5
		 41	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 42	[  0]	CALLMT	  3		1	; return math.max(, ...MULTRES)
	200	[  0]	FNEW 	 35		118	; N/A:0-0: 4 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			[dur] = 0.62,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  4		1	; 	goto 4
		  3	[  0]	RET0 	  0		1	; return
		  4	[  0]	TDUP 	  4		9	; slot4 = copy table#k9
		  5	[  0]	GGET 	  5		12	; slot5 = _env["love"]
		  6	[  0]	TGETS	  5	5	11	; slot5 = love.timer
		  7	[  0]	ISF  	   		5	; if not love.timer
		  8	[  0]	JMP  	  6		11	; 	goto 20
		  9	[  0]	GGET 	  5		12	; slot5 = _env["love"]
		 10	[  0]	TGETS	  5	5	11	; slot5 = love.timer
		 11	[  0]	TGETS	  5	5	10	; slot5 = love.timer.getTime
		 12	[  0]	ISF  	   		5	; if not love.timer.getTime
		 13	[  0]	JMP  	  6		6	; 	goto 20
		 14	[  0]	GGET 	  5		12	; slot5 = _env["love"]
		 15	[  0]	TGETS	  5	5	11	; slot5 = love.timer
		 16	[  0]	TGETS	  5	5	10	; slot5 = love.timer.getTime
		 17	[  0]	CALL 	  5	2	1	; slot5 = love.timer.getTime()
		 18	[  0]	IST  	   		5	; if love.timer.getTime
		 19	[  0]	JMP  	  6		1	; 	goto 21
		 20	[  0]	KSHORT	  5		0	; slot5 = 0
		 21	[  0]	TSETS	  5	4	8	; slot4.startT = slot5
		 22	[  0]	GGET 	  5		7	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	6	; slot5 = math.max
		 24	[  0]	KSHORT	  7		0	; slot7 = 0
		 25	[  0]	GGET 	  8		7	; slot8 = _env["math"]
		 26	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		 27	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 28	[  0]	ISTC 	 12		1	; slot12 = slot1; if slot1
		 29	[  0]	JMP  	 12		1	; 	goto 31
		 30	[  0]	KSHORT	 12		0	; slot12 = 0
		 31	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 32	[  0]	IST  	   		10	; if tonumber
		 33	[  0]	JMP  	 11		1	; 	goto 35
		 34	[  0]	KSHORT	 10		0	; slot10 = 0
		 35	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 36	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 37	[  0]	TSETS	  5	4	3	; slot4.from = math.max
		 38	[  0]	GGET 	  5		7	; slot5 = _env["math"]
		 39	[  0]	TGETS	  5	5	6	; slot5 = math.max
		 40	[  0]	KSHORT	  7		0	; slot7 = 0
		 41	[  0]	GGET 	  8		7	; slot8 = _env["math"]
		 42	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		 43	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 44	[  0]	ISTC 	 12		2	; slot12 = slot2; if slot2
		 45	[  0]	JMP  	 12		1	; 	goto 47
		 46	[  0]	KSHORT	 12		0	; slot12 = 0
		 47	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 48	[  0]	IST  	   		10	; if tonumber
		 49	[  0]	JMP  	 11		1	; 	goto 51
		 50	[  0]	KSHORT	 10		0	; slot10 = 0
		 51	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 52	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 53	[  0]	TSETS	  5	4	2	; slot4.to = math.max
		 54	[  0]	ISTC 	  5		3	; slot5 = slot3; if slot3
		 55	[  0]	JMP  	  5		1	; 	goto 57
		 56	[  0]	KSTR 	  5		1	; slot5 = "save"
		 57	[  0]	TSETS	  5	4	0	; slot4.kind = slot5
		 58	[  0]	TSETS	  4	0	13	; slot0._coinSackAmountFx = slot4
		 59	[  0]	RET0 	  0		1	; return
	201	[  0]	FNEW 	 36		116	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALLT	  1		2	; return uv0"unknown"(slot2)
	202	[  0]	TSETS	 36	2	117	; slot2.getCoinSackSavedAmount = slot36
	203	[  0]	FNEW 	 36		114	; N/A:0-0: 1 args, 5 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		14	; slot1 = _env["tonumber"]
		  2	[  0]	ISF  	   		0	; if not slot0
		  3	[  0]	JMP  	  3		3	; 	goto 7
		  4	[  0]	TGETS	  3	0	13	; slot3 = slot0.waveId
		  5	[  0]	IST  	   		3	; if <unknown table>.waveId
		  6	[  0]	JMP  	  4		1	; 	goto 8
		  7	[  0]	KSHORT	  3		0	; slot3 = 0
		  8	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  9	[  0]	IST  	   		1	; if slot1
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KSHORT	  1		0	; slot1 = 0
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 15	[  0]	GGET 	  2		12	; slot2 = _env["math"]
		 16	[  0]	TGETS	  2	2	11	; slot2 = math.max
		 17	[  0]	KSHORT	  4		0	; slot4 = 0
		 18	[  0]	GGET 	  5		12	; slot5 = _env["math"]
		 19	[  0]	TGETS	  5	5	10	; slot5 = math.floor
		 20	[  0]	GGET 	  7		14	; slot7 = _env["tonumber"]
		 21	[  0]	ISF  	   		0	; if not slot0
		 22	[  0]	JMP  	  9		3	; 	goto 26
		 23	[  0]	TGETS	  9	0	9	; slot9 = slot0.remainingBaseSpins
		 24	[  0]	IST  	   		9	; if <unknown table>.remainingBaseSpins
		 25	[  0]	JMP  	 10		1	; 	goto 27
		 26	[  0]	KSHORT	  9		0	; slot9 = 0
		 27	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 28	[  0]	IST  	   		7	; if tonumber
		 29	[  0]	JMP  	  8		1	; 	goto 31
		 30	[  0]	KSHORT	  7		0	; slot7 = 0
		 31	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 32	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 33	[  0]	KPRI 	  3		0	; slot3 = nil
		 34	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 35	[  0]	MOV  	  6		1	; slot6 = slot1
		 36	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv1"unknown"(math.floor)
		 37	[  0]	JMP  	  7		57	; 	goto 95
		 38	[  0]	TGETS	  8	7	8	; slot8 = slot7.key
		 39	[  0]	ISNES	  8		7	; if <unknown table>.key ~= "CoinSack"
		 40	[  0]	JMP  	  8		54	; 	goto 95
		 41	[  0]	TGETS	  8	7	6	; slot8 = slot7._coinSackPendingWave
		 42	[  0]	ISEQV	  8		1	; if <unknown table>._coinSackPendingWave == slot1
		 43	[  0]	JMP  	  8		21	; 	goto 65
		 44	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 45	[  0]	MOV  	 10		7	; slot10 = slot7
		 46	[  0]	CALL 	  8	2	2	; slot8 = uv2"unknown"(slot9)
		 47	[  0]	TSETS	  1	7	6	; slot7._coinSackPendingWave = slot1
		 48	[  0]	MULVN	  9	2	0	; slot9 = math.max * 20
		 49	[  0]	TSETS	  9	7	5	; slot7._coinSackPending = slot9
		 50	[  0]	TGETS	  9	7	5	; slot9 = slot7._coinSackPending
		 51	[  0]	KSHORT	 10		0	; slot10 = 0
		 52	[  0]	ISGE 	 10		9	; if slot10 >= <unknown table>._coinSackPending
		 53	[  0]	JMP  	  9		11	; 	goto 65
		 54	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 55	[  0]	MOV  	 11		7	; slot11 = slot7
		 56	[  0]	CALL 	  9	1	2	;  = uv3"unknown"(slot10)
		 57	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		 58	[  0]	MOV  	 11		7	; slot11 = slot7
		 59	[  0]	MOV  	 12		8	; slot12 = uv2"unknown"
		 60	[  0]	UGET 	 13		2	; slot13 = uv2"unknwon"
		 61	[  0]	MOV  	 15		7	; slot15 = slot7
		 62	[  0]	CALL 	 13	2	2	; slot13 = uv2"unknown"(slot14)
		 63	[  0]	KSTR 	 14		4	; slot14 = "save"
		 64	[  0]	CALL 	  9	1	5	;  = uv4"unknown"(slot10, slot11, uv2"unknown", uv2"unknown")
		 65	[  0]	TDUP 	  8		3	; slot8 = copy table#k3
		 66	[  0]	GGET 	  9		12	; slot9 = _env["math"]
		 67	[  0]	TGETS	  9	9	11	; slot9 = math.max
		 68	[  0]	KSHORT	 11		0	; slot11 = 0
		 69	[  0]	GGET 	 12		14	; slot12 = _env["tonumber"]
		 70	[  0]	TGETS	 14	7	5	; slot14 = slot7._coinSackPending
		 71	[  0]	IST  	   		14	; if <unknown table>._coinSackPending
		 72	[  0]	JMP  	 15		1	; 	goto 74
		 73	[  0]	KSHORT	 14		0	; slot14 = 0
		 74	[  0]	CALL 	 12	2	2	; slot12 = tonumber(uv2"unknown")
		 75	[  0]	IST  	   		12	; if tonumber
		 76	[  0]	JMP  	 13		1	; 	goto 78
		 77	[  0]	KSHORT	 12		0	; slot12 = 0
		 78	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 79	[  0]	TSETS	  9	8	2	; slot8.pending = math.max
		 80	[  0]	GGET 	  9		12	; slot9 = _env["math"]
		 81	[  0]	TGETS	  9	9	11	; slot9 = math.max
		 82	[  0]	KSHORT	 11		0	; slot11 = 0
		 83	[  0]	GGET 	 12		14	; slot12 = _env["tonumber"]
		 84	[  0]	TGETS	 14	7	1	; slot14 = slot7._coinSackBanked
		 85	[  0]	IST  	   		14	; if <unknown table>._coinSackBanked
		 86	[  0]	JMP  	 15		1	; 	goto 88
		 87	[  0]	KSHORT	 14		0	; slot14 = 0
		 88	[  0]	CALL 	 12	2	2	; slot12 = tonumber(uv2"unknown")
		 89	[  0]	IST  	   		12	; if tonumber
		 90	[  0]	JMP  	 13		1	; 	goto 92
		 91	[  0]	KSHORT	 12		0	; slot12 = 0
		 92	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 93	[  0]	TSETS	  9	8	0	; slot8.banked = math.max
		 94	[  0]	MOV  	  3		8	; slot3 = slot8
		 95	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv1"unknown", math.floor, slot6; slot7 = uv1"unknown"(math.floor, slot6)
		 96	[  0]	ITERL	  7		-59	; slot6 = slot7; if slot7 != nil goto 38
		 97	[  0]	RET1 	  3		2	; return slot3
	204	[  0]	TSETS	 36	2	115	; slot2.onBattleStart = slot36
	205	[  0]	FNEW 	 36		112	; N/A:0-0: 1 args, 5 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		18	; slot1 = _env["tonumber"]
		  2	[  0]	ISF  	   		0	; if not slot0
		  3	[  0]	JMP  	  3		3	; 	goto 7
		  4	[  0]	TGETS	  3	0	17	; slot3 = slot0.waveId
		  5	[  0]	IST  	   		3	; if <unknown table>.waveId
		  6	[  0]	JMP  	  4		1	; 	goto 8
		  7	[  0]	KSHORT	  3		0	; slot3 = 0
		  8	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  9	[  0]	IST  	   		1	; if slot1
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KSHORT	  1		0	; slot1 = 0
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 15	[  0]	ISFC 	  2		0	; slot2 = slot0; if not slot0
		 16	[  0]	JMP  	  2		6	; 	goto 23
		 17	[  0]	TGETS	  2	0	16	; slot2 = slot0.victory
		 18	[  0]	ISEQP	  2		2	; if <unknown table>.victory == true
		 19	[  0]	JMP  	  2		2	; 	goto 22
		 20	[  0]	KPRI 	  2		1	; slot2 = false
		 21	[  0]	JMP  	  3		1	; 	goto 23
		 22	[  0]	KPRI 	  2		2	; slot2 = true
		 23	[  0]	KPRI 	  3		0	; slot3 = nil
		 24	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 25	[  0]	MOV  	  6		1	; slot6 = slot1
		 26	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv1"unknown"(slot5)
		 27	[  0]	JMP  	  7		92	; 	goto 120
		 28	[  0]	TGETS	  8	7	15	; slot8 = slot7.key
		 29	[  0]	ISNES	  8		14	; if <unknown table>.key ~= "CoinSack"
		 30	[  0]	JMP  	  8		89	; 	goto 120
		 31	[  0]	TGETS	  8	7	13	; slot8 = slot7._coinSackPendingWave
		 32	[  0]	ISNEV	  8		1	; if <unknown table>._coinSackPendingWave ~= slot1
		 33	[  0]	JMP  	  8		86	; 	goto 120
		 34	[  0]	GGET 	  8		12	; slot8 = _env["math"]
		 35	[  0]	TGETS	  8	8	11	; slot8 = math.max
		 36	[  0]	KSHORT	 10		0	; slot10 = 0
		 37	[  0]	GGET 	 11		18	; slot11 = _env["tonumber"]
		 38	[  0]	TGETS	 13	7	10	; slot13 = slot7._coinSackPending
		 39	[  0]	IST  	   		13	; if <unknown table>._coinSackPending
		 40	[  0]	JMP  	 14		1	; 	goto 42
		 41	[  0]	KSHORT	 13		0	; slot13 = 0
		 42	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 43	[  0]	IST  	   		11	; if tonumber
		 44	[  0]	JMP  	 12		1	; 	goto 46
		 45	[  0]	KSHORT	 11		0	; slot11 = 0
		 46	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 47	[  0]	GGET 	  9		12	; slot9 = _env["math"]
		 48	[  0]	TGETS	  9	9	11	; slot9 = math.max
		 49	[  0]	KSHORT	 11		0	; slot11 = 0
		 50	[  0]	GGET 	 12		18	; slot12 = _env["tonumber"]
		 51	[  0]	TGETS	 14	7	9	; slot14 = slot7._coinSackBanked
		 52	[  0]	IST  	   		14	; if <unknown table>._coinSackBanked
		 53	[  0]	JMP  	 15		1	; 	goto 55
		 54	[  0]	KSHORT	 14		0	; slot14 = 0
		 55	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 56	[  0]	IST  	   		12	; if tonumber
		 57	[  0]	JMP  	 13		1	; 	goto 59
		 58	[  0]	KSHORT	 12		0	; slot12 = 0
		 59	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 60	[  0]	UGET 	 10		2	; slot10 = uv2"unknwon"
		 61	[  0]	MOV  	 12		7	; slot12 = slot7
		 62	[  0]	CALL 	 10	2	2	; slot10 = uv2"unknown"(slot11)
		 63	[  0]	KSHORT	 11		0	; slot11 = 0
		 64	[  0]	ISF  	   		2	; if not slot2
		 65	[  0]	JMP  	 12		14	; 	goto 80
		 66	[  0]	ADDVV	 12	9	8	; slot12 = math.max + math.max
		 67	[  0]	GGET 	 13		12	; slot13 = _env["math"]
		 68	[  0]	TGETS	 13	13	8	; slot13 = math.floor
		 69	[  0]	DIVVN	 15	12	0	; slot15 = slot12 / 300
		 70	[  0]	CALL 	 13	2	2	; slot13 = math.floor(slot14)
		 71	[  0]	MULVN	 11	13	0	; slot11 = math.floor * 300
		 72	[  0]	SUBVV	  9	12	11	; slot9 = slot12 - slot11
		 73	[  0]	TSETS	  9	7	9	; slot7._coinSackBanked = slot9
		 74	[  0]	KSHORT	 13		0	; slot13 = 0
		 75	[  0]	ISGE 	 13		8	; if slot13 >= math.max
		 76	[  0]	JMP  	 13		3	; 	goto 80
		 77	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		 78	[  0]	MOV  	 15		7	; slot15 = slot7
		 79	[  0]	CALL 	 13	1	2	;  = uv3"unknown"(slot14)
		 80	[  0]	KPRI 	 12		0	; slot12 = nil
		 81	[  0]	TSETS	 12	7	10	; slot7._coinSackPending = slot12
		 82	[  0]	KPRI 	 12		0	; slot12 = nil
		 83	[  0]	TSETS	 12	7	13	; slot7._coinSackPendingWave = slot12
		 84	[  0]	KSHORT	 12		0	; slot12 = 0
		 85	[  0]	ISGE 	 12		8	; if slot12 >= math.max
		 86	[  0]	JMP  	 12		17	; 	goto 104
		 87	[  0]	UGET 	 12		4	; slot12 = uv4"unknwon"
		 88	[  0]	MOV  	 14		7	; slot14 = slot7
		 89	[  0]	MOV  	 15		10	; slot15 = uv2"unknown"
		 90	[  0]	UGET 	 16		2	; slot16 = uv2"unknwon"
		 91	[  0]	MOV  	 18		7	; slot18 = slot7
		 92	[  0]	CALL 	 16	2	2	; slot16 = uv2"unknown"(slot17)
		 93	[  0]	ISF  	   		2	; if not slot2
		 94	[  0]	JMP  	 17		7	; 	goto 102
		 95	[  0]	KSHORT	 17		0	; slot17 = 0
		 96	[  0]	ISGE 	 17		11	; if slot17 >= slot11
		 97	[  0]	JMP  	 17		2	; 	goto 100
		 98	[  0]	KSTR 	 17		7	; slot17 = "payout"
		 99	[  0]	JMP  	 18		3	; 	goto 103
		100	[  0]	KSTR 	 17		6	; slot17 = "confirm"
		101	[  0]	JMP  	 18		1	; 	goto 103
		102	[  0]	KSTR 	 17		5	; slot17 = "cancel"
		103	[  0]	CALL 	 12	1	5	;  = uv4"unknown"(uv3"unknown", slot14, uv2"unknown", uv2"unknown")
		104	[  0]	TDUP 	 12		4	; slot12 = copy table#k4
		105	[  0]	TSETS	 11	12	3	; slot12.gold = slot11
		106	[  0]	ISF  	   		2	; if not slot2
		107	[  0]	JMP  	 13		2	; 	goto 110
		108	[  0]	ISTC 	 13		8	; slot13 = math.max; if math.max
		109	[  0]	JMP  	 13		1	; 	goto 111
		110	[  0]	KSHORT	 13		0	; slot13 = 0
		111	[  0]	TSETS	 13	12	2	; slot12.confirmed = slot13
		112	[  0]	ISF  	   		2	; if not slot2
		113	[  0]	JMP  	 13		2	; 	goto 116
		114	[  0]	KSHORT	 13		0	; slot13 = 0
		115	[  0]	JMP  	 14		1	; 	goto 117
		116	[  0]	MOV  	 13		8	; slot13 = math.max
		117	[  0]	TSETS	 13	12	1	; slot12.cancelled = math.max
		118	[  0]	TSETS	  9	12	0	; slot12.banked = slot9
		119	[  0]	MOV  	  3		12	; slot3 = slot12
		120	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv1"unknown", slot5, slot6; slot7 = uv1"unknown"(slot5, slot6)
		121	[  0]	ITERL	  7		-94	; slot6 = slot7; if slot7 != nil goto 28
		122	[  0]	RET1 	  3		2	; return slot3
	206	[  0]	TSETS	 36	2	113	; slot2.onBattleEnd = slot36
	207	[  0]	FNEW 	 36		111	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	1	2	;  = uv0"unknown"(slot2)
		  4	[  0]	KSHORT	  1		0	; slot1 = 0
		  5	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		  6	[  0]	MOV  	  4		0	; slot4 = slot0
		  7	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		  8	[  0]	JMP  	  5		1	; 	goto 10
		  9	[  0]	TGETS	  6	5	0	; slot6 = slot5.key
		 10	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 11	[  0]	ITERL	  5		-3	; slot4 = slot5; if slot5 != nil goto 9
		 12	[  0]	KNUM 	  2		0	; slot2 = 0.8
		 13	[  0]	ISGE 	  2		1	; if slot2 >= slot1
		 14	[  0]	JMP  	  2		1	; 	goto 16
		 15	[  0]	KNUM 	  1		0	; slot1 = 0.8
		 16	[  0]	RET1 	  1		2	; return slot1
	208	[  0]	FNEW 	 37		110	; N/A:0-0: 0 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["ipairs"]
		  2	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  3	[  0]	TGETS	  2	2	2	; slot2 = uv0"unknown".active
		  4	[  0]	CALL 	  0	4	2	; slot0, slot1, slot2 = ipairs(slot1)
		  5	[  0]	JMP  	  3		4	; 	goto 10
		  6	[  0]	KPRI 	  5		0	; slot5 = nil
		  7	[  0]	TSETS	  5	4	1	; slot4._uiActiveThisSpin = slot5
		  8	[  0]	KPRI 	  5		0	; slot5 = nil
		  9	[  0]	TSETS	  5	4	0	; slot4._uiSustainSpin = slot5
		 10	[  0]	ITERC	  3	3	3	; slot3, slot4, slot5 = slot0, slot1, slot2; slot3, slot4 = slot0(slot1, slot2)
		 11	[  0]	ITERL	  3		-6	; slot2 = slot3; if slot3 != nil goto 6
		 12	[  0]	RET0 	  0		1	; return
	209	[  0]	FNEW 	 38		109	; N/A:0-0: 1 args, 1 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	KSHORT	  3		3	; slot3 = 3
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		13	; for slot5 = slot2,slot3,slot4 else goto 19
		  6	[  0]	KSHORT	  6		1	; slot6 = 1
		  7	[  0]	KSHORT	  7		3	; slot7 = 3
		  8	[  0]	KSHORT	  8		1	; slot8 = 1
		  9	[  0]	FORI 	  6		8	; for slot9 = slot6,slot7,slot8 else goto 18
		 10	[  0]	GGET 	 10		9	; slot10 = _env["table"]
		 11	[  0]	TGETS	 10	10	8	; slot10 = table.insert
		 12	[  0]	MOV  	 12		1	; slot12 = slot1
		 13	[  0]	TDUP 	 13		7	; slot13 = copy table#k7
		 14	[  0]	TSETS	  5	13	6	; slot13.row = slot5
		 15	[  0]	TSETS	  9	13	5	; slot13.col = slot9
		 16	[  0]	CALL 	 10	1	3	;  = table.insert(slot11, slot12)
		 17	[  0]	FORL 	  6		-8	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 10
		 18	[  0]	FORL 	  2		-13	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 19	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 20	[  0]	MOV  	  4		1	; slot4 = slot1
		 21	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 22	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 23	[  0]	GGET 	  3		4	; slot3 = _env["math"]
		 24	[  0]	TGETS	  3	3	3	; slot3 = math.max
		 25	[  0]	KSHORT	  5		0	; slot5 = 0
		 26	[  0]	GGET 	  6		4	; slot6 = _env["math"]
		 27	[  0]	TGETS	  6	6	2	; slot6 = math.min
		 28	[  0]	LEN  	  8		1	; slot8 = #slot1
		 29	[  0]	GGET 	  9		4	; slot9 = _env["math"]
		 30	[  0]	TGETS	  9	9	1	; slot9 = math.floor
		 31	[  0]	GGET 	 11		0	; slot11 = _env["tonumber"]
		 32	[  0]	ISTC 	 13		0	; slot13 = slot0; if slot0
		 33	[  0]	JMP  	 13		1	; 	goto 35
		 34	[  0]	KSHORT	 13		0	; slot13 = 0
		 35	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 36	[  0]	IST  	   		11	; if tonumber
		 37	[  0]	JMP  	 12		1	; 	goto 39
		 38	[  0]	KSHORT	 11		0	; slot11 = 0
		 39	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(table.insert)
		 40	[  0]	CALLM	  6	0	1	; MULTRES = math.min(slot7, ...MULTRES)
		 41	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 42	[  0]	KSHORT	  4		1	; slot4 = 1
		 43	[  0]	MOV  	  5		3	; slot5 = math.max
		 44	[  0]	KSHORT	  6		1	; slot6 = 1
		 45	[  0]	FORI 	  4		3	; for slot7 = slot4,slot5,slot6 else goto 49
		 46	[  0]	TGETV	  8	1	7	; slot8 = slot1[slot7]
		 47	[  0]	TSETV	  8	2	7	; slot2[slot7] = slot8
		 48	[  0]	FORL 	  4		-3	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  math.max) goto 46
		 49	[  0]	RET1 	  2		2	; return slot2
	210	[  0]	FNEW 	 39		108	; N/A:0-0: 2 args, 1 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	KSHORT	  4		9	; slot4 = 9
		  3	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  4	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		  5	[  0]	FNEW 	  4		5	; N/A:0-0: 1 args, 0 upvalues, 7 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  1		4	; slot1 = _env["math"]
			  2	[  0]	TGETS	  1	1	3	; slot1 = math.floor
			  3	[  0]	GGET 	  3		2	; slot3 = _env["tonumber"]
			  4	[  0]	ISF  	   		0	; if not slot0
			  5	[  0]	JMP  	  5		3	; 	goto 9
			  6	[  0]	TGETS	  5	0	1	; slot5 = slot0.row
			  7	[  0]	IST  	   		5	; if <unknown table>.row
			  8	[  0]	JMP  	  6		1	; 	goto 10
			  9	[  0]	KSHORT	  5		0	; slot5 = 0
			 10	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			 11	[  0]	IST  	   		3	; if tonumber
			 12	[  0]	JMP  	  4		1	; 	goto 14
			 13	[  0]	KSHORT	  3		0	; slot3 = 0
			 14	[  0]	CALL 	  1	2	2	; slot1 = math.floor(slot2)
			 15	[  0]	GGET 	  2		4	; slot2 = _env["math"]
			 16	[  0]	TGETS	  2	2	3	; slot2 = math.floor
			 17	[  0]	GGET 	  4		2	; slot4 = _env["tonumber"]
			 18	[  0]	ISF  	   		0	; if not slot0
			 19	[  0]	JMP  	  6		3	; 	goto 23
			 20	[  0]	TGETS	  6	0	0	; slot6 = slot0.col
			 21	[  0]	IST  	   		6	; if <unknown table>.col
			 22	[  0]	JMP  	  7		1	; 	goto 24
			 23	[  0]	KSHORT	  6		0	; slot6 = 0
			 24	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
			 25	[  0]	IST  	   		4	; if tonumber
			 26	[  0]	JMP  	  5		1	; 	goto 28
			 27	[  0]	KSHORT	  4		0	; slot4 = 0
			 28	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
			 29	[  0]	KSHORT	  3		1	; slot3 = 1
			 30	[  0]	ISLT 	  1		3	; if slot1 < slot3
			 31	[  0]	JMP  	  3		9	; 	goto 41
			 32	[  0]	KSHORT	  3		3	; slot3 = 3
			 33	[  0]	ISLT 	  3		1	; if slot3 < slot1
			 34	[  0]	JMP  	  3		6	; 	goto 41
			 35	[  0]	KSHORT	  3		1	; slot3 = 1
			 36	[  0]	ISLT 	  2		3	; if slot2 < slot3
			 37	[  0]	JMP  	  3		3	; 	goto 41
			 38	[  0]	KSHORT	  3		3	; slot3 = 3
			 39	[  0]	ISGE 	  3		2	; if slot3 >= slot2
			 40	[  0]	JMP  	  3		2	; 	goto 43
			 41	[  0]	KNIL 	  3		4	; slot3, slot4 = nil
			 42	[  0]	RET  	  3		3	; return slot3, slot4
			 43	[  0]	MOV  	  3		1	; slot3 = slot1
			 44	[  0]	MOV  	  4		2	; slot4 = slot2
			 45	[  0]	RET  	  3		3	; return slot3, slot4
		  6	[  0]	FNEW 	  5		4	; N/A:0-0: 1 args, 3 upvalues, 14 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	3	2	; slot1, slot2 = uv0"unknown"(slot2)
			  4	[  0]	ISF  	   		1	; if not slot1
			  5	[  0]	JMP  	  3		10	; 	goto 16
			  6	[  0]	GGET 	  3		4	; slot3 = _env["tostring"]
			  7	[  0]	MOV  	  5		1	; slot5 = slot1
			  8	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
			  9	[  0]	KSTR 	  4		3	; slot4 = ":"
			 10	[  0]	GGET 	  5		4	; slot5 = _env["tostring"]
			 11	[  0]	MOV  	  7		2	; slot7 = slot2
			 12	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
			 13	[  0]	CAT  	  3	3	5	; slot3 = tostring .. slot4 .. tostring
			 14	[  0]	IST  	   		3	; if slot3
			 15	[  0]	JMP  	  4		1	; 	goto 17
			 16	[  0]	KPRI 	  3		0	; slot3 = nil
			 17	[  0]	ISF  	   		3	; if not slot3
			 18	[  0]	JMP  	  4		12	; 	goto 31
			 19	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 20	[  0]	TGETV	  4	4	3	; slot4 = uv1"unknown"[slot3]
			 21	[  0]	IST  	   		4	; if slot4
			 22	[  0]	JMP  	  4		8	; 	goto 31
			 23	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
			 24	[  0]	KPRI 	  5		2	; slot5 = true
			 25	[  0]	TSETV	  5	4	3	; uv1"unknown"[slot3] = slot5
			 26	[  0]	MOV  	  4		1	; slot4 = slot1
			 27	[  0]	TSETS	  2	0	1	; slot0.col = slot2
			 28	[  0]	TSETS	  4	0	2	; slot0.row = slot4
			 29	[  0]	KPRI 	  4		2	; slot4 = true
			 30	[  0]	RET1 	  4		2	; return slot4
			 31	[  0]	GGET 	  4		0	; slot4 = _env["ipairs"]
			 32	[  0]	UGET 	  6		2	; slot6 = uv2"unknwon"
			 33	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
			 34	[  0]	JMP  	  7		21	; 	goto 56
			 35	[  0]	GGET 	  9		4	; slot9 = _env["tostring"]
			 36	[  0]	TGETS	 11	8	2	; slot11 = slot8.row
			 37	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
			 38	[  0]	KSTR 	 10		3	; slot10 = ":"
			 39	[  0]	GGET 	 11		4	; slot11 = _env["tostring"]
			 40	[  0]	TGETS	 13	8	1	; slot13 = slot8.col
			 41	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
			 42	[  0]	CAT  	  9	9	11	; slot9 = tostring .. slot10 .. tostring
			 43	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 44	[  0]	TGETV	 10	10	9	; slot10 = uv1"unknown"[slot9]
			 45	[  0]	IST  	   		10	; if slot10
			 46	[  0]	JMP  	 10		9	; 	goto 56
			 47	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
			 48	[  0]	KPRI 	 11		2	; slot11 = true
			 49	[  0]	TSETV	 11	10	9	; uv1"unknown"[slot9] = slot11
			 50	[  0]	TGETS	 10	8	2	; slot10 = slot8.row
			 51	[  0]	TGETS	 11	8	1	; slot11 = slot8.col
			 52	[  0]	TSETS	 11	0	1	; slot0.col = <unknown table>.col
			 53	[  0]	TSETS	 10	0	2	; slot0.row = <unknown table>.row
			 54	[  0]	KPRI 	 10		2	; slot10 = true
			 55	[  0]	RET1 	 10		2	; return slot10
			 56	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, uv2"unknown"; slot7, slot8 = ipairs(slot5, uv2"unknown")
			 57	[  0]	ITERL	  7		-23	; uv2"unknown" = slot7; if slot7 != nil goto 35
			 58	[  0]	KPRI 	  4		1	; slot4 = false
			 59	[  0]	RET1 	  4		2	; return slot4
		  7	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		  8	[  0]	GGET 	  7		3	; slot7 = _env["ipairs"]
		  9	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
		 10	[  0]	JMP  	  9		1	; 	goto 12
		 11	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 12	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 13	[  0]	JMP  	 10		10	; 	goto 24
		 14	[  0]	MOV  	 12		5	; slot12 = slot5
		 15	[  0]	MOV  	 14		11	; slot14 = slot11
		 16	[  0]	CALL 	 12	2	2	; slot12 = slot12(slot13)
		 17	[  0]	ISF  	   		12	; if not slot12
		 18	[  0]	JMP  	 13		5	; 	goto 24
		 19	[  0]	GGET 	 12		2	; slot12 = _env["table"]
		 20	[  0]	TGETS	 12	12	1	; slot12 = table.insert
		 21	[  0]	MOV  	 14		6	; slot14 = slot6
		 22	[  0]	MOV  	 15		11	; slot15 = slot11
		 23	[  0]	CALL 	 12	1	3	;  = table.insert(slot13, slot14)
		 24	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 25	[  0]	ITERL	 10		-12	; slot9 = slot10; if slot10 != nil goto 14
		 26	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 27	[  0]	GGET 	  8		3	; slot8 = _env["ipairs"]
		 28	[  0]	ISTC 	 10		1	; slot10 = slot1; if slot1
		 29	[  0]	JMP  	 10		1	; 	goto 31
		 30	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		 31	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
		 32	[  0]	JMP  	 11		15	; 	goto 48
		 33	[  0]	ISF  	   		12	; if not table.insert
		 34	[  0]	JMP  	 13		13	; 	goto 48
		 35	[  0]	TGETS	 13	12	0	; slot13 = table.insert.symbol
		 36	[  0]	ISF  	   		13	; if not table.insert.symbol
		 37	[  0]	JMP  	 14		10	; 	goto 48
		 38	[  0]	MOV  	 13		5	; slot13 = slot5
		 39	[  0]	MOV  	 15		12	; slot15 = table.insert
		 40	[  0]	CALL 	 13	2	2	; slot13 = slot13(slot14)
		 41	[  0]	ISF  	   		13	; if not slot13
		 42	[  0]	JMP  	 14		5	; 	goto 48
		 43	[  0]	GGET 	 13		2	; slot13 = _env["table"]
		 44	[  0]	TGETS	 13	13	1	; slot13 = table.insert
		 45	[  0]	MOV  	 15		7	; slot15 = slot7
		 46	[  0]	MOV  	 16		12	; slot16 = table.insert
		 47	[  0]	CALL 	 13	1	3	;  = table.insert(slot14, slot15)
		 48	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, slot10; slot11, slot12 = ipairs(slot9, slot10)
		 49	[  0]	ITERL	 11		-17	; slot10 = slot11; if slot11 != nil goto 33
		 50	[  0]	MOV  	  8		6	; slot8 = slot6
		 51	[  0]	MOV  	  9		7	; slot9 = slot7
		 52	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 53
		 53	[  0]	RET  	  8		3	; return slot8, slot9
	211	[  0]	FNEW 	 40		107	; N/A:0-0: 3 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		4	; 	goto 7
		  3	[  0]	ISF  	   		1	; if not slot1
		  4	[  0]	JMP  	  3		2	; 	goto 7
		  5	[  0]	IST  	   		2	; if slot2
		  6	[  0]	JMP  	  3		2	; 	goto 9
		  7	[  0]	KPRI 	  3		0	; slot3 = nil
		  8	[  0]	RET1 	  3		2	; return slot3
		  9	[  0]	ISEQS	  0		3	; if slot0 == "Blank"
		 10	[  0]	JMP  	  3		4	; 	goto 15
		 11	[  0]	ISEQS	  1		3	; if slot1 == "Blank"
		 12	[  0]	JMP  	  3		2	; 	goto 15
		 13	[  0]	ISNES	  2		3	; if slot2 ~= "Blank"
		 14	[  0]	JMP  	  3		2	; 	goto 17
		 15	[  0]	KPRI 	  3		0	; slot3 = nil
		 16	[  0]	RET1 	  3		2	; return slot3
		 17	[  0]	KPRI 	  3		0	; slot3 = nil
		 18	[  0]	KSHORT	  4		0	; slot4 = 0
		 19	[  0]	GGET 	  5		2	; slot5 = _env["ipairs"]
		 20	[  0]	TNEW 	  7		4	; slot7 = new table( array: 4, dict: 1)
		 21	[  0]	TSETB	  0	7	1	; slot7[1] = slot0
		 22	[  0]	TSETB	  1	7	2	; slot7[2] = slot1
		 23	[  0]	TSETB	  2	7	3	; slot7[3] = slot2
		 24	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 25	[  0]	JMP  	  8		14	; 	goto 40
		 26	[  0]	ISEQS	  9		1	; if slot9 == "Joker"
		 27	[  0]	JMP  	 10		2	; 	goto 30
		 28	[  0]	ISNES	  9		0	; if slot9 ~= "J"
		 29	[  0]	JMP  	 10		2	; 	goto 32
		 30	[  0]	ADDVN	  4	4	0	; slot4 = slot4 + 1
		 31	[  0]	JMP  	 10		8	; 	goto 40
		 32	[  0]	IST  	   		3	; if slot3
		 33	[  0]	JMP  	 10		2	; 	goto 36
		 34	[  0]	MOV  	  3		9	; slot3 = slot9
		 35	[  0]	JMP  	 10		4	; 	goto 40
		 36	[  0]	ISEQV	  9		3	; if slot9 == slot3
		 37	[  0]	JMP  	 10		2	; 	goto 40
		 38	[  0]	KPRI 	 10		0	; slot10 = nil
		 39	[  0]	RET1 	 10		2	; return slot10
		 40	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 41	[  0]	ITERL	  8		-16	; slot7 = slot8; if slot8 != nil goto 26
		 42	[  0]	ISNEN	  4		1	; if slot4 ~= 3
		 43	[  0]	JMP  	  5		2	; 	goto 46
		 44	[  0]	KSTR 	  5		1	; slot5 = "Joker"
		 45	[  0]	RET1 	  5		2	; return slot5
		 46	[  0]	RET1 	  3		2	; return slot3
	212	[  0]	FNEW 	 41		106	; N/A:0-0: 2 args, 1 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#6 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#7 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#8 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#9 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#10 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#11 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#12 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#13 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#14 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#15 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#16 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#17 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#18 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#19 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#20 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#21 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#22 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#23 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#24 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#25 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#26 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#27 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#28 = [
			#1: 1,
			#2: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		10	; 	goto 13
		  3	[  0]	TGETS	  2	0	31	; slot2 = slot0.winningLines
		  4	[  0]	ISF  	   		2	; if not <unknown table>.winningLines
		  5	[  0]	JMP  	  3		7	; 	goto 13
		  6	[  0]	GGET 	  2		30	; slot2 = _env["type"]
		  7	[  0]	TGETS	  4	0	31	; slot4 = slot0.winningLines
		  8	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  9	[  0]	ISNES	  2		29	; if slot2 ~= "table"
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	IST  	   		1	; if slot1
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 14	[  0]	RET1 	  2		2	; return slot2
		 15	[  0]	TNEW 	  2		9	; slot2 = new table( array: 9, dict: 1)
		 16	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 17	[  0]	TDUP 	  4		28	; slot4 = copy table#k28
		 18	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 19	[  0]	TDUP 	  4		27	; slot4 = copy table#k27
		 20	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 21	[  0]	TDUP 	  4		26	; slot4 = copy table#k26
		 22	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 23	[  0]	TSETB	  3	2	1	; slot2[1] = slot3
		 24	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 25	[  0]	TDUP 	  4		25	; slot4 = copy table#k25
		 26	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 27	[  0]	TDUP 	  4		24	; slot4 = copy table#k24
		 28	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 29	[  0]	TDUP 	  4		23	; slot4 = copy table#k23
		 30	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 31	[  0]	TSETB	  3	2	2	; slot2[2] = slot3
		 32	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 33	[  0]	TDUP 	  4		22	; slot4 = copy table#k22
		 34	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 35	[  0]	TDUP 	  4		21	; slot4 = copy table#k21
		 36	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 37	[  0]	TDUP 	  4		20	; slot4 = copy table#k20
		 38	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 39	[  0]	TSETB	  3	2	3	; slot2[3] = slot3
		 40	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 41	[  0]	TDUP 	  4		19	; slot4 = copy table#k19
		 42	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 43	[  0]	TDUP 	  4		18	; slot4 = copy table#k18
		 44	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 45	[  0]	TDUP 	  4		17	; slot4 = copy table#k17
		 46	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 47	[  0]	TSETB	  3	2	4	; slot2[4] = slot3
		 48	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 49	[  0]	TDUP 	  4		16	; slot4 = copy table#k16
		 50	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 51	[  0]	TDUP 	  4		15	; slot4 = copy table#k15
		 52	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 53	[  0]	TDUP 	  4		14	; slot4 = copy table#k14
		 54	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 55	[  0]	TSETB	  3	2	5	; slot2[5] = slot3
		 56	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 57	[  0]	TDUP 	  4		13	; slot4 = copy table#k13
		 58	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 59	[  0]	TDUP 	  4		12	; slot4 = copy table#k12
		 60	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 61	[  0]	TDUP 	  4		11	; slot4 = copy table#k11
		 62	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 63	[  0]	TSETB	  3	2	6	; slot2[6] = slot3
		 64	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 65	[  0]	TDUP 	  4		10	; slot4 = copy table#k10
		 66	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 67	[  0]	TDUP 	  4		9	; slot4 = copy table#k9
		 68	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 69	[  0]	TDUP 	  4		8	; slot4 = copy table#k8
		 70	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 71	[  0]	TSETB	  3	2	7	; slot2[7] = slot3
		 72	[  0]	TNEW 	  3		4	; slot3 = new table( array: 4, dict: 1)
		 73	[  0]	TDUP 	  4		7	; slot4 = copy table#k7
		 74	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
		 75	[  0]	TDUP 	  4		6	; slot4 = copy table#k6
		 76	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
		 77	[  0]	TDUP 	  4		5	; slot4 = copy table#k5
		 78	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
		 79	[  0]	TSETB	  3	2	8	; slot2[8] = slot3
		 80	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 81	[  0]	GGET 	  4		4	; slot4 = _env["ipairs"]
		 82	[  0]	TGETS	  6	0	31	; slot6 = slot0.winningLines
		 83	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 84	[  0]	JMP  	  7		74	; 	goto 159
		 85	[  0]	TGETV	  9	2	8	; slot9 = slot2[slot8]
		 86	[  0]	ISF  	   		9	; if not slot9
		 87	[  0]	JMP  	 10		71	; 	goto 159
		 88	[  0]	TNEW 	 10		4	; slot10 = new table( array: 4, dict: 1)
		 89	[  0]	TGETB	 11	9	1	; slot11 = slot9[1]
		 90	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		 91	[  0]	TGETV	 11	1	11	; slot11 = slot1[slot11]
		 92	[  0]	ISF  	   		11	; if not slot11
		 93	[  0]	JMP  	 12		6	; 	goto 100
		 94	[  0]	TGETB	 11	9	1	; slot11 = slot9[1]
		 95	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		 96	[  0]	TGETV	 11	1	11	; slot11 = slot1[slot11]
		 97	[  0]	TGETB	 12	9	1	; slot12 = slot9[1]
		 98	[  0]	TGETB	 12	12	2	; slot12 = slot12[2]
		 99	[  0]	TGETV	 11	11	12	; slot11 = slot11[slot12]
		100	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		101	[  0]	TGETB	 11	9	2	; slot11 = slot9[2]
		102	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		103	[  0]	TGETV	 11	1	11	; slot11 = slot1[slot11]
		104	[  0]	ISF  	   		11	; if not slot11
		105	[  0]	JMP  	 12		6	; 	goto 112
		106	[  0]	TGETB	 11	9	2	; slot11 = slot9[2]
		107	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		108	[  0]	TGETV	 11	1	11	; slot11 = slot1[slot11]
		109	[  0]	TGETB	 12	9	2	; slot12 = slot9[2]
		110	[  0]	TGETB	 12	12	2	; slot12 = slot12[2]
		111	[  0]	TGETV	 11	11	12	; slot11 = slot11[slot12]
		112	[  0]	TSETB	 11	10	2	; slot10[2] = slot11
		113	[  0]	TGETB	 11	9	3	; slot11 = slot9[3]
		114	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		115	[  0]	TGETV	 11	1	11	; slot11 = slot1[slot11]
		116	[  0]	ISF  	   		11	; if not slot11
		117	[  0]	JMP  	 12		6	; 	goto 124
		118	[  0]	TGETB	 11	9	3	; slot11 = slot9[3]
		119	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		120	[  0]	TGETV	 11	1	11	; slot11 = slot1[slot11]
		121	[  0]	TGETB	 12	9	3	; slot12 = slot9[3]
		122	[  0]	TGETB	 12	12	2	; slot12 = slot12[2]
		123	[  0]	TGETV	 11	11	12	; slot11 = slot11[slot12]
		124	[  0]	TSETB	 11	10	3	; slot10[3] = slot11
		125	[  0]	KPRI 	 11		1	; slot11 = false
		126	[  0]	GGET 	 12		4	; slot12 = _env["ipairs"]
		127	[  0]	MOV  	 14		10	; slot14 = slot10
		128	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
		129	[  0]	JMP  	 15		6	; 	goto 136
		130	[  0]	ISEQS	 16		3	; if slot16 == "Joker"
		131	[  0]	JMP  	 17		2	; 	goto 134
		132	[  0]	ISNES	 16		2	; if slot16 ~= "J"
		133	[  0]	JMP  	 17		2	; 	goto 136
		134	[  0]	KPRI 	 11		2	; slot11 = true
		135	[  0]	JMP  	 12		2	; 	goto 138
		136	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, slot14; slot15, slot16 = ipairs(slot13, slot14)
		137	[  0]	ITERL	 15		-8	; slot14 = slot15; if slot15 != nil goto 130
		138	[  0]	ISF  	   		11	; if not slot11
		139	[  0]	JMP  	 12		19	; 	goto 159
		140	[  0]	TGETS	 12	0	1	; slot12 = slot0.symbolsByLine
		141	[  0]	ISF  	   		12	; if not <unknown table>.symbolsByLine
		142	[  0]	JMP  	 13		4	; 	goto 147
		143	[  0]	TGETS	 12	0	1	; slot12 = slot0.symbolsByLine
		144	[  0]	TGETV	 12	12	8	; slot12 = <unknown table>.symbolsByLine[slot8]
		145	[  0]	IST  	   		12	; if slot12
		146	[  0]	JMP  	 13		5	; 	goto 152
		147	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		148	[  0]	TGETB	 14	10	1	; slot14 = slot10[1]
		149	[  0]	TGETB	 15	10	2	; slot15 = slot10[2]
		150	[  0]	TGETB	 16	10	3	; slot16 = slot10[3]
		151	[  0]	CALL 	 12	2	4	; slot12 = uv0"unknown"(slot13, slot14, slot15)
		152	[  0]	ISF  	   		12	; if not uv0"unknown"
		153	[  0]	JMP  	 13		5	; 	goto 159
		154	[  0]	GGET 	 13		29	; slot13 = _env["table"]
		155	[  0]	TGETS	 13	13	0	; slot13 = table.insert
		156	[  0]	MOV  	 15		3	; slot15 = slot3
		157	[  0]	MOV  	 16		12	; slot16 = uv0"unknown"
		158	[  0]	CALL 	 13	1	3	;  = table.insert(slot14, slot15)
		159	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, <unknown table>.winningLines; slot7, slot8 = ipairs(slot5, <unknown table>.winningLines)
		160	[  0]	ITERL	  7		-76	; <unknown table>.winningLines = slot7; if slot7 != nil goto 85
		161	[  0]	RET1 	  3		2	; return slot3
	213	[  0]	FNEW 	 42		104	; N/A:0-0: 1 args, 9 upvalues, 29 slots
		
		;;;; constant tables ;;;;
		ktable#17 = [
			]
		
		
		ktable#55 = [
			[revealed] = false,
			]
		
		
		ktable#59 = [
			]
		
		
		ktable#62 = [
			]
		
		
		ktable#68 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		8	; 	goto 11
		  3	[  0]	GGET 	  1		96	; slot1 = _env["tonumber"]
		  4	[  0]	TGETS	  3	0	95	; slot3 = slot0.waveId
		  5	[  0]	IST  	   		3	; if <unknown table>.waveId
		  6	[  0]	JMP  	  4		1	; 	goto 8
		  7	[  0]	KSHORT	  3		0	; slot3 = 0
		  8	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  9	[  0]	IST  	   		1	; if slot1
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KSHORT	  1		0	; slot1 = 0
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 15	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 16	[  0]	ISF  	   		2	; if not uv1"unknown"
		 17	[  0]	JMP  	  3		9	; 	goto 27
		 18	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 19	[  0]	TGETS	  2	2	94	; slot2 = uv1"unknown".slot
		 20	[  0]	ISF  	   		2	; if not uv1"unknown".slot
		 21	[  0]	JMP  	  3		5	; 	goto 27
		 22	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 23	[  0]	TGETS	  2	2	94	; slot2 = uv1"unknown".slot
		 24	[  0]	TGETS	  2	2	93	; slot2 = uv1"unknown".slot.forceWinProb
		 25	[  0]	IST  	   		2	; if uv1"unknown".slot.forceWinProb
		 26	[  0]	JMP  	  3		1	; 	goto 28
		 27	[  0]	KSHORT	  2		0	; slot2 = 0
		 28	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 29	[  0]	TGETS	  3	3	92	; slot3 = uv2"unknown"._baseForceProb
		 30	[  0]	ISNEP	  3		0	; if uv2"unknown"._baseForceProb ~= nil
		 31	[  0]	JMP  	  3		2	; 	goto 34
		 32	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
		 33	[  0]	TSETS	  2	3	92	; uv2"unknown"._baseForceProb = slot2
		 34	[  0]	GGET 	  3		91	; slot3 = _env["ipairs"]
		 35	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 36	[  0]	TGETS	  5	5	90	; slot5 = uv2"unknown".active
		 37	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 38	[  0]	JMP  	  6		11	; 	goto 50
		 39	[  0]	KPRI 	  8		0	; slot8 = nil
		 40	[  0]	TSETS	  8	7	89	; slot7._uiActiveThisSpin = slot8
		 41	[  0]	KPRI 	  8		0	; slot8 = nil
		 42	[  0]	TSETS	  8	7	88	; slot7._uiTrigger = slot8
		 43	[  0]	KPRI 	  8		0	; slot8 = nil
		 44	[  0]	TSETS	  8	7	87	; slot7._uiSustainSpin = slot8
		 45	[  0]	TGETS	  8	7	86	; slot8 = slot7.key
		 46	[  0]	ISNES	  8		85	; if <unknown table>.key ~= "ResonantAnvil"
		 47	[  0]	JMP  	  8		2	; 	goto 50
		 48	[  0]	KPRI 	  8		0	; slot8 = nil
		 49	[  0]	TSETS	  8	7	84	; slot7._resonantAnvilUsedThisSpin = slot8
		 50	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv2"unknown".active; slot6, slot7 = ipairs(slot4, uv2"unknown".active)
		 51	[  0]	ITERL	  6		-13	; uv2"unknown".active = slot6; if slot6 != nil goto 39
		 52	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 53	[  0]	MOV  	  5		1	; slot5 = slot1
		 54	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv3"unknown"(slot4)
		 55	[  0]	JMP  	  6		12	; 	goto 68
		 56	[  0]	TGETS	  7	6	86	; slot7 = slot6.key
		 57	[  0]	ISNES	  7		83	; if <unknown table>.key ~= "EntropySpoon"
		 58	[  0]	JMP  	  7		9	; 	goto 68
		 59	[  0]	TGETS	  7	6	82	; slot7 = slot6._entropySustainNext
		 60	[  0]	ISF  	   		7	; if not <unknown table>._entropySustainNext
		 61	[  0]	JMP  	  8		6	; 	goto 68
		 62	[  0]	KPRI 	  7		2	; slot7 = true
		 63	[  0]	TSETS	  7	6	89	; slot6._uiActiveThisSpin = slot7
		 64	[  0]	KPRI 	  7		2	; slot7 = true
		 65	[  0]	TSETS	  7	6	87	; slot6._uiSustainSpin = slot7
		 66	[  0]	KPRI 	  7		0	; slot7 = nil
		 67	[  0]	TSETS	  7	6	82	; slot6._entropySustainNext = slot7
		 68	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv3"unknown", slot4, slot5; slot6 = uv3"unknown"(slot4, slot5)
		 69	[  0]	ITERL	  6		-14	; slot5 = slot6; if slot6 != nil goto 56
		 70	[  0]	UGET 	  3		3	; slot3 = uv3"unknwon"
		 71	[  0]	MOV  	  5		1	; slot5 = slot1
		 72	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv3"unknown"(slot4)
		 73	[  0]	JMP  	  6		5	; 	goto 79
		 74	[  0]	TGETS	  7	6	86	; slot7 = slot6.key
		 75	[  0]	ISNES	  7		81	; if <unknown table>.key ~= "CrookedFang"
		 76	[  0]	JMP  	  7		2	; 	goto 79
		 77	[  0]	KPRI 	  7		0	; slot7 = nil
		 78	[  0]	TSETS	  7	6	80	; slot6._crookedFangPending = slot7
		 79	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv3"unknown", slot4, slot5; slot6 = uv3"unknown"(slot4, slot5)
		 80	[  0]	ITERL	  6		-7	; slot5 = slot6; if slot6 != nil goto 74
		 81	[  0]	KSHORT	  3		0	; slot3 = 0
		 82	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 83	[  0]	KNIL 	  5		6	; slot5, slot6 = nil
		 84	[  0]	UGET 	  7		4	; slot7 = uv4"unknwon"
		 85	[  0]	TGETS	  7	7	79	; slot7 = uv4"unknown".getGoldenLeverMaxGrade
		 86	[  0]	ISFC 	  9		0	; slot9 = slot0; if not slot0
		 87	[  0]	JMP  	  9		1	; 	goto 89
		 88	[  0]	TGETS	  9	0	78	; slot9 = slot0.unitGradeProbabilities
		 89	[  0]	CALL 	  7	2	2	; slot7 = uv4"unknown".getGoldenLeverMaxGrade(slot8)
		 90	[  0]	UGET 	  8		3	; slot8 = uv3"unknwon"
		 91	[  0]	MOV  	 10		1	; slot10 = slot1
		 92	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = uv3"unknown"(<unknown table>.unitGradeProbabilities)
		 93	[  0]	JMP  	 11		177	; 	goto 271
		 94	[  0]	TGETS	 12	11	86	; slot12 = slot11.key
		 95	[  0]	ISNES	 12		77	; if <unknown table>.key ~= "JokerSeed"
		 96	[  0]	JMP  	 12		6	; 	goto 103
		 97	[  0]	ADDVN	  3	3	0	; slot3 = slot3 + 0.015
		 98	[  0]	KPRI 	 12		2	; slot12 = true
		 99	[  0]	TSETS	 12	11	89	; slot11._uiActiveThisSpin = slot12
		100	[  0]	KPRI 	 12		2	; slot12 = true
		101	[  0]	TSETS	 12	11	87	; slot11._uiSustainSpin = slot12
		102	[  0]	JMP  	 12		168	; 	goto 271
		103	[  0]	TGETS	 12	11	86	; slot12 = slot11.key
		104	[  0]	ISNES	 12		76	; if <unknown table>.key ~= "Wildcard"
		105	[  0]	JMP  	 12		6	; 	goto 112
		106	[  0]	ADDVN	  3	3	1	; slot3 = slot3 + 0.02
		107	[  0]	KPRI 	 12		2	; slot12 = true
		108	[  0]	TSETS	 12	11	89	; slot11._uiActiveThisSpin = slot12
		109	[  0]	KPRI 	 12		2	; slot12 = true
		110	[  0]	TSETS	 12	11	87	; slot11._uiSustainSpin = slot12
		111	[  0]	JMP  	 12		159	; 	goto 271
		112	[  0]	TGETS	 12	11	86	; slot12 = slot11.key
		113	[  0]	ISNES	 12		75	; if <unknown table>.key ~= "TornNote"
		114	[  0]	JMP  	 12		41	; 	goto 156
		115	[  0]	GGET 	 12		96	; slot12 = _env["tonumber"]
		116	[  0]	TGETS	 14	11	74	; slot14 = slot11._tornNoteSpinCount
		117	[  0]	IST  	   		14	; if <unknown table>._tornNoteSpinCount
		118	[  0]	JMP  	 15		1	; 	goto 120
		119	[  0]	KSHORT	 14		0	; slot14 = 0
		120	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		121	[  0]	IST  	   		12	; if tonumber
		122	[  0]	JMP  	 13		1	; 	goto 124
		123	[  0]	KSHORT	 12		0	; slot12 = 0
		124	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 1
		125	[  0]	TSETS	 12	11	74	; slot11._tornNoteSpinCount = slot12
		126	[  0]	TGETS	 12	11	74	; slot12 = slot11._tornNoteSpinCount
		127	[  0]	MODVN	 12	12	3	; slot12 = <unknown table>._tornNoteSpinCount % 6
		128	[  0]	ISNEN	 12		4	; if slot12 ~= 0
		129	[  0]	JMP  	 12		141	; 	goto 271
		130	[  0]	GGET 	 12		73	; slot12 = _env["table"]
		131	[  0]	TGETS	 12	12	72	; slot12 = table.insert
		132	[  0]	MOV  	 14		4	; slot14 = slot4
		133	[  0]	TDUP 	 15		68	; slot15 = copy table#k68
		134	[  0]	GGET 	 16		71	; slot16 = _env["love"]
		135	[  0]	TGETS	 16	16	70	; slot16 = love.math
		136	[  0]	TGETS	 16	16	69	; slot16 = love.math.random
		137	[  0]	KSHORT	 18		1	; slot18 = 1
		138	[  0]	KSHORT	 19		3	; slot19 = 3
		139	[  0]	CALL 	 16	2	3	; slot16 = love.math.random(slot17, slot18)
		140	[  0]	TSETS	 16	15	67	; slot15.row = love.math.random
		141	[  0]	GGET 	 16		71	; slot16 = _env["love"]
		142	[  0]	TGETS	 16	16	70	; slot16 = love.math
		143	[  0]	TGETS	 16	16	69	; slot16 = love.math.random
		144	[  0]	KSHORT	 18		1	; slot18 = 1
		145	[  0]	KSHORT	 19		3	; slot19 = 3
		146	[  0]	CALL 	 16	2	3	; slot16 = love.math.random(slot17, slot18)
		147	[  0]	TSETS	 16	15	66	; slot15.col = love.math.random
		148	[  0]	CALL 	 12	1	3	;  = table.insert(slot13, slot14)
		149	[  0]	KPRI 	 12		2	; slot12 = true
		150	[  0]	TSETS	 12	11	89	; slot11._uiActiveThisSpin = slot12
		151	[  0]	KPRI 	 12		2	; slot12 = true
		152	[  0]	TSETS	 12	11	87	; slot11._uiSustainSpin = slot12
		153	[  0]	KPRI 	 12		2	; slot12 = true
		154	[  0]	TSETS	 12	11	88	; slot11._uiTrigger = slot12
		155	[  0]	JMP  	 12		115	; 	goto 271
		156	[  0]	TGETS	 12	11	86	; slot12 = slot11.key
		157	[  0]	ISNES	 12		65	; if <unknown table>.key ~= "BlackNote"
		158	[  0]	JMP  	 12		38	; 	goto 197
		159	[  0]	ISF  	   		0	; if not slot0
		160	[  0]	JMP  	 12		110	; 	goto 271
		161	[  0]	TGETS	 12	0	64	; slot12 = slot0.isFirstSpin
		162	[  0]	ISNEP	 12		2	; if <unknown table>.isFirstSpin ~= true
		163	[  0]	JMP  	 12		107	; 	goto 271
		164	[  0]	TGETS	 12	11	63	; slot12 = slot11._blackNoteUsedWave
		165	[  0]	IST  	   		12	; if <unknown table>._blackNoteUsedWave
		166	[  0]	JMP  	 13		1	; 	goto 168
		167	[  0]	KSHORT	 12		65535	; slot12 = 65535
		168	[  0]	ISEQV	 12		1	; if slot12 == slot1
		169	[  0]	JMP  	 12		101	; 	goto 271
		170	[  0]	TSETS	  1	11	63	; slot11._blackNoteUsedWave = slot1
		171	[  0]	GGET 	 12		73	; slot12 = _env["table"]
		172	[  0]	TGETS	 12	12	72	; slot12 = table.insert
		173	[  0]	MOV  	 14		4	; slot14 = slot4
		174	[  0]	TDUP 	 15		62	; slot15 = copy table#k62
		175	[  0]	GGET 	 16		71	; slot16 = _env["love"]
		176	[  0]	TGETS	 16	16	70	; slot16 = love.math
		177	[  0]	TGETS	 16	16	69	; slot16 = love.math.random
		178	[  0]	KSHORT	 18		1	; slot18 = 1
		179	[  0]	KSHORT	 19		3	; slot19 = 3
		180	[  0]	CALL 	 16	2	3	; slot16 = love.math.random(slot17, slot18)
		181	[  0]	TSETS	 16	15	67	; slot15.row = love.math.random
		182	[  0]	GGET 	 16		71	; slot16 = _env["love"]
		183	[  0]	TGETS	 16	16	70	; slot16 = love.math
		184	[  0]	TGETS	 16	16	69	; slot16 = love.math.random
		185	[  0]	KSHORT	 18		1	; slot18 = 1
		186	[  0]	KSHORT	 19		3	; slot19 = 3
		187	[  0]	CALL 	 16	2	3	; slot16 = love.math.random(slot17, slot18)
		188	[  0]	TSETS	 16	15	66	; slot15.col = love.math.random
		189	[  0]	CALL 	 12	1	3	;  = table.insert(slot13, slot14)
		190	[  0]	KPRI 	 12		2	; slot12 = true
		191	[  0]	TSETS	 12	11	89	; slot11._uiActiveThisSpin = slot12
		192	[  0]	KPRI 	 12		2	; slot12 = true
		193	[  0]	TSETS	 12	11	87	; slot11._uiSustainSpin = slot12
		194	[  0]	KPRI 	 12		2	; slot12 = true
		195	[  0]	TSETS	 12	11	88	; slot11._uiTrigger = slot12
		196	[  0]	JMP  	 12		74	; 	goto 271
		197	[  0]	TGETS	 12	11	86	; slot12 = slot11.key
		198	[  0]	ISNES	 12		61	; if <unknown table>.key ~= "BloodlineSeal"
		199	[  0]	JMP  	 12		33	; 	goto 233
		200	[  0]	TGETS	 12	11	60	; slot12 = slot11._bloodlinePendingSym
		201	[  0]	ISF  	   		12	; if not <unknown table>._bloodlinePendingSym
		202	[  0]	JMP  	 13		68	; 	goto 271
		203	[  0]	IST  	   		5	; if slot5
		204	[  0]	JMP  	 13		1	; 	goto 206
		205	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		206	[  0]	GGET 	 13		91	; slot13 = _env["ipairs"]
		207	[  0]	UGET 	 15		5	; slot15 = uv5"unknwon"
		208	[  0]	KSHORT	 17		3	; slot17 = 3
		209	[  0]	CALL 	 15	0	2	; MULTRES = uv5"unknown"(love.math.random)
		210	[  0]	CALLM	 13	4	0	; slot13, slot14, slot15 = ipairs(, ...MULTRES)
		211	[  0]	JMP  	 16		10	; 	goto 222
		212	[  0]	GGET 	 18		73	; slot18 = _env["table"]
		213	[  0]	TGETS	 18	18	72	; slot18 = table.insert
		214	[  0]	MOV  	 20		5	; slot20 = slot5
		215	[  0]	TDUP 	 21		59	; slot21 = copy table#k59
		216	[  0]	TGETS	 22	17	67	; slot22 = slot17.row
		217	[  0]	TSETS	 22	21	67	; slot21.row = <unknown table>.row
		218	[  0]	TGETS	 22	17	66	; slot22 = slot17.col
		219	[  0]	TSETS	 22	21	66	; slot21.col = <unknown table>.col
		220	[  0]	TSETS	 12	21	58	; slot21.symbol = <unknown table>._bloodlinePendingSym
		221	[  0]	CALL 	 18	1	3	;  = table.insert(slot19, slot20)
		222	[  0]	ITERC	 16	3	3	; slot16, slot17, slot18 = ipairs, slot14, uv5"unknown"; slot16, slot17 = ipairs(slot14, uv5"unknown")
		223	[  0]	ITERL	 16		-12	; uv5"unknown" = love.math.random; if love.math.random != nil goto 212
		224	[  0]	KPRI 	 13		0	; slot13 = nil
		225	[  0]	TSETS	 13	11	60	; slot11._bloodlinePendingSym = slot13
		226	[  0]	KPRI 	 13		2	; slot13 = true
		227	[  0]	TSETS	 13	11	89	; slot11._uiActiveThisSpin = slot13
		228	[  0]	KPRI 	 13		2	; slot13 = true
		229	[  0]	TSETS	 13	11	87	; slot11._uiSustainSpin = slot13
		230	[  0]	KPRI 	 13		2	; slot13 = true
		231	[  0]	TSETS	 13	11	88	; slot11._uiTrigger = slot13
		232	[  0]	JMP  	 12		38	; 	goto 271
		233	[  0]	TGETS	 12	11	86	; slot12 = slot11.key
		234	[  0]	ISNES	 12		57	; if <unknown table>.key ~= "GoldenLever"
		235	[  0]	JMP  	 12		35	; 	goto 271
		236	[  0]	GGET 	 12		96	; slot12 = _env["tonumber"]
		237	[  0]	TGETS	 14	11	56	; slot14 = slot11._goldenLeverSpinCount
		238	[  0]	IST  	   		14	; if <unknown table>._goldenLeverSpinCount
		239	[  0]	JMP  	 15		1	; 	goto 241
		240	[  0]	KSHORT	 14		0	; slot14 = 0
		241	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		242	[  0]	IST  	   		12	; if tonumber
		243	[  0]	JMP  	 13		1	; 	goto 245
		244	[  0]	KSHORT	 12		0	; slot12 = 0
		245	[  0]	ADDVN	 12	12	2	; slot12 = slot12 + 1
		246	[  0]	TSETS	 12	11	56	; slot11._goldenLeverSpinCount = slot12
		247	[  0]	TGETS	 12	11	56	; slot12 = slot11._goldenLeverSpinCount
		248	[  0]	MODVN	 12	12	5	; slot12 = <unknown table>._goldenLeverSpinCount % 5
		249	[  0]	ISNEN	 12		4	; if slot12 ~= 0
		250	[  0]	JMP  	 12		20	; 	goto 271
		251	[  0]	TDUP 	 12		55	; slot12 = copy table#k55
		252	[  0]	GGET 	 13		71	; slot13 = _env["love"]
		253	[  0]	TGETS	 13	13	70	; slot13 = love.math
		254	[  0]	TGETS	 13	13	69	; slot13 = love.math.random
		255	[  0]	KSHORT	 15		1	; slot15 = 1
		256	[  0]	KSHORT	 16		3	; slot16 = 3
		257	[  0]	CALL 	 13	2	3	; slot13 = love.math.random(slot14, slot15)
		258	[  0]	TSETS	 13	12	67	; slot12.row = love.math.random
		259	[  0]	GGET 	 13		71	; slot13 = _env["love"]
		260	[  0]	TGETS	 13	13	70	; slot13 = love.math
		261	[  0]	TGETS	 13	13	69	; slot13 = love.math.random
		262	[  0]	KSHORT	 15		1	; slot15 = 1
		263	[  0]	KSHORT	 16		3	; slot16 = 3
		264	[  0]	CALL 	 13	2	3	; slot13 = love.math.random(slot14, slot15)
		265	[  0]	TSETS	 13	12	66	; slot12.col = love.math.random
		266	[  0]	MOV  	  6		12	; slot6 = slot12
		267	[  0]	KPRI 	 12		2	; slot12 = true
		268	[  0]	TSETS	 12	11	89	; slot11._uiActiveThisSpin = slot12
		269	[  0]	KPRI 	 12		2	; slot12 = true
		270	[  0]	TSETS	 12	11	87	; slot11._uiSustainSpin = slot12
		271	[  0]	ITERC	 11	2	3	; slot11, slot12, slot13 = uv3"unknown", <unknown table>.unitGradeProbabilities, slot10; slot11 = uv3"unknown"(<unknown table>.unitGradeProbabilities, slot10)
		272	[  0]	ITERL	 11		-179	; slot10 = slot11; if slot11 != nil goto 94
		273	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		274	[  0]	MOV  	 10		4	; slot10 = slot4
		275	[  0]	MOV  	 11		5	; slot11 = slot5
		276	[  0]	CALL 	  8	3	3	; slot8, slot9 = uv6"unknown"(<unknown table>.unitGradeProbabilities, slot10)
		277	[  0]	MOV  	  5		9	; slot5 = <unknown table>.unitGradeProbabilities
		278	[  0]	MOV  	  4		8	; slot4 = uv6"unknown"
		279	[  0]	TGETB	  8	4	1	; slot8 = uv6"unknown"[1]
		280	[  0]	GGET 	  9		70	; slot9 = _env["math"]
		281	[  0]	TGETS	  9	9	54	; slot9 = math.max
		282	[  0]	KSHORT	 11		0	; slot11 = 0
		283	[  0]	GGET 	 12		70	; slot12 = _env["math"]
		284	[  0]	TGETS	 12	12	53	; slot12 = math.min
		285	[  0]	KNUM 	 14		6	; slot14 = 0.05
		286	[  0]	MOV  	 15		3	; slot15 = slot3
		287	[  0]	CALL 	 12	0	3	; MULTRES = math.min(love.math.random, slot14)
		288	[  0]	CALLM	  9	2	1	; slot9 = math.max(slot10, ...MULTRES)
		289	[  0]	MOV  	  3		9	; slot3 = math.max
		290	[  0]	UGET 	  9		7	; slot9 = uv7"unknwon"
		291	[  0]	MOV  	 11		1	; slot11 = slot1
		292	[  0]	CALL 	  9	2	2	; slot9 = uv7"unknown"(slot10)
		293	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		294	[  0]	MOV  	 12		1	; slot12 = slot1
		295	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = uv3"unknown"(slot11)
		296	[  0]	JMP  	 13		21	; 	goto 318
		297	[  0]	TGETS	 14	13	86	; slot14 = love.math.random.key
		298	[  0]	ISNES	 14		52	; if love.math.random.key ~= "PurusaVerdict"
		299	[  0]	JMP  	 14		18	; 	goto 318
		300	[  0]	TGETS	 14	13	51	; slot14 = love.math.random._purusaUsedWave
		301	[  0]	IST  	   		14	; if love.math.random._purusaUsedWave
		302	[  0]	JMP  	 15		1	; 	goto 304
		303	[  0]	KSHORT	 14		65535	; slot14 = 65535
		304	[  0]	ISEQV	 14		1	; if slot14 == slot1
		305	[  0]	JMP  	 14		12	; 	goto 318
		306	[  0]	GGET 	 14		70	; slot14 = _env["math"]
		307	[  0]	TGETS	 14	14	54	; slot14 = math.max
		308	[  0]	TGETS	 16	13	50	; slot16 = love.math.random._nextWinBoost
		309	[  0]	IST  	   		16	; if love.math.random._nextWinBoost
		310	[  0]	JMP  	 17		1	; 	goto 312
		311	[  0]	KSHORT	 16		0	; slot16 = 0
		312	[  0]	KNUM 	 17		7	; slot17 = 0.15
		313	[  0]	CALL 	 14	2	3	; slot14 = math.max(slot15, slot16)
		314	[  0]	TSETS	 14	13	50	; love.math.random._nextWinBoost = math.max
		315	[  0]	TSETS	  1	13	51	; love.math.random._purusaUsedWave = slot1
		316	[  0]	KPRI 	 14		2	; slot14 = true
		317	[  0]	TSETS	 14	13	49	; love.math.random._purusaArmJackpot = slot14
		318	[  0]	ITERC	 13	2	3	; slot13, slot14, slot15 = uv3"unknown", slot11, slot12; slot13 = uv3"unknown"(slot11, slot12)
		319	[  0]	ITERL	 13		-23	; slot12 = love.math.random; if love.math.random != nil goto 297
		320	[  0]	KSHORT	 10		0	; slot10 = 0
		321	[  0]	UGET 	 11		3	; slot11 = uv3"unknwon"
		322	[  0]	MOV  	 13		1	; slot13 = slot1
		323	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = uv3"unknown"(slot12)
		324	[  0]	JMP  	 14		17	; 	goto 342
		325	[  0]	TGETS	 15	14	50	; slot15 = slot14._nextWinBoost
		326	[  0]	ISF  	   		15	; if not <unknown table>._nextWinBoost
		327	[  0]	JMP  	 16		14	; 	goto 342
		328	[  0]	TGETS	 15	14	50	; slot15 = slot14._nextWinBoost
		329	[  0]	KSHORT	 16		0	; slot16 = 0
		330	[  0]	ISGE 	 16		15	; if slot16 >= <unknown table>._nextWinBoost
		331	[  0]	JMP  	 15		10	; 	goto 342
		332	[  0]	KPRI 	 15		2	; slot15 = true
		333	[  0]	TSETS	 15	14	89	; slot14._uiActiveThisSpin = slot15
		334	[  0]	KPRI 	 15		2	; slot15 = true
		335	[  0]	TSETS	 15	14	87	; slot14._uiSustainSpin = slot15
		336	[  0]	KPRI 	 15		2	; slot15 = true
		337	[  0]	TSETS	 15	14	88	; slot14._uiTrigger = slot15
		338	[  0]	TGETS	 15	14	50	; slot15 = slot14._nextWinBoost
		339	[  0]	ADDVV	 10	10	15	; slot10 = slot10 + <unknown table>._nextWinBoost
		340	[  0]	KPRI 	 15		0	; slot15 = nil
		341	[  0]	TSETS	 15	14	50	; slot14._nextWinBoost = slot15
		342	[  0]	ITERC	 14	2	3	; slot14, slot15, slot16 = uv3"unknown", slot12, slot13; slot14 = uv3"unknown"(slot12, slot13)
		343	[  0]	ITERL	 14		-19	; slot13 = slot14; if slot14 != nil goto 325
		344	[  0]	GGET 	 11		70	; slot11 = _env["math"]
		345	[  0]	TGETS	 11	11	54	; slot11 = math.max
		346	[  0]	KSHORT	 13		0	; slot13 = 0
		347	[  0]	GGET 	 14		70	; slot14 = _env["math"]
		348	[  0]	TGETS	 14	14	53	; slot14 = math.min
		349	[  0]	KSHORT	 16		1	; slot16 = 1
		350	[  0]	ADDVV	 17	2	9	; slot17 = slot2 + uv7"unknown"
		351	[  0]	ADDVV	 17	17	10	; slot17 = slot17 + slot10
		352	[  0]	CALL 	 14	0	3	; MULTRES = math.min(slot15, slot16)
		353	[  0]	CALLM	 11	2	1	; slot11 = math.max(slot12, ...MULTRES)
		354	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		355	[  0]	TGETS	 12	12	94	; slot12 = uv1"unknown".slot
		356	[  0]	TSETS	 11	12	93	; uv1"unknown".slot.forceWinProb = math.max
		357	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		358	[  0]	KPRI 	 13		2	; slot13 = true
		359	[  0]	TSETS	 13	12	48	; uv2"unknown"._appliedThisSpin = slot13
		360	[  0]	KPRI 	 12		0	; slot12 = nil
		361	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		362	[  0]	MOV  	 15		1	; slot15 = slot1
		363	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = uv3"unknown"(math.min)
		364	[  0]	JMP  	 16		22	; 	goto 387
		365	[  0]	TGETS	 17	16	86	; slot17 = slot16.key
		366	[  0]	ISNES	 17		47	; if <unknown table>.key ~= "Resonoscope"
		367	[  0]	JMP  	 17		19	; 	goto 387
		368	[  0]	TGETS	 17	16	46	; slot17 = slot16._resonoJackpotNext
		369	[  0]	ISF  	   		17	; if not <unknown table>._resonoJackpotNext
		370	[  0]	JMP  	 18		16	; 	goto 387
		371	[  0]	KPRI 	 17		2	; slot17 = true
		372	[  0]	TSETS	 17	16	89	; slot16._uiActiveThisSpin = slot17
		373	[  0]	KPRI 	 17		2	; slot17 = true
		374	[  0]	TSETS	 17	16	87	; slot16._uiSustainSpin = slot17
		375	[  0]	KPRI 	 17		0	; slot17 = nil
		376	[  0]	TSETS	 17	16	46	; slot16._resonoJackpotNext = slot17
		377	[  0]	GGET 	 17		71	; slot17 = _env["love"]
		378	[  0]	TGETS	 17	17	70	; slot17 = love.math
		379	[  0]	TGETS	 17	17	69	; slot17 = love.math.random
		380	[  0]	CALL 	 17	2	1	; slot17 = love.math.random()
		381	[  0]	KNUM 	 18		8	; slot18 = 0.03
		382	[  0]	ISGE 	 17		18	; if love.math.random >= slot18
		383	[  0]	JMP  	 17		3	; 	goto 387
		384	[  0]	KSHORT	 12		5	; slot12 = 5
		385	[  0]	KPRI 	 17		2	; slot17 = true
		386	[  0]	TSETS	 17	16	88	; slot16._uiTrigger = slot17
		387	[  0]	ITERC	 16	2	3	; slot16, slot17, slot18 = uv3"unknown", math.min, slot15; slot16 = uv3"unknown"(math.min, slot15)
		388	[  0]	ITERL	 16		-24	; slot15 = slot16; if slot16 != nil goto 365
		389	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		390	[  0]	MOV  	 15		1	; slot15 = slot1
		391	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = uv3"unknown"(math.min)
		392	[  0]	JMP  	 16		22	; 	goto 415
		393	[  0]	TGETS	 17	16	86	; slot17 = slot16.key
		394	[  0]	ISNES	 17		52	; if <unknown table>.key ~= "PurusaVerdict"
		395	[  0]	JMP  	 17		19	; 	goto 415
		396	[  0]	TGETS	 17	16	49	; slot17 = slot16._purusaArmJackpot
		397	[  0]	ISF  	   		17	; if not <unknown table>._purusaArmJackpot
		398	[  0]	JMP  	 18		16	; 	goto 415
		399	[  0]	KPRI 	 17		2	; slot17 = true
		400	[  0]	TSETS	 17	16	89	; slot16._uiActiveThisSpin = slot17
		401	[  0]	KPRI 	 17		2	; slot17 = true
		402	[  0]	TSETS	 17	16	87	; slot16._uiSustainSpin = slot17
		403	[  0]	GGET 	 17		71	; slot17 = _env["love"]
		404	[  0]	TGETS	 17	17	70	; slot17 = love.math
		405	[  0]	TGETS	 17	17	69	; slot17 = love.math.random
		406	[  0]	CALL 	 17	2	1	; slot17 = love.math.random()
		407	[  0]	KNUM 	 18		9	; slot18 = 0.004
		408	[  0]	ISGE 	 17		18	; if love.math.random >= slot18
		409	[  0]	JMP  	 17		3	; 	goto 413
		410	[  0]	KSHORT	 12		5	; slot12 = 5
		411	[  0]	KPRI 	 17		2	; slot17 = true
		412	[  0]	TSETS	 17	16	88	; slot16._uiTrigger = slot17
		413	[  0]	KPRI 	 17		0	; slot17 = nil
		414	[  0]	TSETS	 17	16	49	; slot16._purusaArmJackpot = slot17
		415	[  0]	ITERC	 16	2	3	; slot16, slot17, slot18 = uv3"unknown", math.min, slot15; slot16 = uv3"unknown"(math.min, slot15)
		416	[  0]	ITERL	 16		-24	; slot15 = slot16; if slot16 != nil goto 393
		417	[  0]	UGET 	 13		3	; slot13 = uv3"unknwon"
		418	[  0]	MOV  	 15		1	; slot15 = slot1
		419	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = uv3"unknown"(math.min)
		420	[  0]	JMP  	 16		33	; 	goto 454
		421	[  0]	TGETS	 17	16	86	; slot17 = slot16.key
		422	[  0]	ISNES	 17		45	; if <unknown table>.key ~= "OracleSigil"
		423	[  0]	JMP  	 17		30	; 	goto 454
		424	[  0]	GGET 	 17		70	; slot17 = _env["math"]
		425	[  0]	TGETS	 17	17	54	; slot17 = math.max
		426	[  0]	KSHORT	 19		0	; slot19 = 0
		427	[  0]	TGETS	 20	16	44	; slot20 = slot16._oracleCount
		428	[  0]	IST  	   		20	; if <unknown table>._oracleCount
		429	[  0]	JMP  	 21		1	; 	goto 431
		430	[  0]	KSHORT	 20		0	; slot20 = 0
		431	[  0]	CALL 	 17	2	3	; slot17 = math.max(slot18, slot19)
		432	[  0]	ADDVN	 17	17	2	; slot17 = math.max + 1
		433	[  0]	TSETS	 17	16	44	; slot16._oracleCount = slot17
		434	[  0]	TGETS	 17	16	44	; slot17 = slot16._oracleCount
		435	[  0]	MODVN	 17	17	3	; slot17 = <unknown table>._oracleCount % 6
		436	[  0]	ISNEN	 17		4	; if slot17 ~= 0
		437	[  0]	JMP  	 17		16	; 	goto 454
		438	[  0]	KPRI 	 17		2	; slot17 = true
		439	[  0]	TSETS	 17	16	89	; slot16._uiActiveThisSpin = slot17
		440	[  0]	KPRI 	 17		2	; slot17 = true
		441	[  0]	TSETS	 17	16	87	; slot16._uiSustainSpin = slot17
		442	[  0]	GGET 	 17		71	; slot17 = _env["love"]
		443	[  0]	TGETS	 17	17	70	; slot17 = love.math
		444	[  0]	TGETS	 17	17	69	; slot17 = love.math.random
		445	[  0]	CALL 	 17	2	1	; slot17 = love.math.random()
		446	[  0]	KNUM 	 18		10	; slot18 = 0.01
		447	[  0]	ISGE 	 17		18	; if love.math.random >= slot18
		448	[  0]	JMP  	 17		3	; 	goto 452
		449	[  0]	KSHORT	 12		5	; slot12 = 5
		450	[  0]	KPRI 	 17		2	; slot17 = true
		451	[  0]	TSETS	 17	16	88	; slot16._uiTrigger = slot17
		452	[  0]	KSHORT	 17		0	; slot17 = 0
		453	[  0]	TSETS	 17	16	44	; slot16._oracleCount = slot17
		454	[  0]	ITERC	 16	2	3	; slot16, slot17, slot18 = uv3"unknown", math.min, slot15; slot16 = uv3"unknown"(math.min, slot15)
		455	[  0]	ITERL	 16		-35	; slot15 = slot16; if slot16 != nil goto 421
		456	[  0]	KPRI 	 13		1	; slot13 = false
		457	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		458	[  0]	MOV  	 16		1	; slot16 = slot1
		459	[  0]	CALL 	 14	4	2	; slot14, slot15, slot16 = uv3"unknown"(slot15)
		460	[  0]	JMP  	 17		15	; 	goto 476
		461	[  0]	TGETS	 18	17	86	; slot18 = slot17.key
		462	[  0]	ISNES	 18		43	; if <unknown table>.key ~= "ReverseShell"
		463	[  0]	JMP  	 18		12	; 	goto 476
		464	[  0]	TGETS	 18	17	42	; slot18 = slot17._forceNextWinOnce
		465	[  0]	ISF  	   		18	; if not <unknown table>._forceNextWinOnce
		466	[  0]	JMP  	 19		9	; 	goto 476
		467	[  0]	KPRI 	 18		2	; slot18 = true
		468	[  0]	TSETS	 18	17	89	; slot17._uiActiveThisSpin = slot18
		469	[  0]	KPRI 	 18		2	; slot18 = true
		470	[  0]	TSETS	 18	17	87	; slot17._uiSustainSpin = slot18
		471	[  0]	KPRI 	 18		2	; slot18 = true
		472	[  0]	TSETS	 18	17	88	; slot17._uiTrigger = slot18
		473	[  0]	KPRI 	 13		2	; slot13 = true
		474	[  0]	KPRI 	 18		0	; slot18 = nil
		475	[  0]	TSETS	 18	17	42	; slot17._forceNextWinOnce = slot18
		476	[  0]	ITERC	 17	2	3	; slot17, slot18, slot19 = uv3"unknown", slot15, slot16; slot17 = uv3"unknown"(slot15, slot16)
		477	[  0]	ITERL	 17		-17	; slot16 = slot17; if slot17 != nil goto 461
		478	[  0]	FNEW 	 14		41	; N/A:0-0: 1 args, 0 upvalues, 9 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	IST  	   		0	; if slot0
			  2	[  0]	JMP  	  1		2	; 	goto 5
			  3	[  0]	KPRI 	  1		0	; slot1 = nil
			  4	[  0]	RET1 	  1		2	; return slot1
			  5	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
			  6	[  0]	GGET 	  2		0	; slot2 = _env["pairs"]
			  7	[  0]	MOV  	  4		0	; slot4 = slot0
			  8	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
			  9	[  0]	ISNEXT	  5		1	; Verify ITERN at 11; goto 11
			 10	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
			 11	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
			 12	[  0]	ITERL	  5		-3	; slot4 = slot5; if slot5 != nil goto 10
			 13	[  0]	RET1 	  1		2	; return slot1
		479	[  0]	FNEW 	 15		40	; N/A:0-0: 3 args, 0 upvalues, 17 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	ISF  	   		0	; if not slot0
			  2	[  0]	JMP  	  3		7	; 	goto 10
			  3	[  0]	ISF  	   		1	; if not slot1
			  4	[  0]	JMP  	  3		5	; 	goto 10
			  5	[  0]	ISF  	   		2	; if not slot2
			  6	[  0]	JMP  	  3		3	; 	goto 10
			  7	[  0]	KSHORT	  3		0	; slot3 = 0
			  8	[  0]	ISGT 	  2		3	; if slot2 > slot3
			  9	[  0]	JMP  	  3		1	; 	goto 11
			 10	[  0]	RET1 	  0		2	; return slot0
			 11	[  0]	KSHORT	  3		0	; slot3 = 0
			 12	[  0]	GGET 	  4		4	; slot4 = _env["pairs"]
			 13	[  0]	MOV  	  6		0	; slot6 = slot0
			 14	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = pairs(slot5)
			 15	[  0]	ISNEXT	  7		9	; Verify ITERN at 25; goto 25
			 16	[  0]	GGET 	  9		3	; slot9 = _env["tonumber"]
			 17	[  0]	ISTC 	 11		8	; slot11 = slot8; if slot8
			 18	[  0]	JMP  	 11		1	; 	goto 20
			 19	[  0]	KSHORT	 11		0	; slot11 = 0
			 20	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
			 21	[  0]	IST  	   		9	; if tonumber
			 22	[  0]	JMP  	 10		1	; 	goto 24
			 23	[  0]	KSHORT	  9		0	; slot9 = 0
			 24	[  0]	ADDVV	  3	3	9	; slot3 = slot3 + slot9
			 25	[  0]	ITERN	  7	3	3	; slot7, slot8, slot9 = pairs, slot5, slot6; slot7, slot8 = pairs(slot5, slot6)
			 26	[  0]	ITERL	  7		-11	; slot6 = slot7; if slot7 != nil goto 16
			 27	[  0]	KNUM 	  4		0	; slot4 = 1e-09
			 28	[  0]	ISGT 	  3		4	; if slot3 > slot4
			 29	[  0]	JMP  	  4		1	; 	goto 31
			 30	[  0]	RET1 	  0		2	; return slot0
			 31	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
			 32	[  0]	GGET 	  5		4	; slot5 = _env["pairs"]
			 33	[  0]	MOV  	  7		0	; slot7 = slot0
			 34	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
			 35	[  0]	ISNEXT	  8		10	; Verify ITERN at 46; goto 46
			 36	[  0]	GGET 	 10		3	; slot10 = _env["tonumber"]
			 37	[  0]	ISTC 	 12		9	; slot12 = slot9; if slot9
			 38	[  0]	JMP  	 12		1	; 	goto 40
			 39	[  0]	KSHORT	 12		0	; slot12 = 0
			 40	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
			 41	[  0]	IST  	   		10	; if tonumber
			 42	[  0]	JMP  	 11		1	; 	goto 44
			 43	[  0]	KSHORT	 10		0	; slot10 = 0
			 44	[  0]	DIVVV	 10	10	3	; slot10 = slot10 / slot3
			 45	[  0]	TSETV	 10	4	8	; slot4[slot8] = slot10
			 46	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, slot7; slot8, slot9 = pairs(slot6, slot7)
			 47	[  0]	ITERL	  8		-12	; slot7 = slot8; if slot8 != nil goto 36
			 48	[  0]	TGETV	  5	4	1	; slot5 = slot4[slot1]
			 49	[  0]	IST  	   		5	; if slot5
			 50	[  0]	JMP  	  6		1	; 	goto 52
			 51	[  0]	KSHORT	  5		0	; slot5 = 0
			 52	[  0]	GGET 	  6		2	; slot6 = _env["math"]
			 53	[  0]	TGETS	  6	6	1	; slot6 = math.max
			 54	[  0]	KSHORT	  8		0	; slot8 = 0
			 55	[  0]	GGET 	  9		2	; slot9 = _env["math"]
			 56	[  0]	TGETS	  9	9	0	; slot9 = math.min
			 57	[  0]	KSHORT	 11		1	; slot11 = 1
			 58	[  0]	ADDVV	 12	5	2	; slot12 = slot5 + slot2
			 59	[  0]	CALL 	  9	0	3	; MULTRES = math.min(slot10, slot11)
			 60	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
			 61	[  0]	SUBNV	  7	6	1	; slot7 = 1 - math.max
			 62	[  0]	SUBNV	  8	5	1	; slot8 = 1 - slot5
			 63	[  0]	KNUM 	  9		0	; slot9 = 1e-09
			 64	[  0]	ISGT 	  8		9	; if slot8 > slot9
			 65	[  0]	JMP  	  9		1	; 	goto 67
			 66	[  0]	KSHORT	  8		1	; slot8 = 1
			 67	[  0]	DIVVV	  7	7	8	; slot7 = slot7 / slot8
			 68	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
			 69	[  0]	GGET 	 10		4	; slot10 = _env["pairs"]
			 70	[  0]	MOV  	 12		4	; slot12 = slot4
			 71	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = pairs(slot11)
			 72	[  0]	ISNEXT	 13		6	; Verify ITERN at 79; goto 79
			 73	[  0]	ISNEV	 13		1	; if slot13 ~= slot1
			 74	[  0]	JMP  	 15		2	; 	goto 77
			 75	[  0]	TSETV	  6	9	13	; slot9[slot13] = math.max
			 76	[  0]	JMP  	 15		2	; 	goto 79
			 77	[  0]	MULVV	 15	14	7	; slot15 = slot14 * slot7
			 78	[  0]	TSETV	 15	9	13	; slot9[slot13] = slot15
			 79	[  0]	ITERN	 13	3	3	; slot13, slot14, slot15 = pairs, slot11, slot12; slot13, slot14 = pairs(slot11, slot12)
			 80	[  0]	ITERL	 13		-8	; slot12 = slot13; if slot13 != nil goto 73
			 81	[  0]	RET1 	  9		2	; return slot9
		480	[  0]	UGET 	 16		3	; slot16 = uv3"unknwon"
		481	[  0]	MOV  	 18		1	; slot18 = slot1
		482	[  0]	CALL 	 16	4	2	; slot16, slot17, slot18 = uv3"unknown"(slot17)
		483	[  0]	JMP  	 19		55	; 	goto 539
		484	[  0]	TGETS	 20	19	86	; slot20 = slot19.key
		485	[  0]	ISNES	 20		39	; if <unknown table>.key ~= "MirageGoblet"
		486	[  0]	JMP  	 20		52	; 	goto 539
		487	[  0]	TGETS	 20	19	38	; slot20 = slot19._mirageSpins
		488	[  0]	IST  	   		20	; if <unknown table>._mirageSpins
		489	[  0]	JMP  	 21		1	; 	goto 491
		490	[  0]	KSHORT	 20		0	; slot20 = 0
		491	[  0]	KSHORT	 21		0	; slot21 = 0
		492	[  0]	ISGE 	 21		20	; if slot21 >= slot20
		493	[  0]	JMP  	 20		45	; 	goto 539
		494	[  0]	TGETS	 20	19	37	; slot20 = slot19._mirageTargetSym
		495	[  0]	ISF  	   		20	; if not <unknown table>._mirageTargetSym
		496	[  0]	JMP  	 21		42	; 	goto 539
		497	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		498	[  0]	TGETS	 20	20	36	; slot20 = uv2"unknown"._baseSymbolWeights
		499	[  0]	IST  	   		20	; if uv2"unknown"._baseSymbolWeights
		500	[  0]	JMP  	 20		7	; 	goto 508
		501	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		502	[  0]	MOV  	 21		14	; slot21 = slot14
		503	[  0]	UGET 	 23		1	; slot23 = uv1"unknwon"
		504	[  0]	TGETS	 23	23	94	; slot23 = uv1"unknown".slot
		505	[  0]	TGETS	 23	23	35	; slot23 = uv1"unknown".slot.symbolWeights
		506	[  0]	CALL 	 21	2	2	; slot21 = slot21(<unknown table>.col)
		507	[  0]	TSETS	 21	20	36	; uv2"unknown"._baseSymbolWeights = slot21
		508	[  0]	MOV  	 20		15	; slot20 = slot15
		509	[  0]	UGET 	 22		2	; slot22 = uv2"unknwon"
		510	[  0]	TGETS	 22	22	36	; slot22 = uv2"unknown"._baseSymbolWeights
		511	[  0]	TGETS	 23	19	37	; slot23 = slot19._mirageTargetSym
		512	[  0]	KNUM 	 24		6	; slot24 = 0.05
		513	[  0]	CALL 	 20	2	4	; slot20 = slot20(slot21, uv2"unknown"._baseSymbolWeights, <unknown table>._mirageTargetSym)
		514	[  0]	ISF  	   		20	; if not slot20
		515	[  0]	JMP  	 21		23	; 	goto 539
		516	[  0]	UGET 	 21		1	; slot21 = uv1"unknwon"
		517	[  0]	TGETS	 21	21	94	; slot21 = uv1"unknown".slot
		518	[  0]	MOV  	 22		14	; slot22 = slot14
		519	[  0]	MOV  	 24		20	; slot24 = slot20
		520	[  0]	CALL 	 22	2	2	; slot22 = slot22(<unknown table>._mirageTargetSym)
		521	[  0]	TSETS	 22	21	35	; uv1"unknown".slot.symbolWeights = slot22
		522	[  0]	UGET 	 21		2	; slot21 = uv2"unknwon"
		523	[  0]	KPRI 	 22		2	; slot22 = true
		524	[  0]	TSETS	 22	21	34	; uv2"unknown"._weightsApplied = slot22
		525	[  0]	KPRI 	 21		2	; slot21 = true
		526	[  0]	TSETS	 21	19	89	; slot19._uiActiveThisSpin = slot21
		527	[  0]	KPRI 	 21		2	; slot21 = true
		528	[  0]	TSETS	 21	19	87	; slot19._uiSustainSpin = slot21
		529	[  0]	GGET 	 21		70	; slot21 = _env["math"]
		530	[  0]	TGETS	 21	21	54	; slot21 = math.max
		531	[  0]	KSHORT	 23		0	; slot23 = 0
		532	[  0]	TGETS	 24	19	38	; slot24 = slot19._mirageSpins
		533	[  0]	IST  	   		24	; if <unknown table>._mirageSpins
		534	[  0]	JMP  	 25		1	; 	goto 536
		535	[  0]	KSHORT	 24		0	; slot24 = 0
		536	[  0]	SUBVN	 24	24	2	; slot24 = slot24 - 1
		537	[  0]	CALL 	 21	2	3	; slot21 = math.max(slot22, slot23)
		538	[  0]	TSETS	 21	19	38	; slot19._mirageSpins = math.max
		539	[  0]	ITERC	 19	2	3	; slot19, slot20, slot21 = uv3"unknown", slot17, slot18; slot19 = uv3"unknown"(slot17, slot18)
		540	[  0]	ITERL	 19		-57	; slot18 = slot19; if slot19 != nil goto 484
		541	[  0]	UGET 	 16		3	; slot16 = uv3"unknwon"
		542	[  0]	MOV  	 18		1	; slot18 = slot1
		543	[  0]	CALL 	 16	4	2	; slot16, slot17, slot18 = uv3"unknown"(slot17)
		544	[  0]	JMP  	 19		39	; 	goto 584
		545	[  0]	TGETS	 20	19	86	; slot20 = slot19.key
		546	[  0]	ISNES	 20		33	; if <unknown table>.key ~= "OldCrown"
		547	[  0]	JMP  	 20		36	; 	goto 584
		548	[  0]	TGETS	 20	19	32	; slot20 = slot19._oldCrownTargetSym
		549	[  0]	ISF  	   		20	; if not <unknown table>._oldCrownTargetSym
		550	[  0]	JMP  	 21		33	; 	goto 584
		551	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		552	[  0]	TGETS	 20	20	36	; slot20 = uv2"unknown"._baseSymbolWeights
		553	[  0]	IST  	   		20	; if uv2"unknown"._baseSymbolWeights
		554	[  0]	JMP  	 20		7	; 	goto 562
		555	[  0]	UGET 	 20		2	; slot20 = uv2"unknwon"
		556	[  0]	MOV  	 21		14	; slot21 = slot14
		557	[  0]	UGET 	 23		1	; slot23 = uv1"unknwon"
		558	[  0]	TGETS	 23	23	94	; slot23 = uv1"unknown".slot
		559	[  0]	TGETS	 23	23	35	; slot23 = uv1"unknown".slot.symbolWeights
		560	[  0]	CALL 	 21	2	2	; slot21 = slot21(slot22)
		561	[  0]	TSETS	 21	20	36	; uv2"unknown"._baseSymbolWeights = slot21
		562	[  0]	MOV  	 20		15	; slot20 = slot15
		563	[  0]	UGET 	 22		1	; slot22 = uv1"unknwon"
		564	[  0]	TGETS	 22	22	94	; slot22 = uv1"unknown".slot
		565	[  0]	TGETS	 22	22	35	; slot22 = uv1"unknown".slot.symbolWeights
		566	[  0]	TGETS	 23	19	32	; slot23 = slot19._oldCrownTargetSym
		567	[  0]	KNUM 	 24		6	; slot24 = 0.05
		568	[  0]	CALL 	 20	2	4	; slot20 = slot20(slot21, uv1"unknown".slot.symbolWeights, <unknown table>._oldCrownTargetSym)
		569	[  0]	ISF  	   		20	; if not slot20
		570	[  0]	JMP  	 21		13	; 	goto 584
		571	[  0]	UGET 	 21		1	; slot21 = uv1"unknwon"
		572	[  0]	TGETS	 21	21	94	; slot21 = uv1"unknown".slot
		573	[  0]	MOV  	 22		14	; slot22 = slot14
		574	[  0]	MOV  	 24		20	; slot24 = slot20
		575	[  0]	CALL 	 22	2	2	; slot22 = slot22(<unknown table>._oldCrownTargetSym)
		576	[  0]	TSETS	 22	21	35	; uv1"unknown".slot.symbolWeights = slot22
		577	[  0]	UGET 	 21		2	; slot21 = uv2"unknwon"
		578	[  0]	KPRI 	 22		2	; slot22 = true
		579	[  0]	TSETS	 22	21	34	; uv2"unknown"._weightsApplied = slot22
		580	[  0]	KPRI 	 21		2	; slot21 = true
		581	[  0]	TSETS	 21	19	89	; slot19._uiActiveThisSpin = slot21
		582	[  0]	KPRI 	 21		2	; slot21 = true
		583	[  0]	TSETS	 21	19	87	; slot19._uiSustainSpin = slot21
		584	[  0]	ITERC	 19	2	3	; slot19, slot20, slot21 = uv3"unknown", slot17, slot18; slot19 = uv3"unknown"(slot17, slot18)
		585	[  0]	ITERL	 19		-41	; slot18 = slot19; if slot19 != nil goto 545
		586	[  0]	KPRI 	 16		0	; slot16 = nil
		587	[  0]	UGET 	 17		3	; slot17 = uv3"unknwon"
		588	[  0]	MOV  	 19		1	; slot19 = slot1
		589	[  0]	CALL 	 17	4	2	; slot17, slot18, slot19 = uv3"unknown"(slot18)
		590	[  0]	JMP  	 20		45	; 	goto 636
		591	[  0]	TGETS	 21	20	86	; slot21 = slot20.key
		592	[  0]	ISNES	 21		31	; if <unknown table>.key ~= "BanStamp"
		593	[  0]	JMP  	 21		42	; 	goto 636
		594	[  0]	TGETS	 21	20	30	; slot21 = slot20._banStampPendingWave
		595	[  0]	ISNEV	 21		1	; if <unknown table>._banStampPendingWave ~= slot1
		596	[  0]	JMP  	 21		39	; 	goto 636
		597	[  0]	TGETS	 21	20	29	; slot21 = slot20._banStampPendingSym
		598	[  0]	ISF  	   		21	; if not <unknown table>._banStampPendingSym
		599	[  0]	JMP  	 22		36	; 	goto 636
		600	[  0]	UGET 	 21		2	; slot21 = uv2"unknwon"
		601	[  0]	TGETS	 21	21	36	; slot21 = uv2"unknown"._baseSymbolWeights
		602	[  0]	IST  	   		21	; if uv2"unknown"._baseSymbolWeights
		603	[  0]	JMP  	 21		7	; 	goto 611
		604	[  0]	UGET 	 21		2	; slot21 = uv2"unknwon"
		605	[  0]	MOV  	 22		14	; slot22 = slot14
		606	[  0]	UGET 	 24		1	; slot24 = uv1"unknwon"
		607	[  0]	TGETS	 24	24	94	; slot24 = uv1"unknown".slot
		608	[  0]	TGETS	 24	24	35	; slot24 = uv1"unknown".slot.symbolWeights
		609	[  0]	CALL 	 22	2	2	; slot22 = slot22(<unknown table>._oldCrownTargetSym)
		610	[  0]	TSETS	 22	21	36	; uv2"unknown"._baseSymbolWeights = slot22
		611	[  0]	TGETS	 16	20	29	; slot16 = slot20._banStampPendingSym
		612	[  0]	UGET 	 21		1	; slot21 = uv1"unknwon"
		613	[  0]	TGETS	 21	21	94	; slot21 = uv1"unknown".slot
		614	[  0]	MOV  	 22		14	; slot22 = slot14
		615	[  0]	UGET 	 24		8	; slot24 = uv8"unknwon"
		616	[  0]	UGET 	 26		1	; slot26 = uv1"unknwon"
		617	[  0]	TGETS	 26	26	94	; slot26 = uv1"unknown".slot
		618	[  0]	TGETS	 26	26	35	; slot26 = uv1"unknown".slot.symbolWeights
		619	[  0]	MOV  	 27		16	; slot27 = <unknown table>._banStampPendingSym
		620	[  0]	CALL 	 24	0	3	; MULTRES = uv8"unknown"(slot25, uv1"unknown".slot.symbolWeights)
		621	[  0]	CALLM	 22	2	0	; slot22 = slot22(, ...MULTRES)
		622	[  0]	TSETS	 22	21	35	; uv1"unknown".slot.symbolWeights = slot22
		623	[  0]	UGET 	 21		2	; slot21 = uv2"unknwon"
		624	[  0]	KPRI 	 22		2	; slot22 = true
		625	[  0]	TSETS	 22	21	34	; uv2"unknown"._weightsApplied = slot22
		626	[  0]	KPRI 	 21		0	; slot21 = nil
		627	[  0]	TSETS	 21	20	30	; slot20._banStampPendingWave = slot21
		628	[  0]	KPRI 	 21		0	; slot21 = nil
		629	[  0]	TSETS	 21	20	29	; slot20._banStampPendingSym = slot21
		630	[  0]	KPRI 	 21		2	; slot21 = true
		631	[  0]	TSETS	 21	20	89	; slot20._uiActiveThisSpin = slot21
		632	[  0]	KPRI 	 21		2	; slot21 = true
		633	[  0]	TSETS	 21	20	87	; slot20._uiSustainSpin = slot21
		634	[  0]	KPRI 	 21		2	; slot21 = true
		635	[  0]	TSETS	 21	20	88	; slot20._uiTrigger = slot21
		636	[  0]	ITERC	 20	2	3	; slot20, slot21, slot22 = uv3"unknown", slot18, slot19; slot20 = uv3"unknown"(slot18, slot19)
		637	[  0]	ITERL	 20		-47	; slot19 = slot20; if slot20 != nil goto 591
		638	[  0]	KSHORT	 17		0	; slot17 = 0
		639	[  0]	KSHORT	 18		0	; slot18 = 0
		640	[  0]	UGET 	 19		3	; slot19 = uv3"unknwon"
		641	[  0]	MOV  	 21		1	; slot21 = slot1
		642	[  0]	CALL 	 19	4	2	; slot19, slot20, slot21 = uv3"unknown"(slot20)
		643	[  0]	JMP  	 22		61	; 	goto 705
		644	[  0]	ISF  	   		0	; if not slot0
		645	[  0]	JMP  	 23		36	; 	goto 682
		646	[  0]	TGETS	 23	0	28	; slot23 = slot0.isPaidSpin
		647	[  0]	ISNEP	 23		2	; if <unknown table>.isPaidSpin ~= true
		648	[  0]	JMP  	 23		33	; 	goto 682
		649	[  0]	TGETS	 23	22	86	; slot23 = slot22.key
		650	[  0]	ISNES	 23		27	; if <unknown table>.key ~= "NutrientLeaf"
		651	[  0]	JMP  	 23		30	; 	goto 682
		652	[  0]	TGETS	 23	22	26	; slot23 = slot22._nutrientDiscountPending
		653	[  0]	IST  	   		23	; if <unknown table>._nutrientDiscountPending
		654	[  0]	JMP  	 24		1	; 	goto 656
		655	[  0]	KSHORT	 23		0	; slot23 = 0
		656	[  0]	KSHORT	 24		0	; slot24 = 0
		657	[  0]	ISGE 	 24		23	; if slot24 >= slot23
		658	[  0]	JMP  	 23		23	; 	goto 682
		659	[  0]	GGET 	 23		70	; slot23 = _env["math"]
		660	[  0]	TGETS	 23	23	54	; slot23 = math.max
		661	[  0]	MOV  	 25		18	; slot25 = slot18
		662	[  0]	GGET 	 26		96	; slot26 = _env["tonumber"]
		663	[  0]	TGETS	 28	22	26	; slot28 = slot22._nutrientDiscountPending
		664	[  0]	IST  	   		28	; if <unknown table>._nutrientDiscountPending
		665	[  0]	JMP  	 29		1	; 	goto 667
		666	[  0]	KSHORT	 28		0	; slot28 = 0
		667	[  0]	CALL 	 26	2	2	; slot26 = tonumber(<unknown table>._banStampPendingSym)
		668	[  0]	IST  	   		26	; if tonumber
		669	[  0]	JMP  	 27		1	; 	goto 671
		670	[  0]	KSHORT	 26		0	; slot26 = 0
		671	[  0]	CALL 	 23	2	3	; slot23 = math.max(slot24, slot25)
		672	[  0]	MOV  	 18		23	; slot18 = math.max
		673	[  0]	KPRI 	 23		2	; slot23 = true
		674	[  0]	TSETS	 23	22	89	; slot22._uiActiveThisSpin = slot23
		675	[  0]	KPRI 	 23		2	; slot23 = true
		676	[  0]	TSETS	 23	22	87	; slot22._uiSustainSpin = slot23
		677	[  0]	KPRI 	 23		2	; slot23 = true
		678	[  0]	TSETS	 23	22	88	; slot22._uiTrigger = slot23
		679	[  0]	KPRI 	 23		0	; slot23 = nil
		680	[  0]	TSETS	 23	22	26	; slot22._nutrientDiscountPending = slot23
		681	[  0]	JMP  	 23		23	; 	goto 705
		682	[  0]	ISF  	   		0	; if not slot0
		683	[  0]	JMP  	 23		21	; 	goto 705
		684	[  0]	TGETS	 23	0	28	; slot23 = slot0.isPaidSpin
		685	[  0]	ISNEP	 23		2	; if <unknown table>.isPaidSpin ~= true
		686	[  0]	JMP  	 23		18	; 	goto 705
		687	[  0]	TGETS	 23	22	86	; slot23 = slot22.key
		688	[  0]	ISNES	 23		25	; if <unknown table>.key ~= "RewindClock"
		689	[  0]	JMP  	 23		15	; 	goto 705
		690	[  0]	TGETS	 23	22	24	; slot23 = slot22._rewindCostReductionPending
		691	[  0]	IST  	   		23	; if <unknown table>._rewindCostReductionPending
		692	[  0]	JMP  	 24		1	; 	goto 694
		693	[  0]	KSHORT	 23		0	; slot23 = 0
		694	[  0]	KSHORT	 24		0	; slot24 = 0
		695	[  0]	ISGE 	 24		23	; if slot24 >= slot23
		696	[  0]	JMP  	 23		8	; 	goto 705
		697	[  0]	KPRI 	 23		2	; slot23 = true
		698	[  0]	TSETS	 23	22	89	; slot22._uiActiveThisSpin = slot23
		699	[  0]	KPRI 	 23		2	; slot23 = true
		700	[  0]	TSETS	 23	22	87	; slot22._uiSustainSpin = slot23
		701	[  0]	KPRI 	 23		2	; slot23 = true
		702	[  0]	TSETS	 23	22	88	; slot22._uiTrigger = slot23
		703	[  0]	KPRI 	 23		0	; slot23 = nil
		704	[  0]	TSETS	 23	22	24	; slot22._rewindCostReductionPending = slot23
		705	[  0]	ITERC	 22	2	3	; slot22, slot23, slot24 = uv3"unknown", slot20, slot21; slot22 = uv3"unknown"(slot20, slot21)
		706	[  0]	ITERL	 22		-63	; slot21 = slot22; if slot22 != nil goto 644
		707	[  0]	KSHORT	 19		1	; slot19 = 1
		708	[  0]	UGET 	 20		3	; slot20 = uv3"unknwon"
		709	[  0]	MOV  	 22		1	; slot22 = slot1
		710	[  0]	CALL 	 20	4	2	; slot20, slot21, slot22 = uv3"unknown"(slot21)
		711	[  0]	JMP  	 23		30	; 	goto 742
		712	[  0]	TGETS	 24	23	86	; slot24 = slot23.key
		713	[  0]	ISNES	 24		23	; if <unknown table>.key ~= "X2"
		714	[  0]	JMP  	 24		27	; 	goto 742
		715	[  0]	TGETS	 24	23	22	; slot24 = slot23._x2Armed
		716	[  0]	ISNEP	 24		2	; if <unknown table>._x2Armed ~= true
		717	[  0]	JMP  	 24		24	; 	goto 742
		718	[  0]	TGETS	 24	23	21	; slot24 = slot23._x2ManualActivation
		719	[  0]	ISNEP	 24		2	; if <unknown table>._x2ManualActivation ~= true
		720	[  0]	JMP  	 24		21	; 	goto 742
		721	[  0]	TGETS	 24	23	20	; slot24 = slot23._x2BetPaid
		722	[  0]	ISNEP	 24		2	; if <unknown table>._x2BetPaid ~= true
		723	[  0]	JMP  	 24		18	; 	goto 742
		724	[  0]	GGET 	 24		70	; slot24 = _env["math"]
		725	[  0]	TGETS	 24	24	54	; slot24 = math.max
		726	[  0]	MOV  	 26		19	; slot26 = slot19
		727	[  0]	KSHORT	 27		2	; slot27 = 2
		728	[  0]	CALL 	 24	2	3	; slot24 = math.max(slot25, slot26)
		729	[  0]	MOV  	 19		24	; slot19 = math.max
		730	[  0]	KPRI 	 24		0	; slot24 = nil
		731	[  0]	TSETS	 24	23	22	; slot23._x2Armed = slot24
		732	[  0]	KPRI 	 24		0	; slot24 = nil
		733	[  0]	TSETS	 24	23	21	; slot23._x2ManualActivation = slot24
		734	[  0]	KPRI 	 24		0	; slot24 = nil
		735	[  0]	TSETS	 24	23	20	; slot23._x2BetPaid = slot24
		736	[  0]	KPRI 	 24		2	; slot24 = true
		737	[  0]	TSETS	 24	23	89	; slot23._uiActiveThisSpin = slot24
		738	[  0]	KPRI 	 24		2	; slot24 = true
		739	[  0]	TSETS	 24	23	87	; slot23._uiSustainSpin = slot24
		740	[  0]	KPRI 	 24		2	; slot24 = true
		741	[  0]	TSETS	 24	23	88	; slot23._uiTrigger = slot24
		742	[  0]	ITERC	 23	2	3	; slot23, slot24, slot25 = uv3"unknown", slot21, slot22; slot23 = uv3"unknown"(slot21, slot22)
		743	[  0]	ITERL	 23		-32	; slot22 = slot23; if slot23 != nil goto 712
		744	[  0]	KSHORT	 20		1	; slot20 = 1
		745	[  0]	UGET 	 21		3	; slot21 = uv3"unknwon"
		746	[  0]	MOV  	 23		1	; slot23 = slot1
		747	[  0]	CALL 	 21	4	2	; slot21, slot22, slot23 = uv3"unknown"(slot22)
		748	[  0]	JMP  	 24		25	; 	goto 774
		749	[  0]	TGETS	 25	24	86	; slot25 = slot24.key
		750	[  0]	ISNES	 25		19	; if <unknown table>.key ~= "Prosperfang"
		751	[  0]	JMP  	 25		22	; 	goto 774
		752	[  0]	TGETS	 25	24	18	; slot25 = slot24._prosperNextMul
		753	[  0]	ISF  	   		25	; if not <unknown table>._prosperNextMul
		754	[  0]	JMP  	 26		19	; 	goto 774
		755	[  0]	TGETS	 25	24	18	; slot25 = slot24._prosperNextMul
		756	[  0]	KSHORT	 26		1	; slot26 = 1
		757	[  0]	ISGE 	 26		25	; if slot26 >= <unknown table>._prosperNextMul
		758	[  0]	JMP  	 25		15	; 	goto 774
		759	[  0]	GGET 	 25		70	; slot25 = _env["math"]
		760	[  0]	TGETS	 25	25	54	; slot25 = math.max
		761	[  0]	MOV  	 27		20	; slot27 = slot20
		762	[  0]	TGETS	 28	24	18	; slot28 = slot24._prosperNextMul
		763	[  0]	IST  	   		28	; if <unknown table>._prosperNextMul
		764	[  0]	JMP  	 29		1	; 	goto 766
		765	[  0]	KSHORT	 28		1	; slot28 = 1
		766	[  0]	CALL 	 25	2	3	; slot25 = math.max(slot26, slot27)
		767	[  0]	MOV  	 20		25	; slot20 = math.max
		768	[  0]	KPRI 	 25		0	; slot25 = nil
		769	[  0]	TSETS	 25	24	18	; slot24._prosperNextMul = slot25
		770	[  0]	KPRI 	 25		2	; slot25 = true
		771	[  0]	TSETS	 25	24	89	; slot24._uiActiveThisSpin = slot25
		772	[  0]	KPRI 	 25		2	; slot25 = true
		773	[  0]	TSETS	 25	24	87	; slot24._uiSustainSpin = slot25
		774	[  0]	ITERC	 24	2	3	; slot24, slot25, slot26 = uv3"unknown", slot22, slot23; slot24 = uv3"unknown"(slot22, slot23)
		775	[  0]	ITERL	 24		-27	; slot23 = slot24; if slot24 != nil goto 749
		776	[  0]	KSHORT	 21		0	; slot21 = 0
		777	[  0]	KPRI 	 22		0	; slot22 = nil
		778	[  0]	TDUP 	 23		17	; slot23 = copy table#k17
		779	[  0]	TSETS	 11	23	93	; slot23.forceWinProb = math.max
		780	[  0]	TSETS	  9	23	16	; slot23.boost = uv7"unknown"
		781	[  0]	TSETS	 10	23	15	; slot23.boostOneShot = slot10
		782	[  0]	TSETS	 19	23	14	; slot23.rewardMul = math.max
		783	[  0]	TSETS	 12	23	13	; slot23.forceExactWinningLines = slot12
		784	[  0]	TSETS	 20	23	12	; slot23.allyStatMul = math.max
		785	[  0]	TSETS	 13	23	11	; slot23.forceWinOnce = slot13
		786	[  0]	TSETS	 21	23	10	; slot23.prismConvertChance = slot21
		787	[  0]	TSETS	 22	23	9	; slot23.lockedReels = slot22
		788	[  0]	TSETS	 17	23	8	; slot23.costStepReduction = slot17
		789	[  0]	TSETS	 18	23	7	; slot23.priceDiscount = math.max
		790	[  0]	TSETS	  3	23	6	; slot23.jokerChance = math.max
		791	[  0]	TSETS	  8	23	5	; slot23.forceJokerCell = slot8
		792	[  0]	TSETS	  4	23	4	; slot23.forceJokerCells = uv6"unknown"
		793	[  0]	TSETS	  5	23	3	; slot23.forceCells = <unknown table>.unitGradeProbabilities
		794	[  0]	TSETS	 16	23	2	; slot23.bannedSymbol = <unknown table>._banStampPendingSym
		795	[  0]	TSETS	  6	23	1	; slot23.goldenCell = slot6
		796	[  0]	TSETS	  7	23	0	; slot23.goldenMaxGrade = uv4"unknown".getGoldenLeverMaxGrade
		797	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 798
		798	[  0]	RET1 	 23		2	; return slot23
	214	[  0]	TSETS	 42	2	105	; slot2.prepareSpin = slot42
	215	[  0]	FNEW 	 42		103	; N/A:0-0: 1 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			#1: W,
			#2: A,
			#3: S,
			#4: M,
			#5: H,
			#6: D,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		10	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	9	; slot1 = math.max
		  3	[  0]	KSHORT	  3		0	; slot3 = 0
		  4	[  0]	GGET 	  4		10	; slot4 = _env["math"]
		  5	[  0]	TGETS	  4	4	8	; slot4 = math.min
		  6	[  0]	KNUM 	  6		0	; slot6 = 0.05
		  7	[  0]	GGET 	  7		7	; slot7 = _env["tonumber"]
		  8	[  0]	ISTC 	  9		0	; slot9 = slot0; if slot0
		  9	[  0]	JMP  	  9		1	; 	goto 11
		 10	[  0]	KSHORT	  9		0	; slot9 = 0
		 11	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 12	[  0]	IST  	   		7	; if tonumber
		 13	[  0]	JMP  	  8		1	; 	goto 15
		 14	[  0]	KSHORT	  7		0	; slot7 = 0
		 15	[  0]	CALL 	  4	0	3	; MULTRES = math.min(slot5, slot6)
		 16	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 17	[  0]	MOV  	  0		1	; slot0 = slot1
		 18	[  0]	KSHORT	  1		0	; slot1 = 0
		 19	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		 20	[  0]	JMP  	  1		8	; 	goto 29
		 21	[  0]	GGET 	  1		6	; slot1 = _env["love"]
		 22	[  0]	TGETS	  1	1	10	; slot1 = love.math
		 23	[  0]	TGETS	  1	1	5	; slot1 = love.math.random
		 24	[  0]	CALL 	  1	2	1	; slot1 = love.math.random()
		 25	[  0]	ISGE 	  1		0	; if slot1 >= slot0
		 26	[  0]	JMP  	  1		2	; 	goto 29
		 27	[  0]	KSTR 	  1		4	; slot1 = "Joker"
		 28	[  0]	RET1 	  1		2	; return slot1
		 29	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 30	[  0]	ISF  	   		1	; if not uv0"unknown"
		 31	[  0]	JMP  	  2		9	; 	goto 41
		 32	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 33	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".slot
		 34	[  0]	ISF  	   		1	; if not uv0"unknown".slot
		 35	[  0]	JMP  	  2		5	; 	goto 41
		 36	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 37	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".slot
		 38	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".slot.symbolWeights
		 39	[  0]	IST  	   		1	; if uv0"unknown".slot.symbolWeights
		 40	[  0]	JMP  	  2		1	; 	goto 42
		 41	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 42	[  0]	TDUP 	  2		1	; slot2 = copy table#k1
		 43	[  0]	KSHORT	  3		0	; slot3 = 0
		 44	[  0]	GGET 	  4		0	; slot4 = _env["ipairs"]
		 45	[  0]	MOV  	  6		2	; slot6 = slot2
		 46	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 47	[  0]	JMP  	  7		14	; 	goto 62
		 48	[  0]	GGET 	  9		10	; slot9 = _env["math"]
		 49	[  0]	TGETS	  9	9	9	; slot9 = math.max
		 50	[  0]	KSHORT	 11		0	; slot11 = 0
		 51	[  0]	GGET 	 12		7	; slot12 = _env["tonumber"]
		 52	[  0]	TGETV	 14	1	8	; slot14 = slot1[slot8]
		 53	[  0]	IST  	   		14	; if slot14
		 54	[  0]	JMP  	 15		1	; 	goto 56
		 55	[  0]	KSHORT	 14		0	; slot14 = 0
		 56	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 57	[  0]	IST  	   		12	; if tonumber
		 58	[  0]	JMP  	 13		1	; 	goto 60
		 59	[  0]	KSHORT	 12		0	; slot12 = 0
		 60	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		 61	[  0]	ADDVV	  3	3	9	; slot3 = slot3 + math.max
		 62	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 63	[  0]	ITERL	  7		-16	; slot6 = slot7; if slot7 != nil goto 48
		 64	[  0]	KSHORT	  4		0	; slot4 = 0
		 65	[  0]	ISGT 	  3		4	; if slot3 > slot4
		 66	[  0]	JMP  	  4		8	; 	goto 75
		 67	[  0]	GGET 	  4		6	; slot4 = _env["love"]
		 68	[  0]	TGETS	  4	4	10	; slot4 = love.math
		 69	[  0]	TGETS	  4	4	5	; slot4 = love.math.random
		 70	[  0]	KSHORT	  6		1	; slot6 = 1
		 71	[  0]	LEN  	  7		2	; slot7 = #slot2
		 72	[  0]	CALL 	  4	2	3	; slot4 = love.math.random(slot5, slot6)
		 73	[  0]	TGETV	  4	2	4	; slot4 = slot2[love.math.random]
		 74	[  0]	RET1 	  4		2	; return slot4
		 75	[  0]	GGET 	  4		6	; slot4 = _env["love"]
		 76	[  0]	TGETS	  4	4	10	; slot4 = love.math
		 77	[  0]	TGETS	  4	4	5	; slot4 = love.math.random
		 78	[  0]	CALL 	  4	2	1	; slot4 = love.math.random()
		 79	[  0]	MULVV	  4	4	3	; slot4 = love.math.random * slot3
		 80	[  0]	GGET 	  5		0	; slot5 = _env["ipairs"]
		 81	[  0]	MOV  	  7		2	; slot7 = slot2
		 82	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 83	[  0]	JMP  	  8		17	; 	goto 101
		 84	[  0]	GGET 	 10		10	; slot10 = _env["math"]
		 85	[  0]	TGETS	 10	10	9	; slot10 = math.max
		 86	[  0]	KSHORT	 12		0	; slot12 = 0
		 87	[  0]	GGET 	 13		7	; slot13 = _env["tonumber"]
		 88	[  0]	TGETV	 15	1	9	; slot15 = slot1[math.max]
		 89	[  0]	IST  	   		15	; if slot15
		 90	[  0]	JMP  	 16		1	; 	goto 92
		 91	[  0]	KSHORT	 15		0	; slot15 = 0
		 92	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 93	[  0]	IST  	   		13	; if tonumber
		 94	[  0]	JMP  	 14		1	; 	goto 96
		 95	[  0]	KSHORT	 13		0	; slot13 = 0
		 96	[  0]	CALL 	 10	2	3	; slot10 = math.max(slot11, slot12)
		 97	[  0]	ISGE 	  4		10	; if slot4 >= math.max
		 98	[  0]	JMP  	 11		1	; 	goto 100
		 99	[  0]	RET1 	  9		2	; return math.max
		100	[  0]	SUBVV	  4	4	10	; slot4 = slot4 - math.max
		101	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		102	[  0]	ITERL	  8		-19	; slot7 = slot8; if slot8 != nil goto 84
		103	[  0]	LEN  	  5		2	; slot5 = #slot2
		104	[  0]	TGETV	  5	2	5	; slot5 = slot2[slot5]
		105	[  0]	RET1 	  5		2	; return slot5
	216	[  0]	FNEW 	 43		102	; N/A:0-0: 3 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  4		1	; slot4 = 1
		  3	[  0]	KSHORT	  5		3	; slot5 = 3
		  4	[  0]	KSHORT	  6		1	; slot6 = 1
		  5	[  0]	FORI 	  4		5	; for slot7 = slot4,slot5,slot6 else goto 11
		  6	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		  7	[  0]	MOV  	 10		2	; slot10 = slot2
		  8	[  0]	CALL 	  8	2	2	; slot8 = uv0"unknown"(slot9)
		  9	[  0]	TSETV	  8	3	7	; slot3[slot7] = uv0"unknown"
		 10	[  0]	FORL 	  4		-5	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 6
		 11	[  0]	TDUP 	  4		2	; slot4 = copy table#k2
		 12	[  0]	TSETS	  1	4	1	; slot4.col = slot1
		 13	[  0]	TSETS	  3	4	0	; slot4.targetFinalSymbols = slot3
		 14	[  0]	RET1 	  4		2	; return slot4
	217	[  0]	FNEW 	 44		101	; N/A:0-0: 2 args, 0 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		10	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISEQS	  2		9	; if slot2 == "table"
		  5	[  0]	JMP  	  2		1	; 	goto 7
		  6	[  0]	UCLO 	  0		84	; nil uvs >= r0; goto 91
		  7	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  8	[  0]	GGET 	  3		8	; slot3 = _env["ipairs"]
		  9	[  0]	MOV  	  5		0	; slot5 = slot0
		 10	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 11	[  0]	JMP  	  6		7	; 	goto 19
		 12	[  0]	ISF  	   		7	; if not slot7
		 13	[  0]	JMP  	  8		5	; 	goto 19
		 14	[  0]	TGETS	  8	7	7	; slot8 = slot7.col
		 15	[  0]	ISF  	   		8	; if not <unknown table>.col
		 16	[  0]	JMP  	  9		2	; 	goto 19
		 17	[  0]	TGETS	  8	7	7	; slot8 = slot7.col
		 18	[  0]	TSETV	  7	2	8	; slot2[<unknown table>.col] = slot7
		 19	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 20	[  0]	ITERL	  6		-9	; slot5 = slot6; if slot6 != nil goto 12
		 21	[  0]	FNEW 	  3		6	; N/A:0-0: 3 args, 1 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  3		3	; slot3 = _env["math"]
			  2	[  0]	TGETS	  3	3	2	; slot3 = math.floor
			  3	[  0]	GGET 	  5		1	; slot5 = _env["tonumber"]
			  4	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
			  5	[  0]	JMP  	  7		1	; 	goto 7
			  6	[  0]	KSHORT	  7		0	; slot7 = 0
			  7	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			  8	[  0]	IST  	   		5	; if tonumber
			  9	[  0]	JMP  	  6		1	; 	goto 11
			 10	[  0]	KSHORT	  5		0	; slot5 = 0
			 11	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
			 12	[  0]	MOV  	  0		3	; slot0 = math.floor
			 13	[  0]	GGET 	  3		3	; slot3 = _env["math"]
			 14	[  0]	TGETS	  3	3	2	; slot3 = math.floor
			 15	[  0]	GGET 	  5		1	; slot5 = _env["tonumber"]
			 16	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
			 17	[  0]	JMP  	  7		1	; 	goto 19
			 18	[  0]	KSHORT	  7		0	; slot7 = 0
			 19	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
			 20	[  0]	IST  	   		5	; if tonumber
			 21	[  0]	JMP  	  6		1	; 	goto 23
			 22	[  0]	KSHORT	  5		0	; slot5 = 0
			 23	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
			 24	[  0]	MOV  	  1		3	; slot1 = math.floor
			 25	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
			 26	[  0]	TGETV	  3	3	1	; slot3 = uv0"unknown"[math.floor]
			 27	[  0]	ISF  	   		2	; if not slot2
			 28	[  0]	JMP  	  4		13	; 	goto 42
			 29	[  0]	KSHORT	  4		1	; slot4 = 1
			 30	[  0]	ISGT 	  4		0	; if slot4 > math.floor
			 31	[  0]	JMP  	  4		10	; 	goto 42
			 32	[  0]	KSHORT	  4		3	; slot4 = 3
			 33	[  0]	ISGT 	  0		4	; if math.floor > slot4
			 34	[  0]	JMP  	  4		7	; 	goto 42
			 35	[  0]	ISF  	   		3	; if not slot3
			 36	[  0]	JMP  	  4		5	; 	goto 42
			 37	[  0]	TGETS	  4	3	0	; slot4 = slot3.targetFinalSymbols
			 38	[  0]	ISF  	   		4	; if not <unknown table>.targetFinalSymbols
			 39	[  0]	JMP  	  5		2	; 	goto 42
			 40	[  0]	TGETS	  4	3	0	; slot4 = slot3.targetFinalSymbols
			 41	[  0]	TSETV	  2	4	0	; <unknown table>.targetFinalSymbols[math.floor] = slot2
			 42	[  0]	RET0 	  0		1	; return
		 22	[  0]	GGET 	  4		8	; slot4 = _env["ipairs"]
		 23	[  0]	GGET 	  6		10	; slot6 = _env["type"]
		 24	[  0]	ISFC 	  8		1	; slot8 = slot1; if not slot1
		 25	[  0]	JMP  	  8		1	; 	goto 27
		 26	[  0]	TGETS	  8	1	5	; slot8 = slot1.forceCells
		 27	[  0]	CALL 	  6	2	2	; slot6 = type(slot7)
		 28	[  0]	ISNES	  6		9	; if type ~= "table"
		 29	[  0]	JMP  	  6		3	; 	goto 33
		 30	[  0]	TGETS	  6	1	5	; slot6 = slot1.forceCells
		 31	[  0]	IST  	   		6	; if <unknown table>.forceCells
		 32	[  0]	JMP  	  7		1	; 	goto 34
		 33	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 34	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 35	[  0]	JMP  	  7		11	; 	goto 47
		 36	[  0]	MOV  	  9		3	; slot9 = slot3
		 37	[  0]	ISFC 	 11		8	; slot11 = <unknown table>.forceCells; if not <unknown table>.forceCells
		 38	[  0]	JMP  	 11		1	; 	goto 40
		 39	[  0]	TGETS	 11	8	4	; slot11 = <unknown table>.forceCells.row
		 40	[  0]	ISFC 	 12		8	; slot12 = <unknown table>.forceCells; if not <unknown table>.forceCells
		 41	[  0]	JMP  	 12		1	; 	goto 43
		 42	[  0]	TGETS	 12	8	7	; slot12 = <unknown table>.forceCells.col
		 43	[  0]	ISFC 	 13		8	; slot13 = <unknown table>.forceCells; if not <unknown table>.forceCells
		 44	[  0]	JMP  	 13		1	; 	goto 46
		 45	[  0]	TGETS	 13	8	3	; slot13 = <unknown table>.forceCells.symbol
		 46	[  0]	CALL 	  9	1	4	;  = slot9(slot10, <unknown table>.forceCells.row, <unknown table>.forceCells.col)
		 47	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 48	[  0]	ITERL	  7		-13	; slot6 = slot7; if slot7 != nil goto 36
		 49	[  0]	ISFC 	  4		1	; slot4 = slot1; if not slot1
		 50	[  0]	JMP  	  4		1	; 	goto 52
		 51	[  0]	TGETS	  4	1	2	; slot4 = slot1.forceJokerCells
		 52	[  0]	GGET 	  5		10	; slot5 = _env["type"]
		 53	[  0]	MOV  	  7		4	; slot7 = <unknown table>.forceJokerCells
		 54	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
		 55	[  0]	ISNES	  5		9	; if type ~= "table"
		 56	[  0]	JMP  	  5		20	; 	goto 77
		 57	[  0]	LEN  	  5		4	; slot5 = #<unknown table>.forceJokerCells
		 58	[  0]	KSHORT	  6		0	; slot6 = 0
		 59	[  0]	ISGE 	  6		5	; if slot6 >= slot5
		 60	[  0]	JMP  	  5		16	; 	goto 77
		 61	[  0]	GGET 	  5		8	; slot5 = _env["ipairs"]
		 62	[  0]	MOV  	  7		4	; slot7 = <unknown table>.forceJokerCells
		 63	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 64	[  0]	JMP  	  8		9	; 	goto 74
		 65	[  0]	MOV  	 10		3	; slot10 = slot3
		 66	[  0]	ISFC 	 12		9	; slot12 = slot9; if not slot9
		 67	[  0]	JMP  	 12		1	; 	goto 69
		 68	[  0]	TGETS	 12	9	4	; slot12 = slot9.row
		 69	[  0]	ISFC 	 13		9	; slot13 = slot9; if not slot9
		 70	[  0]	JMP  	 13		1	; 	goto 72
		 71	[  0]	TGETS	 13	9	7	; slot13 = slot9.col
		 72	[  0]	KSTR 	 14		1	; slot14 = "Joker"
		 73	[  0]	CALL 	 10	1	4	;  = slot10(<unknown table>.forceCells.row, <unknown table>.row, <unknown table>.col)
		 74	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, <unknown table>.forceJokerCells; slot8, slot9 = ipairs(slot6, <unknown table>.forceJokerCells)
		 75	[  0]	ITERL	  8		-11	; <unknown table>.forceJokerCells = <unknown table>.forceCells; if <unknown table>.forceCells != nil goto 65
		 76	[  0]	JMP  	  5		12	; 	goto 89
		 77	[  0]	ISF  	   		1	; if not slot1
		 78	[  0]	JMP  	  5		10	; 	goto 89
		 79	[  0]	TGETS	  5	1	0	; slot5 = slot1.forceJokerCell
		 80	[  0]	ISF  	   		5	; if not <unknown table>.forceJokerCell
		 81	[  0]	JMP  	  6		7	; 	goto 89
		 82	[  0]	MOV  	  5		3	; slot5 = slot3
		 83	[  0]	TGETS	  7	1	0	; slot7 = slot1.forceJokerCell
		 84	[  0]	TGETS	  7	7	4	; slot7 = <unknown table>.forceJokerCell.row
		 85	[  0]	TGETS	  8	1	0	; slot8 = slot1.forceJokerCell
		 86	[  0]	TGETS	  8	8	7	; slot8 = <unknown table>.forceJokerCell.col
		 87	[  0]	KSTR 	  9		1	; slot9 = "Joker"
		 88	[  0]	CALL 	  5	1	4	;  = slot5(slot6, <unknown table>.forceJokerCell.row, <unknown table>.forceJokerCell.col)
		 89	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 90
		 90	[  0]	RET0 	  0		1	; return
		 91	[  0]	RET0 	  0		1	; return
	218	[  0]	FNEW 	 45		100	; N/A:0-0: 1 args, 1 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#4 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#5 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#6 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#7 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#8 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#9 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#10 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#11 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#12 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#13 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#14 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#15 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#16 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#17 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#18 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#19 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#20 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#21 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#22 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#23 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#24 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#25 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#26 = [
			#1: 1,
			#2: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KPRI 	  2		0	; slot2 = nil
		  3	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		  4	[  0]	IST  	   		0	; if slot0
		  5	[  0]	JMP  	  4		4	; 	goto 10
		  6	[  0]	MOV  	  4		1	; slot4 = slot1
		  7	[  0]	MOV  	  5		2	; slot5 = slot2
		  8	[  0]	MOV  	  6		3	; slot6 = slot3
		  9	[  0]	RET  	  4		4	; return slot4, slot5, slot6
		 10	[  0]	TNEW 	  4		9	; slot4 = new table( array: 9, dict: 1)
		 11	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 12	[  0]	TDUP 	  6		26	; slot6 = copy table#k26
		 13	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 14	[  0]	TDUP 	  6		25	; slot6 = copy table#k25
		 15	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 16	[  0]	TDUP 	  6		24	; slot6 = copy table#k24
		 17	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 18	[  0]	TSETB	  5	4	1	; slot4[1] = slot5
		 19	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 20	[  0]	TDUP 	  6		23	; slot6 = copy table#k23
		 21	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 22	[  0]	TDUP 	  6		22	; slot6 = copy table#k22
		 23	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 24	[  0]	TDUP 	  6		21	; slot6 = copy table#k21
		 25	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 26	[  0]	TSETB	  5	4	2	; slot4[2] = slot5
		 27	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 28	[  0]	TDUP 	  6		20	; slot6 = copy table#k20
		 29	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 30	[  0]	TDUP 	  6		19	; slot6 = copy table#k19
		 31	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 32	[  0]	TDUP 	  6		18	; slot6 = copy table#k18
		 33	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 34	[  0]	TSETB	  5	4	3	; slot4[3] = slot5
		 35	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 36	[  0]	TDUP 	  6		17	; slot6 = copy table#k17
		 37	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 38	[  0]	TDUP 	  6		16	; slot6 = copy table#k16
		 39	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 40	[  0]	TDUP 	  6		15	; slot6 = copy table#k15
		 41	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 42	[  0]	TSETB	  5	4	4	; slot4[4] = slot5
		 43	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 44	[  0]	TDUP 	  6		14	; slot6 = copy table#k14
		 45	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 46	[  0]	TDUP 	  6		13	; slot6 = copy table#k13
		 47	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 48	[  0]	TDUP 	  6		12	; slot6 = copy table#k12
		 49	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 50	[  0]	TSETB	  5	4	5	; slot4[5] = slot5
		 51	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 52	[  0]	TDUP 	  6		11	; slot6 = copy table#k11
		 53	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 54	[  0]	TDUP 	  6		10	; slot6 = copy table#k10
		 55	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 56	[  0]	TDUP 	  6		9	; slot6 = copy table#k9
		 57	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 58	[  0]	TSETB	  5	4	6	; slot4[6] = slot5
		 59	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 60	[  0]	TDUP 	  6		8	; slot6 = copy table#k8
		 61	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 62	[  0]	TDUP 	  6		7	; slot6 = copy table#k7
		 63	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 64	[  0]	TDUP 	  6		6	; slot6 = copy table#k6
		 65	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 66	[  0]	TSETB	  5	4	7	; slot4[7] = slot5
		 67	[  0]	TNEW 	  5		4	; slot5 = new table( array: 4, dict: 1)
		 68	[  0]	TDUP 	  6		5	; slot6 = copy table#k5
		 69	[  0]	TSETB	  6	5	1	; slot5[1] = slot6
		 70	[  0]	TDUP 	  6		4	; slot6 = copy table#k4
		 71	[  0]	TSETB	  6	5	2	; slot5[2] = slot6
		 72	[  0]	TDUP 	  6		3	; slot6 = copy table#k3
		 73	[  0]	TSETB	  6	5	3	; slot5[3] = slot6
		 74	[  0]	TSETB	  5	4	8	; slot4[8] = slot5
		 75	[  0]	GGET 	  5		2	; slot5 = _env["ipairs"]
		 76	[  0]	MOV  	  7		4	; slot7 = slot4
		 77	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 78	[  0]	JMP  	  8		49	; 	goto 128
		 79	[  0]	TGETB	 10	9	1	; slot10 = slot9[1]
		 80	[  0]	TGETB	 10	10	1	; slot10 = slot10[1]
		 81	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		 82	[  0]	ISF  	   		10	; if not slot10
		 83	[  0]	JMP  	 11		6	; 	goto 90
		 84	[  0]	TGETB	 10	9	1	; slot10 = slot9[1]
		 85	[  0]	TGETB	 10	10	1	; slot10 = slot10[1]
		 86	[  0]	TGETV	 10	0	10	; slot10 = slot0[slot10]
		 87	[  0]	TGETB	 11	9	1	; slot11 = slot9[1]
		 88	[  0]	TGETB	 11	11	2	; slot11 = slot11[2]
		 89	[  0]	TGETV	 10	10	11	; slot10 = slot10[slot11]
		 90	[  0]	TGETB	 11	9	2	; slot11 = slot9[2]
		 91	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		 92	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		 93	[  0]	ISF  	   		11	; if not slot11
		 94	[  0]	JMP  	 12		6	; 	goto 101
		 95	[  0]	TGETB	 11	9	2	; slot11 = slot9[2]
		 96	[  0]	TGETB	 11	11	1	; slot11 = slot11[1]
		 97	[  0]	TGETV	 11	0	11	; slot11 = slot0[slot11]
		 98	[  0]	TGETB	 12	9	2	; slot12 = slot9[2]
		 99	[  0]	TGETB	 12	12	2	; slot12 = slot12[2]
		100	[  0]	TGETV	 11	11	12	; slot11 = slot11[slot12]
		101	[  0]	TGETB	 12	9	3	; slot12 = slot9[3]
		102	[  0]	TGETB	 12	12	1	; slot12 = slot12[1]
		103	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		104	[  0]	ISF  	   		12	; if not slot12
		105	[  0]	JMP  	 13		6	; 	goto 112
		106	[  0]	TGETB	 12	9	3	; slot12 = slot9[3]
		107	[  0]	TGETB	 12	12	1	; slot12 = slot12[1]
		108	[  0]	TGETV	 12	0	12	; slot12 = slot0[slot12]
		109	[  0]	TGETB	 13	9	3	; slot13 = slot9[3]
		110	[  0]	TGETB	 13	13	2	; slot13 = slot13[2]
		111	[  0]	TGETV	 12	12	13	; slot12 = slot12[slot13]
		112	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		113	[  0]	MOV  	 15		10	; slot15 = slot10
		114	[  0]	MOV  	 16		11	; slot16 = slot11
		115	[  0]	MOV  	 17		12	; slot17 = slot12
		116	[  0]	CALL 	 13	2	4	; slot13 = uv0"unknown"(slot14, slot15, slot16)
		117	[  0]	ISF  	   		13	; if not uv0"unknown"
		118	[  0]	JMP  	 14		9	; 	goto 128
		119	[  0]	GGET 	 14		1	; slot14 = _env["table"]
		120	[  0]	TGETS	 14	14	0	; slot14 = table.insert
		121	[  0]	MOV  	 16		1	; slot16 = slot1
		122	[  0]	MOV  	 17		8	; slot17 = slot8
		123	[  0]	CALL 	 14	1	3	;  = table.insert(slot15, slot16)
		124	[  0]	TSETV	 13	3	8	; slot3[slot8] = uv0"unknown"
		125	[  0]	IST  	   		2	; if slot2
		126	[  0]	JMP  	 14		1	; 	goto 128
		127	[  0]	MOV  	  2		13	; slot2 = uv0"unknown"
		128	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		129	[  0]	ITERL	  8		-51	; slot7 = slot8; if slot8 != nil goto 79
		130	[  0]	MOV  	  5		1	; slot5 = slot1
		131	[  0]	MOV  	  6		2	; slot6 = uv0"unknown"
		132	[  0]	MOV  	  7		3	; slot7 = slot3
		133	[  0]	RET  	  5		4	; return slot5, uv0"unknown", slot7
	219	[  0]	FNEW 	 46		99	; N/A:0-0: 1 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	KSHORT	  3		3	; slot3 = 3
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		20	; for slot5 = slot2,slot3,slot4 else goto 26
		  6	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		  7	[  0]	TSETV	  6	1	5	; slot1[slot5] = slot6
		  8	[  0]	KSHORT	  6		1	; slot6 = 1
		  9	[  0]	KSHORT	  7		3	; slot7 = 3
		 10	[  0]	KSHORT	  8		1	; slot8 = 1
		 11	[  0]	FORI 	  6		13	; for slot9 = slot6,slot7,slot8 else goto 25
		 12	[  0]	TGETV	 10	1	5	; slot10 = slot1[slot5]
		 13	[  0]	ISF  	   		0	; if not slot0
		 14	[  0]	JMP  	 11		7	; 	goto 22
		 15	[  0]	TGETV	 11	0	5	; slot11 = slot0[slot5]
		 16	[  0]	ISF  	   		11	; if not slot11
		 17	[  0]	JMP  	 12		4	; 	goto 22
		 18	[  0]	TGETV	 11	0	5	; slot11 = slot0[slot5]
		 19	[  0]	TGETV	 11	11	9	; slot11 = slot11[slot9]
		 20	[  0]	IST  	   		11	; if slot11
		 21	[  0]	JMP  	 12		1	; 	goto 23
		 22	[  0]	KPRI 	 11		0	; slot11 = nil
		 23	[  0]	TSETV	 11	10	9	; slot10[slot9] = slot11
		 24	[  0]	FORL 	  6		-13	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 12
		 25	[  0]	FORL 	  2		-20	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 26	[  0]	RET1 	  1		2	; return slot1
	220	[  0]	FNEW 	 47		97	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		7	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	6	; slot1 = math.floor
		  3	[  0]	GGET 	  3		5	; slot3 = _env["tonumber"]
		  4	[  0]	ISF  	   		0	; if not slot0
		  5	[  0]	JMP  	  5		3	; 	goto 9
		  6	[  0]	TGETS	  5	0	4	; slot5 = slot0.spinIndexInWave
		  7	[  0]	IST  	   		5	; if <unknown table>.spinIndexInWave
		  8	[  0]	JMP  	  6		1	; 	goto 10
		  9	[  0]	KSHORT	  5		0	; slot5 = 0
		 10	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 11	[  0]	IST  	   		3	; if tonumber
		 12	[  0]	JMP  	  4		1	; 	goto 14
		 13	[  0]	KSHORT	  3		0	; slot3 = 0
		 14	[  0]	CALL 	  1	2	2	; slot1 = math.floor(slot2)
		 15	[  0]	ISEQN	  1		0	; if slot1 == 3
		 16	[  0]	JMP  	  1		2	; 	goto 19
		 17	[  0]	KPRI 	  1		1	; slot1 = false
		 18	[  0]	RET1 	  1		2	; return slot1
		 19	[  0]	GGET 	  1		5	; slot1 = _env["tonumber"]
		 20	[  0]	ISF  	   		0	; if not slot0
		 21	[  0]	JMP  	  3		3	; 	goto 25
		 22	[  0]	TGETS	  3	0	3	; slot3 = slot0.waveId
		 23	[  0]	IST  	   		3	; if <unknown table>.waveId
		 24	[  0]	JMP  	  4		1	; 	goto 26
		 25	[  0]	KSHORT	  3		0	; slot3 = 0
		 26	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		 27	[  0]	IST  	   		1	; if slot1
		 28	[  0]	JMP  	  2		1	; 	goto 30
		 29	[  0]	KSHORT	  1		0	; slot1 = 0
		 30	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 31	[  0]	MOV  	  4		1	; slot4 = slot1
		 32	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 33	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 34	[  0]	MOV  	  4		1	; slot4 = slot1
		 35	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		 36	[  0]	JMP  	  5		11	; 	goto 48
		 37	[  0]	TGETS	  6	5	2	; slot6 = slot5.key
		 38	[  0]	ISNES	  6		1	; if <unknown table>.key ~= "GreedyTail"
		 39	[  0]	JMP  	  6		8	; 	goto 48
		 40	[  0]	TGETS	  6	5	0	; slot6 = slot5._greedyTailUsedWave
		 41	[  0]	IST  	   		6	; if <unknown table>._greedyTailUsedWave
		 42	[  0]	JMP  	  7		1	; 	goto 44
		 43	[  0]	KSHORT	  6		65535	; slot6 = 65535
		 44	[  0]	ISEQV	  6		1	; if slot6 == slot1
		 45	[  0]	JMP  	  6		2	; 	goto 48
		 46	[  0]	KPRI 	  6		2	; slot6 = true
		 47	[  0]	RET1 	  6		2	; return slot6
		 48	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 49	[  0]	ITERL	  5		-13	; slot4 = slot5; if slot5 != nil goto 37
		 50	[  0]	KPRI 	  2		1	; slot2 = false
		 51	[  0]	RET1 	  2		2	; return slot2
	221	[  0]	TSETS	 47	2	98	; slot2.isGreedyTailPending = slot47
	222	[  0]	FNEW 	 47		96	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KPRI 	  1		0	; slot1 = nil
		  2	[  0]	TSETS	  1	0	4	; slot0._uiTrigger = slot1
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	TSETS	  1	0	3	; slot0._uiActiveThisSpin = slot1
		  5	[  0]	KPRI 	  1		0	; slot1 = nil
		  6	[  0]	TSETS	  1	0	2	; slot0._uiSustainSpin = slot1
		  7	[  0]	KPRI 	  1		0	; slot1 = nil
		  8	[  0]	TSETS	  1	0	1	; slot0._uiPulseT0 = slot1
		  9	[  0]	KPRI 	  1		0	; slot1 = nil
		 10	[  0]	TSETS	  1	0	0	; slot0._uiPulseDur = slot1
		 11	[  0]	RET0 	  0		1	; return
	223	[  0]	FNEW 	 48		95	; N/A:0-0: 4 args, 4 upvalues, 21 slots
		
		;;;; constant tables ;;;;
		ktable#21 = [
			[col] = 2,
			]
		
		
		ktable#23 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		  2	[  0]	TGETS	  6	2	28	; slot6 = slot2.grid
		  3	[  0]	CALL 	  4	3	2	; slot4, slot5 = uv0"unknown"(slot5)
		  4	[  0]	KPRI 	  6		0	; slot6 = nil
		  5	[  0]	KSHORT	  7		1	; slot7 = 1
		  6	[  0]	KSHORT	  8		8	; slot8 = 8
		  7	[  0]	KSHORT	  9		1	; slot9 = 1
		  8	[  0]	FORI 	  7		34	; for slot10 = slot7,slot8,slot9 else goto 43
		  9	[  0]	UGET 	 11		1	; slot11 = uv1"unknwon"
		 10	[  0]	TGETS	 13	2	28	; slot13 = slot2.grid
		 11	[  0]	KSHORT	 14		2	; slot14 = 2
		 12	[  0]	TGETS	 15	2	27	; slot15 = slot2.jokerChance
		 13	[  0]	CALL 	 11	2	4	; slot11 = uv1"unknown"(slot12, <unknown table>.grid, slot14)
		 14	[  0]	MOV  	  6		11	; slot6 = uv1"unknown"
		 15	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		 16	[  0]	TNEW 	 13		3	; slot13 = new table( array: 3, dict: 1)
		 17	[  0]	TSETB	  6	13	1	; slot13[1] = uv1"unknown"
		 18	[  0]	MOV  	 14		2	; slot14 = slot2
		 19	[  0]	CALL 	 11	1	3	;  = uv2"unknown"(slot12, slot13)
		 20	[  0]	KPRI 	 11		2	; slot11 = true
		 21	[  0]	KSHORT	 12		1	; slot12 = 1
		 22	[  0]	KSHORT	 13		3	; slot13 = 3
		 23	[  0]	KSHORT	 14		1	; slot14 = 1
		 24	[  0]	FORI 	 12		14	; for <unknown table>.jokerChance = slot12,slot13,slot14 else goto 39
		 25	[  0]	TGETS	 16	6	26	; slot16 = uv1"unknown".targetFinalSymbols
		 26	[  0]	TGETV	 16	16	15	; slot16 = uv1"unknown".targetFinalSymbols[<unknown table>.jokerChance]
		 27	[  0]	TGETS	 17	2	28	; slot17 = slot2.grid
		 28	[  0]	TGETV	 17	17	15	; slot17 = <unknown table>.grid[<unknown table>.jokerChance]
		 29	[  0]	ISF  	   		17	; if not slot17
		 30	[  0]	JMP  	 18		3	; 	goto 34
		 31	[  0]	TGETS	 17	2	28	; slot17 = slot2.grid
		 32	[  0]	TGETV	 17	17	15	; slot17 = <unknown table>.grid[<unknown table>.jokerChance]
		 33	[  0]	TGETB	 17	17	2	; slot17 = slot17[2]
		 34	[  0]	ISEQV	 16		17	; if slot16 == slot17
		 35	[  0]	JMP  	 16		2	; 	goto 38
		 36	[  0]	KPRI 	 11		1	; slot11 = false
		 37	[  0]	JMP  	 12		1	; 	goto 39
		 38	[  0]	FORL 	 12		-14	; <unknown table>.jokerChance = <unknown table>.jokerChance + slot14; if cmp(<unknown table>.jokerChance, sign slot14,  slot13) goto 25
		 39	[  0]	IST  	   		11	; if slot11
		 40	[  0]	JMP  	 12		1	; 	goto 42
		 41	[  0]	JMP  	  7		1	; 	goto 43
		 42	[  0]	FORL 	  7		-34	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 9
		 43	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 44	[  0]	TGETS	  9	2	28	; slot9 = slot2.grid
		 45	[  0]	CALL 	  7	2	2	; slot7 = uv3"unknown"(slot8)
		 46	[  0]	KSHORT	  8		1	; slot8 = 1
		 47	[  0]	KSHORT	  9		3	; slot9 = 3
		 48	[  0]	KSHORT	 10		1	; slot10 = 1
		 49	[  0]	FORI 	  8		5	; for slot11 = slot8,slot9,slot10 else goto 55
		 50	[  0]	TGETV	 12	7	11	; slot12 = uv3"unknown"[slot11]
		 51	[  0]	TGETS	 13	6	26	; slot13 = uv1"unknown".targetFinalSymbols
		 52	[  0]	TGETV	 13	13	11	; slot13 = uv1"unknown".targetFinalSymbols[slot11]
		 53	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		 54	[  0]	FORL 	  8		-5	; slot11 = slot11 + slot10; if cmp(slot11, sign slot10,  slot9) goto 50
		 55	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 56	[  0]	MOV  	 10		7	; slot10 = uv3"unknown"
		 57	[  0]	CALL 	  8	3	2	; slot8, slot9 = uv0"unknown"(slot9)
		 58	[  0]	LEN  	 10		8	; slot10 = #uv0"unknown"
		 59	[  0]	LEN  	 11		4	; slot11 = #uv0"unknown"
		 60	[  0]	ISLE 	 11		10	; if slot11 <= slot10
		 61	[  0]	JMP  	 10		2	; 	goto 64
		 62	[  0]	KPRI 	 10		1	; slot10 = false
		 63	[  0]	JMP  	 11		1	; 	goto 65
		 64	[  0]	KPRI 	 10		2	; slot10 = true
		 65	[  0]	ISF  	   		10	; if not slot10
		 66	[  0]	JMP  	 11		2	; 	goto 69
		 67	[  0]	ISTC 	 11		7	; slot11 = uv3"unknown"; if uv3"unknown"
		 68	[  0]	JMP  	 11		1	; 	goto 70
		 69	[  0]	TGETS	 11	2	28	; slot11 = slot2.grid
		 70	[  0]	ISF  	   		10	; if not slot10
		 71	[  0]	JMP  	 12		2	; 	goto 74
		 72	[  0]	ISTC 	 12		8	; slot12 = uv0"unknown"; if uv0"unknown"
		 73	[  0]	JMP  	 12		1	; 	goto 75
		 74	[  0]	MOV  	 12		4	; slot12 = uv0"unknown"
		 75	[  0]	ISF  	   		10	; if not slot10
		 76	[  0]	JMP  	 13		2	; 	goto 79
		 77	[  0]	ISTC 	 13		9	; slot13 = slot9; if slot9
		 78	[  0]	JMP  	 13		1	; 	goto 80
		 79	[  0]	MOV  	 13		5	; slot13 = slot5
		 80	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
		 81	[  0]	KSHORT	 15		1	; slot15 = 1
		 82	[  0]	KSHORT	 16		3	; slot16 = 3
		 83	[  0]	KSHORT	 17		1	; slot17 = 1
		 84	[  0]	FORI 	 15		10	; for slot18 = slot15,slot16,slot17 else goto 95
		 85	[  0]	TGETV	 19	11	18	; slot19 = <unknown table>.grid[slot18]
		 86	[  0]	ISF  	   		19	; if not slot19
		 87	[  0]	JMP  	 20		4	; 	goto 92
		 88	[  0]	TGETV	 19	11	18	; slot19 = <unknown table>.grid[slot18]
		 89	[  0]	TGETB	 19	19	2	; slot19 = slot19[2]
		 90	[  0]	IST  	   		19	; if slot19
		 91	[  0]	JMP  	 20		1	; 	goto 93
		 92	[  0]	KPRI 	 19		0	; slot19 = nil
		 93	[  0]	TSETV	 19	14	18	; slot14[slot18] = slot19
		 94	[  0]	FORL 	 15		-10	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 85
		 95	[  0]	TGETS	 15	2	25	; slot15 = slot2.deferAnimation
		 96	[  0]	ISNEP	 15		2	; if <unknown table>.deferAnimation ~= true
		 97	[  0]	JMP  	 15		30	; 	goto 128
		 98	[  0]	TDUP 	 15		23	; slot15 = copy table#k23
		 99	[  0]	TGETS	 16	0	24	; slot16 = slot0.key
		100	[  0]	TSETS	 16	15	24	; slot15.key = <unknown table>.key
		101	[  0]	TSETS	  0	15	22	; slot15.inst = slot0
		102	[  0]	TNEW 	 16		3	; slot16 = new table( array: 3, dict: 1)
		103	[  0]	TDUP 	 17		21	; slot17 = copy table#k21
		104	[  0]	TSETS	 14	17	26	; slot17.targetFinalSymbols = slot14
		105	[  0]	TSETB	 17	16	1	; slot16[1] = slot17
		106	[  0]	TSETS	 16	15	20	; slot15.reels = slot16
		107	[  0]	TSETS	  3	15	19	; slot15.respinPhase = slot3
		108	[  0]	LEN  	 16		4	; slot16 = #uv0"unknown"
		109	[  0]	TSETS	 16	15	18	; slot15.firstLineCount = slot16
		110	[  0]	LEN  	 16		8	; slot16 = #uv0"unknown"
		111	[  0]	TSETS	 16	15	17	; slot15.secondLineCount = slot16
		112	[  0]	TSETS	 10	15	16	; slot15.choseSecond = slot10
		113	[  0]	KSHORT	 16		2	; slot16 = 2
		114	[  0]	ISLE 	 16		3	; if slot16 <= slot3
		115	[  0]	JMP  	 16		2	; 	goto 118
		116	[  0]	KPRI 	 16		1	; slot16 = false
		117	[  0]	JMP  	 17		1	; 	goto 119
		118	[  0]	KPRI 	 16		2	; slot16 = true
		119	[  0]	TSETS	 16	15	15	; slot15.skipCoreAnimation = slot16
		120	[  0]	KSHORT	 16		2	; slot16 = 2
		121	[  0]	ISLE 	 16		3	; if slot16 <= slot3
		122	[  0]	JMP  	 16		2	; 	goto 125
		123	[  0]	KPRI 	 16		1	; slot16 = false
		124	[  0]	JMP  	 17		1	; 	goto 126
		125	[  0]	KPRI 	 16		2	; slot16 = true
		126	[  0]	TSETS	 16	15	14	; slot15.allowPostEvaluateChain = slot16
		127	[  0]	RET1 	 15		2	; return slot15
		128	[  0]	ISF  	   		10	; if not slot10
		129	[  0]	JMP  	 15		9	; 	goto 139
		130	[  0]	KSHORT	 15		1	; slot15 = 1
		131	[  0]	KSHORT	 16		3	; slot16 = 3
		132	[  0]	KSHORT	 17		1	; slot17 = 1
		133	[  0]	FORI 	 15		5	; for slot18 = slot15,slot16,slot17 else goto 139
		134	[  0]	TGETS	 19	2	28	; slot19 = slot2.grid
		135	[  0]	TGETV	 19	19	18	; slot19 = <unknown table>.grid[slot18]
		136	[  0]	TGETV	 20	14	18	; slot20 = slot14[slot18]
		137	[  0]	TSETB	 20	19	2	; slot19[2] = slot20
		138	[  0]	FORL 	 15		-5	; slot18 = slot18 + slot17; if cmp(slot18, sign slot17,  slot16) goto 134
		139	[  0]	KPRI 	 15		2	; slot15 = true
		140	[  0]	TSETS	 15	1	13	; slot1.checked = slot15
		141	[  0]	LEN  	 15		12	; slot15 = #uv0"unknown"
		142	[  0]	KSHORT	 16		0	; slot16 = 0
		143	[  0]	ISLT 	 16		15	; if slot16 < slot15
		144	[  0]	JMP  	 15		2	; 	goto 147
		145	[  0]	KPRI 	 15		1	; slot15 = false
		146	[  0]	JMP  	 16		1	; 	goto 148
		147	[  0]	KPRI 	 15		2	; slot15 = true
		148	[  0]	TSETS	 15	1	12	; slot1.won = slot15
		149	[  0]	TSETS	 12	1	11	; slot1.winningLines = uv0"unknown"
		150	[  0]	TSETS	 13	1	10	; slot1.symbol = slot13
		151	[  0]	KPRI 	 15		0	; slot15 = nil
		152	[  0]	TSETS	 15	1	9	; slot1.newWinningLines = slot15
		153	[  0]	KPRI 	 15		0	; slot15 = nil
		154	[  0]	TSETS	 15	1	8	; slot1.visibleWinningLines = slot15
		155	[  0]	KPRI 	 15		1	; slot15 = false
		156	[  0]	TSETS	 15	1	7	; slot1.highlightActive = slot15
		157	[  0]	KSHORT	 15		0	; slot15 = 0
		158	[  0]	TSETS	 15	1	6	; slot1.ht = slot15
		159	[  0]	KPRI 	 15		1	; slot15 = false
		160	[  0]	TSETS	 15	1	5	; slot1.fxStarted = slot15
		161	[  0]	KPRI 	 15		2	; slot15 = true
		162	[  0]	TSETS	 15	1	4	; slot1._greedyTailApplied = slot15
		163	[  0]	TSETS	  3	1	3	; slot1._greedyTailRespinPhase = slot3
		164	[  0]	LEN  	 15		4	; slot15 = #uv0"unknown"
		165	[  0]	TSETS	 15	1	2	; slot1._greedyTailFirstLineCount = slot15
		166	[  0]	LEN  	 15		8	; slot15 = #uv0"unknown"
		167	[  0]	TSETS	 15	1	1	; slot1._greedyTailSecondLineCount = slot15
		168	[  0]	TSETS	 10	1	0	; slot1._greedyTailChoseSecond = slot10
		169	[  0]	KPRI 	 15		2	; slot15 = true
		170	[  0]	RET1 	 15		2	; return slot15
	224	[  0]	FNEW 	 49		93	; N/A:0-0: 2 args, 4 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		8	; 	goto 11
		  3	[  0]	TGETS	  2	0	8	; slot2 = slot0.checked
		  4	[  0]	ISF  	   		2	; if not <unknown table>.checked
		  5	[  0]	JMP  	  3		5	; 	goto 11
		  6	[  0]	ISF  	   		1	; if not slot1
		  7	[  0]	JMP  	  2		3	; 	goto 11
		  8	[  0]	TGETS	  2	1	7	; slot2 = slot1.grid
		  9	[  0]	IST  	   		2	; if <unknown table>.grid
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KPRI 	  2		1	; slot2 = false
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	TGETS	  2	0	6	; slot2 = slot0.won
		 14	[  0]	ISNEP	  2		2	; if <unknown table>.won ~= true
		 15	[  0]	JMP  	  2		2	; 	goto 18
		 16	[  0]	KPRI 	  2		1	; slot2 = false
		 17	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 19	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".isGreedyTailPending
		 20	[  0]	MOV  	  4		1	; slot4 = slot1
		 21	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".isGreedyTailPending(slot3)
		 22	[  0]	IST  	   		2	; if slot2
		 23	[  0]	JMP  	  2		2	; 	goto 26
		 24	[  0]	KPRI 	  2		1	; slot2 = false
		 25	[  0]	RET1 	  2		2	; return slot2
		 26	[  0]	GGET 	  2		4	; slot2 = _env["tonumber"]
		 27	[  0]	TGETS	  4	1	3	; slot4 = slot1.waveId
		 28	[  0]	IST  	   		4	; if <unknown table>.waveId
		 29	[  0]	JMP  	  5		1	; 	goto 31
		 30	[  0]	KSHORT	  4		0	; slot4 = 0
		 31	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 32	[  0]	IST  	   		2	; if slot2
		 33	[  0]	JMP  	  3		1	; 	goto 35
		 34	[  0]	KSHORT	  2		0	; slot2 = 0
		 35	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 36	[  0]	MOV  	  5		2	; slot5 = slot2
		 37	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv1"unknown"(slot4)
		 38	[  0]	JMP  	  6		19	; 	goto 58
		 39	[  0]	TGETS	  7	6	2	; slot7 = slot6.key
		 40	[  0]	ISNES	  7		1	; if <unknown table>.key ~= "GreedyTail"
		 41	[  0]	JMP  	  7		16	; 	goto 58
		 42	[  0]	TGETS	  7	6	0	; slot7 = slot6._greedyTailUsedWave
		 43	[  0]	IST  	   		7	; if <unknown table>._greedyTailUsedWave
		 44	[  0]	JMP  	  8		1	; 	goto 46
		 45	[  0]	KSHORT	  7		65535	; slot7 = 65535
		 46	[  0]	ISEQV	  7		2	; if slot7 == slot2
		 47	[  0]	JMP  	  7		10	; 	goto 58
		 48	[  0]	TSETS	  2	6	0	; slot6._greedyTailUsedWave = slot2
		 49	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 50	[  0]	MOV  	  9		6	; slot9 = slot6
		 51	[  0]	CALL 	  7	1	2	;  = uv2"unknown"(slot8)
		 52	[  0]	UGET 	  7		3	; slot7 = uv3"unknwon"
		 53	[  0]	MOV  	  9		6	; slot9 = slot6
		 54	[  0]	MOV  	 10		0	; slot10 = slot0
		 55	[  0]	MOV  	 11		1	; slot11 = slot1
		 56	[  0]	KSHORT	 12		1	; slot12 = 1
		 57	[  0]	CALLT	  7		5	; return uv3"unknown"(slot8, slot9, slot10, slot11)
		 58	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv1"unknown", slot4, slot5; slot6 = uv1"unknown"(slot4, slot5)
		 59	[  0]	ITERL	  6		-21	; slot5 = slot6; if slot6 != nil goto 39
		 60	[  0]	KPRI 	  3		1	; slot3 = false
		 61	[  0]	RET1 	  3		2	; return slot3
	225	[  0]	TSETS	 49	2	94	; slot2.prepareGreedyTailOutcome = slot49
	226	[  0]	FNEW 	 49		91	; N/A:0-0: 3 args, 3 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		7	; slot3 = _env["tonumber"]
		  2	[  0]	ISTC 	  5		2	; slot5 = slot2; if slot2
		  3	[  0]	JMP  	  5		1	; 	goto 5
		  4	[  0]	KSHORT	  5		0	; slot5 = 0
		  5	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		  6	[  0]	ISEQN	  3		0	; if tonumber == 1
		  7	[  0]	JMP  	  3		2	; 	goto 10
		  8	[  0]	KPRI 	  3		1	; slot3 = false
		  9	[  0]	RET1 	  3		2	; return slot3
		 10	[  0]	ISF  	   		0	; if not slot0
		 11	[  0]	JMP  	  3		11	; 	goto 23
		 12	[  0]	TGETS	  3	0	6	; slot3 = slot0.checked
		 13	[  0]	ISF  	   		3	; if not <unknown table>.checked
		 14	[  0]	JMP  	  4		8	; 	goto 23
		 15	[  0]	TGETS	  3	0	5	; slot3 = slot0.won
		 16	[  0]	ISEQP	  3		2	; if <unknown table>.won == true
		 17	[  0]	JMP  	  3		5	; 	goto 23
		 18	[  0]	ISF  	   		1	; if not slot1
		 19	[  0]	JMP  	  3		3	; 	goto 23
		 20	[  0]	TGETS	  3	1	4	; slot3 = slot1.grid
		 21	[  0]	IST  	   		3	; if <unknown table>.grid
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KPRI 	  3		1	; slot3 = false
		 24	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	GGET 	  3		7	; slot3 = _env["tonumber"]
		 26	[  0]	TGETS	  5	1	3	; slot5 = slot1.waveId
		 27	[  0]	IST  	   		5	; if <unknown table>.waveId
		 28	[  0]	JMP  	  6		1	; 	goto 30
		 29	[  0]	KSHORT	  5		0	; slot5 = 0
		 30	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 31	[  0]	IST  	   		3	; if tonumber
		 32	[  0]	JMP  	  4		1	; 	goto 34
		 33	[  0]	KSHORT	  3		0	; slot3 = 0
		 34	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 35	[  0]	MOV  	  6		3	; slot6 = slot3
		 36	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		 37	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 38	[  0]	MOV  	  6		3	; slot6 = slot3
		 39	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv1"unknown"(slot5)
		 40	[  0]	JMP  	  7		12	; 	goto 53
		 41	[  0]	TGETS	  8	7	2	; slot8 = slot7.key
		 42	[  0]	ISNES	  8		1	; if <unknown table>.key ~= "GreedyTail"
		 43	[  0]	JMP  	  8		9	; 	goto 53
		 44	[  0]	TGETS	  8	7	0	; slot8 = slot7._greedyTailUsedWave
		 45	[  0]	ISNEV	  8		3	; if <unknown table>._greedyTailUsedWave ~= slot3
		 46	[  0]	JMP  	  8		6	; 	goto 53
		 47	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 48	[  0]	MOV  	 10		7	; slot10 = slot7
		 49	[  0]	MOV  	 11		0	; slot11 = slot0
		 50	[  0]	MOV  	 12		1	; slot12 = slot1
		 51	[  0]	KSHORT	 13		2	; slot13 = 2
		 52	[  0]	CALLT	  8		5	; return uv2"unknown"(slot9, slot10, slot11, slot12)
		 53	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv1"unknown", slot5, slot6; slot7 = uv1"unknown"(slot5, slot6)
		 54	[  0]	ITERL	  7		-14	; slot6 = slot7; if slot7 != nil goto 41
		 55	[  0]	KPRI 	  4		1	; slot4 = false
		 56	[  0]	RET1 	  4		2	; return slot4
	227	[  0]	TSETS	 49	2	92	; slot2.prepareGreedyTailRetry = slot49
	228	[  0]	FNEW 	 49		90	; N/A:0-0: 1 args, 0 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	KSHORT	  2		1	; slot2 = 1
		  3	[  0]	KSHORT	  3		3	; slot3 = 3
		  4	[  0]	KSHORT	  4		1	; slot4 = 1
		  5	[  0]	FORI 	  2		21	; for slot5 = slot2,slot3,slot4 else goto 27
		  6	[  0]	KSHORT	  6		1	; slot6 = 1
		  7	[  0]	KSHORT	  7		3	; slot7 = 3
		  8	[  0]	KSHORT	  8		1	; slot8 = 1
		  9	[  0]	FORI 	  6		16	; for slot9 = slot6,slot7,slot8 else goto 26
		 10	[  0]	LEN  	 10		1	; slot10 = #slot1
		 11	[  0]	ADDVN	 10	10	0	; slot10 = slot10 + 1
		 12	[  0]	GGET 	 11		4	; slot11 = _env["tostring"]
		 13	[  0]	ISF  	   		0	; if not slot0
		 14	[  0]	JMP  	 13		7	; 	goto 22
		 15	[  0]	TGETV	 13	0	5	; slot13 = slot0[slot5]
		 16	[  0]	ISF  	   		13	; if not slot13
		 17	[  0]	JMP  	 14		4	; 	goto 22
		 18	[  0]	TGETV	 13	0	5	; slot13 = slot0[slot5]
		 19	[  0]	TGETV	 13	13	9	; slot13 = slot13[slot9]
		 20	[  0]	IST  	   		13	; if slot13
		 21	[  0]	JMP  	 14		1	; 	goto 23
		 22	[  0]	KSTR 	 13		3	; slot13 = ""
		 23	[  0]	CALL 	 11	2	2	; slot11 = tostring(slot12)
		 24	[  0]	TSETV	 11	1	10	; slot1[slot10] = tostring
		 25	[  0]	FORL 	  6		-16	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 10
		 26	[  0]	FORL 	  2		-21	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 6
		 27	[  0]	GGET 	  2		2	; slot2 = _env["table"]
		 28	[  0]	TGETS	  2	2	1	; slot2 = table.concat
		 29	[  0]	MOV  	  4		1	; slot4 = slot1
		 30	[  0]	KSTR 	  5		0	; slot5 = "|"
		 31	[  0]	CALLT	  2		3	; return table.concat(slot3, slot4)
	229	[  0]	FNEW 	 50		89	; N/A:0-0: 1 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		7	; 	goto 10
		  3	[  0]	TGETB	  1	0	2	; slot1 = slot0[2]
		  4	[  0]	ISF  	   		1	; if not slot1
		  5	[  0]	JMP  	  2		4	; 	goto 10
		  6	[  0]	TGETB	  1	0	2	; slot1 = slot0[2]
		  7	[  0]	TGETB	  1	1	2	; slot1 = slot1[2]
		  8	[  0]	IST  	   		1	; if slot1
		  9	[  0]	JMP  	  1		2	; 	goto 12
		 10	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 11	[  0]	RET1 	  1		2	; return slot1
		 12	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 13	[  0]	KSHORT	  2		1	; slot2 = 1
		 14	[  0]	KSHORT	  3		3	; slot3 = 3
		 15	[  0]	KSHORT	  4		1	; slot4 = 1
		 16	[  0]	FORI 	  2		23	; for slot5 = slot2,slot3,slot4 else goto 40
		 17	[  0]	KSHORT	  6		1	; slot6 = 1
		 18	[  0]	KSHORT	  7		3	; slot7 = 3
		 19	[  0]	KSHORT	  8		1	; slot8 = 1
		 20	[  0]	FORI 	  6		18	; for slot9 = slot6,slot7,slot8 else goto 39
		 21	[  0]	ISNEN	  5		0	; if slot5 ~= 2
		 22	[  0]	JMP  	 10		2	; 	goto 25
		 23	[  0]	ISEQN	  9		0	; if slot9 == 2
		 24	[  0]	JMP  	 10		13	; 	goto 38
		 25	[  0]	TGETV	 10	0	5	; slot10 = slot0[slot5]
		 26	[  0]	ISF  	   		10	; if not slot10
		 27	[  0]	JMP  	 11		10	; 	goto 38
		 28	[  0]	TGETV	 10	0	5	; slot10 = slot0[slot5]
		 29	[  0]	TGETV	 10	10	9	; slot10 = slot10[slot9]
		 30	[  0]	ISF  	   		10	; if not slot10
		 31	[  0]	JMP  	 11		6	; 	goto 38
		 32	[  0]	LEN  	 10		1	; slot10 = #slot1
		 33	[  0]	ADDVN	 10	10	1	; slot10 = slot10 + 1
		 34	[  0]	TDUP 	 11		2	; slot11 = copy table#k2
		 35	[  0]	TSETS	  5	11	1	; slot11.row = slot5
		 36	[  0]	TSETS	  9	11	0	; slot11.col = slot9
		 37	[  0]	TSETV	 11	1	10	; slot1[slot10] = slot11
		 38	[  0]	FORL 	  6		-18	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 21
		 39	[  0]	FORL 	  2		-23	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 17
		 40	[  0]	RET1 	  1		2	; return slot1
	230	[  0]	FNEW 	 51		88	; N/A:0-0: 5 args, 3 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		ktable#7 = [
			[checked] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  5		3	; 	goto 6
		  3	[  0]	TGETS	  5	0	12	; slot5 = slot0.key
		  4	[  0]	ISEQS	  5		11	; if <unknown table>.key == "CrookedFang"
		  5	[  0]	JMP  	  5		2	; 	goto 8
		  6	[  0]	KPRI 	  5		1	; slot5 = false
		  7	[  0]	RET1 	  5		2	; return slot5
		  8	[  0]	GGET 	  5		10	; slot5 = _env["require"]
		  9	[  0]	KSTR 	  7		9	; slot7 = "src.game.slot"
		 10	[  0]	CALL 	  5	2	2	; slot5 = require(slot6)
		 11	[  0]	TGETS	  5	5	8	; slot5 = require.isJackpotResult
		 12	[  0]	ISTC 	  7		4	; slot7 = slot4; if slot4
		 13	[  0]	JMP  	  7		1	; 	goto 15
		 14	[  0]	TDUP 	  7		7	; slot7 = copy table#k7
		 15	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 16	[  0]	MOV  	 10		3	; slot10 = slot3
		 17	[  0]	CALL 	  8	0	2	; MULTRES = uv0"unknown"(slot9)
		 18	[  0]	CALLM	  5	2	1	; slot5 = require.isJackpotResult(slot6, ...MULTRES)
		 19	[  0]	ISF  	   		5	; if not require.isJackpotResult
		 20	[  0]	JMP  	  6		4	; 	goto 25
		 21	[  0]	KPRI 	  5		0	; slot5 = nil
		 22	[  0]	TSETS	  5	0	6	; slot0._crookedFangPending = slot5
		 23	[  0]	KPRI 	  5		1	; slot5 = false
		 24	[  0]	RET1 	  5		2	; return slot5
		 25	[  0]	TGETS	  5	0	5	; slot5 = slot0._crookedFangUsedWave
		 26	[  0]	IST  	   		5	; if <unknown table>._crookedFangUsedWave
		 27	[  0]	JMP  	  6		1	; 	goto 29
		 28	[  0]	KSHORT	  5		65535	; slot5 = 65535
		 29	[  0]	ISNEV	  5		1	; if slot5 ~= slot1
		 30	[  0]	JMP  	  5		4	; 	goto 35
		 31	[  0]	KPRI 	  5		0	; slot5 = nil
		 32	[  0]	TSETS	  5	0	6	; slot0._crookedFangPending = slot5
		 33	[  0]	KPRI 	  5		1	; slot5 = false
		 34	[  0]	RET1 	  5		2	; return slot5
		 35	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 36	[  0]	MOV  	  7		3	; slot7 = slot3
		 37	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(slot6)
		 38	[  0]	LEN  	  6		5	; slot6 = #uv1"unknown"
		 39	[  0]	ISEQN	  6		0	; if slot6 == 8
		 40	[  0]	JMP  	  6		4	; 	goto 45
		 41	[  0]	KPRI 	  6		0	; slot6 = nil
		 42	[  0]	TSETS	  6	0	6	; slot0._crookedFangPending = slot6
		 43	[  0]	KPRI 	  6		1	; slot6 = false
		 44	[  0]	RET1 	  6		2	; return slot6
		 45	[  0]	TDUP 	  6		4	; slot6 = copy table#k4
		 46	[  0]	TSETS	  1	6	3	; slot6.waveId = slot1
		 47	[  0]	TSETS	  2	6	2	; slot6.spinKey = slot2
		 48	[  0]	UGET 	  7		2	; slot7 = uv2"unknwon"
		 49	[  0]	MOV  	  9		3	; slot9 = slot3
		 50	[  0]	CALL 	  7	2	2	; slot7 = uv2"unknown"(uv0"unknown")
		 51	[  0]	TSETS	  7	6	1	; slot6.signature = uv2"unknown"
		 52	[  0]	TSETS	  5	6	0	; slot6.candidates = uv1"unknown"
		 53	[  0]	TSETS	  6	0	6	; slot0._crookedFangPending = slot6
		 54	[  0]	KPRI 	  6		2	; slot6 = true
		 55	[  0]	RET1 	  6		2	; return slot6
	231	[  0]	FNEW 	 52		86	; N/A:0-0: 1 args, 2 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			[available] = false,
			[active] = true,
			]
		
		
		ktable#6 = [
			[available] = true,
			[active] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		11	; slot1 = _env["tonumber"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  3		0	; slot3 = 0
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	1	2	;  = uv0"unknown"(slot3)
		 12	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 13	[  0]	MOV  	  4		1	; slot4 = slot1
		 14	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = uv1"unknown"(slot3)
		 15	[  0]	JMP  	  5		29	; 	goto 45
		 16	[  0]	TGETS	  6	5	10	; slot6 = slot5.key
		 17	[  0]	ISNES	  6		9	; if <unknown table>.key ~= "CrookedFang"
		 18	[  0]	JMP  	  6		26	; 	goto 45
		 19	[  0]	TGETS	  6	5	8	; slot6 = slot5._crookedFangPending
		 20	[  0]	ISF  	   		6	; if not <unknown table>._crookedFangPending
		 21	[  0]	JMP  	  7		10	; 	goto 32
		 22	[  0]	TGETS	  7	6	7	; slot7 = <unknown table>._crookedFangPending.waveId
		 23	[  0]	ISNEV	  7		1	; if <unknown table>._crookedFangPending.waveId ~= slot1
		 24	[  0]	JMP  	  7		7	; 	goto 32
		 25	[  0]	TDUP 	  7		6	; slot7 = copy table#k6
		 26	[  0]	TGETS	  8	6	5	; slot8 = <unknown table>._crookedFangPending.candidates
		 27	[  0]	TSETS	  8	7	5	; slot7.candidates = <unknown table>._crookedFangPending.candidates
		 28	[  0]	TGETS	  8	6	4	; slot8 = <unknown table>._crookedFangPending.spinKey
		 29	[  0]	TSETS	  8	7	4	; slot7.spinKey = <unknown table>._crookedFangPending.spinKey
		 30	[  0]	TSETS	  5	7	3	; slot7.instance = slot5
		 31	[  0]	RET1 	  7		2	; return slot7
		 32	[  0]	TDUP 	  7		2	; slot7 = copy table#k2
		 33	[  0]	TGETS	  8	5	1	; slot8 = slot5._crookedFangUsedWave
		 34	[  0]	IST  	   		8	; if <unknown table>._crookedFangUsedWave
		 35	[  0]	JMP  	  9		1	; 	goto 37
		 36	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 37	[  0]	ISEQV	  8		1	; if slot8 == slot1
		 38	[  0]	JMP  	  8		2	; 	goto 41
		 39	[  0]	KPRI 	  8		1	; slot8 = false
		 40	[  0]	JMP  	  9		1	; 	goto 42
		 41	[  0]	KPRI 	  8		2	; slot8 = true
		 42	[  0]	TSETS	  8	7	0	; slot7.used = slot8
		 43	[  0]	TSETS	  5	7	3	; slot7.instance = slot5
		 44	[  0]	RET1 	  7		2	; return slot7
		 45	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5 = slot2(slot3, slot4)
		 46	[  0]	ITERL	  5		-31	; slot4 = slot5; if slot5 != nil goto 16
		 47	[  0]	KPRI 	  2		0	; slot2 = nil
		 48	[  0]	RET1 	  2		2	; return slot2
	232	[  0]	TSETS	 52	2	87	; slot2.getCrookedFangState = slot52
	233	[  0]	FNEW 	 52		84	; N/A:0-0: 2 args, 3 upvalues, 15 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		6	; 	goto 9
		  3	[  0]	TGETS	  2	0	7	; slot2 = slot0.checked
		  4	[  0]	ISF  	   		2	; if not <unknown table>.checked
		  5	[  0]	JMP  	  3		3	; 	goto 9
		  6	[  0]	TGETS	  2	0	6	; slot2 = slot0.won
		  7	[  0]	ISNEP	  2		2	; if <unknown table>.won ~= true
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		1	; slot2 = false
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	GGET 	  2		5	; slot2 = _env["tonumber"]
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  4		3	; 	goto 17
		 14	[  0]	TGETS	  4	1	4	; slot4 = slot1.waveId
		 15	[  0]	IST  	   		4	; if <unknown table>.waveId
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	KSHORT	  4		0	; slot4 = 0
		 18	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 19	[  0]	IST  	   		2	; if slot2
		 20	[  0]	JMP  	  3		1	; 	goto 22
		 21	[  0]	KSHORT	  2		0	; slot2 = 0
		 22	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 23	[  0]	MOV  	  5		2	; slot5 = slot2
		 24	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 25	[  0]	KPRI 	  3		1	; slot3 = false
		 26	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 27	[  0]	MOV  	  6		2	; slot6 = slot2
		 28	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv1"unknown"(slot5)
		 29	[  0]	JMP  	  7		19	; 	goto 49
		 30	[  0]	TGETS	  8	7	3	; slot8 = slot7.key
		 31	[  0]	ISNES	  8		2	; if <unknown table>.key ~= "CrookedFang"
		 32	[  0]	JMP  	  8		16	; 	goto 49
		 33	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 34	[  0]	MOV  	 10		7	; slot10 = slot7
		 35	[  0]	MOV  	 11		2	; slot11 = slot2
		 36	[  0]	ISF  	   		1	; if not slot1
		 37	[  0]	JMP  	 12		3	; 	goto 41
		 38	[  0]	TGETS	 12	1	1	; slot12 = slot1.spinKey
		 39	[  0]	IST  	   		12	; if <unknown table>.spinKey
		 40	[  0]	JMP  	 13		1	; 	goto 42
		 41	[  0]	KPRI 	 12		0	; slot12 = nil
		 42	[  0]	ISFC 	 13		1	; slot13 = slot1; if not slot1
		 43	[  0]	JMP  	 13		1	; 	goto 45
		 44	[  0]	TGETS	 13	1	0	; slot13 = slot1.grid
		 45	[  0]	MOV  	 14		0	; slot14 = slot0
		 46	[  0]	CALL 	  8	2	6	; slot8 = uv2"unknown"(slot9, slot10, slot11, slot12, <unknown table>.grid)
		 47	[  0]	ISTC 	  3		8	; slot3 = uv2"unknown"; if uv2"unknown"
		 48	[  0]	JMP  	  9		0	; 	goto 49
		 49	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv1"unknown", slot5, slot6; slot7 = uv1"unknown"(slot5, slot6)
		 50	[  0]	ITERL	  7		-21	; slot6 = slot7; if slot7 != nil goto 30
		 51	[  0]	RET1 	  3		2	; return slot3
	234	[  0]	TSETS	 52	2	85	; slot2.refreshCrookedFangPending = slot52
	235	[  0]	FNEW 	 52		82	; N/A:0-0: 3 args, 6 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		ktable#16 = [
			[checked] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		25	; slot3 = _env["math"]
		  2	[  0]	TGETS	  3	3	24	; slot3 = math.floor
		  3	[  0]	GGET 	  5		23	; slot5 = _env["tonumber"]
		  4	[  0]	ISTC 	  7		0	; slot7 = slot0; if slot0
		  5	[  0]	JMP  	  7		1	; 	goto 7
		  6	[  0]	KSHORT	  7		0	; slot7 = 0
		  7	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		  8	[  0]	IST  	   		5	; if tonumber
		  9	[  0]	JMP  	  6		1	; 	goto 11
		 10	[  0]	KSHORT	  5		0	; slot5 = 0
		 11	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 12	[  0]	MOV  	  0		3	; slot0 = math.floor
		 13	[  0]	GGET 	  3		25	; slot3 = _env["math"]
		 14	[  0]	TGETS	  3	3	24	; slot3 = math.floor
		 15	[  0]	GGET 	  5		23	; slot5 = _env["tonumber"]
		 16	[  0]	ISTC 	  7		1	; slot7 = slot1; if slot1
		 17	[  0]	JMP  	  7		1	; 	goto 19
		 18	[  0]	KSHORT	  7		0	; slot7 = 0
		 19	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 20	[  0]	IST  	   		5	; if tonumber
		 21	[  0]	JMP  	  6		1	; 	goto 23
		 22	[  0]	KSHORT	  5		0	; slot5 = 0
		 23	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 24	[  0]	MOV  	  1		3	; slot1 = math.floor
		 25	[  0]	KSHORT	  3		1	; slot3 = 1
		 26	[  0]	ISLT 	  0		3	; if math.floor < slot3
		 27	[  0]	JMP  	  3		13	; 	goto 41
		 28	[  0]	KSHORT	  3		3	; slot3 = 3
		 29	[  0]	ISLT 	  3		0	; if slot3 < math.floor
		 30	[  0]	JMP  	  3		10	; 	goto 41
		 31	[  0]	KSHORT	  3		1	; slot3 = 1
		 32	[  0]	ISLT 	  1		3	; if math.floor < slot3
		 33	[  0]	JMP  	  3		7	; 	goto 41
		 34	[  0]	KSHORT	  3		3	; slot3 = 3
		 35	[  0]	ISLT 	  3		1	; if slot3 < math.floor
		 36	[  0]	JMP  	  3		4	; 	goto 41
		 37	[  0]	ISNEN	  0		0	; if math.floor ~= 2
		 38	[  0]	JMP  	  3		4	; 	goto 43
		 39	[  0]	ISNEN	  1		0	; if math.floor ~= 2
		 40	[  0]	JMP  	  3		2	; 	goto 43
		 41	[  0]	KPRI 	  3		0	; slot3 = nil
		 42	[  0]	RET1 	  3		2	; return slot3
		 43	[  0]	GGET 	  3		23	; slot3 = _env["tonumber"]
		 44	[  0]	ISF  	   		2	; if not slot2
		 45	[  0]	JMP  	  5		3	; 	goto 49
		 46	[  0]	TGETS	  5	2	22	; slot5 = slot2.waveId
		 47	[  0]	IST  	   		5	; if <unknown table>.waveId
		 48	[  0]	JMP  	  6		1	; 	goto 50
		 49	[  0]	KSHORT	  5		0	; slot5 = 0
		 50	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 51	[  0]	IST  	   		3	; if tonumber
		 52	[  0]	JMP  	  4		1	; 	goto 54
		 53	[  0]	KSHORT	  3		0	; slot3 = 0
		 54	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 55	[  0]	MOV  	  6		3	; slot6 = slot3
		 56	[  0]	CALL 	  4	1	2	;  = uv0"unknown"(slot5)
		 57	[  0]	ISFC 	  4		2	; slot4 = slot2; if not slot2
		 58	[  0]	JMP  	  4		1	; 	goto 60
		 59	[  0]	TGETS	  4	2	21	; slot4 = slot2.grid
		 60	[  0]	GGET 	  5		20	; slot5 = _env["require"]
		 61	[  0]	KSTR 	  7		19	; slot7 = "src.game.slot"
		 62	[  0]	CALL 	  5	2	2	; slot5 = require(slot6)
		 63	[  0]	TGETS	  5	5	18	; slot5 = require.isJackpotResult
		 64	[  0]	ISF  	   		2	; if not slot2
		 65	[  0]	JMP  	  7		3	; 	goto 69
		 66	[  0]	TGETS	  7	2	17	; slot7 = slot2.result
		 67	[  0]	IST  	   		7	; if <unknown table>.result
		 68	[  0]	JMP  	  8		1	; 	goto 70
		 69	[  0]	TDUP 	  7		16	; slot7 = copy table#k16
		 70	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 71	[  0]	MOV  	 10		4	; slot10 = <unknown table>.grid
		 72	[  0]	CALL 	  8	0	2	; MULTRES = uv1"unknown"(slot9)
		 73	[  0]	CALLM	  5	2	1	; slot5 = require.isJackpotResult(slot6, ...MULTRES)
		 74	[  0]	ISF  	   		5	; if not require.isJackpotResult
		 75	[  0]	JMP  	  6		6	; 	goto 82
		 76	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 77	[  0]	TGETS	  5	5	15	; slot5 = uv2"unknown".cancelCrookedFangPending
		 78	[  0]	MOV  	  7		3	; slot7 = slot3
		 79	[  0]	CALL 	  5	1	2	;  = uv2"unknown".cancelCrookedFangPending(slot6)
		 80	[  0]	KPRI 	  5		0	; slot5 = nil
		 81	[  0]	RET1 	  5		2	; return slot5
		 82	[  0]	UGET 	  5		3	; slot5 = uv3"unknwon"
		 83	[  0]	MOV  	  7		3	; slot7 = slot3
		 84	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = uv3"unknown"(slot6)
		 85	[  0]	JMP  	  8		70	; 	goto 156
		 86	[  0]	TGETS	  9	8	14	; slot9 = uv1"unknown".key
		 87	[  0]	ISNES	  9		13	; if uv1"unknown".key ~= "CrookedFang"
		 88	[  0]	JMP  	  9		3	; 	goto 92
		 89	[  0]	TGETS	  9	8	12	; slot9 = uv1"unknown"._crookedFangPending
		 90	[  0]	IST  	   		9	; if uv1"unknown"._crookedFangPending
		 91	[  0]	JMP  	 10		1	; 	goto 93
		 92	[  0]	KPRI 	  9		0	; slot9 = nil
		 93	[  0]	ISF  	   		9	; if not slot9
		 94	[  0]	JMP  	 10		61	; 	goto 156
		 95	[  0]	TGETS	 10	9	22	; slot10 = slot9.waveId
		 96	[  0]	ISNEV	 10		3	; if <unknown table>.waveId ~= slot3
		 97	[  0]	JMP  	 10		58	; 	goto 156
		 98	[  0]	TGETS	 10	8	11	; slot10 = uv1"unknown"._crookedFangUsedWave
		 99	[  0]	IST  	   		10	; if uv1"unknown"._crookedFangUsedWave
		100	[  0]	JMP  	 11		1	; 	goto 102
		101	[  0]	KSHORT	 10		65535	; slot10 = 65535
		102	[  0]	ISEQV	 10		3	; if slot10 == slot3
		103	[  0]	JMP  	 10		52	; 	goto 156
		104	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
		105	[  0]	MOV  	 12		4	; slot12 = <unknown table>.grid
		106	[  0]	CALL 	 10	2	2	; slot10 = uv4"unknown"(slot11)
		107	[  0]	TGETS	 11	9	10	; slot11 = slot9.signature
		108	[  0]	ISNEV	 10		11	; if uv4"unknown" ~= <unknown table>.signature
		109	[  0]	JMP  	 10		46	; 	goto 156
		110	[  0]	KPRI 	 10		0	; slot10 = nil
		111	[  0]	GGET 	 11		9	; slot11 = _env["ipairs"]
		112	[  0]	TGETS	 13	9	8	; slot13 = slot9.candidates
		113	[  0]	IST  	   		13	; if <unknown table>.candidates
		114	[  0]	JMP  	 14		1	; 	goto 116
		115	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
		116	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(<unknown table>.grid)
		117	[  0]	JMP  	 14		8	; 	goto 126
		118	[  0]	TGETS	 16	15	7	; slot16 = slot15.row
		119	[  0]	ISNEV	 16		0	; if <unknown table>.row ~= math.floor
		120	[  0]	JMP  	 16		5	; 	goto 126
		121	[  0]	TGETS	 16	15	6	; slot16 = slot15.col
		122	[  0]	ISNEV	 16		1	; if <unknown table>.col ~= math.floor
		123	[  0]	JMP  	 16		2	; 	goto 126
		124	[  0]	MOV  	 10		15	; slot10 = slot15
		125	[  0]	JMP  	 11		2	; 	goto 128
		126	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, <unknown table>.grid, slot13; slot14, slot15 = ipairs(<unknown table>.grid, slot13)
		127	[  0]	ITERL	 14		-10	; slot13 = slot14; if slot14 != nil goto 118
		128	[  0]	ISF  	   		10	; if not slot10
		129	[  0]	JMP  	 11		26	; 	goto 156
		130	[  0]	TSETS	  3	8	11	; uv1"unknown"._crookedFangUsedWave = slot3
		131	[  0]	KPRI 	 11		0	; slot11 = nil
		132	[  0]	TSETS	 11	8	12	; uv1"unknown"._crookedFangPending = slot11
		133	[  0]	KPRI 	 11		2	; slot11 = true
		134	[  0]	TSETS	 11	8	5	; uv1"unknown"._uiTrigger = slot11
		135	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		136	[  0]	MOV  	 13		8	; slot13 = uv1"unknown"
		137	[  0]	CALL 	 11	1	2	;  = uv5"unknown"(<unknown table>.grid)
		138	[  0]	TDUP 	 11		4	; slot11 = copy table#k4
		139	[  0]	TGETS	 12	8	14	; slot12 = uv1"unknown".key
		140	[  0]	TSETS	 12	11	14	; slot11.key = uv1"unknown".key
		141	[  0]	TSETS	  8	11	3	; slot11.inst = uv1"unknown"
		142	[  0]	TSETS	  3	11	22	; slot11.waveId = slot3
		143	[  0]	TGETS	 12	9	2	; slot12 = slot9.spinKey
		144	[  0]	TSETS	 12	11	2	; slot11.spinKey = <unknown table>.spinKey
		145	[  0]	TSETS	  0	11	7	; slot11.row = math.floor
		146	[  0]	TSETS	  1	11	6	; slot11.col = math.floor
		147	[  0]	TGETB	 12	4	2	; slot12 = <unknown table>.grid[2]
		148	[  0]	TGETB	 12	12	2	; slot12 = slot12[2]
		149	[  0]	TSETS	 12	11	1	; slot11.centerSymbol = slot12
		150	[  0]	TGETV	 12	4	0	; slot12 = <unknown table>.grid[math.floor]
		151	[  0]	TGETV	 12	12	1	; slot12 = slot12[math.floor]
		152	[  0]	TSETS	 12	11	0	; slot11.targetSymbol = slot12
		153	[  0]	TGETS	 12	9	10	; slot12 = slot9.signature
		154	[  0]	TSETS	 12	11	10	; slot11.signature = <unknown table>.signature
		155	[  0]	RET1 	 11		2	; return slot11
		156	[  0]	ITERC	  8	2	3	; slot8, slot9, slot10 = uv3"unknown", slot6, slot7; slot8 = uv3"unknown"(slot6, slot7)
		157	[  0]	ITERL	  8		-72	; slot7 = uv1"unknown"; if uv1"unknown" != nil goto 86
		158	[  0]	KPRI 	  5		0	; slot5 = nil
		159	[  0]	RET1 	  5		2	; return slot5
	236	[  0]	TSETS	 52	2	83	; slot2.beginCrookedFangSwap = slot52
	237	[  0]	FNEW 	 52		80	; N/A:0-0: 3 args, 2 upvalues, 19 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		ktable#22 = [
			[checked] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		8	; 	goto 11
		  3	[  0]	TGETS	  3	0	28	; slot3 = slot0.key
		  4	[  0]	ISNES	  3		27	; if <unknown table>.key ~= "CrookedFang"
		  5	[  0]	JMP  	  3		5	; 	goto 11
		  6	[  0]	ISF  	   		2	; if not slot2
		  7	[  0]	JMP  	  3		3	; 	goto 11
		  8	[  0]	TGETB	  3	2	2	; slot3 = slot2[2]
		  9	[  0]	IST  	   		3	; if slot3
		 10	[  0]	JMP  	  3		2	; 	goto 13
		 11	[  0]	KPRI 	  3		0	; slot3 = nil
		 12	[  0]	RET1 	  3		2	; return slot3
		 13	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 14	[  0]	MOV  	  5		2	; slot5 = slot2
		 15	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		 16	[  0]	TGETS	  4	0	26	; slot4 = slot0.signature
		 17	[  0]	ISEQV	  3		4	; if uv0"unknown" == <unknown table>.signature
		 18	[  0]	JMP  	  3		2	; 	goto 21
		 19	[  0]	KPRI 	  3		0	; slot3 = nil
		 20	[  0]	RET1 	  3		2	; return slot3
		 21	[  0]	GGET 	  3		25	; slot3 = _env["require"]
		 22	[  0]	KSTR 	  5		24	; slot5 = "src.game.slot"
		 23	[  0]	CALL 	  3	2	2	; slot3 = require(<unknown table>.signature)
		 24	[  0]	TGETS	  3	3	23	; slot3 = require.isJackpotResult
		 25	[  0]	ISTC 	  5		1	; slot5 = slot1; if slot1
		 26	[  0]	JMP  	  5		1	; 	goto 28
		 27	[  0]	TDUP 	  5		22	; slot5 = copy table#k22
		 28	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 29	[  0]	MOV  	  8		2	; slot8 = slot2
		 30	[  0]	CALL 	  6	0	2	; MULTRES = uv1"unknown"(slot7)
		 31	[  0]	CALLM	  3	2	1	; slot3 = require.isJackpotResult(<unknown table>.signature, ...MULTRES)
		 32	[  0]	ISF  	   		3	; if not require.isJackpotResult
		 33	[  0]	JMP  	  4		2	; 	goto 36
		 34	[  0]	KPRI 	  3		0	; slot3 = nil
		 35	[  0]	RET1 	  3		2	; return slot3
		 36	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 37	[  0]	MOV  	  5		2	; slot5 = slot2
		 38	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv1"unknown"(<unknown table>.signature)
		 39	[  0]	TGETS	  6	0	21	; slot6 = slot0.row
		 40	[  0]	TGETS	  7	0	20	; slot7 = slot0.col
		 41	[  0]	TGETB	  8	2	2	; slot8 = slot2[2]
		 42	[  0]	TGETV	  9	2	6	; slot9 = slot2[<unknown table>.row]
		 43	[  0]	TGETV	 10	2	6	; slot10 = slot2[<unknown table>.row]
		 44	[  0]	TGETV	 10	10	7	; slot10 = slot10[<unknown table>.col]
		 45	[  0]	TGETB	 11	2	2	; slot11 = slot2[2]
		 46	[  0]	TGETB	 11	11	2	; slot11 = slot11[2]
		 47	[  0]	TSETV	 11	9	7	; slot9[<unknown table>.col] = slot11
		 48	[  0]	TSETB	 10	8	2	; slot8[2] = slot10
		 49	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		 50	[  0]	MOV  	 10		2	; slot10 = slot2
		 51	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = uv1"unknown"(slot9)
		 52	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		 53	[  0]	GGET 	 12		19	; slot12 = _env["ipairs"]
		 54	[  0]	MOV  	 14		8	; slot14 = uv1"unknown"
		 55	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
		 56	[  0]	JMP  	 15		7	; 	goto 64
		 57	[  0]	TGETV	 17	5	16	; slot17 = slot5[slot16]
		 58	[  0]	TGETV	 18	10	16	; slot18 = slot10[slot16]
		 59	[  0]	ISEQV	 17		18	; if slot17 == slot18
		 60	[  0]	JMP  	 17		3	; 	goto 64
		 61	[  0]	LEN  	 17		11	; slot17 = #slot11
		 62	[  0]	ADDVN	 17	17	0	; slot17 = slot17 + 1
		 63	[  0]	TSETV	 16	11	17	; slot11[slot17] = slot16
		 64	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, uv1"unknown"; slot15, slot16 = ipairs(slot13, uv1"unknown")
		 65	[  0]	ITERL	 15		-9	; uv1"unknown" = slot15; if slot15 != nil goto 57
		 66	[  0]	LEN  	 12		11	; slot12 = #slot11
		 67	[  0]	KSHORT	 13		0	; slot13 = 0
		 68	[  0]	ISLT 	 13		12	; if slot13 < slot12
		 69	[  0]	JMP  	 12		2	; 	goto 72
		 70	[  0]	KPRI 	 12		1	; slot12 = false
		 71	[  0]	JMP  	 13		1	; 	goto 73
		 72	[  0]	KPRI 	 12		2	; slot12 = true
		 73	[  0]	TGETB	 13	11	1	; slot13 = slot11[1]
		 74	[  0]	ISF  	   		13	; if not slot13
		 75	[  0]	JMP  	 14		4	; 	goto 80
		 76	[  0]	TGETB	 13	11	1	; slot13 = slot11[1]
		 77	[  0]	TGETV	 13	10	13	; slot13 = slot10[slot13]
		 78	[  0]	IST  	   		13	; if slot13
		 79	[  0]	JMP  	 14		1	; 	goto 81
		 80	[  0]	KPRI 	 13		0	; slot13 = nil
		 81	[  0]	IST  	   		1	; if slot1
		 82	[  0]	JMP  	 14		1	; 	goto 84
		 83	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		 84	[  0]	KPRI 	 14		2	; slot14 = true
		 85	[  0]	TSETS	 14	1	18	; slot1.checked = slot14
		 86	[  0]	TSETS	 12	1	17	; slot1.won = slot12
		 87	[  0]	TSETS	 11	1	16	; slot1.winningLines = slot11
		 88	[  0]	TSETS	 11	1	15	; slot1.newWinningLines = slot11
		 89	[  0]	KPRI 	 14		0	; slot14 = nil
		 90	[  0]	TSETS	 14	1	14	; slot1.allWinningLinesAfterNudge = slot14
		 91	[  0]	TSETS	 13	1	13	; slot1.symbol = slot13
		 92	[  0]	TSETS	 10	1	12	; slot1.symbolsByLine = slot10
		 93	[  0]	GGET 	 14		25	; slot14 = _env["require"]
		 94	[  0]	KSTR 	 16		24	; slot16 = "src.game.slot"
		 95	[  0]	CALL 	 14	2	2	; slot14 = require(slot15)
		 96	[  0]	TGETS	 14	14	23	; slot14 = require.isJackpotResult
		 97	[  0]	MOV  	 16		1	; slot16 = slot1
		 98	[  0]	MOV  	 17		8	; slot17 = uv1"unknown"
		 99	[  0]	CALL 	 14	2	3	; slot14 = require.isJackpotResult(slot15, slot16)
		100	[  0]	TSETS	 14	1	11	; slot1._jackpot = require.isJackpotResult
		101	[  0]	KPRI 	 14		1	; slot14 = false
		102	[  0]	TSETS	 14	1	10	; slot1.awarded = slot14
		103	[  0]	KPRI 	 14		1	; slot14 = false
		104	[  0]	TSETS	 14	1	9	; slot1.fxStarted = slot14
		105	[  0]	KPRI 	 14		1	; slot14 = false
		106	[  0]	TSETS	 14	1	8	; slot1.highlightActive = slot14
		107	[  0]	KSHORT	 14		0	; slot14 = 0
		108	[  0]	TSETS	 14	1	7	; slot1.ht = slot14
		109	[  0]	KPRI 	 14		0	; slot14 = nil
		110	[  0]	TSETS	 14	1	6	; slot1.winSeq = slot14
		111	[  0]	KPRI 	 14		0	; slot14 = nil
		112	[  0]	TSETS	 14	1	5	; slot1.visibleWinningLines = slot14
		113	[  0]	KPRI 	 14		2	; slot14 = true
		114	[  0]	TSETS	 14	1	4	; slot1._crookedFangApplied = slot14
		115	[  0]	TDUP 	 14		3	; slot14 = copy table#k3
		116	[  0]	TGETS	 15	0	28	; slot15 = slot0.key
		117	[  0]	TSETS	 15	14	28	; slot14.key = <unknown table>.key
		118	[  0]	TGETS	 15	0	2	; slot15 = slot0.inst
		119	[  0]	TSETS	 15	14	2	; slot14.inst = <unknown table>.inst
		120	[  0]	TSETS	  1	14	1	; slot14.result = slot1
		121	[  0]	TSETS	 12	14	17	; slot14.won = slot12
		122	[  0]	TSETS	  8	14	0	; slot14.allWinningLines = uv1"unknown"
		123	[  0]	TSETS	 11	14	15	; slot14.newWinningLines = slot11
		124	[  0]	TSETS	 13	14	13	; slot14.symbol = slot13
		125	[  0]	RET1 	 14		2	; return slot14
	238	[  0]	TSETS	 52	2	81	; slot2.completeCrookedFangSwap = slot52
	239	[  0]	FNEW 	 52		78	; N/A:0-0: 2 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		5	; slot2 = _env["tonumber"]
		  2	[  0]	ISTC 	  4		0	; slot4 = slot0; if slot0
		  3	[  0]	JMP  	  4		1	; 	goto 5
		  4	[  0]	KSHORT	  4		0	; slot4 = 0
		  5	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  6	[  0]	IST  	   		2	; if slot2
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	KSHORT	  2		0	; slot2 = 0
		  9	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 10	[  0]	MOV  	  5		2	; slot5 = slot2
		 11	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 12	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 13	[  0]	MOV  	  5		2	; slot5 = slot2
		 14	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv1"unknown"(slot4)
		 15	[  0]	JMP  	  6		21	; 	goto 37
		 16	[  0]	TGETS	  7	6	4	; slot7 = slot6.key
		 17	[  0]	ISNES	  7		3	; if <unknown table>.key ~= "CrookedFang"
		 18	[  0]	JMP  	  7		3	; 	goto 22
		 19	[  0]	TGETS	  7	6	2	; slot7 = slot6._crookedFangPending
		 20	[  0]	IST  	   		7	; if <unknown table>._crookedFangPending
		 21	[  0]	JMP  	  8		1	; 	goto 23
		 22	[  0]	KPRI 	  7		0	; slot7 = nil
		 23	[  0]	ISF  	   		7	; if not slot7
		 24	[  0]	JMP  	  8		12	; 	goto 37
		 25	[  0]	TGETS	  8	7	1	; slot8 = slot7.waveId
		 26	[  0]	ISNEV	  8		2	; if <unknown table>.waveId ~= slot2
		 27	[  0]	JMP  	  8		9	; 	goto 37
		 28	[  0]	ISF  	   		1	; if not slot1
		 29	[  0]	JMP  	  8		3	; 	goto 33
		 30	[  0]	TGETS	  8	7	0	; slot8 = slot7.spinKey
		 31	[  0]	ISNEV	  8		1	; if <unknown table>.spinKey ~= slot1
		 32	[  0]	JMP  	  8		4	; 	goto 37
		 33	[  0]	KPRI 	  8		0	; slot8 = nil
		 34	[  0]	TSETS	  8	6	2	; slot6._crookedFangPending = slot8
		 35	[  0]	KPRI 	  8		2	; slot8 = true
		 36	[  0]	RET1 	  8		2	; return slot8
		 37	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv1"unknown", slot4, slot5; slot6 = uv1"unknown"(slot4, slot5)
		 38	[  0]	ITERL	  6		-23	; slot5 = slot6; if slot6 != nil goto 16
		 39	[  0]	KPRI 	  3		1	; slot3 = false
		 40	[  0]	RET1 	  3		2	; return slot3
	240	[  0]	TSETS	 52	2	79	; slot2.cancelCrookedFangPending = slot52
	241	[  0]	FNEW 	 52		77	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISFC 	  1		0	; slot1 = slot0; if not slot0
		  2	[  0]	JMP  	  1		9	; 	goto 12
		  3	[  0]	ISEQS	  0		2	; if slot0 == "Blank"
		  4	[  0]	JMP  	  1		4	; 	goto 9
		  5	[  0]	ISEQS	  0		1	; if slot0 == "Joker"
		  6	[  0]	JMP  	  1		2	; 	goto 9
		  7	[  0]	ISNES	  0		0	; if slot0 ~= "J"
		  8	[  0]	JMP  	  1		2	; 	goto 11
		  9	[  0]	KPRI 	  1		1	; slot1 = false
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KPRI 	  1		2	; slot1 = true
		 12	[  0]	RET1 	  1		2	; return slot1
	242	[  0]	FNEW 	 53		76	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALLT	  1		2	; return uv0"unknown"(slot2)
	243	[  0]	FNEW 	 54		75	; N/A:0-0: 1 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			[row] = 2,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  6	[  0]	KSHORT	  2		1	; slot2 = 1
		  7	[  0]	KSHORT	  3		3	; slot3 = 3
		  8	[  0]	KSHORT	  4		1	; slot4 = 1
		  9	[  0]	FORI 	  2		32	; for slot5 = slot2,slot3,slot4 else goto 42
		 10	[  0]	TGETB	  6	0	1	; slot6 = slot0[1]
		 11	[  0]	ISF  	   		6	; if not slot6
		 12	[  0]	JMP  	  7		2	; 	goto 15
		 13	[  0]	TGETB	  6	0	1	; slot6 = slot0[1]
		 14	[  0]	TGETV	  6	6	5	; slot6 = slot6[slot5]
		 15	[  0]	TGETB	  7	0	2	; slot7 = slot0[2]
		 16	[  0]	ISF  	   		7	; if not slot7
		 17	[  0]	JMP  	  8		2	; 	goto 20
		 18	[  0]	TGETB	  7	0	2	; slot7 = slot0[2]
		 19	[  0]	TGETV	  7	7	5	; slot7 = slot7[slot5]
		 20	[  0]	TGETB	  8	0	3	; slot8 = slot0[3]
		 21	[  0]	ISF  	   		8	; if not slot8
		 22	[  0]	JMP  	  9		2	; 	goto 25
		 23	[  0]	TGETB	  8	0	3	; slot8 = slot0[3]
		 24	[  0]	TGETV	  8	8	5	; slot8 = slot8[slot5]
		 25	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 26	[  0]	MOV  	 11		6	; slot11 = slot6
		 27	[  0]	CALL 	  9	2	2	; slot9 = uv0"unknown"(slot10)
		 28	[  0]	ISF  	   		9	; if not uv0"unknown"
		 29	[  0]	JMP  	 10		11	; 	goto 41
		 30	[  0]	ISNEV	  6		8	; if slot6 ~= slot8
		 31	[  0]	JMP  	  9		9	; 	goto 41
		 32	[  0]	ISEQV	  7		6	; if slot7 == slot6
		 33	[  0]	JMP  	  9		7	; 	goto 41
		 34	[  0]	GGET 	  9		7	; slot9 = _env["table"]
		 35	[  0]	TGETS	  9	9	6	; slot9 = table.insert
		 36	[  0]	MOV  	 11		1	; slot11 = slot1
		 37	[  0]	TDUP 	 12		5	; slot12 = copy table#k5
		 38	[  0]	TSETS	  5	12	4	; slot12.col = slot5
		 39	[  0]	TSETS	  6	12	3	; slot12.newSymbol = slot6
		 40	[  0]	CALL 	  9	1	3	;  = table.insert(slot10, slot11)
		 41	[  0]	FORL 	  2		-32	; slot5 = slot5 + slot4; if cmp(slot5, sign slot4,  slot3) goto 10
		 42	[  0]	LEN  	  2		1	; slot2 = #slot1
		 43	[  0]	KSHORT	  3		0	; slot3 = 0
		 44	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 45	[  0]	JMP  	  2		2	; 	goto 48
		 46	[  0]	KPRI 	  2		0	; slot2 = nil
		 47	[  0]	RET1 	  2		2	; return slot2
		 48	[  0]	GGET 	  2		2	; slot2 = _env["love"]
		 49	[  0]	TGETS	  2	2	1	; slot2 = love.math
		 50	[  0]	TGETS	  2	2	0	; slot2 = love.math.random
		 51	[  0]	KSHORT	  4		1	; slot4 = 1
		 52	[  0]	LEN  	  5		1	; slot5 = #slot1
		 53	[  0]	CALL 	  2	2	3	; slot2 = love.math.random(slot3, slot4)
		 54	[  0]	TGETV	  2	1	2	; slot2 = slot1[slot2]
		 55	[  0]	RET1 	  2		2	; return slot2
	244	[  0]	FNEW 	 55		73	; N/A:0-0: 2 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		8	; if slot2 ~= "table"
		  5	[  0]	JMP  	  2		8	; 	goto 14
		  6	[  0]	TGETS	  2	0	7	; slot2 = slot0.key
		  7	[  0]	ISNES	  2		6	; if <unknown table>.key ~= "Copycap"
		  8	[  0]	JMP  	  2		5	; 	goto 14
		  9	[  0]	GGET 	  2		9	; slot2 = _env["type"]
		 10	[  0]	MOV  	  4		1	; slot4 = slot1
		 11	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 12	[  0]	ISEQS	  2		8	; if slot2 == "table"
		 13	[  0]	JMP  	  2		2	; 	goto 16
		 14	[  0]	KPRI 	  2		1	; slot2 = false
		 15	[  0]	RET1 	  2		2	; return slot2
		 16	[  0]	GGET 	  2		5	; slot2 = _env["math"]
		 17	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 18	[  0]	GGET 	  4		3	; slot4 = _env["tonumber"]
		 19	[  0]	TGETS	  6	0	2	; slot6 = slot0.col
		 20	[  0]	IST  	   		6	; if <unknown table>.col
		 21	[  0]	JMP  	  7		1	; 	goto 23
		 22	[  0]	KSHORT	  6		0	; slot6 = 0
		 23	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 24	[  0]	IST  	   		4	; if tonumber
		 25	[  0]	JMP  	  5		1	; 	goto 27
		 26	[  0]	KSHORT	  4		0	; slot4 = 0
		 27	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 28	[  0]	GGET 	  3		5	; slot3 = _env["math"]
		 29	[  0]	TGETS	  3	3	4	; slot3 = math.floor
		 30	[  0]	GGET 	  5		3	; slot5 = _env["tonumber"]
		 31	[  0]	TGETS	  7	0	1	; slot7 = slot0.row
		 32	[  0]	IST  	   		7	; if <unknown table>.row
		 33	[  0]	JMP  	  8		1	; 	goto 35
		 34	[  0]	KSHORT	  7		0	; slot7 = 0
		 35	[  0]	CALL 	  5	2	2	; slot5 = tonumber(slot6)
		 36	[  0]	IST  	   		5	; if tonumber
		 37	[  0]	JMP  	  6		1	; 	goto 39
		 38	[  0]	KSHORT	  5		0	; slot5 = 0
		 39	[  0]	CALL 	  3	2	2	; slot3 = math.floor(slot4)
		 40	[  0]	TGETS	  4	0	0	; slot4 = slot0.newSymbol
		 41	[  0]	KSHORT	  5		1	; slot5 = 1
		 42	[  0]	ISLT 	  2		5	; if slot2 < slot5
		 43	[  0]	JMP  	  5		10	; 	goto 54
		 44	[  0]	KSHORT	  5		3	; slot5 = 3
		 45	[  0]	ISLT 	  5		2	; if slot5 < slot2
		 46	[  0]	JMP  	  5		7	; 	goto 54
		 47	[  0]	ISNEN	  3		0	; if math.floor ~= 2
		 48	[  0]	JMP  	  5		5	; 	goto 54
		 49	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 50	[  0]	MOV  	  7		4	; slot7 = <unknown table>.newSymbol
		 51	[  0]	CALL 	  5	2	2	; slot5 = uv0"unknown"(slot6)
		 52	[  0]	IST  	   		5	; if uv0"unknown"
		 53	[  0]	JMP  	  5		2	; 	goto 56
		 54	[  0]	KPRI 	  5		1	; slot5 = false
		 55	[  0]	RET1 	  5		2	; return slot5
		 56	[  0]	TGETB	  5	1	1	; slot5 = slot1[1]
		 57	[  0]	ISF  	   		5	; if not slot5
		 58	[  0]	JMP  	  6		2	; 	goto 61
		 59	[  0]	TGETB	  5	1	1	; slot5 = slot1[1]
		 60	[  0]	TGETV	  5	5	2	; slot5 = slot5[slot2]
		 61	[  0]	TGETB	  6	1	2	; slot6 = slot1[2]
		 62	[  0]	ISF  	   		6	; if not slot6
		 63	[  0]	JMP  	  7		2	; 	goto 66
		 64	[  0]	TGETB	  6	1	2	; slot6 = slot1[2]
		 65	[  0]	TGETV	  6	6	2	; slot6 = slot6[slot2]
		 66	[  0]	TGETB	  7	1	3	; slot7 = slot1[3]
		 67	[  0]	ISF  	   		7	; if not slot7
		 68	[  0]	JMP  	  8		2	; 	goto 71
		 69	[  0]	TGETB	  7	1	3	; slot7 = slot1[3]
		 70	[  0]	TGETV	  7	7	2	; slot7 = slot7[slot2]
		 71	[  0]	ISNEV	  5		4	; if slot5 ~= <unknown table>.newSymbol
		 72	[  0]	JMP  	  8		4	; 	goto 77
		 73	[  0]	ISNEV	  7		4	; if slot7 ~= <unknown table>.newSymbol
		 74	[  0]	JMP  	  8		2	; 	goto 77
		 75	[  0]	ISNEV	  6		4	; if slot6 ~= <unknown table>.newSymbol
		 76	[  0]	JMP  	  8		2	; 	goto 79
		 77	[  0]	KPRI 	  8		1	; slot8 = false
		 78	[  0]	JMP  	  9		1	; 	goto 80
		 79	[  0]	KPRI 	  8		2	; slot8 = true
		 80	[  0]	RET1 	  8		2	; return slot8
	245	[  0]	TSETS	 55	2	74	; slot2.isCopycapPlanValid = slot55
	246	[  0]	FNEW 	 55		71	; N/A:0-0: 3 args, 2 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			[key] = Copycap,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	11	; slot3 = uv0"unknown".isCopycapPlanValid
		  3	[  0]	MOV  	  5		0	; slot5 = slot0
		  4	[  0]	MOV  	  6		1	; slot6 = slot1
		  5	[  0]	CALL 	  3	2	3	; slot3 = uv0"unknown".isCopycapPlanValid(slot4, slot5)
		  6	[  0]	ISF  	   		3	; if not slot3
		  7	[  0]	JMP  	  4		1	; 	goto 9
		  8	[  0]	RET1 	  0		2	; return slot0
		  9	[  0]	GGET 	  3		10	; slot3 = _env["type"]
		 10	[  0]	MOV  	  5		0	; slot5 = slot0
		 11	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		 12	[  0]	ISNES	  3		9	; if type ~= "table"
		 13	[  0]	JMP  	  3		3	; 	goto 17
		 14	[  0]	TGETS	  3	0	8	; slot3 = slot0.inst
		 15	[  0]	IST  	   		3	; if <unknown table>.inst
		 16	[  0]	JMP  	  4		1	; 	goto 18
		 17	[  0]	KPRI 	  3		0	; slot3 = nil
		 18	[  0]	GGET 	  4		7	; slot4 = _env["tonumber"]
		 19	[  0]	ISTC 	  6		2	; slot6 = slot2; if slot2
		 20	[  0]	JMP  	  6		1	; 	goto 22
		 21	[  0]	KSHORT	  6		0	; slot6 = 0
		 22	[  0]	CALL 	  4	2	2	; slot4 = tonumber(slot5)
		 23	[  0]	IST  	   		4	; if tonumber
		 24	[  0]	JMP  	  5		1	; 	goto 26
		 25	[  0]	KSHORT	  4		0	; slot4 = 0
		 26	[  0]	ISF  	   		3	; if not slot3
		 27	[  0]	JMP  	  5		8	; 	goto 36
		 28	[  0]	TGETS	  5	3	6	; slot5 = slot3.key
		 29	[  0]	ISNES	  5		5	; if <unknown table>.key ~= "Copycap"
		 30	[  0]	JMP  	  5		5	; 	goto 36
		 31	[  0]	TGETS	  5	3	4	; slot5 = slot3._copycapUsedWave
		 32	[  0]	ISNEV	  5		4	; if <unknown table>._copycapUsedWave ~= slot4
		 33	[  0]	JMP  	  5		2	; 	goto 36
		 34	[  0]	KPRI 	  5		0	; slot5 = nil
		 35	[  0]	TSETS	  5	3	4	; slot3._copycapUsedWave = slot5
		 36	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		 37	[  0]	MOV  	  7		1	; slot7 = slot1
		 38	[  0]	CALL 	  5	2	2	; slot5 = uv1"unknown"(slot6)
		 39	[  0]	ISF  	   		3	; if not slot3
		 40	[  0]	JMP  	  6		2	; 	goto 43
		 41	[  0]	IST  	   		5	; if uv1"unknown"
		 42	[  0]	JMP  	  6		2	; 	goto 45
		 43	[  0]	KPRI 	  6		0	; slot6 = nil
		 44	[  0]	RET1 	  6		2	; return slot6
		 45	[  0]	TSETS	  4	3	4	; slot3._copycapUsedWave = slot4
		 46	[  0]	TDUP 	  6		3	; slot6 = copy table#k3
		 47	[  0]	TSETS	  3	6	8	; slot6.inst = slot3
		 48	[  0]	TGETS	  7	5	2	; slot7 = uv1"unknown".col
		 49	[  0]	TSETS	  7	6	2	; slot6.col = uv1"unknown".col
		 50	[  0]	TGETS	  7	5	1	; slot7 = uv1"unknown".row
		 51	[  0]	TSETS	  7	6	1	; slot6.row = uv1"unknown".row
		 52	[  0]	TGETS	  7	5	0	; slot7 = uv1"unknown".newSymbol
		 53	[  0]	TSETS	  7	6	0	; slot6.newSymbol = uv1"unknown".newSymbol
		 54	[  0]	RET1 	  6		2	; return slot6
	247	[  0]	TSETS	 55	2	72	; slot2.refreshCopycapPlan = slot55
	248	[  0]	FNEW 	 55		69	; N/A:0-0: 2 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		6	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		0	; slot4 = slot0
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISNES	  2		5	; if slot2 ~= "table"
		  5	[  0]	JMP  	  2		3	; 	goto 9
		  6	[  0]	TGETS	  2	0	4	; slot2 = slot0.inst
		  7	[  0]	IST  	   		2	; if <unknown table>.inst
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	KPRI 	  2		0	; slot2 = nil
		 10	[  0]	GGET 	  3		3	; slot3 = _env["tonumber"]
		 11	[  0]	ISTC 	  5		1	; slot5 = slot1; if slot1
		 12	[  0]	JMP  	  5		1	; 	goto 14
		 13	[  0]	KSHORT	  5		0	; slot5 = 0
		 14	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 15	[  0]	IST  	   		3	; if tonumber
		 16	[  0]	JMP  	  4		1	; 	goto 18
		 17	[  0]	KSHORT	  3		0	; slot3 = 0
		 18	[  0]	ISF  	   		2	; if not slot2
		 19	[  0]	JMP  	  4		8	; 	goto 28
		 20	[  0]	TGETS	  4	2	2	; slot4 = slot2.key
		 21	[  0]	ISNES	  4		1	; if <unknown table>.key ~= "Copycap"
		 22	[  0]	JMP  	  4		5	; 	goto 28
		 23	[  0]	TGETS	  4	2	0	; slot4 = slot2._copycapUsedWave
		 24	[  0]	ISNEV	  4		3	; if <unknown table>._copycapUsedWave ~= slot3
		 25	[  0]	JMP  	  4		2	; 	goto 28
		 26	[  0]	KPRI 	  4		0	; slot4 = nil
		 27	[  0]	TSETS	  4	2	0	; slot2._copycapUsedWave = slot4
		 28	[  0]	RET0 	  0		1	; return
	249	[  0]	TSETS	 55	2	70	; slot2.cancelCopycapPlan = slot55
	250	[  0]	KPRI 	 55		0	; slot55 = nil
	251	[  0]	FNEW 	 56		68	; N/A:0-0: 4 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			[count] = 1,
			[consumed] = false,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  4		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  4		2	; 	goto 7
		  5	[  0]	KPRI 	  4		1	; slot4 = false
		  6	[  0]	RET1 	  4		2	; return slot4
		  7	[  0]	TGETS	  4	0	10	; slot4 = slot0._coreExtraSpawns
		  8	[  0]	IST  	   		4	; if <unknown table>._coreExtraSpawns
		  9	[  0]	JMP  	  5		1	; 	goto 11
		 10	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 11	[  0]	TSETS	  4	0	10	; slot0._coreExtraSpawns = slot4
		 12	[  0]	GGET 	  4		9	; slot4 = _env["table"]
		 13	[  0]	TGETS	  4	4	8	; slot4 = table.insert
		 14	[  0]	TGETS	  6	0	10	; slot6 = slot0._coreExtraSpawns
		 15	[  0]	TDUP 	  7		7	; slot7 = copy table#k7
		 16	[  0]	TSETS	  1	7	6	; slot7.sym = slot1
		 17	[  0]	ISEQP	  2		2	; if slot2 == true
		 18	[  0]	JMP  	  8		2	; 	goto 21
		 19	[  0]	KPRI 	  8		1	; slot8 = false
		 20	[  0]	JMP  	  9		1	; 	goto 22
		 21	[  0]	KPRI 	  8		2	; slot8 = true
		 22	[  0]	TSETS	  8	7	5	; slot7.noAbsorbEssence = slot8
		 23	[  0]	TSETS	  3	7	4	; slot7.sourceKey = slot3
		 24	[  0]	CALL 	  4	1	3	;  = table.insert(slot5, <unknown table>._coreExtraSpawns)
		 25	[  0]	TGETS	  4	0	3	; slot4 = slot0._coreExtraSpawnPending
		 26	[  0]	ISEQP	  4		2	; if <unknown table>._coreExtraSpawnPending == true
		 27	[  0]	JMP  	  4		11	; 	goto 39
		 28	[  0]	KPRI 	  4		2	; slot4 = true
		 29	[  0]	TSETS	  4	0	3	; slot0._coreExtraSpawnPending = slot4
		 30	[  0]	KPRI 	  4		1	; slot4 = false
		 31	[  0]	TSETS	  4	0	2	; slot0._coreExtraSpawnConsumed = slot4
		 32	[  0]	TSETS	  1	0	1	; slot0._coreExtraSpawnSym = slot1
		 33	[  0]	ISEQP	  2		2	; if slot2 == true
		 34	[  0]	JMP  	  4		2	; 	goto 37
		 35	[  0]	KPRI 	  4		1	; slot4 = false
		 36	[  0]	JMP  	  5		1	; 	goto 38
		 37	[  0]	KPRI 	  4		2	; slot4 = true
		 38	[  0]	TSETS	  4	0	0	; slot0._coreExtraSpawnNoAbsorbEssence = slot4
		 39	[  0]	KPRI 	  4		2	; slot4 = true
		 40	[  0]	RET1 	  4		2	; return slot4
	252	[  0]	TNEW 	 57		9	; slot57 = new table( array: 9, dict: 1)
	253	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	254	[  0]	TDUP 	 59		67	; slot59 = copy table#k67
	255	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	256	[  0]	TDUP 	 59		66	; slot59 = copy table#k66
	257	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	258	[  0]	TDUP 	 59		65	; slot59 = copy table#k65
	259	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	260	[  0]	TSETB	 58	57	1	; slot57[1] = slot58
	261	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	262	[  0]	TDUP 	 59		64	; slot59 = copy table#k64
	263	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	264	[  0]	TDUP 	 59		63	; slot59 = copy table#k63
	265	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	266	[  0]	TDUP 	 59		62	; slot59 = copy table#k62
	267	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	268	[  0]	TSETB	 58	57	2	; slot57[2] = slot58
	269	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	270	[  0]	TDUP 	 59		61	; slot59 = copy table#k61
	271	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	272	[  0]	TDUP 	 59		60	; slot59 = copy table#k60
	273	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	274	[  0]	TDUP 	 59		59	; slot59 = copy table#k59
	275	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	276	[  0]	TSETB	 58	57	3	; slot57[3] = slot58
	277	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	278	[  0]	TDUP 	 59		58	; slot59 = copy table#k58
	279	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	280	[  0]	TDUP 	 59		57	; slot59 = copy table#k57
	281	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	282	[  0]	TDUP 	 59		56	; slot59 = copy table#k56
	283	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	284	[  0]	TSETB	 58	57	4	; slot57[4] = slot58
	285	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	286	[  0]	TDUP 	 59		55	; slot59 = copy table#k55
	287	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	288	[  0]	TDUP 	 59		54	; slot59 = copy table#k54
	289	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	290	[  0]	TDUP 	 59		53	; slot59 = copy table#k53
	291	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	292	[  0]	TSETB	 58	57	5	; slot57[5] = slot58
	293	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	294	[  0]	TDUP 	 59		52	; slot59 = copy table#k52
	295	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	296	[  0]	TDUP 	 59		51	; slot59 = copy table#k51
	297	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	298	[  0]	TDUP 	 59		50	; slot59 = copy table#k50
	299	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	300	[  0]	TSETB	 58	57	6	; slot57[6] = slot58
	301	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	302	[  0]	TDUP 	 59		49	; slot59 = copy table#k49
	303	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	304	[  0]	TDUP 	 59		48	; slot59 = copy table#k48
	305	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	306	[  0]	TDUP 	 59		47	; slot59 = copy table#k47
	307	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	308	[  0]	TSETB	 58	57	7	; slot57[7] = slot58
	309	[  0]	TNEW 	 58		4	; slot58 = new table( array: 4, dict: 1)
	310	[  0]	TDUP 	 59		46	; slot59 = copy table#k46
	311	[  0]	TSETB	 59	58	1	; slot58[1] = slot59
	312	[  0]	TDUP 	 59		45	; slot59 = copy table#k45
	313	[  0]	TSETB	 59	58	2	; slot58[2] = slot59
	314	[  0]	TDUP 	 59		44	; slot59 = copy table#k44
	315	[  0]	TSETB	 59	58	3	; slot58[3] = slot59
	316	[  0]	TSETB	 58	57	8	; slot57[8] = slot58
	317	[  0]	FNEW 	 58		42	; N/A:0-0: 2 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		5	; slot2 = _env["type"]
		  2	[  0]	MOV  	  4		1	; slot4 = slot1
		  3	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  4	[  0]	ISEQS	  2		4	; if slot2 == "table"
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		1	; slot2 = false
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	GGET 	  2		3	; slot2 = _env["tonumber"]
		  9	[  0]	TGETS	  4	1	2	; slot4 = slot1.row
		 10	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 11	[  0]	GGET 	  3		3	; slot3 = _env["tonumber"]
		 12	[  0]	TGETS	  5	1	1	; slot5 = slot1.col
		 13	[  0]	CALL 	  3	2	2	; slot3 = tonumber(<unknown table>.row)
		 14	[  0]	ISF  	   		2	; if not slot2
		 15	[  0]	JMP  	  4		2	; 	goto 18
		 16	[  0]	IST  	   		3	; if tonumber
		 17	[  0]	JMP  	  4		2	; 	goto 20
		 18	[  0]	KPRI 	  4		1	; slot4 = false
		 19	[  0]	RET1 	  4		2	; return slot4
		 20	[  0]	GGET 	  4		0	; slot4 = _env["ipairs"]
		 21	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 22	[  0]	GGET 	  7		3	; slot7 = _env["tonumber"]
		 23	[  0]	MOV  	  9		0	; slot9 = slot0
		 24	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 25	[  0]	TGETV	  6	6	7	; slot6 = uv0"unknown"[tonumber]
		 26	[  0]	IST  	   		6	; if slot6
		 27	[  0]	JMP  	  7		1	; 	goto 29
		 28	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 29	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(<unknown table>.col)
		 30	[  0]	JMP  	  7		8	; 	goto 39
		 31	[  0]	TGETB	  9	8	1	; slot9 = slot8[1]
		 32	[  0]	ISNEV	  9		2	; if slot9 ~= slot2
		 33	[  0]	JMP  	  9		5	; 	goto 39
		 34	[  0]	TGETB	  9	8	2	; slot9 = slot8[2]
		 35	[  0]	ISNEV	  9		3	; if slot9 ~= tonumber
		 36	[  0]	JMP  	  9		2	; 	goto 39
		 37	[  0]	KPRI 	  9		2	; slot9 = true
		 38	[  0]	RET1 	  9		2	; return slot9
		 39	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, <unknown table>.col, slot6; slot7, slot8 = ipairs(<unknown table>.col, slot6)
		 40	[  0]	ITERL	  7		-10	; slot6 = tonumber; if tonumber != nil goto 31
		 41	[  0]	KPRI 	  4		1	; slot4 = false
		 42	[  0]	RET1 	  4		2	; return slot4
	318	[  0]	TSETS	 58	2	43	; slot2.goldenLeverLineContainsCell = slot58
	319	[  0]	FNEW 	 58		41	; N/A:0-0: 3 args, 2 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		1	; if not slot1
		  2	[  0]	JMP  	  3		11	; 	goto 14
		  3	[  0]	TGETS	  3	1	19	; slot3 = slot1.isNudgeWin
		  4	[  0]	ISNEP	  3		2	; if <unknown table>.isNudgeWin ~= true
		  5	[  0]	JMP  	  3		8	; 	goto 14
		  6	[  0]	KPRI 	  3		0	; slot3 = nil
		  7	[  0]	TSETS	  3	0	18	; slot0._goldenLeverUpgradeLineId = slot3
		  8	[  0]	KPRI 	  3		0	; slot3 = nil
		  9	[  0]	TSETS	  3	0	17	; slot0._goldenLeverCell = slot3
		 10	[  0]	KPRI 	  3		0	; slot3 = nil
		 11	[  0]	TSETS	  3	0	16	; slot0._goldenLeverMaxGrade = slot3
		 12	[  0]	KPRI 	  3		0	; slot3 = nil
		 13	[  0]	TSETS	  3	0	15	; slot0._goldenLeverUpgradeConsumed = slot3
		 14	[  0]	ISF  	   		1	; if not slot1
		 15	[  0]	JMP  	  3		5	; 	goto 21
		 16	[  0]	GGET 	  3		14	; slot3 = _env["type"]
		 17	[  0]	TGETS	  5	1	13	; slot5 = slot1.goldenCell
		 18	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		 19	[  0]	ISEQS	  3		12	; if type == "table"
		 20	[  0]	JMP  	  3		2	; 	goto 23
		 21	[  0]	KPRI 	  3		1	; slot3 = false
		 22	[  0]	RET1 	  3		2	; return slot3
		 23	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 24	[  0]	MOV  	  5		2	; slot5 = slot2
		 25	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv0"unknown"(slot4)
		 26	[  0]	JMP  	  6		50	; 	goto 77
		 27	[  0]	TGETS	  7	6	11	; slot7 = slot6.key
		 28	[  0]	ISNES	  7		10	; if <unknown table>.key ~= "GoldenLever"
		 29	[  0]	JMP  	  7		47	; 	goto 77
		 30	[  0]	GGET 	  7		9	; slot7 = _env["ipairs"]
		 31	[  0]	TGETS	  9	0	8	; slot9 = slot0.winningLines
		 32	[  0]	IST  	   		9	; if <unknown table>.winningLines
		 33	[  0]	JMP  	 10		1	; 	goto 35
		 34	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 35	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 36	[  0]	JMP  	 10		31	; 	goto 68
		 37	[  0]	UGET 	 12		1	; slot12 = uv1"unknwon"
		 38	[  0]	TGETS	 12	12	7	; slot12 = uv1"unknown".goldenLeverLineContainsCell
		 39	[  0]	MOV  	 14		11	; slot14 = slot11
		 40	[  0]	TGETS	 15	1	13	; slot15 = slot1.goldenCell
		 41	[  0]	CALL 	 12	2	3	; slot12 = uv1"unknown".goldenLeverLineContainsCell(slot13, slot14)
		 42	[  0]	ISF  	   		12	; if not uv1"unknown".goldenLeverLineContainsCell
		 43	[  0]	JMP  	 13		20	; 	goto 64
		 44	[  0]	TSETS	 11	0	18	; slot0._goldenLeverUpgradeLineId = slot11
		 45	[  0]	TDUP 	 12		4	; slot12 = copy table#k4
		 46	[  0]	GGET 	 13		6	; slot13 = _env["tonumber"]
		 47	[  0]	TGETS	 15	1	13	; slot15 = slot1.goldenCell
		 48	[  0]	TGETS	 15	15	5	; slot15 = <unknown table>.goldenCell.row
		 49	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 50	[  0]	TSETS	 13	12	5	; slot12.row = tonumber
		 51	[  0]	GGET 	 13		6	; slot13 = _env["tonumber"]
		 52	[  0]	TGETS	 15	1	13	; slot15 = slot1.goldenCell
		 53	[  0]	TGETS	 15	15	3	; slot15 = <unknown table>.goldenCell.col
		 54	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 55	[  0]	TSETS	 13	12	3	; slot12.col = tonumber
		 56	[  0]	TSETS	 12	0	17	; slot0._goldenLeverCell = slot12
		 57	[  0]	TGETS	 12	1	2	; slot12 = slot1.goldenMaxGrade
		 58	[  0]	IST  	   		12	; if <unknown table>.goldenMaxGrade
		 59	[  0]	JMP  	 13		1	; 	goto 61
		 60	[  0]	KSTR 	 12		1	; slot12 = "prism"
		 61	[  0]	TSETS	 12	0	16	; slot0._goldenLeverMaxGrade = slot12
		 62	[  0]	KPRI 	 12		2	; slot12 = true
		 63	[  0]	TSETS	 12	6	0	; slot6._uiTrigger = slot12
		 64	[  0]	TGETS	 12	0	18	; slot12 = slot0._goldenLeverUpgradeLineId
		 65	[  0]	ISF  	   		12	; if not <unknown table>._goldenLeverUpgradeLineId
		 66	[  0]	JMP  	 13		1	; 	goto 68
		 67	[  0]	JMP  	  7		2	; 	goto 70
		 68	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 69	[  0]	ITERL	 10		-33	; slot9 = slot10; if slot10 != nil goto 37
		 70	[  0]	TGETS	  7	0	18	; slot7 = slot0._goldenLeverUpgradeLineId
		 71	[  0]	ISNEP	  7		0	; if <unknown table>._goldenLeverUpgradeLineId ~= nil
		 72	[  0]	JMP  	  7		2	; 	goto 75
		 73	[  0]	KPRI 	  7		1	; slot7 = false
		 74	[  0]	JMP  	  8		1	; 	goto 76
		 75	[  0]	KPRI 	  7		2	; slot7 = true
		 76	[  0]	RET1 	  7		2	; return slot7
		 77	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv0"unknown", slot4, slot5; slot6 = uv0"unknown"(slot4, slot5)
		 78	[  0]	ITERL	  6		-52	; slot5 = slot6; if slot6 != nil goto 27
		 79	[  0]	KPRI 	  3		1	; slot3 = false
		 80	[  0]	RET1 	  3		2	; return slot3
	320	[  0]	FNEW 	 59		39	; N/A:0-0: 2 args, 6 upvalues, 20 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		8	; 	goto 11
		  3	[  0]	TGETS	  2	0	14	; slot2 = slot0.won
		  4	[  0]	ISNEP	  2		2	; if <unknown table>.won ~= true
		  5	[  0]	JMP  	  2		5	; 	goto 11
		  6	[  0]	ISF  	   		1	; if not slot1
		  7	[  0]	JMP  	  2		3	; 	goto 11
		  8	[  0]	TGETS	  2	1	13	; slot2 = slot1.grid
		  9	[  0]	IST  	   		2	; if <unknown table>.grid
		 10	[  0]	JMP  	  2		2	; 	goto 13
		 11	[  0]	KPRI 	  2		1	; slot2 = false
		 12	[  0]	RET1 	  2		2	; return slot2
		 13	[  0]	GGET 	  2		12	; slot2 = _env["tonumber"]
		 14	[  0]	TGETS	  4	1	11	; slot4 = slot1.waveId
		 15	[  0]	IST  	   		4	; if <unknown table>.waveId
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	KSHORT	  4		0	; slot4 = 0
		 18	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 19	[  0]	IST  	   		2	; if slot2
		 20	[  0]	JMP  	  3		1	; 	goto 22
		 21	[  0]	KSHORT	  2		0	; slot2 = 0
		 22	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 23	[  0]	MOV  	  5		2	; slot5 = slot2
		 24	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 25	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 26	[  0]	MOV  	  5		0	; slot5 = slot0
		 27	[  0]	MOV  	  6		1	; slot6 = slot1
		 28	[  0]	MOV  	  7		2	; slot7 = slot2
		 29	[  0]	CALL 	  3	2	4	; slot3 = uv1"unknown"(slot4, slot5, slot6)
		 30	[  0]	TGETS	  4	0	10	; slot4 = slot0._coreWinPostEvaluateApplied
		 31	[  0]	ISNEP	  4		2	; if <unknown table>._coreWinPostEvaluateApplied ~= true
		 32	[  0]	JMP  	  4		1	; 	goto 34
		 33	[  0]	RET1 	  3		2	; return slot3
		 34	[  0]	KPRI 	  4		2	; slot4 = true
		 35	[  0]	TSETS	  4	0	10	; slot0._coreWinPostEvaluateApplied = slot4
		 36	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 37	[  0]	MOV  	  6		2	; slot6 = slot2
		 38	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv2"unknown"(slot5)
		 39	[  0]	JMP  	  7		72	; 	goto 112
		 40	[  0]	TGETS	  8	7	9	; slot8 = slot7.key
		 41	[  0]	ISNES	  8		8	; if <unknown table>.key ~= "GoldenLever"
		 42	[  0]	JMP  	  8		1	; 	goto 44
		 43	[  0]	JMP  	  8		68	; 	goto 112
		 44	[  0]	TGETS	  8	7	9	; slot8 = slot7.key
		 45	[  0]	ISNES	  8		7	; if <unknown table>.key ~= "EchoLantern"
		 46	[  0]	JMP  	  8		16	; 	goto 63
		 47	[  0]	TGETS	  8	0	6	; slot8 = slot0.symbol
		 48	[  0]	ISF  	   		8	; if not <unknown table>.symbol
		 49	[  0]	JMP  	  9		62	; 	goto 112
		 50	[  0]	TGETS	  9	7	5	; slot9 = slot7._echoLanternLastWinSym
		 51	[  0]	ISNEV	  9		8	; if <unknown table>._echoLanternLastWinSym ~= <unknown table>.symbol
		 52	[  0]	JMP  	  9		8	; 	goto 61
		 53	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 54	[  0]	MOV  	 11		0	; slot11 = slot0
		 55	[  0]	MOV  	 12		8	; slot12 = <unknown table>.symbol
		 56	[  0]	KPRI 	 13		1	; slot13 = false
		 57	[  0]	TGETS	 14	7	9	; slot14 = slot7.key
		 58	[  0]	CALL 	  9	1	5	;  = uv3"unknown"(slot10, slot11, <unknown table>.symbol, slot13)
		 59	[  0]	KPRI 	  9		2	; slot9 = true
		 60	[  0]	TSETS	  9	7	4	; slot7._uiTrigger = slot9
		 61	[  0]	TSETS	  8	7	5	; slot7._echoLanternLastWinSym = <unknown table>.symbol
		 62	[  0]	JMP  	  8		49	; 	goto 112
		 63	[  0]	TGETS	  8	7	9	; slot8 = slot7.key
		 64	[  0]	ISNES	  8		3	; if <unknown table>.key ~= "ResonantAnvil"
		 65	[  0]	JMP  	  8		21	; 	goto 87
		 66	[  0]	TGETS	  8	7	2	; slot8 = slot7._resonantAnvilUsedThisSpin
		 67	[  0]	ISEQP	  8		2	; if <unknown table>._resonantAnvilUsedThisSpin == true
		 68	[  0]	JMP  	  8		18	; 	goto 87
		 69	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		 70	[  0]	MOV  	 10		0	; slot10 = slot0
		 71	[  0]	TGETS	 11	1	13	; slot11 = slot1.grid
		 72	[  0]	KSHORT	 12		4	; slot12 = 4
		 73	[  0]	CALL 	  8	2	4	; slot8 = uv4"unknown"(slot9, slot10, <unknown table>.grid)
		 74	[  0]	ISF  	   		8	; if not uv4"unknown"
		 75	[  0]	JMP  	  9		36	; 	goto 112
		 76	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		 77	[  0]	MOV  	 11		0	; slot11 = slot0
		 78	[  0]	MOV  	 12		8	; slot12 = uv4"unknown"
		 79	[  0]	KPRI 	 13		2	; slot13 = true
		 80	[  0]	TGETS	 14	7	9	; slot14 = slot7.key
		 81	[  0]	CALL 	  9	1	5	;  = uv3"unknown"(slot10, slot11, uv4"unknown", slot13)
		 82	[  0]	KPRI 	  9		2	; slot9 = true
		 83	[  0]	TSETS	  9	7	2	; slot7._resonantAnvilUsedThisSpin = slot9
		 84	[  0]	KPRI 	  9		2	; slot9 = true
		 85	[  0]	TSETS	  9	7	4	; slot7._uiTrigger = slot9
		 86	[  0]	JMP  	  8		25	; 	goto 112
		 87	[  0]	TGETS	  8	7	9	; slot8 = slot7.key
		 88	[  0]	ISNES	  8		1	; if <unknown table>.key ~= "Wildcard"
		 89	[  0]	JMP  	  8		22	; 	goto 112
		 90	[  0]	UGET 	  8		5	; slot8 = uv5"unknwon"
		 91	[  0]	MOV  	 10		0	; slot10 = slot0
		 92	[  0]	TGETS	 11	1	13	; slot11 = slot1.grid
		 93	[  0]	CALL 	  8	2	3	; slot8 = uv5"unknown"(slot9, slot10)
		 94	[  0]	GGET 	  9		0	; slot9 = _env["ipairs"]
		 95	[  0]	MOV  	 11		8	; slot11 = uv5"unknown"
		 96	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
		 97	[  0]	JMP  	 12		6	; 	goto 104
		 98	[  0]	UGET 	 14		3	; slot14 = uv3"unknwon"
		 99	[  0]	MOV  	 16		0	; slot16 = slot0
		100	[  0]	MOV  	 17		13	; slot17 = slot13
		101	[  0]	KPRI 	 18		2	; slot18 = true
		102	[  0]	TGETS	 19	7	9	; slot19 = slot7.key
		103	[  0]	CALL 	 14	1	5	;  = uv3"unknown"(slot15, slot16, slot17, slot18)
		104	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, uv5"unknown"; slot12, slot13 = ipairs(slot10, uv5"unknown")
		105	[  0]	ITERL	 12		-8	; uv5"unknown" = uv4"unknown"; if uv4"unknown" != nil goto 98
		106	[  0]	LEN  	  9		8	; slot9 = #uv5"unknown"
		107	[  0]	KSHORT	 10		0	; slot10 = 0
		108	[  0]	ISGE 	 10		9	; if slot10 >= slot9
		109	[  0]	JMP  	  9		2	; 	goto 112
		110	[  0]	KPRI 	  9		2	; slot9 = true
		111	[  0]	TSETS	  9	7	4	; slot7._uiTrigger = slot9
		112	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv2"unknown", slot5, slot6; slot7 = uv2"unknown"(slot5, slot6)
		113	[  0]	ITERL	  7		-74	; slot6 = slot7; if slot7 != nil goto 40
		114	[  0]	KPRI 	  4		1	; slot4 = false
		115	[  0]	RET1 	  4		2	; return slot4
	321	[  0]	TSETS	 59	2	40	; slot2.applyWinPostEvaluate = slot59
	322	[  0]	TNEW 	 59		4	; slot59 = new table( array: 4, dict: 1)
	323	[  0]	TNEW 	 60		4	; slot60 = new table( array: 4, dict: 1)
	324	[  0]	TDUP 	 61		38	; slot61 = copy table#k38
	325	[  0]	TSETB	 61	60	1	; slot60[1] = slot61
	326	[  0]	TDUP 	 61		37	; slot61 = copy table#k37
	327	[  0]	TSETB	 61	60	2	; slot60[2] = slot61
	328	[  0]	TDUP 	 61		36	; slot61 = copy table#k36
	329	[  0]	TSETB	 61	60	3	; slot60[3] = slot61
	330	[  0]	TSETB	 60	59	1	; slot59[1] = slot60
	331	[  0]	TNEW 	 60		4	; slot60 = new table( array: 4, dict: 1)
	332	[  0]	TDUP 	 61		35	; slot61 = copy table#k35
	333	[  0]	TSETB	 61	60	1	; slot60[1] = slot61
	334	[  0]	TDUP 	 61		34	; slot61 = copy table#k34
	335	[  0]	TSETB	 61	60	2	; slot60[2] = slot61
	336	[  0]	TDUP 	 61		33	; slot61 = copy table#k33
	337	[  0]	TSETB	 61	60	3	; slot60[3] = slot61
	338	[  0]	TSETB	 60	59	2	; slot59[2] = slot60
	339	[  0]	TNEW 	 60		4	; slot60 = new table( array: 4, dict: 1)
	340	[  0]	TDUP 	 61		32	; slot61 = copy table#k32
	341	[  0]	TSETB	 61	60	1	; slot60[1] = slot61
	342	[  0]	TDUP 	 61		31	; slot61 = copy table#k31
	343	[  0]	TSETB	 61	60	2	; slot60[2] = slot61
	344	[  0]	TDUP 	 61		30	; slot61 = copy table#k30
	345	[  0]	TSETB	 61	60	3	; slot60[3] = slot61
	346	[  0]	TSETB	 60	59	3	; slot59[3] = slot60
	347	[  0]	FNEW 	 60		28	; N/A:0-0: 1 args, 1 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		ktable#8 = [
			]
		
		
		ktable#9 = [
			]
		
		
		ktable#13 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  2		20	; slot2 = _env["type"]
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  5	[  0]	ISEQS	  2		19	; if slot2 == "table"
		  6	[  0]	JMP  	  2		1	; 	goto 8
		  7	[  0]	UCLO 	  0		100	; nil uvs >= r0; goto 108
		  8	[  0]	GGET 	  2		18	; slot2 = _env["ipairs"]
		  9	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 10	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 11	[  0]	JMP  	  5		87	; 	goto 99
		 12	[  0]	TNEW 	  7		0	; slot7 = new table( array: 0, dict: 1)
		 13	[  0]	GGET 	  8		18	; slot8 = _env["ipairs"]
		 14	[  0]	MOV  	 10		6	; slot10 = slot6
		 15	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
		 16	[  0]	JMP  	 11		30	; 	goto 47
		 17	[  0]	TGETB	 13	12	1	; slot13 = slot12[1]
		 18	[  0]	TGETB	 14	12	2	; slot14 = slot12[2]
		 19	[  0]	TGETV	 15	0	13	; slot15 = slot0[slot13]
		 20	[  0]	ISF  	   		15	; if not slot15
		 21	[  0]	JMP  	 16		4	; 	goto 26
		 22	[  0]	TGETV	 15	0	13	; slot15 = slot0[slot13]
		 23	[  0]	TGETV	 15	15	14	; slot15 = slot15[slot14]
		 24	[  0]	IST  	   		15	; if slot15
		 25	[  0]	JMP  	 16		1	; 	goto 27
		 26	[  0]	KPRI 	 15		0	; slot15 = nil
		 27	[  0]	ISF  	   		15	; if not slot15
		 28	[  0]	JMP  	 16		18	; 	goto 47
		 29	[  0]	ISEQS	 15		17	; if slot15 == "Blank"
		 30	[  0]	JMP  	 16		16	; 	goto 47
		 31	[  0]	ISEQS	 15		16	; if slot15 == "Joker"
		 32	[  0]	JMP  	 16		14	; 	goto 47
		 33	[  0]	ISEQS	 15		15	; if slot15 == "J"
		 34	[  0]	JMP  	 16		12	; 	goto 47
		 35	[  0]	TGETV	 16	7	15	; slot16 = slot7[slot15]
		 36	[  0]	IST  	   		16	; if slot16
		 37	[  0]	JMP  	 17		1	; 	goto 39
		 38	[  0]	TNEW 	 16		0	; slot16 = new table( array: 0, dict: 1)
		 39	[  0]	TSETV	 16	7	15	; slot7[slot15] = slot16
		 40	[  0]	GGET 	 16		19	; slot16 = _env["table"]
		 41	[  0]	TGETS	 16	16	14	; slot16 = table.insert
		 42	[  0]	TGETV	 18	7	15	; slot18 = slot7[slot15]
		 43	[  0]	TDUP 	 19		13	; slot19 = copy table#k13
		 44	[  0]	TSETS	 13	19	12	; slot19.row = slot13
		 45	[  0]	TSETS	 14	19	11	; slot19.col = slot14
		 46	[  0]	CALL 	 16	1	3	;  = table.insert(slot17, slot18)
		 47	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, slot10; slot11, slot12 = ipairs(slot9, slot10)
		 48	[  0]	ITERL	 11		-32	; slot10 = slot11; if slot11 != nil goto 17
		 49	[  0]	GGET 	  8		10	; slot8 = _env["pairs"]
		 50	[  0]	MOV  	 10		7	; slot10 = slot7
		 51	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = pairs(slot9)
		 52	[  0]	ISNEXT	 11		44	; Verify ITERN at 97; goto 97
		 53	[  0]	LEN  	 13		12	; slot13 = #slot12
		 54	[  0]	ISNEN	 13		0	; if slot13 ~= 2
		 55	[  0]	JMP  	 13		41	; 	goto 97
		 56	[  0]	TNEW 	 13		2048	; slot13 = new table( array: 0, dict: 2)
		 57	[  0]	TGETB	 14	12	1	; slot14 = slot12[1]
		 58	[  0]	TGETS	 14	14	11	; slot14 = slot14.col
		 59	[  0]	KPRI 	 15		2	; slot15 = true
		 60	[  0]	TSETV	 15	13	14	; slot13[<unknown table>.col] = slot15
		 61	[  0]	TGETB	 14	12	2	; slot14 = slot12[2]
		 62	[  0]	TGETS	 14	14	11	; slot14 = slot14.col
		 63	[  0]	KPRI 	 15		2	; slot15 = true
		 64	[  0]	TSETV	 15	13	14	; slot13[<unknown table>.col] = slot15
		 65	[  0]	KPRI 	 14		0	; slot14 = nil
		 66	[  0]	GGET 	 15		18	; slot15 = _env["ipairs"]
		 67	[  0]	MOV  	 17		6	; slot17 = slot6
		 68	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(slot16)
		 69	[  0]	JMP  	 18		11	; 	goto 81
		 70	[  0]	TGETB	 20	19	2	; slot20 = slot19[2]
		 71	[  0]	TGETV	 20	13	20	; slot20 = slot13[slot20]
		 72	[  0]	IST  	   		20	; if slot20
		 73	[  0]	JMP  	 20		7	; 	goto 81
		 74	[  0]	TDUP 	 20		9	; slot20 = copy table#k9
		 75	[  0]	TGETB	 21	19	1	; slot21 = slot19[1]
		 76	[  0]	TSETS	 21	20	12	; slot20.row = slot21
		 77	[  0]	TGETB	 21	19	2	; slot21 = slot19[2]
		 78	[  0]	TSETS	 21	20	11	; slot20.col = slot21
		 79	[  0]	MOV  	 14		20	; slot14 = slot20
		 80	[  0]	JMP  	 15		2	; 	goto 83
		 81	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, slot16, slot17; slot18, slot19 = ipairs(slot16, slot17)
		 82	[  0]	ITERL	 18		-13	; slot17 = slot18; if slot18 != nil goto 70
		 83	[  0]	ISF  	   		14	; if not slot14
		 84	[  0]	JMP  	 15		12	; 	goto 97
		 85	[  0]	GGET 	 15		19	; slot15 = _env["table"]
		 86	[  0]	TGETS	 15	15	14	; slot15 = table.insert
		 87	[  0]	MOV  	 17		1	; slot17 = slot1
		 88	[  0]	TDUP 	 18		8	; slot18 = copy table#k8
		 89	[  0]	TSETS	  5	18	7	; slot18.lineId = slot5
		 90	[  0]	TSETS	 11	18	6	; slot18.symbol = slot11
		 91	[  0]	TSETS	  6	18	5	; slot18.cells = slot6
		 92	[  0]	TSETS	 12	18	4	; slot18.lockedCells = slot12
		 93	[  0]	TSETS	 14	18	3	; slot18.rerollCell = slot14
		 94	[  0]	TGETS	 19	14	11	; slot19 = slot14.col
		 95	[  0]	TSETS	 19	18	2	; slot18.rerollCol = <unknown table>.col
		 96	[  0]	CALL 	 15	1	3	;  = table.insert(slot16, slot17)
		 97	[  0]	ITERN	 11	3	3	; slot11, slot12, slot13 = pairs, slot9, slot10; slot11, slot12 = pairs(slot9, slot10)
		 98	[  0]	ITERL	 11		-46	; slot10 = slot11; if slot11 != nil goto 53
		 99	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown"; slot5, slot6 = slot2(slot3, uv0"unknown")
		100	[  0]	ITERL	  5		-89	; uv0"unknown" = slot5; if slot5 != nil goto 12
		101	[  0]	GGET 	  2		19	; slot2 = _env["table"]
		102	[  0]	TGETS	  2	2	1	; slot2 = table.sort
		103	[  0]	MOV  	  4		1	; slot4 = slot1
		104	[  0]	FNEW 	  5		0	; N/A:0-0: 2 args, 0 upvalues, 4 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	TGETS	  2	0	0	; slot2 = slot0.lineId
			  2	[  0]	IST  	   		2	; if <unknown table>.lineId
			  3	[  0]	JMP  	  3		1	; 	goto 5
			  4	[  0]	KSHORT	  2		0	; slot2 = 0
			  5	[  0]	TGETS	  3	1	0	; slot3 = slot1.lineId
			  6	[  0]	IST  	   		3	; if <unknown table>.lineId
			  7	[  0]	JMP  	  4		1	; 	goto 9
			  8	[  0]	KSHORT	  3		0	; slot3 = 0
			  9	[  0]	ISLT 	  2		3	; if slot2 < slot3
			 10	[  0]	JMP  	  2		2	; 	goto 13
			 11	[  0]	KPRI 	  2		1	; slot2 = false
			 12	[  0]	JMP  	  3		1	; 	goto 14
			 13	[  0]	KPRI 	  2		2	; slot2 = true
			 14	[  0]	RET1 	  2		2	; return slot2
		105	[  0]	CALL 	  2	1	3	;  = table.sort(slot3, slot4)
		106	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 107
		107	[  0]	RET1 	  1		2	; return slot1
		108	[  0]	RET1 	  1		2	; return slot1
	348	[  0]	TSETS	 60	2	29	; slot2.getLuckyNailCandidates = slot60
	349	[  0]	FNEW 	 60		26	; N/A:0-0: 2 args, 7 upvalues, 23 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			[col] = 3,
			]
		
		
		ktable#2 = [
			[newWinsOnly] = true,
			]
		
		
		ktable#8 = [
			]
		
		
		ktable#12 = [
			]
		
		
		ktable#30 = [
			[allowPostEvaluateChain] = true,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		3	; 	goto 6
		  3	[  0]	TGETS	  2	0	48	; slot2 = slot0.checked
		  4	[  0]	IST  	   		2	; if <unknown table>.checked
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		1	; slot2 = false
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	ISF  	   		1	; if not slot1
		  9	[  0]	JMP  	  2		3	; 	goto 13
		 10	[  0]	TGETS	  2	1	47	; slot2 = slot1.grid
		 11	[  0]	IST  	   		2	; if <unknown table>.grid
		 12	[  0]	JMP  	  2		2	; 	goto 15
		 13	[  0]	KPRI 	  2		1	; slot2 = false
		 14	[  0]	RET1 	  2		2	; return slot2
		 15	[  0]	GGET 	  2		46	; slot2 = _env["tonumber"]
		 16	[  0]	TGETS	  4	1	45	; slot4 = slot1.waveId
		 17	[  0]	IST  	   		4	; if <unknown table>.waveId
		 18	[  0]	JMP  	  5		1	; 	goto 20
		 19	[  0]	KSHORT	  4		0	; slot4 = 0
		 20	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 21	[  0]	IST  	   		2	; if slot2
		 22	[  0]	JMP  	  3		1	; 	goto 24
		 23	[  0]	KSHORT	  2		0	; slot2 = 0
		 24	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 25	[  0]	MOV  	  5		2	; slot5 = slot2
		 26	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 27	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 28	[  0]	TGETS	  3	3	44	; slot3 = uv1"unknown".prepareGreedyTailOutcome
		 29	[  0]	MOV  	  5		0	; slot5 = slot0
		 30	[  0]	MOV  	  6		1	; slot6 = slot1
		 31	[  0]	CALL 	  3	2	3	; slot3 = uv1"unknown".prepareGreedyTailOutcome(slot4, slot5)
		 32	[  0]	ISF  	   		3	; if not slot3
		 33	[  0]	JMP  	  4		1	; 	goto 35
		 34	[  0]	RET1 	  3		2	; return slot3
		 35	[  0]	TGETS	  4	0	43	; slot4 = slot0.won
		 36	[  0]	ISNEP	  4		2	; if <unknown table>.won ~= true
		 37	[  0]	JMP  	  4		5	; 	goto 43
		 38	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 39	[  0]	TGETS	  4	4	42	; slot4 = uv1"unknown".applyWinPostEvaluate
		 40	[  0]	MOV  	  6		0	; slot6 = slot0
		 41	[  0]	MOV  	  7		1	; slot7 = slot1
		 42	[  0]	CALLT	  4		3	; return uv1"unknown".applyWinPostEvaluate(slot5, slot6)
		 43	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 44	[  0]	MOV  	  6		2	; slot6 = slot2
		 45	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv2"unknown"(slot5)
		 46	[  0]	JMP  	  7		114	; 	goto 161
		 47	[  0]	TGETS	  8	1	41	; slot8 = slot1.isFirstSpin
		 48	[  0]	ISEQP	  8		2	; if <unknown table>.isFirstSpin == true
		 49	[  0]	JMP  	  8		8	; 	goto 58
		 50	[  0]	TGETS	  8	1	41	; slot8 = slot1.isFirstSpin
		 51	[  0]	ISNEP	  8		0	; if <unknown table>.isFirstSpin ~= nil
		 52	[  0]	JMP  	  8		3	; 	goto 56
		 53	[  0]	TGETS	  8	1	40	; slot8 = slot1.isFirstPaidSpin
		 54	[  0]	ISEQP	  8		2	; if <unknown table>.isFirstPaidSpin == true
		 55	[  0]	JMP  	  8		2	; 	goto 58
		 56	[  0]	KPRI 	  8		1	; slot8 = false
		 57	[  0]	JMP  	  9		1	; 	goto 59
		 58	[  0]	KPRI 	  8		2	; slot8 = true
		 59	[  0]	TGETS	  9	7	39	; slot9 = slot7.key
		 60	[  0]	ISNES	  9		38	; if <unknown table>.key ~= "TwistedBell"
		 61	[  0]	JMP  	  9		99	; 	goto 161
		 62	[  0]	ISF  	   		8	; if not slot8
		 63	[  0]	JMP  	  9		97	; 	goto 161
		 64	[  0]	TGETS	  9	7	37	; slot9 = slot7._twistedBellUsedWave
		 65	[  0]	IST  	   		9	; if <unknown table>._twistedBellUsedWave
		 66	[  0]	JMP  	 10		1	; 	goto 68
		 67	[  0]	KSHORT	  9		65535	; slot9 = 65535
		 68	[  0]	ISEQV	  9		2	; if slot9 == slot2
		 69	[  0]	JMP  	  9		91	; 	goto 161
		 70	[  0]	TSETS	  2	7	37	; slot7._twistedBellUsedWave = slot2
		 71	[  0]	KPRI 	  9		0	; slot9 = nil
		 72	[  0]	TSETS	  9	7	36	; slot7._uiTrigger = slot9
		 73	[  0]	KPRI 	  9		0	; slot9 = nil
		 74	[  0]	TSETS	  9	7	35	; slot7._uiActiveThisSpin = slot9
		 75	[  0]	KPRI 	  9		0	; slot9 = nil
		 76	[  0]	TSETS	  9	7	34	; slot7._uiSustainSpin = slot9
		 77	[  0]	KPRI 	  9		0	; slot9 = nil
		 78	[  0]	TSETS	  9	7	33	; slot7._uiPulseT0 = slot9
		 79	[  0]	KPRI 	  9		0	; slot9 = nil
		 80	[  0]	TSETS	  9	7	32	; slot7._uiPulseDur = slot9
		 81	[  0]	TNEW 	  9		4	; slot9 = new table( array: 4, dict: 1)
		 82	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 83	[  0]	TGETS	 12	1	47	; slot12 = slot1.grid
		 84	[  0]	KSHORT	 13		1	; slot13 = 1
		 85	[  0]	CALL 	 10	2	3	; slot10 = uv3"unknown"(slot11, <unknown table>.grid)
		 86	[  0]	TSETB	 10	9	1	; slot9[1] = uv3"unknown"
		 87	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 88	[  0]	TGETS	 12	1	47	; slot12 = slot1.grid
		 89	[  0]	KSHORT	 13		2	; slot13 = 2
		 90	[  0]	CALL 	 10	2	3	; slot10 = uv3"unknown"(slot11, <unknown table>.grid)
		 91	[  0]	TSETB	 10	9	2	; slot9[2] = uv3"unknown"
		 92	[  0]	UGET 	 10		3	; slot10 = uv3"unknwon"
		 93	[  0]	TGETS	 12	1	47	; slot12 = slot1.grid
		 94	[  0]	KSHORT	 13		3	; slot13 = 3
		 95	[  0]	CALL 	 10	0	3	; MULTRES = uv3"unknown"(slot11, <unknown table>.grid)
		 96	[  0]	TSETM	 10		0	; for i = 0, MULTRES, 1 do slot9[0 + i] = slot(10 + i)
		 97	[  0]	UGET 	 10		4	; slot10 = uv4"unknwon"
		 98	[  0]	MOV  	 12		9	; slot12 = slot9
		 99	[  0]	MOV  	 13		1	; slot13 = slot1
		100	[  0]	CALL 	 10	1	3	;  = uv4"unknown"(slot11, slot12)
		101	[  0]	TGETS	 10	1	31	; slot10 = slot1.deferAnimation
		102	[  0]	ISNEP	 10		2	; if <unknown table>.deferAnimation ~= true
		103	[  0]	JMP  	 10		6	; 	goto 110
		104	[  0]	TDUP 	 10		30	; slot10 = copy table#k30
		105	[  0]	TGETS	 11	7	39	; slot11 = slot7.key
		106	[  0]	TSETS	 11	10	39	; slot10.key = <unknown table>.key
		107	[  0]	TSETS	  7	10	29	; slot10.inst = slot7
		108	[  0]	TSETS	  9	10	28	; slot10.reels = slot9
		109	[  0]	RET1 	 10		2	; return slot10
		110	[  0]	TGETS	 10	1	47	; slot10 = slot1.grid
		111	[  0]	GGET 	 11		27	; slot11 = _env["ipairs"]
		112	[  0]	MOV  	 13		9	; slot13 = slot9
		113	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(slot12)
		114	[  0]	JMP  	 14		15	; 	goto 130
		115	[  0]	TGETS	 16	15	26	; slot16 = slot15.col
		116	[  0]	KSHORT	 17		1	; slot17 = 1
		117	[  0]	KSHORT	 18		3	; slot18 = 3
		118	[  0]	KSHORT	 19		1	; slot19 = 1
		119	[  0]	FORI 	 17		10	; for slot20 = slot17,slot18,slot19 else goto 130
		120	[  0]	TGETV	 21	10	20	; slot21 = <unknown table>.grid[slot20]
		121	[  0]	IST  	   		21	; if slot21
		122	[  0]	JMP  	 22		1	; 	goto 124
		123	[  0]	TNEW 	 21		0	; slot21 = new table( array: 0, dict: 1)
		124	[  0]	TSETV	 21	10	20	; <unknown table>.grid[slot20] = slot21
		125	[  0]	TGETV	 21	10	20	; slot21 = <unknown table>.grid[slot20]
		126	[  0]	TGETS	 22	15	25	; slot22 = slot15.targetFinalSymbols
		127	[  0]	TGETV	 22	22	20	; slot22 = <unknown table>.targetFinalSymbols[slot20]
		128	[  0]	TSETV	 22	21	16	; slot21[<unknown table>.col] = slot22
		129	[  0]	FORL 	 17		-10	; slot20 = slot20 + slot19; if cmp(slot20, sign slot19,  slot18) goto 120
		130	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, slot12, slot13; slot14, slot15 = ipairs(slot12, slot13)
		131	[  0]	ITERL	 14		-17	; slot13 = slot14; if slot14 != nil goto 115
		132	[  0]	UGET 	 11		5	; slot11 = uv5"unknwon"
		133	[  0]	MOV  	 13		10	; slot13 = <unknown table>.grid
		134	[  0]	CALL 	 11	3	2	; slot11, slot12 = uv5"unknown"(slot12)
		135	[  0]	KPRI 	 13		2	; slot13 = true
		136	[  0]	TSETS	 13	0	48	; slot0.checked = slot13
		137	[  0]	LEN  	 13		11	; slot13 = #uv5"unknown"
		138	[  0]	KSHORT	 14		0	; slot14 = 0
		139	[  0]	ISLT 	 14		13	; if slot14 < slot13
		140	[  0]	JMP  	 13		2	; 	goto 143
		141	[  0]	KPRI 	 13		1	; slot13 = false
		142	[  0]	JMP  	 14		1	; 	goto 144
		143	[  0]	KPRI 	 13		2	; slot13 = true
		144	[  0]	TSETS	 13	0	43	; slot0.won = slot13
		145	[  0]	TSETS	 11	0	24	; slot0.winningLines = uv5"unknown"
		146	[  0]	TSETS	 12	0	23	; slot0.symbol = slot12
		147	[  0]	KPRI 	 13		0	; slot13 = nil
		148	[  0]	TSETS	 13	0	22	; slot0.newWinningLines = slot13
		149	[  0]	KPRI 	 13		0	; slot13 = nil
		150	[  0]	TSETS	 13	0	21	; slot0.visibleWinningLines = slot13
		151	[  0]	KPRI 	 13		1	; slot13 = false
		152	[  0]	TSETS	 13	0	20	; slot0.highlightActive = slot13
		153	[  0]	KSHORT	 13		0	; slot13 = 0
		154	[  0]	TSETS	 13	0	19	; slot0.ht = slot13
		155	[  0]	KPRI 	 13		1	; slot13 = false
		156	[  0]	TSETS	 13	0	18	; slot0.fxStarted = slot13
		157	[  0]	KPRI 	 13		2	; slot13 = true
		158	[  0]	TSETS	 13	0	17	; slot0._twistedBellRerolled = slot13
		159	[  0]	KPRI 	 13		2	; slot13 = true
		160	[  0]	RET1 	 13		2	; return slot13
		161	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv2"unknown", slot5, slot6; slot7 = uv2"unknown"(slot5, slot6)
		162	[  0]	ITERL	  7		-116	; slot6 = slot7; if slot7 != nil goto 47
		163	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		164	[  0]	MOV  	  6		2	; slot6 = slot2
		165	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv2"unknown"(slot5)
		166	[  0]	JMP  	  7		29	; 	goto 196
		167	[  0]	TGETS	  8	7	39	; slot8 = slot7.key
		168	[  0]	ISNES	  8		16	; if <unknown table>.key ~= "LuckyNail"
		169	[  0]	JMP  	  8		26	; 	goto 196
		170	[  0]	TGETS	  8	1	15	; slot8 = slot1.isPlayerSpin
		171	[  0]	ISEQP	  8		1	; if <unknown table>.isPlayerSpin == false
		172	[  0]	JMP  	  8		23	; 	goto 196
		173	[  0]	TGETS	  8	7	14	; slot8 = slot7._luckyNailUsedWave
		174	[  0]	IST  	   		8	; if <unknown table>._luckyNailUsedWave
		175	[  0]	JMP  	  9		1	; 	goto 177
		176	[  0]	KSHORT	  8		65535	; slot8 = 65535
		177	[  0]	ISEQV	  8		2	; if slot8 == slot2
		178	[  0]	JMP  	  8		17	; 	goto 196
		179	[  0]	UGET 	  8		1	; slot8 = uv1"unknwon"
		180	[  0]	TGETS	  8	8	13	; slot8 = uv1"unknown".getLuckyNailCandidates
		181	[  0]	TGETS	 10	1	47	; slot10 = slot1.grid
		182	[  0]	CALL 	  8	2	2	; slot8 = uv1"unknown".getLuckyNailCandidates(slot9)
		183	[  0]	LEN  	  9		8	; slot9 = #uv1"unknown".getLuckyNailCandidates
		184	[  0]	KSHORT	 10		0	; slot10 = 0
		185	[  0]	ISGE 	 10		9	; if slot10 >= slot9
		186	[  0]	JMP  	  9		9	; 	goto 196
		187	[  0]	TSETS	  2	7	14	; slot7._luckyNailUsedWave = slot2
		188	[  0]	KPRI 	  9		2	; slot9 = true
		189	[  0]	TSETS	  9	7	36	; slot7._uiTrigger = slot9
		190	[  0]	TDUP 	  9		12	; slot9 = copy table#k12
		191	[  0]	TGETS	 10	7	39	; slot10 = slot7.key
		192	[  0]	TSETS	 10	9	39	; slot9.key = <unknown table>.key
		193	[  0]	TSETS	  7	9	29	; slot9.inst = slot7
		194	[  0]	TSETS	  8	9	11	; slot9.candidates = uv1"unknown".getLuckyNailCandidates
		195	[  0]	RET1 	  9		2	; return slot9
		196	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv2"unknown", slot5, slot6; slot7 = uv2"unknown"(slot5, slot6)
		197	[  0]	ITERL	  7		-31	; slot6 = slot7; if slot7 != nil goto 167
		198	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		199	[  0]	MOV  	  6		2	; slot6 = slot2
		200	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv2"unknown"(slot5)
		201	[  0]	JMP  	  7		75	; 	goto 277
		202	[  0]	TGETS	  8	7	39	; slot8 = slot7.key
		203	[  0]	ISNES	  8		10	; if <unknown table>.key ~= "Copycap"
		204	[  0]	JMP  	  8		72	; 	goto 277
		205	[  0]	TGETS	  8	7	9	; slot8 = slot7._copycapUsedWave
		206	[  0]	IST  	   		8	; if <unknown table>._copycapUsedWave
		207	[  0]	JMP  	  9		1	; 	goto 209
		208	[  0]	KSHORT	  8		65535	; slot8 = 65535
		209	[  0]	ISEQV	  8		2	; if slot8 == slot2
		210	[  0]	JMP  	  8		66	; 	goto 277
		211	[  0]	UGET 	  8		6	; slot8 = uv6"unknwon"
		212	[  0]	TGETS	 10	1	47	; slot10 = slot1.grid
		213	[  0]	CALL 	  8	2	2	; slot8 = uv6"unknown"(slot9)
		214	[  0]	ISF  	   		8	; if not uv6"unknown"
		215	[  0]	JMP  	  9		61	; 	goto 277
		216	[  0]	TSETS	  2	7	9	; slot7._copycapUsedWave = slot2
		217	[  0]	TGETS	  9	1	31	; slot9 = slot1.deferAnimation
		218	[  0]	ISNEP	  9		2	; if <unknown table>.deferAnimation ~= true
		219	[  0]	JMP  	  9		11	; 	goto 231
		220	[  0]	TDUP 	  9		8	; slot9 = copy table#k8
		221	[  0]	TGETS	 10	7	39	; slot10 = slot7.key
		222	[  0]	TSETS	 10	9	39	; slot9.key = <unknown table>.key
		223	[  0]	TSETS	  7	9	29	; slot9.inst = slot7
		224	[  0]	TGETS	 10	8	26	; slot10 = uv6"unknown".col
		225	[  0]	TSETS	 10	9	26	; slot9.col = uv6"unknown".col
		226	[  0]	TGETS	 10	8	7	; slot10 = uv6"unknown".row
		227	[  0]	TSETS	 10	9	7	; slot9.row = uv6"unknown".row
		228	[  0]	TGETS	 10	8	6	; slot10 = uv6"unknown".newSymbol
		229	[  0]	TSETS	 10	9	6	; slot9.newSymbol = uv6"unknown".newSymbol
		230	[  0]	RET1 	  9		2	; return slot9
		231	[  0]	TGETS	  9	1	47	; slot9 = slot1.grid
		232	[  0]	TGETS	 10	8	7	; slot10 = uv6"unknown".row
		233	[  0]	TGETS	 11	1	47	; slot11 = slot1.grid
		234	[  0]	TGETS	 12	8	7	; slot12 = uv6"unknown".row
		235	[  0]	TGETV	 11	11	12	; slot11 = <unknown table>.grid[uv6"unknown".row]
		236	[  0]	IST  	   		11	; if slot11
		237	[  0]	JMP  	 12		1	; 	goto 239
		238	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		239	[  0]	TSETV	 11	9	10	; <unknown table>.grid[uv6"unknown".row] = slot11
		240	[  0]	TGETS	  9	1	47	; slot9 = slot1.grid
		241	[  0]	TGETS	 10	8	7	; slot10 = uv6"unknown".row
		242	[  0]	TGETV	  9	9	10	; slot9 = <unknown table>.grid[uv6"unknown".row]
		243	[  0]	TGETS	 10	8	26	; slot10 = uv6"unknown".col
		244	[  0]	TGETS	 11	8	6	; slot11 = uv6"unknown".newSymbol
		245	[  0]	TSETV	 11	9	10	; slot9[uv6"unknown".col] = uv6"unknown".newSymbol
		246	[  0]	UGET 	  9		5	; slot9 = uv5"unknwon"
		247	[  0]	TGETS	 11	1	47	; slot11 = slot1.grid
		248	[  0]	CALL 	  9	3	2	; slot9, slot10 = uv5"unknown"(uv6"unknown".col)
		249	[  0]	KPRI 	 11		2	; slot11 = true
		250	[  0]	TSETS	 11	0	48	; slot0.checked = slot11
		251	[  0]	LEN  	 11		9	; slot11 = #uv5"unknown"
		252	[  0]	KSHORT	 12		0	; slot12 = 0
		253	[  0]	ISLT 	 12		11	; if slot12 < slot11
		254	[  0]	JMP  	 11		2	; 	goto 257
		255	[  0]	KPRI 	 11		1	; slot11 = false
		256	[  0]	JMP  	 12		1	; 	goto 258
		257	[  0]	KPRI 	 11		2	; slot11 = true
		258	[  0]	TSETS	 11	0	43	; slot0.won = slot11
		259	[  0]	TSETS	  9	0	24	; slot0.winningLines = uv5"unknown"
		260	[  0]	TSETS	 10	0	23	; slot0.symbol = uv6"unknown".col
		261	[  0]	KPRI 	 11		0	; slot11 = nil
		262	[  0]	TSETS	 11	0	22	; slot0.newWinningLines = slot11
		263	[  0]	KPRI 	 11		0	; slot11 = nil
		264	[  0]	TSETS	 11	0	21	; slot0.visibleWinningLines = slot11
		265	[  0]	KPRI 	 11		1	; slot11 = false
		266	[  0]	TSETS	 11	0	20	; slot0.highlightActive = slot11
		267	[  0]	KSHORT	 11		0	; slot11 = 0
		268	[  0]	TSETS	 11	0	19	; slot0.ht = slot11
		269	[  0]	KPRI 	 11		1	; slot11 = false
		270	[  0]	TSETS	 11	0	18	; slot0.fxStarted = slot11
		271	[  0]	KPRI 	 11		2	; slot11 = true
		272	[  0]	TSETS	 11	0	5	; slot0._copycapApplied = slot11
		273	[  0]	KPRI 	 11		2	; slot11 = true
		274	[  0]	TSETS	 11	7	36	; slot7._uiTrigger = slot11
		275	[  0]	KPRI 	 11		2	; slot11 = true
		276	[  0]	RET1 	 11		2	; return slot11
		277	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv2"unknown", slot5, slot6; slot7 = uv2"unknown"(slot5, slot6)
		278	[  0]	ITERL	  7		-77	; slot6 = slot7; if slot7 != nil goto 202
		279	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		280	[  0]	MOV  	  6		2	; slot6 = slot2
		281	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv2"unknown"(slot5)
		282	[  0]	JMP  	  7		108	; 	goto 391
		283	[  0]	TGETS	  8	1	41	; slot8 = slot1.isFirstSpin
		284	[  0]	ISEQP	  8		2	; if <unknown table>.isFirstSpin == true
		285	[  0]	JMP  	  8		8	; 	goto 294
		286	[  0]	TGETS	  8	1	41	; slot8 = slot1.isFirstSpin
		287	[  0]	ISNEP	  8		0	; if <unknown table>.isFirstSpin ~= nil
		288	[  0]	JMP  	  8		3	; 	goto 292
		289	[  0]	TGETS	  8	1	40	; slot8 = slot1.isFirstPaidSpin
		290	[  0]	ISEQP	  8		2	; if <unknown table>.isFirstPaidSpin == true
		291	[  0]	JMP  	  8		2	; 	goto 294
		292	[  0]	KPRI 	  8		1	; slot8 = false
		293	[  0]	JMP  	  9		1	; 	goto 295
		294	[  0]	KPRI 	  8		2	; slot8 = true
		295	[  0]	TGETS	  9	7	39	; slot9 = slot7.key
		296	[  0]	ISNES	  9		4	; if <unknown table>.key ~= "TwinCherries"
		297	[  0]	JMP  	  9		93	; 	goto 391
		298	[  0]	ISF  	   		8	; if not slot8
		299	[  0]	JMP  	  9		91	; 	goto 391
		300	[  0]	TGETS	  9	7	3	; slot9 = slot7._twinCherriesUsedWave
		301	[  0]	IST  	   		9	; if <unknown table>._twinCherriesUsedWave
		302	[  0]	JMP  	 10		1	; 	goto 304
		303	[  0]	KSHORT	  9		65535	; slot9 = 65535
		304	[  0]	ISEQV	  9		2	; if slot9 == slot2
		305	[  0]	JMP  	  9		85	; 	goto 391
		306	[  0]	TSETS	  2	7	3	; slot7._twinCherriesUsedWave = slot2
		307	[  0]	KPRI 	  9		0	; slot9 = nil
		308	[  0]	TSETS	  9	7	36	; slot7._uiTrigger = slot9
		309	[  0]	KPRI 	  9		0	; slot9 = nil
		310	[  0]	TSETS	  9	7	35	; slot7._uiActiveThisSpin = slot9
		311	[  0]	KPRI 	  9		0	; slot9 = nil
		312	[  0]	TSETS	  9	7	34	; slot7._uiSustainSpin = slot9
		313	[  0]	KPRI 	  9		0	; slot9 = nil
		314	[  0]	TSETS	  9	7	33	; slot7._uiPulseT0 = slot9
		315	[  0]	KPRI 	  9		0	; slot9 = nil
		316	[  0]	TSETS	  9	7	32	; slot7._uiPulseDur = slot9
		317	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		318	[  0]	KSHORT	 10		1	; slot10 = 1
		319	[  0]	KSHORT	 11		3	; slot11 = 3
		320	[  0]	KSHORT	 12		1	; slot12 = 1
		321	[  0]	FORI 	 10		12	; for slot13 = slot10,slot11,slot12 else goto 334
		322	[  0]	TGETS	 14	1	47	; slot14 = slot1.grid
		323	[  0]	TGETV	 14	14	13	; slot14 = <unknown table>.grid[slot13]
		324	[  0]	ISF  	   		14	; if not slot14
		325	[  0]	JMP  	 15		5	; 	goto 331
		326	[  0]	TGETS	 14	1	47	; slot14 = slot1.grid
		327	[  0]	TGETV	 14	14	13	; slot14 = <unknown table>.grid[slot13]
		328	[  0]	TGETB	 14	14	1	; slot14 = slot14[1]
		329	[  0]	IST  	   		14	; if slot14
		330	[  0]	JMP  	 15		1	; 	goto 332
		331	[  0]	KPRI 	 14		0	; slot14 = nil
		332	[  0]	TSETV	 14	9	13	; slot9[slot13] = slot14
		333	[  0]	FORL 	 10		-12	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 322
		334	[  0]	TGETS	 10	1	31	; slot10 = slot1.deferAnimation
		335	[  0]	ISNEP	 10		2	; if <unknown table>.deferAnimation ~= true
		336	[  0]	JMP  	 10		10	; 	goto 347
		337	[  0]	TDUP 	 10		2	; slot10 = copy table#k2
		338	[  0]	TGETS	 11	7	39	; slot11 = slot7.key
		339	[  0]	TSETS	 11	10	39	; slot10.key = <unknown table>.key
		340	[  0]	TSETS	  7	10	29	; slot10.inst = slot7
		341	[  0]	TNEW 	 11		3	; slot11 = new table( array: 3, dict: 1)
		342	[  0]	TDUP 	 12		1	; slot12 = copy table#k1
		343	[  0]	TSETS	  9	12	25	; slot12.targetFinalSymbols = slot9
		344	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		345	[  0]	TSETS	 11	10	28	; slot10.reels = slot11
		346	[  0]	RET1 	 10		2	; return slot10
		347	[  0]	KSHORT	 10		1	; slot10 = 1
		348	[  0]	KSHORT	 11		3	; slot11 = 3
		349	[  0]	KSHORT	 12		1	; slot12 = 1
		350	[  0]	FORI 	 10		12	; for slot13 = slot10,slot11,slot12 else goto 363
		351	[  0]	TGETS	 14	1	47	; slot14 = slot1.grid
		352	[  0]	TGETS	 15	1	47	; slot15 = slot1.grid
		353	[  0]	TGETV	 15	15	13	; slot15 = <unknown table>.grid[slot13]
		354	[  0]	IST  	   		15	; if slot15
		355	[  0]	JMP  	 16		1	; 	goto 357
		356	[  0]	TNEW 	 15		0	; slot15 = new table( array: 0, dict: 1)
		357	[  0]	TSETV	 15	14	13	; <unknown table>.grid[slot13] = slot15
		358	[  0]	TGETS	 14	1	47	; slot14 = slot1.grid
		359	[  0]	TGETV	 14	14	13	; slot14 = <unknown table>.grid[slot13]
		360	[  0]	TGETV	 15	9	13	; slot15 = slot9[slot13]
		361	[  0]	TSETB	 15	14	3	; slot14[3] = slot15
		362	[  0]	FORL 	 10		-12	; slot13 = slot13 + slot12; if cmp(slot13, sign slot12,  slot11) goto 351
		363	[  0]	UGET 	 10		5	; slot10 = uv5"unknwon"
		364	[  0]	TGETS	 12	1	47	; slot12 = slot1.grid
		365	[  0]	CALL 	 10	3	2	; slot10, slot11 = uv5"unknown"(slot11)
		366	[  0]	KPRI 	 12		2	; slot12 = true
		367	[  0]	TSETS	 12	0	48	; slot0.checked = slot12
		368	[  0]	LEN  	 12		10	; slot12 = #uv5"unknown"
		369	[  0]	KSHORT	 13		0	; slot13 = 0
		370	[  0]	ISLT 	 13		12	; if slot13 < slot12
		371	[  0]	JMP  	 12		2	; 	goto 374
		372	[  0]	KPRI 	 12		1	; slot12 = false
		373	[  0]	JMP  	 13		1	; 	goto 375
		374	[  0]	KPRI 	 12		2	; slot12 = true
		375	[  0]	TSETS	 12	0	43	; slot0.won = slot12
		376	[  0]	TSETS	 10	0	24	; slot0.winningLines = uv5"unknown"
		377	[  0]	TSETS	 11	0	23	; slot0.symbol = slot11
		378	[  0]	TSETS	 10	0	22	; slot0.newWinningLines = uv5"unknown"
		379	[  0]	KPRI 	 12		0	; slot12 = nil
		380	[  0]	TSETS	 12	0	21	; slot0.visibleWinningLines = slot12
		381	[  0]	KPRI 	 12		1	; slot12 = false
		382	[  0]	TSETS	 12	0	20	; slot0.highlightActive = slot12
		383	[  0]	KSHORT	 12		0	; slot12 = 0
		384	[  0]	TSETS	 12	0	19	; slot0.ht = slot12
		385	[  0]	KPRI 	 12		1	; slot12 = false
		386	[  0]	TSETS	 12	0	18	; slot0.fxStarted = slot12
		387	[  0]	KPRI 	 12		2	; slot12 = true
		388	[  0]	TSETS	 12	0	0	; slot0._twinCherriesApplied = slot12
		389	[  0]	KPRI 	 12		2	; slot12 = true
		390	[  0]	RET1 	 12		2	; return slot12
		391	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv2"unknown", slot5, slot6; slot7 = uv2"unknown"(slot5, slot6)
		392	[  0]	ITERL	  7		-110	; slot6 = slot7; if slot7 != nil goto 283
		393	[  0]	KPRI 	  4		1	; slot4 = false
		394	[  0]	RET1 	  4		2	; return slot4
	350	[  0]	TSETS	 60	2	27	; slot2.applyPostEvaluate = slot60
	351	[  0]	FNEW 	 60		24	; N/A:0-0: 2 args, 2 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		6	; 	goto 9
		  3	[  0]	TGETS	  2	0	12	; slot2 = slot0.checked
		  4	[  0]	ISF  	   		2	; if not <unknown table>.checked
		  5	[  0]	JMP  	  2		3	; 	goto 9
		  6	[  0]	TGETS	  2	0	11	; slot2 = slot0.won
		  7	[  0]	ISNEP	  2		2	; if <unknown table>.won ~= true
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		1	; slot2 = false
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	TGETS	  2	0	10	; slot2 = slot0._coreFinalOutcomePrepared
		 12	[  0]	ISF  	   		2	; if not <unknown table>._coreFinalOutcomePrepared
		 13	[  0]	JMP  	  3		7	; 	goto 21
		 14	[  0]	TGETS	  2	0	9	; slot2 = slot0._coreAutoReroll
		 15	[  0]	ISEQP	  2		2	; if <unknown table>._coreAutoReroll == true
		 16	[  0]	JMP  	  2		2	; 	goto 19
		 17	[  0]	KPRI 	  2		1	; slot2 = false
		 18	[  0]	JMP  	  3		1	; 	goto 20
		 19	[  0]	KPRI 	  2		2	; slot2 = true
		 20	[  0]	RET1 	  2		2	; return slot2
		 21	[  0]	KPRI 	  2		2	; slot2 = true
		 22	[  0]	TSETS	  2	0	10	; slot0._coreFinalOutcomePrepared = slot2
		 23	[  0]	GGET 	  2		8	; slot2 = _env["tonumber"]
		 24	[  0]	ISF  	   		1	; if not slot1
		 25	[  0]	JMP  	  4		3	; 	goto 29
		 26	[  0]	TGETS	  4	1	7	; slot4 = slot1.waveId
		 27	[  0]	IST  	   		4	; if <unknown table>.waveId
		 28	[  0]	JMP  	  5		1	; 	goto 30
		 29	[  0]	KSHORT	  4		0	; slot4 = 0
		 30	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 31	[  0]	IST  	   		2	; if slot2
		 32	[  0]	JMP  	  3		1	; 	goto 34
		 33	[  0]	KSHORT	  2		0	; slot2 = 0
		 34	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 35	[  0]	MOV  	  5		2	; slot5 = slot2
		 36	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 37	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 38	[  0]	MOV  	  5		2	; slot5 = slot2
		 39	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = uv1"unknown"(slot4)
		 40	[  0]	JMP  	  6		18	; 	goto 59
		 41	[  0]	TGETS	  7	6	6	; slot7 = slot6.key
		 42	[  0]	ISNES	  7		5	; if <unknown table>.key ~= "EntropySpoon"
		 43	[  0]	JMP  	  7		15	; 	goto 59
		 44	[  0]	GGET 	  7		4	; slot7 = _env["love"]
		 45	[  0]	TGETS	  7	7	3	; slot7 = love.math
		 46	[  0]	TGETS	  7	7	2	; slot7 = love.math.random
		 47	[  0]	CALL 	  7	2	1	; slot7 = love.math.random()
		 48	[  0]	KNUM 	  8		0	; slot8 = 0.1
		 49	[  0]	ISGE 	  7		8	; if love.math.random >= slot8
		 50	[  0]	JMP  	  7		8	; 	goto 59
		 51	[  0]	KPRI 	  7		2	; slot7 = true
		 52	[  0]	TSETS	  7	0	9	; slot0._coreAutoReroll = slot7
		 53	[  0]	KPRI 	  7		2	; slot7 = true
		 54	[  0]	TSETS	  7	6	1	; slot6._uiTrigger = slot7
		 55	[  0]	KPRI 	  7		2	; slot7 = true
		 56	[  0]	TSETS	  7	6	0	; slot6._entropySustainNext = slot7
		 57	[  0]	KPRI 	  7		2	; slot7 = true
		 58	[  0]	RET1 	  7		2	; return slot7
		 59	[  0]	ITERC	  6	2	3	; slot6, slot7, slot8 = uv1"unknown", slot4, slot5; slot6 = uv1"unknown"(slot4, slot5)
		 60	[  0]	ITERL	  6		-20	; slot5 = slot6; if slot6 != nil goto 41
		 61	[  0]	KPRI 	  3		1	; slot3 = false
		 62	[  0]	RET1 	  3		2	; return slot3
	352	[  0]	TSETS	 60	2	25	; slot2.prepareFinalOutcome = slot60
	353	[  0]	KPRI 	 60		0	; slot60 = nil
	354	[  0]	FNEW 	 61		22	; N/A:0-0: 2 args, 3 upvalues, 18 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		20	; slot2 = _env["tonumber"]
		  2	[  0]	ISF  	   		1	; if not slot1
		  3	[  0]	JMP  	  4		3	; 	goto 7
		  4	[  0]	TGETS	  4	1	19	; slot4 = slot1.waveId
		  5	[  0]	IST  	   		4	; if <unknown table>.waveId
		  6	[  0]	JMP  	  5		1	; 	goto 8
		  7	[  0]	KSHORT	  4		0	; slot4 = 0
		  8	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		  9	[  0]	IST  	   		2	; if slot2
		 10	[  0]	JMP  	  3		1	; 	goto 12
		 11	[  0]	KSHORT	  2		0	; slot2 = 0
		 12	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 13	[  0]	MOV  	  5		2	; slot5 = slot2
		 14	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 15	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		 16	[  0]	JMP  	  3		6	; 	goto 23
		 17	[  0]	TGETS	  3	0	18	; slot3 = slot0.won
		 18	[  0]	ISEQP	  3		2	; if <unknown table>.won == true
		 19	[  0]	JMP  	  3		2	; 	goto 22
		 20	[  0]	KPRI 	  3		1	; slot3 = false
		 21	[  0]	JMP  	  4		1	; 	goto 23
		 22	[  0]	KPRI 	  3		2	; slot3 = true
		 23	[  0]	KPRI 	  4		0	; slot4 = nil
		 24	[  0]	ISF  	   		1	; if not slot1
		 25	[  0]	JMP  	  5		3	; 	goto 29
		 26	[  0]	TGETS	  5	1	17	; slot5 = slot1.isReboundAxisFollowup
		 27	[  0]	IST  	   		5	; if <unknown table>.isReboundAxisFollowup
		 28	[  0]	JMP  	  5		47	; 	goto 76
		 29	[  0]	GGET 	  5		16	; slot5 = _env["math"]
		 30	[  0]	TGETS	  5	5	15	; slot5 = math.floor
		 31	[  0]	GGET 	  7		20	; slot7 = _env["tonumber"]
		 32	[  0]	ISF  	   		1	; if not slot1
		 33	[  0]	JMP  	  9		3	; 	goto 37
		 34	[  0]	TGETS	  9	1	14	; slot9 = slot1.nudgeCol
		 35	[  0]	IST  	   		9	; if <unknown table>.nudgeCol
		 36	[  0]	JMP  	 10		1	; 	goto 38
		 37	[  0]	KSHORT	  9		0	; slot9 = 0
		 38	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 39	[  0]	IST  	   		7	; if tonumber
		 40	[  0]	JMP  	  8		1	; 	goto 42
		 41	[  0]	KSHORT	  7		0	; slot7 = 0
		 42	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 43	[  0]	KSHORT	  6		1	; slot6 = 1
		 44	[  0]	ISGT 	  6		5	; if slot6 > math.floor
		 45	[  0]	JMP  	  6		30	; 	goto 76
		 46	[  0]	KSHORT	  6		3	; slot6 = 3
		 47	[  0]	ISGT 	  5		6	; if math.floor > slot6
		 48	[  0]	JMP  	  6		27	; 	goto 76
		 49	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 50	[  0]	MOV  	  8		2	; slot8 = slot2
		 51	[  0]	CALL 	  6	4	2	; slot6, slot7, slot8 = uv1"unknown"(slot7)
		 52	[  0]	JMP  	  9		21	; 	goto 74
		 53	[  0]	TGETS	 10	9	13	; slot10 = slot9.key
		 54	[  0]	ISNES	 10		12	; if <unknown table>.key ~= "ReboundAxis"
		 55	[  0]	JMP  	 10		18	; 	goto 74
		 56	[  0]	TGETS	 10	9	11	; slot10 = slot9._reboundAxisUsedWave
		 57	[  0]	IST  	   		10	; if <unknown table>._reboundAxisUsedWave
		 58	[  0]	JMP  	 11		1	; 	goto 60
		 59	[  0]	KSHORT	 10		65535	; slot10 = 65535
		 60	[  0]	ISEQV	 10		2	; if slot10 == slot2
		 61	[  0]	JMP  	 10		12	; 	goto 74
		 62	[  0]	TSETS	  2	9	11	; slot9._reboundAxisUsedWave = slot2
		 63	[  0]	KPRI 	 10		2	; slot10 = true
		 64	[  0]	TSETS	 10	9	10	; slot9._uiTrigger = slot10
		 65	[  0]	KPRI 	 10		2	; slot10 = true
		 66	[  0]	TSETS	 10	9	9	; slot9._uiActiveThisSpin = slot10
		 67	[  0]	KPRI 	 10		2	; slot10 = true
		 68	[  0]	TSETS	 10	9	8	; slot9._uiSustainSpin = slot10
		 69	[  0]	IST  	   		4	; if slot4
		 70	[  0]	JMP  	 10		1	; 	goto 72
		 71	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 72	[  0]	TSETS	  5	4	7	; slot4.reboundNudgeCol = math.floor
		 73	[  0]	JMP  	  6		2	; 	goto 76
		 74	[  0]	ITERC	  9	2	3	; slot9, slot10, slot11 = uv1"unknown", slot7, slot8; slot9 = uv1"unknown"(slot7, slot8)
		 75	[  0]	ITERL	  9		-23	; slot8 = slot9; if slot9 != nil goto 53
		 76	[  0]	ISF  	   		3	; if not slot3
		 77	[  0]	JMP  	  5		38	; 	goto 116
		 78	[  0]	GGET 	  5		20	; slot5 = _env["tonumber"]
		 79	[  0]	ISF  	   		1	; if not slot1
		 80	[  0]	JMP  	  7		6	; 	goto 87
		 81	[  0]	TGETS	  7	1	6	; slot7 = slot1.spinWaveId
		 82	[  0]	IST  	   		7	; if <unknown table>.spinWaveId
		 83	[  0]	JMP  	  8		4	; 	goto 88
		 84	[  0]	TGETS	  7	1	19	; slot7 = slot1.waveId
		 85	[  0]	IST  	   		7	; if <unknown table>.waveId
		 86	[  0]	JMP  	  8		1	; 	goto 88
		 87	[  0]	KSHORT	  7		0	; slot7 = 0
		 88	[  0]	CALL 	  5	2	2	; slot5 = tonumber(uv1"unknown")
		 89	[  0]	IST  	   		5	; if tonumber
		 90	[  0]	JMP  	  6		1	; 	goto 92
		 91	[  0]	KSHORT	  5		0	; slot5 = 0
		 92	[  0]	ISF  	   		1	; if not slot1
		 93	[  0]	JMP  	  6		3	; 	goto 97
		 94	[  0]	TGETS	  6	1	5	; slot6 = slot1.spinKey
		 95	[  0]	IST  	   		6	; if <unknown table>.spinKey
		 96	[  0]	JMP  	  7		1	; 	goto 98
		 97	[  0]	KPRI 	  6		0	; slot6 = nil
		 98	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 99	[  0]	MOV  	  9		2	; slot9 = slot2
		100	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = uv1"unknown"(slot8)
		101	[  0]	JMP  	 10		11	; 	goto 113
		102	[  0]	TGETS	 11	10	13	; slot11 = slot10.key
		103	[  0]	ISNES	 11		4	; if <unknown table>.key ~= "DoubleLedger"
		104	[  0]	JMP  	 11		8	; 	goto 113
		105	[  0]	UGET 	 11		2	; slot11 = uv2"unknwon"
		106	[  0]	MOV  	 13		10	; slot13 = slot10
		107	[  0]	MOV  	 14		5	; slot14 = slot5
		108	[  0]	MOV  	 15		4	; slot15 = slot4
		109	[  0]	MOV  	 16		6	; slot16 = slot6
		110	[  0]	MOV  	 17		0	; slot17 = slot0
		111	[  0]	CALL 	 11	2	6	; slot11 = uv2"unknown"(slot12, slot13, slot14, slot15, slot16)
		112	[  0]	MOV  	  4		11	; slot4 = uv2"unknown"
		113	[  0]	ITERC	 10	2	3	; slot10, slot11, slot12 = uv1"unknown", slot8, slot9; slot10 = uv1"unknown"(slot8, slot9)
		114	[  0]	ITERL	 10		-13	; slot9 = slot10; if slot10 != nil goto 102
		115	[  0]	RET1 	  4		2	; return uv2"unknown"
		116	[  0]	UGET 	  5		1	; slot5 = uv1"unknwon"
		117	[  0]	MOV  	  7		2	; slot7 = slot2
		118	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = uv1"unknown"(slot6)
		119	[  0]	JMP  	  8		32	; 	goto 152
		120	[  0]	TGETS	  9	8	13	; slot9 = slot8.key
		121	[  0]	ISNES	  9		3	; if <unknown table>.key ~= "SpareBattery"
		122	[  0]	JMP  	  9		29	; 	goto 152
		123	[  0]	TGETS	  9	8	2	; slot9 = slot8._spareBatteryUsedWave
		124	[  0]	IST  	   		9	; if <unknown table>._spareBatteryUsedWave
		125	[  0]	JMP  	 10		1	; 	goto 127
		126	[  0]	KSHORT	  9		65535	; slot9 = 65535
		127	[  0]	ISEQV	  9		2	; if slot9 == slot2
		128	[  0]	JMP  	  9		23	; 	goto 152
		129	[  0]	TSETS	  2	8	2	; slot8._spareBatteryUsedWave = slot2
		130	[  0]	KPRI 	  9		2	; slot9 = true
		131	[  0]	TSETS	  9	8	10	; slot8._uiTrigger = slot9
		132	[  0]	KPRI 	  9		2	; slot9 = true
		133	[  0]	TSETS	  9	8	9	; slot8._uiActiveThisSpin = slot9
		134	[  0]	KPRI 	  9		2	; slot9 = true
		135	[  0]	TSETS	  9	8	8	; slot8._uiSustainSpin = slot9
		136	[  0]	IST  	   		4	; if uv2"unknown"
		137	[  0]	JMP  	  9		1	; 	goto 139
		138	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		139	[  0]	TGETS	  9	4	13	; slot9 = slot4.key
		140	[  0]	IST  	   		9	; if <unknown table>.key
		141	[  0]	JMP  	 10		1	; 	goto 143
		142	[  0]	TGETS	  9	8	13	; slot9 = slot8.key
		143	[  0]	TSETS	  9	4	13	; slot4.key = <unknown table>.key
		144	[  0]	TGETS	  9	4	1	; slot9 = slot4.inst
		145	[  0]	IST  	   		9	; if <unknown table>.inst
		146	[  0]	JMP  	 10		1	; 	goto 148
		147	[  0]	MOV  	  9		8	; slot9 = slot8
		148	[  0]	TSETS	  9	4	1	; slot4.inst = slot9
		149	[  0]	KPRI 	  9		2	; slot9 = true
		150	[  0]	TSETS	  9	4	0	; slot4.refundNudge = slot9
		151	[  0]	JMP  	  5		2	; 	goto 154
		152	[  0]	ITERC	  8	2	3	; slot8, slot9, slot10 = uv1"unknown", slot6, slot7; slot8 = uv1"unknown"(slot6, slot7)
		153	[  0]	ITERL	  8		-34	; slot7 = slot8; if slot8 != nil goto 120
		154	[  0]	RET1 	  4		2	; return slot4
	355	[  0]	TSETS	 61	2	23	; slot2.onNudgeComplete = slot61
	356	[  0]	FNEW 	 61		20	; N/A:0-0: 1 args, 2 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		17	; slot1 = _env["tonumber"]
		  2	[  0]	ISF  	   		0	; if not slot0
		  3	[  0]	JMP  	  3		3	; 	goto 7
		  4	[  0]	TGETS	  3	0	16	; slot3 = slot0.waveId
		  5	[  0]	IST  	   		3	; if <unknown table>.waveId
		  6	[  0]	JMP  	  4		1	; 	goto 8
		  7	[  0]	KSHORT	  3		0	; slot3 = 0
		  8	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  9	[  0]	IST  	   		1	; if slot1
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KSHORT	  1		0	; slot1 = 0
		 12	[  0]	ISF  	   		0	; if not slot0
		 13	[  0]	JMP  	  2		3	; 	goto 17
		 14	[  0]	TGETS	  2	0	15	; slot2 = slot0.info
		 15	[  0]	IST  	   		2	; if <unknown table>.info
		 16	[  0]	JMP  	  3		1	; 	goto 18
		 17	[  0]	KPRI 	  2		0	; slot2 = nil
		 18	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 19	[  0]	MOV  	  5		1	; slot5 = slot1
		 20	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 21	[  0]	KPRI 	  3		0	; slot3 = nil
		 22	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 23	[  0]	MOV  	  6		1	; slot6 = slot1
		 24	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv1"unknown"(slot5)
		 25	[  0]	JMP  	  7		55	; 	goto 81
		 26	[  0]	TGETS	  8	7	14	; slot8 = slot7.key
		 27	[  0]	ISNES	  8		13	; if <unknown table>.key ~= "NutrientLeaf"
		 28	[  0]	JMP  	  8		24	; 	goto 53
		 29	[  0]	TGETS	  8	7	12	; slot8 = slot7._nutrientWaveId
		 30	[  0]	IST  	   		8	; if <unknown table>._nutrientWaveId
		 31	[  0]	JMP  	  9		1	; 	goto 33
		 32	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 33	[  0]	ISEQV	  8		1	; if slot8 == slot1
		 34	[  0]	JMP  	  8		18	; 	goto 53
		 35	[  0]	TSETS	  1	7	12	; slot7._nutrientWaveId = slot1
		 36	[  0]	GGET 	  8		10	; slot8 = _env["math"]
		 37	[  0]	TGETS	  8	8	9	; slot8 = math.max
		 38	[  0]	GGET 	 10		17	; slot10 = _env["tonumber"]
		 39	[  0]	TGETS	 12	7	11	; slot12 = slot7._nutrientDiscountPending
		 40	[  0]	IST  	   		12	; if <unknown table>._nutrientDiscountPending
		 41	[  0]	JMP  	 13		1	; 	goto 43
		 42	[  0]	KSHORT	 12		0	; slot12 = 0
		 43	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 44	[  0]	IST  	   		10	; if tonumber
		 45	[  0]	JMP  	 11		1	; 	goto 47
		 46	[  0]	KSHORT	 10		0	; slot10 = 0
		 47	[  0]	KNUM 	 11		0	; slot11 = 0.5
		 48	[  0]	CALL 	  8	2	3	; slot8 = math.max(slot9, slot10)
		 49	[  0]	TSETS	  8	7	11	; slot7._nutrientDiscountPending = math.max
		 50	[  0]	KPRI 	  8		2	; slot8 = true
		 51	[  0]	TSETS	  8	7	8	; slot7._uiTrigger = slot8
		 52	[  0]	JMP  	  8		28	; 	goto 81
		 53	[  0]	TGETS	  8	7	14	; slot8 = slot7.key
		 54	[  0]	ISNES	  8		7	; if <unknown table>.key ~= "BloodlineSeal"
		 55	[  0]	JMP  	  8		25	; 	goto 81
		 56	[  0]	TGETS	  8	7	6	; slot8 = slot7._bloodlineUsedWave
		 57	[  0]	IST  	   		8	; if <unknown table>._bloodlineUsedWave
		 58	[  0]	JMP  	  9		1	; 	goto 60
		 59	[  0]	KSHORT	  8		65535	; slot8 = 65535
		 60	[  0]	ISEQV	  8		1	; if slot8 == slot1
		 61	[  0]	JMP  	  8		19	; 	goto 81
		 62	[  0]	ISFC 	  8		2	; slot8 = slot2; if not slot2
		 63	[  0]	JMP  	  8		5	; 	goto 69
		 64	[  0]	TGETS	  8	2	5	; slot8 = slot2.victim
		 65	[  0]	ISF  	   		8	; if not <unknown table>.victim
		 66	[  0]	JMP  	  9		2	; 	goto 69
		 67	[  0]	TGETS	  8	2	5	; slot8 = slot2.victim
		 68	[  0]	TGETS	  8	8	4	; slot8 = <unknown table>.victim.sym
		 69	[  0]	ISF  	   		8	; if not <unknown table>.victim.sym
		 70	[  0]	JMP  	  9		10	; 	goto 81
		 71	[  0]	ISEQS	  8		3	; if <unknown table>.victim.sym == "Blank"
		 72	[  0]	JMP  	  9		8	; 	goto 81
		 73	[  0]	ISEQS	  8		2	; if <unknown table>.victim.sym == "Joker"
		 74	[  0]	JMP  	  9		6	; 	goto 81
		 75	[  0]	ISEQS	  8		1	; if <unknown table>.victim.sym == "J"
		 76	[  0]	JMP  	  9		4	; 	goto 81
		 77	[  0]	TSETS	  1	7	6	; slot7._bloodlineUsedWave = slot1
		 78	[  0]	TSETS	  8	7	0	; slot7._bloodlinePendingSym = <unknown table>.victim.sym
		 79	[  0]	KPRI 	  9		2	; slot9 = true
		 80	[  0]	TSETS	  9	7	8	; slot7._uiTrigger = slot9
		 81	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv1"unknown", slot5, slot6; slot7 = uv1"unknown"(slot5, slot6)
		 82	[  0]	ITERL	  7		-57	; slot6 = slot7; if slot7 != nil goto 26
		 83	[  0]	RET1 	  3		2	; return slot3
	357	[  0]	TSETS	 61	2	21	; slot2.onAbsorb = slot61
	358	[  0]	FNEW 	 61		19	; N/A:0-0: 2 args, 1 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		1	; slot2 = false
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		  6	[  0]	TGETS	  2	2	2	; slot2 = math.max
		  7	[  0]	KSHORT	  4		1	; slot4 = 1
		  8	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		  9	[  0]	TGETS	  5	5	1	; slot5 = math.floor
		 10	[  0]	GGET 	  7		0	; slot7 = _env["tonumber"]
		 11	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		 12	[  0]	JMP  	  9		1	; 	goto 14
		 13	[  0]	KSHORT	  9		1	; slot9 = 1
		 14	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 15	[  0]	IST  	   		7	; if tonumber
		 16	[  0]	JMP  	  8		1	; 	goto 18
		 17	[  0]	KSHORT	  7		1	; slot7 = 1
		 18	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 19	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 20	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 21	[  0]	KSHORT	  4		1	; slot4 = 1
		 22	[  0]	KSHORT	  5		3	; slot5 = 3
		 23	[  0]	KSHORT	  6		1	; slot6 = 1
		 24	[  0]	FORI 	  4		26	; for slot7 = slot4,slot5,slot6 else goto 51
		 25	[  0]	KSHORT	  8		1	; slot8 = 1
		 26	[  0]	KSHORT	  9		3	; slot9 = 3
		 27	[  0]	KSHORT	 10		1	; slot10 = 1
		 28	[  0]	FORI 	  8		21	; for slot11 = slot8,slot9,slot10 else goto 50
		 29	[  0]	TGETV	 12	0	7	; slot12 = slot0[slot7]
		 30	[  0]	ISF  	   		12	; if not slot12
		 31	[  0]	JMP  	 13		2	; 	goto 34
		 32	[  0]	TGETV	 12	0	7	; slot12 = slot0[slot7]
		 33	[  0]	TGETV	 12	12	11	; slot12 = slot12[slot11]
		 34	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 35	[  0]	MOV  	 15		12	; slot15 = slot12
		 36	[  0]	CALL 	 13	2	2	; slot13 = uv0"unknown"(slot14)
		 37	[  0]	ISF  	   		13	; if not uv0"unknown"
		 38	[  0]	JMP  	 14		10	; 	goto 49
		 39	[  0]	TGETV	 13	3	12	; slot13 = slot3[slot12]
		 40	[  0]	IST  	   		13	; if slot13
		 41	[  0]	JMP  	 14		1	; 	goto 43
		 42	[  0]	KSHORT	 13		0	; slot13 = 0
		 43	[  0]	ADDVN	 13	13	0	; slot13 = slot13 + 1
		 44	[  0]	ISGT 	  2		13	; if math.max > slot13
		 45	[  0]	JMP  	 14		2	; 	goto 48
		 46	[  0]	KPRI 	 14		2	; slot14 = true
		 47	[  0]	RET1 	 14		2	; return slot14
		 48	[  0]	TSETV	 13	3	12	; slot3[slot12] = slot13
		 49	[  0]	FORL 	  8		-21	; slot11 = slot11 + slot10; if cmp(slot11, sign slot10,  slot9) goto 29
		 50	[  0]	FORL 	  4		-26	; slot7 = slot7 + slot6; if cmp(slot7, sign slot6,  slot5) goto 25
		 51	[  0]	KPRI 	  4		1	; slot4 = false
		 52	[  0]	RET1 	  4		2	; return slot4
	359	[  0]	FNEW 	 62		18	; N/A:0-0: 2 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		5	; 	goto 8
		  3	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  4	[  0]	MOV  	  4		1	; slot4 = slot1
		  5	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown"(slot3)
		  6	[  0]	IST  	   		2	; if slot2
		  7	[  0]	JMP  	  2		2	; 	goto 10
		  8	[  0]	KSHORT	  2		0	; slot2 = 0
		  9	[  0]	RET1 	  2		2	; return slot2
		 10	[  0]	KSHORT	  2		0	; slot2 = 0
		 11	[  0]	KSHORT	  3		1	; slot3 = 1
		 12	[  0]	KSHORT	  4		3	; slot4 = 3
		 13	[  0]	KSHORT	  5		1	; slot5 = 1
		 14	[  0]	FORI 	  3		14	; for slot6 = slot3,slot4,slot5 else goto 29
		 15	[  0]	KSHORT	  7		1	; slot7 = 1
		 16	[  0]	KSHORT	  8		3	; slot8 = 3
		 17	[  0]	KSHORT	  9		1	; slot9 = 1
		 18	[  0]	FORI 	  7		9	; for slot10 = slot7,slot8,slot9 else goto 28
		 19	[  0]	TGETV	 11	0	6	; slot11 = slot0[slot6]
		 20	[  0]	ISF  	   		11	; if not slot11
		 21	[  0]	JMP  	 12		5	; 	goto 27
		 22	[  0]	TGETV	 11	0	6	; slot11 = slot0[slot6]
		 23	[  0]	TGETV	 11	11	10	; slot11 = slot11[slot10]
		 24	[  0]	ISNEV	 11		1	; if slot11 ~= slot1
		 25	[  0]	JMP  	 11		1	; 	goto 27
		 26	[  0]	ADDVN	  2	2	0	; slot2 = slot2 + 1
		 27	[  0]	FORL 	  7		-9	; slot10 = slot10 + slot9; if cmp(slot10, sign slot9,  slot8) goto 19
		 28	[  0]	FORL 	  3		-14	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 15
		 29	[  0]	RET1 	  2		2	; return slot2
	360	[  0]	FNEW 	 55		17	; N/A:0-0: 3 args, 3 upvalues, 24 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#2 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#3 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#4 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#5 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#6 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#7 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#8 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#9 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#10 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#11 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#12 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#13 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#14 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#15 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#16 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#17 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#18 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#19 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#20 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#21 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#22 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#23 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#24 = [
			#1: 1,
			#2: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  3		2	; 	goto 5
		  3	[  0]	KPRI 	  3		0	; slot3 = nil
		  4	[  0]	UCLO 	  0		164	; nil uvs >= r0; goto 169
		  5	[  0]	GGET 	  3		33	; slot3 = _env["math"]
		  6	[  0]	TGETS	  3	3	32	; slot3 = math.max
		  7	[  0]	KSHORT	  5		1	; slot5 = 1
		  8	[  0]	GGET 	  6		33	; slot6 = _env["math"]
		  9	[  0]	TGETS	  6	6	31	; slot6 = math.floor
		 10	[  0]	GGET 	  8		30	; slot8 = _env["tonumber"]
		 11	[  0]	ISTC 	 10		2	; slot10 = slot2; if slot2
		 12	[  0]	JMP  	 10		1	; 	goto 14
		 13	[  0]	KSHORT	 10		1	; slot10 = 1
		 14	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 15	[  0]	IST  	   		8	; if tonumber
		 16	[  0]	JMP  	  9		1	; 	goto 18
		 17	[  0]	KSHORT	  8		1	; slot8 = 1
		 18	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 19	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 20	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 21	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 22	[  0]	FNEW 	  6		29	; N/A:0-0: 1 args, 3 upvalues, 5 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  2	[  0]	MOV  	  3		0	; slot3 = slot0
			  3	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
			  4	[  0]	ISF  	   		1	; if not slot1
			  5	[  0]	JMP  	  2		12	; 	goto 18
			  6	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			  7	[  0]	TGETV	  1	1	0	; slot1 = uv1"unknown"[slot0]
			  8	[  0]	IST  	   		1	; if slot1
			  9	[  0]	JMP  	  1		8	; 	goto 18
			 10	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
			 11	[  0]	KPRI 	  2		2	; slot2 = true
			 12	[  0]	TSETV	  2	1	0	; uv1"unknown"[slot0] = slot2
			 13	[  0]	GGET 	  1		1	; slot1 = _env["table"]
			 14	[  0]	TGETS	  1	1	0	; slot1 = table.insert
			 15	[  0]	UGET 	  3		2	; slot3 = uv2"unknwon"
			 16	[  0]	MOV  	  4		0	; slot4 = slot0
			 17	[  0]	CALL 	  1	1	3	;  = table.insert(slot2, uv2"unknown")
			 18	[  0]	RET0 	  0		1	; return
		 23	[  0]	MOV  	  7		6	; slot7 = slot6
		 24	[  0]	ISFC 	  9		0	; slot9 = slot0; if not slot0
		 25	[  0]	JMP  	  9		1	; 	goto 27
		 26	[  0]	TGETS	  9	0	28	; slot9 = slot0.symbol
		 27	[  0]	CALL 	  7	1	2	;  = slot7(slot8)
		 28	[  0]	ISF  	   		0	; if not slot0
		 29	[  0]	JMP  	  7		122	; 	goto 152
		 30	[  0]	TGETS	  7	0	27	; slot7 = slot0.winningLines
		 31	[  0]	ISF  	   		7	; if not <unknown table>.winningLines
		 32	[  0]	JMP  	  8		119	; 	goto 152
		 33	[  0]	GGET 	  7		26	; slot7 = _env["type"]
		 34	[  0]	TGETS	  9	0	27	; slot9 = slot0.winningLines
		 35	[  0]	CALL 	  7	2	2	; slot7 = type(slot8)
		 36	[  0]	ISNES	  7		25	; if type ~= "table"
		 37	[  0]	JMP  	  7		114	; 	goto 152
		 38	[  0]	TNEW 	  7		9	; slot7 = new table( array: 9, dict: 1)
		 39	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 40	[  0]	TDUP 	  9		24	; slot9 = copy table#k24
		 41	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 42	[  0]	TDUP 	  9		23	; slot9 = copy table#k23
		 43	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 44	[  0]	TDUP 	  9		22	; slot9 = copy table#k22
		 45	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 46	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
		 47	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 48	[  0]	TDUP 	  9		21	; slot9 = copy table#k21
		 49	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 50	[  0]	TDUP 	  9		20	; slot9 = copy table#k20
		 51	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 52	[  0]	TDUP 	  9		19	; slot9 = copy table#k19
		 53	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 54	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
		 55	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 56	[  0]	TDUP 	  9		18	; slot9 = copy table#k18
		 57	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 58	[  0]	TDUP 	  9		17	; slot9 = copy table#k17
		 59	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 60	[  0]	TDUP 	  9		16	; slot9 = copy table#k16
		 61	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 62	[  0]	TSETB	  8	7	3	; slot7[3] = slot8
		 63	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 64	[  0]	TDUP 	  9		15	; slot9 = copy table#k15
		 65	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 66	[  0]	TDUP 	  9		14	; slot9 = copy table#k14
		 67	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 68	[  0]	TDUP 	  9		13	; slot9 = copy table#k13
		 69	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 70	[  0]	TSETB	  8	7	4	; slot7[4] = slot8
		 71	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 72	[  0]	TDUP 	  9		12	; slot9 = copy table#k12
		 73	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 74	[  0]	TDUP 	  9		11	; slot9 = copy table#k11
		 75	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 76	[  0]	TDUP 	  9		10	; slot9 = copy table#k10
		 77	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 78	[  0]	TSETB	  8	7	5	; slot7[5] = slot8
		 79	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 80	[  0]	TDUP 	  9		9	; slot9 = copy table#k9
		 81	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 82	[  0]	TDUP 	  9		8	; slot9 = copy table#k8
		 83	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 84	[  0]	TDUP 	  9		7	; slot9 = copy table#k7
		 85	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 86	[  0]	TSETB	  8	7	6	; slot7[6] = slot8
		 87	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 88	[  0]	TDUP 	  9		6	; slot9 = copy table#k6
		 89	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 90	[  0]	TDUP 	  9		5	; slot9 = copy table#k5
		 91	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		 92	[  0]	TDUP 	  9		4	; slot9 = copy table#k4
		 93	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		 94	[  0]	TSETB	  8	7	7	; slot7[7] = slot8
		 95	[  0]	TNEW 	  8		4	; slot8 = new table( array: 4, dict: 1)
		 96	[  0]	TDUP 	  9		3	; slot9 = copy table#k3
		 97	[  0]	TSETB	  9	8	1	; slot8[1] = slot9
		 98	[  0]	TDUP 	  9		2	; slot9 = copy table#k2
		 99	[  0]	TSETB	  9	8	2	; slot8[2] = slot9
		100	[  0]	TDUP 	  9		1	; slot9 = copy table#k1
		101	[  0]	TSETB	  9	8	3	; slot8[3] = slot9
		102	[  0]	TSETB	  8	7	8	; slot7[8] = slot8
		103	[  0]	GGET 	  8		0	; slot8 = _env["ipairs"]
		104	[  0]	TGETS	 10	0	27	; slot10 = slot0.winningLines
		105	[  0]	CALL 	  8	4	2	; slot8, slot9, slot10 = ipairs(slot9)
		106	[  0]	JMP  	 11		43	; 	goto 150
		107	[  0]	TGETV	 13	7	12	; slot13 = slot7[slot12]
		108	[  0]	ISF  	   		13	; if not slot13
		109	[  0]	JMP  	 14		40	; 	goto 150
		110	[  0]	TGETB	 14	13	1	; slot14 = slot13[1]
		111	[  0]	TGETB	 14	14	1	; slot14 = slot14[1]
		112	[  0]	TGETV	 14	1	14	; slot14 = slot1[slot14]
		113	[  0]	ISF  	   		14	; if not slot14
		114	[  0]	JMP  	 15		6	; 	goto 121
		115	[  0]	TGETB	 14	13	1	; slot14 = slot13[1]
		116	[  0]	TGETB	 14	14	1	; slot14 = slot14[1]
		117	[  0]	TGETV	 14	1	14	; slot14 = slot1[slot14]
		118	[  0]	TGETB	 15	13	1	; slot15 = slot13[1]
		119	[  0]	TGETB	 15	15	2	; slot15 = slot15[2]
		120	[  0]	TGETV	 14	14	15	; slot14 = slot14[slot15]
		121	[  0]	TGETB	 15	13	2	; slot15 = slot13[2]
		122	[  0]	TGETB	 15	15	1	; slot15 = slot15[1]
		123	[  0]	TGETV	 15	1	15	; slot15 = slot1[slot15]
		124	[  0]	ISF  	   		15	; if not slot15
		125	[  0]	JMP  	 16		6	; 	goto 132
		126	[  0]	TGETB	 15	13	2	; slot15 = slot13[2]
		127	[  0]	TGETB	 15	15	1	; slot15 = slot15[1]
		128	[  0]	TGETV	 15	1	15	; slot15 = slot1[slot15]
		129	[  0]	TGETB	 16	13	2	; slot16 = slot13[2]
		130	[  0]	TGETB	 16	16	2	; slot16 = slot16[2]
		131	[  0]	TGETV	 15	15	16	; slot15 = slot15[slot16]
		132	[  0]	TGETB	 16	13	3	; slot16 = slot13[3]
		133	[  0]	TGETB	 16	16	1	; slot16 = slot16[1]
		134	[  0]	TGETV	 16	1	16	; slot16 = slot1[slot16]
		135	[  0]	ISF  	   		16	; if not slot16
		136	[  0]	JMP  	 17		6	; 	goto 143
		137	[  0]	TGETB	 16	13	3	; slot16 = slot13[3]
		138	[  0]	TGETB	 16	16	1	; slot16 = slot16[1]
		139	[  0]	TGETV	 16	1	16	; slot16 = slot1[slot16]
		140	[  0]	TGETB	 17	13	3	; slot17 = slot13[3]
		141	[  0]	TGETB	 17	17	2	; slot17 = slot17[2]
		142	[  0]	TGETV	 16	16	17	; slot16 = slot16[slot17]
		143	[  0]	MOV  	 17		6	; slot17 = slot6
		144	[  0]	UGET 	 19		1	; slot19 = uv1"unknwon"
		145	[  0]	MOV  	 21		14	; slot21 = slot14
		146	[  0]	MOV  	 22		15	; slot22 = slot15
		147	[  0]	MOV  	 23		16	; slot23 = slot16
		148	[  0]	CALL 	 19	0	4	; MULTRES = uv1"unknown"(slot20, slot21, slot22)
		149	[  0]	CALLM	 17	1	0	;  = slot17(, ...MULTRES)
		150	[  0]	ITERC	 11	3	3	; slot11, slot12, slot13 = ipairs, slot9, <unknown table>.winningLines; slot11, slot12 = ipairs(slot9, <unknown table>.winningLines)
		151	[  0]	ITERL	 11		-45	; <unknown table>.winningLines = slot11; if slot11 != nil goto 107
		152	[  0]	GGET 	  7		0	; slot7 = _env["ipairs"]
		153	[  0]	MOV  	  9		4	; slot9 = slot4
		154	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(ipairs)
		155	[  0]	JMP  	 10		8	; 	goto 164
		156	[  0]	UGET 	 12		2	; slot12 = uv2"unknwon"
		157	[  0]	MOV  	 14		1	; slot14 = slot1
		158	[  0]	MOV  	 15		11	; slot15 = slot11
		159	[  0]	CALL 	 12	2	3	; slot12 = uv2"unknown"(slot13, slot14)
		160	[  0]	ISGT 	  3		12	; if math.max > uv2"unknown"
		161	[  0]	JMP  	 12		2	; 	goto 164
		162	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 163
		163	[  0]	RET1 	 11		2	; return slot11
		164	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, ipairs, slot9; slot10, slot11 = ipairs(ipairs, slot9)
		165	[  0]	ITERL	 10		-10	; slot9 = <unknown table>.winningLines; if <unknown table>.winningLines != nil goto 156
		166	[  0]	KPRI 	  7		0	; slot7 = nil
		167	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 168
		168	[  0]	RET1 	  7		2	; return slot7
		169	[  0]	RET1 	  3		2	; return math.max
	361	[  0]	FNEW 	 63		16	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		8	; 	goto 11
		  3	[  0]	TGETS	  1	0	3	; slot1 = slot0.winningLines
		  4	[  0]	ISF  	   		1	; if not <unknown table>.winningLines
		  5	[  0]	JMP  	  2		5	; 	goto 11
		  6	[  0]	GGET 	  1		2	; slot1 = _env["type"]
		  7	[  0]	TGETS	  3	0	3	; slot3 = slot0.winningLines
		  8	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  9	[  0]	ISEQS	  1		1	; if slot1 == "table"
		 10	[  0]	JMP  	  1		2	; 	goto 13
		 11	[  0]	KSHORT	  1		0	; slot1 = 0
		 12	[  0]	RET1 	  1		2	; return slot1
		 13	[  0]	KSHORT	  1		0	; slot1 = 0
		 14	[  0]	GGET 	  2		0	; slot2 = _env["ipairs"]
		 15	[  0]	TGETS	  4	0	3	; slot4 = slot0.winningLines
		 16	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(<unknown table>.winningLines)
		 17	[  0]	JMP  	  5		1	; 	goto 19
		 18	[  0]	ADDVN	  1	1	0	; slot1 = slot1 + 1
		 19	[  0]	ITERC	  5	2	3	; slot5, slot6, slot7 = slot2, <unknown table>.winningLines, <unknown table>.winningLines; slot5 = slot2(<unknown table>.winningLines, <unknown table>.winningLines)
		 20	[  0]	ITERL	  5		-3	; <unknown table>.winningLines = slot5; if slot5 != nil goto 18
		 21	[  0]	RET1 	  1		2	; return slot1
	362	[  0]	FNEW 	 64		15	; N/A:0-0: 5 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  5		3	; 	goto 6
		  3	[  0]	TGETS	  5	0	10	; slot5 = slot0.key
		  4	[  0]	ISEQS	  5		9	; if <unknown table>.key == "MultiEchoMirror"
		  5	[  0]	JMP  	  5		1	; 	goto 7
		  6	[  0]	RET1 	  4		2	; return slot4
		  7	[  0]	ISFC 	  5		1	; slot5 = slot1; if not slot1
		  8	[  0]	JMP  	  5		9	; 	goto 18
		  9	[  0]	TGETS	  5	1	8	; slot5 = slot1.checked
		 10	[  0]	ISF  	   		5	; if not <unknown table>.checked
		 11	[  0]	JMP  	  6		6	; 	goto 18
		 12	[  0]	TGETS	  5	1	7	; slot5 = slot1.won
		 13	[  0]	ISEQP	  5		2	; if <unknown table>.won == true
		 14	[  0]	JMP  	  5		2	; 	goto 17
		 15	[  0]	KPRI 	  5		1	; slot5 = false
		 16	[  0]	JMP  	  6		1	; 	goto 18
		 17	[  0]	KPRI 	  5		2	; slot5 = true
		 18	[  0]	IST  	   		5	; if slot5
		 19	[  0]	JMP  	  6		39	; 	goto 59
		 20	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 21	[  0]	MOV  	  8		1	; slot8 = slot1
		 22	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
		 23	[  0]	ISNEN	  6		0	; if uv0"unknown" ~= 0
		 24	[  0]	JMP  	  6		34	; 	goto 59
		 25	[  0]	UGET 	  6		1	; slot6 = uv1"unknwon"
		 26	[  0]	ISFC 	  8		2	; slot8 = slot2; if not slot2
		 27	[  0]	JMP  	  8		1	; 	goto 29
		 28	[  0]	TGETS	  8	2	6	; slot8 = slot2.grid
		 29	[  0]	KSHORT	  9		4	; slot9 = 4
		 30	[  0]	CALL 	  6	2	3	; slot6 = uv1"unknown"(slot7, <unknown table>.grid)
		 31	[  0]	ISF  	   		6	; if not uv1"unknown"
		 32	[  0]	JMP  	  7		26	; 	goto 59
		 33	[  0]	TGETS	  6	0	5	; slot6 = slot0._multiEchoUsedWave
		 34	[  0]	IST  	   		6	; if <unknown table>._multiEchoUsedWave
		 35	[  0]	JMP  	  7		1	; 	goto 37
		 36	[  0]	KSHORT	  6		65535	; slot6 = 65535
		 37	[  0]	ISEQV	  6		3	; if slot6 == slot3
		 38	[  0]	JMP  	  6		20	; 	goto 59
		 39	[  0]	TSETS	  3	0	5	; slot0._multiEchoUsedWave = slot3
		 40	[  0]	KPRI 	  6		2	; slot6 = true
		 41	[  0]	TSETS	  6	0	4	; slot0._uiTrigger = slot6
		 42	[  0]	IST  	   		4	; if slot4
		 43	[  0]	JMP  	  6		1	; 	goto 45
		 44	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 45	[  0]	GGET 	  6		2	; slot6 = _env["math"]
		 46	[  0]	TGETS	  6	6	1	; slot6 = math.max
		 47	[  0]	GGET 	  8		0	; slot8 = _env["tonumber"]
		 48	[  0]	TGETS	 10	4	3	; slot10 = slot4.essence
		 49	[  0]	IST  	   		10	; if <unknown table>.essence
		 50	[  0]	JMP  	 11		1	; 	goto 52
		 51	[  0]	KSHORT	 10		0	; slot10 = 0
		 52	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 53	[  0]	IST  	   		8	; if tonumber
		 54	[  0]	JMP  	  9		1	; 	goto 56
		 55	[  0]	KSHORT	  8		0	; slot8 = 0
		 56	[  0]	KSHORT	  9		1	; slot9 = 1
		 57	[  0]	CALL 	  6	2	3	; slot6 = math.max(slot7, slot8)
		 58	[  0]	TSETS	  6	4	3	; slot4.essence = math.max
		 59	[  0]	RET1 	  4		2	; return slot4
	363	[  0]	FNEW 	 65		13	; N/A:0-0: 2 args, 5 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			]
		
		
		ktable#7 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		6	; 	goto 9
		  3	[  0]	TGETS	  2	0	22	; slot2 = slot0.checked
		  4	[  0]	ISF  	   		2	; if not <unknown table>.checked
		  5	[  0]	JMP  	  3		3	; 	goto 9
		  6	[  0]	TGETS	  2	0	21	; slot2 = slot0.won
		  7	[  0]	ISNEP	  2		2	; if <unknown table>.won ~= true
		  8	[  0]	JMP  	  2		2	; 	goto 11
		  9	[  0]	KPRI 	  2		0	; slot2 = nil
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	GGET 	  2		20	; slot2 = _env["tonumber"]
		 12	[  0]	ISF  	   		1	; if not slot1
		 13	[  0]	JMP  	  4		3	; 	goto 17
		 14	[  0]	TGETS	  4	1	19	; slot4 = slot1.waveId
		 15	[  0]	IST  	   		4	; if <unknown table>.waveId
		 16	[  0]	JMP  	  5		1	; 	goto 18
		 17	[  0]	KSHORT	  4		0	; slot4 = 0
		 18	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 19	[  0]	IST  	   		2	; if slot2
		 20	[  0]	JMP  	  3		1	; 	goto 22
		 21	[  0]	KSHORT	  2		0	; slot2 = 0
		 22	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 23	[  0]	MOV  	  5		2	; slot5 = slot2
		 24	[  0]	CALL 	  3	1	2	;  = uv0"unknown"(slot4)
		 25	[  0]	KPRI 	  3		0	; slot3 = nil
		 26	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 27	[  0]	MOV  	  6		2	; slot6 = slot2
		 28	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = uv1"unknown"(slot5)
		 29	[  0]	JMP  	  7		86	; 	goto 116
		 30	[  0]	UGET 	  8		2	; slot8 = uv2"unknwon"
		 31	[  0]	MOV  	 10		7	; slot10 = slot7
		 32	[  0]	MOV  	 11		0	; slot11 = slot0
		 33	[  0]	MOV  	 12		1	; slot12 = slot1
		 34	[  0]	MOV  	 13		2	; slot13 = slot2
		 35	[  0]	MOV  	 14		3	; slot14 = slot3
		 36	[  0]	CALL 	  8	2	6	; slot8 = uv2"unknown"(slot9, slot10, slot11, slot12, slot13)
		 37	[  0]	MOV  	  3		8	; slot3 = uv2"unknown"
		 38	[  0]	TGETS	  8	7	18	; slot8 = slot7.key
		 39	[  0]	ISNES	  8		17	; if <unknown table>.key ~= "ResonoscopeChain"
		 40	[  0]	JMP  	  8		58	; 	goto 99
		 41	[  0]	KSHORT	  8		0	; slot8 = 0
		 42	[  0]	GGET 	  9		16	; slot9 = _env["ipairs"]
		 43	[  0]	GGET 	 11		15	; slot11 = _env["type"]
		 44	[  0]	TGETS	 13	0	14	; slot13 = slot0.winningLines
		 45	[  0]	CALL 	 11	2	2	; slot11 = type(slot12)
		 46	[  0]	ISNES	 11		13	; if type ~= "table"
		 47	[  0]	JMP  	 11		3	; 	goto 51
		 48	[  0]	TGETS	 11	0	14	; slot11 = slot0.winningLines
		 49	[  0]	IST  	   		11	; if <unknown table>.winningLines
		 50	[  0]	JMP  	 12		1	; 	goto 52
		 51	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		 52	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
		 53	[  0]	JMP  	 12		1	; 	goto 55
		 54	[  0]	ADDVN	  8	8	0	; slot8 = slot8 + 1
		 55	[  0]	ITERC	 12	2	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12 = ipairs(slot10, slot11)
		 56	[  0]	ITERL	 12		-3	; slot11 = slot12; if slot12 != nil goto 54
		 57	[  0]	ISNEN	  8		1	; if slot8 ~= 0
		 58	[  0]	JMP  	  9		40	; 	goto 99
		 59	[  0]	ISF  	   		1	; if not slot1
		 60	[  0]	JMP  	  9		3	; 	goto 64
		 61	[  0]	TGETS	  9	1	12	; slot9 = slot1.spinKey
		 62	[  0]	IST  	   		9	; if <unknown table>.spinKey
		 63	[  0]	JMP  	 10		1	; 	goto 65
		 64	[  0]	KPRI 	  9		0	; slot9 = nil
		 65	[  0]	TGETS	 10	7	11	; slot10 = slot7._resonoscopeNudgePreview
		 66	[  0]	ISF  	   		9	; if not slot9
		 67	[  0]	JMP  	 11		5	; 	goto 73
		 68	[  0]	ISF  	   		10	; if not <unknown table>._resonoscopeNudgePreview
		 69	[  0]	JMP  	 11		3	; 	goto 73
		 70	[  0]	TGETS	 11	10	12	; slot11 = <unknown table>._resonoscopeNudgePreview.spinKey
		 71	[  0]	ISEQV	 11		9	; if <unknown table>._resonoscopeNudgePreview.spinKey == slot9
		 72	[  0]	JMP  	 11		17	; 	goto 90
		 73	[  0]	TDUP 	 11		7	; slot11 = copy table#k7
		 74	[  0]	GGET 	 12		10	; slot12 = _env["love"]
		 75	[  0]	TGETS	 12	12	9	; slot12 = love.math
		 76	[  0]	TGETS	 12	12	8	; slot12 = love.math.random
		 77	[  0]	KSHORT	 14		1	; slot14 = 1
		 78	[  0]	KSHORT	 15		3	; slot15 = 3
		 79	[  0]	CALL 	 12	2	3	; slot12 = love.math.random(<unknown table>.winningLines, slot14)
		 80	[  0]	TSETS	 12	11	6	; slot11.col = love.math.random
		 81	[  0]	UGET 	 12		3	; slot12 = uv3"unknwon"
		 82	[  0]	KSHORT	 14		0	; slot14 = 0
		 83	[  0]	CALL 	 12	2	2	; slot12 = uv3"unknown"(<unknown table>.winningLines)
		 84	[  0]	TSETS	 12	11	5	; slot11.symbol = uv3"unknown"
		 85	[  0]	TSETS	  9	11	12	; slot11.spinKey = slot9
		 86	[  0]	MOV  	 10		11	; slot10 = slot11
		 87	[  0]	TSETS	 10	7	11	; slot7._resonoscopeNudgePreview = slot10
		 88	[  0]	KPRI 	 11		2	; slot11 = true
		 89	[  0]	TSETS	 11	7	4	; slot7._uiTrigger = slot11
		 90	[  0]	IST  	   		3	; if uv2"unknown"
		 91	[  0]	JMP  	 11		1	; 	goto 93
		 92	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		 93	[  0]	TDUP 	 11		2	; slot11 = copy table#k2
		 94	[  0]	TGETS	 12	10	6	; slot12 = slot10.col
		 95	[  0]	TSETS	 12	11	6	; slot11.col = <unknown table>.col
		 96	[  0]	TGETS	 12	10	5	; slot12 = slot10.symbol
		 97	[  0]	TSETS	 12	11	5	; slot11.symbol = <unknown table>.symbol
		 98	[  0]	TSETS	 11	3	3	; slot3.nudgePreview = slot11
		 99	[  0]	TGETS	  8	7	18	; slot8 = slot7.key
		100	[  0]	ISNES	  8		1	; if <unknown table>.key ~= "CrookedFang"
		101	[  0]	JMP  	  8		14	; 	goto 116
		102	[  0]	UGET 	  8		4	; slot8 = uv4"unknwon"
		103	[  0]	MOV  	 10		7	; slot10 = slot7
		104	[  0]	MOV  	 11		2	; slot11 = slot2
		105	[  0]	ISF  	   		1	; if not slot1
		106	[  0]	JMP  	 12		3	; 	goto 110
		107	[  0]	TGETS	 12	1	12	; slot12 = slot1.spinKey
		108	[  0]	IST  	   		12	; if <unknown table>.spinKey
		109	[  0]	JMP  	 13		1	; 	goto 111
		110	[  0]	KPRI 	 12		0	; slot12 = nil
		111	[  0]	ISFC 	 13		1	; slot13 = slot1; if not slot1
		112	[  0]	JMP  	 13		1	; 	goto 114
		113	[  0]	TGETS	 13	1	0	; slot13 = slot1.grid
		114	[  0]	MOV  	 14		0	; slot14 = slot0
		115	[  0]	CALL 	  8	1	6	;  = uv4"unknown"(slot9, slot10, slot11, slot12, <unknown table>.grid)
		116	[  0]	ITERC	  7	2	3	; slot7, slot8, slot9 = uv1"unknown", slot5, slot6; slot7 = uv1"unknown"(slot5, slot6)
		117	[  0]	ITERL	  7		-88	; slot6 = slot7; if slot7 != nil goto 30
		118	[  0]	RET1 	  3		2	; return slot3
	364	[  0]	TSETS	 65	2	14	; slot2.onVisibleSpinLoss = slot65
	365	[  0]	FNEW 	 60		12	; N/A:0-0: 5 args, 0 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  5		1	; 	goto 4
		  3	[  0]	RET1 	  2		2	; return slot2
		  4	[  0]	TGETS	  5	0	16	; slot5 = slot0._doubleLedgerUsedWave
		  5	[  0]	IST  	   		5	; if <unknown table>._doubleLedgerUsedWave
		  6	[  0]	JMP  	  6		1	; 	goto 8
		  7	[  0]	KSHORT	  5		65535	; slot5 = 65535
		  8	[  0]	ISNEV	  5		1	; if slot5 ~= slot1
		  9	[  0]	JMP  	  5		1	; 	goto 11
		 10	[  0]	RET1 	  2		2	; return slot2
		 11	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 12	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 13	[  0]	GGET 	  7		15	; slot7 = _env["ipairs"]
		 14	[  0]	ISF  	   		4	; if not slot4
		 15	[  0]	JMP  	  9		3	; 	goto 19
		 16	[  0]	TGETS	  9	4	14	; slot9 = slot4.winningLines
		 17	[  0]	IST  	   		9	; if <unknown table>.winningLines
		 18	[  0]	JMP  	 10		1	; 	goto 20
		 19	[  0]	TNEW 	  9		0	; slot9 = new table( array: 0, dict: 1)
		 20	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 21	[  0]	JMP  	 10		27	; 	goto 49
		 22	[  0]	GGET 	 12		13	; slot12 = _env["math"]
		 23	[  0]	TGETS	 12	12	12	; slot12 = math.floor
		 24	[  0]	GGET 	 14		11	; slot14 = _env["tonumber"]
		 25	[  0]	ISTC 	 16		11	; slot16 = slot11; if slot11
		 26	[  0]	JMP  	 16		1	; 	goto 28
		 27	[  0]	KSHORT	 16		0	; slot16 = 0
		 28	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		 29	[  0]	IST  	   		14	; if tonumber
		 30	[  0]	JMP  	 15		1	; 	goto 32
		 31	[  0]	KSHORT	 14		0	; slot14 = 0
		 32	[  0]	CALL 	 12	2	2	; slot12 = math.floor(slot13)
		 33	[  0]	KSHORT	 13		1	; slot13 = 1
		 34	[  0]	ISGT 	 13		12	; if slot13 > math.floor
		 35	[  0]	JMP  	 13		13	; 	goto 49
		 36	[  0]	KSHORT	 13		8	; slot13 = 8
		 37	[  0]	ISGT 	 12		13	; if math.floor > slot13
		 38	[  0]	JMP  	 13		10	; 	goto 49
		 39	[  0]	TGETV	 13	6	12	; slot13 = slot6[math.floor]
		 40	[  0]	IST  	   		13	; if slot13
		 41	[  0]	JMP  	 13		7	; 	goto 49
		 42	[  0]	KPRI 	 13		2	; slot13 = true
		 43	[  0]	TSETV	 13	6	12	; slot6[math.floor] = slot13
		 44	[  0]	GGET 	 13		10	; slot13 = _env["table"]
		 45	[  0]	TGETS	 13	13	9	; slot13 = table.insert
		 46	[  0]	MOV  	 15		5	; slot15 = slot5
		 47	[  0]	MOV  	 16		12	; slot16 = math.floor
		 48	[  0]	CALL 	 13	1	3	;  = table.insert(slot14, slot15)
		 49	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 50	[  0]	ITERL	 10		-29	; slot9 = slot10; if slot10 != nil goto 22
		 51	[  0]	LEN  	  7		5	; slot7 = #slot5
		 52	[  0]	ISNEN	  7		0	; if slot7 ~= 0
		 53	[  0]	JMP  	  7		1	; 	goto 55
		 54	[  0]	RET1 	  2		2	; return slot2
		 55	[  0]	TSETS	  1	0	16	; slot0._doubleLedgerUsedWave = slot1
		 56	[  0]	TSETS	  3	0	8	; slot0._doubleLedgerLastSpinKey = slot3
		 57	[  0]	KPRI 	  7		2	; slot7 = true
		 58	[  0]	TSETS	  7	0	7	; slot0._uiTrigger = slot7
		 59	[  0]	KPRI 	  7		2	; slot7 = true
		 60	[  0]	TSETS	  7	0	6	; slot0._uiActiveThisSpin = slot7
		 61	[  0]	KPRI 	  7		2	; slot7 = true
		 62	[  0]	TSETS	  7	0	5	; slot0._uiSustainSpin = slot7
		 63	[  0]	IST  	   		2	; if slot2
		 64	[  0]	JMP  	  7		1	; 	goto 66
		 65	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		 66	[  0]	TDUP 	  7		3	; slot7 = copy table#k3
		 67	[  0]	TGETB	  8	5	1	; slot8 = slot5[1]
		 68	[  0]	TSETS	  8	7	2	; slot7.lineId = slot8
		 69	[  0]	TSETS	  5	7	1	; slot7.lineIds = slot5
		 70	[  0]	TSETS	  3	7	0	; slot7.spinKey = slot3
		 71	[  0]	TSETS	  7	2	4	; slot2.doubleLedgerCascade = slot7
		 72	[  0]	RET1 	  2		2	; return slot2
	366	[  0]	KSTR 	 65		11	; slot65 = "finishSpinModifiers"
	367	[  0]	FNEW 	 66		10	; N/A:0-0: 0 args, 2 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	6	; slot0 = uv0"unknown"._appliedThisSpin
		  3	[  0]	ISF  	   		0	; if not uv0"unknown"._appliedThisSpin
		  4	[  0]	JMP  	  1		27	; 	goto 32
		  5	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  6	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown"._baseForceProb
		  7	[  0]	ISEQP	  0		0	; if uv0"unknown"._baseForceProb == nil
		  8	[  0]	JMP  	  0		4	; 	goto 13
		  9	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 10	[  0]	TGETS	  0	0	5	; slot0 = uv0"unknown"._baseForceProb
		 11	[  0]	IST  	   		0	; if uv0"unknown"._baseForceProb
		 12	[  0]	JMP  	  1		13	; 	goto 26
		 13	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 14	[  0]	ISF  	   		0	; if not uv1"unknown"
		 15	[  0]	JMP  	  1		9	; 	goto 25
		 16	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 17	[  0]	TGETS	  0	0	4	; slot0 = uv1"unknown".slot
		 18	[  0]	ISF  	   		0	; if not uv1"unknown".slot
		 19	[  0]	JMP  	  1		5	; 	goto 25
		 20	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 21	[  0]	TGETS	  0	0	4	; slot0 = uv1"unknown".slot
		 22	[  0]	TGETS	  0	0	3	; slot0 = uv1"unknown".slot.forceWinProb
		 23	[  0]	IST  	   		0	; if uv1"unknown".slot.forceWinProb
		 24	[  0]	JMP  	  1		1	; 	goto 26
		 25	[  0]	KSHORT	  0		0	; slot0 = 0
		 26	[  0]	UGET 	  1		1	; slot1 = uv1"unknwon"
		 27	[  0]	TGETS	  1	1	4	; slot1 = uv1"unknown".slot
		 28	[  0]	TSETS	  0	1	3	; uv1"unknown".slot.forceWinProb = slot0
		 29	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 30	[  0]	KPRI 	  2		0	; slot2 = nil
		 31	[  0]	TSETS	  2	1	6	; uv0"unknown"._appliedThisSpin = slot2
		 32	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 33	[  0]	TGETS	  0	0	2	; slot0 = uv0"unknown"._weightsApplied
		 34	[  0]	ISF  	   		0	; if not uv0"unknown"._weightsApplied
		 35	[  0]	JMP  	  1		12	; 	goto 48
		 36	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 37	[  0]	TGETS	  0	0	1	; slot0 = uv0"unknown"._baseSymbolWeights
		 38	[  0]	ISF  	   		0	; if not uv0"unknown"._baseSymbolWeights
		 39	[  0]	JMP  	  1		8	; 	goto 48
		 40	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 41	[  0]	TGETS	  0	0	4	; slot0 = uv1"unknown".slot
		 42	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 43	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown"._baseSymbolWeights
		 44	[  0]	TSETS	  1	0	0	; uv1"unknown".slot.symbolWeights = uv0"unknown"._baseSymbolWeights
		 45	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		 46	[  0]	KPRI 	  1		1	; slot1 = false
		 47	[  0]	TSETS	  1	0	2	; uv0"unknown"._weightsApplied = slot1
		 48	[  0]	KPRI 	  0		2	; slot0 = true
		 49	[  0]	RET1 	  0		2	; return slot0
	368	[  0]	TSETV	 66	2	65	; slot2[slot65] = slot66
	369	[  0]	KSTR 	 65		9	; slot65 = "onSpinResult"
	370	[  0]	FNEW 	 66		8	; N/A:0-0: 2 args, 7 upvalues, 26 slots
		
		;;;; constant tables ;;;;
		ktable#15 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#16 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#17 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#18 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#19 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#20 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#21 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#22 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#23 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#24 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#25 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#26 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#27 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#28 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#29 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#30 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#31 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#32 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#33 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#34 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#35 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#36 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#37 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#38 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#43 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#44 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#45 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#46 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#47 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#48 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#49 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#50 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#51 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#52 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#53 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#54 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#55 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#56 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#57 = [
			#1: 1,
			#2: 1,
			]
		
		
		ktable#58 = [
			#1: 3,
			#2: 3,
			]
		
		
		ktable#59 = [
			#1: 3,
			#2: 2,
			]
		
		
		ktable#60 = [
			#1: 3,
			#2: 1,
			]
		
		
		ktable#61 = [
			#1: 2,
			#2: 3,
			]
		
		
		ktable#62 = [
			#1: 2,
			#2: 2,
			]
		
		
		ktable#63 = [
			#1: 2,
			#2: 1,
			]
		
		
		ktable#64 = [
			#1: 1,
			#2: 3,
			]
		
		
		ktable#65 = [
			#1: 1,
			#2: 2,
			]
		
		
		ktable#66 = [
			#1: 1,
			#2: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	92	; slot2 = uv0"unknown".finishSpinModifiers
		  3	[  0]	CALL 	  2	1	1	;  = uv0"unknown".finishSpinModifiers()
		  4	[  0]	ISF  	   		1	; if not slot1
		  5	[  0]	JMP  	  2		8	; 	goto 14
		  6	[  0]	GGET 	  2		91	; slot2 = _env["tonumber"]
		  7	[  0]	TGETS	  4	1	90	; slot4 = slot1.waveId
		  8	[  0]	IST  	   		4	; if <unknown table>.waveId
		  9	[  0]	JMP  	  5		1	; 	goto 11
		 10	[  0]	KSHORT	  4		0	; slot4 = 0
		 11	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 12	[  0]	IST  	   		2	; if slot2
		 13	[  0]	JMP  	  3		1	; 	goto 15
		 14	[  0]	KSHORT	  2		0	; slot2 = 0
		 15	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	CALL 	  3	1	2	;  = uv1"unknown"(slot4)
		 18	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		 19	[  0]	JMP  	  3		9	; 	goto 29
		 20	[  0]	TGETS	  3	0	89	; slot3 = slot0.checked
		 21	[  0]	ISF  	   		3	; if not <unknown table>.checked
		 22	[  0]	JMP  	  4		6	; 	goto 29
		 23	[  0]	TGETS	  3	0	88	; slot3 = slot0.won
		 24	[  0]	ISEQP	  3		2	; if <unknown table>.won == true
		 25	[  0]	JMP  	  3		2	; 	goto 28
		 26	[  0]	KPRI 	  3		1	; slot3 = false
		 27	[  0]	JMP  	  4		1	; 	goto 29
		 28	[  0]	KPRI 	  3		2	; slot3 = true
		 29	[  0]	KPRI 	  4		0	; slot4 = nil
		 30	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 31	[  0]	MOV  	  7		2	; slot7 = slot2
		 32	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = uv2"unknown"(slot6)
		 33	[  0]	JMP  	  8		498	; 	goto 532
		 34	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		 35	[  0]	ISNES	  9		86	; if <unknown table>.key ~= "Firstflag"
		 36	[  0]	JMP  	  9		31	; 	goto 68
		 37	[  0]	ISF  	   		1	; if not slot1
		 38	[  0]	JMP  	  9		8	; 	goto 47
		 39	[  0]	GGET 	  9		91	; slot9 = _env["tonumber"]
		 40	[  0]	TGETS	 11	1	90	; slot11 = slot1.waveId
		 41	[  0]	IST  	   		11	; if <unknown table>.waveId
		 42	[  0]	JMP  	 12		1	; 	goto 44
		 43	[  0]	KSHORT	 11		0	; slot11 = 0
		 44	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 45	[  0]	IST  	   		9	; if tonumber
		 46	[  0]	JMP  	 10		1	; 	goto 48
		 47	[  0]	KSHORT	  9		0	; slot9 = 0
		 48	[  0]	ISF  	   		3	; if not slot3
		 49	[  0]	JMP  	 10		1	; 	goto 51
		 50	[  0]	JMP  	 10		481	; 	goto 532
		 51	[  0]	TGETS	 10	8	85	; slot10 = slot8._firstFailWaveUsed
		 52	[  0]	IST  	   		10	; if <unknown table>._firstFailWaveUsed
		 53	[  0]	JMP  	 11		1	; 	goto 55
		 54	[  0]	KSHORT	 10		65535	; slot10 = 65535
		 55	[  0]	ISEQV	 10		9	; if slot10 == slot9
		 56	[  0]	JMP  	 10		475	; 	goto 532
		 57	[  0]	GGET 	 10		83	; slot10 = _env["math"]
		 58	[  0]	TGETS	 10	10	82	; slot10 = math.max
		 59	[  0]	TGETS	 12	8	84	; slot12 = slot8._nextWinBoost
		 60	[  0]	IST  	   		12	; if <unknown table>._nextWinBoost
		 61	[  0]	JMP  	 13		1	; 	goto 63
		 62	[  0]	KSHORT	 12		0	; slot12 = 0
		 63	[  0]	KNUM 	 13		0	; slot13 = 0.25
		 64	[  0]	CALL 	 10	2	3	; slot10 = math.max(slot11, slot12)
		 65	[  0]	TSETS	 10	8	84	; slot8._nextWinBoost = math.max
		 66	[  0]	TSETS	  9	8	85	; slot8._firstFailWaveUsed = slot9
		 67	[  0]	JMP  	  9		464	; 	goto 532
		 68	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		 69	[  0]	ISNES	  9		81	; if <unknown table>.key ~= "Rushtrail"
		 70	[  0]	JMP  	  9		30	; 	goto 101
		 71	[  0]	ISF  	   		3	; if not slot3
		 72	[  0]	JMP  	  9		25	; 	goto 98
		 73	[  0]	TGETS	  9	8	80	; slot9 = slot8._rushWins
		 74	[  0]	IST  	   		9	; if <unknown table>._rushWins
		 75	[  0]	JMP  	 10		1	; 	goto 77
		 76	[  0]	KSHORT	  9		0	; slot9 = 0
		 77	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 1
		 78	[  0]	TSETS	  9	8	80	; slot8._rushWins = slot9
		 79	[  0]	GGET 	  9		83	; slot9 = _env["math"]
		 80	[  0]	TGETS	  9	9	79	; slot9 = math.min
		 81	[  0]	TGETS	 11	8	80	; slot11 = slot8._rushWins
		 82	[  0]	IST  	   		11	; if <unknown table>._rushWins
		 83	[  0]	JMP  	 12		1	; 	goto 85
		 84	[  0]	KSHORT	 11		0	; slot11 = 0
		 85	[  0]	KSHORT	 12		5	; slot12 = 5
		 86	[  0]	CALL 	  9	2	3	; slot9 = math.min(math.max, slot11)
		 87	[  0]	MULNV	  9	9	2	; slot9 = 0.06 * math.min
		 88	[  0]	GGET 	 10		83	; slot10 = _env["math"]
		 89	[  0]	TGETS	 10	10	82	; slot10 = math.max
		 90	[  0]	TGETS	 12	8	84	; slot12 = slot8._nextWinBoost
		 91	[  0]	IST  	   		12	; if <unknown table>._nextWinBoost
		 92	[  0]	JMP  	 13		1	; 	goto 94
		 93	[  0]	KSHORT	 12		0	; slot12 = 0
		 94	[  0]	MOV  	 13		9	; slot13 = slot9
		 95	[  0]	CALL 	 10	2	3	; slot10 = math.max(slot11, slot12)
		 96	[  0]	TSETS	 10	8	84	; slot8._nextWinBoost = math.max
		 97	[  0]	JMP  	  9		434	; 	goto 532
		 98	[  0]	KSHORT	  9		0	; slot9 = 0
		 99	[  0]	TSETS	  9	8	80	; slot8._rushWins = slot9
		100	[  0]	JMP  	  9		431	; 	goto 532
		101	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		102	[  0]	ISNES	  9		78	; if <unknown table>.key ~= "MultiEchoMirror"
		103	[  0]	JMP  	  9		9	; 	goto 113
		104	[  0]	UGET 	  9		3	; slot9 = uv3"unknwon"
		105	[  0]	MOV  	 11		8	; slot11 = slot8
		106	[  0]	MOV  	 12		0	; slot12 = slot0
		107	[  0]	MOV  	 13		1	; slot13 = slot1
		108	[  0]	MOV  	 14		2	; slot14 = slot2
		109	[  0]	MOV  	 15		4	; slot15 = slot4
		110	[  0]	CALL 	  9	2	6	; slot9 = uv3"unknown"(math.max, slot11, slot12, slot13, slot14)
		111	[  0]	MOV  	  4		9	; slot4 = uv3"unknown"
		112	[  0]	JMP  	  9		419	; 	goto 532
		113	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		114	[  0]	ISNES	  9		77	; if <unknown table>.key ~= "DoubleLedger"
		115	[  0]	JMP  	  9		13	; 	goto 129
		116	[  0]	ISF  	   		3	; if not slot3
		117	[  0]	JMP  	  9		414	; 	goto 532
		118	[  0]	UGET 	  9		4	; slot9 = uv4"unknwon"
		119	[  0]	MOV  	 11		8	; slot11 = slot8
		120	[  0]	MOV  	 12		2	; slot12 = slot2
		121	[  0]	MOV  	 13		4	; slot13 = uv3"unknown"
		122	[  0]	ISFC 	 14		1	; slot14 = slot1; if not slot1
		123	[  0]	JMP  	 14		1	; 	goto 125
		124	[  0]	TGETS	 14	1	76	; slot14 = slot1.spinKey
		125	[  0]	MOV  	 15		0	; slot15 = slot0
		126	[  0]	CALL 	  9	2	6	; slot9 = uv4"unknown"(math.max, slot11, slot12, uv3"unknown", <unknown table>.spinKey)
		127	[  0]	MOV  	  4		9	; slot4 = uv4"unknown"
		128	[  0]	JMP  	  9		403	; 	goto 532
		129	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		130	[  0]	ISNES	  9		75	; if <unknown table>.key ~= "RewindClock"
		131	[  0]	JMP  	  9		5	; 	goto 137
		132	[  0]	IST  	   		3	; if slot3
		133	[  0]	JMP  	  9		398	; 	goto 532
		134	[  0]	KSHORT	  9		25	; slot9 = 25
		135	[  0]	TSETS	  9	8	74	; slot8._rewindCostReductionPending = slot9
		136	[  0]	JMP  	  9		395	; 	goto 532
		137	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		138	[  0]	ISNES	  9		73	; if <unknown table>.key ~= "MirageGoblet"
		139	[  0]	JMP  	  9		156	; 	goto 296
		140	[  0]	KPRI 	  9		1	; slot9 = false
		141	[  0]	ISF  	   		0	; if not slot0
		142	[  0]	JMP  	 10		30	; 	goto 173
		143	[  0]	TGETS	 10	0	72	; slot10 = slot0.winningLines
		144	[  0]	ISF  	   		10	; if not <unknown table>.winningLines
		145	[  0]	JMP  	 11		27	; 	goto 173
		146	[  0]	GGET 	 10		71	; slot10 = _env["type"]
		147	[  0]	TGETS	 12	0	72	; slot12 = slot0.winningLines
		148	[  0]	CALL 	 10	2	2	; slot10 = type(slot11)
		149	[  0]	ISNES	 10		70	; if type ~= "table"
		150	[  0]	JMP  	 10		22	; 	goto 173
		151	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		152	[  0]	GGET 	 11		69	; slot11 = _env["ipairs"]
		153	[  0]	TGETS	 13	0	72	; slot13 = slot0.winningLines
		154	[  0]	CALL 	 11	4	2	; slot11, slot12, slot13 = ipairs(<unknown table>.winningLines)
		155	[  0]	JMP  	 14		2	; 	goto 158
		156	[  0]	KPRI 	 16		2	; slot16 = true
		157	[  0]	TSETV	 16	10	15	; slot10[slot15] = slot16
		158	[  0]	ITERC	 14	3	3	; slot14, slot15, slot16 = ipairs, <unknown table>.winningLines, <unknown table>.winningLines; slot14, slot15 = ipairs(<unknown table>.winningLines, <unknown table>.winningLines)
		159	[  0]	ITERL	 14		-4	; <unknown table>.winningLines = <unknown table>.spinKey; if <unknown table>.spinKey != nil goto 156
		160	[  0]	TGETB	 11	10	1	; slot11 = slot10[1]
		161	[  0]	ISFC 	  9		11	; slot9 = slot11; if not slot11
		162	[  0]	JMP  	 12		10	; 	goto 173
		163	[  0]	TGETB	 11	10	2	; slot11 = slot10[2]
		164	[  0]	ISFC 	  9		11	; slot9 = slot11; if not slot11
		165	[  0]	JMP  	 12		7	; 	goto 173
		166	[  0]	TGETB	 11	10	3	; slot11 = slot10[3]
		167	[  0]	ISFC 	  9		11	; slot9 = slot11; if not slot11
		168	[  0]	JMP  	 12		4	; 	goto 173
		169	[  0]	TGETB	 11	10	4	; slot11 = slot10[4]
		170	[  0]	ISFC 	  9		11	; slot9 = slot11; if not slot11
		171	[  0]	JMP  	 12		1	; 	goto 173
		172	[  0]	TGETB	  9	10	5	; slot9 = slot10[5]
		173	[  0]	ISF  	   		9	; if not slot9
		174	[  0]	JMP  	 10		357	; 	goto 532
		175	[  0]	ISFC 	 10		0	; slot10 = slot0; if not slot0
		176	[  0]	JMP  	 10		1	; 	goto 178
		177	[  0]	TGETS	 10	0	68	; slot10 = slot0.symbol
		178	[  0]	IST  	   		10	; if <unknown table>.symbol
		179	[  0]	JMP  	 11		110	; 	goto 290
		180	[  0]	ISF  	   		1	; if not slot1
		181	[  0]	JMP  	 11		108	; 	goto 290
		182	[  0]	TGETS	 11	1	67	; slot11 = slot1.grid
		183	[  0]	ISF  	   		11	; if not <unknown table>.grid
		184	[  0]	JMP  	 12		105	; 	goto 290
		185	[  0]	ISF  	   		0	; if not slot0
		186	[  0]	JMP  	 11		103	; 	goto 290
		187	[  0]	TGETS	 11	0	72	; slot11 = slot0.winningLines
		188	[  0]	ISF  	   		11	; if not <unknown table>.winningLines
		189	[  0]	JMP  	 12		100	; 	goto 290
		190	[  0]	TNEW 	 11		9	; slot11 = new table( array: 9, dict: 1)
		191	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		192	[  0]	TDUP 	 13		66	; slot13 = copy table#k66
		193	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		194	[  0]	TDUP 	 13		65	; slot13 = copy table#k65
		195	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		196	[  0]	TDUP 	 13		64	; slot13 = copy table#k64
		197	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		198	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		199	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		200	[  0]	TDUP 	 13		63	; slot13 = copy table#k63
		201	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		202	[  0]	TDUP 	 13		62	; slot13 = copy table#k62
		203	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		204	[  0]	TDUP 	 13		61	; slot13 = copy table#k61
		205	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		206	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		207	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		208	[  0]	TDUP 	 13		60	; slot13 = copy table#k60
		209	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		210	[  0]	TDUP 	 13		59	; slot13 = copy table#k59
		211	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		212	[  0]	TDUP 	 13		58	; slot13 = copy table#k58
		213	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		214	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		215	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		216	[  0]	TDUP 	 13		57	; slot13 = copy table#k57
		217	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		218	[  0]	TDUP 	 13		56	; slot13 = copy table#k56
		219	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		220	[  0]	TDUP 	 13		55	; slot13 = copy table#k55
		221	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		222	[  0]	TSETB	 12	11	4	; slot11[4] = slot12
		223	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		224	[  0]	TDUP 	 13		54	; slot13 = copy table#k54
		225	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		226	[  0]	TDUP 	 13		53	; slot13 = copy table#k53
		227	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		228	[  0]	TDUP 	 13		52	; slot13 = copy table#k52
		229	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		230	[  0]	TSETB	 12	11	5	; slot11[5] = slot12
		231	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		232	[  0]	TDUP 	 13		51	; slot13 = copy table#k51
		233	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		234	[  0]	TDUP 	 13		50	; slot13 = copy table#k50
		235	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		236	[  0]	TDUP 	 13		49	; slot13 = copy table#k49
		237	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		238	[  0]	TSETB	 12	11	6	; slot11[6] = slot12
		239	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		240	[  0]	TDUP 	 13		48	; slot13 = copy table#k48
		241	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		242	[  0]	TDUP 	 13		47	; slot13 = copy table#k47
		243	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		244	[  0]	TDUP 	 13		46	; slot13 = copy table#k46
		245	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		246	[  0]	TSETB	 12	11	7	; slot11[7] = slot12
		247	[  0]	TNEW 	 12		4	; slot12 = new table( array: 4, dict: 1)
		248	[  0]	TDUP 	 13		45	; slot13 = copy table#k45
		249	[  0]	TSETB	 13	12	1	; slot12[1] = slot13
		250	[  0]	TDUP 	 13		44	; slot13 = copy table#k44
		251	[  0]	TSETB	 13	12	2	; slot12[2] = slot13
		252	[  0]	TDUP 	 13		43	; slot13 = copy table#k43
		253	[  0]	TSETB	 13	12	3	; slot12[3] = slot13
		254	[  0]	TSETB	 12	11	8	; slot11[8] = slot12
		255	[  0]	TGETS	 12	0	72	; slot12 = slot0.winningLines
		256	[  0]	TGETB	 12	12	1	; slot12 = <unknown table>.winningLines[1]
		257	[  0]	ISFC 	 13		12	; slot13 = slot12; if not slot12
		258	[  0]	JMP  	 13		1	; 	goto 260
		259	[  0]	TGETV	 13	11	12	; slot13 = slot11[slot12]
		260	[  0]	ISF  	   		13	; if not slot13
		261	[  0]	JMP  	 14		28	; 	goto 290
		262	[  0]	TGETS	 14	1	67	; slot14 = slot1.grid
		263	[  0]	TGETB	 15	13	1	; slot15 = slot13[1]
		264	[  0]	TGETB	 15	15	1	; slot15 = slot15[1]
		265	[  0]	TGETV	 14	14	15	; slot14 = <unknown table>.grid[slot15]
		266	[  0]	TGETB	 15	13	1	; slot15 = slot13[1]
		267	[  0]	TGETB	 15	15	2	; slot15 = slot15[2]
		268	[  0]	TGETV	 14	14	15	; slot14 = slot14[slot15]
		269	[  0]	TGETS	 15	1	67	; slot15 = slot1.grid
		270	[  0]	TGETB	 16	13	2	; slot16 = slot13[2]
		271	[  0]	TGETB	 16	16	1	; slot16 = slot16[1]
		272	[  0]	TGETV	 15	15	16	; slot15 = <unknown table>.grid[slot16]
		273	[  0]	TGETB	 16	13	2	; slot16 = slot13[2]
		274	[  0]	TGETB	 16	16	2	; slot16 = slot16[2]
		275	[  0]	TGETV	 15	15	16	; slot15 = slot15[slot16]
		276	[  0]	TGETS	 16	1	67	; slot16 = slot1.grid
		277	[  0]	TGETB	 17	13	3	; slot17 = slot13[3]
		278	[  0]	TGETB	 17	17	1	; slot17 = slot17[1]
		279	[  0]	TGETV	 16	16	17	; slot16 = <unknown table>.grid[slot17]
		280	[  0]	TGETB	 17	13	3	; slot17 = slot13[3]
		281	[  0]	TGETB	 17	17	2	; slot17 = slot17[2]
		282	[  0]	TGETV	 16	16	17	; slot16 = slot16[slot17]
		283	[  0]	UGET 	 17		5	; slot17 = uv5"unknwon"
		284	[  0]	MOV  	 19		14	; slot19 = slot14
		285	[  0]	MOV  	 20		15	; slot20 = slot15
		286	[  0]	MOV  	 21		16	; slot21 = slot16
		287	[  0]	CALL 	 17	2	4	; slot17 = uv5"unknown"(slot18, slot19, slot20)
		288	[  0]	ISTC 	 10		17	; slot10 = uv5"unknown"; if uv5"unknown"
		289	[  0]	JMP  	 18		0	; 	goto 290
		290	[  0]	ISF  	   		10	; if not slot10
		291	[  0]	JMP  	 11		240	; 	goto 532
		292	[  0]	TSETS	 10	8	42	; slot8._mirageTargetSym = slot10
		293	[  0]	KSHORT	 11		3	; slot11 = 3
		294	[  0]	TSETS	 11	8	41	; slot8._mirageSpins = slot11
		295	[  0]	JMP  	  9		236	; 	goto 532
		296	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		297	[  0]	ISNES	  9		40	; if <unknown table>.key ~= "Resonoscope"
		298	[  0]	JMP  	  9		159	; 	goto 458
		299	[  0]	ISF  	   		0	; if not slot0
		300	[  0]	JMP  	  9		231	; 	goto 532
		301	[  0]	TGETS	  9	0	72	; slot9 = slot0.winningLines
		302	[  0]	ISF  	   		9	; if not <unknown table>.winningLines
		303	[  0]	JMP  	 10		228	; 	goto 532
		304	[  0]	GGET 	  9		71	; slot9 = _env["type"]
		305	[  0]	TGETS	 11	0	72	; slot11 = slot0.winningLines
		306	[  0]	CALL 	  9	2	2	; slot9 = type(slot10)
		307	[  0]	ISNES	  9		70	; if type ~= "table"
		308	[  0]	JMP  	  9		223	; 	goto 532
		309	[  0]	ISF  	   		1	; if not slot1
		310	[  0]	JMP  	  9		221	; 	goto 532
		311	[  0]	TGETS	  9	1	67	; slot9 = slot1.grid
		312	[  0]	ISF  	   		9	; if not <unknown table>.grid
		313	[  0]	JMP  	 10		218	; 	goto 532
		314	[  0]	ISF  	   		1	; if not slot1
		315	[  0]	JMP  	  9		8	; 	goto 324
		316	[  0]	GGET 	  9		91	; slot9 = _env["tonumber"]
		317	[  0]	TGETS	 11	1	90	; slot11 = slot1.waveId
		318	[  0]	IST  	   		11	; if <unknown table>.waveId
		319	[  0]	JMP  	 12		1	; 	goto 321
		320	[  0]	KSHORT	 11		0	; slot11 = 0
		321	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		322	[  0]	IST  	   		9	; if tonumber
		323	[  0]	JMP  	 10		1	; 	goto 325
		324	[  0]	KSHORT	  9		0	; slot9 = 0
		325	[  0]	TGETS	 10	8	39	; slot10 = slot8._resonoUsedWave
		326	[  0]	IST  	   		10	; if <unknown table>._resonoUsedWave
		327	[  0]	JMP  	 11		1	; 	goto 329
		328	[  0]	KSHORT	 10		65535	; slot10 = 65535
		329	[  0]	ISEQV	 10		9	; if slot10 == slot9
		330	[  0]	JMP  	 10		201	; 	goto 532
		331	[  0]	TNEW 	 10		9	; slot10 = new table( array: 9, dict: 1)
		332	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		333	[  0]	TDUP 	 12		38	; slot12 = copy table#k38
		334	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		335	[  0]	TDUP 	 12		37	; slot12 = copy table#k37
		336	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		337	[  0]	TDUP 	 12		36	; slot12 = copy table#k36
		338	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		339	[  0]	TSETB	 11	10	1	; slot10[1] = slot11
		340	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		341	[  0]	TDUP 	 12		35	; slot12 = copy table#k35
		342	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		343	[  0]	TDUP 	 12		34	; slot12 = copy table#k34
		344	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		345	[  0]	TDUP 	 12		33	; slot12 = copy table#k33
		346	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		347	[  0]	TSETB	 11	10	2	; slot10[2] = slot11
		348	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		349	[  0]	TDUP 	 12		32	; slot12 = copy table#k32
		350	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		351	[  0]	TDUP 	 12		31	; slot12 = copy table#k31
		352	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		353	[  0]	TDUP 	 12		30	; slot12 = copy table#k30
		354	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		355	[  0]	TSETB	 11	10	3	; slot10[3] = slot11
		356	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		357	[  0]	TDUP 	 12		29	; slot12 = copy table#k29
		358	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		359	[  0]	TDUP 	 12		28	; slot12 = copy table#k28
		360	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		361	[  0]	TDUP 	 12		27	; slot12 = copy table#k27
		362	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		363	[  0]	TSETB	 11	10	4	; slot10[4] = slot11
		364	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		365	[  0]	TDUP 	 12		26	; slot12 = copy table#k26
		366	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		367	[  0]	TDUP 	 12		25	; slot12 = copy table#k25
		368	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		369	[  0]	TDUP 	 12		24	; slot12 = copy table#k24
		370	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		371	[  0]	TSETB	 11	10	5	; slot10[5] = slot11
		372	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		373	[  0]	TDUP 	 12		23	; slot12 = copy table#k23
		374	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		375	[  0]	TDUP 	 12		22	; slot12 = copy table#k22
		376	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		377	[  0]	TDUP 	 12		21	; slot12 = copy table#k21
		378	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		379	[  0]	TSETB	 11	10	6	; slot10[6] = slot11
		380	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		381	[  0]	TDUP 	 12		20	; slot12 = copy table#k20
		382	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		383	[  0]	TDUP 	 12		19	; slot12 = copy table#k19
		384	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		385	[  0]	TDUP 	 12		18	; slot12 = copy table#k18
		386	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		387	[  0]	TSETB	 11	10	7	; slot10[7] = slot11
		388	[  0]	TNEW 	 11		4	; slot11 = new table( array: 4, dict: 1)
		389	[  0]	TDUP 	 12		17	; slot12 = copy table#k17
		390	[  0]	TSETB	 12	11	1	; slot11[1] = slot12
		391	[  0]	TDUP 	 12		16	; slot12 = copy table#k16
		392	[  0]	TSETB	 12	11	2	; slot11[2] = slot12
		393	[  0]	TDUP 	 12		15	; slot12 = copy table#k15
		394	[  0]	TSETB	 12	11	3	; slot11[3] = slot12
		395	[  0]	TSETB	 11	10	8	; slot10[8] = slot11
		396	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		397	[  0]	GGET 	 12		69	; slot12 = _env["ipairs"]
		398	[  0]	TGETS	 14	0	72	; slot14 = slot0.winningLines
		399	[  0]	CALL 	 12	4	2	; slot12, slot13, slot14 = ipairs(slot13)
		400	[  0]	JMP  	 15		37	; 	goto 438
		401	[  0]	TGETV	 17	10	16	; slot17 = slot10[slot16]
		402	[  0]	ISF  	   		17	; if not slot17
		403	[  0]	JMP  	 18		34	; 	goto 438
		404	[  0]	TGETS	 18	1	67	; slot18 = slot1.grid
		405	[  0]	TGETB	 19	17	1	; slot19 = slot17[1]
		406	[  0]	TGETB	 19	19	1	; slot19 = slot19[1]
		407	[  0]	TGETV	 18	18	19	; slot18 = <unknown table>.grid[slot19]
		408	[  0]	TGETB	 19	17	1	; slot19 = slot17[1]
		409	[  0]	TGETB	 19	19	2	; slot19 = slot19[2]
		410	[  0]	TGETV	 18	18	19	; slot18 = slot18[slot19]
		411	[  0]	TGETS	 19	1	67	; slot19 = slot1.grid
		412	[  0]	TGETB	 20	17	2	; slot20 = slot17[2]
		413	[  0]	TGETB	 20	20	1	; slot20 = slot20[1]
		414	[  0]	TGETV	 19	19	20	; slot19 = <unknown table>.grid[slot20]
		415	[  0]	TGETB	 20	17	2	; slot20 = slot17[2]
		416	[  0]	TGETB	 20	20	2	; slot20 = slot20[2]
		417	[  0]	TGETV	 19	19	20	; slot19 = slot19[slot20]
		418	[  0]	TGETS	 20	1	67	; slot20 = slot1.grid
		419	[  0]	TGETB	 21	17	3	; slot21 = slot17[3]
		420	[  0]	TGETB	 21	21	1	; slot21 = slot21[1]
		421	[  0]	TGETV	 20	20	21	; slot20 = <unknown table>.grid[slot21]
		422	[  0]	TGETB	 21	17	3	; slot21 = slot17[3]
		423	[  0]	TGETB	 21	21	2	; slot21 = slot21[2]
		424	[  0]	TGETV	 20	20	21	; slot20 = slot20[slot21]
		425	[  0]	UGET 	 21		5	; slot21 = uv5"unknwon"
		426	[  0]	MOV  	 23		18	; slot23 = slot18
		427	[  0]	MOV  	 24		19	; slot24 = slot19
		428	[  0]	MOV  	 25		20	; slot25 = slot20
		429	[  0]	CALL 	 21	2	4	; slot21 = uv5"unknown"(slot22, slot23, slot24)
		430	[  0]	ISF  	   		21	; if not uv5"unknown"
		431	[  0]	JMP  	 22		6	; 	goto 438
		432	[  0]	TGETV	 22	11	21	; slot22 = slot11[uv5"unknown"]
		433	[  0]	IST  	   		22	; if slot22
		434	[  0]	JMP  	 23		1	; 	goto 436
		435	[  0]	KSHORT	 22		0	; slot22 = 0
		436	[  0]	ADDVN	 22	22	1	; slot22 = slot22 + 1
		437	[  0]	TSETV	 22	11	21	; slot11[uv5"unknown"] = slot22
		438	[  0]	ITERC	 15	3	3	; slot15, slot16, slot17 = ipairs, slot13, <unknown table>.winningLines; slot15, slot16 = ipairs(slot13, <unknown table>.winningLines)
		439	[  0]	ITERL	 15		-39	; <unknown table>.winningLines = slot15; if slot15 != nil goto 401
		440	[  0]	KPRI 	 12		1	; slot12 = false
		441	[  0]	GGET 	 13		14	; slot13 = _env["pairs"]
		442	[  0]	MOV  	 15		11	; slot15 = slot11
		443	[  0]	CALL 	 13	4	2	; slot13, slot14, slot15 = pairs(<unknown table>.winningLines)
		444	[  0]	ISNEXT	 16		5	; Verify ITERN at 450; goto 450
		445	[  0]	KSHORT	 18		3	; slot18 = 3
		446	[  0]	ISGT 	 18		17	; if slot18 > slot17
		447	[  0]	JMP  	 18		2	; 	goto 450
		448	[  0]	KPRI 	 12		2	; slot12 = true
		449	[  0]	JMP  	 13		2	; 	goto 452
		450	[  0]	ITERN	 16	3	3	; slot16, slot17, slot18 = pairs, <unknown table>.winningLines, slot15; slot16, slot17 = pairs(<unknown table>.winningLines, slot15)
		451	[  0]	ITERL	 16		-7	; slot15 = slot16; if slot16 != nil goto 445
		452	[  0]	ISF  	   		12	; if not slot12
		453	[  0]	JMP  	 13		78	; 	goto 532
		454	[  0]	KPRI 	 13		2	; slot13 = true
		455	[  0]	TSETS	 13	8	13	; slot8._resonoJackpotNext = slot13
		456	[  0]	TSETS	  9	8	39	; slot8._resonoUsedWave = slot9
		457	[  0]	JMP  	  9		74	; 	goto 532
		458	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		459	[  0]	ISNES	  9		12	; if <unknown table>.key ~= "Prosperfang"
		460	[  0]	JMP  	  9		27	; 	goto 488
		461	[  0]	ISF  	   		3	; if not slot3
		462	[  0]	JMP  	  9		22	; 	goto 485
		463	[  0]	TGETS	  9	8	11	; slot9 = slot8._pfWins
		464	[  0]	IST  	   		9	; if <unknown table>._pfWins
		465	[  0]	JMP  	 10		1	; 	goto 467
		466	[  0]	KSHORT	  9		0	; slot9 = 0
		467	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 1
		468	[  0]	TSETS	  9	8	11	; slot8._pfWins = slot9
		469	[  0]	TGETS	  9	8	11	; slot9 = slot8._pfWins
		470	[  0]	KSHORT	 10		3	; slot10 = 3
		471	[  0]	ISGT 	 10		9	; if slot10 > <unknown table>._pfWins
		472	[  0]	JMP  	  9		59	; 	goto 532
		473	[  0]	GGET 	  9		83	; slot9 = _env["math"]
		474	[  0]	TGETS	  9	9	82	; slot9 = math.max
		475	[  0]	TGETS	 11	8	10	; slot11 = slot8._prosperNextMul
		476	[  0]	IST  	   		11	; if <unknown table>._prosperNextMul
		477	[  0]	JMP  	 12		1	; 	goto 479
		478	[  0]	KSHORT	 11		0	; slot11 = 0
		479	[  0]	KNUM 	 12		3	; slot12 = 1.1
		480	[  0]	CALL 	  9	2	3	; slot9 = math.max(slot10, slot11)
		481	[  0]	TSETS	  9	8	10	; slot8._prosperNextMul = math.max
		482	[  0]	KSHORT	  9		0	; slot9 = 0
		483	[  0]	TSETS	  9	8	11	; slot8._pfWins = slot9
		484	[  0]	JMP  	  9		47	; 	goto 532
		485	[  0]	KSHORT	  9		0	; slot9 = 0
		486	[  0]	TSETS	  9	8	11	; slot8._pfWins = slot9
		487	[  0]	JMP  	  9		44	; 	goto 532
		488	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		489	[  0]	ISNES	  9		9	; if <unknown table>.key ~= "ReverseShell"
		490	[  0]	JMP  	  9		20	; 	goto 511
		491	[  0]	ISF  	   		3	; if not slot3
		492	[  0]	JMP  	  9		3	; 	goto 496
		493	[  0]	KSHORT	  9		0	; slot9 = 0
		494	[  0]	TSETS	  9	8	8	; slot8._rsFails = slot9
		495	[  0]	JMP  	  9		36	; 	goto 532
		496	[  0]	TGETS	  9	8	8	; slot9 = slot8._rsFails
		497	[  0]	IST  	   		9	; if <unknown table>._rsFails
		498	[  0]	JMP  	 10		1	; 	goto 500
		499	[  0]	KSHORT	  9		0	; slot9 = 0
		500	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 1
		501	[  0]	TSETS	  9	8	8	; slot8._rsFails = slot9
		502	[  0]	TGETS	  9	8	8	; slot9 = slot8._rsFails
		503	[  0]	KSHORT	 10		3	; slot10 = 3
		504	[  0]	ISGT 	 10		9	; if slot10 > <unknown table>._rsFails
		505	[  0]	JMP  	  9		26	; 	goto 532
		506	[  0]	KPRI 	  9		2	; slot9 = true
		507	[  0]	TSETS	  9	8	7	; slot8._forceNextWinOnce = slot9
		508	[  0]	KSHORT	  9		0	; slot9 = 0
		509	[  0]	TSETS	  9	8	8	; slot8._rsFails = slot9
		510	[  0]	JMP  	  9		21	; 	goto 532
		511	[  0]	TGETS	  9	8	87	; slot9 = slot8.key
		512	[  0]	ISNES	  9		6	; if <unknown table>.key ~= "EntropySpoon"
		513	[  0]	JMP  	  9		18	; 	goto 532
		514	[  0]	IST  	   		3	; if slot3
		515	[  0]	JMP  	  9		16	; 	goto 532
		516	[  0]	TGETS	  9	0	5	; slot9 = slot0._coreFinalOutcomePrepared
		517	[  0]	IST  	   		9	; if <unknown table>._coreFinalOutcomePrepared
		518	[  0]	JMP  	  9		13	; 	goto 532
		519	[  0]	GGET 	  9		4	; slot9 = _env["love"]
		520	[  0]	TGETS	  9	9	83	; slot9 = love.math
		521	[  0]	TGETS	  9	9	3	; slot9 = love.math.random
		522	[  0]	CALL 	  9	2	1	; slot9 = love.math.random()
		523	[  0]	KNUM 	 10		4	; slot10 = 0.1
		524	[  0]	ISGE 	  9		10	; if love.math.random >= slot10
		525	[  0]	JMP  	  9		6	; 	goto 532
		526	[  0]	KPRI 	  9		2	; slot9 = true
		527	[  0]	TSETS	  9	0	2	; slot0._coreAutoReroll = slot9
		528	[  0]	KPRI 	  9		2	; slot9 = true
		529	[  0]	TSETS	  9	8	1	; slot8._uiTrigger = slot9
		530	[  0]	KPRI 	  9		2	; slot9 = true
		531	[  0]	TSETS	  9	8	0	; slot8._entropySustainNext = slot9
		532	[  0]	ITERC	  8	2	3	; slot8, slot9, slot10 = uv2"unknown", slot6, slot7; slot8 = uv2"unknown"(slot6, slot7)
		533	[  0]	ITERL	  8		-500	; slot7 = slot8; if slot8 != nil goto 34
		534	[  0]	UGET 	  5		6	; slot5 = uv6"unknwon"
		535	[  0]	CALL 	  5	1	1	;  = uv6"unknown"()
		536	[  0]	RET1 	  4		2	; return uv4"unknown"
	371	[  0]	TSETV	 66	2	65	; slot2[slot65] = slot66
	372	[  0]	KSTR 	 65		7	; slot65 = "remove"
	373	[  0]	FNEW 	 66		6	; N/A:0-0: 1 args, 2 upvalues, 14 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  1		0	; slot1 = slot0
		  2	[  0]	GGET 	  2		14	; slot2 = _env["type"]
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  5	[  0]	ISNES	  2		13	; if slot2 ~= "table"
		  6	[  0]	JMP  	  2		4	; 	goto 11
		  7	[  0]	TGETS	  2	0	12	; slot2 = slot0.key
		  8	[  0]	ISTC 	  1		2	; slot1 = <unknown table>.key; if <unknown table>.key
		  9	[  0]	JMP  	  3		1	; 	goto 11
		 10	[  0]	TGETS	  1	0	11	; slot1 = slot0.id
		 11	[  0]	GGET 	  2		14	; slot2 = _env["type"]
		 12	[  0]	MOV  	  4		1	; slot4 = <unknown table>.id
		 13	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		 14	[  0]	ISEQS	  2		10	; if slot2 == "string"
		 15	[  0]	JMP  	  2		2	; 	goto 18
		 16	[  0]	KPRI 	  2		1	; slot2 = false
		 17	[  0]	RET1 	  2		2	; return slot2
		 18	[  0]	GGET 	  2		9	; slot2 = _env["tonumber"]
		 19	[  0]	MOV  	  4		1	; slot4 = <unknown table>.id
		 20	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 21	[  0]	ISF  	   		2	; if not slot2
		 22	[  0]	JMP  	  3		9	; 	goto 32
		 23	[  0]	GGET 	  2		10	; slot2 = _env["string"]
		 24	[  0]	TGETS	  2	2	8	; slot2 = string.format
		 25	[  0]	KSTR 	  4		7	; slot4 = "%02d"
		 26	[  0]	GGET 	  5		9	; slot5 = _env["tonumber"]
		 27	[  0]	MOV  	  7		1	; slot7 = <unknown table>.id
		 28	[  0]	CALL 	  5	0	2	; MULTRES = tonumber(slot6)
		 29	[  0]	CALLM	  2	2	1	; slot2 = string.format(slot3, ...MULTRES)
		 30	[  0]	IST  	   		2	; if string.format
		 31	[  0]	JMP  	  3		1	; 	goto 33
		 32	[  0]	MOV  	  2		1	; slot2 = <unknown table>.id
		 33	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 34	[  0]	TGETS	  3	3	6	; slot3 = uv0"unknown".active
		 35	[  0]	LEN  	  3		3	; slot3 = #uv0"unknown".active
		 36	[  0]	KSHORT	  4		1	; slot4 = 1
		 37	[  0]	KSHORT	  5		65535	; slot5 = 65535
		 38	[  0]	FORI 	  3		51	; for slot6 = slot3,slot4,slot5 else goto 90
		 39	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 40	[  0]	TGETS	  7	7	6	; slot7 = uv0"unknown".active
		 41	[  0]	TGETV	  7	7	6	; slot7 = uv0"unknown".active[slot6]
		 42	[  0]	ISFC 	  8		7	; slot8 = slot7; if not slot7
		 43	[  0]	JMP  	  8		12	; 	goto 56
		 44	[  0]	TGETS	  8	7	12	; slot8 = slot7.key
		 45	[  0]	IST  	   		8	; if <unknown table>.key
		 46	[  0]	JMP  	  9		9	; 	goto 56
		 47	[  0]	TGETS	  8	7	5	; slot8 = slot7.def
		 48	[  0]	ISF  	   		8	; if not <unknown table>.def
		 49	[  0]	JMP  	  9		6	; 	goto 56
		 50	[  0]	TGETS	  8	7	5	; slot8 = slot7.def
		 51	[  0]	TGETS	  8	8	12	; slot8 = <unknown table>.def.key
		 52	[  0]	IST  	   		8	; if <unknown table>.def.key
		 53	[  0]	JMP  	  9		2	; 	goto 56
		 54	[  0]	TGETS	  8	7	5	; slot8 = slot7.def
		 55	[  0]	TGETS	  8	8	11	; slot8 = <unknown table>.def.id
		 56	[  0]	ISFC 	  9		7	; slot9 = slot7; if not slot7
		 57	[  0]	JMP  	  9		5	; 	goto 63
		 58	[  0]	TGETS	  9	7	5	; slot9 = slot7.def
		 59	[  0]	ISF  	   		9	; if not <unknown table>.def
		 60	[  0]	JMP  	 10		2	; 	goto 63
		 61	[  0]	TGETS	  9	7	5	; slot9 = slot7.def
		 62	[  0]	TGETS	  9	9	11	; slot9 = <unknown table>.def.id
		 63	[  0]	ISEQV	  8		1	; if <unknown table>.def.id == <unknown table>.id
		 64	[  0]	JMP  	 10		4	; 	goto 69
		 65	[  0]	ISEQV	  9		1	; if <unknown table>.def.id == <unknown table>.id
		 66	[  0]	JMP  	 10		2	; 	goto 69
		 67	[  0]	ISNEV	  9		2	; if <unknown table>.def.id ~= <unknown table>.id
		 68	[  0]	JMP  	 10		20	; 	goto 89
		 69	[  0]	TGETS	 10	7	12	; slot10 = slot7.key
		 70	[  0]	ISNES	 10		4	; if <unknown table>.key ~= "OldCrown"
		 71	[  0]	JMP  	 10		7	; 	goto 79
		 72	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 73	[  0]	TGETS	 10	10	3	; slot10 = uv0"unknown"._weightsApplied
		 74	[  0]	ISF  	   		10	; if not uv0"unknown"._weightsApplied
		 75	[  0]	JMP  	 11		3	; 	goto 79
		 76	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 77	[  0]	TGETS	 10	10	2	; slot10 = uv1"unknown".finishSpinModifiers
		 78	[  0]	CALL 	 10	1	1	;  = uv1"unknown".finishSpinModifiers()
		 79	[  0]	KPRI 	 10		0	; slot10 = nil
		 80	[  0]	TSETS	 10	7	1	; slot7._oldCrownTargetSym = slot10
		 81	[  0]	GGET 	 10		13	; slot10 = _env["table"]
		 82	[  0]	TGETS	 10	10	0	; slot10 = table.remove
		 83	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 84	[  0]	TGETS	 12	12	6	; slot12 = uv0"unknown".active
		 85	[  0]	MOV  	 13		6	; slot13 = slot6
		 86	[  0]	CALL 	 10	1	3	;  = table.remove(slot11, uv0"unknown".active)
		 87	[  0]	KPRI 	 10		2	; slot10 = true
		 88	[  0]	RET1 	 10		2	; return slot10
		 89	[  0]	FORL 	  3		-51	; slot6 = slot6 + slot5; if cmp(slot6, sign slot5,  slot4) goto 39
		 90	[  0]	KPRI 	  3		1	; slot3 = false
		 91	[  0]	RET1 	  3		2	; return slot3
	374	[  0]	TSETV	 66	2	65	; slot2[slot65] = slot66
	375	[  0]	KSTR 	 65		5	; slot65 = "getIds"
	376	[  0]	FNEW 	 66		4	; N/A:0-0: 0 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
		  2	[  0]	GGET 	  1		5	; slot1 = _env["ipairs"]
		  3	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  4	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		  5	[  0]	JMP  	  4		5	; 	goto 11
		  6	[  0]	TGETS	  6	5	4	; slot6 = slot5.id
		  7	[  0]	IST  	   		6	; if <unknown table>.id
		  8	[  0]	JMP  	  7		1	; 	goto 10
		  9	[  0]	TGETS	  6	5	3	; slot6 = slot5.key
		 10	[  0]	TSETV	  6	0	4	; slot0[slot4] = <unknown table>.key
		 11	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown"; slot4, slot5 = slot1(slot2, uv0"unknown")
		 12	[  0]	ITERL	  4		-7	; uv0"unknown" = slot4; if slot4 != nil goto 6
		 13	[  0]	GGET 	  1		2	; slot1 = _env["table"]
		 14	[  0]	TGETS	  1	1	1	; slot1 = table.sort
		 15	[  0]	MOV  	  3		0	; slot3 = slot0
		 16	[  0]	FNEW 	  4		0	; N/A:0-0: 2 args, 0 upvalues, 8 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	GGET 	  2		1	; slot2 = _env["tonumber"]
			  2	[  0]	MOV  	  4		0	; slot4 = slot0
			  3	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
			  4	[  0]	GGET 	  3		1	; slot3 = _env["tonumber"]
			  5	[  0]	MOV  	  5		1	; slot5 = slot1
			  6	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
			  7	[  0]	ISF  	   		2	; if not slot2
			  8	[  0]	JMP  	  4		8	; 	goto 17
			  9	[  0]	ISF  	   		3	; if not tonumber
			 10	[  0]	JMP  	  4		6	; 	goto 17
			 11	[  0]	ISLT 	  2		3	; if slot2 < tonumber
			 12	[  0]	JMP  	  4		2	; 	goto 15
			 13	[  0]	KPRI 	  4		1	; slot4 = false
			 14	[  0]	JMP  	  5		1	; 	goto 16
			 15	[  0]	KPRI 	  4		2	; slot4 = true
			 16	[  0]	RET1 	  4		2	; return slot4
			 17	[  0]	GGET 	  4		0	; slot4 = _env["tostring"]
			 18	[  0]	MOV  	  6		0	; slot6 = slot0
			 19	[  0]	CALL 	  4	2	2	; slot4 = tostring(slot5)
			 20	[  0]	GGET 	  5		0	; slot5 = _env["tostring"]
			 21	[  0]	MOV  	  7		1	; slot7 = slot1
			 22	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
			 23	[  0]	ISLT 	  4		5	; if tostring < tostring
			 24	[  0]	JMP  	  4		2	; 	goto 27
			 25	[  0]	KPRI 	  4		1	; slot4 = false
			 26	[  0]	JMP  	  5		1	; 	goto 28
			 27	[  0]	KPRI 	  4		2	; slot4 = true
			 28	[  0]	RET1 	  4		2	; return slot4
		 17	[  0]	CALL 	  1	1	3	;  = table.sort(slot2, slot3)
		 18	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 19
		 19	[  0]	RET1 	  0		2	; return slot0
	377	[  0]	TSETV	 66	2	65	; slot2[slot65] = slot66
	378	[  0]	KSTR 	 65		3	; slot65 = "getById"
	379	[  0]	FNEW 	 66		2	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	GGET 	  1		7	; slot1 = _env["tostring"]
		  6	[  0]	MOV  	  3		0	; slot3 = slot0
		  7	[  0]	CALL 	  1	2	2	; slot1 = tostring(slot2)
		  8	[  0]	GGET 	  2		6	; slot2 = _env["tonumber"]
		  9	[  0]	MOV  	  4		1	; slot4 = slot1
		 10	[  0]	CALL 	  2	2	2	; slot2 = tonumber(slot3)
		 11	[  0]	ISF  	   		2	; if not slot2
		 12	[  0]	JMP  	  3		8	; 	goto 21
		 13	[  0]	GGET 	  2		5	; slot2 = _env["string"]
		 14	[  0]	TGETS	  2	2	4	; slot2 = string.format
		 15	[  0]	KSTR 	  4		3	; slot4 = "%02d"
		 16	[  0]	GGET 	  5		6	; slot5 = _env["tonumber"]
		 17	[  0]	MOV  	  7		1	; slot7 = slot1
		 18	[  0]	CALL 	  5	0	2	; MULTRES = tonumber(slot6)
		 19	[  0]	CALLM	  2	2	1	; slot2 = string.format(slot3, ...MULTRES)
		 20	[  0]	MOV  	  1		2	; slot1 = string.format
		 21	[  0]	GGET 	  2		2	; slot2 = _env["ipairs"]
		 22	[  0]	UGET 	  4		0	; slot4 = uv0"unknwon"
		 23	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 24	[  0]	JMP  	  5		7	; 	goto 32
		 25	[  0]	TGETS	  7	6	1	; slot7 = slot6.id
		 26	[  0]	ISEQV	  7		1	; if <unknown table>.id == string.format
		 27	[  0]	JMP  	  7		3	; 	goto 31
		 28	[  0]	TGETS	  7	6	0	; slot7 = slot6.key
		 29	[  0]	ISNEV	  7		1	; if <unknown table>.key ~= string.format
		 30	[  0]	JMP  	  7		1	; 	goto 32
		 31	[  0]	RET1 	  6		2	; return slot6
		 32	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, uv0"unknown"; slot5, slot6 = slot2(slot3, uv0"unknown")
		 33	[  0]	ITERL	  5		-9	; uv0"unknown" = tonumber; if tonumber != nil goto 25
		 34	[  0]	KPRI 	  2		0	; slot2 = nil
		 35	[  0]	RET1 	  2		2	; return slot2
	380	[  0]	TSETV	 66	2	65	; slot2[slot65] = slot66
	381	[  0]	KSTR 	 65		1	; slot65 = "reset"
	382	[  0]	FNEW 	 66		0	; N/A:0-0: 0 args, 2 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	TGETS	  0	0	4	; slot0 = uv0"unknown".finishSpinModifiers
		  3	[  0]	CALL 	  0	1	1	;  = uv0"unknown".finishSpinModifiers()
		  4	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  5	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  6	[  0]	TSETS	  1	0	3	; uv1"unknown".active = slot1
		  7	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		  8	[  0]	KPRI 	  1		0	; slot1 = nil
		  9	[  0]	TSETS	  1	0	2	; uv1"unknown"._baseForceProb = slot1
		 10	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 11	[  0]	KPRI 	  1		0	; slot1 = nil
		 12	[  0]	TSETS	  1	0	1	; uv1"unknown"._baseSymbolWeights = slot1
		 13	[  0]	UGET 	  0		1	; slot0 = uv1"unknwon"
		 14	[  0]	KPRI 	  1		1	; slot1 = false
		 15	[  0]	TSETS	  1	0	0	; uv1"unknown"._weightsApplied = slot1
		 16	[  0]	RET0 	  0		1	; return
	383	[  0]	TSETV	 66	2	65	; slot2[slot65] = slot66
	384	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 385
	385	[  0]	RET1 	  2		2	; return slot2
	
