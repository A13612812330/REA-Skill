local var_0_0 = {}
local var_0_1 = require("src.data.assets")
local var_0_2 = require("src.data.constants")
local var_0_3 = require("src.data.language")
local var_0_4 = require("src.data.font_resolver")

local function var_0_5(arg_1_0, arg_1_1, arg_1_2)
	if arg_1_0 < arg_1_1 then
		return arg_1_1
	end

	if arg_1_2 < arg_1_0 then
		return arg_1_2
	end

	return arg_1_0
end

local function var_0_6(arg_2_0)
	arg_2_0 = var_0_5(arg_2_0, 0, 1)

	return arg_2_0 * arg_2_0 * (3 - 2 * arg_2_0)
end

local var_0_7 = {}
local var_0_8 = {}
local var_0_9
local var_0_10
local var_0_11
local var_0_12 = false
local var_0_13
local var_0_14 = false
local var_0_15
local var_0_16
local var_0_17 = {}
local var_0_18
local var_0_19
local var_0_20
local var_0_21
local var_0_22 = {}

local function var_0_23(arg_3_0)
	return arg_3_0 and ((arg_3_0.bloodScentDmgMul or 0) > 0 or tostring(arg_3_0.kind or ""):find("Blood Assassin", 1, true) or tostring(arg_3_0.skin or ""):find("Blood Assassin", 1, true))
end

local function var_0_24(arg_4_0, arg_4_1)
	local var_4_0
	local var_4_1
	local var_4_2
	local var_4_3

	for iter_4_0, iter_4_1 in ipairs(arg_4_1 or {}) do
		if iter_4_1 and iter_4_1.alive and not iter_4_1.dying and not iter_4_1.isUndyingSoul then
			local var_4_4 = math.max(1, tonumber(iter_4_1.maxhp or iter_4_1.hp or 1) or 1)
			local var_4_5 = math.max(0, tonumber(iter_4_1.hp or 0) or 0)
			local var_4_6 = var_4_5 / var_4_4
			local var_4_7 = (iter_4_1.x or 0) - (arg_4_0.x or 0)
			local var_4_8 = (iter_4_1.y or 0) - (arg_4_0.y or 0)
			local var_4_9 = var_4_7 * var_4_7 + var_4_8 * var_4_8

			if not var_4_0 or var_4_5 < var_4_1 or var_4_5 == var_4_1 and var_4_6 < (var_4_2 or math.huge) or var_4_5 == var_4_1 and var_4_6 == var_4_2 and var_4_9 < (var_4_3 or math.huge) then
				var_4_0, var_4_1, var_4_2, var_4_3 = iter_4_1, var_4_5, var_4_6, var_4_9
			end
		end
	end

	return var_4_0
end

local function var_0_25(arg_5_0)
	return _G.currentGameLang or arg_5_0 and arg_5_0.menuSettings and arg_5_0.menuSettings.language or "ko"
end

local function var_0_26(arg_6_0, arg_6_1, arg_6_2, arg_6_3, arg_6_4)
	if type(arg_6_0) ~= "string" or arg_6_0 == "" then
		return nil
	end

	local var_6_0, var_6_1 = pcall(love.filesystem.getInfo, arg_6_0)

	if not var_6_0 or not var_6_1 then
		return nil
	end

	local var_6_2
	local var_6_3
	local var_6_4 = arg_6_0:lower()

	if var_6_4:match("%.ttf$") or var_6_4:match("%.otf$") then
		var_6_2, var_6_3 = pcall(love.graphics.newFont, arg_6_0, arg_6_1 or 10, "normal")
	else
		var_6_2, var_6_3 = pcall(love.graphics.newFont, arg_6_0)
	end

	if var_6_2 and var_6_3 then
		var_6_3:setFilter("nearest", "nearest")

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_6_3, arg_6_2)
		end

		if _G.maybeRegisterSLineTtfTextEffect then
			_G.maybeRegisterSLineTtfTextEffect(var_6_3, arg_6_3, arg_6_0, arg_6_4)
		end

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseLatinFallbackFont and arg_6_3 then
			local var_6_5
			local var_6_6
			local var_6_7 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_6_3) or arg_6_3

			if love.filesystem.getInfo(var_6_7) then
				local var_6_8 = tostring(var_6_7):lower()

				if var_6_8:match("%.ttf$") or var_6_8:match("%.otf$") then
					var_6_5, var_6_6 = pcall(love.graphics.newFont, var_6_7, arg_6_1 or 10, "normal")
				else
					var_6_5, var_6_6 = pcall(love.graphics.newFont, var_6_7)
				end
			end

			if var_6_5 and var_6_6 then
				var_6_6:setFilter("nearest", "nearest")
				_G.registerChineseLatinFallbackFont(var_6_3, var_6_6)
			end
		end

		return var_6_3
	end

	return nil
end

local function var_0_27(arg_7_0, arg_7_1)
	local var_7_0 = var_0_25(arg_7_1)
	local var_7_1 = var_0_4.resolve(arg_7_0, var_7_0)

	if type(var_7_1) ~= "string" or var_7_1 == "" then
		var_7_1 = arg_7_0
	end

	return var_7_1, var_7_0
end

local function var_0_28(arg_8_0)
	local var_8_0, var_8_1 = var_0_27("src/data/font/Galmuri9WSLine.fnt", arg_8_0)
	local var_8_2 = tostring(var_8_1) .. "|" .. tostring(var_8_0)

	if var_0_18 and var_0_19 == var_8_2 then
		return var_0_18
	end

	var_0_18 = var_0_26(var_8_0, 10, nil, "src/data/font/Galmuri9WSLine.fnt", var_8_1)
	var_0_19 = var_8_2

	if var_0_18 then
		return var_0_18
	end

	return arg_8_0 and arg_8_0.font or love.graphics.getFont()
end

local function var_0_29(arg_9_0)
	if (_G.currentGameLang or "ko") == "zh" then
		local var_9_0, var_9_1 = pcall(require, "src.ui.imprint")

		if var_9_0 and var_9_1 and var_9_1.getNameFont then
			local var_9_2 = var_9_1.getNameFont()

			if var_9_2 then
				return var_9_2
			end
		end
	end

	local var_9_3, var_9_4 = var_0_27("src/data/font/Galmuri9WS.fnt", arg_9_0)
	local var_9_5 = tostring(var_9_4) .. "|" .. tostring(var_9_3)

	if var_0_20 and var_0_21 == var_9_5 then
		return var_0_20
	end

	var_0_20 = var_0_26(var_9_3, 10, nil, "src/data/font/Galmuri9WS.fnt", var_9_4)
	var_0_21 = var_9_5

	if var_0_20 then
		return var_0_20
	end

	return arg_9_0 and arg_9_0.font or love.graphics.getFont()
end

function var_0_0.reloadLanguageFonts()
	var_0_18 = nil
	var_0_19 = nil
	var_0_20 = nil
	var_0_21 = nil
end

local function var_0_30(arg_11_0)
	local var_11_0 = arg_11_0 and arg_11_0.itemInfoOverlay and arg_11_0.itemInfoOverlay.text
	local var_11_1 = arg_11_0 and arg_11_0.infoOverlay and arg_11_0.infoOverlay.text
	local var_11_2 = arg_11_0 and arg_11_0.itemShop and arg_11_0.itemShop.itemLayout
	local var_11_3 = var_11_2 and var_11_2.effectFont or var_11_0 and (var_11_0.bodyFont or var_11_0.font) or var_11_1 and (var_11_1.bodyFont or var_11_1.font) or arg_11_0 and arg_11_0.font or love.graphics.getFont()
	local var_11_4 = var_11_2 and var_11_2.effectScale or var_11_0 and var_11_0.bodyScale or var_11_1 and var_11_1.bodyScale or 1
	local var_11_5 = var_11_2 and var_11_2.effectColor or var_11_0 and var_11_0.bodyColor or var_11_1 and var_11_1.bodyColor or {
		0.82,
		0.84,
		0.86,
		1
	}

	return var_11_3, tonumber(var_11_4 or 1) or 1, var_11_5
end

local function var_0_31(arg_12_0, arg_12_1)
	if not arg_12_0 or not arg_12_0.units or not arg_12_1 then
		return nil
	end

	for iter_12_0, iter_12_1 in pairs(arg_12_0.units) do
		if iter_12_1 == arg_12_1 then
			return iter_12_0
		end
	end

	return nil
end

local function var_0_32(arg_13_0, arg_13_1, arg_13_2)
	if not arg_13_0 or not arg_13_1 or not arg_13_2 then
		return nil
	end

	local var_13_0 = arg_13_2.battleUnit or arg_13_2.unit

	if not var_13_0 then
		return nil
	end

	local var_13_1

	if arg_13_1.getUnitAssetForAlly then
		var_13_1 = arg_13_1:getUnitAssetForAlly(var_13_0)
	end

	local var_13_2 = var_0_31(arg_13_0, var_13_1)

	if not var_13_2 then
		return nil
	end

	if var_0_22[var_13_2] ~= nil then
		return var_0_22[var_13_2] or nil
	end

	local var_13_3 = arg_13_0.unitsMeta and arg_13_0.unitsMeta[var_13_2]
	local var_13_4 = var_13_3 and var_13_3.used

	if type(var_13_4) ~= "string" or var_13_4 == "" then
		return nil
	end

	local var_13_5 = var_13_4:gsub("%.png$", "_port.png")

	if var_13_5 == var_13_4 then
		return nil
	end

	local var_13_6, var_13_7 = pcall(love.filesystem.getInfo, var_13_5)

	if not var_13_6 or not var_13_7 then
		return nil
	end

	local var_13_8, var_13_9 = pcall(love.graphics.newImage, var_13_5)

	if var_13_8 and var_13_9 then
		var_13_9:setFilter("nearest", "nearest")

		var_0_22[var_13_2] = var_13_9

		return var_13_9
	end

	return nil
end

local function var_0_33()
	if var_0_10 then
		return var_0_10
	end

	local var_14_0 = "        extern vec2 texelStep;\n        extern vec4 outlineColor;\n        extern float threshold;\n        extern float radiusPx;\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            float a0 = Texel(tex, tc).a;\n            if (a0 > threshold) {\n                return vec4(0.0);\n            }\n            float found = 0.0;\n            for (float r = 1.0; r <= 6.0; r += 1.0) {\n                if (r > radiusPx) { break; }\n                vec2 s = texelStep * r;\n                float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n                float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n                float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n                float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n                float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n                float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n                float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n                float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n                float neighbor = max(max(max(a1, a2), max(a3, a4)), max(max(a5, a6), max(a7, a8)));\n                if (neighbor > threshold) {\n                    found = 1.0;\n                    break;\n                }\n            }\n            if (found <= 0.0) {\n                return vec4(0.0);\n            }\n            return outlineColor;\n        }\n    "

	var_0_10 = love.graphics.newShader(var_14_0)

	return var_0_10
end

local function var_0_34(arg_15_0)
	local var_15_0 = math.max(1, math.min(6, math.floor((tonumber(arg_15_0) or 1) + 0.5)))

	if var_0_17[var_15_0] then
		return var_0_17[var_15_0]
	end

	local var_15_1, var_15_2 = pcall(love.image.newImageData, "src/sprites/background/mainbackground/dpsslot.png")

	if not var_15_1 or not var_15_2 then
		return nil
	end

	local var_15_3, var_15_4 = var_15_2:getDimensions()
	local var_15_5 = {}
	local var_15_6 = {}
	local var_15_7 = {}
	local var_15_8 = {}
	local var_15_9 = 1
	local var_15_10 = 0

	local function var_15_11(arg_16_0, arg_16_1)
		return arg_16_1 * var_15_3 + arg_16_0 + 1
	end

	local function var_15_12(arg_17_0, arg_17_1)
		if arg_17_0 < 0 or arg_17_1 < 0 or arg_17_0 >= var_15_3 or arg_17_1 >= var_15_4 then
			return false
		end

		return var_15_5[var_15_11(arg_17_0, arg_17_1)] == true
	end

	for iter_15_0 = 0, var_15_4 - 1 do
		for iter_15_1 = 0, var_15_3 - 1 do
			local var_15_13, var_15_14, var_15_15, var_15_16 = var_15_2:getPixel(iter_15_1, iter_15_0)

			var_15_5[var_15_11(iter_15_1, iter_15_0)] = (var_15_16 or 0) > 0.01
		end
	end

	local function var_15_17(arg_18_0, arg_18_1)
		if arg_18_0 < 0 or arg_18_1 < 0 or arg_18_0 >= var_15_3 or arg_18_1 >= var_15_4 then
			return
		end

		local var_18_0 = var_15_11(arg_18_0, arg_18_1)

		if var_15_6[var_18_0] or var_15_5[var_18_0] then
			return
		end

		var_15_6[var_18_0] = true
		var_15_10 = var_15_10 + 1
		var_15_7[var_15_10], var_15_8[var_15_10] = arg_18_0, arg_18_1
	end

	for iter_15_2 = 0, var_15_3 - 1 do
		var_15_17(iter_15_2, 0)
		var_15_17(iter_15_2, var_15_4 - 1)
	end

	for iter_15_3 = 0, var_15_4 - 1 do
		var_15_17(0, iter_15_3)
		var_15_17(var_15_3 - 1, iter_15_3)
	end

	while var_15_9 <= var_15_10 do
		local var_15_18 = var_15_7[var_15_9]
		local var_15_19 = var_15_8[var_15_9]

		var_15_9 = var_15_9 + 1

		var_15_17(var_15_18 + 1, var_15_19)
		var_15_17(var_15_18 - 1, var_15_19)
		var_15_17(var_15_18, var_15_19 + 1)
		var_15_17(var_15_18, var_15_19 - 1)
	end

	local var_15_20 = love.image.newImageData(var_15_3, var_15_4)

	for iter_15_4 = 0, var_15_4 - 1 do
		for iter_15_5 = 0, var_15_3 - 1 do
			local var_15_21 = false

			if var_15_6[var_15_11(iter_15_5, iter_15_4)] then
				for iter_15_6 = -var_15_0, var_15_0 do
					for iter_15_7 = -var_15_0, var_15_0 do
						if iter_15_7 * iter_15_7 + iter_15_6 * iter_15_6 <= var_15_0 * var_15_0 and var_15_12(iter_15_5 + iter_15_7, iter_15_4 + iter_15_6) then
							var_15_21 = true

							break
						end
					end

					if var_15_21 then
						break
					end
				end
			end

			var_15_20:setPixel(iter_15_5, iter_15_4, 1, 1, 1, var_15_21 and 1 or 0)
		end
	end

	local var_15_22 = love.graphics.newImage(var_15_20)

	var_15_22:setFilter("nearest", "nearest")

	var_0_17[var_15_0] = var_15_22

	return var_15_22
end

local function var_0_35()
	if var_0_11 then
		return var_0_11
	end

	if var_0_12 then
		return nil
	end

	local var_19_0 = "        extern vec3 sourceA;\n        extern vec3 targetA;\n        extern vec3 sourceB;\n        extern vec3 targetB;\n        extern vec3 sourceC;\n        extern vec3 targetC;\n        extern float threshold;\n\n        vec4 effect(vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords) {\n            vec4 texel = Texel(tex, texture_coords);\n            if (texel.a > 0.001) {\n                if (distance(texel.rgb, sourceA) <= threshold) {\n                    texel.rgb = targetA;\n                } else if (distance(texel.rgb, sourceB) <= threshold) {\n                    texel.rgb = targetB;\n                } else if (distance(texel.rgb, sourceC) <= threshold) {\n                    texel.rgb = targetC;\n                }\n            }\n            return texel * color;\n        }\n    "
	local var_19_1, var_19_2 = pcall(love.graphics.newShader, var_19_0)

	if var_19_1 and var_19_2 then
		var_0_11 = var_19_2

		return var_0_11
	end

	var_0_12 = true

	return nil
end

local function var_0_36()
	if var_0_13 then
		return var_0_13
	end

	if var_0_14 then
		return nil
	end

	local var_20_0 = "      extern number u_time;\n      extern vec3   u_uiBase;\n      extern vec2   u_dir;\n      extern number u_cycle;\n      extern number u_scale;\n      extern number u_grainScale;\n      extern number u_grainAmp;\n      extern number u_filmFreq;\n      extern number u_filmAmp;\n      extern number u_specular;\n      extern number u_fresnelPow;\n      extern number u_colorGain;\n      extern number u_saturation;\n      extern number u_mixBP;\n\n      vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n        return a + b * cos(6.28318 * (c * x + d));\n      }\n      float hash(vec2 p){\n        return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n      }\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        vec4 base = Texel(tex, tc);\n        if (base.a <= 0.001) return vec4(0.0);\n\n        vec2 dir = u_dir;\n        if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n        else dir = normalize(dir);\n        vec2 ortho = vec2(-dir.y, dir.x);\n\n        float u = dot(tc, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n        float v = dot(tc, ortho) * u_scale;\n\n        float grainLine = abs(sin(dot(tc, ortho) * u_grainScale));\n        float grainNoise = hash(tc * 97.0);\n        float grain = mix(grainLine, grainNoise, 0.25);\n\n        float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n        float x = u + film;\n\n        vec3 colBP = palette(x, vec3(0.75, 0.70, 0.78), vec3(0.25, 0.20, 0.28), vec3(1.00, 1.00, 1.00), vec3(0.10, 0.43, 0.78));\n        vec3 colWide = palette(u, vec3(0.72), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n        vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n\n        float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n        float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n        float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n\n        float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n        vec3 outRGB = foil * grainMul + spec;\n\n        outRGB = mix(u_uiBase, outRGB, 0.82);\n\n        float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n        outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n\n        float luma = dot(base.rgb, vec3(0.299, 0.587, 0.114));\n        outRGB *= (luma * u_colorGain * 1.5);\n\n        return vec4(outRGB, base.a) * color;\n      }\n    "
	local var_20_1, var_20_2 = pcall(love.graphics.newShader, var_20_0)

	if var_20_1 and var_20_2 then
		var_0_13 = var_20_2

		return var_0_13
	end

	var_0_14 = true

	return nil
end

local function var_0_37(arg_21_0, arg_21_1)
	if type(arg_21_0) ~= "table" then
		return arg_21_1
	end

	return {
		tonumber(arg_21_0[1] or arg_21_1[1]) or arg_21_1[1],
		tonumber(arg_21_0[2] or arg_21_1[2]) or arg_21_1[2],
		tonumber(arg_21_0[3] or arg_21_1[3]) or arg_21_1[3]
	}
end

local function var_0_38(arg_22_0)
	local var_22_0 = tostring(arg_22_0 or ""):lower()

	if var_22_0 == "" then
		return "normal"
	end

	if var_22_0 == "common" then
		return "normal"
	end

	if var_22_0 == "legend" or var_22_0 == "l" then
		return "legendary"
	end

	if var_22_0 == "r" then
		return "rare"
	end

	if var_22_0 == "p" then
		return "prism"
	end

	local var_22_1 = var_0_2 and var_0_2.unitGrades or {}

	if (var_22_1.colors or {})[var_22_0] then
		return var_22_0
	end

	local var_22_2 = var_22_1.labels or {}

	for iter_22_0, iter_22_1 in pairs(var_22_2) do
		if var_22_0 == tostring(iter_22_1 or ""):lower() then
			return var_0_38(iter_22_0)
		end
	end

	return "normal"
end

local function var_0_39(arg_23_0)
	if not arg_23_0 then
		return "normal"
	end

	if arg_23_0.specialJackpot5th == true or arg_23_0.unit and (arg_23_0.unit.jackpot5th == true or arg_23_0.unit.specialJackpot5th == true) or arg_23_0.battleUnit and (arg_23_0.battleUnit.jackpot5th == true or arg_23_0.battleUnit.specialJackpot5th == true) then
		return "prism"
	end

	return var_0_38(arg_23_0.grade or arg_23_0.rarity or arg_23_0.unit and (arg_23_0.unit.grade or arg_23_0.unit.rarity) or arg_23_0.battleUnit and (arg_23_0.battleUnit.grade or arg_23_0.battleUnit.rarity))
end

local function var_0_40(arg_24_0, arg_24_1, arg_24_2)
	local var_24_0 = arg_24_2 and (arg_24_2.color or arg_24_2.borderColor) or arg_24_1 and arg_24_1.colors and arg_24_1.colors[arg_24_0]
	local var_24_1

	if arg_24_0 == "advanced" then
		var_24_1 = {
			0.6,
			0.85,
			0.65
		}
	elseif arg_24_0 == "rare" then
		var_24_1 = {
			0.6,
			0.75,
			1
		}
	elseif arg_24_0 == "legendary" then
		var_24_1 = {
			0.99,
			0.8,
			0.22
		}
	elseif arg_24_0 == "prism" then
		var_24_1 = {
			0.8,
			0.4,
			1
		}
	else
		local var_24_2 = var_0_2 and var_0_2.unitGrades and var_0_2.unitGrades.colors or {}

		var_24_1 = var_0_37(var_24_2[arg_24_0], {
			1,
			1,
			1
		})
	end

	return var_0_37(var_24_0, var_24_1)
end

local function var_0_41(arg_25_0, arg_25_1)
	local var_25_0 = var_0_36()

	if not var_25_0 then
		return nil
	end

	local var_25_1 = type(arg_25_1 and arg_25_1.foil) == "table" and arg_25_1.foil or type(arg_25_0 and arg_25_0.prismFoil) == "table" and arg_25_0.prismFoil or {}

	local function var_25_2(arg_26_0, arg_26_1)
		if var_25_0.hasUniform and not var_25_0:hasUniform(arg_26_0) then
			return
		end

		pcall(function()
			var_25_0:send(arg_26_0, arg_26_1)
		end)
	end

	local var_25_3 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	var_25_2("u_time", var_25_3 % 10000)
	var_25_2("u_uiBase", var_0_37(var_25_1.uiBase, {
		0.24313725490196078,
		0.20784313725490197,
		0.27450980392156865
	}))
	var_25_2("u_dir", var_25_1.dir or {
		1,
		0.4
	})
	var_25_2("u_cycle", tonumber(var_25_1.cycle or var_25_1.cycleSec or 4) or 4)
	var_25_2("u_scale", tonumber(var_25_1.scale or 2) or 2)
	var_25_2("u_grainScale", tonumber(var_25_1.grainScale or 3) or 3)
	var_25_2("u_grainAmp", tonumber(var_25_1.grainAmp or 0.2) or 0.2)
	var_25_2("u_filmFreq", tonumber(var_25_1.filmFreq or 2) or 2)
	var_25_2("u_filmAmp", tonumber(var_25_1.filmAmp or 0.25) or 0.25)
	var_25_2("u_specular", tonumber(var_25_1.specular or 0.5) or 0.5)
	var_25_2("u_fresnelPow", tonumber(var_25_1.fresnelPow or 2.5) or 2.5)
	var_25_2("u_colorGain", tonumber(var_25_1.colorGain or 1.8) or 1.8)
	var_25_2("u_saturation", tonumber(var_25_1.saturation or 1.5) or 1.5)
	var_25_2("u_mixBP", tonumber(var_25_1.mixBP or 0.32) or 0.32)
	love.graphics.setShader(var_25_0)

	return var_25_0
end

local function var_0_42(arg_28_0, arg_28_1)
	arg_28_1 = var_0_38(arg_28_1)

	local var_28_0 = (arg_28_0 and arg_28_0.dpsWindow and arg_28_0.dpsWindow.slotList or {}).gradePalette

	if var_28_0 == false then
		return nil
	end

	if type(var_28_0) ~= "table" then
		var_28_0 = {}
	end

	if var_28_0 == false or var_28_0.enabled == false then
		return nil
	end

	local var_28_1 = type(var_28_0[arg_28_1]) == "table" and var_28_0[arg_28_1] or {}

	if var_28_1.enabled == false then
		return nil
	end

	if arg_28_1 == "normal" and var_28_1.enabled ~= true then
		return nil
	end

	if arg_28_1 == "prism" and var_28_1.foil ~= false and var_28_0.prismFoil ~= false then
		return var_0_41(var_28_0, var_28_1)
	end

	local var_28_2 = var_0_35()

	if not var_28_2 then
		return nil
	end

	local var_28_3 = var_28_1.swaps or {}
	local var_28_4 = var_28_3[1] or {}
	local var_28_5 = var_28_3[2] or {}
	local var_28_6 = var_28_3[3] or {}
	local var_28_7 = var_28_1.source or var_28_0.source or {}
	local var_28_8 = var_0_37(var_28_4.from or var_28_7[1], {
		0.3843137254901961,
		0.3333333333333333,
		0.396078431372549
	})
	local var_28_9 = var_0_37(var_28_5.from or var_28_7[2], {
		0.1803921568627451,
		0.13333333333333333,
		0.1843137254901961
	})
	local var_28_10 = var_0_37(var_28_6.from or var_28_7[3], {
		0.24313725490196078,
		0.20784313725490197,
		0.27450980392156865
	})
	local var_28_11 = var_0_40(arg_28_1, var_28_0, var_28_1)
	local var_28_12 = var_0_37(var_28_4.to, var_28_11)
	local var_28_13 = tonumber(var_28_1.shadowMul or var_28_0.shadowMul or var_28_0.darkMul or 0.48) or 0.48
	local var_28_14 = var_0_37(var_28_5.to or var_28_1.shadowColor, {
		var_0_5((var_28_11[1] or 1) * var_28_13, 0, 1),
		var_0_5((var_28_11[2] or 1) * var_28_13, 0, 1),
		var_0_5((var_28_11[3] or 1) * var_28_13, 0, 1)
	})
	local var_28_15 = tonumber(var_28_1.midMul or var_28_0.midMul or 0.64) or 0.64
	local var_28_16 = var_0_37(var_28_6.to or var_28_1.midColor, {
		var_0_5((var_28_11[1] or 1) * var_28_15, 0, 1),
		var_0_5((var_28_11[2] or 1) * var_28_15, 0, 1),
		var_0_5((var_28_11[3] or 1) * var_28_15, 0, 1)
	})

	var_28_2:send("sourceA", var_28_8)
	var_28_2:send("targetA", var_28_12)
	var_28_2:send("sourceB", var_28_9)
	var_28_2:send("targetB", var_28_14)
	var_28_2:send("sourceC", var_28_10)
	var_28_2:send("targetC", var_28_16)
	var_28_2:send("threshold", tonumber(var_28_1.threshold or var_28_0.threshold or 0.012) or 0.012)
	love.graphics.setShader(var_28_2)

	return var_28_2
end

local var_0_43 = 0
local var_0_44 = 0
local var_0_45 = 0
local var_0_46 = 0
local var_0_47 = 0
local var_0_48 = 0
local var_0_49
local var_0_50 = {}

local function var_0_51(arg_29_0, arg_29_1)
	if not arg_29_0 then
		return false
	end

	local var_29_0 = arg_29_0.imprints or arg_29_0.imps or arg_29_0.unit and (arg_29_0.unit.imprints or arg_29_0.unit.imps)

	if not var_29_0 then
		return false
	end

	for iter_29_0, iter_29_1 in pairs(var_29_0) do
		if iter_29_1 and iter_29_1.id == arg_29_1 then
			return true
		end
	end

	return false
end

local var_0_52

local function var_0_53()
	if var_0_52 then
		return var_0_52
	end

	local var_30_0 = "        extern vec3 u_tint;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            // We want to multiply the background by the tint where the sprite is.\n            // Areas with alpha 0 should return white (1,1,1) so the multiplication is neutral.\n            vec3 res = mix(vec3(1.0, 1.0, 1.0), u_tint, texel.a);\n            return vec4(res, 1.0);\n        }\n    "

	var_0_52 = love.graphics.newShader(var_30_0)

	return var_0_52
end

local function var_0_54(arg_31_0)
	local var_31_0 = arg_31_0

	if var_31_0 == "advanced" then
		return {
			hi = {
				0.32,
				0.68,
				0.42
			},
			lo = {
				0.14,
				0.31,
				0.19
			},
			glow = {
				0.43,
				0.92,
				0.57
			}
		}
	elseif var_31_0 == "rare" or var_31_0 == "r" then
		return {
			hi = {
				0.24,
				0.48,
				0.76
			},
			lo = {
				0.11,
				0.22,
				0.34
			},
			glow = {
				0.31,
				0.62,
				0.99
			}
		}
	elseif var_31_0 == "legendary" or var_31_0 == "legend" or var_31_0 == "l" then
		return {
			hi = {
				0.79,
				0.6,
				0.12
			},
			lo = {
				0.36,
				0.27,
				0.05
			},
			glow = {
				0.99,
				0.75,
				0.15
			}
		}
	elseif var_31_0 == "normal" or not var_31_0 or var_31_0 == "" then
		return {
			hi = {
				0.5450980392156862,
				0.5450980392156862,
				0.5450980392156862
			},
			lo = {
				0.49019607843137253,
				0.49019607843137253,
				0.49019607843137253
			},
			glow = {
				0.7215686274509804,
				0.7215686274509804,
				0.7215686274509804
			}
		}
	elseif var_31_0 == "prism" then
		return {
			hi = {
				0.8156862745098039,
				0.6588235294117647,
				1
			},
			lo = {
				0.4470588235294118,
				0.2196078431372549,
				0.7686274509803922
			},
			glow = {
				1,
				0.96,
				1
			}
		}
	end

	return {
		hi = {
			0.6666666666666666,
			0.3803921568627451,
			0.7764705882352941
		},
		lo = {
			0.592156862745098,
			0.23137254901960785,
			0.7294117647058823
		},
		glow = {
			0.9098039215686274,
			0.8156862745098039,
			0.9882352941176471
		}
	}
end

local var_0_55

local function var_0_56()
	if var_0_55 then
		return var_0_55
	end

	local var_32_0 = "        extern float u_time;\n        extern float baseAlpha;\n        extern float pulse;\n        vec3 rainbow(float x){\n            return 0.62 + 0.38 * cos(6.28318 * (x + vec3(0.00, 0.33, 0.67)));\n        }\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n            float fade = Texel(tex, tc).a;\n            float edgeBand = min(min(tc.x, 1.0 - tc.x), min(tc.y, 1.0 - tc.y));\n            float phase = tc.x * 0.90 + tc.y * 0.65 - edgeBand * 4.0 + u_time * 0.16;\n            vec3 rgb = mix(rainbow(phase), vec3(1.0), 0.08);\n            return vec4(rgb, fade * baseAlpha * pulse) * color;\n        }\n    "
	local var_32_1, var_32_2 = pcall(love.graphics.newShader, var_32_0)

	if var_32_1 and var_32_2 then
		var_0_55 = var_32_2
	end

	return var_0_55
end

local var_0_57
local var_0_58 = 0
local var_0_59 = 0
local var_0_60 = 0
local var_0_61
local var_0_62 = 0
local var_0_63 = 0
local var_0_64 = 0
local var_0_65 = 0
local var_0_66 = 2

local function var_0_67(arg_33_0, arg_33_1)
	if not arg_33_0 or not arg_33_1 or arg_33_0 <= 0 or arg_33_1 <= 0 then
		arg_33_0, arg_33_1 = love.graphics.getDimensions()
	end

	arg_33_0 = math.floor(arg_33_0 + 0.5)
	arg_33_1 = math.floor(arg_33_1 + 0.5)

	if var_0_57 and var_0_58 == arg_33_0 and var_0_59 == arg_33_1 and var_0_60 == var_0_66 then
		return var_0_57
	end

	var_0_58, var_0_59 = arg_33_0, arg_33_1
	var_0_60 = var_0_66

	if var_0_57 then
		var_0_57:release()

		var_0_57 = nil
	end

	local var_33_0 = love.image.newImageData(arg_33_0, arg_33_1)
	local var_33_1 = math.min(arg_33_0, arg_33_1) < 3 and 0 or 1
	local var_33_2 = var_33_1
	local var_33_3 = arg_33_0 - 1 - var_33_1
	local var_33_4 = var_33_1
	local var_33_5 = arg_33_1 - 1 - var_33_1

	if var_33_2 <= var_33_3 and var_33_4 <= var_33_5 then
		for iter_33_0 = var_33_2, var_33_3 do
			var_33_0:setPixel(iter_33_0, var_33_4, 1, 1, 1, 1)

			if var_33_5 ~= var_33_4 then
				var_33_0:setPixel(iter_33_0, var_33_5, 1, 1, 1, 1)
			end
		end

		for iter_33_1 = var_33_4 + 1, var_33_5 - 1 do
			var_33_0:setPixel(var_33_2, iter_33_1, 1, 1, 1, 1)

			if var_33_3 ~= var_33_2 then
				var_33_0:setPixel(var_33_3, iter_33_1, 1, 1, 1, 1)
			end
		end
	end

	var_0_57 = love.graphics.newImage(var_33_0)

	var_0_57:setFilter("nearest", "nearest")

	return var_0_57
end

local function var_0_68(arg_34_0, arg_34_1, arg_34_2)
	local var_34_0 = math.max(0, math.floor(tonumber(arg_34_0) or 0))
	local var_34_1 = math.max(0.5, tonumber(arg_34_1) or 0.5)

	if var_34_0 == 1 then
		return 0
	end

	local var_34_2 = math.abs(var_34_0 - 1)

	if var_34_2 < 1 or var_34_1 < var_34_2 then
		return 0
	end

	local var_34_3 = (var_34_2 - 1) / var_34_1
	local var_34_4 = 1 - var_0_5(var_34_3, 0, 1)

	return math.pow(var_34_4, math.max(0.001, tonumber(arg_34_2) or 1))
end

local function var_0_69(arg_35_0, arg_35_1, arg_35_2, arg_35_3)
	arg_35_0 = math.max(1, math.floor((tonumber(arg_35_0) or 1) + 0.5))
	arg_35_1 = math.max(1, math.floor((tonumber(arg_35_1) or 1) + 0.5))
	arg_35_2 = math.max(0.5, tonumber(arg_35_2) or 0.5)
	arg_35_3 = math.max(0.001, tonumber(arg_35_3) or 1)

	if var_0_61 and var_0_62 == arg_35_0 and var_0_63 == arg_35_1 and var_0_64 == arg_35_2 and var_0_65 == arg_35_3 then
		return var_0_61
	end

	if var_0_61 then
		var_0_61:release()

		var_0_61 = nil
	end

	var_0_62, var_0_63 = arg_35_0, arg_35_1
	var_0_64, var_0_65 = arg_35_2, arg_35_3

	local var_35_0 = love.image.newImageData(arg_35_0, arg_35_1)
	local var_35_1 = math.min(math.floor((math.min(arg_35_0, arg_35_1) - 1) * 0.5), math.floor(arg_35_2) + 1)

	for iter_35_0 = 0, var_35_1 do
		local var_35_2 = var_0_68(iter_35_0, arg_35_2, arg_35_3)

		if var_35_2 > 0 then
			local var_35_3 = iter_35_0
			local var_35_4 = arg_35_0 - 1 - iter_35_0
			local var_35_5 = iter_35_0
			local var_35_6 = arg_35_1 - 1 - iter_35_0

			if var_35_3 <= var_35_4 and var_35_5 <= var_35_6 then
				for iter_35_1 = var_35_3, var_35_4 do
					var_35_0:setPixel(iter_35_1, var_35_5, 1, 1, 1, var_35_2)

					if var_35_6 ~= var_35_5 then
						var_35_0:setPixel(iter_35_1, var_35_6, 1, 1, 1, var_35_2)
					end
				end

				for iter_35_2 = var_35_5 + 1, var_35_6 - 1 do
					var_35_0:setPixel(var_35_3, iter_35_2, 1, 1, 1, var_35_2)

					if var_35_4 ~= var_35_3 then
						var_35_0:setPixel(var_35_4, iter_35_2, 1, 1, 1, var_35_2)
					end
				end
			end
		end
	end

	var_0_61 = love.graphics.newImage(var_35_0)

	var_0_61:setFilter("nearest", "nearest")

	return var_0_61
end

function var_0_0.prepareWaveStartResources(arg_36_0)
	local var_36_0 = arg_36_0 and arg_36_0.virtual and arg_36_0.virtual.W
	local var_36_1 = arg_36_0 and arg_36_0.virtual and arg_36_0.virtual.H

	if not var_36_0 or not var_36_1 then
		var_36_0, var_36_1 = love.graphics.getDimensions()
	end

	local var_36_2 = math.max(1, math.floor((tonumber(var_36_0) or 1) + 0.5))
	local var_36_3 = math.max(1, math.floor((tonumber(var_36_1) or 1) + 0.5))
	local var_36_4 = arg_36_0 and arg_36_0.battle and arg_36_0.battle.absorb or arg_36_0 and arg_36_0.absorb or {}
	local var_36_5 = (var_36_4.glowMaxRadiusPx or 15) + 16
	local var_36_6 = math.max(1.5, (var_36_4.glowFalloff or 1) * 1.55)
	local var_36_7 = var_0_67(var_36_2, var_36_3)
	local var_36_8 = var_0_69(var_36_2, var_36_3, var_36_5, var_36_6)

	var_0_56()

	if love.graphics.flushBatch then
		love.graphics.flushBatch()
	end

	return var_36_7 ~= nil and var_36_8 ~= nil
end

local var_0_70

local function var_0_71()
	if var_0_70 then
		return var_0_70
	end

	local var_37_0 = "        extern float u_strength;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            // standard luminance weights\n            float gray = dot(texel.rgb, vec3(0.299, 0.587, 0.114));\n            float mask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                mask = 1.0 - edge;\n            }\n            vec3 res = mix(texel.rgb, vec3(gray), u_strength * mask);\n            return vec4(res * color.rgb, texel.a * color.a);\n        }\n    "

	var_0_70 = love.graphics.newShader(var_37_0)

	return var_0_70
end

local var_0_72

local function var_0_73()
	if var_0_72 then
		return var_0_72
	end

	local var_38_0 = "        extern number u_time;\n        extern number u_slowStrength;\n        extern vec3 u_slowColor;\n        extern vec3 u_slowEdgeColor;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) return vec4(0.0);\n\n            vec3 slowColor = u_slowColor;\n\n            // Pulse the background intensity for breathing effect\n            float pulse = 0.5 + 0.5 * sin(u_time * 2.5);\n\n            // A slow-moving horizontal heavy gravity wave scrolling down the unit (friction)\n            float wave = sin(tc.y * 12.0 + u_time * 2.2);\n            wave = smoothstep(-0.4, 0.4, wave); // high-contrast sluggish bands\n\n            // Mix rich bronze fatigue tint into the unit's color (45% mix for good visibility)\n            vec3 tinted = mix(texel.rgb, slowColor, 0.45 * u_slowStrength * (0.65 + 0.35 * pulse));\n\n            // Heavy dark sluggish bands (darkening/shadowing effect)\n            tinted = mix(tinted, tinted * 0.30, u_slowStrength * 0.60 * wave);\n\n            // Add a subtle glowing friction highlight along the scrolling edge (perfect middle ground!)\n            float edge = sin(tc.y * 12.0 + u_time * 2.2 - 0.22);\n            edge = smoothstep(0.85, 1.0, edge); // thin elegant glow line\n            tinted += u_slowEdgeColor * edge * 0.35 * u_slowStrength;\n\n            return vec4(tinted, texel.a) * color;\n        }\n    "

	var_0_72 = love.graphics.newShader(var_38_0)

	return var_0_72
end

local var_0_74

local function var_0_75()
	if var_0_74 then
		return var_0_74
	end

	local var_39_0 = "        extern number u_time;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) return vec4(0.0);\n\n            vec3 bindCore = vec3(0.78, 0.34, 1.00);\n            vec3 bindViolet = vec3(0.48, 0.16, 0.92);\n            vec3 bindLight = vec3(0.96, 0.70, 1.00);\n            float pulse = 0.72 + 0.28 * sin(u_time * 6.0);\n\n            float band1 = 1.0 - smoothstep(0.028, 0.070, abs(sin((tc.y + tc.x * 0.22) * 18.0 - u_time * 3.0)));\n            float band2 = 1.0 - smoothstep(0.030, 0.074, abs(sin((tc.y - tc.x * 0.24) * 15.0 + u_time * 2.4)));\n            float cross = max(band1, band2 * 0.75);\n\n            float lock = smoothstep(0.50, 0.92, cross);\n            vec3 tint = mix(texel.rgb, bindViolet, 0.30 * pulse);\n            tint = mix(tint, bindCore, lock * 0.82);\n\n            float edgeLine = smoothstep(0.70, 1.0, cross);\n            tint += bindCore * edgeLine * 0.62 * pulse;\n            tint += bindLight * edgeLine * 0.30;\n\n            return vec4(tint, texel.a) * color;\n        }\n    "

	var_0_74 = love.graphics.newShader(var_39_0)

	return var_0_74
end

local var_0_76

local function var_0_77()
	if var_0_76 then
		return var_0_76
	end

	local var_40_0 = "        extern number u_time;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.05) {\n                discard;\n            }\n\n            float blink = step(0.46, fract(u_time * 14.0));\n            float pulse = 0.26 + blink * 0.54;\n            return vec4(1.0, 1.0, 1.0, texel.a * pulse) * color;\n        }\n    "

	var_0_76 = love.graphics.newShader(var_40_0)

	return var_0_76
end

local var_0_78

local function var_0_79()
	if var_0_78 then
		return var_0_78
	end

	local var_41_0 = "        extern vec4 u_color;\n        extern float u_grayscale;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            vec3 res = u_color.rgb;\n            float mask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                mask = 1.0 - edge;\n            }\n            float grayAmt = u_grayscale * mask;\n            if (grayAmt > 0.001) {\n                float gray = dot(res, vec3(0.299, 0.587, 0.114));\n                res = mix(res, vec3(gray), grayAmt);\n            }\n            return vec4(res, texel.a * u_color.a);\n        }\n    "

	var_0_78 = love.graphics.newShader(var_41_0)

	return var_0_78
end

local var_0_80

local function var_0_81()
	if var_0_80 then
		return var_0_80
	end

	local var_42_0 = "        extern float u_grayscale;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            // Shift red-heavy palette to a natural blue-cyan fire palette\n            float luma = (texel.r + texel.g + texel.b) / 3.0;\n            vec3 blueFire = vec3(texel.g * 0.4, texel.g * 0.8 + texel.r * 0.2, texel.r * 1.0 + texel.b);\n            vec3 res = blueFire * color.rgb;\n            float mask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                mask = 1.0 - edge;\n            }\n            float grayAmt = u_grayscale * mask;\n            if (grayAmt > 0.001) {\n                float gray = dot(res, vec3(0.299, 0.587, 0.114));\n                res = mix(res, vec3(gray), grayAmt);\n            }\n            return vec4(res, texel.a * color.a);\n        }\n    "

	var_0_80 = love.graphics.newShader(var_42_0)

	return var_0_80
end

local var_0_82

local function var_0_83()
	if var_0_82 then
		return var_0_82
	end

	local var_43_0 = "        extern float u_grayscale;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            // Updated color tint: #896696 (Muted Lavender/Purple)\n            vec3 tint = vec3(137.0/255.0, 102.0/255.0, 150.0/255.0);\n            vec3 res = tint * (texel.r + texel.g + texel.b) * 0.5 * color.rgb;\n            float mask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                mask = 1.0 - edge;\n            }\n            float grayAmt = u_grayscale * mask;\n            if (grayAmt > 0.001) {\n                float gray = dot(res, vec3(0.299, 0.587, 0.114));\n                res = mix(res, vec3(gray), grayAmt);\n            }\n            return vec4(res, texel.a * color.a);\n        }\n    "

	var_0_82 = love.graphics.newShader(var_43_0)

	return var_0_82
end

local var_0_84

local function var_0_85()
	if var_0_84 then
		return var_0_84
	end

	local var_44_0 = "        extern vec3 u_srcClothesH;\n        extern vec3 u_srcClothes;\n        extern vec3 u_srcShadow;\n        extern vec3 u_dstClothesH;\n        extern vec3 u_dstClothes;\n        extern vec3 u_dstShadow;\n        extern bool u_swapClothesH;\n\n        extern vec3 u_srcCloakH;\n        extern vec3 u_srcCloakC;\n        extern vec3 u_dstCloakH;\n        extern vec3 u_dstCloakC;\n        extern bool u_swapCloak;\n\n        extern vec3 u_srcSkinH;\n        extern vec3 u_srcSkinC;\n        extern vec3 u_dstSkinH;\n        extern vec3 u_dstSkinC;\n        extern bool u_swapSkin;\n\n        extern vec3 u_srcIronH;\n        extern vec3 u_srcIronC;\n        extern vec3 u_srcIronS;\n        extern vec3 u_dstIronH;\n        extern vec3 u_dstIronC;\n        extern vec3 u_dstIronS;\n        extern bool u_swapIron;\n\n        extern float u_tolerance;\n\n        // Judgement Tint Uniforms\n        extern bool u_judgementActive;\n        extern float u_strength;\n        extern float u_weight;\n        extern float u_targetHue;\n        extern float u_hueBlend;\n        extern float u_satGain;\n        extern float u_highlightPreserve;\n        extern float u_greenGuard;\n        extern float u_redBias;\n        extern vec3 u_fogColor;\n        extern float u_fogAmt;\n        extern float u_desat;\n\n        // Poison Tint\n        extern float u_poisonStrength;\n\n        // Chill Tint\n        extern float u_chillStrength;\n\n        // Time Stop Grayscale\n        extern float u_grayscale;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n\n        vec3 rgb2hsv(vec3 c){\n            float maxc = max(c.r, max(c.g, c.b));\n            float minc = min(c.r, min(c.g, c.b));\n            float delta = maxc - minc;\n            float h = 0.0;\n            if (delta > 1e-5){\n                if (maxc == c.r){ h = mod((c.g - c.b) / delta, 6.0); }\n                else if (maxc == c.g){ h = ((c.b - c.r) / delta) + 2.0; }\n                else { h = ((c.r - c.g) / delta) + 4.0; }\n                h /= 6.0;\n                if (h < 0.0) h += 1.0;\n            }\n            float s = (maxc <= 0.0) ? 0.0 : (delta / maxc);\n            float v = maxc;\n            return vec3(h,s,v);\n        }\n        vec3 hsv2rgb(vec3 h){\n            float H = h.x * 6.0;\n            float C = h.z * h.y;\n            float X = C * (1.0 - abs(mod(H,2.0)-1.0));\n            vec3 rgb = vec3(0.0);\n            if (0.0 <= H && H < 1.0) rgb = vec3(C,X,0.0);\n            else if (1.0 <= H && H < 2.0) rgb = vec3(X,C,0.0);\n            else if (2.0 <= H && H < 3.0) rgb = vec3(0.0,C,X);\n            else if (3.0 <= H && H < 4.0) rgb = vec3(0.0,X,C);\n            else if (4.0 <= H && H < 5.0) rgb = vec3(X,0.0,C);\n            else if (5.0 <= H && H < 6.0) rgb = vec3(C,0.0,X);\n            float m = h.z - C;\n            return rgb + m;\n        }\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) return vec4(0.0);\n\n            vec3 rgb = texel.rgb;\n            vec3 finalRGB = rgb;\n\n            // 1. Apply Color Swap\n            if (u_swapClothesH && distance(rgb, u_srcClothesH) < u_tolerance) {\n                finalRGB = u_dstClothesH;\n            } else if (distance(rgb, u_srcClothes) < u_tolerance) {\n                finalRGB = u_dstClothes;\n            } else if (distance(rgb, u_srcShadow) < u_tolerance) {\n                finalRGB = u_dstShadow;\n            } else if (u_swapCloak && distance(rgb, u_srcCloakH) < u_tolerance) {\n                finalRGB = u_dstCloakH;\n            } else if (u_swapCloak && distance(rgb, u_srcCloakC) < u_tolerance) {\n                finalRGB = u_dstCloakC;\n            } else if (u_swapSkin && distance(rgb, u_srcSkinH) < u_tolerance) {\n                finalRGB = u_dstSkinH;\n            } else if (u_swapSkin && distance(rgb, u_srcSkinC) < u_tolerance) {\n                finalRGB = u_dstSkinC;\n            } else if (u_swapIron && distance(rgb, u_srcIronH) < u_tolerance) {\n                finalRGB = u_dstIronH;\n            } else if (u_swapIron && distance(rgb, u_srcIronC) < u_tolerance) {\n                finalRGB = u_dstIronC;\n            } else if (u_swapIron && distance(rgb, u_srcIronS) < u_tolerance) {\n                finalRGB = u_dstIronS;\n            }\n\n            // 2. Apply Judgement Tint if active\n            if (u_judgementActive) {\n                float strength = u_strength * u_weight;\n                if (strength > 0.0001) {\n                    vec3 hsv = rgb2hsv(finalRGB);\n                    float greenness = clamp(finalRGB.g - max(finalRGB.r, finalRGB.b), 0.0, 1.0);\n                    float guard = mix(1.0, 1.0 - u_greenGuard, greenness);\n                    float hueDiff = u_targetHue - hsv.x;\n                    if (hueDiff > 0.5) hueDiff -= 1.0; else if (hueDiff < -0.5) hueDiff += 1.0;\n                    hsv.x += hueDiff * u_hueBlend * strength * guard;\n                    if (hsv.x < 0.0) hsv.x += 1.0; else if (hsv.x > 1.0) hsv.x -= 1.0;\n                    float diff = u_targetHue - hsv.x;\n                    if (diff > 0.5) diff -= 1.0; else if (diff < -0.5) diff += 1.0;\n                    float ad = abs(diff);\n                    float k = smoothstep(0.12, 0.38, ad);\n                    float desatAmt = u_desat * strength * k;\n                    hsv.y = clamp(hsv.y + u_satGain * strength - desatAmt, 0.0, 1.0);\n                    float preserve = smoothstep(0.0, 1.0, hsv.z);\n                    float lift = 0.03 * strength * (1.0 - preserve * u_highlightPreserve);\n                    hsv.z = clamp(mix(hsv.z, 0.6, lift), 0.0, 1.0);\n                    finalRGB = hsv2rgb(hsv);\n                    float lumaOut = dot(finalRGB, vec3(0.299, 0.587, 0.114));\n                    float redLift = u_redBias * strength * smoothstep(0.15, 0.85, 1.0 - lumaOut);\n                    finalRGB.r = clamp(finalRGB.r + redLift, 0.0, 1.0);\n                    finalRGB = mix(finalRGB, u_fogColor, u_fogAmt * strength);\n                    finalRGB = mix(finalRGB, finalRGB, 0.06 * strength); // detailMix\n                }\n            }\n\n            // 3. Apply Poison Tint (Sickly Muddy Green)\n            if (u_poisonStrength > 0.001) {\n                vec3 sicklyGreen = vec3(0.22, 0.42, 0.08);\n                vec3 multiplied = finalRGB * sicklyGreen * 1.5;\n                finalRGB = mix(finalRGB, multiplied, u_poisonStrength * 0.85);\n                finalRGB.g += u_poisonStrength * 0.06 * (1.0 - u_poisonStrength * 0.5);\n            }\n\n            // 4. Apply Chill Tint (Blue Filter)\n            if (u_chillStrength > 0.001) {\n                vec3 chillColor = vec3(0.1, 0.35, 1.0);\n                vec3 tinted = finalRGB * chillColor * 2.1;\n                finalRGB = mix(finalRGB, tinted, u_chillStrength * 0.7);\n            }\n\n            // 5. Apply Time Stop Grayscale\n            float tsMask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                tsMask = 1.0 - edge;\n            }\n            float grayAmt = u_grayscale * tsMask;\n            if (grayAmt > 0.001) {\n                float gray = dot(finalRGB, vec3(0.299, 0.587, 0.114));\n                finalRGB = mix(finalRGB, vec3(gray), grayAmt);\n            }\n\n            return vec4(finalRGB, texel.a) * color;\n        }\n    "

	var_0_84 = love.graphics.newShader(var_44_0)

	return var_0_84
end

local var_0_86 = {
	normal = {
		clothesH = {
			0.718,
			0.604,
			0.51
		},
		clothes = {
			0.545,
			0.416,
			0.31
		},
		shadow = {
			0.373,
			0.275,
			0.2
		}
	},
	advanced = {
		clothesH = {
			0.588,
			0.89,
			0.639
		},
		clothes = {
			0.373,
			0.682,
			0.424
		},
		shadow = {
			0.247,
			0.49,
			0.298
		}
	},
	rare = {
		clothesH = {
			0.596,
			0.847,
			0.973
		},
		clothes = {
			0.376,
			0.596,
			0.91
		},
		shadow = {
			0.251,
			0.345,
			0.753
		}
	},
	legendary = {
		clothesH = {
			0.49,
			0.459,
			0.427
		},
		clothes = {
			0.227,
			0.227,
			0.251
		},
		shadow = {
			0.137,
			0.137,
			0.165
		},
		cloakH = {
			0.416,
			0.31,
			0.451
		},
		cloak = {
			0.275,
			0.192,
			0.302
		},
		ironHighlight = {
			1,
			0.945,
			0.702
		},
		ironColor = {
			0.886,
			0.784,
			0.435
		},
		ironShadow = {
			0.624,
			0.494,
			0.184
		}
	},
	prism = {
		clothesH = {
			1,
			1,
			1
		},
		clothes = {
			0.918,
			0.902,
			0.855
		},
		shadow = {
			0.812,
			0.784,
			0.722
		},
		cloakH = {
			0.902,
			0.878,
			0.949
		},
		cloak = {
			0.722,
			0.69,
			0.839
		},
		ironHighlight = {
			1,
			0.945,
			0.702
		},
		ironColor = {
			0.886,
			0.784,
			0.435
		},
		ironShadow = {
			0.624,
			0.494,
			0.184
		}
	}
}
local var_0_87

local function var_0_88()
	if var_0_87 then
		return var_0_87
	end

	local var_45_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern vec2   u_dir;\n    extern number u_cycle;\n    extern number u_scale;\n    extern number u_grainScale;\n    extern number u_grainAmp;\n    extern number u_filmFreq;\n    extern number u_filmAmp;\n    extern number u_specular;\n    extern number u_fresnelPow;\n    extern vec4   u_frameUV;\n    extern number u_colorGain;\n    extern number u_saturation;\n    extern number u_mixBP;\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u,\n        vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66)\n      );\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n\n      float diag = tcL.x + tcL.y;\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = 0.22;\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n      float hue = diag * 0.35 + (u_time / max(u_cycle, 0.001)) * 0.9;\n      vec3 sweepCol = 0.5 + 0.5 * vec3(\n        cos(6.28318 * (hue + 0.00)),\n        cos(6.28318 * (hue + 0.33)),\n        cos(6.28318 * (hue + 0.66))\n      );\n      sweepCol = mix(sweepCol, vec3(1.0), 0.78);\n      sweepCol = clamp(sweepCol * 1.45, 0.0, 1.0);\n      float sweepGain = 1.35;\n      float w = clamp((0.45 - alpha) / 0.30, 0.0, 1.0);\n      float sweepAlphaBoost = mix(1.0, 1.0 / max(alpha, 0.030), w);\n      outRGB += sweepCol * sweep * sweepGain * sweepAlphaBoost * 1.60;\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      return vec4(outRGB, alpha);\n    }\n  "

	var_0_87 = love.graphics.newShader(var_45_0)

	return var_0_87
end

local var_0_89

local function var_0_90()
	if var_0_89 then
		return var_0_89
	end

	local var_46_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern number u_cycle;\n    extern vec4   u_frameUV; // {minU,minV,sizeU,sizeV}\n    extern vec3   u_tint;    // legendary highlight color\n    extern number u_width;   // band thickness (in frame-local UV)\n    extern number u_gain;    // overall strength\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float a = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (a <= 0.0) return vec4(0.0);\n\n      // Local sprite-space UV (0..1 inside the current frame)\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      float diag = tcL.x + tcL.y; // 0..2\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = max(0.001, u_width);\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n\n      // Match prism sweep behavior under ('add','alphamultiply'):\n      // - RGB carries the highlight; alpha stays as the overlay alpha.\n      // - Let alphamultiply handle premultiplication.\n      float gain = max(0.0, u_gain);\n      vec3 outRGB = u_tint * (sweep * gain);\n      return vec4(outRGB, a);\n    }\n  "

	var_0_89 = love.graphics.newShader(var_46_0)

	return var_0_89
end

local var_0_91

local function var_0_92()
	if var_0_91 then
		return var_0_91
	end

	local var_47_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern vec2   u_dir;\n    extern number u_cycle;\n    extern number u_scale;\n    extern number u_grainScale;\n    extern number u_grainAmp;\n    extern number u_filmFreq;\n    extern number u_filmAmp;\n    extern number u_specular;\n    extern number u_fresnelPow;\n    extern vec4   u_frameUV;\n    extern number u_colorGain;\n    extern number u_saturation;\n    extern number u_mixBP;\n    extern number u_pulseAmp;\n    extern number u_pulseHz;\n    extern number u_pulseSharpness;\n    extern number u_pulseMin;\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      // Pulse multiplier for the base foil only.\n      // IMPORTANT: do NOT pulse the output alpha under ('add','alphamultiply'),\n      // because that would also scale the diagonal sweep (user requested sweep stays stable).\n      float pulseMul = 1.0;\n      float hz = max(0.0, u_pulseHz);\n      float amp = clamp(u_pulseAmp, 0.0, 1.0);\n      if (hz > 0.0 && amp > 0.0) {\n        float s = 0.5 + 0.5 * sin(6.28318 * (u_time * hz));\n        float sharp = max(0.5, u_pulseSharpness);\n        float shaped = pow(s, sharp);\n        float minMul = clamp(u_pulseMin, 0.0, 1.0);\n        pulseMul = mix(minMul, 1.0 + amp, shaped);\n      }\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n\n      // Warm metallic foil palettes (gold -> amber). u_mixBP biases towards the brighter/yellower set.\n      float tWarm = 0.5 + 0.5 * sin(6.28318 * ((u_time / max(u_cycle, 0.001)) * 0.55 + v * 0.22));\n      float warmBias = clamp(u_mixBP + (tWarm - 0.5) * 0.48, 0.0, 1.0);\n      float xWarm = x + (tWarm - 0.5) * 0.35;\n      float uWarm = u + (tWarm - 0.5) * 0.22;\n      vec3 colAmber = palette(xWarm,\n        vec3(0.72, 0.46, 0.16),\n        vec3(0.20, 0.16, 0.10),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.05, 0.08, 0.12)\n      );\n      vec3 colGold = palette(uWarm,\n        vec3(0.80, 0.62, 0.22),\n        vec3(0.18, 0.12, 0.06),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.00, 0.04, 0.08)\n      );\n      vec3 foil = mix(colAmber, colGold, warmBias);\n\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.10;\n\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 baseRGB = (foil * grainMul + spec) * pulseMul;\n\n      // Diagonal highlight sweep, warm-only.\n      float diag = tcL.x + tcL.y;\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = 0.22;\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n      float hue = diag * 0.35 + (u_time / max(u_cycle, 0.001)) * 0.9;\n      float k = 0.5 + 0.5 * cos(6.28318 * hue);\n      float k2 = clamp(k * 0.75 + tWarm * 0.25, 0.0, 1.0);\n      vec3 sweepCol = mix(vec3(1.0, 0.82, 0.34), vec3(1.0, 0.98, 0.68), k2);\n      // Brighter sweep coloration (keep warm tone but significantly more readable)\n      float whiteLift = 0.78 + 0.18 * tWarm;\n      sweepCol = mix(sweepCol, vec3(1.0), clamp(whiteLift, 0.0, 0.98));\n      sweepCol = clamp(sweepCol * 1.45, 0.0, 1.0);\n      float sweepGain = 1.35;\n      // Under ('add','alphamultiply') the source RGB is multiplied by alpha.\n      // Compensate so the sweep stays visible even when overlay alpha is low.\n      // Make the sweep less transparent: compensate more aggressively only when alpha is low.\n      float w = clamp((0.45 - alpha) / 0.30, 0.0, 1.0);\n      float sweepAlphaBoost = mix(1.0, 1.0 / max(alpha, 0.030), w);\n      vec3 sweepRGB = sweepCol * sweep * sweepGain * sweepAlphaBoost * 1.60;\n\n      // Apply color controls/dimming to the base foil, but keep the sweep independent\n      // so it doesn't get washed out by finalMul/pulse tuning.\n      float Y = dot(baseRGB, vec3(0.2126, 0.7152, 0.0722));\n      baseRGB = mix(vec3(Y), baseRGB, max(0.0, u_saturation));\n      baseRGB *= max(0.0, u_colorGain);\n      baseRGB *= 0.82;\n\n      // Desaturate sweep as well if u_saturation is 0 (Time Stop case)\n      float sY = dot(sweepRGB, vec3(0.2126, 0.7152, 0.0722));\n      sweepRGB = mix(vec3(sY), sweepRGB, max(0.0, u_saturation));\n\n      vec3 outRGB = baseRGB + sweepRGB;\n      return vec4(outRGB, alpha);\n    }\n  "

	var_0_91 = love.graphics.newShader(var_47_0)

	return var_0_91
end

local var_0_93

local function var_0_94()
	if var_0_93 then
		return var_0_93
	end

	local var_48_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern vec2   u_dir;\n    extern number u_cycle;\n    extern number u_scale;\n    extern number u_grainScale;\n    extern number u_grainAmp;\n    extern number u_filmFreq;\n    extern number u_filmAmp;\n    extern number u_specular;\n    extern number u_fresnelPow;\n    extern vec4   u_frameUV;\n    extern number u_colorGain;\n    extern number u_saturation;\n    extern number u_pulseAmp;\n    extern number u_pulseHz;\n    extern number u_pulseSharpness;\n    extern number u_pulseMin;\n    extern number u_sweepEnable;\n    extern vec3   u_tintLo;\n    extern vec3   u_tintHi;\n    extern vec3   u_sweepLo;\n    extern vec3   u_sweepHi;\n\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      // Pulse multiplier for the base foil only (sweep must stay stable).\n      float pulseMul = 1.0;\n      float hz = max(0.0, u_pulseHz);\n      float amp = clamp(u_pulseAmp, 0.0, 1.0);\n      if (hz > 0.0 && amp > 0.0) {\n        float s = 0.5 + 0.5 * sin(6.28318 * (u_time * hz));\n        float sharp = max(0.5, u_pulseSharpness);\n        float shaped = pow(s, sharp);\n        float minMul = clamp(u_pulseMin, 0.0, 1.0);\n        pulseMul = mix(minMul, 1.0 + amp, shaped);\n      }\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      // Frame-local UV (stable in spritesheets)\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n\n      // Subtle per-grade hue drift between two tints.\n      float t = 0.5 + 0.5 * sin(6.28318 * (x * 0.08 + v * 0.03));\n      vec3 foil = mix(u_tintLo, u_tintHi, t);\n\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.10;\n\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 baseRGB = (foil * grainMul + spec) * pulseMul;\n\n      // Diagonal highlight sweep (match legendary visibility)\n      float tSweep = 0.5 + 0.5 * sin(6.28318 * ((u_time / max(u_cycle, 0.001)) * 0.55 + v * 0.22));\n      float diag = tcL.x + tcL.y;\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = 0.22;\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n\n      float hue = diag * 0.35 + (u_time / max(u_cycle, 0.001)) * 0.9;\n      float k = 0.5 + 0.5 * cos(6.28318 * hue);\n      float k2 = clamp(k * 0.75 + tSweep * 0.25, 0.0, 1.0);\n      vec3 sweepCol = mix(u_sweepLo, u_sweepHi, k2);\n      float whiteLift = 0.78 + 0.18 * tSweep;\n      sweepCol = mix(sweepCol, vec3(1.0), clamp(whiteLift, 0.0, 0.98));\n      sweepCol = clamp(sweepCol * 1.45, 0.0, 1.0);\n\n      float sweepGain = 1.35;\n      float w = clamp((0.45 - alpha) / 0.30, 0.0, 1.0);\n      float sweepAlphaBoost = mix(1.0, 1.0 / max(alpha, 0.030), w);\n      vec3 sweepRGB = sweepCol * sweep * sweepGain * sweepAlphaBoost * 1.60;\n      sweepRGB *= clamp(u_sweepEnable, 0.0, 1.0);\n\n      // Apply color controls to base only; keep sweep independent.\n      float Y = dot(baseRGB, vec3(0.2126, 0.7152, 0.0722));\n      baseRGB = mix(vec3(Y), baseRGB, max(0.0, u_saturation));\n      baseRGB *= max(0.0, u_colorGain);\n      baseRGB *= 0.82;\n\n      // Desaturate sweep as well if u_saturation is 0 (Time Stop case)\n      float sY = dot(sweepRGB, vec3(0.2126, 0.7152, 0.0722));\n      sweepRGB = mix(vec3(sY), sweepRGB, max(0.0, u_saturation));\n\n      vec3 outRGB = baseRGB + sweepRGB;\n      return vec4(outRGB, alpha);\n    }\n  "

	var_0_93 = love.graphics.newShader(var_48_0)

	return var_0_93
end

local var_0_95

local function var_0_96()
	if var_0_95 then
		return var_0_95
	end

	local var_49_0 = "    extern vec2  texelStep;    // 1 screen pixel in texture coords\n    extern float threshold;    // alpha threshold for silhouette\n    extern float radiusPx;     // blur radius\n    extern vec4  u_frameUV;    // minU, minV, sizeU, sizeV\n    extern float u_time;       // seconds\n    extern float u_alpha;      // overall glow strength\n    extern vec2  u_dir;        // drift direction\n    extern float u_cycle;      // seconds per cycle\n    extern float u_scale;      // spatial scale\n    extern float u_colorGain;  // overall color gain\n    extern float u_saturation; // saturation multiplier\n    extern float u_mixBP;      // bias towards blue-purple palette\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n\n    float sampleA(Image tex, vec2 tc) {\n      vec2 uvMin = u_frameUV.xy;\n      vec2 uvMax = u_frameUV.xy + u_frameUV.zw;\n      vec2 pad = texelStep * 0.5;\n      vec2 c = clamp(tc, uvMin + pad, uvMax - pad);\n      return Texel(tex, c).a;\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float a0 = sampleA(tex, tc);\n      if (a0 > threshold) return vec4(0.0); // draw only outside silhouette\n\n      float total = 0.0;\n      float totalWeight = 0.0;\n\n      // Use 3 rings with 12 directions each, staggered angles for smoother coverage\n      float rings = 3.0;\n      float directions = 12.0;\n      float stepRad = 6.28318 / directions;\n\n      for (float r = 1.0; r <= rings; r += 1.0) {\n        float dist = r / rings;\n        float w = 1.0 - (dist * 0.5);\n        float angleOffset = r * 0.5;\n\n        for (float i = 0.0; i < 6.28318; i += stepRad) {\n          float angle = i + angleOffset;\n          vec2 dir = vec2(cos(angle), sin(angle));\n          total += sampleA(tex, tc + dir * texelStep * radiusPx * dist) * w;\n          totalWeight += w;\n        }\n      }\n\n      float alpha = total / totalWeight;\n      // Increase contrast by steepening the smoothstep curve\n      // smoothstep(0.1, 0.8, ...) cuts off low values and saturates high values earlier\n      alpha = smoothstep(0.1, 0.8, alpha * 3.0);\n\n      // Local UV (0..1 in the current frame) for stable prismatic color.\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      vec3 colBP = palette(u,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u,\n        vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66)\n      );\n      vec3 outRGB = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n\n      float pulse = 0.92 + 0.08 * sin(u_time * 2.2);\n      float aOut = clamp(u_alpha, 0.0, 1.0) * alpha * pulse;\n      return vec4(outRGB, aOut);\n    }\n  "

	var_0_95 = love.graphics.newShader(var_49_0)

	return var_0_95
end

local var_0_97

local function var_0_98()
	if var_0_97 then
		return var_0_97
	end

	local var_50_0 = "    extern vec2 texelStep;    // 1 screen pixel in texture coords\n    extern vec4 glowColor;    // RGB + intensity alpha\n    extern float threshold;   // alpha threshold for silhouette\n    extern float radiusPx;    // Blur radius\n    extern vec4 u_frameUV;    // minU, minV, sizeU, sizeV\n    extern float u_time;      // For pulsing\n\n    float sampleA(Image tex, vec2 tc) {\n      vec2 uvMin = u_frameUV.xy;\n      vec2 uvMax = u_frameUV.xy + u_frameUV.zw;\n      vec2 pad = texelStep * 0.5;\n      vec2 c = clamp(tc, uvMin + pad, uvMax - pad);\n      return Texel(tex, c).a;\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float a0 = sampleA(tex, tc);\n      // Only draw glow OUTSIDE the sprite.\n      if (a0 > threshold) return vec4(0.0);\n\n      float total = 0.0;\n      float totalWeight = 0.0;\n\n      // Use 3 rings with 12 directions each, staggered angles for smoother coverage\n      // This reduces the \"starburst\" or \"pixelated\" look of the glow\n      float rings = 3.0;\n      float directions = 12.0;\n      float stepRad = 6.28318 / directions;\n\n      for (float r = 1.0; r <= rings; r += 1.0) {\n        float dist = r / rings;\n        // Weight falls off with distance\n        float w = 1.0 - (dist * 0.5);\n\n        // Rotate each ring slightly to interleave samples\n        float angleOffset = r * 0.5;\n\n        for (float i = 0.0; i < 6.28318; i += stepRad) {\n          float angle = i + angleOffset;\n          vec2 dir = vec2(cos(angle), sin(angle));\n          total += sampleA(tex, tc + dir * texelStep * radiusPx * dist) * w;\n          totalWeight += w;\n        }\n      }\n\n      // Normalize\n      float alpha = total / totalWeight;\n\n      // Soften the curve to make it look like a glow rather than a hard outline\n      // smoothstep(min, max, x) -> smooth transition\n      // Increased multiplier and adjusted range for higher contrast\n      alpha = smoothstep(0.1, 0.9, alpha * 3.0);\n\n      // Subtle pulse\n      float pulse = 0.9 + 0.1 * sin(u_time * 3.0);\n\n      return vec4(glowColor.rgb, glowColor.a * alpha * pulse);\n    }\n  "

	var_0_97 = love.graphics.newShader(var_50_0)

	return var_0_97
end

local function var_0_99(arg_51_0, arg_51_1)
	if not arg_51_0 or not arg_51_1 then
		return {
			0,
			0,
			0,
			0
		}
	end

	local var_51_0 = arg_51_0:getWidth()
	local var_51_1 = arg_51_0:getHeight()
	local var_51_2, var_51_3, var_51_4, var_51_5 = arg_51_1:getViewport()
	local var_51_6 = var_51_0 > 0 and var_51_2 / var_51_0 or 0
	local var_51_7 = var_51_1 > 0 and var_51_3 / var_51_1 or 0
	local var_51_8 = var_51_0 > 0 and var_51_4 / var_51_0 or 0
	local var_51_9 = var_51_1 > 0 and var_51_5 / var_51_1 or 0

	return {
		var_51_6,
		var_51_7,
		var_51_8,
		var_51_9
	}
end

local var_0_100

local function var_0_101()
	if var_0_100 then
		return var_0_100
	end

	if not love or not love.image or not love.image.newImageData or not love.graphics then
		return nil
	end

	local var_52_0 = 128
	local var_52_1 = love.image.newImageData(var_52_0, var_52_0)

	local function var_52_2(arg_53_0, arg_53_1, arg_53_2)
		local var_53_0 = math.max(0, math.min(1, (arg_53_2 - arg_53_0) / (arg_53_1 - arg_53_0)))

		return var_53_0 * var_53_0 * (3 - 2 * var_53_0)
	end

	for iter_52_0 = 0, var_52_0 - 1 do
		for iter_52_1 = 0, var_52_0 - 1 do
			local var_52_3 = ((iter_52_1 + 0.5) / var_52_0 - 0.5) * 2
			local var_52_4 = ((iter_52_0 + 0.5) / var_52_0 - 0.5) * 2
			local var_52_5 = var_52_3 * 0.9
			local var_52_6 = var_52_4 * 0.9 * 1.6
			local var_52_7 = math.atan2 and math.atan2(var_52_6, var_52_5) or math.atan(var_52_6, var_52_5)
			local var_52_8 = var_52_5 * var_52_5 + var_52_6 * var_52_6
			local var_52_9 = 0.5 + 0.5 * math.sin(var_52_7 * 7)
			local var_52_10 = var_52_2(0.2, 0.85, var_52_9)
			local var_52_11 = math.exp(-var_52_8 * 1.8)
			local var_52_12 = math.sqrt(var_52_3 * var_52_3 + var_52_4 * var_52_4)
			local var_52_13 = 1 - var_52_2(0.7, 0.995, var_52_12)
			local var_52_14 = math.max(0, math.min(1, var_52_10 * var_52_11 * var_52_13))

			var_52_1:setPixel(iter_52_1, iter_52_0, 1, 0.9, 0.4, var_52_14)
		end
	end

	var_0_100 = love.graphics.newImage(var_52_1)

	var_0_100:setFilter("linear", "linear")

	return var_0_100
end

function var_0_0.prepareClassSelectionResources()
	local var_54_0 = var_0_101()

	if love.graphics.flushBatch then
		love.graphics.flushBatch()
	end

	return var_54_0 ~= nil
end

function var_0_0.drawClassSelectSunlight(arg_55_0, arg_55_1, arg_55_2, arg_55_3, arg_55_4)
	if arg_55_3 <= 0 then
		return
	end

	local var_55_0 = var_0_100

	if not var_55_0 then
		return
	end

	local var_55_1, var_55_2 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("add", "alphamultiply")

	local var_55_3 = 130 * arg_55_2
	local var_55_4, var_55_5 = var_55_0:getDimensions()

	love.graphics.setShader()
	love.graphics.setColor(1, 1, 1, arg_55_3)
	love.graphics.draw(var_55_0, arg_55_0, arg_55_1, -(arg_55_4 or 0) * 0.3, var_55_3 / var_55_4, var_55_3 / var_55_5, var_55_4 * 0.5, var_55_5 * 0.5)
	love.graphics.setBlendMode(var_55_1, var_55_2)
	love.graphics.setColor(1, 1, 1, 1)
end

function var_0_0.drawClassCardUnitEffects(arg_56_0, arg_56_1, arg_56_2, arg_56_3, arg_56_4, arg_56_5, arg_56_6, arg_56_7, arg_56_8)
	if not arg_56_2 or not arg_56_3 then
		return
	end

	local var_56_0 = arg_56_1 and arg_56_1.grade or "normal"

	if var_56_0 == "legend" or var_56_0 == "l" then
		var_56_0 = "legendary"
	end

	local var_56_1 = arg_56_1 and arg_56_1.jackpot5th == true or var_56_0 == "prism"
	local var_56_2 = love.timer.getTime()
	local var_56_3

	var_56_3 = arg_56_1 and arg_56_1.sym

	local var_56_4 = arg_56_8 or 1

	if var_56_4 <= 0.01 then
		return
	end

	local var_56_5 = arg_56_2:getWidth()
	local var_56_6 = arg_56_2:getHeight()
	local var_56_7 = 1 / (math.max(1, var_56_5) * math.max(0.001, math.abs(arg_56_6)))
	local var_56_8 = 1 / (math.max(1, var_56_6) * math.max(0.001, math.abs(arg_56_7)))
	local var_56_9 = var_0_99(arg_56_2, arg_56_3)

	if var_56_1 then
		local var_56_10 = var_0_96()

		if var_56_10 then
			local var_56_11 = arg_56_0 and arg_56_0.battle and (arg_56_0.battle.jackpotFoil or arg_56_0.battle.jackpotRainbow) or {}
			local var_56_12 = (var_56_11.angleDeg or 20) * math.pi / 180
			local var_56_13 = math.cos(var_56_12)
			local var_56_14 = math.sin(var_56_12)
			local var_56_15 = var_56_11.cycleSec or 4

			love.graphics.setShader(var_56_10)
			var_56_10:send("texelStep", {
				var_56_7,
				var_56_8
			})
			var_56_10:send("threshold", 0.01)
			var_56_10:send("radiusPx", 3)
			var_56_10:send("u_frameUV", var_56_9)
			var_56_10:send("u_time", var_56_2)
			var_56_10:send("u_alpha", 0.92 * var_56_4)
			var_56_10:send("u_dir", {
				var_56_13,
				var_56_14
			})
			var_56_10:send("u_cycle", var_56_15)
			var_56_10:send("u_scale", var_56_11.scale or 2.5)
			var_56_10:send("u_colorGain", 1.25)
			var_56_10:send("u_saturation", 1.6)
			var_56_10:send("u_mixBP", (var_56_11.mixBP or 0.55) * 0.3)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_56_2, arg_56_3, arg_56_4, arg_56_5, 0, arg_56_6, arg_56_7)
			love.graphics.setShader()
		end
	else
		local var_56_16
		local var_56_17

		if var_56_0 == "advanced" then
			var_56_16, var_56_17 = {
				0.32,
				0.68,
				0.42
			}, 0.85
		elseif var_56_0 == "rare" then
			var_56_16, var_56_17 = {
				0.24,
				0.48,
				0.76
			}, 0.85
		elseif var_56_0 == "legendary" then
			var_56_16, var_56_17 = {
				0.79,
				0.6,
				0.12
			}, 0.85
		end

		if var_56_16 then
			local var_56_18 = var_0_98()

			if var_56_18 then
				love.graphics.setShader(var_56_18)
				var_56_18:send("texelStep", {
					var_56_7,
					var_56_8
				})
				var_56_18:send("glowColor", {
					var_56_16[1],
					var_56_16[2],
					var_56_16[3],
					(var_56_17 or 0.85) * var_56_4
				})
				var_56_18:send("threshold", 0.01)
				var_56_18:send("radiusPx", 3)
				var_56_18:send("u_frameUV", var_56_9)
				var_56_18:send("u_time", var_56_2)
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(arg_56_2, arg_56_3, arg_56_4, arg_56_5, 0, arg_56_6, arg_56_7)
				love.graphics.setShader()
			end
		end
	end

	love.graphics.setColor(1, 1, 1, var_56_4)
	love.graphics.draw(arg_56_2, arg_56_3, arg_56_4, arg_56_5, 0, arg_56_6, arg_56_7)
	love.graphics.setColor(1, 1, 1, 1)

	local var_56_19 = arg_56_0 and arg_56_0.battle and (arg_56_0.battle.legendaryFoil or arg_56_0.battle.jackpotFoil or arg_56_0.battle.jackpotRainbow) or {}
	local var_56_20

	if var_56_1 then
		var_56_20 = var_0_88()
	elseif var_56_0 == "legendary" then
		var_56_20 = var_0_92()
	elseif var_56_0 == "advanced" or var_56_0 == "rare" then
		var_56_20 = var_0_94()
	end

	if var_56_20 then
		local var_56_21 = var_0_99(arg_56_2, arg_56_3)
		local var_56_22 = (var_56_19.angleDeg or 20) * math.pi / 180
		local var_56_23 = math.cos(var_56_22)
		local var_56_24 = math.sin(var_56_22)
		local var_56_25 = var_56_19.cycleSec or 4
		local var_56_26, var_56_27 = love.graphics.getBlendMode()

		love.graphics.setShader(var_56_20)
		var_56_20:send("u_time", var_56_2)
		var_56_20:send("u_alpha", (var_56_19.alpha ~= nil and var_56_19.alpha or 0.2) * var_56_4)
		var_56_20:send("u_dir", {
			var_56_23,
			var_56_24
		})
		var_56_20:send("u_cycle", var_56_25)
		var_56_20:send("u_scale", var_56_19.scale or 2.5)

		local var_56_28 = var_56_19.grain or {}
		local var_56_29 = var_56_19.film or {}

		var_56_20:send("u_grainScale", var_56_28.scale or 3)
		var_56_20:send("u_grainAmp", var_56_28.amp or 0.2)
		var_56_20:send("u_filmFreq", var_56_29.freq or 2)
		var_56_20:send("u_filmAmp", var_56_29.amp or 0.25)
		var_56_20:send("u_specular", var_56_19.specular or 0.35)
		var_56_20:send("u_fresnelPow", var_56_19.fresnelPow or 2.5)
		var_56_20:send("u_colorGain", var_56_19.colorGain or 1)
		var_56_20:send("u_saturation", var_56_19.saturation or 1)
		var_56_20:send("u_frameUV", var_56_21)

		if var_56_20:hasUniform("u_mixBP") then
			var_56_20:send("u_mixBP", var_56_19.mixBP or 0.55)
		end

		if var_56_0 == "advanced" or var_56_0 == "rare" then
			local var_56_30
			local var_56_31
			local var_56_32
			local var_56_33

			if var_56_0 == "advanced" then
				var_56_30, var_56_31 = {
					0.32,
					0.68,
					0.42
				}, {
					0.65,
					0.92,
					0.7
				}
				var_56_32, var_56_33 = {
					0.55,
					0.9,
					0.7
				}, {
					0.85,
					1,
					0.9
				}
			else
				var_56_30, var_56_31 = {
					0.24,
					0.48,
					0.76
				}, {
					0.55,
					0.78,
					1
				}
				var_56_32, var_56_33 = {
					0.45,
					0.7,
					0.95
				}, {
					0.8,
					0.95,
					1
				}
			end

			var_56_20:send("u_tintLo", var_56_30)
			var_56_20:send("u_tintHi", var_56_31)
			var_56_20:send("u_sweepLo", var_56_32)
			var_56_20:send("u_sweepHi", var_56_33)
			var_56_20:send("u_pulseAmp", 0)
			var_56_20:send("u_pulseHz", 0)
			var_56_20:send("u_pulseSharpness", 2)
			var_56_20:send("u_pulseMin", 0.65)
			var_56_20:send("u_sweepEnable", 1)
		end

		love.graphics.setColor(1, 1, 1, var_56_4)

		if var_56_27 ~= nil then
			love.graphics.setBlendMode("add", "alphamultiply")
		else
			love.graphics.setBlendMode("add")
		end

		love.graphics.draw(arg_56_2, arg_56_3, arg_56_4, arg_56_5, 0, arg_56_6, arg_56_7)
		love.graphics.setShader()

		if var_56_27 ~= nil then
			love.graphics.setBlendMode(var_56_26, var_56_27)
		else
			love.graphics.setBlendMode(var_56_26)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end
end

var_0_0.getUnitColorSwapShader = var_0_85
var_0_0.getPrismFoilShader = var_0_88
var_0_0.getSilhouetteShader = var_0_79
var_0_0.getLegendarySweepShader = var_0_90
var_0_0.getLegendaryFoilShader = var_0_92
var_0_0.getTintedFoilShader = var_0_94
var_0_0.getPrismGlowShader = var_0_96
var_0_0.getGradeGlowShader = var_0_98

function var_0_0.addOverdriveEffect(arg_57_0, arg_57_1)
	if not arg_57_0 or not arg_57_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.3,
		type = "slice",
		x = arg_57_0,
		y = arg_57_1
	})
end

function var_0_0.addSoulExtractEffect(arg_58_0, arg_58_1)
	if not arg_58_0 or not arg_58_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.4,
		type = "soul_extract",
		x = arg_58_0,
		y = arg_58_1
	})
end

function var_0_0.addKnockbackEffect(arg_59_0, arg_59_1)
	if not arg_59_0 or not arg_59_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.35,
		type = "knockback",
		x = arg_59_0,
		y = arg_59_1
	})
end

function var_0_0.addBashEffect(arg_60_0, arg_60_1)
	if not arg_60_0 or not arg_60_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.3,
		type = "bash",
		x = arg_60_0,
		y = arg_60_1
	})
end

function var_0_0.addPoisonTickEffect(arg_61_0, arg_61_1)
	if not arg_61_0 or not arg_61_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.35,
		type = "poison_tick",
		x = arg_61_0,
		y = arg_61_1
	})
end

function var_0_0.addBleedSlashEffect(arg_62_0, arg_62_1)
	if not arg_62_0 or not arg_62_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.3,
		type = "bleed_slash",
		x = arg_62_0,
		y = arg_62_1
	})
end

function var_0_0.addBleedTickEffect(arg_63_0, arg_63_1)
	if not arg_63_0 or not arg_63_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.4,
		type = "bleed_tick",
		x = arg_63_0,
		y = arg_63_1
	})
end

function var_0_0.addRuinTickEffect(arg_64_0, arg_64_1)
	if not arg_64_0 or not arg_64_1 then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.5,
		type = "ruin_tick",
		x = arg_64_0,
		y = arg_64_1
	})
end

function var_0_0.addBloodSurgeHitEffect(arg_65_0)
	if not arg_65_0 then
		return
	end

	local var_65_0 = arg_65_0._hpBarX or arg_65_0.x or 0
	local var_65_1 = arg_65_0._hpBarY and arg_65_0._hpBarY - 6 or (arg_65_0.y or 0) - 20

	table.insert(var_0_7, {
		t = 0,
		dur = 0.28,
		type = "blood_surge_hit",
		x = var_65_0,
		y = var_65_1
	})
end

function var_0_0.addBloodPriceTickEffect(arg_66_0)
	if not arg_66_0 then
		return
	end

	local var_66_0 = arg_66_0._hpBarX or arg_66_0.x or 0
	local var_66_1 = arg_66_0._hpBarY and arg_66_0._hpBarY - 6 or (arg_66_0.y or 0) - 20

	table.insert(var_0_7, {
		t = 0,
		dur = 0.26,
		type = "blood_price_tick",
		x = var_66_0,
		y = var_66_1
	})
end

function var_0_0.addBloodMistBurst(arg_67_0, arg_67_1, arg_67_2)
	if arg_67_0 == nil or arg_67_1 == nil then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.22,
		type = "blood_mist",
		x = arg_67_0,
		y = arg_67_1,
		s = arg_67_2 or 1
	})
end

function var_0_0.addBloodAxeTrail(arg_68_0, arg_68_1, arg_68_2)
	if arg_68_0 == nil or arg_68_1 == nil then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.28,
		type = "blood_axe_trail",
		x = arg_68_0,
		y = arg_68_1,
		dir = arg_68_2 or 1
	})
end

function var_0_0.addBloodPriceHitX(arg_69_0, arg_69_1, arg_69_2)
	if arg_69_0 == nil or arg_69_1 == nil then
		return
	end

	table.insert(var_0_7, {
		t = 0,
		dur = 0.22,
		type = "blood_price_hit_x",
		x = arg_69_0,
		y = arg_69_1,
		s = arg_69_2 or 1
	})
end

function var_0_0.addSlamHitEffect(arg_70_0, arg_70_1)
	if not arg_70_0 or not arg_70_1 then
		return
	end

	table.insert(var_0_8, {
		t = 0,
		dur = 0.5,
		type = "slam_hit",
		x = arg_70_0,
		y = arg_70_1
	})
end

function var_0_0.addShockwaveEffect(arg_71_0, arg_71_1)
	if not arg_71_0 or not arg_71_1 then
		return
	end

	table.insert(var_0_8, {
		t = 0,
		dur = 0.5,
		type = "shockwave_hit",
		x = arg_71_0,
		y = arg_71_1
	})
end

function var_0_0.addArcaneCoreEffect(arg_72_0, arg_72_1, arg_72_2)
	local var_72_0 = {
		t = 0,
		type = "arcane_core",
		alive = true,
		x = arg_72_0,
		y = arg_72_1,
		dur = arg_72_2 or 2
	}

	table.insert(var_0_8, var_72_0)

	return var_72_0
end

function var_0_0.addArcaneOrbEffect(arg_73_0, arg_73_1, arg_73_2, arg_73_3, arg_73_4)
	local var_73_0 = {
		dur = 0.8,
		type = "arcane_orb",
		t = 0,
		x1 = arg_73_0,
		y1 = arg_73_1,
		x2 = arg_73_2,
		y2 = arg_73_3,
		target = arg_73_4
	}

	table.insert(var_0_7, var_73_0)

	return var_73_0
end

function var_0_0.addArcaneExplodeEffect(arg_74_0, arg_74_1)
	table.insert(var_0_7, {
		t = 0,
		dur = 0.35,
		type = "arcane_explode",
		x = arg_74_0,
		y = arg_74_1
	})
end

function var_0_0.addCrushingSlamHitEffect(arg_75_0, arg_75_1)
	if not arg_75_0 or not arg_75_1 then
		return
	end

	table.insert(var_0_8, {
		t = 0,
		dur = 0.5,
		type = "crushing_slam_hit",
		x = arg_75_0,
		y = arg_75_1
	})
end

function var_0_0.addCrushingShockwaveEffect(arg_76_0, arg_76_1)
	if not arg_76_0 or not arg_76_1 then
		return
	end

	table.insert(var_0_8, {
		t = 0,
		dur = 0.5,
		type = "crushing_shockwave_hit",
		x = arg_76_0,
		y = arg_76_1
	})
end

function var_0_0.addEarthquakeEffect(arg_77_0, arg_77_1)
	local var_77_0 = var_0_2.vfx.earthquake

	var_0_44 = arg_77_0 or var_77_0.duration
	var_0_45 = arg_77_1 or var_77_0.floatDuration or 1.2
	var_0_43 = var_0_44
	var_0_46 = var_77_0.magnitude
end

function var_0_0.preDrawBattlefield(arg_78_0, arg_78_1)
	if not arg_78_1 then
		return
	end

	_currentBattlefield = arg_78_1
	_currentBattleArea = arg_78_0

	if arg_78_1.timeStopT and arg_78_1.timeStopT > 0 or _timeStopPhase and _timeStopPhase ~= "idle" then
		local var_78_0 = var_0_71()

		if var_78_0 then
			love.graphics.setShader(var_78_0)
			var_78_0:send("u_strength", 1)
			var_0_0.applyTimeStopWaveUniforms(var_78_0, arg_78_0, arg_78_1)
		end
	end

	if var_0_43 > 0 then
		local var_78_1 = 0.8
		local var_78_2 = var_0_44 - var_0_43
		local var_78_3 = math.max(0, 1 - var_78_2 / var_78_1)
		local var_78_4 = var_0_46 * var_78_3

		love.graphics.push()

		if var_78_4 > 0 then
			local var_78_5 = love.timer.getTime() * 10
			local var_78_6 = (love.math.noise(var_78_5, 10) * 2 - 1) * var_78_4
			local var_78_7 = (love.math.noise(var_78_5, 20) * 2 - 1) * var_78_4

			love.graphics.translate(var_78_6, var_78_7)
		end
	end
end

function var_0_0.drawEarthquakeAnimation(arg_79_0)
	if var_0_43 > 0 then
		local var_79_0 = var_0_1.backgrounds.earthquake

		if not var_79_0 then
			return
		end

		local var_79_1 = 1 - var_0_43 / var_0_44
		local var_79_2 = 0.35 / var_0_44
		local var_79_3 = 7

		if var_79_1 < var_79_2 then
			var_79_3 = math.floor(var_79_1 / var_79_2 * 6) + 1
		elseif var_79_1 > 1 - var_79_2 then
			local var_79_4 = (1 - var_79_1) / var_79_2

			var_79_3 = math.floor(var_79_4 * 6) + 1
		else
			var_79_3 = 7
		end

		local var_79_5 = var_79_0[math.min(7, math.max(1, var_79_3))]

		if var_79_5 then
			local var_79_6 = arg_79_0.w / var_79_5:getWidth()
			local var_79_7 = arg_79_0.h / var_79_5:getHeight()

			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_79_5, arg_79_0.x, arg_79_0.y, 0, var_79_6, var_79_7)
		end
	end
end

function var_0_0.postDrawBattlefield()
	_currentBattlefield = nil
	_currentBattleArea = nil

	love.graphics.setShader()

	if var_0_43 > 0 then
		love.graphics.pop()
	end
end

function var_0_0.addExplosionEffect(arg_81_0, arg_81_1, arg_81_2)
	if not arg_81_0 or not arg_81_1 then
		return
	end

	local var_81_0 = 0.64

	if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ExplosionEffect then
		local var_81_1 = var_0_1.projectiles.ExplosionEffect

		if var_81_1.frames and var_81_1.speed then
			var_81_0 = var_81_1.frames * var_81_1.speed
		end
	end

	table.insert(var_0_7, {
		t = 0,
		type = "explosion",
		x = arg_81_0,
		y = arg_81_1,
		dur = var_81_0,
		radius = arg_81_2 or 80
	})
end

function var_0_0.addAnnihilationEffect(arg_82_0, arg_82_1)
	if not arg_82_0 or not arg_82_1 then
		return
	end

	local var_82_0 = 0.6

	if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.FireCone then
		local var_82_1 = var_0_1.projectiles.FireCone

		if var_82_1.frames and var_82_1.speed then
			var_82_0 = var_82_1.frames * var_82_1.speed
		end
	end

	table.insert(var_0_7, {
		t = 0,
		type = "fire_cone",
		x = arg_82_0,
		y = arg_82_1,
		dur = var_82_0
	})
end

function var_0_0.addMeteorEffect(arg_83_0, arg_83_1)
	if not arg_83_0 or not arg_83_1 then
		return
	end

	local var_83_0 = 1.3

	if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.MeteorFall then
		local var_83_1 = var_0_1.projectiles.MeteorFall
	end

	local var_83_2 = 0.5

	if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.MeteorGround then
		local var_83_3 = var_0_1.projectiles.MeteorGround

		var_83_2 = var_83_3.frames * var_83_3.speed
	end

	table.insert(var_0_7, {
		t = 0,
		type = "meteor",
		x = arg_83_0,
		y = arg_83_1,
		fallDur = var_83_0,
		groundDur = var_83_2,
		dur = var_83_0 + var_83_2
	})
end

function var_0_0.addLifestealEffect(arg_84_0, arg_84_1, arg_84_2, arg_84_3)
	if not arg_84_0 or not arg_84_1 or not arg_84_2 or not arg_84_3 then
		return
	end

	local var_84_0 = {}
	local var_84_1 = love and love.math and love.math.random or math.random

	for iter_84_0 = 1, 5 do
		table.insert(var_84_0, {
			startOffset = (iter_84_0 - 1) * 0.08 + var_84_1() * 0.1,
			speedMult = 0.7 + var_84_1() * 0.5,
			jitterAmp = 4 + var_84_1() * 6,
			jitterFreq = 6 + var_84_1() * 8,
			noiseX = (var_84_1() - 0.5) * 6,
			noiseY = (var_84_1() - 0.5) * 6
		})
	end

	table.insert(var_0_7, {
		dur = 0.65,
		type = "lifesteal",
		t = 0,
		x1 = arg_84_0,
		y1 = arg_84_1,
		x2 = arg_84_2,
		y2 = arg_84_3,
		pData = var_84_0
	})
end

function var_0_0.addShadowSuckEffect(arg_85_0, arg_85_1, arg_85_2, arg_85_3)
	if not arg_85_0 or not arg_85_1 or not arg_85_2 or not arg_85_3 then
		return
	end

	local var_85_0 = {}
	local var_85_1 = love and love.math and love.math.random or math.random
	local var_85_2 = 7

	for iter_85_0 = 1, var_85_2 do
		table.insert(var_85_0, {
			delay = (iter_85_0 - 1) * 0.1,
			spreadX = (var_85_1() - 0.5) * 16,
			spreadY = (var_85_1() - 0.5) * 16,
			curve = (var_85_1() - 0.5) * 45,
			speedOffset = 0.8 + var_85_1() * 0.4,
			seed = var_85_1() * 1000
		})
	end

	table.insert(var_0_7, {
		type = "shadow_suck",
		t = 0,
		dur = 0.85,
		_shadowConsumed = false,
		x1 = arg_85_0,
		y1 = arg_85_1,
		x2 = arg_85_2,
		y2 = arg_85_3,
		pData = var_85_0
	})
end

function var_0_0.addBlindEffect(arg_86_0, arg_86_1)
	if not arg_86_0 or not arg_86_1 then
		return
	end
end

function var_0_0.addChainEffect(arg_87_0, arg_87_1, arg_87_2, arg_87_3)
	if not arg_87_0 or not arg_87_1 or not arg_87_2 or not arg_87_3 then
		return
	end

	table.insert(var_0_7, {
		dur = 0.48,
		type = "chain",
		t = 0,
		x1 = arg_87_0,
		y1 = arg_87_1,
		x2 = arg_87_2,
		y2 = arg_87_3
	})
end

function var_0_0.addExecuteEffect(arg_88_0, arg_88_1)
	if not arg_88_0 or not arg_88_1 then
		return
	end

	local var_88_0 = require("src.ui.imprint"):getShortIconImage("execute")

	table.insert(var_0_7, {
		t = 0,
		dur = 1.2,
		type = "execute",
		x = arg_88_0,
		y = arg_88_1,
		icon = var_88_0
	})
end

local var_0_102 = 0
local var_0_103 = 0
local var_0_104
local var_0_105 = "idle"
local var_0_106 = 0
local var_0_107 = 1
local var_0_108 = 1
local var_0_109 = 18
local var_0_110
local var_0_111

local function var_0_112(arg_89_0, arg_89_1)
	if not (arg_89_1 and (arg_89_1.timeStopT or 0) > 0 or var_0_105 and var_0_105 ~= "idle") then
		return nil
	end

	local var_89_0
	local var_89_1

	if var_0_110 then
		var_89_0, var_89_1 = var_0_110[1], var_0_110[2]
	elseif arg_89_1 and arg_89_1.timeStopSource then
		var_89_0, var_89_1 = arg_89_1.timeStopSource.x or 0, arg_89_1.timeStopSource.y or 0
	elseif arg_89_0 then
		var_89_0, var_89_1 = arg_89_0.x + arg_89_0.w * 0.5, arg_89_0.y + arg_89_0.h * 0.5
	else
		local var_89_2, var_89_3 = love.graphics.getDimensions()

		var_89_0, var_89_1 = var_89_2 * 0.5, var_89_3 * 0.5
	end

	local var_89_4

	if arg_89_0 then
		local var_89_5 = arg_89_0.x
		local var_89_6 = arg_89_0.y
		local var_89_7 = arg_89_0.x + arg_89_0.w
		local var_89_8 = arg_89_0.y + arg_89_0.h
		local var_89_9 = math.max(math.abs(var_89_0 - var_89_5), math.abs(var_89_0 - var_89_7))
		local var_89_10 = math.max(math.abs(var_89_1 - var_89_6), math.abs(var_89_1 - var_89_8))

		var_89_4 = math.sqrt(var_89_9 * var_89_9 + var_89_10 * var_89_10)
	else
		local var_89_11, var_89_12 = love.graphics.getDimensions()
		local var_89_13 = math.max(var_89_0, var_89_11 - var_89_0)
		local var_89_14 = math.max(var_89_1, var_89_12 - var_89_1)

		var_89_4 = math.sqrt(var_89_13 * var_89_13 + var_89_14 * var_89_14)
	end

	local var_89_15 = var_89_4

	if var_0_105 == "in" then
		local var_89_16 = var_0_107 > 0 and var_0_106 / var_0_107 or 1

		var_89_15 = var_89_4 * var_0_6(var_89_16)
	elseif var_0_105 == "out" then
		local var_89_17 = var_0_108 > 0 and var_0_106 / var_0_108 or 1

		var_89_15 = var_89_4 * (1 - var_0_6(var_89_17))
	else
		var_89_15 = var_89_4
	end

	if var_89_15 < 0 then
		var_89_15 = 0
	end

	local var_89_18 = 1

	if arg_89_1 and arg_89_1.ui and arg_89_1.ui.scale then
		var_89_18 = arg_89_1.ui.scale
	end

	return {
		active = true,
		cx = var_89_0,
		cy = var_89_1,
		radius = var_89_15,
		softness = var_0_109 * var_89_18
	}
end

function var_0_0.applyTimeStopWaveUniforms(arg_90_0, arg_90_1, arg_90_2)
	if not arg_90_0 then
		return
	end

	local var_90_0 = var_0_112(arg_90_1 or var_0_111, arg_90_2 or var_0_104)

	if arg_90_0:hasUniform("u_ts_active") then
		arg_90_0:send("u_ts_active", var_90_0 and true or false)
	end

	if not var_90_0 then
		return
	end

	if arg_90_0:hasUniform("u_ts_center") then
		arg_90_0:send("u_ts_center", {
			var_90_0.cx,
			var_90_0.cy
		})
	end

	if arg_90_0:hasUniform("u_ts_radius") then
		arg_90_0:send("u_ts_radius", var_90_0.radius)
	end

	if arg_90_0:hasUniform("u_ts_softness") then
		arg_90_0:send("u_ts_softness", var_90_0.softness)
	end
end

function var_0_0.isTimeStopAnimBlocking()
	return var_0_105 == "in" or var_0_105 == "out"
end

local function var_0_113(arg_92_0)
	local var_92_0 = var_0_104

	if var_92_0 and (var_92_0.timeStopT or 0) > 0 and (not arg_92_0 or not var_0_51(arg_92_0, "timeless")) then
		return 1
	end

	return 0
end

function var_0_0.addTimeStopEffect(arg_93_0, arg_93_1, arg_93_2)
	var_0_102 = arg_93_0
	var_0_103 = arg_93_0
	var_0_105 = "in"
	var_0_106 = 0

	if arg_93_1 and arg_93_2 then
		var_0_110 = {
			arg_93_1,
			arg_93_2
		}
	else
		var_0_110 = nil
	end
end

function var_0_0.updateBattle(arg_94_0, arg_94_1)
	if arg_94_1 and arg_94_1.enemies then
		local var_94_0 = arg_94_0 or 0

		for iter_94_0, iter_94_1 in ipairs(arg_94_1.enemies) do
			if var_0_23(iter_94_1) then
				local var_94_1 = var_0_111 or arg_94_1.area
				local var_94_2 = true

				if var_94_1 and var_94_1.x and var_94_1.w then
					var_94_2 = iter_94_1.x <= var_94_1.x + var_94_1.w + 20
				end

				if var_94_2 and not iter_94_1._bloodScentUsed and not iter_94_1.dying then
					iter_94_1._bloodTrailAlpha = math.min(1, (iter_94_1._bloodTrailAlpha or 0) + var_94_0 * 1.5)
				else
					iter_94_1._bloodTrailAlpha = math.max(0, (iter_94_1._bloodTrailAlpha or 0) - var_94_0 * 2)
				end
			end
		end
	end

	if not arg_94_1 or not arg_94_1.allies then
		return
	end

	arg_94_0 = arg_94_0 or 0

	local var_94_3 = arg_94_1.timeStopT and arg_94_1.timeStopT > 0

	var_0_48 = var_0_48 + arg_94_0

	local var_94_4 = 0

	for iter_94_2, iter_94_3 in ipairs(arg_94_1.allies) do
		if iter_94_3 and iter_94_3.alive and not iter_94_3.dying and iter_94_3.imprints then
			for iter_94_4, iter_94_5 in pairs(iter_94_3.imprints) do
				if iter_94_5.id == "majesty" then
					var_94_4 = math.max(var_94_4, iter_94_5.level or 1)
				end
			end
		end
	end

	var_0_47 = var_94_4

	if var_0_43 > 0 then
		var_0_43 = math.max(0, var_0_43 - arg_94_0)
	end

	if var_0_102 > 0 then
		var_0_102 = math.max(0, var_0_102 - arg_94_0)
	end

	if var_0_105 ~= "idle" then
		if var_0_105 == "in" then
			var_0_106 = var_0_106 + arg_94_0

			if var_0_106 >= (var_0_107 or 0) then
				var_0_105 = "hold"
				var_0_106 = 0
			end
		elseif var_0_105 == "hold" then
			if not var_94_3 and arg_94_1 and (arg_94_1.timeStopT or 0) <= 0 then
				var_0_105 = "out"
				var_0_106 = 0
			end
		elseif var_0_105 == "out" then
			var_0_106 = var_0_106 + arg_94_0

			if var_0_106 >= (var_0_108 or 0) then
				var_0_105 = "idle"
				var_0_106 = 0
				var_0_110 = nil
			end
		end
	elseif var_94_3 then
		var_0_105 = "hold"
		var_0_106 = 0
	end

	for iter_94_6 = #var_0_7, 1, -1 do
		local var_94_5 = var_0_7[iter_94_6]
		local var_94_6 = arg_94_0

		var_94_5.t = var_94_5.t + var_94_6

		if var_94_5.t >= var_94_5.dur then
			table.remove(var_0_7, iter_94_6)
		end
	end

	for iter_94_7 = #var_0_8, 1, -1 do
		local var_94_7 = var_0_8[iter_94_7]

		var_94_7.t = var_94_7.t + arg_94_0

		if var_94_7.t >= var_94_7.dur then
			table.remove(var_0_8, iter_94_7)
		end
	end

	for iter_94_8, iter_94_9 in ipairs(arg_94_1.allies) do
		if iter_94_9 and iter_94_9.alive and not iter_94_9.dying then
			if iter_94_9._impactSquash then
				iter_94_9._impactSquash.t = (iter_94_9._impactSquash.t or 0) + arg_94_0

				if (iter_94_9._impactSquash.t or 0) >= (iter_94_9._impactSquash.dur or 0.2) then
					iter_94_9._impactSquash = nil
				end
			end

			if iter_94_9._overdriveActive then
				iter_94_9._overdriveAuraT = (iter_94_9._overdriveAuraT or 0) + arg_94_0
			else
				iter_94_9._overdriveAuraT = nil
			end

			if (iter_94_9.fearT or 0) > 0 then
				iter_94_9.facing = -1
			elseif iter_94_9.anim and (iter_94_9.anim.name == "attack" or iter_94_9.anim.name == "attack2" or iter_94_9.anim.name == "attack3") then
				if iter_94_9._attackFacing then
					iter_94_9.facing = iter_94_9._attackFacing
				end
			elseif iter_94_9.facing == nil then
				local var_94_8 = iter_94_9.target

				if var_94_8 and var_94_8.x and iter_94_9.x and var_94_8.alive and not var_94_8.dying then
					iter_94_9.facing = var_94_8.x < iter_94_9.x and -1 or 1
				else
					iter_94_9.facing = 1
				end
			end
		elseif iter_94_9 and iter_94_9.alive and iter_94_9.dying and iter_94_9._overdriveActive then
			iter_94_9._overdriveAuraT = (iter_94_9._overdriveAuraT or 0) + arg_94_0
		end
	end

	if arg_94_1.enemies then
		for iter_94_10, iter_94_11 in ipairs(arg_94_1.enemies) do
			if iter_94_11 and iter_94_11.alive and not iter_94_11.dying then
				if iter_94_11._impactSquash then
					iter_94_11._impactSquash.t = (iter_94_11._impactSquash.t or 0) + arg_94_0

					if (iter_94_11._impactSquash.t or 0) >= (iter_94_11._impactSquash.dur or 0.2) then
						iter_94_11._impactSquash = nil
					end
				end

				if (iter_94_11.fearT or 0) > 0 then
					iter_94_11.facing = 1
				elseif not (iter_94_11.anim and (iter_94_11.anim.name == "attack" or iter_94_11.anim.name == "attack2" or iter_94_11.anim.name == "attack3")) and iter_94_11.facing == nil then
					local var_94_9 = iter_94_11.target

					if var_94_9 and var_94_9.x and iter_94_11.x and var_94_9.alive and not var_94_9.dying then
						iter_94_11.facing = var_94_9.x > iter_94_11.x and 1 or -1
					else
						iter_94_11.facing = -1
					end
				end
			end
		end
	end
end

function var_0_0.unitCleanup(arg_95_0)
	if arg_95_0 and arg_95_0._render2Pushed then
		love.graphics.pop()

		arg_95_0._render2Pushed = false
	end

	local var_95_0 = var_0_104

	if var_95_0 and (var_95_0.timeStopT or 0) > 0 and var_0_51(arg_95_0, "timeless") then
		local var_95_1 = var_0_71()

		if var_95_1 then
			love.graphics.setShader(var_95_1)
			var_95_1:send("u_strength", 1)
			var_0_0.applyTimeStopWaveUniforms(var_95_1)
		end
	end

	if arg_95_0 then
		arg_95_0._useManualCleanup = false
	end
end

function var_0_0.drawUnitWrapperPre(arg_96_0, arg_96_1)
	if not arg_96_0 then
		return
	end

	local var_96_0 = var_0_104

	if var_96_0 and (var_96_0.timeStopT or 0) > 0 and var_0_51(arg_96_0, "timeless") then
		love.graphics.setShader()
	end

	if arg_96_0.dying or arg_96_0.revivedAlready then
		love.graphics.setColor(1, 1, 1, 0)
	end

	local var_96_1 = arg_96_0.enlargeScale or 1
	local var_96_2 = 0

	if var_0_43 > 0 then
		local var_96_3 = var_0_44 - var_0_43

		if var_96_3 < var_0_45 then
			local var_96_4 = var_96_3 / var_0_45

			var_96_2 = -24 * (4 * var_96_4 * (1 - var_96_4))
		end
	end

	local var_96_5 = 0
	local var_96_6 = 1
	local var_96_7 = 1
	local var_96_8 = 0
	local var_96_9 = 1
	local var_96_10 = 1
	local var_96_11 = arg_96_0._emperorsRoarFollowup

	if var_96_11 and arg_96_0.anim and arg_96_0.anim.name == "attack" then
		local var_96_12 = arg_96_0.anim.frame or 1
		local var_96_13 = var_96_11.peakY or 6

		if not var_96_11.released then
			local var_96_14 = var_96_11.squashX or 0.04
			local var_96_15 = var_96_11.squashY or 0.08

			if var_96_12 < 5 then
				local var_96_16 = math.max(0.001, var_96_11.squashDur or 0.06)
				local var_96_17 = 0

				if var_96_12 == 4 then
					var_96_17 = var_0_6((arg_96_0.anim.t or 0) / var_96_16)
				end

				var_96_6 = 1 + var_96_14 * var_96_17
				var_96_7 = 1 - var_96_15 * var_96_17
			else
				local var_96_18 = math.max(0.001, var_96_11.riseDur or 0.08)
				local var_96_19 = var_0_6((var_96_11.holdT or 0) / var_96_18)

				var_96_5 = -var_96_13 * var_96_19
				var_96_6 = 1 + var_96_14 * (1 - var_96_19)
				var_96_7 = 1 - var_96_15 * (1 - var_96_19)
			end
		else
			local var_96_20 = math.max(0.001, var_96_11.fallDur or 0.12)
			local var_96_21 = var_0_6((var_96_11.releaseT or 0) / var_96_20)

			var_96_5 = -var_96_13 * (1 - var_96_21)
		end
	end

	local var_96_22 = arg_96_0._impactSquash

	if var_96_22 then
		local var_96_23 = math.max(0.001, var_96_22.dur or 0.2)
		local var_96_24 = var_0_5((var_96_22.t or 0) / var_96_23, 0, 1)
		local var_96_25 = var_96_22.squashX or 0.16
		local var_96_26 = var_96_22.squashY or 0.24
		local var_96_27 = var_96_22.recoilX or 0
		local var_96_28 = var_96_22.dir or 1

		if var_96_24 < 0.35 then
			local var_96_29 = var_0_6(var_96_24 / 0.35)

			var_96_9 = 1 + var_96_25 * var_96_29
			var_96_10 = 1 - var_96_26 * var_96_29
			var_96_8 = var_96_28 * var_96_27 * var_96_29
		else
			local var_96_30 = var_0_6((var_96_24 - 0.35) / 0.65)

			var_96_9 = 1 + var_96_25 + (1 - var_96_25 * 0.35 - (1 + var_96_25)) * var_96_30
			var_96_10 = 1 - var_96_26 + (1 + var_96_26 * 0.18 - (1 - var_96_26)) * var_96_30
			var_96_8 = var_96_28 * var_96_27 * (1 - var_96_30)
		end
	end

	if arg_96_0._render2Pushed then
		return
	end

	if var_96_1 > 1.001 or var_96_2 ~= 0 or var_96_5 ~= 0 or math.abs(var_96_6 - 1) > 0.001 or math.abs(var_96_7 - 1) > 0.001 or math.abs(var_96_9 - 1) > 0.001 or math.abs(var_96_10 - 1) > 0.001 or math.abs(var_96_8) > 0.001 then
		love.graphics.push()

		local var_96_31 = math.floor(arg_96_0.x or 0)
		local var_96_32 = math.floor((arg_96_0.y or 0) + (arg_96_1 or 32) * 0.5)

		love.graphics.translate(var_96_31 + var_96_8, var_96_32 + var_96_2 + var_96_5)

		local var_96_33 = var_96_1 * var_96_6 * var_96_9
		local var_96_34 = var_96_1 * var_96_7 * var_96_10

		if math.abs(var_96_33 - 1) > 0.001 or math.abs(var_96_34 - 1) > 0.001 then
			love.graphics.scale(var_96_33, var_96_34)
		end

		love.graphics.translate(-var_96_31, -var_96_32)

		arg_96_0._render2Pushed = true
		arg_96_0._useManualCleanup = true
	end
end

local function var_0_114(arg_97_0, arg_97_1)
	if not arg_97_0 then
		return nil
	end

	local var_97_0 = var_0_1
	local var_97_1 = arg_97_0.skin or arg_97_0.unit and arg_97_0.unit.skin

	if var_97_1 and var_97_0.units and var_97_0.units[var_97_1] then
		return var_97_0.units[var_97_1]
	end

	if arg_97_1 and var_97_0.units then
		for iter_97_0, iter_97_1 in pairs(var_97_0.units) do
			if iter_97_1.image == arg_97_1 then
				return iter_97_1
			end
		end
	end

	if arg_97_0.symbol and var_97_0.units then
		local var_97_2 = arg_97_0.symbol
		local var_97_3 = tonumber(arg_97_0.rank or 1) or 1
		local var_97_4 = arg_97_0.subclassKey or arg_97_0.subclassName or arg_97_0.subclass

		if var_97_2 == "W" then
			if var_97_3 >= 3 then
				return var_97_0.units.MiniSwordMan03 or var_97_0.units.MiniSwordMan
			elseif var_97_3 >= 2 then
				return var_97_0.units.MiniSwordMan02 or var_97_0.units.MiniSwordMan
			else
				return var_97_0.units.MiniSwordMan
			end
		elseif var_97_2 == "A" then
			if var_97_3 >= 3 then
				return var_97_0.units.MiniArcherMan03 or var_97_0.units.MiniArcherMan
			elseif var_97_3 >= 2 then
				return var_97_0.units.MiniArcherMan02 or var_97_0.units.MiniArcherMan
			else
				return var_97_0.units.MiniArcherMan
			end
		elseif var_97_2 == "S" then
			if var_97_3 >= 3 then
				if var_97_4 == "우드워든" or var_97_4 == "WoodWarden" then
					return var_97_0.units.우드워든 or var_97_0.units.MiniSpearMan03 or var_97_0.units.MiniSpearMan
				end

				return var_97_0.units.MiniSpearMan03 or var_97_0.units.MiniSpearMan
			elseif var_97_3 >= 2 then
				return var_97_0.units.MiniSpearMan02 or var_97_0.units.MiniSpearMan
			else
				return var_97_0.units.MiniSpearMan
			end
		elseif var_97_2 == "M" then
			if var_97_3 >= 3 then
				if var_97_4 == "본메이지" or var_97_4 == "BoneMage" then
					return var_97_0.units.본메이지 or var_97_0.units["현자 엘프"] or var_97_0.units.MiniMage
				elseif var_97_4 == "엘프 현자" then
					return var_97_0.units["엘프 현자"] or var_97_0.units["현자 엘프"] or var_97_0.units.MiniMage
				elseif var_97_4 == "원시법사" then
					return var_97_0.units.원시법사 or var_97_0.units["현자 엘프"] or var_97_0.units.MiniMage
				end

				return var_97_0.units["현자 엘프"] or var_97_0.units.MiniMage
			elseif var_97_3 >= 2 then
				if var_97_4 == "엘프법사" and var_97_0.units.엘프법사 then
					return var_97_0.units.엘프법사
				end

				if var_97_4 == "야생법사" and var_97_0.units.야생법사 then
					return var_97_0.units.야생법사
				end

				return var_97_0.units.주술사 or var_97_0.units.MiniMage
			else
				if var_97_4 == "마도사" and var_97_0.units.마도사 then
					return var_97_0.units.마도사
				end

				local var_97_5 = arg_97_0.grade and tostring(arg_97_0.grade):lower() or "normal"

				if var_97_5 == "l" or var_97_5 == "legend" then
					var_97_5 = "legendary"
				end

				if var_97_5 == "advanced" and var_97_0.units.마도사 then
					return var_97_0.units.마도사
				end

				return var_97_0.units.MiniMage
			end
		elseif var_97_2 == "H" then
			local var_97_6 = tonumber(arg_97_0.rank or 1) or 1
			local var_97_7 = arg_97_0.grade and tostring(arg_97_0.grade):lower() or "normal"

			if var_97_7 == "l" or var_97_7 == "legend" then
				var_97_7 = "legendary"
			end

			if var_97_6 <= 1 and var_97_7 == "advanced" and var_97_0.units.철기병 then
				return var_97_0.units.철기병
			end

			if var_97_6 >= 3 then
				if var_97_4 == "엘프기병" then
					return var_97_0.units.MiniHorseMan03_hp03 or var_97_0.units.MiniHorseMan03
				elseif var_97_4 == "성기병" then
					return var_97_0.units.MiniHorseMan03_hp02 or var_97_0.units.MiniHorseMan03
				end

				return var_97_0.units.MiniHorseMan03 or var_97_0.units.기병
			elseif var_97_6 >= 2 then
				return var_97_0.units.돌격병 or var_97_0.units.기병
			else
				return var_97_0.units.기병
			end
		elseif var_97_2 == "D" then
			if var_97_4 == "드루이드" and var_97_0.units.드루이드 then
				return var_97_0.units.드루이드
			end

			if var_97_4 == "엔트" and var_97_0.units.엔트 then
				return var_97_0.units.엔트
			end

			if var_97_4 == "빅터" and var_97_0.units.빅터 then
				return var_97_0.units.빅터
			end

			if var_97_4 == "엔트로드" and var_97_0.units.엔트로드 then
				return var_97_0.units.엔트로드
			end

			if var_97_4 == "프랑켄슈타인" and var_97_0.units.프랑켄슈타인 then
				return var_97_0.units.프랑켄슈타인
			end

			if var_97_4 == "검황" then
				return var_97_0.units.검황
			elseif var_97_4 == "암흑장군" then
				return var_97_0.units.암흑장군
			end

			local var_97_8 = arg_97_0.grade and tostring(arg_97_0.grade):lower() or "normal"

			if var_97_8 == "l" or var_97_8 == "legend" then
				var_97_8 = "legendary"
			end

			if var_97_3 <= 1 and var_97_8 == "advanced" and var_97_0.units.드루이드 then
				return var_97_0.units.드루이드
			end

			if var_97_3 >= 3 then
				return var_97_0.units.MiniDuelist03 or var_97_0.units.MiniDuelist
			elseif var_97_3 >= 2 then
				return var_97_0.units.MiniDuelist02 or var_97_0.units.MiniDuelist
			else
				return var_97_0.units.MiniDuelist
			end
		end
	end

	return nil
end

local function var_0_115(arg_98_0, arg_98_1)
	if not arg_98_0 or not arg_98_0.quads or not arg_98_0.bounds then
		return nil, nil, nil
	end

	for iter_98_0, iter_98_1 in pairs(arg_98_0.quads) do
		for iter_98_2, iter_98_3 in ipairs(iter_98_1) do
			if iter_98_3 == arg_98_1 then
				local var_98_0 = arg_98_0.bounds[iter_98_0] and arg_98_0.bounds[iter_98_0][iter_98_2]

				if var_98_0 then
					return var_98_0.x + var_98_0.w * 0.5, var_98_0.y + var_98_0.h * 0.5, var_98_0.y
				end
			end
		end
	end

	return nil, nil, nil
end

local function var_0_116(arg_99_0, arg_99_1)
	if not arg_99_0 or not arg_99_0.quads or not arg_99_0.bounds then
		return nil, nil, nil
	end

	for iter_99_0, iter_99_1 in pairs(arg_99_0.quads) do
		for iter_99_2, iter_99_3 in ipairs(iter_99_1) do
			if iter_99_3 == arg_99_1 then
				local var_99_0 = arg_99_0.bounds[iter_99_0] and arg_99_0.bounds[iter_99_0][iter_99_2]

				if var_99_0 then
					return var_99_0, iter_99_0, iter_99_2
				end
			end
		end
	end

	return nil, nil, nil
end

local function var_0_117(arg_100_0)
	return arg_100_0 and (arg_100_0.kind == "Shield Gnoll" or arg_100_0.kind == "방패 놀" or arg_100_0.kind == "방패 놀 (Shield Gnoll)" or arg_100_0.skin == "방패 놀 (Shield Gnoll)")
end

local function var_0_118(arg_101_0, arg_101_1, arg_101_2, arg_101_3, arg_101_4, arg_101_5, arg_101_6, arg_101_7, arg_101_8, arg_101_9)
	if not var_0_117(arg_101_0) then
		return
	end

	local var_101_0 = arg_101_0.shieldBlockCharges
	local var_101_1 = var_101_0 == nil or (var_101_0 or 0) > 0
	local var_101_2 = arg_101_0.shieldOrbBreakT or 0

	if not var_101_1 and var_101_2 <= 0 then
		return
	end

	local var_101_3 = var_0_114(arg_101_0, arg_101_1)
	local var_101_4

	if var_101_3 then
		var_101_4 = ({
			var_0_116(var_101_3, arg_101_2)
		})[1]
	end

	local var_101_5, var_101_6, var_101_7, var_101_8 = arg_101_2:getViewport()
	local var_101_9 = var_101_4 and var_101_4.x + var_101_4.w * 0.5 or var_101_7 * 0.5
	local var_101_10 = var_101_4 and var_101_4.y + var_101_4.h * 0.5 or var_101_8 * 0.5
	local var_101_11 = var_101_4 and var_101_4.w or var_101_7
	local var_101_12 = var_101_4 and var_101_4.h or var_101_8
	local var_101_13 = arg_101_3 + (var_101_9 - (arg_101_8 or 0)) * (arg_101_6 or 1)
	local var_101_14 = arg_101_4 + (var_101_10 - (arg_101_9 or 0)) * (arg_101_7 or 1)
	local var_101_15 = math.max(var_101_11 * math.abs(arg_101_6 or 1), var_101_12 * math.abs(arg_101_7 or 1)) * 0.4
	local var_101_16 = love.timer.getTime()
	local var_101_17 = math.max(0, math.min(1, (arg_101_0.shieldOrbPulseT or 0) / 0.28))
	local var_101_18 = var_101_15 + math.sin(var_101_16 * 5.5) * 1 + var_101_17 * 2
	local var_101_19, var_101_20 = love.graphics.getBlendMode()
	local var_101_21 = love.graphics.getLineWidth()

	love.graphics.setLineStyle("smooth")
	love.graphics.setBlendMode("alpha")

	local function var_101_22(arg_102_0)
		local var_102_0 = arg_102_0

		return function()
			var_102_0 = (var_102_0 * 1103515245 + 12345) % 2147483648

			return var_102_0 / 2147483648
		end
	end

	local function var_101_23(arg_104_0, arg_104_1, arg_104_2, arg_104_3)
		local var_104_0 = var_101_22(arg_104_3)
		local var_104_1 = var_104_0() * math.pi * 2
		local var_104_2 = (var_104_0() - 0.5) * arg_104_2 * 0.35
		local var_104_3 = arg_104_0 + math.cos(var_104_1) * var_104_2
		local var_104_4 = arg_104_1 + math.sin(var_104_1) * var_104_2
		local var_104_5 = -math.sin(var_104_1)
		local var_104_6 = math.cos(var_104_1)
		local var_104_7 = math.sqrt(math.max(0, arg_104_2^2 - var_104_2^2))
		local var_104_8 = 5
		local var_104_9 = {
			{
				x = var_104_3 - var_104_5 * var_104_7,
				y = var_104_4 - var_104_6 * var_104_7
			},
			[var_104_8] = {
				x = var_104_3 + var_104_5 * var_104_7,
				y = var_104_4 + var_104_6 * var_104_7
			}
		}
		local var_104_10 = math.cos(var_104_1)
		local var_104_11 = math.sin(var_104_1)

		for iter_104_0 = 2, var_104_8 - 1 do
			local var_104_12 = (iter_104_0 - 1) / (var_104_8 - 1)
			local var_104_13 = var_104_3 + var_104_5 * (var_104_7 * (2 * var_104_12 - 1))
			local var_104_14 = var_104_4 + var_104_6 * (var_104_7 * (2 * var_104_12 - 1))
			local var_104_15 = (var_104_0() - 0.5) * arg_104_2 * 0.22

			var_104_9[iter_104_0] = {
				x = var_104_13 + var_104_10 * var_104_15,
				y = var_104_14 + var_104_11 * var_104_15
			}
		end

		return var_104_9, var_104_1, var_104_2
	end

	local function var_101_24(arg_105_0, arg_105_1, arg_105_2, arg_105_3, arg_105_4, arg_105_5)
		local var_105_0 = math.max(1, math.floor(math.abs(arg_105_5 or 1) + 0.5))

		love.graphics.setLineWidth(var_105_0 * 2.2)
		love.graphics.setColor(0.3, 0.85, 1, 0.22 * arg_105_4)

		for iter_105_0 = 1, #arg_105_0 - 1 do
			love.graphics.line(arg_105_0[iter_105_0].x, arg_105_0[iter_105_0].y, arg_105_0[iter_105_0 + 1].x, arg_105_0[iter_105_0 + 1].y)
		end

		love.graphics.setLineWidth(var_105_0 * 1.5)
		love.graphics.setColor(0.02, 0.1, 0.2, 0.55 * arg_105_4)

		for iter_105_1 = 1, #arg_105_0 - 1 do
			love.graphics.line(arg_105_0[iter_105_1].x - 0.5, arg_105_0[iter_105_1].y - 0.5, arg_105_0[iter_105_1 + 1].x - 0.5, arg_105_0[iter_105_1 + 1].y - 0.5)
		end

		love.graphics.setLineWidth(var_105_0 * 0.8)
		love.graphics.setColor(1, 1, 1, 0.95 * arg_105_4)

		for iter_105_2 = 1, #arg_105_0 - 1 do
			love.graphics.line(arg_105_0[iter_105_2].x, arg_105_0[iter_105_2].y, arg_105_0[iter_105_2 + 1].x, arg_105_0[iter_105_2 + 1].y)
		end

		local var_105_1 = var_101_22(arg_105_3 * 7 + 13)

		love.graphics.setLineWidth(var_105_0 * 0.6)

		for iter_105_3 = 2, #arg_105_0 - 1 do
			local var_105_2 = arg_105_0[iter_105_3]
			local var_105_3 = 1 + math.floor(var_105_1() * 2)

			for iter_105_4 = 1, var_105_3 do
				local var_105_4 = arg_105_1 + (var_105_1() > 0.5 and 1 or -1) * math.pi * 0.5 + (var_105_1() - 0.5) * 0.8
				local var_105_5 = arg_105_2 * (0.12 + var_105_1() * 0.12)
				local var_105_6 = var_105_2.x + math.cos(var_105_4) * var_105_5
				local var_105_7 = var_105_2.y + math.sin(var_105_4) * var_105_5

				love.graphics.setColor(0.9, 0.98, 1, 0.85 * arg_105_4)
				love.graphics.line(var_105_2.x, var_105_2.y, var_105_6, var_105_7)

				if var_105_1() > 0.4 then
					local var_105_8 = var_105_4 + (var_105_1() - 0.5) * 1
					local var_105_9 = var_105_5 * 0.6
					local var_105_10 = var_105_6 + math.cos(var_105_8) * var_105_9
					local var_105_11 = var_105_7 + math.sin(var_105_8) * var_105_9

					love.graphics.line(var_105_6, var_105_7, var_105_10, var_105_11)
				end
			end
		end
	end

	local var_101_25 = var_101_18

	if var_101_1 then
		local var_101_26 = math.max(0, math.min(1, (arg_101_0.shieldOrbPulseT or 0) / 0.28))

		love.graphics.setColor(0.25, 0.65, 0.95, 0.14 + 0.08 * var_101_26)
		love.graphics.circle("fill", var_101_13, var_101_14, var_101_25, 36)
		love.graphics.setColor(0.4, 0.8, 1, 0.06)
		love.graphics.circle("fill", var_101_13, var_101_14, var_101_25 * 0.92, 36)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_101_6 or 1) * 0.6 + 0.5)))
		love.graphics.setColor(0.6, 0.88, 1, 0.65 + 0.2 * var_101_26)
		love.graphics.circle("line", var_101_13, var_101_14, var_101_25, 36)
		love.graphics.setLineWidth(1)
		love.graphics.setColor(0.85, 0.95, 1, 0.4)
		love.graphics.circle("line", var_101_13, var_101_14, var_101_25 + 1, 36)
		love.graphics.setColor(1, 1, 1, 0.35 + 0.15 * var_101_26)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_101_6 or 1) * 0.4 + 0.5)))

		local var_101_27 = math.pi * 1.05
		local var_101_28 = math.pi * 1.45

		love.graphics.arc("line", "open", var_101_13, var_101_14, var_101_25 * 0.86, var_101_27, var_101_28, 16)
		love.graphics.setColor(1, 1, 1, 0.65)
		love.graphics.circle("fill", var_101_13 - var_101_25 * 0.38, var_101_14 - var_101_25 * 0.38, var_101_25 * 0.12, 16)
		love.graphics.setColor(0.3, 0.7, 1, 0.25)
		love.graphics.arc("line", "open", var_101_13, var_101_14, var_101_25 * 0.9, math.pi * 0.05, math.pi * 0.45, 16)

		if var_101_0 == 1 then
			if not arg_101_0.shieldOrbSeed then
				arg_101_0.shieldOrbSeed = love.math.random(1, 100000)
			end

			local var_101_29 = arg_101_0.shieldOrbSeed
			local var_101_30, var_101_31, var_101_32 = var_101_23(var_101_13, var_101_14, var_101_25, var_101_29)

			var_101_24(var_101_30, var_101_31, var_101_25, var_101_29, 1, arg_101_6)
		end
	end

	if var_101_2 > 0 then
		local var_101_33 = 1 - (1 - (1 - math.max(0, math.min(1, var_101_2 / 0.45))))^3

		if not arg_101_0.shieldOrbSeed then
			arg_101_0.shieldOrbSeed = love.math.random(1, 100000)
		end

		local var_101_34 = arg_101_0.shieldOrbSeed
		local var_101_35 = var_101_22(var_101_34 * 23 + 203)
		local var_101_36 = (1 - var_101_33) * 0.65
		local var_101_37 = var_101_18 * (1 + var_101_33 * 0.35)

		love.graphics.setColor(0.7, 0.92, 1, var_101_36)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_101_6 or 1) * 0.8)))
		love.graphics.circle("line", var_101_13, var_101_14, var_101_37, 36)

		if var_101_33 < 0.35 then
			local var_101_38 = (1 - var_101_33 / 0.35) * 0.8

			love.graphics.setColor(1, 1, 1, var_101_38)
			love.graphics.circle("fill", var_101_13, var_101_14, var_101_18 * (0.2 + var_101_33 * 0.6), 24)
		end

		local var_101_39, var_101_40, var_101_41 = var_101_23(var_101_13, var_101_14, var_101_18, var_101_34)
		local var_101_42 = var_101_33 * var_101_18 * 0.5
		local var_101_43 = math.cos(var_101_40 + math.pi) * var_101_42
		local var_101_44 = math.sin(var_101_40 + math.pi) * var_101_42
		local var_101_45 = math.cos(var_101_40) * var_101_42
		local var_101_46 = math.sin(var_101_40) * var_101_42
		local var_101_47 = var_101_13 + var_101_43
		local var_101_48 = var_101_14 + var_101_44
		local var_101_49 = 1 - var_101_33

		love.graphics.setColor(0.25, 0.65, 0.95, 0.14 * var_101_49)
		love.graphics.arc("fill", var_101_47, var_101_48, var_101_18, var_101_40 + math.pi * 0.5, var_101_40 + math.pi * 1.5, 18)
		love.graphics.setColor(0.4, 0.8, 1, 0.06 * var_101_49)
		love.graphics.arc("fill", var_101_47, var_101_48, var_101_18 * 0.92, var_101_40 + math.pi * 0.5, var_101_40 + math.pi * 1.5, 18)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_101_6 or 1) * 0.6 + 0.5)))
		love.graphics.setColor(0.6, 0.88, 1, 0.65 * var_101_49)
		love.graphics.arc("line", "open", var_101_47, var_101_48, var_101_18, var_101_40 + math.pi * 0.5, var_101_40 + math.pi * 1.5, 18)
		love.graphics.setLineWidth(1)
		love.graphics.setColor(0.85, 0.95, 1, 0.4 * var_101_49)
		love.graphics.arc("line", "open", var_101_47, var_101_48, var_101_18 + 1, var_101_40 + math.pi * 0.5, var_101_40 + math.pi * 1.5, 18)
		love.graphics.setColor(1, 1, 1, 0.35 * var_101_49)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_101_6 or 1) * 0.4 + 0.5)))
		love.graphics.arc("line", "open", var_101_47, var_101_48, var_101_18 * 0.86, var_101_40 + math.pi * 1.05, var_101_40 + math.pi * 1.45, 16)
		love.graphics.setColor(1, 1, 1, 0.65 * var_101_49)

		local var_101_50 = var_101_47 + math.cos(var_101_40 + math.pi * 1.25) * var_101_18 * 0.54
		local var_101_51 = var_101_48 + math.sin(var_101_40 + math.pi * 1.25) * var_101_18 * 0.54

		love.graphics.circle("fill", var_101_50, var_101_51, var_101_18 * 0.12, 16)

		local var_101_52 = var_101_23(var_101_47, var_101_48, var_101_18, var_101_34)

		var_101_24(var_101_52, var_101_40, var_101_18, var_101_34, var_101_49, arg_101_6)

		local var_101_53 = var_101_13 + var_101_45
		local var_101_54 = var_101_14 + var_101_46
		local var_101_55 = 1 - var_101_33

		love.graphics.setColor(0.25, 0.65, 0.95, 0.14 * var_101_55)
		love.graphics.arc("fill", var_101_53, var_101_54, var_101_18, var_101_40 - math.pi * 0.5, var_101_40 + math.pi * 0.5, 18)
		love.graphics.setColor(0.4, 0.8, 1, 0.06 * var_101_55)
		love.graphics.arc("fill", var_101_53, var_101_54, var_101_18 * 0.92, var_101_40 - math.pi * 0.5, var_101_40 + math.pi * 0.5, 18)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_101_6 or 1) * 0.6 + 0.5)))
		love.graphics.setColor(0.6, 0.88, 1, 0.65 * var_101_55)
		love.graphics.arc("line", "open", var_101_53, var_101_54, var_101_18, var_101_40 - math.pi * 0.5, var_101_40 + math.pi * 0.5, 18)
		love.graphics.setLineWidth(1)
		love.graphics.setColor(0.85, 0.95, 1, 0.4 * var_101_55)
		love.graphics.arc("line", "open", var_101_53, var_101_54, var_101_18 + 1, var_101_40 - math.pi * 0.5, var_101_40 + math.pi * 0.5, 18)
		love.graphics.setColor(0.3, 0.7, 1, 0.25 * var_101_55)
		love.graphics.arc("line", "open", var_101_53, var_101_54, var_101_18 * 0.9, var_101_40 + math.pi * 0.05, var_101_40 + math.pi * 0.45, 16)

		local var_101_56 = var_101_23(var_101_53, var_101_54, var_101_18, var_101_34)

		var_101_24(var_101_56, var_101_40, var_101_18, var_101_34, var_101_55, arg_101_6)

		local var_101_57 = {
			2,
			3,
			4
		}
		local var_101_58 = var_101_22(var_101_34 * 3 + 17)

		for iter_101_0, iter_101_1 in ipairs(var_101_57) do
			local var_101_59 = var_101_39[iter_101_1]
			local var_101_60 = (iter_101_0 % 2 == 0 and var_101_40 or var_101_40 + math.pi) + (var_101_58() - 0.5) * 0.3
			local var_101_61 = var_101_59.x
			local var_101_62 = var_101_59.y
			local var_101_63 = var_101_18 * (0.3 + var_101_58() * 0.35)
			local var_101_64 = var_101_61 + math.cos(var_101_60) * var_101_63 * var_101_33
			local var_101_65 = var_101_62 + math.sin(var_101_60) * var_101_63 * var_101_33
			local var_101_66 = (var_101_58() - 0.5) * 4 * var_101_33
			local var_101_67 = var_101_18 * (0.24 + var_101_58() * 0.16)
			local var_101_68 = 0
			local var_101_69 = -var_101_67 * 0.6
			local var_101_70 = -var_101_67 * 0.45
			local var_101_71 = var_101_67 * 0.45
			local var_101_72 = var_101_67 * 0.45
			local var_101_73 = var_101_67 * 0.3

			local function var_101_74(arg_106_0, arg_106_1)
				local var_106_0 = arg_106_0 * math.cos(var_101_66) - arg_106_1 * math.sin(var_101_66)
				local var_106_1 = arg_106_0 * math.sin(var_101_66) + arg_106_1 * math.cos(var_101_66)

				return var_101_64 + var_106_0, var_101_65 + var_106_1
			end

			local var_101_75, var_101_76 = var_101_74(var_101_68, var_101_69)
			local var_101_77, var_101_78 = var_101_74(var_101_70, var_101_71)
			local var_101_79, var_101_80 = var_101_74(var_101_72, var_101_73)
			local var_101_81 = (1 - var_101_33) * 0.55

			love.graphics.setColor(0.75, 0.92, 1, var_101_81)
			love.graphics.polygon("fill", var_101_75, var_101_76, var_101_77, var_101_78, var_101_79, var_101_80)

			local var_101_82 = (1 - var_101_33) * 0.9

			love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_101_6 or 1) * 1.5)))
			love.graphics.setColor(0.3, 0.8, 1, 0.4 * var_101_82)
			love.graphics.polygon("line", var_101_75, var_101_76, var_101_77, var_101_78, var_101_79, var_101_80)
			love.graphics.setLineWidth(1)
			love.graphics.setColor(1, 1, 1, var_101_82)
			love.graphics.polygon("line", var_101_75, var_101_76, var_101_77, var_101_78, var_101_79, var_101_80)
		end

		local var_101_83 = 6

		love.graphics.setLineWidth(1.5)

		for iter_101_2 = 1, var_101_83 do
			local var_101_84 = iter_101_2 / var_101_83 * math.pi * 2 + (var_101_35() - 0.5) * 0.3
			local var_101_85 = var_101_18 * (0.2 + var_101_33 * 0.4)
			local var_101_86 = var_101_18 * (0.5 + var_101_33 * 0.8)

			love.graphics.setColor(0.85, 0.95, 1, (1 - var_101_33) * 0.75)
			love.graphics.line(var_101_13 + math.cos(var_101_84) * var_101_85, var_101_14 + math.sin(var_101_84) * var_101_85, var_101_13 + math.cos(var_101_84) * var_101_86, var_101_14 + math.sin(var_101_84) * var_101_86)
		end
	end

	love.graphics.setLineWidth(var_101_21 or 1)

	if var_101_20 ~= nil then
		love.graphics.setBlendMode(var_101_19, var_101_20)
	else
		love.graphics.setBlendMode(var_101_19)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.setLineStyle("rough")
end

local var_0_119 = {}

local function var_0_120(arg_107_0, arg_107_1, arg_107_2, arg_107_3, arg_107_4)
	if not arg_107_0 or not arg_107_0.imageData or not arg_107_1 then
		return nil, nil
	end

	local var_107_0, var_107_1, var_107_2 = var_0_116(arg_107_0, arg_107_1)

	if not var_107_1 or not var_107_2 then
		return nil, nil
	end

	local var_107_3 = var_0_119[arg_107_0]

	if not var_107_3 then
		var_107_3 = {}
		var_0_119[arg_107_0] = var_107_3
	end

	local var_107_4 = tostring(var_107_1) .. ":" .. tostring(var_107_2) .. ":" .. arg_107_2 .. ":" .. arg_107_3 .. ":" .. arg_107_4
	local var_107_5 = var_107_3[var_107_4]

	if var_107_5 ~= nil then
		if var_107_5 == false then
			return nil, nil
		end

		return var_107_5.x, var_107_5.y
	end

	local var_107_6, var_107_7, var_107_8, var_107_9 = arg_107_1:getViewport()
	local var_107_10
	local var_107_11

	for iter_107_0 = 0, math.max(0, math.floor(var_107_9) - 1) do
		for iter_107_1 = 0, math.max(0, math.floor(var_107_8) - 1) do
			local var_107_12, var_107_13, var_107_14, var_107_15 = arg_107_0.imageData:getPixel(var_107_6 + iter_107_1, var_107_7 + iter_107_0)

			if var_107_15 and var_107_15 > 0 then
				local var_107_16 = math.floor((var_107_12 or 0) * 255 + 0.5)
				local var_107_17 = math.floor((var_107_13 or 0) * 255 + 0.5)
				local var_107_18 = math.floor((var_107_14 or 0) * 255 + 0.5)

				if var_107_16 == arg_107_2 and var_107_17 == arg_107_3 and var_107_18 == arg_107_4 and (not var_107_10 or var_107_10 < iter_107_1) then
					var_107_10, var_107_11 = iter_107_1, iter_107_0
				end
			end
		end
	end

	if not var_107_10 then
		var_107_3[var_107_4] = false

		return nil, nil
	end

	var_107_3[var_107_4] = {
		x = var_107_10 + 0.5,
		y = var_107_11 + 0.5
	}

	return var_107_3[var_107_4].x, var_107_3[var_107_4].y
end

local function var_0_121(arg_108_0, arg_108_1, arg_108_2, arg_108_3, arg_108_4, arg_108_5, arg_108_6, arg_108_7, arg_108_8)
	if not arg_108_0 or not arg_108_0._pendingPrecisionShot or not arg_108_0.anim or arg_108_0.anim.name ~= "attack" then
		return
	end

	local var_108_0 = arg_108_0.anim.frame or 1

	if var_108_0 < 5 or var_108_0 > 8 then
		return
	end

	local var_108_1 = arg_108_0._pendingPrecisionShot
	local var_108_2 = tonumber(var_108_1 and var_108_1.countdown)

	if not var_108_2 then
		return
	end

	local var_108_3 = var_0_6((0.54 - var_0_5(var_108_2, 0, 0.54)) / 0.54)

	if var_108_0 == 5 then
		var_108_3 = var_108_3 * 0.45
	elseif var_108_0 == 6 then
		var_108_3 = 0.25 + var_108_3 * 0.55
	elseif var_108_0 == 7 then
		var_108_3 = 0.55 + var_108_3 * 0.35
	else
		var_108_3 = 1
	end

	local var_108_4 = var_0_5(var_108_3, 0, 1)
	local var_108_5 = math.abs(arg_108_5 or 1)
	local var_108_6 = math.abs(arg_108_6 or 1)
	local var_108_7 = math.max(0.8, (var_108_5 + var_108_6) * 0.5)
	local var_108_8 = var_0_114(arg_108_0, arg_108_1)
	local var_108_9, var_108_10 = var_0_120(var_108_8, arg_108_2, 37, 35, 34)

	if not var_108_9 or not var_108_10 then
		return
	end

	local var_108_11 = arg_108_3 + (var_108_9 - (arg_108_7 or 0)) * (arg_108_5 or 1)
	local var_108_12, var_108_13 = arg_108_4 + (var_108_10 - (arg_108_8 or 0)) * (arg_108_6 or 1), var_108_11
	local var_108_14 = var_108_7 * (0.4 + var_108_4 * 0.72)
	local var_108_15 = var_108_7 * (1.8 + var_108_4 * 3.8)
	local var_108_16 = var_108_15 * 0.42
	local var_108_17 = var_108_15 * (0.52 + var_108_4 * 0.1)
	local var_108_18 = 0.1 + var_108_4 * 0.16
	local var_108_19 = 0.34 + var_108_4 * 0.38
	local var_108_20 = 0.22 + var_108_4 * 0.28
	local var_108_21 = 0.78 + var_108_4 * 0.18
	local var_108_22 = math.sqrt(3) * 0.5
	local var_108_23 = 0.5

	love.graphics.setBlendMode("add")
	love.graphics.setColor(1, 0.88, 0.6, var_108_18)
	love.graphics.circle("fill", var_108_13, var_108_12, var_108_17)
	love.graphics.setLineStyle("smooth")
	love.graphics.setLineWidth(math.max(1, var_108_7 * 0.85))
	love.graphics.setColor(1, 0.97, 0.82, var_108_19 * 0.42)

	local var_108_24 = var_108_15

	love.graphics.line(var_108_13 - var_108_24, var_108_12, var_108_13 + var_108_24, var_108_12)
	love.graphics.line(var_108_13 - var_108_24 * var_108_23, var_108_12 - var_108_24 * var_108_22, var_108_13 + var_108_24 * var_108_23, var_108_12 + var_108_24 * var_108_22)
	love.graphics.line(var_108_13 + var_108_24 * var_108_23, var_108_12 - var_108_24 * var_108_22, var_108_13 - var_108_24 * var_108_23, var_108_12 + var_108_24 * var_108_22)
	love.graphics.setLineWidth(math.max(1, var_108_7 * 0.28))
	love.graphics.setColor(1, 0.99, 0.92, var_108_19)

	local var_108_25 = var_108_16

	love.graphics.line(var_108_13 - var_108_25, var_108_12, var_108_13 + var_108_25, var_108_12)
	love.graphics.line(var_108_13 - var_108_25 * var_108_23, var_108_12 - var_108_25 * var_108_22, var_108_13 + var_108_25 * var_108_23, var_108_12 + var_108_25 * var_108_22)
	love.graphics.line(var_108_13 + var_108_25 * var_108_23, var_108_12 - var_108_25 * var_108_22, var_108_13 - var_108_25 * var_108_23, var_108_12 + var_108_25 * var_108_22)
	love.graphics.setColor(1, 0.99, 0.92, var_108_21)
	love.graphics.circle("fill", var_108_13, var_108_12, math.max(1, var_108_14))
	love.graphics.setColor(1, 1, 0.98, 0.7 + var_108_4 * 0.16)
	love.graphics.circle("fill", var_108_13, var_108_12, math.max(1, var_108_14 * 0.45))
	love.graphics.setLineStyle("rough")
	love.graphics.setLineWidth(1)
	love.graphics.setBlendMode("alpha")
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_122(arg_109_0, arg_109_1, arg_109_2, arg_109_3, arg_109_4, arg_109_5, arg_109_6, arg_109_7, arg_109_8)
	if not arg_109_0 or not arg_109_0._pendingHeadshot or not arg_109_0.anim or arg_109_0.anim.name ~= "attack" then
		return
	end

	local var_109_0 = arg_109_0.anim.frame or 1

	if var_109_0 < 1 or var_109_0 > 3 then
		return
	end

	local var_109_1 = arg_109_0._pendingHeadshot
	local var_109_2 = tonumber(var_109_1 and var_109_1.countdown)

	if not var_109_2 then
		return
	end

	local var_109_3 = var_0_6((0.4 - var_0_5(var_109_2, 0, 0.4)) / 0.4)

	if var_109_0 == 1 then
		var_109_3 = var_109_3 * 0.5
	elseif var_109_0 == 2 then
		var_109_3 = 0.3 + var_109_3 * 0.55
	else
		var_109_3 = 1
	end

	local var_109_4 = var_0_5(var_109_3, 0, 1)
	local var_109_5 = math.abs(arg_109_5 or 1)
	local var_109_6 = math.abs(arg_109_6 or 1)
	local var_109_7 = math.max(0.8, (var_109_5 + var_109_6) * 0.5)
	local var_109_8 = var_0_114(arg_109_0, arg_109_1)
	local var_109_9, var_109_10 = var_0_120(var_109_8, arg_109_2, 37, 35, 34)

	if not var_109_9 or not var_109_10 then
		return
	end

	local var_109_11 = arg_109_3 + (var_109_9 - (arg_109_7 or 0)) * (arg_109_5 or 1)
	local var_109_12, var_109_13 = arg_109_4 + (var_109_10 - (arg_109_8 or 0)) * (arg_109_6 or 1), var_109_11
	local var_109_14 = var_109_7 * (0.55 + var_109_4 * 1.1)
	local var_109_15 = var_109_7 * (2.8 + var_109_4 * 6)
	local var_109_16 = var_109_15 * 0.62
	local var_109_17 = var_109_15 * 0.36
	local var_109_18 = var_109_15 * (0.58 + var_109_4 * 0.16)
	local var_109_19 = var_109_14 * (2.2 + var_109_4 * 1.4)
	local var_109_20 = var_109_15 * (0.3 + var_109_4 * 0.38)
	local var_109_21 = 0.14 + var_109_4 * 0.22
	local var_109_22 = 0.28 + var_109_4 * 0.44
	local var_109_23 = 0.46 + var_109_4 * 0.38
	local var_109_24 = 0.62 + var_109_4 * 0.3
	local var_109_25 = 0.8 + var_109_4 * 0.18
	local var_109_26 = 0.18 + var_109_4 * 0.3
	local var_109_27 = math.sqrt(3) * 0.5
	local var_109_28 = 0.5

	love.graphics.setBlendMode("add")
	love.graphics.setColor(0.2, 0.55, 1, var_109_21 * 0.7)
	love.graphics.circle("fill", var_109_13, var_109_12, var_109_18)
	love.graphics.setColor(0.55, 0.9, 1, var_109_21)
	love.graphics.circle("fill", var_109_13, var_109_12, var_109_19)
	love.graphics.setLineStyle("smooth")
	love.graphics.setLineWidth(math.max(1, var_109_7 * 0.55))
	love.graphics.setColor(0.7, 0.96, 1, var_109_26)
	love.graphics.circle("line", var_109_13, var_109_12, var_109_20)
	love.graphics.setLineWidth(math.max(1, var_109_7 * 1.1))
	love.graphics.setColor(0.5, 0.82, 1, var_109_22 * 0.4)

	local var_109_29 = var_109_15

	love.graphics.line(var_109_13 - var_109_29, var_109_12, var_109_13 + var_109_29, var_109_12)
	love.graphics.line(var_109_13 - var_109_29 * var_109_28, var_109_12 - var_109_29 * var_109_27, var_109_13 + var_109_29 * var_109_28, var_109_12 + var_109_29 * var_109_27)
	love.graphics.line(var_109_13 + var_109_29 * var_109_28, var_109_12 - var_109_29 * var_109_27, var_109_13 - var_109_29 * var_109_28, var_109_12 + var_109_29 * var_109_27)
	love.graphics.setLineWidth(math.max(1, var_109_7 * 0.55))
	love.graphics.setColor(0.75, 0.94, 1, var_109_23 * 0.55)

	local var_109_30 = var_109_16

	love.graphics.line(var_109_13 - var_109_30, var_109_12, var_109_13 + var_109_30, var_109_12)
	love.graphics.line(var_109_13 - var_109_30 * var_109_28, var_109_12 - var_109_30 * var_109_27, var_109_13 + var_109_30 * var_109_28, var_109_12 + var_109_30 * var_109_27)
	love.graphics.line(var_109_13 + var_109_30 * var_109_28, var_109_12 - var_109_30 * var_109_27, var_109_13 - var_109_30 * var_109_28, var_109_12 + var_109_30 * var_109_27)
	love.graphics.setLineWidth(math.max(1, var_109_7 * 0.3))
	love.graphics.setColor(0.88, 0.98, 1, var_109_24)

	local var_109_31 = var_109_17

	love.graphics.line(var_109_13 - var_109_31, var_109_12, var_109_13 + var_109_31, var_109_12)
	love.graphics.line(var_109_13 - var_109_31 * var_109_28, var_109_12 - var_109_31 * var_109_27, var_109_13 + var_109_31 * var_109_28, var_109_12 + var_109_31 * var_109_27)
	love.graphics.line(var_109_13 + var_109_31 * var_109_28, var_109_12 - var_109_31 * var_109_27, var_109_13 - var_109_31 * var_109_28, var_109_12 + var_109_31 * var_109_27)
	love.graphics.setColor(0.88, 1, 1, var_109_25)
	love.graphics.circle("fill", var_109_13, var_109_12, math.max(1, var_109_14))
	love.graphics.setColor(1, 1, 1, 0.88 + var_109_4 * 0.1)
	love.graphics.circle("fill", var_109_13, var_109_12, math.max(1, var_109_14 * 0.42))
	love.graphics.setColor(0.8, 0.95, 1, 1)
	love.graphics.circle("fill", var_109_13, var_109_12, math.max(1, var_109_14 * 0.18))
	love.graphics.setLineStyle("rough")
	love.graphics.setLineWidth(1)
	love.graphics.setBlendMode("alpha")
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_123(arg_110_0, arg_110_1, arg_110_2, arg_110_3, arg_110_4, arg_110_5, arg_110_6, arg_110_7, arg_110_8, arg_110_9)
	local var_110_0 = arg_110_0 and arg_110_0._pendingBloodSurge

	if not var_110_0 and arg_110_0 and arg_110_0.skill and arg_110_0.skill.kind == "FrenziedAssault" and (arg_110_0._aspdBuffT or 0) > 0 then
		local var_110_1 = math.max(0.01, tonumber(arg_110_0._aspdBuffDur) or tonumber(arg_110_0.skill.dur) or 2)

		var_110_0 = {
			totalT = var_110_1 - math.max(0, tonumber(arg_110_0._aspdBuffT) or 0),
			dur = var_110_1
		}
	end

	if not var_110_0 or not arg_110_1 or not arg_110_2 then
		return
	end

	local var_110_2 = math.max(0.01, tonumber(var_110_0.dur) or 2)
	local var_110_3 = var_0_5(tonumber(var_110_0.totalT) or 0, 0, var_110_2)
	local var_110_4 = 3
	local var_110_5 = var_110_2 / var_110_4
	local var_110_6 = math.floor(var_110_3 / var_110_5)

	if var_110_4 <= var_110_6 then
		var_110_6 = var_110_4 - 1
	end

	local var_110_7 = var_110_3 - var_110_6 * var_110_5
	local var_110_8 = math.min(var_110_5 * 0.88, 0.54)

	if var_110_7 < 0 or var_110_8 < var_110_7 then
		return
	end

	local var_110_9 = var_0_5(var_110_7 / var_110_8, 0, 1)
	local var_110_10 = var_0_6(var_110_9)
	local var_110_11 = 1 - var_0_6(var_110_9)
	local var_110_12 = math.abs(arg_110_6 or 1)
	local var_110_13 = math.abs(arg_110_7 or 1)
	local var_110_14 = math.max(1, (var_110_12 + var_110_13) * 0.5)
	local var_110_15 = var_110_14 * (2.2 + 5.4 * var_110_10)
	local var_110_16 = 1 + 0.05 * var_110_10
	local var_110_17, var_110_18, var_110_19, var_110_20 = arg_110_2:getViewport()
	local var_110_21 = arg_110_3 + (var_110_19 * 0.5 - (arg_110_8 or 0)) * (arg_110_6 or 1)
	local var_110_22 = arg_110_4 + (var_110_20 - (arg_110_9 or 0)) * (arg_110_7 or 1)
	local var_110_23 = var_0_79()

	if not var_110_23 then
		return
	end

	local var_110_24, var_110_25 = love.graphics.getBlendMode()

	love.graphics.setShader(var_110_23)

	if var_110_23:hasUniform("u_grayscale") then
		var_110_23:send("u_grayscale", var_0_113(arg_110_0))
	end

	var_0_0.applyTimeStopWaveUniforms(var_110_23)
	love.graphics.setColor(1, 1, 1, 1)

	local var_110_26 = math.sin(love.timer.getTime() * 7 + var_110_6 * 0.9) * var_110_14 * 0.35
	local var_110_27 = var_110_21 + var_110_26
	local var_110_28 = var_110_22 - var_110_15
	local var_110_29 = var_110_21 + var_110_26 * 0.45
	local var_110_30 = var_110_22 - var_110_15 * 0.58

	var_110_23:send("u_color", {
		0.3,
		0.01,
		0.02,
		(0.18 + 0.05 * (var_110_4 - var_110_6 - 1)) * var_110_11
	})
	love.graphics.setBlendMode("alpha")
	love.graphics.draw(arg_110_1, arg_110_2, var_110_29, var_110_30, arg_110_5 or 0, (arg_110_6 or 1) * var_110_16 * 0.98, (arg_110_7 or 1) * var_110_16 * 0.98, var_110_19 * 0.5, var_110_20)
	var_110_23:send("u_color", {
		0.88,
		0.05,
		0.06,
		(0.22 + 0.05 * var_110_11) * var_110_11
	})

	if var_110_25 ~= nil then
		love.graphics.setBlendMode("add", "alphamultiply")
	else
		love.graphics.setBlendMode("add")
	end

	love.graphics.draw(arg_110_1, arg_110_2, var_110_27, var_110_28, arg_110_5 or 0, (arg_110_6 or 1) * var_110_16, (arg_110_7 or 1) * var_110_16, var_110_19 * 0.5, var_110_20)
	love.graphics.setShader()

	if var_110_25 ~= nil then
		love.graphics.setBlendMode(var_110_24, var_110_25)
	else
		love.graphics.setBlendMode(var_110_24)
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function var_0_0.drawUnitOverdrivePre(arg_111_0, arg_111_1, arg_111_2, arg_111_3, arg_111_4, arg_111_5, arg_111_6, arg_111_7, arg_111_8, arg_111_9)
	if not arg_111_0 or arg_111_0.dying and not arg_111_0.reviving then
		return
	end

	local var_111_0, var_111_1, var_111_2, var_111_3 = arg_111_2:getViewport()
	local var_111_4 = arg_111_0.enlargeScale or 1

	if not arg_111_0._render2Pushed and var_111_4 > 1.001 then
		love.graphics.push()

		local var_111_5 = arg_111_3 + (var_111_2 * 0.5 - (arg_111_8 or 0)) * arg_111_6
		local var_111_6 = arg_111_4 + (var_111_3 - (arg_111_9 or 0)) * arg_111_7

		love.graphics.translate(var_111_5, var_111_6)
		love.graphics.scale(var_111_4, var_111_4)
		love.graphics.translate(-var_111_5, -var_111_6)

		arg_111_0._render2Pushed = true
	end

	local var_111_7 = _G.frameCount or 0

	if arg_111_0._lastOverdrivePreFrame == var_111_7 then
		return
	end

	arg_111_0._lastOverdrivePreFrame = var_111_7

	local var_111_8 = var_111_2 / 2
	local var_111_9 = var_111_3 / 2
	local var_111_10 = var_0_114(arg_111_0, arg_111_1)

	if var_111_10 and var_111_10.bounds and var_111_10.bounds.idle and var_111_10.bounds.idle[1] then
		local var_111_11 = var_111_10.bounds.idle[1]

		var_111_8 = var_111_11.x + var_111_11.w * 0.5
		var_111_9 = var_111_11.y + var_111_11.h * 0.5
	else
		local var_111_12, var_111_13 = var_0_115(var_111_10, arg_111_2)

		if var_111_12 then
			var_111_8, var_111_9 = var_111_12, var_111_13
		end
	end

	local var_111_14 = var_0_51(arg_111_0, "majesty")
	local var_111_15 = var_0_51(arg_111_0, "overlord") and not arg_111_0.isShadowMinion

	if var_111_14 or var_111_15 then
		if not var_0_49 then
			var_0_49 = love.graphics.newImage("src/sprites/projectile/fireback.png")

			if var_0_49 then
				var_0_49:setFilter("nearest", "nearest")

				local var_111_16, var_111_17 = var_0_49:getDimensions()

				for iter_111_0 = 0, 7 do
					var_0_50[iter_111_0 + 1] = love.graphics.newQuad(iter_111_0 * 24, 0, 24, 40, var_111_16, var_111_17)
				end
			end
		end

		if var_0_49 then
			if var_111_14 then
				local var_111_18 = math.floor(var_0_48 * 10) % 8 + 1
				local var_111_19 = var_0_50[var_111_18]

				love.graphics.push()
				love.graphics.translate(arg_111_3, arg_111_4)
				love.graphics.rotate(arg_111_5 or 0)
				love.graphics.scale(arg_111_6 or 1, arg_111_7 or 1)
				love.graphics.translate(-(arg_111_8 or 0), -(arg_111_9 or 0))

				local var_111_20 = var_0_81()

				love.graphics.setShader(var_111_20)

				if var_111_20:hasUniform("u_grayscale") then
					var_111_20:send("u_grayscale", var_0_113(arg_111_0))
				end

				var_0_0.applyTimeStopWaveUniforms(var_111_20)
				love.graphics.setBlendMode("add")
				love.graphics.setColor(0.8, 0.9, 1, 0.45)
				love.graphics.draw(var_0_49, var_111_19, var_111_8, var_111_9 - 10, 0, 1, 1, 12, 20)
				love.graphics.setShader()
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.pop()
			end

			if var_111_15 then
				local var_111_21 = var_0_48 + 0.5
				local var_111_22 = math.floor(var_111_21 * 13) % 8 + 1
				local var_111_23 = var_0_50[var_111_22]

				love.graphics.push()
				love.graphics.translate(arg_111_3, arg_111_4)
				love.graphics.rotate(arg_111_5 or 0)
				love.graphics.scale(arg_111_6 or 1, arg_111_7 or 1)
				love.graphics.translate(-(arg_111_8 or 0), -(arg_111_9 or 0))

				local var_111_24 = var_0_83()

				love.graphics.setShader(var_111_24)

				if var_111_24:hasUniform("u_grayscale") then
					var_111_24:send("u_grayscale", var_0_113(arg_111_0))
				end

				var_0_0.applyTimeStopWaveUniforms(var_111_24)
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 0.85)
				love.graphics.draw(var_0_49, var_111_23, var_111_8, var_111_9 - 10, 0, 1.1, 1.1, 12, 20)
				love.graphics.setShader()
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.pop()
			end
		end
	end

	if (arg_111_0.skin == "DeceiverForm2" or arg_111_0.deceiverForm == 2 or arg_111_0.form == 2 or arg_111_0._deceiverChanged == true) and arg_111_1 and arg_111_2 then
		local var_111_25 = love.timer.getTime()
		local var_111_26, var_111_27 = love.graphics.getBlendMode()
		local var_111_28, var_111_29, var_111_30, var_111_31 = love.graphics.getColor()

		arg_111_0._trailHistory = arg_111_0._trailHistory or {}

		local var_111_32 = arg_111_0._trailHistory
		local var_111_33 = _G.frameCount or 0

		if not var_111_32.lastFrame or var_111_32.lastFrame ~= var_111_33 then
			local var_111_34 = var_111_32[12] or {}

			for iter_111_1 = math.min(#var_111_32 + 1, 12), 2, -1 do
				var_111_32[iter_111_1] = var_111_32[iter_111_1 - 1]
			end

			var_111_34.x, var_111_34.y = arg_111_3, arg_111_4
			var_111_34.sx, var_111_34.sy, var_111_34.quad = arg_111_6, arg_111_7, arg_111_2
			var_111_32[1] = var_111_34
			var_111_32.lastFrame = var_111_33
		end

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_111_35 = var_0_79()

		if var_111_35 then
			love.graphics.setShader(var_111_35)

			if var_111_35:hasUniform("u_grayscale") then
				var_111_35:send("u_grayscale", 0)
			end

			if var_111_35:hasUniform("u_ts_active") then
				var_111_35:send("u_ts_active", false)
			end

			local var_111_36 = var_111_32[8]

			if var_111_36 and var_111_36.quad then
				var_111_35:send("u_color", {
					0.85,
					0.05,
					0.15,
					0.12
				})
				love.graphics.draw(arg_111_1, var_111_36.quad, var_111_36.x, var_111_36.y, arg_111_5 or 0, var_111_36.sx, var_111_36.sy, arg_111_8, arg_111_9)
			end

			local var_111_37 = var_111_32[4]

			if var_111_37 and var_111_37.quad then
				var_111_35:send("u_color", {
					0.85,
					0.05,
					0.15,
					0.24
				})
				love.graphics.draw(arg_111_1, var_111_37.quad, var_111_37.x, var_111_37.y, arg_111_5 or 0, var_111_37.sx, var_111_37.sy, arg_111_8, arg_111_9)
			end

			love.graphics.setShader()
		end

		love.graphics.setBlendMode(var_111_26, var_111_27)
		love.graphics.setColor(var_111_28, var_111_29, var_111_30, var_111_31)
	end

	local var_111_38 = arg_111_3 + (var_111_8 - (arg_111_8 or 0)) * arg_111_6
	local var_111_39 = arg_111_4 + (var_111_9 - (arg_111_9 or 0)) * arg_111_7

	if arg_111_0._bloodSurgeActive or arg_111_0.skill and arg_111_0.skill.kind == "FrenziedAssault" and (arg_111_0._aspdBuffT or 0) > 0 then
		var_0_123(arg_111_0, arg_111_1, arg_111_2, arg_111_3, arg_111_4, arg_111_5, arg_111_6, arg_111_7, arg_111_8, arg_111_9)
	end

	if arg_111_0.guardianChallengeBurst then
		local var_111_40 = arg_111_0.guardianChallengeBurst
		local var_111_41 = var_0_5((var_111_40.t or 0) / math.max(0.01, var_111_40.dur or 0.4), 0, 1)
		local var_111_42 = 1 - var_111_41
		local var_111_43 = var_0_79()

		if var_111_43 then
			local var_111_44, var_111_45 = love.graphics.getBlendMode()

			love.graphics.setShader(var_111_43)

			if var_111_43:hasUniform("u_grayscale") then
				var_111_43:send("u_grayscale", var_0_113(arg_111_0))
			end

			var_0_0.applyTimeStopWaveUniforms(var_111_43)

			if var_111_45 ~= nil then
				love.graphics.setBlendMode("add", "alphamultiply")
			else
				love.graphics.setBlendMode("add")
			end

			for iter_111_2 = 1, 3 do
				local var_111_46 = 1 + var_0_5(var_111_41 + (iter_111_2 - 1) * 0.08, 0, 1) * (0.18 + iter_111_2 * 0.07)
				local var_111_47 = var_111_42 * (0.62 - iter_111_2 * 0.1)

				var_111_43:send("u_color", {
					0.72,
					1,
					0.68,
					var_111_47
				})
				love.graphics.draw(arg_111_1, arg_111_2, var_111_38, var_111_39, arg_111_5 or 0, arg_111_6 * var_111_46, arg_111_7 * var_111_46, var_111_8, var_111_9)
			end

			love.graphics.setShader()

			if var_111_45 ~= nil then
				love.graphics.setBlendMode(var_111_44, var_111_45)
			else
				love.graphics.setBlendMode(var_111_44)
			end

			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	if arg_111_0.fearT and arg_111_0.fearT > 0 then
		local var_111_48 = love.timer.getTime()
		local var_111_49 = var_0_79()

		if var_111_49 then
			love.graphics.setShader(var_111_49)

			if var_111_49:hasUniform("u_grayscale") then
				var_111_49:send("u_grayscale", var_0_113(arg_111_0))
			end

			var_0_0.applyTimeStopWaveUniforms(var_111_49)
			love.graphics.setBlendMode("add")

			for iter_111_3 = 1, 3 do
				local var_111_50 = 0.15 + 0.2 * (math.sin(var_111_48 * (20 + iter_111_3 * 5) + iter_111_3) * 0.5 + 0.5)
				local var_111_51 = math.sin(var_111_48 * 40 + iter_111_3) * 1.5
				local var_111_52 = math.cos(var_111_48 * 45 + iter_111_3) * 1.5

				var_111_49:send("u_color", {
					0.3 + iter_111_3 * 0.1,
					0,
					0.6,
					var_111_50
				})

				local var_111_53 = 1.02 + iter_111_3 * 0.03

				love.graphics.draw(arg_111_1, arg_111_2, var_111_38 + var_111_51, var_111_39 + var_111_52, arg_111_5 or 0, arg_111_6 * var_111_53, arg_111_7 * var_111_53, var_111_8, var_111_9)
			end

			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
		end
	end
end

function var_0_0.drawUnitOverdrivePost(arg_112_0, arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
	if not arg_112_0 then
		return
	end

	local var_112_0 = math.abs(arg_112_6 or 1)
	local var_112_1 = math.abs(arg_112_7 or 1)

	if (arg_112_0.skin == "DeceiverForm2" or arg_112_0.deceiverForm == 2 or arg_112_0.form == 2 or arg_112_0._deceiverChanged == true) and arg_112_1 and arg_112_2 then
		local var_112_2 = love.timer.getTime()
		local var_112_3, var_112_4 = love.graphics.getBlendMode()
		local var_112_5, var_112_6, var_112_7, var_112_8 = love.graphics.getColor()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_112_9 = var_0_79()

		if var_112_9 then
			love.graphics.setShader(var_112_9)

			local var_112_10 = 0.14 + 0.06 * math.sin(var_112_2 * 4)

			var_112_9:send("u_color", {
				0.9,
				0.1,
				0.2,
				var_112_10
			})

			if var_112_9:hasUniform("u_grayscale") then
				var_112_9:send("u_grayscale", 0)
			end

			if var_112_9:hasUniform("u_ts_active") then
				var_112_9:send("u_ts_active", false)
			end

			love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
			love.graphics.setShader()
		end

		love.graphics.setBlendMode(var_112_3, var_112_4)
		love.graphics.setColor(var_112_5, var_112_6, var_112_7, var_112_8)
	end

	if (arg_112_0.guardThrustSlow and (arg_112_0.guardThrustSlow.dur or 0) > 0 or arg_112_0.observerSlow and (arg_112_0.observerSlow.dur or 0) > 0 or arg_112_0.gazerAtkDown and (arg_112_0.gazerAtkDown.dur or 0) > 0) and arg_112_1 and arg_112_2 then
		local var_112_11 = love.timer.getTime()
		local var_112_12, var_112_13 = love.graphics.getBlendMode()
		local var_112_14, var_112_15, var_112_16, var_112_17 = love.graphics.getColor()

		love.graphics.setBlendMode("alpha", "alphamultiply")

		local var_112_18 = var_0_73()

		love.graphics.setShader(var_112_18)
		var_112_18:send("u_time", var_112_11)
		var_112_18:send("u_slowStrength", 1)

		if arg_112_0.gazerAtkDown and (arg_112_0.gazerAtkDown.dur or 0) > 0 then
			var_112_18:send("u_slowColor", {
				0.95,
				0.62,
				0.05
			})
			var_112_18:send("u_slowEdgeColor", {
				1,
				0.92,
				0.32
			})
		else
			var_112_18:send("u_slowColor", {
				0.78,
				0.4,
				0.1
			})
			var_112_18:send("u_slowEdgeColor", {
				0.95,
				0.5,
				0.1
			})
		end

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
		love.graphics.setShader()
		love.graphics.setBlendMode(var_112_12, var_112_13)
		love.graphics.setColor(var_112_14, var_112_15, var_112_16, var_112_17)
	end

	if arg_112_0 and (arg_112_0.bindingT or 0) > 0 and arg_112_1 and arg_112_2 then
		local var_112_19 = love.timer.getTime()
		local var_112_20, var_112_21 = love.graphics.getBlendMode()
		local var_112_22, var_112_23, var_112_24, var_112_25 = love.graphics.getColor()

		love.graphics.setBlendMode("alpha", "alphamultiply")

		local var_112_26 = var_0_75()

		love.graphics.setShader(var_112_26)
		var_112_26:send("u_time", var_112_19)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
		love.graphics.setShader()
		love.graphics.setBlendMode(var_112_20, var_112_21)
		love.graphics.setColor(var_112_22, var_112_23, var_112_24, var_112_25)
	end

	if arg_112_0 and (arg_112_0.overloadShockT or 0) > 0 and arg_112_1 and arg_112_2 then
		local var_112_27 = love.timer.getTime()
		local var_112_28, var_112_29 = love.graphics.getBlendMode()
		local var_112_30, var_112_31, var_112_32, var_112_33 = love.graphics.getColor()
		local var_112_34 = var_0_77()

		love.graphics.setShader(var_112_34)
		var_112_34:send("u_time", var_112_27 + (arg_112_0.x or 0) * 0.013 + (arg_112_0.y or 0) * 0.017)
		love.graphics.setBlendMode("add", "alphamultiply")
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
		love.graphics.setShader()
		love.graphics.setBlendMode(var_112_28, var_112_29)
		love.graphics.setColor(var_112_30, var_112_31, var_112_32, var_112_33)
	end

	local var_112_35 = arg_112_0.dying and arg_112_0.reviving or arg_112_0.revivedAlready
	local var_112_36 = _G.frameCount or 0

	if arg_112_0._lastOverdrivePostFrame == var_112_36 then
		if not arg_112_0._useManualCleanup and arg_112_0._render2Pushed then
			love.graphics.pop()

			arg_112_0._render2Pushed = false
		end

		return
	end

	arg_112_0._lastOverdrivePostFrame = var_112_36

	if var_112_35 then
		local var_112_37, var_112_38, var_112_39, var_112_40 = love.graphics.getColor()

		love.graphics.setColor(1, 1, 1, 1)

		local var_112_41 = arg_112_0.grade or "normal"
		local var_112_42 = var_0_86[var_112_41]
		local var_112_43 = arg_112_0.sym or arg_112_0.symbol
		local var_112_44 = var_112_43 == "W" or var_112_43 == "S" or var_112_43 == "A" or var_112_43 == "H" or var_112_43 == "M" or var_112_43 == "D"
		local var_112_45 = false

		if var_112_44 and var_112_42 then
			local var_112_46 = var_0_85()

			love.graphics.setShader(var_112_46)

			var_112_45 = true

			if var_112_43 == "D" then
				var_112_46:send("u_swapClothesH", true)
				var_112_46:send("u_srcClothesH", {
					0.596,
					0.847,
					0.973
				})
				var_112_46:send("u_dstClothesH", var_112_42.clothesH or var_112_42.clothes)

				if var_112_42.cloakH then
					var_112_46:send("u_swapCloak", true)
					var_112_46:send("u_srcCloakH", {
						0.816,
						0.063,
						0
					})
					var_112_46:send("u_srcCloakC", {
						0.565,
						0.063,
						0
					})
					var_112_46:send("u_dstCloakH", var_112_42.cloakH)
					var_112_46:send("u_dstCloakC", var_112_42.cloak)
				else
					var_112_46:send("u_swapCloak", false)
				end
			else
				var_112_46:send("u_swapClothesH", false)
				var_112_46:send("u_swapCloak", false)
			end

			var_112_46:send("u_srcClothes", {
				0.376,
				0.596,
				0.91
			})
			var_112_46:send("u_srcShadow", {
				0.251,
				0.345,
				0.753
			})
			var_112_46:send("u_dstClothes", var_112_42.clothes)
			var_112_46:send("u_dstShadow", var_112_42.shadow)

			if var_112_42.ironHighlight then
				var_112_46:send("u_swapIron", true)
				var_112_46:send("u_srcIronH", {
					0.71,
					0.839,
					0.871
				})
				var_112_46:send("u_srcIronC", {
					0.549,
					0.678,
					0.776
				})
				var_112_46:send("u_srcIronS", {
					0.353,
					0.482,
					0.58
				})
				var_112_46:send("u_dstIronH", var_112_42.ironHighlight)
				var_112_46:send("u_dstIronC", var_112_42.ironColor)
				var_112_46:send("u_dstIronS", var_112_42.ironShadow)
			else
				var_112_46:send("u_swapIron", false)
			end

			var_112_46:send("u_tolerance", 0.01)
			var_112_46:send("u_judgementActive", false)

			if var_112_46:hasUniform("u_poisonStrength") then
				var_112_46:send("u_poisonStrength", 0)
			end

			if var_112_46:hasUniform("u_chillStrength") then
				var_112_46:send("u_chillStrength", 0)
			end
		end

		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)

		if var_112_45 then
			love.graphics.setShader()
		end

		if arg_112_0.hitFlash and arg_112_0.hitFlash.t and arg_112_0.hitFlash.t < (arg_112_0.hitFlash.dur or 0.16) then
			local var_112_47 = (1 - math.max(0, math.min(1, arg_112_0.hitFlash.t / (arg_112_0.hitFlash.dur or 0.16)))) * (var_0_2 and var_0_2.ui and var_0_2.ui.battle and var_0_2.ui.battle.hitFlashMaxAlpha or 0.6)
			local var_112_48 = var_0_79()

			if var_112_48 then
				love.graphics.setShader(var_112_48)
				var_112_48:send("u_color", {
					1,
					1,
					1,
					var_112_47
				})
				love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
				love.graphics.setShader()
			end
		end

		var_0_118(arg_112_0, arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
		love.graphics.setColor(var_112_37, var_112_38, var_112_39, var_112_40)
	end

	local var_112_49 = _G.ui
	local var_112_50 = false

	if var_112_49 and var_112_49.tooltip and var_112_49.tooltip.isHighlighted then
		if var_112_49.tooltip:isHighlighted(arg_112_0.isEnemy and "enemy" or "ally", arg_112_0) then
			var_112_50 = true
		elseif var_112_49.tooltip:isHighlighted("roster", arg_112_0) then
			var_112_50 = true
		end
	end

	if var_112_50 then
		local var_112_51 = arg_112_0.grade or "normal"
		local var_112_52 = {
			1,
			1,
			1,
			1
		}
		local var_112_53 = false

		if var_112_49.tooltip and var_112_49.tooltip._heldRef == arg_112_0 and var_112_49.tooltip._predTarget then
			var_112_53 = true
		end

		if var_112_53 then
			var_112_52 = {
				0.7,
				0.4,
				1,
				1
			}
		elseif arg_112_0.jackpot5th == true then
			var_112_52 = {
				prism = true
			}
		elseif var_112_51 == "advanced" then
			var_112_52 = {
				0.5,
				1,
				0.6,
				1
			}
		elseif var_112_51 == "rare" then
			var_112_52 = {
				0.5,
				0.8,
				1,
				1
			}
		elseif var_112_51 == "legendary" then
			var_112_52 = {
				1,
				0.9,
				0.4,
				1
			}
		end

		if var_112_49.tooltip.drawOutlineImage then
			var_112_49.tooltip:drawOutlineImage(arg_112_1, arg_112_3, arg_112_4, arg_112_6, arg_112_7, arg_112_8, arg_112_9, var_112_52, false, nil, nil, nil, nil, nil, arg_112_2, arg_112_0, var_0_114(arg_112_0, arg_112_1))
		end
	end

	if arg_112_0.reviving and not (arg_112_0.hitFlash and arg_112_0.hitFlash.t < (arg_112_0.hitFlash.dur or 0.16)) then
		local var_112_54 = love.timer.getTime()
		local var_112_55 = math.sin(var_112_54 * 22) * 0.5 + 0.5
		local var_112_56 = 0.2 + (arg_112_0.anim and arg_112_0.anim.reverse and 0.6 or 0.4) * var_112_55

		love.graphics.setBlendMode("add")

		local var_112_57 = 0.85 + 0.15 * love.math.noise(var_112_54 * 15)

		love.graphics.setColor(var_112_57, var_112_57, var_112_57 * 0.8, var_112_56)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
		love.graphics.setBlendMode("alpha")
	end

	if arg_112_0._overdriveActive then
		local var_112_58 = arg_112_0._overdriveAuraT or 0
		local var_112_59 = 0.28 + 0.42 * (math.sin(var_112_58 * 18) * 0.5 + 0.5)

		love.graphics.setBlendMode("add")
		love.graphics.setColor(1, 0.32, 0, var_112_59)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8 or 0, arg_112_9 or 0)
		love.graphics.setBlendMode("alpha")
	end

	if (arg_112_0.enlargeScale or 0) > 1.001 then
		local var_112_60 = love.timer.getTime()
		local var_112_61 = 0.05 + 0.15 * (math.sin(var_112_60 * 5) * 0.5 + 0.5)

		love.graphics.setBlendMode("add")
		love.graphics.setColor(1, 0.84, 0, var_112_61)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8 or 0, arg_112_9 or 0)
		love.graphics.setBlendMode("alpha")
	end

	var_0_121(arg_112_0, arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_6, arg_112_7, arg_112_8, arg_112_9)
	var_0_122(arg_112_0, arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_6, arg_112_7, arg_112_8, arg_112_9)

	if arg_112_0.side == "enemy" and var_0_47 > 0 then
		local var_112_62, var_112_63, var_112_64, var_112_65 = arg_112_2:getViewport()
		local var_112_66 = var_112_64 / 2
		local var_112_67 = var_112_65 / 2
		local var_112_68 = 0
		local var_112_69 = var_0_114(arg_112_0, arg_112_1)
		local var_112_70 = var_112_69 and var_112_69.quads and var_112_69.quads.idle and var_112_69.quads.idle[1] or arg_112_2
		local var_112_71, var_112_72, var_112_73 = var_0_115(var_112_69, var_112_70)

		if var_112_71 then
			local var_112_74

			var_112_66, var_112_74, var_112_68 = var_112_71, var_112_72, var_112_73
		end

		local var_112_75 = arg_112_3 + (var_112_66 - (arg_112_8 or 0)) * arg_112_6
		local var_112_76 = arg_112_4 + (var_112_68 - (arg_112_9 or 0)) * arg_112_7

		love.graphics.setLineStyle("smooth")

		for iter_112_0 = 1, 2 do
			local var_112_77 = 0.85
			local var_112_78 = (iter_112_0 - 1) * 0.5
			local var_112_79 = (arg_112_0.id or 0) * 0.1
			local var_112_80 = math.fmod(var_0_48 * var_112_77 + var_112_78 + var_112_79, 1)
			local var_112_81 = math.sin(var_112_80 * math.pi) * 0.8
			local var_112_82 = var_112_75 + (iter_112_0 - 1.5) * 10
			local var_112_83 = var_112_76 - 14 + var_112_80 * 15

			love.graphics.setColor(1, 0.35, 0.35, var_112_81)

			local var_112_84 = 1.2
			local var_112_85 = 3.5
			local var_112_86 = 5
			local var_112_87 = 3

			love.graphics.rectangle("fill", var_112_82 - var_112_84 / 2, var_112_83 - var_112_85 - var_112_87, var_112_84, var_112_85)
			love.graphics.polygon("fill", var_112_82 - var_112_86 / 2, var_112_83 - var_112_87, var_112_82 + var_112_86 / 2, var_112_83 - var_112_87, var_112_82, var_112_83)
		end

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.setLineStyle("rough")
		love.graphics.setBlendMode("alpha")
	end

	if arg_112_0.poison and arg_112_0.poison.dur and arg_112_0.poison.dur > 0 then
		local var_112_88 = love.timer.getTime()
		local var_112_89 = math.abs(arg_112_6 or 1)
		local var_112_90 = math.abs(arg_112_7 or 1)
		local var_112_91 = 0.2 + 0.3 * (math.sin(var_112_88 * 8) * 0.5 + 0.5)
		local var_112_92 = var_0_53()

		love.graphics.setShader(var_112_92)

		local var_112_93 = math.min(1, (arg_112_0.poisonStacks or 1) / 3)
		local var_112_94 = 1 - 0.95 * var_112_93
		local var_112_95 = 1 - 0.25 * var_112_93
		local var_112_96 = 1 - 0.95 * var_112_93

		var_112_92:send("u_tint", {
			var_112_94,
			var_112_95,
			var_112_96
		})
		love.graphics.setBlendMode("multiply", "premultiplied")
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8 or 0, arg_112_9 or 0)
		love.graphics.setShader()
		love.graphics.setBlendMode("add")
		love.graphics.setColor(0.02, 0.25 * var_112_93, 0.02, var_112_91)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8 or 0, arg_112_9 or 0)

		local var_112_97 = arg_112_3
		local var_112_98 = arg_112_4

		if not arg_112_0._visCenterXOff then
			local var_112_99, var_112_100, var_112_101, var_112_102 = arg_112_2:getViewport()

			var_112_97 = arg_112_3 + (var_112_101 * 0.5 - arg_112_8) * arg_112_6
			var_112_98 = arg_112_4 + (var_112_102 * 0.5 - arg_112_9) * arg_112_7
		else
			var_112_97 = arg_112_3 + arg_112_0._visCenterXOff
			var_112_98 = arg_112_4 + arg_112_0._visCenterYOff
		end

		local var_112_103 = 4
		local var_112_104 = (arg_112_0._visWidth or var_112_89 * 20) * 0.45

		for iter_112_1 = 1, var_112_103 do
			local var_112_105 = (var_112_88 * 0.55 + iter_112_1 * 0.25) % 1
			local var_112_106 = var_112_97 + math.sin(iter_112_1 * 15 + var_112_88 * 2.5) * var_112_104
			local var_112_107 = var_112_98 - var_112_105 * 22 * var_112_90
			local var_112_108 = math.max(1.5, math.floor(3 * (1 - var_112_105) * var_112_89 + 0.5))

			love.graphics.setColor(0.1, 0.8, 0.1, 0.7 * (1 - var_112_105))
			love.graphics.circle("fill", var_112_106, var_112_107, var_112_108 * 0.5)
			love.graphics.setColor(0.4, 1, 0.4, 0.5 * (1 - var_112_105))
			love.graphics.circle("fill", var_112_106, var_112_107, var_112_108 * 0.2)
		end

		love.graphics.setBlendMode("alpha")
	end

	if arg_112_0.poisonHitFlash then
		local var_112_109 = 0.8 * (1 - var_0_5(arg_112_0.poisonHitFlash.t / arg_112_0.poisonHitFlash.dur, 0, 1))
		local var_112_110 = var_0_79()

		if var_112_110 then
			love.graphics.setShader(var_112_110)
			var_112_110:send("u_color", {
				0.1,
				1,
				0.1,
				var_112_109
			})
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8 or 0, arg_112_9 or 0)
			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
		end
	end

	if arg_112_0.bleedHitFlash then
		local var_112_111 = 0.8 * (1 - var_0_5(arg_112_0.bleedHitFlash.t / arg_112_0.bleedHitFlash.dur, 0, 1))
		local var_112_112 = var_0_79()

		if var_112_112 then
			love.graphics.setShader(var_112_112)
			var_112_112:send("u_color", {
				0.95,
				0.02,
				0.1,
				var_112_111
			})
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8 or 0, arg_112_9 or 0)
			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
		end
	end

	if arg_112_0.selfDestructing and arg_112_0.selfDestructT and arg_112_0.selfDestructDur then
		local var_112_113 = var_0_5(arg_112_0.selfDestructT / arg_112_0.selfDestructDur, 0, 1) * 0.95
		local var_112_114 = var_0_79()

		if var_112_114 then
			love.graphics.setShader(var_112_114)
			var_112_114:send("u_color", {
				1,
				1,
				0.8,
				var_112_113
			})
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, arg_112_8 or 0, arg_112_9 or 0)
			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
		end
	end

	if arg_112_0 and (arg_112_0.stunT or 0) > 0 then
		local var_112_115, var_112_116, var_112_117, var_112_118 = love.graphics.getColor()
		local var_112_119 = arg_112_8 or 0
		local var_112_120 = arg_112_9 or 0

		love.graphics.setColor(0.55, 0.55, 0.7, 0.6 * var_112_118)
		love.graphics.draw(arg_112_1, arg_112_2, arg_112_3, arg_112_4, arg_112_5 or 0, arg_112_6, arg_112_7, var_112_119, var_112_120)

		local var_112_121 = love.timer.getTime() * 5
		local var_112_122, var_112_123, var_112_124, var_112_125 = arg_112_2:getViewport()
		local var_112_126

		var_112_126 = var_112_125 or 32

		local var_112_127 = math.abs(arg_112_7 or 1)
		local var_112_128 = arg_112_4 - var_112_120 * arg_112_7 - 6
		local var_112_129 = arg_112_0 and (arg_112_0.subclass == "플레어" or arg_112_0.subclassName == "플레어") and -2 or 0
		local var_112_130

		if arg_112_0 and arg_112_0.x then
			var_112_130 = math.floor(arg_112_0.x + var_112_129 + 0.5)
		else
			var_112_130 = arg_112_3 - var_112_119 * arg_112_6 + var_112_124 * 0.5 * arg_112_6
		end

		love.graphics.setColor(1, 0.9, 0.2, var_112_118)

		local var_112_131 = 14
		local var_112_132 = 5

		for iter_112_2 = 0, 2 do
			local var_112_133 = var_112_121 + iter_112_2 * (math.pi * 2 / 3)
			local var_112_134 = var_112_130 + math.cos(var_112_133) * var_112_131
			local var_112_135 = var_112_128 + math.sin(var_112_133) * var_112_132

			love.graphics.polygon("fill", var_112_134, var_112_135 - 3, var_112_134 + 2, var_112_135, var_112_134, var_112_135 + 3, var_112_134 - 2, var_112_135)
		end

		love.graphics.setColor(var_112_115, var_112_116, var_112_117, var_112_118)
	end

	if arg_112_0.sym == "W" and arg_112_0.invuln and not arg_112_0.dying and var_0_51(arg_112_0, "amplify") then
		local var_112_136 = arg_112_0.subclassName == "기사" or arg_112_0.subclass == "MiniSwordMan03" or arg_112_0.subclassKey == "MiniSwordMan03"

		if not arg_112_0._amplifyShieldStampStart then
			arg_112_0._amplifyShieldStampStart = love.timer.getTime()
		end

		local var_112_137, var_112_138, var_112_139, var_112_140 = arg_112_2:getViewport()
		local var_112_141 = love.timer.getTime()
		local var_112_142 = var_112_141 - arg_112_0._amplifyShieldStampStart
		local var_112_143 = 0.35
		local var_112_144 = 1

		if var_112_142 < var_112_143 then
			local var_112_145 = var_112_142 / var_112_143

			var_112_144 = 1 + math.exp(-var_112_145 * 8) * 0.7
		end

		local var_112_146 = 0

		if var_112_142 < 0.55 then
			var_112_146 = (1 - var_112_142 / 0.55) * 0.65
		end

		local var_112_147 = 0.55 + 0.2 * math.sin(var_112_141 * 6)
		local var_112_148 = var_112_139 * var_112_0
		local var_112_149 = var_112_140 * var_112_1
		local var_112_150 = arg_112_6 >= 0 and 1 or -1
		local var_112_151 = arg_112_3 + (var_112_139 * 0.5 - (arg_112_8 or 0)) * arg_112_6
		local var_112_152 = arg_112_4 + (var_112_140 * 0.42 - (arg_112_9 or 0)) * arg_112_7
		local var_112_153 = var_112_151 + var_112_150 * var_112_148 * 0.12
		local var_112_154 = var_112_152 + var_112_149 * 0.42
		local var_112_155 = 1
		local var_112_156 = arg_112_0.imprints or arg_112_0.imps or arg_112_0.unit and (arg_112_0.unit.imprints or arg_112_0.unit.imps)

		if var_112_156 then
			for iter_112_3, iter_112_4 in pairs(var_112_156) do
				if iter_112_4 and iter_112_4.id == "amplify" then
					var_112_155 = tonumber(iter_112_4.level) or 1

					break
				end
			end
		end

		local var_112_157 = 1 + (var_112_155 - 1) * 0.1
		local var_112_158 = var_112_148 * 0.05 * var_112_144 * var_112_157
		local var_112_159 = var_112_149 * 0.24 * var_112_144 * var_112_157
		local var_112_160 = {
			var_112_153 - var_112_158,
			var_112_154 - var_112_159,
			var_112_153 + var_112_158,
			var_112_154 - var_112_159,
			var_112_153 + var_112_158,
			var_112_154 + var_112_159 * 0.65,
			var_112_153 - var_112_158,
			var_112_154 + var_112_159 * 0.5
		}

		love.graphics.setBlendMode("alpha")

		if var_112_136 then
			local var_112_161 = {
				var_112_153 - var_112_158,
				var_112_154 - var_112_159,
				var_112_153 + var_112_158,
				var_112_154 - var_112_159,
				var_112_153 + var_112_158,
				var_112_154 + var_112_159 * 0.6,
				var_112_153,
				var_112_154 + var_112_159 * 0.82,
				var_112_153 - var_112_158,
				var_112_154 + var_112_159 * 0.6
			}
			local var_112_162 = 0.75 + var_112_147 * 0.25

			love.graphics.setColor(1, 0.78, 0.78, var_112_162)
			love.graphics.polygon("fill", var_112_161)

			if var_112_146 > 0 then
				love.graphics.setColor(1, 0.88, 0.88, var_112_146)
				love.graphics.polygon("fill", var_112_161)
			end
		else
			love.graphics.setColor(1, 1, 1, 0.7 + var_112_147 * 0.3)
			love.graphics.polygon("fill", var_112_160)

			if var_112_146 > 0 then
				love.graphics.setColor(1, 1, 1, var_112_146)
				love.graphics.polygon("fill", var_112_160)
			end
		end

		love.graphics.setColor(1, 1, 1, 1)
	else
		arg_112_0._amplifyShieldStampStart = nil
	end

	if not arg_112_0._useManualCleanup and arg_112_0._render2Pushed then
		love.graphics.pop()

		arg_112_0._render2Pushed = false
	end
end

function var_0_0.drawRosterSpawnScreenEdgeGlow(arg_113_0, arg_113_1)
	if not arg_113_0 or not arg_113_0.rosterUnits then
		return
	end

	local var_113_0
	local var_113_1 = -1

	for iter_113_0, iter_113_1 in ipairs(arg_113_0.rosterUnits) do
		if iter_113_1 and iter_113_1.firstSpawnSheetFx then
			local var_113_2 = iter_113_1.firstSpawnSheetFx
			local var_113_3 = var_113_2.frameDur or 0.0875
			local var_113_4 = math.max(1, var_113_2.frames or 8)
			local var_113_5 = math.max(0.0001, var_113_3 * var_113_4)
			local var_113_6 = var_0_5((var_113_2.t or 0) / var_113_5, 0, 1)
			local var_113_7 = math.sin(math.pi * var_113_6)

			if var_113_1 < var_113_7 then
				var_113_1 = var_113_7
				var_113_0 = iter_113_1
			end
		end
	end

	if not var_113_0 or var_113_1 < 0.03 then
		return
	end

	local var_113_8 = arg_113_1 and arg_113_1.battle and arg_113_1.battle.absorb or arg_113_1 and arg_113_1.absorb or {}
	local var_113_9 = var_113_0.grade == "prism"
	local var_113_10 = var_0_54(var_113_0.grade)
	local var_113_11 = var_113_10.hi[1] * 0.32 + var_113_10.glow[1] * 0.68
	local var_113_12 = var_113_10.hi[2] * 0.32 + var_113_10.glow[2] * 0.68
	local var_113_13 = var_113_10.hi[3] * 0.32 + var_113_10.glow[3] * 0.68

	if var_113_9 then
		var_113_11, var_113_12, var_113_13 = 0.74, 0.48, 1
	end

	local var_113_14 = arg_113_1 and arg_113_1.virtual and arg_113_1.virtual.W
	local var_113_15 = arg_113_1 and arg_113_1.virtual and arg_113_1.virtual.H

	if not var_113_14 or not var_113_15 then
		var_113_14, var_113_15 = love.graphics.getDimensions()
	end

	local var_113_16 = math.floor(var_113_14 + 0.5)
	local var_113_17 = math.floor(var_113_15 + 0.5)
	local var_113_18 = var_0_67(var_113_16, var_113_17)

	if not var_113_18 then
		return
	end

	local var_113_19 = var_113_18:getWidth()
	local var_113_20 = var_113_18:getHeight()

	if var_113_19 <= 0 or var_113_20 <= 0 then
		return
	end

	local var_113_21 = 2
	local var_113_22 = -var_113_21
	local var_113_23 = -var_113_21
	local var_113_24 = (var_113_16 + var_113_21 * 2) / var_113_16
	local var_113_25 = (var_113_17 + var_113_21 * 2) / var_113_17
	local var_113_26 = (var_113_8.glowMaxRadiusPx or 15) + 16
	local var_113_27 = math.max(1.5, (var_113_8.glowFalloff or 1) * 1.55)
	local var_113_28 = (var_113_8.glowAlpha or 0.9) * var_113_1 * 1.12
	local var_113_29 = (var_113_8.innerTintAlpha or 0.25) * var_113_1 * 1.1
	local var_113_30 = var_0_69(var_113_16, var_113_17, var_113_26, var_113_27)

	if not var_113_30 then
		return
	end

	local var_113_31, var_113_32 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setShader()
	love.graphics.setColor(var_113_11, var_113_12, var_113_13, var_113_29)
	love.graphics.draw(var_113_18, var_113_22, var_113_23, 0, var_113_24, var_113_25)
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.setBlendMode("add", "alphamultiply")

	local var_113_33 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_113_34 = var_113_8.glowPulseHz or 1.2
	local var_113_35 = 0.6 + 0.4 * (math.sin(2 * math.pi * var_113_34 * var_113_33) * 0.5 + 0.5)
	local var_113_36 = var_113_9 and var_0_56() or nil

	if var_113_36 then
		love.graphics.setShader(var_113_36)
		var_113_36:send("u_time", var_113_33 % 10000)
		var_113_36:send("baseAlpha", var_113_28)
		var_113_36:send("pulse", var_113_35)
		love.graphics.setColor(1, 1, 1, 1)
	else
		love.graphics.setShader()
		love.graphics.setColor(var_113_11, var_113_12, var_113_13, var_113_28 * var_113_35)
	end

	love.graphics.draw(var_113_30, var_113_22, var_113_23, 0, var_113_24, var_113_25)
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.setShader()

	if var_113_32 ~= nil then
		love.graphics.setBlendMode(var_113_31, var_113_32)
	else
		love.graphics.setBlendMode(var_113_31)
	end
end

function var_0_0.drawOverdriveState(arg_114_0, arg_114_1, arg_114_2)
	if not arg_114_1 or not arg_114_1.allies then
		return
	end

	for iter_114_0, iter_114_1 in ipairs(var_0_7) do
		if iter_114_1.type == "slice" then
			local var_114_0 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_1 = 0.9 * (1 - var_114_0 * var_114_0)
			local var_114_2 = 24 + var_114_0 * 12
			local var_114_3 = 7 * (1 - var_114_0)

			love.graphics.push()
			love.graphics.translate(iter_114_1.x, iter_114_1.y)
			love.graphics.setBlendMode("add")
			;(function(arg_115_0)
				love.graphics.push()
				love.graphics.rotate(arg_115_0)
				love.graphics.setColor(0.5, 0.05, 0.8, var_114_1 * 0.4)
				love.graphics.polygon("fill", -var_114_2 / 2, 0, 0, -var_114_3 / 1.2, var_114_2 / 2, 0, 0, var_114_3 / 1.2)
				love.graphics.setColor(0.7, 0.15, 0.95, var_114_1)
				love.graphics.polygon("fill", -var_114_2 / 2.2, 0, 0, -var_114_3 / 2.5, var_114_2 / 2.2, 0, 0, var_114_3 / 2.5)
				love.graphics.setColor(1, 1, 1, var_114_1 * 0.9)
				love.graphics.rectangle("fill", math.floor(-var_114_2 / 2 + 0.5), -0.5, math.floor(var_114_2 + 0.5), 1)
				love.graphics.pop()
			end)(-math.pi * 0.25)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_114_1.type == "soul_extract" then
			local var_114_4 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_5 = 1 - var_114_4 * var_114_4
			local var_114_6 = var_114_4 < 0.2 and var_114_4 / 0.2 or (1 - (var_114_4 - 0.2) / 0.8)^2
			local var_114_7 = math.floor(20 * var_114_6 + 0.5)
			local var_114_8 = math.floor(4 * var_114_6 + 0.5)

			love.graphics.push()
			love.graphics.translate(iter_114_1.x, iter_114_1.y)
			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.5, 0.05, 0.8, var_114_5 * 0.4)
			love.graphics.polygon("fill", -var_114_7 * 1.2, 0, 0, -var_114_8 * 1.5, var_114_7 * 1.2, 0, 0, var_114_8 * 1.5)
			love.graphics.setColor(0.75, 0.25, 1, var_114_5)
			love.graphics.polygon("fill", -var_114_7, 0, 0, -var_114_8, var_114_7, 0, 0, var_114_8)
			love.graphics.polygon("fill", -var_114_8, 0, 0, -var_114_7 * 0.6, var_114_8, 0, 0, var_114_7 * 0.6)
			love.graphics.setColor(1, 1, 1, var_114_5 * 0.9)

			local var_114_9 = math.floor(3 * var_114_6 + 0.5)

			love.graphics.rectangle("fill", -var_114_9, 0, var_114_9 * 2, 1)
			love.graphics.rectangle("fill", 0, -var_114_9, 1, var_114_9 * 2)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_114_1.type == "knockback" then
			local var_114_10 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_11 = 0.9 * (1 - var_114_10)
			local var_114_12 = math.floor(1 + var_114_10 * 10 + 0.5)
			local var_114_13 = math.floor(iter_114_1.x + 0.5)
			local var_114_14 = math.floor(iter_114_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.5, 0.7, 1, var_114_11)
			love.graphics.rectangle("fill", var_114_13 - var_114_12, var_114_14, var_114_12 * 2, 1)
			love.graphics.rectangle("fill", var_114_13, var_114_14 - var_114_12, 1, var_114_12 * 2)

			local var_114_15 = math.floor(var_114_12 * 0.4 + 0.5)

			love.graphics.setColor(1, 1, 1, var_114_11)
			love.graphics.rectangle("fill", var_114_13 - var_114_15, var_114_14, var_114_15 * 2, 1)
			love.graphics.rectangle("fill", var_114_13, var_114_14 - var_114_15, 1, var_114_15 * 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "bash" then
			local var_114_16 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_17 = 1 * (1 - var_114_16)
			local var_114_18 = math.floor(1 + var_114_16 * 8 + 0.5)
			local var_114_19 = math.floor(iter_114_1.x + 0.5)
			local var_114_20 = math.floor(iter_114_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 0.9, 0.3, var_114_17)
			love.graphics.rectangle("fill", var_114_19 - var_114_18, var_114_20, var_114_18 * 2, 1)
			love.graphics.rectangle("fill", var_114_19, var_114_20 - var_114_18, 1, var_114_18 * 2)
			love.graphics.rectangle("fill", var_114_19 - var_114_18 + 2, var_114_20 - var_114_18 + 2, 1, 1)
			love.graphics.rectangle("fill", var_114_19 + var_114_18 - 2, var_114_20 - var_114_18 + 2, 1, 1)
			love.graphics.rectangle("fill", var_114_19 - var_114_18 + 2, var_114_20 + var_114_18 - 2, 1, 1)
			love.graphics.rectangle("fill", var_114_19 + var_114_18 - 2, var_114_20 + var_114_18 - 2, 1, 1)
			love.graphics.setColor(1, 1, 1, var_114_17)
			love.graphics.rectangle("fill", var_114_19 - 1, var_114_20 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "bleed_slash" then
			local var_114_21 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_22 = 0.9 * (1 - var_114_21 * var_114_21)
			local var_114_23 = 24 + var_114_21 * 12
			local var_114_24 = 7 * (1 - var_114_21)

			love.graphics.push()
			love.graphics.translate(iter_114_1.x, iter_114_1.y)
			love.graphics.setBlendMode("add")

			local function var_114_25(arg_116_0)
				love.graphics.push()
				love.graphics.rotate(arg_116_0)
				love.graphics.setColor(1, 0.05, 0.15, var_114_22 * 0.4)
				love.graphics.polygon("fill", -var_114_23 / 2, 0, 0, -var_114_24 / 1.2, var_114_23 / 2, 0, 0, var_114_24 / 1.2)
				love.graphics.setColor(1, 0.15, 0.25, var_114_22)
				love.graphics.polygon("fill", -var_114_23 / 2.2, 0, 0, -var_114_24 / 2.5, var_114_23 / 2.2, 0, 0, var_114_24 / 2.5)
				love.graphics.setColor(1, 1, 1, var_114_22 * 0.9)
				love.graphics.rectangle("fill", math.floor(-var_114_23 / 2 + 0.5), -0.5, math.floor(var_114_23 + 0.5), 1)
				love.graphics.pop()
			end

			var_114_25(math.pi * 0.25)
			var_114_25(-math.pi * 0.25)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_114_1.type == "bleed_tick" then
			local var_114_26 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_27 = 1 * (1 - var_114_26)
			local var_114_28 = math.floor(2 + var_114_26 * 5 + 0.5)
			local var_114_29 = math.floor(iter_114_1.x + 0.5)
			local var_114_30 = math.floor(iter_114_1.y + var_114_26 * 3 + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 0.05, 0.1, var_114_27 * 0.9)
			love.graphics.rectangle("fill", var_114_29 - var_114_28, var_114_30, var_114_28 * 2, 1)
			love.graphics.rectangle("fill", var_114_29, var_114_30 - var_114_28, 1, var_114_28 * 2)
			love.graphics.setColor(1, 0.6, 0.6, var_114_27)
			love.graphics.rectangle("fill", var_114_29 - 1, var_114_30 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "poison_tick" then
			local var_114_31 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_32 = 1 * (1 - var_114_31)
			local var_114_33 = math.floor(3 + var_114_31 * 6 + 0.5)
			local var_114_34 = math.floor(iter_114_1.x + 0.5)
			local var_114_35 = math.floor(iter_114_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0, 1, 0, var_114_32 * 0.9)
			love.graphics.rectangle("fill", var_114_34 - var_114_33, var_114_35, var_114_33 * 2, 1)
			love.graphics.rectangle("fill", var_114_34, var_114_35 - var_114_33, 1, var_114_33 * 2)
			love.graphics.setColor(0.9, 1, 0.9, var_114_32)
			love.graphics.rectangle("fill", var_114_34 - 1, var_114_35 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "blood_surge_hit" then
			local var_114_36 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_37 = 0.95 * (1 - var_114_36 * var_114_36)
			local var_114_38 = 10 + var_114_36 * 8
			local var_114_39 = 5 * (1 - var_114_36)
			local var_114_40 = math.floor(iter_114_1.x + 0.5)
			local var_114_41 = math.floor(iter_114_1.y + 0.5)

			love.graphics.push()
			love.graphics.translate(var_114_40, var_114_41)
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 0.05, 0.1, var_114_37 * 0.5)
			love.graphics.polygon("fill", -var_114_38 / 2, 0, 0, -var_114_39 / 1.5, var_114_38 / 2, 0, 0, var_114_39 / 1.5)

			for iter_114_2, iter_114_3 in ipairs({
				math.pi * 0.22,
				-math.pi * 0.22
			}) do
				love.graphics.push()
				love.graphics.rotate(iter_114_3)
				love.graphics.setColor(1, 0.12, 0.18, var_114_37)
				love.graphics.polygon("fill", -var_114_38 / 2.2, 0, 0, -var_114_39 / 2.8, var_114_38 / 2.2, 0, 0, var_114_39 / 2.8)
				love.graphics.setColor(1, 0.85, 0.85, var_114_37 * 0.85)
				love.graphics.rectangle("fill", math.floor(-var_114_38 / 2 + 0.5), -0.5, math.floor(var_114_38 + 0.5), 1)
				love.graphics.pop()
			end

			love.graphics.setColor(1, 1, 1, var_114_37 * 0.9)
			love.graphics.rectangle("fill", var_114_40 - 1 - var_114_40, var_114_41 - 1 - var_114_41, 2, 2)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_114_1.type == "blood_price_tick" then
			local var_114_42 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_43 = 0.95 * (1 - var_114_42)
			local var_114_44 = math.floor(4 + var_114_42 * 7 + 0.5)
			local var_114_45 = math.floor(iter_114_1.x + 0.5)
			local var_114_46 = math.floor(iter_114_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.65, 0.02, 0.06, var_114_43 * 0.85)
			love.graphics.rectangle("fill", var_114_45 - var_114_44, var_114_46, var_114_44 * 2, 1)
			love.graphics.rectangle("fill", var_114_45, var_114_46 - var_114_44, 1, var_114_44 * 2)
			love.graphics.setColor(1, 0.1, 0.14, var_114_43 * 0.55)
			love.graphics.rectangle("fill", var_114_45 - var_114_44 + 1, var_114_46 - var_114_44 + 1, 1, 1)
			love.graphics.rectangle("fill", var_114_45 + var_114_44 - 1, var_114_46 - var_114_44 + 1, 1, 1)
			love.graphics.rectangle("fill", var_114_45 - var_114_44 + 1, var_114_46 + var_114_44 - 1, 1, 1)
			love.graphics.rectangle("fill", var_114_45 + var_114_44 - 1, var_114_46 + var_114_44 - 1, 1, 1)

			local var_114_47 = 4 + var_114_42 * 6

			love.graphics.setColor(0.9, 0.08, 0.1, var_114_43 * 0.35)
			love.graphics.circle("line", var_114_45, var_114_46, var_114_47)
			love.graphics.setColor(1, 0.85, 0.85, var_114_43 * 0.9)
			love.graphics.rectangle("fill", var_114_45 - 1, var_114_46 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "blood_mist" then
			local var_114_48 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_49 = (1 - var_114_48)^1.6
			local var_114_50 = iter_114_1.s or 1
			local var_114_51 = math.floor(iter_114_1.x + 0.5)
			local var_114_52 = math.floor(iter_114_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.45, 0.01, 0.03, var_114_49 * 0.85)

			local var_114_53 = (10 + 18 * var_114_48) * var_114_50

			love.graphics.circle("fill", var_114_51, var_114_52, var_114_53)
			love.graphics.setColor(1, 0.1, 0.14, var_114_49 * 0.55)

			local var_114_54 = (6 + 10 * var_114_48) * var_114_50

			love.graphics.circle("fill", var_114_51, var_114_52, var_114_54)
			love.graphics.setColor(1, 0.18, 0.2, var_114_49 * 0.55)

			local var_114_55 = (14 + 22 * var_114_48) * var_114_50

			love.graphics.rectangle("fill", var_114_51 - var_114_55, var_114_52, var_114_55 * 2, 1)
			love.graphics.rectangle("fill", var_114_51, var_114_52 - var_114_55, 1, var_114_55 * 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "blood_axe_trail" then
			local var_114_56 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_57 = 0.95 * (1 - var_114_56 * var_114_56)
			local var_114_58 = iter_114_1.x
			local var_114_59 = iter_114_1.y
			local var_114_60 = (iter_114_1.dir or 1) >= 0 and 1 or -1

			love.graphics.push()
			love.graphics.translate(var_114_58, var_114_59)
			love.graphics.setBlendMode("add")

			local var_114_61 = 64 + var_114_56 * 18
			local var_114_62 = 18 * (1 - var_114_56) + 6
			local var_114_63 = var_114_60 * (-math.pi * 0.33)

			love.graphics.rotate(var_114_63)
			love.graphics.setColor(0.2, 0, 0.02, var_114_57 * 0.55)
			love.graphics.polygon("fill", -var_114_61 / 2, 0, 0, -var_114_62, var_114_61 / 2, 0, 0, var_114_62)
			love.graphics.setColor(0.65, 0.02, 0.06, var_114_57 * 0.7)
			love.graphics.polygon("fill", -var_114_61 / 2.2, 0, 0, -var_114_62 / 1.8, var_114_61 / 2.2, 0, 0, var_114_62 / 1.8)
			love.graphics.setColor(1, 0.12, 0.16, var_114_57 * 0.4)
			love.graphics.rectangle("fill", math.floor(-var_114_61 / 2 + 0.5), -1, math.floor(var_114_61 + 0.5), 2)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_114_1.type == "blood_price_hit_x" then
			local var_114_64 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_65 = 0.98 * (1 - var_114_64 * var_114_64)
			local var_114_66 = iter_114_1.s or 1
			local var_114_67 = math.floor(iter_114_1.x + 0.5)
			local var_114_68 = math.floor(iter_114_1.y + 0.5)

			love.graphics.push()
			love.graphics.translate(var_114_67, var_114_68)
			love.graphics.setBlendMode("add")

			local var_114_69 = (30 + var_114_64 * 10) * var_114_66
			local var_114_70 = 10 * (1 - var_114_64) * var_114_66 + 2

			for iter_114_4, iter_114_5 in ipairs({
				math.pi * 0.25,
				-math.pi * 0.25
			}) do
				love.graphics.push()
				love.graphics.rotate(iter_114_5)
				love.graphics.setColor(0.25, 0, 0.02, var_114_65 * 0.45)
				love.graphics.polygon("fill", -var_114_69 / 2, 0, 0, -var_114_70, var_114_69 / 2, 0, 0, var_114_70)
				love.graphics.setColor(1, 0.06, 0.1, var_114_65 * 0.75)
				love.graphics.polygon("fill", -var_114_69 / 2.2, 0, 0, -var_114_70 / 1.8, var_114_69 / 2.2, 0, 0, var_114_70 / 1.8)
				love.graphics.setColor(1, 0.85, 0.85, var_114_65 * 0.65)
				love.graphics.rectangle("fill", math.floor(-var_114_69 / 2 + 0.5), -1, math.floor(var_114_69 + 0.5), 2)
				love.graphics.pop()
			end

			love.graphics.setColor(1, 1, 1, var_114_65 * 0.85)
			love.graphics.rectangle("fill", -2, -2, 4, 4)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_114_1.type == "ruin_tick" then
			local var_114_71 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_72 = 1 * (1 - var_114_71)
			local var_114_73 = math.floor(4 + var_114_71 * 8 + 0.5)
			local var_114_74 = math.floor(iter_114_1.x + 0.5)
			local var_114_75 = math.floor(iter_114_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.7, 0.1, 1, var_114_72 * 0.9)

			for iter_114_6 = -1, 1, 2 do
				for iter_114_7 = -1, 1, 2 do
					love.graphics.rectangle("fill", var_114_74 + var_114_73 * 0.3 * iter_114_6 - 1, var_114_75 + var_114_73 * 0.3 * iter_114_7 - 1, 2, 2)
				end
			end

			love.graphics.rectangle("fill", var_114_74 - var_114_73, var_114_75, var_114_73 * 2, 1)
			love.graphics.rectangle("fill", var_114_74, var_114_75 - var_114_73, 1, var_114_73 * 2)
			love.graphics.setColor(1, 0.4, 0.8, var_114_72)
			love.graphics.rectangle("fill", var_114_74 - 1, var_114_75 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "explosion" then
			if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ExplosionEffect then
				local var_114_76 = var_0_1.projectiles.ExplosionEffect
				local var_114_77 = math.floor(iter_114_1.t / iter_114_1.dur * var_114_76.frames) + 1

				if var_114_77 < 1 then
					var_114_77 = 1
				end

				if var_114_77 > var_114_76.frames then
					var_114_77 = var_114_76.frames
				end

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_114_76.image, var_114_76.quads[var_114_77], math.floor(iter_114_1.x), math.floor(iter_114_1.y), 0, 2, 2, var_114_76.frameW / 2, var_114_76.frameH / 2)
			end

			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "fire_cone" then
			if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.FireCone then
				local var_114_78 = var_0_1.projectiles.FireCone
				local var_114_79 = math.floor(iter_114_1.t / iter_114_1.dur * var_114_78.frames) + 1

				if var_114_79 < 1 then
					var_114_79 = 1
				end

				if var_114_79 > var_114_78.frames then
					var_114_79 = var_114_78.frames
				end

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_114_78.image, var_114_78.quads[var_114_79], math.floor(iter_114_1.x), math.floor(iter_114_1.y + 1), 0, 2, 2, var_114_78.frameW / 2, var_114_78.frameH / 2)
			end
		elseif iter_114_1.type == "meteor" then
			if iter_114_1.t < iter_114_1.fallDur then
				if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.MeteorFall then
					local var_114_80 = var_0_1.projectiles.MeteorFall
					local var_114_81 = iter_114_1.t / iter_114_1.fallDur
					local var_114_82 = math.floor(var_114_81 * var_114_80.frames) + 1
					local var_114_83 = math.max(1, math.min(var_114_80.frames, var_114_82))
					local var_114_84 = -450
					local var_114_85 = 15
					local var_114_86 = iter_114_1.x
					local var_114_87 = iter_114_1.y + var_114_85 + var_114_84 * (1 - var_114_81)

					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_114_80.image, var_114_80.quads[var_114_83], math.floor(var_114_86), math.floor(var_114_87), 0, 1.2, 1.2, var_114_80.frameW / 2, var_114_80.frameH / 2)
				end
			elseif var_0_1 and var_0_1.projectiles and var_0_1.projectiles.MeteorGround then
				local var_114_88 = var_0_1.projectiles.MeteorGround
				local var_114_89 = (iter_114_1.t - iter_114_1.fallDur) / iter_114_1.groundDur
				local var_114_90 = math.floor(var_114_89 * var_114_88.frames) + 1
				local var_114_91 = math.max(1, math.min(var_114_88.frames, var_114_90))
				local var_114_92 = 15

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_114_88.image, var_114_88.quads[var_114_91], math.floor(iter_114_1.x), math.floor(iter_114_1.y + var_114_92), 0, 1.2, 1.2, var_114_88.frameW / 2, var_114_88.frameH / 2)
			end
		elseif iter_114_1.type == "chain" then
			local var_114_93 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_94 = 1 - var_114_93
			local var_114_95 = math.floor(iter_114_1.x1 + 0.5)
			local var_114_96 = math.floor(iter_114_1.y1 + 0.5)
			local var_114_97 = math.floor(iter_114_1.x2 + 0.5)
			local var_114_98 = math.floor(iter_114_1.y2 + 0.5)
			local var_114_99, var_114_100 = love.graphics.getBlendMode()
			local var_114_101 = love.graphics.getLineWidth()
			local var_114_102, var_114_103, var_114_104, var_114_105 = love.graphics.getColor()

			love.graphics.setBlendMode("add")

			local var_114_106 = var_0_5(var_114_93 / 0.35, 0, 1)
			local var_114_107 = var_0_5((var_114_93 - 0.15) / 0.35, 0, 1)
			local var_114_108 = var_114_95 + (var_114_97 - var_114_95) * var_114_106
			local var_114_109 = var_114_96 + (var_114_98 - var_114_96) * var_114_106
			local var_114_110 = var_114_95 + (var_114_97 - var_114_95) * var_114_107
			local var_114_111 = var_114_96 + (var_114_98 - var_114_96) * var_114_107
			local var_114_112 = love.timer.getTime()
			local var_114_113 = iter_114_1.x1 + iter_114_1.y1 + math.floor(var_114_93 * 15)
			local var_114_114 = math.sin(var_114_112 * 70 + var_114_113) * 1.5
			local var_114_115 = math.cos(var_114_112 * 75 + var_114_113) * 1.5

			love.graphics.setColor(1, 0.85, 0.1, var_114_94 * 0.7)
			love.graphics.setLineWidth(4)
			love.graphics.line(var_114_110, var_114_111, var_114_108 + var_114_114, var_114_109 + var_114_115)
			love.graphics.setColor(1, 1, 1, var_114_94)
			love.graphics.setLineWidth(1.8)
			love.graphics.line(var_114_110, var_114_111, var_114_108 + var_114_114, var_114_109 + var_114_115)

			if var_114_106 > 0 and var_114_106 < 1 then
				local var_114_116 = 4.5

				love.graphics.setColor(1, 1, 1, var_114_94)
				love.graphics.rectangle("fill", var_114_108 - 1.7 + var_114_114, var_114_109 - 1.7 + var_114_115, var_114_116, var_114_116)
				love.graphics.setColor(1, 0.8, 0, var_114_94 * 0.5)
				love.graphics.rectangle("fill", var_114_108 - 0.7 + var_114_114 * 0.5, var_114_109 - 0.7 + var_114_115 * 0.5, 3, 3)
			end

			if var_114_106 >= 1 then
				local var_114_117 = 0.5
				local var_114_118 = var_0_5((var_114_93 - 0.35) / var_114_117, 0, 1)

				if var_114_118 < 1 then
					local var_114_119 = 1 - (1 - var_114_118) * (1 - var_114_118)
					local var_114_120 = math.floor((1 - var_114_119) * 12 + 0.5)

					love.graphics.setColor(1, 1, 1, (1 - var_114_119) * var_114_94)

					if var_114_120 > 0 then
						love.graphics.rectangle("fill", var_114_97 - var_114_120 / 2, var_114_98 - var_114_120 / 2, var_114_120, var_114_120)
					end

					local var_114_121 = math.floor((1 - var_114_119) * 8 + 0.5)

					if var_114_121 > 0 then
						love.graphics.line(var_114_97 - var_114_121, var_114_98 - var_114_121, var_114_97 + var_114_121, var_114_98 + var_114_121)
						love.graphics.line(var_114_97 + var_114_121, var_114_98 - var_114_121, var_114_97 - var_114_121, var_114_98 + var_114_121)
					end
				end
			end

			if var_114_100 ~= nil then
				love.graphics.setBlendMode(var_114_99, var_114_100)
			else
				love.graphics.setBlendMode(var_114_99)
			end

			love.graphics.setLineWidth(var_114_101 or 1)
			love.graphics.setColor(var_114_102, var_114_103, var_114_104, var_114_105)
		elseif iter_114_1.type == "execute" then
			if iter_114_1.icon then
				love.graphics.setColor(1, 1, 1, 1)

				local var_114_122 = iter_114_1.t
				local var_114_123 = iter_114_1.dur
				local var_114_124 = 2
				local var_114_125 = var_114_124
				local var_114_126 = 0.5
				local var_114_127 = 0

				if var_114_122 < 0.15 then
					var_114_125 = var_114_124 * (0.5 + var_114_122 / 0.15 * 0.7)
				elseif var_114_122 < 0.25 then
					var_114_125 = var_114_124 * (1.2 - (var_114_122 - 0.15) / 0.1 * 0.2)
				else
					var_114_125 = var_114_124
				end

				local var_114_128 = -15 * (var_114_122 / var_114_123)

				if var_114_122 > var_114_123 - 0.3 then
					var_114_126 = 0.5 * (1 - (var_114_122 - (var_114_123 - 0.3)) / 0.3)
				end

				love.graphics.setColor(1, 1, 1, var_114_126)

				local var_114_129, var_114_130 = iter_114_1.icon:getDimensions()

				love.graphics.draw(iter_114_1.icon, math.floor(iter_114_1.x - 6), math.floor(iter_114_1.y + var_114_128 - 25), 0, var_114_125, var_114_125, math.floor(var_114_129 / 2), math.floor(var_114_130 / 2))
				love.graphics.setColor(1, 1, 1, 1)
			end
		elseif iter_114_1.type == "lifesteal" then
			local var_114_131 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_132 = 1 * (1 - var_114_131 * var_114_131)

			love.graphics.setBlendMode("add")

			local var_114_133 = iter_114_1.pData or {}

			for iter_114_8 = 1, 5 do
				local var_114_134 = var_114_133[iter_114_8]

				if var_114_134 then
					local var_114_135 = var_0_5((iter_114_1.t - var_114_134.startOffset) / (iter_114_1.dur * 0.7 * var_114_134.speedMult), 0, 1)

					if var_114_135 > 0 and var_114_135 < 1 then
						local var_114_136 = var_114_132 * (1 - var_114_135 * 0.15)
						local var_114_137 = var_114_135 * var_114_135 * (3 - 2 * var_114_135)
						local var_114_138 = iter_114_1.x1 + var_114_134.noiseX + (iter_114_1.x2 - iter_114_1.x1) * var_114_137
						local var_114_139 = iter_114_1.y1 + var_114_134.noiseY + (iter_114_1.y2 - iter_114_1.y1) * var_114_137
						local var_114_140 = math.sin(var_114_135 * math.pi) * var_114_134.jitterAmp + math.cos(var_114_135 * var_114_134.jitterFreq) * (var_114_134.jitterAmp * 0.3)

						love.graphics.setColor(1, 0, 0, var_114_136 * 0.95)
						love.graphics.rectangle("fill", math.floor(var_114_138 - 1.5), math.floor(var_114_139 - 1.5 + var_114_140), 4, 4)
						love.graphics.setColor(1, 0.5, 0.5, var_114_136)
						love.graphics.rectangle("fill", math.floor(var_114_138 - 0.5), math.floor(var_114_139 - 0.5 + var_114_140), 2, 2)
					end
				end
			end

			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "arcane_core" then
			if not _G._arcaneCoreLogged then
				print("[ARCANE_CORE] Rendering at", iter_114_1.x, iter_114_1.y, "State:", iter_114_1.state)

				_G._arcaneCoreLogged = true
			end

			if iter_114_1.state == nil then
				iter_114_1.state = "spawn"
				iter_114_1.stateT = 0
			end

			iter_114_1.stateT = iter_114_1.stateT + love.timer.getDelta()

			local var_114_141 = 1

			if iter_114_1.state == "spawn" then
				local var_114_142 = math.floor(iter_114_1.stateT / 0.08)

				if var_114_142 >= 5 then
					iter_114_1.state = "idle"
					iter_114_1.stateT = 0
				else
					var_114_141 = 1 + var_114_142
				end
			elseif iter_114_1.state == "idle" then
				var_114_141 = 11 + math.floor(iter_114_1.stateT / 0.12) % 5
				iter_114_1.canDamage = true

				if iter_114_1.stateT >= (iter_114_1.dur or 2) then
					iter_114_1.state = "explode"
					iter_114_1.stateT = 0
					iter_114_1.canDamage = false
				end
			elseif iter_114_1.state == "explode" then
				local var_114_143 = math.floor(iter_114_1.stateT / 0.08)

				if var_114_143 >= 5 then
					iter_114_1.alive = false
				else
					var_114_141 = 6 + var_114_143
				end
			end

			love.graphics.setBlendMode("alpha")

			local var_114_144 = var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ArcaneCore

			if var_114_144 then
				local var_114_145 = var_114_144.quads[var_114_141]

				if var_114_145 then
					love.graphics.draw(var_114_144.image, var_114_145, math.floor(iter_114_1.x), math.floor(iter_114_1.y), 0, 2, 2, 8, 8)
				end
			end
		elseif iter_114_1.type == "shadow_suck" then
			local var_114_146 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)

			love.graphics.setBlendMode("alpha")

			local var_114_147 = {
				0.25,
				0.08,
				0.4
			}
			local var_114_148 = {
				0.7,
				0.25,
				0.9
			}
			local var_114_149 = {
				0.95,
				0.8,
				1
			}
			local var_114_150 = iter_114_1.pData or {}

			for iter_114_9 = 1, #var_114_150 do
				local var_114_151 = var_114_150[iter_114_9]
				local var_114_152 = (iter_114_1.t - (var_114_151.delay or 0)) / (iter_114_1.dur * 0.7 * (var_114_151.speedOffset or 1))

				if var_114_152 > 0 and var_114_152 < 1.1 then
					local var_114_153 = var_0_5(var_114_152, 0, 1)
					local var_114_154 = var_114_153 * var_114_153 * (3 - 2 * var_114_153)
					local var_114_155 = iter_114_1.x2 - iter_114_1.x1
					local var_114_156 = iter_114_1.y2 - iter_114_1.y1
					local var_114_157 = math.sqrt(var_114_155 * var_114_155 + var_114_156 * var_114_156 + 1)
					local var_114_158 = -var_114_156 / var_114_157
					local var_114_159 = var_114_155 / var_114_157
					local var_114_160 = 5

					for iter_114_10 = 0, var_114_160 do
						local var_114_161 = var_0_5(var_114_153 - iter_114_10 * 0.04, 0, 1)
						local var_114_162 = var_114_161 * var_114_161 * (3 - 2 * var_114_161)
						local var_114_163 = math.sin(var_114_161 * math.pi + (var_114_151.seed or 0)) * (var_114_151.curve or 30)
						local var_114_164 = iter_114_1.x1 + var_114_155 * var_114_162 + var_114_158 * var_114_163 + (var_114_151.spreadX or 0)
						local var_114_165 = iter_114_1.y1 + var_114_156 * var_114_162 + var_114_159 * var_114_163 + (var_114_151.spreadY or 0)
						local var_114_166 = math.floor(var_114_164 + 0.5)
						local var_114_167 = math.floor(var_114_165 + 0.5)
						local var_114_168 = var_0_5(1 - iter_114_10 / var_114_160, 0, 1) * var_0_5(1.1 - var_114_152, 0, 1)

						if iter_114_10 == 0 then
							love.graphics.setColor(var_114_147[1], var_114_147[2], var_114_147[3], var_114_168 * 0.5)
							love.graphics.rectangle("fill", var_114_166 - 1, var_114_167 - 2, 3, 5)
							love.graphics.rectangle("fill", var_114_166 - 2, var_114_167 - 1, 5, 3)
							love.graphics.setColor(var_114_148[1], var_114_148[2], var_114_148[3], var_114_168)
							love.graphics.rectangle("fill", var_114_166, var_114_167 - 1, 1, 3)
							love.graphics.rectangle("fill", var_114_166 - 1, var_114_167, 3, 1)
							love.graphics.setColor(var_114_149[1], var_114_149[2], var_114_149[3], var_114_168 * 0.9)
							love.graphics.rectangle("fill", var_114_166, var_114_167, 1, 1)
						else
							love.graphics.setColor(var_114_148[1], var_114_148[2], var_114_148[3], var_114_168 * 0.6)
							love.graphics.rectangle("fill", var_114_166, var_114_167, 1, 1)
						end
					end
				end
			end

			local var_114_169 = var_0_5((var_114_146 - 0.7) / 0.3, 0, 1)

			if var_114_169 > 0 and var_114_169 < 1 then
				local var_114_170 = 1 - var_114_169
				local var_114_171 = math.floor(8 * var_114_169 + 0.5)

				love.graphics.setColor(var_114_148[1], var_114_148[2], var_114_148[3], var_114_170 * 0.5)
				love.graphics.rectangle("line", math.floor(iter_114_1.x2 - var_114_171), math.floor(iter_114_1.y2 - var_114_171), var_114_171 * 2, var_114_171 * 2)
				love.graphics.setColor(var_114_149[1], var_114_149[2], var_114_149[3], var_114_170)
				love.graphics.rectangle("fill", math.floor(iter_114_1.x2 - 1), math.floor(iter_114_1.y2 - 1), 3, 3)
			end

			love.graphics.setBlendMode("alpha")
		elseif iter_114_1.type == "arcane_orb" then
			local var_114_172 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)
			local var_114_173 = iter_114_1.x1 + (iter_114_1.x2 - iter_114_1.x1) * var_114_172
			local var_114_174 = iter_114_1.y1 + (iter_114_1.y2 - iter_114_1.y1) * var_114_172

			love.graphics.setBlendMode("alpha")

			local var_114_175 = var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ArcaneOrb

			if var_114_175 then
				local var_114_176 = 1

				if iter_114_1.t <= 0.15 then
					var_114_176 = math.min(5, math.floor(iter_114_1.t / 0.03) + 1)
				else
					var_114_176 = 3 + math.floor((iter_114_1.t - 0.15) / 0.08) % 3
				end

				local var_114_177 = iter_114_1.x2 - iter_114_1.x1
				local var_114_178 = iter_114_1.y2 - iter_114_1.y1
				local var_114_179 = math.atan2(var_114_178, var_114_177)
				local var_114_180 = var_114_175.quads[var_114_176]

				if var_114_180 then
					local var_114_181 = var_114_179 + math.pi / 2

					love.graphics.draw(var_114_175.image, var_114_180, math.floor(var_114_173), math.floor(var_114_174), var_114_181, 2, 2, 8, 8)
				end
			end
		elseif iter_114_1.type == "arcane_explode" then
			local var_114_182 = var_0_5(iter_114_1.t / iter_114_1.dur, 0, 1)

			love.graphics.setBlendMode("alpha")

			local var_114_183 = var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ArcaneOrb

			if var_114_183 then
				local var_114_184 = 5 + math.min(2, math.floor(var_114_182 * 2 + 1))
				local var_114_185 = var_114_183.quads[var_114_184]

				if var_114_185 then
					love.graphics.draw(var_114_183.image, var_114_185, math.floor(iter_114_1.x - 16), math.floor(iter_114_1.y - 16), 0, 2, 2)
				end
			end
		end
	end

	if arg_114_1 and arg_114_1.enemies then
		for iter_114_11, iter_114_12 in ipairs(arg_114_1.enemies) do
			local var_114_186 = iter_114_12._bloodTrailAlpha or 0

			if var_0_23(iter_114_12) and var_114_186 > 0 then
				local var_114_187 = iter_114_12.target

				if not var_114_187 or not var_114_187.alive or not not var_114_187.dying then
					var_114_187 = var_0_24(iter_114_12, arg_114_1.allies)
				end

				if var_114_187 and var_114_187.x and var_114_187.y then
					local var_114_188 = iter_114_12.x
					local var_114_189 = iter_114_12.y

					if not iter_114_12._trailEndX then
						iter_114_12._trailEndX = var_114_187.x
						iter_114_12._trailEndY = var_114_187.y
					else
						local var_114_190 = love.timer.getDelta() * 10

						iter_114_12._trailEndX = iter_114_12._trailEndX + (var_114_187.x - iter_114_12._trailEndX) * math.min(1, var_114_190)
						iter_114_12._trailEndY = iter_114_12._trailEndY + (var_114_187.y - iter_114_12._trailEndY) * math.min(1, var_114_190)
					end

					local var_114_191 = iter_114_12._trailEndX
					local var_114_192 = iter_114_12._trailEndY
					local var_114_193 = (var_114_188 + var_114_191) * 0.5
					local var_114_194 = (var_114_189 + var_114_192) * 0.5
					local var_114_195 = math.abs(var_114_188 - var_114_191)
					local var_114_196 = var_114_194 - math.min(80, var_114_195 * 0.2)
					local var_114_197 = var_114_193

					love.graphics.push("all")
					love.graphics.setBlendMode("add")

					local var_114_198 = love.timer.getTime()

					local function var_114_199(arg_117_0, arg_117_1, arg_117_2, arg_117_3, arg_117_4, arg_117_5, arg_117_6, arg_117_7, arg_117_8)
						local var_117_0 = 150
						local var_117_1 = {}

						for iter_117_0 = 0, var_117_0 do
							local var_117_2 = iter_117_0 / var_117_0
							local var_117_3 = (1 - var_117_2)^2 * var_114_188 + 2 * (1 - var_117_2) * var_117_2 * var_114_197 + var_117_2^2 * var_114_191
							local var_117_4 = (1 - var_117_2)^2 * var_114_189 + 2 * (1 - var_117_2) * var_117_2 * var_114_196 + var_117_2^2 * var_114_192
							local var_117_5 = math.sin(var_117_2 * math.pi) * math.sin(var_114_198 * arg_117_6 + var_117_2 * arg_117_7 + arg_117_8) * 2.4
							local var_117_6 = var_117_3 + math.sin(var_117_2 * math.pi) * math.cos(var_114_198 * (arg_117_6 * 0.8) + var_117_2 * (arg_117_7 - 1) + arg_117_8) * 1.2
							local var_117_7 = var_117_4 + var_117_5

							var_117_1[#var_117_1 + 1] = var_117_6
							var_117_1[#var_117_1 + 1] = var_117_7
						end

						if #var_117_1 >= 4 then
							love.graphics.setLineStyle("smooth")
							love.graphics.setLineJoin("none")
							love.graphics.setLineWidth((arg_117_0 + arg_117_1 * 0.72) * 2)
							love.graphics.setColor(arg_117_2, arg_117_3, arg_117_4, var_114_186 * arg_117_5 * 0.42)
							love.graphics.line(var_117_1)
						end

						for iter_117_1 = 0, var_117_0 do
							local var_117_8 = iter_117_1 * 2 + 1
							local var_117_9 = iter_117_1 / var_117_0
							local var_117_10 = math.sin(var_117_9 * math.pi)
							local var_117_11 = var_117_10 * (0.7 + 0.3 * var_117_10)
							local var_117_12 = arg_117_0 + var_117_11 * arg_117_1
							local var_117_13 = var_114_186 * arg_117_5 * var_117_11

							love.graphics.setColor(arg_117_2, arg_117_3, arg_117_4, var_117_13)
							love.graphics.circle("fill", var_117_1[var_117_8], var_117_1[var_117_8 + 1], var_117_12, 18)
						end
					end

					var_114_199(6.8, 5.8, 0.42, 0, 0.01, 0.02, 2.5, 5, 0)
					var_114_199(4.6, 3.8, 0.68, 0, 0.01, 0.03, 3.2, 7, 2)
					var_114_199(2.6, 1.8, 0.95, 0.04, 0.05, 0.036, 4, 9, 4)
					love.graphics.setLineWidth(1)
					love.graphics.pop()
				end
			end
		end
	end

	function var_0_0.drawItemEffectsBehind(arg_118_0, arg_118_1)
		if not arg_118_1 or not arg_118_1.allies then
			return
		end

		for iter_118_0, iter_118_1 in ipairs(var_0_8) do
			if iter_118_1.type == "slam_hit" then
				local var_118_0 = var_0_5(iter_118_1.t / iter_118_1.dur, 0, 1)
				local var_118_1 = 1 - var_118_0 * var_118_0

				love.graphics.setBlendMode("add")

				local var_118_2 = var_118_0 * 35

				love.graphics.setColor(0.95, 0.85, 0.65, var_118_1 * 1)
				love.graphics.setLineWidth(2 + (1 - var_118_0) * 1.8)
				love.graphics.ellipse("line", math.floor(iter_118_1.x), math.floor(iter_118_1.y), var_118_2, var_118_2 * 0.4)
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 1)
			elseif iter_118_1.type == "shockwave_hit" then
				local var_118_3 = var_0_5(iter_118_1.t / iter_118_1.dur, 0, 1)
				local var_118_4 = 1 - var_118_3 * var_118_3

				love.graphics.setBlendMode("add")

				local var_118_5 = var_118_3 * 35

				love.graphics.setColor(0.95, 0.85, 0.65, var_118_4 * 1)
				love.graphics.setLineWidth(2 + (1 - var_118_3) * 1.8)
				love.graphics.ellipse("line", math.floor(iter_118_1.x), math.floor(iter_118_1.y), var_118_5, var_118_5 * 0.4)
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 1)
			elseif iter_118_1.type == "crushing_slam_hit" or iter_118_1.type == "crushing_shockwave_hit" then
				local var_118_6 = var_0_5(iter_118_1.t / iter_118_1.dur, 0, 1)
				local var_118_7 = 1 - var_118_6 * var_118_6

				love.graphics.setBlendMode("add")

				local var_118_8 = var_118_6 * 35

				love.graphics.setColor(1, 0.9, 0.5, var_118_7 * 0.6)
				love.graphics.setLineWidth(5 + (1 - var_118_6) * 3)
				love.graphics.ellipse("line", math.floor(iter_118_1.x), math.floor(iter_118_1.y), var_118_8, var_118_8 * 0.4)
				love.graphics.setColor(1, 1, 1, var_118_7 * 1)
				love.graphics.setLineWidth(2 + (1 - var_118_6) * 2)
				love.graphics.ellipse("line", math.floor(iter_118_1.x), math.floor(iter_118_1.y), var_118_8, var_118_8 * 0.4)
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_124(arg_119_0)
	if not arg_119_0 then
		return nil
	end

	arg_119_0._dpsWindow = arg_119_0._dpsWindow or {
		open = false,
		pressUntil = 0,
		progress = 0
	}

	return arg_119_0._dpsWindow
end

local function var_0_125(arg_120_0, arg_120_1)
	local var_120_0 = arg_120_1 and arg_120_1.ui

	if not var_120_0 then
		return nil
	end

	local var_120_1 = var_0_124(arg_120_0)
	local var_120_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	if var_120_1 and var_120_2 < (var_120_1.pressUntil or 0) then
		if var_120_1.pressKind == "close" then
			return var_120_0.dpsButtonClosePressed or var_120_0.dpsButtonClose or var_120_0.dpsButton
		end

		return var_120_0.dpsButtonPressed or var_120_0.dpsButton
	end

	if var_120_1 and (var_120_1.open == true or (var_120_1.progress or 0) > 0.5) then
		return var_120_0.dpsButtonClose or var_120_0.dpsButton
	end

	return var_120_0.dpsButton
end

local function var_0_126(arg_121_0)
	local var_121_0 = arg_121_0 and arg_121_0._lastBattleDpsRows or arg_121_0 and arg_121_0.ui and arg_121_0.ui._lastBattleDpsRows

	if type(var_121_0) == "table" then
		return #var_121_0
	end

	if arg_121_0 then
		local var_121_1 = tonumber(arg_121_0._lastBattleUnitCount)

		if var_121_1 ~= nil then
			return math.max(0, math.floor(var_121_1))
		end
	end

	local var_121_2 = arg_121_0 and arg_121_0.ui and tonumber(arg_121_0.ui._lastBattleUnitCount)

	if var_121_2 ~= nil then
		return math.max(0, math.floor(var_121_2))
	end

	return 0
end

local function var_0_127(arg_122_0)
	local var_122_0 = arg_122_0 and arg_122_0._lastBattleDpsRows or arg_122_0 and arg_122_0.ui and arg_122_0.ui._lastBattleDpsRows

	if type(var_122_0) == "table" then
		return var_122_0
	end

	return nil
end

local function var_0_128(arg_123_0, arg_123_1, arg_123_2)
	local var_123_0 = var_0_124(arg_123_0)

	if not var_123_0 then
		return 0, 0, 0
	end

	local var_123_1 = arg_123_2 and arg_123_2.ui and arg_123_2.ui.dpsSlot
	local var_123_2 = arg_123_0 and arg_123_0.dpsWindow and arg_123_0.dpsWindow.slotList or {}
	local var_123_3 = var_0_126(arg_123_1)

	if not var_123_1 or var_123_3 <= 0 then
		var_123_0.scroll = 0
		var_123_0.scrollTarget = 0

		return 0, 0, var_123_3
	end

	local var_123_4 = math.max(1, math.floor(tonumber(var_123_2.scale or 2) or 2))
	local var_123_5 = var_123_1:getHeight() * var_123_4
	local var_123_6 = tonumber(var_123_2.gap or 4) or 4
	local var_123_7 = math.max(1, tonumber(var_123_2.viewH or 156) or 156)
	local var_123_8 = var_123_3 * var_123_5 + math.max(0, var_123_3 - 1) * var_123_6
	local var_123_9 = math.max(0, var_123_8 - var_123_7)

	var_123_0.scrollTarget = var_0_5(tonumber(var_123_0.scrollTarget or 0) or 0, 0, var_123_9)
	var_123_0.scroll = var_0_5(tonumber(var_123_0.scroll or 0) or 0, 0, var_123_9)

	return var_123_9, var_123_8, var_123_3
end

local function var_0_129(arg_124_0, arg_124_1)
	if not arg_124_0 or not arg_124_1 then
		return
	end

	local var_124_0 = arg_124_0.dpsWindow or {}
	local var_124_1 = var_124_0.emptyText

	if var_124_1 == false then
		return
	end

	var_124_1 = var_124_1 or {}

	local var_124_2 = _G.currentGameLang or "ko"
	local var_124_3 = var_124_1.textKey or var_124_1.langKey
	local var_124_4 = var_124_3 and var_0_3.getText(var_124_3, var_124_2) or nil
	local var_124_5 = var_0_3.getText("dps_window_empty", var_124_2)

	if var_124_2 == "ko" and var_124_1.text then
		var_124_5 = var_124_1.text
	end

	local var_124_6 = tostring(var_124_4 and var_124_4 ~= var_124_3 and var_124_4 or var_124_5)

	if var_124_6 == "" then
		return
	end

	local var_124_7, var_124_8, var_124_9 = var_0_30(arg_124_0)
	local var_124_10 = love.graphics.getFont()
	local var_124_11, var_124_12, var_124_13, var_124_14 = love.graphics.getColor()

	if var_124_7 then
		love.graphics.setFont(var_124_7)
	end

	local var_124_15 = tonumber(var_124_1.scale or var_124_8 or 1) or 1
	local var_124_16 = var_124_1.color or var_124_9 or {
		0.82,
		0.84,
		0.86,
		1
	}
	local var_124_17 = var_124_0.slotList or {}
	local var_124_18

	if var_124_1.x ~= nil then
		var_124_18 = tonumber(var_124_1.x) or 0
	else
		var_124_18 = (tonumber(var_124_17.x or 485) or 485) + (tonumber(var_124_17.wheelW or 150) or 150) * 0.5
	end

	local var_124_19

	if var_124_1.y ~= nil then
		var_124_19 = tonumber(var_124_1.y) or 0
	else
		var_124_19 = (tonumber(var_124_17.y or 48) or 48) + (tonumber(var_124_17.viewH or 156) or 156) * 0.5
	end

	local var_124_20 = love.graphics.getFont()
	local var_124_21 = var_124_20 and var_124_20:getWidth(var_124_6) or 0
	local var_124_22 = var_124_20 and var_124_20:getHeight() or 10
	local var_124_23 = math.floor(arg_124_1.x + var_124_18 - var_124_21 * var_124_15 * 0.5 + 0.5)
	local var_124_24 = math.floor(arg_124_1.y + var_124_19 - var_124_22 * var_124_15 * 0.5 + 0.5)

	love.graphics.setColor(var_124_16[1] or 1, var_124_16[2] or 1, var_124_16[3] or 1, var_124_16[4] or 1)
	love.graphics.print(var_124_6, var_124_23, var_124_24, 0, var_124_15, var_124_15)

	if var_124_10 then
		love.graphics.setFont(var_124_10)
	end

	love.graphics.setColor(var_124_11, var_124_12, var_124_13, var_124_14)
end

local function var_0_130(arg_125_0, arg_125_1, arg_125_2, arg_125_3, arg_125_4, arg_125_5)
	if not arg_125_0 or not arg_125_1 or not arg_125_2 then
		return
	end

	arg_125_3 = arg_125_3 or {}

	local var_125_0 = math.max(1, tonumber(arg_125_2.viewH or 156) or 156)

	arg_125_4 = math.max(0, tonumber(arg_125_4 or 0) or 0)
	arg_125_5 = math.max(var_125_0, tonumber(arg_125_5 or var_125_0) or var_125_0)

	local var_125_1 = math.floor(arg_125_1.x + (tonumber(arg_125_2.scrollbarX or 622) or 622) + 0.5)
	local var_125_2 = math.floor(arg_125_1.y + (tonumber(arg_125_2.scrollbarY or arg_125_2.y or 52) or 52) + 0.5)
	local var_125_3 = math.max(1, math.floor(tonumber(arg_125_2.scrollbarW or 2) or 2))
	local var_125_4 = math.max(8, math.floor(tonumber(arg_125_2.scrollbarH or var_125_0) or var_125_0))

	love.graphics.setColor(arg_125_2.scrollbarTrackColor or {
		0.1843137254901961,
		0.1607843137254902,
		0.2196078431372549,
		0.9
	})
	love.graphics.rectangle("fill", var_125_1, var_125_2, var_125_3, var_125_4)

	if arg_125_4 > 0 then
		local var_125_5 = math.max(8, math.floor(var_125_4 * math.min(1, var_125_0 / math.max(var_125_0, arg_125_5)) + 0.5))
		local var_125_6 = var_125_2 + math.floor((var_125_4 - var_125_5) * ((arg_125_3.scroll or 0) / arg_125_4) + 0.5)

		love.graphics.setColor(arg_125_2.scrollbarColor or {
			0.45098039215686275,
			0.40784313725490196,
			0.4980392156862745,
			0.95
		})
		love.graphics.rectangle("fill", var_125_1, var_125_6, var_125_3, var_125_5)
	end

	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_131(arg_126_0, arg_126_1, arg_126_2)
	return arg_126_2 and arg_126_0 >= arg_126_2.x and arg_126_0 <= arg_126_2.x + arg_126_2.w and arg_126_1 >= arg_126_2.y and arg_126_1 <= arg_126_2.y + arg_126_2.h
end

local function var_0_132(arg_127_0, arg_127_1)
	if not arg_127_0 or not arg_127_1 or not arg_127_1.text then
		return
	end

	local var_127_0 = arg_127_0.tooltip and arg_127_0.tooltip.font or arg_127_0.font

	if not var_127_0 then
		return
	end

	local var_127_1 = tonumber(arg_127_1.mx or 0) or 0
	local var_127_2 = tonumber(arg_127_1.my or 0) or 0
	local var_127_3 = tostring(arg_127_1.text or "")

	if var_127_3 == "" then
		return
	end

	local var_127_4 = 4
	local var_127_5 = 4
	local var_127_6 = love.graphics.getFont()
	local var_127_7, var_127_8, var_127_9, var_127_10 = love.graphics.getColor()

	love.graphics.setFont(var_127_0)

	local var_127_11 = math.floor(var_127_0:getWidth(var_127_3) + var_127_4 * 2 + 0.5)
	local var_127_12 = math.floor(var_127_0:getHeight() + var_127_4 * 2 + 0.5)
	local var_127_13 = math.floor(var_127_1 + var_127_5 + 0.5)
	local var_127_14 = math.floor(var_127_2 - var_127_12 - var_127_5 + 0.5)
	local var_127_15 = arg_127_0.virtual and arg_127_0.virtual.W or 640
	local var_127_16 = arg_127_0.virtual and arg_127_0.virtual.H or 360

	if var_127_15 < var_127_13 + var_127_11 then
		var_127_13 = math.floor(var_127_1 - var_127_11 - var_127_5 + 0.5)
	end

	if var_127_14 < 0 then
		var_127_14 = math.floor(var_127_2 + var_127_5 + 0.5)
	end

	local var_127_17 = var_0_5(var_127_13, 0, math.max(0, var_127_15 - var_127_11))
	local var_127_18 = var_0_5(var_127_14, 0, math.max(0, var_127_16 - var_127_12))

	if arg_127_0.tooltip and arg_127_0.tooltip.drawPixelRoundedRect then
		arg_127_0.tooltip:drawPixelRoundedRect(var_127_17, var_127_18, var_127_11, var_127_12, {
			0,
			0,
			0,
			0.95
		}, nil)
	else
		love.graphics.setColor(0, 0, 0, 0.95)
		love.graphics.rectangle("fill", var_127_17, var_127_18, var_127_11, var_127_12)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.print(var_127_3, var_127_17 + var_127_4, var_127_18 + var_127_4 - 1)

	if var_127_6 then
		love.graphics.setFont(var_127_6)
	end

	love.graphics.setColor(var_127_7, var_127_8, var_127_9, var_127_10)
end

local function var_0_133(arg_128_0, arg_128_1, arg_128_2, arg_128_3)
	if not arg_128_0 or not arg_128_1 or not arg_128_2 or not arg_128_2.ui then
		return
	end

	local var_128_0 = arg_128_2.ui.dpsSlot
	local var_128_1 = var_0_124(arg_128_0)

	if not var_128_1 then
		return
	end

	local var_128_2 = arg_128_0.dpsWindow and arg_128_0.dpsWindow.slotList or {}
	local var_128_3 = var_0_127(arg_128_3)
	local var_128_4 = var_128_3 and #var_128_3 or var_0_126(arg_128_3)

	if var_128_4 <= 0 then
		var_128_1.scroll = 0
		var_128_1.scrollTarget = 0

		var_0_130(arg_128_0, arg_128_1, var_128_2, var_128_1, 0, math.max(1, tonumber(var_128_2.viewH or 156) or 156))

		arg_128_0._dpsEmptyOverlayVisible = true

		local var_128_5 = arg_128_0.dpsWindow and arg_128_0.dpsWindow.emptyText

		if not var_128_5 or var_128_5.highRes ~= false then
			arg_128_0._dpsEmptyOverlayPanelRect = arg_128_1
		else
			var_0_129(arg_128_0, arg_128_1)
		end

		return
	end

	arg_128_0._dpsEmptyOverlayVisible = false
	arg_128_0._dpsEmptyOverlayPanelRect = nil

	if not var_128_0 then
		return
	end

	local var_128_6 = math.max(1, math.floor(tonumber(var_128_2.scale or 2) or 2))
	local var_128_7 = var_128_0:getWidth()
	local var_128_8 = var_128_0:getHeight()
	local var_128_9 = tonumber(var_128_2.gap or 4) or 4
	local var_128_10 = math.max(1, tonumber(var_128_2.viewH or 156) or 156)
	local var_128_11, var_128_12 = var_0_128(arg_128_0, arg_128_3, arg_128_2)
	local var_128_13 = love.timer and love.timer.getDelta and love.timer.getDelta() or 0
	local var_128_14 = math.min(1, var_128_13 * 14)

	var_128_1.scroll = (var_128_1.scroll or 0) + ((var_128_1.scrollTarget or 0) - (var_128_1.scroll or 0)) * var_128_14
	var_128_1.scroll = var_0_5(var_128_1.scroll or 0, 0, var_128_11)

	local var_128_15 = math.floor(arg_128_1.x + (tonumber(var_128_2.x or 476) or 476) + 0.5)
	local var_128_16 = math.floor(arg_128_1.y + (tonumber(var_128_2.y or 52) or 52) + 0.5)
	local var_128_17 = tonumber(var_128_2.damageBarX or 40) or 40
	local var_128_18 = math.max(1, tonumber(var_128_2.damageBarW or 92) or 92)
	local var_128_19 = math.max(2, tonumber(var_128_2.damageBarH or 5) or 5)
	local var_128_20 = tonumber(var_128_2.damageBarOffsetY or 15) or 15
	local var_128_21 = math.max(0, math.floor(tonumber(var_128_2.damageBarShadowBottomPx or 1) or 1))
	local var_128_22 = math.max(0, math.floor(tonumber(var_128_2.damageBarShadowLeftPx or 2) or 2))
	local var_128_23 = tonumber(var_128_2.damageTextOffsetX or 0) or 0
	local var_128_24 = tonumber(var_128_2.damageTextOffsetY or 2) or 2
	local var_128_25 = tonumber(var_128_2.portraitX or 3) or 3
	local var_128_26 = tonumber(var_128_2.portraitY or 3) or 3
	local var_128_27 = math.max(1, math.floor(tonumber(var_128_2.portraitScale or 1) or 1))
	local var_128_28 = tonumber(arg_128_0._dpsHoverRowIndex or 0) or 0
	local var_128_29 = math.max(1, math.floor(math.max(var_128_7 * var_128_6, var_128_17 + var_128_18 + 28) + 0.5))
	local var_128_30 = math.max(1, math.ceil(var_128_10))

	if not var_0_15 or var_128_29 > var_0_15:getWidth() or var_128_30 > var_0_15:getHeight() then
		if var_0_15 then
			var_0_15:release()
		end

		var_0_15 = love.graphics.newCanvas(var_128_29, var_128_30)

		var_0_15:setFilter("nearest", "nearest")
	end

	local var_128_31 = love.graphics.getCanvas()
	local var_128_32 = love.graphics.getShader()
	local var_128_33, var_128_34 = love.graphics.getBlendMode()
	local var_128_35 = love.graphics.getFont()
	local var_128_36, var_128_37, var_128_38, var_128_39 = love.graphics.getColor()
	local var_128_40 = love.graphics.getTransform and love.graphics.getTransform() or nil
	local var_128_41 = var_0_28(arg_128_0)

	love.graphics.setCanvas(var_0_15)
	love.graphics.origin()
	love.graphics.setShader()
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.clear(0, 0, 0, 0)
	love.graphics.setColor(1, 1, 1, 1)

	if var_128_41 then
		love.graphics.setFont(var_128_41)
	end

	local var_128_42 = 0

	if var_128_3 then
		for iter_128_0, iter_128_1 in ipairs(var_128_3) do
			var_128_42 = math.max(var_128_42, tonumber(iter_128_1 and iter_128_1.damage or 0) or 0)
		end
	end

	for iter_128_2 = 1, var_128_4 do
		local var_128_43 = math.floor((iter_128_2 - 1) * (var_128_8 * var_128_6 + var_128_9) - (var_128_1.scroll or 0) + 0.5)

		if var_128_43 + var_128_8 * var_128_6 >= 0 and var_128_43 <= var_128_10 then
			local var_128_44 = var_128_3 and var_128_3[iter_128_2]

			if var_128_44 and iter_128_2 == var_128_28 then
				local var_128_45 = var_128_2.hoverOutlineRadiusPx or arg_128_0 and arg_128_0.dpsButton and arg_128_0.dpsButton.outlineRadiusPx or 1
				local var_128_46 = var_0_34(var_128_45) or var_128_0
				local var_128_47 = var_128_2.hoverOutlineColor or arg_128_0 and arg_128_0.dpsButton and arg_128_0.dpsButton.outlineColor or {
					0.9294117647058824,
					0.9019607843137255,
					0.9529411764705882,
					1
				}

				love.graphics.setShader()
				love.graphics.setColor(var_128_47[1] or 1, var_128_47[2] or 1, var_128_47[3] or 1, var_128_47[4] or 1)
				love.graphics.draw(var_128_46, 0, var_128_43, 0, var_128_6, var_128_6)
				love.graphics.setColor(1, 1, 1, 1)
			end

			if var_128_3 and var_128_3[iter_128_2] then
				local var_128_48 = var_0_32(arg_128_2, arg_128_3, var_128_3[iter_128_2])

				if var_128_48 then
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_128_48, var_128_25, var_128_43 + var_128_26, 0, var_128_27, var_128_27)
				end
			end

			local var_128_49 = var_0_39(var_128_44)

			if var_128_44 and var_0_42(arg_128_0, var_128_49) then
				love.graphics.draw(var_128_0, 0, var_128_43, 0, var_128_6, var_128_6)
				love.graphics.setShader()
			else
				love.graphics.draw(var_128_0, 0, var_128_43, 0, var_128_6, var_128_6)
			end

			if var_128_3 and var_128_3[iter_128_2] then
				local var_128_50 = math.max(0, math.floor((tonumber(var_128_3[iter_128_2].damage or 0) or 0) + 0.5))
				local var_128_51 = math.max(0, math.floor((tonumber(var_128_3[iter_128_2].skillDamage or 0) or 0) + 0.5))
				local var_128_52 = math.min(var_128_51, var_128_50)
				local var_128_53 = var_128_42 > 0 and var_0_5(var_128_50 / var_128_42, 0, 1) or 0
				local var_128_54 = var_128_42 > 0 and var_0_5(var_128_52 / var_128_42, 0, 1) or 0
				local var_128_55 = var_128_43 + var_128_20
				local var_128_56 = math.floor(var_128_18 * var_128_53 + 0.5)
				local var_128_57 = math.min(var_128_56, math.floor(var_128_18 * var_128_54 + 0.5))
				local var_128_58 = math.max(var_128_19, var_128_19 + var_128_21)

				love.graphics.setColor(0.14, 0.11, 0.16, 0.72)
				love.graphics.rectangle("fill", var_128_17, var_128_55, var_128_18, var_128_58)

				if var_128_56 > 0 then
					love.graphics.setColor(0.4235294117647059, 0.14901960784313725, 0.058823529411764705, 1)

					if var_128_21 > 0 then
						love.graphics.rectangle("fill", var_128_17, var_128_55 + var_128_19, var_128_56, var_128_21)
					end

					local var_128_59 = math.min(var_128_22, var_128_56)

					if var_128_59 > 0 then
						love.graphics.rectangle("fill", var_128_17, var_128_55, var_128_59, var_128_19)
					end

					love.graphics.setColor(0.788235294117647, 0.35294117647058826, 0.21176470588235294, 1)
					love.graphics.rectangle("fill", var_128_17 + var_128_59, var_128_55, math.max(0, var_128_56 - var_128_59), var_128_19)

					if var_128_57 > 0 then
						local var_128_60 = var_128_2.skillDamageColor or {
							0.2901960784313726,
							0.5607843137254902,
							0.9058823529411765,
							1
						}
						local var_128_61 = var_128_60[1] or 0.2901960784313726
						local var_128_62 = var_128_60[2] or 0.5607843137254902
						local var_128_63 = var_128_60[3] or 0.9058823529411765
						local var_128_64 = var_128_60[4] or 1
						local var_128_65 = var_128_17 + math.max(0, var_128_56 - var_128_57)

						love.graphics.setColor(var_128_61 * 0.48, var_128_62 * 0.48, var_128_63 * 0.48, var_128_64)

						if var_128_21 > 0 then
							love.graphics.rectangle("fill", var_128_65, var_128_55 + var_128_19, var_128_57, var_128_21)
						end

						love.graphics.setColor(var_128_61, var_128_62, var_128_63, var_128_64)
						love.graphics.rectangle("fill", var_128_65, var_128_55, var_128_57, var_128_19)
					end
				end

				local var_128_66 = tostring(var_128_50)
				local var_128_67 = love.graphics.getFont()
				local var_128_68 = var_128_67 and var_128_67:getWidth(var_128_66) or 0
				local var_128_69 = math.floor(var_128_17 + (var_128_18 - var_128_68) * 0.5 + var_128_23 + 0.5)
				local var_128_70 = math.floor(var_128_43 + var_128_24 + 0.5)

				love.graphics.setColor(0.88, 0.82, 0.73, 0.95)
				love.graphics.print(var_128_66, var_128_69, var_128_70)
				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	love.graphics.setCanvas(var_128_31)

	if var_128_40 and love.graphics.replaceTransform then
		love.graphics.replaceTransform(var_128_40)
	end

	love.graphics.setShader(var_128_32)
	love.graphics.setBlendMode(var_128_33, var_128_34)

	if var_128_35 then
		love.graphics.setFont(var_128_35)
	end

	love.graphics.setColor(var_128_36, var_128_37, var_128_38, var_128_39)

	local var_128_71 = var_0_15:getWidth()
	local var_128_72 = var_0_15:getHeight()

	if not var_0_16 then
		var_0_16 = love.graphics.newQuad(0, 0, var_128_29, var_128_30, var_128_71, var_128_72)
	else
		var_0_16:setViewport(0, 0, var_128_29, var_128_30, var_128_71, var_128_72)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(var_0_15, var_0_16, var_128_15, var_128_16)
	var_0_130(arg_128_0, arg_128_1, var_128_2, var_128_1, var_128_11, var_128_12)
end

local function var_0_134(arg_129_0, arg_129_1)
	if not arg_129_0 or not arg_129_1 then
		return
	end

	local var_129_0 = arg_129_0.dpsWindow and arg_129_0.dpsWindow.title or nil

	if var_129_0 == false then
		return
	end

	var_129_0 = var_129_0 or {}

	local var_129_1 = _G.currentGameLang or "ko"
	local var_129_2 = var_129_0.textKey or var_129_0.langKey
	local var_129_3 = var_129_2 and var_0_3.getText(var_129_2, var_129_1) or nil
	local var_129_4 = var_0_3.getText("dps_window_title", var_129_1)

	if var_129_1 == "ko" and var_129_0.text then
		var_129_4 = var_129_0.text
	end

	local var_129_5 = tostring(var_129_3 and var_129_3 ~= var_129_2 and var_129_3 or var_129_4)

	if var_129_5 == "" then
		return
	end

	local var_129_6 = var_0_29(arg_129_0)
	local var_129_7 = love.graphics.getFont()
	local var_129_8, var_129_9, var_129_10, var_129_11 = love.graphics.getColor()

	if var_129_6 then
		love.graphics.setFont(var_129_6)
	end

	local var_129_12 = tonumber(var_129_0.scale or 1.5) or 1.5
	local var_129_13 = math.floor(arg_129_1.x + (tonumber(var_129_0.x or 510) or 510) + 0.5)
	local var_129_14 = math.floor(arg_129_1.y + (tonumber(var_129_0.y or 26) or 26) + 0.5)
	local var_129_15 = var_129_0.color or {
		1,
		0.9,
		0.5,
		1
	}

	love.graphics.setColor(var_129_15[1] or 1, var_129_15[2] or 1, var_129_15[3] or 1, var_129_15[4] or 1)
	love.graphics.print(var_129_5, var_129_13, var_129_14, 0, var_129_12, var_129_12)

	if var_129_7 then
		love.graphics.setFont(var_129_7)
	end

	love.graphics.setColor(var_129_8, var_129_9, var_129_10, var_129_11)
end

local function var_0_135(arg_130_0, arg_130_1)
	if not arg_130_0 or not arg_130_1 or arg_130_1.sandboxMode ~= true then
		return false
	end

	local var_130_0 = var_0_124(arg_130_0)

	return var_130_0 and var_130_0.open == true and (var_130_0.progress or 0) >= 0.98
end

local function var_0_136(arg_131_0)
	if not arg_131_0 then
		return nil
	end

	arg_131_0._dpsScrollEditor = arg_131_0._dpsScrollEditor or {
		savedUntil = 0,
		active = false
	}

	return arg_131_0._dpsScrollEditor
end

local function var_0_137(arg_132_0, arg_132_1)
	if not arg_132_0 or not arg_132_1 then
		return nil
	end

	local var_132_0 = arg_132_0.dpsWindow and arg_132_0.dpsWindow.slotList or {}
	local var_132_1 = math.floor(arg_132_1.x + (tonumber(var_132_0.x or 476) or 476) + 0.5)
	local var_132_2 = math.floor(arg_132_1.y + (tonumber(var_132_0.y or 52) or 52) + 0.5)
	local var_132_3 = math.max(24, math.floor(tonumber(var_132_0.wheelW or 150) or 150))
	local var_132_4 = math.max(24, math.floor(tonumber(var_132_0.viewH or 156) or 156))
	local var_132_5 = 64
	local var_132_6 = 16
	local var_132_7 = math.floor(var_132_1 + math.max(0, (var_132_3 - var_132_5) * 0.5) + 0.5)
	local var_132_8 = math.floor(var_132_2 + var_132_4 + 10 + 0.5)

	return {
		box = {
			x = var_132_1,
			y = var_132_2,
			w = var_132_3,
			h = var_132_4
		},
		adjust = {
			x = var_132_7,
			y = var_132_8,
			w = var_132_5,
			h = var_132_6
		},
		save = {
			x = var_132_7,
			y = var_132_8 + 20,
			w = var_132_5,
			h = var_132_6
		}
	}
end

local function var_0_138(arg_133_0, arg_133_1, arg_133_2)
	return arg_133_2 and arg_133_0 and arg_133_1 and arg_133_0 >= arg_133_2.x and arg_133_0 <= arg_133_2.x + arg_133_2.w and arg_133_1 >= arg_133_2.y and arg_133_1 <= arg_133_2.y + arg_133_2.h
end

local function var_0_139(arg_134_0, arg_134_1, arg_134_2)
	if not arg_134_0 then
		return
	end

	if arg_134_2 then
		love.graphics.setColor(0.24, 0.34, 0.26, 0.92)
	else
		love.graphics.setColor(0.18, 0.15, 0.2, 0.88)
	end

	love.graphics.rectangle("fill", arg_134_0.x, arg_134_0.y, arg_134_0.w, arg_134_0.h)
	love.graphics.setColor(0.72, 0.66, 0.74, 0.95)
	love.graphics.rectangle("line", arg_134_0.x + 0.5, arg_134_0.y + 0.5, arg_134_0.w - 1, arg_134_0.h - 1)
	love.graphics.setColor(0.88, 0.84, 0.76, 1)

	local var_134_0 = love.graphics.getFont()
	local var_134_1 = var_134_0 and var_134_0:getWidth(arg_134_1) or 0
	local var_134_2 = var_134_0 and var_134_0:getHeight() or 10

	love.graphics.print(arg_134_1, math.floor(arg_134_0.x + (arg_134_0.w - var_134_1) * 0.5), math.floor(arg_134_0.y + (arg_134_0.h - var_134_2) * 0.5 - 1))
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_140(arg_135_0)
	if not arg_135_0 or not arg_135_0.dpsWindow or not arg_135_0.dpsWindow.slotList then
		return false
	end

	local var_135_0 = love and love.filesystem

	if not var_135_0 or not var_135_0.write then
		return false
	end

	local var_135_1 = arg_135_0.dpsWindow.slotList

	local function var_135_2(arg_136_0)
		return tonumber(arg_136_0 or 0) or 0
	end

	local var_135_3 = string.format("return {\n  slotList = {\n    x = %.3f,\n    y = %.3f,\n    viewH = %.3f,\n    wheelW = %.3f,\n    scrollbarX = %.3f,\n    scrollbarY = %.3f,\n    scrollbarH = %.3f,\n  },\n}\n", var_135_2(var_135_1.x), var_135_2(var_135_1.y), var_135_2(var_135_1.viewH), var_135_2(var_135_1.wheelW), var_135_2(var_135_1.scrollbarX), var_135_2(var_135_1.scrollbarY), var_135_2(var_135_1.scrollbarH))

	return var_135_0.write("dps_scroll_tuning.lua", var_135_3) == true
end

local function var_0_141(arg_137_0, arg_137_1, arg_137_2)
	if not arg_137_0 or not arg_137_0.dpsWindow or not arg_137_0.dpsWindow.slotList or not arg_137_1 or not arg_137_2 then
		return
	end

	local var_137_0 = arg_137_0.dpsWindow.slotList

	var_137_0.x = math.floor(arg_137_2.x - arg_137_1.x + 0.5)
	var_137_0.y = math.floor(arg_137_2.y - arg_137_1.y + 0.5)
	var_137_0.wheelW = math.max(24, math.floor(arg_137_2.w + 0.5))
	var_137_0.viewH = math.max(24, math.floor(arg_137_2.h + 0.5))
	var_137_0.scrollbarX = math.floor(arg_137_2.x - arg_137_1.x + var_137_0.wheelW - 4 + 0.5)
	var_137_0.scrollbarY = var_137_0.y
	var_137_0.scrollbarH = var_137_0.viewH

	local var_137_1 = var_0_124(arg_137_0)

	if var_137_1 then
		var_137_1.scroll = 0
		var_137_1.scrollTarget = 0
	end
end

local function var_0_142(arg_138_0, arg_138_1, arg_138_2)
	if not var_0_135(arg_138_0, arg_138_2) then
		return
	end

	local var_138_0 = var_0_136(arg_138_0)
	local var_138_1 = var_0_137(arg_138_0, arg_138_1)

	if not var_138_1 then
		return
	end

	local var_138_2 = _G.currentGameLang or "ko"

	var_0_139(var_138_1.adjust, var_0_3.getText(var_138_0 and var_138_0.active and "editor_editing" or "editor_adjust", var_138_2), var_138_0 and var_138_0.active)

	if var_138_0 and var_138_0.active then
		local var_138_3 = var_138_1.box

		love.graphics.setColor(0.95, 0.9, 0.55, 0.18)
		love.graphics.rectangle("fill", var_138_3.x, var_138_3.y, var_138_3.w, var_138_3.h)
		love.graphics.setColor(0.98, 0.92, 0.58, 0.95)
		love.graphics.setLineWidth(1)
		love.graphics.rectangle("line", var_138_3.x + 0.5, var_138_3.y + 0.5, var_138_3.w - 1, var_138_3.h - 1)
		love.graphics.setColor(0.98, 0.92, 0.58, 1)

		local var_138_4 = 5

		love.graphics.rectangle("fill", var_138_3.x + var_138_3.w - var_138_4, var_138_3.y + var_138_3.h - var_138_4, var_138_4, var_138_4)
		love.graphics.rectangle("fill", var_138_3.x + var_138_3.w - var_138_4, var_138_3.y + math.floor(var_138_3.h * 0.5) - 2, var_138_4, var_138_4)
		love.graphics.rectangle("fill", var_138_3.x + math.floor(var_138_3.w * 0.5) - 2, var_138_3.y + var_138_3.h - var_138_4, var_138_4, var_138_4)
		var_0_139(var_138_1.save, var_0_3.getText("editor_save", var_138_2), false)

		if (love.timer and love.timer.getTime and love.timer.getTime() or 0) < (var_138_0.savedUntil or 0) then
			love.graphics.setColor(0.78, 0.95, 0.72, 1)
			love.graphics.print(var_0_3.getText("editor_saved", var_138_2), var_138_1.save.x + var_138_1.save.w + 6, var_138_1.save.y + 1)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end
end

local function var_0_143(arg_139_0)
	local var_139_0 = var_0_124(arg_139_0)

	if not var_139_0 then
		return 0
	end

	local var_139_1 = arg_139_0 and arg_139_0.dpsWindow or {}
	local var_139_2 = love.timer and love.timer.getDelta and love.timer.getDelta() or 0
	local var_139_3 = math.max(0.001, tonumber(var_139_1.slideDur or 0.32) or 0.32)
	local var_139_4 = var_139_0.open and 1 or 0

	if var_139_0.progress == nil then
		var_139_0.progress = var_139_4
	end

	local var_139_5 = var_139_2 / var_139_3

	if var_139_4 > var_139_0.progress then
		var_139_0.progress = math.min(var_139_4, var_139_0.progress + var_139_5)
	elseif var_139_4 < var_139_0.progress then
		var_139_0.progress = math.max(var_139_4, var_139_0.progress - var_139_5)
	end

	local var_139_6 = var_0_5(var_139_0.progress or 0, 0, 1)

	if (var_139_1.ease or "outCubic") == "linear" then
		return var_139_6
	end

	return 1 - (1 - var_139_6) * (1 - var_139_6) * (1 - var_139_6)
end

local function var_0_144(arg_140_0, arg_140_1, arg_140_2)
	local var_140_0 = arg_140_1 and arg_140_1.ui and arg_140_1.ui.dpsWindow

	if not var_140_0 or not arg_140_0 or not arg_140_0.virtual then
		return nil
	end

	local var_140_1 = arg_140_0 and arg_140_0.dpsWindow or {}
	local var_140_2 = var_140_0:getWidth()
	local var_140_3 = var_140_0:getHeight()
	local var_140_4 = (arg_140_0.virtual.W or 640) / math.max(1, var_140_2)
	local var_140_5 = (arg_140_0.virtual.H or 360) / math.max(1, var_140_3)
	local var_140_6 = tonumber(var_140_1.offsetX or 0) or 0
	local var_140_7 = tonumber(var_140_1.offsetY or 0) or 0
	local var_140_8 = arg_140_1 and arg_140_1.ui and arg_140_1.ui.dpsButton
	local var_140_9 = arg_140_0 and arg_140_0.dpsButton or {}
	local var_140_10 = 1
	local var_140_11 = 0

	if var_140_8 then
		local var_140_12 = math.max(1, math.floor(tonumber(var_140_9.scaleStep or var_140_9.scale or 1) or 1))

		var_140_11 = var_140_8:getWidth() * var_140_12
	end

	local var_140_13 = tonumber(var_140_9.panelLeftX or var_140_1.panelLeftX or 464) or 464
	local var_140_14 = tonumber(var_140_9.panelAttachX)

	if var_140_14 == nil then
		var_140_14 = var_140_13 - var_140_11
	end

	local var_140_15 = (arg_140_0.virtual.W or 640) - var_140_11 + tonumber(var_140_9.offsetX or 0) - var_140_14 - tonumber(var_140_9.offsetX or 0)
	local var_140_16 = var_0_5(arg_140_2 or 0, 0, 1)
	local var_140_17 = math.floor(var_140_15 * (1 - var_140_16) + var_140_6 * var_140_16 + 0.5)
	local var_140_18 = math.floor(var_140_7 + 0.5)

	return {
		x = var_140_17,
		y = var_140_18,
		w = var_140_2 * var_140_4,
		h = var_140_3 * var_140_5,
		sx = var_140_4,
		sy = var_140_5,
		img = var_140_0,
		iw = var_140_2,
		ih = var_140_3
	}
end

local function var_0_145(arg_141_0, arg_141_1, arg_141_2, arg_141_3)
	local var_141_0 = arg_141_2 and arg_141_2.ui and arg_141_2.ui.dpsButton

	if not var_141_0 or not arg_141_0 or not arg_141_0.virtual or not arg_141_1 then
		return nil
	end

	local var_141_1 = arg_141_0 and arg_141_0.dpsButton or {}
	local var_141_2 = math.max(1, math.floor(tonumber(var_141_1.scaleStep or var_141_1.scale or 1) or 1))
	local var_141_3 = var_141_0:getWidth()
	local var_141_4 = var_141_0:getHeight()
	local var_141_5

	if var_141_1.attachToWindow ~= false then
		local var_141_6 = var_0_144(arg_141_0, arg_141_2, arg_141_3)
		local var_141_7 = tonumber(var_141_1.panelLeftX or (arg_141_0.dpsWindow or {}).panelLeftX or 464) or 464
		local var_141_8 = tonumber(var_141_1.panelAttachX)

		if var_141_8 == nil then
			var_141_8 = var_141_7 - var_141_3 * var_141_2
		end

		var_141_5 = math.floor((var_141_6 and var_141_6.x or 0) + var_141_8 + tonumber(var_141_1.offsetX or 0) + 0.5)
	else
		local var_141_9

		if var_141_1.x ~= nil then
			var_141_9 = tonumber(var_141_1.x) or 0
		elseif var_141_1.alignRight ~= false then
			var_141_9 = (arg_141_0.virtual.W or 640) - var_141_3 * var_141_2
		else
			var_141_9 = arg_141_1.x + arg_141_1.w - var_141_3 * var_141_2
		end

		var_141_5 = math.floor(var_141_9 + tonumber(var_141_1.offsetX or 0) + 0.5)
	end

	local var_141_10
	local var_141_11 = _G.fireman

	if var_141_1.followFiremanY ~= false and var_141_11 and var_141_11.image then
		local var_141_12 = var_141_11.frameH or 20
		local var_141_13 = arg_141_0 and arg_141_0.fireman or {}
		local var_141_14 = math.max(1, math.floor(var_141_13.scaleStep or 2))

		var_141_10 = arg_141_1.y + arg_141_1.h + (var_141_13.offsetY or -16) - var_141_12 * var_141_14
	else
		var_141_10 = arg_141_1.y + arg_141_1.h - var_141_4 * var_141_2
	end

	local var_141_15 = math.floor(var_141_10 + tonumber(var_141_1.offsetY or 0) + 0.5)

	return {
		x = var_141_5,
		y = var_141_15,
		w = var_141_3 * var_141_2,
		h = var_141_4 * var_141_2,
		scale = var_141_2,
		img = var_141_0,
		iw = var_141_3,
		ih = var_141_4
	}
end

local function var_0_146(arg_142_0, arg_142_1)
	local var_142_0 = rawget(_G, "Tutorial")

	if var_142_0 then
		if var_142_0.isRunning and var_142_0.isRunning() then
			return true
		end

		if var_142_0.isPending and var_142_0.isPending() then
			return true
		end

		if var_142_0.isActive and var_142_0.isActive() then
			return true
		end
	elseif arg_142_0 and arg_142_0._tutorialRunning then
		return true
	end

	local var_142_1 = arg_142_1 or rawget(_G, "battlefield")

	if var_142_1 and var_142_1.gameOver == true then
		return false
	end

	return var_142_1 and var_142_1.mode == "battle" or false
end

function var_0_0.hitTestDpsButton(arg_143_0, arg_143_1, arg_143_2, arg_143_3, arg_143_4, arg_143_5)
	if not arg_143_0 or not arg_143_1 or not arg_143_2 or not arg_143_3 or not arg_143_4 then
		return false
	end

	if arg_143_5 and arg_143_5.gameOver == true then
		return false
	end

	if var_0_146(arg_143_0, arg_143_5) then
		return false
	end

	if arg_143_0._shopMode or arg_143_0._stoneMode then
		return false
	end

	if arg_143_0.pauseOverlayState and arg_143_0.pauseOverlayState.active then
		return false
	end

	local var_143_0 = var_0_124(arg_143_0)
	local var_143_1 = var_143_0 and var_0_5(var_143_0.progress or 0, 0, 1) or 0
	local var_143_2 = 1 - (1 - var_143_1) * (1 - var_143_1) * (1 - var_143_1)
	local var_143_3 = var_0_145(arg_143_0, arg_143_1, arg_143_2, var_143_2)

	if not var_143_3 then
		return false
	end

	return arg_143_3 >= var_143_3.x and arg_143_3 <= var_143_3.x + var_143_3.w and arg_143_4 >= var_143_3.y and arg_143_4 <= var_143_3.y + var_143_3.h
end

function var_0_0.toggleDpsWindow(arg_144_0, arg_144_1)
	if var_0_146(arg_144_0, arg_144_1) then
		return false
	end

	local var_144_0 = var_0_124(arg_144_0)

	if not var_144_0 then
		return false
	end

	if arg_144_1 and arg_144_1.gameOver == true then
		var_144_0.open = true
		var_144_0.pressUntil = 0
		var_144_0.pressKind = nil

		return true
	end

	local var_144_1 = arg_144_0 and arg_144_0.dpsButton or {}
	local var_144_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	var_144_0.pressKind = var_144_0.open and "close" or "open"
	var_144_0.pressUntil = var_144_2 + math.max(0, tonumber(var_144_1.pressDur or 0.12) or 0.12)
	var_144_0.open = not var_144_0.open

	return true
end

function var_0_0.closeDpsWindow(arg_145_0, arg_145_1)
	local var_145_0 = var_0_124(arg_145_0)

	if not var_145_0 then
		return false
	end

	var_145_0.open = false

	if arg_145_1 then
		var_145_0.progress = 0
		var_145_0.scroll = 0
		var_145_0.scrollTarget = 0
		var_145_0.pressUntil = 0
		var_145_0.pressKind = nil
	end

	return true
end

function var_0_0.resetDpsWindow(arg_146_0, arg_146_1)
	if arg_146_0 then
		var_0_0.closeDpsWindow(arg_146_0, true)

		arg_146_0._lastBattleUnitCount = nil
		arg_146_0._lastBattleDpsRows = nil
		arg_146_0._currentBattleUnitCount = nil
		arg_146_0._dpsHoverUnit = nil
		arg_146_0._dpsHoverRow = nil
		arg_146_0._dpsHoverRowIndex = nil
		arg_146_0._dpsHoverTarget = nil
		arg_146_0._dpsDamageHoverTip = nil
		arg_146_0._dpsTitleOverlayPanelRect = nil
		arg_146_0._dpsEmptyOverlayPanelRect = nil
		arg_146_0._dpsEmptyOverlayVisible = false
	end

	if arg_146_1 then
		arg_146_1._lastBattleUnitCount = nil
		arg_146_1._lastBattleDpsRows = nil
		arg_146_1._currentBattleUnitCount = nil
	end

	return true
end

function var_0_0.handleDpsWheel(arg_147_0, arg_147_1, arg_147_2, arg_147_3, arg_147_4, arg_147_5, arg_147_6)
	if not arg_147_0 or not arg_147_1 or not arg_147_2 or not arg_147_4 or not arg_147_5 or not arg_147_6 or arg_147_6 == 0 then
		return false
	end

	if var_0_146(arg_147_0, arg_147_3) then
		return false
	end

	if arg_147_0._shopMode or arg_147_0._stoneMode then
		return false
	end

	if arg_147_0.pauseOverlayState and arg_147_0.pauseOverlayState.active then
		return false
	end

	local var_147_0 = var_0_124(arg_147_0)

	if not var_147_0 or var_147_0.open ~= true and not ((var_147_0.progress or 0) > 0.01) then
		return false
	end

	local var_147_1 = var_0_5(var_147_0.progress or 0, 0, 1)
	local var_147_2 = 1 - (1 - var_147_1) * (1 - var_147_1) * (1 - var_147_1)
	local var_147_3 = var_0_144(arg_147_0, arg_147_2, var_147_2)

	if not var_147_3 then
		return false
	end

	local var_147_4 = arg_147_0.dpsWindow and arg_147_0.dpsWindow.slotList or {}
	local var_147_5 = var_147_3.x + (tonumber(var_147_4.x or 476) or 476)
	local var_147_6 = var_147_3.y + (tonumber(var_147_4.y or 52) or 52)
	local var_147_7 = arg_147_2 and arg_147_2.ui and arg_147_2.ui.dpsSlot
	local var_147_8 = math.max(1, math.floor(tonumber(var_147_4.scale or 2) or 2))
	local var_147_9 = math.max(var_147_7 and var_147_7:getWidth() * var_147_8 or 32, tonumber(var_147_4.wheelW or 150) or 150)
	local var_147_10 = math.max(1, tonumber(var_147_4.viewH or 156) or 156)
	local var_147_11 = var_0_128(arg_147_0, arg_147_3, arg_147_2)

	if var_147_11 <= 0 then
		return false
	end

	if arg_147_4 < var_147_5 or arg_147_4 > var_147_5 + var_147_9 or arg_147_5 < var_147_6 or arg_147_5 > var_147_6 + var_147_10 then
		return false
	end

	local var_147_12 = tonumber(var_147_4.scrollSpeed or 18) or 18

	var_147_0.scrollTarget = var_0_5((var_147_0.scrollTarget or var_147_0.scroll or 0) - arg_147_6 * var_147_12, 0, var_147_11)

	return true
end

local function var_0_147(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4, arg_148_5)
	if not arg_148_0 or not arg_148_1 or not arg_148_2 or not arg_148_4 or not arg_148_5 then
		return nil
	end

	if var_0_146(arg_148_0, arg_148_3) then
		return nil
	end

	if arg_148_0._shopMode or arg_148_0._stoneMode then
		return nil
	end

	if arg_148_0.pauseOverlayState and arg_148_0.pauseOverlayState.active then
		return nil
	end

	local var_148_0 = var_0_127(arg_148_3)

	if not var_148_0 or not (#var_148_0 > 0) then
		return nil
	end

	local var_148_1 = var_0_124(arg_148_0)

	if not var_148_1 or var_148_1.open ~= true and not ((var_148_1.progress or 0) > 0.01) then
		return nil
	end

	local var_148_2 = var_0_5(var_148_1.progress or 0, 0, 1)
	local var_148_3 = 1 - (1 - var_148_2) * (1 - var_148_2) * (1 - var_148_2)
	local var_148_4 = var_0_144(arg_148_0, arg_148_2, var_148_3)

	if not var_148_4 then
		return nil
	end

	local var_148_5 = arg_148_0.dpsWindow and arg_148_0.dpsWindow.slotList or {}
	local var_148_6 = arg_148_2 and arg_148_2.ui and arg_148_2.ui.dpsSlot
	local var_148_7 = math.max(1, math.floor(tonumber(var_148_5.scale or 2) or 2))
	local var_148_8 = var_148_6 and var_148_6:getWidth() or 17
	local var_148_9 = var_148_6 and var_148_6:getHeight() or 18
	local var_148_10 = var_148_4.x + (tonumber(var_148_5.x or 476) or 476)
	local var_148_11 = var_148_4.y + (tonumber(var_148_5.y or 52) or 52)
	local var_148_12 = math.max(var_148_6 and var_148_6:getWidth() * var_148_7 or 32, tonumber(var_148_5.wheelW or 150) or 150)
	local var_148_13 = math.max(1, tonumber(var_148_5.viewH or 156) or 156)

	if arg_148_4 < var_148_10 or arg_148_4 > var_148_10 + var_148_12 or arg_148_5 < var_148_11 or arg_148_5 > var_148_11 + var_148_13 then
		return nil
	end

	local var_148_14 = tonumber(var_148_5.gap or 4) or 4
	local var_148_15 = var_148_9 * var_148_7 + var_148_14
	local var_148_16 = arg_148_5 - var_148_11 + (var_148_1.scroll or 0)
	local var_148_17 = math.floor(var_148_16 / math.max(1, var_148_15)) + 1
	local var_148_18 = (var_148_17 - 1) * var_148_15

	if var_148_17 < 1 or var_148_17 > #var_148_0 then
		return nil
	end

	if var_148_16 < var_148_18 or var_148_16 > var_148_18 + var_148_9 * var_148_7 then
		return nil
	end

	local var_148_19 = var_148_0[var_148_17]
	local var_148_20 = var_148_11 + var_148_18 - (var_148_1.scroll or 0)
	local var_148_21 = {
		x = var_148_10,
		y = var_148_20,
		w = var_148_8 * var_148_7,
		h = var_148_9 * var_148_7
	}
	local var_148_22 = var_0_131(arg_148_4, arg_148_5, var_148_21)

	if var_148_19 then
		local var_148_23 = var_0_32(arg_148_2, arg_148_3, var_148_19)

		if var_148_23 then
			local var_148_24 = tonumber(var_148_5.portraitX or 3) or 3
			local var_148_25 = tonumber(var_148_5.portraitY or 3) or 3
			local var_148_26 = math.max(1, math.floor(tonumber(var_148_5.portraitScale or 1) or 1))
			local var_148_27 = {
				x = var_148_10 + var_148_24,
				y = var_148_20 + var_148_25,
				w = var_148_23:getWidth() * var_148_26,
				h = var_148_23:getHeight() * var_148_26
			}

			var_148_22 = var_148_22 or var_0_131(arg_148_4, arg_148_5, var_148_27)
		end
	end

	if var_148_22 then
		return var_148_19, var_148_17
	end

	return nil
end

local function var_0_148(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5)
	if not arg_149_0 or not arg_149_1 or not arg_149_2 or not arg_149_4 or not arg_149_5 then
		return nil
	end

	if var_0_146(arg_149_0, arg_149_3) then
		return nil
	end

	if arg_149_0._shopMode or arg_149_0._stoneMode then
		return nil
	end

	if arg_149_0.pauseOverlayState and arg_149_0.pauseOverlayState.active then
		return nil
	end

	local var_149_0 = var_0_127(arg_149_3)

	if not var_149_0 or not (#var_149_0 > 0) then
		return nil
	end

	local var_149_1 = var_0_124(arg_149_0)

	if not var_149_1 or var_149_1.open ~= true and not ((var_149_1.progress or 0) > 0.01) then
		return nil
	end

	local var_149_2 = var_0_5(var_149_1.progress or 0, 0, 1)
	local var_149_3 = 1 - (1 - var_149_2) * (1 - var_149_2) * (1 - var_149_2)
	local var_149_4 = var_0_144(arg_149_0, arg_149_2, var_149_3)

	if not var_149_4 then
		return nil
	end

	local var_149_5 = arg_149_0.dpsWindow and arg_149_0.dpsWindow.slotList or {}
	local var_149_6 = arg_149_2 and arg_149_2.ui and arg_149_2.ui.dpsSlot
	local var_149_7 = math.max(1, math.floor(tonumber(var_149_5.scale or 2) or 2))
	local var_149_8 = var_149_6 and var_149_6:getHeight() or 18
	local var_149_9 = var_149_4.x + (tonumber(var_149_5.x or 476) or 476)
	local var_149_10 = var_149_4.y + (tonumber(var_149_5.y or 52) or 52)
	local var_149_11 = math.max(1, tonumber(var_149_5.viewH or 156) or 156)

	if arg_149_4 < var_149_9 or arg_149_5 < var_149_10 or arg_149_5 > var_149_10 + var_149_11 then
		return nil
	end

	local var_149_12 = tonumber(var_149_5.gap or 4) or 4
	local var_149_13 = var_149_8 * var_149_7 + var_149_12
	local var_149_14 = arg_149_5 - var_149_10 + (var_149_1.scroll or 0)
	local var_149_15 = math.floor(var_149_14 / math.max(1, var_149_13)) + 1
	local var_149_16 = (var_149_15 - 1) * var_149_13
	local var_149_17 = var_149_0[var_149_15]

	if not var_149_17 then
		return nil
	end

	if var_149_14 < var_149_16 or var_149_14 > var_149_16 + var_149_8 * var_149_7 then
		return nil
	end

	local var_149_18 = 0

	for iter_149_0, iter_149_1 in ipairs(var_149_0) do
		var_149_18 = math.max(var_149_18, tonumber(iter_149_1 and iter_149_1.damage or 0) or 0)
	end

	if var_149_18 <= 0 then
		return nil
	end

	local var_149_19 = math.max(0, math.floor((tonumber(var_149_17.damage or 0) or 0) + 0.5))
	local var_149_20 = math.min(var_149_19, math.max(0, math.floor((tonumber(var_149_17.skillDamage or 0) or 0) + 0.5)))
	local var_149_21 = tonumber(var_149_5.damageBarX or 40) or 40
	local var_149_22 = math.max(1, tonumber(var_149_5.damageBarW or 92) or 92)
	local var_149_23 = math.max(2, tonumber(var_149_5.damageBarH or 5) or 5)
	local var_149_24 = tonumber(var_149_5.damageBarOffsetY or 15) or 15
	local var_149_25 = math.max(0, math.floor(tonumber(var_149_5.damageBarShadowBottomPx or 1) or 1))
	local var_149_26 = var_149_10 + var_149_16 - (var_149_1.scroll or 0) + var_149_24
	local var_149_27 = math.floor(var_149_22 * var_0_5(var_149_19 / var_149_18, 0, 1) + 0.5)
	local var_149_28 = math.min(var_149_27, math.floor(var_149_22 * var_0_5(var_149_20 / var_149_18, 0, 1) + 0.5))
	local var_149_29 = math.max(0, var_149_27 - var_149_28)
	local var_149_30 = {
		x = var_149_9 + var_149_21,
		y = var_149_26,
		w = var_149_29,
		h = var_149_23 + var_149_25
	}
	local var_149_31 = {
		x = var_149_9 + var_149_21 + math.max(0, var_149_27 - var_149_28),
		y = var_149_26,
		w = var_149_28,
		h = var_149_23 + var_149_25
	}
	local var_149_32 = _G.currentGameLang or "ko"
	local var_149_33 = var_0_3.getText("dps_skill_damage", var_149_32)
	local var_149_34 = var_0_3.getText("dps_basic_damage", var_149_32)

	if var_149_28 > 0 and var_0_131(arg_149_4, arg_149_5, var_149_31) then
		return {
			text = var_149_33,
			mx = arg_149_4,
			my = arg_149_5
		}
	end

	if var_149_29 > 0 and var_0_131(arg_149_4, arg_149_5, var_149_30) then
		return {
			text = var_149_34,
			mx = arg_149_4,
			my = arg_149_5
		}
	end

	return nil
end

function var_0_0.updateDpsHoverUnit(arg_150_0, arg_150_1, arg_150_2, arg_150_3, arg_150_4, arg_150_5)
	if not arg_150_0 then
		return nil
	end

	local var_150_0, var_150_1 = var_0_147(arg_150_0, arg_150_1, arg_150_2, arg_150_3, arg_150_4, arg_150_5)

	arg_150_0._dpsHoverUnit = var_150_0 and var_150_0.unit or nil
	arg_150_0._dpsHoverRow = var_150_0 or nil
	arg_150_0._dpsHoverRowIndex = var_150_1
	arg_150_0._dpsDamageHoverTip = var_0_148(arg_150_0, arg_150_1, arg_150_2, arg_150_3, arg_150_4, arg_150_5)

	if var_150_0 then
		local var_150_2 = var_150_0.battleUnit
		local var_150_3 = var_150_0.unit
		local var_150_4 = var_150_2 and var_150_2.alive ~= false and (arg_150_3 and arg_150_3.mode == "battle" or arg_150_3 and arg_150_3.gameOver == true) and var_150_2 or var_150_3 or var_150_2

		arg_150_0._dpsHoverTarget = var_150_4 and {
			kind = var_150_4 == var_150_2 and "ally" or var_150_0.kind or "roster",
			ref = var_150_4,
			sym = var_150_0.sym or var_150_4.sym,
			x = var_150_4.x or arg_150_4,
			y = var_150_4.y or arg_150_5
		} or nil
	else
		arg_150_0._dpsHoverTarget = nil
	end

	return arg_150_0._dpsHoverUnit
end

function var_0_0.hitTestDpsSlotList(arg_151_0, arg_151_1, arg_151_2, arg_151_3, arg_151_4, arg_151_5)
	return var_0_147(arg_151_0, arg_151_1, arg_151_2, arg_151_3, arg_151_4, arg_151_5) ~= nil
end

function var_0_0.handleDpsSandboxTuningMousePressed(arg_152_0, arg_152_1, arg_152_2, arg_152_3, arg_152_4, arg_152_5, arg_152_6)
	if arg_152_6 ~= 1 then
		return false
	end

	if not var_0_135(arg_152_0, arg_152_3) then
		return false
	end

	local var_152_0 = var_0_124(arg_152_0)
	local var_152_1 = 1 - (1 - var_0_5(var_152_0.progress or 0, 0, 1)) * (1 - var_0_5(var_152_0.progress or 0, 0, 1)) * (1 - var_0_5(var_152_0.progress or 0, 0, 1))
	local var_152_2 = var_0_144(arg_152_0, arg_152_2, var_152_1)
	local var_152_3 = var_0_137(arg_152_0, var_152_2)
	local var_152_4 = var_0_136(arg_152_0)

	if not var_152_2 or not var_152_3 or not var_152_4 then
		return false
	end

	if var_0_138(arg_152_4, arg_152_5, var_152_3.adjust) then
		var_152_4.active = not var_152_4.active
		var_152_4.drag = nil

		return true
	end

	if not var_152_4.active then
		return false
	end

	if var_0_138(arg_152_4, arg_152_5, var_152_3.save) then
		if var_0_140(arg_152_0) then
			var_152_4.savedUntil = (love.timer and love.timer.getTime and love.timer.getTime() or 0) + 1.25
		end

		return true
	end

	local var_152_5 = var_152_3.box

	if var_0_138(arg_152_4, arg_152_5, var_152_5) then
		local var_152_6 = "move"

		if arg_152_4 >= var_152_5.x + var_152_5.w - 8 and arg_152_5 >= var_152_5.y + var_152_5.h - 8 then
			var_152_6 = "resizeBoth"
		elseif arg_152_4 >= var_152_5.x + var_152_5.w - 8 then
			var_152_6 = "resizeW"
		elseif arg_152_5 >= var_152_5.y + var_152_5.h - 8 then
			var_152_6 = "resizeH"
		end

		var_152_4.drag = {
			mode = var_152_6,
			startX = arg_152_4,
			startY = arg_152_5,
			boxX = var_152_5.x,
			boxY = var_152_5.y,
			boxW = var_152_5.w,
			boxH = var_152_5.h
		}

		return true
	end

	return false
end

function var_0_0.handleDpsSandboxTuningMouseMoved(arg_153_0, arg_153_1, arg_153_2, arg_153_3, arg_153_4, arg_153_5)
	if not var_0_135(arg_153_0, arg_153_3) then
		return false
	end

	local var_153_0 = var_0_136(arg_153_0)

	if not var_153_0 or not var_153_0.active or not var_153_0.drag then
		return false
	end

	local var_153_1 = var_0_124(arg_153_0)
	local var_153_2 = var_0_5(var_153_1.progress or 0, 0, 1)
	local var_153_3 = 1 - (1 - var_153_2) * (1 - var_153_2) * (1 - var_153_2)
	local var_153_4 = var_0_144(arg_153_0, arg_153_2, var_153_3)

	if not var_153_4 then
		return false
	end

	local var_153_5 = var_153_0.drag
	local var_153_6 = arg_153_4 - (var_153_5.startX or arg_153_4)
	local var_153_7 = arg_153_5 - (var_153_5.startY or arg_153_5)
	local var_153_8 = {
		x = var_153_5.boxX,
		y = var_153_5.boxY,
		w = var_153_5.boxW,
		h = var_153_5.boxH
	}

	if var_153_5.mode == "move" then
		var_153_8.x = var_153_5.boxX + var_153_6
		var_153_8.y = var_153_5.boxY + var_153_7
	elseif var_153_5.mode == "resizeW" then
		var_153_8.w = var_153_5.boxW + var_153_6
	elseif var_153_5.mode == "resizeH" then
		var_153_8.h = var_153_5.boxH + var_153_7
	elseif var_153_5.mode == "resizeBoth" then
		var_153_8.w = var_153_5.boxW + var_153_6
		var_153_8.h = var_153_5.boxH + var_153_7
	end

	var_153_8.x = var_0_5(var_153_8.x, var_153_4.x, var_153_4.x + var_153_4.w - 24)
	var_153_8.y = var_0_5(var_153_8.y, var_153_4.y, var_153_4.y + var_153_4.h - 24)
	var_153_8.w = var_0_5(var_153_8.w, 24, var_153_4.x + var_153_4.w - var_153_8.x)
	var_153_8.h = var_0_5(var_153_8.h, 24, var_153_4.y + var_153_4.h - var_153_8.y)

	var_0_141(arg_153_0, var_153_4, var_153_8)

	return true
end

function var_0_0.handleDpsSandboxTuningMouseReleased(arg_154_0)
	local var_154_0 = var_0_136(arg_154_0)

	if var_154_0 and var_154_0.drag then
		var_154_0.drag = nil

		return true
	end

	return false
end

function var_0_0.drawDpsButton(arg_155_0, arg_155_1, arg_155_2, arg_155_3, arg_155_4, arg_155_5)
	if arg_155_0 then
		arg_155_0._dpsTitleOverlayPanelRect = nil
		arg_155_0._dpsEmptyOverlayPanelRect = nil
		arg_155_0._dpsEmptyOverlayVisible = false
	end

	if arg_155_3 or arg_155_4 then
		return
	end

	local var_155_0 = var_0_124(arg_155_0)

	if var_155_0 and arg_155_5 and arg_155_5.gameOver == true then
		var_155_0.open = true
	end

	local var_155_1 = var_0_143(arg_155_0)
	local var_155_2 = var_0_145(arg_155_0, arg_155_1, arg_155_2, var_155_1)

	if not var_155_2 then
		return
	end

	local var_155_3 = var_0_125(arg_155_0, arg_155_2) or var_155_2.img
	local var_155_4 = var_155_2.x
	local var_155_5 = var_155_2.y
	local var_155_6 = var_155_2.scale
	local var_155_7 = var_155_2.iw
	local var_155_8 = var_155_2.ih
	local var_155_9 = arg_155_0 and arg_155_0.dpsButton or {}
	local var_155_10 = false

	if var_155_9.hover ~= false and not var_0_146(arg_155_0, arg_155_5) and (not arg_155_5 or arg_155_5.gameOver ~= true) and (not arg_155_0 or not arg_155_0.pauseOverlayState or not arg_155_0.pauseOverlayState.active) then
		local var_155_11 = arg_155_0 and arg_155_0.tooltip and arg_155_0.tooltip.mouseX
		local var_155_12 = arg_155_0 and arg_155_0.tooltip and arg_155_0.tooltip.mouseY

		if var_155_11 and var_155_12 then
			var_155_10 = var_155_4 <= var_155_11 and var_155_11 <= var_155_4 + var_155_7 * var_155_6 and var_155_5 <= var_155_12 and var_155_12 <= var_155_5 + var_155_8 * var_155_6
		end
	end

	if var_155_10 then
		local var_155_13 = var_0_33()

		if var_155_13 then
			love.graphics.setShader(var_155_13)
			var_155_13:send("texelStep", {
				1 / math.max(1, var_155_7),
				1 / math.max(1, var_155_8)
			})
			var_155_13:send("outlineColor", var_155_9.outlineColor or {
				0.9294117647058824,
				0.9019607843137255,
				0.9529411764705882,
				1
			})
			var_155_13:send("threshold", var_155_9.outlineThreshold or 0.5)
			var_155_13:send("radiusPx", var_155_9.outlineRadiusPx or 2)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_155_3, var_155_4, var_155_5, 0, var_155_6, var_155_6)
			love.graphics.setShader()
		end
	end

	local var_155_14 = var_0_144(arg_155_0, arg_155_2, var_155_1)

	if var_155_14 and arg_155_0 and arg_155_0.virtual and arg_155_1 then
		local var_155_15 = arg_155_0 and arg_155_0.dpsWindow or {}
		local var_155_16 = var_155_15 and var_155_15.title
		local var_155_17 = not var_155_16 or var_155_16.highRes ~= false

		if var_155_17 then
			arg_155_0._dpsTitleOverlayPanelRect = var_155_14
		else
			arg_155_0._dpsTitleOverlayPanelRect = nil
		end

		love.graphics.setColor(1, 1, 1, var_155_15.alpha or 1)
		love.graphics.draw(var_155_14.img, var_155_14.x, var_155_14.y, 0, var_155_14.sx, var_155_14.sy)
		love.graphics.setColor(1, 1, 1, 1)

		if not var_155_17 then
			var_0_134(arg_155_0, var_155_14)
		end

		var_0_133(arg_155_0, var_155_14, arg_155_2, arg_155_5)
		var_0_142(arg_155_0, var_155_14, arg_155_5)
		var_0_132(arg_155_0, arg_155_0._dpsDamageHoverTip)
	end

	local var_155_18 = arg_155_2 and arg_155_2.ui and arg_155_2.ui.dpsShadow

	if var_155_18 then
		local var_155_19 = var_155_18:getWidth()
		local var_155_20 = var_155_18:getHeight()
		local var_155_21 = math.floor(var_155_4 + (var_155_7 * var_155_6 - var_155_19 * var_155_6) * 0.5 + tonumber(var_155_9.shadowOffsetX or 0) + 0.5)
		local var_155_22 = math.floor(var_155_5 + (var_155_8 * var_155_6 - var_155_20 * var_155_6) * 0.5 + tonumber(var_155_9.shadowOffsetY or 0) + 0.5)

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_155_18, var_155_21, var_155_22, 0, var_155_6, var_155_6)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(var_155_3, var_155_4, var_155_5, 0, var_155_6, var_155_6)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_149(arg_156_0, arg_156_1, arg_156_2)
	local var_156_0
	local var_156_1
	local var_156_2
	local var_156_3 = math.floor(arg_156_0 * 6)
	local var_156_4 = arg_156_0 * 6 - var_156_3
	local var_156_5 = arg_156_2 * (1 - arg_156_1)
	local var_156_6 = arg_156_2 * (1 - var_156_4 * arg_156_1)
	local var_156_7 = arg_156_2 * (1 - (1 - var_156_4) * arg_156_1)
	local var_156_8 = var_156_3 % 6

	if var_156_8 == 0 then
		var_156_0, var_156_1, var_156_2 = arg_156_2, var_156_7, var_156_5
	elseif var_156_8 == 1 then
		var_156_0, var_156_1, var_156_2 = var_156_6, arg_156_2, var_156_5
	elseif var_156_8 == 2 then
		var_156_0, var_156_1, var_156_2 = var_156_5, arg_156_2, var_156_7
	elseif var_156_8 == 3 then
		var_156_0, var_156_1, var_156_2 = var_156_5, var_156_6, arg_156_2
	elseif var_156_8 == 4 then
		var_156_0, var_156_1, var_156_2 = var_156_7, var_156_5, arg_156_2
	elseif var_156_8 == 5 then
		var_156_0, var_156_1, var_156_2 = arg_156_2, var_156_5, var_156_6
	end

	return var_156_0, var_156_1, var_156_2
end

local var_0_150 = {}

function var_0_0.triggerSlotWinEffects(arg_157_0, arg_157_1, arg_157_2, arg_157_3)
	local var_157_0 = ({
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
	})[arg_157_2]

	if not var_157_0 or not arg_157_1 then
		return
	end

	local var_157_1 = arg_157_1.x
	local var_157_2 = arg_157_1.y
	local var_157_3 = arg_157_1.w
	local var_157_4 = arg_157_1.h
	local var_157_5 = 3
	local var_157_6 = 3
	local var_157_7 = var_157_3 / var_157_5
	local var_157_8 = var_157_4 / var_157_6
	local var_157_9 = var_157_2 + var_157_4 + 40
	local var_157_10 = 6
	local var_157_11 = 1
	local var_157_12 = 0
	local var_157_13 = 0
	local var_157_14 = {
		1,
		1,
		1
	}
	local var_157_15
	local var_157_16 = {
		1,
		0.9,
		0.3
	}
	local var_157_17 = false

	if arg_157_3 == "advanced" then
		var_157_10 = 12
		var_157_11 = 3
		var_157_13 = 0.08
		var_157_14 = {
			0.5,
			1,
			0.5
		}
		var_157_16 = {
			0.5,
			1,
			0.5
		}
	elseif arg_157_3 == "rare" then
		var_157_10 = 20
		var_157_11 = 5
		var_157_13 = 0.18
		var_157_14 = {
			0.3,
			0.6,
			1
		}
		var_157_16 = {
			0.3,
			0.7,
			1
		}
	elseif arg_157_3 == "legendary" then
		var_157_10 = 35
		var_157_11 = 8
		var_157_12 = 0
		var_157_13 = 0.35
		var_157_14 = {
			1,
			0.75,
			0.15
		}
		var_157_16 = {
			1,
			0.75,
			0.1
		}
	elseif arg_157_3 == "prism" then
		var_157_10 = 75
		var_157_11 = 15
		var_157_12 = 0
		var_157_13 = 0.6
		var_157_14 = {
			1,
			0.95,
			1
		}
		var_157_17 = true
	end

	local var_157_18 = {}

	for iter_157_0, iter_157_1 in ipairs(var_157_0) do
		local var_157_19 = iter_157_1[1]
		local var_157_20 = var_157_1 + (iter_157_1[2] - 1) * var_157_7
		local var_157_21 = math.floor(var_157_20 + var_157_7 / 2 + 0.5)
		local var_157_22 = math.floor(var_157_2 + (var_157_19 - 0.5) * var_157_8 + 0.5)

		table.insert(var_157_18, {
			x = var_157_21,
			y = var_157_22
		})
	end

	for iter_157_2, iter_157_3 in ipairs(var_157_18) do
		for iter_157_4 = 1, var_157_11 do
			local var_157_23 = math.random() * math.pi * 2
			local var_157_24 = math.random(5, 25)

			table.insert(var_0_150, {
				type = "sparkle",
				t = 0,
				x = iter_157_3.x + math.cos(var_157_23) * var_157_24,
				y = iter_157_3.y + math.sin(var_157_23) * var_157_24,
				size = math.random(10, 20),
				angle = math.random() * math.pi * 2,
				vangle = (math.random() > 0.5 and 1 or -1) * (2 + math.random() * 4),
				r = var_157_16[1],
				g = var_157_16[2],
				b = var_157_16[3],
				dur = 0.4 + math.random() * 0.3
			})
		end

		for iter_157_5 = 1, var_157_10 do
			local var_157_25 = math.random() * math.pi * 2
			local var_157_26 = 60
			local var_157_27 = 150

			if arg_157_3 == "advanced" then
				var_157_26, var_157_27 = 80, 200
			elseif arg_157_3 == "rare" then
				var_157_26, var_157_27 = 100, 260
			elseif arg_157_3 == "legendary" then
				var_157_26, var_157_27 = 120, 340
			elseif arg_157_3 == "prism" then
				var_157_26, var_157_27 = 150, 480
			end

			local var_157_28 = math.random(var_157_26, var_157_27)
			local var_157_29 = var_157_16[1]
			local var_157_30 = var_157_16[2]
			local var_157_31 = var_157_16[3]

			if arg_157_3 == "prism" then
				var_157_29, var_157_30, var_157_31 = var_0_149(math.random(), 0.9, 1)
			elseif math.random() < 0.38 then
				var_157_29, var_157_30, var_157_31 = var_0_149(math.random(), 0.78, 1)
			elseif arg_157_3 == "normal" then
				local var_157_32 = 0.55 + math.random() * 0.15

				var_157_29, var_157_30, var_157_31 = var_157_32, var_157_32, var_157_32
			else
				local var_157_33 = (math.random() * 2 - 1) * 0.15

				var_157_29 = var_0_5(var_157_29 + var_157_33, 0, 1)
				var_157_30 = var_0_5(var_157_30 + var_157_33, 0, 1)
				var_157_31 = var_0_5(var_157_31 + var_157_33, 0, 1)
			end

			table.insert(var_0_150, {
				type = "confetti",
				t = 0,
				x = iter_157_3.x,
				y = iter_157_3.y,
				vx = math.cos(var_157_25) * var_157_28,
				vy = math.sin(var_157_25) * var_157_28 - 150,
				size = math.random(6, 12),
				angle = math.random() * math.pi * 2,
				vangle = (math.random() * 2 - 1) * (10 + math.random() * 15),
				r = var_157_29,
				g = var_157_30,
				b = var_157_31,
				dur = 1 + math.random() * 0.8
			})
		end
	end

	if var_157_12 > 0 then
		local var_157_34 = var_157_1 + var_157_3 / 2
		local var_157_35 = var_157_2 + var_157_4 - 15

		for iter_157_6 = 1, var_157_12 do
			table.insert(var_0_150, {
				type = "coin",
				t = 0,
				x = var_157_34 + (math.random() * 60 - 30),
				y = var_157_35,
				vx = math.random() * 320 - 160,
				vy = -(350 + math.random() * 350),
				angle = math.random() * math.pi * 2,
				vangle = (math.random() * 2 - 1) * (8 + math.random() * 12),
				groundY = var_157_9,
				dur = 1.8 + math.random() * 0.6,
				volume = arg_157_3 == "prism" and 0.5 or 0.35
			})
		end
	end

	if var_157_13 > 0 then
		table.insert(var_0_150, {
			t = 0,
			dur = 0.35,
			type = "screenFlash",
			r = var_157_14[1],
			g = var_157_14[2],
			b = var_157_14[3],
			maxAlpha = var_157_13
		})
	end

	if var_157_15 then
		local var_157_36 = var_157_1 + var_157_3 / 2
		local var_157_37 = var_157_2 + var_157_4 / 2

		if #var_157_18 == 3 then
			var_157_36 = var_157_18[2].x
			var_157_37 = var_157_18[2].y
		end

		table.insert(var_0_150, {
			vy = -90,
			type = "floatText",
			t = 0,
			dur = 1.1,
			text = var_157_15,
			x = var_157_36,
			y = var_157_37 - 20,
			r = var_157_16[1],
			g = var_157_16[2],
			b = var_157_16[3],
			rainbow = var_157_17
		})
	end

	local var_157_38 = var_0_1 and var_0_1.audio

	if var_157_38 then
		local var_157_39

		if arg_157_3 == "normal" or arg_157_3 == "advanced" then
			var_157_39 = var_157_38.custom_win
		elseif arg_157_3 == "rare" then
			var_157_39 = var_157_38.custom_winrare
		elseif arg_157_3 == "legendary" then
			var_157_39 = var_157_38.custom_winlegend
		elseif arg_157_3 == "prism" then
			var_157_39 = var_157_38.custom_winprism
		end

		if var_157_39 then
			if arg_157_3 == "advanced" and var_157_39.setPitch then
				var_157_39:setPitch(1.15)
			elseif var_157_39.setPitch then
				var_157_39:setPitch(1)
			end

			if var_157_39:isPlaying() then
				var_157_39:stop()
			end

			var_157_39:play()
		end
	end
end

function var_0_0.updateSlotWinEffects(arg_158_0)
	arg_158_0 = arg_158_0 or 0

	for iter_158_0 = #var_0_150, 1, -1 do
		local var_158_0 = var_0_150[iter_158_0]

		var_158_0.t = var_158_0.t + arg_158_0

		if var_158_0.t >= var_158_0.dur then
			table.remove(var_0_150, iter_158_0)
		elseif var_158_0.type == "confetti" then
			var_158_0.x = var_158_0.x + var_158_0.vx * arg_158_0
			var_158_0.y = var_158_0.y + var_158_0.vy * arg_158_0
			var_158_0.vy = var_158_0.vy + 750 * arg_158_0
			var_158_0.vx = var_158_0.vx * math.pow(0.96, arg_158_0 * 60)
			var_158_0.angle = var_158_0.angle + var_158_0.vangle * arg_158_0
		elseif var_158_0.type == "coin" then
			var_158_0.x = var_158_0.x + var_158_0.vx * arg_158_0
			var_158_0.y = var_158_0.y + var_158_0.vy * arg_158_0
			var_158_0.vy = var_158_0.vy + 1100 * arg_158_0
			var_158_0.angle = var_158_0.angle + var_158_0.vangle * arg_158_0

			if var_158_0.y >= var_158_0.groundY and var_158_0.vy > 0 then
				var_158_0.y = var_158_0.groundY
				var_158_0.vy = -var_158_0.vy * 0.45
				var_158_0.vx = var_158_0.vx * 0.65
				var_158_0.vangle = var_158_0.vangle * 0.5

				if math.abs(var_158_0.vy) > 35 then
					local var_158_1 = var_0_1 and var_0_1.audio and var_0_1.audio.coinClink

					if var_158_1 then
						var_158_1:setPitch(0.85 + math.random() * 0.3)
						var_158_1:setVolume(var_158_0.volume or 0.3)

						if var_158_1:isPlaying() then
							var_158_1:stop()
						end

						var_158_1:play()
					end
				end
			end
		elseif var_158_0.type == "sparkle" then
			var_158_0.angle = var_158_0.angle + var_158_0.vangle * arg_158_0
		elseif var_158_0.type == "floatText" then
			var_158_0.y = var_158_0.y + var_158_0.vy * arg_158_0
			var_158_0.vy = var_158_0.vy * math.pow(0.9, arg_158_0 * 60)
		end
	end
end

function var_0_0.drawSlotWinEffects(arg_159_0, arg_159_1)
	if not arg_159_1 then
		return
	end

	if #var_0_150 == 0 then
		return
	end

	love.graphics.push("all")

	local var_159_0, var_159_1 = love.graphics.getDimensions()

	for iter_159_0, iter_159_1 in ipairs(var_0_150) do
		if iter_159_1.type == "screenFlash" then
			local var_159_2 = math.max(0, 1 - iter_159_1.t / iter_159_1.dur) * iter_159_1.maxAlpha

			love.graphics.setColor(iter_159_1.r, iter_159_1.g, iter_159_1.b, var_159_2)
			love.graphics.rectangle("fill", 0, 0, var_159_0, var_159_1)
		end
	end

	for iter_159_2, iter_159_3 in ipairs(var_0_150) do
		if iter_159_3.type == "sparkle" then
			local var_159_3 = iter_159_3.t / iter_159_3.dur
			local var_159_4 = math.sin(var_159_3 * math.pi)
			local var_159_5 = iter_159_3.size * var_159_4

			love.graphics.setColor(iter_159_3.r, iter_159_3.g, iter_159_3.b, 0.9 * (1 - var_159_3))
			love.graphics.push()
			love.graphics.translate(iter_159_3.x, iter_159_3.y)
			love.graphics.rotate(iter_159_3.angle)
			love.graphics.setLineWidth(2.5)
			love.graphics.line(-var_159_5, 0, var_159_5, 0)
			love.graphics.line(0, -var_159_5, 0, var_159_5)
			love.graphics.rectangle("fill", -var_159_5 * 0.25, -var_159_5 * 0.25, var_159_5 * 0.5, var_159_5 * 0.5)
			love.graphics.pop()
		end
	end

	for iter_159_4, iter_159_5 in ipairs(var_0_150) do
		if iter_159_5.type == "confetti" then
			local var_159_6 = math.max(0, 1 - iter_159_5.t / iter_159_5.dur)

			love.graphics.setColor(iter_159_5.r, iter_159_5.g, iter_159_5.b, var_159_6)
			love.graphics.push()
			love.graphics.translate(iter_159_5.x, iter_159_5.y)
			love.graphics.rotate(iter_159_5.angle)
			love.graphics.rectangle("fill", -iter_159_5.size / 2, -iter_159_5.size / 4, iter_159_5.size, iter_159_5.size / 2)
			love.graphics.pop()
		end
	end

	for iter_159_6, iter_159_7 in ipairs(var_0_150) do
		if iter_159_7.type == "coin" then
			local var_159_7 = math.max(0, 1 - iter_159_7.t / iter_159_7.dur)

			love.graphics.push()
			love.graphics.translate(iter_159_7.x, iter_159_7.y)
			love.graphics.rotate(iter_159_7.angle)
			love.graphics.setColor(1, 0.85, 0.15, var_159_7)
			love.graphics.circle("fill", 0, 0, 7)
			love.graphics.setColor(0.85, 0.65, 0, var_159_7)
			love.graphics.setLineWidth(1.5)
			love.graphics.circle("line", 0, 0, 7)
			love.graphics.setColor(0.2, 0.2, 0.2, var_159_7 * 0.8)
			love.graphics.rectangle("fill", -2, -2, 4, 4)
			love.graphics.pop()
		end
	end

	local var_159_8 = var_0_29(arg_159_0) or love.graphics.getFont()

	love.graphics.setFont(var_159_8)

	for iter_159_8, iter_159_9 in ipairs(var_0_150) do
		if iter_159_9.type == "floatText" then
			local var_159_9 = iter_159_9.t / iter_159_9.dur
			local var_159_10 = 1
			local var_159_11 = 1

			if var_159_9 < 0.15 then
				var_159_10 = var_159_9 / 0.15 * 1.5
			elseif var_159_9 < 0.8 then
				var_159_10 = 1.5 - (var_159_9 - 0.15) * 0.77 * 0.5
			else
				var_159_10 = 1.11
				var_159_11 = math.max(0, 1 - (var_159_9 - 0.8) / 0.2)
			end

			local var_159_12 = var_159_8:getWidth(iter_159_9.text)
			local var_159_13 = var_159_8:getHeight()

			love.graphics.push()
			love.graphics.translate(iter_159_9.x, iter_159_9.y)
			love.graphics.scale(var_159_10, var_159_10)
			love.graphics.setColor(0, 0, 0, var_159_11 * 0.8)
			love.graphics.print(iter_159_9.text, -var_159_12 / 2 + 1.5, -var_159_13 / 2 + 1.5)

			if iter_159_9.rainbow then
				local var_159_14, var_159_15, var_159_16 = var_0_149((love.timer.getTime() * 1.5 + iter_159_9.x * 0.005) % 1, 0.9, 1)

				love.graphics.setColor(var_159_14, var_159_15, var_159_16, var_159_11)
			else
				love.graphics.setColor(iter_159_9.r, iter_159_9.g, iter_159_9.b, var_159_11)
			end

			love.graphics.print(iter_159_9.text, -var_159_12 / 2, -var_159_13 / 2)
			love.graphics.pop()
		end
	end

	love.graphics.pop()
end

function var_0_0.drawDpsTitleOverlay(arg_160_0)
	if not arg_160_0 then
		return
	end

	if not (arg_160_0._dpsTitleOverlayPanelRect or arg_160_0._dpsEmptyOverlayPanelRect) then
		return
	end

	local var_160_0 = arg_160_0.dpsWindow and arg_160_0.dpsWindow.title

	if arg_160_0._dpsTitleOverlayPanelRect and var_160_0 ~= false and (not var_160_0 or var_160_0.highRes ~= false) then
		var_0_134(arg_160_0, arg_160_0._dpsTitleOverlayPanelRect)
	end

	if arg_160_0._dpsEmptyOverlayVisible and arg_160_0._dpsEmptyOverlayPanelRect then
		var_0_129(arg_160_0, arg_160_0._dpsEmptyOverlayPanelRect)
	end
end

function var_0_0.releaseTransientResources()
	if var_0_100 then
		pcall(var_0_100.release, var_0_100)
	end

	if var_0_15 then
		pcall(var_0_15.release, var_0_15)
	end

	if var_0_16 then
		pcall(var_0_16.release, var_0_16)
	end

	for iter_161_0, iter_161_1 in pairs(var_0_17) do
		if iter_161_1 then
			pcall(iter_161_1.release, iter_161_1)
		end
	end

	for iter_161_2, iter_161_3 in pairs(var_0_22) do
		if iter_161_3 then
			pcall(iter_161_3.release, iter_161_3)
		end
	end

	if var_0_18 then
		pcall(var_0_18.release, var_0_18)
	end

	if var_0_20 and var_0_20 ~= var_0_18 then
		pcall(var_0_20.release, var_0_20)
	end

	if var_0_57 then
		pcall(var_0_57.release, var_0_57)
	end

	if var_0_61 then
		pcall(var_0_61.release, var_0_61)
	end

	if var_0_55 then
		pcall(var_0_55.release, var_0_55)
	end

	var_0_15 = nil
	var_0_16 = nil
	var_0_17 = {}
	var_0_22 = {}
	var_0_18 = nil
	var_0_19 = nil
	var_0_20 = nil
	var_0_21 = nil
	var_0_57 = nil
	var_0_58, var_0_59 = 0, 0
	var_0_60 = 0
	var_0_61 = nil
	var_0_62, var_0_63 = 0, 0
	var_0_64, var_0_65 = 0, 0
	var_0_55 = nil
	var_0_100 = nil
	var_0_7 = {}
	var_0_8 = {}
	var_0_150 = {}
end

return var_0_0
