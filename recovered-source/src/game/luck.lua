local var_0_0
local var_0_1 = {}
local var_0_2 = require("src.data.constants")
local var_0_3 = {
	"W",
	"A",
	"S",
	"M",
	"H",
	"D"
}
local var_0_4 = {
	J = true,
	Joker = true
}
local var_0_5

local function var_0_6()
	return {
		probabilityMiss = 0,
		noCandidate = 0,
		longTermCorrections = 0,
		wave3Corrections = 0,
		wave2Corrections = 0,
		correctionWins = 0,
		nudgeWins = 0,
		automaticCoreWins = 0,
		naturalWins = 0,
		totalEligibleSpins = 0,
		totalPaidSpins = 0
	}
end

function var_0_1.reset()
	var_0_5 = {
		earlyCorrectionUsedThisWave = false,
		luckDebt = 0,
		paidLossStreak = 0,
		totalCorrections = 0,
		totalEligibleSpins = 0,
		permanentUnitsEarnedThisRun = 0,
		telemetry = var_0_6()
	}

	return var_0_5
end

var_0_1.reset()

local function var_0_7()
	return var_0_2 and var_0_2.hiddenLuck or {}
end

local function var_0_8(arg_4_0, arg_4_1, arg_4_2)
	return math.max(arg_4_1, math.min(arg_4_2, arg_4_0))
end

local function var_0_9(arg_5_0)
	local var_5_0 = {}

	for iter_5_0 = 1, #arg_5_0 do
		var_5_0[iter_5_0] = {}

		for iter_5_1 = 1, #(arg_5_0[iter_5_0] or {}) do
			var_5_0[iter_5_0][iter_5_1] = arg_5_0[iter_5_0][iter_5_1]
		end
	end

	return var_5_0
end

