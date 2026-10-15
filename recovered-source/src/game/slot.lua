local var_0_0 = {}
local var_0_1 = require("src.data.constants")
local var_0_2 = require("src.game.quest")
local var_0_3 = {
	"W",
	"A",
	"S",
	"M",
	"H",
	"D"
}
local var_0_4 = "Joker"

function var_0_0.isJackpotResult(arg_1_0, arg_1_1)
	if not arg_1_0 or not arg_1_0.checked then
		return false
	end

	if arg_1_0._jackpot == true then
		return true
	end

	local var_1_0 = {}

	for iter_1_0, iter_1_1 in ipairs(arg_1_1 or arg_1_0.allWinningLinesAfterNudge or arg_1_0.allWinningLinesAfterCascade or arg_1_0.winningLines or {}) do
		var_1_0[iter_1_1] = true
	end

	return var_1_0[1] == true and var_1_0[2] == true and var_1_0[3] == true and var_1_0[4] == true and var_1_0[5] == true
end

local function var_0_5()
	return var_0_1 and var_0_1.slot and var_0_1.slot.forceWinProb or 0
end

local function var_0_6()
	local var_3_0 = var_0_1 and var_0_1.slot and var_0_1.slot.symbolWeights or {}
	local var_3_1 = {}
	local var_3_2 = 0

	for iter_3_0, iter_3_1 in ipairs(var_0_3) do
		local var_3_3 = tonumber(var_3_0[iter_3_1] or 0) or 0

		if var_3_3 > 0 then
			table.insert(var_3_1, {
				key = iter_3_1,
				w = var_3_3
			})

			var_3_2 = var_3_2 + var_3_3
		end
	end

	if var_3_2 <= 1e-12 or #var_3_1 == 0 then
		return var_0_3[love.math.random(#var_0_3)]
	end

	local var_3_4 = love.math.random() * var_3_2

	for iter_3_2 = 1, #var_3_1 do
		local var_3_5 = var_3_1[iter_3_2]

		if var_3_4 < var_3_5.w then
			return var_3_5.key
		end

		var_3_4 = var_3_4 - var_3_5.w
	end

	return var_3_1[#var_3_1].key
end

local function var_0_7(arg_4_0)
	arg_4_0 = math.max(0, math.min(0.05, tonumber(arg_4_0 or 0) or 0))

	if arg_4_0 > 0 and arg_4_0 > love.math.random() then
		return var_0_4
	end

	return var_0_6()
end

local function var_0_8(arg_5_0, arg_5_1, arg_5_2)
	if not arg_5_0 or not arg_5_1 or not arg_5_2 then
		return nil
	end

	if arg_5_0 == "Blank" or arg_5_1 == "Blank" or arg_5_2 == "Blank" then
		return nil
	end

	local var_5_0
	local var_5_1 = 0

	for iter_5_0, iter_5_1 in ipairs({
		arg_5_0,
		arg_5_1,
		arg_5_2
	}) do
		if iter_5_1 == var_0_4 or iter_5_1 == "J" then
			var_5_1 = var_5_1 + 1
		elseif not var_5_0 then
			var_5_0 = iter_5_1
		elseif iter_5_1 ~= var_5_0 then
			return nil
		end
	end

	if var_5_1 == 3 then
		return var_0_4
	end

	return var_5_0
end

local function var_0_9(arg_6_0)
	local var_6_0 = {}

	for iter_6_0 = 1, arg_6_0 do
		var_6_0[iter_6_0] = var_0_7()
	end

	return var_6_0
end

function var_0_0.new(arg_7_0)
	local var_7_0 = {
		forceWinOnce = false,
		ui = arg_7_0,
		spin = {
			active = false,
			t = 0,
			started = false
		},
		reels = {},
		stopTimes = {
			0.6,
			0.9,
			1.2
		},
		result = {
			won = false,
			checked = false,
			fxStarted = false,
			hd = 0.35,
			ht = 0,
			highlightActive = false,
			awarded = false
		},
		buildResultGrid = function(arg_8_0)
			local var_8_0 = arg_8_0._coreSpinMods and tonumber(arg_8_0._coreSpinMods.jokerChance or 0) or 0
			local var_8_1 = math.max(0, math.min(0.05, var_8_0))

			local function var_8_2()
				local var_9_0 = {}

				for iter_9_0 = 1, arg_8_0.ui.slot.rows do
					var_9_0[iter_9_0] = {}
				end

				return var_9_0
			end

			local function var_8_3(arg_10_0)
				local var_10_0 = {
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
				local var_10_1 = 0

				for iter_10_0, iter_10_1 in ipairs(var_10_0) do
					local var_10_2 = arg_10_0[iter_10_1[1][1]][iter_10_1[1][2]]
					local var_10_3 = arg_10_0[iter_10_1[2][1]][iter_10_1[2][2]]
					local var_10_4 = arg_10_0[iter_10_1[3][1]][iter_10_1[3][2]]

					if var_0_8(var_10_2, var_10_3, var_10_4) then
						var_10_1 = var_10_1 + 1
					end
				end

				return var_10_1
			end

			local function var_8_4(arg_11_0)
				arg_11_0 = math.max(0, math.min(5, math.floor(tonumber(arg_11_0 or 0) or 0)))

				local var_11_0 = {
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

				if arg_11_0 == 0 then
					local var_11_1 = var_8_2()

					for iter_11_0 = 1, 3 do
						for iter_11_1 = 1, 3 do
							var_11_1[iter_11_0][iter_11_1] = var_0_7(var_8_1)
						end
					end

					for iter_11_2 = 1, 10 do
						if var_8_3(var_11_1) == 0 then
							break
						end

						for iter_11_3, iter_11_4 in ipairs(var_11_0) do
							local var_11_2 = var_11_1[iter_11_4[1][1]][iter_11_4[1][2]]
							local var_11_3 = var_11_1[iter_11_4[2][1]][iter_11_4[2][2]]
							local var_11_4 = var_11_1[iter_11_4[3][1]][iter_11_4[3][2]]

							if var_0_8(var_11_2, var_11_3, var_11_4) then
								local var_11_5 = iter_11_4[love.math.random(1, 3)]
								local var_11_6 = var_11_2
								local var_11_7 = var_11_6
								local var_11_8 = 0

								while var_11_7 == var_11_6 and var_11_8 < 5 do
									var_11_7 = var_0_7(var_8_1)
									var_11_8 = var_11_8 + 1
								end

								var_11_1[var_11_5[1]][var_11_5[2]] = var_11_7

								break
							end
						end
					end

					return var_11_1
				end

				local var_11_9 = arg_8_0.sandboxNextWinSymbol

				if var_11_9 == var_0_4 or var_11_9 == "J" then
					local var_11_10 = var_8_2()
					local var_11_11 = love.math.random(1, 3)
					local var_11_12 = 1

					for iter_11_5 = 1, 3 do
						for iter_11_6 = 1, 3 do
							if iter_11_5 == var_11_11 then
								var_11_10[iter_11_5][iter_11_6] = var_0_4
							else
								var_11_10[iter_11_5][iter_11_6] = var_0_3[var_11_12]
								var_11_12 = var_11_12 + 1
							end
						end
					end

					return var_11_10
				end

				local var_11_13 = {
					1,
					2,
					3,
					4,
					5
				}

				local function var_11_14(arg_12_0)
					local var_12_0 = {}

					for iter_12_0 = 1, #arg_12_0 do
						var_12_0[iter_12_0] = arg_12_0[iter_12_0]
					end

					for iter_12_1 = #var_12_0, 2, -1 do
						local var_12_1 = love.math.random(1, iter_12_1)

						var_12_0[iter_12_1], var_12_0[var_12_1] = var_12_0[var_12_1], var_12_0[iter_12_1]
					end

					return var_12_0
				end

				local var_11_15

				for iter_11_7 = 1, 40 do
					local var_11_16 = var_11_14(var_11_13)
					local var_11_17 = {}

					for iter_11_8 = 1, arg_11_0 do
						var_11_17[var_11_16[iter_11_8]] = true
					end

					local var_11_18 = {}

					for iter_11_9 = 1, 3 do
						var_11_18[iter_11_9] = {}
					end

					for iter_11_10 = 1, 5 do
						if var_11_17[iter_11_10] then
							for iter_11_11, iter_11_12 in ipairs(var_11_0[iter_11_10]) do
								var_11_18[iter_11_12[1]][iter_11_12[2]] = true
							end
						end
					end

					local var_11_19 = true

					for iter_11_13 = 1, 5 do
						if not var_11_17[iter_11_13] then
							local var_11_20 = true

							for iter_11_14, iter_11_15 in ipairs(var_11_0[iter_11_13]) do
								if not var_11_18[iter_11_15[1]][iter_11_15[2]] then
									var_11_20 = false

									break
								end
							end

							if var_11_20 then
								var_11_19 = false

								break
							end
						end
					end

					if var_11_19 then
						var_11_15 = var_11_17

						break
					end
				end

				if not var_11_15 then
					var_11_15 = {}

					for iter_11_16 = 1, arg_11_0 do
						var_11_15[iter_11_16] = true
					end
				end

				local var_11_21 = var_8_2()
				local var_11_22 = var_11_9 or var_0_6()

				local function var_11_23(arg_13_0)
					local var_13_0 = var_0_7(var_8_1)
					local var_13_1 = 0

					while var_13_0 == arg_13_0 and var_13_1 < 10 do
						var_13_0 = var_0_7(var_8_1)
						var_13_1 = var_13_1 + 1
					end

					return var_13_0
				end

				for iter_11_17 = 1, 3 do
					for iter_11_18 = 1, 3 do
						var_11_21[iter_11_17][iter_11_18] = var_11_23(var_11_22)
					end
				end

				for iter_11_19 = 1, 5 do
					if var_11_15[iter_11_19] then
						for iter_11_20, iter_11_21 in ipairs(var_11_0[iter_11_19]) do
							var_11_21[iter_11_21[1]][iter_11_21[2]] = var_11_22
						end
					end
				end

				for iter_11_22 = 1, #var_11_0 do
					if not var_11_15[iter_11_22] then
						local var_11_24 = var_11_0[iter_11_22]
						local var_11_25 = var_11_21[var_11_24[1][1]][var_11_24[1][2]]
						local var_11_26 = var_11_21[var_11_24[2][1]][var_11_24[2][2]]
						local var_11_27 = var_11_21[var_11_24[3][1]][var_11_24[3][2]]

						if var_0_8(var_11_25, var_11_26, var_11_27) then
							local var_11_28 = false

							for iter_11_23 = 1, 3 do
								local var_11_29 = var_11_24[iter_11_23][1]
								local var_11_30 = var_11_24[iter_11_23][2]
								local var_11_31 = false

								for iter_11_24 = 1, #var_11_0 do
									if var_11_15[iter_11_24] then
										for iter_11_25, iter_11_26 in ipairs(var_11_0[iter_11_24]) do
											if iter_11_26[1] == var_11_29 and iter_11_26[2] == var_11_30 then
												var_11_31 = true

												break
											end
										end
									end

									if var_11_31 then
										break
									end
								end

								if not var_11_31 then
									local var_11_32 = var_11_21[var_11_29][var_11_30]
									local var_11_33 = var_11_32
									local var_11_34 = 0

									while var_11_33 == var_11_32 or var_11_33 == var_11_22 do
										var_11_33 = var_0_7(var_8_1)
										var_11_34 = var_11_34 + 1

										if var_11_34 > 10 then
											break
										end
									end

									var_11_21[var_11_29][var_11_30] = var_11_33
									var_11_28 = true

									break
								end
							end

							if not var_11_28 then
								local var_11_35 = var_11_24[1][1]
								local var_11_36 = var_11_24[1][2]
								local var_11_37 = var_11_21[var_11_35][var_11_36]
								local var_11_38 = var_11_37
								local var_11_39 = 0

								while var_11_38 == var_11_37 or var_11_38 == var_11_22 do
									var_11_38 = var_0_7(var_8_1)
									var_11_39 = var_11_39 + 1

									if var_11_39 > 10 then
										break
									end
								end

								var_11_21[var_11_35][var_11_36] = var_11_38
							end
						end
					end
				end

				for iter_11_27 = 1, 5 do
					local var_11_40 = var_8_3(var_11_21)

					if var_11_40 == arg_11_0 then
						break
					end

					if arg_11_0 < var_11_40 then
						for iter_11_28 = 1, #var_11_0 do
							local var_11_41 = var_11_0[iter_11_28]
							local var_11_42 = var_11_21[var_11_41[1][1]][var_11_41[1][2]]
							local var_11_43 = var_11_21[var_11_41[2][1]][var_11_41[2][2]]
							local var_11_44 = var_11_21[var_11_41[3][1]][var_11_41[3][2]]

							if var_0_8(var_11_42, var_11_43, var_11_44) then
								local var_11_45 = false

								for iter_11_29 = 1, 3 do
									local var_11_46 = var_11_41[iter_11_29][1]
									local var_11_47 = var_11_41[iter_11_29][2]
									local var_11_48 = false

									for iter_11_30 = 1, #var_11_0 do
										if var_11_15[iter_11_30] then
											for iter_11_31, iter_11_32 in ipairs(var_11_0[iter_11_30]) do
												if iter_11_32[1] == var_11_46 and iter_11_32[2] == var_11_47 then
													var_11_48 = true

													break
												end
											end
										end

										if var_11_48 then
											break
										end
									end

									if not var_11_48 then
										local var_11_49 = var_11_21[var_11_46][var_11_47]
										local var_11_50 = var_11_49
										local var_11_51 = 0

										while var_11_50 == var_11_49 or var_11_50 == var_11_22 do
											var_11_50 = var_0_7(var_8_1)
											var_11_51 = var_11_51 + 1

											if var_11_51 > 10 then
												break
											end
										end

										var_11_21[var_11_46][var_11_47] = var_11_50
										var_11_45 = true

										break
									end
								end

								if var_11_45 then
									break
								end
							end
						end
					elseif var_11_40 < arg_11_0 then
						for iter_11_33 = 1, 5 do
							local var_11_52 = var_11_0[iter_11_33]
							local var_11_53 = var_11_21[var_11_52[1][1]][var_11_52[1][2]]
							local var_11_54 = var_11_21[var_11_52[2][1]][var_11_52[2][2]]
							local var_11_55 = var_11_21[var_11_52[3][1]][var_11_52[3][2]]

							if not var_0_8(var_11_53, var_11_54, var_11_55) and var_11_15[iter_11_33] then
								for iter_11_34 = 1, 3 do
									local var_11_56 = var_11_52[iter_11_34][1]
									local var_11_57 = var_11_52[iter_11_34][2]

									var_11_21[var_11_56][var_11_57] = var_11_22
								end

								break
							end
						end
					end
				end

				return var_11_21
			end

			if type(arg_8_0.stoneWinLinesOnce) == "number" then
				local var_8_5 = math.max(1, math.min(3, math.floor(arg_8_0.stoneWinLinesOnce)))

				arg_8_0.stoneWinLinesOnce = nil
				arg_8_0.forceWinOnce = false

				for iter_8_0 = 1, 40 do
					local var_8_6 = var_8_2()
					local var_8_7 = {
						1,
						2,
						3
					}

					for iter_8_1 = 3, 2, -1 do
						local var_8_8 = love.math.random(1, iter_8_1)

						var_8_7[iter_8_1], var_8_7[var_8_8] = var_8_7[var_8_8], var_8_7[iter_8_1]
					end

					local var_8_9 = {}

					for iter_8_2 = 1, var_8_5 do
						local var_8_10 = var_0_6()
						local var_8_11 = 0

						while var_8_9[var_8_10] and var_8_11 < 20 do
							var_8_10 = var_0_6()
							var_8_11 = var_8_11 + 1
						end

						var_8_9[var_8_10] = true

						for iter_8_3 = 1, 3 do
							var_8_6[var_8_7[iter_8_2]][iter_8_3] = var_8_10
						end
					end

					for iter_8_4 = var_8_5 + 1, 3 do
						for iter_8_5 = 1, 3 do
							var_8_6[var_8_7[iter_8_4]][iter_8_5] = var_0_7(0)
						end
					end

					if var_8_3(var_8_6) == var_8_5 then
						return var_8_6
					end
				end

				return var_8_4(var_8_5)
			end

			if type(arg_8_0.sandboxNextWinLines) == "number" then
				local var_8_12 = var_8_4(arg_8_0.sandboxNextWinLines)

				arg_8_0.sandboxNextWinLines = nil
				arg_8_0.forceWinOnce = false

				return var_8_12
			end

			local var_8_13 = var_8_2()

			for iter_8_6 = 1, arg_8_0.ui.slot.rows do
				for iter_8_7 = 1, arg_8_0.ui.slot.cols do
					var_8_13[iter_8_6][iter_8_7] = var_0_7(var_8_1)
				end
			end

			local var_8_14 = arg_8_0.forceWinOnce == true

			if var_8_3(var_8_13) == 0 and (var_8_14 or love.math.random() < var_0_5()) then
				local var_8_15 = {
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
					}
				}
				local var_8_16 = love.math.random(#var_8_15)
				local var_8_17 = var_0_6()

				for iter_8_8, iter_8_9 in ipairs(var_8_15[var_8_16]) do
					local var_8_18 = iter_8_9[1]
					local var_8_19 = iter_8_9[2]

					var_8_13[var_8_18][var_8_19] = var_8_17
				end
			end

			arg_8_0.forceWinOnce = false

			return var_8_13
		end,
		initGrid = function(arg_14_0)
			arg_14_0.grid = arg_14_0:buildResultGrid()
			arg_14_0.pendingGrid = nil
			arg_14_0._resonoscopeNudgePreview = nil
			arg_14_0._doubleLedgerCascade = nil
			arg_14_0._doubleLedgerCascadePending = nil
			arg_14_0._luckyNail = nil
			arg_14_0._copycapPending = nil
		end,
		startSpin = function(arg_15_0)
			if arg_15_0.spin.active then
				return
			end

			if arg_15_0._copycapPending then
				return false
			end

			if arg_15_0._doubleLedgerCascade and arg_15_0._doubleLedgerCascade.active then
				return false
			end

			if arg_15_0._luckyNail and arg_15_0._luckyNail.active then
				return false
			end

			arg_15_0._resonoscopeNudgePreview = nil
			arg_15_0.spin.active = true
			arg_15_0.spin.started = true
			arg_15_0.spin.t = 0

			local var_15_0 = arg_15_0.ui and arg_15_0.ui.battlefield and arg_15_0.ui.battlefield.waveTimer

			if not var_15_0 and _G.waveTimer then
				var_15_0 = _G.waveTimer
			end

			if var_15_0 and (var_15_0.state == "fading" or var_15_0.state == "countdown" and var_15_0.dur - var_15_0.t <= 2) then
				arg_15_0._spinInitiatedNearBattleStart = true
			else
				arg_15_0._spinInitiatedNearBattleStart = false
			end

			arg_15_0.result = {
				won = false,
				checked = false,
				fxStarted = false,
				hd = 0.35,
				ht = 0,
				highlightActive = false,
				awarded = false
			}

			if arg_15_0.stonePackOnce then
				arg_15_0.result.stonePack = arg_15_0.stonePackOnce
				arg_15_0.stonePackOnce = nil
			end

			local var_15_1 = arg_15_0.grid
			local var_15_2 = arg_15_0:buildResultGrid()
			local var_15_3 = arg_15_0._coreSpinMods and tonumber(arg_15_0._coreSpinMods.jokerChance or 0) or 0
			local var_15_4 = math.max(0, math.min(0.05, var_15_3))
			local var_15_5 = {}
			local var_15_6 = arg_15_0._coreSpinMods and arg_15_0._coreSpinMods.forceJokerCells or nil

			if type(var_15_6) == "table" then
				for iter_15_0, iter_15_1 in ipairs(var_15_6) do
					local var_15_7 = math.max(1, math.min(3, math.floor(tonumber(iter_15_1 and iter_15_1.row or 0) or 0)))
					local var_15_8 = math.max(1, math.min(3, math.floor(tonumber(iter_15_1 and iter_15_1.col or 0) or 0)))

					table.insert(var_15_5, {
						row = var_15_7,
						col = var_15_8
					})
				end
			end

			if #var_15_5 == 0 then
				local var_15_9 = arg_15_0._coreSpinMods and arg_15_0._coreSpinMods.forceJokerCell or nil

				if var_15_9 then
					table.insert(var_15_5, {
						row = math.max(1, math.min(3, math.floor(tonumber(var_15_9.row or 0) or 0))),
						col = math.max(1, math.min(3, math.floor(tonumber(var_15_9.col or 0) or 0)))
					})
				end
			end

			local var_15_10 = arg_15_0._coreSpinMods and arg_15_0._coreSpinMods.forceCells or nil
			local var_15_11

			if type(var_15_10) == "table" then
				var_15_11 = {}

				for iter_15_2, iter_15_3 in ipairs(var_15_10) do
					local var_15_12 = math.max(1, math.min(3, math.floor(tonumber(iter_15_3 and iter_15_3.row or 0) or 0)))
					local var_15_13 = math.max(1, math.min(3, math.floor(tonumber(iter_15_3 and iter_15_3.col or 0) or 0)))
					local var_15_14 = iter_15_3 and iter_15_3.symbol

					if var_15_14 then
						var_15_11[var_15_13] = var_15_11[var_15_13] or {}
						var_15_11[var_15_13][var_15_12] = var_15_14
					end
				end
			end

			local var_15_15 = arg_15_0._coreSpinMods and arg_15_0._coreSpinMods.lockedReels or nil
			local var_15_16 = arg_15_0._coreSpinMods and arg_15_0._coreSpinMods.bannedSymbol or nil
			local var_15_17 = arg_15_0.ui.slot.cols
			local var_15_18 = {}
			local var_15_19 = {}

			for iter_15_4, iter_15_5 in ipairs(var_15_5) do
				local var_15_20 = tostring(iter_15_5.row) .. ":" .. tostring(iter_15_5.col)

				if var_15_15 and var_15_15[iter_15_5.col] or var_15_19[var_15_20] then
					local var_15_21 = {}

					for iter_15_6 = 1, 3 do
						for iter_15_7 = 1, var_15_17 do
							local var_15_22 = tostring(iter_15_6) .. ":" .. tostring(iter_15_7)

							if (not var_15_15 or not var_15_15[iter_15_7]) and not var_15_19[var_15_22] then
								table.insert(var_15_21, {
									row = iter_15_6,
									col = iter_15_7
								})
							end
						end
					end

					iter_15_5 = var_15_21[1] and var_15_21[love.math.random(1, #var_15_21)] or nil
					var_15_20 = iter_15_5 and tostring(iter_15_5.row) .. ":" .. tostring(iter_15_5.col) or nil
				end

				if iter_15_5 and var_15_20 then
					var_15_19[var_15_20] = true

					table.insert(var_15_18, iter_15_5)
				end
			end

			local var_15_23 = var_15_18

			if arg_15_0._coreSpinMods then
				arg_15_0._coreSpinMods.forceJokerCells = var_15_23
				arg_15_0._coreSpinMods.forceJokerCell = var_15_23[1]
			end

			arg_15_0.pendingGrid = var_15_2
			arg_15_0.reels = {}
			arg_15_0.reelStrips = arg_15_0.reelStrips or {}
			arg_15_0.reelStripPos = arg_15_0.reelStripPos or {}
			arg_15_0.reelStripLen = arg_15_0.reelStripLen or 64

			for iter_15_8 = 1, var_15_17 do
				local var_15_24 = arg_15_0.reelStrips[iter_15_8]

				if not var_15_24 then
					var_15_24 = {}

					for iter_15_9 = 1, arg_15_0.reelStripLen do
						var_15_24[iter_15_9] = var_0_7(var_15_4)
					end

					arg_15_0.reelStrips[iter_15_8] = var_15_24
					arg_15_0.reelStripPos[iter_15_8] = 1
				end

				local var_15_25 = #var_15_24

				if var_15_25 <= 0 then
					var_15_25 = arg_15_0.reelStripLen

					for iter_15_10 = 1, var_15_25 do
						var_15_24[iter_15_10] = var_0_7(var_15_4)
					end

					arg_15_0.reelStrips[iter_15_8] = var_15_24
				end

				local function var_15_26(arg_16_0)
					return (arg_16_0 - 1) % var_15_25 + 1
				end

				local var_15_27

				if var_15_16 and var_15_1 then
					for iter_15_11 = 1, 3 do
						if var_15_1[iter_15_11] and var_15_1[iter_15_11][iter_15_8] == var_15_16 then
							var_15_27 = var_15_27 or {}
							var_15_27[iter_15_11] = true
						end
					end
				end

				local var_15_28 = arg_15_0.reelStripPos[iter_15_8] or 1

				if var_15_1 then
					for iter_15_12 = 1, 3 do
						local var_15_29 = var_15_26(var_15_28 + (iter_15_12 - 1))
						local var_15_30 = var_15_1[iter_15_12] and var_15_1[iter_15_12][iter_15_8]

						if var_15_30 then
							var_15_24[var_15_29] = var_15_30
						end
					end
				end

				if var_15_15 and var_15_15[iter_15_8] and var_15_1 then
					local var_15_31 = {
						var_15_1[1] and var_15_1[1][iter_15_8] or var_15_2[1][iter_15_8],
						var_15_1[2] and var_15_1[2][iter_15_8] or var_15_2[2][iter_15_8],
						var_15_1[3] and var_15_1[3][iter_15_8] or var_15_2[3][iter_15_8]
					}

					for iter_15_13 = 1, 3 do
						var_15_2[iter_15_13][iter_15_8] = var_15_31[iter_15_13]
						var_15_24[var_15_26(var_15_28 + (iter_15_13 - 1))] = var_15_31[iter_15_13]
					end

					arg_15_0.reels[iter_15_8] = {
						stopAt = 0,
						targetShift = 0,
						settleTime = 0,
						decelTime = 0,
						accelTime = 0,
						state = "stopped",
						t = 0,
						vmax = 0,
						decelAcc = 0,
						speed = 0,
						pos = 0,
						spinning = false,
						sequenceLen = 0,
						strip = var_15_24,
						stripLen = var_15_25,
						stripStart = var_15_28,
						stopIndex = var_15_28,
						finalSymbols = var_15_31,
						targetFinalSymbols = var_15_31,
						hit = {
							squashX = 1,
							dur = 0.5,
							amp = 0.2,
							offset = 0,
							active = false,
							t = 0,
							squashY = 1
						}
					}
				else
					if var_15_11 and var_15_11[iter_15_8] then
						for iter_15_14, iter_15_15 in pairs(var_15_11[iter_15_8]) do
							var_15_2[iter_15_14][iter_15_8] = iter_15_15
						end
					end

					for iter_15_16, iter_15_17 in ipairs(var_15_23) do
						if iter_15_17.col == iter_15_8 then
							var_15_2[iter_15_17.row][iter_15_8] = var_0_4
						end
					end

					local var_15_32 = 32
					local var_15_33 = 64
					local var_15_34 = love.math.random(var_15_32, var_15_33)
					local var_15_35 = {}

					for iter_15_18 = 1, var_15_34 do
						var_15_35[iter_15_18] = var_15_24[var_15_26(var_15_28 + (iter_15_18 - 1))]
					end

					var_15_35[0] = var_15_24[var_15_26(var_15_28 - 1)]
					arg_15_0.reels[iter_15_8] = {
						settleTime = 0.2,
						decelTime = 0.25,
						accelTime = 0.15,
						state = "accelerate",
						t = 0,
						vmax = 18,
						decelAcc = 0,
						speed = 0,
						pos = 0,
						spinning = true,
						strip = var_15_24,
						stripLen = var_15_25,
						stripStart = var_15_28,
						sequence = var_15_35,
						sequenceLen = var_15_34,
						stopAt = arg_15_0.stopTimes and arg_15_0.stopTimes[iter_15_8] or 0.6 + 0.3 * (iter_15_8 - 1),
						targetFinalSymbols = {
							var_15_2[1][iter_15_8],
							var_15_2[2][iter_15_8],
							var_15_2[3][iter_15_8]
						},
						banStampMarkedSequence = var_15_27,
						hit = {
							squashX = 1,
							dur = 0.5,
							amp = 0.2,
							offset = 0,
							active = false,
							t = 0,
							squashY = 1
						}
					}
				end
			end

			if var_15_16 then
				for iter_15_19 = 1, arg_15_0.ui.slot.rows do
					for iter_15_20 = 1, var_15_17 do
						if var_15_2[iter_15_19] and var_15_2[iter_15_19][iter_15_20] == var_15_16 then
							var_15_2[iter_15_19][iter_15_20] = var_0_6()
						end
					end
				end
			end

			arg_15_0._preRevealOutcomeMeta = nil

			if type(arg_15_0.onPreRevealOutcome) == "function" then
				local var_15_36, var_15_37 = pcall(arg_15_0.onPreRevealOutcome, var_15_2)

				if var_15_36 and type(var_15_37) == "table" then
					arg_15_0._preRevealOutcomeMeta = var_15_37
				end
			end

			for iter_15_21 = 1, var_15_17 do
				local var_15_38 = arg_15_0.reels[iter_15_21]

				if var_15_38 then
					var_15_38.targetFinalSymbols = {
						var_15_2[1] and var_15_2[1][iter_15_21],
						var_15_2[2] and var_15_2[2][iter_15_21],
						var_15_2[3] and var_15_2[3][iter_15_21]
					}

					if not var_15_38.spinning then
						var_15_38.finalSymbols = {
							var_15_2[1] and var_15_2[1][iter_15_21],
							var_15_2[2] and var_15_2[2][iter_15_21],
							var_15_2[3] and var_15_2[3][iter_15_21]
						}
					end
				end
			end
		end
	}

	local function var_7_1(arg_17_0, arg_17_1, arg_17_2, arg_17_3)
		local var_17_0 = arg_17_0._coreSpinMods and tonumber(arg_17_0._coreSpinMods.jokerChance or 0) or 0
		local var_17_1 = math.max(0, math.min(0.05, var_17_0))

		arg_17_0.reelStrips = arg_17_0.reelStrips or {}
		arg_17_0.reelStripPos = arg_17_0.reelStripPos or {}
		arg_17_0.reelStripLen = arg_17_0.reelStripLen or 64

		local var_17_2 = arg_17_0.reelStrips[arg_17_1]

		if not var_17_2 then
			var_17_2 = {}

			for iter_17_0 = 1, arg_17_0.reelStripLen do
				var_17_2[iter_17_0] = var_0_7(var_17_1)
			end

			arg_17_0.reelStrips[arg_17_1] = var_17_2
			arg_17_0.reelStripPos[arg_17_1] = 1
		end

		local var_17_3 = #var_17_2

		if var_17_3 <= 0 then
			var_17_3 = arg_17_0.reelStripLen

			for iter_17_1 = 1, var_17_3 do
				var_17_2[iter_17_1] = var_0_7(var_17_1)
			end

			arg_17_0.reelStrips[arg_17_1] = var_17_2
		end

		local function var_17_4(arg_18_0)
			return (arg_18_0 - 1) % var_17_3 + 1
		end

		local var_17_5 = arg_17_0.reelStripPos[arg_17_1] or 1

		if arg_17_0.grid then
			for iter_17_2 = 1, 3 do
				local var_17_6 = arg_17_0.grid[iter_17_2] and arg_17_0.grid[iter_17_2][arg_17_1]

				if var_17_6 then
					var_17_2[var_17_4(var_17_5 + (iter_17_2 - 1))] = var_17_6
				end
			end
		end

		local var_17_7 = 18
		local var_17_8 = 32
		local var_17_9 = love.math.random(var_17_7, var_17_8)
		local var_17_10 = {}

		for iter_17_3 = 1, var_17_9 do
			var_17_10[iter_17_3] = var_17_2[var_17_4(var_17_5 + (iter_17_3 - 1))]
		end

		var_17_10[0] = var_17_2[var_17_4(var_17_5 - 1)]
		arg_17_0.reels[arg_17_1] = {
			manualStopRequested = false,
			state = "accelerate",
			t = 0,
			decelAcc = 0,
			speed = 0,
			pos = 0,
			spinning = true,
			vmax = arg_17_3 and arg_17_3.vmax or 18,
			accelTime = arg_17_3 and arg_17_3.accelTime or 0.1,
			decelTime = arg_17_3 and arg_17_3.decelTime or 0.22,
			settleTime = arg_17_3 and arg_17_3.settleTime or 0.18,
			strip = var_17_2,
			stripLen = var_17_3,
			stripStart = var_17_5,
			sequence = var_17_10,
			sequenceLen = var_17_9,
			stopAt = arg_17_3 and arg_17_3.stopAt or 0.34,
			targetFinalSymbols = arg_17_2,
			hardStop = arg_17_3 and arg_17_3.hardStop == true,
			manualStop = arg_17_3 and arg_17_3.manualStop == true,
			spinSpark = arg_17_3 and arg_17_3.sparkWhileSpinning == true and {
				t = 0,
				phase = arg_17_3.sparkPhase or 1,
				count = arg_17_3.sparkCount or 10,
				intensity = arg_17_3.sparkIntensity or 1,
				color = arg_17_3.sparkColor or {
					1,
					0.62,
					0.08
				}
			} or nil,
			stopSfx = arg_17_3 and arg_17_3.stopSfx or nil,
			stopSfxPitch = arg_17_3 and arg_17_3.stopSfxPitch or 1.35,
			stopSfxVolumeMul = arg_17_3 and arg_17_3.stopSfxVolumeMul or 1,
			onImpact = arg_17_3 and arg_17_3.onImpact or nil,
			hit = {
				squashX = 1,
				offset = 0,
				active = false,
				t = 0,
				squashY = 1,
				dur = arg_17_3 and arg_17_3.impactDur or 0.5,
				amp = arg_17_3 and arg_17_3.impactAmp or 0.2
			}
		}
	end

	function var_7_0.startSingleReelRespin(arg_19_0, arg_19_1, arg_19_2, arg_19_3)
		arg_19_1 = tonumber(arg_19_1)

		if not arg_19_1 or arg_19_1 < 1 or arg_19_1 > (arg_19_0.ui and arg_19_0.ui.slot and arg_19_0.ui.slot.cols or 0) then
			return false
		end

		if not arg_19_2 then
			return false
		end

		arg_19_0._singleReelRespin = {
			started = false,
			col = arg_19_1,
			targetFinalSymbols = arg_19_2,
			delay = math.max(0, tonumber(arg_19_3 and arg_19_3.delay or 0) or 0),
			timing = arg_19_3 and arg_19_3.timing or nil,
			allowPostEvaluateChain = arg_19_3 and arg_19_3.allowPostEvaluateChain == true,
			coreKey = arg_19_3 and arg_19_3.coreKey or nil,
			coreRespinPhase = arg_19_3 and arg_19_3.coreRespinPhase or nil
		}
		arg_19_0._skipPostEvaluateHookOnce = true
		arg_19_0.spin.active = true
		arg_19_0.spin.started = true
		arg_19_0.spin.t = 0
		arg_19_0.result.checked = false
		arg_19_0.result.won = false
		arg_19_0.result.winningLines = nil
		arg_19_0.result.symbol = nil
		arg_19_0.result.awarded = false
		arg_19_0.result.highlightActive = false
		arg_19_0.result.fxStarted = false
		arg_19_0.result.winSeq = nil
		arg_19_0.result.visibleWinningLines = nil
		arg_19_0.result._twistedBellRerolled = arg_19_3 and arg_19_3.twistedBellReroll == true

		return true
	end

	function var_7_0.beginLuckyNailChoice(arg_20_0, arg_20_1)
		if type(arg_20_1) ~= "table" or #arg_20_1 <= 0 then
			return false
		end

		if arg_20_0.spin and arg_20_0.spin.active then
			return false
		end

		arg_20_0._luckyNail = {
			stopQueued = false,
			active = true,
			phase = "choose",
			candidates = arg_20_1
		}

		return true
	end

	function var_7_0.selectLuckyNailCandidate(arg_21_0, arg_21_1)
		local var_21_0 = arg_21_0._luckyNail

		if not var_21_0 or not var_21_0.active or var_21_0.phase ~= "choose" or not arg_21_1 then
			return false
		end

		local var_21_1 = math.floor(tonumber(arg_21_1.rerollCol or 0) or 0)

		if var_21_1 < 1 or var_21_1 > (arg_21_0.ui and arg_21_0.ui.slot and arg_21_0.ui.slot.cols or 0) then
			return false
		end

		local var_21_2 = tonumber(arg_21_0._coreSpinMods and arg_21_0._coreSpinMods.jokerChance or 0) or 0
		local var_21_3 = {
			var_0_7(var_21_2),
			var_0_7(var_21_2),
			var_0_7(var_21_2)
		}

		var_21_0.phase = "spinning"
		var_21_0.selected = arg_21_1
		var_21_0.col = var_21_1

		if not arg_21_0:startSingleReelRespin(var_21_1, var_21_3, {
			coreKey = "LuckyNail",
			timing = {
				accelTime = 0.09,
				settleTime = 0.03,
				impactAmp = 0.34,
				manualStop = true,
				vmax = 8,
				decelTime = 0.01,
				impactDur = 0.3,
				stopAt = math.huge
			}
		}) then
			var_21_0.phase = "choose"
			var_21_0.selected = nil
			var_21_0.col = nil

			return false
		end

		arg_21_0.result._luckyNailRespin = true

		return true
	end

	function var_7_0.requestLuckyNailStop(arg_22_0)
		local var_22_0 = arg_22_0._luckyNail

		if not var_22_0 or not var_22_0.active or var_22_0.phase ~= "spinning" then
			return false
		end

		var_22_0.phase = "stopping"
		var_22_0.stopQueued = true

		local var_22_1 = arg_22_0.reels and arg_22_0.reels[var_22_0.col]

		if var_22_1 and var_22_1.manualStop then
			var_22_1.manualStopRequested = true

			if var_22_1.state == "accelerate" then
				var_22_1.state = "cruise"
			end
		end

		return true
	end

	function var_7_0.beginLuckyNailAuto(arg_23_0, arg_23_1)
		if not arg_23_0:beginLuckyNailChoice(arg_23_1) then
			return false
		end

		local var_23_0 = arg_23_1[love.math.random(#arg_23_1)]

		if arg_23_0:selectLuckyNailCandidate(var_23_0) then
			return true
		end

		arg_23_0._luckyNail = nil

		return false
	end

	function var_7_0.startMultiReelRespin(arg_24_0, arg_24_1, arg_24_2)
		if type(arg_24_1) ~= "table" or #arg_24_1 <= 0 then
			return false
		end

		local var_24_0 = arg_24_0.ui and arg_24_0.ui.slot and arg_24_0.ui.slot.cols or 0
		local var_24_1 = {}

		for iter_24_0, iter_24_1 in ipairs(arg_24_1) do
			local var_24_2 = tonumber(iter_24_1 and iter_24_1.col)
			local var_24_3 = iter_24_1 and iter_24_1.targetFinalSymbols

			if var_24_2 and var_24_2 >= 1 and var_24_2 <= var_24_0 and var_24_3 then
				table.insert(var_24_1, {
					col = var_24_2,
					targetFinalSymbols = var_24_3,
					timing = iter_24_1.timing or arg_24_2 and arg_24_2.timing or nil
				})
			end
		end

		if #var_24_1 <= 0 then
			return false
		end

		arg_24_0._singleReelRespin = {
			started = false,
			reels = var_24_1,
			delay = math.max(0, tonumber(arg_24_2 and arg_24_2.delay or 0) or 0),
			timing = arg_24_2 and arg_24_2.timing or nil,
			newWinsOnly = arg_24_2 and arg_24_2.newWinsOnly == true,
			allowPostEvaluateChain = arg_24_2 and arg_24_2.allowPostEvaluateChain == true,
			coreKey = arg_24_2 and arg_24_2.coreKey or nil,
			coreRespinPhase = arg_24_2 and arg_24_2.coreRespinPhase or nil
		}
		arg_24_0._skipPostEvaluateHookOnce = true
		arg_24_0.spin.active = true
		arg_24_0.spin.started = true
		arg_24_0.spin.t = 0
		arg_24_0.result.checked = false
		arg_24_0.result.won = false
		arg_24_0.result.winningLines = nil
		arg_24_0.result.symbol = nil
		arg_24_0.result.awarded = false
		arg_24_0.result.highlightActive = false
		arg_24_0.result.fxStarted = false
		arg_24_0.result.winSeq = nil
		arg_24_0.result.visibleWinningLines = nil
		arg_24_0.result._twistedBellRerolled = arg_24_2 and arg_24_2.twistedBellReroll == true
		arg_24_0.result._completedCoreRespinKey = nil
		arg_24_0.result._completedCoreRespinPhase = nil

		return true
	end

	function var_7_0.prepareCopycapMorph(arg_25_0, arg_25_1, arg_25_2, arg_25_3, arg_25_4)
		if arg_25_0._copycapPending then
			return false
		end

		arg_25_0._copycapPending = {
			open = true,
			row = arg_25_1,
			col = arg_25_2,
			targetSymbol = arg_25_3,
			opts = arg_25_4 or {},
			result = arg_25_0.result,
			paidWinningSymbols = {}
		}

		return true
	end

	function var_7_0.canNudgeBeforeCopycap(arg_26_0)
		return arg_26_0._copycapPending ~= nil and arg_26_0._copycapPending.open == true
	end

	function var_7_0.getNudgeSpinIndex(arg_27_0, arg_27_1)
		return (arg_27_1 or 0) + ((arg_27_0._copycapPending or arg_27_0._cellIconMorph or arg_27_0._cellIconMorphImpactDelay) and 1 or 0)
	end

	function var_7_0.releaseCopycapMorph(arg_28_0)
		local var_28_0 = arg_28_0._copycapPending

		if not var_28_0 then
			return false
		end

		var_28_0.open = false
		var_28_0.ready = true
		arg_28_0.spin.active = true

		return true
	end

	function var_7_0.startCellIconMorph(arg_29_0, arg_29_1, arg_29_2, arg_29_3, arg_29_4)
		arg_29_1 = tonumber(arg_29_1)
		arg_29_2 = tonumber(arg_29_2)

		if not arg_29_1 or arg_29_1 < 1 or arg_29_1 > (arg_29_0.ui and arg_29_0.ui.slot and arg_29_0.ui.slot.rows or 0) then
			return false
		end

		if not arg_29_2 or arg_29_2 < 1 or arg_29_2 > (arg_29_0.ui and arg_29_0.ui.slot and arg_29_0.ui.slot.cols or 0) then
			return false
		end

		if not arg_29_3 then
			return false
		end

		arg_29_0.grid = arg_29_0.grid or {}
		arg_29_0.grid[arg_29_1] = arg_29_0.grid[arg_29_1] or {}
		arg_29_0.reels[arg_29_2] = arg_29_0.reels[arg_29_2] or {}

		local var_29_0 = arg_29_0.reels[arg_29_2]

		var_29_0.finalSymbols = var_29_0.finalSymbols or {
			arg_29_0.grid[1] and arg_29_0.grid[1][arg_29_2],
			arg_29_0.grid[2] and arg_29_0.grid[2][arg_29_2],
			arg_29_0.grid[3] and arg_29_0.grid[3][arg_29_2]
		}

		local var_29_1 = math.max(0.1, tonumber(arg_29_4 and arg_29_4.duration or 0.52) or 0.52)

		arg_29_0._cellIconMorph = {
			t = 0,
			phase = "cycle",
			nextCycleT = 0,
			row = arg_29_1,
			col = arg_29_2,
			targetSymbol = arg_29_3,
			dur = var_29_1,
			cycleInterval = math.max(0.025, tonumber(arg_29_4 and arg_29_4.cycleInterval or 0.045) or 0.045),
			windupDur = math.max(0.1, tonumber(arg_29_4 and arg_29_4.windupDur or 0.28) or 0.28),
			slamDur = math.max(0.1, tonumber(arg_29_4 and arg_29_4.slamDur or 0.22) or 0.22),
			impactDur = math.max(0.1, tonumber(arg_29_4 and arg_29_4.impactDur or 0.3) or 0.3),
			settleDelay = math.max(0, tonumber(arg_29_4 and arg_29_4.settleDelay or 0.08) or 0.08),
			paidWinningSymbols = arg_29_4 and arg_29_4.paidWinningSymbols,
			nudgeWon = arg_29_4 and arg_29_4.nudgeWon
		}
		var_29_0.cellMorph = {
			t = 0,
			active = true,
			phase = "cycle",
			row = arg_29_1,
			dur = var_29_1,
			windupDur = arg_29_0._cellIconMorph.windupDur,
			slamDur = arg_29_0._cellIconMorph.slamDur,
			impactDur = arg_29_0._cellIconMorph.impactDur
		}
		arg_29_0.result.newWinningLines = nil
		arg_29_0.result.allWinningLinesAfterNudge = nil
		arg_29_0.spin.active = true
		arg_29_0.spin.started = true
		arg_29_0.spin.t = 0
		arg_29_0.result.checked = false
		arg_29_0.result.won = false
		arg_29_0.result.winningLines = nil
		arg_29_0.result.symbol = nil
		arg_29_0.result.awarded = false
		arg_29_0.result.highlightActive = false
		arg_29_0.result.fxStarted = false
		arg_29_0.result.winSeq = nil
		arg_29_0.result.visibleWinningLines = nil

		return true
	end

	local var_7_2 = {
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

	local function var_7_3(arg_30_0, arg_30_1)
		local var_30_0 = var_7_2[arg_30_0]

		if not var_30_0 then
			return false
		end

		for iter_30_0, iter_30_1 in ipairs(var_30_0) do
			if iter_30_1[2] == arg_30_1 then
				return true
			end
		end

		return false
	end

	local function var_7_4(arg_31_0)
		local var_31_0 = {}
		local var_31_1 = {}
		local var_31_2

		for iter_31_0, iter_31_1 in ipairs(var_7_2) do
			local var_31_3 = arg_31_0[iter_31_1[1][1]][iter_31_1[1][2]]
			local var_31_4 = arg_31_0[iter_31_1[2][1]][iter_31_1[2][2]]
			local var_31_5 = arg_31_0[iter_31_1[3][1]][iter_31_1[3][2]]
			local var_31_6 = var_0_8(var_31_3, var_31_4, var_31_5)

			if var_31_6 then
				table.insert(var_31_0, iter_31_0)

				var_31_1[iter_31_0] = var_31_6
				var_31_2 = var_31_2 or var_31_6
			end
		end

		return var_31_0, var_31_2, var_31_1
	end

	function var_7_0.getWinningLinesDefinition(arg_32_0)
		return var_7_2
	end

	function var_7_0.evaluateGrid(arg_33_0, arg_33_1)
		return var_7_4(arg_33_1)
	end

	function var_7_0.hasJackpotResult(arg_34_0)
		return var_0_0.isJackpotResult(arg_34_0.result, arg_34_0.grid and var_7_4(arg_34_0.grid))
	end

	function var_7_0.getProtectedSpinCells(arg_35_0)
		local var_35_0 = {}
		local var_35_1 = arg_35_0._coreSpinMods or {}
		local var_35_2 = var_35_1.lockedReels

		if type(var_35_2) == "table" then
			for iter_35_0, iter_35_1 in pairs(var_35_2) do
				if iter_35_1 then
					for iter_35_2 = 1, 3 do
						var_35_0[tostring(iter_35_2) .. ":" .. tostring(iter_35_0)] = true
					end
				end
			end
		end

		local var_35_3 = var_35_1.forceJokerCells

		if type(var_35_3) == "table" and #var_35_3 > 0 then
			for iter_35_3, iter_35_4 in ipairs(var_35_3) do
				if iter_35_4 and iter_35_4.row and iter_35_4.col then
					var_35_0[tostring(iter_35_4.row) .. ":" .. tostring(iter_35_4.col)] = true
				end
			end
		else
			local var_35_4 = var_35_1.forceJokerCell

			if var_35_4 and var_35_4.row and var_35_4.col then
				var_35_0[tostring(var_35_4.row) .. ":" .. tostring(var_35_4.col)] = true
			end
		end

		for iter_35_5, iter_35_6 in ipairs(type(var_35_1.forceCells) == "table" and var_35_1.forceCells or {}) do
			if iter_35_6 and iter_35_6.row and iter_35_6.col then
				var_35_0[tostring(iter_35_6.row) .. ":" .. tostring(iter_35_6.col)] = true
			end
		end

		return var_35_0
	end

	function var_7_0.evaluateWin(arg_36_0)
		local var_36_0 = arg_36_0.grid
		local var_36_1, var_36_2, var_36_3 = var_7_4(var_36_0)

		arg_36_0.result.checked = true
		arg_36_0.result.won = #var_36_1 > 0
		arg_36_0.result.winningLines = var_36_1
		arg_36_0.result.symbol = var_36_2
		arg_36_0.result.symbolsByLine = var_36_3
		arg_36_0.result._jackpot = var_0_0.isJackpotResult(arg_36_0.result, var_36_1)
		arg_36_0.previousWinningLines = var_36_1

		return arg_36_0.result
	end

	function var_7_0.startDoubleLedgerCascade(arg_37_0, arg_37_1)
		local var_37_0 = type(arg_37_1) == "table" and arg_37_1 or {
			arg_37_1
		}
		local var_37_1 = {}
		local var_37_2 = {}

		for iter_37_0, iter_37_1 in ipairs(var_37_0) do
			local var_37_3 = math.floor(tonumber(iter_37_1 or 0) or 0)

			if var_7_2[var_37_3] and not var_37_2[var_37_3] then
				var_37_2[var_37_3] = true

				table.insert(var_37_1, var_37_3)
			end
		end

		if #var_37_1 == 0 or not arg_37_0.grid then
			return false, "bad_line"
		end

		if arg_37_0._doubleLedgerCascade and arg_37_0._doubleLedgerCascade.active then
			return false, "active"
		end

		arg_37_0.result._jackpot = arg_37_0:hasJackpotResult()

		local var_37_4 = {}
		local var_37_5 = {}
		local var_37_6 = {}
		local var_37_7 = {}

		for iter_37_2 = 1, 3 do
			var_37_4[iter_37_2], var_37_5[iter_37_2] = {}, {}

			for iter_37_3 = 1, 3 do
				var_37_4[iter_37_2][iter_37_3] = arg_37_0.grid[iter_37_2][iter_37_3]
			end
		end

		for iter_37_4, iter_37_5 in ipairs(var_37_1) do
			for iter_37_6, iter_37_7 in ipairs(var_7_2[iter_37_5]) do
				local var_37_8 = iter_37_7[1]
				local var_37_9 = iter_37_7[2]

				var_37_6[tostring(var_37_8) .. ":" .. tostring(var_37_9)] = true
				var_37_7[var_37_9] = var_37_7[var_37_9] or {}
				var_37_7[var_37_9][var_37_8] = true
			end
		end

		local var_37_10 = {}
		local var_37_11 = tonumber(arg_37_0._coreSpinMods and arg_37_0._coreSpinMods.jokerChance or 0) or 0

		for iter_37_8 = 1, 3 do
			var_37_10[iter_37_8] = {}

			local var_37_12 = var_37_7[iter_37_8]

			if var_37_12 then
				local var_37_13 = 3

				for iter_37_9 = 3, 1, -1 do
					if not var_37_12[iter_37_9] then
						var_37_5[var_37_13][iter_37_8] = var_37_4[iter_37_9][iter_37_8]
						var_37_10[iter_37_8][var_37_13] = {
							isNew = false,
							fromRow = iter_37_9
						}
						var_37_13 = var_37_13 - 1
					end
				end

				local var_37_14 = var_37_13

				for iter_37_10 = 1, var_37_14 do
					var_37_5[iter_37_10][iter_37_8] = var_0_7(var_37_11)
					var_37_10[iter_37_8][iter_37_10] = {
						isNew = true,
						fromRow = iter_37_10 - var_37_14
					}
				end
			else
				for iter_37_11 = 1, 3 do
					var_37_5[iter_37_11][iter_37_8] = var_37_4[iter_37_11][iter_37_8]
				end
			end
		end

		local var_37_15 = var_7_4(var_37_4)

		arg_37_0._doubleLedgerCascade = {
			phase = "vanish",
			active = true,
			t = 0,
			dropDur = 0.54,
			dropContactRatio = 0.76,
			dropStagger = 0.075,
			dropTravelDur = 0.42,
			vanishDur = 0.3,
			impactDur = 0.12,
			dropImpactPlayed = {},
			lineId = var_37_1[1],
			lineIds = var_37_1,
			targetCells = var_37_6,
			oldGrid = var_37_4,
			finalGrid = var_37_5,
			dropMap = var_37_10,
			beforeWinningLines = var_37_15
		}

		return true
	end

	function var_7_0.nudgeColumn(arg_38_0, arg_38_1, arg_38_2)
		arg_38_1 = tonumber(arg_38_1)

		if not arg_38_1 or arg_38_1 < 1 or arg_38_1 > (arg_38_0.ui and arg_38_0.ui.slot and arg_38_0.ui.slot.cols or 0) then
			return false, "bad_col"
		end

		if arg_38_0.ui and arg_38_0.ui._preSpinSeq and arg_38_0.ui._preSpinSeq.active and not arg_38_0:canNudgeBeforeCopycap() then
			return false, "core_activation"
		end

		if arg_38_0.spin and arg_38_0.spin.active then
			return false, "spinning"
		end

		if arg_38_0._doubleLedgerCascade and arg_38_0._doubleLedgerCascade.active then
			return false, "double_ledger_cascade"
		end

		if arg_38_0._luckyNail and arg_38_0._luckyNail.active then
			return false, "lucky_nail"
		end

		if arg_38_0.result and arg_38_0.result._luckyNailResolved then
			return false, "lucky_nail_resolved"
		end

		if arg_38_0:hasJackpotResult() then
			return false, "jackpot"
		end

		if not arg_38_0.grid then
			return false, "no_grid"
		end

		if not arg_38_0.reels or not arg_38_0.reels[arg_38_1] then
			return false, "no_reel"
		end

		if arg_38_0.reels[arg_38_1].nudge and arg_38_0.reels[arg_38_1].nudge.active then
			return false, "nudge_active"
		end

		if var_0_2 and var_0_2.onNudgeUsed then
			var_0_2.onNudgeUsed()
		end

		local var_38_0 = {
			arg_38_0.grid[1][arg_38_1],
			arg_38_0.grid[2][arg_38_1],
			arg_38_0.grid[3][arg_38_1]
		}
		local var_38_1 = arg_38_0.ui and arg_38_0.ui.nudgeButtons or {}
		local var_38_2 = tonumber(var_38_1.reelAnimDurSec or 0.18) or 0.18

		if var_38_2 <= 0 then
			var_38_2 = 0.01
		end

		local var_38_3 = arg_38_0._resonoscopeNudgePreview
		local var_38_4 = var_38_3 and tonumber(var_38_3.col) == arg_38_1 and var_38_3.symbol or nil or var_0_7()

		arg_38_0._resonoscopeNudgePreview = nil

		local var_38_5, var_38_6, var_38_7 = var_7_4(arg_38_0.grid)

		arg_38_0.reels[arg_38_1].nudge = {
			t = 0,
			active = true,
			kind = "nudge",
			winningSymbolsBefore = var_38_7,
			dur = var_38_2,
			oldSymbols = var_38_0,
			newSymbol = var_38_4,
			isReboundAxisFollowup = arg_38_2 and arg_38_2.isReboundAxisFollowup == true
		}

		return true, "started"
	end

	local function var_7_5(arg_39_0, arg_39_1, arg_39_2)
		if not arg_39_1 or arg_39_1._stopSfxPlayed then
			return
		end

		local var_39_0 = not (arg_39_0.ui and arg_39_0.ui.pauseOverlayState and arg_39_0.ui.pauseOverlayState.active) and (arg_39_1.stopSfx or arg_39_0.reelStopSfx) or nil

		if var_39_0 then
			local var_39_1 = 1

			if arg_39_0.ui and arg_39_0.ui.menuSettings and arg_39_0.ui.menuSettings.sfxVolume then
				var_39_1 = arg_39_0.ui.menuSettings.sfxVolume
			end

			if var_39_0.setVolume then
				var_39_0:setVolume(var_39_1 * (arg_39_1.stopSfxVolumeMul or 1))
			end

			if var_39_0.setPitch then
				var_39_0:setPitch(arg_39_1.stopSfxPitch or 1.35)
			end

			if var_39_0.isPlaying and var_39_0:isPlaying() then
				var_39_0:stop()
			end

			if var_39_0.play then
				var_39_0:play()
			end
		end

		if arg_39_1.onImpact and not arg_39_1._impactCallbackPlayed then
			pcall(arg_39_1.onImpact, arg_39_2)

			arg_39_1._impactCallbackPlayed = true
		end

		arg_39_1._stopSfxPlayed = true
	end

	local function var_7_6(arg_40_0)
		return 1 - (1 - arg_40_0) * (1 - arg_40_0)
	end

	local function var_7_7(arg_41_0)
		arg_41_0 = 1 - arg_41_0

		return 1 - arg_41_0 * arg_41_0 * arg_41_0
	end

	local function var_7_8(arg_42_0)
		arg_42_0 = 1 - arg_42_0

		return 1 - arg_42_0 * arg_42_0 * arg_42_0 * arg_42_0
	end

	local function var_7_9(arg_43_0)
		if arg_43_0 < 0.5 then
			return 2 * arg_43_0 * arg_43_0
		else
			return 1 - (-2 * arg_43_0 + 2) * (-2 * arg_43_0 + 2) / 2
		end
	end

	function var_7_0.update(arg_44_0, arg_44_1)
		if arg_44_0.result and arg_44_0.result.highlightActive then
			arg_44_0.result.ht = (arg_44_0.result.ht or 0) + arg_44_1

			if arg_44_0.result.ht >= (arg_44_0.result.hd or 0.35) then
				arg_44_0.result.highlightActive = false
			end
		end

		local var_44_0 = arg_44_0._doubleLedgerCascade

		if var_44_0 and var_44_0.active then
			var_44_0.t = (var_44_0.t or 0) + (arg_44_1 or 0)

			if var_44_0.phase == "vanish" and var_44_0.t >= (var_44_0.vanishDur or 0.3) then
				var_44_0.phase = "drop"
				var_44_0.t = 0
				arg_44_0.grid = var_44_0.finalGrid

				for iter_44_0 = 1, arg_44_0.ui.slot.cols or 3 do
					local var_44_1 = arg_44_0.reels and arg_44_0.reels[iter_44_0]

					if var_44_1 then
						var_44_1.finalSymbols = {
							arg_44_0.grid[1] and arg_44_0.grid[1][iter_44_0],
							arg_44_0.grid[2] and arg_44_0.grid[2][iter_44_0],
							arg_44_0.grid[3] and arg_44_0.grid[3][iter_44_0]
						}
					end
				end
			elseif var_44_0.phase == "drop" then
				local var_44_2 = var_44_0.dropTravelDur or 0.42
				local var_44_3 = var_44_0.dropStagger or 0.075
				local var_44_4 = var_44_0.dropContactRatio or 0.76

				for iter_44_1 = 1, arg_44_0.ui.slot.cols or 3 do
					if (iter_44_1 - 1) * var_44_3 + var_44_2 * var_44_4 <= var_44_0.t and not var_44_0.dropImpactPlayed[iter_44_1] then
						var_44_0.dropImpactPlayed[iter_44_1] = true

						local var_44_5 = arg_44_0.reels and arg_44_0.reels[iter_44_1]

						if var_44_5 then
							var_44_5.hit = var_44_5.hit or {}
							var_44_5.hit.active = true
							var_44_5.hit.t = 0
							var_44_5.hit.dur = 0.24
							var_44_5.hit.amp = 0.15 + (iter_44_1 == (arg_44_0.ui.slot.cols or 3) and 0.04 or 0)
							var_44_5.hit.offset = 0
							var_44_5.hit.squashX = 1
							var_44_5.hit.squashY = 1
						end

						if type(arg_44_0.onDoubleLedgerDropImpact) == "function" then
							pcall(arg_44_0.onDoubleLedgerDropImpact, iter_44_1, iter_44_1 == (arg_44_0.ui.slot.cols or 3))
						end
					end
				end

				if var_44_0.t >= (var_44_0.dropDur or 0.54) then
					var_44_0.phase = "impact"
					var_44_0.t = 0
				end
			elseif var_44_0.phase == "impact" and var_44_0.t >= (var_44_0.impactDur or 0.12) then
				local var_44_6, var_44_7, var_44_8 = var_7_4(arg_44_0.grid)
				local var_44_9 = {}
				local var_44_10 = {}

				for iter_44_2, iter_44_3 in ipairs(var_44_0.beforeWinningLines or {}) do
					var_44_9[iter_44_3] = true
				end

				local function var_44_11(arg_45_0)
					local var_45_0 = var_7_2[arg_45_0]

					if not var_45_0 then
						return false
					end

					for iter_45_0, iter_45_1 in ipairs(var_45_0) do
						local var_45_1 = iter_45_1[1]
						local var_45_2 = iter_45_1[2]
						local var_45_3 = var_44_0.dropMap and var_44_0.dropMap[var_45_2] and var_44_0.dropMap[var_45_2][var_45_1]

						if var_45_3 and (var_45_3.isNew or var_45_3.fromRow ~= var_45_1) then
							return true
						end
					end

					return false
				end

				for iter_44_4, iter_44_5 in ipairs(var_44_6 or {}) do
					if not var_44_9[iter_44_5] or var_44_11(iter_44_5) then
						table.insert(var_44_10, iter_44_5)
					end
				end

				local var_44_12 = var_44_7

				var_44_12 = var_44_10[1] and var_44_8 and var_44_8[var_44_10[1]] or var_44_12

				local var_44_13 = {
					checked = true,
					hd = 0.35,
					ht = 0,
					highlightActive = false,
					awarded = false,
					fxStarted = false,
					_doubleLedgerCascade = true,
					won = #var_44_10 > 0,
					winningLines = var_44_10,
					newWinningLines = var_44_10,
					allWinningLinesAfterCascade = var_44_6,
					symbol = var_44_12,
					symbolsByLine = var_44_8,
					_jackpot = arg_44_0.result and arg_44_0.result._jackpot == true
				}

				var_44_13._jackpot = var_0_0.isJackpotResult(var_44_13, var_44_6)
				arg_44_0.previousWinningLines = var_44_6
				arg_44_0.result = var_44_13
				var_44_0.active = false
				arg_44_0._doubleLedgerCascade = nil

				if #var_44_6 > 0 then
					local var_44_14 = {}

					for iter_44_6, iter_44_7 in ipairs(var_44_6) do
						table.insert(var_44_14, iter_44_7)
					end

					arg_44_0._doubleLedgerCascadePending = {
						chained = true,
						lineId = var_44_14[1],
						lineIds = var_44_14
					}
				end

				if type(arg_44_0.onDoubleLedgerCascadeComplete) == "function" then
					pcall(arg_44_0.onDoubleLedgerCascadeComplete, var_44_13)
				end
			end
		end

		for iter_44_8 = 1, arg_44_0.ui.slot.cols do
			local var_44_15 = arg_44_0.reels[iter_44_8]

			if var_44_15 and var_44_15.spinSpark then
				if var_44_15.spinning and (var_44_15.state == "accelerate" or var_44_15.state == "cruise") then
					var_44_15.spinSpark.t = (var_44_15.spinSpark.t or 0) + arg_44_1
				else
					var_44_15.spinSpark = nil
				end
			end

			if var_44_15 and var_44_15.hit and var_44_15.hit.active then
				var_44_15.hit.t = (var_44_15.hit.t or 0) + arg_44_1

				local var_44_16 = var_44_15.hit.dur or 0.35

				if var_44_16 <= var_44_15.hit.t then
					var_44_15.hit.active = false
					var_44_15.hit.offset = 0
					var_44_15.hit.squashX = 1
					var_44_15.hit.squashY = 1
				else
					local var_44_17 = math.max(0, math.min(1, var_44_15.hit.t / var_44_16))
					local var_44_18 = var_44_15.hit.amp or 0.35

					if var_44_17 < 0.3 then
						local var_44_19 = var_44_17 / 0.3
						local var_44_20 = var_44_19 * var_44_19

						var_44_15.hit.offset = var_44_18 * var_44_20

						local var_44_21 = 0.2 * var_44_20

						var_44_15.hit.squashX = 1 + var_44_21 * 0.5
						var_44_15.hit.squashY = 1 - var_44_21
					elseif var_44_17 < 0.65 then
						local var_44_22 = (var_44_17 - 0.3) / 0.35
						local var_44_23 = 1 - (1 - var_44_22) * (1 - var_44_22) * (1 - var_44_22)
						local var_44_24 = math.sin(var_44_22 * math.pi) * 0.15

						var_44_15.hit.offset = var_44_18 * (1 - var_44_23) - var_44_24 * var_44_18

						local var_44_25 = 0.23 * (1 - var_44_22)

						var_44_15.hit.squashX = 1 - var_44_25
						var_44_15.hit.squashY = 1 + var_44_25 * 0.4
					else
						local var_44_26 = (var_44_17 - 0.65) / 0.35
						local var_44_27 = 1 - (1 - var_44_26) * (1 - var_44_26) * (1 - var_44_26) * (1 - var_44_26)

						var_44_15.hit.offset = var_44_15.hit.offset * (1 - var_44_27)
						var_44_15.hit.squashX = 1 + (var_44_15.hit.squashX - 1) * (1 - var_44_27)
						var_44_15.hit.squashY = 1 + (var_44_15.hit.squashY - 1) * (1 - var_44_27)
					end
				end
			end

			local var_44_28 = var_44_15 and var_44_15.cellMorph

			if var_44_28 and var_44_28.active and var_44_28.phase == "impact" then
				var_44_28.t = (var_44_28.t or 0) + arg_44_1

				if var_44_28.t >= (var_44_28.impactDur or 0.3) then
					var_44_15.cellMorph = nil
				end
			end
		end

		for iter_44_9 = 1, arg_44_0.ui.slot.cols do
			local var_44_29 = arg_44_0.reels[iter_44_9]
			local var_44_30 = var_44_29 and var_44_29.nudge

			if var_44_30 and var_44_30.active then
				var_44_30.t = (var_44_30.t or 0) + arg_44_1

				if (var_44_30.dur or 0.18) <= (var_44_30.t or 0) then
					local var_44_31 = var_44_30.oldSymbols
					local var_44_32 = var_44_30.newSymbol or var_0_7()

					if arg_44_0.grid and var_44_31 and #var_44_31 >= 3 then
						arg_44_0.grid[3][iter_44_9] = var_44_31[2]
						arg_44_0.grid[2][iter_44_9] = var_44_31[1]
						arg_44_0.grid[1][iter_44_9] = var_44_32
						var_44_29.finalSymbols = {
							arg_44_0.grid[1][iter_44_9],
							arg_44_0.grid[2][iter_44_9],
							arg_44_0.grid[3][iter_44_9]
						}
					end

					local var_44_33, var_44_34, var_44_35 = var_7_4(arg_44_0.grid)
					local var_44_36 = {}
					local var_44_37 = {}

					for iter_44_10, iter_44_11 in ipairs(var_44_33) do
						if var_7_3(iter_44_11, iter_44_9) then
							table.insert(var_44_36, iter_44_11)

							if (var_44_30.winningSymbolsBefore or {})[iter_44_11] ~= var_44_35[iter_44_11] then
								table.insert(var_44_37, iter_44_11)
							end
						end
					end

					var_44_30.resolved = true
					var_44_30.newRewardWinningLines = var_44_37

					local var_44_38 = arg_44_0._copycapPending

					if var_44_38 and arg_44_0.result == var_44_38.result then
						local var_44_39 = {}

						for iter_44_12, iter_44_13 in pairs(arg_44_0.result) do
							var_44_39[iter_44_12] = iter_44_13
						end

						arg_44_0.result = var_44_39
					end

					arg_44_0.result.checked = true
					arg_44_0.result.won = #var_44_36 > 0
					arg_44_0.result.winningLines = var_44_36
					arg_44_0.result.allWinningLinesAfterNudge = var_44_33
					arg_44_0.result._jackpot = var_0_0.isJackpotResult(arg_44_0.result, var_44_33)
					arg_44_0.result.newWinningLines = var_44_36
					arg_44_0.result.symbol = var_44_36[1] and var_44_35[var_44_36[1]] or var_44_34
					arg_44_0.result.symbolsByLine = var_44_35
					arg_44_0.result.awarded = false
					arg_44_0.result.fxStarted = false
					arg_44_0.result.highlightActive = false
					arg_44_0.result.ht = 0
					arg_44_0.result.winSeq = nil
					arg_44_0.result.visibleWinningLines = nil
					arg_44_0.previousWinningLines = var_44_33
					var_44_29.nudge = nil

					if type(arg_44_0.onNudgeComplete) == "function" then
						pcall(arg_44_0.onNudgeComplete, arg_44_0.result, #var_44_36 > 0, {
							nudgeCol = iter_44_9,
							nudgeEvent = var_44_30,
							isReboundAxisFollowup = var_44_30.isReboundAxisFollowup == true
						})
					end

					if #var_44_36 > 0 and type(arg_44_0.onWin) == "function" then
						pcall(arg_44_0.onWin, arg_44_0.result)

						arg_44_0.result.awarded = true
					end

					if var_44_38 then
						var_44_38.nudged = true
						var_44_38.nudgeWon = var_44_38.nudgeWon or #var_44_36 > 0

						for iter_44_14, iter_44_15 in ipairs(var_44_36) do
							var_44_38.paidWinningSymbols[iter_44_15] = var_44_35[iter_44_15]
						end
					end
				end
			end
		end

		if arg_44_0._copycapPending then
			local var_44_40 = arg_44_0._copycapPending

			if not var_44_40.ready then
				return
			end

			for iter_44_16, iter_44_17 in ipairs(arg_44_0.reels) do
				if iter_44_17.nudge and iter_44_17.nudge.active then
					return
				end
			end

			if arg_44_0.result.winSeq and arg_44_0.result.winSeq.active then
				return
			end

			arg_44_0.result = var_44_40.result
			arg_44_0._copycapPending = nil
			var_44_40.opts.paidWinningSymbols = var_44_40.paidWinningSymbols
			var_44_40.opts.nudgeWon = var_44_40.nudgeWon

			arg_44_0:startCellIconMorph(var_44_40.row, var_44_40.col, var_44_40.targetSymbol, var_44_40.opts)

			if type(var_44_40.opts.onStart) == "function" then
				pcall(var_44_40.opts.onStart)
			end

			return
		end

		if arg_44_0._cellIconMorph then
			local var_44_41 = arg_44_0._cellIconMorph

			var_44_41.t = (var_44_41.t or 0) + (arg_44_1 or 0)

			local var_44_42 = arg_44_0.reels[var_44_41.col]

			if var_44_42 and var_44_42.cellMorph then
				var_44_42.cellMorph.t = var_44_41.t
			end

			if var_44_41.phase == "cycle" then
				if var_44_41.t < var_44_41.dur then
					if var_44_41.t >= (var_44_41.nextCycleT or 0) then
						local var_44_43 = var_0_6()
						local var_44_44 = 0

						while var_44_43 == var_44_41.targetSymbol and var_44_44 < 8 do
							var_44_43 = var_0_6()
							var_44_44 = var_44_44 + 1
						end

						arg_44_0.grid[var_44_41.row][var_44_41.col] = var_44_43

						if var_44_42 and var_44_42.finalSymbols then
							var_44_42.finalSymbols[var_44_41.row] = var_44_43
						end

						local var_44_45 = var_44_41.cycleInterval or 0.045
						local var_44_46 = math.max(0, math.min(1, var_44_41.t / math.max(0.001, var_44_41.dur)))

						var_44_41.nextCycleT = var_44_41.t + math.max(0.025, var_44_45 + var_44_46 * 0.035)
					end

					return
				end

				arg_44_0.grid[var_44_41.row][var_44_41.col] = var_44_41.targetSymbol

				if var_44_42 and var_44_42.finalSymbols then
					var_44_42.finalSymbols[var_44_41.row] = var_44_41.targetSymbol
				end

				var_44_41.phase = "windup"
				var_44_41.t = 0

				if var_44_42 and var_44_42.cellMorph then
					var_44_42.cellMorph.phase = "windup"
					var_44_42.cellMorph.t = 0
					var_44_42.cellMorph.windupDur = var_44_41.windupDur
				end

				return
			end

			if var_44_41.phase == "windup" then
				if var_44_41.t < var_44_41.windupDur then
					return
				end

				var_44_41.phase = "slam"
				var_44_41.t = 0

				if var_44_42 and var_44_42.cellMorph then
					var_44_42.cellMorph.phase = "slam"
					var_44_42.cellMorph.t = 0
					var_44_42.cellMorph.slamDur = var_44_41.slamDur
				end

				return
			end

			if var_44_41.phase == "slam" and var_44_41.t < var_44_41.slamDur then
				return
			end

			arg_44_0.grid[var_44_41.row][var_44_41.col] = var_44_41.targetSymbol

			if var_44_42 and var_44_42.finalSymbols then
				var_44_42.finalSymbols[var_44_41.row] = var_44_41.targetSymbol
			end

			if var_44_42 then
				var_44_42.cellMorph = {
					t = 0,
					active = true,
					phase = "impact",
					row = var_44_41.row,
					impactDur = var_44_41.impactDur or 0.3
				}
			end

			arg_44_0._cellIconMorph = nil

			arg_44_0:evaluateWin()

			if var_44_41.paidWinningSymbols then
				local var_44_47 = {}

				for iter_44_18, iter_44_19 in ipairs(arg_44_0.result.winningLines or {}) do
					if var_44_41.paidWinningSymbols[iter_44_19] ~= arg_44_0.result.symbolsByLine[iter_44_19] then
						var_44_47[#var_44_47 + 1] = iter_44_19
					end
				end

				arg_44_0.result.winningLines = var_44_47
				arg_44_0.result.newWinningLines = var_44_47
				arg_44_0.result.symbol = var_44_47[1] and arg_44_0.result.symbolsByLine[var_44_47[1]] or nil
				arg_44_0.result.won = arg_44_0.result.won or var_44_41.nudgeWon == true
			end

			arg_44_0.result._corePostEvaluateComplete = true
			arg_44_0.result._copycapApplied = true
			arg_44_0._cellIconMorphImpactDelay = math.max(0, tonumber(var_44_41.settleDelay or 0.08) or 0.08)

			if type(arg_44_0.onCopycapImpact) == "function" then
				pcall(arg_44_0.onCopycapImpact, {
					row = var_44_41.row,
					col = var_44_41.col,
					symbol = var_44_41.targetSymbol,
					result = arg_44_0.result
				})
			end

			return
		end

		if arg_44_0._cellIconMorphImpactDelay then
			arg_44_0._cellIconMorphImpactDelay = math.max(0, (arg_44_0._cellIconMorphImpactDelay or 0) - (arg_44_1 or 0))

			if arg_44_0._cellIconMorphImpactDelay > 0 then
				return
			end

			arg_44_0._cellIconMorphImpactDelay = nil
			arg_44_0.spin.active = false

			if type(arg_44_0.onPostEvaluate) == "function" then
				pcall(arg_44_0.onPostEvaluate, arg_44_0.result)
			end

			if arg_44_0.result.won and not arg_44_0.result.awarded then
				if type(arg_44_0.onWin) == "function" then
					pcall(arg_44_0.onWin, arg_44_0.result)
				end

				arg_44_0.result.awarded = true
			end

			if arg_44_0.result.won and not arg_44_0.result.fxStarted then
				arg_44_0.result.highlightActive = true
				arg_44_0.result.ht = 0
				arg_44_0.result.hd = arg_44_0.result.hd or 0.35
				arg_44_0.result.fxStarted = true
			end

			if type(arg_44_0.onSpinEnd) == "function" then
				pcall(arg_44_0.onSpinEnd, arg_44_0.result)
			end

			return
		end

		if not arg_44_0.spin.active then
			return
		end

		if arg_44_0._singleReelRespin and not arg_44_0._singleReelRespin.started then
			local var_44_48 = arg_44_0._singleReelRespin

			var_44_48.delay = math.max(0, (var_44_48.delay or 0) - (arg_44_1 or 0))

			if var_44_48.delay > 0 then
				return
			end

			var_44_48.started = true

			if var_44_48.reels then
				for iter_44_20, iter_44_21 in ipairs(var_44_48.reels) do
					var_7_1(arg_44_0, iter_44_21.col, iter_44_21.targetFinalSymbols, iter_44_21.timing or var_44_48.timing)
				end
			else
				var_7_1(arg_44_0, var_44_48.col, var_44_48.targetFinalSymbols, var_44_48.timing)
			end

			if arg_44_0._luckyNail and arg_44_0._luckyNail.stopQueued then
				local var_44_49 = arg_44_0.reels and arg_44_0.reels[arg_44_0._luckyNail.col]

				if var_44_49 and var_44_49.manualStop then
					var_44_49.manualStopRequested = true

					if var_44_49.state == "accelerate" then
						var_44_49.state = "cruise"
					end
				end
			end

			arg_44_0.spin.t = 0
		end

		arg_44_0.spin.t = arg_44_0.spin.t + arg_44_1

		local var_44_50 = true

		for iter_44_22 = 1, arg_44_0.ui.slot.cols do
			local var_44_51 = arg_44_0.reels[iter_44_22]

			if var_44_51 and var_44_51.spinning then
				if var_44_51.state == "accelerate" then
					var_44_51.t = var_44_51.t + arg_44_1

					local var_44_52 = math.min(1, var_44_51.t / var_44_51.accelTime)

					var_44_51.speed = var_44_51.vmax * var_7_6(var_44_52)
					var_44_51.pos = var_44_51.pos + var_44_51.speed * arg_44_1

					if var_44_52 >= 1 then
						var_44_51.state = "cruise"
						var_44_51.t = 0
						var_44_51.speed = var_44_51.vmax
					end

					var_44_50 = false
				elseif var_44_51.state == "cruise" then
					var_44_51.speed = var_44_51.vmax
					var_44_51.pos = var_44_51.pos + var_44_51.speed * arg_44_1

					if var_44_51.manualStop and var_44_51.manualStopRequested then
						local var_44_53 = math.floor((var_44_51.pos or 0) + 0.5)

						local function var_44_54(arg_46_0)
							return (arg_46_0 - 1) % var_44_51.stripLen + 1
						end

						local var_44_55 = {}

						for iter_44_23 = 1, 3 do
							local var_44_56 = iter_44_23 - var_44_53
							local var_44_57 = var_44_54(var_44_51.stripStart + (var_44_56 - 1))

							var_44_55[iter_44_23] = var_44_51.strip[var_44_57]
						end

						var_44_51.targetFinalSymbols = var_44_55
						var_44_51.targetShift = var_44_53
						var_44_51.manualStopRequestPos = var_44_51.pos
						var_44_51.pos = var_44_53
						var_44_51.state = "settle"
						var_44_51.speed = 0
						var_44_51.t = 0
						var_44_51.startPos = var_44_53

						if not var_44_51.hit then
							var_44_51.hit = {}
						end

						var_44_51.hit.active = true
						var_44_51.hit.t = 0
						var_44_51.hit.offset = 0
						var_44_51.hit.squashX = 1
						var_44_51.hit.squashY = 1

						var_7_5(arg_44_0, var_44_51, iter_44_22)

						var_44_50 = false
					elseif arg_44_0.spin.t >= var_44_51.stopAt then
						local var_44_58 = 4 + (iter_44_22 - 1)
						local var_44_59 = 6 + (iter_44_22 - 1)
						local var_44_60 = love.math.random(var_44_58, var_44_59)

						var_44_51.targetShift = math.floor(var_44_51.pos) + var_44_60

						if var_44_51.strip and var_44_51.stripLen and var_44_51.stripStart then
							local function var_44_61(arg_47_0)
								return (arg_47_0 - 1) % var_44_51.stripLen + 1
							end

							local var_44_62 = var_44_61(var_44_51.stripStart - var_44_51.targetShift)

							var_44_51.stopIndex = var_44_62

							local var_44_63 = var_44_51.targetFinalSymbols

							if var_44_63 then
								var_44_51.strip[var_44_62] = var_44_63[1]
								var_44_51.strip[var_44_61(var_44_62 + 1)] = var_44_63[2]
								var_44_51.strip[var_44_61(var_44_62 + 2)] = var_44_63[3]
								var_44_51.finalSymbols = {
									var_44_63[1],
									var_44_63[2],
									var_44_63[3]
								}
							end

							arg_44_0.reelStripPos[iter_44_22] = var_44_62

							local var_44_64 = math.max(var_44_51.sequenceLen or 0, var_44_51.targetShift + 3)
							local var_44_65 = {}

							for iter_44_24 = 1, var_44_64 do
								var_44_65[iter_44_24] = var_44_51.strip[var_44_61(var_44_62 + (iter_44_24 - 1) - var_44_51.targetShift)]
							end

							var_44_65[0] = var_44_51.strip[var_44_61(var_44_62 - var_44_51.targetShift - 1)]
							var_44_51.sequence = var_44_65
							var_44_51.sequenceLen = var_44_64
						end

						if var_44_51.hardStop then
							var_44_51.pos = var_44_51.targetShift or var_44_51.pos
							var_44_51.state = "settle"
							var_44_51.t = 0
							var_44_51.startPos = var_44_51.pos
							var_44_51.speed = 0

							if not var_44_51.hit then
								var_44_51.hit = {}
							end

							var_44_51.hit.active = true
							var_44_51.hit.t = 0
							var_44_51.hit.offset = 0
							var_44_51.hit.squashX = 1
							var_44_51.hit.squashY = 1
							var_44_51.spinSpark = nil

							var_7_5(arg_44_0, var_44_51, iter_44_22)
						else
							var_44_51.state = "decelerate"
							var_44_51.t = 0
							var_44_51.startPos = var_44_51.pos
							var_44_51.speed = var_44_51.vmax

							local var_44_66 = math.max(0, (var_44_51.targetShift or var_44_51.pos) - var_44_51.pos)

							if var_44_66 <= 0 then
								var_44_51.state = "settle"
								var_44_51.t = 0
								var_44_51.startPos = var_44_51.pos
								var_44_51.speed = 0
							else
								var_44_51.decelAcc = var_44_51.speed * var_44_51.speed / (2 * var_44_66)

								if not var_44_51.decelAcc or not (var_44_51.decelAcc > 0) then
									var_44_51.decelAcc = var_44_51.vmax / math.max(0.001, var_44_51.decelTime)
								end
							end
						end
					end

					var_44_50 = false
				elseif var_44_51.state == "manual_stop" then
					var_44_51.speed = var_44_51.vmax
					var_44_51.pos = var_44_51.pos + var_44_51.speed * arg_44_1

					if var_44_51.pos >= (var_44_51.targetShift or var_44_51.pos) then
						var_44_51.pos = var_44_51.targetShift or var_44_51.pos
						var_44_51.speed = 0
						var_44_51.state = "settle"
						var_44_51.t = 0
						var_44_51.startPos = var_44_51.pos

						if not var_44_51.hit then
							var_44_51.hit = {}
						end

						var_44_51.hit.active = true
						var_44_51.hit.t = 0
						var_44_51.hit.offset = 0
						var_44_51.hit.squashX = 1
						var_44_51.hit.squashY = 1

						var_7_5(arg_44_0, var_44_51, iter_44_22)
					end

					var_44_50 = false
				elseif var_44_51.state == "decelerate" then
					local var_44_67 = var_44_51.decelAcc or var_44_51.vmax / math.max(0.001, var_44_51.decelTime)
					local var_44_68 = var_44_51.speed * arg_44_1 - 0.5 * var_44_67 * arg_44_1 * arg_44_1

					if var_44_68 < 0 then
						var_44_68 = 0
					end

					var_44_51.pos = var_44_51.pos + var_44_68
					var_44_51.speed = var_44_51.speed - var_44_67 * arg_44_1

					local var_44_69 = var_44_51.targetShift or var_44_51.pos

					if (var_44_51.targetShift or var_44_51.pos) - var_44_51.pos <= 0.15 then
						if not var_44_51.hit then
							var_44_51.hit = {}
						end

						if not var_44_51.hit.active then
							var_44_51.hit.active = true
							var_44_51.hit.t = 0
							var_44_51.hit.dur = var_44_51.hit.dur or 0.5
							var_44_51.hit.amp = var_44_51.hit.amp or 0.2
							var_44_51.hit.offset = 0
							var_44_51.hit.squashX = 1
							var_44_51.hit.squashY = 1
						end
					end

					if var_44_51.speed <= 0 or var_44_69 <= var_44_51.pos then
						if var_44_69 < var_44_51.pos then
							var_44_51.pos = var_44_69
						end

						var_44_51.speed = 0
						var_44_51.state = "settle"
						var_44_51.t = 0
						var_44_51.startPos = var_44_51.pos

						var_7_5(arg_44_0, var_44_51, iter_44_22)

						if not var_44_51.hit then
							var_44_51.hit = {}
						end

						if not var_44_51.hit.active then
							var_44_51.hit.active = true
							var_44_51.hit.t = 0
							var_44_51.hit.dur = 0.5
							var_44_51.hit.amp = 0.2
							var_44_51.hit.offset = 0
							var_44_51.hit.squashX = 1
							var_44_51.hit.squashY = 1
						end
					end

					var_44_50 = false
				elseif var_44_51.state == "settle" then
					var_44_51.t = var_44_51.t + arg_44_1

					local var_44_70 = math.min(1, var_44_51.t / var_44_51.settleTime)
					local var_44_71 = var_7_7(var_44_70)
					local var_44_72 = var_44_51.targetShift or var_44_51.startPos

					var_44_51.pos = var_44_51.startPos + (var_44_72 - var_44_51.startPos) * var_44_71

					if var_44_70 >= 1 then
						var_44_51.pos = var_44_72
						var_44_51.state = "stopped"
						var_44_51.spinning = false

						var_7_5(arg_44_0, var_44_51, iter_44_22)

						if var_44_51.strip and var_44_51.stripLen and var_44_51.stripStart then
							local function var_44_73(arg_48_0)
								return (arg_48_0 - 1) % var_44_51.stripLen + 1
							end

							local var_44_74 = var_44_72
							local var_44_75 = 1 - var_44_74
							local var_44_76 = 2 - var_44_74
							local var_44_77 = 3 - var_44_74

							var_44_51.finalSymbols = {
								var_44_51.strip[var_44_73(var_44_51.stripStart + (var_44_75 - 1))],
								var_44_51.strip[var_44_73(var_44_51.stripStart + (var_44_76 - 1))],
								var_44_51.strip[var_44_73(var_44_51.stripStart + (var_44_77 - 1))]
							}
						end
					end

					var_44_50 = false
				end
			end
		end

		if var_44_50 then
			arg_44_0.spin.active = false

			local var_44_78 = arg_44_0.ui.slot.rows
			local var_44_79 = arg_44_0.ui.slot.cols
			local var_44_80 = {}

			for iter_44_25 = 1, var_44_78 do
				var_44_80[iter_44_25] = {}
			end

			for iter_44_26 = 1, var_44_79 do
				local var_44_81 = arg_44_0.reels[iter_44_26]

				if var_44_81 and var_44_81.finalSymbols then
					var_44_80[1][iter_44_26] = var_44_81.finalSymbols[1]
					var_44_80[2][iter_44_26] = var_44_81.finalSymbols[2]
					var_44_80[3][iter_44_26] = var_44_81.finalSymbols[3]
				elseif var_44_81 and var_44_81.strip and var_44_81.stripLen and arg_44_0.reelStripPos and arg_44_0.reelStripPos[iter_44_26] then
					local var_44_82 = var_44_81.stripLen

					local function var_44_83(arg_49_0)
						return (arg_49_0 - 1) % var_44_82 + 1
					end

					local var_44_84 = arg_44_0.reelStripPos[iter_44_26]

					var_44_80[1][iter_44_26] = var_44_81.strip[var_44_83(var_44_84)]
					var_44_80[2][iter_44_26] = var_44_81.strip[var_44_83(var_44_84 + 1)]
					var_44_80[3][iter_44_26] = var_44_81.strip[var_44_83(var_44_84 + 2)]
				elseif arg_44_0.pendingGrid then
					var_44_80[1][iter_44_26] = arg_44_0.pendingGrid[1] and arg_44_0.pendingGrid[1][iter_44_26]
					var_44_80[2][iter_44_26] = arg_44_0.pendingGrid[2] and arg_44_0.pendingGrid[2][iter_44_26]
					var_44_80[3][iter_44_26] = arg_44_0.pendingGrid[3] and arg_44_0.pendingGrid[3][iter_44_26]
				end
			end

			arg_44_0.grid = var_44_80
			arg_44_0.pendingGrid = nil

			for iter_44_27 = 1, arg_44_0.ui.slot.cols do
				local var_44_85 = arg_44_0.reels[iter_44_27]

				if var_44_85 then
					var_44_85.sequence = nil
					var_44_85.sequenceLen = nil
					var_44_85.pos = 0
					var_44_85.speed = 0
				end
			end

			if not arg_44_0.result.checked then
				local var_44_86 = arg_44_0._singleReelRespin

				arg_44_0:evaluateWin()

				if var_44_86 and var_44_86.coreKey == "LuckyNail" then
					arg_44_0.result._luckyNailResolved = true
					arg_44_0.result._luckyNailRespin = true
					arg_44_0._luckyNail = nil
				end

				if var_44_86 and var_44_86.newWinsOnly then
					local var_44_87 = {}

					for iter_44_28, iter_44_29 in ipairs(arg_44_0.result.winningLines or {}) do
						table.insert(var_44_87, iter_44_29)
					end

					arg_44_0.result.newWinningLines = var_44_87
					arg_44_0.result._twinCherriesApplied = true
				end

				if arg_44_0._preRevealOutcomeMeta then
					for iter_44_30, iter_44_31 in pairs(arg_44_0._preRevealOutcomeMeta) do
						arg_44_0.result[iter_44_30] = iter_44_31
					end

					arg_44_0._preRevealOutcomeMeta = nil
				end

				if arg_44_0._skipPostEvaluateHookOnce then
					arg_44_0._skipPostEvaluateHookOnce = nil
					arg_44_0._singleReelRespin = nil
					arg_44_0.result._corePostEvaluateComplete = true
					arg_44_0.result._completedCoreRespinKey = var_44_86 and var_44_86.coreKey or nil
					arg_44_0.result._completedCoreRespinPhase = var_44_86 and var_44_86.coreRespinPhase or nil
					arg_44_0.result._allowCorePostEvaluateChain = var_44_86 and var_44_86.allowPostEvaluateChain == true or nil
				end

				if type(arg_44_0.onPostEvaluate) == "function" then
					local var_44_88, var_44_89 = pcall(arg_44_0.onPostEvaluate, arg_44_0.result)

					if var_44_88 and var_44_89 then
						return
					end
				end

				if arg_44_0.result.won and not arg_44_0.result.awarded then
					if type(arg_44_0.onWin) == "function" then
						pcall(arg_44_0.onWin, arg_44_0.result)
					end

					arg_44_0.result.awarded = true
				end
			end

			if arg_44_0.result.won and not arg_44_0.result.fxStarted then
				arg_44_0.result.highlightActive = true
				arg_44_0.result.ht = 0
				arg_44_0.result.hd = arg_44_0.result.hd or 0.35
				arg_44_0.result.fxStarted = true
			end

			if type(arg_44_0.onSpinEnd) == "function" then
				pcall(arg_44_0.onSpinEnd, arg_44_0.result)
			end
		end
	end

	return var_7_0
end

return var_0_0
