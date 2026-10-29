local var_0_0 = {}
local var_0_1 = require("src.data.constants")
local var_0_2 = {
	"W",
	"A",
	"S",
	"M",
	"H",
	"D"
}
local var_0_3 = {
	Joker = true,
	J = true
}
local var_0_4

local function var_0_5()
	return {
		nudgeWins = 0,
		automaticCoreWins = 0,
		naturalWins = 0,
		totalEligibleSpins = 0,
		totalPaidSpins = 0,
		probabilityMiss = 0,
		noCandidate = 0,
		longTermCorrections = 0,
		wave3Corrections = 0,
		wave2Corrections = 0,
		correctionWins = 0
	}
end

function var_0_0.reset()
	var_0_4 = {
		paidLossStreak = 0,
		totalEligibleSpins = 0,
		totalCorrections = 0,
		permanentUnitsEarnedThisRun = 0,
		earlyCorrectionUsedThisWave = false,
		luckDebt = 0,
		telemetry = var_0_5()
	}

	return var_0_4
end

var_0_0.reset()

local function var_0_6()
	return var_0_1 and var_0_1.hiddenLuck or {}
end

local function var_0_7(arg_4_0, arg_4_1, arg_4_2)
	return math.max(arg_4_1, math.min(arg_4_2, arg_4_0))
end

local function var_0_8(arg_5_0)
	local var_5_0 = {}

	for iter_5_0 = 1, #arg_5_0 do
		var_5_0[iter_5_0] = {}

		for iter_5_1 = 1, #(arg_5_0[iter_5_0] or {}) do
			var_5_0[iter_5_0][iter_5_1] = arg_5_0[iter_5_0][iter_5_1]
		end
	end

	return var_5_0
end

