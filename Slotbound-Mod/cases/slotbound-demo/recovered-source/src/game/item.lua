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
		stage = "all",
		price = 2,
		rarity = "C",
		effect = "모든 아군의 기본 공격 피해가 8% 증가합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/01 Sturdy Fist.png",
		iconW = 32,
		iconH = 32,
		name = "굳센 주먹 (Sturdy Fist)",
		key = "SturdyFist",
		id = "01",
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"기본 공격",
			"범용 보강"
		},
		basicAttackDamageBonus = {
			0.08,
			0.12,
			0.16
		},
		gearLevel = {
			basicAttackDamageBonus = 0.2
		},
		getEffectDescription = function(arg_1_0, arg_1_1)
			arg_1_1 = arg_1_1 or 1

			local var_1_0 = arg_1_0.basicAttackDamageBonus or {
				0.08,
				0.12,
				0.16
			}
			local var_1_1 = var_1_0[math.max(1, math.min(arg_1_1, #var_1_0))] or var_1_0[#var_1_0] or 0

			return string.format("모든 아군의 기본 공격 피해가 %d%% 증가합니다. (Lv.%d)", math.floor(var_1_1 * 100 + 0.5), arg_1_1)
		end,
		updateEffectString = function(arg_2_0)
			arg_2_0.effect = arg_2_0:getEffectDescription(arg_2_0.level)
		end
	},
	{
		stage = "all",
		price = 2,
		rarity = "C",
		icon = "src/sprites/icons/relics icon/item icons/02 Sturdy Shield.png",
		shieldDuration = 5,
		effect = "전투 시작 시 모든 아군이 최대 체력의 12% 보호막을 얻습니다. 보호막은 처음 피해를 받은 뒤 5초간 유지됩니다. (Lv.1)",
		name = "튼튼한 방패 (Sturdy Shield)",
		iconW = 32,
		key = "SturdyShield",
		id = "02",
		iconH = 32,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"보호막",
			"첫 교전",
			"생존"
		},
		shieldMaxHpRatio = {
			0.12,
			0.18,
			0.24
		},
		gearLevel = {
			shieldMaxHpRatio = 0.3
		},
		getEffectDescription = function(arg_3_0, arg_3_1)
			arg_3_1 = arg_3_1 or 1

			local var_3_0 = arg_3_0.shieldMaxHpRatio or {
				0.12,
				0.18,
				0.24
			}
			local var_3_1 = var_3_0[math.max(1, math.min(arg_3_1, #var_3_0))] or var_3_0[#var_3_0] or 0

			return string.format("전투 시작 시 모든 아군이 최대 체력의 %d%% 보호막을 얻습니다. 보호막은 처음 피해를 받은 뒤 5초간 유지됩니다. (Lv.%d)", math.floor(var_3_1 * 100 + 0.5), arg_3_1)
		end,
		updateEffectString = function(arg_4_0)
			arg_4_0.effect = arg_4_0:getEffectDescription(arg_4_0.level)
		end
	},
	{
		stage = "all",
		price = 2,
		rarity = "C",
		effect = "전투당 1회, 처음 {hp.png} 30% 이하가 된 아군을 최대 {hp.png}의 20%만큼 즉시 회복시킵니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/03 First Aid.png",
		cooldownSec = 0,
		iconW = 32,
		name = "응급 처치 (First Aid)",
		iconH = 32,
		key = "FirstAid",
		id = "03",
		type = "BATTLE",
		maxLevel = 3,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"긴급 회복",
			"핵심 유닛 보호"
		},
		healPct = {
			0.2,
			0.28,
			0.36
		},
		gearLevel = {
			healPct = 0.44
		},
		getEffectDescription = function(arg_5_0, arg_5_1)
			arg_5_1 = arg_5_1 or 1

			local var_5_0 = arg_5_0.healPct or {
				0.2,
				0.28,
				0.36
			}
			local var_5_1 = var_5_0[math.max(1, math.min(arg_5_1, #var_5_0))] or var_5_0[#var_5_0] or 0

			return string.format("전투당 1회, 처음 {hp.png} 30%% 이하가 된 아군을 최대 {hp.png}의 %d%%만큼 즉시 회복시킵니다. (Lv.%d)", math.floor(var_5_1 * 100 + 0.5), arg_5_1)
		end,
		updateEffectString = function(arg_6_0)
			arg_6_0.effect = arg_6_0:getEffectDescription(arg_6_0.level)
		end
	},
	{
		stage = "all",
		price = 2,
		rarity = "C",
		icon = "src/sprites/icons/relics icon/item icons/04 Broken Shield.png",
		shieldDuration = 4,
		name = "부서진 방패 (Broken Shield)",
		effect = "아군의 보호막이 깨지면, 체력이 가장 낮은 다른 아군 1명이 최대 {hp.png}의 6% 보호막을 얻습니다. (Lv.1)",
		key = "BrokenShield",
		id = "04",
		iconW = 32,
		triggerCooldown = 3,
		iconH = 32,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"보호막 전달",
			"전열·후열 연계"
		},
		shieldMaxHpRatio = {
			0.06,
			0.09,
			0.12
		},
		gearLevel = {
			shieldMaxHpRatio = 0.15
		},
		getEffectDescription = function(arg_7_0, arg_7_1)
			arg_7_1 = arg_7_1 or 1

			local var_7_0 = arg_7_0.shieldMaxHpRatio or {
				0.06,
				0.09,
				0.12
			}
			local var_7_1 = var_7_0[math.max(1, math.min(arg_7_1, #var_7_0))] or var_7_0[#var_7_0] or 0

			return string.format("아군의 보호막이 깨지면, 체력이 가장 낮은 다른 아군 1명이 최대 {hp.png}의 %d%% 보호막을 얻습니다. (Lv.%d)", math.floor(var_7_1 * 100 + 0.5), arg_7_1)
		end,
		updateEffectString = function(arg_8_0)
			arg_8_0.effect = arg_8_0:getEffectDescription(arg_8_0.level)
		end
	},
	{
		stage = "all",
		price = 2,
		rarity = "C",
		effect = "날아가는 원거리 기본 공격의 대상이 먼저 죽으면, 다른 적을 추적해 20% 추가 피해를 줍니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/05 Hunter’s Lens.png",
		retargetRadius = 90,
		panelActivationFeedback = false,
		name = "사냥꾼의 렌즈 (Hunter’s Lens)",
		key = "HuntersLens",
		id = "05",
		iconW = 32,
		iconH = 32,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"원거리",
			"헛공격 방지",
			"처치 연계"
		},
		retargetDamageBonus = {
			0.2,
			0.35,
			0.5
		},
		gearLevel = {
			retargetDamageBonus = 0.65
		},
		getEffectDescription = function(arg_9_0, arg_9_1)
			arg_9_1 = arg_9_1 or 1

			local var_9_0 = arg_9_0.retargetDamageBonus or {
				0.2,
				0.35,
				0.5
			}
			local var_9_1 = var_9_0[math.max(1, math.min(arg_9_1, #var_9_0))] or var_9_0[#var_9_0] or 0

			return string.format("날아가는 원거리 기본 공격의 대상이 먼저 죽으면, 다른 적을 추적해 %d%% 추가 피해를 줍니다. (Lv.%d)", math.floor(var_9_1 * 100 + 0.5), arg_9_1)
		end,
		updateEffectString = function(arg_10_0)
			arg_10_0.effect = arg_10_0:getEffectDescription(arg_10_0.level)
		end
	},
	{
		stage = "all",
		price = 2,
		rarity = "C",
		effect = "가장 앞에 배치한 아군 1명이 받는 피해 -10%. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/06 Frontline Armor.png",
		iconW = 32,
		iconH = 32,
		name = "전열 갑옷 (Frontline Armor)",
		key = "FrontlineArmor",
		id = "06",
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"전열",
			"큰 피해 방어"
		},
		damageReduction = {
			0.1,
			0.15,
			0.2
		},
		gearLevel = {
			damageReduction = 0.25
		},
		getEffectDescription = function(arg_11_0, arg_11_1)
			arg_11_1 = arg_11_1 or 1

			local var_11_0 = arg_11_0.damageReduction or {
				0.1,
				0.15,
				0.2
			}
			local var_11_1 = var_11_0[math.max(1, math.min(arg_11_1, #var_11_0))] or var_11_0[#var_11_0] or 0

			return string.format("가장 앞에 배치한 아군 1명이 받는 피해 -%d%%. (Lv.%d)", math.floor(var_11_1 * 100 + 0.5), arg_11_1)
		end,
		updateEffectString = function(arg_12_0)
			arg_12_0.effect = arg_12_0:getEffectDescription(arg_12_0.level)
		end
	},
	{
		effect = "원거리 아군이 원거리 적에게 받는 피해 -8%. (Lv.1)",
		price = 2,
		rarity = "C",
		iconW = 32,
		icon = "src/sprites/icons/relics icon/item icons/07 Dust Cloak.png",
		iconH = 32,
		name = "먼지 망토 (Dust Cloak)",
		key = "DustCloak",
		id = "07",
		rangeThreshold = 70,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = false,
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
		gearLevel = {
			damageReduction = 0.2
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
		stage = "all",
		price = 2,
		rarity = "C",
		transferRadius = 70,
		effect = "독, 출혈, 화상에 걸린 적이 죽으면 남은 지속 피해의 60%가 가까운 다른 적 1명에게 옮겨갑니다.",
		name = "저주버섯 (Cursed Mushroom)",
		icon = "src/sprites/icons/relics icon/item icons/08 Cursed Mushroom.png",
		key = "CursedMushroom",
		id = "08",
		iconW = 32,
		iconH = 32,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = false,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"지속 피해",
			"확산",
			"물량 처리"
		},
		transferRatio = {
			0.6,
			0.8,
			1
		},
		gearLevel = {
			transferRatio = 1.2
		},
		effectTermColors = {
			ko = {
				독 = {
					0.42,
					0.88,
					0.43
				},
				출혈 = {
					1,
					0.38,
					0.38
				},
				화상 = {
					1,
					0.62,
					0.24
				}
			},
			en = {
				poison = {
					0.42,
					0.88,
					0.43
				},
				bleed = {
					1,
					0.38,
					0.38
				},
				burn = {
					1,
					0.62,
					0.24
				}
			},
			ja = {
				毒 = {
					0.42,
					0.88,
					0.43
				},
				出血 = {
					1,
					0.38,
					0.38
				},
				炎上 = {
					1,
					0.62,
					0.24
				}
			},
			zh = {
				中毒 = {
					0.42,
					0.88,
					0.43
				},
				流血 = {
					1,
					0.38,
					0.38
				},
				灼烧 = {
					1,
					0.62,
					0.24
				}
			}
		},
		getEffectDescription = function(arg_15_0, arg_15_1)
			arg_15_1 = math.max(1, math.min(3, math.floor(tonumber(arg_15_1) or 1)))

			local var_15_0 = (arg_15_0.transferRatio or {
				0.6,
				0.8,
				1
			})[arg_15_1]

			return string.format("독, 출혈, 화상에 걸린 적이 죽으면 남은 지속 피해의 %d%%가 가까운 다른 적 1명에게 옮겨갑니다.", math.floor(var_15_0 * 100 + 0.5))
		end,
		updateEffectString = function(arg_16_0)
			arg_16_0.effect = arg_16_0:getEffectDescription(arg_16_0.level)
		end
	},
	{
		stage = "all",
		price = 2,
		rarity = "C",
		effect = "첫 적을 처치하면 북이 울립니다. 모든 아군의 다음 기본 공격 피해가 25% 증가합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/09 Vanguard Drum.png",
		iconW = 32,
		name = "진격의 북 (Vanguard Drum)",
		iconH = 32,
		key = "VanguardDrum",
		id = "09",
		buffDuration = 5,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"첫 처치",
			"부대 공격 신호"
		},
		basicAttackBonus = {
			0.25,
			0.4,
			0.55
		},
		gearLevel = {
			basicAttackBonus = 0.7
		},
		getEffectDescription = function(arg_17_0, arg_17_1)
			arg_17_1 = math.max(1, math.min(3, math.floor(tonumber(arg_17_1) or 1)))

			local var_17_0 = arg_17_0.basicAttackBonus or {
				0.25,
				0.4,
				0.55
			}

			return string.format("첫 적을 처치하면 북이 울립니다. 모든 아군의 다음 기본 공격 피해가 %d%% 증가합니다. (Lv.%d)", math.floor(var_17_0[arg_17_1] * 100 + 0.5), arg_17_1)
		end,
		updateEffectString = function(arg_18_0)
			arg_18_0.effect = arg_18_0:getEffectDescription(arg_18_0.level)
		end
	},
	{
		stage = "all",
		price = 2,
		rarity = "C",
		icon = "src/sprites/icons/relics icon/item icons/10 Ankle Trap.png",
		effect = "이동 중인 적을 처음 기본 공격하면 0.8초간 속박합니다. (Lv.1)",
		iconW = 32,
		name = "발목 덫 (Ankle Trap)",
		iconH = 32,
		key = "AnkleTrap",
		id = "10",
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"돌파 차단",
			"원거리",
			"속박"
		},
		bindDuration = {
			0.8,
			1.2,
			1.6
		},
		gearLevel = {
			bindDuration = 2
		},
		getEffectDescription = function(arg_19_0, arg_19_1)
			arg_19_1 = math.max(1, math.min(math.floor(tonumber(arg_19_1) or 1), 3))

			return string.format("이동 중인 적을 처음 기본 공격하면 %.1f초간 속박합니다. (Lv.%d)", (arg_19_0.bindDuration or {
				0.8,
				1.2,
				1.6
			})[arg_19_1], arg_19_1)
		end,
		updateEffectString = function(arg_20_0)
			arg_20_0.effect = arg_20_0:getEffectDescription(arg_20_0.level)
		end
	},
	{
		stage = 2,
		price = 4,
		bindDuration = 2,
		rarity = "U",
		icon = "src/sprites/icons/relics icon/item icons/12 Gate Net.png",
		effect = "기지에 가까워진 적 2명을 2초 동안 붙잡습니다. 전투당 두 번 발동합니다. (Lv.1)",
		name = "방범 그물 (Gate Net)",
		maxActivations = 2,
		key = "GateNet",
		id = "12",
		iconW = 32,
		triggerCooldown = 6,
		iconH = 32,
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		triggerDistanceFraction = 0.15,
		currency = "정수",
		bossBindDuration = 1,
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"기지 방어",
			"돌파 차단"
		},
		bindTargets = {
			2,
			3
		},
		gearLevel = {
			bindTargets = 4
		},
		getEffectDescription = function(arg_21_0, arg_21_1)
			arg_21_1 = math.max(1, math.min(2, math.floor(tonumber(arg_21_1) or 1)))

			return string.format("기지에 가까워진 적 %d명을 2초 동안 붙잡습니다. 전투당 두 번 발동합니다. (Lv.%d)", arg_21_0.bindTargets[arg_21_1], arg_21_1)
		end,
		updateEffectString = function(arg_22_0)
			arg_22_0.effect = arg_22_0:getEffectDescription(arg_22_0.level)
		end
	},
	{
		stage = "all",
		price = 4,
		rarity = "U",
		effect = "처음 쓰러지는 아군은 1.5초간 석상이 되어 살아남고, 이후 최대 {hp.png}의 15%를 회복합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/14 Oath Helm.png",
		iconW = 32,
		name = "맹세의 투구 (Oath Helm)",
		iconH = 32,
		key = "OathHelm",
		id = "14",
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"치명 피해 방어",
			"회복 연계"
		},
		survivalDuration = {
			1.5,
			2
		},
		healPct = {
			0.15,
			0.22
		},
		gearLevel = {
			survivalDuration = 2.5,
			healPct = 0.29
		},
		getEffectDescription = function(arg_23_0, arg_23_1)
			arg_23_1 = math.max(1, math.min(math.floor(tonumber(arg_23_1) or 1), 2))

			return string.format("처음 쓰러지는 아군은 %g초간 석상이 되어 살아남고, 이후 최대 {hp.png}의 %d%%를 회복합니다. (Lv.%d)", (arg_23_0.survivalDuration or {
				1.5,
				2
			})[arg_23_1], math.floor((arg_23_0.healPct or {
				0.15,
				0.22
			})[arg_23_1] * 100 + 0.5), arg_23_1)
		end,
		updateEffectString = function(arg_24_0)
			arg_24_0.effect = arg_24_0:getEffectDescription(arg_24_0.level)
		end
	},
	{
		stage = "all",
		price = 4,
		rarity = "U",
		panelActivationFeedback = false,
		icon = "src/sprites/icons/relics icon/item icons/15 Scatter Scope.png",
		effect = "원거리 아군이 적을 번갈아 공격합니다. 대상을 바꾼 기본 공격의 피해가 15% 증가합니다. (Lv.1)",
		name = "분산 조준경 (Scatter Scope)",
		iconW = 32,
		key = "ScatterScope",
		id = "15",
		iconH = 32,
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"상태 이상 확산",
			"원거리 분산 공격"
		},
		damageBonus = {
			0.15,
			0.25
		},
		gearLevel = {
			damageBonus = 0.35
		},
		getEffectDescription = function(arg_25_0, arg_25_1)
			arg_25_1 = math.max(1, math.min(2, math.floor(tonumber(arg_25_1) or 1)))

			return string.format("원거리 아군이 적을 번갈아 공격합니다. 대상을 바꾼 기본 공격의 피해가 %d%% 증가합니다. (Lv.%d)", math.floor((arg_25_0.damageBonus or {
				0.15,
				0.25
			})[arg_25_1] * 100 + 0.5), arg_25_1)
		end,
		updateEffectString = function(arg_26_0)
			arg_26_0.effect = arg_26_0:getEffectDescription(arg_26_0.level)
		end
	},
	{
		stage = "all",
		price = 4,
		rarity = "U",
		icon = "src/sprites/icons/relics icon/item icons/16 Solitary Oath.png",
		effect = "아군을 3명 이하로 출전시키면, 각 아군은 최대 {hp.png}의 20% 보호막을 얻습니다. (Lv.1)",
		iconW = 32,
		name = "고독한 맹세 (Solitary Oath)",
		iconH = 32,
		key = "SolitaryOath",
		id = "16",
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"소수 정예",
			"전투 지속력"
		},
		shieldMaxHpRatio = {
			0.2,
			0.3
		},
		gearLevel = {
			shieldMaxHpRatio = 0.4
		},
		getEffectDescription = function(arg_27_0, arg_27_1)
			arg_27_1 = math.max(1, math.min(2, math.floor(tonumber(arg_27_1) or 1)))

			return string.format("아군을 3명 이하로 출전시키면, 각 아군은 최대 {hp.png}의 %d%% 보호막을 얻습니다. (Lv.%d)", math.floor((arg_27_0.shieldMaxHpRatio or {
				0.2,
				0.3
			})[arg_27_1] * 100 + 0.5), arg_27_1)
		end,
		updateEffectString = function(arg_28_0)
			arg_28_0.effect = arg_28_0:getEffectDescription(arg_28_0.level)
		end
	},
	{
		stage = "all",
		price = 4,
		rarity = "U",
		projectileVisualScale = 1.15,
		icon = "src/sprites/icons/relics icon/item icons/18 Tense String.png",
		effect = "원거리 아군의 기본 공격 피해가 45% 증가하지만, {aspd.png} -25%. (Lv.1)",
		iconW = 32,
		name = "긴장한 활시위 (Tense String)",
		iconH = 32,
		key = "TenseString",
		id = "18",
		type = "BATTLE",
		maxLevel = 2,
		attackIntervalMul = 1.3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"원거리",
			"안정적인 화력"
		},
		basicAttackDamageBonus = {
			0.45,
			0.65
		},
		gearLevel = {
			basicAttackDamageBonus = 0.85
		},
		getEffectDescription = function(arg_29_0, arg_29_1)
			arg_29_1 = math.max(1, math.min(2, math.floor(tonumber(arg_29_1) or 1)))

			return string.format("원거리 아군의 기본 공격 피해가 %d%% 증가하지만, {aspd.png} -25%%. (Lv.%d)", math.floor((arg_29_0.basicAttackDamageBonus or {
				0.45,
				0.65
			})[arg_29_1] * 100 + 0.5), arg_29_1)
		end,
		updateEffectString = function(arg_30_0)
			arg_30_0.effect = arg_30_0:getEffectDescription(arg_30_0.level)
		end
	},
	{
		stage = "all",
		price = 4,
		rarity = "U",
		effect = "6초마다 모든 아군이 가장 앞에 있는 적을 2초간 집중 공격합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/20 Command Banner.png",
		iconW = 32,
		name = "지휘 깃발 (Command Banner)",
		iconH = 32,
		key = "CommandBanner",
		id = "20",
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"집중 공격",
			"처치 연계",
			"단일 화력"
		},
		focusDuration = {
			2,
			3
		},
		gearLevel = {
			focusDuration = 4
		},
		getEffectDescription = function(arg_31_0, arg_31_1)
			arg_31_1 = math.max(1, math.min(2, math.floor(tonumber(arg_31_1) or 1)))

			return string.format("6초마다 모든 아군이 가장 앞에 있는 적을 %d초간 집중 공격합니다. (Lv.%d)", (arg_31_0.focusDuration or {
				2,
				3
			})[arg_31_1], arg_31_1)
		end,
		updateEffectString = function(arg_32_0)
			arg_32_0.effect = arg_32_0:getEffectDescription(arg_32_0.level)
		end
	},
	{
		stage = "all",
		price = 7,
		rarity = "R",
		bladeDamage = 0.3,
		icon = "src/sprites/icons/relics icon/item icons/25 Guardian Blades.png",
		effect = "LV이 가장 높은 아군 뒤에 수호검 2개가 떠다니며 적을 베어냅니다.",
		iconW = 32,
		name = "호위검 (Guardian Blades)",
		iconH = 32,
		key = "CrownOfBlades",
		id = "25",
		type = "BATTLE",
		maxLevel = 1,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			7
		},
		buildTypes = {
			"흡수 집중",
			"주력 보호",
			"근접 화력"
		},
		gearLevel = {
			bladeDamage = 0.45
		},
		getEffectDescription = function(arg_33_0)
			return "LV이 가장 높은 아군 뒤에 수호검 2개가 떠다니며 적을 베어냅니다."
		end,
		updateEffectString = function(arg_34_0)
			arg_34_0.effect = arg_34_0:getEffectDescription()
		end
	},
	{
		stage = "all",
		rangeBonus = 70,
		rarity = "R",
		price = 7,
		icon = "src/sprites/icons/relics icon/item icons/29 Wooden Watchtower.png",
		effect = "원거리 아군 1명을 사격탑에 배치합니다. {dist.png} +70, 타워는 마지막 공격 대상이 됩니다.",
		iconW = 32,
		name = "목제 사격탑 (Wooden Watchtower)",
		iconH = 32,
		key = "WoodenWatchtower",
		id = "29",
		type = "BATTLE",
		maxLevel = 1,
		cooldownSec = 0,
		currency = "골드",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			7
		},
		buildTypes = {
			"원거리 보호",
			"탑승",
			"배치"
		},
		gearLevel = {
			rangeBonus = 100
		},
		getEffectDescription = function(arg_35_0)
			return "원거리 아군 1명을 사격탑에 배치합니다. {dist.png} +70, 타워는 마지막 공격 대상이 됩니다."
		end,
		updateEffectString = function(arg_36_0)
			arg_36_0.effect = arg_36_0:getEffectDescription()
		end
	},
	{
		stage = "all",
		price = 10,
		rarity = "L",
		effect = "같은 적을 공격하는 병종이 다양할수록 해당 적이 받는 피해가 증가합니다. 2종 8% / 3종 16% / 4종 이상 24%.",
		icon = "src/sprites/icons/relics icon/item icons/44 Necklace of Unity.png",
		iconW = 32,
		iconH = 32,
		name = "결속의 목걸이 (Necklace of Unity)",
		key = "NecklaceOfUnity",
		id = "44",
		type = "BATTLE",
		maxLevel = 1,
		cooldownSec = 0,
		damagePerType = 0.08,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			10
		},
		buildTypes = {
			"혼합 병종",
			"집중 공격",
			"병종 조합"
		},
		gearLevel = {
			damagePerType = 0.12
		},
		getEffectDescription = function(arg_37_0)
			return "같은 적을 공격하는 병종이 다양할수록 해당 적이 받는 피해가 증가합니다. 2종 8% / 3종 16% / 4종 이상 24%."
		end,
		updateEffectString = function(arg_38_0)
			arg_38_0.effect = arg_38_0:getEffectDescription()
		end
	},
	{
		stage = 1,
		price = 2,
		rarity = "C",
		effect = "적이 4명 이상이면 가장 뒤의 적 1명이 1.5초 늦게 등장합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/49 Rockfall.png",
		iconW = 32,
		iconH = 32,
		name = "낙석 (Rockfall)",
		key = "Rockfall",
		id = "49",
		minimumEnemyCount = 4,
		spawnDelaySec = 2,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"물량 분산",
			"단일 화력",
			"전열 안정"
		},
		delayedEnemyCount = {
			1,
			2,
			3
		},
		gearLevel = {
			delayedEnemyCount = 4
		},
		getEffectDescription = function(arg_39_0, arg_39_1)
			arg_39_1 = math.max(1, math.min(3, math.floor(tonumber(arg_39_1) or 1)))

			return string.format("적이 4명 이상이면 가장 뒤의 적 %d명이 1.5초 늦게 등장합니다. (Lv.%d)", arg_39_1, arg_39_1)
		end,
		updateEffectString = function(arg_40_0)
			arg_40_0.effect = arg_40_0:getEffectDescription(arg_40_0.level)
		end
	},
	{
		stage = 1,
		price = 2,
		rarity = "C",
		retreatDuration = 0.66,
		retreatDistance = 45,
		hpThreshold = 0.3,
		name = "도피 망토 (Escape Cloak)",
		effect = "아군이 처음 {hp.png} 30% 이하가 되면 뒤로 물러나며 최대 {hp.png}의 8% 보호막을 얻습니다. (Lv.1)",
		key = "EscapeCloak",
		id = "50",
		icon = "src/sprites/icons/relics icon/item icons/50 Escape Cloak.png",
		iconW = 32,
		iconH = 32,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"위기 탈출",
			"배치 변화",
			"보호막"
		},
		shieldMaxHpRatio = {
			0.08,
			0.12,
			0.16
		},
		gearLevel = {
			shieldMaxHpRatio = 0.2
		},
		getEffectDescription = function(arg_41_0, arg_41_1)
			arg_41_1 = math.max(1, math.min(3, math.floor(tonumber(arg_41_1) or 1)))

			return string.format("아군이 처음 {hp.png} 30%% 이하가 되면 뒤로 물러나며 최대 {hp.png}의 %d%% 보호막을 얻습니다. (Lv.%d)", math.floor(arg_41_0.shieldMaxHpRatio[arg_41_1] * 100 + 0.5), arg_41_1)
		end,
		updateEffectString = function(arg_42_0)
			arg_42_0.effect = arg_42_0:getEffectDescription(arg_42_0.level)
		end
	},
	{
		stage = 1,
		price = 4,
		rarity = "U",
		icon = "src/sprites/icons/relics icon/item icons/51 Decoy Dummy.png",
		effect = "전투 시작 시 전열에 미끼 인형을 세웁니다. 적들은 인형을 우선 공격하며, 인형이 한 번이라도 맞으면 모든 아군이 적을 감지합니다. (Lv.1)",
		iconW = 32,
		name = "미끼 인형 (Decoy Dummy)",
		iconH = 32,
		key = "DecoyDummy",
		id = "51",
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"적 유인",
			"후열 보호",
			"광역 공격"
		},
		hpRatio = {
			0.35,
			0.5
		},
		gearLevel = {
			hpRatio = 0.65
		},
		getEffectDescription = function(arg_43_0, arg_43_1)
			return string.format("전투 시작 시 전열에 미끼 인형을 세웁니다. 적들은 인형을 우선 공격하며, 인형이 한 번이라도 맞으면 모든 아군이 적을 감지합니다. (Lv.%d)", math.max(1, math.min(2, math.floor(tonumber(arg_43_1) or 1))))
		end,
		updateEffectString = function(arg_44_0)
			arg_44_0.effect = arg_44_0:getEffectDescription(arg_44_0.level)
		end
	},
	{
		stage = 1,
		price = 4,
		rarity = "U",
		effect = "2명 이상을 공격하는 아군 스킬이 적 1명을 추가로 공격합니다. 추가 대상에게는 50% 피해를 줍니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/52 Branching Bloom.png",
		iconW = 32,
		panelActivationFeedback = false,
		name = "갈래꽃 (Branching Bloom)",
		iconH = 32,
		key = "BranchingBloom",
		id = "52",
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"광역 스킬",
			"물량 처리",
			"스킬 조합"
		},
		extraTargetDamageRatio = {
			0.5,
			0.8
		},
		gearLevel = {
			extraTargetDamageRatio = 1
		},
		getEffectDescription = function(arg_45_0, arg_45_1)
			arg_45_1 = math.max(1, math.min(2, math.floor(tonumber(arg_45_1) or 1)))

			return string.format("2명 이상을 공격하는 아군 스킬이 적 1명을 추가로 공격합니다. 추가 대상에게는 %d%% 피해를 줍니다. (Lv.%d)", math.floor(arg_45_0.extraTargetDamageRatio[arg_45_1] * 100 + 0.5), arg_45_1)
		end,
		updateEffectString = function(arg_46_0)
			arg_46_0.effect = arg_46_0:getEffectDescription(arg_46_0.level)
		end
	},
	{
		stage = 1,
		price = 7,
		rarity = "R",
		panelActivationFeedback = false,
		icon = "src/sprites/icons/relics icon/item icons/53 Hunting Mask.png",
		effect = "공격력이 가장 높은 아군은 최대 체력이 가장 높은 적을 우선 공격하며, 그 적에게 주는 피해가 25% 증가합니다. (Lv.1)",
		damageBonus = 0.25,
		name = "사냥 가면 (Hunting Mask)",
		iconW = 32,
		key = "HuntingMask",
		id = "53",
		iconH = 32,
		type = "BATTLE",
		maxLevel = 1,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			7
		},
		buildTypes = {
			"단일 주력",
			"강적 사냥",
			"보스"
		},
		gearLevel = {
			damageBonus = 0.4
		},
		getEffectDescription = function(arg_47_0)
			return arg_47_0.effect
		end
	},
	{
		stage = 1,
		price = 10,
		rarity = "L",
		type = "BATTLE",
		icon = "src/sprites/icons/relics icon/item icons/54 Guardian Golem.png",
		effect = "돌 골렘 1마리가 전장에 추가됩니다. 아군이 회복받으면 회복량의 30%만큼 골렘도 회복합니다. (Lv.1)",
		iconW = 32,
		name = "수호 골렘 (Guardian Golem)",
		iconH = 32,
		key = "GuardianGolem",
		id = "54",
		healShare = 0.3,
		maxLevel = 1,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			10
		},
		buildTypes = {
			"추가 전열",
			"회복",
			"소환"
		},
		gearLevel = {
			healShare = 0.5
		},
		getEffectDescription = function(arg_48_0)
			return arg_48_0.effect
		end
	},
	{
		stage = 2,
		price = 2,
		rarity = "C",
		icon = "src/sprites/icons/relics icon/item icons/55 Pursuit Wedge.png",
		effect = "아군을 무시하고 기지로 향하는 적을 공격할 때 공격속도가 15% 증가합니다. (Lv.1)",
		iconW = 32,
		name = "추격의 쐐기 (Pursuit Wedge)",
		iconH = 32,
		key = "PursuitWedge",
		id = "55",
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"기지 방어",
			"빠른 적 대응",
			"원거리"
		},
		attackSpeedBonus = {
			0.15,
			0.25,
			0.35
		},
		gearLevel = {
			attackSpeedBonus = 0.45
		},
		getEffectDescription = function(arg_49_0, arg_49_1)
			arg_49_1 = math.max(1, math.min(3, math.floor(tonumber(arg_49_1) or 1)))

			return string.format("아군을 무시하고 기지로 향하는 적을 공격할 때 공격속도가 %d%% 증가합니다. (Lv.%d)", math.floor(arg_49_0.attackSpeedBonus[arg_49_1] * 100 + 0.5), arg_49_1)
		end,
		updateEffectString = function(arg_50_0)
			arg_50_0.effect = arg_50_0:getEffectDescription(arg_50_0.level)
		end
	},
	{
		stage = 2,
		price = 2,
		rarity = "C",
		effect = "아군이 디버프 효과를 받으면 다음 기본 공격 피해가 20% 증가합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/56 Spitecap.png",
		panelActivationFeedback = false,
		name = "심술버섯 (Spitecap)",
		iconW = 32,
		key = "Spitecap",
		id = "56",
		iconH = 32,
		triggerCooldown = 4,
		type = "BATTLE",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			2,
			3,
			4
		},
		buildTypes = {
			"약화 대응",
			"기본 공격",
			"반격"
		},
		basicAttackBonus = {
			0.2,
			0.3,
			0.4
		},
		gearLevel = {
			basicAttackBonus = 0.5
		},
		getEffectDescription = function(arg_51_0, arg_51_1)
			arg_51_1 = math.max(1, math.min(3, math.floor(tonumber(arg_51_1) or 1)))

			return string.format("아군이 디버프 효과를 받으면 다음 기본 공격 피해가 %d%% 증가합니다. (Lv.%d)", math.floor(arg_51_0.basicAttackBonus[arg_51_1] * 100 + 0.5), arg_51_1)
		end,
		updateEffectString = function(arg_52_0)
			arg_52_0.effect = arg_52_0:getEffectDescription(arg_52_0.level)
		end
	},
	{
		stage = "all",
		price = 4,
		rarity = "U",
		icon = "src/sprites/icons/relics icon/item icons/57 Crossfire Flare.png",
		effect = "근접 아군이 적을 처치하면 가장 강한 원거리 아군이 즉시 공격합니다. 원거리 처치 시에는 반대로 발동합니다. (Lv.1)",
		iconW = 32,
		name = "협공 신호탄 (Crossfire Flare)",
		iconH = 32,
		key = "CrossfireFlare",
		id = "57",
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"근접·원거리 혼합",
			"처치 연계",
			"협공"
		},
		triggerInterval = {
			4,
			3
		},
		gearLevel = {
			triggerInterval = 2
		},
		getEffectDescription = function(arg_53_0, arg_53_1)
			arg_53_1 = math.max(1, math.min(2, math.floor(tonumber(arg_53_1) or 1)))

			return string.format("근접 아군이 적을 처치하면 가장 강한 원거리 아군이 즉시 공격합니다. 원거리 처치 시에는 반대로 발동합니다. (Lv.%d)", arg_53_1)
		end,
		updateEffectString = function(arg_54_0)
			arg_54_0.effect = arg_54_0:getEffectDescription(arg_54_0.level)
		end
	},
	{
		stage = 2,
		price = 4,
		rarity = "U",
		effect = "적의 원거리 기본 공격 경로에 다른 적이 있으면, 그 적에게도 {atk.png}의 15% 피해를 줍니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/58 Eye of Confusion.png",
		iconW = 32,
		panelActivationFeedback = false,
		name = "혼란의 눈동자 (Eye of Confusion)",
		iconH = 32,
		key = "EyeOfConfusion",
		id = "58",
		type = "BATTLE",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"적 사격 역이용",
			"물량 대응"
		},
		damageRatio = {
			0.15,
			0.25
		},
		gearLevel = {
			damageRatio = 0.35
		},
		getEffectDescription = function(arg_55_0, arg_55_1)
			arg_55_1 = math.max(1, math.min(2, math.floor(tonumber(arg_55_1) or 1)))

			return string.format("적의 원거리 기본 공격 경로에 다른 적이 있으면, 그 적에게도 {atk.png}의 %d%% 피해를 줍니다. (Lv.%d)", math.floor(arg_55_0.damageRatio[arg_55_1] * 100 + 0.5), arg_55_1)
		end,
		updateEffectString = function(arg_56_0)
			arg_56_0.effect = arg_56_0:getEffectDescription(arg_56_0.level)
		end
	},
	{
		stage = 2,
		price = 7,
		rarity = "R",
		effect = "아군이 독이나 능력치 감소 효과를 받으면 즉시 제거합니다. 아군마다 8초에 한 번 발동합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/59 Antidote Fruit.png",
		iconW = 32,
		panelActivationFeedback = false,
		name = "해독 열매 (Antidote Fruit)",
		iconH = 32,
		key = "AntidoteFruit",
		id = "59",
		triggerCooldown = 8,
		type = "BATTLE",
		maxLevel = 1,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			7
		},
		buildTypes = {
			"약화 대응",
			"후열 보호",
			"생존"
		},
		gearLevel = {
			triggerCooldown = 5
		},
		getEffectDescription = function(arg_57_0)
			return arg_57_0.effect
		end
	},
	{
		stage = 2,
		price = 10,
		rarity = "L",
		effect = "적이 스킬을 사용하면 공격력이 가장 높은 아군 1명이 즉시 스킬을 사용합니다. 8초에 한 번 발동합니다. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/60 Retaliation Sigil.png",
		iconW = 32,
		iconH = 32,
		name = "응전의 인장 (Retaliation Sigil)",
		key = "RetaliationSigil",
		id = "60",
		triggerCooldown = 8,
		type = "BATTLE",
		maxLevel = 1,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.BATTLE.ko,
		prices = {
			10
		},
		buildTypes = {
			"스킬",
			"주력 육성",
			"적 특수기 대응"
		},
		gearLevel = {
			triggerCooldown = 5
		},
		getEffectDescription = function(arg_58_0)
			return arg_58_0.effect
		end
	},
	{
		stage = "all",
		price = 3,
		rarity = "C",
		effect = "전사 계열의 {hp.png} +6%. (Lv.1)",
		icon = "src/sprites/icons/relics icon/item icons/31 Warrior Manual.png",
		iconW = 32,
		iconH = 32,
		name = "전사 훈련서 (Warrior Manual)",
		key = "WarriorTraining",
		id = "31",
		type = "TRAINING",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		buildTypes = {
			"전사",
			"체력",
			"전열"
		},
		maxHpBonus = {
			0.06,
			0.12,
			0.18
		},
		gearLevel = {
			maxHpBonus = 0.24
		},
		getEffectDescription = function(arg_59_0, arg_59_1)
			arg_59_1 = math.max(1, math.min(tonumber(arg_59_1 or 1) or 1, 3))

			local var_59_0 = math.floor((arg_59_0.maxHpBonus[arg_59_1] or 0) * 100 + 0.5)

			return string.format("전사 계열의 {hp.png} +%d%%. (Lv.%d)", var_59_0, arg_59_1)
		end,
		updateEffectString = function(arg_60_0)
			arg_60_0.effect = arg_60_0:getEffectDescription(arg_60_0.level)
		end
	},
	{
		stage = "all",
		price = 3,
		rarity = "C",
		type = "TRAINING",
		icon = "src/sprites/icons/relics icon/item icons/32 Archer Manual.png",
		effect = "궁수 계열의 {aspd.png} +5%. (Lv.1)",
		iconW = 32,
		name = "궁수 훈련서 (Archer Manual)",
		iconH = 32,
		key = "ArcherTraining",
		id = "32",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		buildTypes = {
			"궁수",
			"공격속도",
			"기본 공격"
		},
		aspdBonus = {
			0.05,
			0.1,
			0.15
		},
		gearLevel = {
			aspdBonus = 0.2
		},
		getEffectDescription = function(arg_61_0, arg_61_1)
			arg_61_1 = math.max(1, math.min(tonumber(arg_61_1 or 1) or 1, 3))

			local var_61_0 = math.floor((arg_61_0.aspdBonus[arg_61_1] or 0) * 100 + 0.5)

			return string.format("궁수 계열의 {aspd.png} +%d%%. (Lv.%d)", var_61_0, arg_61_1)
		end,
		updateEffectString = function(arg_62_0)
			arg_62_0.effect = arg_62_0:getEffectDescription(arg_62_0.level)
		end
	},
	{
		stage = "all",
		price = 3,
		rarity = "C",
		name = "창병 훈련서 (Spearman Manual)",
		icon = "src/sprites/icons/relics icon/item icons/33 Spearman Manual.png",
		effect = "창병 계열의 {atk.png} +6%. (Lv.1)",
		iconW = 32,
		iconH = 32,
		key = "SpearmanTraining",
		id = "33",
		type = "TRAINING",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		buildTypes = {
			"창병",
			"공격력",
			"화력"
		},
		atkBonus = {
			0.06,
			0.12,
			0.18
		},
		gearLevel = {
			atkBonus = 0.24
		},
		getEffectDescription = function(arg_63_0, arg_63_1)
			arg_63_1 = math.max(1, math.min(tonumber(arg_63_1 or 1) or 1, 3))

			local var_63_0 = math.floor((arg_63_0.atkBonus[arg_63_1] or 0) * 100 + 0.5)

			return string.format("창병 계열의 {atk.png} +%d%%. (Lv.%d)", var_63_0, arg_63_1)
		end,
		updateEffectString = function(arg_64_0)
			arg_64_0.effect = arg_64_0:getEffectDescription(arg_64_0.level)
		end
	},
	{
		stage = "all",
		price = 3,
		rarity = "C",
		type = "TRAINING",
		icon = "src/sprites/icons/relics icon/item icons/34 Mage Manual.png",
		effect = "마법사 계열의 {atk.png} +5%, {aspd.png} +4%. (Lv.1)",
		name = "마법사 훈련서 (Mage Manual)",
		iconW = 32,
		key = "MageTraining",
		id = "34",
		iconH = 32,
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		buildTypes = {
			"마법사",
			"공격력",
			"공격속도"
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
		gearLevel = {
			aspdBonus = 0.16,
			atkBonus = 0.2
		},
		getEffectDescription = function(arg_65_0, arg_65_1)
			arg_65_1 = math.max(1, math.min(tonumber(arg_65_1 or 1) or 1, 3))

			return string.format("마법사 계열의 {atk.png} +%d%%, {aspd.png} +%d%%. (Lv.%d)", math.floor((arg_65_0.atkBonus[arg_65_1] or 0) * 100 + 0.5), math.floor((arg_65_0.aspdBonus[arg_65_1] or 0) * 100 + 0.5), arg_65_1)
		end,
		updateEffectString = function(arg_66_0)
			arg_66_0.effect = arg_66_0:getEffectDescription(arg_66_0.level)
		end
	},
	{
		stage = "all",
		price = 3,
		rarity = "C",
		name = "기병 훈련서 (Cavalry Manual)",
		icon = "src/sprites/icons/relics icon/item icons/35 Cavalry Manual.png",
		effect = "기병 계열의 {hp.png}와 {atk.png} +4%. (Lv.1)",
		iconW = 32,
		iconH = 32,
		key = "CavalryTraining",
		id = "35",
		type = "TRAINING",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		buildTypes = {
			"기병",
			"체력",
			"공격력"
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
		gearLevel = {
			maxHpBonus = 0.16,
			atkBonus = 0.16
		},
		getEffectDescription = function(arg_67_0, arg_67_1)
			arg_67_1 = math.max(1, math.min(tonumber(arg_67_1 or 1) or 1, 3))

			local var_67_0 = math.floor((arg_67_0.atkBonus[arg_67_1] or 0) * 100 + 0.5)

			return string.format("기병 계열의 {hp.png}와 {atk.png} +%d%%. (Lv.%d)", var_67_0, arg_67_1)
		end,
		updateEffectString = function(arg_68_0)
			arg_68_0.effect = arg_68_0:getEffectDescription(arg_68_0.level)
		end
	},
	{
		stage = "all",
		price = 3,
		rarity = "C",
		name = "결투사 훈련서 (Duelist Manual)",
		icon = "src/sprites/icons/relics icon/item icons/36 Duelist Manual.png",
		effect = "결투사 계열의 {atk.png} +6%. (Lv.1)",
		iconW = 32,
		iconH = 32,
		key = "DuelistTraining",
		id = "36",
		type = "TRAINING",
		maxLevel = 3,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			3,
			4,
			5
		},
		buildTypes = {
			"결투사",
			"공격력",
			"단일 화력"
		},
		atkBonus = {
			0.06,
			0.12,
			0.18
		},
		gearLevel = {
			atkBonus = 0.24
		},
		getEffectDescription = function(arg_69_0, arg_69_1)
			arg_69_1 = math.max(1, math.min(tonumber(arg_69_1 or 1) or 1, 3))

			local var_69_0 = math.floor((arg_69_0.atkBonus[arg_69_1] or 0) * 100 + 0.5)

			return string.format("결투사 계열의 {atk.png} +%d%%. (Lv.%d)", var_69_0, arg_69_1)
		end,
		updateEffectString = function(arg_70_0)
			arg_70_0.effect = arg_70_0:getEffectDescription(arg_70_0.level)
		end
	},
	{
		maxLevel = 2,
		price = 4,
		rarity = "U",
		iconW = 32,
		icon = "src/sprites/icons/relics icon/item icons/37 Shield Manual.png",
		iconH = 32,
		name = "방패술 교본 (Shield Manual)",
		key = "ShieldManual",
		id = "37",
		engagementDuration = 6,
		type = "TRAINING",
		effect = "전사 계열이 첫 교전 후 6초 동안 받는 피해가 10% 감소합니다. (Lv.1)",
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = false,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			4,
			6
		},
		damageReduction = {
			0.1,
			0.18
		},
		gearLevel = {
			damageReduction = 0.26
		},
		getEffectDescription = function(arg_71_0, arg_71_1)
			arg_71_1 = math.max(1, math.min(tonumber(arg_71_1 or 1) or 1, 2))

			local var_71_0 = math.floor((arg_71_0.damageReduction[arg_71_1] or 0) * 100 + 0.5)

			return string.format("전사 계열이 첫 교전 후 6초 동안 받는 피해가 %d%% 감소합니다. (Lv.%d)", var_71_0, arg_71_1)
		end,
		updateEffectString = function(arg_72_0)
			arg_72_0.effect = arg_72_0:getEffectDescription(arg_72_0.level)
		end
	},
	{
		stage = "all",
		price = 4,
		burstDuration = 3,
		rarity = "U",
		icon = "src/sprites/icons/relics icon/item icons/38 Rapid Fire Manual.png",
		reloadDuration = 2,
		effect = "궁수 계열은 3초 동안 {aspd.png} +90%, 이후 2초간 재장전합니다. (Lv.1)",
		name = "속사 교본 (Rapid Fire Manual)",
		key = "RapidFireManual",
		id = "38",
		iconW = 32,
		iconH = 32,
		type = "TRAINING",
		maxLevel = 2,
		cooldownSec = 0,
		currency = "정수",
		initiallyUnlocked = true,
		typeKo = var_0_3.TRAINING.ko,
		prices = {
			4,
			6
		},
		buildTypes = {
			"짧은 집중 사격",
			"전열이 버티는 재장전",
			"공격 횟수형 각인"
		},
		attackSpeedBonus = {
			0.9,
			1.2
		},
		gearLevel = {
			attackSpeedBonus = 1.5
		},
		getEffectDescription = function(arg_73_0, arg_73_1)
			arg_73_1 = math.max(1, math.min(tonumber(arg_73_1 or 1) or 1, 2))

			local var_73_0 = math.floor(arg_73_0.attackSpeedBonus[arg_73_1] * 100 + 0.5)

			return string.format("궁수 계열은 3초 동안 {aspd.png} +%d%%, 이후 2초간 재장전합니다. (Lv.%d)", var_73_0, arg_73_1)
		end,
		updateEffectString = function(arg_74_0)
			arg_74_0.effect = arg_74_0:getEffectDescription(arg_74_0.level)
		end
	}
}
local var_0_7 = {
	{
		max = 4,
		min = 1,
		w = {
			R = 0,
			C = 85,
			L = 0,
			U = 15
		}
	},
	{
		max = 10,
		min = 5,
		w = {
			R = 5,
			C = 70,
			L = 0,
			U = 25
		}
	},
	{
		max = 14,
		min = 11,
		w = {
			R = 8,
			C = 62,
			L = 0,
			U = 30
		}
	},
	{
		max = 20,
		min = 15,
		w = {
			R = 11,
			C = 52,
			L = 1,
			U = 36
		}
	},
	{
		min = 21,
		max = math.huge,
		w = {
			R = 13,
			C = 45,
			L = 2,
			U = 40
		}
	}
}

