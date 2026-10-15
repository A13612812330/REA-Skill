local var_0_0 = {}

var_0_0.iconCanvasSize = 18
var_0_0.catalog = {
	{
		rarity = "common",
		name = "전투 본능",
		icon = "src/sprites/icons/randomoption/01attackup.png",
		id = "01",
		source = "Spawn",
		effect = "{atk.png} +6~10%",
		variants = {
			{
				value = "+6%",
				chance = 0.4
			},
			{
				value = "+7%",
				chance = 0.25
			},
			{
				value = "+8%",
				chance = 0.18
			},
			{
				value = "+9%",
				chance = 0.12
			},
			{
				value = "+10%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "생존 본능",
		icon = "src/sprites/icons/randomoption/02hpup.png",
		id = "02",
		source = "Spawn",
		effect = "{hp.png} +8~12%",
		variants = {
			{
				value = "+8%",
				chance = 0.4
			},
			{
				value = "+9%",
				chance = 0.25
			},
			{
				value = "+10%",
				chance = 0.18
			},
			{
				value = "+11%",
				chance = 0.12
			},
			{
				value = "+12%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "반사 신경",
		icon = "src/sprites/icons/randomoption/03aspdup.png",
		id = "03",
		source = "Spawn",
		effect = "{aspd.png} +4~8%",
		variants = {
			{
				value = "+4%",
				chance = 0.4
			},
			{
				value = "+5%",
				chance = 0.25
			},
			{
				value = "+6%",
				chance = 0.18
			},
			{
				value = "+7%",
				chance = 0.12
			},
			{
				value = "+8%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "개시 일격",
		icon = "src/sprites/icons/randomoption/04firsthit.png",
		id = "04",
		source = "Both",
		effect = "첫 공격 피해 {atk.png} +60~120%",
		variants = {
			{
				value = "+60%",
				chance = 0.4
			},
			{
				value = "+75%",
				chance = 0.25
			},
			{
				value = "+90%",
				chance = 0.18
			},
			{
				value = "+105%",
				chance = 0.12
			},
			{
				value = "+120%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "마무리 일격",
		icon = "src/sprites/icons/randomoption/05lasthit.png",
		id = "05",
		source = "Both",
		effect = "마지막 적 피해 {atk.png} +12~24%",
		variants = {
			{
				value = "+12%",
				chance = 0.4
			},
			{
				value = "+15%",
				chance = 0.25
			},
			{
				value = "+18%",
				chance = 0.18
			},
			{
				value = "+21%",
				chance = 0.12
			},
			{
				value = "+24%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "rare",
		name = "처치 가속",
		icon = "src/sprites/icons/randomoption/06killhaste.png",
		id = "06",
		source = "Both",
		effect = "적 처치 시 5초간 {aspd.png} +15~35%",
		variants = {
			{
				value = "+15%",
				chance = 0.4
			},
			{
				value = "+20%",
				chance = 0.25
			},
			{
				value = "+25%",
				chance = 0.18
			},
			{
				value = "+30%",
				chance = 0.12
			},
			{
				value = "+35%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "불굴",
		icon = "src/sprites/icons/randomoption/07survive.png",
		id = "07",
		source = "Both",
		effect = "사망시 {hp.png} 1로 한번 1초간 생존",
		variants = {
			{
				value = "1회",
				chance = 1
			}
		}
	},
	{
		rarity = "rare",
		name = "광기",
		icon = "src/sprites/icons/randomoption/08berserk.png",
		id = "08",
		source = "Both",
		effect = "{atk.png} +18~32% / 받는 피해 +10~18%",
		variants = {
			{
				value = "+18%",
				chance = 0.4,
				dmgTaken = "+10%"
			},
			{
				value = "+22%",
				chance = 0.25,
				dmgTaken = "+12%"
			},
			{
				value = "+26%",
				chance = 0.18,
				dmgTaken = "+14%"
			},
			{
				value = "+29%",
				chance = 0.12,
				dmgTaken = "+16%"
			},
			{
				value = "+32%",
				chance = 0.05,
				dmgTaken = "+18%"
			}
		}
	},
	{
		rarity = "rare",
		name = "피의 사투",
		icon = "src/sprites/icons/randomoption/09bloodrage.png",
		id = "09",
		source = "Both",
		effect = "잃은 HP 비례 {atk.png} 최대 +25~45%",
		variants = {
			{
				value = "+25%",
				chance = 0.4
			},
			{
				value = "+30%",
				chance = 0.25
			},
			{
				value = "+35%",
				chance = 0.18
			},
			{
				value = "+40%",
				chance = 0.12
			},
			{
				value = "+45%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "rare",
		name = "전투 고조",
		icon = "src/sprites/icons/randomoption/10battlefervor.png",
		id = "10",
		source = "Both",
		effect = "첫 교전 후 2초마다 {atk.png} +3~7% (최대 5중첩)",
		variants = {
			{
				value = "+3%",
				chance = 0.4
			},
			{
				value = "+4%",
				chance = 0.25
			},
			{
				value = "+5%",
				chance = 0.18
			},
			{
				value = "+6%",
				chance = 0.12
			},
			{
				value = "+7%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "rare",
		name = "혈전",
		icon = "src/sprites/icons/randomoption/11allydeath.png",
		id = "11",
		initiallyUnlocked = false,
		source = "Both",
		effect = "쓰러진 아군 1명당 {atk.png} +4~8%",
		variants = {
			{
				value = "+4%",
				chance = 0.4
			},
			{
				value = "+5%",
				chance = 0.25
			},
			{
				value = "+6%",
				chance = 0.18
			},
			{
				value = "+7%",
				chance = 0.12
			},
			{
				value = "+8%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "도시락",
		icon = "src/sprites/icons/randomoption/12concentrate.png",
		id = "12",
		source = "Spawn",
		effect = "흡수될 시 흡수 LV +1~5",
		permittedGrades = {
			rare = true,
			normal = true,
			advanced = true
		},
		variants = {
			{
				value = "+1",
				chance = 0.4
			},
			{
				value = "+2",
				chance = 0.25
			},
			{
				value = "+3",
				chance = 0.18
			},
			{
				value = "+4",
				chance = 0.12
			},
			{
				value = "+5",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "황금알",
		icon = "src/sprites/icons/randomoption/13jungsu.png",
		id = "13",
		source = "Spawn",
		effect = "흡수될 시 {essence.png} +1~5",
		permittedGrades = {
			rare = true,
			normal = true,
			advanced = true
		},
		variants = {
			{
				value = "+1",
				chance = 0.4
			},
			{
				value = "+2",
				chance = 0.25
			},
			{
				value = "+3",
				chance = 0.18
			},
			{
				value = "+4",
				chance = 0.12
			},
			{
				value = "+5",
				chance = 0.05
			}
		}
	},
	{
		name = "통솔력",
		icon = "src/sprites/icons/randomoption/14slotsplus.png",
		initiallyUnlocked = false,
		source = "Promotion",
		effect = "최대 유닛수에 해당 유닛 미적용",
		rarity = "legend",
		id = "14",
		incompatibleWith = "32",
		variants = {
			{
				value = "적용",
				chance = 1
			}
		}
	},
	{
		rarity = "legend",
		name = "공수 전환",
		icon = "src/sprites/icons/randomoption/15combatshift.png",
		id = "15",
		source = "Promotion",
		effect = "HP 50% 초과: {atk.png} +20%, HP 50% 이하: 받는 피해 -20%",
		variants = {
			{
				damageReduction = "-20%",
				value = "+20%",
				chance = 1
			}
		}
	},
	{
		rarity = "rare",
		name = "처치 회복",
		icon = "src/sprites/icons/randomoption/16victoryfeast.png",
		id = "16",
		source = "Both",
		effect = "적 처치 시 최대 {hp.png}의 4~8% 회복. 전투당 최대 3회",
		variants = {
			{
				value = "4%",
				chance = 0.4
			},
			{
				value = "5%",
				chance = 0.25
			},
			{
				value = "6%",
				chance = 0.18
			},
			{
				value = "7%",
				chance = 0.12
			},
			{
				value = "8%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "rare",
		name = "독보적",
		icon = "src/sprites/icons/randomoption/17lonewolf.png",
		id = "17",
		source = "Promotion",
		effect = "같은 계열의 다른 아군이 없으면 {atk.png} +8~16%, 받는 피해 -3~7%",
		variants = {
			{
				damageReduction = "-3%",
				value = "+8%",
				chance = 0.4
			},
			{
				damageReduction = "-4%",
				value = "+10%",
				chance = 0.25
			},
			{
				damageReduction = "-5%",
				value = "+12%",
				chance = 0.18
			},
			{
				damageReduction = "-6%",
				value = "+14%",
				chance = 0.12
			},
			{
				damageReduction = "-7%",
				value = "+16%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "비상금",
		icon = "src/sprites/icons/randomoption/18gold.png",
		id = "18",
		source = "Spawn",
		effect = "흡수될 시 {gold.png} +50~250",
		permittedGrades = {
			rare = true,
			normal = true,
			advanced = true
		},
		variants = {
			{
				value = "+50",
				chance = 0.4
			},
			{
				value = "+75",
				chance = 0.25
			},
			{
				value = "+100",
				chance = 0.18
			},
			{
				value = "+150",
				chance = 0.12
			},
			{
				value = "+250",
				chance = 0.05
			}
		}
	},
	{
		rarity = "rare",
		name = "기지 수호자",
		icon = "src/sprites/icons/randomoption/19baseguardian.png",
		id = "19",
		source = "Promotion",
		effect = "기지 근처의 적을 우선 공격하고, 해당 적에게 주는 피해 {atk.png} +15~35%",
		variants = {
			{
				value = "+15%",
				chance = 0.4
			},
			{
				value = "+20%",
				chance = 0.25
			},
			{
				value = "+25%",
				chance = 0.18
			},
			{
				value = "+30%",
				chance = 0.12
			},
			{
				value = "+35%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "legend",
		name = "결전의 날",
		icon = "src/sprites/icons/randomoption/20judgementprep.png",
		id = "20",
		source = "Both",
		effect = "심판 웨이브 전투시 {atk.png} +30~50%",
		variants = {
			{
				value = "+30%",
				chance = 0.4
			},
			{
				value = "+35%",
				chance = 0.25
			},
			{
				value = "+40%",
				chance = 0.18
			},
			{
				value = "+45%",
				chance = 0.12
			},
			{
				value = "+50%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "legend",
		name = "보스 슬레이어",
		icon = "src/sprites/icons/randomoption/21bossprep.png",
		id = "21",
		source = "Both",
		effect = "보스 웨이브 전투시 {atk.png} +30~50%",
		variants = {
			{
				value = "+30%",
				chance = 0.4
			},
			{
				value = "+35%",
				chance = 0.25
			},
			{
				value = "+40%",
				chance = 0.18
			},
			{
				value = "+45%",
				chance = 0.12
			},
			{
				value = "+50%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "rare",
		name = "기술 가속",
		icon = "src/sprites/icons/randomoption/22skillmastery.png",
		id = "22",
		requiresActiveSkill = true,
		source = "Promotion",
		effect = "액티브 스킬 쿨타임 -8~16%",
		variants = {
			{
				value = "-8%",
				chance = 0.4
			},
			{
				value = "-10%",
				chance = 0.25
			},
			{
				value = "-12%",
				chance = 0.18
			},
			{
				value = "-14%",
				chance = 0.12
			},
			{
				value = "-16%",
				chance = 0.05
			}
		}
	},
	{
		id = "23",
		name = "노림수",
		icon = "src/sprites/icons/randomoption/23calculatedluck.png",
		initiallyUnlocked = false,
		source = "Spawn",
		effect = "넛지로 새 당첨선을 만들 때마다 {atk.png} +1%.",
		rarity = "rare",
		requiresNudge = true,
		variants = {
			{
				value = "+1%",
				chance = 1
			}
		}
	},
	{
		rarity = "common",
		name = "전투 경험",
		icon = "src/sprites/icons/randomoption/24combatexperience.png",
		id = "24",
		requiresBasicAttack = true,
		source = "Spawn",
		effect = "적을 10명 처치할 때마다 기본 공격 피해 +1%.",
		variants = {
			{
				chance = 1
			}
		}
	},
	{
		effect = "기본 공격 시, 공격 가능한 적 중 현재 {hp.png}이 가장 적은 적을 우선 공격합니다.",
		name = "사냥 본능",
		icon = "src/sprites/icons/randomoption/25predatoryinstinct.png",
		initiallyUnlocked = false,
		source = "Both",
		requiresBasicAttack = true,
		rarity = "rare",
		id = "25",
		variants = {
			{
				chance = 1
			}
		}
	},
	{
		rarity = "legend",
		name = "다재다능",
		icon = "src/sprites/icons/randomoption/26versatile.png",
		id = "26",
		initiallyUnlocked = false,
		source = "Promotion",
		effect = "자신의 병종과 관계없이 모든 병종의 기본 훈련서 효과를 받습니다.",
		variants = {
			{
				chance = 1
			}
		}
	},
	{
		rarity = "common",
		name = "기회 포착",
		icon = "src/sprites/icons/randomoption/27opportunitystrikes.png",
		id = "27",
		requiresBasicAttack = true,
		source = "Both",
		effect = "디버프 상태인 적에게 기본 공격 피해 +15~35%.",
		variants = {
			{
				value = "+15%",
				chance = 0.4
			},
			{
				value = "+20%",
				chance = 0.25
			},
			{
				value = "+25%",
				chance = 0.18
			},
			{
				value = "+30%",
				chance = 0.12
			},
			{
				value = "+35%",
				chance = 0.05
			}
		}
	},
	{
		effect = "{aspd.png} +40%. {atk.png} -30%.",
		name = "속공",
		icon = "src/sprites/icons/randomoption/28rapidstrikes.png",
		initiallyUnlocked = false,
		source = "Promotion",
		requiresBasicAttack = true,
		rarity = "rare",
		id = "28",
		variants = {
			{
				chance = 1
			}
		}
	},
	{
		name = "고정 태세",
		icon = "src/sprites/icons/randomoption/29anchoredstance.png",
		initiallyUnlocked = false,
		source = "Promotion",
		effect = "이동할 수 없는 대신 {dist.png} +40, {atk.png} +15%.",
		requiresRangedBasicAttack = true,
		rarity = "rare",
		id = "29",
		variants = {
			{
				chance = 1
			}
		}
	},
	{
		rarity = "rare",
		name = "연쇄 시전",
		icon = "src/sprites/icons/randomoption/30chaincasting.png",
		id = "30",
		requiresAttackSkill = true,
		source = "Promotion",
		effect = "공격 스킬로 적을 처치하면 해당 스킬의 남은 쿨타임 -15~35%. 스킬 1회당 한 번만 발동합니다.",
		variants = {
			{
				value = "-15%",
				chance = 0.4
			},
			{
				value = "-20%",
				chance = 0.25
			},
			{
				value = "-25%",
				chance = 0.18
			},
			{
				value = "-30%",
				chance = 0.12
			},
			{
				value = "-35%",
				chance = 0.05
			}
		}
	},
	{
		rarity = "common",
		name = "현상금",
		icon = "src/sprites/icons/randomoption/31bounty.png",
		id = "31",
		requiresBountySource = true,
		source = "Both",
		effect = "적을 처치할 때마다 {gold.png} +5~9.",
		variants = {
			{
				value = "+5",
				chance = 0.4
			},
			{
				value = "+6",
				chance = 0.25
			},
			{
				value = "+7",
				chance = 0.18
			},
			{
				value = "+8",
				chance = 0.12
			},
			{
				value = "+9",
				chance = 0.05
			}
		}
	},
	{
		requiresDeploymentRoom = true,
		name = "거물",
		icon = "src/sprites/icons/randomoption/32heavyweight.png",
		initiallyUnlocked = false,
		source = "Promotion",
		effect = "유닛 슬롯을 2명분 차지하는 대신 {hp.png} +50%, {atk.png} +35%.",
		rarity = "rare",
		id = "32",
		incompatibleWith = "14",
		variants = {
			{
				chance = 1
			}
		}
	}
}

function var_0_0.isUnlocked(arg_1_0)
	return arg_1_0 ~= nil and arg_1_0.initiallyUnlocked ~= false
end

function var_0_0.isContextEligible(arg_2_0, arg_2_1, arg_2_2)
	if not var_0_0.isUnlocked(arg_2_0) then
		return false
	end

	if arg_2_0.incompatibleWith then
		if arg_2_2 and arg_2_2[arg_2_0.incompatibleWith] and (not arg_2_1 or not arg_2_1.unit) then
			return false
		end

		local var_2_0 = arg_2_1 and arg_2_1.unit

		for iter_2_0, iter_2_1 in ipairs(var_2_0 and (var_2_0.randomOptions or var_2_0.randomOption and {
			var_2_0.randomOption
		}) or {}) do
			if tostring(iter_2_1.id) == arg_2_0.incompatibleWith then
				return false
			end
		end
	end

	if arg_2_0.requiresDeploymentRoom then
		return arg_2_1 ~= nil and require("src.game.combat").heavyweight.canAcquire(arg_2_1.battlefield, arg_2_1.unit)
	end

	return true
end

function var_0_0.canBasicAttack(arg_3_0)
	if not arg_3_0 or arg_3_0.isSummon or arg_3_0.isShadowMinion or arg_3_0.isUndyingSoul or arg_3_0.isFireSpirit or arg_3_0.isTower or arg_3_0.isDecoyDummy or arg_3_0.isClone then
		return false
	end

	local var_3_0 = arg_3_0.skill

	if var_3_0 and (var_3_0.kind == "SavageTusk" or var_3_0.kind == "MountainRoar") then
		return false
	end

	for iter_3_0, iter_3_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey",
		"id",
		"name",
		"asset"
	}) do
		local var_3_1 = arg_3_0[iter_3_1]

		if var_3_1 == "야생법사" or var_3_1 == "원시법사" or var_3_1 == "Wild Mage" or var_3_1 == "Primal Mage" then
			return false
		end
	end

	return true
end

function var_0_0.canEarnBounty(arg_4_0)
	if not arg_4_0 or arg_4_0.isItemEffect or arg_4_0.isGuardianGolem or arg_4_0.isStructure or arg_4_0.isSummon or arg_4_0.isShadowMinion or arg_4_0.isUndyingSoul or arg_4_0.isFireSpirit or arg_4_0.isTower or arg_4_0.isDecoyDummy or arg_4_0.isClone then
		return false
	end

	if var_0_0.canBasicAttack(arg_4_0) then
		return true
	end

	local var_4_0 = arg_4_0.skill

	if var_4_0 and (var_4_0.kind == "SavageTusk" or var_4_0.kind == "MountainRoar") then
		return true
	end

	for iter_4_0, iter_4_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey",
		"id",
		"name",
		"asset"
	}) do
		local var_4_1 = arg_4_0[iter_4_1]

		if var_4_1 == "야생법사" or var_4_1 == "원시법사" or var_4_1 == "Wild Mage" or var_4_1 == "Primal Mage" then
			return true
		end
	end

	return false
end

function var_0_0.canRangedBasicAttack(arg_5_0, arg_5_1)
	if not var_0_0.canBasicAttack(arg_5_0) then
		return false
	end

	local var_5_0 = arg_5_0.role or arg_5_0.stats and arg_5_0.stats.role or arg_5_0.base and arg_5_0.base.role

	if var_5_0 then
		return var_5_0 == "archer" or var_5_0 == "mage" or var_5_0 == "ranged"
	end

	local var_5_1 = require("src.game.promotion_stats").getSubclassBaseStats({
		id = arg_5_0.subclassKey or arg_5_0.subclass or arg_5_0.asset or arg_5_0.id,
		name = arg_5_0.subclassName or arg_5_0.name
	})

	if var_5_1 and var_5_1.distance then
		return var_5_1.distance >= 70
	end

	local var_5_2 = arg_5_0.sym or arg_5_1

	return var_5_2 == "A" or var_5_2 == "M" or var_5_2 == "Joker" or var_5_2 == "J"
end

function var_0_0.isNudgeEnabledForRun()
	local var_6_0, var_6_1 = pcall(require, "src.ui.upgrade")

	if not var_6_0 or not var_6_1 or not var_6_1.getNudgeEnabled then
		return false
	end

	local var_6_2, var_6_3 = pcall(var_6_1.getNudgeEnabled)

	return var_6_2 and var_6_3 == true
end

function var_0_0.getCalculatedLuckStacks(arg_7_0)
	local var_7_0 = tonumber(arg_7_0 and arg_7_0.calculatedLuckStacks) or 0

	if var_7_0 ~= var_7_0 or var_7_0 == math.huge then
		return 0
	end

	return math.max(0, math.floor(var_7_0))
end

function var_0_0.getCombatExperienceProgress(arg_8_0)
	local var_8_0 = tonumber(arg_8_0 and arg_8_0.combatExperienceKills) or 0

	if var_8_0 ~= var_8_0 or var_8_0 == math.huge or var_8_0 == -math.huge then
		var_8_0 = 0
	end

	local var_8_1 = math.max(0, math.floor(var_8_0))

	return math.floor(var_8_1 / 10), var_8_1 % 10, var_8_1
end

local function var_0_1(arg_9_0)
	if arg_9_0 then
		return arg_9_0
	end

	if love and love.math and love.math.random then
		return love.math.random
	end

	return math.random
end

local function var_0_2(arg_10_0, arg_10_1)
	if not arg_10_0 or #arg_10_0 == 0 then
		return nil
	end

	local var_10_0 = 0

	for iter_10_0, iter_10_1 in ipairs(arg_10_0) do
		local var_10_1 = tonumber(iter_10_1.chance or iter_10_1.weight) or 1

		if var_10_1 > 0 then
			var_10_0 = var_10_0 + var_10_1
		end
	end

	if var_10_0 <= 0 then
		return arg_10_0[1]
	end

	local var_10_2 = var_0_1(arg_10_1)() * var_10_0

	for iter_10_2, iter_10_3 in ipairs(arg_10_0) do
		local var_10_3 = tonumber(iter_10_3.chance or iter_10_3.weight) or 1

		if var_10_3 > 0 then
			var_10_2 = var_10_2 - var_10_3

			if var_10_2 <= 0 then
				return iter_10_3
			end
		end
	end

	return arg_10_0[1]
end

local function var_0_3(arg_11_0, arg_11_1, arg_11_2)
	if not arg_11_0 or #arg_11_0 == 0 then
		return nil
	end

	local var_11_0 = {
		rare = 25,
		legend = 5,
		common = 70
	}

	if arg_11_2 == 2 then
		var_11_0 = {
			rare = 38,
			legend = 2,
			common = 60
		}
	elseif arg_11_2 == 3 then
		var_11_0 = {
			rare = 50,
			legend = 10,
			common = 40
		}
	elseif arg_11_2 == 4 then
		var_11_0 = {
			rare = 60,
			legend = 20,
			common = 20
		}
	elseif arg_11_2 == 5 then
		var_11_0 = {
			rare = 60,
			legend = 30,
			common = 10
		}
	end

	local var_11_1 = {}
	local var_11_2 = {}
	local var_11_3 = 0

	for iter_11_0, iter_11_1 in ipairs(arg_11_0) do
		local var_11_4 = (iter_11_1.rarity or "common"):lower()

		if not var_11_1[var_11_4] then
			var_11_1[var_11_4] = {}
		end

		table.insert(var_11_1[var_11_4], iter_11_1)
	end

	for iter_11_2, iter_11_3 in pairs(var_11_1) do
		if #iter_11_3 > 0 and var_11_0[iter_11_2] then
			table.insert(var_11_2, iter_11_2)

			var_11_3 = var_11_3 + var_11_0[iter_11_2]
		end
	end

	if var_11_3 <= 0 then
		return arg_11_0[math.floor(var_0_1(arg_11_1)() * #arg_11_0) + 1]
	end

	local var_11_5 = var_0_1(arg_11_1)() * var_11_3
	local var_11_6 = var_11_2[1]

	for iter_11_4, iter_11_5 in ipairs(var_11_2) do
		local var_11_7 = var_11_0[iter_11_5]

		if var_11_5 <= var_11_7 then
			var_11_6 = iter_11_5

			break
		else
			var_11_5 = var_11_5 - var_11_7
		end
	end

	local var_11_8 = var_11_1[var_11_6]

	return var_11_8[math.floor(var_0_1(arg_11_1)() * #var_11_8) + 1]
end

function var_0_0.rollForSpawn(arg_12_0, arg_12_1, arg_12_2, arg_12_3, arg_12_4, arg_12_5, arg_12_6, arg_12_7, arg_12_8)
	local var_12_0 = arg_12_0
	local var_12_1 = arg_12_1

	if type(var_12_0) == "string" and var_12_1 == nil then
		var_12_1 = var_12_0
		var_12_0 = nil
	end

	local var_12_2 = rawget(_G, "Tutorial")
	local var_12_3 = var_12_2 and var_12_2.isRunning and var_12_2.isRunning() == true
	local var_12_4 = var_0_0.isNudgeEnabledForRun()
	local var_12_5 = {}

	for iter_12_0, iter_12_1 in ipairs(var_0_0.catalog) do
		local var_12_6 = not var_12_3 or tostring(iter_12_1.id) ~= "12" and tostring(iter_12_1.id) ~= "13"
		local var_12_7 = not iter_12_1.permittedGrades or var_12_1 and iter_12_1.permittedGrades[var_12_1]
		local var_12_8 = (not iter_12_1.requiresActiveSkill or arg_12_3 == true) and (not iter_12_1.requiresAttackSkill or arg_12_5 == true) and (not iter_12_1.requiresRangedBasicAttack or arg_12_6 == true) and (not iter_12_1.requiresBountySource or arg_12_7 == true or arg_12_7 == nil and arg_12_4 == true)
		local var_12_9 = true

		if arg_12_2 then
			var_12_9 = iter_12_1.source == "Promotion" or iter_12_1.source == "Both"
		else
			var_12_9 = iter_12_1.source ~= "Promotion"
		end

		if var_12_6 and var_12_7 and var_12_9 and var_12_8 and var_0_0.isContextEligible(iter_12_1, arg_12_8) and (not iter_12_1.requiresNudge or var_12_4) and (not iter_12_1.requiresBasicAttack or arg_12_4 == true) then
			table.insert(var_12_5, iter_12_1)
		end
	end

	if #var_12_5 == 0 then
		for iter_12_2, iter_12_3 in ipairs(var_0_0.catalog) do
			local var_12_10 = (not iter_12_3.requiresActiveSkill or arg_12_3 == true) and (not iter_12_3.requiresAttackSkill or arg_12_5 == true) and (not iter_12_3.requiresRangedBasicAttack or arg_12_6 == true) and (not iter_12_3.requiresBountySource or arg_12_7 == true or arg_12_7 == nil and arg_12_4 == true)
			local var_12_11 = arg_12_2 and (iter_12_3.source == "Promotion" or iter_12_3.source == "Both") or not arg_12_2 and iter_12_3.source ~= "Promotion"

			if var_12_10 and var_12_11 and var_0_0.isContextEligible(iter_12_3, arg_12_8) and (not iter_12_3.requiresNudge or var_12_4) and (not iter_12_3.requiresBasicAttack or arg_12_4 == true) and (not var_12_3 or tostring(iter_12_3.id) ~= "12" and tostring(iter_12_3.id) ~= "13") then
				table.insert(var_12_5, iter_12_3)
			end
		end
	end

	local var_12_12 = var_0_3(var_12_5, var_12_0, arg_12_2)

	if not var_12_12 then
		return nil
	end

	local var_12_13 = var_0_2(var_12_12.variants, var_12_0)

	if not var_12_13 then
		return nil
	end

	local var_12_14 = {
		id = var_12_12.id,
		name = var_12_12.name,
		rarity = var_12_12.rarity,
		effect = var_12_12.effect,
		source = var_12_12.source,
		icon = var_12_12.icon,
		variant = {}
	}

	for iter_12_4, iter_12_5 in pairs(var_12_13) do
		if iter_12_4 ~= "chance" and iter_12_4 ~= "weight" then
			var_12_14.variant[iter_12_4] = iter_12_5
		end
	end

	return var_12_14
end

function var_0_0.rollForId(arg_13_0, arg_13_1)
	local var_13_0

	for iter_13_0, iter_13_1 in ipairs(var_0_0.catalog) do
		if iter_13_1.id == arg_13_0 then
			var_13_0 = iter_13_1

			break
		end
	end

	if not var_0_0.isUnlocked(var_13_0) then
		return nil
	end

	local var_13_1 = var_0_2(var_13_0.variants, arg_13_1)

	if not var_13_1 then
		return nil
	end

	local var_13_2 = {
		id = var_13_0.id,
		name = var_13_0.name,
		rarity = var_13_0.rarity,
		effect = var_13_0.effect,
		source = var_13_0.source,
		icon = var_13_0.icon,
		variant = {}
	}

	for iter_13_2, iter_13_3 in pairs(var_13_1) do
		if iter_13_2 ~= "chance" and iter_13_2 ~= "weight" then
			var_13_2.variant[iter_13_2] = iter_13_3
		end
	end

	return var_13_2
end

local function var_0_4(arg_14_0)
	if type(arg_14_0) ~= "table" then
		return {}
	end

	local var_14_0 = {}

	if #arg_14_0 > 0 then
		for iter_14_0, iter_14_1 in ipairs(arg_14_0) do
			if iter_14_1 ~= nil then
				var_14_0[tostring(iter_14_1)] = true
			end
		end
	else
		for iter_14_2, iter_14_3 in pairs(arg_14_0) do
			if iter_14_3 then
				var_14_0[tostring(iter_14_2)] = true
			end
		end
	end

	return var_14_0
end

function var_0_0.rollForSpawnExcluding(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4, arg_15_5, arg_15_6, arg_15_7, arg_15_8, arg_15_9)
	local var_15_0 = arg_15_1
	local var_15_1 = arg_15_2

	if type(var_15_0) == "string" and var_15_1 == nil then
		var_15_1 = var_15_0
		var_15_0 = nil
	end

	local var_15_2 = var_0_4(arg_15_0)
	local var_15_3 = var_0_0.isNudgeEnabledForRun()
	local var_15_4 = rawget(_G, "Tutorial")

	if var_15_4 and var_15_4.isRunning and var_15_4.isRunning() == true then
		var_15_2["12"] = true
		var_15_2["13"] = true
	end

	local var_15_5 = {}

	for iter_15_0, iter_15_1 in ipairs(var_0_0.catalog or {}) do
		local var_15_6 = iter_15_1 and iter_15_1.id and not var_15_2[tostring(iter_15_1.id)]
		local var_15_7 = not iter_15_1.permittedGrades or var_15_1 and iter_15_1.permittedGrades[var_15_1]
		local var_15_8 = (not iter_15_1.requiresActiveSkill or arg_15_4 == true) and (not iter_15_1.requiresAttackSkill or arg_15_6 == true) and (not iter_15_1.requiresRangedBasicAttack or arg_15_7 == true) and (not iter_15_1.requiresBountySource or arg_15_8 == true or arg_15_8 == nil and arg_15_5 == true)
		local var_15_9 = true

		if arg_15_3 then
			var_15_9 = iter_15_1.source == "Promotion" or iter_15_1.source == "Both"
		else
			var_15_9 = iter_15_1.source ~= "Promotion"
		end

		if var_15_6 and var_15_7 and var_15_9 and var_15_8 and var_0_0.isContextEligible(iter_15_1, arg_15_9, var_15_2) and (not iter_15_1.requiresNudge or var_15_3) and (not iter_15_1.requiresBasicAttack or arg_15_5 == true) then
			table.insert(var_15_5, iter_15_1)
		end
	end

	if #var_15_5 == 0 and #var_0_0.catalog > 0 then
		for iter_15_2, iter_15_3 in ipairs(var_0_0.catalog) do
			local var_15_10 = iter_15_3 and iter_15_3.id and not var_15_2[tostring(iter_15_3.id)]
			local var_15_11 = (not iter_15_3.requiresActiveSkill or arg_15_4 == true) and (not iter_15_3.requiresAttackSkill or arg_15_6 == true) and (not iter_15_3.requiresRangedBasicAttack or arg_15_7 == true) and (not iter_15_3.requiresBountySource or arg_15_8 == true or arg_15_8 == nil and arg_15_5 == true)
			local var_15_12 = true

			if arg_15_3 then
				var_15_12 = iter_15_3.source == "Promotion" or iter_15_3.source == "Both"
			else
				var_15_12 = iter_15_3.source ~= "Promotion"
			end

			if var_15_10 and var_15_12 and var_15_11 and var_0_0.isContextEligible(iter_15_3, arg_15_9, var_15_2) and (not iter_15_3.requiresNudge or var_15_3) and (not iter_15_3.requiresBasicAttack or arg_15_5 == true) then
				table.insert(var_15_5, iter_15_3)
			end
		end
	end

	local var_15_13 = var_0_3(var_15_5, var_15_0, arg_15_3)

	if not var_15_13 then
		return nil
	end

	local var_15_14 = var_0_2(var_15_13.variants, var_15_0)

	if not var_15_14 then
		return nil
	end

	local var_15_15 = {
		id = var_15_13.id,
		name = var_15_13.name,
		rarity = var_15_13.rarity,
		effect = var_15_13.effect,
		source = var_15_13.source,
		icon = var_15_13.icon,
		variant = {}
	}

	for iter_15_4, iter_15_5 in pairs(var_15_14) do
		if iter_15_4 ~= "chance" and iter_15_4 ~= "weight" then
			var_15_15.variant[iter_15_4] = iter_15_5
		end
	end

	return var_15_15
end

function var_0_0.rollList(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
	local var_16_0 = math.max(0, math.min(5, math.floor(tonumber(arg_16_0) or 0)))
	local var_16_1 = {}

	for iter_16_0 = 1, var_16_0 do
		var_16_1[iter_16_0] = var_0_0.rollForSpawn(arg_16_1, arg_16_2, nil, nil, var_0_0.canBasicAttack(arg_16_3), nil, nil, var_0_0.canEarnBounty(arg_16_3))
	end

	return var_16_1
end

function var_0_0.normalizeOption(arg_17_0)
	if not arg_17_0 then
		return arg_17_0
	end

	local var_17_0 = tostring(arg_17_0.id or "")

	if var_17_0 ~= "10" and var_17_0 ~= "15" and var_17_0 ~= "16" and var_17_0 ~= "17" and var_17_0 ~= "19" and var_17_0 ~= "22" then
		return arg_17_0
	end

	local var_17_1

	for iter_17_0, iter_17_1 in ipairs(var_0_0.catalog or {}) do
		if tostring(iter_17_1.id or "") == var_17_0 then
			var_17_1 = iter_17_1

			break
		end
	end

	if var_17_1 then
		arg_17_0.name = var_17_1.name
		arg_17_0.rarity = var_17_1.rarity
		arg_17_0.effect = var_17_1.effect
		arg_17_0.source = var_17_1.source
		arg_17_0.icon = var_17_1.icon
	end

	if var_17_0 == "10" and arg_17_0.variant and arg_17_0.variant.value then
		local var_17_2 = tonumber(tostring(arg_17_0.variant.value):match("[-+]?%d+%.?%d*"))

		if var_17_2 and var_17_2 >= 0.4 and var_17_2 <= 0.8 then
			local var_17_3 = math.max(0, math.min(4, math.floor((var_17_2 - 0.4) * 10 + 0.5)))

			arg_17_0.variant.value = ("+%d%%"):format(3 + var_17_3)
		end
	elseif var_17_0 == "15" then
		arg_17_0.variant = arg_17_0.variant or {}
		arg_17_0.variant.value = "+20%"
		arg_17_0.variant.damageReduction = "-20%"
	elseif var_17_0 == "16" then
		arg_17_0.variant = arg_17_0.variant or {}

		local var_17_4 = tostring(arg_17_0.variant.value or "")

		if not tonumber(var_17_4:match("%d+%.?%d*")) then
			arg_17_0.variant.value = "4%"
		end
	elseif var_17_0 == "17" then
		arg_17_0.variant = arg_17_0.variant or {}

		local var_17_5 = tonumber(tostring(arg_17_0.variant.value or ""):match("[-+]?%d+%.?%d*"))
		local var_17_6 = {
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			"-3%",
			nil,
			"-4%",
			nil,
			"-5%",
			nil,
			"-6%",
			nil,
			"-7%"
		}

		if not var_17_6[var_17_5] then
			var_17_5 = 8
			arg_17_0.variant.value = "+8%"
		end

		arg_17_0.variant.damageReduction = var_17_6[var_17_5]
	elseif var_17_0 == "19" then
		arg_17_0.variant = arg_17_0.variant or {}

		local var_17_7 = tonumber(tostring(arg_17_0.variant.value or ""):match("[-+]?%d+%.?%d*"))

		if not ({
			[15] = true,
			[25] = true,
			[20] = true,
			[30] = true,
			[35] = true
		})[var_17_7] then
			arg_17_0.variant.value = "+15%"
		end
	elseif var_17_0 == "22" then
		arg_17_0.variant = arg_17_0.variant or {}

		local var_17_8 = math.abs(tonumber(tostring(arg_17_0.variant.value or ""):match("[-+]?%d+%.?%d*")) or 0)

		if not ({
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			true,
			nil,
			true,
			nil,
			true,
			nil,
			true
		})[var_17_8] then
			var_17_8 = 8
		end

		arg_17_0.variant.value = ("-%d%%"):format(var_17_8)
	end

	return arg_17_0
end

function var_0_0.getIconPath(arg_18_0)
	arg_18_0 = var_0_0.normalizeOption(arg_18_0)

	return arg_18_0 and arg_18_0.icon or nil
end

return var_0_0
