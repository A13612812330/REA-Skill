local var_0_0 = {}
local var_0_1 = {
	"C",
	"B",
	"A"
}

var_0_0.CARD_GRADES = var_0_1
var_0_0.GRADE_ORDER = {
	"normal",
	"advanced",
	"rare",
	"legendary",
	"prism"
}

local var_0_2 = {
	C = {
		difficulty = "하",
		questNumbers = {
			1,
			2,
			6,
			11
		}
	},
	B = {
		difficulty = "중",
		questNumbers = {
			13,
			14,
			15,
			16,
			17,
			18,
			19,
			20,
			21,
			22,
			23
		}
	},
	A = {
		difficulty = "상",
		questNumbers = {
			24,
			25,
			26,
			27,
			28
		}
	}
}

var_0_2.S = var_0_2.A

local var_0_3 = "src/sprites/icons/stoneicon/"

local function var_0_4(arg_1_0, arg_1_1, arg_1_2, arg_1_3, arg_1_4)
	return {
		normal = arg_1_0,
		advanced = arg_1_1,
		rare = arg_1_2,
		legendary = arg_1_3,
		prism = arg_1_4
	}
end

var_0_0.defs = {
	{
		name = "근원 스톤",
		grade = "C",
		id = "01",
		key = "OriginStone",
		desc = "유닛 1명이 나옵니다. 가장 기본적인 운명 스톤입니다.",
		icon = var_0_3 .. "01Origin Stone.png",
		glowColor = {
			0.35,
			0.75,
			1,
			1
		},
		probs = var_0_4(0.55, 0.33, 0.11, 0.008, 0.002)
	},
	{
		grade = "C",
		name = "미풍 스톤",
		id = "02",
		key = "BreezeStone",
		unlock = "stonebreeze",
		desc = "유닛 1명이 나옵니다. 고급 대신 희귀를 노립니다.",
		icon = var_0_3 .. "02Breeze Stone.png",
		glowColor = {
			0.55,
			0.9,
			0.85,
			1
		},
		probs = var_0_4(0.7, 0.1, 0.18, 0.017, 0.003)
	},
	{
		id = "03",
		name = "쌍둥이 스톤",
		grade = "C",
		key = "TwinStone",
		unlock = "stonetwin",
		lines = 2,
		desc = "유닛 2명이 나옵니다. 한 명마다 아래 확률을 따릅니다.",
		icon = var_0_3 .. "03Twin Stone.png",
		glowColor = {
			0.85,
			0.7,
			0.95,
			1
		},
		probs = var_0_4(0.7, 0.24, 0.055, 0.004, 0.001)
	},
	{
		grade = "C",
		name = "점괘 스톤",
		id = "04",
		key = "OmenStone",
		unlock = "stoneomen",
		pick = 3,
		desc = "후보 3명이 공개되고 그중 1명을 고릅니다. 후보마다 아래 확률을 따릅니다.",
		icon = var_0_3 .. "04Omen Stone.png",
		glowColor = {
			0.45,
			0.65,
			1,
			1
		},
		probs = var_0_4(0.55, 0.33, 0.11, 0.008, 0.002)
	},
	{
		name = "마일 스톤",
		grade = "B",
		id = "08",
		key = "MileStone",
		desc = "유닛 1명이 나옵니다. 중급 운명 스톤입니다.",
		icon = var_0_3 .. "08Milestone.png",
		glowColor = {
			0.8,
			0.8,
			0.8,
			1
		},
		probs = var_0_4(0.4, 0.38, 0.19, 0.025, 0.005)
	},
	{
		grade = "B",
		name = "균열 스톤",
		id = "09",
		key = "RiftStone",
		unlock = "stonerift",
		desc = "유닛 1명이 나옵니다. 일반 아니면 전설/프리즘!",
		icon = var_0_3 .. "09Rift Stone.png",
		glowColor = {
			0.75,
			0.4,
			1,
			1
		},
		probs = var_0_4(0.9, 0, 0, 0.09, 0.01)
	},
	{
		id = "10",
		name = "특수 스톤",
		grade = "B",
		key = "SpecialStone",
		special = 0.15,
		unlock = "stonespecial",
		desc = "유닛 1명이 나옵니다. 15% 확률로 특수 유닛이 나옵니다.",
		icon = var_0_3 .. "10Special Stone.png",
		glowColor = {
			0.94,
			0.31,
			0.85,
			1
		},
		probs = var_0_4(0.35, 0.3, 0.17, 0.025, 0.005)
	},
	{
		name = "숙련 스톤",
		grade = "B",
		id = "11",
		key = "MasteryStone",
		unlock = "stonemastery",
		desc = "유닛 1명이 2성으로 바로 등장합니다. 두 갈래 중 클래스를 고릅니다.",
		rankTarget = 2,
		icon = var_0_3 .. "11Mastery Stone.png",
		glowColor = {
			1,
			0.7,
			0.4,
			1
		},
		probs = var_0_4(0.6, 0.3, 0.09, 0.008, 0.002)
	},
	{
		name = "축복 스톤",
		grade = "A",
		id = "14",
		key = "BlessingStone",
		desc = "유닛 1명이 나옵니다. 상급 운명 스톤입니다.",
		icon = var_0_3 .. "14Blessing Stone.png",
		glowColor = {
			1,
			0.84,
			0,
			1
		},
		probs = var_0_4(0.2, 0.45, 0.28, 0.06, 0.01)
	},
	{
		grade = "A",
		name = "승부 스톤",
		id = "15",
		key = "GambitStone",
		unlock = "stonegambit",
		desc = "유닛 1명이 나옵니다. 고급 아니면 전설/프리즘!",
		icon = var_0_3 .. "15Gambit Stone.png",
		glowColor = {
			1,
			0.35,
			0.3,
			1
		},
		probs = var_0_4(0, 0.85, 0, 0.135, 0.015)
	},
	{
		id = "16",
		name = "별무리 스톤",
		grade = "A",
		key = "ConstellationStone",
		unlock = "stoneconstellation",
		lines = 3,
		desc = "유닛 3명이 나옵니다. 한 명마다 아래 확률을 따릅니다.",
		icon = var_0_3 .. "16Constellation Stone.png",
		glowColor = {
			1,
			0.9,
			0.45,
			1
		},
		probs = var_0_4(0.4, 0.42, 0.15, 0.026, 0.004)
	},
	{
		grade = "A",
		name = "성역 스톤",
		id = "17",
		key = "SanctumStone",
		unlock = "stonesanctum",
		desc = "유닛 1명이 나옵니다. 희귀 이상이 확정됩니다.",
		icon = var_0_3 .. "17Sanctum Stone.png",
		glowColor = {
			0.85,
			0.92,
			1,
			1
		},
		probs = var_0_4(0, 0, 0.97, 0.027, 0.003)
	},
	{
		grade = "S",
		name = "정점 스톤",
		id = "20",
		infiniteOnly = true,
		key = "ZenithStone",
		desc = "유닛 1명이 나옵니다. 최상급 운명 스톤입니다.",
		icon = var_0_3 .. "20Zenith Stone.png",
		glowColor = {
			1,
			1,
			1,
			1
		},
		probs = var_0_4(0, 0.2, 0.6, 0.17, 0.03)
	},
	{
		grade = "S",
		name = "일식 스톤",
		id = "21",
		infiniteOnly = true,
		key = "EclipseStone",
		desc = "유닛 1명이 나옵니다. 전설은 나오지 않고 프리즘을 노립니다.",
		icon = var_0_3 .. "21Eclipse Stone.png",
		glowColor = {
			1,
			0.6,
			0.2,
			1
		},
		probs = var_0_4(0, 0.5, 0.45, 0, 0.05)
	},
	{
		rankTarget = 3,
		name = "은하 스톤",
		grade = "S",
		infiniteOnly = true,
		key = "GalaxyStone",
		id = "22",
		desc = "유닛 1명이 3성으로 바로 등장합니다. 두 갈래 중 클래스를 고릅니다.",
		icon = var_0_3 .. "22Galaxy Stone.png",
		glowColor = {
			0.7,
			0.5,
			1,
			1
		},
		probs = var_0_4(0, 0.45, 0.45, 0.085, 0.015)
	}
}

