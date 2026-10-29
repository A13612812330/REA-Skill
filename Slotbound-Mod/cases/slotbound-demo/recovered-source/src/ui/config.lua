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
	local var_1_2 = setmetatable({}, {
		__mode = "k"
	})
	local var_1_3 = setmetatable({}, {
		__mode = "k"
	})

	_G.__slotboundChineseShadowFonts = var_1_0
	_G.__slotboundChineseLatinFallbackFonts = var_1_1

	local var_1_4 = {
		largeAlpha = 0.7,
		largeAtScale = 1.3,
		alpha = 0.62,
		lang = "zh",
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
	local var_1_5 = {
		strokeAlpha = 1,
		shadowIncludesStroke = true,
		shadowAlpha = 1,
		uniformAlpha = true,
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
			var_1_0[arg_2_0] = arg_2_1 or var_1_4
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
			var_1_0[arg_6_0] = var_1_5
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

		var_1_0[arg_7_0] = var_1_5

		return arg_7_0
	end

	function _G.clearChineseShadowFonts()
		var_1_0 = setmetatable({}, {
			__mode = "k"
		})
		var_1_1 = setmetatable({}, {
			__mode = "k"
		})
		var_1_2 = setmetatable({}, {
			__mode = "k"
		})
		var_1_3 = setmetatable({}, {
			__mode = "k"
		})
		_G.__slotboundChineseShadowFonts = var_1_0
		_G.__slotboundChineseLatinFallbackFonts = var_1_1
	end

	local var_1_6 = love.graphics.print
	local var_1_7 = love.graphics.printf
	local var_1_8 = false
	local var_1_9

	local function var_1_10(arg_9_0)
		local var_9_0 = type(arg_9_0)

		if var_9_0 == "string" or var_9_0 == "number" or var_9_0 == "table" or var_9_0 == "userdata" then
			return arg_9_0
		end

		if arg_9_0 == nil or var_9_0 == "function" or var_9_0 == "thread" then
			return ""
		end

		return tostring(arg_9_0)
	end

	local function var_1_11(arg_10_0)
		return type(arg_10_0) == "string" and #arg_10_0 == 1 and arg_10_0:byte() <= 127
	end

	local function var_1_12(arg_11_0)
		if not var_1_11(arg_11_0) then
			return "nonAscii"
		end

		if arg_11_0:match("%s") then
			return "space"
		end

		if arg_11_0:match("%a") then
			return "letter"
		end

		if arg_11_0:match("%d") or arg_11_0 == "+" or arg_11_0 == "-" or arg_11_0 == "%" then
			return "number"
		end

		return "punct"
	end

	local function var_1_13(arg_12_0)
		return arg_12_0 ~= nil and arg_12_0 ~= "nonAscii"
	end

	local function var_1_14(arg_13_0)
		return tostring(arg_13_0 or ""):gmatch("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*")
	end

	local function var_1_15(arg_14_0, arg_14_1, arg_14_2)
		local var_14_0 = arg_14_0[arg_14_1]

		if not var_14_0 then
			var_14_0 = setmetatable({}, {
				__mode = "k"
			})
			arg_14_0[arg_14_1] = var_14_0
		end

		local var_14_1 = var_14_0[arg_14_2]

		if not var_14_1 then
			var_14_1 = {
				count = 0,
				values = {}
			}
			var_14_0[arg_14_2] = var_14_1
		end

		return var_14_1
	end

	local function var_1_16(arg_15_0, arg_15_1, arg_15_2, arg_15_3)
		if arg_15_3 <= arg_15_0.count then
			arg_15_0.count = 0
			arg_15_0.values = {}
		end

		if arg_15_0.values[arg_15_1] == nil then
			arg_15_0.count = arg_15_0.count + 1
		end

		arg_15_0.values[arg_15_1] = arg_15_2

		return arg_15_2
	end

	local function var_1_17(arg_16_0)
		for iter_16_0 in var_1_14(arg_16_0) do
			if not var_1_11(iter_16_0) then
				return true
			end
		end

		return false
	end

	local function var_1_18()
		if (_G.currentGameLang or "ko") ~= "zh" then
			return nil
		end

		local var_17_0 = love.graphics.getFont and love.graphics.getFont() or nil

		return var_17_0 and var_1_1[var_17_0] or nil
	end

	local function var_1_19(arg_18_0, arg_18_1, arg_18_2)
		local var_18_0 = {
			width = 0,
			runs = {}
		}
		local var_18_1
		local var_18_2
		local var_18_3 = {}

		local function var_18_4()
			if #var_18_3 == 0 then
				return
			end

			local var_19_0 = table.concat(var_18_3)
			local var_19_1 = var_1_13(var_18_1) and arg_18_2 or arg_18_1
			local var_19_2 = false

			if var_18_2 ~= nil and var_18_2 ~= var_18_1 and var_1_13(var_18_2) ~= var_1_13(var_18_1) then
				var_19_2 = true
				var_18_0.width = var_18_0.width + 2
			end

			local var_19_3 = var_19_1 and var_19_1:getWidth(var_19_0) or 0

			var_18_0.runs[#var_18_0.runs + 1] = {
				text = var_19_0,
				font = var_19_1,
				ascii = var_1_13(var_18_1),
				transition = var_19_2,
				width = var_19_3
			}
			var_18_0.width = var_18_0.width + var_19_3
			var_18_2 = var_18_1
			var_18_3 = {}
		end

		for iter_18_0 in var_1_14(arg_18_0) do
			local var_18_5 = var_1_12(iter_18_0)

			if var_18_1 == nil then
				var_18_1 = var_18_5
			elseif var_18_5 ~= var_18_1 then
				var_18_4()

				var_18_1 = var_18_5
			end

			var_18_3[#var_18_3 + 1] = iter_18_0
		end

		var_18_4()

		return var_18_0
	end

	local function var_1_20(arg_20_0, arg_20_1, arg_20_2)
		arg_20_0 = tostring(arg_20_0 or "")

		local var_20_0 = var_1_15(var_1_2, arg_20_1, arg_20_2)
		local var_20_1 = var_20_0.values[arg_20_0]

		if var_20_1 then
			return var_20_1
		end

		return var_1_16(var_20_0, arg_20_0, var_1_19(arg_20_0, arg_20_1, arg_20_2), 1024)
	end

	local function var_1_21(arg_21_0, arg_21_1, arg_21_2)
		return var_1_20(arg_21_0, arg_21_1, arg_21_2).width
	end

	local function var_1_22(arg_22_0, arg_22_1, arg_22_2)
		return var_1_19(arg_22_0, arg_22_1, arg_22_2).width
	end

	function _G.measureChineseMixedTextWidth(arg_23_0, arg_23_1)
		if (_G.currentGameLang or "ko") ~= "zh" then
			return nil
		end

		arg_23_1 = arg_23_1 or love.graphics.getFont and love.graphics.getFont() or nil

		local var_23_0 = arg_23_1 and var_1_1[arg_23_1] or nil

		if not arg_23_1 or not var_23_0 then
			return nil
		end

		return var_1_21(arg_23_0, arg_23_1, var_23_0)
	end

	function _G.getChineseLatinFallbackFont(arg_24_0)
		if (_G.currentGameLang or "ko") ~= "zh" then
			return nil
		end

		arg_24_0 = arg_24_0 or love.graphics.getFont and love.graphics.getFont() or nil

		return arg_24_0 and var_1_1[arg_24_0] or nil
	end

	local function var_1_23(arg_25_0, arg_25_1, arg_25_2, arg_25_3, ...)
		local var_25_0 = love.graphics.getFont and love.graphics.getFont() or nil
		local var_25_1 = var_1_18()

		if not var_25_0 or not var_25_1 then
			return var_1_6(arg_25_0, arg_25_1, arg_25_2, ...)
		end

		local var_25_2 = {
			...
		}
		local var_25_3 = math.abs(tonumber(var_25_2[2]) or 1)
		local var_25_4 = 2 * var_25_3

		arg_25_0 = tostring(arg_25_0 or "")

		local var_25_5 = arg_25_1 or 0
		local var_25_6 = var_1_20(arg_25_0, var_25_0, var_25_1)

		for iter_25_0, iter_25_1 in ipairs(var_25_6.runs) do
			if iter_25_1.transition then
				var_25_5 = var_25_5 + var_25_4
			end

			if arg_25_3 ~= "nonAsciiOnly" or not iter_25_1.ascii then
				love.graphics.setFont(iter_25_1.font)
				var_1_6(iter_25_1.text, var_25_5, arg_25_2, unpack(var_25_2))
			end

			var_25_5 = var_25_5 + iter_25_1.width * var_25_3
		end

		love.graphics.setFont(var_25_0)
	end

	local function var_1_24(arg_26_0, arg_26_1, arg_26_2, ...)
		return var_1_23(arg_26_0, arg_26_1, arg_26_2, "all", ...)
	end

	local function var_1_25(arg_27_0, arg_27_1, arg_27_2, ...)
		return var_1_23(arg_27_0, arg_27_1, arg_27_2, "nonAsciiOnly", ...)
	end

	local function var_1_26(arg_28_0, arg_28_1, arg_28_2, arg_28_3, arg_28_4, ...)
		local var_28_0 = love.graphics.getFont and love.graphics.getFont() or nil
		local var_28_1 = var_1_18()

		if not var_28_0 or not var_28_1 then
			return var_1_7(arg_28_0, arg_28_1, arg_28_2, arg_28_3, ...)
		end

		local var_28_2, var_28_3, var_28_4, var_28_5, var_28_6, var_28_7, var_28_8, var_28_9 = ...
		local var_28_10 = "left"

		if type(var_28_2) == "string" then
			var_28_10 = var_28_2
			var_28_3, var_28_4, var_28_5, var_28_6, var_28_7, var_28_8, var_28_9 = select(2, ...)
		else
			var_28_3, var_28_4, var_28_5, var_28_6, var_28_7, var_28_8, var_28_9 = ...
		end

		var_28_3 = var_28_3 or 0
		var_28_4 = var_28_4 or 1
		var_28_5 = var_28_5 or var_28_4
		var_28_6 = var_28_6 or 0
		var_28_7 = var_28_7 or 0
		var_28_8 = var_28_8 or 0
		var_28_9 = var_28_9 or 0
		arg_28_0 = tostring(arg_28_0 or "")

		local var_28_11 = tonumber(arg_28_3) or 0
		local var_28_12 = var_1_15(var_1_3, var_28_0, var_28_1)
		local var_28_13 = tostring(var_28_11) .. "\x00" .. arg_28_0
		local var_28_14 = var_28_12.values[var_28_13]

		if not var_28_14 then
			local var_28_15 = {}

			local function var_28_16(arg_29_0)
				var_28_15[#var_28_15 + 1] = arg_29_0
			end

			local function var_28_17(arg_30_0, arg_30_1)
				arg_30_0 = tostring(arg_30_0 or "")
				arg_30_1 = tonumber(arg_30_1) or 0

				if arg_30_1 <= 0 or arg_30_1 >= var_1_22(arg_30_0, var_28_0, var_28_1) then
					var_28_16(arg_30_0)

					return
				end

				local var_30_0 = ""

				for iter_30_0 in var_1_14(arg_30_0) do
					local var_30_1 = var_30_0 .. iter_30_0

					if var_30_0 == "" or arg_30_1 >= var_1_22(var_30_1, var_28_0, var_28_1) then
						var_30_0 = var_30_1
					else
						var_28_16(var_30_0)

						var_30_0 = iter_30_0
					end
				end

				if var_30_0 ~= "" then
					var_28_16(var_30_0)
				end
			end

			for iter_28_0 in (arg_28_0 .. "\n"):gmatch("(.-)\n") do
				var_28_17(iter_28_0, var_28_11)
			end

			if #var_28_15 == 0 then
				var_28_15[1] = arg_28_0
			end

			var_28_14 = var_1_16(var_28_12, var_28_13, {
				lines = var_28_15,
				hasNonAscii = var_1_17(arg_28_0)
			}, 512)
		end

		local var_28_18 = var_28_14.hasNonAscii and var_28_0:getHeight() or var_28_1:getHeight()

		for iter_28_1, iter_28_2 in ipairs(var_28_14.lines) do
			local var_28_19 = var_1_21(iter_28_2, var_28_0, var_28_1)
			local var_28_20 = arg_28_1 or 0

			if var_28_10 == "center" then
				var_28_20 = var_28_20 + math.floor(((arg_28_3 or 0) - var_28_19) * var_28_4 * 0.5 + 0.5)
			elseif var_28_10 == "right" then
				var_28_20 = var_28_20 + math.floor(((arg_28_3 or 0) - var_28_19) * var_28_4 + 0.5)
			end

			var_1_23(iter_28_2, var_28_20, (arg_28_2 or 0) + (iter_28_1 - 1) * var_28_18 * var_28_5, arg_28_4, var_28_3, var_28_4, var_28_5, var_28_6, var_28_7, var_28_8, var_28_9)
		end

		love.graphics.setFont(var_28_0)
	end

	local function var_1_27(arg_31_0, arg_31_1, arg_31_2, arg_31_3, ...)
		return var_1_26(arg_31_0, arg_31_1, arg_31_2, arg_31_3, "all", ...)
	end

	local function var_1_28(arg_32_0, arg_32_1, arg_32_2, arg_32_3, ...)
		return var_1_26(arg_32_0, arg_32_1, arg_32_2, arg_32_3, "nonAsciiOnly", ...)
	end

	local function var_1_29()
		if var_1_8 then
			return nil
		end

		local var_33_0 = love.graphics.getFont and love.graphics.getFont() or nil
		local var_33_1 = var_33_0 and var_1_0[var_33_0] or nil

		if var_33_1 == true then
			var_33_1 = var_1_4
		end

		if not var_33_1 then
			return nil
		end

		local var_33_2 = _G.currentGameLang or "ko"

		if var_33_1.lang and var_33_1.lang ~= var_33_2 then
			return nil
		end

		if var_33_1.langs and not var_33_1.langs[var_33_2] then
			return nil
		end

		return var_33_1
	end

	local function var_1_30(arg_34_0)
		local var_34_0, var_34_1, var_34_2, var_34_3 = love.graphics.getColor()

		return 0, 0, 0, (var_34_3 or 1) * (arg_34_0 or 1)
	end

	local function var_1_31(arg_35_0, arg_35_1)
		if not arg_35_0 then
			return nil, nil
		end

		if arg_35_0.shadowOffsets or arg_35_0.strokeOffsets then
			return arg_35_0.shadowOffsets or arg_35_0.offsets, arg_35_0.shadowAlpha or arg_35_0.alpha or 1, arg_35_0.strokeOffsets, arg_35_0.strokeAlpha or 1
		end

		if (tonumber(arg_35_1 or 1) or 1) >= (arg_35_0.largeAtScale or math.huge) then
			return arg_35_0.largeOffsets or arg_35_0.offsets or var_1_4.offsets, arg_35_0.largeAlpha or arg_35_0.alpha or var_1_4.alpha
		end

		return arg_35_0.offsets or var_1_4.offsets, arg_35_0.alpha or var_1_4.alpha
	end

	local function var_1_32(...)
		local var_36_0, var_36_1, var_36_2 = ...
		local var_36_3

		var_36_3 = tonumber(var_36_1) or 1

		local var_36_4

		var_36_4 = tonumber(var_36_2) or var_36_3

		return math.max(math.abs(var_36_3), math.abs(var_36_4))
	end

	local function var_1_33(...)
		local var_37_0, var_37_1, var_37_2, var_37_3 = ...
		local var_37_4 = 1
		local var_37_5 = 1

		if type(var_37_0) == "string" then
			var_37_4 = tonumber(var_37_2) or 1
			var_37_5 = tonumber(var_37_3) or var_37_4
		else
			var_37_4 = tonumber(var_37_1) or 1
			var_37_5 = tonumber(var_37_2) or var_37_4
		end

		return math.max(math.abs(var_37_4), math.abs(var_37_5))
	end

	local function var_1_34()
		local var_38_0
		local var_38_1

		if love.graphics.getCanvas then
			local var_38_2 = love.graphics.getCanvas()

			if type(var_38_2) == "table" then
				var_38_2 = var_38_2[1] or var_38_2.canvas
			end

			if var_38_2 and var_38_2.getDimensions then
				var_38_0, var_38_1 = var_38_2:getDimensions()
			end
		end

		if not var_38_0 or not var_38_1 then
			var_38_0, var_38_1 = love.graphics.getDimensions()
		end

		return math.max(1, math.ceil(tonumber(var_38_0) or 1)), math.max(1, math.ceil(tonumber(var_38_1) or 1))
	end

	local function var_1_35()
		if not love.graphics.newCanvas or not love.graphics.getDimensions then
			return nil
		end

		local var_39_0, var_39_1 = var_1_34()

		if not var_1_9 or var_39_0 > var_1_9:getWidth() or var_39_1 > var_1_9:getHeight() then
			local var_39_2, var_39_3 = pcall(love.graphics.newCanvas, var_39_0, var_39_1)

			if not var_39_2 or not var_39_3 then
				return nil
			end

			var_39_3:setFilter("nearest", "nearest")

			if var_1_9 then
				var_1_9:release()
			end

			var_1_9 = var_39_3
		end

		return var_1_9, var_39_0, var_39_1
	end

	local function var_1_36(arg_40_0, arg_40_1, arg_40_2, arg_40_3, arg_40_4, arg_40_5, arg_40_6, ...)
		love.graphics.setColor(var_1_30(arg_40_4))

		for iter_40_0, iter_40_1 in ipairs(arg_40_5 or var_1_4.offsets) do
			var_1_25(arg_40_1, (arg_40_2 or 0) + (iter_40_1[1] or 0), (arg_40_3 or 0) + (iter_40_1[2] or 0), ...)

			if arg_40_0 and arg_40_0.shadowIncludesStroke then
				for iter_40_2, iter_40_3 in ipairs(arg_40_6 or {}) do
					var_1_25(arg_40_1, (arg_40_2 or 0) + (iter_40_1[1] or 0) + (iter_40_3[1] or 0), (arg_40_3 or 0) + (iter_40_1[2] or 0) + (iter_40_3[2] or 0), ...)
				end
			end
		end
	end

	local function var_1_37(arg_41_0, arg_41_1, arg_41_2, arg_41_3, arg_41_4, arg_41_5, arg_41_6, arg_41_7, ...)
		love.graphics.setColor(var_1_30(arg_41_5))

		for iter_41_0, iter_41_1 in ipairs(arg_41_6 or var_1_4.offsets) do
			var_1_28(arg_41_1, (arg_41_2 or 0) + (iter_41_1[1] or 0), (arg_41_3 or 0) + (iter_41_1[2] or 0), arg_41_4, ...)

			if arg_41_0 and arg_41_0.shadowIncludesStroke then
				for iter_41_2, iter_41_3 in ipairs(arg_41_7 or {}) do
					var_1_28(arg_41_1, (arg_41_2 or 0) + (iter_41_1[1] or 0) + (iter_41_3[1] or 0), (arg_41_3 or 0) + (iter_41_1[2] or 0) + (iter_41_3[2] or 0), arg_41_4, ...)
				end
			end
		end
	end

	local function var_1_38(arg_42_0, arg_42_1, arg_42_2, arg_42_3, arg_42_4, arg_42_5, arg_42_6, arg_42_7, arg_42_8, ...)
		if not arg_42_0 or not arg_42_0.uniformAlpha or (arg_42_4 or 1) >= 0.999 then
			return false
		end

		local var_42_0, var_42_1, var_42_2 = var_1_35()

		if not var_42_0 then
			return false
		end

		local var_42_3, var_42_4, var_42_5 = love.graphics.getColor()

		love.graphics.push("all")
		love.graphics.setCanvas(var_42_0)
		love.graphics.clear(0, 0, 0, 0)

		var_1_8 = true

		var_1_36(arg_42_0, arg_42_1, arg_42_2, arg_42_3, arg_42_6, arg_42_5, arg_42_7, ...)

		for iter_42_0, iter_42_1 in ipairs(arg_42_7 or {}) do
			love.graphics.setColor(0, 0, 0, arg_42_8 or 1)
			var_1_25(arg_42_1, (arg_42_2 or 0) + (iter_42_1[1] or 0), (arg_42_3 or 0) + (iter_42_1[2] or 0), ...)
		end

		love.graphics.setColor(var_42_3, var_42_4, var_42_5, 1)
		var_1_24(arg_42_1, arg_42_2, arg_42_3, ...)

		var_1_8 = false

		love.graphics.pop()
		love.graphics.push("all")
		love.graphics.origin()
		love.graphics.setColor(1, 1, 1, arg_42_4 or 1)
		love.graphics.draw(var_42_0, 0, 0, 0, 1, 1, 0, 0, 0, 0)
		love.graphics.pop()

		return true
	end

	local function var_1_39(arg_43_0, arg_43_1, arg_43_2, arg_43_3, arg_43_4, arg_43_5, arg_43_6, arg_43_7, arg_43_8, arg_43_9, ...)
		if not arg_43_0 or not arg_43_0.uniformAlpha or (arg_43_5 or 1) >= 0.999 then
			return false
		end

		local var_43_0, var_43_1, var_43_2 = var_1_35()

		if not var_43_0 then
			return false
		end

		local var_43_3, var_43_4, var_43_5 = love.graphics.getColor()

		love.graphics.push("all")
		love.graphics.setCanvas(var_43_0)
		love.graphics.clear(0, 0, 0, 0)

		var_1_8 = true

		var_1_37(arg_43_0, arg_43_1, arg_43_2, arg_43_3, arg_43_4, arg_43_7, arg_43_6, arg_43_8, ...)

		for iter_43_0, iter_43_1 in ipairs(arg_43_8 or {}) do
			love.graphics.setColor(0, 0, 0, arg_43_9 or 1)
			var_1_28(arg_43_1, (arg_43_2 or 0) + (iter_43_1[1] or 0), (arg_43_3 or 0) + (iter_43_1[2] or 0), arg_43_4, ...)
		end

		love.graphics.setColor(var_43_3, var_43_4, var_43_5, 1)
		var_1_27(arg_43_1, arg_43_2, arg_43_3, arg_43_4, ...)

		var_1_8 = false

		love.graphics.pop()
		love.graphics.push("all")
		love.graphics.origin()
		love.graphics.setColor(1, 1, 1, arg_43_5 or 1)
		love.graphics.draw(var_43_0, 0, 0, 0, 1, 1, 0, 0, 0, 0)
		love.graphics.pop()

		return true
	end

	function love.graphics.print(arg_44_0, arg_44_1, arg_44_2, ...)
		arg_44_0 = var_1_10(arg_44_0)

		local var_44_0 = var_1_29()

		if var_44_0 then
			local var_44_1, var_44_2, var_44_3, var_44_4 = love.graphics.getColor()
			local var_44_5, var_44_6, var_44_7, var_44_8 = var_1_31(var_44_0, var_1_32(...))

			if var_1_38(var_44_0, arg_44_0, arg_44_1, arg_44_2, var_44_4, var_44_5, var_44_6, var_44_7, var_44_8, ...) then
				return
			end

			var_1_8 = true

			var_1_36(var_44_0, arg_44_0, arg_44_1, arg_44_2, var_44_6, var_44_5, var_44_7, ...)

			for iter_44_0, iter_44_1 in ipairs(var_44_7 or {}) do
				love.graphics.setColor(var_1_30(var_44_8))
				var_1_25(arg_44_0, (arg_44_1 or 0) + (iter_44_1[1] or 0), (arg_44_2 or 0) + (iter_44_1[2] or 0), ...)
			end

			love.graphics.setColor(var_44_1, var_44_2, var_44_3, var_44_4)

			var_1_8 = false
		end

		return var_1_24(arg_44_0, arg_44_1, arg_44_2, ...)
	end

	function love.graphics.printf(arg_45_0, arg_45_1, arg_45_2, arg_45_3, ...)
		arg_45_0 = var_1_10(arg_45_0)

		local var_45_0 = var_1_29()

		if var_45_0 then
			local var_45_1, var_45_2, var_45_3, var_45_4 = love.graphics.getColor()
			local var_45_5, var_45_6, var_45_7, var_45_8 = var_1_31(var_45_0, var_1_33(...))

			if var_1_39(var_45_0, arg_45_0, arg_45_1, arg_45_2, arg_45_3, var_45_4, var_45_5, var_45_6, var_45_7, var_45_8, ...) then
				return
			end

			var_1_8 = true

			var_1_37(var_45_0, arg_45_0, arg_45_1, arg_45_2, arg_45_3, var_45_6, var_45_5, var_45_7, ...)

			for iter_45_0, iter_45_1 in ipairs(var_45_7 or {}) do
				love.graphics.setColor(var_1_30(var_45_8))
				var_1_28(arg_45_0, (arg_45_1 or 0) + (iter_45_1[1] or 0), (arg_45_2 or 0) + (iter_45_1[2] or 0), arg_45_3, ...)
			end

			love.graphics.setColor(var_45_1, var_45_2, var_45_3, var_45_4)

			var_1_8 = false
		end

		return var_1_27(arg_45_0, arg_45_1, arg_45_2, arg_45_3, ...)
	end
end)()

function var_0_2.init()
	local var_46_0 = {}

	var_46_0.scale = 0.8
	var_46_0.language = "ko"
	var_46_0.windowIntegerScale = true
	var_46_0.nudgeButtons = {
		disabledDimMul = 0.72,
		pressAnimDurSec = 0.15,
		reelAnimDurSec = 0.18,
		gapAboveSpin = 3,
		offsetY = 12,
		offsetX = 0,
		enabledPulse = {
			enabled = true,
			alphaMax = 0.2,
			alphaMin = 0.06,
			freqHz = 1.15,
			color = {
				1,
				1,
				1
			}
		}
	}
	var_46_0.tutorial = {
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
			scale = 1,
			offsetY = -10,
			offsetX = 0
		},
		bodyLines = {
			{
				offsetY = 37,
				offsetX = 0
			},
			{
				offsetY = 61,
				offsetX = 0
			},
			{
				offsetY = 77,
				offsetX = 0
			}
		},
		startPrompt = {
			offsetY = 102,
			offsetX = 0
		},
		welcomeSkip = {
			counterAlpha = 1,
			counterGapY = 2,
			counterScale = 1,
			lockedAlpha = 0.35
		},
		slotFocus = {
			extraW = 64,
			extraH = 54,
			offsetY = -24,
			offsetX = -20
		},
		slotTip = {
			padX = 8,
			iconOffsetY = 2,
			lineGap = 14,
			iconScale = 1,
			textOffsetY = -1,
			textOffsetX = 0,
			gapX = -24,
			minH = 0,
			minW = 0,
			autoSize = true,
			padY = 8,
			offsetY = 24
		},
		goldFocus = {
			y = 4,
			x = 242,
			h = 22,
			w = 52
		},
		goldTip = {
			gapY = 4,
			offsetY = 0,
			offsetX = 0
		},
		coreCounterFocus = {
			y = -18,
			x = 164,
			h = 44,
			w = 48,
			pad = 3
		},
		coreCounterTip = {
			gapY = 8,
			offsetY = 0,
			offsetX = 68
		},
		coreSelectTip = {
			y = 8,
			offsetY = 0,
			offsetX = 0
		},
		winTip = {
			padX = 8,
			lineGap = 14,
			textOffsetY = -1,
			unitOffsetY = 0,
			unitOffsetX = 0,
			unitGap = 8,
			padY = 8,
			offsetY = 48,
			offsetX = 42
		},
		continuePrompt = {
			gapY = 7,
			offsetY = 0,
			offsetX = 0
		},
		readyTip = {
			gapY = 8,
			padX = 8,
			textOffsetY = -1,
			lineGap = 14,
			padY = 8,
			offsetY = 0,
			offsetX = 0
		},
		positionTip = {
			padX = 8,
			padY = 8,
			textOffsetY = -1,
			lineGap = 14,
			topY = 12,
			offsetY = 0,
			offsetX = 0
		}
	}
	var_46_0.imprintPanel = {
		slotH = 320,
		slotY = 96,
		slotX = 15,
		slotW = 180,
		slotGap = -1,
		slotBg = {
			offsetY = 11,
			offsetX = 4
		},
		emptyText = {
			offsetY = 7,
			offsetX = 70
		},
		lockedText = {
			offsetY = 7,
			offsetX = 70
		},
		iconOffset = {
			y = 14,
			x = 11
		},
		imprintName = {
			offsetY = 26,
			offsetX = 24
		},
		imprintDesc = {
			gapY = 8,
			offsetX = 18
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
			faction = {
				scale = 1,
				outline = true,
				dy = 3,
				dx = 0,
				gap = 8,
				hoverPad = 2,
				hoverBrightAlpha = 0.22
			},
			infoIcon = {
				scale = 1,
				hoverBrightAlpha = 0.4,
				dy = 3,
				dx = 68
			},
			absorbLockIcon = {
				scale = 1,
				hoverBrightAlpha = 0.25,
				dy = 0,
				dx = 0,
				gap = 4
			}
		},
		randomOption = {
			y = 393,
			x = 34,
			gap = 0,
			tooltipOffsetY = 14,
			maxSlots = 5,
			size = 32,
			outlineColor = {
				0.08235294117647059,
				0.08235294117647059,
				0.10980392156862745,
				1
			}
		},
		skillFrame = {
			rightInsetPx = 432,
			enabled = true,
			iconOffsetY = -1,
			iconOffsetX = -2,
			iconInsetPx = 4,
			topOffsetPx = 24,
			scale = 1,
			tooltipOffsetY = 2,
			offsetY = 0,
			offsetX = 0
		},
		promotionBar = {
			previewWhiteMixMax = 1,
			height = 14,
			starOffsetX = 0,
			starOffsetY = 0.5,
			textScale = 0.8,
			previewPulseHz = 1.6,
			previewAlphaMax = 0.95,
			previewAlphaMin = 0,
			textOffsetY = 12,
			textOffsetX = 2,
			offsetY = 12,
			offsetX = 10,
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
					y = 11,
					x = 0,
					scale = 1,
					letterSpacing = 4,
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
				enabled = true,
				layers = 18,
				expand = 10,
				alpha = 0.06,
				pulseAmp = 0,
				pulseHz = 0,
				softness = 2.8,
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
				offsetY = -10,
				offsetX = 0
			},
			gainLabel = {
				offsetY = 8,
				offsetX = -42
			},
			cancelBtn = {
				offsetY = 16,
				offsetX = 10
			},
			cancelBtnWhenConvert = {
				extraDown = 27
			},
			convertBtn = {
				offsetY = 36,
				offsetX = 0
			},
			convertLabel = {
				offsetY = -5,
				offsetX = 0
			},
			cancelLabel = {
				offsetY = 5.5,
				offsetX = 0
			}
		}
	}
	var_46_0.cursor = {
		hotspotY = 0,
		hotspotX = 4
	}

	local function var_46_1()
		local var_47_0 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

		if love.filesystem.getInfo(var_47_0) then
			local var_47_1 = tostring(var_47_0):match("(%.%a+)$")
			local var_47_2 = var_47_1 and var_47_1:lower() == ".fnt" and "bmfont" or "vector"

			return {
				priority = 0,
				path = var_47_0,
				kind = var_47_2
			}
		end

		local var_47_3 = {
			"src/data/font",
			"data/font",
			"src/font",
			"font"
		}
		local var_47_4 = {
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
		local var_47_5 = {}
		local var_47_6

		local function var_47_7(arg_48_0, arg_48_1)
			if not arg_48_1 then
				return
			end

			if not var_47_6 or arg_48_1.priority < var_47_6.priority or arg_48_1.priority == var_47_6.priority and arg_48_0 < var_47_6.path then
				var_47_6 = {
					path = arg_48_0,
					kind = arg_48_1.kind,
					priority = arg_48_1.priority
				}
			end
		end

		local function var_47_8(arg_49_0)
			if var_47_5[arg_49_0] then
				return
			end

			var_47_5[arg_49_0] = true

			if not love.filesystem.getInfo(arg_49_0, "directory") then
				return
			end

			local var_49_0 = love.filesystem.getDirectoryItems(arg_49_0)

			table.sort(var_49_0)

			for iter_49_0, iter_49_1 in ipairs(var_49_0) do
				local var_49_1 = arg_49_0 .. "/" .. iter_49_1
				local var_49_2 = love.filesystem.getInfo(var_49_1)

				if var_49_2 then
					if var_49_2.type == "file" then
						local var_49_3 = iter_49_1:match("(%.%a+)$")

						var_47_7(var_49_1, var_47_4[var_49_3])
					elseif var_49_2.type == "directory" then
						var_47_8(var_49_1)
					end
				end
			end
		end

		for iter_47_0, iter_47_1 in ipairs(var_47_3) do
			var_47_8(iter_47_1)

			if var_47_6 and var_47_6.priority == 1 then
				break
			end
		end

		return var_47_6
	end

	local function var_46_2(arg_50_0)
		if type(arg_50_0) ~= "string" or arg_50_0 == "" then
			return nil, "missing font path"
		end

		if arg_50_0:lower():match("%.ttf$") or arg_50_0:lower():match("%.otf$") then
			local var_50_0 = love.graphics.newFont(arg_50_0, 10, var_0_4)

			var_50_0:setFilter("nearest", "nearest")

			return var_50_0
		end

		local var_50_1, var_50_2 = love.filesystem.read(arg_50_0)

		if not var_50_1 then
			return nil, var_50_2
		end

		local var_50_3 = {}

		for iter_50_0 in var_50_1:gmatch("([^\r\n]+)") do
			if not iter_50_0:match("^%s*#") then
				table.insert(var_50_3, iter_50_0)
			end
		end

		local var_50_4 = table.concat(var_50_3, "\n")

		if var_50_4 == "" then
			return nil, "empty font data"
		end

		if not var_50_4:match("\n$") then
			var_50_4 = var_50_4 .. "\n"
		end

		local var_50_5 = love.filesystem.newFileData(var_50_4, arg_50_0)
		local var_50_6 = love.graphics.newFont(var_50_5)

		var_50_6:setFilter("nearest", "nearest")

		return var_0_1.attachFallbacks(var_50_6, arg_50_0)
	end

	local function var_46_3(arg_51_0, arg_51_1)
		if not love.filesystem.getInfo(var_0_3) then
			return nil, "missing Chinese font"
		end

		local var_51_0, var_51_1 = pcall(love.graphics.newFont, var_0_3, arg_51_0 or 10, var_0_4)

		if not var_51_0 or not var_51_1 then
			return nil, tostring(var_51_1 or "Chinese font load failed")
		end

		var_51_1:setFilter("nearest", "nearest")

		if arg_51_1 and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_51_1)
		end

		return var_51_1
	end

	local var_46_4 = var_46_1()

	var_46_0.fontInfo = var_46_4
	var_46_0.fontPath = var_46_4 and var_46_4.path or nil
	var_46_0.fontKind = var_46_4 and var_46_4.kind or "builtin"
	var_46_0.fontScale = 1
	var_46_0.fontTitleScale = 1

	local var_46_5 = math.max(1, math.floor(18 * var_46_0.scale))
	local var_46_6 = math.max(1, math.floor(28 * var_46_0.scale))

	var_46_0.gameOver = {
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

	if var_46_4 and var_46_4.kind == "bmfont" then
		local var_46_7, var_46_8, var_46_9 = pcall(var_46_2, var_46_4.path)

		if not var_46_7 then
			var_46_8 = nil
			var_46_9 = tostring(var_46_8 or "bitmap font load failure")
		end

		if var_46_8 and type(var_46_8) ~= "function" and var_46_8.getHeight then
			var_46_0.font = var_46_8
			var_46_0.fontTitle = var_46_8

			local var_46_10 = math.max(1, var_46_8:getHeight())

			local function var_46_11(arg_52_0)
				if arg_52_0 <= 0 then
					return 1
				end

				local var_52_0 = arg_52_0 / var_46_10

				return (math.max(1, math.floor(var_52_0 + 0.5)))
			end

			var_46_0.fontScale = var_46_11(var_46_5)
			var_46_0.fontTitleScale = var_46_11(var_46_6)
			var_46_0.fontBaseLineHeight = var_46_10
		else
			var_46_0.fontKind = "vector"
			var_46_0.fontError = var_46_9 or "unknown bitmap font load failure"
		end
	end

	if not var_46_0.font or not var_46_0.fontTitle then
		local function var_46_12(arg_53_0)
			local var_53_0

			if var_46_4 and var_46_4.path then
				local var_53_1 = tostring(var_46_4.path):lower():find("arkpixel10%.ttf", 1) ~= nil
				local var_53_2, var_53_3 = pcall(love.graphics.newFont, var_46_4.path, arg_53_0, var_53_1 and var_0_4 or "normal")

				if var_53_2 and var_53_3 and type(var_53_3) ~= "function" and var_53_3.setFilter then
					var_53_0 = var_53_3
				end
			end

			var_53_0 = var_53_0 or love.graphics.newFont(arg_53_0)

			if var_46_4 and var_46_4.path and tostring(var_46_4.path):lower():find("arkpixel10%.ttf", 1) then
				var_53_0:setFilter("nearest", "nearest")
			else
				var_53_0:setFilter("linear", "linear")
			end

			return var_53_0
		end

		var_46_0.fontTitle = var_46_12(var_46_6)
		var_46_0.font = var_46_12(var_46_5)
	end

	var_46_0.fontBattlefieldTitle = nil

	local var_46_13 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

	if love.filesystem.getInfo(var_46_13) then
		local var_46_14, var_46_15 = pcall(var_46_2, var_46_13)

		if var_46_14 and var_46_15 then
			var_46_0.fontBattlefieldTitle = var_46_15
		end
	end

	var_46_0.fontPauseTitle = var_46_0.fontBattlefieldTitle or var_46_0.fontTitle
	var_46_0.fontStageSelectTitle = nil

	local var_46_16 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

	if love.filesystem.getInfo(var_46_16) then
		local var_46_17, var_46_18 = pcall(var_46_2, var_46_16)

		if var_46_17 and var_46_18 then
			var_46_0.fontStageSelectTitle = var_46_18
		end
	end

	var_46_0.fontStageSelectTitle = var_46_0.fontStageSelectTitle or var_46_0.fontTitle
	var_46_0.fontClassCard = nil

	local var_46_19 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

	if love.filesystem.getInfo(var_46_19) then
		local var_46_20, var_46_21 = pcall(var_46_2, var_46_19)

		if var_46_20 and var_46_21 then
			var_46_0.fontClassCard = var_46_21
		end
	end

	var_46_0.fontClassCard = var_46_0.fontClassCard or var_46_0.font
	var_46_0.fontGameOver = nil

	local var_46_22 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

	if love.filesystem.getInfo(var_46_22) then
		local var_46_23, var_46_24 = pcall(love.graphics.newFont, var_46_22)

		if var_46_23 and var_46_24 then
			var_46_24:setFilter("nearest", "nearest")
			var_0_1.attachFallbacks(var_46_24, var_46_22)

			var_46_0.fontGameOver = var_46_24
		else
			local var_46_25, var_46_26 = pcall(var_46_2, var_46_22)

			if var_46_25 and var_46_26 then
				var_46_0.fontGameOver = var_46_26
			end
		end
	end

	var_46_0.fontGameOver = var_46_0.fontGameOver or var_46_0.font
	var_46_0.fontAwakeningCard = var_46_0.fontGameOver
	var_46_0.mainMenuLogo = var_46_0.mainMenuLogo or {
		offsetY = -10,
		targetY = 16,
		scale = 2.3,
		offsetX = 0
	}
	var_46_0.mainMenuUpgradeButton = var_46_0.mainMenuUpgradeButton or {
		labelOffsetX = 0,
		paddingBottom = 40,
		paddingRight = 40,
		labelGapPx = 3,
		labelScale = 1.1,
		iconScale = 1.5,
		offsetY = 2,
		offsetX = -318
	}
	var_46_0.mainMenuDiscordButton = var_46_0.mainMenuDiscordButton or {
		labelOffsetX = 0,
		paddingBottom = 40,
		offsetY = 2,
		labelGapPx = 3,
		labelScale = 1.1,
		iconScale = 1.5,
		paddingLeft = 26,
		offsetX = 0
	}
	var_46_0.mainMenuCollectionButton = var_46_0.mainMenuCollectionButton or {
		lockedHintTextOffsetY = -1,
		lockedHintPadPx = 6,
		lockedHintScale = 0.95,
		lockedHintGapPx = 8,
		gapFromUpgradePx = 28,
		iconScale = 1.5,
		labelOffsetX = 0,
		labelGapPx = 3,
		labelScale = 1.1,
		offsetY = 0,
		offsetX = 142
	}
	var_46_0.mainMenuAchievementButton = var_46_0.mainMenuAchievementButton or {
		lockedHintTextOffsetY = -2,
		lockedHintPadPx = 6,
		lockedHintScale = 0.95,
		lockedHintGapPx = 8,
		offsetY = 0,
		iconScale = 1.5,
		labelOffsetX = 0,
		labelGapPx = 3,
		labelScale = 1.1,
		gapFromCollectionPx = 28,
		offsetX = -14
	}
	var_46_0.mainMenuBackground = var_46_0.mainMenuBackground or {
		unitsFrameDur = 0.26,
		mainlayers2ScrollSpeed = 10,
		mainlayers1ScrollSpeed = 5,
		goblinsFrameDur = 0.15
	}
	var_46_0.stageSelectOverlay = var_46_0.stageSelectOverlay or {
		title = {
			enabled = true,
			offsetY = -37,
			yFrac = 0.18,
			spriteScale = 1.15,
			offsetX = 0
		}
	}
	var_46_0.stageSelectOverlay.stageCards = var_46_0.stageSelectOverlay.stageCards or {
		enabled = true,
		offsetX = 0,
		offsetY = -63,
		gapPx = 12
	}
	var_46_0.stageSelectOverlay.stage1Title = var_46_0.stageSelectOverlay.stage1Title or {
		enabled = true,
		yPx = 194,
		scale = 1.15,
		text = "menu_stage_1_title",
		offsetY = -4,
		offsetX = 0
	}
	var_46_0.stageSelectOverlay.stage2Title = var_46_0.stageSelectOverlay.stage2Title or {
		enabled = true,
		yPx = 194,
		scale = 1.15,
		text = "menu_stage_name_2",
		offsetY = -4,
		offsetX = 0
	}
	var_46_0.stageSelectOverlay.stage3Title = var_46_0.stageSelectOverlay.stage3Title or {
		enabled = true,
		yPx = 194,
		scale = 1.15,
		text = "menu_stage_name_3",
		offsetY = -4,
		offsetX = 0
	}
	var_46_0.stageSelectOverlay.stage4Title = var_46_0.stageSelectOverlay.stage4Title or {
		enabled = true,
		yPx = 194,
		scale = 1.15,
		text = "menu_stage_name_4",
		offsetY = -4,
		offsetX = 0
	}
	var_46_0.stageSelectOverlay.stageNames = {
		"STAGE 1",
		"Deep Cave",
		"Wasteland",
		"Lost Ruins",
		"Crimson Hell",
		"Split Space"
	}
	var_46_0.stageSelectOverlay.difficultyTitle = var_46_0.stageSelectOverlay.difficultyTitle or {
		totalDur = 0.72,
		startY = -80,
		overshoot = 5,
		targetY = 25,
		outDur = 0.48
	}
	var_46_0.stageSelectOverlay.difficultySelect = var_46_0.stageSelectOverlay.difficultySelect or {
		enabled = true,
		scale = 1,
		gapPx = 35,
		offsetY = -60,
		offsetX = 0
	}
	var_46_0.stageSelectOverlay.runSaveSlot = var_46_0.stageSelectOverlay.runSaveSlot or {
		scale = 2.3,
		subtitleCenterYFrac = 0.67,
		titleCenterYFrac = 0.31,
		textRightFrac = 0.945,
		textLeftFrac = 0.245,
		appearSpeed = 1.6,
		appearAfterHardProgress = 0.18,
		waveTextOffsetX = -2,
		stageTextOffsetX = -11,
		infoTextOffsetY = -10,
		infoTextScale = 1.15,
		titleSpriteOffsetY = -12,
		titleSpriteOffsetX = 30,
		titleSpriteScale = 1.5,
		bottomMargin = 42,
		offsetY = 0,
		offsetX = 0,
		difficultyTextColors = {
			easy = {
				0.5607843137254902,
				0.8117647058823529,
				0.5294117647058824,
				1
			},
			normal = {
				0.9098039215686274,
				0.7843137254901961,
				0.4588235294117647,
				1
			},
			hard = {
				0.9098039215686274,
				0.47058823529411764,
				0.47058823529411764,
				1
			}
		}
	}
	var_46_0.fontCoin = nil
	var_46_0.fontCoinScale = 1

	local var_46_27 = var_0_1.resolve("src/data/font/Galmuri7W.fnt")

	if love.filesystem.getInfo(var_46_27) then
		local var_46_28, var_46_29 = pcall(var_46_2, var_46_27)

		if var_46_28 and var_46_29 then
			var_46_0.fontCoin = var_46_29

			local var_46_30 = math.max(1, var_46_29:getHeight())
			local var_46_31 = 8

			var_46_0.fontCoinScale = var_46_31 / var_46_30
		end
	end

	var_46_0.fontJackpot = nil
	var_46_0.fontJackpotScale = 1

	local var_46_32 = var_0_1.resolve("src/data/font/Galmuri7W.fnt")

	if love.filesystem.getInfo(var_46_32) then
		local var_46_33, var_46_34 = pcall(var_46_2, var_46_32)

		if var_46_33 and var_46_34 then
			var_46_0.fontJackpot = var_46_34

			local var_46_35 = math.max(1, var_46_34:getHeight())
			local var_46_36 = math.max(8, math.floor(14 * var_46_0.scale)) / var_46_35
			local var_46_37 = math.max(1, math.floor(var_46_36 + 0.5))

			var_46_0.fontJackpotScale = var_46_37
		end
	end

	var_46_0.fontShopTitle = nil
	var_46_0.fontShopTitleScale = 1

	local var_46_38 = {
		var_0_1.resolve("src/data/font/Galmuri7WS.fnt"),
		var_0_1.resolve("src/data/font/Galmuri7W.fnt")
	}
	local var_46_39

	for iter_46_0, iter_46_1 in ipairs(var_46_38) do
		if love.filesystem.getInfo(iter_46_1) then
			local var_46_40, var_46_41 = pcall(var_46_2, iter_46_1)

			if var_46_40 and var_46_41 then
				var_46_0.fontShopTitle = var_46_41

				local var_46_42 = math.max(1, var_46_41:getHeight())
				local var_46_43 = math.max(8, math.floor(12 * var_46_0.scale)) / var_46_42
				local var_46_44 = math.max(1, math.floor(var_46_43 + 0.5))

				var_46_0.fontShopTitleScale = var_46_44
				var_46_39 = true

				break
			end
		end
	end

	if not var_46_39 then
		var_46_0.fontShopTitle = var_46_0.fontTitle or var_46_0.font
		var_46_0.fontShopTitleScale = 1
	end

	var_46_0.jackpotBanner = {
		fadeOutSec = 0.5,
		holdSec = 4,
		fadeInSec = 0.2,
		offsetY = -25,
		offsetX = -20,
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
			phaseShift = 0.45,
			restDurSec = 0,
			bounceDurSec = 0.26,
			perCharDelaySec = 0.08,
			ampPx = 8,
			freqHz = 4
		},
		shake = {
			quantize = true,
			enabled = false,
			pixelStep = 1,
			ampPx = 1.5,
			freqHz = 2.2
		},
		scalePulse = {
			enabled = true,
			step = 3,
			minMul = 1.5,
			phase = 0,
			amp = 0.8,
			smooth = true,
			duty = 1.58,
			freqHz = 1
		},
		machineShake = {
			quantize = true,
			enabled = true,
			pixelStep = 1,
			ampPx = 3,
			freqHz = 2.8
		},
		foil = {
			specular = 0.1,
			angleDeg = 12,
			cycleSec = 4,
			scale = 1.6,
			alpha = 0.6,
			mixBP = 0.85,
			saturation = 2,
			colorGain = 1,
			fresnelPow = 2,
			grain = {
				scale = 85,
				amp = 0.12
			},
			film = {
				amp = 0.1,
				freq = 0.8
			}
		}
	}
	var_46_0.margin = math.floor(16 * var_46_0.scale)
	var_46_0.slot = {
		bgAnimX = 0,
		bgAnimY = 0,
		title = "slots",
		winOutlinePixelMul = 2,
		scale = 0.58,
		ropeOffsetY = -32,
		stickyOffsetY = 14,
		bgOffsetY = -14,
		bgOffsetX = -21,
		rightmostColOffsetPx = -1,
		lockSpin = true,
		gutter = 0,
		cellSize = 0,
		rows = 3,
		cols = 3,
		panelPad = math.floor(10 * var_46_0.scale),
		spinShake = {
			phaseB = 0.8,
			mixA = 0.7,
			freqB = 1.6,
			freqA = 1,
			ampPx = 4
		},
		spinImpact = {
			ampPx = 3.6,
			dur = 0.18
		},
		winPulse = {
			amp = 0.12
		},
		winSymbolWobble = {
			decay = true,
			freq = 5,
			ampPx = 3,
			quantize = true
		},
		lineHitSquash = {
			dur = 0.4,
			anchorOffsetX = 0,
			startIndex = 1,
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
				ampPx = 2,
				axis = "xy",
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
				ampPx = 0.7,
				axis = "xy",
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
				durMul = 1,
				ampMul = 0.6
			},
			jitter = {
				freqMul = 1,
				durMul = 0.8,
				ampMul = 0.8
			},
			screenShake = {
				freqMul = 1,
				durMul = 1,
				ampMul = 1.3
			}
		}
	}
	var_46_0.slot.cellSize = math.floor(96 * var_46_0.scale * var_46_0.slot.scale)
	var_46_0.slot.gutter = math.floor(6 * var_46_0.scale * var_46_0.slot.scale)
	var_46_0.colors = var_0_0.colors
	var_46_0.virtual = var_0_0.virtual
	var_46_0.virtualBase = {
		W = var_46_0.virtual.W,
		H = var_46_0.virtual.H
	}
	var_46_0.coreBackground = {
		startU = 0.5,
		startPhase = "drop",
		riseDur = 1
	}
	var_46_0.coreBackgroundNumber = {
		fromX = -32,
		startAfter = "rise",
		slideDur = 0.7,
		startDelay = 0.9
	}
	var_46_0.coreCountDisplay = {
		y = 330,
		x = 179,
		scale = 1,
		align = "left",
		max = 8,
		color = {
			1,
			1,
			1,
			1
		}
	}
	var_46_0.monster = {
		headLaugh = {
			dur = 1.2,
			freq = 2,
			ampPx = 3
		},
		headIdle = {
			ampPx = 1,
			freq = 0.5
		},
		oddsAttention = {
			bounceDecay = 2.2,
			alphaThreshold = 0.01,
			pulseHz = 2.4,
			bounceHz = 3.6,
			bouncePx = 3,
			glowAlpha = 0.18,
			outlineRadiusPx = 3,
			fadeOut = 0.45,
			fadeIn = 0.12,
			duration = 2.8,
			outlineColor = {
				1,
				0.78,
				0.28,
				1
			},
			glowColor = {
				1,
				0.68,
				0.18
			}
		},
		eyesShine = {
			scaleFrom = 0.1,
			fadeIn = 0.25,
			dur = 0.45,
			enabled = true,
			scaleTo = 1.6,
			left = {
				y = 24,
				x = 101
			},
			right = {
				y = 24,
				x = 78
			},
			pulse = {
				amp = 0.32,
				freq = 1.8,
				minScale = 1.1,
				maxScale = 1.6
			}
		}
	}
	var_46_0.judgementSky = {
		enabled = true,
		previewAlways = false,
		blueCut = 0.45,
		mixKeep = 0.15,
		strengthMul = 0.85,
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
	var_46_0.battle = {
		hitFlashMaxAlpha = 0.85,
		hitFlashDur = 0.16,
		allySize32 = 64,
		judgementEnemySpawnDelay = 0,
		enemySpawnDelay = 1,
		unitScale = 2,
		rosterScale = 1.8,
		rangeEllipseYScale = 0.4,
		enemyScale = 2,
		suddenDeathWipeoutDelay = 2.5,
		enemyDetectXFrac = 0.8,
		glowRadiusOutSec = 0.5,
		glowRadiusInSec = 0.5,
		glowFadeOutSec = 0.5,
		glowFadeInSec = 0.5,
		glowPulseHz = 1.2,
		hpbarGap = 5,
		gradeGlazeAlpha = 0,
		stage6PlanetIdle = {
			cycleSec = 8,
			amplitudePx = 1,
			phase = -0.25
		},
		hitShake = {
			ampPx = 4,
			dur = 0.18
		},
		hitSquash = {
			dur = 0.18,
			amt = 0.08
		},
		animDesync = {
			attackOffsetMax = 0.12
		},
		shadow = {
			cavalryOffsetXPx = -2,
			dyingStrength = 0.35,
			strength = 0.9,
			yOffsetPx = 4,
			maxHeightPx = 10,
			minHeightPx = 6,
			heightRatio = 0.3,
			maxWidthPx = 30,
			minWidthPx = 11,
			widthMul = 0.78
		},
		aura = {
			enabled = false,
			alpha = 0.45,
			yScaleMul = 1.3,
			xScaleMul = 2.2,
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
			opaqueAlphaThresh = 0.2,
			useOpaqueWidth = true,
			widthPaddingPx = 0,
			widthScale = 1,
			lengthFactor = 0.65,
			alphaTop = 0,
			alphaBottom = 0.65,
			debugWidth = false,
			widthEdgePadPx = 10,
			preciseAlphaThresh = 0.15,
			preciseWidth = true,
			sparkDirection = "up",
			sparkCount = 4,
			enableSparks = true,
			additiveBlend = true,
			minOpaqueRunY = 6,
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
		jackpotRainbow = {
			angleDeg = 30,
			speed = 1.45,
			scale = 2,
			alpha = 0.18
		},
		jackpotFoil = {
			specular = 0.15,
			angleDeg = 20,
			cycleSec = 1.6,
			scale = 3,
			alpha = 0.22,
			mixBP = 0.72,
			saturation = 2.8,
			colorGain = 1.1,
			fresnelPow = 2,
			grain = {
				scale = 2.2,
				amp = 0.08
			},
			film = {
				amp = 0.06,
				freq = 2
			}
		},
		legendaryFoil = {
			specular = 0.35,
			angleDeg = 20,
			cycleSec = 2,
			scale = 2.5,
			alpha = 0.15,
			mixBP = 0.55,
			saturation = 0.9,
			colorGain = 1,
			fresnelPow = 2.5,
			grain = {
				scale = 3,
				amp = 0.2
			},
			film = {
				amp = 0.25,
				freq = 2
			},
			pulse = {
				hz = 0.3,
				amp = 0.05,
				minMul = 0.6,
				sharpness = 0.3
			}
		},
		moonRise = {
			strengthEase = "linear",
			riseSpanPx = 80,
			extraStartPx = -10,
			finalLiftPx = 10,
			sunDropPx = 120
		},
		readyIcon = {
			cooldown = 0.6,
			padY = 30,
			padX = 8,
			anchor = "bottom-right"
		},
		heartIcon = {
			hpScaleSub = 1,
			padY = 30,
			padX = 30,
			anchor = "top-left"
		},
		absorbJitter = {
			peakThreshold = 0.94,
			axis = "x",
			flashTriThreshold = 0.9,
			ampPx = 1,
			flashAmpPx = 0,
			flashWindow = {
				0.4,
				0.6
			}
		},
		absorb = {
			outlineAlphaThreshold = 0.01,
			innerTintAlpha = 0.25,
			glowFalloff = 1,
			glowMaxRadiusPx = 15,
			glowPulseHz = 0.6,
			glowAlpha = 0.9,
			borderColor = {
				0.525,
				0.294,
				0.757,
				1
			}
		},
		enemyOffscreenSpawn = {
			enabled = true,
			variancePx = 24,
			offsetPx = 30
		}
	}
	var_46_0.battle.warlordEffectOffset = {
		y = 15,
		x = 0
	}
	var_46_0.tooltip = var_46_0.tooltip or {}
	var_46_0.tooltip.iconFoil = {
		specular = 0.04,
		angleDeg = 20,
		cycleSec = 3.2,
		scale = 0.5,
		alpha = 0.7,
		mixBP = 0.72,
		saturation = 1.35,
		colorGain = 1.35,
		fresnelPow = 2,
		grain = {
			scale = 2,
			amp = 0.04
		},
		film = {
			amp = 0.1,
			freq = 2
		}
	}
	var_46_0.tooltipCfg = {
		iconFoil = var_46_0.tooltip.iconFoil
	}
	var_46_0.tooltip.cornerRadiusPx = var_46_0.tooltip.cornerRadiusPx or 6
	var_46_0.suddenDeathAlert = var_46_0.suddenDeathAlert or {}
	var_46_0.suddenDeathAlert.enabled = var_46_0.suddenDeathAlert.enabled ~= false
	var_46_0.suddenDeathAlert.spring = var_46_0.suddenDeathAlert.spring or var_46_0.infoOverlay and var_46_0.infoOverlay.spring or {
		k = 90,
		maxVel = 2000,
		damping = 14
	}
	var_46_0.suddenDeathAlert.visibleY = var_46_0.suddenDeathAlert.visibleY ~= nil and var_46_0.suddenDeathAlert.visibleY or var_46_0.infoOverlay and var_46_0.infoOverlay.visibleY or 0
	var_46_0.suddenDeathAlert.hiddenY = var_46_0.suddenDeathAlert.hiddenY ~= nil and var_46_0.suddenDeathAlert.hiddenY or var_46_0.infoOverlay and var_46_0.infoOverlay.hiddenY or -(var_46_0.virtual and var_46_0.virtual.H or 128)
	var_46_0.suddenDeathAlert.holdSec = var_46_0.suddenDeathAlert.holdSec or 4
	var_46_0.suddenDeathAlert.ropeEnabled = var_46_0.suddenDeathAlert.ropeEnabled ~= false
	var_46_0.suddenDeathAlert.ropeYOffsetPx = var_46_0.suddenDeathAlert.ropeYOffsetPx ~= nil and var_46_0.suddenDeathAlert.ropeYOffsetPx or (var_46_0.infoOverlay and var_46_0.infoOverlay.ropeYOffsetPx or 0) - 10
	var_46_0.suddenDeathAlert.text = var_46_0.suddenDeathAlert.text or {}
	var_46_0.suddenDeathAlert.text.scale = var_46_0.suddenDeathAlert.text.scale or 1
	var_46_0.suddenDeathAlert.text.integerScale = var_46_0.suddenDeathAlert.text.integerScale ~= false
	var_46_0.suddenDeathAlert.text.titleX = var_46_0.suddenDeathAlert.text.titleX or 474
	var_46_0.suddenDeathAlert.text.titleY = var_46_0.suddenDeathAlert.text.titleY or 68
	var_46_0.suddenDeathAlert.text.colors = var_46_0.suddenDeathAlert.text.colors or {
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
	var_46_0.suddenDeathAlert.text.titleNumberBlink = var_46_0.suddenDeathAlert.text.titleNumberBlink or {
		enabled = true,
		square = true,
		freqHz = 3
	}
	var_46_0.suddenDeathAlert.text.dangerX = var_46_0.suddenDeathAlert.text.dangerX or 474
	var_46_0.suddenDeathAlert.text.dangerY = var_46_0.suddenDeathAlert.text.dangerY or 92
	var_46_0.suddenDeathAlert.text.dangerLabelYOffsetPx = var_46_0.suddenDeathAlert.text.dangerLabelYOffsetPx or -2
	var_46_0.suddenDeathAlert.text.titleXOffsetEn = var_46_0.suddenDeathAlert.text.titleXOffsetEn or -2
	var_46_0.suddenDeathAlert.text.dangerXOffsetEn = var_46_0.suddenDeathAlert.text.dangerXOffsetEn or -4
	var_46_0.suddenDeathAlert.text.iconStartGapPx = var_46_0.suddenDeathAlert.text.iconStartGapPx or 4
	var_46_0.suddenDeathAlert.text.iconScale = var_46_0.suddenDeathAlert.text.iconScale or 1
	var_46_0.suddenDeathAlert.text.iconGapPx = var_46_0.suddenDeathAlert.text.iconGapPx or 2
	var_46_0.judgementCountdownText = var_46_0.judgementCountdownText or var_46_0.judgementWavesLeftHud or {}
	var_46_0.judgementCountdownText.enabled = var_46_0.judgementCountdownText.enabled ~= false
	var_46_0.judgementCountdownText.x = var_46_0.judgementCountdownText.x ~= nil and var_46_0.judgementCountdownText.x or 472
	var_46_0.judgementCountdownText.y = var_46_0.judgementCountdownText.y ~= nil and var_46_0.judgementCountdownText.y or 10
	var_46_0.judgementCountdownText.maxW = var_46_0.judgementCountdownText.maxW or 76
	var_46_0.judgementCountdownText.scale = var_46_0.judgementCountdownText.scale or 1
	var_46_0.judgementCountdownText.integerScale = var_46_0.judgementCountdownText.integerScale ~= false
	var_46_0.judgementCountdownText.iconScale = var_46_0.judgementCountdownText.iconScale or 1
	var_46_0.judgementCountdownText.iconGapPx = var_46_0.judgementCountdownText.iconGapPx ~= nil and var_46_0.judgementCountdownText.iconGapPx or 2
	var_46_0.judgementCountdownText.inWaveIconGapPx = var_46_0.judgementCountdownText.inWaveIconGapPx ~= nil and var_46_0.judgementCountdownText.inWaveIconGapPx or 6
	var_46_0.judgementCountdownText.colors = var_46_0.judgementCountdownText.colors or {
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
	var_46_0.judgementCountdownText.blink = var_46_0.judgementCountdownText.blink or {
		enabled = true,
		freqHz = 3,
		square = true,
		max = 2,
		min = 1
	}
	var_46_0.tooltip.padPx = var_46_0.tooltip.padPx or math.floor(6 * var_46_0.scale)
	var_46_0.unitSpawnBanner = var_46_0.unitSpawnBanner or {
		y = 16,
		x = 16,
		text2Scale = 0.9,
		gapPx = 6,
		textOffsetX = 0,
		fadeOutSec = 0.9,
		textOffsetY = 1,
		anchor = "battlefield_top",
		durationSec = 4.4,
		singleLine = false,
		scale = 1,
		text1Scale = 1,
		fadeInSec = 0.2,
		offsetY = 60,
		offsetX = 0
	}
	var_46_0.victorySprite = var_46_0.victorySprite or {
		dur = 3,
		scale = 2,
		offsetY = 100,
		offsetX = 0
	}
	var_46_0.defeatSprite = var_46_0.defeatSprite or {
		dur = 3,
		scale = 2,
		offsetY = 100,
		offsetX = 0
	}
	var_46_0.upgrade = var_46_0.upgrade or {}
	var_46_0.upgrade.tooltip = {
		costTextOffsetY = -1,
		costOffsetY = 0,
		statOffsetY = 0.7,
		descOffsetY = 0,
		nameOffsetY = 0
	}
	var_46_0.classCard = {
		descOffsetY = 14,
		rightCardNudgeX = 3,
		gapMul = 0.2,
		randomOptionIconOffsetX = -55,
		titleOffsetY = 6,
		titleOffsetX = 8,
		descTextOffsetX = 5,
		descSidePadPx = -2,
		descLineSpacing = 1.45,
		randomOptionIconSizePx = 32,
		middleCardNudgeX = 2,
		leftCardNudgeX = 2,
		statOffsetY = 13,
		iconOffsetY = -40,
		nameOffsetY = -11.5,
		statOffsetX = 3,
		randomOptionIconOffsetY = 158,
		randomOptionTooltipOffsetY = 2.5,
		randomOptionTooltipWidth = 120,
		classSkillTooltipOffsetY = 8,
		classSkillTooltipWidth = 160,
		font = var_46_0.fontClassCard,
		appear = {
			dur = 0.4,
			delay = 0.4,
			offsetPx = 24
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
			outTotalMul = 0.45,
			outDurMul = 0.45,
			targetOffsetY = 0,
			targetOffsetX = 0,
			settleScale = 0.95,
			slamMaxScale = 1.3,
			slamMinScale = 0.75,
			preScaleAdd = 0.28,
			moveDur = 0.35
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
			rightInsetPx = -40,
			enabled = true,
			iconInsetPx = 4,
			iconOffsetY = -1,
			iconOffsetX = -2,
			hoverLerpOut = 20,
			hoverLerpIn = 28,
			hoverShiftLeftPx = 4,
			topOffsetPx = 20,
			scale = 1,
			offsetY = 0,
			offsetX = 0
		}
	}
	var_46_0.classTitleText = {
		maxWidthPadPx = 8,
		baselineShiftPx = 0,
		insetPx = 0,
		text = "클래스 승급",
		align = "center",
		offsetY = -6.5,
		offsetX = 0,
		color = {
			1,
			1,
			1,
			1
		},
		outline = {
			thicknessPx = 1,
			passes = 4,
			diagonal = false,
			color = {
				0,
				0,
				0,
				1
			}
		}
	}
	var_46_0.heartNumber = {
		integerScale = true,
		align = "center",
		useFont = true,
		targetH = 8,
		offsetY = -69,
		offsetX = -258,
		x = math.floor(var_46_0.virtual.W * 0.9),
		y = math.floor(var_46_0.virtual.H * 0.22),
		color = {
			1,
			0.5215686275,
			0.5215686275,
			1
		}
	}
	var_46_0.heartShake = {
		dur = 0.22,
		freq = 20,
		ampPx = 2
	}
	var_46_0.heartIdle = {
		ampPx = 2,
		freq = 0.6
	}
	var_46_0.heartOverlay = {
		yOffsetPx = -14,
		xOffsetPx = 0
	}
	var_46_0.moneyDisplay = {
		enabled = false,
		align = "right",
		offsetY = -24,
		offsetX = -50
	}
	var_46_0.goldDisplay = {
		y = 10,
		x = 288,
		align = "right",
		enabled = true,
		scale = 1,
		integerScale = true,
		color = {
			0.8431372549,
			0.7058823529,
			0.4156862745,
			1
		}
	}
	var_46_0.itemInventory = {
		panel = {
			hoverOutRate = 10,
			hoverInRate = 12,
			hoverUpOnCooldownPx = 4,
			hoverDownPx = 3,
			anchor = "battlefield-bottom-left",
			scale = 1,
			dropDur = 0.7,
			dropEndOffsetPx = 0,
			dropStartOffsetPx = -50,
			cooltimeOffsetY = 13,
			shadowOffsetY = 4,
			shadowOffsetX = 0,
			gapX = 0,
			offsetY = -55,
			offsetX = 5,
			clickPop = {
				downDurSec = 0.16,
				upDurSec = 0.16,
				upPx = 10
			},
			cooldown = {
				durSec = 3,
				alpha = 0.45,
				progressAlpha = 0.35,
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
			center = true,
			scale = 1,
			offsetY = 13,
			offsetX = 0
		}
	}
	var_46_0.spinCountDisplay = {
		align = "right",
		targetH = 8,
		offsetY = -24,
		offsetX = 28
	}
	var_46_0.spinPriceDisplay = {
		align = "center",
		targetH = 8,
		offsetY = -191,
		offsetX = -21
	}
	var_46_0.slotBookIcon = {
		enabled = true,
		tooltipOffsetX = 0,
		tooltipOffsetY = -5,
		outlineRadiusPx = 3,
		scale = 1,
		offsetY = -2,
		offsetX = -61,
		tooltipPadTopPx = math.floor(3 * var_46_0.scale),
		tooltipPadBottomPx = math.floor(3 * var_46_0.scale),
		tooltipPadLeftPx = math.floor(3 * var_46_0.scale),
		tooltipPadRightPx = math.floor(3 * var_46_0.scale),
		tooltipGapPx = math.floor(6 * var_46_0.scale),
		tooltipRowGapPx = math.floor(6 * var_46_0.scale),
		tooltipIconGapPx = math.floor(8 * var_46_0.scale)
	}
	var_46_0.spinstick = {
		hitOffsetY = -15,
		hitOffsetX = -3,
		hitExpandY = -26,
		animSpeedSecPerFrame = 0.08,
		hitExpandPx = 2,
		offsetY = 6,
		offsetX = -40
	}
	var_46_0.sandboxNextLines = {
		offsetY = 160,
		offsetX = 0,
		labelDY = math.floor(6 * var_46_0.scale)
	}
	var_46_0.sandboxJungsu = {
		offsetY = -70,
		offsetX = 10
	}
	var_46_0.sandboxCoreEquip = {
		offsetY = 8,
		offsetX = 0,
		btnW = math.floor(14 * var_46_0.scale),
		btnH = math.floor(10 * var_46_0.scale),
		gap = math.floor(4 * var_46_0.scale),
		equipW = math.floor(40 * var_46_0.scale),
		equipH = math.floor(12 * var_46_0.scale),
		labelDY = math.floor(6 * var_46_0.scale)
	}
	var_46_0.fireman = {
		offsetX = 16,
		offsetY = -200,
		scaleStep = 2,
		anchor = "battlefield-bottom-left"
	}
	var_46_0.dpsButton = {
		pressDur = 0.12,
		shadowOffsetY = 0,
		scaleStep = 1,
		offsetY = 0,
		shadowOffsetX = 0,
		offsetX = 6.5,
		hover = true,
		outlineRadiusPx = 2,
		outlineThreshold = 0.5,
		followFiremanY = true,
		alignRight = true,
		panelLeftX = 493,
		attachToWindow = true,
		outlineColor = {
			0.9294117647058824,
			0.9019607843137255,
			0.9529411764705882,
			1
		}
	}
	var_46_0.synergyButton = {
		pressDur = 0.12,
		offsetX = 6.5,
		scaleStep = 1,
		offsetY = -6,
		gapY = 4,
		hover = true,
		outlineRadiusPx = 2,
		outlineThreshold = 0.5,
		followFiremanY = true,
		alignRight = true,
		panelLeftX = 493,
		attachToWindow = true,
		outlineColor = {
			0.9294117647058824,
			0.9019607843137255,
			0.9529411764705882,
			1
		}
	}
	var_46_0.fastForwardButton = {
		pressDur = 0.1,
		offsetY = 18,
		offsetX = -8
	}
	var_46_0.dpsWindow = {
		offsetY = 0,
		slideDur = 0.52,
		alpha = 1,
		ease = "outCubic",
		offsetX = 0,
		title = {
			y = 19,
			x = 510,
			scale = 1.5,
			highRes = true,
			textKey = "dps_window_title",
			text = "지난 전투 피해량",
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
			highRes = true,
			textKey = "dps_window_empty",
			text = "전투 기록 없음"
		},
		slotList = {
			viewH = 172,
			x = 507,
			scale = 2,
			y = 48,
			portraitX = 6,
			orderFollowSpeed = 8,
			barFollowSpeed = 9,
			countUpDur = 0.65,
			scrollbarH = 172,
			scrollbarW = 2,
			scrollbarY = 48,
			scrollbarX = 634,
			portraitScale = 2,
			portraitY = 6,
			gap = -2,
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
				special = {
					swaps = {
						{
							to = {
								0.6509803921568628,
								0.37254901960784315,
								0.6039215686274509
							}
						},
						{
							to = {
								0.25882352941176473,
								0.13333333333333333,
								0.23529411764705882
							}
						},
						{
							to = {
								0.44313725490196076,
								0.20392156862745098,
								0.3843137254901961
							}
						}
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
	var_46_0.synergyWindow = {
		offsetY = 0,
		slideDur = 0.52,
		ease = "outCubic",
		alpha = 1,
		offsetX = 0,
		title = {
			y = 19,
			x = 510,
			scale = 1.5,
			highRes = true,
			textKey = "synergy_window_title",
			text = "진영 시너지",
			color = {
				1,
				0.9,
				0.5,
				1
			}
		},
		emptyText = {
			y = 110,
			text = "진영 시너지 없음",
			textKey = "synergy_window_empty",
			highRes = true
		},
		tooltip = {
			effectDescriptionGap = 6,
			descriptionLineGap = 3,
			headerSeparatorGap = 5,
			risePx = 2,
			fadeTime = 0.15,
			hoverDelay = 0.12,
			factionTextColors = {
				empire = {
					0.55,
					0.78,
					1,
					1
				},
				outlaw = {
					1,
					0.52,
					0.42,
					1
				},
				forest = {
					0.48,
					0.88,
					0.54,
					1
				},
				tribe = {
					1,
					0.68,
					0.32,
					1
				},
				abyss = {
					0.74,
					0.54,
					1,
					1
				},
				celestial = {
					1,
					0.88,
					0.42,
					1
				},
				arcane = {
					0.52,
					0.82,
					1,
					1
				},
				undead = {
					0.52,
					0.92,
					0.82,
					1
				},
				holy = {
					1,
					0.94,
					0.7,
					1
				},
				engineer = {
					0.9,
					0.78,
					0.6,
					1
				}
			}
		},
		factionList = {
			y = 56,
			x = -3,
			iconOffsetY = 1,
			scale = 1,
			highRes = true,
			barH = 4,
			barW = 76,
			barOffsetY = 2,
			barX = 560,
			countX = 538,
			iconHoverBrightAlpha = 0.22,
			iconHoverPad = 2,
			iconOutlineRadiusPx = 1.15,
			iconOutlineThreshold = 0.05,
			iconOutline = true,
			iconX = 513,
			rowGap = 22,
			iconScale = 1,
			iconOutlineColor = {
				0.08235294117647059,
				0.08235294117647059,
				0.10980392156862745,
				1
			},
			countColor = {
				1,
				1,
				1,
				1
			},
			fillColor = {
				0.89,
				0.776,
				0.353,
				1
			},
			previewColor = {
				0.89,
				0.776,
				0.353,
				1
			},
			bgColor = {
				0.16,
				0.12,
				0.03,
				0.85
			},
			gridColor = {
				0.08,
				0.045,
				0.01,
				0.95
			},
			bloom = {
				color = {
					0.89,
					0.776,
					0.353,
					1
				}
			}
		}
	}

	local var_46_45 = love and love.filesystem

	if not (var_46_45 and var_46_45.getInfo and (var_46_45.getInfo("release.flag", "file") or var_46_45.getInfo("build_release.flag", "file"))) and var_46_45 and var_46_45.getInfo and var_46_45.load and var_46_45.getInfo("dps_scroll_tuning.lua") then
		local var_46_46, var_46_47 = pcall(var_46_45.load, "dps_scroll_tuning.lua")

		if var_46_46 and var_46_47 then
			local var_46_48, var_46_49 = pcall(var_46_47)

			if var_46_48 and type(var_46_49) == "table" and type(var_46_49.slotList) == "table" then
				local var_46_50 = var_46_0.dpsWindow.slotList
				local var_46_51 = var_46_49.slotList
				local var_46_52 = {
					"x",
					"y",
					"viewH",
					"wheelW",
					"scrollbarX",
					"scrollbarY",
					"scrollbarH"
				}

				for iter_46_2, iter_46_3 in ipairs(var_46_52) do
					if type(var_46_51[iter_46_3]) == "number" then
						var_46_50[iter_46_3] = var_46_51[iter_46_3]
					end
				end
			end
		end
	end

	local function var_46_53(arg_54_0)
		if not arg_54_0 then
			return
		end

		local var_54_0 = (function()
			local var_55_0 = love and love.filesystem

			if var_55_0 and var_55_0.getInfo and (var_55_0.getInfo("release.flag", "file") or var_55_0.getInfo("build_release.flag", "file")) then
				return nil
			end

			if var_55_0 and var_55_0.getInfo and var_55_0.load and var_55_0.getInfo("credits_scroll_tuning.lua") then
				local var_55_1, var_55_2 = pcall(var_55_0.load, "credits_scroll_tuning.lua")

				if var_55_1 and var_55_2 then
					return var_55_2
				end
			end

			local var_55_3 = {}
			local var_55_4 = os and os.getenv and os.getenv("APPDATA") or nil

			if var_55_4 and var_55_4 ~= "" then
				var_55_3[#var_55_3 + 1] = var_55_4 .. "\\LOVE\\slotbound\\credits_scroll_tuning.lua"
				var_55_3[#var_55_3 + 1] = var_55_4 .. "\\LOVE\\SlotBound\\credits_scroll_tuning.lua"
			end

			local var_55_5 = os and os.getenv and os.getenv("USERPROFILE") or nil

			if var_55_5 and var_55_5 ~= "" then
				var_55_3[#var_55_3 + 1] = var_55_5 .. "\\Documents\\SlotBound\\credits_scroll_tuning.lua"
				var_55_3[#var_55_3 + 1] = var_55_5 .. "\\문서\\SlotBound\\credits_scroll_tuning.lua"
			end

			for iter_55_0, iter_55_1 in ipairs(var_55_3) do
				local var_55_6 = io and io.open and io.open(iter_55_1, "rb") or nil

				if var_55_6 then
					local var_55_7 = var_55_6:read("*all")

					var_55_6:close()

					if var_55_7 and var_55_7 ~= "" then
						local var_55_8 = loadstring(var_55_7)

						if var_55_8 then
							return var_55_8
						end
					end
				end
			end

			return nil
		end)()

		if not var_54_0 then
			return
		end

		local var_54_1, var_54_2 = pcall(var_54_0)

		if not var_54_1 or type(var_54_2) ~= "table" then
			return
		end

		local var_54_3 = var_54_2.creditsText or var_54_2

		if type(var_54_3) ~= "table" then
			return
		end

		if type(var_54_3.scrollArea) == "table" then
			arg_54_0.scrollArea = arg_54_0.scrollArea or {}

			for iter_54_0, iter_54_1 in ipairs({
				"x",
				"y",
				"w",
				"h"
			}) do
				if type(var_54_3.scrollArea[iter_54_1]) == "number" then
					arg_54_0.scrollArea[iter_54_1] = var_54_3.scrollArea[iter_54_1]
				end
			end
		end
	end

	var_46_0.pauseOverlay = {
		visibleY = 0,
		ropeYOffsetPx = -8,
		snapEps = 0.5,
		settingsDelaySec = 0.35,
		topbarYOffsetPx = 0,
		hiddenY = -var_46_0.virtual.H,
		spring = {
			k = 90,
			maxVel = 2000,
			damping = 14
		},
		pauseTitle = {
			enabled = true,
			yFrac = 0.22,
			scale = 1,
			align = "center",
			text = "menu_pause",
			offsetY = 15,
			offsetX = 106,
			color = {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961,
				1
			}
		},
		pauseBackground = {
			enabled = true,
			scale = 1,
			offsetY = 0,
			offsetX = -20
		},
		playtimeBackground = {
			enabled = true,
			scale = 1,
			offsetY = 0,
			offsetX = 0
		},
		optionPaperBackground = {
			enabled = true,
			scale = 1,
			offsetY = 0,
			offsetX = 0,
			content = {
				offsetY = 90,
				widthAlign = "left",
				widthPx = -260,
				extraTop = 16,
				padY = 48,
				padX = 72,
				offsetX = 135
			}
		},
		creditsBackground = {
			enabled = true,
			scale = 1,
			offsetY = 0,
			offsetX = 0
		},
		creditsText = {
			titleEn = "CREDITS",
			titleOffsetY = 44,
			resetGapPx = 40,
			titlePt = "CRÉDITOS",
			titleRu = "АВТОРЫ",
			titleOffsetX = 0,
			titleEs = "CRÉDITOS",
			titleDe = "MITWIRKENDE",
			titleIt = "RICONOSCIMENTI",
			titleFr = "CRÉDITS",
			titleZh = "制作人员",
			titleJa = "クレジット",
			enabled = true,
			titleKo = "크레딧",
			blankLineGapPx = 10,
			lineGapPx = 3,
			bodyScale = 1,
			titleScale = 1,
			align = "center",
			speedPxPerSec = 13,
			bodyTopGapPx = 12,
			textScaleWithBackground = true,
			scaleWithBackground = true,
			syncWithBackground = true,
			titlePl = "TWÓRCY",
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
			bodyPt = {
				"Slotbound",
				"",
				"Criação",
				"Min Kim / Optima Arch",
				"",
				"Música das áreas",
				"Tsiya",
				"",
				"Agradecimentos especiais",
				"Hyeongjun Lyu",
				"Axin",
				"cchhuumm",
				"",
				"Obrigado por jogar!",
				"",
				"© 2026 Optima Arch"
			},
			bodyPl = {
				"Slotbound",
				"",
				"Twórca",
				"Min Kim / Optima Arch",
				"",
				"Muzyka obszarów",
				"Tsiya",
				"",
				"Specjalne podziękowania",
				"Hyeongjun Lyu",
				"Axin",
				"cchhuumm",
				"",
				"Dziękujemy za grę!",
				"",
				"© 2026 Optima Arch"
			},
			bodyRu = {
				"Slotbound",
				"",
				"Разработка",
				"Min Kim / Optima Arch",
				"",
				"Музыка зон",
				"Tsiya",
				"",
				"Особая благодарность",
				"Hyeongjun Lyu",
				"Axin",
				"cchhuumm",
				"",
				"Спасибо за игру!",
				"",
				"© 2026 Optima Arch"
			},
			bodyEs = {
				"Slotbound",
				"",
				"Creado por",
				"Min Kim / Optima Arch",
				"",
				"Música de las zonas",
				"Tsiya",
				"",
				"Agradecimientos especiales",
				"Hyeongjun Lyu",
				"Axin",
				"cchhuumm",
				"",
				"¡Gracias por jugar!",
				"",
				"© 2026 Optima Arch"
			},
			bodyDe = {
				"Slotbound",
				"",
				"Entwickelt von",
				"Min Kim / Optima Arch",
				"",
				"Gebietsmusik",
				"Tsiya",
				"",
				"Besonderer Dank",
				"Hyeongjun Lyu",
				"Axin",
				"cchhuumm",
				"",
				"Danke fürs Spielen!",
				"",
				"© 2026 Optima Arch"
			},
			bodyIt = {
				"Slotbound",
				"",
				"Creato da",
				"Min Kim / Optima Arch",
				"",
				"Musica delle aree",
				"Tsiya",
				"",
				"Ringraziamenti speciali",
				"Hyeongjun Lyu",
				"Axin",
				"cchhuumm",
				"",
				"Grazie per aver giocato!",
				"",
				"© 2026 Optima Arch"
			},
			bodyFr = {
				"Slotbound",
				"",
				"Création",
				"Min Kim / Optima Arch",
				"",
				"Musique des zones",
				"Tsiya",
				"",
				"Remerciements",
				"Hyeongjun Lyu",
				"Axin",
				"cchhuumm",
				"",
				"Merci d'avoir joué !",
				"",
				"© 2026 Optima Arch"
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
				"Axin",
				"cchhuumm",
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
				"Axin",
				"cchhuumm",
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
				"Axin",
				"cchhuumm",
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
				"Axin",
				"cchhuumm",
				"",
				"感谢游玩。",
				"",
				"© 2026 Optima Arch"
			}
		},
		playtimeText = {
			yFracTitle = 0.18,
			titleMaxW = 71,
			timeScale = 1,
			time = "00:00:00",
			offsetX = -81,
			title = "플레이 시간",
			enabled = true,
			titleScale = 1,
			align = "center",
			titleOffsetY = 92,
			timeOffsetY = 50,
			yFracTime = 0.35,
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
			enabled = true,
			scale = 1,
			offsetY = -3,
			offsetX = 8,
			motion = {
				enabled = true,
				phaseStep = 0.8,
				periodSec = 4,
				basePhase = 0,
				amplitudePx = 2
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
			enabled = true,
			scale = 1,
			hoverDropPx = 6,
			alignCenterX = true,
			offsetY = 20,
			offsetX = 22
		},
		replayButtonDark = {
			enabled = true,
			scale = 1,
			hoverDropPx = 6,
			alignCenterX = true,
			offsetY = 20,
			offsetX = 22
		},
		wikiButtonDark = {
			enabled = false,
			scale = 1,
			hoverDropPx = 6,
			alignCenterX = true,
			offsetY = 20,
			offsetX = 22
		},
		optionButtonDark = {
			enabled = true,
			scale = 1,
			hoverDropPx = 6,
			alignCenterX = true,
			offsetY = 20,
			offsetX = 22
		},
		toMainMenuButtonDark = {
			enabled = true,
			scale = 1,
			hoverDropPx = 6,
			alignCenterX = true,
			offsetY = 20,
			offsetX = 22
		},
		buttons = {
			startY = 210,
			scale = 1,
			gapPx = 12,
			centerX = true,
			order = {
				"option",
				"play",
				"replay",
				"tomainmenu"
			},
			positions = {},
			hover = {
				outlineRadiusPx = 0,
				liftPx = 4,
				alphaThreshold = 0.01,
				outlineColor = {
					0.22745098039215686,
					0.1607843137254902,
					0.2235294117647059,
					1
				}
			},
			labels = {
				offsetY = -1,
				offsetX = 10,
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
	var_46_0.restartConfirm = {
		centerFracX = 0.5,
		bottomPadMinPx = 10,
		sidePadMinPx = 10,
		boardOffsetY = 120,
		boardOffsetX = 0,
		centerFracY = 0.5,
		shadow = {
			enabled = false,
			offsetY = 4,
			offsetX = 4,
			color = {
				0,
				0,
				0,
				0.8
			}
		},
		prompt = {
			align = "center",
			topPadMinPx = 16,
			yFrac = 0.24,
			offsetY = 0,
			offsetX = 0,
			color = {
				0.898,
				0.886,
				0.941,
				1
			}
		},
		yes = {
			yFracFromBottom = 0.1,
			xFrac = 0.06,
			offsetY = -10,
			offsetX = 70,
			color = {
				0.949,
				0.902,
				0.788,
				1
			}
		},
		no = {
			yFracFromBottom = 0.1,
			xFrac = 0.06,
			offsetY = -10,
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
			k = 90,
			maxVel = 2000,
			damping = 12
		},
		hoverUnderline = {
			enabled = true,
			drawDurSec = 0.2,
			thicknessSourcePx = 1,
			gapPx = 8,
			retractDurSec = 0.1,
			padX = 0,
			color = {
				0.9490196078431372,
				0.6509803921568628,
				0.3686274509803922,
				1
			}
		}
	}
	var_46_0.infoOverlay = {
		snapEps = 0.5,
		ropeYOffsetPx = -10,
		visibleY = 0,
		hiddenY = -var_46_0.virtual.H,
		spring = {
			k = 90,
			maxVel = 2000,
			damping = 14
		},
		bob = {
			quantize = true,
			enabled = true,
			pixelStep = 1,
			ampPx = 4,
			freqHz = 0.18
		},
		text = {
			descOffsetY = 18,
			lineGapPx = 1,
			bodyScale = 1,
			titleScale = 1,
			titleOffsetY = -11,
			xOffsetPx = 300,
			lineSpacingMul = 1.45,
			x = math.floor(var_46_0.virtual.W * 0.28),
			y = math.floor(var_46_0.virtual.H * 0.22),
			w = math.floor(var_46_0.virtual.W * 0.54),
			descWrapWidthPx = math.floor(var_46_0.virtual.W * 0.15),
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
			scale = 1,
			bottomPadPx = 22,
			align = "center",
			tier3YOffsetPx = -158,
			color = {
				0.949,
				0.902,
				0.788,
				1
			},
			outline = {
				basePx = 1,
				enabled = false,
				scaleWith = true,
				color = {
					0.22745098039215686,
					0.1607843137254902,
					0.2235294117647059,
					1
				}
			}
		}
	}
	var_46_0.itemInfoOverlay = {
		snapEps = 0.5,
		ropeYOffsetPx = -10,
		visibleY = 0,
		hiddenY = -var_46_0.virtual.H,
		spring = {
			k = 90,
			maxVel = 2000,
			damping = 14
		},
		text = {
			y = 93,
			x = 478,
			lineGapPx = 1,
			bodyScale = 1,
			titleScale = 1,
			lineSpacingMul = 1.45,
			w = math.floor(var_46_0.virtual.W * 0.54),
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
			descWrapWidthPx = math.floor(var_46_0.virtual.W * 0.54)
		}
	}

	local var_46_54 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

	if love.filesystem.getInfo(var_46_54) and var_46_0.infoOverlay and var_46_0.infoOverlay.text then
		local var_46_55, var_46_56 = pcall(var_46_2, var_46_54)

		if var_46_55 and var_46_56 then
			var_46_0.infoOverlay.text.titleFont = var_46_56
			var_46_0.infoOverlay.text.bodyFont = var_46_56
		end
	end

	var_46_0.coreMessage = {
		leaveDur = 0.2,
		hold = 10000,
		appearDur = 0.25,
		everyWave = 3,
		yOffsetPx = -115,
		scale = 1,
		xOffsetPx = 73,
		align = "left",
		typeCharsPerSec = 14,
		appearOffsetPx = -10,
		showSprite = false,
		showText = false,
		color = {
			0.898,
			0.886,
			0.941,
			1
		},
		float = {
			enabled = false,
			phasePerChar = 0,
			ampPx = 0.8,
			speedHz = 0.8
		},
		jitter = {
			quantize = true,
			freqJitter = 0.1,
			minAmpPx = 0.53,
			ampPx = 0.53,
			ampJitter = 0.15,
			enabled = true,
			speedHz = 4,
			axis = "xy",
			pixelStep = 1
		},
		scrollJitter = {
			enabled = true,
			ampPx = 2,
			speedHz = 6.5,
			quantize = true,
			axis = "xy",
			pixelStep = 1
		}
	}

	var_46_53(var_46_0.pauseOverlay.creditsText)

	var_46_0.shopOverlay = {
		snapEps = 0.5,
		visibleY = 0,
		offsetX = -4,
		hiddenY = -var_46_0.virtual.H,
		spring = {
			k = 64,
			maxVel = 1500,
			damping = 12
		},
		bob = {
			quantize = false,
			enabled = true,
			pixelStep = 1,
			ampPx = 3,
			freqHz = 0.45
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
				enabled = true,
				quantize = true,
				restDurSec = 0,
				bounceDurSec = 0.26,
				perCharDelaySec = 0.35,
				ampPx = 3,
				pixelStep = 1
			}
		}
	}
	var_46_0.shopKeeper = var_46_0.shopKeeper or {
		y = 54,
		x = 247,
		offsetY = 0,
		holdFrame = 1,
		pauseDur = 1.4,
		frameDur = 0.5,
		drawScale = 2,
		frameCount = 4,
		frameH = 68,
		frameW = 63,
		offsetX = 0
	}
	var_46_0.itemShop = {
		typeCharsPerSec = 70,
		slots = {
			countDelete = 1,
			countSell = 3,
			rerollGapPx = 6,
			deleteGapPx = 30,
			spacingPx = 6,
			baseY = 185,
			baseX = 254,
			scale = 1,
			countReroll = 1,
			hover = {
				outlineRadiusPx = 2,
				liftPx = 4,
				outlineThreshold = 0.5,
				useUnitPixelThickness = true,
				outlineColor = {
					0.9294117647058824,
					0.9019607843137255,
					0.9529411764705882,
					1
				}
			}
		},
		itemLayout = (function()
			local var_56_0 = {}

			var_56_0.centerIcon = true
			var_56_0.iconOffsetX = 0
			var_56_0.iconOffsetY = 7
			var_56_0.iconScale = 1
			var_56_0.priceOffsetX = 10
			var_56_0.priceOffsetY = 54
			var_56_0.priceScale = 1
			var_56_0.priceColor = {
				0.615686274509804,
				0.792156862745098,
				0.9411764705882353,
				1
			}

			local var_56_1 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

			if love.filesystem.getInfo(var_56_1) then
				local var_56_2, var_56_3 = pcall(function()
					return var_56_0._loader and var_56_0._loader(var_56_1)
				end)

				if not var_56_3 then
					local var_56_4 = love.filesystem.read(var_56_1)

					if var_56_4 and var_56_4 ~= "" then
						local var_56_5 = {}

						for iter_56_0 in var_56_4:gmatch("([^\r\n]+)") do
							if not iter_56_0:match("^%s*#") then
								table.insert(var_56_5, iter_56_0)
							end
						end

						local var_56_6 = table.concat(var_56_5, "\n")

						if not var_56_6:match("\n$") then
							var_56_6 = var_56_6 .. "\n"
						end

						local var_56_7 = love.filesystem.newFileData(var_56_6, var_56_1)
						local var_56_8 = love.graphics.newFont(var_56_7)

						var_56_8:setFilter("nearest", "nearest")
						var_0_1.attachFallbacks(var_56_8, var_56_1)

						var_56_0.priceFont = var_56_8
						var_56_0.nameFont = var_56_0.nameFont or var_56_8
						var_56_0.effectFont = var_56_0.effectFont or var_56_8
					end
				elseif var_56_3 then
					var_56_0.priceFont = var_56_3
					var_56_0.nameFont = var_56_0.nameFont or var_56_3
					var_56_0.effectFont = var_56_0.effectFont or var_56_3
				end
			end

			var_56_0.nameOffsetX = 217
			var_56_0.nameOffsetY = -134
			var_56_0.nameScale = 1
			var_56_0.nameColor = {
				1,
				1,
				1,
				1
			}
			var_56_0.nameRarityColors = {
				U = {
					0.5568627450980392,
					0.8509803921568627,
					0.6274509803921569,
					1
				},
				R = {
					0.5529411764705883,
					0.7333333333333333,
					1,
					1
				},
				L = {
					0.9647058823529412,
					0.7411764705882353,
					0.40784313725490196,
					1
				}
			}
			var_56_0.stripEnglishParen = true
			var_56_0.effectOffsetX = 216
			var_56_0.effectOffsetY = -109
			var_56_0.effectScale = 1
			var_56_0.effectColor = {
				0.82,
				0.84,
				0.86,
				1
			}
			var_56_0.descMaxWidth = 95
			var_56_0.descLineGapPx = 5
			var_56_0.descViewportHeightPx = 80
			var_56_0.cooldown = {
				scale = 1,
				gapPx = 25,
				fixedLines = 3,
				absolute = false,
				offsetY = -130,
				offsetX = 216,
				color = {
					1,
					0.839,
					0.353,
					1
				}
			}

			return var_56_0
		end)()
	}
	var_46_0.waveCounter = {
		spacing = 1,
		slideDuration = 0.3,
		waveGapPx = 5,
		centerNeighborGapPx = 0,
		visibleSlots = 5,
		easing = "easeOutCubic",
		scaleOther = 1,
		scaleCurrent = 2,
		offsetY = -5,
		offsetX = -8,
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
			basePx = 1,
			enabled = true,
			scaleWith = true,
			color = {
				0.22745098039215686,
				0.1607843137254902,
				0.2235294117647059,
				1
			}
		},
		outlineOther = {
			basePx = 1,
			enabled = true,
			scaleWith = true,
			color = {
				0.1568627450980392,
				0.1411764705882353,
				0.1803921568627451,
				0.85
			}
		}
	}
	var_46_0.waveLabel = {
		bgOffsetY = 0,
		integerScale = true,
		bgOffsetX = 0,
		hideAfterSec = 2.5,
		textOffsetY = -1,
		textOffsetX = 0,
		scale = 1,
		cornerRadiusPx = 4,
		offsetY = 0,
		offsetX = 0
	}
	var_46_0.maxUnit = {
		y = 10,
		x = 369,
		scale = 1,
		iconOffsetY = 0,
		max = 10,
		iconOffsetX = 88,
		enabled = true,
		align = "right",
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
			alpha = 0.75,
			blend = "alpha"
		},
		waveText = {
			y = 10,
			x = 445,
			scale = 1,
			enabled = true,
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
	var_46_0.jungsuDisplay = {
		y = 10,
		x = 400,
		align = "center",
		enabled = true,
		scale = 1,
		integerScale = true,
		color = {
			0.615686274509804,
			0.792156862745098,
			0.9411764705882353,
			1
		}
	}
	var_46_0.slotBlink = {
		enabled = true,
		minAlpha = 0.01,
		speedHz = 0.4,
		maxAlpha = 0.15,
		waveShape = "abs-sin",
		color = {
			1,
			0.4196078431,
			0.368627451,
			1
		},
		shake = {
			enabled = true,
			freq = 6,
			ampPx = 1,
			axis = "xy"
		}
	}

	local var_46_57 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

	if love.filesystem.getInfo(var_46_57) then
		local var_46_58, var_46_59 = pcall(var_46_2, var_46_57)

		if var_46_58 and var_46_59 then
			var_46_0.coreMessage.font = var_46_59

			if var_46_0.waveLabel then
				var_46_0.waveLabel.font = var_46_59
			end

			if var_46_0.coreCountDisplay then
				var_46_0.coreCountDisplay.font = var_46_59
			end

			if var_46_0.jungsuDisplay and not var_46_0.jungsuDisplay.font then
				var_46_0.jungsuDisplay.font = var_46_59
			end
		end
	end

	if not var_46_0.coreMessage.font and var_46_0.infoOverlay and var_46_0.infoOverlay.text then
		var_46_0.coreMessage.font = var_46_0.infoOverlay.text.titleFont or var_46_0.fontTitle
	end

	if var_46_0.coreCountDisplay and not var_46_0.coreCountDisplay.font then
		var_46_0.coreCountDisplay.font = var_46_0.coreMessage.font or var_46_0.infoOverlay and var_46_0.infoOverlay.text and var_46_0.infoOverlay.text.titleFont or var_46_0.fontTitle or var_46_0.font
	end

	var_46_0.coreSelect = {
		animationFrameSec = 0.07,
		yOffsetPx = -30,
		hover = {
			insetEnterPx = 6,
			outlineRadiusPx = 2,
			liftPx = 10,
			leaveExpandPx = 2
		},
		content = (function()
			local var_58_0 = (var_46_0.coreSelect or {}).scale or 2

			return {
				padPx = 8 * var_58_0,
				icon = {
					y = 50,
					x = 0,
					sizePx = 16 * var_58_0
				},
				name = {
					y = 25,
					x = var_58_0,
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
					gapPx = 2 * var_58_0,
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
					maxLines = 5,
					y = 120,
					lineGapPx = 2 * var_58_0,
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
					},
					symbolColor = {
						0.027450980392156862,
						0.37254901960784315,
						0.47843137254901963,
						1
					}
				},
				duration = {
					y = 220,
					x = 2,
					bottomPadPx = 6 * var_58_0,
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
			labelYOffsetPx = -2,
			scale = 2,
			gapPx = 20,
			yOffsetPx = 20,
			hover = {
				liftPx = 4
			}
		}
	}
	var_46_0.postfx = {
		enabled = true,
		toneMap = {
			exposure = 1.1,
			enabled = true,
			gamma = 2
		},
		bloom = {
			enabled = true,
			threshold = 0.85,
			strength = 0.8,
			radius = 1.25,
			knee = 0.2,
			temporal = {
				enabled = true,
				hold = 0.85
			}
		},
		vignette = {
			enabled = true,
			roundness = 0.55,
			strength = 0.12
		},
		grainSharpen = {
			enabled = true,
			sharpen = 0.1,
			grain = 0.018
		}
	}
	var_46_0.bossBar = {
		yOffsetPx = -60,
		nameGapPx = 10,
		color = {
			0.6980392156862745,
			0.2,
			0.23921568627450981,
			1
		}
	}
	var_46_0.battlefieldSections = {
		enabled = true,
		alpha = 1,
		battlefield = {
			y = 230,
			x = 376,
			scale = 1,
			anchor = "battlefield-top-left"
		},
		shop = {
			y = 194,
			x = 382,
			scale = 1,
			anchor = "battlefield-top-left"
		},
		stone = {
			y = 158,
			x = 382,
			scale = 1,
			anchor = "battlefield-top-left"
		},
		hover = {
			shiftLeftPx = 4,
			radiusPx = 2,
			liftPx = 4,
			alphaThreshold = 0.05,
			outlineColor = {
				0.9294117647058824,
				0.9019607843137255,
				0.9529411764705882,
				1
			}
		}
	}
	var_46_0.sandboxPostFX = {
		offsetY = 190,
		offsetX = 0,
		gapX = math.floor(6 * var_46_0.scale),
		btnW = math.floor(26 * var_46_0.scale),
		btnH = math.floor(10 * var_46_0.scale)
	}
	var_46_0.coreEquipped = {
		y = 290,
		x = 21,
		sizePx = 16,
		align = "left",
		anchor = "below",
		wrapCols = 4,
		rowGapPx = 4,
		gapPx = 4,
		coinSackAmount = {
			scale = 1,
			offsetY = 0,
			offsetX = 0,
			color = {
				1,
				0.78,
				0.2,
				1
			},
			shadowColor = {
				0.18,
				0.1,
				0.02,
				0.72
			}
		},
		mercContractUses = {
			scale = 1,
			offsetY = -6,
			offsetX = -1,
			color = {
				0.88,
				0.82,
				0.73,
				0.95
			}
		},
		banStamp = {
			dropPx = 10,
			impactDurSec = 0.24,
			selectedAlpha = 1,
			hoverAlpha = 0.52,
			markSizeMul = 0.72,
			shake = {
				stampAmpPx = 2,
				landingRatio = 0.52,
				screenFreqHz = 28,
				screenDurSec = 0.14,
				screenAmpPx = 0.55,
				stampFreqHz = 28
			}
		},
		crookedFang = {
			swapDurSec = 0.3
		},
		greedyTailSparkPositions = {
			{
				y = 1,
				x = 0.18
			},
			{
				y = 1,
				x = 0.82
			}
		},
		manualTarget = {
			hoverAlpha = 1,
			padSpritePx = 2,
			armSpritePx = 7,
			pulseHz = 1.2,
			alphaMax = 0.95,
			alphaMin = 0.52,
			color = {
				1,
				0.82,
				0.3
			},
			hoverColor = {
				1,
				0.95,
				0.72
			}
		},
		manualReady = {
			radiusPx = 3,
			pressDropPx = 3,
			pressScaleDepth = 0.14,
			pulseHz = 1.25,
			alphaMax = 0.68,
			alphaMin = 0.12,
			pressDurSec = 0.24,
			color = {
				1,
				0.72,
				0.18,
				1
			}
		},
		fx = {
			scale = {
				amp = 0.08,
				enabled = true,
				speedHz = 2
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
			enabled = true,
			returnSec = 0.25,
			moveSec = 0.25,
			holdSec = 0.3,
			exclude = {
				"Triggerchest",
				"EchoMirror",
				"Resonoscope",
				"StellarBlessing",
				"JokerSeed",
				"Wildcard"
			},
			dest = {
				offsetX = 20,
				offsetY = -42,
				anchor = "slot-bottom-center"
			},
			shake = {
				quantize = true,
				pixelStep = 1,
				ampPx = 2,
				freqHz = 9
			}
		}
	}
	var_46_0.cloudScroll = {
		speedPx = 6,
		tileH = 130,
		scale = 2,
		tileW = 190
	}
	var_46_0.scrollIntroAnim = {
		y = -16,
		x = 167,
		scale = 2,
		slideDur = 0.4,
		slideFromY = -30,
		label = {
			outlineStep = 1,
			pulseAmp = 0.22,
			letterSpacing = 1,
			completeOffsetX = -1,
			pulseCount = 3,
			pulseFreq = 1.6,
			urgentThreshold = 2,
			scale = 1,
			maxCount = 5,
			offsetY = 2,
			offsetX = 0,
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
			outlineRadiusPx = 2,
			minAlpha = 0.9,
			pulseHz = 0.6,
			scaleAmp = 0.08,
			outlineColor = {
				1,
				0.68,
				0.22,
				1
			}
		}
	}

	if not var_46_0.coreSelect or not var_46_0.coreSelect.font then
		if var_46_0.coreMessage and var_46_0.coreMessage.font then
			var_46_0.coreSelect.font = var_46_0.coreMessage.font
		else
			local var_46_60 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")

			if love.filesystem.getInfo(var_46_60) then
				local var_46_61, var_46_62 = pcall(var_46_2, var_46_60)

				if var_46_61 and var_46_62 then
					var_46_0.coreSelect.font = var_46_62
				end
			end

			if not var_46_0.coreSelect.font and var_46_0.infoOverlay and var_46_0.infoOverlay.text then
				var_46_0.coreSelect.font = var_46_0.infoOverlay.text.titleFont or var_46_0.fontTitle
			end
		end
	end

	if var_46_0.heartNumber then
		local var_46_63 = var_0_1.resolve("src/data/font/Galmuri9WS.fnt")
		local var_46_64 = love.filesystem.getInfo(var_46_63)
		local var_46_65 = false

		if var_46_64 then
			local var_46_66, var_46_67 = pcall(var_46_2, var_46_63)

			if var_46_66 and var_46_67 then
				var_46_0.heartNumber.font = var_46_67
				var_46_65 = true
			end
		end

		if not var_46_65 then
			local var_46_68 = var_0_1.resolve("src/data/font/Galmuri9W.fnt")

			if love.filesystem.getInfo(var_46_68) then
				local var_46_69, var_46_70 = pcall(var_46_2, var_46_68)

				if var_46_69 and var_46_70 then
					var_46_0.heartNumber.font = var_46_70
				end
			end
		end
	end

	function var_0_2.reloadLanguageFonts(arg_59_0)
		local var_59_0 = package.loaded and package.loaded["src.ui.imprint"]

		if var_59_0 and var_59_0.reloadLanguageFonts then
			var_59_0.reloadLanguageFonts()
		end

		arg_59_0 = arg_59_0 or var_46_0

		if not arg_59_0 then
			return
		end

		local function var_59_1(arg_60_0, arg_60_1)
			local var_60_0 = var_0_1.resolve(arg_60_0)

			if type(var_60_0) == "string" and var_60_0 ~= "" and love.filesystem.getInfo(var_60_0) then
				local var_60_1 = tostring(var_60_0):lower()
				local var_60_2 = var_60_1:match("%.ttf$") ~= nil or var_60_1:match("%.otf$") ~= nil
				local var_60_3
				local var_60_4

				if var_60_2 then
					var_60_3, var_60_4 = pcall(love.graphics.newFont, var_60_0, arg_60_1 or 10, var_0_4)

					if var_60_3 and var_60_4 and var_60_4.setFilter then
						var_60_4:setFilter("nearest", "nearest")
					end
				else
					var_60_3, var_60_4 = pcall(var_46_2, var_60_0)
				end

				if var_60_3 and var_60_4 then
					if _G.maybeRegisterSLineTtfTextEffect then
						_G.maybeRegisterSLineTtfTextEffect(var_60_4, arg_60_0, var_60_0, _G.currentGameLang or "ko")
					end

					return var_60_4, var_60_0
				end
			end

			return nil, var_60_0
		end

		local function var_59_2(arg_61_0)
			if type(arg_61_0) ~= "string" or arg_61_0 == "" then
				return nil
			end

			if love.filesystem.getInfo(arg_61_0) then
				local var_61_0, var_61_1 = pcall(var_46_2, arg_61_0)

				if var_61_0 and var_61_1 then
					return var_61_1
				end
			end

			return nil
		end

		local function var_59_3(arg_62_0, arg_62_1)
			if type(arg_62_0) ~= "string" or arg_62_0 == "" or not love.filesystem.getInfo(arg_62_0) then
				return nil
			end

			local var_62_0 = tostring(arg_62_0):lower()
			local var_62_1
			local var_62_2

			if var_62_0:match("%.ttf$") or var_62_0:match("%.otf$") then
				var_62_1, var_62_2 = pcall(love.graphics.newFont, arg_62_0, arg_62_1 or 10, var_0_4)
			else
				var_62_1, var_62_2 = pcall(var_46_2, arg_62_0)
			end

			if var_62_1 and var_62_2 then
				var_62_2:setFilter("nearest", "nearest")

				return var_62_2
			end

			return nil
		end

		local function var_59_4(arg_63_0, arg_63_1, arg_63_2)
			if arg_63_0 and _G.registerChineseLatinFallbackFont then
				local var_63_0 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_63_1) or arg_63_1

				_G.registerChineseLatinFallbackFont(arg_63_0, var_59_3(var_63_0, arg_63_2))
			end

			return arg_63_0
		end

		local function var_59_5(arg_64_0, arg_64_1)
			if arg_64_0 and arg_64_1 and arg_64_0.setFallbacks then
				pcall(arg_64_0.setFallbacks, arg_64_0, arg_64_1)
			end

			return arg_64_0
		end

		if (_G.currentGameLang or "ko") == "zh" then
			if _G.clearChineseShadowFonts then
				_G.clearChineseShadowFonts()
			end

			local var_59_6 = var_59_4(var_46_3(10, false), "src/data/font/Galmuri9W.fnt", 10)
			local var_59_7 = var_59_4(var_46_3(10, false), "src/data/font/Galmuri9W.fnt", 10)
			local var_59_8 = var_59_4(var_46_3(10, true), "src/data/font/Galmuri9WS.fnt", 10)
			local var_59_9 = var_59_4(var_46_3(10, false), "src/data/font/Galmuri7W.fnt", 10)
			local var_59_10 = var_59_4(var_46_3(10, true), "src/data/font/Galmuri9WS.fnt", 10)
			local var_59_11 = var_59_3("src/data/font/Galmuri7WS.fnt", 10)
			local var_59_12 = var_59_3("src/data/font/Galmuri9W.fnt", 10)
			local var_59_13 = var_59_3("src/data/font/Galmuri9WS.fnt", 10)
			local var_59_14 = var_59_3("src/data/font/Galmuri7W.fnt", 10)
			local var_59_15 = var_59_13 or var_59_12
			local var_59_16 = var_59_12 or var_59_13

			if var_59_6 then
				arg_59_0.fontInfo = {
					priority = 0,
					kind = "vector",
					path = var_0_3
				}
				arg_59_0.fontPath = var_0_3
				arg_59_0.fontKind = "vector"
				arg_59_0.fontScale = 1
				arg_59_0.fontTitleScale = 1
				arg_59_0.font = var_59_6
				arg_59_0.fontTitle = var_59_7 or var_59_6
				arg_59_0.fontBattlefieldTitle = var_59_7 or var_59_6
				arg_59_0.fontPauseTitle = var_59_7 or var_59_6
				arg_59_0.fontStageSelectTitle = var_59_7 or var_59_6
				arg_59_0.fontClassCard = var_59_6
				arg_59_0.fontGameOver = var_59_8 or var_59_6
				arg_59_0.fontCoin = var_59_14 or var_59_9 or var_59_6
				arg_59_0.fontCoinScale = 1
				arg_59_0.fontJackpot = var_59_14 or var_59_9 or var_59_6
				arg_59_0.fontJackpotScale = 1
				arg_59_0.fontShopTitle = var_59_11 or var_59_10 or var_59_6
				arg_59_0.fontShopTitleScale = 1

				if var_59_16 then
					arg_59_0.combatNumberFont = var_59_16
				end

				if arg_59_0.classCard then
					arg_59_0.classCard.font = var_59_6
				end

				if arg_59_0.infoOverlay and arg_59_0.infoOverlay.text then
					arg_59_0.infoOverlay.text.titleFont = var_59_8 or var_59_7 or var_59_6
					arg_59_0.infoOverlay.text.bodyFont = var_59_8 or var_59_6
				end

				if arg_59_0.itemShop and arg_59_0.itemShop.itemLayout then
					arg_59_0.itemShop.itemLayout.priceFont = var_59_10 or var_59_6
					arg_59_0.itemShop.itemLayout.nameFont = var_59_8 or var_59_6
					arg_59_0.itemShop.itemLayout.effectFont = var_59_8 or var_59_6
				end

				if arg_59_0.coreMessage then
					arg_59_0.coreMessage.font = var_59_8 or var_59_6
				end

				if arg_59_0.waveLabel then
					arg_59_0.waveLabel.font = var_59_8 or var_59_6
				end

				if arg_59_0.coreCountDisplay then
					arg_59_0.coreCountDisplay.font = var_59_8 or var_59_6
				end

				if var_59_15 and arg_59_0.goldDisplay then
					arg_59_0.goldDisplay.font = var_59_15
				end

				if var_59_15 and arg_59_0.jungsuDisplay then
					arg_59_0.jungsuDisplay.font = var_59_15
				end

				if arg_59_0.maxUnit then
					arg_59_0.maxUnit.font = var_59_8 or var_59_6

					if arg_59_0.maxUnit.waveText then
						arg_59_0.maxUnit.waveText.font = var_59_8 or var_59_6
					end
				end

				if arg_59_0.coreSelect then
					arg_59_0.coreSelect.font = var_59_8 or var_59_6
				end

				if var_59_15 and arg_59_0.heartNumber then
					arg_59_0.heartNumber.font = var_59_15
					arg_59_0.heartNumber.popupFont = var_59_15
				end
			end

			return
		end

		if _G.clearChineseShadowFonts then
			_G.clearChineseShadowFonts()
		end

		local var_59_17 = (_G.currentGameLang or "ko") == "ja"
		local var_59_18 = var_59_17 and var_59_2("src/data/font/Galmuri9W.fnt") or nil
		local var_59_19 = var_59_17 and var_59_2("src/data/font/Galmuri9WS.fnt") or nil
		local var_59_20 = var_59_17 and var_59_2("src/data/font/Galmuri7W.fnt") or nil
		local var_59_21 = var_59_17 and var_59_2("src/data/font/Galmuri7WS.fnt") or nil
		local var_59_22, var_59_23 = var_59_1("src/data/font/Galmuri9W.fnt")

		if var_59_22 then
			var_59_5(var_59_22, var_59_18)

			local var_59_24 = tostring(var_59_23):lower()
			local var_59_25 = (var_59_24:match("%.ttf$") or var_59_24:match("%.otf$")) and "vector" or "bmfont"

			arg_59_0.fontInfo = {
				priority = 0,
				path = var_59_23,
				kind = var_59_25
			}
			arg_59_0.fontPath = var_59_23
			arg_59_0.fontKind = var_59_25
			arg_59_0.font = var_59_22
			arg_59_0.fontTitle = var_59_22
			arg_59_0.fontBattlefieldTitle = var_59_22
			arg_59_0.fontPauseTitle = var_59_22
			arg_59_0.fontStageSelectTitle = var_59_22
			arg_59_0.fontClassCard = var_59_22

			if arg_59_0.classCard then
				arg_59_0.classCard.font = var_59_22
			end
		end

		local var_59_26 = var_59_1("src/data/font/Galmuri9WS.fnt")

		if var_59_26 then
			var_59_5(var_59_26, var_59_19 or var_59_18)

			arg_59_0.fontGameOver = var_59_26

			if arg_59_0.infoOverlay and arg_59_0.infoOverlay.text then
				arg_59_0.infoOverlay.text.titleFont = var_59_26
				arg_59_0.infoOverlay.text.bodyFont = var_59_26
			end

			if arg_59_0.itemShop and arg_59_0.itemShop.itemLayout then
				arg_59_0.itemShop.itemLayout.priceFont = var_59_26
				arg_59_0.itemShop.itemLayout.nameFont = var_59_26
				arg_59_0.itemShop.itemLayout.effectFont = var_59_26
			end

			if arg_59_0.coreMessage then
				arg_59_0.coreMessage.font = var_59_26
			end

			if arg_59_0.waveLabel then
				arg_59_0.waveLabel.font = var_59_26
			end

			if arg_59_0.coreCountDisplay then
				arg_59_0.coreCountDisplay.font = var_59_26
			end

			if arg_59_0.jungsuDisplay then
				arg_59_0.jungsuDisplay.font = var_59_26
			end

			if arg_59_0.coreSelect then
				arg_59_0.coreSelect.font = var_59_26
			end

			if arg_59_0.heartNumber then
				arg_59_0.heartNumber.font = var_59_26
			end
		end

		local var_59_27 = var_59_26 or var_59_22

		if arg_59_0.maxUnit and var_59_27 then
			arg_59_0.maxUnit.font = var_59_27

			if arg_59_0.maxUnit.waveText then
				arg_59_0.maxUnit.waveText.font = var_59_27
			end
		end

		local var_59_28 = var_59_1("src/data/font/Galmuri7W.fnt")

		if var_59_28 then
			var_59_5(var_59_28, var_59_20 or var_59_18)

			arg_59_0.fontCoin = var_59_28
			arg_59_0.fontCoinScale = 8 / math.max(1, var_59_28:getHeight())
			arg_59_0.fontJackpot = var_59_28
		end

		local var_59_29 = var_59_1("src/data/font/Galmuri7WS.fnt") or var_59_28

		if var_59_29 then
			var_59_5(var_59_29, var_59_21 or var_59_20 or var_59_18)

			arg_59_0.fontShopTitle = var_59_29
		end
	end

	return var_46_0
end

return var_0_2
