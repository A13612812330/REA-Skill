local var_0_0 = {}

var_0_0._cancelTriggered = false
var_0_0._convertTriggered = false
var_0_0._upgradeTriggered = false
var_0_0._upgradeSlot = nil
var_0_0._confirmTriggered = false
var_0_0._confirmSlot = nil
var_0_0._confirmAction = nil
var_0_0._changeTriggered = false
var_0_0._changeSlot = nil

local var_0_1 = require("src.data.constants")
local var_0_2 = require("src.ui.layout")
local var_0_3 = require("src.data.assets")
local var_0_4 = require("src.data.randomoption")
local var_0_5 = require("src.data.language")
local var_0_6 = require("src.data.font_resolver")
local var_0_7 = require("src.data.skill")
local var_0_8 = "src/data/font/Chinese/arkpixel10.ttf"
local var_0_9 = 10
local var_0_10 = "normal"

local function var_0_11()
	return (_G.currentGameLang or "ko") == "zh"
end

local function var_0_12()
	return _G.currentGameLang or "ko"
end

local function var_0_13(arg_3_0)
	local var_3_0 = rawget(_G, "getChineseLatinFallbackFont")

	if type(var_3_0) == "function" then
		local var_3_1 = var_3_0(arg_3_0)

		if var_3_1 then
			return var_3_1
		end
	end

	return arg_3_0
end

local function var_0_14(arg_4_0, arg_4_1)
	if not arg_4_0 then
		return 0
	end

	local var_4_0 = rawget(_G, "measureChineseMixedTextWidth")

	if type(var_4_0) == "function" then
		local var_4_1, var_4_2 = pcall(var_4_0, tostring(arg_4_1 or ""), arg_4_0)

		if var_4_1 and type(var_4_2) == "number" then
			return var_4_2
		end
	end

	return arg_4_0:getWidth(tostring(arg_4_1 or ""))
end

local function var_0_15(arg_5_0, arg_5_1)
	local var_5_0 = var_0_13(arg_5_0)

	return var_5_0 and var_5_0:getHeight() or arg_5_0 and arg_5_0:getHeight() or arg_5_1 or 12
end

local function var_0_16(arg_6_0, arg_6_1)
	if var_0_11() then
		arg_6_0 = var_0_8
		arg_6_1 = arg_6_1 or var_0_9
	end

	if type(arg_6_0) ~= "string" or arg_6_0 == "" or not love.filesystem.getInfo(arg_6_0) then
		return nil
	end

	local var_6_0
	local var_6_1

	if arg_6_0:lower():match("%.ttf$") or arg_6_0:lower():match("%.otf$") then
		var_6_0, var_6_1 = pcall(love.graphics.newFont, arg_6_0, arg_6_1 or var_0_9, var_0_10)
	else
		var_6_0, var_6_1 = pcall(love.graphics.newFont, arg_6_0)
	end

	if var_6_0 and var_6_1 then
		var_6_1:setFilter("nearest", "nearest")

		if var_0_11() and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_6_1)
		end

		return var_6_1
	end

	return nil
end

local function var_0_17(arg_7_0, arg_7_1)
	if type(arg_7_0) ~= "string" or arg_7_0 == "" or not love.filesystem.getInfo(arg_7_0) then
		return nil
	end

	local var_7_0
	local var_7_1
	local var_7_2 = tostring(arg_7_0):lower()

	if var_7_2:match("%.ttf$") or var_7_2:match("%.otf$") then
		var_7_0, var_7_1 = pcall(love.graphics.newFont, arg_7_0, arg_7_1 or var_0_9, var_0_10)
	else
		var_7_0, var_7_1 = pcall(love.graphics.newFont, arg_7_0)
	end

	if var_7_0 and var_7_1 then
		var_7_1:setFilter("nearest", "nearest")

		return var_7_1
	end

	return nil
end

