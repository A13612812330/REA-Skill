local var_0_0
local var_0_1 = {
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
local var_0_2
local var_0_3 = {}
local var_0_4 = 0.0001

local function var_0_5(arg_4_0, arg_4_1)
	arg_4_0 = tonumber(arg_4_0)

	if not arg_4_0 or arg_4_0 ~= arg_4_0 or arg_4_0 <= 0 or arg_4_0 == math.huge then
		return arg_4_1
	end

	return arg_4_0
end

local function var_0_6(arg_5_0)
	if not arg_5_0 or not arg_5_0.getDPIScale then
		return 1
	end

	local var_5_0, var_5_1 = pcall(arg_5_0.getDPIScale, arg_5_0)

	if not var_5_0 then
		return 1
	end

	return var_0_5(var_5_1, 1)
end

function var_0_3.chooseDensity(arg_6_0)
	local var_6_0 = var_0_5(arg_6_0, 1)
	local var_6_1 = math.floor(var_6_0 + 0.5)

	if var_6_1 >= 2 and math.abs(var_6_0 - var_6_1) <= var_0_4 and var_6_1 % 2 == 0 then
		return 2
	end

	return math.max(1, var_6_0)
end

function var_0_3.getDensity(arg_7_0)
	return var_0_6(arg_7_0)
end

local function var_0_7(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
	if not arg_8_0 or not arg_8_0.getWidth or not arg_8_0.getHeight then
		return false
	end

	local var_8_0, var_8_1 = pcall(arg_8_0.getWidth, arg_8_0)
	local var_8_2, var_8_3 = pcall(arg_8_0.getHeight, arg_8_0)

	if not var_8_0 or not var_8_2 or var_8_1 ~= arg_8_1 or var_8_3 ~= arg_8_2 then
		return false
	end

	if arg_8_0.getPixelDimensions then
		local var_8_4, var_8_5, var_8_6 = pcall(arg_8_0.getPixelDimensions, arg_8_0)

		if var_8_4 then
			return var_8_5 == math.floor(arg_8_1 * arg_8_3 + 0.5) and var_8_6 == math.floor(arg_8_2 * arg_8_3 + 0.5)
		end
	end

	return math.abs(var_0_6(arg_8_0) - arg_8_3) <= var_0_4
end

local function var_0_8(arg_9_0, arg_9_1, arg_9_2)
	if not love or not love.graphics or not love.graphics.newCanvas then
		return nil, "love.graphics.newCanvas is unavailable"
	end

	local var_9_0, var_9_1 = pcall(love.graphics.newCanvas, arg_9_0, arg_9_1, {
		msaa = 0,
		format = "rgba8",
		dpiscale = arg_9_2
	})

	if not var_9_0 or not var_9_1 then
		return nil, tostring(var_9_1 or "canvas allocation failed")
	end

	var_9_1:setFilter("nearest", "nearest")

	return var_9_1
end

function var_0_3.ensure(arg_10_0, arg_10_1, arg_10_2, arg_10_3, arg_10_4)
	arg_10_1 = math.max(1, math.floor(var_0_5(arg_10_1, 1) + 0.5))
	arg_10_2 = math.max(1, math.floor(var_0_5(arg_10_2, 1) + 0.5))

	local var_10_0 = var_0_3.chooseDensity(arg_10_3)

	if not arg_10_4 and var_0_7(arg_10_0, arg_10_1, arg_10_2, var_10_0) then
		return arg_10_0, false, var_0_6(arg_10_0), nil
	end

	local var_10_1, var_10_2 = var_0_8(arg_10_1, arg_10_2, var_10_0)

	if not var_10_1 then
		if arg_10_0 then
			return arg_10_0, false, var_0_6(arg_10_0), var_10_2
		end

		if math.abs(var_10_0 - 1) > var_0_4 then
			var_10_1, var_10_2 = var_0_8(arg_10_1, arg_10_2, 1)
		end
	end

	if not var_10_1 then
		return nil, false, 1, var_10_2
	end

	if arg_10_0 and arg_10_0 ~= var_10_1 and arg_10_0.release then
		pcall(arg_10_0.release, arg_10_0)
	end

	return var_10_1, true, var_0_6(var_10_1), nil
end

local var_0_9 = var_0_3
local var_0_10
local var_0_11 = {}
local var_0_12 = false
local var_0_13
local var_0_14 = 3000
local var_0_15 = 2000

function var_0_11.toggle()
	var_0_12 = not var_0_12

	return var_0_12
end

function var_0_11.layout(arg_12_0, arg_12_1, arg_12_2, arg_12_3)
	if not var_0_12 or arg_12_0 <= 0 or arg_12_1 <= 0 then
		return nil
	end

	local var_12_0 = math.min(arg_12_0 / var_0_14, arg_12_1 / var_0_15)
	local var_12_1 = var_0_14 * var_12_0
	local var_12_2 = var_0_15 * var_12_0
	local var_12_3 = (arg_12_0 - var_12_1) * 0.5
	local var_12_4 = (arg_12_1 - var_12_2) * 0.5
	local var_12_5 = math.min(var_0_14 / arg_12_2, var_0_15 / arg_12_3)

	return {
		x = var_12_3,
		y = var_12_4,
		w = var_12_1,
		h = var_12_2,
		scale = var_12_5 * var_12_0,
		gameX = var_12_3 + math.floor((var_0_14 - arg_12_2 * var_12_5) * 0.5 + 0.5) * var_12_0,
		gameY = var_12_4 + math.floor((var_0_15 - arg_12_3 * var_12_5) * 0.5 + 0.5) * var_12_0
	}
end

function var_0_11.draw()
	if not var_0_12 then
		return
	end

	local var_13_0 = love.graphics
	local var_13_1 = var_13_0.getWidth()
	local var_13_2 = var_13_0.getHeight()
	local var_13_3 = var_0_11.layout(var_13_1, var_13_2, 640, 360)

	if not var_13_3 then
		return
	end

	if not var_0_13 then
		var_0_13 = var_13_0.newFont(14)
	end

	var_13_0.push("all")
	var_13_0.origin()
	var_13_0.setShader()
	var_13_0.setScissor()
	var_13_0.setStencilTest()
	var_13_0.setBlendMode("alpha", "alphamultiply")
	var_13_0.setColor(0.12, 0.14, 0.18, 1)
	var_13_0.rectangle("fill", 0, 0, var_13_3.x, var_13_2)
	var_13_0.rectangle("fill", var_13_3.x + var_13_3.w, 0, var_13_1 - var_13_3.x - var_13_3.w, var_13_2)
	var_13_0.rectangle("fill", var_13_3.x, 0, var_13_3.w, var_13_3.y)
	var_13_0.rectangle("fill", var_13_3.x, var_13_3.y + var_13_3.h, var_13_3.w, var_13_2 - var_13_3.y - var_13_3.h)
	var_13_0.setColor(0.5, 0.7, 0.9, 1)
	var_13_0.setLineWidth(1)
	var_13_0.setLineStyle("rough")
	var_13_0.rectangle("line", var_13_3.x + 0.5, var_13_3.y + 0.5, var_13_3.w - 1, var_13_3.h - 1)
	var_13_0.setFont(require("src.data.font_resolver").developerFont(_G.ui and _G.ui.font or var_0_13))
	var_13_0.printf(require("src.data.language").getText("display_preview_hint", "ko"), var_13_3.x + 8, var_13_3.y + 8, var_13_3.w - 16, "center")
	var_13_0.pop()
end

local var_0_16 = var_0_11

return {
	layout = var_0_1,
	canvas = var_0_9,
	preview = var_0_16
}