local function var_0_9(arg_6_0)
	local var_6_0 = {}

	for iter_6_0 = 1, #arg_6_0 do
		for iter_6_1 = 1, #(arg_6_0[iter_6_0] or {}) do
			var_6_0[#var_6_0 + 1] = tostring(arg_6_0[iter_6_0][iter_6_1])
		end
	end

	return table.concat(var_6_0, "\x1F")
end

local function var_0_10(arg_7_0)
	local var_7_0 = {}

	for iter_7_0 = 1, #arg_7_0 do
		var_7_0[iter_7_0] = table.concat(arg_7_0[iter_7_0], ",")
	end

	return table.concat(var_7_0, "/")
end

local function var_0_11(arg_8_0)
	if arg_8_0 <= 3 then
		return "horizontal"
	end

	if arg_8_0 <= 5 then
		return "diagonal"
	end

	return "vertical"
end

function var_0_0.getState()
	return var_0_4
end

function var_0_0.onWaveStart()
	var_0_4.earlyCorrectionUsedThisWave = false
end

function var_0_0.resetDebtAfterWave1Guarantee()
	var_0_4.paidLossStreak = 0
	var_0_4.luckDebt = 0
end

function var_0_0.recordPermanentUnits(arg_12_0)
	local var_12_0 = math.max(0, math.floor(tonumber(arg_12_0 or 0) or 0))

	var_0_4.permanentUnitsEarnedThisRun = var_0_4.permanentUnitsEarnedThisRun + var_12_0
end

function var_0_0.beginPaidSpin(arg_13_0, arg_13_1)
	var_0_4.telemetry.totalPaidSpins = var_0_4.telemetry.totalPaidSpins + 1

	local var_13_0 = {
		finalized = false,
		eligible = arg_13_0 == true,
		waveId = math.max(1, math.floor(tonumber(arg_13_1 or 1) or 1)),
		prospectiveLossStreak = var_0_4.paidLossStreak + 1,
		prospectiveLuckDebt = var_0_4.luckDebt + (tonumber(var_0_6().naturalWinProbability) or 0.2274)
	}

	if var_13_0.eligible then
		var_0_4.totalEligibleSpins = var_0_4.totalEligibleSpins + 1
		var_0_4.telemetry.totalEligibleSpins = var_0_4.telemetry.totalEligibleSpins + 1
	end

	return var_13_0
end

function var_0_0.getCorrectionChance(arg_14_0)
	if not arg_14_0 or not arg_14_0.eligible then
		return 0, nil
	end

	local var_14_0 = arg_14_0.waveId
	local var_14_1 = arg_14_0.prospectiveLossStreak
	local var_14_2 = var_0_6()
	local var_14_3 = var_14_2.early and var_14_2.early[var_14_0]

	if var_14_3 then
		if var_0_4.earlyCorrectionUsedThisWave then
			return 0, nil
		end

		if var_0_4.permanentUnitsEarnedThisRun > (tonumber(var_14_3.maxPermanentUnits) or -1) then
			return 0, nil
		end

		local var_14_4 = var_14_0 == 2 and 5 or 6
		local var_14_5 = var_14_3.chances and (var_14_3.chances[var_14_1] or var_14_4 <= var_14_1 and var_14_3.chances[var_14_4]) or 0

		return tonumber(var_14_5 or 0) or 0, "wave" .. tostring(var_14_0)
	end

	if var_14_0 >= 4 then
		if arg_14_0.prospectiveLuckDebt < (tonumber(var_14_2.debtRequired) or 1.25) then
			return 0, nil
		end

		local var_14_6 = var_14_2.longTermChances and (var_14_2.longTermChances[var_14_1] or var_14_1 >= 11 and var_14_2.longTermChances[11]) or 0

		return tonumber(var_14_6 or 0) or 0, "longTerm"
	end

	return 0, nil
end

function var_0_0.collectSingleCellCorrectionCandidates(arg_15_0, arg_15_1, arg_15_2, arg_15_3)
	local var_15_0 = {}
	local var_15_1 = {}

	if not arg_15_0 or not arg_15_1 or not arg_15_2 then
		return var_15_0
	end

	local var_15_2 = arg_15_2(arg_15_0)

	if var_15_2 and #var_15_2 > 0 then
		return var_15_0
	end

	for iter_15_0, iter_15_1 in ipairs(arg_15_1) do
		local var_15_3 = {}
		local var_15_4 = false

		for iter_15_2, iter_15_3 in ipairs(iter_15_1) do
			local var_15_5 = arg_15_0[iter_15_3[1]] and arg_15_0[iter_15_3[1]][iter_15_3[2]]

			if var_0_3[var_15_5] then
				var_15_4 = true
			end

			var_15_3[var_15_5] = (var_15_3[var_15_5] or 0) + 1
		end

		if not var_15_4 then
			for iter_15_4, iter_15_5 in pairs(var_15_3) do
				if iter_15_5 == 2 and not var_0_3[iter_15_4] and iter_15_4 ~= "Blank" then
					for iter_15_6, iter_15_7 in ipairs(iter_15_1) do
						local var_15_6 = iter_15_7[1]
						local var_15_7 = iter_15_7[2]
						local var_15_8 = arg_15_0[var_15_6] and arg_15_0[var_15_6][var_15_7]
						local var_15_9 = arg_15_3 and arg_15_3[tostring(var_15_6) .. ":" .. tostring(var_15_7)]

						if var_15_8 ~= iter_15_4 and var_15_8 ~= "Blank" and not var_0_3[var_15_8] and not var_15_9 then
							local var_15_10 = var_0_8(arg_15_0)

							var_15_10[var_15_6][var_15_7] = iter_15_4

							local var_15_11, var_15_12 = arg_15_2(var_15_10)

							if var_15_11 and #var_15_11 == 1 then
								local var_15_13 = var_0_9(var_15_10)

								if not var_15_1[var_15_13] then
									var_15_1[var_15_13] = true
									var_15_0[#var_15_0 + 1] = {
										row = var_15_6,
										col = var_15_7,
										from = var_15_8,
										symbol = iter_15_4,
										lineId = var_15_11[1],
										lineKind = var_0_11(var_15_11[1]),
										grid = var_15_10,
										winSymbol = var_15_12 or iter_15_4
									}
								end
							end
						end
					end
				end
			end
		end
	end

	return var_15_0
end

function var_0_0.chooseWeightedCorrectionCandidate(arg_16_0, arg_16_1)
	if not arg_16_0 or #arg_16_0 == 0 then
		return nil
	end

	arg_16_1 = arg_16_1 or math.random

	local var_16_0 = var_0_1 and var_0_1.slot and var_0_1.slot.symbolWeights or {}
	local var_16_1 = 0
	local var_16_2 = {}
	local var_16_3 = 0

	for iter_16_0, iter_16_1 in ipairs(var_0_2) do
		var_16_3 = var_16_3 + math.max(0, tonumber(var_16_0[iter_16_1] or 0) or 0)
	end

	for iter_16_2, iter_16_3 in ipairs(arg_16_0) do
		local var_16_4 = var_16_3 > 0 and math.max(0, tonumber(var_16_0[iter_16_3.symbol] or 0) or 0) / var_16_3 or 0
		local var_16_5 = var_16_4 > 0 and var_16_4 < 1 and var_16_4 / (1 - var_16_4) or 0

		var_16_2[iter_16_2] = var_16_5
		var_16_1 = var_16_1 + var_16_5
	end

	if var_16_1 <= 0 then
		return arg_16_0[math.max(1, math.floor(arg_16_1() * #arg_16_0) + 1)]
	end

	local var_16_6 = arg_16_1() * var_16_1

	for iter_16_4, iter_16_5 in ipairs(arg_16_0) do
		if var_16_6 < var_16_2[iter_16_4] then
			return iter_16_5
		end

		var_16_6 = var_16_6 - var_16_2[iter_16_4]
	end

	return arg_16_0[#arg_16_0]
end

function var_0_0.tryCorrection(arg_17_0)
	local var_17_0 = arg_17_0 and arg_17_0.context
	local var_17_1, var_17_2 = var_0_0.getCorrectionChance(var_17_0)

	if var_17_1 <= 0 then
		return nil
	end

	local var_17_3 = arg_17_0 and arg_17_0.random or math.random

	if var_17_1 <= var_17_3() then
		var_0_4.telemetry.probabilityMiss = var_0_4.telemetry.probabilityMiss + 1

		return nil
	end

	local var_17_4 = var_0_8(arg_17_0.grid)
	local var_17_5 = var_0_0.collectSingleCellCorrectionCandidates(arg_17_0.grid, arg_17_0.lines, arg_17_0.evaluate, arg_17_0.protectedCells)
	local var_17_6 = var_0_0.chooseWeightedCorrectionCandidate(var_17_5, var_17_3)

	if not var_17_6 then
		var_0_4.telemetry.noCandidate = var_0_4.telemetry.noCandidate + 1

		return nil
	end

	for iter_17_0 = 1, #var_17_6.grid do
		for iter_17_1 = 1, #var_17_6.grid[iter_17_0] do
			arg_17_0.grid[iter_17_0][iter_17_1] = var_17_6.grid[iter_17_0][iter_17_1]
		end
	end

	if var_17_2 == "wave2" or var_17_2 == "wave3" then
		var_0_4.earlyCorrectionUsedThisWave = true
	end

	var_0_4.totalCorrections = var_0_4.totalCorrections + 1
	var_0_4.telemetry.correctionWins = var_0_4.telemetry.correctionWins + 1

	if var_17_2 == "wave2" then
		var_0_4.telemetry.wave2Corrections = var_0_4.telemetry.wave2Corrections + 1
	elseif var_17_2 == "wave3" then
		var_0_4.telemetry.wave3Corrections = var_0_4.telemetry.wave3Corrections + 1
	else
		var_0_4.telemetry.longTermCorrections = var_0_4.telemetry.longTermCorrections + 1
	end

	var_0_4.telemetry.lastCorrection = {
		lossStreak = var_17_0.prospectiveLossStreak,
		luckDebt = var_17_0.prospectiveLuckDebt,
		symbol = var_17_6.symbol,
		lineId = var_17_6.lineId,
		lineKind = var_17_6.lineKind,
		beforeGrid = var_0_10(var_17_4),
		afterGrid = var_0_10(var_17_6.grid),
		correctionType = var_17_2
	}

	if var_0_6().debugLogs then
		print(("[hidden-luck] %s streak=%d debt=%.4f symbol=%s line=%d before=%s after=%s"):format(var_17_2, var_17_0.prospectiveLossStreak, var_17_0.prospectiveLuckDebt, var_17_6.symbol, var_17_6.lineId, var_0_4.telemetry.lastCorrection.beforeGrid, var_0_4.telemetry.lastCorrection.afterGrid))
	end

	return var_17_6
end

function var_0_0.finalizePaidSpinOutcome(arg_18_0, arg_18_1, arg_18_2)
	if not arg_18_0 or arg_18_0.finalized then
		return false
	end

	arg_18_0.finalized = true

	if arg_18_0.eligible then
		local var_18_0 = var_0_6()
		local var_18_1 = tonumber(var_18_0.naturalWinProbability) or 0.2274
		local var_18_2 = tonumber(var_18_0.debtMin) or -3
		local var_18_3 = tonumber(var_18_0.debtMax) or 3

		if arg_18_1 then
			var_0_4.paidLossStreak = 0
			var_0_4.luckDebt = var_0_7(var_0_4.luckDebt - (1 - var_18_1), var_18_2, var_18_3)
		else
			var_0_4.paidLossStreak = var_0_4.paidLossStreak + 1
			var_0_4.luckDebt = var_0_7(var_0_4.luckDebt + var_18_1, var_18_2, var_18_3)
		end
	end

	if arg_18_1 then
		if arg_18_2 == "nudge" then
			var_0_4.telemetry.nudgeWins = var_0_4.telemetry.nudgeWins + 1
		elseif arg_18_2 == "core" then
			var_0_4.telemetry.automaticCoreWins = var_0_4.telemetry.automaticCoreWins + 1
		elseif arg_18_2 == "natural" then
			var_0_4.telemetry.naturalWins = var_0_4.telemetry.naturalWins + 1
		end
	end

	return true
end

return var_0_0
