;
; Disassemble of E:\新建文件夹\Codex-GPT\games\Slotbound-Mod\extracted\game-files\src\game\item.lua
;
; Source file: N/A
;
; Flags:
;	Stripped: Yes
;	Endianness: Little
;	FFI: Not present
;

main N/A:0-0: 0+ args, 0 upvalues, 16 slots
	;;;; constant tables ;;;;
	ktable#34 = [
		[BATTLE] = 0,
		[TRAINING] = 0,
		]
	
	
	ktable#37 = [
		[R] = 13,
		[C] = 45,
		[L] = 2,
		[U] = 40,
		]
	
	
	ktable#41 = [
		[min] = 21,
		]
	
	
	ktable#42 = [
		[R] = 11,
		[C] = 52,
		[L] = 1,
		[U] = 36,
		]
	
	
	ktable#43 = [
		[max] = 20,
		[min] = 15,
		]
	
	
	ktable#44 = [
		[R] = 8,
		[C] = 62,
		[L] = 0,
		[U] = 30,
		]
	
	
	ktable#45 = [
		[max] = 14,
		[min] = 11,
		]
	
	
	ktable#46 = [
		[R] = 5,
		[C] = 70,
		[L] = 0,
		[U] = 25,
		]
	
	
	ktable#47 = [
		[max] = 10,
		[min] = 5,
		]
	
	
	ktable#49 = [
		[R] = 0,
		[C] = 85,
		[L] = 0,
		[U] = 15,
		]
	
	
	ktable#50 = [
		[max] = 4,
		[min] = 1,
		]
	
	
	ktable#53 = [
		[attackSpeedBonus] = 1.5,
		]
	
	
	ktable#54 = [
		#1: 0.9,
		#2: 1.2,
		]
	
	
	ktable#55 = [
		#1: 짧은 집중 사격,
		#2: 전열이 버티는 재장전,
		#3: 공격 횟수형 각인,
		]
	
	
	ktable#56 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#57 = [
		[stage] = all,
		[price] = 4,
		[burstDuration] = 3,
		[rarity] = U,
		[icon] = src/sprites/icons/relics icon/item icons/38 Rapid Fire Manual.png,
		[reloadDuration] = 2,
		[effect] = 궁수 계열은 3초 동안 {aspd.png} +90%, 이후 2초간 재장전합니다. (Lv.1),
		[name] = 속사 교본 (Rapid Fire Manual),
		[key] = RapidFireManual,
		[id] = 38,
		[iconW] = 32,
		[iconH] = 32,
		[type] = TRAINING,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#60 = [
		[damageReduction] = 0.26,
		]
	
	
	ktable#61 = [
		#1: 0.1,
		#2: 0.18,
		]
	
	
	ktable#62 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#63 = [
		[maxLevel] = 2,
		[price] = 4,
		[rarity] = U,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/item icons/37 Shield Manual.png,
		[iconH] = 32,
		[name] = 방패술 교본 (Shield Manual),
		[key] = ShieldManual,
		[id] = 37,
		[engagementDuration] = 6,
		[type] = TRAINING,
		[effect] = 전사 계열이 첫 교전 후 6초 동안 받는 피해가 10% 감소합니다. (Lv.1),
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = false,
		]
	
	
	ktable#66 = [
		[atkBonus] = 0.24,
		]
	
	
	ktable#67 = [
		#1: 0.06,
		#2: 0.12,
		#3: 0.18,
		]
	
	
	ktable#68 = [
		#1: 결투사,
		#2: 공격력,
		#3: 단일 화력,
		]
	
	
	ktable#69 = [
		#1: 3,
		#2: 4,
		#3: 5,
		]
	
	
	ktable#70 = [
		[stage] = all,
		[price] = 3,
		[rarity] = C,
		[name] = 결투사 훈련서 (Duelist Manual),
		[icon] = src/sprites/icons/relics icon/item icons/36 Duelist Manual.png,
		[effect] = 결투사 계열의 {atk.png} +6%. (Lv.1),
		[iconW] = 32,
		[iconH] = 32,
		[key] = DuelistTraining,
		[id] = 36,
		[type] = TRAINING,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#73 = [
		[maxHpBonus] = 0.16,
		[atkBonus] = 0.16,
		]
	
	
	ktable#74 = [
		#1: 0.04,
		#2: 0.08,
		#3: 0.12,
		]
	
	
	ktable#75 = [
		#1: 0.04,
		#2: 0.08,
		#3: 0.12,
		]
	
	
	ktable#76 = [
		#1: 기병,
		#2: 체력,
		#3: 공격력,
		]
	
	
	ktable#77 = [
		#1: 3,
		#2: 4,
		#3: 5,
		]
	
	
	ktable#78 = [
		[stage] = all,
		[price] = 3,
		[rarity] = C,
		[name] = 기병 훈련서 (Cavalry Manual),
		[icon] = src/sprites/icons/relics icon/item icons/35 Cavalry Manual.png,
		[effect] = 기병 계열의 {hp.png}와 {atk.png} +4%. (Lv.1),
		[iconW] = 32,
		[iconH] = 32,
		[key] = CavalryTraining,
		[id] = 35,
		[type] = TRAINING,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#81 = [
		[aspdBonus] = 0.16,
		[atkBonus] = 0.2,
		]
	
	
	ktable#82 = [
		#1: 0.04,
		#2: 0.08,
		#3: 0.12,
		]
	
	
	ktable#83 = [
		#1: 0.05,
		#2: 0.1,
		#3: 0.15,
		]
	
	
	ktable#84 = [
		#1: 마법사,
		#2: 공격력,
		#3: 공격속도,
		]
	
	
	ktable#85 = [
		#1: 3,
		#2: 4,
		#3: 5,
		]
	
	
	ktable#86 = [
		[stage] = all,
		[price] = 3,
		[rarity] = C,
		[type] = TRAINING,
		[icon] = src/sprites/icons/relics icon/item icons/34 Mage Manual.png,
		[effect] = 마법사 계열의 {atk.png} +5%, {aspd.png} +4%. (Lv.1),
		[name] = 마법사 훈련서 (Mage Manual),
		[iconW] = 32,
		[key] = MageTraining,
		[id] = 34,
		[iconH] = 32,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#89 = [
		[atkBonus] = 0.24,
		]
	
	
	ktable#91 = [
		#1: 0.06,
		#2: 0.12,
		#3: 0.18,
		]
	
	
	ktable#92 = [
		#1: 창병,
		#2: 공격력,
		#3: 화력,
		]
	
	
	ktable#93 = [
		#1: 3,
		#2: 4,
		#3: 5,
		]
	
	
	ktable#94 = [
		[stage] = all,
		[price] = 3,
		[rarity] = C,
		[name] = 창병 훈련서 (Spearman Manual),
		[icon] = src/sprites/icons/relics icon/item icons/33 Spearman Manual.png,
		[effect] = 창병 계열의 {atk.png} +6%. (Lv.1),
		[iconW] = 32,
		[iconH] = 32,
		[key] = SpearmanTraining,
		[id] = 33,
		[type] = TRAINING,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#97 = [
		[aspdBonus] = 0.2,
		]
	
	
	ktable#99 = [
		#1: 0.05,
		#2: 0.1,
		#3: 0.15,
		]
	
	
	ktable#100 = [
		#1: 궁수,
		#2: 공격속도,
		#3: 기본 공격,
		]
	
	
	ktable#101 = [
		#1: 3,
		#2: 4,
		#3: 5,
		]
	
	
	ktable#102 = [
		[stage] = all,
		[price] = 3,
		[rarity] = C,
		[type] = TRAINING,
		[icon] = src/sprites/icons/relics icon/item icons/32 Archer Manual.png,
		[effect] = 궁수 계열의 {aspd.png} +5%. (Lv.1),
		[iconW] = 32,
		[name] = 궁수 훈련서 (Archer Manual),
		[iconH] = 32,
		[key] = ArcherTraining,
		[id] = 32,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#105 = [
		[maxHpBonus] = 0.24,
		]
	
	
	ktable#107 = [
		#1: 0.06,
		#2: 0.12,
		#3: 0.18,
		]
	
	
	ktable#108 = [
		#1: 전사,
		#2: 체력,
		#3: 전열,
		]
	
	
	ktable#109 = [
		#1: 3,
		#2: 4,
		#3: 5,
		]
	
	
	ktable#110 = [
		[stage] = all,
		[price] = 3,
		[rarity] = C,
		[effect] = 전사 계열의 {hp.png} +6%. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/31 Warrior Manual.png,
		[iconW] = 32,
		[iconH] = 32,
		[name] = 전사 훈련서 (Warrior Manual),
		[key] = WarriorTraining,
		[id] = 31,
		[type] = TRAINING,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#112 = [
		[triggerCooldown] = 5,
		]
	
	
	ktable#113 = [
		#1: 스킬,
		#2: 주력 육성,
		#3: 적 특수기 대응,
		]
	
	
	ktable#114 = [
		#1: 10,
		]
	
	
	ktable#115 = [
		[stage] = 2,
		[price] = 10,
		[rarity] = L,
		[effect] = 적이 스킬을 사용하면 공격력이 가장 높은 아군 1명이 즉시 스킬을 사용합니다. 8초에 한 번 발동합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/60 Retaliation Sigil.png,
		[iconW] = 32,
		[iconH] = 32,
		[name] = 응전의 인장 (Retaliation Sigil),
		[key] = RetaliationSigil,
		[id] = 60,
		[triggerCooldown] = 8,
		[type] = BATTLE,
		[maxLevel] = 1,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#117 = [
		[triggerCooldown] = 5,
		]
	
	
	ktable#118 = [
		#1: 약화 대응,
		#2: 후열 보호,
		#3: 생존,
		]
	
	
	ktable#119 = [
		#1: 7,
		]
	
	
	ktable#120 = [
		[stage] = 2,
		[price] = 7,
		[rarity] = R,
		[effect] = 아군이 독이나 능력치 감소 효과를 받으면 즉시 제거합니다. 아군마다 8초에 한 번 발동합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/59 Antidote Fruit.png,
		[iconW] = 32,
		[panelActivationFeedback] = false,
		[name] = 해독 열매 (Antidote Fruit),
		[iconH] = 32,
		[key] = AntidoteFruit,
		[id] = 59,
		[triggerCooldown] = 8,
		[type] = BATTLE,
		[maxLevel] = 1,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#123 = [
		[damageRatio] = 0.35,
		]
	
	
	ktable#125 = [
		#1: 0.15,
		#2: 0.25,
		]
	
	
	ktable#126 = [
		#1: 적 사격 역이용,
		#2: 물량 대응,
		]
	
	
	ktable#127 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#128 = [
		[stage] = 2,
		[price] = 4,
		[rarity] = U,
		[effect] = 적의 원거리 기본 공격 경로에 다른 적이 있으면, 그 적에게도 {atk.png}의 15% 피해를 줍니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/58 Eye of Confusion.png,
		[iconW] = 32,
		[panelActivationFeedback] = false,
		[name] = 혼란의 눈동자 (Eye of Confusion),
		[iconH] = 32,
		[key] = EyeOfConfusion,
		[id] = 58,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#131 = [
		[triggerInterval] = 2,
		]
	
	
	ktable#133 = [
		#1: 4,
		#2: 3,
		]
	
	
	ktable#134 = [
		#1: 근접·원거리 혼합,
		#2: 처치 연계,
		#3: 협공,
		]
	
	
	ktable#135 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#136 = [
		[stage] = all,
		[price] = 4,
		[rarity] = U,
		[icon] = src/sprites/icons/relics icon/item icons/57 Crossfire Flare.png,
		[effect] = 근접 아군이 적을 처치하면 가장 강한 원거리 아군이 즉시 공격합니다. 원거리 처치 시에는 반대로 발동합니다. (Lv.1),
		[iconW] = 32,
		[name] = 협공 신호탄 (Crossfire Flare),
		[iconH] = 32,
		[key] = CrossfireFlare,
		[id] = 57,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#139 = [
		[basicAttackBonus] = 0.5,
		]
	
	
	ktable#140 = [
		#1: 0.2,
		#2: 0.3,
		#3: 0.4,
		]
	
	
	ktable#141 = [
		#1: 약화 대응,
		#2: 기본 공격,
		#3: 반격,
		]
	
	
	ktable#142 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#143 = [
		[stage] = 2,
		[price] = 2,
		[rarity] = C,
		[effect] = 아군이 디버프 효과를 받으면 다음 기본 공격 피해가 20% 증가합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/56 Spitecap.png,
		[panelActivationFeedback] = false,
		[name] = 심술버섯 (Spitecap),
		[iconW] = 32,
		[key] = Spitecap,
		[id] = 56,
		[iconH] = 32,
		[triggerCooldown] = 4,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#146 = [
		[attackSpeedBonus] = 0.45,
		]
	
	
	ktable#148 = [
		#1: 0.15,
		#2: 0.25,
		#3: 0.35,
		]
	
	
	ktable#149 = [
		#1: 기지 방어,
		#2: 빠른 적 대응,
		#3: 원거리,
		]
	
	
	ktable#150 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#151 = [
		[stage] = 2,
		[price] = 2,
		[rarity] = C,
		[icon] = src/sprites/icons/relics icon/item icons/55 Pursuit Wedge.png,
		[effect] = 아군을 무시하고 기지로 향하는 적을 공격할 때 공격속도가 15% 증가합니다. (Lv.1),
		[iconW] = 32,
		[name] = 추격의 쐐기 (Pursuit Wedge),
		[iconH] = 32,
		[key] = PursuitWedge,
		[id] = 55,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#153 = [
		[healShare] = 0.5,
		]
	
	
	ktable#154 = [
		#1: 추가 전열,
		#2: 회복,
		#3: 소환,
		]
	
	
	ktable#155 = [
		#1: 10,
		]
	
	
	ktable#156 = [
		[stage] = 1,
		[price] = 10,
		[rarity] = L,
		[type] = BATTLE,
		[icon] = src/sprites/icons/relics icon/item icons/54 Guardian Golem.png,
		[effect] = 돌 골렘 1마리가 전장에 추가됩니다. 아군이 회복받으면 회복량의 30%만큼 골렘도 회복합니다. (Lv.1),
		[iconW] = 32,
		[name] = 수호 골렘 (Guardian Golem),
		[iconH] = 32,
		[key] = GuardianGolem,
		[id] = 54,
		[healShare] = 0.3,
		[maxLevel] = 1,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#158 = [
		[damageBonus] = 0.4,
		]
	
	
	ktable#159 = [
		#1: 단일 주력,
		#2: 강적 사냥,
		#3: 보스,
		]
	
	
	ktable#160 = [
		#1: 7,
		]
	
	
	ktable#161 = [
		[stage] = 1,
		[price] = 7,
		[rarity] = R,
		[panelActivationFeedback] = false,
		[icon] = src/sprites/icons/relics icon/item icons/53 Hunting Mask.png,
		[effect] = 공격력이 가장 높은 아군은 최대 체력이 가장 높은 적을 우선 공격하며, 그 적에게 주는 피해가 25% 증가합니다. (Lv.1),
		[damageBonus] = 0.25,
		[name] = 사냥 가면 (Hunting Mask),
		[iconW] = 32,
		[key] = HuntingMask,
		[id] = 53,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 1,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#164 = [
		[extraTargetDamageRatio] = 1,
		]
	
	
	ktable#166 = [
		#1: 0.5,
		#2: 0.8,
		]
	
	
	ktable#167 = [
		#1: 광역 스킬,
		#2: 물량 처리,
		#3: 스킬 조합,
		]
	
	
	ktable#168 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#169 = [
		[stage] = 1,
		[price] = 4,
		[rarity] = U,
		[effect] = 2명 이상을 공격하는 아군 스킬이 적 1명을 추가로 공격합니다. 추가 대상에게는 50% 피해를 줍니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/52 Branching Bloom.png,
		[iconW] = 32,
		[panelActivationFeedback] = false,
		[name] = 갈래꽃 (Branching Bloom),
		[iconH] = 32,
		[key] = BranchingBloom,
		[id] = 52,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#172 = [
		[hpRatio] = 0.65,
		]
	
	
	ktable#174 = [
		#1: 0.35,
		#2: 0.5,
		]
	
	
	ktable#175 = [
		#1: 적 유인,
		#2: 후열 보호,
		#3: 광역 공격,
		]
	
	
	ktable#176 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#177 = [
		[stage] = 1,
		[price] = 4,
		[rarity] = U,
		[icon] = src/sprites/icons/relics icon/item icons/51 Decoy Dummy.png,
		[effect] = 전투 시작 시 전열에 미끼 인형을 세웁니다. 적들은 인형을 우선 공격하며, 인형이 한 번이라도 맞으면 모든 아군이 적을 감지합니다. (Lv.1),
		[iconW] = 32,
		[name] = 미끼 인형 (Decoy Dummy),
		[iconH] = 32,
		[key] = DecoyDummy,
		[id] = 51,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#180 = [
		[shieldMaxHpRatio] = 0.2,
		]
	
	
	ktable#181 = [
		#1: 0.08,
		#2: 0.12,
		#3: 0.16,
		]
	
	
	ktable#182 = [
		#1: 위기 탈출,
		#2: 배치 변화,
		#3: 보호막,
		]
	
	
	ktable#183 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#184 = [
		[stage] = 1,
		[price] = 2,
		[rarity] = C,
		[retreatDuration] = 0.66,
		[retreatDistance] = 45,
		[hpThreshold] = 0.3,
		[name] = 도피 망토 (Escape Cloak),
		[effect] = 아군이 처음 {hp.png} 30% 이하가 되면 뒤로 물러나며 최대 {hp.png}의 8% 보호막을 얻습니다. (Lv.1),
		[key] = EscapeCloak,
		[id] = 50,
		[icon] = src/sprites/icons/relics icon/item icons/50 Escape Cloak.png,
		[iconW] = 32,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#187 = [
		[delayedEnemyCount] = 4,
		]
	
	
	ktable#189 = [
		#1: 1,
		#2: 2,
		#3: 3,
		]
	
	
	ktable#190 = [
		#1: 물량 분산,
		#2: 단일 화력,
		#3: 전열 안정,
		]
	
	
	ktable#191 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#192 = [
		[stage] = 1,
		[price] = 2,
		[rarity] = C,
		[effect] = 적이 4명 이상이면 가장 뒤의 적 1명이 1.5초 늦게 등장합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/49 Rockfall.png,
		[iconW] = 32,
		[iconH] = 32,
		[name] = 낙석 (Rockfall),
		[key] = Rockfall,
		[id] = 49,
		[minimumEnemyCount] = 4,
		[spawnDelaySec] = 2,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#195 = [
		[damagePerType] = 0.12,
		]
	
	
	ktable#196 = [
		#1: 혼합 병종,
		#2: 집중 공격,
		#3: 병종 조합,
		]
	
	
	ktable#197 = [
		#1: 10,
		]
	
	
	ktable#198 = [
		[stage] = all,
		[price] = 10,
		[rarity] = L,
		[effect] = 같은 적을 공격하는 병종이 다양할수록 해당 적이 받는 피해가 증가합니다. 2종 8% / 3종 16% / 4종 이상 24%.,
		[icon] = src/sprites/icons/relics icon/item icons/44 Necklace of Unity.png,
		[iconW] = 32,
		[iconH] = 32,
		[name] = 결속의 목걸이 (Necklace of Unity),
		[key] = NecklaceOfUnity,
		[id] = 44,
		[type] = BATTLE,
		[maxLevel] = 1,
		[cooldownSec] = 0,
		[damagePerType] = 0.08,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#201 = [
		[rangeBonus] = 100,
		]
	
	
	ktable#202 = [
		#1: 원거리 보호,
		#2: 탑승,
		#3: 배치,
		]
	
	
	ktable#203 = [
		#1: 7,
		]
	
	
	ktable#204 = [
		[stage] = all,
		[rangeBonus] = 70,
		[rarity] = R,
		[price] = 7,
		[icon] = src/sprites/icons/relics icon/item icons/29 Wooden Watchtower.png,
		[effect] = 원거리 아군 1명을 사격탑에 배치합니다. {dist.png} +70, 타워는 마지막 공격 대상이 됩니다.,
		[iconW] = 32,
		[name] = 목제 사격탑 (Wooden Watchtower),
		[iconH] = 32,
		[key] = WoodenWatchtower,
		[id] = 29,
		[type] = BATTLE,
		[maxLevel] = 1,
		[cooldownSec] = 0,
		[currency] = 골드,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#207 = [
		[bladeDamage] = 0.45,
		]
	
	
	ktable#208 = [
		#1: 흡수 집중,
		#2: 주력 보호,
		#3: 근접 화력,
		]
	
	
	ktable#209 = [
		#1: 7,
		]
	
	
	ktable#210 = [
		[stage] = all,
		[price] = 7,
		[rarity] = R,
		[bladeDamage] = 0.3,
		[icon] = src/sprites/icons/relics icon/item icons/25 Guardian Blades.png,
		[effect] = LV이 가장 높은 아군 뒤에 수호검 2개가 떠다니며 적을 베어냅니다.,
		[iconW] = 32,
		[name] = 호위검 (Guardian Blades),
		[iconH] = 32,
		[key] = CrownOfBlades,
		[id] = 25,
		[type] = BATTLE,
		[maxLevel] = 1,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#213 = [
		[focusDuration] = 4,
		]
	
	
	ktable#215 = [
		#1: 2,
		#2: 3,
		]
	
	
	ktable#216 = [
		#1: 집중 공격,
		#2: 처치 연계,
		#3: 단일 화력,
		]
	
	
	ktable#217 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#218 = [
		[stage] = all,
		[price] = 4,
		[rarity] = U,
		[effect] = 6초마다 모든 아군이 가장 앞에 있는 적을 2초간 집중 공격합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/20 Command Banner.png,
		[iconW] = 32,
		[name] = 지휘 깃발 (Command Banner),
		[iconH] = 32,
		[key] = CommandBanner,
		[id] = 20,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#221 = [
		[basicAttackDamageBonus] = 0.85,
		]
	
	
	ktable#222 = [
		#1: 0.45,
		#2: 0.65,
		]
	
	
	ktable#223 = [
		#1: 원거리,
		#2: 안정적인 화력,
		]
	
	
	ktable#224 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#225 = [
		[stage] = all,
		[price] = 4,
		[rarity] = U,
		[projectileVisualScale] = 1.15,
		[icon] = src/sprites/icons/relics icon/item icons/18 Tense String.png,
		[effect] = 원거리 아군의 기본 공격 피해가 45% 증가하지만, {aspd.png} -25%. (Lv.1),
		[iconW] = 32,
		[name] = 긴장한 활시위 (Tense String),
		[iconH] = 32,
		[key] = TenseString,
		[id] = 18,
		[type] = BATTLE,
		[maxLevel] = 2,
		[attackIntervalMul] = 1.3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#228 = [
		[shieldMaxHpRatio] = 0.4,
		]
	
	
	ktable#229 = [
		#1: 0.2,
		#2: 0.3,
		]
	
	
	ktable#230 = [
		#1: 소수 정예,
		#2: 전투 지속력,
		]
	
	
	ktable#231 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#232 = [
		[stage] = all,
		[price] = 4,
		[rarity] = U,
		[icon] = src/sprites/icons/relics icon/item icons/16 Solitary Oath.png,
		[effect] = 아군을 3명 이하로 출전시키면, 각 아군은 최대 {hp.png}의 20% 보호막을 얻습니다. (Lv.1),
		[iconW] = 32,
		[name] = 고독한 맹세 (Solitary Oath),
		[iconH] = 32,
		[key] = SolitaryOath,
		[id] = 16,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#235 = [
		[damageBonus] = 0.35,
		]
	
	
	ktable#237 = [
		#1: 0.15,
		#2: 0.25,
		]
	
	
	ktable#238 = [
		#1: 상태 이상 확산,
		#2: 원거리 분산 공격,
		]
	
	
	ktable#239 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#240 = [
		[stage] = all,
		[price] = 4,
		[rarity] = U,
		[panelActivationFeedback] = false,
		[icon] = src/sprites/icons/relics icon/item icons/15 Scatter Scope.png,
		[effect] = 원거리 아군이 적을 번갈아 공격합니다. 대상을 바꾼 기본 공격의 피해가 15% 증가합니다. (Lv.1),
		[name] = 분산 조준경 (Scatter Scope),
		[iconW] = 32,
		[key] = ScatterScope,
		[id] = 15,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#243 = [
		[survivalDuration] = 2.5,
		[healPct] = 0.29,
		]
	
	
	ktable#244 = [
		#1: 0.15,
		#2: 0.22,
		]
	
	
	ktable#246 = [
		#1: 1.5,
		#2: 2,
		]
	
	
	ktable#247 = [
		#1: 치명 피해 방어,
		#2: 회복 연계,
		]
	
	
	ktable#248 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#249 = [
		[stage] = all,
		[price] = 4,
		[rarity] = U,
		[effect] = 처음 쓰러지는 아군은 1.5초간 석상이 되어 살아남고, 이후 최대 {hp.png}의 15%를 회복합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/14 Oath Helm.png,
		[iconW] = 32,
		[name] = 맹세의 투구 (Oath Helm),
		[iconH] = 32,
		[key] = OathHelm,
		[id] = 14,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#252 = [
		[bindTargets] = 4,
		]
	
	
	ktable#254 = [
		#1: 2,
		#2: 3,
		]
	
	
	ktable#255 = [
		#1: 기지 방어,
		#2: 돌파 차단,
		]
	
	
	ktable#256 = [
		#1: 4,
		#2: 6,
		]
	
	
	ktable#257 = [
		[stage] = 2,
		[price] = 4,
		[bindDuration] = 2,
		[rarity] = U,
		[icon] = src/sprites/icons/relics icon/item icons/12 Gate Net.png,
		[effect] = 기지에 가까워진 적 2명을 2초 동안 붙잡습니다. 전투당 두 번 발동합니다. (Lv.1),
		[name] = 방범 그물 (Gate Net),
		[maxActivations] = 2,
		[key] = GateNet,
		[id] = 12,
		[iconW] = 32,
		[triggerCooldown] = 6,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 2,
		[cooldownSec] = 0,
		[triggerDistanceFraction] = 0.15,
		[currency] = 정수,
		[bossBindDuration] = 1,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#260 = [
		[bindDuration] = 2,
		]
	
	
	ktable#262 = [
		#1: 0.8,
		#2: 1.2,
		#3: 1.6,
		]
	
	
	ktable#263 = [
		#1: 돌파 차단,
		#2: 원거리,
		#3: 속박,
		]
	
	
	ktable#264 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#265 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[icon] = src/sprites/icons/relics icon/item icons/10 Ankle Trap.png,
		[effect] = 이동 중인 적을 처음 기본 공격하면 0.8초간 속박합니다. (Lv.1),
		[iconW] = 32,
		[name] = 발목 덫 (Ankle Trap),
		[iconH] = 32,
		[key] = AnkleTrap,
		[id] = 10,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#268 = [
		[basicAttackBonus] = 0.7,
		]
	
	
	ktable#270 = [
		#1: 0.25,
		#2: 0.4,
		#3: 0.55,
		]
	
	
	ktable#271 = [
		#1: 첫 처치,
		#2: 부대 공격 신호,
		]
	
	
	ktable#272 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#273 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[effect] = 첫 적을 처치하면 북이 울립니다. 모든 아군의 다음 기본 공격 피해가 25% 증가합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/09 Vanguard Drum.png,
		[iconW] = 32,
		[name] = 진격의 북 (Vanguard Drum),
		[iconH] = 32,
		[key] = VanguardDrum,
		[id] = 09,
		[buffDuration] = 5,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#279 = [
		#1: 1,
		#2: 0.62,
		#3: 0.24,
		]
	
	
	ktable#281 = [
		#1: 1,
		#2: 0.38,
		#3: 0.38,
		]
	
	
	ktable#283 = [
		]
	
	
	ktable#284 = [
		#1: 0.42,
		#2: 0.88,
		#3: 0.43,
		]
	
	
	ktable#287 = [
		#1: 1,
		#2: 0.62,
		#3: 0.24,
		]
	
	
	ktable#289 = [
		#1: 1,
		#2: 0.38,
		#3: 0.38,
		]
	
	
	ktable#291 = [
		]
	
	
	ktable#292 = [
		#1: 0.42,
		#2: 0.88,
		#3: 0.43,
		]
	
	
	ktable#295 = [
		#1: 1,
		#2: 0.62,
		#3: 0.24,
		]
	
	
	ktable#297 = [
		#1: 1,
		#2: 0.38,
		#3: 0.38,
		]
	
	
	ktable#299 = [
		]
	
	
	ktable#300 = [
		#1: 0.42,
		#2: 0.88,
		#3: 0.43,
		]
	
	
	ktable#301 = [
		]
	
	
	ktable#303 = [
		#1: 1,
		#2: 0.62,
		#3: 0.24,
		]
	
	
	ktable#305 = [
		#1: 1,
		#2: 0.38,
		#3: 0.38,
		]
	
	
	ktable#307 = [
		]
	
	
	ktable#308 = [
		#1: 0.42,
		#2: 0.88,
		#3: 0.43,
		]
	
	
	ktable#309 = [
		[transferRatio] = 1.2,
		]
	
	
	ktable#311 = [
		#1: 0.6,
		#2: 0.8,
		#3: 1,
		]
	
	
	ktable#312 = [
		#1: 지속 피해,
		#2: 확산,
		#3: 물량 처리,
		]
	
	
	ktable#313 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#314 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[transferRadius] = 70,
		[effect] = 독, 출혈, 화상에 걸린 적이 죽으면 남은 지속 피해의 60%가 가까운 다른 적 1명에게 옮겨갑니다.,
		[name] = 저주버섯 (Cursed Mushroom),
		[icon] = src/sprites/icons/relics icon/item icons/08 Cursed Mushroom.png,
		[key] = CursedMushroom,
		[id] = 08,
		[iconW] = 32,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = false,
		]
	
	
	ktable#317 = [
		[damageReduction] = 0.2,
		]
	
	
	ktable#318 = [
		#1: 0.08,
		#2: 0.12,
		#3: 0.16,
		]
	
	
	ktable#319 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#320 = [
		[effect] = 원거리 아군이 원거리 적에게 받는 피해 -8%. (Lv.1),
		[price] = 2,
		[rarity] = C,
		[iconW] = 32,
		[icon] = src/sprites/icons/relics icon/item icons/07 Dust Cloak.png,
		[iconH] = 32,
		[name] = 먼지 망토 (Dust Cloak),
		[key] = DustCloak,
		[id] = 07,
		[rangeThreshold] = 70,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = false,
		]
	
	
	ktable#323 = [
		[damageReduction] = 0.25,
		]
	
	
	ktable#325 = [
		#1: 0.1,
		#2: 0.15,
		#3: 0.2,
		]
	
	
	ktable#326 = [
		#1: 전열,
		#2: 큰 피해 방어,
		]
	
	
	ktable#327 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#328 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[effect] = 가장 앞에 배치한 아군 1명이 받는 피해 -10%. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/06 Frontline Armor.png,
		[iconW] = 32,
		[iconH] = 32,
		[name] = 전열 갑옷 (Frontline Armor),
		[key] = FrontlineArmor,
		[id] = 06,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#331 = [
		[retargetDamageBonus] = 0.65,
		]
	
	
	ktable#333 = [
		#1: 0.2,
		#2: 0.35,
		#3: 0.5,
		]
	
	
	ktable#334 = [
		#1: 원거리,
		#2: 헛공격 방지,
		#3: 처치 연계,
		]
	
	
	ktable#335 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#336 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[effect] = 날아가는 원거리 기본 공격의 대상이 먼저 죽으면, 다른 적을 추적해 20% 추가 피해를 줍니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/05 Hunter’s Lens.png,
		[retargetRadius] = 90,
		[panelActivationFeedback] = false,
		[name] = 사냥꾼의 렌즈 (Hunter’s Lens),
		[key] = HuntersLens,
		[id] = 05,
		[iconW] = 32,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#339 = [
		[shieldMaxHpRatio] = 0.15,
		]
	
	
	ktable#340 = [
		#1: 0.06,
		#2: 0.09,
		#3: 0.12,
		]
	
	
	ktable#341 = [
		#1: 보호막 전달,
		#2: 전열·후열 연계,
		]
	
	
	ktable#342 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#343 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[icon] = src/sprites/icons/relics icon/item icons/04 Broken Shield.png,
		[shieldDuration] = 4,
		[name] = 부서진 방패 (Broken Shield),
		[effect] = 아군의 보호막이 깨지면, 체력이 가장 낮은 다른 아군 1명이 최대 {hp.png}의 6% 보호막을 얻습니다. (Lv.1),
		[key] = BrokenShield,
		[id] = 04,
		[iconW] = 32,
		[triggerCooldown] = 3,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#346 = [
		[healPct] = 0.44,
		]
	
	
	ktable#348 = [
		#1: 0.2,
		#2: 0.28,
		#3: 0.36,
		]
	
	
	ktable#349 = [
		#1: 긴급 회복,
		#2: 핵심 유닛 보호,
		]
	
	
	ktable#350 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#351 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[effect] = 전투당 1회, 처음 {hp.png} 30% 이하가 된 아군을 최대 {hp.png}의 20%만큼 즉시 회복시킵니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/03 First Aid.png,
		[cooldownSec] = 0,
		[iconW] = 32,
		[name] = 응급 처치 (First Aid),
		[iconH] = 32,
		[key] = FirstAid,
		[id] = 03,
		[type] = BATTLE,
		[maxLevel] = 3,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#354 = [
		[shieldMaxHpRatio] = 0.3,
		]
	
	
	ktable#356 = [
		#1: 0.12,
		#2: 0.18,
		#3: 0.24,
		]
	
	
	ktable#357 = [
		#1: 보호막,
		#2: 첫 교전,
		#3: 생존,
		]
	
	
	ktable#358 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#359 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[icon] = src/sprites/icons/relics icon/item icons/02 Sturdy Shield.png,
		[shieldDuration] = 5,
		[effect] = 전투 시작 시 모든 아군이 최대 체력의 12% 보호막을 얻습니다. 보호막은 처음 피해를 받은 뒤 5초간 유지됩니다. (Lv.1),
		[name] = 튼튼한 방패 (Sturdy Shield),
		[iconW] = 32,
		[key] = SturdyShield,
		[id] = 02,
		[iconH] = 32,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#365 = [
		[basicAttackDamageBonus] = 0.2,
		]
	
	
	ktable#367 = [
		#1: 0.08,
		#2: 0.12,
		#3: 0.16,
		]
	
	
	ktable#369 = [
		#1: 기본 공격,
		#2: 범용 보강,
		]
	
	
	ktable#371 = [
		#1: 2,
		#2: 3,
		#3: 4,
		]
	
	
	ktable#374 = [
		[stage] = all,
		[price] = 2,
		[rarity] = C,
		[effect] = 모든 아군의 기본 공격 피해가 8% 증가합니다. (Lv.1),
		[icon] = src/sprites/icons/relics icon/item icons/01 Sturdy Fist.png,
		[iconW] = 32,
		[iconH] = 32,
		[name] = 굳센 주먹 (Sturdy Fist),
		[key] = SturdyFist,
		[id] = 01,
		[type] = BATTLE,
		[maxLevel] = 3,
		[cooldownSec] = 0,
		[currency] = 정수,
		[initiallyUnlocked] = true,
		]
	
	
	ktable#376 = [
		[en] = TRAINING,
		[ko] = 훈련,
		]
	
	
	ktable#378 = [
		]
	
	
	ktable#379 = [
		[en] = BATTLE,
		[ko] = 전투,
		]
	
	
	ktable#381 = [
		#1: 0.95,
		#2: 0.65,
		#3: 0.25,
		#4: 1,
		]
	
	
	ktable#382 = [
		[label] = LEGEND,
		]
	
	
	ktable#384 = [
		#1: 0.55,
		#2: 0.65,
		#3: 0.95,
		#4: 1,
		]
	
	
	ktable#385 = [
		[label] = RARE,
		]
	
	
	ktable#387 = [
		#1: 0.55,
		#2: 0.9,
		#3: 0.55,
		#4: 1,
		]
	
	
	ktable#388 = [
		[label] = UNCOMMON,
		]
	
	
	ktable#390 = [
		]
	
	
	ktable#392 = [
		#1: 1,
		#2: 1,
		#3: 1,
		#4: 1,
		]
	
	
	ktable#393 = [
		[label] = COMMON,
		]
	
	
	;;;; instructions ;;;;
	  1	[  0]	GGET 	  0		395	; slot0 = _env["require"]
	  2	[  0]	KSTR 	  2		394	; slot2 = "src.data.assets"
	  3	[  0]	CALL 	  0	2	2	; slot0 = require(slot1)
	  4	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
	  5	[  0]	TDUP 	  2		390	; slot2 = copy table#k390
	  6	[  0]	TDUP 	  3		393	; slot3 = copy table#k393
	  7	[  0]	TDUP 	  4		392	; slot4 = copy table#k392
	  8	[  0]	TSETS	  4	3	391	; slot3.color = slot4
	  9	[  0]	TSETS	  3	2	389	; slot2.C = slot3
	 10	[  0]	TDUP 	  3		388	; slot3 = copy table#k388
	 11	[  0]	TDUP 	  4		387	; slot4 = copy table#k387
	 12	[  0]	TSETS	  4	3	391	; slot3.color = slot4
	 13	[  0]	TSETS	  3	2	386	; slot2.U = slot3
	 14	[  0]	TDUP 	  3		385	; slot3 = copy table#k385
	 15	[  0]	TDUP 	  4		384	; slot4 = copy table#k384
	 16	[  0]	TSETS	  4	3	391	; slot3.color = slot4
	 17	[  0]	TSETS	  3	2	383	; slot2.R = slot3
	 18	[  0]	TDUP 	  3		382	; slot3 = copy table#k382
	 19	[  0]	TDUP 	  4		381	; slot4 = copy table#k381
	 20	[  0]	TSETS	  4	3	391	; slot3.color = slot4
	 21	[  0]	TSETS	  3	2	380	; slot2.L = slot3
	 22	[  0]	TDUP 	  3		378	; slot3 = copy table#k378
	 23	[  0]	TDUP 	  4		379	; slot4 = copy table#k379
	 24	[  0]	TSETS	  4	3	377	; slot3.BATTLE = slot4
	 25	[  0]	TDUP 	  4		376	; slot4 = copy table#k376
	 26	[  0]	TSETS	  4	3	375	; slot3.TRAINING = slot4
	 27	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
	 28	[  0]	TNEW 	  5		0	; slot5 = new table( array: 0, dict: 1)
	 29	[  0]	TNEW 	  6		40	; slot6 = new table( array: 40, dict: 1)
	 30	[  0]	TDUP 	  7		374	; slot7 = copy table#k374
	 31	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	 32	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	 33	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	 34	[  0]	TDUP 	  8		371	; slot8 = copy table#k371
	 35	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	 36	[  0]	TDUP 	  8		369	; slot8 = copy table#k369
	 37	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	 38	[  0]	TDUP 	  8		367	; slot8 = copy table#k367
	 39	[  0]	TSETS	  8	7	366	; slot7.basicAttackDamageBonus = slot8
	 40	[  0]	TDUP 	  8		365	; slot8 = copy table#k365
	 41	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	 42	[  0]	FNEW 	  8		363	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0.08,
			#2: 0.12,
			#3: 0.16,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	TGETS	  2	0	8	; slot2 = slot0.basicAttackDamageBonus
		  5	[  0]	IST  	   		2	; if <unknown table>.basicAttackDamageBonus
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  8	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		  9	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	4	; slot6 = math.min
		 13	[  0]	MOV  	  8		1	; slot8 = slot1
		 14	[  0]	LEN  	  9		2	; slot9 = #slot2
		 15	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 16	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 17	[  0]	TGETV	  3	2	3	; slot3 = slot2[math.max]
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	LEN  	  3		2	; slot3 = #slot2
		 21	[  0]	TGETV	  3	2	3	; slot3 = slot2[slot3]
		 22	[  0]	IST  	   		3	; if slot3
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		0	; slot3 = 0
		 25	[  0]	GGET 	  4		3	; slot4 = _env["string"]
		 26	[  0]	TGETS	  4	4	2	; slot4 = string.format
		 27	[  0]	KSTR 	  6		1	; slot6 = "모든 아군의 기본 공격 피해가 %d%% 증가합니다. (Lv.%d)"
		 28	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 30	[  0]	MULVN	  9	3	0	; slot9 = slot3 * 100
		 31	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 33	[  0]	MOV  	  8		1	; slot8 = slot1
		 34	[  0]	CALLT	  4		4	; return string.format(slot5, slot6, math.floor)
	 43	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	 44	[  0]	FNEW 	  8		361	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	 45	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	 46	[  0]	TSETB	  7	6	1	; slot6[1] = slot7
	 47	[  0]	TDUP 	  7		359	; slot7 = copy table#k359
	 48	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	 49	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	 50	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	 51	[  0]	TDUP 	  8		358	; slot8 = copy table#k358
	 52	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	 53	[  0]	TDUP 	  8		357	; slot8 = copy table#k357
	 54	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	 55	[  0]	TDUP 	  8		356	; slot8 = copy table#k356
	 56	[  0]	TSETS	  8	7	355	; slot7.shieldMaxHpRatio = slot8
	 57	[  0]	TDUP 	  8		354	; slot8 = copy table#k354
	 58	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	 59	[  0]	FNEW 	  8		353	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0.12,
			#2: 0.18,
			#3: 0.24,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	TGETS	  2	0	8	; slot2 = slot0.shieldMaxHpRatio
		  5	[  0]	IST  	   		2	; if <unknown table>.shieldMaxHpRatio
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  8	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		  9	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	4	; slot6 = math.min
		 13	[  0]	MOV  	  8		1	; slot8 = slot1
		 14	[  0]	LEN  	  9		2	; slot9 = #slot2
		 15	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 16	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 17	[  0]	TGETV	  3	2	3	; slot3 = slot2[math.max]
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	LEN  	  3		2	; slot3 = #slot2
		 21	[  0]	TGETV	  3	2	3	; slot3 = slot2[slot3]
		 22	[  0]	IST  	   		3	; if slot3
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		0	; slot3 = 0
		 25	[  0]	GGET 	  4		3	; slot4 = _env["string"]
		 26	[  0]	TGETS	  4	4	2	; slot4 = string.format
		 27	[  0]	KSTR 	  6		1	; slot6 = "전투 시작 시 모든 아군이 최대 체력의 %d%% 보호막을 얻습니다. 보호막은 처음 피해를 받은 뒤 5초간 유지됩니다. (Lv.%d)"
		 28	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 30	[  0]	MULVN	  9	3	0	; slot9 = slot3 * 100
		 31	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 33	[  0]	MOV  	  8		1	; slot8 = slot1
		 34	[  0]	CALLT	  4		4	; return string.format(slot5, slot6, math.floor)
	 60	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	 61	[  0]	FNEW 	  8		352	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	 62	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	 63	[  0]	TSETB	  7	6	2	; slot6[2] = slot7
	 64	[  0]	TDUP 	  7		351	; slot7 = copy table#k351
	 65	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	 66	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	 67	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	 68	[  0]	TDUP 	  8		350	; slot8 = copy table#k350
	 69	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	 70	[  0]	TDUP 	  8		349	; slot8 = copy table#k349
	 71	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	 72	[  0]	TDUP 	  8		348	; slot8 = copy table#k348
	 73	[  0]	TSETS	  8	7	347	; slot7.healPct = slot8
	 74	[  0]	TDUP 	  8		346	; slot8 = copy table#k346
	 75	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	 76	[  0]	FNEW 	  8		345	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0.2,
			#2: 0.28,
			#3: 0.36,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	TGETS	  2	0	8	; slot2 = slot0.healPct
		  5	[  0]	IST  	   		2	; if <unknown table>.healPct
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  8	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		  9	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	4	; slot6 = math.min
		 13	[  0]	MOV  	  8		1	; slot8 = slot1
		 14	[  0]	LEN  	  9		2	; slot9 = #slot2
		 15	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 16	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 17	[  0]	TGETV	  3	2	3	; slot3 = slot2[math.max]
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	LEN  	  3		2	; slot3 = #slot2
		 21	[  0]	TGETV	  3	2	3	; slot3 = slot2[slot3]
		 22	[  0]	IST  	   		3	; if slot3
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		0	; slot3 = 0
		 25	[  0]	GGET 	  4		3	; slot4 = _env["string"]
		 26	[  0]	TGETS	  4	4	2	; slot4 = string.format
		 27	[  0]	KSTR 	  6		1	; slot6 = "전투당 1회, 처음 {hp.png} 30%% 이하가 된 아군을 최대 {hp.png}의 %d%%만큼 즉시 회복시킵니다. (Lv.%d)"
		 28	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 30	[  0]	MULVN	  9	3	0	; slot9 = slot3 * 100
		 31	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 33	[  0]	MOV  	  8		1	; slot8 = slot1
		 34	[  0]	CALLT	  4		4	; return string.format(slot5, slot6, math.floor)
	 77	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	 78	[  0]	FNEW 	  8		344	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	 79	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	 80	[  0]	TSETB	  7	6	3	; slot6[3] = slot7
	 81	[  0]	TDUP 	  7		343	; slot7 = copy table#k343
	 82	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	 83	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	 84	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	 85	[  0]	TDUP 	  8		342	; slot8 = copy table#k342
	 86	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	 87	[  0]	TDUP 	  8		341	; slot8 = copy table#k341
	 88	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	 89	[  0]	TDUP 	  8		340	; slot8 = copy table#k340
	 90	[  0]	TSETS	  8	7	355	; slot7.shieldMaxHpRatio = slot8
	 91	[  0]	TDUP 	  8		339	; slot8 = copy table#k339
	 92	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	 93	[  0]	FNEW 	  8		338	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0.06,
			#2: 0.09,
			#3: 0.12,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	TGETS	  2	0	8	; slot2 = slot0.shieldMaxHpRatio
		  5	[  0]	IST  	   		2	; if <unknown table>.shieldMaxHpRatio
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  8	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		  9	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	4	; slot6 = math.min
		 13	[  0]	MOV  	  8		1	; slot8 = slot1
		 14	[  0]	LEN  	  9		2	; slot9 = #slot2
		 15	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 16	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 17	[  0]	TGETV	  3	2	3	; slot3 = slot2[math.max]
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	LEN  	  3		2	; slot3 = #slot2
		 21	[  0]	TGETV	  3	2	3	; slot3 = slot2[slot3]
		 22	[  0]	IST  	   		3	; if slot3
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		0	; slot3 = 0
		 25	[  0]	GGET 	  4		3	; slot4 = _env["string"]
		 26	[  0]	TGETS	  4	4	2	; slot4 = string.format
		 27	[  0]	KSTR 	  6		1	; slot6 = "아군의 보호막이 깨지면, 체력이 가장 낮은 다른 아군 1명이 최대 {hp.png}의 %d%% 보호막을 얻습니다. (Lv.%d)"
		 28	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 30	[  0]	MULVN	  9	3	0	; slot9 = slot3 * 100
		 31	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 33	[  0]	MOV  	  8		1	; slot8 = slot1
		 34	[  0]	CALLT	  4		4	; return string.format(slot5, slot6, math.floor)
	 94	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	 95	[  0]	FNEW 	  8		337	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	 96	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	 97	[  0]	TSETB	  7	6	4	; slot6[4] = slot7
	 98	[  0]	TDUP 	  7		336	; slot7 = copy table#k336
	 99	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	100	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	101	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	102	[  0]	TDUP 	  8		335	; slot8 = copy table#k335
	103	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	104	[  0]	TDUP 	  8		334	; slot8 = copy table#k334
	105	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	106	[  0]	TDUP 	  8		333	; slot8 = copy table#k333
	107	[  0]	TSETS	  8	7	332	; slot7.retargetDamageBonus = slot8
	108	[  0]	TDUP 	  8		331	; slot8 = copy table#k331
	109	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	110	[  0]	FNEW 	  8		330	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0.2,
			#2: 0.35,
			#3: 0.5,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	TGETS	  2	0	8	; slot2 = slot0.retargetDamageBonus
		  5	[  0]	IST  	   		2	; if <unknown table>.retargetDamageBonus
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  8	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		  9	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	4	; slot6 = math.min
		 13	[  0]	MOV  	  8		1	; slot8 = slot1
		 14	[  0]	LEN  	  9		2	; slot9 = #slot2
		 15	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 16	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 17	[  0]	TGETV	  3	2	3	; slot3 = slot2[math.max]
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	LEN  	  3		2	; slot3 = #slot2
		 21	[  0]	TGETV	  3	2	3	; slot3 = slot2[slot3]
		 22	[  0]	IST  	   		3	; if slot3
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		0	; slot3 = 0
		 25	[  0]	GGET 	  4		3	; slot4 = _env["string"]
		 26	[  0]	TGETS	  4	4	2	; slot4 = string.format
		 27	[  0]	KSTR 	  6		1	; slot6 = "날아가는 원거리 기본 공격의 대상이 먼저 죽으면, 다른 적을 추적해 %d%% 추가 피해를 줍니다. (Lv.%d)"
		 28	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 30	[  0]	MULVN	  9	3	0	; slot9 = slot3 * 100
		 31	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 33	[  0]	MOV  	  8		1	; slot8 = slot1
		 34	[  0]	CALLT	  4		4	; return string.format(slot5, slot6, math.floor)
	111	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	112	[  0]	FNEW 	  8		329	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	113	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	114	[  0]	TSETB	  7	6	5	; slot6[5] = slot7
	115	[  0]	TDUP 	  7		328	; slot7 = copy table#k328
	116	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	117	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	118	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	119	[  0]	TDUP 	  8		327	; slot8 = copy table#k327
	120	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	121	[  0]	TDUP 	  8		326	; slot8 = copy table#k326
	122	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	123	[  0]	TDUP 	  8		325	; slot8 = copy table#k325
	124	[  0]	TSETS	  8	7	324	; slot7.damageReduction = slot8
	125	[  0]	TDUP 	  8		323	; slot8 = copy table#k323
	126	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	127	[  0]	FNEW 	  8		322	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0.1,
			#2: 0.15,
			#3: 0.2,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	TGETS	  2	0	8	; slot2 = slot0.damageReduction
		  5	[  0]	IST  	   		2	; if <unknown table>.damageReduction
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  8	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		  9	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	4	; slot6 = math.min
		 13	[  0]	MOV  	  8		1	; slot8 = slot1
		 14	[  0]	LEN  	  9		2	; slot9 = #slot2
		 15	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 16	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 17	[  0]	TGETV	  3	2	3	; slot3 = slot2[math.max]
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	LEN  	  3		2	; slot3 = #slot2
		 21	[  0]	TGETV	  3	2	3	; slot3 = slot2[slot3]
		 22	[  0]	IST  	   		3	; if slot3
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		0	; slot3 = 0
		 25	[  0]	GGET 	  4		3	; slot4 = _env["string"]
		 26	[  0]	TGETS	  4	4	2	; slot4 = string.format
		 27	[  0]	KSTR 	  6		1	; slot6 = "가장 앞에 배치한 아군 1명이 받는 피해 -%d%%. (Lv.%d)"
		 28	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 30	[  0]	MULVN	  9	3	0	; slot9 = slot3 * 100
		 31	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 33	[  0]	MOV  	  8		1	; slot8 = slot1
		 34	[  0]	CALLT	  4		4	; return string.format(slot5, slot6, math.floor)
	128	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	129	[  0]	FNEW 	  8		321	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	130	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	131	[  0]	TSETB	  7	6	6	; slot6[6] = slot7
	132	[  0]	TDUP 	  7		320	; slot7 = copy table#k320
	133	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	134	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	135	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	136	[  0]	TDUP 	  8		319	; slot8 = copy table#k319
	137	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	138	[  0]	TDUP 	  8		318	; slot8 = copy table#k318
	139	[  0]	TSETS	  8	7	324	; slot7.damageReduction = slot8
	140	[  0]	TDUP 	  8		317	; slot8 = copy table#k317
	141	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	142	[  0]	FNEW 	  8		316	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		ktable#7 = [
			#1: 0.08,
			#2: 0.12,
			#3: 0.16,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		1	; 	goto 4
		  3	[  0]	KSHORT	  1		1	; slot1 = 1
		  4	[  0]	TGETS	  2	0	8	; slot2 = slot0.damageReduction
		  5	[  0]	IST  	   		2	; if <unknown table>.damageReduction
		  6	[  0]	JMP  	  3		1	; 	goto 8
		  7	[  0]	TDUP 	  2		7	; slot2 = copy table#k7
		  8	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		  9	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 10	[  0]	KSHORT	  5		1	; slot5 = 1
		 11	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 12	[  0]	TGETS	  6	6	4	; slot6 = math.min
		 13	[  0]	MOV  	  8		1	; slot8 = slot1
		 14	[  0]	LEN  	  9		2	; slot9 = #slot2
		 15	[  0]	CALL 	  6	0	3	; MULTRES = math.min(slot7, slot8)
		 16	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 17	[  0]	TGETV	  3	2	3	; slot3 = slot2[math.max]
		 18	[  0]	IST  	   		3	; if slot3
		 19	[  0]	JMP  	  4		5	; 	goto 25
		 20	[  0]	LEN  	  3		2	; slot3 = #slot2
		 21	[  0]	TGETV	  3	2	3	; slot3 = slot2[slot3]
		 22	[  0]	IST  	   		3	; if slot3
		 23	[  0]	JMP  	  4		1	; 	goto 25
		 24	[  0]	KSHORT	  3		0	; slot3 = 0
		 25	[  0]	GGET 	  4		3	; slot4 = _env["string"]
		 26	[  0]	TGETS	  4	4	2	; slot4 = string.format
		 27	[  0]	KSTR 	  6		1	; slot6 = "원거리 아군이 원거리 적에게 받는 피해 -%d%%. (Lv.%d)"
		 28	[  0]	GGET 	  7		6	; slot7 = _env["math"]
		 29	[  0]	TGETS	  7	7	0	; slot7 = math.floor
		 30	[  0]	MULVN	  9	3	0	; slot9 = slot3 * 100
		 31	[  0]	ADDVN	  9	9	1	; slot9 = slot9 + 0.5
		 32	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 33	[  0]	MOV  	  8		1	; slot8 = slot1
		 34	[  0]	CALLT	  4		4	; return string.format(slot5, slot6, math.floor)
	143	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	144	[  0]	FNEW 	  8		315	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	145	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	146	[  0]	TSETB	  7	6	7	; slot6[7] = slot7
	147	[  0]	TDUP 	  7		314	; slot7 = copy table#k314
	148	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	149	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	150	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	151	[  0]	TDUP 	  8		313	; slot8 = copy table#k313
	152	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	153	[  0]	TDUP 	  8		312	; slot8 = copy table#k312
	154	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	155	[  0]	TDUP 	  8		311	; slot8 = copy table#k311
	156	[  0]	TSETS	  8	7	310	; slot7.transferRatio = slot8
	157	[  0]	TDUP 	  8		309	; slot8 = copy table#k309
	158	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	159	[  0]	TDUP 	  8		301	; slot8 = copy table#k301
	160	[  0]	TDUP 	  9		307	; slot9 = copy table#k307
	161	[  0]	TDUP 	 10		308	; slot10 = copy table#k308
	162	[  0]	TSETS	 10	9	306	; slot9.독 = slot10
	163	[  0]	TDUP 	 10		305	; slot10 = copy table#k305
	164	[  0]	TSETS	 10	9	304	; slot9.출혈 = slot10
	165	[  0]	TDUP 	 10		303	; slot10 = copy table#k303
	166	[  0]	TSETS	 10	9	302	; slot9.화상 = slot10
	167	[  0]	TSETS	  9	8	373	; slot8.ko = slot9
	168	[  0]	TDUP 	  9		299	; slot9 = copy table#k299
	169	[  0]	TDUP 	 10		300	; slot10 = copy table#k300
	170	[  0]	TSETS	 10	9	298	; slot9.poison = slot10
	171	[  0]	TDUP 	 10		297	; slot10 = copy table#k297
	172	[  0]	TSETS	 10	9	296	; slot9.bleed = slot10
	173	[  0]	TDUP 	 10		295	; slot10 = copy table#k295
	174	[  0]	TSETS	 10	9	294	; slot9.burn = slot10
	175	[  0]	TSETS	  9	8	293	; slot8.en = slot9
	176	[  0]	TDUP 	  9		291	; slot9 = copy table#k291
	177	[  0]	TDUP 	 10		292	; slot10 = copy table#k292
	178	[  0]	TSETS	 10	9	290	; slot9.毒 = slot10
	179	[  0]	TDUP 	 10		289	; slot10 = copy table#k289
	180	[  0]	TSETS	 10	9	288	; slot9.出血 = slot10
	181	[  0]	TDUP 	 10		287	; slot10 = copy table#k287
	182	[  0]	TSETS	 10	9	286	; slot9.炎上 = slot10
	183	[  0]	TSETS	  9	8	285	; slot8.ja = slot9
	184	[  0]	TDUP 	  9		283	; slot9 = copy table#k283
	185	[  0]	TDUP 	 10		284	; slot10 = copy table#k284
	186	[  0]	TSETS	 10	9	282	; slot9.中毒 = slot10
	187	[  0]	TDUP 	 10		281	; slot10 = copy table#k281
	188	[  0]	TSETS	 10	9	280	; slot9.流血 = slot10
	189	[  0]	TDUP 	 10		279	; slot10 = copy table#k279
	190	[  0]	TSETS	 10	9	278	; slot9.灼烧 = slot10
	191	[  0]	TSETS	  9	8	277	; slot8.zh = slot9
	192	[  0]	TSETS	  8	7	276	; slot7.effectTermColors = slot8
	193	[  0]	FNEW 	  8		275	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: 0.6,
			#2: 0.8,
			#3: 1,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	KSHORT	  7		3	; slot7 = 3
		  7	[  0]	GGET 	  8		9	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	6	; slot8 = math.floor
		  9	[  0]	GGET 	 10		5	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	TGETS	  2	0	4	; slot2 = slot0.transferRatio
		 20	[  0]	IST  	   		2	; if <unknown table>.transferRatio
		 21	[  0]	JMP  	  3		1	; 	goto 23
		 22	[  0]	TDUP 	  2		3	; slot2 = copy table#k3
		 23	[  0]	TGETV	  2	2	1	; slot2 = slot2[math.max]
		 24	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 25	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 26	[  0]	KSTR 	  5		0	; slot5 = "독, 출혈, 화상에 걸린 적이 죽으면 남은 지속 피해의 %d%%가 가까운 다른 적 1명에게 옮겨갑니다."
		 27	[  0]	GGET 	  6		9	; slot6 = _env["math"]
		 28	[  0]	TGETS	  6	6	6	; slot6 = math.floor
		 29	[  0]	MULVN	  8	2	0	; slot8 = slot2 * 100
		 30	[  0]	ADDVN	  8	8	1	; slot8 = slot8 + 0.5
		 31	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 32	[  0]	CALLMT	  3		1	; return string.format(, ...MULTRES)
	194	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	195	[  0]	FNEW 	  8		274	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	196	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	197	[  0]	TSETB	  7	6	8	; slot6[8] = slot7
	198	[  0]	TDUP 	  7		273	; slot7 = copy table#k273
	199	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	200	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	201	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	202	[  0]	TDUP 	  8		272	; slot8 = copy table#k272
	203	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	204	[  0]	TDUP 	  8		271	; slot8 = copy table#k271
	205	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	206	[  0]	TDUP 	  8		270	; slot8 = copy table#k270
	207	[  0]	TSETS	  8	7	269	; slot7.basicAttackBonus = slot8
	208	[  0]	TDUP 	  8		268	; slot8 = copy table#k268
	209	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	210	[  0]	FNEW 	  8		267	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#3 = [
			#1: 0.25,
			#2: 0.4,
			#3: 0.55,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	KSHORT	  7		3	; slot7 = 3
		  7	[  0]	GGET 	  8		9	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	6	; slot8 = math.floor
		  9	[  0]	GGET 	 10		5	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	TGETS	  2	0	4	; slot2 = slot0.basicAttackBonus
		 20	[  0]	IST  	   		2	; if <unknown table>.basicAttackBonus
		 21	[  0]	JMP  	  3		1	; 	goto 23
		 22	[  0]	TDUP 	  2		3	; slot2 = copy table#k3
		 23	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 24	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 25	[  0]	KSTR 	  5		0	; slot5 = "첫 적을 처치하면 북이 울립니다. 모든 아군의 다음 기본 공격 피해가 %d%% 증가합니다. (Lv.%d)"
		 26	[  0]	GGET 	  6		9	; slot6 = _env["math"]
		 27	[  0]	TGETS	  6	6	6	; slot6 = math.floor
		 28	[  0]	TGETV	  8	2	1	; slot8 = slot2[math.max]
		 29	[  0]	MULVN	  8	8	0	; slot8 = slot8 * 100
		 30	[  0]	ADDVN	  8	8	1	; slot8 = slot8 + 0.5
		 31	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 32	[  0]	MOV  	  7		1	; slot7 = math.max
		 33	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, math.floor)
	211	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	212	[  0]	FNEW 	  8		266	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	213	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	214	[  0]	TSETB	  7	6	9	; slot6[9] = slot7
	215	[  0]	TDUP 	  7		265	; slot7 = copy table#k265
	216	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	217	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	218	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	219	[  0]	TDUP 	  8		264	; slot8 = copy table#k264
	220	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	221	[  0]	TDUP 	  8		263	; slot8 = copy table#k263
	222	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	223	[  0]	TDUP 	  8		262	; slot8 = copy table#k262
	224	[  0]	TSETS	  8	7	261	; slot7.bindDuration = slot8
	225	[  0]	TDUP 	  8		260	; slot8 = copy table#k260
	226	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	227	[  0]	FNEW 	  8		259	; N/A:0-0: 2 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.8,
			#2: 1.2,
			#3: 1.6,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	GGET 	  7		9	; slot7 = _env["math"]
		  7	[  0]	TGETS	  7	7	6	; slot7 = math.floor
		  8	[  0]	GGET 	  9		5	; slot9 = _env["tonumber"]
		  9	[  0]	MOV  	 11		1	; slot11 = slot1
		 10	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 11	[  0]	IST  	   		9	; if tonumber
		 12	[  0]	JMP  	 10		1	; 	goto 14
		 13	[  0]	KSHORT	  9		1	; slot9 = 1
		 14	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 15	[  0]	KSHORT	  8		3	; slot8 = 3
		 16	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, math.floor)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		4	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	3	; slot2 = string.format
		 21	[  0]	KSTR 	  4		2	; slot4 = "이동 중인 적을 처음 기본 공격하면 %.1f초간 속박합니다. (Lv.%d)"
		 22	[  0]	TGETS	  5	0	1	; slot5 = slot0.bindDuration
		 23	[  0]	IST  	   		5	; if <unknown table>.bindDuration
		 24	[  0]	JMP  	  6		1	; 	goto 26
		 25	[  0]	TDUP 	  5		0	; slot5 = copy table#k0
		 26	[  0]	TGETV	  5	5	1	; slot5 = slot5[math.max]
		 27	[  0]	MOV  	  6		1	; slot6 = math.max
		 28	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, slot5)
	228	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	229	[  0]	FNEW 	  8		258	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	230	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	231	[  0]	TSETB	  7	6	10	; slot6[10] = slot7
	232	[  0]	TDUP 	  7		257	; slot7 = copy table#k257
	233	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	234	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	235	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	236	[  0]	TDUP 	  8		256	; slot8 = copy table#k256
	237	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	238	[  0]	TDUP 	  8		255	; slot8 = copy table#k255
	239	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	240	[  0]	TDUP 	  8		254	; slot8 = copy table#k254
	241	[  0]	TSETS	  8	7	253	; slot7.bindTargets = slot8
	242	[  0]	TDUP 	  8		252	; slot8 = copy table#k252
	243	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	244	[  0]	FNEW 	  8		251	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		  9	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		3	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	2	; slot2 = string.format
		 21	[  0]	KSTR 	  4		1	; slot4 = "기지에 가까워진 적 %d명을 2초 동안 붙잡습니다. 전투당 두 번 발동합니다. (Lv.%d)"
		 22	[  0]	TGETS	  5	0	0	; slot5 = slot0.bindTargets
		 23	[  0]	TGETV	  5	5	1	; slot5 = <unknown table>.bindTargets[math.max]
		 24	[  0]	MOV  	  6		1	; slot6 = math.max
		 25	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, slot5)
	245	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	246	[  0]	FNEW 	  8		250	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	247	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	248	[  0]	TSETB	  7	6	11	; slot6[11] = slot7
	249	[  0]	TDUP 	  7		249	; slot7 = copy table#k249
	250	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	251	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	252	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	253	[  0]	TDUP 	  8		248	; slot8 = copy table#k248
	254	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	255	[  0]	TDUP 	  8		247	; slot8 = copy table#k247
	256	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	257	[  0]	TDUP 	  8		246	; slot8 = copy table#k246
	258	[  0]	TSETS	  8	7	245	; slot7.survivalDuration = slot8
	259	[  0]	TDUP 	  8		244	; slot8 = copy table#k244
	260	[  0]	TSETS	  8	7	347	; slot7.healPct = slot8
	261	[  0]	TDUP 	  8		243	; slot8 = copy table#k243
	262	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	263	[  0]	FNEW 	  8		242	; N/A:0-0: 2 args, 0 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.15,
			#2: 0.22,
			]
		
		
		ktable#2 = [
			#1: 1.5,
			#2: 2,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		11	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	10	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		11	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	9	; slot5 = math.min
		  6	[  0]	GGET 	  7		11	; slot7 = _env["math"]
		  7	[  0]	TGETS	  7	7	8	; slot7 = math.floor
		  8	[  0]	GGET 	  9		7	; slot9 = _env["tonumber"]
		  9	[  0]	MOV  	 11		1	; slot11 = slot1
		 10	[  0]	CALL 	  9	2	2	; slot9 = tonumber(slot10)
		 11	[  0]	IST  	   		9	; if tonumber
		 12	[  0]	JMP  	 10		1	; 	goto 14
		 13	[  0]	KSHORT	  9		1	; slot9 = 1
		 14	[  0]	CALL 	  7	2	2	; slot7 = math.floor(slot8)
		 15	[  0]	KSHORT	  8		2	; slot8 = 2
		 16	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, math.floor)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		6	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	5	; slot2 = string.format
		 21	[  0]	KSTR 	  4		4	; slot4 = "처음 쓰러지는 아군은 %g초간 석상이 되어 살아남고, 이후 최대 {hp.png}의 %d%%를 회복합니다. (Lv.%d)"
		 22	[  0]	TGETS	  5	0	3	; slot5 = slot0.survivalDuration
		 23	[  0]	IST  	   		5	; if <unknown table>.survivalDuration
		 24	[  0]	JMP  	  6		1	; 	goto 26
		 25	[  0]	TDUP 	  5		2	; slot5 = copy table#k2
		 26	[  0]	TGETV	  5	5	1	; slot5 = slot5[math.max]
		 27	[  0]	GGET 	  6		11	; slot6 = _env["math"]
		 28	[  0]	TGETS	  6	6	8	; slot6 = math.floor
		 29	[  0]	TGETS	  8	0	1	; slot8 = slot0.healPct
		 30	[  0]	IST  	   		8	; if <unknown table>.healPct
		 31	[  0]	JMP  	  9		1	; 	goto 33
		 32	[  0]	TDUP 	  8		0	; slot8 = copy table#k0
		 33	[  0]	TGETV	  8	8	1	; slot8 = slot8[math.max]
		 34	[  0]	MULVN	  8	8	0	; slot8 = slot8 * 100
		 35	[  0]	ADDVN	  8	8	1	; slot8 = slot8 + 0.5
		 36	[  0]	CALL 	  6	2	2	; slot6 = math.floor(math.floor)
		 37	[  0]	MOV  	  7		1	; slot7 = math.max
		 38	[  0]	CALLT	  2		5	; return string.format(slot3, slot4, slot5, math.floor)
	264	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	265	[  0]	FNEW 	  8		241	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	266	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	267	[  0]	TSETB	  7	6	12	; slot6[12] = slot7
	268	[  0]	TDUP 	  7		240	; slot7 = copy table#k240
	269	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	270	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	271	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	272	[  0]	TDUP 	  8		239	; slot8 = copy table#k239
	273	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	274	[  0]	TDUP 	  8		238	; slot8 = copy table#k238
	275	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	276	[  0]	TDUP 	  8		237	; slot8 = copy table#k237
	277	[  0]	TSETS	  8	7	236	; slot7.damageBonus = slot8
	278	[  0]	TDUP 	  8		235	; slot8 = copy table#k235
	279	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	280	[  0]	FNEW 	  8		234	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.15,
			#2: 0.25,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		9	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	6	; slot8 = math.floor
		  9	[  0]	GGET 	 10		5	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		4	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	3	; slot2 = string.format
		 21	[  0]	KSTR 	  4		2	; slot4 = "원거리 아군이 적을 번갈아 공격합니다. 대상을 바꾼 기본 공격의 피해가 %d%% 증가합니다. (Lv.%d)"
		 22	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	6	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	1	; slot7 = slot0.damageBonus
		 25	[  0]	IST  	   		7	; if <unknown table>.damageBonus
		 26	[  0]	JMP  	  8		1	; 	goto 28
		 27	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 28	[  0]	TGETV	  7	7	1	; slot7 = slot7[math.max]
		 29	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 30	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 31	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 32	[  0]	MOV  	  6		1	; slot6 = math.max
		 33	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	281	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	282	[  0]	FNEW 	  8		233	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	283	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	284	[  0]	TSETB	  7	6	13	; slot6[13] = slot7
	285	[  0]	TDUP 	  7		232	; slot7 = copy table#k232
	286	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	287	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	288	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	289	[  0]	TDUP 	  8		231	; slot8 = copy table#k231
	290	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	291	[  0]	TDUP 	  8		230	; slot8 = copy table#k230
	292	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	293	[  0]	TDUP 	  8		229	; slot8 = copy table#k229
	294	[  0]	TSETS	  8	7	355	; slot7.shieldMaxHpRatio = slot8
	295	[  0]	TDUP 	  8		228	; slot8 = copy table#k228
	296	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	297	[  0]	FNEW 	  8		227	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.2,
			#2: 0.3,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		9	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	6	; slot8 = math.floor
		  9	[  0]	GGET 	 10		5	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		4	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	3	; slot2 = string.format
		 21	[  0]	KSTR 	  4		2	; slot4 = "아군을 3명 이하로 출전시키면, 각 아군은 최대 {hp.png}의 %d%% 보호막을 얻습니다. (Lv.%d)"
		 22	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	6	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	1	; slot7 = slot0.shieldMaxHpRatio
		 25	[  0]	IST  	   		7	; if <unknown table>.shieldMaxHpRatio
		 26	[  0]	JMP  	  8		1	; 	goto 28
		 27	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 28	[  0]	TGETV	  7	7	1	; slot7 = slot7[math.max]
		 29	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 30	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 31	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 32	[  0]	MOV  	  6		1	; slot6 = math.max
		 33	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	298	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	299	[  0]	FNEW 	  8		226	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	300	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	301	[  0]	TSETB	  7	6	14	; slot6[14] = slot7
	302	[  0]	TDUP 	  7		225	; slot7 = copy table#k225
	303	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	304	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	305	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	306	[  0]	TDUP 	  8		224	; slot8 = copy table#k224
	307	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	308	[  0]	TDUP 	  8		223	; slot8 = copy table#k223
	309	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	310	[  0]	TDUP 	  8		222	; slot8 = copy table#k222
	311	[  0]	TSETS	  8	7	366	; slot7.basicAttackDamageBonus = slot8
	312	[  0]	TDUP 	  8		221	; slot8 = copy table#k221
	313	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	314	[  0]	FNEW 	  8		220	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 0.45,
			#2: 0.65,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		9	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	6	; slot8 = math.floor
		  9	[  0]	GGET 	 10		5	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		4	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	3	; slot2 = string.format
		 21	[  0]	KSTR 	  4		2	; slot4 = "원거리 아군의 기본 공격 피해가 %d%% 증가하지만, {aspd.png} -25%%. (Lv.%d)"
		 22	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	6	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	1	; slot7 = slot0.basicAttackDamageBonus
		 25	[  0]	IST  	   		7	; if <unknown table>.basicAttackDamageBonus
		 26	[  0]	JMP  	  8		1	; 	goto 28
		 27	[  0]	TDUP 	  7		0	; slot7 = copy table#k0
		 28	[  0]	TGETV	  7	7	1	; slot7 = slot7[math.max]
		 29	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 30	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 31	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 32	[  0]	MOV  	  6		1	; slot6 = math.max
		 33	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	315	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	316	[  0]	FNEW 	  8		219	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	317	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	318	[  0]	TSETB	  7	6	15	; slot6[15] = slot7
	319	[  0]	TDUP 	  7		218	; slot7 = copy table#k218
	320	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	321	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	322	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	323	[  0]	TDUP 	  8		217	; slot8 = copy table#k217
	324	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	325	[  0]	TDUP 	  8		216	; slot8 = copy table#k216
	326	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	327	[  0]	TDUP 	  8		215	; slot8 = copy table#k215
	328	[  0]	TSETS	  8	7	214	; slot7.focusDuration = slot8
	329	[  0]	TDUP 	  8		213	; slot8 = copy table#k213
	330	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	331	[  0]	FNEW 	  8		212	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		ktable#0 = [
			#1: 2,
			#2: 3,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		9	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	6	; slot8 = math.floor
		  9	[  0]	GGET 	 10		5	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		4	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	3	; slot2 = string.format
		 21	[  0]	KSTR 	  4		2	; slot4 = "6초마다 모든 아군이 가장 앞에 있는 적을 %d초간 집중 공격합니다. (Lv.%d)"
		 22	[  0]	TGETS	  5	0	1	; slot5 = slot0.focusDuration
		 23	[  0]	IST  	   		5	; if <unknown table>.focusDuration
		 24	[  0]	JMP  	  6		1	; 	goto 26
		 25	[  0]	TDUP 	  5		0	; slot5 = copy table#k0
		 26	[  0]	TGETV	  5	5	1	; slot5 = slot5[math.max]
		 27	[  0]	MOV  	  6		1	; slot6 = math.max
		 28	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, slot5)
	332	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	333	[  0]	FNEW 	  8		211	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	334	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	335	[  0]	TSETB	  7	6	16	; slot6[16] = slot7
	336	[  0]	TDUP 	  7		210	; slot7 = copy table#k210
	337	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	338	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	339	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	340	[  0]	TDUP 	  8		209	; slot8 = copy table#k209
	341	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	342	[  0]	TDUP 	  8		208	; slot8 = copy table#k208
	343	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	344	[  0]	TDUP 	  8		207	; slot8 = copy table#k207
	345	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	346	[  0]	FNEW 	  8		206	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSTR 	  1		0	; slot1 = "LV이 가장 높은 아군 뒤에 수호검 2개가 떠다니며 적을 베어냅니다."
		  2	[  0]	RET1 	  1		2	; return slot1
	347	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	348	[  0]	FNEW 	  8		205	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	0	; slot1 = slot0.getEffectDescription
		  3	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.getEffectDescription(slot2)
		  4	[  0]	TSETS	  1	0	1	; slot0.effect = slot1
		  5	[  0]	RET0 	  0		1	; return
	349	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	350	[  0]	TSETB	  7	6	17	; slot6[17] = slot7
	351	[  0]	TDUP 	  7		204	; slot7 = copy table#k204
	352	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	353	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	354	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	355	[  0]	TDUP 	  8		203	; slot8 = copy table#k203
	356	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	357	[  0]	TDUP 	  8		202	; slot8 = copy table#k202
	358	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	359	[  0]	TDUP 	  8		201	; slot8 = copy table#k201
	360	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	361	[  0]	FNEW 	  8		200	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSTR 	  1		0	; slot1 = "원거리 아군 1명을 사격탑에 배치합니다. {dist.png} +70, 타워는 마지막 공격 대상이 됩니다."
		  2	[  0]	RET1 	  1		2	; return slot1
	362	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	363	[  0]	FNEW 	  8		199	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	0	; slot1 = slot0.getEffectDescription
		  3	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.getEffectDescription(slot2)
		  4	[  0]	TSETS	  1	0	1	; slot0.effect = slot1
		  5	[  0]	RET0 	  0		1	; return
	364	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	365	[  0]	TSETB	  7	6	18	; slot6[18] = slot7
	366	[  0]	TDUP 	  7		198	; slot7 = copy table#k198
	367	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	368	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	369	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	370	[  0]	TDUP 	  8		197	; slot8 = copy table#k197
	371	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	372	[  0]	TDUP 	  8		196	; slot8 = copy table#k196
	373	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	374	[  0]	TDUP 	  8		195	; slot8 = copy table#k195
	375	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	376	[  0]	FNEW 	  8		194	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	KSTR 	  1		0	; slot1 = "같은 적을 공격하는 병종이 다양할수록 해당 적이 받는 피해가 증가합니다. 2종 8% / 3종 16% / 4종 이상 24%."
		  2	[  0]	RET1 	  1		2	; return slot1
	377	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	378	[  0]	FNEW 	  8		193	; N/A:0-0: 1 args, 0 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	0	; slot1 = slot0.getEffectDescription
		  3	[  0]	CALL 	  1	2	2	; slot1 = <unknown table>.getEffectDescription(slot2)
		  4	[  0]	TSETS	  1	0	1	; slot0.effect = slot1
		  5	[  0]	RET0 	  0		1	; return
	379	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	380	[  0]	TSETB	  7	6	19	; slot6[19] = slot7
	381	[  0]	TDUP 	  7		192	; slot7 = copy table#k192
	382	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	383	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	384	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	385	[  0]	TDUP 	  8		191	; slot8 = copy table#k191
	386	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	387	[  0]	TDUP 	  8		190	; slot8 = copy table#k190
	388	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	389	[  0]	TDUP 	  8		189	; slot8 = copy table#k189
	390	[  0]	TSETS	  8	7	188	; slot7.delayedEnemyCount = slot8
	391	[  0]	TDUP 	  8		187	; slot8 = copy table#k187
	392	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	393	[  0]	FNEW 	  8		186	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		7	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	6	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		7	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	5	; slot5 = math.min
		  6	[  0]	KSHORT	  7		3	; slot7 = 3
		  7	[  0]	GGET 	  8		7	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	4	; slot8 = math.floor
		  9	[  0]	GGET 	 10		3	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		2	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	1	; slot2 = string.format
		 21	[  0]	KSTR 	  4		0	; slot4 = "적이 4명 이상이면 가장 뒤의 적 %d명이 1.5초 늦게 등장합니다. (Lv.%d)"
		 22	[  0]	MOV  	  5		1	; slot5 = math.max
		 23	[  0]	MOV  	  6		1	; slot6 = math.max
		 24	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.max)
	394	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	395	[  0]	FNEW 	  8		185	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	396	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	397	[  0]	TSETB	  7	6	20	; slot6[20] = slot7
	398	[  0]	TDUP 	  7		184	; slot7 = copy table#k184
	399	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	400	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	401	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	402	[  0]	TDUP 	  8		183	; slot8 = copy table#k183
	403	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	404	[  0]	TDUP 	  8		182	; slot8 = copy table#k182
	405	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	406	[  0]	TDUP 	  8		181	; slot8 = copy table#k181
	407	[  0]	TSETS	  8	7	355	; slot7.shieldMaxHpRatio = slot8
	408	[  0]	TDUP 	  8		180	; slot8 = copy table#k180
	409	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	410	[  0]	FNEW 	  8		179	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	KSHORT	  7		3	; slot7 = 3
		  7	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		  9	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		3	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	2	; slot2 = string.format
		 21	[  0]	KSTR 	  4		1	; slot4 = "아군이 처음 {hp.png} 30%% 이하가 되면 뒤로 물러나며 최대 {hp.png}의 %d%% 보호막을 얻습니다. (Lv.%d)"
		 22	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	5	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	0	; slot7 = slot0.shieldMaxHpRatio
		 25	[  0]	TGETV	  7	7	1	; slot7 = <unknown table>.shieldMaxHpRatio[math.max]
		 26	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 27	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 28	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 29	[  0]	MOV  	  6		1	; slot6 = math.max
		 30	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	411	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	412	[  0]	FNEW 	  8		178	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	413	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	414	[  0]	TSETB	  7	6	21	; slot6[21] = slot7
	415	[  0]	TDUP 	  7		177	; slot7 = copy table#k177
	416	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	417	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	418	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	419	[  0]	TDUP 	  8		176	; slot8 = copy table#k176
	420	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	421	[  0]	TDUP 	  8		175	; slot8 = copy table#k175
	422	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	423	[  0]	TDUP 	  8		174	; slot8 = copy table#k174
	424	[  0]	TSETS	  8	7	173	; slot7.hpRatio = slot8
	425	[  0]	TDUP 	  8		172	; slot8 = copy table#k172
	426	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	427	[  0]	FNEW 	  8		171	; N/A:0-0: 2 args, 0 upvalues, 16 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		7	; slot2 = _env["string"]
		  2	[  0]	TGETS	  2	2	6	; slot2 = string.format
		  3	[  0]	KSTR 	  4		5	; slot4 = "전투 시작 시 전열에 미끼 인형을 세웁니다. 적들은 인형을 우선 공격하며, 인형이 한 번이라도 맞으면 모든 아군이 적을 감지합니다. (Lv.%d)"
		  4	[  0]	GGET 	  5		4	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	3	; slot5 = math.max
		  6	[  0]	KSHORT	  7		1	; slot7 = 1
		  7	[  0]	GGET 	  8		4	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	2	; slot8 = math.min
		  9	[  0]	KSHORT	 10		2	; slot10 = 2
		 10	[  0]	GGET 	 11		4	; slot11 = _env["math"]
		 11	[  0]	TGETS	 11	11	1	; slot11 = math.floor
		 12	[  0]	GGET 	 13		0	; slot13 = _env["tonumber"]
		 13	[  0]	MOV  	 15		1	; slot15 = slot1
		 14	[  0]	CALL 	 13	2	2	; slot13 = tonumber(slot14)
		 15	[  0]	IST  	   		13	; if tonumber
		 16	[  0]	JMP  	 14		1	; 	goto 18
		 17	[  0]	KSHORT	 13		1	; slot13 = 1
		 18	[  0]	CALL 	 11	0	2	; MULTRES = math.floor(slot12)
		 19	[  0]	CALLM	  8	0	1	; MULTRES = math.min(slot9, ...MULTRES)
		 20	[  0]	CALLM	  5	0	1	; MULTRES = math.max(slot6, ...MULTRES)
		 21	[  0]	CALLMT	  2		1	; return string.format(, ...MULTRES)
	428	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	429	[  0]	FNEW 	  8		170	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	430	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	431	[  0]	TSETB	  7	6	22	; slot6[22] = slot7
	432	[  0]	TDUP 	  7		169	; slot7 = copy table#k169
	433	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	434	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	435	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	436	[  0]	TDUP 	  8		168	; slot8 = copy table#k168
	437	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	438	[  0]	TDUP 	  8		167	; slot8 = copy table#k167
	439	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	440	[  0]	TDUP 	  8		166	; slot8 = copy table#k166
	441	[  0]	TSETS	  8	7	165	; slot7.extraTargetDamageRatio = slot8
	442	[  0]	TDUP 	  8		164	; slot8 = copy table#k164
	443	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	444	[  0]	FNEW 	  8		163	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		  9	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		3	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	2	; slot2 = string.format
		 21	[  0]	KSTR 	  4		1	; slot4 = "2명 이상을 공격하는 아군 스킬이 적 1명을 추가로 공격합니다. 추가 대상에게는 %d%% 피해를 줍니다. (Lv.%d)"
		 22	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	5	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	0	; slot7 = slot0.extraTargetDamageRatio
		 25	[  0]	TGETV	  7	7	1	; slot7 = <unknown table>.extraTargetDamageRatio[math.max]
		 26	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 27	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 28	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 29	[  0]	MOV  	  6		1	; slot6 = math.max
		 30	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	445	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	446	[  0]	FNEW 	  8		162	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	447	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	448	[  0]	TSETB	  7	6	23	; slot6[23] = slot7
	449	[  0]	TDUP 	  7		161	; slot7 = copy table#k161
	450	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	451	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	452	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	453	[  0]	TDUP 	  8		160	; slot8 = copy table#k160
	454	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	455	[  0]	TDUP 	  8		159	; slot8 = copy table#k159
	456	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	457	[  0]	TDUP 	  8		158	; slot8 = copy table#k158
	458	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	459	[  0]	FNEW 	  8		157	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.effect
		  2	[  0]	RET1 	  1		2	; return <unknown table>.effect
	460	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	461	[  0]	TSETB	  7	6	24	; slot6[24] = slot7
	462	[  0]	TDUP 	  7		156	; slot7 = copy table#k156
	463	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	464	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	465	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	466	[  0]	TDUP 	  8		155	; slot8 = copy table#k155
	467	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	468	[  0]	TDUP 	  8		154	; slot8 = copy table#k154
	469	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	470	[  0]	TDUP 	  8		153	; slot8 = copy table#k153
	471	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	472	[  0]	FNEW 	  8		152	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.effect
		  2	[  0]	RET1 	  1		2	; return <unknown table>.effect
	473	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	474	[  0]	TSETB	  7	6	25	; slot6[25] = slot7
	475	[  0]	TDUP 	  7		151	; slot7 = copy table#k151
	476	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	477	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	478	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	479	[  0]	TDUP 	  8		150	; slot8 = copy table#k150
	480	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	481	[  0]	TDUP 	  8		149	; slot8 = copy table#k149
	482	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	483	[  0]	TDUP 	  8		148	; slot8 = copy table#k148
	484	[  0]	TSETS	  8	7	147	; slot7.attackSpeedBonus = slot8
	485	[  0]	TDUP 	  8		146	; slot8 = copy table#k146
	486	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	487	[  0]	FNEW 	  8		145	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	KSHORT	  7		3	; slot7 = 3
		  7	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		  9	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		3	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	2	; slot2 = string.format
		 21	[  0]	KSTR 	  4		1	; slot4 = "아군을 무시하고 기지로 향하는 적을 공격할 때 공격속도가 %d%% 증가합니다. (Lv.%d)"
		 22	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	5	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	0	; slot7 = slot0.attackSpeedBonus
		 25	[  0]	TGETV	  7	7	1	; slot7 = <unknown table>.attackSpeedBonus[math.max]
		 26	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 27	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 28	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 29	[  0]	MOV  	  6		1	; slot6 = math.max
		 30	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	488	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	489	[  0]	FNEW 	  8		144	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	490	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	491	[  0]	TSETB	  7	6	26	; slot6[26] = slot7
	492	[  0]	TDUP 	  7		143	; slot7 = copy table#k143
	493	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	494	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	495	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	496	[  0]	TDUP 	  8		142	; slot8 = copy table#k142
	497	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	498	[  0]	TDUP 	  8		141	; slot8 = copy table#k141
	499	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	500	[  0]	TDUP 	  8		140	; slot8 = copy table#k140
	501	[  0]	TSETS	  8	7	269	; slot7.basicAttackBonus = slot8
	502	[  0]	TDUP 	  8		139	; slot8 = copy table#k139
	503	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	504	[  0]	FNEW 	  8		138	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	KSHORT	  7		3	; slot7 = 3
		  7	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		  9	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		3	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	2	; slot2 = string.format
		 21	[  0]	KSTR 	  4		1	; slot4 = "아군이 디버프 효과를 받으면 다음 기본 공격 피해가 %d%% 증가합니다. (Lv.%d)"
		 22	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	5	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	0	; slot7 = slot0.basicAttackBonus
		 25	[  0]	TGETV	  7	7	1	; slot7 = <unknown table>.basicAttackBonus[math.max]
		 26	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 27	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 28	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 29	[  0]	MOV  	  6		1	; slot6 = math.max
		 30	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	505	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	506	[  0]	FNEW 	  8		137	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	507	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	508	[  0]	TSETB	  7	6	27	; slot6[27] = slot7
	509	[  0]	TDUP 	  7		136	; slot7 = copy table#k136
	510	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	511	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	512	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	513	[  0]	TDUP 	  8		135	; slot8 = copy table#k135
	514	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	515	[  0]	TDUP 	  8		134	; slot8 = copy table#k134
	516	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	517	[  0]	TDUP 	  8		133	; slot8 = copy table#k133
	518	[  0]	KSTR 	  9		132	; slot9 = "triggerInterval"
	519	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	520	[  0]	TDUP 	  8		131	; slot8 = copy table#k131
	521	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	522	[  0]	FNEW 	  8		130	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		7	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	6	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		7	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	5	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		7	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	4	; slot8 = math.floor
		  9	[  0]	GGET 	 10		3	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		2	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	1	; slot2 = string.format
		 21	[  0]	KSTR 	  4		0	; slot4 = "근접 아군이 적을 처치하면 가장 강한 원거리 아군이 즉시 공격합니다. 원거리 처치 시에는 반대로 발동합니다. (Lv.%d)"
		 22	[  0]	MOV  	  5		1	; slot5 = math.max
		 23	[  0]	CALLT	  2		3	; return string.format(slot3, slot4)
	523	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	524	[  0]	FNEW 	  8		129	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	525	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	526	[  0]	TSETB	  7	6	28	; slot6[28] = slot7
	527	[  0]	TDUP 	  7		128	; slot7 = copy table#k128
	528	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	529	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	530	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	531	[  0]	TDUP 	  8		127	; slot8 = copy table#k127
	532	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	533	[  0]	TDUP 	  8		126	; slot8 = copy table#k126
	534	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	535	[  0]	TDUP 	  8		125	; slot8 = copy table#k125
	536	[  0]	KSTR 	  9		124	; slot9 = "damageRatio"
	537	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	538	[  0]	TDUP 	  8		123	; slot8 = copy table#k123
	539	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	540	[  0]	FNEW 	  8		122	; N/A:0-0: 2 args, 0 upvalues, 13 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	KSHORT	  7		2	; slot7 = 2
		  7	[  0]	GGET 	  8		8	; slot8 = _env["math"]
		  8	[  0]	TGETS	  8	8	5	; slot8 = math.floor
		  9	[  0]	GGET 	 10		4	; slot10 = _env["tonumber"]
		 10	[  0]	MOV  	 12		1	; slot12 = slot1
		 11	[  0]	CALL 	 10	2	2	; slot10 = tonumber(slot11)
		 12	[  0]	IST  	   		10	; if tonumber
		 13	[  0]	JMP  	 11		1	; 	goto 15
		 14	[  0]	KSHORT	 10		1	; slot10 = 1
		 15	[  0]	CALL 	  8	0	2	; MULTRES = math.floor(slot9)
		 16	[  0]	CALLM	  5	0	1	; MULTRES = math.min(slot6, ...MULTRES)
		 17	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 18	[  0]	MOV  	  1		2	; slot1 = math.max
		 19	[  0]	GGET 	  2		3	; slot2 = _env["string"]
		 20	[  0]	TGETS	  2	2	2	; slot2 = string.format
		 21	[  0]	KSTR 	  4		1	; slot4 = "적의 원거리 기본 공격 경로에 다른 적이 있으면, 그 적에게도 {atk.png}의 %d%% 피해를 줍니다. (Lv.%d)"
		 22	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		 23	[  0]	TGETS	  5	5	5	; slot5 = math.floor
		 24	[  0]	TGETS	  7	0	0	; slot7 = slot0.damageRatio
		 25	[  0]	TGETV	  7	7	1	; slot7 = <unknown table>.damageRatio[math.max]
		 26	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 27	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 28	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 29	[  0]	MOV  	  6		1	; slot6 = math.max
		 30	[  0]	CALLT	  2		4	; return string.format(slot3, slot4, math.floor)
	541	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	542	[  0]	FNEW 	  8		121	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	543	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	544	[  0]	TSETB	  7	6	29	; slot6[29] = slot7
	545	[  0]	TDUP 	  7		120	; slot7 = copy table#k120
	546	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	547	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	548	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	549	[  0]	TDUP 	  8		119	; slot8 = copy table#k119
	550	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	551	[  0]	TDUP 	  8		118	; slot8 = copy table#k118
	552	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	553	[  0]	TDUP 	  8		117	; slot8 = copy table#k117
	554	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	555	[  0]	FNEW 	  8		116	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.effect
		  2	[  0]	RET1 	  1		2	; return <unknown table>.effect
	556	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	557	[  0]	TSETB	  7	6	30	; slot6[30] = slot7
	558	[  0]	TDUP 	  7		115	; slot7 = copy table#k115
	559	[  0]	TGETS	  8	3	377	; slot8 = slot3.BATTLE
	560	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.BATTLE.ko
	561	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.BATTLE.ko
	562	[  0]	TDUP 	  8		114	; slot8 = copy table#k114
	563	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	564	[  0]	TDUP 	  8		113	; slot8 = copy table#k113
	565	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	566	[  0]	TDUP 	  8		112	; slot8 = copy table#k112
	567	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	568	[  0]	FNEW 	  8		111	; N/A:0-0: 1 args, 0 upvalues, 2 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	TGETS	  1	0	0	; slot1 = slot0.effect
		  2	[  0]	RET1 	  1		2	; return <unknown table>.effect
	569	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	570	[  0]	TSETB	  7	6	31	; slot6[31] = slot7
	571	[  0]	TDUP 	  7		110	; slot7 = copy table#k110
	572	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	573	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	574	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	575	[  0]	TDUP 	  8		109	; slot8 = copy table#k109
	576	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	577	[  0]	TDUP 	  8		108	; slot8 = copy table#k108
	578	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	579	[  0]	TDUP 	  8		107	; slot8 = copy table#k107
	580	[  0]	KSTR 	  9		106	; slot9 = "maxHpBonus"
	581	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	582	[  0]	TDUP 	  8		105	; slot8 = copy table#k105
	583	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	584	[  0]	FNEW 	  8		104	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	GGET 	  7		5	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		3	; slot8 = 3
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 20	[  0]	TGETS	  4	0	3	; slot4 = slot0.maxHpBonus
		 21	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.maxHpBonus[math.max]
		 22	[  0]	IST  	   		4	; if slot4
		 23	[  0]	JMP  	  5		1	; 	goto 25
		 24	[  0]	KSHORT	  4		0	; slot4 = 0
		 25	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 100
		 26	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 0.5
		 27	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 28	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 29	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 30	[  0]	KSTR 	  5		0	; slot5 = "전사 계열의 {hp.png} +%d%%. (Lv.%d)"
		 31	[  0]	MOV  	  6		2	; slot6 = slot2
		 32	[  0]	MOV  	  7		1	; slot7 = math.max
		 33	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, slot6)
	585	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	586	[  0]	FNEW 	  8		103	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	587	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	588	[  0]	TSETB	  7	6	32	; slot6[32] = slot7
	589	[  0]	TDUP 	  7		102	; slot7 = copy table#k102
	590	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	591	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	592	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	593	[  0]	TDUP 	  8		101	; slot8 = copy table#k101
	594	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	595	[  0]	TDUP 	  8		100	; slot8 = copy table#k100
	596	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	597	[  0]	TDUP 	  8		99	; slot8 = copy table#k99
	598	[  0]	KSTR 	  9		98	; slot9 = "aspdBonus"
	599	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	600	[  0]	TDUP 	  8		97	; slot8 = copy table#k97
	601	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	602	[  0]	FNEW 	  8		96	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	GGET 	  7		5	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		3	; slot8 = 3
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 20	[  0]	TGETS	  4	0	3	; slot4 = slot0.aspdBonus
		 21	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.aspdBonus[math.max]
		 22	[  0]	IST  	   		4	; if slot4
		 23	[  0]	JMP  	  5		1	; 	goto 25
		 24	[  0]	KSHORT	  4		0	; slot4 = 0
		 25	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 100
		 26	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 0.5
		 27	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 28	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 29	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 30	[  0]	KSTR 	  5		0	; slot5 = "궁수 계열의 {aspd.png} +%d%%. (Lv.%d)"
		 31	[  0]	MOV  	  6		2	; slot6 = slot2
		 32	[  0]	MOV  	  7		1	; slot7 = math.max
		 33	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, slot6)
	603	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	604	[  0]	FNEW 	  8		95	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	605	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	606	[  0]	TSETB	  7	6	33	; slot6[33] = slot7
	607	[  0]	TDUP 	  7		94	; slot7 = copy table#k94
	608	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	609	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	610	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	611	[  0]	TDUP 	  8		93	; slot8 = copy table#k93
	612	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	613	[  0]	TDUP 	  8		92	; slot8 = copy table#k92
	614	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	615	[  0]	TDUP 	  8		91	; slot8 = copy table#k91
	616	[  0]	KSTR 	  9		90	; slot9 = "atkBonus"
	617	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	618	[  0]	TDUP 	  8		89	; slot8 = copy table#k89
	619	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	620	[  0]	FNEW 	  8		88	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	GGET 	  7		5	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		3	; slot8 = 3
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 20	[  0]	TGETS	  4	0	3	; slot4 = slot0.atkBonus
		 21	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.atkBonus[math.max]
		 22	[  0]	IST  	   		4	; if slot4
		 23	[  0]	JMP  	  5		1	; 	goto 25
		 24	[  0]	KSHORT	  4		0	; slot4 = 0
		 25	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 100
		 26	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 0.5
		 27	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 28	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 29	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 30	[  0]	KSTR 	  5		0	; slot5 = "창병 계열의 {atk.png} +%d%%. (Lv.%d)"
		 31	[  0]	MOV  	  6		2	; slot6 = slot2
		 32	[  0]	MOV  	  7		1	; slot7 = math.max
		 33	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, slot6)
	621	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	622	[  0]	FNEW 	  8		87	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	623	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	624	[  0]	TSETB	  7	6	34	; slot6[34] = slot7
	625	[  0]	TDUP 	  7		86	; slot7 = copy table#k86
	626	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	627	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	628	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	629	[  0]	TDUP 	  8		85	; slot8 = copy table#k85
	630	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	631	[  0]	TDUP 	  8		84	; slot8 = copy table#k84
	632	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	633	[  0]	TDUP 	  8		83	; slot8 = copy table#k83
	634	[  0]	KSTR 	  9		90	; slot9 = "atkBonus"
	635	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	636	[  0]	TDUP 	  8		82	; slot8 = copy table#k82
	637	[  0]	KSTR 	  9		98	; slot9 = "aspdBonus"
	638	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	639	[  0]	TDUP 	  8		81	; slot8 = copy table#k81
	640	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	641	[  0]	FNEW 	  8		80	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		9	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	8	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	7	; slot5 = math.min
		  6	[  0]	GGET 	  7		6	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		3	; slot8 = 3
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		5	; slot2 = _env["string"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = string.format
		 20	[  0]	KSTR 	  4		3	; slot4 = "마법사 계열의 {atk.png} +%d%%, {aspd.png} +%d%%. (Lv.%d)"
		 21	[  0]	GGET 	  5		9	; slot5 = _env["math"]
		 22	[  0]	TGETS	  5	5	2	; slot5 = math.floor
		 23	[  0]	TGETS	  7	0	1	; slot7 = slot0.atkBonus
		 24	[  0]	TGETV	  7	7	1	; slot7 = <unknown table>.atkBonus[math.max]
		 25	[  0]	IST  	   		7	; if slot7
		 26	[  0]	JMP  	  8		1	; 	goto 28
		 27	[  0]	KSHORT	  7		0	; slot7 = 0
		 28	[  0]	MULVN	  7	7	0	; slot7 = slot7 * 100
		 29	[  0]	ADDVN	  7	7	1	; slot7 = slot7 + 0.5
		 30	[  0]	CALL 	  5	2	2	; slot5 = math.floor(slot6)
		 31	[  0]	GGET 	  6		9	; slot6 = _env["math"]
		 32	[  0]	TGETS	  6	6	2	; slot6 = math.floor
		 33	[  0]	TGETS	  8	0	0	; slot8 = slot0.aspdBonus
		 34	[  0]	TGETV	  8	8	1	; slot8 = <unknown table>.aspdBonus[math.max]
		 35	[  0]	IST  	   		8	; if slot8
		 36	[  0]	JMP  	  9		1	; 	goto 38
		 37	[  0]	KSHORT	  8		0	; slot8 = 0
		 38	[  0]	MULVN	  8	8	0	; slot8 = slot8 * 100
		 39	[  0]	ADDVN	  8	8	1	; slot8 = slot8 + 0.5
		 40	[  0]	CALL 	  6	2	2	; slot6 = math.floor(slot7)
		 41	[  0]	MOV  	  7		1	; slot7 = math.max
		 42	[  0]	CALLT	  2		5	; return string.format(slot3, slot4, math.floor, math.floor)
	642	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	643	[  0]	FNEW 	  8		79	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	644	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	645	[  0]	TSETB	  7	6	35	; slot6[35] = slot7
	646	[  0]	TDUP 	  7		78	; slot7 = copy table#k78
	647	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	648	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	649	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	650	[  0]	TDUP 	  8		77	; slot8 = copy table#k77
	651	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	652	[  0]	TDUP 	  8		76	; slot8 = copy table#k76
	653	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	654	[  0]	TDUP 	  8		75	; slot8 = copy table#k75
	655	[  0]	KSTR 	  9		106	; slot9 = "maxHpBonus"
	656	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	657	[  0]	TDUP 	  8		74	; slot8 = copy table#k74
	658	[  0]	KSTR 	  9		90	; slot9 = "atkBonus"
	659	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	660	[  0]	TDUP 	  8		73	; slot8 = copy table#k73
	661	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	662	[  0]	FNEW 	  8		72	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	GGET 	  7		5	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		3	; slot8 = 3
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 20	[  0]	TGETS	  4	0	3	; slot4 = slot0.atkBonus
		 21	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.atkBonus[math.max]
		 22	[  0]	IST  	   		4	; if slot4
		 23	[  0]	JMP  	  5		1	; 	goto 25
		 24	[  0]	KSHORT	  4		0	; slot4 = 0
		 25	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 100
		 26	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 0.5
		 27	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 28	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 29	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 30	[  0]	KSTR 	  5		0	; slot5 = "기병 계열의 {hp.png}와 {atk.png} +%d%%. (Lv.%d)"
		 31	[  0]	MOV  	  6		2	; slot6 = slot2
		 32	[  0]	MOV  	  7		1	; slot7 = math.max
		 33	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, slot6)
	663	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	664	[  0]	FNEW 	  8		71	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	665	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	666	[  0]	TSETB	  7	6	36	; slot6[36] = slot7
	667	[  0]	TDUP 	  7		70	; slot7 = copy table#k70
	668	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	669	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	670	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	671	[  0]	TDUP 	  8		69	; slot8 = copy table#k69
	672	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	673	[  0]	TDUP 	  8		68	; slot8 = copy table#k68
	674	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	675	[  0]	TDUP 	  8		67	; slot8 = copy table#k67
	676	[  0]	KSTR 	  9		90	; slot9 = "atkBonus"
	677	[  0]	TSETV	  8	7	9	; slot7[slot9] = slot8
	678	[  0]	TDUP 	  8		66	; slot8 = copy table#k66
	679	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	680	[  0]	FNEW 	  8		65	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	GGET 	  7		5	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		3	; slot8 = 3
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 20	[  0]	TGETS	  4	0	3	; slot4 = slot0.atkBonus
		 21	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.atkBonus[math.max]
		 22	[  0]	IST  	   		4	; if slot4
		 23	[  0]	JMP  	  5		1	; 	goto 25
		 24	[  0]	KSHORT	  4		0	; slot4 = 0
		 25	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 100
		 26	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 0.5
		 27	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 28	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 29	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 30	[  0]	KSTR 	  5		0	; slot5 = "결투사 계열의 {atk.png} +%d%%. (Lv.%d)"
		 31	[  0]	MOV  	  6		2	; slot6 = slot2
		 32	[  0]	MOV  	  7		1	; slot7 = math.max
		 33	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, slot6)
	681	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	682	[  0]	FNEW 	  8		64	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	683	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	684	[  0]	TSETB	  7	6	37	; slot6[37] = slot7
	685	[  0]	TDUP 	  7		63	; slot7 = copy table#k63
	686	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	687	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	688	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	689	[  0]	TDUP 	  8		62	; slot8 = copy table#k62
	690	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	691	[  0]	TDUP 	  8		61	; slot8 = copy table#k61
	692	[  0]	TSETS	  8	7	324	; slot7.damageReduction = slot8
	693	[  0]	TDUP 	  8		60	; slot8 = copy table#k60
	694	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	695	[  0]	FNEW 	  8		59	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	GGET 	  7		5	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		2	; slot8 = 2
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 20	[  0]	TGETS	  4	0	3	; slot4 = slot0.damageReduction
		 21	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.damageReduction[math.max]
		 22	[  0]	IST  	   		4	; if slot4
		 23	[  0]	JMP  	  5		1	; 	goto 25
		 24	[  0]	KSHORT	  4		0	; slot4 = 0
		 25	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 100
		 26	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 0.5
		 27	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 28	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 29	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 30	[  0]	KSTR 	  5		0	; slot5 = "전사 계열이 첫 교전 후 6초 동안 받는 피해가 %d%% 감소합니다. (Lv.%d)"
		 31	[  0]	MOV  	  6		2	; slot6 = slot2
		 32	[  0]	MOV  	  7		1	; slot7 = math.max
		 33	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, slot6)
	696	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	697	[  0]	FNEW 	  8		58	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	698	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	699	[  0]	TSETB	  7	6	38	; slot6[38] = slot7
	700	[  0]	TDUP 	  7		57	; slot7 = copy table#k57
	701	[  0]	TGETS	  8	3	375	; slot8 = slot3.TRAINING
	702	[  0]	TGETS	  8	8	373	; slot8 = <unknown table>.TRAINING.ko
	703	[  0]	TSETS	  8	7	372	; slot7.typeKo = <unknown table>.TRAINING.ko
	704	[  0]	TDUP 	  8		56	; slot8 = copy table#k56
	705	[  0]	TSETS	  8	7	370	; slot7.prices = slot8
	706	[  0]	TDUP 	  8		55	; slot8 = copy table#k55
	707	[  0]	TSETS	  8	7	368	; slot7.buildTypes = slot8
	708	[  0]	TDUP 	  8		54	; slot8 = copy table#k54
	709	[  0]	TSETS	  8	7	147	; slot7.attackSpeedBonus = slot8
	710	[  0]	TDUP 	  8		53	; slot8 = copy table#k53
	711	[  0]	TSETS	  8	7	364	; slot7.gearLevel = slot8
	712	[  0]	FNEW 	  8		52	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	7	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		8	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	6	; slot5 = math.min
		  6	[  0]	GGET 	  7		5	; slot7 = _env["tonumber"]
		  7	[  0]	ISTC 	  9		1	; slot9 = slot1; if slot1
		  8	[  0]	JMP  	  9		1	; 	goto 10
		  9	[  0]	KSHORT	  9		1	; slot9 = 1
		 10	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 11	[  0]	IST  	   		7	; if tonumber
		 12	[  0]	JMP  	  8		1	; 	goto 14
		 13	[  0]	KSHORT	  7		1	; slot7 = 1
		 14	[  0]	KSHORT	  8		2	; slot8 = 2
		 15	[  0]	CALL 	  5	0	3	; MULTRES = math.min(slot6, slot7)
		 16	[  0]	CALLM	  2	2	1	; slot2 = math.max(slot3, ...MULTRES)
		 17	[  0]	MOV  	  1		2	; slot1 = math.max
		 18	[  0]	GGET 	  2		8	; slot2 = _env["math"]
		 19	[  0]	TGETS	  2	2	4	; slot2 = math.floor
		 20	[  0]	TGETS	  4	0	3	; slot4 = slot0.attackSpeedBonus
		 21	[  0]	TGETV	  4	4	1	; slot4 = <unknown table>.attackSpeedBonus[math.max]
		 22	[  0]	MULVN	  4	4	0	; slot4 = slot4 * 100
		 23	[  0]	ADDVN	  4	4	1	; slot4 = slot4 + 0.5
		 24	[  0]	CALL 	  2	2	2	; slot2 = math.floor(slot3)
		 25	[  0]	GGET 	  3		2	; slot3 = _env["string"]
		 26	[  0]	TGETS	  3	3	1	; slot3 = string.format
		 27	[  0]	KSTR 	  5		0	; slot5 = "궁수 계열은 3초 동안 {aspd.png} +%d%%, 이후 2초간 재장전합니다. (Lv.%d)"
		 28	[  0]	MOV  	  6		2	; slot6 = slot2
		 29	[  0]	MOV  	  7		1	; slot7 = math.max
		 30	[  0]	CALLT	  3		4	; return string.format(slot4, slot5, slot6)
	713	[  0]	TSETS	  8	7	362	; slot7.getEffectDescription = slot8
	714	[  0]	FNEW 	  8		51	; N/A:0-0: 1 args, 0 upvalues, 5 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	MOV  	  3		0	; slot3 = slot0
		  2	[  0]	TGETS	  1	0	1	; slot1 = slot0.getEffectDescription
		  3	[  0]	TGETS	  4	0	0	; slot4 = slot0.level
		  4	[  0]	CALL 	  1	2	3	; slot1 = <unknown table>.getEffectDescription(slot2, slot3)
		  5	[  0]	TSETS	  1	0	2	; slot0.effect = slot1
		  6	[  0]	RET0 	  0		1	; return
	715	[  0]	TSETS	  8	7	360	; slot7.updateEffectString = slot8
	716	[  0]	TSETB	  7	6	39	; slot6[39] = slot7
	717	[  0]	TNEW 	  7		6	; slot7 = new table( array: 6, dict: 1)
	718	[  0]	TDUP 	  8		50	; slot8 = copy table#k50
	719	[  0]	TDUP 	  9		49	; slot9 = copy table#k49
	720	[  0]	KSTR 	 10		48	; slot10 = "w"
	721	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
	722	[  0]	TSETB	  8	7	1	; slot7[1] = slot8
	723	[  0]	TDUP 	  8		47	; slot8 = copy table#k47
	724	[  0]	TDUP 	  9		46	; slot9 = copy table#k46
	725	[  0]	KSTR 	 10		48	; slot10 = "w"
	726	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
	727	[  0]	TSETB	  8	7	2	; slot7[2] = slot8
	728	[  0]	TDUP 	  8		45	; slot8 = copy table#k45
	729	[  0]	TDUP 	  9		44	; slot9 = copy table#k44
	730	[  0]	KSTR 	 10		48	; slot10 = "w"
	731	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
	732	[  0]	TSETB	  8	7	3	; slot7[3] = slot8
	733	[  0]	TDUP 	  8		43	; slot8 = copy table#k43
	734	[  0]	TDUP 	  9		42	; slot9 = copy table#k42
	735	[  0]	KSTR 	 10		48	; slot10 = "w"
	736	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
	737	[  0]	TSETB	  8	7	4	; slot7[4] = slot8
	738	[  0]	TDUP 	  8		41	; slot8 = copy table#k41
	739	[  0]	GGET 	  9		40	; slot9 = _env["math"]
	740	[  0]	KSTR 	 10		39	; slot10 = "huge"
	741	[  0]	TGETV	  9	9	10	; slot9 = math[slot10]
	742	[  0]	KSTR 	 10		38	; slot10 = "max"
	743	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
	744	[  0]	TDUP 	  9		37	; slot9 = copy table#k37
	745	[  0]	KSTR 	 10		48	; slot10 = "w"
	746	[  0]	TSETV	  9	8	10	; slot8[slot10] = slot9
	747	[  0]	TSETB	  8	7	5	; slot7[5] = slot8
	748	[  0]	FNEW 	  8		36	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		4	; slot1 = _env["tonumber"]
		  2	[  0]	ISTC 	  3		0	; slot3 = slot0; if slot0
		  3	[  0]	JMP  	  3		1	; 	goto 5
		  4	[  0]	KSHORT	  3		1	; slot3 = 1
		  5	[  0]	CALL 	  1	2	2	; slot1 = tonumber(slot2)
		  6	[  0]	ISTC 	  0		1	; slot0 = slot1; if slot1
		  7	[  0]	JMP  	  2		1	; 	goto 9
		  8	[  0]	KSHORT	  0		1	; slot0 = 1
		  9	[  0]	GGET 	  1		3	; slot1 = _env["ipairs"]
		 10	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 11	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		 12	[  0]	JMP  	  4		8	; 	goto 21
		 13	[  0]	TGETS	  6	5	2	; slot6 = slot5.min
		 14	[  0]	ISGT 	  6		0	; if <unknown table>.min > slot0
		 15	[  0]	JMP  	  6		5	; 	goto 21
		 16	[  0]	TGETS	  6	5	1	; slot6 = slot5.max
		 17	[  0]	ISGT 	  0		6	; if slot0 > <unknown table>.max
		 18	[  0]	JMP  	  6		2	; 	goto 21
		 19	[  0]	TGETS	  6	5	0	; slot6 = slot5.w
		 20	[  0]	RET1 	  6		2	; return <unknown table>.w
		 21	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown"; slot4, slot5 = slot1(slot2, uv0"unknown")
		 22	[  0]	ITERL	  4		-10	; uv0"unknown" = slot4; if slot4 != nil goto 13
		 23	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 24	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 25	[  0]	LEN  	  2		2	; slot2 = #uv0"unknown"
		 26	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[slot2]
		 27	[  0]	TGETS	  1	1	0	; slot1 = slot1.w
		 28	[  0]	RET1 	  1		2	; return <unknown table>.w
	749	[  0]	FNEW 	  9		35	; N/A:0-0: 2 args, 0 upvalues, 6 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	IST  	   		1	; if slot1
		  4	[  0]	JMP  	  2		2	; 	goto 7
		  5	[  0]	KPRI 	  2		1	; slot2 = false
		  6	[  0]	RET1 	  2		2	; return slot2
		  7	[  0]	TGETS	  2	0	3	; slot2 = slot0.id
		  8	[  0]	ISEQP	  2		0	; if <unknown table>.id == nil
		  9	[  0]	JMP  	  2		27	; 	goto 37
		 10	[  0]	TGETS	  2	1	3	; slot2 = slot1.id
		 11	[  0]	ISEQP	  2		0	; if <unknown table>.id == nil
		 12	[  0]	JMP  	  2		24	; 	goto 37
		 13	[  0]	GGET 	  2		2	; slot2 = _env["tostring"]
		 14	[  0]	TGETS	  4	0	3	; slot4 = slot0.id
		 15	[  0]	CALL 	  2	2	2	; slot2 = tostring(slot3)
		 16	[  0]	GGET 	  3		2	; slot3 = _env["tostring"]
		 17	[  0]	TGETS	  5	1	3	; slot5 = slot1.id
		 18	[  0]	CALL 	  3	2	2	; slot3 = tostring(<unknown table>.id)
		 19	[  0]	ISNEV	  2		3	; if slot2 ~= tostring
		 20	[  0]	JMP  	  2		2	; 	goto 23
		 21	[  0]	KPRI 	  2		2	; slot2 = true
		 22	[  0]	RET1 	  2		2	; return slot2
		 23	[  0]	GGET 	  2		1	; slot2 = _env["tonumber"]
		 24	[  0]	TGETS	  4	0	3	; slot4 = slot0.id
		 25	[  0]	CALL 	  2	2	2	; slot2 = tonumber(tostring)
		 26	[  0]	GGET 	  3		1	; slot3 = _env["tonumber"]
		 27	[  0]	TGETS	  5	1	3	; slot5 = slot1.id
		 28	[  0]	CALL 	  3	2	2	; slot3 = tonumber(<unknown table>.id)
		 29	[  0]	ISF  	   		2	; if not slot2
		 30	[  0]	JMP  	  4		6	; 	goto 37
		 31	[  0]	ISF  	   		3	; if not tonumber
		 32	[  0]	JMP  	  4		4	; 	goto 37
		 33	[  0]	ISNEV	  2		3	; if slot2 ~= tonumber
		 34	[  0]	JMP  	  4		2	; 	goto 37
		 35	[  0]	KPRI 	  4		2	; slot4 = true
		 36	[  0]	RET1 	  4		2	; return slot4
		 37	[  0]	TGETS	  2	0	0	; slot2 = slot0.key
		 38	[  0]	ISEQP	  2		0	; if <unknown table>.key == nil
		 39	[  0]	JMP  	  2		11	; 	goto 51
		 40	[  0]	TGETS	  2	1	0	; slot2 = slot1.key
		 41	[  0]	ISEQP	  2		0	; if <unknown table>.key == nil
		 42	[  0]	JMP  	  2		8	; 	goto 51
		 43	[  0]	GGET 	  2		2	; slot2 = _env["tostring"]
		 44	[  0]	TGETS	  4	0	0	; slot4 = slot0.key
		 45	[  0]	CALL 	  2	2	2	; slot2 = tostring(tonumber)
		 46	[  0]	GGET 	  3		2	; slot3 = _env["tostring"]
		 47	[  0]	TGETS	  5	1	0	; slot5 = slot1.key
		 48	[  0]	CALL 	  3	2	2	; slot3 = tostring(<unknown table>.key)
		 49	[  0]	ISEQV	  2		3	; if slot2 == tostring
		 50	[  0]	JMP  	  2		2	; 	goto 53
		 51	[  0]	KPRI 	  2		1	; slot2 = false
		 52	[  0]	JMP  	  3		1	; 	goto 54
		 53	[  0]	KPRI 	  2		2	; slot2 = true
		 54	[  0]	RET1 	  2		2	; return slot2
	750	[  0]	TDUP 	 10		34	; slot10 = copy table#k34
	751	[  0]	KSTR 	 11		33	; slot11 = "setGearBonus"
	752	[  0]	FNEW 	 12		32	; N/A:0-0: 2 args, 1 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	GGET 	  3		4	; slot3 = _env["math"]
		  3	[  0]	TGETS	  3	3	3	; slot3 = math.max
		  4	[  0]	KSHORT	  5		0	; slot5 = 0
		  5	[  0]	GGET 	  6		4	; slot6 = _env["math"]
		  6	[  0]	TGETS	  6	6	2	; slot6 = math.floor
		  7	[  0]	GGET 	  8		1	; slot8 = _env["tonumber"]
		  8	[  0]	MOV  	 10		0	; slot10 = slot0
		  9	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 10	[  0]	IST  	   		8	; if tonumber
		 11	[  0]	JMP  	  9		1	; 	goto 13
		 12	[  0]	KSHORT	  8		0	; slot8 = 0
		 13	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 14	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 15	[  0]	TSETS	  3	2	5	; uv0"unknown".BATTLE = math.max
		 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 17	[  0]	GGET 	  3		4	; slot3 = _env["math"]
		 18	[  0]	TGETS	  3	3	3	; slot3 = math.max
		 19	[  0]	KSHORT	  5		0	; slot5 = 0
		 20	[  0]	GGET 	  6		4	; slot6 = _env["math"]
		 21	[  0]	TGETS	  6	6	2	; slot6 = math.floor
		 22	[  0]	GGET 	  8		1	; slot8 = _env["tonumber"]
		 23	[  0]	MOV  	 10		1	; slot10 = slot1
		 24	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 25	[  0]	IST  	   		8	; if tonumber
		 26	[  0]	JMP  	  9		1	; 	goto 28
		 27	[  0]	KSHORT	  8		0	; slot8 = 0
		 28	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 29	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 30	[  0]	TSETS	  3	2	0	; uv0"unknown".TRAINING = math.max
		 31	[  0]	RET0 	  0		1	; return
	753	[  0]	TSETV	 12	1	11	; slot1[slot11] = slot12
	754	[  0]	KPRI 	 11		0	; slot11 = nil
	755	[  0]	FNEW 	 12		31	; N/A:0-0: 1 args, 2 upvalues, 11 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  2	[  0]	IST  	   		1	; if uv0"unknown"
		  3	[  0]	JMP  	  1		15	; 	goto 19
		  4	[  0]	TNEW 	  1		0	; slot1 = new table( array: 0, dict: 1)
		  5	[  0]	USETV	  0		1	; uv0"unknwon" = slot1
		  6	[  0]	GGET 	  1		2	; slot1 = _env["ipairs"]
		  7	[  0]	UGET 	  3		1	; slot3 = uv1"unknwon"
		  8	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		  9	[  0]	JMP  	  4		7	; 	goto 17
		 10	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 11	[  0]	TGETS	  7	5	1	; slot7 = slot5.id
		 12	[  0]	UGET 	  8		0	; slot8 = uv0"unknwon"
		 13	[  0]	TGETS	  9	5	0	; slot9 = slot5.key
		 14	[  0]	MOV  	 10		5	; slot10 = slot5
		 15	[  0]	TSETV	  5	8	9	; uv0"unknown"[<unknown table>.key] = slot5
		 16	[  0]	TSETV	 10	6	7	; uv0"unknown"[<unknown table>.id] = slot10
		 17	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv1"unknown"; slot4, slot5 = slot1(slot2, uv1"unknown")
		 18	[  0]	ITERL	  4		-9	; uv1"unknown" = slot4; if slot4 != nil goto 10
		 19	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 20	[  0]	TGETS	  2	0	1	; slot2 = slot0.id
		 21	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[<unknown table>.id]
		 22	[  0]	IST  	   		1	; if slot1
		 23	[  0]	JMP  	  2		6	; 	goto 30
		 24	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 25	[  0]	TGETS	  2	0	0	; slot2 = slot0.key
		 26	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[<unknown table>.key]
		 27	[  0]	IST  	   		1	; if slot1
		 28	[  0]	JMP  	  2		1	; 	goto 30
		 29	[  0]	MOV  	  1		0	; slot1 = slot0
		 30	[  0]	RET1 	  1		2	; return slot1
	756	[  0]	FNEW 	 13		30	; N/A:0-0: 2 args, 0 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  2		4	; slot2 = _env["math"]
		  2	[  0]	TGETS	  2	2	3	; slot2 = math.max
		  3	[  0]	KSHORT	  4		1	; slot4 = 1
		  4	[  0]	GGET 	  5		4	; slot5 = _env["math"]
		  5	[  0]	TGETS	  5	5	2	; slot5 = math.floor
		  6	[  0]	GGET 	  7		1	; slot7 = _env["tonumber"]
		  7	[  0]	TGETS	  9	1	0	; slot9 = slot1.maxLevel
		  8	[  0]	IST  	   		9	; if <unknown table>.maxLevel
		  9	[  0]	JMP  	 10		1	; 	goto 11
		 10	[  0]	TGETS	  9	0	0	; slot9 = slot0.maxLevel
		 11	[  0]	CALL 	  7	2	2	; slot7 = tonumber(slot8)
		 12	[  0]	IST  	   		7	; if tonumber
		 13	[  0]	JMP  	  8		1	; 	goto 15
		 14	[  0]	KSHORT	  7		1	; slot7 = 1
		 15	[  0]	CALL 	  5	0	2	; MULTRES = math.floor(slot6)
		 16	[  0]	CALLMT	  2		1	; return math.max(, ...MULTRES)
	757	[  0]	KSTR 	 14		29	; slot14 = "gearBonusOf"
	758	[  0]	FNEW 	 15		28	; N/A:0-0: 1 args, 3 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		8	; slot1 = _env["type"]
		  2	[  0]	MOV  	  3		0	; slot3 = slot0
		  3	[  0]	CALL 	  1	2	2	; slot1 = type(slot2)
		  4	[  0]	ISEQS	  1		7	; if slot1 == "table"
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KSHORT	  1		0	; slot1 = 0
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  9	[  0]	MOV  	  3		0	; slot3 = slot0
		 10	[  0]	CALL 	  1	2	2	; slot1 = uv0"unknown"(slot2)
		 11	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
		 12	[  0]	TGETS	  3	1	8	; slot3 = slot1.type
		 13	[  0]	IST  	   		3	; if <unknown table>.type
		 14	[  0]	JMP  	  4		1	; 	goto 16
		 15	[  0]	TGETS	  3	0	8	; slot3 = slot0.type
		 16	[  0]	TGETV	  2	2	3	; slot2 = uv1"unknown"[<unknown table>.type]
		 17	[  0]	IST  	   		2	; if slot2
		 18	[  0]	JMP  	  3		1	; 	goto 20
		 19	[  0]	KSHORT	  2		0	; slot2 = 0
		 20	[  0]	KSHORT	  3		0	; slot3 = 0
		 21	[  0]	ISGT 	  2		3	; if slot2 > slot3
		 22	[  0]	JMP  	  3		2	; 	goto 25
		 23	[  0]	KSHORT	  3		0	; slot3 = 0
		 24	[  0]	RET1 	  3		2	; return slot3
		 25	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		 26	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 27	[  0]	KSHORT	  5		1	; slot5 = 1
		 28	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 29	[  0]	TGETS	  6	6	4	; slot6 = math.floor
		 30	[  0]	GGET 	  8		3	; slot8 = _env["tonumber"]
		 31	[  0]	TGETS	 10	0	2	; slot10 = slot0.level
		 32	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 33	[  0]	IST  	   		8	; if tonumber
		 34	[  0]	JMP  	  9		1	; 	goto 36
		 35	[  0]	KSHORT	  8		1	; slot8 = 1
		 36	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 37	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 38	[  0]	UGET 	  4		2	; slot4 = uv2"unknwon"
		 39	[  0]	MOV  	  6		0	; slot6 = slot0
		 40	[  0]	MOV  	  7		1	; slot7 = slot1
		 41	[  0]	CALL 	  4	2	3	; slot4 = uv2"unknown"(slot5, slot6)
		 42	[  0]	TGETS	  5	1	1	; slot5 = slot1.gearLevel
		 43	[  0]	ISF  	   		5	; if not <unknown table>.gearLevel
		 44	[  0]	JMP  	  6		2	; 	goto 47
		 45	[  0]	KSHORT	  5		1	; slot5 = 1
		 46	[  0]	JMP  	  6		1	; 	goto 48
		 47	[  0]	KSHORT	  5		0	; slot5 = 0
		 48	[  0]	ADDVV	  4	4	5	; slot4 = uv2"unknown" + slot5
		 49	[  0]	GGET 	  5		6	; slot5 = _env["math"]
		 50	[  0]	TGETS	  5	5	5	; slot5 = math.max
		 51	[  0]	KSHORT	  7		0	; slot7 = 0
		 52	[  0]	GGET 	  8		6	; slot8 = _env["math"]
		 53	[  0]	TGETS	  8	8	0	; slot8 = math.min
		 54	[  0]	MOV  	 10		4	; slot10 = slot4
		 55	[  0]	ADDVV	 11	3	2	; slot11 = math.max + slot2
		 56	[  0]	CALL 	  8	2	3	; slot8 = math.min(slot9, slot10)
		 57	[  0]	SUBVV	  8	8	3	; slot8 = math.min - math.max
		 58	[  0]	CALLT	  5		3	; return math.max(slot6, slot7)
	759	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	760	[  0]	KSTR 	 14		27	; slot14 = "levelOf"
	761	[  0]	FNEW 	 15		26	; N/A:0-0: 1 args, 1 upvalues, 9 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  1		5	; slot1 = _env["math"]
		  2	[  0]	TGETS	  1	1	4	; slot1 = math.max
		  3	[  0]	KSHORT	  3		1	; slot3 = 1
		  4	[  0]	GGET 	  4		5	; slot4 = _env["math"]
		  5	[  0]	TGETS	  4	4	3	; slot4 = math.floor
		  6	[  0]	GGET 	  6		2	; slot6 = _env["tonumber"]
		  7	[  0]	ISFC 	  8		0	; slot8 = slot0; if not slot0
		  8	[  0]	JMP  	  8		1	; 	goto 10
		  9	[  0]	TGETS	  8	0	1	; slot8 = slot0.level
		 10	[  0]	CALL 	  6	2	2	; slot6 = tonumber(slot7)
		 11	[  0]	IST  	   		6	; if tonumber
		 12	[  0]	JMP  	  7		1	; 	goto 14
		 13	[  0]	KSHORT	  6		1	; slot6 = 1
		 14	[  0]	CALL 	  4	0	2	; MULTRES = math.floor(slot5)
		 15	[  0]	CALLM	  1	2	1	; slot1 = math.max(slot2, ...MULTRES)
		 16	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 17	[  0]	TGETS	  2	2	0	; slot2 = uv0"unknown".gearBonusOf
		 18	[  0]	MOV  	  4		0	; slot4 = slot0
		 19	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".gearBonusOf(slot3)
		 20	[  0]	ADDVV	  2	1	2	; slot2 = slot1 + slot2
		 21	[  0]	RET1 	  2		2	; return slot2
	762	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	763	[  0]	KSTR 	 14		25	; slot14 = "levelValue"
	764	[  0]	FNEW 	 15		24	; N/A:0-0: 3 args, 3 upvalues, 12 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  3		6	; slot3 = _env["type"]
		  2	[  0]	MOV  	  5		0	; slot5 = slot0
		  3	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		  4	[  0]	ISNES	  3		5	; if type ~= "table"
		  5	[  0]	JMP  	  3		43	; 	goto 49
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	MOV  	  5		0	; slot5 = slot0
		  8	[  0]	CALL 	  3	2	2	; slot3 = uv0"unknown"(slot4)
		  9	[  0]	UGET 	  4		1	; slot4 = uv1"unknwon"
		 10	[  0]	TGETS	  4	4	4	; slot4 = uv1"unknown".levelOf
		 11	[  0]	MOV  	  6		0	; slot6 = slot0
		 12	[  0]	CALL 	  4	2	2	; slot4 = uv1"unknown".levelOf(slot5)
		 13	[  0]	UGET 	  5		2	; slot5 = uv2"unknwon"
		 14	[  0]	MOV  	  7		0	; slot7 = slot0
		 15	[  0]	MOV  	  8		3	; slot8 = uv0"unknown"
		 16	[  0]	CALL 	  5	2	3	; slot5 = uv2"unknown"(slot6, slot7)
		 17	[  0]	ISGE 	  5		4	; if uv2"unknown" >= uv1"unknown".levelOf
		 18	[  0]	JMP  	  5		10	; 	goto 29
		 19	[  0]	TGETS	  5	3	3	; slot5 = uv0"unknown".gearLevel
		 20	[  0]	ISF  	   		5	; if not uv0"unknown".gearLevel
		 21	[  0]	JMP  	  6		7	; 	goto 29
		 22	[  0]	TGETS	  5	3	3	; slot5 = uv0"unknown".gearLevel
		 23	[  0]	TGETV	  5	5	1	; slot5 = uv0"unknown".gearLevel[slot1]
		 24	[  0]	ISEQP	  5		0	; if slot5 == nil
		 25	[  0]	JMP  	  5		3	; 	goto 29
		 26	[  0]	TGETS	  5	3	3	; slot5 = uv0"unknown".gearLevel
		 27	[  0]	TGETV	  5	5	1	; slot5 = uv0"unknown".gearLevel[slot1]
		 28	[  0]	RET1 	  5		2	; return slot5
		 29	[  0]	GGET 	  5		6	; slot5 = _env["type"]
		 30	[  0]	MOV  	  7		2	; slot7 = slot2
		 31	[  0]	CALL 	  5	2	2	; slot5 = type(slot6)
		 32	[  0]	ISNES	  5		5	; if type ~= "table"
		 33	[  0]	JMP  	  5		15	; 	goto 49
		 34	[  0]	GGET 	  5		2	; slot5 = _env["math"]
		 35	[  0]	TGETS	  5	5	1	; slot5 = math.max
		 36	[  0]	KSHORT	  7		1	; slot7 = 1
		 37	[  0]	GGET 	  8		2	; slot8 = _env["math"]
		 38	[  0]	TGETS	  8	8	0	; slot8 = math.min
		 39	[  0]	LEN  	 10		2	; slot10 = #slot2
		 40	[  0]	MOV  	 11		4	; slot11 = uv1"unknown".levelOf
		 41	[  0]	CALL 	  8	0	3	; MULTRES = math.min(slot9, slot10)
		 42	[  0]	CALLM	  5	2	1	; slot5 = math.max(slot6, ...MULTRES)
		 43	[  0]	TGETV	  5	2	5	; slot5 = slot2[math.max]
		 44	[  0]	IST  	   		5	; if slot5
		 45	[  0]	JMP  	  6		2	; 	goto 48
		 46	[  0]	LEN  	  5		2	; slot5 = #slot2
		 47	[  0]	TGETV	  5	2	5	; slot5 = slot2[slot5]
		 48	[  0]	RET1 	  5		2	; return slot5
		 49	[  0]	GGET 	  3		6	; slot3 = _env["type"]
		 50	[  0]	MOV  	  5		2	; slot5 = slot2
		 51	[  0]	CALL 	  3	2	2	; slot3 = type(uv1"unknown".levelOf)
		 52	[  0]	ISNES	  3		5	; if type ~= "table"
		 53	[  0]	JMP  	  3		2	; 	goto 56
		 54	[  0]	TGETB	  3	2	1	; slot3 = slot2[1]
		 55	[  0]	RET1 	  3		2	; return slot3
		 56	[  0]	RET1 	  2		2	; return slot2
	765	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	766	[  0]	KSTR 	 14		23	; slot14 = "isMaxed"
	767	[  0]	FNEW 	 15		22	; N/A:0-0: 2 args, 2 upvalues, 17 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		1	; if slot1
		  2	[  0]	JMP  	  2		2	; 	goto 5
		  3	[  0]	KPRI 	  2		1	; slot2 = false
		  4	[  0]	RET1 	  2		2	; return slot2
		  5	[  0]	GGET 	  2		9	; slot2 = _env["type"]
		  6	[  0]	MOV  	  4		0	; slot4 = slot0
		  7	[  0]	CALL 	  2	2	2	; slot2 = type(slot3)
		  8	[  0]	ISNES	  2		8	; if slot2 ~= "table"
		  9	[  0]	JMP  	  2		2	; 	goto 12
		 10	[  0]	ISTC 	  2		0	; slot2 = slot0; if slot0
		 11	[  0]	JMP  	  2		4	; 	goto 16
		 12	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		 13	[  0]	TGETS	  2	2	7	; slot2 = uv0"unknown".getById
		 14	[  0]	MOV  	  4		0	; slot4 = slot0
		 15	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".getById(slot3)
		 16	[  0]	IST  	   		2	; if slot2
		 17	[  0]	JMP  	  3		2	; 	goto 20
		 18	[  0]	KPRI 	  3		1	; slot3 = false
		 19	[  0]	RET1 	  3		2	; return slot3
		 20	[  0]	GGET 	  3		6	; slot3 = _env["math"]
		 21	[  0]	TGETS	  3	3	5	; slot3 = math.max
		 22	[  0]	KSHORT	  5		1	; slot5 = 1
		 23	[  0]	GGET 	  6		6	; slot6 = _env["math"]
		 24	[  0]	TGETS	  6	6	4	; slot6 = math.floor
		 25	[  0]	GGET 	  8		3	; slot8 = _env["tonumber"]
		 26	[  0]	TGETS	 10	2	2	; slot10 = slot2.maxLevel
		 27	[  0]	CALL 	  8	2	2	; slot8 = tonumber(slot9)
		 28	[  0]	IST  	   		8	; if tonumber
		 29	[  0]	JMP  	  9		1	; 	goto 31
		 30	[  0]	KSHORT	  8		1	; slot8 = 1
		 31	[  0]	CALL 	  6	0	2	; MULTRES = math.floor(slot7)
		 32	[  0]	CALLM	  3	2	1	; slot3 = math.max(slot4, ...MULTRES)
		 33	[  0]	GGET 	  4		1	; slot4 = _env["ipairs"]
		 34	[  0]	MOV  	  6		1	; slot6 = slot1
		 35	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(slot5)
		 36	[  0]	JMP  	  7		25	; 	goto 62
		 37	[  0]	UGET 	  9		1	; slot9 = uv1"unknwon"
		 38	[  0]	MOV  	 11		8	; slot11 = slot8
		 39	[  0]	MOV  	 12		2	; slot12 = slot2
		 40	[  0]	CALL 	  9	2	3	; slot9 = uv1"unknown"(<unknown table>.maxLevel, slot11)
		 41	[  0]	ISF  	   		9	; if not uv1"unknown"
		 42	[  0]	JMP  	 10		19	; 	goto 62
		 43	[  0]	GGET 	  9		6	; slot9 = _env["math"]
		 44	[  0]	TGETS	  9	9	5	; slot9 = math.max
		 45	[  0]	KSHORT	 11		1	; slot11 = 1
		 46	[  0]	GGET 	 12		6	; slot12 = _env["math"]
		 47	[  0]	TGETS	 12	12	4	; slot12 = math.floor
		 48	[  0]	GGET 	 14		3	; slot14 = _env["tonumber"]
		 49	[  0]	TGETS	 16	8	0	; slot16 = slot8.level
		 50	[  0]	CALL 	 14	2	2	; slot14 = tonumber(slot15)
		 51	[  0]	IST  	   		14	; if tonumber
		 52	[  0]	JMP  	 15		1	; 	goto 54
		 53	[  0]	KSHORT	 14		1	; slot14 = 1
		 54	[  0]	CALL 	 12	0	2	; MULTRES = math.floor(slot13)
		 55	[  0]	CALLM	  9	2	1	; slot9 = math.max(<unknown table>.maxLevel, ...MULTRES)
		 56	[  0]	ISLE 	  3		9	; if math.max <= math.max
		 57	[  0]	JMP  	 10		2	; 	goto 60
		 58	[  0]	KPRI 	 10		1	; slot10 = false
		 59	[  0]	JMP  	 11		1	; 	goto 61
		 60	[  0]	KPRI 	 10		2	; slot10 = true
		 61	[  0]	RET1 	 10		2	; return slot10
		 62	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, slot5, slot6; slot7, slot8 = ipairs(slot5, slot6)
		 63	[  0]	ITERL	  7		-27	; slot6 = slot7; if slot7 != nil goto 37
		 64	[  0]	KPRI 	  4		1	; slot4 = false
		 65	[  0]	RET1 	  4		2	; return slot4
	768	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	769	[  0]	KSTR 	 14		21	; slot14 = "isAvailableInEdition"
	770	[  0]	FNEW 	 15		20	; N/A:0-0: 1 args, 0 upvalues, 3 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		1	; slot1 = false
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	TGETS	  1	0	3	; slot1 = slot0.key
		  6	[  0]	ISNES	  1		2	; if <unknown table>.key ~= "NecklaceOfUnity"
		  7	[  0]	JMP  	  1		11	; 	goto 19
		  8	[  0]	GGET 	  1		1	; slot1 = _env["_G"]
		  9	[  0]	TGETS	  1	1	0	; slot1 = _G.isDemoMode
		 10	[  0]	ISF  	   		1	; if not _G.isDemoMode
		 11	[  0]	JMP  	  2		7	; 	goto 19
		 12	[  0]	GGET 	  1		1	; slot1 = _env["_G"]
		 13	[  0]	TGETS	  1	1	0	; slot1 = _G.isDemoMode
		 14	[  0]	CALL 	  1	2	1	; slot1 = _G.isDemoMode()
		 15	[  0]	NOT  	  1		1	; slot1 = not slot1
		 16	[  0]	JMP  	  2		3	; 	goto 20
		 17	[  0]	KPRI 	  1		1	; slot1 = false
		 18	[  0]	JMP  	  2		1	; 	goto 20
		 19	[  0]	KPRI 	  1		2	; slot1 = true
		 20	[  0]	RET1 	  1		2	; return slot1
	771	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	772	[  0]	KSTR 	 14		19	; slot14 = "isAvailableForStage"
	773	[  0]	FNEW 	 15		18	; N/A:0-0: 2 args, 1 upvalues, 7 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  2	[  0]	TGETS	  2	2	5	; slot2 = uv0"unknown".isAvailableInEdition
		  3	[  0]	MOV  	  4		0	; slot4 = slot0
		  4	[  0]	CALL 	  2	2	2	; slot2 = uv0"unknown".isAvailableInEdition(slot3)
		  5	[  0]	ISF  	   		2	; if not slot2
		  6	[  0]	JMP  	  2		3	; 	goto 10
		  7	[  0]	TGETS	  2	0	4	; slot2 = slot0.initiallyUnlocked
		  8	[  0]	ISNEP	  2		1	; if <unknown table>.initiallyUnlocked ~= false
		  9	[  0]	JMP  	  2		2	; 	goto 12
		 10	[  0]	KPRI 	  2		1	; slot2 = false
		 11	[  0]	RET1 	  2		2	; return slot2
		 12	[  0]	TGETS	  2	0	3	; slot2 = slot0.stage
		 13	[  0]	ISEQP	  2		0	; if <unknown table>.stage == nil
		 14	[  0]	JMP  	  3		4	; 	goto 19
		 15	[  0]	ISEQS	  2		2	; if <unknown table>.stage == "all"
		 16	[  0]	JMP  	  3		2	; 	goto 19
		 17	[  0]	ISNES	  2		1	; if <unknown table>.stage ~= "모두"
		 18	[  0]	JMP  	  3		2	; 	goto 21
		 19	[  0]	KPRI 	  3		2	; slot3 = true
		 20	[  0]	RET1 	  3		2	; return slot3
		 21	[  0]	GGET 	  3		0	; slot3 = _env["tonumber"]
		 22	[  0]	MOV  	  5		2	; slot5 = <unknown table>.stage
		 23	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 24	[  0]	ISEQP	  3		0	; if tonumber == nil
		 25	[  0]	JMP  	  3		11	; 	goto 37
		 26	[  0]	GGET 	  3		0	; slot3 = _env["tonumber"]
		 27	[  0]	MOV  	  5		2	; slot5 = <unknown table>.stage
		 28	[  0]	CALL 	  3	2	2	; slot3 = tonumber(slot4)
		 29	[  0]	GGET 	  4		0	; slot4 = _env["tonumber"]
		 30	[  0]	MOV  	  6		1	; slot6 = slot1
		 31	[  0]	CALL 	  4	2	2	; slot4 = tonumber(<unknown table>.stage)
		 32	[  0]	IST  	   		4	; if tonumber
		 33	[  0]	JMP  	  5		1	; 	goto 35
		 34	[  0]	KSHORT	  4		1	; slot4 = 1
		 35	[  0]	ISEQV	  3		4	; if tonumber == slot4
		 36	[  0]	JMP  	  3		2	; 	goto 39
		 37	[  0]	KPRI 	  3		1	; slot3 = false
		 38	[  0]	JMP  	  4		1	; 	goto 40
		 39	[  0]	KPRI 	  3		2	; slot3 = true
		 40	[  0]	RET1 	  3		2	; return slot3
	774	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	775	[  0]	KSTR 	 14		17	; slot14 = "offer"
	776	[  0]	FNEW 	 15		16	; N/A:0-0: 6 args, 3 upvalues, 26 slots
		
		;;;; constant tables ;;;;
		ktable#2 = [
			#1: C,
			#2: U,
			#3: R,
			#4: L,
			]
		
		
		ktable#11 = [
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	GGET 	  6		21	; slot6 = _env["math"]
		  2	[  0]	TGETS	  6	6	20	; slot6 = math.max
		  3	[  0]	KSHORT	  8		1	; slot8 = 1
		  4	[  0]	GGET 	  9		21	; slot9 = _env["math"]
		  5	[  0]	TGETS	  9	9	19	; slot9 = math.floor
		  6	[  0]	GGET 	 11		18	; slot11 = _env["tonumber"]
		  7	[  0]	ISTC 	 13		0	; slot13 = slot0; if slot0
		  8	[  0]	JMP  	 13		1	; 	goto 10
		  9	[  0]	KSHORT	 13		3	; slot13 = 3
		 10	[  0]	CALL 	 11	2	2	; slot11 = tonumber(slot12)
		 11	[  0]	IST  	   		11	; if tonumber
		 12	[  0]	JMP  	 12		1	; 	goto 14
		 13	[  0]	KSHORT	 11		3	; slot11 = 3
		 14	[  0]	CALL 	  9	0	2	; MULTRES = math.floor(slot10)
		 15	[  0]	CALLM	  6	2	1	; slot6 = math.max(slot7, ...MULTRES)
		 16	[  0]	MOV  	  0		6	; slot0 = math.max
		 17	[  0]	UGET 	  6		0	; slot6 = uv0"unknwon"
		 18	[  0]	MOV  	  8		1	; slot8 = slot1
		 19	[  0]	CALL 	  6	2	2	; slot6 = uv0"unknown"(slot7)
		 20	[  0]	UGET 	  7		1	; slot7 = uv1"unknwon"
		 21	[  0]	TGETS	  7	7	17	; slot7 = uv1"unknown".getById
		 22	[  0]	MOV  	  9		3	; slot9 = slot3
		 23	[  0]	CALL 	  7	2	2	; slot7 = uv1"unknown".getById(slot8)
		 24	[  0]	ISF  	   		7	; if not uv1"unknown".getById
		 25	[  0]	JMP  	  8		2	; 	goto 28
		 26	[  0]	KSHORT	  8		1	; slot8 = 1
		 27	[  0]	JMP  	  9		1	; 	goto 29
		 28	[  0]	KPRI 	  8		0	; slot8 = nil
		 29	[  0]	FNEW 	  9		16	; N/A:0-0: 0 args, 1 upvalues, 6 slots
			
			;;;; constant tables ;;;;
			;;;; instructions ;;;;
			  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
			  2	[  0]	TGETS	  0	0	7	; slot0 = uv0"unknown".C
			  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  4	[  0]	TGETS	  1	1	6	; slot1 = uv0"unknown".U
			  5	[  0]	ADDVV	  0	0	1	; slot0 = uv0"unknown".C + uv0"unknown".U
			  6	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			  7	[  0]	TGETS	  1	1	5	; slot1 = uv0"unknown".R
			  8	[  0]	ADDVV	  0	0	1	; slot0 = slot0 + uv0"unknown".R
			  9	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
			 10	[  0]	TGETS	  1	1	4	; slot1 = uv0"unknown".L
			 11	[  0]	ADDVV	  0	0	1	; slot0 = slot0 + uv0"unknown".L
			 12	[  0]	KSHORT	  1		0	; slot1 = 0
			 13	[  0]	ISGT 	  0		1	; if slot0 > slot1
			 14	[  0]	JMP  	  1		2	; 	goto 17
			 15	[  0]	KSTR 	  1		7	; slot1 = "C"
			 16	[  0]	UCLO 	  0		33	; nil uvs >= r0; goto 50
			 17	[  0]	GGET 	  1		3	; slot1 = _env["love"]
			 18	[  0]	TGETS	  1	1	2	; slot1 = love.math
			 19	[  0]	TGETS	  1	1	1	; slot1 = love.math.random
			 20	[  0]	CALL 	  1	2	1	; slot1 = love.math.random()
			 21	[  0]	MULVV	  1	1	0	; slot1 = slot1 * slot0
			 22	[  0]	FNEW 	  2		0	; N/A:0-0: 1 args, 2 upvalues, 3 slots
				
				;;;; constant tables ;;;;
				;;;; instructions ;;;;
				  1	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
				  2	[  0]	TGETV	  1	1	0	; slot1 = uv0"unknown"[slot0]
				  3	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
				  4	[  0]	ISGE 	  2		1	; if uv1"unknown" >= slot1
				  5	[  0]	JMP  	  2		2	; 	goto 8
				  6	[  0]	KPRI 	  2		2	; slot2 = true
				  7	[  0]	RET1 	  2		2	; return slot2
				  8	[  0]	UGET 	  2		1	; slot2 = uv1"unknwon"
				  9	[  0]	SUBVV	  2	2	1	; slot2 = uv1"unknown" - slot1
				 10	[  0]	USETV	  1		2	; uv1"unknwon" = slot2
				 11	[  0]	KPRI 	  2		1	; slot2 = false
				 12	[  0]	RET1 	  2		2	; return slot2
			 23	[  0]	MOV  	  3		2	; slot3 = slot2
			 24	[  0]	KSTR 	  5		7	; slot5 = "C"
			 25	[  0]	CALL 	  3	2	2	; slot3 = slot3(slot4)
			 26	[  0]	ISF  	   		3	; if not slot3
			 27	[  0]	JMP  	  4		3	; 	goto 31
			 28	[  0]	KSTR 	  3		7	; slot3 = "C"
			 29	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 30
			 30	[  0]	RET1 	  3		2	; return slot3
			 31	[  0]	MOV  	  3		2	; slot3 = slot2
			 32	[  0]	KSTR 	  5		6	; slot5 = "U"
			 33	[  0]	CALL 	  3	2	2	; slot3 = slot3(slot4)
			 34	[  0]	ISF  	   		3	; if not slot3
			 35	[  0]	JMP  	  4		3	; 	goto 39
			 36	[  0]	KSTR 	  3		6	; slot3 = "U"
			 37	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 38
			 38	[  0]	RET1 	  3		2	; return slot3
			 39	[  0]	MOV  	  3		2	; slot3 = slot2
			 40	[  0]	KSTR 	  5		5	; slot5 = "R"
			 41	[  0]	CALL 	  3	2	2	; slot3 = slot3(slot4)
			 42	[  0]	ISF  	   		3	; if not slot3
			 43	[  0]	JMP  	  4		3	; 	goto 47
			 44	[  0]	KSTR 	  3		5	; slot3 = "R"
			 45	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 46
			 46	[  0]	RET1 	  3		2	; return slot3
			 47	[  0]	KSTR 	  3		4	; slot3 = "L"
			 48	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 49
			 49	[  0]	RET1 	  3		2	; return slot3
			 50	[  0]	RET1 	  1		2	; return slot1
		 30	[  0]	ISF  	   		7	; if not uv1"unknown".getById
		 31	[  0]	JMP  	 10		23	; 	goto 55
		 32	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 33	[  0]	TGETS	 10	10	15	; slot10 = uv1"unknown".isAvailableInEdition
		 34	[  0]	MOV  	 12		7	; slot12 = uv1"unknown".getById
		 35	[  0]	CALL 	 10	2	2	; slot10 = uv1"unknown".isAvailableInEdition(slot11)
		 36	[  0]	ISF  	   		10	; if not uv1"unknown".isAvailableInEdition
		 37	[  0]	JMP  	 10		16	; 	goto 54
		 38	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 39	[  0]	TGETS	 10	10	14	; slot10 = uv1"unknown".isMaxed
		 40	[  0]	MOV  	 12		7	; slot12 = uv1"unknown".getById
		 41	[  0]	MOV  	 13		2	; slot13 = slot2
		 42	[  0]	CALL 	 10	2	3	; slot10 = uv1"unknown".isMaxed(slot11, uv1"unknown".getById)
		 43	[  0]	IST  	   		10	; if uv1"unknown".isMaxed
		 44	[  0]	JMP  	 11		9	; 	goto 54
		 45	[  0]	ISEQP	  5		2	; if slot5 == true
		 46	[  0]	JMP  	 10		8	; 	goto 55
		 47	[  0]	UGET 	 10		1	; slot10 = uv1"unknwon"
		 48	[  0]	TGETS	 10	10	13	; slot10 = uv1"unknown".isAvailableForStage
		 49	[  0]	MOV  	 12		7	; slot12 = uv1"unknown".getById
		 50	[  0]	MOV  	 13		4	; slot13 = slot4
		 51	[  0]	CALL 	 10	2	3	; slot10 = uv1"unknown".isAvailableForStage(slot11, uv1"unknown".getById)
		 52	[  0]	IST  	   		10	; if uv1"unknown".isAvailableForStage
		 53	[  0]	JMP  	 10		1	; 	goto 55
		 54	[  0]	KNIL 	  7		8	; uv1"unknown".getById, slot8 = nil
		 55	[  0]	TNEW 	 10		0	; slot10 = new table( array: 0, dict: 1)
		 56	[  0]	TNEW 	 11		0	; slot11 = new table( array: 0, dict: 1)
		 57	[  0]	ISF  	   		7	; if not slot7
		 58	[  0]	JMP  	 12		3	; 	goto 62
		 59	[  0]	TGETS	 12	7	12	; slot12 = slot7.id
		 60	[  0]	KPRI 	 13		2	; slot13 = true
		 61	[  0]	TSETV	 13	11	12	; slot11[<unknown table>.id] = slot13
		 62	[  0]	KSHORT	 12		1	; slot12 = 1
		 63	[  0]	MOV  	 13		0	; slot13 = math.max
		 64	[  0]	KSHORT	 14		1	; slot14 = 1
		 65	[  0]	FORI 	 12		88	; for slot15 = slot12,slot13,slot14 else goto 154
		 66	[  0]	ISF  	   		7	; if not slot7
		 67	[  0]	JMP  	 16		4	; 	goto 72
		 68	[  0]	ISNEV	 15		8	; if slot15 ~= slot8
		 69	[  0]	JMP  	 16		2	; 	goto 72
		 70	[  0]	TSETV	  7	10	15	; slot10[slot15] = slot7
		 71	[  0]	JMP  	 16		81	; 	goto 153
		 72	[  0]	TDUP 	 16		11	; slot16 = copy table#k11
		 73	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
		 74	[  0]	TSETS	 17	16	10	; slot16.C = slot17
		 75	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
		 76	[  0]	TSETS	 17	16	9	; slot16.U = slot17
		 77	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
		 78	[  0]	TSETS	 17	16	8	; slot16.R = slot17
		 79	[  0]	TNEW 	 17		0	; slot17 = new table( array: 0, dict: 1)
		 80	[  0]	TSETS	 17	16	7	; slot16.L = slot17
		 81	[  0]	GGET 	 17		6	; slot17 = _env["ipairs"]
		 82	[  0]	UGET 	 19		2	; slot19 = uv2"unknwon"
		 83	[  0]	CALL 	 17	4	2	; slot17, slot18, slot19 = ipairs(slot18)
		 84	[  0]	JMP  	 20		28	; 	goto 113
		 85	[  0]	TGETS	 22	21	12	; slot22 = slot21.id
		 86	[  0]	TGETV	 22	11	22	; slot22 = slot11[<unknown table>.id]
		 87	[  0]	IST  	   		22	; if slot22
		 88	[  0]	JMP  	 22		24	; 	goto 113
		 89	[  0]	UGET 	 22		1	; slot22 = uv1"unknwon"
		 90	[  0]	TGETS	 22	22	14	; slot22 = uv1"unknown".isMaxed
		 91	[  0]	MOV  	 24		21	; slot24 = slot21
		 92	[  0]	MOV  	 25		2	; slot25 = slot2
		 93	[  0]	CALL 	 22	2	3	; slot22 = uv1"unknown".isMaxed(slot23, slot24)
		 94	[  0]	IST  	   		22	; if uv1"unknown".isMaxed
		 95	[  0]	JMP  	 22		17	; 	goto 113
		 96	[  0]	UGET 	 22		1	; slot22 = uv1"unknwon"
		 97	[  0]	TGETS	 22	22	13	; slot22 = uv1"unknown".isAvailableForStage
		 98	[  0]	MOV  	 24		21	; slot24 = slot21
		 99	[  0]	MOV  	 25		4	; slot25 = slot4
		100	[  0]	CALL 	 22	2	3	; slot22 = uv1"unknown".isAvailableForStage(slot23, slot24)
		101	[  0]	ISF  	   		22	; if not uv1"unknown".isAvailableForStage
		102	[  0]	JMP  	 23		10	; 	goto 113
		103	[  0]	TGETS	 22	21	5	; slot22 = slot21.rarity
		104	[  0]	TGETV	 22	16	22	; slot22 = slot16[<unknown table>.rarity]
		105	[  0]	ISF  	   		22	; if not slot22
		106	[  0]	JMP  	 23		6	; 	goto 113
		107	[  0]	GGET 	 22		4	; slot22 = _env["table"]
		108	[  0]	TGETS	 22	22	3	; slot22 = table.insert
		109	[  0]	TGETS	 24	21	5	; slot24 = slot21.rarity
		110	[  0]	TGETV	 24	16	24	; slot24 = slot16[<unknown table>.rarity]
		111	[  0]	MOV  	 25		21	; slot25 = slot21
		112	[  0]	CALL 	 22	1	3	;  = table.insert(slot23, slot24)
		113	[  0]	ITERC	 20	3	3	; slot20, slot21, slot22 = ipairs, slot18, uv2"unknown"; slot20, slot21 = ipairs(slot18, uv2"unknown")
		114	[  0]	ITERL	 20		-30	; uv2"unknown" = slot20; if slot20 != nil goto 85
		115	[  0]	MOV  	 17		9	; slot17 = slot9
		116	[  0]	CALL 	 17	2	1	; slot17 = slot17()
		117	[  0]	TGETV	 18	16	17	; slot18 = slot16[slot17]
		118	[  0]	ISF  	   		18	; if not slot18
		119	[  0]	JMP  	 19		3	; 	goto 123
		120	[  0]	LEN  	 19		18	; slot19 = #slot18
		121	[  0]	ISNEN	 19		0	; if slot19 ~= 0
		122	[  0]	JMP  	 19		13	; 	goto 136
		123	[  0]	GGET 	 19		6	; slot19 = _env["ipairs"]
		124	[  0]	TDUP 	 21		2	; slot21 = copy table#k2
		125	[  0]	CALL 	 19	4	2	; slot19, slot20, slot21 = ipairs(slot20)
		126	[  0]	JMP  	 22		7	; 	goto 134
		127	[  0]	TGETV	 24	16	23	; slot24 = slot16[slot23]
		128	[  0]	LEN  	 24		24	; slot24 = #slot24
		129	[  0]	KSHORT	 25		0	; slot25 = 0
		130	[  0]	ISGE 	 25		24	; if slot25 >= slot24
		131	[  0]	JMP  	 24		2	; 	goto 134
		132	[  0]	TGETV	 18	16	23	; slot18 = slot16[slot23]
		133	[  0]	JMP  	 19		2	; 	goto 136
		134	[  0]	ITERC	 22	3	3	; slot22, slot23, slot24 = ipairs, slot20, slot21; slot22, slot23 = ipairs(slot20, slot21)
		135	[  0]	ITERL	 22		-9	; slot21 = table.insert; if table.insert != nil goto 127
		136	[  0]	ISF  	   		18	; if not slot18
		137	[  0]	JMP  	 19		15	; 	goto 153
		138	[  0]	LEN  	 19		18	; slot19 = #slot18
		139	[  0]	KSHORT	 20		0	; slot20 = 0
		140	[  0]	ISGE 	 20		19	; if slot20 >= slot19
		141	[  0]	JMP  	 19		11	; 	goto 153
		142	[  0]	GGET 	 19		1	; slot19 = _env["love"]
		143	[  0]	TGETS	 19	19	21	; slot19 = love.math
		144	[  0]	TGETS	 19	19	0	; slot19 = love.math.random
		145	[  0]	KSHORT	 21		1	; slot21 = 1
		146	[  0]	LEN  	 22		18	; slot22 = #slot18
		147	[  0]	CALL 	 19	2	3	; slot19 = love.math.random(slot20, slot21)
		148	[  0]	TGETV	 19	18	19	; slot19 = slot18[love.math.random]
		149	[  0]	TSETV	 19	10	15	; slot10[slot15] = slot19
		150	[  0]	TGETS	 20	19	12	; slot20 = slot19.id
		151	[  0]	KPRI 	 21		2	; slot21 = true
		152	[  0]	TSETV	 21	11	20	; slot11[<unknown table>.id] = slot21
		153	[  0]	FORL 	 12		-88	; slot15 = slot15 + slot14; if cmp(slot15, sign slot14,  slot13) goto 66
		154	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 155
		155	[  0]	RET1 	 10		2	; return slot10
	777	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	778	[  0]	KSTR 	 14		15	; slot14 = "getAll"
	779	[  0]	FNEW 	 15		14	; N/A:0-0: 0 args, 1 upvalues, 1 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	UGET 	  0		0	; slot0 = uv0"unknwon"
		  2	[  0]	RET1 	  0		2	; return uv0"unknown"
	780	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	781	[  0]	KSTR 	 14		13	; slot14 = "getById"
	782	[  0]	FNEW 	 15		12	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		2	; 	goto 5
		  3	[  0]	KPRI 	  1		0	; slot1 = nil
		  4	[  0]	RET1 	  1		2	; return slot1
		  5	[  0]	GGET 	  1		2	; slot1 = _env["ipairs"]
		  6	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		  7	[  0]	CALL 	  1	4	2	; slot1, slot2, slot3 = ipairs(slot2)
		  8	[  0]	JMP  	  4		7	; 	goto 16
		  9	[  0]	TGETS	  6	5	1	; slot6 = slot5.id
		 10	[  0]	ISEQV	  6		0	; if <unknown table>.id == slot0
		 11	[  0]	JMP  	  6		3	; 	goto 15
		 12	[  0]	TGETS	  6	5	0	; slot6 = slot5.key
		 13	[  0]	ISNEV	  6		0	; if <unknown table>.key ~= slot0
		 14	[  0]	JMP  	  6		1	; 	goto 16
		 15	[  0]	RET1 	  5		2	; return slot5
		 16	[  0]	ITERC	  4	3	3	; slot4, slot5, slot6 = slot1, slot2, uv0"unknown"; slot4, slot5 = slot1(slot2, uv0"unknown")
		 17	[  0]	ITERL	  4		-9	; uv0"unknown" = slot4; if slot4 != nil goto 9
		 18	[  0]	KPRI 	  1		0	; slot1 = nil
		 19	[  0]	RET1 	  1		2	; return slot1
	783	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	784	[  0]	KSTR 	 14		11	; slot14 = "getIcon"
	785	[  0]	FNEW 	 15		10	; N/A:0-0: 1 args, 1 upvalues, 10 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	13	; slot1 = slot0.icon
		  4	[  0]	IST  	   		1	; if <unknown table>.icon
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	TGETS	  1	0	12	; slot1 = slot0.proceduralIcon
		  9	[  0]	ISNES	  1		11	; if <unknown table>.proceduralIcon ~= "crown_of_blades"
		 10	[  0]	JMP  	  1		14	; 	goto 25
		 11	[  0]	GGET 	  1		10	; slot1 = _env["love"]
		 12	[  0]	TGETS	  1	1	9	; slot1 = love.filesystem
		 13	[  0]	TGETS	  1	1	8	; slot1 = love.filesystem.getInfo
		 14	[  0]	TGETS	  3	0	13	; slot3 = slot0.icon
		 15	[  0]	CALL 	  1	2	2	; slot1 = love.filesystem.getInfo(slot2)
		 16	[  0]	IST  	   		1	; if slot1
		 17	[  0]	JMP  	  1		7	; 	goto 25
		 18	[  0]	GGET 	  1		7	; slot1 = _env["require"]
		 19	[  0]	KSTR 	  3		6	; slot3 = "src.ui.effects"
		 20	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
		 21	[  0]	TGETS	  1	1	11	; slot1 = slot1.crown_of_blades
		 22	[  0]	TGETS	  1	1	5	; slot1 = <unknown table>.crown_of_blades.getIcon
		 23	[  0]	CALL 	  1	2	1	; slot1 = <unknown table>.crown_of_blades.getIcon()
		 24	[  0]	RET1 	  1		2	; return slot1
		 25	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 26	[  0]	TGETS	  2	0	13	; slot2 = slot0.icon
		 27	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[<unknown table>.icon]
		 28	[  0]	ISEQP	  1		0	; if slot1 == nil
		 29	[  0]	JMP  	  2		4	; 	goto 34
		 30	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 31	[  0]	JMP  	  2		1	; 	goto 33
		 32	[  0]	KPRI 	  2		0	; slot2 = nil
		 33	[  0]	RET1 	  2		2	; return slot2
		 34	[  0]	GGET 	  2		10	; slot2 = _env["love"]
		 35	[  0]	TGETS	  2	2	9	; slot2 = love.filesystem
		 36	[  0]	TGETS	  2	2	8	; slot2 = love.filesystem.getInfo
		 37	[  0]	TGETS	  4	0	13	; slot4 = slot0.icon
		 38	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
		 39	[  0]	IST  	   		2	; if slot2
		 40	[  0]	JMP  	  3		6	; 	goto 47
		 41	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 42	[  0]	TGETS	  4	0	13	; slot4 = slot0.icon
		 43	[  0]	KPRI 	  5		1	; slot5 = false
		 44	[  0]	TSETV	  5	3	4	; uv0"unknown"[<unknown table>.icon] = slot5
		 45	[  0]	KPRI 	  3		0	; slot3 = nil
		 46	[  0]	RET1 	  3		2	; return slot3
		 47	[  0]	GGET 	  3		4	; slot3 = _env["pcall"]
		 48	[  0]	GGET 	  5		10	; slot5 = _env["love"]
		 49	[  0]	TGETS	  5	5	3	; slot5 = love.graphics
		 50	[  0]	TGETS	  5	5	2	; slot5 = love.graphics.newImage
		 51	[  0]	TGETS	  6	0	13	; slot6 = slot0.icon
		 52	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(<unknown table>.icon, love.graphics.newImage)
		 53	[  0]	ISF  	   		3	; if not slot3
		 54	[  0]	JMP  	  5		2	; 	goto 57
		 55	[  0]	IST  	   		4	; if <unknown table>.icon
		 56	[  0]	JMP  	  5		6	; 	goto 63
		 57	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 58	[  0]	TGETS	  6	0	13	; slot6 = slot0.icon
		 59	[  0]	KPRI 	  7		1	; slot7 = false
		 60	[  0]	TSETV	  7	5	6	; uv0"unknown"[<unknown table>.icon] = slot7
		 61	[  0]	KPRI 	  5		0	; slot5 = nil
		 62	[  0]	RET1 	  5		2	; return slot5
		 63	[  0]	MOV  	  7		4	; slot7 = <unknown table>.icon
		 64	[  0]	TGETS	  5	4	1	; slot5 = <unknown table>.icon.setFilter
		 65	[  0]	KSTR 	  8		0	; slot8 = "nearest"
		 66	[  0]	KSTR 	  9		0	; slot9 = "nearest"
		 67	[  0]	CALL 	  5	1	4	;  = <unknown table>.icon.setFilter(<unknown table>.icon, <unknown table>.icon, slot8)
		 68	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 69	[  0]	TGETS	  6	0	13	; slot6 = slot0.icon
		 70	[  0]	TSETV	  4	5	6	; uv0"unknown"[<unknown table>.icon] = <unknown table>.icon
		 71	[  0]	RET1 	  4		2	; return <unknown table>.icon
	786	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	787	[  0]	KSTR 	 14		9	; slot14 = "getIconData"
	788	[  0]	FNEW 	 15		8	; N/A:0-0: 1 args, 1 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  1		3	; 	goto 6
		  3	[  0]	TGETS	  1	0	11	; slot1 = slot0.icon
		  4	[  0]	IST  	   		1	; if <unknown table>.icon
		  5	[  0]	JMP  	  1		2	; 	goto 8
		  6	[  0]	KPRI 	  1		0	; slot1 = nil
		  7	[  0]	RET1 	  1		2	; return slot1
		  8	[  0]	TGETS	  1	0	10	; slot1 = slot0.proceduralIcon
		  9	[  0]	ISNES	  1		9	; if <unknown table>.proceduralIcon ~= "crown_of_blades"
		 10	[  0]	JMP  	  1		14	; 	goto 25
		 11	[  0]	GGET 	  1		8	; slot1 = _env["love"]
		 12	[  0]	TGETS	  1	1	7	; slot1 = love.filesystem
		 13	[  0]	TGETS	  1	1	6	; slot1 = love.filesystem.getInfo
		 14	[  0]	TGETS	  3	0	11	; slot3 = slot0.icon
		 15	[  0]	CALL 	  1	2	2	; slot1 = love.filesystem.getInfo(slot2)
		 16	[  0]	IST  	   		1	; if slot1
		 17	[  0]	JMP  	  1		7	; 	goto 25
		 18	[  0]	GGET 	  1		5	; slot1 = _env["require"]
		 19	[  0]	KSTR 	  3		4	; slot3 = "src.ui.effects"
		 20	[  0]	CALL 	  1	2	2	; slot1 = require(slot2)
		 21	[  0]	TGETS	  1	1	9	; slot1 = slot1.crown_of_blades
		 22	[  0]	TGETS	  1	1	3	; slot1 = <unknown table>.crown_of_blades.getIcon
		 23	[  0]	CALL 	  1	3	1	; slot1, slot2 = <unknown table>.crown_of_blades.getIcon()
		 24	[  0]	RET1 	  2		2	; return slot2
		 25	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 26	[  0]	TGETS	  2	0	11	; slot2 = slot0.icon
		 27	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[<unknown table>.icon]
		 28	[  0]	ISEQP	  1		0	; if slot1 == nil
		 29	[  0]	JMP  	  2		4	; 	goto 34
		 30	[  0]	ISTC 	  2		1	; slot2 = slot1; if slot1
		 31	[  0]	JMP  	  2		1	; 	goto 33
		 32	[  0]	KPRI 	  2		0	; slot2 = nil
		 33	[  0]	RET1 	  2		2	; return slot2
		 34	[  0]	GGET 	  2		8	; slot2 = _env["love"]
		 35	[  0]	TGETS	  2	2	7	; slot2 = love.filesystem
		 36	[  0]	TGETS	  2	2	6	; slot2 = love.filesystem.getInfo
		 37	[  0]	TGETS	  4	0	11	; slot4 = slot0.icon
		 38	[  0]	CALL 	  2	2	2	; slot2 = love.filesystem.getInfo(slot3)
		 39	[  0]	IST  	   		2	; if slot2
		 40	[  0]	JMP  	  3		6	; 	goto 47
		 41	[  0]	UGET 	  3		0	; slot3 = uv0"unknwon"
		 42	[  0]	TGETS	  4	0	11	; slot4 = slot0.icon
		 43	[  0]	KPRI 	  5		1	; slot5 = false
		 44	[  0]	TSETV	  5	3	4	; uv0"unknown"[<unknown table>.icon] = slot5
		 45	[  0]	KPRI 	  3		0	; slot3 = nil
		 46	[  0]	RET1 	  3		2	; return slot3
		 47	[  0]	GGET 	  3		2	; slot3 = _env["pcall"]
		 48	[  0]	GGET 	  5		8	; slot5 = _env["love"]
		 49	[  0]	TGETS	  5	5	1	; slot5 = love.image
		 50	[  0]	TGETS	  5	5	0	; slot5 = love.image.newImageData
		 51	[  0]	TGETS	  6	0	11	; slot6 = slot0.icon
		 52	[  0]	CALL 	  3	3	3	; slot3, slot4 = pcall(<unknown table>.icon, love.image.newImageData)
		 53	[  0]	ISF  	   		3	; if not slot3
		 54	[  0]	JMP  	  5		2	; 	goto 57
		 55	[  0]	IST  	   		4	; if <unknown table>.icon
		 56	[  0]	JMP  	  5		6	; 	goto 63
		 57	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 58	[  0]	TGETS	  6	0	11	; slot6 = slot0.icon
		 59	[  0]	KPRI 	  7		1	; slot7 = false
		 60	[  0]	TSETV	  7	5	6	; uv0"unknown"[<unknown table>.icon] = slot7
		 61	[  0]	KPRI 	  5		0	; slot5 = nil
		 62	[  0]	RET1 	  5		2	; return slot5
		 63	[  0]	UGET 	  5		0	; slot5 = uv0"unknwon"
		 64	[  0]	TGETS	  6	0	11	; slot6 = slot0.icon
		 65	[  0]	TSETV	  4	5	6	; uv0"unknown"[<unknown table>.icon] = <unknown table>.icon
		 66	[  0]	RET1 	  4		2	; return <unknown table>.icon
	789	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	790	[  0]	KSTR 	 14		7	; slot14 = "getRarity"
	791	[  0]	FNEW 	 15		6	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
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
	792	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	793	[  0]	KSTR 	 14		5	; slot14 = "getType"
	794	[  0]	FNEW 	 15		4	; N/A:0-0: 1 args, 1 upvalues, 4 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	IST  	   		0	; if slot0
		  2	[  0]	JMP  	  1		7	; 	goto 10
		  3	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		  4	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".BATTLE
		  5	[  0]	TGETS	  1	1	2	; slot1 = uv0"unknown".BATTLE.ko
		  6	[  0]	UGET 	  2		0	; slot2 = uv0"unknwon"
		  7	[  0]	TGETS	  2	2	3	; slot2 = uv0"unknown".BATTLE
		  8	[  0]	TGETS	  2	2	1	; slot2 = uv0"unknown".BATTLE.en
		  9	[  0]	RET  	  1		3	; return uv0"unknown".BATTLE.ko, uv0"unknown".BATTLE.en
		 10	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 11	[  0]	TGETS	  2	0	0	; slot2 = slot0.type
		 12	[  0]	IST  	   		2	; if <unknown table>.type
		 13	[  0]	JMP  	  3		1	; 	goto 15
		 14	[  0]	KSTR 	  2		3	; slot2 = "BATTLE"
		 15	[  0]	TGETV	  1	1	2	; slot1 = uv0"unknown"[slot2]
		 16	[  0]	IST  	   		1	; if slot1
		 17	[  0]	JMP  	  2		2	; 	goto 20
		 18	[  0]	UGET 	  1		0	; slot1 = uv0"unknwon"
		 19	[  0]	TGETS	  1	1	3	; slot1 = uv0"unknown".BATTLE
		 20	[  0]	TGETS	  2	1	2	; slot2 = uv0"unknown".BATTLE.ko
		 21	[  0]	TGETS	  3	1	1	; slot3 = uv0"unknown".BATTLE.en
		 22	[  0]	RET  	  2		3	; return uv0"unknown".BATTLE.ko, uv0"unknown".BATTLE.en
	795	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	796	[  0]	KSTR 	 14		3	; slot14 = "activate"
	797	[  0]	FNEW 	 15		2	; N/A:0-0: 3 args, 0 upvalues, 8 slots
		
		;;;; constant tables ;;;;
		;;;; instructions ;;;;
		  1	[  0]	ISF  	   		0	; if not slot0
		  2	[  0]	JMP  	  3		5	; 	goto 8
		  3	[  0]	GGET 	  3		2	; slot3 = _env["type"]
		  4	[  0]	TGETS	  5	0	1	; slot5 = slot0.apply
		  5	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		  6	[  0]	ISEQS	  3		0	; if type == "function"
		  7	[  0]	JMP  	  3		1	; 	goto 9
		  8	[  0]	RET0 	  0		1	; return
		  9	[  0]	MOV  	  5		0	; slot5 = slot0
		 10	[  0]	TGETS	  3	0	1	; slot3 = slot0.apply
		 11	[  0]	MOV  	  6		1	; slot6 = slot1
		 12	[  0]	MOV  	  7		2	; slot7 = slot2
		 13	[  0]	CALLT	  3		4	; return <unknown table>.apply(slot4, slot5, slot6)
	798	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	799	[  0]	KSTR 	 14		1	; slot14 = "getBasicTrainingBonuses"
	800	[  0]	FNEW 	 15		0	; N/A:0-0: 2 args, 2 upvalues, 22 slots
		
		;;;; constant tables ;;;;
		ktable#5 = [
			]
		
		
		ktable#10 = [
			#1: W,
			#2: A,
			#3: S,
			#4: M,
			#5: H,
			#6: D,
			]
		
		
		;;;; instructions ;;;;
		  1	[  0]	TNEW 	  2		0	; slot2 = new table( array: 0, dict: 1)
		  2	[  0]	ISF  	   		0	; if not slot0
		  3	[  0]	JMP  	  3		5	; 	goto 9
		  4	[  0]	GGET 	  3		28	; slot3 = _env["type"]
		  5	[  0]	MOV  	  5		1	; slot5 = slot1
		  6	[  0]	CALL 	  3	2	2	; slot3 = type(slot4)
		  7	[  0]	ISEQS	  3		27	; if type == "table"
		  8	[  0]	JMP  	  3		1	; 	goto 10
		  9	[  0]	RET1 	  2		2	; return slot2
		 10	[  0]	KPRI 	  3		1	; slot3 = false
		 11	[  0]	TGETS	  4	0	26	; slot4 = slot0.isSummon
		 12	[  0]	IST  	   		4	; if <unknown table>.isSummon
		 13	[  0]	JMP  	  5		52	; 	goto 66
		 14	[  0]	TGETS	  4	0	25	; slot4 = slot0.isClone
		 15	[  0]	IST  	   		4	; if <unknown table>.isClone
		 16	[  0]	JMP  	  5		49	; 	goto 66
		 17	[  0]	TGETS	  4	0	24	; slot4 = slot0.isShadowMinion
		 18	[  0]	IST  	   		4	; if <unknown table>.isShadowMinion
		 19	[  0]	JMP  	  5		46	; 	goto 66
		 20	[  0]	TGETS	  4	0	23	; slot4 = slot0.isUndyingSoul
		 21	[  0]	IST  	   		4	; if <unknown table>.isUndyingSoul
		 22	[  0]	JMP  	  5		43	; 	goto 66
		 23	[  0]	TGETS	  4	0	22	; slot4 = slot0.isFireSpirit
		 24	[  0]	IST  	   		4	; if <unknown table>.isFireSpirit
		 25	[  0]	JMP  	  5		40	; 	goto 66
		 26	[  0]	TGETS	  4	0	21	; slot4 = slot0.isFlameSpirit
		 27	[  0]	IST  	   		4	; if <unknown table>.isFlameSpirit
		 28	[  0]	JMP  	  5		37	; 	goto 66
		 29	[  0]	TGETS	  4	0	20	; slot4 = slot0.isTower
		 30	[  0]	IST  	   		4	; if <unknown table>.isTower
		 31	[  0]	JMP  	  5		34	; 	goto 66
		 32	[  0]	TGETS	  4	0	19	; slot4 = slot0.isDecoyDummy
		 33	[  0]	IST  	   		4	; if <unknown table>.isDecoyDummy
		 34	[  0]	JMP  	  5		31	; 	goto 66
		 35	[  0]	TGETS	  4	0	18	; slot4 = slot0.isGuardianGolem
		 36	[  0]	IST  	   		4	; if <unknown table>.isGuardianGolem
		 37	[  0]	JMP  	  5		28	; 	goto 66
		 38	[  0]	TGETS	  4	0	17	; slot4 = slot0.isHusk
		 39	[  0]	IST  	   		4	; if <unknown table>.isHusk
		 40	[  0]	JMP  	  4		25	; 	goto 66
		 41	[  0]	TGETS	  4	0	16	; slot4 = slot0.randomOptions
		 42	[  0]	IST  	   		4	; if <unknown table>.randomOptions
		 43	[  0]	JMP  	  5		9	; 	goto 53
		 44	[  0]	TGETS	  4	0	15	; slot4 = slot0.randomOption
		 45	[  0]	ISF  	   		4	; if not <unknown table>.randomOption
		 46	[  0]	JMP  	  5		5	; 	goto 52
		 47	[  0]	TNEW 	  4		3	; slot4 = new table( array: 3, dict: 1)
		 48	[  0]	TGETS	  5	0	15	; slot5 = slot0.randomOption
		 49	[  0]	TSETB	  5	4	1	; slot4[1] = <unknown table>.randomOption
		 50	[  0]	IST  	   		4	; if slot4
		 51	[  0]	JMP  	  5		1	; 	goto 53
		 52	[  0]	TNEW 	  4		0	; slot4 = new table( array: 0, dict: 1)
		 53	[  0]	GGET 	  5		14	; slot5 = _env["ipairs"]
		 54	[  0]	MOV  	  7		4	; slot7 = slot4
		 55	[  0]	CALL 	  5	4	2	; slot5, slot6, slot7 = ipairs(slot6)
		 56	[  0]	JMP  	  8		7	; 	goto 64
		 57	[  0]	GGET 	 10		13	; slot10 = _env["tostring"]
		 58	[  0]	TGETS	 12	9	12	; slot12 = slot9.id
		 59	[  0]	CALL 	 10	2	2	; slot10 = tostring(slot11)
		 60	[  0]	ISNES	 10		11	; if tostring ~= "26"
		 61	[  0]	JMP  	 10		2	; 	goto 64
		 62	[  0]	KPRI 	  3		2	; slot3 = true
		 63	[  0]	JMP  	  5		2	; 	goto 66
		 64	[  0]	ITERC	  8	3	3	; slot8, slot9, slot10 = ipairs, slot6, slot7; slot8, slot9 = ipairs(slot6, slot7)
		 65	[  0]	ITERL	  8		-9	; slot7 = slot8; if slot8 != nil goto 57
		 66	[  0]	GGET 	  4		14	; slot4 = _env["ipairs"]
		 67	[  0]	TDUP 	  6		10	; slot6 = copy table#k10
		 68	[  0]	CALL 	  4	4	2	; slot4, slot5, slot6 = ipairs(ipairs)
		 69	[  0]	JMP  	  7		67	; 	goto 137
		 70	[  0]	IST  	   		3	; if slot3
		 71	[  0]	JMP  	  9		3	; 	goto 75
		 72	[  0]	TGETS	  9	0	9	; slot9 = slot0.sym
		 73	[  0]	ISNEV	  9		8	; if <unknown table>.sym ~= slot8
		 74	[  0]	JMP  	  9		62	; 	goto 137
		 75	[  0]	UGET 	  9		0	; slot9 = uv0"unknwon"
		 76	[  0]	TGETS	  9	9	8	; slot9 = uv0"unknown".getById
		 77	[  0]	GGET 	 11		13	; slot11 = _env["tostring"]
		 78	[  0]	ADDNV	 13	7	0	; slot13 = 30 + slot7
		 79	[  0]	CALL 	 11	0	2	; MULTRES = tostring(<unknown table>.id)
		 80	[  0]	CALLM	  9	2	0	; slot9 = uv0"unknown".getById(, ...MULTRES)
		 81	[  0]	GGET 	 10		14	; slot10 = _env["ipairs"]
		 82	[  0]	MOV  	 12		1	; slot12 = slot1
		 83	[  0]	CALL 	 10	4	2	; slot10, slot11, slot12 = ipairs(tostring)
		 84	[  0]	JMP  	 13		50	; 	goto 135
		 85	[  0]	UGET 	 15		1	; slot15 = uv1"unknwon"
		 86	[  0]	MOV  	 17		14	; slot17 = slot14
		 87	[  0]	MOV  	 18		9	; slot18 = uv0"unknown".getById
		 88	[  0]	CALL 	 15	2	3	; slot15 = uv1"unknown"(slot16, slot17)
		 89	[  0]	ISF  	   		15	; if not uv1"unknown"
		 90	[  0]	JMP  	 16		44	; 	goto 135
		 91	[  0]	LEN  	 15		2	; slot15 = #slot2
		 92	[  0]	ADDVN	 15	15	1	; slot15 = slot15 + 1
		 93	[  0]	TDUP 	 16		5	; slot16 = copy table#k5
		 94	[  0]	TGETS	 17	9	7	; slot17 = uv0"unknown".getById.maxHpBonus
		 95	[  0]	ISF  	   		17	; if not uv0"unknown".getById.maxHpBonus
		 96	[  0]	JMP  	 18		8	; 	goto 105
		 97	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		 98	[  0]	TGETS	 17	17	6	; slot17 = uv0"unknown".levelValue
		 99	[  0]	MOV  	 19		14	; slot19 = slot14
		100	[  0]	KSTR 	 20		7	; slot20 = "maxHpBonus"
		101	[  0]	TGETS	 21	9	7	; slot21 = uv0"unknown".getById.maxHpBonus
		102	[  0]	CALL 	 17	2	4	; slot17 = uv0"unknown".levelValue(uv0"unknown".getById, slot19, slot20)
		103	[  0]	IST  	   		17	; if uv0"unknown".levelValue
		104	[  0]	JMP  	 18		1	; 	goto 106
		105	[  0]	KSHORT	 17		0	; slot17 = 0
		106	[  0]	TSETS	 17	16	4	; slot16.hp = slot17
		107	[  0]	TGETS	 17	9	3	; slot17 = uv0"unknown".getById.atkBonus
		108	[  0]	ISF  	   		17	; if not uv0"unknown".getById.atkBonus
		109	[  0]	JMP  	 18		8	; 	goto 118
		110	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		111	[  0]	TGETS	 17	17	6	; slot17 = uv0"unknown".levelValue
		112	[  0]	MOV  	 19		14	; slot19 = slot14
		113	[  0]	KSTR 	 20		3	; slot20 = "atkBonus"
		114	[  0]	TGETS	 21	9	3	; slot21 = uv0"unknown".getById.atkBonus
		115	[  0]	CALL 	 17	2	4	; slot17 = uv0"unknown".levelValue(uv0"unknown".getById, slot19, slot20)
		116	[  0]	IST  	   		17	; if uv0"unknown".levelValue
		117	[  0]	JMP  	 18		1	; 	goto 119
		118	[  0]	KSHORT	 17		0	; slot17 = 0
		119	[  0]	TSETS	 17	16	2	; slot16.atk = slot17
		120	[  0]	TGETS	 17	9	1	; slot17 = uv0"unknown".getById.aspdBonus
		121	[  0]	ISF  	   		17	; if not uv0"unknown".getById.aspdBonus
		122	[  0]	JMP  	 18		8	; 	goto 131
		123	[  0]	UGET 	 17		0	; slot17 = uv0"unknwon"
		124	[  0]	TGETS	 17	17	6	; slot17 = uv0"unknown".levelValue
		125	[  0]	MOV  	 19		14	; slot19 = slot14
		126	[  0]	KSTR 	 20		1	; slot20 = "aspdBonus"
		127	[  0]	TGETS	 21	9	1	; slot21 = uv0"unknown".getById.aspdBonus
		128	[  0]	CALL 	 17	2	4	; slot17 = uv0"unknown".levelValue(uv0"unknown".getById, slot19, slot20)
		129	[  0]	IST  	   		17	; if uv0"unknown".levelValue
		130	[  0]	JMP  	 18		1	; 	goto 132
		131	[  0]	KSHORT	 17		0	; slot17 = 0
		132	[  0]	TSETS	 17	16	0	; slot16.aspd = slot17
		133	[  0]	TSETV	 16	2	15	; slot2[slot15] = slot16
		134	[  0]	JMP  	 10		2	; 	goto 137
		135	[  0]	ITERC	 13	3	3	; slot13, slot14, slot15 = ipairs, tostring, slot12; slot13, slot14 = ipairs(tostring, slot12)
		136	[  0]	ITERL	 13		-52	; slot12 = slot13; if slot13 != nil goto 85
		137	[  0]	ITERC	  7	3	3	; slot7, slot8, slot9 = ipairs, ipairs, slot6; slot7, slot8 = ipairs(ipairs, slot6)
		138	[  0]	ITERL	  7		-69	; slot6 = slot7; if slot7 != nil goto 70
		139	[  0]	RET1 	  2		2	; return slot2
	801	[  0]	TSETV	 15	1	14	; slot1[slot14] = slot15
	802	[  0]	UCLO 	  0		0	; nil uvs >= r0; goto 803
	803	[  0]	RET1 	  1		2	; return slot1
	