local function var_0_8(arg_75_0)
	arg_75_0 = tonumber(arg_75_0 or 1) or 1

	for iter_75_0, iter_75_1 in ipairs(var_0_7) do
		if arg_75_0 >= iter_75_1.min and arg_75_0 <= iter_75_1.max then
			return iter_75_1.w
		end
	end

	return var_0_7[#var_0_7].w
end

local function var_0_9(arg_76_0, arg_76_1)
	if not arg_76_0 or not arg_76_1 then
		return false
	end

	if arg_76_0.id ~= nil and arg_76_1.id ~= nil then
		if tostring(arg_76_0.id) == tostring(arg_76_1.id) then
			return true
		end

		local var_76_0 = tonumber(arg_76_0.id)
		local var_76_1 = tonumber(arg_76_1.id)

		if var_76_0 and var_76_1 and var_76_0 == var_76_1 then
			return true
		end
	end

	return arg_76_0.key ~= nil and arg_76_1.key ~= nil and tostring(arg_76_0.key) == tostring(arg_76_1.key)
end

local var_0_10 = {
	BATTLE = 0,
	TRAINING = 0
}

function var_0_1.setGearBonus(arg_77_0, arg_77_1)
	var_0_10.BATTLE = math.max(0, math.floor(tonumber(arg_77_0) or 0))
	var_0_10.TRAINING = math.max(0, math.floor(tonumber(arg_77_1) or 0))
end

local var_0_11

local function var_0_12(arg_78_0)
	if not var_0_11 then
		var_0_11 = {}

		for iter_78_0, iter_78_1 in ipairs(var_0_6) do
			var_0_11[iter_78_1.id], var_0_11[iter_78_1.key] = iter_78_1, iter_78_1
		end
	end

	return var_0_11[arg_78_0.id] or var_0_11[arg_78_0.key] or arg_78_0
end

local function var_0_13(arg_79_0, arg_79_1)
	return math.max(1, math.floor(tonumber(arg_79_1.maxLevel or arg_79_0.maxLevel) or 1))
end

function var_0_1.gearBonusOf(arg_80_0)
	if type(arg_80_0) ~= "table" then
		return 0
	end

	local var_80_0 = var_0_12(arg_80_0)
	local var_80_1 = var_0_10[var_80_0.type or arg_80_0.type] or 0

	if var_80_1 <= 0 then
		return 0
	end

	local var_80_2 = math.max(1, math.floor(tonumber(arg_80_0.level) or 1))
	local var_80_3 = var_0_13(arg_80_0, var_80_0) + (var_80_0.gearLevel and 1 or 0)

	return math.max(0, math.min(var_80_3, var_80_2 + var_80_1) - var_80_2)
end

function var_0_1.levelOf(arg_81_0)
	return math.max(1, math.floor(tonumber(arg_81_0 and arg_81_0.level) or 1)) + var_0_1.gearBonusOf(arg_81_0)
end

function var_0_1.levelValue(arg_82_0, arg_82_1, arg_82_2)
	if type(arg_82_0) == "table" then
		local var_82_0 = var_0_12(arg_82_0)
		local var_82_1 = var_0_1.levelOf(arg_82_0)

		if var_82_1 > var_0_13(arg_82_0, var_82_0) and var_82_0.gearLevel and var_82_0.gearLevel[arg_82_1] ~= nil then
			return var_82_0.gearLevel[arg_82_1]
		end

		if type(arg_82_2) == "table" then
			return arg_82_2[math.max(1, math.min(#arg_82_2, var_82_1))] or arg_82_2[#arg_82_2]
		end
	end

	if type(arg_82_2) == "table" then
		return arg_82_2[1]
	end

	return arg_82_2
end

function var_0_1.isMaxed(arg_83_0, arg_83_1)
	if not arg_83_1 then
		return false
	end

	local var_83_0 = type(arg_83_0) == "table" and arg_83_0 or var_0_1.getById(arg_83_0)

	if not var_83_0 then
		return false
	end

	local var_83_1 = math.max(1, math.floor(tonumber(var_83_0.maxLevel) or 1))

	for iter_83_0, iter_83_1 in ipairs(arg_83_1) do
		if var_0_9(iter_83_1, var_83_0) then
			return var_83_1 <= math.max(1, math.floor(tonumber(iter_83_1.level) or 1))
		end
	end

	return false
end

function var_0_1.isAvailableInEdition(arg_84_0)
	if not arg_84_0 then
		return false
	end

	return arg_84_0.key ~= "NecklaceOfUnity" or not _G.isDemoMode or not _G.isDemoMode()
end

function var_0_1.isAvailableForStage(arg_85_0, arg_85_1)
	if not var_0_1.isAvailableInEdition(arg_85_0) or arg_85_0.initiallyUnlocked == false then
		return false
	end

	local var_85_0 = arg_85_0.stage

	if var_85_0 == nil or var_85_0 == "all" or var_85_0 == "모두" then
		return true
	end

	return tonumber(var_85_0) ~= nil and tonumber(var_85_0) == (tonumber(arg_85_1) or 1)
end

function var_0_1.offer(arg_86_0, arg_86_1, arg_86_2, arg_86_3, arg_86_4, arg_86_5)
	arg_86_0 = math.max(1, math.floor(tonumber(arg_86_0 or 3) or 3))

	local var_86_0 = var_0_8(arg_86_1)
	local var_86_1 = var_0_1.getById(arg_86_3)
	local var_86_2 = var_86_1 and 1 or nil

	local function var_86_3()
		local var_87_0 = var_86_0.C + var_86_0.U + var_86_0.R + var_86_0.L

		if var_87_0 <= 0 then
			return "C"
		end

		local var_87_1 = love.math.random() * var_87_0

		local function var_87_2(arg_88_0)
			local var_88_0 = var_86_0[arg_88_0]

			if var_88_0 > var_87_1 then
				return true
			end

			var_87_1 = var_87_1 - var_88_0

			return false
		end

		if var_87_2("C") then
			return "C"
		end

		if var_87_2("U") then
			return "U"
		end

		if var_87_2("R") then
			return "R"
		end

		return "L"
	end

	if var_86_1 and (not var_0_1.isAvailableInEdition(var_86_1) or var_0_1.isMaxed(var_86_1, arg_86_2) or arg_86_5 ~= true and not var_0_1.isAvailableForStage(var_86_1, arg_86_4)) then
		var_86_1 = nil
		var_86_2 = nil
	end

	local var_86_4 = {}
	local var_86_5 = {}

	if var_86_1 then
		var_86_5[var_86_1.id] = true
	end

	for iter_86_0 = 1, arg_86_0 do
		if var_86_1 and iter_86_0 == var_86_2 then
			var_86_4[iter_86_0] = var_86_1
		else
			local var_86_6 = {
				C = {},
				U = {},
				R = {},
				L = {}
			}

			for iter_86_1, iter_86_2 in ipairs(var_0_6) do
				if not var_86_5[iter_86_2.id] and not var_0_1.isMaxed(iter_86_2, arg_86_2) and var_0_1.isAvailableForStage(iter_86_2, arg_86_4) and var_86_6[iter_86_2.rarity] then
					table.insert(var_86_6[iter_86_2.rarity], iter_86_2)
				end
			end

			local var_86_7 = var_86_6[var_86_3()]

			if not var_86_7 or #var_86_7 == 0 then
				for iter_86_3, iter_86_4 in ipairs({
					"C",
					"U",
					"R",
					"L"
				}) do
					if #var_86_6[iter_86_4] > 0 then
						var_86_7 = var_86_6[iter_86_4]

						break
					end
				end
			end

			if var_86_7 and #var_86_7 > 0 then
				local var_86_8 = var_86_7[love.math.random(1, #var_86_7)]

				var_86_4[iter_86_0] = var_86_8
				var_86_5[var_86_8.id] = true
			end
		end
	end

	return var_86_4
end

function var_0_1.getAll()
	return var_0_6
end

function var_0_1.getById(arg_90_0)
	if not arg_90_0 then
		return nil
	end

	for iter_90_0, iter_90_1 in ipairs(var_0_6) do
		if iter_90_1.id == arg_90_0 or iter_90_1.key == arg_90_0 then
			return iter_90_1
		end
	end

	return nil
end

function var_0_1.getIcon(arg_91_0)
	if not arg_91_0 or not arg_91_0.icon then
		return nil
	end

	if arg_91_0.proceduralIcon == "crown_of_blades" and not love.filesystem.getInfo(arg_91_0.icon) then
		return (require("src.ui.effects").crown_of_blades.getIcon())
	end

	local var_91_0 = var_0_4[arg_91_0.icon]

	if var_91_0 ~= nil then
		return var_91_0 or nil
	end

	if not love.filesystem.getInfo(arg_91_0.icon) then
		var_0_4[arg_91_0.icon] = false

		return nil
	end

	local var_91_1, var_91_2 = pcall(love.graphics.newImage, arg_91_0.icon)

	if not var_91_1 or not var_91_2 then
		var_0_4[arg_91_0.icon] = false

		return nil
	end

	var_91_2:setFilter("nearest", "nearest")

	var_0_4[arg_91_0.icon] = var_91_2

	return var_91_2
end

function var_0_1.getIconData(arg_92_0)
	if not arg_92_0 or not arg_92_0.icon then
		return nil
	end

	if arg_92_0.proceduralIcon == "crown_of_blades" and not love.filesystem.getInfo(arg_92_0.icon) then
		local var_92_0, var_92_1 = require("src.ui.effects").crown_of_blades.getIcon()

		return var_92_1
	end

	local var_92_2 = var_0_5[arg_92_0.icon]

	if var_92_2 ~= nil then
		return var_92_2 or nil
	end

	if not love.filesystem.getInfo(arg_92_0.icon) then
		var_0_5[arg_92_0.icon] = false

		return nil
	end

	local var_92_3, var_92_4 = pcall(love.image.newImageData, arg_92_0.icon)

	if not var_92_3 or not var_92_4 then
		var_0_5[arg_92_0.icon] = false

		return nil
	end

	var_0_5[arg_92_0.icon] = var_92_4

	return var_92_4
end

function var_0_1.getRarity(arg_93_0)
	local var_93_0 = arg_93_0 and arg_93_0.rarity and var_0_2[arg_93_0.rarity]

	if var_93_0 then
		return var_93_0.label, var_93_0.color
	end

	return arg_93_0 and (arg_93_0.rarity or ""), {
		1,
		1,
		1,
		1
	}
end

function var_0_1.getType(arg_94_0)
	if not arg_94_0 then
		return var_0_3.BATTLE.ko, var_0_3.BATTLE.en
	end

	local var_94_0 = var_0_3[arg_94_0.type or "BATTLE"] or var_0_3.BATTLE

	return var_94_0.ko, var_94_0.en
end

function var_0_1.activate(arg_95_0, arg_95_1, arg_95_2)
	if not arg_95_0 or type(arg_95_0.apply) ~= "function" then
		return
	end

	return arg_95_0:apply(arg_95_1, arg_95_2)
end

function var_0_1.getBasicTrainingBonuses(arg_96_0, arg_96_1)
	local var_96_0 = {}

	if not arg_96_0 or type(arg_96_1) ~= "table" then
		return var_96_0
	end

	local var_96_1 = false

	if not arg_96_0.isSummon and not arg_96_0.isClone and not arg_96_0.isShadowMinion and not arg_96_0.isUndyingSoul and not arg_96_0.isFireSpirit and not arg_96_0.isFlameSpirit and not arg_96_0.isTower and not arg_96_0.isDecoyDummy and not arg_96_0.isGuardianGolem and not arg_96_0.isHusk then
		local var_96_2 = arg_96_0.randomOptions or arg_96_0.randomOption and {
			arg_96_0.randomOption
		} or {}

		for iter_96_0, iter_96_1 in ipairs(var_96_2) do
			if tostring(iter_96_1.id) == "26" then
				var_96_1 = true

				break
			end
		end
	end

	for iter_96_2, iter_96_3 in ipairs({
		"W",
		"A",
		"S",
		"M",
		"H",
		"D"
	}) do
		if var_96_1 or arg_96_0.sym == iter_96_3 then
			local var_96_3 = var_0_1.getById(tostring(30 + iter_96_2))

			for iter_96_4, iter_96_5 in ipairs(arg_96_1) do
				if var_0_9(iter_96_5, var_96_3) then
					var_96_0[#var_96_0 + 1] = {
						hp = var_96_3.maxHpBonus and var_0_1.levelValue(iter_96_5, "maxHpBonus", var_96_3.maxHpBonus) or 0,
						atk = var_96_3.atkBonus and var_0_1.levelValue(iter_96_5, "atkBonus", var_96_3.atkBonus) or 0,
						aspd = var_96_3.aspdBonus and var_0_1.levelValue(iter_96_5, "aspdBonus", var_96_3.aspdBonus) or 0
					}

					break
				end
			end
		end
	end

	return var_96_0
end

return var_0_1
