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

local function var_0_6()
	local var_11_0 = var_0_0 and var_0_0.power or {}
	local var_11_1 = var_11_0 and var_11_0.skill or {}

	return {
		encounterHorizon = math.max(1, tonumber(var_11_1.encounterHorizon) or 12),
		expectedSecondaryTargetRate = math.max(0, math.min(1, tonumber(var_11_1.expectedSecondaryTargetRate) or 0.45)),
		utilityWeight = math.max(0, tonumber(var_11_1.utilityWeight) or 0.75),
		maxUtilityRatio = math.max(0, tonumber(var_11_1.maxUtilityRatio) or 0.45)
	}
end

local function var_0_7(arg_12_0, arg_12_1, arg_12_2, arg_12_3)
	if type(arg_12_1) ~= "table" then
		return arg_12_3
	end

	local var_12_0 = arg_12_1[arg_12_2 .. "Field"]

	if var_12_0 and arg_12_0 then
		local var_12_1 = tonumber(arg_12_0[var_12_0])

		if var_12_1 ~= nil then
			return var_12_1
		end
	end

	local var_12_2 = tonumber(arg_12_1[arg_12_2])

	if var_12_2 ~= nil then
		return var_12_2
	end

	return arg_12_3
end

local function var_0_8(arg_13_0)
	if type(arg_13_0) ~= "table" then
		return {}
	end

	if arg_13_0[1] ~= nil then
		return arg_13_0
	end

	return {
		arg_13_0
	}
end

