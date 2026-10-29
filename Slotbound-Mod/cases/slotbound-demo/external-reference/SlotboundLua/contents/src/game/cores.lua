local var_0_0 = require("src.data.constants")
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
	"C",
	"U",
	"R",
	"L"
}
local var_0_4 = {
	C = 1,
	R = 3,
	L = 4,
	U = 2
}
local var_0_5 = {
	{
		C = 80,
		R = 2,
		L = 0,
		U = 18
	},
	{
		C = 74,
		R = 4.5,
		L = 0.5,
		U = 21
	},
	{
		C = 68,
		R = 7,
		L = 1,
		U = 24
	},
	{
		C = 60,
		R = 10,
		L = 2,
		U = 28
	},
	{
		C = 52,
		R = 14,
		L = 3,
		U = 31
	},
	{
		C = 44,
		R = 19,
		L = 4,
		U = 33
	},
	{
		C = 36,
		R = 24,
		L = 6,
		U = 34
	},
	{
		C = 30,
		R = 28,
		L = 7,
		U = 35
	}
}
local var_0_6 = {
	["02"] = true,
	["09"] = true,
	["12"] = true,
	["20"] = true,
	["25"] = true,
	["50"] = true,
	["19"] = true,
	["11"] = true,
	["45"] = true,
	["44"] = true,
	["42"] = true,
	["40"] = true,
	["39"] = true,
	["26"] = true,
	["08"] = true,
	["05"] = true,
	["04"] = true,
	["01"] = true,
	["06"] = true,
	["51"] = true,
	["55"] = true,
	["59"] = true,
	["64"] = true,
	["03"] = true
}
local var_0_7 = {
	{
		desc = "매 웨이브 첫 스핀 당첨 실패 시 그 스핀을 무료로 한 번 다시 굴립니다.",
		spawnChance = 0.06,
		icon = "src/sprites/icons/relics icon/core icons/01 Twisted Bell.png",
		triggerText = "웨이브당 1회",
		name = "뒤틀린 방울 (Twisted Bell)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "01",
		key = "TwistedBell"
	},
	{
		desc = "당첨 실패가 2회 쌓이면 다음 스핀에서 가장 많이 나온 심볼의 등장 확률이 12% 증가합니다.",
		spawnChance = 0.06,
		icon = "src/sprites/icons/relics icon/core icons/02 Rootshroom.png",
		triggerText = "당첨 실패 2회마다",
		name = "붙박이버섯 (Rootshroom)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "02",
		key = "Rootshroom"
	},
	{
		desc = "대각선 라인으로 당첨되면 다음 스핀에서 당첨 심볼의 등장 확률이 10% 증가합니다.",
		spawnChance = 0.055,
		icon = "src/sprites/icons/relics icon/core icons/03 Diagonal Core.png",
		triggerText = "스핀당 1회",
		name = "대각의 결정 (Diagonal Core)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "03",
		key = "DiagonalCore"
	},
	{
		desc = "세로 라인으로 당첨되면 다음 스핀 비용이 오르지 않습니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/04 Vertical Core.png",
		triggerText = "스핀당 1회",
		name = "수직의 결정 (Vertical Core)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "04",
		key = "VerticalCore"
	},
	{
		desc = "가로 라인으로 당첨되면 다음 스핀 비용이 40% 감소합니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/05 Horizontal Core.png",
		triggerText = "스핀당 1회",
		name = "수평의 결정 (Horizontal Core)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "05",
		key = "HorizontalCore"
	},
	{
		desc = "각 웨이브의 4번째 스핀 비용이 50% 감소합니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/06 Final Trail.png",
		triggerText = "웨이브당 1회",
		name = "막판의 꼬리 (Final Trail)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "06",
		key = "FinalTrail"
	},
	{
		desc = "당첨에 실패했지만 같은 심볼이 4개 이상 나오면 {essence.png} +1을 얻습니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/08 Echo Mirror.png",
		triggerText = "웨이브당 1회",
		name = "다중의 거울 (Echo Mirror)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "08",
		key = "MultiEchoMirror"
	},
	{
		desc = "매 웨이브 첫 당첨 심볼의 등장 확률이 그 웨이브 동안 8% 증가합니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/9 Harvest Flag.png",
		triggerText = "웨이브당 1회",
		name = "수확의 깃발 (Harvest Flag)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "09",
		key = "HarvestFlag"
	},
	{
		desc = "매 웨이브 첫 흡수 후 다음 스핀 비용이 50% 감소합니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/11 Nutrient Leaf.png",
		triggerText = "웨이브당 1회",
		name = "양분의 잎 (Nutrient Leaf)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "11",
		key = "NutrientLeaf"
	},
	{
		desc = "처음 {pwr.png} 2 유닛을 만들면 그 심볼의 등장 확률이 런 동안 5% 증가합니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/12 Old Crown.png",
		triggerText = "한 판 1회",
		name = "낡은 왕관 (Old Crown)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "12",
		key = "OldCrown"
	},
	{
		desc = "매 웨이브 첫 당첨 후 다음 스핀 비용이 50% 감소합니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/19 Resonoscope.png",
		triggerText = "웨이브당 1회",
		name = "동조의 망원경 (Resonoscope)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "19",
		key = "ResonoscopeChain"
	},
	{
		desc = "넛지로 당첨을 만들지 못하면 다음 스핀 이후 1회 돌려받습니다.",
		spawnChance = 0.05,
		icon = "src/sprites/icons/relics icon/core icons/20 Spare Battery.png",
		triggerText = "웨이브당 1회",
		name = "예비 전지 (Spare Battery)",
		iconH = 32,
		rarity = "C",
		duration = 0,
		iconW = 32,
		id = "20",
		key = "SpareBattery"
	},
	{
		desc = "슬롯 칸마다 2% 확률로 {joker_tooltip.png} 이 등장합니다.",
		spawnChance = 0.04,
		icon = "src/sprites/icons/relics icon/core icons/25 Joker Seed.png",
		triggerText = "상시",
		name = "조커의 씨앗 (Joker Seed)",
		iconH = 32,
		rarity = "U",
		duration = 0,
		iconW = 32,
		id = "25",
		key = "JokerSeed"
	},
	{
		desc = "스핀 6번째마다 {joker_tooltip.png} 1개가 반드시 등장합니다.",
		spawnChance = 0.04,
		icon = "src/sprites/icons/relics icon/core icons/26 Torn Note.png",
		triggerText = "6번째 스핀마다",
		name = "찢어진 쪽지 (Torn Note)",
		iconH = 32,
		rarity = "U",
		duration = 0,
		iconW = 32,
		id = "26",
		key = "TornNote"
	},
	{
		desc = "3번째 이후 스핀에서 당첨에 실패하면 넛지를 1회 얻습니다.",
		spawnChance = 0.04,
		icon = "src/sprites/icons/relics icon/core icons/39 Rebound Axis.png",
		triggerText = "웨이브당 1회",
		name = "반동축 (Rebound Axis)",
		iconH = 32,
		rarity = "U",
		duration = 0,
		iconW = 32,
		id = "39",
		key = "ReboundAxis"
	},
	{
		desc = "당첨에 실패하면 다음 스핀 비용이 {gold.png} 25 감소합니다.",
		spawnChance = 0.04,
		icon = "src/sprites/icons/relics icon/core icons/40 Rewind Clock.png",
		triggerText = "당첨 실패 시",
		name = "되감는 시계 (Rewind Clock)",
		iconH = 32,
		rarity = "U",
		duration = 0,
		iconW = 32,
		id = "40",
		key = "RewindClock"
	},
	{
		desc = "한 웨이브에서 두 번째 당첨 스핀이 나오면 다음 상점 리롤 비용이 0이 됩니다.",
		spawnChance = 0.04,
		icon = "src/sprites/icons/relics icon/core icons/42 Double Ledger.png",
		triggerText = "두 번째 당첨",
		name = "이중 장부 (Double Ledger)",
		iconH = 32,
		rarity = "U",
		duration = 0,
		iconW = 32,
		id = "42",
		key = "DoubleLedger"
	},
	{
		desc = "직전 당첨과 같은 심볼로 다시 당첨되면 해당 유닛을 1명 추가로 소환합니다.",
		spawnChance = 0.04,
		icon = "src/sprites/icons/relics icon/core icons/44 Echo Lantern.png",
		triggerText = "직전 심볼 재당첨",
		name = "메아리 등불 (Echo Lantern)",
		iconH = 32,
		rarity = "U",
		duration = 0,
		iconW = 32,
		id = "44",
		key = "EchoLantern"
	},
	{
		desc = "매 웨이브 첫 스핀에 {joker_tooltip.png} 1개가 반드시 등장합니다.",
		spawnChance = 0.03,
		icon = "src/sprites/icons/relics icon/core icons/45 Black Note.png",
		triggerText = "웨이브 첫 스핀",
		name = "검은 쪽지 (Black Note)",
		iconH = 32,
		rarity = "R",
		duration = 0,
		iconW = 32,
		id = "45",
		key = "BlackNote"
	},
	{
		desc = "당첨된 심볼이 슬롯에 4개 이상 있으면 해당 유닛을 1명 추가로 소환합니다.",
		spawnChance = 0.03,
		icon = "src/sprites/icons/relics icon/core icons/50 Resonant Anvil.png",
		triggerText = "같은 심볼 4개 이상",
		name = "공명의 모루 (Resonant Anvil)",
		iconH = 32,
		rarity = "R",
		duration = 0,
		iconW = 32,
		id = "50",
		key = "ResonantAnvil"
	},
	{
		desc = "한 스핀에서 2줄 이상 당첨되면 당첨 유닛 1명을 추가로 소환합니다.",
		spawnChance = 0.03,
		icon = "src/sprites/icons/relics icon/core icons/51 Splintered Torch.png",
		triggerText = "2줄 이상 당첨",
		name = "갈라진 횃불 (Splintered Torch)",
		iconH = 32,
		rarity = "R",
		duration = 0,
		iconW = 32,
		id = "51",
		key = "SplinteredTorch"
	},
	{
		desc = "매 웨이브 첫 흡수 후, 다음 스핀에 흡수로 사라진 유닛의 계열 심볼 3개가 등장합니다.",
		spawnChance = 0.03,
		icon = "src/sprites/icons/relics icon/core icons/55 Bloodline Seal.png",
		triggerText = "웨이브 첫 흡수",
		name = "혈통의 인장 (Bloodline Seal)",
		iconH = 32,
		rarity = "R",
		duration = 0,
		iconW = 32,
		id = "55",
		key = "BloodlineSeal"
	},
	{
		desc = "슬롯 칸마다 3% 확률로 {joker_tooltip.png} 가 등장하고, {joker_tooltip.png} 로 당첨되면 당첨된 심볼의 유닛을 1명 추가로 소환합니다.",
		spawnChance = 0.02,
		icon = "src/sprites/icons/relics icon/core icons/59 Wildcard.png",
		triggerText = "조커 당첨",
		name = "와일드카드 (Wildcard)",
		iconH = 32,
		rarity = "L",
		duration = 0,
		iconW = 32,
		id = "59",
		key = "Wildcard"
	},
	{
		desc = "매 웨이브 첫 유닛 소환 후, 이번 웨이브의 다음 스핀 비용이 0이 됩니다.",
		spawnChance = 0.02,
		icon = "src/sprites/icons/relics icon/core icons/64 Entropy Spoon.png",
		triggerText = "웨이브 첫 유닛 소환",
		name = "혼돈의 숟가락 (Entropy Spoon)",
		iconH = 32,
		rarity = "L",
		duration = 0,
		iconW = 32,
		id = "64",
		key = "EntropySpoonFreeSpin"
	}
}
local var_0_8 = {
	_weightsApplied = false,
	active = {},
	iconCache = {},
	iconDataCache = {}
}

