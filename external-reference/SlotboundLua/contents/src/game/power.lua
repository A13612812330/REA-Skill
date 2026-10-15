local var_0_0 = require("src.data.constants")
local var_0_1 = {}

local function var_0_2()
	return (var_0_0 and var_0_0.power or {}).aspdTau or 0.1
end

local function var_0_3(arg_2_0)
	local var_2_0 = math.max(0, arg_2_0 or 0)

	return var_2_0 / (1 + var_0_2() * var_2_0)
end

local function var_0_4(arg_3_0)
	local var_3_0 = math.max(0, arg_3_0 or 0)
	local var_3_1 = 1 + var_0_2() * var_3_0

	return 1 / (var_3_1 * var_3_1)
end

local function var_0_5()
	local var_4_0 = var_0_0 and var_0_0.power or {}
	local var_4_1 = var_4_0 and var_4_0.baseline or {}

	return {
		alpha = var_4_0.alpha or 0.6,
		betaAtk = var_4_0.betaAtk or 0.7,
		betaASPD = var_4_0.betaASPD or 1.05,
		HP0 = var_4_1.HP0 or var_4_0.HP0 or 70,
		ATK0 = var_4_1.ATK0 or var_4_0.ATK0 or 9,
		ASPD0 = var_4_1.ASPD0 or var_4_0.ASPD0 or 1.5
	}
end

function var_0_1.powerSimple(arg_5_0, arg_5_1, arg_5_2)
	local var_5_0 = math.max(0, arg_5_0 or 0)
	local var_5_1 = math.max(0, arg_5_1 or 0)
	local var_5_2 = var_0_3(arg_5_2)

	return math.sqrt(var_5_0 * var_5_1 * var_5_2)
end

function var_0_1.computePartials(arg_6_0, arg_6_1, arg_6_2)
	local var_6_0 = math.max(1e-09, arg_6_0 or 1)
	local var_6_1 = math.max(1e-09, arg_6_1 or 1)
	local var_6_2 = math.max(1e-09, var_0_3(arg_6_2))
	local var_6_3 = var_0_4(arg_6_2)
	local var_6_4 = 0.5 * math.sqrt(var_6_1 * var_6_2 / var_6_0)
	local var_6_5 = 0.5 * math.sqrt(var_6_0 * var_6_2 / var_6_1)
	local var_6_6 = 0.5 * math.sqrt(var_6_0 * var_6_1 / var_6_2) * var_6_3

	return var_6_4, var_6_5, var_6_6
end

function var_0_1.computeBalancedIncrease(arg_7_0, arg_7_1, arg_7_2, arg_7_3, arg_7_4)
	local var_7_0, var_7_1, var_7_2 = var_0_1.computePartials(arg_7_0, arg_7_1, arg_7_2)
	local var_7_3 = 15
	local var_7_4 = 2
	local var_7_5 = 0.2
	local var_7_6 = 0
	local var_7_7 = 0
	local var_7_8 = 0

	if arg_7_4 == "W" or arg_7_4 == "warrior" then
		var_7_6 = math.max(var_7_3, arg_7_3 / var_7_0)
	elseif arg_7_4 == "S" or arg_7_4 == "lancer" then
		var_7_7 = math.max(var_7_4, arg_7_3 / var_7_1)
	elseif arg_7_4 == "A" or arg_7_4 == "archer" then
		var_7_8 = math.max(var_7_5, arg_7_3 / var_7_2)
	end

	return var_7_6, var_7_7, var_7_8
end

function var_0_1.dps(arg_8_0, arg_8_1)
	return math.max(0, arg_8_0 or 0) * var_0_3(arg_8_1)
end

function var_0_1.norms(arg_9_0, arg_9_1, arg_9_2)
	local var_9_0 = var_0_5()
	local var_9_1 = math.max(1e-09, var_9_0.HP0)
	local var_9_2 = math.max(1e-09, var_9_0.ATK0)
	local var_9_3 = math.max(1e-09, var_9_0.ASPD0)
	local var_9_4 = math.max(0, arg_9_0 or 0) / var_9_1
	local var_9_5 = math.max(0, arg_9_1 or 0) / var_9_2
	local var_9_6 = var_0_3(arg_9_2) / var_9_3

	return var_9_4, var_9_5, var_9_6, var_9_0
end

function var_0_1.power(arg_10_0, arg_10_1, arg_10_2)
	local var_10_0, var_10_1, var_10_2, var_10_3 = var_0_1.norms(arg_10_0, arg_10_1, arg_10_2)
	local var_10_4 = 0

	if var_10_0 > 0 and var_10_1 >= 0 and var_10_2 >= 0 then
		local var_10_5 = var_10_1^(var_10_3.betaAtk or 1) * var_10_2^(var_10_3.betaASPD or 1)

		var_10_4 = var_10_0^(var_10_3.alpha or 1) * var_10_5
	end

	return 100 * var_10_4
end