function var_0_1.combatPower(arg_14_0, arg_14_1)
	arg_14_0 = arg_14_0 or {}
	arg_14_1 = arg_14_1 or {}

	local var_14_0 = var_0_6()
	local var_14_1 = arg_14_0.powerProfile or arg_14_1.powerProfile or {}

	if type(var_14_1) ~= "table" then
		var_14_1 = {}
	end

	local var_14_2 = math.max(0, tonumber(arg_14_1.hp or arg_14_0.maxhp or arg_14_0.hp or 0) or 0)
	local var_14_3 = math.max(0, tonumber(arg_14_1.atk or arg_14_0.dmg or arg_14_0.atk or 0) or 0)
	local var_14_4 = tonumber(arg_14_1.aspd)

	if var_14_4 == nil then
		local var_14_5 = tonumber(arg_14_0.atkPeriod)
		local var_14_6 = tonumber(arg_14_0.atkTicks)

		if var_14_5 and var_14_5 > 0 then
			var_14_4 = 1 / var_14_5
		elseif var_14_6 and var_14_6 > 0 then
			var_14_4 = 60 / var_14_6
		else
			var_14_4 = 0
		end
	end

	local var_14_7 = math.max(0, var_14_4 or 0)
	local var_14_8 = var_0_1.power(var_14_2, var_14_3, var_14_7)
	local var_14_9 = var_14_3 * var_14_7
	local var_14_10 = 0

	for iter_14_0, iter_14_1 in ipairs(var_0_8(var_14_1.periodicAttacks)) do
		local var_14_11 = var_0_7(arg_14_0, iter_14_1, "directMul", var_0_7(arg_14_0, iter_14_1, "damageMul", 0))
		local var_14_12 = var_0_7(arg_14_0, iter_14_1, "splashMul", 0)
		local var_14_13 = math.max(0, var_0_7(arg_14_0, iter_14_1, "splashTargets", var_0_7(arg_14_0, iter_14_1, "maxTargets", 0)))
		local var_14_14 = math.max(0, math.min(1, var_0_7(arg_14_0, iter_14_1, "expectedSecondaryTargetRate", var_14_0.expectedSecondaryTargetRate)))
		local var_14_15 = var_0_7(arg_14_0, iter_14_1, "dotMul", 0)
		local var_14_16 = math.max(0, var_0_7(arg_14_0, iter_14_1, "ticks", 0))
		local var_14_17 = var_14_3 * math.max(0, var_14_11 + var_14_12 * var_14_13 * var_14_14 + var_14_15 * var_14_16)
		local var_14_18 = 0

		if iter_14_1.replacesBasic ~= false then
			var_14_18 = var_14_3 * math.max(0, var_0_7(arg_14_0, iter_14_1, "replacedBasicMul", 1))
		end

		local var_14_19 = math.max(0, var_14_17 - var_14_18)
		local var_14_20 = var_0_7(arg_14_0, iter_14_1, "uses", nil)

		if var_14_20 ~= nil then
			local var_14_21 = math.max(0.1, var_0_7(arg_14_0, iter_14_1, "horizon", var_14_0.encounterHorizon))

			var_14_10 = var_14_10 + var_14_19 * math.max(0, var_14_20) / var_14_21
		else
			var_14_10 = var_14_10 + var_14_19 / math.max(0.1, var_0_7(arg_14_0, iter_14_1, "cooldown", var_14_0.encounterHorizon))
		end
	end

	local var_14_22 = 0

	if var_14_9 > 0 then
		var_14_22 = math.max(0, var_14_10 / var_14_9)
	end

	local var_14_23, var_14_24, var_14_25, var_14_26 = var_0_1.norms(var_14_2, var_14_3, var_14_7)
	local var_14_27 = (1 + var_14_22)^(var_14_26.betaAtk or 0.7)
	local var_14_28 = 1
	local var_14_29 = 0

	for iter_14_2, iter_14_3 in ipairs(var_0_8(var_14_1.defenses)) do
		local var_14_30 = iter_14_3.kind

		if var_14_30 == "heal" then
			local var_14_31 = math.max(0, var_0_7(arg_14_0, iter_14_3, "maxHpFrac", 0))
			local var_14_32 = math.max(0, var_0_7(arg_14_0, iter_14_3, "uses", 1))
			local var_14_33 = math.max(0, math.min(1, var_0_7(arg_14_0, iter_14_3, "activationRate", 1)))

			var_14_28 = var_14_28 + var_14_31 * var_14_32 * var_14_33
		elseif var_14_30 == "dodge" or var_14_30 == "damageReduction" then
			local var_14_34 = math.max(0, math.min(0.95, var_0_7(arg_14_0, iter_14_3, "chance", var_0_7(arg_14_0, iter_14_3, "reduction", 0))))
			local var_14_35 = math.max(0, var_0_7(arg_14_0, iter_14_3, "duration", 0))
			local var_14_36 = var_0_7(arg_14_0, iter_14_3, "interval", nil)
			local var_14_37

			if var_14_36 and var_14_36 > 0 then
				var_14_37 = math.min(1, var_14_35 / var_14_36)
			else
				local var_14_38 = math.max(0.1, var_0_7(arg_14_0, iter_14_3, "horizon", var_14_0.encounterHorizon))

				var_14_37 = math.min(1, var_14_35 / var_14_38)
			end

			var_14_29 = 1 - (1 - var_14_29) * (1 - var_14_34 * var_14_37)
		elseif var_14_30 == "block" then
			local var_14_39 = math.max(0, var_0_7(arg_14_0, iter_14_3, "charges", 0))
			local var_14_40 = math.max(0, math.min(0.95, var_0_7(arg_14_0, iter_14_3, "reduction", 0)))
			local var_14_41 = math.max(0, var_0_7(arg_14_0, iter_14_3, "expectedHitFrac", 0.08))

			var_14_28 = var_14_28 + var_14_39 * var_14_40 * var_14_41
		end
	end

	if var_14_29 > 0 then
		var_14_28 = var_14_28 / math.max(0.05, 1 - var_14_29)
	end

	local var_14_42 = var_14_28^(var_14_26.alpha or 0.6)
	local var_14_43 = 0

	for iter_14_4, iter_14_5 in ipairs(var_0_8(var_14_1.summons)) do
		local var_14_44 = math.max(0, var_0_7(arg_14_0, iter_14_5, "count", var_0_7(arg_14_0, iter_14_5, "maxAlive", 0)))
		local var_14_45 = math.max(0, var_0_7(arg_14_0, iter_14_5, "unitPower", 0))
		local var_14_46 = math.max(0, math.min(1, var_0_7(arg_14_0, iter_14_5, "availability", 1)))
		local var_14_47 = math.max(0, var_0_7(arg_14_0, iter_14_5, "replacementFactor", 0))

		var_14_43 = var_14_43 + var_14_44 * var_14_45 * var_14_46 * (1 + var_14_47)
	end

	local var_14_48 = math.max(0, tonumber(var_14_1.objectivePower) or 0)
	local var_14_49 = math.max(0, tonumber(var_14_1.targetPriorityRatio) or 0) + math.max(0, tonumber(var_14_1.utilityRatio) or 0)

	for iter_14_6, iter_14_7 in ipairs(var_0_8(var_14_1.controlEffects)) do
		local var_14_50 = math.max(0, var_0_7(arg_14_0, iter_14_7, "severity", 0))
		local var_14_51 = math.max(0, var_0_7(arg_14_0, iter_14_7, "duration", 0))
		local var_14_52 = var_0_7(arg_14_0, iter_14_7, "interval", nil)

		if iter_14_7.perBasic == true then
			var_14_52 = var_14_7 > 0 and 1 / var_14_7 or var_14_0.encounterHorizon
		end

		local var_14_53 = math.max(0.1, var_14_52 or var_14_0.encounterHorizon)
		local var_14_54 = math.min(1, var_14_51 / var_14_53)
		local var_14_55 = math.max(0, var_0_7(arg_14_0, iter_14_7, "directTargets", 1)) + math.max(0, var_0_7(arg_14_0, iter_14_7, "secondaryTargets", 0)) * math.max(0, math.min(1, var_0_7(arg_14_0, iter_14_7, "expectedSecondaryTargetRate", var_14_0.expectedSecondaryTargetRate)))
		local var_14_56 = math.max(0, var_0_7(arg_14_0, iter_14_7, "allyWeight", 1))

		var_14_49 = var_14_49 + var_14_0.utilityWeight * var_14_50 * var_14_54 * var_14_55 * var_14_56
	end

	local var_14_57 = math.min(var_14_0.maxUtilityRatio, var_14_49)
	local var_14_58 = (var_14_8 * var_14_27 * var_14_42 + var_14_43 + var_14_48) * (1 + var_14_57) * math.max(0, tonumber(var_14_1.deliveryMultiplier) or 1)
	local var_14_59 = {
		statPower = var_14_8,
		calculatedPower = var_14_58,
		bonusDps = var_14_10,
		offenseRatio = var_14_22,
		offenseMultiplier = var_14_27,
		effectiveHpMultiplier = var_14_28,
		defenseMultiplier = var_14_42,
		summonPower = var_14_43,
		objectivePower = var_14_48,
		utilityRatio = var_14_57
	}
	local var_14_60 = tonumber(arg_14_0.fixedPower)

	if var_14_60 ~= nil then
		var_14_59.authoredBasePower = var_14_60

		if arg_14_0.fixedPowerIncludesSkills == true then
			var_14_59.skillContribution = math.max(0, var_14_58 - var_14_8)
			var_14_59.calibratedPower = var_14_60
			var_14_59.fixedPowerIncludesSkills = true

			return var_14_60, var_14_8, var_14_59
		end

		if next(var_14_1) ~= nil then
			local var_14_61 = math.max(0, var_14_58 - var_14_8)
			local var_14_62 = var_14_60 + var_14_61

			var_14_59.skillContribution = var_14_61
			var_14_59.calibratedPower = var_14_62

			return var_14_62, var_14_8, var_14_59
		end

		return var_14_60, var_14_8, var_14_59
	end

	return var_14_58, var_14_8, var_14_59
