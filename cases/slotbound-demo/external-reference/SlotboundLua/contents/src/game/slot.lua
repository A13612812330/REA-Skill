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

local function var_0_5()
	return var_0_1 and var_0_1.slot and var_0_1.slot.forceWinProb or 0
end

local function var_0_6()
	local var_2_0 = var_0_1 and var_0_1.slot and var_0_1.slot.symbolWeights or {}
	local var_2_1 = {}
	local var_2_2 = 0

	for iter_2_0, iter_2_1 in ipairs(var_0_3) do
		local var_2_3 = tonumber(var_2_0[iter_2_1] or 0) or 0

		if var_2_3 > 0 then
			table.insert(var_2_1, {
				key = iter_2_1,
				w = var_2_3
			})

			var_2_2 = var_2_2 + var_2_3
		end
	end

	if var_2_2 <= 1e-12 or #var_2_1 == 0 then
		return var_0_3[love.math.random(#var_0_3)]
	end

	local var_2_4 = love.math.random() * var_2_2

	for iter_2_2 = 1, #var_2_1 do
		local var_2_5 = var_2_1[iter_2_2]

		if var_2_4 < var_2_5.w then
			return var_2_5.key
		end

		var_2_4 = var_2_4 - var_2_5.w
	end

	return var_2_1[#var_2_1].key
end

local function var_0_7(arg_3_0)
	arg_3_0 = math.max(0, math.min(0.05, tonumber(arg_3_0 or 0) or 0))

	if arg_3_0 > 0 and arg_3_0 > love.math.random() then
		return var_0_4
	end

	return var_0_6()
end

local function var_0_8(arg_4_0, arg_4_1, arg_4_2)
	if not arg_4_0 or not arg_4_1 or not arg_4_2 then
		return nil
	end

	if arg_4_0 == "Blank" or arg_4_1 == "Blank" or arg_4_2 == "Blank" then
		return nil
	end

	local var_4_0
	local var_4_1 = 0

	for iter_4_0, iter_4_1 in ipairs({
		arg_4_0,
		arg_4_1,
		arg_4_2
	}) do
		if iter_4_1 == var_0_4 or iter_4_1 == "J" then
			var_4_1 = var_4_1 + 1
		elseif not var_4_0 then
			var_4_0 = iter_4_1
		elseif iter_4_1 ~= var_4_0 then
			return nil
		end
	end

	if var_4_1 == 3 then
		return nil
	end

	return var_4_0
end

local function var_0_9(arg_5_0)
	local var_5_0 = {}

	for iter_5_0 = 1, arg_5_0 do
		var_5_0[iter_5_0] = var_0_7()
	end

	return var_5_0
end

function var_0_0.new(arg_6_0)
	local var_6_0 = {
		forceWinOnce = false,
		ui = arg_6_0,
		spin = {
			started = false,
			t = 0,
			active = false
		},
		reels = {},
		stopTimes = {
			0.6,
			0.9,
			1.2
		},
		result = {
			ht = 0,
			hd = 0.35,
			fxStarted = false,
			won = false,
			highlightActive = false,
			awarded = false,
			checked = false
		},
		buildResultGrid = function(arg_7_0)
			local var_7_0 = arg_7_0._coreSpinMods and tonumber(arg_7_0._coreSpinMods.jokerChance or 0) or 0
			local var_7_1 = math.max(0, math.min(0.05, var_7_0))

			local function var_7_2()
				local var_8_0 = {}

				for iter_8_0 = 1, arg_7_0.ui.slot.rows do
					var_8_0[iter_8_0] = {}
				end

				return var_8_0
			end

			local function var_7_3(arg_9_0)
				local var_9_0 = {
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
				local var_9_1 = 0

				for iter_9_0, iter_9_1 in ipairs(var_9_0) do
					local var_9_2 = arg_9_0[iter_9_1[1][1]][iter_9_1[1][2]]
					local var_9_3 = arg_9_0[iter_9_1[2][1]][iter_9_1[2][2]]
					local var_9_4 = arg_9_0[iter_9_1[3][1]][iter_9_1[3][2]]

					if var_0_8(var_9_2, var_9_3, var_9_4) then
						var_9_1 = var_9_1 + 1
					end
				end

				return var_9_1
			end

			local function var_7_4(arg_10_0)
				arg_10_0 = math.max(0, math.min(5, math.floor(tonumber(arg_10_0 or 0) or 0)))

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

				if arg_10_0 == 0 then
					local var_10_1 = var_7_2()

					for iter_10_0 = 1, 3 do
						for iter_10_1 = 1, 3 do
							var_10_1[iter_10_0][iter_10_1] = var_0_7(var_7_1)
						end
					end

					for iter_10_2 = 1, 10 do
						if var_7_3(var_10_1) == 0 then
							break
						end

						for iter_10_3, iter_10_4 in ipairs(var_10_0) do
							local var_10_2 = var_10_1[iter_10_4[1][1]][iter_10_4[1][2]]
							local var_10_3 = var_10_1[iter_10_4[2][1]][iter_10_4[2][2]]
							local var_10_4 = var_10_1[iter_10_4[3][1]][iter_10_4[3][2]]

							if var_0_8(var_10_2, var_10_3, var_10_4) then
								local var_10_5 = iter_10_4[love.math.random(1, 3)]
								local var_10_6 = var_10_2
								local var_10_7 = var_10_6
								local var_10_8 = 0

								while var_10_7 == var_10_6 and var_10_8 < 5 do
									var_10_7 = var_0_7(var_7_1)
									var_10_8 = var_10_8 + 1
								end

								var_10_1[var_10_5[1]][var_10_5[2]] = var_10_7

								break
							end
						end
					end

					return var_10_1
				end

				local var_10_9 = {
					1,
					2,
					3,
					4,
					5
				}

				local function var_10_10(arg_11_0)
					local var_11_0 = {}

					for iter_11_0 = 1, #arg_11_0 do
						var_11_0[iter_11_0] = arg_11_0[iter_11_0]
					end

					for iter_11_1 = #var_11_0, 2, -1 do
						local var_11_1 = love.math.random(1, iter_11_1)

						var_11_0[iter_11_1], var_11_0[var_11_1] = var_11_0[var_11_1], var_11_0[iter_11_1]
					end

					return var_11_0
				end

				local var_10_11

				for iter_10_5 = 1, 40 do
					local var_10_12 = var_10_10(var_10_9)
					local var_10_13 = {}

					for iter_10_6 = 1, arg_10_0 do
						var_10_13[var_10_12[iter_10_6]] = true
					end

					local var_10_14 = {}

					for iter_10_7 = 1, 3 do
						var_10_14[iter_10_7] = {}
					end

					for iter_10_8 = 1, 5 do
						if var_10_13[iter_10_8] then
							for iter_10_9, iter_10_10 in ipairs(var_10_0[iter_10_8]) do
								var_10_14[iter_10_10[1]][iter_10_10[2]] = true
							end
						end
					end

					local var_10_15 = true

					for iter_10_11 = 1, 5 do
						if not var_10_13[iter_10_11] then
							local var_10_16 = true

							for iter_10_12, iter_10_13 in ipairs(var_10_0[iter_10_11]) do
								if not var_10_14[iter_10_13[1]][iter_10_13[2]] then
									var_10_16 = false

									break
								end
							end

							if var_10_16 then
								var_10_15 = false

								break
							end
						end
					end

					if var_10_15 then
						var_10_11 = var_10_13

						break
					end
				end

				if not var_10_11 then
					var_10_11 = {}

					for iter_10_14 = 1, arg_10_0 do
						var_10_11[iter_10_14] = true
					end
				end

				local var_10_17 = var_7_2()
				local var_10_18 = arg_7_0.sandboxNextWinSymbol or var_0_6()

				local function var_10_19(arg_12_0)
					local var_12_0 = var_0_7(var_7_1)
					local var_12_1 = 0

					while var_12_0 == arg_12_0 and var_12_1 < 10 do
						var_12_0 = var_0_7(var_7_1)
						var_12_1 = var_12_1 + 1
					end

					return var_12_0
				end

				for iter_10_15 = 1, 3 do
					for iter_10_16 = 1, 3 do
						var_10_17[iter_10_15][iter_10_16] = var_10_19(var_10_18)
					end
				end

				for iter_10_17 = 1, 5 do
					if var_10_11[iter_10_17] then
						for iter_10_18, iter_10_19 in ipairs(var_10_0[iter_10_17]) do
							var_10_17[iter_10_19[1]][iter_10_19[2]] = var_10_18
						end
					end
				end

				for iter_10_20 = 1, 5 do
					if not var_10_11[iter_10_20] then
						local var_10_20 = var_10_0[iter_10_20]
						local var_10_21 = var_10_17[var_10_20[1][1]][var_10_20[1][2]]
						local var_10_22 = var_10_17[var_10_20[2][1]][var_10_20[2][2]]
						local var_10_23 = var_10_17[var_10_20[3][1]][var_10_20[3][2]]

						if var_0_8(var_10_21, var_10_22, var_10_23) then
							local var_10_24 = false

							for iter_10_21 = 1, 3 do
								local var_10_25 = var_10_20[iter_10_21][1]
								local var_10_26 = var_10_20[iter_10_21][2]
								local var_10_27 = false

								for iter_10_22 = 1, 5 do
									if var_10_11[iter_10_22] then
										for iter_10_23, iter_10_24 in ipairs(var_10_0[iter_10_22]) do
											if iter_10_24[1] == var_10_25 and iter_10_24[2] == var_10_26 then
												var_10_27 = true

												break
											end
										end
									end

									if var_10_27 then
										break
									end
								end

								if not var_10_27 then
									local var_10_28 = var_10_17[var_10_25][var_10_26]
									local var_10_29 = var_10_28
									local var_10_30 = 0

									while var_10_29 == var_10_28 or var_10_29 == var_10_18 do
										var_10_29 = var_0_7(var_7_1)
										var_10_30 = var_10_30 + 1

										if var_10_30 > 10 then
											break
										end
									end

									var_10_17[var_10_25][var_10_26] = var_10_29
									var_10_24 = true

									break
								end
							end

							if not var_10_24 then
								local var_10_31 = var_10_20[1][1]
								local var_10_32 = var_10_20[1][2]
								local var_10_33 = var_10_17[var_10_31][var_10_32]
								local var_10_34 = var_10_33
								local var_10_35 = 0

								while var_10_34 == var_10_33 or var_10_34 == var_10_18 do
									var_10_34 = var_0_7(var_7_1)
									var_10_35 = var_10_35 + 1

									if var_10_35 > 10 then
										break
									end
								end

								var_10_17[var_10_31][var_10_32] = var_10_34
							end
						end
					end
				end

				for iter_10_25 = 1, 5 do
					local var_10_36 = var_7_3(var_10_17)

					if var_10_36 == arg_10_0 then
						break
					end

					if arg_10_0 < var_10_36 then
						for iter_10_26 = 1, 5 do
							local var_10_37 = var_10_0[iter_10_26]
							local var_10_38 = var_10_17[var_10_37[1][1]][var_10_37[1][2]]
							local var_10_39 = var_10_17[var_10_37[2][1]][var_10_37[2][2]]
							local var_10_40 = var_10_17[var_10_37[3][1]][var_10_37[3][2]]

							if var_0_8(var_10_38, var_10_39, var_10_40) then
								local var_10_41 = false

								for iter_10_27 = 1, 3 do
									local var_10_42 = var_10_37[iter_10_27][1]
									local var_10_43 = var_10_37[iter_10_27][2]
									local var_10_44 = false

									for iter_10_28 = 1, 5 do
										if var_10_11[iter_10_28] then
											for iter_10_29, iter_10_30 in ipairs(var_10_0[iter_10_28]) do
												if iter_10_30[1] == var_10_42 and iter_10_30[2] == var_10_43 then
													var_10_44 = true

													break
												end
											end
										end

										if var_10_44 then
											break
										end
									end

									if not var_10_44 then
										local var_10_45 = var_10_17[var_10_42][var_10_43]
										local var_10_46 = var_10_45
										local var_10_47 = 0

										while var_10_46 == var_10_45 or var_10_46 == var_10_18 do
											var_10_46 = var_0_7(var_7_1)
											var_10_47 = var_10_47 + 1

											if var_10_47 > 10 then
												break
											end
										end

										var_10_17[var_10_42][var_10_43] = var_10_46
										var_10_41 = true

										break
									end
								end

								if var_10_41 then
									break
								end
							end
						end
					elseif var_10_36 < arg_10_0 then
						for iter_10_31 = 1, 5 do
							local var_10_48 = var_10_0[iter_10_31]
							local var_10_49 = var_10_17[var_10_48[1][1]][var_10_48[1][2]]
							local var_10_50 = var_10_17[var_10_48[2][1]][var_10_48[2][2]]
							local var_10_51 = var_10_17[var_10_48[3][1]][var_10_48[3][2]]

							if not var_0_8(var_10_49, var_10_50, var_10_51) and var_10_11[iter_10_31] then
								for iter_10_32 = 1, 3 do
									local var_10_52 = var_10_48[iter_10_32][1]
									local var_10_53 = var_10_48[iter_10_32][2]

									var_10_17[var_10_52][var_10_53] = var_10_18
								end

								break
							end
						end
					end
				end

				return var_10_17
			end

			if type(arg_7_0.sandboxNextWinLines) == "number" then
				local var_7_5 = var_7_4(arg_7_0.sandboxNextWinLines)

				arg_7_0.sandboxNextWinLines = nil
				arg_7_0.forceWinOnce = false

				return var_7_5
			end

			local var_7_6 = var_7_2()

			for iter_7_0 = 1, arg_7_0.ui.slot.rows do
				for iter_7_1 = 1, arg_7_0.ui.slot.cols do
					var_7_6[iter_7_0][iter_7_1] = var_0_7(var_7_1)
				end
			end

			local var_7_7 = arg_7_0.forceWinOnce == true

			if var_7_3(var_7_6) == 0 and (var_7_7 or love.math.random() < var_0_5()) then
				local var_7_8 = {
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
				local var_7_9 = love.math.random(#var_7_8)
				local var_7_10 = var_0_6()

				for iter_7_2, iter_7_3 in ipairs(var_7_8[var_7_9]) do
					local var_7_11 = iter_7_3[1]
					local var_7_12 = iter_7_3[2]

					var_7_6[var_7_11][var_7_12] = var_7_10
				end
			end

			arg_7_0.forceWinOnce = false

			return var_7_6
		end,
		initGrid = function(arg_13_0)
			arg_13_0.grid = arg_13_0:buildResultGrid()
			arg_13_0.pendingGrid = nil
		end,
		startSpin = function(arg_14_0)
			if arg_14_0.spin.active then
				return
			end

			arg_14_0.spin.active = true
			arg_14_0.spin.started = true
			arg_14_0.spin.t = 0

			local var_14_0 = arg_14_0.ui and arg_14_0.ui.battlefield and arg_14_0.ui.battlefield.waveTimer

			if not var_14_0 and _G.waveTimer then
				var_14_0 = _G.waveTimer
			end

			if var_14_0 and (var_14_0.state == "fading" or var_14_0.state == "countdown" and var_14_0.dur - var_14_0.t <= 2) then
				arg_14_0._spinInitiatedNearBattleStart = true
			else
				arg_14_0._spinInitiatedNearBattleStart = false
			end

			arg_14_0.result = {
				ht = 0,
				hd = 0.35,
				fxStarted = false,
				won = false,
				highlightActive = false,
				awarded = false,
				checked = false
			}

			local var_14_1 = arg_14_0.grid
			local var_14_2 = arg_14_0:buildResultGrid()
			local var_14_3 = arg_14_0._coreSpinMods and tonumber(arg_14_0._coreSpinMods.jokerChance or 0) or 0
			local var_14_4 = math.max(0, math.min(0.05, var_14_3))
			local var_14_5 = {}
			local var_14_6 = arg_14_0._coreSpinMods and arg_14_0._coreSpinMods.forceJokerCells or nil

			if type(var_14_6) == "table" then
				for iter_14_0, iter_14_1 in ipairs(var_14_6) do
					local var_14_7 = math.max(1, math.min(3, math.floor(tonumber(iter_14_1 and iter_14_1.row or 0) or 0)))
					local var_14_8 = math.max(1, math.min(3, math.floor(tonumber(iter_14_1 and iter_14_1.col or 0) or 0)))

					table.insert(var_14_5, {
						row = var_14_7,
						col = var_14_8
					})
				end
			end

			if #var_14_5 == 0 then
				local var_14_9 = arg_14_0._coreSpinMods and arg_14_0._coreSpinMods.forceJokerCell or nil

				if var_14_9 then
					table.insert(var_14_5, {
						row = math.max(1, math.min(3, math.floor(tonumber(var_14_9.row or 0) or 0))),
						col = math.max(1, math.min(3, math.floor(tonumber(var_14_9.col or 0) or 0)))
					})
				end
			end

			local var_14_10 = arg_14_0._coreSpinMods and arg_14_0._coreSpinMods.forceCells or nil
			local var_14_11

			if type(var_14_10) == "table" then
				var_14_11 = {}

				for iter_14_2, iter_14_3 in ipairs(var_14_10) do
					local var_14_12 = math.max(1, math.min(3, math.floor(tonumber(iter_14_3 and iter_14_3.row or 0) or 0)))
					local var_14_13 = math.max(1, math.min(3, math.floor(tonumber(iter_14_3 and iter_14_3.col or 0) or 0)))
					local var_14_14 = iter_14_3 and iter_14_3.symbol

					if var_14_14 then
						var_14_11[var_14_13] = var_14_11[var_14_13] or {}
						var_14_11[var_14_13][var_14_12] = var_14_14
					end
				end
			end

			local var_14_15 = arg_14_0._coreSpinMods and arg_14_0._coreSpinMods.lockedReels or nil
			local var_14_16 = arg_14_0.ui.slot.cols
			local var_14_17 = {}
			local var_14_18 = {}

			for iter_14_4, iter_14_5 in ipairs(var_14_5) do
				local var_14_19 = tostring(iter_14_5.row) .. ":" .. tostring(iter_14_5.col)

				if var_14_15 and var_14_15[iter_14_5.col] or var_14_18[var_14_19] then
					local var_14_20 = {}

					for iter_14_6 = 1, 3 do
						for iter_14_7 = 1, var_14_16 do
							local var_14_21 = tostring(iter_14_6) .. ":" .. tostring(iter_14_7)

							if (not var_14_15 or not var_14_15[iter_14_7]) and not var_14_18[var_14_21] then
								table.insert(var_14_20, {
									row = iter_14_6,
									col = iter_14_7
								})
							end
						end
					end

					iter_14_5 = var_14_20[1] and var_14_20[love.math.random(1, #var_14_20)] or nil
					var_14_19 = iter_14_5 and tostring(iter_14_5.row) .. ":" .. tostring(iter_14_5.col) or nil
				end

				if iter_14_5 and var_14_19 then
					var_14_18[var_14_19] = true

					table.insert(var_14_17, iter_14_5)
				end
			end

			local var_14_22 = var_14_17

			if arg_14_0._coreSpinMods then
				arg_14_0._coreSpinMods.forceJokerCells = var_14_22
				arg_14_0._coreSpinMods.forceJokerCell = var_14_22[1]
			end

			arg_14_0.pendingGrid = var_14_2
			arg_14_0.reels = {}
			arg_14_0.reelStrips = arg_14_0.reelStrips or {}
			arg_14_0.reelStripPos = arg_14_0.reelStripPos or {}
			arg_14_0.reelStripLen = arg_14_0.reelStripLen or 64

			for iter_14_8 = 1, var_14_16 do
				local var_14_23 = arg_14_0.reelStrips[iter_14_8]

				if not var_14_23 then
					var_14_23 = {}

					for iter_14_9 = 1, arg_14_0.reelStripLen do
						var_14_23[iter_14_9] = var_0_7(var_14_4)
					end

					arg_14_0.reelStrips[iter_14_8] = var_14_23
					arg_14_0.reelStripPos[iter_14_8] = 1
				end

				local var_14_24 = #var_14_23

				if var_14_24 <= 0 then
					var_14_24 = arg_14_0.reelStripLen

					for iter_14_10 = 1, var_14_24 do
						var_14_23[iter_14_10] = var_0_7(var_14_4)
					end

					arg_14_0.reelStrips[iter_14_8] = var_14_23
				end

				local function var_14_25(arg_15_0)
					return (arg_15_0 - 1) % var_14_24 + 1
				end

				local var_14_26 = arg_14_0.reelStripPos[iter_14_8] or 1

				if var_14_1 then
					for iter_14_11 = 1, 3 do
						local var_14_27 = var_14_25(var_14_26 + (iter_14_11 - 1))
						local var_14_28 = var_14_1[iter_14_11] and var_14_1[iter_14_11][iter_14_8]

						if var_14_28 then
							var_14_23[var_14_27] = var_14_28
						end
					end
				end

				if var_14_15 and var_14_15[iter_14_8] and var_14_1 then
					local var_14_29 = {
						var_14_1[1] and var_14_1[1][iter_14_8] or var_14_2[1][iter_14_8],
						var_14_1[2] and var_14_1[2][iter_14_8] or var_14_2[2][iter_14_8],
						var_14_1[3] and var_14_1[3][iter_14_8] or var_14_2[3][iter_14_8]
					}

					for iter_14_12 = 1, 3 do
						var_14_2[iter_14_12][iter_14_8] = var_14_29[iter_14_12]
						var_14_23[var_14_25(var_14_26 + (iter_14_12 - 1))] = var_14_29[iter_14_12]
					end

					arg_14_0.reels[iter_14_8] = {
						speed = 0,
						state = "stopped",
						stopAt = 0,
						sequenceLen = 0,
						targetShift = 0,
						settleTime = 0,
						decelTime = 0,
						accelTime = 0,
						vmax = 0,
						decelAcc = 0,
						pos = 0,
						spinning = false,
						t = 0,
						strip = var_14_23,
						stripLen = var_14_24,
						stripStart = var_14_26,
						stopIndex = var_14_26,
						finalSymbols = var_14_29,
						targetFinalSymbols = var_14_29,
						hit = {
							squashX = 1,
							offset = 0,
							squashY = 1,
							dur = 0.5,
							t = 0,
							amp = 0.2,
							active = false
						}
					}
				else
					if var_14_11 and var_14_11[iter_14_8] then
						for iter_14_13, iter_14_14 in pairs(var_14_11[iter_14_8]) do
							var_14_2[iter_14_13][iter_14_8] = iter_14_14
						end
					end

					for iter_14_15, iter_14_16 in ipairs(var_14_22) do
						if iter_14_16.col == iter_14_8 then
							var_14_2[iter_14_16.row][iter_14_8] = var_0_4
						end
					end

					local var_14_30 = 32
					local var_14_31 = 64
					local var_14_32 = love.math.random(var_14_30, var_14_31)
					local var_14_33 = {}

					for iter_14_17 = 1, var_14_32 do
						var_14_33[iter_14_17] = var_14_23[var_14_25(var_14_26 + (iter_14_17 - 1))]
					end

					var_14_33[0] = var_14_23[var_14_25(var_14_26 - 1)]
					arg_14_0.reels[iter_14_8] = {
						speed = 0,
						state = "accelerate",
						settleTime = 0.2,
						decelTime = 0.25,
						accelTime = 0.15,
						vmax = 18,
						decelAcc = 0,
						pos = 0,
						spinning = true,
						t = 0,
						strip = var_14_23,
						stripLen = var_14_24,
						stripStart = var_14_26,
						sequence = var_14_33,
						sequenceLen = var_14_32,
						stopAt = arg_14_0.stopTimes and arg_14_0.stopTimes[iter_14_8] or 0.6 + 0.3 * (iter_14_8 - 1),
						targetFinalSymbols = {
							var_14_2[1][iter_14_8],
							var_14_2[2][iter_14_8],
							var_14_2[3][iter_14_8]
						},
						hit = {
							squashX = 1,
							offset = 0,
							squashY = 1,
							dur = 0.5,
							t = 0,
							amp = 0.2,
							active = false
						}
					}
				end
			end

			arg_14_0._preRevealOutcomeMeta = nil

			if type(arg_14_0.onPreRevealOutcome) == "function" then
				local var_14_34, var_14_35 = pcall(arg_14_0.onPreRevealOutcome, var_14_2)

				if var_14_34 and type(var_14_35) == "table" then
					arg_14_0._preRevealOutcomeMeta = var_14_35
				end
			end

			for iter_14_18 = 1, var_14_16 do
				local var_14_36 = arg_14_0.reels[iter_14_18]

				if var_14_36 then
					var_14_36.targetFinalSymbols = {
						var_14_2[1] and var_14_2[1][iter_14_18],
						var_14_2[2] and var_14_2[2][iter_14_18],
						var_14_2[3] and var_14_2[3][iter_14_18]
					}

					if not var_14_36.spinning then
						var_14_36.finalSymbols = {
							var_14_2[1] and var_14_2[1][iter_14_18],
							var_14_2[2] and var_14_2[2][iter_14_18],
							var_14_2[3] and var_14_2[3][iter_14_18]
						}
					end
				end
			end
		end
	}

	local function var_6_1(arg_16_0, arg_16_1, arg_16_2, arg_16_3)
		local var_16_0 = arg_16_0._coreSpinMods and tonumber(arg_16_0._coreSpinMods.jokerChance or 0) or 0
		local var_16_1 = math.max(0, math.min(0.05, var_16_0))
		local var_16_2 = arg_16_0.reelStrips[arg_16_1]

		if not var_16_2 then
			var_16_2 = {}

			for iter_16_0 = 1, arg_16_0.reelStripLen do
				var_16_2[iter_16_0] = var_0_7(var_16_1)
			end

			arg_16_0.reelStrips[arg_16_1] = var_16_2
			arg_16_0.reelStripPos[arg_16_1] = 1
		end

		local var_16_3 = #var_16_2

		if var_16_3 <= 0 then
			var_16_3 = arg_16_0.reelStripLen

			for iter_16_1 = 1, var_16_3 do
				var_16_2[iter_16_1] = var_0_7(var_16_1)
			end

			arg_16_0.reelStrips[arg_16_1] = var_16_2
		end

		local function var_16_4(arg_17_0)
			return (arg_17_0 - 1) % var_16_3 + 1
		end

		local var_16_5 = arg_16_0.reelStripPos[arg_16_1] or 1

		if arg_16_0.grid then
			for iter_16_2 = 1, 3 do
				local var_16_6 = arg_16_0.grid[iter_16_2] and arg_16_0.grid[iter_16_2][arg_16_1]

				if var_16_6 then
					var_16_2[var_16_4(var_16_5 + (iter_16_2 - 1))] = var_16_6
				end
			end
		end

		local var_16_7 = 18
		local var_16_8 = 32
		local var_16_9 = love.math.random(var_16_7, var_16_8)
		local var_16_10 = {}

		for iter_16_3 = 1, var_16_9 do
			var_16_10[iter_16_3] = var_16_2[var_16_4(var_16_5 + (iter_16_3 - 1))]
		end

		var_16_10[0] = var_16_2[var_16_4(var_16_5 - 1)]
		arg_16_0.reels[arg_16_1] = {
			speed = 0,
			state = "accelerate",
			decelAcc = 0,
			pos = 0,
			spinning = true,
			t = 0,
			vmax = arg_16_3 and arg_16_3.vmax or 18,
			accelTime = arg_16_3 and arg_16_3.accelTime or 0.1,
			decelTime = arg_16_3 and arg_16_3.decelTime or 0.22,
			settleTime = arg_16_3 and arg_16_3.settleTime or 0.18,
			strip = var_16_2,
			stripLen = var_16_3,
			stripStart = var_16_5,
			sequence = var_16_10,
			sequenceLen = var_16_9,
			stopAt = arg_16_3 and arg_16_3.stopAt or 0.34,
			targetFinalSymbols = arg_16_2,
			hit = {
				squashX = 1,
				offset = 0,
				squashY = 1,
				dur = 0.5,
				t = 0,
				amp = 0.2,
				active = false
			}
		}
	end

	function var_6_0.startSingleReelRespin(arg_18_0, arg_18_1, arg_18_2, arg_18_3)
		arg_18_1 = tonumber(arg_18_1)

		if not arg_18_1 or arg_18_1 < 1 or arg_18_1 > (arg_18_0.ui and arg_18_0.ui.slot and arg_18_0.ui.slot.cols or 0) then
			return false
		end

		if not arg_18_2 then
			return false
		end

		arg_18_0._singleReelRespin = {
			started = false,
			col = arg_18_1,
			targetFinalSymbols = arg_18_2,
			delay = math.max(0, tonumber(arg_18_3 and arg_18_3.delay or 0) or 0),
			timing = arg_18_3 and arg_18_3.timing or nil
		}
		arg_18_0._skipPostEvaluateHookOnce = true
		arg_18_0.spin.active = true
		arg_18_0.spin.started = true
		arg_18_0.spin.t = 0
		arg_18_0.result.checked = false
		arg_18_0.result.won = false
		arg_18_0.result.winningLines = nil
		arg_18_0.result.symbol = nil
		arg_18_0.result.awarded = false
		arg_18_0.result.highlightActive = false
		arg_18_0.result.fxStarted = false
		arg_18_0.result.winSeq = nil
		arg_18_0.result.visibleWinningLines = nil
		arg_18_0.result._twistedBellRerolled = true

		return true
	end

	function var_6_0.startMultiReelRespin(arg_19_0, arg_19_1, arg_19_2)
		if type(arg_19_1) ~= "table" or #arg_19_1 <= 0 then
			return false
		end

		local var_19_0 = arg_19_0.ui and arg_19_0.ui.slot and arg_19_0.ui.slot.cols or 0
		local var_19_1 = {}

		for iter_19_0, iter_19_1 in ipairs(arg_19_1) do
			local var_19_2 = tonumber(iter_19_1 and iter_19_1.col)
			local var_19_3 = iter_19_1 and iter_19_1.targetFinalSymbols

			if var_19_2 and var_19_2 >= 1 and var_19_2 <= var_19_0 and var_19_3 then
				table.insert(var_19_1, {
					col = var_19_2,
					targetFinalSymbols = var_19_3,
					timing = iter_19_1.timing or arg_19_2 and arg_19_2.timing or nil
				})
			end
		end

		if #var_19_1 <= 0 then
			return false
		end

		arg_19_0._singleReelRespin = {
			started = false,
			reels = var_19_1,
			delay = math.max(0, tonumber(arg_19_2 and arg_19_2.delay or 0) or 0),
			timing = arg_19_2 and arg_19_2.timing or nil
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
		arg_19_0.result._twistedBellRerolled = arg_19_2 and arg_19_2.twistedBellReroll == true

		return true
	end

	local var_6_2 = {
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

	local function var_6_3(arg_20_0, arg_20_1)
		local var_20_0 = var_6_2[arg_20_0]

		if not var_20_0 then
			return false
		end

		for iter_20_0, iter_20_1 in ipairs(var_20_0) do
			if iter_20_1[2] == arg_20_1 then
				return true
			end
		end

		return false
	end

	local function var_6_4(arg_21_0)
		local var_21_0 = {}
		local var_21_1 = {}
		local var_21_2

		for iter_21_0, iter_21_1 in ipairs(var_6_2) do
			local var_21_3 = arg_21_0[iter_21_1[1][1]][iter_21_1[1][2]]
			local var_21_4 = arg_21_0[iter_21_1[2][1]][iter_21_1[2][2]]
			local var_21_5 = arg_21_0[iter_21_1[3][1]][iter_21_1[3][2]]
			local var_21_6 = var_0_8(var_21_3, var_21_4, var_21_5)

			if var_21_6 then
				table.insert(var_21_0, iter_21_0)

				var_21_1[iter_21_0] = var_21_6
				var_21_2 = var_21_2 or var_21_6
			end
		end

		return var_21_0, var_21_2, var_21_1
	end

	function var_6_0.getWinningLinesDefinition(arg_22_0)
		return var_6_2
	end

	function var_6_0.evaluateGrid(arg_23_0, arg_23_1)
		return var_6_4(arg_23_1)
	end

	function var_6_0.getProtectedSpinCells(arg_24_0)
		local var_24_0 = {}
		local var_24_1 = arg_24_0._coreSpinMods or {}
		local var_24_2 = var_24_1.lockedReels

		if type(var_24_2) == "table" then
			for iter_24_0, iter_24_1 in pairs(var_24_2) do
				if iter_24_1 then
					for iter_24_2 = 1, 3 do
						var_24_0[tostring(iter_24_2) .. ":" .. tostring(iter_24_0)] = true
					end
				end
			end
		end

		local var_24_3 = var_24_1.forceJokerCells

		if type(var_24_3) == "table" and #var_24_3 > 0 then
			for iter_24_3, iter_24_4 in ipairs(var_24_3) do
				if iter_24_4 and iter_24_4.row and iter_24_4.col then
					var_24_0[tostring(iter_24_4.row) .. ":" .. tostring(iter_24_4.col)] = true
				end
			end
		else
			local var_24_4 = var_24_1.forceJokerCell

			if var_24_4 and var_24_4.row and var_24_4.col then
				var_24_0[tostring(var_24_4.row) .. ":" .. tostring(var_24_4.col)] = true
			end
		end

		for iter_24_5, iter_24_6 in ipairs(type(var_24_1.forceCells) == "table" and var_24_1.forceCells or {}) do
			if iter_24_6 and iter_24_6.row and iter_24_6.col then
				var_24_0[tostring(iter_24_6.row) .. ":" .. tostring(iter_24_6.col)] = true
			end
		end

		return var_24_0
	end

	function var_6_0.evaluateWin(arg_25_0)
		local var_25_0 = arg_25_0.grid
		local var_25_1, var_25_2 = var_6_4(var_25_0)

		arg_25_0.result.checked = true
		arg_25_0.result.won = #var_25_1 > 0
		arg_25_0.result.winningLines = var_25_1
		arg_25_0.result.symbol = var_25_2
		arg_25_0.previousWinningLines = var_25_1

		return arg_25_0.result
	end

	function var_6_0.nudgeColumn(arg_26_0, arg_26_1)
		arg_26_1 = tonumber(arg_26_1)

		if not arg_26_1 or arg_26_1 < 1 or arg_26_1 > (arg_26_0.ui and arg_26_0.ui.slot and arg_26_0.ui.slot.cols or 0) then
			return false, "bad_col"
		end

		if arg_26_0.spin and arg_26_0.spin.active then
			return false, "spinning"
		end

		if not arg_26_0.grid then
			return false, "no_grid"
		end

		if not arg_26_0.reels or not arg_26_0.reels[arg_26_1] then
			return false, "no_reel"
		end

		if arg_26_0.reels[arg_26_1].nudge and arg_26_0.reels[arg_26_1].nudge.active then
			return false, "nudge_active"
		end

		if var_0_2 and var_0_2.onNudgeUsed then
			var_0_2.onNudgeUsed()
		end

		local var_26_0 = {
			arg_26_0.grid[1][arg_26_1],
			arg_26_0.grid[2][arg_26_1],
			arg_26_0.grid[3][arg_26_1]
		}
		local var_26_1 = arg_26_0.ui and arg_26_0.ui.nudgeButtons or {}
		local var_26_2 = tonumber(var_26_1.reelAnimDurSec or 0.18) or 0.18

		if var_26_2 <= 0 then
			var_26_2 = 0.01
		end

		local var_26_3 = var_0_7()

		arg_26_0.reels[arg_26_1].nudge = {
			t = 0,
			active = true,
			dur = var_26_2,
			oldSymbols = var_26_0,
			newSymbol = var_26_3
		}

		return true, "started"
	end

	local function var_6_5(arg_27_0)
		return 1 - (1 - arg_27_0) * (1 - arg_27_0)
	end

	local function var_6_6(arg_28_0)
		arg_28_0 = 1 - arg_28_0

		return 1 - arg_28_0 * arg_28_0 * arg_28_0
	end

	local function var_6_7(arg_29_0)
		arg_29_0 = 1 - arg_29_0

		return 1 - arg_29_0 * arg_29_0 * arg_29_0 * arg_29_0
	end

	local function var_6_8(arg_30_0)
		if arg_30_0 < 0.5 then
			return 2 * arg_30_0 * arg_30_0
		else
			return 1 - (-2 * arg_30_0 + 2) * (-2 * arg_30_0 + 2) / 2
		end
	end

	function var_6_0.update(arg_31_0, arg_31_1)
		if arg_31_0.result and arg_31_0.result.highlightActive then
			arg_31_0.result.ht = (arg_31_0.result.ht or 0) + arg_31_1

			if arg_31_0.result.ht >= (arg_31_0.result.hd or 0.35) then
				arg_31_0.result.highlightActive = false
			end
		end

		for iter_31_0 = 1, arg_31_0.ui.slot.cols do
			local var_31_0 = arg_31_0.reels[iter_31_0]

			if var_31_0 and var_31_0.hit and var_31_0.hit.active then
				var_31_0.hit.t = (var_31_0.hit.t or 0) + arg_31_1

				local var_31_1 = var_31_0.hit.dur or 0.35

				if var_31_1 <= var_31_0.hit.t then
					var_31_0.hit.active = false
					var_31_0.hit.offset = 0
					var_31_0.hit.squashX = 1
					var_31_0.hit.squashY = 1
				else
					local var_31_2 = math.max(0, math.min(1, var_31_0.hit.t / var_31_1))
					local var_31_3 = var_31_0.hit.amp or 0.35

					if var_31_2 < 0.3 then
						local var_31_4 = var_31_2 / 0.3
						local var_31_5 = var_31_4 * var_31_4

						var_31_0.hit.offset = var_31_3 * var_31_5

						local var_31_6 = 0.2 * var_31_5

						var_31_0.hit.squashX = 1 + var_31_6 * 0.5
						var_31_0.hit.squashY = 1 - var_31_6
					elseif var_31_2 < 0.65 then
						local var_31_7 = (var_31_2 - 0.3) / 0.35
						local var_31_8 = 1 - (1 - var_31_7) * (1 - var_31_7) * (1 - var_31_7)
						local var_31_9 = math.sin(var_31_7 * math.pi) * 0.15

						var_31_0.hit.offset = var_31_3 * (1 - var_31_8) - var_31_9 * var_31_3

						local var_31_10 = 0.23 * (1 - var_31_7)

						var_31_0.hit.squashX = 1 - var_31_10
						var_31_0.hit.squashY = 1 + var_31_10 * 0.4
					else
						local var_31_11 = (var_31_2 - 0.65) / 0.35
						local var_31_12 = 1 - (1 - var_31_11) * (1 - var_31_11) * (1 - var_31_11) * (1 - var_31_11)

						var_31_0.hit.offset = var_31_0.hit.offset * (1 - var_31_12)
						var_31_0.hit.squashX = 1 + (var_31_0.hit.squashX - 1) * (1 - var_31_12)
						var_31_0.hit.squashY = 1 + (var_31_0.hit.squashY - 1) * (1 - var_31_12)
					end
				end
			end
		end

		for iter_31_1 = 1, arg_31_0.ui.slot.cols do
			local var_31_13 = arg_31_0.reels[iter_31_1]
			local var_31_14 = var_31_13 and var_31_13.nudge

			if var_31_14 and var_31_14.active then
				var_31_14.t = (var_31_14.t or 0) + arg_31_1

				if (var_31_14.dur or 0.18) <= (var_31_14.t or 0) then
					local var_31_15 = var_31_14.oldSymbols
					local var_31_16 = var_31_14.newSymbol or var_0_7()

					if arg_31_0.grid and var_31_15 and #var_31_15 >= 3 then
						arg_31_0.grid[3][iter_31_1] = var_31_15[2]
						arg_31_0.grid[2][iter_31_1] = var_31_15[1]
						arg_31_0.grid[1][iter_31_1] = var_31_16
						var_31_13.finalSymbols = {
							arg_31_0.grid[1][iter_31_1],
							arg_31_0.grid[2][iter_31_1],
							arg_31_0.grid[3][iter_31_1]
						}
					end

					local var_31_17, var_31_18 = var_6_4(arg_31_0.grid)
					local var_31_19 = {}

					for iter_31_2, iter_31_3 in ipairs(var_31_17) do
						if var_6_3(iter_31_3, iter_31_1) then
							table.insert(var_31_19, iter_31_3)
						end
					end

					arg_31_0.result.checked = true
					arg_31_0.result.won = #var_31_19 > 0
					arg_31_0.result.winningLines = var_31_19
					arg_31_0.result.allWinningLinesAfterNudge = var_31_17
					arg_31_0.result.newWinningLines = var_31_19
					arg_31_0.result.symbol = var_31_18
					arg_31_0.result.awarded = false
					arg_31_0.result.fxStarted = false
					arg_31_0.result.highlightActive = false
					arg_31_0.result.ht = 0
					arg_31_0.result.winSeq = nil
					arg_31_0.result.visibleWinningLines = nil
					arg_31_0.previousWinningLines = var_31_17
					var_31_13.nudge = nil

					if #var_31_19 > 0 and type(arg_31_0.onWin) == "function" then
						pcall(arg_31_0.onWin, arg_31_0.result)

						arg_31_0.result.awarded = true
					end

					if type(arg_31_0.onNudgeComplete) == "function" then
						pcall(arg_31_0.onNudgeComplete, arg_31_0.result, #var_31_19 > 0)
					end
				end
			end
		end

		if not arg_31_0.spin.active then
			return
		end

		if arg_31_0._singleReelRespin and not arg_31_0._singleReelRespin.started then
			local var_31_20 = arg_31_0._singleReelRespin

			var_31_20.delay = math.max(0, (var_31_20.delay or 0) - (arg_31_1 or 0))

			if var_31_20.delay > 0 then
				return
			end

			var_31_20.started = true

			if var_31_20.reels then
				for iter_31_4, iter_31_5 in ipairs(var_31_20.reels) do
					var_6_1(arg_31_0, iter_31_5.col, iter_31_5.targetFinalSymbols, iter_31_5.timing or var_31_20.timing)
				end
			else
				var_6_1(arg_31_0, var_31_20.col, var_31_20.targetFinalSymbols, var_31_20.timing)
			end

			arg_31_0.spin.t = 0
		end

		arg_31_0.spin.t = arg_31_0.spin.t + arg_31_1

		local var_31_21 = true

		for iter_31_6 = 1, arg_31_0.ui.slot.cols do
			local var_31_22 = arg_31_0.reels[iter_31_6]

			if var_31_22 and var_31_22.spinning then
				if var_31_22.state == "accelerate" then
					var_31_22.t = var_31_22.t + arg_31_1

					local var_31_23 = math.min(1, var_31_22.t / var_31_22.accelTime)

					var_31_22.speed = var_31_22.vmax * var_6_5(var_31_23)
					var_31_22.pos = var_31_22.pos + var_31_22.speed * arg_31_1

					if var_31_23 >= 1 then
						var_31_22.state = "cruise"
						var_31_22.t = 0
						var_31_22.speed = var_31_22.vmax
					end

					var_31_21 = false
				elseif var_31_22.state == "cruise" then
					var_31_22.speed = var_31_22.vmax
					var_31_22.pos = var_31_22.pos + var_31_22.speed * arg_31_1

					if arg_31_0.spin.t >= var_31_22.stopAt then
						local var_31_24 = 4 + (iter_31_6 - 1)
						local var_31_25 = 6 + (iter_31_6 - 1)
						local var_31_26 = love.math.random(var_31_24, var_31_25)

						var_31_22.targetShift = math.floor(var_31_22.pos) + var_31_26

						if var_31_22.strip and var_31_22.stripLen and var_31_22.stripStart then
							local function var_31_27(arg_32_0)
								return (arg_32_0 - 1) % var_31_22.stripLen + 1
							end

							local var_31_28 = var_31_27(var_31_22.stripStart - var_31_22.targetShift)

							var_31_22.stopIndex = var_31_28

							local var_31_29 = var_31_22.targetFinalSymbols

							if var_31_29 then
								var_31_22.strip[var_31_28] = var_31_29[1]
								var_31_22.strip[var_31_27(var_31_28 + 1)] = var_31_29[2]
								var_31_22.strip[var_31_27(var_31_28 + 2)] = var_31_29[3]
								var_31_22.finalSymbols = {
									var_31_29[1],
									var_31_29[2],
									var_31_29[3]
								}
							end

							arg_31_0.reelStripPos[iter_31_6] = var_31_28

							local var_31_30 = math.max(var_31_22.sequenceLen or 0, var_31_22.targetShift + 3)
							local var_31_31 = {}

							for iter_31_7 = 1, var_31_30 do
								var_31_31[iter_31_7] = var_31_22.strip[var_31_27(var_31_28 + (iter_31_7 - 1) - var_31_22.targetShift)]
							end

							var_31_31[0] = var_31_22.strip[var_31_27(var_31_28 - var_31_22.targetShift - 1)]
							var_31_22.sequence = var_31_31
							var_31_22.sequenceLen = var_31_30
						end

						var_31_22.state = "decelerate"
						var_31_22.t = 0
						var_31_22.startPos = var_31_22.pos
						var_31_22.speed = var_31_22.vmax

						local var_31_32 = math.max(0, (var_31_22.targetShift or var_31_22.pos) - var_31_22.pos)

						if var_31_32 <= 0 then
							var_31_22.state = "settle"
							var_31_22.t = 0
							var_31_22.startPos = var_31_22.pos
							var_31_22.speed = 0
						else
							var_31_22.decelAcc = var_31_22.speed * var_31_22.speed / (2 * var_31_32)

							if not var_31_22.decelAcc or not (var_31_22.decelAcc > 0) then
								var_31_22.decelAcc = var_31_22.vmax / math.max(0.001, var_31_22.decelTime)
							end
						end
					end

					var_31_21 = false
				elseif var_31_22.state == "decelerate" then
					local var_31_33 = var_31_22.decelAcc or var_31_22.vmax / math.max(0.001, var_31_22.decelTime)
					local var_31_34 = var_31_22.speed * arg_31_1 - 0.5 * var_31_33 * arg_31_1 * arg_31_1

					if var_31_34 < 0 then
						var_31_34 = 0
					end

					var_31_22.pos = var_31_22.pos + var_31_34
					var_31_22.speed = var_31_22.speed - var_31_33 * arg_31_1

					local var_31_35 = var_31_22.targetShift or var_31_22.pos

					if (var_31_22.targetShift or var_31_22.pos) - var_31_22.pos <= 0.15 then
						if not var_31_22.hit then
							var_31_22.hit = {}
						end

						if not var_31_22.hit.active then
							var_31_22.hit.active = true
							var_31_22.hit.t = 0
							var_31_22.hit.dur = var_31_22.hit.dur or 0.5
							var_31_22.hit.amp = var_31_22.hit.amp or 0.2
							var_31_22.hit.offset = 0
							var_31_22.hit.squashX = 1
							var_31_22.hit.squashY = 1
						end
					end

					if var_31_22.speed <= 0 or var_31_35 <= var_31_22.pos then
						if var_31_35 < var_31_22.pos then
							var_31_22.pos = var_31_35
						end

						var_31_22.speed = 0
						var_31_22.state = "settle"
						var_31_22.t = 0
						var_31_22.startPos = var_31_22.pos

						if not var_31_22._stopSfxPlayed then
							local var_31_36 = not (arg_31_0.ui and arg_31_0.ui.pauseOverlayState and arg_31_0.ui.pauseOverlayState.active) and arg_31_0.reelStopSfx or nil

							if var_31_36 then
								local var_31_37 = 1

								if arg_31_0.ui and arg_31_0.ui.menuSettings and arg_31_0.ui.menuSettings.sfxVolume then
									var_31_37 = arg_31_0.ui.menuSettings.sfxVolume
								end

								if var_31_36.setVolume then
									var_31_36:setVolume(var_31_37 * 1)
								end

								if var_31_36.setPitch then
									var_31_36:setPitch(1.35)
								end

								if var_31_36.isPlaying and var_31_36:isPlaying() then
									var_31_36:stop()
								end

								if var_31_36.play then
									var_31_36:play()
								end
							end

							var_31_22._stopSfxPlayed = true
						end

						if not var_31_22.hit then
							var_31_22.hit = {}
						end

						if not var_31_22.hit.active then
							var_31_22.hit.active = true
							var_31_22.hit.t = 0
							var_31_22.hit.dur = 0.5
							var_31_22.hit.amp = 0.2
							var_31_22.hit.offset = 0
							var_31_22.hit.squashX = 1
							var_31_22.hit.squashY = 1
						end
					end

					var_31_21 = false
				elseif var_31_22.state == "settle" then
					var_31_22.t = var_31_22.t + arg_31_1

					local var_31_38 = math.min(1, var_31_22.t / var_31_22.settleTime)
					local var_31_39 = var_6_6(var_31_38)
					local var_31_40 = var_31_22.targetShift or var_31_22.startPos

					var_31_22.pos = var_31_22.startPos + (var_31_40 - var_31_22.startPos) * var_31_39

					if var_31_38 >= 1 then
						var_31_22.pos = var_31_40
						var_31_22.state = "stopped"
						var_31_22.spinning = false

						if not var_31_22._stopSfxPlayed then
							local var_31_41 = not (arg_31_0.ui and arg_31_0.ui.pauseOverlayState and arg_31_0.ui.pauseOverlayState.active) and arg_31_0.reelStopSfx or nil

							if var_31_41 then
								local var_31_42 = 1

								if arg_31_0.ui and arg_31_0.ui.menuSettings and arg_31_0.ui.menuSettings.sfxVolume then
									var_31_42 = arg_31_0.ui.menuSettings.sfxVolume
								end

								if var_31_41.setVolume then
									var_31_41:setVolume(var_31_42 * 1)
								end

								if var_31_41.setPitch then
									var_31_41:setPitch(1.35)
								end

								if var_31_41.isPlaying and var_31_41:isPlaying() then
									var_31_41:stop()
								end

								if var_31_41.play then
									var_31_41:play()
								end
							end

							var_31_22._stopSfxPlayed = true
						end

						if var_31_22.strip and var_31_22.stripLen and var_31_22.stripStart then
							local function var_31_43(arg_33_0)
								return (arg_33_0 - 1) % var_31_22.stripLen + 1
							end

							local var_31_44 = var_31_40
							local var_31_45 = 1 - var_31_44
							local var_31_46 = 2 - var_31_44
							local var_31_47 = 3 - var_31_44

							var_31_22.finalSymbols = {
								var_31_22.strip[var_31_43(var_31_22.stripStart + (var_31_45 - 1))],
								var_31_22.strip[var_31_43(var_31_22.stripStart + (var_31_46 - 1))],
								var_31_22.strip[var_31_43(var_31_22.stripStart + (var_31_47 - 1))]
							}
						end
					end

					var_31_21 = false
				end
			end
		end

		if var_31_21 then
			arg_31_0.spin.active = false

			local var_31_48 = arg_31_0.ui.slot.rows
			local var_31_49 = arg_31_0.ui.slot.cols
			local var_31_50 = {}

			for iter_31_8 = 1, var_31_48 do
				var_31_50[iter_31_8] = {}
			end

			for iter_31_9 = 1, var_31_49 do
				local var_31_51 = arg_31_0.reels[iter_31_9]

				if var_31_51 and var_31_51.finalSymbols then
					var_31_50[1][iter_31_9] = var_31_51.finalSymbols[1]
					var_31_50[2][iter_31_9] = var_31_51.finalSymbols[2]
					var_31_50[3][iter_31_9] = var_31_51.finalSymbols[3]
				elseif var_31_51 and var_31_51.strip and var_31_51.stripLen and arg_31_0.reelStripPos and arg_31_0.reelStripPos[iter_31_9] then
					local var_31_52 = var_31_51.stripLen

					local function var_31_53(arg_34_0)
						return (arg_34_0 - 1) % var_31_52 + 1
					end

					local var_31_54 = arg_31_0.reelStripPos[iter_31_9]

					var_31_50[1][iter_31_9] = var_31_51.strip[var_31_53(var_31_54)]
					var_31_50[2][iter_31_9] = var_31_51.strip[var_31_53(var_31_54 + 1)]
					var_31_50[3][iter_31_9] = var_31_51.strip[var_31_53(var_31_54 + 2)]
				elseif arg_31_0.pendingGrid then
					var_31_50[1][iter_31_9] = arg_31_0.pendingGrid[1] and arg_31_0.pendingGrid[1][iter_31_9]
					var_31_50[2][iter_31_9] = arg_31_0.pendingGrid[2] and arg_31_0.pendingGrid[2][iter_31_9]
					var_31_50[3][iter_31_9] = arg_31_0.pendingGrid[3] and arg_31_0.pendingGrid[3][iter_31_9]
				end
			end

			arg_31_0.grid = var_31_50
			arg_31_0.pendingGrid = nil

			for iter_31_10 = 1, arg_31_0.ui.slot.cols do
				local var_31_55 = arg_31_0.reels[iter_31_10]

				if var_31_55 then
					var_31_55.sequence = nil
					var_31_55.sequenceLen = nil
					var_31_55.pos = 0
					var_31_55.speed = 0
				end
			end

			if not arg_31_0.result.checked then
				arg_31_0:evaluateWin()

				if arg_31_0._preRevealOutcomeMeta then
					for iter_31_11, iter_31_12 in pairs(arg_31_0._preRevealOutcomeMeta) do
						arg_31_0.result[iter_31_11] = iter_31_12
					end

					arg_31_0._preRevealOutcomeMeta = nil
				end

				if arg_31_0._skipPostEvaluateHookOnce then
					arg_31_0._skipPostEvaluateHookOnce = nil
					arg_31_0._singleReelRespin = nil
					arg_31_0.result._corePostEvaluateComplete = true
				end

				if type(arg_31_0.onPostEvaluate) == "function" then
					local var_31_56, var_31_57 = pcall(arg_31_0.onPostEvaluate, arg_31_0.result)

					if var_31_56 and var_31_57 then
						return
					end
				end

				if arg_31_0.result.won and not arg_31_0.result.awarded then
					if type(arg_31_0.onWin) == "function" then
						pcall(arg_31_0.onWin, arg_31_0.result)
					end

					arg_31_0.result.awarded = true
				end
			end

			if arg_31_0.result.won and not arg_31_0.result.fxStarted then
				arg_31_0.result.highlightActive = true
				arg_31_0.result.ht = 0
				arg_31_0.result.hd = arg_31_0.result.hd or 0.35
				arg_31_0.result.fxStarted = true
			end

			if type(arg_31_0.onSpinEnd) == "function" then
				pcall(arg_31_0.onSpinEnd, arg_31_0.result)
			end
		end
	end

	return var_6_0
end

return var_0_0
