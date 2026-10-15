local var_0_0 = require("src.data.constants")
local var_0_1 = require("src.data.font_resolver")
local var_0_2 = {}
local var_0_3 = "src/data/font/Chinese/arkpixel10.ttf"
local var_0_4 = "normal"

;(function()
	if _G.__slotboundChineseFontShadowInstalled then
		return
	end

	_G.__slotboundChineseFontShadowInstalled = true

	local var_1_0 = setmetatable({}, {
		__mode = "k"
	})
	local var_1_1 = setmetatable({}, {
		__mode = "k"
	})

	_G.__slotboundChineseShadowFonts = var_1_0
	_G.__slotboundChineseLatinFallbackFonts = var_1_1

	local var_1_2 = {
		largeAtScale = 1.3,
		alpha = 0.62,
		lang = "zh",
		largeAlpha = 0.7,
		offsets = {
			{
				0,
				1
			}
		},
		largeOffsets = {
			{
				0,
				1
			}
		}
	}
	local var_1_3 = {
		shadowIncludesStroke = true,
		shadowAlpha = 1,
		uniformAlpha = true,
		strokeAlpha = 1,
		langs = {
			zh = true
		},
		shadowOffsets = {
			{
				0,
				1
			}
		},
		strokeOffsets = {
			{
				-1,
				-1
			},
			{
				0,
				-1
			},
			{
				1,
				-1
			},
			{
				-1,
				0
			},
			{
				1,
				0
			},
			{
				-1,
				1
			},
			{
				0,
				1
			},
			{
				1,
				1
			}
		}
	}

	function _G.registerChineseShadowFont(arg_2_0, arg_2_1)
		if arg_2_0 then
			var_1_0[arg_2_0] = arg_2_1 or var_1_2
		end

		return arg_2_0
	end

	function _G.registerTextEffectFont(arg_3_0, arg_3_1)
		if arg_3_0 and arg_3_1 then
			var_1_0[arg_3_0] = arg_3_1
		end

		return arg_3_0
	end

	function _G.registerChineseLatinFallbackFont(arg_4_0, arg_4_1)
		if arg_4_0 and arg_4_1 then
			var_1_1[arg_4_0] = arg_4_1
		end

		return arg_4_0
	end

	function _G.resolveChineseLatinFallbackPath(arg_5_0)
		return arg_5_0
	end

	function _G.registerSLineTtfTextEffect(arg_6_0)
		if arg_6_0 and (_G.currentGameLang or "ko") == "zh" then
			var_1_0[arg_6_0] = var_1_3
		end

		return arg_6_0
	end

	function _G.maybeRegisterSLineTtfTextEffect(arg_7_0, arg_7_1, arg_7_2, arg_7_3)
		if not arg_7_0 then
			return arg_7_0
		end

		arg_7_3 = arg_7_3 or _G.currentGameLang or "ko"

		if arg_7_3 ~= "zh" then
			return arg_7_0
		end

		if not tostring(arg_7_1 or ""):lower():find("sline", 1, true) then
			return arg_7_0
		end

		var_1_0[arg_7_0] = var_1_3

		return arg_7_0
	end

	function _G.clearChineseShadowFonts()
		var_1_0 = setmetatable({}, {
			__mode = "k"
		})
		var_1_1 = setmetatable({}, {
			__mode = "k"
		})
		_G.__slotboundChineseShadowFonts = var_1_0
		_G.__slotboundChineseLatinFallbackFonts = var_1_1
	end

	local var_1_4 = love.graphics.print
	local var_1_5 = love.graphics.printf
	local var_1_6 = false
	local var_1_7

	local function var_1_8(arg_9_0)
		return type(arg_9_0) == "string" and #arg_9_0 == 1 and arg_9_0:byte() <= 127
	end

	local function var_1_9(arg_10_0)
		if not var_1_8(arg_10_0) then
			return "nonAscii"
		end

		if arg_10_0:match("%s") then
			return "space"
		end

		if arg_10_0:match("%a") then
			return "letter"
		end

		if arg_10_0:match("%d") or arg_10_0 == "+" or arg_10_0 == "-" or arg_10_0 == "%" then
			return "number"
		end

		return "punct"
	end

	local function var_1_10(arg_11_0)
		return arg_11_0 ~= nil and arg_11_0 ~= "nonAscii"
	end

	local function var_1_11(arg_12_0)
		return tostring(arg_12_0 or ""):gmatch("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*")
	end

	local function var_1_12(arg_13_0)
		for iter_13_0 in var_1_11(arg_13_0) do
			if not var_1_8(iter_13_0) then
				return true
			end
		end

		return false
	end

	local function var_1_13()
		if (_G.currentGameLang or "ko") ~= "zh" then
			return nil
		end

		local var_14_0 = love.graphics.getFont and love.graphics.getFont() or nil

		return var_14_0 and var_1_1[var_14_0] or nil
	end

	local function var_1_14(arg_15_0, arg_15_1, arg_15_2)
		local var_15_0 = 0
		local var_15_1
		local var_15_2
		local var_15_3 = {}

		local function var_15_4()
			if #var_15_3 == 0 then
				return
			end

			local var_16_0 = var_1_10(var_15_1) and arg_15_2 or arg_15_1

			if var_15_2 ~= nil and var_15_2 ~= var_15_1 and var_1_10(var_15_2) ~= var_1_10(var_15_1) then
				var_15_0 = var_15_0 + 2
			end

			var_15_0 = var_15_0 + (var_16_0 and var_16_0:getWidth(table.concat(var_15_3)) or 0)
			var_15_2 = var_15_1
			var_15_3 = {}
		end

		for iter_15_0 in var_1_11(arg_15_0) do
			local var_15_5 = var_1_9(iter_15_0)

			if var_15_1 == nil then
				var_15_1 = var_15_5
			elseif var_15_5 ~= var_15_1 then
				var_15_4()

				var_15_1 = var_15_5
			end

			var_15_3[#var_15_3 + 1] = iter_15_0
		end

		var_15_4()

		return var_15_0
	end

	function _G.measureChineseMixedTextWidth(arg_17_0, arg_17_1)
		if (_G.currentGameLang or "ko") ~= "zh" then
			return nil
		end

		arg_17_1 = arg_17_1 or love.graphics.getFont and love.graphics.getFont() or nil

		local var_17_0 = arg_17_1 and var_1_1[arg_17_1] or nil

		if not arg_17_1 or not var_17_0 then
			return nil
		end

		return var_1_14(arg_17_0, arg_17_1, var_17_0)
	end

	function _G.getChineseLatinFallbackFont(arg_18_0)
		if (_G.currentGameLang or "ko") ~= "zh" then
			return nil
		end

		arg_18_0 = arg_18_0 or love.graphics.getFont and love.graphics.getFont() or nil

		return arg_18_0 and var_1_1[arg_18_0] or nil
	end

	local function var_1_15(arg_19_0, arg_19_1, arg_19_2, arg_19_3, ...)
		local var_19_0 = love.graphics.getFont and love.graphics.getFont() or nil
		local var_19_1 = var_1_13()

		if not var_19_0 or not var_19_1 then
			return var_1_4(arg_19_0, arg_19_1, arg_19_2, ...)
		end

		local var_19_2 = {
			...
		}
		local var_19_3 = math.abs(tonumber(var_19_2[2]) or 1)
		local var_19_4 = 2 * var_19_3

		arg_19_0 = tostring(arg_19_0 or "")

		local var_19_5 = arg_19_1 or 0
		local var_19_6
		local var_19_7
		local var_19_8 = {}

		local function var_19_9()
			if #var_19_8 == 0 then
				return
			end

			local var_20_0 = table.concat(var_19_8)
			local var_20_1 = var_1_10(var_19_6)

			if var_19_7 ~= nil and var_19_7 ~= var_19_6 and var_1_10(var_19_7) ~= var_20_1 then
				var_19_5 = var_19_5 + var_19_4
			end

			local var_20_2 = var_20_1 and var_19_1 or var_19_0

			if arg_19_3 ~= "nonAsciiOnly" or not var_20_1 then
				love.graphics.setFont(var_20_2)
				var_1_4(var_20_0, var_19_5, arg_19_2, unpack(var_19_2))
			end

			var_19_5 = var_19_5 + var_20_2:getWidth(var_20_0) * var_19_3
			var_19_7 = var_19_6
			var_19_8 = {}
		end

		for iter_19_0 in var_1_11(arg_19_0) do
			local var_19_10 = var_1_9(iter_19_0)

			if var_19_6 == nil then
				var_19_6 = var_19_10
			elseif var_19_10 ~= var_19_6 then
				var_19_9()

				var_19_6 = var_19_10
			end

			var_19_8[#var_19_8 + 1] = iter_19_0
		end

		var_19_9()
		love.graphics.setFont(var_19_0)
	end

	local function var_1_16(arg_21_0, arg_21_1, arg_21_2, ...)
		return var_1_15(arg_21_0, arg_21_1, arg_21_2, "all", ...)
	end

	local function var_1_17(arg_22_0, arg_22_1, arg_22_2, ...)
		return var_1_15(arg_22_0, arg_22_1, arg_22_2, "nonAsciiOnly", ...)
	end

	local function var_1_18(arg_23_0, arg_23_1, arg_23_2, arg_23_3, arg_23_4, ...)
		local var_23_0 = love.graphics.getFont and love.graphics.getFont() or nil
		local var_23_1 = var_1_13()

		if not var_23_0 or not var_23_1 then
			return var_1_5(arg_23_0, arg_23_1, arg_23_2, arg_23_3, ...)
		end

		local var_23_2, var_23_3, var_23_4, var_23_5, var_23_6, var_23_7, var_23_8, var_23_9 = ...
		local var_23_10 = "left"

		if type(var_23_2) == "string" then
			var_23_10 = var_23_2
			var_23_3, var_23_4, var_23_5, var_23_6, var_23_7, var_23_8, var_23_9 = select(2, ...)
		else
			var_23_3, var_23_4, var_23_5, var_23_6, var_23_7, var_23_8, var_23_9 = ...
		end

		var_23_3 = var_23_3 or 0
		var_23_4 = var_23_4 or 1
		var_23_5 = var_23_5 or var_23_4
		var_23_6 = var_23_6 or 0
		var_23_7 = var_23_7 or 0
		var_23_8 = var_23_8 or 0
		var_23_9 = var_23_9 or 0

		local function var_23_11(arg_24_0, arg_24_1, arg_24_2)
			arg_24_0 = tostring(arg_24_0 or "")
			arg_24_1 = tonumber(arg_24_1) or 0

			if arg_24_1 <= 0 or arg_24_1 >= var_1_14(arg_24_0, var_23_0, var_23_1) then
				arg_24_2(arg_24_0)

				return
			end

			local var_24_0 = ""

			for iter_24_0 in var_1_11(arg_24_0) do
				local var_24_1 = var_24_0 .. iter_24_0

				if var_24_0 == "" or arg_24_1 >= var_1_14(var_24_1, var_23_0, var_23_1) then
					var_24_0 = var_24_1
				else
					arg_24_2(var_24_0)

					var_24_0 = iter_24_0
				end
			end

			if var_24_0 ~= "" then
				arg_24_2(var_24_0)
			end
		end

		local var_23_12 = {}

		for iter_23_0 in (tostring(arg_23_0 or "") .. "\n"):gmatch("(.-)\n") do
			var_23_11(iter_23_0, arg_23_3 or 0, function(arg_25_0)
				var_23_12[#var_23_12 + 1] = arg_25_0
			end)
		end

		if #var_23_12 == 0 then
			var_23_12[1] = tostring(arg_23_0 or "")
		end

		local var_23_13 = var_1_12(arg_23_0) and var_23_0:getHeight() or var_23_1:getHeight()

		for iter_23_1, iter_23_2 in ipairs(var_23_12 or {
			tostring(arg_23_0 or "")
		}) do
			local var_23_14 = var_1_14(iter_23_2, var_23_0, var_23_1)
			local var_23_15 = arg_23_1 or 0

			if var_23_10 == "center" then
				var_23_15 = var_23_15 + math.floor(((arg_23_3 or 0) - var_23_14) * var_23_4 * 0.5 + 0.5)
			elseif var_23_10 == "right" then
				var_23_15 = var_23_15 + math.floor(((arg_23_3 or 0) - var_23_14) * var_23_4 + 0.5)
			end

			var_1_15(iter_23_2, var_23_15, (arg_23_2 or 0) + (iter_23_1 - 1) * var_23_13 * var_23_5, arg_23_4, var_23_3, var_23_4, var_23_5, var_23_6, var_23_7, var_23_8, var_23_9)
		end

		love.graphics.setFont(var_23_0)
	end

	local function var_1_19(arg_26_0, arg_26_1, arg_26_2, arg_26_3, ...)
		return var_1_18(arg_26_0, arg_26_1, arg_26_2, arg_26_3, "all", ...)
	end

	local function var_1_20(arg_27_0, arg_27_1, arg_27_2, arg_27_3, ...)
		return var_1_18(arg_27_0, arg_27_1, arg_27_2, arg_27_3, "nonAsciiOnly", ...)
	end

	local function var_1_21()
		if var_1_6 then
			return nil
		end

		local var_28_0 = love.graphics.getFont and love.graphics.getFont() or nil
		local var_28_1 = var_28_0 and var_1_0[var_28_0] or nil

		if var_28_1 == true then
			var_28_1 = var_1_2
		end

		if not var_28_1 then
			return nil
		end

		local var_28_2 = _G.currentGameLang or "ko"

		if var_28_1.lang and var_28_1.lang ~= var_28_2 then
			return nil
		end

		if var_28_1.langs and not var_28_1.langs[var_28_2] then
			return nil
		end

		return var_28_1
	end

	local function var_1_22(arg_29_0)
		local var_29_0, var_29_1, var_29_2, var_29_3 = love.graphics.getColor()

		return 0, 0, 0, (var_29_3 or 1) * (arg_29_0 or 1)
	end

	local function var_1_23(arg_30_0, arg_30_1)
		if not arg_30_0 then
			return nil, nil
		end

		if arg_30_0.shadowOffsets or arg_30_0.strokeOffsets then
			return arg_30_0.shadowOffsets or arg_30_0.offsets, arg_30_0.shadowAlpha or arg_30_0.alpha or 1, arg_30_0.strokeOffsets, arg_30_0.strokeAlpha or 1
		end

		if (tonumber(arg_30_1 or 1) or 1) >= (arg_30_0.largeAtScale or math.huge) then
			return arg_30_0.largeOffsets or arg_30_0.offsets or var_1_2.offsets, arg_30_0.largeAlpha or arg_30_0.alpha or var_1_2.alpha
		end

		return arg_30_0.offsets or var_1_2.offsets, arg_30_0.alpha or var_1_2.alpha
	end

	local function var_1_24(...)
		local var_31_0, var_31_1, var_31_2 = ...
		local var_31_3

		var_31_3 = tonumber(var_31_1) or 1

		local var_31_4

		var_31_4 = tonumber(var_31_2) or var_31_3

		return math.max(math.abs(var_31_3), math.abs(var_31_4))
	end

	local function var_1_25(...)
		local var_32_0, var_32_1, var_32_2, var_32_3 = ...
		local var_32_4 = 1
		local var_32_5 = 1

		if type(var_32_0) == "string" then
			var_32_4 = tonumber(var_32_2) or 1
			var_32_5 = tonumber(var_32_3) or var_32_4
		else
			var_32_4 = tonumber(var_32_1) or 1
			var_32_5 = tonumber(var_32_2) or var_32_4
		end

		return math.max(math.abs(var_32_4), math.abs(var_32_5))
	end

	local function var_1_26()
		local var_33_0
		local var_33_1

		if love.graphics.getCanvas then
			local var_33_2 = love.graphics.getCanvas()

			if type(var_33_2) == "table" then
				var_33_2 = var_33_2[1] or var_33_2.canvas
			end

			if var_33_2 and var_33_2.getDimensions then
				var_33_0, var_33_1 = var_33_2:getDimensions()
			end
		end

		if not var_33_0 or not var_33_1 then
			var_33_0, var_33_1 = love.graphics.getDimensions()
		end

		return math.max(1, math.ceil(tonumber(var_33_0) or 1)), math.max(1, math.ceil(tonumber(var_33_1) or 1))
	end

	local function var_1_27()
		if not love.graphics.newCanvas or not love.graphics.getDimensions then
			return nil
		end

		local var_34_0, var_34_1 = var_1_26()

		if not var_1_7 or var_34_0 > var_1_7:getWidth() or var_34_1 > var_1_7:getHeight() then
			local var_34_2, var_34_3 = pcall(love.graphics.newCanvas, var_34_0, var_34_1)

			if not var_34_2 or not var_34_3 then
				return nil
			end

			var_34_3:setFilter("nearest", "nearest")

			if var_1_7 then
				var_1_7:release()
			end

			var_1_7 = var_34_3
		end

		return var_1_7, var_34_0, var_34_1
	end

	local function var_1_28(arg_35_0, arg_35_1, arg_35_2, arg_35_3, arg_35_4, arg_35_5, arg_35_6, ...)
		love.graphics.setColor(var_1_22(arg_35_4))

		for iter_35_0, iter_35_1 in ipairs(arg_35_5 or var_1_2.offsets) do
			var_1_17(arg_35_1, (arg_35_2 or 0) + (iter_35_1[1] or 0), (arg_35_3 or 0) + (iter_35_1[2] or 0), ...)

			if arg_35_0 and arg_35_0.shadowIncludesStroke then
				for iter_35_2, iter_35_3 in ipairs(arg_35_6 or {}) do
					var_1_17(arg_35_1, (arg_35_2 or 0) + (iter_35_1[1] or 0) + (iter_35_3[1] or 0), (arg_35_3 or 0) + (iter_35_1[2] or 0) + (iter_35_3[2] or 0), ...)
				end
			end
		end
	end

	local function var_1_29(arg_36_0, arg_36_1, arg_36_2, arg_36_3, arg_36_4, arg_36_5, arg_36_6, arg_36_7, ...)
		love.graphics.setColor(var_1_22(arg_36_5))

		for iter_36_0, iter_36_1 in ipairs(arg_36_6 or var_1_2.offsets) do
			var_1_20(arg_36_1, (arg_36_2 or 0) + (iter_36_1[1] or 0), (arg_36_3 or 0) + (iter_36_1[2] or 0), arg_36_4, ...)

			if arg_36_0 and arg_36_0.shadowIncludesStroke then
				for iter_36_2, iter_36_3 in ipairs(arg_36_7 or {}) do
					var_1_20(arg_36_1, (arg_36_2 or 0) + (iter_36_1[1] or 0) + (iter_36_3[1] or 0), (arg_36_3 or 0) + (iter_36_1[2] or 0) + (iter_36_3[2] or 0), arg_36_4, ...)
				end
			end
		end
	end

	local function var_1_30(arg_37_0, arg_37_1, arg_37_2, arg_37_3, arg_37_4, arg_37_5, arg_37_6, arg_37_7, arg_37_8, ...)
		if not arg_37_0 or not arg_37_0.uniformAlpha or (arg_37_4 or 1) >= 0.999 then
			return false
		end

		local var_37_0, var_37_1, var_37_2 = var_1_27()

		if not var_37_0 then
			return false
		end

		local var_37_3, var_37_4, var_37_5 = love.graphics.getColor()

		love.graphics.push("all")
		love.graphics.setCanvas(var_37_0)
		love.graphics.clear(0, 0, 0, 0)

		var_1_6 = true

		var_1_28(arg_37_0, arg_37_1, arg_37_2, arg_37_3, arg_37_6, arg_37_5, arg_37_7, ...)

		for iter_37_0, iter_37_1 in ipairs(arg_37_7 or {}) do
			love.graphics.setColor(0, 0, 0, arg_37_8 or 1)
			var_1_17(arg_37_1, (arg_37_2 or 0) + (iter_37_1[1] or 0), (arg_37_3 or 0) + (iter_37_1[2] or 0), ...)
		end

		love.graphics.setColor(var_37_3, var_37_4, var_37_5, 1)
		var_1_16(arg_37_1, arg_37_2, arg_37_3, ...)

		var_1_6 = false

		love.graphics.pop()
		love.graphics.push("all")
		love.graphics.origin()
		love.graphics.setColor(1, 1, 1, arg_37_4 or 1)
		love.graphics.draw(var_37_0, 0, 0, 0, 1, 1, 0, 0, 0, 0)
		love.graphics.pop()

		return true
	end

	local function var_1_31(arg_38_0, arg_38_1, arg_38_2, arg_38_3, arg_38_4, arg_38_5, arg_38_6, arg_38_7, arg_38_8, arg_38_9, ...)
		if not arg_38_0 or not arg_38_0.uniformAlpha or (arg_38_5 or 1) >= 0.999 then
			return false
		end

		local var_38_0, var_38_1, var_38_2 = var_1_27()

		if not var_38_0 then
			return false
		end

		local var_38_3, var_38_4, var_38_5 = love.graphics.getColor()

		love.graphics.push("all")
		love.graphics.setCanvas(var_38_0)
		love.graphics.clear(0, 0, 0, 0)

		var_1_6 = true

		var_1_29(arg_38_0, arg_38_1, arg_38_2, arg_38_3, arg_38_4, arg_38_7, arg_38_6, arg_38_8, ...)

		for iter_38_0, iter_38_1 in ipairs(arg_38_8 or {}) do
			love.graphics.setColor(0, 0, 0, arg_38_9 or 1)
			var_1_20(arg_38_1, (arg_38_2 or 0) + (iter_38_1[1] or 0), (arg_38_3 or 0) + (iter_38_1[2] or 0), arg_38_4, ...)
		end

		love.graphics.setColor(var_38_3, var_38_4, var_38_5, 1)
		var_1_19(arg_38_1, arg_38_2, arg_38_3, arg_38_4, ...)

		var_1_6 = false

		love.graphics.pop()
		love.graphics.push("all")
		love.graphics.origin()
		love.graphics.setColor(1, 1, 1, arg_38_5 or 1)
		love.graphics.draw(var_38_0, 0, 0, 0, 1, 1, 0, 0, 0, 0)
		love.graphics.pop()

		return true
	end

	function love.graphics.print(arg_39_0, arg_39_1, arg_39_2, ...)
		local var_39_0 = var_1_21()

		if var_39_0 then
			local var_39_1, var_39_2, var_39_3, var_39_4 = love.graphics.getColor()
			local var_39_5, var_39_6, var_39_7, var_39_8 = var_1_23(var_39_0, var_1_24(...))

			if var_1_30(var_39_0, arg_39_0, arg_39_1, arg_39_2, var_39_4, var_39_5, var_39_6, var_39_7, var_39_8, ...) then
				return
			end

			var_1_6 = true

			var_1_28(var_39_0, arg_39_0, arg_39_1, arg_39_2, var_39_6, var_39_5, var_39_7, ...)

			for iter_39_0, iter_39_1 in ipairs(var_39_7 or {}) do
				love.graphics.setColor(var_1_22(var_39_8))
				var_1_17(arg_39_0, (arg_39_1 or 0) + (iter_39_1[1] or 0), (arg_39_2 or 0) + (iter_39_1[2] or 0), ...)
			end

			love.graphics.setColor(var_39_1, var_39_2, var_39_3, var_39_4)

			var_1_6 = false
		end

		return var_1_16(arg_39_0, arg_39_1, arg_39_2, ...)
	end

	function love.graphics.printf(arg_40_0, arg_40_1, arg_40_2, arg_40_3, ...)
		local var_40_0 = var_1_21()

		if var_40_0 then
			local var_40_1, var_40_2, var_40_3, var_40_4 = love.graphics.getColor()
			local var_40_5, var_40_6, var_40_7, var_40_8 = var_1_23(var_40_0, var_1_25(...))

			if var_1_31(var_40_0, arg_40_0, arg_40_1, arg_40_2, arg_40_3, var_40_4, var_40_5, var_40_6, var_40_7, var_40_8, ...) then
				return
			end

			var_1_6 = true

			var_1_29(var_40_0, arg_40_0, arg_40_1, arg_40_2, arg_40_3, var_40_6, var_40_5, var_40_7, ...)

			for iter_40_0, iter_40_1 in ipairs(var_40_7 or {}) do
				love.graphics.setColor(var_1_22(var_40_8))
				var_1_20(arg_40_0, (arg_40_1 or 0) + (iter_40_1[1] or 0), (arg_40_2 or 0) + (iter_40_1[2] or 0), arg_40_3, ...)
			end

			love.graphics.setColor(var_40_1, var_40_2, var_40_3, var_40_4)

			var_1_6 = false
		end

		return var_1_19(arg_40_0, arg_40_1, arg_40_2, arg_40_3, ...)
	end
end)()

function var_0_2.init()
	local var_41_0 = {}

	var_41_0.scale = 0.8
	var_41_0.language = "ko"
	var_41_0.integerScale = true
	var_41_0.windowIntegerScale = true
	var_41_0.fullscreenScaleMode = "contain"
	var_41_0.nudgeButtons = {
		disabledDimMul = 0.72,
		pressAnimDurSec = 0.15,
		gapAboveSpin = 3,
		offsetY = 12,
		offsetX = 0,
		reelAnimDurSec = 0.18,
		enabledPulse = {
			alphaMax = 0.2,
			alphaMin = 0.06,
			freqHz = 1.15,
			enabled = true,
			color = {
				1,
				1,
				1
			}
		}
	}
	var_41_0.tutorial = {
		contentOffsetY = -9,
		contentOffsetX = 2,
		numberColor = {
			0.96,
			0.78,
			0.32
		},
		unitNameColor = {
			1,
			0.82,
			0.36
		},
		absorbColor = {
			0.78,
			0.63,
			0.9
		},
		unitFocus = {
			padX = 8,
			padY = 6
		},
		readyFocus = {
			padX = 6,
			padY = 6
		},
		firemanFocus = {
			pad = 6,
			offsetY = 5
		},
		titleImage = {
			offsetX = 0,
			scale = 1,
			offsetY = -10
		},
		bodyLines = {
			{
				offsetX = 0,
				offsetY = 37
			},
			{
				offsetX = 0,
				offsetY = 61
			},
			{
				offsetX = 0,
				offsetY = 77
			}
		},
		startPrompt = {
			offsetX = 0,
			offsetY = 102
		},
		welcomeSkip = {
			counterScale = 1,
			lockedAlpha = 0.35,
			counterAlpha = 1,
			counterGapY = 2
		},
		slotFocus = {
			offsetX = -20,
			extraW = 64,
			extraH = 54,
			offsetY = -24
		},
		slotTip = {
			minW = 0,
			autoSize = true,
			padY = 8,
			offsetY = 24,
			padX = 8,
			iconScale = 1,
			textOffsetY = -1,
			textOffsetX = 0,
			lineGap = 14,
			iconOffsetY = 2,
			gapX = -24,
			minH = 0
		},
		goldFocus = {
			y = 4,
			x = 242,
			h = 22,
			w = 52
		},
		goldTip = {
			offsetX = 0,
			gapY = 4,
			offsetY = 0
		},
		coreCounterFocus = {
			w = 48,
			x = 164,
			y = -18,
			pad = 3,
			h = 44
		},
		coreCounterTip = {
			offsetX = 68,
			gapY = 8,
			offsetY = 0
		},
		coreSelectTip = {
			offsetX = 0,
			y = 8,
			offsetY = 0
		},
		winTip = {
			padX = 8,
			offsetX = 42,
			offsetY = 48,
			padY = 8,
			lineGap = 14,
			textOffsetY = -1,
			unitOffsetY = 0,
			unitOffsetX = 0,
			unitGap = 8
		},
		continuePrompt = {
			offsetX = 0,
			gapY = 7,
			offsetY = 0
		},
		readyTip = {
			gapY = 8,
			offsetX = 0,
			padY = 8,
			offsetY = 0,
			padX = 8,
			lineGap = 14,
			textOffsetY = -1
		},
		positionTip = {
			offsetX = 0,
			padY = 8,
			lineGap = 14,
			offsetY = 0,
			padX = 8,
			topY = 12,
			textOffsetY = -1
		}
	}
	var_41_0.imprintPanel = {
		slotH = 320,
		slotY = 96,
		slotX = 15,
		slotW = 180,
		slotGap = -1,
		slotBg = {
			offsetX = 4,
			offsetY = 11
		},
		emptyText = {
			offsetX = 70,
			offsetY = 7
		},
		lockedText = {
			offsetX = 70,
			offsetY = 7
		},
		iconOffset = {
			y = 14,
			x = 11
		},
		imprintName = {
			offsetX = 24,
			offsetY = 26
		},
		imprintDesc = {
			offsetX = 18,
			gapY = 8
		},
		text = {
			name = {
				y = 26,
				x = 24
			},
			absorbLv = {
				y = 65,
				x = 26,
				dyFromName = 2
			},
			infoIcon = {
				dy = 3,
				dx = 0
			}
		},
		randomOption = {
			y = 393,
			x = 34,
			gap = 0,
			maxSlots = 5,
			tooltipOffsetY = 14,
			size = 32,
			outlineColor = {
				0.08235294117647059,
				0.08235294117647059,
				0.10980392156862745,
				1
			}
		},
		skillFrame = {
			tooltipOffsetY = 2,
			iconOffsetY = -1,
			scale = 1,
			offsetY = 0,
			offsetX = 0,
			iconOffsetX = -2,
			iconInsetPx = 4,
			topOffsetPx = 24,
			rightInsetPx = 432,
			enabled = true
		},
		promotionBar = {
			previewWhiteMixMax = 1,
			previewPulseHz = 1.6,
			textScale = 0.8,
			previewAlphaMin = 0,
			height = 14,
			previewAlphaMax = 0.95,
			starOffsetX = 0,
			starOffsetY = 0.5,
			offsetY = 12,
			offsetX = 10,
			textOffsetY = 12,
			textOffsetX = 2,
			fillColor = {
				0.2,
				0.88,
				0.35,
				1
			},
			previewColor = {
				0.35,
				1,
				0.45,
				1
			},
			gridColor = {
				0.02,
				0.12,
				0.05,
				0.55
			},
			bgColor = {
				0.03,
				0.16,
				0.08,
				0.85
			},
			borderColor = {
				0.6,
				0.6,
				0.6,
				0.8
			},
			accentColor = {
				1,
				1,
				1,
				0.15
			},
			stoneQuestCards = {
				completeColor = {
					0.15,
					0.55,
					0.25,
					1
				},
				incompleteColor = {
					0.58,
					0.4,
					0.12,
					1
				},
				barBgColor = {
					0.62,
					0.58,
					0.45,
					0.65
				},
				grade = {
					y = 12,
					x = -10,
					scale = 2
				},
				infoIcon = {
					y = 12,
					x = 10,
					scale = 2
				},
				slotText = {
					letterSpacing = 4,
					x = 0,
					y = 11,
					scale = 1,
					color = {
						1,
						1,
						1,
						1
					}
				},
				hover = {
					liftPx = 6
				},
				{
					icon = {
						y = 27,
						x = 2
					},
					name = {
						y = -14,
						x = 2
					},
					desc = {
						y = 7,
						x = 0
					},
					bar = {
						y = 3,
						x = 3
					},
					progText = {
						y = 18,
						x = 3
					},
					grade = {
						y = 202,
						x = 4
					},
					infoIcon = {
						y = 60,
						x = 100
					},
					status = {
						y = 85,
						x = 3
					},
					slotText = {
						y = 11,
						x = 0
					}
				},
				{
					icon = {
						y = 27,
						x = 2
					},
					name = {
						y = -14,
						x = 2
					},
					desc = {
						y = 7,
						x = 0
					},
					bar = {
						y = 3,
						x = 3
					},
					progText = {
						y = 18,
						x = 3
					},
					grade = {
						y = 202,
						x = 4
					},
					infoIcon = {
						y = 12,
						x = 10
					},
					status = {
						y = 85,
						x = 3
					},
					slotText = {
						y = 11,
						x = 0
					}
				},
				{
					icon = {
						y = 27,
						x = 2
					},
					name = {
						y = -14,
						x = 2
					},
					desc = {
						y = 7,
						x = 0
					},
					bar = {
						y = 3,
						x = 3
					},
					progText = {
						y = 18,
						x = 3
					},
					grade = {
						y = 202,
						x = 4
					},
					infoIcon = {
						y = 12,
						x = 10
					},
					status = {
						y = 85,
						x = 3
					},
					slotText = {
						y = 11,
						x = 0
					}
				},
				lineSpacing = 7,
				progTextScale = 1,
				descW = 105,
				barH = 3,
				barW = 100,
				gapMul = 0.2,
				cardH = 320,
				cardW = 180
			},
			bloom = {
				expand = 10,
				pulseHz = 0,
				pulseAmp = 0,
				alpha = 0.06,
				softness = 2.8,
				enabled = true,
				layers = 18,
				color = {
					0.35,
					1,
					0.45,
					1
				}
			},
			textColor = {
				1,
				1,
				1,
				1
			}
		},
		preview = {
			offsetY = -5,
			offsetX = -125,
			gainBg = {
				offsetX = 0,
				offsetY = -10
			},
			gainLabel = {
				offsetX = -42,
				offsetY = 8
			},
			cancelBtn = {
				offsetX = 10,
				offsetY = 16
			},
			cancelBtnWhenConvert = {
				extraDown = 27
			},
			convertBtn = {
				offsetX = 0,
				offsetY = 36
			},
			convertLabel = {
				offsetX = 0,
				offsetY = -5
			},
			cancelLabel = {
				offsetX = 0,
				offsetY = 5.5
			}
		}
	}
	var_41_0.cursor = {
		hotspotY = 0,
		hotspotX = 4
	}

	local function var_41_1()
		local var_42_0 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

		if love.filesystem.getInfo(var_42_0) then
			local var_42_1 = tostring(var_42_0):match("(%.%a+)$")
			local var_42_2 = var_42_1 and var_42_1:lower() == ".fnt" and "bmfont" or "vector"

			return {
				priority = 0,
				path = var_42_0,
				kind = var_42_2
			}
		end

		local var_42_3 = {
			"src/data/font",
			"data/font",
			"src/font",
			"font"
		}
		local var_42_4 = {
			[".fnt"] = {
				priority = 1,
				kind = "bmfont"
			},
			[".FNT"] = {
				priority = 1,
				kind = "bmfont"
			},
			[".ttf"] = {
				priority = 2,
				kind = "vector"
			},
			[".TTF"] = {
				priority = 2,
				kind = "vector"
			},
			[".otf"] = {
				priority = 3,
				kind = "vector"
			},
			[".OTF"] = {
				priority = 3,
				kind = "vector"
			}
		}
		local var_42_5 = {}
		local var_42_6

		local function var_42_7(arg_43_0, arg_43_1)
			if not arg_43_1 then
				return
			end

			if not var_42_6 or arg_43_1.priority < var_42_6.priority or arg_43_1.priority == var_42_6.priority and arg_43_0 < var_42_6.path then
				var_42_6 = {
					path = arg_43_0,
					kind = arg_43_1.kind,
					priority = arg_43_1.priority
				}
			end
		end

		local function var_42_8(arg_44_0)
			if var_42_5[arg_44_0] then
				return
			end

			var_42_5[arg_44_0] = true

			if not love.filesystem.getInfo(arg_44_0, "directory") then
				return
			end

			local var_44_0 = love.filesystem.getDirectoryItems(arg_44_0)

			table.sort(var_44_0)

			for iter_44_0, iter_44_1 in ipairs(var_44_0) do
				local var_44_1 = arg_44_0 .. "/" .. iter_44_1
				local var_44_2 = love.filesystem.getInfo(var_44_1)

				if var_44_2 then
					if var_44_2.type == "file" then
						local var_44_3 = iter_44_1:match("(%.%a+)$")

						var_42_7(var_44_1, var_42_4[var_44_3])
					elseif var_44_2.type == "directory" then
						var_42_8(var_44_1)
					end
				end
			end
		end

		for iter_42_0, iter_42_1 in ipairs(var_42_3) do
			var_42_8(iter_42_1)

			if var_42_6 and var_42_6.priority == 1 then
				break
			end
		end

		return var_42_6
	end

	local function var_41_2(arg_45_0)
		if type(arg_45_0) ~= "string" or arg_45_0 == "" then
			return nil, "missing font path"
		end

		if arg_45_0:lower():match("%.ttf$") or arg_45_0:lower():match("%.otf$") then
			local var_45_0 = love.graphics.newFont(arg_45_0, 10, var_0_4)

			var_45_0:setFilter("nearest", "nearest")

			return var_45_0
		end

		local var_45_1, var_45_2 = love.filesystem.read(arg_45_0)

		if not var_45_1 then
			return nil, var_45_2
		end

		local var_45_3 = {}

		for iter_45_0 in var_45_1:gmatch("([^\r\n]+)") do
			if not iter_45_0:match("^%s*#") then
				table.insert(var_45_3, iter_45_0)
			end
		end

		local var_45_4 = table.concat(var_45_3, "\n")

		if var_45_4 == "" then
			return nil, "empty font data"
		end

		if not var_45_4:match("\n$") then
			var_45_4 = var_45_4 .. "\n"
		end

		local var_45_5 = love.filesystem.newFileData(var_45_4, arg_45_0)
		local var_45_6 = love.graphics.newFont(var_45_5)

		var_45_6:setFilter("nearest", "nearest")

		return var_45_6
	end

	local function var_41_3(arg_46_0, arg_46_1)
		if not love.filesystem.getInfo(var_0_3) then
			return nil, "missing Chinese font"
		end

		local var_46_0, var_46_1 = pcall(love.graphics.newFont, var_0_3, arg_46_0 or 10, var_0_4)

		if not var_46_0 or not var_46_1 then
			return nil, tostring(var_46_1 or "Chinese font load failed")
		end

		var_46_1:setFilter("nearest", "nearest")

		if arg_46_1 and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_46_1)
		end

		return var_46_1
	end

	local var_41_4 = var_41_1()

	var_41_0.fontInfo = var_41_4
	var_41_0.fontPath = var_41_4 and var_41_4.path or nil
	var_41_0.fontKind = var_41_4 and var_41_4.kind or "builtin"
	var_41_0.fontScale = 1
	var_41_0.fontTitleScale = 1

	local var_41_5 = math.max(1, math.floor(18 * var_41_0.scale))
	local var_41_6 = math.max(1, math.floor(28 * var_41_0.scale))

	var_41_0.gameOver = {
		buttonGap = 14,
		buttonYOffset = -95,
		rewardYOffset = 30,
		rewardY = 320,
		rewardBlockOffsetX = -2,
		rewardIconOffsetY = -3,
		rewardIconOffsetX = 0,
		spriteOffsetY = -10,
		spriteOffsetX = 0,
		unitNameY = 237,
		sharedInfoY = 241,
		playTimeValueY = 205,
		playTimeLabelY = 185,
		bestUnitLabelY = 150,
		waveY = 148,
		rightColRatio = 0.58,
		leftColRatio = 0.425,
		titleY = 105,
		windowOffsetY = -20
	}

	if var_41_4 and var_41_4.kind == "bmfont" then
		local var_41_7, var_41_8, var_41_9 = pcall(var_41_2, var_41_4.path)

		if not var_41_7 then
			var_41_8 = nil
			var_41_9 = tostring(var_41_8 or "bitmap font load failure")
		end

		if var_41_8 and type(var_41_8) ~= "function" and var_41_8.getHeight then
			var_41_0.font = var_41_8
			var_41_0.fontTitle = var_41_8

			local var_41_10 = math.max(1, var_41_8:getHeight())

			local function var_41_11(arg_47_0)
				if arg_47_0 <= 0 then
					return 1
				end

				local var_47_0 = arg_47_0 / var_41_10

				return (math.max(1, math.floor(var_47_0 + 0.5)))
			end

			var_41_0.fontScale = var_41_11(var_41_5)
			var_41_0.fontTitleScale = var_41_11(var_41_6)
			var_41_0.fontBaseLineHeight = var_41_10
		else
			var_41_0.fontKind = "vector"
			var_41_0.fontError = var_41_9 or "unknown bitmap font load failure"
		end
	end

	if not var_41_0.font or not var_41_0.fontTitle then
		local function var_41_12(arg_48_0)
			local var_48_0

			if var_41_4 and var_41_4.path then
				local var_48_1 = tostring(var_41_4.path):lower():find("arkpixel10%.ttf", 1) ~= nil
				local var_48_2, var_48_3 = pcall(love.graphics.newFont, var_41_4.path, arg_48_0, var_48_1 and var_0_4 or "normal")

				if var_48_2 and var_48_3 and type(var_48_3) ~= "function" and var_48_3.setFilter then
					var_48_0 = var_48_3
				end
			end

			var_48_0 = var_48_0 or love.graphics.newFont(arg_48_0)

			if var_41_4 and var_41_4.path and tostring(var_41_4.path):lower():find("arkpixel10%.ttf", 1) then
				var_48_0:setFilter("nearest", "nearest")
			else
				var_48_0:setFilter("linear", "linear")
			end

			return var_48_0
		end

		var_41_0.fontTitle = var_41_12(var_41_6)
		var_41_0.font = var_41_12(var_41_5)
	end

	var_41_0.fontBattlefieldTitle = nil

	local var_41_13 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

	if love.filesystem.getInfo(var_41_13) then
		local var_41_14, var_41_15 = pcall(var_41_2, var_41_13)

		if var_41_14 and var_41_15 then
			var_41_0.fontBattlefieldTitle = var_41_15
		end
	end

	var_41_0.fontPauseTitle = var_41_0.fontBattlefieldTitle or var_41_0.fontTitle
	var_41_0.fontStageSelectTitle = nil

	local var_41_16 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

	if love.filesystem.getInfo(var_41_16) then
		local var_41_17, var_41_18 = pcall(var_41_2, var_41_16)

		if var_41_17 and var_41_18 then
			var_41_0.fontStageSelectTitle = var_41_18
		end
	end

	var_41_0.fontStageSelectTitle = var_41_0.fontStageSelectTitle or var_41_0.fontTitle
	var_41_0.fontClassCard = nil

	local var_41_19 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

	if love.filesystem.getInfo(var_41_19) then
		local var_41_20, var_41_21 = pcall(var_41_2, var_41_19)

		if var_41_20 and var_41_21 then
			var_41_0.fontClassCard = var_41_21
		end
	end

	var_41_0.fontClassCard = var_41_0.fontClassCard or var_41_0.font
	var_41_0.fontGameOver = nil

	local var_41_22 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

	if love.filesystem.getInfo(var_41_22) then
		local var_41_23, var_41_24 = pcall(love.graphics.newFont, var_41_22)

		if var_41_23 and var_41_24 then
			var_41_24:setFilter("nearest", "nearest")

			var_41_0.fontGameOver = var_41_24
		else
			local var_41_25, var_41_26 = pcall(var_41_2, var_41_22)

			if var_41_25 and var_41_26 then
				var_41_0.fontGameOver = var_41_26
			end
		end
	end

	var_41_0.fontGameOver = var_41_0.fontGameOver or var_41_0.font
	var_41_0.mainMenuLogo = var_41_0.mainMenuLogo or {
		offsetX = 0,
		targetY = 16,
		scale = 2.3,
		offsetY = -10
	}
	var_41_0.mainMenuUpgradeButton = var_41_0.mainMenuUpgradeButton or {
		iconScale = 1.5,
		labelOffsetX = 0,
		paddingBottom = 40,
		paddingRight = 40,
		labelGapPx = 3,
		labelScale = 1.1,
		offsetY = 2,
		offsetX = -318
	}
	var_41_0.mainMenuDiscordButton = var_41_0.mainMenuDiscordButton or {
		iconScale = 1.5,
		labelOffsetX = 0,
		paddingBottom = 40,
		paddingRight = 40,
		labelGapPx = 3,
		labelScale = 1.1,
		offsetY = 2,
		offsetX = 0
	}
	var_41_0.mainMenuCollectionButton = var_41_0.mainMenuCollectionButton or {
		offsetX = 142,
		labelOffsetX = 0,
		iconScale = 1.5,
		offsetY = 0,
		labelGapPx = 3,
		labelScale = 1.1,
		lockedHintTextOffsetY = -1,
		lockedHintPadPx = 6,
		lockedHintScale = 0.95,
		lockedHintGapPx = 8,
		gapFromUpgradePx = 28
	}
	var_41_0.mainMenuAchievementButton = var_41_0.mainMenuAchievementButton or {
		labelScale = 1.1,
		labelOffsetX = 0,
		offsetX = -14,
		offsetY = 0,
		labelGapPx = 3,
		iconScale = 1.5,
		gapFromCollectionPx = 28,
		lockedHintTextOffsetY = -2,
		lockedHintPadPx = 6,
		lockedHintScale = 0.95,
		lockedHintGapPx = 8
	}
	var_41_0.mainMenuBackground = var_41_0.mainMenuBackground or {
		mainlayers1ScrollSpeed = 5,
		goblinsFrameDur = 0.15,
		unitsFrameDur = 0.26,
		mainlayers2ScrollSpeed = 10
	}
	var_41_0.stageSelectOverlay = var_41_0.stageSelectOverlay or {
		title = {
			yFrac = 0.18,
			spriteScale = 1.15,
			offsetY = -37,
			offsetX = 0,
			enabled = true
		}
	}
	var_41_0.stageSelectOverlay.stageCards = var_41_0.stageSelectOverlay.stageCards or {
		offsetX = 0,
		enabled = true,
		gapPx = 12,
		offsetY = -63
	}
	var_41_0.stageSelectOverlay.stage1Title = var_41_0.stageSelectOverlay.stage1Title or {
		scale = 1.15,
		yPx = 194,
		text = "menu_stage_1_title",
		offsetY = -4,
		offsetX = 0,
		enabled = true
	}
	var_41_0.stageSelectOverlay.stage2Title = var_41_0.stageSelectOverlay.stage2Title or {
		scale = 1.15,
		yPx = 194,
		text = "menu_stage_name_2",
		offsetY = -4,
		offsetX = 0,
		enabled = true
	}
	var_41_0.stageSelectOverlay.stage3Title = var_41_0.stageSelectOverlay.stage3Title or {
		scale = 1.15,
		yPx = 194,
		text = "menu_stage_name_3",
		offsetY = -4,
		offsetX = 0,
		enabled = true
	}
	var_41_0.stageSelectOverlay.stage4Title = var_41_0.stageSelectOverlay.stage4Title or {
		scale = 1.15,
		yPx = 194,
		text = "menu_stage_name_4",
		offsetY = -4,
		offsetX = 0,
		enabled = true
	}
	var_41_0.stageSelectOverlay.stageNames = {
		"STAGE 1",
		"Deep Cave",
		"Wasteland",
		"Lost Ruins"
	}
	var_41_0.stageSelectOverlay.difficultyTitle = var_41_0.stageSelectOverlay.difficultyTitle or {
		overshoot = 5,
		outDur = 0.48,
		totalDur = 0.72,
		startY = -80,
		targetY = 25
	}
	var_41_0.stageSelectOverlay.difficultySelect = var_41_0.stageSelectOverlay.difficultySelect or {
		scale = 1,
		gapPx = 35,
		offsetY = -60,
		offsetX = 0,
		enabled = true
	}
	var_41_0.fontCoin = nil
	var_41_0.fontCoinScale = 1

	local var_41_27 = var_0_1.resolve("src/data/font/Galmuri7W.fnt")

	if love.filesystem.getInfo(var_41_27) then
		local var_41_28, var_41_29 = pcall(var_41_2, var_41_27)

		if var_41_28 and var_41_29 then
			var_41_0.fontCoin = var_41_29
			var_41_0.fontCoinScale = 8 / math.max(1, var_41_29:getHeight())
		end
	end

	var_41_0.fontJackpot = nil
	var_41_0.fontJackpotScale = 1

	local var_41_30 = var_0_1.resolve("src/data/font/Galmuri7W.fnt")

	if love.filesystem.getInfo(var_41_30) then
		local var_41_31, var_41_32 = pcall(var_41_2, var_41_30)

		if var_41_31 and var_41_32 then
			var_41_0.fontJackpot = var_41_32

			local var_41_33 = math.max(1, var_41_32:getHeight())
			local var_41_34 = math.max(8, math.floor(14 * var_41_0.scale)) / var_41_33
			local var_41_35 = math.max(1, math.floor(var_41_34 + 0.5))

			var_41_0.fontJackpotScale = var_41_35
		end
	end

	var_41_0.fontShopTitle = nil
	var_41_0.fontShopTitleScale = 1

	local var_41_36 = {
		var_0_1.resolve("src/data/font/Galmuri7WS.fnt"),
		var_0_1.resolve("src/data/font/Galmuri7W.fnt")
	}
	local var_41_37

	for iter_41_0, iter_41_1 in ipairs(var_41_36) do
		if love.filesystem.getInfo(iter_41_1) then
			local var_41_38, var_41_39 = pcall(var_41_2, iter_41_1)

			if var_41_38 and var_41_39 then
				var_41_0.fontShopTitle = var_41_39

				local var_41_40 = math.max(1, var_41_39:getHeight())
				local var_41_41 = math.max(8, math.floor(12 * var_41_0.scale)) / var_41_40
				local var_41_42 = math.max(1, math.floor(var_41_41 + 0.5))

				var_41_0.fontShopTitleScale = var_41_42
				var_41_37 = true

				break
			end
		end
	end

	if not var_41_37 then
		var_41_0.fontShopTitle = var_41_0.fontTitle or var_41_0.font
		var_41_0.fontShopTitleScale = 1
	end

	var_41_0.jackpotBanner = {
		offsetY = -25,
		offsetX = -20,
		fadeOutSec = 0.5,
		holdSec = 4,
		fadeInSec = 0.2,
		shadow = {
			dy = 1,
			dx = 1,
			color = {
				0,
				0,
				0,
				0.55
			}
		},
		outline = {
			radiusPx = 2,
			color = {
				0.20392156862745098,
				0.15294117647058825,
				0.18823529411764706,
				1
			}
		},
		color = {
			1,
			1,
			1,
			1
		},
		wave = {
			freqHz = 4,
			phaseShift = 0.45,
			restDurSec = 0,
			bounceDurSec = 0.26,
			perCharDelaySec = 0.08,
			ampPx = 8
		},
		shake = {
			pixelStep = 1,
			quantize = true,
			freqHz = 2.2,
			enabled = false,
			ampPx = 1.5
		},
		scalePulse = {
			step = 3,
			enabled = true,
			phase = 0,
			duty = 1.58,
			minMul = 1.5,
			freqHz = 1,
			amp = 0.8,
			smooth = true
		},
		machineShake = {
			pixelStep = 1,
			quantize = true,
			freqHz = 2.8,
			enabled = true,
			ampPx = 3
		},
		foil = {
			saturation = 2,
			colorGain = 1,
			fresnelPow = 2,
			specular = 0.1,
			angleDeg = 12,
			cycleSec = 4,
			alpha = 0.6,
			scale = 1.6,
			mixBP = 0.85,
			grain = {
				scale = 85,
				amp = 0.12
			},
			film = {
				freq = 0.8,
				amp = 0.1
			}
		}
	}
	var_41_0.margin = math.floor(16 * var_41_0.scale)
	var_41_0.slot = {
		rows = 3,
		bgAnimX = 0,
		bgAnimY = 0,
		title = "slots",
		winOutlinePixelMul = 2,
		scale = 0.58,
		cols = 3,
		ropeOffsetY = -32,
		stickyOffsetY = 14,
		bgOffsetY = -14,
		bgOffsetX = -21,
		rightmostColOffsetPx = -1,
		lockSpin = true,
		gutter = 0,
		cellSize = 0,
		panelPad = math.floor(10 * var_41_0.scale),
		spinShake = {
			phaseB = 0.8,
			mixA = 0.7,
			freqB = 1.6,
			freqA = 1,
			ampPx = 4
		},
		spinImpact = {
			dur = 0.18,
			ampPx = 3.6
		},
		winPulse = {
			amp = 0.12
		},
		winSymbolWobble = {
			freq = 5,
			quantize = true,
			decay = true,
			ampPx = 3
		},
		lineHitSquash = {
			anchorOffsetX = 0,
			startIndex = 1,
			dur = 0.4,
			amp = 0.04,
			anchorOffsetY = 0,
			ampByLine = {
				0.55,
				0.75,
				1,
				1.5,
				2
			},
			shake = {
				dur = 0.4,
				freq = 5,
				axis = "xy",
				ampPx = 2,
				byLine = {
					0.55,
					0.75,
					1,
					1.4,
					1.8
				}
			},
			screenShake = {
				dur = 0.3,
				freq = 22,
				axis = "xy",
				ampPx = 0.7,
				byLine = {
					0.5,
					0.7,
					1,
					1.25,
					1.5
				}
			}
		},
		spinPressFX = {
			emulateLineIndex = 3,
			squash = {
				ampMul = 0.6,
				durMul = 1
			},
			jitter = {
				durMul = 0.8,
				ampMul = 0.8,
				freqMul = 1
			},
			screenShake = {
				durMul = 1,
				ampMul = 1.3,
				freqMul = 1
			}
		}
	}
	var_41_0.slot.cellSize = math.floor(96 * var_41_0.scale * var_41_0.slot.scale)
	var_41_0.slot.gutter = math.floor(6 * var_41_0.scale * var_41_0.slot.scale)
	var_41_0.colors = var_0_0.colors
	var_41_0.virtual = var_0_0.virtual
	var_41_0.virtualBase = {
		W = var_41_0.virtual.W,
		H = var_41_0.virtual.H
	}
	var_41_0.coreBackground = {
		riseDur = 1,
		startU = 0.5,
		startPhase = "drop"
	}
	var_41_0.coreBackgroundNumber = {
		startDelay = 0.9,
		fromX = -32,
		startAfter = "rise",
		slideDur = 0.7
	}
	var_41_0.coreCountDisplay = {
		y = 330,
		x = 179,
		align = "left",
		scale = 1,
		max = 8,
		color = {
			1,
			1,
			1,
			1
		}
	}
	var_41_0.monster = {
		headLaugh = {
			dur = 1.2,
			freq = 2,
			ampPx = 3
		},
		headIdle = {
			freq = 0.5,
			ampPx = 1
		},
		eyesShine = {
			enabled = true,
			fadeIn = 0.25,
			scaleTo = 1.6,
			scaleFrom = 0.1,
			dur = 0.45,
			left = {
				y = 24,
				x = 101
			},
			right = {
				y = 24,
				x = 78
			},
			pulse = {
				freq = 1.8,
				minScale = 1.1,
				amp = 0.32,
				maxScale = 1.6
			}
		}
	}
	var_41_0.judgementSky = {
		blueCut = 0.45,
		mixKeep = 0.15,
		strengthMul = 0.85,
		enabled = true,
		previewAlways = false,
		dark = {
			0.32,
			0.1,
			0.12
		},
		mid = {
			0.6,
			0.22,
			0.24
		},
		light = {
			0.85,
			0.45,
			0.45
		}
	}
	var_41_0.battle = {
		hitFlashMaxAlpha = 0.85,
		hpbarGap = 5,
		glowRadiusOutSec = 0.5,
		enemyDetectXFrac = 0.8,
		suddenDeathWipeoutDelay = 2.5,
		judgementEnemySpawnDelay = 0,
		enemySpawnDelay = 1,
		glowRadiusInSec = 0.5,
		glowFadeOutSec = 0.5,
		glowFadeInSec = 0.5,
		glowPulseHz = 1.2,
		gradeGlazeAlpha = 0,
		hitFlashDur = 0.16,
		rangeEllipseYScale = 0.4,
		allySize32 = 64,
		enemyScale = 2,
		unitScale = 2,
		rosterScale = 1.8,
		hitShake = {
			dur = 0.18,
			ampPx = 4
		},
		hitSquash = {
			dur = 0.18,
			amt = 0.08
		},
		animDesync = {
			attackOffsetMax = 0.12
		},
		shadow = {
			heightRatio = 0.3,
			maxWidthPx = 30,
			minWidthPx = 11,
			widthMul = 0.78,
			cavalryOffsetXPx = -2,
			dyingStrength = 0.35,
			strength = 0.9,
			yOffsetPx = 4,
			maxHeightPx = 10,
			minHeightPx = 6
		},
		aura = {
			xScaleMul = 2.2,
			alpha = 0.45,
			enabled = false,
			yScaleMul = 1.3,
			color = {
				0.55,
				0.8,
				1
			}
		},
		darkHarvestColor = {
			0.7,
			0.4,
			1
		},
		primeStrengthBeam = {
			debugWidth = false,
			widthEdgePadPx = 10,
			preciseAlphaThresh = 0.15,
			preciseWidth = true,
			sparkDirection = "up",
			sparkCount = 4,
			enableSparks = true,
			additiveBlend = true,
			minOpaqueRunY = 6,
			opaqueAlphaThresh = 0.2,
			useOpaqueWidth = true,
			widthPaddingPx = 0,
			widthScale = 1,
			lengthFactor = 0.65,
			alphaTop = 0,
			alphaBottom = 0.65,
			color = {
				1,
				0.45,
				0.2
			},
			sparkColor = {
				1,
				0.55,
				0.25
			}
		},
		rainbowEffect = {
			saturation = 0.9,
			alphaMax = 0.9,
			bandThickness = 3,
			arcAmpRatio = 0.5,
			yAnchorRatio = 0.85,
			hideDur = 4.5,
			revealDur = 4.5,
			duration = 9,
			yOffsetPx = -8,
			scale = 0.9,
			dissolve = {
				fallDistance = 12,
				zoneWidth = 18,
				perBandJitter = 3
			},
			dust = {
				spreadX = 20,
				particlesPerBand = 20,
				twinkleSpeed = 4,
				sparkleSpreadY = 16,
				sparkleSpreadX = 24,
				sparkles = 6,
				enabled = true,
				spreadY = 10,
				sparkleColor = {
					1,
					0.9,
					0.3
				}
			},
			bloom = {
				expand = 4.5,
				softness = 2,
				alpha = 0.08,
				enabled = true,
				layers = 5
			}
		},
		jackpotRainbow = {
			scale = 2,
			angleDeg = 30,
			alpha = 0.18,
			speed = 1.45
		},
		jackpotFoil = {
			saturation = 2.8,
			colorGain = 1.1,
			fresnelPow = 2,
			specular = 0.15,
			angleDeg = 20,
			cycleSec = 1.6,
			alpha = 0.22,
			scale = 3,
			mixBP = 0.72,
			grain = {
				scale = 2.2,
				amp = 0.08
			},
			film = {
				freq = 2,
				amp = 0.06
			}
		},
		legendaryFoil = {
			saturation = 0.9,
			colorGain = 1,
			fresnelPow = 2.5,
			specular = 0.35,
			angleDeg = 20,
			cycleSec = 2,
			alpha = 0.15,
			scale = 2.5,
			mixBP = 0.55,
			grain = {
				scale = 3,
				amp = 0.2
			},
			film = {
				freq = 2,
				amp = 0.25
			},
			pulse = {
				minMul = 0.6,
				sharpness = 0.3,
				hz = 0.3,
				amp = 0.05
			}
		},
		moonRise = {
			riseSpanPx = 80,
			extraStartPx = -10,
			finalLiftPx = 10,
			sunDropPx = 120,
			strengthEase = "linear"
		},
		readyIcon = {
			padX = 8,
			anchor = "bottom-right",
			cooldown = 0.6,
			padY = 30
		},
		heartIcon = {
			padX = 30,
			anchor = "top-left",
			hpScaleSub = 1,
			padY = 30
		},
		absorbJitter = {
			flashAmpPx = 0,
			flashTriThreshold = 0.9,
			axis = "x",
			peakThreshold = 0.94,
			ampPx = 1,
			flashWindow = {
				0.4,
				0.6
			}
		},
		absorb = {
			glowFalloff = 1,
			glowMaxRadiusPx = 15,
			glowPulseHz = 0.6,
			outlineAlphaThreshold = 0.01,
			innerTintAlpha = 0.25,
			glowAlpha = 0.9,
			borderColor = {
				0.525,
				0.294,
				0.757,
				1
			}
		},
		enemyOffscreenSpawn = {
			offsetPx = 30,
			enabled = true,
			variancePx = 24
		}
	}
	var_41_0.battle.warlordEffectOffset = {
		y = 15,
		x = 0
	}
	var_41_0.tooltip = var_41_0.tooltip or {}
	var_41_0.tooltip.iconFoil = {
		saturation = 1.35,
		colorGain = 1.35,
		fresnelPow = 2,
		specular = 0.04,
		angleDeg = 20,
		cycleSec = 3.2,
		alpha = 0.7,
		scale = 0.5,
		mixBP = 0.72,
		grain = {
			scale = 2,
			amp = 0.04
		},
		film = {
			freq = 2,
			amp = 0.1
		}
	}
	var_41_0.tooltipCfg = {
		iconFoil = var_41_0.tooltip.iconFoil
	}
	var_41_0.tooltip.cornerRadiusPx = var_41_0.tooltip.cornerRadiusPx or 6
	var_41_0.suddenDeathAlert = var_41_0.suddenDeathAlert or {}
	var_41_0.suddenDeathAlert.enabled = var_41_0.suddenDeathAlert.enabled ~= false
	var_41_0.suddenDeathAlert.spring = var_41_0.suddenDeathAlert.spring or var_41_0.infoOverlay and var_41_0.infoOverlay.spring or {
		damping = 14,
		maxVel = 2000,
		k = 90
	}
	var_41_0.suddenDeathAlert.visibleY = var_41_0.suddenDeathAlert.visibleY ~= nil and var_41_0.suddenDeathAlert.visibleY or var_41_0.infoOverlay and var_41_0.infoOverlay.visibleY or 0
	var_41_0.suddenDeathAlert.hiddenY = var_41_0.suddenDeathAlert.hiddenY ~= nil and var_41_0.suddenDeathAlert.hiddenY or var_41_0.infoOverlay and var_41_0.infoOverlay.hiddenY or -(var_41_0.virtual and var_41_0.virtual.H or 128)
	var_41_0.suddenDeathAlert.holdSec = var_41_0.suddenDeathAlert.holdSec or 4
	var_41_0.suddenDeathAlert.ropeEnabled = var_41_0.suddenDeathAlert.ropeEnabled ~= false
	var_41_0.suddenDeathAlert.ropeYOffsetPx = var_41_0.suddenDeathAlert.ropeYOffsetPx ~= nil and var_41_0.suddenDeathAlert.ropeYOffsetPx or (var_41_0.infoOverlay and var_41_0.infoOverlay.ropeYOffsetPx or 0) - 10
	var_41_0.suddenDeathAlert.text = var_41_0.suddenDeathAlert.text or {}
	var_41_0.suddenDeathAlert.text.scale = var_41_0.suddenDeathAlert.text.scale or 1
	var_41_0.suddenDeathAlert.text.integerScale = var_41_0.suddenDeathAlert.text.integerScale ~= false
	var_41_0.suddenDeathAlert.text.titleX = var_41_0.suddenDeathAlert.text.titleX or 474
	var_41_0.suddenDeathAlert.text.titleY = var_41_0.suddenDeathAlert.text.titleY or 68
	var_41_0.suddenDeathAlert.text.colors = var_41_0.suddenDeathAlert.text.colors or {
		base = {
			0.95,
			0.95,
			0.97,
			1
		},
		judge = {
			0.98,
			0.84,
			0.55,
			1
		},
		boss = {
			0.96,
			0.58,
			0.64,
			1
		},
		numberBlink = {
			0.95,
			0.22,
			0.26,
			1
		},
		powerGap = {
			0.62,
			0.88,
			0.8,
			1
		}
	}
	var_41_0.suddenDeathAlert.text.titleNumberBlink = var_41_0.suddenDeathAlert.text.titleNumberBlink or {
		square = true,
		freqHz = 3,
		enabled = true
	}
	var_41_0.suddenDeathAlert.text.dangerX = var_41_0.suddenDeathAlert.text.dangerX or 474
	var_41_0.suddenDeathAlert.text.dangerY = var_41_0.suddenDeathAlert.text.dangerY or 92
	var_41_0.suddenDeathAlert.text.dangerLabelYOffsetPx = var_41_0.suddenDeathAlert.text.dangerLabelYOffsetPx or -2
	var_41_0.suddenDeathAlert.text.titleXOffsetEn = var_41_0.suddenDeathAlert.text.titleXOffsetEn or -2
	var_41_0.suddenDeathAlert.text.dangerXOffsetEn = var_41_0.suddenDeathAlert.text.dangerXOffsetEn or -4
	var_41_0.suddenDeathAlert.text.iconStartGapPx = var_41_0.suddenDeathAlert.text.iconStartGapPx or 4
	var_41_0.suddenDeathAlert.text.iconScale = var_41_0.suddenDeathAlert.text.iconScale or 1
	var_41_0.suddenDeathAlert.text.iconGapPx = var_41_0.suddenDeathAlert.text.iconGapPx or 2
	var_41_0.judgementCountdownText = var_41_0.judgementCountdownText or var_41_0.judgementWavesLeftHud or {}
	var_41_0.judgementCountdownText.enabled = var_41_0.judgementCountdownText.enabled ~= false
	var_41_0.judgementCountdownText.x = var_41_0.judgementCountdownText.x ~= nil and var_41_0.judgementCountdownText.x or 472
	var_41_0.judgementCountdownText.y = var_41_0.judgementCountdownText.y ~= nil and var_41_0.judgementCountdownText.y or 10
	var_41_0.judgementCountdownText.scale = var_41_0.judgementCountdownText.scale or 1
	var_41_0.judgementCountdownText.integerScale = var_41_0.judgementCountdownText.integerScale ~= false
	var_41_0.judgementCountdownText.iconScale = var_41_0.judgementCountdownText.iconScale or 1
	var_41_0.judgementCountdownText.iconGapPx = var_41_0.judgementCountdownText.iconGapPx ~= nil and var_41_0.judgementCountdownText.iconGapPx or 2
	var_41_0.judgementCountdownText.inWaveIconGapPx = var_41_0.judgementCountdownText.inWaveIconGapPx ~= nil and var_41_0.judgementCountdownText.inWaveIconGapPx or 6
	var_41_0.judgementCountdownText.colors = var_41_0.judgementCountdownText.colors or {
		base = {
			0.95,
			0.95,
			0.97,
			1
		},
		judge = {
			0.98,
			0.84,
			0.55,
			1
		},
		numberBlink = {
			0.95,
			0.22,
			0.26,
			1
		}
	}
	var_41_0.judgementCountdownText.blink = var_41_0.judgementCountdownText.blink or {
		min = 1,
		square = true,
		freqHz = 3,
		enabled = true,
		max = 2
	}
	var_41_0.tooltip.padPx = var_41_0.tooltip.padPx or math.floor(6 * var_41_0.scale)
	var_41_0.unitSpawnBanner = var_41_0.unitSpawnBanner or {
		y = 16,
		text1Scale = 1,
		x = 16,
		offsetY = 60,
		offsetX = 0,
		scale = 1,
		textOffsetY = 1,
		textOffsetX = 0,
		text2Scale = 0.9,
		anchor = "battlefield_top",
		gapPx = 6,
		singleLine = false
	}
	var_41_0.victorySprite = var_41_0.victorySprite or {
		offsetX = 0,
		dur = 3,
		scale = 2,
		offsetY = 100
	}
	var_41_0.defeatSprite = var_41_0.defeatSprite or {
		offsetX = 0,
		dur = 3,
		scale = 2,
		offsetY = 100
	}
	var_41_0.upgrade = var_41_0.upgrade or {}
	var_41_0.upgrade.tooltip = {
		costOffsetY = 0,
		statOffsetY = 0.7,
		descOffsetY = 0,
		nameOffsetY = 0,
		costTextOffsetY = -1
	}
	var_41_0.classCard = {
		titleOffsetY = 6,
		titleOffsetX = 8,
		descTextOffsetX = 5,
		descSidePadPx = -2,
		randomOptionIconOffsetX = -55,
		randomOptionIconSizePx = 32,
		middleCardNudgeX = 2,
		statOffsetY = 13,
		descOffsetY = 14,
		nameOffsetY = -11.5,
		statOffsetX = 3,
		rightCardNudgeX = 3,
		leftCardNudgeX = 2,
		iconOffsetY = -40,
		descLineSpacing = 1.45,
		randomOptionIconOffsetY = 158,
		randomOptionTooltipOffsetY = 2.5,
		randomOptionTooltipWidth = 120,
		gapMul = 0.2,
		classSkillTooltipOffsetY = 8,
		classSkillTooltipWidth = 160,
		font = var_41_0.fontClassCard,
		appear = {
			dur = 0.4,
			offsetPx = 24,
			delay = 0.4
		},
		overlayMask = {
			padPx = 0,
			holeFracH = 0.075,
			holeFracW = 0.053
		},
		hover = {
			insetEnterPx = 6,
			liftPx = 6,
			leaveExpandPx = 2
		},
		press = {
			scale = 0.94,
			dur = 0.12
		},
		resolve = {
			targetOffsetY = 0,
			targetOffsetX = 0,
			settleScale = 0.95,
			slamMaxScale = 1.3,
			slamMinScale = 0.75,
			preScaleAdd = 0.28,
			moveDur = 0.35,
			outTotalMul = 0.45,
			outDurMul = 0.45
		},
		tooltip = {
			followOffsetX = 9,
			gap = 6,
			followOffsetY = -4
		},
		statLabelColor = {
			0.33,
			0.28,
			0.22,
			1
		},
		statValueColor = {
			0.1,
			0.1,
			0.1,
			1
		},
		statDeltaColor = {
			0.08,
			0.55,
			0.22,
			1
		},
		skillFrame = {
			hoverShiftLeftPx = 4,
			scale = 1,
			hoverLerpOut = 20,
			offsetY = 0,
			offsetX = 0,
			iconOffsetY = -1,
			iconOffsetX = -2,
			iconInsetPx = 4,
			topOffsetPx = 20,
			rightInsetPx = -40,
			enabled = true,
			hoverLerpIn = 28
		}
	}
	var_41_0.classTitleText = {
		maxWidthPadPx = 8,
		text = "클래스 승급",
		align = "center",
		offsetY = -6.5,
		offsetX = 0,
		baselineShiftPx = 0,
		insetPx = 0,
		color = {
			1,
			1,
			1,
			1
		},
		outline = {
			passes = 4,
			diagonal = false,
			thicknessPx = 1,
			color = {
				0,
				0,
				0,
				1
			}
		}
	}
	var_41_0.heartNumber = {
		useFont = true,
		targetH = 8,
		offsetX = -258,
		offsetY = -69,
		integerScale = true,
		align = "center",
		x = math.floor(var_41_0.virtual.W * 0.9),
		y = math.floor(var_41_0.virtual.H * 0.22),
		color = {
			1,
			0.5215686275,
			0.5215686275,
			1
		}
	}
	var_41_0.heartShake = {
		dur = 0.22,
		freq = 20,
		ampPx = 2
	}
	var_41_0.heartIdle = {
		freq = 0.6,
		ampPx = 2
	}
	var_41_0.heartOverlay = {
		xOffsetPx = 0,
		yOffsetPx = -14
	}
	var_41_0.moneyDisplay = {
		offsetX = -50,
		align = "right",
		enabled = false,
		offsetY = -24
	}
	var_41_0.goldDisplay = {
		y = 10,
		x = 288,
		align = "right",
		scale = 1,
		integerScale = true,
		enabled = true,
		color = {
			0.8431372549,
			0.7058823529,
			0.4156862745,
			1
		}
	}
	var_41_0.itemInventory = {
		panel = {
			scale = 1,
			dropDur = 0.7,
			dropEndOffsetPx = 0,
			dropStartOffsetPx = -50,
			cooltimeOffsetY = 13,
			shadowOffsetY = 4,
			shadowOffsetX = 0,
			anchor = "battlefield-bottom-left",
			gapX = 0,
			offsetY = -55,
			offsetX = 5,
			hoverOutRate = 10,
			hoverInRate = 12,
			hoverUpOnCooldownPx = 4,
			hoverDownPx = 3,
			clickPop = {
				upDurSec = 0.16,
				upPx = 10,
				downDurSec = 0.16
			},
			cooldown = {
				alpha = 0.45,
				progressAlpha = 0.35,
				durSec = 3,
				color = {
					0,
					0,
					0,
					1
				},
				progressColor = {
					0,
					0,
					0,
					1
				}
			},
			shadow = {
				greyoutBrightness = 0.7
			}
		},
		icon = {
			offsetX = 0,
			offsetY = 13,
			scale = 1,
			center = true
		}
	}
	var_41_0.spinCountDisplay = {
		offsetX = 28,
		targetH = 8,
		align = "right",
		offsetY = -24
	}
	var_41_0.spinPriceDisplay = {
		offsetX = -21,
		targetH = 8,
		align = "center",
		offsetY = -191
	}
	var_41_0.slotBookIcon = {
		outlineRadiusPx = 3,
		offsetX = -61,
		offsetY = -2,
		enabled = true,
		tooltipOffsetY = -5,
		tooltipOffsetX = 0,
		scale = 1,
		tooltipPadTopPx = math.floor(3 * var_41_0.scale),
		tooltipPadBottomPx = math.floor(3 * var_41_0.scale),
		tooltipPadLeftPx = math.floor(3 * var_41_0.scale),
		tooltipPadRightPx = math.floor(3 * var_41_0.scale),
		tooltipGapPx = math.floor(6 * var_41_0.scale),
		tooltipRowGapPx = math.floor(6 * var_41_0.scale),
		tooltipIconGapPx = math.floor(8 * var_41_0.scale)
	}
	var_41_0.spinstick = {
		animSpeedSecPerFrame = 0.08,
		hitExpandPx = 2,
		offsetY = 6,
		offsetX = -40,
		hitOffsetY = -15,
		hitOffsetX = -3,
		hitExpandY = -26
	}
	var_41_0.sandboxNextLines = {
		offsetX = 0,
		offsetY = 160,
		labelDY = math.floor(6 * var_41_0.scale)
	}
	var_41_0.sandboxJungsu = {
		offsetX = 10,
		offsetY = -70
	}
	var_41_0.sandboxCoreEquip = {
		offsetY = 8,
		offsetX = 0,
		btnW = math.floor(14 * var_41_0.scale),
		btnH = math.floor(10 * var_41_0.scale),
		gap = math.floor(4 * var_41_0.scale),
		equipW = math.floor(40 * var_41_0.scale),
		equipH = math.floor(12 * var_41_0.scale),
		labelDY = math.floor(6 * var_41_0.scale)
	}
	var_41_0.fireman = {
		offsetX = 16,
		anchor = "battlefield-bottom-left",
		offsetY = -200,
		scaleStep = 2
	}
	var_41_0.dpsButton = {
		followFiremanY = true,
		alignRight = true,
		attachToWindow = true,
		offsetY = 0,
		offsetX = 6.5,
		pressDur = 0.12,
		panelLeftX = 493,
		scaleStep = 1,
		shadowOffsetX = 0,
		shadowOffsetY = 0,
		outlineRadiusPx = 2,
		outlineThreshold = 0.5,
		hover = true,
		outlineColor = {
			0.9294117647058824,
			0.9019607843137255,
			0.9529411764705882,
			1
		}
	}
	var_41_0.fastForwardButton = {
		offsetX = -8,
		pressDur = 0.1,
		offsetY = 18
	}
	var_41_0.dpsWindow = {
		offsetY = 0,
		ease = "outCubic",
		alpha = 1,
		slideDur = 0.52,
		offsetX = 0,
		title = {
			y = 19,
			x = 510,
			textKey = "dps_window_title",
			text = "지난 전투 피해량",
			scale = 1.5,
			highRes = true,
			color = {
				1,
				0.9,
				0.5,
				1
			}
		},
		emptyText = {
			y = 126,
			x = 573,
			textKey = "dps_window_empty",
			text = "전투 기록 없음",
			highRes = true
		},
		slotList = {
			y = 48,
			x = 507,
			portraitX = 6,
			damageTextOffsetY = 12,
			damageTextOffsetX = 0,
			damageBarShadowLeftPx = 2.3,
			damageBarShadowBottomPx = 2.3,
			damageBarOffsetY = 15,
			damageBarH = 6,
			damageBarW = 88,
			damageBarX = 32,
			wheelW = 131,
			scrollSpeed = 18,
			scale = 2,
			viewH = 172,
			portraitY = 6,
			portraitScale = 2,
			gap = -2,
			scrollbarH = 172,
			scrollbarW = 2,
			scrollbarY = 48,
			scrollbarX = 634,
			gradePalette = {
				enabled = true,
				threshold = 0.05,
				source = {
					{
						0.3843137254901961,
						0.3333333333333333,
						0.396078431372549
					},
					{
						0.1803921568627451,
						0.13333333333333333,
						0.1843137254901961
					},
					{
						0.24313725490196078,
						0.20784313725490197,
						0.27450980392156865
					}
				},
				advanced = {
					swaps = {
						{
							to = {
								0.41568627450980394,
								0.5490196078431373,
								0.4470588235294118
							}
						},
						{
							to = {
								0.17647058823529413,
								0.23921568627450981,
								0.19215686274509805
							}
						},
						{
							to = {
								0.25882352941176473,
								0.3607843137254902,
								0.28627450980392155
							}
						}
					}
				},
				rare = {
					swaps = {
						{
							to = {
								0.3607843137254902,
								0.4549019607843137,
								0.5725490196078431
							}
						},
						{
							to = {
								0.13725490196078433,
								0.17647058823529413,
								0.23921568627450981
							}
						},
						{
							to = {
								0.20784313725490197,
								0.29411764705882354,
								0.4196078431372549
							}
						}
					}
				},
				legendary = {
					swaps = {
						{
							to = {
								0.6274509803921569,
								0.5294117647058824,
								0.35294117647058826
							}
						},
						{
							to = {
								0.21568627450980393,
								0.16470588235294117,
								0.11764705882352941
							}
						},
						{
							to = {
								0.43137254901960786,
								0.3333333333333333,
								0.19607843137254902
							}
						}
					}
				},
				prism = {
					foil = true
				},
				normal = {
					enabled = false
				}
			},
			skillDamageColor = {
				0.2901960784313726,
				0.5607843137254902,
				0.9058823529411765,
				1
			},
			scrollbarTrackColor = {
				0.1843137254901961,
				0.1607843137254902,
				0.2196078431372549,
				0.9
			},
			scrollbarColor = {
				0.45098039215686275,
				0.40784313725490196,
				0.4980392156862745,
				0.95
			}
		}
	}

	local var_41_43 = love and love.filesystem

	if not (var_41_43 and var_41_43.getInfo and (var_41_43.getInfo("release.flag", "file") or var_41_43.getInfo("build_release.flag", "file"))) and var_41_43 and var_41_43.getInfo and var_41_43.load and var_41_43.getInfo("dps_scroll_tuning.lua") then
		local var_41_44, var_41_45 = pcall(var_41_43.load, "dps_scroll_tuning.lua")

		if var_41_44 and var_41_45 then
			local var_41_46, var_41_47 = pcall(var_41_45)

			if var_41_46 and type(var_41_47) == "table" and type(var_41_47.slotList) == "table" then
				local var_41_48 = var_41_0.dpsWindow.slotList
				local var_41_49 = var_41_47.slotList
				local var_41_50 = {
					"x",
					"y",
					"viewH",
					"wheelW",
					"scrollbarX",
					"scrollbarY",
					"scrollbarH"
				}

				for iter_41_2, iter_41_3 in ipairs(var_41_50) do
					if type(var_41_49[iter_41_3]) == "number" then
						var_41_48[iter_41_3] = var_41_49[iter_41_3]
					end
				end
			end
		end
	end

	local function var_41_51(arg_49_0)
		if not arg_49_0 then
			return
		end

		local var_49_0 = (function()
			local var_50_0 = love and love.filesystem

			if var_50_0 and var_50_0.getInfo and (var_50_0.getInfo("release.flag", "file") or var_50_0.getInfo("build_release.flag", "file")) then
				return nil
			end

			if var_50_0 and var_50_0.getInfo and var_50_0.load and var_50_0.getInfo("credits_scroll_tuning.lua") then
				local var_50_1, var_50_2 = pcall(var_50_0.load, "credits_scroll_tuning.lua")

				if var_50_1 and var_50_2 then
					return var_50_2
				end
			end

			local var_50_3 = {}
			local var_50_4 = os and os.getenv and os.getenv("APPDATA") or nil

			if var_50_4 and var_50_4 ~= "" then
				var_50_3[#var_50_3 + 1] = var_50_4 .. "\\LOVE\\slotbound\\credits_scroll_tuning.lua"
				var_50_3[#var_50_3 + 1] = var_50_4 .. "\\LOVE\\SlotBound\\credits_scroll_tuning.lua"
			end

			local var_50_5 = os and os.getenv and os.getenv("USERPROFILE") or nil

			if var_50_5 and var_50_5 ~= "" then
				var_50_3[#var_50_3 + 1] = var_50_5 .. "\\Documents\\SlotBound\\credits_scroll_tuning.lua"
				var_50_3[#var_50_3 + 1] = var_50_5 .. "\\문서\\SlotBound\\credits_scroll_tuning.lua"
			end

			for iter_50_0, iter_50_1 in ipairs(var_50_3) do
				local var_50_6 = io and io.open and io.open(iter_50_1, "rb") or nil

				if var_50_6 then
					local var_50_7 = var_50_6:read("*all")

					var_50_6:close()

					if var_50_7 and var_50_7 ~= "" then
						local var_50_8 = loadstring(var_50_7)

						if var_50_8 then
							return var_50_8
						end
					end
				end
			end

			return nil
		end)()

		if not var_49_0 then
			return
		end

		local var_49_1, var_49_2 = pcall(var_49_0)

		if not var_49_1 or type(var_49_2) ~= "table" then
			return
		end

		local var_49_3 = var_49_2.creditsText or var_49_2

		if type(var_49_3) ~= "table" then
			return
		end

		if type(var_49_3.scrollArea) == "table" then
			arg_49_0.scrollArea = arg_49_0.scrollArea or {}

			for iter_49_0, iter_49_1 in ipairs({
				"x",
				"y",
				"w",
				"h"
			}) do
				if type(var_49_3.scrollArea[iter_49_1]) == "number" then
					arg_49_0.scrollArea[iter_49_1] = var_49_3.scrollArea[iter_49_1]
				end
			end
		end
	end

	var_41_0.pauseOverlay = {
		ropeYOffsetPx = -8,
		topbarYOffsetPx = 0,
		visibleY = 0,
		snapEps = 0.5,
		settingsDelaySec = 0.35,
		hiddenY = -var_41_0.virtual.H,
		spring = {
			damping = 14,
			maxVel = 2000,
			k = 90
		},
		pauseTitle = {
			yFrac = 0.22,
			enabled = true,
			text = "menu_pause",
			offsetY = 15,
			offsetX = 106,
			scale = 1,
			align = "center",
			color = {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961,
				1
			}
		},
		pauseBackground = {
			offsetX = -20,
			scale = 1,
			enabled = true,
			offsetY = 0
		},
		playtimeBackground = {
			offsetX = 0,
			scale = 1,
			enabled = true,
			offsetY = 0
		},
		optionPaperBackground = {
			scale = 1,
			offsetY = 0,
			offsetX = 0,
			enabled = true,
			content = {
				extraTop = 16,
				padX = 72,
				offsetY = 90,
				padY = 48,
				offsetX = 135,
				widthAlign = "left",
				widthPx = -260
			}
		},
		creditsBackground = {
			offsetX = 0,
			scale = 1,
			enabled = true,
			offsetY = 0
		},
		creditsText = {
			titleScale = 1,
			titleOffsetX = 0,
			titleOffsetY = 44,
			blankLineGapPx = 10,
			lineGapPx = 3,
			bodyScale = 1,
			enabled = true,
			resetGapPx = 40,
			speedPxPerSec = 13,
			bodyTopGapPx = 12,
			textScaleWithBackground = true,
			scaleWithBackground = true,
			syncWithBackground = true,
			titleZh = "制作人员",
			align = "center",
			titleJa = "クレジット",
			titleEn = "CREDITS",
			titleKo = "크레딧",
			scrollArea = {
				y = 178,
				x = 319,
				h = 83,
				w = 124
			},
			title = {
				y = 116,
				x = 318,
				w = 126
			},
			titleColor = {
				0.38,
				0.25,
				0.14,
				1
			},
			bodyColor = {
				0.29,
				0.24,
				0.17,
				1
			},
			palette = {
				heading = {
					0.38,
					0.25,
					0.14,
					1
				},
				name = {
					0.27,
					0.3,
					0.37,
					1
				},
				footer = {
					0.39,
					0.34,
					0.24,
					1
				},
				brand = {
					0.38,
					0.25,
					0.14,
					1
				},
				label = {
					0.38,
					0.25,
					0.14,
					1
				},
				credit = {
					0.27,
					0.3,
					0.37,
					1
				},
				music = {
					0.38,
					0.25,
					0.14,
					1
				},
				thanks = {
					0.39,
					0.34,
					0.24,
					1
				},
				copyright = {
					0.39,
					0.34,
					0.24,
					1
				}
			},
			bodyKo = {
				"Slotbound",
				"",
				"제작",
				"김민 / Optima Arch",
				"",
				"스테이지 음악",
				"Tsiya",
				"",
				"Special Thanks",
				"류형준",
				"",
				"플레이해주셔서",
				"감사합니다.",
				"",
				"© 2026 Optima Arch"
			},
			bodyEn = {
				"Slotbound",
				"",
				"Created by",
				"Min Kim / Optima Arch",
				"",
				"Stage Music",
				"Tsiya",
				"",
				"Special Thanks",
				"Hyeongjun Lyu",
				"",
				"Thank you for playing.",
				"",
				"© 2026 Optima Arch"
			},
			bodyJa = {
				"Slotbound",
				"",
				"制作",
				"ミン・キム / Optima Arch",
				"",
				"ステージ音楽",
				"Tsiya",
				"",
				"Special Thanks",
				"リュ・ヒョンジュン",
				"",
				"遊んでいただき",
				"ありがとうございます。",
				"",
				"© 2026 Optima Arch"
			},
			bodyZh = {
				"Slotbound",
				"",
				"制作",
				"Min Kim / Optima Arch",
				"",
				"关卡音乐",
				"Tsiya",
				"",
				"特别鸣谢",
				"Hyeongjun Lyu",
				"",
				"感谢游玩。",
				"",
				"© 2026 Optima Arch"
			}
		},
		playtimeText = {
			titleOffsetY = 92,
			yFracTitle = 0.18,
			yFracTime = 0.35,
			offsetX = -81,
			enabled = true,
			title = "플레이 시간",
			timeOffsetY = 50,
			align = "center",
			time = "00:00:00",
			timeScale = 1,
			titleScale = 1,
			titleColor = {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961,
				1
			},
			timeColor = {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961,
				1
			}
		},
		buttonRopes = {
			scale = 1,
			offsetY = -3,
			offsetX = 8,
			enabled = true,
			motion = {
				basePhase = 0,
				phaseStep = 0.8,
				periodSec = 4,
				amplitudePx = 2,
				enabled = true
			},
			positions = {
				{
					y = 50,
					x = 134
				},
				{
					y = 45,
					x = 182
				},
				{
					y = 48,
					x = 230
				},
				{
					y = 53,
					x = 278
				}
			}
		},
		playButtonDark = {
			scale = 1,
			hoverDropPx = 6,
			offsetY = 20,
			offsetX = 22,
			enabled = true,
			alignCenterX = true
		},
		replayButtonDark = {
			scale = 1,
			hoverDropPx = 6,
			offsetY = 20,
			offsetX = 22,
			enabled = true,
			alignCenterX = true
		},
		wikiButtonDark = {
			scale = 1,
			hoverDropPx = 6,
			offsetY = 20,
			offsetX = 22,
			enabled = false,
			alignCenterX = true
		},
		optionButtonDark = {
			scale = 1,
			hoverDropPx = 6,
			offsetY = 20,
			offsetX = 22,
			enabled = true,
			alignCenterX = true
		},
		toMainMenuButtonDark = {
			scale = 1,
			hoverDropPx = 6,
			offsetY = 20,
			offsetX = 22,
			enabled = true,
			alignCenterX = true
		},
		buttons = {
			gapPx = 12,
			centerX = true,
			startY = 210,
			scale = 1,
			order = {
				"option",
				"play",
				"replay",
				"tomainmenu"
			},
			positions = {},
			hover = {
				alphaThreshold = 0.01,
				liftPx = 4,
				outlineRadiusPx = 0,
				outlineColor = {
					0.22745098039215686,
					0.1607843137254902,
					0.2235294117647059,
					1
				}
			},
			labels = {
				offsetX = 10,
				offsetY = -1,
				perButton = {
					optionButton = {
						dy = 0,
						dx = 0
					},
					playButton = {
						dy = 0,
						dx = 0
					},
					replayButton = {
						dy = 0,
						dx = 0
					},
					toMainMenuButton = {
						dy = 0,
						dx = 0
					}
				}
			}
		}
	}
	var_41_0.restartConfirm = {
		boardOffsetY = 120,
		boardOffsetX = 0,
		centerFracY = 0.5,
		centerFracX = 0.5,
		bottomPadMinPx = 10,
		sidePadMinPx = 10,
		shadow = {
			offsetX = 4,
			enabled = false,
			offsetY = 4,
			color = {
				0,
				0,
				0,
				0.8
			}
		},
		prompt = {
			yFrac = 0.24,
			align = "center",
			offsetY = 0,
			offsetX = 0,
			topPadMinPx = 16,
			color = {
				0.898,
				0.886,
				0.941,
				1
			}
		},
		yes = {
			offsetY = -10,
			yFracFromBottom = 0.1,
			xFrac = 0.06,
			offsetX = 70,
			color = {
				0.949,
				0.902,
				0.788,
				1
			}
		},
		no = {
			offsetY = -10,
			yFracFromBottom = 0.1,
			xFrac = 0.06,
			offsetX = -70,
			color = {
				0.949,
				0.902,
				0.788,
				1
			}
		},
		hitPad = {
			y = 6,
			x = 12
		},
		spring = {
			damping = 12,
			maxVel = 2000,
			k = 90
		},
		hoverUnderline = {
			gapPx = 8,
			padX = 0,
			drawDurSec = 0.2,
			thicknessSourcePx = 1,
			retractDurSec = 0.1,
			enabled = true,
			color = {
				0.9490196078431372,
				0.6509803921568628,
				0.3686274509803922,
				1
			}
		}
	}
	var_41_0.infoOverlay = {
		visibleY = 0,
		snapEps = 0.5,
		ropeYOffsetPx = -10,
		hiddenY = -var_41_0.virtual.H,
		spring = {
			damping = 14,
			maxVel = 2000,
			k = 90
		},
		bob = {
			pixelStep = 1,
			quantize = true,
			freqHz = 0.18,
			enabled = true,
			ampPx = 4
		},
		text = {
			titleScale = 1,
			titleOffsetY = -11,
			lineSpacingMul = 1.45,
			descOffsetY = 18,
			lineGapPx = 1,
			bodyScale = 1,
			xOffsetPx = 300,
			x = math.floor(var_41_0.virtual.W * 0.28),
			y = math.floor(var_41_0.virtual.H * 0.22),
			w = math.floor(var_41_0.virtual.W * 0.54),
			descWrapWidthPx = math.floor(var_41_0.virtual.W * 0.15),
			titleColor = {
				0.949,
				0.902,
				0.788,
				1
			},
			bodyColor = {
				0.898,
				0.886,
				0.941,
				1
			},
			numberColor = {
				1,
				0.839,
				0.353,
				1
			}
		},
		targetLabel = {
			y = 68,
			x = 527,
			align = "center",
			tier3YOffsetPx = -158,
			bottomPadPx = 22,
			scale = 1,
			color = {
				0.949,
				0.902,
				0.788,
				1
			},
			outline = {
				enabled = false,
				scaleWith = true,
				basePx = 1,
				color = {
					0.22745098039215686,
					0.1607843137254902,
					0.2235294117647059,
					1
				}
			}
		}
	}
	var_41_0.itemInfoOverlay = {
		visibleY = 0,
		snapEps = 0.5,
		ropeYOffsetPx = -10,
		hiddenY = -var_41_0.virtual.H,
		spring = {
			damping = 14,
			maxVel = 2000,
			k = 90
		},
		text = {
			y = 93,
			x = 478,
			lineSpacingMul = 1.45,
			lineGapPx = 1,
			bodyScale = 1,
			titleScale = 1,
			w = math.floor(var_41_0.virtual.W * 0.54),
			titleColor = {
				0.949,
				0.902,
				0.788,
				1
			},
			bodyColor = {
				0.898,
				0.886,
				0.941,
				1
			},
			numberColor = {
				1,
				0.839,
				0.353,
				1
			},
			descWrapWidthPx = math.floor(var_41_0.virtual.W * 0.54)
		}
	}

	local var_41_52 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

	if love.filesystem.getInfo(var_41_52) and var_41_0.infoOverlay and var_41_0.infoOverlay.text then
		local var_41_53, var_41_54 = pcall(var_41_2, var_41_52)

		if var_41_53 and var_41_54 then
			var_41_0.infoOverlay.text.titleFont = var_41_54
			var_41_0.infoOverlay.text.bodyFont = var_41_54
		end
	end

	var_41_0.coreMessage = {
		align = "left",
		scale = 1,
		typeCharsPerSec = 14,
		appearOffsetPx = -10,
		showSprite = false,
		showText = false,
		leaveDur = 0.2,
		hold = 10000,
		appearDur = 0.25,
		yOffsetPx = -115,
		xOffsetPx = 73,
		everyWave = 3,
		color = {
			0.898,
			0.886,
			0.941,
			1
		},
		float = {
			phasePerChar = 0,
			speedHz = 0.8,
			enabled = false,
			ampPx = 0.8
		},
		jitter = {
			pixelStep = 1,
			quantize = true,
			ampJitter = 0.15,
			minAmpPx = 0.53,
			axis = "xy",
			speedHz = 4,
			freqJitter = 0.1,
			ampPx = 0.53,
			enabled = true
		},
		scrollJitter = {
			pixelStep = 1,
			quantize = true,
			axis = "xy",
			speedHz = 6.5,
			enabled = true,
			ampPx = 2
		}
	}

	var_41_51(var_41_0.pauseOverlay.creditsText)

	var_41_0.shopOverlay = {
		snapEps = 0.5,
		visibleY = 0,
		offsetX = -4,
		hiddenY = -var_41_0.virtual.H,
		spring = {
			damping = 12,
			maxVel = 1500,
			k = 64
		},
		bob = {
			pixelStep = 1,
			quantize = false,
			freqHz = 0.45,
			enabled = true,
			ampPx = 3
		},
		text = {
			y = 82,
			x = 385,
			value = "SHOP",
			color = {
				1,
				1,
				1,
				1
			},
			piano = {
				pixelStep = 1,
				quantize = true,
				perCharDelaySec = 0.35,
				restDurSec = 0,
				bounceDurSec = 0.26,
				enabled = true,
				ampPx = 3
			}
		}
	}
	var_41_0.shopKeeper = var_41_0.shopKeeper or {
		y = 54,
		x = 247,
		offsetX = 0,
		holdFrame = 1,
		pauseDur = 1.4,
		frameDur = 0.5,
		drawScale = 2,
		frameCount = 4,
		frameH = 68,
		frameW = 63,
		offsetY = 0
	}
	var_41_0.itemShop = {
		typeCharsPerSec = 70,
		slots = {
			baseY = 185,
			baseX = 254,
			scale = 1,
			countReroll = 1,
			countDelete = 1,
			countSell = 3,
			rerollGapPx = 6,
			deleteGapPx = 30,
			spacingPx = 6,
			hover = {
				useUnitPixelThickness = true,
				outlineRadiusPx = 2,
				liftPx = 4,
				outlineThreshold = 0.5,
				outlineColor = {
					0.9294117647058824,
					0.9019607843137255,
					0.9529411764705882,
					1
				}
			}
		},
		itemLayout = (function()
			local var_51_0 = {}

			var_51_0.centerIcon = true
			var_51_0.iconOffsetX = 0
			var_51_0.iconOffsetY = 7
			var_51_0.iconScale = 1
			var_51_0.priceOffsetX = 10
			var_51_0.priceOffsetY = 54
			var_51_0.priceScale = 1
			var_51_0.priceColor = {
				0.615686274509804,
				0.792156862745098,
				0.9411764705882353,
				1
			}

			local var_51_1 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

			if love.filesystem.getInfo(var_51_1) then
				local var_51_2, var_51_3 = pcall(function()
					return var_51_0._loader and var_51_0._loader(var_51_1)
				end)

				if not var_51_3 then
					local var_51_4 = love.filesystem.read(var_51_1)

					if var_51_4 and var_51_4 ~= "" then
						local var_51_5 = {}

						for iter_51_0 in var_51_4:gmatch("([^\r\n]+)") do
							if not iter_51_0:match("^%s*#") then
								table.insert(var_51_5, iter_51_0)
							end
						end

						local var_51_6 = table.concat(var_51_5, "\n")

						if not var_51_6:match("\n$") then
							var_51_6 = var_51_6 .. "\n"
						end

						local var_51_7 = love.filesystem.newFileData(var_51_6, var_51_1)
						local var_51_8 = love.graphics.newFont(var_51_7)

						var_51_8:setFilter("nearest", "nearest")

						var_51_0.priceFont = var_51_8
						var_51_0.nameFont = var_51_0.nameFont or var_51_8
						var_51_0.effectFont = var_51_0.effectFont or var_51_8
					end
				elseif var_51_3 then
					var_51_0.priceFont = var_51_3
					var_51_0.nameFont = var_51_0.nameFont or var_51_3
					var_51_0.effectFont = var_51_0.effectFont or var_51_3
				end
			end

			var_51_0.nameOffsetX = 217
			var_51_0.nameOffsetY = -134
			var_51_0.nameScale = 1
			var_51_0.nameColor = {
				1,
				1,
				1,
				1
			}
			var_51_0.stripEnglishParen = true
			var_51_0.effectOffsetX = 216
			var_51_0.effectOffsetY = -109
			var_51_0.effectScale = 1
			var_51_0.effectColor = {
				0.82,
				0.84,
				0.86,
				1
			}
			var_51_0.descMaxWidth = 95
			var_51_0.descLineGapPx = 5
			var_51_0.cooldown = {
				fixedLines = 3,
				absolute = false,
				offsetY = -130,
				offsetX = 216,
				gapPx = 25,
				scale = 1,
				color = {
					1,
					0.839,
					0.353,
					1
				}
			}

			return var_51_0
		end)()
	}
	var_41_0.waveCounter = {
		offsetY = -5,
		offsetX = -8,
		centerNeighborGapPx = 0,
		visibleSlots = 5,
		easing = "easeOutCubic",
		scaleOther = 1,
		scaleCurrent = 2,
		slideDuration = 0.3,
		waveGapPx = 5,
		spacing = 1,
		colorCurrent = {
			0.9,
			0.92,
			0.95,
			1
		},
		colorOther = {
			0.6,
			0.62,
			0.66,
			0.85
		},
		outline = {
			enabled = true,
			scaleWith = true,
			basePx = 1,
			color = {
				0.22745098039215686,
				0.1607843137254902,
				0.2235294117647059,
				1
			}
		},
		outlineOther = {
			enabled = true,
			scaleWith = true,
			basePx = 1,
			color = {
				0.1568627450980392,
				0.1411764705882353,
				0.1803921568627451,
				0.85
			}
		}
	}
	var_41_0.waveLabel = {
		cornerRadiusPx = 4,
		bgOffsetY = 0,
		hideAfterSec = 2.5,
		offsetY = 0,
		offsetX = 0,
		textOffsetY = -1,
		textOffsetX = 0,
		bgOffsetX = 0,
		integerScale = true,
		scale = 1
	}
	var_41_0.maxUnit = {
		y = 10,
		x = 369,
		iconOffsetY = 0,
		iconOffsetX = 88,
		scale = 1,
		align = "right",
		enabled = true,
		max = 10,
		color = {
			1,
			1,
			1,
			1
		},
		overColor = {
			1,
			0.4196078431,
			0.368627451,
			1
		},
		iconFilter = {
			blend = "alpha",
			alpha = 0.75
		},
		waveText = {
			y = 10,
			x = 445,
			enabled = true,
			scale = 1,
			align = "center",
			color = {
				1,
				1,
				1,
				1
			},
			difficultyMaxWaves = {
				10,
				20,
				30
			}
		}
	}
	var_41_0.jungsuDisplay = {
		y = 10,
		x = 400,
		align = "center",
		scale = 1,
		integerScale = true,
		enabled = true,
		color = {
			0.615686274509804,
			0.792156862745098,
			0.9411764705882353,
			1
		}
	}
	var_41_0.slotBlink = {
		maxAlpha = 0.15,
		minAlpha = 0.01,
		speedHz = 0.4,
		enabled = true,
		waveShape = "abs-sin",
		color = {
			1,
			0.4196078431,
			0.368627451,
			1
		},
		shake = {
			freq = 6,
			axis = "xy",
			enabled = true,
			ampPx = 1
		}
	}

	local var_41_55 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

	if love.filesystem.getInfo(var_41_55) then
		local var_41_56, var_41_57 = pcall(var_41_2, var_41_55)

		if var_41_56 and var_41_57 then
			var_41_0.coreMessage.font = var_41_57

			if var_41_0.waveLabel then
				var_41_0.waveLabel.font = var_41_57
			end

			if var_41_0.coreCountDisplay then
				var_41_0.coreCountDisplay.font = var_41_57
			end

			if var_41_0.jungsuDisplay and not var_41_0.jungsuDisplay.font then
				var_41_0.jungsuDisplay.font = var_41_57
			end
		end
	end

	if not var_41_0.coreMessage.font and var_41_0.infoOverlay and var_41_0.infoOverlay.text then
		var_41_0.coreMessage.font = var_41_0.infoOverlay.text.titleFont or var_41_0.fontTitle
	end

	if var_41_0.coreCountDisplay and not var_41_0.coreCountDisplay.font then
		var_41_0.coreCountDisplay.font = var_41_0.coreMessage.font or var_41_0.infoOverlay and var_41_0.infoOverlay.text and var_41_0.infoOverlay.text.titleFont or var_41_0.fontTitle or var_41_0.font
	end

	var_41_0.coreSelect = {
		animationFrameSec = 0.07,
		yOffsetPx = -30,
		hover = {
			insetEnterPx = 6,
			outlineRadiusPx = 2,
			liftPx = 10,
			leaveExpandPx = 2
		},
		content = (function()
			local var_53_0 = (var_41_0.coreSelect or {}).scale or 2

			return {
				padPx = 8 * var_53_0,
				icon = {
					y = 50,
					x = 0,
					sizePx = 16 * var_53_0
				},
				name = {
					y = 25,
					x = var_53_0,
					color = {
						0.4235294118,
						0.2980392157,
						0.168627451,
						1
					}
				},
				rarity = {
					y = 110,
					x = 0,
					gapPx = 2 * var_53_0,
					color = {
						0.1803921569,
						0.1647058824,
						0.1411764706,
						1
					}
				},
				desc = {
					wrapW = 110,
					x = 28,
					y = 120,
					maxLines = 5,
					lineGapPx = 2 * var_53_0,
					color = {
						0.1803921569,
						0.1647058824,
						0.1411764706,
						1
					},
					numberColor = {
						0.4392156863,
						0.2980392157,
						0.7058823529,
						1
					}
				},
				duration = {
					y = 220,
					x = 2,
					bottomPadPx = 6 * var_53_0,
					labelColor = {
						0.5411764706,
						0.4784313725,
						0.3725490196,
						1
					},
					valueColor = {
						0.3098039216,
						0.2705882353,
						0.2156862745,
						1
					}
				}
			}
		end)(),
		buttons = {
			scale = 2,
			labelYOffsetPx = -2,
			yOffsetPx = 20,
			gapPx = 20,
			hover = {
				liftPx = 4
			}
		}
	}
	var_41_0.postfx = {
		enabled = true,
		toneMap = {
			gamma = 2,
			exposure = 1.1,
			enabled = true
		},
		bloom = {
			radius = 1.25,
			threshold = 0.85,
			strength = 0.8,
			enabled = true,
			knee = 0.2,
			temporal = {
				enabled = true,
				hold = 0.85
			}
		},
		vignette = {
			strength = 0.12,
			enabled = true,
			roundness = 0.55
		},
		grainSharpen = {
			enabled = true,
			sharpen = 0.1,
			grain = 0.018
		}
	}
	var_41_0.bossBar = {
		yOffsetPx = -60,
		nameGapPx = 10,
		color = {
			0.6980392156862745,
			0.2,
			0.23921568627450981,
			1
		}
	}
	var_41_0.battlefieldSections = {
		alpha = 1,
		enabled = true,
		battlefield = {
			y = 230,
			anchor = "battlefield-top-left",
			scale = 1,
			x = 376
		},
		shop = {
			y = 194,
			anchor = "battlefield-top-left",
			scale = 1,
			x = 382
		},
		stone = {
			y = 158,
			anchor = "battlefield-top-left",
			scale = 1,
			x = 382
		},
		hover = {
			radiusPx = 2,
			shiftLeftPx = 4,
			alphaThreshold = 0.05,
			liftPx = 4,
			outlineColor = {
				0.9294117647058824,
				0.9019607843137255,
				0.9529411764705882,
				1
			}
		}
	}
	var_41_0.sandboxPostFX = {
		offsetY = 190,
		offsetX = 0,
		gapX = math.floor(6 * var_41_0.scale),
		btnW = math.floor(26 * var_41_0.scale),
		btnH = math.floor(10 * var_41_0.scale)
	}
	var_41_0.coreEquipped = {
		y = 290,
		x = 21,
		sizePx = 16,
		wrapCols = 4,
		rowGapPx = 4,
		align = "left",
		anchor = "below",
		gapPx = 4,
		fx = {
			scale = {
				enabled = true,
				speedHz = 2,
				amp = 0.08
			},
			spawn = {
				mul = 1,
				dur = {
					0.6,
					0.5,
					0.4
				}
			}
		},
		preSpin = {
			holdSec = 0.3,
			returnSec = 0.25,
			moveSec = 0.25,
			enabled = true,
			exclude = {
				"Triggerchest",
				"EchoMirror",
				"HarvestFlag",
				"Resonoscope",
				"StellarBlessing",
				"JokerSeed",
				"Wildcard"
			},
			dest = {
				offsetX = 20,
				anchor = "slot-bottom-center",
				offsetY = -42
			},
			shake = {
				pixelStep = 1,
				freqHz = 9,
				quantize = true,
				ampPx = 2
			}
		}
	}
	var_41_0.cloudScroll = {
		tileH = 130,
		tileW = 190,
		scale = 2,
		speedPx = 6
	}
	var_41_0.scrollIntroAnim = {
		y = -16,
		x = 167,
		scale = 2,
		slideDur = 0.4,
		slideFromY = -30,
		label = {
			letterSpacing = 1,
			pulseAmp = 0.22,
			pulseFreq = 1.6,
			offsetY = 2,
			offsetX = 0,
			completeOffsetX = -1,
			pulseCount = 3,
			urgentThreshold = 2,
			outlineStep = 1,
			maxCount = 5,
			scale = 1,
			color = {
				0.4235294118,
				0.2980392157,
				0.168627451,
				1
			},
			outlineColor = {
				0.22745098039215686,
				0.1607843137254902,
				0.2235294117647059,
				1
			},
			urgentColor = {
				0.8,
				0.52,
				0.18,
				1
			},
			completeColor = {
				0.8,
				0.52,
				0.18,
				1
			}
		},
		returnPrompt = {
			pulseHz = 0.6,
			minAlpha = 0.9,
			outlineRadiusPx = 2,
			scaleAmp = 0.08,
			outlineColor = {
				1,
				0.68,
				0.22,
				1
			}
		}
	}

	if not var_41_0.coreSelect or not var_41_0.coreSelect.font then
		if var_41_0.coreMessage and var_41_0.coreMessage.font then
			var_41_0.coreSelect.font = var_41_0.coreMessage.font
		else
			local var_41_58 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

			if love.filesystem.getInfo(var_41_58) then
				local var_41_59, var_41_60 = pcall(var_41_2, var_41_58)

				if var_41_59 and var_41_60 then
					var_41_0.coreSelect.font = var_41_60
				end
			end

			if not var_41_0.coreSelect.font and var_41_0.infoOverlay and var_41_0.infoOverlay.text then
				var_41_0.coreSelect.font = var_41_0.infoOverlay.text.titleFont or var_41_0.fontTitle
			end
		end
	end

	if var_41_0.heartNumber then
		local var_41_61 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")
		local var_41_62 = love.filesystem.getInfo(var_41_61)
		local var_41_63 = false

		if var_41_62 then
			local var_41_64, var_41_65 = pcall(var_41_2, var_41_61)

			if var_41_64 and var_41_65 then
				var_41_0.heartNumber.font = var_41_65
				var_41_63 = true
			end
		end

		if not var_41_63 then
			local var_41_66 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

			if love.filesystem.getInfo(var_41_66) then
				local var_41_67, var_41_68 = pcall(var_41_2, var_41_66)

				if var_41_67 and var_41_68 then
					var_41_0.heartNumber.font = var_41_68
				end
			end
		end
	end

	function var_0_2.reloadLanguageFonts(arg_54_0)
		arg_54_0 = arg_54_0 or var_41_0

		if not arg_54_0 then
			return
		end

		local function var_54_0(arg_55_0, arg_55_1)
			local var_55_0 = var_0_1.resolve(arg_55_0)

			if type(var_55_0) == "string" and var_55_0 ~= "" and love.filesystem.getInfo(var_55_0) then
				local var_55_1 = tostring(var_55_0):lower()
				local var_55_2 = var_55_1:match("%.ttf$") ~= nil or var_55_1:match("%.otf$") ~= nil
				local var_55_3
				local var_55_4

				if var_55_2 then
					var_55_3, var_55_4 = pcall(love.graphics.newFont, var_55_0, arg_55_1 or 10, var_0_4)

					if var_55_3 and var_55_4 and var_55_4.setFilter then
						var_55_4:setFilter("nearest", "nearest")
					end
				else
					var_55_3, var_55_4 = pcall(var_41_2, var_55_0)
				end

				if var_55_3 and var_55_4 then
					if _G.maybeRegisterSLineTtfTextEffect then
						_G.maybeRegisterSLineTtfTextEffect(var_55_4, arg_55_0, var_55_0, _G.currentGameLang or "ko")
					end

					return var_55_4, var_55_0
				end
			end

			return nil, var_55_0
		end

		local function var_54_1(arg_56_0)
			if type(arg_56_0) ~= "string" or arg_56_0 == "" then
				return nil
			end

			if love.filesystem.getInfo(arg_56_0) then
				local var_56_0, var_56_1 = pcall(var_41_2, arg_56_0)

				if var_56_0 and var_56_1 then
					return var_56_1
				end
			end

			return nil
		end

		local function var_54_2(arg_57_0, arg_57_1)
			if type(arg_57_0) ~= "string" or arg_57_0 == "" or not love.filesystem.getInfo(arg_57_0) then
				return nil
			end

			local var_57_0 = tostring(arg_57_0):lower()
			local var_57_1
			local var_57_2

			if var_57_0:match("%.ttf$") or var_57_0:match("%.otf$") then
				var_57_1, var_57_2 = pcall(love.graphics.newFont, arg_57_0, arg_57_1 or 10, var_0_4)
			else
				var_57_1, var_57_2 = pcall(var_41_2, arg_57_0)
			end

			if var_57_1 and var_57_2 then
				var_57_2:setFilter("nearest", "nearest")

				return var_57_2
			end

			return nil
		end

		local function var_54_3(arg_58_0, arg_58_1, arg_58_2)
			if arg_58_0 and _G.registerChineseLatinFallbackFont then
				local var_58_0 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_58_1) or arg_58_1

				_G.registerChineseLatinFallbackFont(arg_58_0, var_54_2(var_58_0, arg_58_2))
			end

			return arg_58_0
		end

		local function var_54_4(arg_59_0, arg_59_1)
			if arg_59_0 and arg_59_1 and arg_59_0.setFallbacks then
				pcall(arg_59_0.setFallbacks, arg_59_0, arg_59_1)
			end

			return arg_59_0
		end

		if (_G.currentGameLang or "ko") == "zh" then
			if _G.clearChineseShadowFonts then
				_G.clearChineseShadowFonts()
			end

			local var_54_5 = var_54_3(var_41_3(10, false), "src/data/font/Galmuri9W.fnt", 10)
			local var_54_6 = var_54_3(var_41_3(10, false), "src/data/font/Galmuri9W.fnt", 10)
			local var_54_7 = var_54_3(var_41_3(10, true), "src/data/font/Galmuri9WS.fnt", 10)
			local var_54_8 = var_54_3(var_41_3(10, false), "src/data/font/Galmuri7W.fnt", 10)
			local var_54_9 = var_54_3(var_41_3(10, true), "src/data/font/Galmuri9WS.fnt", 10)
			local var_54_10 = var_54_2("src/data/font/Galmuri7WS.fnt", 10)
			local var_54_11 = var_54_2("src/data/font/Galmuri9W.fnt", 10)
			local var_54_12 = var_54_2("src/data/font/Galmuri9WS.fnt", 10)
			local var_54_13 = var_54_2("src/data/font/Galmuri7W.fnt", 10)
			local var_54_14 = var_54_12 or var_54_11
			local var_54_15 = var_54_11 or var_54_12

			if var_54_5 then
				arg_54_0.fontInfo = {
					priority = 0,
					kind = "vector",
					path = var_0_3
				}
				arg_54_0.fontPath = var_0_3
				arg_54_0.fontKind = "vector"
				arg_54_0.fontScale = 1
				arg_54_0.fontTitleScale = 1
				arg_54_0.font = var_54_5
				arg_54_0.fontTitle = var_54_6 or var_54_5
				arg_54_0.fontBattlefieldTitle = var_54_6 or var_54_5
				arg_54_0.fontPauseTitle = var_54_6 or var_54_5
				arg_54_0.fontStageSelectTitle = var_54_6 or var_54_5
				arg_54_0.fontClassCard = var_54_5
				arg_54_0.fontGameOver = var_54_7 or var_54_5
				arg_54_0.fontCoin = var_54_13 or var_54_8 or var_54_5
				arg_54_0.fontCoinScale = 1
				arg_54_0.fontJackpot = var_54_13 or var_54_8 or var_54_5
				arg_54_0.fontJackpotScale = 1
				arg_54_0.fontShopTitle = var_54_10 or var_54_9 or var_54_5
				arg_54_0.fontShopTitleScale = 1

				if var_54_15 then
					arg_54_0.combatNumberFont = var_54_15
				end

				if arg_54_0.classCard then
					arg_54_0.classCard.font = var_54_5
				end

				if arg_54_0.infoOverlay and arg_54_0.infoOverlay.text then
					arg_54_0.infoOverlay.text.titleFont = var_54_7 or var_54_6 or var_54_5
					arg_54_0.infoOverlay.text.bodyFont = var_54_7 or var_54_5
				end

				if arg_54_0.itemShop and arg_54_0.itemShop.itemLayout then
					arg_54_0.itemShop.itemLayout.priceFont = var_54_9 or var_54_5
					arg_54_0.itemShop.itemLayout.nameFont = var_54_7 or var_54_5
					arg_54_0.itemShop.itemLayout.effectFont = var_54_7 or var_54_5
				end

				if arg_54_0.coreMessage then
					arg_54_0.coreMessage.font = var_54_7 or var_54_5
				end

				if arg_54_0.waveLabel then
					arg_54_0.waveLabel.font = var_54_7 or var_54_5
				end

				if arg_54_0.coreCountDisplay then
					arg_54_0.coreCountDisplay.font = var_54_7 or var_54_5
				end

				if var_54_14 and arg_54_0.goldDisplay then
					arg_54_0.goldDisplay.font = var_54_14
				end

				if var_54_14 and arg_54_0.jungsuDisplay then
					arg_54_0.jungsuDisplay.font = var_54_14
				end

				if arg_54_0.maxUnit then
					arg_54_0.maxUnit.font = var_54_7 or var_54_5

					if arg_54_0.maxUnit.waveText then
						arg_54_0.maxUnit.waveText.font = var_54_7 or var_54_5
					end
				end

				if arg_54_0.coreSelect then
					arg_54_0.coreSelect.font = var_54_7 or var_54_5
				end

				if var_54_14 and arg_54_0.heartNumber then
					arg_54_0.heartNumber.font = var_54_14
					arg_54_0.heartNumber.popupFont = var_54_14
				end
			end

			return
		end

		if _G.clearChineseShadowFonts then
			_G.clearChineseShadowFonts()
		end

		local var_54_16 = (_G.currentGameLang or "ko") == "ja"
		local var_54_17 = var_54_16 and var_54_1("src/data/font/Galmuri9W.fnt") or nil
		local var_54_18 = var_54_16 and var_54_1("src/data/font/Galmuri9WS.fnt") or nil
		local var_54_19 = var_54_16 and var_54_1("src/data/font/Galmuri7W.fnt") or nil
		local var_54_20 = var_54_16 and var_54_1("src/data/font/Galmuri7WS.fnt") or nil
		local var_54_21, var_54_22 = var_54_0("src/data/font/Galmuri9W.fnt")

		if var_54_21 then
			var_54_4(var_54_21, var_54_17)

			local var_54_23 = tostring(var_54_22):lower()
			local var_54_24 = (var_54_23:match("%.ttf$") or var_54_23:match("%.otf$")) and "vector" or "bmfont"

			arg_54_0.fontInfo = {
				priority = 0,
				path = var_54_22,
				kind = var_54_24
			}
			arg_54_0.fontPath = var_54_22
			arg_54_0.fontKind = var_54_24
			arg_54_0.font = var_54_21
			arg_54_0.fontTitle = var_54_21
			arg_54_0.fontBattlefieldTitle = var_54_21
			arg_54_0.fontPauseTitle = var_54_21
			arg_54_0.fontStageSelectTitle = var_54_21
			arg_54_0.fontClassCard = var_54_21

			if arg_54_0.classCard then
				arg_54_0.classCard.font = var_54_21
			end
		end

		local var_54_25 = var_54_0("src/data/font/Galmuri9WS.fnt")

		if var_54_25 then
			var_54_4(var_54_25, var_54_18 or var_54_17)

			arg_54_0.fontGameOver = var_54_25

			if arg_54_0.infoOverlay and arg_54_0.infoOverlay.text then
				arg_54_0.infoOverlay.text.titleFont = var_54_25
				arg_54_0.infoOverlay.text.bodyFont = var_54_25
			end

			if arg_54_0.itemShop and arg_54_0.itemShop.itemLayout then
				arg_54_0.itemShop.itemLayout.priceFont = var_54_25
				arg_54_0.itemShop.itemLayout.nameFont = var_54_25
				arg_54_0.itemShop.itemLayout.effectFont = var_54_25
			end

			if arg_54_0.coreMessage then
				arg_54_0.coreMessage.font = var_54_25
			end

			if arg_54_0.waveLabel then
				arg_54_0.waveLabel.font = var_54_25
			end

			if arg_54_0.coreCountDisplay then
				arg_54_0.coreCountDisplay.font = var_54_25
			end

			if arg_54_0.jungsuDisplay then
				arg_54_0.jungsuDisplay.font = var_54_25
			end

			if arg_54_0.coreSelect then
				arg_54_0.coreSelect.font = var_54_25
			end

			if arg_54_0.heartNumber then
				arg_54_0.heartNumber.font = var_54_25
			end
		end

		local var_54_26 = var_54_25 or var_54_21

		if arg_54_0.maxUnit and var_54_26 then
			arg_54_0.maxUnit.font = var_54_26

			if arg_54_0.maxUnit.waveText then
				arg_54_0.maxUnit.waveText.font = var_54_26
			end
		end

		local var_54_27 = var_54_0("src/data/font/Galmuri7W.fnt")

		if var_54_27 then
			var_54_4(var_54_27, var_54_19 or var_54_17)

			arg_54_0.fontCoin = var_54_27
			arg_54_0.fontCoinScale = 8 / math.max(1, var_54_27:getHeight())
			arg_54_0.fontJackpot = var_54_27
		end

		local var_54_28 = var_54_0("src/data/font/Galmuri7WS.fnt") or var_54_27

		if var_54_28 then
			var_54_4(var_54_28, var_54_20 or var_54_19 or var_54_17)

			arg_54_0.fontShopTitle = var_54_28
		end
	end

	return var_41_0
end

return var_0_2
