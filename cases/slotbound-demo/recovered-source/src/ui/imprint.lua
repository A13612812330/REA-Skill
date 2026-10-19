-- Recovered source: generated locals lifted into per-invocation tables.
local __recovered_scope_0 = {}
 __recovered_scope_0.var_0_0 = {}

__recovered_scope_0.var_0_0._cancelTriggered = false
__recovered_scope_0.var_0_0._convertTriggered = false
__recovered_scope_0.var_0_0._upgradeTriggered = false
__recovered_scope_0.var_0_0._upgradeSlot = nil
__recovered_scope_0.var_0_0._confirmTriggered = false
__recovered_scope_0.var_0_0._confirmSlot = nil
__recovered_scope_0.var_0_0._confirmAction = nil
__recovered_scope_0.var_0_0._changeTriggered = false
__recovered_scope_0.var_0_0._changeSlot = nil

 __recovered_scope_0.var_0_1 = require("src.data.constants")
 __recovered_scope_0.var_0_2 = require("src.ui.screen").layout
 __recovered_scope_0.var_0_3 = require("src.data.assets")
 __recovered_scope_0.var_0_4 = require("src.data.randomoption")
 __recovered_scope_0.var_0_5 = require("src.data.language")
 __recovered_scope_0.var_0_6 = require("src.data.font_resolver")
 __recovered_scope_0.var_0_7 = require("src.data.skill")
 __recovered_scope_0.var_0_8 = require("src.data.faction")
 __recovered_scope_0.var_0_9 = require("src.ui.widgets").progress_bar
 __recovered_scope_0.var_0_10 = "src/data/font/Chinese/arkpixel10.ttf"
 __recovered_scope_0.var_0_11 = 10
 __recovered_scope_0.var_0_12 = "normal"

 function __recovered_scope_0.var_0_13()
	return (_G.currentGameLang or "ko") == "zh"
end

 function __recovered_scope_0.var_0_14()
	return _G.currentGameLang or "ko"
end

 function __recovered_scope_0.var_0_15(arg_3_0)
	local var_3_0 = rawget(_G, "getChineseLatinFallbackFont")

	if type(var_3_0) == "function" then
		local var_3_1 = var_3_0(arg_3_0)

		if var_3_1 then
			return var_3_1
		end
	end

	return arg_3_0
end

 function __recovered_scope_0.var_0_16(arg_4_0, arg_4_1)
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

 function __recovered_scope_0.var_0_17(arg_5_0, arg_5_1)
	local var_5_0 = __recovered_scope_0.var_0_15(arg_5_0)

	return var_5_0 and var_5_0:getHeight() or arg_5_0 and arg_5_0:getHeight() or arg_5_1 or 12
end

 function __recovered_scope_0.var_0_18(arg_6_0, arg_6_1)
	if __recovered_scope_0.var_0_13() then
		arg_6_0 = __recovered_scope_0.var_0_10
		arg_6_1 = arg_6_1 or __recovered_scope_0.var_0_11
	end

	if type(arg_6_0) ~= "string" or arg_6_0 == "" or not love.filesystem.getInfo(arg_6_0) then
		return nil
	end

	local var_6_0
	local var_6_1

	if arg_6_0:lower():match("%.ttf$") or arg_6_0:lower():match("%.otf$") then
		var_6_0, var_6_1 = pcall(love.graphics.newFont, arg_6_0, arg_6_1 or __recovered_scope_0.var_0_11, __recovered_scope_0.var_0_12)
	else
		var_6_0, var_6_1 = pcall(love.graphics.newFont, arg_6_0)
	end

	if var_6_0 and var_6_1 then
		var_6_1:setFilter("nearest", "nearest")
		__recovered_scope_0.var_0_6.attachFallbacks(var_6_1, arg_6_0)

		if __recovered_scope_0.var_0_13() and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_6_1)
		end

		return var_6_1
	end

	return nil
end

 function __recovered_scope_0.var_0_19(arg_7_0, arg_7_1)
	if type(arg_7_0) ~= "string" or arg_7_0 == "" or not love.filesystem.getInfo(arg_7_0) then
		return nil
	end

	local var_7_0
	local var_7_1
	local var_7_2 = tostring(arg_7_0):lower()

	if var_7_2:match("%.ttf$") or var_7_2:match("%.otf$") then
		var_7_0, var_7_1 = pcall(love.graphics.newFont, arg_7_0, arg_7_1 or __recovered_scope_0.var_0_11, __recovered_scope_0.var_0_12)
	else
		var_7_0, var_7_1 = pcall(love.graphics.newFont, arg_7_0)
	end

	if var_7_0 and var_7_1 then
		var_7_1:setFilter("nearest", "nearest")

		return var_7_1
	end

	return nil