local function var_0_9(arg_1_0)
	local var_1_0 = 0
	local var_1_1 = tonumber(arg_1_0 or 0) or 0

	return function()
		while var_1_0 < #var_0_8.active do
			var_1_0 = var_1_0 + 1

			local var_2_0 = var_0_8.active[var_1_0]
			local var_2_1 = tonumber(var_2_0 and var_2_0.startWave)

			if var_2_0 and (not var_2_1 or var_2_1 <= var_1_1) then
				return var_2_0
			end
		end

		return nil
	end
end

local function var_0_10(arg_3_0)
	for iter_3_0 = #arg_3_0, 2, -1 do
		local var_3_0 = love.math.random(1, iter_3_0)

		arg_3_0[iter_3_0], arg_3_0[var_3_0] = arg_3_0[var_3_0], arg_3_0[iter_3_0]
	end

	return arg_3_0
end

local function var_0_11(arg_4_0)
	if not arg_4_0 or arg_4_0 <= 0 then
		return
	end

	local var_4_0 = {}

	for iter_4_0, iter_4_1 in ipairs(var_0_8.active) do
		if not iter_4_1.expiryWave or arg_4_0 <= iter_4_1.expiryWave then
			if iter_4_1.key == "HarvestFlag" then
				if iter_4_1._harvestWaveId ~= arg_4_0 then
					iter_4_1._harvestWaveId = nil
					iter_4_1._harvestTargetSym = nil
				end
			elseif iter_4_1.key == "NutrientLeaf" then
				if iter_4_1._nutrientWaveId ~= arg_4_0 then
					iter_4_1._nutrientWaveId = nil
					iter_4_1._nutrientDiscountPending = nil
				end
			elseif iter_4_1.key == "EntropySpoonFreeSpin" then
				if iter_4_1._entropyFreeWaveId ~= arg_4_0 then
					iter_4_1._entropyFreeWaveId = nil
					iter_4_1._entropyFreeDiscountPending = nil
				end
			elseif iter_4_1.key == "ResonoscopeChain" and iter_4_1._resonoChainUsedWave ~= arg_4_0 then
				iter_4_1._resonoChainUsedWave = nil
				iter_4_1._resonoChainDiscountPending = nil
			end

			table.insert(var_4_0, iter_4_1)
		end
	end

	var_0_8.active = var_4_0
end

function var_0_1.getIcon(arg_5_0)
	if not arg_5_0 or not arg_5_0.icon then
		return nil
	end

	local var_5_0 = var_0_8.iconCache[arg_5_0.icon]

	if var_5_0 then
		return var_5_0
	end

	if not love.filesystem.getInfo(arg_5_0.icon) then
		return nil
	end

	local var_5_1 = love.graphics.newImage(arg_5_0.icon)

	var_5_1:setFilter("nearest", "nearest")

	var_0_8.iconCache[arg_5_0.icon] = var_5_1

	return var_5_1
end

function var_0_1.getIconData(arg_6_0)
	if not arg_6_0 or not arg_6_0.icon then
		return nil
	end

	local var_6_0 = var_0_8.iconDataCache[arg_6_0.icon]

	if var_6_0 then
		return var_6_0
	end

	if not love.filesystem.getInfo(arg_6_0.icon) then
		return nil
	end

	local var_6_1, var_6_2 = pcall(love.image.newImageData, arg_6_0.icon)

	if not var_6_1 then
		return nil
	end

	var_0_8.iconDataCache[arg_6_0.icon] = var_6_2

	return var_6_2
end

function var_0_1.getRarity(arg_7_0)
	local var_7_0 = arg_7_0 and arg_7_0.rarity and var_0_2[arg_7_0.rarity]

	if var_7_0 then
		return var_7_0.label, var_7_0.color
	end

	return arg_7_0 and (arg_7_0.rarity or ""), {
		1,
		1,
		1,
		1
	}
end

function var_0_1.getActive()
	local var_8_0 = {}

	for iter_8_0, iter_8_1 in ipairs(var_0_8.active) do
		var_8_0[iter_8_0] = iter_8_1
	end

	return var_8_0
end

local function var_0_12(arg_9_0)
	if not arg_9_0 then
		return nil
	end

	local var_9_0 = {}

	for iter_9_0, iter_9_1 in pairs(arg_9_0) do
		var_9_0[iter_9_0] = iter_9_1
	end

	return var_9_0
end

local function var_0_13(arg_10_0, arg_10_1, arg_10_2)
	if not arg_10_0 or not arg_10_1 or not arg_10_2 or arg_10_2 <= 0 then
		return arg_10_0
	end

	local var_10_0 = 0

	for iter_10_0, iter_10_1 in pairs(arg_10_0) do
		var_10_0 = var_10_0 + (tonumber(iter_10_1 or 0) or 0)
	end

	if var_10_0 <= 1e-09 then
		return arg_10_0
	end

	local var_10_1 = {}

	for iter_10_2, iter_10_3 in pairs(arg_10_0) do
		var_10_1[iter_10_2] = (tonumber(iter_10_3 or 0) or 0) / var_10_0
	end

	local var_10_2 = var_10_1[arg_10_1] or 0
	local var_10_3 = math.max(0, math.min(1, var_10_2 + arg_10_2))
	local var_10_4 = 1 - var_10_2

	if var_10_4 <= 1e-09 then
		var_10_4 = 1
	end

	local var_10_5 = (1 - var_10_3) / var_10_4
	local var_10_6 = {}

	for iter_10_4, iter_10_5 in pairs(var_10_1) do
		if iter_10_4 == arg_10_1 then
			var_10_6[iter_10_4] = var_10_3
		else
			var_10_6[iter_10_4] = iter_10_5 * var_10_5
		end
	end

	return var_10_6
end

function var_0_1.getProjectedSymbolWeights(arg_11_0, arg_11_1)
	local var_11_0 = tonumber(arg_11_0 or 0) or 0

	var_0_11(var_11_0)

	local var_11_1 = var_0_12(var_0_0 and var_0_0.slot and var_0_0.slot.symbolWeights or {})
	local var_11_2 = var_0_12(var_11_1)
	local var_11_3 = {}

	local function var_11_4(arg_12_0, arg_12_1)
		local var_12_0 = var_11_2 and var_11_2[arg_12_0]
		local var_12_1 = var_0_13(var_11_2, arg_12_0, arg_12_1)

		if var_12_1 then
			var_11_2 = var_0_12(var_12_1)

			if arg_12_0 then
				var_11_3[arg_12_0] = true
			end
		end

		return var_12_0 ~= (var_11_2 and var_11_2[arg_12_0])
	end

	for iter_11_0 in var_0_9(var_11_0) do
		if iter_11_0.key == "MirageGoblet" and (iter_11_0._mirageSpins or 0) > 0 and iter_11_0._mirageTargetSym then
			var_11_4(iter_11_0._mirageTargetSym, 0.05)
		end
	end

	for iter_11_1 in var_0_9(var_11_0) do
		if iter_11_1.key == "Rootshroom" and iter_11_1._rootshroomTargetSym then
			var_11_4(iter_11_1._rootshroomTargetSym, 0.12)
		end
	end

	for iter_11_2 in var_0_9(var_11_0) do
		if iter_11_2.key == "DiagonalCore" and iter_11_2._diagonalTargetSym then
			var_11_4(iter_11_2._diagonalTargetSym, 0.1)
		end
	end

	for iter_11_3 in var_0_9(var_11_0) do
		if iter_11_3.key == "HarvestFlag" and iter_11_3._harvestWaveId == var_11_0 and iter_11_3._harvestTargetSym then
			var_11_4(iter_11_3._harvestTargetSym, 0.08)
		end
	end

	for iter_11_4 in var_0_9(var_11_0) do
		if iter_11_4.key == "OldCrown" and iter_11_4._oldCrownTargetSym then
			var_11_4(iter_11_4._oldCrownTargetSym, 0.05)
		end
	end

	return var_11_2, var_11_1, var_11_3
end

function var_0_1.getJokerChance(arg_13_0)
	local var_13_0 = tonumber(arg_13_0 or 0) or 0

	var_0_11(var_13_0)

	local var_13_1 = 0

	for iter_13_0 in var_0_9(var_13_0) do
		if iter_13_0.key == "JokerSeed" then
			var_13_1 = var_13_1 + 0.02
		elseif iter_13_0.key == "Wildcard" then
			var_13_1 = var_13_1 + 0.03
		end
	end

	return math.max(0, math.min(0.05, var_13_1))
end

function var_0_1.getSpinPriceDiscount(arg_14_0, arg_14_1)
	var_0_11(tonumber(arg_14_0 or 0) or 0)

	local var_14_0 = tonumber(arg_14_0 or 0) or 0
	local var_14_1 = arg_14_1 and tonumber(arg_14_1.nextSpinIndex or arg_14_1.spinIndexInWave or arg_14_1.nextPaidSpinIndex or arg_14_1.paidSpinIndex or 0) or 0
	local var_14_2 = 0

	for iter_14_0 in var_0_9(var_14_0) do
		if iter_14_0.key == "HorizontalCore" and (iter_14_0._horizontalDiscountPending or 0) > 0 then
			var_14_2 = math.max(var_14_2, tonumber(iter_14_0._horizontalDiscountPending or 0) or 0)
		elseif iter_14_0.key == "FinalTrail" and var_14_1 == 4 and (iter_14_0._finalTrailUsedWave or -1) ~= var_14_0 then
			var_14_2 = math.max(var_14_2, 0.5)
		elseif iter_14_0.key == "NutrientLeaf" and (iter_14_0._nutrientDiscountPending or 0) > 0 then
			var_14_2 = math.max(var_14_2, tonumber(iter_14_0._nutrientDiscountPending or 0) or 0)
		elseif iter_14_0.key == "ResonoscopeChain" and (iter_14_0._resonoChainDiscountPending or 0) > 0 then
			var_14_2 = math.max(var_14_2, tonumber(iter_14_0._resonoChainDiscountPending or 0) or 0)
		elseif iter_14_0.key == "EntropySpoonFreeSpin" and (iter_14_0._entropyFreeDiscountPending or 0) > 0 then
			var_14_2 = math.max(var_14_2, tonumber(iter_14_0._entropyFreeDiscountPending or 0) or 0)
		end
	end

	return var_14_2
end

function var_0_1.getSpinPriceFlatReduction(arg_15_0, arg_15_1)
	var_0_11(tonumber(arg_15_0 or 0) or 0)

	local var_15_0 = 0

	for iter_15_0 in var_0_9(tonumber(arg_15_0 or 0) or 0) do
		if iter_15_0.key == "RewindClock" then
			if (iter_15_0._rewindCostReductionPending or 0) > 0 then
				var_15_0 = math.max(var_15_0, tonumber(iter_15_0._rewindCostReductionPending or 0) or 0)
			end

			if arg_15_1 and arg_15_1.pendingPaidFailure == true then
				var_15_0 = math.max(var_15_0, 25)
			end
		end
	end

	return var_15_0
end

local function var_0_14(arg_16_0)
	if not arg_16_0 then
		return false
	end

	local var_16_0 = arg_16_0.id and tostring(arg_16_0.id) or nil

	if var_0_6[var_16_0] ~= true then
		return false
	end

	if arg_16_0.locked == true or arg_16_0.unlocked == false then
		return false
	end

	if type(arg_16_0.unlock) == "function" then
		local var_16_1, var_16_2 = pcall(arg_16_0.unlock)

		return var_16_1 and var_16_2 == true
	end

	if type(arg_16_0.unlock) == "string" and var_0_8.unlocks then
		return var_0_8.unlocks[arg_16_0.unlock] == true
	end

	return true
end

local function var_0_15(arg_17_0, arg_17_1)
	if not arg_17_0 or not arg_17_1 then
		return
	end

	local var_17_0 = arg_17_1.def or arg_17_1
	local var_17_1 = arg_17_1.key or var_17_0.key
	local var_17_2 = arg_17_1.id or var_17_0.id

	if var_17_1 then
		arg_17_0[var_17_1] = true
	end

	if var_17_2 then
		arg_17_0[var_17_2] = true
	end
