local var_0_0
local var_0_1 = {}
local var_0_2 = {}

local function var_0_3(arg_1_0)
	if arg_1_0 < 0 then
		return 0
	end

	if arg_1_0 > 1 then
		return 1
	end

	return arg_1_0
end

local function var_0_4(arg_2_0, arg_2_1, arg_2_2)
	local var_2_0 = love.image.newImageData(arg_2_0, arg_2_1)
	local var_2_1 = (arg_2_0 - 1) * 0.5
	local var_2_2 = (arg_2_1 - 1) * 0.62
	local var_2_3 = math.max(1, (arg_2_0 - 2) * 0.5)
	local var_2_4 = math.max(1, (arg_2_1 - 2) * 0.5)
	local var_2_5 = arg_2_2 or 2

	for iter_2_0 = 0, arg_2_1 - 1 do
		for iter_2_1 = 0, arg_2_0 - 1 do
			local var_2_6 = (iter_2_1 - var_2_1) / var_2_3
			local var_2_7 = (iter_2_0 - var_2_2) / var_2_4
			local var_2_8 = math.pow(math.abs(var_2_6), var_2_5) + math.pow(math.abs(var_2_7), var_2_5)
			local var_2_9 = 0

			if iter_2_0 < arg_2_1 - 1 and var_2_8 <= 1 then
				var_2_9 = 0.36
			end

			var_2_0:setPixel(iter_2_1, iter_2_0, 0, 0, 0, var_2_9)
		end
	end

	local var_2_10 = love.graphics.newImage(var_2_0)

	var_2_10:setFilter("nearest", "nearest")

	return var_2_10
end

local function var_0_5(arg_3_0, arg_3_1, arg_3_2)
	return tostring(arg_3_0) .. "x" .. tostring(arg_3_1) .. "p" .. tostring(arg_3_2 or 2)
end

function var_0_1.get(arg_4_0, arg_4_1, arg_4_2)
	arg_4_0 = math.max(1, math.floor(arg_4_0 or 1))
	arg_4_1 = math.max(1, math.floor(arg_4_1 or 1))

	local var_4_0 = var_0_5(arg_4_0, arg_4_1, arg_4_2)
	local var_4_1 = var_0_2[var_4_0]

	if not var_4_1 then
		var_4_1 = var_0_4(arg_4_0, arg_4_1, arg_4_2)
		var_0_2[var_4_0] = var_4_1
	end

	return var_4_1, arg_4_0, arg_4_1
end

function var_0_1.draw(arg_5_0, arg_5_1, arg_5_2, arg_5_3, arg_5_4, arg_5_5, arg_5_6, arg_5_7)
	if not arg_5_4 or arg_5_4 <= 0 then
		return
	end

	local var_5_0, var_5_1, var_5_2 = var_0_1.get(arg_5_2, arg_5_3, arg_5_7)

	if not var_5_0 then
		return
	end

	arg_5_5 = var_0_3(arg_5_5 or 1)

	local var_5_3, var_5_4 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha")

	local var_5_5 = 1
	local var_5_6 = 1
	local var_5_7 = 1

	if arg_5_6 and type(arg_5_6) == "table" then
		var_5_5 = arg_5_6[1] or 1
		var_5_6 = arg_5_6[2] or 1
		var_5_7 = arg_5_6[3] or 1
	end

	love.graphics.setColor(var_5_5, var_5_6, var_5_7, arg_5_5)
	love.graphics.draw(var_5_0, math.floor(arg_5_0 + 0.5), math.floor(arg_5_1 + 0.5), 0, arg_5_4, arg_5_4, var_5_1 / 2, var_5_2)
	love.graphics.setColor(1, 1, 1, 1)

	if var_5_3 then
		love.graphics.setBlendMode(var_5_3, var_5_4)
	end
end

local var_0_6 = var_0_1
local var_0_7
local var_0_8 = {}

local function var_0_9(arg_6_0)
	arg_6_0 = tonumber(arg_6_0) or 0

	if arg_6_0 < 0 then
		return 0
	end

	if arg_6_0 > 1 then
		return 1
	end

	return arg_6_0
end

function var_0_8.drawTrack(arg_7_0)
	arg_7_0 = arg_7_0 or {}

	local var_7_0 = arg_7_0.bgColor or {
		0.05,
		0.05,
		0.05,
		0.85
	}
	local var_7_1 = tonumber(arg_7_0.alphaMul) or 1

	love.graphics.setColor(var_7_0[1] or 0, var_7_0[2] or 0, var_7_0[3] or 0, (var_7_0[4] or 1) * var_7_1)
	love.graphics.rectangle("fill", arg_7_0.x or 0, arg_7_0.y or 0, math.max(0, tonumber(arg_7_0.w) or 0), math.max(0, tonumber(arg_7_0.h) or 0))
end

function var_0_8.drawFill(arg_8_0)
	arg_8_0 = arg_8_0 or {}

	local var_8_0 = tonumber(arg_8_0.x) or 0
	local var_8_1 = tonumber(arg_8_0.y) or 0
	local var_8_2 = math.max(0, tonumber(arg_8_0.w) or 0)
	local var_8_3 = math.max(0, tonumber(arg_8_0.h) or 0)
	local var_8_4 = var_0_9(arg_8_0.progress)
	local var_8_5 = var_8_2 * var_8_4

	if var_8_5 <= 0 or var_8_3 <= 0 then
		return 0
	end

	local var_8_6 = arg_8_0.fillColor or {
		0.2,
		0.8,
		0.4,
		0.95
	}
	local var_8_7 = tonumber(arg_8_0.alphaMul) or 1

	love.graphics.setColor(var_8_6[1] or 1, var_8_6[2] or 1, var_8_6[3] or 1, (var_8_6[4] or 1) * var_8_7)
	love.graphics.rectangle("fill", var_8_0, var_8_1, var_8_5, var_8_3)

	local var_8_8 = arg_8_0.bloom

	if var_8_8 == false then
		return var_8_5
	end

	if var_8_8 == nil or var_8_8.enabled ~= false then
		local var_8_9 = arg_8_0.bloomProgress

		if var_8_9 == nil then
			var_8_9 = var_8_4
		end

		local var_8_10 = var_8_2 * var_0_9(var_8_9)

		if var_8_10 <= 0 then
			return var_8_5
		end

		var_8_8 = var_8_8 or {}

		local var_8_11 = var_8_8.color or arg_8_0.previewColor or var_8_6
		local var_8_12 = tonumber(var_8_8.alpha) or 0.16
		local var_8_13 = tonumber(var_8_8.pulseAmp) or 0
		local var_8_14 = tonumber(var_8_8.pulseHz) or 0
		local var_8_15 = tonumber(var_8_8.expand) or 6
		local var_8_16 = math.max(1, math.floor(tonumber(var_8_8.layers) or 12))
		local var_8_17 = tonumber(var_8_8.softness) or 2.4
		local var_8_18 = 1

		if var_8_13 > 0 and var_8_14 > 0 then
			var_8_18 = 0.5 + 0.5 * math.sin(love.timer.getTime() * (math.pi * 2) * var_8_14)
		end

		local var_8_19 = (var_8_12 + var_8_13 * var_8_18) * var_8_7
		local var_8_20 = var_8_11[1] or 1
		local var_8_21 = var_8_11[2] or 1
		local var_8_22 = var_8_11[3] or 1
		local var_8_23 = var_8_11[4] or 1
		local var_8_24, var_8_25 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_8_26 = var_8_15 * (tonumber(arg_8_0.scale) or 1)

		for iter_8_0 = 1, var_8_16 do
			local var_8_27 = (iter_8_0 - 0.5) / var_8_16
			local var_8_28 = var_8_26 * var_8_27^1.05
			local var_8_29 = var_8_19 * math.exp(-var_8_27 * var_8_17) * 0.7

			love.graphics.setColor(var_8_20, var_8_21, var_8_22, var_8_23 * var_8_29)

			local var_8_30 = math.max(2, var_8_3 * 0.6 + var_8_28)

			love.graphics.rectangle("fill", var_8_0 - var_8_28, var_8_1 - var_8_28, var_8_10 + var_8_28 * 2, var_8_3 + var_8_28 * 2, var_8_30, var_8_30)
		end

		love.graphics.setBlendMode(var_8_24 or "alpha", var_8_25 or "alphamultiply")
	end

	return var_8_5
end

function var_0_8.drawGrid(arg_9_0)
	arg_9_0 = arg_9_0 or {}

	local var_9_0 = math.max(1, math.floor(tonumber(arg_9_0.steps) or 1))

	if var_9_0 <= 1 then
		return
	end

	local var_9_1 = tonumber(arg_9_0.x) or 0
	local var_9_2 = tonumber(arg_9_0.y) or 0
	local var_9_3 = math.max(0, tonumber(arg_9_0.w) or 0)
	local var_9_4 = math.max(0, tonumber(arg_9_0.h) or 0)
	local var_9_5 = arg_9_0.gridColor or {
		0,
		0,
		0,
		0.15
	}
	local var_9_6 = arg_9_0.cellTintColor
	local var_9_7 = tonumber(arg_9_0.alphaMul) or 1

	if var_9_6 then
		love.graphics.setColor(var_9_6[1] or 0, var_9_6[2] or 0, var_9_6[3] or 0, (var_9_6[4] or 1) * var_9_7)

		for iter_9_0 = 2, var_9_0, 2 do
			local var_9_8 = math.floor(var_9_1 + var_9_3 / var_9_0 * (iter_9_0 - 1))
			local var_9_9 = math.floor(var_9_1 + var_9_3 / var_9_0 * iter_9_0)

			love.graphics.rectangle("fill", var_9_8, var_9_2, math.max(0, var_9_9 - var_9_8), var_9_4)
		end
	end

	love.graphics.setColor(var_9_5[1] or 0, var_9_5[2] or 0, var_9_5[3] or 0, (var_9_5[4] or 1) * var_9_7)

	for iter_9_1 = 1, var_9_0 - 1 do
		local var_9_10 = math.floor(var_9_1 + var_9_3 / var_9_0 * iter_9_1)

		love.graphics.rectangle("fill", var_9_10, var_9_2, 1, var_9_4)
	end
end

function var_0_8.draw(arg_10_0)
	var_0_8.drawTrack(arg_10_0)

	local var_10_0 = var_0_8.drawFill(arg_10_0)

	var_0_8.drawGrid(arg_10_0)

	return var_10_0
end

local var_0_10 = var_0_8
local var_0_11
local var_0_12 = {}
local var_0_13 = 4

local function var_0_14()
	return love.timer and love.timer.getTime and love.timer.getTime() or 0
end

