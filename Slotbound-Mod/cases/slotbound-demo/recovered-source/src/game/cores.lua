local var_0_0 = require("src.data.constants")
local var_0_1 = require("src.data.randomoption")
local var_0_2 = {}
local var_0_3 = {
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
local var_0_4 = {
	"C",
	"U",
	"R",
	"L"
}
local var_0_5 = {
	U = 2,
	C = 1,
	L = 4,
	R = 3
}
local var_0_6 = {
	{
		U = 18,
		C = 80,
		L = 0,
		R = 2
	},
	{
		U = 21,
		C = 74,
		L = 0.5,
		R = 4.5
	},
	{
		U = 24,
		C = 68,
		L = 1,
		R = 7
	},
	{
		U = 28,
		C = 60,
		L = 2,
		R = 10
	},
	{
		U = 31,
		C = 52,
		L = 3,
		R = 14
	},
	{
		U = 33,
		C = 44,
		L = 4,
		R = 19
	},
	{
		U = 34,
		C = 36,
		L = 6,
		R = 24
	},
	{
		U = 35,
		C = 30,
		L = 7,
		R = 28
	}
}
local var_0_7 = {
	["08"] = true,
	["07"] = true,
	["06"] = true,
	["05"] = true,
	["04"] = true,
	["03"] = true,
	["02"] = true,
	["01"] = true,
	["64"] = true,
	["59"] = true,
	["55"] = true,
	["51"] = true,
	["50"] = true,
	["45"] = true,
	["44"] = true,
	["42"] = true,
	["40"] = true,
	["39"] = true,
	["26"] = true,
	["25"] = true,
	["20"] = true,
	["19"] = true,
	["12"] = true,
	["11"] = true,
	["10"] = true,
	["09"] = true
}
local var_0_8 = {
	{
		triggerText = "웨이브당 1회",
		desc = "매 웨이브 첫 스핀 당첨 실패 시 그 스핀을 무료로 한 번 다시 굴립니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/01 Twisted Bell.png",
		rarity = "C",
		name = "뒤틀린 방울 (Twisted Bell)",
		key = "TwistedBell",
		id = "01",
		spawnChance = 0.06,
		duration = 0
	},
	{
		triggerText = "웨이브 첫 당첨",
		desc = "모든 당첨선의 심볼이 사라지고 새 심볼이 위에서 떨어집니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/02 Double Ledger.png",
		rarity = "C",
		name = "이중 장부 (Double Ledger)",
		key = "DoubleLedger",
		id = "02",
		spawnChance = 0.06,
		duration = 0
	},
	{
		triggerText = "첫 스핀 당첨 실패",
		desc = "매 웨이브 첫 스핀에서 당첨에 실패하면 마지막 릴이 첫 번째 릴의 심볼 배열을 복사합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/03 Twin Cherries.png",
		rarity = "C",
		name = "쌍둥이 체리 (Twin Cherries)",
		key = "TwinCherries",
		id = "03",
		spawnChance = 0.055,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		desc = "현재 슬롯의 심볼 하나를 선택하면 다음 스핀에 해당 심볼이 등장하지 않습니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/04 Ban Stamp.png",
		rarity = "C",
		name = "금지 도장 (Ban Stamp)",
		key = "BanStamp",
		id = "04",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "남은 스핀",
		desc = "전투 시작 시 남은 기본 스핀 1회당 {gold.png} 20을 지급합니다. {gold.png} 300을 모으면 전부 획득합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/05 Coin Sack.png",
		rarity = "C",
		name = "동전 자루 (Coin Sack)",
		key = "CoinSack",
		id = "05",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		desc = "당첨 실패 시, 가로줄에 같은 심볼 2개가 있으면 둘을 고정하고 남은 릴을 직접 멈춥니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/06 Lucky Nail.png",
		rarity = "C",
		name = "행운의 못 (Lucky Nail)",
		key = "LuckyNail",
		id = "06",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "수동 활성화",
		desc = "스핀에 {gold.png} 200을 추가로 지불하고 당첨 시 해당 유닛을 2배로 소환합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/07 X2.png",
		rarity = "C",
		name = "X2 (X2)",
		key = "X2",
		id = "07",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		desc = "당첨에 실패했지만 같은 심볼이 4개 이상 나오면 {essence.png} +1을 얻습니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/08 Echo Mirror.png",
		rarity = "C",
		name = "다중의 거울 (Echo Mirror)",
		key = "MultiEchoMirror",
		id = "08",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "웨이브 3번째 스핀",
		desc = "매 웨이브 3번째 스핀 실패 시, {middle.png}을 최대 2회 다시 굴립니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/09 Greedy Tail.png",
		rarity = "C",
		name = "욕심쟁이 꼬리 (Greedy Tail)",
		key = "GreedyTail",
		id = "09",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		unlock = "MercContract",
		desc = "{gold.png} 200 으로 일반 유닛 3명 중 1명을 선택합니다. 2회 사용 가능.",
		iconH = 32,
		iconW = 32,
		consumable = true,
		icon = "src/sprites/icons/relics icon/core icons/10 Merc Contract.png",
		rarity = "C",
		manualUse = true,
		name = "용병 계약서 (Merc Contract)",
		key = "MercContract",
		id = "10",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		desc = "매 웨이브 첫 흡수 후 다음 스핀 비용이 50% 감소합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/11 Nutrient Leaf.png",
		rarity = "C",
		name = "양분의 잎 (Nutrient Leaf)",
		key = "NutrientLeaf",
		id = "11",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "상시",
		desc = "선택한 심볼의 등장 확률이 5% 증가하며, 언제든 변경할 수 있습니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/12 Old Crown.png",
		rarity = "C",
		name = "낡은 왕관 (Old Crown)",
		key = "OldCrown",
		id = "12",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "당첨 실패 시",
		desc = "당첨에 실패하면 무작위 릴 1개의 넛지 예정 심볼을 보여줍니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/19 Resonoscope.png",
		rarity = "C",
		name = "동조의 망원경 (Resonoscope)",
		key = "ResonoscopeChain",
		id = "19",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		desc = "넛지로 당첨을 만들지 못하면 다음 스핀 이후 1회 돌려받습니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/20 Spare Battery.png",
		rarity = "C",
		name = "예비 전지 (Spare Battery)",
		key = "SpareBattery",
		id = "20",
		spawnChance = 0.05,
		duration = 0
	},
	{
		triggerText = "상시",
		desc = "슬롯 칸마다 1.5% 확률로 {joker_tooltip.png} 이 등장합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/25 Joker Seed.png",
		rarity = "U",
		name = "조커의 씨앗 (Joker Seed)",
		key = "JokerSeed",
		id = "25",
		spawnChance = 0.04,
		duration = 0
	},
	{
		triggerText = "6번째 스핀마다",
		desc = "스핀 6번째마다 {joker_tooltip.png} 1개가 반드시 등장합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/26 Torn Note.png",
		rarity = "U",
		name = "찢어진 쪽지 (Torn Note)",
		key = "TornNote",
		id = "26",
		spawnChance = 0.04,
		duration = 0
	},
	{
		triggerText = "웨이브 첫 흡수",
		desc = "매 웨이브 첫 흡수 후, 다음 스핀에 흡수로 사라진 유닛의 계열 심볼 3개가 등장합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/39 Bloodline Seal.png",
		rarity = "U",
		name = "혈통의 인장 (Bloodline Seal)",
		key = "BloodlineSeal",
		id = "39",
		spawnChance = 0.04,
		duration = 0
	},
	{
		triggerText = "당첨 실패 시",
		desc = "당첨에 실패하면 다음 스핀 비용이 {gold.png} 25 감소합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/40 Rewind Clock.png",
		rarity = "U",
		name = "되감는 시계 (Rewind Clock)",
		key = "RewindClock",
		id = "40",
		spawnChance = 0.04,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		desc = "당첨에 실패했지만 한 릴의 위아래 심볼이 같으면 가운데 심볼도 같은 심볼로 바뀝니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/42 Copycap.png",
		rarity = "U",
		name = "복제 버섯 (Copycap)",
		key = "Copycap",
		id = "42",
		spawnChance = 0.04,
		duration = 0
	},
	{
		triggerText = "직전 심볼 재당첨",
		desc = "직전 당첨과 같은 심볼로 다시 당첨되면 해당 유닛을 1명 추가로 소환합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/44 Echo Lantern.png",
		rarity = "U",
		name = "메아리 등불 (Echo Lantern)",
		key = "EchoLantern",
		id = "44",
		spawnChance = 0.04,
		duration = 0
	},
	{
		triggerText = "웨이브 첫 스핀",
		desc = "매 웨이브 첫 스핀에 {joker_tooltip.png} 1개가 반드시 등장합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/45 Black Note.png",
		rarity = "R",
		name = "검은 쪽지 (Black Note)",
		key = "BlackNote",
		id = "45",
		spawnChance = 0.03,
		duration = 0
	},
	{
		triggerText = "스핀당 1회",
		desc = "당첨된 심볼이 슬롯에 4개 이상 있으면 해당 유닛을 1명 추가로 소환합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/50 Resonant Anvil.png",
		rarity = "R",
		name = "공명의 모루 (Resonant Anvil)",
		key = "ResonantAnvil",
		id = "50",
		spawnChance = 0.03,
		duration = 0
	},
	{
		triggerText = "웨이브당 1회",
		desc = "당첨 실패 후 심볼 하나를 중앙 심볼과 교환할 수 있습니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/51 Crooked Fang.png",
		rarity = "R",
		name = "맞물린 송곳니 (Crooked Fang)",
		key = "CrookedFang",
		id = "51",
		spawnChance = 0.03,
		duration = 0
	},
	{
		triggerText = "넛지 사용 후",
		desc = "넛지 후 같은 릴을 추가로 한 번 더 넛지할 수 있습니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/55 Rebound Axis.png",
		rarity = "R",
		name = "반동축 (Rebound Axis)",
		key = "ReboundAxis",
		id = "55",
		spawnChance = 0.03,
		duration = 0
	},
	{
		triggerText = "조커 당첨",
		desc = "슬롯 칸마다 2% 확률로 {joker_tooltip.png} 가 등장하고, {joker_tooltip.png} 로 당첨되면 당첨된 심볼의 유닛을 1명 추가로 소환합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/59 Wildcard.png",
		rarity = "L",
		name = "와일드카드 (Wildcard)",
		key = "Wildcard",
		id = "59",
		spawnChance = 0.02,
		duration = 0
	},
	{
		triggerText = "5번째 스핀",
		desc = "5번째 스핀마다 황금 스핀이 됩니다. 황금 심볼로 당첨되면 해당 유닛의 희귀도가 한 단계 상승합니다.",
		iconH = 32,
		iconW = 32,
		icon = "src/sprites/icons/relics icon/core icons/64 Golden Lever.png",
		rarity = "L",
		name = "황금 레버 (Golden Lever)",
		key = "GoldenLever",
		id = "64",
		spawnChance = 0.02,
		duration = 0,
		unlock = function()
			local var_1_0 = var_0_0 and var_0_0.unitGrades and var_0_0.unitGrades.probabilities or {}

			return (tonumber(var_1_0.advanced or 0) or 0) > 0 or (tonumber(var_1_0.rare or 0) or 0) > 0 or (tonumber(var_1_0.legendary or 0) or 0) > 0 or (tonumber(var_1_0.prism or 0) or 0) > 0
		end
	}
}
local var_0_9 = {
	_weightsApplied = false,
	active = {},
	iconCache = {},
	iconDataCache = {}
}

local function var_0_10()
	local var_2_0 = rawget(_G, "Tutorial")

	if not var_2_0 then
		return false
	end

	if var_2_0.isRunning and var_2_0.isRunning() then
		return true
	end

	if var_2_0.isActive and var_2_0.isActive() then
		return true
	end

	return var_2_0.isPending and var_2_0.isPending() or false
end

function var_0_2.areEffectsSuppressed()
	return var_0_10()
end

local function var_0_11(arg_4_0)
	local var_4_0 = 0
	local var_4_1 = tonumber(arg_4_0 or 0) or 0

	return function()
		if var_0_10() then
			return nil
		end

		while var_4_0 < #var_0_9.active do
			var_4_0 = var_4_0 + 1

			local var_5_0 = var_0_9.active[var_4_0]
			local var_5_1 = tonumber(var_5_0 and var_5_0.startWave)

			if var_5_0 and (not var_5_1 or var_5_1 <= var_4_1) then
				return var_5_0
			end
		end

		return nil
	end
end

local function var_0_12(arg_6_0)
	for iter_6_0 = #arg_6_0, 2, -1 do
		local var_6_0 = love.math.random(1, iter_6_0)

		arg_6_0[iter_6_0], arg_6_0[var_6_0] = arg_6_0[var_6_0], arg_6_0[iter_6_0]
	end

	return arg_6_0
end

local function var_0_13(arg_7_0)
	if not arg_7_0 or arg_7_0 <= 0 then
		return
	end

	local var_7_0 = {}

	for iter_7_0, iter_7_1 in ipairs(var_0_9.active) do
		if not iter_7_1.expiryWave or arg_7_0 <= iter_7_1.expiryWave then
			if iter_7_1.key == "GreedyTail" then
				if iter_7_1._greedyTailUsedWave ~= arg_7_0 then
					iter_7_1._greedyTailUsedWave = nil
				end
			elseif iter_7_1.key == "NutrientLeaf" and iter_7_1._nutrientWaveId ~= arg_7_0 then
				iter_7_1._nutrientWaveId = nil
				iter_7_1._nutrientDiscountPending = nil
			end

			table.insert(var_7_0, iter_7_1)
		end
	end

	var_0_9.active = var_7_0
end

function var_0_2.getIcon(arg_8_0)
	if not arg_8_0 or not arg_8_0.icon then
		return nil
	end

	local var_8_0 = var_0_9.iconCache[arg_8_0.icon]

	if var_8_0 ~= nil then
		return var_8_0 or nil
	end

	if not love.filesystem.getInfo(arg_8_0.icon) then
		var_0_9.iconCache[arg_8_0.icon] = false

		return nil
	end

	local var_8_1, var_8_2 = pcall(love.graphics.newImage, arg_8_0.icon)

	if not var_8_1 or not var_8_2 then
		var_0_9.iconCache[arg_8_0.icon] = false

		return nil
	end

	var_8_2:setFilter("nearest", "nearest")

	var_0_9.iconCache[arg_8_0.icon] = var_8_2

	return var_8_2
end

function var_0_2.getIconData(arg_9_0)
	if not arg_9_0 or not arg_9_0.icon then
		return nil
	end

	local var_9_0 = var_0_9.iconDataCache[arg_9_0.icon]

	if var_9_0 ~= nil then
		return var_9_0 or nil
	end

	if not love.filesystem.getInfo(arg_9_0.icon) then
		var_0_9.iconDataCache[arg_9_0.icon] = false

		return nil
	end

	local var_9_1, var_9_2 = pcall(love.image.newImageData, arg_9_0.icon)

	if not var_9_1 or not var_9_2 then
		var_0_9.iconDataCache[arg_9_0.icon] = false

		return nil
	end

	var_0_9.iconDataCache[arg_9_0.icon] = var_9_2

	return var_9_2
end

function var_0_2.getRarity(arg_10_0)
	local var_10_0 = arg_10_0 and arg_10_0.rarity and var_0_3[arg_10_0.rarity]

	if var_10_0 then
		return var_10_0.label, var_10_0.color
	end

	return arg_10_0 and (arg_10_0.rarity or ""), {
		1,
		1,
		1,
		1
	}
end

function var_0_2.getActive()
	local var_11_0 = {}

	for iter_11_0, iter_11_1 in ipairs(var_0_9.active) do
		var_11_0[iter_11_0] = iter_11_1
	end

	return var_11_0
end

local function var_0_14(arg_12_0, arg_12_1, arg_12_2)
	local var_12_0 = type(arg_12_0)

	if var_12_0 == "nil" or var_12_0 == "boolean" or var_12_0 == "string" then
		return arg_12_0
	end

	if var_12_0 == "number" then
		if arg_12_0 ~= arg_12_0 or arg_12_0 == math.huge or arg_12_0 == -math.huge then
			return nil
		end

		return arg_12_0
	end

	if var_12_0 ~= "table" or arg_12_2 > 16 or arg_12_1[arg_12_0] then
		return nil
	end

	arg_12_1[arg_12_0] = true

	local var_12_1 = {}

	for iter_12_0, iter_12_1 in pairs(arg_12_0) do
		if (type(iter_12_0) == "string" or type(iter_12_0) == "number") and iter_12_0 ~= "def" and (type(iter_12_0) ~= "string" or not iter_12_0:match("^_ui")) then
			local var_12_2 = var_0_14(iter_12_1, arg_12_1, arg_12_2 + 1)

			if var_12_2 ~= nil then
				var_12_1[iter_12_0] = var_12_2
			end
		end
	end

	arg_12_1[arg_12_0] = nil

	return var_12_1
end

function var_0_2.exportState()
	local var_13_0 = {}

	for iter_13_0, iter_13_1 in ipairs(var_0_9.active) do
		local var_13_1 = var_0_14(iter_13_1, {}, 0) or {}

		if iter_13_1.key == "X2" then
			var_13_1._x2Armed = nil
			var_13_1._x2BetPaid = nil
			var_13_1._x2ManualActivation = nil
		end

		var_13_1.id = iter_13_1.def and iter_13_1.def.id or var_13_1.id
		var_13_1.key = iter_13_1.key or iter_13_1.def and iter_13_1.def.key or var_13_1.key
		var_13_0[iter_13_0] = var_13_1
	end

	return var_13_0
end

function var_0_2.importState(arg_14_0)
	var_0_2.reset()

	if type(arg_14_0) ~= "table" then
		return false
	end

	for iter_14_0, iter_14_1 in ipairs(arg_14_0) do
		if type(iter_14_1) == "table" then
			local var_14_0 = var_0_2.getById(iter_14_1.id or iter_14_1.key)

			if var_14_0 then
				local var_14_1 = var_0_14(iter_14_1, {}, 0) or {}

				var_14_1.id = nil
				var_14_1.def = var_14_0
				var_14_1.key = var_14_0.key or var_14_0.id
				var_14_1.stacks = math.max(0, math.floor(tonumber(var_14_1.stacks or 0) or 0))
				var_14_1.maxStacks = math.max(1, math.floor(tonumber(var_14_1.maxStacks or 3) or 3))
				var_14_1.startWave = math.max(1, math.floor(tonumber(var_14_1.startWave or 1) or 1))

				if var_14_1.expiryWave == nil then
					var_14_1.expiryWave = math.huge
				end

				if var_14_1.key == "X2" then
					var_14_1._x2Armed = nil
					var_14_1._x2BetPaid = nil
					var_14_1._x2ManualActivation = nil
				end

				table.insert(var_0_9.active, var_14_1)
			end
		end
	end

	return true
end

function var_0_2.getGoldenLeverMaxGrade(arg_15_0)
	local var_15_0 = var_0_0 and var_0_0.unitGrades or nil
	local var_15_1 = var_15_0 and var_15_0.order or {
		"normal",
		"advanced",
		"rare",
		"legendary",
		"prism"
	}
	local var_15_2 = arg_15_0 or var_15_0 and var_15_0.probabilities or {}
	local var_15_3 = var_15_1[1] or "normal"

	for iter_15_0, iter_15_1 in ipairs(var_15_1) do
		if (tonumber(var_15_2[iter_15_1] or 0) or 0) > 0 then
			var_15_3 = iter_15_1
		end
	end

	return var_15_3
end

function var_0_2.upgradeGoldenLeverGrade(arg_16_0, arg_16_1, arg_16_2)
	local var_16_0 = var_0_0 and var_0_0.unitGrades or nil
	local var_16_1 = var_16_0 and var_16_0.order or {
		"normal",
		"advanced",
		"rare",
		"legendary",
		"prism"
	}
	local var_16_2 = 1
	local var_16_3 = 1

	for iter_16_0, iter_16_1 in ipairs(var_16_1) do
		if iter_16_1 == arg_16_0 then
			var_16_2 = iter_16_0
		end

		if iter_16_1 == arg_16_1 then
			var_16_3 = iter_16_0
		end
	end

	if var_16_3 <= var_16_2 then
		return var_16_1[var_16_2] or arg_16_0 or "normal"
	end

	return var_16_1[math.min(var_16_3, var_16_2 + math.max(0, math.floor(tonumber(arg_16_2 or 1) or 1)))] or arg_16_0 or "normal"
end

function var_0_2.getRuntimeActive(arg_17_0)
	local var_17_0 = {}

	for iter_17_0 in var_0_11(tonumber(arg_17_0 or 0) or 0) do
		var_17_0[#var_17_0 + 1] = iter_17_0
	end

	return var_17_0
end

local function var_0_15(arg_18_0)
	if not arg_18_0 then
		return nil
	end

	local var_18_0 = {}

	for iter_18_0, iter_18_1 in pairs(arg_18_0) do
		var_18_0[iter_18_0] = iter_18_1
	end

	return var_18_0
end

local function var_0_16(arg_19_0, arg_19_1, arg_19_2)
	if not arg_19_0 or not arg_19_1 or not arg_19_2 or arg_19_2 <= 0 then
		return arg_19_0
	end

	local var_19_0 = 0

	for iter_19_0, iter_19_1 in pairs(arg_19_0) do
		var_19_0 = var_19_0 + (tonumber(iter_19_1 or 0) or 0)
	end

	if var_19_0 <= 1e-09 then
		return arg_19_0
	end

	local var_19_1 = {}

	for iter_19_2, iter_19_3 in pairs(arg_19_0) do
		var_19_1[iter_19_2] = (tonumber(iter_19_3 or 0) or 0) / var_19_0
	end

	local var_19_2 = var_19_1[arg_19_1] or 0
	local var_19_3 = math.max(0, math.min(1, var_19_2 + arg_19_2))
	local var_19_4 = 1 - var_19_2

	if var_19_4 <= 1e-09 then
		var_19_4 = 1
	end

	local var_19_5 = (1 - var_19_3) / var_19_4
	local var_19_6 = {}

	for iter_19_4, iter_19_5 in pairs(var_19_1) do
		if iter_19_4 == arg_19_1 then
			var_19_6[iter_19_4] = var_19_3
		else
			var_19_6[iter_19_4] = iter_19_5 * var_19_5
		end
	end

	return var_19_6
end

local var_0_17 = {
	S = true,
	D = true,
	H = true,
	M = true,
	A = true,
	W = true
}

local function var_0_18(arg_20_0, arg_20_1)
	if not arg_20_0 or not var_0_17[arg_20_1] then
		return arg_20_0
	end

	local var_20_0 = 0
	local var_20_1 = 0

	for iter_20_0, iter_20_1 in pairs(arg_20_0) do
		local var_20_2 = math.max(0, tonumber(iter_20_1 or 0) or 0)

		var_20_0 = var_20_0 + var_20_2

		if iter_20_0 ~= arg_20_1 then
			var_20_1 = var_20_1 + var_20_2
		end
	end

	if var_20_0 <= 1e-09 or var_20_1 <= 1e-09 then
		return arg_20_0
	end

	local var_20_3 = var_20_0 / var_20_1
	local var_20_4 = {}

	for iter_20_2, iter_20_3 in pairs(arg_20_0) do
		if iter_20_2 == arg_20_1 then
			var_20_4[iter_20_2] = 0
		else
			var_20_4[iter_20_2] = math.max(0, tonumber(iter_20_3 or 0) or 0) * var_20_3
		end
	end

	return var_20_4
end

function var_0_2.getProjectedSymbolWeights(arg_21_0, arg_21_1)
	local var_21_0 = tonumber(arg_21_0 or 0) or 0

	var_0_13(var_21_0)

	local var_21_1 = var_0_9._weightsApplied and var_0_9._baseSymbolWeights or var_0_0 and var_0_0.slot and var_0_0.slot.symbolWeights or {}
	local var_21_2 = var_0_15(var_21_1)
	local var_21_3 = var_0_15(var_21_2)
	local var_21_4 = {}

	local function var_21_5(arg_22_0, arg_22_1)
		local var_22_0 = var_21_3 and var_21_3[arg_22_0]
		local var_22_1 = var_0_16(var_21_3, arg_22_0, arg_22_1)

		if var_22_1 then
			var_21_3 = var_0_15(var_22_1)

			if arg_22_0 then
				var_21_4[arg_22_0] = true
			end
		end

		return var_22_0 ~= (var_21_3 and var_21_3[arg_22_0])
	end

	for iter_21_0 in var_0_11(var_21_0) do
		if iter_21_0.key == "MirageGoblet" and (iter_21_0._mirageSpins or 0) > 0 and iter_21_0._mirageTargetSym then
			var_21_5(iter_21_0._mirageTargetSym, 0.05)
		end
	end

	for iter_21_1 in var_0_11(var_21_0) do
		if iter_21_1.key == "OldCrown" and iter_21_1._oldCrownTargetSym then
			var_21_5(iter_21_1._oldCrownTargetSym, 0.05)
		end
	end

	for iter_21_2 in var_0_11(var_21_0) do
		if iter_21_2.key == "BanStamp" and iter_21_2._banStampPendingWave == var_21_0 and iter_21_2._banStampPendingSym then
			var_21_3 = var_0_15(var_0_18(var_21_3, iter_21_2._banStampPendingSym))
			var_21_4[iter_21_2._banStampPendingSym] = true
		end
	end

	return var_21_3, var_21_2, var_21_4
end

function var_0_2.getJokerChance(arg_23_0)
	local var_23_0 = tonumber(arg_23_0 or 0) or 0

	var_0_13(var_23_0)

	local var_23_1 = 0

	for iter_23_0 in var_0_11(var_23_0) do
		if iter_23_0.key == "JokerSeed" then
			var_23_1 = var_23_1 + 0.015
		elseif iter_23_0.key == "Wildcard" then
			var_23_1 = var_23_1 + 0.02
		end
	end

	return math.max(0, math.min(0.05, var_23_1))
end

local var_0_19 = 200

function var_0_2.getX2State(arg_24_0)
	local var_24_0 = tonumber(arg_24_0 or 0) or 0

	var_0_13(var_24_0)

	for iter_24_0 in var_0_11(var_24_0) do
		if iter_24_0.key == "X2" then
			return {
				available = true,
				armed = iter_24_0._x2Armed == true,
				betPaid = iter_24_0._x2BetPaid == true,
				extraCost = var_0_19,
				instance = iter_24_0
			}
		end
	end

	return {
		available = false,
		betPaid = false,
		armed = false,
		extraCost = var_0_19
	}
end

function var_0_2.setX2Armed(arg_25_0, arg_25_1)
	local var_25_0 = var_0_2.getX2State(arg_25_1 and arg_25_1.waveId)
	local var_25_1 = var_25_0 and var_25_0.instance

	if not var_25_1 then
		return false
	end

	var_25_1._x2Armed = arg_25_0 == true or nil
	var_25_1._x2ManualActivation = arg_25_0 == true or nil
	var_25_1._x2BetPaid = nil
	var_25_1._uiTrigger = true
	var_25_1._uiPulseT0 = love.timer.getTime()

	return true
end

function var_0_2.getX2ExtraCost(arg_26_0)
	local var_26_0 = var_0_2.getX2State(arg_26_0)
	local var_26_1 = var_26_0 and var_26_0.instance

	return var_26_0.available and var_26_0.armed and var_26_1 and var_26_1._x2ManualActivation == true and var_0_19 or 0
end

function var_0_2.markX2BetPaid(arg_27_0, arg_27_1)
	local var_27_0 = var_0_2.getX2State(arg_27_0)
	local var_27_1 = var_27_0 and var_27_0.instance

	if not var_27_1 or not var_27_0.armed or var_27_1._x2ManualActivation ~= true or tonumber(arg_27_1 or 0) ~= var_0_19 then
		return false
	end

	var_27_1._x2BetPaid = true

	return true
end

function var_0_2.getSpinPriceDiscount(arg_28_0, arg_28_1)
	var_0_13(tonumber(arg_28_0 or 0) or 0)

	local var_28_0 = tonumber(arg_28_0 or 0) or 0
	local var_28_1 = 0

	for iter_28_0 in var_0_11(var_28_0) do
		if iter_28_0.key == "NutrientLeaf" and (iter_28_0._nutrientDiscountPending or 0) > 0 then
			var_28_1 = math.max(var_28_1, tonumber(iter_28_0._nutrientDiscountPending or 0) or 0)
		end
	end

	return var_28_1
end

function var_0_2.getSpinPriceFlatReduction(arg_29_0, arg_29_1)
	var_0_13(tonumber(arg_29_0 or 0) or 0)

	local var_29_0 = 0

	for iter_29_0 in var_0_11(tonumber(arg_29_0 or 0) or 0) do
		if iter_29_0.key == "RewindClock" then
			if (iter_29_0._rewindCostReductionPending or 0) > 0 then
				var_29_0 = math.max(var_29_0, tonumber(iter_29_0._rewindCostReductionPending or 0) or 0)
			end

			if arg_29_1 and arg_29_1.pendingPaidFailure == true then
				var_29_0 = math.max(var_29_0, 25)
			end
		end
	end

	return var_29_0
end

local function var_0_20(arg_30_0, arg_30_1)
	if not arg_30_0 then
		return false
	end

	local var_30_0 = arg_30_0.id and tostring(arg_30_0.id) or nil

	if var_0_7[var_30_0] ~= true then
		return false
	end

	if arg_30_0.locked == true or arg_30_0.unlocked == false then
		return false
	end

	if type(arg_30_0.unlock) == "function" then
		local var_30_1, var_30_2 = pcall(arg_30_0.unlock)

		return var_30_1 and var_30_2 == true
	end

	if type(arg_30_0.unlock) == "string" then
		return arg_30_1 and arg_30_1[arg_30_0.unlock] == true or var_0_9.unlocks and var_0_9.unlocks[arg_30_0.unlock] == true
	end

	return true
end

local function var_0_21(arg_31_0, arg_31_1)
	if not arg_31_0 or not arg_31_1 then
		return
	end

	local var_31_0 = arg_31_1.def or arg_31_1
	local var_31_1 = arg_31_1.key or var_31_0.key
	local var_31_2 = arg_31_1.id or var_31_0.id

	if var_31_1 then
		arg_31_0[var_31_1] = true
	end

	if var_31_2 then
		arg_31_0[var_31_2] = true
	end
end

local function var_0_22(arg_32_0)
	local var_32_0 = math.max(1, math.floor(tonumber(arg_32_0 or 1) or 1))

	return var_0_6[math.min(var_32_0, #var_0_6)]
end

local function var_0_23(arg_33_0)
	local var_33_0 = var_0_22(arg_33_0)
	local var_33_1 = 0

	for iter_33_0, iter_33_1 in ipairs(var_0_4) do
		var_33_1 = var_33_1 + math.max(0, tonumber(var_33_0[iter_33_1] or 0) or 0)
	end

	if var_33_1 <= 0 then
		return "C"
	end

	local var_33_2 = love.math.random() * var_33_1

	for iter_33_2, iter_33_3 in ipairs(var_0_4) do
		local var_33_3 = math.max(0, tonumber(var_33_0[iter_33_3] or 0) or 0)

		if var_33_2 < var_33_3 then
			return iter_33_3
		end

		var_33_2 = var_33_2 - var_33_3
	end

	return "C"
end

local function var_0_24(arg_34_0, arg_34_1, arg_34_2, arg_34_3, arg_34_4)
	local var_34_0 = {}

	for iter_34_0, iter_34_1 in ipairs(var_0_8) do
		local var_34_1 = iter_34_1.key or iter_34_1.id
		local var_34_2 = iter_34_1.id
		local var_34_3 = var_34_1 and arg_34_2[var_34_1] or var_34_2 and arg_34_2[var_34_2]
		local var_34_4 = var_34_1 and arg_34_1[var_34_1] or var_34_2 and arg_34_1[var_34_2]
		local var_34_5 = (iter_34_1.rarity or "C") == arg_34_0
		local var_34_6 = iter_34_1.rarity ~= "L" or not arg_34_3

		if var_34_5 and var_34_6 and var_34_1 and not var_34_3 and not var_34_4 and var_0_20(iter_34_1, arg_34_4) then
			table.insert(var_34_0, iter_34_1)
		end
	end

	if #var_34_0 > 1 then
		var_0_12(var_34_0)
	end

	return var_34_0
end

local function var_0_25(arg_35_0, arg_35_1, arg_35_2, arg_35_3, arg_35_4)
	for iter_35_0 = var_0_5[arg_35_0] or 1, 1, -1 do
		local var_35_0 = var_0_24(var_0_4[iter_35_0], arg_35_1, arg_35_2, arg_35_3, arg_35_4)

		if var_35_0[1] then
			return var_35_0[1]
		end
	end

	for iter_35_1 = 1, #var_0_4 do
		local var_35_1 = var_0_24(var_0_4[iter_35_1], arg_35_1, arg_35_2, arg_35_3, arg_35_4)

		if var_35_1[1] then
			return var_35_1[1]
		end
	end

	return nil
end

local function var_0_26(arg_36_0)
	local var_36_0 = var_0_22(arg_36_0)
	local var_36_1 = 0

	for iter_36_0 = 2, #var_0_4 do
		local var_36_2 = var_0_4[iter_36_0]

		var_36_1 = var_36_1 + math.max(0, tonumber(var_36_0[var_36_2] or 0) or 0)
	end

	if var_36_1 <= 0 then
		return "U"
	end

	local var_36_3 = love.math.random() * var_36_1

	for iter_36_1 = 2, #var_0_4 do
		local var_36_4 = var_0_4[iter_36_1]
		local var_36_5 = math.max(0, tonumber(var_36_0[var_36_4] or 0) or 0)

		if var_36_3 < var_36_5 then
			return var_36_4
		end

		var_36_3 = var_36_3 - var_36_5
	end

	return "U"
end

local function var_0_27(arg_37_0, arg_37_1, arg_37_2, arg_37_3, arg_37_4)
	local var_37_0 = var_0_26(arg_37_0)

	for iter_37_0 = math.max(2, var_0_5[var_37_0] or 2), 2, -1 do
		local var_37_1 = var_0_24(var_0_4[iter_37_0], arg_37_1, arg_37_2, arg_37_3, arg_37_4)

		if var_37_1[1] then
			return var_37_1[1]
		end
	end

	for iter_37_1 = 2, #var_0_4 do
		local var_37_2 = var_0_24(var_0_4[iter_37_1], arg_37_1, arg_37_2, arg_37_3, arg_37_4)

		if var_37_2[1] then
			return var_37_2[1]
		end
	end

	return nil
end

function var_0_2.offer(arg_38_0, arg_38_1, arg_38_2, arg_38_3)
	arg_38_0 = math.max(1, math.floor(tonumber(arg_38_0 or 3) or 3))

	local var_38_0 = math.max(1, math.floor(tonumber(arg_38_1 or 1) or 1))
	local var_38_1 = {}

	for iter_38_0, iter_38_1 in ipairs(var_0_9.active) do
		var_0_21(var_38_1, iter_38_1)
	end

	local var_38_2 = {}
	local var_38_3 = {}
	local var_38_4 = false

	for iter_38_2 = 1, arg_38_0 do
		local var_38_5 = arg_38_2 == true and var_38_0 == 1 and iter_38_2 == 1 and var_0_27(var_38_0, var_38_1, var_38_3, var_38_4, arg_38_3) or var_0_25(var_0_23(var_38_0), var_38_1, var_38_3, var_38_4, arg_38_3)

		if not var_38_5 then
			break
		end

		var_38_2[iter_38_2] = var_38_5

		var_0_21(var_38_3, var_38_5)

		if var_38_5.rarity == "L" then
			var_38_4 = true
		end
	end

	return var_38_2
end

function var_0_2.select(arg_39_0, arg_39_1)
	if not arg_39_0 then
		return
	end

	local var_39_0 = tonumber(arg_39_1 or 0) or 0
	local var_39_1 = tonumber(arg_39_0.duration or 0) or 0
	local var_39_2 = {
		maxStacks = 3,
		stacks = 0,
		def = arg_39_0,
		key = arg_39_0.key or arg_39_0.id,
		startWave = var_39_0,
		expiryWave = var_39_1 > 0 and var_39_0 + var_39_1 - 1 or math.huge
	}

	table.insert(var_0_9.active, var_39_2)

	local var_39_3, var_39_4 = var_0_2.getRarity(arg_39_0)

	var_39_2._uiSpawnVFX = {
		startT = love.timer and love.timer.getTime and love.timer.getTime() or 0,
		dur = (function()
			local var_40_0, var_40_1 = pcall(require, "src.ui.config")

			if var_40_0 and var_40_1 and var_40_1._active then
				-- block empty
			end

			local var_40_2, var_40_3 = pcall(function()
				return _G.ui
			end)

			if var_40_2 and var_40_3 and var_40_3.coreEquipped and var_40_3.coreEquipped.fx and var_40_3.coreEquipped.fx.spawn then
				local var_40_4 = var_40_3.coreEquipped.fx.spawn
				local var_40_5 = var_40_4.dur or {
					0.6,
					0.5,
					0.4
				}
				local var_40_6 = var_40_4.mul or 1

				return {
					(var_40_5[1] or 0.6) * var_40_6,
					(var_40_5[2] or 0.5) * var_40_6,
					(var_40_5[3] or 0.4) * var_40_6
				}
			end

			return {
				0.6,
				0.5,
				0.4
			}
		end)(),
		tint = {
			var_39_4 and var_39_4[1] or 1,
			var_39_4 and var_39_4[2] or 1,
			var_39_4 and var_39_4[3] or 1
		}
	}
end

local function var_0_28(arg_42_0)
	if not arg_42_0 then
		return
	end

	arg_42_0._uiPulseT0 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	arg_42_0._uiPulseDur = 0.6
end

var_0_2.MERC_CONTRACT_COST = 200
var_0_2.MERC_CONTRACT_MAX_USES = 2

local var_0_29 = {
	"W",
	"A",
	"S",
	"M",
	"H",
	"D"
}
local var_0_30 = {
	S = true,
	D = true,
	H = true,
	M = true,
	A = true,
	W = true
}

var_0_2.MERC_CONTRACT_SYMBOL_WEIGHTS = {
	S = 0.21,
	D = 0.05,
	H = 0.16,
	M = 0.16,
	A = 0.21,
	W = 0.21
}

function var_0_2.getMercContractRemainingUses(arg_43_0)
	if not arg_43_0 or arg_43_0.key ~= "MercContract" then
		return nil
	end

	local var_43_0 = math.max(0, math.floor(tonumber(arg_43_0._mercContractUses or 0) or 0))

	return math.max(0, var_0_2.MERC_CONTRACT_MAX_USES - var_43_0)
end

function var_0_2.getIconCounter(arg_44_0, arg_44_1)
	if not arg_44_0 then
		return nil
	end

	if arg_44_0.key == "MercContract" then
		local var_44_0 = var_0_2.getMercContractRemainingUses(arg_44_0)

		return var_44_0 > 0 and var_44_0 or nil
	end

	local var_44_1
	local var_44_2

	if arg_44_0.key == "TornNote" then
		var_44_1, var_44_2 = 6, arg_44_0._tornNoteSpinCount
	elseif arg_44_0.key == "GoldenLever" then
		var_44_1, var_44_2 = 5, arg_44_0._goldenLeverSpinCount
	elseif arg_44_0.key == "OracleSigil" then
		var_44_1, var_44_2 = 6, arg_44_0._oracleCount
	elseif arg_44_0.key == "GreedyTail" then
		local var_44_3 = 3 - math.max(0, math.floor(tonumber(arg_44_1) or 0))

		return var_44_3 > 0 and var_44_3 or nil
	elseif arg_44_0.key == "ReverseShell" then
		if arg_44_0._forceNextWinOnce then
			return 0
		end

		var_44_1, var_44_2 = 3, arg_44_0._rsFails
	elseif arg_44_0.key == "Prosperfang" then
		if (arg_44_0._prosperNextMul or 1) > 1 then
			return 0
		end

		var_44_1, var_44_2 = 3, arg_44_0._pfWins
	else
		return nil
	end

	return var_44_1 - math.max(0, math.floor(tonumber(var_44_2) or 0)) % var_44_1
end

local function var_0_31(arg_45_0)
	if type(arg_45_0) == "function" then
		local var_45_0 = tonumber(arg_45_0()) or 0

		return math.max(0, math.min(0.999999999, var_45_0))
	end

	if love and love.math and love.math.random then
		return love.math.random()
	end

	return math.random()
end

local function var_0_32(arg_46_0, arg_46_1)
	local var_46_0 = var_0_2.MERC_CONTRACT_SYMBOL_WEIGHTS
	local var_46_1 = 0

	for iter_46_0, iter_46_1 in ipairs(var_0_29) do
		if not arg_46_1 or not arg_46_1[iter_46_1] then
			var_46_1 = var_46_1 + math.max(0, tonumber(var_46_0[iter_46_1] or 0) or 0)
		end
	end

	if var_46_1 <= 0 then
		for iter_46_2, iter_46_3 in ipairs(var_0_29) do
			if not arg_46_1 or not arg_46_1[iter_46_3] then
				return iter_46_3
			end
		end

		return nil
	end

	local var_46_2 = var_0_31(arg_46_0) * var_46_1
	local var_46_3

	for iter_46_4, iter_46_5 in ipairs(var_0_29) do
		if not arg_46_1 or not arg_46_1[iter_46_5] then
			var_46_3 = iter_46_5
			var_46_2 = var_46_2 - math.max(0, tonumber(var_46_0[iter_46_5] or 0) or 0)

			if var_46_2 < 0 then
				return iter_46_5
			end
		end
	end

	return var_46_3
end

function var_0_2.rollMercContractCandidates(arg_47_0)
	local var_47_0 = {
		var_0_32(arg_47_0),
		(var_0_32(arg_47_0))
	}
	local var_47_1 = {}

	if var_47_0[1] and var_47_0[1] == var_47_0[2] then
		var_47_1[var_47_0[1]] = true
	end

	var_47_0[3] = var_0_32(arg_47_0, var_47_1)

	local var_47_2 = {}
	local var_47_3 = {}

	for iter_47_0 = 1, 3 do
		local var_47_4 = var_47_0[iter_47_0]

		if not var_0_30[var_47_4] then
			return nil
		end

		local var_47_5 = var_0_1.rollForSpawnExcluding(var_47_3, arg_47_0, "normal", nil, false, true)

		if not var_47_5 or not var_47_5.id then
			return nil
		end

		var_47_3[tostring(var_47_5.id)] = true
		var_47_2[iter_47_0] = {
			grade = "normal",
			rank = 1,
			sym = var_47_4,
			randomOption = var_47_5,
			randomOptions = {
				var_47_5
			}
		}
	end

	return var_47_2
end

function var_0_2.getMercContractState(arg_48_0)
	local var_48_0 = tonumber(arg_48_0 or 0) or 0

	var_0_13(var_48_0)

	for iter_48_0 in var_0_11(var_48_0) do
		if iter_48_0.key == "MercContract" then
			local var_48_1 = math.max(0, math.floor(tonumber(iter_48_0._mercContractUses or 0) or 0))
			local var_48_2 = (iter_48_0._mercContractUsedWave or -1) == var_48_0
			local var_48_3 = var_48_1 >= var_0_2.MERC_CONTRACT_MAX_USES
			local var_48_4 = iter_48_0._mercContractPending

			if var_48_4 and var_48_4.waveId ~= var_48_0 then
				iter_48_0._mercContractPending = nil
				var_48_4 = nil
			end

			return {
				active = true,
				available = not var_48_2 and not var_48_3,
				used = var_48_2,
				uses = var_48_1,
				remainingUses = var_0_2.getMercContractRemainingUses(iter_48_0),
				cost = var_0_2.MERC_CONTRACT_COST,
				candidates = var_48_4 and var_48_4.candidates or nil,
				instance = iter_48_0
			}
		end
	end

	return nil
end

function var_0_2.beginMercContract(arg_49_0, arg_49_1)
	local var_49_0 = tonumber(arg_49_0 or 0) or 0
	local var_49_1 = var_0_2.getMercContractState(var_49_0)

	if not var_49_1 or not var_49_1.available or not var_49_1.instance then
		return nil, false
	end

	local var_49_2 = var_49_1.instance._mercContractPending

	if var_49_2 and var_49_2.waveId == var_49_0 and var_49_2.candidates then
		return var_49_2.candidates, false
	end

	local var_49_3 = var_0_2.rollMercContractCandidates(arg_49_1)

	if not var_49_3 then
		return nil, false
	end

	var_49_1.instance._mercContractPending = {
		waveId = var_49_0,
		candidates = var_49_3
	}

	return var_49_3, true
end

local function var_0_33(arg_50_0, arg_50_1, arg_50_2)
	local var_50_0 = tonumber(arg_50_0 or 0) or 0
	local var_50_1 = var_0_2.getMercContractState(var_50_0)
	local var_50_2 = var_50_1 and var_50_1.instance
	local var_50_3 = var_50_2 and var_50_2._mercContractPending

	if not var_50_1 or not var_50_1.available or not var_50_3 or var_50_3.waveId ~= var_50_0 then
		return nil
	end

	if arg_50_1 and var_50_2 ~= arg_50_1 then
		return nil
	end

	if arg_50_2 then
		local var_50_4 = false

		for iter_50_0, iter_50_1 in ipairs(var_50_3.candidates or {}) do
			if iter_50_1 == arg_50_2 then
				var_50_4 = true

				break
			end
		end

		if not var_50_4 then
			return nil
		end
	end

	return var_50_1, var_50_2, var_50_3, var_50_0
end

function var_0_2.canCompleteMercContract(arg_51_0, arg_51_1, arg_51_2)
	return var_0_33(arg_51_0, arg_51_1, arg_51_2) ~= nil
end

function var_0_2.completeMercContract(arg_52_0, arg_52_1, arg_52_2)
	local var_52_0, var_52_1, var_52_2, var_52_3 = var_0_33(arg_52_0, arg_52_1, arg_52_2)

	if not var_52_0 then
		return false
	end

	var_52_1._mercContractUses = math.max(0, math.floor(tonumber(var_52_1._mercContractUses or 0) or 0)) + 1
	var_52_1._mercContractUsedWave = var_52_3
	var_52_1._mercContractPending = nil

	var_0_28(var_52_1)

	if var_52_1._mercContractUses < var_0_2.MERC_CONTRACT_MAX_USES then
		return true
	end

	for iter_52_0 = #var_0_9.active, 1, -1 do
		if var_0_9.active[iter_52_0] == var_52_1 then
			table.remove(var_0_9.active, iter_52_0)

			return true
		end
	end

	return false
end

function var_0_2.getBanStampState(arg_53_0)
	local var_53_0 = tonumber(arg_53_0 or 0) or 0

	var_0_13(var_53_0)

	for iter_53_0 in var_0_11(var_53_0) do
		if iter_53_0.key == "BanStamp" then
			local var_53_1 = iter_53_0._banStampPendingWave == var_53_0 and iter_53_0._banStampPendingSym or nil

			return {
				active = true,
				available = (iter_53_0._banStampUsedWave or -1) ~= var_53_0,
				pendingSymbol = var_53_1,
				used = (iter_53_0._banStampUsedWave or -1) == var_53_0,
				instance = iter_53_0
			}
		end
	end

	return nil
end

function var_0_2.selectBanStampSymbol(arg_54_0, arg_54_1)
	if not var_0_17[arg_54_0] then
		return false
	end

	local var_54_0 = tonumber(arg_54_1 and arg_54_1.waveId or 0) or 0

	var_0_13(var_54_0)

	local var_54_1 = arg_54_1 and arg_54_1.grid

	if var_54_1 then
		local var_54_2 = false

		for iter_54_0 = 1, 3 do
			for iter_54_1 = 1, 3 do
				if var_54_1[iter_54_0] and var_54_1[iter_54_0][iter_54_1] == arg_54_0 then
					var_54_2 = true

					break
				end
			end

			if var_54_2 then
				break
			end
		end

		if not var_54_2 then
			return false
		end
	end

	for iter_54_2 in var_0_11(var_54_0) do
		if iter_54_2.key == "BanStamp" and (iter_54_2._banStampUsedWave or -1) ~= var_54_0 then
			iter_54_2._banStampUsedWave = var_54_0
			iter_54_2._banStampPendingWave = var_54_0
			iter_54_2._banStampPendingSym = arg_54_0
			iter_54_2._banStampSelectedT = love.timer and love.timer.getTime and love.timer.getTime() or 0
			iter_54_2._uiTrigger = true

			var_0_28(iter_54_2)

			return true
		end
	end

	return false
end

function var_0_2.getOldCrownState(arg_55_0)
	local var_55_0 = tonumber(arg_55_0 or 0) or 0

	var_0_13(var_55_0)

	for iter_55_0 in var_0_11(var_55_0) do
		if iter_55_0.key == "OldCrown" then
			return {
				available = true,
				active = true,
				selectedSymbol = iter_55_0._oldCrownTargetSym,
				instance = iter_55_0
			}
		end
	end

	return nil
end

function var_0_2.selectOldCrownSymbol(arg_56_0, arg_56_1)
	if not var_0_17[arg_56_0] then
		return false
	end

	local var_56_0 = tonumber(arg_56_1 and arg_56_1.waveId or 0) or 0

	var_0_13(var_56_0)

	local var_56_1 = arg_56_1 and arg_56_1.grid

	if var_56_1 then
		local var_56_2 = false

		for iter_56_0 = 1, 3 do
			for iter_56_1 = 1, 3 do
				if var_56_1[iter_56_0] and var_56_1[iter_56_0][iter_56_1] == arg_56_0 then
					var_56_2 = true

					break
				end
			end

			if var_56_2 then
				break
			end
		end

		if not var_56_2 then
			return false
		end
	end

	for iter_56_2 in var_0_11(var_56_0) do
		if iter_56_2.key == "OldCrown" then
			iter_56_2._oldCrownTargetSym = arg_56_0
			iter_56_2._oldCrownSelectedT = love.timer and love.timer.getTime and love.timer.getTime() or 0
			iter_56_2._uiTrigger = true

			var_0_28(iter_56_2)

			return true
		end
	end

	return false
end

local function var_0_34(arg_57_0)
	if not arg_57_0 or arg_57_0.key ~= "CoinSack" then
		return 0
	end

	local var_57_0 = math.max(0, tonumber(arg_57_0._coinSackBanked or 0) or 0)
	local var_57_1 = math.max(0, tonumber(arg_57_0._coinSackPending or 0) or 0)

	return math.max(0, math.floor(var_57_0 + var_57_1 + 0.5))
end

local function var_0_35(arg_58_0, arg_58_1, arg_58_2, arg_58_3)
	if not arg_58_0 then
		return
	end

	arg_58_0._coinSackAmountFx = {
		dur = 0.62,
		startT = love.timer and love.timer.getTime and love.timer.getTime() or 0,
		from = math.max(0, math.floor(tonumber(arg_58_1 or 0) or 0)),
		to = math.max(0, math.floor(tonumber(arg_58_2 or 0) or 0)),
		kind = arg_58_3 or "save"
	}
end

function var_0_2.getCoinSackSavedAmount(arg_59_0)
	return var_0_34(arg_59_0)
end

function var_0_2.onBattleStart(arg_60_0)
	local var_60_0 = tonumber(arg_60_0 and arg_60_0.waveId or 0) or 0

	var_0_13(var_60_0)

	local var_60_1 = math.max(0, math.floor(tonumber(arg_60_0 and arg_60_0.remainingBaseSpins or 0) or 0))
	local var_60_2

	for iter_60_0 in var_0_11(var_60_0) do
		if iter_60_0.key == "CoinSack" then
			if iter_60_0._coinSackPendingWave ~= var_60_0 then
				local var_60_3 = var_0_34(iter_60_0)

				iter_60_0._coinSackPendingWave = var_60_0
				iter_60_0._coinSackPending = var_60_1 * 20

				if iter_60_0._coinSackPending > 0 then
					var_0_28(iter_60_0)
					var_0_35(iter_60_0, var_60_3, var_0_34(iter_60_0), "save")
				end
			end

			var_60_2 = {
				pending = math.max(0, tonumber(iter_60_0._coinSackPending or 0) or 0),
				banked = math.max(0, tonumber(iter_60_0._coinSackBanked or 0) or 0)
			}
		end
	end

	return var_60_2
end

function var_0_2.onBattleEnd(arg_61_0)
	local var_61_0 = tonumber(arg_61_0 and arg_61_0.waveId or 0) or 0

	var_0_13(var_61_0)

	local var_61_1 = arg_61_0 and arg_61_0.victory == true
	local var_61_2

	for iter_61_0 in var_0_11(var_61_0) do
		if iter_61_0.key == "CoinSack" and iter_61_0._coinSackPendingWave == var_61_0 then
			local var_61_3 = math.max(0, tonumber(iter_61_0._coinSackPending or 0) or 0)
			local var_61_4 = math.max(0, tonumber(iter_61_0._coinSackBanked or 0) or 0)
			local var_61_5 = var_0_34(iter_61_0)
			local var_61_6 = 0

			if var_61_1 then
				local var_61_7 = var_61_4 + var_61_3

				var_61_6 = math.floor(var_61_7 / 300) * 300
				var_61_4 = var_61_7 - var_61_6
				iter_61_0._coinSackBanked = var_61_4

				if var_61_3 > 0 then
					var_0_28(iter_61_0)
				end
			end

			iter_61_0._coinSackPending = nil
			iter_61_0._coinSackPendingWave = nil

			if var_61_3 > 0 then
				var_0_35(iter_61_0, var_61_5, var_0_34(iter_61_0), var_61_1 and (var_61_6 > 0 and "payout" or "confirm") or "cancel")
			end

			var_61_2 = {
				gold = var_61_6,
				confirmed = var_61_1 and var_61_3 or 0,
				cancelled = var_61_1 and 0 or var_61_3,
				banked = var_61_4
			}
		end
	end

	return var_61_2
end

local function var_0_36(arg_62_0)
	var_0_13(arg_62_0)

	local var_62_0 = 0

	for iter_62_0 in var_0_11(arg_62_0) do
		local var_62_1 = iter_62_0.key
	end

	if var_62_0 > 0.8 then
		var_62_0 = 0.8
	end

	return var_62_0
end

local function var_0_37()
	for iter_63_0, iter_63_1 in ipairs(var_0_9.active) do
		iter_63_1._uiActiveThisSpin = nil
		iter_63_1._uiSustainSpin = nil
	end
end

local function var_0_38(arg_64_0)
	local var_64_0 = {}

	for iter_64_0 = 1, 3 do
		for iter_64_1 = 1, 3 do
			table.insert(var_64_0, {
				row = iter_64_0,
				col = iter_64_1
			})
		end
	end

	var_0_12(var_64_0)

	local var_64_1 = {}
	local var_64_2 = math.max(0, math.min(#var_64_0, math.floor(tonumber(arg_64_0 or 0) or 0)))

	for iter_64_2 = 1, var_64_2 do
		var_64_1[iter_64_2] = var_64_0[iter_64_2]
	end

	return var_64_1
end

local function var_0_39(arg_65_0, arg_65_1)
	local var_65_0 = var_0_38(9)
	local var_65_1 = {}

	local function var_65_2(arg_66_0)
		local var_66_0 = math.floor(tonumber(arg_66_0 and arg_66_0.row or 0) or 0)
		local var_66_1 = math.floor(tonumber(arg_66_0 and arg_66_0.col or 0) or 0)

		if var_66_0 < 1 or var_66_0 > 3 or var_66_1 < 1 or var_66_1 > 3 then
			return nil, nil
		end

		return var_66_0, var_66_1
	end

	local function var_65_3(arg_67_0)
		local var_67_0, var_67_1 = var_65_2(arg_67_0)
		local var_67_2 = var_67_0 and tostring(var_67_0) .. ":" .. tostring(var_67_1) or nil

		if var_67_2 and not var_65_1[var_67_2] then
			var_65_1[var_67_2] = true
			arg_67_0.row, arg_67_0.col = var_67_0, var_67_1

			return true
		end

		for iter_67_0, iter_67_1 in ipairs(var_65_0) do
			local var_67_3 = tostring(iter_67_1.row) .. ":" .. tostring(iter_67_1.col)

			if not var_65_1[var_67_3] then
				var_65_1[var_67_3] = true
				arg_67_0.row, arg_67_0.col = iter_67_1.row, iter_67_1.col

				return true
			end
		end

		return false
	end

	local var_65_4 = {}

	for iter_65_0, iter_65_1 in ipairs(arg_65_0 or {}) do
		if var_65_3(iter_65_1) then
			table.insert(var_65_4, iter_65_1)
		end
	end

	local var_65_5 = {}

	for iter_65_2, iter_65_3 in ipairs(arg_65_1 or {}) do
		if iter_65_3 and iter_65_3.symbol and var_65_3(iter_65_3) then
			table.insert(var_65_5, iter_65_3)
		end
	end

	return var_65_4, var_65_5
end

local function var_0_40(arg_68_0, arg_68_1, arg_68_2)
	if not arg_68_0 or not arg_68_1 or not arg_68_2 then
		return nil
	end

	if arg_68_0 == "Blank" or arg_68_1 == "Blank" or arg_68_2 == "Blank" then
		return nil
	end

	local var_68_0
	local var_68_1 = 0

	for iter_68_0, iter_68_1 in ipairs({
		arg_68_0,
		arg_68_1,
		arg_68_2
	}) do
		if iter_68_1 == "Joker" or iter_68_1 == "J" then
			var_68_1 = var_68_1 + 1
		elseif not var_68_0 then
			var_68_0 = iter_68_1
		elseif iter_68_1 ~= var_68_0 then
			return nil
		end
	end

	if var_68_1 == 3 then
		return "Joker"
	end

	return var_68_0
end

local function var_0_41(arg_69_0, arg_69_1)
	if not arg_69_0 or not arg_69_0.winningLines or type(arg_69_0.winningLines) ~= "table" or not arg_69_1 then
		return {}
	end

	local var_69_0 = {
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
	local var_69_1 = {}

	for iter_69_0, iter_69_1 in ipairs(arg_69_0.winningLines) do
		local var_69_2 = var_69_0[iter_69_1]

		if var_69_2 then
			local var_69_3 = {
				arg_69_1[var_69_2[1][1]] and arg_69_1[var_69_2[1][1]][var_69_2[1][2]],
				arg_69_1[var_69_2[2][1]] and arg_69_1[var_69_2[2][1]][var_69_2[2][2]],
				arg_69_1[var_69_2[3][1]] and arg_69_1[var_69_2[3][1]][var_69_2[3][2]]
			}
			local var_69_4 = false

			for iter_69_2, iter_69_3 in ipairs(var_69_3) do
				if iter_69_3 == "Joker" or iter_69_3 == "J" then
					var_69_4 = true

					break
				end
			end

			if var_69_4 then
				local var_69_5 = arg_69_0.symbolsByLine and arg_69_0.symbolsByLine[iter_69_1] or var_0_40(var_69_3[1], var_69_3[2], var_69_3[3])

				if var_69_5 then
					table.insert(var_69_1, var_69_5)
				end
			end
		end
	end

	return var_69_1
end

function var_0_2.prepareSpin(arg_70_0)
	local var_70_0 = arg_70_0 and tonumber(arg_70_0.waveId or 0) or 0

	var_0_13(var_70_0)

	local var_70_1 = var_0_0 and var_0_0.slot and var_0_0.slot.forceWinProb or 0

	if var_0_9._baseForceProb == nil then
		var_0_9._baseForceProb = var_70_1
	end

	for iter_70_0, iter_70_1 in ipairs(var_0_9.active) do
		iter_70_1._uiActiveThisSpin = nil
		iter_70_1._uiTrigger = nil
		iter_70_1._uiSustainSpin = nil

		if iter_70_1.key == "ResonantAnvil" then
			iter_70_1._resonantAnvilUsedThisSpin = nil
		end
	end

	for iter_70_2 in var_0_11(var_70_0) do
		if iter_70_2.key == "EntropySpoon" and iter_70_2._entropySustainNext then
			iter_70_2._uiActiveThisSpin = true
			iter_70_2._uiSustainSpin = true
			iter_70_2._entropySustainNext = nil
		end
	end

	for iter_70_3 in var_0_11(var_70_0) do
		if iter_70_3.key == "CrookedFang" then
			iter_70_3._crookedFangPending = nil
		end
	end

	local var_70_2 = 0
	local var_70_3 = {}
	local var_70_4
	local var_70_5
	local var_70_6 = var_0_2.getGoldenLeverMaxGrade(arg_70_0 and arg_70_0.unitGradeProbabilities)

	for iter_70_4 in var_0_11(var_70_0) do
		if iter_70_4.key == "JokerSeed" then
			var_70_2 = var_70_2 + 0.015
			iter_70_4._uiActiveThisSpin = true
			iter_70_4._uiSustainSpin = true
		elseif iter_70_4.key == "Wildcard" then
			var_70_2 = var_70_2 + 0.02
			iter_70_4._uiActiveThisSpin = true
			iter_70_4._uiSustainSpin = true
		elseif iter_70_4.key == "TornNote" then
			iter_70_4._tornNoteSpinCount = (tonumber(iter_70_4._tornNoteSpinCount or 0) or 0) + 1

			if iter_70_4._tornNoteSpinCount % 6 == 0 then
				table.insert(var_70_3, {
					row = love.math.random(1, 3),
					col = love.math.random(1, 3)
				})

				iter_70_4._uiActiveThisSpin = true
				iter_70_4._uiSustainSpin = true
				iter_70_4._uiTrigger = true
			end
		elseif iter_70_4.key == "BlackNote" then
			if arg_70_0 and arg_70_0.isFirstSpin == true and (iter_70_4._blackNoteUsedWave or -1) ~= var_70_0 then
				iter_70_4._blackNoteUsedWave = var_70_0

				table.insert(var_70_3, {
					row = love.math.random(1, 3),
					col = love.math.random(1, 3)
				})

				iter_70_4._uiActiveThisSpin = true
				iter_70_4._uiSustainSpin = true
				iter_70_4._uiTrigger = true
			end
		elseif iter_70_4.key == "BloodlineSeal" then
			local var_70_7 = iter_70_4._bloodlinePendingSym

			if var_70_7 then
				var_70_4 = var_70_4 or {}

				for iter_70_5, iter_70_6 in ipairs(var_0_38(3)) do
					table.insert(var_70_4, {
						row = iter_70_6.row,
						col = iter_70_6.col,
						symbol = var_70_7
					})
				end

				iter_70_4._bloodlinePendingSym = nil
				iter_70_4._uiActiveThisSpin = true
				iter_70_4._uiSustainSpin = true
				iter_70_4._uiTrigger = true
			end
		elseif iter_70_4.key == "GoldenLever" then
			iter_70_4._goldenLeverSpinCount = (tonumber(iter_70_4._goldenLeverSpinCount or 0) or 0) + 1

			if iter_70_4._goldenLeverSpinCount % 5 == 0 then
				var_70_5 = {
					revealed = false,
					row = love.math.random(1, 3),
					col = love.math.random(1, 3)
				}
				iter_70_4._uiActiveThisSpin = true
				iter_70_4._uiSustainSpin = true
			end
		end
	end

	local var_70_8, var_70_9 = var_0_39(var_70_3, var_70_4)
	local var_70_10 = var_70_8[1]
	local var_70_11 = math.max(0, math.min(0.05, var_70_2))
	local var_70_12 = var_0_36(var_70_0)

	for iter_70_7 in var_0_11(var_70_0) do
		if iter_70_7.key == "PurusaVerdict" and (iter_70_7._purusaUsedWave or -1) ~= var_70_0 then
			iter_70_7._nextWinBoost = math.max(iter_70_7._nextWinBoost or 0, 0.15)
			iter_70_7._purusaUsedWave = var_70_0
			iter_70_7._purusaArmJackpot = true
		end
	end

	local var_70_13 = 0

	for iter_70_8 in var_0_11(var_70_0) do
		if iter_70_8._nextWinBoost and iter_70_8._nextWinBoost > 0 then
			iter_70_8._uiActiveThisSpin = true
			iter_70_8._uiSustainSpin = true
			iter_70_8._uiTrigger = true
			var_70_13 = var_70_13 + iter_70_8._nextWinBoost
			iter_70_8._nextWinBoost = nil
		end
	end

	local var_70_14 = math.max(0, math.min(1, var_70_1 + var_70_12 + var_70_13))

	var_0_0.slot.forceWinProb = var_70_14
	var_0_9._appliedThisSpin = true

	local var_70_15

	for iter_70_9 in var_0_11(var_70_0) do
		if iter_70_9.key == "Resonoscope" and iter_70_9._resonoJackpotNext then
			iter_70_9._uiActiveThisSpin = true
			iter_70_9._uiSustainSpin = true
			iter_70_9._resonoJackpotNext = nil

			if love.math.random() < 0.03 then
				var_70_15 = 5
				iter_70_9._uiTrigger = true
			end
		end
	end

	for iter_70_10 in var_0_11(var_70_0) do
		if iter_70_10.key == "PurusaVerdict" and iter_70_10._purusaArmJackpot then
			iter_70_10._uiActiveThisSpin = true
			iter_70_10._uiSustainSpin = true

			if love.math.random() < 0.004 then
				var_70_15 = 5
				iter_70_10._uiTrigger = true
			end

			iter_70_10._purusaArmJackpot = nil
		end
	end

	for iter_70_11 in var_0_11(var_70_0) do
		if iter_70_11.key == "OracleSigil" then
			iter_70_11._oracleCount = math.max(0, iter_70_11._oracleCount or 0) + 1

			if iter_70_11._oracleCount % 6 == 0 then
				iter_70_11._uiActiveThisSpin = true
				iter_70_11._uiSustainSpin = true

				if love.math.random() < 0.01 then
					var_70_15 = 5
					iter_70_11._uiTrigger = true
				end

				iter_70_11._oracleCount = 0
			end
		end
	end

	local var_70_16 = false

	for iter_70_12 in var_0_11(var_70_0) do
		if iter_70_12.key == "ReverseShell" and iter_70_12._forceNextWinOnce then
			iter_70_12._uiActiveThisSpin = true
			iter_70_12._uiSustainSpin = true
			iter_70_12._uiTrigger = true
			var_70_16 = true
			iter_70_12._forceNextWinOnce = nil
		end
	end

	local function var_70_17(arg_71_0)
		if not arg_71_0 then
			return nil
		end

		local var_71_0 = {}

		for iter_71_0, iter_71_1 in pairs(arg_71_0) do
			var_71_0[iter_71_0] = iter_71_1
		end

		return var_71_0
	end

	local function var_70_18(arg_72_0, arg_72_1, arg_72_2)
		if not arg_72_0 or not arg_72_1 or not arg_72_2 or arg_72_2 <= 0 then
			return arg_72_0
		end

		local var_72_0 = 0

		for iter_72_0, iter_72_1 in pairs(arg_72_0) do
			var_72_0 = var_72_0 + (tonumber(iter_72_1 or 0) or 0)
		end

		if var_72_0 <= 1e-09 then
			return arg_72_0
		end

		local var_72_1 = {}

		for iter_72_2, iter_72_3 in pairs(arg_72_0) do
			var_72_1[iter_72_2] = (tonumber(iter_72_3 or 0) or 0) / var_72_0
		end

		local var_72_2 = var_72_1[arg_72_1] or 0
		local var_72_3 = math.max(0, math.min(1, var_72_2 + arg_72_2))
		local var_72_4 = 1 - var_72_3
		local var_72_5 = 1 - var_72_2

		if var_72_5 <= 1e-09 then
			var_72_5 = 1
		end

		local var_72_6 = var_72_4 / var_72_5
		local var_72_7 = {}

		for iter_72_4, iter_72_5 in pairs(var_72_1) do
			if iter_72_4 == arg_72_1 then
				var_72_7[iter_72_4] = var_72_3
			else
				var_72_7[iter_72_4] = iter_72_5 * var_72_6
			end
		end

		return var_72_7
	end

	for iter_70_13 in var_0_11(var_70_0) do
		if iter_70_13.key == "MirageGoblet" and (iter_70_13._mirageSpins or 0) > 0 and iter_70_13._mirageTargetSym then
			if not var_0_9._baseSymbolWeights then
				var_0_9._baseSymbolWeights = var_70_17(var_0_0.slot.symbolWeights)
			end

			local var_70_19 = var_70_18(var_0_9._baseSymbolWeights, iter_70_13._mirageTargetSym, 0.05)

			if var_70_19 then
				var_0_0.slot.symbolWeights = var_70_17(var_70_19)
				var_0_9._weightsApplied = true
				iter_70_13._uiActiveThisSpin = true
				iter_70_13._uiSustainSpin = true
				iter_70_13._mirageSpins = math.max(0, (iter_70_13._mirageSpins or 0) - 1)
			end
		end
	end

	for iter_70_14 in var_0_11(var_70_0) do
		if iter_70_14.key == "OldCrown" and iter_70_14._oldCrownTargetSym then
			if not var_0_9._baseSymbolWeights then
				var_0_9._baseSymbolWeights = var_70_17(var_0_0.slot.symbolWeights)
			end

			local var_70_20 = var_70_18(var_0_0.slot.symbolWeights, iter_70_14._oldCrownTargetSym, 0.05)

			if var_70_20 then
				var_0_0.slot.symbolWeights = var_70_17(var_70_20)
				var_0_9._weightsApplied = true
				iter_70_14._uiActiveThisSpin = true
				iter_70_14._uiSustainSpin = true
			end
		end
	end

	local var_70_21

	for iter_70_15 in var_0_11(var_70_0) do
		if iter_70_15.key == "BanStamp" and iter_70_15._banStampPendingWave == var_70_0 and iter_70_15._banStampPendingSym then
			if not var_0_9._baseSymbolWeights then
				var_0_9._baseSymbolWeights = var_70_17(var_0_0.slot.symbolWeights)
			end

			var_70_21 = iter_70_15._banStampPendingSym
			var_0_0.slot.symbolWeights = var_70_17(var_0_18(var_0_0.slot.symbolWeights, var_70_21))
			var_0_9._weightsApplied = true
			iter_70_15._banStampPendingWave = nil
			iter_70_15._banStampPendingSym = nil
			iter_70_15._uiActiveThisSpin = true
			iter_70_15._uiSustainSpin = true
			iter_70_15._uiTrigger = true
		end
	end

	local var_70_22 = 0
	local var_70_23 = 0

	for iter_70_16 in var_0_11(var_70_0) do
		if arg_70_0 and arg_70_0.isPaidSpin == true and iter_70_16.key == "NutrientLeaf" and (iter_70_16._nutrientDiscountPending or 0) > 0 then
			var_70_23 = math.max(var_70_23, tonumber(iter_70_16._nutrientDiscountPending or 0) or 0)
			iter_70_16._uiActiveThisSpin = true
			iter_70_16._uiSustainSpin = true
			iter_70_16._uiTrigger = true
			iter_70_16._nutrientDiscountPending = nil
		elseif arg_70_0 and arg_70_0.isPaidSpin == true and iter_70_16.key == "RewindClock" and (iter_70_16._rewindCostReductionPending or 0) > 0 then
			iter_70_16._uiActiveThisSpin = true
			iter_70_16._uiSustainSpin = true
			iter_70_16._uiTrigger = true
			iter_70_16._rewindCostReductionPending = nil
		end
	end

	local var_70_24 = 1

	for iter_70_17 in var_0_11(var_70_0) do
		if iter_70_17.key == "X2" and iter_70_17._x2Armed == true and iter_70_17._x2ManualActivation == true and iter_70_17._x2BetPaid == true then
			var_70_24 = math.max(var_70_24, 2)
			iter_70_17._x2Armed = nil
			iter_70_17._x2ManualActivation = nil
			iter_70_17._x2BetPaid = nil
			iter_70_17._uiActiveThisSpin = true
			iter_70_17._uiSustainSpin = true
			iter_70_17._uiTrigger = true
		end
	end

	local var_70_25 = 1

	for iter_70_18 in var_0_11(var_70_0) do
		if iter_70_18.key == "Prosperfang" and iter_70_18._prosperNextMul and iter_70_18._prosperNextMul > 1 then
			var_70_25 = math.max(var_70_25, iter_70_18._prosperNextMul or 1)
			iter_70_18._prosperNextMul = nil
			iter_70_18._uiActiveThisSpin = true
			iter_70_18._uiSustainSpin = true
		end
	end

	local var_70_26 = 0
	local var_70_27

	return {
		forceWinProb = var_70_14,
		boost = var_70_12,
		boostOneShot = var_70_13,
		rewardMul = var_70_24,
		forceExactWinningLines = var_70_15,
		allyStatMul = var_70_25,
		forceWinOnce = var_70_16,
		prismConvertChance = var_70_26,
		lockedReels = var_70_27,
		costStepReduction = var_70_22,
		priceDiscount = var_70_23,
		jokerChance = var_70_11,
		forceJokerCell = var_70_10,
		forceJokerCells = var_70_8,
		forceCells = var_70_9,
		bannedSymbol = var_70_21,
		goldenCell = var_70_5,
		goldenMaxGrade = var_70_6
	}
end

local function var_0_42(arg_73_0)
	arg_73_0 = math.max(0, math.min(0.05, tonumber(arg_73_0 or 0) or 0))

	if arg_73_0 > 0 and arg_73_0 > love.math.random() then
		return "Joker"
	end

	local var_73_0 = var_0_0 and var_0_0.slot and var_0_0.slot.symbolWeights or {}
	local var_73_1 = {
		"W",
		"A",
		"S",
		"M",
		"H",
		"D"
	}
	local var_73_2 = 0

	for iter_73_0, iter_73_1 in ipairs(var_73_1) do
		var_73_2 = var_73_2 + math.max(0, tonumber(var_73_0[iter_73_1] or 0) or 0)
	end

	if var_73_2 <= 0 then
		return var_73_1[love.math.random(1, #var_73_1)]
	end

	local var_73_3 = love.math.random() * var_73_2

	for iter_73_2, iter_73_3 in ipairs(var_73_1) do
		local var_73_4 = math.max(0, tonumber(var_73_0[iter_73_3] or 0) or 0)

		if var_73_3 < var_73_4 then
			return iter_73_3
		end

		var_73_3 = var_73_3 - var_73_4
	end

	return var_73_1[#var_73_1]
end

local function var_0_43(arg_74_0, arg_74_1, arg_74_2)
	local var_74_0 = {}

	for iter_74_0 = 1, 3 do
		var_74_0[iter_74_0] = var_0_42(arg_74_2)
	end

	return {
		col = arg_74_1,
		targetFinalSymbols = var_74_0
	}
end

local function var_0_44(arg_75_0, arg_75_1)
	if type(arg_75_0) ~= "table" then
		return
	end

	local var_75_0 = {}

	for iter_75_0, iter_75_1 in ipairs(arg_75_0) do
		if iter_75_1 and iter_75_1.col then
			var_75_0[iter_75_1.col] = iter_75_1
		end
	end

	local function var_75_1(arg_76_0, arg_76_1, arg_76_2)
		arg_76_0 = math.floor(tonumber(arg_76_0 or 0) or 0)
		arg_76_1 = math.floor(tonumber(arg_76_1 or 0) or 0)

		local var_76_0 = var_75_0[arg_76_1]

		if arg_76_2 and arg_76_0 >= 1 and arg_76_0 <= 3 and var_76_0 and var_76_0.targetFinalSymbols then
			var_76_0.targetFinalSymbols[arg_76_0] = arg_76_2
		end
	end

	for iter_75_2, iter_75_3 in ipairs(type(arg_75_1 and arg_75_1.forceCells) == "table" and arg_75_1.forceCells or {}) do
		var_75_1(iter_75_3 and iter_75_3.row, iter_75_3 and iter_75_3.col, iter_75_3 and iter_75_3.symbol)
	end

	local var_75_2 = arg_75_1 and arg_75_1.forceJokerCells

	if type(var_75_2) == "table" and #var_75_2 > 0 then
		for iter_75_4, iter_75_5 in ipairs(var_75_2) do
			var_75_1(iter_75_5 and iter_75_5.row, iter_75_5 and iter_75_5.col, "Joker")
		end
	elseif arg_75_1 and arg_75_1.forceJokerCell then
		var_75_1(arg_75_1.forceJokerCell.row, arg_75_1.forceJokerCell.col, "Joker")
	end
end

local function var_0_45(arg_77_0)
	local var_77_0 = {}
	local var_77_1
	local var_77_2 = {}

	if not arg_77_0 then
		return var_77_0, var_77_1, var_77_2
	end

	local var_77_3 = {
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

	for iter_77_0, iter_77_1 in ipairs(var_77_3) do
		local var_77_4 = arg_77_0[iter_77_1[1][1]] and arg_77_0[iter_77_1[1][1]][iter_77_1[1][2]]
		local var_77_5 = arg_77_0[iter_77_1[2][1]] and arg_77_0[iter_77_1[2][1]][iter_77_1[2][2]]
		local var_77_6 = arg_77_0[iter_77_1[3][1]] and arg_77_0[iter_77_1[3][1]][iter_77_1[3][2]]
		local var_77_7 = var_0_40(var_77_4, var_77_5, var_77_6)

		if var_77_7 then
			table.insert(var_77_0, iter_77_0)

			var_77_2[iter_77_0] = var_77_7
			var_77_1 = var_77_1 or var_77_7
		end
	end

	return var_77_0, var_77_1, var_77_2
end

local function var_0_46(arg_78_0)
	local var_78_0 = {}

	for iter_78_0 = 1, 3 do
		var_78_0[iter_78_0] = {}

		for iter_78_1 = 1, 3 do
			var_78_0[iter_78_0][iter_78_1] = arg_78_0 and arg_78_0[iter_78_0] and arg_78_0[iter_78_0][iter_78_1] or nil
		end
	end

	return var_78_0
end

function var_0_2.isGreedyTailPending(arg_79_0)
	if math.floor(tonumber(arg_79_0 and arg_79_0.spinIndexInWave or 0) or 0) ~= 3 then
		return false
	end

	local var_79_0 = tonumber(arg_79_0 and arg_79_0.waveId or 0) or 0

	var_0_13(var_79_0)

	for iter_79_0 in var_0_11(var_79_0) do
		if iter_79_0.key == "GreedyTail" and (iter_79_0._greedyTailUsedWave or -1) ~= var_79_0 then
			return true
		end
	end

	return false
end

local function var_0_47(arg_80_0)
	arg_80_0._uiTrigger = nil
	arg_80_0._uiActiveThisSpin = nil
	arg_80_0._uiSustainSpin = nil
	arg_80_0._uiPulseT0 = nil
	arg_80_0._uiPulseDur = nil
end

local function var_0_48(arg_81_0, arg_81_1, arg_81_2, arg_81_3)
	local var_81_0, var_81_1 = var_0_45(arg_81_2.grid)
	local var_81_2

	for iter_81_0 = 1, 8 do
		var_81_2 = var_0_43(arg_81_2.grid, 2, arg_81_2.jokerChance)

		var_0_44({
			var_81_2
		}, arg_81_2)

		local var_81_3 = true

		for iter_81_1 = 1, 3 do
			if var_81_2.targetFinalSymbols[iter_81_1] ~= (arg_81_2.grid[iter_81_1] and arg_81_2.grid[iter_81_1][2]) then
				var_81_3 = false

				break
			end
		end

		if not var_81_3 then
			break
		end
	end

	local var_81_4 = var_0_46(arg_81_2.grid)

	for iter_81_2 = 1, 3 do
		var_81_4[iter_81_2][2] = var_81_2.targetFinalSymbols[iter_81_2]
	end

	local var_81_5, var_81_6 = var_0_45(var_81_4)
	local var_81_7 = #var_81_5 >= #var_81_0
	local var_81_8 = var_81_7 and var_81_4 or arg_81_2.grid
	local var_81_9 = var_81_7 and var_81_5 or var_81_0
	local var_81_10 = var_81_7 and var_81_6 or var_81_1
	local var_81_11 = {}

	for iter_81_3 = 1, 3 do
		var_81_11[iter_81_3] = var_81_8[iter_81_3] and var_81_8[iter_81_3][2] or nil
	end

	if arg_81_2.deferAnimation == true then
		return {
			key = arg_81_0.key,
			inst = arg_81_0,
			reels = {
				{
					col = 2,
					targetFinalSymbols = var_81_11
				}
			},
			respinPhase = arg_81_3,
			firstLineCount = #var_81_0,
			secondLineCount = #var_81_5,
			choseSecond = var_81_7,
			skipCoreAnimation = arg_81_3 >= 2,
			allowPostEvaluateChain = arg_81_3 >= 2
		}
	end

	if var_81_7 then
		for iter_81_4 = 1, 3 do
			arg_81_2.grid[iter_81_4][2] = var_81_11[iter_81_4]
		end
	end

	arg_81_1.checked = true
	arg_81_1.won = #var_81_9 > 0
	arg_81_1.winningLines = var_81_9
	arg_81_1.symbol = var_81_10
	arg_81_1.newWinningLines = nil
	arg_81_1.visibleWinningLines = nil
	arg_81_1.highlightActive = false
	arg_81_1.ht = 0
	arg_81_1.fxStarted = false
	arg_81_1._greedyTailApplied = true
	arg_81_1._greedyTailRespinPhase = arg_81_3
	arg_81_1._greedyTailFirstLineCount = #var_81_0
	arg_81_1._greedyTailSecondLineCount = #var_81_5
	arg_81_1._greedyTailChoseSecond = var_81_7

	return true
end

function var_0_2.prepareGreedyTailOutcome(arg_82_0, arg_82_1)
	if not arg_82_0 or not arg_82_0.checked or not arg_82_1 or not arg_82_1.grid then
		return false
	end

	if arg_82_0.won == true then
		return false
	end

	if not var_0_2.isGreedyTailPending(arg_82_1) then
		return false
	end

	local var_82_0 = tonumber(arg_82_1.waveId or 0) or 0

	for iter_82_0 in var_0_11(var_82_0) do
		if iter_82_0.key == "GreedyTail" and (iter_82_0._greedyTailUsedWave or -1) ~= var_82_0 then
			iter_82_0._greedyTailUsedWave = var_82_0

			var_0_47(iter_82_0)

			return var_0_48(iter_82_0, arg_82_0, arg_82_1, 1)
		end
	end

	return false
end

function var_0_2.prepareGreedyTailRetry(arg_83_0, arg_83_1, arg_83_2)
	if tonumber(arg_83_2 or 0) ~= 1 then
		return false
	end

	if not arg_83_0 or not arg_83_0.checked or arg_83_0.won == true or not arg_83_1 or not arg_83_1.grid then
		return false
	end

	local var_83_0 = tonumber(arg_83_1.waveId or 0) or 0

	var_0_13(var_83_0)

	for iter_83_0 in var_0_11(var_83_0) do
		if iter_83_0.key == "GreedyTail" and iter_83_0._greedyTailUsedWave == var_83_0 then
			return var_0_48(iter_83_0, arg_83_0, arg_83_1, 2)
		end
	end

	return false
end

local function var_0_49(arg_84_0)
	local var_84_0 = {}

	for iter_84_0 = 1, 3 do
		for iter_84_1 = 1, 3 do
			var_84_0[#var_84_0 + 1] = tostring(arg_84_0 and arg_84_0[iter_84_0] and arg_84_0[iter_84_0][iter_84_1] or "")
		end
	end

	return table.concat(var_84_0, "|")
end

local function var_0_50(arg_85_0)
	if not arg_85_0 or not arg_85_0[2] or not arg_85_0[2][2] then
		return {}
	end

	local var_85_0 = {}

	for iter_85_0 = 1, 3 do
		for iter_85_1 = 1, 3 do
			if (iter_85_0 ~= 2 or iter_85_1 ~= 2) and arg_85_0[iter_85_0] and arg_85_0[iter_85_0][iter_85_1] then
				var_85_0[#var_85_0 + 1] = {
					row = iter_85_0,
					col = iter_85_1
				}
			end
		end
	end

	return var_85_0
end

local function var_0_51(arg_86_0, arg_86_1, arg_86_2, arg_86_3, arg_86_4)
	if not arg_86_0 or arg_86_0.key ~= "CrookedFang" then
		return false
	end

	if require("src.game.slot").isJackpotResult(arg_86_4 or {
		checked = true
	}, var_0_45(arg_86_3)) then
		arg_86_0._crookedFangPending = nil

		return false
	end

	if (arg_86_0._crookedFangUsedWave or -1) == arg_86_1 then
		arg_86_0._crookedFangPending = nil

		return false
	end

	local var_86_0 = var_0_50(arg_86_3)

	if #var_86_0 ~= 8 then
		arg_86_0._crookedFangPending = nil

		return false
	end

	arg_86_0._crookedFangPending = {
		waveId = arg_86_1,
		spinKey = arg_86_2,
		signature = var_0_49(arg_86_3),
		candidates = var_86_0
	}

	return true
end

function var_0_2.getCrookedFangState(arg_87_0)
	local var_87_0 = tonumber(arg_87_0 or 0) or 0

	var_0_13(var_87_0)

	for iter_87_0 in var_0_11(var_87_0) do
		if iter_87_0.key == "CrookedFang" then
			local var_87_1 = iter_87_0._crookedFangPending

			if var_87_1 and var_87_1.waveId == var_87_0 then
				return {
					available = true,
					active = true,
					candidates = var_87_1.candidates,
					spinKey = var_87_1.spinKey,
					instance = iter_87_0
				}
			end

			return {
				available = false,
				active = true,
				used = (iter_87_0._crookedFangUsedWave or -1) == var_87_0,
				instance = iter_87_0
			}
		end
	end

	return nil
end

function var_0_2.refreshCrookedFangPending(arg_88_0, arg_88_1)
	if not arg_88_0 or not arg_88_0.checked or arg_88_0.won == true then
		return false
	end

	local var_88_0 = tonumber(arg_88_1 and arg_88_1.waveId or 0) or 0

	var_0_13(var_88_0)

	local var_88_1 = false

	for iter_88_0 in var_0_11(var_88_0) do
		var_88_1 = iter_88_0.key == "CrookedFang" and var_0_51(iter_88_0, var_88_0, arg_88_1 and arg_88_1.spinKey or nil, arg_88_1 and arg_88_1.grid, arg_88_0) or var_88_1
	end

	return var_88_1
end

function var_0_2.beginCrookedFangSwap(arg_89_0, arg_89_1, arg_89_2)
	arg_89_0 = math.floor(tonumber(arg_89_0 or 0) or 0)
	arg_89_1 = math.floor(tonumber(arg_89_1 or 0) or 0)

	if arg_89_0 < 1 or arg_89_0 > 3 or arg_89_1 < 1 or arg_89_1 > 3 or arg_89_0 == 2 and arg_89_1 == 2 then
		return nil
	end

	local var_89_0 = tonumber(arg_89_2 and arg_89_2.waveId or 0) or 0

	var_0_13(var_89_0)

	local var_89_1 = arg_89_2 and arg_89_2.grid

	if require("src.game.slot").isJackpotResult(arg_89_2 and arg_89_2.result or {
		checked = true
	}, var_0_45(var_89_1)) then
		var_0_2.cancelCrookedFangPending(var_89_0)

		return nil
	end

	for iter_89_0 in var_0_11(var_89_0) do
		local var_89_2 = iter_89_0.key == "CrookedFang" and iter_89_0._crookedFangPending or nil

		if var_89_2 and var_89_2.waveId == var_89_0 and (iter_89_0._crookedFangUsedWave or -1) ~= var_89_0 and var_0_49(var_89_1) == var_89_2.signature then
			local var_89_3

			for iter_89_1, iter_89_2 in ipairs(var_89_2.candidates or {}) do
				if iter_89_2.row == arg_89_0 and iter_89_2.col == arg_89_1 then
					var_89_3 = iter_89_2

					break
				end
			end

			if var_89_3 then
				iter_89_0._crookedFangUsedWave = var_89_0
				iter_89_0._crookedFangPending = nil
				iter_89_0._uiTrigger = true

				var_0_28(iter_89_0)

				return {
					key = iter_89_0.key,
					inst = iter_89_0,
					waveId = var_89_0,
					spinKey = var_89_2.spinKey,
					row = arg_89_0,
					col = arg_89_1,
					centerSymbol = var_89_1[2][2],
					targetSymbol = var_89_1[arg_89_0][arg_89_1],
					signature = var_89_2.signature
				}
			end
		end
	end

	return nil
end

function var_0_2.completeCrookedFangSwap(arg_90_0, arg_90_1, arg_90_2)
	if not arg_90_0 or arg_90_0.key ~= "CrookedFang" or not arg_90_2 or not arg_90_2[2] then
		return nil
	end

	if var_0_49(arg_90_2) ~= arg_90_0.signature then
		return nil
	end

	if require("src.game.slot").isJackpotResult(arg_90_1 or {
		checked = true
	}, var_0_45(arg_90_2)) then
		return nil
	end

	local var_90_0, var_90_1, var_90_2 = var_0_45(arg_90_2)
	local var_90_3 = arg_90_0.row
	local var_90_4 = arg_90_0.col

	arg_90_2[2][2], arg_90_2[var_90_3][var_90_4] = arg_90_2[var_90_3][var_90_4], arg_90_2[2][2]

	local var_90_5, var_90_6, var_90_7 = var_0_45(arg_90_2)
	local var_90_8 = {}

	for iter_90_0, iter_90_1 in ipairs(var_90_5) do
		if var_90_2[iter_90_1] ~= var_90_7[iter_90_1] then
			var_90_8[#var_90_8 + 1] = iter_90_1
		end
	end

	local var_90_9 = #var_90_8 > 0
	local var_90_10 = var_90_8[1] and var_90_7[var_90_8[1]] or nil

	arg_90_1 = arg_90_1 or {}
	arg_90_1.checked = true
	arg_90_1.won = var_90_9
	arg_90_1.winningLines = var_90_8
	arg_90_1.newWinningLines = var_90_8
	arg_90_1.allWinningLinesAfterNudge = nil
	arg_90_1.symbol = var_90_10
	arg_90_1.symbolsByLine = var_90_7
	arg_90_1._jackpot = require("src.game.slot").isJackpotResult(arg_90_1, var_90_5)
	arg_90_1.awarded = false
	arg_90_1.fxStarted = false
	arg_90_1.highlightActive = false
	arg_90_1.ht = 0
	arg_90_1.winSeq = nil
	arg_90_1.visibleWinningLines = nil
	arg_90_1._crookedFangApplied = true

	return {
		key = arg_90_0.key,
		inst = arg_90_0.inst,
		result = arg_90_1,
		won = var_90_9,
		allWinningLines = var_90_5,
		newWinningLines = var_90_8,
		symbol = var_90_10
	}
end

function var_0_2.cancelCrookedFangPending(arg_91_0, arg_91_1)
	local var_91_0 = tonumber(arg_91_0 or 0) or 0

	var_0_13(var_91_0)

	for iter_91_0 in var_0_11(var_91_0) do
		local var_91_1 = iter_91_0.key == "CrookedFang" and iter_91_0._crookedFangPending or nil

		if var_91_1 and var_91_1.waveId == var_91_0 and (not arg_91_1 or var_91_1.spinKey == arg_91_1) then
			iter_91_0._crookedFangPending = nil

			return true
		end
	end

	return false
end

local function var_0_52(arg_92_0)
	return arg_92_0 and arg_92_0 ~= "Blank" and arg_92_0 ~= "Joker" and arg_92_0 ~= "J"
end

local function var_0_53(arg_93_0)
	return var_0_52(arg_93_0)
end

local function var_0_54(arg_94_0)
	if not arg_94_0 then
		return nil
	end

	local var_94_0 = {}

	for iter_94_0 = 1, 3 do
		local var_94_1 = arg_94_0[1] and arg_94_0[1][iter_94_0]
		local var_94_2 = arg_94_0[2] and arg_94_0[2][iter_94_0]
		local var_94_3 = arg_94_0[3] and arg_94_0[3][iter_94_0]

		if var_0_53(var_94_1) and var_94_1 == var_94_3 and var_94_2 ~= var_94_1 then
			table.insert(var_94_0, {
				row = 2,
				col = iter_94_0,
				newSymbol = var_94_1
			})
		end
	end

	if #var_94_0 <= 0 then
		return nil
	end

	return var_94_0[love.math.random(1, #var_94_0)]
end

function var_0_2.isCopycapPlanValid(arg_95_0, arg_95_1)
	if type(arg_95_0) ~= "table" or arg_95_0.key ~= "Copycap" or type(arg_95_1) ~= "table" then
		return false
	end

	local var_95_0 = math.floor(tonumber(arg_95_0.col or 0) or 0)
	local var_95_1 = math.floor(tonumber(arg_95_0.row or 0) or 0)
	local var_95_2 = arg_95_0.newSymbol

	if var_95_0 < 1 or var_95_0 > 3 or var_95_1 ~= 2 or not var_0_53(var_95_2) then
		return false
	end

	local var_95_3 = arg_95_1[1] and arg_95_1[1][var_95_0]
	local var_95_4 = arg_95_1[2] and arg_95_1[2][var_95_0]
	local var_95_5 = arg_95_1[3] and arg_95_1[3][var_95_0]

	return var_95_3 == var_95_2 and var_95_5 == var_95_2 and var_95_4 ~= var_95_2
end

function var_0_2.refreshCopycapPlan(arg_96_0, arg_96_1, arg_96_2)
	if var_0_2.isCopycapPlanValid(arg_96_0, arg_96_1) then
		return arg_96_0
	end

	local var_96_0 = type(arg_96_0) == "table" and arg_96_0.inst or nil
	local var_96_1 = tonumber(arg_96_2 or 0) or 0

	if var_96_0 and var_96_0.key == "Copycap" and var_96_0._copycapUsedWave == var_96_1 then
		var_96_0._copycapUsedWave = nil
	end

	local var_96_2 = var_0_54(arg_96_1)

	if not var_96_0 or not var_96_2 then
		return nil
	end

	var_96_0._copycapUsedWave = var_96_1

	return {
		key = "Copycap",
		inst = var_96_0,
		col = var_96_2.col,
		row = var_96_2.row,
		newSymbol = var_96_2.newSymbol
	}
end

function var_0_2.cancelCopycapPlan(arg_97_0, arg_97_1)
	local var_97_0 = type(arg_97_0) == "table" and arg_97_0.inst or nil
	local var_97_1 = tonumber(arg_97_1 or 0) or 0

	if var_97_0 and var_97_0.key == "Copycap" and var_97_0._copycapUsedWave == var_97_1 then
		var_97_0._copycapUsedWave = nil
	end
end

local var_0_55

local function var_0_56(arg_98_0, arg_98_1, arg_98_2, arg_98_3)
	if not arg_98_0 or not arg_98_1 then
		return false
	end

	arg_98_0._coreExtraSpawns = arg_98_0._coreExtraSpawns or {}

	table.insert(arg_98_0._coreExtraSpawns, {
		count = 1,
		consumed = false,
		sym = arg_98_1,
		noAbsorbEssence = arg_98_2 == true,
		sourceKey = arg_98_3
	})

	if arg_98_0._coreExtraSpawnPending ~= true then
		arg_98_0._coreExtraSpawnPending = true
		arg_98_0._coreExtraSpawnConsumed = false
		arg_98_0._coreExtraSpawnSym = arg_98_1
		arg_98_0._coreExtraSpawnNoAbsorbEssence = arg_98_2 == true
	end

	return true
end

local var_0_57 = {
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

function var_0_2.goldenLeverLineContainsCell(arg_99_0, arg_99_1)
	if type(arg_99_1) ~= "table" then
		return false
	end

	local var_99_0 = tonumber(arg_99_1.row)
	local var_99_1 = tonumber(arg_99_1.col)

	if not var_99_0 or not var_99_1 then
		return false
	end

	for iter_99_0, iter_99_1 in ipairs(var_0_57[tonumber(arg_99_0)] or {}) do
		if iter_99_1[1] == var_99_0 and iter_99_1[2] == var_99_1 then
			return true
		end
	end

	return false
end

local function var_0_58(arg_100_0, arg_100_1, arg_100_2)
	if arg_100_1 and arg_100_1.isNudgeWin == true then
		arg_100_0._goldenLeverUpgradeLineId = nil
		arg_100_0._goldenLeverCell = nil
		arg_100_0._goldenLeverMaxGrade = nil
		arg_100_0._goldenLeverUpgradeConsumed = nil
	end

	if not arg_100_1 or type(arg_100_1.goldenCell) ~= "table" then
		return false
	end

	for iter_100_0 in var_0_11(arg_100_2) do
		if iter_100_0.key == "GoldenLever" then
			for iter_100_1, iter_100_2 in ipairs(arg_100_0.winningLines or {}) do
				if var_0_2.goldenLeverLineContainsCell(iter_100_2, arg_100_1.goldenCell) then
					arg_100_0._goldenLeverUpgradeLineId = iter_100_2
					arg_100_0._goldenLeverCell = {
						row = tonumber(arg_100_1.goldenCell.row),
						col = tonumber(arg_100_1.goldenCell.col)
					}
					arg_100_0._goldenLeverMaxGrade = arg_100_1.goldenMaxGrade or "prism"
					iter_100_0._uiTrigger = true
				end

				if arg_100_0._goldenLeverUpgradeLineId then
					break
				end
			end

			return arg_100_0._goldenLeverUpgradeLineId ~= nil
		end
	end

	return false
end

function var_0_2.applyWinPostEvaluate(arg_101_0, arg_101_1)
	if not arg_101_0 or arg_101_0.won ~= true or not arg_101_1 or not arg_101_1.grid then
		return false
	end

	local var_101_0 = tonumber(arg_101_1.waveId or 0) or 0

	var_0_13(var_101_0)

	local var_101_1 = var_0_58(arg_101_0, arg_101_1, var_101_0)

	if arg_101_0._coreWinPostEvaluateApplied == true then
		return var_101_1
	end

	arg_101_0._coreWinPostEvaluateApplied = true

	for iter_101_0 in var_0_11(var_101_0) do
		if iter_101_0.key == "GoldenLever" then
			-- block empty
		elseif iter_101_0.key == "EchoLantern" then
			local var_101_2 = arg_101_0.symbol

			if var_101_2 then
				if iter_101_0._echoLanternLastWinSym == var_101_2 then
					var_0_56(arg_101_0, var_101_2, false, iter_101_0.key)

					iter_101_0._uiTrigger = true
				end

				iter_101_0._echoLanternLastWinSym = var_101_2
			end
		elseif iter_101_0.key == "ResonantAnvil" and iter_101_0._resonantAnvilUsedThisSpin ~= true then
			local var_101_3 = var_0_55(arg_101_0, arg_101_1.grid, 4)

			if var_101_3 then
				var_0_56(arg_101_0, var_101_3, true, iter_101_0.key)

				iter_101_0._resonantAnvilUsedThisSpin = true
				iter_101_0._uiTrigger = true
			end
		elseif iter_101_0.key == "Wildcard" then
			local var_101_4 = var_0_41(arg_101_0, arg_101_1.grid)

			for iter_101_1, iter_101_2 in ipairs(var_101_4) do
				var_0_56(arg_101_0, iter_101_2, true, iter_101_0.key)
			end

			if #var_101_4 > 0 then
				iter_101_0._uiTrigger = true
			end
		end
	end

	return false
end

local var_0_59 = {
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
	}
}

function var_0_2.getLuckyNailCandidates(arg_102_0)
	local var_102_0 = {}

	if type(arg_102_0) ~= "table" then
		return var_102_0
	end

	for iter_102_0, iter_102_1 in ipairs(var_0_59) do
		local var_102_1 = {}

		for iter_102_2, iter_102_3 in ipairs(iter_102_1) do
			local var_102_2 = iter_102_3[1]
			local var_102_3 = iter_102_3[2]
			local var_102_4 = arg_102_0[var_102_2] and arg_102_0[var_102_2][var_102_3] or nil

			if var_102_4 and var_102_4 ~= "Blank" and var_102_4 ~= "Joker" and var_102_4 ~= "J" then
				var_102_1[var_102_4] = var_102_1[var_102_4] or {}

				table.insert(var_102_1[var_102_4], {
					row = var_102_2,
					col = var_102_3
				})
			end
		end

		for iter_102_4, iter_102_5 in pairs(var_102_1) do
			if #iter_102_5 == 2 then
				local var_102_5 = {
					[iter_102_5[1].col] = true,
					[iter_102_5[2].col] = true
				}
				local var_102_6

				for iter_102_6, iter_102_7 in ipairs(iter_102_1) do
					if not var_102_5[iter_102_7[2]] then
						var_102_6 = {
							row = iter_102_7[1],
							col = iter_102_7[2]
						}

						break
					end
				end

				if var_102_6 then
					table.insert(var_102_0, {
						lineId = iter_102_0,
						symbol = iter_102_4,
						cells = iter_102_1,
						lockedCells = iter_102_5,
						rerollCell = var_102_6,
						rerollCol = var_102_6.col
					})
				end
			end
		end
	end

	table.sort(var_102_0, function(arg_103_0, arg_103_1)
		return (arg_103_0.lineId or 0) < (arg_103_1.lineId or 0)
	end)

	return var_102_0
end

function var_0_2.applyPostEvaluate(arg_104_0, arg_104_1)
	if not arg_104_0 or not arg_104_0.checked then
		return false
	end

	if not arg_104_1 or not arg_104_1.grid then
		return false
	end

	local var_104_0 = tonumber(arg_104_1.waveId or 0) or 0

	var_0_13(var_104_0)

	local var_104_1 = var_0_2.prepareGreedyTailOutcome(arg_104_0, arg_104_1)

	if var_104_1 then
		return var_104_1
	end

	if arg_104_0.won == true then
		return var_0_2.applyWinPostEvaluate(arg_104_0, arg_104_1)
	end

	for iter_104_0 in var_0_11(var_104_0) do
		local var_104_2 = arg_104_1.isFirstSpin == true or arg_104_1.isFirstSpin == nil and arg_104_1.isFirstPaidSpin == true

		if iter_104_0.key == "TwistedBell" and var_104_2 and (iter_104_0._twistedBellUsedWave or -1) ~= var_104_0 then
			iter_104_0._twistedBellUsedWave = var_104_0
			iter_104_0._uiTrigger = nil
			iter_104_0._uiActiveThisSpin = nil
			iter_104_0._uiSustainSpin = nil
			iter_104_0._uiPulseT0 = nil
			iter_104_0._uiPulseDur = nil

			local var_104_3 = {
				var_0_43(arg_104_1.grid, 1),
				var_0_43(arg_104_1.grid, 2),
				var_0_43(arg_104_1.grid, 3)
			}

			var_0_44(var_104_3, arg_104_1)

			if arg_104_1.deferAnimation == true then
				return {
					allowPostEvaluateChain = true,
					key = iter_104_0.key,
					inst = iter_104_0,
					reels = var_104_3
				}
			end

			local var_104_4 = arg_104_1.grid

			for iter_104_1, iter_104_2 in ipairs(var_104_3) do
				local var_104_5 = iter_104_2.col

				for iter_104_3 = 1, 3 do
					var_104_4[iter_104_3] = var_104_4[iter_104_3] or {}
					var_104_4[iter_104_3][var_104_5] = iter_104_2.targetFinalSymbols[iter_104_3]
				end
			end

			local var_104_6, var_104_7 = var_0_45(var_104_4)

			arg_104_0.checked = true
			arg_104_0.won = #var_104_6 > 0
			arg_104_0.winningLines = var_104_6
			arg_104_0.symbol = var_104_7
			arg_104_0.newWinningLines = nil
			arg_104_0.visibleWinningLines = nil
			arg_104_0.highlightActive = false
			arg_104_0.ht = 0
			arg_104_0.fxStarted = false
			arg_104_0._twistedBellRerolled = true

			return true
		end
	end

	for iter_104_4 in var_0_11(var_104_0) do
		if iter_104_4.key == "LuckyNail" and arg_104_1.isPlayerSpin ~= false and (iter_104_4._luckyNailUsedWave or -1) ~= var_104_0 then
			local var_104_8 = var_0_2.getLuckyNailCandidates(arg_104_1.grid)

			if #var_104_8 > 0 then
				iter_104_4._luckyNailUsedWave = var_104_0
				iter_104_4._uiTrigger = true

				return {
					key = iter_104_4.key,
					inst = iter_104_4,
					candidates = var_104_8
				}
			end
		end
	end

	for iter_104_5 in var_0_11(var_104_0) do
		if iter_104_5.key == "Copycap" and (iter_104_5._copycapUsedWave or -1) ~= var_104_0 then
			local var_104_9 = var_0_54(arg_104_1.grid)

			if var_104_9 then
				iter_104_5._copycapUsedWave = var_104_0

				if arg_104_1.deferAnimation == true then
					return {
						key = iter_104_5.key,
						inst = iter_104_5,
						col = var_104_9.col,
						row = var_104_9.row,
						newSymbol = var_104_9.newSymbol
					}
				end

				arg_104_1.grid[var_104_9.row] = arg_104_1.grid[var_104_9.row] or {}
				arg_104_1.grid[var_104_9.row][var_104_9.col] = var_104_9.newSymbol

				local var_104_10, var_104_11 = var_0_45(arg_104_1.grid)

				arg_104_0.checked = true
				arg_104_0.won = #var_104_10 > 0
				arg_104_0.winningLines = var_104_10
				arg_104_0.symbol = var_104_11
				arg_104_0.newWinningLines = nil
				arg_104_0.visibleWinningLines = nil
				arg_104_0.highlightActive = false
				arg_104_0.ht = 0
				arg_104_0.fxStarted = false
				arg_104_0._copycapApplied = true
				iter_104_5._uiTrigger = true

				return true
			end
		end
	end

	for iter_104_6 in var_0_11(var_104_0) do
		local var_104_12 = arg_104_1.isFirstSpin == true or arg_104_1.isFirstSpin == nil and arg_104_1.isFirstPaidSpin == true

		if iter_104_6.key == "TwinCherries" and var_104_12 and (iter_104_6._twinCherriesUsedWave or -1) ~= var_104_0 then
			iter_104_6._twinCherriesUsedWave = var_104_0
			iter_104_6._uiTrigger = nil
			iter_104_6._uiActiveThisSpin = nil
			iter_104_6._uiSustainSpin = nil
			iter_104_6._uiPulseT0 = nil
			iter_104_6._uiPulseDur = nil

			local var_104_13 = {}

			for iter_104_7 = 1, 3 do
				var_104_13[iter_104_7] = arg_104_1.grid[iter_104_7] and arg_104_1.grid[iter_104_7][1] or nil
			end

			if arg_104_1.deferAnimation == true then
				return {
					newWinsOnly = true,
					key = iter_104_6.key,
					inst = iter_104_6,
					reels = {
						{
							col = 3,
							targetFinalSymbols = var_104_13
						}
					}
				}
			end

			for iter_104_8 = 1, 3 do
				arg_104_1.grid[iter_104_8] = arg_104_1.grid[iter_104_8] or {}
				arg_104_1.grid[iter_104_8][3] = var_104_13[iter_104_8]
			end

			local var_104_14, var_104_15 = var_0_45(arg_104_1.grid)

			arg_104_0.checked = true
			arg_104_0.won = #var_104_14 > 0
			arg_104_0.winningLines = var_104_14
			arg_104_0.symbol = var_104_15
			arg_104_0.newWinningLines = var_104_14
			arg_104_0.visibleWinningLines = nil
			arg_104_0.highlightActive = false
			arg_104_0.ht = 0
			arg_104_0.fxStarted = false
			arg_104_0._twinCherriesApplied = true

			return true
		end
	end

	return false
end

function var_0_2.prepareFinalOutcome(arg_105_0, arg_105_1)
	if not arg_105_0 or not arg_105_0.checked or arg_105_0.won == true then
		return false
	end

	if arg_105_0._coreFinalOutcomePrepared then
		return arg_105_0._coreAutoReroll == true
	end

	arg_105_0._coreFinalOutcomePrepared = true

	local var_105_0 = tonumber(arg_105_1 and arg_105_1.waveId or 0) or 0

	var_0_13(var_105_0)

	for iter_105_0 in var_0_11(var_105_0) do
		if iter_105_0.key == "EntropySpoon" and love.math.random() < 0.1 then
			arg_105_0._coreAutoReroll = true
			iter_105_0._uiTrigger = true
			iter_105_0._entropySustainNext = true

			return true
		end
	end

	return false
end

local var_0_60

function var_0_2.onNudgeComplete(arg_106_0, arg_106_1)
	local var_106_0 = tonumber(arg_106_1 and arg_106_1.waveId or 0) or 0

	var_0_13(var_106_0)

	local var_106_1 = arg_106_0 and arg_106_0.won == true
	local var_106_2

	if not arg_106_1 or not arg_106_1.isReboundAxisFollowup then
		local var_106_3 = math.floor(tonumber(arg_106_1 and arg_106_1.nudgeCol or 0) or 0)

		if var_106_3 >= 1 and var_106_3 <= 3 then
			for iter_106_0 in var_0_11(var_106_0) do
				if iter_106_0.key == "ReboundAxis" and (iter_106_0._reboundAxisUsedWave or -1) ~= var_106_0 then
					iter_106_0._reboundAxisUsedWave = var_106_0
					iter_106_0._uiTrigger = true
					iter_106_0._uiActiveThisSpin = true
					iter_106_0._uiSustainSpin = true
					var_106_2 = var_106_2 or {}
					var_106_2.reboundNudgeCol = var_106_3

					break
				end
			end
		end
	end

	if var_106_1 then
		local var_106_4 = tonumber(arg_106_1 and (arg_106_1.spinWaveId or arg_106_1.waveId) or 0) or 0
		local var_106_5 = arg_106_1 and arg_106_1.spinKey or nil

		for iter_106_1 in var_0_11(var_106_0) do
			if iter_106_1.key == "DoubleLedger" then
				var_106_2 = var_0_60(iter_106_1, var_106_4, var_106_2, var_106_5, arg_106_0)
			end
		end

		return var_106_2
	end

	for iter_106_2 in var_0_11(var_106_0) do
		if iter_106_2.key == "SpareBattery" and (iter_106_2._spareBatteryUsedWave or -1) ~= var_106_0 then
			iter_106_2._spareBatteryUsedWave = var_106_0
			iter_106_2._uiTrigger = true
			iter_106_2._uiActiveThisSpin = true
			iter_106_2._uiSustainSpin = true
			var_106_2 = var_106_2 or {}
			var_106_2.key = var_106_2.key or iter_106_2.key
			var_106_2.inst = var_106_2.inst or iter_106_2
			var_106_2.refundNudge = true

			break
		end
	end

	return var_106_2
end

function var_0_2.onAbsorb(arg_107_0)
	local var_107_0 = tonumber(arg_107_0 and arg_107_0.waveId or 0) or 0
	local var_107_1 = arg_107_0 and arg_107_0.info or nil

	var_0_13(var_107_0)

	local var_107_2

	for iter_107_0 in var_0_11(var_107_0) do
		if iter_107_0.key == "NutrientLeaf" and (iter_107_0._nutrientWaveId or -1) ~= var_107_0 then
			iter_107_0._nutrientWaveId = var_107_0
			iter_107_0._nutrientDiscountPending = math.max(tonumber(iter_107_0._nutrientDiscountPending or 0) or 0, 0.5)
			iter_107_0._uiTrigger = true
		elseif iter_107_0.key == "BloodlineSeal" and (iter_107_0._bloodlineUsedWave or -1) ~= var_107_0 then
			local var_107_3 = var_107_1 and var_107_1.victim and var_107_1.victim.sym

			if var_107_3 and var_107_3 ~= "Blank" and var_107_3 ~= "Joker" and var_107_3 ~= "J" then
				iter_107_0._bloodlineUsedWave = var_107_0
				iter_107_0._bloodlinePendingSym = var_107_3
				iter_107_0._uiTrigger = true
			end
		end
	end

	return var_107_2
end

local function var_0_61(arg_108_0, arg_108_1)
	if not arg_108_0 then
		return false
	end

	local var_108_0 = math.max(1, math.floor(tonumber(arg_108_1 or 1) or 1))
	local var_108_1 = {}

	for iter_108_0 = 1, 3 do
		for iter_108_1 = 1, 3 do
			local var_108_2 = arg_108_0[iter_108_0] and arg_108_0[iter_108_0][iter_108_1]

			if var_0_52(var_108_2) then
				local var_108_3 = (var_108_1[var_108_2] or 0) + 1

				if var_108_0 <= var_108_3 then
					return true
				end

				var_108_1[var_108_2] = var_108_3
			end
		end
	end

	return false
end

local function var_0_62(arg_109_0, arg_109_1)
	if not arg_109_0 or not var_0_52(arg_109_1) then
		return 0
	end

	local var_109_0 = 0

	for iter_109_0 = 1, 3 do
		for iter_109_1 = 1, 3 do
			if arg_109_0[iter_109_0] and arg_109_0[iter_109_0][iter_109_1] == arg_109_1 then
				var_109_0 = var_109_0 + 1
			end
		end
	end

	return var_109_0
end

function var_0_55(arg_110_0, arg_110_1, arg_110_2)
	if not arg_110_1 then
		return nil
	end

	local var_110_0 = math.max(1, math.floor(tonumber(arg_110_2 or 1) or 1))
	local var_110_1 = {}
	local var_110_2 = {}

	local function var_110_3(arg_111_0)
		if var_0_52(arg_111_0) and not var_110_2[arg_111_0] then
			var_110_2[arg_111_0] = true

			table.insert(var_110_1, arg_111_0)
		end
	end

	var_110_3(arg_110_0 and arg_110_0.symbol)

	if arg_110_0 and arg_110_0.winningLines and type(arg_110_0.winningLines) == "table" then
		local var_110_4 = {
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

		for iter_110_0, iter_110_1 in ipairs(arg_110_0.winningLines) do
			local var_110_5 = var_110_4[iter_110_1]

			if var_110_5 then
				local var_110_6 = arg_110_1[var_110_5[1][1]] and arg_110_1[var_110_5[1][1]][var_110_5[1][2]]
				local var_110_7 = arg_110_1[var_110_5[2][1]] and arg_110_1[var_110_5[2][1]][var_110_5[2][2]]
				local var_110_8 = arg_110_1[var_110_5[3][1]] and arg_110_1[var_110_5[3][1]][var_110_5[3][2]]

				var_110_3(var_0_40(var_110_6, var_110_7, var_110_8))
			end
		end
	end

	for iter_110_2, iter_110_3 in ipairs(var_110_1) do
		if var_110_0 <= var_0_62(arg_110_1, iter_110_3) then
			return iter_110_3
		end
	end

	return nil
end

local function var_0_63(arg_112_0)
	if not arg_112_0 or not arg_112_0.winningLines or type(arg_112_0.winningLines) ~= "table" then
		return 0
	end

	local var_112_0 = 0

	for iter_112_0 in ipairs(arg_112_0.winningLines) do
		var_112_0 = var_112_0 + 1
	end

	return var_112_0
end

local function var_0_64(arg_113_0, arg_113_1, arg_113_2, arg_113_3, arg_113_4)
	if not arg_113_0 or arg_113_0.key ~= "MultiEchoMirror" then
		return arg_113_4
	end

	if not (arg_113_1 and arg_113_1.checked and arg_113_1.won == true) and var_0_63(arg_113_1) == 0 and var_0_61(arg_113_2 and arg_113_2.grid, 4) and (arg_113_0._multiEchoUsedWave or -1) ~= arg_113_3 then
		arg_113_0._multiEchoUsedWave = arg_113_3
		arg_113_0._uiTrigger = true
		arg_113_4 = arg_113_4 or {}
		arg_113_4.essence = math.max(tonumber(arg_113_4.essence or 0) or 0, 1)
	end

	return arg_113_4
end

function var_0_2.onVisibleSpinLoss(arg_114_0, arg_114_1)
	if not arg_114_0 or not arg_114_0.checked or arg_114_0.won == true then
		return nil
	end

	local var_114_0 = tonumber(arg_114_1 and arg_114_1.waveId or 0) or 0

	var_0_13(var_114_0)

	local var_114_1

	for iter_114_0 in var_0_11(var_114_0) do
		var_114_1 = var_0_64(iter_114_0, arg_114_0, arg_114_1, var_114_0, var_114_1)

		if iter_114_0.key == "ResonoscopeChain" then
			local var_114_2 = 0

			for iter_114_1 in ipairs(type(arg_114_0.winningLines) == "table" and arg_114_0.winningLines or {}) do
				var_114_2 = var_114_2 + 1
			end

			if var_114_2 == 0 then
				local var_114_3 = arg_114_1 and arg_114_1.spinKey or nil
				local var_114_4 = iter_114_0._resonoscopeNudgePreview

				if not var_114_3 or not var_114_4 or var_114_4.spinKey ~= var_114_3 then
					var_114_4 = {
						col = love.math.random(1, 3),
						symbol = var_0_42(0),
						spinKey = var_114_3
					}
					iter_114_0._resonoscopeNudgePreview = var_114_4
					iter_114_0._uiTrigger = true
				end

				var_114_1 = var_114_1 or {}
				var_114_1.nudgePreview = {
					col = var_114_4.col,
					symbol = var_114_4.symbol
				}
			end
		end

		if iter_114_0.key == "CrookedFang" then
			var_0_51(iter_114_0, var_114_0, arg_114_1 and arg_114_1.spinKey or nil, arg_114_1 and arg_114_1.grid, arg_114_0)
		end
	end

	return var_114_1
end

function var_0_60(arg_115_0, arg_115_1, arg_115_2, arg_115_3, arg_115_4)
	if not arg_115_0 then
		return arg_115_2
	end

	if (arg_115_0._doubleLedgerUsedWave or -1) == arg_115_1 then
		return arg_115_2
	end

	local var_115_0 = {}
	local var_115_1 = {}

	for iter_115_0, iter_115_1 in ipairs(arg_115_4 and arg_115_4.winningLines or {}) do
		local var_115_2 = math.floor(tonumber(iter_115_1 or 0) or 0)

		if var_115_2 >= 1 and var_115_2 <= 8 and not var_115_1[var_115_2] then
			var_115_1[var_115_2] = true

			table.insert(var_115_0, var_115_2)
		end
	end

	if #var_115_0 == 0 then
		return arg_115_2
	end

	arg_115_0._doubleLedgerUsedWave = arg_115_1
	arg_115_0._doubleLedgerLastSpinKey = arg_115_3
	arg_115_0._uiTrigger = true
	arg_115_0._uiActiveThisSpin = true
	arg_115_0._uiSustainSpin = true
	arg_115_2 = arg_115_2 or {}
	arg_115_2.doubleLedgerCascade = {
		lineId = var_115_0[1],
		lineIds = var_115_0,
		spinKey = arg_115_3
	}

	return arg_115_2
end

function var_0_2.finishSpinModifiers()
	if var_0_9._appliedThisSpin then
		local var_116_0 = var_0_9._baseForceProb ~= nil and var_0_9._baseForceProb or var_0_0 and var_0_0.slot and var_0_0.slot.forceWinProb or 0

		var_0_0.slot.forceWinProb = var_116_0
		var_0_9._appliedThisSpin = nil
	end

	if var_0_9._weightsApplied and var_0_9._baseSymbolWeights then
		var_0_0.slot.symbolWeights = var_0_9._baseSymbolWeights
		var_0_9._weightsApplied = false
	end

	return true
end

function var_0_2.onSpinResult(arg_117_0, arg_117_1)
	var_0_2.finishSpinModifiers()

	local var_117_0 = arg_117_1 and tonumber(arg_117_1.waveId or 0) or 0

	var_0_13(var_117_0)

	local var_117_1 = arg_117_0 and arg_117_0.checked and arg_117_0.won == true
	local var_117_2

	for iter_117_0 in var_0_11(var_117_0) do
		if iter_117_0.key == "Firstflag" then
			local var_117_3 = arg_117_1 and tonumber(arg_117_1.waveId or 0) or 0

			if var_117_1 then
				-- block empty
			elseif (iter_117_0._firstFailWaveUsed or -1) ~= var_117_3 then
				iter_117_0._nextWinBoost = math.max(iter_117_0._nextWinBoost or 0, 0.25)
				iter_117_0._firstFailWaveUsed = var_117_3
			end
		elseif iter_117_0.key == "Rushtrail" then
			if var_117_1 then
				iter_117_0._rushWins = (iter_117_0._rushWins or 0) + 1

				local var_117_4 = 0.06 * math.min(iter_117_0._rushWins or 0, 5)

				iter_117_0._nextWinBoost = math.max(iter_117_0._nextWinBoost or 0, var_117_4)
			else
				iter_117_0._rushWins = 0
			end
		elseif iter_117_0.key == "MultiEchoMirror" then
			var_117_2 = var_0_64(iter_117_0, arg_117_0, arg_117_1, var_117_0, var_117_2)
		elseif iter_117_0.key == "DoubleLedger" then
			if var_117_1 then
				var_117_2 = var_0_60(iter_117_0, var_117_0, var_117_2, arg_117_1 and arg_117_1.spinKey, arg_117_0)
			end
		elseif iter_117_0.key == "RewindClock" then
			if not var_117_1 then
				iter_117_0._rewindCostReductionPending = 25
			end
		elseif iter_117_0.key == "MirageGoblet" then
			local var_117_5 = false

			if arg_117_0 and arg_117_0.winningLines and type(arg_117_0.winningLines) == "table" then
				local var_117_6 = {}

				for iter_117_1, iter_117_2 in ipairs(arg_117_0.winningLines) do
					var_117_6[iter_117_2] = true
				end

				var_117_5 = var_117_6[1] and var_117_6[2] and var_117_6[3] and var_117_6[4] and var_117_6[5]
			end

			if var_117_5 then
				local var_117_7 = arg_117_0 and arg_117_0.symbol

				if not var_117_7 and arg_117_1 and arg_117_1.grid and arg_117_0 and arg_117_0.winningLines then
					local var_117_8 = {
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
					local var_117_9 = arg_117_0.winningLines[1]
					local var_117_10 = var_117_9 and var_117_8[var_117_9]

					if var_117_10 then
						local var_117_11 = arg_117_1.grid[var_117_10[1][1]][var_117_10[1][2]]
						local var_117_12 = arg_117_1.grid[var_117_10[2][1]][var_117_10[2][2]]
						local var_117_13 = arg_117_1.grid[var_117_10[3][1]][var_117_10[3][2]]

						var_117_7 = var_0_40(var_117_11, var_117_12, var_117_13) or var_117_7
					end
				end

				if var_117_7 then
					iter_117_0._mirageTargetSym = var_117_7
					iter_117_0._mirageSpins = 3
				end
			end
		elseif iter_117_0.key == "Resonoscope" then
			if arg_117_0 and arg_117_0.winningLines and type(arg_117_0.winningLines) == "table" and arg_117_1 and arg_117_1.grid then
				local var_117_14 = arg_117_1 and tonumber(arg_117_1.waveId or 0) or 0

				if (iter_117_0._resonoUsedWave or -1) ~= var_117_14 then
					local var_117_15 = {
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
					local var_117_16 = {}

					for iter_117_3, iter_117_4 in ipairs(arg_117_0.winningLines) do
						local var_117_17 = var_117_15[iter_117_4]

						if var_117_17 then
							local var_117_18 = arg_117_1.grid[var_117_17[1][1]][var_117_17[1][2]]
							local var_117_19 = arg_117_1.grid[var_117_17[2][1]][var_117_17[2][2]]
							local var_117_20 = arg_117_1.grid[var_117_17[3][1]][var_117_17[3][2]]
							local var_117_21 = var_0_40(var_117_18, var_117_19, var_117_20)

							if var_117_21 then
								var_117_16[var_117_21] = (var_117_16[var_117_21] or 0) + 1
							end
						end
					end

					local var_117_22 = false

					for iter_117_5, iter_117_6 in pairs(var_117_16) do
						if iter_117_6 >= 3 then
							var_117_22 = true

							break
						end
					end

					if var_117_22 then
						iter_117_0._resonoJackpotNext = true
						iter_117_0._resonoUsedWave = var_117_14
					end
				end
			end
		elseif iter_117_0.key == "Prosperfang" then
			if var_117_1 then
				iter_117_0._pfWins = (iter_117_0._pfWins or 0) + 1

				if iter_117_0._pfWins >= 3 then
					iter_117_0._prosperNextMul = math.max(iter_117_0._prosperNextMul or 0, 1.1)
					iter_117_0._pfWins = 0
				end
			else
				iter_117_0._pfWins = 0
			end
		elseif iter_117_0.key == "ReverseShell" then
			if var_117_1 then
				iter_117_0._rsFails = 0
			else
				iter_117_0._rsFails = (iter_117_0._rsFails or 0) + 1

				if iter_117_0._rsFails >= 3 then
					iter_117_0._forceNextWinOnce = true
					iter_117_0._rsFails = 0
				end
			end
		elseif iter_117_0.key == "EntropySpoon" and not var_117_1 and not arg_117_0._coreFinalOutcomePrepared and love.math.random() < 0.1 then
			arg_117_0._coreAutoReroll = true
			iter_117_0._uiTrigger = true
			iter_117_0._entropySustainNext = true
		end
	end

	var_0_37()

	return var_117_2
end

function var_0_2.remove(arg_118_0)
	local var_118_0 = arg_118_0

	if type(arg_118_0) == "table" then
		var_118_0 = arg_118_0.key or arg_118_0.id
	end

	if type(var_118_0) ~= "string" then
		return false
	end

	local var_118_1 = tonumber(var_118_0) and string.format("%02d", tonumber(var_118_0)) or var_118_0

	for iter_118_0 = #var_0_9.active, 1, -1 do
		local var_118_2 = var_0_9.active[iter_118_0]
		local var_118_3 = var_118_2 and (var_118_2.key or var_118_2.def and (var_118_2.def.key or var_118_2.def.id))
		local var_118_4 = var_118_2 and var_118_2.def and var_118_2.def.id

		if var_118_3 == var_118_0 or var_118_4 == var_118_0 or var_118_4 == var_118_1 then
			if var_118_2.key == "OldCrown" and var_0_9._weightsApplied then
				var_0_2.finishSpinModifiers()
			end

			var_118_2._oldCrownTargetSym = nil

			table.remove(var_0_9.active, iter_118_0)

			return true
		end
	end

	return false
end

function var_0_2.getIds()
	local var_119_0 = {}

	for iter_119_0, iter_119_1 in ipairs(var_0_8) do
		var_119_0[iter_119_0] = iter_119_1.id or iter_119_1.key
	end

	table.sort(var_119_0, function(arg_120_0, arg_120_1)
		local var_120_0 = tonumber(arg_120_0)
		local var_120_1 = tonumber(arg_120_1)

		if var_120_0 and var_120_1 then
			return var_120_0 < var_120_1
		end

		return tostring(arg_120_0) < tostring(arg_120_1)
	end)

	return var_119_0
end

function var_0_2.getById(arg_121_0)
	if not arg_121_0 then
		return nil
	end

	local var_121_0 = tostring(arg_121_0)

	if tonumber(var_121_0) then
		var_121_0 = string.format("%02d", tonumber(var_121_0))
	end

	for iter_121_0, iter_121_1 in ipairs(var_0_8) do
		if iter_121_1.id == var_121_0 or iter_121_1.key == var_121_0 then
			return iter_121_1
		end
	end

	return nil
end

function var_0_2.reset()
	var_0_2.finishSpinModifiers()

	var_0_9.active = {}
	var_0_9._baseForceProb = nil
	var_0_9._baseSymbolWeights = nil
	var_0_9._weightsApplied = false
end

return var_0_2
