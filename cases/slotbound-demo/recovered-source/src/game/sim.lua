local var_0_0 = require("src.data.constants")
local var_0_1 = {}

local function var_0_2()
	if love and love.math and love.math.random then
		return love.math.random()
	end

	return math.random()
end

local function var_0_3()
	local var_2_0 = var_0_0 and var_0_0.slot and var_0_0.slot.symbolWeights or {}
	local var_2_1 = {}
	local var_2_2 = 0

	for iter_2_0, iter_2_1 in pairs(var_2_0) do
		local var_2_3 = tonumber(iter_2_1 or 0) or 0

		if var_2_3 > 0 then
			var_2_1[#var_2_1 + 1] = {
				key = iter_2_0,
				w = var_2_3
			}
			var_2_2 = var_2_2 + var_2_3
		end
	end

	if var_2_2 <= 1e-12 or #var_2_1 == 0 then
		local var_2_4 = {
			"W",
			"A",
			"S",
			"M",
			"H",
			"D"
		}

		return var_2_4[math.max(1, math.min(#var_2_4, math.floor(var_0_2() * #var_2_4) + 1))]
	end

	local var_2_5 = var_0_2() * var_2_2

	for iter_2_2 = 1, #var_2_1 do
		local var_2_6 = var_2_1[iter_2_2]

		if var_2_5 < var_2_6.w then
			return var_2_6.key
		end

		var_2_5 = var_2_5 - var_2_6.w
	end

	return var_2_1[#var_2_1].key
end

local function var_0_4()
	local var_3_0 = {
		{},
		{},
		{}
	}

	for iter_3_0 = 1, 3 do
		for iter_3_1 = 1, 3 do
			var_3_0[iter_3_0][iter_3_1] = var_0_3()
		end
	end

	return var_3_0
end

local function var_0_5(arg_4_0)
	local var_4_0 = {
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
	local var_4_1 = 0

	for iter_4_0, iter_4_1 in ipairs(var_4_0) do
		local var_4_2 = arg_4_0[iter_4_1[1][1]][iter_4_1[1][2]]
		local var_4_3 = arg_4_0[iter_4_1[2][1]][iter_4_1[2][2]]
		local var_4_4 = arg_4_0[iter_4_1[3][1]][iter_4_1[3][2]]

		if var_4_2 and var_4_2 == var_4_3 and var_4_3 == var_4_4 then
			var_4_1 = var_4_1 + 1
		end
	end

	return var_4_1
end

function var_0_1.simulate(arg_5_0)
	arg_5_0 = math.max(1, math.floor(tonumber(arg_5_0 or 100000) or 100000))

	local var_5_0 = var_0_0 and var_0_0.slot and var_0_0.slot.forceWinProb or 0

	if var_0_0 and var_0_0.slot then
		var_0_0.slot.forceWinProb = 0
	end

	local var_5_1 = 0
	local var_5_2 = 0

	for iter_5_0 = 1, arg_5_0 do
		local var_5_3 = var_0_4()
		local var_5_4 = var_0_5(var_5_3)

		var_5_2 = var_5_2 + var_5_4

		if var_5_4 > 0 then
			var_5_1 = var_5_1 + 1
		end
	end

	if var_0_0 and var_0_0.slot then
		var_0_0.slot.forceWinProb = var_5_0
	end

	local var_5_5 = var_5_1 / arg_5_0
	local var_5_6 = var_5_2 / arg_5_0

	return {
		trials = arg_5_0,
		naturalAtLeastOne = var_5_5,
		expectedLinesPerSpin = var_5_6
	}
end

function var_0_1.simulateEffective(arg_6_0, arg_6_1)
	arg_6_0 = math.max(1, math.floor(tonumber(arg_6_0 or 100000) or 100000))
	arg_6_1 = 0

	local var_6_0 = var_0_0 and var_0_0.slot and var_0_0.slot.forceWinProb or 0

	if var_0_0 and var_0_0.slot then
		var_0_0.slot.forceWinProb = 0
	end

	local var_6_1 = 0
	local var_6_2 = 0
	local var_6_3 = 0

	for iter_6_0 = 1, arg_6_0 do
		local var_6_4 = var_0_4()
		local var_6_5 = var_0_5(var_6_4)

		if var_6_5 > 0 then
			var_6_1 = var_6_1 + 1
		end

		if var_6_5 > 0 then
			var_6_2 = var_6_2 + 1
		end

		var_6_3 = var_6_3 + var_6_5
	end

	if var_0_0 and var_0_0.slot then
		var_0_0.slot.forceWinProb = var_6_0
	end

	return {
		trials = arg_6_0,
		winSuppressProb = arg_6_1,
		naturalAtLeastOne = var_6_1 / arg_6_0,
		effectiveAtLeastOne = var_6_2 / arg_6_0,
		expectedLinesPerSpin = var_6_3 / arg_6_0
	}
end

function var_0_1.suggestForceProb(arg_7_0, arg_7_1)
	local var_7_0 = var_0_1.simulate(arg_7_1)
	local var_7_1 = var_7_0.naturalAtLeastOne or 0
	local var_7_2 = math.max(0, math.min(1, tonumber(arg_7_0 or 0.25) or 0.25))
	local var_7_3 = 1 - var_7_1

	if var_7_3 <= 1e-09 then
		return {
			note = "Natural win is ~100%; forcing not needed",
			suggested = 0,
			natural = var_7_1
		}
	end

	local var_7_4 = (var_7_2 - var_7_1) / var_7_3
	local var_7_5 = math.max(0, math.min(1, var_7_4))

	return {
		suggested = var_7_5,
		natural = var_7_1,
		inputTarget = var_7_2,
		trials = var_7_0.trials
	}
end

return var_0_1
