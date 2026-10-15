return {
	compute = function(arg_1_0)
		local var_1_0 = arg_1_0.virtual.W
		local var_1_1 = arg_1_0.virtual.H
		local var_1_2 = arg_1_0.margin
		local var_1_3 = math.floor(8 * arg_1_0.scale)
		local var_1_4 = math.floor(8 * arg_1_0.scale)
		local var_1_5 = math.floor(var_1_0 * 0.35)
		local var_1_6 = math.floor(14 * arg_1_0.scale)
		local var_1_7 = math.max(0, var_1_2 - var_1_6)
		local var_1_8 = var_1_2 + var_1_3 + math.floor(10 * arg_1_0.scale)
		local var_1_9 = var_1_1 - (var_1_2 + var_1_3 + var_1_4) - math.floor(20 * arg_1_0.scale)
		local var_1_10 = -math.floor(24 * arg_1_0.scale)
		local var_1_11 = -math.floor(30 * arg_1_0.scale)
		local var_1_12 = var_1_7 + var_1_5 + var_1_2 + var_1_10
		local var_1_13 = var_1_2 + math.floor(56 * arg_1_0.scale) + var_1_11
		local var_1_14 = 380
		local var_1_15 = 260
		local var_1_16 = arg_1_0.slot
		local var_1_17 = var_1_16.cols * var_1_16.cellSize + (var_1_16.cols - 1) * math.floor(var_1_16.gutter * 0.25)
		local var_1_18 = var_1_16.rows * var_1_16.cellSize + (var_1_16.rows - 1) * math.floor(var_1_16.gutter * 0.25)
		local var_1_19 = math.floor(220 * arg_1_0.scale)
		local var_1_20 = math.floor(200 * arg_1_0.scale)
		local var_1_21 = math.max(var_1_17 + var_1_16.panelPad * 2, var_1_19)
		local var_1_22 = math.max(var_1_18 + var_1_16.panelPad * 2 + math.floor(36 * arg_1_0.scale), var_1_20)
		local var_1_23 = var_1_7 + math.floor((var_1_5 - var_1_21) * 0.5)
		local var_1_24 = var_1_8 + math.floor((var_1_9 - var_1_22) * 0.5)
		local var_1_25 = var_1_23 + var_1_16.panelPad + math.floor((var_1_21 - var_1_16.panelPad * 2 - var_1_17) / 2) + (var_1_16.bgOffsetX or 0) + (var_1_16.bgAnimX or 0)
		local var_1_26 = var_1_24 + var_1_16.panelPad + math.floor(40 * arg_1_0.scale * var_1_16.scale) + (var_1_16.bgOffsetY or 0) + (var_1_16.bgAnimY or 0)
		local var_1_27 = math.floor(96 * arg_1_0.scale)
		local var_1_28 = math.floor(28 * arg_1_0.scale)
		local var_1_29 = var_1_23 + math.floor((var_1_21 - var_1_27) / 2)
		local var_1_30 = var_1_24 + var_1_22 - var_1_28 - math.floor(12 * arg_1_0.scale)

		return {
			screen = {
				W = var_1_0,
				H = var_1_1
			},
			left = {
				x = var_1_7,
				y = var_1_8,
				w = var_1_5,
				h = var_1_9
			},
			right = {
				x = var_1_12,
				y = var_1_13,
				w = var_1_14,
				h = var_1_15
			},
			slotPanel = {
				x = var_1_23,
				y = var_1_24,
				w = var_1_21,
				h = var_1_22
			},
			grid = {
				x = var_1_25,
				y = var_1_26,
				w = var_1_17,
				h = var_1_18
			},
			spinBtn = {
				x = var_1_29,
				y = var_1_30,
				w = var_1_27,
				h = var_1_28
			},
			nudgeBtns = (function()
				local var_2_0 = {}
				local var_2_1 = math.max(1, math.floor((arg_1_0.scale or 1) + 0.5))
				local var_2_2 = arg_1_0 and arg_1_0.nudgeButtons or {}
				local var_2_3 = (tonumber(var_2_2.offsetX or 0) or 0) * var_2_1
				local var_2_4 = (tonumber(var_2_2.offsetY or 0) or 0) * var_2_1
				local var_2_5 = (tonumber(var_2_2.gapAboveSpin or 3) or 3) * var_2_1
				local var_2_6 = 39 * var_2_1
				local var_2_7 = 28 * var_2_1
				local var_2_8 = var_1_17 / var_1_16.cols

				for iter_2_0 = 1, var_1_16.cols do
					local var_2_9 = var_1_25 + (iter_2_0 - 0.5) * var_2_8
					local var_2_10 = math.floor(var_2_9 - var_2_6 / 2 + var_2_3)
					local var_2_11 = math.floor(var_1_30 - var_2_7 - var_2_5 + var_2_4)

					table.insert(var_2_0, {
						x = var_2_10,
						y = var_2_11,
						w = var_2_6,
						h = var_2_7
					})
				end

				return var_2_0
			end)(),
			startBtn = (function()
				local var_3_0 = math.floor(130 * arg_1_0.scale)
				local var_3_1 = math.floor(28 * arg_1_0.scale)
				local var_3_2 = math.floor((var_1_0 - var_3_0) / 2)
				local var_3_3 = var_1_2 + math.floor(8 * arg_1_0.scale)

				return {
					x = var_3_2,
					y = var_3_3,
					w = var_3_0,
					h = var_3_1
				}
			end)()
		}
	end
}
