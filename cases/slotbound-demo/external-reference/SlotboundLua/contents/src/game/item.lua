local var_0_0 = require("src.data.assets")
local var_0_1 = {}
local var_0_2 = {
	C = {
		label = "COMMON",
		color = {
			1,
			1,
			1,
			1
		}
	},
	U = {
		label = "UNCOMMON",
		color = {
			0.55,
			0.9,
			0.55,
			1
		}
	},
	R = {
		label = "RARE",
		color = {
			0.55,
			0.65,
			0.95,
			1
		}
	},
	L = {
		label = "LEGEND",
		color = {
			0.95,
			0.65,
			0.25,
			1
		}
	}
}
local var_0_3 = {
	BATTLE = {
		en = "BATTLE",
		ko = "전투"
	},
	TRAINING = {
		en = "TRAINING",
		ko = "훈련"
	}
}
local var_0_4 = {}
local var_0_5 = {}
local var_0_6 = {
	{
		cooldownSec = 0,
		rarity = "C",
		type = "BATTLE",
		icon = "src/sprites/icons/relics icon/item icons/01 Sturdy Fist.png",
		iconW = 32,
		effect = "모든 아군의 기본 공격 피해가 5% 증가합니다. (Lv.1)",
		id = "01",
		iconH = 32,
		currency = "정수",
		price = 2,
		key = "SturdyFist",
		maxLevel = 3,
		name = "굳센 주먹 (Sturdy Fist)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		basicAttackDamageBonus = {
			0.05,
			0.08,
			0.12
		},
		getEffectDescription = function(arg_1_0, arg_1_1)
			arg_1_1 = arg_1_1 or 1

			local var_1_0 = arg_1_0.basicAttackDamageBonus or {
				0.05,
				0.08,
				0.12
			}
			local var_1_1 = var_1_0[math.max(1, math.min(arg_1_1, #var_1_0))] or var_1_0[#var_1_0] or 0

			return string.format("모든 아군의 기본 공격 피해가 %d%% 증가합니다. (Lv.%d)", math.floor(var_1_1 * 100 + 0.5), arg_1_1)
		end,
		updateEffectString = function(arg_2_0)
			arg_2_0.effect = arg_2_0:getEffectDescription(arg_2_0.level)
		end
	},
	{
		cooldownSec = 0,
		rarity = "C",
		type = "BATTLE",
		iconH = 32,
		icon = "src/sprites/icons/relics icon/item icons/02 Sturdy Shield.png",
		iconW = 32,
		effect = "모든 아군의 최대 {hp.png} +5%. (Lv.1)",
		id = "02",
		currency = "정수",
		price = 2,
		key = "SturdyShield",
		maxLevel = 3,
		name = "튼튼한 방패 (Sturdy Shield)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		maxHpBonus = {
			0.05,
			0.08,
			0.12
		},
		getEffectDescription = function(arg_3_0, arg_3_1)
			arg_3_1 = arg_3_1 or 1

			local var_3_0 = arg_3_0.maxHpBonus or {
				0.05,
				0.08,
				0.12
			}
			local var_3_1 = var_3_0[math.max(1, math.min(arg_3_1, #var_3_0))] or var_3_0[#var_3_0] or 0

			return string.format("모든 아군의 최대 {hp.png} +%d%%. (Lv.%d)", math.floor(var_3_1 * 100 + 0.5), arg_3_1)
		end,
		updateEffectString = function(arg_4_0)
			arg_4_0.effect = arg_4_0:getEffectDescription(arg_4_0.level)
		end
	},
	{
		cooldownSec = 0,
		rarity = "C",
		type = "BATTLE",
		iconH = 32,
		icon = "src/sprites/icons/relics icon/item icons/03 First Aid.png",
		iconW = 32,
		effect = "전투당 1회, {hp.png} 30% 이하 아군 1명을 최대 {hp.png} 10% 회복. (Lv.1)",
		id = "03",
		currency = "정수",
		price = 2,
		key = "FirstAid",
		maxLevel = 3,
		name = "응급 처치 (First Aid)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		healPct = {
			0.1,
			0.16,
			0.22
		},
		getEffectDescription = function(arg_5_0, arg_5_1)
			arg_5_1 = arg_5_1 or 1

			local var_5_0 = arg_5_0.healPct or {
				0.1,
				0.16,
				0.22
			}
			local var_5_1 = var_5_0[math.max(1, math.min(arg_5_1, #var_5_0))] or var_5_0[#var_5_0] or 0

			return string.format("전투당 1회, {hp.png} 30%% 이하 아군 1명을 최대 {hp.png} %d%% 회복. (Lv.%d)", math.floor(var_5_1 * 100 + 0.5), arg_5_1)
		end,
		updateEffectString = function(arg_6_0)
			arg_6_0.effect = arg_6_0:getEffectDescription(arg_6_0.level)
		end
	},
	{
		rarity = "C",
		cooldownSec = 0,
		type = "BATTLE",
		iconH = 32,
		icon = "src/sprites/icons/relics icon/item icons/04 Broken Shield.png",
		effect = "전투당 1회, 처음 공격받은 아군이 3초 동안 받는 피해 -10%. (Lv.1)",
		id = "04",
		iconW = 32,
		currency = "정수",
		price = 2,
		key = "BrokenShield",
		maxLevel = 3,
		name = "부서진 방패 (Broken Shield)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		damageReduction = {
			0.1,
			0.15,
			0.2
		},
		getEffectDescription = function(arg_7_0, arg_7_1)
			arg_7_1 = arg_7_1 or 1

			local var_7_0 = arg_7_0.damageReduction or {
				0.1,
				0.15,
				0.2
			}
			local var_7_1 = var_7_0[math.max(1, math.min(arg_7_1, #var_7_0))] or var_7_0[#var_7_0] or 0

			return string.format("전투당 1회, 처음 공격받은 아군이 3초 동안 받는 피해 -%d%%. (Lv.%d)", math.floor(var_7_1 * 100 + 0.5), arg_7_1)
		end,
		updateEffectString = function(arg_8_0)
			arg_8_0.effect = arg_8_0:getEffectDescription(arg_8_0.level)
		end
	},
	{
		cooldownSec = 0,
		rarity = "C",
		type = "BATTLE",
		iconH = 32,
		icon = "src/sprites/icons/relics icon/item icons/05 Hunter's Mark.png",
		iconW = 32,
		effect = "가장 체력이 높은 적 1명이 받는 피해 +8%. (Lv.1)",
		id = "05",
		currency = "정수",
		price = 2,
		key = "HuntersMark",
		maxLevel = 3,
		name = "사냥꾼의 표식 (Hunter's Mark)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		damageTakenBonus = {
			0.08,
			0.12,
			0.16
		},
		getEffectDescription = function(arg_9_0, arg_9_1)
			arg_9_1 = arg_9_1 or 1

			local var_9_0 = arg_9_0.damageTakenBonus or {
				0.08,
				0.12,
				0.16
			}
			local var_9_1 = var_9_0[math.max(1, math.min(arg_9_1, #var_9_0))] or var_9_0[#var_9_0] or 0

			return string.format("가장 체력이 높은 적 1명이 받는 피해 +%d%%. (Lv.%d)", math.floor(var_9_1 * 100 + 0.5), arg_9_1)
		end,
		updateEffectString = function(arg_10_0)
			arg_10_0.effect = arg_10_0:getEffectDescription(arg_10_0.level)
		end
	},
	{
		rarity = "C",
		cooldownSec = 0,
		type = "BATTLE",
		iconH = 32,
		icon = "src/sprites/icons/relics icon/item icons/06 Frontline Armor.png",
		effect = "가장 앞의 아군 1명이 받는 피해 -7%. (Lv.1)",
		id = "06",
		iconW = 32,
		currency = "정수",
		price = 2,
		key = "FrontlineArmor",
		maxLevel = 3,
		name = "전열 갑옷 (Frontline Armor)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		damageReduction = {
			0.07,
			0.1,
			0.13
		},
		getEffectDescription = function(arg_11_0, arg_11_1)
			arg_11_1 = arg_11_1 or 1

			local var_11_0 = arg_11_0.damageReduction or {
				0.07,
				0.1,
				0.13
			}
			local var_11_1 = var_11_0[math.max(1, math.min(arg_11_1, #var_11_0))] or var_11_0[#var_11_0] or 0

			return string.format("가장 앞의 아군 1명이 받는 피해 -%d%%. (Lv.%d)", math.floor(var_11_1 * 100 + 0.5), arg_11_1)
		end,
		updateEffectString = function(arg_12_0)
			arg_12_0.effect = arg_12_0:getEffectDescription(arg_12_0.level)
		end
	},
	{
		id = "07",
		rangeThreshold = 70,
		type = "BATTLE",
		iconH = 32,
		rarity = "C",
		effect = "원거리 아군이 원거리 적에게 받는 피해 -8%. (Lv.1)",
		cooldownSec = 0,
		iconW = 32,
		currency = "정수",
		price = 2,
		key = "DustCloak",
		icon = "src/sprites/icons/relics icon/item icons/07 Dust Cloak.png",
		maxLevel = 3,
		name = "먼지 망토 (Dust Cloak)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		damageReduction = {
			0.08,
			0.12,
			0.16
		},
		getEffectDescription = function(arg_13_0, arg_13_1)
			arg_13_1 = arg_13_1 or 1

			local var_13_0 = arg_13_0.damageReduction or {
				0.08,
				0.12,
				0.16
			}
			local var_13_1 = var_13_0[math.max(1, math.min(arg_13_1, #var_13_0))] or var_13_0[#var_13_0] or 0

			return string.format("원거리 아군이 원거리 적에게 받는 피해 -%d%%. (Lv.%d)", math.floor(var_13_1 * 100 + 0.5), arg_13_1)
		end,
		updateEffectString = function(arg_14_0)
			arg_14_0.effect = arg_14_0:getEffectDescription(arg_14_0.level)
		end
	},
	{
		cooldownSec = 0,
		name = "저주버섯 (Cursed Mushroom)",
		type = "BATTLE",
		iconH = 32,
		rarity = "C",
		iconW = 32,
		effect = "전투당 1회, 적이 6명 이상이면 모든 적에게 현재 체력의 5% 피해. (Lv.1)",
		id = "08",
		icon = "src/sprites/icons/relics icon/item icons/08 Cursed Mushroom.png",
		currency = "정수",
		price = 2,
		key = "CursedMushroom",
		maxLevel = 3,
		bossDamageMul = 0.3,
		triggerEnemyCount = 6,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		currentHpDamage = {
			0.05,
			0.07,
			0.09
		},
		getEffectDescription = function(arg_15_0, arg_15_1)
			arg_15_1 = arg_15_1 or 1

			local var_15_0 = arg_15_0.currentHpDamage or {
				0.05,
				0.07,
				0.09
			}
			local var_15_1 = var_15_0[math.max(1, math.min(arg_15_1, #var_15_0))] or var_15_0[#var_15_0] or 0

			return string.format("전투당 1회, 적이 6명 이상이면 모든 적에게 현재 체력의 %d%% 피해. (Lv.%d)", math.floor(var_15_1 * 100 + 0.5), arg_15_1)
		end,
		updateEffectString = function(arg_16_0)
			arg_16_0.effect = arg_16_0:getEffectDescription(arg_16_0.level)
		end
	},
	{
		triggerDistanceFraction = 0.22,
		cooldownSec = 0,
		type = "BATTLE",
		iconH = 32,
		rarity = "U",
		icon = "src/sprites/icons/relics icon/item icons/12 Gate Net.png",
		effect = "전투당 1회, 기지에 가까워진 적 1명을 1.5초 속박합니다. (Lv.1)",
		id = "12",
		iconW = 32,
		currency = "정수",
		price = 3,
		key = "GateNet",
		maxLevel = 3,
		name = "방범 그물 (Gate Net)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			3,
			4,
			5
		},
		bindTargets = {
			1,
			2,
			3
		},
		bindDuration = {
			1.5,
			1.8,
			2
		},
		getEffectDescription = function(arg_17_0, arg_17_1)
			arg_17_1 = math.max(1, math.min(tonumber(arg_17_1 or 1) or 1, 3))

			local var_17_0 = arg_17_0.bindTargets[arg_17_1] or arg_17_0.bindTargets[#arg_17_0.bindTargets] or 1
			local var_17_1 = arg_17_0.bindDuration or {
				1.5,
				1.8,
				2
			}
			local var_17_2 = type(var_17_1) == "table" and (var_17_1[arg_17_1] or var_17_1[#var_17_1]) or var_17_1
			local var_17_3

			var_17_3 = tonumber(var_17_2) or 1.5

			return string.format("전투당 1회, 기지에 가까워진 적 %d명을 %.1f초 속박합니다. (Lv.%d)", var_17_0, var_17_3, arg_17_1)
		end,
		updateEffectString = function(arg_18_0)
			arg_18_0.effect = arg_18_0:getEffectDescription(arg_18_0.level)
		end
	},
	{
		cooldownSec = 0,
		rarity = "U",
		type = "BATTLE",
		iconH = 32,
		icon = "src/sprites/icons/relics icon/item icons/14 Oath Helm.png",
		iconW = 32,
		effect = "전투당 1회, 죽을 피해를 받은 아군이 {hp.png} 1로 버티고 1.5초 동안 쓰러지지 않습니다. (Lv.1)",
		id = "14",
		currency = "정수",
		price = 3,
		key = "OathHelm",
		maxLevel = 3,
		name = "맹세의 투구 (Oath Helm)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			3,
			4,
			5
		},
		survivalDuration = {
			1.5,
			2,
			2.5
		},
		getEffectDescription = function(arg_19_0, arg_19_1)
			arg_19_1 = math.max(1, math.min(tonumber(arg_19_1 or 1) or 1, 3))

			local var_19_0 = arg_19_0.survivalDuration[arg_19_1] or arg_19_0.survivalDuration[#arg_19_0.survivalDuration] or 1.5

			return string.format("전투당 1회, 죽을 피해를 받은 아군이 {hp.png} 1로 버티고 %.1f초 동안 쓰러지지 않습니다. (Lv.%d)", var_19_0, arg_19_1)
		end,
		updateEffectString = function(arg_20_0)
			arg_20_0.effect = arg_20_0:getEffectDescription(arg_20_0.level)
		end
	},
	{
		cooldownSec = 0,
		type = "BATTLE",
		iconH = 32,
		rarity = "U",
		iconW = 32,
		effect = "아군이 5명 이상이면 모든 아군 {atk.png} +10%. (Lv.1)",
		id = "15",
		requiredAllies = 5,
		currency = "정수",
		price = 3,
		key = "BattleCryItem",
		icon = "src/sprites/icons/relics icon/item icons/15 Battle Cry.png",
		maxLevel = 3,
		name = "전투의 함성 (Battle Cry)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			3,
			4,
			5
		},
		atkBonus = {
			0.1,
			0.15,
			0.2
		},
		getEffectDescription = function(arg_21_0, arg_21_1)
			arg_21_1 = math.max(1, math.min(tonumber(arg_21_1 or 1) or 1, 3))

			local var_21_0 = math.floor((arg_21_0.atkBonus[arg_21_1] or 0) * 100 + 0.5)

			return string.format("아군이 5명 이상이면 모든 아군 {atk.png} +%d%%. (Lv.%d)", var_21_0, arg_21_1)
		end,
		updateEffectString = function(arg_22_0)
			arg_22_0.effect = arg_22_0:getEffectDescription(arg_22_0.level)
		end
	},
	{
		effect = "아군이 3명 이하이면 모든 아군 {atk.png} +12%, 받는 피해 -6%. (Lv.1)",
		cooldownSec = 0,
		type = "BATTLE",
		iconH = 32,
		rarity = "U",
		maxAllies = 3,
		id = "16",
		icon = "src/sprites/icons/relics icon/item icons/16 Solitary Oath.png",
		currency = "정수",
		price = 3,
		key = "SolitaryOath",
		iconW = 32,
		maxLevel = 3,
		name = "고독한 맹세 (Solitary Oath)",
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			3,
			4,
			5
		},
		atkBonus = {
			0.12,
			0.18,
			0.24
		},
		damageReduction = {
			0.06,
			0.09,
			0.12
		},
		getEffectDescription = function(arg_23_0, arg_23_1)
			arg_23_1 = math.max(1, math.min(tonumber(arg_23_1 or 1) or 1, 3))

			local var_23_0 = math.floor((arg_23_0.atkBonus[arg_23_1] or 0) * 100 + 0.5)
			local var_23_1 = math.floor((arg_23_0.damageReduction[arg_23_1] or 0) * 100 + 0.5)

			return string.format("아군이 3명 이하이면 모든 아군 {atk.png} +%d%%, 받는 피해 -%d%%. (Lv.%d)", var_23_0, var_23_1, arg_23_1)
		end,
		updateEffectString = function(arg_24_0)
			arg_24_0.effect = arg_24_0:getEffectDescription(arg_24_0.level)
		end
	},
	{
		engagementDamageReduction = 0.05,
		engagementDuration = 3,
		cooldownSec = 0,
		type = "TRAINING",
		iconH = 32,
		rarity = "C",
		icon = "src/sprites/icons/relics icon/item icons/31 Warrior Manual.png",
		effect = "전사 계열 최대 {hp.png} +6%. (Lv.1)",
		id = "31",
		iconW = 32,
		currency = "정수",
		price = 3,
		key = "WarriorTraining",
		maxLevel = 3,
		name = "전사 훈련서 (Warrior Manual)",
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		maxHpBonus = {
			0.06,
			0.12,
			0.18
		},
		getEffectDescription = function(arg_25_0, arg_25_1)
			arg_25_1 = math.max(1, math.min(tonumber(arg_25_1 or 1) or 1, 3))

			local var_25_0 = math.floor((arg_25_0.maxHpBonus[arg_25_1] or 0) * 100 + 0.5)
			local var_25_1 = arg_25_1 >= 3 and " 첫 교전 후 3초간 받는 피해 -5%." or ""

			return string.format("전사 계열 최대 {hp.png} +%d%%.%s (Lv.%d)", var_25_0, var_25_1, arg_25_1)
		end,
		updateEffectString = function(arg_26_0)
			arg_26_0.effect = arg_26_0:getEffectDescription(arg_26_0.level)
		end
	},
	{
		rarity = "C",
		cooldownSec = 0,
		type = "TRAINING",
		openingAspdBonus = 0.1,
		openingAttackCount = 3,
		effect = "궁수 계열 {aspd.png} +5%. (Lv.1)",
		id = "32",
		icon = "src/sprites/icons/relics icon/item icons/32 Archer Manual.png",
		currency = "정수",
		price = 3,
		key = "ArcherTraining",
		iconW = 32,
		iconH = 32,
		maxLevel = 3,
		name = "궁수 훈련서 (Archer Manual)",
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		aspdBonus = {
			0.05,
			0.1,
			0.15
		},
		getEffectDescription = function(arg_27_0, arg_27_1)
			arg_27_1 = math.max(1, math.min(tonumber(arg_27_1 or 1) or 1, 3))

			local var_27_0 = math.floor((arg_27_0.aspdBonus[arg_27_1] or 0) * 100 + 0.5)
			local var_27_1 = arg_27_1 >= 3 and " 첫 3회 기본 공격은 추가로 10% 빠릅니다." or ""

			return string.format("궁수 계열 {aspd.png} +%d%%.%s (Lv.%d)", var_27_0, var_27_1, arg_27_1)
		end,
		updateEffectString = function(arg_28_0)
			arg_28_0.effect = arg_28_0:getEffectDescription(arg_28_0.level)
		end
	},
	{
		firstAttackSlowDuration = 1.5,
		type = "TRAINING",
		firstAttackMoveSlow = 0.2,
		iconH = 32,
		rarity = "C",
		cooldownSec = 0,
		effect = "창병 계열 {atk.png} +6%. (Lv.1)",
		id = "33",
		icon = "src/sprites/icons/relics icon/item icons/33 Spearman Manual.png",
		currency = "정수",
		price = 3,
		key = "SpearmanTraining",
		iconW = 32,
		maxLevel = 3,
		name = "창병 훈련서 (Spearman Manual)",
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		atkBonus = {
			0.06,
			0.12,
			0.18
		},
		getEffectDescription = function(arg_29_0, arg_29_1)
			arg_29_1 = math.max(1, math.min(tonumber(arg_29_1 or 1) or 1, 3))

			local var_29_0 = math.floor((arg_29_0.atkBonus[arg_29_1] or 0) * 100 + 0.5)
			local var_29_1 = arg_29_1 >= 3 and " 첫 공격 적중 시 이동속도 -20% (1.5초)." or ""

			return string.format("창병 계열 {atk.png} +%d%%.%s (Lv.%d)", var_29_0, var_29_1, arg_29_1)
		end,
		updateEffectString = function(arg_30_0)
			arg_30_0.effect = arg_30_0:getEffectDescription(arg_30_0.level)
		end
	},
	{
		id = "34",
		type = "TRAINING",
		rarity = "C",
		icon = "src/sprites/icons/relics icon/item icons/34 Mage Manual.png",
		effect = "마법사 계열 {atk.png} +5%, {aspd.png} +4%. (Lv.1)",
		cooldownSec = 0,
		iconW = 32,
		currency = "정수",
		price = 3,
		key = "MageTraining",
		iconH = 32,
		maxLevel = 3,
		name = "마법사 훈련서 (Mage Manual)",
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		atkBonus = {
			0.05,
			0.1,
			0.15
		},
		aspdBonus = {
			0.04,
			0.08,
			0.12
		},
		getEffectDescription = function(arg_31_0, arg_31_1)
			arg_31_1 = math.max(1, math.min(tonumber(arg_31_1 or 1) or 1, 3))

			return string.format("마법사 계열 {atk.png} +%d%%, {aspd.png} +%d%%. (Lv.%d)", math.floor((arg_31_0.atkBonus[arg_31_1] or 0) * 100 + 0.5), math.floor((arg_31_0.aspdBonus[arg_31_1] or 0) * 100 + 0.5), arg_31_1)
		end,
		updateEffectString = function(arg_32_0)
			arg_32_0.effect = arg_32_0:getEffectDescription(arg_32_0.level)
		end
	},
	{
		id = "35",
		cooldownSec = 0,
		type = "TRAINING",
		iconH = 32,
		rarity = "C",
		iconW = 32,
		effect = "기병 계열 최대 {hp.png}와 {atk.png} +4%. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/35 Cavalry Manual.png",
		currency = "정수",
		price = 3,
		key = "CavalryTraining",
		maxLevel = 3,
		name = "기병 훈련서 (Cavalry Manual)",
		firstAttackDamageBonus = 0.1,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		maxHpBonus = {
			0.04,
			0.08,
			0.12
		},
		atkBonus = {
			0.04,
			0.08,
			0.12
		},
		getEffectDescription = function(arg_33_0, arg_33_1)
			arg_33_1 = math.max(1, math.min(tonumber(arg_33_1 or 1) or 1, 3))

			local var_33_0 = math.floor((arg_33_0.atkBonus[arg_33_1] or 0) * 100 + 0.5)
			local var_33_1 = arg_33_1 >= 3 and " 첫 공격 피해 +10%." or ""

			return string.format("기병 계열 최대 {hp.png}와 {atk.png} +%d%%.%s (Lv.%d)", var_33_0, var_33_1, arg_33_1)
		end,
		updateEffectString = function(arg_34_0)
			arg_34_0.effect = arg_34_0:getEffectDescription(arg_34_0.level)
		end
	},
	{
		cooldownSec = 0,
		type = "TRAINING",
		iconH = 32,
		rarity = "C",
		iconW = 32,
		effect = "결투사 계열 {atk.png} +6%. (Lv.1)",
		id = "36",
		icon = "src/sprites/icons/relics icon/item icons/36 Duelist Manual.png",
		currency = "정수",
		price = 3,
		key = "DuelistTraining",
		maxLevel = 3,
		name = "결투사 훈련서 (Duelist Manual)",
		consecutiveBonusDamage = 0.4,
		consecutiveAttackCount = 3,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		atkBonus = {
			0.06,
			0.12,
			0.18
		},
		getEffectDescription = function(arg_35_0, arg_35_1)
			arg_35_1 = math.max(1, math.min(tonumber(arg_35_1 or 1) or 1, 3))

			local var_35_0 = math.floor((arg_35_0.atkBonus[arg_35_1] or 0) * 100 + 0.5)
			local var_35_1 = arg_35_1 >= 3 and " 같은 대상을 3회 연속 공격하면 3번째 공격에 {atk.png} 40% 추가 피해." or ""

			return string.format("결투사 계열 {atk.png} +%d%%.%s (Lv.%d)", var_35_0, var_35_1, arg_35_1)
		end,
		updateEffectString = function(arg_36_0)
			arg_36_0.effect = arg_36_0:getEffectDescription(arg_36_0.level)
		end
	},
	{
		id = "37",
		engagementDuration = 6,
		type = "TRAINING",
		iconH = 32,
		rarity = "U",
		effect = "전사 계열이 첫 교전 후 6초 동안 받는 피해가 10% 감소합니다. (Lv.1)",
		cooldownSec = 0,
		iconW = 32,
		currency = "정수",
		price = 4,
		key = "ShieldManual",
		icon = "src/sprites/icons/relics icon/item icons/37 Shield Manual.png",
		maxLevel = 2,
		name = "방패술 교본 (Shield Manual)",
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			4,
			6
		},
		damageReduction = {
			0.1,
			0.18
		},
		getEffectDescription = function(arg_37_0, arg_37_1)
			arg_37_1 = math.max(1, math.min(tonumber(arg_37_1 or 1) or 1, 2))

			local var_37_0 = math.floor((arg_37_0.damageReduction[arg_37_1] or 0) * 100 + 0.5)

			return string.format("전사 계열이 첫 교전 후 6초 동안 받는 피해가 %d%% 감소합니다. (Lv.%d)", var_37_0, arg_37_1)
		end,
		updateEffectString = function(arg_38_0)
			arg_38_0.effect = arg_38_0:getEffectDescription(arg_38_0.level)
		end
	},
	{
		cooldownSec = 0,
		maxLevel = 2,
		type = "TRAINING",
		iconH = 32,
		rarity = "U",
		iconW = 32,
		effect = "궁수 계열이 기본 공격 5회마다 추가로 {atk.png} 45% 피해를 줍니다. (Lv.1)",
		id = "38",
		icon = "src/sprites/icons/relics icon/item icons/38 Volley Manual.png",
		currency = "정수",
		price = 4,
		key = "VolleyManual",
		attackCount = 5,
		name = "연사 교본 (Volley Manual)",
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			4,
			6
		},
		bonusDamage = {
			0.45,
			0.75
		},
		getEffectDescription = function(arg_39_0, arg_39_1)
			arg_39_1 = math.max(1, math.min(tonumber(arg_39_1 or 1) or 1, 2))

			local var_39_0 = math.floor((arg_39_0.bonusDamage[arg_39_1] or 0) * 100 + 0.5)

			return string.format("궁수 계열이 기본 공격 5회마다 추가로 {atk.png} %d%% 피해를 줍니다. (Lv.%d)", var_39_0, arg_39_1)
		end,
		updateEffectString = function(arg_40_0)
			arg_40_0.effect = arg_40_0:getEffectDescription(arg_40_0.level)
		end
	}
}
local var_0_7 = {
	{
		min = 1,
		max = 4,
		w = {
			C = 92,
			R = 0,
			L = 0,
			U = 8
		}
	},
	{
		min = 5,
		max = 9,
		w = {
			C = 85,
			R = 0,
			L = 0,
			U = 15
		}
	},
	{
		min = 10,
		max = 14,
		w = {
			C = 78,
			R = 2,
			L = 0,
			U = 20
		}
	},
	{
		min = 15,
		max = 19,
		w = {
			C = 68,
			R = 4,
			L = 0,
			U = 28
		}
	},
	{
		min = 20,
		max = 9999,
		w = {
			C = 58,
			R = 7,
			L = 0,
			U = 35
		}
	}
}

local function var_0_8(arg_41_0)
	arg_41_0 = tonumber(arg_41_0 or 1) or 1

	for iter_41_0, iter_41_1 in ipairs(var_0_7) do
		if arg_41_0 >= iter_41_1.min and arg_41_0 <= iter_41_1.max then
			return iter_41_1.w
		end
	end

	return var_0_7[#var_0_7].w
end

local function var_0_9(arg_42_0, arg_42_1)
	if not arg_42_0 or not arg_42_1 then
		return false
	end

	if arg_42_0.id ~= nil and arg_42_1.id ~= nil then
		if tostring(arg_42_0.id) == tostring(arg_42_1.id) then
			return true
		end

		local var_42_0 = tonumber(arg_42_0.id)
		local var_42_1 = tonumber(arg_42_1.id)

		if var_42_0 and var_42_1 and var_42_0 == var_42_1 then
			return true
		end
	end

	return arg_42_0.key ~= nil and arg_42_1.key ~= nil and tostring(arg_42_0.key) == tostring(arg_42_1.key)
end

function var_0_1.isMaxed(arg_43_0, arg_43_1)
	if not arg_43_1 then
		return false
	end

	local var_43_0 = type(arg_43_0) == "table" and arg_43_0 or var_0_1.getById(arg_43_0)

	if not var_43_0 then
		return false
	end

	local var_43_1 = math.max(1, math.floor(tonumber(var_43_0.maxLevel) or 1))

	for iter_43_0, iter_43_1 in ipairs(arg_43_1) do
		if var_0_9(iter_43_1, var_43_0) then
			return var_43_1 <= math.max(1, math.floor(tonumber(iter_43_1.level) or 1))
		end
	end

	return false
end

function var_0_1.offer(arg_44_0, arg_44_1, arg_44_2, arg_44_3)
	arg_44_0 = math.max(1, math.floor(tonumber(arg_44_0 or 3) or 3))

	local var_44_0 = var_0_8(arg_44_1)
	local var_44_1 = {
		"BATTLE",
		nil,
		"TRAINING"
	}
	local var_44_2 = var_0_1.getById(arg_44_3)
	local var_44_3

	if var_44_2 then
		var_44_3 = var_44_2.type == "TRAINING" and 3 or 1

		if arg_44_0 < var_44_3 then
			var_44_3 = math.min(2, arg_44_0)
		end
	end

	local function var_44_4()
		local var_45_0 = var_44_0.C + var_44_0.U + var_44_0.R + var_44_0.L

		if var_45_0 <= 0 then
			return "C"
		end

		local var_45_1 = love.math.random() * var_45_0

		local function var_45_2(arg_46_0)
			local var_46_0 = var_44_0[arg_46_0]

			if var_46_0 > var_45_1 then
				return true
			end

			var_45_1 = var_45_1 - var_46_0

			return false
		end

		if var_45_2("C") then
			return "C"
		end

		if var_45_2("U") then
			return "U"
		end

		if var_45_2("R") then
			return "R"
		end

		return "L"
	end

	if var_44_2 and var_0_1.isMaxed(var_44_2, arg_44_2) then
		var_44_2 = nil
		var_44_3 = nil
	end

	local var_44_5 = {}
	local var_44_6 = {}

	if var_44_2 then
		var_44_6[var_44_2.id] = true
	end

	for iter_44_0 = 1, arg_44_0 do
		if var_44_2 and iter_44_0 == var_44_3 then
			var_44_5[iter_44_0] = var_44_2
		else
			local var_44_7 = var_44_1[iter_44_0]
			local var_44_8 = {
				C = {},
				U = {},
				R = {},
				L = {}
			}

			for iter_44_1, iter_44_2 in ipairs(var_0_6) do
				if (not var_44_7 or iter_44_2.type == var_44_7) and not var_44_6[iter_44_2.id] and not var_0_1.isMaxed(iter_44_2, arg_44_2) and var_44_8[iter_44_2.rarity] then
					table.insert(var_44_8[iter_44_2.rarity], iter_44_2)
				end
			end

			local var_44_9 = var_44_8[var_44_4()]

			if not var_44_9 or #var_44_9 == 0 then
				for iter_44_3, iter_44_4 in ipairs({
					"C",
					"U",
					"R",
					"L"
				}) do
					if #var_44_8[iter_44_4] > 0 then
						var_44_9 = var_44_8[iter_44_4]

						break
					end
				end
			end

			if var_44_9 and #var_44_9 > 0 then
				local var_44_10 = var_44_9[love.math.random(1, #var_44_9)]

				var_44_5[iter_44_0] = var_44_10
				var_44_6[var_44_10.id] = true
			end
		end
	end

	return var_44_5
end

function var_0_1.getAll()
	return var_0_6
end

function var_0_1.getById(arg_48_0)
	if not arg_48_0 then
		return nil
	end

	for iter_48_0, iter_48_1 in ipairs(var_0_6) do
		if iter_48_1.id == arg_48_0 or iter_48_1.key == arg_48_0 then
			return iter_48_1
		end
	end

	return nil
end

function var_0_1.getIcon(arg_49_0)
	if not arg_49_0 or not arg_49_0.icon then
		return nil
	end

	local var_49_0 = var_0_4[arg_49_0.icon]

	if var_49_0 then
		return var_49_0
	end

	if not love.filesystem.getInfo(arg_49_0.icon) then
		return nil
	end

	local var_49_1 = love.graphics.newImage(arg_49_0.icon)

	var_49_1:setFilter("nearest", "nearest")

	var_0_4[arg_49_0.icon] = var_49_1

	return var_49_1
end

function var_0_1.getIconData(arg_50_0)
	if not arg_50_0 or not arg_50_0.icon then
		return nil
	end

	local var_50_0 = var_0_5[arg_50_0.icon]

	if var_50_0 then
		return var_50_0
	end

	if not love.filesystem.getInfo(arg_50_0.icon) then
		return nil
	end

	local var_50_1, var_50_2 = pcall(love.image.newImageData, arg_50_0.icon)

	if not var_50_1 then
		return nil
	end

	var_0_5[arg_50_0.icon] = var_50_2

	return var_50_2
end

function var_0_1.getRarity(arg_51_0)
	local var_51_0 = arg_51_0 and arg_51_0.rarity and var_0_2[arg_51_0.rarity]

	if var_51_0 then
		return var_51_0.label, var_51_0.color
	end

	return arg_51_0 and (arg_51_0.rarity or ""), {
		1,
		1,
		1,
		1
	}
end

function var_0_1.getType(arg_52_0)
	if not arg_52_0 then
		return var_0_3.BATTLE.ko, var_0_3.BATTLE.en
	end

	local var_52_0 = var_0_3[arg_52_0.type or "BATTLE"] or var_0_3.BATTLE

	return var_52_0.ko, var_52_0.en
end

function var_0_1.activate(arg_53_0, arg_53_1, arg_53_2)
	if not arg_53_0 or type(arg_53_0.apply) ~= "function" then
		return
	end

	return arg_53_0:apply(arg_53_1, arg_53_2)
end

return var_0_1