local function var_0_6(arg_11_0, arg_11_1, arg_11_2, arg_11_3, arg_11_4)
	if arg_11_2 <= 0 then
		return 0
	end

	local var_11_0 = 20
	local var_11_1 = 0

	while var_11_1 < 16 and arg_11_2 > arg_11_1(arg_11_4) do
		arg_11_4 = arg_11_4 * 2
		var_11_1 = var_11_1 + 1

		if arg_11_4 > 1000000000 then
			break
		end
	end

	if arg_11_2 > arg_11_1(arg_11_4) then
		return arg_11_4
	end

	for iter_11_0 = 1, var_11_0 do
		local var_11_2 = (arg_11_3 + arg_11_4) * 0.5
		local var_11_3 = arg_11_1(var_11_2)

		if math.abs(var_11_3 - arg_11_2) <= 0.01 then
			return var_11_2
		end

		if var_11_3 < arg_11_2 then
			arg_11_3 = var_11_2
		else
			arg_11_4 = var_11_2
		end
	end

	return (arg_11_3 + arg_11_4) * 0.5
end

function var_0_1.solveDeltaHP(arg_12_0, arg_12_1, arg_12_2, arg_12_3)
	local var_12_0 = var_0_1.power(arg_12_0, arg_12_1, arg_12_2)
	local var_12_1 = type(var_12_0) == "table" and var_12_0[1] or var_12_0

	local function var_12_2(arg_13_0)
		local var_13_0 = var_0_1.power(arg_12_0 + math.max(0, arg_13_0), arg_12_1, arg_12_2)
		local var_13_1 = type(var_13_0) == "table" and var_13_0[1] or var_13_0

		return math.max(0, var_13_1 - var_12_1)
	end

	local var_12_3 = var_0_5()
	local var_12_4 = math.max(1, (var_12_3.HP0 or 70) * 2)

	return var_0_6(var_12_1, var_12_2, arg_12_3, 0, var_12_4)
end

function var_0_1.solveDeltaATK(arg_14_0, arg_14_1, arg_14_2, arg_14_3)
	local var_14_0 = var_0_1.power(arg_14_0, arg_14_1, arg_14_2)
	local var_14_1 = type(var_14_0) == "table" and var_14_0[1] or var_14_0

	local function var_14_2(arg_15_0)
		local var_15_0 = var_0_1.power(arg_14_0, arg_14_1 + math.max(0, arg_15_0), arg_14_2)
		local var_15_1 = type(var_15_0) == "table" and var_15_0[1] or var_15_0

		return math.max(0, var_15_1 - var_14_1)
	end

	local var_14_3 = var_0_5()
	local var_14_4 = math.max(1, (var_14_3.ATK0 or 9) * 2)

	return var_0_6(var_14_1, var_14_2, arg_14_3, 0, var_14_4)
end

function var_0_1.solveDeltaASPD(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
	local var_16_0 = math.max(0, arg_16_3 or 0)

	if var_16_0 <= 0 then
		return 0
	end

	local var_16_1 = math.max(0, arg_16_0 or 0)
	local var_16_2 = math.max(0, arg_16_1 or 0)

	if var_16_1 <= 0 or var_16_2 <= 0 then
		return 0
	end

	local var_16_3 = var_0_1.power(arg_16_0, arg_16_1, arg_16_2)
	local var_16_4 = type(var_16_3) == "table" and var_16_3[1] or var_16_3
	local var_16_5 = var_0_0 and var_0_0.evolution or {}
	local var_16_6 = var_16_5 and var_16_5.aspdGrowth or {}
	local var_16_7 = var_16_6.internalScale or 1

	if var_16_7 <= 0 then
		var_16_7 = 1
	end

	local function var_16_8(arg_17_0)
		local var_17_0 = var_0_1.power(arg_16_0, arg_16_1, arg_16_2 + math.max(0, arg_17_0))
		local var_17_1 = type(var_17_0) == "table" and var_17_0[1] or var_17_0

		return math.max(0, var_17_1 - var_16_4)
	end

	local var_16_9 = var_0_5()
	local var_16_10 = math.max(0.25, (var_16_9.ASPD0 or 1.5) * 2)
	local var_16_11 = var_0_6(var_16_4, var_16_8, var_16_0, 0, var_16_10)
	local var_16_12 = var_16_6.maxDeltaPerAbsorb or var_16_6.maxSolveDelta or 1.2
	local var_16_13 = var_16_6.maxDeltaRel or 0
	local var_16_14 = 0

	if var_16_13 and var_16_13 > 0 then
		var_16_14 = var_16_13 * math.max(0.05, arg_16_2 or 0)
	end

	local var_16_15 = var_16_12

	if var_16_14 > 0 then
		var_16_15 = math.min(var_16_12, var_16_14)
	end

	local var_16_16 = math.max(1e-06, var_16_15)

	return var_16_16 * math.tanh(var_16_11 / var_16_16) / var_16_7
end

return var_0_1