local var_0_5 = {}

for iter_0_0, iter_0_1 in ipairs(var_0_0.defs) do
	iter_0_1.questRequirements = var_0_2[iter_0_1.grade]
	iter_0_1.effect = {
		type = "unit_spawn_probability",
		probabilities = iter_0_1.probs
	}
	var_0_5[iter_0_1.key] = iter_0_1
	var_0_5[iter_0_1.id] = iter_0_1
end

function var_0_0.getAll()
	return var_0_0.defs
end

function var_0_0.get(arg_3_0)
	return var_0_5[arg_3_0]
end

function var_0_0.gradeOfCard(arg_4_0)
	return var_0_1[arg_4_0]
end

local function var_0_6()
	local var_5_0 = package.loaded["src.ui.upgrade"]

	if var_5_0 then
		return var_5_0
	end

	local var_5_1, var_5_2 = pcall(require, "src.ui.upgrade")

	return var_5_1 and var_5_2 or nil
end

local function var_0_7()
	local var_6_0 = rawget(_G, "battlefield")

	return var_6_0 and var_6_0.sandboxMode == true
end

function var_0_0.isSystemUnlocked(arg_7_0)
	if arg_7_0 and arg_7_0.sandboxMode == true or not arg_7_0 and var_0_7() then
		return true
	end

	if rawget(_G, "GameEditionMode") == "demo" then
		return false
	end

	local var_7_0 = var_0_6()

	return var_7_0 and var_7_0.isOwned and var_7_0.isOwned("fatestone") or false
