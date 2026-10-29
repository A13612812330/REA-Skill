local var_0_0 = {}

var_0_0.VERSION = 1

local var_0_1 = {
	오딘 = "템플러"
}
local var_0_2 = {
	라이스 = true,
	베일 = true,
	스카우트 = true,
	스펙터 = true,
	크루세이더 = true
}
local var_0_3 = {
	_awakening = true,
	target = true,
	area = true,
	attackTarget = true,
	lift = true,
	promoteVis = true,
	firstSpawnSheetFx = true,
	spawnHold = true,
	spawnVFX = true,
	customImage = true,
	allyRef = true,
	awakeningModal = true,
	_awakeningDamage = true,
	_awakeningBattle = true
}

local function var_0_4(arg_1_0, arg_1_1, arg_1_2)
	local var_1_0 = type(arg_1_0)

	if var_1_0 == "string" then
		return var_0_1[arg_1_0] or arg_1_0
	end

	if var_1_0 == "nil" or var_1_0 == "boolean" then
		return arg_1_0
	end

	if var_1_0 == "number" then
		if arg_1_0 ~= arg_1_0 or arg_1_0 == math.huge or arg_1_0 == -math.huge then
			return nil
		end

		return arg_1_0
	end

	if var_1_0 ~= "table" or arg_1_2 > 24 then
		return nil
	end

	if arg_1_1[arg_1_0] then
		return nil
	end

	arg_1_1[arg_1_0] = true

	local var_1_1 = {}

	for iter_1_0, iter_1_1 in pairs(arg_1_0) do
		local var_1_2 = type(iter_1_0)
		local var_1_3 = var_1_2 ~= "number" and var_1_2 ~= "string"

		if not var_1_3 and var_1_2 == "string" then
			var_1_3 = var_0_3[iter_1_0] == true or iter_1_0:match("^_ui") ~= nil
		end

		if not var_1_3 then
			local var_1_4 = var_0_4(iter_1_1, arg_1_1, arg_1_2 + 1)
			local var_1_5 = var_0_1[iter_1_0] or iter_1_0

			if var_1_4 ~= nil and (var_1_5 == iter_1_0 or arg_1_0[var_1_5] == nil) then
				var_1_1[var_1_5] = var_1_4
			end
		end
	end

	arg_1_1[arg_1_0] = nil

	if var_1_1.sym == "W" and (var_0_2[var_1_1.subclass] or var_0_2[var_1_1.subclassName] or var_0_2[var_1_1.subclassKey]) then
		local var_1_6 = tonumber(var_1_1.rank or var_1_1.star or 1) or 1
		local var_1_7 = var_1_6 >= 3 and "MiniSwordMan03" or var_1_6 >= 2 and "MiniSwordMan02" or "MiniSwordMan"

		var_1_1.subclass, var_1_1.subclassKey = var_1_7, var_1_7
		var_1_1.subclassName = var_1_6 >= 3 and "기사" or var_1_6 >= 2 and "병사" or "전사"
	end

	return var_1_1
end

function var_0_0.copySerializable(arg_2_0)
	return var_0_4(arg_2_0, {}, 0)
end

function var_0_0.captureItemShop(arg_3_0)
	if not arg_3_0 or type(arg_3_0._itemOffers) ~= "table" then
		return nil
	end

	local var_3_0 = {}

	for iter_3_0, iter_3_1 in pairs(arg_3_0._itemOffers) do
		if type(iter_3_0) == "number" and type(iter_3_1) == "table" then
			var_3_0[iter_3_0] = iter_3_1.id or iter_3_1.key
		end
	end

	return {
		offers = var_3_0,
		cycleId = arg_3_0._itemOfferCycleId,
		rerollCost = arg_3_0._itemRerollCost
	}
end

function var_0_0.restoreItemShop(arg_4_0, arg_4_1)
	arg_4_0._itemOffers, arg_4_0._itemOfferCycleId, arg_4_0._itemRerollCost = nil

	if type(arg_4_1) ~= "table" or type(arg_4_1.offers) ~= "table" then
		return
	end

	local var_4_0 = require("src.game.item")
	local var_4_1 = {}

	for iter_4_0, iter_4_1 in pairs(arg_4_1.offers) do
		if type(iter_4_0) == "number" and iter_4_0 >= 1 and iter_4_0 <= 3 and iter_4_0 == math.floor(iter_4_0) then
			var_4_1[iter_4_0] = var_4_0.getById(iter_4_1)
		end
	end

	arg_4_0._itemOffers = var_4_1

	local var_4_2 = tonumber(arg_4_1.cycleId)
	local var_4_3 = tonumber(arg_4_1.rerollCost)

	arg_4_0._itemOfferCycleId = var_4_2 and math.max(0, math.floor(var_4_2)) or nil
	arg_4_0._itemRerollCost = var_4_3 and math.max(0, math.floor(var_4_3)) or nil
end

local function var_0_5(arg_5_0, arg_5_1, arg_5_2, arg_5_3)
	local var_5_0 = tonumber(arg_5_0)

	if not var_5_0 then
		return arg_5_3
	end

	local var_5_1 = math.floor(var_5_0)

	if arg_5_1 then
		var_5_1 = math.max(arg_5_1, var_5_1)
	end

	if arg_5_2 then
		var_5_1 = math.min(arg_5_2, var_5_1)
	end

	return var_5_1
end

function var_0_0.make(arg_6_0, arg_6_1, arg_6_2, arg_6_3)
	local var_6_0 = var_0_5(arg_6_0, 1, nil, nil)

	if not var_6_0 then
		return nil
	end

	return {
		version = var_0_0.VERSION,
		stage = var_6_0,
		difficulty = var_0_5(arg_6_1, 1, 3, 1),
		wave = var_0_5(arg_6_2, 1, nil, 1),
		savedAt = os and os.time and os.time() or 0,
		state = var_0_0.copySerializable(arg_6_3 or {})
	}
end

function var_0_0.normalizeSnapshot(arg_7_0, arg_7_1)
	if type(arg_7_0) ~= "table" then
		return nil
	end

	local var_7_0 = var_0_5(arg_7_0.stage or arg_7_1, 1, nil, nil)

	if not var_7_0 then
		return nil
	end

	if arg_7_1 and var_7_0 ~= var_0_5(arg_7_1, 1, nil, var_7_0) then
		return nil
	end

	local var_7_1 = var_0_0.copySerializable(arg_7_0.state or {})

	if type(var_7_1) ~= "table" then
		return nil
	end

	return {
		version = var_0_5(arg_7_0.version, 1, var_0_0.VERSION, var_0_0.VERSION),
		stage = var_7_0,
		difficulty = var_0_5(arg_7_0.difficulty, 1, 3, 1),
		wave = var_0_5(arg_7_0.wave, 1, nil, 1),
		savedAt = var_0_5(arg_7_0.savedAt, 0, nil, 0),
		state = var_7_1
	}
end

function var_0_0.normalizeSlots(arg_8_0)
	local var_8_0 = {}

	if type(arg_8_0) ~= "table" then
		return var_8_0
	end

	for iter_8_0, iter_8_1 in pairs(arg_8_0) do
		local var_8_1 = var_0_5(iter_8_0, 1, nil, nil)

		if var_8_1 then
			local var_8_2 = var_0_0.normalizeSnapshot(iter_8_1, var_8_1)

			if var_8_2 then
				var_8_0[var_8_1] = var_8_2
			end
		end
	end

	return var_8_0
end

return var_0_0