local function var_0_10(arg_6_0)
	local var_6_0 = {}

	for iter_6_0 = 1, #arg_6_0 do
		for iter_6_1 = 1, #(arg_6_0[iter_6_0] or {}) do
			var_6_0[#var_6_0 + 1] = tostring(arg_6_0[iter_6_0][iter_6_1])
		end
	end

	return table.concat(var_6_0, "\x1F")
end

local function var_0_11(arg_7_0)
	local var_7_0 = {}

	for iter_7_0 = 1, #arg_7_0 do
		var_7_0[iter_7_0] = table.concat(arg_7_0[iter_7_0], ",")
	end

	return table.concat(var_7_0, "/")
end

local function var_0_12(arg_8_0)
	if arg_8_0 <= 3 then
		return "horizontal"
	end

	if arg_8_0 <= 5 then
		return "diagonal"
	end

	return "vertical"
end

function var_0_1.getState()
	return var_0_5
end

function var_0_1.importState(arg_10_0)
	var_0_1.reset()

	if type(arg_10_0) ~= "table" then
		return false
	end

	for iter_10_0, iter_10_1 in pairs(arg_10_0) do
		if type(iter_10_1) ~= "function" and type(iter_10_1) ~= "userdata" and type(iter_10_1) ~= "thread" then
			var_0_5[iter_10_0] = iter_10_1
		end
	end

	var_0_5.telemetry = type(var_0_5.telemetry) == "table" and var_0_5.telemetry or var_0_6()

	return true
end

function var_0_1.onWaveStart()
	var_0_5.earlyCorrectionUsedThisWave = false
end

function var_0_1.resetDebtAfterWave1Guarantee()
	var_0_5.paidLossStreak = 0
	var_0_5.luckDebt = 0
end

function var_0_1.recordPermanentUnits(arg_13_0)
	local var_13_0 = math.max(0, math.floor(tonumber(arg_13_0 or 0) or 0))

	var_0_5.permanentUnitsEarnedThisRun = var_0_5.permanentUnitsEarnedThisRun + var_13_0
end

function var_0_1.beginPaidSpin(arg_14_0, arg_14_1)
	var_0_5.telemetry.totalPaidSpins = var_0_5.telemetry.totalPaidSpins + 1

	local var_14_0 = {
		finalized = false,
		eligible = arg_14_0 == true,
		waveId = math.max(1, math.floor(tonumber(arg_14_1 or 1) or 1)),
		prospectiveLossStreak = var_0_5.paidLossStreak + 1,
		prospectiveLuckDebt = var_0_5.luckDebt + (tonumber(var_0_7().naturalWinProbability) or 0.2274)
	}

	if var_14_0.eligible then
		var_0_5.totalEligibleSpins = var_0_5.totalEligibleSpins + 1
		var_0_5.telemetry.totalEligibleSpins = var_0_5.telemetry.totalEligibleSpins + 1
	end

	return var_14_0
end

function var_0_1.getCorrectionChance(arg_15_0)
	if not arg_15_0 or not arg_15_0.eligible then
		return 0, nil
	end

	local var_15_0 = arg_15_0.waveId
	local var_15_1 = arg_15_0.prospectiveLossStreak
	local var_15_2 = var_0_7()
	local var_15_3 = var_15_2.early and var_15_2.early[var_15_0]

	if var_15_3 then
		if var_0_5.earlyCorrectionUsedThisWave then
			return 0, nil
		end

		if var_0_5.permanentUnitsEarnedThisRun > (tonumber(var_15_3.maxPermanentUnits) or -1) then
			return 0, nil
		end

		local var_15_4 = var_15_0 == 2 and 5 or 6
		local var_15_5 = var_15_3.chances and (var_15_3.chances[var_15_1] or var_15_4 <= var_15_1 and var_15_3.chances[var_15_4]) or 0

		return tonumber(var_15_5 or 0) or 0, "wave" .. tostring(var_15_0)
	end

	return 0, nil
end

function var_0_1.collectSingleCellCorrectionCandidates(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
	local var_16_0 = {}
	local var_16_1 = {}

	if not arg_16_0 or not arg_16_1 or not arg_16_2 then
		return var_16_0
	end

	local var_16_2 = arg_16_2(arg_16_0)

	if var_16_2 and #var_16_2 > 0 then
		return var_16_0
	end

	for iter_16_0, iter_16_1 in ipairs(arg_16_1) do
		local var_16_3 = {}
		local var_16_4 = false

		for iter_16_2, iter_16_3 in ipairs(iter_16_1) do
			local var_16_5 = arg_16_0[iter_16_3[1]] and arg_16_0[iter_16_3[1]][iter_16_3[2]]

			if var_0_4[var_16_5] then
				var_16_4 = true
			end

			var_16_3[var_16_5] = (var_16_3[var_16_5] or 0) + 1
		end

		if not var_16_4 then
			for iter_16_4, iter_16_5 in pairs(var_16_3) do
				if iter_16_5 == 2 and not var_0_4[iter_16_4] and iter_16_4 ~= "Blank" then
					for iter_16_6, iter_16_7 in ipairs(iter_16_1) do
						local var_16_6 = iter_16_7[1]
						local var_16_7 = iter_16_7[2]
						local var_16_8 = arg_16_0[var_16_6] and arg_16_0[var_16_6][var_16_7]
						local var_16_9 = arg_16_3 and arg_16_3[tostring(var_16_6) .. ":" .. tostring(var_16_7)]

						if var_16_8 ~= iter_16_4 and var_16_8 ~= "Blank" and not var_0_4[var_16_8] and not var_16_9 then
							local var_16_10 = var_0_9(arg_16_0)

							var_16_10[var_16_6][var_16_7] = iter_16_4

							local var_16_11, var_16_12 = arg_16_2(var_16_10)

							if var_16_11 and #var_16_11 == 1 then
								local var_16_13 = var_0_10(var_16_10)

								if not var_16_1[var_16_13] then
									var_16_1[var_16_13] = true
									var_16_0[#var_16_0 + 1] = {
										row = var_16_6,
										col = var_16_7,
										from = var_16_8,
										symbol = iter_16_4,
										lineId = var_16_11[1],
										lineKind = var_0_12(var_16_11[1]),
										grid = var_16_10,
										winSymbol = var_16_12 or iter_16_4
									}
								end
							end
						end
					end
				end
			end
		end
	end

	return var_16_0
end

function var_0_1.chooseWeightedCorrectionCandidate(arg_17_0, arg_17_1)
	if not arg_17_0 or #arg_17_0 == 0 then
		return nil
	end

	arg_17_1 = arg_17_1 or math.random

	local var_17_0 = var_0_2 and var_0_2.slot and var_0_2.slot.symbolWeights or {}
	local var_17_1 = 0
	local var_17_2 = {}
	local var_17_3 = 0

	for iter_17_0, iter_17_1 in ipairs(var_0_3) do
		var_17_3 = var_17_3 + math.max(0, tonumber(var_17_0[iter_17_1] or 0) or 0)
	end

	for iter_17_2, iter_17_3 in ipairs(arg_17_0) do
		local var_17_4 = var_17_3 > 0 and math.max(0, tonumber(var_17_0[iter_17_3.symbol] or 0) or 0) / var_17_3 or 0
		local var_17_5 = var_17_4 > 0 and var_17_4 < 1 and var_17_4 / (1 - var_17_4) or 0

		var_17_2[iter_17_2] = var_17_5
		var_17_1 = var_17_1 + var_17_5
	end

	if var_17_1 <= 0 then
		return arg_17_0[math.max(1, math.floor(arg_17_1() * #arg_17_0) + 1)]
	end

	local var_17_6 = arg_17_1() * var_17_1

	for iter_17_4, iter_17_5 in ipairs(arg_17_0) do
		if var_17_6 < var_17_2[iter_17_4] then
			return iter_17_5
		end

		var_17_6 = var_17_6 - var_17_2[iter_17_4]
	end

	return arg_17_0[#arg_17_0]
end

function var_0_1.tryCorrection(arg_18_0)
	local var_18_0 = arg_18_0 and arg_18_0.context
	local var_18_1, var_18_2 = var_0_1.getCorrectionChance(var_18_0)

	if var_18_1 <= 0 then
		return nil
	end

	local var_18_3 = arg_18_0 and arg_18_0.random or math.random

	if var_18_1 <= var_18_3() then
		var_0_5.telemetry.probabilityMiss = var_0_5.telemetry.probabilityMiss + 1

		return nil
	end

	local var_18_4 = var_0_9(arg_18_0.grid)
	local var_18_5 = var_0_1.collectSingleCellCorrectionCandidates(arg_18_0.grid, arg_18_0.lines, arg_18_0.evaluate, arg_18_0.protectedCells)
	local var_18_6 = var_0_1.chooseWeightedCorrectionCandidate(var_18_5, var_18_3)

	if not var_18_6 then
		var_0_5.telemetry.noCandidate = var_0_5.telemetry.noCandidate + 1

		return nil
	end

	for iter_18_0 = 1, #var_18_6.grid do
		for iter_18_1 = 1, #var_18_6.grid[iter_18_0] do
			arg_18_0.grid[iter_18_0][iter_18_1] = var_18_6.grid[iter_18_0][iter_18_1]
		end
	end

	if var_18_2 == "wave2" or var_18_2 == "wave3" then
		var_0_5.earlyCorrectionUsedThisWave = true
	end

	var_0_5.totalCorrections = var_0_5.totalCorrections + 1
	var_0_5.telemetry.correctionWins = var_0_5.telemetry.correctionWins + 1

	if var_18_2 == "wave2" then
		var_0_5.telemetry.wave2Corrections = var_0_5.telemetry.wave2Corrections + 1
	elseif var_18_2 == "wave3" then
		var_0_5.telemetry.wave3Corrections = var_0_5.telemetry.wave3Corrections + 1
	else
		var_0_5.telemetry.longTermCorrections = var_0_5.telemetry.longTermCorrections + 1
	end

	var_0_5.telemetry.lastCorrection = {
		lossStreak = var_18_0.prospectiveLossStreak,
		luckDebt = var_18_0.prospectiveLuckDebt,
		symbol = var_18_6.symbol,
		lineId = var_18_6.lineId,
		lineKind = var_18_6.lineKind,
		beforeGrid = var_0_11(var_18_4),
		afterGrid = var_0_11(var_18_6.grid),
		correctionType = var_18_2
	}

	if var_0_7().debugLogs then
		print(("[hidden-luck] %s streak=%d debt=%.4f symbol=%s line=%d before=%s after=%s"):format(var_18_2, var_18_0.prospectiveLossStreak, var_18_0.prospectiveLuckDebt, var_18_6.symbol, var_18_6.lineId, var_0_5.telemetry.lastCorrection.beforeGrid, var_0_5.telemetry.lastCorrection.afterGrid))
	end

	return var_18_6
end

function var_0_1.finalizePaidSpinOutcome(arg_19_0, arg_19_1, arg_19_2)
	if not arg_19_0 or arg_19_0.finalized then
		return false
	end

	arg_19_0.finalized = true

	if arg_19_0.eligible then
		local var_19_0 = var_0_7()
		local var_19_1 = tonumber(var_19_0.naturalWinProbability) or 0.2274
		local var_19_2 = tonumber(var_19_0.debtMin) or -3
		local var_19_3 = tonumber(var_19_0.debtMax) or 3

		if arg_19_1 then
			var_0_5.paidLossStreak = 0
			var_0_5.luckDebt = var_0_8(var_0_5.luckDebt - (1 - var_19_1), var_19_2, var_19_3)
		else
			var_0_5.paidLossStreak = var_0_5.paidLossStreak + 1
			var_0_5.luckDebt = var_0_8(var_0_5.luckDebt + var_19_1, var_19_2, var_19_3)
		end
	end

	if arg_19_1 then
		if arg_19_2 == "nudge" then
			var_0_5.telemetry.nudgeWins = var_0_5.telemetry.nudgeWins + 1
		elseif arg_19_2 == "core" then
			var_0_5.telemetry.automaticCoreWins = var_0_5.telemetry.automaticCoreWins + 1
		elseif arg_19_2 == "natural" then
			var_0_5.telemetry.naturalWins = var_0_5.telemetry.naturalWins + 1
		end
	end

	return true
end

local var_0_13 = var_0_1
local var_0_14
local var_0_15 = {}
local var_0_16 = 4
local var_0_17 = 3
local var_0_18 = {}

local function var_0_19()
	var_0_18.currentWave = nil
	var_0_18.currentWaveHadSpin = false
	var_0_18.currentWaveWon = false
end

function var_0_15.reset()
	var_0_18.missedWaves = 0
	var_0_18.guaranteePending = false

	var_0_19()
end

function var_0_15.noteSpinResult(arg_22_0, arg_22_1, arg_22_2)
	local var_22_0 = math.floor(tonumber(arg_22_0 or 0) or 0)

	if var_22_0 < var_0_16 or arg_22_2 and arg_22_2.exclude == true then
		return false
	end

	var_0_18.currentWave = var_22_0
	var_0_18.currentWaveHadSpin = true

	if arg_22_1 == true then
		var_0_18.currentWaveWon = true
		var_0_18.missedWaves = 0
		var_0_18.guaranteePending = false
	end

	return true
end

function var_0_15.finishWave(arg_23_0)
	local var_23_0 = math.floor(tonumber(arg_23_0 or var_0_18.currentWave or 0) or 0)

	if var_23_0 < var_0_16 then
		var_0_19()

		return false
	end

	if var_0_18.currentWave == var_23_0 and var_0_18.currentWaveHadSpin then
		if var_0_18.currentWaveWon then
			var_0_18.missedWaves = 0
			var_0_18.guaranteePending = false
		else
			var_0_18.missedWaves = math.min(var_0_17, math.max(0, tonumber(var_0_18.missedWaves or 0) or 0) + 1)

			if var_0_18.missedWaves >= var_0_17 then
				var_0_18.guaranteePending = true
			end
		end
	end

	var_0_19()

	return var_0_18.guaranteePending == true
end

function var_0_15.shouldForceSpin(arg_24_0)
	arg_24_0 = arg_24_0 or {}

	if math.floor(tonumber(arg_24_0.waveId or 0) or 0) < var_0_16 or var_0_18.guaranteePending ~= true then
		return false
	end

	if arg_24_0.excluded == true or arg_24_0.alreadyForced == true then
		return false
	end

	local var_24_0 = math.max(0, math.floor(tonumber(arg_24_0.futureSpins or 0) or 0))
	local var_24_1 = var_24_0 + 1
	local var_24_2 = arg_24_0.random or love and love.math and love.math.random or math.random
	local var_24_3 = var_24_0 <= 0 or var_24_2() < 1 / var_24_1

	if var_24_3 then
		var_0_18.guaranteePending = false
	end

	return var_24_3
end

function var_0_15.getState()
	return {
		minWave = var_0_16,
		missedWavesRequired = var_0_17,
		missedWaves = math.max(0, tonumber(var_0_18.missedWaves or 0) or 0),
		guaranteePending = var_0_18.guaranteePending == true,
		currentWave = var_0_18.currentWave,
		currentWaveHadSpin = var_0_18.currentWaveHadSpin == true,
		currentWaveWon = var_0_18.currentWaveWon == true
	}
end

function var_0_15.importState(arg_26_0)
	var_0_15.reset()

	if type(arg_26_0) ~= "table" then
		return false
	end

	var_0_18.missedWaves = math.max(0, math.min(var_0_17, math.floor(tonumber(arg_26_0.missedWaves or 0) or 0)))
	var_0_18.guaranteePending = arg_26_0.guaranteePending == true
	var_0_18.currentWave = tonumber(arg_26_0.currentWave)
	var_0_18.currentWaveHadSpin = arg_26_0.currentWaveHadSpin == true
	var_0_18.currentWaveWon = arg_26_0.currentWaveWon == true

	return true
end

var_0_15.reset()

local var_0_20 = var_0_15

return {
	hidden = var_0_13,
	pity = var_0_20
}