end

local function var_0_9(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4)
	if arg_15_2 <= 0 then
		return 0
	end

	local var_15_0 = 20
	local var_15_1 = 0

	while var_15_1 < 16 and arg_15_2 > arg_15_1(arg_15_4) do
		arg_15_4 = arg_15_4 * 2
		var_15_1 = var_15_1 + 1

		if arg_15_4 > 1000000000 then
			break
		end
	end

	if arg_15_2 > arg_15_1(arg_15_4) then
		return arg_15_4
	end

	for iter_15_0 = 1, var_15_0 do
		local var_15_2 = (arg_15_3 + arg_15_4) * 0.5
		local var_15_3 = arg_15_1(var_15_2)

		if math.abs(var_15_3 - arg_15_2) <= 0.01 then
			return var_15_2
		end

		if var_15_3 < arg_15_2 then
			arg_15_3 = var_15_2
		else
			arg_15_4 = var_15_2
		end
	end

	return (arg_15_3 + arg_15_4) * 0.5
end

function var_0_1.solveDeltaHP(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
	local var_16_0 = var_0_1.power(arg_16_0, arg_16_1, arg_16_2)
	local var_16_1 = type(var_16_0) == "table" and var_16_0[1] or var_16_0

	local function var_16_2(arg_17_0)
		local var_17_0 = var_0_1.power(arg_16_0 + math.max(0, arg_17_0), arg_16_1, arg_16_2)
		local var_17_1 = type(var_17_0) == "table" and var_17_0[1] or var_17_0

		return math.max(0, var_17_1 - var_16_1)
	end

	local var_16_3 = var_0_5()
	local var_16_4 = math.max(1, (var_16_3.HP0 or 70) * 2)

	return var_0_9(var_16_1, var_16_2, arg_16_3, 0, var_16_4)
end

function var_0_1.solveDeltaATK(arg_18_0, arg_18_1, arg_18_2, arg_18_3)
	local var_18_0 = var_0_1.power(arg_18_0, arg_18_1, arg_18_2)
	local var_18_1 = type(var_18_0) == "table" and var_18_0[1] or var_18_0

	local function var_18_2(arg_19_0)
		local var_19_0 = var_0_1.power(arg_18_0, arg_18_1 + math.max(0, arg_19_0), arg_18_2)
		local var_19_1 = type(var_19_0) == "table" and var_19_0[1] or var_19_0

		return math.max(0, var_19_1 - var_18_1)
	end

	local var_18_3 = var_0_5()
	local var_18_4 = math.max(1, (var_18_3.ATK0 or 9) * 2)

	return var_0_9(var_18_1, var_18_2, arg_18_3, 0, var_18_4)
end

function var_0_1.solveDeltaASPD(arg_20_0, arg_20_1, arg_20_2, arg_20_3)
	local var_20_0 = math.max(0, arg_20_3 or 0)

	if var_20_0 <= 0 then
		return 0
	end

	local var_20_1 = math.max(0, arg_20_0 or 0)
	local var_20_2 = math.max(0, arg_20_1 or 0)

	if var_20_1 <= 0 or var_20_2 <= 0 then
		return 0
	end

	local var_20_3 = var_0_1.power(arg_20_0, arg_20_1, arg_20_2)
	local var_20_4 = type(var_20_3) == "table" and var_20_3[1] or var_20_3
	local var_20_5 = var_0_0 and var_0_0.evolution or {}
	local var_20_6 = var_20_5 and var_20_5.aspdGrowth or {}
	local var_20_7 = var_20_6.internalScale or 1

	if var_20_7 <= 0 then
		var_20_7 = 1
	end

	local function var_20_8(arg_21_0)
		local var_21_0 = var_0_1.power(arg_20_0, arg_20_1, arg_20_2 + math.max(0, arg_21_0))
		local var_21_1 = type(var_21_0) == "table" and var_21_0[1] or var_21_0

		return math.max(0, var_21_1 - var_20_4)
	end

	local var_20_9 = var_0_5()
	local var_20_10 = math.max(0.25, (var_20_9.ASPD0 or 1.5) * 2)
	local var_20_11 = var_0_9(var_20_4, var_20_8, var_20_0, 0, var_20_10)
	local var_20_12 = var_20_6.maxDeltaPerAbsorb or var_20_6.maxSolveDelta or 1.2
	local var_20_13 = var_20_6.maxDeltaRel or 0
	local var_20_14 = 0

	if var_20_13 and var_20_13 > 0 then
		var_20_14 = var_20_13 * math.max(0.05, arg_20_2 or 0)
	end

	local var_20_15 = var_20_12

	if var_20_14 > 0 then
		var_20_15 = math.min(var_20_12, var_20_14)
	end

	local var_20_16 = math.max(1e-06, var_20_15)

	return var_20_16 * math.tanh(var_20_11 / var_20_16) / var_20_7
end

return var_0_1