end

local function var_0_16(arg_18_0)
	local var_18_0 = math.max(1, math.floor(tonumber(arg_18_0 or 1) or 1))

	return var_0_5[math.min(var_18_0, #var_0_5)]
end

local function var_0_17(arg_19_0)
	local var_19_0 = var_0_16(arg_19_0)
	local var_19_1 = 0

	for iter_19_0, iter_19_1 in ipairs(var_0_3) do
		var_19_1 = var_19_1 + math.max(0, tonumber(var_19_0[iter_19_1] or 0) or 0)
	end

	if var_19_1 <= 0 then
		return "C"
	end

	local var_19_2 = love.math.random() * var_19_1

	for iter_19_2, iter_19_3 in ipairs(var_0_3) do
		local var_19_3 = math.max(0, tonumber(var_19_0[iter_19_3] or 0) or 0)

		if var_19_2 < var_19_3 then
			return iter_19_3
		end

		var_19_2 = var_19_2 - var_19_3
	end

	return "C"
end

local function var_0_18(arg_20_0, arg_20_1, arg_20_2, arg_20_3)
	local var_20_0 = {}

	for iter_20_0, iter_20_1 in ipairs(var_0_7) do
		local var_20_1 = iter_20_1.key or iter_20_1.id
		local var_20_2 = iter_20_1.id
		local var_20_3 = var_20_1 and arg_20_2[var_20_1] or var_20_2 and arg_20_2[var_20_2]
		local var_20_4 = var_20_1 and arg_20_1[var_20_1] or var_20_2 and arg_20_1[var_20_2]
		local var_20_5 = (iter_20_1.rarity or "C") == arg_20_0
		local var_20_6 = iter_20_1.rarity ~= "L" or not arg_20_3

		if var_20_5 and var_20_6 and var_20_1 and not var_20_3 and not var_20_4 and var_0_14(iter_20_1) then
			table.insert(var_20_0, iter_20_1)
		end
	end

	if #var_20_0 > 1 then
		var_0_10(var_20_0)
	end

	return var_20_0
end

local function var_0_19(arg_21_0, arg_21_1, arg_21_2, arg_21_3)
	for iter_21_0 = var_0_4[arg_21_0] or 1, 1, -1 do
		local var_21_0 = var_0_18(var_0_3[iter_21_0], arg_21_1, arg_21_2, arg_21_3)

		if var_21_0[1] then
			return var_21_0[1]
		end
	end

	for iter_21_1 = 1, #var_0_3 do
		local var_21_1 = var_0_18(var_0_3[iter_21_1], arg_21_1, arg_21_2, arg_21_3)

		if var_21_1[1] then
			return var_21_1[1]
		end
	end

	return nil
end

local function var_0_20(arg_22_0)
	local var_22_0 = var_0_16(arg_22_0)
	local var_22_1 = 0

	for iter_22_0 = 2, #var_0_3 do
		local var_22_2 = var_0_3[iter_22_0]

		var_22_1 = var_22_1 + math.max(0, tonumber(var_22_0[var_22_2] or 0) or 0)
	end

	if var_22_1 <= 0 then
		return "U"
	end

	local var_22_3 = love.math.random() * var_22_1

	for iter_22_1 = 2, #var_0_3 do
		local var_22_4 = var_0_3[iter_22_1]
		local var_22_5 = math.max(0, tonumber(var_22_0[var_22_4] or 0) or 0)

		if var_22_3 < var_22_5 then
			return var_22_4
		end

		var_22_3 = var_22_3 - var_22_5
	end

	return "U"
end

local function var_0_21(arg_23_0, arg_23_1, arg_23_2, arg_23_3)
	local var_23_0 = var_0_20(arg_23_0)

	for iter_23_0 = math.max(2, var_0_4[var_23_0] or 2), 2, -1 do
		local var_23_1 = var_0_18(var_0_3[iter_23_0], arg_23_1, arg_23_2, arg_23_3)

		if var_23_1[1] then
			return var_23_1[1]
		end
	end

	for iter_23_1 = 2, #var_0_3 do
		local var_23_2 = var_0_18(var_0_3[iter_23_1], arg_23_1, arg_23_2, arg_23_3)

		if var_23_2[1] then
			return var_23_2[1]
		end
	end

	return nil
end

function var_0_1.offer(arg_24_0, arg_24_1, arg_24_2)
	arg_24_0 = math.max(1, math.floor(tonumber(arg_24_0 or 3) or 3))

	local var_24_0 = math.max(1, math.floor(tonumber(arg_24_1 or 1) or 1))
	local var_24_1 = {}

	for iter_24_0, iter_24_1 in ipairs(var_0_8.active) do
		var_0_15(var_24_1, iter_24_1)
	end

	local var_24_2 = {}
	local var_24_3 = {}
	local var_24_4 = false

	for iter_24_2 = 1, arg_24_0 do
		local var_24_5 = arg_24_2 == true and var_24_0 == 1 and iter_24_2 == 1 and var_0_21(var_24_0, var_24_1, var_24_3, var_24_4) or var_0_19(var_0_17(var_24_0), var_24_1, var_24_3, var_24_4)

		if not var_24_5 then
			break
		end

		var_24_2[iter_24_2] = var_24_5

		var_0_15(var_24_3, var_24_5)

		if var_24_5.rarity == "L" then
			var_24_4 = true
		end
	end

	return var_24_2
end

function var_0_1.select(arg_25_0, arg_25_1)
	if not arg_25_0 then
		return
	end

	local var_25_0 = tonumber(arg_25_1 or 0) or 0
	local var_25_1 = tonumber(arg_25_0.duration or 0) or 0
	local var_25_2 = {
		stacks = 0,
		maxStacks = 3,
		def = arg_25_0,
		key = arg_25_0.key or arg_25_0.id,
		startWave = var_25_0,
		expiryWave = var_25_1 > 0 and var_25_0 + var_25_1 - 1 or math.huge
	}

	table.insert(var_0_8.active, var_25_2)

	local var_25_3, var_25_4 = var_0_1.getRarity(arg_25_0)

	var_25_2._uiSpawnVFX = {
		startT = love.timer and love.timer.getTime and love.timer.getTime() or 0,
		dur = (function()
			local var_26_0, var_26_1 = pcall(require, "src.ui.config")

			if var_26_0 and var_26_1 and var_26_1._active then
				-- block empty
			end

			local var_26_2, var_26_3 = pcall(function()
				return _G.ui
			end)

			if var_26_2 and var_26_3 and var_26_3.coreEquipped and var_26_3.coreEquipped.fx and var_26_3.coreEquipped.fx.spawn then
				local var_26_4 = var_26_3.coreEquipped.fx.spawn
				local var_26_5 = var_26_4.dur or {
					0.6,
					0.5,
					0.4
				}
				local var_26_6 = var_26_4.mul or 1

				return {
					(var_26_5[1] or 0.6) * var_26_6,
					(var_26_5[2] or 0.5) * var_26_6,
					(var_26_5[3] or 0.4) * var_26_6
				}
			end

			return {
				0.6,
				0.5,
				0.4
			}
		end)(),
		tint = {
			var_25_4 and var_25_4[1] or 1,
			var_25_4 and var_25_4[2] or 1,
			var_25_4 and var_25_4[3] or 1
		}
	}
end

local function var_0_22(arg_28_0)
	var_0_11(arg_28_0)

	local var_28_0 = 0

	for iter_28_0 in var_0_9(arg_28_0) do
		local var_28_1 = iter_28_0.key
	end

	if var_28_0 > 0.8 then
		var_28_0 = 0.8
	end

	return var_28_0
end

local function var_0_23()
	for iter_29_0, iter_29_1 in ipairs(var_0_8.active) do
		iter_29_1._uiActiveThisSpin = nil
		iter_29_1._uiSustainSpin = nil
	end
end

local function var_0_24(arg_30_0)
	local var_30_0 = {}

	for iter_30_0 = 1, 3 do
		for iter_30_1 = 1, 3 do
			table.insert(var_30_0, {
				row = iter_30_0,
				col = iter_30_1
			})
		end
	end

	var_0_10(var_30_0)

	local var_30_1 = {}
	local var_30_2 = math.max(0, math.min(#var_30_0, math.floor(tonumber(arg_30_0 or 0) or 0)))

	for iter_30_2 = 1, var_30_2 do
		var_30_1[iter_30_2] = var_30_0[iter_30_2]
	end

	return var_30_1
end

local function var_0_25(arg_31_0, arg_31_1)
	local var_31_0 = var_0_24(9)
	local var_31_1 = {}

	local function var_31_2(arg_32_0)
		local var_32_0 = math.floor(tonumber(arg_32_0 and arg_32_0.row or 0) or 0)
		local var_32_1 = math.floor(tonumber(arg_32_0 and arg_32_0.col or 0) or 0)

		if var_32_0 < 1 or var_32_0 > 3 or var_32_1 < 1 or var_32_1 > 3 then
			return nil, nil
		end

		return var_32_0, var_32_1
	end

	local function var_31_3(arg_33_0)
		local var_33_0, var_33_1 = var_31_2(arg_33_0)
		local var_33_2 = var_33_0 and tostring(var_33_0) .. ":" .. tostring(var_33_1) or nil

		if var_33_2 and not var_31_1[var_33_2] then
			var_31_1[var_33_2] = true
			arg_33_0.row, arg_33_0.col = var_33_0, var_33_1

			return true
		end

		for iter_33_0, iter_33_1 in ipairs(var_31_0) do
			local var_33_3 = tostring(iter_33_1.row) .. ":" .. tostring(iter_33_1.col)

			if not var_31_1[var_33_3] then
				var_31_1[var_33_3] = true
				arg_33_0.row, arg_33_0.col = iter_33_1.row, iter_33_1.col

				return true
			end
		end

		return false
	end

	local var_31_4 = {}

	for iter_31_0, iter_31_1 in ipairs(arg_31_0 or {}) do
		if var_31_3(iter_31_1) then
			table.insert(var_31_4, iter_31_1)
		end
	end

	local var_31_5 = {}

	for iter_31_2, iter_31_3 in ipairs(arg_31_1 or {}) do
		if iter_31_3 and iter_31_3.symbol and var_31_3(iter_31_3) then
			table.insert(var_31_5, iter_31_3)
		end
	end

	return var_31_4, var_31_5
end

local function var_0_26(arg_34_0, arg_34_1, arg_34_2)
	if not arg_34_0 or not arg_34_1 or not arg_34_2 then
		return nil
	end

	if arg_34_0 == "Blank" or arg_34_1 == "Blank" or arg_34_2 == "Blank" then
		return nil
	end

	local var_34_0
	local var_34_1 = 0

	for iter_34_0, iter_34_1 in ipairs({
		arg_34_0,
		arg_34_1,
		arg_34_2
	}) do
		if iter_34_1 == "Joker" or iter_34_1 == "J" then
			var_34_1 = var_34_1 + 1
		elseif not var_34_0 then
			var_34_0 = iter_34_1
		elseif iter_34_1 ~= var_34_0 then
			return nil
		end
	end

	if var_34_1 == 3 then
		return nil
	end

	return var_34_0
end

local function var_0_27(arg_35_0, arg_35_1)
	if not arg_35_0 or not arg_35_0.winningLines or type(arg_35_0.winningLines) ~= "table" or not arg_35_1 then
		return nil
	end

	local var_35_0 = {
		{
			{
				1,
				1
			},
			{
				1,
				2
			},
			{
				1,
				3
			}
		},
		{
			{
				2,
				1
			},
			{
				2,
				2
			},
			{
				2,
				3
			}
		},
		{
			{
				3,
				1
			},
			{
				3,
				2
			},
			{
				3,
				3
			}
		},
		{
			{
				1,
				1
			},
			{
				2,
				2
			},
			{
				3,
				3
			}
		},
		{
			{
				1,
				3
			},
			{
				2,
				2
			},
			{
				3,
				1
			}
		},
		{
			{
				1,
				1
			},
			{
				2,
				1
			},
			{
				3,
				1
			}
		},
		{
			{
				1,
				2
			},
			{
				2,
				2
			},
			{
				3,
				2
			}
		},
		{
			{
				1,
				3
			},
			{
				2,
				3
			},
			{
				3,
				3
			}
		}
	}
	local var_35_1 = {}

	for iter_35_0, iter_35_1 in ipairs(arg_35_0.winningLines) do
		local var_35_2 = var_35_0[iter_35_1]

		if var_35_2 then
			local var_35_3 = {
				arg_35_1[var_35_2[1][1]] and arg_35_1[var_35_2[1][1]][var_35_2[1][2]],
				arg_35_1[var_35_2[2][1]] and arg_35_1[var_35_2[2][1]][var_35_2[2][2]],
				arg_35_1[var_35_2[3][1]] and arg_35_1[var_35_2[3][1]][var_35_2[3][2]]
			}
			local var_35_4 = false

			for iter_35_2, iter_35_3 in ipairs(var_35_3) do
				if iter_35_3 == "Joker" or iter_35_3 == "J" then
					var_35_4 = true

					break
				end
			end

			if var_35_4 then
				local var_35_5 = var_0_26(var_35_3[1], var_35_3[2], var_35_3[3])

				if var_35_5 then
					table.insert(var_35_1, var_35_5)
				end
			end
		end
	end

	if #var_35_1 <= 0 then
		return nil
	end

	return var_35_1[love.math.random(1, #var_35_1)]
end

function var_0_1.prepareSpin(arg_36_0)
	local var_36_0 = arg_36_0 and tonumber(arg_36_0.waveId or 0) or 0

	var_0_11(var_36_0)

	local var_36_1 = var_0_0 and var_0_0.slot and var_0_0.slot.forceWinProb or 0

	if var_0_8._baseForceProb == nil then
		var_0_8._baseForceProb = var_36_1
	end

	for iter_36_0, iter_36_1 in ipairs(var_0_8.active) do
		iter_36_1._uiActiveThisSpin = nil
		iter_36_1._uiTrigger = nil
		iter_36_1._uiSustainSpin = nil
	end

	for iter_36_2 in var_0_9(var_36_0) do
		if iter_36_2.key == "EntropySpoon" and iter_36_2._entropySustainNext then
			iter_36_2._uiActiveThisSpin = true
			iter_36_2._uiSustainSpin = true
			iter_36_2._entropySustainNext = nil
		end
	end

	for iter_36_3 in var_0_9(var_36_0) do
		local var_36_2 = tonumber(arg_36_0 and (arg_36_0.spinIndexInWave or arg_36_0.paidSpinIndex) or 0) or 0

		if iter_36_3.key == "FinalTrail" and var_36_2 == 4 and (iter_36_3._finalTrailUsedWave or -1) ~= var_36_0 then
			iter_36_3._uiActiveThisSpin = true
			iter_36_3._uiSustainSpin = true
			iter_36_3._uiTrigger = true
		end
	end

	local var_36_3 = 0
	local var_36_4 = {}
	local var_36_5

	for iter_36_4 in var_0_9(var_36_0) do
		if iter_36_4.key == "JokerSeed" then
			var_36_3 = var_36_3 + 0.02
			iter_36_4._uiActiveThisSpin = true
			iter_36_4._uiSustainSpin = true
		elseif iter_36_4.key == "Wildcard" then
			var_36_3 = var_36_3 + 0.03
			iter_36_4._uiActiveThisSpin = true
			iter_36_4._uiSustainSpin = true
		elseif iter_36_4.key == "TornNote" then
			iter_36_4._tornNoteSpinCount = (tonumber(iter_36_4._tornNoteSpinCount or 0) or 0) + 1

			if iter_36_4._tornNoteSpinCount % 6 == 0 then
				table.insert(var_36_4, {
					row = love.math.random(1, 3),
					col = love.math.random(1, 3)
				})

				iter_36_4._uiActiveThisSpin = true
				iter_36_4._uiSustainSpin = true
				iter_36_4._uiTrigger = true
			end
		elseif iter_36_4.key == "BlackNote" then
			if arg_36_0 and arg_36_0.isFirstSpin == true and (iter_36_4._blackNoteUsedWave or -1) ~= var_36_0 then
				iter_36_4._blackNoteUsedWave = var_36_0

				table.insert(var_36_4, {
					row = love.math.random(1, 3),
					col = love.math.random(1, 3)
				})

				iter_36_4._uiActiveThisSpin = true
				iter_36_4._uiSustainSpin = true
				iter_36_4._uiTrigger = true
			end
		elseif iter_36_4.key == "BloodlineSeal" then
			local var_36_6 = iter_36_4._bloodlinePendingSym

			if var_36_6 then
				var_36_5 = var_36_5 or {}

				for iter_36_5, iter_36_6 in ipairs(var_0_24(3)) do
					table.insert(var_36_5, {
						row = iter_36_6.row,
						col = iter_36_6.col,
						symbol = var_36_6
					})
				end

				iter_36_4._bloodlinePendingSym = nil
				iter_36_4._uiActiveThisSpin = true
				iter_36_4._uiSustainSpin = true
				iter_36_4._uiTrigger = true
			end
		end
	end

	local var_36_7, var_36_8 = var_0_25(var_36_4, var_36_5)
	local var_36_9 = var_36_7[1]
	local var_36_10 = math.max(0, math.min(0.05, var_36_3))
	local var_36_11 = var_0_22(var_36_0)

	for iter_36_7 in var_0_9(var_36_0) do
		if iter_36_7.key == "PurusaVerdict" and (iter_36_7._purusaUsedWave or -1) ~= var_36_0 then
			iter_36_7._nextWinBoost = math.max(iter_36_7._nextWinBoost or 0, 0.15)
			iter_36_7._purusaUsedWave = var_36_0
			iter_36_7._purusaArmJackpot = true
		end
	end

	local var_36_12 = 0

	for iter_36_8 in var_0_9(var_36_0) do
		if iter_36_8._nextWinBoost and iter_36_8._nextWinBoost > 0 then
			iter_36_8._uiActiveThisSpin = true
			iter_36_8._uiSustainSpin = true
			iter_36_8._uiTrigger = true
			var_36_12 = var_36_12 + iter_36_8._nextWinBoost
			iter_36_8._nextWinBoost = nil
		end
	end

	local var_36_13 = math.max(0, math.min(1, var_36_1 + var_36_11 + var_36_12))

	var_0_0.slot.forceWinProb = var_36_13
	var_0_8._appliedThisSpin = true

	local var_36_14

	for iter_36_9 in var_0_9(var_36_0) do
		if iter_36_9.key == "Resonoscope" and iter_36_9._resonoJackpotNext then
			iter_36_9._uiActiveThisSpin = true
			iter_36_9._uiSustainSpin = true
			iter_36_9._resonoJackpotNext = nil

			if love.math.random() < 0.03 then
				var_36_14 = 5
				iter_36_9._uiTrigger = true
			end
		end
	end

	for iter_36_10 in var_0_9(var_36_0) do
		if iter_36_10.key == "PurusaVerdict" and iter_36_10._purusaArmJackpot then
			iter_36_10._uiActiveThisSpin = true
			iter_36_10._uiSustainSpin = true

			if love.math.random() < 0.004 then
				var_36_14 = 5
				iter_36_10._uiTrigger = true
			end

			iter_36_10._purusaArmJackpot = nil
		end
	end

	for iter_36_11 in var_0_9(var_36_0) do
		if iter_36_11.key == "OracleSigil" then
			iter_36_11._oracleCount = math.max(0, iter_36_11._oracleCount or 0) + 1

			if iter_36_11._oracleCount % 6 == 0 then
				iter_36_11._uiActiveThisSpin = true
				iter_36_11._uiSustainSpin = true

				if love.math.random() < 0.01 then
					var_36_14 = 5
					iter_36_11._uiTrigger = true
				end

				iter_36_11._oracleCount = 0
			end
		end
	end

	local var_36_15 = false

	for iter_36_12 in var_0_9(var_36_0) do
		if iter_36_12.key == "ReverseShell" and iter_36_12._forceNextWinOnce then
			iter_36_12._uiActiveThisSpin = true
			iter_36_12._uiSustainSpin = true
			iter_36_12._uiTrigger = true
			var_36_15 = true
			iter_36_12._forceNextWinOnce = nil
		end
	end

	local function var_36_16(arg_37_0)
		if not arg_37_0 then
			return nil
		end

		local var_37_0 = {}

		for iter_37_0, iter_37_1 in pairs(arg_37_0) do
			var_37_0[iter_37_0] = iter_37_1
		end

		return var_37_0
	end

	local function var_36_17(arg_38_0, arg_38_1, arg_38_2)
		if not arg_38_0 or not arg_38_1 or not arg_38_2 or arg_38_2 <= 0 then
			return arg_38_0
		end

		local var_38_0 = 0

		for iter_38_0, iter_38_1 in pairs(arg_38_0) do
			var_38_0 = var_38_0 + (tonumber(iter_38_1 or 0) or 0)
		end

		if var_38_0 <= 1e-09 then
			return arg_38_0
		end

		local var_38_1 = {}

		for iter_38_2, iter_38_3 in pairs(arg_38_0) do
			var_38_1[iter_38_2] = (tonumber(iter_38_3 or 0) or 0) / var_38_0
		end

		local var_38_2 = var_38_1[arg_38_1] or 0
		local var_38_3 = math.max(0, math.min(1, var_38_2 + arg_38_2))
		local var_38_4 = 1 - var_38_3
		local var_38_5 = 1 - var_38_2

		if var_38_5 <= 1e-09 then
			var_38_5 = 1
		end

		local var_38_6 = var_38_4 / var_38_5
		local var_38_7 = {}

		for iter_38_4, iter_38_5 in pairs(var_38_1) do
			if iter_38_4 == arg_38_1 then
				var_38_7[iter_38_4] = var_38_3
			else
				var_38_7[iter_38_4] = iter_38_5 * var_38_6
			end
		end

		return var_38_7
	end

	for iter_36_13 in var_0_9(var_36_0) do
		if iter_36_13.key == "MirageGoblet" and (iter_36_13._mirageSpins or 0) > 0 and iter_36_13._mirageTargetSym then
			if not var_0_8._baseSymbolWeights then
				var_0_8._baseSymbolWeights = var_36_16(var_0_0.slot.symbolWeights)
			end

			local var_36_18 = var_36_17(var_0_8._baseSymbolWeights, iter_36_13._mirageTargetSym, 0.05)

			if var_36_18 then
				var_0_0.slot.symbolWeights = var_36_16(var_36_18)
				var_0_8._weightsApplied = true
				iter_36_13._uiActiveThisSpin = true
				iter_36_13._uiSustainSpin = true
				iter_36_13._mirageSpins = math.max(0, (iter_36_13._mirageSpins or 0) - 1)
			end
		end
	end

	for iter_36_14 in var_0_9(var_36_0) do
		if iter_36_14.key == "Rootshroom" and iter_36_14._rootshroomTargetSym then
			if not var_0_8._baseSymbolWeights then
				var_0_8._baseSymbolWeights = var_36_16(var_0_0.slot.symbolWeights)
			end

			local var_36_19 = var_36_17(var_0_0.slot.symbolWeights, iter_36_14._rootshroomTargetSym, 0.12)

			if var_36_19 then
				var_0_0.slot.symbolWeights = var_36_16(var_36_19)
				var_0_8._weightsApplied = true
				iter_36_14._uiActiveThisSpin = true
				iter_36_14._uiSustainSpin = true
				iter_36_14._uiTrigger = true
				iter_36_14._rootshroomTargetSym = nil
			end
		end
	end

	for iter_36_15 in var_0_9(var_36_0) do
		if iter_36_15.key == "DiagonalCore" and iter_36_15._diagonalTargetSym then
			if not var_0_8._baseSymbolWeights then
				var_0_8._baseSymbolWeights = var_36_16(var_0_0.slot.symbolWeights)
			end

			local var_36_20 = var_36_17(var_0_0.slot.symbolWeights, iter_36_15._diagonalTargetSym, 0.1)

			if var_36_20 then
				var_0_0.slot.symbolWeights = var_36_16(var_36_20)
				var_0_8._weightsApplied = true
				iter_36_15._uiActiveThisSpin = true
				iter_36_15._uiSustainSpin = true
				iter_36_15._uiTrigger = true
				iter_36_15._diagonalTargetSym = nil
			end
		end
	end

	for iter_36_16 in var_0_9(var_36_0) do
		if iter_36_16.key == "HarvestFlag" and iter_36_16._harvestWaveId == var_36_0 and iter_36_16._harvestTargetSym then
			if not var_0_8._baseSymbolWeights then
				var_0_8._baseSymbolWeights = var_36_16(var_0_0.slot.symbolWeights)
			end

			local var_36_21 = var_36_17(var_0_0.slot.symbolWeights, iter_36_16._harvestTargetSym, 0.08)

			if var_36_21 then
				var_0_0.slot.symbolWeights = var_36_16(var_36_21)
				var_0_8._weightsApplied = true
				iter_36_16._uiActiveThisSpin = true
				iter_36_16._uiSustainSpin = true
			end
		end
	end

	for iter_36_17 in var_0_9(var_36_0) do
		if iter_36_17.key == "OldCrown" and iter_36_17._oldCrownTargetSym then
			if not var_0_8._baseSymbolWeights then
				var_0_8._baseSymbolWeights = var_36_16(var_0_0.slot.symbolWeights)
			end

			local var_36_22 = var_36_17(var_0_0.slot.symbolWeights, iter_36_17._oldCrownTargetSym, 0.05)

			if var_36_22 then
				var_0_0.slot.symbolWeights = var_36_16(var_36_22)
				var_0_8._weightsApplied = true
				iter_36_17._uiActiveThisSpin = true
				iter_36_17._uiSustainSpin = true
			end
		end
	end

	local var_36_23 = 0

	for iter_36_18 in var_0_9(var_36_0) do
		if arg_36_0 and arg_36_0.isPaidSpin == true and iter_36_18.key == "VerticalCore" and iter_36_18._verticalCostStepReduction == true then
			local var_36_24 = math.max(0, tonumber(arg_36_0 and arg_36_0.spinCostStep or 0) or 0)

			var_36_23 = math.max(var_36_23, var_36_24)
			iter_36_18._uiActiveThisSpin = true
			iter_36_18._uiSustainSpin = true
			iter_36_18._uiTrigger = true
			iter_36_18._verticalCostStepReduction = nil
		end
	end

	local var_36_25 = 0

	for iter_36_19 in var_0_9(var_36_0) do
		if arg_36_0 and arg_36_0.isPaidSpin == true and iter_36_19.key == "HorizontalCore" and (iter_36_19._horizontalDiscountPending or 0) > 0 then
			var_36_25 = math.max(var_36_25, tonumber(iter_36_19._horizontalDiscountPending or 0) or 0)
			iter_36_19._uiActiveThisSpin = true
			iter_36_19._uiSustainSpin = true
			iter_36_19._uiTrigger = true
			iter_36_19._horizontalDiscountPending = nil
		elseif iter_36_19.key == "FinalTrail" and tonumber(arg_36_0 and (arg_36_0.spinIndexInWave or arg_36_0.paidSpinIndex) or 0) == 4 and (iter_36_19._finalTrailUsedWave or -1) ~= var_36_0 then
			if arg_36_0 and arg_36_0.isPaidSpin == true then
				var_36_25 = math.max(var_36_25, 0.5)
			end

			iter_36_19._finalTrailUsedWave = var_36_0
			iter_36_19._uiActiveThisSpin = true
			iter_36_19._uiSustainSpin = true
			iter_36_19._uiTrigger = true
		elseif arg_36_0 and arg_36_0.isPaidSpin == true and iter_36_19.key == "NutrientLeaf" and (iter_36_19._nutrientDiscountPending or 0) > 0 then
			var_36_25 = math.max(var_36_25, tonumber(iter_36_19._nutrientDiscountPending or 0) or 0)
			iter_36_19._uiActiveThisSpin = true
			iter_36_19._uiSustainSpin = true
			iter_36_19._uiTrigger = true
			iter_36_19._nutrientDiscountPending = nil
		elseif arg_36_0 and arg_36_0.isPaidSpin == true and iter_36_19.key == "ResonoscopeChain" and (iter_36_19._resonoChainDiscountPending or 0) > 0 then
			var_36_25 = math.max(var_36_25, tonumber(iter_36_19._resonoChainDiscountPending or 0) or 0)
			iter_36_19._uiActiveThisSpin = true
			iter_36_19._uiSustainSpin = true
			iter_36_19._uiTrigger = true
			iter_36_19._resonoChainDiscountPending = nil
		elseif arg_36_0 and arg_36_0.isPaidSpin == true and iter_36_19.key == "EntropySpoonFreeSpin" and (iter_36_19._entropyFreeDiscountPending or 0) > 0 then
			var_36_25 = math.max(var_36_25, tonumber(iter_36_19._entropyFreeDiscountPending or 0) or 0)
			iter_36_19._uiActiveThisSpin = true
			iter_36_19._uiSustainSpin = true
			iter_36_19._uiTrigger = true
			iter_36_19._entropyFreeDiscountPending = nil
		elseif arg_36_0 and arg_36_0.isPaidSpin == true and iter_36_19.key == "RewindClock" and (iter_36_19._rewindCostReductionPending or 0) > 0 then
			iter_36_19._uiActiveThisSpin = true
			iter_36_19._uiSustainSpin = true
			iter_36_19._uiTrigger = true
			iter_36_19._rewindCostReductionPending = nil
		end
	end

	local var_36_26 = 1
	local var_36_27 = 1

	for iter_36_20 in var_0_9(var_36_0) do
		if iter_36_20.key == "Prosperfang" and iter_36_20._prosperNextMul and iter_36_20._prosperNextMul > 1 then
			var_36_27 = math.max(var_36_27, iter_36_20._prosperNextMul or 1)
			iter_36_20._prosperNextMul = nil
			iter_36_20._uiActiveThisSpin = true
			iter_36_20._uiSustainSpin = true
		end
	end

	local var_36_28 = 0
	local var_36_29

	return {
		forceWinProb = var_36_13,
		boost = var_36_11,
		boostOneShot = var_36_12,
		rewardMul = var_36_26,
		forceExactWinningLines = var_36_14,
		allyStatMul = var_36_27,
		forceWinOnce = var_36_15,
		prismConvertChance = var_36_28,
		lockedReels = var_36_29,
		costStepReduction = var_36_23,
		priceDiscount = var_36_25,
		jokerChance = var_36_10,
		forceJokerCell = var_36_9,
		forceJokerCells = var_36_7,
		forceCells = var_36_8
	}
end

local function var_0_28()
	local var_39_0 = var_0_0 and var_0_0.slot and var_0_0.slot.symbolWeights or {}
	local var_39_1 = {
		"W",
		"A",
		"S",
		"M",
		"H",
		"D"
	}
	local var_39_2 = 0

	for iter_39_0, iter_39_1 in ipairs(var_39_1) do
		var_39_2 = var_39_2 + math.max(0, tonumber(var_39_0[iter_39_1] or 0) or 0)
	end

	if var_39_2 <= 0 then
		return var_39_1[love.math.random(1, #var_39_1)]
	end

	local var_39_3 = love.math.random() * var_39_2

	for iter_39_2, iter_39_3 in ipairs(var_39_1) do
		local var_39_4 = math.max(0, tonumber(var_39_0[iter_39_3] or 0) or 0)

		if var_39_3 < var_39_4 then
			return iter_39_3
		end

		var_39_3 = var_39_3 - var_39_4
	end

	return var_39_1[#var_39_1]
end

local function var_0_29(arg_40_0, arg_40_1)
	local var_40_0 = {}

	for iter_40_0 = 1, 3 do
		var_40_0[iter_40_0] = var_0_28()
	end

	return {
		col = arg_40_1,
		targetFinalSymbols = var_40_0
	}
end

local function var_0_30(arg_41_0, arg_41_1)
	if type(arg_41_0) ~= "table" then
		return
	end

	local var_41_0 = {}

	for iter_41_0, iter_41_1 in ipairs(arg_41_0) do
		if iter_41_1 and iter_41_1.col then
			var_41_0[iter_41_1.col] = iter_41_1
		end
	end

	local function var_41_1(arg_42_0, arg_42_1, arg_42_2)
		arg_42_0 = math.floor(tonumber(arg_42_0 or 0) or 0)
		arg_42_1 = math.floor(tonumber(arg_42_1 or 0) or 0)

		local var_42_0 = var_41_0[arg_42_1]

		if arg_42_2 and arg_42_0 >= 1 and arg_42_0 <= 3 and var_42_0 and var_42_0.targetFinalSymbols then
			var_42_0.targetFinalSymbols[arg_42_0] = arg_42_2
		end
	end

	for iter_41_2, iter_41_3 in ipairs(type(arg_41_1 and arg_41_1.forceCells) == "table" and arg_41_1.forceCells or {}) do
		var_41_1(iter_41_3 and iter_41_3.row, iter_41_3 and iter_41_3.col, iter_41_3 and iter_41_3.symbol)
	end

	local var_41_2 = arg_41_1 and arg_41_1.forceJokerCells

	if type(var_41_2) == "table" and #var_41_2 > 0 then
		for iter_41_4, iter_41_5 in ipairs(var_41_2) do
			var_41_1(iter_41_5 and iter_41_5.row, iter_41_5 and iter_41_5.col, "Joker")
		end
	elseif arg_41_1 and arg_41_1.forceJokerCell then
		var_41_1(arg_41_1.forceJokerCell.row, arg_41_1.forceJokerCell.col, "Joker")
	end
end

local function var_0_31(arg_43_0)
	local var_43_0 = {}
	local var_43_1

	if not arg_43_0 then
		return var_43_0, var_43_1
	end

	local var_43_2 = {
		{
			{
				1,
				1
			},
			{
				1,
				2
			},
			{
				1,
				3
			}
		},
		{
			{
				2,
				1
			},
			{
				2,
				2
			},
			{
				2,
				3
			}
		},
		{
			{
				3,
				1
			},
			{
				3,
				2
			},
			{
				3,
				3
			}
		},
		{
			{
				1,
				1
			},
			{
				2,
				2
			},
			{
				3,
				3
			}
		},
		{
			{
				1,
				3
			},
			{
				2,
				2
			},
			{
				3,
				1
			}
		},
		{
			{
				1,
				1
			},
			{
				2,
				1
			},
			{
				3,
				1
			}
		},
		{
			{
				1,
				2
			},
			{
				2,
				2
			},
			{
				3,
				2
			}
		},
		{
			{
				1,
				3
			},
			{
				2,
				3
			},
			{
				3,
				3
			}
		}
	}

	for iter_43_0, iter_43_1 in ipairs(var_43_2) do
		local var_43_3 = arg_43_0[iter_43_1[1][1]] and arg_43_0[iter_43_1[1][1]][iter_43_1[1][2]]
		local var_43_4 = arg_43_0[iter_43_1[2][1]] and arg_43_0[iter_43_1[2][1]][iter_43_1[2][2]]
		local var_43_5 = arg_43_0[iter_43_1[3][1]] and arg_43_0[iter_43_1[3][1]][iter_43_1[3][2]]
		local var_43_6 = var_0_26(var_43_3, var_43_4, var_43_5)

		if var_43_6 then
			table.insert(var_43_0, iter_43_0)

			var_43_1 = var_43_1 or var_43_6
		end
	end

	return var_43_0, var_43_1
end

local var_0_32

local function var_0_33(arg_44_0, arg_44_1, arg_44_2, arg_44_3)
	if not arg_44_0 or not arg_44_1 then
		return false
	end

	arg_44_0._coreExtraSpawns = arg_44_0._coreExtraSpawns or {}

	table.insert(arg_44_0._coreExtraSpawns, {
		consumed = false,
		count = 1,
		sym = arg_44_1,
		noAbsorbEssence = arg_44_2 == true,
		sourceKey = arg_44_3
	})

	if arg_44_0._coreExtraSpawnPending ~= true then
		arg_44_0._coreExtraSpawnPending = true
		arg_44_0._coreExtraSpawnConsumed = false
		arg_44_0._coreExtraSpawnSym = arg_44_1
		arg_44_0._coreExtraSpawnNoAbsorbEssence = arg_44_2 == true
	end

	return true
end

function var_0_1.applyWinPostEvaluate(arg_45_0, arg_45_1)
	if not arg_45_0 or arg_45_0.won ~= true or not arg_45_1 or not arg_45_1.grid then
		return false
	end

	if arg_45_0._coreWinPostEvaluateApplied == true then
		return false
	end

	arg_45_0._coreWinPostEvaluateApplied = true

	local var_45_0 = tonumber(arg_45_1.waveId or 0) or 0

	var_0_11(var_45_0)

	for iter_45_0 in var_0_9(var_45_0) do
		if iter_45_0.key == "EchoLantern" then
			local var_45_1 = arg_45_0.symbol

			if var_45_1 then
				if iter_45_0._echoLanternLastWinSym == var_45_1 then
					var_0_33(arg_45_0, var_45_1, false, iter_45_0.key)

					iter_45_0._uiTrigger = true
				end

				iter_45_0._echoLanternLastWinSym = var_45_1
			end
		elseif iter_45_0.key == "ResonantAnvil" then
			local var_45_2 = var_0_32(arg_45_0, arg_45_1.grid, 4)

			if var_45_2 then
				var_0_33(arg_45_0, var_45_2, true, iter_45_0.key)

				iter_45_0._uiTrigger = true
			end
		elseif iter_45_0.key == "SplinteredTorch" then
			local var_45_3 = 0

			if arg_45_0.winningLines and type(arg_45_0.winningLines) == "table" then
				for iter_45_1 in ipairs(arg_45_0.winningLines) do
					var_45_3 = var_45_3 + 1
				end
			end

			if var_45_3 >= 2 and arg_45_0.symbol then
				var_0_33(arg_45_0, arg_45_0.symbol, true, iter_45_0.key)

				iter_45_0._uiTrigger = true
			end
		elseif iter_45_0.key == "Wildcard" then
			local var_45_4 = var_0_27(arg_45_0, arg_45_1.grid)

			if var_45_4 then
				var_0_33(arg_45_0, var_45_4, true, iter_45_0.key)

				iter_45_0._uiTrigger = true
			end
		end
	end

	return false
end

function var_0_1.applyPostEvaluate(arg_46_0, arg_46_1)
	if not arg_46_0 or not arg_46_0.checked then
		return false
	end

	if not arg_46_1 or not arg_46_1.grid then
		return false
	end

	local var_46_0 = tonumber(arg_46_1.waveId or 0) or 0

	var_0_11(var_46_0)

	if arg_46_0.won == true then
		return var_0_1.applyWinPostEvaluate(arg_46_0, arg_46_1)
	end

	for iter_46_0 in var_0_9(var_46_0) do
		local var_46_1 = arg_46_1.isFirstSpin == true or arg_46_1.isFirstSpin == nil and arg_46_1.isFirstPaidSpin == true

		if iter_46_0.key == "TwistedBell" and var_46_1 and (iter_46_0._twistedBellUsedWave or -1) ~= var_46_0 then
			iter_46_0._twistedBellUsedWave = var_46_0
			iter_46_0._uiTrigger = nil
			iter_46_0._uiActiveThisSpin = nil
			iter_46_0._uiSustainSpin = nil
			iter_46_0._uiPulseT0 = nil
			iter_46_0._uiPulseDur = nil

			local var_46_2 = {
				var_0_29(arg_46_1.grid, 1),
				var_0_29(arg_46_1.grid, 2),
				var_0_29(arg_46_1.grid, 3)
			}

			var_0_30(var_46_2, arg_46_1)

			if arg_46_1.deferAnimation == true then
				return {
					key = iter_46_0.key,
					inst = iter_46_0,
					reels = var_46_2
				}
			end

			local var_46_3 = arg_46_1.grid

			for iter_46_1, iter_46_2 in ipairs(var_46_2) do
				local var_46_4 = iter_46_2.col

				for iter_46_3 = 1, 3 do
					var_46_3[iter_46_3] = var_46_3[iter_46_3] or {}
					var_46_3[iter_46_3][var_46_4] = iter_46_2.targetFinalSymbols[iter_46_3]
				end
			end

			local var_46_5, var_46_6 = var_0_31(var_46_3)

			arg_46_0.checked = true
			arg_46_0.won = #var_46_5 > 0
			arg_46_0.winningLines = var_46_5
			arg_46_0.symbol = var_46_6
			arg_46_0.newWinningLines = nil
			arg_46_0.visibleWinningLines = nil
			arg_46_0.highlightActive = false
			arg_46_0.ht = 0
			arg_46_0.fxStarted = false
			arg_46_0._twistedBellRerolled = true

			return true
		end
	end

	return false
end

function var_0_1.prepareFinalOutcome(arg_47_0, arg_47_1)
	if not arg_47_0 or not arg_47_0.checked or arg_47_0.won == true then
		return false
	end

	if arg_47_0._coreFinalOutcomePrepared then
		return arg_47_0._coreAutoReroll == true
	end

	arg_47_0._coreFinalOutcomePrepared = true

	local var_47_0 = tonumber(arg_47_1 and arg_47_1.waveId or 0) or 0

	var_0_11(var_47_0)

	for iter_47_0 in var_0_9(var_47_0) do
		if iter_47_0.key == "EntropySpoon" and love.math.random() < 0.1 then
			arg_47_0._coreAutoReroll = true
			iter_47_0._uiTrigger = true
			iter_47_0._entropySustainNext = true

			return true
		end
	end

	return false
end

local var_0_34

function var_0_1.onNudgeComplete(arg_48_0, arg_48_1)
	local var_48_0 = tonumber(arg_48_1 and arg_48_1.waveId or 0) or 0

	var_0_11(var_48_0)

	local var_48_1 = arg_48_0 and arg_48_0.won == true
	local var_48_2

	if var_48_1 then
		local var_48_3 = tonumber(arg_48_1 and (arg_48_1.spinWaveId or arg_48_1.waveId) or 0) or 0
		local var_48_4 = arg_48_1 and arg_48_1.spinKey or nil

		for iter_48_0 in var_0_9(var_48_0) do
			if iter_48_0.key == "DoubleLedger" then
				var_48_2 = var_0_34(iter_48_0, var_48_3, var_48_2, var_48_4)
			end
		end

		return var_48_2
	end

	for iter_48_1 in var_0_9(var_48_0) do
		if iter_48_1.key == "SpareBattery" and (iter_48_1._spareBatteryUsedWave or -1) ~= var_48_0 then
			iter_48_1._spareBatteryUsedWave = var_48_0
			iter_48_1._uiTrigger = true
			iter_48_1._uiActiveThisSpin = true
			iter_48_1._uiSustainSpin = true

			return {
				refundNudge = true,
				key = iter_48_1.key,
				inst = iter_48_1
			}
		end
	end

	return nil
end

function var_0_1.onAbsorb(arg_49_0)
	local var_49_0 = tonumber(arg_49_0 and arg_49_0.waveId or 0) or 0
	local var_49_1 = arg_49_0 and arg_49_0.info or nil

	var_0_11(var_49_0)

	local var_49_2

	for iter_49_0 in var_0_9(var_49_0) do
		if iter_49_0.key == "NutrientLeaf" and (iter_49_0._nutrientWaveId or -1) ~= var_49_0 then
			iter_49_0._nutrientWaveId = var_49_0
			iter_49_0._nutrientDiscountPending = math.max(tonumber(iter_49_0._nutrientDiscountPending or 0) or 0, 0.5)
			iter_49_0._uiTrigger = true
		elseif iter_49_0.key == "OldCrown" and not iter_49_0._oldCrownUsed then
			local var_49_3 = tonumber(var_49_1 and var_49_1.oldRank or 1) or 1
			local var_49_4 = tonumber(var_49_1 and var_49_1.newRank or var_49_1 and var_49_1.absorber and var_49_1.absorber.rank or 1) or 1
			local var_49_5 = tonumber(var_49_1 and var_49_1.newPending or var_49_1 and var_49_1.absorber and var_49_1.absorber.pendingRank or var_49_4) or var_49_4
			local var_49_6 = math.max(var_49_4, var_49_5)
			local var_49_7 = var_49_1 and var_49_1.absorber and var_49_1.absorber.sym

			if var_49_3 < 2 and var_49_6 >= 2 and var_49_7 and var_49_7 ~= "Blank" then
				iter_49_0._oldCrownUsed = true
				iter_49_0._oldCrownTargetSym = var_49_7
				iter_49_0._uiTrigger = true
			end
		elseif iter_49_0.key == "BloodlineSeal" and (iter_49_0._bloodlineUsedWave or -1) ~= var_49_0 then
			local var_49_8 = var_49_1 and var_49_1.victim and var_49_1.victim.sym

			if var_49_8 and var_49_8 ~= "Blank" and var_49_8 ~= "Joker" and var_49_8 ~= "J" then
				iter_49_0._bloodlineUsedWave = var_49_0
				iter_49_0._bloodlinePendingSym = var_49_8
				iter_49_0._uiTrigger = true
			end
		end
	end

	return var_49_2
end

local function var_0_35(arg_50_0)
	if not arg_50_0 then
		return nil
	end

	local var_50_0 = {}
	local var_50_1 = {}
	local var_50_2 = 0

	for iter_50_0 = 1, 3 do
		for iter_50_1 = 1, 3 do
			local var_50_3 = arg_50_0[iter_50_0] and arg_50_0[iter_50_0][iter_50_1]

			if var_50_3 and var_50_3 ~= "Blank" and var_50_3 ~= "Joker" and var_50_3 ~= "J" then
				var_50_0[var_50_3] = (var_50_0[var_50_3] or 0) + 1
			end
		end
	end

	for iter_50_2, iter_50_3 in pairs(var_50_0) do
		if var_50_2 < iter_50_3 then
			var_50_2 = iter_50_3
			var_50_1 = {
				iter_50_2
			}
		elseif iter_50_3 == var_50_2 then
			table.insert(var_50_1, iter_50_2)
		end
	end

	if #var_50_1 <= 0 then
		return nil
	end

	return var_50_1[love.math.random(1, #var_50_1)]
end

local function var_0_36(arg_51_0, arg_51_1)
	if not arg_51_0 then
		return false
	end

	local var_51_0 = math.max(1, math.floor(tonumber(arg_51_1 or 1) or 1))
	local var_51_1 = {}

	for iter_51_0 = 1, 3 do
		for iter_51_1 = 1, 3 do
			local var_51_2 = arg_51_0[iter_51_0] and arg_51_0[iter_51_0][iter_51_1]

			if var_51_2 and var_51_2 ~= "Blank" and var_51_2 ~= "Joker" and var_51_2 ~= "J" then
				local var_51_3 = (var_51_1[var_51_2] or 0) + 1

				if var_51_0 <= var_51_3 then
					return true
				end

				var_51_1[var_51_2] = var_51_3
			end
		end
	end

	return false
end

local function var_0_37(arg_52_0, arg_52_1)
	if not arg_52_0 or not arg_52_0.winningLines or type(arg_52_0.winningLines) ~= "table" or not arg_52_1 then
		return nil
	end

	local var_52_0 = {
		[4] = {
			{
				1,
				1
			},
			{
				2,
				2
			},
			{
				3,
				3
			}
		},
		[5] = {
			{
				1,
				3
			},
			{
				2,
				2
			},
			{
				3,
				1
			}
		}
	}
	local var_52_1 = {}

	for iter_52_0, iter_52_1 in ipairs(arg_52_0.winningLines) do
		local var_52_2 = var_52_0[iter_52_1]

		if var_52_2 then
			local var_52_3 = arg_52_1[var_52_2[1][1]] and arg_52_1[var_52_2[1][1]][var_52_2[1][2]]
			local var_52_4 = arg_52_1[var_52_2[2][1]] and arg_52_1[var_52_2[2][1]][var_52_2[2][2]]
			local var_52_5 = arg_52_1[var_52_2[3][1]] and arg_52_1[var_52_2[3][1]][var_52_2[3][2]]
			local var_52_6 = var_0_26(var_52_3, var_52_4, var_52_5)

			if var_52_6 then
				table.insert(var_52_1, var_52_6)
			end
		end
	end

	if #var_52_1 <= 0 then
		return nil
	end

	return var_52_1[love.math.random(1, #var_52_1)]
end

local function var_0_38(arg_53_0, arg_53_1)
	if arg_53_0 and arg_53_0.symbol and arg_53_0.symbol ~= "Blank" then
		return arg_53_0.symbol
	end

	if not arg_53_0 or not arg_53_0.winningLines or type(arg_53_0.winningLines) ~= "table" or not arg_53_1 then
		return nil
	end

	local var_53_0 = {
		{
			{
				1,
				1
			},
			{
				1,
				2
			},
			{
				1,
				3
			}
		},
		{
			{
				2,
				1
			},
			{
				2,
				2
			},
			{
				2,
				3
			}
		},
		{
			{
				3,
				1
			},
			{
				3,
				2
			},
			{
				3,
				3
			}
		},
		{
			{
				1,
				1
			},
			{
				2,
				2
			},
			{
				3,
				3
			}
		},
		{
			{
				1,
				3
			},
			{
				2,
				2
			},
			{
				3,
				1
			}
		},
		{
			{
				1,
				1
			},
			{
				2,
				1
			},
			{
				3,
				1
			}
		},
		{
			{
				1,
				2
			},
			{
				2,
				2
			},
			{
				3,
				2
			}
		},
		{
			{
				1,
				3
			},
			{
				2,
				3
			},
			{
				3,
				3
			}
		}
	}
	local var_53_1 = arg_53_0.winningLines[1]
	local var_53_2 = var_53_1 and var_53_0[var_53_1]

	if not var_53_2 then
		return nil
	end

	local var_53_3 = arg_53_1[var_53_2[1][1]] and arg_53_1[var_53_2[1][1]][var_53_2[1][2]]
	local var_53_4 = arg_53_1[var_53_2[2][1]] and arg_53_1[var_53_2[2][1]][var_53_2[2][2]]
	local var_53_5 = arg_53_1[var_53_2[3][1]] and arg_53_1[var_53_2[3][1]][var_53_2[3][2]]
	local var_53_6 = var_0_26(var_53_3, var_53_4, var_53_5)

	if var_53_6 then
		return var_53_6
	end

	return nil
end

local function var_0_39(arg_54_0, arg_54_1)
	if not arg_54_0 or not arg_54_1 then
		return 0
	end

	local var_54_0 = 0

	for iter_54_0 = 1, 3 do
		for iter_54_1 = 1, 3 do
			if arg_54_0[iter_54_0] and arg_54_0[iter_54_0][iter_54_1] == arg_54_1 then
				var_54_0 = var_54_0 + 1
			end
		end
	end

	return var_54_0
end

function var_0_32(arg_55_0, arg_55_1, arg_55_2)
	if not arg_55_1 then
		return nil
	end

	local var_55_0 = math.max(1, math.floor(tonumber(arg_55_2 or 1) or 1))
	local var_55_1 = {}
	local var_55_2 = {}

	local function var_55_3(arg_56_0)
		if arg_56_0 and arg_56_0 ~= "Blank" and arg_56_0 ~= "Joker" and arg_56_0 ~= "J" and not var_55_2[arg_56_0] then
			var_55_2[arg_56_0] = true

			table.insert(var_55_1, arg_56_0)
		end
	end

	var_55_3(arg_55_0 and arg_55_0.symbol)

	if arg_55_0 and arg_55_0.winningLines and type(arg_55_0.winningLines) == "table" then
		local var_55_4 = {
			{
				{
					1,
					1
				},
				{
					1,
					2
				},
				{
					1,
					3
				}
			},
			{
				{
					2,
					1
				},
				{
					2,
					2
				},
				{
					2,
					3
				}
			},
			{
				{
					3,
					1
				},
				{
					3,
					2
				},
				{
					3,
					3
				}
			},
			{
				{
					1,
					1
				},
				{
					2,
					2
				},
				{
					3,
					3
				}
			},
			{
				{
					1,
					3
				},
				{
					2,
					2
				},
				{
					3,
					1
				}
			},
			{
				{
					1,
					1
				},
				{
					2,
					1
				},
				{
					3,
					1
				}
			},
			{
				{
					1,
					2
				},
				{
					2,
					2
				},
				{
					3,
					2
				}
			},
			{
				{
					1,
					3
				},
				{
					2,
					3
				},
				{
					3,
					3
				}
			}
		}

		for iter_55_0, iter_55_1 in ipairs(arg_55_0.winningLines) do
			local var_55_5 = var_55_4[iter_55_1]

			if var_55_5 then
				local var_55_6 = arg_55_1[var_55_5[1][1]] and arg_55_1[var_55_5[1][1]][var_55_5[1][2]]
				local var_55_7 = arg_55_1[var_55_5[2][1]] and arg_55_1[var_55_5[2][1]][var_55_5[2][2]]
				local var_55_8 = arg_55_1[var_55_5[3][1]] and arg_55_1[var_55_5[3][1]][var_55_5[3][2]]

				var_55_3(var_0_26(var_55_6, var_55_7, var_55_8))
			end
		end
	end

	for iter_55_2, iter_55_3 in ipairs(var_55_1) do
		if var_55_0 <= var_0_39(arg_55_1, iter_55_3) then
			return iter_55_3
		end
	end

	return nil
end

local function var_0_40(arg_57_0)
	if not arg_57_0 or not arg_57_0.winningLines or type(arg_57_0.winningLines) ~= "table" then
		return false
	end

	for iter_57_0, iter_57_1 in ipairs(arg_57_0.winningLines) do
		if iter_57_1 == 6 or iter_57_1 == 7 or iter_57_1 == 8 then
			return true
		end
	end

	return false
end

local function var_0_41(arg_58_0)
	if not arg_58_0 or not arg_58_0.winningLines or type(arg_58_0.winningLines) ~= "table" then
		return false
	end

	for iter_58_0, iter_58_1 in ipairs(arg_58_0.winningLines) do
		if iter_58_1 == 1 or iter_58_1 == 2 or iter_58_1 == 3 then
			return true
		end
	end

	return false
end

local function var_0_42(arg_59_0)
	if not arg_59_0 or not arg_59_0.winningLines or type(arg_59_0.winningLines) ~= "table" then
		return 0
	end

	local var_59_0 = 0

	for iter_59_0 in ipairs(arg_59_0.winningLines) do
		var_59_0 = var_59_0 + 1
	end

	return var_59_0
end

local function var_0_43(arg_60_0, arg_60_1, arg_60_2, arg_60_3, arg_60_4)
	if not arg_60_0 or arg_60_0.key ~= "MultiEchoMirror" then
		return arg_60_4
	end

	if not (arg_60_1 and arg_60_1.checked and arg_60_1.won == true) and var_0_42(arg_60_1) == 0 and var_0_36(arg_60_2 and arg_60_2.grid, 4) and (arg_60_0._multiEchoUsedWave or -1) ~= arg_60_3 then
		arg_60_0._multiEchoUsedWave = arg_60_3
		arg_60_0._uiTrigger = true
		arg_60_4 = arg_60_4 or {}
		arg_60_4.essence = math.max(tonumber(arg_60_4.essence or 0) or 0, 1)
	end

	return arg_60_4
end

function var_0_1.onVisibleSpinLoss(arg_61_0, arg_61_1)
	if not arg_61_0 or not arg_61_0.checked or arg_61_0.won == true then
		return nil
	end

	local var_61_0 = tonumber(arg_61_1 and arg_61_1.waveId or 0) or 0

	var_0_11(var_61_0)

	local var_61_1

	for iter_61_0 in var_0_9(var_61_0) do
		var_61_1 = var_0_43(iter_61_0, arg_61_0, arg_61_1, var_61_0, var_61_1)
	end

	return var_61_1
end

function var_0_34(arg_62_0, arg_62_1, arg_62_2, arg_62_3)
	if not arg_62_0 then
		return arg_62_2
	end

	if (arg_62_0._doubleLedgerWinWave or -1) ~= arg_62_1 then
		arg_62_0._doubleLedgerWinWave = arg_62_1
		arg_62_0._doubleLedgerWinCount = 0
		arg_62_0._doubleLedgerLastSpinKey = nil
	end

	if arg_62_3 and arg_62_0._doubleLedgerLastSpinKey == arg_62_3 then
		return arg_62_2
	end

	arg_62_0._doubleLedgerLastSpinKey = arg_62_3
	arg_62_0._doubleLedgerWinCount = math.max(0, tonumber(arg_62_0._doubleLedgerWinCount or 0) or 0) + 1

	if arg_62_0._doubleLedgerWinCount >= 2 and (arg_62_0._doubleLedgerUsedWave or -1) ~= arg_62_1 then
		arg_62_0._doubleLedgerUsedWave = arg_62_1
		arg_62_0._uiTrigger = true
		arg_62_2 = arg_62_2 or {}
		arg_62_2.freeShopReroll = true
	end

	return arg_62_2
end

function var_0_1.finishSpinModifiers()
	if var_0_8._appliedThisSpin then
		local var_63_0 = var_0_8._baseForceProb ~= nil and var_0_8._baseForceProb or var_0_0 and var_0_0.slot and var_0_0.slot.forceWinProb or 0

		var_0_0.slot.forceWinProb = var_63_0
		var_0_8._appliedThisSpin = nil
	end

	if var_0_8._weightsApplied and var_0_8._baseSymbolWeights then
		var_0_0.slot.symbolWeights = var_0_8._baseSymbolWeights
		var_0_8._weightsApplied = false
	end

	return true
end

function var_0_1.onSpinResult(arg_64_0, arg_64_1)
	var_0_1.finishSpinModifiers()

	local var_64_0 = arg_64_1 and tonumber(arg_64_1.waveId or 0) or 0

	var_0_11(var_64_0)

	local var_64_1 = arg_64_0 and arg_64_0.checked and arg_64_0.won == true
	local var_64_2 = arg_64_1 and arg_64_1.isPaidSpin == true
	local var_64_3

	for iter_64_0 in var_0_9(var_64_0) do
		if iter_64_0.key == "Rootshroom" then
			if not var_64_1 then
				iter_64_0._rootshroomFails = (iter_64_0._rootshroomFails or 0) + 1

				if iter_64_0._rootshroomFails >= 2 then
					iter_64_0._rootshroomTargetSym = var_0_35(arg_64_1 and arg_64_1.grid)
					iter_64_0._rootshroomFails = 0
				end
			end
		elseif iter_64_0.key == "DiagonalCore" then
			if var_64_1 then
				local var_64_4 = var_0_37(arg_64_0, arg_64_1 and arg_64_1.grid)

				if var_64_4 then
					iter_64_0._diagonalTargetSym = var_64_4
				end
			end
		elseif iter_64_0.key == "HarvestFlag" then
			if var_64_1 and iter_64_0._harvestWaveId ~= var_64_0 then
				local var_64_5 = var_0_38(arg_64_0, arg_64_1 and arg_64_1.grid)

				if var_64_5 then
					iter_64_0._harvestWaveId = var_64_0
					iter_64_0._harvestTargetSym = var_64_5
					iter_64_0._uiTrigger = true
				end
			end
		elseif iter_64_0.key == "EntropySpoonFreeSpin" then
			if var_64_1 and (iter_64_0._entropyFreeWaveId or -1) ~= var_64_0 then
				iter_64_0._entropyFreeWaveId = var_64_0
				iter_64_0._entropyFreeDiscountPending = 1
				iter_64_0._uiTrigger = true
			end
		elseif iter_64_0.key == "ResonoscopeChain" then
			if var_64_1 and (iter_64_0._resonoChainUsedWave or -1) ~= var_64_0 then
				iter_64_0._resonoChainUsedWave = var_64_0
				iter_64_0._resonoChainDiscountPending = 0.5
				iter_64_0._uiTrigger = true
			end
		elseif iter_64_0.key == "VerticalCore" then
			if var_64_2 and var_64_1 and var_0_40(arg_64_0) then
				iter_64_0._uiTrigger = true
				var_64_3 = var_64_3 or {}

				local var_64_6 = math.max(0, tonumber(arg_64_1 and arg_64_1.spinCostIncreaseApplied or 0) or 0)

				var_64_3.spinCostRollback = math.max(tonumber(var_64_3.spinCostRollback or 0) or 0, var_64_6)
			end
		elseif iter_64_0.key == "Firstflag" then
			local var_64_7 = arg_64_1 and tonumber(arg_64_1.waveId or 0) or 0

			if var_64_1 then
				-- block empty
			elseif (iter_64_0._firstFailWaveUsed or -1) ~= var_64_7 then
				iter_64_0._nextWinBoost = math.max(iter_64_0._nextWinBoost or 0, 0.25)
				iter_64_0._firstFailWaveUsed = var_64_7
			end
		elseif iter_64_0.key == "Rushtrail" then
			if var_64_1 then
				iter_64_0._rushWins = (iter_64_0._rushWins or 0) + 1

				local var_64_8 = 0.06 * math.min(iter_64_0._rushWins or 0, 5)

				iter_64_0._nextWinBoost = math.max(iter_64_0._nextWinBoost or 0, var_64_8)
			else
				iter_64_0._rushWins = 0
			end
		elseif iter_64_0.key == "MultiEchoMirror" then
			var_64_3 = var_0_43(iter_64_0, arg_64_0, arg_64_1, var_64_0, var_64_3)
		elseif iter_64_0.key == "DoubleLedger" then
			if var_64_1 then
				var_64_3 = var_0_34(iter_64_0, var_64_0, var_64_3, arg_64_1 and arg_64_1.spinKey)
			end
		elseif iter_64_0.key == "HorizontalCore" then
			if var_64_1 and var_0_41(arg_64_0) then
				iter_64_0._horizontalDiscountPending = 0.4
			end
		elseif iter_64_0.key == "RewindClock" then
			if not var_64_1 then
				iter_64_0._rewindCostReductionPending = 25
			end
		elseif iter_64_0.key == "ReboundAxis" then
			if not var_64_1 and tonumber(arg_64_1 and (arg_64_1.spinIndexInWave or arg_64_1.paidSpinIndex) or 0) >= 3 and (iter_64_0._reboundAxisUsedWave or -1) ~= var_64_0 then
				iter_64_0._reboundAxisUsedWave = var_64_0
				iter_64_0._uiTrigger = true
				var_64_3 = var_64_3 or {}
				var_64_3.bonusNudge = math.max(tonumber(var_64_3.bonusNudge or 0) or 0, 1)
			end
		elseif iter_64_0.key == "MirageGoblet" then
			local var_64_9 = false

			if arg_64_0 and arg_64_0.winningLines and type(arg_64_0.winningLines) == "table" then
				local var_64_10 = {}

				for iter_64_1, iter_64_2 in ipairs(arg_64_0.winningLines) do
					var_64_10[iter_64_2] = true
				end

				var_64_9 = var_64_10[1] and var_64_10[2] and var_64_10[3] and var_64_10[4] and var_64_10[5]
			end

			if var_64_9 then
				local var_64_11 = arg_64_0 and arg_64_0.symbol

				if not var_64_11 and arg_64_1 and arg_64_1.grid and arg_64_0 and arg_64_0.winningLines then
					local var_64_12 = {
						{
							{
								1,
								1
							},
							{
								1,
								2
							},
							{
								1,
								3
							}
						},
						{
							{
								2,
								1
							},
							{
								2,
								2
							},
							{
								2,
								3
							}
						},
						{
							{
								3,
								1
							},
							{
								3,
								2
							},
							{
								3,
								3
							}
						},
						{
							{
								1,
								1
							},
							{
								2,
								2
							},
							{
								3,
								3
							}
						},
						{
							{
								1,
								3
							},
							{
								2,
								2
							},
							{
								3,
								1
							}
						},
						{
							{
								1,
								1
							},
							{
								2,
								1
							},
							{
								3,
								1
							}
						},
						{
							{
								1,
								2
							},
							{
								2,
								2
							},
							{
								3,
								2
							}
						},
						{
							{
								1,
								3
							},
							{
								2,
								3
							},
							{
								3,
								3
							}
						}
					}
					local var_64_13 = arg_64_0.winningLines[1]
					local var_64_14 = var_64_13 and var_64_12[var_64_13]

					if var_64_14 then
						local var_64_15 = arg_64_1.grid[var_64_14[1][1]][var_64_14[1][2]]
						local var_64_16 = arg_64_1.grid[var_64_14[2][1]][var_64_14[2][2]]
						local var_64_17 = arg_64_1.grid[var_64_14[3][1]][var_64_14[3][2]]

						var_64_11 = var_0_26(var_64_15, var_64_16, var_64_17) or var_64_11
					end
				end

				if var_64_11 then
					iter_64_0._mirageTargetSym = var_64_11
					iter_64_0._mirageSpins = 3
				end
			end
		elseif iter_64_0.key == "Resonoscope" then
			if arg_64_0 and arg_64_0.winningLines and type(arg_64_0.winningLines) == "table" and arg_64_1 and arg_64_1.grid then
				local var_64_18 = arg_64_1 and tonumber(arg_64_1.waveId or 0) or 0

				if (iter_64_0._resonoUsedWave or -1) ~= var_64_18 then
					local var_64_19 = {
						{
							{
								1,
								1
							},
							{
								1,
								2
							},
							{
								1,
								3
							}
						},
						{
							{
								2,
								1
							},
							{
								2,
								2
							},
							{
								2,
								3
							}
						},
						{
							{
								3,
								1
							},
							{
								3,
								2
							},
							{
								3,
								3
							}
						},
						{
							{
								1,
								1
							},
							{
								2,
								2
							},
							{
								3,
								3
							}
						},
						{
							{
								1,
								3
							},
							{
								2,
								2
							},
							{
								3,
								1
							}
						},
						{
							{
								1,
								1
							},
							{
								2,
								1
							},
							{
								3,
								1
							}
						},
						{
							{
								1,
								2
							},
							{
								2,
								2
							},
							{
								3,
								2
							}
						},
						{
							{
								1,
								3
							},
							{
								2,
								3
							},
							{
								3,
								3
							}
						}
					}
					local var_64_20 = {}

					for iter_64_3, iter_64_4 in ipairs(arg_64_0.winningLines) do
						local var_64_21 = var_64_19[iter_64_4]

						if var_64_21 then
							local var_64_22 = arg_64_1.grid[var_64_21[1][1]][var_64_21[1][2]]
							local var_64_23 = arg_64_1.grid[var_64_21[2][1]][var_64_21[2][2]]
							local var_64_24 = arg_64_1.grid[var_64_21[3][1]][var_64_21[3][2]]
							local var_64_25 = var_0_26(var_64_22, var_64_23, var_64_24)

							if var_64_25 then
								var_64_20[var_64_25] = (var_64_20[var_64_25] or 0) + 1
							end
						end
					end

					local var_64_26 = false

					for iter_64_5, iter_64_6 in pairs(var_64_20) do
						if iter_64_6 >= 3 then
							var_64_26 = true

							break
						end
					end

					if var_64_26 then
						iter_64_0._resonoJackpotNext = true
						iter_64_0._resonoUsedWave = var_64_18
					end
				end
			end
		elseif iter_64_0.key == "Prosperfang" then
			if var_64_1 then
				iter_64_0._pfWins = (iter_64_0._pfWins or 0) + 1

				if iter_64_0._pfWins >= 3 then
					iter_64_0._prosperNextMul = math.max(iter_64_0._prosperNextMul or 0, 1.1)
					iter_64_0._pfWins = 0
				end
			else
				iter_64_0._pfWins = 0
			end
		elseif iter_64_0.key == "ReverseShell" then
			if var_64_1 then
				iter_64_0._rsFails = 0
			else
				iter_64_0._rsFails = (iter_64_0._rsFails or 0) + 1

				if iter_64_0._rsFails >= 3 then
					iter_64_0._forceNextWinOnce = true
					iter_64_0._rsFails = 0
				end
			end
		elseif iter_64_0.key == "EntropySpoon" and not var_64_1 and not arg_64_0._coreFinalOutcomePrepared and love.math.random() < 0.1 then
			arg_64_0._coreAutoReroll = true
			iter_64_0._uiTrigger = true
			iter_64_0._entropySustainNext = true
		end
	end

	var_0_23()

	return var_64_3
end

function var_0_1.remove(arg_65_0)
	local var_65_0 = arg_65_0

	if type(arg_65_0) == "table" then
		var_65_0 = arg_65_0.key or arg_65_0.id
	end

	if type(var_65_0) ~= "string" then
		return false
	end

	local var_65_1 = tonumber(var_65_0) and string.format("%02d", tonumber(var_65_0)) or var_65_0

	for iter_65_0 = #var_0_8.active, 1, -1 do
		local var_65_2 = var_0_8.active[iter_65_0]
		local var_65_3 = var_65_2 and (var_65_2.key or var_65_2.def and (var_65_2.def.key or var_65_2.def.id))
		local var_65_4 = var_65_2 and var_65_2.def and var_65_2.def.id

		if var_65_3 == var_65_0 or var_65_4 == var_65_0 or var_65_4 == var_65_1 then
			table.remove(var_0_8.active, iter_65_0)

			return true
		end
	end

	return false
end

function var_0_1.getIds()
	local var_66_0 = {}

	for iter_66_0, iter_66_1 in ipairs(var_0_7) do
		var_66_0[iter_66_0] = iter_66_1.id or iter_66_1.key
	end

	table.sort(var_66_0, function(arg_67_0, arg_67_1)
		local var_67_0 = tonumber(arg_67_0)
		local var_67_1 = tonumber(arg_67_1)

		if var_67_0 and var_67_1 then
			return var_67_0 < var_67_1
		end

		return tostring(arg_67_0) < tostring(arg_67_1)
	end)

	return var_66_0
end

function var_0_1.getById(arg_68_0)
	if not arg_68_0 then
		return nil
	end

	local var_68_0 = tostring(arg_68_0)

	if tonumber(var_68_0) then
		var_68_0 = string.format("%02d", tonumber(var_68_0))
	end

	for iter_68_0, iter_68_1 in ipairs(var_0_7) do
		if iter_68_1.id == var_68_0 or iter_68_1.key == var_68_0 then
			return iter_68_1
		end
	end

	return nil
end

function var_0_1.reset()
	var_0_1.finishSpinModifiers()

	var_0_8.active = {}
	var_0_8._baseForceProb = nil
	var_0_8._baseSymbolWeights = nil
	var_0_8._weightsApplied = false
end

return var_0_1