end

function var_0_0.isUnlocked(arg_8_0)
	if not arg_8_0 then
		return false
	end

	if not arg_8_0.unlock or var_0_7() then
		return true
	end

	local var_8_0 = var_0_6()

	return var_8_0 and var_8_0.isOwned and var_8_0.isOwned(arg_8_0.unlock) or false
end

function var_0_0.poolForGrade(arg_9_0)
	local var_9_0 = {}

	for iter_9_0, iter_9_1 in ipairs(var_0_0.defs) do
		if iter_9_1.grade == arg_9_0 and not iter_9_1.infiniteOnly and var_0_0.isUnlocked(iter_9_1) then
			var_9_0[#var_9_0 + 1] = iter_9_1
		end
	end

	return var_9_0
end

function var_0_0.pickForGrade(arg_10_0, arg_10_1)
	local var_10_0 = var_0_0.poolForGrade(arg_10_0)

	if #var_10_0 == 0 then
		return nil
	end

	arg_10_1 = arg_10_1 or love.math.random

	return var_10_0[arg_10_1(#var_10_0)]
end

function var_0_0.getRandomQuestNumber(arg_11_0, arg_11_1)
	local var_11_0 = var_0_0.get(arg_11_0)

	if var_11_0 and var_11_0.questRequirements then
		local var_11_1 = var_11_0.questRequirements.questNumbers

		if var_11_1 and #var_11_1 > 0 then
			if arg_11_1 then
				local var_11_2 = require("src.game.quest").byDifficulty[var_11_0.questRequirements.difficulty]

				if var_11_2 then
					local var_11_3 = {}

					for iter_11_0, iter_11_1 in ipairs(var_11_1) do
						for iter_11_2, iter_11_3 in ipairs(var_11_2) do
							if iter_11_3.number == iter_11_1 then
								if not iter_11_3.appearanceCondition or iter_11_3.appearanceCondition(arg_11_1) then
									var_11_3[#var_11_3 + 1] = iter_11_1
								end

								break
							end
						end
					end

					if #var_11_3 > 0 then
						return var_11_3[love.math.random(#var_11_3)]
					end
				end
			end

			return var_11_1[love.math.random(#var_11_1)]
		end
	end

	return nil
end

function var_0_0.getQuestDef(arg_12_0, arg_12_1)
	local var_12_0 = var_0_0.get(arg_12_0)

	if not var_12_0 or not var_12_0.questRequirements then
		return nil
	end

	local var_12_1 = require("src.game.quest").byDifficulty[var_12_0.questRequirements.difficulty]

	if not var_12_1 then
		return nil
	end

	for iter_12_0, iter_12_1 in ipairs(var_12_1) do
		if iter_12_1.number == arg_12_1 then
			return iter_12_1
		end
	end

	return nil
end

function var_0_0.cardStone(arg_13_0, arg_13_1, arg_13_2)
	local var_13_0 = var_0_1[arg_13_1]

	if not arg_13_0 or not var_13_0 then
		return nil
	end

	arg_13_0._stoneQuests = arg_13_0._stoneQuests or {}

	for iter_13_0 in pairs(arg_13_0._stoneQuests) do
		local var_13_1 = var_0_0.get(iter_13_0)

		if var_13_1 and var_13_1.grade == var_13_0 then
			return var_13_1
		end
	end

	local var_13_2 = var_0_0.pickForGrade(var_13_0)

	if var_13_2 then
		arg_13_0._stoneQuests[var_13_2.key] = var_0_0.getRandomQuestNumber(var_13_2.key, arg_13_2)
	end

	return var_13_2
end

function var_0_0.applySpawnEffect(arg_14_0, arg_14_1)
	local var_14_0 = var_0_0.get(arg_14_0)

	return var_14_0 and var_14_0.probs or arg_14_1
end

function var_0_0.visualKey(arg_15_0)
	local var_15_0 = var_0_0.get(arg_15_0)
	local var_15_1 = var_15_0 and var_15_0.grade

	if var_15_1 == "B" then
		return "MileStone"
	end

	if var_15_1 == "A" or var_15_1 == "S" then
		return "BlessingStone"
	end

	return "OriginStone"
end

function var_0_0.makePack(arg_16_0)
	local var_16_0 = var_0_0.get(arg_16_0)

	if not var_16_0 then
		return nil
	end

	return {
		key = var_16_0.key,
		probs = var_16_0.probs,
		special = var_16_0.special,
		lines = var_16_0.lines,
		pick = var_16_0.pick,
		rankTarget = var_16_0.rankTarget
	}
end

var_0_0.SPECIAL_SYMBOLS = {
	"Joker"
}

function var_0_0.rollUnit(arg_17_0, arg_17_1)
	arg_17_1 = arg_17_1 or love.math.random

	local var_17_0 = arg_17_0 and arg_17_0.probs or {}
	local var_17_1 = math.max(0, tonumber(arg_17_0 and arg_17_0.special or 0) or 0)
	local var_17_2 = var_17_1

	for iter_17_0, iter_17_1 in ipairs(var_0_0.GRADE_ORDER) do
		var_17_2 = var_17_2 + math.max(0, tonumber(var_17_0[iter_17_1] or 0) or 0)
	end

	if var_17_2 <= 0 then
		return "normal", 1
	end

	local var_17_3 = arg_17_1() * var_17_2

	if var_17_1 > 0 then
		if var_17_3 < var_17_1 then
			return "special", var_17_1 / var_17_2
		end

		var_17_3 = var_17_3 - var_17_1
	end

	local var_17_4 = 0
	local var_17_5 = "normal"

	for iter_17_2, iter_17_3 in ipairs(var_0_0.GRADE_ORDER) do
		local var_17_6 = math.max(0, tonumber(var_17_0[iter_17_3] or 0) or 0)

		if var_17_6 > 0 then
			var_17_4 = var_17_4 + var_17_6
			var_17_5 = iter_17_3

			if var_17_3 < var_17_4 then
				return iter_17_3, var_17_6 / var_17_2
			end
		end
	end

	return var_17_5, math.max(0, tonumber(var_17_0[var_17_5] or 0) or 0) / var_17_2
end

function var_0_0.armSpin(arg_18_0, arg_18_1)
	if not arg_18_0 or not arg_18_1 then
		return
	end

	local var_18_0 = arg_18_1.pack or var_0_0.makePack(arg_18_1.stoneKey)

	arg_18_1.pack = var_18_0

	if not var_18_0 then
		arg_18_0.forceWinOnce = true

		return
	end

	arg_18_0.stonePackOnce = var_18_0
	arg_18_0.stoneWinLinesOnce = var_18_0.pick and 1 or math.max(1, math.floor(tonumber(var_18_0.lines or 1) or 1))
	arg_18_0.forceWinOnce = true
end

local function var_0_8(arg_19_0)
	local var_19_0 = {}

	for iter_19_0, iter_19_1 in pairs(arg_19_0 or {}) do
		var_19_0[iter_19_0] = iter_19_1
	end

	return var_19_0
end

local var_0_9 = {
	"W",
	"A",
	"S",
	"M",
	"H",
	"D"
}

local function var_0_10(arg_20_0, arg_20_1)
	local var_20_0 = require("src.data.constants")
	local var_20_1 = var_20_0.slot and var_20_0.slot.symbolWeights or {}
	local var_20_2 = 0

	for iter_20_0, iter_20_1 in ipairs(var_0_9) do
		if not arg_20_1[iter_20_1] then
			var_20_2 = var_20_2 + math.max(0, tonumber(var_20_1[iter_20_1] or 0) or 0)
		end
	end

	local var_20_3 = arg_20_0() * var_20_2
	local var_20_4

	for iter_20_2, iter_20_3 in ipairs(var_0_9) do
		if not arg_20_1[iter_20_3] then
			var_20_4 = iter_20_3
			var_20_3 = var_20_3 - math.max(0, tonumber(var_20_1[iter_20_3] or 0) or 0)

			if var_20_3 < 0 then
				return iter_20_3
			end
		end
	end

	return var_20_4
end

function var_0_0.rollPickCandidates(arg_21_0, arg_21_1, arg_21_2)
	arg_21_2 = arg_21_2 or love.math.random

	local var_21_0 = require("src.data.randomoption")
	local var_21_1 = {}
	local var_21_2 = {}
	local var_21_3 = {}
	local var_21_4 = math.max(1, math.min(3, math.floor(tonumber(arg_21_0 and arg_21_0.pick or 3) or 3)))

	for iter_21_0 = 1, var_21_4 do
		local var_21_5 = iter_21_0 == 1 and arg_21_1 and arg_21_1 ~= "Joker" and arg_21_1 ~= "J" and arg_21_1 or var_0_10(arg_21_2, var_21_1)

		var_21_1[var_21_5] = true

		local var_21_6, var_21_7 = var_0_0.rollUnit({
			probs = arg_21_0.probs
		}, arg_21_2)
		local var_21_8 = var_21_0.rollForSpawnExcluding(var_21_2, nil, var_21_6, nil, false, true)

		if var_21_8 and var_21_8.id then
			var_21_2[tostring(var_21_8.id)] = true
		end

		var_21_3[iter_21_0] = {
			rank = 1,
			sym = var_21_5,
			grade = var_21_6,
			gradeChance = var_21_7,
			randomOption = var_21_8,
			randomOptions = var_21_8 and {
				var_21_8
			} or nil
		}
	end

	return var_21_3
end

local function var_0_11(arg_22_0)
	local var_22_0 = rawget(_G, "battlefield")

	if not var_22_0 or not var_22_0.openMercContractSelection or var_22_0.classSelect then
		return false
	end

	local var_22_1 = var_22_0.wave and tonumber(var_22_0.wave.id) or 0
	local var_22_2 = var_22_0:openMercContractSelection(arg_22_0, var_22_1, function(arg_23_0)
		if not arg_23_0 or not var_22_0.spawn then
			return false
		end

		if not pcall(function()
			var_22_0:spawn(arg_23_0.sym, 1, {
				rankOverride = 1,
				needsClassSelect = false,
				grade = arg_23_0.grade,
				gradeChance = arg_23_0.gradeChance,
				randomOptions = arg_23_0.randomOptions,
				specialJackpot5th = arg_23_0.grade == "prism" or nil
			})
		end) then
			return false
		end

		if type(rawget(_G, "playButtonClickSound")) == "function" then
			playButtonClickSound()
		end

		return true
	end, {
		titleKey = "stone.name.OmenStone",
		stonePick = true
	})

	if var_22_2 then
		local var_22_3 = package.loaded["src.ui.render"]
		local var_22_4 = rawget(_G, "loadedAssets")

		if var_22_3 and var_22_3.prepareClassSelectionModalAssets and var_22_0.classSelect then
			var_22_0.classSelect._assetsPrepared = var_22_3.prepareClassSelectionModalAssets(var_22_4, var_22_0.classSelect) == true
		end
	end

	return var_22_2
end

function var_0_0.spawnPackLine(arg_25_0, arg_25_1, arg_25_2, arg_25_3, arg_25_4)
	local var_25_0 = arg_25_0 and arg_25_0.stonePack

	if not var_25_0 or type(arg_25_4) ~= "function" then
		return false
	end

	arg_25_2 = math.max(0, math.floor(tonumber(arg_25_2 or 0) or 0))

	if arg_25_2 <= 0 then
		return true
	end

	if var_25_0.pick then
		if arg_25_0._stonePickOpened then
			return true
		end

		arg_25_0._stonePickOpened = true

		local var_25_1 = var_0_0.rollPickCandidates(var_25_0, arg_25_1)

		if not var_0_11(var_25_1) then
			var_0_0._pendingPick = var_25_1
		end

		return true
	end

	for iter_25_0 = 1, arg_25_2 do
		local var_25_2, var_25_3 = var_0_0.rollUnit(var_25_0)
		local var_25_4 = var_0_8(arg_25_3)

		var_25_4.specialJackpot5th = nil

		if var_25_2 == "special" then
			local var_25_5 = var_0_0.SPECIAL_SYMBOLS

			arg_25_4(var_25_5[love.math.random(#var_25_5)], 1, var_25_4)
		else
			var_25_4.grade = var_25_2
			var_25_4.gradeChance = var_25_3

			if var_25_2 == "prism" then
				var_25_4.specialJackpot5th = true
			end

			if var_25_0.rankTarget and var_25_0.rankTarget > 1 then
				var_25_4.stoneRankTarget = var_25_0.rankTarget
			end

			arg_25_4(arg_25_1, 1, var_25_4)
		end
	end

	return true
end

function var_0_0.update()
	if var_0_0._pendingPick and var_0_11(var_0_0._pendingPick) then
		var_0_0._pendingPick = nil
	end
end

function var_0_0.clearPending()
	var_0_0._pendingPick = nil
end

function var_0_0.useCard(arg_28_0, arg_28_1)
	local var_28_0 = rawget(_G, "ui")
	local var_28_1 = rawget(_G, "slot")
	local var_28_2 = rawget(_G, "battlefield")

	if not var_28_0 or not var_28_1 or not var_28_2 or not arg_28_1 then
		return false
	end

	if var_28_2.mode == "battle" or var_28_2.gameOver or var_28_2.classSelect then
		return false
	end

	if var_28_0._stoneActivated and var_28_0._stoneActivated.active then
		return false
	end

	if var_28_1.spin and var_28_1.spin.active then
		return false
	end

	if var_28_1.result and var_28_1.result.winSeq and var_28_1.result.winSeq.active then
		return false
	end

	var_28_0._ownedStones = var_28_0._ownedStones or {
		0,
		0,
		0
	}

	if (var_28_0._ownedStones[arg_28_0] or 0) >= 1 then
		return false
	end

	var_28_0._ownedStones[arg_28_0] = 1
	var_28_0._stoneMode = false
	var_28_0._stoneActivated = {
		fadeInDur = 0.5,
		t = 0,
		autoSpin = true,
		fadeOutDur = 0.4,
		phase = "fadein",
		active = true,
		stoneKey = arg_28_1.key,
		probs = arg_28_1.probs,
		pack = var_0_0.makePack(arg_28_1.key),
		cardIndex = arg_28_0
	}
	_G.freeSpinCredits = math.max(0, tonumber(rawget(_G, "freeSpinCredits") or 0) or 0) + 1

	if type(rawget(_G, "playStoneSlotModSound")) == "function" then
		playStoneSlotModSound()
	end

	return true
end

return var_0_0