local function var_0_18(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
	if _G.maybeRegisterSLineTtfTextEffect then
		_G.maybeRegisterSLineTtfTextEffect(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
	end

	if var_0_11() and _G.registerChineseLatinFallbackFont then
		local var_8_0 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_8_1) or arg_8_1

		_G.registerChineseLatinFallbackFont(arg_8_0, var_0_17(var_8_0, var_0_9))
	end

	return arg_8_0
end

local function var_0_19(arg_9_0)
	local var_9_0 = var_0_12()
	local var_9_1 = var_0_11() and var_0_8 or var_0_6.resolve(arg_9_0, var_9_0)

	if type(var_9_1) ~= "string" or var_9_1 == "" then
		var_9_1 = arg_9_0
	end

	return var_9_1, var_9_0
end

local var_0_20

local function var_0_21()
	if var_0_20 then
		return var_0_20
	end

	local var_10_0 = "    extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel\n    extern vec4 outlineColor;   // RGBA\n    extern float threshold;     // alpha threshold\n    extern float radiusPx;      // outline radius in px (1.0 to 2.0 for sub-pixel logic)\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold){\n        vec2 s = texelStep;\n\n        // Layer 1: Immediate cardinal neighbors (1px) -> Always Solid\n        float aL = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float aR = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float aU = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float aD = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        \n        if (max(max(aL, aR), max(aU, aD)) > threshold) {\n            return outlineColor;\n        }\n\n        // Layer 2: Sub-pixel extension (Hard Cut)\n        // If radius is 1.15, we draw 15% of the 2nd pixel layer solid, then cut off.\n        if (radiusPx > 1.0) {\n            float extra = radiusPx - 1.0;\n            vec2 pos = tc / texelStep;\n            vec2 f = fract(pos); // 0..1 within current texel\n\n            // Left-Left Source (Expanding Right)\n            float aLL = Texel(tex, tc + vec2(-s.x * 2.0, 0.0)).a;\n            if (aLL > threshold && f.x < extra) return outlineColor;\n\n            // Right-Right Source (Expanding Left)\n            float aRR = Texel(tex, tc + vec2( s.x * 2.0, 0.0)).a;\n            if (aRR > threshold && f.x > (1.0 - extra)) return outlineColor;\n\n            // Up-Up Source (Expanding Down)\n            float aUU = Texel(tex, tc + vec2(0.0, -s.y * 2.0)).a;\n            if (aUU > threshold && f.y < extra) return outlineColor;\n\n            // Down-Down Source (Expanding Up)\n            float aDD = Texel(tex, tc + vec2(0.0,  s.y * 2.0)).a;\n            if (aDD > threshold && f.y > (1.0 - extra)) return outlineColor;\n        }\n      }\n      return vec4(0.0);\n    }\n  "

	var_0_20 = love.graphics.newShader(var_10_0)

	return var_0_20
end

local var_0_22

local function var_0_23()
	if var_0_22 then
		return var_0_22
	end

	local var_11_0 = "    extern vec4 glowColor;\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        vec2 uv = texture_coords - 0.5;\n        vec2 d = abs(uv) - 0.22; // Slightly larger core\n        float dist = length(max(d, 0.0)) + min(max(d.x, d.y), 0.0);\n        // Sharper transition for \"less blurry\" look\n        float alpha = 1.0 - smoothstep(0.0, 0.12, dist);\n        alpha = pow(alpha, 1.2);\n        return glowColor * alpha;\n    }\n  "

	var_0_22 = love.graphics.newShader(var_11_0)

	return var_0_22
end

local var_0_24

local function var_0_25()
	if var_0_24 then
		return var_0_24
	end

	local var_12_0 = love.image.newImageData(1, 1)

	var_12_0:setPixel(0, 0, 1, 1, 1, 1)

	var_0_24 = love.graphics.newImage(var_12_0)

	return var_0_24
end

local var_0_26 = {
	changeBtnScale = 1,
	confirmBtnScale = 1,
	upgradeBtnScale = 1,
	convertBtnScale = 1,
	cancelBtnScale = 1,
	previewScale = 1,
	previewTargetY = 0,
	previewAlpha = 0,
	previewY = -100,
	changeBtnTimer = 0,
	blinkTimer = 0,
	holdTimer = 0,
	replaceHoveringNext = false,
	replaceHovering = false,
	convertHovering = false,
	v = 0,
	confirmBtnTimer = 0,
	upgradeBtnTimer = 0,
	convertBtnTimer = 0,
	cancelBtnTimer = 0,
	changeBtnPressed = false,
	confirmBtnPressed = false,
	upgradeBtnPressed = false,
	convertBtnPressed = false,
	cancelBtnPressed = false,
	slotScales = {
		1,
		1,
		1,
		1,
		1
	},
	impactScales = {
		0,
		0,
		0,
		0,
		0
	},
	floatOffsets = {
		0,
		0,
		0,
		0,
		0
	},
	actionBtnScales = {
		1,
		1,
		1,
		1,
		1
	}
}
local var_0_27
local var_0_28

local function var_0_29()
	local var_13_0, var_13_1 = var_0_19("src/data/font/Galmuri9WS.fnt")
	local var_13_2 = tostring(var_13_1) .. "|" .. tostring(var_13_0)

	if not var_0_27 or var_0_28 ~= var_13_2 then
		local var_13_3 = var_0_16(var_13_0, var_0_11() and var_0_9 or nil)

		if var_13_3 then
			var_0_18(var_13_3, "src/data/font/Galmuri9WS.fnt", var_13_0, var_13_1)

			var_0_27 = var_13_3
			var_0_28 = var_13_2
		elseif var_0_28 ~= var_13_2 then
			var_0_27 = nil
			var_0_28 = nil
		end
	end

	return var_0_27
end

local var_0_30

local function var_0_31()
	if not var_0_30 then
		local var_14_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n      extern vec3 u_old3; extern vec3 u_new3;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05; // Increased tolerance for robust color matching\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          } else if (distance(rgb, u_old3) < tol) {\n              rgb = u_new3;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_14_1, var_14_2 = pcall(love.graphics.newShader, var_14_0)

		if var_14_1 then
			var_0_30 = var_14_2

			var_14_2:send("u_old1", {
				0.3843137254901961,
				0.3333333333333333,
				0.396078431372549
			})
			var_14_2:send("u_new1", {
				0.41568627450980394,
				0.5490196078431373,
				0.4470588235294118
			})
			var_14_2:send("u_old2", {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961
			})
			var_14_2:send("u_new2", {
				0.17647058823529413,
				0.23921568627450981,
				0.19215686274509805
			})
			var_14_2:send("u_old3", {
				0.24313725490196078,
				0.20784313725490197,
				0.27450980392156865
			})
			var_14_2:send("u_new3", {
				0.25882352941176473,
				0.3607843137254902,
				0.28627450980392155
			})
		end
	end

	return var_0_30
end

local var_0_32

local function var_0_33()
	if not var_0_32 then
		local var_15_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n      extern vec3 u_old3; extern vec3 u_new3;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05; // Increased tolerance for robust color matching\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          } else if (distance(rgb, u_old3) < tol) {\n              rgb = u_new3;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_15_1, var_15_2 = pcall(love.graphics.newShader, var_15_0)

		if var_15_1 then
			var_0_32 = var_15_2

			var_15_2:send("u_old1", {
				0.3843137254901961,
				0.3333333333333333,
				0.396078431372549
			})
			var_15_2:send("u_new1", {
				0.3607843137254902,
				0.4549019607843137,
				0.5725490196078431
			})
			var_15_2:send("u_old2", {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961
			})
			var_15_2:send("u_new2", {
				0.13725490196078433,
				0.17647058823529413,
				0.23921568627450981
			})
			var_15_2:send("u_old3", {
				0.24313725490196078,
				0.20784313725490197,
				0.27450980392156865
			})
			var_15_2:send("u_new3", {
				0.20784313725490197,
				0.29411764705882354,
				0.4196078431372549
			})
		end
	end

	return var_0_32
end

local var_0_34

local function var_0_35()
	if not var_0_34 then
		local var_16_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n      extern vec3 u_old3; extern vec3 u_new3;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05;\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          } else if (distance(rgb, u_old3) < tol) {\n              rgb = u_new3;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_16_1, var_16_2 = pcall(love.graphics.newShader, var_16_0)

		if var_16_1 then
			var_0_34 = var_16_2

			var_16_2:send("u_old1", {
				0.3843137254901961,
				0.3333333333333333,
				0.396078431372549
			})
			var_16_2:send("u_new1", {
				0.6274509803921569,
				0.5294117647058824,
				0.35294117647058826
			})
			var_16_2:send("u_old2", {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961
			})
			var_16_2:send("u_new2", {
				0.21568627450980393,
				0.16470588235294117,
				0.11764705882352941
			})
			var_16_2:send("u_old3", {
				0.24313725490196078,
				0.20784313725490197,
				0.27450980392156865
			})
			var_16_2:send("u_new3", {
				0.43137254901960786,
				0.3333333333333333,
				0.19607843137254902
			})
		end
	end

	return var_0_34
end

local var_0_36

local function var_0_37()
	if not var_0_36 then
		local var_17_0 = "      extern number u_time;\n      extern vec3   u_uiBase;   // #3e3546\n      extern vec2   u_dir;      \n      extern number u_cycle;    \n      extern number u_scale;    \n      extern number u_grainScale;\n      extern number u_grainAmp;\n      extern number u_filmFreq;\n      extern number u_filmAmp;\n      extern number u_specular;\n      extern number u_fresnelPow;\n      extern number u_colorGain;\n      extern number u_saturation;\n      extern number u_mixBP;\n\n      vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n        return a + b * cos(6.28318 * (c * x + d));\n      }\n      float hash(vec2 p){\n        return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n      }\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        vec4 base = Texel(tex, tc); // The slot background image\n        if (base.a <= 0.001) return vec4(0.0);\n        \n        vec2 dir = u_dir;\n        if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n        else dir = normalize(dir);\n        vec2 ortho = vec2(-dir.y, dir.x); \n        \n        float u = dot(tc, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n        float v = dot(tc, ortho) * u_scale;\n        \n        // Use grain uniforms as requested to match the tooltip filter perfectly\n        float grainLine = abs(sin(dot(tc, ortho) * u_grainScale));\n        float grainNoise = hash(tc * 97.0);\n        float grain = mix(grainLine, grainNoise, 0.25);\n        \n        float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n        float x = u + film;\n        \n        // Rainbow palettes matching the tooltip specifically (Substantially increased brightness)\n        vec3 colBP = palette(x, vec3(0.75, 0.70, 0.78), vec3(0.25, 0.20, 0.28), vec3(1.00, 1.00, 1.00), vec3(0.10, 0.43, 0.78));\n        vec3 colWide = palette(u, vec3(0.72), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n        vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n        \n        float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n        float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n        float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n        \n        // Apply grain multiplier like in tooltip foil\n        float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n        vec3 outRGB = foil * grainMul + spec;\n        \n        // Harmonize with UI Base (#3e3546) - Reduced UI base weight to let rainbow shine through much more\n        outRGB = mix(u_uiBase, outRGB, 0.82);\n        \n        // Saturation & Gain\n        float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n        outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n        \n        // Apply to base slot lighting with massive gain multiplier to prevent \"darkening\" the slot\n        float luma = dot(base.rgb, vec3(0.299, 0.587, 0.114));\n        outRGB *= (luma * u_colorGain * 1.5);\n        \n        return vec4(outRGB, base.a) * color;\n      }\n    "
		local var_17_1, var_17_2 = pcall(love.graphics.newShader, var_17_0)

		if var_17_1 then
			var_0_36 = var_17_2
		end
	end

	return var_0_36
end

local var_0_38

local function var_0_39()
	if not var_0_38 then
		local var_18_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05;\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_18_1, var_18_2 = pcall(love.graphics.newShader, var_18_0)

		if var_18_1 then
			var_0_38 = var_18_2

			var_18_2:send("u_old1", {
				0.5411764705882353,
				0.35294117647058826,
				0.41568627450980394
			})
			var_18_2:send("u_new1", {
				0.43137254901960786,
				0.5411764705882353,
				0.43529411764705883
			})
			var_18_2:send("u_old2", {
				0.30980392156862746,
				0.20392156862745098,
				0.23921568627450981
			})
			var_18_2:send("u_new2", {
				0.24313725490196078,
				0.35294117647058826,
				0.24705882352941178
			})
		end
	end

	return var_0_38
end

local function var_0_40(arg_19_0)
	if arg_19_0 < 0 then
		return 0
	end

	if arg_19_0 > 1 then
		return 1
	end

	return arg_19_0
end

local function var_0_41(arg_20_0)
	return ({
		"I",
		"II",
		"III",
		"IV",
		"V"
	})[tonumber(arg_20_0) or 1] or tostring(arg_20_0)
end

local function var_0_42(arg_21_0)
	return math.floor((arg_21_0 or 0) + 0.5)
end

local function var_0_43(arg_22_0, arg_22_1, arg_22_2)
	if not arg_22_0 or not arg_22_1 then
		return arg_22_1
	end

	if arg_22_2 <= 0 then
		return ""
	end

	if arg_22_2 >= var_0_14(arg_22_0, arg_22_1) then
		return arg_22_1
	end

	local var_22_0 = arg_22_1

	while #var_22_0 > 0 and arg_22_2 < var_0_14(arg_22_0, var_22_0 .. "…") do
		var_22_0 = string.sub(var_22_0, 1, #var_22_0 - 1)
	end

	if #var_22_0 == 0 then
		return ""
	end

	return var_22_0 .. "…"
end

local function var_0_44(arg_23_0, arg_23_1, arg_23_2, arg_23_3, arg_23_4, arg_23_5, arg_23_6)
	if not arg_23_0 then
		love.graphics.printf(arg_23_1 or "", arg_23_2, arg_23_3, arg_23_4, "left")

		return
	end

	local var_23_0 = tostring(arg_23_1 or "")

	if var_23_0 == "" or arg_23_4 <= 0 then
		return
	end

	local var_23_1, var_23_2 = arg_23_0:getWrap(var_23_0, arg_23_4)

	if not var_23_2 or #var_23_2 == 0 then
		return
	end

	local var_23_3 = #var_23_2

	if arg_23_6 and arg_23_6 > 0 then
		var_23_3 = math.min(var_23_3, arg_23_6)
	end

	for iter_23_0 = 1, var_23_3 do
		local var_23_4 = var_23_2[iter_23_0]

		if iter_23_0 == var_23_3 and arg_23_6 and var_23_3 < #var_23_2 then
			var_23_4 = var_0_43(arg_23_0, var_23_4, arg_23_4)
		end

		love.graphics.print(var_23_4, arg_23_2, arg_23_3 + (iter_23_0 - 1) * arg_23_5)
	end
end

local function var_0_45(arg_24_0, arg_24_1)
	if not arg_24_0 or not arg_24_1 or arg_24_1 <= 0 then
		return 1
	end

	return math.max(1, math.floor(arg_24_0 / arg_24_1))
end

local function var_0_46(arg_25_0, arg_25_1, arg_25_2)
	if not arg_25_1 then
		return 1
	end

	if not arg_25_0 or not arg_25_0.getWrap then
		return 1
	end

	if not arg_25_2 or arg_25_2 <= 0 then
		return 1
	end

	local var_25_0, var_25_1 = arg_25_0:getWrap(tostring(arg_25_1), arg_25_2)

	if not var_25_1 or #var_25_1 == 0 then
		return 1
	end

	return #var_25_1
end

local function var_0_47(arg_26_0)
	if not arg_26_0 then
		return var_0_5.getText("unit.name.유닛", _G.currentGameLang or "ko")
	end

	local var_26_0 = arg_26_0.sym or arg_26_0.role == "archer" and "A" or arg_26_0.role == "spear" and "S" or "W"
	local var_26_1 = arg_26_0.rank or arg_26_0.star or 1
	local var_26_2 = _G.currentGameLang or "ko"
	local var_26_3

	if type(_G.classNameBy) == "function" then
		local var_26_4, var_26_5 = pcall(_G.classNameBy, var_26_0, var_26_1)

		if var_26_4 then
			var_26_3 = var_26_5
		end
	end

	if arg_26_0.subclassName then
		return var_0_5.translateUnitName(tostring(arg_26_0.subclassName), var_26_2)
	end

	if arg_26_0.name then
		return var_0_5.translateUnitName(tostring(arg_26_0.name), var_26_2)
	end

	if var_26_3 then
		return var_0_5.translateUnitName(tostring(var_26_3), var_26_2)
	end

	if arg_26_0.subclass then
		return var_0_5.translateUnitName(tostring(arg_26_0.subclass), var_26_2)
	end

	return tostring(var_26_0)
end

local function var_0_48(arg_27_0)
	if not arg_27_0 then
		return "⚔"
	end

	local var_27_0 = arg_27_0.sym

	if arg_27_0.role == "archer" or var_27_0 == "A" then
		return "🏹"
	end

	if arg_27_0.role == "spear" or var_27_0 == "S" then
		return "🔱"
	end

	if var_27_0 == "M" then
		return "✨"
	end

	if var_27_0 == "H" then
		return "🐎"
	end

	if var_27_0 == "D" then
		return "🗡"
	end

	return "⚔"
end

local function var_0_49(arg_28_0)
	local var_28_0 = var_0_47(arg_28_0)
	local var_28_1 = var_0_48(arg_28_0)

	return tostring(var_28_1) .. " " .. tostring(var_28_0)
end

local function var_0_50(arg_29_0)
	if not arg_29_0 then
		return "normal"
	end

	local var_29_0 = tostring(arg_29_0):lower()

	if var_29_0 == "normal" or var_29_0 == "common" then
		return "normal"
	end

	if var_29_0 == "advanced" then
		return "advanced"
	end

	if var_29_0 == "rare" or var_29_0 == "r" then
		return "rare"
	end

	if var_29_0 == "legendary" or var_29_0 == "legend" or var_29_0 == "l" then
		return "legendary"
	end

	if var_29_0 == "prism" or var_29_0 == "p" then
		return "prism"
	end

	return "normal"
end

local function var_0_51(arg_30_0)
	if not arg_30_0 then
		return nil
	end

	local var_30_0 = var_0_1.imprint and var_0_1.imprint.definitions

	if not var_30_0 then
		return nil
	end

	local var_30_1
	local var_30_2 = var_0_50(arg_30_0.grade)

	if arg_30_0.sym == "W" then
		if var_30_2 == "prism" then
			var_30_1 = var_30_0.majesty
		elseif var_30_2 == "legendary" then
			var_30_1 = var_30_0.earthquake
		elseif var_30_2 == "rare" then
			var_30_1 = var_30_0.self_destruct
		elseif var_30_2 == "advanced" then
			var_30_1 = var_30_0.bash
		else
			var_30_1 = var_30_0.brace
		end
	elseif arg_30_0.sym == "S" then
		if var_30_2 == "prism" then
			var_30_1 = var_30_0.undying_soul
		elseif var_30_2 == "legendary" then
			var_30_1 = var_30_0.panther_fury
		elseif var_30_2 == "rare" then
			var_30_1 = var_30_0.fear
		elseif var_30_2 == "advanced" then
			var_30_1 = var_30_0.knockback
		else
			var_30_1 = var_30_0.pierce
		end
	elseif arg_30_0.sym == "A" then
		if var_30_2 == "prism" then
			var_30_1 = var_30_0.timeless
		elseif var_30_2 == "legendary" then
			var_30_1 = var_30_0.annihilation
		elseif var_30_2 == "rare" then
			var_30_1 = var_30_0.chain
		elseif var_30_2 == "advanced" then
			var_30_1 = var_30_0.blind
		else
			var_30_1 = var_30_0.volley
		end
	elseif arg_30_0.sym == "M" then
		if var_30_2 == "prism" then
			var_30_1 = var_30_0.colossus_descent
		elseif var_30_2 == "legendary" then
			var_30_1 = var_30_0.meteor
		elseif var_30_2 == "rare" then
			var_30_1 = var_30_0.chill
		elseif var_30_2 == "advanced" then
			var_30_1 = var_30_0.poison
		else
			var_30_1 = var_30_0.transfer
		end
	elseif arg_30_0.sym == "H" then
		if var_30_2 == "prism" then
			var_30_1 = var_30_0.ruin
		elseif var_30_2 == "legendary" then
			var_30_1 = var_30_0.revival
		elseif var_30_2 == "rare" then
			var_30_1 = var_30_0.enlarge
		elseif var_30_2 == "advanced" then
			var_30_1 = var_30_0.block
		else
			var_30_1 = var_30_0.overdrive
		end
	elseif arg_30_0.sym == "D" then
		if var_30_2 == "prism" then
			var_30_1 = var_30_0.overlord
		elseif var_30_2 == "legendary" then
			var_30_1 = var_30_0.shadow_clone
		elseif var_30_2 == "rare" then
			var_30_1 = var_30_0.execute
		elseif var_30_2 == "advanced" then
			var_30_1 = var_30_0.lifesteal
		else
			var_30_1 = var_30_0.relentless
		end
	else
		var_30_1 = nil
	end

	if not var_30_1 then
		return nil
	end

	local var_30_3 = var_30_2

	if arg_30_0.jackpot5th == true then
		var_30_3 = "prism"
	end

	local var_30_4 = {}

	for iter_30_0, iter_30_1 in pairs(var_30_1) do
		var_30_4[iter_30_0] = iter_30_1
	end

	var_30_4.rarity = var_30_3

	return var_30_4
end

local function var_0_52(arg_31_0)
	if not arg_31_0 or not arg_31_0.id then
		return arg_31_0
	end

	if arg_31_0.name and arg_31_0.desc and arg_31_0.shortDesc and arg_31_0.icon then
		return arg_31_0
	end

	local var_31_0 = var_0_1.imprint and var_0_1.imprint.definitions
	local var_31_1 = var_31_0 and var_31_0[arg_31_0.id]

	if not var_31_1 then
		return arg_31_0
	end

	arg_31_0.name = arg_31_0.name or var_31_1.name
	arg_31_0.icon = arg_31_0.icon or var_31_1.icon
	arg_31_0.maxLevel = arg_31_0.maxLevel or var_31_1.maxLevel or 5

	local var_31_2 = tonumber(arg_31_0.level) or 1
	local var_31_3 = var_31_1.levels and var_31_1.levels[var_31_2]

	if not arg_31_0.desc then
		arg_31_0.desc = var_31_3 and var_31_3.desc or var_31_1.desc
	end

	if not arg_31_0.shortDesc then
		arg_31_0.shortDesc = var_31_3 and var_31_3.shortDesc or var_31_1.shortDesc
	end

	if not arg_31_0.desc and var_31_1.levels and var_31_1.levels[1] then
		arg_31_0.desc = var_31_1.levels[1].desc
	end

	if not arg_31_0.shortDesc and var_31_1.levels and var_31_1.levels[1] then
		arg_31_0.shortDesc = var_31_1.levels[1].shortDesc
	end

	return arg_31_0
end

local function var_0_53(arg_32_0)
	if not arg_32_0 then
		return nil
	end

	local var_32_0 = {}

	for iter_32_0, iter_32_1 in pairs(arg_32_0) do
		var_32_0[iter_32_0] = iter_32_1
	end

	return var_32_0
end

local function var_0_54(arg_33_0)
	if not arg_33_0._bgImage then
		local var_33_0 = "src/sprites/background/mainbackground/Imprintbackground.png"
		local var_33_1, var_33_2 = pcall(love.graphics.newImage, var_33_0)

		if var_33_1 and var_33_2 then
			var_33_2:setFilter("nearest", "nearest")

			arg_33_0._bgImage = var_33_2

			local var_33_3, var_33_4 = pcall(love.image.newImageData, var_33_0)

			if var_33_3 and var_33_4 then
				local var_33_5, var_33_6 = var_33_4:getDimensions()
				local var_33_7 = var_33_5
				local var_33_8 = var_33_6
				local var_33_9 = -1
				local var_33_10 = -1

				for iter_33_0 = 0, var_33_6 - 1 do
					for iter_33_1 = 0, var_33_5 - 1 do
						local var_33_11, var_33_12, var_33_13, var_33_14 = var_33_4:getPixel(iter_33_1, iter_33_0)

						if var_33_14 > 0 then
							if iter_33_1 < var_33_7 then
								var_33_7 = iter_33_1
							end

							if iter_33_0 < var_33_8 then
								var_33_8 = iter_33_0
							end

							if var_33_9 < iter_33_1 then
								var_33_9 = iter_33_1
							end

							if var_33_10 < iter_33_0 then
								var_33_10 = iter_33_0
							end
						end
					end
				end

				if var_33_7 <= var_33_9 and var_33_8 <= var_33_10 then
					arg_33_0._bgVisibleBounds = {
						x = var_33_7,
						y = var_33_8,
						w = var_33_9 - var_33_7 + 1,
						h = var_33_10 - var_33_8 + 1
					}
				end
			end
		end
	end

	return arg_33_0._bgImage
end

local function var_0_55(arg_34_0, arg_34_1)
	if not arg_34_1 then
		return nil
	end

	if type(arg_34_1) == "userdata" then
		return arg_34_1
	end

	if type(arg_34_1) ~= "string" then
		return nil
	end

	if not arg_34_0._iconCache then
		arg_34_0._iconCache = {}
	end

	if not arg_34_0._iconCache[arg_34_1] then
		local var_34_0, var_34_1 = pcall(love.graphics.newImage, arg_34_1)

		if var_34_0 and var_34_1 then
			var_34_1:setFilter("nearest", "nearest")

			arg_34_0._iconCache[arg_34_1] = var_34_1
		end
	end

	return arg_34_0._iconCache[arg_34_1]
end

local function var_0_56(arg_35_0, arg_35_1)
	if not arg_35_1 then
		return nil
	end

	if type(arg_35_1) ~= "string" then
		return nil
	end

	if not arg_35_0._iconDataCache then
		arg_35_0._iconDataCache = {}
	end

	if not arg_35_0._iconDataCache[arg_35_1] then
		local var_35_0, var_35_1 = pcall(love.image.newImageData, arg_35_1)

		if var_35_0 and var_35_1 then
			arg_35_0._iconDataCache[arg_35_1] = var_35_1
		end
	end

	return arg_35_0._iconDataCache[arg_35_1]
end

local function var_0_57(arg_36_0, arg_36_1)
	if not arg_36_1 or type(arg_36_1) ~= "string" then
		return nil
	end

	if not arg_36_0._iconBounds then
		arg_36_0._iconBounds = {}
	end

	if arg_36_0._iconBounds[arg_36_1] ~= nil then
		return arg_36_0._iconBounds[arg_36_1] or nil
	end

	if not love or not love.image or not love.image.newImageData then
		arg_36_0._iconBounds[arg_36_1] = false

		return nil
	end

	local var_36_0, var_36_1 = pcall(love.image.newImageData, arg_36_1)

	if not var_36_0 or not var_36_1 then
		arg_36_0._iconBounds[arg_36_1] = false

		return nil
	end

	local var_36_2, var_36_3 = var_36_1:getDimensions()
	local var_36_4 = var_36_2
	local var_36_5 = var_36_3
	local var_36_6 = -1
	local var_36_7 = -1

	for iter_36_0 = 0, var_36_3 - 1 do
		for iter_36_1 = 0, var_36_2 - 1 do
			local var_36_8, var_36_9, var_36_10, var_36_11 = var_36_1:getPixel(iter_36_1, iter_36_0)

			if var_36_11 and var_36_11 > 0.05 then
				if iter_36_1 < var_36_4 then
					var_36_4 = iter_36_1
				end

				if iter_36_0 < var_36_5 then
					var_36_5 = iter_36_0
				end

				if var_36_6 < iter_36_1 then
					var_36_6 = iter_36_1
				end

				if var_36_7 < iter_36_0 then
					var_36_7 = iter_36_0
				end
			end
		end
	end

	if var_36_4 <= var_36_6 and var_36_5 <= var_36_7 then
		arg_36_0._iconBounds[arg_36_1] = {
			minX = var_36_4,
			minY = var_36_5,
			maxX = var_36_6,
			maxY = var_36_7
		}
	else
		arg_36_0._iconBounds[arg_36_1] = false
	end

	return arg_36_0._iconBounds[arg_36_1] or nil
end

function var_0_0.getShortIconImage(arg_37_0, arg_37_1)
	if not arg_37_1 then
		return nil
	end

	if not arg_37_0._shortIconCache then
		arg_37_0._shortIconCache = {}
	end

	if arg_37_0._shortIconCache[arg_37_1] then
		return arg_37_0._shortIconCache[arg_37_1]
	end

	local var_37_0

	if arg_37_1 == "fortify" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/shield.png"
	elseif arg_37_1 == "pierce" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/multihit.png"
	elseif arg_37_1 == "volley" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/swordplus.png"
	elseif arg_37_1 == "brace" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/swordupgrade.png"
	elseif arg_37_1 == "relentless" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/mad.png"
	elseif arg_37_1 == "transfer" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/diffusion.png"
	elseif arg_37_1 == "overdrive" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/hit.png"
	elseif arg_37_1 == "bash" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/dizzy.png"
	elseif arg_37_1 == "knockback" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/fist.png"
	elseif arg_37_1 == "blind" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/blindx.png"
	elseif arg_37_1 == "poison" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/poison.png"
	elseif arg_37_1 == "block" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/blockshield.png"
	elseif arg_37_1 == "lifesteal" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/teeth.png"
	elseif arg_37_1 == "self_destruct" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/explosion.png"
	elseif arg_37_1 == "earthquake" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/earthquake.png"
	elseif arg_37_1 == "fear" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/fireskeleton.png"
	elseif arg_37_1 == "chain" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/multihit.png"
	elseif arg_37_1 == "chill" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/ice.png"
	elseif arg_37_1 == "enlarge" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/enlarge.png"
	elseif arg_37_1 == "execute" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/execute.png"
	elseif arg_37_1 == "annihilation" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/fire.png"
	elseif arg_37_1 == "meteor" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/meteor.png"
	elseif arg_37_1 == "shadow_clone" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/shadowclone.png"
	elseif arg_37_1 == "panther_fury" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/pantherscratch.png"
	elseif arg_37_1 == "revival" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/cross.png"
	elseif arg_37_1 == "majesty" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/angry.png"
	elseif arg_37_1 == "ruin" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/eye.png"
	elseif arg_37_1 == "colossus_descent" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/golem.png"
	elseif arg_37_1 == "overlord" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/fear.png"
	elseif arg_37_1 == "undying_soul" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/holy.png"
	elseif arg_37_1 == "timeless" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/hourglass.png"
	elseif arg_37_1 == "amplify" then
		var_37_0 = "src/sprites/icons/imprinticons/shortsicons/skillsizeupgrade.png"
	end

	if var_37_0 then
		local var_37_1, var_37_2 = pcall(love.graphics.newImage, var_37_0)

		if var_37_1 and var_37_2 then
			var_37_2:setFilter("nearest", "nearest")

			arg_37_0._shortIconCache[arg_37_1] = var_37_2

			return var_37_2
		end
	end

	return nil
end

local function var_0_58(arg_38_0, arg_38_1, arg_38_2, arg_38_3, arg_38_4, arg_38_5)
	love.graphics.setColor(0, 0, 0, 0.5 * (arg_38_5 or 1))
	love.graphics.rectangle("fill", arg_38_2, arg_38_3, arg_38_4, arg_38_4)

	local var_38_0 = var_0_55(arg_38_0, arg_38_1)

	if not var_38_0 then
		return
	end

	love.graphics.setColor(1, 1, 1, 1 * (arg_38_5 or 1))

	local var_38_1, var_38_2 = var_38_0:getDimensions()

	if var_38_1 <= 0 or var_38_2 <= 0 then
		return
	end

	local var_38_3 = math.min(arg_38_4 / var_38_1, arg_38_4 / var_38_2)
	local var_38_4

	if var_38_3 >= 1 then
		var_38_4 = math.max(1, math.floor(var_38_3))
	else
		var_38_4 = var_38_3
	end

	local var_38_5 = var_38_1 * var_38_4
	local var_38_6 = var_38_2 * var_38_4
	local var_38_7 = math.floor(arg_38_2 + (arg_38_4 - var_38_5) * 0.5 + 0.5)
	local var_38_8 = math.floor(arg_38_3 + (arg_38_4 - var_38_6) * 0.5 + 0.5)

	love.graphics.draw(var_38_0, var_38_7, var_38_8, 0, var_38_4, var_38_4)
end

local var_0_59

local function var_0_60()
	if var_0_59 then
		return var_0_59
	end

	local var_39_0, var_39_1 = pcall(love.graphics.newShader, "    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){\n      vec4 t = Texel(texture, texture_coords);\n      return vec4(color.rgb, t.a * color.a);\n    }\n  ")

	if var_39_0 then
		var_0_59 = var_39_1
	end

	return var_0_59
end

local var_0_61

local function var_0_62()
	if var_0_61 then
		return var_0_61
	end

	local var_40_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color; // includes source alpha\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x); \n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      // Apply saturation boost and color gain (icon-sized legibility)\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      return vec4(outRGB, alpha);\n    }\n  "

	var_0_61 = love.graphics.newShader(var_40_0)

	return var_0_61
end

local var_0_63

local function var_0_64()
	if var_0_63 then
		return var_0_63
	end

	local var_41_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      // IMPORTANT: treat input as an ALPHA MASK (text canvas). Only alpha matters.\n      float maskA = Texel(tex, tc).a;\n      if (maskA <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * maskA;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      // Premultiply to guarantee no color outside the mask.\n      return vec4(outRGB * alpha, alpha);\n    }\n  "

	var_0_63 = love.graphics.newShader(var_41_0)

	return var_0_63
end

local var_0_65
local var_0_66

local function var_0_67()
	local var_42_0, var_42_1 = var_0_19("src/data/font/Galmuri9WS.fnt")
	local var_42_2 = tostring(var_42_1) .. "|" .. tostring(var_42_0)

	if not var_0_65 or var_0_66 ~= var_42_2 then
		local var_42_3 = var_0_16(var_42_0, var_0_11() and var_0_9 or nil)

		if var_42_3 then
			var_0_18(var_42_3, "src/data/font/Galmuri9WS.fnt", var_42_0, var_42_1)

			var_0_65 = var_42_3
			var_0_66 = var_42_2
		elseif var_0_66 ~= var_42_2 then
			var_0_65 = nil
			var_0_66 = nil
		end
	end

	return var_0_65
end

var_0_0.getNameFont = var_0_67

function var_0_0.reloadLanguageFonts()
	var_0_27 = nil
	var_0_28 = nil
	var_0_65 = nil
	var_0_66 = nil
end

local function var_0_68(arg_44_0)
	if not arg_44_0 then
		return {
			1,
			1,
			1,
			1
		}
	end

	local var_44_0 = arg_44_0.grade or "normal"

	if var_44_0 == "advanced" then
		return {
			0.6,
			0.85,
			0.65,
			1
		}
	end

	if var_44_0 == "rare" then
		return {
			0.6,
			0.75,
			1,
			1
		}
	end

	if var_44_0 == "legendary" then
		return {
			0.99,
			0.8,
			0.22,
			1
		}
	end

	return {
		1,
		1,
		1,
		1
	}
end

var_0_0._hit = var_0_0._hit or {
	active = false
}
var_0_0._modalHit = var_0_0._modalHit or {
	active = false
}
var_0_0._hudHit = var_0_0._hudHit or {
	active = false
}

function var_0_0.drawHudTab(arg_45_0, arg_45_1, arg_45_2)
	if not arg_45_0 or not arg_45_1 then
		return
	end

	arg_45_2 = arg_45_2 or {}

	local var_45_0 = arg_45_0.scale or 1
	local var_45_1 = arg_45_0.font

	if var_45_1 then
		love.graphics.setFont(var_45_1)
	end

	local var_45_2 = var_0_2.compute(arg_45_0)
	local var_45_3 = arg_45_0.virtual and arg_45_0.virtual.W or var_45_2 and var_45_2.screen and var_45_2.screen.W or 1280
	local var_45_4 = arg_45_0.virtual and arg_45_0.virtual.H or var_45_2 and var_45_2.screen and var_45_2.screen.H or 720
	local var_45_5 = math.floor(200 * var_45_0 + 0.5)
	local var_45_6 = math.floor(56 * var_45_0 + 0.5)
	local var_45_7 = math.floor(4 * var_45_0 + 0.5)
	local var_45_8 = math.floor(6 * var_45_0 + 0.5)
	local var_45_9 = math.floor(4 * var_45_0 + 0.5)
	local var_45_10 = math.floor(4 * var_45_0 + 0.5)
	local var_45_11 = math.floor(22 * var_45_0 + 0.5)

	if var_45_11 < 12 then
		var_45_11 = 12
	end

	local var_45_12 = var_0_15(var_45_1, math.floor(12 * var_45_0 + 0.5))
	local var_45_13 = math.max(1, var_45_12)
	local var_45_14 = math.max(1, math.floor(7 * var_45_0 + 0.5))
	local var_45_15 = math.max(1, var_45_12 + math.max(1, math.floor(5 * var_45_0 + 0.5)))
	local var_45_16 = var_45_5 - var_45_8 * 3 - var_45_11

	if var_45_16 < 10 then
		var_45_16 = 10
	end

	local var_45_17 = var_0_46(var_45_1, arg_45_1.desc or "", var_45_16)
	local var_45_18 = var_45_9 + var_45_13 + var_45_14 + var_45_17 * var_45_15 + var_45_10
	local var_45_19 = math.floor(var_45_11 + var_45_9 + var_45_10 + 0.5)
	local var_45_20 = math.max(var_45_6, var_45_18, var_45_19)
	local var_45_21
	local var_45_22

	if var_45_2 and var_45_2.right then
		var_45_21 = math.floor(var_45_2.right.x + (var_45_2.right.w - var_45_5) * 0.5 + 0.5)
		var_45_22 = math.floor(var_45_2.right.y - var_45_20 - var_45_7 + 0.5)
	else
		var_45_21 = math.floor((var_45_3 - var_45_5) / 2 + 0.5)
		var_45_22 = math.floor(2 * var_45_0 + 0.5)
	end

	local var_45_23 = arg_45_0.margin or 0

	if var_45_21 < var_45_23 then
		var_45_21 = var_45_23
	end

	if var_45_21 + var_45_5 > var_45_3 - var_45_23 then
		var_45_21 = var_45_3 - var_45_23 - var_45_5
	end

	if var_45_22 < var_45_23 then
		var_45_22 = var_45_23
	end

	if var_45_22 + var_45_20 > var_45_4 - var_45_23 then
		var_45_22 = var_45_4 - var_45_23 - var_45_20
	end

	love.graphics.setColor(0.1, 0.1, 0.1, 0.92)
	love.graphics.rectangle("fill", var_45_21, var_45_22, var_45_5, var_45_20)
	love.graphics.setColor(0.45, 0.45, 0.45, 1)
	love.graphics.rectangle("line", var_45_21 + 0.5, var_45_22 + 0.5, var_45_5 - 1, var_45_20 - 1)

	local var_45_24 = var_45_21 + var_45_8
	local var_45_25 = var_45_22 + math.floor((var_45_20 - var_45_11) / 2 + 0.5)

	var_0_58(var_0_0, arg_45_1.icon, var_45_24, var_45_25, var_45_11, 1)

	local var_45_26 = var_45_24 + var_45_11 + var_45_8
	local var_45_27 = var_45_21 + var_45_5 - var_45_26 - var_45_8

	if var_45_27 < 10 then
		var_45_27 = 10
	end

	local var_45_28 = var_45_22 + var_45_9

	love.graphics.setColor(0.65, 1, 0.65, 1)
	love.graphics.print(var_0_5.getImprintName(arg_45_1.id, arg_45_1.name or "New Imprint", _G.currentGameLang or "ko"), var_45_26, var_45_28)
	love.graphics.setColor(0.9, 0.9, 0.9, 1)

	local var_45_29 = var_45_28 + var_45_13 + var_45_14

	var_0_44(var_45_1, var_0_5.getImprintDesc(arg_45_1.id, arg_45_1.level, arg_45_1.desc or "", _G.currentGameLang or "ko"), var_45_26, var_45_29, var_45_27, var_45_15, nil)
	love.graphics.setColor(1, 1, 1, 1)

	if arg_45_2.showCancel then
		local var_45_30 = math.floor(26 * var_45_0 + 0.5)
		local var_45_31 = math.floor(6 * var_45_0 + 0.5)
		local var_45_32 = var_45_21
		local var_45_33 = var_45_22 + var_45_20 + var_45_31
		local var_45_34 = var_45_5
		local var_45_35 = arg_45_2.cancelLabel or var_0_5.getText("imprint_absorb_cancel", _G.currentGameLang or "ko")

		if var_45_33 + var_45_30 <= var_45_4 - var_45_23 then
			love.graphics.setColor(0.12, 0.12, 0.12, 0.94)
			love.graphics.rectangle("fill", var_45_32, var_45_33, var_45_34, var_45_30)
			love.graphics.setColor(0.55, 0.55, 0.55, 1)
			love.graphics.rectangle("line", var_45_32 + 0.5, var_45_33 + 0.5, var_45_34 - 1, var_45_30 - 1)

			local var_45_36 = var_0_14(var_45_1, var_45_35)
			local var_45_37 = var_0_15(var_45_1, math.floor(12 * var_45_0 + 0.5))
			local var_45_38 = var_45_32 + math.floor((var_45_34 - var_45_36) * 0.5 + 0.5)
			local var_45_39 = var_45_33 + math.floor((var_45_30 - var_45_37) * 0.5 + 0.5)

			love.graphics.setColor(0.95, 0.95, 0.95, 1)
			love.graphics.print(var_45_35, var_45_38, var_45_39)
			love.graphics.setColor(1, 1, 1, 1)

			var_0_0._hudHit = {
				active = true,
				cancelBtn = {
					kind = "cancel",
					x = var_45_32,
					y = var_45_33,
					w = var_45_34,
					h = var_45_30
				}
			}
		else
			var_0_0._hudHit = {
				active = false
			}
		end
	else
		var_0_0._hudHit = {
			active = false
		}
	end
end

function var_0_0.hudHitTest(arg_46_0, arg_46_1)
	local var_46_0 = var_0_0._hudHit

	if not var_46_0 or not var_46_0.active then
		return nil
	end

	local var_46_1 = var_46_0.cancelBtn

	if var_46_1 and arg_46_0 >= var_46_1.x and arg_46_0 <= var_46_1.x + var_46_1.w and arg_46_1 >= var_46_1.y and arg_46_1 <= var_46_1.y + var_46_1.h then
		return {
			kind = "cancel"
		}
	end

	return nil
end

function var_0_0.triggerCancel()
	var_0_26.cancelBtnPressed = true
	var_0_26.cancelBtnTimer = 0.15
	var_0_0._cancelTriggered = false
end

function var_0_0.triggerConvert()
	var_0_26.convertBtnPressed = true
	var_0_26.convertBtnTimer = 0.15
	var_0_0._convertTriggered = false
end

function var_0_0.triggerUpgrade(arg_49_0)
	var_0_26.upgradeBtnPressed = true
	var_0_26.upgradeBtnTimer = 0.15
	var_0_0._upgradeSlot = arg_49_0
	var_0_0._upgradeTriggered = false
end

function var_0_0.triggerConfirm(arg_50_0, arg_50_1)
	var_0_26.confirmBtnPressed = true
	var_0_26.confirmBtnTimer = 0.15
	var_0_0._confirmSlot = arg_50_0
	var_0_0._confirmAction = arg_50_1
	var_0_0._confirmTriggered = false
end

function var_0_0.triggerChange(arg_51_0)
	var_0_26.changeBtnPressed = true
	var_0_26.changeBtnTimer = 0.15
	var_0_0._changeSlot = arg_51_0
	var_0_0._changeTriggered = false
end

local function var_0_69(arg_52_0, arg_52_1, arg_52_2)
	return arg_52_2 and arg_52_0 >= arg_52_2.x and arg_52_0 <= arg_52_2.x + arg_52_2.w and arg_52_1 >= arg_52_2.y and arg_52_1 <= arg_52_2.y + arg_52_2.h
end

function var_0_0.hitTest(arg_53_0, arg_53_1)
	local var_53_0 = var_0_0._hit

	if not var_53_0 or not var_53_0.active then
		return nil
	end

	if var_53_0.slots then
		for iter_53_0, iter_53_1 in ipairs(var_53_0.slots) do
			if var_0_69(arg_53_0, arg_53_1, iter_53_1) then
				return {
					kind = "slot",
					slot = iter_53_1.slot
				}
			end
		end
	end

	if var_0_69(arg_53_0, arg_53_1, var_53_0.replaceBtn) then
		return {
			mode = "replace",
			kind = "mode"
		}
	end

	if var_0_69(arg_53_0, arg_53_1, var_53_0.keepBtn) then
		return {
			mode = "keep",
			kind = "mode"
		}
	end

	return nil
end

function var_0_0.modalHitTest(arg_54_0, arg_54_1)
	local var_54_0 = var_0_0._modalHit

	if not var_54_0 or not var_54_0.active then
		return nil
	end

	if var_54_0.buttons then
		for iter_54_0, iter_54_1 in ipairs(var_54_0.buttons) do
			if var_0_69(arg_54_0, arg_54_1, iter_54_1) then
				return {
					kind = iter_54_1.kind,
					slot = iter_54_1.slot
				}
			end
		end
	end

	if var_54_0.arrows then
		for iter_54_2, iter_54_3 in ipairs(var_54_0.arrows) do
			if var_0_69(arg_54_0, arg_54_1, iter_54_3) then
				return {
					kind = "arrow",
					slot = iter_54_3.slot
				}
			end
		end
	end

	return nil
end

function var_0_0.absorbLvHitTest(arg_55_0, arg_55_1)
	local var_55_0 = var_0_0._absorbLvRect

	if not var_55_0 then
		return false
	end

	if arg_55_0 >= var_55_0.x and arg_55_0 <= var_55_0.x + var_55_0.w and arg_55_1 >= var_55_0.y and arg_55_1 <= var_55_0.y + var_55_0.h then
		return true
	end

	return false
end

function var_0_0.getAbsorbLvStats(arg_56_0)
	local var_56_0 = math.max(1, math.floor(tonumber(arg_56_0 and arg_56_0.absorbLV or 1) or 1))
	local var_56_1 = math.max(0, var_56_0 - 1)

	return {
		atk = 1 * var_56_1,
		aspd = 0.5 * var_56_1,
		hp = 1.5 * var_56_1
	}
end

function var_0_0.getAbsorbLvHoverText(arg_57_0)
	local var_57_0 = var_0_0.getAbsorbLvStats(arg_57_0)

	return string.format(var_0_5.getText("imprint_absorb_stat_fmt", _G.currentGameLang or "ko"), var_57_0.atk, var_57_0.aspd, var_57_0.hp)
end

function var_0_0.drawModal(arg_58_0, arg_58_1)
	if not arg_58_0 or not arg_58_1 or not arg_58_1.active or not arg_58_1.absorber or not arg_58_1.pending then
		var_0_0._modalHit = {
			active = false
		}

		return
	end

	local var_58_0 = arg_58_0.scale or 1
	local var_58_1 = arg_58_0.font

	if var_58_1 then
		love.graphics.setFont(var_58_1)
	end

	local var_58_2 = var_0_2.compute(arg_58_0)
	local var_58_3 = arg_58_0.virtual and arg_58_0.virtual.W or var_58_2 and var_58_2.screen and var_58_2.screen.W or 1280
	local var_58_4 = arg_58_0.virtual and arg_58_0.virtual.H or var_58_2 and var_58_2.screen and var_58_2.screen.H or 720
	local var_58_5 = math.floor(520 * var_58_0 + 0.5)
	local var_58_6 = math.floor(190 * var_58_0 + 0.5)
	local var_58_7 = math.floor((var_58_3 - var_58_5) / 2 + 0.5)
	local var_58_8 = var_58_2 and var_58_2.right and var_58_2.right.y or math.floor(40 * var_58_0 + 0.5)
	local var_58_9 = math.floor(math.max((arg_58_0.margin or 0) + 6 * var_58_0, var_58_8 - math.floor(26 * var_58_0 + 0.5)) + 0.5)

	if var_58_9 + var_58_6 > var_58_4 - (arg_58_0.margin or 0) then
		var_58_9 = math.max(arg_58_0.margin or 0, var_58_4 - (arg_58_0.margin or 0) - var_58_6)
	end

	local var_58_10 = var_0_54(var_0_0)

	if var_58_10 then
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_58_10, 0, 0)
	else
		love.graphics.setColor(0.08, 0.08, 0.08, 0.96)
		love.graphics.rectangle("fill", var_58_7, var_58_9, var_58_5, var_58_6)
		love.graphics.setColor(0.55, 0.55, 0.55, 1)
		love.graphics.rectangle("line", var_58_7 + 0.5, var_58_9 + 0.5, var_58_5 - 1, var_58_6 - 1)
	end

	local var_58_11 = math.floor(10 * var_58_0 + 0.5)
	local var_58_12 = var_58_7 + var_58_11
	local var_58_13 = var_58_9 + var_58_11
	local var_58_14 = var_58_5 - var_58_11 * 2
	local var_58_15 = var_58_6 - var_58_11 * 2
	local var_58_16 = math.floor(var_58_14 * 0.62 + 0.5)
	local var_58_17 = var_58_14 - var_58_16 - math.floor(10 * var_58_0 + 0.5)
	local var_58_18 = var_58_12
	local var_58_19 = var_58_18 + var_58_16 + math.floor(10 * var_58_0 + 0.5)
	local var_58_20 = math.max(1, math.min(5, math.floor(tonumber(arg_58_1.maxSlots or 1) or 1)))
	local var_58_21 = arg_58_1.absorber.imprints or {}
	local var_58_22 = math.floor(4 * var_58_0 + 0.5)
	local var_58_23 = math.floor((var_58_15 - var_58_22 * (var_58_20 - 1)) / var_58_20)

	if var_58_23 < math.floor(24 * var_58_0 + 0.5) then
		var_58_23 = math.floor(24 * var_58_0 + 0.5)
	end

	local var_58_24 = var_0_15(var_58_1, math.floor(12 * var_58_0 + 0.5))
	local var_58_25 = math.max(1, var_58_24)
	local var_58_26 = math.max(1, math.floor(7 * var_58_0 + 0.5))
	local var_58_27 = math.max(1, var_58_24 + math.max(1, math.floor(5 * var_58_0 + 0.5)))
	local var_58_28 = math.floor(20 * var_58_0 + 0.5)

	if var_58_28 < 12 then
		var_58_28 = 12
	end

	local var_58_29 = math.floor(18 * var_58_0 + 0.5)

	if var_58_29 < 14 then
		var_58_29 = 14
	end

	local var_58_30 = math.floor(18 * var_58_0 + 0.5)

	if var_58_30 < 14 then
		var_58_30 = 14
	end

	var_0_0._modalHit = {
		active = true,
		arrows = {}
	}

	for iter_58_0 = 1, var_58_20 do
		local var_58_31 = var_58_13 + (iter_58_0 - 1) * (var_58_23 + var_58_22)

		love.graphics.setColor(0.14, 0.14, 0.14, 1)
		love.graphics.rectangle("fill", var_58_18, var_58_31, var_58_16, var_58_23)
		love.graphics.setColor(0.25, 0.25, 0.25, 1)
		love.graphics.rectangle("line", var_58_18 + 0.5, var_58_31 + 0.5, var_58_16 - 1, var_58_23 - 1)

		local var_58_32 = var_58_21[iter_58_0]
		local var_58_33 = var_58_18 + math.floor(4 * var_58_0 + 0.5)
		local var_58_34 = var_58_31 + math.floor(4 * var_58_0 + 0.5)

		var_0_58(var_0_0, var_58_32 and var_58_32.icon, var_58_33, var_58_34, math.min(var_58_28, var_58_23 - math.floor(8 * var_58_0 + 0.5)), 1)

		local var_58_35 = var_58_33 + var_58_28 + math.floor(6 * var_58_0 + 0.5)
		local var_58_36 = math.floor(6 * var_58_0 + 0.5)
		local var_58_37 = var_58_18 + var_58_16 - var_58_36 - var_58_29
		local var_58_38 = var_58_31 + math.floor((var_58_23 - var_58_30) / 2 + 0.5)

		table.insert(var_0_0._modalHit.arrows, {
			x = var_58_37,
			y = var_58_38,
			w = var_58_29,
			h = var_58_30,
			slot = iter_58_0
		})
		love.graphics.setColor(0.1, 0.1, 0.1, 1)
		love.graphics.rectangle("fill", var_58_37, var_58_38, var_58_29, var_58_30)
		love.graphics.setColor(0.55, 0.55, 0.55, 1)
		love.graphics.rectangle("line", var_58_37 + 0.5, var_58_38 + 0.5, var_58_29 - 1, var_58_30 - 1)
		love.graphics.setColor(0.9, 0.9, 0.9, 1)
		love.graphics.printf(">", var_58_37, var_58_38 + math.floor((var_58_30 - var_58_24) / 2 + 0.5), var_58_29, "center")

		local var_58_39 = var_58_37 - math.floor(6 * var_58_0 + 0.5) - var_58_35

		if var_58_39 < 10 then
			var_58_39 = 10
		end

		local var_58_40 = var_58_31 + math.floor(3 * var_58_0 + 0.5)

		if var_58_32 then
			love.graphics.setColor(1, 0.9, 0.5, 1)

			local var_58_41 = var_0_5.getImprintName(var_58_32.id, var_58_32.name or "Unknown", _G.currentGameLang or "ko") .. " " .. var_0_41(var_58_32.level or 1)

			love.graphics.print(var_58_41, var_58_35, var_58_40)
			love.graphics.setColor(0.9, 0.9, 0.9, 1)

			local var_58_42 = var_58_40 + var_58_25 + var_58_26
			local var_58_43 = var_58_31 + var_58_23 - var_58_42 - math.floor(3 * var_58_0 + 0.5)
			local var_58_44 = var_0_45(var_58_43, var_58_27)

			var_0_44(var_58_1, var_0_5.getImprintDesc(var_58_32.id, var_58_32.level, var_58_32.desc or "", _G.currentGameLang or "ko"), var_58_35, var_58_42, var_58_39, var_58_27, var_58_44)
		else
			love.graphics.setColor(0.6, 0.6, 0.6, 1)
			love.graphics.print("Empty", var_58_35, var_58_40)
		end
	end

	love.graphics.setColor(0.14, 0.14, 0.14, 1)
	love.graphics.rectangle("fill", var_58_19, var_58_13, var_58_17, var_58_15)
	love.graphics.setColor(0.25, 0.25, 0.25, 1)
	love.graphics.rectangle("line", var_58_19 + 0.5, var_58_13 + 0.5, var_58_17 - 1, var_58_15 - 1)

	local var_58_45 = arg_58_1.pending
	local var_58_46 = var_58_19 + math.floor(6 * var_58_0 + 0.5)
	local var_58_47 = var_58_13 + math.floor(6 * var_58_0 + 0.5)
	local var_58_48 = math.floor(28 * var_58_0 + 0.5)

	if var_58_48 < 14 then
		var_58_48 = 14
	end

	var_0_58(var_0_0, var_58_45 and var_58_45.icon, var_58_46, var_58_47, var_58_48, 1)

	local var_58_49 = var_58_46 + var_58_48 + math.floor(8 * var_58_0 + 0.5)
	local var_58_50 = var_58_19 + var_58_17 - var_58_49 - math.floor(6 * var_58_0 + 0.5)

	if var_58_50 < 10 then
		var_58_50 = 10
	end

	local var_58_51 = var_58_13 + math.floor(6 * var_58_0 + 0.5)

	love.graphics.setColor(0.65, 1, 0.65, 1)

	local var_58_52 = var_0_5.getImprintName(var_58_45.id, var_58_45.name or "New Imprint", _G.currentGameLang or "ko") .. " " .. var_0_41(var_58_45.level or 1)

	love.graphics.print(var_58_52, var_58_49, var_58_51)
	love.graphics.setColor(0.9, 0.9, 0.9, 1)

	local var_58_53 = var_58_51 + var_58_25 + var_58_26
	local var_58_54 = var_58_13 + var_58_15 - var_58_53 - math.floor(6 * var_58_0 + 0.5)
	local var_58_55 = var_0_45(var_58_54, var_58_27)

	var_0_44(var_58_1, var_0_5.getImprintDesc(var_58_45.id, var_58_45.level, var_58_45.desc or "", _G.currentGameLang or "ko"), var_58_49, var_58_53, var_58_50, var_58_27, var_58_55)
end

function var_0_0.notifyAbsorb(arg_59_0, arg_59_1)
	if not arg_59_0 then
		return
	end

	var_0_26.lastUnit = arg_59_0
	var_0_26.holdTimer = 1.3

	if arg_59_1 then
		var_0_26.blinkUnit = arg_59_0
		var_0_26.blinkSlot = arg_59_1
		var_0_26.blinkTimer = 1
		var_0_26.impactScales[arg_59_1] = 1
		var_0_26.floatOffsets[arg_59_1] = -8
	end
end

function var_0_0.isHoldActive()
	return (var_0_26.holdTimer or 0) > 0
end

function var_0_0.cancelHold()
	var_0_26.holdTimer = 0
	var_0_26.blinkTimer = 0
	var_0_26.blinkSlot = nil
	var_0_26.blinkUnit = nil

	for iter_61_0 = 1, 5 do
		var_0_26.impactScales[iter_61_0] = 0
		var_0_26.floatOffsets[iter_61_0] = 0
	end
end

function var_0_0.showBattlefieldPreview(arg_62_0)
	if arg_62_0 then
		var_0_52(arg_62_0)
	end

	var_0_26.previewImprint = arg_62_0
end

function var_0_0.hideBattlefieldPreview()
	var_0_26.previewImprint = nil
end

function var_0_0.drawBattlefieldPreview(arg_64_0, arg_64_1, arg_64_2, arg_64_3, arg_64_4)
	var_0_26.convertHovering = false

	local var_64_0 = var_0_2.compute(arg_64_0)
	local var_64_1 = var_64_0 and var_64_0.right

	if not var_64_1 then
		return
	end

	local var_64_2 = arg_64_0.scale or 1
	local var_64_3 = var_64_1.y + math.floor(10 * var_64_2 + 0.5)
	local var_64_4 = var_64_1.y - math.floor(80 * var_64_2 + 0.5)

	if var_0_26.previewImprint then
		if var_0_26.previewAlpha <= 0 or not var_0_26.lastPreviewImprint then
			var_0_26.previewY = var_64_4
			var_0_26.lastPreviewImprint = var_0_26.previewImprint
		elseif var_0_26.lastPreviewImprint.id ~= var_0_26.previewImprint.id then
			var_0_26.lastPreviewImprint = var_0_26.previewImprint
		end

		var_0_26.previewY = var_0_26.previewY + (var_64_3 - var_0_26.previewY) * math.min(1, arg_64_1 * 12)
		var_0_26.previewAlpha = math.min(1, var_0_26.previewAlpha + arg_64_1 * 8)
	else
		var_0_26.previewY = var_0_26.previewY + (var_64_4 - var_0_26.previewY) * math.min(1, arg_64_1 * 10)
		var_0_26.previewAlpha = math.max(0, var_0_26.previewAlpha - arg_64_1 * 10)
	end

	if var_0_26.previewAlpha <= 0 and not var_0_26.previewImprint then
		var_0_26.lastPreviewImprint = nil
		var_0_26.previewScale = 1

		return
	end

	local var_64_5 = var_0_26.lastPreviewImprint

	if not var_64_5 then
		return
	end

	local var_64_6 = var_0_0._slotBgImage
	local var_64_7 = var_64_6 and var_64_6:getWidth() or 160
	local var_64_8 = var_64_6 and var_64_6:getHeight() or 40
	local var_64_9 = var_64_7

	if arg_64_0.imprintPanel and arg_64_0.imprintPanel.slotW then
		var_64_9 = math.floor(arg_64_0.imprintPanel.slotW * var_64_2 + 0.5)
	end

	local var_64_10 = var_64_1.x + (var_64_1.w - var_64_9) / 2
	local var_64_11 = 0
	local var_64_12 = 0

	if arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview then
		var_64_11 = tonumber(arg_64_0.imprintPanel.preview.offsetX or 0) * var_64_2
		var_64_12 = tonumber(arg_64_0.imprintPanel.preview.offsetY or 0) * var_64_2
	end

	local var_64_13 = var_64_10 + var_64_11
	local var_64_14 = math.floor(var_0_26.previewY + var_64_12 + 0.5)

	var_0_0._hoveredSlot = var_0_0._hoveredSlot or nil

	local var_64_15 = 0
	local var_64_16 = 0

	if arg_64_0.imprintPanel and arg_64_0.imprintPanel.slotBg then
		var_64_15 = tonumber(arg_64_0.imprintPanel.slotBg.offsetX or 0)
		var_64_16 = tonumber(arg_64_0.imprintPanel.slotBg.offsetY or 0)
	end

	local var_64_17 = false

	if var_0_26.previewImprint and var_0_26.previewAlpha > 0.5 then
		local var_64_18 = var_64_13 + var_64_15
		local var_64_19 = var_64_14 + var_64_16

		if var_64_18 <= arg_64_3 and arg_64_3 <= var_64_18 + var_64_7 and var_64_19 <= arg_64_4 and arg_64_4 <= var_64_19 + var_64_8 then
			var_64_17 = true
		end
	end

	local var_64_20 = var_64_17 and 1.15 or 1

	var_0_26.previewScale = var_0_26.previewScale + (var_64_20 - var_0_26.previewScale) * math.min(1, arg_64_1 * 12)

	local var_64_21 = var_0_26.previewScale

	if var_64_17 then
		local var_64_22 = var_64_20
		local var_64_23 = var_64_13 + var_64_15 + var_64_7 / 2
		local var_64_24 = var_64_14 + var_64_16 + var_64_8 / 2
		local var_64_25 = var_0_0._slotTrimmedOffsetX or 0
		local var_64_26 = var_0_0._slotTrimmedW or var_64_7
		local var_64_27 = var_64_13 + var_64_15 + var_64_25
		local var_64_28 = var_64_14 + var_64_16
		local var_64_29 = var_64_23 + (var_64_27 - var_64_23) * var_64_22
		local var_64_30 = var_64_24 + (var_64_28 - var_64_24) * var_64_22

		var_0_0._hoveredSlot = {
			index = -1,
			imprint = var_64_5,
			x = var_64_29,
			y = var_64_30,
			w = var_64_26 * var_64_22,
			h = var_64_8 * var_64_22,
			scale = var_64_21,
			tooltipScale = var_64_22
		}
	end

	local var_64_31 = var_64_13 + var_64_15 + var_64_7 / 2
	local var_64_32 = var_64_14 + var_64_16 + var_64_8 / 2

	if var_0_0._gainBgImage then
		local var_64_33 = var_0_0._gainBgImage
		local var_64_34, var_64_35 = var_64_33:getDimensions()
		local var_64_36 = 0
		local var_64_37 = -10

		if arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview and arg_64_0.imprintPanel.preview.gainBg then
			var_64_36 = tonumber(arg_64_0.imprintPanel.preview.gainBg.offsetX or 0)
			var_64_37 = tonumber(arg_64_0.imprintPanel.preview.gainBg.offsetY or -10)
		end

		local var_64_38 = math.floor(var_64_31 - var_64_34 / 2 + var_64_36 + 0.5)
		local var_64_39 = math.floor(var_64_32 - var_64_35 / 2 + var_64_37 + 0.5)

		love.graphics.setColor(1, 1, 1, var_0_26.previewAlpha)
		love.graphics.draw(var_64_33, var_64_38, var_64_39)

		local var_64_40 = arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview and arg_64_0.imprintPanel.preview.gainLabel
		local var_64_41 = var_64_40 and var_64_40.text or var_0_5.getText("imprint_gained_label", _G.currentGameLang or "ko")
		local var_64_42 = var_0_29() or arg_64_0.font

		if var_64_42 then
			local var_64_43 = love.graphics.getFont()

			love.graphics.setFont(var_64_42)

			local var_64_44 = var_0_14(var_64_42, var_64_41)
			local var_64_45 = -42
			local var_64_46 = 5

			if var_64_40 then
				var_64_45 = tonumber(var_64_40.offsetX or -42)
				var_64_46 = tonumber(var_64_40.offsetY or 5)
			end

			local var_64_47 = math.floor(var_64_31 - var_64_44 / 2 + var_64_45 + 0.5)
			local var_64_48 = var_64_39 + math.floor(var_64_46 + 0.5)

			love.graphics.setColor(1, 0.95, 0.8, var_0_26.previewAlpha)
			love.graphics.print(var_64_41, var_64_47, var_64_48)
			love.graphics.setFont(var_64_43)
		end
	end

	love.graphics.push()
	love.graphics.translate(var_64_31, var_64_32)
	love.graphics.scale(var_64_21, var_64_21)
	love.graphics.translate(-var_64_31, -var_64_32)

	if var_64_5.icon then
		local var_64_49 = var_0_55(var_0_0, var_64_5.icon)

		if var_64_49 then
			local var_64_50, var_64_51 = var_64_49:getDimensions()
			local var_64_52 = 4
			local var_64_53 = 0

			if arg_64_0.imprintPanel and arg_64_0.imprintPanel.iconOffset then
				var_64_52 = tonumber(arg_64_0.imprintPanel.iconOffset.x) or 4
				var_64_53 = tonumber(arg_64_0.imprintPanel.iconOffset.y) or 0
			end

			love.graphics.setColor(1, 1, 1, var_0_26.previewAlpha)
			love.graphics.draw(var_64_49, var_64_13 + math.floor(var_64_52 * var_64_2 + 0.5), var_64_14 + math.floor((var_64_8 - var_64_51) / 2) + math.floor(var_64_53 * var_64_2 + 0.5))
		end
	end

	if var_64_6 then
		local var_64_54 = var_64_5 and tostring(var_64_5.rarity or ""):lower()
		local var_64_55 = var_64_54 == "advanced"
		local var_64_56 = var_64_54 == "rare" or var_64_54 == "r"
		local var_64_57 = var_64_54 == "legendary" or var_64_54 == "legend" or var_64_54 == "l"
		local var_64_58 = var_64_54 == "prism" or var_64_54 == "p"
		local var_64_59 = var_64_55 and var_0_31()
		local var_64_60 = var_64_56 and var_0_33()
		local var_64_61 = var_64_57 and var_0_35()
		local var_64_62 = var_64_58 and var_0_37()
		local var_64_63 = var_64_59 or var_64_60 or var_64_61 or var_64_62

		if var_64_63 then
			if var_64_58 and var_64_63:hasUniform("u_time") then
				local var_64_64 = var_64_63

				local function var_64_65(arg_65_0, arg_65_1)
					if var_64_64:hasUniform(arg_65_0) then
						var_64_64:send(arg_65_0, arg_65_1)
					end
				end

				var_64_65("u_time", love.timer.getTime() % 10000)
				var_64_65("u_uiBase", {
					0.24313725490196078,
					0.20784313725490197,
					0.27450980392156865
				})
				var_64_65("u_dir", {
					1,
					0.4
				})
				var_64_65("u_cycle", 4)
				var_64_65("u_scale", 2)
				var_64_65("u_grainScale", 3)
				var_64_65("u_grainAmp", 0.2)
				var_64_65("u_filmFreq", 2)
				var_64_65("u_filmAmp", 0.25)
				var_64_65("u_specular", 0.5)
				var_64_65("u_fresnelPow", 2.5)
				var_64_65("u_colorGain", 1.8)
				var_64_65("u_saturation", 1.5)
				var_64_65("u_mixBP", 0.32)
			end

			love.graphics.setShader(var_64_63)
		end

		love.graphics.setColor(1, 1, 1, var_0_26.previewAlpha)
		love.graphics.draw(var_64_6, var_64_13 + var_64_15, var_64_14 + var_64_16, 0, 1, 1)

		if var_64_63 then
			love.graphics.setShader()
		end
	end

	local var_64_66 = var_0_29()
	local var_64_67 = love.graphics.getFont()

	if var_64_66 then
		love.graphics.setFont(var_64_66)
	end

	local var_64_68 = var_0_15(var_64_66 or arg_64_0 and arg_64_0.font, 12)
	local var_64_69 = 32

	if var_64_5.icon then
		local var_64_70 = var_0_55(var_0_0, var_64_5.icon)

		if var_64_70 then
			var_64_69 = var_64_70:getWidth()
		end
	end

	local var_64_71 = 8
	local var_64_72 = 3
	local var_64_73 = 8
	local var_64_74 = 4

	if arg_64_0.imprintPanel then
		if arg_64_0.imprintPanel.imprintName then
			var_64_71 = tonumber(arg_64_0.imprintPanel.imprintName.offsetX) or 8
			var_64_72 = tonumber(arg_64_0.imprintPanel.imprintName.offsetY) or 3
		end

		if arg_64_0.imprintPanel.imprintDesc then
			var_64_73 = tonumber(arg_64_0.imprintPanel.imprintDesc.offsetX) or 8
			var_64_74 = tonumber(arg_64_0.imprintPanel.imprintDesc.gapY) or 4
		end
	end

	local var_64_75 = var_64_13 + var_64_69 + math.floor(var_64_71 * var_64_2 + 0.5)
	local var_64_76 = var_64_14 + math.floor(var_64_72 * var_64_2 + 0.5)

	love.graphics.setColor(1, 0.9, 0.5, var_0_26.previewAlpha)

	local var_64_77 = var_0_5.getImprintName(var_64_5.id, var_64_5.name or "Unknown Imprint", _G.currentGameLang or "ko") .. " " .. var_0_41(var_64_5.level or 1)

	love.graphics.print(var_64_77, var_64_75, var_64_76)

	local var_64_78 = var_64_13 + var_64_69 + math.floor(var_64_73 * var_64_2 + 0.5)
	local var_64_79 = var_64_76 + var_64_68 + math.floor(var_64_74 * var_64_2 + 0.5)
	local var_64_80 = var_64_13 + var_64_9 - var_64_78 - math.floor(4 * var_64_2 + 0.5)

	if var_64_80 < 10 then
		var_64_80 = 10
	end

	local var_64_81 = math.max(1, var_64_68 + math.max(1, math.floor(5 * var_64_2 + 0.5)))
	local var_64_82 = var_64_14 + var_64_8 - var_64_79 - math.floor(3 * var_64_2 + 0.5)
	local var_64_83 = math.max(2, var_0_45(var_64_82, var_64_81))

	love.graphics.setColor(0.9, 0.9, 0.9, var_0_26.previewAlpha)

	local var_64_84 = var_0_0.getShortIconImage(var_0_0, var_64_5.id)
	local var_64_85 = var_64_78

	if var_64_84 then
		local var_64_86, var_64_87 = var_64_84:getDimensions()
		local var_64_88 = var_64_78
		local var_64_89 = var_64_79 + math.floor((var_64_81 - var_64_87) / 2)

		love.graphics.setColor(1, 1, 1, var_0_26.previewAlpha)
		love.graphics.draw(var_64_84, var_64_88, var_64_89)

		var_64_85 = var_64_85 + var_64_86 + math.floor(2 * var_64_2 + 0.5)
	end

	love.graphics.setColor(0.9, 0.9, 0.9, var_0_26.previewAlpha)
	var_0_44(var_64_66 or arg_64_0.font, var_0_5.getImprintShortDesc(var_64_5.id, var_64_5.shortDesc or "", _G.currentGameLang or "ko"), var_64_85, var_64_79, var_64_80 - (var_64_85 - var_64_78), var_64_81, var_64_83)

	if var_64_66 then
		love.graphics.setFont(var_64_67)
	end

	love.graphics.pop()

	if arg_64_2 and var_0_26.previewAlpha > 0.5 then
		local var_64_90 = var_0_0._cancelBtnImage
		local var_64_91 = var_64_9
		local var_64_92 = math.floor(26 * var_64_2 + 0.5)

		if var_64_90 then
			var_64_91, var_64_92 = var_64_90:getDimensions()
		end

		local var_64_93 = math.floor(6 * var_64_2 + 0.5)
		local var_64_94 = arg_64_2 and var_0_0._previewConvertInfo or nil
		local var_64_95 = (var_64_94 and var_64_94.label) ~= nil
		local var_64_96 = 0

		if var_64_95 and arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview and arg_64_0.imprintPanel.preview.cancelBtnWhenConvert then
			var_64_96 = tonumber(arg_64_0.imprintPanel.preview.cancelBtnWhenConvert.extraDown or 0) * var_64_2
		elseif var_64_95 then
			var_64_96 = math.floor(8 * var_64_2 + 0.5)
		end

		local var_64_97 = 0
		local var_64_98 = 0

		if arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview and arg_64_0.imprintPanel.preview.cancelBtn then
			var_64_97 = tonumber(arg_64_0.imprintPanel.preview.cancelBtn.offsetX or 0) * var_64_2
			var_64_98 = tonumber(arg_64_0.imprintPanel.preview.cancelBtn.offsetY or 0) * var_64_2
		end

		local var_64_99 = var_64_13 + (var_64_9 - var_64_91) / 2 + var_64_97
		local var_64_100 = var_64_14 + var_64_8 + var_64_93 + var_64_98
		local var_64_101 = var_64_100 + var_64_96
		local var_64_102
		local var_64_103 = false

		if var_64_95 then
			local var_64_104 = 0
			local var_64_105 = 0

			if arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview and arg_64_0.imprintPanel.preview.convertBtn then
				var_64_104 = tonumber(arg_64_0.imprintPanel.preview.convertBtn.offsetX or 0) * var_64_2
				var_64_105 = tonumber(arg_64_0.imprintPanel.preview.convertBtn.offsetY or 0) * var_64_2
			end

			local var_64_106 = var_64_99 + var_64_104
			local var_64_107 = var_64_100 - (var_64_92 + var_64_93) + var_64_105

			var_64_102 = {
				kind = "convert",
				x = var_64_106,
				y = var_64_107,
				w = var_64_91,
				h = var_64_92
			}

			if var_64_106 <= arg_64_3 and arg_64_3 <= var_64_106 + var_64_91 and var_64_107 <= arg_64_4 and arg_64_4 <= var_64_107 + var_64_92 then
				var_64_103 = true
				var_0_26.convertHovering = true
			end

			local var_64_108 = 1

			if var_0_26.convertBtnPressed then
				var_64_108 = 0.9
			elseif var_64_103 then
				var_64_108 = 1.08
			end

			var_0_26.convertBtnScale = var_0_26.convertBtnScale + (var_64_108 - var_0_26.convertBtnScale) * math.min(1, arg_64_1 * 15)

			local var_64_109 = var_0_26.convertBtnScale

			love.graphics.push()

			local var_64_110 = var_64_106 + var_64_91 / 2
			local var_64_111 = var_64_107 + var_64_92 / 2

			love.graphics.translate(var_64_110, var_64_111)
			love.graphics.scale(var_64_109, var_64_109)
			love.graphics.translate(-var_64_110, -var_64_111)
			love.graphics.setColor(1, 1, 1, var_0_26.previewAlpha)

			local var_64_112 = var_0_39()
			local var_64_113 = love.graphics.getShader()

			if var_64_112 then
				love.graphics.setShader(var_64_112)
			end

			if var_64_90 then
				love.graphics.draw(var_64_90, var_64_106, var_64_107)
			else
				love.graphics.setColor(0.12, 0.12, 0.12, 0.94 * var_0_26.previewAlpha)
				love.graphics.rectangle("fill", var_64_106, var_64_107, var_64_91, var_64_92)
				love.graphics.setColor(0.55, 0.55, 0.55, var_0_26.previewAlpha)
				love.graphics.rectangle("line", var_64_106 + 0.5, var_64_107 + 0.5, var_64_91 - 1, var_64_92 - 1)
			end

			if var_64_112 then
				love.graphics.setShader(var_64_113)
			end

			local var_64_114 = tostring(var_64_94.label)
			local var_64_115 = var_0_29() or arg_64_0.font
			local var_64_116 = 0
			local var_64_117 = 0

			if arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview and arg_64_0.imprintPanel.preview.convertLabel then
				var_64_116 = tonumber(arg_64_0.imprintPanel.preview.convertLabel.offsetX or 0) * var_64_2
				var_64_117 = tonumber(arg_64_0.imprintPanel.preview.convertLabel.offsetY or 0) * var_64_2
			end

			if var_64_115 then
				local var_64_118 = love.graphics.getFont()

				love.graphics.setFont(var_64_115)

				local var_64_119 = var_64_115:getWidth(var_64_114)
				local var_64_120 = var_64_115:getHeight()
				local var_64_121 = math.floor(var_64_106 + var_64_91 / 2 - var_64_119 / 2 + var_64_116 + 0.5)
				local var_64_122 = math.floor(var_64_107 + (var_64_92 - var_64_120) / 2 + var_64_117 + 0.5)

				love.graphics.setColor(1, 0.95, 0.8, var_0_26.previewAlpha)
				love.graphics.print(var_64_114, var_64_121, var_64_122)
				love.graphics.setFont(var_64_118)
			end

			love.graphics.pop()
		else
			var_0_26.convertBtnScale = 1
			var_0_26.convertBtnPressed = false
			var_0_26.convertBtnTimer = 0
		end

		local var_64_123 = false

		if var_64_99 <= arg_64_3 and arg_64_3 <= var_64_99 + var_64_91 and var_64_101 <= arg_64_4 and arg_64_4 <= var_64_101 + var_64_92 then
			var_64_123 = true
		end

		local var_64_124 = 1

		if var_0_26.cancelBtnPressed then
			var_64_124 = 0.9
		elseif var_64_123 then
			var_64_124 = 1.08
		end

		var_0_26.cancelBtnScale = var_0_26.cancelBtnScale + (var_64_124 - var_0_26.cancelBtnScale) * math.min(1, arg_64_1 * 15)

		local var_64_125 = var_0_26.cancelBtnScale

		love.graphics.push()

		local var_64_126 = var_64_99 + var_64_91 / 2
		local var_64_127 = var_64_101 + var_64_92 / 2

		love.graphics.translate(var_64_126, var_64_127)
		love.graphics.scale(var_64_125, var_64_125)
		love.graphics.translate(-var_64_126, -var_64_127)
		love.graphics.setColor(1, 1, 1, var_0_26.previewAlpha)

		if var_64_90 then
			love.graphics.draw(var_64_90, var_64_99, var_64_101)
		else
			love.graphics.setColor(0.12, 0.12, 0.12, 0.94 * var_0_26.previewAlpha)
			love.graphics.rectangle("fill", var_64_99, var_64_101, var_64_91, var_64_92)
			love.graphics.setColor(0.55, 0.55, 0.55, var_0_26.previewAlpha)
			love.graphics.rectangle("line", var_64_99 + 0.5, var_64_101 + 0.5, var_64_91 - 1, var_64_92 - 1)

			local var_64_128 = var_0_5.getText("imprint_absorb_cancel", _G.currentGameLang or "ko")
			local var_64_129 = arg_64_0.font
			local var_64_130 = var_0_14(var_64_129, var_64_128)
			local var_64_131 = var_0_15(var_64_129, math.floor(12 * var_64_2 + 0.5))
			local var_64_132 = var_64_99 + math.floor((var_64_91 - var_64_130) * 0.5 + 0.5)
			local var_64_133 = var_64_101 + math.floor((var_64_92 - var_64_131) * 0.5 + 0.5)

			love.graphics.setColor(0.95, 0.95, 0.95, var_0_26.previewAlpha)

			local var_64_134 = love.graphics.getFont()

			if var_64_129 then
				love.graphics.setFont(var_64_129)
			end

			love.graphics.print(var_64_128, var_64_132, var_64_133)
			love.graphics.setFont(var_64_134)
		end

		local var_64_135 = arg_64_0.imprintPanel and arg_64_0.imprintPanel.preview and arg_64_0.imprintPanel.preview.cancelLabel
		local var_64_136 = var_64_135 and var_64_135.text or var_0_5.getText("imprint_absorb_cancel", _G.currentGameLang or "ko")
		local var_64_137 = var_0_29() or arg_64_0.font

		if var_64_137 then
			local var_64_138 = love.graphics.getFont()

			love.graphics.setFont(var_64_137)

			local var_64_139 = var_64_137:getWidth(var_64_136)
			local var_64_140 = 0
			local var_64_141 = -12

			if var_64_135 then
				var_64_140 = tonumber(var_64_135.offsetX or 0) * var_64_2
				var_64_141 = tonumber(var_64_135.offsetY or -12) * var_64_2
			end

			local var_64_142 = math.floor(var_64_99 + var_64_91 / 2 - var_64_139 / 2 + var_64_140 + 0.5)
			local var_64_143 = math.floor(var_64_101 + var_64_141 + 0.5)

			love.graphics.setColor(1, 0.95, 0.8, var_0_26.previewAlpha)
			love.graphics.print(var_64_136, var_64_142, var_64_143)
			love.graphics.setFont(var_64_138)
		end

		love.graphics.pop()
		love.graphics.setColor(1, 1, 1, 1)

		var_0_0._hudHit = {
			active = true,
			cancelBtn = {
				kind = "cancel",
				x = var_64_99,
				y = var_64_101,
				w = var_64_91,
				h = var_64_92
			}
		}

		if var_64_102 then
			var_0_0._modalHit = var_0_0._modalHit or {
				active = true,
				buttons = {},
				arrows = {}
			}
			var_0_0._modalHit.active = true
			var_0_0._modalHit.buttons = var_0_0._modalHit.buttons or {}

			table.insert(var_0_0._modalHit.buttons, var_64_102)
		end

		if var_0_26.convertBtnTimer > 0 then
			var_0_26.convertBtnTimer = var_0_26.convertBtnTimer - arg_64_1

			if var_0_26.convertBtnTimer <= 0 then
				var_0_26.convertBtnPressed = false
				var_0_0._convertTriggered = true
			end
		end

		if var_0_26.cancelBtnTimer > 0 then
			var_0_26.cancelBtnTimer = var_0_26.cancelBtnTimer - arg_64_1

			if var_0_26.cancelBtnTimer <= 0 then
				var_0_26.cancelBtnPressed = false
				var_0_0._cancelTriggered = true
			end
		end
	else
		var_0_0._hudHit = {
			active = false
		}
		var_0_26.cancelBtnScale = 1
		var_0_26.cancelBtnPressed = false
		var_0_26.cancelBtnTimer = 0
		var_0_26.convertBtnScale = 1
		var_0_26.convertBtnPressed = false
		var_0_26.convertBtnTimer = 0

		if not arg_64_2 then
			var_0_0._cancelTriggered = false
			var_0_0._convertTriggered = false
		end
	end
end

function var_0_0.draw(arg_66_0, arg_66_1, arg_66_2)
	if not arg_66_0 then
		return
	end

	local var_66_0 = arg_66_2 and arg_66_2.mx or -9999
	local var_66_1 = arg_66_2 and arg_66_2.my or -9999
	local var_66_2 = var_0_0._hoveredRandomOption and var_0_0._hoveredRandomOption.anchor and var_0_0._hoveredRandomOption.anchor.index

	var_0_0._hoveredSlot = nil
	var_0_0._hoveredAbsorbIcon = nil
	var_0_0._previewConvertInfo = nil
	var_0_0._hoveredRandomOption = nil
	var_0_0._hoveredSkill = nil
	var_0_0._skillFrameRect = nil
	var_0_26.replaceHovering = var_0_26.replaceHoveringNext == true
	var_0_26.replaceHoveringNext = false

	local var_66_3 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_66_4

	if var_0_26.lastTime then
		var_66_4 = var_66_3 - var_0_26.lastTime
	else
		var_66_4 = 0
	end

	var_0_26.lastTime = var_66_3

	if var_66_4 < 0 then
		var_66_4 = 0
	end

	if var_66_4 > 0.1 then
		var_66_4 = 0.1
	end

	if var_0_26.holdTimer > 0 then
		var_0_26.holdTimer = var_0_26.holdTimer - var_66_4
	end

	if var_0_26.blinkTimer > 0 then
		var_0_26.blinkTimer = var_0_26.blinkTimer - var_66_4

		if var_0_26.blinkTimer <= 0 then
			var_0_26.blinkUnit = nil
			var_0_26.blinkSlot = nil
		end
	end

	if var_0_26.upgradeBtnTimer > 0 then
		var_0_26.upgradeBtnTimer = var_0_26.upgradeBtnTimer - var_66_4

		if var_0_26.upgradeBtnTimer <= 0 then
			var_0_26.upgradeBtnPressed = false
			var_0_0._upgradeTriggered = true
		end
	elseif not (arg_66_2 and arg_66_2.modal and arg_66_2.modal.active) then
		var_0_0._upgradeTriggered = false
		var_0_0._upgradeSlot = nil
		var_0_26.upgradeBtnPressed = false
		var_0_26.upgradeBtnTimer = 0
	end

	if var_0_26.confirmBtnTimer > 0 then
		var_0_26.confirmBtnTimer = var_0_26.confirmBtnTimer - var_66_4

		if var_0_26.confirmBtnTimer <= 0 then
			var_0_26.confirmBtnPressed = false
			var_0_0._confirmTriggered = true
		end
	elseif not (arg_66_2 and arg_66_2.modal and arg_66_2.modal.active) then
		var_0_0._confirmTriggered = false
		var_0_0._confirmSlot = nil
		var_0_0._confirmAction = nil
		var_0_26.confirmBtnPressed = false
		var_0_26.confirmBtnTimer = 0

		for iter_66_0 = 1, 5 do
			var_0_26.actionBtnScales[iter_66_0] = 0.8
		end
	end

	if var_0_26.changeBtnTimer > 0 then
		var_0_26.changeBtnTimer = var_0_26.changeBtnTimer - var_66_4

		if var_0_26.changeBtnTimer <= 0 then
			var_0_26.changeBtnPressed = false
			var_0_0._changeTriggered = true
		end
	elseif not (arg_66_2 and arg_66_2.modal and arg_66_2.modal.active) then
		var_0_0._changeTriggered = false
		var_0_0._changeSlot = nil
		var_0_26.changeBtnPressed = false
		var_0_26.changeBtnTimer = 0
	end

	for iter_66_1 = 1, 5 do
		if var_0_26.impactScales[iter_66_1] > 0 then
			var_0_26.impactScales[iter_66_1] = var_0_26.impactScales[iter_66_1] - var_66_4 * 3

			if var_0_26.impactScales[iter_66_1] < 0 then
				var_0_26.impactScales[iter_66_1] = 0
			end
		end

		if var_0_26.floatOffsets[iter_66_1] ~= 0 then
			var_0_26.floatOffsets[iter_66_1] = var_0_26.floatOffsets[iter_66_1] * math.exp(-var_66_4 * 10)

			if math.abs(var_0_26.floatOffsets[iter_66_1]) < 0.1 then
				var_0_26.floatOffsets[iter_66_1] = 0
			end
		end
	end

	local var_66_5 = arg_66_1 ~= nil
	local var_66_6 = arg_66_2 and arg_66_2.modal or nil
	local var_66_7 = var_66_6 and var_66_6.active and var_66_6.absorber

	if arg_66_2 and arg_66_2.progress ~= nil then
		var_66_5 = var_0_40(tonumber(arg_66_2.progress) or 0) > 0
	end

	if arg_66_2 and arg_66_2.active ~= nil then
		var_66_5 = arg_66_2.active == true
	end

	if var_0_26.holdTimer > 0 then
		var_66_5 = true
	end

	if var_66_5 and arg_66_1 then
		var_0_26.lastUnit = arg_66_1
	end

	local var_66_8 = arg_66_1 or var_0_26.lastUnit
	local var_66_9 = var_0_2.compute(arg_66_0)

	if not var_66_9 then
		return
	end

	local var_66_10 = var_66_9.slotPanel

	if not var_66_10 then
		return
	end

	local var_66_11 = var_0_54(var_0_0)
	local var_66_12 = var_66_10.w
	local var_66_13 = var_66_9.left and var_66_9.left.h or var_66_10.h
	local var_66_14 = var_66_10.x
	local var_66_15 = var_66_9.left and var_66_9.left.y or var_66_10.y

	if var_66_11 then
		var_66_12 = var_66_11:getWidth()
		var_66_13 = var_66_11:getHeight()
		var_66_14 = 0
		var_66_15 = 0
	end

	local var_66_16 = -var_66_12 - math.floor(8 * (arg_66_0.scale or 1) + 0.5)

	if var_0_26.x == nil then
		var_0_26.x = var_66_16
	end

	local var_66_17 = var_66_5 and var_66_14 or var_66_16
	local var_66_18 = 85
	local var_66_19 = 15
	local var_66_20 = 2000
	local var_66_21 = var_0_26.x
	local var_66_22 = var_0_26.v
	local var_66_23 = var_66_22 + ((var_66_17 - var_66_21) * var_66_18 - var_66_19 * var_66_22) * var_66_4

	if var_66_20 and var_66_20 > 0 then
		if var_66_20 < var_66_23 then
			var_66_23 = var_66_20
		elseif var_66_23 < -var_66_20 then
			var_66_23 = -var_66_20
		end
	end

	local var_66_24 = var_66_21 + var_66_23 * var_66_4
	local var_66_25 = 0.5

	if math.abs(var_66_23) < 0.02 and var_66_25 > math.abs(var_66_17 - var_66_24) then
		var_66_24 = var_66_17
		var_66_23 = 0
	end

	var_0_26.x = var_66_24
	var_0_26.v = var_66_23

	if not var_66_5 and math.abs(var_66_24 - var_66_16) < 1 then
		var_0_0._panelRect = nil
		var_0_26.lastUnit = nil
		var_0_26.holdTimer = 0
		var_0_26.blinkTimer = 0
		var_0_26.blinkSlot = nil

		return
	end

	if not var_66_8 then
		var_0_0._panelRect = nil

		return
	end

	local var_66_26 = arg_66_0.scale or 1
	local var_66_27 = var_66_13
	local var_66_28 = var_66_12
	local var_66_29 = var_0_42(var_0_26.x)
	local var_66_30 = var_0_42(var_66_15)
	local var_66_31 = var_0_0._bgVisibleBounds

	if var_66_31 then
		var_0_0._panelRect = {
			x = var_66_29 + var_66_31.x,
			y = var_66_30 + var_66_31.y,
			w = var_66_31.w,
			h = var_66_31.h
		}
	else
		var_0_0._panelRect = {
			x = var_66_29,
			y = var_66_30,
			w = var_66_28,
			h = var_66_27
		}
	end

	var_0_0._modalHit = var_0_0._modalHit or {
		active = false
	}
	var_0_0._modalHit.active = false
	var_0_0._modalHit.buttons = {}
	var_0_0._modalHit.arrows = {}

	local var_66_32 = 1
	local var_66_33 = arg_66_0.imprintPanel and arg_66_0.imprintPanel.skillFrame

	if var_66_33 and var_66_33.enabled ~= false then
		local var_66_34 = var_0_3
		local var_66_35 = var_66_34 and var_66_34.ui and var_66_34.ui.classCardSkillFrame

		if var_66_8.grade == "advanced" and var_66_34 and var_66_34.ui and var_66_34.ui.classCardSkillFrameAdvanced then
			var_66_35 = var_66_34.ui.classCardSkillFrameAdvanced
		end

		local var_66_36 = var_66_34 and var_66_34.ui and var_66_34.ui.classCardSkillFrameShadow

		if var_66_35 then
			local var_66_37 = var_0_7.getSkillsForUnit(var_66_8)
			local var_66_38 = var_66_37 and var_66_37[1]
			local var_66_39

			if var_66_38 and var_66_38.icon and var_66_38.icon ~= "" then
				if not var_0_0._imprintSkillIconCache then
					var_0_0._imprintSkillIconCache = {}
				end

				local var_66_40 = var_66_38.icon

				if var_0_0._imprintSkillIconCache[var_66_40] == nil then
					local var_66_41, var_66_42 = pcall(love.graphics.newImage, var_66_40)

					if var_66_41 and var_66_42 then
						var_66_42:setFilter("nearest", "nearest")

						var_0_0._imprintSkillIconCache[var_66_40] = var_66_42
					else
						var_0_0._imprintSkillIconCache[var_66_40] = false
					end
				end

				var_66_39 = var_0_0._imprintSkillIconCache[var_66_40] or nil
			end

			if var_66_38 then
				local var_66_43 = var_66_33.scale or 1
				local var_66_44, var_66_45 = var_66_35:getDimensions()
				local var_66_46 = var_66_44 * var_66_43
				local var_66_47 = var_66_45 * var_66_43
				local var_66_48 = var_66_29 + var_66_28 - var_66_46 - math.floor((var_66_33.rightInsetPx or -16) + 0.5) + math.floor((var_66_33.offsetX or 0) + 0.5)
				local var_66_49 = var_66_30 + math.floor((var_66_33.topOffsetPx or 80) + 0.5) + math.floor((var_66_33.offsetY or 0) + 0.5)
				local var_66_50 = math.floor((var_66_33.iconInsetPx or 4) + 0.5)

				var_0_0._skillFrameRect = {
					x = var_66_48,
					y = var_66_49,
					w = var_66_46,
					h = var_66_47,
					drawnAt = love.timer and love.timer.getTime and love.timer.getTime() or 0
				}

				local var_66_51 = var_66_48 <= var_66_0 and var_66_0 <= var_66_48 + var_66_46 and var_66_49 <= var_66_1 and var_66_1 <= var_66_49 + var_66_47

				if var_0_0._skillHoverProg == nil then
					var_0_0._skillHoverProg = 0
				end

				local var_66_52 = var_66_51 and 1 or 0
				local var_66_53 = var_66_52 > var_0_0._skillHoverProg and (var_66_33.hoverLerpIn or 28) or var_66_33.hoverLerpOut or 20

				var_0_0._skillHoverProg = var_0_0._skillHoverProg + (var_66_52 - var_0_0._skillHoverProg) * math.min(var_66_4 * var_66_53, 1)

				local var_66_54 = var_66_48 - math.floor((var_66_33.hoverShiftLeftPx or 4) * var_0_0._skillHoverProg + 0.5)

				if var_66_51 then
					var_0_0._hoveredSkill = {
						skill = {
							id = var_66_38.id,
							name = var_66_38.name,
							desc = var_66_38.description,
							cooldown = var_66_38.cooldown
						},
						anchor = {
							source = "imprintSkill",
							x = var_66_48,
							y = var_66_49,
							w = var_66_46,
							h = var_66_47
						}
					}
				end

				if var_66_39 then
					local var_66_55, var_66_56 = var_66_39:getDimensions()
					local var_66_57 = math.max(1, var_66_46 - var_66_50 * 2)
					local var_66_58 = math.max(1, var_66_47 - var_66_50 * 2)
					local var_66_59 = 1
					local var_66_60 = var_66_55 * var_66_59
					local var_66_61 = var_66_56 * var_66_59
					local var_66_62 = var_66_54 + var_66_50 + math.floor((var_66_57 - var_66_60) / 2 + 0.5) + math.floor((var_66_33.iconOffsetX or 0) + 0.5)
					local var_66_63 = var_66_49 + var_66_50 + math.floor((var_66_58 - var_66_61) / 2 + 0.5) + math.floor((var_66_33.iconOffsetY or 0) + 0.5)

					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_66_39, var_66_62, var_66_63, 0, var_66_59, var_66_59)
				end

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_66_35, var_66_54, var_66_49, 0, var_66_43, var_66_43)

				if var_66_36 then
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_66_36, var_66_48, var_66_49, 0, var_66_43, var_66_43)
				end

				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	local var_66_64 = var_0_54(var_0_0)

	if var_66_64 then
		love.graphics.setColor(1, 1, 1, var_66_32)
		love.graphics.draw(var_66_64, var_66_29, var_66_30)
	else
		love.graphics.setColor(0.1, 0.1, 0.1, 0.95 * var_66_32)
		love.graphics.rectangle("fill", var_66_29, var_66_30, var_66_28, var_66_27)
		love.graphics.setColor(0.5, 0.5, 0.5, 1 * var_66_32)
		love.graphics.rectangle("line", var_66_29, var_66_30, var_66_28, var_66_27)
	end

	local var_66_65 = var_0_67()

	if var_66_65 then
		var_66_65:setFilter("nearest", "nearest")
		love.graphics.setFont(var_66_65)
	end

	local var_66_66 = 1.5
	local var_66_67 = arg_66_0.imprintPanel and arg_66_0.imprintPanel.text or nil
	local var_66_68 = var_66_67 and var_66_67.name or nil
	local var_66_69 = tonumber(var_66_68 and var_66_68.x) or 10
	local var_66_70 = tonumber(var_66_68 and var_66_68.y) or 8
	local var_66_71 = var_66_29 + var_0_42(var_66_69 * var_66_26)
	local var_66_72 = var_66_30 + var_0_42(var_66_70 * var_66_26)
	local var_66_73 = var_66_8.sym or var_66_8.role == "archer" and "A" or var_66_8.role == "spear" and "S" or "W"
	local var_66_74 = var_0_3.iconsSmall and var_0_3.iconsSmall[var_66_73]

	var_66_74 = var_66_74 or var_0_3.icons and var_0_3.icons[var_66_73]

	local var_66_75 = var_66_8.jackpot5th == true

	if var_66_74 then
		var_66_74:setFilter("nearest", "nearest")

		local var_66_76 = var_0_60()

		if var_66_76 then
			love.graphics.setShader(var_66_76)
		end

		love.graphics.setColor(0, 0, 0, 0.5 * var_66_32)
		love.graphics.draw(var_66_74, var_66_71 + 1, var_66_72 + 1, 0, var_66_66, var_66_66)

		if var_66_76 then
			love.graphics.setShader()
		end

		if var_66_75 then
			local var_66_77 = var_0_60()

			if var_66_77 then
				love.graphics.setShader(var_66_77)
			end

			love.graphics.setColor(1, 1, 1, 1 * var_66_32)
			love.graphics.draw(var_66_74, var_66_71, var_66_72, 0, var_66_66, var_66_66)

			if var_66_77 then
				love.graphics.setShader()
			end

			local var_66_78 = var_0_62()

			if var_66_78 then
				local var_66_79 = arg_66_0 and arg_66_0.tooltipCfg and arg_66_0.tooltipCfg.iconFoil or arg_66_0 and arg_66_0.tooltip and arg_66_0.tooltip.iconFoil or arg_66_0 and arg_66_0.battle and (arg_66_0.battle.jackpotFoil or arg_66_0.battle.jackpotRainbow) or {}

				love.graphics.setShader(var_66_78)

				local var_66_80 = (var_66_79.angleDeg or 20) * math.pi / 180
				local var_66_81 = math.cos(var_66_80)
				local var_66_82 = math.sin(var_66_80)

				var_66_78:send("u_time", love.timer.getTime() % 10000)

				local var_66_83 = var_66_79.alpha ~= nil and var_66_79.alpha or 0.32

				var_66_78:send("u_alpha", var_66_83 * var_66_32)
				var_66_78:send("u_dir", {
					var_66_81,
					var_66_82
				})
				var_66_78:send("u_cycle", var_66_79.cycleSec or 4)
				var_66_78:send("u_scale", var_66_79.scale or 2.5)

				local var_66_84 = var_66_79.grain or {}
				local var_66_85 = var_66_79.film or {}

				var_66_78:send("u_grainScale", var_66_84.scale or 3)
				var_66_78:send("u_grainAmp", var_66_84.amp or 0.2)
				var_66_78:send("u_filmFreq", var_66_85.freq or 2)
				var_66_78:send("u_filmAmp", var_66_85.amp or 0.25)
				var_66_78:send("u_specular", var_66_79.specular or 0.35)
				var_66_78:send("u_fresnelPow", var_66_79.fresnelPow or 2.5)
				var_66_78:send("u_frameUV", {
					0,
					0,
					1,
					1
				})
				var_66_78:send("u_colorGain", var_66_79.colorGain or 1.85)
				var_66_78:send("u_saturation", var_66_79.saturation or 1.5)
				var_66_78:send("u_mixBP", var_66_79.mixBP or 0.32)
				love.graphics.setColor(1, 1, 1, 1)

				local var_66_86 = love.graphics.getBlendMode()

				love.graphics.setBlendMode("alpha", "alphamultiply")
				love.graphics.draw(var_66_74, var_66_71, var_66_72, 0, var_66_66, var_66_66)
				love.graphics.setBlendMode(var_66_86)
				love.graphics.setShader()
			end
		else
			local var_66_87 = var_0_60()

			if var_66_87 then
				love.graphics.setShader(var_66_87)
			end

			local var_66_88 = var_0_68(var_66_8)

			love.graphics.setColor(var_66_88[1], var_66_88[2], var_66_88[3], (var_66_88[4] or 1) * var_66_32)
			love.graphics.draw(var_66_74, var_66_71, var_66_72, 0, var_66_66, var_66_66)

			if var_66_87 then
				love.graphics.setShader()
			end
		end

		var_66_71 = var_66_71 + var_66_74:getWidth() * var_66_66 + 2
	end

	if var_66_75 then
		local var_66_89 = arg_66_0 and arg_66_0.tooltipCfg and arg_66_0.tooltipCfg.iconFoil or arg_66_0 and arg_66_0.tooltip and arg_66_0.tooltip.iconFoil or arg_66_0 and arg_66_0.battle and (arg_66_0.battle.jackpotFoil or arg_66_0.battle.jackpotRainbow) or {}
		local var_66_90 = love.timer.getTime() / (var_66_89.cycleSec or 4) * 2 * math.pi
		local var_66_91 = 0.6 + 0.4 * math.sin(var_66_90 + 0)
		local var_66_92 = 0.45 + 0.3 * math.sin(var_66_90 + 2.1)
		local var_66_93 = 0.8 + 0.2 * math.sin(var_66_90 + 4.2)

		love.graphics.setColor(var_66_91, var_66_92, var_66_93, 1 * var_66_32)
	else
		local var_66_94 = var_0_68(var_66_8)

		love.graphics.setColor(var_66_94[1], var_66_94[2], var_66_94[3], (var_66_94[4] or 1) * var_66_32)
	end

	love.graphics.print(var_0_47(var_66_8), var_66_71, var_66_72, 0, var_66_66, var_66_66)

	if arg_66_0.font then
		love.graphics.setFont(arg_66_0.font)
	end

	local var_66_95 = var_0_67() or arg_66_0.font or love.graphics.getFont()
	local var_66_96 = 1.5
	local var_66_97 = var_66_95 and var_66_95:getHeight() or 12
	local var_66_98 = math.max(1, math.floor(tonumber(var_66_8 and var_66_8.absorbLV or 1) or 1))
	local var_66_99 = "LV. " .. tostring(var_66_98)
	local var_66_100 = 0
	local var_66_101 = true

	if var_66_7 and var_66_6 and var_66_6.preview then
		local var_66_102 = math.max(0, math.floor(tonumber(var_66_6.preview.totalAbsorbLvGain or 0) or 0))
		local var_66_103 = math.max(0, math.floor(tonumber(var_66_6.preview.convertBonus or 0) or 0))

		var_66_100 = var_66_102

		if var_66_6.preview.convertAvailable then
			if var_0_26.convertHovering then
				var_66_100 = var_66_102 + var_66_103
			elseif var_0_26.replaceHovering then
				var_66_100 = var_66_102
			else
				var_66_101 = false
			end
		end
	end

	local var_66_104 = ""

	if var_66_101 and var_66_100 > 0 then
		var_66_104 = " +" .. tostring(var_66_100)
	end

	local var_66_105 = var_66_67 and var_66_67.absorbLv or nil
	local var_66_106 = tonumber(var_66_105 and var_66_105.x) or var_66_69
	local var_66_107 = var_66_29 + var_0_42(var_66_106 * var_66_26)
	local var_66_108
	local var_66_109 = tonumber(var_66_105 and var_66_105.y)

	if var_66_109 then
		var_66_108 = var_66_30 + var_0_42(var_66_109 * var_66_26)
	else
		local var_66_110 = tonumber(var_66_105 and var_66_105.dyFromName) or 2

		var_66_108 = var_66_72 + var_66_97 + var_0_42(var_66_110 * var_66_26)
	end

	if var_66_95 then
		love.graphics.setFont(var_66_95)
	end

	love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)

	local var_66_111 = var_66_95:getWidth(var_66_99)
	local var_66_112 = var_66_95:getHeight()
	local var_66_113 = math.ceil(var_66_111 * var_66_96)
	local var_66_114 = math.ceil(var_66_112 * var_66_96)

	var_66_95:setFilter("nearest", "nearest")
	love.graphics.print(var_66_99, math.floor(var_66_107), math.floor(var_66_108), 0, var_66_96, var_66_96)

	local var_66_115 = var_66_111 * var_66_96
	local var_66_116 = var_66_112 * var_66_96
	local var_66_117 = 8
	local var_66_118 = math.floor(var_66_116 * 0.9)

	if var_66_118 % 2 ~= 0 then
		var_66_118 = var_66_118 + 1
	end

	if var_66_118 < 14 then
		var_66_118 = 14
	end

	local var_66_119 = var_66_67 and var_66_67.infoIcon or nil
	local var_66_120 = tonumber(var_66_119 and var_66_119.dx) or 0
	local var_66_121 = tonumber(var_66_119 and var_66_119.dy) or 0
	local var_66_122 = math.floor(var_66_107 + var_66_115 + var_66_117 + var_66_120)
	local var_66_123 = math.floor(var_66_108 + (var_66_116 - var_66_118) / 2 + var_66_121)
	local var_66_124 = false
	local var_66_125 = 8
	local var_66_126 = 0
	local var_66_127 = 2
	local var_66_128 = var_66_122 - var_66_125
	local var_66_129 = var_66_123 - var_66_127
	local var_66_130 = var_66_118 + var_66_125 + var_66_126
	local var_66_131 = var_66_118 + var_66_127 * 2

	if var_66_128 <= var_66_0 and var_66_0 <= var_66_128 + var_66_130 and var_66_129 <= var_66_1 and var_66_1 <= var_66_129 + var_66_131 then
		var_66_124 = true
	end

	if var_66_124 then
		love.graphics.setColor(0.35, 0.35, 0.4, 0.95 * var_66_32)
	else
		love.graphics.setColor(0.2, 0.2, 0.2, 0.9 * var_66_32)
	end

	love.graphics.rectangle("fill", var_66_122, var_66_123, var_66_118, var_66_118)

	if var_66_124 then
		love.graphics.setColor(0.85, 0.85, 0.95, 1 * var_66_32)
	else
		love.graphics.setColor(0.6, 0.6, 0.6, 1 * var_66_32)
	end

	love.graphics.setLineWidth(1)
	love.graphics.rectangle("line", var_66_122 + 0.5, var_66_123 + 0.5, var_66_118 - 1, var_66_118 - 1)

	local var_66_132 = 2
	local var_66_133 = 2
	local var_66_134 = 2
	local var_66_135 = var_66_118 - 4 - var_66_132 - var_66_133

	if var_66_135 < 2 then
		var_66_135 = 2
	end

	local var_66_136 = var_66_122 + math.floor(var_66_118 / 2) - math.floor(var_66_134 / 2)
	local var_66_137 = var_66_132 + var_66_133 + var_66_135
	local var_66_138 = var_66_123 + math.floor((var_66_118 - var_66_137) / 2)

	if var_66_124 then
		love.graphics.setColor(1, 1, 1, 1 * var_66_32)
	else
		love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)
	end

	love.graphics.rectangle("fill", var_66_136, var_66_138, var_66_132, var_66_132)
	love.graphics.rectangle("fill", var_66_136, var_66_138 + var_66_132 + var_66_133, var_66_134, var_66_135)

	local var_66_139 = arg_66_0.imprintPanel and arg_66_0.imprintPanel.promotionBar
	local var_66_140 = arg_66_0.imprintPanel
	local var_66_141 = 0

	if var_66_139 and var_66_139.offsetX then
		var_66_141 = var_0_42((var_66_139.offsetX or 0) * var_66_26)
	end

	local var_66_142 = var_66_139 and var_66_139.offsetY
	local var_66_143 = tonumber(var_66_142)

	if var_66_143 == nil then
		var_66_143 = 6
	end

	local var_66_144 = var_66_143 * var_66_26
	local var_66_145 = 3
	local var_66_146 = var_0_42(10 * var_66_26)
	local var_66_147 = var_0_42(var_66_28 - var_66_146 * 2)
	local var_66_148 = var_66_147
	local var_66_149 = var_0_42(var_66_29 + var_66_146)
	local var_66_150 = arg_66_0.imprintPanel

	if var_66_150 then
		local var_66_151 = tonumber(var_66_150.slotW)

		if var_66_151 and var_66_151 > 0 then
			local var_66_152 = var_0_42(var_66_151 * var_66_26)

			var_66_148 = math.max(60, math.min(var_66_147, var_66_152))
			var_66_149 = var_0_42(var_0_42(var_66_29 + var_66_146) + (var_66_147 - var_66_148) * 0.5)
		end

		local var_66_153 = tonumber(var_66_150.slotX)

		if var_66_153 then
			var_66_149 = var_0_42(var_66_29 + var_66_153 * var_66_26)
		end
	end

	if var_66_139 and var_66_139.width then
		var_66_148 = var_0_42(var_66_139.width * var_66_26)
	end

	local var_66_154 = var_66_8.rank or 1
	local var_66_155 = var_66_8.jackpot5th == true and "prism" or var_66_8.grade or "normal"
	local var_66_156 = math.max(0, math.floor(tonumber(var_66_8 and var_66_8.absorbLV or 0) or 0))
	local var_66_157 = var_0_1.evolution.rankThresholds[var_66_155]
	local var_66_158 = var_66_157 and var_66_157[var_66_154 + 1]
	local var_66_159 = 0

	if var_66_157 and var_66_157[var_66_154] then
		var_66_159 = var_66_157[var_66_154]
	end

	local var_66_160 = 0

	if var_66_7 and var_66_6 and var_66_6.preview then
		local var_66_161 = math.max(0, math.floor(tonumber(var_66_6.preview.totalAbsorbLvGain or 0) or 0))
		local var_66_162 = math.max(0, math.floor(tonumber(var_66_6.preview.convertBonus or 0) or 0))

		if var_66_6.preview.convertAvailable then
			if var_0_26.convertHovering then
				var_66_160 = var_66_161 + var_66_162
			elseif var_0_26.replaceHovering then
				var_66_160 = var_66_161
			end
		else
			var_66_160 = var_66_161
		end
	end

	local var_66_163 = var_66_148
	local var_66_164 = math.floor(var_66_145 * var_66_26 + 0.5)
	local var_66_165 = var_66_149 + var_66_141
	local var_66_166 = var_0_42(var_66_108 + var_66_116 + var_66_144)
	local var_66_167 = 0
	local var_66_168 = var_66_165
	local var_66_169 = var_66_163
	local var_66_170 = var_66_139 and var_66_139.fillColor or {
		0.2,
		0.8,
		0.4,
		0.95
	}
	local var_66_171 = var_66_139 and var_66_139.previewColor or var_66_170
	local var_66_172 = var_66_139 and var_66_139.bgColor or {
		0.05,
		0.05,
		0.05,
		0.85
	}
	local var_66_173 = var_66_139 and var_66_139.borderColor or {
		0.6,
		0.6,
		0.6,
		0.8
	}

	if not var_66_139 or not var_66_139.accentColor then
		local var_66_174 = {
			1,
			1,
			1,
			0.15
		}
	end

	love.graphics.setColor(var_66_172[1], var_66_172[2], var_66_172[3], var_66_172[4] * var_66_32)
	love.graphics.rectangle("fill", var_66_168, var_66_166, var_66_169, var_66_164)

	if var_66_158 then
		local var_66_175 = var_66_158 - var_66_159
		local var_66_176 = var_66_156 - var_66_159

		if var_66_159 == 0 then
			var_66_175 = math.max(1, var_66_158 - 1)
			var_66_176 = math.max(0, var_66_156 - 1)
		end

		local var_66_177 = 0

		if var_66_175 > 0 then
			var_66_177 = math.max(0, math.min(1, var_66_176 / var_66_175))
		end

		local var_66_178 = var_66_164
		local var_66_179 = var_66_163

		if var_66_177 > 0 then
			local var_66_180 = var_66_179 * var_66_177

			if var_66_180 > 0 then
				love.graphics.setColor(var_66_170[1], var_66_170[2], var_66_170[3], var_66_170[4] * var_66_32)
				love.graphics.rectangle("fill", var_66_168, var_66_166, var_66_180, var_66_178)

				local var_66_181 = var_66_139 and var_66_139.bloom or nil

				if var_66_181 == nil or var_66_181.enabled ~= false then
					local var_66_182 = var_66_181 and var_66_181.color or var_66_171 or var_66_170
					local var_66_183 = var_66_181 and var_66_181.alpha or 0.16
					local var_66_184 = var_66_181 and var_66_181.pulseAmp or 0
					local var_66_185 = var_66_181 and var_66_181.pulseHz or 0
					local var_66_186 = var_66_181 and var_66_181.expand or 6
					local var_66_187 = math.max(1, math.floor(var_66_181 and var_66_181.layers or 12))
					local var_66_188 = var_66_181 and var_66_181.softness or 2.4
					local var_66_189 = 1

					if var_66_184 > 0 and var_66_185 > 0 then
						var_66_189 = 0.5 + 0.5 * math.sin(love.timer.getTime() * (math.pi * 2) * var_66_185)
					end

					local var_66_190 = (var_66_183 + var_66_184 * var_66_189) * var_66_32
					local var_66_191 = var_66_182[1] or 1
					local var_66_192 = var_66_182[2] or 1
					local var_66_193 = var_66_182[3] or 1
					local var_66_194 = var_66_182[4] or 1
					local var_66_195, var_66_196 = love.graphics.getBlendMode()

					love.graphics.setBlendMode("add", "alphamultiply")

					local var_66_197 = var_66_186 * (var_66_26 or 1)

					for iter_66_2 = 1, var_66_187 do
						local var_66_198 = (iter_66_2 - 0.5) / var_66_187
						local var_66_199 = var_66_197 * var_66_198^1.05
						local var_66_200 = var_66_190 * math.exp(-var_66_198 * var_66_188) * 0.7

						love.graphics.setColor(var_66_191, var_66_192, var_66_193, var_66_194 * var_66_200)

						local var_66_201 = math.max(2, var_66_178 * 0.6 + var_66_199)
						local var_66_202 = var_66_201

						love.graphics.rectangle("fill", var_66_168 - var_66_199, var_66_166 - var_66_199, var_66_180 + var_66_199 * 2, var_66_178 + var_66_199 * 2, var_66_201, var_66_202)
					end

					love.graphics.setBlendMode(var_66_195 or "alpha", var_66_196 or "alphamultiply")
				end
			end
		end

		if var_66_160 > 0 then
			local var_66_203 = var_66_139 and var_66_139.previewAlphaMin
			local var_66_204 = var_66_139 and var_66_139.previewAlphaMax
			local var_66_205 = var_66_139 and var_66_139.previewPulseHz
			local var_66_206 = var_66_139 and var_66_139.previewWhiteMixMax

			if var_66_203 == nil then
				var_66_203 = 0
			end

			if var_66_204 == nil then
				var_66_204 = 0.95
			end

			if var_66_205 == nil then
				var_66_205 = 1.6
			end

			if var_66_206 == nil then
				var_66_206 = 1
			end

			local var_66_207 = 0.5 + 0.5 * math.sin(love.timer.getTime() * (math.pi * 2) * var_66_205)
			local var_66_208 = var_66_203 + (var_66_204 - var_66_203) * var_66_207
			local var_66_209 = math.max(0, var_66_176)
			local var_66_210 = math.max(0, var_66_176 + var_66_160)
			local var_66_211 = math.floor(var_66_168 + var_66_209 / var_66_175 * var_66_179)
			local var_66_212 = math.floor(var_66_168 + math.min(1, var_66_210 / var_66_175) * var_66_179) - var_66_211

			if var_66_212 > 0 then
				local var_66_213 = math.max(0, math.min(1, var_66_206 * var_66_207))
				local var_66_214 = var_66_171[1] + (1 - var_66_171[1]) * var_66_213
				local var_66_215 = var_66_171[2] + (1 - var_66_171[2]) * var_66_213
				local var_66_216 = var_66_171[3] + (1 - var_66_171[3]) * var_66_213

				love.graphics.setColor(var_66_214, var_66_215, var_66_216, var_66_171[4] * var_66_208 * var_66_32)
				love.graphics.rectangle("fill", var_66_211, var_66_166, var_66_212, var_66_178)
				love.graphics.setColor(1, 1, 1, 0.35 * var_66_208 * var_66_32)
				love.graphics.rectangle("line", var_66_211 + 0.5, var_66_166 + 0.5, var_66_212 - 1, var_66_178 - 1)
			end
		end

		if var_66_175 < 30 then
			local var_66_217 = var_66_139 and var_66_139.gridColor or {
				0,
				0,
				0,
				0.15
			}

			love.graphics.setColor(var_66_217[1], var_66_217[2], var_66_217[3], var_66_217[4] * var_66_32)

			for iter_66_3 = 1, var_66_175 - 1 do
				local var_66_218 = math.floor(var_66_168 + var_66_179 / var_66_175 * iter_66_3)

				love.graphics.rectangle("fill", var_66_218, var_66_166, 1, var_66_178)
			end
		end

		local var_66_219 = tostring(var_66_156) .. " / " .. tostring(var_66_158)
		local var_66_220 = var_0_67()

		if var_66_220 then
			local var_66_221 = love.graphics.getFont()

			love.graphics.setFont(var_66_220)

			local var_66_222 = var_66_139 and var_66_139.textScale or 1.3
			local var_66_223 = (var_66_139 and var_66_139.textOffsetX or 0) * var_66_26
			local var_66_224 = (var_66_139 and var_66_139.textOffsetY or 0) * var_66_26
			local var_66_225 = var_66_139 and var_66_139.textColor or {
				1,
				1,
				1,
				1
			}
			local var_66_226 = var_66_220:getWidth(var_66_219) * var_66_222
			local var_66_227 = var_66_220:getHeight() * var_66_222
			local var_66_228 = math.floor(var_66_168 + var_66_223)
			local var_66_229 = math.floor(var_66_166 + (var_66_164 - var_66_227) / 2 + var_66_224 - 4 * var_66_26)

			love.graphics.setColor(var_66_225[1], var_66_225[2], var_66_225[3], var_66_225[4] * var_66_32)
			love.graphics.print(var_66_219, var_66_228, var_66_229, 0, var_66_222, var_66_222)
			love.graphics.setFont(var_66_221)
		end
	else
		love.graphics.setColor(0.35, 0.35, 0.35, 0.7 * var_66_32)
		love.graphics.rectangle("fill", var_66_168, var_66_166, var_66_169, var_66_164)

		local var_66_230 = "MAX"
		local var_66_231 = var_0_67()

		if var_66_231 then
			local var_66_232 = love.graphics.getFont()

			love.graphics.setFont(var_66_231)

			local var_66_233 = var_66_139 and var_66_139.textScale or 1.3
			local var_66_234 = (var_66_139 and var_66_139.textOffsetX or 0) * var_66_26
			local var_66_235 = (var_66_139 and var_66_139.textOffsetY or 0) * var_66_26
			local var_66_236 = {
				0.9,
				0.7,
				0.2,
				1
			}
			local var_66_237 = var_66_231:getWidth(var_66_230) * var_66_233
			local var_66_238 = var_66_231:getHeight() * var_66_233
			local var_66_239 = math.floor(var_66_168 + var_66_234)
			local var_66_240 = math.floor(var_66_166 + (var_66_164 - var_66_238) / 2 + var_66_235 - 4 * var_66_26)

			love.graphics.setColor(var_66_236[1], var_66_236[2], var_66_236[3], (var_66_236[4] or 1) * var_66_32)
			love.graphics.print(var_66_230, var_66_239, var_66_240, 0, var_66_233, var_66_233)
			love.graphics.setFont(var_66_232)
		end
	end

	local var_66_241 = var_66_8

	if var_66_241 and not var_66_241.isShadowMinion then
		local var_66_242 = 3
		local var_66_243 = var_66_241.grade == "normal" and 3 or var_66_241.grade == "advanced" and 3 or var_66_241.grade == "rare" and 3 or var_66_241.grade == "legendary" and 3 or var_66_241.grade == "prism" and 3 or ((var_0_1 and var_0_1.evolution or {}).maxRankByGrade or {})[var_66_241.grade or "normal"] or 3
		local var_66_244 = tonumber(var_66_241.rank or var_66_241.star or 1) or 1

		if var_66_244 < 1 then
			var_66_244 = 1
		elseif var_66_243 < var_66_244 then
			var_66_244 = var_66_243
		end

		local var_66_245 = {
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
		local var_66_246 = 7
		local var_66_247 = math.max(1, math.floor(1 * var_66_26 + 0.5))
		local var_66_248 = 2 * var_66_247
		local var_66_249 = var_66_246 * var_66_247
		local var_66_250 = var_66_243 * var_66_249 + (var_66_243 - 1) * var_66_248
		local var_66_251 = (var_66_139 and var_66_139.starOffsetX or 0) * var_66_26
		local var_66_252 = (var_66_139 and var_66_139.starOffsetY or 0) * var_66_26
		local var_66_253 = math.floor(var_66_168 + var_66_169 - var_66_250 + var_66_251)
		local var_66_254 = math.floor(var_66_166 + var_66_164 + 3 * var_66_26 + var_66_252)

		local function var_66_255(arg_67_0, arg_67_1, arg_67_2, arg_67_3)
			local var_67_0 = arg_67_2 and arg_67_3 or arg_67_3 * 0.22

			love.graphics.setColor(1, 1, 1, var_67_0)

			for iter_67_0 = 1, 7 do
				local var_67_1 = var_66_245[iter_67_0]

				for iter_67_1 = 1, 7 do
					if var_67_1[iter_67_1] == 1 then
						local var_67_2 = arg_67_0 + (iter_67_1 - 1) * var_66_247
						local var_67_3 = arg_67_1 + (iter_67_0 - 1) * var_66_247

						love.graphics.rectangle("fill", var_67_2, var_67_3, var_66_247, var_66_247)
					end
				end
			end
		end

		local var_66_256 = var_66_32

		for iter_66_4 = 1, var_66_243 do
			local var_66_257 = var_66_253 + (iter_66_4 - 1) * (var_66_249 + var_66_248)

			var_66_255(var_66_257, var_66_254, iter_66_4 <= var_66_244, var_66_256)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	love.graphics.setColor(var_66_173[1], var_66_173[2], var_66_173[3], var_66_173[4] * 0.5 * var_66_32)
	love.graphics.setLineWidth(1)
	love.graphics.rectangle("line", var_66_168 + 0.5, var_66_166 + 0.5, var_66_169 - 1, var_66_164 - 1)

	if var_66_104 ~= "" then
		local var_66_258 = var_66_122 + var_66_118 + 6
		local var_66_259 = var_66_108

		love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)
		love.graphics.print(var_66_104, math.floor(var_66_258), math.floor(var_66_259), 0, var_66_96, var_66_96)
	end

	var_0_0._absorbLvRect = {
		x = var_66_128,
		y = var_66_129,
		w = var_66_130,
		h = var_66_131
	}
	var_0_0._absorbLvAnchor = {
		x = var_66_122,
		y = var_66_123,
		w = var_66_118,
		h = var_66_118
	}

	if var_66_124 then
		var_0_0._hoveredAbsorbIcon = {
			stats = var_0_0.getAbsorbLvStats(var_66_8),
			anchor = var_0_0._absorbLvAnchor
		}
	end

	if arg_66_0.font then
		love.graphics.setFont(arg_66_0.font)
	end

	if var_66_7 and var_66_6 and var_66_6.preview then
		local var_66_260 = var_66_6.preview
		local var_66_261 = var_0_15(font, 12)
		local var_66_262 = var_66_71
		local var_66_263 = var_66_72 + var_66_261 * 2 + var_0_42(6 * var_66_26)
		local var_66_264 = math.max(0, math.floor(tonumber(var_66_260.totalAbsorbLvGain or 0) or 0))
		local var_66_265 = "흡수 결과: 흡수 LV +" .. tostring(var_66_264)

		if var_66_260.convertAvailable and var_66_260.convertBonus then
			local var_66_266 = math.max(0, math.floor(tonumber(var_66_260.convertBonus) or 0))
			local var_66_267 = var_66_265 .. " (전환 +" .. tostring(var_66_266) .. ")"
		end

		local var_66_268 = var_66_260.incomingImprint
		local var_66_269 = var_66_260.action or {
			kind = "none"
		}
		local var_66_270 = "각인: 변화 없음"

		if var_66_268 then
			local var_66_271 = var_66_268.rarity
			local var_66_272 = var_0_1 and var_0_1.unitGrades and var_0_1.unitGrades.labels and var_0_1.unitGrades.labels[var_66_271] or var_66_271 or ""

			if var_66_272 ~= "" then
				var_66_272 = "(" .. tostring(var_66_272) .. ")"
			end

			local var_66_273 = tostring(var_66_268.name or var_66_268.id or "각인") .. " " .. var_0_41(var_66_268.level or 1)

			if var_66_269.kind == "insert" then
				local var_66_274 = "각인 획득: " .. var_66_273 .. var_66_272
			elseif var_66_269.kind == "replace" then
				local var_66_275 = "각인 교체: " .. var_66_273 .. var_66_272 .. " (슬롯 선택)"
			elseif var_66_269.kind == "upgradeLevel" then
				local var_66_276 = tonumber(var_66_269.curLevel) or 1
				local var_66_277 = tonumber(var_66_269.toLevel) or var_66_276 + 1

				if var_66_277 < 1 then
					var_66_277 = 1
				end

				local var_66_278 = " (Lv." .. tostring(var_66_276) .. "→Lv." .. tostring(var_66_277) .. ")"
				local var_66_279 = "각인 업그레이드: " .. var_66_273 .. var_66_278
			elseif var_66_269.kind == "max" then
				local var_66_280 = "각인 최대: " .. var_66_273 .. var_66_272
			else
				local var_66_281 = "각인 유지: " .. var_66_273 .. var_66_272
			end
		end

		if (not var_66_260.needsChoice or var_66_260.needsChoice and var_66_260.convertAvailable) and var_66_260.convertAvailable then
			local var_66_282 = math.max(0, math.floor(tonumber(var_66_260.convertBonus or 0) or 0))
			local var_66_283 = math.max(0, math.floor(tonumber(var_66_260.totalAbsorbLvGain or 0) or 0)) + var_66_282
			local var_66_284 = var_0_5.getText("imprint_convert_prefix", _G.currentGameLang or "ko") .. tostring(var_66_283)

			var_0_0._previewConvertInfo = {
				label = var_66_284
			}
		end
	end

	local var_66_285 = var_66_8.grade or "normal"

	if var_66_8.jackpot5th == true then
		var_66_285 = "prism"
	end

	local var_66_286 = var_66_8.maxImprintSlots or var_0_1 and var_0_1.imprint and var_0_1.imprint.slots and var_0_1.imprint.slots[var_66_285] or 1
	local var_66_287 = math.max(1, math.min(5, math.floor(tonumber(var_66_286) or 1)))
	local var_66_288 = var_66_8.imprints or {}
	local var_66_289 = {}

	for iter_66_5 = 1, var_66_287 do
		var_66_289[iter_66_5] = var_66_288[iter_66_5]

		if var_66_289[iter_66_5] then
			var_0_52(var_66_289[iter_66_5])
		end
	end

	local var_66_290

	if arg_66_2 and arg_66_2.predictionSource then
		local var_66_291 = var_0_51(arg_66_2.predictionSource)

		if var_66_291 then
			local var_66_292 = false

			for iter_66_6 = 1, var_66_287 do
				local var_66_293 = var_66_289[iter_66_6]

				if var_66_293 and var_66_293.id == var_66_291.id then
					var_66_292 = true

					break
				end
			end

			local var_66_294 = arg_66_2.predictionSlot

			if type(var_66_294) ~= "number" then
				var_66_294 = tonumber(var_66_294)
			end

			if not var_66_292 then
				local var_66_295

				if var_66_294 and var_66_294 >= 1 and var_66_294 <= var_66_287 then
					var_66_295 = var_66_294
				else
					for iter_66_7 = 1, var_66_287 do
						if var_66_289[iter_66_7] == nil then
							var_66_295 = iter_66_7

							break
						end
					end
				end

				if var_66_295 then
					local var_66_296 = var_0_53(var_66_291)

					var_66_296._isPrediction = true
					var_66_289[var_66_295] = var_66_296

					local var_66_297 = var_66_295
				end
			end
		end
	end

	local var_66_298 = var_0_42(10 * var_66_26)
	local var_66_299 = var_0_42(52 * var_66_26)
	local var_66_300 = var_0_42(8 * var_66_26)
	local var_66_301 = var_0_42(3 * var_66_26)
	local var_66_302 = var_0_42(var_66_29 + var_66_298)
	local var_66_303 = var_0_42(var_66_30 + var_66_299)
	local var_66_304 = var_0_42(var_66_28 - var_66_298 * 2)
	local var_66_305 = var_0_42(var_66_27 - var_66_299 - var_66_300)

	if var_66_304 <= 1 or var_66_305 <= 1 then
		return
	end

	local var_66_306 = var_66_302
	local var_66_307 = var_66_304
	local var_66_308 = var_66_303
	local var_66_309 = var_66_305
	local var_66_310 = arg_66_0.imprintPanel

	if var_66_310 then
		local var_66_311 = tonumber(var_66_310.slotW)

		if var_66_311 and var_66_311 > 0 then
			local var_66_312 = var_0_42(var_66_311 * var_66_26)

			var_66_307 = math.max(60, math.min(var_66_304, var_66_312))
			var_66_306 = var_0_42(var_66_302 + (var_66_304 - var_66_307) * 0.5)
		end

		local var_66_313 = tonumber(var_66_310.slotX)

		if var_66_313 then
			var_66_306 = var_0_42(var_66_29 + var_66_313 * var_66_26)
		end

		local var_66_314 = tonumber(var_66_310.slotY)

		if var_66_314 then
			var_66_308 = var_0_42(var_66_30 + var_66_314 * var_66_26)
		end

		local var_66_315 = tonumber(var_66_310.slotH)

		if var_66_315 and var_66_315 > 0 then
			local var_66_316 = var_0_42(var_66_315 * var_66_26)
		end
	end

	local var_66_317 = 5
	local var_66_318 = math.max(1, math.min(var_66_317, var_66_287 or 1))

	if not var_0_0._slotBgImage then
		local var_66_319 = "src/sprites/background/mainbackground/Imprintslot.png"
		local var_66_320, var_66_321 = pcall(love.graphics.newImage, var_66_319)

		if var_66_320 and var_66_321 then
			var_66_321:setFilter("nearest", "nearest")

			var_0_0._slotBgImage = var_66_321

			local var_66_322, var_66_323 = pcall(love.image.newImageData, var_66_319)

			if var_66_322 and var_66_323 then
				local var_66_324, var_66_325 = var_66_323:getDimensions()
				local var_66_326 = var_66_324
				local var_66_327 = 0

				for iter_66_8 = 0, var_66_325 - 1 do
					for iter_66_9 = 0, var_66_324 - 1 do
						local var_66_328, var_66_329, var_66_330, var_66_331 = var_66_323:getPixel(iter_66_9, iter_66_8)

						if var_66_331 > 0 then
							if iter_66_9 < var_66_326 then
								var_66_326 = iter_66_9
							end

							if var_66_327 < iter_66_9 then
								var_66_327 = iter_66_9
							end
						end
					end
				end

				if var_66_326 <= var_66_327 then
					var_0_0._slotTrimmedW = var_66_327 - var_66_326 + 1
					var_0_0._slotTrimmedOffsetX = var_66_326
				else
					var_0_0._slotTrimmedW = var_66_324
					var_0_0._slotTrimmedOffsetX = 0
				end
			end
		end
	end

	if not var_0_0._gainBgImage then
		local var_66_332 = "src/sprites/background/mainbackground/Imprintgainbackground.png"
		local var_66_333, var_66_334 = pcall(love.graphics.newImage, var_66_332)

		if var_66_333 and var_66_334 then
			var_66_334:setFilter("nearest", "nearest")

			var_0_0._gainBgImage = var_66_334
		end
	end

	if not var_0_0._cancelBtnImage then
		local var_66_335 = "src/sprites/background/button/cancelbutton.png"
		local var_66_336, var_66_337 = pcall(love.graphics.newImage, var_66_335)

		if var_66_336 and var_66_337 then
			var_66_337:setFilter("nearest", "nearest")

			var_0_0._cancelBtnImage = var_66_337
		end
	end

	if not var_0_0._upgradeBtnImage then
		local var_66_338 = "src/sprites/background/button/imprintupgrade.png"
		local var_66_339, var_66_340 = pcall(love.graphics.newImage, var_66_338)

		if var_66_339 and var_66_340 then
			var_66_340:setFilter("nearest", "nearest")

			var_0_0._upgradeBtnImage = var_66_340
		end
	end

	if not var_0_0._confirmBtnImage then
		local var_66_341 = "src/sprites/background/button/imprintconfirm.png"
		local var_66_342, var_66_343 = pcall(love.graphics.newImage, var_66_341)

		if var_66_342 and var_66_343 then
			var_66_343:setFilter("nearest", "nearest")

			var_0_0._confirmBtnImage = var_66_343
		end
	end

	if not var_0_0._changeBtnImage then
		local var_66_344 = "src/sprites/background/button/imprintchange.png"
		local var_66_345, var_66_346 = pcall(love.graphics.newImage, var_66_344)

		if var_66_345 and var_66_346 then
			var_66_346:setFilter("nearest", "nearest")

			var_0_0._changeBtnImage = var_66_346
		end
	end

	if not var_0_0._lockedIconImage then
		local var_66_347 = "src/sprites/icons/imprinticons/00locked.png"
		local var_66_348, var_66_349 = pcall(love.graphics.newImage, var_66_347)

		if var_66_348 and var_66_349 then
			var_66_349:setFilter("nearest", "nearest")

			var_0_0._lockedIconImage = var_66_349
		end
	end

	local var_66_350 = var_0_0._slotBgImage
	local var_66_351 = var_0_0._slotTrimmedW or var_66_350 and var_66_350:getWidth() or var_66_307
	local var_66_352 = var_0_0._slotTrimmedOffsetX or 0
	local var_66_353 = 40

	if var_66_350 then
		var_66_353 = var_66_350:getHeight()
	end

	if not var_66_350 then
		var_66_353 = math.floor(var_66_353 * var_66_26 + 0.5)
	end

	local var_66_354 = 3

	if arg_66_0.imprintPanel and arg_66_0.imprintPanel.slotGap then
		var_66_354 = tonumber(arg_66_0.imprintPanel.slotGap) or 3
	end

	local var_66_355 = var_66_308

	var_0_0._hit = {
		active = false
	}

	local var_66_356 = var_66_7 and var_66_6 and var_66_6.preview or nil
	local var_66_357 = var_66_356 and var_66_356.action and var_66_356.action.kind or nil

	if not var_66_7 or var_66_357 ~= "upgradeLevel" then
		var_0_26.upgradeBtnScale = var_0_26.upgradeBtnScale + (0.8 - var_0_26.upgradeBtnScale) * math.min(1, var_66_4 * 15)
	end

	if var_66_7 then
		var_0_0._modalHit.active = true
		var_0_0._modalHit.buttons = var_0_0._modalHit.buttons or {}
		var_0_0._modalHit.arrows = var_0_0._modalHit.arrows or {}
	end

	local var_66_358 = 0
	local var_66_359 = 0

	if arg_66_0.imprintPanel and arg_66_0.imprintPanel.slotBg then
		var_66_358 = tonumber(arg_66_0.imprintPanel.slotBg.offsetX or 0)
		var_66_359 = tonumber(arg_66_0.imprintPanel.slotBg.offsetY or 0)
	end

	local var_66_360 = -9
	local var_66_361 = 14

	if arg_66_0.imprintPanel and arg_66_0.imprintPanel.upgradeBtn then
		var_66_360 = tonumber(arg_66_0.imprintPanel.upgradeBtn.offsetX or 0)
		var_66_361 = tonumber(arg_66_0.imprintPanel.upgradeBtn.offsetY or 0)
	end

	for iter_66_10 = 1, 5 do
		local var_66_362 = var_66_355

		var_66_355 = var_66_355 + var_66_353 + var_66_354

		local var_66_363 = iter_66_10 <= var_66_287 and var_66_289[iter_66_10] or nil
		local var_66_364 = var_66_287 < iter_66_10
		local var_66_365 = var_66_363 == nil
		local var_66_366 = false
		local var_66_367 = var_66_350 and var_66_350:getWidth() or var_66_307
		local var_66_368 = var_66_353

		if not var_66_364 and not var_66_365 then
			local var_66_369 = var_66_306 + var_66_358
			local var_66_370 = var_66_362 + var_66_359

			if var_66_369 <= var_66_0 and var_66_0 <= var_66_369 + var_66_367 and var_66_370 <= var_66_1 and var_66_1 <= var_66_370 + var_66_368 then
				var_66_366 = true
			end
		end

		var_0_26.slotScales[iter_66_10] = var_0_26.slotScales[iter_66_10] or 1

		local var_66_371 = var_66_366 and 1.15 or 1

		var_0_26.slotScales[iter_66_10] = var_0_26.slotScales[iter_66_10] + (var_66_371 - var_0_26.slotScales[iter_66_10]) * math.min(1, var_66_4 * 12)

		local var_66_372 = var_66_8 == var_0_26.blinkUnit and (var_0_26.impactScales[iter_66_10] or 0) or 0
		local var_66_373 = var_0_26.slotScales[iter_66_10] + var_66_372 * 0.1
		local var_66_374 = var_66_8 == var_0_26.blinkUnit and (var_0_26.floatOffsets[iter_66_10] or 0) or 0

		local function var_66_375(arg_68_0, arg_68_1, arg_68_2)
			local var_68_0 = 1.15
			local var_68_1 = var_66_350 and var_66_350:getWidth() or var_66_307
			local var_68_2 = var_66_353
			local var_68_3 = var_66_306 + var_66_358 + var_68_1 / 2
			local var_68_4 = var_66_362 + var_66_359 + var_68_2 / 2 + var_66_374
			local var_68_5 = var_66_306 + var_66_358 + var_66_352
			local var_68_6 = var_66_362 + var_66_359 + var_66_374
			local var_68_7 = var_68_3 + (var_68_5 - var_68_3) * var_68_0
			local var_68_8 = var_68_4 + (var_68_6 - var_68_4) * var_68_0
			local var_68_9 = arg_68_2 and var_68_5 or var_68_7
			local var_68_10 = arg_68_2 and var_66_351 or var_66_351 * var_68_0

			var_0_0._hoveredSlot = {
				index = arg_68_0,
				imprint = arg_68_1,
				x = var_68_9,
				y = var_68_8,
				w = var_68_10,
				h = var_68_2 * var_68_0,
				scale = var_66_373,
				tooltipScale = var_68_0,
				previewUpgrade = arg_68_2 or false
			}
		end

		if var_66_366 then
			var_66_375(iter_66_10, var_66_363, false)
		end

		love.graphics.push()
		love.graphics.translate(0, var_66_374)

		local var_66_376
		local var_66_377

		if var_66_7 and not var_66_364 then
			if var_66_357 == "upgradeLevel" then
				if iter_66_10 == (var_66_356.action and var_66_356.action.slot) then
					var_66_376 = var_0_0._upgradeBtnImage
					var_66_377 = "upgrade"
				end
			elseif var_66_357 == "insert" and var_66_363 == nil then
				var_66_376 = var_0_0._confirmBtnImage
				var_66_377 = "insert"
			elseif var_66_356 and var_66_356.needsChoice and var_66_363 then
				var_66_376 = var_0_0._changeBtnImage
				var_66_377 = "replace"
			end
		end

		if var_66_376 and var_66_377 then
			local var_66_378, var_66_379 = var_66_376:getDimensions()
			local var_66_380 = var_66_306 + var_66_358 + var_66_367 + math.floor(4 * var_66_26 + 0.5) + math.floor(var_66_360 * var_66_26 + 0.5)
			local var_66_381 = var_66_362 + math.floor((var_66_353 - var_66_379) / 2 + 0.5) + math.floor(var_66_361 * var_66_26 + 0.5)
			local var_66_382 = false

			if var_66_380 <= var_66_0 and var_66_0 <= var_66_380 + var_66_378 and var_66_381 <= var_66_1 and var_66_1 <= var_66_381 + var_66_379 then
				var_66_382 = true
			end

			local var_66_383 = 0.8
			local var_66_384 = false

			if var_66_377 == "upgrade" then
				var_66_384 = var_0_26.upgradeBtnPressed and var_0_0._upgradeSlot == iter_66_10
			elseif var_66_377 == "replace" then
				var_66_384 = var_0_26.changeBtnPressed and var_0_0._changeSlot == iter_66_10
			else
				var_66_384 = var_0_26.confirmBtnPressed and var_0_0._confirmSlot == iter_66_10
			end

			if var_66_384 then
				var_66_383 = 0.7
			elseif var_66_382 then
				var_66_383 = 0.95

				if var_66_377 == "upgrade" and var_66_363 then
					var_66_375(iter_66_10, var_66_363, true)
				elseif var_66_377 == "replace" and var_66_363 then
					var_0_26.replaceHoveringNext = true

					var_66_375(iter_66_10, var_66_363, false)
				end
			end

			var_0_26.actionBtnScales[iter_66_10] = var_0_26.actionBtnScales[iter_66_10] or 0.8
			var_0_26.actionBtnScales[iter_66_10] = var_0_26.actionBtnScales[iter_66_10] + (var_66_383 - var_0_26.actionBtnScales[iter_66_10]) * math.min(1, var_66_4 * 15)

			local var_66_385 = var_0_26.actionBtnScales[iter_66_10]

			love.graphics.push()
			love.graphics.translate(var_66_380 + var_66_378 / 2, var_66_381 + var_66_379 / 2)
			love.graphics.scale(var_66_385, var_66_385)
			love.graphics.translate(-(var_66_380 + var_66_378 / 2), -(var_66_381 + var_66_379 / 2))
			love.graphics.setColor(1, 1, 1, 1 * var_66_32)
			love.graphics.draw(var_66_376, var_66_380, var_66_381)
			love.graphics.pop()

			local var_66_386 = var_66_378 * var_66_385
			local var_66_387 = var_66_379 * var_66_385
			local var_66_388 = var_66_380 + (var_66_378 - var_66_386) / 2
			local var_66_389 = var_66_381 + (var_66_379 - var_66_387) / 2
			local var_66_390 = {
				x = var_66_388,
				y = var_66_389,
				w = var_66_386,
				h = var_66_387,
				kind = var_66_377,
				slot = iter_66_10
			}

			table.insert(var_0_0._modalHit.buttons, var_66_390)
		end

		love.graphics.push()

		local var_66_391 = var_66_306 + var_66_358 + var_66_367 / 2
		local var_66_392 = var_66_362 + var_66_359 + var_66_368 / 2

		love.graphics.translate(var_66_391, var_66_392)

		local var_66_393 = var_66_373

		love.graphics.scale(var_66_393, var_66_393)
		love.graphics.translate(-var_66_391, -var_66_392)

		if iter_66_10 <= var_66_287 then
			if var_66_363 and var_66_363.icon and not var_66_363._isPrediction then
				local var_66_394 = var_0_55(var_0_0, var_66_363.icon)

				if var_66_394 then
					local var_66_395, var_66_396 = var_66_394:getDimensions()
					local var_66_397 = 4
					local var_66_398 = 0

					if arg_66_0.imprintPanel and arg_66_0.imprintPanel.iconOffset then
						var_66_397 = tonumber(arg_66_0.imprintPanel.iconOffset.x) or 4
						var_66_398 = tonumber(arg_66_0.imprintPanel.iconOffset.y) or 0
					end

					local var_66_399 = var_66_306 + math.floor(var_66_397 * var_66_26 + 0.5)
					local var_66_400 = var_66_362 + math.floor((var_66_353 - var_66_396) / 2) + math.floor(var_66_398 * var_66_26 + 0.5)

					love.graphics.setColor(1, 1, 1, 1 * var_66_32)
					love.graphics.draw(var_66_394, var_66_399, var_66_400)
				end
			end
		else
			local var_66_401 = var_0_0._lockedIconImage

			if var_66_401 then
				local var_66_402, var_66_403 = var_66_401:getDimensions()
				local var_66_404 = 4
				local var_66_405 = 0

				if arg_66_0.imprintPanel and arg_66_0.imprintPanel.iconOffset then
					var_66_404 = tonumber(arg_66_0.imprintPanel.iconOffset.x) or 4
					var_66_405 = tonumber(arg_66_0.imprintPanel.iconOffset.y) or 0
				end

				local var_66_406 = var_66_306 + math.floor(var_66_404 * var_66_26 + 0.5)
				local var_66_407 = var_66_362 + math.floor((var_66_353 - var_66_403) / 2) + math.floor(var_66_405 * var_66_26 + 0.5)

				love.graphics.setColor(0.5, 0.5, 0.5, 1 * var_66_32)
				love.graphics.draw(var_66_401, var_66_406, var_66_407)
			end
		end

		if var_66_350 then
			local var_66_408 = var_66_363 and tostring(var_66_363.rarity or ""):lower()
			local var_66_409 = var_66_408 == "advanced"
			local var_66_410 = var_66_408 == "rare" or var_66_408 == "r"
			local var_66_411 = var_66_408 == "legendary" or var_66_408 == "legend" or var_66_408 == "l"
			local var_66_412 = var_66_408 == "prism" or var_66_408 == "p"
			local var_66_413 = var_66_409 and var_0_31()
			local var_66_414 = var_66_410 and var_0_33()
			local var_66_415 = var_66_411 and var_0_35()
			local var_66_416 = var_66_412 and var_0_37()
			local var_66_417 = var_66_413 or var_66_414 or var_66_415 or var_66_416

			if iter_66_10 <= var_66_287 then
				love.graphics.setColor(1, 1, 1, 1 * var_66_32)
			else
				love.graphics.setColor(0.5, 0.5, 0.5, 1 * var_66_32)
			end

			if var_66_417 then
				if var_66_412 and var_66_417:hasUniform("u_time") then
					local var_66_418 = var_66_417

					local function var_66_419(arg_69_0, arg_69_1)
						if var_66_418:hasUniform(arg_69_0) then
							var_66_418:send(arg_69_0, arg_69_1)
						end
					end

					var_66_419("u_time", love.timer.getTime() % 10000)
					var_66_419("u_uiBase", {
						0.24313725490196078,
						0.20784313725490197,
						0.27450980392156865
					})
					var_66_419("u_dir", {
						1,
						0.4
					})
					var_66_419("u_cycle", 4)
					var_66_419("u_scale", 2)
					var_66_419("u_grainScale", 3)
					var_66_419("u_grainAmp", 0.2)
					var_66_419("u_filmFreq", 2)
					var_66_419("u_filmAmp", 0.25)
					var_66_419("u_specular", 0.5)
					var_66_419("u_fresnelPow", 2.5)
					var_66_419("u_colorGain", 1.8)
					var_66_419("u_saturation", 1.5)
					var_66_419("u_mixBP", 0.32)
				end

				love.graphics.setShader(var_66_417)
			end

			love.graphics.draw(var_66_350, var_66_306 + var_66_358, var_66_362 + var_66_359, 0, 1, 1)

			if var_66_417 then
				love.graphics.setShader()
			end

			if var_0_0._hoveredSlot and var_0_0._hoveredSlot.index == iter_66_10 and var_0_0._hoveredSlot.previewUpgrade then
				love.graphics.setBlendMode("add")

				local var_66_420 = (0.5 + 0.5 * math.sin(love.timer.getTime() * 15)) * 0.4

				love.graphics.setColor(1, 1, 1, var_66_420 * var_66_32)

				if var_66_417 then
					love.graphics.setShader(var_66_417)
				end

				love.graphics.draw(var_66_350, var_66_306 + var_66_358, var_66_362 + var_66_359, 0, 1, 1)

				if var_66_417 then
					love.graphics.setShader()
				end

				love.graphics.setBlendMode("alpha")
			end

			if var_66_372 > 0 then
				love.graphics.setBlendMode("add")
				love.graphics.setColor(1, 0.9, 0.5, var_66_372 * 0.4 * var_66_32)

				for iter_66_11 = 1, 3 do
					local var_66_421 = 1 + iter_66_11 * 0.02 * var_66_372

					if var_66_417 then
						love.graphics.setShader(var_66_417)
					end

					love.graphics.draw(var_66_350, var_66_306 + var_66_358 + var_66_367 / 2, var_66_362 + var_66_359 + var_66_368 / 2, 0, var_66_421, var_66_421, var_66_367 / 2, var_66_368 / 2)

					if var_66_417 then
						love.graphics.setShader()
					end
				end

				love.graphics.setColor(1, 1, 1, var_66_372 * 0.8 * var_66_32)

				if var_66_417 then
					love.graphics.setShader(var_66_417)
				end

				love.graphics.draw(var_66_350, var_66_306 + var_66_358, var_66_362 + var_66_359, 0, 1, 1)

				if var_66_417 then
					love.graphics.setShader()
				end

				love.graphics.setBlendMode("alpha")
			end

			if var_0_26.blinkSlot == iter_66_10 and var_66_8 == var_0_26.blinkUnit and math.abs(var_0_26.x - var_66_16) > 2 then
				local var_66_422 = 8
				local var_66_423 = 0.3

				if var_0_26.blinkTimer > 0 then
					var_66_422 = 15
					var_66_423 = 0.5
				end

				love.graphics.setBlendMode("add")

				local var_66_424 = (0.5 + 0.5 * math.sin(var_66_3 * var_66_422)) * var_66_423

				love.graphics.setColor(1, 0.9, 0.6, var_66_424 * var_66_32)

				if var_66_417 then
					love.graphics.setShader(var_66_417)
				end

				love.graphics.draw(var_66_350, var_66_306 + var_66_358, var_66_362 + var_66_359, 0, 1, 1)

				if var_66_417 then
					love.graphics.setShader()
				end

				love.graphics.setBlendMode("alpha")
			end
		else
			local var_66_425 = var_66_363 and tostring(var_66_363.rarity or ""):lower()
			local var_66_426 = var_66_425 == "advanced"
			local var_66_427 = var_66_425 == "rare" or var_66_425 == "r"
			local var_66_428 = var_66_425 == "legendary" or var_66_425 == "legend" or var_66_425 == "l"
			local var_66_429 = var_66_425 == "prism" or var_66_425 == "p"

			if iter_66_10 <= var_66_287 then
				if var_66_429 then
					love.graphics.setColor(0.35294117647058826, 0.1568627450980392, 0.47058823529411764, 1 * var_66_32)
				elseif var_66_428 then
					love.graphics.setColor(0.43137254901960786, 0.3333333333333333, 0.19607843137254902, 1 * var_66_32)
				elseif var_66_427 then
					love.graphics.setColor(0.20784313725490197, 0.29411764705882354, 0.4196078431372549, 1 * var_66_32)
				elseif var_66_426 then
					love.graphics.setColor(0.1568627450980392, 0.30196078431372547, 0.18823529411764706, 1 * var_66_32)
				else
					love.graphics.setColor(0.2, 0.2, 0.2, 1 * var_66_32)
				end
			else
				love.graphics.setColor(0.1, 0.1, 0.1, 0.5 * var_66_32)
			end

			love.graphics.rectangle("fill", var_66_306, var_66_362, var_66_307, var_66_353)

			if var_66_372 > 0 then
				love.graphics.setBlendMode("add")
				love.graphics.setColor(1, 0.9, 0.5, var_66_372 * 0.6 * var_66_32)
				love.graphics.rectangle("fill", var_66_306 - 2, var_66_362 - 2, var_66_307 + 4, var_66_353 + 4)
				love.graphics.setBlendMode("alpha")
			end

			if var_0_26.blinkSlot == iter_66_10 and var_66_8 == var_0_26.blinkUnit and math.abs(var_0_26.x - var_66_16) > 2 then
				local var_66_430 = 8
				local var_66_431 = 0.3

				if var_0_26.blinkTimer > 0 then
					var_66_430 = 15
					var_66_431 = 0.5
				end

				love.graphics.setBlendMode("add")

				local var_66_432 = (0.5 + 0.5 * math.sin(var_66_3 * var_66_430)) * var_66_431

				love.graphics.setColor(1, 0.9, 0.6, var_66_432 * var_66_32)
				love.graphics.rectangle("fill", var_66_306, var_66_362, var_66_307, var_66_353)
				love.graphics.setBlendMode("alpha")
			end

			if var_66_426 then
				love.graphics.setColor(0.2901960784313726, 0.5568627450980392, 0.34901960784313724, 1 * var_66_32)
			else
				love.graphics.setColor(0.3, 0.3, 0.3, 1 * var_66_32)
			end

			local var_66_433 = love.graphics.getLineWidth()

			love.graphics.setLineWidth(1)
			love.graphics.rectangle("line", var_66_306 + 0.5, var_66_362 + 0.5, var_66_307 - 1, var_66_353 - 1)
			love.graphics.setLineWidth(var_66_433)
		end

		if iter_66_10 <= var_66_287 then
			if var_66_363 and var_66_363._isPrediction then
				local var_66_434 = var_66_288[iter_66_10]
				local var_66_435 = var_66_363
				local var_66_436 = love.timer.getTime()
				local var_66_437 = 0.6 + 0.4 * math.abs(math.sin(var_66_436 * 6))
				local var_66_438 = math.floor(4 * var_66_26 + 0.5)
				local var_66_439 = math.floor(4 * var_66_26 + 0.5)
				local var_66_440 = var_0_15(font, math.floor(12 * var_66_26 + 0.5))
				local var_66_441 = math.max(1, math.floor(var_66_440 + 2 * var_66_26 + 0.5))
				local var_66_442 = math.max(1, var_66_440 + math.max(1, math.floor(5 * var_66_26 + 0.5)))
				local var_66_443 = math.floor((var_66_307 - var_66_438 * 2 - var_66_439) / 2)

				if var_66_443 < 10 then
					var_66_443 = 10
				end

				local var_66_444 = var_66_306 + var_66_438
				local var_66_445 = var_66_444 + var_66_443 + var_66_439
				local var_66_446 = math.floor(18 * var_66_26 + 0.5)
				local var_66_447 = math.floor(var_66_353 - math.floor(8 * var_66_26 + 0.5))

				if var_66_447 < var_66_446 then
					var_66_446 = var_66_447
				end

				if var_66_446 < 10 then
					var_66_446 = 10
				end

				local var_66_448 = var_66_362 + math.floor(4 * var_66_26 + 0.5)
				local var_66_449 = var_66_448
				local var_66_450 = var_66_449 + var_66_441
				local var_66_451 = var_66_443 - (var_66_446 + math.floor(4 * var_66_26 + 0.5))

				if var_66_451 < 10 then
					var_66_451 = 10
				end

				if var_66_451 < math.floor(90 * var_66_26 + 0.5) then
					local var_66_452 = math.floor(6 * var_66_26 + 0.5)
					local var_66_453 = math.floor(6 * var_66_26 + 0.5)
					local var_66_454 = math.floor((var_66_353 - var_66_453 * 2 - var_66_452) / 2)

					if var_66_454 < math.floor(14 * var_66_26 + 0.5) then
						var_66_454 = math.floor(14 * var_66_26 + 0.5)
					end

					local var_66_455 = var_66_362 + var_66_453
					local var_66_456 = var_66_455 + var_66_454 + var_66_452
					local var_66_457 = math.min(var_66_446, var_66_454)
					local var_66_458 = var_66_455
					local var_66_459 = var_66_456
					local var_66_460 = love.graphics.getLineWidth()

					love.graphics.setLineWidth(1)
					love.graphics.setColor(0.25, 0.25, 0.25, 1 * var_66_32)

					local var_66_461 = var_66_455 + var_66_454 + math.floor(var_66_452 / 2)

					love.graphics.line(var_66_306 + 2, var_66_461 + 0.5, var_66_306 + var_66_307 - 2, var_66_461 + 0.5)
					love.graphics.setLineWidth(var_66_460)

					local var_66_462 = var_66_306 + var_66_438 + var_66_457 + math.floor(4 * var_66_26 + 0.5)
					local var_66_463 = var_66_306 + var_66_307 - var_66_438 - var_66_462

					if var_66_463 < 10 then
						var_66_463 = 10
					end

					local var_66_464 = var_0_45(var_66_454 - var_66_441, var_66_442)

					var_0_58(var_0_0, var_66_434 and var_66_434.icon, var_66_306 + var_66_438, var_66_458, var_66_457, 1 * var_66_32)

					local var_66_465 = _G.currentGameLang or "ko"

					love.graphics.setColor(0.6, 0.6, 0.6, 1 * var_66_32)
					love.graphics.print(var_66_434 and var_0_5.getImprintName(var_66_434.id, var_66_434.name, var_66_465) or "Empty", var_66_462, var_66_455)
					love.graphics.setColor(0.85, 0.85, 0.85, 1 * var_66_32)

					local var_66_466 = var_66_434 and var_0_0.getShortIconImage(var_0_0, var_66_434.id)
					local var_66_467 = var_66_462

					if var_66_466 then
						local var_66_468, var_66_469 = var_66_466:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * var_66_32)
						love.graphics.draw(var_66_466, var_66_467, var_66_455 + var_66_441 + math.floor((var_66_442 - var_66_469) / 2))

						var_66_467 = var_66_467 + var_66_468 + math.floor(2 * var_66_26 + 0.5)
					end

					love.graphics.setColor(0.85, 0.85, 0.85, 1 * var_66_32)
					var_0_44(font, var_66_434 and var_0_5.getImprintShortDesc(var_66_434.id, var_66_434.shortDesc, var_66_465) or "", var_66_467, var_66_455 + var_66_441, var_66_463 - (var_66_467 - var_66_462), var_66_442, var_66_464)
					var_0_58(var_0_0, var_66_435 and var_66_435.icon, var_66_306 + var_66_438, var_66_459, var_66_457, 1 * var_66_32)
					love.graphics.setColor(0.4, 1, 0.4, var_66_437 * var_66_32)
					love.graphics.print(var_66_435 and var_0_5.getImprintName(var_66_435.id, var_66_435.name, var_66_465) or "Empty", var_66_462, var_66_456)
					love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)

					local var_66_470 = var_66_435 and var_0_0.getShortIconImage(var_0_0, var_66_435.id)
					local var_66_471 = var_66_462

					if var_66_470 then
						local var_66_472, var_66_473 = var_66_470:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * var_66_32)
						love.graphics.draw(var_66_470, var_66_471, var_66_456 + var_66_441 + math.floor((var_66_442 - var_66_473) / 2))

						var_66_471 = var_66_471 + var_66_472 + math.floor(2 * var_66_26 + 0.5)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)
					var_0_44(font, var_66_435 and var_0_5.getImprintShortDesc(var_66_435.id, var_66_435.shortDesc, var_66_465) or "", var_66_471, var_66_456 + var_66_441, var_66_463 - (var_66_471 - var_66_462), var_66_442, var_66_464)
				else
					local var_66_474 = love.graphics.getLineWidth()

					love.graphics.setLineWidth(1)
					love.graphics.setColor(0.25, 0.25, 0.25, 1 * var_66_32)

					local var_66_475 = var_66_306 + math.floor(var_66_307 / 2)

					love.graphics.line(var_66_475 + 0.5, var_66_362 + 2, var_66_475 + 0.5, var_66_362 + var_66_353 - 2)
					love.graphics.setLineWidth(var_66_474)
					var_0_58(var_0_0, var_66_434 and var_66_434.icon, var_66_444, var_66_448, var_66_446, 1 * var_66_32)

					local var_66_476 = var_66_444 + var_66_446 + math.floor(6 * var_66_26 + 0.5)
					local var_66_477 = _G.currentGameLang or "ko"
					local var_66_478 = var_66_434 and var_0_5.getImprintName(var_66_434.id, var_66_434.name, var_66_477) or "Empty"
					local var_66_479 = var_66_434 and var_0_5.getImprintShortDesc(var_66_434.id, var_66_434.shortDesc, var_66_477) or ""

					love.graphics.setColor(0.6, 0.6, 0.6, 1 * var_66_32)
					love.graphics.print(var_66_478, var_66_476, var_66_449)
					love.graphics.setColor(0.85, 0.85, 0.85, 1 * var_66_32)

					local var_66_480 = var_66_362 + var_66_353 - var_66_450 - math.floor(4 * var_66_26 + 0.5)
					local var_66_481 = var_0_45(var_66_480, var_66_442)
					local var_66_482 = var_66_434 and var_0_0.getShortIconImage(var_0_0, var_66_434.id)
					local var_66_483 = var_66_476

					if var_66_482 then
						local var_66_484, var_66_485 = var_66_482:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * var_66_32)
						love.graphics.draw(var_66_482, var_66_483, var_66_450 + math.floor((var_66_442 - var_66_485) / 2))

						var_66_483 = var_66_483 + var_66_484 + math.floor(2 * var_66_26 + 0.5)
					end

					love.graphics.setColor(0.85, 0.85, 0.85, 1 * var_66_32)
					var_0_44(font, var_66_479, var_66_483, var_66_450, var_66_451 - (var_66_483 - var_66_476), var_66_442, var_66_481)
					var_0_58(var_0_0, var_66_435 and var_66_435.icon, var_66_445, var_66_448, var_66_446, 1 * var_66_32)

					local var_66_486 = var_66_445 + var_66_446 + math.floor(6 * var_66_26 + 0.5)
					local var_66_487 = var_66_435 and var_0_5.getImprintName(var_66_435.id, var_66_435.name, var_66_477) or "Empty"
					local var_66_488 = var_66_435 and var_0_5.getImprintShortDesc(var_66_435.id, var_66_435.shortDesc, var_66_477) or ""

					love.graphics.setColor(0.4, 1, 0.4, var_66_437 * var_66_32)
					love.graphics.print(var_66_487, var_66_486, var_66_449)
					love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)

					local var_66_489 = var_66_435 and var_0_0.getShortIconImage(var_0_0, var_66_435.id)
					local var_66_490 = var_66_486

					if var_66_489 then
						local var_66_491, var_66_492 = var_66_489:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * var_66_32)
						love.graphics.draw(var_66_489, var_66_490, var_66_450 + math.floor((var_66_442 - var_66_492) / 2))

						var_66_490 = var_66_490 + var_66_491 + math.floor(2 * var_66_26 + 0.5)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)
					var_0_44(font, var_66_488, var_66_490, var_66_450, var_66_451 - (var_66_490 - var_66_486), var_66_442, var_66_481)
				end

				if arg_66_2 and arg_66_2.replaceUI then
					local var_66_493 = tonumber(arg_66_2.replaceSlot) or tonumber(arg_66_2.predictionSlot) or iter_66_10
					local var_66_494 = arg_66_2.replaceMode == "keep" and "keep" or "replace"
					local var_66_495 = math.floor(14 * var_66_26 + 0.5)
					local var_66_496 = math.floor(4 * var_66_26 + 0.5)
					local var_66_497 = var_66_362 + var_66_353 - var_66_495 - var_66_496
					local var_66_498 = var_66_306 + var_66_496
					local var_66_499 = var_66_307 - var_66_496 * 2

					if var_66_499 > 20 and var_66_497 >= var_66_362 + var_66_496 then
						local var_66_500 = math.floor(16 * var_66_26 + 0.5)

						if var_66_500 < 12 then
							var_66_500 = 12
						end

						local var_66_501 = math.floor(3 * var_66_26 + 0.5)
						local var_66_502 = math.floor(6 * var_66_26 + 0.5)
						local var_66_503 = math.floor(50 * var_66_26 + 0.5)

						if var_66_503 < 38 then
							var_66_503 = 38
						end

						if var_66_499 < var_66_500 * var_66_287 + var_66_501 * (var_66_287 - 1) + var_66_502 + var_66_503 * 2 + var_66_501 then
							var_66_503 = math.max(34, math.floor((var_66_499 - var_66_500 * var_66_287 - var_66_501 * (var_66_287 - 1) - var_66_502 - var_66_501) / 2))
						end

						var_0_0._hit = {
							active = true,
							slots = {}
						}

						local var_66_504 = var_66_498

						for iter_66_12 = 1, var_66_287 do
							local var_66_505 = {
								x = var_66_504,
								y = var_66_497,
								w = var_66_500,
								h = var_66_495,
								slot = iter_66_12
							}

							table.insert(var_0_0._hit.slots, var_66_505)

							local var_66_506 = iter_66_12 == var_66_493

							love.graphics.setColor(0.15, 0.15, 0.15, 0.85 * var_66_32)
							love.graphics.rectangle("fill", var_66_505.x, var_66_505.y, var_66_505.w, var_66_505.h)
							love.graphics.setColor(var_66_506 and 0.9 or 0.4, var_66_506 and 0.9 or 0.4, var_66_506 and 0.9 or 0.4, 1 * var_66_32)
							love.graphics.rectangle("line", var_66_505.x + 0.5, var_66_505.y + 0.5, var_66_505.w - 1, var_66_505.h - 1)
							love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)
							love.graphics.printf(tostring(iter_66_12), var_66_505.x, var_66_505.y + math.floor((var_66_495 - var_66_440) / 2 + 0.5), var_66_505.w, "center")

							var_66_504 = var_66_504 + var_66_500 + var_66_501
						end

						local var_66_507 = var_66_504 + var_66_502
						local var_66_508 = {
							x = var_66_507,
							y = var_66_497,
							w = var_66_503,
							h = var_66_495
						}
						local var_66_509 = var_66_507 + var_66_503 + var_66_501
						local var_66_510 = {
							x = var_66_509,
							y = var_66_497,
							w = var_66_503,
							h = var_66_495
						}

						var_0_0._hit.replaceBtn = var_66_508
						var_0_0._hit.keepBtn = var_66_510

						local function var_66_511(arg_70_0, arg_70_1, arg_70_2)
							love.graphics.setColor(0.15, 0.15, 0.15, 0.85 * var_66_32)
							love.graphics.rectangle("fill", arg_70_0.x, arg_70_0.y, arg_70_0.w, arg_70_0.h)
							love.graphics.setColor(arg_70_2 and 0.9 or 0.4, arg_70_2 and 0.9 or 0.4, arg_70_2 and 0.9 or 0.4, 1 * var_66_32)
							love.graphics.rectangle("line", arg_70_0.x + 0.5, arg_70_0.y + 0.5, arg_70_0.w - 1, arg_70_0.h - 1)
							love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)
							love.graphics.printf(arg_70_1, arg_70_0.x + 2, arg_70_0.y + math.floor((var_66_495 - var_66_440) / 2 + 0.5), arg_70_0.w - 4, "center")
						end

						var_66_511(var_66_508, var_0_5.getText("imprint_mode_replace", _G.currentGameLang or "ko"), var_66_494 == "replace")
						var_66_511(var_66_510, var_0_5.getText("imprint_mode_keep", _G.currentGameLang or "ko"), var_66_494 == "keep")
					end
				end
			else
				if math.floor(18 * var_66_26 + 0.5) > math.floor(var_66_353 - 6 * var_66_26) then
					local var_66_512 = math.max(10, math.floor(var_66_353 - 6 * var_66_26))
				end

				if var_66_363 then
					local var_66_513 = var_0_29()
					local var_66_514 = love.graphics.getFont()
					local var_66_515 = var_66_513 or arg_66_0 and arg_66_0.font or var_66_514

					if var_66_513 then
						love.graphics.setFont(var_66_513)
					end

					local var_66_516 = var_0_15(var_66_515, 12)
					local var_66_517 = 32

					if var_66_363.icon then
						local var_66_518 = var_0_55(var_0_0, var_66_363.icon)

						if var_66_518 then
							var_66_517 = var_66_518:getWidth()
						end
					end

					local var_66_519 = 8
					local var_66_520 = 3
					local var_66_521 = 8
					local var_66_522 = 4

					if arg_66_0.imprintPanel then
						if arg_66_0.imprintPanel.imprintName then
							var_66_519 = tonumber(arg_66_0.imprintPanel.imprintName.offsetX) or 8
							var_66_520 = tonumber(arg_66_0.imprintPanel.imprintName.offsetY) or 3
						end

						if arg_66_0.imprintPanel.imprintDesc then
							var_66_521 = tonumber(arg_66_0.imprintPanel.imprintDesc.offsetX) or 8
							var_66_522 = tonumber(arg_66_0.imprintPanel.imprintDesc.gapY) or 4
						end
					end

					local var_66_523 = var_66_306 + var_66_517 + math.floor(var_66_519 * var_66_26 + 0.5)
					local var_66_524 = var_66_362 + math.floor(var_66_520 * var_66_26 + 0.5)
					local var_66_525 = 1
					local var_66_526 = var_66_363.level or 1

					if var_0_0._hoveredSlot and var_0_0._hoveredSlot.index == iter_66_10 and var_0_0._hoveredSlot.previewUpgrade then
						var_66_525 = 0.4 + 0.6 * (0.5 + 0.5 * math.sin(love.timer.getTime() * 15))
						var_66_526 = var_66_526 + 1
					end

					local var_66_527 = var_0_5.getImprintName(var_66_363.id, var_66_363.name or "Unknown Imprint", _G.currentGameLang or "ko")
					local var_66_528 = " " .. var_0_41(var_66_526)

					love.graphics.setColor(1, 0.9, 0.5, 1 * var_66_32)
					love.graphics.print(var_66_527, var_66_523, var_66_524)
					love.graphics.setColor(1, 0.9, 0.5, var_66_525 * var_66_32)
					love.graphics.print(var_66_528, var_66_523 + var_0_14(var_66_515, var_66_527), var_66_524)

					local var_66_529 = var_66_306 + var_66_517 + math.floor(var_66_521 * var_66_26 + 0.5)
					local var_66_530 = var_66_524 + var_66_516 + math.floor(var_66_522 * var_66_26 + 0.5)
					local var_66_531 = var_66_306 + var_66_307 - var_66_529 - math.floor(4 * var_66_26 + 0.5)

					if var_66_531 < 10 then
						var_66_531 = 10
					end

					local var_66_532 = math.max(1, var_66_516 + math.max(1, math.floor(5 * var_66_26 + 0.5)))
					local var_66_533 = var_66_362 + var_66_353 - var_66_530 - math.floor(3 * var_66_26 + 0.5)
					local var_66_534 = math.max(2, var_0_45(var_66_533, var_66_532))

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)

					local var_66_535 = var_0_0.getShortIconImage(var_0_0, var_66_363.id)
					local var_66_536 = var_66_529

					if var_66_535 then
						local var_66_537, var_66_538 = var_66_535:getDimensions()
						local var_66_539 = var_66_529
						local var_66_540 = var_66_530 + math.floor((var_66_532 - var_66_538) / 2)

						love.graphics.setColor(1, 1, 1, 1 * var_66_32)
						love.graphics.draw(var_66_535, var_66_539, var_66_540)

						var_66_536 = var_66_536 + var_66_537 + math.floor(2 * var_66_26 + 0.5)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)
					var_0_44(var_66_515, var_0_5.getImprintShortDesc(var_66_363.id, var_66_363.shortDesc or "", _G.currentGameLang or "ko"), var_66_536, var_66_530, var_66_531 - (var_66_536 - var_66_529), var_66_532, var_66_534)

					if var_66_513 then
						love.graphics.setFont(var_66_514)
					end
				else
					local var_66_541 = var_0_29()
					local var_66_542 = love.graphics.getFont()

					if var_66_541 then
						love.graphics.setFont(var_66_541)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)

					local var_66_543 = var_0_5.getText("imprint_empty_slot", _G.currentGameLang or "ko")
					local var_66_544 = 40
					local var_66_545 = -7

					if arg_66_0.imprintPanel and arg_66_0.imprintPanel.emptyText then
						var_66_544 = tonumber(arg_66_0.imprintPanel.emptyText.offsetX) or 40
						var_66_545 = tonumber(arg_66_0.imprintPanel.emptyText.offsetY) or -7
					end

					love.graphics.print(var_66_543, var_66_306 + math.floor(var_66_544 * var_66_26 + 0.5), var_66_362 + math.floor(var_66_353 / 2 + var_66_545 * var_66_26))

					if var_66_541 then
						love.graphics.setFont(var_66_542)
					end
				end
			end
		else
			local var_66_546 = var_0_29()
			local var_66_547 = love.graphics.getFont()

			if var_66_546 then
				love.graphics.setFont(var_66_546)
			end

			love.graphics.setColor(0.7, 0.7, 0.7, 1 * var_66_32)

			local var_66_548 = var_0_5.getText("imprint_locked", _G.currentGameLang or "ko")
			local var_66_549 = 42
			local var_66_550 = -7

			if arg_66_0.imprintPanel and arg_66_0.imprintPanel.lockedText then
				var_66_549 = tonumber(arg_66_0.imprintPanel.lockedText.offsetX) or 42
				var_66_550 = tonumber(arg_66_0.imprintPanel.lockedText.offsetY) or -7
			end

			love.graphics.print(var_66_548, var_66_306 + math.floor(var_66_549 * var_66_26 + 0.5), var_66_362 + math.floor(var_66_353 / 2 + var_66_550 * var_66_26))

			if var_66_546 then
				love.graphics.setFont(var_66_547)
			end
		end

		love.graphics.pop()
		love.graphics.pop()
	end

	local var_66_551 = var_66_8.randomOptions or var_66_8.meta and var_66_8.meta.randomOptions or var_66_8.rosterSpawnMeta and var_66_8.rosterSpawnMeta.randomOptions

	if not var_66_551 then
		local var_66_552 = var_66_8.randomOption or var_66_8.meta and var_66_8.meta.randomOption or var_66_8.rosterSpawnMeta and var_66_8.rosterSpawnMeta.randomOption

		if var_66_552 then
			var_66_551 = {
				var_66_552
			}
		end
	end

	local var_66_553 = arg_66_0.imprintPanel and arg_66_0.imprintPanel.randomOption or nil
	local var_66_554 = var_66_29 + var_0_42((var_66_553 and var_66_553.x or 168) * var_66_26)
	local var_66_555 = var_66_30 + var_0_42((var_66_553 and var_66_553.y or 24) * var_66_26)
	local var_66_556 = var_0_42((var_66_553 and var_66_553.size or 22) * var_66_26)
	local var_66_557 = var_0_42((var_66_553 and var_66_553.gap or 4) * var_66_26)
	local var_66_558 = math.max(1, math.floor(tonumber(var_66_553 and var_66_553.maxSlots or 5) or 5))

	for iter_66_13 = 1, var_66_558 do
		local var_66_559 = var_66_551 and var_66_551[iter_66_13]

		if var_66_559 then
			local var_66_560 = var_0_4 and var_0_4.getIconPath and var_0_4.getIconPath(var_66_559)

			if var_66_560 then
				local var_66_561 = var_0_55(var_0_0, var_66_560)

				if var_66_561 then
					var_0_0._roHoverProgs = var_0_0._roHoverProgs or {}
					var_0_0._roHoverProgs[iter_66_13] = var_0_0._roHoverProgs[iter_66_13] or 0

					local var_66_562 = tonumber(var_66_2 or 0) == iter_66_13 and 1 or 0
					local var_66_563 = var_0_0._roHoverProgs[iter_66_13]
					local var_66_564 = 12

					var_0_0._roHoverProgs[iter_66_13] = var_66_563 + (var_66_562 - var_66_563) * math.min((var_66_4 or 0.016) * var_66_564, 1)

					local var_66_565 = 1 + 0.15 * var_0_0._roHoverProgs[iter_66_13]
					local var_66_566, var_66_567 = var_66_561:getDimensions()
					local var_66_568 = var_66_556 / math.max(1, math.max(var_66_566, var_66_567)) * var_66_565
					local var_66_569 = var_66_554 + (iter_66_13 - 1) * (var_66_556 + var_66_557)
					local var_66_570 = math.floor(var_66_569 + var_66_556 * 0.5)
					local var_66_571 = math.floor(var_66_555 + var_66_556 * 0.5)
					local var_66_572 = var_66_566 * 0.5
					local var_66_573 = var_66_567 * 0.5
					local var_66_574 = var_0_50(var_66_559.rarity)

					if var_66_574 == "legendary" then
						local var_66_575 = var_0_23()
						local var_66_576 = var_0_25()

						if var_66_575 and var_66_576 then
							local var_66_577 = love.graphics.getShader()
							local var_66_578, var_66_579 = love.graphics.getBlendMode()

							love.graphics.setShader(var_66_575)
							love.graphics.setBlendMode("add", "alphamultiply")

							local var_66_580 = {
								0.99,
								0.82,
								0.18
							}

							var_66_575:send("glowColor", {
								var_66_580[1],
								var_66_580[2],
								var_66_580[3],
								0.55 * var_66_32
							})

							local var_66_581 = var_66_556 * 1.7 * var_66_565

							love.graphics.draw(var_66_576, var_66_570, var_66_571, 0, var_66_581, var_66_581, 0.5, 0.5)
							love.graphics.setShader(var_66_577)
							love.graphics.setBlendMode(var_66_578, var_66_579)
						end
					end

					local var_66_582 = var_0_21()

					if var_66_582 then
						var_66_582:send("texelStep", {
							1 / var_66_566,
							1 / var_66_567
						})

						local var_66_583 = arg_66_0 and arg_66_0.imprintPanel and arg_66_0.imprintPanel.randomOption
						local var_66_584 = var_66_583 and var_66_583.outlineColor or {
							0.55,
							0.48,
							0.43,
							1
						}

						var_66_582:send("outlineColor", {
							var_66_584[1],
							var_66_584[2],
							var_66_584[3],
							(var_66_584[4] or 1) * var_66_32
						})
						var_66_582:send("threshold", 0.05)
						var_66_582:send("radiusPx", 1.15)
						love.graphics.setShader(var_66_582)
						love.graphics.draw(var_66_561, var_66_570, var_66_571, 0, var_66_568, var_66_568, var_66_572, var_66_573)
						love.graphics.setShader()
					end

					love.graphics.setColor(1, 1, 1, 1 * var_66_32)
					love.graphics.draw(var_66_561, var_66_570, var_66_571, 0, var_66_568, var_66_568, var_66_572, var_66_573)

					if var_66_559 and var_66_559.rarity and _G.Render and _G.Render.drawLegendarySpriteEffects then
						local var_66_585 = var_66_574

						if var_66_585 == "rare" or var_66_585 == "legendary" or var_66_585 == "advanced" then
							_G.Render.drawLegendarySpriteEffects(arg_66_0, var_66_559, var_66_561, nil, var_66_570, var_66_571, var_66_568, var_66_568, 0, var_66_572, var_66_573)
						elseif var_66_585 == "prism" and _G.Render.getPrismFoilShader then
							local var_66_586 = _G.Render.getPrismFoilShader()

							if var_66_586 then
								local var_66_587 = arg_66_0 and arg_66_0.battle and (arg_66_0.battle.jackpotFoil or arg_66_0.battle.jackpotRainbow) or {}
								local var_66_588 = var_66_587.alpha ~= nil and var_66_587.alpha or 0.32
								local var_66_589 = love.graphics.getShader()
								local var_66_590, var_66_591 = love.graphics.getBlendMode()

								love.graphics.setShader(var_66_586)

								local var_66_592 = (var_66_587.angleDeg or 20) * math.pi / 180
								local var_66_593 = math.cos(var_66_592)
								local var_66_594 = math.sin(var_66_592)
								local var_66_595 = var_66_587.cycleSec or 4

								var_66_586:send("u_time", _G.Render.getPhasedSweepTime(love.timer.getTime(), var_66_559, var_66_595))
								var_66_586:send("u_alpha", var_66_588 * (var_66_32 or 1))
								var_66_586:send("u_dir", {
									var_66_593,
									var_66_594
								})
								var_66_586:send("u_cycle", var_66_595)
								var_66_586:send("u_scale", var_66_587.scale or 2.5)

								local var_66_596 = var_66_587.grain or {}
								local var_66_597 = var_66_587.film or {}

								var_66_586:send("u_grainScale", var_66_596.scale or 3)
								var_66_586:send("u_grainAmp", var_66_596.amp or 0.2)
								var_66_586:send("u_filmFreq", var_66_597.freq or 2)
								var_66_586:send("u_filmAmp", var_66_597.amp or 0.25)
								var_66_586:send("u_specular", var_66_587.specular or 0.35)
								var_66_586:send("u_fresnelPow", var_66_587.fresnelPow or 2.5)
								var_66_586:send("u_colorGain", var_66_587.colorGain or 1)
								var_66_586:send("u_saturation", var_66_587.saturation or 1)
								var_66_586:send("u_mixBP", var_66_587.mixBP or 0.55)
								var_66_586:send("u_frameUV", {
									0,
									0,
									1,
									1
								})
								love.graphics.setColor(1, 1, 1, var_66_32 or 1)

								if var_66_591 ~= nil then
									love.graphics.setBlendMode("add", "alphamultiply")
								else
									love.graphics.setBlendMode("add")
								end

								love.graphics.draw(var_66_561, var_66_570, var_66_571, 0, var_66_568, var_66_568, var_66_572, var_66_573)
								love.graphics.setColor(1, 1, 1, 1)
								love.graphics.setShader(var_66_589)

								if var_66_591 ~= nil then
									love.graphics.setBlendMode(var_66_590, var_66_591)
								else
									love.graphics.setBlendMode(var_66_590)
								end
							end
						end
					end

					love.graphics.setColor(1, 1, 1, 1)

					if not var_0_0._hoveredRandomOption and var_66_569 <= var_66_0 and var_66_0 <= var_66_569 + var_66_556 and var_66_555 <= var_66_1 and var_66_1 <= var_66_555 + var_66_556 then
						var_0_0._hoveredRandomOption = {
							option = var_66_559,
							anchor = {
								source = "imprint",
								x = var_66_569,
								y = var_66_555,
								w = var_66_556,
								h = var_66_556,
								index = iter_66_13
							},
							sym = var_66_8 and var_66_8.sym or "W"
						}
					end
				end
			end
		end
	end

	local var_66_598 = var_66_8.rank or 1
	local var_66_599 = var_66_8.jackpot5th == true and "prism" or var_66_8.grade or "normal"
	local var_66_600 = var_0_1.evolution.rankThresholds[var_66_599]
	local var_66_601 = var_66_598 + 1
	local var_66_602

	var_66_602 = var_66_600 and var_66_600[var_66_601]

	if false then
		local var_66_603 = var_0_67()
		local var_66_604 = 1.5

		if var_66_603 then
			var_66_603:setFilter("nearest", "nearest")
			love.graphics.setFont(var_66_603)
		end

		love.graphics.setColor(0.9, 0.9, 0.9, 1 * var_66_32)

		local var_66_605 = var_66_306 + 8
		local var_66_606 = var_66_355 + var_0_42(4 * var_66_26) + 16

		love.graphics.print(label, math.floor(var_66_605), math.floor(var_66_606), 0, var_66_604, var_66_604)
	end

	if not var_66_5 and math.abs(var_0_26.x - var_66_16) < 1 and math.abs(var_0_26.v) < 1 then
		var_0_26.lastUnit = nil
		var_0_26.holdTimer = 0
		var_0_26.blinkTimer = 0
		var_0_26.blinkSlot = nil

		for iter_66_14 = 1, 5 do
			var_0_26.impactScales[iter_66_14] = 0
			var_0_26.floatOffsets[iter_66_14] = 0
		end
	end
end

function var_0_0.isSkillFrameHovered(arg_71_0, arg_71_1)
	local var_71_0 = var_0_0._skillFrameRect

	if not var_71_0 or not arg_71_0 or not arg_71_1 then
		return false
	end

	local var_71_1 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	if var_71_0.drawnAt and var_71_1 - var_71_0.drawnAt > 0.25 then
		return false
	end

	return arg_71_0 >= var_71_0.x and arg_71_0 <= var_71_0.x + var_71_0.w and arg_71_1 >= var_71_0.y and arg_71_1 <= var_71_0.y + var_71_0.h
end

function var_0_0.getHoveredSlot()
	return var_0_0._hoveredSlot
end

return var_0_0