end

 function __recovered_scope_0.var_0_20(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
	if _G.maybeRegisterSLineTtfTextEffect then
		_G.maybeRegisterSLineTtfTextEffect(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
	end

	if __recovered_scope_0.var_0_13() and _G.registerChineseLatinFallbackFont then
		local var_8_0 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_8_1) or arg_8_1

		_G.registerChineseLatinFallbackFont(arg_8_0, __recovered_scope_0.var_0_19(var_8_0, __recovered_scope_0.var_0_11))
	end

	return arg_8_0
end

 function __recovered_scope_0.var_0_21(arg_9_0)
	local var_9_0 = __recovered_scope_0.var_0_14()
	local var_9_1 = __recovered_scope_0.var_0_13() and __recovered_scope_0.var_0_10 or __recovered_scope_0.var_0_6.resolve(arg_9_0, var_9_0)

	if type(var_9_1) ~= "string" or var_9_1 == "" then
		var_9_1 = arg_9_0
	end

	return var_9_1, var_9_0
end

 __recovered_scope_0.var_0_22 = nil

 function __recovered_scope_0.var_0_23()
	if __recovered_scope_0.var_0_22 then
		return __recovered_scope_0.var_0_22
	end

	local var_10_0 = "    extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel\n    extern vec4 outlineColor;   // RGBA\n    extern float threshold;     // alpha threshold\n    extern float radiusPx;      // outline radius in px (1.0 to 2.0 for sub-pixel logic)\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold){\n        vec2 s = texelStep;\n\n        // Layer 1: Immediate cardinal neighbors (1px) -> Always Solid\n        float aL = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float aR = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float aU = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float aD = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        \n        if (max(max(aL, aR), max(aU, aD)) > threshold) {\n            return outlineColor;\n        }\n\n        // Layer 2: Sub-pixel extension (Hard Cut)\n        // If radius is 1.15, we draw 15% of the 2nd pixel layer solid, then cut off.\n        if (radiusPx > 1.0) {\n            float extra = radiusPx - 1.0;\n            vec2 pos = tc / texelStep;\n            vec2 f = fract(pos); // 0..1 within current texel\n\n            // Left-Left Source (Expanding Right)\n            float aLL = Texel(tex, tc + vec2(-s.x * 2.0, 0.0)).a;\n            if (aLL > threshold && f.x < extra) return outlineColor;\n\n            // Right-Right Source (Expanding Left)\n            float aRR = Texel(tex, tc + vec2( s.x * 2.0, 0.0)).a;\n            if (aRR > threshold && f.x > (1.0 - extra)) return outlineColor;\n\n            // Up-Up Source (Expanding Down)\n            float aUU = Texel(tex, tc + vec2(0.0, -s.y * 2.0)).a;\n            if (aUU > threshold && f.y < extra) return outlineColor;\n\n            // Down-Down Source (Expanding Up)\n            float aDD = Texel(tex, tc + vec2(0.0,  s.y * 2.0)).a;\n            if (aDD > threshold && f.y > (1.0 - extra)) return outlineColor;\n        }\n      }\n      return vec4(0.0);\n    }\n  "

	__recovered_scope_0.var_0_22 = love.graphics.newShader(var_10_0)

	return __recovered_scope_0.var_0_22
end

 __recovered_scope_0.var_0_24 = nil

 function __recovered_scope_0.var_0_25()
	if __recovered_scope_0.var_0_24 then
		return __recovered_scope_0.var_0_24
	end

	local var_11_0 = "    extern vec4 glowColor;\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        vec2 uv = texture_coords - 0.5;\n        vec2 d = abs(uv) - 0.22; // Slightly larger core\n        float dist = length(max(d, 0.0)) + min(max(d.x, d.y), 0.0);\n        // Sharper transition for \"less blurry\" look\n        float alpha = 1.0 - smoothstep(0.0, 0.12, dist);\n        alpha = pow(alpha, 1.2);\n        return glowColor * alpha;\n    }\n  "

	__recovered_scope_0.var_0_24 = love.graphics.newShader(var_11_0)

	return __recovered_scope_0.var_0_24
end

 __recovered_scope_0.var_0_26 = nil

 function __recovered_scope_0.var_0_27()
	if __recovered_scope_0.var_0_26 then
		return __recovered_scope_0.var_0_26
	end

	local var_12_0 = love.image.newImageData(1, 1)

	var_12_0:setPixel(0, 0, 1, 1, 1, 1)

	__recovered_scope_0.var_0_26 = love.graphics.newImage(var_12_0)

	return __recovered_scope_0.var_0_26
end

 __recovered_scope_0.var_0_28 = nil

 function __recovered_scope_0.var_0_29()
	if __recovered_scope_0.var_0_28 == false then
		return nil
	end

	if not __recovered_scope_0.var_0_28 then
		local var_13_0, var_13_1 = pcall(love.graphics.newImage, "src/sprites/icons/sloticons/statinfo.png")

		if var_13_0 and var_13_1 then
			var_13_1:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_28 = var_13_1
		else
			__recovered_scope_0.var_0_28 = false
		end
	end

	return __recovered_scope_0.var_0_28 or nil
end

 __recovered_scope_0.var_0_30 = nil

 function __recovered_scope_0.var_0_31()
	if __recovered_scope_0.var_0_30 == false then
		return nil
	end

	if not __recovered_scope_0.var_0_30 then
		local var_14_0 = {
			unlocked = "src/sprites/icons/sloticons/absorbunlock.png",
			locked = "src/sprites/icons/sloticons/absorblock.png"
		}
		local var_14_1 = {}

		for iter_14_0, iter_14_1 in pairs(var_14_0) do
			local var_14_2, var_14_3 = pcall(love.graphics.newImage, iter_14_1)

			if not var_14_2 or not var_14_3 then
				__recovered_scope_0.var_0_30 = false

				return nil
			end

			var_14_3:setFilter("nearest", "nearest")

			var_14_1[iter_14_0] = var_14_3
		end

		__recovered_scope_0.var_0_30 = var_14_1
	end

	return __recovered_scope_0.var_0_30
end

 __recovered_scope_0.var_0_32 = {
	confirmBtnPressed = false,
	upgradeBtnPressed = false,
	convertBtnPressed = false,
	cancelBtnPressed = false,
	changeBtnScale = 1,
	confirmBtnScale = 1,
	upgradeBtnScale = 1,
	convertBtnScale = 1,
	cancelBtnScale = 1,
	previewScale = 1,
	previewTargetY = 0,
	previewAlpha = 0,
	previewY = -100,
	blinkTimer = 0,
	holdTimer = 0,
	v = 0,
	replaceHoveringNext = false,
	replaceHovering = false,
	convertHovering = false,
	changeBtnTimer = 0,
	confirmBtnTimer = 0,
	upgradeBtnTimer = 0,
	convertBtnTimer = 0,
	cancelBtnTimer = 0,
	changeBtnPressed = false,
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
 __recovered_scope_0.var_0_33 = nil
 __recovered_scope_0.var_0_34 = nil

 function __recovered_scope_0.var_0_35()
	local var_15_0, var_15_1 = __recovered_scope_0.var_0_21("src/data/font/Galmuri9WS.fnt")
	local var_15_2 = tostring(var_15_1) .. "|" .. tostring(var_15_0)

	if __recovered_scope_0.var_0_34 ~= var_15_2 then
		local var_15_3 = __recovered_scope_0.var_0_18(var_15_0, __recovered_scope_0.var_0_13() and __recovered_scope_0.var_0_11 or nil)

		if var_15_3 then
			__recovered_scope_0.var_0_20(var_15_3, "src/data/font/Galmuri9WS.fnt", var_15_0, var_15_1)
		end

		__recovered_scope_0.var_0_33 = var_15_3 or nil
		__recovered_scope_0.var_0_34 = var_15_2
	end

	return __recovered_scope_0.var_0_33
end

 __recovered_scope_0.var_0_36 = nil

 function __recovered_scope_0.var_0_37()
	if __recovered_scope_0.var_0_36 == nil then
		local var_16_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n      extern vec3 u_old3; extern vec3 u_new3;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05;\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          } else if (distance(rgb, u_old3) < tol) {\n              rgb = u_new3;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_16_1, var_16_2 = pcall(love.graphics.newShader, var_16_0)

		if var_16_1 and var_16_2 then
			__recovered_scope_0.var_0_36 = var_16_2

			var_16_2:send("u_old1", {
				0.3843137254901961,
				0.3333333333333333,
				0.396078431372549
			})
			var_16_2:send("u_new1", {
				0.6509803921568628,
				0.37254901960784315,
				0.6039215686274509
			})
			var_16_2:send("u_old2", {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961
			})
			var_16_2:send("u_new2", {
				0.25882352941176473,
				0.13333333333333333,
				0.23529411764705882
			})
			var_16_2:send("u_old3", {
				0.24313725490196078,
				0.20784313725490197,
				0.27450980392156865
			})
			var_16_2:send("u_new3", {
				0.44313725490196076,
				0.20392156862745098,
				0.3843137254901961
			})
		else
			__recovered_scope_0.var_0_36 = false
		end
	end

	return __recovered_scope_0.var_0_36 or nil
end

 __recovered_scope_0.var_0_38 = nil

 function __recovered_scope_0.var_0_39()
	if __recovered_scope_0.var_0_38 == nil then
		local var_17_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n      extern vec3 u_old3; extern vec3 u_new3;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05; // Increased tolerance for robust color matching\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          } else if (distance(rgb, u_old3) < tol) {\n              rgb = u_new3;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_17_1, var_17_2 = pcall(love.graphics.newShader, var_17_0)

		if var_17_1 and var_17_2 then
			__recovered_scope_0.var_0_38 = var_17_2

			var_17_2:send("u_old1", {
				0.3843137254901961,
				0.3333333333333333,
				0.396078431372549
			})
			var_17_2:send("u_new1", {
				0.41568627450980394,
				0.5490196078431373,
				0.4470588235294118
			})
			var_17_2:send("u_old2", {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961
			})
			var_17_2:send("u_new2", {
				0.17647058823529413,
				0.23921568627450981,
				0.19215686274509805
			})
			var_17_2:send("u_old3", {
				0.24313725490196078,
				0.20784313725490197,
				0.27450980392156865
			})
			var_17_2:send("u_new3", {
				0.25882352941176473,
				0.3607843137254902,
				0.28627450980392155
			})
		else
			__recovered_scope_0.var_0_38 = false
		end
	end

	return __recovered_scope_0.var_0_38 or nil
end

 __recovered_scope_0.var_0_40 = nil

 function __recovered_scope_0.var_0_41()
	if __recovered_scope_0.var_0_40 == nil then
		local var_18_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n      extern vec3 u_old3; extern vec3 u_new3;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05; // Increased tolerance for robust color matching\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          } else if (distance(rgb, u_old3) < tol) {\n              rgb = u_new3;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_18_1, var_18_2 = pcall(love.graphics.newShader, var_18_0)

		if var_18_1 and var_18_2 then
			__recovered_scope_0.var_0_40 = var_18_2

			var_18_2:send("u_old1", {
				0.3843137254901961,
				0.3333333333333333,
				0.396078431372549
			})
			var_18_2:send("u_new1", {
				0.3607843137254902,
				0.4549019607843137,
				0.5725490196078431
			})
			var_18_2:send("u_old2", {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961
			})
			var_18_2:send("u_new2", {
				0.13725490196078433,
				0.17647058823529413,
				0.23921568627450981
			})
			var_18_2:send("u_old3", {
				0.24313725490196078,
				0.20784313725490197,
				0.27450980392156865
			})
			var_18_2:send("u_new3", {
				0.20784313725490197,
				0.29411764705882354,
				0.4196078431372549
			})
		else
			__recovered_scope_0.var_0_40 = false
		end
	end

	return __recovered_scope_0.var_0_40 or nil
end

 __recovered_scope_0.var_0_42 = nil

 function __recovered_scope_0.var_0_43()
	if __recovered_scope_0.var_0_42 == nil then
		local var_19_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n      extern vec3 u_old3; extern vec3 u_new3;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05;\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          } else if (distance(rgb, u_old3) < tol) {\n              rgb = u_new3;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_19_1, var_19_2 = pcall(love.graphics.newShader, var_19_0)

		if var_19_1 and var_19_2 then
			__recovered_scope_0.var_0_42 = var_19_2

			var_19_2:send("u_old1", {
				0.3843137254901961,
				0.3333333333333333,
				0.396078431372549
			})
			var_19_2:send("u_new1", {
				0.6274509803921569,
				0.5294117647058824,
				0.35294117647058826
			})
			var_19_2:send("u_old2", {
				0.1803921568627451,
				0.13333333333333333,
				0.1843137254901961
			})
			var_19_2:send("u_new2", {
				0.21568627450980393,
				0.16470588235294117,
				0.11764705882352941
			})
			var_19_2:send("u_old3", {
				0.24313725490196078,
				0.20784313725490197,
				0.27450980392156865
			})
			var_19_2:send("u_new3", {
				0.43137254901960786,
				0.3333333333333333,
				0.19607843137254902
			})
		else
			__recovered_scope_0.var_0_42 = false
		end
	end

	return __recovered_scope_0.var_0_42 or nil
end

 __recovered_scope_0.var_0_44 = nil

 function __recovered_scope_0.var_0_45()
	if __recovered_scope_0.var_0_44 == nil then
		local var_20_0 = "      extern number u_time;\n      extern vec3   u_uiBase;   // #3e3546\n      extern vec2   u_dir;      \n      extern number u_cycle;    \n      extern number u_scale;    \n      extern number u_grainScale;\n      extern number u_grainAmp;\n      extern number u_filmFreq;\n      extern number u_filmAmp;\n      extern number u_specular;\n      extern number u_fresnelPow;\n      extern number u_colorGain;\n      extern number u_saturation;\n      extern number u_mixBP;\n\n      vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n        return a + b * cos(6.28318 * (c * x + d));\n      }\n      float hash(vec2 p){\n        return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n      }\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        vec4 base = Texel(tex, tc); // The slot background image\n        if (base.a <= 0.001) return vec4(0.0);\n        \n        vec2 dir = u_dir;\n        if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n        else dir = normalize(dir);\n        vec2 ortho = vec2(-dir.y, dir.x); \n        \n        float u = dot(tc, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n        float v = dot(tc, ortho) * u_scale;\n        \n        // Use grain uniforms as requested to match the tooltip filter perfectly\n        float grainLine = abs(sin(dot(tc, ortho) * u_grainScale));\n        float grainNoise = hash(tc * 97.0);\n        float grain = mix(grainLine, grainNoise, 0.25);\n        \n        float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n        float x = u + film;\n        \n        // Rainbow palettes matching the tooltip specifically (Substantially increased brightness)\n        vec3 colBP = palette(x, vec3(0.75, 0.70, 0.78), vec3(0.25, 0.20, 0.28), vec3(1.00, 1.00, 1.00), vec3(0.10, 0.43, 0.78));\n        vec3 colWide = palette(u, vec3(0.72), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n        vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n        \n        float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n        float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n        float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n        \n        // Apply grain multiplier like in tooltip foil\n        float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n        vec3 outRGB = foil * grainMul + spec;\n        \n        // Harmonize with UI Base (#3e3546) - Reduced UI base weight to let rainbow shine through much more\n        outRGB = mix(u_uiBase, outRGB, 0.82);\n        \n        // Saturation & Gain\n        float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n        outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n        \n        // Apply to base slot lighting with massive gain multiplier to prevent \"darkening\" the slot\n        float luma = dot(base.rgb, vec3(0.299, 0.587, 0.114));\n        outRGB *= (luma * u_colorGain * 1.5);\n        \n        return vec4(outRGB, base.a) * color;\n      }\n    "
		local var_20_1, var_20_2 = pcall(love.graphics.newShader, var_20_0)

		if var_20_1 and var_20_2 then
			__recovered_scope_0.var_0_44 = var_20_2
		else
			__recovered_scope_0.var_0_44 = false
		end
	end

	return __recovered_scope_0.var_0_44 or nil
end

 __recovered_scope_0.var_0_46 = nil

 function __recovered_scope_0.var_0_47()
	if __recovered_scope_0.var_0_46 == nil then
		local var_21_0 = "      extern vec3 u_old1; extern vec3 u_new1;\n      extern vec3 u_old2; extern vec3 u_new2;\n\n      vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(texture, texture_coords);\n          vec3 rgb = texColor.rgb;\n          float tol = 0.05;\n          if (distance(rgb, u_old1) < tol) {\n              rgb = u_new1;\n          } else if (distance(rgb, u_old2) < tol) {\n              rgb = u_new2;\n          }\n          return vec4(rgb, texColor.a) * color;\n      }\n    "
		local var_21_1, var_21_2 = pcall(love.graphics.newShader, var_21_0)

		if var_21_1 and var_21_2 then
			__recovered_scope_0.var_0_46 = var_21_2

			var_21_2:send("u_old1", {
				0.5411764705882353,
				0.35294117647058826,
				0.41568627450980394
			})
			var_21_2:send("u_new1", {
				0.43137254901960786,
				0.5411764705882353,
				0.43529411764705883
			})
			var_21_2:send("u_old2", {
				0.30980392156862746,
				0.20392156862745098,
				0.23921568627450981
			})
			var_21_2:send("u_new2", {
				0.24313725490196078,
				0.35294117647058826,
				0.24705882352941178
			})
		else
			__recovered_scope_0.var_0_46 = false
		end
	end

	return __recovered_scope_0.var_0_46 or nil
end

 function __recovered_scope_0.var_0_48(arg_22_0)
	if arg_22_0 < 0 then
		return 0
	end

	if arg_22_0 > 1 then
		return 1
	end

	return arg_22_0
end

 function __recovered_scope_0.var_0_49(arg_23_0)
	return ({
		"I",
		"II",
		"III",
		"IV",
		"V"
	})[tonumber(arg_23_0) or 1] or tostring(arg_23_0)
end

 function __recovered_scope_0.var_0_50(arg_24_0)
	return math.floor((arg_24_0 or 0) + 0.5)
end

 function __recovered_scope_0.var_0_51(arg_25_0, arg_25_1, arg_25_2)
	if not arg_25_0 or not arg_25_1 then
		return arg_25_1
	end

	if arg_25_2 <= 0 then
		return ""
	end

	if arg_25_2 >= __recovered_scope_0.var_0_16(arg_25_0, arg_25_1) then
		return arg_25_1
	end

	local var_25_0 = arg_25_1

	while #var_25_0 > 0 and arg_25_2 < __recovered_scope_0.var_0_16(arg_25_0, var_25_0 .. "…") do
		var_25_0 = var_25_0:gsub("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*$", "")
	end

	if #var_25_0 == 0 then
		return ""
	end

	return var_25_0 .. "…"
end

 function __recovered_scope_0.var_0_52(arg_26_0, arg_26_1, arg_26_2, arg_26_3, arg_26_4, arg_26_5, arg_26_6)
	if not arg_26_0 then
		love.graphics.printf(arg_26_1 or "", arg_26_2, arg_26_3, arg_26_4, "left")

		return
	end

	local var_26_0 = tostring(arg_26_1 or "")

	if var_26_0 == "" or arg_26_4 <= 0 then
		return
	end

	if var_26_0:find("{hp.png}", 1, true) and _G.__slotWrapRichTextWithStatIcons and _G.__slotDrawRichTextWithStatIcons then
		local var_26_1 = require("src.ui.widgets").text_fit
		local var_26_2 = _G.__slotWrapRichTextWithStatIcons(var_26_0, arg_26_4, {
			font = arg_26_0
		})
		local var_26_3 = (math.max(1, arg_26_6 or #var_26_2) - 1) * arg_26_5 + arg_26_0:getHeight()

		var_26_1.drawBlock(var_26_1.fitBlock(var_26_0, arg_26_4, var_26_3, arg_26_0, {
			lineH = arg_26_5,
			wrap = _G.__slotWrapRichTextWithStatIcons
		}), arg_26_2, arg_26_3, arg_26_4, var_26_3, {
			key = "imprint:" .. var_26_0,
			draw = _G.__slotDrawRichTextWithStatIcons
		})

		return
	end

	local var_26_4, var_26_5 = arg_26_0:getWrap(var_26_0, arg_26_4)

	if not var_26_5 or #var_26_5 == 0 then
		return
	end

	if arg_26_6 and arg_26_6 > 0 and arg_26_6 < #var_26_5 then
		local var_26_6 = require("src.ui.widgets").text_fit

		if arg_26_6 == 1 then
			var_26_6.draw(var_26_6.fit(var_26_0, arg_26_4, arg_26_0, {}), arg_26_2, arg_26_3, arg_26_4, arg_26_0:getHeight(), {
				key = "imprint:" .. var_26_0
			})

			return
		end

		local var_26_7 = (arg_26_6 - 1) * arg_26_5 + arg_26_0:getHeight()

		var_26_6.drawBlock(var_26_6.fitBlock(var_26_0, arg_26_4, var_26_7, arg_26_0, {
			lineH = arg_26_5
		}), arg_26_2, arg_26_3, arg_26_4, var_26_7, {
			key = "imprint:" .. var_26_0
		})

		return
	end

	for iter_26_0 = 1, #var_26_5 do
		love.graphics.print(var_26_5[iter_26_0], arg_26_2, arg_26_3 + (iter_26_0 - 1) * arg_26_5)
	end
end

function __recovered_scope_0.var_0_0._printFitted(arg_27_0, arg_27_1, arg_27_2, arg_27_3, arg_27_4)
	local var_27_0 = require("src.ui.widgets").text_fit
	local var_27_1 = var_27_0.fit(arg_27_1, arg_27_4, arg_27_0, {})

	var_27_0.draw(var_27_1, arg_27_2, arg_27_3, arg_27_4, arg_27_0:getHeight(), {
		key = "imprint_name:" .. tostring(arg_27_1)
	})

	return var_27_1.width, var_27_1.font, var_27_1.scale or 1
end

function __recovered_scope_0.var_0_0._buttonTextW(arg_28_0, arg_28_1)
	local var_28_0 = arg_28_0 and arg_28_1 - 6 or arg_28_1

	return math.max(16, var_28_0 - 16)
end

__recovered_scope_0.var_0_0.GAIN_TAB_INNER_W = 49
__recovered_scope_0.var_0_0.GAIN_TAB_MAX_EXTRA = 70

function __recovered_scope_0.var_0_0._drawGainPlate(arg_29_0, arg_29_1, arg_29_2, arg_29_3)
	if not arg_29_3 or arg_29_3 <= 0 then
		love.graphics.draw(arg_29_0, arg_29_1, arg_29_2)

		return
	end

	local var_29_0, var_29_1 = arg_29_0:getDimensions()

	arg_29_3 = math.min(arg_29_3, __recovered_scope_0.var_0_0.GAIN_TAB_MAX_EXTRA)

	local var_29_2 = 41
	local var_29_3 = 20
	local var_29_4 = 8
	local var_29_5 = 24
	local var_29_6 = __recovered_scope_0.var_0_0._gainPlateQuads

	if not var_29_6 or var_29_6.w ~= var_29_0 or var_29_6.h ~= var_29_1 or var_29_6.extra ~= arg_29_3 then
		var_29_6 = {
			w = var_29_0,
			h = var_29_1,
			extra = arg_29_3,
			tabLeft = love.graphics.newQuad(0, 0, var_29_2, var_29_3, var_29_0, var_29_1),
			tabMid = love.graphics.newQuad(var_29_2 - 1, 0, 1, var_29_3, var_29_0, var_29_1),
			tabRight = love.graphics.newQuad(var_29_2, 0, var_29_0 - var_29_2, var_29_3, var_29_0, var_29_1),
			lipLeft = love.graphics.newQuad(0, var_29_3, var_29_2, var_29_4, var_29_0, var_29_1),
			lipMid = love.graphics.newQuad(var_29_2 - 1, var_29_3, 1, var_29_4, var_29_0, var_29_1),
			lipRight = love.graphics.newQuad(var_29_2, var_29_3, var_29_0 - var_29_5 - arg_29_3 - var_29_2, var_29_4, var_29_0, var_29_1),
			lipCorner = love.graphics.newQuad(var_29_0 - var_29_5, var_29_3, var_29_5, var_29_4, var_29_0, var_29_1),
			body = love.graphics.newQuad(0, var_29_3 + var_29_4, var_29_0, var_29_1 - var_29_3 - var_29_4, var_29_0, var_29_1)
		}
		__recovered_scope_0.var_0_0._gainPlateQuads = var_29_6
	end

	love.graphics.draw(arg_29_0, var_29_6.tabLeft, arg_29_1, arg_29_2)
	love.graphics.draw(arg_29_0, var_29_6.tabMid, arg_29_1 + var_29_2, arg_29_2, 0, arg_29_3, 1)
	love.graphics.draw(arg_29_0, var_29_6.tabRight, arg_29_1 + var_29_2 + arg_29_3, arg_29_2)
	love.graphics.draw(arg_29_0, var_29_6.lipLeft, arg_29_1, arg_29_2 + var_29_3)
	love.graphics.draw(arg_29_0, var_29_6.lipMid, arg_29_1 + var_29_2, arg_29_2 + var_29_3, 0, arg_29_3, 1)
	love.graphics.draw(arg_29_0, var_29_6.lipRight, arg_29_1 + var_29_2 + arg_29_3, arg_29_2 + var_29_3)
	love.graphics.draw(arg_29_0, var_29_6.lipCorner, arg_29_1 + var_29_0 - var_29_5, arg_29_2 + var_29_3)
	love.graphics.draw(arg_29_0, var_29_6.body, arg_29_1, arg_29_2 + var_29_3 + var_29_4)
end

 function __recovered_scope_0.var_0_53(arg_30_0, arg_30_1)
	if not arg_30_0 or not arg_30_1 or arg_30_1 <= 0 then
		return 1
	end

	return math.max(1, math.floor(arg_30_0 / arg_30_1))
end

 function __recovered_scope_0.var_0_54(arg_31_0, arg_31_1, arg_31_2)
	if not arg_31_1 then
		return 1
	end

	if not arg_31_0 or not arg_31_0.getWrap then
		return 1
	end

	if not arg_31_2 or arg_31_2 <= 0 then
		return 1
	end

	if tostring(arg_31_1):find("{hp.png}", 1, true) and _G.__slotWrapRichTextWithStatIcons then
		return math.max(1, #_G.__slotWrapRichTextWithStatIcons(arg_31_1, arg_31_2, {
			font = arg_31_0
		}))
	end

	local var_31_0, var_31_1 = arg_31_0:getWrap(tostring(arg_31_1), arg_31_2)

	if not var_31_1 or #var_31_1 == 0 then
		return 1
	end

	return #var_31_1
end

 function __recovered_scope_0.var_0_55(arg_32_0)
	if not arg_32_0 then
		return __recovered_scope_0.var_0_5.getText("unit.name.유닛", _G.currentGameLang or "ko")
	end

	local var_32_0 = arg_32_0.sym or arg_32_0.role == "archer" and "A" or arg_32_0.role == "spear" and "S" or "W"
	local var_32_1 = arg_32_0.rank or arg_32_0.star or 1
	local var_32_2 = _G.currentGameLang or "ko"
	local var_32_3

	if type(_G.classNameBy) == "function" then
		local var_32_4, var_32_5 = pcall(_G.classNameBy, var_32_0, var_32_1)

		if var_32_4 then
			var_32_3 = var_32_5
		end
	end

	if arg_32_0.subclassName then
		return __recovered_scope_0.var_0_5.translateUnitName(tostring(arg_32_0.subclassName), var_32_2)
	end

	if arg_32_0.name then
		return __recovered_scope_0.var_0_5.translateUnitName(tostring(arg_32_0.name), var_32_2)
	end

	if var_32_3 then
		return __recovered_scope_0.var_0_5.translateUnitName(tostring(var_32_3), var_32_2)
	end

	if arg_32_0.subclass then
		return __recovered_scope_0.var_0_5.translateUnitName(tostring(arg_32_0.subclass), var_32_2)
	end

	return tostring(var_32_0)
end

 function __recovered_scope_0.var_0_56(arg_33_0)
	if not arg_33_0 then
		return "⚔"
	end

	local var_33_0 = arg_33_0.sym

	if arg_33_0.role == "archer" or var_33_0 == "A" then
		return "🏹"
	end

	if arg_33_0.role == "spear" or var_33_0 == "S" then
		return "🔱"
	end

	if var_33_0 == "M" then
		return "✨"
	end

	if var_33_0 == "H" then
		return "🐎"
	end

	if var_33_0 == "D" then
		return "🗡"
	end

	return "⚔"
end

 function __recovered_scope_0.var_0_57(arg_34_0)
	local var_34_0 = __recovered_scope_0.var_0_55(arg_34_0)
	local var_34_1 = __recovered_scope_0.var_0_56(arg_34_0)

	return tostring(var_34_1) .. " " .. tostring(var_34_0)
end

 function __recovered_scope_0.var_0_58(arg_35_0)
	if not arg_35_0 then
		return "normal"
	end

	local var_35_0 = tostring(arg_35_0):lower()

	if var_35_0 == "normal" or var_35_0 == "common" then
		return "normal"
	end

	if var_35_0 == "special" then
		return "special"
	end

	if var_35_0 == "advanced" then
		return "advanced"
	end

	if var_35_0 == "rare" or var_35_0 == "r" then
		return "rare"
	end

	if var_35_0 == "legendary" or var_35_0 == "legend" or var_35_0 == "l" then
		return "legendary"
	end

	if var_35_0 == "prism" or var_35_0 == "p" then
		return "prism"
	end

	return "normal"
end

 function __recovered_scope_0.var_0_59(arg_36_0)
	if not arg_36_0 then
		return nil
	end

	local var_36_0 = __recovered_scope_0.var_0_1.imprint and __recovered_scope_0.var_0_1.imprint.definitions

	if not var_36_0 then
		return nil
	end

	local var_36_1
	local var_36_2 = __recovered_scope_0.var_0_58(arg_36_0.grade)

	if (arg_36_0.sym == "Joker" or arg_36_0.sym == "J") and var_36_2 == "special" then
		var_36_1 = var_36_0.shrink
	elseif arg_36_0.sym == "W" then
		if var_36_2 == "prism" then
			var_36_1 = var_36_0.majesty
		elseif var_36_2 == "legendary" then
			var_36_1 = var_36_0.earthquake
		elseif var_36_2 == "rare" then
			var_36_1 = var_36_0.self_destruct
		elseif var_36_2 == "advanced" then
			var_36_1 = var_36_0.bash
		else
			var_36_1 = var_36_0.brace
		end
	elseif arg_36_0.sym == "S" then
		if var_36_2 == "prism" then
			var_36_1 = var_36_0.undying_soul
		elseif var_36_2 == "legendary" then
			var_36_1 = var_36_0.soul_split
		elseif var_36_2 == "rare" then
			var_36_1 = var_36_0.fear
		elseif var_36_2 == "advanced" then
			var_36_1 = var_36_0.knockback
		else
			var_36_1 = var_36_0.pierce
		end
	elseif arg_36_0.sym == "A" then
		if var_36_2 == "prism" then
			var_36_1 = var_36_0.timeless
		elseif var_36_2 == "legendary" then
			var_36_1 = var_36_0.rewind
		elseif var_36_2 == "rare" then
			var_36_1 = var_36_0.chain
		elseif var_36_2 == "advanced" then
			var_36_1 = var_36_0.blind
		else
			var_36_1 = var_36_0.volley
		end
	elseif arg_36_0.sym == "M" then
		if var_36_2 == "prism" then
			var_36_1 = var_36_0.colossus_descent
		elseif var_36_2 == "legendary" then
			var_36_1 = var_36_0.meteor
		elseif var_36_2 == "rare" then
			var_36_1 = var_36_0.chill
		elseif var_36_2 == "advanced" then
			var_36_1 = var_36_0.poison
		else
			var_36_1 = var_36_0.transfer
		end
	elseif arg_36_0.sym == "H" then
		if var_36_2 == "prism" then
			var_36_1 = var_36_0.ruin
		elseif var_36_2 == "legendary" then
			var_36_1 = var_36_0.revival
		elseif var_36_2 == "rare" then
			var_36_1 = var_36_0.enlarge
		elseif var_36_2 == "advanced" then
			var_36_1 = var_36_0.block
		else
			var_36_1 = var_36_0.overdrive
		end
	elseif arg_36_0.sym == "D" then
		if var_36_2 == "prism" then
			var_36_1 = var_36_0.overlord
		elseif var_36_2 == "legendary" then
			var_36_1 = var_36_0.shadow_clone
		elseif var_36_2 == "rare" then
			var_36_1 = var_36_0.execute
		elseif var_36_2 == "advanced" then
			var_36_1 = var_36_0.lifesteal
		else
			var_36_1 = var_36_0.relentless
		end
	else
		var_36_1 = nil
	end

	if not var_36_1 then
		return nil
	end

	local var_36_3 = var_36_2

	if arg_36_0.jackpot5th == true then
		var_36_3 = "prism"
	end

	local var_36_4 = {}

	for iter_36_0, iter_36_1 in pairs(var_36_1) do
		var_36_4[iter_36_0] = iter_36_1
	end

	var_36_4.rarity = var_36_3

	return var_36_4
end

__recovered_scope_0.var_0_0.getImprintFromUnit = __recovered_scope_0.var_0_59

 function __recovered_scope_0.var_0_60(arg_37_0)
	require("src.game.combat").soul_split.migrate(arg_37_0)

	if not arg_37_0 or not arg_37_0.id then
		return arg_37_0
	end

	if arg_37_0.name and arg_37_0.desc and arg_37_0.shortDesc and arg_37_0.icon then
		return arg_37_0
	end

	local var_37_0 = __recovered_scope_0.var_0_1.imprint and __recovered_scope_0.var_0_1.imprint.definitions
	local var_37_1 = var_37_0 and var_37_0[arg_37_0.id]

	if not var_37_1 then
		return arg_37_0
	end

	arg_37_0.name = arg_37_0.name or var_37_1.name
	arg_37_0.icon = arg_37_0.icon or var_37_1.icon
	arg_37_0.maxLevel = arg_37_0.maxLevel or var_37_1.maxLevel or 5

	local var_37_2 = tonumber(arg_37_0.level) or 1
	local var_37_3 = var_37_1.levels and var_37_1.levels[var_37_2]

	if not arg_37_0.desc then
		arg_37_0.desc = var_37_3 and var_37_3.desc or var_37_1.desc
	end

	if not arg_37_0.shortDesc then
		arg_37_0.shortDesc = var_37_3 and var_37_3.shortDesc or var_37_1.shortDesc
	end

	if not arg_37_0.desc and var_37_1.levels and var_37_1.levels[1] then
		arg_37_0.desc = var_37_1.levels[1].desc
	end

	if not arg_37_0.shortDesc and var_37_1.levels and var_37_1.levels[1] then
		arg_37_0.shortDesc = var_37_1.levels[1].shortDesc
	end

	return arg_37_0
end

 function __recovered_scope_0.var_0_61(arg_38_0)
	if not arg_38_0 then
		return nil
	end

	local var_38_0 = {}

	for iter_38_0, iter_38_1 in pairs(arg_38_0) do
		var_38_0[iter_38_0] = iter_38_1
	end

	return var_38_0
end

 function __recovered_scope_0.var_0_62(arg_39_0)
	if arg_39_0._bgImage == nil then
		local var_39_0 = "src/sprites/background/mainbackground/Imprintbackground.png"
		local var_39_1, var_39_2 = pcall(love.graphics.newImage, var_39_0)

		if var_39_1 and var_39_2 then
			var_39_2:setFilter("nearest", "nearest")

			arg_39_0._bgImage = var_39_2

			local var_39_3, var_39_4 = pcall(love.image.newImageData, var_39_0)

			if var_39_3 and var_39_4 then
				local var_39_5, var_39_6 = var_39_4:getDimensions()
				local var_39_7 = var_39_5
				local var_39_8 = var_39_6
				local var_39_9 = -1
				local var_39_10 = -1

				for iter_39_0 = 0, var_39_6 - 1 do
					for iter_39_1 = 0, var_39_5 - 1 do
						local var_39_11, var_39_12, var_39_13, var_39_14 = var_39_4:getPixel(iter_39_1, iter_39_0)

						if var_39_14 > 0 then
							if iter_39_1 < var_39_7 then
								var_39_7 = iter_39_1
							end

							if iter_39_0 < var_39_8 then
								var_39_8 = iter_39_0
							end

							if var_39_9 < iter_39_1 then
								var_39_9 = iter_39_1
							end

							if var_39_10 < iter_39_0 then
								var_39_10 = iter_39_0
							end
						end
					end
				end

				if var_39_7 <= var_39_9 and var_39_8 <= var_39_10 then
					arg_39_0._bgVisibleBounds = {
						x = var_39_7,
						y = var_39_8,
						w = var_39_9 - var_39_7 + 1,
						h = var_39_10 - var_39_8 + 1
					}
				end
			end
		else
			arg_39_0._bgImage = false
		end
	end

	return arg_39_0._bgImage or nil
end

 function __recovered_scope_0.var_0_63(arg_40_0, arg_40_1)
	if not arg_40_1 then
		return nil
	end

	if type(arg_40_1) == "userdata" then
		return arg_40_1
	end

	if type(arg_40_1) ~= "string" then
		return nil
	end

	if not arg_40_0._iconCache then
		arg_40_0._iconCache = {}
	end

	local var_40_0 = arg_40_0._iconCache[arg_40_1]

	if var_40_0 ~= nil then
		return var_40_0 or nil
	end

	local var_40_1, var_40_2 = pcall(love.graphics.newImage, arg_40_1)

	if var_40_1 and var_40_2 then
		var_40_2:setFilter("nearest", "nearest")

		arg_40_0._iconCache[arg_40_1] = var_40_2

		return var_40_2
	end

	arg_40_0._iconCache[arg_40_1] = false

	return nil
end

 function __recovered_scope_0.var_0_64(arg_41_0, arg_41_1)
	if not arg_41_1 then
		return nil
	end

	if type(arg_41_1) ~= "string" then
		return nil
	end

	if not arg_41_0._iconDataCache then
		arg_41_0._iconDataCache = {}
	end

	local var_41_0 = arg_41_0._iconDataCache[arg_41_1]

	if var_41_0 ~= nil then
		return var_41_0 or nil
	end

	local var_41_1, var_41_2 = pcall(love.image.newImageData, arg_41_1)

	if var_41_1 and var_41_2 then
		arg_41_0._iconDataCache[arg_41_1] = var_41_2

		return var_41_2
	end

	arg_41_0._iconDataCache[arg_41_1] = false

	return nil
end

 function __recovered_scope_0.var_0_65(arg_42_0, arg_42_1)
	if not arg_42_1 or type(arg_42_1) ~= "string" then
		return nil
	end

	if not arg_42_0._iconBounds then
		arg_42_0._iconBounds = {}
	end

	if arg_42_0._iconBounds[arg_42_1] ~= nil then
		return arg_42_0._iconBounds[arg_42_1] or nil
	end

	if not love or not love.image or not love.image.newImageData then
		arg_42_0._iconBounds[arg_42_1] = false

		return nil
	end

	local var_42_0, var_42_1 = pcall(love.image.newImageData, arg_42_1)

	if not var_42_0 or not var_42_1 then
		arg_42_0._iconBounds[arg_42_1] = false

		return nil
	end

	local var_42_2, var_42_3 = var_42_1:getDimensions()
	local var_42_4 = var_42_2
	local var_42_5 = var_42_3
	local var_42_6 = -1
	local var_42_7 = -1

	for iter_42_0 = 0, var_42_3 - 1 do
		for iter_42_1 = 0, var_42_2 - 1 do
			local var_42_8, var_42_9, var_42_10, var_42_11 = var_42_1:getPixel(iter_42_1, iter_42_0)

			if var_42_11 and var_42_11 > 0.05 then
				if iter_42_1 < var_42_4 then
					var_42_4 = iter_42_1
				end

				if iter_42_0 < var_42_5 then
					var_42_5 = iter_42_0
				end

				if var_42_6 < iter_42_1 then
					var_42_6 = iter_42_1
				end

				if var_42_7 < iter_42_0 then
					var_42_7 = iter_42_0
				end
			end
		end
	end

	if var_42_4 <= var_42_6 and var_42_5 <= var_42_7 then
		arg_42_0._iconBounds[arg_42_1] = {
			minX = var_42_4,
			minY = var_42_5,
			maxX = var_42_6,
			maxY = var_42_7
		}
	else
		arg_42_0._iconBounds[arg_42_1] = false
	end

	return arg_42_0._iconBounds[arg_42_1] or nil
end

function __recovered_scope_0.var_0_0.getShortIconImage(arg_43_0, arg_43_1)
	if not arg_43_1 then
		return nil
	end

	if not arg_43_0._shortIconCache then
		arg_43_0._shortIconCache = {}
	end

	local var_43_0 = arg_43_0._shortIconCache[arg_43_1]

	if var_43_0 ~= nil then
		return var_43_0 or nil
	end

	local var_43_1

	if arg_43_1 == "fortify" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/shield.png"
	elseif arg_43_1 == "pierce" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/multihit.png"
	elseif arg_43_1 == "volley" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/swordplus.png"
	elseif arg_43_1 == "brace" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/swordupgrade.png"
	elseif arg_43_1 == "relentless" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/mad.png"
	elseif arg_43_1 == "transfer" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/diffusion.png"
	elseif arg_43_1 == "overdrive" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/hit.png"
	elseif arg_43_1 == "bash" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/dizzy.png"
	elseif arg_43_1 == "knockback" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/fist.png"
	elseif arg_43_1 == "blind" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/blindx.png"
	elseif arg_43_1 == "noskill" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/noskill.png"
	elseif arg_43_1 == "poison" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/poison.png"
	elseif arg_43_1 == "block" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/blockshield.png"
	elseif arg_43_1 == "lifesteal" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/teeth.png"
	elseif arg_43_1 == "self_destruct" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/explosion.png"
	elseif arg_43_1 == "earthquake" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/earthquake.png"
	elseif arg_43_1 == "fear" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/fireskeleton.png"
	elseif arg_43_1 == "chain" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/multihit.png"
	elseif arg_43_1 == "chill" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/ice.png"
	elseif arg_43_1 == "shrink" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/shrink.png"
	elseif arg_43_1 == "enlarge" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/enlarge.png"
	elseif arg_43_1 == "execute" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/execute.png"
	elseif arg_43_1 == "annihilation" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/fire.png"
	elseif arg_43_1 == "meteor" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/meteor.png"
	elseif arg_43_1 == "shadow_clone" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/shadowclone.png"
	elseif arg_43_1 == "soul_split" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/soul.png"
	elseif arg_43_1 == "revival" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/cross.png"
	elseif arg_43_1 == "majesty" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/angry.png"
	elseif arg_43_1 == "ruin" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/eye.png"
	elseif arg_43_1 == "colossus_descent" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/golem.png"
	elseif arg_43_1 == "overlord" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/fear.png"
	elseif arg_43_1 == "undying_soul" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/holy.png"
	elseif arg_43_1 == "timeless" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/hourglass.png"
	elseif arg_43_1 == "rewind" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/hourglass.png"
	elseif arg_43_1 == "amplify" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/skillsizeupgrade.png"
	elseif arg_43_1 == "starlight_theft" then
		var_43_1 = "src/sprites/icons/imprinticons/shortsicons/stardebuff.png"
	end

	if var_43_1 then
		local var_43_2, var_43_3 = pcall(love.graphics.newImage, var_43_1)

		if var_43_2 and var_43_3 then
			var_43_3:setFilter("nearest", "nearest")

			arg_43_0._shortIconCache[arg_43_1] = var_43_3

			return var_43_3
		end
	end

	arg_43_0._shortIconCache[arg_43_1] = false

	return nil
end

 function __recovered_scope_0.var_0_66(arg_44_0, arg_44_1, arg_44_2, arg_44_3, arg_44_4, arg_44_5)
	love.graphics.setColor(0, 0, 0, 0.5 * (arg_44_5 or 1))
	love.graphics.rectangle("fill", arg_44_2, arg_44_3, arg_44_4, arg_44_4)

	local var_44_0 = __recovered_scope_0.var_0_63(arg_44_0, arg_44_1)

	if not var_44_0 then
		return
	end

	love.graphics.setColor(1, 1, 1, 1 * (arg_44_5 or 1))

	local var_44_1, var_44_2 = var_44_0:getDimensions()

	if var_44_1 <= 0 or var_44_2 <= 0 then
		return
	end

	local var_44_3 = math.min(arg_44_4 / var_44_1, arg_44_4 / var_44_2)
	local var_44_4

	if var_44_3 >= 1 then
		var_44_4 = math.max(1, math.floor(var_44_3))
	else
		var_44_4 = var_44_3
	end

	local var_44_5 = var_44_1 * var_44_4
	local var_44_6 = var_44_2 * var_44_4
	local var_44_7 = math.floor(arg_44_2 + (arg_44_4 - var_44_5) * 0.5 + 0.5)
	local var_44_8 = math.floor(arg_44_3 + (arg_44_4 - var_44_6) * 0.5 + 0.5)

	love.graphics.draw(var_44_0, var_44_7, var_44_8, 0, var_44_4, var_44_4)
end

 __recovered_scope_0.var_0_67 = nil

 function __recovered_scope_0.var_0_68()
	if __recovered_scope_0.var_0_67 ~= nil then
		return __recovered_scope_0.var_0_67 or nil
	end

	local var_45_0, var_45_1 = pcall(love.graphics.newShader, "    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){\n      vec4 t = Texel(texture, texture_coords);\n      return vec4(color.rgb, t.a * color.a);\n    }\n  ")

	__recovered_scope_0.var_0_67 = var_45_0 and var_45_1 and var_45_1 or false

	return __recovered_scope_0.var_0_67 or nil
end

 __recovered_scope_0.var_0_69 = nil

 function __recovered_scope_0.var_0_70()
	if __recovered_scope_0.var_0_69 then
		return __recovered_scope_0.var_0_69
	end

	local var_46_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color; // includes source alpha\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x); \n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      // Apply saturation boost and color gain (icon-sized legibility)\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      return vec4(outRGB, alpha);\n    }\n  "

	__recovered_scope_0.var_0_69 = love.graphics.newShader(var_46_0)

	return __recovered_scope_0.var_0_69
end

 __recovered_scope_0.var_0_71 = nil

 function __recovered_scope_0.var_0_72()
	if __recovered_scope_0.var_0_71 then
		return __recovered_scope_0.var_0_71
	end

	local var_47_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      // IMPORTANT: treat input as an ALPHA MASK (text canvas). Only alpha matters.\n      float maskA = Texel(tex, tc).a;\n      if (maskA <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * maskA;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      // Premultiply to guarantee no color outside the mask.\n      return vec4(outRGB * alpha, alpha);\n    }\n  "

	__recovered_scope_0.var_0_71 = love.graphics.newShader(var_47_0)

	return __recovered_scope_0.var_0_71
end

 __recovered_scope_0.var_0_73 = nil
 __recovered_scope_0.var_0_74 = nil

 function __recovered_scope_0.var_0_75()
	local var_48_0, var_48_1 = __recovered_scope_0.var_0_21("src/data/font/Galmuri9WS.fnt")
	local var_48_2 = tostring(var_48_1) .. "|" .. tostring(var_48_0)

	if __recovered_scope_0.var_0_74 ~= var_48_2 then
		local var_48_3 = __recovered_scope_0.var_0_18(var_48_0, __recovered_scope_0.var_0_13() and __recovered_scope_0.var_0_11 or nil)

		if var_48_3 then
			__recovered_scope_0.var_0_20(var_48_3, "src/data/font/Galmuri9WS.fnt", var_48_0, var_48_1)
		end

		__recovered_scope_0.var_0_73 = var_48_3 or nil
		__recovered_scope_0.var_0_74 = var_48_2
	end

	return __recovered_scope_0.var_0_73
end

__recovered_scope_0.var_0_0.getNameFont = __recovered_scope_0.var_0_75

function __recovered_scope_0.var_0_0.reloadLanguageFonts()
	__recovered_scope_0.var_0_33 = nil
	__recovered_scope_0.var_0_34 = nil
	__recovered_scope_0.var_0_73 = nil
	__recovered_scope_0.var_0_74 = nil
end

 function __recovered_scope_0.var_0_76(arg_50_0)
	if not arg_50_0 then
		return {
			1,
			1,
			1,
			1
		}
	end

	local var_50_0 = arg_50_0.grade or "normal"

	if var_50_0 == "special" then
		return {
			0.9411764705882353,
			0.30980392156862746,
			0.8470588235294118,
			1
		}
	end

	if var_50_0 == "advanced" then
		return {
			0.6,
			0.85,
			0.65,
			1
		}
	end

	if var_50_0 == "rare" then
		return {
			0.6,
			0.75,
			1,
			1
		}
	end

	if var_50_0 == "legendary" then
		return {
			0.9215686274509803,
			0.5725490196078431,
			0.16862745098039217,
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

__recovered_scope_0.var_0_0._hit = __recovered_scope_0.var_0_0._hit or {
	active = false
}
__recovered_scope_0.var_0_0._modalHit = __recovered_scope_0.var_0_0._modalHit or {
	active = false
}
__recovered_scope_0.var_0_0._hudHit = __recovered_scope_0.var_0_0._hudHit or {
	active = false
}

function __recovered_scope_0.var_0_0.drawHudTab(arg_51_0, arg_51_1, arg_51_2)
	if not arg_51_0 or not arg_51_1 then
		return
	end

	arg_51_2 = arg_51_2 or {}

	local var_51_0 = arg_51_0.scale or 1
	local var_51_1 = arg_51_0.font

	if var_51_1 then
		love.graphics.setFont(var_51_1)
	end

	local var_51_2 = __recovered_scope_0.var_0_2.compute(arg_51_0)
	local var_51_3 = arg_51_0.virtual and arg_51_0.virtual.W or var_51_2 and var_51_2.screen and var_51_2.screen.W or 1280
	local var_51_4 = arg_51_0.virtual and arg_51_0.virtual.H or var_51_2 and var_51_2.screen and var_51_2.screen.H or 720
	local var_51_5 = math.floor(200 * var_51_0 + 0.5)
	local var_51_6 = math.floor(56 * var_51_0 + 0.5)
	local var_51_7 = math.floor(4 * var_51_0 + 0.5)
	local var_51_8 = math.floor(6 * var_51_0 + 0.5)
	local var_51_9 = math.floor(4 * var_51_0 + 0.5)
	local var_51_10 = math.floor(4 * var_51_0 + 0.5)
	local var_51_11 = math.floor(22 * var_51_0 + 0.5)

	if var_51_11 < 12 then
		var_51_11 = 12
	end

	local var_51_12 = __recovered_scope_0.var_0_17(var_51_1, math.floor(12 * var_51_0 + 0.5))
	local var_51_13 = math.max(1, var_51_12)
	local var_51_14 = math.max(1, math.floor(7 * var_51_0 + 0.5))
	local var_51_15 = math.max(1, var_51_12 + math.max(1, math.floor(5 * var_51_0 + 0.5)))
	local var_51_16 = var_51_5 - var_51_8 * 3 - var_51_11

	if var_51_16 < 10 then
		var_51_16 = 10
	end

	local var_51_17 = __recovered_scope_0.var_0_54(var_51_1, arg_51_1.desc or "", var_51_16)
	local var_51_18 = var_51_9 + var_51_13 + var_51_14 + var_51_17 * var_51_15 + var_51_10
	local var_51_19 = math.floor(var_51_11 + var_51_9 + var_51_10 + 0.5)
	local var_51_20 = math.max(var_51_6, var_51_18, var_51_19)
	local var_51_21
	local var_51_22

	if var_51_2 and var_51_2.right then
		var_51_21 = math.floor(var_51_2.right.x + (var_51_2.right.w - var_51_5) * 0.5 + 0.5)
		var_51_22 = math.floor(var_51_2.right.y - var_51_20 - var_51_7 + 0.5)
	else
		var_51_21 = math.floor((var_51_3 - var_51_5) / 2 + 0.5)
		var_51_22 = math.floor(2 * var_51_0 + 0.5)
	end

	local var_51_23 = arg_51_0.margin or 0

	if var_51_21 < var_51_23 then
		var_51_21 = var_51_23
	end

	if var_51_21 + var_51_5 > var_51_3 - var_51_23 then
		var_51_21 = var_51_3 - var_51_23 - var_51_5
	end

	if var_51_22 < var_51_23 then
		var_51_22 = var_51_23
	end

	if var_51_22 + var_51_20 > var_51_4 - var_51_23 then
		var_51_22 = var_51_4 - var_51_23 - var_51_20
	end

	love.graphics.setColor(0.1, 0.1, 0.1, 0.92)
	love.graphics.rectangle("fill", var_51_21, var_51_22, var_51_5, var_51_20)
	love.graphics.setColor(0.45, 0.45, 0.45, 1)
	love.graphics.rectangle("line", var_51_21 + 0.5, var_51_22 + 0.5, var_51_5 - 1, var_51_20 - 1)

	local var_51_24 = var_51_21 + var_51_8
	local var_51_25 = var_51_22 + math.floor((var_51_20 - var_51_11) / 2 + 0.5)

	__recovered_scope_0.var_0_66(__recovered_scope_0.var_0_0, arg_51_1.icon, var_51_24, var_51_25, var_51_11, 1)

	local var_51_26 = var_51_24 + var_51_11 + var_51_8
	local var_51_27 = var_51_21 + var_51_5 - var_51_26 - var_51_8

	if var_51_27 < 10 then
		var_51_27 = 10
	end

	local var_51_28 = var_51_22 + var_51_9

	love.graphics.setColor(0.65, 1, 0.65, 1)
	__recovered_scope_0.var_0_0._printFitted(love.graphics.getFont(), __recovered_scope_0.var_0_5.getImprintName(arg_51_1.id, arg_51_1.name or "New Imprint", _G.currentGameLang or "ko"), var_51_26, var_51_28, var_51_27)
	love.graphics.setColor(0.9, 0.9, 0.9, 1)

	local var_51_29 = var_51_28 + var_51_13 + var_51_14

	__recovered_scope_0.var_0_52(var_51_1, __recovered_scope_0.var_0_5.getImprintDesc(arg_51_1.id, arg_51_1.level, arg_51_1.desc or "", _G.currentGameLang or "ko"), var_51_26, var_51_29, var_51_27, var_51_15, nil)
	love.graphics.setColor(1, 1, 1, 1)

	if arg_51_2.showCancel then
		local var_51_30 = math.floor(26 * var_51_0 + 0.5)
		local var_51_31 = math.floor(6 * var_51_0 + 0.5)
		local var_51_32 = var_51_21
		local var_51_33 = var_51_22 + var_51_20 + var_51_31
		local var_51_34 = var_51_5
		local var_51_35 = arg_51_2.cancelLabel or __recovered_scope_0.var_0_5.getText("imprint_absorb_cancel", _G.currentGameLang or "ko")

		if var_51_33 + var_51_30 <= var_51_4 - var_51_23 then
			love.graphics.setColor(0.12, 0.12, 0.12, 0.94)
			love.graphics.rectangle("fill", var_51_32, var_51_33, var_51_34, var_51_30)
			love.graphics.setColor(0.55, 0.55, 0.55, 1)
			love.graphics.rectangle("line", var_51_32 + 0.5, var_51_33 + 0.5, var_51_34 - 1, var_51_30 - 1)

			local var_51_36 = __recovered_scope_0.var_0_16(var_51_1, var_51_35)
			local var_51_37 = __recovered_scope_0.var_0_17(var_51_1, math.floor(12 * var_51_0 + 0.5))
			local var_51_38 = var_51_32 + math.floor((var_51_34 - var_51_36) * 0.5 + 0.5)
			local var_51_39 = var_51_33 + math.floor((var_51_30 - var_51_37) * 0.5 + 0.5)

			love.graphics.setColor(0.95, 0.95, 0.95, 1)
			love.graphics.print(var_51_35, var_51_38, var_51_39)
			love.graphics.setColor(1, 1, 1, 1)

			__recovered_scope_0.var_0_0._hudHit = {
				active = true,
				cancelBtn = {
					kind = "cancel",
					x = var_51_32,
					y = var_51_33,
					w = var_51_34,
					h = var_51_30
				}
			}
		else
			__recovered_scope_0.var_0_0._hudHit = {
				active = false
			}
		end
	else
		__recovered_scope_0.var_0_0._hudHit = {
			active = false
		}
	end
end

function __recovered_scope_0.var_0_0.hudHitTest(arg_52_0, arg_52_1)
	local var_52_0 = __recovered_scope_0.var_0_0._hudHit

	if not var_52_0 or not var_52_0.active then
		return nil
	end

	local var_52_1 = var_52_0.cancelBtn

	if var_52_1 and arg_52_0 >= var_52_1.x and arg_52_0 <= var_52_1.x + var_52_1.w and arg_52_1 >= var_52_1.y and arg_52_1 <= var_52_1.y + var_52_1.h then
		return {
			kind = "cancel"
		}
	end

	return nil
end

function __recovered_scope_0.var_0_0.triggerCancel()
	__recovered_scope_0.var_0_32.cancelBtnPressed = true
	__recovered_scope_0.var_0_32.cancelBtnTimer = 0.15
	__recovered_scope_0.var_0_0._cancelTriggered = false
end

function __recovered_scope_0.var_0_0.triggerConvert()
	__recovered_scope_0.var_0_32.convertBtnPressed = true
	__recovered_scope_0.var_0_32.convertBtnTimer = 0.15
	__recovered_scope_0.var_0_0._convertTriggered = false
end

function __recovered_scope_0.var_0_0.triggerUpgrade(arg_55_0)
	__recovered_scope_0.var_0_32.upgradeBtnPressed = true
	__recovered_scope_0.var_0_32.upgradeBtnTimer = 0.15
	__recovered_scope_0.var_0_0._upgradeSlot = arg_55_0
	__recovered_scope_0.var_0_0._upgradeTriggered = false
end

function __recovered_scope_0.var_0_0.triggerConfirm(arg_56_0, arg_56_1)
	__recovered_scope_0.var_0_32.confirmBtnPressed = true
	__recovered_scope_0.var_0_32.confirmBtnTimer = 0.15
	__recovered_scope_0.var_0_0._confirmSlot = arg_56_0
	__recovered_scope_0.var_0_0._confirmAction = arg_56_1
	__recovered_scope_0.var_0_0._confirmTriggered = false
end

function __recovered_scope_0.var_0_0.triggerChange(arg_57_0)
	__recovered_scope_0.var_0_32.changeBtnPressed = true
	__recovered_scope_0.var_0_32.changeBtnTimer = 0.15
	__recovered_scope_0.var_0_0._changeSlot = arg_57_0
	__recovered_scope_0.var_0_0._changeTriggered = false
end

 function __recovered_scope_0.var_0_77(arg_58_0, arg_58_1, arg_58_2)
	return arg_58_2 and arg_58_0 >= arg_58_2.x and arg_58_0 <= arg_58_2.x + arg_58_2.w and arg_58_1 >= arg_58_2.y and arg_58_1 <= arg_58_2.y + arg_58_2.h
end

function __recovered_scope_0.var_0_0.hitTest(arg_59_0, arg_59_1)
	local var_59_0 = __recovered_scope_0.var_0_0._hit

	if not var_59_0 or not var_59_0.active then
		return nil
	end

	if var_59_0.slots then
		for iter_59_0, iter_59_1 in ipairs(var_59_0.slots) do
			if __recovered_scope_0.var_0_77(arg_59_0, arg_59_1, iter_59_1) then
				return {
					kind = "slot",
					slot = iter_59_1.slot
				}
			end
		end
	end

	if __recovered_scope_0.var_0_77(arg_59_0, arg_59_1, var_59_0.replaceBtn) then
		return {
			kind = "mode",
			mode = "replace"
		}
	end

	if __recovered_scope_0.var_0_77(arg_59_0, arg_59_1, var_59_0.keepBtn) then
		return {
			kind = "mode",
			mode = "keep"
		}
	end

	return nil
end

function __recovered_scope_0.var_0_0.modalHitTest(arg_60_0, arg_60_1)
	local var_60_0 = __recovered_scope_0.var_0_0._modalHit

	if not var_60_0 or not var_60_0.active then
		return nil
	end

	if var_60_0.buttons then
		for iter_60_0, iter_60_1 in ipairs(var_60_0.buttons) do
			if __recovered_scope_0.var_0_77(arg_60_0, arg_60_1, iter_60_1) then
				return {
					kind = iter_60_1.kind,
					slot = iter_60_1.slot
				}
			end
		end
	end

	if var_60_0.arrows then
		for iter_60_2, iter_60_3 in ipairs(var_60_0.arrows) do
			if __recovered_scope_0.var_0_77(arg_60_0, arg_60_1, iter_60_3) then
				return {
					kind = "arrow",
					slot = iter_60_3.slot
				}
			end
		end
	end

	return nil
end

function __recovered_scope_0.var_0_0.absorbLvHitTest(arg_61_0, arg_61_1)
	local var_61_0 = __recovered_scope_0.var_0_0._absorbLvRect

	if not var_61_0 then
		return false
	end

	if arg_61_0 >= var_61_0.x and arg_61_0 <= var_61_0.x + var_61_0.w and arg_61_1 >= var_61_0.y and arg_61_1 <= var_61_0.y + var_61_0.h then
		return true
	end

	return false
end

function __recovered_scope_0.var_0_0.absorbLockHitTest(arg_62_0, arg_62_1)
	local var_62_0 = __recovered_scope_0.var_0_0._absorbLockRect

	if not var_62_0 or not __recovered_scope_0.var_0_0._absorbLockUnit then
		return nil
	end

	if arg_62_0 >= var_62_0.x and arg_62_0 <= var_62_0.x + var_62_0.w and arg_62_1 >= var_62_0.y and arg_62_1 <= var_62_0.y + var_62_0.h then
		return __recovered_scope_0.var_0_0._absorbLockUnit
	end

	return nil
end

function __recovered_scope_0.var_0_0.getAbsorbLvStats(arg_63_0)
	local var_63_0 = math.max(1, math.floor(tonumber(arg_63_0 and arg_63_0.absorbLV or 1) or 1))
	local var_63_1 = __recovered_scope_0.var_0_1.evolution.getAbsorbLvMultipliers(var_63_0 - 1, arg_63_0 and arg_63_0.grade)

	return {
		atk = (var_63_1.atk - 1) * 100,
		aspd = (var_63_1.aspd - 1) * 100,
		hp = (var_63_1.hp - 1) * 100
	}
end

function __recovered_scope_0.var_0_0.getAbsorbLvHoverText(arg_64_0)
	local var_64_0 = __recovered_scope_0.var_0_0.getAbsorbLvStats(arg_64_0)

	return string.format(__recovered_scope_0.var_0_5.getText("imprint_absorb_stat_fmt", _G.currentGameLang or "ko"), var_64_0.atk, var_64_0.aspd, var_64_0.hp)
end

function __recovered_scope_0.var_0_0.drawModal(arg_65_0, arg_65_1)
	if not arg_65_0 or not arg_65_1 or not arg_65_1.active or not arg_65_1.absorber or not arg_65_1.pending then
		__recovered_scope_0.var_0_0._modalHit = {
			active = false
		}

		return
	end

	local var_65_0 = arg_65_0.scale or 1
	local var_65_1 = arg_65_0.font

	if var_65_1 then
		love.graphics.setFont(var_65_1)
	end

	local var_65_2 = __recovered_scope_0.var_0_2.compute(arg_65_0)
	local var_65_3 = arg_65_0.virtual and arg_65_0.virtual.W or var_65_2 and var_65_2.screen and var_65_2.screen.W or 1280
	local var_65_4 = arg_65_0.virtual and arg_65_0.virtual.H or var_65_2 and var_65_2.screen and var_65_2.screen.H or 720
	local var_65_5 = math.floor(520 * var_65_0 + 0.5)
	local var_65_6 = math.floor(190 * var_65_0 + 0.5)
	local var_65_7 = math.floor((var_65_3 - var_65_5) / 2 + 0.5)
	local var_65_8 = var_65_2 and var_65_2.right and var_65_2.right.y or math.floor(40 * var_65_0 + 0.5)
	local var_65_9 = math.floor(math.max((arg_65_0.margin or 0) + 6 * var_65_0, var_65_8 - math.floor(26 * var_65_0 + 0.5)) + 0.5)

	if var_65_9 + var_65_6 > var_65_4 - (arg_65_0.margin or 0) then
		var_65_9 = math.max(arg_65_0.margin or 0, var_65_4 - (arg_65_0.margin or 0) - var_65_6)
	end

	local var_65_10 = __recovered_scope_0.var_0_62(__recovered_scope_0.var_0_0)

	if var_65_10 then
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_65_10, 0, 0)
	else
		love.graphics.setColor(0.08, 0.08, 0.08, 0.96)
		love.graphics.rectangle("fill", var_65_7, var_65_9, var_65_5, var_65_6)
		love.graphics.setColor(0.55, 0.55, 0.55, 1)
		love.graphics.rectangle("line", var_65_7 + 0.5, var_65_9 + 0.5, var_65_5 - 1, var_65_6 - 1)
	end

	local var_65_11 = math.floor(10 * var_65_0 + 0.5)
	local var_65_12 = var_65_7 + var_65_11
	local var_65_13 = var_65_9 + var_65_11
	local var_65_14 = var_65_5 - var_65_11 * 2
	local var_65_15 = var_65_6 - var_65_11 * 2
	local var_65_16 = math.floor(var_65_14 * 0.62 + 0.5)
	local var_65_17 = var_65_14 - var_65_16 - math.floor(10 * var_65_0 + 0.5)
	local var_65_18 = var_65_12
	local var_65_19 = var_65_18 + var_65_16 + math.floor(10 * var_65_0 + 0.5)
	local var_65_20 = math.max(1, math.min(5, math.floor(tonumber(arg_65_1.maxSlots or 1) or 1)))
	local var_65_21 = arg_65_1.absorber.imprints or {}
	local var_65_22 = math.floor(4 * var_65_0 + 0.5)
	local var_65_23 = math.floor((var_65_15 - var_65_22 * (var_65_20 - 1)) / var_65_20)

	if var_65_23 < math.floor(24 * var_65_0 + 0.5) then
		var_65_23 = math.floor(24 * var_65_0 + 0.5)
	end

	local var_65_24 = __recovered_scope_0.var_0_17(var_65_1, math.floor(12 * var_65_0 + 0.5))
	local var_65_25 = math.max(1, var_65_24)
	local var_65_26 = math.max(1, math.floor(7 * var_65_0 + 0.5))
	local var_65_27 = math.max(1, var_65_24 + math.max(1, math.floor(5 * var_65_0 + 0.5)))
	local var_65_28 = math.floor(20 * var_65_0 + 0.5)

	if var_65_28 < 12 then
		var_65_28 = 12
	end

	local var_65_29 = math.floor(18 * var_65_0 + 0.5)

	if var_65_29 < 14 then
		var_65_29 = 14
	end

	local var_65_30 = math.floor(18 * var_65_0 + 0.5)

	if var_65_30 < 14 then
		var_65_30 = 14
	end

	__recovered_scope_0.var_0_0._modalHit = {
		active = true,
		arrows = {}
	}

	for iter_65_0 = 1, var_65_20 do
		local var_65_31 = var_65_13 + (iter_65_0 - 1) * (var_65_23 + var_65_22)

		love.graphics.setColor(0.14, 0.14, 0.14, 1)
		love.graphics.rectangle("fill", var_65_18, var_65_31, var_65_16, var_65_23)
		love.graphics.setColor(0.25, 0.25, 0.25, 1)
		love.graphics.rectangle("line", var_65_18 + 0.5, var_65_31 + 0.5, var_65_16 - 1, var_65_23 - 1)

		local var_65_32 = var_65_21[iter_65_0]
		local var_65_33 = var_65_18 + math.floor(4 * var_65_0 + 0.5)
		local var_65_34 = var_65_31 + math.floor(4 * var_65_0 + 0.5)

		__recovered_scope_0.var_0_66(__recovered_scope_0.var_0_0, var_65_32 and var_65_32.icon, var_65_33, var_65_34, math.min(var_65_28, var_65_23 - math.floor(8 * var_65_0 + 0.5)), 1)

		local var_65_35 = var_65_33 + var_65_28 + math.floor(6 * var_65_0 + 0.5)
		local var_65_36 = math.floor(6 * var_65_0 + 0.5)
		local var_65_37 = var_65_18 + var_65_16 - var_65_36 - var_65_29
		local var_65_38 = var_65_31 + math.floor((var_65_23 - var_65_30) / 2 + 0.5)

		table.insert(__recovered_scope_0.var_0_0._modalHit.arrows, {
			x = var_65_37,
			y = var_65_38,
			w = var_65_29,
			h = var_65_30,
			slot = iter_65_0
		})
		love.graphics.setColor(0.1, 0.1, 0.1, 1)
		love.graphics.rectangle("fill", var_65_37, var_65_38, var_65_29, var_65_30)
		love.graphics.setColor(0.55, 0.55, 0.55, 1)
		love.graphics.rectangle("line", var_65_37 + 0.5, var_65_38 + 0.5, var_65_29 - 1, var_65_30 - 1)
		love.graphics.setColor(0.9, 0.9, 0.9, 1)
		love.graphics.printf(">", var_65_37, var_65_38 + math.floor((var_65_30 - var_65_24) / 2 + 0.5), var_65_29, "center")

		local var_65_39 = var_65_37 - math.floor(6 * var_65_0 + 0.5) - var_65_35

		if var_65_39 < 10 then
			var_65_39 = 10
		end

		local var_65_40 = var_65_31 + math.floor(3 * var_65_0 + 0.5)

		if var_65_32 then
			love.graphics.setColor(1, 0.9, 0.5, 1)

			local var_65_41 = __recovered_scope_0.var_0_5.getImprintName(var_65_32.id, var_65_32.name or "Unknown", _G.currentGameLang or "ko") .. " " .. __recovered_scope_0.var_0_49(var_65_32.level or 1)

			__recovered_scope_0.var_0_0._printFitted(love.graphics.getFont(), var_65_41, var_65_35, var_65_40, var_65_39)
			love.graphics.setColor(0.9, 0.9, 0.9, 1)

			local var_65_42 = var_65_40 + var_65_25 + var_65_26
			local var_65_43 = var_65_31 + var_65_23 - var_65_42 - math.floor(3 * var_65_0 + 0.5)
			local var_65_44 = __recovered_scope_0.var_0_53(var_65_43, var_65_27)

			__recovered_scope_0.var_0_52(var_65_1, __recovered_scope_0.var_0_5.getImprintDesc(var_65_32.id, var_65_32.level, var_65_32.desc or "", _G.currentGameLang or "ko"), var_65_35, var_65_42, var_65_39, var_65_27, var_65_44)
		else
			love.graphics.setColor(0.6, 0.6, 0.6, 1)
			love.graphics.print(__recovered_scope_0.var_0_5.getText("imprint_empty_slot", _G.currentGameLang or "ko"), var_65_35, var_65_40)
		end
	end

	love.graphics.setColor(0.14, 0.14, 0.14, 1)
	love.graphics.rectangle("fill", var_65_19, var_65_13, var_65_17, var_65_15)
	love.graphics.setColor(0.25, 0.25, 0.25, 1)
	love.graphics.rectangle("line", var_65_19 + 0.5, var_65_13 + 0.5, var_65_17 - 1, var_65_15 - 1)

	local var_65_45 = arg_65_1.pending
	local var_65_46 = var_65_19 + math.floor(6 * var_65_0 + 0.5)
	local var_65_47 = var_65_13 + math.floor(6 * var_65_0 + 0.5)
	local var_65_48 = math.floor(28 * var_65_0 + 0.5)

	if var_65_48 < 14 then
		var_65_48 = 14
	end

	__recovered_scope_0.var_0_66(__recovered_scope_0.var_0_0, var_65_45 and var_65_45.icon, var_65_46, var_65_47, var_65_48, 1)

	local var_65_49 = var_65_46 + var_65_48 + math.floor(8 * var_65_0 + 0.5)
	local var_65_50 = var_65_19 + var_65_17 - var_65_49 - math.floor(6 * var_65_0 + 0.5)

	if var_65_50 < 10 then
		var_65_50 = 10
	end

	local var_65_51 = var_65_13 + math.floor(6 * var_65_0 + 0.5)

	love.graphics.setColor(0.65, 1, 0.65, 1)

	local var_65_52 = __recovered_scope_0.var_0_5.getImprintName(var_65_45.id, var_65_45.name or "New Imprint", _G.currentGameLang or "ko") .. " " .. __recovered_scope_0.var_0_49(var_65_45.level or 1)

	__recovered_scope_0.var_0_0._printFitted(love.graphics.getFont(), var_65_52, var_65_49, var_65_51, var_65_50)
	love.graphics.setColor(0.9, 0.9, 0.9, 1)

	local var_65_53 = var_65_51 + var_65_25 + var_65_26
	local var_65_54 = var_65_13 + var_65_15 - var_65_53 - math.floor(6 * var_65_0 + 0.5)
	local var_65_55 = __recovered_scope_0.var_0_53(var_65_54, var_65_27)

	__recovered_scope_0.var_0_52(var_65_1, __recovered_scope_0.var_0_5.getImprintDesc(var_65_45.id, var_65_45.level, var_65_45.desc or "", _G.currentGameLang or "ko"), var_65_49, var_65_53, var_65_50, var_65_27, var_65_55)
end

function __recovered_scope_0.var_0_0.notifyAbsorb(arg_66_0, arg_66_1)
	if not arg_66_0 then
		return
	end

	__recovered_scope_0.var_0_32.lastUnit = arg_66_0
	__recovered_scope_0.var_0_32.holdTimer = 1.3

	if arg_66_1 then
		__recovered_scope_0.var_0_32.blinkUnit = arg_66_0
		__recovered_scope_0.var_0_32.blinkSlot = arg_66_1
		__recovered_scope_0.var_0_32.blinkTimer = 1
		__recovered_scope_0.var_0_32.impactScales[arg_66_1] = 1
		__recovered_scope_0.var_0_32.floatOffsets[arg_66_1] = -8
	end
end

function __recovered_scope_0.var_0_0.isHoldActive()
	return (__recovered_scope_0.var_0_32.holdTimer or 0) > 0
end

function __recovered_scope_0.var_0_0.cancelHold()
	__recovered_scope_0.var_0_32.holdTimer = 0
	__recovered_scope_0.var_0_32.blinkTimer = 0
	__recovered_scope_0.var_0_32.blinkSlot = nil
	__recovered_scope_0.var_0_32.blinkUnit = nil

	for iter_68_0 = 1, 5 do
		__recovered_scope_0.var_0_32.impactScales[iter_68_0] = 0
		__recovered_scope_0.var_0_32.floatOffsets[iter_68_0] = 0
	end
end

function __recovered_scope_0.var_0_0.hidePanelImmediately()
	__recovered_scope_0.var_0_32.x = nil
	__recovered_scope_0.var_0_32.v = 0
	__recovered_scope_0.var_0_32.lastUnit = nil
	__recovered_scope_0.var_0_32.holdTimer = 0
	__recovered_scope_0.var_0_32.blinkTimer = 0
	__recovered_scope_0.var_0_32.blinkSlot = nil
	__recovered_scope_0.var_0_32.blinkUnit = nil
	__recovered_scope_0.var_0_32.previewImprint = nil
	__recovered_scope_0.var_0_32.lastPreviewImprint = nil
	__recovered_scope_0.var_0_32.previewAlpha = 0

	for iter_69_0 = 1, 5 do
		__recovered_scope_0.var_0_32.impactScales[iter_69_0] = 0
		__recovered_scope_0.var_0_32.floatOffsets[iter_69_0] = 0
	end

	__recovered_scope_0.var_0_0._panelRect = nil
	__recovered_scope_0.var_0_0._hit = {
		active = false
	}
	__recovered_scope_0.var_0_0._hoveredSlot = nil
	__recovered_scope_0.var_0_0._hoveredAbsorbIcon = nil
	__recovered_scope_0.var_0_0._awakeningRuneRect = nil
	ui._awakeningPanelRect = nil
	ui._awakeningInfo = nil
	__recovered_scope_0.var_0_0._hoveredFaction = nil
	__recovered_scope_0.var_0_0._hoveredRandomOption = nil
	__recovered_scope_0.var_0_0._hoveredSkill = nil
	__recovered_scope_0.var_0_0._absorbLockRect = nil
	__recovered_scope_0.var_0_0._absorbLockUnit = nil
	__recovered_scope_0.var_0_0._absorbLockDisplayUnit = nil
end

function __recovered_scope_0.var_0_0.showBattlefieldPreview(arg_70_0)
	if arg_70_0 then
		__recovered_scope_0.var_0_60(arg_70_0)
	end

	__recovered_scope_0.var_0_32.previewImprint = arg_70_0
end

function __recovered_scope_0.var_0_0.hideBattlefieldPreview()
	__recovered_scope_0.var_0_32.previewImprint = nil
end

function __recovered_scope_0.var_0_0.drawBattlefieldPreview(arg_72_0, arg_72_1, arg_72_2, arg_72_3, arg_72_4)
	__recovered_scope_0.var_0_32.convertHovering = false

	local var_72_0 = __recovered_scope_0.var_0_2.compute(arg_72_0)
	local var_72_1 = var_72_0 and var_72_0.right

	if not var_72_1 then
		return
	end

	local var_72_2 = arg_72_0.scale or 1
	local var_72_3 = var_72_1.y + math.floor(10 * var_72_2 + 0.5)
	local var_72_4 = var_72_1.y - math.floor(80 * var_72_2 + 0.5)

	if __recovered_scope_0.var_0_32.previewImprint then
		if __recovered_scope_0.var_0_32.previewAlpha <= 0 or not __recovered_scope_0.var_0_32.lastPreviewImprint then
			__recovered_scope_0.var_0_32.previewY = var_72_4
			__recovered_scope_0.var_0_32.lastPreviewImprint = __recovered_scope_0.var_0_32.previewImprint
		elseif __recovered_scope_0.var_0_32.lastPreviewImprint.id ~= __recovered_scope_0.var_0_32.previewImprint.id then
			__recovered_scope_0.var_0_32.lastPreviewImprint = __recovered_scope_0.var_0_32.previewImprint
		end

		__recovered_scope_0.var_0_32.previewY = __recovered_scope_0.var_0_32.previewY + (var_72_3 - __recovered_scope_0.var_0_32.previewY) * math.min(1, arg_72_1 * 12)
		__recovered_scope_0.var_0_32.previewAlpha = math.min(1, __recovered_scope_0.var_0_32.previewAlpha + arg_72_1 * 8)
	else
		__recovered_scope_0.var_0_32.previewY = __recovered_scope_0.var_0_32.previewY + (var_72_4 - __recovered_scope_0.var_0_32.previewY) * math.min(1, arg_72_1 * 10)
		__recovered_scope_0.var_0_32.previewAlpha = math.max(0, __recovered_scope_0.var_0_32.previewAlpha - arg_72_1 * 10)
	end

	if __recovered_scope_0.var_0_32.previewAlpha <= 0 and not __recovered_scope_0.var_0_32.previewImprint then
		__recovered_scope_0.var_0_32.lastPreviewImprint = nil
		__recovered_scope_0.var_0_32.previewScale = 1

		return
	end

	local var_72_5 = __recovered_scope_0.var_0_32.lastPreviewImprint

	if not var_72_5 then
		return
	end

	local var_72_6 = __recovered_scope_0.var_0_0._slotBgImage
	local var_72_7 = var_72_6 and var_72_6:getWidth() or 160
	local var_72_8 = var_72_6 and var_72_6:getHeight() or 40
	local var_72_9 = var_72_7

	if arg_72_0.imprintPanel and arg_72_0.imprintPanel.slotW then
		var_72_9 = math.floor(arg_72_0.imprintPanel.slotW * var_72_2 + 0.5)
	end

	local var_72_10 = var_72_1.x + (var_72_1.w - var_72_9) / 2
	local var_72_11 = 0
	local var_72_12 = 0

	if arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview then
		var_72_11 = tonumber(arg_72_0.imprintPanel.preview.offsetX or 0) * var_72_2
		var_72_12 = tonumber(arg_72_0.imprintPanel.preview.offsetY or 0) * var_72_2
	end

	local var_72_13 = var_72_10 + var_72_11
	local var_72_14 = math.floor(__recovered_scope_0.var_0_32.previewY + var_72_12 + 0.5)

	__recovered_scope_0.var_0_0._hoveredSlot = __recovered_scope_0.var_0_0._hoveredSlot or nil

	local var_72_15 = 0
	local var_72_16 = 0

	if arg_72_0.imprintPanel and arg_72_0.imprintPanel.slotBg then
		var_72_15 = tonumber(arg_72_0.imprintPanel.slotBg.offsetX or 0)
		var_72_16 = tonumber(arg_72_0.imprintPanel.slotBg.offsetY or 0)
	end

	local var_72_17 = false

	if __recovered_scope_0.var_0_32.previewImprint and __recovered_scope_0.var_0_32.previewAlpha > 0.5 then
		local var_72_18 = var_72_13 + var_72_15
		local var_72_19 = var_72_14 + var_72_16

		if var_72_18 <= arg_72_3 and arg_72_3 <= var_72_18 + var_72_7 and var_72_19 <= arg_72_4 and arg_72_4 <= var_72_19 + var_72_8 then
			var_72_17 = true
		end
	end

	local var_72_20 = var_72_17 and 1.15 or 1

	__recovered_scope_0.var_0_32.previewScale = __recovered_scope_0.var_0_32.previewScale + (var_72_20 - __recovered_scope_0.var_0_32.previewScale) * math.min(1, arg_72_1 * 12)

	local var_72_21 = __recovered_scope_0.var_0_32.previewScale

	if var_72_17 then
		local var_72_22 = var_72_20
		local var_72_23 = var_72_13 + var_72_15 + var_72_7 / 2
		local var_72_24 = var_72_14 + var_72_16 + var_72_8 / 2
		local var_72_25 = __recovered_scope_0.var_0_0._slotTrimmedOffsetX or 0
		local var_72_26 = __recovered_scope_0.var_0_0._slotTrimmedW or var_72_7
		local var_72_27 = var_72_13 + var_72_15 + var_72_25
		local var_72_28 = var_72_14 + var_72_16
		local var_72_29 = var_72_23 + (var_72_27 - var_72_23) * var_72_22
		local var_72_30 = var_72_24 + (var_72_28 - var_72_24) * var_72_22

		__recovered_scope_0.var_0_0._hoveredSlot = {
			index = -1,
			imprint = var_72_5,
			x = var_72_29,
			y = var_72_30,
			w = var_72_26 * var_72_22,
			h = var_72_8 * var_72_22,
			scale = var_72_21,
			tooltipScale = var_72_22
		}
	end

	local var_72_31 = var_72_13 + var_72_15 + var_72_7 / 2
	local var_72_32 = var_72_14 + var_72_16 + var_72_8 / 2

	if __recovered_scope_0.var_0_0._gainBgImage then
		local var_72_33 = __recovered_scope_0.var_0_0._gainBgImage
		local var_72_34, var_72_35 = var_72_33:getDimensions()
		local var_72_36 = 0
		local var_72_37 = -10

		if arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview and arg_72_0.imprintPanel.preview.gainBg then
			var_72_36 = tonumber(arg_72_0.imprintPanel.preview.gainBg.offsetX or 0)
			var_72_37 = tonumber(arg_72_0.imprintPanel.preview.gainBg.offsetY or -10)
		end

		local var_72_38 = math.floor(var_72_31 - var_72_34 / 2 + var_72_36 + 0.5)
		local var_72_39 = math.floor(var_72_32 - var_72_35 / 2 + var_72_37 + 0.5)
		local var_72_40 = arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview and arg_72_0.imprintPanel.preview.gainLabel
		local var_72_41 = var_72_40 and var_72_40.text or __recovered_scope_0.var_0_5.getText("imprint_gained_label", _G.currentGameLang or "ko")
		local var_72_42 = __recovered_scope_0.var_0_35() or arg_72_0.font
		local var_72_43 = var_72_42 and __recovered_scope_0.var_0_16(var_72_42, var_72_41) or 0
		local var_72_44 = math.max(0, math.ceil(var_72_43 + 16 - __recovered_scope_0.var_0_0.GAIN_TAB_INNER_W))
		local var_72_45 = math.min(var_72_44, __recovered_scope_0.var_0_0.GAIN_TAB_MAX_EXTRA)

		love.graphics.setColor(1, 1, 1, __recovered_scope_0.var_0_32.previewAlpha)
		__recovered_scope_0.var_0_0._drawGainPlate(var_72_33, var_72_38, var_72_39, var_72_45)

		if var_72_42 then
			local var_72_46 = love.graphics.getFont()

			love.graphics.setFont(var_72_42)

			local var_72_47 = math.min(var_72_43, __recovered_scope_0.var_0_0.GAIN_TAB_INNER_W + var_72_45 - 16) - var_72_45
			local var_72_48 = -42
			local var_72_49 = 5

			if var_72_40 then
				var_72_48 = tonumber(var_72_40.offsetX or -42)
				var_72_49 = tonumber(var_72_40.offsetY or 5)
			end

			local var_72_50 = math.floor(var_72_31 - var_72_47 / 2 + var_72_48 + 0.5)
			local var_72_51 = var_72_39 + math.floor(var_72_49 + 0.5)

			love.graphics.setColor(1, 0.95, 0.8, __recovered_scope_0.var_0_32.previewAlpha)

			local var_72_52 = math.min(var_72_43, __recovered_scope_0.var_0_0.GAIN_TAB_INNER_W + var_72_45 - 16)
			local var_72_53 = require("src.ui.widgets").text_fit

			var_72_53.draw(var_72_53.fit(var_72_41, var_72_52, var_72_42, {}), var_72_50, var_72_51, var_72_52, var_72_42:getHeight(), {
				key = "imprint_gain:" .. var_72_41
			})
			love.graphics.setFont(var_72_46)
		end
	end

	love.graphics.push()
	love.graphics.translate(var_72_31, var_72_32)
	love.graphics.scale(var_72_21, var_72_21)
	love.graphics.translate(-var_72_31, -var_72_32)

	if var_72_5.icon then
		local var_72_54 = __recovered_scope_0.var_0_63(__recovered_scope_0.var_0_0, var_72_5.icon)

		if var_72_54 then
			local var_72_55, var_72_56 = var_72_54:getDimensions()
			local var_72_57 = 4
			local var_72_58 = 0

			if arg_72_0.imprintPanel and arg_72_0.imprintPanel.iconOffset then
				var_72_57 = tonumber(arg_72_0.imprintPanel.iconOffset.x) or 4
				var_72_58 = tonumber(arg_72_0.imprintPanel.iconOffset.y) or 0
			end

			love.graphics.setColor(1, 1, 1, __recovered_scope_0.var_0_32.previewAlpha)
			love.graphics.draw(var_72_54, var_72_13 + math.floor(var_72_57 * var_72_2 + 0.5), var_72_14 + math.floor((var_72_8 - var_72_56) / 2) + math.floor(var_72_58 * var_72_2 + 0.5))
		end
	end

	if var_72_6 then
		local var_72_59 = var_72_5 and tostring(var_72_5.rarity or ""):lower()
		local var_72_60 = var_72_59 == "special"
		local var_72_61 = var_72_59 == "advanced"
		local var_72_62 = var_72_59 == "rare" or var_72_59 == "r"
		local var_72_63 = var_72_59 == "legendary" or var_72_59 == "legend" or var_72_59 == "l"
		local var_72_64 = var_72_59 == "prism" or var_72_59 == "p"
		local var_72_65 = var_72_60 and __recovered_scope_0.var_0_37()
		local var_72_66 = var_72_61 and __recovered_scope_0.var_0_39()
		local var_72_67 = var_72_62 and __recovered_scope_0.var_0_41()
		local var_72_68 = var_72_63 and __recovered_scope_0.var_0_43()
		local var_72_69 = var_72_64 and __recovered_scope_0.var_0_45()
		local var_72_70 = var_72_65 or var_72_66 or var_72_67 or var_72_68 or var_72_69

		if var_72_70 then
			if var_72_64 and var_72_70:hasUniform("u_time") then
				local var_72_71 = var_72_70

				local function var_72_72(arg_73_0, arg_73_1)
					if var_72_71:hasUniform(arg_73_0) then
						var_72_71:send(arg_73_0, arg_73_1)
					end
				end

				var_72_72("u_time", love.timer.getTime() % 10000)
				var_72_72("u_uiBase", {
					0.24313725490196078,
					0.20784313725490197,
					0.27450980392156865
				})
				var_72_72("u_dir", {
					1,
					0.4
				})
				var_72_72("u_cycle", 4)
				var_72_72("u_scale", 2)
				var_72_72("u_grainScale", 3)
				var_72_72("u_grainAmp", 0.2)
				var_72_72("u_filmFreq", 2)
				var_72_72("u_filmAmp", 0.25)
				var_72_72("u_specular", 0.5)
				var_72_72("u_fresnelPow", 2.5)
				var_72_72("u_colorGain", 1.8)
				var_72_72("u_saturation", 1.5)
				var_72_72("u_mixBP", 0.32)
			end

			love.graphics.setShader(var_72_70)
		end

		love.graphics.setColor(1, 1, 1, __recovered_scope_0.var_0_32.previewAlpha)
		love.graphics.draw(var_72_6, var_72_13 + var_72_15, var_72_14 + var_72_16, 0, 1, 1)

		if var_72_70 then
			love.graphics.setShader()
		end
	end

	local var_72_73 = __recovered_scope_0.var_0_35()
	local var_72_74 = love.graphics.getFont()

	if var_72_73 then
		love.graphics.setFont(var_72_73)
	end

	local var_72_75 = __recovered_scope_0.var_0_17(var_72_73 or arg_72_0 and arg_72_0.font, 12)
	local var_72_76 = 32

	if var_72_5.icon then
		local var_72_77 = __recovered_scope_0.var_0_63(__recovered_scope_0.var_0_0, var_72_5.icon)

		if var_72_77 then
			var_72_76 = var_72_77:getWidth()
		end
	end

	local var_72_78 = 8
	local var_72_79 = 3
	local var_72_80 = 8
	local var_72_81 = 4

	if arg_72_0.imprintPanel then
		if arg_72_0.imprintPanel.imprintName then
			var_72_78 = tonumber(arg_72_0.imprintPanel.imprintName.offsetX) or 8
			var_72_79 = tonumber(arg_72_0.imprintPanel.imprintName.offsetY) or 3
		end

		if arg_72_0.imprintPanel.imprintDesc then
			var_72_80 = tonumber(arg_72_0.imprintPanel.imprintDesc.offsetX) or 8
			var_72_81 = tonumber(arg_72_0.imprintPanel.imprintDesc.gapY) or 4
		end
	end

	local var_72_82 = var_72_13 + var_72_76 + math.floor(var_72_78 * var_72_2 + 0.5)
	local var_72_83 = var_72_14 + math.floor(var_72_79 * var_72_2 + 0.5)

	love.graphics.setColor(1, 0.9, 0.5, __recovered_scope_0.var_0_32.previewAlpha)

	local var_72_84 = __recovered_scope_0.var_0_5.getImprintName(var_72_5.id, var_72_5.name or "Unknown Imprint", _G.currentGameLang or "ko") .. " " .. __recovered_scope_0.var_0_49(var_72_5.level or 1)

	__recovered_scope_0.var_0_0._printFitted(var_72_73 or arg_72_0.font, var_72_84, var_72_82, var_72_83, var_72_13 + var_72_9 - var_72_82 - math.floor(8 * var_72_2 + 0.5))

	local var_72_85 = var_72_13 + var_72_76 + math.floor(var_72_80 * var_72_2 + 0.5)
	local var_72_86 = var_72_83 + var_72_75 + math.floor(var_72_81 * var_72_2 + 0.5)
	local var_72_87 = var_72_13 + var_72_9 - var_72_85 - math.floor(4 * var_72_2 + 0.5)

	if var_72_87 < 10 then
		var_72_87 = 10
	end

	local var_72_88 = math.max(1, var_72_75 + math.max(1, math.floor(5 * var_72_2 + 0.5)))
	local var_72_89 = var_72_14 + var_72_8 - var_72_86 - math.floor(3 * var_72_2 + 0.5)
	local var_72_90 = __recovered_scope_0.var_0_53(var_72_89, var_72_88)

	love.graphics.setColor(0.9, 0.9, 0.9, __recovered_scope_0.var_0_32.previewAlpha)

	local var_72_91 = __recovered_scope_0.var_0_0.getShortIconImage(__recovered_scope_0.var_0_0, var_72_5.id)
	local var_72_92 = var_72_85

	if var_72_91 then
		local var_72_93, var_72_94 = var_72_91:getDimensions()
		local var_72_95 = var_72_85
		local var_72_96 = var_72_86 + math.floor((var_72_88 - var_72_94) / 2)

		love.graphics.setColor(1, 1, 1, __recovered_scope_0.var_0_32.previewAlpha)
		love.graphics.draw(var_72_91, var_72_95, var_72_96)

		var_72_92 = var_72_92 + var_72_93 + math.floor(2 * var_72_2 + 0.5)
	end

	love.graphics.setColor(0.9, 0.9, 0.9, __recovered_scope_0.var_0_32.previewAlpha)
	__recovered_scope_0.var_0_52(var_72_73 or arg_72_0.font, __recovered_scope_0.var_0_5.getImprintShortDesc(var_72_5.id, var_72_5.shortDesc or "", _G.currentGameLang or "ko"), var_72_92, var_72_86, var_72_87 - (var_72_92 - var_72_85), var_72_88, var_72_90)

	if var_72_73 then
		love.graphics.setFont(var_72_74)
	end

	love.graphics.pop()

	if arg_72_2 and __recovered_scope_0.var_0_32.previewAlpha > 0.5 then
		local var_72_97 = __recovered_scope_0.var_0_0._cancelBtnImage
		local var_72_98 = var_72_9
		local var_72_99 = math.floor(26 * var_72_2 + 0.5)

		if var_72_97 then
			var_72_98, var_72_99 = var_72_97:getDimensions()
		end

		local var_72_100 = math.floor(6 * var_72_2 + 0.5)
		local var_72_101 = arg_72_2 and __recovered_scope_0.var_0_0._previewConvertInfo or nil
		local var_72_102 = (var_72_101 and var_72_101.label) ~= nil
		local var_72_103 = 0

		if var_72_102 and arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview and arg_72_0.imprintPanel.preview.cancelBtnWhenConvert then
			var_72_103 = tonumber(arg_72_0.imprintPanel.preview.cancelBtnWhenConvert.extraDown or 0) * var_72_2
		elseif var_72_102 then
			var_72_103 = math.floor(8 * var_72_2 + 0.5)
		end

		local var_72_104 = 0
		local var_72_105 = 0

		if arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview and arg_72_0.imprintPanel.preview.cancelBtn then
			var_72_104 = tonumber(arg_72_0.imprintPanel.preview.cancelBtn.offsetX or 0) * var_72_2
			var_72_105 = tonumber(arg_72_0.imprintPanel.preview.cancelBtn.offsetY or 0) * var_72_2
		end

		local var_72_106 = var_72_13 + (var_72_9 - var_72_98) / 2 + var_72_104
		local var_72_107 = var_72_14 + var_72_8 + var_72_100 + var_72_105
		local var_72_108 = var_72_107 + var_72_103
		local var_72_109
		local var_72_110 = false

		if var_72_102 then
			local var_72_111 = 0
			local var_72_112 = 0

			if arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview and arg_72_0.imprintPanel.preview.convertBtn then
				var_72_111 = tonumber(arg_72_0.imprintPanel.preview.convertBtn.offsetX or 0) * var_72_2
				var_72_112 = tonumber(arg_72_0.imprintPanel.preview.convertBtn.offsetY or 0) * var_72_2
			end

			local var_72_113 = var_72_106 + var_72_111
			local var_72_114 = var_72_107 - (var_72_99 + var_72_100) + var_72_112

			var_72_109 = {
				kind = "convert",
				x = var_72_113,
				y = var_72_114,
				w = var_72_98,
				h = var_72_99
			}

			if var_72_113 <= arg_72_3 and arg_72_3 <= var_72_113 + var_72_98 and var_72_114 <= arg_72_4 and arg_72_4 <= var_72_114 + var_72_99 then
				var_72_110 = true
				__recovered_scope_0.var_0_32.convertHovering = true
			end

			local var_72_115 = 1

			if __recovered_scope_0.var_0_32.convertBtnPressed then
				var_72_115 = 0.9
			elseif var_72_110 then
				var_72_115 = 1.08
			end

			__recovered_scope_0.var_0_32.convertBtnScale = __recovered_scope_0.var_0_32.convertBtnScale + (var_72_115 - __recovered_scope_0.var_0_32.convertBtnScale) * math.min(1, arg_72_1 * 15)

			local var_72_116 = __recovered_scope_0.var_0_32.convertBtnScale

			love.graphics.push()

			local var_72_117 = var_72_113 + var_72_98 / 2
			local var_72_118 = var_72_114 + var_72_99 / 2

			love.graphics.translate(var_72_117, var_72_118)
			love.graphics.scale(var_72_116, var_72_116)
			love.graphics.translate(-var_72_117, -var_72_118)
			love.graphics.setColor(1, 1, 1, __recovered_scope_0.var_0_32.previewAlpha)

			local var_72_119 = __recovered_scope_0.var_0_47()
			local var_72_120 = love.graphics.getShader()

			if var_72_119 then
				love.graphics.setShader(var_72_119)
			end

			if var_72_97 then
				love.graphics.draw(var_72_97, var_72_113, var_72_114)
			else
				love.graphics.setColor(0.12, 0.12, 0.12, 0.94 * __recovered_scope_0.var_0_32.previewAlpha)
				love.graphics.rectangle("fill", var_72_113, var_72_114, var_72_98, var_72_99)
				love.graphics.setColor(0.55, 0.55, 0.55, __recovered_scope_0.var_0_32.previewAlpha)
				love.graphics.rectangle("line", var_72_113 + 0.5, var_72_114 + 0.5, var_72_98 - 1, var_72_99 - 1)
			end

			if var_72_119 then
				love.graphics.setShader(var_72_120)
			end

			local var_72_121 = tostring(var_72_101.label)
			local var_72_122 = __recovered_scope_0.var_0_35() or arg_72_0.font
			local var_72_123 = 0
			local var_72_124 = 0

			if arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview and arg_72_0.imprintPanel.preview.convertLabel then
				var_72_123 = tonumber(arg_72_0.imprintPanel.preview.convertLabel.offsetX or 0) * var_72_2
				var_72_124 = tonumber(arg_72_0.imprintPanel.preview.convertLabel.offsetY or 0) * var_72_2
			end

			if var_72_122 then
				local var_72_125 = love.graphics.getFont()

				love.graphics.setFont(var_72_122)

				local var_72_126 = var_72_122:getHeight()
				local var_72_127 = __recovered_scope_0.var_0_0._buttonTextW(var_72_97, var_72_98)
				local var_72_128 = require("src.ui.widgets").text_fit
				local var_72_129 = math.floor(var_72_113 + var_72_98 / 2 - var_72_127 / 2 + var_72_123 + 0.5)
				local var_72_130 = math.floor(var_72_114 + (var_72_99 - var_72_126) / 2 + var_72_124 + 0.5)

				love.graphics.setColor(1, 0.95, 0.8, __recovered_scope_0.var_0_32.previewAlpha)
				var_72_128.draw(var_72_128.fit(var_72_121, var_72_127, var_72_122, {}), var_72_129, var_72_130, var_72_127, var_72_126, {
					align = "center",
					key = "imprint_convert"
				})
				love.graphics.setFont(var_72_125)
			end

			love.graphics.pop()
		else
			__recovered_scope_0.var_0_32.convertBtnScale = 1
			__recovered_scope_0.var_0_32.convertBtnPressed = false
			__recovered_scope_0.var_0_32.convertBtnTimer = 0
		end

		local var_72_131 = false

		if var_72_106 <= arg_72_3 and arg_72_3 <= var_72_106 + var_72_98 and var_72_108 <= arg_72_4 and arg_72_4 <= var_72_108 + var_72_99 then
			var_72_131 = true
		end

		local var_72_132 = 1

		if __recovered_scope_0.var_0_32.cancelBtnPressed then
			var_72_132 = 0.9
		elseif var_72_131 then
			var_72_132 = 1.08
		end

		__recovered_scope_0.var_0_32.cancelBtnScale = __recovered_scope_0.var_0_32.cancelBtnScale + (var_72_132 - __recovered_scope_0.var_0_32.cancelBtnScale) * math.min(1, arg_72_1 * 15)

		local var_72_133 = __recovered_scope_0.var_0_32.cancelBtnScale

		love.graphics.push()

		local var_72_134 = var_72_106 + var_72_98 / 2
		local var_72_135 = var_72_108 + var_72_99 / 2

		love.graphics.translate(var_72_134, var_72_135)
		love.graphics.scale(var_72_133, var_72_133)
		love.graphics.translate(-var_72_134, -var_72_135)
		love.graphics.setColor(1, 1, 1, __recovered_scope_0.var_0_32.previewAlpha)

		if var_72_97 then
			love.graphics.draw(var_72_97, var_72_106, var_72_108)
		else
			love.graphics.setColor(0.12, 0.12, 0.12, 0.94 * __recovered_scope_0.var_0_32.previewAlpha)
			love.graphics.rectangle("fill", var_72_106, var_72_108, var_72_98, var_72_99)
			love.graphics.setColor(0.55, 0.55, 0.55, __recovered_scope_0.var_0_32.previewAlpha)
			love.graphics.rectangle("line", var_72_106 + 0.5, var_72_108 + 0.5, var_72_98 - 1, var_72_99 - 1)

			local var_72_136 = __recovered_scope_0.var_0_5.getText("imprint_absorb_cancel", _G.currentGameLang or "ko")
			local var_72_137 = arg_72_0.font
			local var_72_138 = __recovered_scope_0.var_0_16(var_72_137, var_72_136)
			local var_72_139 = __recovered_scope_0.var_0_17(var_72_137, math.floor(12 * var_72_2 + 0.5))
			local var_72_140 = var_72_106 + math.floor((var_72_98 - var_72_138) * 0.5 + 0.5)
			local var_72_141 = var_72_108 + math.floor((var_72_99 - var_72_139) * 0.5 + 0.5)

			love.graphics.setColor(0.95, 0.95, 0.95, __recovered_scope_0.var_0_32.previewAlpha)

			local var_72_142 = love.graphics.getFont()

			if var_72_137 then
				love.graphics.setFont(var_72_137)
			end

			love.graphics.print(var_72_136, var_72_140, var_72_141)
			love.graphics.setFont(var_72_142)
		end

		local var_72_143 = arg_72_0.imprintPanel and arg_72_0.imprintPanel.preview and arg_72_0.imprintPanel.preview.cancelLabel
		local var_72_144 = var_72_143 and var_72_143.text or __recovered_scope_0.var_0_5.getText("imprint_absorb_cancel", _G.currentGameLang or "ko")
		local var_72_145 = __recovered_scope_0.var_0_35() or arg_72_0.font

		if var_72_145 then
			local var_72_146 = love.graphics.getFont()

			love.graphics.setFont(var_72_145)

			local var_72_147 = 0
			local var_72_148 = -12

			if var_72_143 then
				var_72_147 = tonumber(var_72_143.offsetX or 0) * var_72_2
				var_72_148 = tonumber(var_72_143.offsetY or -12) * var_72_2
			end

			local var_72_149 = __recovered_scope_0.var_0_0._buttonTextW(var_72_97, var_72_98)
			local var_72_150 = require("src.ui.widgets").text_fit
			local var_72_151 = math.floor(var_72_106 + var_72_98 / 2 - var_72_149 / 2 + var_72_147 + 0.5)
			local var_72_152 = math.floor(var_72_108 + var_72_148 + 0.5)

			love.graphics.setColor(1, 0.95, 0.8, __recovered_scope_0.var_0_32.previewAlpha)
			var_72_150.draw(var_72_150.fit(var_72_144, var_72_149, var_72_145, {}), var_72_151, var_72_152, var_72_149, var_72_145:getHeight(), {
				align = "center",
				key = "imprint_absorb_cancel"
			})
			love.graphics.setFont(var_72_146)
		end

		love.graphics.pop()
		love.graphics.setColor(1, 1, 1, 1)

		__recovered_scope_0.var_0_0._hudHit = {
			active = true,
			cancelBtn = {
				kind = "cancel",
				x = var_72_106,
				y = var_72_108,
				w = var_72_98,
				h = var_72_99
			}
		}

		if var_72_109 then
			__recovered_scope_0.var_0_0._modalHit = __recovered_scope_0.var_0_0._modalHit or {
				active = true,
				buttons = {},
				arrows = {}
			}
			__recovered_scope_0.var_0_0._modalHit.active = true
			__recovered_scope_0.var_0_0._modalHit.buttons = __recovered_scope_0.var_0_0._modalHit.buttons or {}

			table.insert(__recovered_scope_0.var_0_0._modalHit.buttons, var_72_109)
		end

		if __recovered_scope_0.var_0_32.convertBtnTimer > 0 then
			__recovered_scope_0.var_0_32.convertBtnTimer = __recovered_scope_0.var_0_32.convertBtnTimer - arg_72_1

			if __recovered_scope_0.var_0_32.convertBtnTimer <= 0 then
				__recovered_scope_0.var_0_32.convertBtnPressed = false
				__recovered_scope_0.var_0_0._convertTriggered = true
			end
		end

		if __recovered_scope_0.var_0_32.cancelBtnTimer > 0 then
			__recovered_scope_0.var_0_32.cancelBtnTimer = __recovered_scope_0.var_0_32.cancelBtnTimer - arg_72_1

			if __recovered_scope_0.var_0_32.cancelBtnTimer <= 0 then
				__recovered_scope_0.var_0_32.cancelBtnPressed = false
				__recovered_scope_0.var_0_0._cancelTriggered = true
			end
		end
	else
		__recovered_scope_0.var_0_0._hudHit = {
			active = false
		}
		__recovered_scope_0.var_0_32.cancelBtnScale = 1
		__recovered_scope_0.var_0_32.cancelBtnPressed = false
		__recovered_scope_0.var_0_32.cancelBtnTimer = 0
		__recovered_scope_0.var_0_32.convertBtnScale = 1
		__recovered_scope_0.var_0_32.convertBtnPressed = false
		__recovered_scope_0.var_0_32.convertBtnTimer = 0

		if not arg_72_2 then
			__recovered_scope_0.var_0_0._cancelTriggered = false
			__recovered_scope_0.var_0_0._convertTriggered = false
		end
	end
end

function __recovered_scope_0.var_0_0.draw(arg_74_0, arg_74_1, arg_74_2)
	local __recovered_scope_1 = {}
if not arg_74_0 then
		return
	end

	 __recovered_scope_1.var_74_0 = arg_74_2 and arg_74_2.mx or -9999
	 __recovered_scope_1.var_74_1 = arg_74_2 and arg_74_2.my or -9999
	 __recovered_scope_1.var_74_2 = __recovered_scope_0.var_0_0._hoveredRandomOption and __recovered_scope_0.var_0_0._hoveredRandomOption.anchor and __recovered_scope_0.var_0_0._hoveredRandomOption.anchor.index

	__recovered_scope_0.var_0_0._hoveredSlot = nil
	__recovered_scope_0.var_0_0._hoveredAbsorbIcon = nil
	__recovered_scope_0.var_0_0._hoveredFaction = nil
	__recovered_scope_0.var_0_0._absorbLockRect = nil
	__recovered_scope_0.var_0_0._absorbLockUnit = nil
	__recovered_scope_0.var_0_0._absorbLockDisplayUnit = nil
	__recovered_scope_0.var_0_0._previewConvertInfo = nil
	__recovered_scope_0.var_0_0._hoveredRandomOption = nil
	__recovered_scope_0.var_0_0._hoveredSkill = nil
	__recovered_scope_0.var_0_0._skillFrameRect = nil
	__recovered_scope_0.var_0_0._awakeningRuneRect = nil
	arg_74_0._awakeningPanelRect = nil
	arg_74_0._awakeningInfo = nil
	__recovered_scope_0.var_0_32.replaceHovering = __recovered_scope_0.var_0_32.replaceHoveringNext == true
	__recovered_scope_0.var_0_32.replaceHoveringNext = false

	 __recovered_scope_1.var_74_3 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	 __recovered_scope_1.var_74_4 = nil

	if __recovered_scope_0.var_0_32.lastTime then
		__recovered_scope_1.var_74_4 = __recovered_scope_1.var_74_3 - __recovered_scope_0.var_0_32.lastTime
	else
		__recovered_scope_1.var_74_4 = 0
	end

	__recovered_scope_0.var_0_32.lastTime = __recovered_scope_1.var_74_3

	if __recovered_scope_1.var_74_4 < 0 then
		__recovered_scope_1.var_74_4 = 0
	end

	if __recovered_scope_1.var_74_4 > 0.1 then
		__recovered_scope_1.var_74_4 = 0.1
	end

	if __recovered_scope_0.var_0_32.holdTimer > 0 then
		__recovered_scope_0.var_0_32.holdTimer = __recovered_scope_0.var_0_32.holdTimer - __recovered_scope_1.var_74_4
	end

	if __recovered_scope_0.var_0_32.blinkTimer > 0 then
		__recovered_scope_0.var_0_32.blinkTimer = __recovered_scope_0.var_0_32.blinkTimer - __recovered_scope_1.var_74_4

		if __recovered_scope_0.var_0_32.blinkTimer <= 0 then
			__recovered_scope_0.var_0_32.blinkUnit = nil
			__recovered_scope_0.var_0_32.blinkSlot = nil
		end
	end

	if __recovered_scope_0.var_0_32.upgradeBtnTimer > 0 then
		__recovered_scope_0.var_0_32.upgradeBtnTimer = __recovered_scope_0.var_0_32.upgradeBtnTimer - __recovered_scope_1.var_74_4

		if __recovered_scope_0.var_0_32.upgradeBtnTimer <= 0 then
			__recovered_scope_0.var_0_32.upgradeBtnPressed = false
			__recovered_scope_0.var_0_0._upgradeTriggered = true
		end
	elseif not (arg_74_2 and arg_74_2.modal and arg_74_2.modal.active) then
		__recovered_scope_0.var_0_0._upgradeTriggered = false
		__recovered_scope_0.var_0_0._upgradeSlot = nil
		__recovered_scope_0.var_0_32.upgradeBtnPressed = false
		__recovered_scope_0.var_0_32.upgradeBtnTimer = 0
	end

	if __recovered_scope_0.var_0_32.confirmBtnTimer > 0 then
		__recovered_scope_0.var_0_32.confirmBtnTimer = __recovered_scope_0.var_0_32.confirmBtnTimer - __recovered_scope_1.var_74_4

		if __recovered_scope_0.var_0_32.confirmBtnTimer <= 0 then
			__recovered_scope_0.var_0_32.confirmBtnPressed = false
			__recovered_scope_0.var_0_0._confirmTriggered = true
		end
	elseif not (arg_74_2 and arg_74_2.modal and arg_74_2.modal.active) then
		__recovered_scope_0.var_0_0._confirmTriggered = false
		__recovered_scope_0.var_0_0._confirmSlot = nil
		__recovered_scope_0.var_0_0._confirmAction = nil
		__recovered_scope_0.var_0_32.confirmBtnPressed = false
		__recovered_scope_0.var_0_32.confirmBtnTimer = 0

		for iter_74_0 = 1, 5 do
			__recovered_scope_0.var_0_32.actionBtnScales[iter_74_0] = 0.8
		end
	end

	if __recovered_scope_0.var_0_32.changeBtnTimer > 0 then
		__recovered_scope_0.var_0_32.changeBtnTimer = __recovered_scope_0.var_0_32.changeBtnTimer - __recovered_scope_1.var_74_4

		if __recovered_scope_0.var_0_32.changeBtnTimer <= 0 then
			__recovered_scope_0.var_0_32.changeBtnPressed = false
			__recovered_scope_0.var_0_0._changeTriggered = true
		end
	elseif not (arg_74_2 and arg_74_2.modal and arg_74_2.modal.active) then
		__recovered_scope_0.var_0_0._changeTriggered = false
		__recovered_scope_0.var_0_0._changeSlot = nil
		__recovered_scope_0.var_0_32.changeBtnPressed = false
		__recovered_scope_0.var_0_32.changeBtnTimer = 0
	end

	for iter_74_1 = 1, 5 do
		if __recovered_scope_0.var_0_32.impactScales[iter_74_1] > 0 then
			__recovered_scope_0.var_0_32.impactScales[iter_74_1] = __recovered_scope_0.var_0_32.impactScales[iter_74_1] - __recovered_scope_1.var_74_4 * 3

			if __recovered_scope_0.var_0_32.impactScales[iter_74_1] < 0 then
				__recovered_scope_0.var_0_32.impactScales[iter_74_1] = 0
			end
		end

		if __recovered_scope_0.var_0_32.floatOffsets[iter_74_1] ~= 0 then
			__recovered_scope_0.var_0_32.floatOffsets[iter_74_1] = __recovered_scope_0.var_0_32.floatOffsets[iter_74_1] * math.exp(-__recovered_scope_1.var_74_4 * 10)

			if math.abs(__recovered_scope_0.var_0_32.floatOffsets[iter_74_1]) < 0.1 then
				__recovered_scope_0.var_0_32.floatOffsets[iter_74_1] = 0
			end
		end
	end

	 __recovered_scope_1.var_74_5 = arg_74_1 ~= nil
	 __recovered_scope_1.var_74_6 = arg_74_2 and arg_74_2.modal or nil
	 __recovered_scope_1.var_74_7 = __recovered_scope_1.var_74_6 and __recovered_scope_1.var_74_6.active and __recovered_scope_1.var_74_6.absorber

	if arg_74_2 and arg_74_2.progress ~= nil then
		__recovered_scope_1.var_74_5 = __recovered_scope_0.var_0_48(tonumber(arg_74_2.progress) or 0) > 0
	end

	if arg_74_2 and arg_74_2.active ~= nil then
		__recovered_scope_1.var_74_5 = arg_74_2.active == true
	end

	if __recovered_scope_0.var_0_32.holdTimer > 0 then
		__recovered_scope_1.var_74_5 = true
	end

	if __recovered_scope_1.var_74_5 and arg_74_1 then
		__recovered_scope_0.var_0_32.lastUnit = arg_74_1
	end

	 __recovered_scope_1.var_74_8 = arg_74_1 or __recovered_scope_0.var_0_32.lastUnit
	 __recovered_scope_1.var_74_9 = __recovered_scope_1.var_74_5 and (arg_74_2 and arg_74_2.absorbLockUnit or __recovered_scope_1.var_74_8) or nil

	if __recovered_scope_1.var_74_9 and __recovered_scope_1.var_74_9.isShadowMinion then
		__recovered_scope_1.var_74_9 = nil
	end

	 __recovered_scope_1.var_74_10 = __recovered_scope_0.var_0_2.compute(arg_74_0)

	if not __recovered_scope_1.var_74_10 then
		return
	end

	 __recovered_scope_1.var_74_11 = __recovered_scope_1.var_74_10.slotPanel

	if not __recovered_scope_1.var_74_11 then
		return
	end

	 __recovered_scope_1.var_74_12 = __recovered_scope_0.var_0_62(__recovered_scope_0.var_0_0)
	 __recovered_scope_1.var_74_13 = __recovered_scope_1.var_74_11.w
	 __recovered_scope_1.var_74_14 = __recovered_scope_1.var_74_10.left and __recovered_scope_1.var_74_10.left.h or __recovered_scope_1.var_74_11.h
	 __recovered_scope_1.var_74_15 = __recovered_scope_1.var_74_11.x
	 __recovered_scope_1.var_74_16 = __recovered_scope_1.var_74_10.left and __recovered_scope_1.var_74_10.left.y or __recovered_scope_1.var_74_11.y

	if __recovered_scope_1.var_74_12 then
		__recovered_scope_1.var_74_13 = __recovered_scope_1.var_74_12:getWidth()
		__recovered_scope_1.var_74_14 = __recovered_scope_1.var_74_12:getHeight()
		__recovered_scope_1.var_74_15 = 0
		__recovered_scope_1.var_74_16 = 0
	end

	 __recovered_scope_1.var_74_17 = -__recovered_scope_1.var_74_13 - math.floor(8 * (arg_74_0.scale or 1) + 0.5)

	if __recovered_scope_0.var_0_32.x == nil then
		__recovered_scope_0.var_0_32.x = __recovered_scope_1.var_74_17
	end

	 __recovered_scope_1.var_74_18 = __recovered_scope_1.var_74_5 and __recovered_scope_1.var_74_15 or __recovered_scope_1.var_74_17
	 __recovered_scope_1.var_74_19 = 85
	 __recovered_scope_1.var_74_20 = 15
	 __recovered_scope_1.var_74_21 = 2000
	 __recovered_scope_1.var_74_22 = __recovered_scope_0.var_0_32.x
	 __recovered_scope_1.var_74_23 = __recovered_scope_0.var_0_32.v
	 __recovered_scope_1.var_74_24 = __recovered_scope_1.var_74_23 + ((__recovered_scope_1.var_74_18 - __recovered_scope_1.var_74_22) * __recovered_scope_1.var_74_19 - __recovered_scope_1.var_74_20 * __recovered_scope_1.var_74_23) * __recovered_scope_1.var_74_4

	if __recovered_scope_1.var_74_21 and __recovered_scope_1.var_74_21 > 0 then
		if __recovered_scope_1.var_74_21 < __recovered_scope_1.var_74_24 then
			__recovered_scope_1.var_74_24 = __recovered_scope_1.var_74_21
		elseif __recovered_scope_1.var_74_24 < -__recovered_scope_1.var_74_21 then
			__recovered_scope_1.var_74_24 = -__recovered_scope_1.var_74_21
		end
	end

	 __recovered_scope_1.var_74_25 = __recovered_scope_1.var_74_22 + __recovered_scope_1.var_74_24 * __recovered_scope_1.var_74_4
	 __recovered_scope_1.var_74_26 = 0.5

	if math.abs(__recovered_scope_1.var_74_24) < 0.02 and __recovered_scope_1.var_74_26 > math.abs(__recovered_scope_1.var_74_18 - __recovered_scope_1.var_74_25) then
		__recovered_scope_1.var_74_25 = __recovered_scope_1.var_74_18
		__recovered_scope_1.var_74_24 = 0
	end

	__recovered_scope_0.var_0_32.x = __recovered_scope_1.var_74_25
	__recovered_scope_0.var_0_32.v = __recovered_scope_1.var_74_24

	if not __recovered_scope_1.var_74_5 and math.abs(__recovered_scope_1.var_74_25 - __recovered_scope_1.var_74_17) < 1 then
		__recovered_scope_0.var_0_0._panelRect = nil
		__recovered_scope_0.var_0_32.lastUnit = nil
		__recovered_scope_0.var_0_32.holdTimer = 0
		__recovered_scope_0.var_0_32.blinkTimer = 0
		__recovered_scope_0.var_0_32.blinkSlot = nil

		return
	end

	if not __recovered_scope_1.var_74_8 then
		__recovered_scope_0.var_0_0._panelRect = nil

		return
	end

	 __recovered_scope_1.var_74_27 = arg_74_0.scale or 1
	 __recovered_scope_1.var_74_28 = __recovered_scope_1.var_74_14
	 __recovered_scope_1.var_74_29 = __recovered_scope_1.var_74_13
	 __recovered_scope_1.var_74_30 = __recovered_scope_0.var_0_50(__recovered_scope_0.var_0_32.x)
	 __recovered_scope_1.var_74_31 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_16)
	 __recovered_scope_1.var_74_32 = __recovered_scope_0.var_0_0._bgVisibleBounds

	if __recovered_scope_1.var_74_32 then
		__recovered_scope_0.var_0_0._panelRect = {
			x = __recovered_scope_1.var_74_30 + __recovered_scope_1.var_74_32.x,
			y = __recovered_scope_1.var_74_31 + __recovered_scope_1.var_74_32.y,
			w = __recovered_scope_1.var_74_32.w,
			h = __recovered_scope_1.var_74_32.h,
			drawnAt = __recovered_scope_1.var_74_3
		}
	else
		__recovered_scope_0.var_0_0._panelRect = {
			x = __recovered_scope_1.var_74_30,
			y = __recovered_scope_1.var_74_31,
			w = __recovered_scope_1.var_74_29,
			h = __recovered_scope_1.var_74_28,
			drawnAt = __recovered_scope_1.var_74_3
		}
	end

	__recovered_scope_0.var_0_0._modalHit = __recovered_scope_0.var_0_0._modalHit or {
		active = false
	}
	__recovered_scope_0.var_0_0._modalHit.active = false
	__recovered_scope_0.var_0_0._modalHit.buttons = {}
	__recovered_scope_0.var_0_0._modalHit.arrows = {}

	 __recovered_scope_1.var_74_33 = 1
	 __recovered_scope_1.var_74_34 = arg_74_0.imprintPanel and arg_74_0.imprintPanel.skillFrame

	if __recovered_scope_1.var_74_34 and __recovered_scope_1.var_74_34.enabled ~= false then
		local var_74_35 = __recovered_scope_0.var_0_3
		local var_74_36 = var_74_35 and var_74_35.ui and var_74_35.ui.classCardSkillFrame

		if require("src.ui.effects").grade_filter.isPrism(__recovered_scope_1.var_74_8) and var_74_35 and var_74_35.ui and var_74_35.ui.classCardSkillFramePrism then
			var_74_36 = var_74_35.ui.classCardSkillFramePrism
		elseif __recovered_scope_1.var_74_8.grade == "legendary" and var_74_35 and var_74_35.ui and var_74_35.ui.classCardSkillFrameLegendary then
			var_74_36 = var_74_35.ui.classCardSkillFrameLegendary
		elseif __recovered_scope_1.var_74_8.grade == "rare" and var_74_35 and var_74_35.ui and var_74_35.ui.classCardSkillFrameRare then
			var_74_36 = var_74_35.ui.classCardSkillFrameRare
		elseif __recovered_scope_1.var_74_8.grade == "special" and var_74_35 and var_74_35.ui and var_74_35.ui.classCardSkillFrameSpecial then
			var_74_36 = var_74_35.ui.classCardSkillFrameSpecial
		elseif __recovered_scope_1.var_74_8.grade == "advanced" and var_74_35 and var_74_35.ui and var_74_35.ui.classCardSkillFrameAdvanced then
			var_74_36 = var_74_35.ui.classCardSkillFrameAdvanced
		end

		local var_74_37 = var_74_35 and var_74_35.ui and var_74_35.ui.classCardSkillFrameShadow

		if var_74_36 then
			local var_74_38 = __recovered_scope_0.var_0_7.getSkillsForUnit(__recovered_scope_1.var_74_8)
			local var_74_39 = var_74_38 and var_74_38[1]
			local var_74_40

			if var_74_39 and var_74_39.icon and var_74_39.icon ~= "" then
				if not __recovered_scope_0.var_0_0._imprintSkillIconCache then
					__recovered_scope_0.var_0_0._imprintSkillIconCache = {}
				end

				local var_74_41 = var_74_39.icon

				if __recovered_scope_0.var_0_0._imprintSkillIconCache[var_74_41] == nil then
					local var_74_42, var_74_43 = pcall(love.graphics.newImage, var_74_41)

					if var_74_42 and var_74_43 then
						var_74_43:setFilter("nearest", "nearest")

						__recovered_scope_0.var_0_0._imprintSkillIconCache[var_74_41] = var_74_43
					else
						__recovered_scope_0.var_0_0._imprintSkillIconCache[var_74_41] = false
					end
				end

				var_74_40 = __recovered_scope_0.var_0_0._imprintSkillIconCache[var_74_41] or nil
			end

			local var_74_44 = __recovered_scope_1.var_74_34.scale or 1
			local var_74_45, var_74_46 = var_74_36:getDimensions()
			local var_74_47 = var_74_45 * var_74_44
			local var_74_48 = var_74_46 * var_74_44
			local var_74_49 = __recovered_scope_1.var_74_30 + __recovered_scope_1.var_74_29 - var_74_47 - math.floor((__recovered_scope_1.var_74_34.rightInsetPx or -16) + 0.5) + math.floor((__recovered_scope_1.var_74_34.offsetX or 0) + 0.5)
			local var_74_50 = __recovered_scope_1.var_74_31 + math.floor((__recovered_scope_1.var_74_34.topOffsetPx or 80) + 0.5) + math.floor((__recovered_scope_1.var_74_34.offsetY or 0) + 0.5)

			__recovered_scope_0.var_0_0._awakeningRuneRect = require("src.ui.flow").awakening.drawRunes(arg_74_0, __recovered_scope_1.var_74_8, __recovered_scope_0.var_0_0._panelRect, var_74_49, var_74_50, __recovered_scope_1.var_74_0, __recovered_scope_1.var_74_1, __recovered_scope_1.var_74_4, arg_74_2 and arg_74_2.battlefield)

			if var_74_39 then
				local var_74_51 = math.floor((__recovered_scope_1.var_74_34.iconInsetPx or 4) + 0.5)

				__recovered_scope_0.var_0_0._skillFrameRect = {
					x = var_74_49,
					y = var_74_50,
					w = var_74_47,
					h = var_74_48,
					drawnAt = love.timer and love.timer.getTime and love.timer.getTime() or 0
				}

				local var_74_52 = var_74_49 <= __recovered_scope_1.var_74_0 and __recovered_scope_1.var_74_0 <= var_74_49 + var_74_47 and var_74_50 <= __recovered_scope_1.var_74_1 and __recovered_scope_1.var_74_1 <= var_74_50 + var_74_48

				if __recovered_scope_0.var_0_0._skillHoverProg == nil then
					__recovered_scope_0.var_0_0._skillHoverProg = 0
				end

				local var_74_53 = var_74_52 and 1 or 0
				local var_74_54 = require("src.ui.widgets").panel_hover_motion

				__recovered_scope_0.var_0_0._skillHoverProg = var_74_54.step(__recovered_scope_0.var_0_0._skillHoverProg, var_74_53, __recovered_scope_1.var_74_4, __recovered_scope_1.var_74_34)

				local var_74_55 = var_74_49 - var_74_54.shift(__recovered_scope_0.var_0_0._skillHoverProg, __recovered_scope_1.var_74_34)

				if var_74_52 then
					__recovered_scope_0.var_0_0._hoveredSkill = {
						skill = {
							id = var_74_39.id,
							name = var_74_39.name,
							desc = var_74_39.description,
							cooldown = var_74_39.cooldownLabel or var_74_39.cooldown
						},
						anchor = {
							source = "imprintSkill",
							x = var_74_49,
							y = var_74_50,
							w = var_74_47,
							h = var_74_48
						}
					}
				end

				if var_74_40 then
					local var_74_56, var_74_57 = var_74_40:getDimensions()
					local var_74_58 = math.max(1, var_74_47 - var_74_51 * 2)
					local var_74_59 = math.max(1, var_74_48 - var_74_51 * 2)
					local var_74_60 = 1
					local var_74_61 = var_74_56 * var_74_60
					local var_74_62 = var_74_57 * var_74_60
					local var_74_63 = var_74_55 + var_74_51 + math.floor((var_74_58 - var_74_61) / 2 + 0.5) + math.floor((__recovered_scope_1.var_74_34.iconOffsetX or 0) + 0.5)
					local var_74_64 = var_74_50 + var_74_51 + math.floor((var_74_59 - var_74_62) / 2 + 0.5) + math.floor((__recovered_scope_1.var_74_34.iconOffsetY or 0) + 0.5)

					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_74_40, var_74_63, var_74_64, 0, var_74_60, var_74_60)
				end

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_74_36, var_74_55, var_74_50, 0, var_74_44, var_74_44)

				if var_74_37 then
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_74_37, var_74_49, var_74_50, 0, var_74_44, var_74_44)
				end

				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	 __recovered_scope_1.var_74_65 = __recovered_scope_0.var_0_62(__recovered_scope_0.var_0_0)

	if __recovered_scope_1.var_74_65 then
		love.graphics.setColor(1, 1, 1, __recovered_scope_1.var_74_33)
		love.graphics.draw(__recovered_scope_1.var_74_65, __recovered_scope_1.var_74_30, __recovered_scope_1.var_74_31)
	else
		love.graphics.setColor(0.1, 0.1, 0.1, 0.95 * __recovered_scope_1.var_74_33)
		love.graphics.rectangle("fill", __recovered_scope_1.var_74_30, __recovered_scope_1.var_74_31, __recovered_scope_1.var_74_29, __recovered_scope_1.var_74_28)
		love.graphics.setColor(0.5, 0.5, 0.5, 1 * __recovered_scope_1.var_74_33)
		love.graphics.rectangle("line", __recovered_scope_1.var_74_30, __recovered_scope_1.var_74_31, __recovered_scope_1.var_74_29, __recovered_scope_1.var_74_28)
	end

	 __recovered_scope_1.var_74_66 = __recovered_scope_0.var_0_75()

	if __recovered_scope_1.var_74_66 then
		__recovered_scope_1.var_74_66:setFilter("nearest", "nearest")
		love.graphics.setFont(__recovered_scope_1.var_74_66)
	end

	 __recovered_scope_1.var_74_67 = 1.5
	 __recovered_scope_1.var_74_68 = arg_74_0.imprintPanel and arg_74_0.imprintPanel.text or nil
	 __recovered_scope_1.var_74_69 = __recovered_scope_1.var_74_68 and __recovered_scope_1.var_74_68.name or nil
	 __recovered_scope_1.var_74_70 = tonumber(__recovered_scope_1.var_74_69 and __recovered_scope_1.var_74_69.x) or 10
	 __recovered_scope_1.var_74_71 = tonumber(__recovered_scope_1.var_74_69 and __recovered_scope_1.var_74_69.y) or 8
	 __recovered_scope_1.var_74_72 = __recovered_scope_1.var_74_30 + __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_70 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_73 = __recovered_scope_1.var_74_31 + __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_71 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_74 = __recovered_scope_1.var_74_8.sym or __recovered_scope_1.var_74_8.role == "archer" and "A" or __recovered_scope_1.var_74_8.role == "spear" and "S" or "W"
	 __recovered_scope_1.var_74_75 = __recovered_scope_0.var_0_3.iconsSmall and __recovered_scope_0.var_0_3.iconsSmall[__recovered_scope_1.var_74_74]

	__recovered_scope_1.var_74_75 = __recovered_scope_1.var_74_75 or __recovered_scope_0.var_0_3.icons and __recovered_scope_0.var_0_3.icons[__recovered_scope_1.var_74_74]

	 __recovered_scope_1.var_74_76 = require("src.ui.effects").grade_filter.isPrism(__recovered_scope_1.var_74_8)
	 __recovered_scope_1.var_74_77 = __recovered_scope_1.var_74_74 == "Joker" or __recovered_scope_1.var_74_74 == "J"

	if __recovered_scope_1.var_74_75 then
		__recovered_scope_1.var_74_75:setFilter("nearest", "nearest")

		local var_74_78 = __recovered_scope_0.var_0_68()

		if var_74_78 then
			love.graphics.setShader(var_74_78)
		end

		love.graphics.setColor(0, 0, 0, 0.5 * __recovered_scope_1.var_74_33)
		love.graphics.draw(__recovered_scope_1.var_74_75, __recovered_scope_1.var_74_72 + 1, __recovered_scope_1.var_74_73 + 1, 0, __recovered_scope_1.var_74_67, __recovered_scope_1.var_74_67)

		if var_74_78 then
			love.graphics.setShader()
		end

		if __recovered_scope_1.var_74_77 then
			love.graphics.setShader()
			love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
			love.graphics.draw(__recovered_scope_1.var_74_75, __recovered_scope_1.var_74_72, __recovered_scope_1.var_74_73, 0, __recovered_scope_1.var_74_67, __recovered_scope_1.var_74_67)
		elseif __recovered_scope_1.var_74_76 then
			local var_74_79 = __recovered_scope_0.var_0_68()

			if var_74_79 then
				love.graphics.setShader(var_74_79)
			end

			love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
			love.graphics.draw(__recovered_scope_1.var_74_75, __recovered_scope_1.var_74_72, __recovered_scope_1.var_74_73, 0, __recovered_scope_1.var_74_67, __recovered_scope_1.var_74_67)

			if var_74_79 then
				love.graphics.setShader()
			end

			require("src.ui.effects").grade_filter.drawIconFoil(arg_74_0, __recovered_scope_1.var_74_75, __recovered_scope_1.var_74_72, __recovered_scope_1.var_74_73, __recovered_scope_1.var_74_67, __recovered_scope_1.var_74_33, __recovered_scope_0.var_0_70(), love.timer.getTime())
		else
			local var_74_80 = __recovered_scope_0.var_0_68()

			if var_74_80 then
				love.graphics.setShader(var_74_80)
			end

			local var_74_81 = __recovered_scope_0.var_0_76(__recovered_scope_1.var_74_8)

			love.graphics.setColor(var_74_81[1], var_74_81[2], var_74_81[3], (var_74_81[4] or 1) * __recovered_scope_1.var_74_33)
			love.graphics.draw(__recovered_scope_1.var_74_75, __recovered_scope_1.var_74_72, __recovered_scope_1.var_74_73, 0, __recovered_scope_1.var_74_67, __recovered_scope_1.var_74_67)

			if var_74_80 then
				love.graphics.setShader()
			end
		end

		__recovered_scope_1.var_74_72 = __recovered_scope_1.var_74_72 + __recovered_scope_1.var_74_75:getWidth() * __recovered_scope_1.var_74_67 + 2
	end

	if __recovered_scope_1.var_74_76 then
		local var_74_82 = arg_74_0 and arg_74_0.tooltipCfg and arg_74_0.tooltipCfg.iconFoil or arg_74_0 and arg_74_0.tooltip and arg_74_0.tooltip.iconFoil or arg_74_0 and arg_74_0.battle and (arg_74_0.battle.jackpotFoil or arg_74_0.battle.jackpotRainbow) or {}
		local var_74_83 = love.timer.getTime() / (var_74_82.cycleSec or 4) * 2 * math.pi
		local var_74_84 = 0.6 + 0.4 * math.sin(var_74_83 + 0)
		local var_74_85 = 0.45 + 0.3 * math.sin(var_74_83 + 2.1)
		local var_74_86 = 0.8 + 0.2 * math.sin(var_74_83 + 4.2)

		love.graphics.setColor(var_74_84, var_74_85, var_74_86, 1 * __recovered_scope_1.var_74_33)
	else
		local var_74_87 = __recovered_scope_0.var_0_76(__recovered_scope_1.var_74_8)

		love.graphics.setColor(var_74_87[1], var_74_87[2], var_74_87[3], (var_74_87[4] or 1) * __recovered_scope_1.var_74_33)
	end

	 __recovered_scope_1.var_74_88 = __recovered_scope_0.var_0_55(__recovered_scope_1.var_74_8)
	 __recovered_scope_1.var_74_89 = require("src.ui.widgets").text_fit
	 __recovered_scope_1.var_74_90 = __recovered_scope_1.var_74_66 or love.graphics.getFont()
	 __recovered_scope_1.var_74_91 = __recovered_scope_0.var_0_0._bgVisibleBounds
	 __recovered_scope_1.var_74_92 = __recovered_scope_1.var_74_30 + (__recovered_scope_1.var_74_91 and __recovered_scope_1.var_74_91.x + __recovered_scope_1.var_74_91.w or __recovered_scope_1.var_74_65 and __recovered_scope_1.var_74_65:getWidth() or __recovered_scope_1.var_74_29)
	 __recovered_scope_1.var_74_93 = math.max(16, __recovered_scope_1.var_74_92 - __recovered_scope_0.var_0_50(12 * __recovered_scope_1.var_74_27) - __recovered_scope_1.var_74_72)
	 __recovered_scope_1.var_74_94 = math.ceil(__recovered_scope_1.var_74_90:getHeight() * __recovered_scope_1.var_74_67)
	 __recovered_scope_1.var_74_95 = __recovered_scope_1.var_74_89.fit(__recovered_scope_1.var_74_88, __recovered_scope_1.var_74_93, __recovered_scope_1.var_74_90, {
		scale = __recovered_scope_1.var_74_67,
		steps = {
			1
		}
	})

	__recovered_scope_1.var_74_89.draw(__recovered_scope_1.var_74_95, __recovered_scope_1.var_74_72, __recovered_scope_1.var_74_73, __recovered_scope_1.var_74_93, __recovered_scope_1.var_74_94, {
		key = "imprint_title:" .. __recovered_scope_1.var_74_88
	})

	if not __recovered_scope_1.var_74_95.scroll then
		local var_74_96 = __recovered_scope_1.var_74_73 + math.floor((__recovered_scope_1.var_74_94 - math.ceil(__recovered_scope_1.var_74_95.font:getHeight() * __recovered_scope_1.var_74_95.scale)) * 0.5 + 0.5) + (__recovered_scope_1.var_74_95.small and 1 or 0)

		require("src.ui.widgets").unit_name_sweep.draw(__recovered_scope_1.var_74_88, __recovered_scope_1.var_74_72, var_74_96, __recovered_scope_1.var_74_95.scale, __recovered_scope_1.var_74_95.scale, __recovered_scope_1.var_74_76 and "prism" or __recovered_scope_1.var_74_8.grade, __recovered_scope_1.var_74_33, __recovered_scope_1.var_74_95.font)
	end

	if arg_74_0.font then
		love.graphics.setFont(arg_74_0.font)
	end

	 __recovered_scope_1.var_74_97 = __recovered_scope_0.var_0_75() or arg_74_0.font or love.graphics.getFont()
	 __recovered_scope_1.var_74_98 = 1.5
	 __recovered_scope_1.var_74_99 = __recovered_scope_1.var_74_97 and __recovered_scope_1.var_74_97:getHeight() or 12
	 __recovered_scope_1.var_74_100 = math.max(1, math.floor(tonumber(__recovered_scope_1.var_74_8 and __recovered_scope_1.var_74_8.absorbLV or 1) or 1))
	 __recovered_scope_1.var_74_101 = "LV. " .. tostring(__recovered_scope_1.var_74_100)
	 __recovered_scope_1.var_74_102 = 0
	 __recovered_scope_1.var_74_103 = true

	if __recovered_scope_1.var_74_7 and __recovered_scope_1.var_74_6 and __recovered_scope_1.var_74_6.preview then
		local var_74_104 = math.max(0, math.floor(tonumber(__recovered_scope_1.var_74_6.preview.totalAbsorbLvGain or 0) or 0))
		local var_74_105 = math.max(0, math.floor(tonumber(__recovered_scope_1.var_74_6.preview.convertBonus or 0) or 0))

		__recovered_scope_1.var_74_102 = var_74_104

		if __recovered_scope_1.var_74_6.preview.convertAvailable then
			if __recovered_scope_0.var_0_32.convertHovering then
				__recovered_scope_1.var_74_102 = var_74_104 + var_74_105
			elseif __recovered_scope_0.var_0_32.replaceHovering then
				__recovered_scope_1.var_74_102 = var_74_104
			else
				__recovered_scope_1.var_74_103 = false
			end
		end
	end

	 __recovered_scope_1.var_74_106 = ""

	if __recovered_scope_1.var_74_103 and __recovered_scope_1.var_74_102 > 0 then
		__recovered_scope_1.var_74_106 = " +" .. tostring(__recovered_scope_1.var_74_102)
	end

	 __recovered_scope_1.var_74_107 = __recovered_scope_1.var_74_68 and __recovered_scope_1.var_74_68.absorbLv or nil
	 __recovered_scope_1.var_74_108 = tonumber(__recovered_scope_1.var_74_107 and __recovered_scope_1.var_74_107.x) or __recovered_scope_1.var_74_70
	 __recovered_scope_1.var_74_109 = __recovered_scope_1.var_74_30 + __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_108 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_110 = nil
	 __recovered_scope_1.var_74_111 = tonumber(__recovered_scope_1.var_74_107 and __recovered_scope_1.var_74_107.y)

	if __recovered_scope_1.var_74_111 then
		__recovered_scope_1.var_74_110 = __recovered_scope_1.var_74_31 + __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_111 * __recovered_scope_1.var_74_27)
	else
		local var_74_112 = tonumber(__recovered_scope_1.var_74_107 and __recovered_scope_1.var_74_107.dyFromName) or 2

		__recovered_scope_1.var_74_110 = __recovered_scope_1.var_74_73 + __recovered_scope_1.var_74_99 + __recovered_scope_0.var_0_50(var_74_112 * __recovered_scope_1.var_74_27)
	end

	if __recovered_scope_1.var_74_97 then
		love.graphics.setFont(__recovered_scope_1.var_74_97)
	end

	love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)

	 __recovered_scope_1.var_74_113 = __recovered_scope_1.var_74_97:getWidth(__recovered_scope_1.var_74_101)
	 __recovered_scope_1.var_74_114 = __recovered_scope_1.var_74_97:getHeight()
	 __recovered_scope_1.var_74_115 = math.ceil(__recovered_scope_1.var_74_113 * __recovered_scope_1.var_74_98)
	 __recovered_scope_1.var_74_116 = math.ceil(__recovered_scope_1.var_74_114 * __recovered_scope_1.var_74_98)

	__recovered_scope_1.var_74_97:setFilter("nearest", "nearest")
	love.graphics.print(__recovered_scope_1.var_74_101, math.floor(__recovered_scope_1.var_74_109), math.floor(__recovered_scope_1.var_74_110), 0, __recovered_scope_1.var_74_98, __recovered_scope_1.var_74_98)

	 __recovered_scope_1.var_74_117 = __recovered_scope_1.var_74_113 * __recovered_scope_1.var_74_98
	 __recovered_scope_1.var_74_118 = __recovered_scope_1.var_74_114 * __recovered_scope_1.var_74_98
	 __recovered_scope_1.var_74_119 = __recovered_scope_0.var_0_8.getForUnit(__recovered_scope_1.var_74_8)
	 __recovered_scope_1.var_74_120 = __recovered_scope_1.var_74_119 and __recovered_scope_0.var_0_8.getIconPath(__recovered_scope_1.var_74_119) or nil
	 __recovered_scope_1.var_74_121 = __recovered_scope_1.var_74_120 and __recovered_scope_0.var_0_63(__recovered_scope_0.var_0_0, __recovered_scope_1.var_74_120) or nil
	 __recovered_scope_1.var_74_122 = __recovered_scope_1.var_74_109 + __recovered_scope_1.var_74_117

	if __recovered_scope_1.var_74_121 then
		local var_74_123 = __recovered_scope_1.var_74_68 and __recovered_scope_1.var_74_68.faction or nil
		local var_74_124 = tonumber(var_74_123 and var_74_123.gap) or 8
		local var_74_125 = tonumber(var_74_123 and var_74_123.dx) or 0
		local var_74_126 = tonumber(var_74_123 and var_74_123.dy) or 0
		local var_74_127, var_74_128 = __recovered_scope_1.var_74_121:getDimensions()
		local var_74_129 = math.max(0.25, tonumber(var_74_123 and var_74_123.scale) or 1)
		local var_74_130 = var_74_127 * var_74_129
		local var_74_131 = var_74_128 * var_74_129
		local var_74_132 = math.floor(__recovered_scope_1.var_74_109 + __recovered_scope_1.var_74_117 + var_74_124 + var_74_125)
		local var_74_133 = math.floor(__recovered_scope_1.var_74_110 + (__recovered_scope_1.var_74_118 - var_74_131) * 0.5 + var_74_126)
		local var_74_134 = math.floor(var_74_132 + var_74_130 * 0.5)
		local var_74_135 = math.floor(var_74_133 + var_74_131 * 0.5)
		local var_74_136 = var_74_127 * 0.5
		local var_74_137 = var_74_128 * 0.5
		local var_74_138 = tonumber(var_74_123 and var_74_123.hoverPad) or 2
		local var_74_139 = __recovered_scope_1.var_74_0 >= var_74_132 - var_74_138 and __recovered_scope_1.var_74_0 <= var_74_132 + var_74_130 + var_74_138 and __recovered_scope_1.var_74_1 >= var_74_133 - var_74_138 and __recovered_scope_1.var_74_1 <= var_74_133 + var_74_131 + var_74_138

		if var_74_139 then
			__recovered_scope_0.var_0_0._hoveredFaction = {
				factionId = __recovered_scope_1.var_74_119,
				anchor = {
					source = "imprintFaction",
					x = var_74_132 - var_74_138,
					y = var_74_133 - var_74_138,
					w = var_74_130 + var_74_138 * 2,
					h = var_74_131 + var_74_138 * 2
				}
			}
		end

		if not var_74_123 or var_74_123.outline ~= false then
			local var_74_140 = __recovered_scope_0.var_0_23()

			if var_74_140 then
				var_74_140:send("texelStep", {
					1 / var_74_127,
					1 / var_74_128
				})

				local var_74_141 = arg_74_0 and arg_74_0.imprintPanel and arg_74_0.imprintPanel.randomOption
				local var_74_142 = var_74_141 and var_74_141.outlineColor or {
					0.55,
					0.48,
					0.43,
					1
				}

				var_74_140:send("outlineColor", {
					var_74_142[1],
					var_74_142[2],
					var_74_142[3],
					(var_74_142[4] or 1) * __recovered_scope_1.var_74_33
				})
				var_74_140:send("threshold", 0.05)
				var_74_140:send("radiusPx", 1.15)
				love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
				love.graphics.setShader(var_74_140)
				love.graphics.draw(__recovered_scope_1.var_74_121, var_74_134, var_74_135, 0, var_74_129, var_74_129, var_74_136, var_74_137)
				love.graphics.setShader()
			end
		end

		love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
		love.graphics.draw(__recovered_scope_1.var_74_121, var_74_134, var_74_135, 0, var_74_129, var_74_129, var_74_136, var_74_137)

		if var_74_139 then
			local var_74_143, var_74_144 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add", "alphamultiply")
			love.graphics.setColor(1, 1, 1, (tonumber(var_74_123 and var_74_123.hoverBrightAlpha) or 0.22) * __recovered_scope_1.var_74_33)
			love.graphics.draw(__recovered_scope_1.var_74_121, var_74_134, var_74_135, 0, var_74_129, var_74_129, var_74_136, var_74_137)
			love.graphics.setBlendMode(var_74_143 or "alpha", var_74_144 or "alphamultiply")
		end

		__recovered_scope_1.var_74_122 = var_74_132 + var_74_130
	end

	 __recovered_scope_1.var_74_145 = 8
	 __recovered_scope_1.var_74_146 = __recovered_scope_1.var_74_68 and __recovered_scope_1.var_74_68.infoIcon or nil
	 __recovered_scope_1.var_74_147 = __recovered_scope_0.var_0_29()
	 __recovered_scope_1.var_74_148 = math.max(0.25, tonumber(__recovered_scope_1.var_74_146 and __recovered_scope_1.var_74_146.scale) or 1)
	 __recovered_scope_1.var_74_149 = __recovered_scope_1.var_74_147 and __recovered_scope_1.var_74_147:getWidth() or 16
	 __recovered_scope_1.var_74_150 = __recovered_scope_1.var_74_147 and __recovered_scope_1.var_74_147:getHeight() or 16
	 __recovered_scope_1.var_74_151 = math.max(1, math.floor(math.max(__recovered_scope_1.var_74_149, __recovered_scope_1.var_74_150) * __recovered_scope_1.var_74_148 + 0.5))
	 __recovered_scope_1.var_74_152 = tonumber(__recovered_scope_1.var_74_146 and __recovered_scope_1.var_74_146.dx) or 0
	 __recovered_scope_1.var_74_153 = tonumber(__recovered_scope_1.var_74_146 and __recovered_scope_1.var_74_146.dy) or 0
	 __recovered_scope_1.var_74_154 = __recovered_scope_1.var_74_97:getWidth("LV. 0") * __recovered_scope_1.var_74_98
	 __recovered_scope_1.var_74_155 = math.floor(__recovered_scope_1.var_74_109 + __recovered_scope_1.var_74_154 + __recovered_scope_1.var_74_145 + __recovered_scope_1.var_74_152)
	 __recovered_scope_1.var_74_156 = math.floor(__recovered_scope_1.var_74_110 + (__recovered_scope_1.var_74_118 - __recovered_scope_1.var_74_151) / 2 + __recovered_scope_1.var_74_153)
	 __recovered_scope_1.var_74_157 = __recovered_scope_1.var_74_68 and __recovered_scope_1.var_74_68.absorbLockIcon or nil
	 __recovered_scope_1.var_74_158 = __recovered_scope_0.var_0_31()
	 __recovered_scope_1.var_74_159 = math.max(0.25, tonumber(__recovered_scope_1.var_74_157 and __recovered_scope_1.var_74_157.scale) or 1)
	 __recovered_scope_1.var_74_160 = __recovered_scope_1.var_74_158 and __recovered_scope_1.var_74_158.unlocked:getWidth() or 14
	 __recovered_scope_1.var_74_161 = __recovered_scope_1.var_74_158 and __recovered_scope_1.var_74_158.unlocked:getHeight() or 14
	 __recovered_scope_1.var_74_162 = math.max(1, math.floor(__recovered_scope_1.var_74_160 * __recovered_scope_1.var_74_159 + 0.5))
	 __recovered_scope_1.var_74_163 = math.max(1, math.floor(__recovered_scope_1.var_74_161 * __recovered_scope_1.var_74_159 + 0.5))
	 __recovered_scope_1.var_74_164 = tonumber(__recovered_scope_1.var_74_157 and __recovered_scope_1.var_74_157.gap) or 4
	 __recovered_scope_1.var_74_165 = math.floor(__recovered_scope_1.var_74_155 + __recovered_scope_1.var_74_151 + __recovered_scope_1.var_74_164 + (tonumber(__recovered_scope_1.var_74_157 and __recovered_scope_1.var_74_157.dx) or 0))
	 __recovered_scope_1.var_74_166 = math.floor(__recovered_scope_1.var_74_156 + (__recovered_scope_1.var_74_151 - __recovered_scope_1.var_74_163) * 0.5 + (tonumber(__recovered_scope_1.var_74_157 and __recovered_scope_1.var_74_157.dy) or 0))
	 __recovered_scope_1.var_74_167 = false
	 __recovered_scope_1.var_74_168 = 8
	 __recovered_scope_1.var_74_169 = 0
	 __recovered_scope_1.var_74_170 = 2
	 __recovered_scope_1.var_74_171 = __recovered_scope_1.var_74_155 - __recovered_scope_1.var_74_168
	 __recovered_scope_1.var_74_172 = __recovered_scope_1.var_74_156 - __recovered_scope_1.var_74_170
	 __recovered_scope_1.var_74_173 = __recovered_scope_1.var_74_151 + __recovered_scope_1.var_74_168 + __recovered_scope_1.var_74_169
	 __recovered_scope_1.var_74_174 = __recovered_scope_1.var_74_151 + __recovered_scope_1.var_74_170 * 2

	if __recovered_scope_1.var_74_171 <= __recovered_scope_1.var_74_0 and __recovered_scope_1.var_74_0 <= __recovered_scope_1.var_74_171 + __recovered_scope_1.var_74_173 and __recovered_scope_1.var_74_172 <= __recovered_scope_1.var_74_1 and __recovered_scope_1.var_74_1 <= __recovered_scope_1.var_74_172 + __recovered_scope_1.var_74_174 then
		__recovered_scope_1.var_74_167 = true
	end

	if __recovered_scope_1.var_74_147 then
		love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)

		local var_74_175 = __recovered_scope_1.var_74_151 / math.max(1, __recovered_scope_1.var_74_149)
		local var_74_176 = __recovered_scope_1.var_74_151 / math.max(1, __recovered_scope_1.var_74_150)

		love.graphics.draw(__recovered_scope_1.var_74_147, __recovered_scope_1.var_74_155, __recovered_scope_1.var_74_156, 0, var_74_175, var_74_176)

		if __recovered_scope_1.var_74_167 then
			local var_74_177, var_74_178 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add", "alphamultiply")
			love.graphics.setColor(1, 1, 1, (tonumber(__recovered_scope_1.var_74_146 and __recovered_scope_1.var_74_146.hoverBrightAlpha) or 0.22) * __recovered_scope_1.var_74_33)
			love.graphics.draw(__recovered_scope_1.var_74_147, __recovered_scope_1.var_74_155, __recovered_scope_1.var_74_156, 0, var_74_175, var_74_176)
			love.graphics.setBlendMode(var_74_177 or "alpha", var_74_178 or "alphamultiply")
		end
	else
		love.graphics.setColor(0.2, 0.2, 0.2, 0.9 * __recovered_scope_1.var_74_33)
		love.graphics.rectangle("fill", __recovered_scope_1.var_74_155, __recovered_scope_1.var_74_156, __recovered_scope_1.var_74_151, __recovered_scope_1.var_74_151)
		love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)
		love.graphics.rectangle("line", __recovered_scope_1.var_74_155 + 0.5, __recovered_scope_1.var_74_156 + 0.5, __recovered_scope_1.var_74_151 - 1, __recovered_scope_1.var_74_151 - 1)

		local var_74_179 = math.max(1, math.floor(__recovered_scope_1.var_74_151 / 8))
		local var_74_180 = __recovered_scope_1.var_74_155 + math.floor((__recovered_scope_1.var_74_151 - var_74_179) / 2)

		love.graphics.rectangle("fill", var_74_180, __recovered_scope_1.var_74_156 + 3, var_74_179, var_74_179)
		love.graphics.rectangle("fill", var_74_180, __recovered_scope_1.var_74_156 + 6, var_74_179, math.max(2, __recovered_scope_1.var_74_151 - 9))
	end

	if __recovered_scope_1.var_74_9 then
		local var_74_181 = 2
		local var_74_182 = __recovered_scope_1.var_74_0 >= __recovered_scope_1.var_74_165 - var_74_181 and __recovered_scope_1.var_74_0 <= __recovered_scope_1.var_74_165 + __recovered_scope_1.var_74_162 + var_74_181 and __recovered_scope_1.var_74_1 >= __recovered_scope_1.var_74_166 - var_74_181 and __recovered_scope_1.var_74_1 <= __recovered_scope_1.var_74_166 + __recovered_scope_1.var_74_163 + var_74_181
		local var_74_183 = __recovered_scope_1.var_74_9.absorbLocked == true
		local var_74_184 = __recovered_scope_1.var_74_158 and (var_74_183 and __recovered_scope_1.var_74_158.locked or __recovered_scope_1.var_74_158.unlocked) or nil

		if var_74_184 then
			local var_74_185 = __recovered_scope_1.var_74_162 / math.max(1, var_74_184:getWidth())
			local var_74_186 = __recovered_scope_1.var_74_163 / math.max(1, var_74_184:getHeight())

			love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
			love.graphics.draw(var_74_184, __recovered_scope_1.var_74_165, __recovered_scope_1.var_74_166, 0, var_74_185, var_74_186)

			if var_74_182 then
				local var_74_187, var_74_188 = love.graphics.getBlendMode()

				love.graphics.setBlendMode("add", "alphamultiply")
				love.graphics.setColor(1, 1, 1, (tonumber(__recovered_scope_1.var_74_157 and __recovered_scope_1.var_74_157.hoverBrightAlpha) or 0.25) * __recovered_scope_1.var_74_33)
				love.graphics.draw(var_74_184, __recovered_scope_1.var_74_165, __recovered_scope_1.var_74_166, 0, var_74_185, var_74_186)
				love.graphics.setBlendMode(var_74_187 or "alpha", var_74_188 or "alphamultiply")
			end
		else
			love.graphics.setColor(var_74_183 and 0.75 or 0.45, 0.45, 0.8, 1 * __recovered_scope_1.var_74_33)
			love.graphics.rectangle("line", __recovered_scope_1.var_74_165 + 0.5, __recovered_scope_1.var_74_166 + 0.5, __recovered_scope_1.var_74_162 - 1, __recovered_scope_1.var_74_163 - 1)
		end

		__recovered_scope_0.var_0_0._absorbLockRect = {
			x = __recovered_scope_1.var_74_165 - var_74_181,
			y = __recovered_scope_1.var_74_166 - var_74_181,
			w = __recovered_scope_1.var_74_162 + var_74_181 * 2,
			h = __recovered_scope_1.var_74_163 + var_74_181 * 2
		}
		__recovered_scope_0.var_0_0._absorbLockUnit = __recovered_scope_1.var_74_9
		__recovered_scope_0.var_0_0._absorbLockDisplayUnit = __recovered_scope_1.var_74_8
	end

	 __recovered_scope_1.var_74_189 = arg_74_0.imprintPanel and arg_74_0.imprintPanel.promotionBar
	 __recovered_scope_1.var_74_190 = arg_74_0.imprintPanel
	 __recovered_scope_1.var_74_191 = 0

	if __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.offsetX then
		__recovered_scope_1.var_74_191 = __recovered_scope_0.var_0_50((__recovered_scope_1.var_74_189.offsetX or 0) * __recovered_scope_1.var_74_27)
	end

	 __recovered_scope_1.var_74_192 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.offsetY
	 __recovered_scope_1.var_74_193 = tonumber(__recovered_scope_1.var_74_192)

	if __recovered_scope_1.var_74_193 == nil then
		__recovered_scope_1.var_74_193 = 6
	end

	 __recovered_scope_1.var_74_194 = __recovered_scope_1.var_74_193 * __recovered_scope_1.var_74_27
	 __recovered_scope_1.var_74_195 = 3
	 __recovered_scope_1.var_74_196 = __recovered_scope_0.var_0_50(10 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_197 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_29 - __recovered_scope_1.var_74_196 * 2)
	 __recovered_scope_1.var_74_198 = __recovered_scope_1.var_74_197
	 __recovered_scope_1.var_74_199 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_30 + __recovered_scope_1.var_74_196)
	 __recovered_scope_1.var_74_200 = arg_74_0.imprintPanel

	if __recovered_scope_1.var_74_200 then
		local var_74_201 = tonumber(__recovered_scope_1.var_74_200.slotW)

		if var_74_201 and var_74_201 > 0 then
			local var_74_202 = __recovered_scope_0.var_0_50(var_74_201 * __recovered_scope_1.var_74_27)

			__recovered_scope_1.var_74_198 = math.max(60, math.min(__recovered_scope_1.var_74_197, var_74_202))
			__recovered_scope_1.var_74_199 = __recovered_scope_0.var_0_50(__recovered_scope_0.var_0_50(__recovered_scope_1.var_74_30 + __recovered_scope_1.var_74_196) + (__recovered_scope_1.var_74_197 - __recovered_scope_1.var_74_198) * 0.5)
		end

		local var_74_203 = tonumber(__recovered_scope_1.var_74_200.slotX)

		if var_74_203 then
			__recovered_scope_1.var_74_199 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_30 + var_74_203 * __recovered_scope_1.var_74_27)
		end
	end

	if __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.width then
		__recovered_scope_1.var_74_198 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_189.width * __recovered_scope_1.var_74_27)
	end

	 __recovered_scope_1.var_74_204 = __recovered_scope_1.var_74_8.rank or 1
	 __recovered_scope_1.var_74_205 = __recovered_scope_1.var_74_8.jackpot5th == true and "prism" or __recovered_scope_1.var_74_8.grade or "normal"
	 __recovered_scope_1.var_74_206 = math.max(0, math.floor(tonumber(__recovered_scope_1.var_74_8 and __recovered_scope_1.var_74_8.absorbLV or 0) or 0))
	 __recovered_scope_1.var_74_207 = __recovered_scope_0.var_0_1.evolution.rankThresholds[__recovered_scope_1.var_74_205]
	 __recovered_scope_1.var_74_208 = __recovered_scope_1.var_74_207 and __recovered_scope_1.var_74_207[__recovered_scope_1.var_74_204 + 1]
	 __recovered_scope_1.var_74_209 = 0

	if __recovered_scope_1.var_74_207 and __recovered_scope_1.var_74_207[__recovered_scope_1.var_74_204] then
		__recovered_scope_1.var_74_209 = __recovered_scope_1.var_74_207[__recovered_scope_1.var_74_204]
	end

	 __recovered_scope_1.var_74_210 = 0

	if __recovered_scope_1.var_74_7 and __recovered_scope_1.var_74_6 and __recovered_scope_1.var_74_6.preview then
		local var_74_211 = math.max(0, math.floor(tonumber(__recovered_scope_1.var_74_6.preview.totalAbsorbLvGain or 0) or 0))
		local var_74_212 = math.max(0, math.floor(tonumber(__recovered_scope_1.var_74_6.preview.convertBonus or 0) or 0))

		if __recovered_scope_1.var_74_6.preview.convertAvailable then
			if __recovered_scope_0.var_0_32.convertHovering then
				__recovered_scope_1.var_74_210 = var_74_211 + var_74_212
			elseif __recovered_scope_0.var_0_32.replaceHovering then
				__recovered_scope_1.var_74_210 = var_74_211
			end
		else
			__recovered_scope_1.var_74_210 = var_74_211
		end
	end

	 __recovered_scope_1.var_74_213 = __recovered_scope_1.var_74_198
	 __recovered_scope_1.var_74_214 = math.floor(__recovered_scope_1.var_74_195 * __recovered_scope_1.var_74_27 + 0.5)
	 __recovered_scope_1.var_74_215 = __recovered_scope_1.var_74_199 + __recovered_scope_1.var_74_191
	 __recovered_scope_1.var_74_216 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_110 + __recovered_scope_1.var_74_118 + __recovered_scope_1.var_74_194)
	 __recovered_scope_1.var_74_217 = 0
	 __recovered_scope_1.var_74_218 = __recovered_scope_1.var_74_215
	 __recovered_scope_1.var_74_219 = __recovered_scope_1.var_74_213
	 __recovered_scope_1.var_74_220 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.fillColor or {
		0.2,
		0.8,
		0.4,
		0.95
	}
	 __recovered_scope_1.var_74_221 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.previewColor or __recovered_scope_1.var_74_220
	 __recovered_scope_1.var_74_222 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.bgColor or {
		0.05,
		0.05,
		0.05,
		0.85
	}
	 __recovered_scope_1.var_74_223 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.borderColor or {
		0.6,
		0.6,
		0.6,
		0.8
	}

	if not __recovered_scope_1.var_74_189 or not __recovered_scope_1.var_74_189.accentColor then
		local var_74_224 = {
			1,
			1,
			1,
			0.15
		}
	end

	__recovered_scope_0.var_0_9.drawTrack({
		x = __recovered_scope_1.var_74_218,
		y = __recovered_scope_1.var_74_216,
		w = __recovered_scope_1.var_74_219,
		h = __recovered_scope_1.var_74_214,
		bgColor = __recovered_scope_1.var_74_222,
		alphaMul = __recovered_scope_1.var_74_33
	})

	if __recovered_scope_1.var_74_208 then
		local var_74_225 = __recovered_scope_1.var_74_208 - __recovered_scope_1.var_74_209
		local var_74_226 = __recovered_scope_1.var_74_206 - __recovered_scope_1.var_74_209

		if __recovered_scope_1.var_74_209 == 0 then
			var_74_225 = math.max(1, __recovered_scope_1.var_74_208 - 1)
			var_74_226 = math.max(0, __recovered_scope_1.var_74_206 - 1)
		end

		local var_74_227 = 0

		if var_74_225 > 0 then
			var_74_227 = math.max(0, math.min(1, var_74_226 / var_74_225))
		end

		local var_74_228 = __recovered_scope_1.var_74_214
		local var_74_229 = __recovered_scope_1.var_74_213

		__recovered_scope_0.var_0_9.drawFill({
			x = __recovered_scope_1.var_74_218,
			y = __recovered_scope_1.var_74_216,
			w = var_74_229,
			h = var_74_228,
			progress = var_74_227,
			fillColor = __recovered_scope_1.var_74_220,
			previewColor = __recovered_scope_1.var_74_221,
			bloom = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.bloom or nil,
			alphaMul = __recovered_scope_1.var_74_33,
			scale = __recovered_scope_1.var_74_27
		})

		if __recovered_scope_1.var_74_210 > 0 then
			local var_74_230 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.previewAlphaMin
			local var_74_231 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.previewAlphaMax
			local var_74_232 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.previewPulseHz
			local var_74_233 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.previewWhiteMixMax

			if var_74_230 == nil then
				var_74_230 = 0
			end

			if var_74_231 == nil then
				var_74_231 = 0.95
			end

			if var_74_232 == nil then
				var_74_232 = 1.6
			end

			if var_74_233 == nil then
				var_74_233 = 1
			end

			local var_74_234 = 0.5 + 0.5 * math.sin(love.timer.getTime() * (math.pi * 2) * var_74_232)
			local var_74_235 = var_74_230 + (var_74_231 - var_74_230) * var_74_234
			local var_74_236 = math.max(0, var_74_226)
			local var_74_237 = math.max(0, var_74_226 + __recovered_scope_1.var_74_210)
			local var_74_238 = math.floor(__recovered_scope_1.var_74_218 + var_74_236 / var_74_225 * var_74_229)
			local var_74_239 = math.floor(__recovered_scope_1.var_74_218 + math.min(1, var_74_237 / var_74_225) * var_74_229) - var_74_238

			if var_74_239 > 0 then
				local var_74_240 = math.max(0, math.min(1, var_74_233 * var_74_234))
				local var_74_241 = __recovered_scope_1.var_74_221[1] + (1 - __recovered_scope_1.var_74_221[1]) * var_74_240
				local var_74_242 = __recovered_scope_1.var_74_221[2] + (1 - __recovered_scope_1.var_74_221[2]) * var_74_240
				local var_74_243 = __recovered_scope_1.var_74_221[3] + (1 - __recovered_scope_1.var_74_221[3]) * var_74_240

				love.graphics.setColor(var_74_241, var_74_242, var_74_243, __recovered_scope_1.var_74_221[4] * var_74_235 * __recovered_scope_1.var_74_33)
				love.graphics.rectangle("fill", var_74_238, __recovered_scope_1.var_74_216, var_74_239, var_74_228)
				love.graphics.setColor(1, 1, 1, 0.35 * var_74_235 * __recovered_scope_1.var_74_33)
				love.graphics.rectangle("line", var_74_238 + 0.5, __recovered_scope_1.var_74_216 + 0.5, var_74_239 - 1, var_74_228 - 1)
			end
		end

		if var_74_225 < 30 then
			__recovered_scope_0.var_0_9.drawGrid({
				x = __recovered_scope_1.var_74_218,
				y = __recovered_scope_1.var_74_216,
				w = var_74_229,
				h = var_74_228,
				steps = var_74_225,
				gridColor = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.gridColor or {
					0,
					0,
					0,
					0.15
				},
				alphaMul = __recovered_scope_1.var_74_33
			})
		end

		local var_74_244 = tostring(__recovered_scope_1.var_74_206) .. " / " .. tostring(__recovered_scope_1.var_74_208)
		local var_74_245 = __recovered_scope_0.var_0_75()

		if var_74_245 then
			local var_74_246 = love.graphics.getFont()

			love.graphics.setFont(var_74_245)

			local var_74_247 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.textScale or 1.3
			local var_74_248 = (__recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.textOffsetX or 0) * __recovered_scope_1.var_74_27
			local var_74_249 = (__recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.textOffsetY or 0) * __recovered_scope_1.var_74_27
			local var_74_250 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.textColor or {
				1,
				1,
				1,
				1
			}
			local var_74_251 = var_74_245:getWidth(var_74_244) * var_74_247
			local var_74_252 = var_74_245:getHeight() * var_74_247
			local var_74_253 = math.floor(__recovered_scope_1.var_74_218 + var_74_248)
			local var_74_254 = math.floor(__recovered_scope_1.var_74_216 + (__recovered_scope_1.var_74_214 - var_74_252) / 2 + var_74_249 - 4 * __recovered_scope_1.var_74_27)

			love.graphics.setColor(var_74_250[1], var_74_250[2], var_74_250[3], var_74_250[4] * __recovered_scope_1.var_74_33)
			love.graphics.print(var_74_244, var_74_253, var_74_254, 0, var_74_247, var_74_247)
			love.graphics.setFont(var_74_246)
		end
	else
		love.graphics.setColor(0.35, 0.35, 0.35, 0.7 * __recovered_scope_1.var_74_33)
		love.graphics.rectangle("fill", __recovered_scope_1.var_74_218, __recovered_scope_1.var_74_216, __recovered_scope_1.var_74_219, __recovered_scope_1.var_74_214)

		local var_74_255 = "MAX"
		local var_74_256 = __recovered_scope_0.var_0_75()

		if var_74_256 then
			local var_74_257 = love.graphics.getFont()

			love.graphics.setFont(var_74_256)

			local var_74_258 = __recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.textScale or 1.3
			local var_74_259 = (__recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.textOffsetX or 0) * __recovered_scope_1.var_74_27
			local var_74_260 = (__recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.textOffsetY or 0) * __recovered_scope_1.var_74_27
			local var_74_261 = {
				0.9,
				0.7,
				0.2,
				1
			}
			local var_74_262 = var_74_256:getWidth(var_74_255) * var_74_258
			local var_74_263 = var_74_256:getHeight() * var_74_258
			local var_74_264 = math.floor(__recovered_scope_1.var_74_218 + var_74_259)
			local var_74_265 = math.floor(__recovered_scope_1.var_74_216 + (__recovered_scope_1.var_74_214 - var_74_263) / 2 + var_74_260 - 4 * __recovered_scope_1.var_74_27)

			love.graphics.setColor(var_74_261[1], var_74_261[2], var_74_261[3], (var_74_261[4] or 1) * __recovered_scope_1.var_74_33)
			love.graphics.print(var_74_255, var_74_264, var_74_265, 0, var_74_258, var_74_258)
			love.graphics.setFont(var_74_257)
		end
	end

	 __recovered_scope_1.var_74_266 = __recovered_scope_1.var_74_8

	if __recovered_scope_1.var_74_266 and not __recovered_scope_1.var_74_266.isShadowMinion then
		local var_74_267 = require("src.game.awakening").maxRank(__recovered_scope_1.var_74_266)
		local var_74_268 = tonumber(__recovered_scope_1.var_74_266.rank or __recovered_scope_1.var_74_266.star or 1) or 1

		if var_74_268 < 1 then
			var_74_268 = 1
		elseif var_74_267 < var_74_268 then
			var_74_268 = var_74_267
		end

		local var_74_269 = 7
		local var_74_270 = math.max(1, math.floor(1 * __recovered_scope_1.var_74_27 + 0.5))
		local var_74_271 = 2 * var_74_270
		local var_74_272 = var_74_269 * var_74_270
		local var_74_273 = var_74_267 * var_74_272 + (var_74_267 - 1) * var_74_271
		local var_74_274 = (__recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.starOffsetX or 0) * __recovered_scope_1.var_74_27
		local var_74_275 = (__recovered_scope_1.var_74_189 and __recovered_scope_1.var_74_189.starOffsetY or 0) * __recovered_scope_1.var_74_27
		local var_74_276 = math.floor(__recovered_scope_1.var_74_218 + __recovered_scope_1.var_74_219 - var_74_273 + var_74_274)
		local var_74_277 = math.floor(__recovered_scope_1.var_74_216 + __recovered_scope_1.var_74_214 + 3 * __recovered_scope_1.var_74_27 + var_74_275)
		local var_74_278 = __recovered_scope_1.var_74_33
		local var_74_279 = require("src.game.awakening").stage(__recovered_scope_1.var_74_266)

		for iter_74_2 = 1, var_74_267 do
			local var_74_280 = var_74_276 + (iter_74_2 - 1) * (var_74_272 + var_74_271)

			require("src.ui.widgets").awakening_star.draw(var_74_280, var_74_277, var_74_270, iter_74_2 <= var_74_268, iter_74_2 <= var_74_279, var_74_278)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	love.graphics.setColor(__recovered_scope_1.var_74_223[1], __recovered_scope_1.var_74_223[2], __recovered_scope_1.var_74_223[3], __recovered_scope_1.var_74_223[4] * 0.5 * __recovered_scope_1.var_74_33)
	love.graphics.setLineWidth(1)
	love.graphics.rectangle("line", __recovered_scope_1.var_74_218 + 0.5, __recovered_scope_1.var_74_216 + 0.5, __recovered_scope_1.var_74_219 - 1, __recovered_scope_1.var_74_214 - 1)

	if __recovered_scope_1.var_74_106 ~= "" then
		local var_74_281 = __recovered_scope_1.var_74_122
		local var_74_282 = __recovered_scope_1.var_74_110

		love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)
		love.graphics.print(__recovered_scope_1.var_74_106, math.floor(var_74_281), math.floor(var_74_282), 0, __recovered_scope_1.var_74_98, __recovered_scope_1.var_74_98)
	end

	__recovered_scope_0.var_0_0._absorbLvRect = {
		x = __recovered_scope_1.var_74_171,
		y = __recovered_scope_1.var_74_172,
		w = __recovered_scope_1.var_74_173,
		h = __recovered_scope_1.var_74_174
	}
	__recovered_scope_0.var_0_0._absorbLvAnchor = {
		x = __recovered_scope_1.var_74_155,
		y = __recovered_scope_1.var_74_156,
		w = __recovered_scope_1.var_74_151,
		h = __recovered_scope_1.var_74_151
	}

	if __recovered_scope_1.var_74_167 then
		__recovered_scope_0.var_0_0._hoveredAbsorbIcon = {
			stats = __recovered_scope_0.var_0_0.getAbsorbLvStats(__recovered_scope_1.var_74_8),
			anchor = __recovered_scope_0.var_0_0._absorbLvAnchor
		}
	end

	if arg_74_0.font then
		love.graphics.setFont(arg_74_0.font)
	end

	if __recovered_scope_1.var_74_7 and __recovered_scope_1.var_74_6 and __recovered_scope_1.var_74_6.preview then
		local var_74_283 = __recovered_scope_1.var_74_6.preview
		local var_74_284 = __recovered_scope_0.var_0_17(font, 12)
		local var_74_285 = __recovered_scope_1.var_74_72
		local var_74_286 = __recovered_scope_1.var_74_73 + var_74_284 * 2 + __recovered_scope_0.var_0_50(6 * __recovered_scope_1.var_74_27)
		local var_74_287 = math.max(0, math.floor(tonumber(var_74_283.totalAbsorbLvGain or 0) or 0))
		local var_74_288 = "흡수 결과: 흡수 LV +" .. tostring(var_74_287)

		if var_74_283.convertAvailable and var_74_283.convertBonus then
			local var_74_289 = math.max(0, math.floor(tonumber(var_74_283.convertBonus) or 0))
			local var_74_290 = var_74_288 .. " (전환 +" .. tostring(var_74_289) .. ")"
		end

		local var_74_291 = var_74_283.incomingImprint
		local var_74_292 = var_74_283.action or {
			kind = "none"
		}
		local var_74_293 = "각인: 변화 없음"

		if var_74_291 then
			local var_74_294 = var_74_291.rarity
			local var_74_295 = __recovered_scope_0.var_0_1 and __recovered_scope_0.var_0_1.unitGrades and __recovered_scope_0.var_0_1.unitGrades.labels and __recovered_scope_0.var_0_1.unitGrades.labels[var_74_294] or var_74_294 or ""

			if var_74_295 ~= "" then
				var_74_295 = "(" .. tostring(var_74_295) .. ")"
			end

			local var_74_296 = tostring(var_74_291.name or var_74_291.id or "각인") .. " " .. __recovered_scope_0.var_0_49(var_74_291.level or 1)

			if var_74_292.kind == "insert" then
				local var_74_297 = "각인 획득: " .. var_74_296 .. var_74_295
			elseif var_74_292.kind == "replace" then
				local var_74_298 = "각인 교체: " .. var_74_296 .. var_74_295 .. " (슬롯 선택)"
			elseif var_74_292.kind == "upgradeLevel" then
				local var_74_299 = tonumber(var_74_292.curLevel) or 1
				local var_74_300 = tonumber(var_74_292.toLevel) or var_74_299 + 1

				if var_74_300 < 1 then
					var_74_300 = 1
				end

				local var_74_301 = " (Lv." .. tostring(var_74_299) .. "→Lv." .. tostring(var_74_300) .. ")"
				local var_74_302 = "각인 업그레이드: " .. var_74_296 .. var_74_301
			elseif var_74_292.kind == "max" then
				local var_74_303 = "각인 최대: " .. var_74_296 .. var_74_295
			else
				local var_74_304 = "각인 유지: " .. var_74_296 .. var_74_295
			end
		end

		if (not var_74_283.needsChoice or var_74_283.needsChoice and var_74_283.convertAvailable) and var_74_283.convertAvailable then
			local var_74_305 = math.max(0, math.floor(tonumber(var_74_283.convertBonus or 0) or 0))
			local var_74_306 = math.max(0, math.floor(tonumber(var_74_283.totalAbsorbLvGain or 0) or 0)) + var_74_305
			local var_74_307 = __recovered_scope_0.var_0_5.getText("imprint_convert_prefix", _G.currentGameLang or "ko") .. tostring(var_74_306)

			__recovered_scope_0.var_0_0._previewConvertInfo = {
				label = var_74_307
			}
		end
	end

	 __recovered_scope_1.var_74_308 = __recovered_scope_1.var_74_8.grade or "normal"

	if __recovered_scope_1.var_74_8.jackpot5th == true then
		__recovered_scope_1.var_74_308 = "prism"
	end

	 __recovered_scope_1.var_74_309 = __recovered_scope_1.var_74_8.maxImprintSlots or __recovered_scope_0.var_0_1 and __recovered_scope_0.var_0_1.imprint and __recovered_scope_0.var_0_1.imprint.slots and __recovered_scope_0.var_0_1.imprint.slots[__recovered_scope_1.var_74_308] or 1
	 __recovered_scope_1.var_74_310 = math.max(1, math.min(5, math.floor(tonumber(__recovered_scope_1.var_74_309) or 1)))
	 __recovered_scope_1.var_74_311 = __recovered_scope_1.var_74_8.imprints or {}
	 __recovered_scope_1.var_74_312 = {}

	for iter_74_3 = 1, __recovered_scope_1.var_74_310 do
		__recovered_scope_1.var_74_312[iter_74_3] = __recovered_scope_1.var_74_311[iter_74_3]

		if __recovered_scope_1.var_74_312[iter_74_3] then
			__recovered_scope_0.var_0_60(__recovered_scope_1.var_74_312[iter_74_3])
		end
	end

	 __recovered_scope_1.var_74_313 = nil

	if arg_74_2 and arg_74_2.predictionSource then
		local var_74_314 = __recovered_scope_0.var_0_59(arg_74_2.predictionSource)

		if var_74_314 then
			local var_74_315 = false

			for iter_74_4 = 1, __recovered_scope_1.var_74_310 do
				local var_74_316 = __recovered_scope_1.var_74_312[iter_74_4]

				if var_74_316 and var_74_316.id == var_74_314.id then
					var_74_315 = true

					break
				end
			end

			local var_74_317 = arg_74_2.predictionSlot

			if type(var_74_317) ~= "number" then
				var_74_317 = tonumber(var_74_317)
			end

			if not var_74_315 then
				local var_74_318

				if var_74_317 and var_74_317 >= 1 and var_74_317 <= __recovered_scope_1.var_74_310 then
					var_74_318 = var_74_317
				else
					for iter_74_5 = 1, __recovered_scope_1.var_74_310 do
						if __recovered_scope_1.var_74_312[iter_74_5] == nil then
							var_74_318 = iter_74_5

							break
						end
					end
				end

				if var_74_318 then
					local var_74_319 = __recovered_scope_0.var_0_61(var_74_314)

					var_74_319._isPrediction = true
					__recovered_scope_1.var_74_312[var_74_318] = var_74_319

					local var_74_320 = var_74_318
				end
			end
		end
	end

	 __recovered_scope_1.var_74_321 = __recovered_scope_0.var_0_50(10 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_322 = __recovered_scope_0.var_0_50(52 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_323 = __recovered_scope_0.var_0_50(8 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_324 = __recovered_scope_0.var_0_50(3 * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_325 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_30 + __recovered_scope_1.var_74_321)
	 __recovered_scope_1.var_74_326 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_31 + __recovered_scope_1.var_74_322)
	 __recovered_scope_1.var_74_327 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_29 - __recovered_scope_1.var_74_321 * 2)
	 __recovered_scope_1.var_74_328 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_28 - __recovered_scope_1.var_74_322 - __recovered_scope_1.var_74_323)

	if __recovered_scope_1.var_74_327 <= 1 or __recovered_scope_1.var_74_328 <= 1 then
		return
	end

	 __recovered_scope_1.var_74_329 = __recovered_scope_1.var_74_325
	 __recovered_scope_1.var_74_330 = __recovered_scope_1.var_74_327
	 __recovered_scope_1.var_74_331 = __recovered_scope_1.var_74_326
	 __recovered_scope_1.var_74_332 = __recovered_scope_1.var_74_328
	 __recovered_scope_1.var_74_333 = arg_74_0.imprintPanel

	if __recovered_scope_1.var_74_333 then
		local var_74_334 = tonumber(__recovered_scope_1.var_74_333.slotW)

		if var_74_334 and var_74_334 > 0 then
			local var_74_335 = __recovered_scope_0.var_0_50(var_74_334 * __recovered_scope_1.var_74_27)

			__recovered_scope_1.var_74_330 = math.max(60, math.min(__recovered_scope_1.var_74_327, var_74_335))
			__recovered_scope_1.var_74_329 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_325 + (__recovered_scope_1.var_74_327 - __recovered_scope_1.var_74_330) * 0.5)
		end

		local var_74_336 = tonumber(__recovered_scope_1.var_74_333.slotX)

		if var_74_336 then
			__recovered_scope_1.var_74_329 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_30 + var_74_336 * __recovered_scope_1.var_74_27)
		end

		local var_74_337 = tonumber(__recovered_scope_1.var_74_333.slotY)

		if var_74_337 then
			__recovered_scope_1.var_74_331 = __recovered_scope_0.var_0_50(__recovered_scope_1.var_74_31 + var_74_337 * __recovered_scope_1.var_74_27)
		end

		local var_74_338 = tonumber(__recovered_scope_1.var_74_333.slotH)

		if var_74_338 and var_74_338 > 0 then
			local var_74_339 = __recovered_scope_0.var_0_50(var_74_338 * __recovered_scope_1.var_74_27)
		end
	end

	 __recovered_scope_1.var_74_340 = 5
	 __recovered_scope_1.var_74_341 = math.max(1, math.min(__recovered_scope_1.var_74_340, __recovered_scope_1.var_74_310 or 1))

	if __recovered_scope_0.var_0_0._slotBgImage == nil then
		local var_74_342 = "src/sprites/background/mainbackground/Imprintslot.png"
		local var_74_343, var_74_344 = pcall(love.graphics.newImage, var_74_342)

		if var_74_343 and var_74_344 then
			var_74_344:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_0._slotBgImage = var_74_344

			local var_74_345, var_74_346 = pcall(love.image.newImageData, var_74_342)

			if var_74_345 and var_74_346 then
				local var_74_347, var_74_348 = var_74_346:getDimensions()
				local var_74_349 = var_74_347
				local var_74_350 = 0

				for iter_74_6 = 0, var_74_348 - 1 do
					for iter_74_7 = 0, var_74_347 - 1 do
						local var_74_351, var_74_352, var_74_353, var_74_354 = var_74_346:getPixel(iter_74_7, iter_74_6)

						if var_74_354 > 0 then
							if iter_74_7 < var_74_349 then
								var_74_349 = iter_74_7
							end

							if var_74_350 < iter_74_7 then
								var_74_350 = iter_74_7
							end
						end
					end
				end

				if var_74_349 <= var_74_350 then
					__recovered_scope_0.var_0_0._slotTrimmedW = var_74_350 - var_74_349 + 1
					__recovered_scope_0.var_0_0._slotTrimmedOffsetX = var_74_349
				else
					__recovered_scope_0.var_0_0._slotTrimmedW = var_74_347
					__recovered_scope_0.var_0_0._slotTrimmedOffsetX = 0
				end
			end
		else
			__recovered_scope_0.var_0_0._slotBgImage = false
		end
	end

	if __recovered_scope_0.var_0_0._gainBgImage == nil then
		local var_74_355 = "src/sprites/background/mainbackground/Imprintgainbackground.png"
		local var_74_356, var_74_357 = pcall(love.graphics.newImage, var_74_355)

		if var_74_356 and var_74_357 then
			var_74_357:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_0._gainBgImage = var_74_357
		else
			__recovered_scope_0.var_0_0._gainBgImage = false
		end
	end

	if __recovered_scope_0.var_0_0._cancelBtnImage == nil then
		local var_74_358 = "src/sprites/background/button/cancelbutton.png"
		local var_74_359, var_74_360 = pcall(love.graphics.newImage, var_74_358)

		if var_74_359 and var_74_360 then
			var_74_360:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_0._cancelBtnImage = var_74_360
		else
			__recovered_scope_0.var_0_0._cancelBtnImage = false
		end
	end

	if __recovered_scope_0.var_0_0._upgradeBtnImage == nil then
		local var_74_361 = "src/sprites/background/button/imprintupgrade.png"
		local var_74_362, var_74_363 = pcall(love.graphics.newImage, var_74_361)

		if var_74_362 and var_74_363 then
			var_74_363:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_0._upgradeBtnImage = var_74_363
		else
			__recovered_scope_0.var_0_0._upgradeBtnImage = false
		end
	end

	if __recovered_scope_0.var_0_0._confirmBtnImage == nil then
		local var_74_364 = "src/sprites/background/button/imprintconfirm.png"
		local var_74_365, var_74_366 = pcall(love.graphics.newImage, var_74_364)

		if var_74_365 and var_74_366 then
			var_74_366:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_0._confirmBtnImage = var_74_366
		else
			__recovered_scope_0.var_0_0._confirmBtnImage = false
		end
	end

	if __recovered_scope_0.var_0_0._changeBtnImage == nil then
		local var_74_367 = "src/sprites/background/button/imprintchange.png"
		local var_74_368, var_74_369 = pcall(love.graphics.newImage, var_74_367)

		if var_74_368 and var_74_369 then
			var_74_369:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_0._changeBtnImage = var_74_369
		else
			__recovered_scope_0.var_0_0._changeBtnImage = false
		end
	end

	if __recovered_scope_0.var_0_0._lockedIconImage == nil then
		local var_74_370 = "src/sprites/icons/imprinticons/00locked.png"
		local var_74_371, var_74_372 = pcall(love.graphics.newImage, var_74_370)

		if var_74_371 and var_74_372 then
			var_74_372:setFilter("nearest", "nearest")

			__recovered_scope_0.var_0_0._lockedIconImage = var_74_372
		else
			__recovered_scope_0.var_0_0._lockedIconImage = false
		end
	end

	 __recovered_scope_1.var_74_373 = __recovered_scope_0.var_0_0._slotBgImage
	 __recovered_scope_1.var_74_374 = __recovered_scope_0.var_0_0._slotTrimmedW or __recovered_scope_1.var_74_373 and __recovered_scope_1.var_74_373:getWidth() or __recovered_scope_1.var_74_330
	 __recovered_scope_1.var_74_375 = __recovered_scope_0.var_0_0._slotTrimmedOffsetX or 0
	 __recovered_scope_1.var_74_376 = 40

	if __recovered_scope_1.var_74_373 then
		__recovered_scope_1.var_74_376 = __recovered_scope_1.var_74_373:getHeight()
	end

	if not __recovered_scope_1.var_74_373 then
		__recovered_scope_1.var_74_376 = math.floor(__recovered_scope_1.var_74_376 * __recovered_scope_1.var_74_27 + 0.5)
	end

	 __recovered_scope_1.var_74_377 = 3

	if arg_74_0.imprintPanel and arg_74_0.imprintPanel.slotGap then
		__recovered_scope_1.var_74_377 = tonumber(arg_74_0.imprintPanel.slotGap) or 3
	end

	 __recovered_scope_1.var_74_378 = __recovered_scope_1.var_74_331

	__recovered_scope_0.var_0_0._hit = {
		active = false
	}

	 __recovered_scope_1.var_74_379 = __recovered_scope_1.var_74_7 and __recovered_scope_1.var_74_6 and __recovered_scope_1.var_74_6.preview or nil
	 __recovered_scope_1.var_74_380 = __recovered_scope_1.var_74_379 and __recovered_scope_1.var_74_379.action and __recovered_scope_1.var_74_379.action.kind or nil

	if not __recovered_scope_1.var_74_7 or __recovered_scope_1.var_74_380 ~= "upgradeLevel" then
		__recovered_scope_0.var_0_32.upgradeBtnScale = __recovered_scope_0.var_0_32.upgradeBtnScale + (0.8 - __recovered_scope_0.var_0_32.upgradeBtnScale) * math.min(1, __recovered_scope_1.var_74_4 * 15)
	end

	if __recovered_scope_1.var_74_7 then
		__recovered_scope_0.var_0_0._modalHit.active = true
		__recovered_scope_0.var_0_0._modalHit.buttons = __recovered_scope_0.var_0_0._modalHit.buttons or {}
		__recovered_scope_0.var_0_0._modalHit.arrows = __recovered_scope_0.var_0_0._modalHit.arrows or {}
	end

	 __recovered_scope_1.var_74_381 = 0
	 __recovered_scope_1.var_74_382 = 0

	if arg_74_0.imprintPanel and arg_74_0.imprintPanel.slotBg then
		__recovered_scope_1.var_74_381 = tonumber(arg_74_0.imprintPanel.slotBg.offsetX or 0)
		__recovered_scope_1.var_74_382 = tonumber(arg_74_0.imprintPanel.slotBg.offsetY or 0)
	end

	 __recovered_scope_1.var_74_383 = -9
	 __recovered_scope_1.var_74_384 = 14

	if arg_74_0.imprintPanel and arg_74_0.imprintPanel.upgradeBtn then
		__recovered_scope_1.var_74_383 = tonumber(arg_74_0.imprintPanel.upgradeBtn.offsetX or 0)
		__recovered_scope_1.var_74_384 = tonumber(arg_74_0.imprintPanel.upgradeBtn.offsetY or 0)
	end

	for iter_74_8 = 1, 5 do
		local var_74_385 = __recovered_scope_1.var_74_378

		__recovered_scope_1.var_74_378 = __recovered_scope_1.var_74_378 + __recovered_scope_1.var_74_376 + __recovered_scope_1.var_74_377

		local var_74_386 = iter_74_8 <= __recovered_scope_1.var_74_310 and __recovered_scope_1.var_74_312[iter_74_8] or nil
		local var_74_387 = __recovered_scope_1.var_74_310 < iter_74_8
		local var_74_388 = var_74_386 == nil
		local var_74_389 = false
		local var_74_390 = __recovered_scope_1.var_74_373 and __recovered_scope_1.var_74_373:getWidth() or __recovered_scope_1.var_74_330
		local var_74_391 = __recovered_scope_1.var_74_376

		if not var_74_387 and not var_74_388 then
			local var_74_392 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381
			local var_74_393 = var_74_385 + __recovered_scope_1.var_74_382

			if var_74_392 <= __recovered_scope_1.var_74_0 and __recovered_scope_1.var_74_0 <= var_74_392 + var_74_390 and var_74_393 <= __recovered_scope_1.var_74_1 and __recovered_scope_1.var_74_1 <= var_74_393 + var_74_391 then
				var_74_389 = true
			end
		end

		__recovered_scope_0.var_0_32.slotScales[iter_74_8] = __recovered_scope_0.var_0_32.slotScales[iter_74_8] or 1

		local var_74_394 = var_74_389 and 1.15 or 1

		__recovered_scope_0.var_0_32.slotScales[iter_74_8] = __recovered_scope_0.var_0_32.slotScales[iter_74_8] + (var_74_394 - __recovered_scope_0.var_0_32.slotScales[iter_74_8]) * math.min(1, __recovered_scope_1.var_74_4 * 12)

		local var_74_395 = __recovered_scope_1.var_74_8 == __recovered_scope_0.var_0_32.blinkUnit and (__recovered_scope_0.var_0_32.impactScales[iter_74_8] or 0) or 0
		local var_74_396 = __recovered_scope_0.var_0_32.slotScales[iter_74_8] + var_74_395 * 0.1
		local var_74_397 = __recovered_scope_1.var_74_8 == __recovered_scope_0.var_0_32.blinkUnit and (__recovered_scope_0.var_0_32.floatOffsets[iter_74_8] or 0) or 0

		local function var_74_398(arg_75_0, arg_75_1, arg_75_2)
			local var_75_0 = 1.15
			local var_75_1 = __recovered_scope_1.var_74_373 and __recovered_scope_1.var_74_373:getWidth() or __recovered_scope_1.var_74_330
			local var_75_2 = __recovered_scope_1.var_74_376
			local var_75_3 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381 + var_75_1 / 2
			local var_75_4 = var_74_385 + __recovered_scope_1.var_74_382 + var_75_2 / 2 + var_74_397
			local var_75_5 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381 + __recovered_scope_1.var_74_375
			local var_75_6 = var_74_385 + __recovered_scope_1.var_74_382 + var_74_397
			local var_75_7 = var_75_3 + (var_75_5 - var_75_3) * var_75_0
			local var_75_8 = var_75_4 + (var_75_6 - var_75_4) * var_75_0
			local var_75_9 = arg_75_2 and var_75_5 or var_75_7
			local var_75_10 = arg_75_2 and __recovered_scope_1.var_74_374 or __recovered_scope_1.var_74_374 * var_75_0

			__recovered_scope_0.var_0_0._hoveredSlot = {
				index = arg_75_0,
				imprint = arg_75_1,
				x = var_75_9,
				y = var_75_8,
				w = var_75_10,
				h = var_75_2 * var_75_0,
				scale = var_74_396,
				tooltipScale = var_75_0,
				previewUpgrade = arg_75_2 or false
			}
		end

		if var_74_389 then
			var_74_398(iter_74_8, var_74_386, false)
		end

		love.graphics.push()
		love.graphics.translate(0, var_74_397)

		local var_74_399
		local var_74_400

		if __recovered_scope_1.var_74_7 and not var_74_387 then
			if __recovered_scope_1.var_74_380 == "upgradeLevel" then
				if iter_74_8 == (__recovered_scope_1.var_74_379.action and __recovered_scope_1.var_74_379.action.slot) then
					var_74_399 = __recovered_scope_0.var_0_0._upgradeBtnImage
					var_74_400 = "upgrade"
				end
			elseif __recovered_scope_1.var_74_380 == "insert" and var_74_386 == nil then
				var_74_399 = __recovered_scope_0.var_0_0._confirmBtnImage
				var_74_400 = "insert"
			elseif __recovered_scope_1.var_74_379 and __recovered_scope_1.var_74_379.needsChoice and var_74_386 then
				var_74_399 = __recovered_scope_0.var_0_0._changeBtnImage
				var_74_400 = "replace"
			end
		end

		if var_74_399 and var_74_400 then
			local var_74_401, var_74_402 = var_74_399:getDimensions()
			local var_74_403 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381 + var_74_390 + math.floor(4 * __recovered_scope_1.var_74_27 + 0.5) + math.floor(__recovered_scope_1.var_74_383 * __recovered_scope_1.var_74_27 + 0.5)
			local var_74_404 = var_74_385 + math.floor((__recovered_scope_1.var_74_376 - var_74_402) / 2 + 0.5) + math.floor(__recovered_scope_1.var_74_384 * __recovered_scope_1.var_74_27 + 0.5)
			local var_74_405 = false

			if var_74_403 <= __recovered_scope_1.var_74_0 and __recovered_scope_1.var_74_0 <= var_74_403 + var_74_401 and var_74_404 <= __recovered_scope_1.var_74_1 and __recovered_scope_1.var_74_1 <= var_74_404 + var_74_402 then
				var_74_405 = true
			end

			local var_74_406 = 0.8
			local var_74_407 = false

			if var_74_400 == "upgrade" then
				var_74_407 = __recovered_scope_0.var_0_32.upgradeBtnPressed and __recovered_scope_0.var_0_0._upgradeSlot == iter_74_8
			elseif var_74_400 == "replace" then
				var_74_407 = __recovered_scope_0.var_0_32.changeBtnPressed and __recovered_scope_0.var_0_0._changeSlot == iter_74_8
			else
				var_74_407 = __recovered_scope_0.var_0_32.confirmBtnPressed and __recovered_scope_0.var_0_0._confirmSlot == iter_74_8
			end

			if var_74_407 then
				var_74_406 = 0.7
			elseif var_74_405 then
				var_74_406 = 0.95

				if var_74_400 == "upgrade" and var_74_386 then
					var_74_398(iter_74_8, var_74_386, true)
				elseif var_74_400 == "replace" and var_74_386 then
					__recovered_scope_0.var_0_32.replaceHoveringNext = true

					var_74_398(iter_74_8, var_74_386, false)
				end
			end

			__recovered_scope_0.var_0_32.actionBtnScales[iter_74_8] = __recovered_scope_0.var_0_32.actionBtnScales[iter_74_8] or 0.8
			__recovered_scope_0.var_0_32.actionBtnScales[iter_74_8] = __recovered_scope_0.var_0_32.actionBtnScales[iter_74_8] + (var_74_406 - __recovered_scope_0.var_0_32.actionBtnScales[iter_74_8]) * math.min(1, __recovered_scope_1.var_74_4 * 15)

			local var_74_408 = __recovered_scope_0.var_0_32.actionBtnScales[iter_74_8]

			love.graphics.push()
			love.graphics.translate(var_74_403 + var_74_401 / 2, var_74_404 + var_74_402 / 2)
			love.graphics.scale(var_74_408, var_74_408)
			love.graphics.translate(-(var_74_403 + var_74_401 / 2), -(var_74_404 + var_74_402 / 2))
			love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
			love.graphics.draw(var_74_399, var_74_403, var_74_404)
			love.graphics.pop()

			local var_74_409 = var_74_401 * var_74_408
			local var_74_410 = var_74_402 * var_74_408
			local var_74_411 = var_74_403 + (var_74_401 - var_74_409) / 2
			local var_74_412 = var_74_404 + (var_74_402 - var_74_410) / 2
			local var_74_413 = {
				x = var_74_411,
				y = var_74_412,
				w = var_74_409,
				h = var_74_410,
				kind = var_74_400,
				slot = iter_74_8
			}

			table.insert(__recovered_scope_0.var_0_0._modalHit.buttons, var_74_413)
		end

		love.graphics.push()

		local var_74_414 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381 + var_74_390 / 2
		local var_74_415 = var_74_385 + __recovered_scope_1.var_74_382 + var_74_391 / 2

		love.graphics.translate(var_74_414, var_74_415)

		local var_74_416 = var_74_396

		love.graphics.scale(var_74_416, var_74_416)
		love.graphics.translate(-var_74_414, -var_74_415)

		if iter_74_8 <= __recovered_scope_1.var_74_310 then
			if var_74_386 and var_74_386.icon and not var_74_386._isPrediction then
				local var_74_417 = __recovered_scope_0.var_0_63(__recovered_scope_0.var_0_0, var_74_386.icon)

				if var_74_417 then
					local var_74_418, var_74_419 = var_74_417:getDimensions()
					local var_74_420 = 4
					local var_74_421 = 0

					if arg_74_0.imprintPanel and arg_74_0.imprintPanel.iconOffset then
						var_74_420 = tonumber(arg_74_0.imprintPanel.iconOffset.x) or 4
						var_74_421 = tonumber(arg_74_0.imprintPanel.iconOffset.y) or 0
					end

					local var_74_422 = __recovered_scope_1.var_74_329 + math.floor(var_74_420 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_423 = var_74_385 + math.floor((__recovered_scope_1.var_74_376 - var_74_419) / 2) + math.floor(var_74_421 * __recovered_scope_1.var_74_27 + 0.5)

					love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
					love.graphics.draw(var_74_417, var_74_422, var_74_423)
				end
			end
		else
			local var_74_424 = __recovered_scope_0.var_0_0._lockedIconImage

			if var_74_424 then
				local var_74_425, var_74_426 = var_74_424:getDimensions()
				local var_74_427 = 4
				local var_74_428 = 0

				if arg_74_0.imprintPanel and arg_74_0.imprintPanel.iconOffset then
					var_74_427 = tonumber(arg_74_0.imprintPanel.iconOffset.x) or 4
					var_74_428 = tonumber(arg_74_0.imprintPanel.iconOffset.y) or 0
				end

				local var_74_429 = __recovered_scope_1.var_74_329 + math.floor(var_74_427 * __recovered_scope_1.var_74_27 + 0.5)
				local var_74_430 = var_74_385 + math.floor((__recovered_scope_1.var_74_376 - var_74_426) / 2) + math.floor(var_74_428 * __recovered_scope_1.var_74_27 + 0.5)

				love.graphics.setColor(0.5, 0.5, 0.5, 1 * __recovered_scope_1.var_74_33)
				love.graphics.draw(var_74_424, var_74_429, var_74_430)
			end
		end

		if __recovered_scope_1.var_74_373 then
			local var_74_431 = var_74_386 and tostring(var_74_386.rarity or ""):lower()
			local var_74_432 = var_74_431 == "special"
			local var_74_433 = var_74_431 == "advanced"
			local var_74_434 = var_74_431 == "rare" or var_74_431 == "r"
			local var_74_435 = var_74_431 == "legendary" or var_74_431 == "legend" or var_74_431 == "l"
			local var_74_436 = var_74_431 == "prism" or var_74_431 == "p"
			local var_74_437 = var_74_432 and __recovered_scope_0.var_0_37()
			local var_74_438 = var_74_433 and __recovered_scope_0.var_0_39()
			local var_74_439 = var_74_434 and __recovered_scope_0.var_0_41()
			local var_74_440 = var_74_435 and __recovered_scope_0.var_0_43()
			local var_74_441 = var_74_436 and __recovered_scope_0.var_0_45()
			local var_74_442 = var_74_437 or var_74_438 or var_74_439 or var_74_440 or var_74_441

			if iter_74_8 <= __recovered_scope_1.var_74_310 then
				love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
			else
				love.graphics.setColor(0.5, 0.5, 0.5, 1 * __recovered_scope_1.var_74_33)
			end

			if var_74_442 then
				if var_74_436 and var_74_442:hasUniform("u_time") then
					local var_74_443 = var_74_442

					local function var_74_444(arg_76_0, arg_76_1)
						if var_74_443:hasUniform(arg_76_0) then
							var_74_443:send(arg_76_0, arg_76_1)
						end
					end

					var_74_444("u_time", love.timer.getTime() % 10000)
					var_74_444("u_uiBase", {
						0.24313725490196078,
						0.20784313725490197,
						0.27450980392156865
					})
					var_74_444("u_dir", {
						1,
						0.4
					})
					var_74_444("u_cycle", 4)
					var_74_444("u_scale", 2)
					var_74_444("u_grainScale", 3)
					var_74_444("u_grainAmp", 0.2)
					var_74_444("u_filmFreq", 2)
					var_74_444("u_filmAmp", 0.25)
					var_74_444("u_specular", 0.5)
					var_74_444("u_fresnelPow", 2.5)
					var_74_444("u_colorGain", 1.8)
					var_74_444("u_saturation", 1.5)
					var_74_444("u_mixBP", 0.32)
				end

				love.graphics.setShader(var_74_442)
			end

			love.graphics.draw(__recovered_scope_1.var_74_373, __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381, var_74_385 + __recovered_scope_1.var_74_382, 0, 1, 1)

			if var_74_442 then
				love.graphics.setShader()
			end

			if __recovered_scope_0.var_0_0._hoveredSlot and __recovered_scope_0.var_0_0._hoveredSlot.index == iter_74_8 and __recovered_scope_0.var_0_0._hoveredSlot.previewUpgrade then
				love.graphics.setBlendMode("add")

				local var_74_445 = (0.5 + 0.5 * math.sin(love.timer.getTime() * 15)) * 0.4

				love.graphics.setColor(1, 1, 1, var_74_445 * __recovered_scope_1.var_74_33)

				if var_74_442 then
					love.graphics.setShader(var_74_442)
				end

				love.graphics.draw(__recovered_scope_1.var_74_373, __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381, var_74_385 + __recovered_scope_1.var_74_382, 0, 1, 1)

				if var_74_442 then
					love.graphics.setShader()
				end

				love.graphics.setBlendMode("alpha")
			end

			if var_74_395 > 0 then
				love.graphics.setBlendMode("add")
				love.graphics.setColor(1, 0.9, 0.5, var_74_395 * 0.4 * __recovered_scope_1.var_74_33)

				for iter_74_9 = 1, 3 do
					local var_74_446 = 1 + iter_74_9 * 0.02 * var_74_395

					if var_74_442 then
						love.graphics.setShader(var_74_442)
					end

					love.graphics.draw(__recovered_scope_1.var_74_373, __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381 + var_74_390 / 2, var_74_385 + __recovered_scope_1.var_74_382 + var_74_391 / 2, 0, var_74_446, var_74_446, var_74_390 / 2, var_74_391 / 2)

					if var_74_442 then
						love.graphics.setShader()
					end
				end

				love.graphics.setColor(1, 1, 1, var_74_395 * 0.8 * __recovered_scope_1.var_74_33)

				if var_74_442 then
					love.graphics.setShader(var_74_442)
				end

				love.graphics.draw(__recovered_scope_1.var_74_373, __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381, var_74_385 + __recovered_scope_1.var_74_382, 0, 1, 1)

				if var_74_442 then
					love.graphics.setShader()
				end

				love.graphics.setBlendMode("alpha")
			end

			if __recovered_scope_0.var_0_32.blinkSlot == iter_74_8 and __recovered_scope_1.var_74_8 == __recovered_scope_0.var_0_32.blinkUnit and math.abs(__recovered_scope_0.var_0_32.x - __recovered_scope_1.var_74_17) > 2 then
				local var_74_447 = 8
				local var_74_448 = 0.3

				if __recovered_scope_0.var_0_32.blinkTimer > 0 then
					var_74_447 = 15
					var_74_448 = 0.5
				end

				love.graphics.setBlendMode("add")

				local var_74_449 = (0.5 + 0.5 * math.sin(__recovered_scope_1.var_74_3 * var_74_447)) * var_74_448

				love.graphics.setColor(1, 0.9, 0.6, var_74_449 * __recovered_scope_1.var_74_33)

				if var_74_442 then
					love.graphics.setShader(var_74_442)
				end

				love.graphics.draw(__recovered_scope_1.var_74_373, __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_381, var_74_385 + __recovered_scope_1.var_74_382, 0, 1, 1)

				if var_74_442 then
					love.graphics.setShader()
				end

				love.graphics.setBlendMode("alpha")
			end
		else
			local var_74_450 = var_74_386 and tostring(var_74_386.rarity or ""):lower()
			local var_74_451 = var_74_450 == "special"
			local var_74_452 = var_74_450 == "advanced"
			local var_74_453 = var_74_450 == "rare" or var_74_450 == "r"
			local var_74_454 = var_74_450 == "legendary" or var_74_450 == "legend" or var_74_450 == "l"
			local var_74_455 = var_74_450 == "prism" or var_74_450 == "p"

			if iter_74_8 <= __recovered_scope_1.var_74_310 then
				if var_74_455 then
					love.graphics.setColor(0.35294117647058826, 0.1568627450980392, 0.47058823529411764, 1 * __recovered_scope_1.var_74_33)
				elseif var_74_451 then
					love.graphics.setColor(0.44313725490196076, 0.20392156862745098, 0.3843137254901961, 1 * __recovered_scope_1.var_74_33)
				elseif var_74_454 then
					love.graphics.setColor(0.43137254901960786, 0.3333333333333333, 0.19607843137254902, 1 * __recovered_scope_1.var_74_33)
				elseif var_74_453 then
					love.graphics.setColor(0.20784313725490197, 0.29411764705882354, 0.4196078431372549, 1 * __recovered_scope_1.var_74_33)
				elseif var_74_452 then
					love.graphics.setColor(0.1568627450980392, 0.30196078431372547, 0.18823529411764706, 1 * __recovered_scope_1.var_74_33)
				else
					love.graphics.setColor(0.2, 0.2, 0.2, 1 * __recovered_scope_1.var_74_33)
				end
			else
				love.graphics.setColor(0.1, 0.1, 0.1, 0.5 * __recovered_scope_1.var_74_33)
			end

			love.graphics.rectangle("fill", __recovered_scope_1.var_74_329, var_74_385, __recovered_scope_1.var_74_330, __recovered_scope_1.var_74_376)

			if var_74_395 > 0 then
				love.graphics.setBlendMode("add")
				love.graphics.setColor(1, 0.9, 0.5, var_74_395 * 0.6 * __recovered_scope_1.var_74_33)
				love.graphics.rectangle("fill", __recovered_scope_1.var_74_329 - 2, var_74_385 - 2, __recovered_scope_1.var_74_330 + 4, __recovered_scope_1.var_74_376 + 4)
				love.graphics.setBlendMode("alpha")
			end

			if __recovered_scope_0.var_0_32.blinkSlot == iter_74_8 and __recovered_scope_1.var_74_8 == __recovered_scope_0.var_0_32.blinkUnit and math.abs(__recovered_scope_0.var_0_32.x - __recovered_scope_1.var_74_17) > 2 then
				local var_74_456 = 8
				local var_74_457 = 0.3

				if __recovered_scope_0.var_0_32.blinkTimer > 0 then
					var_74_456 = 15
					var_74_457 = 0.5
				end

				love.graphics.setBlendMode("add")

				local var_74_458 = (0.5 + 0.5 * math.sin(__recovered_scope_1.var_74_3 * var_74_456)) * var_74_457

				love.graphics.setColor(1, 0.9, 0.6, var_74_458 * __recovered_scope_1.var_74_33)
				love.graphics.rectangle("fill", __recovered_scope_1.var_74_329, var_74_385, __recovered_scope_1.var_74_330, __recovered_scope_1.var_74_376)
				love.graphics.setBlendMode("alpha")
			end

			if var_74_451 then
				love.graphics.setColor(0.6509803921568628, 0.37254901960784315, 0.6039215686274509, 1 * __recovered_scope_1.var_74_33)
			elseif var_74_452 then
				love.graphics.setColor(0.2901960784313726, 0.5568627450980392, 0.34901960784313724, 1 * __recovered_scope_1.var_74_33)
			else
				love.graphics.setColor(0.3, 0.3, 0.3, 1 * __recovered_scope_1.var_74_33)
			end

			local var_74_459 = love.graphics.getLineWidth()

			love.graphics.setLineWidth(1)
			love.graphics.rectangle("line", __recovered_scope_1.var_74_329 + 0.5, var_74_385 + 0.5, __recovered_scope_1.var_74_330 - 1, __recovered_scope_1.var_74_376 - 1)
			love.graphics.setLineWidth(var_74_459)
		end

		if iter_74_8 <= __recovered_scope_1.var_74_310 then
			if var_74_386 and var_74_386._isPrediction then
				local var_74_460 = __recovered_scope_1.var_74_311[iter_74_8]
				local var_74_461 = var_74_386
				local var_74_462 = love.timer.getTime()
				local var_74_463 = 0.6 + 0.4 * math.abs(math.sin(var_74_462 * 6))
				local var_74_464 = math.floor(4 * __recovered_scope_1.var_74_27 + 0.5)
				local var_74_465 = math.floor(4 * __recovered_scope_1.var_74_27 + 0.5)
				local var_74_466 = __recovered_scope_0.var_0_17(font, math.floor(12 * __recovered_scope_1.var_74_27 + 0.5))
				local var_74_467 = math.max(1, math.floor(var_74_466 + 2 * __recovered_scope_1.var_74_27 + 0.5))
				local var_74_468 = math.max(1, var_74_466 + math.max(1, math.floor(5 * __recovered_scope_1.var_74_27 + 0.5)))
				local var_74_469 = math.floor((__recovered_scope_1.var_74_330 - var_74_464 * 2 - var_74_465) / 2)

				if var_74_469 < 10 then
					var_74_469 = 10
				end

				local var_74_470 = __recovered_scope_1.var_74_329 + var_74_464
				local var_74_471 = var_74_470 + var_74_469 + var_74_465
				local var_74_472 = math.floor(18 * __recovered_scope_1.var_74_27 + 0.5)
				local var_74_473 = math.floor(__recovered_scope_1.var_74_376 - math.floor(8 * __recovered_scope_1.var_74_27 + 0.5))

				if var_74_473 < var_74_472 then
					var_74_472 = var_74_473
				end

				if var_74_472 < 10 then
					var_74_472 = 10
				end

				local var_74_474 = var_74_385 + math.floor(4 * __recovered_scope_1.var_74_27 + 0.5)
				local var_74_475 = var_74_474
				local var_74_476 = var_74_475 + var_74_467
				local var_74_477 = var_74_469 - (var_74_472 + math.floor(4 * __recovered_scope_1.var_74_27 + 0.5))

				if var_74_477 < 10 then
					var_74_477 = 10
				end

				if var_74_477 < math.floor(90 * __recovered_scope_1.var_74_27 + 0.5) then
					local var_74_478 = math.floor(6 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_479 = math.floor(6 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_480 = math.floor((__recovered_scope_1.var_74_376 - var_74_479 * 2 - var_74_478) / 2)

					if var_74_480 < math.floor(14 * __recovered_scope_1.var_74_27 + 0.5) then
						var_74_480 = math.floor(14 * __recovered_scope_1.var_74_27 + 0.5)
					end

					local var_74_481 = var_74_385 + var_74_479
					local var_74_482 = var_74_481 + var_74_480 + var_74_478
					local var_74_483 = math.min(var_74_472, var_74_480)
					local var_74_484 = var_74_481
					local var_74_485 = var_74_482
					local var_74_486 = love.graphics.getLineWidth()

					love.graphics.setLineWidth(1)
					love.graphics.setColor(0.25, 0.25, 0.25, 1 * __recovered_scope_1.var_74_33)

					local var_74_487 = var_74_481 + var_74_480 + math.floor(var_74_478 / 2)

					love.graphics.line(__recovered_scope_1.var_74_329 + 2, var_74_487 + 0.5, __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_330 - 2, var_74_487 + 0.5)
					love.graphics.setLineWidth(var_74_486)

					local var_74_488 = __recovered_scope_1.var_74_329 + var_74_464 + var_74_483 + math.floor(4 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_489 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_330 - var_74_464 - var_74_488

					if var_74_489 < 10 then
						var_74_489 = 10
					end

					local var_74_490 = __recovered_scope_0.var_0_53(var_74_480 - var_74_467, var_74_468)

					__recovered_scope_0.var_0_66(__recovered_scope_0.var_0_0, var_74_460 and var_74_460.icon, __recovered_scope_1.var_74_329 + var_74_464, var_74_484, var_74_483, 1 * __recovered_scope_1.var_74_33)

					local var_74_491 = _G.currentGameLang or "ko"

					love.graphics.setColor(0.6, 0.6, 0.6, 1 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_0._printFitted(love.graphics.getFont(), var_74_460 and __recovered_scope_0.var_0_5.getImprintName(var_74_460.id, var_74_460.name, var_74_491) or "Empty", var_74_488, var_74_481, var_74_489)
					love.graphics.setColor(0.85, 0.85, 0.85, 1 * __recovered_scope_1.var_74_33)

					local var_74_492 = var_74_460 and __recovered_scope_0.var_0_0.getShortIconImage(__recovered_scope_0.var_0_0, var_74_460.id)
					local var_74_493 = var_74_488

					if var_74_492 then
						local var_74_494, var_74_495 = var_74_492:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
						love.graphics.draw(var_74_492, var_74_493, var_74_481 + var_74_467 + math.floor((var_74_468 - var_74_495) / 2))

						var_74_493 = var_74_493 + var_74_494 + math.floor(2 * __recovered_scope_1.var_74_27 + 0.5)
					end

					love.graphics.setColor(0.85, 0.85, 0.85, 1 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_52(font, var_74_460 and __recovered_scope_0.var_0_5.getImprintShortDesc(var_74_460.id, var_74_460.shortDesc, var_74_491) or "", var_74_493, var_74_481 + var_74_467, var_74_489 - (var_74_493 - var_74_488), var_74_468, var_74_490)
					__recovered_scope_0.var_0_66(__recovered_scope_0.var_0_0, var_74_461 and var_74_461.icon, __recovered_scope_1.var_74_329 + var_74_464, var_74_485, var_74_483, 1 * __recovered_scope_1.var_74_33)
					love.graphics.setColor(0.4, 1, 0.4, var_74_463 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_0._printFitted(love.graphics.getFont(), var_74_461 and __recovered_scope_0.var_0_5.getImprintName(var_74_461.id, var_74_461.name, var_74_491) or "Empty", var_74_488, var_74_482, var_74_489)
					love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)

					local var_74_496 = var_74_461 and __recovered_scope_0.var_0_0.getShortIconImage(__recovered_scope_0.var_0_0, var_74_461.id)
					local var_74_497 = var_74_488

					if var_74_496 then
						local var_74_498, var_74_499 = var_74_496:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
						love.graphics.draw(var_74_496, var_74_497, var_74_482 + var_74_467 + math.floor((var_74_468 - var_74_499) / 2))

						var_74_497 = var_74_497 + var_74_498 + math.floor(2 * __recovered_scope_1.var_74_27 + 0.5)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_52(font, var_74_461 and __recovered_scope_0.var_0_5.getImprintShortDesc(var_74_461.id, var_74_461.shortDesc, var_74_491) or "", var_74_497, var_74_482 + var_74_467, var_74_489 - (var_74_497 - var_74_488), var_74_468, var_74_490)
				else
					local var_74_500 = love.graphics.getLineWidth()

					love.graphics.setLineWidth(1)
					love.graphics.setColor(0.25, 0.25, 0.25, 1 * __recovered_scope_1.var_74_33)

					local var_74_501 = __recovered_scope_1.var_74_329 + math.floor(__recovered_scope_1.var_74_330 / 2)

					love.graphics.line(var_74_501 + 0.5, var_74_385 + 2, var_74_501 + 0.5, var_74_385 + __recovered_scope_1.var_74_376 - 2)
					love.graphics.setLineWidth(var_74_500)
					__recovered_scope_0.var_0_66(__recovered_scope_0.var_0_0, var_74_460 and var_74_460.icon, var_74_470, var_74_474, var_74_472, 1 * __recovered_scope_1.var_74_33)

					local var_74_502 = var_74_470 + var_74_472 + math.floor(6 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_503 = _G.currentGameLang or "ko"
					local var_74_504 = var_74_460 and __recovered_scope_0.var_0_5.getImprintName(var_74_460.id, var_74_460.name, var_74_503) or "Empty"
					local var_74_505 = var_74_460 and __recovered_scope_0.var_0_5.getImprintShortDesc(var_74_460.id, var_74_460.shortDesc, var_74_503) or ""

					love.graphics.setColor(0.6, 0.6, 0.6, 1 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_0._printFitted(love.graphics.getFont(), var_74_504, var_74_502, var_74_475, var_74_477)
					love.graphics.setColor(0.85, 0.85, 0.85, 1 * __recovered_scope_1.var_74_33)

					local var_74_506 = var_74_385 + __recovered_scope_1.var_74_376 - var_74_476 - math.floor(4 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_507 = __recovered_scope_0.var_0_53(var_74_506, var_74_468)
					local var_74_508 = var_74_460 and __recovered_scope_0.var_0_0.getShortIconImage(__recovered_scope_0.var_0_0, var_74_460.id)
					local var_74_509 = var_74_502

					if var_74_508 then
						local var_74_510, var_74_511 = var_74_508:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
						love.graphics.draw(var_74_508, var_74_509, var_74_476 + math.floor((var_74_468 - var_74_511) / 2))

						var_74_509 = var_74_509 + var_74_510 + math.floor(2 * __recovered_scope_1.var_74_27 + 0.5)
					end

					love.graphics.setColor(0.85, 0.85, 0.85, 1 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_52(font, var_74_505, var_74_509, var_74_476, var_74_477 - (var_74_509 - var_74_502), var_74_468, var_74_507)
					__recovered_scope_0.var_0_66(__recovered_scope_0.var_0_0, var_74_461 and var_74_461.icon, var_74_471, var_74_474, var_74_472, 1 * __recovered_scope_1.var_74_33)

					local var_74_512 = var_74_471 + var_74_472 + math.floor(6 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_513 = var_74_461 and __recovered_scope_0.var_0_5.getImprintName(var_74_461.id, var_74_461.name, var_74_503) or "Empty"
					local var_74_514 = var_74_461 and __recovered_scope_0.var_0_5.getImprintShortDesc(var_74_461.id, var_74_461.shortDesc, var_74_503) or ""

					love.graphics.setColor(0.4, 1, 0.4, var_74_463 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_0._printFitted(love.graphics.getFont(), var_74_513, var_74_512, var_74_475, var_74_477)
					love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)

					local var_74_515 = var_74_461 and __recovered_scope_0.var_0_0.getShortIconImage(__recovered_scope_0.var_0_0, var_74_461.id)
					local var_74_516 = var_74_512

					if var_74_515 then
						local var_74_517, var_74_518 = var_74_515:getDimensions()

						love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
						love.graphics.draw(var_74_515, var_74_516, var_74_476 + math.floor((var_74_468 - var_74_518) / 2))

						var_74_516 = var_74_516 + var_74_517 + math.floor(2 * __recovered_scope_1.var_74_27 + 0.5)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_52(font, var_74_514, var_74_516, var_74_476, var_74_477 - (var_74_516 - var_74_512), var_74_468, var_74_507)
				end

				if arg_74_2 and arg_74_2.replaceUI then
					local var_74_519 = tonumber(arg_74_2.replaceSlot) or tonumber(arg_74_2.predictionSlot) or iter_74_8
					local var_74_520 = arg_74_2.replaceMode == "keep" and "keep" or "replace"
					local var_74_521 = math.floor(14 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_522 = math.floor(4 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_523 = var_74_385 + __recovered_scope_1.var_74_376 - var_74_521 - var_74_522
					local var_74_524 = __recovered_scope_1.var_74_329 + var_74_522
					local var_74_525 = __recovered_scope_1.var_74_330 - var_74_522 * 2

					if var_74_525 > 20 and var_74_523 >= var_74_385 + var_74_522 then
						local var_74_526 = math.floor(16 * __recovered_scope_1.var_74_27 + 0.5)

						if var_74_526 < 12 then
							var_74_526 = 12
						end

						local var_74_527 = math.floor(3 * __recovered_scope_1.var_74_27 + 0.5)
						local var_74_528 = math.floor(6 * __recovered_scope_1.var_74_27 + 0.5)
						local var_74_529 = math.floor(50 * __recovered_scope_1.var_74_27 + 0.5)

						if var_74_529 < 38 then
							var_74_529 = 38
						end

						if var_74_525 < var_74_526 * __recovered_scope_1.var_74_310 + var_74_527 * (__recovered_scope_1.var_74_310 - 1) + var_74_528 + var_74_529 * 2 + var_74_527 then
							var_74_529 = math.max(34, math.floor((var_74_525 - var_74_526 * __recovered_scope_1.var_74_310 - var_74_527 * (__recovered_scope_1.var_74_310 - 1) - var_74_528 - var_74_527) / 2))
						end

						__recovered_scope_0.var_0_0._hit = {
							active = true,
							slots = {}
						}

						local var_74_530 = var_74_524

						for iter_74_10 = 1, __recovered_scope_1.var_74_310 do
							local var_74_531 = {
								x = var_74_530,
								y = var_74_523,
								w = var_74_526,
								h = var_74_521,
								slot = iter_74_10
							}

							table.insert(__recovered_scope_0.var_0_0._hit.slots, var_74_531)

							local var_74_532 = iter_74_10 == var_74_519

							love.graphics.setColor(0.15, 0.15, 0.15, 0.85 * __recovered_scope_1.var_74_33)
							love.graphics.rectangle("fill", var_74_531.x, var_74_531.y, var_74_531.w, var_74_531.h)
							love.graphics.setColor(var_74_532 and 0.9 or 0.4, var_74_532 and 0.9 or 0.4, var_74_532 and 0.9 or 0.4, 1 * __recovered_scope_1.var_74_33)
							love.graphics.rectangle("line", var_74_531.x + 0.5, var_74_531.y + 0.5, var_74_531.w - 1, var_74_531.h - 1)
							love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)
							love.graphics.printf(tostring(iter_74_10), var_74_531.x, var_74_531.y + math.floor((var_74_521 - var_74_466) / 2 + 0.5), var_74_531.w, "center")

							var_74_530 = var_74_530 + var_74_526 + var_74_527
						end

						local var_74_533 = var_74_530 + var_74_528
						local var_74_534 = {
							x = var_74_533,
							y = var_74_523,
							w = var_74_529,
							h = var_74_521
						}
						local var_74_535 = var_74_533 + var_74_529 + var_74_527
						local var_74_536 = {
							x = var_74_535,
							y = var_74_523,
							w = var_74_529,
							h = var_74_521
						}

						__recovered_scope_0.var_0_0._hit.replaceBtn = var_74_534
						__recovered_scope_0.var_0_0._hit.keepBtn = var_74_536

						local function var_74_537(arg_77_0, arg_77_1, arg_77_2)
							love.graphics.setColor(0.15, 0.15, 0.15, 0.85 * __recovered_scope_1.var_74_33)
							love.graphics.rectangle("fill", arg_77_0.x, arg_77_0.y, arg_77_0.w, arg_77_0.h)
							love.graphics.setColor(arg_77_2 and 0.9 or 0.4, arg_77_2 and 0.9 or 0.4, arg_77_2 and 0.9 or 0.4, 1 * __recovered_scope_1.var_74_33)
							love.graphics.rectangle("line", arg_77_0.x + 0.5, arg_77_0.y + 0.5, arg_77_0.w - 1, arg_77_0.h - 1)
							love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)
							love.graphics.printf(arg_77_1, arg_77_0.x + 2, arg_77_0.y + math.floor((var_74_521 - var_74_466) / 2 + 0.5), arg_77_0.w - 4, "center")
						end

						var_74_537(var_74_534, __recovered_scope_0.var_0_5.getText("imprint_mode_replace", _G.currentGameLang or "ko"), var_74_520 == "replace")
						var_74_537(var_74_536, __recovered_scope_0.var_0_5.getText("imprint_mode_keep", _G.currentGameLang or "ko"), var_74_520 == "keep")
					end
				end
			else
				if math.floor(18 * __recovered_scope_1.var_74_27 + 0.5) > math.floor(__recovered_scope_1.var_74_376 - 6 * __recovered_scope_1.var_74_27) then
					local var_74_538 = math.max(10, math.floor(__recovered_scope_1.var_74_376 - 6 * __recovered_scope_1.var_74_27))
				end

				if var_74_386 then
					local var_74_539 = __recovered_scope_0.var_0_35()
					local var_74_540 = love.graphics.getFont()
					local var_74_541 = var_74_539 or arg_74_0 and arg_74_0.font or var_74_540

					if var_74_539 then
						love.graphics.setFont(var_74_539)
					end

					local var_74_542 = __recovered_scope_0.var_0_17(var_74_541, 12)
					local var_74_543 = 32

					if var_74_386.icon then
						local var_74_544 = __recovered_scope_0.var_0_63(__recovered_scope_0.var_0_0, var_74_386.icon)

						if var_74_544 then
							var_74_543 = var_74_544:getWidth()
						end
					end

					local var_74_545 = 8
					local var_74_546 = 3
					local var_74_547 = 8
					local var_74_548 = 4

					if arg_74_0.imprintPanel then
						if arg_74_0.imprintPanel.imprintName then
							var_74_545 = tonumber(arg_74_0.imprintPanel.imprintName.offsetX) or 8
							var_74_546 = tonumber(arg_74_0.imprintPanel.imprintName.offsetY) or 3
						end

						if arg_74_0.imprintPanel.imprintDesc then
							var_74_547 = tonumber(arg_74_0.imprintPanel.imprintDesc.offsetX) or 8
							var_74_548 = tonumber(arg_74_0.imprintPanel.imprintDesc.gapY) or 4
						end
					end

					local var_74_549 = __recovered_scope_1.var_74_329 + var_74_543 + math.floor(var_74_545 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_550 = var_74_385 + math.floor(var_74_546 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_551 = 1
					local var_74_552 = var_74_386.level or 1

					if __recovered_scope_0.var_0_0._hoveredSlot and __recovered_scope_0.var_0_0._hoveredSlot.index == iter_74_8 and __recovered_scope_0.var_0_0._hoveredSlot.previewUpgrade then
						var_74_551 = 0.4 + 0.6 * (0.5 + 0.5 * math.sin(love.timer.getTime() * 15))
						var_74_552 = var_74_552 + 1
					end

					local var_74_553 = __recovered_scope_0.var_0_5.getImprintName(var_74_386.id, var_74_386.name or "Unknown Imprint", _G.currentGameLang or "ko")
					local var_74_554 = " " .. __recovered_scope_0.var_0_49(var_74_552)

					love.graphics.setColor(1, 0.9, 0.5, 1 * __recovered_scope_1.var_74_33)

					local var_74_555 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_330 - var_74_549 - math.floor(8 * __recovered_scope_1.var_74_27 + 0.5) - __recovered_scope_0.var_0_16(var_74_541, var_74_554)
					local var_74_556 = __recovered_scope_0.var_0_0._printFitted(var_74_541, var_74_553, var_74_549, var_74_550, var_74_555)

					love.graphics.setColor(1, 0.9, 0.5, var_74_551 * __recovered_scope_1.var_74_33)
					love.graphics.print(var_74_554, var_74_549 + var_74_556, var_74_550)

					local var_74_557 = __recovered_scope_1.var_74_329 + var_74_543 + math.floor(var_74_547 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_558 = var_74_550 + var_74_542 + math.floor(var_74_548 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_559 = __recovered_scope_1.var_74_329 + __recovered_scope_1.var_74_330 - var_74_557 - math.floor(4 * __recovered_scope_1.var_74_27 + 0.5)

					if var_74_559 < 10 then
						var_74_559 = 10
					end

					local var_74_560 = math.max(1, var_74_542 + math.max(1, math.floor(5 * __recovered_scope_1.var_74_27 + 0.5)))
					local var_74_561 = var_74_385 + __recovered_scope_1.var_74_376 - var_74_558 - math.floor(3 * __recovered_scope_1.var_74_27 + 0.5)
					local var_74_562 = __recovered_scope_0.var_0_53(var_74_561, var_74_560)

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)

					local var_74_563 = __recovered_scope_0.var_0_0.getShortIconImage(__recovered_scope_0.var_0_0, var_74_386.id)
					local var_74_564 = var_74_557

					if var_74_563 then
						local var_74_565, var_74_566 = var_74_563:getDimensions()
						local var_74_567 = var_74_557
						local var_74_568 = var_74_558 + math.floor((var_74_560 - var_74_566) / 2)

						love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
						love.graphics.draw(var_74_563, var_74_567, var_74_568)

						var_74_564 = var_74_564 + var_74_565 + math.floor(2 * __recovered_scope_1.var_74_27 + 0.5)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)
					__recovered_scope_0.var_0_52(var_74_541, __recovered_scope_0.var_0_5.getImprintShortDesc(var_74_386.id, var_74_386.shortDesc or "", _G.currentGameLang or "ko"), var_74_564, var_74_558, var_74_559 - (var_74_564 - var_74_557), var_74_560, var_74_562)

					if var_74_539 then
						love.graphics.setFont(var_74_540)
					end
				else
					local var_74_569 = __recovered_scope_0.var_0_35()
					local var_74_570 = love.graphics.getFont()

					if var_74_569 then
						love.graphics.setFont(var_74_569)
					end

					love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)

					local var_74_571 = __recovered_scope_0.var_0_5.getText("imprint_empty_slot", _G.currentGameLang or "ko")
					local var_74_572 = 40
					local var_74_573 = -7

					if arg_74_0.imprintPanel and arg_74_0.imprintPanel.emptyText then
						var_74_572 = tonumber(arg_74_0.imprintPanel.emptyText.offsetX) or 40
						var_74_573 = tonumber(arg_74_0.imprintPanel.emptyText.offsetY) or -7
					end

					love.graphics.print(var_74_571, __recovered_scope_1.var_74_329 + math.floor(var_74_572 * __recovered_scope_1.var_74_27 + 0.5), var_74_385 + math.floor(__recovered_scope_1.var_74_376 / 2 + var_74_573 * __recovered_scope_1.var_74_27))

					if var_74_569 then
						love.graphics.setFont(var_74_570)
					end
				end
			end
		else
			local var_74_574 = __recovered_scope_0.var_0_35()
			local var_74_575 = love.graphics.getFont()

			if var_74_574 then
				love.graphics.setFont(var_74_574)
			end

			love.graphics.setColor(0.7, 0.7, 0.7, 1 * __recovered_scope_1.var_74_33)

			local var_74_576 = __recovered_scope_0.var_0_5.getText("imprint_locked", _G.currentGameLang or "ko")
			local var_74_577 = 42
			local var_74_578 = -7

			if arg_74_0.imprintPanel and arg_74_0.imprintPanel.lockedText then
				var_74_577 = tonumber(arg_74_0.imprintPanel.lockedText.offsetX) or 42
				var_74_578 = tonumber(arg_74_0.imprintPanel.lockedText.offsetY) or -7
			end

			love.graphics.print(var_74_576, __recovered_scope_1.var_74_329 + math.floor(var_74_577 * __recovered_scope_1.var_74_27 + 0.5), var_74_385 + math.floor(__recovered_scope_1.var_74_376 / 2 + var_74_578 * __recovered_scope_1.var_74_27))

			if var_74_574 then
				love.graphics.setFont(var_74_575)
			end
		end

		love.graphics.pop()
		love.graphics.pop()
	end

	 __recovered_scope_1.var_74_579 = __recovered_scope_1.var_74_8.randomOptions or __recovered_scope_1.var_74_8.meta and __recovered_scope_1.var_74_8.meta.randomOptions or __recovered_scope_1.var_74_8.rosterSpawnMeta and __recovered_scope_1.var_74_8.rosterSpawnMeta.randomOptions

	if not __recovered_scope_1.var_74_579 then
		local var_74_580 = __recovered_scope_1.var_74_8.randomOption or __recovered_scope_1.var_74_8.meta and __recovered_scope_1.var_74_8.meta.randomOption or __recovered_scope_1.var_74_8.rosterSpawnMeta and __recovered_scope_1.var_74_8.rosterSpawnMeta.randomOption

		if var_74_580 then
			__recovered_scope_1.var_74_579 = {
				var_74_580
			}
		end
	end

	 __recovered_scope_1.var_74_581 = arg_74_0.imprintPanel and arg_74_0.imprintPanel.randomOption or nil
	 __recovered_scope_1.var_74_582 = __recovered_scope_1.var_74_30 + __recovered_scope_0.var_0_50((__recovered_scope_1.var_74_581 and __recovered_scope_1.var_74_581.x or 168) * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_583 = __recovered_scope_1.var_74_31 + __recovered_scope_0.var_0_50((__recovered_scope_1.var_74_581 and __recovered_scope_1.var_74_581.y or 24) * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_584 = __recovered_scope_0.var_0_50((__recovered_scope_1.var_74_581 and __recovered_scope_1.var_74_581.size or 22) * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_585 = __recovered_scope_0.var_0_50((__recovered_scope_1.var_74_581 and __recovered_scope_1.var_74_581.gap or 4) * __recovered_scope_1.var_74_27)
	 __recovered_scope_1.var_74_586 = math.max(1, math.floor(tonumber(__recovered_scope_1.var_74_581 and __recovered_scope_1.var_74_581.maxSlots or 5) or 5))

	for iter_74_11 = 1, __recovered_scope_1.var_74_586 do
		local var_74_587 = __recovered_scope_1.var_74_579 and __recovered_scope_1.var_74_579[iter_74_11]

		if var_74_587 then
			local var_74_588 = __recovered_scope_0.var_0_4 and __recovered_scope_0.var_0_4.getIconPath and __recovered_scope_0.var_0_4.getIconPath(var_74_587)

			if var_74_588 then
				local var_74_589 = __recovered_scope_0.var_0_63(__recovered_scope_0.var_0_0, var_74_588)

				if var_74_589 then
					__recovered_scope_0.var_0_0._roHoverProgs = __recovered_scope_0.var_0_0._roHoverProgs or {}
					__recovered_scope_0.var_0_0._roHoverProgs[iter_74_11] = __recovered_scope_0.var_0_0._roHoverProgs[iter_74_11] or 0

					local var_74_590 = tonumber(__recovered_scope_1.var_74_2 or 0) == iter_74_11 and 1 or 0
					local var_74_591 = __recovered_scope_0.var_0_0._roHoverProgs[iter_74_11]
					local var_74_592 = 12

					__recovered_scope_0.var_0_0._roHoverProgs[iter_74_11] = var_74_591 + (var_74_590 - var_74_591) * math.min((__recovered_scope_1.var_74_4 or 0.016) * var_74_592, 1)

					local var_74_593 = 1 + 0.15 * __recovered_scope_0.var_0_0._roHoverProgs[iter_74_11]
					local var_74_594, var_74_595 = var_74_589:getDimensions()
					local var_74_596 = __recovered_scope_1.var_74_584 / __recovered_scope_0.var_0_4.iconCanvasSize * var_74_593
					local var_74_597 = __recovered_scope_1.var_74_582 + (iter_74_11 - 1) * (__recovered_scope_1.var_74_584 + __recovered_scope_1.var_74_585)
					local var_74_598 = math.floor(var_74_597 + __recovered_scope_1.var_74_584 * 0.5)
					local var_74_599 = math.floor(__recovered_scope_1.var_74_583 + __recovered_scope_1.var_74_584 * 0.5)
					local var_74_600 = var_74_594 * 0.5
					local var_74_601 = var_74_595 * 0.5
					local var_74_602 = __recovered_scope_0.var_0_58(var_74_587.rarity)

					if var_74_602 == "legendary" then
						local var_74_603 = __recovered_scope_0.var_0_25()
						local var_74_604 = __recovered_scope_0.var_0_27()

						if var_74_603 and var_74_604 then
							local var_74_605 = love.graphics.getShader()
							local var_74_606, var_74_607 = love.graphics.getBlendMode()

							love.graphics.setShader(var_74_603)
							love.graphics.setBlendMode("add", "alphamultiply")

							local var_74_608 = {
								0.99,
								0.82,
								0.18
							}

							var_74_603:send("glowColor", {
								var_74_608[1],
								var_74_608[2],
								var_74_608[3],
								0.55 * __recovered_scope_1.var_74_33
							})

							local var_74_609 = __recovered_scope_1.var_74_584 * 1.7 * var_74_593

							love.graphics.draw(var_74_604, var_74_598, var_74_599, 0, var_74_609, var_74_609, 0.5, 0.5)
							love.graphics.setShader(var_74_605)
							love.graphics.setBlendMode(var_74_606, var_74_607)
						end
					end

					local var_74_610 = __recovered_scope_0.var_0_23()

					if var_74_610 then
						var_74_610:send("texelStep", {
							1 / var_74_594,
							1 / var_74_595
						})

						local var_74_611 = arg_74_0 and arg_74_0.imprintPanel and arg_74_0.imprintPanel.randomOption
						local var_74_612 = var_74_611 and var_74_611.outlineColor or {
							0.55,
							0.48,
							0.43,
							1
						}

						var_74_610:send("outlineColor", {
							var_74_612[1],
							var_74_612[2],
							var_74_612[3],
							(var_74_612[4] or 1) * __recovered_scope_1.var_74_33
						})
						var_74_610:send("threshold", 0.05)
						var_74_610:send("radiusPx", 1.15)
						love.graphics.setShader(var_74_610)
						love.graphics.draw(var_74_589, var_74_598, var_74_599, 0, var_74_596, var_74_596, var_74_600, var_74_601)
						love.graphics.setShader()
					end

					love.graphics.setColor(1, 1, 1, 1 * __recovered_scope_1.var_74_33)
					love.graphics.draw(var_74_589, var_74_598, var_74_599, 0, var_74_596, var_74_596, var_74_600, var_74_601)

					if var_74_587 and var_74_587.rarity and _G.Render and _G.Render.drawLegendarySpriteEffects then
						local var_74_613 = var_74_602

						if var_74_613 == "rare" or var_74_613 == "legendary" or var_74_613 == "advanced" then
							_G.Render.drawLegendarySpriteEffects(arg_74_0, var_74_587, var_74_589, nil, var_74_598, var_74_599, var_74_596, var_74_596, 0, var_74_600, var_74_601)
						elseif var_74_613 == "prism" and _G.Render.getPrismFoilShader then
							local var_74_614 = _G.Render.getPrismFoilShader()

							if var_74_614 then
								local var_74_615 = arg_74_0 and arg_74_0.battle and (arg_74_0.battle.jackpotFoil or arg_74_0.battle.jackpotRainbow) or {}
								local var_74_616 = var_74_615.alpha ~= nil and var_74_615.alpha or 0.32
								local var_74_617 = love.graphics.getShader()
								local var_74_618, var_74_619 = love.graphics.getBlendMode()

								love.graphics.setShader(var_74_614)

								local var_74_620 = (var_74_615.angleDeg or 20) * math.pi / 180
								local var_74_621 = math.cos(var_74_620)
								local var_74_622 = math.sin(var_74_620)
								local var_74_623 = var_74_615.cycleSec or 4

								var_74_614:send("u_time", _G.Render.getPhasedSweepTime(love.timer.getTime(), var_74_587, var_74_623))
								var_74_614:send("u_alpha", var_74_616 * (__recovered_scope_1.var_74_33 or 1))
								var_74_614:send("u_dir", {
									var_74_621,
									var_74_622
								})
								var_74_614:send("u_cycle", var_74_623)
								var_74_614:send("u_scale", var_74_615.scale or 2.5)

								local var_74_624 = var_74_615.grain or {}
								local var_74_625 = var_74_615.film or {}

								var_74_614:send("u_grainScale", var_74_624.scale or 3)
								var_74_614:send("u_grainAmp", var_74_624.amp or 0.2)
								var_74_614:send("u_filmFreq", var_74_625.freq or 2)
								var_74_614:send("u_filmAmp", var_74_625.amp or 0.25)
								var_74_614:send("u_specular", var_74_615.specular or 0.35)
								var_74_614:send("u_fresnelPow", var_74_615.fresnelPow or 2.5)
								var_74_614:send("u_colorGain", var_74_615.colorGain or 1)
								var_74_614:send("u_saturation", var_74_615.saturation or 1)
								var_74_614:send("u_mixBP", var_74_615.mixBP or 0.55)
								var_74_614:send("u_frameUV", {
									0,
									0,
									1,
									1
								})
								love.graphics.setColor(1, 1, 1, __recovered_scope_1.var_74_33 or 1)

								if var_74_619 ~= nil then
									love.graphics.setBlendMode("add", "alphamultiply")
								else
									love.graphics.setBlendMode("add")
								end

								love.graphics.draw(var_74_589, var_74_598, var_74_599, 0, var_74_596, var_74_596, var_74_600, var_74_601)
								love.graphics.setColor(1, 1, 1, 1)
								love.graphics.setShader(var_74_617)

								if var_74_619 ~= nil then
									love.graphics.setBlendMode(var_74_618, var_74_619)
								else
									love.graphics.setBlendMode(var_74_618)
								end
							end
						end
					end

					love.graphics.setColor(1, 1, 1, 1)

					if not __recovered_scope_0.var_0_0._hoveredRandomOption and var_74_597 <= __recovered_scope_1.var_74_0 and __recovered_scope_1.var_74_0 <= var_74_597 + __recovered_scope_1.var_74_584 and __recovered_scope_1.var_74_583 <= __recovered_scope_1.var_74_1 and __recovered_scope_1.var_74_1 <= __recovered_scope_1.var_74_583 + __recovered_scope_1.var_74_584 then
						__recovered_scope_0.var_0_0._hoveredRandomOption = {
							option = var_74_587,
							anchor = {
								source = "imprint",
								x = var_74_597,
								y = __recovered_scope_1.var_74_583,
								w = __recovered_scope_1.var_74_584,
								h = __recovered_scope_1.var_74_584,
								index = iter_74_11
							},
							sym = __recovered_scope_1.var_74_8 and __recovered_scope_1.var_74_8.sym or "W"
						}
					end
				end
			end
		end
	end

	 __recovered_scope_1.var_74_626 = __recovered_scope_1.var_74_8.rank or 1
	 __recovered_scope_1.var_74_627 = __recovered_scope_1.var_74_8.jackpot5th == true and "prism" or __recovered_scope_1.var_74_8.grade or "normal"
	 __recovered_scope_1.var_74_628 = __recovered_scope_0.var_0_1.evolution.rankThresholds[__recovered_scope_1.var_74_627]
	 __recovered_scope_1.var_74_629 = __recovered_scope_1.var_74_626 + 1
	 __recovered_scope_1.var_74_630 = nil

	__recovered_scope_1.var_74_630 = __recovered_scope_1.var_74_628 and __recovered_scope_1.var_74_628[__recovered_scope_1.var_74_629]

	if false then
		local var_74_631 = __recovered_scope_0.var_0_75()
		local var_74_632 = 1.5

		if var_74_631 then
			var_74_631:setFilter("nearest", "nearest")
			love.graphics.setFont(var_74_631)
		end

		love.graphics.setColor(0.9, 0.9, 0.9, 1 * __recovered_scope_1.var_74_33)

		local var_74_633 = __recovered_scope_1.var_74_329 + 8
		local var_74_634 = __recovered_scope_1.var_74_378 + __recovered_scope_0.var_0_50(4 * __recovered_scope_1.var_74_27) + 16

		love.graphics.print(label, math.floor(var_74_633), math.floor(var_74_634), 0, var_74_632, var_74_632)
	end

	if not __recovered_scope_1.var_74_5 and math.abs(__recovered_scope_0.var_0_32.x - __recovered_scope_1.var_74_17) < 1 and math.abs(__recovered_scope_0.var_0_32.v) < 1 then
		__recovered_scope_0.var_0_32.lastUnit = nil
		__recovered_scope_0.var_0_32.holdTimer = 0
		__recovered_scope_0.var_0_32.blinkTimer = 0
		__recovered_scope_0.var_0_32.blinkSlot = nil

		for iter_74_12 = 1, 5 do
			__recovered_scope_0.var_0_32.impactScales[iter_74_12] = 0
			__recovered_scope_0.var_0_32.floatOffsets[iter_74_12] = 0
		end
	end
end

function __recovered_scope_0.var_0_0.isSkillFrameHovered(arg_78_0, arg_78_1)
	local var_78_0 = __recovered_scope_0.var_0_0._skillFrameRect

	if not var_78_0 or not arg_78_0 or not arg_78_1 then
		return false
	end

	local var_78_1 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	if var_78_0.drawnAt and var_78_1 - var_78_0.drawnAt > 0.25 then
		return false
	end

	return arg_78_0 >= var_78_0.x and arg_78_0 <= var_78_0.x + var_78_0.w and arg_78_1 >= var_78_0.y and arg_78_1 <= var_78_0.y + var_78_0.h
end

function __recovered_scope_0.var_0_0.isPanelHovered(arg_79_0, arg_79_1)
	local var_79_0 = __recovered_scope_0.var_0_0._panelRect

	if not var_79_0 or not arg_79_0 or not arg_79_1 then
		return false
	end

	local var_79_1 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	if var_79_0.drawnAt and var_79_1 - var_79_0.drawnAt > 0.25 then
		return false
	end

	local var_79_2 = __recovered_scope_0.var_0_0._awakeningRuneRect

	if var_79_2 and (not var_79_2.drawnAt or not (var_79_1 - var_79_2.drawnAt > 0.25)) and require("src.ui.flow").awakening.hitRunes(var_79_2, arg_79_0, arg_79_1) then
		return true
	end

	return __recovered_scope_0.var_0_77(arg_79_0, arg_79_1, var_79_0)
end

function __recovered_scope_0.var_0_0.getHoveredSlot()
	return __recovered_scope_0.var_0_0._hoveredSlot
end

return __recovered_scope_0.var_0_0
