;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\data\randomoption.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 6 slots
	;;;; constant tables ;;;;
	ktable#32 = [
		[chance] = 1,
		]
	
	
	ktable#33 = [
		[requiresDeploymentRoom] = true,
		[name] = 거물,
		[icon] = src/sprites/icons/randomoption/32heavyweight.png,
		[initiallyUnlocked] = false,
		[source] = Promotion,
		[effect] = 유닛 슬롯을 2명분 차지하는 대신 {hp.png} +50%, {atk.png} +35%.,
		[rarity] = rare,
		[id] = 32,
		[incompatibleWith] = 14,
		]
	
	
	ktable#34 = [
		[value] = +9,
		[chance] = 0.05,
		]
	
	
	ktable#35 = [
		[value] = +8,
		[chance] = 0.12,
		]
	
	
	ktable#36 = [
		[value] = +7,
		[chance] = 0.18,
		]
	
	
	ktable#37 = [
		[value] = +6,
		[chance] = 0.25,
		]
	
	
	ktable#38 = [
		[value] = +5,
		[chance] = 0.4,
		]
	
	
	ktable#39 = [
		[rarity] = common,
		[name] = 현상금,
		[icon] = src/sprites/icons/randomoption/31bounty.png,
		[id] = 31,
		[requiresBountySource] = true,
		[source] = Both,
		[effect] = 적을 처치할 때마다 {gold.png} +5~9.,
		]
	
	
	ktable#40 = [
		[value] = -35%,
		[chance] = 0.05,
		]
	
	
	ktable#41 = [
		[value] = -30%,
		[chance] = 0.12,
		]
	
	
	ktable#42 = [
		[value] = -25%,
		[chance] = 0.18,
		]
	
	
	ktable#43 = [
		[value] = -20%,
		[chance] = 0.25,
		]
	
	
	ktable#44 = [
		[value] = -15%,
		[chance] = 0.4,
		]
	
	
	ktable#45 = [
		[rarity] = rare,
		[name] = 연쇄 시전,
		[icon] = src/sprites/icons/randomoption/30chaincasting.png,
		[id] = 30,
		[requiresAttackSkill] = true,
		[source] = Promotion,
		[effect] = 공격 스킬로 적을 처치하면 해당 스킬의 남은 쿨타임 -15~35%. 스킬 1회당 한 번만 발동합니다.,
		]
	
	
	ktable#46 = [
		[chance] = 1,
		]
	
	
	ktable#47 = [
		[name] = 고정 태세,
		[icon] = src/sprites/icons/randomoption/29anchoredstance.png,
		[initiallyUnlocked] = false,
		[source] = Promotion,
		[effect] = 이동할 수 없는 대신 {dist.png} +40, {atk.png} +15%.,
		[requiresRangedBasicAttack] = true,
		[rarity] = rare,
		[id] = 29,
		]
	
	
	ktable#48 = [
		[chance] = 1,
		]
	
	
	ktable#49 = [
		[effect] = {aspd.png} +40%. {atk.png} -30%.,
		[name] = 속공,
		[icon] = src/sprites/icons/randomoption/28rapidstrikes.png,
		[initiallyUnlocked] = false,
		[source] = Promotion,
		[requiresBasicAttack] = true,
		[rarity] = rare,
		[id] = 28,
		]
	
	
	ktable#50 = [
		[value] = +35%,
		[chance] = 0.05,
		]
	
	
	ktable#51 = [
		[value] = +30%,
		[chance] = 0.12,
		]
	
	
	ktable#52 = [
		[value] = +25%,
		[chance] = 0.18,
		]
	
	
	ktable#53 = [
		[value] = +20%,
		[chance] = 0.25,
		]
	
	
	ktable#54 = [
		[value] = +15%,
		[chance] = 0.4,
		]
	
	
	ktable#55 = [
		[rarity] = common,
		[name] = 기회 포착,
		[icon] = src/sprites/icons/randomoption/27opportunitystrikes.png,
		[id] = 27,
		[requiresBasicAttack] = true,
		[source] = Both,
		[effect] = 디버프 상태인 적에게 기본 공격 피해 +15~35%.,
		]
	
	
	ktable#56 = [
		[chance] = 1,
		]
	
	
	ktable#57 = [
		[rarity] = legend,
		[name] = 다재다능,
		[icon] = src/sprites/icons/randomoption/26versatile.png,
		[id] = 26,
		[initiallyUnlocked] = false,
		[source] = Promotion,
		[effect] = 자신의 병종과 관계없이 모든 병종의 기본 훈련서 효과를 받습니다.,
		]
	
	
	ktable#58 = [
		[chance] = 1,
		]
	
	
	ktable#59 = [
		[effect] = 기본 공격 시, 공격 가능한 적 중 현재 {hp.png}이 가장 적은 적을 우선 공격합니다.,
		[name] = 사냥 본능,
		[icon] = src/sprites/icons/randomoption/25predatoryinstinct.png,
		[initiallyUnlocked] = false,
		[source] = Both,
		[requiresBasicAttack] = true,
		[rarity] = rare,
		[id] = 25,
		]
	
	
	ktable#60 = [
		[chance] = 1,
		]
	
	
	ktable#61 = [
		[rarity] = common,
		[name] = 전투 경험,
		[icon] = src/sprites/icons/randomoption/24combatexperience.png,
		[id] = 24,
		[requiresBasicAttack] = true,
		[source] = Spawn,
		[effect] = 적을 10명 처치할 때마다 기본 공격 피해 +1%.,
		]
	
	
	ktable#62 = [
		[value] = +1%,
		[chance] = 1,
		]
	
	
	ktable#63 = [
		[id] = 23,
		[name] = 노림수,
		[icon] = src/sprites/icons/randomoption/23calculatedluck.png,
		[initiallyUnlocked] = false,
		[source] = Spawn,
		[effect] = 넛지로 새 당첨선을 만들 때마다 {atk.png} +1%.,
		[rarity] = rare,
		[requiresNudge] = true,
		]
	
	
	ktable#64 = [
		[value] = -16%,
		[chance] = 0.05,
		]
	
	
	ktable#65 = [
		[value] = -14%,
		[chance] = 0.12,
		]
	
	
	ktable#66 = [
		[value] = -12%,
		[chance] = 0.18,
		]
	
	
	ktable#67 = [
		[value] = -10%,
		[chance] = 0.25,
		]
	
	
	ktable#68 = [
		[value] = -8%,
		[chance] = 0.4,
		]
	
	
	ktable#69 = [
		[rarity] = rare,
		[name] = 기술 가속,
		[icon] = src/sprites/icons/randomoption/22skillmastery.png,
		[id] = 22,
		[requiresActiveSkill] = true,
		[source] = Promotion,
		[effect] = 액티브 스킬 쿨타임 -8~16%,
		]
	
	
	ktable#70 = [
		[value] = +50%,
		[chance] = 0.05,
		]
	
	
	ktable#71 = [
		[value] = +45%,
		[chance] = 0.12,
		]
	
	
	ktable#72 = [
		[value] = +40%,
		[chance] = 0.18,
		]
	
	
	ktable#73 = [
		[value] = +35%,
		[chance] = 0.25,
		]
	
	
	ktable#74 = [
		[value] = +30%,
		[chance] = 0.4,
		]
	
	
	ktable#75 = [
		[rarity] = legend,
		[name] = 보스 슬레이어,
		[icon] = src/sprites/icons/randomoption/21bossprep.png,
		[id] = 21,
		[source] = Both,
		[effect] = 보스 웨이브 전투시 {atk.png} +30~50%,
		]
	
	
	ktable#76 = [
		[value] = +50%,
		[chance] = 0.05,
		]
	
	
	ktable#77 = [
		[value] = +45%,
		[chance] = 0.12,
		]
	
	
	ktable#78 = [
		[value] = +40%,
		[chance] = 0.18,
		]
	
	
	ktable#79 = [
		[value] = +35%,
		[chance] = 0.25,
		]
	
	
	ktable#80 = [
		[value] = +30%,
		[chance] = 0.4,
		]
	
	
	ktable#81 = [
		[rarity] = legend,
		[name] = 결전의 날,
		[icon] = src/sprites/icons/randomoption/20judgementprep.png,
		[id] = 20,
		[source] = Both,
		[effect] = 심판 웨이브 전투시 {atk.png} +30~50%,
		]
	
	
	ktable#82 = [
		[value] = +35%,
		[chance] = 0.05,
		]
	
	
	ktable#83 = [
		[value] = +30%,
		[chance] = 0.12,
		]
	
	
	ktable#84 = [
		[value] = +25%,
		[chance] = 0.18,
		]
	
	
	ktable#85 = [
		[value] = +20%,
		[chance] = 0.25,
		]
	
	
	ktable#86 = [
		[value] = +15%,
		[chance] = 0.4,
		]
	
	
	ktable#87 = [
		[rarity] = rare,
		[name] = 기지 수호자,
		[icon] = src/sprites/icons/randomoption/19baseguardian.png,
		[id] = 19,
		[source] = Promotion,
		[effect] = 기지 근처의 적을 우선 공격하고, 해당 적에게 주는 피해 {atk.png} +15~35%,
		]
	
	
	ktable#88 = [
		[value] = +250,
		[chance] = 0.05,
		]
	
	
	ktable#89 = [
		[value] = +150,
		[chance] = 0.12,
		]
	
	
	ktable#90 = [
		[value] = +100,
		[chance] = 0.18,
		]
	
	
	ktable#91 = [
		[value] = +75,
		[chance] = 0.25,
		]
	
	
	ktable#92 = [
		[value] = +50,
		[chance] = 0.4,
		]
	
	
	ktable#93 = [
		[rare] = true,
		[normal] = true,
		[advanced] = true,
		]
	
	
	ktable#94 = [
		[rarity] = common,
		[name] = 비상금,
		[icon] = src/sprites/icons/randomoption/18gold.png,
		[id] = 18,
		[source] = Spawn,
		[effect] = 흡수될 시 {gold.png} +50~250,
		]
	
	
	ktable#95 = [
		[damageReduction] = -7%,
		[value] = +16%,
		[chance] = 0.05,
		]
	
	
	ktable#96 = [
		[damageReduction] = -6%,
		[value] = +14%,
		[chance] = 0.12,
		]
	
	
	ktable#97 = [
		[damageReduction] = -5%,
		[value] = +12%,
		[chance] = 0.18,
		]
	
	
	ktable#98 = [
		[damageReduction] = -4%,
		[value] = +10%,
		[chance] = 0.25,
		]
	
	
	ktable#99 = [
		[damageReduction] = -3%,
		[value] = +8%,
		[chance] = 0.4,
		]
	
	
	ktable#100 = [
		[rarity] = rare,
		[name] = 독보적,
		[icon] = src/sprites/icons/randomoption/17lonewolf.png,
		[id] = 17,
		[source] = Promotion,
		[effect] = 같은 계열의 다른 아군이 없으면 {atk.png} +8~16%, 받는 피해 -3~7%,
		]
	
	
	ktable#101 = [
		[value] = 8%,
		[chance] = 0.05,
		]
	
	
	ktable#102 = [
		[value] = 7%,
		[chance] = 0.12,
		]
	
	
	ktable#103 = [
		[value] = 6%,
		[chance] = 0.18,
		]
	
	
	ktable#104 = [
		[value] = 5%,
		[chance] = 0.25,
		]
	
	
	ktable#105 = [
		[value] = 4%,
		[chance] = 0.4,
		]
	
	
	ktable#106 = [
		[rarity] = rare,
		[name] = 처치 회복,
		[icon] = src/sprites/icons/randomoption/16victoryfeast.png,
		[id] = 16,
		[source] = Both,
		[effect] = 적 처치 시 최대 {hp.png}의 4~8% 회복. 전투당 최대 3회,
		]
	
	
	ktable#107 = [
		[damageReduction] = -20%,
		[value] = +20%,
		[chance] = 1,
		]
	
	
	ktable#108 = [
		[rarity] = legend,
		[name] = 공수 전환,
		[icon] = src/sprites/icons/randomoption/15combatshift.png,
		[id] = 15,
		[source] = Promotion,
		[effect] = HP 50% 초과: {atk.png} +20%, HP 50% 이하: 받는 피해 -20%,
		]
	
	
	ktable#109 = [
		[value] = 적용,
		[chance] = 1,
		]
	
	
	ktable#110 = [
		[name] = 통솔력,
		[icon] = src/sprites/icons/randomoption/14slotsplus.png,
		[initiallyUnlocked] = false,
		[source] = Promotion,
		[effect] = 최대 유닛수에 해당 유닛 미적용,
		[rarity] = legend,
		[id] = 14,
		[incompatibleWith] = 32,
		]
	
	
	ktable#111 = [
		[value] = +5,
		[chance] = 0.05,
		]
	
	
	ktable#112 = [
		[value] = +4,
		[chance] = 0.12,
		]
	
	
	ktable#113 = [
		[value] = +3,
		[chance] = 0.18,
		]
	
	
	ktable#114 = [
		[value] = +2,
		[chance] = 0.25,
		]
	
	
	ktable#115 = [
		[value] = +1,
		[chance] = 0.4,
		]
	
	
	ktable#116 = [
		[rare] = true,
		[normal] = true,
		[advanced] = true,
		]
	
	
	ktable#117 = [
		[rarity] = common,
		[name] = 황금알,
		[icon] = src/sprites/icons/randomoption/13jungsu.png,
		[id] = 13,
		[source] = Spawn,
		[effect] = 흡수될 시 {essence.png} +1~5,
		]
	
	
	ktable#118 = [
		[value] = +5,
		[chance] = 0.05,
		]
	
	
	ktable#119 = [
		[value] = +4,
		[chance] = 0.12,
		]
	
	
	ktable#120 = [
		[value] = +3,
		[chance] = 0.18,
		]
	
	
	ktable#121 = [
		[value] = +2,
		[chance] = 0.25,
		]
	
	
	ktable#122 = [
		[value] = +1,
		[chance] = 0.4,
		]
	
	
	ktable#124 = [
		[rare] = true,
		[normal] = true,
		[advanced] = true,
		]
	
	
	ktable#125 = [
		[rarity] = common,
		[name] = 도시락,
		[icon] = src/sprites/icons/randomoption/12concentrate.png,
		[id] = 12,
		[source] = Spawn,
		[effect] = 흡수될 시 흡수 LV +1~5,
		]
	
	
	ktable#126 = [
		[value] = +8%,
		[chance] = 0.05,
		]
	
	
	ktable#127 = [
		[value] = +7%,
		[chance] = 0.12,
		]
	
	
	ktable#128 = [
		[value] = +6%,
		[chance] = 0.18,
		]
	
	
	ktable#129 = [
		[value] = +5%,
		[chance] = 0.25,
		]
	
	
	ktable#130 = [
		[value] = +4%,
		[chance] = 0.4,
		]
	
	
	ktable#131 = [
		[rarity] = rare,
		[name] = 혈전,
		[icon] = src/sprites/icons/randomoption/11allydeath.png,
		[id] = 11,
		[initiallyUnlocked] = false,
		[source] = Both,
		[effect] = 쓰러진 아군 1명당 {atk.png} +4~8%,
		]
	
	
	ktable#132 = [
		[value] = +7%,
		[chance] = 0.05,
		]
	
	
	ktable#133 = [
		[value] = +6%,
		[chance] = 0.12,
		]
	
	
	ktable#134 = [
		[value] = +5%,
		[chance] = 0.18,
		]
	
	
	ktable#135 = [
		[value] = +4%,
		[chance] = 0.25,
		]
	
	
	ktable#136 = [
		[value] = +3%,
		[chance] = 0.4,
		]
	
	
	ktable#137 = [
		[rarity] = rare,
		[name] = 전투 고조,
		[icon] = src/sprites/icons/randomoption/10battlefervor.png,
		[id] = 10,
		[source] = Both,
		[effect] = 첫 교전 후 2초마다 {atk.png} +3~7% (최대 5중첩),
		]
	
	
	ktable#138 = [
		[value] = +45%,
		[chance] = 0.05,
		]
	
	
	ktable#139 = [
		[value] = +40%,
		[chance] = 0.12,
		]
	
	
	ktable#140 = [
		[value] = +35%,
		[chance] = 0.18,
		]
	
	
	ktable#141 = [
		[value] = +30%,
		[chance] = 0.25,
		]
	
	
	ktable#142 = [
		[value] = +25%,
		[chance] = 0.4,
		]
	
	
	ktable#143 = [
		[rarity] = rare,
		[name] = 피의 사투,
		[icon] = src/sprites/icons/randomoption/09bloodrage.png,
		[id] = 09,
		[source] = Both,
		[effect] = 잃은 HP 비례 {atk.png} 최대 +25~45%,
		]
	
	
	ktable#144 = [
		[value] = +32%,
		[chance] = 0.05,
		[dmgTaken] = +18%,
		]
	
	
	ktable#145 = [
		[value] = +29%,
		[chance] = 0.12,
		[dmgTaken] = +16%,
		]
	
	
	ktable#146 = [
		[value] = +26%,
		[chance] = 0.18,
		[dmgTaken] = +14%,
		]
	
	
	ktable#147 = [
		[value] = +22%,
		[chance] = 0.25,
		[dmgTaken] = +12%,
		]
	
	
	ktable#148 = [
		[value] = +18%,
		[chance] = 0.4,
		[dmgTaken] = +10%,
		]
	
	
	ktable#149 = [
		[rarity] = rare,
		[name] = 광기,
		[icon] = src/sprites/icons/randomoption/08berserk.png,
		[id] = 08,
		[source] = Both,
		[effect] = {atk.png} +18~32% / 받는 피해 +10~18%,
		]
	
	
	ktable#150 = [
		[value] = 1회,
		[chance] = 1,
		]
	
	
	ktable#151 = [
		[rarity] = common,
		[name] = 불굴,
		[icon] = src/sprites/icons/randomoption/07survive.png,
		[id] = 07,
		[source] = Both,
		[effect] = 사망시 {hp.png} 1로 한번 1초간 생존,
		]
	
	
	ktable#152 = [
		[value] = +35%,
		[chance] = 0.05,
		]
	
	
	ktable#153 = [
		[value] = +30%,
		[chance] = 0.12,
		]
	
	
	ktable#154 = [
		[value] = +25%,
		[chance] = 0.18,
		]
	
	
	ktable#155 = [
		[value] = +20%,
		[chance] = 0.25,
		]
	
	
	ktable#156 = [
		[value] = +15%,
		[chance] = 0.4,
		]
	
	
	ktable#157 = [
		[rarity] = rare,
		[name] = 처치 가속,
		[icon] = src/sprites/icons/randomoption/06killhaste.png,
		[id] = 06,
		[source] = Both,
		[effect] = 적 처치 시 5초간 {aspd.png} +15~35%,
		]
	
	
	ktable#158 = [
		[value] = +24%,
		[chance] = 0.05,
		]
	
	
	ktable#159 = [
		[value] = +21%,
		[chance] = 0.12,
		]
	
	
	ktable#160 = [
		[value] = +18%,
		[chance] = 0.18,
		]
	
	
	ktable#161 = [
		[value] = +15%,
		[chance] = 0.25,
		]
	
	
	ktable#162 = [
		[value] = +12%,
		[chance] = 0.4,
		]
	
	
	ktable#163 = [
		[rarity] = common,
		[name] = 마무리 일격,
		[icon] = src/sprites/icons/randomoption/05lasthit.png,
		[id] = 05,
		[source] = Both,
		[effect] = 마지막 적 피해 {atk.png} +12~24%,
		]
	
	
	ktable#164 = [
		[value] = +120%,
		[chance] = 0.05,
		]
	
	
	ktable#165 = [
		[value] = +105%,
		[chance] = 0.12,
		]
	
	
	ktable#166 = [
		[value] = +90%,
		[chance] = 0.18,
		]
	
	
	ktable#167 = [
		[value] = +75%,
		[chance] = 0.25,
		]
	
	
	ktable#168 = [
		[value] = +60%,
		[chance] = 0.4,
		]
	
	
	ktable#169 = [
		[rarity] = common,
		[name] = 개시 일격,
		[icon] = src/sprites/icons/randomoption/04firsthit.png,
		[id] = 04,
		[source] = Both,
		[effect] = 첫 공격 피해 {atk.png} +60~120%,
		]
	
	
	ktable#170 = [
		[value] = +8%,
		[chance] = 0.05,
		]
	
	
	ktable#171 = [
		[value] = +7%,
		[chance] = 0.12,
		]
	
	
	ktable#172 = [
		[value] = +6%,
		[chance] = 0.18,
		]
	
	
	ktable#173 = [
		[value] = +5%,
		[chance] = 0.25,
		]
	
	
	ktable#174 = [
		[value] = +4%,
		[chance] = 0.4,
		]
	
	
	ktable#175 = [
		[rarity] = common,
		[name] = 반사 신경,
		[icon] = src/sprites/icons/randomoption/03aspdup.png,
		[id] = 03,
		[source] = Spawn,
		[effect] = {aspd.png} +4~8%,
		]
	
	
	ktable#176 = [
		[value] = +12%,
		[chance] = 0.05,
		]
	
	
	ktable#177 = [
		[value] = +11%,
		[chance] = 0.12,
		]
	
	
	ktable#178 = [
		[value] = +10%,
		[chance] = 0.18,
		]
	
	
	ktable#179 = [
		[value] = +9%,
		[chance] = 0.25,
		]
	
	
	ktable#180 = [
		[value] = +8%,
		[chance] = 0.4,
		]
	
	
	ktable#181 = [
		[rarity] = common,
		[name] = 생존 본능,
		[icon] = src/sprites/icons/randomoption/02hpup.png,
		[id] = 02,
		[source] = Spawn,
		[effect] = {hp.png} +8~12%,
		]
	
	
	ktable#183 = [
		[value] = +10%,
		[chance] = 0.05,
		]
	
	
	ktable#184 = [
		[value] = +9%,
		[chance] = 0.12,
		]
	
	
	ktable#185 = [
		[value] = +8%,
		[chance] = 0.18,
		]
	
	
	ktable#186 = [
		[value] = +7%,
		[chance] = 0.25,
		]
	
	
	ktable#187 = [
		[value] = +6%,
		[chance] = 0.4,
		]
	
	
	ktable#188 = [
		[rarity] = common,
		[name] = 전투 본능,
		[icon] = src/sprites/icons/randomoption/01attackup.png,
		[id] = 01,
		[source] = Spawn,
		[effect] = {atk.png} +6~10%,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	TNEW 	  0		0	; slot0 = new table( array: 0, dict: 1)
	  2	[  0]	KSHORT	  1		18	; slot1 = 18
	  3	[  0]	TSETS	  1	0	190	; slot0.iconCanvasSize = slot1
	  4	[  0]	TNEW 	  1		33	; slot1 = new table( array: 33, dict: 1)
	  5	[  0]	TDUP 	  2		188	; slot2 = copy table#k188
	  6	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	  7	[  0]	TDUP 	  4		187	; slot4 = copy table#k187
	  8	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	  9	[  0]	TDUP 	  4		186	; slot4 = copy table#k186
	 10	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 11	[  0]	TDUP 	  4		185	; slot4 = copy table#k185
	 12	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 13	[  0]	TDUP 	  4		184	; slot4 = copy table#k184
	 14	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 15	[  0]	TDUP 	  4		183	; slot4 = copy table#k183
	 16	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 17	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	 18	[  0]	TSETB	  2	1	1	; slot1[1] = slot2
	 19	[  0]	TDUP 	  2		181	; slot2 = copy table#k181
	 20	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	 21	[  0]	TDUP 	  4		180	; slot4 = copy table#k180
	 22	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 23	[  0]	TDUP 	  4		179	; slot4 = copy table#k179
	 24	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 25	[  0]	TDUP 	  4		178	; slot4 = copy table#k178
	 26	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 27	[  0]	TDUP 	  4		177	; slot4 = copy table#k177
	 28	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 29	[  0]	TDUP 	  4		176	; slot4 = copy table#k176
	 30	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 31	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	 32	[  0]	TSETB	  2	1	2	; slot1[2] = slot2
	 33	[  0]	TDUP 	  2		175	; slot2 = copy table#k175
	 34	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	 35	[  0]	TDUP 	  4		174	; slot4 = copy table#k174
	 36	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 37	[  0]	TDUP 	  4		173	; slot4 = copy table#k173
	 38	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 39	[  0]	TDUP 	  4		172	; slot4 = copy table#k172
	 40	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 41	[  0]	TDUP 	  4		171	; slot4 = copy table#k171
	 42	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 43	[  0]	TDUP 	  4		170	; slot4 = copy table#k170
	 44	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 45	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	 46	[  0]	TSETB	  2	1	3	; slot1[3] = slot2
	 47	[  0]	TDUP 	  2		169	; slot2 = copy table#k169
	 48	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	 49	[  0]	TDUP 	  4		168	; slot4 = copy table#k168
	 50	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 51	[  0]	TDUP 	  4		167	; slot4 = copy table#k167
	 52	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 53	[  0]	TDUP 	  4		166	; slot4 = copy table#k166
	 54	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 55	[  0]	TDUP 	  4		165	; slot4 = copy table#k165
	 56	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 57	[  0]	TDUP 	  4		164	; slot4 = copy table#k164
	 58	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 59	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	 60	[  0]	TSETB	  2	1	4	; slot1[4] = slot2
	 61	[  0]	TDUP 	  2		163	; slot2 = copy table#k163
	 62	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	 63	[  0]	TDUP 	  4		162	; slot4 = copy table#k162
	 64	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 65	[  0]	TDUP 	  4		161	; slot4 = copy table#k161
	 66	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 67	[  0]	TDUP 	  4		160	; slot4 = copy table#k160
	 68	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 69	[  0]	TDUP 	  4		159	; slot4 = copy table#k159
	 70	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 71	[  0]	TDUP 	  4		158	; slot4 = copy table#k158
	 72	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 73	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	 74	[  0]	TSETB	  2	1	5	; slot1[5] = slot2
	 75	[  0]	TDUP 	  2		157	; slot2 = copy table#k157
	 76	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	 77	[  0]	TDUP 	  4		156	; slot4 = copy table#k156
	 78	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 79	[  0]	TDUP 	  4		155	; slot4 = copy table#k155
	 80	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	 81	[  0]	TDUP 	  4		154	; slot4 = copy table#k154
	 82	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	 83	[  0]	TDUP 	  4		153	; slot4 = copy table#k153
	 84	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	 85	[  0]	TDUP 	  4		152	; slot4 = copy table#k152
	 86	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	 87	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	 88	[  0]	TSETB	  2	1	6	; slot1[6] = slot2
	 89	[  0]	TDUP 	  2		151	; slot2 = copy table#k151
	 90	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	 91	[  0]	TDUP 	  4		150	; slot4 = copy table#k150
	 92	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 93	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	 94	[  0]	TSETB	  2	1	7	; slot1[7] = slot2
	 95	[  0]	TDUP 	  2		149	; slot2 = copy table#k149
	 96	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	 97	[  0]	TDUP 	  4		148	; slot4 = copy table#k148
	 98	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	 99	[  0]	TDUP 	  4		147	; slot4 = copy table#k147
	100	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	101	[  0]	TDUP 	  4		146	; slot4 = copy table#k146
	102	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	103	[  0]	TDUP 	  4		145	; slot4 = copy table#k145
	104	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	105	[  0]	TDUP 	  4		144	; slot4 = copy table#k144
	106	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	107	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	108	[  0]	TSETB	  2	1	8	; slot1[8] = slot2
	109	[  0]	TDUP 	  2		143	; slot2 = copy table#k143
	110	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	111	[  0]	TDUP 	  4		142	; slot4 = copy table#k142
	112	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	113	[  0]	TDUP 	  4		141	; slot4 = copy table#k141
	114	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	115	[  0]	TDUP 	  4		140	; slot4 = copy table#k140
	116	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	117	[  0]	TDUP 	  4		139	; slot4 = copy table#k139
	118	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	119	[  0]	TDUP 	  4		138	; slot4 = copy table#k138
	120	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	121	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	122	[  0]	TSETB	  2	1	9	; slot1[9] = slot2
	123	[  0]	TDUP 	  2		137	; slot2 = copy table#k137
	124	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	125	[  0]	TDUP 	  4		136	; slot4 = copy table#k136
	126	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	127	[  0]	TDUP 	  4		135	; slot4 = copy table#k135
	128	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	129	[  0]	TDUP 	  4		134	; slot4 = copy table#k134
	130	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	131	[  0]	TDUP 	  4		133	; slot4 = copy table#k133
	132	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	133	[  0]	TDUP 	  4		132	; slot4 = copy table#k132
	134	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	135	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	136	[  0]	TSETB	  2	1	10	; slot1[10] = slot2
	137	[  0]	TDUP 	  2		131	; slot2 = copy table#k131
	138	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	139	[  0]	TDUP 	  4		130	; slot4 = copy table#k130
	140	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	141	[  0]	TDUP 	  4		129	; slot4 = copy table#k129
	142	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	143	[  0]	TDUP 	  4		128	; slot4 = copy table#k128
	144	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	145	[  0]	TDUP 	  4		127	; slot4 = copy table#k127
	146	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	147	[  0]	TDUP 	  4		126	; slot4 = copy table#k126
	148	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	149	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	150	[  0]	TSETB	  2	1	11	; slot1[11] = slot2
	151	[  0]	TDUP 	  2		125	; slot2 = copy table#k125
	152	[  0]	TDUP 	  3		124	; slot3 = copy table#k124
	153	[  0]	TSETS	  3	2	123	; slot2.permittedGrades = slot3
	154	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	155	[  0]	TDUP 	  4		122	; slot4 = copy table#k122
	156	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	157	[  0]	TDUP 	  4		121	; slot4 = copy table#k121
	158	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	159	[  0]	TDUP 	  4		120	; slot4 = copy table#k120
	160	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	161	[  0]	TDUP 	  4		119	; slot4 = copy table#k119
	162	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	163	[  0]	TDUP 	  4		118	; slot4 = copy table#k118
	164	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	165	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	166	[  0]	TSETB	  2	1	12	; slot1[12] = slot2
	167	[  0]	TDUP 	  2		117	; slot2 = copy table#k117
	168	[  0]	TDUP 	  3		116	; slot3 = copy table#k116
	169	[  0]	TSETS	  3	2	123	; slot2.permittedGrades = slot3
	170	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	171	[  0]	TDUP 	  4		115	; slot4 = copy table#k115
	172	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	173	[  0]	TDUP 	  4		114	; slot4 = copy table#k114
	174	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	175	[  0]	TDUP 	  4		113	; slot4 = copy table#k113
	176	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	177	[  0]	TDUP 	  4		112	; slot4 = copy table#k112
	178	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	179	[  0]	TDUP 	  4		111	; slot4 = copy table#k111
	180	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	181	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	182	[  0]	TSETB	  2	1	13	; slot1[13] = slot2
	183	[  0]	TDUP 	  2		110	; slot2 = copy table#k110
	184	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	185	[  0]	TDUP 	  4		109	; slot4 = copy table#k109
	186	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	187	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	188	[  0]	TSETB	  2	1	14	; slot1[14] = slot2
	189	[  0]	TDUP 	  2		108	; slot2 = copy table#k108
	190	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	191	[  0]	TDUP 	  4		107	; slot4 = copy table#k107
	192	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	193	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	194	[  0]	TSETB	  2	1	15	; slot1[15] = slot2
	195	[  0]	TDUP 	  2		106	; slot2 = copy table#k106
	196	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	197	[  0]	TDUP 	  4		105	; slot4 = copy table#k105
	198	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	199	[  0]	TDUP 	  4		104	; slot4 = copy table#k104
	200	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	201	[  0]	TDUP 	  4		103	; slot4 = copy table#k103
	202	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	203	[  0]	TDUP 	  4		102	; slot4 = copy table#k102
	204	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	205	[  0]	TDUP 	  4		101	; slot4 = copy table#k101
	206	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	207	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	208	[  0]	TSETB	  2	1	16	; slot1[16] = slot2
	209	[  0]	TDUP 	  2		100	; slot2 = copy table#k100
	210	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	211	[  0]	TDUP 	  4		99	; slot4 = copy table#k99
	212	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	213	[  0]	TDUP 	  4		98	; slot4 = copy table#k98
	214	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	215	[  0]	TDUP 	  4		97	; slot4 = copy table#k97
	216	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	217	[  0]	TDUP 	  4		96	; slot4 = copy table#k96
	218	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	219	[  0]	TDUP 	  4		95	; slot4 = copy table#k95
	220	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	221	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	222	[  0]	TSETB	  2	1	17	; slot1[17] = slot2
	223	[  0]	TDUP 	  2		94	; slot2 = copy table#k94
	224	[  0]	TDUP 	  3		93	; slot3 = copy table#k93
	225	[  0]	TSETS	  3	2	123	; slot2.permittedGrades = slot3
	226	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	227	[  0]	TDUP 	  4		92	; slot4 = copy table#k92
	228	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	229	[  0]	TDUP 	  4		91	; slot4 = copy table#k91
	230	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	231	[  0]	TDUP 	  4		90	; slot4 = copy table#k90
	232	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	233	[  0]	TDUP 	  4		89	; slot4 = copy table#k89
	234	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	235	[  0]	TDUP 	  4		88	; slot4 = copy table#k88
	236	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	237	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	238	[  0]	TSETB	  2	1	18	; slot1[18] = slot2
	239	[  0]	TDUP 	  2		87	; slot2 = copy table#k87
	240	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	241	[  0]	TDUP 	  4		86	; slot4 = copy table#k86
	242	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	243	[  0]	TDUP 	  4		85	; slot4 = copy table#k85
	244	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	245	[  0]	TDUP 	  4		84	; slot4 = copy table#k84
	246	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	247	[  0]	TDUP 	  4		83	; slot4 = copy table#k83
	248	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	249	[  0]	TDUP 	  4		82	; slot4 = copy table#k82
	250	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	251	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	252	[  0]	TSETB	  2	1	19	; slot1[19] = slot2
	253	[  0]	TDUP 	  2		81	; slot2 = copy table#k81
	254	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	255	[  0]	TDUP 	  4		80	; slot4 = copy table#k80
	256	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	257	[  0]	TDUP 	  4		79	; slot4 = copy table#k79
	258	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	259	[  0]	TDUP 	  4		78	; slot4 = copy table#k78
	260	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	261	[  0]	TDUP 	  4		77	; slot4 = copy table#k77
	262	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	263	[  0]	TDUP 	  4		76	; slot4 = copy table#k76
	264	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	265	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	266	[  0]	TSETB	  2	1	20	; slot1[20] = slot2
	267	[  0]	TDUP 	  2		75	; slot2 = copy table#k75
	268	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	269	[  0]	TDUP 	  4		74	; slot4 = copy table#k74
	270	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	271	[  0]	TDUP 	  4		73	; slot4 = copy table#k73
	272	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	273	[  0]	TDUP 	  4		72	; slot4 = copy table#k72
	274	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	275	[  0]	TDUP 	  4		71	; slot4 = copy table#k71
	276	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	277	[  0]	TDUP 	  4		70	; slot4 = copy table#k70
	278	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	279	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	280	[  0]	TSETB	  2	1	21	; slot1[21] = slot2
	281	[  0]	TDUP 	  2		69	; slot2 = copy table#k69
	282	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	283	[  0]	TDUP 	  4		68	; slot4 = copy table#k68
	284	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	285	[  0]	TDUP 	  4		67	; slot4 = copy table#k67
	286	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	287	[  0]	TDUP 	  4		66	; slot4 = copy table#k66
	288	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	289	[  0]	TDUP 	  4		65	; slot4 = copy table#k65
	290	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	291	[  0]	TDUP 	  4		64	; slot4 = copy table#k64
	292	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	293	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	294	[  0]	TSETB	  2	1	22	; slot1[22] = slot2
	295	[  0]	TDUP 	  2		63	; slot2 = copy table#k63
	296	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	297	[  0]	TDUP 	  4		62	; slot4 = copy table#k62
	298	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	299	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	300	[  0]	TSETB	  2	1	23	; slot1[23] = slot2
	301	[  0]	TDUP 	  2		61	; slot2 = copy table#k61
	302	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	303	[  0]	TDUP 	  4		60	; slot4 = copy table#k60
	304	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	305	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	306	[  0]	TSETB	  2	1	24	; slot1[24] = slot2
	307	[  0]	TDUP 	  2		59	; slot2 = copy table#k59
	308	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	309	[  0]	TDUP 	  4		58	; slot4 = copy table#k58
	310	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	311	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	312	[  0]	TSETB	  2	1	25	; slot1[25] = slot2
	313	[  0]	TDUP 	  2		57	; slot2 = copy table#k57
	314	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	315	[  0]	TDUP 	  4		56	; slot4 = copy table#k56
	316	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	317	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	318	[  0]	TSETB	  2	1	26	; slot1[26] = slot2
	319	[  0]	TDUP 	  2		55	; slot2 = copy table#k55
	320	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	321	[  0]	TDUP 	  4		54	; slot4 = copy table#k54
	322	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	323	[  0]	TDUP 	  4		53	; slot4 = copy table#k53
	324	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	325	[  0]	TDUP 	  4		52	; slot4 = copy table#k52
	326	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	327	[  0]	TDUP 	  4		51	; slot4 = copy table#k51
	328	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	329	[  0]	TDUP 	  4		50	; slot4 = copy table#k50
	330	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	331	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	332	[  0]	TSETB	  2	1	27	; slot1[27] = slot2
	333	[  0]	TDUP 	  2		49	; slot2 = copy table#k49
	334	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	335	[  0]	TDUP 	  4		48	; slot4 = copy table#k48
	336	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	337	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	338	[  0]	TSETB	  2	1	28	; slot1[28] = slot2
	339	[  0]	TDUP 	  2		47	; slot2 = copy table#k47
	340	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	341	[  0]	TDUP 	  4		46	; slot4 = copy table#k46
	342	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	343	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	344	[  0]	TSETB	  2	1	29	; slot1[29] = slot2
	345	[  0]	TDUP 	  2		45	; slot2 = copy table#k45
	346	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	347	[  0]	TDUP 	  4		44	; slot4 = copy table#k44
	348	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	349	[  0]	TDUP 	  4		43	; slot4 = copy table#k43
	350	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	351	[  0]	TDUP 	  4		42	; slot4 = copy table#k42
	352	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	353	[  0]	TDUP 	  4		41	; slot4 = copy table#k41
	354	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	355	[  0]	TDUP 	  4		40	; slot4 = copy table#k40
	356	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	357	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	358	[  0]	TSETB	  2	1	30	; slot1[30] = slot2
	359	[  0]	TDUP 	  2		39	; slot2 = copy table#k39
	360	[  0]	TNEW 	  3		6	; slot3 = new table( array: 6, dict: 1)
	361	[  0]	TDUP 	  4		38	; slot4 = copy table#k38
	362	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	363	[  0]	TDUP 	  4		37	; slot4 = copy table#k37
	364	[  0]	TSETB	  4	3	2	; slot3[2] = slot4
	365	[  0]	TDUP 	  4		36	; slot4 = copy table#k36
	366	[  0]	TSETB	  4	3	3	; slot3[3] = slot4
	367	[  0]	TDUP 	  4		35	; slot4 = copy table#k35
	368	[  0]	TSETB	  4	3	4	; slot3[4] = slot4
	369	[  0]	TDUP 	  4		34	; slot4 = copy table#k34
	370	[  0]	TSETB	  4	3	5	; slot3[5] = slot4
	371	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	372	[  0]	TSETB	  2	1	31	; slot1[31] = slot2
	373	[  0]	TDUP 	  2		33	; slot2 = copy table#k33
	374	[  0]	TNEW 	  3		3	; slot3 = new table( array: 3, dict: 1)
	375	[  0]	TDUP 	  4		32	; slot4 = copy table#k32
	376	[  0]	TSETB	  4	3	1	; slot3[1] = slot4
	377	[  0]	TSETS	  3	2	182	; slot2.variants = slot3
	378	[  0]	TSETB	  2	1	32	; slot1[32] = slot2
	379	[  0]	TSETS	  1	0	189	; slot0.catalog = slot1
	380	[  0]	FNEW 	  1		30	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISEQP	  0		0	; if slot0 == nil
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	0	; slot1 = slot0.initiallyUnlocked
		  4	[  0]	ISNEP	  1		1	; if <unknown table>.initiallyUnlocked ~= false
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		1	; slot1 = false
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KPRI 	  1		2	; slot1 = true
		  9	[  0]	RET1 	  1		2	; return slot1
	381	[  0]	TSETS	  1	0	31	; slot0.isUnlocked = slot1
	382	[  0]	FNEW 	  1		28	; N/A:0-0: 3 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  2	[  0]	TGETS	  3	3	13	; slot3 = uv0"unknown".isUnlocked
		  3	[  0]	MOV  	  5		0	; slot5 = slot0
		  4	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown".isUnlocked(slot4)
		  5	[  0]	IST  	   		3	; if uv0"unknown".isUnlocked
		  6	[  0]	JMP  	  3		2	; 	goto 9
		  7	[  0]	KPRI 	  3		1	; slot3 = false
		  8	[  0]	RET1 	  3		2	; return slot3
		  9	[  0]	TGETS	  3	0	12	; slot3 = slot0.incompatibleWith
		 10	[  0]	ISF  	   		3	; if not <unknown table>.incompatibleWith
		 11	[  0]	JMP  	  4		43	; 	goto 55
		 12	[  0]	ISF  	   		2	; if not slot2
		 13	[  0]	JMP  	  3		11	; 	goto 25
		 14	[  0]	TGETS	  3	0	12	; slot3 = slot0.incompatibleWith
		 15	[  0]	TGETV	  3	2	3	; slot3 = slot2[<unknown table>.incompatibleWith]
		 16	[  0]	ISF  	   		3	; if not slot3
		 17	[  0]	JMP  	  4		7	; 	goto 25
		 18	[  0]	ISF  	   		1	; if not slot1
		 19	[  0]	JMP  	  3		3	; 	goto 23
		 20	[  0]	TGETS	  3	1	11	; slot3 = slot1.unit
		 21	[  0]	IST  	   		3	; if <unknown table>.unit
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KPRI 	  3		1	; slot3 = false
		 24	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	ISFC 	  3		1	; slot3 = slot1; if not slot1
		 26	[  0]	JMP  	  3		1	; 	goto 28
		 27	[  0]	TGETS	  3	1	11	; slot3 = slot1.unit
		 28	[  0]	GGET 	  4		10	; slot4 = _env["ipairs"]
		 29	[  0]	ISF  	   		3	; if not <unknown table>.unit
		 30	[  0]	JMP  	  6		11	; 	goto 42
		 31	[  0]	TGETS	  6	3	9	; slot6 = <unknown table>.unit.randomOptions
		 32	[  0]	IST  	   		6	; if <unknown table>.unit.randomOptions
		 33	[  0]	JMP  	  7		9	; 	goto 43
		 34	[  0]	TGETS	  6	3	8	; slot6 = <unknown table>.unit.randomOption
		 35	[  0]	ISF  	   		6	; if not <unknown table>.unit.randomOption
		 36	[  0]	JMP  	  7		5	; 	goto 42
		 37	[  0]	TNEW 	  6		3	; slot6 = new table( array: 3, dict: 1)
		 38	[  0]	TGETS	  7	3	8	; slot7 = <unknown table>.unit.randomOption
		 39	[  0]	TSETB	  7	6	1	; slot6[1] = <unknown table>.unit.randomOption
		 40	[  0]	IST  	   		6	; if slot6
		 41	[  0]	JMP  	  7		1	; 	goto 43
		 42	[  0]	TNEW 	  6		0	; slot6 = new table( array: 0, dict: 1)
		 43	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 44	[  0]	JMP  	  7		8	; 	goto 53
		 45	[  0]	GGET 	  9		7	; slot9 = _env["tostring"]
		 46	[  0]	TGETS	 11	8	6	; slot11 = slot8.id
		 47	[  0]	CALL 	  9	2	2	; slot9 = tostring(slot10)
		 48	[  0]	TGETS	 10	0	12	; slot10 = slot0.incompatibleWith
		 49	[  0]	ISNEV	  9		10	; if tostring ~= <unknown table>.incompatibleWith
		 50	[  0]	JMP  	  9		2	; 	goto 53
		 51	[  0]	KPRI 	  9		1	; slot9 = false
		 52	[  0]	RET1 	  9		2	; return slot9
		 53	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 54	[  0]	ITERL	  7		-10	; slot6 = <unknown table>.unit.randomOption; if <unknown table>.unit.randomOption != nil goto 45
		 55	[  0]	TGETS	  3	0	5	; slot3 = slot0.requiresDeploymentRoom
		 56	[  0]	ISF  	   		3	; if not <unknown table>.requiresDeploymentRoom
		 57	[  0]	JMP  	  4		15	; 	goto 73
		 58	[  0]	ISEQP	  1		0	; if slot1 == nil
		 59	[  0]	JMP  	  3		9	; 	goto 69
		 60	[  0]	GGET 	  3		4	; slot3 = _env["require"]
		 61	[  0]	KSTR 	  5		3	; slot5 = "src.game.combat"
		 62	[  0]	CALL 	  3	2	2	; slot3 = require(ipairs)
		 63	[  0]	TGETS	  3	3	2	; slot3 = require.heavyweight
		 64	[  0]	TGETS	  3	3	1	; slot3 = require.heavyweight.canAcquire
		 65	[  0]	TGETS	  5	1	0	; slot5 = slot1.battlefield
		 66	[  0]	TGETS	  6	1	11	; slot6 = slot1.unit
		 67	[  0]	CALL 	  3	2	3	; slot3 = require.heavyweight.canAcquire(ipairs, <unknown table>.battlefield)
		 68	[  0]	JMP  	  4		3	; 	goto 72
		 69	[  0]	KPRI 	  3		1	; slot3 = false
		 70	[  0]	JMP  	  4		1	; 	goto 72
		 71	[  0]	KPRI 	  3		2	; slot3 = true
		 72	[  0]	RET1 	  3		2	; return slot3
		 73	[  0]	KPRI 	  3		2	; slot3 = true
		 74	[  0]	RET1 	  3		2	; return slot3
	383	[  0]	TSETS	  1	0	29	; slot0.isContextEligible = slot1
	384	[  0]	FNEW 	  1		26	; N/A:0-0: 1 args, 0 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			#4: id,
			#5: name,
			#6: asset,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		21	; 	goto 24
		  3	[  0]	TGETS	  1	0	16	; slot1 = slot0.isSummon
		  4	[  0]	IST  	   		1	; if <unknown table>.isSummon
		  5	[  0]	JMP  	  2		18	; 	goto 24
		  6	[  0]	TGETS	  1	0	15	; slot1 = slot0.isShadowMinion
		  7	[  0]	IST  	   		1	; if <unknown table>.isShadowMinion
		  8	[  0]	JMP  	  2		15	; 	goto 24
		  9	[  0]	TGETS	  1	0	14	; slot1 = slot0.isUndyingSoul
		 10	[  0]	IST  	   		1	; if <unknown table>.isUndyingSoul
		 11	[  0]	JMP  	  2		12	; 	goto 24
		 12	[  0]	TGETS	  1	0	13	; slot1 = slot0.isFireSpirit
		 13	[  0]	IST  	   		1	; if <unknown table>.isFireSpirit
		 14	[  0]	JMP  	  2		9	; 	goto 24
		 15	[  0]	TGETS	  1	0	12	; slot1 = slot0.isTower
		 16	[  0]	IST  	   		1	; if <unknown table>.isTower
		 17	[  0]	JMP  	  2		6	; 	goto 24
		 18	[  0]	TGETS	  1	0	11	; slot1 = slot0.isDecoyDummy
		 19	[  0]	IST  	   		1	; if <unknown table>.isDecoyDummy
		 20	[  0]	JMP  	  2		3	; 	goto 24
		 21	[  0]	TGETS	  1	0	10	; slot1 = slot0.isClone
		 22	[  0]	ISF  	   		1	; if not <unknown table>.isClone
		 23	[  0]	JMP  	  2		2	; 	goto 26
		 24	[  0]	KPRI 	  1		1	; slot1 = false
		 25	[  0]	RET1 	  1		2	; return slot1
		 26	[  0]	TGETS	  1	0	9	; slot1 = slot0.skill
		 27	[  0]	ISF  	   		1	; if not <unknown table>.skill
		 28	[  0]	JMP  	  2		8	; 	goto 37
		 29	[  0]	TGETS	  2	1	8	; slot2 = <unknown table>.skill.kind
		 30	[  0]	ISEQS	  2		7	; if <unknown table>.skill.kind == "SavageTusk"
		 31	[  0]	JMP  	  2		3	; 	goto 35
		 32	[  0]	TGETS	  2	1	8	; slot2 = <unknown table>.skill.kind
		 33	[  0]	ISNES	  2		6	; if <unknown table>.skill.kind ~= "MountainRoar"
		 34	[  0]	JMP  	  2		2	; 	goto 37
		 35	[  0]	KPRI 	  2		1	; slot2 = false
		 36	[  0]	RET1 	  2		2	; return slot2
		 37	[  0]	GGET 	  2		5	; slot2 = _env["ipairs"]
		 38	[  0]	TDUP 	  4		4	; slot4 = copy table#k4
		 39	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 40	[  0]	JMP  	  5		11	; 	goto 52
		 41	[  0]	TGETV	  7	0	6	; slot7 = slot0[slot6]
		 42	[  0]	ISEQS	  7		3	; if slot7 == "야생법사"
		 43	[  0]	JMP  	  8		6	; 	goto 50
		 44	[  0]	ISEQS	  7		2	; if slot7 == "원시법사"
		 45	[  0]	JMP  	  8		4	; 	goto 50
		 46	[  0]	ISEQS	  7		1	; if slot7 == "Wild Mage"
		 47	[  0]	JMP  	  8		2	; 	goto 50
		 48	[  0]	ISNES	  7		0	; if slot7 ~= "Primal Mage"
		 49	[  0]	JMP  	  8		2	; 	goto 52
		 50	[  0]	KPRI 	  8		1	; slot8 = false
		 51	[  0]	RET1 	  8		2	; return slot8
		 52	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 53	[  0]	ITERL	  5		-13	; slot4 = slot5; if slot5 != nil goto 41
		 54	[  0]	KPRI 	  2		2	; slot2 = true
		 55	[  0]	RET1 	  2		2	; return slot2
	385	[  0]	TSETS	  1	0	27	; slot0.canBasicAttack = slot1
	386	[  0]	FNEW 	  1		24	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		ktable#4 = [
			#1: subclass,
			#2: subclassName,
			#3: subclassKey,
			#4: id,
			#5: name,
			#6: asset,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		30	; 	goto 33
		  3	[  0]	TGETS	  1	0	20	; slot1 = slot0.isItemEffect
		  4	[  0]	IST  	   		1	; if <unknown table>.isItemEffect
		  5	[  0]	JMP  	  2		27	; 	goto 33
		  6	[  0]	TGETS	  1	0	19	; slot1 = slot0.isGuardianGolem
		  7	[  0]	IST  	   		1	; if <unknown table>.isGuardianGolem
		  8	[  0]	JMP  	  2		24	; 	goto 33
		  9	[  0]	TGETS	  1	0	18	; slot1 = slot0.isStructure
		 10	[  0]	IST  	   		1	; if <unknown table>.isStructure
		 11	[  0]	JMP  	  2		21	; 	goto 33
		 12	[  0]	TGETS	  1	0	17	; slot1 = slot0.isSummon
		 13	[  0]	IST  	   		1	; if <unknown table>.isSummon
		 14	[  0]	JMP  	  2		18	; 	goto 33
		 15	[  0]	TGETS	  1	0	16	; slot1 = slot0.isShadowMinion
		 16	[  0]	IST  	   		1	; if <unknown table>.isShadowMinion
		 17	[  0]	JMP  	  2		15	; 	goto 33
		 18	[  0]	TGETS	  1	0	15	; slot1 = slot0.isUndyingSoul
		 19	[  0]	IST  	   		1	; if <unknown table>.isUndyingSoul
		 20	[  0]	JMP  	  2		12	; 	goto 33
		 21	[  0]	TGETS	  1	0	14	; slot1 = slot0.isFireSpirit
		 22	[  0]	IST  	   		1	; if <unknown table>.isFireSpirit
		 23	[  0]	JMP  	  2		9	; 	goto 33
		 24	[  0]	TGETS	  1	0	13	; slot1 = slot0.isTower
		 25	[  0]	IST  	   		1	; if <unknown table>.isTower
		 26	[  0]	JMP  	  2		6	; 	goto 33
		 27	[  0]	TGETS	  1	0	12	; slot1 = slot0.isDecoyDummy
		 28	[  0]	IST  	   		1	; if <unknown table>.isDecoyDummy
		 29	[  0]	JMP  	  2		3	; 	goto 33
		 30	[  0]	TGETS	  1	0	11	; slot1 = slot0.isClone
		 31	[  0]	ISF  	   		1	; if not <unknown table>.isClone
		 32	[  0]	JMP  	  2		2	; 	goto 35
		 33	[  0]	KPRI 	  1		1	; slot1 = false
		 34	[  0]	RET1 	  1		2	; return slot1
		 35	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 36	[  0]	TGETS	  1	1	10	; slot1 = uv0"unknown".canBasicAttack
		 37	[  0]	MOV  	  3		0	; slot3 = slot0
		 38	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".canBasicAttack(slot2)
		 39	[  0]	ISF  	   		1	; if not slot1
		 40	[  0]	JMP  	  2		2	; 	goto 43
		 41	[  0]	KPRI 	  1		2	; slot1 = true
		 42	[  0]	RET1 	  1		2	; return slot1
		 43	[  0]	TGETS	  1	0	9	; slot1 = slot0.skill
		 44	[  0]	ISF  	   		1	; if not <unknown table>.skill
		 45	[  0]	JMP  	  2		8	; 	goto 54
		 46	[  0]	TGETS	  2	1	8	; slot2 = <unknown table>.skill.kind
		 47	[  0]	ISEQS	  2		7	; if <unknown table>.skill.kind == "SavageTusk"
		 48	[  0]	JMP  	  2		3	; 	goto 52
		 49	[  0]	TGETS	  2	1	8	; slot2 = <unknown table>.skill.kind
		 50	[  0]	ISNES	  2		6	; if <unknown table>.skill.kind ~= "MountainRoar"
		 51	[  0]	JMP  	  2		2	; 	goto 54
		 52	[  0]	KPRI 	  2		2	; slot2 = true
		 53	[  0]	RET1 	  2		2	; return slot2
		 54	[  0]	GGET 	  2		5	; slot2 = _env["ipairs"]
		 55	[  0]	TDUP 	  4		4	; slot4 = copy table#k4
		 56	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 57	[  0]	JMP  	  5		11	; 	goto 69
		 58	[  0]	TGETV	  7	0	6	; slot7 = slot0[slot6]
		 59	[  0]	ISEQS	  7		3	; if slot7 == "야생법사"
		 60	[  0]	JMP  	  8		6	; 	goto 67
		 61	[  0]	ISEQS	  7		2	; if slot7 == "원시법사"
		 62	[  0]	JMP  	  8		4	; 	goto 67
		 63	[  0]	ISEQS	  7		1	; if slot7 == "Wild Mage"
		 64	[  0]	JMP  	  8		2	; 	goto 67
		 65	[  0]	ISNES	  7		0	; if slot7 ~= "Primal Mage"
		 66	[  0]	JMP  	  8		2	; 	goto 69
		 67	[  0]	KPRI 	  8		2	; slot8 = true
		 68	[  0]	RET1 	  8		2	; return slot8
		 69	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 70	[  0]	ITERL	  5		-13	; slot4 = slot5; if slot5 != nil goto 58
		 71	[  0]	KPRI 	  2		1	; slot2 = false
		 72	[  0]	RET1 	  2		2	; return slot2
	387	[  0]	TSETS	  1	0	25	; slot0.canEarnBounty = slot1
	388	[  0]	FNEW 	  1		22	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		ktable#8 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	22	; slot2 = uv0"unknown".canBasicAttack
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".canBasicAttack(slot3)
		  5	[  0]	IST  	   		2	; if slot2
		  6	[  0]	JMP  	  2		2	; 	goto 9
		  7	[  0]	KPRI 	  2		1	; slot2 = false
		  8	[  0]	RET1 	  2		2	; return slot2
		  9	[  0]	TGETS	  2	0	21	; slot2 = slot0.role
		 10	[  0]	IST  	   		2	; if <unknown table>.role
		 11	[  0]	JMP  	  3		12	; 	goto 24
		 12	[  0]	TGETS	  2	0	20	; slot2 = slot0.stats
		 13	[  0]	ISF  	   		2	; if not <unknown table>.stats
		 14	[  0]	JMP  	  3		4	; 	goto 19
		 15	[  0]	TGETS	  2	0	20	; slot2 = slot0.stats
		 16	[  0]	TGETS	  2	2	21	; slot2 = <unknown table>.stats.role
		 17	[  0]	IST  	   		2	; if <unknown table>.stats.role
		 18	[  0]	JMP  	  3		5	; 	goto 24
		 19	[  0]	TGETS	  2	0	19	; slot2 = slot0.base
		 20	[  0]	ISF  	   		2	; if not <unknown table>.base
		 21	[  0]	JMP  	  3		2	; 	goto 24
		 22	[  0]	TGETS	  2	0	19	; slot2 = slot0.base
		 23	[  0]	TGETS	  2	2	21	; slot2 = <unknown table>.base.role
		 24	[  0]	ISF  	   		2	; if not <unknown table>.base.role
		 25	[  0]	JMP  	  3		10	; 	goto 36
		 26	[  0]	ISEQS	  2		18	; if <unknown table>.base.role == "archer"
		 27	[  0]	JMP  	  3		6	; 	goto 34
		 28	[  0]	ISEQS	  2		17	; if <unknown table>.base.role == "mage"
		 29	[  0]	JMP  	  3		4	; 	goto 34
		 30	[  0]	ISEQS	  2		16	; if <unknown table>.base.role == "ranged"
		 31	[  0]	JMP  	  3		2	; 	goto 34
		 32	[  0]	KPRI 	  3		1	; slot3 = false
		 33	[  0]	JMP  	  4		1	; 	goto 35
		 34	[  0]	KPRI 	  3		2	; slot3 = true
		 35	[  0]	RET1 	  3		2	; return slot3
		 36	[  0]	GGET 	  3		15	; slot3 = _env["require"]
		 37	[  0]	KSTR 	  5		14	; slot5 = "src.game.promotion_stats"
		 38	[  0]	CALL 	  3	2	2	; slot3 = require(slot4)
		 39	[  0]	TGETS	  3	3	13	; slot3 = require.getSubclassBaseStats
		 40	[  0]	TDUP 	  5		8	; slot5 = copy table#k8
		 41	[  0]	TGETS	  6	0	12	; slot6 = slot0.subclassKey
		 42	[  0]	IST  	   		6	; if <unknown table>.subclassKey
		 43	[  0]	JMP  	  7		7	; 	goto 51
		 44	[  0]	TGETS	  6	0	11	; slot6 = slot0.subclass
		 45	[  0]	IST  	   		6	; if <unknown table>.subclass
		 46	[  0]	JMP  	  7		4	; 	goto 51
		 47	[  0]	TGETS	  6	0	10	; slot6 = slot0.asset
		 48	[  0]	IST  	   		6	; if <unknown table>.asset
		 49	[  0]	JMP  	  7		1	; 	goto 51
		 50	[  0]	TGETS	  6	0	9	; slot6 = slot0.id
		 51	[  0]	TSETS	  6	5	9	; slot5.id = <unknown table>.id
		 52	[  0]	TGETS	  6	0	7	; slot6 = slot0.subclassName
		 53	[  0]	IST  	   		6	; if <unknown table>.subclassName
		 54	[  0]	JMP  	  7		1	; 	goto 56
		 55	[  0]	TGETS	  6	0	6	; slot6 = slot0.name
		 56	[  0]	TSETS	  6	5	6	; slot5.name = <unknown table>.name
		 57	[  0]	CALL 	  3	2	2	; slot3 = require.getSubclassBaseStats(slot4)
		 58	[  0]	ISF  	   		3	; if not require.getSubclassBaseStats
		 59	[  0]	JMP  	  4		11	; 	goto 71
		 60	[  0]	TGETS	  4	3	5	; slot4 = require.getSubclassBaseStats.distance
		 61	[  0]	ISF  	   		4	; if not require.getSubclassBaseStats.distance
		 62	[  0]	JMP  	  5		8	; 	goto 71
		 63	[  0]	TGETS	  4	3	5	; slot4 = require.getSubclassBaseStats.distance
		 64	[  0]	KSHORT	  5		70	; slot5 = 70
		 65	[  0]	ISLE 	  5		4	; if slot5 <= require.getSubclassBaseStats.distance
		 66	[  0]	JMP  	  4		2	; 	goto 69
		 67	[  0]	KPRI 	  4		1	; slot4 = false
		 68	[  0]	JMP  	  5		1	; 	goto 70
		 69	[  0]	KPRI 	  4		2	; slot4 = true
		 70	[  0]	RET1 	  4		2	; return slot4
		 71	[  0]	TGETS	  4	0	4	; slot4 = slot0.sym
		 72	[  0]	IST  	   		4	; if <unknown table>.sym
		 73	[  0]	JMP  	  5		1	; 	goto 75
		 74	[  0]	MOV  	  4		1	; slot4 = slot1
		 75	[  0]	ISEQS	  4		3	; if slot4 == "A"
		 76	[  0]	JMP  	  5		8	; 	goto 85
		 77	[  0]	ISEQS	  4		2	; if slot4 == "M"
		 78	[  0]	JMP  	  5		6	; 	goto 85
		 79	[  0]	ISEQS	  4		1	; if slot4 == "Joker"
		 80	[  0]	JMP  	  5		4	; 	goto 85
		 81	[  0]	ISEQS	  4		0	; if slot4 == "J"
		 82	[  0]	JMP  	  5		2	; 	goto 85
		 83	[  0]	KPRI 	  5		1	; slot5 = false
		 84	[  0]	JMP  	  6		1	; 	goto 86
		 85	[  0]	KPRI 	  5		2	; slot5 = true
		 86	[  0]	RET1 	  5		2	; return slot5
	389	[  0]	TSETS	  1	0	23	; slot0.canRangedBasicAttack = slot1
	390	[  0]	FNEW 	  1		20	; N/A:0-0: 0 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  0		3	; slot0 = _env["pcall"]
		  2	[  0]	GGET 	  2		2	; slot2 = _env["require"]
		  3	[  0]	KSTR 	  3		1	; slot3 = "src.ui.upgrade"
		  4	[  0]	CALL 	  0	3	3	; slot0, slot1 = pcall(slot1, require)
		  5	[  0]	ISF  	   		0	; if not slot0
		  6	[  0]	JMP  	  2		5	; 	goto 12
		  7	[  0]	ISF  	   		1	; if not slot1
		  8	[  0]	JMP  	  2		3	; 	goto 12
		  9	[  0]	TGETS	  2	1	0	; slot2 = slot1.getNudgeEnabled
		 10	[  0]	IST  	   		2	; if <unknown table>.getNudgeEnabled
		 11	[  0]	JMP  	  2		2	; 	goto 14
		 12	[  0]	KPRI 	  2		1	; slot2 = false
		 13	[  0]	RET1 	  2		2	; return slot2
		 14	[  0]	GGET 	  2		3	; slot2 = _env["pcall"]
		 15	[  0]	TGETS	  4	1	0	; slot4 = slot1.getNudgeEnabled
		 16	[  0]	CALL 	  2	3	2	; slot2, slot3 = pcall(slot3)
		 17	[  0]	ISFC 	  4		2	; slot4 = slot2; if not slot2
		 18	[  0]	JMP  	  4		5	; 	goto 24
		 19	[  0]	ISEQP	  3		2	; if slot3 == true
		 20	[  0]	JMP  	  4		2	; 	goto 23
		 21	[  0]	KPRI 	  4		1	; slot4 = false
		 22	[  0]	JMP  	  5		1	; 	goto 24
		 23	[  0]	KPRI 	  4		2	; slot4 = true
		 24	[  0]	RET1 	  4		2	; return slot4
	391	[  0]	TSETS	  1	0	21	; slot0.isNudgeEnabledForRun = slot1
	392	[  0]	FNEW 	  1		18	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["tonumber"]
		  2	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	TGETS	  3	0	4	; slot3 = slot0.calculatedLuckStacks
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	ISNEV	  1		1	; if slot1 ~= slot1
		 10	[  0]	JMP  	  2		4	; 	goto 15
		 11	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		 12	[  0]	TGETS	  2	2	2	; slot2 = math.huge
		 13	[  0]	ISNEV	  1		2	; if slot1 ~= math.huge
		 14	[  0]	JMP  	  2		2	; 	goto 17
		 15	[  0]	KSHORT	  2		0	; slot2 = 0
		 16	[  0]	RET1 	  2		2	; return slot2
		 17	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		 18	[  0]	TGETS	  2	2	1	; slot2 = math.max
		 19	[  0]	KSHORT	  4		0	; slot4 = 0
		 20	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		 21	[  0]	TGETS	  5	5	0	; slot5 = math.floor
		 22	[  0]	MOV  	  7		1	; slot7 = slot1
		 23	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 24	[  0]	CALLMT	  2		1	; return math.max(, ...MULTRES)
	393	[  0]	TSETS	  1	0	19	; slot0.getCalculatedLuckStacks = slot1
	394	[  0]	FNEW 	  1		16	; N/A:0-0: 1 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["tonumber"]
		  2	[  0]	ISFC 	  3		0	; slot3 = slot0; if not slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	TGETS	  3	0	4	; slot3 = slot0.combatExperienceKills
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	IST  	   		1	; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  1		0	; slot1 = 0
		  9	[  0]	ISNEV	  1		1	; if slot1 ~= slot1
		 10	[  0]	JMP  	  2		9	; 	goto 20
		 11	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		 12	[  0]	TGETS	  2	2	2	; slot2 = math.huge
		 13	[  0]	ISEQV	  1		2	; if slot1 == math.huge
		 14	[  0]	JMP  	  2		5	; 	goto 20
		 15	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		 16	[  0]	TGETS	  2	2	2	; slot2 = math.huge
		 17	[  0]	UNM  	  2		2	; slot2 = -math.huge
		 18	[  0]	ISNEV	  1		2	; if slot1 ~= slot2
		 19	[  0]	JMP  	  2		1	; 	goto 21
		 20	[  0]	KSHORT	  1		0	; slot1 = 0
		 21	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		 22	[  0]	TGETS	  2	2	1	; slot2 = math.max
		 23	[  0]	KSHORT	  4		0	; slot4 = 0
		 24	[  0]	GGET 	  5		3	; slot5 = _env["math"]
		 25	[  0]	TGETS	  5	5	0	; slot5 = math.floor
		 26	[  0]	MOV  	  7		1	; slot7 = slot1
		 27	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 28	[  0]	CALLM	  2	2	1	; slot2 = math.max(<unknown table>.combatExperienceKills, ...MULTRES)
		 29	[  0]	MOV  	  1		2	; slot1 = math.max
		 30	[  0]	GGET 	  2		3	; slot2 = _env["math"]
		 31	[  0]	TGETS	  2	2	0	; slot2 = math.floor
		 32	[  0]	DIVVN	  4	1	0	; slot4 = math.max / 10
		 33	[  0]	CALL 	  2	2	2	; slot2 = math.floor(<unknown table>.combatExperienceKills)
		 34	[  0]	MODVN	  3	1	0	; slot3 = math.max % 10
		 35	[  0]	MOV  	  4		1	; slot4 = math.max
		 36	[  0]	RET  	  2		4	; return slot2, slot3, math.max
	395	[  0]	TSETS	  1	0	17	; slot0.getCombatExperienceProgress = slot1
	396	[  0]	FNEW 	  1		15	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	RET1 	  0		2	; return slot0
		  4	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		  5	[  0]	ISF  	   		1	; if not love
		  6	[  0]	JMP  	  2		13	; 	goto 20
		  7	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		  8	[  0]	TGETS	  1	1	1	; slot1 = love.math
		  9	[  0]	ISF  	   		1	; if not love.math
		 10	[  0]	JMP  	  2		9	; 	goto 20
		 11	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 12	[  0]	TGETS	  1	1	1	; slot1 = love.math
		 13	[  0]	TGETS	  1	1	0	; slot1 = love.math.random
		 14	[  0]	ISF  	   		1	; if not love.math.random
		 15	[  0]	JMP  	  2		4	; 	goto 20
		 16	[  0]	GGET 	  1		2	; slot1 = _env["love"]
		 17	[  0]	TGETS	  1	1	1	; slot1 = love.math
		 18	[  0]	TGETS	  1	1	0	; slot1 = love.math.random
		 19	[  0]	RET1 	  1		2	; return love.math.random
		 20	[  0]	GGET 	  1		1	; slot1 = _env["math"]
		 21	[  0]	TGETS	  1	1	0	; slot1 = math.random
		 22	[  0]	RET1 	  1		2	; return math.random
	397	[  0]	FNEW 	  2		14	; N/A:0-0: 2 args, 1 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		3	; 	goto 6
		  3	[  0]	LEN  	  2		0	; slot2 = #slot0
		  4	[  0]	ISNEN	  2		0	; if slot2 ~= 0
		  5	[  0]	JMP  	  2		2	; 	goto 8
		  6	[  0]	KPRI 	  2		0	; slot2 = nil
		  7	[  0]	RET1 	  2		2	; return slot2
		  8	[  0]	KSHORT	  2		0	; slot2 = 0
		  9	[  0]	GGET 	  3		3	; slot3 = _env["ipairs"]
		 10	[  0]	MOV  	  5		0	; slot5 = slot0
		 11	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 12	[  0]	JMP  	  6		13	; 	goto 26
		 13	[  0]	GGET 	  8		2	; slot8 = _env["tonumber"]
		 14	[  0]	TGETS	 10	7	1	; slot10 = slot7.chance
		 15	[  0]	IST  	   		10	; if <unknown table>.chance
		 16	[  0]	JMP  	 11		1	; 	goto 18
		 17	[  0]	TGETS	 10	7	0	; slot10 = slot7.weight
		 18	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 19	[  0]	IST  	   		8	; if tonumber
		 20	[  0]	JMP  	  9		1	; 	goto 22
		 21	[  0]	KSHORT	  8		1	; slot8 = 1
		 22	[  0]	KSHORT	  9		0	; slot9 = 0
		 23	[  0]	ISGE 	  9		8	; if slot9 >= slot8
		 24	[  0]	JMP  	  9		1	; 	goto 26
		 25	[  0]	ADDVV	  2	2	8	; slot2 = slot2 + slot8
		 26	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 27	[  0]	ITERL	  6		-15	; slot5 = slot6; if slot6 != nil goto 13
		 28	[  0]	KSHORT	  3		0	; slot3 = 0
		 29	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 30	[  0]	JMP  	  3		2	; 	goto 33
		 31	[  0]	TGETB	  3	0	1	; slot3 = slot0[1]
		 32	[  0]	RET1 	  3		2	; return slot3
		 33	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 34	[  0]	MOV  	  5		1	; slot5 = slot1
		 35	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		 36	[  0]	CALL 	  3	2	1	; slot3 = uv0"unknown"()
		 37	[  0]	MULVV	  3	3	2	; slot3 = uv0"unknown" * slot2
		 38	[  0]	GGET 	  4		3	; slot4 = _env["ipairs"]
		 39	[  0]	MOV  	  6		0	; slot6 = slot0
		 40	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 41	[  0]	JMP  	  7		17	; 	goto 59
		 42	[  0]	GGET 	  9		2	; slot9 = _env["tonumber"]
		 43	[  0]	TGETS	 11	8	1	; slot11 = slot8.chance
		 44	[  0]	IST  	   		11	; if <unknown table>.chance
		 45	[  0]	JMP  	 12		1	; 	goto 47
		 46	[  0]	TGETS	 11	8	0	; slot11 = slot8.weight
		 47	[  0]	CALL 	  9	2	2	; slot9 = tonumber(<unknown table>.weight)
		 48	[  0]	IST  	   		9	; if tonumber
		 49	[  0]	JMP  	 10		1	; 	goto 51
		 50	[  0]	KSHORT	  9		1	; slot9 = 1
		 51	[  0]	KSHORT	 10		0	; slot10 = 0
		 52	[  0]	ISGE 	 10		9	; if slot10 >= slot9
		 53	[  0]	JMP  	 10		5	; 	goto 59
		 54	[  0]	SUBVV	  3	3	9	; slot3 = slot3 - slot9
		 55	[  0]	KSHORT	 10		0	; slot10 = 0
		 56	[  0]	ISGT 	  3		10	; if slot3 > slot10
		 57	[  0]	JMP  	 10		1	; 	goto 59
		 58	[  0]	RET1 	  8		2	; return slot8
		 59	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 60	[  0]	ITERL	  7		-19	; slot6 = slot7; if slot7 != nil goto 42
		 61	[  0]	TGETB	  4	0	1	; slot4 = slot0[1]
		 62	[  0]	RET1 	  4		2	; return slot4
	398	[  0]	FNEW 	  3		13	; N/A:0-0: 3 args, 1 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			[rare] = 60,
			[legend] = 30,
			[common] = 10,
			]
		
		
		ktable#10 = [
			[rare] = 60,
			[legend] = 20,
			[common] = 20,
			]
		
		
		ktable#11 = [
			[rare] = 50,
			[legend] = 10,
			[common] = 40,
			]
		
		
		ktable#12 = [
			[rare] = 38,
			[legend] = 2,
			[common] = 60,
			]
		
		
		ktable#13 = [
			[rare] = 25,
			[legend] = 5,
			[common] = 70,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		3	; 	goto 6
		  3	[  0]	LEN  	  3		0	; slot3 = #slot0
		  4	[  0]	ISNEN	  3		0	; if slot3 ~= 0
		  5	[  0]	JMP  	  3		2	; 	goto 8
		  6	[  0]	KPRI 	  3		0	; slot3 = nil
		  7	[  0]	RET1 	  3		2	; return slot3
		  8	[  0]	TDUP 	  3		13	; slot3 = copy table#k13
		  9	[  0]	ISNEN	  2		1	; if slot2 ~= 2
		 10	[  0]	JMP  	  4		2	; 	goto 13
		 11	[  0]	TDUP 	  3		12	; slot3 = copy table#k12
		 12	[  0]	JMP  	  4		11	; 	goto 24
		 13	[  0]	ISNEN	  2		2	; if slot2 ~= 3
		 14	[  0]	JMP  	  4		2	; 	goto 17
		 15	[  0]	TDUP 	  3		11	; slot3 = copy table#k11
		 16	[  0]	JMP  	  4		7	; 	goto 24
		 17	[  0]	ISNEN	  2		3	; if slot2 ~= 4
		 18	[  0]	JMP  	  4		2	; 	goto 21
		 19	[  0]	TDUP 	  3		10	; slot3 = copy table#k10
		 20	[  0]	JMP  	  4		3	; 	goto 24
		 21	[  0]	ISNEN	  2		4	; if slot2 ~= 5
		 22	[  0]	JMP  	  4		1	; 	goto 24
		 23	[  0]	TDUP 	  3		9	; slot3 = copy table#k9
		 24	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 25	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 26	[  0]	KSHORT	  6		0	; slot6 = 0
		 27	[  0]	GGET 	  7		8	; slot7 = _env["ipairs"]
		 28	[  0]	MOV  	  9		0	; slot9 = slot0
		 29	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = ipairs(slot8)
		 30	[  0]	JMP  	 10		17	; 	goto 48
		 31	[  0]	TGETS	 12	11	7	; slot12 = slot11.rarity
		 32	[  0]	IST  	   		12	; if <unknown table>.rarity
		 33	[  0]	JMP  	 13		1	; 	goto 35
		 34	[  0]	KSTR 	 12		6	; slot12 = "common"
		 35	[  0]	MOV  	 14		12	; slot14 = slot12
		 36	[  0]	TGETS	 12	12	5	; slot12 = slot12.lower
		 37	[  0]	CALL 	 12	2	2	; slot12 = <unknown table>.lower(slot13)
		 38	[  0]	TGETV	 13	4	12	; slot13 = slot4[<unknown table>.lower]
		 39	[  0]	IST  	   		13	; if slot13
		 40	[  0]	JMP  	 13		2	; 	goto 43
		 41	[  0]	TNEW 	 13		0	; slot13 = new table( array: 0, dict: 1)
		 42	[  0]	TSETV	 13	4	12	; slot4[<unknown table>.lower] = slot13
		 43	[  0]	GGET 	 13		4	; slot13 = _env["table"]
		 44	[  0]	TGETS	 13	13	3	; slot13 = table.insert
		 45	[  0]	TGETV	 15	4	12	; slot15 = slot4[<unknown table>.lower]
		 46	[  0]	MOV  	 16		11	; slot16 = slot11
		 47	[  0]	CALL 	 13	1	3	;  = table.insert(slot14, slot15)
		 48	[  0]	ITERC	 10	3	3	; slot10, slot11, slot12 = ipairs, slot8, slot9; slot10, slot11 = ipairs(slot8, slot9)
		 49	[  0]	ITERL	 10		-19	; slot9 = slot10; if slot10 != nil goto 31
		 50	[  0]	GGET 	  7		2	; slot7 = _env["pairs"]
		 51	[  0]	MOV  	  9		4	; slot9 = slot4
		 52	[  0]	CALL 	  7	4	2	; slot7, slot8, slot9 = pairs(slot8)
		 53	[  0]	ISNEXT	 10		14	; Verify ITERN at 68; goto 68
		 54	[  0]	LEN  	 12		11	; slot12 = #slot11
		 55	[  0]	KSHORT	 13		0	; slot13 = 0
		 56	[  0]	ISGE 	 13		12	; if slot13 >= slot12
		 57	[  0]	JMP  	 12		10	; 	goto 68
		 58	[  0]	TGETV	 12	3	10	; slot12 = slot3[slot10]
		 59	[  0]	ISF  	   		12	; if not slot12
		 60	[  0]	JMP  	 13		7	; 	goto 68
		 61	[  0]	GGET 	 12		4	; slot12 = _env["table"]
		 62	[  0]	TGETS	 12	12	3	; slot12 = table.insert
		 63	[  0]	MOV  	 14		5	; slot14 = slot5
		 64	[  0]	MOV  	 15		10	; slot15 = slot10
		 65	[  0]	CALL 	 12	1	3	;  = table.insert(slot13, slot14)
		 66	[  0]	TGETV	 12	3	10	; slot12 = slot3[slot10]
		 67	[  0]	ADDVV	  6	6	12	; slot6 = slot6 + slot12
		 68	[  0]	ITERN	 10	3	3	; slot10, slot11, slot12 = pairs, slot8, slot9; slot10, slot11 = pairs(slot8, slot9)
		 69	[  0]	ITERL	 10		-16	; slot9 = slot10; if slot10 != nil goto 54
		 70	[  0]	KSHORT	  7		0	; slot7 = 0
		 71	[  0]	ISGT 	  6		7	; if slot6 > slot7
		 72	[  0]	JMP  	  7		12	; 	goto 85
		 73	[  0]	GGET 	  7		1	; slot7 = _env["math"]
		 74	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 75	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 76	[  0]	MOV  	 11		1	; slot11 = slot1
		 77	[  0]	CALL 	  9	2	2	; slot9 = uv0"unknown"(slot10)
		 78	[  0]	CALL 	  9	2	1	; slot9 = uv0"unknown"()
		 79	[  0]	LEN  	 10		0	; slot10 = #slot0
		 80	[  0]	MULVV	  9	9	10	; slot9 = uv0"unknown" * slot10
		 81	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 82	[  0]	ADDVN	  7	7	5	; slot7 = math.floor + 1
		 83	[  0]	TGETV	  7	0	7	; slot7 = slot0[slot7]
		 84	[  0]	RET1 	  7		2	; return slot7
		 85	[  0]	UGET 	  7		0	; slot7 = uv0"unknwon"
		 86	[  0]	MOV  	  9		1	; slot9 = slot1
		 87	[  0]	CALL 	  7	2	2	; slot7 = uv0"unknown"(slot8)
		 88	[  0]	CALL 	  7	2	1	; slot7 = uv0"unknown"()
		 89	[  0]	MULVV	  7	7	6	; slot7 = uv0"unknown" * slot6
		 90	[  0]	TGETB	  8	5	1	; slot8 = slot5[1]
		 91	[  0]	GGET 	  9		8	; slot9 = _env["ipairs"]
		 92	[  0]	MOV  	 11		5	; slot11 = slot5
		 93	[  0]	CALL 	  9	4	2	; slot9, slot10, slot11 = ipairs(slot10)
		 94	[  0]	JMP  	 12		7	; 	goto 102
		 95	[  0]	TGETV	 14	3	13	; slot14 = slot3[slot13]
		 96	[  0]	ISGT 	  7		14	; if slot7 > slot14
		 97	[  0]	JMP  	 15		3	; 	goto 101
		 98	[  0]	MOV  	  8		13	; slot8 = slot13
		 99	[  0]	JMP  	  9		4	; 	goto 104
		100	[  0]	JMP  	 15		1	; 	goto 102
		101	[  0]	SUBVV	  7	7	14	; slot7 = slot7 - slot14
		102	[  0]	ITERC	 12	3	3	; slot12, slot13, slot14 = ipairs, slot10, slot11; slot12, slot13 = ipairs(slot10, slot11)
		103	[  0]	ITERL	 12		-9	; slot11 = slot12; if slot12 != nil goto 95
		104	[  0]	TGETV	  9	4	8	; slot9 = slot4[slot8]
		105	[  0]	GGET 	 10		1	; slot10 = _env["math"]
		106	[  0]	TGETS	 10	10	0	; slot10 = math.floor
		107	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		108	[  0]	MOV  	 14		1	; slot14 = slot1
		109	[  0]	CALL 	 12	2	2	; slot12 = uv0"unknown"(slot13)
		110	[  0]	CALL 	 12	2	1	; slot12 = uv0"unknown"()
		111	[  0]	LEN  	 13		9	; slot13 = #slot9
		112	[  0]	MULVV	 12	12	13	; slot12 = uv0"unknown" * slot13
		113	[  0]	CALL 	 10	2	2	; slot10 = math.floor(slot11)
		114	[  0]	ADDVN	 10	10	5	; slot10 = math.floor + 1
		115	[  0]	TGETV	 10	9	10	; slot10 = slot9[slot10]
		116	[  0]	RET1 	 10		2	; return slot10
	399	[  0]	FNEW 	  4		11	; N/A:0-0: 9 args, 3 upvalues, 28 slots
		
		;;;; constant tables ;;;;
		ktable#8 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  9		0	; slot9 = slot0
		  2	[  0]	MOV  	 10		1	; slot10 = slot1
		  3	[  0]	GGET 	 11		35	; slot11 = _env["type"]
		  4	[  0]	MOV  	 13		9	; slot13 = slot9
		  5	[  0]	CALL 	 11	2	2	; slot11 = type(slot12)
		  6	[  0]	ISNES	 11		34	; if type ~= "string"
		  7	[  0]	JMP  	 11		4	; 	goto 12
		  8	[  0]	ISNEP	 10		0	; if slot10 ~= nil
		  9	[  0]	JMP  	 11		2	; 	goto 12
		 10	[  0]	MOV  	 10		9	; slot10 = slot9
		 11	[  0]	KPRI 	  9		0	; slot9 = nil
		 12	[  0]	GGET 	 11		33	; slot11 = _env["rawget"]
		 13	[  0]	GGET 	 13		32	; slot13 = _env["_G"]
		 14	[  0]	KSTR 	 14		31	; slot14 = "Tutorial"
		 15	[  0]	CALL 	 11	2	3	; slot11 = rawget(slot12, _G)
		 16	[  0]	ISFC 	 12		11	; slot12 = rawget; if not rawget
		 17	[  0]	JMP  	 12		10	; 	goto 28
		 18	[  0]	TGETS	 12	11	30	; slot12 = rawget.isRunning
		 19	[  0]	ISF  	   		12	; if not rawget.isRunning
		 20	[  0]	JMP  	 13		7	; 	goto 28
		 21	[  0]	TGETS	 12	11	30	; slot12 = rawget.isRunning
		 22	[  0]	CALL 	 12	2	1	; slot12 = rawget.isRunning()
		 23	[  0]	ISEQP	 12		2	; if rawget.isRunning == true
		 24	[  0]	JMP  	 12		2	; 	goto 27
		 25	[  0]	KPRI 	 12		1	; slot12 = false
		 26	[  0]	JMP  	 13		1	; 	goto 28
		 27	[  0]	KPRI 	 12		2	; slot12 = true
		 28	[  0]	UGET 	 13		0	; slot13 = uv0"unknwon"
		 29	[  0]	TGETS	 13	13	29	; slot13 = uv0"unknown".isNudgeEnabledForRun
		 30	[  0]	CALL 	 13	2	1	; slot13 = uv0"unknown".isNudgeEnabledForRun()
		 31	[  0]	TNEW 	 14		0	; slot14 = new table( array: 0, dict: 1)
		 32	[  0]	GGET 	 15		28	; slot15 = _env["ipairs"]
		 33	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		 34	[  0]	TGETS	 17	17	27	; slot17 = uv0"unknown".catalog
		 35	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(slot16)
		 36	[  0]	JMP  	 18		102	; 	goto 139
		 37	[  0]	ISF  	   		12	; if not slot12
		 38	[  0]	JMP  	 20		12	; 	goto 51
		 39	[  0]	GGET 	 20		26	; slot20 = _env["tostring"]
		 40	[  0]	TGETS	 22	19	25	; slot22 = slot19.id
		 41	[  0]	CALL 	 20	2	2	; slot20 = tostring(slot21)
		 42	[  0]	ISEQS	 20		24	; if tostring == "12"
		 43	[  0]	JMP  	 20		5	; 	goto 49
		 44	[  0]	GGET 	 20		26	; slot20 = _env["tostring"]
		 45	[  0]	TGETS	 22	19	25	; slot22 = slot19.id
		 46	[  0]	CALL 	 20	2	2	; slot20 = tostring(slot21)
		 47	[  0]	ISNES	 20		23	; if tostring ~= "13"
		 48	[  0]	JMP  	 20		2	; 	goto 51
		 49	[  0]	KPRI 	 20		1	; slot20 = false
		 50	[  0]	JMP  	 21		1	; 	goto 52
		 51	[  0]	KPRI 	 20		2	; slot20 = true
		 52	[  0]	TGETS	 21	19	22	; slot21 = slot19.permittedGrades
		 53	[  0]	ISF  	   		21	; if not <unknown table>.permittedGrades
		 54	[  0]	JMP  	 21		7	; 	goto 62
		 55	[  0]	ISFC 	 21		10	; slot21 = slot10; if not slot10
		 56	[  0]	JMP  	 21		6	; 	goto 63
		 57	[  0]	TGETS	 21	19	22	; slot21 = slot19.permittedGrades
		 58	[  0]	TGETV	 21	21	10	; slot21 = <unknown table>.permittedGrades[slot10]
		 59	[  0]	JMP  	 22		3	; 	goto 63
		 60	[  0]	KPRI 	 21		1	; slot21 = false
		 61	[  0]	JMP  	 22		1	; 	goto 63
		 62	[  0]	KPRI 	 21		2	; slot21 = true
		 63	[  0]	TGETS	 22	19	21	; slot22 = slot19.requiresActiveSkill
		 64	[  0]	ISF  	   		22	; if not <unknown table>.requiresActiveSkill
		 65	[  0]	JMP  	 22		2	; 	goto 68
		 66	[  0]	ISNEP	  3		2	; if slot3 ~= true
		 67	[  0]	JMP  	 22		19	; 	goto 87
		 68	[  0]	TGETS	 22	19	20	; slot22 = slot19.requiresAttackSkill
		 69	[  0]	ISF  	   		22	; if not <unknown table>.requiresAttackSkill
		 70	[  0]	JMP  	 22		2	; 	goto 73
		 71	[  0]	ISNEP	  5		2	; if slot5 ~= true
		 72	[  0]	JMP  	 22		14	; 	goto 87
		 73	[  0]	TGETS	 22	19	19	; slot22 = slot19.requiresRangedBasicAttack
		 74	[  0]	ISF  	   		22	; if not <unknown table>.requiresRangedBasicAttack
		 75	[  0]	JMP  	 22		2	; 	goto 78
		 76	[  0]	ISNEP	  6		2	; if slot6 ~= true
		 77	[  0]	JMP  	 22		9	; 	goto 87
		 78	[  0]	TGETS	 22	19	18	; slot22 = slot19.requiresBountySource
		 79	[  0]	ISF  	   		22	; if not <unknown table>.requiresBountySource
		 80	[  0]	JMP  	 22		8	; 	goto 89
		 81	[  0]	ISEQP	  7		2	; if slot7 == true
		 82	[  0]	JMP  	 22		6	; 	goto 89
		 83	[  0]	ISNEP	  7		0	; if slot7 ~= nil
		 84	[  0]	JMP  	 22		2	; 	goto 87
		 85	[  0]	ISEQP	  4		2	; if slot4 == true
		 86	[  0]	JMP  	 22		2	; 	goto 89
		 87	[  0]	KPRI 	 22		1	; slot22 = false
		 88	[  0]	JMP  	 23		1	; 	goto 90
		 89	[  0]	KPRI 	 22		2	; slot22 = true
		 90	[  0]	KPRI 	 23		2	; slot23 = true
		 91	[  0]	ISF  	   		2	; if not slot2
		 92	[  0]	JMP  	 24		10	; 	goto 103
		 93	[  0]	TGETS	 24	19	17	; slot24 = slot19.source
		 94	[  0]	ISEQS	 24		16	; if <unknown table>.source == "Promotion"
		 95	[  0]	JMP  	 24		5	; 	goto 101
		 96	[  0]	TGETS	 24	19	17	; slot24 = slot19.source
		 97	[  0]	ISEQS	 24		15	; if <unknown table>.source == "Both"
		 98	[  0]	JMP  	 24		2	; 	goto 101
		 99	[  0]	KPRI 	 23		1	; slot23 = false
		100	[  0]	JMP  	 24		1	; 	goto 102
		101	[  0]	KPRI 	 23		2	; slot23 = true
		102	[  0]	JMP  	 24		6	; 	goto 109
		103	[  0]	TGETS	 24	19	17	; slot24 = slot19.source
		104	[  0]	ISNES	 24		16	; if <unknown table>.source ~= "Promotion"
		105	[  0]	JMP  	 24		2	; 	goto 108
		106	[  0]	KPRI 	 23		1	; slot23 = false
		107	[  0]	JMP  	 24		1	; 	goto 109
		108	[  0]	KPRI 	 23		2	; slot23 = true
		109	[  0]	ISF  	   		20	; if not slot20
		110	[  0]	JMP  	 24		28	; 	goto 139
		111	[  0]	ISF  	   		21	; if not slot21
		112	[  0]	JMP  	 24		26	; 	goto 139
		113	[  0]	ISF  	   		23	; if not slot23
		114	[  0]	JMP  	 24		24	; 	goto 139
		115	[  0]	ISF  	   		22	; if not slot22
		116	[  0]	JMP  	 24		22	; 	goto 139
		117	[  0]	UGET 	 24		0	; slot24 = uv0"unknwon"
		118	[  0]	TGETS	 24	24	14	; slot24 = uv0"unknown".isContextEligible
		119	[  0]	MOV  	 26		19	; slot26 = slot19
		120	[  0]	MOV  	 27		8	; slot27 = slot8
		121	[  0]	CALL 	 24	2	3	; slot24 = uv0"unknown".isContextEligible(slot25, slot26)
		122	[  0]	ISF  	   		24	; if not uv0"unknown".isContextEligible
		123	[  0]	JMP  	 25		15	; 	goto 139
		124	[  0]	TGETS	 24	19	13	; slot24 = slot19.requiresNudge
		125	[  0]	ISF  	   		24	; if not <unknown table>.requiresNudge
		126	[  0]	JMP  	 24		2	; 	goto 129
		127	[  0]	ISF  	   		13	; if not uv0"unknown".isNudgeEnabledForRun
		128	[  0]	JMP  	 24		10	; 	goto 139
		129	[  0]	TGETS	 24	19	12	; slot24 = slot19.requiresBasicAttack
		130	[  0]	ISF  	   		24	; if not <unknown table>.requiresBasicAttack
		131	[  0]	JMP  	 24		2	; 	goto 134
		132	[  0]	ISNEP	  4		2	; if slot4 ~= true
		133	[  0]	JMP  	 24		5	; 	goto 139
		134	[  0]	GGET 	 24		11	; slot24 = _env["table"]
		135	[  0]	TGETS	 24	24	10	; slot24 = table.insert
		136	[  0]	MOV  	 26		14	; slot26 = slot14
		137	[  0]	MOV  	 27		19	; slot27 = slot19
		138	[  0]	CALL 	 24	1	3	;  = table.insert(slot25, slot26)
		139	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, slot16, uv0"unknown".catalog; slot18, slot19 = ipairs(slot16, uv0"unknown".catalog)
		140	[  0]	ITERL	 18		-104	; uv0"unknown".catalog = slot18; if slot18 != nil goto 37
		141	[  0]	LEN  	 15		14	; slot15 = #slot14
		142	[  0]	ISNEN	 15		0	; if slot15 ~= 0
		143	[  0]	JMP  	 15		88	; 	goto 232
		144	[  0]	GGET 	 15		28	; slot15 = _env["ipairs"]
		145	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		146	[  0]	TGETS	 17	17	27	; slot17 = uv0"unknown".catalog
		147	[  0]	CALL 	 15	4	2	; slot15, slot16, slot17 = ipairs(slot16)
		148	[  0]	JMP  	 18		81	; 	goto 230
		149	[  0]	TGETS	 20	19	21	; slot20 = slot19.requiresActiveSkill
		150	[  0]	ISF  	   		20	; if not <unknown table>.requiresActiveSkill
		151	[  0]	JMP  	 20		2	; 	goto 154
		152	[  0]	ISNEP	  3		2	; if slot3 ~= true
		153	[  0]	JMP  	 20		19	; 	goto 173
		154	[  0]	TGETS	 20	19	20	; slot20 = slot19.requiresAttackSkill
		155	[  0]	ISF  	   		20	; if not <unknown table>.requiresAttackSkill
		156	[  0]	JMP  	 20		2	; 	goto 159
		157	[  0]	ISNEP	  5		2	; if slot5 ~= true
		158	[  0]	JMP  	 20		14	; 	goto 173
		159	[  0]	TGETS	 20	19	19	; slot20 = slot19.requiresRangedBasicAttack
		160	[  0]	ISF  	   		20	; if not <unknown table>.requiresRangedBasicAttack
		161	[  0]	JMP  	 20		2	; 	goto 164
		162	[  0]	ISNEP	  6		2	; if slot6 ~= true
		163	[  0]	JMP  	 20		9	; 	goto 173
		164	[  0]	TGETS	 20	19	18	; slot20 = slot19.requiresBountySource
		165	[  0]	ISF  	   		20	; if not <unknown table>.requiresBountySource
		166	[  0]	JMP  	 20		8	; 	goto 175
		167	[  0]	ISEQP	  7		2	; if slot7 == true
		168	[  0]	JMP  	 20		6	; 	goto 175
		169	[  0]	ISNEP	  7		0	; if slot7 ~= nil
		170	[  0]	JMP  	 20		2	; 	goto 173
		171	[  0]	ISEQP	  4		2	; if slot4 == true
		172	[  0]	JMP  	 20		2	; 	goto 175
		173	[  0]	KPRI 	 20		1	; slot20 = false
		174	[  0]	JMP  	 21		1	; 	goto 176
		175	[  0]	KPRI 	 20		2	; slot20 = true
		176	[  0]	ISF  	   		2	; if not slot2
		177	[  0]	JMP  	 21		6	; 	goto 184
		178	[  0]	TGETS	 21	19	17	; slot21 = slot19.source
		179	[  0]	ISEQS	 21		16	; if <unknown table>.source == "Promotion"
		180	[  0]	JMP  	 21		10	; 	goto 191
		181	[  0]	TGETS	 21	19	17	; slot21 = slot19.source
		182	[  0]	ISEQS	 21		15	; if <unknown table>.source == "Both"
		183	[  0]	JMP  	 21		7	; 	goto 191
		184	[  0]	IST  	   		2	; if slot2
		185	[  0]	JMP  	 21		3	; 	goto 189
		186	[  0]	TGETS	 21	19	17	; slot21 = slot19.source
		187	[  0]	ISNES	 21		16	; if <unknown table>.source ~= "Promotion"
		188	[  0]	JMP  	 21		2	; 	goto 191
		189	[  0]	KPRI 	 21		1	; slot21 = false
		190	[  0]	JMP  	 22		1	; 	goto 192
		191	[  0]	KPRI 	 21		2	; slot21 = true
		192	[  0]	ISF  	   		20	; if not slot20
		193	[  0]	JMP  	 22		36	; 	goto 230
		194	[  0]	ISF  	   		21	; if not slot21
		195	[  0]	JMP  	 22		34	; 	goto 230
		196	[  0]	UGET 	 22		0	; slot22 = uv0"unknwon"
		197	[  0]	TGETS	 22	22	14	; slot22 = uv0"unknown".isContextEligible
		198	[  0]	MOV  	 24		19	; slot24 = slot19
		199	[  0]	MOV  	 25		8	; slot25 = slot8
		200	[  0]	CALL 	 22	2	3	; slot22 = uv0"unknown".isContextEligible(slot23, slot24)
		201	[  0]	ISF  	   		22	; if not uv0"unknown".isContextEligible
		202	[  0]	JMP  	 23		27	; 	goto 230
		203	[  0]	TGETS	 22	19	13	; slot22 = slot19.requiresNudge
		204	[  0]	ISF  	   		22	; if not <unknown table>.requiresNudge
		205	[  0]	JMP  	 22		2	; 	goto 208
		206	[  0]	ISF  	   		13	; if not uv0"unknown".isNudgeEnabledForRun
		207	[  0]	JMP  	 22		22	; 	goto 230
		208	[  0]	TGETS	 22	19	12	; slot22 = slot19.requiresBasicAttack
		209	[  0]	ISF  	   		22	; if not <unknown table>.requiresBasicAttack
		210	[  0]	JMP  	 22		2	; 	goto 213
		211	[  0]	ISNEP	  4		2	; if slot4 ~= true
		212	[  0]	JMP  	 22		17	; 	goto 230
		213	[  0]	ISF  	   		12	; if not slot12
		214	[  0]	JMP  	 22		10	; 	goto 225
		215	[  0]	GGET 	 22		26	; slot22 = _env["tostring"]
		216	[  0]	TGETS	 24	19	25	; slot24 = slot19.id
		217	[  0]	CALL 	 22	2	2	; slot22 = tostring(slot23)
		218	[  0]	ISEQS	 22		24	; if tostring == "12"
		219	[  0]	JMP  	 22		10	; 	goto 230
		220	[  0]	GGET 	 22		26	; slot22 = _env["tostring"]
		221	[  0]	TGETS	 24	19	25	; slot24 = slot19.id
		222	[  0]	CALL 	 22	2	2	; slot22 = tostring(slot23)
		223	[  0]	ISEQS	 22		23	; if tostring == "13"
		224	[  0]	JMP  	 22		5	; 	goto 230
		225	[  0]	GGET 	 22		11	; slot22 = _env["table"]
		226	[  0]	TGETS	 22	22	10	; slot22 = table.insert
		227	[  0]	MOV  	 24		14	; slot24 = slot14
		228	[  0]	MOV  	 25		19	; slot25 = slot19
		229	[  0]	CALL 	 22	1	3	;  = table.insert(slot23, slot24)
		230	[  0]	ITERC	 18	3	3	; slot18, slot19, slot20 = ipairs, slot16, uv0"unknown".catalog; slot18, slot19 = ipairs(slot16, uv0"unknown".catalog)
		231	[  0]	ITERL	 18		-83	; uv0"unknown".catalog = slot18; if slot18 != nil goto 149
		232	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
		233	[  0]	MOV  	 17		14	; slot17 = slot14
		234	[  0]	MOV  	 18		9	; slot18 = slot9
		235	[  0]	MOV  	 19		2	; slot19 = slot2
		236	[  0]	CALL 	 15	2	4	; slot15 = uv1"unknown"(slot16, slot17, slot18)
		237	[  0]	IST  	   		15	; if uv1"unknown"
		238	[  0]	JMP  	 16		2	; 	goto 241
		239	[  0]	KPRI 	 16		0	; slot16 = nil
		240	[  0]	RET1 	 16		2	; return slot16
		241	[  0]	UGET 	 16		2	; slot16 = uv2"unknwon"
		242	[  0]	TGETS	 18	15	9	; slot18 = uv1"unknown".variants
		243	[  0]	MOV  	 19		9	; slot19 = slot9
		244	[  0]	CALL 	 16	2	3	; slot16 = uv2"unknown"(slot17, uv1"unknown".variants)
		245	[  0]	IST  	   		16	; if uv2"unknown"
		246	[  0]	JMP  	 17		2	; 	goto 249
		247	[  0]	KPRI 	 17		0	; slot17 = nil
		248	[  0]	RET1 	 17		2	; return slot17
		249	[  0]	TDUP 	 17		8	; slot17 = copy table#k8
		250	[  0]	TGETS	 18	15	25	; slot18 = uv1"unknown".id
		251	[  0]	TSETS	 18	17	25	; slot17.id = uv1"unknown".id
		252	[  0]	TGETS	 18	15	7	; slot18 = uv1"unknown".name
		253	[  0]	TSETS	 18	17	7	; slot17.name = uv1"unknown".name
		254	[  0]	TGETS	 18	15	6	; slot18 = uv1"unknown".rarity
		255	[  0]	TSETS	 18	17	6	; slot17.rarity = uv1"unknown".rarity
		256	[  0]	TGETS	 18	15	5	; slot18 = uv1"unknown".effect
		257	[  0]	TSETS	 18	17	5	; slot17.effect = uv1"unknown".effect
		258	[  0]	TGETS	 18	15	17	; slot18 = uv1"unknown".source
		259	[  0]	TSETS	 18	17	17	; slot17.source = uv1"unknown".source
		260	[  0]	TGETS	 18	15	4	; slot18 = uv1"unknown".icon
		261	[  0]	TSETS	 18	17	4	; slot17.icon = uv1"unknown".icon
		262	[  0]	TNEW 	 18		0	; slot18 = new table( array: 0, dict: 1)
		263	[  0]	TSETS	 18	17	3	; slot17.variant = slot18
		264	[  0]	GGET 	 18		2	; slot18 = _env["pairs"]
		265	[  0]	MOV  	 20		16	; slot20 = uv2"unknown"
		266	[  0]	CALL 	 18	4	2	; slot18, slot19, slot20 = pairs(slot19)
		267	[  0]	ISNEXT	 21		6	; Verify ITERN at 274; goto 274
		268	[  0]	ISEQS	 21		1	; if slot21 == "chance"
		269	[  0]	JMP  	 23		4	; 	goto 274
		270	[  0]	ISEQS	 21		0	; if slot21 == "weight"
		271	[  0]	JMP  	 23		2	; 	goto 274
		272	[  0]	TGETS	 23	17	3	; slot23 = slot17.variant
		273	[  0]	TSETV	 22	23	21	; <unknown table>.variant[slot21] = table.insert
		274	[  0]	ITERN	 21	3	3	; slot21, slot22, slot23 = pairs, slot19, uv2"unknown"; slot21, slot22 = pairs(slot19, uv2"unknown")
		275	[  0]	ITERL	 21		-8	; uv2"unknown" = slot21; if slot21 != nil goto 268
		276	[  0]	RET1 	 17		2	; return slot17
	400	[  0]	TSETS	  4	0	12	; slot0.rollForSpawn = slot4
	401	[  0]	FNEW 	  4		9	; N/A:0-0: 2 args, 2 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#9 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	KPRI 	  2		0	; slot2 = nil
		  2	[  0]	GGET 	  3		14	; slot3 = _env["ipairs"]
		  3	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		  4	[  0]	TGETS	  5	5	13	; slot5 = uv0"unknown".catalog
		  5	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		  6	[  0]	JMP  	  6		5	; 	goto 12
		  7	[  0]	TGETS	  8	7	12	; slot8 = slot7.id
		  8	[  0]	ISNEV	  8		0	; if <unknown table>.id ~= slot0
		  9	[  0]	JMP  	  8		2	; 	goto 12
		 10	[  0]	MOV  	  2		7	; slot2 = slot7
		 11	[  0]	JMP  	  3		2	; 	goto 14
		 12	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, uv0"unknown".catalog; slot6, slot7 = ipairs(slot4, uv0"unknown".catalog)
		 13	[  0]	ITERL	  6		-7	; uv0"unknown".catalog = slot6; if slot6 != nil goto 7
		 14	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 15	[  0]	TGETS	  3	3	11	; slot3 = uv0"unknown".isUnlocked
		 16	[  0]	MOV  	  5		2	; slot5 = slot2
		 17	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown".isUnlocked(slot4)
		 18	[  0]	IST  	   		3	; if uv0"unknown".isUnlocked
		 19	[  0]	JMP  	  3		2	; 	goto 22
		 20	[  0]	KPRI 	  3		0	; slot3 = nil
		 21	[  0]	RET1 	  3		2	; return slot3
		 22	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		 23	[  0]	TGETS	  5	2	10	; slot5 = slot2.variants
		 24	[  0]	MOV  	  6		1	; slot6 = slot1
		 25	[  0]	CALL 	  3	2	3	; slot3 = uv1"unknown"(slot4, <unknown table>.variants)
		 26	[  0]	IST  	   		3	; if slot3
		 27	[  0]	JMP  	  4		2	; 	goto 30
		 28	[  0]	KPRI 	  4		0	; slot4 = nil
		 29	[  0]	RET1 	  4		2	; return slot4
		 30	[  0]	TDUP 	  4		9	; slot4 = copy table#k9
		 31	[  0]	TGETS	  5	2	12	; slot5 = slot2.id
		 32	[  0]	TSETS	  5	4	12	; slot4.id = <unknown table>.id
		 33	[  0]	TGETS	  5	2	8	; slot5 = slot2.name
		 34	[  0]	TSETS	  5	4	8	; slot4.name = <unknown table>.name
		 35	[  0]	TGETS	  5	2	7	; slot5 = slot2.rarity
		 36	[  0]	TSETS	  5	4	7	; slot4.rarity = <unknown table>.rarity
		 37	[  0]	TGETS	  5	2	6	; slot5 = slot2.effect
		 38	[  0]	TSETS	  5	4	6	; slot4.effect = <unknown table>.effect
		 39	[  0]	TGETS	  5	2	5	; slot5 = slot2.source
		 40	[  0]	TSETS	  5	4	5	; slot4.source = <unknown table>.source
		 41	[  0]	TGETS	  5	2	4	; slot5 = slot2.icon
		 42	[  0]	TSETS	  5	4	4	; slot4.icon = <unknown table>.icon
		 43	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 44	[  0]	TSETS	  5	4	3	; slot4.variant = slot5
		 45	[  0]	GGET 	  5		2	; slot5 = _env["pairs"]
		 46	[  0]	MOV  	  7		3	; slot7 = slot3
		 47	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = pairs(slot6)
		 48	[  0]	ISNEXT	  8		6	; Verify ITERN at 55; goto 55
		 49	[  0]	ISEQS	  8		1	; if <unknown table>.id == "chance"
		 50	[  0]	JMP  	 10		4	; 	goto 55
		 51	[  0]	ISEQS	  8		0	; if <unknown table>.id == "weight"
		 52	[  0]	JMP  	 10		2	; 	goto 55
		 53	[  0]	TGETS	 10	4	3	; slot10 = slot4.variant
		 54	[  0]	TSETV	  9	10	8	; <unknown table>.variant[<unknown table>.id] = slot9
		 55	[  0]	ITERN	  8	3	3	; slot8, slot9, slot10 = pairs, slot6, slot7; slot8, slot9 = pairs(slot6, slot7)
		 56	[  0]	ITERL	  8		-8	; slot7 = <unknown table>.id; if <unknown table>.id != nil goto 49
		 57	[  0]	RET1 	  4		2	; return slot4
	402	[  0]	TSETS	  4	0	10	; slot0.rollForId = slot4
	403	[  0]	FNEW 	  4		8	; N/A:0-0: 1 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		3	; if slot1 == "table"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  9	[  0]	LEN  	  2		0	; slot2 = #slot0
		 10	[  0]	KSHORT	  3		0	; slot3 = 0
		 11	[  0]	ISGE 	  3		2	; if slot3 >= slot2
		 12	[  0]	JMP  	  2		14	; 	goto 27
		 13	[  0]	GGET 	  2		2	; slot2 = _env["ipairs"]
		 14	[  0]	MOV  	  4		0	; slot4 = slot0
		 15	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = ipairs(slot3)
		 16	[  0]	JMP  	  5		7	; 	goto 24
		 17	[  0]	ISEQP	  6		0	; if slot6 == nil
		 18	[  0]	JMP  	  7		5	; 	goto 24
		 19	[  0]	GGET 	  7		1	; slot7 = _env["tostring"]
		 20	[  0]	MOV  	  9		6	; slot9 = slot6
		 21	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 22	[  0]	KPRI 	  8		2	; slot8 = true
		 23	[  0]	TSETV	  8	1	7	; slot1[tostring] = slot8
		 24	[  0]	ITERC	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 25	[  0]	ITERL	  5		-9	; slot4 = slot5; if slot5 != nil goto 17
		 26	[  0]	JMP  	  2		13	; 	goto 40
		 27	[  0]	GGET 	  2		0	; slot2 = _env["pairs"]
		 28	[  0]	MOV  	  4		0	; slot4 = slot0
		 29	[  0]	CALL 	  2	4	2	; slot2, slot3, slot4 = pairs(slot3)
		 30	[  0]	ISNEXT	  5		7	; Verify ITERN at 38; goto 38
		 31	[  0]	ISF  	   		6	; if not slot6
		 32	[  0]	JMP  	  7		5	; 	goto 38
		 33	[  0]	GGET 	  7		1	; slot7 = _env["tostring"]
		 34	[  0]	MOV  	  9		5	; slot9 = slot5
		 35	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		 36	[  0]	KPRI 	  8		2	; slot8 = true
		 37	[  0]	TSETV	  8	1	7	; slot1[tostring] = slot8
		 38	[  0]	ITERN	  5	3	3	; slot5, slot6, slot7 = slot2, slot3, slot4; slot5, slot6 = slot2(slot3, slot4)
		 39	[  0]	ITERL	  5		-9	; slot4 = slot5; if slot5 != nil goto 31
		 40	[  0]	RET1 	  1		2	; return slot1
	404	[  0]	FNEW 	  5		6	; N/A:0-0: 10 args, 4 upvalues, 31 slots
		
		;;;; constant tables ;;;;
		ktable#8 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	MOV  	 10		1	; slot10 = slot1
		  2	[  0]	MOV  	 11		2	; slot11 = slot2
		  3	[  0]	GGET 	 12		35	; slot12 = _env["type"]
		  4	[  0]	MOV  	 14		10	; slot14 = slot10
		  5	[  0]	CALL 	 12	2	2	; slot12 = type(slot13)
		  6	[  0]	ISNES	 12		34	; if type ~= "string"
		  7	[  0]	JMP  	 12		4	; 	goto 12
		  8	[  0]	ISNEP	 11		0	; if slot11 ~= nil
		  9	[  0]	JMP  	 12		2	; 	goto 12
		 10	[  0]	MOV  	 11		10	; slot11 = slot10
		 11	[  0]	KPRI 	 10		0	; slot10 = nil
		 12	[  0]	UGET 	 12		0	; slot12 = uv0"unknwon"
		 13	[  0]	MOV  	 14		0	; slot14 = slot0
		 14	[  0]	CALL 	 12	2	2	; slot12 = uv0"unknown"(slot13)
		 15	[  0]	UGET 	 13		1	; slot13 = uv1"unknwon"
		 16	[  0]	TGETS	 13	13	33	; slot13 = uv1"unknown".isNudgeEnabledForRun
		 17	[  0]	CALL 	 13	2	1	; slot13 = uv1"unknown".isNudgeEnabledForRun()
		 18	[  0]	GGET 	 14		32	; slot14 = _env["rawget"]
		 19	[  0]	GGET 	 16		31	; slot16 = _env["_G"]
		 20	[  0]	KSTR 	 17		30	; slot17 = "Tutorial"
		 21	[  0]	CALL 	 14	2	3	; slot14 = rawget(slot15, _G)
		 22	[  0]	ISFC 	 15		14	; slot15 = rawget; if not rawget
		 23	[  0]	JMP  	 15		10	; 	goto 34
		 24	[  0]	TGETS	 15	14	29	; slot15 = rawget.isRunning
		 25	[  0]	ISF  	   		15	; if not rawget.isRunning
		 26	[  0]	JMP  	 16		7	; 	goto 34
		 27	[  0]	TGETS	 15	14	29	; slot15 = rawget.isRunning
		 28	[  0]	CALL 	 15	2	1	; slot15 = rawget.isRunning()
		 29	[  0]	ISEQP	 15		2	; if rawget.isRunning == true
		 30	[  0]	JMP  	 15		2	; 	goto 33
		 31	[  0]	KPRI 	 15		1	; slot15 = false
		 32	[  0]	JMP  	 16		1	; 	goto 34
		 33	[  0]	KPRI 	 15		2	; slot15 = true
		 34	[  0]	ISF  	   		15	; if not slot15
		 35	[  0]	JMP  	 16		4	; 	goto 40
		 36	[  0]	KPRI 	 16		2	; slot16 = true
		 37	[  0]	TSETS	 16	12	28	; uv0"unknown".12 = slot16
		 38	[  0]	KPRI 	 16		2	; slot16 = true
		 39	[  0]	TSETS	 16	12	27	; uv0"unknown".13 = slot16
		 40	[  0]	TNEW 	 16		0	; slot16 = new table( array: 0, dict: 1)
		 41	[  0]	GGET 	 17		26	; slot17 = _env["ipairs"]
		 42	[  0]	UGET 	 19		1	; slot19 = uv1"unknwon"
		 43	[  0]	TGETS	 19	19	25	; slot19 = uv1"unknown".catalog
		 44	[  0]	IST  	   		19	; if uv1"unknown".catalog
		 45	[  0]	JMP  	 20		1	; 	goto 47
		 46	[  0]	TNEW 	 19		0	; slot19 = new table( array: 0, dict: 1)
		 47	[  0]	CALL 	 17	4	2	; slot17, slot18, slot19 = ipairs(slot18)
		 48	[  0]	JMP  	 20		98	; 	goto 147
		 49	[  0]	ISFC 	 22		21	; slot22 = slot21; if not slot21
		 50	[  0]	JMP  	 22		8	; 	goto 59
		 51	[  0]	TGETS	 22	21	24	; slot22 = slot21.id
		 52	[  0]	ISF  	   		22	; if not <unknown table>.id
		 53	[  0]	JMP  	 23		5	; 	goto 59
		 54	[  0]	GGET 	 22		23	; slot22 = _env["tostring"]
		 55	[  0]	TGETS	 24	21	24	; slot24 = slot21.id
		 56	[  0]	CALL 	 22	2	2	; slot22 = tostring(slot23)
		 57	[  0]	TGETV	 22	12	22	; slot22 = uv0"unknown"[tostring]
		 58	[  0]	NOT  	 22		22	; slot22 = not slot22
		 59	[  0]	TGETS	 23	21	22	; slot23 = slot21.permittedGrades
		 60	[  0]	ISF  	   		23	; if not <unknown table>.permittedGrades
		 61	[  0]	JMP  	 23		7	; 	goto 69
		 62	[  0]	ISFC 	 23		11	; slot23 = slot11; if not slot11
		 63	[  0]	JMP  	 23		6	; 	goto 70
		 64	[  0]	TGETS	 23	21	22	; slot23 = slot21.permittedGrades
		 65	[  0]	TGETV	 23	23	11	; slot23 = <unknown table>.permittedGrades[slot11]
		 66	[  0]	JMP  	 24		3	; 	goto 70
		 67	[  0]	KPRI 	 23		1	; slot23 = false
		 68	[  0]	JMP  	 24		1	; 	goto 70
		 69	[  0]	KPRI 	 23		2	; slot23 = true
		 70	[  0]	TGETS	 24	21	21	; slot24 = slot21.requiresActiveSkill
		 71	[  0]	ISF  	   		24	; if not <unknown table>.requiresActiveSkill
		 72	[  0]	JMP  	 24		2	; 	goto 75
		 73	[  0]	ISNEP	  4		2	; if slot4 ~= true
		 74	[  0]	JMP  	 24		19	; 	goto 94
		 75	[  0]	TGETS	 24	21	20	; slot24 = slot21.requiresAttackSkill
		 76	[  0]	ISF  	   		24	; if not <unknown table>.requiresAttackSkill
		 77	[  0]	JMP  	 24		2	; 	goto 80
		 78	[  0]	ISNEP	  6		2	; if slot6 ~= true
		 79	[  0]	JMP  	 24		14	; 	goto 94
		 80	[  0]	TGETS	 24	21	19	; slot24 = slot21.requiresRangedBasicAttack
		 81	[  0]	ISF  	   		24	; if not <unknown table>.requiresRangedBasicAttack
		 82	[  0]	JMP  	 24		2	; 	goto 85
		 83	[  0]	ISNEP	  7		2	; if slot7 ~= true
		 84	[  0]	JMP  	 24		9	; 	goto 94
		 85	[  0]	TGETS	 24	21	18	; slot24 = slot21.requiresBountySource
		 86	[  0]	ISF  	   		24	; if not <unknown table>.requiresBountySource
		 87	[  0]	JMP  	 24		8	; 	goto 96
		 88	[  0]	ISEQP	  8		2	; if slot8 == true
		 89	[  0]	JMP  	 24		6	; 	goto 96
		 90	[  0]	ISNEP	  8		0	; if slot8 ~= nil
		 91	[  0]	JMP  	 24		2	; 	goto 94
		 92	[  0]	ISEQP	  5		2	; if slot5 == true
		 93	[  0]	JMP  	 24		2	; 	goto 96
		 94	[  0]	KPRI 	 24		1	; slot24 = false
		 95	[  0]	JMP  	 25		1	; 	goto 97
		 96	[  0]	KPRI 	 24		2	; slot24 = true
		 97	[  0]	KPRI 	 25		2	; slot25 = true
		 98	[  0]	ISF  	   		3	; if not slot3
		 99	[  0]	JMP  	 26		10	; 	goto 110
		100	[  0]	TGETS	 26	21	17	; slot26 = slot21.source
		101	[  0]	ISEQS	 26		16	; if <unknown table>.source == "Promotion"
		102	[  0]	JMP  	 26		5	; 	goto 108
		103	[  0]	TGETS	 26	21	17	; slot26 = slot21.source
		104	[  0]	ISEQS	 26		15	; if <unknown table>.source == "Both"
		105	[  0]	JMP  	 26		2	; 	goto 108
		106	[  0]	KPRI 	 25		1	; slot25 = false
		107	[  0]	JMP  	 26		1	; 	goto 109
		108	[  0]	KPRI 	 25		2	; slot25 = true
		109	[  0]	JMP  	 26		6	; 	goto 116
		110	[  0]	TGETS	 26	21	17	; slot26 = slot21.source
		111	[  0]	ISNES	 26		16	; if <unknown table>.source ~= "Promotion"
		112	[  0]	JMP  	 26		2	; 	goto 115
		113	[  0]	KPRI 	 25		1	; slot25 = false
		114	[  0]	JMP  	 26		1	; 	goto 116
		115	[  0]	KPRI 	 25		2	; slot25 = true
		116	[  0]	ISF  	   		22	; if not slot22
		117	[  0]	JMP  	 26		29	; 	goto 147
		118	[  0]	ISF  	   		23	; if not slot23
		119	[  0]	JMP  	 26		27	; 	goto 147
		120	[  0]	ISF  	   		25	; if not slot25
		121	[  0]	JMP  	 26		25	; 	goto 147
		122	[  0]	ISF  	   		24	; if not slot24
		123	[  0]	JMP  	 26		23	; 	goto 147
		124	[  0]	UGET 	 26		1	; slot26 = uv1"unknwon"
		125	[  0]	TGETS	 26	26	14	; slot26 = uv1"unknown".isContextEligible
		126	[  0]	MOV  	 28		21	; slot28 = slot21
		127	[  0]	MOV  	 29		9	; slot29 = slot9
		128	[  0]	MOV  	 30		12	; slot30 = uv0"unknown"
		129	[  0]	CALL 	 26	2	4	; slot26 = uv1"unknown".isContextEligible(slot27, slot28, slot29)
		130	[  0]	ISF  	   		26	; if not uv1"unknown".isContextEligible
		131	[  0]	JMP  	 27		15	; 	goto 147
		132	[  0]	TGETS	 26	21	13	; slot26 = slot21.requiresNudge
		133	[  0]	ISF  	   		26	; if not <unknown table>.requiresNudge
		134	[  0]	JMP  	 26		2	; 	goto 137
		135	[  0]	ISF  	   		13	; if not uv1"unknown".isNudgeEnabledForRun
		136	[  0]	JMP  	 26		10	; 	goto 147
		137	[  0]	TGETS	 26	21	12	; slot26 = slot21.requiresBasicAttack
		138	[  0]	ISF  	   		26	; if not <unknown table>.requiresBasicAttack
		139	[  0]	JMP  	 26		2	; 	goto 142
		140	[  0]	ISNEP	  5		2	; if slot5 ~= true
		141	[  0]	JMP  	 26		5	; 	goto 147
		142	[  0]	GGET 	 26		11	; slot26 = _env["table"]
		143	[  0]	TGETS	 26	26	10	; slot26 = table.insert
		144	[  0]	MOV  	 28		16	; slot28 = slot16
		145	[  0]	MOV  	 29		21	; slot29 = slot21
		146	[  0]	CALL 	 26	1	3	;  = table.insert(slot27, slot28)
		147	[  0]	ITERC	 20	3	3	; slot20, slot21, slot22 = ipairs, slot18, slot19; slot20, slot21 = ipairs(slot18, slot19)
		148	[  0]	ITERL	 20		-100	; slot19 = slot20; if slot20 != nil goto 49
		149	[  0]	LEN  	 17		16	; slot17 = #slot16
		150	[  0]	ISNEN	 17		0	; if slot17 ~= 0
		151	[  0]	JMP  	 17		98	; 	goto 250
		152	[  0]	UGET 	 17		1	; slot17 = uv1"unknwon"
		153	[  0]	TGETS	 17	17	25	; slot17 = uv1"unknown".catalog
		154	[  0]	LEN  	 17		17	; slot17 = #uv1"unknown".catalog
		155	[  0]	KSHORT	 18		0	; slot18 = 0
		156	[  0]	ISGE 	 18		17	; if slot18 >= slot17
		157	[  0]	JMP  	 17		92	; 	goto 250
		158	[  0]	GGET 	 17		26	; slot17 = _env["ipairs"]
		159	[  0]	UGET 	 19		1	; slot19 = uv1"unknwon"
		160	[  0]	TGETS	 19	19	25	; slot19 = uv1"unknown".catalog
		161	[  0]	CALL 	 17	4	2	; slot17, slot18, slot19 = ipairs(slot18)
		162	[  0]	JMP  	 20		85	; 	goto 248
		163	[  0]	ISFC 	 22		21	; slot22 = slot21; if not slot21
		164	[  0]	JMP  	 22		8	; 	goto 173
		165	[  0]	TGETS	 22	21	24	; slot22 = slot21.id
		166	[  0]	ISF  	   		22	; if not <unknown table>.id
		167	[  0]	JMP  	 23		5	; 	goto 173
		168	[  0]	GGET 	 22		23	; slot22 = _env["tostring"]
		169	[  0]	TGETS	 24	21	24	; slot24 = slot21.id
		170	[  0]	CALL 	 22	2	2	; slot22 = tostring(slot23)
		171	[  0]	TGETV	 22	12	22	; slot22 = uv0"unknown"[tostring]
		172	[  0]	NOT  	 22		22	; slot22 = not slot22
		173	[  0]	TGETS	 23	21	21	; slot23 = slot21.requiresActiveSkill
		174	[  0]	ISF  	   		23	; if not <unknown table>.requiresActiveSkill
		175	[  0]	JMP  	 23		2	; 	goto 178
		176	[  0]	ISNEP	  4		2	; if slot4 ~= true
		177	[  0]	JMP  	 23		19	; 	goto 197
		178	[  0]	TGETS	 23	21	20	; slot23 = slot21.requiresAttackSkill
		179	[  0]	ISF  	   		23	; if not <unknown table>.requiresAttackSkill
		180	[  0]	JMP  	 23		2	; 	goto 183
		181	[  0]	ISNEP	  6		2	; if slot6 ~= true
		182	[  0]	JMP  	 23		14	; 	goto 197
		183	[  0]	TGETS	 23	21	19	; slot23 = slot21.requiresRangedBasicAttack
		184	[  0]	ISF  	   		23	; if not <unknown table>.requiresRangedBasicAttack
		185	[  0]	JMP  	 23		2	; 	goto 188
		186	[  0]	ISNEP	  7		2	; if slot7 ~= true
		187	[  0]	JMP  	 23		9	; 	goto 197
		188	[  0]	TGETS	 23	21	18	; slot23 = slot21.requiresBountySource
		189	[  0]	ISF  	   		23	; if not <unknown table>.requiresBountySource
		190	[  0]	JMP  	 23		8	; 	goto 199
		191	[  0]	ISEQP	  8		2	; if slot8 == true
		192	[  0]	JMP  	 23		6	; 	goto 199
		193	[  0]	ISNEP	  8		0	; if slot8 ~= nil
		194	[  0]	JMP  	 23		2	; 	goto 197
		195	[  0]	ISEQP	  5		2	; if slot5 == true
		196	[  0]	JMP  	 23		2	; 	goto 199
		197	[  0]	KPRI 	 23		1	; slot23 = false
		198	[  0]	JMP  	 24		1	; 	goto 200
		199	[  0]	KPRI 	 23		2	; slot23 = true
		200	[  0]	KPRI 	 24		2	; slot24 = true
		201	[  0]	ISF  	   		3	; if not slot3
		202	[  0]	JMP  	 25		10	; 	goto 213
		203	[  0]	TGETS	 25	21	17	; slot25 = slot21.source
		204	[  0]	ISEQS	 25		16	; if <unknown table>.source == "Promotion"
		205	[  0]	JMP  	 25		5	; 	goto 211
		206	[  0]	TGETS	 25	21	17	; slot25 = slot21.source
		207	[  0]	ISEQS	 25		15	; if <unknown table>.source == "Both"
		208	[  0]	JMP  	 25		2	; 	goto 211
		209	[  0]	KPRI 	 24		1	; slot24 = false
		210	[  0]	JMP  	 25		1	; 	goto 212
		211	[  0]	KPRI 	 24		2	; slot24 = true
		212	[  0]	JMP  	 25		6	; 	goto 219
		213	[  0]	TGETS	 25	21	17	; slot25 = slot21.source
		214	[  0]	ISNES	 25		16	; if <unknown table>.source ~= "Promotion"
		215	[  0]	JMP  	 25		2	; 	goto 218
		216	[  0]	KPRI 	 24		1	; slot24 = false
		217	[  0]	JMP  	 25		1	; 	goto 219
		218	[  0]	KPRI 	 24		2	; slot24 = true
		219	[  0]	ISF  	   		22	; if not slot22
		220	[  0]	JMP  	 25		27	; 	goto 248
		221	[  0]	ISF  	   		24	; if not slot24
		222	[  0]	JMP  	 25		25	; 	goto 248
		223	[  0]	ISF  	   		23	; if not slot23
		224	[  0]	JMP  	 25		23	; 	goto 248
		225	[  0]	UGET 	 25		1	; slot25 = uv1"unknwon"
		226	[  0]	TGETS	 25	25	14	; slot25 = uv1"unknown".isContextEligible
		227	[  0]	MOV  	 27		21	; slot27 = slot21
		228	[  0]	MOV  	 28		9	; slot28 = slot9
		229	[  0]	MOV  	 29		12	; slot29 = uv0"unknown"
		230	[  0]	CALL 	 25	2	4	; slot25 = uv1"unknown".isContextEligible(table.insert, slot27, slot28)
		231	[  0]	ISF  	   		25	; if not uv1"unknown".isContextEligible
		232	[  0]	JMP  	 26		15	; 	goto 248
		233	[  0]	TGETS	 25	21	13	; slot25 = slot21.requiresNudge
		234	[  0]	ISF  	   		25	; if not <unknown table>.requiresNudge
		235	[  0]	JMP  	 25		2	; 	goto 238
		236	[  0]	ISF  	   		13	; if not uv1"unknown".isNudgeEnabledForRun
		237	[  0]	JMP  	 25		10	; 	goto 248
		238	[  0]	TGETS	 25	21	12	; slot25 = slot21.requiresBasicAttack
		239	[  0]	ISF  	   		25	; if not <unknown table>.requiresBasicAttack
		240	[  0]	JMP  	 25		2	; 	goto 243
		241	[  0]	ISNEP	  5		2	; if slot5 ~= true
		242	[  0]	JMP  	 25		5	; 	goto 248
		243	[  0]	GGET 	 25		11	; slot25 = _env["table"]
		244	[  0]	TGETS	 25	25	10	; slot25 = table.insert
		245	[  0]	MOV  	 27		16	; slot27 = slot16
		246	[  0]	MOV  	 28		21	; slot28 = slot21
		247	[  0]	CALL 	 25	1	3	;  = table.insert(table.insert, slot27)
		248	[  0]	ITERC	 20	3	3	; slot20, slot21, slot22 = ipairs, slot18, uv1"unknown".catalog; slot20, slot21 = ipairs(slot18, uv1"unknown".catalog)
		249	[  0]	ITERL	 20		-87	; uv1"unknown".catalog = slot20; if slot20 != nil goto 163
		250	[  0]	UGET 	 17		2	; slot17 = uv2"unknwon"
		251	[  0]	MOV  	 19		16	; slot19 = slot16
		252	[  0]	MOV  	 20		10	; slot20 = slot10
		253	[  0]	MOV  	 21		3	; slot21 = slot3
		254	[  0]	CALL 	 17	2	4	; slot17 = uv2"unknown"(slot18, slot19, slot20)
		255	[  0]	IST  	   		17	; if uv2"unknown"
		256	[  0]	JMP  	 18		2	; 	goto 259
		257	[  0]	KPRI 	 18		0	; slot18 = nil
		258	[  0]	RET1 	 18		2	; return slot18
		259	[  0]	UGET 	 18		3	; slot18 = uv3"unknwon"
		260	[  0]	TGETS	 20	17	9	; slot20 = uv2"unknown".variants
		261	[  0]	MOV  	 21		10	; slot21 = slot10
		262	[  0]	CALL 	 18	2	3	; slot18 = uv3"unknown"(slot19, uv2"unknown".variants)
		263	[  0]	IST  	   		18	; if uv3"unknown"
		264	[  0]	JMP  	 19		2	; 	goto 267
		265	[  0]	KPRI 	 19		0	; slot19 = nil
		266	[  0]	RET1 	 19		2	; return slot19
		267	[  0]	TDUP 	 19		8	; slot19 = copy table#k8
		268	[  0]	TGETS	 20	17	24	; slot20 = uv2"unknown".id
		269	[  0]	TSETS	 20	19	24	; slot19.id = uv2"unknown".id
		270	[  0]	TGETS	 20	17	7	; slot20 = uv2"unknown".name
		271	[  0]	TSETS	 20	19	7	; slot19.name = uv2"unknown".name
		272	[  0]	TGETS	 20	17	6	; slot20 = uv2"unknown".rarity
		273	[  0]	TSETS	 20	19	6	; slot19.rarity = uv2"unknown".rarity
		274	[  0]	TGETS	 20	17	5	; slot20 = uv2"unknown".effect
		275	[  0]	TSETS	 20	19	5	; slot19.effect = uv2"unknown".effect
		276	[  0]	TGETS	 20	17	17	; slot20 = uv2"unknown".source
		277	[  0]	TSETS	 20	19	17	; slot19.source = uv2"unknown".source
		278	[  0]	TGETS	 20	17	4	; slot20 = uv2"unknown".icon
		279	[  0]	TSETS	 20	19	4	; slot19.icon = uv2"unknown".icon
		280	[  0]	TNEW 	 20		0	; slot20 = new table( array: 0, dict: 1)
		281	[  0]	TSETS	 20	19	3	; slot19.variant = slot20
		282	[  0]	GGET 	 20		2	; slot20 = _env["pairs"]
		283	[  0]	MOV  	 22		18	; slot22 = uv3"unknown"
		284	[  0]	CALL 	 20	4	2	; slot20, slot21, slot22 = pairs(slot21)
		285	[  0]	ISNEXT	 23		6	; Verify ITERN at 292; goto 292
		286	[  0]	ISEQS	 23		1	; if slot23 == "chance"
		287	[  0]	JMP  	 25		4	; 	goto 292
		288	[  0]	ISEQS	 23		0	; if slot23 == "weight"
		289	[  0]	JMP  	 25		2	; 	goto 292
		290	[  0]	TGETS	 25	19	3	; slot25 = slot19.variant
		291	[  0]	TSETV	 24	25	23	; <unknown table>.variant[slot23] = slot24
		292	[  0]	ITERN	 23	3	3	; slot23, slot24, slot25 = pairs, slot21, uv3"unknown"; slot23, slot24 = pairs(slot21, uv3"unknown")
		293	[  0]	ITERL	 23		-8	; uv3"unknown" = slot23; if slot23 != nil goto 286
		294	[  0]	RET1 	 19		2	; return slot19
	405	[  0]	TSETS	  5	0	7	; slot0.rollForSpawnExcluding = slot5
	406	[  0]	FNEW 	  5		4	; N/A:0-0: 4 args, 1 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  4		7	; slot4 = _env["math"]
		  2	[  0]	TGETS	  4	4	6	; slot4 = math.max
		  3	[  0]	KSHORT	  6		0	; slot6 = 0
		  4	[  0]	GGET 	  7		7	; slot7 = _env["math"]
		  5	[  0]	TGETS	  7	7	5	; slot7 = math.min
		  6	[  0]	KSHORT	  9		5	; slot9 = 5
		  7	[  0]	GGET 	 10		7	; slot10 = _env["math"]
		  8	[  0]	TGETS	 10	10	4	; slot10 = math.floor
		  9	[  0]	GGET 	 12		3	; slot12 = _env["tonumber"]
		 10	[  0]	MOV  	 14		0	; slot14 = slot0
		 11	[  0]	CALL 	 12	2	2	; slot12 = tonumber(slot13)
		 12	[  0]	IST  	   		12	; if tonumber
		 13	[  0]	JMP  	 13		1	; 	goto 15
		 14	[  0]	KSHORT	 12		0	; slot12 = 0
		 15	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 16	[  0]	CALLM	  7	0	1	; MULTRES = math.min(slot8, ...MULTRES)
		 17	[  0]	CALLM	  4	2	1	; slot4 = math.max(slot5, ...MULTRES)
		 18	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 19	[  0]	KSHORT	  6		1	; slot6 = 1
		 20	[  0]	MOV  	  7		4	; slot7 = math.max
		 21	[  0]	KSHORT	  8		1	; slot8 = 1
		 22	[  0]	FORI 	  6		17	; for slot9 = slot6,slot7,slot8 else goto 40
		 23	[  0]	UGET 	 10		0	; slot10 = uv0"unknwon"
		 24	[  0]	TGETS	 10	10	2	; slot10 = uv0"unknown".rollForSpawn
		 25	[  0]	MOV  	 12		1	; slot12 = slot1
		 26	[  0]	MOV  	 13		2	; slot13 = slot2
		 27	[  0]	KNIL 	 14		15	; slot14, slot15 = nil
		 28	[  0]	UGET 	 16		0	; slot16 = uv0"unknwon"
		 29	[  0]	TGETS	 16	16	1	; slot16 = uv0"unknown".canBasicAttack
		 30	[  0]	MOV  	 18		3	; slot18 = slot3
		 31	[  0]	CALL 	 16	2	2	; slot16 = uv0"unknown".canBasicAttack(slot17)
		 32	[  0]	KNIL 	 17		18	; slot17, slot18 = nil
		 33	[  0]	UGET 	 19		0	; slot19 = uv0"unknwon"
		 34	[  0]	TGETS	 19	19	0	; slot19 = uv0"unknown".canEarnBounty
		 35	[  0]	MOV  	 21		3	; slot21 = slot3
		 36	[  0]	CALL 	 19	0	2	; MULTRES = uv0"unknown".canEarnBounty(slot20)
		 37	[  0]	CALLM	 10	2	7	; slot10 = uv0"unknown".rollForSpawn(slot11, slot12, slot13, slot14, slot15, uv0"unknown".canBasicAttack, slot17, ...MULTRES)
		 38	[  0]	TSETV	 10	5	9	; slot5[slot9] = uv0"unknown".rollForSpawn
		 39	[  0]	FORL 	  6		-17	; slot9 = slot9 + slot8; if cmp(slot9, sign slot8,  slot7) goto 23
		 40	[  0]	RET1 	  5		2	; return slot5
	407	[  0]	TSETS	  5	0	5	; slot0.rollList = slot5
	408	[  0]	FNEW 	  5		2	; N/A:0-0: 1 args, 1 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#1 = [
			#1: nil,
			#2: nil,
			#3: nil,
			#4: nil,
			#5: nil,
			#6: nil,
			#7: nil,
			#8: true,
			#9: nil,
			#10: true,
			#11: nil,
			#12: true,
			#13: nil,
			#14: true,
			#15: nil,
			#16: true,
			]
		
		
		ktable#4 = [
			[15.0] = true,
			[25.0] = true,
			[20.0] = true,
			[30.0] = true,
			[35.0] = true,
			]
		
		
		ktable#6 = [
			#1: nil,
			#2: nil,
			#3: nil,
			#4: nil,
			#5: nil,
			#6: nil,
			#7: nil,
			#8: -3%,
			#9: nil,
			#10: -4%,
			#11: nil,
			#12: -5%,
			#13: nil,
			#14: -6%,
			#15: nil,
			#16: -7%,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		1	; 	goto 4
		  3	[  0]	RET1 	  0		2	; return slot0
		  4	[  0]	GGET 	  1		38	; slot1 = _env["tostring"]
		  5	[  0]	TGETS	  3	0	37	; slot3 = slot0.id
		  6	[  0]	IST  	   		3	; if <unknown table>.id
		  7	[  0]	JMP  	  4		1	; 	goto 9
		  8	[  0]	KSTR 	  3		36	; slot3 = ""
		  9	[  0]	CALL 	  1	2	2	; slot1 = tostring(slot2)
		 10	[  0]	ISEQS	  1		35	; if slot1 == "10"
		 11	[  0]	JMP  	  2		11	; 	goto 23
		 12	[  0]	ISEQS	  1		34	; if slot1 == "15"
		 13	[  0]	JMP  	  2		9	; 	goto 23
		 14	[  0]	ISEQS	  1		33	; if slot1 == "16"
		 15	[  0]	JMP  	  2		7	; 	goto 23
		 16	[  0]	ISEQS	  1		32	; if slot1 == "17"
		 17	[  0]	JMP  	  2		5	; 	goto 23
		 18	[  0]	ISEQS	  1		31	; if slot1 == "19"
		 19	[  0]	JMP  	  2		3	; 	goto 23
		 20	[  0]	ISEQS	  1		30	; if slot1 == "22"
		 21	[  0]	JMP  	  2		1	; 	goto 23
		 22	[  0]	RET1 	  0		2	; return slot0
		 23	[  0]	KPRI 	  2		0	; slot2 = nil
		 24	[  0]	GGET 	  3		29	; slot3 = _env["ipairs"]
		 25	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 26	[  0]	TGETS	  5	5	28	; slot5 = uv0"unknown".catalog
		 27	[  0]	IST  	   		5	; if uv0"unknown".catalog
		 28	[  0]	JMP  	  6		1	; 	goto 30
		 29	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
		 30	[  0]	CALL 	  3	4	2	; slot3, slot4, slot5 = ipairs(slot4)
		 31	[  0]	JMP  	  6		10	; 	goto 42
		 32	[  0]	GGET 	  8		38	; slot8 = _env["tostring"]
		 33	[  0]	TGETS	 10	7	37	; slot10 = slot7.id
		 34	[  0]	IST  	   		10	; if <unknown table>.id
		 35	[  0]	JMP  	 11		1	; 	goto 37
		 36	[  0]	KSTR 	 10		36	; slot10 = ""
		 37	[  0]	CALL 	  8	2	2	; slot8 = tostring(slot9)
		 38	[  0]	ISNEV	  8		1	; if tostring ~= slot1
		 39	[  0]	JMP  	  8		2	; 	goto 42
		 40	[  0]	MOV  	  2		7	; slot2 = slot7
		 41	[  0]	JMP  	  3		2	; 	goto 44
		 42	[  0]	ITERC	  6	3	3	; slot6, slot7, slot8 = ipairs, slot4, slot5; slot6, slot7 = ipairs(slot4, slot5)
		 43	[  0]	ITERL	  6		-12	; slot5 = slot6; if slot6 != nil goto 32
		 44	[  0]	ISF  	   		2	; if not slot2
		 45	[  0]	JMP  	  3		10	; 	goto 56
		 46	[  0]	TGETS	  3	2	27	; slot3 = slot2.name
		 47	[  0]	TSETS	  3	0	27	; slot0.name = <unknown table>.name
		 48	[  0]	TGETS	  3	2	26	; slot3 = slot2.rarity
		 49	[  0]	TSETS	  3	0	26	; slot0.rarity = <unknown table>.rarity
		 50	[  0]	TGETS	  3	2	25	; slot3 = slot2.effect
		 51	[  0]	TSETS	  3	0	25	; slot0.effect = <unknown table>.effect
		 52	[  0]	TGETS	  3	2	24	; slot3 = slot2.source
		 53	[  0]	TSETS	  3	0	24	; slot0.source = <unknown table>.source
		 54	[  0]	TGETS	  3	2	23	; slot3 = slot2.icon
		 55	[  0]	TSETS	  3	0	23	; slot0.icon = <unknown table>.icon
		 56	[  0]	ISNES	  1		35	; if slot1 ~= "10"
		 57	[  0]	JMP  	  3		47	; 	goto 105
		 58	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		 59	[  0]	ISF  	   		3	; if not <unknown table>.variant
		 60	[  0]	JMP  	  4		44	; 	goto 105
		 61	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		 62	[  0]	TGETS	  3	3	21	; slot3 = <unknown table>.variant.value
		 63	[  0]	ISF  	   		3	; if not <unknown table>.variant.value
		 64	[  0]	JMP  	  4		40	; 	goto 105
		 65	[  0]	GGET 	  3		20	; slot3 = _env["tonumber"]
		 66	[  0]	GGET 	  5		38	; slot5 = _env["tostring"]
		 67	[  0]	TGETS	  7	0	22	; slot7 = slot0.variant
		 68	[  0]	TGETS	  7	7	21	; slot7 = <unknown table>.variant.value
		 69	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		 70	[  0]	MOV  	  7		5	; slot7 = tostring
		 71	[  0]	TGETS	  5	5	19	; slot5 = tostring.match
		 72	[  0]	KSTR 	  8		18	; slot8 = "[-+]?%d+%.?%d*"
		 73	[  0]	CALL 	  5	0	3	; MULTRES = tostring.match(slot6, tostring)
		 74	[  0]	CALLM	  3	2	0	; slot3 = tonumber(, ...MULTRES)
		 75	[  0]	ISF  	   		3	; if not tonumber
		 76	[  0]	JMP  	  4		166	; 	goto 243
		 77	[  0]	KNUM 	  4		0	; slot4 = 0.4
		 78	[  0]	ISGT 	  4		3	; if slot4 > tonumber
		 79	[  0]	JMP  	  4		163	; 	goto 243
		 80	[  0]	KNUM 	  4		1	; slot4 = 0.8
		 81	[  0]	ISGT 	  3		4	; if tonumber > slot4
		 82	[  0]	JMP  	  4		160	; 	goto 243
		 83	[  0]	GGET 	  4		17	; slot4 = _env["math"]
		 84	[  0]	TGETS	  4	4	16	; slot4 = math.max
		 85	[  0]	KSHORT	  6		0	; slot6 = 0
		 86	[  0]	GGET 	  7		17	; slot7 = _env["math"]
		 87	[  0]	TGETS	  7	7	15	; slot7 = math.min
		 88	[  0]	KSHORT	  9		4	; slot9 = 4
		 89	[  0]	GGET 	 10		17	; slot10 = _env["math"]
		 90	[  0]	TGETS	 10	10	14	; slot10 = math.floor
		 91	[  0]	SUBVN	 12	3	0	; slot12 = tonumber - 0.4
		 92	[  0]	MULVN	 12	12	2	; slot12 = slot12 * 10
		 93	[  0]	ADDVN	 12	12	3	; slot12 = slot12 + 0.5
		 94	[  0]	CALL 	 10	0	2	; MULTRES = math.floor(slot11)
		 95	[  0]	CALLM	  7	0	1	; MULTRES = math.min(slot8, ...MULTRES)
		 96	[  0]	CALLM	  4	2	1	; slot4 = math.max(tostring.match, ...MULTRES)
		 97	[  0]	TGETS	  5	0	22	; slot5 = slot0.variant
		 98	[  0]	KSTR 	  6		13	; slot6 = "+%d%%"
		 99	[  0]	MOV  	  8		6	; slot8 = slot6
		100	[  0]	TGETS	  6	6	12	; slot6 = slot6.format
		101	[  0]	ADDNV	  9	4	4	; slot9 = 3 + math.max
		102	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.format(math.min, slot8)
		103	[  0]	TSETS	  6	5	21	; <unknown table>.variant.value = <unknown table>.format
		104	[  0]	JMP  	  3		138	; 	goto 243
		105	[  0]	ISNES	  1		34	; if slot1 ~= "15"
		106	[  0]	JMP  	  3		12	; 	goto 119
		107	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		108	[  0]	IST  	   		3	; if <unknown table>.variant
		109	[  0]	JMP  	  4		1	; 	goto 111
		110	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		111	[  0]	TSETS	  3	0	22	; slot0.variant = slot3
		112	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		113	[  0]	KSTR 	  4		11	; slot4 = "+20%"
		114	[  0]	TSETS	  4	3	21	; <unknown table>.variant.value = slot4
		115	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		116	[  0]	KSTR 	  4		9	; slot4 = "-20%"
		117	[  0]	TSETS	  4	3	10	; <unknown table>.variant.damageReduction = slot4
		118	[  0]	JMP  	  3		124	; 	goto 243
		119	[  0]	ISNES	  1		33	; if slot1 ~= "16"
		120	[  0]	JMP  	  3		24	; 	goto 145
		121	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		122	[  0]	IST  	   		3	; if <unknown table>.variant
		123	[  0]	JMP  	  4		1	; 	goto 125
		124	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		125	[  0]	TSETS	  3	0	22	; slot0.variant = slot3
		126	[  0]	GGET 	  3		38	; slot3 = _env["tostring"]
		127	[  0]	TGETS	  5	0	22	; slot5 = slot0.variant
		128	[  0]	TGETS	  5	5	21	; slot5 = <unknown table>.variant.value
		129	[  0]	IST  	   		5	; if <unknown table>.variant.value
		130	[  0]	JMP  	  6		1	; 	goto 132
		131	[  0]	KSTR 	  5		36	; slot5 = ""
		132	[  0]	CALL 	  3	2	2	; slot3 = tostring(slot4)
		133	[  0]	GGET 	  4		20	; slot4 = _env["tonumber"]
		134	[  0]	MOV  	  8		3	; slot8 = tostring
		135	[  0]	TGETS	  6	3	19	; slot6 = tostring.match
		136	[  0]	KSTR 	  9		8	; slot9 = "%d+%.?%d*"
		137	[  0]	CALL 	  6	0	3	; MULTRES = tostring.match(math.min, tostring)
		138	[  0]	CALLM	  4	2	0	; slot4 = tonumber(, ...MULTRES)
		139	[  0]	IST  	   		4	; if tonumber
		140	[  0]	JMP  	  4		102	; 	goto 243
		141	[  0]	TGETS	  4	0	22	; slot4 = slot0.variant
		142	[  0]	KSTR 	  5		7	; slot5 = "4%"
		143	[  0]	TSETS	  5	4	21	; <unknown table>.variant.value = slot5
		144	[  0]	JMP  	  3		98	; 	goto 243
		145	[  0]	ISNES	  1		32	; if slot1 ~= "17"
		146	[  0]	JMP  	  3		30	; 	goto 177
		147	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		148	[  0]	IST  	   		3	; if <unknown table>.variant
		149	[  0]	JMP  	  4		1	; 	goto 151
		150	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		151	[  0]	TSETS	  3	0	22	; slot0.variant = slot3
		152	[  0]	GGET 	  3		20	; slot3 = _env["tonumber"]
		153	[  0]	GGET 	  5		38	; slot5 = _env["tostring"]
		154	[  0]	TGETS	  7	0	22	; slot7 = slot0.variant
		155	[  0]	TGETS	  7	7	21	; slot7 = <unknown table>.variant.value
		156	[  0]	IST  	   		7	; if <unknown table>.variant.value
		157	[  0]	JMP  	  8		1	; 	goto 159
		158	[  0]	KSTR 	  7		36	; slot7 = ""
		159	[  0]	CALL 	  5	2	2	; slot5 = tostring(tostring.match)
		160	[  0]	MOV  	  7		5	; slot7 = tostring
		161	[  0]	TGETS	  5	5	19	; slot5 = tostring.match
		162	[  0]	KSTR 	  8		18	; slot8 = "[-+]?%d+%.?%d*"
		163	[  0]	CALL 	  5	0	3	; MULTRES = tostring.match(tostring.match, tostring)
		164	[  0]	CALLM	  3	2	0	; slot3 = tonumber(, ...MULTRES)
		165	[  0]	TDUP 	  4		6	; slot4 = copy table#k6
		166	[  0]	TGETV	  5	4	3	; slot5 = slot4[tonumber]
		167	[  0]	IST  	   		5	; if slot5
		168	[  0]	JMP  	  5		4	; 	goto 173
		169	[  0]	KSHORT	  3		8	; slot3 = 8
		170	[  0]	TGETS	  5	0	22	; slot5 = slot0.variant
		171	[  0]	KSTR 	  6		5	; slot6 = "+8%"
		172	[  0]	TSETS	  6	5	21	; <unknown table>.variant.value = slot6
		173	[  0]	TGETS	  5	0	22	; slot5 = slot0.variant
		174	[  0]	TGETV	  6	4	3	; slot6 = slot4[slot3]
		175	[  0]	TSETS	  6	5	10	; <unknown table>.variant.damageReduction = slot6
		176	[  0]	JMP  	  3		66	; 	goto 243
		177	[  0]	ISNES	  1		31	; if slot1 ~= "19"
		178	[  0]	JMP  	  3		26	; 	goto 205
		179	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		180	[  0]	IST  	   		3	; if <unknown table>.variant
		181	[  0]	JMP  	  4		1	; 	goto 183
		182	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		183	[  0]	TSETS	  3	0	22	; slot0.variant = slot3
		184	[  0]	GGET 	  3		20	; slot3 = _env["tonumber"]
		185	[  0]	GGET 	  5		38	; slot5 = _env["tostring"]
		186	[  0]	TGETS	  7	0	22	; slot7 = slot0.variant
		187	[  0]	TGETS	  7	7	21	; slot7 = <unknown table>.variant.value
		188	[  0]	IST  	   		7	; if <unknown table>.variant.value
		189	[  0]	JMP  	  8		1	; 	goto 191
		190	[  0]	KSTR 	  7		36	; slot7 = ""
		191	[  0]	CALL 	  5	2	2	; slot5 = tostring(slot6)
		192	[  0]	MOV  	  7		5	; slot7 = tostring
		193	[  0]	TGETS	  5	5	19	; slot5 = tostring.match
		194	[  0]	KSTR 	  8		18	; slot8 = "[-+]?%d+%.?%d*"
		195	[  0]	CALL 	  5	0	3	; MULTRES = tostring.match(slot6, tostring)
		196	[  0]	CALLM	  3	2	0	; slot3 = tonumber(, ...MULTRES)
		197	[  0]	TDUP 	  4		4	; slot4 = copy table#k4
		198	[  0]	TGETV	  5	4	3	; slot5 = slot4[tonumber]
		199	[  0]	IST  	   		5	; if slot5
		200	[  0]	JMP  	  5		42	; 	goto 243
		201	[  0]	TGETS	  5	0	22	; slot5 = slot0.variant
		202	[  0]	KSTR 	  6		3	; slot6 = "+15%"
		203	[  0]	TSETS	  6	5	21	; <unknown table>.variant.value = slot6
		204	[  0]	JMP  	  3		38	; 	goto 243
		205	[  0]	ISNES	  1		30	; if slot1 ~= "22"
		206	[  0]	JMP  	  3		36	; 	goto 243
		207	[  0]	TGETS	  3	0	22	; slot3 = slot0.variant
		208	[  0]	IST  	   		3	; if <unknown table>.variant
		209	[  0]	JMP  	  4		1	; 	goto 211
		210	[  0]	TNEW 	  3		0	; slot3 = new table( array: 0, dict: 1)
		211	[  0]	TSETS	  3	0	22	; slot0.variant = slot3
		212	[  0]	GGET 	  3		17	; slot3 = _env["math"]
		213	[  0]	TGETS	  3	3	2	; slot3 = math.abs
		214	[  0]	GGET 	  5		20	; slot5 = _env["tonumber"]
		215	[  0]	GGET 	  7		38	; slot7 = _env["tostring"]
		216	[  0]	TGETS	  9	0	22	; slot9 = slot0.variant
		217	[  0]	TGETS	  9	9	21	; slot9 = <unknown table>.variant.value
		218	[  0]	IST  	   		9	; if <unknown table>.variant.value
		219	[  0]	JMP  	 10		1	; 	goto 221
		220	[  0]	KSTR 	  9		36	; slot9 = ""
		221	[  0]	CALL 	  7	2	2	; slot7 = tostring(slot8)
		222	[  0]	MOV  	  9		7	; slot9 = tostring
		223	[  0]	TGETS	  7	7	19	; slot7 = tostring.match
		224	[  0]	KSTR 	 10		18	; slot10 = "[-+]?%d+%.?%d*"
		225	[  0]	CALL 	  7	0	3	; MULTRES = tostring.match(slot8, tostring)
		226	[  0]	CALLM	  5	2	0	; slot5 = tonumber(, ...MULTRES)
		227	[  0]	IST  	   		5	; if tonumber
		228	[  0]	JMP  	  6		1	; 	goto 230
		229	[  0]	KSHORT	  5		0	; slot5 = 0
		230	[  0]	CALL 	  3	2	2	; slot3 = math.abs(slot4)
		231	[  0]	TDUP 	  4		1	; slot4 = copy table#k1
		232	[  0]	TGETV	  5	4	3	; slot5 = slot4[math.abs]
		233	[  0]	IST  	   		5	; if slot5
		234	[  0]	JMP  	  5		1	; 	goto 236
		235	[  0]	KSHORT	  3		8	; slot3 = 8
		236	[  0]	TGETS	  5	0	22	; slot5 = slot0.variant
		237	[  0]	KSTR 	  6		0	; slot6 = "-%d%%"
		238	[  0]	MOV  	  8		6	; slot8 = slot6
		239	[  0]	TGETS	  6	6	12	; slot6 = slot6.format
		240	[  0]	MOV  	  9		3	; slot9 = slot3
		241	[  0]	CALL 	  6	2	3	; slot6 = <unknown table>.format(tostring.match, slot8)
		242	[  0]	TSETS	  6	5	21	; <unknown table>.variant.value = <unknown table>.format
		243	[  0]	RET1 	  0		2	; return slot0
	409	[  0]	TSETS	  5	0	3	; slot0.normalizeOption = slot5
	410	[  0]	FNEW 	  5		0	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	TGETS	  1	1	1	; slot1 = uv0"unknown".normalizeOption
		  3	[  0]	MOV  	  3		0	; slot3 = slot0
		  4	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown".normalizeOption(slot2)
		  5	[  0]	MOV  	  0		1	; slot0 = slot1
		  6	[  0]	ISF  	   		0	; if not slot0
		  7	[  0]	JMP  	  1		3	; 	goto 11
		  8	[  0]	TGETS	  1	0	0	; slot1 = slot0.icon
		  9	[  0]	IST  	   		1	; if <unknown table>.icon
		 10	[  0]	JMP  	  2		1	; 	goto 12
		 11	[  0]	KPRI 	  1		0	; slot1 = nil
		 12	[  0]	RET1 	  1		2	; return slot1
	411	[  0]	TSETS	  5	0	1	; slot0.getIconPath = slot5
	412	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 413
	413	[  0]	RET1 	  0		2	; return slot0
	
