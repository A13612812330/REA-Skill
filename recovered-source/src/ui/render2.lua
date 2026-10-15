local var_0_0 = {}
local var_0_1 = require("src.data.assets")
local var_0_2 = require("src.data.constants")
local var_0_3 = require("src.data.language")
local var_0_4 = require("src.data.faction")
local var_0_5 = require("src.data.font_resolver")
local var_0_6 = require("src.ui.widgets").progress_bar
local var_0_7 = require("src.game.unit_abilities").shrink_imprint

local function var_0_8(arg_1_0, arg_1_1, arg_1_2)
	if arg_1_0 < arg_1_1 then
		return arg_1_1
	end

	if arg_1_2 < arg_1_0 then
		return arg_1_2
	end

	return arg_1_0
end

local function var_0_9(arg_2_0)
	arg_2_0 = var_0_8(arg_2_0, 0, 1)

	return arg_2_0 * arg_2_0 * (3 - 2 * arg_2_0)
end

local function var_0_10(arg_3_0, arg_3_1, arg_3_2)
	if arg_3_0 and arg_3_0:hasUniform(arg_3_1) then
		arg_3_0:send(arg_3_1, arg_3_2)

		return true
	end

	return false
end

local var_0_11 = {}
local var_0_12 = {}
local var_0_13
local var_0_14
local var_0_15
local var_0_16 = false
local var_0_17
local var_0_18 = false
local var_0_19
local var_0_20
local var_0_21 = {}
local var_0_22
local var_0_23
local var_0_24
local var_0_25
local var_0_26 = {}
local var_0_27 = {}
local var_0_28
local var_0_29 = {}

local function var_0_30(arg_4_0)
	return arg_4_0 and ((arg_4_0.bloodScentDmgMul or 0) > 0 or tostring(arg_4_0.kind or ""):find("Blood Assassin", 1, true) or tostring(arg_4_0.skin or ""):find("Blood Assassin", 1, true))
end

local function var_0_31(arg_5_0, arg_5_1)
	local var_5_0
	local var_5_1
	local var_5_2
	local var_5_3

	for iter_5_0, iter_5_1 in ipairs(arg_5_1 or {}) do
		if iter_5_1 and iter_5_1.alive and not iter_5_1.dying and not iter_5_1.isUndyingSoul then
			local var_5_4 = math.max(1, tonumber(iter_5_1.maxhp or iter_5_1.hp or 1) or 1)
			local var_5_5 = math.max(0, tonumber(iter_5_1.hp or 0) or 0)
			local var_5_6 = var_5_5 / var_5_4
			local var_5_7 = (iter_5_1.x or 0) - (arg_5_0.x or 0)
			local var_5_8 = (iter_5_1.y or 0) - (arg_5_0.y or 0)
			local var_5_9 = var_5_7 * var_5_7 + var_5_8 * var_5_8

			if not var_5_0 or var_5_5 < var_5_1 or var_5_5 == var_5_1 and var_5_6 < (var_5_2 or math.huge) or var_5_5 == var_5_1 and var_5_6 == var_5_2 and var_5_9 < (var_5_3 or math.huge) then
				var_5_0, var_5_1, var_5_2, var_5_3 = iter_5_1, var_5_5, var_5_6, var_5_9
			end
		end
	end

	return var_5_0
end

local function var_0_32(arg_6_0)
	return _G.currentGameLang or arg_6_0 and arg_6_0.menuSettings and arg_6_0.menuSettings.language or "ko"
end

local function var_0_33(arg_7_0, arg_7_1, arg_7_2, arg_7_3, arg_7_4)
	if type(arg_7_0) ~= "string" or arg_7_0 == "" then
		return nil
	end

	local var_7_0, var_7_1 = pcall(love.filesystem.getInfo, arg_7_0)

	if not var_7_0 or not var_7_1 then
		return nil
	end

	local var_7_2
	local var_7_3
	local var_7_4 = arg_7_0:lower()

	if var_7_4:match("%.ttf$") or var_7_4:match("%.otf$") then
		var_7_2, var_7_3 = pcall(love.graphics.newFont, arg_7_0, arg_7_1 or 10, "normal")
	else
		var_7_2, var_7_3 = pcall(love.graphics.newFont, arg_7_0)
	end

	if var_7_2 and var_7_3 then
		var_7_3:setFilter("nearest", "nearest")
		var_0_5.attachFallbacks(var_7_3, arg_7_0)

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_7_3, arg_7_2)
		end

		if _G.maybeRegisterSLineTtfTextEffect then
			_G.maybeRegisterSLineTtfTextEffect(var_7_3, arg_7_3, arg_7_0, arg_7_4)
		end

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseLatinFallbackFont and arg_7_3 then
			local var_7_5
			local var_7_6
			local var_7_7 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_7_3) or arg_7_3

			if love.filesystem.getInfo(var_7_7) then
				local var_7_8 = tostring(var_7_7):lower()

				if var_7_8:match("%.ttf$") or var_7_8:match("%.otf$") then
					var_7_5, var_7_6 = pcall(love.graphics.newFont, var_7_7, arg_7_1 or 10, "normal")
				else
					var_7_5, var_7_6 = pcall(love.graphics.newFont, var_7_7)
				end
			end

			if var_7_5 and var_7_6 then
				var_7_6:setFilter("nearest", "nearest")
				_G.registerChineseLatinFallbackFont(var_7_3, var_7_6)
			end
		end

		return var_7_3
	end

	return nil
end

local function var_0_34(arg_8_0, arg_8_1)
	local var_8_0 = var_0_32(arg_8_1)
	local var_8_1 = var_0_5.resolve(arg_8_0, var_8_0)

	if type(var_8_1) ~= "string" or var_8_1 == "" then
		var_8_1 = arg_8_0
	end

	return var_8_1, var_8_0
end

local function var_0_35(arg_9_0)
	local var_9_0, var_9_1 = var_0_34("src/data/font/Galmuri9WSLine.fnt", arg_9_0)
	local var_9_2 = tostring(var_9_1) .. "|" .. tostring(var_9_0)

	if var_0_23 == var_9_2 then
		if var_0_22 then
			return var_0_22
		end

		return arg_9_0 and arg_9_0.font or love.graphics.getFont()
	end

	var_0_22 = var_0_33(var_9_0, 10, nil, "src/data/font/Galmuri9WSLine.fnt", var_9_1) or false
	var_0_23 = var_9_2

	if var_0_22 then
		return var_0_22
	end

	return arg_9_0 and arg_9_0.font or love.graphics.getFont()
end

local function var_0_36(arg_10_0)
	if (_G.currentGameLang or "ko") == "zh" then
		local var_10_0, var_10_1 = pcall(require, "src.ui.imprint")

		if var_10_0 and var_10_1 and var_10_1.getNameFont then
			local var_10_2 = var_10_1.getNameFont()

			if var_10_2 then
				return var_10_2
			end
		end
	end

	local var_10_3, var_10_4 = var_0_34("src/data/font/Galmuri9WS.fnt", arg_10_0)
	local var_10_5 = tostring(var_10_4) .. "|" .. tostring(var_10_3)

	if var_0_25 == var_10_5 then
		if var_0_24 then
			return var_0_24
		end

		return arg_10_0 and arg_10_0.font or love.graphics.getFont()
	end

	var_0_24 = var_0_33(var_10_3, 10, nil, "src/data/font/Galmuri9WS.fnt", var_10_4) or false
	var_0_25 = var_10_5

	if var_0_24 then
		return var_0_24
	end

	return arg_10_0 and arg_10_0.font or love.graphics.getFont()
end

function var_0_0.reloadLanguageFonts()
	var_0_22 = nil
	var_0_23 = nil
	var_0_24 = nil
	var_0_25 = nil
end

local function var_0_37(arg_12_0)
	local var_12_0 = arg_12_0 and arg_12_0.itemInfoOverlay and arg_12_0.itemInfoOverlay.text
	local var_12_1 = arg_12_0 and arg_12_0.infoOverlay and arg_12_0.infoOverlay.text
	local var_12_2 = arg_12_0 and arg_12_0.itemShop and arg_12_0.itemShop.itemLayout
	local var_12_3 = var_12_2 and var_12_2.effectFont or var_12_0 and (var_12_0.bodyFont or var_12_0.font) or var_12_1 and (var_12_1.bodyFont or var_12_1.font) or arg_12_0 and arg_12_0.font or love.graphics.getFont()
	local var_12_4 = var_12_2 and var_12_2.effectScale or var_12_0 and var_12_0.bodyScale or var_12_1 and var_12_1.bodyScale or 1
	local var_12_5 = var_12_2 and var_12_2.effectColor or var_12_0 and var_12_0.bodyColor or var_12_1 and var_12_1.bodyColor or {
		0.82,
		0.84,
		0.86,
		1
	}

	return var_12_3, tonumber(var_12_4 or 1) or 1, var_12_5
end

local function var_0_38(arg_13_0, arg_13_1)
	if not arg_13_0 or not arg_13_0.units or not arg_13_1 then
		return nil
	end

	local var_13_0

	for iter_13_0, iter_13_1 in pairs(arg_13_0.units) do
		if iter_13_1 == arg_13_1 then
			local var_13_1 = arg_13_0.unitsMeta and arg_13_0.unitsMeta[iter_13_0]

			if var_13_1 and type(var_13_1.used) == "string" and var_13_1.used ~= "" then
				return iter_13_0
			end

			var_13_0 = var_13_0 or iter_13_0
		end
	end

	return var_13_0
end

local function var_0_39(arg_14_0, arg_14_1, arg_14_2)
	if not arg_14_0 or not arg_14_1 or not arg_14_2 then
		return nil
	end

	local var_14_0 = arg_14_2.battleUnit or arg_14_2.unit

	if not var_14_0 then
		return nil
	end

	local var_14_1

	if arg_14_1.getUnitAssetForAlly then
		var_14_1 = arg_14_1:getUnitAssetForAlly(var_14_0)
	end

	local var_14_2 = var_0_38(arg_14_0, var_14_1)

	if not var_14_2 then
		return nil
	end

	if var_0_26[var_14_2] ~= nil then
		return var_0_26[var_14_2] or nil
	end

	local var_14_3 = arg_14_0.unitsMeta and arg_14_0.unitsMeta[var_14_2]
	local var_14_4 = var_14_3 and var_14_3.used

	if type(var_14_4) ~= "string" or var_14_4 == "" then
		return nil
	end

	local var_14_5 = var_14_4:gsub("%.png$", "_port.png")

	if var_14_5 == var_14_4 then
		return nil
	end

	local var_14_6, var_14_7 = pcall(love.filesystem.getInfo, var_14_5)

	if not var_14_6 or not var_14_7 then
		return nil
	end

	local var_14_8, var_14_9 = pcall(function()
		if var_14_5:gsub("\\", "/"):find("/05Prism/", 1, true) then
			local var_15_0 = love.image.newImageData(var_14_5)

			require("src.ui.effects").prism_portrait.recolor(var_15_0)

			local var_15_1 = love.graphics.newImage(var_15_0)

			var_15_0:release()

			return var_15_1
		end

		return love.graphics.newImage(var_14_5)
	end)

	if var_14_8 and var_14_9 then
		var_14_9:setFilter("nearest", "nearest")

		var_0_26[var_14_2] = var_14_9

		return var_14_9
	end

	return nil
end

local function var_0_40()
	if var_0_14 then
		return var_0_14
	end

	local var_16_0 = "        extern vec2 texelStep;\n        extern vec4 outlineColor;\n        extern float threshold;\n        extern float radiusPx;\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            float a0 = Texel(tex, tc).a;\n            if (a0 > threshold) {\n                return vec4(0.0);\n            }\n            float found = 0.0;\n            for (int radiusIndex = 1; radiusIndex <= 6; radiusIndex++) {\n                float r = float(radiusIndex);\n                if (r > radiusPx) { break; }\n                vec2 s = texelStep * r;\n                float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n                float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n                float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n                float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n                float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n                float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n                float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n                float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n                float neighbor = max(max(max(a1, a2), max(a3, a4)), max(max(a5, a6), max(a7, a8)));\n                if (neighbor > threshold) {\n                    found = 1.0;\n                    break;\n                }\n            }\n            if (found <= 0.0) {\n                return vec4(0.0);\n            }\n            return outlineColor;\n        }\n    "

	var_0_14 = love.graphics.newShader(var_16_0)

	return var_0_14
end

local function var_0_41(arg_17_0)
	local var_17_0 = math.max(1, math.min(6, math.floor((tonumber(arg_17_0) or 1) + 0.5)))

	if var_0_21[var_17_0] then
		return var_0_21[var_17_0]
	end

	local var_17_1, var_17_2 = pcall(love.image.newImageData, "src/sprites/background/mainbackground/dpsslot.png")

	if not var_17_1 or not var_17_2 then
		return nil
	end

	local var_17_3, var_17_4 = var_17_2:getDimensions()
	local var_17_5 = {}
	local var_17_6 = {}
	local var_17_7 = {}
	local var_17_8 = {}
	local var_17_9 = 1
	local var_17_10 = 0

	local function var_17_11(arg_18_0, arg_18_1)
		return arg_18_1 * var_17_3 + arg_18_0 + 1
	end

	local function var_17_12(arg_19_0, arg_19_1)
		if arg_19_0 < 0 or arg_19_1 < 0 or arg_19_0 >= var_17_3 or arg_19_1 >= var_17_4 then
			return false
		end

		return var_17_5[var_17_11(arg_19_0, arg_19_1)] == true
	end

	for iter_17_0 = 0, var_17_4 - 1 do
		for iter_17_1 = 0, var_17_3 - 1 do
			local var_17_13, var_17_14, var_17_15, var_17_16 = var_17_2:getPixel(iter_17_1, iter_17_0)

			var_17_5[var_17_11(iter_17_1, iter_17_0)] = (var_17_16 or 0) > 0.01
		end
	end

	local function var_17_17(arg_20_0, arg_20_1)
		if arg_20_0 < 0 or arg_20_1 < 0 or arg_20_0 >= var_17_3 or arg_20_1 >= var_17_4 then
			return
		end

		local var_20_0 = var_17_11(arg_20_0, arg_20_1)

		if var_17_6[var_20_0] or var_17_5[var_20_0] then
			return
		end

		var_17_6[var_20_0] = true
		var_17_10 = var_17_10 + 1
		var_17_7[var_17_10], var_17_8[var_17_10] = arg_20_0, arg_20_1
	end

	for iter_17_2 = 0, var_17_3 - 1 do
		var_17_17(iter_17_2, 0)
		var_17_17(iter_17_2, var_17_4 - 1)
	end

	for iter_17_3 = 0, var_17_4 - 1 do
		var_17_17(0, iter_17_3)
		var_17_17(var_17_3 - 1, iter_17_3)
	end

	while var_17_9 <= var_17_10 do
		local var_17_18 = var_17_7[var_17_9]
		local var_17_19 = var_17_8[var_17_9]

		var_17_9 = var_17_9 + 1

		var_17_17(var_17_18 + 1, var_17_19)
		var_17_17(var_17_18 - 1, var_17_19)
		var_17_17(var_17_18, var_17_19 + 1)
		var_17_17(var_17_18, var_17_19 - 1)
	end

	local var_17_20 = love.image.newImageData(var_17_3, var_17_4)

	for iter_17_4 = 0, var_17_4 - 1 do
		for iter_17_5 = 0, var_17_3 - 1 do
			local var_17_21 = false

			if var_17_6[var_17_11(iter_17_5, iter_17_4)] then
				for iter_17_6 = -var_17_0, var_17_0 do
					for iter_17_7 = -var_17_0, var_17_0 do
						if iter_17_7 * iter_17_7 + iter_17_6 * iter_17_6 <= var_17_0 * var_17_0 and var_17_12(iter_17_5 + iter_17_7, iter_17_4 + iter_17_6) then
							var_17_21 = true

							break
						end
					end

					if var_17_21 then
						break
					end
				end
			end

			var_17_20:setPixel(iter_17_5, iter_17_4, 1, 1, 1, var_17_21 and 1 or 0)
		end
	end

	local var_17_22 = love.graphics.newImage(var_17_20)

	var_17_22:setFilter("nearest", "nearest")

	var_0_21[var_17_0] = var_17_22

	return var_17_22
end

local function var_0_42()
	if var_0_15 then
		return var_0_15
	end

	if var_0_16 then
		return nil
	end

	local var_21_0 = "        extern vec3 sourceA;\n        extern vec3 targetA;\n        extern vec3 sourceB;\n        extern vec3 targetB;\n        extern vec3 sourceC;\n        extern vec3 targetC;\n        extern float threshold;\n\n        vec4 effect(vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords) {\n            vec4 texel = Texel(tex, texture_coords);\n            if (texel.a > 0.001) {\n                if (distance(texel.rgb, sourceA) <= threshold) {\n                    texel.rgb = targetA;\n                } else if (distance(texel.rgb, sourceB) <= threshold) {\n                    texel.rgb = targetB;\n                } else if (distance(texel.rgb, sourceC) <= threshold) {\n                    texel.rgb = targetC;\n                }\n            }\n            return texel * color;\n        }\n    "
	local var_21_1, var_21_2 = pcall(love.graphics.newShader, var_21_0)

	if var_21_1 and var_21_2 then
		var_0_15 = var_21_2

		return var_0_15
	end

	var_0_16 = true

	return nil
end

local function var_0_43()
	if var_0_17 then
		return var_0_17
	end

	if var_0_18 then
		return nil
	end

	local var_22_0 = "      extern number u_time;\n      extern vec3   u_uiBase;\n      extern vec2   u_dir;\n      extern number u_cycle;\n      extern number u_scale;\n      extern number u_grainScale;\n      extern number u_grainAmp;\n      extern number u_filmFreq;\n      extern number u_filmAmp;\n      extern number u_specular;\n      extern number u_fresnelPow;\n      extern number u_colorGain;\n      extern number u_saturation;\n      extern number u_mixBP;\n\n      vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n        return a + b * cos(6.28318 * (c * x + d));\n      }\n      float hash(vec2 p){\n        return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n      }\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        vec4 base = Texel(tex, tc);\n        if (base.a <= 0.001) return vec4(0.0);\n\n        vec2 dir = u_dir;\n        if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n        else dir = normalize(dir);\n        vec2 ortho = vec2(-dir.y, dir.x);\n\n        float u = dot(tc, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n        float v = dot(tc, ortho) * u_scale;\n\n        float grainLine = abs(sin(dot(tc, ortho) * u_grainScale));\n        float grainNoise = hash(tc * 97.0);\n        float grain = mix(grainLine, grainNoise, 0.25);\n\n        float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n        float x = u + film;\n\n        vec3 colBP = palette(x, vec3(0.75, 0.70, 0.78), vec3(0.25, 0.20, 0.28), vec3(1.00, 1.00, 1.00), vec3(0.10, 0.43, 0.78));\n        vec3 colWide = palette(u, vec3(0.72), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n        vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n\n        float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n        float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n        float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n\n        float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n        vec3 outRGB = foil * grainMul + spec;\n\n        outRGB = mix(u_uiBase, outRGB, 0.82);\n\n        float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n        outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n\n        float luma = dot(base.rgb, vec3(0.299, 0.587, 0.114));\n        outRGB *= (luma * u_colorGain * 1.5);\n\n        return vec4(outRGB, base.a) * color;\n      }\n    "
	local var_22_1, var_22_2 = pcall(love.graphics.newShader, var_22_0)

	if var_22_1 and var_22_2 then
		var_0_17 = var_22_2

		return var_0_17
	end

	var_0_18 = true

	return nil
end

local function var_0_44(arg_23_0, arg_23_1)
	if type(arg_23_0) ~= "table" then
		return arg_23_1
	end

	return {
		tonumber(arg_23_0[1] or arg_23_1[1]) or arg_23_1[1],
		tonumber(arg_23_0[2] or arg_23_1[2]) or arg_23_1[2],
		tonumber(arg_23_0[3] or arg_23_1[3]) or arg_23_1[3]
	}
end

local function var_0_45(arg_24_0)
	local var_24_0 = tostring(arg_24_0 or ""):lower()

	if var_24_0 == "" then
		return "normal"
	end

	if var_24_0 == "common" then
		return "normal"
	end

	if var_24_0 == "legend" or var_24_0 == "l" then
		return "legendary"
	end

	if var_24_0 == "r" then
		return "rare"
	end

	if var_24_0 == "p" then
		return "prism"
	end

	local var_24_1 = var_0_2 and var_0_2.unitGrades or {}

	if (var_24_1.colors or {})[var_24_0] then
		return var_24_0
	end

	local var_24_2 = var_24_1.labels or {}

	for iter_24_0, iter_24_1 in pairs(var_24_2) do
		if var_24_0 == tostring(iter_24_1 or ""):lower() then
			return var_0_45(iter_24_0)
		end
	end

	return "normal"
end

local function var_0_46(arg_25_0)
	if not arg_25_0 then
		return "normal"
	end

	if arg_25_0.specialJackpot5th == true or arg_25_0.unit and (arg_25_0.unit.jackpot5th == true or arg_25_0.unit.specialJackpot5th == true) or arg_25_0.battleUnit and (arg_25_0.battleUnit.jackpot5th == true or arg_25_0.battleUnit.specialJackpot5th == true) then
		return "prism"
	end

	return var_0_45(arg_25_0.grade or arg_25_0.rarity or arg_25_0.unit and (arg_25_0.unit.grade or arg_25_0.unit.rarity) or arg_25_0.battleUnit and (arg_25_0.battleUnit.grade or arg_25_0.battleUnit.rarity))
end

local function var_0_47(arg_26_0, arg_26_1, arg_26_2)
	local var_26_0 = arg_26_2 and (arg_26_2.color or arg_26_2.borderColor) or arg_26_1 and arg_26_1.colors and arg_26_1.colors[arg_26_0]
	local var_26_1

	if arg_26_0 == "advanced" then
		var_26_1 = {
			0.6,
			0.85,
			0.65
		}
	elseif arg_26_0 == "rare" then
		var_26_1 = {
			0.6,
			0.75,
			1
		}
	elseif arg_26_0 == "legendary" then
		var_26_1 = {
			0.9215686274509803,
			0.5725490196078431,
			0.16862745098039217
		}
	elseif arg_26_0 == "prism" then
		var_26_1 = {
			0.8,
			0.4,
			1
		}
	else
		local var_26_2 = var_0_2 and var_0_2.unitGrades and var_0_2.unitGrades.colors or {}

		var_26_1 = var_0_44(var_26_2[arg_26_0], {
			1,
			1,
			1
		})
	end

	return var_0_44(var_26_0, var_26_1)
end

local function var_0_48(arg_27_0, arg_27_1)
	local var_27_0 = var_0_43()

	if not var_27_0 then
		return nil
	end

	local var_27_1 = type(arg_27_1 and arg_27_1.foil) == "table" and arg_27_1.foil or type(arg_27_0 and arg_27_0.prismFoil) == "table" and arg_27_0.prismFoil or {}

	local function var_27_2(arg_28_0, arg_28_1)
		if var_27_0.hasUniform and not var_27_0:hasUniform(arg_28_0) then
			return
		end

		pcall(function()
			var_27_0:send(arg_28_0, arg_28_1)
		end)
	end

	local var_27_3 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	var_27_2("u_time", var_27_3 % 10000)
	var_27_2("u_uiBase", var_0_44(var_27_1.uiBase, {
		0.24313725490196078,
		0.20784313725490197,
		0.27450980392156865
	}))
	var_27_2("u_dir", var_27_1.dir or {
		1,
		0.4
	})
	var_27_2("u_cycle", tonumber(var_27_1.cycle or var_27_1.cycleSec or 4) or 4)
	var_27_2("u_scale", tonumber(var_27_1.scale or 2) or 2)
	var_27_2("u_grainScale", tonumber(var_27_1.grainScale or 3) or 3)
	var_27_2("u_grainAmp", tonumber(var_27_1.grainAmp or 0.2) or 0.2)
	var_27_2("u_filmFreq", tonumber(var_27_1.filmFreq or 2) or 2)
	var_27_2("u_filmAmp", tonumber(var_27_1.filmAmp or 0.25) or 0.25)
	var_27_2("u_specular", tonumber(var_27_1.specular or 0.5) or 0.5)
	var_27_2("u_fresnelPow", tonumber(var_27_1.fresnelPow or 2.5) or 2.5)
	var_27_2("u_colorGain", tonumber(var_27_1.colorGain or 1.8) or 1.8)
	var_27_2("u_saturation", tonumber(var_27_1.saturation or 1.5) or 1.5)
	var_27_2("u_mixBP", tonumber(var_27_1.mixBP or 0.32) or 0.32)
	love.graphics.setShader(var_27_0)

	return var_27_0
end

local function var_0_49(arg_30_0, arg_30_1)
	arg_30_1 = var_0_45(arg_30_1)

	local var_30_0 = (arg_30_0 and arg_30_0.dpsWindow and arg_30_0.dpsWindow.slotList or {}).gradePalette

	if var_30_0 == false then
		return nil
	end

	if type(var_30_0) ~= "table" then
		var_30_0 = {}
	end

	if var_30_0 == false or var_30_0.enabled == false then
		return nil
	end

	local var_30_1 = type(var_30_0[arg_30_1]) == "table" and var_30_0[arg_30_1] or {}

	if var_30_1.enabled == false then
		return nil
	end

	if arg_30_1 == "normal" and var_30_1.enabled ~= true then
		return nil
	end

	if arg_30_1 == "prism" and var_30_1.foil ~= false and var_30_0.prismFoil ~= false then
		return var_0_48(var_30_0, var_30_1)
	end

	local var_30_2 = var_0_42()

	if not var_30_2 then
		return nil
	end

	local var_30_3 = var_30_1.swaps or {}
	local var_30_4 = var_30_3[1] or {}
	local var_30_5 = var_30_3[2] or {}
	local var_30_6 = var_30_3[3] or {}
	local var_30_7 = var_30_1.source or var_30_0.source or {}
	local var_30_8 = var_0_44(var_30_4.from or var_30_7[1], {
		0.3843137254901961,
		0.3333333333333333,
		0.396078431372549
	})
	local var_30_9 = var_0_44(var_30_5.from or var_30_7[2], {
		0.1803921568627451,
		0.13333333333333333,
		0.1843137254901961
	})
	local var_30_10 = var_0_44(var_30_6.from or var_30_7[3], {
		0.24313725490196078,
		0.20784313725490197,
		0.27450980392156865
	})
	local var_30_11 = var_0_47(arg_30_1, var_30_0, var_30_1)
	local var_30_12 = var_0_44(var_30_4.to, var_30_11)
	local var_30_13 = tonumber(var_30_1.shadowMul or var_30_0.shadowMul or var_30_0.darkMul or 0.48) or 0.48
	local var_30_14 = var_0_44(var_30_5.to or var_30_1.shadowColor, {
		var_0_8((var_30_11[1] or 1) * var_30_13, 0, 1),
		var_0_8((var_30_11[2] or 1) * var_30_13, 0, 1),
		var_0_8((var_30_11[3] or 1) * var_30_13, 0, 1)
	})
	local var_30_15 = tonumber(var_30_1.midMul or var_30_0.midMul or 0.64) or 0.64
	local var_30_16 = var_0_44(var_30_6.to or var_30_1.midColor, {
		var_0_8((var_30_11[1] or 1) * var_30_15, 0, 1),
		var_0_8((var_30_11[2] or 1) * var_30_15, 0, 1),
		var_0_8((var_30_11[3] or 1) * var_30_15, 0, 1)
	})

	var_30_2:send("sourceA", var_30_8)
	var_30_2:send("targetA", var_30_12)
	var_30_2:send("sourceB", var_30_9)
	var_30_2:send("targetB", var_30_14)
	var_30_2:send("sourceC", var_30_10)
	var_30_2:send("targetC", var_30_16)
	var_30_2:send("threshold", tonumber(var_30_1.threshold or var_30_0.threshold or 0.012) or 0.012)
	love.graphics.setShader(var_30_2)

	return var_30_2
end

local var_0_50 = 0
local var_0_51 = 0
local var_0_52 = 0
local var_0_53 = 0
local var_0_54 = 0
local var_0_55 = 0
local var_0_56
local var_0_57 = {}

local function var_0_58(arg_31_0, arg_31_1)
	if not arg_31_0 then
		return false
	end

	local var_31_0 = arg_31_0.imprints or arg_31_0.imps or arg_31_0.unit and (arg_31_0.unit.imprints or arg_31_0.unit.imps)

	if not var_31_0 then
		return false
	end

	for iter_31_0, iter_31_1 in pairs(var_31_0) do
		if iter_31_1 and iter_31_1.id == arg_31_1 then
			return true
		end
	end

	return false
end

local var_0_59

local function var_0_60()
	if var_0_59 then
		return var_0_59
	end

	local var_32_0 = "        extern vec3 u_tint;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            // We want to multiply the background by the tint where the sprite is.\n            // Areas with alpha 0 should return white (1,1,1) so the multiplication is neutral.\n            vec3 res = mix(vec3(1.0, 1.0, 1.0), u_tint, texel.a);\n            return vec4(res, 1.0);\n        }\n    "

	var_0_59 = love.graphics.newShader(var_32_0)

	return var_0_59
end

local function var_0_61(arg_33_0)
	local var_33_0 = arg_33_0

	if var_33_0 == "advanced" then
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
	elseif var_33_0 == "special" then
		return {
			hi = {
				0.9411764705882353,
				0.30980392156862746,
				0.8470588235294118
			},
			lo = {
				0.42,
				0.1,
				0.36
			},
			glow = {
				1,
				0.48,
				0.91
			}
		}
	elseif var_33_0 == "rare" or var_33_0 == "r" then
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
	elseif var_33_0 == "legendary" or var_33_0 == "legend" or var_33_0 == "l" then
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
	elseif var_33_0 == "normal" or not var_33_0 or var_33_0 == "" then
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
	elseif var_33_0 == "prism" then
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

local var_0_62
local var_0_63 = false

local function var_0_64()
	if var_0_62 then
		return var_0_62
	end

	if var_0_63 then
		return nil
	end

	local var_34_0 = "        extern float u_time;\n        extern float baseAlpha;\n        extern float pulse;\n        vec3 rainbow(float x){\n            return 0.62 + 0.38 * cos(6.28318 * (x + vec3(0.00, 0.33, 0.67)));\n        }\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n            float fade = Texel(tex, tc).a;\n            float edgeBand = min(min(tc.x, 1.0 - tc.x), min(tc.y, 1.0 - tc.y));\n            float phase = tc.x * 0.90 + tc.y * 0.65 - edgeBand * 4.0 + u_time * 0.16;\n            vec3 rgb = mix(rainbow(phase), vec3(1.0), 0.08);\n            return vec4(rgb, fade * baseAlpha * pulse) * color;\n        }\n    "
	local var_34_1, var_34_2 = pcall(love.graphics.newShader, var_34_0)

	if var_34_1 and var_34_2 then
		var_0_62 = var_34_2
	else
		var_0_63 = true
	end

	return var_0_62
end

local function var_0_65()
	if var_0_28 then
		return var_0_28
	end

	local var_35_0 = "        extern vec2 texelStep;\n        extern vec4 outlineColor;\n        extern float threshold;\n        extern float radiusPx;\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            float a0 = Texel(tex, tc).a;\n            if (a0 <= threshold) {\n                vec2 s = texelStep;\n                float aL = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n                float aR = Texel(tex, tc + vec2( s.x, 0.0)).a;\n                float aU = Texel(tex, tc + vec2(0.0, -s.y)).a;\n                float aD = Texel(tex, tc + vec2(0.0,  s.y)).a;\n\n                if (max(max(aL, aR), max(aU, aD)) > threshold) {\n                    return outlineColor;\n                }\n\n                if (radiusPx > 1.0) {\n                    float extra = radiusPx - 1.0;\n                    vec2 pos = tc / texelStep;\n                    vec2 f = fract(pos);\n                    float aLL = Texel(tex, tc + vec2(-s.x * 2.0, 0.0)).a;\n                    if (aLL > threshold && f.x < extra) return outlineColor;\n                    float aRR = Texel(tex, tc + vec2( s.x * 2.0, 0.0)).a;\n                    if (aRR > threshold && f.x > (1.0 - extra)) return outlineColor;\n                    float aUU = Texel(tex, tc + vec2(0.0, -s.y * 2.0)).a;\n                    if (aUU > threshold && f.y < extra) return outlineColor;\n                    float aDD = Texel(tex, tc + vec2(0.0,  s.y * 2.0)).a;\n                    if (aDD > threshold && f.y > (1.0 - extra)) return outlineColor;\n                }\n            }\n            return vec4(0.0);\n        }\n    "

	var_0_28 = love.graphics.newShader(var_35_0)

	return var_0_28
end

function var_0_0.getDpsDamageFont(arg_36_0)
	return var_0_35(arg_36_0)
end

local var_0_66
local var_0_67 = 0
local var_0_68 = 0
local var_0_69 = 0
local var_0_70
local var_0_71
local var_0_72 = 0
local var_0_73 = 0
local var_0_74 = 0
local var_0_75 = 0
local var_0_76
local var_0_77 = 2

local function var_0_78(arg_37_0, arg_37_1)
	if not arg_37_0 or not arg_37_1 or arg_37_0 <= 0 or arg_37_1 <= 0 then
		arg_37_0, arg_37_1 = love.graphics.getDimensions()
	end

	arg_37_0 = math.floor(arg_37_0 + 0.5)
	arg_37_1 = math.floor(arg_37_1 + 0.5)

	local var_37_0 = table.concat({
		arg_37_0,
		arg_37_1,
		var_0_77
	}, ":")

	if var_0_66 and var_0_67 == arg_37_0 and var_0_68 == arg_37_1 and var_0_69 == var_0_77 then
		return var_0_66
	end

	if var_0_70 == var_37_0 then
		return nil
	end

	local var_37_1, var_37_2 = pcall(function()
		local var_38_0 = love.image.newImageData(arg_37_0, arg_37_1)
		local var_38_1 = math.min(arg_37_0, arg_37_1) < 3 and 0 or 1
		local var_38_2 = var_38_1
		local var_38_3 = arg_37_0 - 1 - var_38_1
		local var_38_4 = var_38_1
		local var_38_5 = arg_37_1 - 1 - var_38_1

		if var_38_2 <= var_38_3 and var_38_4 <= var_38_5 then
			for iter_38_0 = var_38_2, var_38_3 do
				var_38_0:setPixel(iter_38_0, var_38_4, 1, 1, 1, 1)

				if var_38_5 ~= var_38_4 then
					var_38_0:setPixel(iter_38_0, var_38_5, 1, 1, 1, 1)
				end
			end

			for iter_38_1 = var_38_4 + 1, var_38_5 - 1 do
				var_38_0:setPixel(var_38_2, iter_38_1, 1, 1, 1, 1)

				if var_38_3 ~= var_38_2 then
					var_38_0:setPixel(var_38_3, iter_38_1, 1, 1, 1, 1)
				end
			end
		end

		local var_38_6 = love.graphics.newImage(var_38_0)

		var_38_6:setFilter("nearest", "nearest")

		if var_38_0.release then
			pcall(var_38_0.release, var_38_0)
		end

		return var_38_6
	end)

	if not var_37_1 or not var_37_2 then
		var_0_70 = var_37_0

		return nil
	end

	if var_0_66 then
		pcall(var_0_66.release, var_0_66)
	end

	var_0_66 = var_37_2
	var_0_67, var_0_68 = arg_37_0, arg_37_1
	var_0_69 = var_0_77
	var_0_70 = nil

	return var_0_66
end

local function var_0_79(arg_39_0, arg_39_1, arg_39_2)
	local var_39_0 = math.max(0, math.floor(tonumber(arg_39_0) or 0))
	local var_39_1 = math.max(0.5, tonumber(arg_39_1) or 0.5)

	if var_39_0 == 1 then
		return 0
	end

	local var_39_2 = math.abs(var_39_0 - 1)

	if var_39_2 < 1 or var_39_1 < var_39_2 then
		return 0
	end

	local var_39_3 = (var_39_2 - 1) / var_39_1
	local var_39_4 = 1 - var_0_8(var_39_3, 0, 1)

	return math.pow(var_39_4, math.max(0.001, tonumber(arg_39_2) or 1))
end

local function var_0_80(arg_40_0, arg_40_1, arg_40_2, arg_40_3)
	arg_40_0 = math.max(1, math.floor((tonumber(arg_40_0) or 1) + 0.5))
	arg_40_1 = math.max(1, math.floor((tonumber(arg_40_1) or 1) + 0.5))
	arg_40_2 = math.max(0.5, tonumber(arg_40_2) or 0.5)
	arg_40_3 = math.max(0.001, tonumber(arg_40_3) or 1)

	local var_40_0 = table.concat({
		arg_40_0,
		arg_40_1,
		arg_40_2,
		arg_40_3
	}, ":")

	if var_0_71 and var_0_72 == arg_40_0 and var_0_73 == arg_40_1 and var_0_74 == arg_40_2 and var_0_75 == arg_40_3 then
		return var_0_71
	end

	if var_0_76 == var_40_0 then
		return nil
	end

	local var_40_1, var_40_2 = pcall(function()
		local var_41_0 = love.image.newImageData(arg_40_0, arg_40_1)
		local var_41_1 = math.min(math.floor((math.min(arg_40_0, arg_40_1) - 1) * 0.5), math.floor(arg_40_2) + 1)

		for iter_41_0 = 0, var_41_1 do
			local var_41_2 = var_0_79(iter_41_0, arg_40_2, arg_40_3)

			if var_41_2 > 0 then
				local var_41_3 = iter_41_0
				local var_41_4 = arg_40_0 - 1 - iter_41_0
				local var_41_5 = iter_41_0
				local var_41_6 = arg_40_1 - 1 - iter_41_0

				if var_41_3 <= var_41_4 and var_41_5 <= var_41_6 then
					for iter_41_1 = var_41_3, var_41_4 do
						var_41_0:setPixel(iter_41_1, var_41_5, 1, 1, 1, var_41_2)

						if var_41_6 ~= var_41_5 then
							var_41_0:setPixel(iter_41_1, var_41_6, 1, 1, 1, var_41_2)
						end
					end

					for iter_41_2 = var_41_5 + 1, var_41_6 - 1 do
						var_41_0:setPixel(var_41_3, iter_41_2, 1, 1, 1, var_41_2)

						if var_41_4 ~= var_41_3 then
							var_41_0:setPixel(var_41_4, iter_41_2, 1, 1, 1, var_41_2)
						end
					end
				end
			end
		end

		local var_41_7 = love.graphics.newImage(var_41_0)

		var_41_7:setFilter("nearest", "nearest")

		if var_41_0.release then
			pcall(var_41_0.release, var_41_0)
		end

		return var_41_7
	end)

	if not var_40_1 or not var_40_2 then
		var_0_76 = var_40_0

		return nil
	end

	if var_0_71 then
		pcall(var_0_71.release, var_0_71)
	end

	var_0_71 = var_40_2
	var_0_72, var_0_73 = arg_40_0, arg_40_1
	var_0_74, var_0_75 = arg_40_2, arg_40_3
	var_0_76 = nil

	return var_0_71
end

function var_0_0.prepareWaveStartResources(arg_42_0)
	local var_42_0 = arg_42_0 and arg_42_0.virtual and arg_42_0.virtual.W
	local var_42_1 = arg_42_0 and arg_42_0.virtual and arg_42_0.virtual.H

	if not var_42_0 or not var_42_1 then
		var_42_0, var_42_1 = love.graphics.getDimensions()
	end

	local var_42_2 = math.max(1, math.floor((tonumber(var_42_0) or 1) + 0.5))
	local var_42_3 = math.max(1, math.floor((tonumber(var_42_1) or 1) + 0.5))
	local var_42_4 = arg_42_0 and arg_42_0.battle and arg_42_0.battle.absorb or arg_42_0 and arg_42_0.absorb or {}
	local var_42_5 = (var_42_4.glowMaxRadiusPx or 15) + 16
	local var_42_6 = math.max(1.5, (var_42_4.glowFalloff or 1) * 1.55)
	local var_42_7 = var_0_78(var_42_2, var_42_3)
	local var_42_8 = var_0_80(var_42_2, var_42_3, var_42_5, var_42_6)

	var_0_64()

	if love.graphics.flushBatch then
		love.graphics.flushBatch()
	end

	return var_42_7 ~= nil and var_42_8 ~= nil
end

local var_0_81

local function var_0_82()
	if var_0_81 then
		return var_0_81
	end

	local var_43_0 = "        extern float u_strength;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            // standard luminance weights\n            float gray = dot(texel.rgb, vec3(0.299, 0.587, 0.114));\n            float mask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                mask = 1.0 - edge;\n            }\n            vec3 res = mix(texel.rgb, vec3(gray), u_strength * mask);\n            return vec4(res * color.rgb, texel.a * color.a);\n        }\n    "

	var_0_81 = love.graphics.newShader(var_43_0)

	return var_0_81
end

local var_0_83

local function var_0_84()
	if var_0_83 then
		return var_0_83
	end

	local var_44_0 = "        extern number u_time;\n        extern number u_slowStrength;\n        extern vec3 u_slowColor;\n        extern vec3 u_slowEdgeColor;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) return vec4(0.0);\n\n            vec3 slowColor = u_slowColor;\n\n            // Pulse the background intensity for breathing effect\n            float pulse = 0.5 + 0.5 * sin(u_time * 2.5);\n\n            // A slow-moving horizontal heavy gravity wave scrolling down the unit (friction)\n            float wave = sin(tc.y * 12.0 + u_time * 2.2);\n            wave = smoothstep(-0.4, 0.4, wave); // high-contrast sluggish bands\n\n            // Mix rich bronze fatigue tint into the unit's color (45% mix for good visibility)\n            vec3 tinted = mix(texel.rgb, slowColor, 0.45 * u_slowStrength * (0.65 + 0.35 * pulse));\n\n            // Heavy dark sluggish bands (darkening/shadowing effect)\n            tinted = mix(tinted, tinted * 0.30, u_slowStrength * 0.60 * wave);\n\n            // Add a subtle glowing friction highlight along the scrolling edge (perfect middle ground!)\n            float edge = sin(tc.y * 12.0 + u_time * 2.2 - 0.22);\n            edge = smoothstep(0.85, 1.0, edge); // thin elegant glow line\n            tinted += u_slowEdgeColor * edge * 0.35 * u_slowStrength;\n\n            return vec4(tinted, texel.a) * color;\n        }\n    "

	var_0_83 = love.graphics.newShader(var_44_0)

	return var_0_83
end

function var_0_0.drawSlowDebuffOverlay(arg_45_0, arg_45_1, arg_45_2, arg_45_3, arg_45_4, arg_45_5, arg_45_6, arg_45_7, arg_45_8, arg_45_9, arg_45_10)
	if not arg_45_0 or not arg_45_1 then
		return
	end

	local var_45_0 = love.graphics.getShader()
	local var_45_1, var_45_2 = love.graphics.getBlendMode()
	local var_45_3, var_45_4, var_45_5, var_45_6 = love.graphics.getColor()
	local var_45_7 = var_0_84()

	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setShader(var_45_7)
	var_45_7:send("u_time", love.timer.getTime())
	var_45_7:send("u_slowStrength", var_0_8(tonumber(arg_45_9) or 1, 0, 1))

	if arg_45_10 == "gazer" then
		var_45_7:send("u_slowColor", {
			0.95,
			0.62,
			0.05
		})
		var_45_7:send("u_slowEdgeColor", {
			1,
			0.92,
			0.32
		})
	else
		var_45_7:send("u_slowColor", {
			0.78,
			0.4,
			0.1
		})
		var_45_7:send("u_slowEdgeColor", {
			0.95,
			0.5,
			0.1
		})
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(arg_45_0, arg_45_1, arg_45_2, arg_45_3, arg_45_4 or 0, arg_45_5, arg_45_6, arg_45_7, arg_45_8)
	love.graphics.setShader(var_45_0)
	love.graphics.setBlendMode(var_45_1, var_45_2)
	love.graphics.setColor(var_45_3, var_45_4, var_45_5, var_45_6)
end

local var_0_85

local function var_0_86()
	if var_0_85 then
		return var_0_85
	end

	local var_46_0 = "        extern number u_time;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) return vec4(0.0);\n\n            vec3 bindCore = vec3(0.78, 0.34, 1.00);\n            vec3 bindViolet = vec3(0.48, 0.16, 0.92);\n            vec3 bindLight = vec3(0.96, 0.70, 1.00);\n            float pulse = 0.72 + 0.28 * sin(u_time * 6.0);\n\n            float band1 = 1.0 - smoothstep(0.028, 0.070, abs(sin((tc.y + tc.x * 0.22) * 18.0 - u_time * 3.0)));\n            float band2 = 1.0 - smoothstep(0.030, 0.074, abs(sin((tc.y - tc.x * 0.24) * 15.0 + u_time * 2.4)));\n            float cross = max(band1, band2 * 0.75);\n\n            float lock = smoothstep(0.50, 0.92, cross);\n            vec3 tint = mix(texel.rgb, bindViolet, 0.30 * pulse);\n            tint = mix(tint, bindCore, lock * 0.82);\n\n            float edgeLine = smoothstep(0.70, 1.0, cross);\n            tint += bindCore * edgeLine * 0.62 * pulse;\n            tint += bindLight * edgeLine * 0.30;\n\n            return vec4(tint, texel.a) * color;\n        }\n    "

	var_0_85 = love.graphics.newShader(var_46_0)

	return var_0_85
end

local var_0_87

local function var_0_88()
	if var_0_87 then
		return var_0_87
	end

	local var_47_0 = "        extern number u_time;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.05) {\n                discard;\n            }\n\n            float blink = step(0.46, fract(u_time * 14.0));\n            float pulse = 0.26 + blink * 0.54;\n            return vec4(1.0, 1.0, 1.0, texel.a * pulse) * color;\n        }\n    "

	var_0_87 = love.graphics.newShader(var_47_0)

	return var_0_87
end

local var_0_89

local function var_0_90()
	if var_0_89 ~= nil then
		return var_0_89 or nil
	end

	local var_48_0 = "        extern number u_time;\n        extern number u_strength;\n        extern number u_flash;\n        extern vec4 u_quadRect;\n        extern vec2 u_frameSize;\n\n        float hash(vec2 p) {\n            vec3 p3  = fract(vec3(p.xyx) * 0.1031);\n            p3 += dot(p3, p3.yzx + 33.33);\n            return fract((p3.x + p3.y) * p3.z);\n        }\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) {\n                discard;\n            }\n\n            vec2 safeQuadSize = max(u_quadRect.zw, vec2(0.000001));\n            vec2 safeFrameSize = max(u_frameSize, vec2(1.0));\n            vec2 localUV = clamp((tc - u_quadRect.xy) / safeQuadSize, vec2(0.0), vec2(0.999999));\n            vec2 pixel = floor(localUV * safeFrameSize);\n            vec2 onePixel = safeQuadSize / safeFrameSize;\n            vec2 sampleMin = u_quadRect.xy + onePixel * 0.5;\n            vec2 sampleMax = u_quadRect.xy + safeQuadSize - onePixel * 0.5;\n\n            // Detect exact 1-pixel inner silhouette edge\n            float neighborAlpha = 1.0;\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc + vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc - vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc + vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc - vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n            float isEdge = step(0.15, texel.a - neighborAlpha);\n\n            vec3 orig = texel.rgb * color.rgb;\n            float luma = dot(orig, vec3(0.299, 0.587, 0.114));\n\n            // Authentic Pixel Color Palette (Golden Yellow & Warm Amber)\n            vec3 darkBronze   = vec3(0.16, 0.09, 0.02);\n            vec3 richAmber    = vec3(0.55, 0.30, 0.05);\n            vec3 goldYellow   = vec3(0.96, 0.70, 0.12);\n            vec3 brightSolar  = vec3(1.00, 0.94, 0.40);\n            vec3 pixelWhite   = vec3(1.00, 1.00, 0.90);\n\n            // 1. 2x2 Bayer Dithering Matrix\n            vec2 ditherPos = mod(pixel, vec2(2.0));\n            float ditherThreshold = 0.50;\n            if (ditherPos.x < 1.0 && ditherPos.y < 1.0) ditherThreshold = 0.25;\n            else if (ditherPos.x >= 1.0 && ditherPos.y < 1.0) ditherThreshold = 0.75;\n            else if (ditherPos.x < 1.0 && ditherPos.y >= 1.0) ditherThreshold = 1.00;\n            else ditherThreshold = 0.50;\n\n            // 2. Discrete 2-Row Pixel Wave Scrolling Downward\n            float stepY = floor(localUV.y * safeFrameSize.y);\n            float waveStep = mod(stepY - floor(u_time * 8.0), 10.0);\n            float isWaveRow = step(waveStep, 1.5);\n\n            // Tone mapping with pixel dithering\n            vec3 ditherColor = (ditherThreshold < (0.60 * u_strength)) ? goldYellow : richAmber;\n            vec3 res = mix(orig, ditherColor, u_strength * 0.45);\n\n            // Wave highlight row\n            res = mix(res, brightSolar, isWaveRow * u_strength * 0.45);\n\n            // 3. Crisp 1px Silhouette Golden Rim\n            float rimBlink = step(0.35, fract(u_time * 3.5 + pixel.y * 0.15));\n            vec3 rimCol = mix(goldYellow, brightSolar, rimBlink);\n            res = mix(res, rimCol, isEdge * u_strength * 0.95);\n\n            // 4. Chunky 1-Pixel Micro Sparkles\n            float starRnd = hash(pixel + vec2(43.17, 89.61));\n            if (starRnd > 0.94) {\n                float starBlink = step(0.40, fract(u_time * 6.0 + starRnd * 10.0));\n                res = mix(res, pixelWhite, starBlink * u_strength * 0.80);\n            }\n\n            // 5. Singularity Impact Flash (u_flash)\n            if (u_flash > 0.001) {\n                vec3 flashCol = mix(brightSolar, pixelWhite, 0.70);\n                res = mix(res, flashCol, u_flash * 0.95);\n            }\n\n            return vec4(clamp(res, 0.0, 1.0), texel.a * color.a);\n        }\n    "
	local var_48_1, var_48_2 = pcall(love.graphics.newShader, var_48_0)

	var_0_89 = var_48_1 and var_48_2 or false

	return var_0_89 or nil
end

local var_0_91

local function var_0_92()
	if var_0_91 ~= nil then
		return var_0_91 or nil
	end

	local var_49_0 = "        extern number u_time;\n        extern number u_heat;\n        extern number u_flash;\n        extern number u_dir;\n        extern vec4 u_quadRect;\n        extern vec2 u_frameSize;\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) {\n                discard;\n            }\n\n            vec2 safeQuadSize = max(u_quadRect.zw, vec2(0.000001));\n            vec2 safeFrameSize = max(u_frameSize, vec2(1.0));\n            vec2 localUV = clamp((tc - u_quadRect.xy) / safeQuadSize,\n                vec2(0.0), vec2(0.999999));\n            vec2 onePixel = safeQuadSize / safeFrameSize;\n            vec2 sampleMin = u_quadRect.xy + onePixel * 0.5;\n            vec2 sampleMax = u_quadRect.xy + safeQuadSize - onePixel * 0.5;\n\n            // Exact 1-pixel inner silhouette edge\n            float neighborAlpha = 1.0;\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc + vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc - vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc + vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha, Texel(tex, clamp(tc - vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n            float isEdge = step(0.15, texel.a - neighborAlpha);\n\n            vec3 orig = texel.rgb * color.rgb;\n\n            // Shield face edge takes glowing cyan / golden kinetic rim\n            // In texture UVs, localUV.x < 0.3 is the shield area\n            float shieldFactor = smoothstep(0.40, 0.05, localUV.x);\n            vec3 shieldEnergyCol = mix(vec3(0.22, 0.74, 0.97), vec3(1.00, 0.95, 0.60), shieldFactor);\n\n            vec3 res = orig;\n            if (isEdge > 0.5) {\n                res = mix(res, shieldEnergyCol, u_heat * 0.95);\n            }\n\n            // Contact impact whiteout flash\n            if (u_flash > 0.001) {\n                vec3 flashCol = vec3(1.00, 0.98, 0.90);\n                res = mix(res, flashCol, u_flash * 0.95);\n            }\n\n            return vec4(clamp(res, 0.0, 1.0), texel.a * color.a);\n        }\n    "
	local var_49_1, var_49_2 = pcall(love.graphics.newShader, var_49_0)

	var_0_91 = var_49_1 and var_49_2 or false

	return var_0_91 or nil
end

local var_0_93

local function var_0_94()
	if var_0_93 then
		return var_0_93
	end

	local var_50_0 = "        extern vec4 u_color;\n        extern float u_grayscale;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            vec3 res = u_color.rgb;\n            float mask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                mask = 1.0 - edge;\n            }\n            float grayAmt = u_grayscale * mask;\n            if (grayAmt > 0.001) {\n                float gray = dot(res, vec3(0.299, 0.587, 0.114));\n                res = mix(res, vec3(gray), grayAmt);\n            }\n            return vec4(res, texel.a * u_color.a);\n        }\n    "

	var_0_93 = love.graphics.newShader(var_50_0)

	return var_0_93
end

local var_0_95

local function var_0_96()
	if var_0_95 then
		return var_0_95
	end

	local var_51_0 = "        extern number u_progress;\n        extern number u_facing;\n        extern vec4 u_quadRect;\n        extern vec2 u_frameSize;\n        extern vec3 u_brightStone;\n        extern vec3 u_darkStone;\n        extern vec2 u_verticalBounds;\n\n        float stoneHash(vec2 p) {\n            return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n        }\n        float spriteAlpha(Image tex, vec2 uv) {\n            if (uv.x < u_quadRect.x || uv.y < u_quadRect.y ||\n                uv.x >= u_quadRect.x + u_quadRect.z || uv.y >= u_quadRect.y + u_quadRect.w) return 0.0;\n            return Texel(tex, uv).a;\n        }\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a <= 0.0) {\n                discard;\n            }\n\n            vec2 safeQuadSize = max(u_quadRect.zw, vec2(0.000001));\n            vec2 localUV = clamp((tc - u_quadRect.xy) / safeQuadSize, vec2(0.0), vec2(0.999999));\n            vec2 pixel = floor(localUV * max(u_frameSize, vec2(1.0)));\n\n            // Stone spreads upward in small irregular patches, attached to\n            // sprite pixels. The finished mineral surface never crawls/flickers.\n            float progress = clamp(u_progress, 0.0, 1.0);\n            float jitter = (stoneHash(vec2(floor(pixel.x / 3.0), 5.0)) - 0.5) * 2.5;\n            float front = mix(u_verticalBounds.y, u_verticalBounds.x, progress)\n                + jitter * 4.0 * progress * (1.0 - progress);\n            float stoneMask = smoothstep(front - 0.6, front + 0.6, pixel.y + 0.5);\n            if (progress <= 0.0) stoneMask = 0.0;\n            if (progress >= 0.999) stoneMask = 1.0;\n            vec4 original = texel * color;\n            if (stoneMask <= 0.001) return original;\n\n            // Keep faces, clothing folds and equipment readable as carved\n            // relief, instead of replacing the whole figure with two flat tones.\n            float luma = dot(texel.rgb, vec3(0.299, 0.587, 0.114));\n            vec2 texelStep = safeQuadSize / max(u_frameSize, vec2(1.0));\n            float litEdge = 1.0 - spriteAlpha(tex, tc - vec2(texelStep.x * u_facing, 0.0));\n            float topEdge = 1.0 - spriteAlpha(tex, tc - vec2(0.0, texelStep.y));\n            float darkEdge = 1.0 - spriteAlpha(tex, tc + vec2(texelStep.x * u_facing, 0.0));\n            float facet = (stoneHash(floor(pixel / 4.0)) - 0.5) * 0.065;\n            float grain = (stoneHash(pixel) - 0.5) * 0.025;\n            float tone = clamp(0.10 + luma * 0.86 + facet + grain\n                + litEdge * 0.12 + topEdge * 0.10 - darkEdge * 0.08, 0.0, 1.0);\n            vec3 stone = mix(u_darkStone, u_brightStone, tone);\n\n            // Sparse hairline fractures with a faint raised lip. Avoid masking\n            // the darkest authored details (eyes, outlines, armor seams).\n            float vein = mod(pixel.x + floor(pixel.y * 0.5) + floor(pixel.y / 7.0), 17.0);\n            float fractureArea = step(0.46, stoneHash(vec2(floor(pixel.y / 5.0), 9.0)))\n                * smoothstep(0.12, 0.35, luma);\n            stone *= 1.0 - (1.0 - step(1.0, vein)) * fractureArea * 0.23;\n            stone += vec3(0.045, 0.044, 0.037) * (step(1.0, vein) - step(2.0, vein)) * fractureArea;\n            // A muted chalk edge briefly marks the advancing crust, then settles.\n            float settling = (1.0 - smoothstep(0.0, 2.0, abs(pixel.y + 0.5 - front)))\n                * step(0.001, progress) * (1.0 - step(0.999, progress));\n            stone += vec3(0.075, 0.071, 0.055) * settling;\n            // Preserve the source sprite alpha exactly; only RGB is replaced.\n            return vec4(mix(original.rgb, stone, stoneMask), texel.a * color.a);\n        }\n    "

	var_0_95 = love.graphics.newShader(var_51_0)

	return var_0_95
end

function var_0_0.drawCaveBasiliskPetrifiedUnit(arg_52_0, arg_52_1, arg_52_2, arg_52_3, arg_52_4, arg_52_5, arg_52_6, arg_52_7, arg_52_8, arg_52_9, arg_52_10)
	local var_52_0 = arg_52_0 and (arg_52_0._oathHelmStone or arg_52_0._caveBasiliskPetrified)

	if not var_52_0 or not arg_52_1 or not arg_52_2 then
		return false
	end

	if type(var_52_0) ~= "table" then
		return false
	end

	local var_52_1 = var_0_96()

	if not var_52_1 then
		return false
	end

	local var_52_2, var_52_3, var_52_4, var_52_5 = arg_52_2:getViewport()
	local var_52_6, var_52_7 = arg_52_1:getDimensions()
	local var_52_8

	if arg_52_10 then
		if arg_52_0.side == "enemy" and arg_52_10.getUnitAssetForEnemy then
			var_52_8 = arg_52_10:getUnitAssetForEnemy(arg_52_0)
		elseif arg_52_10.getUnitAssetForAlly then
			var_52_8 = arg_52_10:getUnitAssetForAlly(arg_52_0)
		end
	end

	local var_52_9 = 0
	local var_52_10 = var_52_5

	if var_52_8 and var_52_8.image == arg_52_1 and var_52_8.imageData then
		var_52_8._petrifyFrameBounds = var_52_8._petrifyFrameBounds or {}

		local var_52_11 = var_52_8._petrifyFrameBounds[arg_52_2]

		if not var_52_11 then
			local var_52_12 = var_52_5
			local var_52_13 = -1

			for iter_52_0 = 0, var_52_5 - 1 do
				for iter_52_1 = 0, var_52_4 - 1 do
					local var_52_14, var_52_15, var_52_16, var_52_17 = var_52_8.imageData:getPixel(var_52_2 + iter_52_1, var_52_3 + iter_52_0)

					if var_52_17 > 0 then
						var_52_12 = math.min(var_52_12, iter_52_0)
						var_52_13 = math.max(var_52_13, iter_52_0)

						break
					end
				end
			end

			var_52_11 = var_52_12 <= var_52_13 and {
				var_52_12,
				var_52_13 + 1
			} or {
				0,
				var_52_5
			}
			var_52_8._petrifyFrameBounds[arg_52_2] = var_52_11
		end

		var_52_9, var_52_10 = var_52_11[1], var_52_11[2]
	end

	local var_52_18 = math.max(0.01, tonumber(var_52_0.riseDuration) or 1)
	local var_52_19 = math.max(0, math.min(1, (tonumber(var_52_0.t) or 0) / var_52_18))

	love.graphics.push("all")
	love.graphics.setShader(var_52_1)
	var_52_1:send("u_progress", var_52_19)
	var_52_1:send("u_facing", (arg_52_0.facing or 1) < 0 and -1 or 1)
	var_52_1:send("u_quadRect", {
		var_52_2 / math.max(1, var_52_6),
		var_52_3 / math.max(1, var_52_7),
		var_52_4 / math.max(1, var_52_6),
		var_52_5 / math.max(1, var_52_7)
	})
	var_52_1:send("u_frameSize", {
		var_52_4,
		var_52_5
	})
	var_52_1:send("u_verticalBounds", {
		var_52_9,
		var_52_10
	})
	var_52_1:send("u_brightStone", {
		0.74,
		0.75,
		0.7
	})
	var_52_1:send("u_darkStone", {
		0.24,
		0.25,
		0.25
	})
	love.graphics.draw(arg_52_1, arg_52_2, arg_52_3, arg_52_4, arg_52_5 or 0, arg_52_6, arg_52_7, arg_52_8 or 0, arg_52_9 or 0)
	love.graphics.pop()

	return true
end

local var_0_97

local function var_0_98()
	if var_0_97 ~= nil then
		return var_0_97 or nil
	end

	local var_53_0 = "        extern number u_time;\n        extern vec4 u_quadRect;\n        extern vec2 u_frameSize;\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a <= 0.0) {\n                discard;\n            }\n\n            vec2 safeQuadSize = max(u_quadRect.zw, vec2(0.000001));\n            vec2 safeFrameSize = max(u_frameSize, vec2(1.0));\n            vec2 localUV = clamp(\n                (tc - u_quadRect.xy) / safeQuadSize,\n                vec2(0.0), vec2(0.999999));\n            vec2 pixel = floor(localUV * safeFrameSize);\n            vec2 onePixel = safeQuadSize / safeFrameSize;\n            vec2 sampleMin = u_quadRect.xy + onePixel * 0.5;\n            vec2 sampleMax = u_quadRect.xy + safeQuadSize - onePixel * 0.5;\n\n            float neighborAlpha = 1.0;\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc + vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc - vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc + vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc - vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n\n            vec3 original = texel.rgb * color.rgb;\n            float luminance = dot(original, vec3(0.299, 0.587, 0.114));\n            vec3 deepCurse = vec3(0.10, 0.015, 0.16);\n            vec3 curseMid = vec3(0.64, 0.07, 0.48);\n            vec3 curseHighlight = vec3(1.00, 0.62, 0.16);\n            vec3 cursed = mix(deepCurse, curseMid,\n                smoothstep(0.03, 0.52, luminance));\n            cursed = mix(cursed, curseHighlight,\n                smoothstep(0.52, 0.95, luminance));\n\n            // Preserve the source shading underneath a strong hostile palette,\n            // then place a crisp gold rim inside the original opaque pixels.\n            cursed = mix(cursed, original, 0.10);\n            float innerEdge = smoothstep(0.04, 0.72,\n                max(0.0, texel.a - neighborAlpha));\n            cursed = mix(cursed, curseHighlight, innerEdge * 0.78);\n\n            // A restrained moving curse band changes RGB only. Alpha remains\n            // exactly the source sprite alpha, so silhouettes never blur/fade.\n            float band = 0.5 + 0.5 * sin(\n                u_time * 5.0 + pixel.x * 0.42 - pixel.y * 0.31);\n            cursed += vec3(0.10, 0.015, 0.09) * band;\n            return vec4(clamp(cursed, 0.0, 1.0), texel.a * color.a);\n        }\n    "
	local var_53_1, var_53_2 = pcall(love.graphics.newShader, var_53_0)

	var_0_97 = var_53_1 and var_53_2 or false

	return var_0_97 or nil
end

function var_0_0.prepareWastelandPiperResources()
	return var_0_98() ~= nil
end

function var_0_0.drawWastelandPiperCharmedUnit(arg_55_0, arg_55_1, arg_55_2, arg_55_3, arg_55_4, arg_55_5, arg_55_6, arg_55_7, arg_55_8, arg_55_9)
	local var_55_0 = arg_55_0 and (arg_55_0._wastelandPiperCharm or arg_55_0._tricksterCharm)

	if type(var_55_0) ~= "table" or not arg_55_1 or not arg_55_2 then
		return false
	end

	local var_55_1 = var_0_98()

	if not var_55_1 then
		return false
	end

	local var_55_2, var_55_3, var_55_4, var_55_5 = arg_55_2:getViewport()
	local var_55_6, var_55_7 = arg_55_1:getDimensions()
	local var_55_8 = love.graphics.getShader()

	love.graphics.setShader(var_55_1)
	var_55_1:send("u_time", tonumber(var_55_0.t) or 0)
	var_55_1:send("u_quadRect", {
		var_55_2 / math.max(1, var_55_6),
		var_55_3 / math.max(1, var_55_7),
		var_55_4 / math.max(1, var_55_6),
		var_55_5 / math.max(1, var_55_7)
	})
	var_55_1:send("u_frameSize", {
		var_55_4,
		var_55_5
	})
	love.graphics.draw(arg_55_1, arg_55_2, arg_55_3, arg_55_4, arg_55_5 or 0, arg_55_6, arg_55_7, arg_55_8 or 0, arg_55_9 or 0)
	love.graphics.setShader(var_55_8)

	return true
end

local var_0_99

local function var_0_100()
	if var_0_99 ~= nil then
		return var_0_99 or nil
	end

	local var_56_0 = "        extern number u_time;\n        extern vec4 u_quadRect;\n        extern vec2 u_frameSize;\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a <= 0.0) {\n                discard;\n            }\n\n            vec2 safeQuadSize = max(u_quadRect.zw, vec2(0.000001));\n            vec2 safeFrameSize = max(u_frameSize, vec2(1.0));\n            vec2 localUV = clamp(\n                (tc - u_quadRect.xy) / safeQuadSize,\n                vec2(0.0), vec2(0.999999));\n            vec2 pixel = floor(localUV * safeFrameSize);\n            vec2 onePixel = safeQuadSize / safeFrameSize;\n            vec2 sampleMin = u_quadRect.xy + onePixel * 0.5;\n            vec2 sampleMax = u_quadRect.xy + safeQuadSize - onePixel * 0.5;\n\n            float neighborAlpha = 1.0;\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc + vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc - vec2(onePixel.x, 0.0), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc + vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n            neighborAlpha = min(neighborAlpha,\n                Texel(tex, clamp(tc - vec2(0.0, onePixel.y), sampleMin, sampleMax)).a);\n\n            vec3 original = texel.rgb * color.rgb;\n            vec3 heartPink = vec3(1.00, 0.10, 0.42);\n            vec3 blush = vec3(1.00, 0.82, 0.89);\n\n            // Keep the source palette. Two quick blush pulses cover only the\n            // source sprite's opaque pixels; there is no frame-positioned mask\n            // that could flicker on an isolated head/weapon pixel.\n            float cycle = mod(u_time, 0.72) / 0.72;\n            float firstBeat = 1.0 - smoothstep(0.0, 0.075,\n                abs(cycle - 0.14));\n            float secondBeat = 1.0 - smoothstep(0.0, 0.065,\n                abs(cycle - 0.30));\n            float heartbeat = max(firstBeat, secondBeat * 0.72);\n            vec3 tempted = mix(original, heartPink,\n                0.07 + heartbeat * 0.28);\n            tempted = mix(tempted, blush, heartbeat * 0.14);\n\n            float innerEdge = smoothstep(0.04, 0.72,\n                max(0.0, texel.a - neighborAlpha));\n            tempted = mix(tempted, blush,\n                innerEdge * (0.48 + heartbeat * 0.34));\n            return vec4(clamp(tempted, 0.0, 1.0), texel.a * color.a);\n        }\n    "
	local var_56_1, var_56_2 = pcall(love.graphics.newShader, var_56_0)

	var_0_99 = var_56_1 and var_56_2 or false

	return var_0_99 or nil
end

function var_0_0.prepareSuccubusTemptResources()
	return var_0_100() ~= nil
end

function var_0_0.drawSuccubusTemptedUnit(arg_58_0, arg_58_1, arg_58_2, arg_58_3, arg_58_4, arg_58_5, arg_58_6, arg_58_7, arg_58_8, arg_58_9)
	local var_58_0 = arg_58_0 and arg_58_0._succubusCharm

	if type(var_58_0) ~= "table" or not arg_58_1 or not arg_58_2 then
		return false
	end

	local var_58_1 = var_0_100()

	if not var_58_1 then
		return false
	end

	local var_58_2, var_58_3, var_58_4, var_58_5 = arg_58_2:getViewport()
	local var_58_6, var_58_7 = arg_58_1:getDimensions()
	local var_58_8 = love.graphics.getShader()

	love.graphics.setShader(var_58_1)
	var_58_1:send("u_time", tonumber(var_58_0.t) or 0)
	var_58_1:send("u_quadRect", {
		var_58_2 / math.max(1, var_58_6),
		var_58_3 / math.max(1, var_58_7),
		var_58_4 / math.max(1, var_58_6),
		var_58_5 / math.max(1, var_58_7)
	})
	var_58_1:send("u_frameSize", {
		var_58_4,
		var_58_5
	})
	love.graphics.draw(arg_58_1, arg_58_2, arg_58_3, arg_58_4, arg_58_5 or 0, arg_58_6, arg_58_7, arg_58_8 or 0, arg_58_9 or 0)
	love.graphics.setShader(var_58_8)

	return true
end

local var_0_101

local function var_0_102()
	if var_0_101 then
		return var_0_101
	end

	local var_59_0 = "        extern float u_grayscale;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            // Shift red-heavy palette to a natural blue-cyan fire palette\n            float luma = (texel.r + texel.g + texel.b) / 3.0;\n            vec3 blueFire = vec3(texel.g * 0.4, texel.g * 0.8 + texel.r * 0.2, texel.r * 1.0 + texel.b);\n            vec3 res = blueFire * color.rgb;\n            float mask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                mask = 1.0 - edge;\n            }\n            float grayAmt = u_grayscale * mask;\n            if (grayAmt > 0.001) {\n                float gray = dot(res, vec3(0.299, 0.587, 0.114));\n                res = mix(res, vec3(gray), grayAmt);\n            }\n            return vec4(res, texel.a * color.a);\n        }\n    "

	var_0_101 = love.graphics.newShader(var_59_0)

	return var_0_101
end

local var_0_103

local function var_0_104()
	if var_0_103 then
		return var_0_103
	end

	local var_60_0 = "        extern vec3 u_srcClothesH;\n        extern vec3 u_srcClothes;\n        extern vec3 u_srcShadow;\n        extern vec3 u_dstClothesH;\n        extern vec3 u_dstClothes;\n        extern vec3 u_dstShadow;\n        extern bool u_swapClothesH;\n\n        extern vec3 u_srcCloakH;\n        extern vec3 u_srcCloakC;\n        extern vec3 u_dstCloakH;\n        extern vec3 u_dstCloakC;\n        extern bool u_swapCloak;\n\n        extern vec3 u_srcSkinH;\n        extern vec3 u_srcSkinC;\n        extern vec3 u_dstSkinH;\n        extern vec3 u_dstSkinC;\n        extern bool u_swapSkin;\n\n        extern vec3 u_srcIronH;\n        extern vec3 u_srcIronC;\n        extern vec3 u_srcIronS;\n        extern vec3 u_dstIronH;\n        extern vec3 u_dstIronC;\n        extern vec3 u_dstIronS;\n        extern bool u_swapIron;\n\n        extern float u_tolerance;\n\n        // Judgement Tint Uniforms\n        extern bool u_judgementActive;\n        extern float u_strength;\n        extern float u_weight;\n        extern float u_targetHue;\n        extern float u_hueBlend;\n        extern float u_satGain;\n        extern float u_highlightPreserve;\n        extern float u_greenGuard;\n        extern float u_redBias;\n        extern vec3 u_fogColor;\n        extern float u_fogAmt;\n        extern float u_desat;\n\n        // Poison Tint\n        extern float u_poisonStrength;\n\n        // Chill Tint\n        extern float u_chillStrength;\n\n        // Time Stop Grayscale\n        extern float u_grayscale;\n        extern bool u_ts_active;\n        extern vec2 u_ts_center;\n        extern float u_ts_radius;\n        extern float u_ts_softness;\n\n        vec3 rgb2hsv(vec3 c){\n            float maxc = max(c.r, max(c.g, c.b));\n            float minc = min(c.r, min(c.g, c.b));\n            float delta = maxc - minc;\n            float h = 0.0;\n            if (delta > 1e-5){\n                if (maxc == c.r){ h = mod((c.g - c.b) / delta, 6.0); }\n                else if (maxc == c.g){ h = ((c.b - c.r) / delta) + 2.0; }\n                else { h = ((c.r - c.g) / delta) + 4.0; }\n                h /= 6.0;\n                if (h < 0.0) h += 1.0;\n            }\n            float s = (maxc <= 0.0) ? 0.0 : (delta / maxc);\n            float v = maxc;\n            return vec3(h,s,v);\n        }\n        vec3 hsv2rgb(vec3 h){\n            float H = h.x * 6.0;\n            float C = h.z * h.y;\n            float X = C * (1.0 - abs(mod(H,2.0)-1.0));\n            vec3 rgb = vec3(0.0);\n            if (0.0 <= H && H < 1.0) rgb = vec3(C,X,0.0);\n            else if (1.0 <= H && H < 2.0) rgb = vec3(X,C,0.0);\n            else if (2.0 <= H && H < 3.0) rgb = vec3(0.0,C,X);\n            else if (3.0 <= H && H < 4.0) rgb = vec3(0.0,X,C);\n            else if (4.0 <= H && H < 5.0) rgb = vec3(X,0.0,C);\n            else if (5.0 <= H && H < 6.0) rgb = vec3(C,0.0,X);\n            float m = h.z - C;\n            return rgb + m;\n        }\n\n        vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n            vec4 texel = Texel(tex, tc);\n            if (texel.a < 0.01) return vec4(0.0);\n\n            vec3 rgb = texel.rgb;\n            vec3 finalRGB = rgb;\n\n            // 1. Apply Color Swap\n            if (u_swapClothesH && distance(rgb, u_srcClothesH) < u_tolerance) {\n                finalRGB = u_dstClothesH;\n            } else if (distance(rgb, u_srcClothes) < u_tolerance) {\n                finalRGB = u_dstClothes;\n            } else if (distance(rgb, u_srcShadow) < u_tolerance) {\n                finalRGB = u_dstShadow;\n            } else if (u_swapCloak && distance(rgb, u_srcCloakH) < u_tolerance) {\n                finalRGB = u_dstCloakH;\n            } else if (u_swapCloak && distance(rgb, u_srcCloakC) < u_tolerance) {\n                finalRGB = u_dstCloakC;\n            } else if (u_swapSkin && distance(rgb, u_srcSkinH) < u_tolerance) {\n                finalRGB = u_dstSkinH;\n            } else if (u_swapSkin && distance(rgb, u_srcSkinC) < u_tolerance) {\n                finalRGB = u_dstSkinC;\n            } else if (u_swapIron && distance(rgb, u_srcIronH) < u_tolerance) {\n                finalRGB = u_dstIronH;\n            } else if (u_swapIron && distance(rgb, u_srcIronC) < u_tolerance) {\n                finalRGB = u_dstIronC;\n            } else if (u_swapIron && distance(rgb, u_srcIronS) < u_tolerance) {\n                finalRGB = u_dstIronS;\n            }\n\n            // 2. Apply Judgement Tint if active\n            if (u_judgementActive) {\n                float strength = u_strength * u_weight;\n                if (strength > 0.0001) {\n                    vec3 hsv = rgb2hsv(finalRGB);\n                    float greenness = clamp(finalRGB.g - max(finalRGB.r, finalRGB.b), 0.0, 1.0);\n                    float guard = mix(1.0, 1.0 - u_greenGuard, greenness);\n                    float hueDiff = u_targetHue - hsv.x;\n                    if (hueDiff > 0.5) hueDiff -= 1.0; else if (hueDiff < -0.5) hueDiff += 1.0;\n                    hsv.x += hueDiff * u_hueBlend * strength * guard;\n                    if (hsv.x < 0.0) hsv.x += 1.0; else if (hsv.x > 1.0) hsv.x -= 1.0;\n                    float diff = u_targetHue - hsv.x;\n                    if (diff > 0.5) diff -= 1.0; else if (diff < -0.5) diff += 1.0;\n                    float ad = abs(diff);\n                    float k = smoothstep(0.12, 0.38, ad);\n                    float desatAmt = u_desat * strength * k;\n                    hsv.y = clamp(hsv.y + u_satGain * strength - desatAmt, 0.0, 1.0);\n                    float preserve = smoothstep(0.0, 1.0, hsv.z);\n                    float lift = 0.03 * strength * (1.0 - preserve * u_highlightPreserve);\n                    hsv.z = clamp(mix(hsv.z, 0.6, lift), 0.0, 1.0);\n                    finalRGB = hsv2rgb(hsv);\n                    float lumaOut = dot(finalRGB, vec3(0.299, 0.587, 0.114));\n                    float redLift = u_redBias * strength * smoothstep(0.15, 0.85, 1.0 - lumaOut);\n                    finalRGB.r = clamp(finalRGB.r + redLift, 0.0, 1.0);\n                    finalRGB = mix(finalRGB, u_fogColor, u_fogAmt * strength);\n                    finalRGB = mix(finalRGB, finalRGB, 0.06 * strength); // detailMix\n                }\n            }\n\n            // 3. Apply Poison Tint (Sickly Muddy Green)\n            if (u_poisonStrength > 0.001) {\n                vec3 sicklyGreen = vec3(0.22, 0.42, 0.08);\n                vec3 multiplied = finalRGB * sicklyGreen * 1.5;\n                finalRGB = mix(finalRGB, multiplied, u_poisonStrength * 0.85);\n                finalRGB.g += u_poisonStrength * 0.06 * (1.0 - u_poisonStrength * 0.5);\n            }\n\n            // 4. Apply Chill Tint (Blue Filter)\n            if (u_chillStrength > 0.001) {\n                vec3 chillColor = vec3(0.1, 0.35, 1.0);\n                vec3 tinted = finalRGB * chillColor * 2.1;\n                finalRGB = mix(finalRGB, tinted, u_chillStrength * 0.7);\n            }\n\n            // 5. Apply Time Stop Grayscale\n            float tsMask = 1.0;\n            if (u_ts_active) {\n                float dist = distance(sc, u_ts_center);\n                float edge = smoothstep(u_ts_radius, u_ts_radius + u_ts_softness, dist);\n                tsMask = 1.0 - edge;\n            }\n            float grayAmt = u_grayscale * tsMask;\n            if (grayAmt > 0.001) {\n                float gray = dot(finalRGB, vec3(0.299, 0.587, 0.114));\n                finalRGB = mix(finalRGB, vec3(gray), grayAmt);\n            }\n\n            return vec4(finalRGB, texel.a) * color;\n        }\n    "

	var_0_103 = love.graphics.newShader(var_60_0)

	return var_0_103
end

local var_0_105 = {
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
local var_0_106

local function var_0_107()
	if var_0_106 ~= nil then
		return var_0_106 or nil
	end

	local var_61_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern vec2   u_dir;\n    extern number u_cycle;\n    extern number u_scale;\n    extern number u_grainScale;\n    extern number u_grainAmp;\n    extern number u_filmFreq;\n    extern number u_filmAmp;\n    extern number u_specular;\n    extern number u_fresnelPow;\n    extern vec4   u_frameUV;\n    extern number u_colorGain;\n    extern number u_saturation;\n    extern number u_mixBP;\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u,\n        vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66)\n      );\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n\n      float diag = tcL.x + tcL.y;\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = 0.22;\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n      float hue = diag * 0.35 + (u_time / max(u_cycle, 0.001)) * 0.9;\n      vec3 sweepCol = 0.5 + 0.5 * vec3(\n        cos(6.28318 * (hue + 0.00)),\n        cos(6.28318 * (hue + 0.33)),\n        cos(6.28318 * (hue + 0.66))\n      );\n      sweepCol = mix(sweepCol, vec3(1.0), 0.78);\n      sweepCol = clamp(sweepCol * 1.45, 0.0, 1.0);\n      float sweepGain = 1.35;\n      float w = clamp((0.45 - alpha) / 0.30, 0.0, 1.0);\n      float sweepAlphaBoost = mix(1.0, 1.0 / max(alpha, 0.030), w);\n      outRGB += sweepCol * sweep * sweepGain * sweepAlphaBoost * 1.60;\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      return vec4(outRGB, alpha);\n    }\n  "
	local var_61_1, var_61_2 = pcall(love.graphics.newShader, var_61_0)

	if var_61_1 and var_61_2 then
		var_0_106 = var_61_2

		return var_0_106
	end

	local var_61_3 = "    extern number u_time;\n    extern number u_alpha;\n    extern vec2   u_dir;\n    extern number u_cycle;\n    extern number u_scale;\n    extern number u_grainScale;\n    extern number u_grainAmp;\n    extern number u_filmFreq;\n    extern number u_filmAmp;\n    extern number u_specular;\n    extern number u_fresnelPow;\n    extern vec4   u_frameUV;\n    extern number u_colorGain;\n    extern number u_saturation;\n    extern number u_mixBP;\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float keepAlive = u_time + u_alpha + u_dir.x + u_dir.y\n        + u_cycle + u_scale + u_grainScale + u_grainAmp\n        + u_filmFreq + u_filmAmp + u_specular + u_fresnelPow\n        + dot(u_frameUV, vec4(1.0)) + u_colorGain + u_saturation\n        + u_mixBP;\n      if (keepAlive < -1.0e20) return color * Texel(tex, tc);\n      return vec4(0.0);\n    }\n  "
	local var_61_4, var_61_5 = pcall(love.graphics.newShader, var_61_3)

	var_0_106 = var_61_4 and var_61_5 or false

	return var_0_106 or nil
end

local var_0_108

local function var_0_109()
	if var_0_108 then
		return var_0_108
	end

	local var_62_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern number u_cycle;\n    extern vec4   u_frameUV; // {minU,minV,sizeU,sizeV}\n    extern vec3   u_tint;    // legendary highlight color\n    extern number u_width;   // band thickness (in frame-local UV)\n    extern number u_gain;    // overall strength\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float a = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (a <= 0.0) return vec4(0.0);\n\n      // Local sprite-space UV (0..1 inside the current frame)\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      float diag = tcL.x + tcL.y; // 0..2\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = max(0.001, u_width);\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n\n      // Match prism sweep behavior under ('add','alphamultiply'):\n      // - RGB carries the highlight; alpha stays as the overlay alpha.\n      // - Let alphamultiply handle premultiplication.\n      float gain = max(0.0, u_gain);\n      vec3 outRGB = u_tint * (sweep * gain);\n      return vec4(outRGB, a);\n    }\n  "

	var_0_108 = love.graphics.newShader(var_62_0)

	return var_0_108
end

local var_0_110

local function var_0_111()
	if var_0_110 ~= nil then
		return var_0_110 or nil
	end

	local var_63_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern vec2   u_dir;\n    extern number u_cycle;\n    extern number u_scale;\n    extern number u_grainScale;\n    extern number u_grainAmp;\n    extern number u_filmFreq;\n    extern number u_filmAmp;\n    extern number u_specular;\n    extern number u_fresnelPow;\n    extern vec4   u_frameUV;\n    extern number u_colorGain;\n    extern number u_saturation;\n    extern number u_mixBP;\n    extern number u_pulseAmp;\n    extern number u_pulseHz;\n    extern number u_pulseSharpness;\n    extern number u_pulseMin;\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      // Pulse multiplier for the base foil only.\n      // IMPORTANT: do NOT pulse the output alpha under ('add','alphamultiply'),\n      // because that would also scale the diagonal sweep (user requested sweep stays stable).\n      float pulseMul = 1.0;\n      float hz = max(0.0, u_pulseHz);\n      float amp = clamp(u_pulseAmp, 0.0, 1.0);\n      if (hz > 0.0 && amp > 0.0) {\n        float s = 0.5 + 0.5 * sin(6.28318 * (u_time * hz));\n        float sharp = max(0.5, u_pulseSharpness);\n        float shaped = pow(s, sharp);\n        float minMul = clamp(u_pulseMin, 0.0, 1.0);\n        pulseMul = mix(minMul, 1.0 + amp, shaped);\n      }\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n\n      // Warm metallic foil palettes (gold -> amber). u_mixBP biases towards the brighter/yellower set.\n      float tWarm = 0.5 + 0.5 * sin(6.28318 * ((u_time / max(u_cycle, 0.001)) * 0.55 + v * 0.22));\n      float warmBias = clamp(u_mixBP + (tWarm - 0.5) * 0.48, 0.0, 1.0);\n      float xWarm = x + (tWarm - 0.5) * 0.35;\n      float uWarm = u + (tWarm - 0.5) * 0.22;\n      vec3 colAmber = palette(xWarm,\n        vec3(0.72, 0.46, 0.16),\n        vec3(0.20, 0.16, 0.10),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.05, 0.08, 0.12)\n      );\n      vec3 colGold = palette(uWarm,\n        vec3(0.80, 0.62, 0.22),\n        vec3(0.18, 0.12, 0.06),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.00, 0.04, 0.08)\n      );\n      vec3 foil = mix(colAmber, colGold, warmBias);\n\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.10;\n\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 baseRGB = (foil * grainMul + spec) * pulseMul;\n\n      // Diagonal highlight sweep, warm-only.\n      float diag = tcL.x + tcL.y;\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = 0.22;\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n      float hue = diag * 0.35 + (u_time / max(u_cycle, 0.001)) * 0.9;\n      float k = 0.5 + 0.5 * cos(6.28318 * hue);\n      float k2 = clamp(k * 0.75 + tWarm * 0.25, 0.0, 1.0);\n      vec3 sweepCol = mix(vec3(1.0, 0.82, 0.34), vec3(1.0, 0.98, 0.68), k2);\n      // Brighter sweep coloration (keep warm tone but significantly more readable)\n      float whiteLift = 0.78 + 0.18 * tWarm;\n      sweepCol = mix(sweepCol, vec3(1.0), clamp(whiteLift, 0.0, 0.98));\n      sweepCol = clamp(sweepCol * 1.45, 0.0, 1.0);\n      float sweepGain = 1.35;\n      // Under ('add','alphamultiply') the source RGB is multiplied by alpha.\n      // Compensate so the sweep stays visible even when overlay alpha is low.\n      // Make the sweep less transparent: compensate more aggressively only when alpha is low.\n      float w = clamp((0.45 - alpha) / 0.30, 0.0, 1.0);\n      float sweepAlphaBoost = mix(1.0, 1.0 / max(alpha, 0.030), w);\n      vec3 sweepRGB = sweepCol * sweep * sweepGain * sweepAlphaBoost * 1.60;\n\n      // Apply color controls/dimming to the base foil, but keep the sweep independent\n      // so it doesn't get washed out by finalMul/pulse tuning.\n      float Y = dot(baseRGB, vec3(0.2126, 0.7152, 0.0722));\n      baseRGB = mix(vec3(Y), baseRGB, max(0.0, u_saturation));\n      baseRGB *= max(0.0, u_colorGain);\n      baseRGB *= 0.82;\n\n      // Desaturate sweep as well if u_saturation is 0 (Time Stop case)\n      float sY = dot(sweepRGB, vec3(0.2126, 0.7152, 0.0722));\n      sweepRGB = mix(vec3(sY), sweepRGB, max(0.0, u_saturation));\n\n      vec3 outRGB = baseRGB + sweepRGB;\n      return vec4(outRGB, alpha);\n    }\n  "
	local var_63_1, var_63_2 = pcall(love.graphics.newShader, var_63_0)

	var_0_110 = var_63_1 and var_63_2 or false

	return var_0_110 or nil
end

local var_0_112

local function var_0_113()
	if var_0_112 ~= nil then
		return var_0_112 or nil
	end

	local var_64_0 = "    extern number u_time;\n    extern number u_alpha;\n    extern vec2   u_dir;\n    extern number u_cycle;\n    extern number u_scale;\n    extern number u_grainScale;\n    extern number u_grainAmp;\n    extern number u_filmFreq;\n    extern number u_filmAmp;\n    extern number u_specular;\n    extern number u_fresnelPow;\n    extern vec4   u_frameUV;\n    extern number u_colorGain;\n    extern number u_saturation;\n    extern number u_pulseAmp;\n    extern number u_pulseHz;\n    extern number u_pulseSharpness;\n    extern number u_pulseMin;\n    extern number u_sweepEnable;\n    extern vec3   u_tintLo;\n    extern vec3   u_tintHi;\n    extern vec3   u_sweepLo;\n    extern vec3   u_sweepHi;\n\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color;\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      // Pulse multiplier for the base foil only (sweep must stay stable).\n      float pulseMul = 1.0;\n      float hz = max(0.0, u_pulseHz);\n      float amp = clamp(u_pulseAmp, 0.0, 1.0);\n      if (hz > 0.0 && amp > 0.0) {\n        float s = 0.5 + 0.5 * sin(6.28318 * (u_time * hz));\n        float sharp = max(0.5, u_pulseSharpness);\n        float shaped = pow(s, sharp);\n        float minMul = clamp(u_pulseMin, 0.0, 1.0);\n        pulseMul = mix(minMul, 1.0 + amp, shaped);\n      }\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      // Frame-local UV (stable in spritesheets)\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n\n      // Subtle per-grade hue drift between two tints.\n      float t = 0.5 + 0.5 * sin(6.28318 * (x * 0.08 + v * 0.03));\n      vec3 foil = mix(u_tintLo, u_tintHi, t);\n\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.10;\n\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 baseRGB = (foil * grainMul + spec) * pulseMul;\n\n      // Diagonal highlight sweep (match legendary visibility)\n      float tSweep = 0.5 + 0.5 * sin(6.28318 * ((u_time / max(u_cycle, 0.001)) * 0.55 + v * 0.22));\n      float diag = tcL.x + tcL.y;\n      float sweepPos = fract(u_time / max(u_cycle, 0.001)) * 2.0;\n      float d = abs(diag - sweepPos);\n      d = min(d, abs(diag - (sweepPos + 2.0)));\n      d = min(d, abs(diag - (sweepPos - 2.0)));\n      float width = 0.22;\n      float sweep = 1.0 - smoothstep(0.0, width, d);\n      sweep = sweep * sweep;\n\n      float hue = diag * 0.35 + (u_time / max(u_cycle, 0.001)) * 0.9;\n      float k = 0.5 + 0.5 * cos(6.28318 * hue);\n      float k2 = clamp(k * 0.75 + tSweep * 0.25, 0.0, 1.0);\n      vec3 sweepCol = mix(u_sweepLo, u_sweepHi, k2);\n      float whiteLift = 0.78 + 0.18 * tSweep;\n      sweepCol = mix(sweepCol, vec3(1.0), clamp(whiteLift, 0.0, 0.98));\n      sweepCol = clamp(sweepCol * 1.45, 0.0, 1.0);\n\n      float sweepGain = 1.35;\n      float w = clamp((0.45 - alpha) / 0.30, 0.0, 1.0);\n      float sweepAlphaBoost = mix(1.0, 1.0 / max(alpha, 0.030), w);\n      vec3 sweepRGB = sweepCol * sweep * sweepGain * sweepAlphaBoost * 1.60;\n      sweepRGB *= clamp(u_sweepEnable, 0.0, 1.0);\n\n      // Apply color controls to base only; keep sweep independent.\n      float Y = dot(baseRGB, vec3(0.2126, 0.7152, 0.0722));\n      baseRGB = mix(vec3(Y), baseRGB, max(0.0, u_saturation));\n      baseRGB *= max(0.0, u_colorGain);\n      baseRGB *= 0.82;\n\n      // Desaturate sweep as well if u_saturation is 0 (Time Stop case)\n      float sY = dot(sweepRGB, vec3(0.2126, 0.7152, 0.0722));\n      sweepRGB = mix(vec3(sY), sweepRGB, max(0.0, u_saturation));\n\n      vec3 outRGB = baseRGB + sweepRGB;\n      return vec4(outRGB, alpha);\n    }\n  "
	local var_64_1, var_64_2 = pcall(love.graphics.newShader, var_64_0)

	var_0_112 = var_64_1 and var_64_2 or false

	return var_0_112 or nil
end

local var_0_114

local function var_0_115()
	if var_0_114 ~= nil then
		return var_0_114 or nil
	end

	local var_65_0 = "    extern vec2  texelStep;    // 1 screen pixel in texture coords\n    extern float threshold;    // alpha threshold for silhouette\n    extern float radiusPx;     // blur radius\n    extern vec4  u_frameUV;    // minU, minV, sizeU, sizeV\n    extern float u_time;       // seconds\n    extern float u_alpha;      // overall glow strength\n    extern vec2  u_dir;        // drift direction\n    extern float u_cycle;      // seconds per cycle\n    extern float u_scale;      // spatial scale\n    extern float u_colorGain;  // overall color gain\n    extern float u_saturation; // saturation multiplier\n    extern float u_mixBP;      // bias towards blue-purple palette\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n\n    float sampleA(Image tex, vec2 tc) {\n      vec2 uvMin = u_frameUV.xy;\n      vec2 uvMax = u_frameUV.xy + u_frameUV.zw;\n      vec2 pad = texelStep * 0.5;\n      vec2 c = clamp(tc, uvMin + pad, uvMax - pad);\n      return Texel(tex, c).a;\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float a0 = sampleA(tex, tc);\n      if (a0 > threshold) return vec4(0.0); // draw only outside silhouette\n\n      float total = 0.0;\n      float totalWeight = 0.0;\n\n      // Keep both loop bounds compile-time constants. Some older Intel/AMD\n      // GLSL drivers miscompile the former float loops with a computed step,\n      // which can corrupt the promotion frame or reset the graphics context.\n      // Two staggered 8-sample rings are plenty at this sprite size and cut\n      // the fragment cost by more than half.\n      for (int ring = 1; ring <= 2; ring++) {\n        float dist = float(ring) * 0.5;\n        float w = 1.0 - (dist * 0.5);\n        float angleOffset = float(ring) * 0.3926991;\n\n        for (int sampleIndex = 0; sampleIndex < 8; sampleIndex++) {\n          float angle = float(sampleIndex) * 0.7853982 + angleOffset;\n          vec2 dir = vec2(cos(angle), sin(angle));\n          total += sampleA(tex, tc + dir * texelStep * radiusPx * dist) * w;\n          totalWeight += w;\n        }\n      }\n\n      float alpha = total / totalWeight;\n      // Increase contrast by steepening the smoothstep curve\n      // smoothstep(0.1, 0.8, ...) cuts off low values and saturates high values earlier\n      alpha = smoothstep(0.1, 0.8, alpha * 3.0);\n\n      // Local UV (0..1 in the current frame) for stable prismatic color.\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n\n      vec3 colBP = palette(u,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u,\n        vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66)\n      );\n      vec3 outRGB = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n\n      float pulse = 0.92 + 0.08 * sin(u_time * 2.2);\n      float aOut = clamp(u_alpha, 0.0, 1.0) * alpha * pulse;\n      return vec4(outRGB, aOut);\n    }\n  "
	local var_65_1, var_65_2 = pcall(love.graphics.newShader, var_65_0)

	var_0_114 = var_65_1 and var_65_2 or false

	return var_0_114 or nil
end

local var_0_116

local function var_0_117()
	if var_0_116 ~= nil then
		return var_0_116 or nil
	end

	local var_66_0 = "    extern vec2 texelStep;    // 1 screen pixel in texture coords\n    extern vec4 glowColor;    // RGB + intensity alpha\n    extern float threshold;   // alpha threshold for silhouette\n    extern float radiusPx;    // Blur radius\n    extern vec4 u_frameUV;    // minU, minV, sizeU, sizeV\n    extern float u_time;      // For pulsing\n\n    float sampleA(Image tex, vec2 tc) {\n      vec2 uvMin = u_frameUV.xy;\n      vec2 uvMax = u_frameUV.xy + u_frameUV.zw;\n      vec2 pad = texelStep * 0.5;\n      vec2 c = clamp(tc, uvMin + pad, uvMax - pad);\n      return Texel(tex, c).a;\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float a0 = sampleA(tex, tc);\n      // Only draw glow OUTSIDE the sprite.\n      if (a0 > threshold) return vec4(0.0);\n\n      float total = 0.0;\n      float totalWeight = 0.0;\n\n      // Constant integer loops are portable across the older GLSL compilers\n      // still used by a few Windows iGPUs. Avoid float-loop termination here:\n      // a driver fault in this promotion-only shader presents as green/black\n      // full frames rather than a recoverable LÖVE shader error.\n      for (int ring = 1; ring <= 2; ring++) {\n        float dist = float(ring) * 0.5;\n        // Weight falls off with distance\n        float w = 1.0 - (dist * 0.5);\n\n        // Rotate each ring slightly to interleave samples\n        float angleOffset = float(ring) * 0.3926991;\n\n        for (int sampleIndex = 0; sampleIndex < 8; sampleIndex++) {\n          float angle = float(sampleIndex) * 0.7853982 + angleOffset;\n          vec2 dir = vec2(cos(angle), sin(angle));\n          total += sampleA(tex, tc + dir * texelStep * radiusPx * dist) * w;\n          totalWeight += w;\n        }\n      }\n\n      // Normalize\n      float alpha = total / totalWeight;\n\n      // Soften the curve to make it look like a glow rather than a hard outline\n      // smoothstep(min, max, x) -> smooth transition\n      // Increased multiplier and adjusted range for higher contrast\n      alpha = smoothstep(0.1, 0.9, alpha * 3.0);\n\n      // Subtle pulse\n      float pulse = 0.9 + 0.1 * sin(u_time * 3.0);\n\n      return vec4(glowColor.rgb, glowColor.a * alpha * pulse);\n    }\n  "
	local var_66_1, var_66_2 = pcall(love.graphics.newShader, var_66_0)

	var_0_116 = var_66_1 and var_66_2 or false

	return var_0_116 or nil
end

local function var_0_118(arg_67_0, arg_67_1)
	if not arg_67_0 or not arg_67_1 then
		return {
			0,
			0,
			0,
			0
		}
	end

	local var_67_0 = arg_67_0:getWidth()
	local var_67_1 = arg_67_0:getHeight()
	local var_67_2, var_67_3, var_67_4, var_67_5 = arg_67_1:getViewport()
	local var_67_6 = var_67_0 > 0 and var_67_2 / var_67_0 or 0
	local var_67_7 = var_67_1 > 0 and var_67_3 / var_67_1 or 0
	local var_67_8 = var_67_0 > 0 and var_67_4 / var_67_0 or 0
	local var_67_9 = var_67_1 > 0 and var_67_5 / var_67_1 or 0

	return {
		var_67_6,
		var_67_7,
		var_67_8,
		var_67_9
	}
end

local var_0_119
local var_0_120 = false

local function var_0_121()
	if var_0_119 then
		return var_0_119
	end

	if var_0_120 then
		return nil
	end

	if not love or not love.image or not love.image.newImageData or not love.graphics then
		return nil
	end

	local var_68_0, var_68_1 = pcall(function()
		local var_69_0 = 128
		local var_69_1 = love.image.newImageData(var_69_0, var_69_0)

		local function var_69_2(arg_70_0, arg_70_1, arg_70_2)
			local var_70_0 = math.max(0, math.min(1, (arg_70_2 - arg_70_0) / (arg_70_1 - arg_70_0)))

			return var_70_0 * var_70_0 * (3 - 2 * var_70_0)
		end

		for iter_69_0 = 0, var_69_0 - 1 do
			for iter_69_1 = 0, var_69_0 - 1 do
				local var_69_3 = ((iter_69_1 + 0.5) / var_69_0 - 0.5) * 2
				local var_69_4 = ((iter_69_0 + 0.5) / var_69_0 - 0.5) * 2
				local var_69_5 = var_69_3 * 0.9
				local var_69_6 = var_69_4 * 0.9 * 1.6
				local var_69_7 = math.atan2 and math.atan2(var_69_6, var_69_5) or math.atan(var_69_6, var_69_5)
				local var_69_8 = var_69_5 * var_69_5 + var_69_6 * var_69_6
				local var_69_9 = 0.5 + 0.5 * math.sin(var_69_7 * 7)
				local var_69_10 = var_69_2(0.2, 0.85, var_69_9)
				local var_69_11 = math.exp(-var_69_8 * 1.8)
				local var_69_12 = math.sqrt(var_69_3 * var_69_3 + var_69_4 * var_69_4)
				local var_69_13 = 1 - var_69_2(0.7, 0.995, var_69_12)
				local var_69_14 = math.max(0, math.min(1, var_69_10 * var_69_11 * var_69_13))

				var_69_1:setPixel(iter_69_1, iter_69_0, 1, 0.9, 0.4, var_69_14)
			end
		end

		local var_69_15 = love.graphics.newImage(var_69_1)

		if var_69_1.release then
			pcall(var_69_1.release, var_69_1)
		end

		var_69_15:setFilter("linear", "linear")

		return var_69_15
	end)

	if not var_68_0 or not var_68_1 then
		var_0_120 = true

		return nil
	end

	var_0_119 = var_68_1

	return var_0_119
end

function var_0_0.prepareClassSelectionResources()
	return var_0_121() ~= nil
end

function var_0_0.drawClassSelectSunlight(arg_72_0, arg_72_1, arg_72_2, arg_72_3, arg_72_4)
	if arg_72_3 <= 0 then
		return
	end

	local var_72_0 = var_0_119

	if not var_72_0 then
		return
	end

	local var_72_1, var_72_2 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("add", "alphamultiply")

	local var_72_3 = 130 * arg_72_2
	local var_72_4, var_72_5 = var_72_0:getDimensions()

	love.graphics.setShader()
	love.graphics.setColor(1, 1, 1, arg_72_3)
	love.graphics.draw(var_72_0, arg_72_0, arg_72_1, -(arg_72_4 or 0) * 0.3, var_72_3 / var_72_4, var_72_3 / var_72_5, var_72_4 * 0.5, var_72_5 * 0.5)
	love.graphics.setBlendMode(var_72_1, var_72_2)
	love.graphics.setColor(1, 1, 1, 1)
end

function var_0_0.drawClassCardUnitEffects(arg_73_0, arg_73_1, arg_73_2, arg_73_3, arg_73_4, arg_73_5, arg_73_6, arg_73_7, arg_73_8)
	if not arg_73_2 or not arg_73_3 then
		return
	end

	local var_73_0 = arg_73_1 and arg_73_1.grade or "normal"

	if var_73_0 == "legend" or var_73_0 == "l" then
		var_73_0 = "legendary"
	end

	local var_73_1 = arg_73_1 and arg_73_1.jackpot5th == true or var_73_0 == "prism"
	local var_73_2 = love.timer.getTime()
	local var_73_3

	var_73_3 = arg_73_1 and arg_73_1.sym

	local var_73_4 = arg_73_8 or 1

	if var_73_4 <= 0.01 then
		return
	end

	local var_73_5 = arg_73_2:getWidth()
	local var_73_6 = arg_73_2:getHeight()
	local var_73_7 = 1 / (math.max(1, var_73_5) * math.max(0.001, math.abs(arg_73_6)))
	local var_73_8 = 1 / (math.max(1, var_73_6) * math.max(0.001, math.abs(arg_73_7)))
	local var_73_9 = var_0_118(arg_73_2, arg_73_3)

	if var_73_1 then
		local var_73_10 = var_0_115()

		if var_73_10 then
			local var_73_11 = arg_73_0 and arg_73_0.battle and (arg_73_0.battle.jackpotFoil or arg_73_0.battle.jackpotRainbow) or {}
			local var_73_12 = (var_73_11.angleDeg or 20) * math.pi / 180
			local var_73_13 = math.cos(var_73_12)
			local var_73_14 = math.sin(var_73_12)
			local var_73_15 = var_73_11.cycleSec or 4

			love.graphics.setShader(var_73_10)
			var_73_10:send("texelStep", {
				var_73_7,
				var_73_8
			})
			var_73_10:send("threshold", 0.01)
			var_73_10:send("radiusPx", 3)
			var_73_10:send("u_frameUV", var_73_9)
			var_73_10:send("u_time", var_73_2)
			var_73_10:send("u_alpha", 0.92 * var_73_4)
			var_73_10:send("u_dir", {
				var_73_13,
				var_73_14
			})
			var_73_10:send("u_cycle", var_73_15)
			var_73_10:send("u_scale", var_73_11.scale or 2.5)
			var_73_10:send("u_colorGain", 1.25)
			var_73_10:send("u_saturation", 1.6)
			var_73_10:send("u_mixBP", (var_73_11.mixBP or 0.55) * 0.3)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_73_2, arg_73_3, arg_73_4, arg_73_5, 0, arg_73_6, arg_73_7)
			love.graphics.setShader()
		end
	else
		local var_73_16
		local var_73_17

		if var_73_0 == "special" then
			var_73_16, var_73_17 = {
				0.9411764705882353,
				0.30980392156862746,
				0.8470588235294118
			}, 0.85
		elseif var_73_0 == "advanced" then
			var_73_16, var_73_17 = {
				0.32,
				0.68,
				0.42
			}, 0.85
		elseif var_73_0 == "rare" then
			var_73_16, var_73_17 = {
				0.24,
				0.48,
				0.76
			}, 0.85
		elseif var_73_0 == "legendary" then
			var_73_16, var_73_17 = {
				0.79,
				0.6,
				0.12
			}, 0.85
		end

		if var_73_16 then
			local var_73_18 = var_0_117()

			if var_73_18 then
				love.graphics.setShader(var_73_18)
				var_73_18:send("texelStep", {
					var_73_7,
					var_73_8
				})
				var_73_18:send("glowColor", {
					var_73_16[1],
					var_73_16[2],
					var_73_16[3],
					(var_73_17 or 0.85) * var_73_4
				})
				var_73_18:send("threshold", 0.01)
				var_73_18:send("radiusPx", 3)
				var_73_18:send("u_frameUV", var_73_9)
				var_73_18:send("u_time", var_73_2)
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(arg_73_2, arg_73_3, arg_73_4, arg_73_5, 0, arg_73_6, arg_73_7)
				love.graphics.setShader()
			end
		end
	end

	love.graphics.setColor(1, 1, 1, var_73_4)
	love.graphics.draw(arg_73_2, arg_73_3, arg_73_4, arg_73_5, 0, arg_73_6, arg_73_7)
	love.graphics.setColor(1, 1, 1, 1)

	local var_73_19 = arg_73_0 and arg_73_0.battle and (arg_73_0.battle.legendaryFoil or arg_73_0.battle.jackpotFoil or arg_73_0.battle.jackpotRainbow) or {}
	local var_73_20

	if var_73_1 then
		var_73_20 = var_0_107()
	elseif var_73_0 == "legendary" then
		var_73_20 = var_0_111()
	elseif var_73_0 == "advanced" or var_73_0 == "rare" then
		var_73_20 = var_0_113()
	end

	if var_73_20 then
		local var_73_21 = var_0_118(arg_73_2, arg_73_3)
		local var_73_22 = (var_73_19.angleDeg or 20) * math.pi / 180
		local var_73_23 = math.cos(var_73_22)
		local var_73_24 = math.sin(var_73_22)
		local var_73_25 = var_73_19.cycleSec or 4
		local var_73_26, var_73_27 = love.graphics.getBlendMode()

		love.graphics.setShader(var_73_20)
		var_73_20:send("u_time", var_73_2)
		var_73_20:send("u_alpha", (var_73_19.alpha ~= nil and var_73_19.alpha or 0.2) * var_73_4)
		var_73_20:send("u_dir", {
			var_73_23,
			var_73_24
		})
		var_73_20:send("u_cycle", var_73_25)
		var_73_20:send("u_scale", var_73_19.scale or 2.5)

		local var_73_28 = var_73_19.grain or {}
		local var_73_29 = var_73_19.film or {}

		var_73_20:send("u_grainScale", var_73_28.scale or 3)
		var_73_20:send("u_grainAmp", var_73_28.amp or 0.2)
		var_73_20:send("u_filmFreq", var_73_29.freq or 2)
		var_73_20:send("u_filmAmp", var_73_29.amp or 0.25)
		var_73_20:send("u_specular", var_73_19.specular or 0.35)
		var_73_20:send("u_fresnelPow", var_73_19.fresnelPow or 2.5)
		var_73_20:send("u_colorGain", var_73_19.colorGain or 1)
		var_73_20:send("u_saturation", var_73_19.saturation or 1)
		var_73_20:send("u_frameUV", var_73_21)

		if var_73_20:hasUniform("u_mixBP") then
			var_73_20:send("u_mixBP", var_73_19.mixBP or 0.55)
		end

		if var_73_0 == "advanced" or var_73_0 == "rare" then
			local var_73_30
			local var_73_31
			local var_73_32
			local var_73_33

			if var_73_0 == "advanced" then
				var_73_30, var_73_31 = {
					0.32,
					0.68,
					0.42
				}, {
					0.65,
					0.92,
					0.7
				}
				var_73_32, var_73_33 = {
					0.55,
					0.9,
					0.7
				}, {
					0.85,
					1,
					0.9
				}
			else
				var_73_30, var_73_31 = {
					0.24,
					0.48,
					0.76
				}, {
					0.55,
					0.78,
					1
				}
				var_73_32, var_73_33 = {
					0.45,
					0.7,
					0.95
				}, {
					0.8,
					0.95,
					1
				}
			end

			var_73_20:send("u_tintLo", var_73_30)
			var_73_20:send("u_tintHi", var_73_31)
			var_73_20:send("u_sweepLo", var_73_32)
			var_73_20:send("u_sweepHi", var_73_33)
			var_73_20:send("u_pulseAmp", 0)
			var_73_20:send("u_pulseHz", 0)
			var_73_20:send("u_pulseSharpness", 2)
			var_73_20:send("u_pulseMin", 0.65)
			var_73_20:send("u_sweepEnable", 1)
		end

		love.graphics.setColor(1, 1, 1, var_73_4)

		if var_73_27 ~= nil then
			love.graphics.setBlendMode("add", "alphamultiply")
		else
			love.graphics.setBlendMode("add")
		end

		love.graphics.draw(arg_73_2, arg_73_3, arg_73_4, arg_73_5, 0, arg_73_6, arg_73_7)
		love.graphics.setShader()

		if var_73_27 ~= nil then
			love.graphics.setBlendMode(var_73_26, var_73_27)
		else
			love.graphics.setBlendMode(var_73_26)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end
end

var_0_0.getUnitColorSwapShader = var_0_104
var_0_0.getPrismFoilShader = var_0_107
var_0_0.getSilhouetteShader = var_0_94
var_0_0.getLegendarySweepShader = var_0_109
var_0_0.getLegendaryFoilShader = var_0_111
var_0_0.getTintedFoilShader = var_0_113
var_0_0.getPrismGlowShader = var_0_115
var_0_0.getGradeGlowShader = var_0_117

function var_0_0.addOverdriveEffect(arg_74_0, arg_74_1)
	if not arg_74_0 or not arg_74_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.3,
		type = "slice",
		t = 0,
		x = arg_74_0,
		y = arg_74_1
	})
end

function var_0_0.addSoulExtractEffect(arg_75_0, arg_75_1)
	if not arg_75_0 or not arg_75_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.4,
		type = "soul_extract",
		t = 0,
		x = arg_75_0,
		y = arg_75_1
	})
end

function var_0_0.addKnockbackEffect(arg_76_0, arg_76_1)
	if not arg_76_0 or not arg_76_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.35,
		type = "knockback",
		t = 0,
		x = arg_76_0,
		y = arg_76_1
	})
end

function var_0_0.addBashEffect(arg_77_0, arg_77_1)
	if not arg_77_0 or not arg_77_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.3,
		type = "bash",
		t = 0,
		x = arg_77_0,
		y = arg_77_1
	})
end

function var_0_0.addPoisonTickEffect(arg_78_0, arg_78_1)
	if not arg_78_0 or not arg_78_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.35,
		type = "poison_tick",
		t = 0,
		x = arg_78_0,
		y = arg_78_1
	})
end

function var_0_0.addBleedSlashEffect(arg_79_0, arg_79_1)
	if not arg_79_0 or not arg_79_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.3,
		type = "bleed_slash",
		t = 0,
		x = arg_79_0,
		y = arg_79_1
	})
end

function var_0_0.addBleedTickEffect(arg_80_0, arg_80_1)
	if not arg_80_0 or not arg_80_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.4,
		type = "bleed_tick",
		t = 0,
		x = arg_80_0,
		y = arg_80_1
	})
end

function var_0_0.addRuinTickEffect(arg_81_0, arg_81_1)
	if not arg_81_0 or not arg_81_1 then
		return
	end

	table.insert(var_0_11, {
		dur = 0.5,
		type = "ruin_tick",
		t = 0,
		x = arg_81_0,
		y = arg_81_1
	})
end

function var_0_0.addBloodSurgeHitEffect(arg_82_0)
	if not arg_82_0 then
		return
	end

	local var_82_0 = arg_82_0._hpBarX or arg_82_0.x or 0
	local var_82_1 = arg_82_0._hpBarY and arg_82_0._hpBarY - 6 or (arg_82_0.y or 0) - 20

	table.insert(var_0_11, {
		dur = 0.28,
		type = "blood_surge_hit",
		t = 0,
		x = var_82_0,
		y = var_82_1
	})
end

function var_0_0.addBloodPriceTickEffect(arg_83_0)
	if not arg_83_0 then
		return
	end

	local var_83_0 = arg_83_0._hpBarX or arg_83_0.x or 0
	local var_83_1 = arg_83_0._hpBarY and arg_83_0._hpBarY - 6 or (arg_83_0.y or 0) - 20

	table.insert(var_0_11, {
		dur = 0.26,
		type = "blood_price_tick",
		t = 0,
		x = var_83_0,
		y = var_83_1
	})
end

function var_0_0.addBloodMistBurst(arg_84_0, arg_84_1, arg_84_2)
	if arg_84_0 == nil or arg_84_1 == nil then
		return
	end

	table.insert(var_0_11, {
		dur = 0.22,
		type = "blood_mist",
		t = 0,
		x = arg_84_0,
		y = arg_84_1,
		s = arg_84_2 or 1
	})
end

function var_0_0.addBloodAxeTrail(arg_85_0, arg_85_1, arg_85_2)
	if arg_85_0 == nil or arg_85_1 == nil then
		return
	end

	table.insert(var_0_11, {
		dur = 0.28,
		type = "blood_axe_trail",
		t = 0,
		x = arg_85_0,
		y = arg_85_1,
		dir = arg_85_2 or 1
	})
end

function var_0_0.addBloodPriceHitX(arg_86_0, arg_86_1, arg_86_2)
	if arg_86_0 == nil or arg_86_1 == nil then
		return
	end

	table.insert(var_0_11, {
		dur = 0.22,
		type = "blood_price_hit_x",
		t = 0,
		x = arg_86_0,
		y = arg_86_1,
		s = arg_86_2 or 1
	})
end

function var_0_0.addSlamHitEffect(arg_87_0, arg_87_1)
	if not arg_87_0 or not arg_87_1 then
		return
	end

	table.insert(var_0_12, {
		dur = 0.5,
		type = "slam_hit",
		t = 0,
		x = arg_87_0,
		y = arg_87_1
	})
end

function var_0_0.addShockwaveEffect(arg_88_0, arg_88_1)
	if not arg_88_0 or not arg_88_1 then
		return
	end

	table.insert(var_0_12, {
		dur = 0.5,
		type = "shockwave_hit",
		t = 0,
		x = arg_88_0,
		y = arg_88_1
	})
end

function var_0_0.addArcaneCoreEffect(arg_89_0, arg_89_1, arg_89_2)
	local var_89_0 = {
		alive = true,
		type = "arcane_core",
		t = 0,
		x = arg_89_0,
		y = arg_89_1,
		dur = arg_89_2 or 2
	}

	table.insert(var_0_12, var_89_0)

	return var_89_0
end

function var_0_0.addArcaneOrbEffect(arg_90_0, arg_90_1, arg_90_2, arg_90_3, arg_90_4)
	local var_90_0 = {
		type = "arcane_orb",
		t = 0,
		dur = 0.8,
		x1 = arg_90_0,
		y1 = arg_90_1,
		x2 = arg_90_2,
		y2 = arg_90_3,
		target = arg_90_4
	}

	table.insert(var_0_11, var_90_0)

	return var_90_0
end

function var_0_0.addArcaneExplodeEffect(arg_91_0, arg_91_1)
	table.insert(var_0_11, {
		dur = 0.35,
		type = "arcane_explode",
		t = 0,
		x = arg_91_0,
		y = arg_91_1
	})
end

function var_0_0.addCrushingSlamHitEffect(arg_92_0, arg_92_1)
	if not arg_92_0 or not arg_92_1 then
		return
	end

	table.insert(var_0_12, {
		dur = 0.5,
		type = "crushing_slam_hit",
		t = 0,
		x = arg_92_0,
		y = arg_92_1
	})
end

function var_0_0.addCrushingShockwaveEffect(arg_93_0, arg_93_1)
	if not arg_93_0 or not arg_93_1 then
		return
	end

	table.insert(var_0_12, {
		dur = 0.5,
		type = "crushing_shockwave_hit",
		t = 0,
		x = arg_93_0,
		y = arg_93_1
	})
end

function var_0_0.addEarthquakeEffect(arg_94_0, arg_94_1)
	local var_94_0 = var_0_2.vfx.earthquake

	var_0_51 = arg_94_0 or var_94_0.duration
	var_0_52 = arg_94_1 or var_94_0.floatDuration or 1.2
	var_0_50 = var_0_51
	var_0_53 = var_94_0.magnitude
end

function var_0_0.preDrawBattlefield(arg_95_0, arg_95_1)
	if not arg_95_1 then
		return
	end

	_currentBattlefield = arg_95_1
	_currentBattleArea = arg_95_0

	if arg_95_1.timeStopT and arg_95_1.timeStopT > 0 or _timeStopPhase and _timeStopPhase ~= "idle" then
		local var_95_0 = var_0_82()

		if var_95_0 then
			love.graphics.setShader(var_95_0)
			var_95_0:send("u_strength", 1)
			var_0_0.applyTimeStopWaveUniforms(var_95_0, arg_95_0, arg_95_1)
		end
	end

	if var_0_50 > 0 then
		local var_95_1 = 0.8
		local var_95_2 = var_0_51 - var_0_50
		local var_95_3 = math.max(0, 1 - var_95_2 / var_95_1)
		local var_95_4 = var_0_53 * var_95_3

		love.graphics.push()

		if var_95_4 > 0 then
			local var_95_5 = love.timer.getTime() * 10
			local var_95_6 = (love.math.noise(var_95_5, 10) * 2 - 1) * var_95_4
			local var_95_7 = (love.math.noise(var_95_5, 20) * 2 - 1) * var_95_4

			love.graphics.translate(var_95_6, var_95_7)
		end
	end
end

function var_0_0.drawEarthquakeAnimation(arg_96_0)
	if var_0_50 > 0 then
		local var_96_0 = var_0_1.backgrounds.earthquake

		if not var_96_0 then
			return
		end

		local var_96_1 = 1 - var_0_50 / var_0_51
		local var_96_2 = 0.35 / var_0_51
		local var_96_3 = 7

		if var_96_1 < var_96_2 then
			var_96_3 = math.floor(var_96_1 / var_96_2 * 6) + 1
		elseif var_96_1 > 1 - var_96_2 then
			local var_96_4 = (1 - var_96_1) / var_96_2

			var_96_3 = math.floor(var_96_4 * 6) + 1
		else
			var_96_3 = 7
		end

		local var_96_5 = var_96_0[math.min(7, math.max(1, var_96_3))]

		if var_96_5 then
			local var_96_6 = arg_96_0.w / var_96_5:getWidth()
			local var_96_7 = arg_96_0.h / var_96_5:getHeight()

			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_96_5, arg_96_0.x, arg_96_0.y, 0, var_96_6, var_96_7)
		end
	end
end

function var_0_0.postDrawBattlefield()
	_currentBattlefield = nil
	_currentBattleArea = nil

	love.graphics.setShader()

	if var_0_50 > 0 then
		love.graphics.pop()
	end
end

function var_0_0.addExplosionEffect(arg_98_0, arg_98_1, arg_98_2)
	if not arg_98_0 or not arg_98_1 then
		return
	end

	local var_98_0 = 0.64

	if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ExplosionEffect then
		local var_98_1 = var_0_1.projectiles.ExplosionEffect

		if var_98_1.frames and var_98_1.speed then
			var_98_0 = var_98_1.frames * var_98_1.speed
		end
	end

	table.insert(var_0_11, {
		type = "explosion",
		t = 0,
		x = arg_98_0,
		y = arg_98_1,
		dur = var_98_0,
		radius = arg_98_2 or 80
	})
end

function var_0_0.addAnnihilationEffect(arg_99_0, arg_99_1)
	if not arg_99_0 or not arg_99_1 then
		return
	end

	local var_99_0 = 0.6

	if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.FireCone then
		local var_99_1 = var_0_1.projectiles.FireCone

		if var_99_1.frames and var_99_1.speed then
			var_99_0 = var_99_1.frames * var_99_1.speed
		end
	end

	table.insert(var_0_11, {
		type = "fire_cone",
		t = 0,
		x = arg_99_0,
		y = arg_99_1,
		dur = var_99_0
	})
end

function var_0_0.addMeteorEffect(arg_100_0, arg_100_1, arg_100_2)
	if not arg_100_0 or not arg_100_1 then
		return
	end

	local var_100_0 = require("src.ui.effects").meteor

	arg_100_2 = tonumber(arg_100_2) or var_100_0.BLAST

	local var_100_1 = 1.3
	local var_100_2 = var_100_1 + var_100_0.GROUND + 0.25
	local var_100_3 = love.math.random() * 7

	table.insert(var_0_11, {
		type = "meteor",
		t = 0,
		x = arg_100_0,
		y = arg_100_1,
		fallDur = var_100_1,
		dur = var_100_2,
		seed = var_100_3,
		radius = arg_100_2
	})
	table.insert(var_0_12, {
		type = "meteor_ground",
		t = 0,
		x = arg_100_0,
		y = arg_100_1,
		fallDur = var_100_1,
		dur = var_100_2,
		seed = var_100_3,
		radius = arg_100_2
	})
end

function var_0_0.itemEffects()
	return var_0_11
end

function var_0_0.addLifestealEffect(arg_102_0, arg_102_1, arg_102_2, arg_102_3, arg_102_4)
	if not arg_102_0 or not arg_102_1 or not arg_102_2 or not arg_102_3 then
		return
	end

	table.insert(var_0_11, require("src.ui.effects").lifesteal.new(arg_102_0, arg_102_1, arg_102_2, arg_102_3, arg_102_4))
end

function var_0_0.addShadowSuckEffect(arg_103_0, arg_103_1, arg_103_2, arg_103_3)
	if not arg_103_0 or not arg_103_1 or not arg_103_2 or not arg_103_3 then
		return
	end

	local var_103_0 = {}
	local var_103_1 = love and love.math and love.math.random or math.random
	local var_103_2 = 7

	for iter_103_0 = 1, var_103_2 do
		table.insert(var_103_0, {
			delay = (iter_103_0 - 1) * 0.1,
			spreadX = (var_103_1() - 0.5) * 16,
			spreadY = (var_103_1() - 0.5) * 16,
			curve = (var_103_1() - 0.5) * 45,
			speedOffset = 0.8 + var_103_1() * 0.4,
			seed = var_103_1() * 1000
		})
	end

	table.insert(var_0_11, {
		t = 0,
		type = "shadow_suck",
		_shadowConsumed = false,
		dur = 0.85,
		x1 = arg_103_0,
		y1 = arg_103_1,
		x2 = arg_103_2,
		y2 = arg_103_3,
		pData = var_103_0
	})
end

function var_0_0.addBlindEffect(arg_104_0, arg_104_1)
	if not arg_104_0 or not arg_104_1 then
		return
	end
end

function var_0_0.addChainEffect(arg_105_0, arg_105_1, arg_105_2, arg_105_3)
	if not arg_105_0 or not arg_105_1 or not arg_105_2 or not arg_105_3 then
		return
	end

	table.insert(var_0_11, {
		type = "chain",
		t = 0,
		dur = 0.48,
		x1 = arg_105_0,
		y1 = arg_105_1,
		x2 = arg_105_2,
		y2 = arg_105_3
	})
end

function var_0_0.addExecuteEffect(arg_106_0, arg_106_1)
	if not arg_106_0 or not arg_106_1 then
		return
	end

	local var_106_0 = require("src.ui.imprint"):getShortIconImage("execute")

	table.insert(var_0_11, {
		dur = 1.2,
		type = "execute",
		t = 0,
		x = arg_106_0,
		y = arg_106_1,
		icon = var_106_0
	})
end

local var_0_122 = 0
local var_0_123 = 0
local var_0_124
local var_0_125 = "idle"
local var_0_126 = 0
local var_0_127 = 1
local var_0_128 = 1
local var_0_129 = 18
local var_0_130
local var_0_131

local function var_0_132(arg_107_0, arg_107_1)
	if not (arg_107_1 and (arg_107_1.timeStopT or 0) > 0 or var_0_125 and var_0_125 ~= "idle") then
		return nil
	end

	local var_107_0
	local var_107_1

	if var_0_130 then
		var_107_0, var_107_1 = var_0_130[1], var_0_130[2]
	elseif arg_107_1 and arg_107_1.timeStopSource then
		var_107_0, var_107_1 = arg_107_1.timeStopSource.x or 0, arg_107_1.timeStopSource.y or 0
	elseif arg_107_0 then
		var_107_0, var_107_1 = arg_107_0.x + arg_107_0.w * 0.5, arg_107_0.y + arg_107_0.h * 0.5
	else
		local var_107_2, var_107_3 = love.graphics.getDimensions()

		var_107_0, var_107_1 = var_107_2 * 0.5, var_107_3 * 0.5
	end

	local var_107_4

	if arg_107_0 then
		local var_107_5 = arg_107_0.x
		local var_107_6 = arg_107_0.y
		local var_107_7 = arg_107_0.x + arg_107_0.w
		local var_107_8 = arg_107_0.y + arg_107_0.h
		local var_107_9 = math.max(math.abs(var_107_0 - var_107_5), math.abs(var_107_0 - var_107_7))
		local var_107_10 = math.max(math.abs(var_107_1 - var_107_6), math.abs(var_107_1 - var_107_8))

		var_107_4 = math.sqrt(var_107_9 * var_107_9 + var_107_10 * var_107_10)
	else
		local var_107_11, var_107_12 = love.graphics.getDimensions()
		local var_107_13 = math.max(var_107_0, var_107_11 - var_107_0)
		local var_107_14 = math.max(var_107_1, var_107_12 - var_107_1)

		var_107_4 = math.sqrt(var_107_13 * var_107_13 + var_107_14 * var_107_14)
	end

	local var_107_15 = var_107_4

	if var_0_125 == "in" then
		local var_107_16 = var_0_127 > 0 and var_0_126 / var_0_127 or 1

		var_107_15 = var_107_4 * var_0_9(var_107_16)
	elseif var_0_125 == "out" then
		local var_107_17 = var_0_128 > 0 and var_0_126 / var_0_128 or 1

		var_107_15 = var_107_4 * (1 - var_0_9(var_107_17))
	else
		var_107_15 = var_107_4
	end

	if var_107_15 < 0 then
		var_107_15 = 0
	end

	local var_107_18 = 1

	if arg_107_1 and arg_107_1.ui and arg_107_1.ui.scale then
		var_107_18 = arg_107_1.ui.scale
	end

	return {
		active = true,
		cx = var_107_0,
		cy = var_107_1,
		radius = var_107_15,
		softness = var_0_129 * var_107_18
	}
end

function var_0_0.getCurrentTargetDPIScale()
	if not love or not love.graphics or not love.graphics.getCanvas then
		return 1
	end

	local var_108_0 = love.graphics.getCanvas()

	if not var_108_0 or not var_108_0.getDPIScale then
		return 1
	end

	local var_108_1, var_108_2 = pcall(var_108_0.getDPIScale, var_108_0)

	if not var_108_1 then
		return 1
	end

	local var_108_3

	var_108_3 = tonumber(var_108_2) or 1

	if var_108_3 <= 0 then
		return 1
	end

	return var_108_3
end

function var_0_0.applyTimeStopWaveUniforms(arg_109_0, arg_109_1, arg_109_2)
	if not arg_109_0 then
		return
	end

	local var_109_0 = var_0_132(arg_109_1 or var_0_131, arg_109_2 or var_0_124)

	if arg_109_0:hasUniform("u_ts_active") then
		arg_109_0:send("u_ts_active", var_109_0 and true or false)
	end

	if not var_109_0 then
		return
	end

	local var_109_1 = var_0_0.getCurrentTargetDPIScale()

	if arg_109_0:hasUniform("u_ts_center") then
		arg_109_0:send("u_ts_center", {
			var_109_0.cx * var_109_1,
			var_109_0.cy * var_109_1
		})
	end

	if arg_109_0:hasUniform("u_ts_radius") then
		arg_109_0:send("u_ts_radius", var_109_0.radius * var_109_1)
	end

	if arg_109_0:hasUniform("u_ts_softness") then
		arg_109_0:send("u_ts_softness", var_109_0.softness * var_109_1)
	end
end

function var_0_0.isTimeStopAnimBlocking()
	return var_0_125 == "in" or var_0_125 == "out"
end

local function var_0_133(arg_111_0)
	local var_111_0 = var_0_124

	if var_111_0 and (var_111_0.timeStopT or 0) > 0 and (not arg_111_0 or not var_0_58(arg_111_0, "timeless")) then
		return 1
	end

	return 0
end

function var_0_0.addTimeStopEffect(arg_112_0, arg_112_1, arg_112_2)
	var_0_122 = arg_112_0
	var_0_123 = arg_112_0
	var_0_125 = "in"
	var_0_126 = 0

	if arg_112_1 and arg_112_2 then
		var_0_130 = {
			arg_112_1,
			arg_112_2
		}
	else
		var_0_130 = nil
	end
end

function var_0_0.updateBattle(arg_113_0, arg_113_1)
	if arg_113_1 and arg_113_1.enemies then
		local var_113_0 = arg_113_0 or 0

		for iter_113_0, iter_113_1 in ipairs(arg_113_1.enemies) do
			if var_0_30(iter_113_1) then
				local var_113_1 = var_0_131 or arg_113_1.area
				local var_113_2 = true

				if var_113_1 and var_113_1.x and var_113_1.w then
					var_113_2 = iter_113_1.x <= var_113_1.x + var_113_1.w + 20
				end

				if var_113_2 and not iter_113_1._bloodScentUsed and not iter_113_1.dying then
					iter_113_1._bloodTrailAlpha = math.min(1, (iter_113_1._bloodTrailAlpha or 0) + var_113_0 * 1.5)
				else
					iter_113_1._bloodTrailAlpha = math.max(0, (iter_113_1._bloodTrailAlpha or 0) - var_113_0 * 2)
				end
			end
		end
	end

	if not arg_113_1 or not arg_113_1.allies then
		return
	end

	arg_113_0 = arg_113_0 or 0

	local var_113_3 = arg_113_1.timeStopT and arg_113_1.timeStopT > 0

	var_0_55 = var_0_55 + arg_113_0

	local var_113_4 = 0

	for iter_113_2, iter_113_3 in ipairs(arg_113_1.allies) do
		if iter_113_3 and iter_113_3.alive and not iter_113_3.dying and iter_113_3.imprints then
			for iter_113_4, iter_113_5 in pairs(iter_113_3.imprints) do
				if iter_113_5.id == "majesty" then
					var_113_4 = math.max(var_113_4, iter_113_5.level or 1)
				end
			end
		end
	end

	var_0_54 = var_113_4

	if var_0_50 > 0 then
		var_0_50 = math.max(0, var_0_50 - arg_113_0)
	end

	if var_0_122 > 0 then
		var_0_122 = math.max(0, var_0_122 - arg_113_0)
	end

	if var_0_125 ~= "idle" then
		if var_0_125 == "in" then
			var_0_126 = var_0_126 + arg_113_0

			if var_0_126 >= (var_0_127 or 0) then
				var_0_125 = "hold"
				var_0_126 = 0
			end
		elseif var_0_125 == "hold" then
			if not var_113_3 and arg_113_1 and (arg_113_1.timeStopT or 0) <= 0 then
				var_0_125 = "out"
				var_0_126 = 0
			end
		elseif var_0_125 == "out" then
			var_0_126 = var_0_126 + arg_113_0

			if var_0_126 >= (var_0_128 or 0) then
				var_0_125 = "idle"
				var_0_126 = 0
				var_0_130 = nil
			end
		end
	elseif var_113_3 then
		var_0_125 = "hold"
		var_0_126 = 0
	end

	for iter_113_6 = #var_0_11, 1, -1 do
		local var_113_5 = var_0_11[iter_113_6]
		local var_113_6 = arg_113_0

		var_113_5.t = var_113_5.t + var_113_6

		if var_113_5.type == "lifesteal" then
			require("src.ui.effects").lifesteal.update(var_113_5)
		end

		if var_113_5.t >= var_113_5.dur then
			table.remove(var_0_11, iter_113_6)
		end
	end

	for iter_113_7 = #var_0_12, 1, -1 do
		local var_113_7 = var_0_12[iter_113_7]

		var_113_7.t = var_113_7.t + arg_113_0

		if var_113_7.t >= var_113_7.dur then
			table.remove(var_0_12, iter_113_7)
		end
	end

	for iter_113_8, iter_113_9 in ipairs(arg_113_1.allies) do
		if iter_113_9 and iter_113_9._lifestealGlow then
			require("src.ui.effects").lifesteal.tick(iter_113_9, arg_113_0)
		end

		if iter_113_9 and iter_113_9._lifestealSpritePulse then
			local var_113_8 = iter_113_9._lifestealSpritePulse

			var_113_8.t = (var_113_8.t or 0) + arg_113_0

			if var_113_8.t >= (var_113_8.dur or 0.16) then
				iter_113_9._lifestealSpritePulse = nil
			end
		end

		if iter_113_9 and iter_113_9.alive and not iter_113_9.dying then
			if iter_113_9._impactSquash then
				iter_113_9._impactSquash.t = (iter_113_9._impactSquash.t or 0) + arg_113_0

				if (iter_113_9._impactSquash.t or 0) >= (iter_113_9._impactSquash.dur or 0.2) then
					iter_113_9._impactSquash = nil
				end
			end

			if iter_113_9._overdriveActive then
				iter_113_9._overdriveAuraT = (iter_113_9._overdriveAuraT or 0) + arg_113_0
			else
				iter_113_9._overdriveAuraT = nil
			end

			if (iter_113_9.fearT or 0) > 0 then
				iter_113_9.facing = -1
			elseif iter_113_9.anim and (iter_113_9.anim.name == "attack" or iter_113_9.anim.name == "attack2" or iter_113_9.anim.name == "attack3") then
				if iter_113_9._attackFacing then
					iter_113_9.facing = iter_113_9._attackFacing
				end
			elseif iter_113_9.facing == nil then
				local var_113_9 = iter_113_9.target

				if var_113_9 and var_113_9.x and iter_113_9.x and var_113_9.alive and not var_113_9.dying then
					iter_113_9.facing = var_113_9.x < iter_113_9.x and -1 or 1
				else
					iter_113_9.facing = 1
				end
			end
		elseif iter_113_9 and iter_113_9.alive and iter_113_9.dying and iter_113_9._overdriveActive then
			iter_113_9._overdriveAuraT = (iter_113_9._overdriveAuraT or 0) + arg_113_0
		end
	end

	if arg_113_1.enemies then
		for iter_113_10, iter_113_11 in ipairs(arg_113_1.enemies) do
			if iter_113_11 and iter_113_11._lifestealGlow then
				require("src.ui.effects").lifesteal.tick(iter_113_11, arg_113_0)
			end

			if iter_113_11 and iter_113_11._lifestealSpritePulse then
				local var_113_10 = iter_113_11._lifestealSpritePulse

				var_113_10.t = (var_113_10.t or 0) + arg_113_0

				if var_113_10.t >= (var_113_10.dur or 0.16) then
					iter_113_11._lifestealSpritePulse = nil
				end
			end

			if iter_113_11 and iter_113_11.alive and not iter_113_11.dying then
				if iter_113_11._impactSquash then
					iter_113_11._impactSquash.t = (iter_113_11._impactSquash.t or 0) + arg_113_0

					if (iter_113_11._impactSquash.t or 0) >= (iter_113_11._impactSquash.dur or 0.2) then
						iter_113_11._impactSquash = nil
					end
				end

				if (iter_113_11.fearT or 0) > 0 then
					iter_113_11.facing = 1
				elseif not (iter_113_11.anim and (iter_113_11.anim.name == "attack" or iter_113_11.anim.name == "attack2" or iter_113_11.anim.name == "attack3")) and iter_113_11.facing == nil then
					local var_113_11 = iter_113_11.target

					if var_113_11 and var_113_11.x and iter_113_11.x and var_113_11.alive and not var_113_11.dying then
						iter_113_11.facing = var_113_11.x > iter_113_11.x and 1 or -1
					else
						iter_113_11.facing = -1
					end
				end
			end
		end
	end
end

function var_0_0.unitCleanup(arg_114_0)
	if arg_114_0 and arg_114_0._render2Pushed then
		love.graphics.pop()

		arg_114_0._render2Pushed = false
	end

	local var_114_0 = var_0_124

	if var_114_0 and (var_114_0.timeStopT or 0) > 0 and var_0_58(arg_114_0, "timeless") then
		local var_114_1 = var_0_82()

		if var_114_1 then
			love.graphics.setShader(var_114_1)
			var_114_1:send("u_strength", 1)
			var_0_0.applyTimeStopWaveUniforms(var_114_1)
		end
	end

	if arg_114_0 then
		arg_114_0._useManualCleanup = false
	end
end

function var_0_0.getUnitVisualScale(arg_115_0, arg_115_1)
	local var_115_0 = math.max(0.1, tonumber(arg_115_0 and arg_115_0.demonLordDominionScale) or 1)

	if math.abs(var_115_0 - 1) > 0.0001 then
		local var_115_1 = var_0_7.getVisualScale(arg_115_0) * var_115_0
		local var_115_2 = math.max(1, tonumber(arg_115_1) or 32)
		local var_115_3 = math.max(0.01, tonumber(rawget(_G, "__slotGameplayCanvasDensity")) or 1)
		local var_115_4 = var_115_2 / 32 * var_115_3

		if var_115_4 < 3.9999 then
			return var_115_1
		end

		local var_115_5 = math.max(1, math.floor(var_115_4 * var_115_1 + 0.5))

		return math.max(0.1, var_115_5 / var_115_4)
	end

	return var_0_7.getPixelPerfectVisualScale(arg_115_0, arg_115_1, rawget(_G, "__slotGameplayCanvasDensity"))
end

function var_0_0.getUnitDominionVisualScale(arg_116_0, arg_116_1)
	local var_116_0 = math.max(0.1, tonumber(arg_116_0 and arg_116_0.demonLordDominionScale) or 1)

	if math.abs(var_116_0 - 1) <= 0.0001 then
		return 1
	end

	local var_116_1 = math.max(1, tonumber(arg_116_1) or 32)
	local var_116_2 = math.max(0.01, tonumber(rawget(_G, "__slotGameplayCanvasDensity")) or 1)
	local var_116_3 = var_116_1 / 32 * var_116_2

	if var_116_3 < 3.9999 then
		return var_116_0
	end

	local var_116_4 = math.max(1, math.floor(var_116_3 * var_116_0 + 0.5))

	return math.max(0.1, var_116_4 / var_116_3)
end

function var_0_0.getUnitShadowScale(arg_117_0, arg_117_1, arg_117_2)
	return (tonumber(arg_117_2) or 1) * var_0_0.getUnitVisualScale(arg_117_0, arg_117_1)
end

function var_0_0.drawUnitWrapperPre(arg_118_0, arg_118_1)
	if not arg_118_0 then
		return
	end

	local var_118_0 = var_0_124

	if var_118_0 and (var_118_0.timeStopT or 0) > 0 and var_0_58(arg_118_0, "timeless") then
		love.graphics.setShader()
	end

	if arg_118_0.dying or arg_118_0.revivedAlready then
		love.graphics.setColor(1, 1, 1, 0)
	end

	local var_118_1 = var_0_0.getUnitVisualScale(arg_118_0, arg_118_1)
	local var_118_2 = (arg_118_0.enlargeScale or 1) * var_118_1
	local var_118_3 = 0

	if var_0_50 > 0 then
		local var_118_4 = var_0_51 - var_0_50

		if var_118_4 < var_0_52 then
			local var_118_5 = var_118_4 / var_0_52

			var_118_3 = -24 * (4 * var_118_5 * (1 - var_118_5))
		end
	end

	local var_118_6 = 0
	local var_118_7 = 1
	local var_118_8 = 1
	local var_118_9 = 0
	local var_118_10 = 1
	local var_118_11 = 1
	local var_118_12 = 1
	local var_118_13 = 1
	local var_118_14 = arg_118_0._emperorsRoarFollowup

	if var_118_14 and arg_118_0.anim and arg_118_0.anim.name == "attack" then
		local var_118_15 = arg_118_0.anim.frame or 1
		local var_118_16 = var_118_14.peakY or 6

		if not var_118_14.released then
			local var_118_17 = var_118_14.squashX or 0.04
			local var_118_18 = var_118_14.squashY or 0.08

			if var_118_15 < 5 then
				local var_118_19 = math.max(0.001, var_118_14.squashDur or 0.06)
				local var_118_20 = 0

				if var_118_15 == 4 then
					var_118_20 = var_0_9((arg_118_0.anim.t or 0) / var_118_19)
				end

				var_118_7 = 1 + var_118_17 * var_118_20
				var_118_8 = 1 - var_118_18 * var_118_20
			else
				local var_118_21 = math.max(0.001, var_118_14.riseDur or 0.08)
				local var_118_22 = var_0_9((var_118_14.holdT or 0) / var_118_21)

				var_118_6 = -var_118_16 * var_118_22
				var_118_7 = 1 + var_118_17 * (1 - var_118_22)
				var_118_8 = 1 - var_118_18 * (1 - var_118_22)
			end
		else
			local var_118_23 = math.max(0.001, var_118_14.fallDur or 0.12)
			local var_118_24 = var_0_9((var_118_14.releaseT or 0) / var_118_23)

			var_118_6 = -var_118_16 * (1 - var_118_24)
		end
	end

	local var_118_25 = arg_118_0._impactSquash

	if var_118_25 then
		local var_118_26 = math.max(0.001, var_118_25.dur or 0.2)
		local var_118_27 = var_0_8((var_118_25.t or 0) / var_118_26, 0, 1)
		local var_118_28 = var_118_25.squashX or 0.16
		local var_118_29 = var_118_25.squashY or 0.24
		local var_118_30 = var_118_25.recoilX or 0
		local var_118_31 = var_118_25.dir or 1

		if var_118_27 < 0.35 then
			local var_118_32 = var_0_9(var_118_27 / 0.35)

			var_118_10 = 1 + var_118_28 * var_118_32
			var_118_11 = 1 - var_118_29 * var_118_32
			var_118_9 = var_118_31 * var_118_30 * var_118_32
		else
			local var_118_33 = var_0_9((var_118_27 - 0.35) / 0.65)

			var_118_10 = 1 + var_118_28 + (1 - var_118_28 * 0.35 - (1 + var_118_28)) * var_118_33
			var_118_11 = 1 - var_118_29 + (1 + var_118_29 * 0.18 - (1 - var_118_29)) * var_118_33
			var_118_9 = var_118_31 * var_118_30 * (1 - var_118_33)
		end
	end

	local var_118_34 = arg_118_0._lifestealSpritePulse

	if var_118_34 then
		var_118_12, var_118_13 = require("src.ui.effects").lifesteal.pulseScale(var_118_34)
	end

	if arg_118_0._render2Pushed then
		return
	end

	if math.abs(var_118_2 - 1) > 0.001 or var_118_3 ~= 0 or var_118_6 ~= 0 or math.abs(var_118_7 - 1) > 0.001 or math.abs(var_118_8 - 1) > 0.001 or math.abs(var_118_10 - 1) > 0.001 or math.abs(var_118_11 - 1) > 0.001 or math.abs(var_118_9) > 0.001 or math.abs(var_118_12 - 1) > 0.001 or math.abs(var_118_13 - 1) > 0.001 then
		love.graphics.push()

		local var_118_35 = arg_118_1 or 32

		if (tonumber(arg_118_0.demonLordDominionScale) or 1) > 1.0001 then
			local var_118_36 = arg_118_0.skin or arg_118_0.unit and arg_118_0.unit.skin
			local var_118_37 = var_118_36 and var_0_1 and var_0_1.units and var_0_1.units[var_118_36] or nil

			if var_118_37 and tonumber(var_118_37.frameH) then
				local var_118_38 = math.max(1, math.floor(var_118_35 / 32 + 0.5))

				var_118_35 = var_118_37.frameH * var_118_38
			end
		end

		local var_118_39 = math.floor(arg_118_0.x or 0)
		local var_118_40 = math.floor((arg_118_0.y or 0) + var_118_35 * 0.5)

		if math.abs(var_118_1 - 1) > 0.001 then
			var_118_39 = math.floor((arg_118_0.x or 0) + 0.5)
			var_118_40 = math.floor((arg_118_0.y or 0) + 0.5) + math.floor(var_118_35 * 0.5 + 0.5)
		end

		if var_118_34 and var_118_0 and var_118_0.entityFootPoint then
			local var_118_41, var_118_42 = var_118_0:entityFootPoint(arg_118_0, arg_118_1)

			if var_118_42 then
				var_118_40 = math.floor(var_118_42 + 0.5)
			end
		end

		love.graphics.translate(var_118_39 + var_118_9, var_118_40 + var_118_3 + var_118_6)

		local var_118_43 = var_118_2 * var_118_7 * var_118_10 * var_118_12
		local var_118_44 = var_118_2 * var_118_8 * var_118_11 * var_118_13

		if math.abs(var_118_43 - 1) > 0.001 or math.abs(var_118_44 - 1) > 0.001 then
			love.graphics.scale(var_118_43, var_118_44)
		end

		love.graphics.translate(-var_118_39, -var_118_40)

		arg_118_0._render2Pushed = true
		arg_118_0._useManualCleanup = true
	end
end

local function var_0_134(arg_119_0, arg_119_1)
	if not arg_119_0 then
		return nil
	end

	local var_119_0 = var_0_1
	local var_119_1 = arg_119_0.skin or arg_119_0.unit and arg_119_0.unit.skin

	if var_119_1 and var_119_0.units and var_119_0.units[var_119_1] then
		return var_119_0.units[var_119_1]
	end

	if arg_119_1 and var_119_0.units then
		for iter_119_0, iter_119_1 in pairs(var_119_0.units) do
			if iter_119_1.image == arg_119_1 then
				return iter_119_1
			end
		end
	end

	if (arg_119_0.symbol or arg_119_0.sym) and var_119_0.units then
		local var_119_2 = arg_119_0.symbol or arg_119_0.sym
		local var_119_3 = tonumber(arg_119_0.rank or 1) or 1
		local var_119_4 = arg_119_0.subclassKey or arg_119_0.subclassName or arg_119_0.subclass

		if var_119_2 == "Joker" or var_119_2 == "J" then
			if var_119_4 and var_119_0.units[var_119_4] then
				return var_119_0.units[var_119_4]
			end

			if var_119_3 >= 3 and var_119_0.units.Illusionist then
				return var_119_0.units.Illusionist
			end

			if var_119_3 >= 2 and var_119_0.units.Trickster then
				return var_119_0.units.Trickster
			end

			return var_119_0.units.Jester or var_119_0.units.Joker or var_119_0.units.J
		elseif var_119_2 == "W" then
			if var_119_4 and var_119_0.units[var_119_4] then
				return var_119_0.units[var_119_4]
			end

			if var_119_3 <= 1 and (arg_119_0.grade == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.슬레이어 then
				return var_119_0.units.슬레이어
			end

			if var_119_3 >= 3 then
				return var_119_0.units.MiniSwordMan03 or var_119_0.units.MiniSwordMan
			elseif var_119_3 >= 2 then
				return var_119_0.units.MiniSwordMan02 or var_119_0.units.MiniSwordMan
			else
				return var_119_0.units.MiniSwordMan
			end
		elseif var_119_2 == "A" then
			if var_119_4 and var_119_0.units[var_119_4] then
				return var_119_0.units[var_119_4]
			end

			if var_119_3 <= 1 and (arg_119_0.grade == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.명궁 then
				return var_119_0.units.명궁
			end

			if var_119_3 >= 3 then
				return var_119_0.units.MiniArcherMan03 or var_119_0.units.MiniArcherMan
			elseif var_119_3 >= 2 then
				return var_119_0.units.MiniArcherMan02 or var_119_0.units.MiniArcherMan
			else
				return var_119_0.units.MiniArcherMan
			end
		elseif var_119_2 == "S" then
			if (var_119_4 == "랜서" or var_119_4 == "Lancer" or var_119_4 == "랜서 (Lancer)") and var_119_0.units[var_119_4] then
				return var_119_0.units[var_119_4]
			end

			if var_119_3 <= 1 and (arg_119_0.grade == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.랜서 then
				return var_119_0.units.랜서
			end

			if var_119_3 >= 3 then
				if var_119_4 == "우드워든" or var_119_4 == "WoodWarden" then
					return var_119_0.units.우드워든 or var_119_0.units.MiniSpearMan03 or var_119_0.units.MiniSpearMan
				end

				return var_119_0.units.MiniSpearMan03 or var_119_0.units.MiniSpearMan
			elseif var_119_3 >= 2 then
				return var_119_0.units.MiniSpearMan02 or var_119_0.units.MiniSpearMan
			else
				return var_119_0.units.MiniSpearMan
			end
		elseif var_119_2 == "M" then
			if var_119_3 <= 1 and (arg_119_0.grade == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.금단술사 then
				return var_119_0.units.금단술사
			end

			if var_119_3 == 2 and (var_119_4 == "리치" or var_119_4 == "Lich" or var_119_4 == "리치 (Lich)") and var_119_0.units.리치 then
				return var_119_0.units.리치
			end

			if var_119_3 == 2 and (arg_119_0.grade == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.예지술사 then
				return var_119_0.units.예지술사
			end

			if var_119_3 == 3 and (var_119_4 == "리치로드" or var_119_4 == "Lich Lord" or var_119_4 == "리치로드 (Lich Lord)") and var_119_0.units.리치로드 then
				return var_119_0.units.리치로드
			end

			if var_119_3 == 3 and (arg_119_0.grade == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.예언자 then
				return var_119_0.units.예언자
			end

			if var_119_3 >= 3 then
				if var_119_4 == "본메이지" or var_119_4 == "BoneMage" then
					return var_119_0.units.본메이지 or var_119_0.units["현자 엘프"] or var_119_0.units.MiniMage
				elseif var_119_4 == "엘프 현자" then
					return var_119_0.units["엘프 현자"] or var_119_0.units["현자 엘프"] or var_119_0.units.MiniMage
				elseif var_119_4 == "원시법사" then
					return var_119_0.units.원시법사 or var_119_0.units["현자 엘프"] or var_119_0.units.MiniMage
				end

				return var_119_0.units["현자 엘프"] or var_119_0.units.MiniMage
			elseif var_119_3 >= 2 then
				if var_119_4 == "엘프법사" and var_119_0.units.엘프법사 then
					return var_119_0.units.엘프법사
				end

				if var_119_4 == "야생법사" and var_119_0.units.야생법사 then
					return var_119_0.units.야생법사
				end

				return var_119_0.units.주술사 or var_119_0.units.MiniMage
			else
				if var_119_4 == "마도사" and var_119_0.units.마도사 then
					return var_119_0.units.마도사
				end

				local var_119_5 = arg_119_0.grade and tostring(arg_119_0.grade):lower() or "normal"

				if var_119_5 == "l" or var_119_5 == "legend" then
					var_119_5 = "legendary"
				end

				if var_119_5 == "advanced" and var_119_0.units.마도사 then
					return var_119_0.units.마도사
				end

				return var_119_0.units.MiniMage
			end
		elseif var_119_2 == "H" then
			local var_119_6 = tonumber(arg_119_0.rank or 1) or 1
			local var_119_7 = arg_119_0.grade and tostring(arg_119_0.grade):lower() or "normal"

			if var_119_7 == "l" or var_119_7 == "legend" then
				var_119_7 = "legendary"
			end

			if var_119_4 == "크로노워커" or var_119_4 == "Chrono Walker" or var_119_4 == "크로노워커 (Chrono Walker)" then
				return var_119_0.units[var_119_4] or var_119_0.units.크로노워커
			end

			if var_119_4 == "페이즈" or var_119_4 == "Phase" or var_119_4 == "페이즈 (Phase)" then
				return var_119_0.units[var_119_4] or var_119_0.units.페이즈
			end

			if var_119_4 == "숲의 심장" or var_119_4 == "Wildheart" or var_119_4 == "숲의 심장 (Wildheart)" then
				return var_119_0.units[var_119_4] or var_119_0.units["숲의 심장"]
			end

			if var_119_6 == 3 and (var_119_7 == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units["숲의 심장"] then
				return var_119_0.units["숲의 심장"]
			end

			if var_119_4 == "실반" or var_119_4 == "Sylvan" or var_119_4 == "실반 (Sylvan)" then
				return var_119_0.units[var_119_4] or var_119_0.units.실반
			end

			if var_119_6 == 2 and (var_119_7 == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.실반 then
				return var_119_0.units.실반
			end

			if var_119_4 == "나이트메어" or var_119_4 == "Nightmare" or var_119_4 == "나이트메어 (Nightmare)" then
				return var_119_0.units[var_119_4] or var_119_0.units.나이트메어
			end

			if var_119_4 == "월광사제" or var_119_4 == "Moon Priestess" or var_119_4 == "월광사제 (Moon Priestess)" then
				return var_119_0.units[var_119_4] or var_119_0.units.월광사제
			end

			if var_119_4 == "초승달 여왕" or var_119_4 == "Crescent Queen" or var_119_4 == "초승달 여왕 (Crescent Queen)" then
				return var_119_0.units[var_119_4] or var_119_0.units["초승달 여왕"]
			end

			if var_119_4 == "아포칼립스" or var_119_4 == "Apocalypse" or var_119_4 == "아포칼립스 (Apocalypse)" then
				return var_119_0.units[var_119_4] or var_119_0.units.아포칼립스
			end

			if var_119_6 <= 1 and (var_119_7 == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.환수기병 then
				return var_119_0.units.환수기병
			end

			if var_119_6 <= 1 and var_119_7 == "legendary" and var_119_0.units.사령기병 then
				return var_119_0.units.사령기병
			end

			if var_119_6 <= 1 and var_119_7 == "advanced" and var_119_0.units.철기병 then
				return var_119_0.units.철기병
			end

			if var_119_6 >= 3 then
				if var_119_4 == "엘프기병" then
					return var_119_0.units.MiniHorseMan03_hp03 or var_119_0.units.MiniHorseMan03
				elseif var_119_4 == "성기병" then
					return var_119_0.units.MiniHorseMan03_hp02 or var_119_0.units.MiniHorseMan03
				end

				return var_119_0.units.MiniHorseMan03 or var_119_0.units.기병
			elseif var_119_6 >= 2 then
				return var_119_0.units.돌격병 or var_119_0.units.기병
			else
				return var_119_0.units.기병
			end
		elseif var_119_2 == "D" then
			if var_119_4 == "CrownRevenant" or var_119_4 == "레버넌트" or var_119_4 == "Revenant" or var_119_4 == "레버넌트 (Revenant)" then
				return var_119_0.units.CrownRevenant
			end

			if var_119_4 == "LegendarySpecter" or var_119_4 == "스펙터" or var_119_4 == "Specter" or var_119_4 == "스펙터 (Specter)" then
				return var_119_0.units.LegendarySpecter
			end

			if var_119_4 == "리퍼" or var_119_4 == "Reaper" or var_119_4 == "리퍼 (Reaper)" then
				return var_119_0.units.리퍼
			end

			if var_119_4 == "소울리퍼" or var_119_4 == "Soul Reaper" or var_119_4 == "소울리퍼 (Soul Reaper)" then
				return var_119_0.units.소울리퍼
			end

			if var_119_4 == "파멸의 천사" or var_119_4 == "Angel of Ruin" or var_119_4 == "파멸의 천사 (Angel of Ruin)" then
				return var_119_0.units[var_119_4] or var_119_0.units["파멸의 천사"]
			end

			if var_119_4 == "도미니온" or var_119_4 == "Dominion" or var_119_4 == "도미니온 (Dominion)" then
				return var_119_0.units[var_119_4] or var_119_0.units.도미니온
			end

			if var_119_4 == "대천사" or var_119_4 == "Archangel" or var_119_4 == "대천사 (Archangel)" then
				return var_119_0.units[var_119_4] or var_119_0.units.대천사
			end

			if var_119_4 == "타락천사" or var_119_4 == "Fallen Angel" or var_119_4 == "타락천사 (Fallen Angel)" then
				return var_119_0.units[var_119_4] or var_119_0.units.타락천사
			end

			if var_119_4 == "천사" or var_119_4 == "Angel" or var_119_4 == "천사 (Angel)" then
				return var_119_0.units[var_119_4] or var_119_0.units.천사
			end

			if var_119_4 == "셰이드" or var_119_4 == "Shade" or var_119_4 == "셰이드 (Shade)" then
				return var_119_0.units[var_119_4] or var_119_0.units.셰이드
			end

			if var_119_4 == "심판관" or var_119_4 == "Arbiter" or var_119_4 == "심판관 (Arbiter)" then
				return var_119_0.units.심판관
			end

			if var_119_4 == "빙결여제" or var_119_4 == "Frost Empress" or var_119_4 == "빙결여제 (Frost Empress)" then
				return var_119_0.units.빙결여제
			end

			if var_119_4 == "서리칼날" or var_119_4 == "Frostblade" or var_119_4 == "서리칼날 (Frostblade)" then
				return var_119_0.units.서리칼날
			end

			if var_119_4 == "RarePaladin" or var_119_4 == "Paladin" or var_119_4 == "팔라딘 (Paladin)" then
				return var_119_0.units.RarePaladin
			end

			if var_119_4 == "드루이드" and var_119_0.units.드루이드 then
				return var_119_0.units.드루이드
			end

			if var_119_4 == "엔트" and var_119_0.units.엔트 then
				return var_119_0.units.엔트
			end

			if var_119_4 == "빅터" and var_119_0.units.빅터 then
				return var_119_0.units.빅터
			end

			if var_119_4 == "엔트로드" and var_119_0.units.엔트로드 then
				return var_119_0.units.엔트로드
			end

			if var_119_4 == "프랑켄슈타인" and var_119_0.units.프랑켄슈타인 then
				return var_119_0.units.프랑켄슈타인
			end

			if var_119_4 == "검황" then
				return var_119_0.units.검황
			elseif var_119_4 == "암흑장군" then
				return var_119_0.units.암흑장군
			end

			local var_119_8 = arg_119_0.grade and tostring(arg_119_0.grade):lower() or "normal"

			if var_119_8 == "l" or var_119_8 == "legend" then
				var_119_8 = "legendary"
			end

			if var_119_3 <= 1 and (var_119_8 == "prism" or arg_119_0.jackpot5th == true) and var_119_0.units.천사 then
				return var_119_0.units.천사
			elseif var_119_3 <= 1 and var_119_8 == "legendary" and var_119_0.units.셰이드 then
				return var_119_0.units.셰이드
			elseif var_119_3 <= 1 and var_119_8 == "rare" and var_119_0.units.수호자 then
				return var_119_0.units.수호자
			elseif var_119_3 <= 1 and var_119_8 == "advanced" and var_119_0.units.드루이드 then
				return var_119_0.units.드루이드
			end

			if var_119_3 >= 3 then
				return var_119_0.units.MiniDuelist03 or var_119_0.units.MiniDuelist
			elseif var_119_3 >= 2 then
				return var_119_0.units.MiniDuelist02 or var_119_0.units.MiniDuelist
			else
				return var_119_0.units.MiniDuelist
			end
		end
	end

	return nil
end

local function var_0_135(arg_120_0, arg_120_1)
	if not arg_120_0 or not arg_120_0.quads or not arg_120_0.bounds then
		return nil, nil, nil
	end

	for iter_120_0, iter_120_1 in pairs(arg_120_0.quads) do
		for iter_120_2, iter_120_3 in ipairs(iter_120_1) do
			if iter_120_3 == arg_120_1 then
				local var_120_0 = arg_120_0.bounds[iter_120_0] and arg_120_0.bounds[iter_120_0][iter_120_2]

				if var_120_0 then
					return var_120_0.x + var_120_0.w * 0.5, var_120_0.y + var_120_0.h * 0.5, var_120_0.y
				end
			end
		end
	end

	return nil, nil, nil
end

local function var_0_136(arg_121_0, arg_121_1)
	if not arg_121_0 or not arg_121_0.quads or not arg_121_0.bounds then
		return nil, nil, nil
	end

	for iter_121_0, iter_121_1 in pairs(arg_121_0.quads) do
		for iter_121_2, iter_121_3 in ipairs(iter_121_1) do
			if iter_121_3 == arg_121_1 then
				local var_121_0 = arg_121_0.bounds[iter_121_0] and arg_121_0.bounds[iter_121_0][iter_121_2]

				if var_121_0 and (var_121_0.w or 0) > 0 and (var_121_0.h or 0) > 0 then
					return var_121_0, iter_121_0, iter_121_2
				end
			end
		end
	end

	if arg_121_1 and arg_121_1.getViewport then
		local var_121_1, var_121_2, var_121_3, var_121_4 = arg_121_1:getViewport()

		for iter_121_4, iter_121_5 in pairs(arg_121_0.quads) do
			for iter_121_6, iter_121_7 in ipairs(iter_121_5) do
				if iter_121_7 and iter_121_7.getViewport then
					local var_121_5, var_121_6, var_121_7, var_121_8 = iter_121_7:getViewport()

					if var_121_1 == var_121_5 and var_121_2 == var_121_6 and var_121_3 == var_121_7 and var_121_4 == var_121_8 then
						local var_121_9 = arg_121_0.bounds[iter_121_4] and arg_121_0.bounds[iter_121_4][iter_121_6]

						if var_121_9 and (var_121_9.w or 0) > 0 and (var_121_9.h or 0) > 0 then
							return var_121_9, iter_121_4, iter_121_6
						end
					end
				end
			end
		end
	end

	return nil, nil, nil
end

function var_0_0.getUnitScalePoofBounds(arg_122_0, arg_122_1, arg_122_2)
	if not arg_122_2 then
		return nil
	end

	local var_122_0 = var_0_134(arg_122_0, arg_122_1)
	local var_122_1 = var_122_0 and ({
		var_0_136(var_122_0, arg_122_2)
	})[1]

	if var_122_1 and (var_122_1.w or 0) > 0 and (var_122_1.h or 0) > 0 then
		return var_122_1
	end

	if var_122_0 and var_122_0.bounds and var_122_0.bounds.idle and var_122_0.bounds.idle[1] then
		local var_122_2 = var_122_0.bounds.idle[1]

		if var_122_2 and (var_122_2.w or 0) > 0 and (var_122_2.h or 0) > 0 then
			return var_122_2
		end
	end

	local var_122_3, var_122_4, var_122_5, var_122_6 = arg_122_2:getViewport()

	return {
		y = 0,
		x = 0,
		w = var_122_5,
		h = var_122_6
	}
end

local function var_0_137(arg_123_0)
	return arg_123_0 and (arg_123_0.kind == "Shield Gnoll" or arg_123_0.kind == "방패 놀" or arg_123_0.kind == "방패 놀 (Shield Gnoll)" or arg_123_0.skin == "방패 놀 (Shield Gnoll)")
end

local function var_0_138(arg_124_0, arg_124_1, arg_124_2, arg_124_3, arg_124_4, arg_124_5, arg_124_6, arg_124_7, arg_124_8, arg_124_9)
	if not var_0_137(arg_124_0) then
		return
	end

	local var_124_0 = arg_124_0.shieldBlockCharges
	local var_124_1 = var_124_0 == nil or (var_124_0 or 0) > 0
	local var_124_2 = arg_124_0.shieldOrbBreakT or 0

	if not var_124_1 and var_124_2 <= 0 then
		return
	end

	local var_124_3 = var_0_134(arg_124_0, arg_124_1)
	local var_124_4

	if var_124_3 then
		var_124_4 = ({
			var_0_136(var_124_3, arg_124_2)
		})[1]
	end

	local var_124_5, var_124_6, var_124_7, var_124_8 = arg_124_2:getViewport()
	local var_124_9 = require("src.ui.widgets").sprite_anchor.idleFootX(var_124_3) or var_124_4 and var_124_4.x + var_124_4.w * 0.5 or var_124_7 * 0.5
	local var_124_10 = var_124_4 and var_124_4.y + var_124_4.h * 0.5 or var_124_8 * 0.5
	local var_124_11 = var_124_4 and var_124_4.w or var_124_7
	local var_124_12 = var_124_4 and var_124_4.h or var_124_8
	local var_124_13 = arg_124_3 + (var_124_9 - (arg_124_8 or 0)) * (arg_124_6 or 1)
	local var_124_14 = arg_124_4 + (var_124_10 - (arg_124_9 or 0)) * (arg_124_7 or 1)
	local var_124_15 = math.max(var_124_11 * math.abs(arg_124_6 or 1), var_124_12 * math.abs(arg_124_7 or 1)) * 0.4
	local var_124_16 = love.timer.getTime()
	local var_124_17 = math.max(0, math.min(1, (arg_124_0.shieldOrbPulseT or 0) / 0.28))
	local var_124_18 = var_124_15 + math.sin(var_124_16 * 5.5) * 1 + var_124_17 * 2
	local var_124_19, var_124_20 = love.graphics.getBlendMode()
	local var_124_21 = love.graphics.getLineWidth()

	love.graphics.setLineStyle("smooth")
	love.graphics.setBlendMode("alpha")

	local function var_124_22(arg_125_0)
		local var_125_0 = arg_125_0

		return function()
			var_125_0 = (var_125_0 * 1103515245 + 12345) % 2147483648

			return var_125_0 / 2147483648
		end
	end

	local function var_124_23(arg_127_0, arg_127_1, arg_127_2, arg_127_3)
		local var_127_0 = var_124_22(arg_127_3)
		local var_127_1 = var_127_0() * math.pi * 2
		local var_127_2 = (var_127_0() - 0.5) * arg_127_2 * 0.35
		local var_127_3 = arg_127_0 + math.cos(var_127_1) * var_127_2
		local var_127_4 = arg_127_1 + math.sin(var_127_1) * var_127_2
		local var_127_5 = -math.sin(var_127_1)
		local var_127_6 = math.cos(var_127_1)
		local var_127_7 = math.sqrt(math.max(0, arg_127_2^2 - var_127_2^2))
		local var_127_8 = 5
		local var_127_9 = {
			{
				x = var_127_3 - var_127_5 * var_127_7,
				y = var_127_4 - var_127_6 * var_127_7
			},
			[var_127_8] = {
				x = var_127_3 + var_127_5 * var_127_7,
				y = var_127_4 + var_127_6 * var_127_7
			}
		}
		local var_127_10 = math.cos(var_127_1)
		local var_127_11 = math.sin(var_127_1)

		for iter_127_0 = 2, var_127_8 - 1 do
			local var_127_12 = (iter_127_0 - 1) / (var_127_8 - 1)
			local var_127_13 = var_127_3 + var_127_5 * (var_127_7 * (2 * var_127_12 - 1))
			local var_127_14 = var_127_4 + var_127_6 * (var_127_7 * (2 * var_127_12 - 1))
			local var_127_15 = (var_127_0() - 0.5) * arg_127_2 * 0.22

			var_127_9[iter_127_0] = {
				x = var_127_13 + var_127_10 * var_127_15,
				y = var_127_14 + var_127_11 * var_127_15
			}
		end

		return var_127_9, var_127_1, var_127_2
	end

	local function var_124_24(arg_128_0, arg_128_1, arg_128_2, arg_128_3, arg_128_4, arg_128_5)
		local var_128_0 = math.max(1, math.floor(math.abs(arg_128_5 or 1) + 0.5))

		love.graphics.setLineWidth(var_128_0 * 2.2)
		love.graphics.setColor(0.3, 0.85, 1, 0.22 * arg_128_4)

		for iter_128_0 = 1, #arg_128_0 - 1 do
			love.graphics.line(arg_128_0[iter_128_0].x, arg_128_0[iter_128_0].y, arg_128_0[iter_128_0 + 1].x, arg_128_0[iter_128_0 + 1].y)
		end

		love.graphics.setLineWidth(var_128_0 * 1.5)
		love.graphics.setColor(0.02, 0.1, 0.2, 0.55 * arg_128_4)

		for iter_128_1 = 1, #arg_128_0 - 1 do
			love.graphics.line(arg_128_0[iter_128_1].x - 0.5, arg_128_0[iter_128_1].y - 0.5, arg_128_0[iter_128_1 + 1].x - 0.5, arg_128_0[iter_128_1 + 1].y - 0.5)
		end

		love.graphics.setLineWidth(var_128_0 * 0.8)
		love.graphics.setColor(1, 1, 1, 0.95 * arg_128_4)

		for iter_128_2 = 1, #arg_128_0 - 1 do
			love.graphics.line(arg_128_0[iter_128_2].x, arg_128_0[iter_128_2].y, arg_128_0[iter_128_2 + 1].x, arg_128_0[iter_128_2 + 1].y)
		end

		local var_128_1 = var_124_22(arg_128_3 * 7 + 13)

		love.graphics.setLineWidth(var_128_0 * 0.6)

		for iter_128_3 = 2, #arg_128_0 - 1 do
			local var_128_2 = arg_128_0[iter_128_3]
			local var_128_3 = 1 + math.floor(var_128_1() * 2)

			for iter_128_4 = 1, var_128_3 do
				local var_128_4 = arg_128_1 + (var_128_1() > 0.5 and 1 or -1) * math.pi * 0.5 + (var_128_1() - 0.5) * 0.8
				local var_128_5 = arg_128_2 * (0.12 + var_128_1() * 0.12)
				local var_128_6 = var_128_2.x + math.cos(var_128_4) * var_128_5
				local var_128_7 = var_128_2.y + math.sin(var_128_4) * var_128_5

				love.graphics.setColor(0.9, 0.98, 1, 0.85 * arg_128_4)
				love.graphics.line(var_128_2.x, var_128_2.y, var_128_6, var_128_7)

				if var_128_1() > 0.4 then
					local var_128_8 = var_128_4 + (var_128_1() - 0.5) * 1
					local var_128_9 = var_128_5 * 0.6
					local var_128_10 = var_128_6 + math.cos(var_128_8) * var_128_9
					local var_128_11 = var_128_7 + math.sin(var_128_8) * var_128_9

					love.graphics.line(var_128_6, var_128_7, var_128_10, var_128_11)
				end
			end
		end
	end

	local var_124_25 = var_124_18

	if var_124_1 then
		local var_124_26 = math.max(0, math.min(1, (arg_124_0.shieldOrbPulseT or 0) / 0.28))

		love.graphics.setColor(0.25, 0.65, 0.95, 0.14 + 0.08 * var_124_26)
		love.graphics.circle("fill", var_124_13, var_124_14, var_124_25, 36)
		love.graphics.setColor(0.4, 0.8, 1, 0.06)
		love.graphics.circle("fill", var_124_13, var_124_14, var_124_25 * 0.92, 36)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_124_6 or 1) * 0.6 + 0.5)))
		love.graphics.setColor(0.6, 0.88, 1, 0.65 + 0.2 * var_124_26)
		love.graphics.circle("line", var_124_13, var_124_14, var_124_25, 36)
		love.graphics.setLineWidth(1)
		love.graphics.setColor(0.85, 0.95, 1, 0.4)
		love.graphics.circle("line", var_124_13, var_124_14, var_124_25 + 1, 36)
		love.graphics.setColor(1, 1, 1, 0.35 + 0.15 * var_124_26)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_124_6 or 1) * 0.4 + 0.5)))

		local var_124_27 = math.pi * 1.05
		local var_124_28 = math.pi * 1.45

		love.graphics.arc("line", "open", var_124_13, var_124_14, var_124_25 * 0.86, var_124_27, var_124_28, 16)
		love.graphics.setColor(1, 1, 1, 0.65)
		love.graphics.circle("fill", var_124_13 - var_124_25 * 0.38, var_124_14 - var_124_25 * 0.38, var_124_25 * 0.12, 16)
		love.graphics.setColor(0.3, 0.7, 1, 0.25)
		love.graphics.arc("line", "open", var_124_13, var_124_14, var_124_25 * 0.9, math.pi * 0.05, math.pi * 0.45, 16)

		if var_124_0 == 1 then
			if not arg_124_0.shieldOrbSeed then
				arg_124_0.shieldOrbSeed = love.math.random(1, 100000)
			end

			local var_124_29 = arg_124_0.shieldOrbSeed
			local var_124_30, var_124_31, var_124_32 = var_124_23(var_124_13, var_124_14, var_124_25, var_124_29)

			var_124_24(var_124_30, var_124_31, var_124_25, var_124_29, 1, arg_124_6)
		end
	end

	if var_124_2 > 0 then
		local var_124_33 = 1 - (1 - (1 - math.max(0, math.min(1, var_124_2 / 0.45))))^3

		if not arg_124_0.shieldOrbSeed then
			arg_124_0.shieldOrbSeed = love.math.random(1, 100000)
		end

		local var_124_34 = arg_124_0.shieldOrbSeed
		local var_124_35 = var_124_22(var_124_34 * 23 + 203)
		local var_124_36 = (1 - var_124_33) * 0.65
		local var_124_37 = var_124_18 * (1 + var_124_33 * 0.35)

		love.graphics.setColor(0.7, 0.92, 1, var_124_36)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_124_6 or 1) * 0.8)))
		love.graphics.circle("line", var_124_13, var_124_14, var_124_37, 36)

		if var_124_33 < 0.35 then
			local var_124_38 = (1 - var_124_33 / 0.35) * 0.8

			love.graphics.setColor(1, 1, 1, var_124_38)
			love.graphics.circle("fill", var_124_13, var_124_14, var_124_18 * (0.2 + var_124_33 * 0.6), 24)
		end

		local var_124_39, var_124_40, var_124_41 = var_124_23(var_124_13, var_124_14, var_124_18, var_124_34)
		local var_124_42 = var_124_33 * var_124_18 * 0.5
		local var_124_43 = math.cos(var_124_40 + math.pi) * var_124_42
		local var_124_44 = math.sin(var_124_40 + math.pi) * var_124_42
		local var_124_45 = math.cos(var_124_40) * var_124_42
		local var_124_46 = math.sin(var_124_40) * var_124_42
		local var_124_47 = var_124_13 + var_124_43
		local var_124_48 = var_124_14 + var_124_44
		local var_124_49 = 1 - var_124_33

		love.graphics.setColor(0.25, 0.65, 0.95, 0.14 * var_124_49)
		love.graphics.arc("fill", var_124_47, var_124_48, var_124_18, var_124_40 + math.pi * 0.5, var_124_40 + math.pi * 1.5, 18)
		love.graphics.setColor(0.4, 0.8, 1, 0.06 * var_124_49)
		love.graphics.arc("fill", var_124_47, var_124_48, var_124_18 * 0.92, var_124_40 + math.pi * 0.5, var_124_40 + math.pi * 1.5, 18)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_124_6 or 1) * 0.6 + 0.5)))
		love.graphics.setColor(0.6, 0.88, 1, 0.65 * var_124_49)
		love.graphics.arc("line", "open", var_124_47, var_124_48, var_124_18, var_124_40 + math.pi * 0.5, var_124_40 + math.pi * 1.5, 18)
		love.graphics.setLineWidth(1)
		love.graphics.setColor(0.85, 0.95, 1, 0.4 * var_124_49)
		love.graphics.arc("line", "open", var_124_47, var_124_48, var_124_18 + 1, var_124_40 + math.pi * 0.5, var_124_40 + math.pi * 1.5, 18)
		love.graphics.setColor(1, 1, 1, 0.35 * var_124_49)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_124_6 or 1) * 0.4 + 0.5)))
		love.graphics.arc("line", "open", var_124_47, var_124_48, var_124_18 * 0.86, var_124_40 + math.pi * 1.05, var_124_40 + math.pi * 1.45, 16)
		love.graphics.setColor(1, 1, 1, 0.65 * var_124_49)

		local var_124_50 = var_124_47 + math.cos(var_124_40 + math.pi * 1.25) * var_124_18 * 0.54
		local var_124_51 = var_124_48 + math.sin(var_124_40 + math.pi * 1.25) * var_124_18 * 0.54

		love.graphics.circle("fill", var_124_50, var_124_51, var_124_18 * 0.12, 16)

		local var_124_52 = var_124_23(var_124_47, var_124_48, var_124_18, var_124_34)

		var_124_24(var_124_52, var_124_40, var_124_18, var_124_34, var_124_49, arg_124_6)

		local var_124_53 = var_124_13 + var_124_45
		local var_124_54 = var_124_14 + var_124_46
		local var_124_55 = 1 - var_124_33

		love.graphics.setColor(0.25, 0.65, 0.95, 0.14 * var_124_55)
		love.graphics.arc("fill", var_124_53, var_124_54, var_124_18, var_124_40 - math.pi * 0.5, var_124_40 + math.pi * 0.5, 18)
		love.graphics.setColor(0.4, 0.8, 1, 0.06 * var_124_55)
		love.graphics.arc("fill", var_124_53, var_124_54, var_124_18 * 0.92, var_124_40 - math.pi * 0.5, var_124_40 + math.pi * 0.5, 18)
		love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_124_6 or 1) * 0.6 + 0.5)))
		love.graphics.setColor(0.6, 0.88, 1, 0.65 * var_124_55)
		love.graphics.arc("line", "open", var_124_53, var_124_54, var_124_18, var_124_40 - math.pi * 0.5, var_124_40 + math.pi * 0.5, 18)
		love.graphics.setLineWidth(1)
		love.graphics.setColor(0.85, 0.95, 1, 0.4 * var_124_55)
		love.graphics.arc("line", "open", var_124_53, var_124_54, var_124_18 + 1, var_124_40 - math.pi * 0.5, var_124_40 + math.pi * 0.5, 18)
		love.graphics.setColor(0.3, 0.7, 1, 0.25 * var_124_55)
		love.graphics.arc("line", "open", var_124_53, var_124_54, var_124_18 * 0.9, var_124_40 + math.pi * 0.05, var_124_40 + math.pi * 0.45, 16)

		local var_124_56 = var_124_23(var_124_53, var_124_54, var_124_18, var_124_34)

		var_124_24(var_124_56, var_124_40, var_124_18, var_124_34, var_124_55, arg_124_6)

		local var_124_57 = {
			2,
			3,
			4
		}
		local var_124_58 = var_124_22(var_124_34 * 3 + 17)

		for iter_124_0, iter_124_1 in ipairs(var_124_57) do
			local var_124_59 = var_124_39[iter_124_1]
			local var_124_60 = (iter_124_0 % 2 == 0 and var_124_40 or var_124_40 + math.pi) + (var_124_58() - 0.5) * 0.3
			local var_124_61 = var_124_59.x
			local var_124_62 = var_124_59.y
			local var_124_63 = var_124_18 * (0.3 + var_124_58() * 0.35)
			local var_124_64 = var_124_61 + math.cos(var_124_60) * var_124_63 * var_124_33
			local var_124_65 = var_124_62 + math.sin(var_124_60) * var_124_63 * var_124_33
			local var_124_66 = (var_124_58() - 0.5) * 4 * var_124_33
			local var_124_67 = var_124_18 * (0.24 + var_124_58() * 0.16)
			local var_124_68 = 0
			local var_124_69 = -var_124_67 * 0.6
			local var_124_70 = -var_124_67 * 0.45
			local var_124_71 = var_124_67 * 0.45
			local var_124_72 = var_124_67 * 0.45
			local var_124_73 = var_124_67 * 0.3

			local function var_124_74(arg_129_0, arg_129_1)
				local var_129_0 = arg_129_0 * math.cos(var_124_66) - arg_129_1 * math.sin(var_124_66)
				local var_129_1 = arg_129_0 * math.sin(var_124_66) + arg_129_1 * math.cos(var_124_66)

				return var_124_64 + var_129_0, var_124_65 + var_129_1
			end

			local var_124_75, var_124_76 = var_124_74(var_124_68, var_124_69)
			local var_124_77, var_124_78 = var_124_74(var_124_70, var_124_71)
			local var_124_79, var_124_80 = var_124_74(var_124_72, var_124_73)
			local var_124_81 = (1 - var_124_33) * 0.55

			love.graphics.setColor(0.75, 0.92, 1, var_124_81)
			love.graphics.polygon("fill", var_124_75, var_124_76, var_124_77, var_124_78, var_124_79, var_124_80)

			local var_124_82 = (1 - var_124_33) * 0.9

			love.graphics.setLineWidth(math.max(1, math.floor(math.abs(arg_124_6 or 1) * 1.5)))
			love.graphics.setColor(0.3, 0.8, 1, 0.4 * var_124_82)
			love.graphics.polygon("line", var_124_75, var_124_76, var_124_77, var_124_78, var_124_79, var_124_80)
			love.graphics.setLineWidth(1)
			love.graphics.setColor(1, 1, 1, var_124_82)
			love.graphics.polygon("line", var_124_75, var_124_76, var_124_77, var_124_78, var_124_79, var_124_80)
		end

		local var_124_83 = 6

		love.graphics.setLineWidth(1.5)

		for iter_124_2 = 1, var_124_83 do
			local var_124_84 = iter_124_2 / var_124_83 * math.pi * 2 + (var_124_35() - 0.5) * 0.3
			local var_124_85 = var_124_18 * (0.2 + var_124_33 * 0.4)
			local var_124_86 = var_124_18 * (0.5 + var_124_33 * 0.8)

			love.graphics.setColor(0.85, 0.95, 1, (1 - var_124_33) * 0.75)
			love.graphics.line(var_124_13 + math.cos(var_124_84) * var_124_85, var_124_14 + math.sin(var_124_84) * var_124_85, var_124_13 + math.cos(var_124_84) * var_124_86, var_124_14 + math.sin(var_124_84) * var_124_86)
		end
	end

	love.graphics.setLineWidth(var_124_21 or 1)

	if var_124_20 ~= nil then
		love.graphics.setBlendMode(var_124_19, var_124_20)
	else
		love.graphics.setBlendMode(var_124_19)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.setLineStyle("rough")
end

local var_0_139 = {}

local function var_0_140(arg_130_0, arg_130_1, arg_130_2, arg_130_3, arg_130_4)
	if not arg_130_0 or not arg_130_0.imageData or not arg_130_1 then
		return nil, nil
	end

	local var_130_0, var_130_1, var_130_2 = var_0_136(arg_130_0, arg_130_1)

	if not var_130_1 or not var_130_2 then
		return nil, nil
	end

	local var_130_3 = var_0_139[arg_130_0]

	if not var_130_3 then
		var_130_3 = {}
		var_0_139[arg_130_0] = var_130_3
	end

	local var_130_4 = tostring(var_130_1) .. ":" .. tostring(var_130_2) .. ":" .. arg_130_2 .. ":" .. arg_130_3 .. ":" .. arg_130_4
	local var_130_5 = var_130_3[var_130_4]

	if var_130_5 ~= nil then
		if var_130_5 == false then
			return nil, nil
		end

		return var_130_5.x, var_130_5.y
	end

	local var_130_6, var_130_7, var_130_8, var_130_9 = arg_130_1:getViewport()
	local var_130_10
	local var_130_11

	for iter_130_0 = 0, math.max(0, math.floor(var_130_9) - 1) do
		for iter_130_1 = 0, math.max(0, math.floor(var_130_8) - 1) do
			local var_130_12, var_130_13, var_130_14, var_130_15 = arg_130_0.imageData:getPixel(var_130_6 + iter_130_1, var_130_7 + iter_130_0)

			if var_130_15 and var_130_15 > 0 then
				local var_130_16 = math.floor((var_130_12 or 0) * 255 + 0.5)
				local var_130_17 = math.floor((var_130_13 or 0) * 255 + 0.5)
				local var_130_18 = math.floor((var_130_14 or 0) * 255 + 0.5)

				if var_130_16 == arg_130_2 and var_130_17 == arg_130_3 and var_130_18 == arg_130_4 and (not var_130_10 or var_130_10 < iter_130_1) then
					var_130_10, var_130_11 = iter_130_1, iter_130_0
				end
			end
		end
	end

	if not var_130_10 then
		var_130_3[var_130_4] = false

		return nil, nil
	end

	var_130_3[var_130_4] = {
		x = var_130_10 + 0.5,
		y = var_130_11 + 0.5
	}

	return var_130_3[var_130_4].x, var_130_3[var_130_4].y
end

local function var_0_141(arg_131_0, arg_131_1, arg_131_2, arg_131_3, arg_131_4, arg_131_5, arg_131_6, arg_131_7, arg_131_8)
	if not arg_131_0 or not arg_131_0._pendingPrecisionShot or not arg_131_0.anim or arg_131_0.anim.name ~= "attack" then
		return
	end

	local var_131_0 = arg_131_0.anim.frame or 1

	if var_131_0 < 5 or var_131_0 > 8 then
		return
	end

	local var_131_1 = arg_131_0._pendingPrecisionShot
	local var_131_2 = tonumber(var_131_1 and var_131_1.countdown)

	if not var_131_2 then
		return
	end

	local var_131_3 = var_0_9((0.54 - var_0_8(var_131_2, 0, 0.54)) / 0.54)

	if var_131_0 == 5 then
		var_131_3 = var_131_3 * 0.45
	elseif var_131_0 == 6 then
		var_131_3 = 0.25 + var_131_3 * 0.55
	elseif var_131_0 == 7 then
		var_131_3 = 0.55 + var_131_3 * 0.35
	else
		var_131_3 = 1
	end

	local var_131_4 = var_0_8(var_131_3, 0, 1)
	local var_131_5 = math.abs(arg_131_5 or 1)
	local var_131_6 = math.abs(arg_131_6 or 1)
	local var_131_7 = math.max(0.8, (var_131_5 + var_131_6) * 0.5)
	local var_131_8 = var_0_134(arg_131_0, arg_131_1)
	local var_131_9, var_131_10 = var_0_140(var_131_8, arg_131_2, 37, 35, 34)

	if not var_131_9 or not var_131_10 then
		return
	end

	local var_131_11 = arg_131_3 + (var_131_9 - (arg_131_7 or 0)) * (arg_131_5 or 1)
	local var_131_12, var_131_13 = arg_131_4 + (var_131_10 - (arg_131_8 or 0)) * (arg_131_6 or 1), var_131_11
	local var_131_14 = var_131_7 * (0.4 + var_131_4 * 0.72)
	local var_131_15 = var_131_7 * (1.8 + var_131_4 * 3.8)
	local var_131_16 = var_131_15 * 0.42
	local var_131_17 = var_131_15 * (0.52 + var_131_4 * 0.1)
	local var_131_18 = 0.1 + var_131_4 * 0.16
	local var_131_19 = 0.34 + var_131_4 * 0.38
	local var_131_20 = 0.22 + var_131_4 * 0.28
	local var_131_21 = 0.78 + var_131_4 * 0.18
	local var_131_22 = math.sqrt(3) * 0.5
	local var_131_23 = 0.5

	love.graphics.setBlendMode("add")
	love.graphics.setColor(1, 0.88, 0.6, var_131_18)
	love.graphics.circle("fill", var_131_13, var_131_12, var_131_17)
	love.graphics.setLineStyle("smooth")
	love.graphics.setLineWidth(math.max(1, var_131_7 * 0.85))
	love.graphics.setColor(1, 0.97, 0.82, var_131_19 * 0.42)

	local var_131_24 = var_131_15

	love.graphics.line(var_131_13 - var_131_24, var_131_12, var_131_13 + var_131_24, var_131_12)
	love.graphics.line(var_131_13 - var_131_24 * var_131_23, var_131_12 - var_131_24 * var_131_22, var_131_13 + var_131_24 * var_131_23, var_131_12 + var_131_24 * var_131_22)
	love.graphics.line(var_131_13 + var_131_24 * var_131_23, var_131_12 - var_131_24 * var_131_22, var_131_13 - var_131_24 * var_131_23, var_131_12 + var_131_24 * var_131_22)
	love.graphics.setLineWidth(math.max(1, var_131_7 * 0.28))
	love.graphics.setColor(1, 0.99, 0.92, var_131_19)

	local var_131_25 = var_131_16

	love.graphics.line(var_131_13 - var_131_25, var_131_12, var_131_13 + var_131_25, var_131_12)
	love.graphics.line(var_131_13 - var_131_25 * var_131_23, var_131_12 - var_131_25 * var_131_22, var_131_13 + var_131_25 * var_131_23, var_131_12 + var_131_25 * var_131_22)
	love.graphics.line(var_131_13 + var_131_25 * var_131_23, var_131_12 - var_131_25 * var_131_22, var_131_13 - var_131_25 * var_131_23, var_131_12 + var_131_25 * var_131_22)
	love.graphics.setColor(1, 0.99, 0.92, var_131_21)
	love.graphics.circle("fill", var_131_13, var_131_12, math.max(1, var_131_14))
	love.graphics.setColor(1, 1, 0.98, 0.7 + var_131_4 * 0.16)
	love.graphics.circle("fill", var_131_13, var_131_12, math.max(1, var_131_14 * 0.45))
	love.graphics.setLineStyle("rough")
	love.graphics.setLineWidth(1)
	love.graphics.setBlendMode("alpha")
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_142(arg_132_0, arg_132_1, arg_132_2, arg_132_3, arg_132_4, arg_132_5, arg_132_6, arg_132_7, arg_132_8)
	if not arg_132_0 or not arg_132_0._pendingHeadshot or not arg_132_0.anim or arg_132_0.anim.name ~= "attack" then
		return
	end

	local var_132_0 = arg_132_0.anim.frame or 1

	if var_132_0 < 1 or var_132_0 > 3 then
		return
	end

	local var_132_1 = arg_132_0._pendingHeadshot
	local var_132_2 = tonumber(var_132_1 and var_132_1.countdown)

	if not var_132_2 then
		return
	end

	local var_132_3 = var_0_9((0.4 - var_0_8(var_132_2, 0, 0.4)) / 0.4)

	if var_132_0 == 1 then
		var_132_3 = var_132_3 * 0.5
	elseif var_132_0 == 2 then
		var_132_3 = 0.3 + var_132_3 * 0.55
	else
		var_132_3 = 1
	end

	local var_132_4 = var_0_8(var_132_3, 0, 1)
	local var_132_5 = math.abs(arg_132_5 or 1)
	local var_132_6 = math.abs(arg_132_6 or 1)
	local var_132_7 = math.max(0.8, (var_132_5 + var_132_6) * 0.5)
	local var_132_8 = var_0_134(arg_132_0, arg_132_1)
	local var_132_9, var_132_10 = var_0_140(var_132_8, arg_132_2, 37, 35, 34)

	if not var_132_9 or not var_132_10 then
		return
	end

	local var_132_11 = arg_132_3 + (var_132_9 - (arg_132_7 or 0)) * (arg_132_5 or 1)
	local var_132_12, var_132_13 = arg_132_4 + (var_132_10 - (arg_132_8 or 0)) * (arg_132_6 or 1), var_132_11
	local var_132_14 = var_132_7 * (0.55 + var_132_4 * 1.1)
	local var_132_15 = var_132_7 * (2.8 + var_132_4 * 6)
	local var_132_16 = var_132_15 * 0.62
	local var_132_17 = var_132_15 * 0.36
	local var_132_18 = var_132_15 * (0.58 + var_132_4 * 0.16)
	local var_132_19 = var_132_14 * (2.2 + var_132_4 * 1.4)
	local var_132_20 = var_132_15 * (0.3 + var_132_4 * 0.38)
	local var_132_21 = 0.14 + var_132_4 * 0.22
	local var_132_22 = 0.28 + var_132_4 * 0.44
	local var_132_23 = 0.46 + var_132_4 * 0.38
	local var_132_24 = 0.62 + var_132_4 * 0.3
	local var_132_25 = 0.8 + var_132_4 * 0.18
	local var_132_26 = 0.18 + var_132_4 * 0.3
	local var_132_27 = math.sqrt(3) * 0.5
	local var_132_28 = 0.5

	love.graphics.setBlendMode("add")
	love.graphics.setColor(0.2, 0.55, 1, var_132_21 * 0.7)
	love.graphics.circle("fill", var_132_13, var_132_12, var_132_18)
	love.graphics.setColor(0.55, 0.9, 1, var_132_21)
	love.graphics.circle("fill", var_132_13, var_132_12, var_132_19)
	love.graphics.setLineStyle("smooth")
	love.graphics.setLineWidth(math.max(1, var_132_7 * 0.55))
	love.graphics.setColor(0.7, 0.96, 1, var_132_26)
	love.graphics.circle("line", var_132_13, var_132_12, var_132_20)
	love.graphics.setLineWidth(math.max(1, var_132_7 * 1.1))
	love.graphics.setColor(0.5, 0.82, 1, var_132_22 * 0.4)

	local var_132_29 = var_132_15

	love.graphics.line(var_132_13 - var_132_29, var_132_12, var_132_13 + var_132_29, var_132_12)
	love.graphics.line(var_132_13 - var_132_29 * var_132_28, var_132_12 - var_132_29 * var_132_27, var_132_13 + var_132_29 * var_132_28, var_132_12 + var_132_29 * var_132_27)
	love.graphics.line(var_132_13 + var_132_29 * var_132_28, var_132_12 - var_132_29 * var_132_27, var_132_13 - var_132_29 * var_132_28, var_132_12 + var_132_29 * var_132_27)
	love.graphics.setLineWidth(math.max(1, var_132_7 * 0.55))
	love.graphics.setColor(0.75, 0.94, 1, var_132_23 * 0.55)

	local var_132_30 = var_132_16

	love.graphics.line(var_132_13 - var_132_30, var_132_12, var_132_13 + var_132_30, var_132_12)
	love.graphics.line(var_132_13 - var_132_30 * var_132_28, var_132_12 - var_132_30 * var_132_27, var_132_13 + var_132_30 * var_132_28, var_132_12 + var_132_30 * var_132_27)
	love.graphics.line(var_132_13 + var_132_30 * var_132_28, var_132_12 - var_132_30 * var_132_27, var_132_13 - var_132_30 * var_132_28, var_132_12 + var_132_30 * var_132_27)
	love.graphics.setLineWidth(math.max(1, var_132_7 * 0.3))
	love.graphics.setColor(0.88, 0.98, 1, var_132_24)

	local var_132_31 = var_132_17

	love.graphics.line(var_132_13 - var_132_31, var_132_12, var_132_13 + var_132_31, var_132_12)
	love.graphics.line(var_132_13 - var_132_31 * var_132_28, var_132_12 - var_132_31 * var_132_27, var_132_13 + var_132_31 * var_132_28, var_132_12 + var_132_31 * var_132_27)
	love.graphics.line(var_132_13 + var_132_31 * var_132_28, var_132_12 - var_132_31 * var_132_27, var_132_13 - var_132_31 * var_132_28, var_132_12 + var_132_31 * var_132_27)
	love.graphics.setColor(0.88, 1, 1, var_132_25)
	love.graphics.circle("fill", var_132_13, var_132_12, math.max(1, var_132_14))
	love.graphics.setColor(1, 1, 1, 0.88 + var_132_4 * 0.1)
	love.graphics.circle("fill", var_132_13, var_132_12, math.max(1, var_132_14 * 0.42))
	love.graphics.setColor(0.8, 0.95, 1, 1)
	love.graphics.circle("fill", var_132_13, var_132_12, math.max(1, var_132_14 * 0.18))
	love.graphics.setLineStyle("rough")
	love.graphics.setLineWidth(1)
	love.graphics.setBlendMode("alpha")
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_143(arg_133_0, arg_133_1, arg_133_2, arg_133_3, arg_133_4, arg_133_5, arg_133_6, arg_133_7, arg_133_8, arg_133_9)
	local var_133_0 = arg_133_0 and arg_133_0._pendingBloodSurge

	if not var_133_0 and arg_133_0 and arg_133_0.skill and arg_133_0.skill.kind == "FrenziedAssault" and (arg_133_0._aspdBuffT or 0) > 0 then
		local var_133_1 = math.max(0.01, tonumber(arg_133_0._aspdBuffDur) or tonumber(arg_133_0.skill.dur) or 2)

		var_133_0 = {
			totalT = var_133_1 - math.max(0, tonumber(arg_133_0._aspdBuffT) or 0),
			dur = var_133_1
		}
	end

	if not var_133_0 or not arg_133_1 or not arg_133_2 then
		return
	end

	local var_133_2 = math.max(0.01, tonumber(var_133_0.dur) or 2)
	local var_133_3 = var_0_8(tonumber(var_133_0.totalT) or 0, 0, var_133_2)
	local var_133_4 = 3
	local var_133_5 = var_133_2 / var_133_4
	local var_133_6 = math.floor(var_133_3 / var_133_5)

	if var_133_4 <= var_133_6 then
		var_133_6 = var_133_4 - 1
	end

	local var_133_7 = var_133_3 - var_133_6 * var_133_5
	local var_133_8 = math.min(var_133_5 * 0.88, 0.54)

	if var_133_7 < 0 or var_133_8 < var_133_7 then
		return
	end

	local var_133_9 = var_0_8(var_133_7 / var_133_8, 0, 1)
	local var_133_10 = var_0_9(var_133_9)
	local var_133_11 = 1 - var_0_9(var_133_9)
	local var_133_12 = math.abs(arg_133_6 or 1)
	local var_133_13 = math.abs(arg_133_7 or 1)
	local var_133_14 = math.max(1, (var_133_12 + var_133_13) * 0.5)
	local var_133_15 = var_133_14 * (2.2 + 5.4 * var_133_10)
	local var_133_16 = 1 + 0.05 * var_133_10
	local var_133_17, var_133_18, var_133_19, var_133_20 = arg_133_2:getViewport()
	local var_133_21 = arg_133_3 + (var_133_19 * 0.5 - (arg_133_8 or 0)) * (arg_133_6 or 1)
	local var_133_22 = arg_133_4 + (var_133_20 - (arg_133_9 or 0)) * (arg_133_7 or 1)
	local var_133_23 = var_0_94()

	if not var_133_23 then
		return
	end

	local var_133_24, var_133_25 = love.graphics.getBlendMode()

	love.graphics.setShader(var_133_23)

	if var_133_23:hasUniform("u_grayscale") then
		var_133_23:send("u_grayscale", var_0_133(arg_133_0))
	end

	var_0_0.applyTimeStopWaveUniforms(var_133_23)
	love.graphics.setColor(1, 1, 1, 1)

	local var_133_26 = math.sin(love.timer.getTime() * 7 + var_133_6 * 0.9) * var_133_14 * 0.35
	local var_133_27 = var_133_21 + var_133_26
	local var_133_28 = var_133_22 - var_133_15
	local var_133_29 = var_133_21 + var_133_26 * 0.45
	local var_133_30 = var_133_22 - var_133_15 * 0.58

	var_133_23:send("u_color", {
		0.3,
		0.01,
		0.02,
		(0.18 + 0.05 * (var_133_4 - var_133_6 - 1)) * var_133_11
	})
	love.graphics.setBlendMode("alpha")
	love.graphics.draw(arg_133_1, arg_133_2, var_133_29, var_133_30, arg_133_5 or 0, (arg_133_6 or 1) * var_133_16 * 0.98, (arg_133_7 or 1) * var_133_16 * 0.98, var_133_19 * 0.5, var_133_20)
	var_133_23:send("u_color", {
		0.88,
		0.05,
		0.06,
		(0.22 + 0.05 * var_133_11) * var_133_11
	})

	if var_133_25 ~= nil then
		love.graphics.setBlendMode("add", "alphamultiply")
	else
		love.graphics.setBlendMode("add")
	end

	love.graphics.draw(arg_133_1, arg_133_2, var_133_27, var_133_28, arg_133_5 or 0, (arg_133_6 or 1) * var_133_16, (arg_133_7 or 1) * var_133_16, var_133_19 * 0.5, var_133_20)
	love.graphics.setShader()

	if var_133_25 ~= nil then
		love.graphics.setBlendMode(var_133_24, var_133_25)
	else
		love.graphics.setBlendMode(var_133_24)
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function var_0_0.drawUnitOverdrivePre(arg_134_0, arg_134_1, arg_134_2, arg_134_3, arg_134_4, arg_134_5, arg_134_6, arg_134_7, arg_134_8, arg_134_9)
	if not arg_134_0 or arg_134_0.dying and not arg_134_0.reviving then
		return
	end

	local var_134_0, var_134_1, var_134_2, var_134_3 = arg_134_2:getViewport()
	local var_134_4 = arg_134_0.enlargeScale or 1

	if not arg_134_0._render2Pushed and var_134_4 > 1.001 then
		love.graphics.push()

		local var_134_5 = arg_134_3 + (var_134_2 * 0.5 - (arg_134_8 or 0)) * arg_134_6
		local var_134_6 = arg_134_4 + (var_134_3 - (arg_134_9 or 0)) * arg_134_7

		love.graphics.translate(var_134_5, var_134_6)
		love.graphics.scale(var_134_4, var_134_4)
		love.graphics.translate(-var_134_5, -var_134_6)

		arg_134_0._render2Pushed = true
	end

	local var_134_7 = _G.frameCount or 0

	if arg_134_0._lastOverdrivePreFrame == var_134_7 then
		return
	end

	arg_134_0._lastOverdrivePreFrame = var_134_7

	if arg_134_0._victorySignalFX or arg_134_0._victorySignalT then
		require("src.ui.effects").victory_signal.drawBehind(arg_134_0, var_0_134(arg_134_0, arg_134_1), arg_134_2, arg_134_3, arg_134_4, arg_134_5, arg_134_6, arg_134_7, arg_134_8, arg_134_9)
	end

	local var_134_8 = var_134_2 / 2
	local var_134_9 = var_134_3 / 2
	local var_134_10 = var_0_134(arg_134_0, arg_134_1)

	if var_134_10 and var_134_10.bounds and var_134_10.bounds.idle and var_134_10.bounds.idle[1] then
		local var_134_11 = var_134_10.bounds.idle[1]

		var_134_8 = var_134_11.x + var_134_11.w * 0.5
		var_134_9 = var_134_11.y + var_134_11.h * 0.5
	else
		local var_134_12, var_134_13 = var_0_135(var_134_10, arg_134_2)

		if var_134_12 then
			var_134_8, var_134_9 = var_134_12, var_134_13
		end
	end

	local var_134_14 = var_0_58(arg_134_0, "majesty")

	if var_0_58(arg_134_0, "overlord") and not arg_134_0.isShadowMinion and arg_134_1 and arg_134_2 then
		require("src.ui.effects").overlord_aura.draw(arg_134_1, arg_134_2, arg_134_3, arg_134_4, arg_134_6, arg_134_7, arg_134_8, arg_134_9, var_134_10, var_0_55, nil, var_0_133(arg_134_0))
	end

	if var_134_14 then
		if var_0_56 == nil then
			local var_134_15, var_134_16 = pcall(love.graphics.newImage, "src/sprites/projectile/fireback.png")

			if var_134_15 and var_134_16 then
				var_134_16:setFilter("nearest", "nearest")

				local var_134_17, var_134_18 = var_134_16:getDimensions()

				for iter_134_0 = 0, 7 do
					var_0_57[iter_134_0 + 1] = love.graphics.newQuad(iter_134_0 * 24, 0, 24, 40, var_134_17, var_134_18)
				end

				var_0_56 = var_134_16
			else
				var_0_56 = false
			end
		end

		if var_0_56 and var_134_14 then
			local var_134_19 = math.floor(var_0_55 * 10) % 8 + 1
			local var_134_20 = var_0_57[var_134_19]

			love.graphics.push()
			love.graphics.translate(arg_134_3, arg_134_4)
			love.graphics.rotate(arg_134_5 or 0)
			love.graphics.scale(arg_134_6 or 1, arg_134_7 or 1)
			love.graphics.translate(-(arg_134_8 or 0), -(arg_134_9 or 0))

			local var_134_21 = var_0_102()

			love.graphics.setShader(var_134_21)

			if var_134_21:hasUniform("u_grayscale") then
				var_134_21:send("u_grayscale", var_0_133(arg_134_0))
			end

			var_0_0.applyTimeStopWaveUniforms(var_134_21)
			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.8, 0.9, 1, 0.45)
			love.graphics.draw(var_0_56, var_134_20, require("src.ui.widgets").sprite_anchor.idleFootX(var_134_10) or var_134_8, var_134_9 - 10, 0, 1, 1, 12, 20)
			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.pop()
		end
	end

	if (arg_134_0.skin == "DeceiverForm2" or arg_134_0.deceiverForm == 2 or arg_134_0.form == 2 or arg_134_0._deceiverChanged == true) and arg_134_1 and arg_134_2 then
		local var_134_22 = love.timer.getTime()
		local var_134_23, var_134_24 = love.graphics.getBlendMode()
		local var_134_25, var_134_26, var_134_27, var_134_28 = love.graphics.getColor()

		arg_134_0._trailHistory = arg_134_0._trailHistory or {}

		local var_134_29 = arg_134_0._trailHistory
		local var_134_30 = _G.frameCount or 0

		if not var_134_29.lastFrame or var_134_29.lastFrame ~= var_134_30 then
			local var_134_31 = var_134_29[12] or {}

			for iter_134_1 = math.min(#var_134_29 + 1, 12), 2, -1 do
				var_134_29[iter_134_1] = var_134_29[iter_134_1 - 1]
			end

			var_134_31.x, var_134_31.y = arg_134_3, arg_134_4
			var_134_31.sx, var_134_31.sy, var_134_31.quad = arg_134_6, arg_134_7, arg_134_2
			var_134_29[1] = var_134_31
			var_134_29.lastFrame = var_134_30
		end

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_134_32 = var_0_94()

		if var_134_32 then
			love.graphics.setShader(var_134_32)

			if var_134_32:hasUniform("u_grayscale") then
				var_134_32:send("u_grayscale", 0)
			end

			if var_134_32:hasUniform("u_ts_active") then
				var_134_32:send("u_ts_active", false)
			end

			local var_134_33 = var_134_29[8]

			if var_134_33 and var_134_33.quad then
				var_134_32:send("u_color", {
					0.85,
					0.05,
					0.15,
					0.12
				})
				love.graphics.draw(arg_134_1, var_134_33.quad, var_134_33.x, var_134_33.y, arg_134_5 or 0, var_134_33.sx, var_134_33.sy, arg_134_8, arg_134_9)
			end

			local var_134_34 = var_134_29[4]

			if var_134_34 and var_134_34.quad then
				var_134_32:send("u_color", {
					0.85,
					0.05,
					0.15,
					0.24
				})
				love.graphics.draw(arg_134_1, var_134_34.quad, var_134_34.x, var_134_34.y, arg_134_5 or 0, var_134_34.sx, var_134_34.sy, arg_134_8, arg_134_9)
			end

			love.graphics.setShader()
		end

		love.graphics.setBlendMode(var_134_23, var_134_24)
		love.graphics.setColor(var_134_25, var_134_26, var_134_27, var_134_28)
	end

	local var_134_35 = arg_134_3 + (var_134_8 - (arg_134_8 or 0)) * arg_134_6
	local var_134_36 = arg_134_4 + (var_134_9 - (arg_134_9 or 0)) * arg_134_7

	if arg_134_0._bloodSurgeActive or arg_134_0.skill and arg_134_0.skill.kind == "FrenziedAssault" and (arg_134_0._aspdBuffT or 0) > 0 then
		var_0_143(arg_134_0, arg_134_1, arg_134_2, arg_134_3, arg_134_4, arg_134_5, arg_134_6, arg_134_7, arg_134_8, arg_134_9)
	end

	if arg_134_0.guardianChallengeBurst then
		local var_134_37 = arg_134_0.guardianChallengeBurst
		local var_134_38 = var_0_8((var_134_37.t or 0) / math.max(0.01, var_134_37.dur or 0.4), 0, 1)
		local var_134_39 = 1 - var_134_38
		local var_134_40 = var_0_94()

		if var_134_40 then
			local var_134_41, var_134_42 = love.graphics.getBlendMode()

			love.graphics.setShader(var_134_40)

			if var_134_40:hasUniform("u_grayscale") then
				var_134_40:send("u_grayscale", var_0_133(arg_134_0))
			end

			var_0_0.applyTimeStopWaveUniforms(var_134_40)

			if var_134_42 ~= nil then
				love.graphics.setBlendMode("add", "alphamultiply")
			else
				love.graphics.setBlendMode("add")
			end

			for iter_134_2 = 1, 3 do
				local var_134_43 = 1 + var_0_8(var_134_38 + (iter_134_2 - 1) * 0.08, 0, 1) * (0.18 + iter_134_2 * 0.07)
				local var_134_44 = var_134_39 * (0.62 - iter_134_2 * 0.1)

				var_134_40:send("u_color", {
					0.72,
					1,
					0.68,
					var_134_44
				})
				love.graphics.draw(arg_134_1, arg_134_2, var_134_35, var_134_36, arg_134_5 or 0, arg_134_6 * var_134_43, arg_134_7 * var_134_43, var_134_8, var_134_9)
			end

			love.graphics.setShader()

			if var_134_42 ~= nil then
				love.graphics.setBlendMode(var_134_41, var_134_42)
			else
				love.graphics.setBlendMode(var_134_41)
			end

			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	if (arg_134_0._spaceGuardianShieldActive or arg_134_0._spaceGuardianShieldSpawnBurst) and arg_134_1 and arg_134_2 then
		local var_134_45 = love.timer.getTime()
		local var_134_46 = var_0_94()

		if var_134_46 then
			local var_134_47, var_134_48 = love.graphics.getBlendMode()

			love.graphics.setShader(var_134_46)

			if var_134_46:hasUniform("u_grayscale") then
				var_134_46:send("u_grayscale", var_0_133(arg_134_0))
			end

			var_0_0.applyTimeStopWaveUniforms(var_134_46)

			if var_134_48 ~= nil then
				love.graphics.setBlendMode("add", "alphamultiply")
			else
				love.graphics.setBlendMode("add")
			end

			local var_134_49 = math.max(0, tonumber(arg_134_0._spaceGuardianShieldT) or 0)
			local var_134_50 = math.max(0, math.min(1, var_134_49 / 0.22))
			local var_134_51 = math.max(0, math.min(1, (tonumber(arg_134_0._spaceGuardianShieldHitT) or 0) / 0.18))
			local var_134_52 = arg_134_0._spaceGuardianShieldSpawnBurst
			local var_134_53 = var_134_52 and math.min(1, (tonumber(var_134_52.t) or 0) / math.max(0.01, tonumber(var_134_52.dur) or 0.35)) or 1

			if var_134_52 and var_134_53 < 1 then
				local var_134_54 = (1 - var_134_53) * (arg_134_0._spaceGuardianShieldActive and var_134_50 or 1)

				for iter_134_3 = 1, 3 do
					local var_134_55 = 1 + var_0_8(var_134_53 + (iter_134_3 - 1) * 0.08, 0, 1) * (0.28 + iter_134_3 * 0.12)
					local var_134_56 = var_134_54 * (0.9 - iter_134_3 * 0.18)
					local var_134_57 = iter_134_3 == 1 and 1 or 0.25
					local var_134_58 = iter_134_3 == 1 and 0.92 or 0.85
					local var_134_59 = iter_134_3 == 1 and 0.45 or 1

					var_134_46:send("u_color", {
						var_134_57,
						var_134_58,
						var_134_59,
						var_134_56
					})
					love.graphics.draw(arg_134_1, arg_134_2, var_134_35, var_134_36, arg_134_5 or 0, arg_134_6 * var_134_55, arg_134_7 * var_134_55, var_134_8, var_134_9)
				end
			end

			if arg_134_0._spaceGuardianShieldActive and var_134_50 > 0.001 then
				if var_134_51 > 0 then
					local var_134_60 = 1 + var_134_51 * 0.14

					var_134_46:send("u_color", {
						1,
						1,
						1,
						var_134_51 * 0.95 * var_134_50
					})
					love.graphics.draw(arg_134_1, arg_134_2, var_134_35, var_134_36, arg_134_5 or 0, arg_134_6 * var_134_60, arg_134_7 * var_134_60, var_134_8, var_134_9)
				end

				for iter_134_4 = 1, 3 do
					local var_134_61 = (0.3 + 0.25 * (math.sin(var_134_45 * (16 + iter_134_4 * 5) + iter_134_4 * 2.1) * 0.5 + 0.5) + var_134_51 * 0.35) * var_134_50 * (1.1 - iter_134_4 * 0.18)
					local var_134_62 = math.sin(var_134_45 * 30 + iter_134_4 * 2.3) * (0.9 + iter_134_4 * 0.4)
					local var_134_63 = math.cos(var_134_45 * 34 + iter_134_4 * 1.9) * (0.9 + iter_134_4 * 0.4)
					local var_134_64 = 1.04 + iter_134_4 * 0.04 + math.sin(var_134_45 * 6 + iter_134_4) * 0.02
					local var_134_65 = iter_134_4 == 3 and 1 or 0.15 + iter_134_4 * 0.12
					local var_134_66 = iter_134_4 == 3 and 0.88 or 0.8 + iter_134_4 * 0.06
					local var_134_67 = iter_134_4 == 3 and 0.35 or 1

					var_134_46:send("u_color", {
						var_134_65,
						var_134_66,
						var_134_67,
						var_134_61
					})
					love.graphics.draw(arg_134_1, arg_134_2, var_134_35 + var_134_62, var_134_36 + var_134_63, arg_134_5 or 0, arg_134_6 * var_134_64, arg_134_7 * var_134_64, var_134_8, var_134_9)
				end
			end

			love.graphics.setShader()

			if var_134_48 ~= nil then
				love.graphics.setBlendMode(var_134_47, var_134_48)
			else
				love.graphics.setBlendMode(var_134_47)
			end

			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_134_68 = arg_134_0._spaceKnightBurn

	if var_134_68 and arg_134_1 and arg_134_2 and (tonumber(var_134_68.u) or 0) > 0.02 then
		local var_134_69 = var_0_94()

		if var_134_69 then
			local var_134_70 = love.timer.getTime()
			local var_134_71 = var_0_8(tonumber(var_134_68.u) or 0, 0, 1)
			local var_134_72 = (tonumber(var_134_68.dir) or -1) >= 0 and 1 or -1
			local var_134_73 = var_0_8(tonumber(var_134_68.flash) or 0, 0, 1)
			local var_134_74, var_134_75 = love.graphics.getBlendMode()

			love.graphics.setShader(var_134_69)

			if var_134_69:hasUniform("u_grayscale") then
				var_134_69:send("u_grayscale", var_0_133(arg_134_0))
			end

			var_0_0.applyTimeStopWaveUniforms(var_134_69)

			if var_134_75 ~= nil then
				love.graphics.setBlendMode("add", "alphamultiply")
			else
				love.graphics.setBlendMode("add")
			end

			local var_134_76 = math.abs(arg_134_6 or 1) * (3 + 6 * var_134_71)

			for iter_134_5 = 1, 4 do
				local var_134_77 = iter_134_5 / 4
				local var_134_78 = 0.75 + 0.25 * math.sin(var_134_70 * (24 + iter_134_5 * 8) + iter_134_5 * 1.5)
				local var_134_79 = var_134_71 * (0.68 - var_134_77 * 0.42) * var_134_78

				if var_134_79 > 0.004 then
					local var_134_80 = 0.25 + (1 - var_134_77) * 0.7
					local var_134_81 = 0.05 + (1 - var_134_77) * 0.35
					local var_134_82 = 0.45 + (1 - var_134_77) * 0.45
					local var_134_83 = math.floor(math.sin(var_134_70 * 30 + iter_134_5 * 2) * (0.5 + var_134_77 * 1.2))
					local var_134_84 = math.floor(math.cos(var_134_70 * 26 + iter_134_5 * 1.5) * (0.5 + var_134_77 * 1))
					local var_134_85 = 1 + var_134_77 * (0.04 + 0.08 * var_134_71)

					var_134_69:send("u_color", {
						var_134_80,
						var_134_81,
						var_134_82,
						var_134_79
					})
					love.graphics.draw(arg_134_1, arg_134_2, var_134_35 - var_134_72 * var_134_76 * var_134_77 + var_134_83, var_134_36 + var_134_84, arg_134_5 or 0, arg_134_6 * var_134_85, arg_134_7 * var_134_85, var_134_8, var_134_9)
				end
			end

			if var_134_73 > 0.004 then
				local var_134_86 = 1 + var_134_73 * 0.16

				var_134_69:send("u_color", {
					1,
					0.9,
					0.98,
					var_134_73 * 0.92
				})
				love.graphics.draw(arg_134_1, arg_134_2, var_134_35, var_134_36, arg_134_5 or 0, arg_134_6 * var_134_86, arg_134_7 * var_134_86, var_134_8, var_134_9)
			end

			love.graphics.setShader()

			if var_134_75 ~= nil then
				love.graphics.setBlendMode(var_134_74, var_134_75)
			else
				love.graphics.setBlendMode(var_134_74)
			end

			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	if arg_134_0.fearT and arg_134_0.fearT > 0 then
		local var_134_87 = love.timer.getTime()
		local var_134_88 = var_0_94()

		if var_134_88 then
			love.graphics.setShader(var_134_88)

			if var_134_88:hasUniform("u_grayscale") then
				var_134_88:send("u_grayscale", var_0_133(arg_134_0))
			end

			var_0_0.applyTimeStopWaveUniforms(var_134_88)
			love.graphics.setBlendMode("add")

			for iter_134_6 = 1, 3 do
				local var_134_89 = 0.15 + 0.2 * (math.sin(var_134_87 * (20 + iter_134_6 * 5) + iter_134_6) * 0.5 + 0.5)
				local var_134_90 = math.sin(var_134_87 * 40 + iter_134_6) * 1.5
				local var_134_91 = math.cos(var_134_87 * 45 + iter_134_6) * 1.5

				var_134_88:send("u_color", {
					0.3 + iter_134_6 * 0.1,
					0,
					0.6,
					var_134_89
				})

				local var_134_92 = 1.02 + iter_134_6 * 0.03

				love.graphics.draw(arg_134_1, arg_134_2, var_134_35 + var_134_90, var_134_36 + var_134_91, arg_134_5 or 0, arg_134_6 * var_134_92, arg_134_7 * var_134_92, var_134_8, var_134_9)
			end

			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
		end
	end
end

local function var_0_144(arg_135_0, arg_135_1, arg_135_2, arg_135_3)
	local var_135_0 = math.abs(arg_135_2 or 1)
	local var_135_1 = math.abs(arg_135_3 or 1)

	if arg_135_0._bodyColX and arg_135_0._bodyColY and (arg_135_0._bodyColW or 0) > 0 and (arg_135_0._bodyColH or 0) > 0 then
		return arg_135_0._bodyColX + arg_135_0._bodyColW * 0.5, arg_135_0._bodyColY + arg_135_0._bodyColH * 0.5, arg_135_0._bodyColW, arg_135_0._bodyColH
	end

	local var_135_2, var_135_3, var_135_4, var_135_5 = arg_135_1:getViewport()

	return arg_135_0.x or 0, arg_135_0.y or 0, var_135_4 * var_135_0, var_135_5 * var_135_1
end

local function var_0_145(arg_136_0, arg_136_1, arg_136_2, arg_136_3, arg_136_4, arg_136_5, arg_136_6, arg_136_7, arg_136_8, arg_136_9)
	local var_136_0 = arg_136_0 and arg_136_0._shrinkScalePoof

	if not var_136_0 or not arg_136_1 or not arg_136_2 then
		return
	end

	local var_136_1 = math.max(0.01, tonumber(var_136_0.dur) or 0.4)
	local var_136_2 = var_0_8((tonumber(var_136_0.t) or 0) / var_136_1, 0, 1)

	if var_136_2 >= 1 then
		return
	end

	local var_136_3 = var_0_0.getUnitScalePoofBounds(arg_136_0, arg_136_1, arg_136_2)

	if not var_136_3 or (var_136_3.w or 0) <= 0 or (var_136_3.h or 0) <= 0 then
		local var_136_4, var_136_5, var_136_6, var_136_7 = arg_136_2:getViewport()

		var_136_3 = {
			y = 0,
			x = 0,
			w = var_136_6,
			h = var_136_7
		}
	end

	local var_136_8 = math.floor((var_136_3.x or 0) + 0.5)
	local var_136_9 = math.floor((var_136_3.y or 0) + 0.5)
	local var_136_10 = math.max(6, math.floor((var_136_3.w or 0) + 0.5))
	local var_136_11 = math.max(6, math.floor((var_136_3.h or 0) + 0.5))
	local var_136_12 = math.floor(var_136_8 + var_136_10 * 0.5)
	local var_136_13 = math.floor(var_136_9 + var_136_11 * 0.5)
	local var_136_14 = var_136_0.kind == "grow"
	local var_136_15 = var_0_7 and var_0_7.getVisualScale(arg_136_0) or 1
	local var_136_16 = not var_136_14 and var_136_15 < 0.999 and var_136_15 > 0.01 and 1 / var_136_15 or 1
	local var_136_17 = var_136_10 * 0.5 * var_136_16
	local var_136_18 = var_136_11 * 0.5 * var_136_16
	local var_136_19 = math.min(var_136_10, var_136_11)
	local var_136_20 = math.max(1.8, var_136_19 * 0.2) * var_136_16
	local var_136_21 = (tonumber(arg_136_0.id) or tonumber(arg_136_0.spawnIndex) or 1) * 37 + 89

	local function var_136_22(arg_137_0)
		local var_137_0 = math.sin(var_136_21 * 12.9898 + (arg_137_0 or 0) * 78.233) * 43758.5453

		return var_137_0 - math.floor(var_137_0)
	end

	local var_136_23

	if var_136_2 < 0.2 then
		var_136_23 = (var_136_2 / 0.2)^0.5 * 1.08
	elseif var_136_2 < 0.6 then
		var_136_23 = 1.08 + (var_136_2 - 0.2) / 0.4 * 0.1
	else
		var_136_23 = 1.18 + (var_136_2 - 0.6) / 0.4 * 0.08
	end

	local var_136_24 = var_0_9(var_0_8(var_136_2 / 0.1, 0, 1)) * (var_136_2 < 0.42 and 1 or (1 - (var_136_2 - 0.42) / 0.58)^1.45)

	if var_136_24 <= 0.001 then
		return
	end

	local var_136_25 = -math.floor(var_136_11 * var_136_16 * 0.12 * var_136_2^0.75 + 0.5)
	local var_136_26 = {}

	var_136_26[#var_136_26 + 1] = {
		cx = var_136_12,
		cy = var_136_13 + var_136_25,
		r = var_136_20 * 1.25 * var_136_23
	}

	local var_136_27 = {
		{
			-0.22,
			-0.15
		},
		{
			0.22,
			-0.15
		},
		{
			0,
			0.2
		}
	}

	for iter_136_0, iter_136_1 in ipairs(var_136_27) do
		var_136_26[#var_136_26 + 1] = {
			cx = math.floor(var_136_12 + iter_136_1[1] * var_136_17 * var_136_23 + 0.5),
			cy = math.floor(var_136_13 + iter_136_1[2] * var_136_18 * var_136_23 + var_136_25 + 0.5),
			r = var_136_20 * 0.95 * var_136_23
		}
	end

	local var_136_28 = var_0_8(math.floor((var_136_10 + var_136_11) / 5.5 + 0.5), 5, 8)

	for iter_136_2 = 1, var_136_28 do
		local var_136_29 = (iter_136_2 - 1) / var_136_28 * math.pi * 2 + (var_136_22(iter_136_2) - 0.5) * 0.25
		local var_136_30 = 0.75 + 0.25 * var_136_22(iter_136_2 + 20)
		local var_136_31 = 0.75 + 0.25 * var_136_22(iter_136_2 + 40)
		local var_136_32 = var_136_17 * var_136_30 * (0.5 + 0.35 * var_136_23)
		local var_136_33 = var_136_18 * var_136_31 * (0.5 + 0.35 * var_136_23)
		local var_136_34 = math.sin(var_136_2 * 15 + iter_136_2 * 1.7) * 0.6
		local var_136_35 = math.cos(var_136_2 * 13 + iter_136_2 * 1.9) * 0.5

		var_136_26[#var_136_26 + 1] = {
			cx = math.floor(var_136_12 + math.cos(var_136_29) * var_136_32 + var_136_34 + 0.5),
			cy = math.floor(var_136_13 + math.sin(var_136_29) * var_136_33 + var_136_25 + var_136_35 + 0.5),
			r = var_136_20 * (0.75 + 0.25 * var_136_22(iter_136_2 + 60)) * var_136_23
		}
	end

	local var_136_36 = 100000
	local var_136_37 = -100000
	local var_136_38 = 100000
	local var_136_39 = -100000
	local var_136_40 = {}

	local function var_136_41(arg_138_0, arg_138_1)
		if not var_136_40[arg_138_1] then
			var_136_40[arg_138_1] = {}
		end

		if not var_136_40[arg_138_1][arg_138_0] then
			var_136_40[arg_138_1][arg_138_0] = true

			if arg_138_0 < var_136_36 then
				var_136_36 = arg_138_0
			end

			if arg_138_0 > var_136_37 then
				var_136_37 = arg_138_0
			end

			if arg_138_1 < var_136_38 then
				var_136_38 = arg_138_1
			end

			if arg_138_1 > var_136_39 then
				var_136_39 = arg_138_1
			end
		end
	end

	for iter_136_3, iter_136_4 in ipairs(var_136_26) do
		local var_136_42 = iter_136_4.cx
		local var_136_43 = iter_136_4.cy
		local var_136_44 = iter_136_4.r
		local var_136_45 = math.floor(var_136_44 + 0.5)

		for iter_136_5 = -var_136_45, var_136_45 do
			local var_136_46 = var_136_43 + iter_136_5

			for iter_136_6 = -var_136_45, var_136_45 do
				local var_136_47 = var_136_42 + iter_136_6

				if iter_136_6 * iter_136_6 + iter_136_5 * iter_136_5 <= var_136_44 * var_136_44 then
					var_136_41(var_136_47, var_136_46)
				end
			end
		end
	end

	local var_136_48 = {
		1,
		1,
		1,
		var_136_24 * 0.95
	}
	local var_136_49 = {
		1,
		0.88,
		0.45,
		var_136_24
	}

	love.graphics.push("all")
	love.graphics.setShader()
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.translate(arg_136_3 or 0, arg_136_4 or 0)
	love.graphics.rotate(arg_136_5 or 0)
	love.graphics.scale(arg_136_6 or 1, arg_136_7 or 1)
	love.graphics.translate(-(arg_136_8 or 0), -(arg_136_9 or 0))

	if var_136_38 <= var_136_39 and var_136_36 <= var_136_37 then
		love.graphics.setColor(var_136_48[1], var_136_48[2], var_136_48[3], var_136_48[4])

		for iter_136_7 = var_136_38, var_136_39 do
			local var_136_50 = var_136_40[iter_136_7]

			if var_136_50 then
				local var_136_51 = false
				local var_136_52

				for iter_136_8 = var_136_36, var_136_37 + 1 do
					local var_136_53 = var_136_50[iter_136_8]

					if var_136_53 and not var_136_51 then
						var_136_51 = true
						var_136_52 = iter_136_8
					elseif not var_136_53 and var_136_51 then
						var_136_51 = false

						love.graphics.rectangle("fill", var_136_52, iter_136_7, iter_136_8 - var_136_52, 1)
					end
				end
			end
		end
	end

	for iter_136_9 = 1, 3 do
		local var_136_54 = var_136_22(iter_136_9 + 110) * math.pi * 2
		local var_136_55 = (var_136_17 + var_136_18) * 0.5 * (0.65 + var_136_2 * 1.2)
		local var_136_56 = math.floor(var_136_12 + math.cos(var_136_54) * var_136_55 + 0.5)
		local var_136_57 = math.floor(var_136_13 + math.sin(var_136_54) * var_136_55 + var_136_25 * 1.2 + 0.5)
		local var_136_58 = var_136_24 * math.max(0, 1 - var_136_2 * 1.3)

		if var_136_58 > 0.05 then
			love.graphics.setColor(var_136_48[1], var_136_48[2], var_136_48[3], var_136_58)
			love.graphics.rectangle("fill", var_136_56, var_136_57, 1, 1)
		end
	end

	local var_136_59 = var_0_8(math.sin(var_136_2 * math.pi)^1.2, 0, 1) * var_136_24

	if var_136_59 > 0.05 then
		for iter_136_10 = 1, 3 do
			local var_136_60 = var_136_22(iter_136_10 + 150) * math.pi * 2
			local var_136_61 = (var_136_17 + var_136_18) * 0.5 * (0.45 + var_136_2 * 1.45)
			local var_136_62 = math.floor(var_136_12 + math.cos(var_136_60) * var_136_61 + 0.5)
			local var_136_63 = math.floor(var_136_13 + math.sin(var_136_60) * var_136_61 + var_136_25 * 1.3 + 0.5)

			love.graphics.setColor(var_136_49[1], var_136_49[2], var_136_49[3], var_136_59 * 0.85)
			love.graphics.rectangle("fill", var_136_62 - 1, var_136_63, 3, 1)
			love.graphics.rectangle("fill", var_136_62, var_136_63 - 1, 1, 3)
			love.graphics.setColor(1, 1, 1, var_136_59)
			love.graphics.rectangle("fill", var_136_62, var_136_63, 1, 1)
		end
	end

	love.graphics.pop()
end

function var_0_0.drawUnitScalePoof(arg_139_0, arg_139_1, arg_139_2, arg_139_3, arg_139_4, arg_139_5, arg_139_6, arg_139_7, arg_139_8, arg_139_9)
	return var_0_145(arg_139_0, arg_139_1, arg_139_2, arg_139_3, arg_139_4, arg_139_5, arg_139_6, arg_139_7, arg_139_8, arg_139_9)
end

function var_0_0.drawImpExplosion(arg_140_0)
	if not arg_140_0 or not love or not love.graphics then
		return
	end

	local var_140_0 = math.max(0, tonumber(arg_140_0.t) or 0)
	local var_140_1 = math.max(0.01, tonumber(arg_140_0.dur) or 0.42)
	local var_140_2, var_140_3 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha", "alphamultiply")

	local var_140_4 = require("src.game.projectiles").imp_explosion

	var_140_4.forEachRect(var_140_0, var_140_1, function(arg_141_0, arg_141_1, arg_141_2, arg_141_3, arg_141_4, arg_141_5, arg_141_6, arg_141_7)
		local var_141_0, var_141_1, var_141_2, var_141_3 = var_140_4.getWorldRect(arg_140_0, arg_141_0, arg_141_1, arg_141_2, arg_141_3)

		love.graphics.setColor(arg_141_4, arg_141_5, arg_141_6, arg_141_7)
		love.graphics.rectangle("fill", var_141_0, var_141_1, var_141_2, var_141_3)
	end)

	if var_140_3 then
		love.graphics.setBlendMode(var_140_2, var_140_3)
	else
		love.graphics.setBlendMode(var_140_2)
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function var_0_0.drawImpExplosionDebug(arg_142_0)
	if not arg_142_0 or not love or not love.graphics then
		return
	end

	local var_142_0 = require("src.game.projectiles").imp_explosion
	local var_142_1 = var_142_0.getFrameInfo(arg_142_0.t, arg_142_0.dur)

	if not var_142_1 then
		return
	end

	local var_142_2 = math.floor((arg_142_0.x or 0) + 0.5)
	local var_142_3 = math.floor((arg_142_0.y or 0) + 0.5)
	local var_142_4
	local var_142_5
	local var_142_6
	local var_142_7
	local var_142_8 = 0
	local var_142_9, var_142_10, var_142_11, var_142_12 = love.graphics.getColor()
	local var_142_13, var_142_14 = love.graphics.getBlendMode()
	local var_142_15 = love.graphics.getLineWidth()

	love.graphics.setBlendMode("alpha", "alphamultiply")
	var_142_0.forEachResolvedPixel(arg_142_0.t, arg_142_0.dur, function(arg_143_0, arg_143_1, arg_143_2, arg_143_3, arg_143_4, arg_143_5, arg_143_6)
		if not arg_143_5 or arg_143_5 <= 0 then
			return
		end

		local var_143_0, var_143_1, var_143_2, var_143_3 = var_142_0.getWorldRect(arg_142_0, arg_143_0, arg_143_1, 1, 1)
		local var_143_4 = var_143_0 + var_143_2
		local var_143_5 = var_143_1 + var_143_3

		if arg_143_6 then
			var_142_4 = var_142_4 and math.min(var_142_4, var_143_0) or var_143_0
			var_142_5 = var_142_5 and math.min(var_142_5, var_143_1) or var_143_1
			var_142_6 = var_142_6 and math.max(var_142_6, var_143_4) or var_143_4
			var_142_7 = var_142_7 and math.max(var_142_7, var_143_5) or var_143_5

			local var_143_6 = math.max(math.abs(var_143_0 - var_142_2), math.abs(var_143_4 - var_142_2))
			local var_143_7 = math.max(math.abs(var_143_1 - var_142_3), math.abs(var_143_5 - var_142_3))

			var_142_8 = math.max(var_142_8, var_143_6 * var_143_6 + var_143_7 * var_143_7)

			love.graphics.setColor(1, 0.12, 0.1, 0.42 * arg_143_5)
		else
			love.graphics.setColor(0.62, 0.7, 0.76, 0.2 * arg_143_5)
		end

		love.graphics.rectangle("fill", var_143_0, var_143_1, var_143_2, var_143_3)
	end)

	if var_142_4 then
		local var_142_16 = 1
		local var_142_17 = 0.18
		local var_142_18 = 0.14
		local var_142_19 = math.ceil(math.sqrt(var_142_8))

		love.graphics.setLineWidth(1)
		love.graphics.setColor(1, 0.22, 0.24, 0.95)
		love.graphics.line(var_142_2 - 3, var_142_3, var_142_2 + 3, var_142_3)
		love.graphics.line(var_142_2, var_142_3 - 3, var_142_2, var_142_3 + 3)

		local var_142_20 = string.format("임프 피해 판정  프레임 %d  반경 %d  빨간 영역만", var_142_1, var_142_19)
		local var_142_21 = love.graphics.getFont()
		local var_142_22 = var_0_5.developerFont(var_142_21)

		love.graphics.setFont(var_142_22)

		local var_142_23 = math.max(1, (var_142_22 and var_142_22:getWidth(var_142_20) or 112) + 4)
		local var_142_24 = math.max(1, (var_142_22 and var_142_22:getHeight() or 9) + 2)

		love.graphics.setColor(0.04, 0.04, 0.05, 0.82)
		love.graphics.rectangle("fill", var_142_4, var_142_5 - var_142_24 - 1, var_142_23, var_142_24)
		love.graphics.setColor(var_142_16, var_142_17, var_142_18, 1)
		love.graphics.print(var_142_20, var_142_4 + 2, var_142_5 - var_142_24)
		love.graphics.setFont(var_142_21)
	end

	for iter_142_0, iter_142_1 in ipairs(arg_142_0.hitContacts or {}) do
		if iter_142_1.x and iter_142_1.y then
			local var_142_25 = math.floor(iter_142_1.x)
			local var_142_26 = math.floor(iter_142_1.y)

			love.graphics.setColor(1, 0.92, 0.16, 0.95)
			love.graphics.rectangle("line", var_142_25 - 1.5, var_142_26 - 1.5, 3, 3)
			love.graphics.line(var_142_25 - 3, var_142_26, var_142_25 + 3, var_142_26)
			love.graphics.line(var_142_25, var_142_26 - 3, var_142_25, var_142_26 + 3)
		end
	end

	love.graphics.setLineWidth(var_142_15)

	if var_142_14 then
		love.graphics.setBlendMode(var_142_13, var_142_14)
	else
		love.graphics.setBlendMode(var_142_13)
	end

	love.graphics.setColor(var_142_9, var_142_10, var_142_11, var_142_12)
end

local function var_0_146(arg_144_0, arg_144_1, arg_144_2, arg_144_3, arg_144_4, arg_144_5, arg_144_6, arg_144_7, arg_144_8)
	local var_144_0, var_144_1, var_144_2, var_144_3 = arg_144_2:getViewport()
	local var_144_4 = math.abs(arg_144_5 or 1)
	local var_144_5 = math.abs(arg_144_6 or 1)
	local var_144_6 = var_0_134 and var_0_134(arg_144_0, arg_144_1)
	local var_144_7 = var_144_6 and var_144_6.bounds and var_144_6.bounds.idle and var_144_6.bounds.idle[1] or arg_144_0 and arg_144_0.bounds and arg_144_0.bounds.idle and arg_144_0.bounds.idle[1]

	if var_144_7 and (var_144_7.w or 0) > 0 and (var_144_7.h or 0) > 0 then
		local var_144_8 = var_144_7.x or 0
		local var_144_9 = var_144_7.y or 0
		local var_144_10 = var_144_7.w or var_144_2
		local var_144_11 = var_144_7.h or var_144_3
		local var_144_12 = arg_144_3 + (var_144_8 + var_144_10 * 0.5 - (arg_144_7 or 0)) * arg_144_5
		local var_144_13 = arg_144_4 + (var_144_9 + var_144_11 * 0.5 - (arg_144_8 or 0)) * arg_144_6
		local var_144_14 = var_144_10 * var_144_4
		local var_144_15 = var_144_11 * var_144_5

		return var_144_12, var_144_13, var_144_14, var_144_15
	end

	if arg_144_0 and arg_144_0._bodyColX and arg_144_0._bodyColY and (arg_144_0._bodyColW or 0) > 0 and (arg_144_0._bodyColH or 0) > 0 then
		return arg_144_0._bodyColX + arg_144_0._bodyColW * 0.5, arg_144_0._bodyColY + arg_144_0._bodyColH * 0.5, arg_144_0._bodyColW, arg_144_0._bodyColH
	end

	local var_144_16 = arg_144_3 + (var_144_2 * 0.5 - (arg_144_7 or 0)) * arg_144_5
	local var_144_17 = arg_144_4 + (var_144_3 * 0.5 - (arg_144_8 or 0)) * arg_144_6

	return var_144_16, var_144_17, var_144_2 * var_144_4 * 0.45, var_144_3 * var_144_5 * 0.5
end

local function var_0_147(arg_145_0, arg_145_1, arg_145_2, arg_145_3, arg_145_4, arg_145_5, arg_145_6, arg_145_7, arg_145_8, arg_145_9)
	local var_145_0 = arg_145_0 and arg_145_0._spaceKnightBurn

	if not var_145_0 or not arg_145_1 or not arg_145_2 then
		return
	end

	local var_145_1 = var_0_8(tonumber(var_145_0.u) or 0, 0, 1)

	if var_145_1 <= 0.01 then
		return
	end

	local var_145_2, var_145_3, var_145_4, var_145_5 = var_0_146(arg_145_0, arg_145_1, arg_145_2, arg_145_3, arg_145_4, arg_145_6, arg_145_7, arg_145_8, arg_145_9)
	local var_145_6 = math.floor(var_145_2)
	local var_145_7 = math.floor(var_145_3)
	local var_145_8 = love.timer.getTime()
	local var_145_9, var_145_10 = love.graphics.getBlendMode()
	local var_145_11, var_145_12, var_145_13, var_145_14 = love.graphics.getColor()
	local var_145_15 = arg_145_0 and arg_145_0.facing or arg_145_6 and arg_145_6 < 0 and -1 or 1

	if var_145_15 == 0 then
		var_145_15 = -1
	end

	local var_145_16 = -var_145_15
	local var_145_17 = var_0_92()

	if var_145_17 then
		local var_145_18 = love.graphics.getShader()
		local var_145_19, var_145_20, var_145_21, var_145_22 = arg_145_2:getViewport()

		love.graphics.setBlendMode("alpha", "alphamultiply")
		love.graphics.setShader(var_145_17)
		var_0_10(var_145_17, "u_time", var_145_8)
		var_0_10(var_145_17, "u_heat", var_145_1)
		var_0_10(var_145_17, "u_flash", var_0_8(tonumber(var_145_0.flash) or 0, 0, 1) * 0.75)
		var_0_10(var_145_17, "u_dir", var_145_15)
		var_0_10(var_145_17, "u_quadRect", var_0_118(arg_145_1, arg_145_2))
		var_0_10(var_145_17, "u_frameSize", {
			var_145_21,
			var_145_22
		})
		love.graphics.setColor(1, 1, 1, var_145_14)
		love.graphics.draw(arg_145_1, arg_145_2, arg_145_3, arg_145_4, arg_145_5 or 0, arg_145_6, arg_145_7, arg_145_8, arg_145_9)
		love.graphics.setShader(var_145_18)
	end

	love.graphics.setBlendMode("add", "alphamultiply")

	local var_145_23 = math.floor(var_145_6 + var_145_15 * (var_145_4 * 0.32))
	local var_145_24 = math.floor(var_145_7 + 1)

	if var_145_1 <= 0.22 then
		local var_145_25 = var_0_8(var_145_1 / 0.2, 0, 1)

		love.graphics.setColor(1, 0.9, 0.35, var_145_25 * 0.9)
		love.graphics.rectangle("fill", var_145_23 - 1, var_145_24 - 1, 3, 3)
		love.graphics.setColor(1, 1, 1, var_145_25)
		love.graphics.rectangle("fill", var_145_23, var_145_24, 1, 1)
	else
		local var_145_26 = var_0_8((var_145_1 - 0.2) / 0.8, 0, 1)

		for iter_145_0 = 1, 2 do
			local var_145_27 = arg_145_3 + var_145_16 * math.floor(iter_145_0 * 10 * var_145_26)
			local var_145_28 = var_145_26 * (0.42 - iter_145_0 * 0.14)

			love.graphics.setColor(0.22, 0.75, 1, var_145_28)
			love.graphics.draw(arg_145_1, arg_145_2, var_145_27, arg_145_4, arg_145_5 or 0, arg_145_6, arg_145_7, arg_145_8, arg_145_9)
		end

		local var_145_29 = var_145_26 * (0.9 + 0.1 * math.sin(var_145_8 * 24))

		love.graphics.setColor(1, 0.92, 0.4, var_145_29 * 0.9)
		love.graphics.rectangle("fill", var_145_23 - 1, var_145_24 - 2, 2, 5)
		love.graphics.setColor(1, 1, 1, var_145_29)
		love.graphics.rectangle("fill", var_145_23, var_145_24 - 1, 1, 3)

		local var_145_30 = math.floor(8 * var_145_26)

		love.graphics.setColor(0.35, 0.85, 1, var_145_29 * 0.85)
		love.graphics.line(var_145_23, var_145_24, var_145_23 + var_145_15 * var_145_30, var_145_24)

		local var_145_31 = math.floor(var_145_7 + var_145_5 * 0.5 + 1)

		for iter_145_1 = 1, 4 do
			local var_145_32 = math.floor((8 + iter_145_1 * 6) * var_145_26)
			local var_145_33 = var_145_6 + var_145_16 * (math.floor(iter_145_1 * 7 * var_145_26) + 6)
			local var_145_34 = var_145_26 * (0.85 - iter_145_1 * 0.15)

			love.graphics.setColor(1, 0.95, 0.6, var_145_34)

			local var_145_35 = var_145_16 > 0 and var_145_33 or var_145_33 - var_145_32

			love.graphics.rectangle("fill", var_145_35, var_145_31 - iter_145_1 % 2, var_145_32, 1)
		end
	end

	if var_145_10 then
		love.graphics.setBlendMode(var_145_9, var_145_10)
	else
		love.graphics.setBlendMode(var_145_9)
	end

	love.graphics.setColor(var_145_11, var_145_12, var_145_13, var_145_14)
end

local function var_0_148(arg_146_0)
	if not arg_146_0 or arg_146_0.alive == false or arg_146_0.dying then
		return 0, 0
	end

	local var_146_0 = 0
	local var_146_1 = 0

	for iter_146_0 = 1, 3 do
		local var_146_2

		if iter_146_0 == 1 then
			var_146_2 = arg_146_0._spaceHunterGravityRange
		elseif iter_146_0 == 2 then
			var_146_2 = arg_146_0._suppressiveRound
		else
			var_146_2 = arg_146_0._shatterCannon
		end

		local var_146_3 = math.max(0, tonumber(var_146_2 and var_146_2.t) or 0)

		if var_146_3 > 0 then
			local var_146_4 = math.max(0.01, tonumber(var_146_2.dur) or var_146_3)
			local var_146_5 = math.max(0, var_146_4 - var_146_3)

			var_146_0 = math.max(var_146_0, math.min(var_0_9(var_0_8(var_146_5 / 0.22, 0, 1)), var_0_9(var_0_8(var_146_3 / 0.45, 0, 1))))
			var_146_1 = math.max(var_146_1, var_0_8((tonumber(var_146_2.hitT) or 0) / 0.34, 0, 1))
		end
	end

	return var_146_0, var_146_1
end

local function var_0_149(arg_147_0, arg_147_1, arg_147_2, arg_147_3, arg_147_4, arg_147_5, arg_147_6, arg_147_7, arg_147_8, arg_147_9)
	if not arg_147_1 or not arg_147_2 then
		return
	end

	local var_147_0, var_147_1 = var_0_148(arg_147_0)

	if var_147_0 <= 0.004 then
		return
	end

	local var_147_2 = var_0_90()

	if not var_147_2 then
		return
	end

	local var_147_3, var_147_4, var_147_5, var_147_6 = arg_147_2:getViewport()
	local var_147_7 = love.graphics.getShader()
	local var_147_8, var_147_9 = love.graphics.getBlendMode()
	local var_147_10, var_147_11, var_147_12, var_147_13 = love.graphics.getColor()

	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setShader(var_147_2)
	var_0_10(var_147_2, "u_time", love.timer.getTime())
	var_0_10(var_147_2, "u_strength", var_147_0)
	var_0_10(var_147_2, "u_flash", var_147_1 * 0.85)
	var_0_10(var_147_2, "u_quadRect", var_0_118(arg_147_1, arg_147_2))
	var_0_10(var_147_2, "u_frameSize", {
		var_147_5,
		var_147_6
	})
	love.graphics.setColor(1, 1, 1, var_147_13)
	love.graphics.draw(arg_147_1, arg_147_2, arg_147_3, arg_147_4, arg_147_5 or 0, arg_147_6, arg_147_7, arg_147_8, arg_147_9)
	love.graphics.setShader(var_147_7)
	love.graphics.setBlendMode(var_147_8, var_147_9)
	love.graphics.setColor(var_147_10, var_147_11, var_147_12, var_147_13)
end

local function var_0_150(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4, arg_148_5, arg_148_6, arg_148_7, arg_148_8)
	if not arg_148_2 then
		return
	end

	local var_148_0, var_148_1 = var_0_148(arg_148_0)

	if var_148_0 <= 0.004 then
		return
	end

	local var_148_2, var_148_3, var_148_4, var_148_5 = var_0_146(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4, arg_148_5, arg_148_6, arg_148_7, arg_148_8)
	local var_148_6 = math.floor(var_148_2)
	local var_148_7 = math.floor(var_148_3)
	local var_148_8 = love.timer.getTime()
	local var_148_9, var_148_10 = love.graphics.getBlendMode()
	local var_148_11, var_148_12, var_148_13, var_148_14 = love.graphics.getColor()
	local var_148_15 = math.max(6, math.floor(var_148_4 * 0.5 + 2))
	local var_148_16 = math.max(8, math.floor(var_148_5 * 0.5 + 2))

	love.graphics.setBlendMode("add", "alphamultiply")

	local var_148_17 = (tonumber(arg_148_0.id) or tonumber(arg_148_0.spawnIndex) or 1) * 23 + 47

	for iter_148_0 = 1, 4 do
		local var_148_18 = math.sin(var_148_17 * 11.17 + iter_148_0 * 31.41) * 43758.5453
		local var_148_19 = var_148_18 - math.floor(var_148_18)
		local var_148_20 = (var_148_8 * (1.6 + var_148_19 * 0.8) + var_148_19) % 1
		local var_148_21 = math.floor(var_148_6 + (var_148_19 * 2 - 1) * (var_148_15 * 0.9))
		local var_148_22 = math.floor(var_148_7 + var_148_16 - var_148_20 * (var_148_16 * 2))
		local var_148_23 = var_148_0 * math.sin(var_148_20 * math.pi) * 0.85

		love.graphics.setColor(1, 0.94, 0.4, var_148_23)
		love.graphics.rectangle("fill", var_148_21, var_148_22, 2, 2)
		love.graphics.setColor(0.85, 0.45, 0.05, var_148_23 * 0.5)
		love.graphics.rectangle("fill", var_148_21, var_148_22 + 2, 2, 1)
	end

	if var_148_1 > 0.001 then
		local var_148_24 = var_148_1 * 0.95

		love.graphics.setColor(1, 1, 1, var_148_24)
		love.graphics.rectangle("fill", var_148_6 - 4, var_148_7 - 1, 9, 3)
		love.graphics.rectangle("fill", var_148_6 - 1, var_148_7 - 4, 3, 9)
	end

	if var_148_10 then
		love.graphics.setBlendMode(var_148_9, var_148_10)
	else
		love.graphics.setBlendMode(var_148_9)
	end

	love.graphics.setColor(var_148_11, var_148_12, var_148_13, var_148_14)
end

function var_0_0.drawUnitOverdrivePost(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	if not arg_149_0 then
		return
	end

	local var_149_0 = math.abs(arg_149_6 or 1)
	local var_149_1 = math.abs(arg_149_7 or 1)

	if (arg_149_0.skin == "DeceiverForm2" or arg_149_0.deceiverForm == 2 or arg_149_0.form == 2 or arg_149_0._deceiverChanged == true) and arg_149_1 and arg_149_2 then
		local var_149_2 = love.timer.getTime()
		local var_149_3, var_149_4 = love.graphics.getBlendMode()
		local var_149_5, var_149_6, var_149_7, var_149_8 = love.graphics.getColor()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_149_9 = var_0_94()

		if var_149_9 then
			love.graphics.setShader(var_149_9)

			local var_149_10 = 0.14 + 0.06 * math.sin(var_149_2 * 4)

			var_149_9:send("u_color", {
				0.9,
				0.1,
				0.2,
				var_149_10
			})

			if var_149_9:hasUniform("u_grayscale") then
				var_149_9:send("u_grayscale", 0)
			end

			if var_149_9:hasUniform("u_ts_active") then
				var_149_9:send("u_ts_active", false)
			end

			love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
			love.graphics.setShader()
		end

		love.graphics.setBlendMode(var_149_3, var_149_4)
		love.graphics.setColor(var_149_5, var_149_6, var_149_7, var_149_8)
	end

	if (arg_149_0.guardThrustSlow and (arg_149_0.guardThrustSlow.dur or 0) > 0 or arg_149_0.observerSlow and (arg_149_0.observerSlow.dur or 0) > 0 or arg_149_0.gazerAtkDown and (arg_149_0.gazerAtkDown.dur or 0) > 0) and arg_149_1 and arg_149_2 then
		local var_149_11 = arg_149_0.gazerAtkDown and (arg_149_0.gazerAtkDown.dur or 0) > 0 and "gazer" or "observer"

		var_0_0.drawSlowDebuffOverlay(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9, 1, var_149_11)
	end

	if arg_149_0 and ((arg_149_0.bindingT or 0) > 0 or (arg_149_0._ankleTrapT or 0) > 0 or (arg_149_0._gateNetT or 0) > 0) and arg_149_1 and arg_149_2 then
		local var_149_12 = love.timer.getTime()
		local var_149_13, var_149_14 = love.graphics.getBlendMode()
		local var_149_15, var_149_16, var_149_17, var_149_18 = love.graphics.getColor()

		love.graphics.setBlendMode("alpha", "alphamultiply")

		local var_149_19 = var_0_86()

		love.graphics.setShader(var_149_19)
		var_149_19:send("u_time", var_149_12)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
		love.graphics.setShader()
		love.graphics.setBlendMode(var_149_13, var_149_14)
		love.graphics.setColor(var_149_15, var_149_16, var_149_17, var_149_18)
	end

	if arg_149_0 and (arg_149_0.overloadShockT or 0) > 0 and arg_149_1 and arg_149_2 then
		local var_149_20 = love.timer.getTime()
		local var_149_21, var_149_22 = love.graphics.getBlendMode()
		local var_149_23, var_149_24, var_149_25, var_149_26 = love.graphics.getColor()
		local var_149_27 = var_0_88()

		love.graphics.setShader(var_149_27)
		var_149_27:send("u_time", var_149_20 + (arg_149_0.x or 0) * 0.013 + (arg_149_0.y or 0) * 0.017)
		love.graphics.setBlendMode("add", "alphamultiply")
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
		love.graphics.setShader()
		love.graphics.setBlendMode(var_149_21, var_149_22)
		love.graphics.setColor(var_149_23, var_149_24, var_149_25, var_149_26)
	end

	var_0_149(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	var_0_147(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)

	local var_149_28 = arg_149_0.dying and arg_149_0.reviving or arg_149_0.revivedAlready
	local var_149_29 = _G.frameCount or 0

	if arg_149_0._lastOverdrivePostFrame == var_149_29 then
		if not arg_149_0._useManualCleanup and arg_149_0._render2Pushed then
			love.graphics.pop()

			arg_149_0._render2Pushed = false
		end

		return
	end

	arg_149_0._lastOverdrivePostFrame = var_149_29

	var_0_145(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	var_0_150(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_6, arg_149_7, arg_149_8, arg_149_9)

	if arg_149_0._victorySignalFX or arg_149_0._victorySignalT or arg_149_0.skill and arg_149_0.skill.kind == "VictorySignal" then
		require("src.ui.effects").victory_signal.draw(arg_149_0, var_0_134(arg_149_0, arg_149_1), arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	end

	if arg_149_0.skill and arg_149_0.skill.kind == "CallOfThePlains" then
		require("src.ui.effects").call_of_the_plains.draw(arg_149_0, var_0_134(arg_149_0, arg_149_1), arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	end

	if arg_149_0.skill and arg_149_0.skill.kind == "SpearCyclone" then
		require("src.ui.effects").spear_cyclone.draw(arg_149_0, var_0_134(arg_149_0, arg_149_1), arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	end

	if arg_149_0.skill and arg_149_0.skill.kind == "CrushingCounter" then
		require("src.ui.effects").crushing_counter.draw(arg_149_0, var_0_134(arg_149_0, arg_149_1), arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	end

	if arg_149_0.skill and arg_149_0.skill.kind == "BurstThrust" then
		require("src.ui.effects").burst_thrust.draw(arg_149_0, var_0_134(arg_149_0, arg_149_1), arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	end

	if arg_149_0.skill and arg_149_0.skill.kind == "ShatterCannon" then
		require("src.ui.effects").shatter_cannon.drawCharge(arg_149_0, var_0_134(arg_149_0, arg_149_1), arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	end

	if var_149_28 then
		local var_149_30, var_149_31, var_149_32, var_149_33 = love.graphics.getColor()

		love.graphics.setColor(1, 1, 1, 1)

		local var_149_34 = arg_149_0.grade or "normal"
		local var_149_35 = var_0_105[var_149_34]
		local var_149_36 = arg_149_0.sym or arg_149_0.symbol
		local var_149_37 = var_149_36 == "W" or var_149_36 == "S" or var_149_36 == "A" or var_149_36 == "H" or var_149_36 == "M" or var_149_36 == "D"
		local var_149_38 = false

		if var_149_37 and var_149_35 then
			local var_149_39 = var_0_104()

			love.graphics.setShader(var_149_39)

			var_149_38 = true

			if var_149_36 == "D" then
				var_149_39:send("u_swapClothesH", true)
				var_149_39:send("u_srcClothesH", {
					0.596,
					0.847,
					0.973
				})
				var_149_39:send("u_dstClothesH", var_149_35.clothesH or var_149_35.clothes)

				if var_149_35.cloakH then
					var_149_39:send("u_swapCloak", true)
					var_149_39:send("u_srcCloakH", {
						0.816,
						0.063,
						0
					})
					var_149_39:send("u_srcCloakC", {
						0.565,
						0.063,
						0
					})
					var_149_39:send("u_dstCloakH", var_149_35.cloakH)
					var_149_39:send("u_dstCloakC", var_149_35.cloak)
				else
					var_149_39:send("u_swapCloak", false)
				end
			else
				var_149_39:send("u_swapClothesH", false)
				var_149_39:send("u_swapCloak", false)
			end

			var_149_39:send("u_srcClothes", {
				0.376,
				0.596,
				0.91
			})
			var_149_39:send("u_srcShadow", {
				0.251,
				0.345,
				0.753
			})
			var_149_39:send("u_dstClothes", var_149_35.clothes)
			var_149_39:send("u_dstShadow", var_149_35.shadow)

			if var_149_35.ironHighlight then
				var_149_39:send("u_swapIron", true)
				var_149_39:send("u_srcIronH", {
					0.71,
					0.839,
					0.871
				})
				var_149_39:send("u_srcIronC", {
					0.549,
					0.678,
					0.776
				})
				var_149_39:send("u_srcIronS", {
					0.353,
					0.482,
					0.58
				})
				var_149_39:send("u_dstIronH", var_149_35.ironHighlight)
				var_149_39:send("u_dstIronC", var_149_35.ironColor)
				var_149_39:send("u_dstIronS", var_149_35.ironShadow)
			else
				var_149_39:send("u_swapIron", false)
			end

			var_149_39:send("u_tolerance", 0.01)
			var_149_39:send("u_judgementActive", false)

			if var_149_39:hasUniform("u_poisonStrength") then
				var_149_39:send("u_poisonStrength", 0)
			end

			if var_149_39:hasUniform("u_chillStrength") then
				var_149_39:send("u_chillStrength", 0)
			end
		end

		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8, arg_149_9)

		if var_149_38 then
			love.graphics.setShader()
		end

		if not arg_149_0._twinStarBarrierActive and arg_149_0.hitFlash and arg_149_0.hitFlash.t and arg_149_0.hitFlash.t < (arg_149_0.hitFlash.dur or 0.16) then
			local var_149_40 = (1 - math.max(0, math.min(1, arg_149_0.hitFlash.t / (arg_149_0.hitFlash.dur or 0.16)))) * (var_0_2 and var_0_2.ui and var_0_2.ui.battle and var_0_2.ui.battle.hitFlashMaxAlpha or 0.6)
			local var_149_41 = var_0_94()

			if var_149_41 then
				local var_149_42 = arg_149_0.hitFlash.color
				local var_149_43 = 1
				local var_149_44 = 1
				local var_149_45 = 1
				local var_149_46 = 1

				if type(var_149_42) == "table" then
					var_149_43 = var_149_42[1] or var_149_43
					var_149_44 = var_149_42[2] or var_149_44
					var_149_45 = var_149_42[3] or var_149_45
					var_149_46 = var_149_42[4] or var_149_46
				end

				love.graphics.setShader(var_149_41)
				var_149_41:send("u_color", {
					var_149_43,
					var_149_44,
					var_149_45,
					var_149_40 * var_149_46
				})
				love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
				love.graphics.setShader()
			end
		end

		var_0_138(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
		love.graphics.setColor(var_149_30, var_149_31, var_149_32, var_149_33)
	end

	local var_149_47 = _G.ui
	local var_149_48 = false

	if var_149_47 and var_149_47.tooltip and var_149_47.tooltip.isHighlighted then
		if var_149_47.tooltip:isHighlighted(arg_149_0.isEnemy and "enemy" or "ally", arg_149_0) then
			var_149_48 = true
		elseif var_149_47.tooltip:isHighlighted("roster", arg_149_0) then
			var_149_48 = true
		end
	end

	if var_149_48 then
		local var_149_49 = arg_149_0.grade or "normal"
		local var_149_50 = {
			1,
			1,
			1,
			1
		}
		local var_149_51 = false

		if var_149_47.tooltip and var_149_47.tooltip._heldRef == arg_149_0 and var_149_47.tooltip._predTarget then
			var_149_51 = true
		end

		if var_149_51 then
			var_149_50 = {
				0.7,
				0.4,
				1,
				1
			}
		elseif arg_149_0.jackpot5th == true then
			var_149_50 = {
				prism = true
			}
		elseif var_149_49 == "advanced" then
			var_149_50 = {
				0.5,
				1,
				0.6,
				1
			}
		elseif var_149_49 == "rare" then
			var_149_50 = {
				0.5,
				0.8,
				1,
				1
			}
		elseif var_149_49 == "legendary" then
			var_149_50 = {
				1,
				0.9,
				0.4,
				1
			}
		end

		if var_149_47.tooltip.drawOutlineImage then
			var_149_47.tooltip:drawOutlineImage(arg_149_1, arg_149_3, arg_149_4, arg_149_6, arg_149_7, arg_149_8, arg_149_9, var_149_50, false, nil, nil, nil, nil, nil, arg_149_2, arg_149_0, var_0_134(arg_149_0, arg_149_1))
		end
	end

	if arg_149_0.reviving and not (arg_149_0.hitFlash and arg_149_0.hitFlash.t < (arg_149_0.hitFlash.dur or 0.16)) then
		local var_149_52 = love.timer.getTime()
		local var_149_53 = math.sin(var_149_52 * 22) * 0.5 + 0.5
		local var_149_54 = 0.2 + (arg_149_0.anim and arg_149_0.anim.reverse and 0.6 or 0.4) * var_149_53

		love.graphics.setBlendMode("add")

		local var_149_55 = 0.85 + 0.15 * love.math.noise(var_149_52 * 15)

		love.graphics.setColor(var_149_55, var_149_55, var_149_55 * 0.8, var_149_54)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
		love.graphics.setBlendMode("alpha")
	end

	if arg_149_0._overdriveActive then
		local var_149_56 = arg_149_0._overdriveAuraT or 0
		local var_149_57 = 0.28 + 0.42 * (math.sin(var_149_56 * 18) * 0.5 + 0.5)

		love.graphics.setBlendMode("add")
		love.graphics.setColor(1, 0.32, 0, var_149_57)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8 or 0, arg_149_9 or 0)
		love.graphics.setBlendMode("alpha")
	end

	if (arg_149_0.enlargeScale or 0) > 1.001 then
		local var_149_58 = love.timer.getTime()
		local var_149_59 = 0.05 + 0.15 * (math.sin(var_149_58 * 5) * 0.5 + 0.5)

		love.graphics.setBlendMode("add")
		love.graphics.setColor(1, 0.84, 0, var_149_59)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8 or 0, arg_149_9 or 0)
		love.graphics.setBlendMode("alpha")
	end

	var_0_141(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	var_0_142(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_6, arg_149_7, arg_149_8, arg_149_9)

	if arg_149_0.side == "enemy" and var_0_54 > 0 then
		local var_149_60, var_149_61, var_149_62, var_149_63 = arg_149_2:getViewport()
		local var_149_64 = var_149_62 / 2
		local var_149_65 = var_149_63 / 2
		local var_149_66 = 0
		local var_149_67 = var_0_134(arg_149_0, arg_149_1)
		local var_149_68 = var_149_67 and var_149_67.quads and var_149_67.quads.idle and var_149_67.quads.idle[1] or arg_149_2
		local var_149_69, var_149_70, var_149_71 = var_0_135(var_149_67, var_149_68)

		if var_149_69 then
			local var_149_72

			var_149_64, var_149_72, var_149_66 = var_149_69, var_149_70, var_149_71
		end

		local var_149_73 = arg_149_3 + (var_149_64 - (arg_149_8 or 0)) * arg_149_6
		local var_149_74 = arg_149_4 + (var_149_66 - (arg_149_9 or 0)) * arg_149_7

		love.graphics.setLineStyle("smooth")

		for iter_149_0 = 1, 2 do
			local var_149_75 = 0.85
			local var_149_76 = (iter_149_0 - 1) * 0.5
			local var_149_77 = (arg_149_0.id or 0) * 0.1
			local var_149_78 = math.fmod(var_0_55 * var_149_75 + var_149_76 + var_149_77, 1)
			local var_149_79 = math.sin(var_149_78 * math.pi) * 0.8
			local var_149_80 = var_149_73 + (iter_149_0 - 1.5) * 10
			local var_149_81 = var_149_74 - 14 + var_149_78 * 15

			love.graphics.setColor(1, 0.35, 0.35, var_149_79)

			local var_149_82 = 1.2
			local var_149_83 = 3.5
			local var_149_84 = 5
			local var_149_85 = 3

			love.graphics.rectangle("fill", var_149_80 - var_149_82 / 2, var_149_81 - var_149_83 - var_149_85, var_149_82, var_149_83)
			love.graphics.polygon("fill", var_149_80 - var_149_84 / 2, var_149_81 - var_149_85, var_149_80 + var_149_84 / 2, var_149_81 - var_149_85, var_149_80, var_149_81)
		end

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.setLineStyle("rough")
		love.graphics.setBlendMode("alpha")
	end

	local var_149_86 = arg_149_0.poison

	if var_149_86 and (var_149_86.dur or 0) > 0 or (arg_149_0._poisonVisualT or 0) > 0 then
		local var_149_87 = love.timer.getTime()
		local var_149_88 = math.abs(arg_149_6 or 1)
		local var_149_89 = math.abs(arg_149_7 or 1)
		local var_149_90 = 0.2 + 0.3 * (math.sin(var_149_87 * 8) * 0.5 + 0.5)
		local var_149_91 = var_0_60()

		love.graphics.setShader(var_149_91)

		local var_149_92 = math.min(1, (var_149_86 and var_149_86.stacks or 1) / 3)
		local var_149_93 = 1 - 0.95 * var_149_92
		local var_149_94 = 1 - 0.25 * var_149_92
		local var_149_95 = 1 - 0.95 * var_149_92

		var_149_91:send("u_tint", {
			var_149_93,
			var_149_94,
			var_149_95
		})
		love.graphics.setBlendMode("multiply", "premultiplied")
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8 or 0, arg_149_9 or 0)
		love.graphics.setShader()
		love.graphics.setBlendMode("add")
		love.graphics.setColor(0.02, 0.25 * var_149_92, 0.02, var_149_90)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8 or 0, arg_149_9 or 0)

		local var_149_96, var_149_97, var_149_98 = var_0_144(arg_149_0, arg_149_2, arg_149_6, arg_149_7)
		local var_149_99 = 4
		local var_149_100 = (var_149_98 or var_149_88 * 20) * 0.45

		for iter_149_1 = 1, var_149_99 do
			local var_149_101 = (var_149_87 * 0.55 + iter_149_1 * 0.25) % 1
			local var_149_102 = var_149_96 + math.sin(iter_149_1 * 15 + var_149_87 * 2.5) * var_149_100
			local var_149_103 = var_149_97 - var_149_101 * 22 * var_149_89
			local var_149_104 = math.max(1.5, math.floor(3 * (1 - var_149_101) * var_149_88 + 0.5))

			love.graphics.setColor(0.1, 0.8, 0.1, 0.7 * (1 - var_149_101))
			love.graphics.circle("fill", var_149_102, var_149_103, var_149_104 * 0.5)
			love.graphics.setColor(0.4, 1, 0.4, 0.5 * (1 - var_149_101))
			love.graphics.circle("fill", var_149_102, var_149_103, var_149_104 * 0.2)
		end

		love.graphics.setBlendMode("alpha")
	end

	if arg_149_0.poisonHitFlash and not arg_149_0._twinStarBarrierActive then
		local var_149_105 = 0.8 * (1 - var_0_8(arg_149_0.poisonHitFlash.t / arg_149_0.poisonHitFlash.dur, 0, 1))
		local var_149_106 = var_0_94()

		if var_149_106 then
			love.graphics.setShader(var_149_106)
			var_149_106:send("u_color", {
				0.1,
				1,
				0.1,
				var_149_105
			})
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8 or 0, arg_149_9 or 0)
			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
		end
	end

	if arg_149_0.bleedHitFlash and not arg_149_0._twinStarBarrierActive then
		local var_149_107 = 0.8 * (1 - var_0_8(arg_149_0.bleedHitFlash.t / arg_149_0.bleedHitFlash.dur, 0, 1))
		local var_149_108 = var_0_94()

		if var_149_108 then
			love.graphics.setShader(var_149_108)
			var_149_108:send("u_color", {
				0.95,
				0.02,
				0.1,
				var_149_107
			})
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8 or 0, arg_149_9 or 0)
			love.graphics.setShader()
			love.graphics.setBlendMode("alpha")
		end
	end

	local var_149_109
	local var_149_110

	if arg_149_0.selfDestructing and arg_149_0.selfDestructT and arg_149_0.selfDestructDur then
		var_149_109 = var_0_8(arg_149_0.selfDestructT / math.max(0.001, arg_149_0.selfDestructDur), 0, 1) * 0.95
		var_149_110 = 0.8
	elseif arg_149_0.dying and (tonumber(arg_149_0.impExplosionDamage) or 0) > 0 then
		local var_149_111 = math.max(0.001, tonumber(arg_149_0.impExplosionDelay) or 0.25)
		local var_149_112 = math.max(0, tonumber(arg_149_0.deathT) or 0)

		if not arg_149_0._impExplosionTriggered then
			var_149_109 = 0.15 + 0.85 * var_0_8(var_149_112 / var_149_111, 0, 1)
		else
			var_149_109 = var_0_8(1 - (var_149_112 - var_149_111) / 0.12, 0, 1)
		end

		var_149_110 = 1
	end

	if var_149_109 and var_149_109 > 0 then
		local var_149_113 = var_0_94()

		if var_149_113 then
			love.graphics.push("all")
			love.graphics.setShader(var_149_113)
			var_149_113:send("u_color", {
				1,
				1,
				var_149_110,
				var_149_109
			})
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, arg_149_8 or 0, arg_149_9 or 0)
			love.graphics.pop()
		end
	end

	if require("src.ui.effects").frost_freeze.active(arg_149_0) then
		require("src.ui.effects").frost_freeze.draw(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6, arg_149_7, arg_149_8, arg_149_9)
	end

	if arg_149_0 and (arg_149_0.stunT or 0) > 0 and not require("src.ui.effects").frost_freeze.active(arg_149_0) then
		local var_149_114, var_149_115, var_149_116, var_149_117 = love.graphics.getColor()
		local var_149_118 = arg_149_8 or 0
		local var_149_119 = arg_149_9 or 0

		love.graphics.setColor(0.55, 0.55, 0.7, 0.6 * var_149_117)
		love.graphics.draw(arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5 or 0, arg_149_6, arg_149_7, var_149_118, var_149_119)

		local var_149_120 = love.timer.getTime() * 5
		local var_149_121, var_149_122, var_149_123, var_149_124 = arg_149_2:getViewport()
		local var_149_125

		var_149_125 = var_149_124 or 32

		local var_149_126 = math.abs(arg_149_7 or 1)
		local var_149_127 = arg_149_4 - var_149_119 * arg_149_7 - 6
		local var_149_128 = arg_149_0 and (arg_149_0.subclass == "플레어" or arg_149_0.subclassName == "플레어") and -2 or 0
		local var_149_129

		if arg_149_0 and arg_149_0.x then
			var_149_129 = math.floor(arg_149_0.x + var_149_128 + 0.5)
		else
			var_149_129 = arg_149_3 - var_149_118 * arg_149_6 + var_149_123 * 0.5 * arg_149_6
		end

		love.graphics.setColor(1, 0.9, 0.2, var_149_117)

		local var_149_130 = 14
		local var_149_131 = 5

		for iter_149_2 = 0, 2 do
			local var_149_132 = var_149_120 + iter_149_2 * (math.pi * 2 / 3)
			local var_149_133 = var_149_129 + math.cos(var_149_132) * var_149_130
			local var_149_134 = var_149_127 + math.sin(var_149_132) * var_149_131

			love.graphics.polygon("fill", var_149_133, var_149_134 - 3, var_149_133 + 2, var_149_134, var_149_133, var_149_134 + 3, var_149_133 - 2, var_149_134)
		end

		love.graphics.setColor(var_149_114, var_149_115, var_149_116, var_149_117)
	end

	if arg_149_0.sym == "W" and arg_149_0.invuln and not arg_149_0.dying and var_0_58(arg_149_0, "amplify") then
		local var_149_135 = arg_149_0.subclassName == "기사" or arg_149_0.subclass == "MiniSwordMan03" or arg_149_0.subclassKey == "MiniSwordMan03"

		if not arg_149_0._amplifyShieldStampStart then
			arg_149_0._amplifyShieldStampStart = love.timer.getTime()
		end

		local var_149_136, var_149_137, var_149_138, var_149_139 = arg_149_2:getViewport()
		local var_149_140 = love.timer.getTime()
		local var_149_141 = var_149_140 - arg_149_0._amplifyShieldStampStart
		local var_149_142 = 0.35
		local var_149_143 = 1

		if var_149_141 < var_149_142 then
			local var_149_144 = var_149_141 / var_149_142

			var_149_143 = 1 + math.exp(-var_149_144 * 8) * 0.7
		end

		local var_149_145 = 0

		if var_149_141 < 0.55 then
			var_149_145 = (1 - var_149_141 / 0.55) * 0.65
		end

		local var_149_146 = 0.55 + 0.2 * math.sin(var_149_140 * 6)
		local var_149_147 = var_149_138 * var_149_0
		local var_149_148 = var_149_139 * var_149_1
		local var_149_149 = arg_149_6 >= 0 and 1 or -1
		local var_149_150 = arg_149_3 + (var_149_138 * 0.5 - (arg_149_8 or 0)) * arg_149_6
		local var_149_151 = arg_149_4 + (var_149_139 * 0.42 - (arg_149_9 or 0)) * arg_149_7
		local var_149_152 = var_149_150 + var_149_149 * var_149_147 * 0.12
		local var_149_153 = var_149_151 + var_149_148 * 0.42
		local var_149_154 = 1
		local var_149_155 = arg_149_0.imprints or arg_149_0.imps or arg_149_0.unit and (arg_149_0.unit.imprints or arg_149_0.unit.imps)

		if var_149_155 then
			for iter_149_3, iter_149_4 in pairs(var_149_155) do
				if iter_149_4 and iter_149_4.id == "amplify" then
					var_149_154 = tonumber(iter_149_4.level) or 1

					break
				end
			end
		end

		local var_149_156 = 1 + (var_149_154 - 1) * 0.1
		local var_149_157 = var_149_147 * 0.05 * var_149_143 * var_149_156
		local var_149_158 = var_149_148 * 0.24 * var_149_143 * var_149_156
		local var_149_159 = {
			var_149_152 - var_149_157,
			var_149_153 - var_149_158,
			var_149_152 + var_149_157,
			var_149_153 - var_149_158,
			var_149_152 + var_149_157,
			var_149_153 + var_149_158 * 0.65,
			var_149_152 - var_149_157,
			var_149_153 + var_149_158 * 0.5
		}

		love.graphics.setBlendMode("alpha")

		if var_149_135 then
			local var_149_160 = {
				var_149_152 - var_149_157,
				var_149_153 - var_149_158,
				var_149_152 + var_149_157,
				var_149_153 - var_149_158,
				var_149_152 + var_149_157,
				var_149_153 + var_149_158 * 0.6,
				var_149_152,
				var_149_153 + var_149_158 * 0.82,
				var_149_152 - var_149_157,
				var_149_153 + var_149_158 * 0.6
			}
			local var_149_161 = 0.75 + var_149_146 * 0.25

			love.graphics.setColor(1, 0.78, 0.78, var_149_161)
			love.graphics.polygon("fill", var_149_160)

			if var_149_145 > 0 then
				love.graphics.setColor(1, 0.88, 0.88, var_149_145)
				love.graphics.polygon("fill", var_149_160)
			end
		else
			love.graphics.setColor(1, 1, 1, 0.7 + var_149_146 * 0.3)
			love.graphics.polygon("fill", var_149_159)

			if var_149_145 > 0 then
				love.graphics.setColor(1, 1, 1, var_149_145)
				love.graphics.polygon("fill", var_149_159)
			end
		end

		love.graphics.setColor(1, 1, 1, 1)
	else
		arg_149_0._amplifyShieldStampStart = nil
	end

	if not arg_149_0._useManualCleanup and arg_149_0._render2Pushed then
		love.graphics.pop()

		arg_149_0._render2Pushed = false
	end
end

function var_0_0.drawRosterSpawnScreenEdgeGlow(arg_150_0, arg_150_1)
	if not arg_150_0 or not arg_150_0.rosterUnits then
		return
	end

	local var_150_0
	local var_150_1 = -1

	for iter_150_0, iter_150_1 in ipairs(arg_150_0.rosterUnits) do
		if iter_150_1 and iter_150_1.firstSpawnSheetFx then
			local var_150_2 = iter_150_1.firstSpawnSheetFx
			local var_150_3 = var_150_2.frameDur or 0.0875
			local var_150_4 = math.max(1, var_150_2.frames or 8)
			local var_150_5 = math.max(0.0001, var_150_3 * var_150_4)
			local var_150_6 = var_0_8((var_150_2.t or 0) / var_150_5, 0, 1)
			local var_150_7 = math.sin(math.pi * var_150_6)

			if var_150_1 < var_150_7 then
				var_150_1 = var_150_7
				var_150_0 = iter_150_1
			end
		end
	end

	if not var_150_0 or var_150_1 < 0.03 then
		return
	end

	local var_150_8 = arg_150_1 and arg_150_1.battle and arg_150_1.battle.absorb or arg_150_1 and arg_150_1.absorb or {}
	local var_150_9 = var_150_0.grade == "prism"
	local var_150_10 = var_0_61(var_150_0.grade)
	local var_150_11 = var_150_10.hi[1] * 0.32 + var_150_10.glow[1] * 0.68
	local var_150_12 = var_150_10.hi[2] * 0.32 + var_150_10.glow[2] * 0.68
	local var_150_13 = var_150_10.hi[3] * 0.32 + var_150_10.glow[3] * 0.68

	if var_150_9 then
		var_150_11, var_150_12, var_150_13 = 0.74, 0.48, 1
	end

	local var_150_14 = arg_150_1 and arg_150_1.virtual and arg_150_1.virtual.W
	local var_150_15 = arg_150_1 and arg_150_1.virtual and arg_150_1.virtual.H

	if not var_150_14 or not var_150_15 then
		var_150_14, var_150_15 = love.graphics.getDimensions()
	end

	local var_150_16 = math.floor(var_150_14 + 0.5)
	local var_150_17 = math.floor(var_150_15 + 0.5)
	local var_150_18 = var_0_78(var_150_16, var_150_17)

	if not var_150_18 then
		return
	end

	local var_150_19 = var_150_18:getWidth()
	local var_150_20 = var_150_18:getHeight()

	if var_150_19 <= 0 or var_150_20 <= 0 then
		return
	end

	local var_150_21 = 2
	local var_150_22 = -var_150_21
	local var_150_23 = -var_150_21
	local var_150_24 = (var_150_16 + var_150_21 * 2) / var_150_16
	local var_150_25 = (var_150_17 + var_150_21 * 2) / var_150_17
	local var_150_26 = (var_150_8.glowMaxRadiusPx or 15) + 16
	local var_150_27 = math.max(1.5, (var_150_8.glowFalloff or 1) * 1.55)
	local var_150_28 = (var_150_8.glowAlpha or 0.9) * var_150_1 * 1.12
	local var_150_29 = (var_150_8.innerTintAlpha or 0.25) * var_150_1 * 1.1
	local var_150_30 = var_0_80(var_150_16, var_150_17, var_150_26, var_150_27)

	if not var_150_30 then
		return
	end

	local var_150_31, var_150_32 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setShader()
	love.graphics.setColor(var_150_11, var_150_12, var_150_13, var_150_29)
	love.graphics.draw(var_150_18, var_150_22, var_150_23, 0, var_150_24, var_150_25)
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.setBlendMode("add", "alphamultiply")

	local var_150_33 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_150_34 = var_150_8.glowPulseHz or 1.2
	local var_150_35 = 0.6 + 0.4 * (math.sin(2 * math.pi * var_150_34 * var_150_33) * 0.5 + 0.5)
	local var_150_36 = var_150_9 and var_0_64() or nil

	if var_150_36 then
		love.graphics.setShader(var_150_36)
		var_150_36:send("u_time", var_150_33 % 10000)
		var_150_36:send("baseAlpha", var_150_28)
		var_150_36:send("pulse", var_150_35)
		love.graphics.setColor(1, 1, 1, 1)
	else
		love.graphics.setShader()
		love.graphics.setColor(var_150_11, var_150_12, var_150_13, var_150_28 * var_150_35)
	end

	love.graphics.draw(var_150_30, var_150_22, var_150_23, 0, var_150_24, var_150_25)
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.setShader()

	if var_150_32 ~= nil then
		love.graphics.setBlendMode(var_150_31, var_150_32)
	else
		love.graphics.setBlendMode(var_150_31)
	end
end

function var_0_0.drawOverdriveState(arg_151_0, arg_151_1, arg_151_2)
	if not arg_151_1 or not arg_151_1.allies then
		return
	end

	for iter_151_0, iter_151_1 in ipairs(var_0_11) do
		if iter_151_1.type == "slice" then
			local var_151_0 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_1 = 0.9 * (1 - var_151_0 * var_151_0)
			local var_151_2 = 24 + var_151_0 * 12
			local var_151_3 = 7 * (1 - var_151_0)

			love.graphics.push()
			love.graphics.translate(iter_151_1.x, iter_151_1.y)
			love.graphics.setBlendMode("add")
			;(function(arg_152_0)
				love.graphics.push()
				love.graphics.rotate(arg_152_0)
				love.graphics.setColor(0.5, 0.05, 0.8, var_151_1 * 0.4)
				love.graphics.polygon("fill", -var_151_2 / 2, 0, 0, -var_151_3 / 1.2, var_151_2 / 2, 0, 0, var_151_3 / 1.2)
				love.graphics.setColor(0.7, 0.15, 0.95, var_151_1)
				love.graphics.polygon("fill", -var_151_2 / 2.2, 0, 0, -var_151_3 / 2.5, var_151_2 / 2.2, 0, 0, var_151_3 / 2.5)
				love.graphics.setColor(1, 1, 1, var_151_1 * 0.9)
				love.graphics.rectangle("fill", math.floor(-var_151_2 / 2 + 0.5), -0.5, math.floor(var_151_2 + 0.5), 1)
				love.graphics.pop()
			end)(-math.pi * 0.25)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_151_1.type == "soul_extract" then
			local var_151_4 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_5 = 1 - var_151_4 * var_151_4
			local var_151_6 = var_151_4 < 0.2 and var_151_4 / 0.2 or (1 - (var_151_4 - 0.2) / 0.8)^2
			local var_151_7 = math.floor(20 * var_151_6 + 0.5)
			local var_151_8 = math.floor(4 * var_151_6 + 0.5)

			love.graphics.push()
			love.graphics.translate(iter_151_1.x, iter_151_1.y)
			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.5, 0.05, 0.8, var_151_5 * 0.4)
			love.graphics.polygon("fill", -var_151_7 * 1.2, 0, 0, -var_151_8 * 1.5, var_151_7 * 1.2, 0, 0, var_151_8 * 1.5)
			love.graphics.setColor(0.75, 0.25, 1, var_151_5)
			love.graphics.polygon("fill", -var_151_7, 0, 0, -var_151_8, var_151_7, 0, 0, var_151_8)
			love.graphics.polygon("fill", -var_151_8, 0, 0, -var_151_7 * 0.6, var_151_8, 0, 0, var_151_7 * 0.6)
			love.graphics.setColor(1, 1, 1, var_151_5 * 0.9)

			local var_151_9 = math.floor(3 * var_151_6 + 0.5)

			love.graphics.rectangle("fill", -var_151_9, 0, var_151_9 * 2, 1)
			love.graphics.rectangle("fill", 0, -var_151_9, 1, var_151_9 * 2)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_151_1.type == "knockback" then
			local var_151_10 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_11 = 0.9 * (1 - var_151_10)
			local var_151_12 = math.floor(1 + var_151_10 * 10 + 0.5)
			local var_151_13 = math.floor(iter_151_1.x + 0.5)
			local var_151_14 = math.floor(iter_151_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.5, 0.7, 1, var_151_11)
			love.graphics.rectangle("fill", var_151_13 - var_151_12, var_151_14, var_151_12 * 2, 1)
			love.graphics.rectangle("fill", var_151_13, var_151_14 - var_151_12, 1, var_151_12 * 2)

			local var_151_15 = math.floor(var_151_12 * 0.4 + 0.5)

			love.graphics.setColor(1, 1, 1, var_151_11)
			love.graphics.rectangle("fill", var_151_13 - var_151_15, var_151_14, var_151_15 * 2, 1)
			love.graphics.rectangle("fill", var_151_13, var_151_14 - var_151_15, 1, var_151_15 * 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "bash" then
			local var_151_16 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_17 = 1 * (1 - var_151_16)
			local var_151_18 = math.floor(1 + var_151_16 * 8 + 0.5)
			local var_151_19 = math.floor(iter_151_1.x + 0.5)
			local var_151_20 = math.floor(iter_151_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 0.9, 0.3, var_151_17)
			love.graphics.rectangle("fill", var_151_19 - var_151_18, var_151_20, var_151_18 * 2, 1)
			love.graphics.rectangle("fill", var_151_19, var_151_20 - var_151_18, 1, var_151_18 * 2)
			love.graphics.rectangle("fill", var_151_19 - var_151_18 + 2, var_151_20 - var_151_18 + 2, 1, 1)
			love.graphics.rectangle("fill", var_151_19 + var_151_18 - 2, var_151_20 - var_151_18 + 2, 1, 1)
			love.graphics.rectangle("fill", var_151_19 - var_151_18 + 2, var_151_20 + var_151_18 - 2, 1, 1)
			love.graphics.rectangle("fill", var_151_19 + var_151_18 - 2, var_151_20 + var_151_18 - 2, 1, 1)
			love.graphics.setColor(1, 1, 1, var_151_17)
			love.graphics.rectangle("fill", var_151_19 - 1, var_151_20 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "bleed_slash" then
			local var_151_21 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_22 = 0.9 * (1 - var_151_21 * var_151_21)
			local var_151_23 = 24 + var_151_21 * 12
			local var_151_24 = 7 * (1 - var_151_21)

			love.graphics.push()
			love.graphics.translate(iter_151_1.x, iter_151_1.y)
			love.graphics.setBlendMode("add")

			local function var_151_25(arg_153_0)
				love.graphics.push()
				love.graphics.rotate(arg_153_0)
				love.graphics.setColor(1, 0.05, 0.15, var_151_22 * 0.4)
				love.graphics.polygon("fill", -var_151_23 / 2, 0, 0, -var_151_24 / 1.2, var_151_23 / 2, 0, 0, var_151_24 / 1.2)
				love.graphics.setColor(1, 0.15, 0.25, var_151_22)
				love.graphics.polygon("fill", -var_151_23 / 2.2, 0, 0, -var_151_24 / 2.5, var_151_23 / 2.2, 0, 0, var_151_24 / 2.5)
				love.graphics.setColor(1, 1, 1, var_151_22 * 0.9)
				love.graphics.rectangle("fill", math.floor(-var_151_23 / 2 + 0.5), -0.5, math.floor(var_151_23 + 0.5), 1)
				love.graphics.pop()
			end

			var_151_25(math.pi * 0.25)
			var_151_25(-math.pi * 0.25)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_151_1.type == "bleed_tick" then
			local var_151_26 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_27 = 1 * (1 - var_151_26)
			local var_151_28 = math.floor(2 + var_151_26 * 5 + 0.5)
			local var_151_29 = math.floor(iter_151_1.x + 0.5)
			local var_151_30 = math.floor(iter_151_1.y + var_151_26 * 3 + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 0.05, 0.1, var_151_27 * 0.9)
			love.graphics.rectangle("fill", var_151_29 - var_151_28, var_151_30, var_151_28 * 2, 1)
			love.graphics.rectangle("fill", var_151_29, var_151_30 - var_151_28, 1, var_151_28 * 2)
			love.graphics.setColor(1, 0.6, 0.6, var_151_27)
			love.graphics.rectangle("fill", var_151_29 - 1, var_151_30 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "poison_tick" then
			local var_151_31 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_32 = 1 * (1 - var_151_31)
			local var_151_33 = math.floor(3 + var_151_31 * 6 + 0.5)
			local var_151_34 = math.floor(iter_151_1.x + 0.5)
			local var_151_35 = math.floor(iter_151_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0, 1, 0, var_151_32 * 0.9)
			love.graphics.rectangle("fill", var_151_34 - var_151_33, var_151_35, var_151_33 * 2, 1)
			love.graphics.rectangle("fill", var_151_34, var_151_35 - var_151_33, 1, var_151_33 * 2)
			love.graphics.setColor(0.9, 1, 0.9, var_151_32)
			love.graphics.rectangle("fill", var_151_34 - 1, var_151_35 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "blood_surge_hit" then
			local var_151_36 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_37 = 0.95 * (1 - var_151_36 * var_151_36)
			local var_151_38 = 10 + var_151_36 * 8
			local var_151_39 = 5 * (1 - var_151_36)
			local var_151_40 = math.floor(iter_151_1.x + 0.5)
			local var_151_41 = math.floor(iter_151_1.y + 0.5)

			love.graphics.push()
			love.graphics.translate(var_151_40, var_151_41)
			love.graphics.setBlendMode("add")
			love.graphics.setColor(1, 0.05, 0.1, var_151_37 * 0.5)
			love.graphics.polygon("fill", -var_151_38 / 2, 0, 0, -var_151_39 / 1.5, var_151_38 / 2, 0, 0, var_151_39 / 1.5)

			for iter_151_2, iter_151_3 in ipairs({
				math.pi * 0.22,
				-math.pi * 0.22
			}) do
				love.graphics.push()
				love.graphics.rotate(iter_151_3)
				love.graphics.setColor(1, 0.12, 0.18, var_151_37)
				love.graphics.polygon("fill", -var_151_38 / 2.2, 0, 0, -var_151_39 / 2.8, var_151_38 / 2.2, 0, 0, var_151_39 / 2.8)
				love.graphics.setColor(1, 0.85, 0.85, var_151_37 * 0.85)
				love.graphics.rectangle("fill", math.floor(-var_151_38 / 2 + 0.5), -0.5, math.floor(var_151_38 + 0.5), 1)
				love.graphics.pop()
			end

			love.graphics.setColor(1, 1, 1, var_151_37 * 0.9)
			love.graphics.rectangle("fill", var_151_40 - 1 - var_151_40, var_151_41 - 1 - var_151_41, 2, 2)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_151_1.type == "blood_price_tick" then
			local var_151_42 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_43 = 0.95 * (1 - var_151_42)
			local var_151_44 = math.floor(4 + var_151_42 * 7 + 0.5)
			local var_151_45 = math.floor(iter_151_1.x + 0.5)
			local var_151_46 = math.floor(iter_151_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.65, 0.02, 0.06, var_151_43 * 0.85)
			love.graphics.rectangle("fill", var_151_45 - var_151_44, var_151_46, var_151_44 * 2, 1)
			love.graphics.rectangle("fill", var_151_45, var_151_46 - var_151_44, 1, var_151_44 * 2)
			love.graphics.setColor(1, 0.1, 0.14, var_151_43 * 0.55)
			love.graphics.rectangle("fill", var_151_45 - var_151_44 + 1, var_151_46 - var_151_44 + 1, 1, 1)
			love.graphics.rectangle("fill", var_151_45 + var_151_44 - 1, var_151_46 - var_151_44 + 1, 1, 1)
			love.graphics.rectangle("fill", var_151_45 - var_151_44 + 1, var_151_46 + var_151_44 - 1, 1, 1)
			love.graphics.rectangle("fill", var_151_45 + var_151_44 - 1, var_151_46 + var_151_44 - 1, 1, 1)

			local var_151_47 = 4 + var_151_42 * 6

			love.graphics.setColor(0.9, 0.08, 0.1, var_151_43 * 0.35)
			love.graphics.circle("line", var_151_45, var_151_46, var_151_47)
			love.graphics.setColor(1, 0.85, 0.85, var_151_43 * 0.9)
			love.graphics.rectangle("fill", var_151_45 - 1, var_151_46 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "blood_mist" then
			local var_151_48 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_49 = (1 - var_151_48)^1.6
			local var_151_50 = iter_151_1.s or 1
			local var_151_51 = math.floor(iter_151_1.x + 0.5)
			local var_151_52 = math.floor(iter_151_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.45, 0.01, 0.03, var_151_49 * 0.85)

			local var_151_53 = (10 + 18 * var_151_48) * var_151_50

			love.graphics.circle("fill", var_151_51, var_151_52, var_151_53)
			love.graphics.setColor(1, 0.1, 0.14, var_151_49 * 0.55)

			local var_151_54 = (6 + 10 * var_151_48) * var_151_50

			love.graphics.circle("fill", var_151_51, var_151_52, var_151_54)
			love.graphics.setColor(1, 0.18, 0.2, var_151_49 * 0.55)

			local var_151_55 = (14 + 22 * var_151_48) * var_151_50

			love.graphics.rectangle("fill", var_151_51 - var_151_55, var_151_52, var_151_55 * 2, 1)
			love.graphics.rectangle("fill", var_151_51, var_151_52 - var_151_55, 1, var_151_55 * 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "blood_axe_trail" then
			local var_151_56 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_57 = 0.95 * (1 - var_151_56 * var_151_56)
			local var_151_58 = iter_151_1.x
			local var_151_59 = iter_151_1.y
			local var_151_60 = (iter_151_1.dir or 1) >= 0 and 1 or -1

			love.graphics.push()
			love.graphics.translate(var_151_58, var_151_59)
			love.graphics.setBlendMode("add")

			local var_151_61 = 64 + var_151_56 * 18
			local var_151_62 = 18 * (1 - var_151_56) + 6
			local var_151_63 = var_151_60 * (-math.pi * 0.33)

			love.graphics.rotate(var_151_63)
			love.graphics.setColor(0.2, 0, 0.02, var_151_57 * 0.55)
			love.graphics.polygon("fill", -var_151_61 / 2, 0, 0, -var_151_62, var_151_61 / 2, 0, 0, var_151_62)
			love.graphics.setColor(0.65, 0.02, 0.06, var_151_57 * 0.7)
			love.graphics.polygon("fill", -var_151_61 / 2.2, 0, 0, -var_151_62 / 1.8, var_151_61 / 2.2, 0, 0, var_151_62 / 1.8)
			love.graphics.setColor(1, 0.12, 0.16, var_151_57 * 0.4)
			love.graphics.rectangle("fill", math.floor(-var_151_61 / 2 + 0.5), -1, math.floor(var_151_61 + 0.5), 2)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_151_1.type == "blood_price_hit_x" then
			local var_151_64 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_65 = 0.98 * (1 - var_151_64 * var_151_64)
			local var_151_66 = iter_151_1.s or 1
			local var_151_67 = math.floor(iter_151_1.x + 0.5)
			local var_151_68 = math.floor(iter_151_1.y + 0.5)

			love.graphics.push()
			love.graphics.translate(var_151_67, var_151_68)
			love.graphics.setBlendMode("add")

			local var_151_69 = (30 + var_151_64 * 10) * var_151_66
			local var_151_70 = 10 * (1 - var_151_64) * var_151_66 + 2

			for iter_151_4, iter_151_5 in ipairs({
				math.pi * 0.25,
				-math.pi * 0.25
			}) do
				love.graphics.push()
				love.graphics.rotate(iter_151_5)
				love.graphics.setColor(0.25, 0, 0.02, var_151_65 * 0.45)
				love.graphics.polygon("fill", -var_151_69 / 2, 0, 0, -var_151_70, var_151_69 / 2, 0, 0, var_151_70)
				love.graphics.setColor(1, 0.06, 0.1, var_151_65 * 0.75)
				love.graphics.polygon("fill", -var_151_69 / 2.2, 0, 0, -var_151_70 / 1.8, var_151_69 / 2.2, 0, 0, var_151_70 / 1.8)
				love.graphics.setColor(1, 0.85, 0.85, var_151_65 * 0.65)
				love.graphics.rectangle("fill", math.floor(-var_151_69 / 2 + 0.5), -1, math.floor(var_151_69 + 0.5), 2)
				love.graphics.pop()
			end

			love.graphics.setColor(1, 1, 1, var_151_65 * 0.85)
			love.graphics.rectangle("fill", -2, -2, 4, 4)
			love.graphics.setBlendMode("alpha")
			love.graphics.pop()
		elseif iter_151_1.type == "ruin_tick" then
			local var_151_71 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_72 = 1 * (1 - var_151_71)
			local var_151_73 = math.floor(4 + var_151_71 * 8 + 0.5)
			local var_151_74 = math.floor(iter_151_1.x + 0.5)
			local var_151_75 = math.floor(iter_151_1.y + 0.5)

			love.graphics.setBlendMode("add")
			love.graphics.setColor(0.7, 0.1, 1, var_151_72 * 0.9)

			for iter_151_6 = -1, 1, 2 do
				for iter_151_7 = -1, 1, 2 do
					love.graphics.rectangle("fill", var_151_74 + var_151_73 * 0.3 * iter_151_6 - 1, var_151_75 + var_151_73 * 0.3 * iter_151_7 - 1, 2, 2)
				end
			end

			love.graphics.rectangle("fill", var_151_74 - var_151_73, var_151_75, var_151_73 * 2, 1)
			love.graphics.rectangle("fill", var_151_74, var_151_75 - var_151_73, 1, var_151_73 * 2)
			love.graphics.setColor(1, 0.4, 0.8, var_151_72)
			love.graphics.rectangle("fill", var_151_74 - 1, var_151_75 - 1, 2, 2)
			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "explosion" then
			if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ExplosionEffect then
				local var_151_76 = var_0_1.projectiles.ExplosionEffect
				local var_151_77 = math.floor(iter_151_1.t / iter_151_1.dur * var_151_76.frames) + 1

				if var_151_77 < 1 then
					var_151_77 = 1
				end

				if var_151_77 > var_151_76.frames then
					var_151_77 = var_151_76.frames
				end

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_151_76.image, var_151_76.quads[var_151_77], math.floor(iter_151_1.x), math.floor(iter_151_1.y), 0, 2, 2, var_151_76.frameW / 2, var_151_76.frameH / 2)
			end

			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "fire_cone" then
			if var_0_1 and var_0_1.projectiles and var_0_1.projectiles.FireCone then
				local var_151_78 = var_0_1.projectiles.FireCone
				local var_151_79 = math.floor(iter_151_1.t / iter_151_1.dur * var_151_78.frames) + 1

				if var_151_79 < 1 then
					var_151_79 = 1
				end

				if var_151_79 > var_151_78.frames then
					var_151_79 = var_151_78.frames
				end

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_151_78.image, var_151_78.quads[var_151_79], math.floor(iter_151_1.x), math.floor(iter_151_1.y + 1), 0, 2, 2, var_151_78.frameW / 2, var_151_78.frameH / 2)
			end
		elseif iter_151_1.type == "meteor" then
			if iter_151_1._drewDepth then
				iter_151_1._drewDepth = nil
			else
				require("src.ui.effects").meteor.draw(iter_151_1, true)
			end
		elseif iter_151_1.type == "chain" then
			local var_151_80 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_81 = 1 - var_151_80
			local var_151_82 = math.floor(iter_151_1.x1 + 0.5)
			local var_151_83 = math.floor(iter_151_1.y1 + 0.5)
			local var_151_84 = math.floor(iter_151_1.x2 + 0.5)
			local var_151_85 = math.floor(iter_151_1.y2 + 0.5)
			local var_151_86, var_151_87 = love.graphics.getBlendMode()
			local var_151_88 = love.graphics.getLineWidth()
			local var_151_89, var_151_90, var_151_91, var_151_92 = love.graphics.getColor()

			love.graphics.setBlendMode("add")

			local var_151_93 = var_0_8(var_151_80 / 0.35, 0, 1)
			local var_151_94 = var_0_8((var_151_80 - 0.15) / 0.35, 0, 1)
			local var_151_95 = var_151_82 + (var_151_84 - var_151_82) * var_151_93
			local var_151_96 = var_151_83 + (var_151_85 - var_151_83) * var_151_93
			local var_151_97 = var_151_82 + (var_151_84 - var_151_82) * var_151_94
			local var_151_98 = var_151_83 + (var_151_85 - var_151_83) * var_151_94
			local var_151_99 = love.timer.getTime()
			local var_151_100 = iter_151_1.x1 + iter_151_1.y1 + math.floor(var_151_80 * 15)
			local var_151_101 = math.sin(var_151_99 * 70 + var_151_100) * 1.5
			local var_151_102 = math.cos(var_151_99 * 75 + var_151_100) * 1.5

			love.graphics.setColor(1, 0.85, 0.1, var_151_81 * 0.7)
			love.graphics.setLineWidth(4)
			love.graphics.line(var_151_97, var_151_98, var_151_95 + var_151_101, var_151_96 + var_151_102)
			love.graphics.setColor(1, 1, 1, var_151_81)
			love.graphics.setLineWidth(1.8)
			love.graphics.line(var_151_97, var_151_98, var_151_95 + var_151_101, var_151_96 + var_151_102)

			if var_151_93 > 0 and var_151_93 < 1 then
				local var_151_103 = 4.5

				love.graphics.setColor(1, 1, 1, var_151_81)
				love.graphics.rectangle("fill", var_151_95 - 1.7 + var_151_101, var_151_96 - 1.7 + var_151_102, var_151_103, var_151_103)
				love.graphics.setColor(1, 0.8, 0, var_151_81 * 0.5)
				love.graphics.rectangle("fill", var_151_95 - 0.7 + var_151_101 * 0.5, var_151_96 - 0.7 + var_151_102 * 0.5, 3, 3)
			end

			if var_151_93 >= 1 then
				local var_151_104 = 0.5
				local var_151_105 = var_0_8((var_151_80 - 0.35) / var_151_104, 0, 1)

				if var_151_105 < 1 then
					local var_151_106 = 1 - (1 - var_151_105) * (1 - var_151_105)
					local var_151_107 = math.floor((1 - var_151_106) * 12 + 0.5)

					love.graphics.setColor(1, 1, 1, (1 - var_151_106) * var_151_81)

					if var_151_107 > 0 then
						love.graphics.rectangle("fill", var_151_84 - var_151_107 / 2, var_151_85 - var_151_107 / 2, var_151_107, var_151_107)
					end

					local var_151_108 = math.floor((1 - var_151_106) * 8 + 0.5)

					if var_151_108 > 0 then
						love.graphics.line(var_151_84 - var_151_108, var_151_85 - var_151_108, var_151_84 + var_151_108, var_151_85 + var_151_108)
						love.graphics.line(var_151_84 + var_151_108, var_151_85 - var_151_108, var_151_84 - var_151_108, var_151_85 + var_151_108)
					end
				end
			end

			if var_151_87 ~= nil then
				love.graphics.setBlendMode(var_151_86, var_151_87)
			else
				love.graphics.setBlendMode(var_151_86)
			end

			love.graphics.setLineWidth(var_151_88 or 1)
			love.graphics.setColor(var_151_89, var_151_90, var_151_91, var_151_92)
		elseif iter_151_1.type == "execute" then
			if iter_151_1.icon then
				love.graphics.setColor(1, 1, 1, 1)

				local var_151_109 = iter_151_1.t
				local var_151_110 = iter_151_1.dur
				local var_151_111 = 2
				local var_151_112 = var_151_111
				local var_151_113 = 0.5
				local var_151_114 = 0

				if var_151_109 < 0.15 then
					var_151_112 = var_151_111 * (0.5 + var_151_109 / 0.15 * 0.7)
				elseif var_151_109 < 0.25 then
					var_151_112 = var_151_111 * (1.2 - (var_151_109 - 0.15) / 0.1 * 0.2)
				else
					var_151_112 = var_151_111
				end

				local var_151_115 = -15 * (var_151_109 / var_151_110)

				if var_151_109 > var_151_110 - 0.3 then
					var_151_113 = 0.5 * (1 - (var_151_109 - (var_151_110 - 0.3)) / 0.3)
				end

				love.graphics.setColor(1, 1, 1, var_151_113)

				local var_151_116, var_151_117 = iter_151_1.icon:getDimensions()

				love.graphics.draw(iter_151_1.icon, math.floor(iter_151_1.x - 6), math.floor(iter_151_1.y + var_151_115 - 25), 0, var_151_112, var_151_112, math.floor(var_151_116 / 2), math.floor(var_151_117 / 2))
				love.graphics.setColor(1, 1, 1, 1)
			end
		elseif iter_151_1.type == "lifesteal" then
			require("src.ui.effects").lifesteal.draw(iter_151_1)
		elseif iter_151_1.type == "arcane_core" then
			if not _G._arcaneCoreLogged then
				print("[ARCANE_CORE] Rendering at", iter_151_1.x, iter_151_1.y, "State:", iter_151_1.state)

				_G._arcaneCoreLogged = true
			end

			if iter_151_1.state == nil then
				iter_151_1.state = "spawn"
				iter_151_1.stateT = 0
			end

			iter_151_1.stateT = iter_151_1.stateT + love.timer.getDelta()

			local var_151_118 = 1

			if iter_151_1.state == "spawn" then
				local var_151_119 = math.floor(iter_151_1.stateT / 0.08)

				if var_151_119 >= 5 then
					iter_151_1.state = "idle"
					iter_151_1.stateT = 0
				else
					var_151_118 = 1 + var_151_119
				end
			elseif iter_151_1.state == "idle" then
				var_151_118 = 11 + math.floor(iter_151_1.stateT / 0.12) % 5
				iter_151_1.canDamage = true

				if iter_151_1.stateT >= (iter_151_1.dur or 2) then
					iter_151_1.state = "explode"
					iter_151_1.stateT = 0
					iter_151_1.canDamage = false
				end
			elseif iter_151_1.state == "explode" then
				local var_151_120 = math.floor(iter_151_1.stateT / 0.08)

				if var_151_120 >= 5 then
					iter_151_1.alive = false
				else
					var_151_118 = 6 + var_151_120
				end
			end

			love.graphics.setBlendMode("alpha")

			local var_151_121 = var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ArcaneCore

			if var_151_121 then
				local var_151_122 = var_151_121.quads[var_151_118]

				if var_151_122 then
					love.graphics.draw(var_151_121.image, var_151_122, math.floor(iter_151_1.x), math.floor(iter_151_1.y), 0, 2, 2, 8, 8)
				end
			end
		elseif iter_151_1.type == "shadow_suck" then
			local var_151_123 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)

			love.graphics.setBlendMode("alpha")

			local var_151_124 = {
				0.25,
				0.08,
				0.4
			}
			local var_151_125 = {
				0.7,
				0.25,
				0.9
			}
			local var_151_126 = {
				0.95,
				0.8,
				1
			}
			local var_151_127 = iter_151_1.pData or {}

			for iter_151_8 = 1, #var_151_127 do
				local var_151_128 = var_151_127[iter_151_8]
				local var_151_129 = (iter_151_1.t - (var_151_128.delay or 0)) / (iter_151_1.dur * 0.7 * (var_151_128.speedOffset or 1))

				if var_151_129 > 0 and var_151_129 < 1.1 then
					local var_151_130 = var_0_8(var_151_129, 0, 1)
					local var_151_131 = var_151_130 * var_151_130 * (3 - 2 * var_151_130)
					local var_151_132 = iter_151_1.x2 - iter_151_1.x1
					local var_151_133 = iter_151_1.y2 - iter_151_1.y1
					local var_151_134 = math.sqrt(var_151_132 * var_151_132 + var_151_133 * var_151_133 + 1)
					local var_151_135 = -var_151_133 / var_151_134
					local var_151_136 = var_151_132 / var_151_134
					local var_151_137 = 5

					for iter_151_9 = 0, var_151_137 do
						local var_151_138 = var_0_8(var_151_130 - iter_151_9 * 0.04, 0, 1)
						local var_151_139 = var_151_138 * var_151_138 * (3 - 2 * var_151_138)
						local var_151_140 = math.sin(var_151_138 * math.pi + (var_151_128.seed or 0)) * (var_151_128.curve or 30)
						local var_151_141 = iter_151_1.x1 + var_151_132 * var_151_139 + var_151_135 * var_151_140 + (var_151_128.spreadX or 0)
						local var_151_142 = iter_151_1.y1 + var_151_133 * var_151_139 + var_151_136 * var_151_140 + (var_151_128.spreadY or 0)
						local var_151_143 = math.floor(var_151_141 + 0.5)
						local var_151_144 = math.floor(var_151_142 + 0.5)
						local var_151_145 = var_0_8(1 - iter_151_9 / var_151_137, 0, 1) * var_0_8(1.1 - var_151_129, 0, 1)

						if iter_151_9 == 0 then
							love.graphics.setColor(var_151_124[1], var_151_124[2], var_151_124[3], var_151_145 * 0.5)
							love.graphics.rectangle("fill", var_151_143 - 1, var_151_144 - 2, 3, 5)
							love.graphics.rectangle("fill", var_151_143 - 2, var_151_144 - 1, 5, 3)
							love.graphics.setColor(var_151_125[1], var_151_125[2], var_151_125[3], var_151_145)
							love.graphics.rectangle("fill", var_151_143, var_151_144 - 1, 1, 3)
							love.graphics.rectangle("fill", var_151_143 - 1, var_151_144, 3, 1)
							love.graphics.setColor(var_151_126[1], var_151_126[2], var_151_126[3], var_151_145 * 0.9)
							love.graphics.rectangle("fill", var_151_143, var_151_144, 1, 1)
						else
							love.graphics.setColor(var_151_125[1], var_151_125[2], var_151_125[3], var_151_145 * 0.6)
							love.graphics.rectangle("fill", var_151_143, var_151_144, 1, 1)
						end
					end
				end
			end

			local var_151_146 = var_0_8((var_151_123 - 0.7) / 0.3, 0, 1)

			if var_151_146 > 0 and var_151_146 < 1 then
				local var_151_147 = 1 - var_151_146
				local var_151_148 = math.floor(8 * var_151_146 + 0.5)

				love.graphics.setColor(var_151_125[1], var_151_125[2], var_151_125[3], var_151_147 * 0.5)
				love.graphics.rectangle("line", math.floor(iter_151_1.x2 - var_151_148), math.floor(iter_151_1.y2 - var_151_148), var_151_148 * 2, var_151_148 * 2)
				love.graphics.setColor(var_151_126[1], var_151_126[2], var_151_126[3], var_151_147)
				love.graphics.rectangle("fill", math.floor(iter_151_1.x2 - 1), math.floor(iter_151_1.y2 - 1), 3, 3)
			end

			love.graphics.setBlendMode("alpha")
		elseif iter_151_1.type == "arcane_orb" then
			local var_151_149 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)
			local var_151_150 = iter_151_1.x1 + (iter_151_1.x2 - iter_151_1.x1) * var_151_149
			local var_151_151 = iter_151_1.y1 + (iter_151_1.y2 - iter_151_1.y1) * var_151_149

			love.graphics.setBlendMode("alpha")

			local var_151_152 = var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ArcaneOrb

			if var_151_152 then
				local var_151_153 = 1

				if iter_151_1.t <= 0.15 then
					var_151_153 = math.min(5, math.floor(iter_151_1.t / 0.03) + 1)
				else
					var_151_153 = 3 + math.floor((iter_151_1.t - 0.15) / 0.08) % 3
				end

				local var_151_154 = iter_151_1.x2 - iter_151_1.x1
				local var_151_155 = iter_151_1.y2 - iter_151_1.y1
				local var_151_156 = math.atan2(var_151_155, var_151_154)
				local var_151_157 = var_151_152.quads[var_151_153]

				if var_151_157 then
					local var_151_158 = var_151_156 + math.pi / 2

					love.graphics.draw(var_151_152.image, var_151_157, math.floor(var_151_150), math.floor(var_151_151), var_151_158, 2, 2, 8, 8)
				end
			end
		elseif iter_151_1.type == "arcane_explode" then
			local var_151_159 = var_0_8(iter_151_1.t / iter_151_1.dur, 0, 1)

			love.graphics.setBlendMode("alpha")

			local var_151_160 = var_0_1 and var_0_1.projectiles and var_0_1.projectiles.ArcaneOrb

			if var_151_160 then
				local var_151_161 = 5 + math.min(2, math.floor(var_151_159 * 2 + 1))
				local var_151_162 = var_151_160.quads[var_151_161]

				if var_151_162 then
					love.graphics.draw(var_151_160.image, var_151_162, math.floor(iter_151_1.x - 16), math.floor(iter_151_1.y - 16), 0, 2, 2)
				end
			end
		end
	end

	if arg_151_1 and arg_151_1.enemies then
		for iter_151_10, iter_151_11 in ipairs(arg_151_1.enemies) do
			local var_151_163 = iter_151_11._bloodTrailAlpha or 0

			if var_0_30(iter_151_11) and var_151_163 > 0 then
				local var_151_164 = iter_151_11.target

				if not var_151_164 or not var_151_164.alive or not not var_151_164.dying then
					var_151_164 = var_0_31(iter_151_11, arg_151_1.allies)
				end

				if var_151_164 and var_151_164.x and var_151_164.y then
					local var_151_165 = iter_151_11.x
					local var_151_166 = iter_151_11.y

					if not iter_151_11._trailEndX then
						iter_151_11._trailEndX = var_151_164.x
						iter_151_11._trailEndY = var_151_164.y
					else
						local var_151_167 = love.timer.getDelta() * 10

						iter_151_11._trailEndX = iter_151_11._trailEndX + (var_151_164.x - iter_151_11._trailEndX) * math.min(1, var_151_167)
						iter_151_11._trailEndY = iter_151_11._trailEndY + (var_151_164.y - iter_151_11._trailEndY) * math.min(1, var_151_167)
					end

					local var_151_168 = iter_151_11._trailEndX
					local var_151_169 = iter_151_11._trailEndY
					local var_151_170 = (var_151_165 + var_151_168) * 0.5
					local var_151_171 = (var_151_166 + var_151_169) * 0.5
					local var_151_172 = math.abs(var_151_165 - var_151_168)
					local var_151_173 = var_151_171 - math.min(80, var_151_172 * 0.2)
					local var_151_174 = var_151_170

					love.graphics.push("all")
					love.graphics.setBlendMode("add")

					local var_151_175 = love.timer.getTime()

					local function var_151_176(arg_154_0, arg_154_1, arg_154_2, arg_154_3, arg_154_4, arg_154_5, arg_154_6, arg_154_7, arg_154_8)
						local var_154_0 = var_151_168 - var_151_165
						local var_154_1 = var_151_169 - var_151_166
						local var_154_2 = math.sqrt(var_154_0 * var_154_0 + var_154_1 * var_154_1)
						local var_154_3 = math.max(24, math.min(56, math.ceil(var_154_2 / 4)))
						local var_154_4 = var_0_29
						local var_154_5 = #var_154_4
						local var_154_6 = (var_154_3 + 1) * 2

						for iter_154_0 = 0, var_154_3 do
							local var_154_7 = iter_154_0 / var_154_3
							local var_154_8 = (1 - var_154_7)^2 * var_151_165 + 2 * (1 - var_154_7) * var_154_7 * var_151_174 + var_154_7^2 * var_151_168
							local var_154_9 = (1 - var_154_7)^2 * var_151_166 + 2 * (1 - var_154_7) * var_154_7 * var_151_173 + var_154_7^2 * var_151_169
							local var_154_10 = math.sin(var_154_7 * math.pi) * math.sin(var_151_175 * arg_154_6 + var_154_7 * arg_154_7 + arg_154_8) * 2.4
							local var_154_11 = var_154_8 + math.sin(var_154_7 * math.pi) * math.cos(var_151_175 * (arg_154_6 * 0.8) + var_154_7 * (arg_154_7 - 1) + arg_154_8) * 1.2
							local var_154_12 = var_154_9 + var_154_10
							local var_154_13 = iter_154_0 * 2 + 1

							var_154_4[var_154_13] = var_154_11
							var_154_4[var_154_13 + 1] = var_154_12
						end

						for iter_154_1 = var_154_6 + 1, var_154_5 do
							var_154_4[iter_154_1] = nil
						end

						if #var_154_4 >= 4 then
							love.graphics.setLineStyle("smooth")
							love.graphics.setLineJoin("none")
							love.graphics.setLineWidth((arg_154_0 + arg_154_1 * 0.72) * 2)
							love.graphics.setColor(arg_154_2, arg_154_3, arg_154_4, var_151_163 * arg_154_5 * 0.42)
							love.graphics.line(var_154_4)
						end

						for iter_154_2 = 0, var_154_3 do
							local var_154_14 = iter_154_2 * 2 + 1
							local var_154_15 = iter_154_2 / var_154_3
							local var_154_16 = math.sin(var_154_15 * math.pi)
							local var_154_17 = var_154_16 * (0.7 + 0.3 * var_154_16)
							local var_154_18 = arg_154_0 + var_154_17 * arg_154_1
							local var_154_19 = var_151_163 * arg_154_5 * var_154_17

							love.graphics.setColor(arg_154_2, arg_154_3, arg_154_4, var_154_19)
							love.graphics.circle("fill", var_154_4[var_154_14], var_154_4[var_154_14 + 1], var_154_18, 12)
						end
					end

					var_151_176(6.8, 5.8, 0.42, 0, 0.01, 0.02, 2.5, 5, 0)
					var_151_176(4.6, 3.8, 0.68, 0, 0.01, 0.03, 3.2, 7, 2)
					var_151_176(2.6, 1.8, 0.95, 0.04, 0.05, 0.036, 4, 9, 4)
					love.graphics.setLineWidth(1)
					love.graphics.pop()
				end
			end
		end
	end

	function var_0_0.drawItemEffectsBehind(arg_155_0, arg_155_1)
		if not arg_155_1 or not arg_155_1.allies then
			return
		end

		for iter_155_0, iter_155_1 in ipairs(var_0_12) do
			if iter_155_1.type == "meteor_ground" then
				require("src.ui.effects").meteor.draw(iter_155_1, false)
			elseif iter_155_1.type == "slam_hit" then
				local var_155_0 = var_0_8(iter_155_1.t / iter_155_1.dur, 0, 1)
				local var_155_1 = 1 - var_155_0 * var_155_0

				love.graphics.setBlendMode("add")

				local var_155_2 = var_155_0 * 35

				love.graphics.setColor(0.95, 0.85, 0.65, var_155_1 * 1)
				love.graphics.setLineWidth(2 + (1 - var_155_0) * 1.8)
				love.graphics.ellipse("line", math.floor(iter_155_1.x), math.floor(iter_155_1.y), var_155_2, var_155_2 * 0.4)
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 1)
			elseif iter_155_1.type == "shockwave_hit" then
				local var_155_3 = var_0_8(iter_155_1.t / iter_155_1.dur, 0, 1)
				local var_155_4 = 1 - var_155_3 * var_155_3

				love.graphics.setBlendMode("add")

				local var_155_5 = var_155_3 * 35

				love.graphics.setColor(0.95, 0.85, 0.65, var_155_4 * 1)
				love.graphics.setLineWidth(2 + (1 - var_155_3) * 1.8)
				love.graphics.ellipse("line", math.floor(iter_155_1.x), math.floor(iter_155_1.y), var_155_5, var_155_5 * 0.4)
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 1)
			elseif iter_155_1.type == "crushing_slam_hit" or iter_155_1.type == "crushing_shockwave_hit" then
				local var_155_6 = var_0_8(iter_155_1.t / iter_155_1.dur, 0, 1)
				local var_155_7 = 1 - var_155_6 * var_155_6

				love.graphics.setBlendMode("add")

				local var_155_8 = var_155_6 * 35

				love.graphics.setColor(1, 0.9, 0.5, var_155_7 * 0.6)
				love.graphics.setLineWidth(5 + (1 - var_155_6) * 3)
				love.graphics.ellipse("line", math.floor(iter_155_1.x), math.floor(iter_155_1.y), var_155_8, var_155_8 * 0.4)
				love.graphics.setColor(1, 1, 1, var_155_7 * 1)
				love.graphics.setLineWidth(2 + (1 - var_155_6) * 2)
				love.graphics.ellipse("line", math.floor(iter_155_1.x), math.floor(iter_155_1.y), var_155_8, var_155_8 * 0.4)
				love.graphics.setBlendMode("alpha")
				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_151(arg_156_0)
	if not arg_156_0 then
		return nil
	end

	arg_156_0._dpsWindow = arg_156_0._dpsWindow or {
		progress = 0,
		open = false,
		pressUntil = 0
	}

	return arg_156_0._dpsWindow
end

local function var_0_152(arg_157_0, arg_157_1)
	local var_157_0 = arg_157_1 and arg_157_1.ui

	if not var_157_0 then
		return nil
	end

	local var_157_1 = var_0_151(arg_157_0)
	local var_157_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	if var_157_1 and var_157_2 < (var_157_1.pressUntil or 0) then
		if var_157_1.pressKind == "close" then
			return var_157_0.dpsButtonClosePressed or var_157_0.dpsButtonClose or var_157_0.dpsButton
		end

		return var_157_0.dpsButtonPressed or var_157_0.dpsButton
	end

	if var_157_1 and (var_157_1.open == true or (var_157_1.progress or 0) > 0.5) then
		return var_157_0.dpsButtonClose or var_157_0.dpsButton
	end

	return var_157_0.dpsButton
end

local function var_0_153(arg_158_0)
	if not arg_158_0 then
		return nil
	end

	arg_158_0._synergyWindow = arg_158_0._synergyWindow or {
		progress = 0,
		open = false,
		pressUntil = 0
	}

	return arg_158_0._synergyWindow
end

function var_0_0.getSynergyFactionCounts(arg_159_0)
	return var_0_4.countUniqueTypes(arg_159_0 and arg_159_0.rosterUnits or {})
end

function var_0_0.getVisibleSynergyFactionIds(arg_160_0)
	local var_160_0 = {}
	local var_160_1 = {}
	local var_160_2 = {}

	for iter_160_0, iter_160_1 in ipairs(var_0_4.ids) do
		local var_160_3 = tonumber(arg_160_0 and arg_160_0[iter_160_1]) or 0

		if var_160_3 >= 1 then
			var_160_0[#var_160_0 + 1] = iter_160_1
			var_160_1[iter_160_1] = iter_160_0

			local var_160_4, var_160_5 = var_0_4.getTierProgress(iter_160_1, var_160_3)

			var_160_2[iter_160_1] = {
				tiers = var_160_5,
				progress = var_160_4
			}
		end
	end

	table.sort(var_160_0, function(arg_161_0, arg_161_1)
		if var_160_2[arg_161_0].tiers ~= var_160_2[arg_161_1].tiers then
			return var_160_2[arg_161_0].tiers > var_160_2[arg_161_1].tiers
		end

		if var_160_2[arg_161_0].progress ~= var_160_2[arg_161_1].progress then
			return var_160_2[arg_161_0].progress > var_160_2[arg_161_1].progress
		end

		return var_160_1[arg_161_0] < var_160_1[arg_161_1]
	end)

	return var_160_0
end

function var_0_0.getSynergyBarSegmentFill(arg_162_0, arg_162_1, arg_162_2)
	local var_162_0 = var_0_4.getThresholds(arg_162_2) or {
		2,
		4,
		6
	}
	local var_162_1 = math.max(0, tonumber(arg_162_0) or 0)
	local var_162_2 = math.floor(tonumber(arg_162_1) or 0)

	if var_162_2 < 1 or var_162_2 > #var_162_0 then
		return 0
	end

	local var_162_3 = var_162_0[var_162_2 - 1] or 0

	return var_0_8((var_162_1 - var_162_3) / math.max(1, var_162_0[var_162_2] - var_162_3), 0, 1)
end

function var_0_0.getSynergyFactionCountText(arg_163_0, arg_163_1)
	local var_163_0 = math.max(1, var_0_4.getMaxThreshold(arg_163_1))
	local var_163_1 = var_0_8(math.floor(tonumber(arg_163_0) or 0), 0, var_163_0)

	return string.format("%d/%d", var_163_1, var_0_4.getNextThreshold(arg_163_1, var_163_1) or var_163_0)
end

function var_0_0.getSynergyFactionIconHoverRect(arg_164_0, arg_164_1, arg_164_2, arg_164_3, arg_164_4, arg_164_5, arg_164_6)
	local var_164_0 = math.max(0.25, tonumber(arg_164_4) or 1)
	local var_164_1 = tonumber(arg_164_6) or 2
	local var_164_2 = math.max(0, tonumber(arg_164_2) or 0) * var_164_0
	local var_164_3 = math.max(0, tonumber(arg_164_3) or 0) * var_164_0
	local var_164_4 = math.floor((tonumber(arg_164_1) or 0) - var_164_3 * 0.5 + (tonumber(arg_164_5) or 0) + 0.5)

	return {
		x = (tonumber(arg_164_0) or 0) - var_164_1,
		y = var_164_4 - var_164_1,
		w = var_164_2 + var_164_1 * 2,
		h = var_164_3 + var_164_1 * 2,
		drawY = var_164_4
	}
end

function var_0_0.updateSynergyFactionHover(arg_165_0, arg_165_1, arg_165_2, arg_165_3, arg_165_4, arg_165_5)
	if not var_0_4.isEnabled() or not arg_165_0 or not arg_165_1 or not arg_165_2 or arg_165_0._synergyFactionHoverDisabled then
		return false
	end

	arg_165_3, arg_165_4 = tonumber(arg_165_3), tonumber(arg_165_4)

	if not arg_165_3 or not arg_165_4 then
		return false
	end

	if arg_165_3 < arg_165_2.x or arg_165_3 > arg_165_2.x + arg_165_2.w or arg_165_4 < arg_165_2.y or arg_165_4 > arg_165_2.y + arg_165_2.h then
		return false
	end

	arg_165_0._synergyHoveredFaction = {
		factionId = arg_165_1,
		unitCount = math.max(0, math.floor(tonumber(arg_165_5) or 0)),
		anchor = {
			source = "synergyFaction",
			x = arg_165_2.x,
			y = arg_165_2.y,
			w = arg_165_2.w,
			h = arg_165_2.h
		}
	}

	return true
end

local function var_0_154(arg_166_0, arg_166_1)
	local var_166_0 = arg_166_1 and arg_166_1.ui

	if not var_166_0 then
		return nil
	end

	local var_166_1 = var_0_153(arg_166_0)
	local var_166_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	if var_166_1 and var_166_2 < (var_166_1.pressUntil or 0) then
		if var_166_1.pressKind == "close" then
			return var_166_0.synergyButtonClosePressed or var_166_0.synergyButtonClose or var_166_0.synergyButton
		end

		return var_166_0.synergyButtonPressed or var_166_0.synergyButton
	end

	if var_166_1 and (var_166_1.open == true or (var_166_1.progress or 0) > 0.5) then
		return var_166_0.synergyButtonClose or var_166_0.synergyButton
	end

	return var_166_0.synergyButton
end

local function var_0_155(arg_167_0)
	if arg_167_0 and arg_167_0.mode == "battle" and arg_167_0.getCurrentBattleDpsRows then
		local var_167_0, var_167_1 = arg_167_0:getCurrentBattleDpsRows()

		if type(var_167_1) == "table" then
			return #var_167_1
		end
	end

	local var_167_2 = arg_167_0 and arg_167_0._lastBattleDpsRows or arg_167_0 and arg_167_0.ui and arg_167_0.ui._lastBattleDpsRows

	if type(var_167_2) == "table" then
		return #var_167_2
	end

	if arg_167_0 then
		local var_167_3 = tonumber(arg_167_0._lastBattleUnitCount)

		if var_167_3 ~= nil then
			return math.max(0, math.floor(var_167_3))
		end
	end

	local var_167_4 = arg_167_0 and arg_167_0.ui and tonumber(arg_167_0.ui._lastBattleUnitCount)

	if var_167_4 ~= nil then
		return math.max(0, math.floor(var_167_4))
	end

	return 0
end

local function var_0_156(arg_168_0)
	if arg_168_0 and arg_168_0.mode == "battle" and arg_168_0.getCurrentBattleDpsRows then
		local var_168_0, var_168_1 = arg_168_0:getCurrentBattleDpsRows()

		if type(var_168_1) == "table" then
			return var_168_1
		end
	end

	local var_168_2 = arg_168_0 and arg_168_0._lastBattleDpsRows or arg_168_0 and arg_168_0.ui and arg_168_0.ui._lastBattleDpsRows

	if type(var_168_2) == "table" then
		return var_168_2
	end

	return nil
end

local function var_0_157(arg_169_0, arg_169_1)
	local var_169_0 = arg_169_0 and (arg_169_0.battleUnit or arg_169_0)

	return tonumber(arg_169_0 and arg_169_0.displayOrder) or tonumber(var_169_0 and var_169_0._dpsDisplayOrder) or arg_169_1
end

local function var_0_158(arg_170_0, arg_170_1, arg_170_2, arg_170_3)
	for iter_170_0 = #arg_170_0, 1, -1 do
		local var_170_0 = arg_170_0[iter_170_0]
		local var_170_1 = (var_0_157(var_170_0, iter_170_0) - 1) * arg_170_2

		if var_170_1 <= arg_170_1 and arg_170_1 <= var_170_1 + arg_170_3 then
			return var_170_0, iter_170_0, var_170_1
		end
	end

	return nil
end

local function var_0_159(arg_171_0, arg_171_1, arg_171_2)
	local var_171_0 = var_0_151(arg_171_0)

	if not var_171_0 then
		return 0, 0, 0
	end

	local var_171_1 = arg_171_2 and arg_171_2.ui and arg_171_2.ui.dpsSlot
	local var_171_2 = arg_171_0 and arg_171_0.dpsWindow and arg_171_0.dpsWindow.slotList or {}
	local var_171_3 = var_0_155(arg_171_1)

	if not var_171_1 or var_171_3 <= 0 then
		var_171_0.scroll = 0
		var_171_0.scrollTarget = 0

		return 0, 0, var_171_3
	end

	local var_171_4 = math.max(1, math.floor(tonumber(var_171_2.scale or 2) or 2))
	local var_171_5 = var_171_1:getHeight() * var_171_4
	local var_171_6 = tonumber(var_171_2.gap or 4) or 4
	local var_171_7 = math.max(1, tonumber(var_171_2.viewH or 156) or 156)
	local var_171_8 = var_171_3 * var_171_5 + math.max(0, var_171_3 - 1) * var_171_6
	local var_171_9 = math.max(0, var_171_8 - var_171_7)

	var_171_0.scrollTarget = var_0_8(tonumber(var_171_0.scrollTarget or 0) or 0, 0, var_171_9)
	var_171_0.scroll = var_0_8(tonumber(var_171_0.scroll or 0) or 0, 0, var_171_9)

	return var_171_9, var_171_8, var_171_3
end

local function var_0_160(arg_172_0, arg_172_1)
	if not arg_172_0 or not arg_172_1 then
		return
	end

	local var_172_0 = arg_172_0.dpsWindow or {}
	local var_172_1 = var_172_0.emptyText

	if var_172_1 == false then
		return
	end

	var_172_1 = var_172_1 or {}

	local var_172_2 = _G.currentGameLang or "ko"
	local var_172_3 = var_172_1.textKey or var_172_1.langKey
	local var_172_4 = var_172_3 and var_0_3.getText(var_172_3, var_172_2) or nil
	local var_172_5 = var_0_3.getText("dps_window_empty", var_172_2)

	if var_172_2 == "ko" and var_172_1.text then
		var_172_5 = var_172_1.text
	end

	local var_172_6 = tostring(var_172_4 and var_172_4 ~= var_172_3 and var_172_4 or var_172_5)

	if var_172_6 == "" then
		return
	end

	local var_172_7, var_172_8, var_172_9 = var_0_37(arg_172_0)
	local var_172_10 = love.graphics.getFont()
	local var_172_11, var_172_12, var_172_13, var_172_14 = love.graphics.getColor()

	if var_172_7 then
		love.graphics.setFont(var_172_7)
	end

	local var_172_15 = tonumber(var_172_1.scale or var_172_8 or 1) or 1
	local var_172_16 = var_172_1.color or var_172_9 or {
		0.82,
		0.84,
		0.86,
		1
	}
	local var_172_17 = var_172_0.slotList or {}
	local var_172_18

	if var_172_1.x ~= nil then
		var_172_18 = tonumber(var_172_1.x) or 0
	else
		var_172_18 = (tonumber(var_172_17.x or 485) or 485) + (tonumber(var_172_17.wheelW or 150) or 150) * 0.5
	end

	local var_172_19

	if var_172_1.y ~= nil then
		var_172_19 = tonumber(var_172_1.y) or 0
	else
		var_172_19 = (tonumber(var_172_17.y or 48) or 48) + (tonumber(var_172_17.viewH or 156) or 156) * 0.5
	end

	local var_172_20 = love.graphics.getFont()

	if not var_172_20 or not var_172_20:getWidth(var_172_6) then
		local var_172_21 = 0
	end

	if not var_172_20 or not var_172_20:getHeight() then
		local var_172_22 = 10
	end

	love.graphics.setColor(var_172_16[1] or 1, var_172_16[2] or 1, var_172_16[3] or 1, var_172_16[4] or 1)
	var_0_0.drawWindowMessageFitted(arg_172_0, var_172_6, var_172_20, var_172_15, arg_172_1.x + var_172_18, arg_172_1.y + var_172_19, (tonumber(var_172_0.offsetX or 0) or 0) + var_172_18)

	if var_172_10 then
		love.graphics.setFont(var_172_10)
	end

	love.graphics.setColor(var_172_11, var_172_12, var_172_13, var_172_14)
end

local function var_0_161(arg_173_0, arg_173_1)
	if not arg_173_0 or not arg_173_1 then
		return
	end

	local var_173_0 = arg_173_0.synergyWindow and arg_173_0.synergyWindow.emptyText or nil

	if var_173_0 == false then
		return
	end

	var_173_0 = var_173_0 or {}

	local var_173_1 = _G.currentGameLang or "ko"
	local var_173_2 = var_173_0.textKey or var_173_0.langKey or "synergy_window_empty"
	local var_173_3 = var_0_3.getText(var_173_2, var_173_1)
	local var_173_4 = var_0_3.getText("synergy_window_empty", var_173_1)

	if var_173_1 == "ko" and var_173_0.text then
		var_173_4 = var_173_0.text
	end

	local var_173_5 = tostring(var_173_3 and var_173_3 ~= var_173_2 and var_173_3 or var_173_4)

	if var_173_5 == "" then
		return
	end

	local var_173_6, var_173_7, var_173_8 = var_0_37(arg_173_0)
	local var_173_9 = love.graphics.getFont()
	local var_173_10, var_173_11, var_173_12, var_173_13 = love.graphics.getColor()

	if var_173_6 then
		love.graphics.setFont(var_173_6)
	end

	local var_173_14 = tonumber(var_173_0.scale or var_173_7 or 1) or 1
	local var_173_15 = var_173_0.color or var_173_8 or {
		0.82,
		0.84,
		0.86,
		1
	}
	local var_173_16 = love.graphics.getFont()

	if not var_173_16 or not var_173_16:getWidth(var_173_5) then
		local var_173_17 = 0
	end

	if not var_173_16 or not var_173_16:getHeight() then
		local var_173_18 = 10
	end

	local var_173_19 = tonumber(var_173_0.x or 573) or 573
	local var_173_20 = tonumber(var_173_0.y or 126) or 126

	love.graphics.setColor(var_173_15[1] or 1, var_173_15[2] or 1, var_173_15[3] or 1, var_173_15[4] or 1)
	var_0_0.drawWindowMessageFitted(arg_173_0, var_173_5, var_173_16, var_173_14, arg_173_1.x + var_173_19, arg_173_1.y + var_173_20, (tonumber(arg_173_0.synergyWindow and arg_173_0.synergyWindow.offsetX or 0) or 0) + var_173_19)

	if var_173_9 then
		love.graphics.setFont(var_173_9)
	end

	love.graphics.setColor(var_173_10, var_173_11, var_173_12, var_173_13)
end

local function var_0_162(arg_174_0, arg_174_1, arg_174_2)
	if not arg_174_0 or not arg_174_1 then
		return
	end

	local var_174_0 = arg_174_0.synergyWindow and arg_174_0.synergyWindow.factionList or nil

	if var_174_0 == false then
		return
	end

	var_174_0 = var_174_0 or {}
	arg_174_2 = arg_174_2 or {}

	local var_174_1 = love.graphics.getFont()
	local var_174_2, var_174_3, var_174_4, var_174_5 = love.graphics.getColor()
	local var_174_6 = love.graphics.getLineWidth and love.graphics.getLineWidth() or 1
	local var_174_7 = var_0_36(arg_174_0)

	if var_174_7 then
		love.graphics.setFont(var_174_7)
	end

	local var_174_8 = math.floor(arg_174_1.y + (tonumber(var_174_0.y or 52) or 52) + 0.5)
	local var_174_9 = tonumber(var_174_0.rowGap or 27) or 27
	local var_174_10 = #var_0_0.getVisibleSynergyFactionIds(arg_174_2)
	local var_174_11 = arg_174_1.y + (tonumber(var_174_0.listBottom or 176) or 176)

	if var_174_10 > 1 then
		var_174_9 = math.min(var_174_9, math.floor((var_174_11 - var_174_8) / (var_174_10 - 1)))
	end

	local var_174_12 = tonumber(var_174_0.scale or 1) or 1
	local var_174_13 = tonumber(var_174_0.x or 0) or 0
	local var_174_14 = math.floor(arg_174_1.x + var_174_13 + (tonumber(var_174_0.iconX or 513) or 513) + 0.5)
	local var_174_15 = math.max(0.25, tonumber(var_174_0.iconScale or 1) or 1)
	local var_174_16 = tonumber(var_174_0.iconOffsetY or 0) or 0
	local var_174_17 = math.floor(arg_174_1.x + var_174_13 + (tonumber(var_174_0.countX or 552) or 552) + 0.5)
	local var_174_18 = math.floor(arg_174_1.x + var_174_13 + (tonumber(var_174_0.barX or 564) or 564) + 0.5)
	local var_174_19 = math.max(8, math.floor(tonumber(var_174_0.barW or 76) or 76))
	local var_174_20 = math.max(1, math.floor(tonumber(var_174_0.barH or 3) or 3))
	local var_174_21 = tonumber(var_174_0.barOffsetY or 0) or 0
	local var_174_22 = var_174_0.countColor or {
		1,
		1,
		1,
		1
	}
	local var_174_23 = var_174_0.fillColor or {
		0.89,
		0.776,
		0.353,
		1
	}
	local var_174_24 = var_174_0.previewColor or var_174_23
	local var_174_25 = var_174_0.bgColor or {
		0.16,
		0.12,
		0.03,
		0.85
	}
	local var_174_26 = var_174_0.gridColor or {
		0.12,
		0.09,
		0.02,
		0.55
	}
	local var_174_27 = var_174_0.cellTintColor
	local var_174_28 = arg_174_0.imprintPanel and arg_174_0.imprintPanel.promotionBar or {}
	local var_174_29 = type(var_174_28.bloom) == "table" and var_174_28.bloom or {}
	local var_174_30 = type(var_174_0.bloom) == "table" and var_174_0.bloom or {}
	local var_174_31 = {
		enabled = var_174_30.enabled == nil and var_174_29.enabled or var_174_30.enabled,
		color = var_174_30.color or var_174_24,
		alpha = var_174_30.alpha or var_174_29.alpha,
		pulseAmp = var_174_30.pulseAmp or var_174_29.pulseAmp,
		pulseHz = var_174_30.pulseHz or var_174_29.pulseHz,
		expand = var_174_30.expand or var_174_29.expand,
		layers = var_174_30.layers or var_174_29.layers,
		softness = var_174_30.softness or var_174_29.softness
	}
	local var_174_32 = love.graphics.getFont()
	local var_174_33 = var_174_32 and var_174_32:getHeight() or 10

	for iter_174_0, iter_174_1 in ipairs(var_0_0.getVisibleSynergyFactionIds(arg_174_2)) do
		local var_174_34 = math.floor(var_174_8 + (iter_174_0 - 1) * var_174_9 + 0.5)
		local var_174_35 = math.max(0, math.floor(tonumber(arg_174_2[iter_174_1]) or 0))
		local var_174_36 = var_174_34 + var_174_33 * var_174_12 * 0.5
		local var_174_37 = math.floor(var_174_36 - var_174_20 * 0.5 + var_174_21 + 0.5)
		local var_174_38 = var_0_27[iter_174_1]

		if var_174_38 == nil then
			local var_174_39 = var_0_4.getIconPath(iter_174_1)
			local var_174_40

			if var_174_39 then
				local var_174_41, var_174_42 = pcall(love.graphics.newImage, var_174_39)

				if var_174_41 then
					var_174_40 = var_174_42
				end
			end

			if var_174_40 then
				var_174_40:setFilter("nearest", "nearest")
			end

			var_174_38 = var_174_40 or false
			var_0_27[iter_174_1] = var_174_38
		end

		local var_174_43 = tonumber(var_174_0.iconHoverPad or 2) or 2
		local var_174_44 = arg_174_0.tooltip and arg_174_0.tooltip.mouseX or -9999
		local var_174_45 = arg_174_0.tooltip and arg_174_0.tooltip.mouseY or -9999
		local var_174_46
		local var_174_47 = false

		if var_174_38 then
			local var_174_48 = var_174_38:getWidth()
			local var_174_49 = var_174_38:getHeight()

			var_174_46 = var_0_0.getSynergyFactionIconHoverRect(var_174_14, var_174_36, var_174_48, var_174_49, var_174_15, var_174_16, var_174_43)
			var_174_47 = var_0_0.updateSynergyFactionHover(arg_174_0, iter_174_1, var_174_46, var_174_44, var_174_45, var_174_35)

			if Controller and Controller.mark and not arg_174_0._synergyFactionHoverDisabled then
				Controller.mark("hud", "synergy_" .. tostring(iter_174_1), var_174_46.x, var_174_46.y, var_174_46.w, var_174_46.h)
			end
		end

		if var_174_38 then
			local var_174_50 = var_174_38:getWidth()
			local var_174_51 = var_174_38:getHeight()
			local var_174_52 = var_174_46.drawY

			if var_174_0.iconOutline ~= false then
				local var_174_53 = var_0_65()

				if var_174_53 then
					var_174_53:send("texelStep", {
						1 / math.max(1, var_174_50),
						1 / math.max(1, var_174_51)
					})
					var_174_53:send("outlineColor", var_174_0.iconOutlineColor or {
						0.08235294117647059,
						0.08235294117647059,
						0.10980392156862745,
						1
					})
					var_174_53:send("threshold", tonumber(var_174_0.iconOutlineThreshold or 0.05) or 0.05)
					var_174_53:send("radiusPx", tonumber(var_174_0.iconOutlineRadiusPx or 1) or 1)
					love.graphics.setShader(var_174_53)
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_174_38, var_174_14, var_174_52, 0, var_174_15, var_174_15)
					love.graphics.setShader()
				end
			end

			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_174_38, var_174_14, var_174_52, 0, var_174_15, var_174_15)

			if var_174_47 then
				local var_174_54, var_174_55 = love.graphics.getBlendMode()

				love.graphics.setBlendMode("add", "alphamultiply")
				love.graphics.setColor(1, 1, 1, tonumber(var_174_0.iconHoverBrightAlpha or 0.22) or 0.22)
				love.graphics.draw(var_174_38, var_174_14, var_174_52, 0, var_174_15, var_174_15)
				love.graphics.setBlendMode(var_174_54 or "alpha", var_174_55 or "alphamultiply")
			end
		end

		love.graphics.setColor(var_174_22[1] or 1, var_174_22[2] or 1, var_174_22[3] or 1, var_174_22[4] or 1)
		love.graphics.print(var_0_0.getSynergyFactionCountText(var_174_35, iter_174_1), var_174_17, var_174_34, 0, var_174_12, var_174_12)

		local var_174_56, var_174_57, var_174_58 = var_0_4.getTierProgress(iter_174_1, var_174_35)

		var_0_6.draw({
			x = var_174_18,
			y = var_174_37,
			w = var_174_19,
			h = var_174_20,
			progress = var_174_56,
			bloomProgress = var_0_8(var_174_57 / math.max(1, var_174_58), 0, 1),
			fillColor = var_174_23,
			previewColor = var_174_24,
			bgColor = var_174_25,
			gridColor = var_174_26,
			cellTintColor = var_174_27,
			bloom = var_174_31,
			steps = var_174_58,
			alphaMul = tonumber(var_174_0.alpha or 1) or 1,
			scale = tonumber(var_174_0.effectScale or arg_174_0.scale or 1) or 1
		})
	end

	if var_174_1 then
		love.graphics.setFont(var_174_1)
	end

	love.graphics.setLineWidth(var_174_6)
	love.graphics.setColor(var_174_2, var_174_3, var_174_4, var_174_5)
end

local function var_0_163(arg_175_0, arg_175_1, arg_175_2, arg_175_3, arg_175_4, arg_175_5)
	if not arg_175_0 or not arg_175_1 or not arg_175_2 then
		return
	end

	arg_175_3 = arg_175_3 or {}

	local var_175_0 = math.max(1, tonumber(arg_175_2.viewH or 156) or 156)

	arg_175_4 = math.max(0, tonumber(arg_175_4 or 0) or 0)
	arg_175_5 = math.max(var_175_0, tonumber(arg_175_5 or var_175_0) or var_175_0)

	local var_175_1 = math.floor(arg_175_1.x + (tonumber(arg_175_2.scrollbarX or 622) or 622) + 0.5)
	local var_175_2 = math.floor(arg_175_1.y + (tonumber(arg_175_2.scrollbarY or arg_175_2.y or 52) or 52) + 0.5)
	local var_175_3 = math.max(1, math.floor(tonumber(arg_175_2.scrollbarW or 2) or 2))
	local var_175_4 = math.max(8, math.floor(tonumber(arg_175_2.scrollbarH or var_175_0) or var_175_0))

	love.graphics.setColor(arg_175_2.scrollbarTrackColor or {
		0.1843137254901961,
		0.1607843137254902,
		0.2196078431372549,
		0.9
	})
	love.graphics.rectangle("fill", var_175_1, var_175_2, var_175_3, var_175_4)

	if arg_175_4 > 0 then
		local var_175_5 = math.max(8, math.floor(var_175_4 * math.min(1, var_175_0 / math.max(var_175_0, arg_175_5)) + 0.5))
		local var_175_6 = var_175_2 + math.floor((var_175_4 - var_175_5) * ((arg_175_3.scroll or 0) / arg_175_4) + 0.5)

		love.graphics.setColor(arg_175_2.scrollbarColor or {
			0.45098039215686275,
			0.40784313725490196,
			0.4980392156862745,
			0.95
		})
		love.graphics.rectangle("fill", var_175_1, var_175_6, var_175_3, var_175_5)
	end

	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_164(arg_176_0, arg_176_1, arg_176_2)
	return arg_176_2 and arg_176_0 >= arg_176_2.x and arg_176_0 <= arg_176_2.x + arg_176_2.w and arg_176_1 >= arg_176_2.y and arg_176_1 <= arg_176_2.y + arg_176_2.h
end

local function var_0_165(arg_177_0, arg_177_1)
	if not arg_177_0 or not arg_177_1 or not arg_177_1.text then
		return
	end

	local var_177_0 = arg_177_0.tooltip and arg_177_0.tooltip.font or arg_177_0.font

	if not var_177_0 then
		return
	end

	local var_177_1 = tonumber(arg_177_1.mx or 0) or 0
	local var_177_2 = tonumber(arg_177_1.my or 0) or 0
	local var_177_3 = tostring(arg_177_1.text or "")

	if var_177_3 == "" then
		return
	end

	local var_177_4 = 4
	local var_177_5 = 4
	local var_177_6 = love.graphics.getFont()
	local var_177_7, var_177_8, var_177_9, var_177_10 = love.graphics.getColor()

	love.graphics.setFont(var_177_0)

	local var_177_11 = math.floor(var_177_0:getWidth(var_177_3) + var_177_4 * 2 + 0.5)
	local var_177_12 = math.floor(var_177_0:getHeight() + var_177_4 * 2 + 0.5)
	local var_177_13 = math.floor(var_177_1 + var_177_5 + 0.5)
	local var_177_14 = math.floor(var_177_2 - var_177_12 - var_177_5 + 0.5)
	local var_177_15 = arg_177_0.virtual and arg_177_0.virtual.W or 640
	local var_177_16 = arg_177_0.virtual and arg_177_0.virtual.H or 360

	if var_177_15 < var_177_13 + var_177_11 then
		var_177_13 = math.floor(var_177_1 - var_177_11 - var_177_5 + 0.5)
	end

	if var_177_14 < 0 then
		var_177_14 = math.floor(var_177_2 + var_177_5 + 0.5)
	end

	local var_177_17 = var_0_8(var_177_13, 0, math.max(0, var_177_15 - var_177_11))
	local var_177_18 = var_0_8(var_177_14, 0, math.max(0, var_177_16 - var_177_12))

	if arg_177_0.tooltip and arg_177_0.tooltip.drawPixelRoundedRect then
		arg_177_0.tooltip:drawPixelRoundedRect(var_177_17, var_177_18, var_177_11, var_177_12, {
			0,
			0,
			0,
			0.95
		}, nil)
	else
		love.graphics.setColor(0, 0, 0, 0.95)
		love.graphics.rectangle("fill", var_177_17, var_177_18, var_177_11, var_177_12)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.print(var_177_3, var_177_17 + var_177_4, var_177_18 + var_177_4 - 1)

	if var_177_6 then
		love.graphics.setFont(var_177_6)
	end

	love.graphics.setColor(var_177_7, var_177_8, var_177_9, var_177_10)
end

function var_0_0.updateDpsRowAnimations(arg_178_0, arg_178_1, arg_178_2, arg_178_3)
	if type(arg_178_1) ~= "table" then
		return arg_178_1
	end

	local var_178_0 = arg_178_0 and arg_178_0.dpsWindow and arg_178_0.dpsWindow.slotList or {}
	local var_178_1 = math.max(0.05, tonumber(var_178_0.countUpDur or 0.65) or 0.65)
	local var_178_2 = math.max(0.1, tonumber(var_178_0.barFollowSpeed or 9) or 9)
	local var_178_3 = math.max(0.1, tonumber(var_178_0.orderFollowSpeed or 8) or 8)
	local var_178_4 = math.max(0, math.min(0.1, tonumber(arg_178_3) or 0))
	local var_178_5 = arg_178_2 and arg_178_2.mode == "battle"
	local var_178_6 = 0

	for iter_178_0, iter_178_1 in ipairs(arg_178_1) do
		var_178_6 = math.max(var_178_6, math.max(0, tonumber(iter_178_1 and iter_178_1.damage) or 0))
	end

	local function var_178_7(arg_179_0, arg_179_1, arg_179_2)
		local var_179_0 = arg_179_1 .. "Value"
		local var_179_1 = arg_179_1 .. "Start"
		local var_179_2 = arg_179_1 .. "Target"
		local var_179_3 = arg_179_1 .. "Time"
		local var_179_4 = tonumber(arg_179_0[var_179_0])

		if var_179_4 == nil then
			var_179_4 = var_178_5 and 0 or arg_179_2
		end

		if tonumber(arg_179_0[var_179_2]) ~= arg_179_2 then
			arg_179_0[var_179_1] = var_179_4
			arg_179_0[var_179_2] = arg_179_2
			arg_179_0[var_179_3] = 0
		end

		if arg_179_2 < var_179_4 then
			var_179_4 = arg_179_2
			arg_179_0[var_179_1] = arg_179_2
			arg_179_0[var_179_3] = var_178_1
		elseif var_179_4 < arg_179_2 then
			local var_179_5 = math.min(var_178_1, (tonumber(arg_179_0[var_179_3]) or 0) + var_178_4)
			local var_179_6 = tonumber(arg_179_0[var_179_1]) or var_179_4

			var_179_4 = var_179_6 + (arg_179_2 - var_179_6) * (var_179_5 / var_178_1)
			arg_179_0[var_179_3] = var_179_5

			if var_179_5 >= var_178_1 then
				var_179_4 = arg_179_2
			end
		end

		arg_179_0[var_179_0] = var_179_4

		return math.max(0, math.floor(var_179_4 + 0.0001))
	end

	local var_178_8 = 1 - math.exp(-var_178_2 * var_178_4)
	local var_178_9 = 1 - math.exp(-var_178_3 * var_178_4)

	for iter_178_2, iter_178_3 in ipairs(arg_178_1) do
		local var_178_10 = iter_178_3.battleUnit or iter_178_3
		local var_178_11 = math.max(0, math.floor((tonumber(iter_178_3.damage) or 0) + 0.5))
		local var_178_12 = math.min(var_178_11, math.max(0, math.floor((tonumber(iter_178_3.skillDamage) or 0) + 0.5)))

		iter_178_3.displayDamage = var_178_7(var_178_10, "_dpsDisplayDamage", var_178_11)
		iter_178_3.displaySkillDamage = var_178_7(var_178_10, "_dpsDisplaySkillDamage", var_178_12)

		local var_178_13 = var_178_6 > 0 and var_0_8(var_178_11 / var_178_6, 0, 1) or 0
		local var_178_14 = var_178_6 > 0 and var_0_8(var_178_12 / var_178_6, 0, 1) or 0
		local var_178_15 = tonumber(var_178_10._dpsDisplayBar)
		local var_178_16 = tonumber(var_178_10._dpsDisplaySkillBar)

		if var_178_15 == nil then
			var_178_15 = var_178_5 and 0 or var_178_13
		end

		if var_178_16 == nil then
			var_178_16 = var_178_5 and 0 or var_178_14
		end

		local var_178_17 = var_178_15 + (var_178_13 - var_178_15) * var_178_8
		local var_178_18 = var_178_16 + (var_178_14 - var_178_16) * var_178_8

		if math.abs(var_178_17 - var_178_13) < 0.0005 then
			var_178_17 = var_178_13
		end

		if math.abs(var_178_18 - var_178_14) < 0.0005 then
			var_178_18 = var_178_14
		end

		var_178_10._dpsDisplayBar = var_178_17
		var_178_10._dpsDisplaySkillBar = var_178_18
		iter_178_3.displayBar = var_0_8(var_178_17, 0, 1)
		iter_178_3.displaySkillBar = var_0_8(var_178_18, 0, iter_178_3.displayBar)

		local var_178_19 = tonumber(var_178_10._dpsDisplayOrder)

		if var_178_19 == nil then
			var_178_19 = iter_178_2
		end

		local var_178_20 = var_178_19 + (iter_178_2 - var_178_19) * var_178_9

		if math.abs(var_178_20 - iter_178_2) < 0.001 then
			var_178_20 = iter_178_2
		end

		var_178_10._dpsDisplayOrder = var_178_20
		iter_178_3.displayOrder = var_178_20
	end

	return arg_178_1
end

local function var_0_166(arg_180_0, arg_180_1, arg_180_2, arg_180_3)
	if not arg_180_0 or not arg_180_1 or not arg_180_2 or not arg_180_2.ui then
		return
	end

	local var_180_0 = arg_180_2.ui.dpsSlot
	local var_180_1 = var_0_151(arg_180_0)

	if not var_180_1 then
		return
	end

	local var_180_2 = arg_180_0.dpsWindow and arg_180_0.dpsWindow.slotList or {}
	local var_180_3 = var_0_156(arg_180_3)
	local var_180_4 = love.timer and love.timer.getDelta and love.timer.getDelta() or 0

	var_0_0.updateDpsRowAnimations(arg_180_0, var_180_3, arg_180_3, var_180_4)

	local var_180_5 = var_180_3 and #var_180_3 or var_0_155(arg_180_3)

	if var_180_5 <= 0 then
		var_180_1.scroll = 0
		var_180_1.scrollTarget = 0

		var_0_163(arg_180_0, arg_180_1, var_180_2, var_180_1, 0, math.max(1, tonumber(var_180_2.viewH or 156) or 156))

		arg_180_0._dpsEmptyOverlayVisible = true

		local var_180_6 = arg_180_0.dpsWindow and arg_180_0.dpsWindow.emptyText

		if not var_180_6 or var_180_6.highRes ~= false then
			arg_180_0._dpsEmptyOverlayPanelRect = arg_180_1
		else
			var_0_160(arg_180_0, arg_180_1)
		end

		return
	end

	arg_180_0._dpsEmptyOverlayVisible = false
	arg_180_0._dpsEmptyOverlayPanelRect = nil

	if not var_180_0 then
		return
	end

	local var_180_7 = math.max(1, math.floor(tonumber(var_180_2.scale or 2) or 2))
	local var_180_8 = var_180_0:getWidth()
	local var_180_9 = var_180_0:getHeight()
	local var_180_10 = tonumber(var_180_2.gap or 4) or 4
	local var_180_11 = math.max(1, tonumber(var_180_2.viewH or 156) or 156)
	local var_180_12, var_180_13 = var_0_159(arg_180_0, arg_180_3, arg_180_2)
	local var_180_14 = love.timer and love.timer.getDelta and love.timer.getDelta() or 0
	local var_180_15 = math.min(1, var_180_14 * 14)

	var_180_1.scroll = (var_180_1.scroll or 0) + ((var_180_1.scrollTarget or 0) - (var_180_1.scroll or 0)) * var_180_15
	var_180_1.scroll = var_0_8(var_180_1.scroll or 0, 0, var_180_12)

	local var_180_16 = math.floor(arg_180_1.x + (tonumber(var_180_2.x or 476) or 476) + 0.5)
	local var_180_17 = math.floor(arg_180_1.y + (tonumber(var_180_2.y or 52) or 52) + 0.5)
	local var_180_18 = tonumber(var_180_2.damageBarX or 40) or 40
	local var_180_19 = math.max(1, tonumber(var_180_2.damageBarW or 92) or 92)
	local var_180_20 = math.max(2, tonumber(var_180_2.damageBarH or 5) or 5)
	local var_180_21 = tonumber(var_180_2.damageBarOffsetY or 15) or 15
	local var_180_22 = math.max(0, math.floor(tonumber(var_180_2.damageBarShadowBottomPx or 1) or 1))
	local var_180_23 = math.max(0, math.floor(tonumber(var_180_2.damageBarShadowLeftPx or 2) or 2))
	local var_180_24 = tonumber(var_180_2.damageTextOffsetX or 0) or 0
	local var_180_25 = tonumber(var_180_2.damageTextOffsetY or 2) or 2
	local var_180_26 = tonumber(var_180_2.portraitX or 3) or 3
	local var_180_27 = tonumber(var_180_2.portraitY or 3) or 3
	local var_180_28 = math.max(1, math.floor(tonumber(var_180_2.portraitScale or 1) or 1))
	local var_180_29 = tonumber(arg_180_0._dpsHoverRowIndex or 0) or 0
	local var_180_30 = 0

	if var_180_3 then
		for iter_180_0, iter_180_1 in ipairs(var_180_3) do
			var_180_30 = math.max(var_180_30, tonumber(iter_180_1 and iter_180_1.damage or 0) or 0)
		end
	end

	if arg_180_3 and arg_180_3.gameOver == true then
		love.graphics.push("all")

		local var_180_31 = var_0_35(arg_180_0)

		if var_180_31 then
			love.graphics.setFont(var_180_31)
		end

		local var_180_32 = math.max(1, math.floor(math.max(var_180_8 * var_180_7, var_180_18 + var_180_19 + 28) + 0.5))
		local var_180_33, var_180_34 = love.graphics.transformPoint(var_180_16, var_180_17)
		local var_180_35, var_180_36 = love.graphics.transformPoint(var_180_16 + var_180_32, var_180_17 + var_180_11)
		local var_180_37 = math.floor(math.min(var_180_33, var_180_35) + 0.5)
		local var_180_38 = math.floor(math.min(var_180_34, var_180_36) + 0.5)
		local var_180_39 = math.max(1, math.floor(math.abs(var_180_35 - var_180_33) + 0.5))
		local var_180_40 = math.max(1, math.floor(math.abs(var_180_36 - var_180_34) + 0.5))

		love.graphics.intersectScissor(var_180_37, var_180_38, var_180_39, var_180_40)

		for iter_180_2 = 1, var_180_5 do
			local var_180_41 = var_180_3 and var_180_3[iter_180_2]
			local var_180_42 = var_0_157(var_180_41, iter_180_2)
			local var_180_43 = math.floor((var_180_42 - 1) * (var_180_9 * var_180_7 + var_180_10) - (var_180_1.scroll or 0) + 0.5)

			if var_180_43 + var_180_9 * var_180_7 >= 0 and var_180_43 <= var_180_11 then
				love.graphics.setShader()
				love.graphics.setColor(1, 1, 1, 1)

				if var_180_41 and iter_180_2 == var_180_29 then
					local var_180_44 = var_180_2.hoverOutlineRadiusPx or arg_180_0 and arg_180_0.dpsButton and arg_180_0.dpsButton.outlineRadiusPx or 1
					local var_180_45 = var_0_41(var_180_44) or var_180_0
					local var_180_46 = var_180_2.hoverOutlineColor or arg_180_0 and arg_180_0.dpsButton and arg_180_0.dpsButton.outlineColor or {
						0.9294117647058824,
						0.9019607843137255,
						0.9529411764705882,
						1
					}

					love.graphics.setColor(var_180_46[1] or 1, var_180_46[2] or 1, var_180_46[3] or 1, var_180_46[4] or 1)
					love.graphics.draw(var_180_45, var_180_16, var_180_17 + var_180_43, 0, var_180_7, var_180_7)
					love.graphics.setColor(1, 1, 1, 1)
				end

				if var_180_41 then
					local var_180_47 = var_0_39(arg_180_2, arg_180_3, var_180_41)

					if var_180_47 then
						love.graphics.setColor(1, 1, 1, 1)
						love.graphics.draw(var_180_47, var_180_16 + var_180_26, var_180_17 + var_180_43 + var_180_27, 0, var_180_28, var_180_28)
					end
				end

				local var_180_48 = var_0_46(var_180_41)

				if var_180_41 and var_0_49(arg_180_0, var_180_48) then
					love.graphics.draw(var_180_0, var_180_16, var_180_17 + var_180_43, 0, var_180_7, var_180_7)
					love.graphics.setShader()
				else
					love.graphics.draw(var_180_0, var_180_16, var_180_17 + var_180_43, 0, var_180_7, var_180_7)
				end

				if var_180_41 then
					local var_180_49 = math.max(0, math.floor((tonumber(var_180_41.displayDamage or var_180_41.damage or 0) or 0) + 0.5))
					local var_180_50 = math.max(0, math.floor((tonumber(var_180_41.displaySkillDamage or var_180_41.skillDamage or 0) or 0) + 0.5))
					local var_180_51 = math.min(var_180_50, var_180_49)
					local var_180_52 = var_180_41.displayBar or var_180_30 > 0 and var_0_8(var_180_49 / var_180_30, 0, 1) or 0
					local var_180_53 = var_180_41.displaySkillBar or var_180_30 > 0 and var_0_8(var_180_51 / var_180_30, 0, 1) or 0
					local var_180_54 = var_180_16 + var_180_18
					local var_180_55 = var_180_17 + var_180_43 + var_180_21
					local var_180_56 = math.floor(var_180_19 * var_180_52 + 0.5)
					local var_180_57 = math.min(var_180_56, math.floor(var_180_19 * var_180_53 + 0.5))
					local var_180_58 = math.max(var_180_20, var_180_20 + var_180_22)

					love.graphics.setColor(0.14, 0.11, 0.16, 0.72)
					love.graphics.rectangle("fill", var_180_54, var_180_55, var_180_19, var_180_58)

					if var_180_56 > 0 then
						love.graphics.setColor(0.4235294117647059, 0.14901960784313725, 0.058823529411764705, 1)

						if var_180_22 > 0 then
							love.graphics.rectangle("fill", var_180_54, var_180_55 + var_180_20, var_180_56, var_180_22)
						end

						local var_180_59 = math.min(var_180_23, var_180_56)

						if var_180_59 > 0 then
							love.graphics.rectangle("fill", var_180_54, var_180_55, var_180_59, var_180_20)
						end

						love.graphics.setColor(0.788235294117647, 0.35294117647058826, 0.21176470588235294, 1)
						love.graphics.rectangle("fill", var_180_54 + var_180_59, var_180_55, math.max(0, var_180_56 - var_180_59), var_180_20)

						if var_180_57 > 0 then
							local var_180_60 = var_180_2.skillDamageColor or {
								0.2901960784313726,
								0.5607843137254902,
								0.9058823529411765,
								1
							}
							local var_180_61 = var_180_60[1]
							local var_180_62 = var_180_60[2]
							local var_180_63 = var_180_60[3]
							local var_180_64 = var_180_60[4] or 1
							local var_180_65 = var_180_54 + math.max(0, var_180_56 - var_180_57)

							love.graphics.setColor(var_180_61 * 0.48, var_180_62 * 0.48, var_180_63 * 0.48, var_180_64)

							if var_180_22 > 0 then
								love.graphics.rectangle("fill", var_180_65, var_180_55 + var_180_20, var_180_57, var_180_22)
							end

							love.graphics.setColor(var_180_61, var_180_62, var_180_63, var_180_64)
							love.graphics.rectangle("fill", var_180_65, var_180_55, var_180_57, var_180_20)
						end
					end

					local var_180_66 = tostring(var_180_49)
					local var_180_67 = love.graphics.getFont()
					local var_180_68 = var_180_67 and var_180_67:getWidth(var_180_66) or 0
					local var_180_69 = math.floor(var_180_54 + (var_180_19 - var_180_68) * 0.5 + var_180_24 + 0.5)
					local var_180_70 = math.floor(var_180_17 + var_180_43 + var_180_25 + 0.5)

					love.graphics.setColor(0.88, 0.82, 0.73, 0.95)
					love.graphics.print(var_180_66, var_180_69, var_180_70)
				end

				love.graphics.setShader()
				love.graphics.setColor(1, 1, 1, 1)
			end
		end

		love.graphics.pop()
		var_0_163(arg_180_0, arg_180_1, var_180_2, var_180_1, var_180_12, var_180_13)

		return
	end

	local var_180_71 = math.max(1, math.floor(math.max(var_180_8 * var_180_7, var_180_18 + var_180_19 + 28) + 0.5))
	local var_180_72 = math.max(1, math.ceil(var_180_11))

	if not var_0_19 or var_180_71 > var_0_19:getWidth() or var_180_72 > var_0_19:getHeight() then
		local var_180_73, var_180_74 = pcall(love.graphics.newCanvas, var_180_71, var_180_72)

		if not var_180_73 or not var_180_74 then
			return
		end

		var_180_74:setFilter("nearest", "nearest")

		if var_0_19 then
			pcall(var_0_19.release, var_0_19)
		end

		var_0_19 = var_180_74
	end

	love.graphics.push("all")

	local var_180_75 = var_0_35(arg_180_0)

	love.graphics.setCanvas(var_0_19)
	love.graphics.origin()
	love.graphics.setScissor()
	love.graphics.setStencilTest()
	love.graphics.setShader()
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.clear(0, 0, 0, 0)
	love.graphics.setColor(1, 1, 1, 1)

	if var_180_75 then
		love.graphics.setFont(var_180_75)
	end

	for iter_180_3 = 1, var_180_5 do
		local var_180_76 = var_180_3 and var_180_3[iter_180_3]
		local var_180_77 = var_0_157(var_180_76, iter_180_3)
		local var_180_78 = math.floor((var_180_77 - 1) * (var_180_9 * var_180_7 + var_180_10) - (var_180_1.scroll or 0) + 0.5)

		if var_180_78 + var_180_9 * var_180_7 >= 0 and var_180_78 <= var_180_11 then
			if var_180_76 and iter_180_3 == var_180_29 then
				local var_180_79 = var_180_2.hoverOutlineRadiusPx or arg_180_0 and arg_180_0.dpsButton and arg_180_0.dpsButton.outlineRadiusPx or 1
				local var_180_80 = var_0_41(var_180_79) or var_180_0
				local var_180_81 = var_180_2.hoverOutlineColor or arg_180_0 and arg_180_0.dpsButton and arg_180_0.dpsButton.outlineColor or {
					0.9294117647058824,
					0.9019607843137255,
					0.9529411764705882,
					1
				}

				love.graphics.setShader()
				love.graphics.setColor(var_180_81[1] or 1, var_180_81[2] or 1, var_180_81[3] or 1, var_180_81[4] or 1)
				love.graphics.draw(var_180_80, 0, var_180_78, 0, var_180_7, var_180_7)
				love.graphics.setColor(1, 1, 1, 1)
			end

			if var_180_3 and var_180_3[iter_180_3] then
				local var_180_82 = var_0_39(arg_180_2, arg_180_3, var_180_3[iter_180_3])

				if var_180_82 then
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_180_82, var_180_26, var_180_78 + var_180_27, 0, var_180_28, var_180_28)
				end
			end

			local var_180_83 = var_0_46(var_180_76)

			if var_180_76 and var_0_49(arg_180_0, var_180_83) then
				love.graphics.draw(var_180_0, 0, var_180_78, 0, var_180_7, var_180_7)
				love.graphics.setShader()
			else
				love.graphics.draw(var_180_0, 0, var_180_78, 0, var_180_7, var_180_7)
			end

			if var_180_3 and var_180_3[iter_180_3] then
				local var_180_84 = math.max(0, math.floor((tonumber(var_180_3[iter_180_3].displayDamage or var_180_3[iter_180_3].damage or 0) or 0) + 0.5))
				local var_180_85 = math.max(0, math.floor((tonumber(var_180_3[iter_180_3].displaySkillDamage or var_180_3[iter_180_3].skillDamage or 0) or 0) + 0.5))
				local var_180_86 = math.min(var_180_85, var_180_84)
				local var_180_87 = var_180_3[iter_180_3].displayBar or var_180_30 > 0 and var_0_8(var_180_84 / var_180_30, 0, 1) or 0
				local var_180_88 = var_180_3[iter_180_3].displaySkillBar or var_180_30 > 0 and var_0_8(var_180_86 / var_180_30, 0, 1) or 0
				local var_180_89 = var_180_78 + var_180_21
				local var_180_90 = math.floor(var_180_19 * var_180_87 + 0.5)
				local var_180_91 = math.min(var_180_90, math.floor(var_180_19 * var_180_88 + 0.5))
				local var_180_92 = math.max(var_180_20, var_180_20 + var_180_22)

				love.graphics.setColor(0.14, 0.11, 0.16, 0.72)
				love.graphics.rectangle("fill", var_180_18, var_180_89, var_180_19, var_180_92)

				if var_180_90 > 0 then
					love.graphics.setColor(0.4235294117647059, 0.14901960784313725, 0.058823529411764705, 1)

					if var_180_22 > 0 then
						love.graphics.rectangle("fill", var_180_18, var_180_89 + var_180_20, var_180_90, var_180_22)
					end

					local var_180_93 = math.min(var_180_23, var_180_90)

					if var_180_93 > 0 then
						love.graphics.rectangle("fill", var_180_18, var_180_89, var_180_93, var_180_20)
					end

					love.graphics.setColor(0.788235294117647, 0.35294117647058826, 0.21176470588235294, 1)
					love.graphics.rectangle("fill", var_180_18 + var_180_93, var_180_89, math.max(0, var_180_90 - var_180_93), var_180_20)

					if var_180_91 > 0 then
						local var_180_94 = var_180_2.skillDamageColor or {
							0.2901960784313726,
							0.5607843137254902,
							0.9058823529411765,
							1
						}
						local var_180_95 = var_180_94[1] or 0.2901960784313726
						local var_180_96 = var_180_94[2] or 0.5607843137254902
						local var_180_97 = var_180_94[3] or 0.9058823529411765
						local var_180_98 = var_180_94[4] or 1
						local var_180_99 = var_180_18 + math.max(0, var_180_90 - var_180_91)

						love.graphics.setColor(var_180_95 * 0.48, var_180_96 * 0.48, var_180_97 * 0.48, var_180_98)

						if var_180_22 > 0 then
							love.graphics.rectangle("fill", var_180_99, var_180_89 + var_180_20, var_180_91, var_180_22)
						end

						love.graphics.setColor(var_180_95, var_180_96, var_180_97, var_180_98)
						love.graphics.rectangle("fill", var_180_99, var_180_89, var_180_91, var_180_20)
					end
				end

				local var_180_100 = tostring(var_180_84)
				local var_180_101 = love.graphics.getFont()
				local var_180_102 = var_180_101 and var_180_101:getWidth(var_180_100) or 0
				local var_180_103 = math.floor(var_180_18 + (var_180_19 - var_180_102) * 0.5 + var_180_24 + 0.5)
				local var_180_104 = math.floor(var_180_78 + var_180_25 + 0.5)

				love.graphics.setColor(0.88, 0.82, 0.73, 0.95)
				love.graphics.print(var_180_100, var_180_103, var_180_104)
				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	love.graphics.pop()

	local var_180_105 = var_0_19:getWidth()
	local var_180_106 = var_0_19:getHeight()

	if not var_0_20 then
		var_0_20 = love.graphics.newQuad(0, 0, var_180_71, var_180_72, var_180_105, var_180_106)
	else
		var_0_20:setViewport(0, 0, var_180_71, var_180_72, var_180_105, var_180_106)
	end

	local var_180_107, var_180_108 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha", "premultiplied")
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(var_0_19, var_0_20, var_180_16, var_180_17)
	love.graphics.setBlendMode(var_180_107, var_180_108)
	var_0_163(arg_180_0, arg_180_1, var_180_2, var_180_1, var_180_12, var_180_13)
end

function var_0_0.drawWindowTitleFitted(arg_181_0, arg_181_1, arg_181_2, arg_181_3, arg_181_4, arg_181_5, arg_181_6)
	arg_181_2 = arg_181_2 or love.graphics.getFont()

	local var_181_0 = require("src.ui.widgets").text_fit
	local var_181_1 = (arg_181_0 and arg_181_0.virtual and arg_181_0.virtual.W or 640) - 4 - (arg_181_6 or arg_181_4)
	local var_181_2 = var_181_0.fit(arg_181_1, var_181_1, arg_181_2, {
		maxLines = 2,
		maxH = 22,
		scale = arg_181_3,
		steps = {
			1
		}
	})
	local var_181_3 = arg_181_5 + arg_181_2:getHeight() * arg_181_3 * 0.5

	var_181_0.draw(var_181_2, arg_181_4, math.floor(var_181_3 - 12 + 0.5), var_181_1, 24, {
		lineGap = 1,
		key = "window_title:" .. arg_181_1
	})
end

function var_0_0.drawWindowMessageFitted(arg_182_0, arg_182_1, arg_182_2, arg_182_3, arg_182_4, arg_182_5, arg_182_6)
	arg_182_2 = arg_182_2 or love.graphics.getFont()

	local var_182_0 = require("src.ui.widgets").text_fit
	local var_182_1 = arg_182_0 and arg_182_0.virtual and arg_182_0.virtual.W or 640
	local var_182_2 = math.max(16, var_182_1 - 4 - (arg_182_6 or arg_182_4))
	local var_182_3 = var_182_0.fit(arg_182_1, var_182_2 * 2, arg_182_2, {
		maxLines = 2,
		scale = arg_182_3
	})

	var_182_0.draw(var_182_3, math.floor(arg_182_4 - var_182_2 + 0.5), math.floor(arg_182_5 - 14 + 0.5), var_182_2 * 2, 28, {
		align = "center",
		key = "window_message:" .. arg_182_1
	})
end

local function var_0_167(arg_183_0, arg_183_1, arg_183_2)
	if not arg_183_0 or not arg_183_1 then
		return
	end

	local var_183_0 = arg_183_0.dpsWindow and arg_183_0.dpsWindow.title or nil

	if var_183_0 == false then
		return
	end

	var_183_0 = var_183_0 or {}

	local var_183_1 = _G.currentGameLang or "ko"
	local var_183_2 = arg_183_2 or rawget(_G, "battlefield")
	local var_183_3 = var_183_2 and var_183_2.mode == "battle"
	local var_183_4 = var_183_3 and "dps_window_title_current" or var_183_0.textKey or var_183_0.langKey
	local var_183_5 = var_183_4 and var_0_3.getText(var_183_4, var_183_1) or nil
	local var_183_6 = var_0_3.getText(var_183_3 and "dps_window_title_current" or "dps_window_title", var_183_1)

	var_183_6 = var_183_1 == "ko" and (var_183_3 and "현재 전투 피해량" or var_183_0.text) or var_183_6

	local var_183_7 = tostring(var_183_5 and var_183_5 ~= var_183_4 and var_183_5 or var_183_6)

	if var_183_7 == "" then
		return
	end

	local var_183_8 = var_0_36(arg_183_0)
	local var_183_9 = love.graphics.getFont()
	local var_183_10, var_183_11, var_183_12, var_183_13 = love.graphics.getColor()

	if var_183_8 then
		love.graphics.setFont(var_183_8)
	end

	local var_183_14 = tonumber(var_183_0.scale or 1.5) or 1.5
	local var_183_15 = math.floor(arg_183_1.x + (tonumber(var_183_0.x or 510) or 510) + 0.5)
	local var_183_16 = math.floor(arg_183_1.y + (tonumber(var_183_0.y or 26) or 26) + 0.5)
	local var_183_17 = var_183_0.color or {
		1,
		0.9,
		0.5,
		1
	}

	love.graphics.setColor(var_183_17[1] or 1, var_183_17[2] or 1, var_183_17[3] or 1, var_183_17[4] or 1)

	local var_183_18 = (tonumber(arg_183_0.dpsWindow and arg_183_0.dpsWindow.offsetX or 0) or 0) + (tonumber(var_183_0.x or 510) or 510)

	var_0_0.drawWindowTitleFitted(arg_183_0, var_183_7, var_183_8, var_183_14, var_183_15, var_183_16, var_183_18)

	if var_183_9 then
		love.graphics.setFont(var_183_9)
	end

	love.graphics.setColor(var_183_10, var_183_11, var_183_12, var_183_13)
end

local function var_0_168(arg_184_0, arg_184_1)
	if not arg_184_0 or not arg_184_1 then
		return
	end

	local var_184_0 = arg_184_0.synergyWindow and arg_184_0.synergyWindow.title or nil

	if var_184_0 == false then
		return
	end

	var_184_0 = var_184_0 or {}

	local var_184_1 = _G.currentGameLang or "ko"
	local var_184_2 = var_184_0.textKey or var_184_0.langKey or "synergy_window_title"
	local var_184_3 = var_0_3.getText(var_184_2, var_184_1)
	local var_184_4 = var_0_3.getText("synergy_window_title", var_184_1)

	if var_184_1 == "ko" and var_184_0.text then
		var_184_4 = var_184_0.text
	end

	local var_184_5 = tostring(var_184_3 and var_184_3 ~= var_184_2 and var_184_3 or var_184_4)

	if var_184_5 == "" then
		return
	end

	local var_184_6 = var_0_36(arg_184_0)
	local var_184_7 = love.graphics.getFont()
	local var_184_8, var_184_9, var_184_10, var_184_11 = love.graphics.getColor()

	if var_184_6 then
		love.graphics.setFont(var_184_6)
	end

	local var_184_12 = tonumber(var_184_0.scale or 1.5) or 1.5
	local var_184_13 = math.floor(arg_184_1.x + (tonumber(var_184_0.x or 510) or 510) + 0.5)
	local var_184_14 = math.floor(arg_184_1.y + (tonumber(var_184_0.y or 19) or 19) + 0.5)
	local var_184_15 = var_184_0.color or {
		1,
		0.9,
		0.5,
		1
	}

	love.graphics.setColor(var_184_15[1] or 1, var_184_15[2] or 1, var_184_15[3] or 1, var_184_15[4] or 1)

	local var_184_16 = (tonumber(arg_184_0.synergyWindow and arg_184_0.synergyWindow.offsetX or 0) or 0) + (tonumber(var_184_0.x or 510) or 510)

	var_0_0.drawWindowTitleFitted(arg_184_0, var_184_5, var_184_6, var_184_12, var_184_13, var_184_14, var_184_16)

	if var_184_7 then
		love.graphics.setFont(var_184_7)
	end

	love.graphics.setColor(var_184_8, var_184_9, var_184_10, var_184_11)
end

local function var_0_169(arg_185_0, arg_185_1)
	if not arg_185_0 or not arg_185_1 or arg_185_1.sandboxMode ~= true then
		return false
	end

	local var_185_0 = var_0_151(arg_185_0)

	return var_185_0 and var_185_0.open == true and (var_185_0.progress or 0) >= 0.98
end

local function var_0_170(arg_186_0)
	if not arg_186_0 then
		return nil
	end

	arg_186_0._dpsScrollEditor = arg_186_0._dpsScrollEditor or {
		savedUntil = 0,
		active = false
	}

	return arg_186_0._dpsScrollEditor
end

local function var_0_171(arg_187_0, arg_187_1)
	if not arg_187_0 or not arg_187_1 then
		return nil
	end

	local var_187_0 = arg_187_0.dpsWindow and arg_187_0.dpsWindow.slotList or {}
	local var_187_1 = math.floor(arg_187_1.x + (tonumber(var_187_0.x or 476) or 476) + 0.5)
	local var_187_2 = math.floor(arg_187_1.y + (tonumber(var_187_0.y or 52) or 52) + 0.5)
	local var_187_3 = math.max(24, math.floor(tonumber(var_187_0.wheelW or 150) or 150))
	local var_187_4 = math.max(24, math.floor(tonumber(var_187_0.viewH or 156) or 156))
	local var_187_5 = 64
	local var_187_6 = 16
	local var_187_7 = math.floor(var_187_1 + math.max(0, (var_187_3 - var_187_5) * 0.5) + 0.5)
	local var_187_8 = math.floor(var_187_2 + var_187_4 + 10 + 0.5)

	return {
		box = {
			x = var_187_1,
			y = var_187_2,
			w = var_187_3,
			h = var_187_4
		},
		adjust = {
			x = var_187_7,
			y = var_187_8,
			w = var_187_5,
			h = var_187_6
		},
		save = {
			x = var_187_7,
			y = var_187_8 + 20,
			w = var_187_5,
			h = var_187_6
		}
	}
end

local function var_0_172(arg_188_0, arg_188_1, arg_188_2)
	return arg_188_2 and arg_188_0 and arg_188_1 and arg_188_0 >= arg_188_2.x and arg_188_0 <= arg_188_2.x + arg_188_2.w and arg_188_1 >= arg_188_2.y and arg_188_1 <= arg_188_2.y + arg_188_2.h
end

local function var_0_173(arg_189_0, arg_189_1, arg_189_2)
	if not arg_189_0 then
		return
	end

	if arg_189_2 then
		love.graphics.setColor(0.24, 0.34, 0.26, 0.92)
	else
		love.graphics.setColor(0.18, 0.15, 0.2, 0.88)
	end

	love.graphics.rectangle("fill", arg_189_0.x, arg_189_0.y, arg_189_0.w, arg_189_0.h)
	love.graphics.setColor(0.72, 0.66, 0.74, 0.95)
	love.graphics.rectangle("line", arg_189_0.x + 0.5, arg_189_0.y + 0.5, arg_189_0.w - 1, arg_189_0.h - 1)
	love.graphics.setColor(0.88, 0.84, 0.76, 1)

	local var_189_0 = love.graphics.getFont()
	local var_189_1 = var_189_0 and var_189_0:getWidth(arg_189_1) or 0
	local var_189_2 = var_189_0 and var_189_0:getHeight() or 10

	love.graphics.print(arg_189_1, math.floor(arg_189_0.x + (arg_189_0.w - var_189_1) * 0.5), math.floor(arg_189_0.y + (arg_189_0.h - var_189_2) * 0.5 - 1))
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_174(arg_190_0)
	if not arg_190_0 or not arg_190_0.dpsWindow or not arg_190_0.dpsWindow.slotList then
		return false
	end

	local var_190_0 = love and love.filesystem

	if not var_190_0 or not var_190_0.write then
		return false
	end

	local var_190_1 = arg_190_0.dpsWindow.slotList

	local function var_190_2(arg_191_0)
		return tonumber(arg_191_0 or 0) or 0
	end

	local var_190_3 = string.format("return {\n  slotList = {\n    x = %.3f,\n    y = %.3f,\n    viewH = %.3f,\n    wheelW = %.3f,\n    scrollbarX = %.3f,\n    scrollbarY = %.3f,\n    scrollbarH = %.3f,\n  },\n}\n", var_190_2(var_190_1.x), var_190_2(var_190_1.y), var_190_2(var_190_1.viewH), var_190_2(var_190_1.wheelW), var_190_2(var_190_1.scrollbarX), var_190_2(var_190_1.scrollbarY), var_190_2(var_190_1.scrollbarH))

	return var_190_0.write("dps_scroll_tuning.lua", var_190_3) == true
end

local function var_0_175(arg_192_0, arg_192_1, arg_192_2)
	if not arg_192_0 or not arg_192_0.dpsWindow or not arg_192_0.dpsWindow.slotList or not arg_192_1 or not arg_192_2 then
		return
	end

	local var_192_0 = arg_192_0.dpsWindow.slotList

	var_192_0.x = math.floor(arg_192_2.x - arg_192_1.x + 0.5)
	var_192_0.y = math.floor(arg_192_2.y - arg_192_1.y + 0.5)
	var_192_0.wheelW = math.max(24, math.floor(arg_192_2.w + 0.5))
	var_192_0.viewH = math.max(24, math.floor(arg_192_2.h + 0.5))
	var_192_0.scrollbarX = math.floor(arg_192_2.x - arg_192_1.x + var_192_0.wheelW - 4 + 0.5)
	var_192_0.scrollbarY = var_192_0.y
	var_192_0.scrollbarH = var_192_0.viewH

	local var_192_1 = var_0_151(arg_192_0)

	if var_192_1 then
		var_192_1.scroll = 0
		var_192_1.scrollTarget = 0
	end
end

local function var_0_176(arg_193_0, arg_193_1, arg_193_2)
	if not var_0_169(arg_193_0, arg_193_2) then
		return
	end

	local var_193_0 = var_0_170(arg_193_0)
	local var_193_1 = var_0_171(arg_193_0, arg_193_1)

	if not var_193_1 then
		return
	end

	local var_193_2 = love.graphics.getFont()

	love.graphics.setFont(var_0_5.developerFont(var_193_2))
	var_0_173(var_193_1.adjust, var_0_3.getText(var_193_0 and var_193_0.active and "editor_editing" or "editor_adjust", "ko"), var_193_0 and var_193_0.active)

	if var_193_0 and var_193_0.active then
		local var_193_3 = var_193_1.box

		love.graphics.setColor(0.95, 0.9, 0.55, 0.18)
		love.graphics.rectangle("fill", var_193_3.x, var_193_3.y, var_193_3.w, var_193_3.h)
		love.graphics.setColor(0.98, 0.92, 0.58, 0.95)
		love.graphics.setLineWidth(1)
		love.graphics.rectangle("line", var_193_3.x + 0.5, var_193_3.y + 0.5, var_193_3.w - 1, var_193_3.h - 1)
		love.graphics.setColor(0.98, 0.92, 0.58, 1)

		local var_193_4 = 5

		love.graphics.rectangle("fill", var_193_3.x + var_193_3.w - var_193_4, var_193_3.y + var_193_3.h - var_193_4, var_193_4, var_193_4)
		love.graphics.rectangle("fill", var_193_3.x + var_193_3.w - var_193_4, var_193_3.y + math.floor(var_193_3.h * 0.5) - 2, var_193_4, var_193_4)
		love.graphics.rectangle("fill", var_193_3.x + math.floor(var_193_3.w * 0.5) - 2, var_193_3.y + var_193_3.h - var_193_4, var_193_4, var_193_4)
		var_0_173(var_193_1.save, var_0_3.getText("editor_save", "ko"), false)

		if (love.timer and love.timer.getTime and love.timer.getTime() or 0) < (var_193_0.savedUntil or 0) then
			love.graphics.setColor(0.78, 0.95, 0.72, 1)
			love.graphics.print(var_0_3.getText("editor_saved", "ko"), var_193_1.save.x + var_193_1.save.w + 6, var_193_1.save.y + 1)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	love.graphics.setFont(var_193_2)
end

local function var_0_177(arg_194_0)
	local var_194_0 = var_0_151(arg_194_0)

	if not var_194_0 then
		return 0
	end

	local var_194_1 = arg_194_0 and arg_194_0.dpsWindow or {}
	local var_194_2 = love.timer and love.timer.getDelta and love.timer.getDelta() or 0
	local var_194_3 = math.max(0.001, tonumber(var_194_1.slideDur or 0.32) or 0.32)
	local var_194_4 = var_194_0.open and 1 or 0

	if var_194_0.progress == nil then
		var_194_0.progress = var_194_4
	end

	local var_194_5 = var_194_2 / var_194_3

	if var_194_4 > var_194_0.progress then
		var_194_0.progress = math.min(var_194_4, var_194_0.progress + var_194_5)
	elseif var_194_4 < var_194_0.progress then
		var_194_0.progress = math.max(var_194_4, var_194_0.progress - var_194_5)
	end

	local var_194_6 = var_0_8(var_194_0.progress or 0, 0, 1)

	if (var_194_1.ease or "outCubic") == "linear" then
		return var_194_6
	end

	return 1 - (1 - var_194_6) * (1 - var_194_6) * (1 - var_194_6)
end

local function var_0_178(arg_195_0)
	local var_195_0 = var_0_153(arg_195_0)

	if not var_195_0 then
		return 0
	end

	if not var_0_4.isEnabled() then
		var_195_0.open = false
		var_195_0.progress = 0
		var_195_0.pressUntil = 0
		var_195_0.pressKind = nil

		return 0
	end

	local var_195_1 = arg_195_0 and arg_195_0.synergyWindow or {}
	local var_195_2 = love.timer and love.timer.getDelta and love.timer.getDelta() or 0
	local var_195_3 = math.max(0.001, tonumber(var_195_1.slideDur or 0.32) or 0.32)
	local var_195_4 = var_195_0.open and 1 or 0

	if var_195_0.progress == nil then
		var_195_0.progress = var_195_4
	end

	local var_195_5 = var_195_2 / var_195_3

	if var_195_4 > var_195_0.progress then
		var_195_0.progress = math.min(var_195_4, var_195_0.progress + var_195_5)
	elseif var_195_4 < var_195_0.progress then
		var_195_0.progress = math.max(var_195_4, var_195_0.progress - var_195_5)
	end

	local var_195_6 = var_0_8(var_195_0.progress or 0, 0, 1)

	if (var_195_1.ease or "outCubic") == "linear" then
		return var_195_6
	end

	return 1 - (1 - var_195_6) * (1 - var_195_6) * (1 - var_195_6)
end

local function var_0_179(arg_196_0, arg_196_1, arg_196_2)
	local var_196_0 = arg_196_1 and arg_196_1.ui and arg_196_1.ui.dpsWindow

	if not var_196_0 or not arg_196_0 or not arg_196_0.virtual then
		return nil
	end

	local var_196_1 = arg_196_0 and arg_196_0.dpsWindow or {}
	local var_196_2 = var_196_0:getWidth()
	local var_196_3 = var_196_0:getHeight()
	local var_196_4 = (arg_196_0.virtual.W or 640) / math.max(1, var_196_2)
	local var_196_5 = (arg_196_0.virtual.H or 360) / math.max(1, var_196_3)
	local var_196_6 = tonumber(var_196_1.offsetX or 0) or 0
	local var_196_7 = tonumber(var_196_1.offsetY or 0) or 0
	local var_196_8 = arg_196_1 and arg_196_1.ui and arg_196_1.ui.dpsButton
	local var_196_9 = arg_196_0 and arg_196_0.dpsButton or {}
	local var_196_10 = 1
	local var_196_11 = 0

	if var_196_8 then
		local var_196_12 = math.max(1, math.floor(tonumber(var_196_9.scaleStep or var_196_9.scale or 1) or 1))

		var_196_11 = var_196_8:getWidth() * var_196_12
	end

	local var_196_13 = tonumber(var_196_9.panelLeftX or var_196_1.panelLeftX or 464) or 464
	local var_196_14 = tonumber(var_196_9.panelAttachX)

	if var_196_14 == nil then
		var_196_14 = var_196_13 - var_196_11
	end

	local var_196_15 = (arg_196_0.virtual.W or 640) - var_196_11 + tonumber(var_196_9.offsetX or 0) - var_196_14 - tonumber(var_196_9.offsetX or 0)
	local var_196_16 = var_0_8(arg_196_2 or 0, 0, 1)
	local var_196_17 = math.floor(var_196_15 * (1 - var_196_16) + var_196_6 * var_196_16 + 0.5)
	local var_196_18 = math.floor(var_196_7 + 0.5)

	return {
		x = var_196_17,
		y = var_196_18,
		w = var_196_2 * var_196_4,
		h = var_196_3 * var_196_5,
		sx = var_196_4,
		sy = var_196_5,
		img = var_196_0,
		iw = var_196_2,
		ih = var_196_3
	}
end

local function var_0_180(arg_197_0, arg_197_1, arg_197_2, arg_197_3)
	local var_197_0 = arg_197_2 and arg_197_2.ui and arg_197_2.ui.dpsButton

	if not var_197_0 or not arg_197_0 or not arg_197_0.virtual or not arg_197_1 then
		return nil
	end

	local var_197_1 = arg_197_0 and arg_197_0.dpsButton or {}
	local var_197_2 = math.max(1, math.floor(tonumber(var_197_1.scaleStep or var_197_1.scale or 1) or 1))
	local var_197_3 = var_197_0:getWidth()
	local var_197_4 = var_197_0:getHeight()
	local var_197_5

	if var_197_1.attachToWindow ~= false then
		local var_197_6 = var_0_179(arg_197_0, arg_197_2, arg_197_3)
		local var_197_7 = tonumber(var_197_1.panelLeftX or (arg_197_0.dpsWindow or {}).panelLeftX or 464) or 464
		local var_197_8 = tonumber(var_197_1.panelAttachX)

		if var_197_8 == nil then
			var_197_8 = var_197_7 - var_197_3 * var_197_2
		end

		var_197_5 = math.floor((var_197_6 and var_197_6.x or 0) + var_197_8 + tonumber(var_197_1.offsetX or 0) + 0.5)
	else
		local var_197_9

		if var_197_1.x ~= nil then
			var_197_9 = tonumber(var_197_1.x) or 0
		elseif var_197_1.alignRight ~= false then
			var_197_9 = (arg_197_0.virtual.W or 640) - var_197_3 * var_197_2
		else
			var_197_9 = arg_197_1.x + arg_197_1.w - var_197_3 * var_197_2
		end

		var_197_5 = math.floor(var_197_9 + tonumber(var_197_1.offsetX or 0) + 0.5)
	end

	local var_197_10
	local var_197_11 = _G.fireman

	if var_197_1.followFiremanY ~= false and var_197_11 and var_197_11.image then
		local var_197_12 = var_197_11.frameH or 20
		local var_197_13 = arg_197_0 and arg_197_0.fireman or {}
		local var_197_14 = math.max(1, math.floor(var_197_13.scaleStep or 2))

		var_197_10 = arg_197_1.y + arg_197_1.h + (var_197_13.offsetY or -16) - var_197_12 * var_197_14
	else
		var_197_10 = arg_197_1.y + arg_197_1.h - var_197_4 * var_197_2
	end

	local var_197_15 = math.floor(var_197_10 + tonumber(var_197_1.offsetY or 0) + 0.5)

	return {
		x = var_197_5,
		y = var_197_15,
		w = var_197_3 * var_197_2,
		h = var_197_4 * var_197_2,
		scale = var_197_2,
		img = var_197_0,
		iw = var_197_3,
		ih = var_197_4
	}
end

local function var_0_181(arg_198_0, arg_198_1, arg_198_2)
	local var_198_0 = arg_198_1 and arg_198_1.ui and (arg_198_1.ui.synergyWindow or arg_198_1.ui.dpsWindow)

	if not var_198_0 or not arg_198_0 or not arg_198_0.virtual then
		return nil
	end

	local var_198_1 = arg_198_0 and arg_198_0.synergyWindow or {}
	local var_198_2 = var_198_0:getWidth()
	local var_198_3 = var_198_0:getHeight()
	local var_198_4 = (arg_198_0.virtual.W or 640) / math.max(1, var_198_2)
	local var_198_5 = (arg_198_0.virtual.H or 360) / math.max(1, var_198_3)
	local var_198_6 = tonumber(var_198_1.offsetX or 0) or 0
	local var_198_7 = tonumber(var_198_1.offsetY or 0) or 0
	local var_198_8 = arg_198_1 and arg_198_1.ui and arg_198_1.ui.synergyButton
	local var_198_9 = arg_198_0 and arg_198_0.synergyButton or {}
	local var_198_10 = 1
	local var_198_11 = 0

	if var_198_8 then
		local var_198_12 = math.max(1, math.floor(tonumber(var_198_9.scaleStep or var_198_9.scale or 1) or 1))

		var_198_11 = var_198_8:getWidth() * var_198_12
	end

	local var_198_13 = tonumber(var_198_9.panelLeftX or var_198_1.panelLeftX or 464) or 464
	local var_198_14 = tonumber(var_198_9.panelAttachX)

	if var_198_14 == nil then
		var_198_14 = var_198_13 - var_198_11
	end

	local var_198_15 = (arg_198_0.virtual.W or 640) - var_198_11 + tonumber(var_198_9.offsetX or 0) - var_198_14 - tonumber(var_198_9.offsetX or 0)
	local var_198_16 = var_0_8(arg_198_2 or 0, 0, 1)
	local var_198_17 = math.floor(var_198_15 * (1 - var_198_16) + var_198_6 * var_198_16 + 0.5)
	local var_198_18 = math.floor(var_198_7 + 0.5)

	return {
		x = var_198_17,
		y = var_198_18,
		w = var_198_2 * var_198_4,
		h = var_198_3 * var_198_5,
		sx = var_198_4,
		sy = var_198_5,
		img = var_198_0,
		iw = var_198_2,
		ih = var_198_3
	}
end

local function var_0_182(arg_199_0, arg_199_1, arg_199_2, arg_199_3)
	local var_199_0 = arg_199_2 and arg_199_2.ui and arg_199_2.ui.synergyButton

	if not var_199_0 or not arg_199_0 or not arg_199_0.virtual or not arg_199_1 then
		return nil
	end

	local var_199_1 = arg_199_0 and arg_199_0.synergyButton or {}
	local var_199_2 = math.max(1, math.floor(tonumber(var_199_1.scaleStep or var_199_1.scale or 1) or 1))
	local var_199_3 = var_199_0:getWidth()
	local var_199_4 = var_199_0:getHeight()
	local var_199_5

	if var_199_1.attachToWindow ~= false then
		local var_199_6 = var_0_181(arg_199_0, arg_199_2, arg_199_3)
		local var_199_7 = tonumber(var_199_1.panelLeftX or (arg_199_0.synergyWindow or {}).panelLeftX or 464) or 464
		local var_199_8 = tonumber(var_199_1.panelAttachX)

		if var_199_8 == nil then
			var_199_8 = var_199_7 - var_199_3 * var_199_2
		end

		var_199_5 = math.floor((var_199_6 and var_199_6.x or 0) + var_199_8 + tonumber(var_199_1.offsetX or 0) + 0.5)
	else
		local var_199_9 = var_199_1.x ~= nil and (tonumber(var_199_1.x) or 0) or (arg_199_0.virtual.W or 640) - var_199_3 * var_199_2

		var_199_5 = math.floor(var_199_9 + tonumber(var_199_1.offsetX or 0) + 0.5)
	end

	local var_199_10 = var_0_180(arg_199_0, arg_199_1, arg_199_2, arg_199_3)
	local var_199_11

	if var_199_10 then
		var_199_11 = var_199_10.y + var_199_10.h + (tonumber(var_199_1.gapY or 4) or 4)
	else
		var_199_11 = arg_199_1.y + arg_199_1.h - var_199_4 * var_199_2
	end

	local var_199_12 = math.floor(var_199_11 + tonumber(var_199_1.offsetY or 0) + 0.5)

	return {
		x = var_199_5,
		y = var_199_12,
		w = var_199_3 * var_199_2,
		h = var_199_4 * var_199_2,
		scale = var_199_2,
		img = var_199_0,
		iw = var_199_3,
		ih = var_199_4
	}
end

local function var_0_183(arg_200_0, arg_200_1)
	local var_200_0 = rawget(_G, "Tutorial")

	if var_200_0 then
		if var_200_0.isRunning and var_200_0.isRunning() then
			return true
		end

		if var_200_0.isPending and var_200_0.isPending() then
			return true
		end

		if var_200_0.isActive and var_200_0.isActive() then
			return true
		end
	elseif arg_200_0 and arg_200_0._tutorialRunning then
		return true
	end

	return false
end

local function var_0_184(arg_201_0, arg_201_1)
	if var_0_183(arg_201_0, arg_201_1) then
		return true
	end

	local var_201_0 = arg_201_1 or rawget(_G, "battlefield")

	return var_201_0 and var_201_0.mode == "battle" or false
end

function var_0_0.hitTestDpsButton(arg_202_0, arg_202_1, arg_202_2, arg_202_3, arg_202_4, arg_202_5)
	if not arg_202_0 or not arg_202_1 or not arg_202_2 or not arg_202_3 or not arg_202_4 then
		return false
	end

	if arg_202_5 and arg_202_5.gameOver == true then
		return false
	end

	if var_0_183(arg_202_0, arg_202_5) then
		return false
	end

	if arg_202_0._shopMode or arg_202_0._stoneMode then
		return false
	end

	if arg_202_0.pauseOverlayState and arg_202_0.pauseOverlayState.active then
		return false
	end

	local var_202_0 = var_0_4.isEnabled() and var_0_153(arg_202_0) or nil

	if var_202_0 and var_202_0.open == true then
		return false
	end

	local var_202_1 = var_0_151(arg_202_0)
	local var_202_2 = var_202_1 and var_0_8(var_202_1.progress or 0, 0, 1) or 0
	local var_202_3 = 1 - (1 - var_202_2) * (1 - var_202_2) * (1 - var_202_2)
	local var_202_4 = var_0_180(arg_202_0, arg_202_1, arg_202_2, var_202_3)

	if not var_202_4 then
		return false
	end

	return arg_202_3 >= var_202_4.x and arg_202_3 <= var_202_4.x + var_202_4.w and arg_202_4 >= var_202_4.y and arg_202_4 <= var_202_4.y + var_202_4.h
end

function var_0_0.toggleDpsWindow(arg_203_0, arg_203_1)
	if var_0_183(arg_203_0, arg_203_1) then
		return false
	end

	local var_203_0 = var_0_151(arg_203_0)

	if not var_203_0 then
		return false
	end

	if arg_203_1 and arg_203_1.gameOver == true then
		var_203_0.open = true
		var_203_0.pressUntil = 0
		var_203_0.pressKind = nil

		return true
	end

	local var_203_1 = arg_203_0 and arg_203_0.dpsButton or {}
	local var_203_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	var_203_0.pressKind = var_203_0.open and "close" or "open"
	var_203_0.pressUntil = var_203_2 + math.max(0, tonumber(var_203_1.pressDur or 0.12) or 0.12)

	if not var_203_0.open then
		local var_203_3 = var_0_153(arg_203_0)

		if var_203_3 then
			var_203_3.open = false
		end
	end

	var_203_0.open = not var_203_0.open

	return true
end

function var_0_0.closeDpsWindow(arg_204_0, arg_204_1)
	local var_204_0 = var_0_151(arg_204_0)

	if not var_204_0 then
		return false
	end

	var_204_0.open = false

	if arg_204_1 then
		var_204_0.progress = 0
		var_204_0.scroll = 0
		var_204_0.scrollTarget = 0
		var_204_0.pressUntil = 0
		var_204_0.pressKind = nil
	end

	return true
end

function var_0_0.hitTestSynergyButton(arg_205_0, arg_205_1, arg_205_2, arg_205_3, arg_205_4, arg_205_5)
	if not var_0_4.isEnabled() then
		return false
	end

	if not arg_205_0 or not arg_205_1 or not arg_205_2 or not arg_205_3 or not arg_205_4 then
		return false
	end

	if arg_205_5 and arg_205_5.gameOver == true then
		return false
	end

	if var_0_184(arg_205_0, arg_205_5) then
		return false
	end

	if arg_205_0._shopMode or arg_205_0._stoneMode then
		return false
	end

	if arg_205_0.pauseOverlayState and arg_205_0.pauseOverlayState.active then
		return false
	end

	local var_205_0 = var_0_151(arg_205_0)

	if var_205_0 and var_205_0.open == true then
		return false
	end

	local var_205_1 = var_0_153(arg_205_0)
	local var_205_2 = var_205_1 and var_0_8(var_205_1.progress or 0, 0, 1) or 0
	local var_205_3 = arg_205_0 and arg_205_0.synergyWindow or {}
	local var_205_4 = var_205_2

	if (var_205_3.ease or "outCubic") ~= "linear" then
		var_205_4 = 1 - (1 - var_205_2) * (1 - var_205_2) * (1 - var_205_2)
	end

	local var_205_5 = var_0_182(arg_205_0, arg_205_1, arg_205_2, var_205_4)

	if not var_205_5 then
		return false
	end

	return arg_205_3 >= var_205_5.x and arg_205_3 <= var_205_5.x + var_205_5.w and arg_205_4 >= var_205_5.y and arg_205_4 <= var_205_5.y + var_205_5.h
end

function var_0_0.addPadTargets(arg_206_0, arg_206_1, arg_206_2, arg_206_3, arg_206_4)
	if not arg_206_0 or not arg_206_1 or not arg_206_2 or not arg_206_4 then
		return arg_206_4
	end

	local var_206_0 = var_0_151(arg_206_0)
	local var_206_1 = var_206_0 and var_0_8(var_206_0.progress or 0, 0, 1) or 0
	local var_206_2 = var_0_180(arg_206_0, arg_206_1, arg_206_2, 1 - (1 - var_206_1) * (1 - var_206_1) * (1 - var_206_1))

	if var_206_2 and var_0_0.hitTestDpsButton(arg_206_0, arg_206_1, arg_206_2, var_206_2.x + var_206_2.w * 0.5, var_206_2.y + var_206_2.h * 0.5, arg_206_3) then
		arg_206_4[#arg_206_4 + 1] = {
			id = "dps",
			group = "hud",
			action = "dps",
			x = var_206_2.x,
			y = var_206_2.y,
			w = var_206_2.w,
			h = var_206_2.h
		}
	end

	if var_0_4.isEnabled() then
		local var_206_3 = var_0_153(arg_206_0)
		local var_206_4 = var_206_3 and var_0_8(var_206_3.progress or 0, 0, 1) or 0
		local var_206_5 = arg_206_0 and arg_206_0.synergyWindow or {}
		local var_206_6 = var_206_4

		if (var_206_5.ease or "outCubic") ~= "linear" then
			var_206_6 = 1 - (1 - var_206_4) * (1 - var_206_4) * (1 - var_206_4)
		end

		local var_206_7 = var_0_182(arg_206_0, arg_206_1, arg_206_2, var_206_6)

		if var_206_7 and var_0_0.hitTestSynergyButton(arg_206_0, arg_206_1, arg_206_2, var_206_7.x + var_206_7.w * 0.5, var_206_7.y + var_206_7.h * 0.5, arg_206_3) then
			arg_206_4[#arg_206_4 + 1] = {
				id = "synergy",
				group = "hud",
				action = "synergy",
				x = var_206_7.x,
				y = var_206_7.y,
				w = var_206_7.w,
				h = var_206_7.h
			}
		end
	end

	if var_0_0.addDpsRowPadTargets then
		var_0_0.addDpsRowPadTargets(arg_206_0, arg_206_1, arg_206_2, arg_206_3, arg_206_4)
	end

	return arg_206_4
end

function var_0_0.toggleSynergyWindow(arg_207_0, arg_207_1)
	if not var_0_4.isEnabled() then
		var_0_0.closeSynergyWindow(arg_207_0, true)

		return false
	end

	if var_0_184(arg_207_0, arg_207_1) then
		return false
	end

	local var_207_0 = var_0_153(arg_207_0)

	if not var_207_0 then
		return false
	end

	local var_207_1 = arg_207_0 and arg_207_0.synergyButton or {}
	local var_207_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	var_207_0.pressKind = var_207_0.open and "close" or "open"
	var_207_0.pressUntil = var_207_2 + math.max(0, tonumber(var_207_1.pressDur or 0.12) or 0.12)

	if not var_207_0.open then
		local var_207_3 = var_0_151(arg_207_0)

		if var_207_3 then
			var_207_3.open = false
		end
	end

	var_207_0.open = not var_207_0.open

	return true
end

function var_0_0.closeSynergyWindow(arg_208_0, arg_208_1)
	local var_208_0 = var_0_153(arg_208_0)

	if not var_208_0 then
		return false
	end

	var_208_0.open = false

	if arg_208_1 then
		var_208_0.progress = 0
		var_208_0.pressUntil = 0
		var_208_0.pressKind = nil
	end

	return true
end

function var_0_0.hitTestBattleSidePanel(arg_209_0, arg_209_1, arg_209_2, arg_209_3)
	if not arg_209_0 or not arg_209_1 or not arg_209_2 or not arg_209_3 then
		return false
	end

	for iter_209_0, iter_209_1 in ipairs({
		"dps",
		"synergy"
	}) do
		local var_209_0 = arg_209_0["_" .. iter_209_1 .. "Window"]

		if var_209_0 and (var_209_0.open or (var_209_0.progress or 0) > 0.01) and (iter_209_1 ~= "synergy" or var_0_4.isEnabled()) then
			local var_209_1 = var_0_8(var_209_0.progress or 0, 0, 1)
			local var_209_2 = arg_209_0[iter_209_1 .. "Window"] or {}
			local var_209_3 = arg_209_0[iter_209_1 .. "Button"] or {}
			local var_209_4 = 1 - (1 - var_209_1)^3

			if iter_209_1 == "synergy" and var_209_2.ease == "linear" then
				var_209_4 = var_209_1
			end

			local var_209_5 = iter_209_1 == "dps" and var_0_179(arg_209_0, arg_209_1, var_209_4) or var_0_181(arg_209_0, arg_209_1, var_209_4)
			local var_209_6 = tonumber(var_209_3.panelLeftX or var_209_2.panelLeftX or 464) or 464

			if var_209_5 and arg_209_2 >= var_209_5.x + var_209_6 and arg_209_2 <= var_209_5.x + var_209_5.w and arg_209_3 >= var_209_5.y and arg_209_3 <= var_209_5.y + var_209_5.h then
				return true
			end
		end
	end

	return false
end

function var_0_0.handleClassSelectionSideWindowClick(arg_210_0, arg_210_1, arg_210_2, arg_210_3, arg_210_4, arg_210_5, arg_210_6)
	if arg_210_6 == 1 then
		if var_0_0.hitTestSynergyButton(arg_210_0, arg_210_1, arg_210_2, arg_210_4, arg_210_5, arg_210_3) then
			return true, var_0_0.toggleSynergyWindow(arg_210_0, arg_210_3)
		end

		if var_0_0.hitTestDpsButton(arg_210_0, arg_210_1, arg_210_2, arg_210_4, arg_210_5, arg_210_3) then
			return true, var_0_0.toggleDpsWindow(arg_210_0, arg_210_3)
		end

		if var_0_0.hitTestDpsSlotList(arg_210_0, arg_210_1, arg_210_2, arg_210_3, arg_210_4, arg_210_5) then
			return true
		end
	end

	return var_0_0.hitTestBattleSidePanel(arg_210_0, arg_210_2, arg_210_4, arg_210_5)
end

function var_0_0.closeBattleSideWindows(arg_211_0, arg_211_1)
	if not arg_211_0 then
		return false
	end

	local var_211_0 = var_0_0.closeDpsWindow(arg_211_0, arg_211_1)
	local var_211_1 = var_0_0.closeSynergyWindow(arg_211_0, arg_211_1)

	if arg_211_0._dpsWindow then
		arg_211_0._dpsWindow.pressUntil = 0
		arg_211_0._dpsWindow.pressKind = nil
	end

	if arg_211_0._synergyWindow then
		arg_211_0._synergyWindow.pressUntil = 0
		arg_211_0._synergyWindow.pressKind = nil
	end

	return var_211_0 or var_211_1
end

function var_0_0.resetDpsWindow(arg_212_0, arg_212_1)
	if arg_212_0 then
		var_0_0.closeDpsWindow(arg_212_0, true)
		var_0_0.closeSynergyWindow(arg_212_0, true)

		arg_212_0._lastBattleUnitCount = nil
		arg_212_0._lastBattleDpsRows = nil
		arg_212_0._currentBattleUnitCount = nil
		arg_212_0._dpsHoverUnit = nil
		arg_212_0._dpsHoverRow = nil
		arg_212_0._dpsHoverRowIndex = nil
		arg_212_0._dpsHoverTarget = nil
		arg_212_0._dpsDamageHoverTip = nil
		arg_212_0._dpsTitleOverlayPanelRect = nil
		arg_212_0._dpsEmptyOverlayPanelRect = nil
		arg_212_0._dpsEmptyOverlayVisible = false
	end

	if arg_212_1 then
		arg_212_1._lastBattleUnitCount = nil
		arg_212_1._lastBattleDpsRows = nil
		arg_212_1._currentBattleUnitCount = nil
	end

	return true
end

function var_0_0.handleDpsWheel(arg_213_0, arg_213_1, arg_213_2, arg_213_3, arg_213_4, arg_213_5, arg_213_6)
	if not arg_213_0 or not arg_213_1 or not arg_213_2 or not arg_213_4 or not arg_213_5 or not arg_213_6 or arg_213_6 == 0 then
		return false
	end

	if var_0_183(arg_213_0, arg_213_3) then
		return false
	end

	if arg_213_0._shopMode or arg_213_0._stoneMode then
		return false
	end

	if arg_213_0.pauseOverlayState and arg_213_0.pauseOverlayState.active then
		return false
	end

	local var_213_0 = var_0_151(arg_213_0)

	if not var_213_0 or var_213_0.open ~= true and not ((var_213_0.progress or 0) > 0.01) then
		return false
	end

	local var_213_1 = var_0_8(var_213_0.progress or 0, 0, 1)
	local var_213_2 = 1 - (1 - var_213_1) * (1 - var_213_1) * (1 - var_213_1)
	local var_213_3 = var_0_179(arg_213_0, arg_213_2, var_213_2)

	if not var_213_3 then
		return false
	end

	local var_213_4 = arg_213_0.dpsWindow and arg_213_0.dpsWindow.slotList or {}
	local var_213_5 = var_213_3.x + (tonumber(var_213_4.x or 476) or 476)
	local var_213_6 = var_213_3.y + (tonumber(var_213_4.y or 52) or 52)
	local var_213_7 = arg_213_2 and arg_213_2.ui and arg_213_2.ui.dpsSlot
	local var_213_8 = math.max(1, math.floor(tonumber(var_213_4.scale or 2) or 2))
	local var_213_9 = math.max(var_213_7 and var_213_7:getWidth() * var_213_8 or 32, tonumber(var_213_4.wheelW or 150) or 150)
	local var_213_10 = math.max(1, tonumber(var_213_4.viewH or 156) or 156)
	local var_213_11 = var_0_159(arg_213_0, arg_213_3, arg_213_2)

	if var_213_11 <= 0 then
		return false
	end

	if arg_213_4 < var_213_5 or arg_213_4 > var_213_5 + var_213_9 or arg_213_5 < var_213_6 or arg_213_5 > var_213_6 + var_213_10 then
		return false
	end

	local var_213_12 = tonumber(var_213_4.scrollSpeed or 18) or 18

	var_213_0.scrollTarget = var_0_8((var_213_0.scrollTarget or var_213_0.scroll or 0) - arg_213_6 * var_213_12, 0, var_213_11)

	return true
end

local function var_0_185(arg_214_0, arg_214_1, arg_214_2, arg_214_3, arg_214_4, arg_214_5)
	if not arg_214_0 or not arg_214_1 or not arg_214_2 or not arg_214_4 or not arg_214_5 then
		return nil
	end

	if var_0_183(arg_214_0, arg_214_3) then
		return nil
	end

	if arg_214_0._shopMode or arg_214_0._stoneMode then
		return nil
	end

	if arg_214_0.pauseOverlayState and arg_214_0.pauseOverlayState.active then
		return nil
	end

	local var_214_0 = var_0_156(arg_214_3)

	if not var_214_0 or not (#var_214_0 > 0) then
		return nil
	end

	local var_214_1 = var_0_151(arg_214_0)

	if not var_214_1 or var_214_1.open ~= true and not ((var_214_1.progress or 0) > 0.01) then
		return nil
	end

	local var_214_2 = var_0_8(var_214_1.progress or 0, 0, 1)
	local var_214_3 = 1 - (1 - var_214_2) * (1 - var_214_2) * (1 - var_214_2)
	local var_214_4 = var_0_179(arg_214_0, arg_214_2, var_214_3)

	if not var_214_4 then
		return nil
	end

	local var_214_5 = arg_214_0.dpsWindow and arg_214_0.dpsWindow.slotList or {}
	local var_214_6 = arg_214_2 and arg_214_2.ui and arg_214_2.ui.dpsSlot
	local var_214_7 = math.max(1, math.floor(tonumber(var_214_5.scale or 2) or 2))
	local var_214_8 = var_214_6 and var_214_6:getWidth() or 17
	local var_214_9 = var_214_6 and var_214_6:getHeight() or 18
	local var_214_10 = var_214_4.x + (tonumber(var_214_5.x or 476) or 476)
	local var_214_11 = var_214_4.y + (tonumber(var_214_5.y or 52) or 52)
	local var_214_12 = math.max(var_214_6 and var_214_6:getWidth() * var_214_7 or 32, tonumber(var_214_5.wheelW or 150) or 150)
	local var_214_13 = math.max(1, tonumber(var_214_5.viewH or 156) or 156)

	if arg_214_4 < var_214_10 or arg_214_4 > var_214_10 + var_214_12 or arg_214_5 < var_214_11 or arg_214_5 > var_214_11 + var_214_13 then
		return nil
	end

	local var_214_14 = tonumber(var_214_5.gap or 4) or 4
	local var_214_15 = var_214_9 * var_214_7 + var_214_14
	local var_214_16 = arg_214_5 - var_214_11 + (var_214_1.scroll or 0)
	local var_214_17, var_214_18, var_214_19 = var_0_158(var_214_0, var_214_16, math.max(1, var_214_15), var_214_9 * var_214_7)

	if not var_214_17 then
		return nil
	end

	local var_214_20 = var_214_11 + var_214_19 - (var_214_1.scroll or 0)
	local var_214_21 = {
		x = var_214_10,
		y = var_214_20,
		w = var_214_8 * var_214_7,
		h = var_214_9 * var_214_7
	}
	local var_214_22 = var_0_164(arg_214_4, arg_214_5, var_214_21)

	if var_214_17 then
		local var_214_23 = var_0_39(arg_214_2, arg_214_3, var_214_17)

		if var_214_23 then
			local var_214_24 = tonumber(var_214_5.portraitX or 3) or 3
			local var_214_25 = tonumber(var_214_5.portraitY or 3) or 3
			local var_214_26 = math.max(1, math.floor(tonumber(var_214_5.portraitScale or 1) or 1))
			local var_214_27 = {
				x = var_214_10 + var_214_24,
				y = var_214_20 + var_214_25,
				w = var_214_23:getWidth() * var_214_26,
				h = var_214_23:getHeight() * var_214_26
			}

			var_214_22 = var_214_22 or var_0_164(arg_214_4, arg_214_5, var_214_27)
		end
	end

	if var_214_22 then
		return var_214_17, var_214_18
	end

	return nil
end

local function var_0_186(arg_215_0, arg_215_1, arg_215_2, arg_215_3, arg_215_4, arg_215_5)
	if not arg_215_0 or not arg_215_1 or not arg_215_2 or not arg_215_4 or not arg_215_5 then
		return nil
	end

	if var_0_183(arg_215_0, arg_215_3) then
		return nil
	end

	if arg_215_0._shopMode or arg_215_0._stoneMode then
		return nil
	end

	if arg_215_0.pauseOverlayState and arg_215_0.pauseOverlayState.active then
		return nil
	end

	local var_215_0 = var_0_156(arg_215_3)

	if not var_215_0 or not (#var_215_0 > 0) then
		return nil
	end

	local var_215_1 = var_0_151(arg_215_0)

	if not var_215_1 or var_215_1.open ~= true and not ((var_215_1.progress or 0) > 0.01) then
		return nil
	end

	local var_215_2 = var_0_8(var_215_1.progress or 0, 0, 1)
	local var_215_3 = 1 - (1 - var_215_2) * (1 - var_215_2) * (1 - var_215_2)
	local var_215_4 = var_0_179(arg_215_0, arg_215_2, var_215_3)

	if not var_215_4 then
		return nil
	end

	local var_215_5 = arg_215_0.dpsWindow and arg_215_0.dpsWindow.slotList or {}
	local var_215_6 = arg_215_2 and arg_215_2.ui and arg_215_2.ui.dpsSlot
	local var_215_7 = math.max(1, math.floor(tonumber(var_215_5.scale or 2) or 2))
	local var_215_8 = var_215_6 and var_215_6:getHeight() or 18
	local var_215_9 = var_215_4.x + (tonumber(var_215_5.x or 476) or 476)
	local var_215_10 = var_215_4.y + (tonumber(var_215_5.y or 52) or 52)
	local var_215_11 = math.max(1, tonumber(var_215_5.viewH or 156) or 156)

	if arg_215_4 < var_215_9 or arg_215_5 < var_215_10 or arg_215_5 > var_215_10 + var_215_11 then
		return nil
	end

	local var_215_12 = tonumber(var_215_5.gap or 4) or 4
	local var_215_13 = var_215_8 * var_215_7 + var_215_12
	local var_215_14 = arg_215_5 - var_215_10 + (var_215_1.scroll or 0)
	local var_215_15, var_215_16, var_215_17 = var_0_158(var_215_0, var_215_14, math.max(1, var_215_13), var_215_8 * var_215_7)

	if not var_215_15 then
		return nil
	end

	local var_215_18 = 0

	for iter_215_0, iter_215_1 in ipairs(var_215_0) do
		var_215_18 = math.max(var_215_18, tonumber(iter_215_1 and iter_215_1.damage or 0) or 0)
	end

	if var_215_18 <= 0 then
		return nil
	end

	local var_215_19 = math.max(0, math.floor((tonumber(var_215_15.damage or 0) or 0) + 0.5))
	local var_215_20 = math.min(var_215_19, math.max(0, math.floor((tonumber(var_215_15.skillDamage or 0) or 0) + 0.5)))
	local var_215_21 = tonumber(var_215_5.damageBarX or 40) or 40
	local var_215_22 = math.max(1, tonumber(var_215_5.damageBarW or 92) or 92)
	local var_215_23 = math.max(2, tonumber(var_215_5.damageBarH or 5) or 5)
	local var_215_24 = tonumber(var_215_5.damageBarOffsetY or 15) or 15
	local var_215_25 = math.max(0, math.floor(tonumber(var_215_5.damageBarShadowBottomPx or 1) or 1))
	local var_215_26 = var_215_10 + var_215_17 - (var_215_1.scroll or 0) + var_215_24
	local var_215_27 = math.floor(var_215_22 * var_0_8(var_215_19 / var_215_18, 0, 1) + 0.5)
	local var_215_28 = math.min(var_215_27, math.floor(var_215_22 * var_0_8(var_215_20 / var_215_18, 0, 1) + 0.5))
	local var_215_29 = math.max(0, var_215_27 - var_215_28)
	local var_215_30 = {
		x = var_215_9 + var_215_21,
		y = var_215_26,
		w = var_215_29,
		h = var_215_23 + var_215_25
	}
	local var_215_31 = {
		x = var_215_9 + var_215_21 + math.max(0, var_215_27 - var_215_28),
		y = var_215_26,
		w = var_215_28,
		h = var_215_23 + var_215_25
	}
	local var_215_32 = _G.currentGameLang or "ko"
	local var_215_33 = var_0_3.getText("dps_skill_damage", var_215_32)
	local var_215_34 = var_0_3.getText("dps_basic_damage", var_215_32)

	if var_215_28 > 0 and var_0_164(arg_215_4, arg_215_5, var_215_31) then
		return {
			text = var_215_33,
			mx = arg_215_4,
			my = arg_215_5
		}
	end

	if var_215_29 > 0 and var_0_164(arg_215_4, arg_215_5, var_215_30) then
		return {
			text = var_215_34,
			mx = arg_215_4,
			my = arg_215_5
		}
	end

	return nil
end

function var_0_0.addDpsRowPadTargets(arg_216_0, arg_216_1, arg_216_2, arg_216_3, arg_216_4)
	if not arg_216_0 or not arg_216_1 or not arg_216_2 or not arg_216_4 then
		return arg_216_4
	end

	if var_0_183(arg_216_0, arg_216_3) or arg_216_0._shopMode or arg_216_0._stoneMode then
		return arg_216_4
	end

	local var_216_0 = var_0_151(arg_216_0)

	if not var_216_0 or var_216_0.open ~= true or not ((var_216_0.progress or 0) > 0.98) then
		return arg_216_4
	end

	local var_216_1 = var_0_156(arg_216_3)

	if not var_216_1 or not (#var_216_1 > 0) then
		return arg_216_4
	end

	local var_216_2 = var_0_179(arg_216_0, arg_216_2, 1)

	if not var_216_2 then
		return arg_216_4
	end

	local var_216_3 = arg_216_0.dpsWindow and arg_216_0.dpsWindow.slotList or {}
	local var_216_4 = arg_216_2.ui and arg_216_2.ui.dpsSlot
	local var_216_5 = math.max(1, math.floor(tonumber(var_216_3.scale or 2) or 2))
	local var_216_6 = var_216_4 and var_216_4:getWidth() or 17
	local var_216_7 = var_216_4 and var_216_4:getHeight() or 18
	local var_216_8 = var_216_2.x + (tonumber(var_216_3.x or 476) or 476)
	local var_216_9 = var_216_2.y + (tonumber(var_216_3.y or 52) or 52)
	local var_216_10 = math.max(1, tonumber(var_216_3.viewH or 156) or 156)
	local var_216_11 = math.max(1, var_216_7 * var_216_5 + (tonumber(var_216_3.gap or 4) or 4))

	for iter_216_0, iter_216_1 in ipairs(var_216_1) do
		local var_216_12 = var_216_9 + (var_0_157(iter_216_1, iter_216_0) - 1) * var_216_11 - (var_216_0.scroll or 0)
		local var_216_13 = var_216_12 + var_216_7 * var_216_5 * 0.5

		if var_216_9 <= var_216_13 and var_216_13 <= var_216_9 + var_216_10 then
			arg_216_4[#arg_216_4 + 1] = {
				group = "hud",
				id = "dpsrow" .. iter_216_0,
				x = var_216_8,
				y = var_216_12,
				w = var_216_6 * var_216_5,
				h = var_216_7 * var_216_5,
				order = 40 + iter_216_0
			}
		end
	end

	return arg_216_4
end

function var_0_0.updateDpsHoverUnit(arg_217_0, arg_217_1, arg_217_2, arg_217_3, arg_217_4, arg_217_5)
	if not arg_217_0 then
		return nil
	end

	local var_217_0, var_217_1 = var_0_185(arg_217_0, arg_217_1, arg_217_2, arg_217_3, arg_217_4, arg_217_5)

	arg_217_0._dpsHoverUnit = var_217_0 and var_217_0.unit or nil
	arg_217_0._dpsHoverRow = var_217_0 or nil
	arg_217_0._dpsHoverRowIndex = var_217_1
	arg_217_0._dpsDamageHoverTip = var_0_186(arg_217_0, arg_217_1, arg_217_2, arg_217_3, arg_217_4, arg_217_5)

	if var_217_0 then
		local var_217_2 = var_217_0.battleUnit
		local var_217_3 = var_217_0.unit
		local var_217_4 = arg_217_3 and arg_217_3.gameOver == true
		local var_217_5 = not var_217_4 and var_217_2 and var_217_2.alive ~= false and arg_217_3 and arg_217_3.mode == "battle"
		local var_217_6 = var_217_4 and var_217_3 or var_217_5 and var_217_2 or var_217_3 or var_217_2

		arg_217_0._dpsHoverTarget = var_217_6 and {
			kind = var_217_6 == var_217_2 and "ally" or var_217_0.kind or "roster",
			ref = var_217_6,
			sym = var_217_0.sym or var_217_6.sym,
			x = var_217_6.x or arg_217_4,
			y = var_217_6.y or arg_217_5
		} or nil
	else
		arg_217_0._dpsHoverTarget = nil
	end

	return arg_217_0._dpsHoverUnit
end

function var_0_0.hitTestDpsSlotList(arg_218_0, arg_218_1, arg_218_2, arg_218_3, arg_218_4, arg_218_5)
	return var_0_185(arg_218_0, arg_218_1, arg_218_2, arg_218_3, arg_218_4, arg_218_5) ~= nil
end

function var_0_0.handleDpsSandboxTuningMousePressed(arg_219_0, arg_219_1, arg_219_2, arg_219_3, arg_219_4, arg_219_5, arg_219_6)
	if arg_219_6 ~= 1 then
		return false
	end

	if not var_0_169(arg_219_0, arg_219_3) then
		return false
	end

	local var_219_0 = var_0_151(arg_219_0)
	local var_219_1 = 1 - (1 - var_0_8(var_219_0.progress or 0, 0, 1)) * (1 - var_0_8(var_219_0.progress or 0, 0, 1)) * (1 - var_0_8(var_219_0.progress or 0, 0, 1))
	local var_219_2 = var_0_179(arg_219_0, arg_219_2, var_219_1)
	local var_219_3 = var_0_171(arg_219_0, var_219_2)
	local var_219_4 = var_0_170(arg_219_0)

	if not var_219_2 or not var_219_3 or not var_219_4 then
		return false
	end

	if var_0_172(arg_219_4, arg_219_5, var_219_3.adjust) then
		var_219_4.active = not var_219_4.active
		var_219_4.drag = nil

		return true
	end

	if not var_219_4.active then
		return false
	end

	if var_0_172(arg_219_4, arg_219_5, var_219_3.save) then
		if var_0_174(arg_219_0) then
			var_219_4.savedUntil = (love.timer and love.timer.getTime and love.timer.getTime() or 0) + 1.25
		end

		return true
	end

	local var_219_5 = var_219_3.box

	if var_0_172(arg_219_4, arg_219_5, var_219_5) then
		local var_219_6 = "move"

		if arg_219_4 >= var_219_5.x + var_219_5.w - 8 and arg_219_5 >= var_219_5.y + var_219_5.h - 8 then
			var_219_6 = "resizeBoth"
		elseif arg_219_4 >= var_219_5.x + var_219_5.w - 8 then
			var_219_6 = "resizeW"
		elseif arg_219_5 >= var_219_5.y + var_219_5.h - 8 then
			var_219_6 = "resizeH"
		end

		var_219_4.drag = {
			mode = var_219_6,
			startX = arg_219_4,
			startY = arg_219_5,
			boxX = var_219_5.x,
			boxY = var_219_5.y,
			boxW = var_219_5.w,
			boxH = var_219_5.h
		}

		return true
	end

	return false
end

function var_0_0.handleDpsSandboxTuningMouseMoved(arg_220_0, arg_220_1, arg_220_2, arg_220_3, arg_220_4, arg_220_5)
	if not var_0_169(arg_220_0, arg_220_3) then
		return false
	end

	local var_220_0 = var_0_170(arg_220_0)

	if not var_220_0 or not var_220_0.active or not var_220_0.drag then
		return false
	end

	local var_220_1 = var_0_151(arg_220_0)
	local var_220_2 = var_0_8(var_220_1.progress or 0, 0, 1)
	local var_220_3 = 1 - (1 - var_220_2) * (1 - var_220_2) * (1 - var_220_2)
	local var_220_4 = var_0_179(arg_220_0, arg_220_2, var_220_3)

	if not var_220_4 then
		return false
	end

	local var_220_5 = var_220_0.drag
	local var_220_6 = arg_220_4 - (var_220_5.startX or arg_220_4)
	local var_220_7 = arg_220_5 - (var_220_5.startY or arg_220_5)
	local var_220_8 = {
		x = var_220_5.boxX,
		y = var_220_5.boxY,
		w = var_220_5.boxW,
		h = var_220_5.boxH
	}

	if var_220_5.mode == "move" then
		var_220_8.x = var_220_5.boxX + var_220_6
		var_220_8.y = var_220_5.boxY + var_220_7
	elseif var_220_5.mode == "resizeW" then
		var_220_8.w = var_220_5.boxW + var_220_6
	elseif var_220_5.mode == "resizeH" then
		var_220_8.h = var_220_5.boxH + var_220_7
	elseif var_220_5.mode == "resizeBoth" then
		var_220_8.w = var_220_5.boxW + var_220_6
		var_220_8.h = var_220_5.boxH + var_220_7
	end

	var_220_8.x = var_0_8(var_220_8.x, var_220_4.x, var_220_4.x + var_220_4.w - 24)
	var_220_8.y = var_0_8(var_220_8.y, var_220_4.y, var_220_4.y + var_220_4.h - 24)
	var_220_8.w = var_0_8(var_220_8.w, 24, var_220_4.x + var_220_4.w - var_220_8.x)
	var_220_8.h = var_0_8(var_220_8.h, 24, var_220_4.y + var_220_4.h - var_220_8.y)

	var_0_175(arg_220_0, var_220_4, var_220_8)

	return true
end

function var_0_0.handleDpsSandboxTuningMouseReleased(arg_221_0)
	local var_221_0 = var_0_170(arg_221_0)

	if var_221_0 and var_221_0.drag then
		var_221_0.drag = nil

		return true
	end

	return false
end

local function var_0_187(arg_222_0, arg_222_1, arg_222_2, arg_222_3, arg_222_4)
	if not var_0_4.isEnabled() then
		return
	end

	local var_222_0 = var_0_182(arg_222_0, arg_222_1, arg_222_2, arg_222_4)

	if not var_222_0 then
		return
	end

	local var_222_1 = var_0_154(arg_222_0, arg_222_2) or var_222_0.img
	local var_222_2 = var_222_0.x
	local var_222_3 = var_222_0.y
	local var_222_4 = var_222_0.scale
	local var_222_5 = var_222_0.iw
	local var_222_6 = var_222_0.ih
	local var_222_7 = arg_222_0 and arg_222_0.synergyButton or {}
	local var_222_8 = false

	if var_222_7.hover ~= false and not var_0_184(arg_222_0, arg_222_3) and (not arg_222_3 or arg_222_3.gameOver ~= true) and (not arg_222_0 or not arg_222_0.pauseOverlayState or not arg_222_0.pauseOverlayState.active) then
		local var_222_9 = arg_222_0 and arg_222_0.tooltip and arg_222_0.tooltip.mouseX
		local var_222_10 = arg_222_0 and arg_222_0.tooltip and arg_222_0.tooltip.mouseY

		if var_222_9 and var_222_10 then
			var_222_8 = var_222_2 <= var_222_9 and var_222_9 <= var_222_2 + var_222_5 * var_222_4 and var_222_3 <= var_222_10 and var_222_10 <= var_222_3 + var_222_6 * var_222_4
		end
	end

	if var_222_8 then
		local var_222_11 = var_0_40()

		if var_222_11 then
			love.graphics.setShader(var_222_11)
			var_222_11:send("texelStep", {
				1 / math.max(1, var_222_5),
				1 / math.max(1, var_222_6)
			})
			var_222_11:send("outlineColor", var_222_7.outlineColor or {
				0.9294117647058824,
				0.9019607843137255,
				0.9529411764705882,
				1
			})
			var_222_11:send("threshold", var_222_7.outlineThreshold or 0.5)
			var_222_11:send("radiusPx", var_222_7.outlineRadiusPx or 2)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_222_1, var_222_2, var_222_3, 0, var_222_4, var_222_4)
			love.graphics.setShader()
		end
	end

	local var_222_12 = var_0_181(arg_222_0, arg_222_2, arg_222_4)

	if var_222_12 and arg_222_0 and arg_222_0.virtual and arg_222_1 then
		local var_222_13 = arg_222_0 and arg_222_0.synergyWindow or {}
		local var_222_14 = var_222_13.title
		local var_222_15 = var_222_13.emptyText
		local var_222_16 = var_222_13.factionList
		local var_222_17 = not var_222_14 or var_222_14.highRes ~= false
		local var_222_18 = var_222_15 ~= false
		local var_222_19 = var_222_18 and (not var_222_15 or var_222_15.highRes ~= false)
		local var_222_20 = var_222_16 ~= false
		local var_222_21 = var_222_20 and (not var_222_16 or var_222_16.highRes ~= false)
		local var_222_22 = var_0_0.getSynergyFactionCounts(arg_222_3)
		local var_222_23 = #var_0_0.getVisibleSynergyFactionIds(var_222_22) == 0

		arg_222_0._synergyTitleOverlayPanelRect = var_222_17 and var_222_12 or nil
		arg_222_0._synergyEmptyOverlayPanelRect = var_222_19 and var_222_12 or nil
		arg_222_0._synergyEmptyOverlayVisible = var_222_19 and var_222_23
		arg_222_0._synergyFactionOverlayPanelRect = var_222_21 and var_222_12 or nil
		arg_222_0._synergyFactionOverlayCounts = var_222_21 and var_222_22 or nil

		love.graphics.setColor(1, 1, 1, var_222_13.alpha or 1)
		love.graphics.draw(var_222_12.img, var_222_12.x, var_222_12.y, 0, var_222_12.sx, var_222_12.sy)
		love.graphics.setColor(1, 1, 1, 1)

		if not var_222_17 then
			var_0_168(arg_222_0, var_222_12)
		end

		if var_222_23 and var_222_18 and not var_222_19 then
			var_0_161(arg_222_0, var_222_12)
		end

		if var_222_20 and not var_222_21 then
			var_0_162(arg_222_0, var_222_12, var_222_22)
		end
	end

	local var_222_24 = arg_222_2 and arg_222_2.ui and arg_222_2.ui.dpsShadow

	if var_222_24 then
		local var_222_25 = var_222_24:getWidth()
		local var_222_26 = var_222_24:getHeight()
		local var_222_27 = math.floor(var_222_2 + (var_222_5 * var_222_4 - var_222_25 * var_222_4) * 0.5 + tonumber(var_222_7.shadowOffsetX or 0) + 0.5)
		local var_222_28 = math.floor(var_222_3 + (var_222_6 * var_222_4 - var_222_26 * var_222_4) * 0.5 + tonumber(var_222_7.shadowOffsetY or 0) + 0.5)

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_222_24, var_222_27, var_222_28, 0, var_222_4, var_222_4)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(var_222_1, var_222_2, var_222_3, 0, var_222_4, var_222_4)
	love.graphics.setColor(1, 1, 1, 1)

	if Controller and Controller.badge and not var_0_184(arg_222_0, arg_222_3) and (not arg_222_3 or arg_222_3.gameOver ~= true) then
		Controller.badge("synergy", var_222_1, var_222_2, var_222_3, var_222_4, var_222_4, {
			corner = "br"
		})
	end
end

function var_0_0.drawDpsButton(arg_223_0, arg_223_1, arg_223_2, arg_223_3, arg_223_4, arg_223_5)
	local var_223_0 = var_0_4.isEnabled()

	if arg_223_0 then
		arg_223_0._dpsTitleOverlayPanelRect = nil
		arg_223_0._dpsEmptyOverlayPanelRect = nil
		arg_223_0._dpsEmptyOverlayVisible = false
		arg_223_0._synergyTitleOverlayPanelRect = nil
		arg_223_0._synergyEmptyOverlayPanelRect = nil
		arg_223_0._synergyEmptyOverlayVisible = false
		arg_223_0._synergyFactionOverlayPanelRect = nil
		arg_223_0._synergyFactionOverlayCounts = nil
		arg_223_0._synergyHoveredFaction = nil
		arg_223_0._synergyFactionHoverDisabled = not var_223_0 or var_0_184(arg_223_0, arg_223_5)
	end

	if not var_223_0 then
		var_0_0.closeSynergyWindow(arg_223_0, true)
	end

	if arg_223_3 or arg_223_4 then
		return
	end

	local var_223_1 = var_0_151(arg_223_0)

	if var_223_1 and arg_223_5 and arg_223_5.gameOver == true then
		var_223_1.open = true

		local var_223_2 = var_0_153(arg_223_0)

		if var_223_2 then
			var_223_2.open = false
		end
	end

	local var_223_3 = var_0_177(arg_223_0)
	local var_223_4 = var_223_0 and var_0_178(arg_223_0) or 0
	local var_223_5 = var_223_0 and var_0_153(arg_223_0) or nil
	local var_223_6 = arg_223_5 and arg_223_5.gameOver == true
	local var_223_7 = var_223_1 and var_223_1.open == true

	if not var_223_7 and (not var_223_5 or var_223_5.open ~= true) then
		var_223_7 = var_223_4 < var_223_3
	end

	local var_223_8 = var_0_180(arg_223_0, arg_223_1, arg_223_2, var_223_3)

	if not var_223_8 then
		return
	end

	local var_223_9 = var_0_152(arg_223_0, arg_223_2) or var_223_8.img
	local var_223_10 = var_223_8.x
	local var_223_11 = var_223_8.y
	local var_223_12 = var_223_8.scale
	local var_223_13 = var_223_8.iw
	local var_223_14 = var_223_8.ih
	local var_223_15 = arg_223_0 and arg_223_0.dpsButton or {}

	if var_223_0 and var_223_7 and not var_223_6 then
		var_0_187(arg_223_0, arg_223_1, arg_223_2, arg_223_5, var_223_4)
	end

	local var_223_16 = false

	if var_223_15.hover ~= false and not var_0_183(arg_223_0, arg_223_5) and (not arg_223_5 or arg_223_5.gameOver ~= true) and (not arg_223_0 or not arg_223_0.pauseOverlayState or not arg_223_0.pauseOverlayState.active) then
		local var_223_17 = arg_223_0 and arg_223_0.tooltip and arg_223_0.tooltip.mouseX
		local var_223_18 = arg_223_0 and arg_223_0.tooltip and arg_223_0.tooltip.mouseY

		if var_223_17 and var_223_18 then
			var_223_16 = var_223_10 <= var_223_17 and var_223_17 <= var_223_10 + var_223_13 * var_223_12 and var_223_11 <= var_223_18 and var_223_18 <= var_223_11 + var_223_14 * var_223_12
		end
	end

	if var_223_16 then
		local var_223_19 = var_0_40()

		if var_223_19 then
			love.graphics.setShader(var_223_19)
			var_223_19:send("texelStep", {
				1 / math.max(1, var_223_13),
				1 / math.max(1, var_223_14)
			})
			var_223_19:send("outlineColor", var_223_15.outlineColor or {
				0.9294117647058824,
				0.9019607843137255,
				0.9529411764705882,
				1
			})
			var_223_19:send("threshold", var_223_15.outlineThreshold or 0.5)
			var_223_19:send("radiusPx", var_223_15.outlineRadiusPx or 2)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_223_9, var_223_10, var_223_11, 0, var_223_12, var_223_12)
			love.graphics.setShader()
		end
	end

	local var_223_20 = var_0_179(arg_223_0, arg_223_2, var_223_3)

	if var_223_20 and arg_223_0 and arg_223_0.virtual and arg_223_1 then
		local var_223_21 = arg_223_0 and arg_223_0.dpsWindow or {}
		local var_223_22 = var_223_21 and var_223_21.title
		local var_223_23 = not var_223_22 or var_223_22.highRes ~= false

		if var_223_23 then
			arg_223_0._dpsTitleOverlayPanelRect = var_223_20
		else
			arg_223_0._dpsTitleOverlayPanelRect = nil
		end

		love.graphics.setColor(1, 1, 1, var_223_21.alpha or 1)
		love.graphics.draw(var_223_20.img, var_223_20.x, var_223_20.y, 0, var_223_20.sx, var_223_20.sy)
		love.graphics.setColor(1, 1, 1, 1)

		if not var_223_23 then
			var_0_167(arg_223_0, var_223_20, arg_223_5)
		end

		var_0_166(arg_223_0, var_223_20, arg_223_2, arg_223_5)
		var_0_176(arg_223_0, var_223_20, arg_223_5)
		var_0_165(arg_223_0, arg_223_0._dpsDamageHoverTip)
	end

	local var_223_24 = arg_223_2 and arg_223_2.ui and arg_223_2.ui.dpsShadow

	if var_223_24 then
		local var_223_25 = var_223_24:getWidth()
		local var_223_26 = var_223_24:getHeight()
		local var_223_27 = math.floor(var_223_10 + (var_223_13 * var_223_12 - var_223_25 * var_223_12) * 0.5 + tonumber(var_223_15.shadowOffsetX or 0) + 0.5)
		local var_223_28 = math.floor(var_223_11 + (var_223_14 * var_223_12 - var_223_26 * var_223_12) * 0.5 + tonumber(var_223_15.shadowOffsetY or 0) + 0.5)

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_223_24, var_223_27, var_223_28, 0, var_223_12, var_223_12)
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(var_223_9, var_223_10, var_223_11, 0, var_223_12, var_223_12)
	love.graphics.setColor(1, 1, 1, 1)

	if Controller and Controller.badge and not var_0_183(arg_223_0, arg_223_5) and (not arg_223_5 or arg_223_5.gameOver ~= true) then
		Controller.badge("dps", var_223_9, var_223_10, var_223_11, var_223_12, var_223_12, {
			corner = "tr"
		})
	end

	if var_223_0 and not var_223_7 and not var_223_6 then
		var_0_187(arg_223_0, arg_223_1, arg_223_2, arg_223_5, var_223_4)
	end
end

local function var_0_188(arg_224_0, arg_224_1, arg_224_2)
	local var_224_0
	local var_224_1
	local var_224_2
	local var_224_3 = math.floor(arg_224_0 * 6)
	local var_224_4 = arg_224_0 * 6 - var_224_3
	local var_224_5 = arg_224_2 * (1 - arg_224_1)
	local var_224_6 = arg_224_2 * (1 - var_224_4 * arg_224_1)
	local var_224_7 = arg_224_2 * (1 - (1 - var_224_4) * arg_224_1)
	local var_224_8 = var_224_3 % 6

	if var_224_8 == 0 then
		var_224_0, var_224_1, var_224_2 = arg_224_2, var_224_7, var_224_5
	elseif var_224_8 == 1 then
		var_224_0, var_224_1, var_224_2 = var_224_6, arg_224_2, var_224_5
	elseif var_224_8 == 2 then
		var_224_0, var_224_1, var_224_2 = var_224_5, arg_224_2, var_224_7
	elseif var_224_8 == 3 then
		var_224_0, var_224_1, var_224_2 = var_224_5, var_224_6, arg_224_2
	elseif var_224_8 == 4 then
		var_224_0, var_224_1, var_224_2 = var_224_7, var_224_5, arg_224_2
	elseif var_224_8 == 5 then
		var_224_0, var_224_1, var_224_2 = arg_224_2, var_224_5, var_224_6
	end

	return var_224_0, var_224_1, var_224_2
end

local var_0_189 = {}

function var_0_0.triggerSlotWinEffects(arg_225_0, arg_225_1, arg_225_2, arg_225_3)
	local var_225_0 = ({
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
	})[arg_225_2]

	if not var_225_0 or not arg_225_1 then
		return
	end

	local var_225_1 = arg_225_1.x
	local var_225_2 = arg_225_1.y
	local var_225_3 = arg_225_1.w
	local var_225_4 = arg_225_1.h
	local var_225_5 = 3
	local var_225_6 = 3
	local var_225_7 = var_225_3 / var_225_5
	local var_225_8 = var_225_4 / var_225_6
	local var_225_9 = var_225_2 + var_225_4 + 40
	local var_225_10 = 6
	local var_225_11 = 1
	local var_225_12 = 0
	local var_225_13 = 0
	local var_225_14 = {
		1,
		1,
		1
	}
	local var_225_15
	local var_225_16 = {
		1,
		0.9,
		0.3
	}
	local var_225_17 = false

	if arg_225_3 == "advanced" then
		var_225_10 = 12
		var_225_11 = 3
		var_225_13 = 0.08
		var_225_14 = {
			0.5,
			1,
			0.5
		}
		var_225_16 = {
			0.5,
			1,
			0.5
		}
	elseif arg_225_3 == "rare" then
		var_225_10 = 20
		var_225_11 = 5
		var_225_13 = 0.18
		var_225_14 = {
			0.3,
			0.6,
			1
		}
		var_225_16 = {
			0.3,
			0.7,
			1
		}
	elseif arg_225_3 == "special" then
		var_225_10 = 20
		var_225_11 = 5
		var_225_13 = 0.18
		var_225_14 = {
			0.9411764705882353,
			0.30980392156862746,
			0.8470588235294118
		}
		var_225_16 = {
			0.9411764705882353,
			0.30980392156862746,
			0.8470588235294118
		}
	elseif arg_225_3 == "legendary" then
		var_225_10 = 35
		var_225_11 = 8
		var_225_12 = 0
		var_225_13 = 0.35
		var_225_14 = {
			1,
			0.75,
			0.15
		}
		var_225_16 = {
			1,
			0.75,
			0.1
		}
	elseif arg_225_3 == "prism" then
		var_225_10 = 75
		var_225_11 = 15
		var_225_12 = 0
		var_225_13 = 0.6
		var_225_14 = {
			1,
			0.95,
			1
		}
		var_225_17 = true
	end

	local var_225_18 = {}

	for iter_225_0, iter_225_1 in ipairs(var_225_0) do
		local var_225_19 = iter_225_1[1]
		local var_225_20 = var_225_1 + (iter_225_1[2] - 1) * var_225_7
		local var_225_21 = math.floor(var_225_20 + var_225_7 / 2 + 0.5)
		local var_225_22 = math.floor(var_225_2 + (var_225_19 - 0.5) * var_225_8 + 0.5)

		table.insert(var_225_18, {
			x = var_225_21,
			y = var_225_22
		})
	end

	for iter_225_2, iter_225_3 in ipairs(var_225_18) do
		for iter_225_4 = 1, var_225_11 do
			local var_225_23 = math.random() * math.pi * 2
			local var_225_24 = math.random(5, 25)

			table.insert(var_0_189, {
				type = "sparkle",
				t = 0,
				x = iter_225_3.x + math.cos(var_225_23) * var_225_24,
				y = iter_225_3.y + math.sin(var_225_23) * var_225_24,
				size = math.random(10, 20),
				angle = math.random() * math.pi * 2,
				vangle = (math.random() > 0.5 and 1 or -1) * (2 + math.random() * 4),
				r = var_225_16[1],
				g = var_225_16[2],
				b = var_225_16[3],
				dur = 0.4 + math.random() * 0.3
			})
		end

		for iter_225_5 = 1, var_225_10 do
			local var_225_25 = math.random() * math.pi * 2
			local var_225_26 = 60
			local var_225_27 = 150

			if arg_225_3 == "advanced" then
				var_225_26, var_225_27 = 80, 200
			elseif arg_225_3 == "rare" or arg_225_3 == "special" then
				var_225_26, var_225_27 = 100, 260
			elseif arg_225_3 == "legendary" then
				var_225_26, var_225_27 = 120, 340
			elseif arg_225_3 == "prism" then
				var_225_26, var_225_27 = 150, 480
			end

			local var_225_28 = math.random(var_225_26, var_225_27)
			local var_225_29 = var_225_16[1]
			local var_225_30 = var_225_16[2]
			local var_225_31 = var_225_16[3]

			if arg_225_3 == "prism" then
				var_225_29, var_225_30, var_225_31 = var_0_188(math.random(), 0.9, 1)
			elseif math.random() < 0.38 then
				var_225_29, var_225_30, var_225_31 = var_0_188(math.random(), 0.78, 1)
			elseif arg_225_3 == "normal" then
				local var_225_32 = 0.55 + math.random() * 0.15

				var_225_29, var_225_30, var_225_31 = var_225_32, var_225_32, var_225_32
			else
				local var_225_33 = (math.random() * 2 - 1) * 0.15

				var_225_29 = var_0_8(var_225_29 + var_225_33, 0, 1)
				var_225_30 = var_0_8(var_225_30 + var_225_33, 0, 1)
				var_225_31 = var_0_8(var_225_31 + var_225_33, 0, 1)
			end

			table.insert(var_0_189, {
				type = "confetti",
				t = 0,
				x = iter_225_3.x,
				y = iter_225_3.y,
				vx = math.cos(var_225_25) * var_225_28,
				vy = math.sin(var_225_25) * var_225_28 - 150,
				size = math.random(6, 12),
				angle = math.random() * math.pi * 2,
				vangle = (math.random() * 2 - 1) * (10 + math.random() * 15),
				r = var_225_29,
				g = var_225_30,
				b = var_225_31,
				dur = 1 + math.random() * 0.8
			})
		end
	end

	if var_225_12 > 0 then
		local var_225_34 = var_225_1 + var_225_3 / 2
		local var_225_35 = var_225_2 + var_225_4 - 15

		for iter_225_6 = 1, var_225_12 do
			table.insert(var_0_189, {
				type = "coin",
				t = 0,
				x = var_225_34 + (math.random() * 60 - 30),
				y = var_225_35,
				vx = math.random() * 320 - 160,
				vy = -(350 + math.random() * 350),
				angle = math.random() * math.pi * 2,
				vangle = (math.random() * 2 - 1) * (8 + math.random() * 12),
				groundY = var_225_9,
				dur = 1.8 + math.random() * 0.6,
				volume = arg_225_3 == "prism" and 0.5 or 0.35
			})
		end
	end

	if var_225_13 > 0 then
		table.insert(var_0_189, {
			t = 0,
			type = "screenFlash",
			dur = 0.35,
			r = var_225_14[1],
			g = var_225_14[2],
			b = var_225_14[3],
			maxAlpha = var_225_13
		})
	end

	if var_225_15 then
		local var_225_36 = var_225_1 + var_225_3 / 2
		local var_225_37 = var_225_2 + var_225_4 / 2

		if #var_225_18 == 3 then
			var_225_36 = var_225_18[2].x
			var_225_37 = var_225_18[2].y
		end

		table.insert(var_0_189, {
			type = "floatText",
			dur = 1.1,
			vy = -90,
			t = 0,
			text = var_225_15,
			x = var_225_36,
			y = var_225_37 - 20,
			r = var_225_16[1],
			g = var_225_16[2],
			b = var_225_16[3],
			rainbow = var_225_17
		})
	end

	local var_225_38 = var_0_1 and var_0_1.audio

	if var_225_38 then
		local var_225_39

		if arg_225_3 == "normal" or arg_225_3 == "advanced" then
			var_225_39 = var_225_38.custom_win
		end

		if var_225_39 then
			if arg_225_3 == "advanced" and var_225_39.setPitch then
				var_225_39:setPitch(1.15)
			elseif var_225_39.setPitch then
				var_225_39:setPitch(1)
			end

			if var_225_39:isPlaying() then
				var_225_39:stop()
			end

			var_225_39:play()
		end
	end
end

function var_0_0.updateSlotWinEffects(arg_226_0)
	arg_226_0 = arg_226_0 or 0

	for iter_226_0 = #var_0_189, 1, -1 do
		local var_226_0 = var_0_189[iter_226_0]

		var_226_0.t = var_226_0.t + arg_226_0

		if var_226_0.t >= var_226_0.dur then
			table.remove(var_0_189, iter_226_0)
		elseif var_226_0.type == "confetti" then
			var_226_0.x = var_226_0.x + var_226_0.vx * arg_226_0
			var_226_0.y = var_226_0.y + var_226_0.vy * arg_226_0
			var_226_0.vy = var_226_0.vy + 750 * arg_226_0
			var_226_0.vx = var_226_0.vx * math.pow(0.96, arg_226_0 * 60)
			var_226_0.angle = var_226_0.angle + var_226_0.vangle * arg_226_0
		elseif var_226_0.type == "coin" then
			var_226_0.x = var_226_0.x + var_226_0.vx * arg_226_0
			var_226_0.y = var_226_0.y + var_226_0.vy * arg_226_0
			var_226_0.vy = var_226_0.vy + 1100 * arg_226_0
			var_226_0.angle = var_226_0.angle + var_226_0.vangle * arg_226_0

			if var_226_0.y >= var_226_0.groundY and var_226_0.vy > 0 then
				var_226_0.y = var_226_0.groundY
				var_226_0.vy = -var_226_0.vy * 0.45
				var_226_0.vx = var_226_0.vx * 0.65
				var_226_0.vangle = var_226_0.vangle * 0.5

				if math.abs(var_226_0.vy) > 35 then
					local var_226_1 = var_0_1 and var_0_1.audio and var_0_1.audio.coinClink

					if var_226_1 then
						var_226_1:setPitch(0.85 + math.random() * 0.3)
						var_226_1:setVolume(var_226_0.volume or 0.3)

						if var_226_1:isPlaying() then
							var_226_1:stop()
						end

						var_226_1:play()
					end
				end
			end
		elseif var_226_0.type == "sparkle" then
			var_226_0.angle = var_226_0.angle + var_226_0.vangle * arg_226_0
		elseif var_226_0.type == "floatText" then
			var_226_0.y = var_226_0.y + var_226_0.vy * arg_226_0
			var_226_0.vy = var_226_0.vy * math.pow(0.9, arg_226_0 * 60)
		end
	end
end

function var_0_0.drawSlotWinEffects(arg_227_0, arg_227_1)
	if not arg_227_1 then
		return
	end

	if #var_0_189 == 0 then
		return
	end

	love.graphics.push("all")

	local var_227_0, var_227_1 = love.graphics.getDimensions()

	for iter_227_0, iter_227_1 in ipairs(var_0_189) do
		if iter_227_1.type == "screenFlash" then
			local var_227_2 = math.max(0, 1 - iter_227_1.t / iter_227_1.dur) * iter_227_1.maxAlpha

			love.graphics.setColor(iter_227_1.r, iter_227_1.g, iter_227_1.b, var_227_2)
			love.graphics.rectangle("fill", 0, 0, var_227_0, var_227_1)
		end
	end

	for iter_227_2, iter_227_3 in ipairs(var_0_189) do
		if iter_227_3.type == "sparkle" then
			local var_227_3 = iter_227_3.t / iter_227_3.dur
			local var_227_4 = math.sin(var_227_3 * math.pi)
			local var_227_5 = iter_227_3.size * var_227_4

			love.graphics.setColor(iter_227_3.r, iter_227_3.g, iter_227_3.b, 0.9 * (1 - var_227_3))
			love.graphics.push()
			love.graphics.translate(iter_227_3.x, iter_227_3.y)
			love.graphics.rotate(iter_227_3.angle)
			love.graphics.setLineWidth(2.5)
			love.graphics.line(-var_227_5, 0, var_227_5, 0)
			love.graphics.line(0, -var_227_5, 0, var_227_5)
			love.graphics.rectangle("fill", -var_227_5 * 0.25, -var_227_5 * 0.25, var_227_5 * 0.5, var_227_5 * 0.5)
			love.graphics.pop()
		end
	end

	for iter_227_4, iter_227_5 in ipairs(var_0_189) do
		if iter_227_5.type == "confetti" then
			local var_227_6 = math.max(0, 1 - iter_227_5.t / iter_227_5.dur)

			love.graphics.setColor(iter_227_5.r, iter_227_5.g, iter_227_5.b, var_227_6)
			love.graphics.push()
			love.graphics.translate(iter_227_5.x, iter_227_5.y)
			love.graphics.rotate(iter_227_5.angle)
			love.graphics.rectangle("fill", -iter_227_5.size / 2, -iter_227_5.size / 4, iter_227_5.size, iter_227_5.size / 2)
			love.graphics.pop()
		end
	end

	for iter_227_6, iter_227_7 in ipairs(var_0_189) do
		if iter_227_7.type == "coin" then
			local var_227_7 = math.max(0, 1 - iter_227_7.t / iter_227_7.dur)

			love.graphics.push()
			love.graphics.translate(iter_227_7.x, iter_227_7.y)
			love.graphics.rotate(iter_227_7.angle)
			love.graphics.setColor(1, 0.85, 0.15, var_227_7)
			love.graphics.circle("fill", 0, 0, 7)
			love.graphics.setColor(0.85, 0.65, 0, var_227_7)
			love.graphics.setLineWidth(1.5)
			love.graphics.circle("line", 0, 0, 7)
			love.graphics.setColor(0.2, 0.2, 0.2, var_227_7 * 0.8)
			love.graphics.rectangle("fill", -2, -2, 4, 4)
			love.graphics.pop()
		end
	end

	local var_227_8 = var_0_36(arg_227_0) or love.graphics.getFont()

	love.graphics.setFont(var_227_8)

	for iter_227_8, iter_227_9 in ipairs(var_0_189) do
		if iter_227_9.type == "floatText" then
			local var_227_9 = iter_227_9.t / iter_227_9.dur
			local var_227_10 = 1
			local var_227_11 = 1

			if var_227_9 < 0.15 then
				var_227_10 = var_227_9 / 0.15 * 1.5
			elseif var_227_9 < 0.8 then
				var_227_10 = 1.5 - (var_227_9 - 0.15) * 0.77 * 0.5
			else
				var_227_10 = 1.11
				var_227_11 = math.max(0, 1 - (var_227_9 - 0.8) / 0.2)
			end

			local var_227_12 = var_227_8:getWidth(iter_227_9.text)
			local var_227_13 = var_227_8:getHeight()

			love.graphics.push()
			love.graphics.translate(iter_227_9.x, iter_227_9.y)
			love.graphics.scale(var_227_10, var_227_10)
			love.graphics.setColor(0, 0, 0, var_227_11 * 0.8)
			love.graphics.print(iter_227_9.text, -var_227_12 / 2 + 1.5, -var_227_13 / 2 + 1.5)

			if iter_227_9.rainbow then
				local var_227_14, var_227_15, var_227_16 = var_0_188((love.timer.getTime() * 1.5 + iter_227_9.x * 0.005) % 1, 0.9, 1)

				love.graphics.setColor(var_227_14, var_227_15, var_227_16, var_227_11)
			else
				love.graphics.setColor(iter_227_9.r, iter_227_9.g, iter_227_9.b, var_227_11)
			end

			love.graphics.print(iter_227_9.text, -var_227_12 / 2, -var_227_13 / 2)
			love.graphics.pop()
		end
	end

	love.graphics.pop()
end

function var_0_0.drawDpsTitleOverlay(arg_228_0)
	if not arg_228_0 then
		return
	end

	if arg_228_0._dpsTitleOverlayPanelRect or arg_228_0._dpsEmptyOverlayPanelRect then
		local var_228_0 = arg_228_0.dpsWindow and arg_228_0.dpsWindow.title

		if arg_228_0._dpsTitleOverlayPanelRect and var_228_0 ~= false and (not var_228_0 or var_228_0.highRes ~= false) then
			var_0_167(arg_228_0, arg_228_0._dpsTitleOverlayPanelRect, rawget(_G, "battlefield"))
		end

		if arg_228_0._dpsEmptyOverlayVisible and arg_228_0._dpsEmptyOverlayPanelRect then
			var_0_160(arg_228_0, arg_228_0._dpsEmptyOverlayPanelRect)
		end
	end

	if var_0_4.isEnabled() then
		local var_228_1 = arg_228_0.synergyWindow and arg_228_0.synergyWindow.title

		if arg_228_0._synergyTitleOverlayPanelRect and var_228_1 ~= false and (not var_228_1 or var_228_1.highRes ~= false) then
			var_0_168(arg_228_0, arg_228_0._synergyTitleOverlayPanelRect)
		end

		if arg_228_0._synergyEmptyOverlayVisible and arg_228_0._synergyEmptyOverlayPanelRect then
			var_0_161(arg_228_0, arg_228_0._synergyEmptyOverlayPanelRect)
		end

		if arg_228_0._synergyFactionOverlayPanelRect then
			var_0_162(arg_228_0, arg_228_0._synergyFactionOverlayPanelRect, arg_228_0._synergyFactionOverlayCounts)
		end
	end
end

function var_0_0.releaseTransientResources()
	if var_0_119 then
		pcall(var_0_119.release, var_0_119)
	end

	if var_0_19 then
		pcall(var_0_19.release, var_0_19)
	end

	if var_0_20 then
		pcall(var_0_20.release, var_0_20)
	end

	for iter_229_0, iter_229_1 in pairs(var_0_21) do
		if iter_229_1 then
			pcall(iter_229_1.release, iter_229_1)
		end
	end

	for iter_229_2, iter_229_3 in pairs(var_0_26) do
		if iter_229_3 then
			pcall(iter_229_3.release, iter_229_3)
		end
	end

	for iter_229_4, iter_229_5 in pairs(var_0_27) do
		if iter_229_5 then
			pcall(iter_229_5.release, iter_229_5)
		end
	end

	var_0_27 = {}

	if var_0_28 then
		pcall(var_0_28.release, var_0_28)

		var_0_28 = nil
	end

	if var_0_22 then
		pcall(var_0_22.release, var_0_22)
	end

	if var_0_24 and var_0_24 ~= var_0_22 then
		pcall(var_0_24.release, var_0_24)
	end

	if var_0_66 then
		pcall(var_0_66.release, var_0_66)
	end

	if var_0_71 then
		pcall(var_0_71.release, var_0_71)
	end

	if var_0_62 then
		pcall(var_0_62.release, var_0_62)
	end

	if var_0_97 then
		pcall(var_0_97.release, var_0_97)
	end

	if var_0_99 then
		pcall(var_0_99.release, var_0_99)
	end

	var_0_19 = nil
	var_0_20 = nil
	var_0_21 = {}
	var_0_26 = {}
	var_0_22 = nil
	var_0_23 = nil
	var_0_24 = nil
	var_0_25 = nil
	var_0_66 = nil
	var_0_67, var_0_68 = 0, 0
	var_0_69 = 0
	var_0_71 = nil
	var_0_72, var_0_73 = 0, 0
	var_0_74, var_0_75 = 0, 0
	var_0_62 = nil
	var_0_97 = nil
	var_0_99 = nil
	var_0_119 = nil
	var_0_120 = false
	var_0_11 = {}
	var_0_12 = {}
	var_0_189 = {}
end

return var_0_0