local function var_0_15(arg_12_0, arg_12_1)
	local var_12_0 = var_0_14()

	if var_12_0 - (arg_12_0.lastSoundT or -10) < 0.035 then
		return
	end

	local var_12_1 = rawget(_G, "loadedAssets")
	local var_12_2 = var_12_1 and var_12_1.audio and var_12_1.audio.buttonHover

	if not var_12_2 or not var_12_2.clone then
		return
	end

	arg_12_0.sounds = arg_12_0.sounds or {}

	local var_12_3

	for iter_12_0, iter_12_1 in ipairs(arg_12_0.sounds) do
		if iter_12_1 and iter_12_1.isPlaying and not iter_12_1:isPlaying() then
			var_12_3 = iter_12_1

			break
		end
	end

	if not var_12_3 and #arg_12_0.sounds < var_0_13 then
		var_12_3 = var_12_2:clone()
		arg_12_0.sounds[#arg_12_0.sounds + 1] = var_12_3
	end

	if not var_12_3 then
		return
	end

	local var_12_4 = arg_12_1 and arg_12_1.menuSettings and arg_12_1.menuSettings.sfxVolume or 1

	if var_12_3.setVolume then
		var_12_3:setVolume(var_12_4 * 0.28)
	end

	if var_12_3.setPitch then
		var_12_3:setPitch(1.15 + 0.03 * ((arg_12_0.serial or 0) % 2))
	end

	var_12_3:play()

	arg_12_0.lastSoundT = var_12_0
end

function var_0_12.track(arg_13_0, arg_13_1, arg_13_2)
	if not arg_13_0 then
		return
	end

	local var_13_0 = math.floor((tonumber(arg_13_1) or 0) + 0.5)

	if arg_13_0.value == nil then
		arg_13_0.value = var_13_0

		return
	end

	if var_13_0 ~= arg_13_0.value then
		local var_13_1 = var_13_0 - arg_13_0.value

		arg_13_0.value = var_13_0
		arg_13_0.impactT = var_0_14()
		arg_13_0.serial = (arg_13_0.serial or 0) + 1

		if var_13_1 < 0 then
			arg_13_0.damageT = arg_13_0.impactT
			arg_13_0.damageSerial = arg_13_0.serial
		end

		var_0_15(arg_13_0, arg_13_2)
	end
end

function var_0_12.getPunch(arg_14_0)
	if not arg_14_0 then
		return 1, 1, 0
	end

	local var_14_0 = var_0_14() - (arg_14_0.impactT or -10)
	local var_14_1 = 0

	if var_14_0 >= 0 and var_14_0 < 0.09 then
		var_14_1 = math.exp(-32 * var_14_0)
	end

	local var_14_2 = (arg_14_0.serial or 0) % 2 == 0 and -1 or 1

	return 1 + 0.18 * var_14_1, 1 - 0.09 * var_14_1, var_14_2 * 1.5 * var_14_1
end

function var_0_12.getDamageSlice(arg_15_0)
	if not arg_15_0 then
		return 0, 0
	end

	local var_15_0 = var_0_14() - (arg_15_0.damageT or -10)

	if var_15_0 < 0 or var_15_0 >= 0.28 then
		return 0, 0
	end

	local var_15_1 = var_15_0 / 0.28
	local var_15_2 = var_15_1 < 0.18 and var_15_1 / 0.18 or 1 - (var_15_1 - 0.18) / 0.82
	local var_15_3 = math.max(0, math.min(1, var_15_2))
	local var_15_4 = (arg_15_0.damageSerial or 0) % 2 == 0 and -1 or 1

	return var_15_3, var_15_4
end

local var_0_16 = setmetatable({}, {
	__mode = "k"
})

function var_0_12.drawCounter(arg_16_0, arg_16_1, arg_16_2, arg_16_3, arg_16_4, arg_16_5, arg_16_6)
	local var_16_0 = var_0_16[arg_16_0]
	local var_16_1 = var_0_14()

	if not var_16_0 then
		var_16_0 = {
			value = arg_16_1
		}
		var_0_16[arg_16_0] = var_16_0
	elseif var_16_0.value ~= arg_16_1 then
		var_16_0.previous, var_16_0.value, var_16_0.started = var_16_0.displayed or var_16_0.value, arg_16_1, var_16_1
	end

	if arg_16_1 == nil then
		var_16_0.previous, var_16_0.started, var_16_0.displayed = nil

		return
	end

	local var_16_2 = math.max(0, math.min(1, (var_16_1 - (var_16_0.started or var_16_1 - 1)) / 0.62))
	local var_16_3 = 1 - (1 - var_16_2)^3
	local var_16_4 = 1
	local var_16_5 = 0
	local var_16_6 = 0
	local var_16_7 = 0

	if var_16_0.previous ~= nil then
		if var_16_2 < 0.16 then
			var_16_4 = 0.72 + 0.73 * (var_16_2 / 0.16)
			var_16_6 = -3 * (1 - var_16_2 / 0.16)
			var_16_7 = var_16_2 / 0.16
		elseif var_16_2 < 0.3 then
			local var_16_8 = (var_16_2 - 0.16) / 0.14

			var_16_4 = 1.45 - 0.57 * var_16_8
			var_16_5 = math.floor(math.sin(var_16_8 * math.pi * 5) * 1.5 * (1 - var_16_8) + 0.5)
			var_16_7 = 1 - var_16_8
		elseif var_16_2 < 0.46 then
			var_16_4 = 0.88 + 0.2 * ((var_16_2 - 0.3) / 0.16)
		else
			var_16_4 = 1.08 - 0.08 * ((var_16_2 - 0.46) / 0.54)
		end
	end

	var_16_0.displayed = math.max(0, math.floor((var_16_0.previous or arg_16_1) + (arg_16_1 - (var_16_0.previous or arg_16_1)) * var_16_3 + 0.5))

	local var_16_9 = love.graphics

	var_16_9.push("all")
	var_16_9.setShader()
	var_16_9.setFont(arg_16_2)
	var_16_9.translate(arg_16_3 + var_16_5, arg_16_4 + var_16_6)
	var_16_9.scale(arg_16_5 * var_16_4, arg_16_5 * var_16_4)

	local var_16_10 = tostring(var_16_0.displayed)

	var_16_9.setColor(arg_16_6[1] + (1 - arg_16_6[1]) * var_16_7, arg_16_6[2] + (1 - arg_16_6[2]) * var_16_7, arg_16_6[3] + (1 - arg_16_6[3]) * var_16_7, arg_16_6[4] or 1)
	var_16_9.print(var_16_10, -arg_16_2:getWidth(var_16_10) * 0.5, -arg_16_2:getHeight() * 0.5)
	var_16_9.pop()

	if var_16_2 >= 1 then
		var_16_0.previous, var_16_0.started = nil
	end
end

local var_0_17 = var_0_12
local var_0_18
local var_0_19 = {}
local var_0_20 = require("src.data.font_resolver")
local var_0_21 = 640
local var_0_22 = 360
local var_0_23 = 3
local var_0_24 = 2
local var_0_25
local var_0_26 = false
local var_0_27
local var_0_28 = {}
local var_0_29 = {}
local var_0_30 = 0
local var_0_31 = {
	1,
	1,
	1,
	1
}

local function var_0_32()
	for iter_17_0 in pairs(var_0_28) do
		var_0_28[iter_17_0] = nil
	end
end

local function var_0_33(arg_18_0)
	for iter_18_0 = arg_18_0, #var_0_29 do
		local var_18_0 = var_0_29[iter_18_0]

		var_18_0.key = nil
		var_18_0.text = nil
		var_18_0.font = nil
		var_18_0.ready = false
	end
end

local function var_0_34()
	if var_0_25 and var_0_25 ~= false and var_0_25.release then
		pcall(var_0_25.release, var_0_25)
	end

	if var_0_27 and var_0_27 ~= false and var_0_27.release then
		pcall(var_0_27.release, var_0_27)
	end

	var_0_25 = false
	var_0_26 = false
	var_0_27 = false

	var_0_32()
end

local function var_0_35()
	if var_0_25 ~= nil then
		return var_0_25 or nil
	end

	local var_20_0, var_20_1 = pcall(love.graphics.newCanvas, var_0_21, var_0_22, {
		dpiscale = 1,
		msaa = 0,
		format = "rgba8"
	})

	if not var_20_0 or not var_20_1 then
		var_0_25 = false
		var_0_27 = false

		return nil
	end

	var_20_1:setFilter("nearest", "nearest")

	local var_20_2, var_20_3 = pcall(love.graphics.newQuad, 0, 0, 1, 1, var_0_21, var_0_22)

	if not var_20_2 or not var_20_3 then
		pcall(var_20_1.release, var_20_1)

		var_0_25 = false
		var_0_27 = false

		return nil
	end

	var_0_25 = var_20_1
	var_0_26 = false
	var_0_27 = var_20_3

	return var_0_25
end

local function var_0_36(arg_21_0)
	if not arg_21_0 then
		return nil
	end

	if arg_21_0.combatNumberFont then
		return arg_21_0.combatNumberFont
	end

	local var_21_0 = var_0_20.resolve("src/data/font/Galmuri9W.fnt")

	if arg_21_0.fontInfo and arg_21_0.fontInfo.path == var_21_0 then
		return arg_21_0.font
	end

	return nil
end

local function var_0_37(arg_22_0, arg_22_1, arg_22_2, arg_22_3, arg_22_4, arg_22_5, arg_22_6, arg_22_7)
	if not arg_22_0 or not arg_22_1 or not arg_22_2 or var_0_28[arg_22_0] ~= nil then
		return
	end

	var_0_30 = var_0_30 + 1

	local var_22_0 = var_0_29[var_0_30]

	if not var_22_0 then
		var_22_0 = {}
		var_0_29[var_0_30] = var_22_0
	end

	var_22_0.key = arg_22_0
	var_22_0.text = tostring(arg_22_1)
	var_22_0.font = arg_22_2
	var_22_0.scale = tonumber(arg_22_3) or 1
	var_22_0.fillR = arg_22_4 or 1
	var_22_0.fillG = arg_22_5 or 1
	var_22_0.fillB = arg_22_6 or 1
	var_22_0.outline = math.max(0, math.min(1, tonumber(arg_22_7) or 0))
	var_22_0.ready = false
	var_0_28[arg_22_0] = false
end

local function var_0_38(arg_23_0, arg_23_1, arg_23_2, arg_23_3, arg_23_4, arg_23_5, arg_23_6, arg_23_7, arg_23_8)
	if not arg_23_0 then
		return
	end

	for iter_23_0 = #arg_23_0, 1, -1 do
		local var_23_0 = arg_23_0[iter_23_0]
		local var_23_1 = var_23_0.amt or 0
		local var_23_2 = var_23_1 >= 0
		local var_23_3 = (var_23_2 and "+" or "-") .. tostring(math.abs(var_23_1))

		if var_23_2 then
			var_0_37(var_23_0, var_23_3, arg_23_1, arg_23_2, arg_23_3, arg_23_4, arg_23_5, 0)
		else
			var_0_37(var_23_0, var_23_3, arg_23_1, arg_23_2, arg_23_6, arg_23_7, arg_23_8, 0)
		end
	end
end

local function var_0_39(arg_24_0, arg_24_1)
	if not arg_24_0 then
		return
	end

	for iter_24_0, iter_24_1 in ipairs(arg_24_0) do
		local var_24_0 = iter_24_1 and iter_24_1.damagePopups

		if var_24_0 then
			for iter_24_2 = #var_24_0, 1, -1 do
				local var_24_1 = var_24_0[iter_24_2]
				local var_24_2 = math.max(0.0001, tonumber(var_24_1.dur) or 0.0001)
				local var_24_3 = math.min(1, (tonumber(var_24_1.t) or 0) / var_24_2)
				local var_24_4 = 0.24
				local var_24_5 = math.min(1, var_24_3 / var_24_4)
				local var_24_6 = 0.36 + 0.64 * (var_24_5 * var_24_5 * (3 - 2 * var_24_5))
				local var_24_7 = var_24_1.skillBig == true
				local var_24_8 = var_24_7 and tostring(math.abs(var_24_1.amt)) .. "!" or tostring(math.abs(var_24_1.amt))
				local var_24_9
				local var_24_10
				local var_24_11

				if var_24_1.kind == "heal" then
					var_24_9, var_24_10, var_24_11 = 0.3, 1, 0.48
				elseif var_24_1.kind == "enemySkill" then
					var_24_9, var_24_10, var_24_11 = 1, 0.26, 0.14
				elseif var_24_7 then
					var_24_9, var_24_10, var_24_11 = 1, 0.86, 0.25
				elseif iter_24_1.side == "enemy" then
					var_24_9, var_24_10, var_24_11 = 0.86, 0.86, 0.86
				else
					var_24_9, var_24_10, var_24_11 = 1, 0.6, 0.2
				end

				local var_24_12 = var_24_7 and 0.19 or 0.15
				local var_24_13 = math.max(0, math.min(1, (tonumber(var_24_1.t) or 0) / var_24_12))
				local var_24_14 = var_24_7 and 0.38 or 0.33
				local var_24_15
				local var_24_16

				if var_24_13 < var_24_14 then
					var_24_16 = 1
				else
					local var_24_17 = (var_24_13 - var_24_14) / math.max(0.001, 1 - var_24_14)

					var_24_16 = 1 - var_24_17 * var_24_17
				end

				local var_24_18 = math.max(0, math.min(1, var_24_16))

				var_0_37(var_24_1, var_24_8, arg_24_1, var_24_6, var_24_9 + (1 - var_24_9) * var_24_18, var_24_10 + (1 - var_24_10) * var_24_18, var_24_11 + (1 - var_24_11) * var_24_18, var_24_18)
			end
		end
	end
end

local function var_0_40(arg_25_0, arg_25_1)
	local var_25_0 = var_0_36(arg_25_0)

	if not var_25_0 then
		return
	end

	local var_25_1 = arg_25_0.goldDisplay or {}

	if var_25_1.enabled then
		local var_25_2 = var_25_1.scale or 1

		if var_25_1.integerScale then
			var_25_2 = math.max(1, math.floor(var_25_2 + 0.5))
		end

		var_0_38(arg_25_0._goldPopups, var_25_0, var_25_2, 0.6274509803921569, 0.9019607843137255, 0.6274509803921569, 1, 0.42, 0.37)
	end

	local var_25_3 = arg_25_0.jungsuDisplay or {}

	if var_25_3.enabled then
		local var_25_4 = var_25_3.scale or 1

		if var_25_3.integerScale then
			var_25_4 = math.max(1, math.floor(var_25_4 + 0.5))
		end

		local var_25_5 = arg_25_0.heartNumber and arg_25_0.heartNumber.color or {
			1,
			0.5215686275,
			0.5215686275,
			1
		}

		var_0_38(arg_25_0._jungsuPopups, var_25_0, var_25_4, 0.6274509803921569, 0.9019607843137255, 0.6274509803921569, var_25_5[1] or 1, var_25_5[2] or 0.52, var_25_5[3] or 0.52)
	end

	if arg_25_1 and arg_25_1.baseHP ~= nil then
		local var_25_6 = arg_25_0.heartNumber or {}

		var_0_38(arg_25_0._hpPopups, var_25_0, var_25_6.popupScale or 1, 0.6274509803921569, 0.9019607843137255, 0.6274509803921569, 1, 0.42, 0.37)
	end

	var_0_39(arg_25_1 and arg_25_1.allies, var_25_0)
	var_0_39(arg_25_1 and arg_25_1.enemies, var_25_0)
end

local function var_0_41()
	local var_26_0 = var_0_24
	local var_26_1 = var_0_24
	local var_26_2 = 0

	for iter_26_0 = 1, var_0_30 do
		local var_26_3 = var_0_29[iter_26_0]
		local var_26_4 = math.max(1, math.ceil(var_26_3.font:getWidth(var_26_3.text) * var_26_3.scale))
		local var_26_5 = math.max(1, math.ceil(var_26_3.font:getHeight() * var_26_3.scale))
		local var_26_6 = var_26_4 + var_0_23 * 2
		local var_26_7 = var_26_5 + var_0_23 * 2

		if var_26_0 + var_26_6 > var_0_21 - var_0_24 then
			var_26_0 = var_0_24
			var_26_1 = var_26_1 + var_26_2 + var_0_24
			var_26_2 = 0
		end

		if var_26_6 <= var_0_21 - var_0_24 * 2 and var_26_7 <= var_0_22 - var_0_24 * 2 and var_26_1 + var_26_7 <= var_0_22 - var_0_24 then
			var_26_3.x = var_26_0
			var_26_3.y = var_26_1
			var_26_3.w = var_26_6
			var_26_3.h = var_26_7
			var_26_3.ready = true
			var_0_28[var_26_3.key] = var_26_3
			var_26_0 = var_26_0 + var_26_6 + var_0_24
			var_26_2 = math.max(var_26_2, var_26_7)
		end
	end
end

local function var_0_42(arg_27_0)
	local var_27_0 = arg_27_0.x + var_0_23
	local var_27_1 = arg_27_0.y + var_0_23
	local var_27_2 = arg_27_0.scale
	local var_27_3 = arg_27_0.outline

	love.graphics.setShader()
	love.graphics.setFont(arg_27_0.font)
	love.graphics.setColor(var_27_3, var_27_3, var_27_3, 1)
	love.graphics.print(arg_27_0.text, var_27_0 - 1, var_27_1, 0, var_27_2, var_27_2)
	love.graphics.print(arg_27_0.text, var_27_0 + 1, var_27_1, 0, var_27_2, var_27_2)
	love.graphics.print(arg_27_0.text, var_27_0, var_27_1 - 1, 0, var_27_2, var_27_2)
	love.graphics.print(arg_27_0.text, var_27_0, var_27_1 + 1, 0, var_27_2, var_27_2)
	love.graphics.print(arg_27_0.text, var_27_0 - 1, var_27_1 - 1, 0, var_27_2, var_27_2)
	love.graphics.print(arg_27_0.text, var_27_0 + 1, var_27_1 - 1, 0, var_27_2, var_27_2)
	love.graphics.print(arg_27_0.text, var_27_0 - 1, var_27_1 + 1, 0, var_27_2, var_27_2)
	love.graphics.print(arg_27_0.text, var_27_0 + 1, var_27_1 + 1, 0, var_27_2, var_27_2)

	local var_27_4 = rawget(_G, "__slotPrintPixelTextTinted")

	if type(var_27_4) == "function" then
		var_0_31[1], var_0_31[2], var_0_31[3], var_0_31[4] = arg_27_0.fillR, arg_27_0.fillG, arg_27_0.fillB, 1

		var_27_4(arg_27_0.text, arg_27_0.font, var_27_0, var_27_1, var_27_2, var_0_31)
	else
		love.graphics.setColor(arg_27_0.fillR, arg_27_0.fillG, arg_27_0.fillB, 1)
		love.graphics.print(arg_27_0.text, var_27_0, var_27_1, 0, var_27_2, var_27_2)
	end
end

function var_0_19.prepare(arg_28_0, arg_28_1)
	var_0_32()
	var_0_33(1)

	var_0_30 = 0

	if not love or not love.graphics or not var_0_35() then
		return false
	end

	var_0_40(arg_28_0, arg_28_1)

	if var_0_30 > 0 then
		var_0_41()
	elseif var_0_26 then
		return true
	end

	love.graphics.push("all")

	local var_28_0 = pcall(function()
		love.graphics.setCanvas(var_0_25)
		love.graphics.origin()
		love.graphics.setScissor()
		love.graphics.setStencilTest()

		if love.graphics.setDepthMode then
			love.graphics.setDepthMode()
		end

		love.graphics.setColorMask(true, true, true, true)
		love.graphics.setShader()
		love.graphics.setBlendMode("alpha", "alphamultiply")
		love.graphics.clear(0, 0, 0, 0)

		for iter_29_0 = 1, var_0_30 do
			local var_29_0 = var_0_29[iter_29_0]

			if var_29_0.ready then
				var_0_42(var_29_0)
			end
		end
	end)

	love.graphics.pop()

	if not var_28_0 then
		var_0_34()

		return false
	end

	var_0_26 = true

	return true
end

function var_0_19.prewarm()
	return var_0_19.prepare(nil, nil)
end

function var_0_19.draw(arg_31_0, arg_31_1, arg_31_2, arg_31_3, arg_31_4, arg_31_5, arg_31_6)
	if not var_0_25 or var_0_25 == false or not var_0_27 or var_0_27 == false or not arg_31_0 then
		return false
	end

	local var_31_0 = var_0_28[arg_31_0]

	arg_31_3 = tonumber(arg_31_3) or 1

	if not var_31_0 or var_31_0.text ~= tostring(arg_31_1) or var_31_0.font ~= arg_31_2 or math.abs(var_31_0.scale - arg_31_3) > 1e-06 then
		return false
	end

	local var_31_1 = love.graphics.getShader()
	local var_31_2, var_31_3 = love.graphics.getBlendMode()
	local var_31_4, var_31_5, var_31_6, var_31_7 = love.graphics.getColor()
	local var_31_8 = math.max(0, math.min(1, tonumber(arg_31_6) or 1))
	local var_31_9 = pcall(function()
		var_0_27:setViewport(var_31_0.x, var_31_0.y, var_31_0.w, var_31_0.h, var_0_21, var_0_22)
		love.graphics.setShader()
		love.graphics.setBlendMode("alpha", "premultiplied")
		love.graphics.setColor(var_31_8, var_31_8, var_31_8, var_31_8)
		love.graphics.draw(var_0_25, var_0_27, math.floor((tonumber(arg_31_4) or 0) + 0.5) - var_0_23, math.floor((tonumber(arg_31_5) or 0) + 0.5) - var_0_23)
	end)

	love.graphics.setBlendMode(var_31_2, var_31_3)
	love.graphics.setShader(var_31_1)
	love.graphics.setColor(var_31_4, var_31_5, var_31_6, var_31_7)

	if not var_31_9 then
		var_0_34()

		return false
	end

	return true
end

function var_0_19.release()
	if var_0_25 and var_0_25 ~= false and var_0_25.release then
		pcall(var_0_25.release, var_0_25)
	end

	if var_0_27 and var_0_27 ~= false and var_0_27.release then
		pcall(var_0_27.release, var_0_27)
	end

	var_0_25 = nil
	var_0_26 = false
	var_0_27 = nil

	var_0_32()
	var_0_33(1)

	var_0_30 = 0
end

local var_0_43 = var_0_19
local var_0_44
local var_0_45 = {
	getBounds = function(arg_34_0)
		if type(arg_34_0) ~= "table" or arg_34_0.hidden == true then
			return nil
		end

		local var_34_0 = math.max(0, tonumber(arg_34_0.iw) or 0)
		local var_34_1 = math.max(0, tonumber(arg_34_0.ih) or 0)
		local var_34_2 = math.abs(tonumber(arg_34_0.sx) or 0)
		local var_34_3 = math.abs(tonumber(arg_34_0.sy) or 0)
		local var_34_4 = math.abs(tonumber(arg_34_0.baseSx) or var_34_2)
		local var_34_5 = math.abs(tonumber(arg_34_0.baseSy) or var_34_3)
		local var_34_6 = tonumber(arg_34_0.cx)
		local var_34_7 = tonumber(arg_34_0.cy)

		if not var_34_6 or not var_34_7 or var_34_0 <= 0 or var_34_1 <= 0 then
			return nil
		end

		local var_34_8 = tonumber(arg_34_0.restCX) or var_34_6
		local var_34_9 = tonumber(arg_34_0.restCY) or var_34_7
		local var_34_10 = math.max(0, tonumber(arg_34_0.hitSlopPx) or 0)
		local var_34_11 = math.max(var_34_0 * var_34_2, var_34_0 * var_34_4) * 0.5 + var_34_10
		local var_34_12 = math.max(var_34_1 * var_34_3, var_34_1 * var_34_5) * 0.5 + var_34_10
		local var_34_13 = math.min(var_34_6, var_34_8) - var_34_11
		local var_34_14 = math.max(var_34_6, var_34_8) + var_34_11
		local var_34_15 = math.min(var_34_7, var_34_9) - var_34_12
		local var_34_16 = math.max(var_34_7, var_34_9) + var_34_12

		return var_34_13, var_34_15, var_34_14, var_34_16
	end
}

local function var_0_46(arg_35_0, arg_35_1, arg_35_2, arg_35_3, arg_35_4, arg_35_5, arg_35_6, arg_35_7, arg_35_8, arg_35_9, arg_35_10)
	if not arg_35_0 or type(arg_35_0.getPixel) ~= "function" or arg_35_3 <= 0 or arg_35_4 <= 0 then
		return false
	end

	local var_35_0 = (arg_35_7 - arg_35_5) / arg_35_3 + arg_35_1 * 0.5
	local var_35_1 = (arg_35_8 - arg_35_6) / arg_35_4 + arg_35_2 * 0.5
	local var_35_2 = math.ceil(arg_35_9 / arg_35_3)
	local var_35_3 = math.ceil(arg_35_9 / arg_35_4)
	local var_35_4 = math.max(0, math.floor(var_35_0) - var_35_2)
	local var_35_5 = math.min(arg_35_1 - 1, math.floor(var_35_0) + var_35_2)
	local var_35_6 = math.max(0, math.floor(var_35_1) - var_35_3)
	local var_35_7 = math.min(arg_35_2 - 1, math.floor(var_35_1) + var_35_3)

	for iter_35_0 = var_35_6, var_35_7 do
		for iter_35_1 = var_35_4, var_35_5 do
			local var_35_8, var_35_9, var_35_10, var_35_11 = arg_35_0:getPixel(iter_35_1, iter_35_0)

			if arg_35_10 < (var_35_11 or 0) then
				local var_35_12 = 0

				if var_35_0 < iter_35_1 then
					var_35_12 = iter_35_1 - var_35_0
				elseif var_35_0 > iter_35_1 + 1 then
					var_35_12 = var_35_0 - (iter_35_1 + 1)
				end

				local var_35_13 = 0

				if var_35_1 < iter_35_0 then
					var_35_13 = iter_35_0 - var_35_1
				elseif var_35_1 > iter_35_0 + 1 then
					var_35_13 = var_35_1 - (iter_35_0 + 1)
				end

				if (var_35_12 * arg_35_3)^2 + (var_35_13 * arg_35_4)^2 <= arg_35_9^2 then
					return true
				end
			end
		end
	end

	return false
end

function var_0_45.contains(arg_36_0, arg_36_1, arg_36_2)
	arg_36_1, arg_36_2 = tonumber(arg_36_1), tonumber(arg_36_2)

	if not arg_36_1 or not arg_36_2 then
		return false
	end

	local var_36_0, var_36_1, var_36_2, var_36_3 = var_0_45.getBounds(arg_36_0)

	if not var_36_0 then
		return false
	end

	if arg_36_1 < var_36_0 or var_36_2 <= arg_36_1 or arg_36_2 < var_36_1 or var_36_3 <= arg_36_2 then
		return false
	end

	local var_36_4 = arg_36_0.idata

	if not var_36_4 then
		return true
	end

	local var_36_5 = math.max(0, tonumber(arg_36_0.iw) or 0)
	local var_36_6 = math.max(0, tonumber(arg_36_0.ih) or 0)
	local var_36_7 = math.max(math.abs(tonumber(arg_36_0.sx) or 0), math.abs(tonumber(arg_36_0.baseSx) or 0))
	local var_36_8 = math.max(math.abs(tonumber(arg_36_0.sy) or 0), math.abs(tonumber(arg_36_0.baseSy) or 0))
	local var_36_9 = math.abs(tonumber(arg_36_0.baseSx) or var_36_7)
	local var_36_10 = math.abs(tonumber(arg_36_0.baseSy) or var_36_8)
	local var_36_11 = tonumber(arg_36_0.cx)
	local var_36_12 = tonumber(arg_36_0.cy)
	local var_36_13 = tonumber(arg_36_0.restCX) or var_36_11
	local var_36_14 = tonumber(arg_36_0.restCY) or var_36_12
	local var_36_15 = math.max(0, tonumber(arg_36_0.hitSlopPx) or 0)
	local var_36_16 = math.max(0, tonumber(arg_36_0.alphaThreshold) or 0.05)

	return var_0_46(var_36_4, var_36_5, var_36_6, var_36_7, var_36_8, var_36_11, var_36_12, arg_36_1, arg_36_2, var_36_15, var_36_16) or var_0_46(var_36_4, var_36_5, var_36_6, var_36_9, var_36_10, var_36_13, var_36_14, arg_36_1, arg_36_2, var_36_15, var_36_16)
end

local var_0_47 = var_0_45
local var_0_48
local var_0_49 = {}
local var_0_50

local function var_0_51()
	if var_0_50 then
		return var_0_50
	end

	if love and love.graphics and love.graphics.newFont then
		local var_37_0, var_37_1 = pcall(love.graphics.newFont, 16)

		if var_37_0 then
			var_0_50 = var_37_1
		end
	end

	return var_0_50 or love.graphics and love.graphics.getFont and love.graphics.getFont()
end

function var_0_49.draw()
	if not love or not love.graphics or not love.timer or not love.timer.getFPS then
		return
	end

	local var_38_0 = var_0_51()

	if not var_38_0 then
		return
	end

	local var_38_1 = math.max(0, math.floor((tonumber(love.timer.getFPS()) or 0) + 0.5))
	local var_38_2 = ("FPS: %d"):format(var_38_1)
	local var_38_3 = 8
	local var_38_4 = 8
	local var_38_5 = 7
	local var_38_6 = 4
	local var_38_7 = var_38_0:getWidth(var_38_2) + var_38_5 * 2
	local var_38_8 = var_38_0:getHeight() + var_38_6 * 2

	love.graphics.push("all")
	love.graphics.setCanvas()
	love.graphics.origin()
	love.graphics.setShader()
	love.graphics.setScissor()
	love.graphics.setStencilTest()
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setFont(var_38_0)
	love.graphics.setColor(0.025, 0.03, 0.07, 0.86)
	love.graphics.rectangle("fill", var_38_3, var_38_4, var_38_7, var_38_8)
	love.graphics.setColor(0.44, 0.48, 0.7, 0.95)
	love.graphics.rectangle("line", var_38_3 + 0.5, var_38_4 + 0.5, var_38_7 - 1, var_38_8 - 1)
	love.graphics.setColor(0, 0, 0, 0.8)
	love.graphics.print(var_38_2, var_38_3 + var_38_5 + 1, var_38_4 + var_38_6 + 1)
	love.graphics.setColor(0.92, 0.94, 1, 1)
	love.graphics.print(var_38_2, var_38_3 + var_38_5, var_38_4 + var_38_6)
	love.graphics.pop()
end

local var_0_52 = var_0_49
local var_0_53
local var_0_54 = {
	uniformScale = function(arg_39_0, arg_39_1)
		local var_39_0 = tonumber(arg_39_0 and (arg_39_0.pixelScaleBase or arg_39_0.frameH)) or 32

		return (tonumber(arg_39_1) or 32) / (var_39_0 > 0 and var_39_0 or 32)
	end,
	classCardY = function(arg_40_0, arg_40_1, arg_40_2, arg_40_3, arg_40_4)
		local var_40_0 = math.min(arg_40_2 / 32, arg_40_3 / 32)

		if var_40_0 >= 1 then
			var_40_0 = math.floor(var_40_0)
		end

		local var_40_1 = 32 * var_40_0
		local var_40_2 = arg_40_4 + math.floor((arg_40_3 - var_40_1) * 0.5 + 0.5) + var_40_1
		local var_40_3 = arg_40_0 and arg_40_0.bounds and arg_40_0.bounds.idle
		local var_40_4 = var_40_3 and var_40_3[1]

		return var_40_2 - (var_40_4 and var_40_4.y + var_40_4.h or arg_40_0 and arg_40_0.frameH or 32) * arg_40_1, var_40_2
	end
}

function var_0_54.classCardShadow(arg_41_0, arg_41_1, arg_41_2, arg_41_3, arg_41_4, arg_41_5, arg_41_6)
	arg_41_5 = arg_41_5 or {}

	local var_41_0 = arg_41_5.shadow or {}
	local var_41_1 = arg_41_0.frameW or 32
	local var_41_2 = math.max(1, arg_41_0.frameH or 32)
	local var_41_3 = tonumber(arg_41_5.allySize32) or 64

	if var_41_3 <= 0 then
		var_41_3 = 64
	end

	local var_41_4 = var_0_54.uniformScale(arg_41_0, var_41_3)

	if var_0_54.quantized(arg_41_1, arg_41_0) then
		var_41_4 = (var_41_1 >= 48 or var_41_2 >= 48) and math.max(1, math.ceil(var_41_3 / var_41_1 - 1e-06)) or math.max(1, math.floor(var_41_3 / var_41_1 + 0.5))
	elseif type(arg_41_1) == "string" and arg_41_1:find("ENEMY_", 1, true) then
		var_41_4 = math.max(1, math.floor(var_41_3 / var_41_1 + 0.5))
	end

	local var_41_5 = var_41_4
	local var_41_6 = var_41_1 * 0.5
	local var_41_7 = var_41_2

	if arg_41_1 ~= "W" and arg_41_1 ~= "A" and arg_41_1 ~= "S" and arg_41_1 ~= "M" and arg_41_1 ~= "D" and arg_41_1 ~= "H" then
		var_41_4 = math.max(1, math.floor(var_41_3 / var_41_1 + 0.5))

		local var_41_8 = math.floor((var_41_3 - var_41_1 * var_41_4) * 0.5 + 0.5)

		var_41_6 = (math.floor((var_41_3 - var_41_1 * var_41_5) * 0.5 + 0.5) + var_41_1 * var_41_5 * 0.5 - var_41_8) / var_41_4
	end

	local var_41_9 = arg_41_0.bounds and arg_41_0.bounds.idle and arg_41_0.bounds.idle[1]

	if arg_41_6 then
		local var_41_10 = arg_41_5.magnusSpriteOffset or {}

		var_41_6 = (var_41_9 and var_41_9.x + var_41_9.w * 0.5 or var_41_6) - math.floor((var_41_10.x or -3) * var_41_4 + 0.5) / var_41_4
		var_41_7 = (var_41_3 - (var_41_9 and math.floor(var_41_3 - (var_41_9.y + var_41_9.h) * var_41_4 + 0.5) or 0) - math.floor((var_41_10.y or -1) * var_41_4 + 0.5)) / var_41_4
	end

	if arg_41_0.shadowFromIdleFoot then
		var_41_6 = var_41_6 + var_0_54.footOffsetX(arg_41_0, var_41_5 / var_41_4, 1)
	end

	local var_41_11 = var_41_6 + (arg_41_1 == "H" and (var_41_0.cavalryOffsetXPx or 0) or 0) / var_41_4
	local var_41_12 = var_41_7 + (var_41_0.yOffsetPx or 0) / var_41_4

	return arg_41_2 + var_41_11 * arg_41_4, arg_41_3 + var_41_12 * arg_41_4, arg_41_4 * var_41_5 / var_41_4
end

function var_0_54.idleFootScan(arg_42_0)
	if not arg_42_0 then
		return nil
	end

	if arg_42_0._idleFootScan ~= nil then
		return arg_42_0._idleFootScan or nil
	end

	local var_42_0 = arg_42_0.quads and arg_42_0.quads.idle and arg_42_0.quads.idle[1]

	if not var_42_0 or not arg_42_0.imageData then
		return nil
	end

	arg_42_0._idleFootScan = false

	local var_42_1 = arg_42_0.imageData
	local var_42_2, var_42_3, var_42_4, var_42_5 = var_42_0:getViewport()
	local var_42_6 = {}
	local var_42_7 = {}
	local var_42_8
	local var_42_9
	local var_42_10 = var_42_4
	local var_42_11 = -1

	for iter_42_0 = 0, var_42_5 - 1 do
		local var_42_12 = {}
		local var_42_13 = 0

		while var_42_13 < var_42_4 do
			local var_42_14, var_42_15, var_42_16, var_42_17 = var_42_1:getPixel(var_42_2 + var_42_13, var_42_3 + iter_42_0)

			if var_42_17 > 0 then
				local var_42_18 = var_42_13

				while var_42_4 > var_42_13 + 1 and select(4, var_42_1:getPixel(var_42_2 + var_42_13 + 1, var_42_3 + iter_42_0)) > 0 do
					var_42_13 = var_42_13 + 1
				end

				var_42_12[#var_42_12 + 1] = {
					l = var_42_18,
					r = var_42_13
				}

				for iter_42_1 = var_42_18, var_42_13 do
					var_42_6[iter_42_0 * var_42_4 + iter_42_1] = true
				end

				var_42_10, var_42_11 = math.min(var_42_10, var_42_18), math.max(var_42_11, var_42_13)
			end

			var_42_13 = var_42_13 + 1
		end

		var_42_7[iter_42_0] = var_42_12

		if #var_42_12 > 0 then
			var_42_8 = var_42_8 or iter_42_0
			var_42_9 = iter_42_0
		end
	end

	if not var_42_9 then
		arg_42_0._idleFootCenterX = false

		return nil
	end

	local var_42_19 = var_42_7[var_42_9]
	local var_42_20 = {
		foot = (var_42_19[1].l + var_42_19[#var_42_19].r + 1) * 0.5,
		row = var_42_9,
		lowest = (var_42_19[1].l + var_42_19[#var_42_19].r + 1) * 0.5
	}
	local var_42_21 = {}
	local var_42_22 = 0

	local function var_42_23(arg_43_0, arg_43_1)
		if arg_43_0 < 0 or arg_43_1 < 0 or arg_43_0 >= var_42_4 or arg_43_1 >= var_42_5 then
			return 0
		end

		return var_42_21[arg_43_1 * var_42_4 + arg_43_0]
	end

	for iter_42_2 = 0, var_42_5 - 1 do
		for iter_42_3 = 0, var_42_4 - 1 do
			var_42_21[iter_42_2 * var_42_4 + iter_42_3] = var_42_6[iter_42_2 * var_42_4 + iter_42_3] and math.min(var_42_23(iter_42_3 - 1, iter_42_2), var_42_23(iter_42_3 - 1, iter_42_2 - 1), var_42_23(iter_42_3, iter_42_2 - 1), var_42_23(iter_42_3 + 1, iter_42_2 - 1)) + 1 or 0
		end
	end

	for iter_42_4 = var_42_5 - 1, 0, -1 do
		for iter_42_5 = var_42_4 - 1, 0, -1 do
			local var_42_24 = iter_42_4 * var_42_4 + iter_42_5

			if var_42_21[var_42_24] > 0 then
				var_42_21[var_42_24] = math.min(var_42_21[var_42_24], var_42_23(iter_42_5 + 1, iter_42_4) + 1, var_42_23(iter_42_5 + 1, iter_42_4 + 1) + 1, var_42_23(iter_42_5, iter_42_4 + 1) + 1, var_42_23(iter_42_5 - 1, iter_42_4 + 1) + 1)
				var_42_22 = math.max(var_42_22, var_42_21[var_42_24])
			end
		end
	end

	local var_42_25 = math.max(2, math.ceil(var_42_22 * 0.5))
	local var_42_26 = {}

	for iter_42_6, iter_42_7 in pairs(var_42_21) do
		if var_42_25 <= iter_42_7 then
			var_42_26[#var_42_26 + 1] = iter_42_6 % var_42_4
		end
	end

	if #var_42_26 > 0 then
		table.sort(var_42_26)

		local var_42_27 = var_42_26[math.floor((#var_42_26 + 1) / 2)] + 0.5

		var_42_20.mid = var_42_27

		local var_42_28 = math.max(3, (var_42_11 - var_42_10 + 1) * 0.2)

		local function var_42_29(arg_44_0)
			return math.max(0, arg_44_0.l - var_42_27, var_42_27 - (arg_44_0.r + 1))
		end

		local var_42_30 = {}

		for iter_42_8 = var_42_9, var_42_9 - math.floor((var_42_9 - var_42_8 + 1) * 0.5), -1 do
			local var_42_31 = {}
			local var_42_32 = {}
			local var_42_33 = false
			local var_42_34
			local var_42_35

			for iter_42_9, iter_42_10 in ipairs(var_42_7[iter_42_8]) do
				local var_42_36 = false

				for iter_42_11, iter_42_12 in ipairs(var_42_30) do
					if iter_42_10.r >= iter_42_12.l - 1 and iter_42_10.l <= iter_42_12.r + 1 then
						var_42_36 = true
					end
				end

				if var_42_36 then
					var_42_32[#var_42_32 + 1] = iter_42_10
				else
					var_42_31[#var_42_31 + 1] = iter_42_10

					if var_42_28 >= var_42_29(iter_42_10) then
						var_42_33 = true
					end

					var_42_34, var_42_35 = math.min(var_42_34 or iter_42_10.l, iter_42_10.l), math.max(var_42_35 or iter_42_10.r, iter_42_10.r)
				end
			end

			if var_42_33 or var_42_34 and var_42_34 <= var_42_27 and var_42_27 <= var_42_35 + 1 then
				var_42_20.foot, var_42_20.row = (var_42_34 + var_42_35 + 1) * 0.5, iter_42_8

				break
			end

			for iter_42_13, iter_42_14 in ipairs(var_42_31) do
				var_42_32[#var_42_32 + 1] = iter_42_14
			end

			var_42_30 = var_42_32
		end
	end

	arg_42_0._idleFootScan = var_42_20
	arg_42_0._idleFootCenterX = var_42_20.foot

	return var_42_20
end

function var_0_54.idleFootX(arg_45_0)
	if not arg_45_0 then
		return nil
	end

	if arg_45_0.reviewedFootX then
		return arg_45_0.reviewedFootX
	end

	local var_45_0 = var_0_54.idleFootScan(arg_45_0)

	return var_45_0 and var_45_0.foot or nil
end

function var_0_54.idleMark(arg_46_0, arg_46_1, arg_46_2)
	if not arg_46_0 or not arg_46_1 then
		return nil
	end

	local var_46_0 = arg_46_1.side == "ally"
	local var_46_1

	if var_46_0 then
		var_46_1 = arg_46_0.getUnitAssetForAlly and arg_46_0:getUnitAssetForAlly(arg_46_1)
	else
		var_46_1 = arg_46_0.getUnitAssetForEnemy and arg_46_0:getUnitAssetForEnemy(arg_46_1)
	end

	local var_46_2 = var_46_1 and var_0_54.idleFootX(var_46_1)

	if not var_46_2 then
		return nil
	end

	local var_46_3 = var_46_1.frameW or 32
	local var_46_4 = var_46_1.frameH or 32
	local var_46_5 = var_46_1.bounds and var_46_1.bounds.idle and var_46_1.bounds.idle[1]
	local var_46_6 = var_46_5 and var_46_5.y + var_46_5.h * (arg_46_2 or 0.66) or var_46_4 * (arg_46_2 or 0.66)
	local var_46_7 = arg_46_0.ui and arg_46_0.ui.battle
	local var_46_8 = tonumber(var_46_7 and var_46_7.allySize32) or 64

	if var_46_8 <= 0 then
		var_46_8 = 64
	end

	if var_46_0 then
		local var_46_9, var_46_10, var_46_11 = var_0_54.allyTransform(arg_46_1, var_46_1, var_46_8, var_46_7)

		if (tonumber(arg_46_1.facing) or 1) < 0 then
			var_46_2 = var_46_3 - var_46_2
		end

		return var_46_9 + var_46_2 * var_46_11, var_46_10 + var_46_6 * var_46_11
	end

	local var_46_12 = math.max(1, math.floor(var_46_8 / 32 + 0.5))

	if (tonumber(arg_46_1.facing) or -1) < 0 then
		var_46_2 = var_46_3 - var_46_2
	end

	return (arg_46_1.x or 0) + (var_46_2 - var_46_3 * 0.5) * var_46_12, (arg_46_1.y or 0) + (var_46_6 - var_46_4 * 0.5) * var_46_12
end

function var_0_54.footOffsetX(arg_47_0, arg_47_1, arg_47_2)
	local var_47_0 = var_0_54.idleFootX(arg_47_0)

	if not var_47_0 then
		return 0
	end

	local var_47_1 = (tonumber(arg_47_2) or 1) < 0 and -1 or 1

	return (var_47_0 - (arg_47_0.frameW or 32) * 0.5) * math.abs(arg_47_1 or 1) * var_47_1
end

function var_0_54.allyShift(arg_48_0, arg_48_1, arg_48_2, arg_48_3, arg_48_4)
	if not arg_48_0 or not arg_48_1 then
		return 0, 0
	end

	if not (function(arg_49_0)
		return arg_48_0.subclass == arg_49_0 or arg_48_0.subclassName == arg_49_0 or arg_48_0.subclassKey == arg_49_0
	end)("마그누스") then
		return 0, 0
	end

	local var_48_0 = arg_48_0.promoteVis

	if var_48_0 and (var_48_0.t or 0) < (var_48_0.hold or 0.45) then
		return 0, 0
	end

	arg_48_2 = tonumber(arg_48_2) or 32
	arg_48_4 = tonumber(arg_48_4) or tonumber(arg_48_0.x) or 0

	local var_48_1 = arg_48_1.frameW or 32
	local var_48_2 = arg_48_2 / math.max(1, arg_48_1.frameH or 32)
	local var_48_3 = var_48_1 * var_48_2
	local var_48_4 = arg_48_1.bounds and arg_48_1.bounds.idle and arg_48_1.bounds.idle[1]
	local var_48_5 = var_48_4 and (var_48_4.x + var_48_4.w * 0.5 - var_48_1 * 0.5) * var_48_2 or 0
	local var_48_6 = math.floor(arg_48_4 - arg_48_2 / 2) + math.floor((arg_48_2 - var_48_3) / 2 + 0.5) - var_48_5 - math.floor(arg_48_4 - var_48_3 * 0.5)
	local var_48_7 = var_48_4 and math.floor(arg_48_2 - (var_48_4.y + var_48_4.h) * var_48_2 + 0.5) or 0
	local var_48_8 = arg_48_3 and arg_48_3.magnusSpriteOffset
	local var_48_9 = var_48_6 + math.floor((var_48_8 and var_48_8.x or -3) * var_48_2 + 0.5)
	local var_48_10 = var_48_7 + math.floor((var_48_8 and var_48_8.y or -1) * var_48_2 + 0.5)

	return var_48_9, var_48_10
end

function var_0_54.allyTransform(arg_50_0, arg_50_1, arg_50_2, arg_50_3)
	arg_50_0, arg_50_1 = arg_50_0 or {}, arg_50_1 or {}
	arg_50_2 = tonumber(arg_50_2) or 32

	local var_50_0 = tonumber(arg_50_1.frameW) or 32
	local var_50_1 = math.max(1, tonumber(arg_50_1.frameH) or 32)
	local var_50_2 = tonumber(arg_50_0.x) or 0
	local var_50_3 = tonumber(arg_50_0.y) or 0
	local var_50_4 = arg_50_0.sym
	local var_50_5 = var_0_54.uniformScale(arg_50_1, arg_50_2)
	local var_50_6 = math.floor(var_50_2 - arg_50_2 * 0.5)
	local var_50_7 = math.floor(var_50_3 - arg_50_2 * 0.5)

	if arg_50_1.pixelScaleBase then
		var_50_6 = math.floor(var_50_2 - var_50_0 * var_50_5 * 0.5)
		var_50_7 = var_50_7 + arg_50_2 - var_50_1 * var_50_5
	elseif var_50_4 == "W" or var_50_4 == "S" or arg_50_0.isFlameSpirit then
		var_50_6 = math.floor(var_50_2 - var_50_0 * var_50_5 * 0.5)

		if var_50_4 == "W" then
			local var_50_8, var_50_9 = var_0_54.allyShift(arg_50_0, arg_50_1, arg_50_2, arg_50_3, var_50_2)

			var_50_6, var_50_7 = var_50_6 + var_50_8, var_50_7 + var_50_9
		end
	elseif var_50_4 == "M" or var_50_4 == "D" then
		if var_50_0 >= 40 or var_50_1 >= 40 then
			local var_50_10 = arg_50_2 / math.max(1, var_50_0)

			var_50_5 = (var_50_0 >= 48 or var_50_1 >= 48) and math.max(1, math.ceil(var_50_10 - 1e-06)) or math.max(1, math.floor(var_50_10 + 0.5))
			var_50_6 = math.floor(var_50_2 - var_50_0 * var_50_5 * 0.5)
			var_50_7 = var_50_7 + arg_50_2 - var_50_1 * var_50_5
		end
	elseif var_50_4 ~= "A" and var_50_4 ~= "H" then
		var_50_5 = math.max(1, math.floor(arg_50_2 / math.max(1, var_50_0) + 0.5))
		var_50_6 = math.floor(var_50_2 - var_50_0 * var_50_5 * 0.5)
		var_50_7 = var_50_7 + arg_50_2 - var_50_1 * var_50_5
	end

	return var_50_6, var_50_7, var_50_5, var_50_5
end

function var_0_54.quantized(arg_51_0, arg_51_1)
	return (arg_51_0 == "D" or arg_51_0 == "M") and arg_51_1 ~= nil and not arg_51_1.pixelScaleBase and ((tonumber(arg_51_1.frameW) or 0) >= 40 or (tonumber(arg_51_1.frameH) or 0) >= 40)
end

function var_0_54.rosterOffset(arg_52_0, arg_52_1, arg_52_2, arg_52_3)
	return math.floor((arg_52_1 - arg_52_0.frameW * arg_52_2 * arg_52_3) * 0.5 + 0.5), arg_52_1 - arg_52_0.frameH * arg_52_2 - math.floor(arg_52_0.frameH * arg_52_2 * (arg_52_3 - 1) * 0.5 + 0.5)
end

local var_0_55 = var_0_54
local var_0_56
local var_0_57 = {}
local var_0_58 = {}
local var_0_59

local function var_0_60()
	if var_0_59 then
		return var_0_59
	end

	local var_53_0 = "    extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel\n    extern vec4 outlineColor;   // RGBA\n    extern float threshold;     // alpha threshold\n    extern float radiusPx;      // outline radius in px (1.0 to 2.0 for sub-pixel logic)\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold){\n        vec2 s = texelStep;\n\n        // Layer 1: Immediate cardinal neighbors (1px) -> Always Solid\n        float aL = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float aR = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float aU = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float aD = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        \n        if (max(max(aL, aR), max(aU, aD)) > threshold) {\n            return outlineColor;\n        }\n\n        // Layer 2: Sub-pixel extension (Hard Cut)\n        // If radius is 1.15, we draw 15% of the 2nd pixel layer solid, then cut off.\n        if (radiusPx > 1.0) {\n            float extra = radiusPx - 1.0;\n            vec2 pos = tc / texelStep;\n            vec2 f = fract(pos); // 0..1 within current texel\n\n            // Left-Left Source (Expanding Right)\n            float aLL = Texel(tex, tc + vec2(-s.x * 2.0, 0.0)).a;\n            if (aLL > threshold && f.x < extra) return outlineColor;\n\n            // Right-Right Source (Expanding Left)\n            float aRR = Texel(tex, tc + vec2( s.x * 2.0, 0.0)).a;\n            if (aRR > threshold && f.x > (1.0 - extra)) return outlineColor;\n\n            // Up-Up Source (Expanding Down)\n            float aUU = Texel(tex, tc + vec2(0.0, -s.y * 2.0)).a;\n            if (aUU > threshold && f.y < extra) return outlineColor;\n\n            // Down-Down Source (Expanding Up)\n            float aDD = Texel(tex, tc + vec2(0.0,  s.y * 2.0)).a;\n            if (aDD > threshold && f.y > (1.0 - extra)) return outlineColor;\n        }\n      }\n      return vec4(0.0);\n    }\n  "

	var_0_59 = love.graphics.newShader(var_53_0)

	return var_0_59
end

function var_0_57.drawChoice(arg_54_0, arg_54_1, arg_54_2, arg_54_3, arg_54_4, arg_54_5, arg_54_6, arg_54_7, arg_54_8, arg_54_9)
	local var_54_0 = require("src.data.faction")
	local var_54_1 = var_54_0.getForChoice(arg_54_0, arg_54_1)
	local var_54_2 = var_54_1 and var_54_0.getIconPath(var_54_1)

	if not var_54_2 then
		return
	end

	local var_54_3 = var_0_58[var_54_2]

	if var_54_3 == nil then
		local var_54_4, var_54_5 = pcall(love.graphics.newImage, var_54_2)

		var_54_3 = var_54_4 and var_54_5 or false

		if var_54_3 then
			var_54_3:setFilter("nearest", "nearest")
		end

		var_0_58[var_54_2] = var_54_3
	end

	if not var_54_3 then
		return
	end

	local var_54_6, var_54_7 = var_54_3:getDimensions()
	local var_54_8, var_54_9 = love.graphics.transformPoint(0, 0)
	local var_54_10, var_54_11 = love.graphics.transformPoint(1, 1)
	local var_54_12 = love.graphics.getCanvas()
	local var_54_13 = var_54_12 and var_54_12.getDPIScale and var_54_12:getDPIScale() or love.graphics.getDPIScale()
	local var_54_14 = math.max(0.01, math.abs(var_54_10 - var_54_8) * var_54_13)
	local var_54_15 = math.max(0.01, math.abs(var_54_11 - var_54_9) * var_54_13)

	arg_54_9 = math.max(0.01, tonumber(arg_54_9) or 1)

	local var_54_16 = math.floor(math.min(var_54_14, var_54_15) / arg_54_9 * 1000000 + 0.5) / 1000000
	local var_54_17 = 2 * require("src.game.unit_abilities").shrink_imprint.snapVisualScale(arg_54_4 / (math.max(var_54_6, var_54_7) * 2), 2, var_54_16)
	local var_54_18 = var_54_6 * var_54_17
	local var_54_19 = var_54_7 * var_54_17

	arg_54_2, arg_54_3 = arg_54_2 + arg_54_4 - var_54_18, arg_54_3 + (arg_54_4 - var_54_19) * 0.5

	if arg_54_9 == 1 then
		local var_54_20, var_54_21 = love.graphics.transformPoint(arg_54_2, arg_54_3)

		arg_54_2, arg_54_3 = love.graphics.inverseTransformPoint(math.floor(var_54_20 * var_54_13 + 0.5) / var_54_13, math.floor(var_54_21 * var_54_13 + 0.5) / var_54_13)
	end

	local var_54_22 = arg_54_7 and arg_54_8 and arg_54_7 >= arg_54_2 - 2 and arg_54_7 <= arg_54_2 + var_54_18 + 2 and arg_54_8 >= arg_54_3 - 2 and arg_54_8 <= arg_54_3 + var_54_19 + 2
	local var_54_23 = arg_54_6 and arg_54_6.imprintPanel and arg_54_6.imprintPanel.randomOption
	local var_54_24 = var_54_23 and var_54_23.outlineColor or {
		0.55,
		0.48,
		0.43,
		1
	}
	local var_54_25 = arg_54_5 or 1
	local var_54_26 = var_0_60()

	var_54_26:send("texelStep", {
		1 / var_54_6,
		1 / var_54_7
	})
	var_54_26:send("outlineColor", {
		var_54_24[1],
		var_54_24[2],
		var_54_24[3],
		(var_54_24[4] or 1) * var_54_25
	})
	var_54_26:send("threshold", 0.05)
	var_54_26:send("radiusPx", 1.15)
	love.graphics.push("all")
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setColor(1, 1, 1, var_54_25)
	love.graphics.setShader(var_54_26)
	love.graphics.draw(var_54_3, arg_54_2, arg_54_3, 0, var_54_17, var_54_17)
	love.graphics.setShader()
	love.graphics.draw(var_54_3, arg_54_2, arg_54_3, 0, var_54_17, var_54_17)

	if var_54_22 then
		love.graphics.setBlendMode("add", "alphamultiply")
		love.graphics.setColor(1, 1, 1, 0.22 * var_54_25)
		love.graphics.draw(var_54_3, arg_54_2, arg_54_3, 0, var_54_17, var_54_17)
	end

	love.graphics.pop()

	if var_54_22 then
		return {
			factionId = var_54_1,
			anchor = {
				source = "classSelectFaction",
				x = arg_54_2 - 2,
				y = arg_54_3 - 2,
				w = var_54_18 + 4,
				h = var_54_19 + 4
			}
		}
	end
end

local var_0_61 = var_0_57
local var_0_62
local var_0_63 = {}

local function var_0_64(arg_55_0)
	local var_55_0 = {}
	local var_55_1 = 1

	while var_55_1 <= #arg_55_0 do
		local var_55_2 = arg_55_0:sub(var_55_1):match("^%{[%w_%-]+%.png%}") or arg_55_0:sub(var_55_1):match("^[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*") or arg_55_0:sub(var_55_1, var_55_1)

		var_55_0[#var_55_0 + 1] = var_55_2
		var_55_1 = var_55_1 + #var_55_2
	end

	return var_55_0
end

local function var_0_65(arg_56_0, arg_56_1)
	return {
		arg_56_0[1],
		arg_56_0[2],
		arg_56_0[3],
		(arg_56_0[4] or 1) * arg_56_1
	}
end

function var_0_63.draw(arg_57_0, arg_57_1, arg_57_2, arg_57_3, arg_57_4, arg_57_5, arg_57_6, arg_57_7)
	arg_57_7 = arg_57_7 or {}
	arg_57_2 = tostring(arg_57_2 or "")

	local var_57_0 = arg_57_7.font or love.graphics.getFont()
	local var_57_1 = arg_57_7.scale or 1
	local var_57_2 = arg_57_7.lineGapPx or 0
	local var_57_3 = arg_57_7.now or love.timer.getTime()
	local var_57_4 = tonumber(arg_57_7.typeCharsPerSec) or 0

	if not arg_57_0 or arg_57_0.key ~= arg_57_1 or arg_57_0.text ~= arg_57_2 or arg_57_0.font ~= var_57_0 or arg_57_0.width ~= arg_57_5 or arg_57_0.height ~= arg_57_6 or arg_57_0.scale ~= var_57_1 or arg_57_0.gap ~= var_57_2 or arg_57_0.cps ~= var_57_4 then
		arg_57_0 = {
			key = arg_57_1,
			text = arg_57_2,
			font = var_57_0,
			width = arg_57_5,
			height = arg_57_6,
			scale = var_57_1,
			gap = var_57_2,
			cps = var_57_4,
			started = var_57_3,
			lines = {},
			units = {}
		}

		for iter_57_0 in (arg_57_2 .. "\n"):gmatch("(.-)\n") do
			for iter_57_1, iter_57_2 in ipairs(arg_57_7.wrap(iter_57_0, arg_57_5, arg_57_7)) do
				arg_57_0.lines[#arg_57_0.lines + 1] = iter_57_2
				arg_57_0.units[#arg_57_0.units + 1] = var_0_64(iter_57_2)
			end
		end

		arg_57_0.lineStep = math.max(1, math.floor(var_57_0:getHeight() * var_57_1 + var_57_2 + 0.5))
		arg_57_0.contentHeight = math.max(0, (#arg_57_0.lines - 1) * arg_57_0.lineStep + var_57_0:getHeight() * var_57_1 + (arg_57_7.inkBottomPx or 4) * var_57_1)
		arg_57_0.overflow = math.max(0, math.ceil(arg_57_0.contentHeight - arg_57_6))

		local var_57_5 = 0

		for iter_57_3, iter_57_4 in ipairs(arg_57_0.units) do
			if arg_57_6 <= (iter_57_3 - 1) * arg_57_0.lineStep then
				break
			end

			var_57_5 = var_57_5 + #iter_57_4 + 1
		end

		arg_57_0.revealDelay = arg_57_0.overflow == 0 and var_57_4 > 0 and var_57_5 / var_57_4 or 0
	end

	local var_57_6 = math.max(0, var_57_3 - arg_57_0.started)
	local var_57_7 = 0
	local var_57_8 = 1

	if arg_57_0.manualOffset ~= nil then
		var_57_7 = arg_57_0.manualOffset
	elseif arg_57_0.overflow > 0 then
		local var_57_9 = arg_57_7.topHoldSec or 0.85
		local var_57_10 = arg_57_7.bottomHoldSec or 1.65
		local var_57_11 = math.max(0.01, arg_57_7.resetFadeSec or 0.22)
		local var_57_12 = math.max(0.01, arg_57_7.rampSec or 0.4)
		local var_57_13 = math.max(0.9, arg_57_0.overflow / math.max(1, arg_57_7.speedPxPerSec or 18) + var_57_12)
		local var_57_14 = math.min(var_57_12, var_57_13 * 0.5)
		local var_57_15 = arg_57_0.overflow / (var_57_13 - var_57_14)
		local var_57_16 = var_57_9 + var_57_13 + var_57_10 + var_57_11 * 2
		local var_57_17 = math.max(0, var_57_6 - arg_57_0.revealDelay) % var_57_16

		if var_57_17 < var_57_9 then
			var_57_7 = 0
		elseif var_57_17 < var_57_9 + var_57_13 then
			local var_57_18 = var_57_17 - var_57_9

			if var_57_18 < var_57_14 then
				local var_57_19 = var_57_18 / var_57_14

				var_57_7 = var_57_15 * var_57_14 * (var_57_19^3 - 0.5 * var_57_19^4)
			elseif var_57_18 > var_57_13 - var_57_14 then
				local var_57_20 = (var_57_13 - var_57_18) / var_57_14

				var_57_7 = arg_57_0.overflow - var_57_15 * var_57_14 * (var_57_20^3 - 0.5 * var_57_20^4)
			else
				var_57_7 = var_57_15 * (var_57_18 - var_57_14 * 0.5)
			end
		elseif var_57_17 < var_57_9 + var_57_13 + var_57_10 then
			var_57_7 = arg_57_0.overflow
		elseif var_57_17 < var_57_16 - var_57_11 then
			var_57_7 = arg_57_0.overflow
			var_57_8 = (var_57_16 - var_57_11 - var_57_17) / var_57_11
		else
			var_57_8 = (var_57_17 - (var_57_16 - var_57_11)) / var_57_11
		end
	end

	arg_57_0.offset, arg_57_0.alpha = math.floor(var_57_7 + 0.5), var_57_8
	arg_57_0.lastDraw = var_57_3

	local var_57_21 = {}

	for iter_57_5, iter_57_6 in pairs(arg_57_7) do
		var_57_21[iter_57_5] = iter_57_6
	end

	var_57_21.bodyColor = var_0_65(arg_57_7.bodyColor or {
		1,
		1,
		1,
		1
	}, var_57_8)
	var_57_21.numberColor = var_0_65(arg_57_7.numberColor or arg_57_7.bodyColor or {
		1,
		1,
		1,
		1
	}, var_57_8)
	var_57_21.outlineColor = var_0_65(arg_57_7.outlineColor or {
		0.1294,
		0.098,
		0.1333,
		1
	}, var_57_8)

	if tostring(arg_57_1):match("^08:") then
		local var_57_22 = tostring(arg_57_1):match("^08:(%a%a)") or "ko"
		local var_57_23 = require("src.game.item").getById("08")

		var_57_21.termColors = var_57_23 and var_57_23.effectTermColors and var_57_23.effectTermColors[var_57_22]
	end

	local var_57_24 = arg_57_0.overflow == 0 and var_57_4 > 0 and math.floor(var_57_6 * var_57_4) or math.huge

	love.graphics.push("all")

	local var_57_25, var_57_26 = love.graphics.transformPoint(arg_57_3 - 1, arg_57_4 - 1)
	local var_57_27, var_57_28 = love.graphics.transformPoint(arg_57_3 + arg_57_5 + 1, arg_57_4 + arg_57_6)
	local var_57_29, var_57_30, var_57_31, var_57_32 = math.ceil(var_57_25), math.ceil(var_57_26), math.floor(var_57_27), math.floor(var_57_28)

	love.graphics.intersectScissor(var_57_29, var_57_30, math.max(0, var_57_31 - var_57_29), math.max(0, var_57_32 - var_57_30))

	for iter_57_7, iter_57_8 in ipairs(arg_57_0.lines) do
		if var_57_24 <= 0 then
			break
		end

		local var_57_33 = arg_57_0.units[iter_57_7]
		local var_57_34 = arg_57_4 + (iter_57_7 - 1) * arg_57_0.lineStep - arg_57_0.offset

		if var_57_34 + arg_57_0.lineStep >= arg_57_4 - 1 and var_57_34 < arg_57_4 + arg_57_6 then
			local var_57_35 = var_57_24 >= #var_57_33 and iter_57_8 or table.concat(var_57_33, "", 1, var_57_24)

			arg_57_7.draw(var_57_35, arg_57_3, var_57_34, var_57_21)
		end

		var_57_24 = var_57_24 - #var_57_33 - 1
	end

	love.graphics.pop()

	return arg_57_0
end

function var_0_63.wheel(arg_58_0, arg_58_1)
	if not arg_58_0 or arg_58_0.overflow <= 0 or not arg_58_1 or arg_58_1 == 0 then
		return false
	end

	arg_58_0.manualOffset = math.max(0, math.min(arg_58_0.overflow, (arg_58_0.manualOffset or arg_58_0.offset or 0) - arg_58_1 * arg_58_0.lineStep * 2))
	arg_58_0.offset, arg_58_0.alpha = math.floor(arg_58_0.manualOffset + 0.5), 1

	return true
end

function var_0_63.drawHorizontal(arg_59_0, arg_59_1, arg_59_2, arg_59_3, arg_59_4, arg_59_5, arg_59_6, arg_59_7)
	arg_59_7 = arg_59_7 or {}
	arg_59_2 = tostring(arg_59_2 or ""):gsub("[\r\n]+", " ")

	local var_59_0 = love.graphics
	local var_59_1 = arg_59_7.font or var_59_0.getFont()
	local var_59_2 = arg_59_7.now or love.timer.getTime()

	if not arg_59_0 or arg_59_0.key ~= arg_59_1 or arg_59_0.text ~= arg_59_2 or arg_59_0.font ~= var_59_1 or arg_59_0.width ~= arg_59_5 or arg_59_0.height ~= arg_59_6 then
		arg_59_0 = {
			key = arg_59_1,
			text = arg_59_2,
			font = var_59_1,
			width = arg_59_5,
			height = arg_59_6,
			started = var_59_2,
			overflow = math.max(0, var_59_1:getWidth(arg_59_2) - arg_59_5)
		}
	end

	arg_59_0.offset = require("src.ui.effects").text_scroll_motion.offset(var_59_2 - arg_59_0.started, arg_59_0.overflow)

	var_59_0.push("all")
	var_59_0.setFont(var_59_1)

	local var_59_3, var_59_4 = var_59_0.transformPoint(arg_59_3 - 1, arg_59_4 - (arg_59_7.inkTop or 1))
	local var_59_5, var_59_6 = var_59_0.transformPoint(arg_59_3 + arg_59_5 + 1, arg_59_4 + arg_59_6)
	local var_59_7, var_59_8, var_59_9, var_59_10 = math.ceil(var_59_3), math.ceil(var_59_4), math.floor(var_59_5), math.floor(var_59_6)

	var_59_0.intersectScissor(var_59_7, var_59_8, math.max(0, var_59_9 - var_59_7), math.max(0, var_59_10 - var_59_8))

	local var_59_11 = var_59_0.getCanvas()

	while type(var_59_11) == "table" do
		var_59_11 = var_59_11[1] or var_59_11.canvas
	end

	local var_59_12 = var_59_11 and var_59_11.getDPIScale and var_59_11:getDPIScale() or var_59_0.getDPIScale()
	local var_59_13, var_59_14 = var_59_0.transformPoint(arg_59_3 - arg_59_0.offset, arg_59_4)
	local var_59_15, var_59_16 = var_59_0.inverseTransformPoint(math.floor(var_59_13 * var_59_12 + 0.5) / var_59_12, math.floor(var_59_14 * var_59_12 + 0.5) / var_59_12)

	var_59_0.print(arg_59_2, var_59_15, var_59_16)
	var_59_0.pop()

	return arg_59_0
end

local var_0_66 = var_0_63
local var_0_67
local var_0_68 = {
	draw = function(arg_60_0, arg_60_1, arg_60_2, arg_60_3, arg_60_4, arg_60_5, arg_60_6)
		local var_60_0 = require("src.game.combat").frontline_armor.target(arg_60_0)
		local var_60_1 = var_60_0 and var_60_0.sym

		if not var_60_1 then
			return
		end

		arg_60_6 = arg_60_6 or 1

		local var_60_2 = math.max(8 * arg_60_6, math.floor(math.min(arg_60_4, arg_60_5) * 0.42 + 0.5))
		local var_60_3 = math.floor(arg_60_2 + arg_60_4 - var_60_2 + 2 * arg_60_6 + 0.5)
		local var_60_4 = math.floor(arg_60_3 + arg_60_5 - var_60_2 + 2 * arg_60_6 + 0.5)
		local var_60_5 = arg_60_1 and arg_60_1.iconsSmall and arg_60_1.iconsSmall[var_60_1]
		local var_60_6 = (arg_60_0.mode ~= "battle" or var_60_0.alive and not var_60_0.dying and (var_60_0.hp or 0) > 0) and 1 or 0.4

		love.graphics.push("all")
		love.graphics.setShader()
		love.graphics.setBlendMode("alpha", "alphamultiply")

		if var_60_5 then
			local var_60_7 = var_60_5:getWidth()
			local var_60_8 = var_60_5:getHeight()
			local var_60_9 = math.min(arg_60_6, var_60_2 / math.max(1, var_60_7), var_60_2 / math.max(1, var_60_8))
			local var_60_10 = math.floor(var_60_3 + (var_60_2 - var_60_7 * var_60_9) * 0.5 + 0.5)
			local var_60_11 = math.floor(var_60_4 + (var_60_2 - var_60_8 * var_60_9) * 0.5 + 0.5)

			love.graphics.setColor(0, 0, 0, 1)
			love.graphics.draw(var_60_5, var_60_10 - arg_60_6, var_60_11, 0, var_60_9, var_60_9)
			love.graphics.draw(var_60_5, var_60_10 + arg_60_6, var_60_11, 0, var_60_9, var_60_9)
			love.graphics.draw(var_60_5, var_60_10, var_60_11 - arg_60_6, 0, var_60_9, var_60_9)
			love.graphics.draw(var_60_5, var_60_10, var_60_11 + arg_60_6, 0, var_60_9, var_60_9)
			love.graphics.setColor(var_60_6, var_60_6, var_60_6, 1)
			love.graphics.draw(var_60_5, var_60_10, var_60_11, 0, var_60_9, var_60_9)
		else
			love.graphics.setColor(var_60_6, var_60_6, var_60_6, 1)
			require("src.ui.render").drawSymbol(var_60_1, var_60_3, var_60_4, var_60_2, arg_60_1)
		end

		love.graphics.pop()
	end
}
local var_0_69
local var_0_70 = {}
local var_0_71

function var_0_70.get()
	if not var_0_71 then
		local var_61_0 = love.image.newImageData(1, 256)

		for iter_61_0 = 0, 255 do
			var_61_0:setPixel(0, iter_61_0, 1, 1, 1, iter_61_0 / 255)
		end

		var_0_71 = love.graphics.newImage(var_61_0)

		var_0_71:setFilter("linear", "linear")
		var_0_71:setWrap("clamp", "clamp")
		var_61_0:release()
	end

	return var_0_71
end

local var_0_72 = var_0_70
local var_0_73
local var_0_74 = {}
local var_0_75 = {}
local var_0_76 = {}
local var_0_77 = "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*"

for iter_0_0 in (".。,，、!！?？;；:：%％‰)]}）］｝〉》」』】〕〗〙〛’”»…"):gmatch(var_0_77) do
	var_0_75[iter_0_0] = true
end

for iter_0_1 in ("([{（［｛〈《「『【〔〖〘〚‘“«"):gmatch(var_0_77) do
	var_0_76[iter_0_1] = true
end

function var_0_74.splitUnits(arg_62_0)
	local var_62_0 = {}
	local var_62_1 = 1

	while var_62_1 <= #arg_62_0 do
		local var_62_2 = arg_62_0:sub(var_62_1)
		local var_62_3 = var_62_2:match("^%{[%w_%-]+%.png%}")

		if var_62_3 then
			local var_62_4 = var_62_2:sub(#var_62_3 + 1):match("^%s*[%+%-]?%d[%d,%.]*%%?")

			if var_62_4 then
				var_62_3 = var_62_3 .. var_62_4
			end
		else
			var_62_3 = var_62_2:match("^[%+%-]?%d[%d,%.]*%%?") or var_62_2:match("^" .. var_0_77)
		end

		if not var_62_3 then
			break
		end

		local var_62_5 = var_62_0[#var_62_0]
		local var_62_6

		if var_62_5 then
			for iter_62_0 in var_62_5:gmatch(var_0_77) do
				var_62_6 = iter_62_0
			end
		end

		if var_62_5 and (var_0_75[var_62_3] or var_0_76[var_62_6]) then
			var_62_0[#var_62_0] = var_62_5 .. var_62_3
		else
			var_62_0[#var_62_0 + 1] = var_62_3
		end

		var_62_1 = var_62_1 + #var_62_3
	end

	return var_62_0
end

function var_0_74.wrap(arg_63_0, arg_63_1, arg_63_2, arg_63_3)
	arg_63_0, arg_63_1 = tostring(arg_63_0 or ""), math.max(1, tonumber(arg_63_1) or 1)

	local var_63_0 = {}

	for iter_63_0 in (arg_63_0 .. "\n"):gmatch("(.-)\n") do
		local var_63_1 = {}

		for iter_63_1 in iter_63_0:gmatch("%S+") do
			local var_63_2 = var_63_1[#var_63_1]
			local var_63_3

			if var_63_2 then
				for iter_63_2 in var_63_2:gmatch(var_0_77) do
					var_63_3 = iter_63_2
				end
			end

			local var_63_4 = true

			for iter_63_3 in iter_63_1:gmatch(var_0_77) do
				if not var_0_75[iter_63_3] then
					var_63_4 = false

					break
				end
			end

			if var_63_2 and (var_63_4 or var_0_76[var_63_3]) then
				var_63_1[#var_63_1] = var_63_2 .. iter_63_1
			elseif var_63_2 and (var_63_2:match("%{[%w_%-]+%.png%}$") and iter_63_1:match("^[%+%-]?%d") or arg_63_3 and var_63_2:match("^[%+%-]?%d[%d,%.]*%%?$")) then
				var_63_1[#var_63_1] = var_63_2 .. " " .. iter_63_1
			else
				var_63_1[#var_63_1 + 1] = iter_63_1
			end
		end

		local var_63_5 = ""

		for iter_63_4, iter_63_5 in ipairs(var_63_1) do
			local var_63_6 = var_63_5 == "" and iter_63_5 or var_63_5 .. " " .. iter_63_5

			if arg_63_1 >= arg_63_2(var_63_6) then
				var_63_5 = var_63_6
			else
				if var_63_5 ~= "" then
					var_63_0[#var_63_0 + 1] = var_63_5
				end

				var_63_5 = ""

				if arg_63_1 >= arg_63_2(iter_63_5) then
					var_63_5 = iter_63_5
				else
					for iter_63_6, iter_63_7 in ipairs(var_0_74.splitUnits(iter_63_5)) do
						if var_63_5 ~= "" and arg_63_1 < arg_63_2(var_63_5 .. iter_63_7) then
							var_63_0[#var_63_0 + 1], var_63_5 = var_63_5, ""
						end

						var_63_5 = var_63_5 .. iter_63_7
					end
				end
			end
		end

		if var_63_5 ~= "" or #var_63_1 == 0 then
			var_63_0[#var_63_0 + 1] = var_63_5
		end
	end

	return var_63_0
end

local var_0_78 = var_0_74
local var_0_79
local var_0_80 = {
	drawTerms = function(arg_64_0, arg_64_1, arg_64_2, arg_64_3)
		if not arg_64_1 then
			arg_64_3(arg_64_0, arg_64_2)

			return
		end

		local var_64_0 = 1

		while var_64_0 <= #arg_64_0 do
			local var_64_1
			local var_64_2
			local var_64_3

			for iter_64_0, iter_64_1 in pairs(arg_64_1) do
				local var_64_4, var_64_5 = arg_64_0:find(iter_64_0, var_64_0, true)

				if var_64_4 and (not var_64_1 or var_64_4 < var_64_1 or var_64_4 == var_64_1 and var_64_2 < var_64_5) then
					var_64_1, var_64_2, var_64_3 = var_64_4, var_64_5, iter_64_1
				end
			end

			if not var_64_1 then
				arg_64_3(arg_64_0:sub(var_64_0), arg_64_2)

				break
			end

			if var_64_0 < var_64_1 then
				arg_64_3(arg_64_0:sub(var_64_0, var_64_1 - 1), arg_64_2)
			end

			arg_64_3(arg_64_0:sub(var_64_1, var_64_2), {
				var_64_3[1],
				var_64_3[2],
				var_64_3[3],
				(var_64_3[4] or 1) * (arg_64_2[4] or 1)
			})

			var_64_0 = var_64_2 + 1
		end
	end
}
local var_0_81
local var_0_82 = {
	palettes = {
		U = {
			{
				0.43137254901960786,
				0.5411764705882353,
				0.43529411764705883
			},
			{
				0.24313725490196078,
				0.35294117647058826,
				0.24705882352941178
			}
		},
		R = {
			{
				0.4235294117647059,
				0.43529411764705883,
				0.5568627450980392
			},
			{
				0.22745098039215686,
				0.23921568627450981,
				0.3411764705882353
			}
		},
		L = {
			{
				0.7764705882352941,
				0.5333333333333333,
				0.30980392156862746
			},
			{
				0.5568627450980392,
				0.3607843137254902,
				0.1803921568627451
			}
		},
		stone = {
			{
				0.333,
				0.396,
				0.333
			},
			{
				0.173,
				0.227,
				0.173
			}
		}
	},
	shadows = {}
}

function var_0_82.loadShadows(arg_65_0)
	for iter_65_0, iter_65_1 in pairs({
		R = "rare",
		L = "legend"
	}) do
		local var_65_0 = arg_65_0("src/sprites/background/button/itempanelshadow" .. iter_65_1 .. ".png")

		var_65_0:setFilter("nearest", "nearest")

		var_0_82.shadows[iter_65_0] = var_65_0
	end
end

function var_0_82.apply(arg_66_0, arg_66_1, arg_66_2)
	local var_66_0 = var_0_82.palettes[arg_66_2 and "stone" or arg_66_1]

	if not arg_66_0 or not var_66_0 then
		return false
	end

	arg_66_0:send("cIn1", {
		0.3843137254901961,
		0.3333333333333333,
		0.396078431372549
	})
	arg_66_0:send("cIn2", {
		0.2235294117647059,
		0.17254901960784313,
		0.22745098039215686
	})
	arg_66_0:send("cOut1", var_66_0[1])
	arg_66_0:send("cOut2", var_66_0[2])
	love.graphics.setShader(arg_66_0)

	return true
end

function var_0_82.applyShadow(arg_67_0, arg_67_1)
	if not arg_67_0 or arg_67_1 ~= "L" then
		return false
	end

	arg_67_0:send("cIn1", {
		0.20392156862745098,
		0.21568627450980393,
		0.30980392156862746
	})
	arg_67_0:send("cIn2", {
		0.20392156862745098,
		0.21568627450980393,
		0.30980392156862746
	})
	arg_67_0:send("cOut1", {
		0.4392156862745098,
		0.27450980392156865,
		0.13725490196078433
	})
	arg_67_0:send("cOut2", {
		0.4392156862745098,
		0.27450980392156865,
		0.13725490196078433
	})
	love.graphics.setShader(arg_67_0)

	return true
end

local var_0_83 = var_0_82
local var_0_84
local var_0_85 = {}
local var_0_86
local var_0_87 = setmetatable({}, {
	__mode = "k"
})

local function var_0_88()
	if var_0_86 ~= nil then
		return var_0_86 or nil
	end

	local var_68_0, var_68_1 = pcall(love.graphics.newShader, "    extern number u_time;\n    extern number u_cycle;\n    extern number u_alpha;\n    extern number u_width;\n    extern vec3 u_tint;\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float mask = Texel(tex, tc).a;\n      if (mask <= 0.001) return vec4(0.0);\n      float width = max(0.001, u_width);\n      float diagonal = tc.x + tc.y * 0.35;\n      float center = fract(u_time / max(0.001, u_cycle)) * (1.35 + 2.0 * width) - width;\n      float distanceToBand = abs(diagonal - center);\n      float band = 1.0 - smoothstep(width * 0.15, width, distanceToBand);\n      return vec4(u_tint, mask * color.a * clamp(u_alpha, 0.0, 1.0) * band * band);\n    }\n  ")

	var_0_86 = var_68_0 and var_68_1 or false

	return var_0_86 or nil
end

local function var_0_89(arg_69_0, arg_69_1)
	local var_69_0 = var_0_87[arg_69_0]

	if not var_69_0 then
		var_69_0 = {}
		var_0_87[arg_69_0] = var_69_0
	end

	if var_69_0[arg_69_1] then
		return var_69_0[arg_69_1]
	end

	local var_69_1 = math.max(1, math.ceil(arg_69_0:getWidth(arg_69_1)) + 2)
	local var_69_2 = math.max(1, math.ceil(arg_69_0:getHeight()) + 2)
	local var_69_3, var_69_4 = pcall(love.graphics.newCanvas, var_69_1, var_69_2, {
		dpiscale = 1
	})

	if not var_69_3 or not var_69_4 then
		return nil
	end

	var_69_4:setFilter("nearest", "nearest")
	love.graphics.push("all")
	love.graphics.origin()
	love.graphics.setCanvas(var_69_4)
	love.graphics.clear(0, 0, 0, 0)
	love.graphics.setScissor()
	love.graphics.setStencilTest()
	love.graphics.setShader()
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.setFont(arg_69_0)
	love.graphics.print(arg_69_1, 0, 0)
	love.graphics.pop()

	var_69_0[arg_69_1] = var_69_4

	return var_69_4
end

function var_0_85.draw(arg_70_0, arg_70_1, arg_70_2, arg_70_3, arg_70_4, arg_70_5, arg_70_6, arg_70_7, arg_70_8)
	if arg_70_5 ~= "legendary" and arg_70_5 ~= "prism" then
		return false
	end

	arg_70_0 = tostring(arg_70_0 or "")

	if arg_70_0 == "" or (arg_70_6 or 1) <= 0 then
		return false
	end

	arg_70_7 = arg_70_7 or love.graphics.getFont()

	if not arg_70_7 then
		return false
	end

	local var_70_0 = var_0_88()

	if not var_70_0 then
		return false
	end

	local var_70_1 = var_0_89(arg_70_7, arg_70_0)

	if not var_70_1 then
		return false
	end

	love.graphics.push("all")
	love.graphics.setShader(var_70_0)
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setColor(1, 1, 1, 1)
	var_70_0:send("u_time", arg_70_8 or love.timer and love.timer.getTime and love.timer.getTime() or 0)
	var_70_0:send("u_cycle", arg_70_5 == "prism" and 3.6 or 4.4)
	var_70_0:send("u_alpha", (arg_70_5 == "prism" and 0.11 or 0.18) * (arg_70_6 or 1))
	var_70_0:send("u_width", 0.18)
	var_70_0:send("u_tint", arg_70_5 == "prism" and {
		0.94,
		0.93,
		1
	} or {
		1,
		0.91,
		0.67
	})
	love.graphics.draw(var_70_1, arg_70_1, arg_70_2, 0, arg_70_3 or 1, arg_70_4 or arg_70_3 or 1)
	love.graphics.pop()

	return true
end

local var_0_90 = var_0_85
local var_0_91
local var_0_92 = {
	mask = {
		{
			0,
			0,
			0,
			1,
			0,
			0,
			0
		},
		{
			0,
			0,
			1,
			1,
			1,
			0,
			0
		},
		{
			1,
			1,
			1,
			1,
			1,
			1,
			1
		},
		{
			0,
			1,
			1,
			1,
			1,
			1,
			0
		},
		{
			0,
			0,
			1,
			1,
			1,
			0,
			0
		},
		{
			0,
			1,
			1,
			0,
			1,
			1,
			0
		},
		{
			0,
			1,
			0,
			0,
			0,
			1,
			0
		}
	}
}
local var_0_93 = {
	{
		0.31,
		0.78,
		0.72
	},
	{
		0.26,
		0.75,
		0.71
	},
	{
		0.22,
		0.72,
		0.7
	},
	{
		0.2,
		0.69,
		0.68
	},
	{
		0.18,
		0.66,
		0.66
	},
	{
		0.17,
		0.63,
		0.64
	},
	{
		0.16,
		0.6,
		0.62
	}
}
local var_0_94
local var_0_95
local var_0_96

local function var_0_97()
	if var_0_94 then
		return
	end

	local var_71_0 = love.image.newImageData(7, 7)

	for iter_71_0, iter_71_1 in ipairs(var_0_92.mask) do
		for iter_71_2, iter_71_3 in ipairs(iter_71_1) do
			if iter_71_3 == 1 then
				local var_71_1 = var_0_93[iter_71_0]

				var_71_0:setPixel(iter_71_2 - 1, iter_71_0 - 1, var_71_1[1], var_71_1[2], var_71_1[3], 1)
			end
		end
	end

	var_0_94 = love.graphics.newImage(var_71_0)

	var_0_94:setFilter("nearest", "nearest")
	var_71_0:release()

	local var_71_2 = love.image.newImageData(44, 44)

	for iter_71_4 = 0, 43 do
		for iter_71_5 = 0, 43 do
			local var_71_3 = (iter_71_5 + 0.5) / 4 - 2
			local var_71_4 = (iter_71_4 + 0.5) / 4 - 2
			local var_71_5 = math.huge

			for iter_71_6, iter_71_7 in ipairs(var_0_92.mask) do
				for iter_71_8, iter_71_9 in ipairs(iter_71_7) do
					if iter_71_9 == 1 then
						local var_71_6 = math.max(iter_71_8 - 1 - var_71_3, 0, var_71_3 - iter_71_8)
						local var_71_7 = math.max(iter_71_6 - 1 - var_71_4, 0, var_71_4 - iter_71_6)

						var_71_5 = math.min(var_71_5, var_71_6 * var_71_6 + var_71_7 * var_71_7)
					end
				end
			end

			var_71_2:setPixel(iter_71_5, iter_71_4, 1, 1, 1, var_71_5 < 4 and math.exp(-var_71_5 / 0.72) or 0)
		end
	end

	var_0_95 = love.graphics.newImage(var_71_2)

	var_0_95:setFilter("linear", "linear")
	var_71_2:release()

	local var_71_8, var_71_9 = pcall(love.graphics.newShader, "    extern number u_center;\n    extern number u_lift;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      vec4 pixel = Texel(tex, tc);\n      float diagonal = tc.x + tc.y * 0.35;\n      float band = 1.0 - smoothstep(0.07, 0.32, abs(diagonal - u_center));\n      vec3 base = pixel.rgb + vec3(0.35, 0.60, 0.65) * u_lift;\n      vec3 sheen = mix(base, vec3(0.62, 0.98, 0.90), band * 0.78);\n      return vec4(sheen, pixel.a) * color;\n    }\n  ")

	var_0_96 = var_71_8 and var_71_9 or false
end

function var_0_92.draw(arg_72_0, arg_72_1, arg_72_2, arg_72_3, arg_72_4, arg_72_5, arg_72_6)
	arg_72_2 = math.max(1, math.floor((tonumber(arg_72_2) or 1) + 0.5))
	arg_72_5 = math.max(0, math.min(1, tonumber(arg_72_5) or 1))

	local var_72_0 = arg_72_3 and arg_72_5 or arg_72_5 * 0.22

	if var_72_0 == 0 then
		return
	end

	local var_72_1 = love.graphics

	if arg_72_3 and arg_72_4 then
		var_0_97()

		local var_72_2 = tonumber(arg_72_6) or love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_72_3 = 0.5 + 0.5 * math.sin(var_72_2 * 1.2)

		var_72_1.push("all")
		var_72_1.setShader()
		var_72_1.setBlendMode("alpha", "alphamultiply")
		var_72_1.setColor(0.1, 0.85, 0.75, var_72_0 * (0.16 + var_72_3 * 0.07))
		var_72_1.draw(var_0_95, arg_72_0 - 2 * arg_72_2, arg_72_1 - 2 * arg_72_2, 0, arg_72_2 / 4, arg_72_2 / 4)

		if var_0_96 then
			var_72_1.setShader(var_0_96)
			var_0_96:send("u_center", -0.3 + (var_72_2 % 4.4 - 0.65) / 1.65 * 1.95)
			var_0_96:send("u_lift", 0.01 + var_72_3 * 0.018)
		end

		var_72_1.setColor(1, 1, 1, var_72_0)
		var_72_1.draw(var_0_94, arg_72_0, arg_72_1, 0, arg_72_2, arg_72_2)
		var_72_1.pop()

		return
	end

	var_72_1.setColor(1, 1, 1, var_72_0)

	for iter_72_0, iter_72_1 in ipairs(var_0_92.mask) do
		for iter_72_2, iter_72_3 in ipairs(iter_72_1) do
			if iter_72_3 == 1 then
				var_72_1.rectangle("fill", arg_72_0 + (iter_72_2 - 1) * arg_72_2, arg_72_1 + (iter_72_0 - 1) * arg_72_2, arg_72_2, arg_72_2)
			end
		end
	end
end

local var_0_98 = var_0_92
local var_0_99
local var_0_100 = {
	step = function(arg_73_0, arg_73_1, arg_73_2, arg_73_3)
		arg_73_3 = arg_73_3 or {}

		local var_73_0 = arg_73_0 < arg_73_1 and (arg_73_3.hoverLerpIn or 28) or arg_73_3.hoverLerpOut or 20

		return arg_73_0 + (arg_73_1 - arg_73_0) * math.min(math.max(0, arg_73_2 or 0) * var_73_0, 1)
	end,
	shift = function(arg_74_0, arg_74_1)
		return math.floor((arg_74_1 and arg_74_1.hoverShiftLeftPx or 4) * arg_74_0 + 0.5)
	end,
	appear = function(arg_75_0, arg_75_1, arg_75_2)
		if arg_75_0.key ~= arg_75_1 or not arg_75_0.lastDraw or arg_75_2 - arg_75_0.lastDraw > 0.08 then
			arg_75_0.key, arg_75_0.t0 = arg_75_1, arg_75_2
		end

		arg_75_0.lastDraw = arg_75_2

		local var_75_0 = 1 - (1 - math.max(0, math.min(1, (arg_75_2 - (arg_75_0.t0 or arg_75_2)) / 0.14)))^3

		return var_75_0, math.floor(6 * (1 - var_75_0) + 0.5)
	end
}
local var_0_101
local var_0_102 = {}
local var_0_103 = 0.95
local var_0_104 = 0.45
local var_0_105 = 0.7

local function var_0_106()
	return love.timer and love.timer.getTime and love.timer.getTime() or 0
end

function var_0_102.balance(arg_77_0)
	local var_77_0 = rawget(_G, "jungsu")

	if type(var_77_0) == "number" then
		return var_77_0
	end

	return tonumber(arg_77_0 and (arg_77_0.jungsuBalanceTarget or arg_77_0.jungsuBalance)) or 0
end

function var_0_102.isShort(arg_78_0, arg_78_1)
	arg_78_1 = tonumber(arg_78_1)

	return arg_78_1 ~= nil and arg_78_1 > 0 and arg_78_1 > var_0_102.balance(arg_78_0)
end

local function var_0_107(arg_79_0)
	local var_79_0 = arg_79_0 and arg_79_0.heartNumber and arg_79_0.heartNumber.color

	return var_79_0 and var_79_0[1] or 1, var_79_0 and var_79_0[2] or 0.5215686275, var_79_0 and var_79_0[3] or 0.5215686275
end

local function var_0_108(arg_80_0)
	local var_80_0 = arg_80_0 and arg_80_0._shopFundsDeny

	if not var_80_0 then
		return nil
	end

	return var_0_106() - (var_80_0.t0 or 0), var_80_0
end

local function var_0_109(arg_81_0, arg_81_1)
	if not arg_81_0 or arg_81_0 < 0 or arg_81_1 <= arg_81_0 then
		return 0
	end

	if arg_81_0 < 0.08 then
		return arg_81_0 / 0.08
	end

	local var_81_0 = 1 - (arg_81_0 - 0.08) / (arg_81_1 - 0.08)

	return var_81_0 * var_81_0
end

function var_0_102.deny(arg_82_0, arg_82_1)
	if not arg_82_0 then
		return
	end

	arg_82_0._shopFundsDeny = {
		key = arg_82_1,
		t0 = var_0_106()
	}
end

function var_0_102.setPriceColor(arg_83_0, arg_83_1, arg_83_2, arg_83_3)
	local var_83_0 = love.graphics

	if not var_0_102.isShort(arg_83_0, arg_83_2) then
		var_83_0.setColor(arg_83_3[1] or 1, arg_83_3[2] or 1, arg_83_3[3] or 1, arg_83_3[4] or 1)

		return false
	end

	local var_83_1, var_83_2, var_83_3 = var_0_107(arg_83_0)
	local var_83_4, var_83_5 = var_0_108(arg_83_0)
	local var_83_6 = var_83_5 and var_83_5.key == arg_83_1 and var_0_109(var_83_4, var_0_104) or 0

	var_83_0.setColor(var_83_1 + (1 - var_83_1) * var_83_6, var_83_2 + (0.86 - var_83_2) * var_83_6, var_83_3 + (0.8 - var_83_3) * var_83_6, arg_83_3[4] or 1)

	return true
end

local function var_0_110(arg_84_0, arg_84_1)
	local var_84_0 = package.loaded["src.ui.render"]
	local var_84_1 = rawget(_G, "loadedAssets")
	local var_84_2 = var_84_0 and var_84_0.getItemShopSlotRects and var_84_0.getItemShopSlotRects(arg_84_0, var_84_1)

	for iter_84_0, iter_84_1 in ipairs(var_84_2 or {}) do
		if iter_84_1.kind .. iter_84_1.index == arg_84_1 then
			return iter_84_1
		end
	end

	return nil
end

function var_0_102.counter(arg_85_0, arg_85_1, arg_85_2, arg_85_3)
	local var_85_0 = var_0_108(arg_85_0)

	if not var_85_0 or var_85_0 >= var_0_105 then
		return arg_85_1, arg_85_2, arg_85_3, 0
	end

	local var_85_1 = var_0_109(var_85_0, var_0_105)
	local var_85_2, var_85_3, var_85_4 = var_0_107(arg_85_0)
	local var_85_5 = 0

	if var_85_0 < 0.3 then
		var_85_5 = math.floor(math.sin(var_85_0 * 13 * math.pi * 2) * 2 * (1 - var_85_0 / 0.3) + 0.5)
	end

	return arg_85_1 + (var_85_2 - arg_85_1) * var_85_1, arg_85_2 + (var_85_3 - arg_85_2) * var_85_1, arg_85_3 + (var_85_4 - arg_85_3) * var_85_1, var_85_5
end

function var_0_102.drawLabel(arg_86_0)
	local var_86_0, var_86_1 = var_0_108(arg_86_0)

	if not var_86_0 or not var_86_1 or var_86_0 >= var_0_103 or not arg_86_0 or not arg_86_0._shopMode then
		return
	end

	local var_86_2 = var_0_110(arg_86_0, var_86_1.key)

	if not var_86_2 then
		return
	end

	local var_86_3 = (arg_86_0.itemShop and arg_86_0.itemShop.itemLayout or {}).nameFont
	local var_86_4 = require("src.data.language").getText("shop_not_enough_essence", rawget(_G, "currentGameLang") or "ko")
	local var_86_5 = 1

	if var_86_0 < 0.1 then
		var_86_5 = var_86_0 / 0.1
	elseif var_86_0 > var_0_103 - 0.3 then
		var_86_5 = (var_0_103 - var_86_0) / 0.3
	end

	local var_86_6 = math.min(1, var_86_0 / 0.5)
	local var_86_7 = math.floor(6 * (1 - (1 - var_86_6) * (1 - var_86_6) * (1 - var_86_6)) + 0.5)
	local var_86_8 = love.graphics
	local var_86_9 = var_86_8.getFont()

	if var_86_3 then
		var_86_8.setFont(var_86_3)
	end

	local var_86_10 = var_86_8.getFont()
	local var_86_11 = var_86_10:getWidth(var_86_4)
	local var_86_12 = arg_86_0 and arg_86_0.virtual and arg_86_0.virtual.W or 640
	local var_86_13 = math.floor(var_86_2.x + var_86_2.w / 2 - var_86_11 / 2 + 0.5)
	local var_86_14 = math.max(2, math.min(var_86_12 - var_86_11 - 2, var_86_13))
	local var_86_15 = math.floor(var_86_2.y - var_86_10:getHeight() - 1 - var_86_7 + 0.5)

	var_86_8.setColor(0.10980392156862745, 0.0784313725490196, 0.12156862745098039, var_86_5)

	for iter_86_0 = -1, 1 do
		for iter_86_1 = -1, 1 do
			if iter_86_1 ~= 0 or iter_86_0 ~= 0 then
				var_86_8.print(var_86_4, var_86_14 + iter_86_1, var_86_15 + iter_86_0)
			end
		end
	end

	local var_86_16, var_86_17, var_86_18 = var_0_107(arg_86_0)

	var_86_8.setColor(var_86_16, var_86_17, var_86_18, var_86_5)
	var_86_8.print(var_86_4, var_86_14, var_86_15)
	var_86_8.setColor(1, 1, 1, 1)

	if var_86_9 then
		var_86_8.setFont(var_86_9)
	end
end

local var_0_111 = var_0_102
local var_0_112
local var_0_113 = {}
local var_0_114 = {}
local var_0_115 = setmetatable({}, {
	__mode = "k"
})

function var_0_113.smallFont(arg_87_0, arg_87_1)
	arg_87_0 = arg_87_0 or _G.currentGameLang or "ko"

	local var_87_0 = require("src.data.font_resolver")
	local var_87_1 = arg_87_1 and var_87_0.styleOf(arg_87_1) == "shadow"
	local var_87_2 = arg_87_0 .. (var_87_1 and ":ws" or ":w")
	local var_87_3 = var_0_114[var_87_2]

	if var_87_3 == nil then
		var_87_3 = false

		if arg_87_0 ~= "zh" then
			local var_87_4 = var_87_0.resolve(var_87_1 and "src/data/font/Galmuri7WS.fnt" or "src/data/font/Galmuri7W.fnt", arg_87_0)
			local var_87_5, var_87_6 = pcall(love.graphics.newFont, var_87_4)

			if var_87_5 and var_87_6 then
				var_87_6:setFilter("nearest", "nearest")
				var_87_0.attachFallbacks(var_87_6, var_87_4)

				var_87_3 = {
					font = var_87_6,
					scale = var_87_6:getHeight() >= 12 and 0.5 or 1
				}
			end
		end

		var_0_114[var_87_2] = var_87_3
	end

	if not var_87_3 then
		return nil
	end

	return var_87_3.font, var_87_3.scale
end

local var_0_116 = "­"

local function var_0_117(arg_88_0)
	return (arg_88_0:gsub(var_0_116, ""))
end

local function var_0_118(arg_89_0)
	return arg_89_0 == "ja" or arg_89_0 == "zh"
end

local function var_0_119(arg_90_0, arg_90_1, arg_90_2, arg_90_3)
	if var_0_118(arg_90_3) then
		local var_90_0 = var_0_78.wrap(var_0_117(arg_90_0), arg_90_1, arg_90_2)

		return #var_90_0 <= 2 and var_90_0 or nil
	end

	local var_90_1 = {}

	for iter_90_0 in arg_90_0:gmatch("%S+") do
		var_90_1[#var_90_1 + 1] = iter_90_0
	end

	local function var_90_2(arg_91_0, arg_91_1)
		local var_91_0 = arg_90_2(arg_91_0)
		local var_91_1 = arg_90_2(arg_91_1)

		if var_91_0 <= arg_90_1 and var_91_1 <= arg_90_1 then
			return math.max(var_91_0, var_91_1)
		end
	end

	local var_90_3
	local var_90_4
	local var_90_5

	for iter_90_1 = 1, #var_90_1 - 1 do
		local var_90_6 = var_0_117(table.concat(var_90_1, " ", 1, iter_90_1))
		local var_90_7 = var_0_117(table.concat(var_90_1, " ", iter_90_1 + 1))
		local var_90_8 = var_90_2(var_90_6, var_90_7)

		if var_90_8 then
			if var_90_1[iter_90_1]:sub(-1) == "/" then
				var_90_5 = var_90_5 or {
					var_90_6,
					var_90_7
				}
			end

			if not var_90_4 or var_90_8 < var_90_4 then
				var_90_3, var_90_4 = {
					var_90_6,
					var_90_7
				}, var_90_8
			end
		end
	end

	if var_90_5 or var_90_3 then
		return var_90_5 or var_90_3
	end

	for iter_90_2, iter_90_3 in ipairs(var_90_1) do
		local var_90_9 = 1

		while true do
			local var_90_10, var_90_11 = iter_90_3:find(var_0_116, var_90_9, true)

			if not var_90_10 then
				break
			end

			local var_90_12 = table.concat(var_90_1, " ", 1, iter_90_2 - 1)
			local var_90_13 = table.concat(var_90_1, " ", iter_90_2 + 1)
			local var_90_14 = var_0_117((var_90_12 ~= "" and var_90_12 .. " " or "") .. iter_90_3:sub(1, var_90_10 - 1)) .. "-"
			local var_90_15 = var_0_117(iter_90_3:sub(var_90_11 + 1) .. (var_90_13 ~= "" and " " .. var_90_13 or ""))
			local var_90_16 = var_90_2(var_90_14, var_90_15)

			if var_90_16 and (not var_90_4 or var_90_16 < var_90_4) then
				var_90_3, var_90_4 = {
					var_90_14,
					var_90_15
				}, var_90_16
			end

			var_90_9 = var_90_11 + 1
		end
	end

	return var_90_3
end

local function var_0_120(arg_92_0, arg_92_1, arg_92_2, arg_92_3, arg_92_4, arg_92_5)
	local function var_92_0(arg_93_0)
		return math.ceil(arg_92_2:getWidth(arg_93_0) * arg_92_3)
	end

	local var_92_1 = var_0_117(arg_92_0)

	if arg_92_1 >= var_92_0(var_92_1) then
		return {
			var_92_1
		}
	end

	if arg_92_4 >= 2 then
		return var_0_119(arg_92_0, arg_92_1, var_92_0, arg_92_5)
	end

	return nil
end

function var_0_113.fit(arg_94_0, arg_94_1, arg_94_2, arg_94_3)
	arg_94_3 = arg_94_3 or {}
	arg_94_0 = tostring(arg_94_0 or "")
	arg_94_1 = math.max(1, math.floor(tonumber(arg_94_1) or 1))

	local var_94_0 = arg_94_3.maxLines or 1
	local var_94_1 = arg_94_3.lang or _G.currentGameLang or "ko"
	local var_94_2 = tonumber(arg_94_3.scale) or 1
	local var_94_3 = arg_94_3.steps
	local var_94_4 = tonumber(arg_94_3.maxH)
	local var_94_5 = var_0_115[arg_94_2]

	if not var_94_5 then
		var_94_5 = {}
		var_0_115[arg_94_2] = var_94_5
	end

	local var_94_6 = arg_94_0 .. "\x00" .. arg_94_1 .. "\x00" .. var_94_0 .. "\x00" .. var_94_1 .. "\x00" .. var_94_2 .. "\x00" .. (var_94_3 and table.concat(var_94_3, ",") or "") .. "\x00" .. tostring(var_94_4)
	local var_94_7 = var_94_5[var_94_6]

	if var_94_7 then
		return var_94_7
	end

	local var_94_8 = {
		var_94_2
	}

	for iter_94_0, iter_94_1 in ipairs(var_94_3 or {}) do
		var_94_8[#var_94_8 + 1] = iter_94_1
	end

	local function var_94_9(arg_95_0, arg_95_1, arg_95_2)
		if not var_94_4 then
			return true
		end

		return math.ceil(arg_95_0:getHeight() * arg_95_1) * arg_95_2 + (arg_95_2 - 1) * 2 <= var_94_4
	end

	for iter_94_2 = 1, math.min(2, var_94_0) do
		for iter_94_3, iter_94_4 in ipairs(var_94_8) do
			if var_94_9(arg_94_2, iter_94_4, iter_94_2) then
				local var_94_10 = var_0_120(arg_94_0, arg_94_1, arg_94_2, iter_94_4, iter_94_2, var_94_1)

				if var_94_10 and var_94_9(arg_94_2, iter_94_4, #var_94_10) then
					var_94_7 = {
						font = arg_94_2,
						scale = iter_94_4,
						lines = var_94_10
					}

					break
				end
			end
		end

		if var_94_7 then
			break
		end
	end

	if not var_94_7 then
		local var_94_11, var_94_12 = var_0_113.smallFont(var_94_1, arg_94_2)
		local var_94_13 = var_94_11 and var_94_11 ~= arg_94_2 and var_0_120(arg_94_0, arg_94_1, var_94_11, var_94_12, var_94_0, var_94_1)

		if var_94_13 then
			var_94_7 = {
				small = true,
				font = var_94_11,
				scale = var_94_12,
				lines = var_94_13
			}
		end
	end

	var_94_7 = var_94_7 or {
		scale = 1,
		scroll = true,
		font = arg_94_2,
		lines = {
			var_0_117(arg_94_0)
		}
	}

	local var_94_14 = 0

	for iter_94_5, iter_94_6 in ipairs(var_94_7.lines) do
		var_94_14 = math.max(var_94_14, math.ceil(var_94_7.font:getWidth(iter_94_6) * var_94_7.scale))
	end

	var_94_7.width = math.min(var_94_14, arg_94_1)
	var_94_7.maxW = arg_94_1
	var_94_5[var_94_6] = var_94_7

	return var_94_7
end

function var_0_113.draw(arg_96_0, arg_96_1, arg_96_2, arg_96_3, arg_96_4, arg_96_5)
	arg_96_5 = arg_96_5 or {}

	local var_96_0 = love.graphics
	local var_96_1 = var_96_0.getFont()
	local var_96_2 = arg_96_0.font
	local var_96_3 = arg_96_0.scale or 1

	var_96_0.setFont(var_96_2)

	local var_96_4 = math.ceil(var_96_2:getHeight() * var_96_3)
	local var_96_5 = var_96_4 + (arg_96_5.lineGap or 2)
	local var_96_6 = var_96_4 + (#arg_96_0.lines - 1) * var_96_5
	local var_96_7 = arg_96_2 + math.floor((arg_96_4 - var_96_6) * 0.5 + 0.5) + (arg_96_5.dy or 0)

	if arg_96_0.small then
		var_96_7 = var_96_7 + 1
	end

	if arg_96_0.scroll then
		local var_96_8 = arg_96_5.scrollInset or 0

		arg_96_0.scrollState = var_0_66.drawHorizontal(arg_96_0.scrollState, arg_96_5.key or arg_96_0.lines[1], arg_96_0.lines[1], arg_96_1 + var_96_8, var_96_7, arg_96_3 - var_96_8 * 2, var_96_4 * 2, {
			font = var_96_2,
			inkTop = math.ceil(var_96_4 * 0.75)
		})
	else
		for iter_96_0, iter_96_1 in ipairs(arg_96_0.lines) do
			local var_96_9 = math.ceil(var_96_2:getWidth(iter_96_1) * var_96_3)
			local var_96_10 = arg_96_1

			if arg_96_5.align == "center" then
				var_96_10 = arg_96_1 + math.floor((arg_96_3 - var_96_9) * 0.5 + 0.5)
			elseif arg_96_5.align == "right" then
				var_96_10 = arg_96_1 + arg_96_3 - var_96_9
			end

			var_96_0.print(iter_96_1, var_96_10, var_96_7 + (iter_96_0 - 1) * var_96_5, 0, var_96_3, var_96_3)
		end
	end

	if var_96_1 then
		var_96_0.setFont(var_96_1)
	end
end

function var_0_113.fitBlock(arg_97_0, arg_97_1, arg_97_2, arg_97_3, arg_97_4)
	arg_97_4 = arg_97_4 or {}
	arg_97_0 = var_0_117(tostring(arg_97_0 or ""))
	arg_97_1, arg_97_2 = math.max(1, math.floor(arg_97_1)), math.max(1, math.floor(arg_97_2))

	local var_97_0 = arg_97_4.lang or _G.currentGameLang or "ko"
	local var_97_1 = arg_97_3:getHeight()
	local var_97_2 = arg_97_4.lineH or var_97_1 + 2
	local var_97_3 = var_0_115[arg_97_3]

	if not var_97_3 then
		var_97_3 = {}
		var_0_115[arg_97_3] = var_97_3
	end

	local var_97_4 = "block\x00" .. arg_97_0 .. "\x00" .. arg_97_1 .. "\x00" .. arg_97_2 .. "\x00" .. var_97_2 .. "\x00" .. var_97_0 .. "\x00" .. tostring(arg_97_4.wrap)
	local var_97_5 = var_97_3[var_97_4]

	if var_97_5 then
		return var_97_5
	end

	local function var_97_6(arg_98_0, arg_98_1)
		if arg_97_4.wrap then
			return arg_97_4.wrap(arg_97_0, arg_97_1, {
				font = arg_98_0,
				scale = arg_98_1
			})
		end

		return var_0_78.wrap(arg_97_0, arg_97_1, function(arg_99_0)
			return math.ceil(arg_98_0:getWidth(arg_99_0) * arg_98_1)
		end)
	end

	local var_97_7 = var_97_6(arg_97_3, 1)

	if arg_97_2 >= (#var_97_7 - 1) * var_97_2 + var_97_1 then
		var_97_5 = {
			scale = 1,
			font = arg_97_3,
			lines = var_97_7,
			lineH = var_97_2
		}
	else
		local var_97_8, var_97_9 = var_0_113.smallFont(var_97_0, arg_97_3)

		if var_97_8 and var_97_8 ~= arg_97_3 then
			local var_97_10 = math.ceil(var_97_8:getHeight() * var_97_9)
			local var_97_11 = var_97_10 + math.max(1, var_97_2 - var_97_1)
			local var_97_12 = var_97_6(var_97_8, var_97_9)

			if arg_97_2 >= (#var_97_12 - 1) * var_97_11 + var_97_10 then
				var_97_5 = {
					small = true,
					font = var_97_8,
					scale = var_97_9,
					lines = var_97_12,
					lineH = var_97_11
				}
			end
		end
	end

	var_97_5 = var_97_5 or {
		scale = 1,
		scroll = true,
		font = arg_97_3,
		lines = var_97_7,
		lineH = var_97_2,
		text = arg_97_0
	}
	var_97_5.wrap = arg_97_4.wrap
	var_97_3[var_97_4] = var_97_5

	return var_97_5
end

function var_0_113.drawBlock(arg_100_0, arg_100_1, arg_100_2, arg_100_3, arg_100_4, arg_100_5)
	arg_100_5 = arg_100_5 or {}

	local var_100_0 = love.graphics
	local var_100_1 = var_100_0.getFont()

	var_100_0.setFont(arg_100_0.font)

	if arg_100_0.scroll then
		local var_100_2 = arg_100_0.font
		local var_100_3 = var_100_2:getHeight()
		local var_100_4, var_100_5, var_100_6, var_100_7 = var_100_0.getColor()

		arg_100_0.scrollState = var_0_66.draw(arg_100_0.scrollState, arg_100_5.key or arg_100_0.text, arg_100_0.text, arg_100_1, arg_100_2, arg_100_3, arg_100_4, {
			inkBottomPx = 1,
			font = var_100_2,
			lineGapPx = arg_100_0.lineH - var_100_3,
			bodyColor = {
				var_100_4,
				var_100_5,
				var_100_6,
				var_100_7
			},
			wrap = arg_100_0.wrap or function(arg_101_0, arg_101_1)
				return var_0_78.wrap(arg_101_0, arg_101_1, function(arg_102_0)
					return var_100_2:getWidth(arg_102_0)
				end)
			end,
			draw = arg_100_5.draw or function(arg_103_0, arg_103_1, arg_103_2, arg_103_3)
				local var_103_0 = arg_103_3.bodyColor

				var_100_0.setColor(var_103_0[1], var_103_0[2], var_103_0[3], var_103_0[4])
				var_100_0.print(arg_103_0, arg_103_1, arg_103_2)
			end
		})

		var_100_0.setColor(var_100_4, var_100_5, var_100_6, var_100_7)
	else
		local var_100_8 = arg_100_2 + (arg_100_0.small and 1 or 0)

		for iter_100_0, iter_100_1 in ipairs(arg_100_0.lines) do
			if arg_100_5.draw then
				local var_100_9, var_100_10, var_100_11, var_100_12 = var_100_0.getColor()

				arg_100_5.draw(iter_100_1, arg_100_1, var_100_8 + (iter_100_0 - 1) * arg_100_0.lineH, {
					font = arg_100_0.font,
					scale = arg_100_0.scale,
					bodyColor = {
						var_100_9,
						var_100_10,
						var_100_11,
						var_100_12
					}
				})
				var_100_0.setColor(var_100_9, var_100_10, var_100_11, var_100_12)
			else
				var_100_0.print(iter_100_1, arg_100_1, var_100_8 + (iter_100_0 - 1) * arg_100_0.lineH, 0, arg_100_0.scale, arg_100_0.scale)
			end
		end
	end

	if var_100_1 then
		var_100_0.setFont(var_100_1)
	end
end

local function var_0_121(arg_104_0)
	if arg_104_0 >= 97 and arg_104_0 <= 122 then
		return arg_104_0 - 32
	end

	if arg_104_0 >= 224 and arg_104_0 <= 254 and arg_104_0 ~= 247 then
		return arg_104_0 - 32
	end

	if arg_104_0 == 255 then
		return 376
	end

	if arg_104_0 == 305 then
		return 73
	end

	if arg_104_0 == 383 then
		return 83
	end

	if arg_104_0 >= 256 and arg_104_0 <= 382 then
		local var_104_0 = arg_104_0 >= 313 and arg_104_0 <= 328 or arg_104_0 >= 377

		if arg_104_0 == 312 or arg_104_0 == 329 then
			return arg_104_0
		end

		if var_104_0 then
			return arg_104_0 % 2 == 0 and arg_104_0 - 1 or arg_104_0
		end

		return arg_104_0 % 2 == 1 and arg_104_0 - 1 or arg_104_0
	end

	if arg_104_0 >= 1072 and arg_104_0 <= 1103 then
		return arg_104_0 - 32
	end

	if arg_104_0 >= 1104 and arg_104_0 <= 1119 then
		return arg_104_0 - 80
	end

	return arg_104_0
end

local function var_0_122(arg_105_0)
	if arg_105_0 < 128 then
		return string.char(arg_105_0)
	end

	if arg_105_0 < 2048 then
		return string.char(192 + math.floor(arg_105_0 / 64), 128 + arg_105_0 % 64)
	end

	return string.char(224 + math.floor(arg_105_0 / 4096), 128 + math.floor(arg_105_0 / 64) % 64, 128 + arg_105_0 % 64)
end

local function var_0_123(arg_106_0)
	local var_106_0, var_106_1, var_106_2 = arg_106_0:byte(1, 3)
	local var_106_3

	if var_106_0 < 128 then
		var_106_3 = var_106_0
	elseif var_106_0 < 224 and var_106_1 then
		var_106_3 = (var_106_0 - 192) * 64 + (var_106_1 - 128)
	elseif var_106_0 < 240 and var_106_2 then
		var_106_3 = ((var_106_0 - 224) * 64 + (var_106_1 - 128)) * 64 + (var_106_2 - 128)
	else
		return arg_106_0
	end

	if var_106_3 == 223 then
		return "SS"
	end

	local var_106_4 = var_0_121(var_106_3)

	return var_106_4 == var_106_3 and arg_106_0 or var_0_122(var_106_4)
end

local var_0_124 = {}

function var_0_113.upper(arg_107_0)
	arg_107_0 = tostring(arg_107_0 or "")

	local var_107_0 = var_0_124[arg_107_0]

	if var_107_0 then
		return var_107_0
	end

	local var_107_1 = arg_107_0:gsub("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*", var_0_123)

	var_0_124[arg_107_0] = var_107_1

	return var_107_1
end

local var_0_125 = var_0_113
local var_0_126
local var_0_127 = {}
local var_0_128 = 21
local var_0_129 = 15
local var_0_130 = 6
local var_0_131 = 31
local var_0_132 = setmetatable({}, {
	__mode = "k"
})

function var_0_127.draw(arg_108_0, arg_108_1, arg_108_2, arg_108_3, arg_108_4)
	arg_108_4 = arg_108_4 or 0

	if arg_108_4 <= 0 then
		love.graphics.draw(arg_108_0, arg_108_1, arg_108_2, 0, arg_108_3, arg_108_3)

		return
	end

	local var_108_0, var_108_1 = arg_108_0:getDimensions()
	local var_108_2 = var_0_132[arg_108_0]

	if not var_108_2 then
		var_108_2 = {}
		var_0_132[arg_108_0] = var_108_2
	end

	local function var_108_3(arg_109_0, arg_109_1)
		local var_109_0 = arg_109_0 * 100 + arg_109_1

		if not var_108_2[var_109_0] then
			var_108_2[var_109_0] = love.graphics.newQuad(arg_109_0, 0, arg_109_1, var_108_1, var_108_0, var_108_1)
		end

		return var_108_2[var_109_0]
	end

	love.graphics.draw(arg_108_0, var_108_3(0, var_0_128), arg_108_1, arg_108_2, 0, arg_108_3, arg_108_3)

	local var_108_4 = arg_108_1 + var_0_128 * arg_108_3
	local var_108_5 = arg_108_4

	while var_108_5 > 0 do
		local var_108_6 = math.min(var_0_130, var_108_5)

		love.graphics.draw(arg_108_0, var_108_3(var_0_129, var_108_6), var_108_4, arg_108_2, 0, arg_108_3, arg_108_3)

		var_108_4, var_108_5 = var_108_4 + var_108_6 * arg_108_3, var_108_5 - var_108_6
	end

	love.graphics.draw(arg_108_0, var_108_3(var_0_128, var_108_0 - var_0_128), var_108_4, arg_108_2, 0, arg_108_3, arg_108_3)
end

function var_0_127.sourceX(arg_110_0, arg_110_1)
	arg_110_1 = arg_110_1 or 0

	if arg_110_1 <= 0 or arg_110_0 < var_0_128 then
		return arg_110_0
	end

	if arg_110_0 < var_0_128 + arg_110_1 then
		return var_0_129 + (arg_110_0 - var_0_128) % var_0_130
	end

	return arg_110_0 - arg_110_1
end

function var_0_127.extraFor(arg_111_0, arg_111_1)
	arg_111_1 = arg_111_1 or 1

	return math.max(0, math.ceil((arg_111_0 + 16 - var_0_131 * arg_111_1) / arg_111_1))
end

local var_0_133 = var_0_127
local var_0_134
local var_0_135 = {}
local var_0_136 = 19
local var_0_137 = 84
local var_0_138 = 60
local var_0_139 = 8
local var_0_140 = 120
local var_0_141 = setmetatable({}, {
	__mode = "k"
})
local var_0_142 = setmetatable({}, {
	__mode = "k"
})

function var_0_135.fit(arg_112_0, arg_112_1, arg_112_2)
	arg_112_0 = tostring(arg_112_0 or "")
	arg_112_2 = arg_112_2 or _G.currentGameLang or "ko"

	local var_112_0 = var_0_141[arg_112_1]

	if not var_112_0 then
		var_112_0 = {}
		var_0_141[arg_112_1] = var_112_0
	end

	local var_112_1 = arg_112_2 .. "\x00" .. arg_112_0
	local var_112_2 = var_112_0[var_112_1]

	if var_112_2 then
		return var_112_2[1], var_112_2[2], var_112_2[3]
	end

	local var_112_3 = arg_112_1
	local var_112_4 = 1
	local var_112_5 = arg_112_1:getWidth(arg_112_0)

	if var_112_5 + var_0_139 * 2 - var_0_137 > var_0_140 then
		local var_112_6, var_112_7 = var_0_125.smallFont(arg_112_2, arg_112_1)

		if var_112_6 and var_112_6 ~= arg_112_1 then
			var_112_3, var_112_4, var_112_5 = var_112_6, var_112_7, math.ceil(var_112_6:getWidth(arg_112_0) * var_112_7)
		end
	end

	local var_112_8 = math.max(0, var_112_5 + var_0_139 * 2 - var_0_137)
	local var_112_9 = var_112_8 + var_112_8 % 2

	var_112_0[var_112_1] = {
		var_112_9,
		var_112_3,
		var_112_4
	}

	return var_112_9, var_112_3, var_112_4
end

function var_0_135.draw(arg_113_0, arg_113_1, arg_113_2, arg_113_3, arg_113_4, arg_113_5)
	arg_113_5 = arg_113_5 or 0

	if arg_113_5 <= 0 then
		love.graphics.draw(arg_113_0, arg_113_1, arg_113_2.x * arg_113_3, arg_113_2.y * arg_113_4, 0, arg_113_3, arg_113_4)

		return
	end

	local var_113_0 = arg_113_2.x + var_0_138
	local var_113_1 = var_0_142[arg_113_0]
	local var_113_2 = arg_113_2.x .. ":" .. arg_113_2.y .. ":" .. arg_113_2.w .. ":" .. arg_113_2.h

	if not var_113_1 or var_113_1.key ~= var_113_2 then
		var_113_1 = {
			key = var_113_2,
			left = love.graphics.newQuad(arg_113_2.x, arg_113_2.y, var_0_138, arg_113_2.h, arg_113_2.iw, arg_113_2.ih),
			mid = love.graphics.newQuad(var_113_0, arg_113_2.y, 1, arg_113_2.h, arg_113_2.iw, arg_113_2.ih),
			right = love.graphics.newQuad(var_113_0 + 1, arg_113_2.y, arg_113_2.x + arg_113_2.w - var_113_0 - 1, arg_113_2.h, arg_113_2.iw, arg_113_2.ih)
		}
		var_0_142[arg_113_0] = var_113_1
	end

	local var_113_3 = arg_113_5 / 2
	local var_113_4 = arg_113_2.y * arg_113_4

	love.graphics.draw(arg_113_0, var_113_1.left, arg_113_2.x * arg_113_3 - var_113_3, var_113_4, 0, arg_113_3, arg_113_4)
	love.graphics.draw(arg_113_0, var_113_1.mid, var_113_0 * arg_113_3 - var_113_3, var_113_4, 0, arg_113_3 + arg_113_5, arg_113_4)
	love.graphics.draw(arg_113_0, var_113_1.right, (var_113_0 + 1) * arg_113_3 + var_113_3, var_113_4, 0, arg_113_3, arg_113_4)
end

var_0_135.PAPER_X, var_0_135.PAPER_W = var_0_136, var_0_137

local var_0_143 = var_0_135

return {
	text_fit = var_0_125,
	core_button = var_0_133,
	title_plaque = var_0_143,
	shop_funds = var_0_111,
	panel_hover_motion = var_0_100,
	awakening_star = var_0_98,
	unit_name_sweep = var_0_90,
	item_panel_style = var_0_83,
	text_wrap = var_0_78,
	text_color = var_0_80,
	vertical_gradient = var_0_72,
	item_target_badge = var_0_68,
	scrolling_text = var_0_66,
	faction_badge = var_0_61,
	sprite_anchor = var_0_55,
	shadow = var_0_6,
	progress_bar = var_0_10,
	count_impact = var_0_17,
	popup_text = var_0_43,
	core_inventory_hit = var_0_47,
	fps_counter = var_0_52
}
