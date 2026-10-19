local var_0_0 = require("src.data.constants")
local var_0_1 = require("src.ui.config")
local var_0_2 = require("src.data.language")
local var_0_3 = require("src.data.font_resolver")
local var_0_4 = {}
local var_0_5
local var_0_6
local var_0_7
local var_0_8
local var_0_9 = "src/data/font/Chinese/arkpixel10.ttf"
local var_0_10 = 10
local var_0_11 = "normal"

function var_0_4.setUI(arg_1_0)
	var_0_5 = arg_1_0
end

function var_0_4.setAssets(arg_2_0)
	var_0_6 = arg_2_0
end

function var_0_4.reloadFonts()
	if not love or not love.graphics or not love.graphics.newFont then
		return
	end

	local function var_3_0(arg_4_0)
		if type(arg_4_0) ~= "string" or arg_4_0 == "" or not love.filesystem.getInfo(arg_4_0) then
			return false, "missing font"
		end

		local var_4_0 = tostring(arg_4_0):lower()

		if var_4_0:match("%.ttf$") or var_4_0:match("%.otf$") then
			return pcall(love.graphics.newFont, arg_4_0, var_0_10, var_0_11)
		end

		return pcall(love.graphics.newFont, arg_4_0)
	end

	local function var_3_1(arg_5_0)
		if type(arg_5_0) ~= "string" or arg_5_0 == "" or not love.filesystem.getInfo(arg_5_0) then
			return nil
		end

		local var_5_0, var_5_1 = var_3_0(arg_5_0)

		if var_5_0 and var_5_1 then
			var_5_1:setFilter("nearest", "nearest")

			return var_5_1
		end

		return nil
	end

	local var_3_2 = (_G.currentGameLang or "ko") == "zh" and var_0_9 or var_0_3.resolve("src/data/font/Galmuri9WS.fnt")
	local var_3_3, var_3_4 = var_3_0(var_3_2)

	if var_3_3 and var_3_4 then
		var_3_4:setFilter("nearest", "nearest")

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_3_4)
		end

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseLatinFallbackFont then
			local var_3_5 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath("src/data/font/Galmuri9WS.fnt") or "src/data/font/Galmuri9WS.fnt"

			_G.registerChineseLatinFallbackFont(var_3_4, var_3_1(var_3_5))
		end

		var_0_7 = var_3_4
	end

	local var_3_6 = (_G.currentGameLang or "ko") == "zh" and var_0_9 or var_0_3.resolve("src/data/font/Galmuri9WSLine.fnt")
	local var_3_7, var_3_8 = var_3_0(var_3_6)

	if var_3_7 and var_3_8 then
		var_3_8:setFilter("nearest", "nearest")

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_3_8)
		end

		if _G.maybeRegisterSLineTtfTextEffect then
			_G.maybeRegisterSLineTtfTextEffect(var_3_8, "src/data/font/Galmuri9WSLine.fnt", var_3_6, _G.currentGameLang or "ko")
		end

		if (_G.currentGameLang or "ko") == "zh" and _G.registerChineseLatinFallbackFont then
			local var_3_9 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath("src/data/font/Galmuri9WSLine.fnt") or "src/data/font/Galmuri9WSLine.fnt"

			_G.registerChineseLatinFallbackFont(var_3_8, var_3_1(var_3_9))
		end

		var_0_8 = var_3_8
	end
end

local var_0_12 = {}
local var_0_13
local var_0_14
local var_0_15
local var_0_16
local var_0_17
local var_0_18
local var_0_19
local var_0_20
local var_0_21
local var_0_22 = 0
local var_0_23 = 0
local var_0_24
local var_0_25
local var_0_26
local var_0_27
local var_0_28
local var_0_29
local var_0_30
local var_0_31

local function var_0_32()
	local var_6_0 = var_0_6 and var_0_6.audio and var_0_6.audio.woodDrop

	if not var_6_0 then
		return
	end

	local var_6_1 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1
	local var_6_2 = var_0_6 and var_0_6.audioBaseGain and var_0_6.audioBaseGain.woodDrop or 1

	if var_6_0.setVolume then
		var_6_0:setVolume(var_6_1 * var_6_2)
	end

	if var_6_0.isPlaying and var_6_0:isPlaying() then
		var_6_0:stop()
	end

	var_6_0:play()
end

local function var_0_33()
	local var_7_0 = var_0_6 and var_0_6.audio and var_0_6.audio.woodDropUp

	if not var_7_0 then
		return
	end

	local var_7_1 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1
	local var_7_2 = var_0_6 and var_0_6.audioBaseGain and var_0_6.audioBaseGain.woodDropUp or 1

	if var_7_0.setVolume then
		var_7_0:setVolume(var_7_1 * var_7_2)
	end

	if var_7_0.isPlaying and var_7_0:isPlaying() then
		var_7_0:stop()
	end

	var_7_0:play()
end

local var_0_34
local var_0_35
local var_0_36
local var_0_37 = {}
local var_0_38
local var_0_39
local var_0_40
local var_0_41
local var_0_42
local var_0_43
local var_0_44
local var_0_45 = {}
local var_0_46 = {}
local var_0_47
local var_0_48
local var_0_49
local var_0_50
local var_0_51
local var_0_52
local var_0_53
local var_0_54
local var_0_55
local var_0_56
local var_0_57 = "    extern number time;\n\n    float hash(vec2 p) {\n        return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453);\n    }\n\n    float noise(vec2 p) {\n        vec2 i = floor(p);\n        vec2 f = fract(p);\n        f = f * f * (3.0 - 2.0 * f);\n        return mix(mix(hash(i + vec2(0.0,0.0)), hash(i + vec2(1.0,0.0)), f.x),\n                   mix(hash(i + vec2(0.0,1.0)), hash(i + vec2(1.0,1.0)), f.x), f.y);\n    }\n\n    float fbm(vec2 p) {\n        float v = 0.0;\n        float a = 0.5;\n        for (int i = 0; i < 3; i++) {\n            v += a * noise(p);\n            p *= 2.0;\n            a *= 0.5;\n        }\n        return v;\n    }\n\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        vec4 texColor = Texel(texture, texture_coords);\n        vec2 uv = screen_coords / love_ScreenSize.xy;\n\n        // Right ∪ top halves (soft), then strip bottom-left quadrant so midline feather can't darken BL.\n        float rightW = smoothstep(0.44, 0.56, uv.x);\n        float topW = 1.0 - smoothstep(0.44, 0.56, uv.y);\n        float unionMask = 1.0 - (1.0 - rightW) * (1.0 - topW);\n        float bottomLeftOcc = (1.0 - smoothstep(0.46, 0.53, uv.x)) * smoothstep(0.47, 0.53, uv.y);\n        float regionBlend = unionMask * (1.0 - bottomLeftOcc);\n\n        vec2 cloudUV = screen_coords / 600.0;\n        cloudUV.x += time * 0.03;\n        cloudUV.y += time * 0.01;\n\n        float n = fbm(cloudUV);\n        float shadow = smoothstep(0.4, 0.7, n);\n\n        vec3 shadowTint = vec3(0.9, 0.9, 1.0);\n        vec3 sunTint = vec3(1.05, 1.02, 0.98);\n\n        vec3 finalRGB = texColor.rgb;\n        float shadowAmt = shadow * regionBlend;\n        finalRGB = mix(finalRGB * sunTint, finalRGB * shadowTint * 0.7, shadowAmt);\n\n        vec2 vigUV = uv - vec2(0.5, 0.5);\n        float vig = 1.0 - smoothstep(0.5, 1.5, length(vigUV) * 1.2);\n        finalRGB *= mix(1.0, vig, regionBlend);\n\n        return vec4(finalRGB, texColor.a) * color;\n    }\n"
local var_0_58
local var_0_59 = "    extern number mixFactor;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        vec4 texcolor = Texel(tex, tc);\n        vec3 finalRGB = mix(texcolor.rgb, vec3(1.0, 1.0, 1.0), mixFactor);\n        return vec4(finalRGB, texcolor.a) * color;\n    }\n"
local var_0_60
local var_0_61 = "    extern number time;\n    extern vec4 tintColor;\n\n    float colorDist(vec3 c1, vec3 c2) {\n        return length(c1 - c2);\n    }\n\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        // 1. Get original pixel to enforce strict alpha mask boundary\n        vec4 originalColor = Texel(texture, texture_coords);\n        if (originalColor.a < 0.01) {\n            return vec4(0.0);\n        }\n\n        // 2. Sample texture at native resolution for perfectly sharp, crisp pixel art\n        vec4 texColor = Texel(texture, texture_coords);\n        vec3 rgb = texColor.rgb;\n        vec3 finalRGB = rgb;\n\n        // 3. Pixel-perfect original color groups from stage2.png & stage3.png\n        // Group 1: Sky & Pale Highlights (Stage 3 and Stage 2 cave background wall)\n        vec3 sky1 = vec3(178.0/255.0, 165.0/255.0, 146.0/255.0); // B2A592\n        vec3 sky2 = vec3(207.0/255.0, 192.0/255.0, 171.0/255.0); // CFC0AB\n        vec3 sky3 = vec3(228.0/255.0, 204.0/255.0, 183.0/255.0); // E4CCB7\n        vec3 sky4 = vec3(194.0/255.0, 174.0/255.0, 152.0/255.0); // C2AE98\n        vec3 sky5 = vec3(55.0/255.0, 46.0/255.0, 63.0/255.0);    // 372E3F (Stage 2 dominant back wall)\n        vec3 sky6 = vec3(30.0/255.0, 28.0/255.0, 46.0/255.0);    // 1E1C2E (Stage 2 dark back wall)\n\n        // Group 2: Midtone Clay & Ground\n        vec3 mid1 = vec3(203.0/255.0, 158.0/255.0, 114.0/255.0); // CB9E72\n        vec3 mid2 = vec3(175.0/255.0, 133.0/255.0, 102.0/255.0); // AF8566\n        vec3 mid3 = vec3(179.0/255.0, 116.0/255.0, 92.0/255.0);  // B3745C\n        vec3 mid4 = vec3(161.0/255.0, 134.0/255.0, 116.0/255.0); // A18674\n\n        // Group 3: Dark Shadows & Deep Rocks\n        vec3 dark1 = vec3(108.0/255.0, 72.0/255.0, 69.0/255.0);  // 6C4845\n        vec3 dark2 = vec3(134.0/255.0, 122.0/255.0, 112.0/255.0); // 867A70\n        vec3 dark3 = vec3(137.0/255.0, 101.0/255.0, 86.0/255.0);  // 896556\n\n        // 4. Mapped Target Colors (Ultra-Flat Achromatic Silhouette Swap)\n        // Snaps all ground, rocks, shadows, and extra colors to a single flat charcoal black (#141414).\n        // Only the sky is a slightly lighter stone gray (#212121), creating a beautiful flat silhouette relief.\n        // This completely obliterates all internal visual shapes, making the stage totally unrecognizable!\n        vec3 targetSky = vec3(0.13, 0.13, 0.13);   // #212121 (Slightly lighter dark-gray sky)\n        vec3 targetMid = vec3(0.08, 0.08, 0.08);   // #141414 (Flat dark charcoal ground)\n        vec3 targetDark = vec3(0.08, 0.08, 0.08);  // #141414 (Flat dark charcoal shadows)\n\n        float thres = 0.09; // Matching threshold\n\n        // Apply dynamic color swapping\n        if (colorDist(rgb, sky1) < thres || colorDist(rgb, sky2) < thres || colorDist(rgb, sky3) < thres || colorDist(rgb, sky4) < thres || colorDist(rgb, sky5) < thres || colorDist(rgb, sky6) < thres) {\n            finalRGB = targetSky;\n        } else if (colorDist(rgb, mid1) < thres || colorDist(rgb, mid2) < thres || colorDist(rgb, mid3) < thres || colorDist(rgb, mid4) < thres) {\n            finalRGB = targetMid;\n        } else if (colorDist(rgb, dark1) < thres || colorDist(rgb, dark2) < thres || colorDist(rgb, dark3) < thres) {\n            finalRGB = targetDark;\n        } else {\n            // Fallback blend for extra colors - snapped flat to the dark ground color to eliminate all detail\n            finalRGB = targetMid;\n        }\n\n        // 5. Force 100% pure achromatic gray (eliminate any possible color leak/tint)\n        float gray = (finalRGB.r + finalRGB.g + finalRGB.b) / 3.0;\n        finalRGB = vec3(gray);\n\n        // Prevent compiler optimization of uniforms and guarantee strict boundaries using pure achromatic additions\n        float dummy = (tintColor.r + tintColor.g + tintColor.b) * 0.000001 + time * 0.0000001;\n        finalRGB += vec3(dummy);\n\n        return vec4(finalRGB, originalColor.a * color.a);\n    }\n"
local var_0_62 = {}
local var_0_63 = 30
local var_0_64 = 2

function var_0_4.getOriginiteAmount()
	return var_0_22
end

function var_0_4.setOriginiteAmount(arg_9_0)
	var_0_22 = arg_9_0 or 0
	var_0_23 = var_0_22
end

function var_0_4.addOriginite(arg_10_0)
	var_0_22 = math.max(0, var_0_22 + (arg_10_0 or 0))
end

local var_0_65
local var_0_66
local var_0_67
local var_0_68
local var_0_69 = false
local var_0_70
local var_0_71 = 0
local var_0_72 = "https://discord.com/invite/XthPFC9thw"

local function var_0_73(arg_11_0, arg_11_1, arg_11_2)
	if not arg_11_0.rect then
		return false
	end

	local var_11_0 = var_0_71
	local var_11_1 = arg_11_0.rect.x - var_11_0
	local var_11_2 = arg_11_0.rect.y - var_11_0
	local var_11_3 = arg_11_0.rect.w + var_11_0 * 2
	local var_11_4 = arg_11_0.rect.h + var_11_0 * 2

	return var_11_1 <= arg_11_1 and arg_11_1 <= var_11_1 + var_11_3 and var_11_2 <= arg_11_2 and arg_11_2 <= var_11_2 + var_11_4
end

local function var_0_74(arg_12_0, arg_12_1, arg_12_2)
	local var_12_0
	local var_12_1 = math.huge

	for iter_12_0, iter_12_1 in ipairs(arg_12_0) do
		if var_0_73(iter_12_1, arg_12_1, arg_12_2) then
			local var_12_2 = iter_12_1.rect
			local var_12_3 = var_12_2.x + var_12_2.w * 0.5
			local var_12_4 = var_12_2.y + var_12_2.h * 0.5
			local var_12_5 = arg_12_1 - var_12_3
			local var_12_6 = arg_12_2 - var_12_4
			local var_12_7 = var_12_5 * var_12_5 + var_12_6 * var_12_6

			if var_12_7 < var_12_1 then
				var_12_1 = var_12_7
				var_12_0 = iter_12_0
			end
		end
	end

	return var_12_0
end

local function var_0_75(arg_13_0, arg_13_1, arg_13_2, arg_13_3, arg_13_4, arg_13_5)
	local var_13_0 = tonumber(arg_13_0.iconScale) or tonumber(arg_13_0.drawMul) or 1.5
	local var_13_1 = tonumber(arg_13_0.labelGapPx) or 6
	local var_13_2 = tonumber(arg_13_0.labelScale) or 1.1
	local var_13_3, var_13_4 = arg_13_1:getDimensions()
	local var_13_5 = arg_13_3:getWidth(arg_13_2)
	local var_13_6 = var_13_5 * var_13_2
	local var_13_7 = arg_13_3:getHeight() * var_13_2
	local var_13_8 = var_13_3 * var_13_0
	local var_13_9 = var_13_4 * var_13_0

	return {
		iconScreenCx = arg_13_4,
		iconScreenCy = arg_13_5,
		hitBlockW = math.max(var_13_8, var_13_6),
		hitBlockH = var_13_9 + var_13_1 + var_13_7,
		idleIconW = var_13_8,
		idleIconH = var_13_9,
		iconBaseScale = var_13_0,
		labelGap = var_13_1,
		labelScale = var_13_2,
		labelOffsetX = tonumber(arg_13_0.labelOffsetX) or 0,
		localLabelY = var_13_9 / 2 + var_13_1,
		rawTextW = var_13_5,
		texHalfW = var_13_3 / 2,
		texHalfH = var_13_4 / 2
	}
end

local function var_0_76(arg_14_0, arg_14_1, arg_14_2, arg_14_3, arg_14_4)
	local var_14_0 = tonumber(arg_14_4.iconScale) or tonumber(arg_14_4.drawMul) or 1.5
	local var_14_1 = arg_14_3:getDimensions() * var_14_0
	local var_14_2 = tonumber(arg_14_2) or 24

	return math.floor(arg_14_0.iconScreenCx + arg_14_1 / 2 + var_14_2 + var_14_1 / 2 + (tonumber(arg_14_4.offsetX) or 0)), var_14_1
end

local function var_0_77(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4, arg_15_5, arg_15_6, arg_15_7)
	local var_15_0 = arg_15_6 or 0
	local var_15_1 = arg_15_7 and arg_15_4 * 0.55 or arg_15_4

	love.graphics.push()
	love.graphics.translate(arg_15_0.iconScreenCx + var_15_0, arg_15_0.iconScreenCy)
	love.graphics.scale(arg_15_5, arg_15_5)
	love.graphics.setColor(1, 1, 1, var_15_1)

	local var_15_2, var_15_3 = arg_15_1:getDimensions()

	love.graphics.draw(arg_15_1, 0, 0, 0, arg_15_0.iconBaseScale, arg_15_0.iconBaseScale, math.floor(var_15_2 / 2), math.floor(var_15_3 / 2))
	love.graphics.print(arg_15_2, arg_15_0.labelOffsetX, arg_15_0.localLabelY, 0, arg_15_0.labelScale, arg_15_0.labelScale, arg_15_0.rawTextW * 0.5, 0)
	love.graphics.pop()

	local var_15_4 = arg_15_0.hitBlockW * arg_15_5
	local var_15_5 = arg_15_0.hitBlockH * arg_15_5

	return {
		x = arg_15_0.iconScreenCx - var_15_4 / 2,
		y = math.floor(arg_15_0.iconScreenCy - arg_15_0.idleIconH / 2 * arg_15_5),
		w = var_15_4,
		h = var_15_5
	}
end

local function var_0_78(arg_16_0, arg_16_1, arg_16_2, arg_16_3, arg_16_4, arg_16_5, arg_16_6)
	arg_16_0 = arg_16_0 or {
		scale = 1
	}

	if not arg_16_1 then
		return arg_16_0
	end

	local var_16_0 = arg_16_5 == 0 and arg_16_3 >= arg_16_1.x and arg_16_3 <= arg_16_1.x + arg_16_1.w and arg_16_4 >= arg_16_1.y and arg_16_4 <= arg_16_1.y + arg_16_1.h

	if var_16_0 and arg_16_6 then
		arg_16_6()
	end

	local var_16_1 = 1

	if arg_16_0.pressed and arg_16_5 == 0 then
		var_16_1 = 0.9130434782608696
		arg_16_0.scale = arg_16_0.scale + (var_16_1 - arg_16_0.scale) * math.min(1, arg_16_2 * 20)
	elseif var_16_0 then
		var_16_1 = 1.1304347826086958
		arg_16_0.scale = arg_16_0.scale + (var_16_1 - arg_16_0.scale) * math.min(1, arg_16_2 * 12)
	else
		arg_16_0.scale = arg_16_0.scale + (var_16_1 - arg_16_0.scale) * math.min(1, arg_16_2 * 10)
	end

	if arg_16_5 > 0 then
		arg_16_0.pressed = false
	end

	return arg_16_0
end

var_0_4.stageSelect = {
	hoverGraceT = 0,
	v = 0,
	y = 0,
	diffV = 0,
	snapEps = 0.5,
	active = false,
	phase = "idle",
	targetY = 0,
	diffTargetY = 0,
	diffY = 0,
	diffActive = false,
	pageTo = 1,
	pageFrom = 1,
	pageSlideDir = 0,
	pageSlideDur = 0.56,
	pageSlideT = 0,
	stagePage = 1,
	maxStages = 6,
	pageArrow = {
		scale = 1,
		hovered = false
	},
	back = {
		pressed = false,
		alpha = 0,
		scale = 0.9,
		alphaVel = 0
	}
}
var_0_4._menuFadeAlpha = 1
var_0_4._menuLogoOffsetY = 0
var_0_4._menuButtonsOffsetY = 0
var_0_4._stageSelectFlow = {
	t = 0,
	hideDur = 0.3,
	gapDur = 0.02,
	floatButtonsPx = 18,
	floatLogoPx = 18,
	active = false,
	showDur = 0.22,
	phase = "idle"
}

local function var_0_79(arg_17_0, arg_17_1, arg_17_2)
	if arg_17_0 < arg_17_1 then
		return arg_17_1
	end

	if arg_17_2 < arg_17_0 then
		return arg_17_2
	end

	return arg_17_0
end

local function var_0_80()
	local var_18_0 = 32
	local var_18_1 = var_0_5

	if var_18_1 and var_18_1.battle and var_18_1.battle.allySize32 and var_18_1.battle.allySize32 > 0 then
		local var_18_2 = math.max(var_18_0, math.floor(var_18_1.battle.allySize32 / var_18_0) * var_18_0)

		return math.max(1, math.floor(var_18_2 / var_18_0))
	end

	return 2
end

local function var_0_81(arg_19_0, arg_19_1, arg_19_2)
	return arg_19_0 + (arg_19_1 - arg_19_0) * var_0_79(arg_19_2, 0, 1)
end

local function var_0_82(arg_20_0)
	arg_20_0 = var_0_79(arg_20_0, 0, 1)

	return 1 - (1 - arg_20_0)^3
end

local function var_0_83(arg_21_0)
	arg_21_0 = var_0_79(arg_21_0, 0, 1)

	if arg_21_0 < 0.5 then
		return 4 * arg_21_0 * arg_21_0 * arg_21_0
	else
		return 1 - (-2 * arg_21_0 + 2)^3 / 2
	end
end

local var_0_84 = {
	targetY = 25,
	state = "done",
	totalDur = 0.72,
	startY = -80,
	t = 0,
	y = -80,
	direction = "in",
	overshoot = 5,
	outDur = 0.48
}

local function var_0_85(arg_22_0, arg_22_1)
	if not arg_22_0 or arg_22_0.state ~= "anim" then
		return arg_22_0 and (arg_22_0.y or arg_22_0.targetY or 0) or 0, 1
	end

	arg_22_0.t = (arg_22_0.t or 0) + (arg_22_1 or 0)

	local var_22_0 = math.min(1, arg_22_0.t / math.max(0.001, arg_22_0.totalDur or 0.9))
	local var_22_1 = (arg_22_0.targetY or 0) - (arg_22_0.startY or 0) + (arg_22_0.overshoot or 0)

	if var_22_0 < 0.7 then
		local var_22_2 = var_22_0 / 0.7
		local var_22_3 = 1 - math.pow(1 - var_22_2, 2)

		arg_22_0.y = (arg_22_0.startY or 0) + var_22_1 * var_22_3
	else
		local var_22_4 = (var_22_0 - 0.7) / 0.3
		local var_22_5 = var_22_4 * var_22_4 * (3 - 2 * var_22_4)

		arg_22_0.y = (arg_22_0.startY or 0) + var_22_1 - (arg_22_0.overshoot or 0) * var_22_5
	end

	if var_22_0 >= 1 then
		arg_22_0.state = "idle"
		arg_22_0.y = arg_22_0.targetY or 0
	end

	local var_22_6 = var_0_79(var_22_0 * 1.35, 0, 1)

	return arg_22_0.y, var_22_6
end

local function var_0_86(arg_23_0)
	arg_23_0 = arg_23_0 or {}
	var_0_84.startY = tonumber(arg_23_0.startY) or -80
	var_0_84.targetY = tonumber(arg_23_0.targetY) or 25
	var_0_84.totalDur = tonumber(arg_23_0.totalDur) or 0.72
	var_0_84.outDur = tonumber(arg_23_0.outDur) or 0.48
	var_0_84.overshoot = tonumber(arg_23_0.overshoot) or 5
end

local function var_0_87(arg_24_0)
	if not arg_24_0 then
		return 0.72
	end

	if arg_24_0.direction == "out" then
		return math.max(0.001, arg_24_0.outDur or arg_24_0.totalDur or 0.48)
	end

	return math.max(0.001, arg_24_0.totalDur or 0.72)
end

local function var_0_88(arg_25_0, arg_25_1)
	local var_25_0 = arg_25_0.startY or 0
	local var_25_1 = arg_25_0.targetY or 0
	local var_25_2 = arg_25_0.overshoot or 0
	local var_25_3 = var_25_1 - var_25_0 + var_25_2

	if arg_25_1 < 0.7 then
		local var_25_4 = arg_25_1 / 0.7

		return var_25_0 + var_25_3 * (1 - math.pow(1 - var_25_4, 2))
	end

	local var_25_5 = (arg_25_1 - 0.7) / 0.3
	local var_25_6 = var_25_5 * var_25_5 * (3 - 2 * var_25_5)

	return var_25_0 + var_25_3 - var_25_2 * var_25_6
end

local function var_0_89(arg_26_0, arg_26_1)
	arg_26_1 = math.min(1, math.max(0, arg_26_1 or 0))

	if arg_26_0.direction == "out" then
		local var_26_0 = arg_26_0.targetY or 0
		local var_26_1 = arg_26_0.startY or 0
		local var_26_2 = arg_26_1 * arg_26_1 * (3 - 2 * arg_26_1)

		return var_26_0 + (var_26_1 - var_26_0) * var_26_2, 1 - var_26_2
	end

	return var_0_88(arg_26_0, arg_26_1), var_0_79(arg_26_1 * 1.35, 0, 1)
end

local function var_0_90(arg_27_0)
	var_0_86(arg_27_0)

	var_0_84.direction = "in"
	var_0_84.t = 0
	var_0_84.state = "anim"
	var_0_84.y = var_0_84.startY
end

local function var_0_91(arg_28_0)
	var_0_86(arg_28_0)

	var_0_84.direction = "out"
	var_0_84.t = 0
	var_0_84.state = "anim"
	var_0_84.y = var_0_84.targetY
end

local function var_0_92(arg_29_0, arg_29_1)
	if not arg_29_0 then
		return 0, 0
	end

	if arg_29_0.state == "done" then
		return arg_29_0.y or arg_29_0.startY or 0, 0
	end

	if arg_29_0.state == "idle" then
		return arg_29_0.y or arg_29_0.targetY or 0, 1
	end

	if arg_29_0.state ~= "anim" then
		return arg_29_0.y or 0, 0
	end

	arg_29_0.t = (arg_29_0.t or 0) + (arg_29_1 or 0)

	local var_29_0 = math.min(1, arg_29_0.t / var_0_87(arg_29_0))
	local var_29_1, var_29_2 = var_0_89(arg_29_0, var_29_0)

	arg_29_0.y = var_29_1

	if var_29_0 >= 1 then
		if arg_29_0.direction == "out" then
			arg_29_0.state = "done"
			arg_29_0.y = arg_29_0.startY or 0
			var_29_2 = 0
		else
			arg_29_0.state = "idle"
			arg_29_0.y = arg_29_0.targetY or 0
			var_29_2 = 1
		end
	end

	return arg_29_0.y, var_29_2
end

local function var_0_93(arg_30_0)
	if not arg_30_0 then
		return 0
	end

	if arg_30_0.state == "idle" then
		return 1
	end

	if arg_30_0.state == "done" then
		return 0
	end

	if arg_30_0.state ~= "anim" then
		return 0
	end

	local var_30_0 = math.min(1, (arg_30_0.t or 0) / var_0_87(arg_30_0))
	local var_30_1, var_30_2 = var_0_89(arg_30_0, var_30_0)

	return var_30_2
end

local function var_0_94(arg_31_0)
	if not arg_31_0 or not arg_31_0.active then
		return false
	end

	local var_31_0 = math.floor(tonumber(arg_31_0.selectedStage or 0) or 0)

	if not var_0_37[var_31_0] then
		return false
	end

	return arg_31_0.diffActive or var_0_84.state == "anim"
end

local function var_0_95(arg_32_0, arg_32_1, arg_32_2, arg_32_3, arg_32_4, arg_32_5, arg_32_6, arg_32_7)
	if not arg_32_0 then
		return false
	end

	arg_32_5 = tonumber(arg_32_5 or 1) or 1

	if arg_32_5 <= 0 then
		return false
	end

	arg_32_6 = math.max(0, math.floor(tonumber(arg_32_6 or 0) or 0))
	arg_32_7 = tonumber(arg_32_7 or 0.05) or 0.05

	local var_32_0 = (arg_32_1 - arg_32_3) / arg_32_5
	local var_32_1 = (arg_32_2 - arg_32_4) / arg_32_5
	local var_32_2 = math.floor(var_32_0)
	local var_32_3 = math.floor(var_32_1)
	local var_32_4 = arg_32_0:getWidth()
	local var_32_5 = arg_32_0:getHeight()

	for iter_32_0 = -arg_32_6, arg_32_6 do
		local var_32_6 = var_32_3 + iter_32_0

		if var_32_6 >= 0 and var_32_6 < var_32_5 then
			for iter_32_1 = -arg_32_6, arg_32_6 do
				local var_32_7 = var_32_2 + iter_32_1

				if var_32_7 >= 0 and var_32_7 < var_32_4 then
					local var_32_8, var_32_9, var_32_10, var_32_11 = arg_32_0:getPixel(var_32_7, var_32_6)

					if arg_32_7 < (var_32_11 or 0) then
						return true
					end
				end
			end
		end
	end

	return false
end

local var_0_96

local function var_0_97()
	if var_0_96 then
		return var_0_96
	end

	local var_33_0 = "                extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel\n                extern vec4 outlineColor;   // RGBA\n                extern float threshold;     // alpha threshold\n                extern float radiusPx;      // outline radius in px (1=1px)\n                vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n                    float a0 = Texel(tex, tc).a;\n                    if (a0 <= threshold){\n                        vec2 s = texelStep;\n                        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n                        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n                        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n                        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n                        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n                        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n                        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n                        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n                        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n                        if (radiusPx > 1.5){\n                            vec2 t = s * 2.0;\n                            float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;\n                            float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;\n                            float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;\n                            float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;\n                            float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;\n                            float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;\n                            float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;\n                            float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;\n                            float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));\n                            neighbor = max(neighbor, neighbor2);\n                        }\n                        if (neighbor > threshold){ return outlineColor; }\n                    }\n                    return vec4(0.0);\n                }\n        "

	var_0_96 = love.graphics.newShader(var_33_0)

	return var_0_96
end

local function var_0_98(arg_34_0, arg_34_1, arg_34_2)
	if not arg_34_0 or not arg_34_0.virtual or not arg_34_1 or not var_0_34 or not var_0_41 then
		return nil
	end

	local var_34_0 = arg_34_0 and arg_34_0.stageSelectOverlay and arg_34_0.stageSelectOverlay.stageCards or nil

	if var_34_0 and var_34_0.enabled == false then
		return nil
	end

	local var_34_1 = var_0_34:getWidth()
	local var_34_2 = var_0_34:getHeight()
	local var_34_3 = arg_34_0 and arg_34_0.virtual and arg_34_0.virtual.H or 720
	local var_34_4 = var_0_79(((arg_34_1.y or 0) + var_34_3) / math.max(1, var_34_3), 0, 1)

	if var_34_4 <= 0.001 then
		return nil
	end

	local var_34_5 = arg_34_0 and arg_34_0.scale or 1
	local var_34_6 = math.floor((var_34_0 and var_34_0.gapPx or 18) * var_34_5 + 0.5)
	local var_34_7 = math.floor((var_34_0 and var_34_0.offsetX or 0) * var_34_5 + 0.5)
	local var_34_8 = math.floor((var_34_0 and var_34_0.offsetY or 0) * var_34_5 + 0.5)
	local var_34_9 = var_0_41:getWidth()
	local var_34_10 = var_0_41:getHeight()
	local var_34_11 = 3
	local var_34_12 = math.floor(math.min(64 * var_34_5, var_34_1 * 0.12) + 0.5)
	local var_34_13 = math.floor(math.min(220 * var_34_5, var_34_2 * 0.4) + 0.5)
	local var_34_14 = math.floor(math.min(70 * var_34_5, var_34_2 * 0.14) + 0.5)
	local var_34_15 = var_34_12
	local var_34_16 = arg_34_2 + var_34_13
	local var_34_17 = math.max(1, var_34_1 - var_34_12 * 2)
	local var_34_18 = math.max(1, var_34_2 - var_34_13 - var_34_14)
	local var_34_19 = 1
	local var_34_20 = var_34_11 * var_34_9 * var_34_19 + (var_34_11 - 1) * var_34_6
	local var_34_21 = math.floor(var_34_15 + (var_34_17 - var_34_20) * 0.5 + var_34_7 + 0.5)
	local var_34_22 = math.floor(var_34_16 + (var_34_18 - var_34_10 * var_34_19) * 0.5 + var_34_8 + 0.5)

	return {
		alpha = var_34_4,
		x0 = var_34_21,
		y0 = var_34_22,
		cardW = var_34_9,
		cardH = var_34_10,
		cols = var_34_11,
		gap = var_34_6,
		scale = var_34_19
	}
end

local var_0_99

local function var_0_100(arg_35_0)
	local var_35_0 = math.floor(tonumber(arg_35_0 and arg_35_0.stagePage or 1) or 1)

	return var_0_79(var_35_0, 1, 2)
end

local function var_0_101(arg_36_0, arg_36_1)
	return (var_0_100(arg_36_0) - 1) * 3 + (arg_36_1 or 1)
end

local function var_0_102(arg_37_0)
	arg_37_0 = math.floor(tonumber(arg_37_0 or 0) or 0)

	return var_0_45[arg_37_0], var_0_46[arg_37_0]
end

local function var_0_103(arg_38_0, arg_38_1)
	if not arg_38_0 or not arg_38_0.stageSelectOverlay then
		return nil
	end

	if arg_38_1 == 1 then
		return arg_38_0.stageSelectOverlay.stage1Title
	elseif arg_38_1 == 2 then
		return arg_38_0.stageSelectOverlay.stage2Title
	elseif arg_38_1 == 3 then
		return arg_38_0.stageSelectOverlay.stage3Title
	elseif arg_38_1 == 4 then
		return arg_38_0.stageSelectOverlay.stage4Title
	end

	return {
		offsetY = -4,
		yPx = 194,
		enabled = true,
		offsetX = 0,
		scale = 1.15
	}
end

local function var_0_104(arg_39_0, arg_39_1)
	if not var_0_99(arg_39_1) then
		return "???"
	end

	local var_39_0 = arg_39_0 and arg_39_0.menuSettings and arg_39_0.menuSettings.language or "ko"
	local var_39_1 = var_0_103(arg_39_0, arg_39_1)

	if var_39_1 and var_39_1.text then
		return var_0_2.getText(var_39_1.text, var_39_0)
	end

	if arg_39_1 == 1 then
		return var_0_2.getText("menu_stage_1_title", var_39_0)
	end

	local var_39_2 = "menu_stage_name_" .. tostring(arg_39_1)
	local var_39_3 = var_0_2.getText(var_39_2, var_39_0)

	if var_39_3 == var_39_2 then
		var_39_3 = "Stage " .. tostring(arg_39_1)
	end

	return var_39_3
end

local function var_0_105(arg_40_0, arg_40_1, arg_40_2)
	if not arg_40_0 or not arg_40_1 or not arg_40_2 or not var_0_39 or not var_0_38 then
		return nil
	end

	local var_40_0 = var_0_100(arg_40_1) == 1 and 1 or -1
	local var_40_1 = arg_40_0.stageSelectOverlay and arg_40_0.stageSelectOverlay.title or {}
	local var_40_2 = tonumber(var_40_1.spriteScale or var_40_1.scale or 1) or 1
	local var_40_3 = math.max(1, var_0_38:getHeight() * var_40_2 * 1.15)
	local var_40_4, var_40_5 = var_0_39:getDimensions()
	local var_40_6 = var_40_3 / math.max(1, var_40_5)
	local var_40_7 = var_40_4 * var_40_6
	local var_40_8 = var_40_5 * var_40_6
	local var_40_9 = math.floor(0 * (arg_40_0 and arg_40_0.scale or 1) + 0.5)
	local var_40_10 = arg_40_2.x0
	local var_40_11 = arg_40_2.x0 + (arg_40_2.cols or 3) * arg_40_2.cardW * arg_40_2.scale + ((arg_40_2.cols or 3) - 1) * arg_40_2.gap
	local var_40_12 = var_40_0 == 1 and var_40_11 + var_40_9 + var_40_7 * 0.5 or var_40_10 - var_40_9 - var_40_7 * 0.5

	if var_0_34 then
		local var_40_13 = var_0_34:getWidth()

		var_40_12 = var_0_79(var_40_12, var_40_7 * 0.5 + 8, var_40_13 - var_40_7 * 0.5 - 8)
	end

	local var_40_14 = arg_40_2.y0 + arg_40_2.cardH * arg_40_2.scale * 0.5

	return {
		x = var_40_12 - var_40_7 * 0.5,
		y = var_40_14 - var_40_8 * 0.5,
		w = var_40_7,
		h = var_40_8,
		cx = var_40_12,
		cy = var_40_14,
		scale = var_40_6,
		dir = var_40_0
	}
end

local function var_0_106(arg_41_0)
	local var_41_0 = math.max(0.001, tonumber(arg_41_0.pageSlideDur or 0.28) or 0.28)

	return 1 - var_0_79((arg_41_0.pageSlideT or 0) / var_41_0, 0, 1)
end

local function var_0_107(arg_42_0, arg_42_1, arg_42_2)
	if not arg_42_0 or not arg_42_1 or not arg_42_2 then
		return {}
	end

	local var_42_0 = arg_42_0.virtual and arg_42_0.virtual.W or 1280
	local var_42_1 = math.min(var_42_0 * 0.42, arg_42_2.cardW * arg_42_2.scale * 1.65 + arg_42_2.gap + 36 * (arg_42_0 and arg_42_0.scale or 1))
	local var_42_2 = tonumber(arg_42_1.pageSlideDir or 0) or 0

	if (arg_42_1.pageSlideT or 0) <= 0 or var_42_2 == 0 then
		return {
			{
				alpha = 1,
				x = 0,
				scale = 1,
				page = var_0_100(arg_42_1)
			}
		}
	end

	local var_42_3 = var_0_83(var_0_106(arg_42_1))
	local var_42_4 = math.max(0, 1 - var_42_3 * 1.8)
	local var_42_5 = var_0_79((var_42_3 - 0.08) / 0.72, 0, 1)
	local var_42_6 = -var_42_2 * var_42_1 * var_42_3
	local var_42_7 = var_42_2 * var_42_1 * (1 - var_42_3)

	return {
		{
			y = 0,
			page = arg_42_1.pageFrom or var_0_100(arg_42_1),
			x = var_42_6,
			alpha = var_42_4,
			scale = 1 - 0.035 * var_42_3
		},
		{
			y = 0,
			page = arg_42_1.pageTo or var_0_100(arg_42_1),
			x = var_42_7,
			alpha = var_42_5,
			scale = 0.965 + 0.035 * var_42_3
		}
	}
end

local function var_0_108(arg_43_0)
	if not arg_43_0 then
		return 1
	end

	if (arg_43_0.pageSlideT or 0) <= 0 or (arg_43_0.pageSlideDir or 0) == 0 then
		return var_0_100(arg_43_0)
	end

	local var_43_0 = var_0_83(var_0_106(arg_43_0))
	local var_43_1 = tonumber(arg_43_0.pageFrom or var_0_100(arg_43_0)) or 1

	return var_43_1 + ((tonumber(arg_43_0.pageTo or var_0_100(arg_43_0)) or var_43_1) - var_43_1) * var_43_0
end

local function var_0_109(arg_44_0, arg_44_1)
	if not arg_44_0 then
		return
	end

	local var_44_0 = var_0_100(arg_44_0)

	arg_44_1 = var_0_79(math.floor(tonumber(arg_44_1 or var_44_0) or var_44_0), 1, 2)

	if arg_44_1 == var_44_0 then
		return
	end

	arg_44_0.pageFrom = var_44_0
	arg_44_0.pageTo = arg_44_1
	arg_44_0.stagePage = arg_44_1
	arg_44_0.pageSlideDir = var_44_0 < arg_44_1 and 1 or -1
	arg_44_0.pageSlideT = arg_44_0.pageSlideDur or 0.28
	arg_44_0.hoveredIndex = nil
	arg_44_0.pressedIndex = nil
	arg_44_0.stageRects = nil
	arg_44_0.hoverGraceT = 0
end

local function var_0_110(arg_45_0, arg_45_1)
	if not arg_45_0 or not arg_45_0.virtual or not var_0_34 or not var_0_47 then
		return nil
	end

	local var_45_0 = arg_45_0 and arg_45_0.scale or 1
	local var_45_1 = var_0_34:getWidth()
	local var_45_2 = var_0_34:getHeight()

	if not arg_45_0 or not arg_45_0.virtual or not arg_45_0.virtual.H then
		local var_45_3 = 720
	end

	local var_45_4 = var_0_47:getWidth()
	local var_45_5 = var_0_47:getHeight()
	local var_45_6 = 3
	local var_45_7 = arg_45_0 and arg_45_0.stageSelectOverlay and arg_45_0.stageSelectOverlay.difficultySelect or {}
	local var_45_8 = math.floor((var_45_7.gapPx or 18) * var_45_0 + 0.5)
	local var_45_9 = math.floor((var_45_7.offsetX or 0) * var_45_0 + 0.5)
	local var_45_10 = math.floor((var_45_7.offsetY or 0) * var_45_0 + 0.5)
	local var_45_11 = math.floor(math.min(64 * var_45_0, var_45_1 * 0.12) + 0.5)
	local var_45_12 = math.floor(math.min(220 * var_45_0, var_45_2 * 0.4) + 0.5)
	local var_45_13 = math.floor(math.min(70 * var_45_0, var_45_2 * 0.14) + 0.5)
	local var_45_14 = var_45_11
	local var_45_15 = arg_45_1 + var_45_12
	local var_45_16 = math.max(1, var_45_1 - var_45_11 * 2)
	local var_45_17 = math.max(1, var_45_2 - var_45_12 - var_45_13)
	local var_45_18 = tonumber(var_45_7.scale or 1)
	local var_45_19 = var_45_6 * var_45_4 * var_45_18 + (var_45_6 - 1) * var_45_8
	local var_45_20 = math.floor(var_45_14 + (var_45_16 - var_45_19) * 0.5 + var_45_9 + 0.5)
	local var_45_21 = math.floor(var_45_15 + (var_45_17 - var_45_5 * var_45_18) * 0.5 + var_45_10 + 0.5)

	return {
		x0 = var_45_20,
		y0 = var_45_21,
		cardW = var_45_4,
		cardH = var_45_5,
		cols = var_45_6,
		gap = var_45_8,
		scale = var_45_18
	}
end

local function var_0_111(arg_46_0, arg_46_1, arg_46_2, arg_46_3, arg_46_4)
	if not arg_46_0 or not arg_46_1 or not arg_46_1.active then
		return nil
	end

	local var_46_0 = math.floor((arg_46_1.y or 0) + 0.5)
	local var_46_1 = var_0_98(arg_46_0, arg_46_1, var_46_0)

	if not var_46_1 then
		return nil
	end

	for iter_46_0 = 1, var_46_1.cols or 3 do
		local var_46_2 = var_46_1.x0 + (iter_46_0 - 1) * (var_46_1.cardW * var_46_1.scale + var_46_1.gap)
		local var_46_3 = var_46_1.y0
		local var_46_4 = var_0_101(arg_46_1, iter_46_0)
		local var_46_5, var_46_6 = var_0_102(var_46_4)
		local var_46_7
		local var_46_8

		if var_46_5 then
			local var_46_9 = var_46_5:getWidth()
			local var_46_10 = var_46_5:getHeight()

			var_46_7 = math.floor(var_46_2 + (var_46_1.cardW * var_46_1.scale - var_46_9 * var_46_1.scale) * 0.5 + 0.5)
			var_46_8 = math.floor(var_46_3 + (var_46_1.cardH * var_46_1.scale - var_46_10 * var_46_1.scale) * 0.5 + 0.5)
		end

		local var_46_11 = iter_46_0 == 1 and var_0_43 or var_0_44

		if var_46_11 then
			if var_0_95(var_46_11, arg_46_2, arg_46_3, var_46_2, var_46_3, var_46_1.scale, 3, 0.05) then
				return iter_46_0
			end

			if var_46_6 and var_46_7 and var_46_8 and var_0_95(var_46_6, arg_46_2, arg_46_3, var_46_7, var_46_8, var_46_1.scale, 3, 0.05) then
				return iter_46_0
			end
		else
			local var_46_12 = var_46_1.cardW * var_46_1.scale
			local var_46_13 = var_46_1.cardH * var_46_1.scale

			if var_46_2 <= arg_46_2 and arg_46_2 <= var_46_2 + var_46_12 and var_46_3 <= arg_46_3 and arg_46_3 <= var_46_3 + var_46_13 then
				return iter_46_0
			end
		end
	end

	return nil
end

local function var_0_112(arg_47_0)
	if not arg_47_0 or not arg_47_0.virtual then
		return
	end

	local var_47_0 = var_0_4.stageSelect

	var_47_0.active = true
	var_47_0.phase = "enter"
	var_47_0.selectedStage = nil
	var_47_0.stageRects = nil
	var_47_0.pressedIndex = nil
	var_47_0.hoveredIndex = nil
	var_47_0.hoverProg = nil
	var_47_0.pressedProg = nil
	var_47_0.clickFeedbacks = nil
	var_47_0.shakeFeedbacks = nil
	var_47_0.hoverGraceT = 0
	var_47_0.stagePage = 1
	var_47_0.pagePressed = nil
	var_47_0.pageSlideT = 0
	var_47_0.pageSlideDir = 0
	var_47_0.pageFrom = 1
	var_47_0.pageTo = 1
	var_47_0.pageArrow = var_47_0.pageArrow or {
		scale = 1,
		hovered = false
	}
	var_47_0.pageArrow.rect = nil
	var_47_0.pageArrow.hovered = false
	var_47_0.pageArrow.scale = 1
	var_47_0.diffActive = false
	var_47_0.diffY = arg_47_0.virtual.H
	var_47_0.diffTargetY = arg_47_0.virtual.H
	var_47_0.diffV = 0
	var_47_0.diffAppearT = 0
	var_47_0.diffAppearProg = {
		0,
		0,
		0
	}

	if var_47_0.back then
		var_47_0.back.pressed = false
		var_47_0.back.scale = 0.9
		var_47_0.back.rect = nil
	end

	var_47_0.y = -arg_47_0.virtual.H
	var_47_0.targetY = 0
	var_47_0.v = 0
	var_47_0._dropSfxT = 0.2
	var_47_0._dropSfxPlayed = false
end

local function var_0_113(arg_48_0)
	if not arg_48_0 or not arg_48_0.virtual then
		return
	end

	local var_48_0 = var_0_4.stageSelect

	if not var_48_0 or not var_48_0.active then
		return
	end

	if var_48_0.diffActive then
		if var_0_37[math.floor(tonumber(var_48_0.selectedStage or 0) or 0)] then
			var_0_91(arg_48_0.stageSelectOverlay and arg_48_0.stageSelectOverlay.difficultyTitle or nil)
		end

		var_48_0.diffActive = false
		var_48_0.diffTargetY = arg_48_0.virtual.H
		var_48_0.diffClosing = true

		if var_0_30 then
			if var_0_30:isPlaying() then
				var_0_30:stop()
			end

			var_0_30:play()
		end

		return
	end

	local var_48_1 = arg_48_0.virtual.H

	var_48_0.phase = "leave"
	var_48_0.targetY = -var_48_1

	var_0_33()

	var_48_0.pressedIndex = nil
	var_48_0.stageRects = nil
	var_48_0.hoveredIndex = nil
	var_48_0.hoverProg = nil
	var_48_0.hoverGraceT = 0

	if var_48_0.back then
		var_48_0.back.pressed = false
	end
end

local function var_0_114(arg_49_0)
	local var_49_0 = var_0_4._stageSelectFlow

	if not var_49_0 then
		return
	end

	if var_0_4.stageSelect and var_0_4.stageSelect.active then
		return
	end

	var_49_0.active = true
	var_49_0.phase = "hide"
	var_49_0.t = 0
	var_0_4.inputCooldown = math.max(var_0_4.inputCooldown or 0, 0.25)
	var_0_4._menuFadeAlpha = 1
	var_0_4._menuLogoOffsetY = 0
	var_0_4._menuButtonsOffsetY = 0
end

function var_0_4.closeStageSelect(arg_50_0)
	var_0_113(arg_50_0 or var_0_5)
end

function var_0_4.isStageSelectOpen()
	return (var_0_4.stageSelect and var_0_4.stageSelect.active) == true
end

function var_0_4.resetMenuState(arg_52_0)
	arg_52_0 = arg_52_0 or var_0_5
	pendingAction = nil
	pendingTimer = 0

	if var_0_4.stageSelect then
		local var_52_0 = var_0_4.stageSelect

		var_52_0.active = false
		var_52_0.phase = "idle"
		var_52_0.v = 0
		var_52_0.pressedIndex = nil
		var_52_0.stageRects = nil

		if arg_52_0 and arg_52_0.virtual and arg_52_0.virtual.H then
			var_52_0.y = -arg_52_0.virtual.H
			var_52_0.targetY = -arg_52_0.virtual.H
		else
			var_52_0.y = 0
			var_52_0.targetY = 0
		end

		if var_52_0.back then
			var_52_0.back.pressed = false
			var_52_0.back.scale = 0.9
			var_52_0.back.rect = nil
			var_52_0.back.alpha = 0
			var_52_0.back._drawScale = nil
		end
	end

	if var_0_4._stageSelectFlow then
		var_0_4._stageSelectFlow.active = false
		var_0_4._stageSelectFlow.phase = "idle"
		var_0_4._stageSelectFlow.t = 0
	end

	var_0_4._menuFadeAlpha = 1
	var_0_4._menuLogoOffsetY = 0
	var_0_4._menuButtonsOffsetY = 0
	var_0_4.inputCooldown = 0
end

local var_0_115 = {
	t = 0,
	state = "anim",
	totalDur = 0.9,
	targetY = 0,
	y = -100,
	overshoot = 8,
	startY = -100
}

function var_0_4.resetLogoAnim()
	var_0_115.t = 0
	var_0_115.state = "anim"
	var_0_115.y = var_0_115.startY
end

var_0_4.exitConfirm = {
	leaving = false,
	ulNoProg = 0,
	ulYesProg = 0,
	targetY = 0,
	y = 720,
	v = 0,
	action = "exit",
	active = false
}

function var_0_4.openConfirm(arg_54_0, arg_54_1, arg_54_2)
	local var_54_0 = arg_54_0 and arg_54_0.restartConfirm or {}
	local var_54_1 = arg_54_0 and arg_54_0.virtual and arg_54_0.virtual.H or 720
	local var_54_2 = 160
	local var_54_3 = var_54_0.centerY or math.floor(var_54_1 * (var_54_0.centerFracY or 0.5) + 0.5)
	local var_54_4 = var_54_0.boardOffsetY or 0
	local var_54_5 = math.floor(var_54_3 - var_54_2 * 0.5 + var_54_4 + 0.5)

	var_0_4.exitConfirm.active = true
	var_0_4.exitConfirm.leaving = false
	var_0_4.exitConfirm.y = var_54_1 + 10
	var_0_4.exitConfirm.v = 0
	var_0_4.exitConfirm.targetY = var_54_5
	var_0_4.exitConfirm.rectYes = nil
	var_0_4.exitConfirm.rectNo = nil
	var_0_4.exitConfirm.ulYesProg = 0
	var_0_4.exitConfirm.ulNoProg = 0
	var_0_4.exitConfirm.action = arg_54_1 or "exit"
	var_0_4.exitConfirm.prompt = arg_54_2
end

var_0_4.buttons = {
	{
		id = "play",
		textKey = "menu_play"
	},
	{
		id = "settings",
		textKey = "menu_settings"
	},
	{
		id = "exit",
		textKey = "menu_exit"
	}
}

local function var_0_116()
	if var_0_69 then
		return
	end

	local var_55_0, var_55_1 = pcall(love.graphics.newImage, "src/sprites/mainmenu/logo.png")

	if var_55_0 then
		var_55_1:setFilter("nearest", "nearest")

		var_0_13 = var_55_1
	end

	local var_55_2 = {
		"src/sprites/icons/menu/upgrade.png",
		"sprites/icons/menu/upgrade.png"
	}
	local var_55_3 = false
	local var_55_4

	for iter_55_0, iter_55_1 in ipairs(var_55_2) do
		var_55_3, var_55_4 = pcall(love.graphics.newImage, iter_55_1)

		if var_55_3 and var_55_4 then
			break
		end
	end

	if var_55_3 and var_55_4 then
		var_55_4:setFilter("nearest", "nearest")

		var_0_20 = var_55_4
	end

	local var_55_5 = {
		"src/sprites/icons/menu/discord.png",
		"sprites/icons/menu/discord.png"
	}
	local var_55_6 = false
	local var_55_7

	for iter_55_2, iter_55_3 in ipairs(var_55_5) do
		var_55_6, var_55_7 = pcall(love.graphics.newImage, iter_55_3)

		if var_55_6 and var_55_7 then
			break
		end
	end

	if var_55_6 and var_55_7 then
		var_55_7:setFilter("nearest", "nearest")

		var_0_18 = var_55_7
	end

	local var_55_8 = {
		"src/sprites/icons/menu/collection.png",
		"sprites/icons/menu/collection.png"
	}
	local var_55_9 = false
	local var_55_10

	for iter_55_4, iter_55_5 in ipairs(var_55_8) do
		var_55_9, var_55_10 = pcall(love.graphics.newImage, iter_55_5)

		if var_55_9 and var_55_10 then
			break
		end
	end

	if var_55_9 and var_55_10 then
		var_55_10:setFilter("nearest", "nearest")

		var_0_14 = var_55_10
	end

	local var_55_11 = {
		"src/sprites/icons/menu/collectionopen.png",
		"sprites/icons/menu/collectionopen.png"
	}
	local var_55_12 = false
	local var_55_13

	for iter_55_6, iter_55_7 in ipairs(var_55_11) do
		if love.filesystem.getInfo(iter_55_7, "file") then
			var_55_12, var_55_13 = pcall(love.graphics.newImage, iter_55_7)

			if var_55_12 and var_55_13 then
				break
			end
		end
	end

	if var_55_12 and var_55_13 then
		var_55_13:setFilter("nearest", "nearest")

		var_0_15 = var_55_13
	end

	local var_55_14 = {
		"src/sprites/icons/menu/achievement.png",
		"sprites/icons/menu/achievement.png"
	}
	local var_55_15 = false
	local var_55_16

	for iter_55_8, iter_55_9 in ipairs(var_55_14) do
		var_55_15, var_55_16 = pcall(love.graphics.newImage, iter_55_9)

		if var_55_15 and var_55_16 then
			break
		end
	end

	if var_55_15 and var_55_16 then
		var_55_16:setFilter("nearest", "nearest")

		var_0_16 = var_55_16
	end

	local var_55_17 = {
		"src/sprites/icons/menu/achievementopen.png",
		"sprites/icons/menu/achievementopen.png"
	}
	local var_55_18 = false
	local var_55_19

	for iter_55_10, iter_55_11 in ipairs(var_55_17) do
		if love.filesystem.getInfo(iter_55_11, "file") then
			var_55_18, var_55_19 = pcall(love.graphics.newImage, iter_55_11)

			if var_55_18 and var_55_19 then
				break
			end
		end
	end

	if var_55_18 and var_55_19 then
		var_55_19:setFilter("nearest", "nearest")

		var_0_17 = var_55_19
	end

	local var_55_20, var_55_21 = pcall(love.graphics.newImage, "src/sprites/icons/menu/originite.png")

	if var_55_20 then
		var_55_21:setFilter("nearest", "nearest")

		var_0_21 = var_55_21
	end

	local var_55_22, var_55_23 = pcall(love.graphics.newImage, "src/sprites/mainmenu/menubutton.png")

	if var_55_22 then
		var_55_23:setFilter("nearest", "nearest")

		var_0_24 = var_55_23
	end

	local var_55_24, var_55_25 = pcall(love.image.newImageData, "src/sprites/mainmenu/menubutton.png")

	if var_55_24 then
		var_0_65 = var_55_25
	end

	local var_55_26 = {
		"src/sprites/mainmenu/playbutton.png",
		"sprites/mainmenu/playbutton.png"
	}
	local var_55_27 = false
	local var_55_28

	for iter_55_12, iter_55_13 in ipairs(var_55_26) do
		var_55_27, var_55_28 = pcall(love.graphics.newImage, iter_55_13)

		if var_55_27 and var_55_28 then
			break
		end
	end

	if var_55_27 and var_55_28 then
		var_55_28:setFilter("nearest", "nearest")

		var_0_25 = var_55_28
	end

	local var_55_29 = false
	local var_55_30

	for iter_55_14, iter_55_15 in ipairs(var_55_26) do
		var_55_29, var_55_30 = pcall(love.image.newImageData, iter_55_15)

		if var_55_29 and var_55_30 then
			break
		end
	end

	if var_55_29 and var_55_30 then
		var_0_66 = var_55_30
	end

	local var_55_31 = {
		"src/sprites/mainmenu/optionbutton.png",
		"sprites/mainmenu/optionbutton.png"
	}
	local var_55_32 = false
	local var_55_33

	for iter_55_16, iter_55_17 in ipairs(var_55_31) do
		var_55_32, var_55_33 = pcall(love.graphics.newImage, iter_55_17)

		if var_55_32 and var_55_33 then
			break
		end
	end

	if var_55_32 and var_55_33 then
		var_55_33:setFilter("nearest", "nearest")

		var_0_26 = var_55_33
	end

	local var_55_34 = false
	local var_55_35

	for iter_55_18, iter_55_19 in ipairs(var_55_31) do
		var_55_34, var_55_35 = pcall(love.image.newImageData, iter_55_19)

		if var_55_34 and var_55_35 then
			break
		end
	end

	if var_55_34 and var_55_35 then
		var_0_67 = var_55_35
	end

	local var_55_36 = {
		"src/sprites/mainmenu/quitbutton.png",
		"sprites/mainmenu/quitbutton.png"
	}
	local var_55_37 = false
	local var_55_38

	for iter_55_20, iter_55_21 in ipairs(var_55_36) do
		var_55_37, var_55_38 = pcall(love.graphics.newImage, iter_55_21)

		if var_55_37 and var_55_38 then
			break
		end
	end

	if var_55_37 and var_55_38 then
		var_55_38:setFilter("nearest", "nearest")

		var_0_27 = var_55_38
	end

	local var_55_39 = false
	local var_55_40

	for iter_55_22, iter_55_23 in ipairs(var_55_36) do
		var_55_39, var_55_40 = pcall(love.image.newImageData, iter_55_23)

		if var_55_39 and var_55_40 then
			break
		end
	end

	if var_55_39 and var_55_40 then
		var_0_68 = var_55_40
	end

	local var_55_41 = {
		"src/sprites/mainmenu/menubuttonbackground.png",
		"sprites/mainmenu/menubuttonbackground.png"
	}
	local var_55_42 = false
	local var_55_43

	for iter_55_24, iter_55_25 in ipairs(var_55_41) do
		var_55_42, var_55_43 = pcall(love.graphics.newImage, iter_55_25)

		if var_55_42 then
			break
		end
	end

	if var_55_42 and var_55_43 then
		var_55_43:setFilter("nearest", "nearest")

		var_0_28 = var_55_43
	end

	if not var_0_29 then
		local var_55_44 = var_0_6 and var_0_6.audio and var_0_6.audio.buttonHover

		if not var_55_44 and (not love.filesystem or not love.filesystem.getInfo or not love.filesystem.getInfo("web.flag", "file")) then
			local var_55_45 = "src/audio/ui/buttonhover1.wav"
			local var_55_46, var_55_47 = pcall(love.audio.newSource, var_55_45, "static")

			if not var_55_46 then
				local var_55_48 = "audio/ui/buttonhover1.wav"

				var_55_46, var_55_47 = pcall(love.audio.newSource, var_55_48, "static")
			end

			if var_55_46 and var_55_47 then
				var_55_44 = var_55_47
			end
		end

		if var_55_44 then
			local var_55_49 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

			if var_55_44.setVolume then
				var_55_44:setVolume(var_55_49 * 1.6)
			end

			var_0_29 = var_55_44
		end
	end

	if not var_0_30 then
		local var_55_50 = var_0_6 and var_0_6.audio and var_0_6.audio.buttonClick

		if not var_55_50 and (not love.filesystem or not love.filesystem.getInfo or not love.filesystem.getInfo("web.flag", "file")) then
			local var_55_51 = "src/audio/ui/buttonclick1.wav"
			local var_55_52, var_55_53 = pcall(love.audio.newSource, var_55_51, "static")

			if not var_55_52 then
				local var_55_54 = "audio/ui/buttonclick1.wav"

				var_55_52, var_55_53 = pcall(love.audio.newSource, var_55_54, "static")
			end

			if var_55_52 and var_55_53 then
				var_55_50 = var_55_53
			end
		end

		if var_55_50 then
			local var_55_55 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

			if var_55_50.setVolume then
				var_55_50:setVolume(var_55_55 * 1.6)
			end

			var_0_30 = var_55_50
		end
	end

	if not var_0_31 and (not love.filesystem or not love.filesystem.getInfo or not love.filesystem.getInfo("web.flag", "file")) then
		local var_55_56 = "src/audio/ui/risingheavyhit.wav"
		local var_55_57, var_55_58 = pcall(love.audio.newSource, var_55_56, "static")

		if not var_55_57 then
			local var_55_59 = "audio/ui/risingheavyhit.wav"

			var_55_57, var_55_58 = pcall(love.audio.newSource, var_55_59, "static")
		end

		if var_55_57 and var_55_58 then
			local var_55_60 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

			if var_55_58.setVolume then
				var_55_58:setVolume(var_55_60 * 1.8)
			end

			var_0_31 = var_55_58
		end
	end

	local var_55_61, var_55_62 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagewindow.png")

	if var_55_61 then
		var_55_62:setFilter("nearest", "nearest")

		var_0_34 = var_55_62
	end

	local var_55_63, var_55_64 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagewindowrope.png")

	if var_55_63 then
		var_55_64:setFilter("nearest", "nearest")

		var_0_35 = var_55_64
	end

	local var_55_65, var_55_66 = pcall(love.graphics.newImage, "src/sprites/mainmenu/titlebackground.png")

	if var_55_65 then
		var_55_66:setFilter("nearest", "nearest")

		var_0_36 = var_55_66
	end

	for iter_55_26 = 1, 4 do
		local var_55_67, var_55_68 = pcall(love.graphics.newImage, string.format("src/sprites/mainmenu/stage%dtitle.png", iter_55_26))

		if var_55_67 and var_55_68 then
			var_55_68:setFilter("nearest", "nearest")

			var_0_37[iter_55_26] = var_55_68
		end
	end

	if not var_0_37[4] then
		local var_55_69, var_55_70 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage4title.png")

		if var_55_69 and var_55_70 then
			var_55_70:setFilter("nearest", "nearest")

			var_0_37[4] = var_55_70
		end
	end

	local var_55_71 = {
		"src/sprites/mainmenu/stagetitle.png",
		"sprites/mainmenu/stagetitle.png"
	}

	for iter_55_27, iter_55_28 in ipairs(var_55_71) do
		local var_55_72, var_55_73 = pcall(love.graphics.newImage, iter_55_28)

		if var_55_72 and var_55_73 then
			var_55_73:setFilter("nearest", "nearest")

			var_0_38 = var_55_73

			break
		end
	end

	local var_55_74, var_55_75 = pcall(love.graphics.newImage, "src/sprites/mainmenu/arrow.png")

	if var_55_74 and var_55_75 then
		var_55_75:setFilter("nearest", "nearest")

		var_0_39 = var_55_75
	end

	local var_55_76, var_55_77 = pcall(love.graphics.newImage, "src/sprites/mainmenu/backbutton.png")

	if var_55_76 then
		var_55_77:setFilter("nearest", "nearest")

		var_0_40 = var_55_77
	end

	local function var_55_78(arg_56_0)
		local var_56_0, var_56_1 = pcall(love.graphics.newImage, arg_56_0)

		if var_56_0 and var_56_1 then
			var_56_1:setFilter("nearest", "nearest")

			return var_56_1
		end

		return nil
	end

	var_0_53 = var_55_78("src/sprites/icons/menu/bronzemedal.png")
	var_0_54 = var_55_78("src/sprites/icons/menu/silvermedal.png")
	var_0_55 = var_55_78("src/sprites/icons/menu/goldmedal.png")

	local var_55_79, var_55_80 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard.png")

	if var_55_79 then
		var_55_80:setFilter("nearest", "nearest")

		var_0_41 = var_55_80
		var_0_42 = var_55_80
	end

	local var_55_81, var_55_82 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage1.png")

	if var_55_81 then
		var_55_82:setFilter("nearest", "nearest")

		var_0_45[1] = var_55_82
	end

	local var_55_83, var_55_84 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage2.png")

	if var_55_83 then
		var_55_84:setFilter("nearest", "nearest")

		var_0_45[2] = var_55_84
	end

	local var_55_85, var_55_86 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage3.png")

	if var_55_85 then
		var_55_86:setFilter("nearest", "nearest")

		var_0_45[3] = var_55_86
	end

	local var_55_87, var_55_88 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage4.png")

	if var_55_87 then
		var_55_88:setFilter("nearest", "nearest")

		var_0_45[4] = var_55_88
	end

	local var_55_89, var_55_90 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage5.png")

	if var_55_89 then
		var_55_90:setFilter("nearest", "nearest")

		var_0_45[5] = var_55_90
	end

	local var_55_91, var_55_92 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage6.png")

	if var_55_91 then
		var_55_92:setFilter("nearest", "nearest")

		var_0_45[6] = var_55_92
	end

	local var_55_93, var_55_94 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard.png")

	if var_55_93 then
		var_0_43 = var_55_94
		var_0_44 = var_55_94
	end

	local var_55_95, var_55_96 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage1.png")

	if var_55_95 then
		var_0_46[1] = var_55_96
	end

	local var_55_97, var_55_98 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage2.png")

	if var_55_97 then
		var_0_46[2] = var_55_98
	end

	local var_55_99, var_55_100 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage3.png")

	if var_55_99 then
		var_0_46[3] = var_55_100
	end

	local var_55_101, var_55_102 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage4.png")

	if var_55_101 then
		var_0_46[4] = var_55_102
	end

	local var_55_103, var_55_104 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage5.png")

	if var_55_103 then
		var_0_46[5] = var_55_104
	end

	local var_55_105, var_55_106 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage6.png")

	if var_55_105 then
		var_0_46[6] = var_55_106
	end

	local var_55_107, var_55_108 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard_easy.png")

	if var_55_107 then
		var_55_108:setFilter("nearest", "nearest")

		var_0_47 = var_55_108
	end

	local var_55_109, var_55_110 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard_normal.png")

	if var_55_109 then
		var_55_110:setFilter("nearest", "nearest")

		var_0_48 = var_55_110
	end

	local var_55_111, var_55_112 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard_hard.png")

	if var_55_111 then
		var_55_112:setFilter("nearest", "nearest")

		var_0_49 = var_55_112
	end

	local var_55_113, var_55_114 = pcall(love.graphics.newImage, "src/sprites/icons/stoneicon/000lock.png")

	if var_55_113 then
		var_55_114:setFilter("nearest", "nearest")

		difficultyLockImg = var_55_114
	end

	local var_55_115, var_55_116 = pcall(love.graphics.newImage, "src/sprites/icons/stoneicon/000lockanimation.png")

	if var_55_115 then
		var_55_116:setFilter("nearest", "nearest")

		difficultyLockAnimImg = var_55_116
		difficultyLockAnimQuads = {}

		local var_55_117, var_55_118 = var_55_116:getDimensions()

		for iter_55_29 = 1, 4 do
			difficultyLockAnimQuads[iter_55_29] = love.graphics.newQuad((iter_55_29 - 1) * 16, 0, 16, 16, var_55_117, var_55_118)
		end
	end

	local var_55_119, var_55_120 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard_easy.png")

	if var_55_119 then
		var_0_50 = var_55_120
	end

	local var_55_121, var_55_122 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard_normal.png")

	if var_55_121 then
		var_0_51 = var_55_122
	end

	local var_55_123, var_55_124 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard_hard.png")

	if var_55_123 then
		var_0_52 = var_55_124
	end

	var_0_4.reloadFonts()

	local var_55_125 = var_0_5 and var_0_5.mainMenuBackground or {}
	local var_55_126 = tonumber(var_55_125.mainlayers1ScrollSpeed)

	if var_55_126 == nil then
		var_55_126 = 18
	end

	local var_55_127 = tonumber(var_55_125.mainlayers2ScrollSpeed)

	if var_55_127 == nil then
		var_55_127 = var_55_126
	end

	local var_55_128 = 1
	local var_55_129 = {
		"src/sprites/mainmenu/mainbackground/mainlayers1.png",
		"sprites/mainmenu/mainbackground/mainlayers1.png"
	}
	local var_55_130 = false
	local var_55_131

	for iter_55_30, iter_55_31 in ipairs(var_55_129) do
		var_55_130, var_55_131 = pcall(love.graphics.newImage, iter_55_31)

		if var_55_130 and var_55_131 then
			break
		end
	end

	if var_55_130 and var_55_131 then
		var_55_131:setFilter("nearest", "nearest")
		table.insert(var_0_12, var_55_128, {
			scrollMatchComposite = true,
			x = 0,
			compositeH = 286,
			compositeW = 519,
			img = var_55_131,
			speed = var_55_126
		})

		var_55_128 = var_55_128 + 1
	end

	local var_55_132 = {
		"src/sprites/mainmenu/mainbackground/mainlayers2.png",
		"sprites/mainmenu/mainbackground/mainlayers2.png"
	}
	local var_55_133 = false
	local var_55_134

	for iter_55_32, iter_55_33 in ipairs(var_55_132) do
		var_55_133, var_55_134 = pcall(love.graphics.newImage, iter_55_33)

		if var_55_133 and var_55_134 then
			break
		end
	end

	if var_55_133 and var_55_134 then
		var_55_134:setFilter("nearest", "nearest")
		table.insert(var_0_12, var_55_128, {
			scrollMatchComposite = true,
			x = 0,
			compositeH = 286,
			compositeW = 519,
			img = var_55_134,
			speed = var_55_127
		})
	end

	local var_55_135 = 353
	local var_55_136 = 166
	local var_55_137 = var_55_135 + var_55_136
	local var_55_138 = 286
	local var_55_139 = 9
	local var_55_140 = var_0_5 and var_0_5.mainMenuBackground or {}
	local var_55_141 = tonumber(var_55_140.unitsFrameDur) or 0.26
	local var_55_142 = tonumber(var_55_140.goblinsFrameDur) or 0.15

	local function var_55_143(arg_57_0)
		local var_57_0 = false
		local var_57_1

		for iter_57_0, iter_57_1 in ipairs(arg_57_0) do
			var_57_0, var_57_1 = pcall(love.graphics.newImage, iter_57_1)

			if var_57_0 and var_57_1 then
				break
			end
		end

		return var_57_0 and var_57_1 or nil
	end

	local function var_55_144(arg_58_0, arg_58_1)
		arg_58_0:setFilter("nearest", "nearest")

		local var_58_0, var_58_1 = arg_58_0:getDimensions()
		local var_58_2 = arg_58_1.frameW
		local var_58_3 = arg_58_1.frameH
		local var_58_4 = {}

		for iter_58_0 = 1, var_55_139 do
			var_58_4[iter_58_0] = love.graphics.newQuad((iter_58_0 - 1) * var_58_2, 0, var_58_2, var_58_3, var_58_0, var_58_1)
		end

		table.insert(var_0_12, {
			speed = 0,
			x = 0,
			fullscreenCover = false,
			animT = 0,
			frameIndex = 1,
			splitComposite = true,
			sheetAnim = true,
			img = arg_58_0,
			compositeW = var_55_137,
			compositeH = var_55_138,
			offsetXInComposite = arg_58_1.offsetXInComposite,
			quads = var_58_4,
			frameW = var_58_2,
			frameH = var_58_3,
			frameCount = var_55_139,
			frameDur = arg_58_1.frameDur
		})
	end

	local var_55_145 = var_55_143({
		"src/sprites/mainmenu/mainbackground/units-sheet.png",
		"sprites/mainmenu/mainbackground/units-sheet.png"
	})
	local var_55_146 = var_55_143({
		"src/sprites/mainmenu/mainbackground/goblins-sheet.png",
		"sprites/mainmenu/mainbackground/goblins-sheet.png"
	})

	if var_55_145 and var_55_146 then
		var_55_144(var_55_145, {
			offsetXInComposite = 0,
			frameW = var_55_135,
			frameH = var_55_138,
			frameDur = var_55_141
		})
		var_55_144(var_55_146, {
			frameW = var_55_136,
			frameH = var_55_138,
			offsetXInComposite = var_55_135,
			frameDur = var_55_142
		})
	else
		local var_55_147 = 519
		local var_55_148 = 286
		local var_55_149 = 0.17
		local var_55_150 = {
			"src/sprites/mainmenu/mainbackground/main-sheet.png",
			"sprites/mainmenu/mainbackground/main-sheet.png"
		}
		local var_55_151 = false
		local var_55_152

		for iter_55_34, iter_55_35 in ipairs(var_55_150) do
			var_55_151, var_55_152 = pcall(love.graphics.newImage, iter_55_35)

			if var_55_151 then
				break
			end
		end

		if var_55_151 and var_55_152 then
			var_55_152:setFilter("nearest", "nearest")

			local var_55_153, var_55_154 = var_55_152:getDimensions()
			local var_55_155 = {}

			for iter_55_36 = 1, var_55_139 do
				var_55_155[iter_55_36] = love.graphics.newQuad((iter_55_36 - 1) * var_55_147, 0, var_55_147, var_55_148, var_55_153, var_55_154)
			end

			table.insert(var_0_12, {
				speed = 0,
				x = 0,
				fullscreenCover = true,
				animT = 0,
				frameIndex = 1,
				sheetAnim = true,
				img = var_55_152,
				quads = var_55_155,
				frameW = var_55_147,
				frameH = var_55_148,
				frameCount = var_55_139,
				frameDur = var_55_149
			})
		else
			print("Failed to load main menu background (units+goblins or main-sheet fallback)")
		end
	end

	for iter_55_37 = 1, var_0_63 do
		local var_55_156 = love.math.random() < 0.42

		table.insert(var_0_62, {
			x = love.math.random(0, 1280),
			y = love.math.random(0, 720),
			glow = var_55_156,
			phase = love.math.random() * math.pi * 2,
			speedX = (var_55_156 and love.math.random(-35, 35) or love.math.random(-50, 50)) / 10,
			speedY = (var_55_156 and love.math.random(-15, 15) or love.math.random(-20, 20)) / 10,
			alpha = love.math.random() * 0.45 + (var_55_156 and 0.35 or 0.22),
			t = love.math.random() * 100
		})
	end

	local var_55_157, var_55_158 = pcall(love.graphics.newShader, var_0_57)

	if var_55_157 then
		var_0_56 = var_55_158
	end

	local var_55_159, var_55_160 = pcall(love.graphics.newShader, var_0_61)

	if var_55_159 then
		var_0_60 = var_55_160
	end

	local var_55_161, var_55_162 = pcall(love.graphics.newShader, var_0_59)

	if var_55_161 then
		var_0_58 = var_55_162
	end

	var_0_69 = true
end

local var_0_117
local var_0_118 = 0
local var_0_119 = 0.15
local var_0_120 = {}

function var_0_4.spendOriginite(arg_59_0)
	if arg_59_0 <= 0 then
		return false
	end

	if arg_59_0 > var_0_22 then
		return false
	end

	var_0_22 = var_0_22 - arg_59_0

	table.insert(var_0_120, {
		t = 0,
		alpha = 0,
		yOffset = 0,
		xOffset = 0,
		dur = 1.12,
		exitDur = 0.35,
		holdDur = 0.65,
		enterDur = 0.12,
		text = "-" .. tostring(arg_59_0),
		color = {
			1,
			0.2,
			0.2,
			1
		}
	})

	return true
end

local var_0_121 = 0.3

var_0_4.inputCooldown = 0

if var_0_4.collectionLocked == nil then
	var_0_4.collectionLocked = true
end

if var_0_4.achievementLocked == nil then
	var_0_4.achievementLocked = true
end

function var_0_4.updateCurrency(arg_60_0)
	if var_0_23 ~= var_0_22 then
		local var_60_0 = var_0_22 - var_0_23

		if math.abs(var_60_0) < 0.5 then
			var_0_23 = var_0_22
		else
			var_0_23 = var_0_23 + var_60_0 * math.min(1, arg_60_0 * 5)
		end
	end

	for iter_60_0 = #var_0_120, 1, -1 do
		local var_60_1 = var_0_120[iter_60_0]

		var_60_1.t = var_60_1.t + arg_60_0

		local var_60_2 = math.max(0.001, var_60_1.enterDur or 0.12)
		local var_60_3 = math.max(0, var_60_1.holdDur or 0.65)
		local var_60_4 = math.max(0.001, var_60_1.exitDur or 0.35)
		local var_60_5 = var_60_2 + var_60_3 + var_60_4

		var_60_1.dur = var_60_5

		local var_60_6 = 0
		local var_60_7 = 0
		local var_60_8 = 18
		local var_60_9 = 10
		local var_60_10 = 20

		if var_60_2 > var_60_1.t then
			local var_60_11 = var_0_82(var_60_1.t / var_60_2)

			var_60_1.alpha = var_60_11
			var_60_1.xOffset = 0
			var_60_1.yOffset = var_0_81(var_60_8, var_60_9, var_60_11)
		elseif var_60_1.t < var_60_2 + var_60_3 then
			var_60_1.alpha = 1
			var_60_1.xOffset = 0
			var_60_1.yOffset = var_60_9
		else
			local var_60_12 = var_0_79((var_60_1.t - var_60_2 - var_60_3) / var_60_4, 0, 1)
			local var_60_13 = var_0_82(var_60_12)

			var_60_1.alpha = 1 - var_60_12
			var_60_1.xOffset = 0
			var_60_1.yOffset = var_0_81(var_60_9, var_60_10, var_60_13)
		end

		if var_60_5 <= var_60_1.t then
			table.remove(var_0_120, iter_60_0)
		end
	end
end

function var_0_4.update(arg_61_0, arg_61_1, arg_61_2)
	var_0_4.updateCurrency(arg_61_0)

	local var_61_0 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

	if var_0_29 and var_0_29.setVolume then
		var_0_29:setVolume(var_61_0 * 1.6)
	end

	if var_0_30 and var_0_30.setVolume then
		var_0_30:setVolume(var_61_0 * 1.6)
	end

	if var_0_31 and var_0_31.setVolume then
		var_0_31:setVolume(var_61_0 * 1.8)
	end

	local var_61_1 = var_0_4.stageSelect
	local var_61_2 = var_0_4._stageSelectFlow
	local var_61_3 = var_0_5 and var_0_5.scale or 1
	local var_61_4 = (var_61_2 and var_61_2.floatLogoPx or 18) * var_61_3
	local var_61_5 = (var_61_2 and var_61_2.floatButtonsPx or 18) * var_61_3

	if var_61_2 and var_61_2.active and var_61_2.phase == "hide" then
		var_61_2.t = (var_61_2.t or 0) + arg_61_0

		local var_61_6 = var_0_82((var_61_2.t or 0) / math.max(0.001, var_61_2.hideDur or 0.3))

		var_0_4._menuFadeAlpha = 1 - var_61_6
		var_0_4._menuLogoOffsetY = -var_61_4 * var_61_6
		var_0_4._menuButtonsOffsetY = var_61_5 * var_61_6

		if (var_61_2.t or 0) >= (var_61_2.hideDur or 0.3) then
			var_0_4._menuFadeAlpha = 0
			var_0_4._menuLogoOffsetY = -var_61_4
			var_0_4._menuButtonsOffsetY = var_61_5
			var_61_2.phase = "gap"
			var_61_2.t = 0
		end
	elseif var_61_2 and var_61_2.active and var_61_2.phase == "gap" then
		var_61_2.t = (var_61_2.t or 0) + arg_61_0
		var_0_4._menuFadeAlpha = 0
		var_0_4._menuLogoOffsetY = -var_61_4
		var_0_4._menuButtonsOffsetY = var_61_5

		if (var_61_2.t or 0) >= (var_61_2.gapDur or 0.1) then
			var_0_112(var_0_5)

			var_61_2.phase = "idle"
			var_61_2.active = false
			var_61_2.t = 0
		end
	elseif var_61_2 and var_61_2.active and var_61_2.phase == "show" then
		var_61_2.t = (var_61_2.t or 0) + arg_61_0

		local var_61_7 = var_0_83((var_61_2.t or 0) / math.max(0.001, var_61_2.showDur or 0.22))

		var_0_4._menuFadeAlpha = var_61_7
		var_0_4._menuLogoOffsetY = -var_61_4 * (1 - var_61_7)
		var_0_4._menuButtonsOffsetY = var_61_5 * (1 - var_61_7)

		if (var_61_2.t or 0) >= (var_61_2.showDur or 0.22) then
			var_0_4._menuFadeAlpha = 1
			var_0_4._menuLogoOffsetY = 0
			var_0_4._menuButtonsOffsetY = 0
			var_61_2.phase = "idle"
			var_61_2.active = false
			var_61_2.t = 0
		end
	elseif var_61_1 and var_61_1.active then
		var_0_4._menuFadeAlpha = 0
		var_0_4._menuLogoOffsetY = -var_61_4
		var_0_4._menuButtonsOffsetY = var_61_5
	elseif not var_61_2 or not var_61_2.active then
		var_0_4._menuFadeAlpha = 1
		var_0_4._menuLogoOffsetY = 0
		var_0_4._menuButtonsOffsetY = 0
	end

	if var_61_1 and var_61_1.active then
		local var_61_8 = var_0_5 and var_0_5.pauseOverlay and var_0_5.pauseOverlay.spring or {
			damping = 14,
			maxVel = 2000,
			k = 90
		}
		local var_61_9 = tonumber(var_61_8.k or 90) or 90
		local var_61_10 = tonumber(var_61_8.damping or 14) or 14
		local var_61_11 = tonumber(var_61_8.maxVel or 2000) or 2000

		if var_61_1.phase == "leave" then
			var_61_9 = var_61_9 * 1.35
			var_61_10 = var_61_10 * 1
			var_61_11 = var_61_11 * 1.5
		end

		local var_61_12 = (var_61_1.targetY or 0) - (var_61_1.y or 0)

		var_61_1.v = (var_61_1.v or 0) + var_61_12 * var_61_9 * arg_61_0

		local var_61_13 = math.exp(-var_61_10 * arg_61_0)

		var_61_1.v = var_61_1.v * var_61_13
		var_61_1.v = var_0_79(var_61_1.v, -var_61_11, var_61_11)
		var_61_1.y = (var_61_1.y or 0) + var_61_1.v * arg_61_0

		local var_61_14 = var_61_1.snapEps or 0.5
		local var_61_15 = 10

		if var_61_1.phase == "leave" then
			var_61_14 = math.max(var_61_14, 2)
			var_61_15 = 35
		end

		if var_61_14 >= math.abs(var_61_12) and var_61_15 >= math.abs(var_61_1.v) then
			var_61_1.y = var_61_1.targetY or 0
			var_61_1.v = 0

			if var_61_1.phase == "leave" then
				var_61_1.active = false
				var_61_1.phase = "idle"
				var_61_1.stageRects = nil

				local var_61_16 = var_0_4._stageSelectFlow

				if var_61_16 then
					var_61_16.active = true
					var_61_16.phase = "show"
					var_61_16.t = 0
				end
			else
				var_61_1.phase = "idle"
			end
		end

		if var_61_1.diffActive or var_61_1.diffY and var_61_1.diffY < (var_0_5.virtual.H or 720) then
			local var_61_17 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
			local var_61_18 = (var_61_1.diffActive or var_61_1.diffClosing) and 0 or var_61_17
			local var_61_19 = 110
			local var_61_20 = 16
			local var_61_21 = var_61_18 - (var_61_1.diffY or var_61_17)

			var_61_1.diffV = (var_61_1.diffV or 0) + var_61_21 * var_61_19 * arg_61_0
			var_61_1.diffV = var_61_1.diffV * math.exp(-var_61_20 * arg_61_0)
			var_61_1.diffY = (var_61_1.diffY or var_61_17) + var_61_1.diffV * arg_61_0

			if math.abs(var_61_21) < 0.5 and math.abs(var_61_1.diffV) < 10 then
				var_61_1.diffY = var_61_18
				var_61_1.diffV = 0
			end
		end

		var_61_1.diffAppearProg = var_61_1.diffAppearProg or {
			0,
			0,
			0
		}
		var_61_1.diffTimers = var_61_1.diffTimers or {
			0,
			0,
			0
		}

		local var_61_22 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
		local var_61_23 = (var_61_1.y or 0) <= -var_61_22 * 0.8

		for iter_61_0 = 1, 3 do
			local var_61_24 = (iter_61_0 - 1) * 0.22

			if var_61_1.diffActive and var_61_23 then
				var_61_1.diffTimers[iter_61_0] = math.min(1.5, var_61_1.diffTimers[iter_61_0] + arg_61_0 * 1.6)
			elseif not var_61_1.diffActive then
				local var_61_25 = false

				if iter_61_0 == 3 then
					var_61_25 = true
				elseif iter_61_0 == 2 then
					if var_61_1.diffAppearProg and var_61_1.diffAppearProg[3] <= 0.8 then
						var_61_25 = true
					end
				elseif iter_61_0 == 1 and var_61_1.diffAppearProg and var_61_1.diffAppearProg[2] <= 0.8 then
					var_61_25 = true
				end

				if var_61_25 then
					var_61_1.diffTimers[iter_61_0] = math.max(0, var_61_1.diffTimers[iter_61_0] - arg_61_0 * 3.5)
				end
			end

			local var_61_26 = var_0_79((var_61_1.diffTimers[iter_61_0] - var_61_24) / 0.8, 0, 1.5)

			var_61_1.diffAppearProg[iter_61_0] = var_61_26
		end

		if var_61_1.diffClosing and var_61_1.diffAppearProg and var_61_1.diffAppearProg[1] <= 0.01 then
			var_61_1.targetY = 0
			var_61_1.diffClosing = false
		end

		if var_61_1._dropSfxT ~= nil and not var_61_1._dropSfxPlayed then
			var_61_1._dropSfxT = var_61_1._dropSfxT - arg_61_0

			if var_61_1._dropSfxT <= 0 then
				var_0_32()

				var_61_1._dropSfxPlayed = true
			end
		end

		local var_61_27 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
		local var_61_28 = var_0_79(((var_61_1.y or 0) + var_61_27) / math.max(1, var_61_27), 0, 1)
		local var_61_29 = var_0_79((var_61_27 - (var_61_1.diffY or var_61_27)) / math.max(1, var_61_27), 0, 1)
		local var_61_30 = math.max(var_61_28, var_61_29)
		local var_61_31 = var_61_1.phase == "leave" and 0 or var_61_30

		if var_61_1.back then
			var_61_1.back.alpha = var_0_81(var_61_1.back.alpha or 0, var_61_31, arg_61_0 * 10)
		end

		if var_0_40 and var_61_1.back then
			local var_61_32 = arg_61_1 or -9999
			local var_61_33 = arg_61_2 or -9999
			local var_61_34, var_61_35 = var_0_40:getDimensions()
			local var_61_36 = 60
			local var_61_37 = 60
			local var_61_38 = 0.9
			local var_61_39 = var_0_79(var_61_1.back.alpha or 0, 0, 1)
			local var_61_40 = var_61_1.back.scale or var_61_38
			local var_61_41 = var_61_34 * var_61_40
			local var_61_42 = var_61_35 * var_61_40

			var_61_1.back.rect = {
				x = var_61_36 - var_61_41 / 2,
				y = var_61_37 - var_61_42 / 2,
				w = var_61_41,
				h = var_61_42
			}

			local var_61_43 = var_61_1.back.rect
			local var_61_44 = var_61_32 >= var_61_43.x and var_61_32 <= var_61_43.x + var_61_43.w and var_61_33 >= var_61_43.y and var_61_33 <= var_61_43.y + var_61_43.h

			if var_61_39 > 0.05 and var_61_44 and not var_61_1.back._hovered and var_0_29 then
				if var_0_29:isPlaying() then
					var_0_29:stop()
				end

				var_0_29:play()
			end

			var_61_1.back._hovered = var_61_44

			local var_61_45 = var_61_38

			if var_61_1.back.pressed then
				var_61_45 = 0.85
				var_61_1.back.scale = var_61_1.back.scale + (var_61_45 - var_61_1.back.scale) * math.min(1, arg_61_0 * 20)
			elseif var_61_44 then
				var_61_45 = 1
				var_61_1.back.scale = var_61_1.back.scale + (var_61_45 - var_61_1.back.scale) * math.min(1, arg_61_0 * 12)
			else
				var_61_1.back.scale = var_61_1.back.scale + (var_61_45 - var_61_1.back.scale) * math.min(1, arg_61_0 * 10)
			end

			local var_61_46 = var_0_81(0.82, 1, var_61_39)

			var_61_1.back._drawScale = (var_61_1.back.scale or var_61_38) * var_61_46
		end

		if (var_61_1.pageSlideT or 0) > 0 then
			var_61_1.pageSlideT = math.max(0, (var_61_1.pageSlideT or 0) - arg_61_0)

			if var_61_1.pageSlideT <= 0 then
				var_61_1.pageSlideDir = 0
				var_61_1.pageFrom = var_0_100(var_61_1)
				var_61_1.pageTo = var_0_100(var_61_1)
			end
		end

		var_61_1.pageArrow = var_61_1.pageArrow or {
			scale = 1,
			hovered = false
		}

		local var_61_47 = var_0_98(var_0_5, var_61_1, math.floor((var_61_1.y or 0) + 0.5))
		local var_61_48 = not var_61_1.diffActive and var_0_105(var_0_5, var_61_1, var_61_47) or nil

		var_61_1.pageArrow.rect = var_61_48

		local var_61_49 = arg_61_1 or -9999
		local var_61_50 = arg_61_2 or -9999
		local var_61_51 = false

		if var_61_48 and (var_61_1.pageSlideT or 0) <= 0 then
			var_61_51 = var_61_49 >= var_61_48.x and var_61_49 <= var_61_48.x + var_61_48.w and var_61_50 >= var_61_48.y and var_61_50 <= var_61_48.y + var_61_48.h
		end

		if var_61_51 and not var_61_1.pageArrow.hovered and var_0_29 then
			if var_0_29:isPlaying() then
				var_0_29:stop()
			end

			var_0_29:play()
		end

		var_61_1.pageArrow.hovered = var_61_51

		local var_61_52 = var_61_1.pagePressed and 0.9 or var_61_51 and 1.1 or 1

		var_61_1.pageArrow.scale = var_0_81(var_61_1.pageArrow.scale or 1, var_61_52, arg_61_0 * (var_61_1.pagePressed and 20 or 12))

		local var_61_53 = arg_61_1 or -9999
		local var_61_54 = arg_61_2 or -9999
		local var_61_55 = math.floor((var_61_1.y or 0) + 0.5)
		local var_61_56 = var_0_98(var_0_5, var_61_1, var_61_55)
		local var_61_57 = var_61_1.hoveredIndex
		local var_61_58

		if var_61_56 then
			var_61_1.stageRects = {}

			for iter_61_1 = 1, var_61_56.cols or 3 do
				local var_61_59 = var_0_101(var_61_1, iter_61_1)
				local var_61_60 = var_61_56.x0 + (iter_61_1 - 1) * (var_61_56.cardW * var_61_56.scale + var_61_56.gap)
				local var_61_61 = var_61_56.y0
				local var_61_62 = var_61_56.cardW * var_61_56.scale
				local var_61_63 = var_61_56.cardH * var_61_56.scale
				local var_61_64 = {
					x = var_61_60,
					yBase = var_61_61,
					y = var_61_61,
					w = var_61_62,
					h = var_61_63,
					s = var_61_56.scale,
					stageKey = var_61_59
				}
				local var_61_65, var_61_66 = var_0_102(var_61_59)

				if var_61_65 then
					local var_61_67 = var_61_65:getWidth()
					local var_61_68 = var_61_65:getHeight()
					local var_61_69

					var_61_64.stageArtX, var_61_69 = math.floor(var_61_60 + (var_61_56.cardW * var_61_56.scale - var_61_67 * var_61_56.scale) * 0.5 + 0.5), math.floor(var_61_61 + (var_61_56.cardH * var_61_56.scale - var_61_68 * var_61_56.scale) * 0.5 + 0.5)
					var_61_64.stageArtYBase = var_61_69
					var_61_64.stageArtY = var_61_69
					var_61_64.stageArtData = var_61_66
				end

				var_61_1.stageRects[iter_61_1] = var_61_64

				local var_61_70 = iter_61_1 == 1 and var_0_43 or var_0_44

				if var_61_70 and (var_61_1.pageSlideT or 0) <= 0 then
					local var_61_71 = var_61_57 == iter_61_1 and 2 or 1

					if var_0_95(var_61_70, var_61_53, var_61_54, var_61_60, var_61_61, var_61_56.scale, var_61_71, 0.05) then
						var_61_58 = iter_61_1
					elseif var_61_64.stageArtData and var_61_64.stageArtX and var_61_64.stageArtYBase and var_0_95(var_61_64.stageArtData, var_61_53, var_61_54, var_61_64.stageArtX, var_61_64.stageArtYBase, var_61_56.scale, var_61_71, 0.05) then
						var_61_58 = iter_61_1
					end
				elseif (var_61_1.pageSlideT or 0) <= 0 and var_61_60 <= var_61_53 and var_61_53 <= var_61_60 + var_61_62 and var_61_61 <= var_61_54 and var_61_54 <= var_61_61 + var_61_63 then
					var_61_58 = iter_61_1
				end
			end
		else
			var_61_1.stageRects = nil
		end

		local var_61_72 = 0.1

		if var_61_58 == nil and var_61_57 ~= nil then
			var_61_1.hoverGraceT = (var_61_1.hoverGraceT or 0) + arg_61_0

			if var_61_72 >= (var_61_1.hoverGraceT or 0) then
				var_61_58 = var_61_57
			end
		else
			var_61_1.hoverGraceT = 0
		end

		var_61_1.hoveredIndex = var_61_58

		if var_61_58 and var_61_58 ~= var_61_57 and var_0_29 then
			if var_0_29:isPlaying() then
				var_0_29:stop()
			end

			var_0_29:play()
		end

		var_61_1.hoverProg = var_61_1.hoverProg or {}
		var_61_1.pressedProg = var_61_1.pressedProg or {}
		var_61_1.clickFeedbacks = var_61_1.clickFeedbacks or {}

		local var_61_73 = var_61_56 and var_61_56.cols or 3

		for iter_61_2 = 1, var_61_73 do
			local var_61_74 = var_61_1.hoveredIndex == iter_61_2 and 1 or 0

			var_61_1.hoverProg[iter_61_2] = var_0_81(var_61_1.hoverProg[iter_61_2] or 0, var_61_74, arg_61_0 * 14)

			if var_61_1.clickFeedbacks[iter_61_2] and var_61_1.clickFeedbacks[iter_61_2] > 0 then
				var_61_1.clickFeedbacks[iter_61_2] = var_61_1.clickFeedbacks[iter_61_2] - arg_61_0

				if var_61_1.clickFeedbacks[iter_61_2] < 0 then
					var_61_1.clickFeedbacks[iter_61_2] = 0
				end
			end

			var_61_1.shakeFeedbacks = var_61_1.shakeFeedbacks or {}

			if var_61_1.shakeFeedbacks[iter_61_2] and var_61_1.shakeFeedbacks[iter_61_2] > 0 then
				var_61_1.shakeFeedbacks[iter_61_2] = var_61_1.shakeFeedbacks[iter_61_2] - arg_61_0

				if var_61_1.shakeFeedbacks[iter_61_2] < 0 then
					var_61_1.shakeFeedbacks[iter_61_2] = 0
				end
			end

			local var_61_75 = var_61_1.clickFeedbacks[iter_61_2] and var_61_1.clickFeedbacks[iter_61_2] > 0
			local var_61_76 = (var_61_1.pressedIndex == iter_61_2 or var_61_75) and 1 or 0

			var_61_1.pressedProg[iter_61_2] = var_0_81(var_61_1.pressedProg[iter_61_2] or 0, var_61_76, arg_61_0 * 25)
		end

		var_61_1.unlockedStages = var_61_1.unlockedStages or {
			true,
			false,
			false,
			false,
			false,
			false
		}

		if not var_61_1.prevUnlockedStages then
			var_61_1.prevUnlockedStages = {}

			for iter_61_3, iter_61_4 in pairs(var_61_1.unlockedStages) do
				var_61_1.prevUnlockedStages[iter_61_3] = iter_61_4
			end
		end

		var_61_1.unlockAnims = var_61_1.unlockAnims or {}
		var_61_1.pendingStageUnlockAnims = var_61_1.pendingStageUnlockAnims or {}
		var_61_1.newStages = var_61_1.newStages or {}

		for iter_61_5 = 1, var_61_1.maxStages or 6 do
			local var_61_77 = var_61_1.unlockedStages[iter_61_5] == true
			local var_61_78 = var_61_1.prevUnlockedStages[iter_61_5] == true

			if var_61_77 and not var_61_78 then
				var_61_1.pendingStageUnlockAnims[iter_61_5] = true
				var_61_1.newStages[iter_61_5] = true
			elseif not var_61_77 and var_61_78 then
				var_61_1.unlockAnims[iter_61_5] = nil
				var_61_1.pendingStageUnlockAnims[iter_61_5] = nil
				var_61_1.newStages[iter_61_5] = nil
			end

			var_61_1.prevUnlockedStages[iter_61_5] = var_61_77
		end

		if var_61_56 and (var_61_1.pageSlideT or 0) <= 0 and not var_61_1.diffActive then
			for iter_61_6 = 1, var_61_56.cols or 3 do
				local var_61_79 = var_0_101(var_61_1, iter_61_6)

				if var_61_1.pendingStageUnlockAnims[var_61_79] and var_61_1.unlockedStages[var_61_79] == true then
					var_61_1.unlockAnims[var_61_79] = {
						t = 0,
						active = true,
						duration = 1.6
					}
					var_61_1.pendingStageUnlockAnims[var_61_79] = nil
				end
			end
		end

		for iter_61_7 = 1, var_61_1.maxStages or 6 do
			local var_61_80 = var_61_1.unlockAnims[iter_61_7]

			if var_61_80 and var_61_80.active then
				var_61_80.t = var_61_80.t + arg_61_0

				if var_61_80.t >= var_61_80.duration then
					var_61_80.active = false
					var_61_80.t = var_61_80.duration
				end
			end
		end

		if var_61_1.diffY and var_61_1.diffY < (var_0_5.virtual.H or 720) then
			local var_61_81 = arg_61_1 or -9999
			local var_61_82 = arg_61_2 or -9999
			local var_61_83 = 0
			local var_61_84 = var_0_110(var_0_5, var_61_83)
			local var_61_85

			if var_61_84 then
				var_61_1.diffRects = {}

				for iter_61_8 = 1, 3 do
					local var_61_86 = var_61_84.x0 + (iter_61_8 - 1) * (var_61_84.cardW * var_61_84.scale + var_61_84.gap)
					local var_61_87 = var_61_84.y0

					var_61_1.diffRects[iter_61_8] = {
						x = var_61_86,
						y = var_61_87,
						w = var_61_84.cardW * var_61_84.scale,
						h = var_61_84.cardH * var_61_84.scale,
						s = var_61_84.scale
					}

					local var_61_88 = iter_61_8 == 1 and var_0_50 or iter_61_8 == 2 and var_0_51 or var_0_52

					if var_61_88 and var_0_95(var_61_88, var_61_81, var_61_82, var_61_86, var_61_87, var_61_84.scale, 1, 0.05) then
						var_61_85 = iter_61_8
					end
				end
			else
				var_61_1.diffRects = nil
			end

			var_61_1.diffHoverIdx = var_61_85
			var_61_1.diffHoverProg = var_61_1.diffHoverProg or {
				0,
				0,
				0
			}
			var_61_1.diffPressedProg = var_61_1.diffPressedProg or {
				0,
				0,
				0
			}
			var_61_1.diffClickFeedbacks = var_61_1.diffClickFeedbacks or {
				0,
				0,
				0
			}

			for iter_61_9 = 1, 3 do
				local var_61_89 = var_61_1.diffHoverIdx == iter_61_9 and 1 or 0

				var_61_1.diffHoverProg[iter_61_9] = var_0_81(var_61_1.diffHoverProg[iter_61_9] or 0, var_61_89, arg_61_0 * 14)

				if var_61_1.diffClickFeedbacks[iter_61_9] and var_61_1.diffClickFeedbacks[iter_61_9] > 0 then
					var_61_1.diffClickFeedbacks[iter_61_9] = var_61_1.diffClickFeedbacks[iter_61_9] - arg_61_0
				end

				var_61_1.diffShakeFeedbacks = var_61_1.diffShakeFeedbacks or {}

				if var_61_1.diffShakeFeedbacks[iter_61_9] and var_61_1.diffShakeFeedbacks[iter_61_9] > 0 then
					var_61_1.diffShakeFeedbacks[iter_61_9] = var_61_1.diffShakeFeedbacks[iter_61_9] - arg_61_0

					if var_61_1.diffShakeFeedbacks[iter_61_9] < 0 then
						var_61_1.diffShakeFeedbacks[iter_61_9] = 0
					end
				end

				local var_61_90 = (var_61_1.diffPressedIdx == iter_61_9 or var_61_1.diffClickFeedbacks[iter_61_9] and var_61_1.diffClickFeedbacks[iter_61_9] > 0) and 1 or 0

				var_61_1.diffPressedProg[iter_61_9] = var_0_81(var_61_1.diffPressedProg[iter_61_9] or 0, var_61_90, arg_61_0 * 25)
			end
		end
	end

	if var_0_4.inputCooldown and var_0_4.inputCooldown > 0 then
		var_0_4.inputCooldown = var_0_4.inputCooldown - arg_61_0

		if var_0_4.inputCooldown < 0 then
			var_0_4.inputCooldown = 0
		end
	end

	if var_0_4.collectionShake then
		var_0_4.collectionShake.t = (var_0_4.collectionShake.t or 0) + arg_61_0

		local var_61_91 = var_0_4.collectionShake.dur or 0

		if var_61_91 > 0 and var_61_91 <= (var_0_4.collectionShake.t or 0) then
			var_0_4.collectionShake = nil
		end
	end

	if var_0_4.achievementShake then
		var_0_4.achievementShake.t = (var_0_4.achievementShake.t or 0) + arg_61_0

		local var_61_92 = var_0_4.achievementShake.dur or 0

		if var_61_92 > 0 and var_61_92 <= (var_0_4.achievementShake.t or 0) then
			var_0_4.achievementShake = nil
		end
	end

	if var_0_117 then
		var_0_118 = var_0_118 - arg_61_0

		if var_0_118 <= 0 then
			local var_61_93 = var_0_117

			var_0_117 = nil

			if var_61_93 == "open_exit_modal" then
				var_0_4.openConfirm(var_0_5, "exit", var_0_2.getText("menu_exit_confirm", var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.language or "ko"))

				return nil
			else
				if var_61_93 == "play" then
					if not var_0_4.exitConfirm or not var_0_4.exitConfirm.active then
						var_0_114(var_0_5)
					end

					return nil
				end

				return var_61_93
			end
		end
	end

	if not var_0_69 then
		var_0_116()
	end

	for iter_61_10, iter_61_11 in ipairs(var_0_12) do
		if iter_61_11.sheetAnim then
			iter_61_11.animT = (iter_61_11.animT or 0) + arg_61_0

			local var_61_94 = iter_61_11.frameDur or 0.17

			while var_61_94 <= iter_61_11.animT do
				iter_61_11.animT = iter_61_11.animT - var_61_94

				local var_61_95 = iter_61_11.frameCount or 1

				iter_61_11.frameIndex = (iter_61_11.frameIndex or 1) % var_61_95 + 1
			end
		end

		iter_61_11.x = (iter_61_11.x - iter_61_11.speed * arg_61_0) % iter_61_11.img:getWidth()
	end

	for iter_61_12, iter_61_13 in ipairs(var_0_62) do
		iter_61_13.x = iter_61_13.x + iter_61_13.speedX * arg_61_0
		iter_61_13.y = iter_61_13.y + iter_61_13.speedY * arg_61_0
		iter_61_13.t = iter_61_13.t + arg_61_0

		if iter_61_13.x < 0 then
			iter_61_13.x = 1280
		end

		if iter_61_13.x > 1280 then
			iter_61_13.x = 0
		end

		if iter_61_13.y < 0 then
			iter_61_13.y = 720
		end

		if iter_61_13.y > 720 then
			iter_61_13.y = 0
		end
	end

	var_0_85(var_0_115, arg_61_0)

	local var_61_96 = var_0_4.stageSelect

	if var_0_94(var_61_96) then
		local var_61_97 = var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or {}

		var_0_86(var_61_97)
		var_0_92(var_0_84, arg_61_0)
	end

	local var_61_98 = var_0_4.exitConfirm

	if var_61_98.active then
		local var_61_99 = var_0_5 and var_0_5.restartConfirm or {}
		local var_61_100 = var_61_99.spring or {}
		local var_61_101 = var_61_100.k or 90
		local var_61_102 = var_61_100.damping or 12
		local var_61_103 = var_61_100.maxVel or 2000
		local var_61_104 = var_61_98.targetY

		if var_61_98.leaving then
			var_61_104 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
		end

		local var_61_105 = (var_61_104 - var_61_98.y) * var_61_101 - var_61_102 * var_61_98.v

		var_61_98.v = var_61_98.v + var_61_105 * arg_61_0

		if var_61_103 < var_61_98.v then
			var_61_98.v = var_61_103
		elseif var_61_98.v < -var_61_103 then
			var_61_98.v = -var_61_103
		end

		var_61_98.y = var_61_98.y + var_61_98.v * arg_61_0

		if var_61_98.leaving then
			local var_61_106 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720

			if var_61_98.y >= var_61_106 - 1 then
				var_61_98.active = false
				var_61_98.leaving = false
			end
		elseif math.abs(var_61_98.v) < 0.02 and math.abs(var_61_104 - var_61_98.y) < 0.5 then
			var_61_98.y = var_61_104
			var_61_98.v = 0
		end

		local var_61_107 = var_61_99.hoverUnderline

		if var_61_107 and var_61_107.enabled ~= false and not var_61_98.leaving then
			var_61_98.ulYesProg = var_61_98.ulYesProg or 0
			var_61_98.ulNoProg = var_61_98.ulNoProg or 0

			local var_61_108 = arg_61_1 or 0
			local var_61_109 = arg_61_2 or 0

			local function var_61_110(arg_62_0)
				return arg_62_0 and var_61_108 >= arg_62_0.x and var_61_108 <= arg_62_0.x + arg_62_0.w and var_61_109 >= arg_62_0.y and var_61_109 <= arg_62_0.y + arg_62_0.h
			end

			local var_61_111 = var_61_110(var_61_98.rectYes)
			local var_61_112 = var_61_110(var_61_98.rectNo)
			local var_61_113 = math.max(var_61_107.drawDurSec or 0.15, 0.001)
			local var_61_114 = math.max(var_61_107.retractDurSec or 0.1, 0.001)
			local var_61_115 = arg_61_0 / var_61_113
			local var_61_116 = arg_61_0 / var_61_114

			if var_61_111 then
				var_61_98.ulYesProg = var_61_98.ulYesProg + var_61_115
			else
				var_61_98.ulYesProg = var_61_98.ulYesProg - var_61_116
			end

			if var_61_112 then
				var_61_98.ulNoProg = var_61_98.ulNoProg + var_61_115
			else
				var_61_98.ulNoProg = var_61_98.ulNoProg - var_61_116
			end

			if var_61_98.ulYesProg < 0 then
				var_61_98.ulYesProg = 0
			elseif var_61_98.ulYesProg > 1 then
				var_61_98.ulYesProg = 1
			end

			if var_61_98.ulNoProg < 0 then
				var_61_98.ulNoProg = 0
			elseif var_61_98.ulNoProg > 1 then
				var_61_98.ulNoProg = 1
			end
		end
	end

	local var_61_117 = (tonumber(var_0_4._menuFadeAlpha or 1) or 1) > 0.05 and (not var_0_4.stageSelect or not var_0_4.stageSelect.active) and (not var_0_4.exitConfirm or not var_0_4.exitConfirm.active)

	if var_61_117 and var_0_4.buttons and (var_0_24 or var_0_25 or var_0_26 or var_0_27) then
		local var_61_118 = arg_61_1 or -9999
		local var_61_119 = arg_61_2 or -9999
		local var_61_120 = var_0_4.inputCooldown == 0 and var_0_74(var_0_4.buttons, var_61_118, var_61_119) or nil
		local var_61_121

		for iter_61_14, iter_61_15 in ipairs(var_0_4.buttons) do
			iter_61_15.scale = iter_61_15.scale or 1

			local var_61_122 = var_61_120 == iter_61_14
			local var_61_123 = 1

			if iter_61_15.pressed and var_0_4.inputCooldown == 0 then
				local var_61_124 = 0.9130434782608696

				iter_61_15.scale = iter_61_15.scale + (var_61_124 - iter_61_15.scale) * math.min(1, arg_61_0 * 20)
			elseif var_61_122 then
				local var_61_125 = 1.1304347826086958

				iter_61_15.scale = iter_61_15.scale + (var_61_125 - iter_61_15.scale) * math.min(1, arg_61_0 * 12)
			else
				local var_61_126 = 1

				iter_61_15.scale = iter_61_15.scale + (var_61_126 - iter_61_15.scale) * math.min(1, arg_61_0 * 10)
			end

			if var_0_4.inputCooldown > 0 then
				iter_61_15.pressed = false
			end

			if var_61_122 then
				var_61_121 = iter_61_15.id or iter_61_14
			end
		end

		if var_61_121 ~= var_0_4._lastMenuHoverId then
			if var_61_121 and var_0_29 then
				if var_0_29:isPlaying() then
					var_0_29:stop()
				end

				var_0_29:play()
			end

			var_0_4._lastMenuHoverId = var_61_121
		end
	else
		var_0_4._lastMenuHoverId = nil
	end

	local function var_61_127()
		if var_0_29 then
			if var_0_29:isPlaying() then
				var_0_29:stop()
			end

			var_0_29:play()
		end
	end

	var_0_4.upgradeState = var_0_4.upgradeState or {
		scale = 1
	}
	var_0_4.collectionState = var_0_4.collectionState or {
		scale = 1
	}
	var_0_4.achievementState = var_0_4.achievementState or {
		scale = 1
	}
	var_0_4.discordState = var_0_4.discordState or {
		scale = 1
	}

	if var_61_117 then
		local var_61_128 = arg_61_1 or -9999
		local var_61_129 = arg_61_2 or -9999
		local var_61_130 = var_0_4.upgradeRect and var_61_128 >= var_0_4.upgradeRect.x and var_61_128 <= var_0_4.upgradeRect.x + var_0_4.upgradeRect.w and var_61_129 >= var_0_4.upgradeRect.y and var_61_129 <= var_0_4.upgradeRect.y + var_0_4.upgradeRect.h
		local var_61_131 = var_0_4.collectionRect and var_61_128 >= var_0_4.collectionRect.x and var_61_128 <= var_0_4.collectionRect.x + var_0_4.collectionRect.w and var_61_129 >= var_0_4.collectionRect.y and var_61_129 <= var_0_4.collectionRect.y + var_0_4.collectionRect.h
		local var_61_132 = var_0_4.achievementRect and var_61_128 >= var_0_4.achievementRect.x and var_61_128 <= var_0_4.achievementRect.x + var_0_4.achievementRect.w and var_61_129 >= var_0_4.achievementRect.y and var_61_129 <= var_0_4.achievementRect.y + var_0_4.achievementRect.h
		local var_61_133 = var_0_4.discordRect and var_61_128 >= var_0_4.discordRect.x and var_61_128 <= var_0_4.discordRect.x + var_0_4.discordRect.w and var_61_129 >= var_0_4.discordRect.y and var_61_129 <= var_0_4.discordRect.y + var_0_4.discordRect.h

		if var_61_130 and not var_0_4._upgradeHovering then
			var_61_127()
		end

		if var_61_131 and not var_0_4._collectionHovering then
			var_61_127()
		end

		if var_61_132 and not var_0_4._achievementHovering then
			var_61_127()
		end

		if var_61_133 and not var_0_4._discordHovering then
			var_61_127()
		end

		var_0_4._upgradeHovering = var_61_130
		var_0_4._collectionHovering = var_61_131
		var_0_4._achievementHovering = var_61_132
		var_0_4._discordHovering = var_61_133
		var_0_4.upgradeState = var_0_78(var_0_4.upgradeState, var_0_4.upgradeRect, arg_61_0, var_61_128, var_61_129, var_0_4.inputCooldown)
		var_0_4.collectionState = var_0_78(var_0_4.collectionState, var_0_4.collectionRect, arg_61_0, var_61_128, var_61_129, var_0_4.inputCooldown)
		var_0_4.achievementState = var_0_78(var_0_4.achievementState, var_0_4.achievementRect, arg_61_0, var_61_128, var_61_129, var_0_4.inputCooldown)
		var_0_4.discordState = var_0_78(var_0_4.discordState, var_0_4.discordRect, arg_61_0, var_61_128, var_61_129, var_0_4.inputCooldown)
	else
		var_0_4._upgradeHovering = nil
		var_0_4._collectionHovering = nil
		var_0_4._achievementHovering = nil
		var_0_4._discordHovering = nil
	end

	var_0_4._collectionHintAlpha = var_0_4._collectionHintAlpha or 0

	local var_61_134 = var_61_117 and var_0_4.collectionLocked and var_0_4._collectionHovering and 1 or 0

	var_0_4._collectionHintAlpha = var_0_4._collectionHintAlpha + (var_61_134 - var_0_4._collectionHintAlpha) * math.min(1, arg_61_0 * 14)
	var_0_4._achievementHintAlpha = var_0_4._achievementHintAlpha or 0

	local var_61_135 = var_61_117 and var_0_4.achievementLocked and var_0_4._achievementHovering and 1 or 0

	var_0_4._achievementHintAlpha = var_0_4._achievementHintAlpha + (var_61_135 - var_0_4._achievementHintAlpha) * math.min(1, arg_61_0 * 14)
end

local function var_0_122(arg_64_0, arg_64_1, arg_64_2, arg_64_3, arg_64_4, arg_64_5, arg_64_6, arg_64_7, arg_64_8)
	local var_64_0 = (arg_64_7 or 0) * arg_64_3

	if var_64_0 < 0.02 or not arg_64_5 then
		return
	end

	local var_64_1 = arg_64_6 or {}
	local var_64_2 = var_0_2.getText(arg_64_8, arg_64_4)

	if not var_64_2 or var_64_2 == arg_64_8 then
		var_64_2 = var_0_2.getText("menu_full_version_locked_hint", arg_64_4)
	end

	local var_64_3 = var_0_8 or var_0_7 or love.graphics.getFont()

	love.graphics.setFont(var_64_3)

	local var_64_4 = tonumber(var_64_1.lockedHintScale) or 0.95
	local var_64_5 = tonumber(var_64_1.lockedHintPadPx) or 6
	local var_64_6 = tonumber(var_64_1.lockedHintTextOffsetY) or -2
	local var_64_7 = var_64_3:getWidth(var_64_2) * var_64_4
	local var_64_8 = var_64_3:getHeight() * var_64_4
	local var_64_9 = math.ceil(var_64_7 + var_64_5 * 2)
	local var_64_10 = math.ceil(var_64_8 + var_64_5 * 2)
	local var_64_11 = tonumber(var_64_1.lockedHintGapPx) or 8
	local var_64_12 = arg_64_5
	local var_64_13 = math.floor(var_64_12.x + var_64_12.w / 2 - var_64_9 / 2)
	local var_64_14 = math.floor(var_64_12.y - var_64_11 - var_64_10)

	if var_64_13 < 6 then
		var_64_13 = 6
	end

	if var_64_13 + var_64_9 > arg_64_1 - 6 then
		var_64_13 = arg_64_1 - 6 - var_64_9
	end

	if var_64_14 < 6 then
		var_64_14 = 6
	end

	local var_64_15 = 0.92 * var_64_0
	local var_64_16 = {
		0.95,
		0.9,
		0.78,
		var_64_0
	}
	local var_64_17 = {
		0.06,
		0.05,
		0.08,
		var_64_15
	}
	local var_64_18 = arg_64_0 and arg_64_0.tooltip

	if var_64_18 and var_64_18.drawPixelRoundedRect then
		var_64_18:drawPixelRoundedRect(var_64_13, var_64_14, var_64_9, var_64_10, var_64_17, var_64_17)
	else
		love.graphics.setColor(var_64_17)
		love.graphics.rectangle("fill", var_64_13, var_64_14, var_64_9, var_64_10)
	end

	love.graphics.setColor(var_64_16)

	local var_64_19 = math.floor(var_64_13 + (var_64_9 - var_64_7) * 0.5 + 0.5)
	local var_64_20 = math.floor(var_64_14 + var_64_5 + var_64_6 + 0.5)

	love.graphics.print(var_64_2, var_64_19, var_64_20, 0, var_64_4, var_64_4)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_123(arg_65_0)
	return var_0_2.getText("menu_full_version_locked_hint", arg_65_0)
end

local function var_0_124(arg_66_0, arg_66_1, arg_66_2, arg_66_3)
	if not arg_66_0 or not arg_66_1 or not arg_66_2 or not (arg_66_2 > 0.02) then
		return
	end

	local var_66_0 = arg_66_0.menuSettings and arg_66_0.menuSettings.language or "ko"
	local var_66_1
	local var_66_2 = _G.isDemoContentLocked and _G.isDemoContentLocked(arg_66_3, 1) and "menu_full_version_locked_hint" or arg_66_3 == 3 and "menu_stage_3_locked_hint" or arg_66_3 == 2 and "menu_stage_2_locked_hint" or "menu_stage_locked_hint"
	local var_66_3 = var_0_2.getText(var_66_2, var_66_0)
	local var_66_4 = love.graphics.getFont()
	local var_66_5 = var_0_7 or var_66_4

	love.graphics.setFont(var_66_5)

	local var_66_6 = arg_66_0.virtual and arg_66_0.virtual.W or 1280
	local var_66_7 = 0.9
	local var_66_8 = 7
	local var_66_9 = var_66_5:getWidth(var_66_3) * var_66_7
	local var_66_10 = var_66_5:getHeight() * var_66_7
	local var_66_11 = math.ceil(var_66_9 + var_66_8 * 2)
	local var_66_12 = math.ceil(var_66_10 + var_66_8 * 2)
	local var_66_13 = math.floor(arg_66_1.x + arg_66_1.w * 0.5 - var_66_11 * 0.5 + 0.5)
	local var_66_14 = math.floor(arg_66_1.y + arg_66_1.h + 10 + 0.5)

	if var_66_13 < 8 then
		var_66_13 = 8
	end

	if var_66_13 + var_66_11 > var_66_6 - 8 then
		var_66_13 = var_66_6 - 8 - var_66_11
	end

	local var_66_15 = arg_66_0.virtual and arg_66_0.virtual.H or 720

	if var_66_14 + var_66_12 > var_66_15 - 8 then
		var_66_14 = math.floor(arg_66_1.y - var_66_12 - 10 + 0.5)
	end

	if var_66_14 < 8 then
		var_66_14 = 8
	end

	local var_66_16 = math.min(1, arg_66_2)
	local var_66_17 = {
		0.06,
		0.05,
		0.08,
		0.92 * var_66_16
	}
	local var_66_18 = {
		0.95,
		0.9,
		0.78,
		var_66_16
	}
	local var_66_19 = arg_66_0.tooltip

	if var_66_19 and var_66_19.drawPixelRoundedRect then
		var_66_19:drawPixelRoundedRect(var_66_13, var_66_14, var_66_11, var_66_12, var_66_17, var_66_17)
	else
		love.graphics.setColor(var_66_17)
		love.graphics.rectangle("fill", var_66_13, var_66_14, var_66_11, var_66_12)
	end

	love.graphics.setColor(var_66_18)
	love.graphics.print(var_66_3, math.floor(var_66_13 + var_66_8 + 0.5), math.floor(var_66_14 + var_66_8 - 1 + 0.5), 0, var_66_7, var_66_7)
	love.graphics.setFont(var_66_4)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_125()
	local var_67_0 = var_0_4.stageSelect

	if not var_67_0 then
		return
	end

	if var_67_0.unlockedStages == nil then
		var_67_0.unlockedStages = {
			true,
			false,
			false,
			false,
			false,
			false
		}
	end

	local var_67_1 = var_67_0.clearedDifficulties or {}

	var_67_0.unlockedStages[1] = true
	var_67_0.unlockedStages[2] = var_67_1[1] and var_67_1[1][2] == true
	var_67_0.unlockedStages[3] = var_67_1[2] and var_67_1[2][2] == true
	var_67_0.unlockedStages[4] = var_67_1[3] and var_67_1[3][2] == true or false
	var_67_0.unlockedStages[5] = var_67_1[4] and var_67_1[4][2] == true
	var_67_0.unlockedStages[6] = var_67_1[5] and var_67_1[5][2] == true
end

function var_0_99(arg_68_0)
	local var_68_0 = var_0_4.stageSelect

	if not var_68_0 then
		return true
	end

	if _G.isDemoContentLocked and _G.isDemoContentLocked(arg_68_0, 1) then
		return false
	end

	var_0_125()

	if arg_68_0 == 1 then
		return true
	end

	return var_68_0.unlockedStages[arg_68_0] == true
end

local function var_0_126(arg_69_0, arg_69_1)
	local var_69_0 = var_0_4.stageSelect

	if not var_69_0 then
		return true
	end

	if _G.isDemoContentLocked and _G.isDemoContentLocked(arg_69_0, arg_69_1) then
		return false
	end

	if arg_69_1 == 1 then
		return true
	end

	if var_69_0.unlockedDifficulties == nil then
		var_69_0.unlockedDifficulties = {
			{
				true,
				false,
				false
			},
			{
				true,
				false,
				false
			},
			{
				true,
				false,
				false
			}
		}
	end

	local var_69_1 = arg_69_0 or 1

	if not var_69_0.unlockedDifficulties[var_69_1] then
		var_69_0.unlockedDifficulties[var_69_1] = {
			true,
			false,
			false
		}
	end

	local var_69_2 = var_69_0.clearedDifficulties
	local var_69_3 = var_69_2 and var_69_2[var_69_1] or {}

	var_69_0.unlockedDifficulties[var_69_1][1] = true
	var_69_0.unlockedDifficulties[var_69_1][2] = var_69_3[1] == true
	var_69_0.unlockedDifficulties[var_69_1][3] = var_69_3[1] == true and var_69_3[2] == true

	return var_69_0.unlockedDifficulties[var_69_1][arg_69_1] == true
end

local function var_0_127(arg_70_0)
	local var_70_0 = var_0_4.stageSelect

	if not var_70_0 then
		return
	end

	local var_70_1 = math.max(1, math.floor(tonumber(arg_70_0 or 1) or 1))

	var_70_0.unlockedDifficulties = var_70_0.unlockedDifficulties or {
		{
			true,
			false,
			false
		},
		{
			true,
			false,
			false
		},
		{
			true,
			false,
			false
		}
	}

	local var_70_2 = var_70_0.clearedDifficulties and var_70_0.clearedDifficulties[var_70_1] or {}

	var_70_0.unlockedDifficulties[var_70_1] = var_70_0.unlockedDifficulties[var_70_1] or {}
	var_70_0.unlockedDifficulties[var_70_1][1] = true
	var_70_0.unlockedDifficulties[var_70_1][2] = var_70_2[1] == true
	var_70_0.unlockedDifficulties[var_70_1][3] = var_70_2[1] == true and var_70_2[2] == true
end

local function var_0_128(arg_71_0, arg_71_1)
	local var_71_0 = var_0_4.stageSelect

	if not var_71_0 then
		return
	end

	local var_71_1 = math.max(1, math.floor(tonumber(arg_71_0 or 1) or 1))
	local var_71_2 = math.max(1, math.floor(tonumber(arg_71_1 or 1) or 1))

	if var_71_2 >= 3 then
		return
	end

	var_71_0.unlockedDifficulties = var_71_0.unlockedDifficulties or {
		{
			true,
			false,
			false
		},
		{
			true,
			false,
			false
		},
		{
			true,
			false,
			false
		}
	}
	var_71_0.unlockedDifficulties[var_71_1] = var_71_0.unlockedDifficulties[var_71_1] or {
		true,
		false,
		false
	}
	var_71_0.unlockedDifficulties[var_71_1][var_71_2 + 1] = true
end

local function var_0_129()
	local var_72_0 = var_0_4.stageSelect

	if not var_72_0 then
		return nil
	end

	var_72_0.clearedDifficulties = var_72_0.clearedDifficulties or {}

	for iter_72_0 = 1, 3 do
		var_72_0.clearedDifficulties[iter_72_0] = var_72_0.clearedDifficulties[iter_72_0] or {}
	end

	return var_72_0.clearedDifficulties
end

function var_0_4.markDifficultyCleared(arg_73_0, arg_73_1)
	local var_73_0 = var_0_129()

	if not var_73_0 then
		return false
	end

	local var_73_1 = math.max(1, math.floor(tonumber(arg_73_0 or 1) or 1))
	local var_73_2 = math.max(1, math.floor(tonumber(arg_73_1 or 1) or 1))

	var_73_0[var_73_1] = var_73_0[var_73_1] or {}

	var_0_128(var_73_1, var_73_2)

	if var_73_0[var_73_1][var_73_2] == true then
		return false
	end

	var_73_0[var_73_1][var_73_2] = true

	local var_73_3 = var_0_4.stageSelect

	if var_73_3 then
		var_73_3.pendingClearMedalReveals = var_73_3.pendingClearMedalReveals or {}
		var_73_3.pendingClearMedalReveals[var_73_1] = var_73_3.pendingClearMedalReveals[var_73_1] or {}
		var_73_3.pendingClearMedalReveals[var_73_1][var_73_2] = true

		if var_73_2 < 3 then
			var_73_3.pendingDifficultyUnlockAnims = var_73_3.pendingDifficultyUnlockAnims or {}
			var_73_3.pendingDifficultyUnlockAnims[var_73_1] = var_73_3.pendingDifficultyUnlockAnims[var_73_1] or {}
			var_73_3.pendingDifficultyUnlockAnims[var_73_1][var_73_2 + 1] = true
		end

		var_0_125()
	end

	return true
end

function var_0_4.toggleDifficultyCleared(arg_74_0, arg_74_1)
	local var_74_0 = var_0_129()

	if not var_74_0 then
		return false
	end

	local var_74_1 = math.max(1, math.floor(tonumber(arg_74_0 or 1) or 1))
	local var_74_2 = math.max(1, math.floor(tonumber(arg_74_1 or 1) or 1))

	var_74_0[var_74_1] = var_74_0[var_74_1] or {}
	var_74_0[var_74_1][var_74_2] = var_74_0[var_74_1][var_74_2] ~= true

	var_0_127(var_74_1)

	if var_74_0[var_74_1][var_74_2] == true and var_0_4.stageSelect then
		var_0_4.stageSelect.pendingClearMedalReveals = var_0_4.stageSelect.pendingClearMedalReveals or {}
		var_0_4.stageSelect.pendingClearMedalReveals[var_74_1] = var_0_4.stageSelect.pendingClearMedalReveals[var_74_1] or {}
		var_0_4.stageSelect.pendingClearMedalReveals[var_74_1][var_74_2] = true

		if var_74_2 < 3 then
			var_0_4.stageSelect.pendingDifficultyUnlockAnims = var_0_4.stageSelect.pendingDifficultyUnlockAnims or {}
			var_0_4.stageSelect.pendingDifficultyUnlockAnims[var_74_1] = var_0_4.stageSelect.pendingDifficultyUnlockAnims[var_74_1] or {}
			var_0_4.stageSelect.pendingDifficultyUnlockAnims[var_74_1][var_74_2 + 1] = true
		end
	end

	var_0_125()

	return var_74_0[var_74_1][var_74_2] == true
end

function var_0_4.isDifficultyCleared(arg_75_0, arg_75_1)
	local var_75_0 = var_0_129()
	local var_75_1 = math.max(1, math.floor(tonumber(arg_75_0 or 1) or 1))
	local var_75_2 = math.max(1, math.floor(tonumber(arg_75_1 or 1) or 1))

	return var_75_0 and var_75_0[var_75_1] and var_75_0[var_75_1][var_75_2] == true
end

function var_0_4.isStageCleared(arg_76_0)
	local var_76_0 = var_0_129()
	local var_76_1 = math.max(1, math.floor(tonumber(arg_76_0 or 1) or 1))

	if not var_76_0 or not var_76_0[var_76_1] then
		return false
	end

	for iter_76_0 = 1, 3 do
		if var_76_0[var_76_1][iter_76_0] == true then
			return true
		end
	end

	return false
end

local function var_0_130(arg_77_0, arg_77_1)
	return var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(arg_77_0, arg_77_1)
end

local function var_0_131(arg_78_0)
	if arg_78_0 == 2 then
		return var_0_54 or var_0_53
	end

	if arg_78_0 == 3 then
		return var_0_55 or var_0_53
	end

	return var_0_53
end

local function var_0_132(arg_79_0, arg_79_1)
	local var_79_0 = var_0_4.stageSelect

	if not var_79_0 then
		return nil
	end

	var_79_0.clearMedalRevealAnims = var_79_0.clearMedalRevealAnims or {}
	var_79_0.pendingClearMedalReveals = var_79_0.pendingClearMedalReveals or {}
	var_79_0.clearMedalRevealAnims[arg_79_0] = var_79_0.clearMedalRevealAnims[arg_79_0] or {}

	if var_79_0.pendingClearMedalReveals[arg_79_0] and var_79_0.pendingClearMedalReveals[arg_79_0][arg_79_1] then
		var_79_0.pendingClearMedalReveals[arg_79_0][arg_79_1] = nil
		var_79_0.clearMedalRevealAnims[arg_79_0][arg_79_1] = {
			dur = 1.22,
			t0 = (love.timer and love.timer.getTime and love.timer.getTime() or 0) + 0.28
		}
	end

	local var_79_1 = var_79_0.clearMedalRevealAnims[arg_79_0] and var_79_0.clearMedalRevealAnims[arg_79_0][arg_79_1]

	if not var_79_1 then
		return nil
	end

	local var_79_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_79_3 = var_79_2 - (var_79_1.t0 or var_79_2)
	local var_79_4 = var_79_1.dur or 0.82

	if var_79_3 < 0 then
		var_79_1.t = 0
		var_79_1.p = 0

		return var_79_1
	end

	if var_79_4 <= var_79_3 then
		var_79_0.clearMedalRevealAnims[arg_79_0][arg_79_1] = nil

		return nil
	end

	var_79_1.t = var_79_3
	var_79_1.p = math.max(0, math.min(1, var_79_3 / math.max(0.001, var_79_4)))

	return var_79_1
end

local function var_0_133(arg_80_0, arg_80_1)
	local var_80_0 = var_0_4.stageSelect

	return var_80_0 and var_80_0.pendingClearMedalReveals and var_80_0.pendingClearMedalReveals[arg_80_0] and var_80_0.pendingClearMedalReveals[arg_80_0][arg_80_1] == true
end

local function var_0_134(arg_81_0, arg_81_1)
	local var_81_0 = var_0_4.stageSelect

	return var_81_0 and var_81_0.pendingDifficultyUnlockAnims and var_81_0.pendingDifficultyUnlockAnims[arg_81_0] and var_81_0.pendingDifficultyUnlockAnims[arg_81_0][arg_81_1] == true
end

local function var_0_135(arg_82_0, arg_82_1)
	local var_82_0 = var_0_4.stageSelect

	if not var_82_0 then
		return nil
	end

	var_82_0.difficultyUnlockAnims = var_82_0.difficultyUnlockAnims or {}
	var_82_0.pendingDifficultyUnlockAnims = var_82_0.pendingDifficultyUnlockAnims or {}
	var_82_0.difficultyUnlockAnims[arg_82_0] = var_82_0.difficultyUnlockAnims[arg_82_0] or {}

	if var_82_0.pendingDifficultyUnlockAnims[arg_82_0] and var_82_0.pendingDifficultyUnlockAnims[arg_82_0][arg_82_1] then
		var_82_0.pendingDifficultyUnlockAnims[arg_82_0][arg_82_1] = nil
		var_82_0.difficultyUnlockAnims[arg_82_0][arg_82_1] = {
			dur = 0.92,
			t0 = (love.timer and love.timer.getTime and love.timer.getTime() or 0) + 0.1
		}
	end

	local var_82_1 = var_82_0.difficultyUnlockAnims[arg_82_0] and var_82_0.difficultyUnlockAnims[arg_82_0][arg_82_1]

	if not var_82_1 then
		return nil
	end

	local var_82_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_82_3 = var_82_2 - (var_82_1.t0 or var_82_2)
	local var_82_4 = var_82_1.dur or 0.68

	if var_82_3 < 0 then
		var_82_1.t = 0
		var_82_1.p = 0

		return var_82_1
	end

	if var_82_4 <= var_82_3 then
		var_82_0.difficultyUnlockAnims[arg_82_0][arg_82_1] = nil

		return nil
	end

	var_82_1.t = var_82_3
	var_82_1.p = math.max(0, math.min(1, var_82_3 / math.max(0.001, var_82_4)))

	return var_82_1
end

local var_0_136

local function var_0_137()
	if not var_0_136 then
		local var_83_0 = {
			{
				-2,
				6,
				0,
				0,
				1,
				1,
				1,
				0
			},
			{
				2,
				6,
				0,
				0,
				1,
				1,
				1,
				0
			},
			{
				-4.1,
				14,
				0,
				0,
				1,
				1,
				1,
				0.7
			},
			{
				4.1,
				14,
				0,
				0,
				1,
				1,
				1,
				0.7
			},
			{
				-7.1,
				25,
				0,
				0,
				1,
				1,
				1,
				0.2
			},
			{
				7.1,
				25,
				0,
				0,
				1,
				1,
				1,
				0.2
			},
			{
				-10,
				36,
				0,
				0,
				1,
				1,
				1,
				0
			},
			{
				10,
				36,
				0,
				0,
				1,
				1,
				1,
				0
			}
		}

		var_0_136 = love.graphics.newMesh(var_83_0, "strip", "static")
	end

	return var_0_136
end

local function var_0_138(arg_84_0, arg_84_1, arg_84_2, arg_84_3, arg_84_4, arg_84_5)
	if not difficultyLockAnimImg or not difficultyLockAnimQuads or not arg_84_5 then
		return
	end

	local var_84_0 = arg_84_5.p or 0
	local var_84_1 = math.max(1, math.min(4, math.floor(var_84_0 * 4) + 1))
	local var_84_2 = difficultyLockAnimQuads[var_84_1]

	if not var_84_2 then
		return
	end

	local var_84_3 = 1 - (1 - var_84_0) * (1 - var_84_0)
	local var_84_4 = arg_84_1 - math.floor(12 * var_84_3 + 0.5)
	local var_84_5 = var_84_0 > 0.64 and math.max(0, 1 - (var_84_0 - 0.64) / 0.36) or 1
	local var_84_6 = var_84_0 < 0.15 and 1 or math.max(0, 1 - (var_84_0 - 0.15) / 0.5)
	local var_84_7 = (arg_84_4 or 1) * var_84_5
	local var_84_8 = math.min(1, var_84_0 / 0.95)
	local var_84_9 = (arg_84_4 or 1) * math.max(0, 1 - var_84_8 * var_84_8) * 1.25

	if var_84_9 > 0.01 then
		local var_84_10 = (math.abs(arg_84_2) + math.abs(arg_84_3)) * 0.5
		local var_84_11 = var_0_137()

		if var_84_11 then
			local var_84_12, var_84_13 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add", "alphamultiply")
			love.graphics.setColor(1, 1, 1, var_84_9 * 0.75)

			local var_84_14 = 7
			local var_84_15 = var_84_8 * 1.2

			for iter_84_0 = 1, var_84_14 do
				local var_84_16 = var_84_15 + (iter_84_0 - 1) * (2 * math.pi / var_84_14)

				love.graphics.draw(var_84_11, arg_84_0, var_84_4, var_84_16, var_84_10, var_84_10)
			end

			love.graphics.setBlendMode(var_84_12, var_84_13)
		end
	end

	love.graphics.setColor(1, 1, 1, var_84_7)

	local var_84_17 = math.sin(math.min(1, var_84_0 / 0.26) * math.pi)
	local var_84_18 = math.sin(var_84_0 * math.pi * 10) * math.max(0, 1 - var_84_0 * 1.8)
	local var_84_19 = 2.2 * (1 + 0.18 * var_84_17 + 0.035 * var_84_18)
	local var_84_20 = math.floor(2 * var_84_17 + 0.5)

	love.graphics.draw(difficultyLockAnimImg, var_84_2, arg_84_0, var_84_4 + var_84_20, 0, arg_84_2 * var_84_19, arg_84_3 * var_84_19, 8, 8)

	if var_0_58 and var_84_6 > 0.01 then
		var_0_58:send("mixFactor", 1)
		love.graphics.setShader(var_0_58)
		love.graphics.setBlendMode("add", "alphamultiply")
		love.graphics.setColor(1, 1, 1, (arg_84_4 or 1) * var_84_6)
		love.graphics.draw(difficultyLockAnimImg, var_84_2, arg_84_0, var_84_4 + var_84_20, 0, arg_84_2 * var_84_19, arg_84_3 * var_84_19, 8, 8)
		love.graphics.setBlendMode("alpha")
		love.graphics.setShader()
	end
end

local function var_0_139(arg_85_0, arg_85_1, arg_85_2, arg_85_3, arg_85_4)
	local var_85_0 = var_0_131(arg_85_0)

	if not var_85_0 then
		return
	end

	local var_85_1, var_85_2 = var_85_0:getDimensions()

	arg_85_4 = arg_85_4 or {}

	local var_85_3 = 1.8 * (arg_85_4.scaleMul or 1)
	local var_85_4 = (arg_85_3 or 1) * (arg_85_4.alphaMul or 1)

	if arg_85_4.whiteMix and arg_85_4.whiteMix > 0 and var_0_58 then
		var_0_58:send("mixFactor", math.max(0, math.min(1, arg_85_4.whiteMix)))
		love.graphics.setShader(var_0_58)
	end

	love.graphics.setColor(1, 1, 1, var_85_4)
	love.graphics.draw(var_85_0, arg_85_1, arg_85_2, 0, var_85_3, var_85_3, var_85_1 * 0.5, var_85_2 * 0.5)

	if arg_85_4.whiteMix and arg_85_4.whiteMix > 0 and var_0_58 then
		love.graphics.setShader()
	end

	if arg_85_4.flashAlpha and arg_85_4.flashAlpha > 0 and var_0_58 then
		local var_85_5, var_85_6 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")
		var_0_58:send("mixFactor", 1)
		love.graphics.setShader(var_0_58)
		love.graphics.setColor(1, 1, 1, arg_85_4.flashAlpha * (arg_85_3 or 1))
		love.graphics.draw(var_85_0, arg_85_1, arg_85_2, 0, var_85_3, var_85_3, var_85_1 * 0.5, var_85_2 * 0.5)
		love.graphics.setShader()
		love.graphics.setBlendMode(var_85_5, var_85_6)
	end
end

local function var_0_140(arg_86_0, arg_86_1, arg_86_2, arg_86_3, arg_86_4, arg_86_5, arg_86_6, arg_86_7, arg_86_8, arg_86_9)
	if not var_0_131(arg_86_0) then
		return
	end

	arg_86_9 = arg_86_9 or {}

	love.graphics.push()
	love.graphics.translate(arg_86_1, arg_86_2)
	love.graphics.rotate(arg_86_3 or 0)
	love.graphics.scale(arg_86_4 or 1, arg_86_5 or arg_86_4 or 1)
	var_0_139(arg_86_0, arg_86_6 + (arg_86_9.offsetX or 0), arg_86_7 + (arg_86_9.offsetY or 0), arg_86_8, arg_86_9)
	love.graphics.pop()
end

function var_0_4.toggleDebugUnlockPanel()
	if var_0_4.stageSelect and var_0_4.stageSelect.active then
		var_0_4.stageSelect.showDebugUnlockPanel = not var_0_4.stageSelect.showDebugUnlockPanel
	end
end

local function var_0_141(arg_88_0)
	local var_88_0 = var_0_4.stageSelect

	if not var_88_0 or not var_88_0.active then
		return
	end

	if not arg_88_0 or not arg_88_0.virtual then
		return
	end

	love.graphics.setStencilTest()
	love.graphics.setShader()

	local var_88_1 = arg_88_0.virtual.W
	local var_88_2 = arg_88_0.virtual.H
	local var_88_3 = var_88_0.selectedStage
	local var_88_4 = var_0_79(1 - (var_0_4._menuFadeAlpha or 0), 0, 1)

	if var_88_4 > 0 then
		love.graphics.setColor(0, 0, 0, 0.65 * var_88_4)
		love.graphics.rectangle("fill", 0, 0, var_88_1, var_88_2)
	end

	local var_88_5 = math.floor((var_88_0.y or 0) + 0.5)

	if var_0_40 and var_88_0.back then
		local var_88_6 = var_0_79(var_88_0.back.alpha or 0, 0, 1)

		if var_88_6 > 0.001 then
			local var_88_7 = var_88_0.back._drawScale or var_88_0.back.scale or 0.9
			local var_88_8, var_88_9 = var_0_40:getDimensions()
			local var_88_10 = 60
			local var_88_11 = 60
			local var_88_12 = var_88_8 * var_88_7
			local var_88_13 = var_88_9 * var_88_7

			var_88_0.back.rect = {
				x = var_88_10 - var_88_12 / 2,
				y = var_88_11 - var_88_13 / 2,
				w = var_88_12,
				h = var_88_13
			}

			love.graphics.setColor(1, 1, 1, var_88_6)
			love.graphics.draw(var_0_40, var_88_10, var_88_11, 0, var_88_7, var_88_7, var_88_8 / 2, var_88_9 / 2)
		end
	end

	if var_0_34 then
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_0_34, 0, var_88_5)
	end

	if var_0_41 and var_0_42 and var_0_34 then
		local var_88_14 = arg_88_0 and arg_88_0.stageSelectOverlay and arg_88_0.stageSelectOverlay.stageCards or nil

		if var_88_14 == nil or var_88_14.enabled ~= false then
			local var_88_15 = var_0_34:getWidth()
			local var_88_16 = var_0_34:getHeight()
			local var_88_17 = arg_88_0 and arg_88_0.virtual and arg_88_0.virtual.H or 720
			local var_88_18 = var_0_79(((var_88_0.y or 0) + var_88_17) / math.max(1, var_88_17), 0, 1)

			if var_88_18 > 0.001 then
				local var_88_19 = arg_88_0 and arg_88_0.scale or 1
				local var_88_20 = math.floor((var_88_14 and var_88_14.gapPx or 18) * var_88_19 + 0.5)
				local var_88_21 = math.floor((var_88_14 and var_88_14.offsetX or 0) * var_88_19 + 0.5)
				local var_88_22 = math.floor((var_88_14 and var_88_14.offsetY or 0) * var_88_19 + 0.5)
				local var_88_23 = var_0_41:getWidth()
				local var_88_24 = var_0_41:getHeight()
				local var_88_25 = 3
				local var_88_26 = math.floor(math.min(64 * var_88_19, var_88_15 * 0.12) + 0.5)
				local var_88_27 = math.floor(math.min(220 * var_88_19, var_88_16 * 0.4) + 0.5)
				local var_88_28 = math.floor(math.min(70 * var_88_19, var_88_16 * 0.14) + 0.5)
				local var_88_29 = var_88_26
				local var_88_30 = var_88_5 + var_88_27
				local var_88_31 = math.max(1, var_88_15 - var_88_26 * 2)
				local var_88_32 = math.max(1, var_88_16 - var_88_27 - var_88_28)
				local var_88_33 = 1
				local var_88_34 = var_88_25 * var_88_23 * var_88_33 + (var_88_25 - 1) * var_88_20
				local var_88_35 = math.floor(var_88_29 + (var_88_31 - var_88_34) * 0.5 + var_88_21 + 0.5)
				local var_88_36 = math.floor(var_88_30 + (var_88_32 - var_88_24 * var_88_33) * 0.5 + var_88_22 + 0.5)
				local var_88_37 = var_88_18
				local var_88_38 = var_0_107(arg_88_0, var_88_0, {
					cardW = var_88_23,
					cardH = var_88_24,
					cols = var_88_25,
					gap = var_88_20,
					scale = var_88_33
				})

				love.graphics.stencil(function()
					love.graphics.rectangle("fill", 0, var_88_5, var_88_15, var_88_16)
				end, "replace", 1)
				love.graphics.setStencilTest("greater", 0)

				for iter_88_0, iter_88_1 in ipairs(var_88_38) do
					local var_88_39 = iter_88_1.page or var_0_100(var_88_0)
					local var_88_40 = iter_88_1.scale or 1
					local var_88_41 = var_88_37 * (iter_88_1.alpha or 1)

					love.graphics.setColor(1, 1, 1, var_88_41)

					for iter_88_2 = 0, var_88_25 - 1 do
						local var_88_42 = iter_88_2 + 1
						local var_88_43 = (var_88_39 - 1) * 3 + var_88_42
						local var_88_44 = var_88_35 + iter_88_2 * (var_88_23 * var_88_33 + var_88_20) + (iter_88_1.x or 0)
						local var_88_45 = iter_88_2 == 0 and var_0_41 or var_0_42
						local var_88_46 = var_88_0 and var_88_0.hoverProg and var_88_0.hoverProg[var_88_42] or 0
						local var_88_47 = var_88_0 and var_88_0.pressedProg and var_88_0.pressedProg[var_88_42] or 0
						local var_88_48 = (1 + 0.08 * var_88_46) * (1 - 0.1 * var_88_47)
						local var_88_49 = var_88_33 * var_88_48
						local var_88_50 = 0

						if var_88_0 and var_88_0.shakeFeedbacks and var_88_0.shakeFeedbacks[var_88_42] and var_88_0.shakeFeedbacks[var_88_42] > 0 then
							local var_88_51 = 0.28 - var_88_0.shakeFeedbacks[var_88_42]
							local var_88_52 = 0.28
							local var_88_53 = 2.5
							local var_88_54 = 58
							local var_88_55 = math.min(1, var_88_51 / var_88_52)

							var_88_50 = math.sin(var_88_51 * var_88_54) * var_88_53 * (1 - var_88_55)
						end

						local var_88_56 = var_88_0 and var_88_0.unlockAnims and var_88_0.unlockAnims[var_88_43]
						local var_88_57 = 1
						local var_88_58 = 1
						local var_88_59 = 0
						local var_88_60 = 0
						local var_88_61 = 0
						local var_88_62 = 0
						local var_88_63 = 0
						local var_88_64 = 0.45

						if var_88_56 and var_88_56.active then
							local var_88_65 = var_88_56.t
							local var_88_66 = 0.35
							local var_88_67 = 0.1
							local var_88_68 = 0.22

							if var_88_65 < var_88_66 then
								local var_88_69 = var_88_65 / var_88_66
								local var_88_70 = var_88_68 * math.sin(var_88_69 * math.pi * 0.5)

								var_88_57 = 1 + var_88_70
								var_88_58 = 1 + var_88_70
							elseif var_88_65 < var_88_64 then
								local var_88_71 = (var_88_65 - var_88_66) / var_88_67
								local var_88_72 = var_88_68 * (1 - var_88_71 * var_88_71)

								var_88_57 = 1 + var_88_72
								var_88_58 = 1 + var_88_72
							else
								local var_88_73 = var_88_65 - var_88_64

								if var_88_73 / 0.38 < 1 then
									local var_88_74 = 0.16 * math.exp(-6.5 * var_88_73) * math.sin(var_88_73 * math.pi * 2.2)

									var_88_57 = 1 + var_88_74
									var_88_58 = 1 - var_88_74
									var_88_62 = var_88_24 * var_88_49 * (1 - var_88_58) * 0.5
									var_88_63 = -12 * math.exp(-6 * var_88_73) * math.sin(var_88_73 * math.pi * 2.2)

									if var_88_63 > 0 then
										var_88_63 = 0
									end
								end

								local var_88_75 = 0.35

								if var_88_73 < var_88_75 then
									local var_88_76 = (1 - var_88_73 / var_88_75)^2
									local var_88_77 = 65

									var_88_59 = math.sin(var_88_73 * var_88_77) * 0.08 * var_88_76
									var_88_60 = math.cos(var_88_73 * var_88_77 * 1.2) * 14 * var_88_76
									var_88_61 = math.abs(math.sin(var_88_73 * var_88_77 * 0.8)) * 8 * var_88_76
								end
							end
						end

						local var_88_78 = var_88_49 * var_88_57 * var_88_40
						local var_88_79 = var_88_49 * var_88_58 * var_88_40
						local var_88_80 = var_88_59
						local var_88_81 = var_88_44 + var_88_23 * var_88_33 * 0.5 + var_88_50 + var_88_60
						local var_88_82 = var_88_36 + (iter_88_1.y or 0) + var_88_24 * var_88_33 * 0.5 + var_88_61 + var_88_62 + var_88_63
						local var_88_83 = false
						local var_88_84 = 0

						if var_88_56 and var_88_56.active then
							local var_88_85 = var_88_56.t
							local var_88_86 = 0.35
							local var_88_87 = var_88_86 + 0.1
							local var_88_88 = 0.48

							if var_88_85 < var_88_87 then
								var_88_83 = true
								var_88_84 = math.min(1, var_88_85 / 0.25)
							elseif var_88_85 < var_88_87 + var_88_88 then
								var_88_83 = true
								var_88_84 = 1 - (var_88_85 - var_88_87) / var_88_88
							end
						end

						local var_88_89 = var_0_102(var_88_43)

						if var_88_89 then
							local var_88_90 = var_88_89:getWidth()
							local var_88_91 = var_88_89:getHeight()
							local var_88_92 = false

							if var_88_83 and var_0_58 then
								var_0_58:send("mixFactor", var_88_84)
								love.graphics.setShader(var_0_58)

								var_88_92 = true
							elseif not var_0_99(var_88_43) and (not var_88_56 or not var_88_56.active) and var_0_60 then
								love.graphics.setShader(var_0_60)
								var_0_60:send("time", love.timer.getTime() % 10000)
								var_0_60:send("tintColor", {
									0.38,
									0.22,
									0.55,
									1
								})

								var_88_92 = true
							end

							love.graphics.setColor(1, 1, 1, var_88_41)
							love.graphics.draw(var_88_89, var_88_81, var_88_82, var_88_80, var_88_78, var_88_79, var_88_90 * 0.5, var_88_91 * 0.5)

							if var_88_92 then
								love.graphics.setShader()
							end
						end

						love.graphics.setColor(1, 1, 1, var_88_41)
						love.graphics.draw(var_88_45, var_88_81, var_88_82, var_88_80, var_88_78, var_88_79, var_88_23 * 0.5, var_88_24 * 0.5)

						if var_0_4.isStageCleared and var_0_4.isStageCleared(var_88_43) then
							local var_88_93 = -var_88_23 * 0.5 + 21
							local var_88_94 = -var_88_24 * 0.5 + 24
							local var_88_95 = 25

							for iter_88_3 = 1, 3 do
								if var_0_130(var_88_43, iter_88_3) then
									local var_88_96 = var_88_41 >= 0.98 and var_88_0.phase ~= "leave" and var_88_0.diffActive ~= true
									local var_88_97 = var_0_133(var_88_43, iter_88_3)
									local var_88_98

									if not var_88_97 or var_88_96 then
										var_88_98 = var_0_132(var_88_43, iter_88_3)
									end

									if var_88_97 and not var_88_96 then
										-- block empty
									else
										local var_88_99

										if var_88_98 then
											local var_88_100 = var_88_98.p or 0
											local var_88_101 = 1 - (1 - math.min(1, var_88_100 / 0.62))^3
											local var_88_102 = math.max(0, math.min(1, (var_88_100 - 0.55) / 0.22))
											local var_88_103 = math.max(0, math.min(1, (var_88_100 - 0.66) / 0.34))
											local var_88_104 = -7 * math.exp(-6 * var_88_103) * math.sin(var_88_103 * math.pi * 3.2)
											local var_88_105 = 0.13 * math.exp(-5 * var_88_102) * math.sin(var_88_102 * math.pi)
											local var_88_106 = math.max(0, 1 - math.abs(var_88_100 - 0.58) / 0.18)
											local var_88_107 = math.max(0, 1 - var_88_100 / 0.38)

											var_88_99 = {
												offsetY = -12 * (1 - var_88_101) + var_88_104,
												scaleMul = 1 + 0.26 * math.sin(math.min(1, var_88_100 / 0.62) * math.pi) - var_88_105,
												alphaMul = math.min(1, var_88_100 * 5),
												whiteMix = math.max(var_88_106 * 0.96, var_88_107 * 0.5),
												flashAlpha = var_88_106 * 0.78
											}
										end

										var_0_140(iter_88_3, var_88_81, var_88_82, var_88_80, var_88_78, var_88_79, var_88_93 + (iter_88_3 - 1) * var_88_95, var_88_94, var_88_41, var_88_99)
									end
								end
							end
						end

						if var_0_7 then
							local var_88_108 = love.graphics.getFont()

							love.graphics.setFont(var_0_7)

							local var_88_109 = var_0_103(arg_88_0, var_88_43)

							if not var_88_109 or var_88_109.enabled ~= false then
								local var_88_110 = var_0_104(arg_88_0, var_88_43)
								local var_88_111 = tonumber(var_88_109 and var_88_109.scale or 1.15) or 1.15
								local var_88_112 = var_88_111 * var_88_48 * var_88_57
								local var_88_113 = var_88_111 * var_88_48 * var_88_58
								local var_88_114 = arg_88_0 and arg_88_0.scale or 1
								local var_88_115 = (tonumber(var_88_109 and var_88_109.offsetX or 0) or 0) * var_88_114
								local var_88_116 = (tonumber(var_88_109 and var_88_109.offsetY or 0) or 0) * var_88_114
								local var_88_117 = tonumber(var_88_109 and var_88_109.yPx or 194) or 194
								local var_88_118 = var_0_7:getWidth(var_88_110)
								local var_88_119 = var_88_117 * var_88_33 + var_88_116 - var_88_24 * var_88_33 * 0.5
								local var_88_120 = var_88_115 * var_88_48 * var_88_57
								local var_88_121 = var_88_119 * var_88_48 * var_88_58
								local var_88_122 = var_88_120 * math.cos(var_88_80) - var_88_121 * math.sin(var_88_80)
								local var_88_123 = var_88_120 * math.sin(var_88_80) + var_88_121 * math.cos(var_88_80)
								local var_88_124 = var_88_81 + var_88_122
								local var_88_125 = var_88_82 + var_88_123

								love.graphics.setColor(1, 1, 1, var_88_41)
								love.graphics.print(var_88_110, math.floor(var_88_124 + 0.5), math.floor(var_88_125 + 0.5), var_88_80, var_88_112, var_88_113, math.floor(var_88_118 * 0.5 + 0.5), 0)
							end

							love.graphics.setFont(var_88_108)
							love.graphics.setColor(1, 1, 1, var_88_41)
						end
					end
				end

				love.graphics.setStencilTest()
				love.graphics.setColor(1, 1, 1, 1)

				if var_88_0 and var_88_0.hoveredIndex and var_88_0.stageRects and var_88_0.stageRects[var_88_0.hoveredIndex] then
					local var_88_126 = var_88_0.stageRects[var_88_0.hoveredIndex].stageKey or var_0_101(var_88_0, var_88_0.hoveredIndex)

					if not var_0_99(var_88_126) and var_88_0.stageRects and var_88_0.stageRects[var_88_0.hoveredIndex] then
						local var_88_127 = (var_88_0.hoverProg and var_88_0.hoverProg[var_88_0.hoveredIndex] or 1) * var_88_18

						var_0_124(arg_88_0, var_88_0.stageRects[var_88_0.hoveredIndex], var_88_127, var_88_126)
					end
				end
			end
		end
	end

	if var_0_39 and var_0_38 and not var_88_0.diffActive then
		local var_88_128 = var_0_98(arg_88_0, var_88_0, var_88_5)
		local var_88_129 = var_0_105(arg_88_0, var_88_0, var_88_128)

		if var_88_129 and (var_88_0.pageSlideT or 0) <= 0 then
			var_88_0.pageArrow = var_88_0.pageArrow or {
				scale = 1
			}
			var_88_0.pageArrow.rect = var_88_129

			local var_88_130 = arg_88_0 and arg_88_0.virtual and arg_88_0.virtual.H or 720
			local var_88_131 = var_0_79(((var_88_0.y or 0) + var_88_130) / math.max(1, var_88_130), 0, 1)
			local var_88_132 = var_88_0.pageArrow.scale or 1
			local var_88_133, var_88_134 = var_0_39:getDimensions()

			love.graphics.setColor(1, 1, 1, var_88_131)
			love.graphics.draw(var_0_39, var_88_129.cx, var_88_129.cy, 0, var_88_129.scale * var_88_132 * var_88_129.dir, var_88_129.scale * var_88_132, var_88_133 * 0.5, var_88_134 * 0.5)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_88_135 = var_0_98(arg_88_0, var_88_0, var_88_5)

	if var_88_135 and not var_88_0.diffActive then
		local var_88_136 = arg_88_0 and arg_88_0.virtual and arg_88_0.virtual.H or 720
		local var_88_137 = var_0_79(((var_88_0.y or 0) + var_88_136) / math.max(1, var_88_136), 0, 1)

		if var_88_137 > 0.001 then
			local var_88_138 = arg_88_0 and arg_88_0.scale or 1
			local var_88_139 = (var_88_135.cols or 3) * var_88_135.cardW * var_88_135.scale + ((var_88_135.cols or 3) - 1) * var_88_135.gap
			local var_88_140 = var_88_135.x0 + var_88_139 * 0.5
			local var_88_141 = math.max(1, var_0_80())
			local var_88_142 = var_88_135.y0 + var_88_135.cardH * var_88_135.scale + math.floor(12 * var_88_138 + 0.5)
			local var_88_143 = var_0_108(var_88_0)
			local var_88_144 = var_88_141 * 18
			local var_88_145 = var_88_141
			local var_88_146 = math.floor(var_88_140 - var_88_144 * 0.5 + 0.5)
			local var_88_147 = math.floor(var_88_142 - var_88_145 * 0.5 + 0.5)

			love.graphics.setColor(0.34, 0.34, 0.34, var_88_137 * 0.9)
			love.graphics.rectangle("fill", var_88_146, var_88_147, var_88_144, var_88_145)

			local var_88_148 = var_88_141 * 6
			local var_88_149 = var_88_145
			local var_88_150 = var_0_79((var_88_143 - 1) / 1, 0, 1)
			local var_88_151 = var_88_144 - var_88_148
			local var_88_152 = math.floor(var_88_146 + var_88_151 * var_88_150 + 0.5)
			local var_88_153 = math.floor(var_88_142 - var_88_149 * 0.5 + 0.5)

			love.graphics.setColor(0.78, 0.78, 0.78, var_88_137)
			love.graphics.rectangle("fill", var_88_152, var_88_153, var_88_148, var_88_149)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_88_154 = arg_88_0 and arg_88_0.stageSelectOverlay and arg_88_0.stageSelectOverlay.title or nil

	if var_0_38 and var_88_154 and var_88_154.enabled ~= false then
		local var_88_155 = arg_88_0 and arg_88_0.virtual and arg_88_0.virtual.H or 720
		local var_88_156 = var_0_79(((var_88_0.y or 0) + var_88_155) / math.max(1, var_88_155), 0, 1)
		local var_88_157 = tonumber(var_88_154.spriteScale or var_88_154.scale or 1) or 1
		local var_88_158 = var_0_34 and var_0_34.getHeight and var_0_34:getHeight() or var_88_2
		local var_88_159 = math.floor((var_88_154.yFrac or 0.18) * var_88_158 + 0.5)
		local var_88_160 = math.floor(var_88_1 * 0.5 + (var_88_154.offsetX or 0) + 0.5)
		local var_88_161 = math.floor(var_88_5 + var_88_159 + (var_88_154.offsetY or 0) + 0.5)
		local var_88_162, var_88_163 = var_0_38:getDimensions()

		love.graphics.setColor(1, 1, 1, var_88_156)
		love.graphics.draw(var_0_38, var_88_160, var_88_161, 0, var_88_157, var_88_157, var_88_162 * 0.5, 0)
		love.graphics.setColor(1, 1, 1, 1)
	end

	if var_0_35 then
		local var_88_164 = 0

		if arg_88_0 and arg_88_0.pauseOverlay and arg_88_0.pauseOverlay.ropeYOffsetPx ~= nil then
			var_88_164 = arg_88_0.pauseOverlay.ropeYOffsetPx
		elseif var_0_5 and var_0_5.pauseOverlay and var_0_5.pauseOverlay.ropeYOffsetPx ~= nil then
			var_88_164 = var_0_5.pauseOverlay.ropeYOffsetPx
		end

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_0_35, 0, var_88_5 + math.floor(var_88_164 + 0.5))
	end

	love.graphics.setColor(1, 1, 1, 1)

	if var_88_2 > var_88_0.diffY then
		local var_88_165 = var_0_79((var_88_2 - var_88_0.diffY) / var_88_2, 0, 1)
		local var_88_166 = arg_88_0 and arg_88_0.menuSettings and arg_88_0.menuSettings.language or "ko"
		local var_88_167 = var_0_36
		local var_88_168 = false
		local var_88_169 = math.floor(tonumber(var_88_3 or 0) or 0)

		if var_0_37[var_88_169] then
			var_88_167 = var_0_37[var_88_169]
			var_88_168 = true
		end

		if var_88_167 then
			local var_88_170, var_88_171 = var_88_167:getDimensions()
			local var_88_172 = 1
			local var_88_173 = arg_88_0.virtual and arg_88_0.virtual.H and arg_88_0.virtual.W or var_0_34 and var_0_34:getWidth() + 100 or 1280

			if arg_88_0 and arg_88_0.virtual and arg_88_0.virtual.W then
				var_88_173 = arg_88_0.virtual.W
			end

			local var_88_174 = math.floor((var_88_173 - var_88_170 * var_88_172) / 2)
			local var_88_175 = arg_88_0 and arg_88_0.stageSelectOverlay and arg_88_0.stageSelectOverlay.difficultyTitle or {}
			local var_88_176 = tonumber(var_88_175.targetY) or 25
			local var_88_177 = var_88_168 and (var_88_0.diffActive or var_0_84.state == "anim" or var_0_84.state == "idle")
			local var_88_178 = var_88_176
			local var_88_179 = var_88_165

			if var_88_177 then
				var_88_178 = math.floor((var_0_84.y or var_88_176) + 0.5)
				var_88_179 = var_0_93(var_0_84) * var_88_165
			end

			if var_88_177 or not var_88_168 then
				love.graphics.setColor(1, 1, 1, var_88_179)
				love.graphics.draw(var_88_167, var_88_174, var_88_178, 0, var_88_172, var_88_172)
			end

			if not var_88_168 then
				local var_88_180 = (arg_88_0 and arg_88_0.stageSelectOverlay or {}).stageNames or {}
				local var_88_181 = var_88_3 or 1
				local var_88_182 = var_0_2.getText("menu_stage_name_" .. tostring(var_88_181), var_88_166)

				if var_88_182 == "menu_stage_name_" .. tostring(var_88_181) then
					var_88_182 = var_88_180[var_88_181] or "STAGE " .. tostring(var_88_181)
				end

				local var_88_183 = var_0_7 or love.graphics.getFont()
				local var_88_184 = love.graphics.getFont()

				love.graphics.setFont(var_88_183)

				local var_88_185 = 1.15
				local var_88_186 = var_88_183:getWidth(var_88_182) * var_88_185
				local var_88_187 = var_88_183:getHeight()
				local var_88_188 = var_88_174 + (var_88_170 * var_88_172 - var_88_186) / 2
				local var_88_189 = var_88_178 + (var_88_171 * var_88_172 - var_88_187 * var_88_185) / 2

				love.graphics.print(var_88_182, math.floor(var_88_188), math.floor(var_88_189), 0, var_88_185, var_88_185)
				love.graphics.setFont(var_88_184)
			end
		end

		local var_88_190 = 0
		local var_88_191 = var_0_110(arg_88_0, var_88_190)

		if var_88_191 then
			local var_88_192 = var_88_191.cardW
			local var_88_193 = var_88_191.cardH
			local var_88_194 = var_88_191.scale
			local var_88_195 = var_88_191.gap
			local var_88_196

			for iter_88_4 = 1, 3 do
				local var_88_197 = var_88_191.x0 + (iter_88_4 - 1) * (var_88_192 * var_88_194 + var_88_195)
				local var_88_198 = var_88_191.y0
				local var_88_199 = iter_88_4 == 1 and var_0_47 or iter_88_4 == 2 and var_0_48 or iter_88_4 == 3 and var_0_49

				if var_88_199 then
					local var_88_200 = var_88_0.diffAppearProg and var_88_0.diffAppearProg[iter_88_4] or 0
					local var_88_201 = var_88_0.diffHoverProg and var_88_0.diffHoverProg[iter_88_4] or 0
					local var_88_202 = var_88_0.diffPressedProg and var_88_0.diffPressedProg[iter_88_4] or 0
					local var_88_203 = 0

					if var_88_200 > 0 then
						var_88_203 = 1 - math.exp(-6.5 * var_88_200) * math.cos(2.5 * math.pi * var_88_200)
					end

					local var_88_204 = math.exp(-4 * var_88_200) * 0.4
					local var_88_205 = 15
					local var_88_206 = 1 + var_88_204 * math.sin(var_88_200 * var_88_205)
					local var_88_207 = (1 + 0.08 * var_88_201) * (1 - 0.1 * var_88_202)
					local var_88_208 = var_88_194 * var_88_203 * var_88_207 * (2 - var_88_206)
					local var_88_209 = var_88_194 * var_88_203 * var_88_207 * var_88_206
					local var_88_210 = 0

					if var_88_0 and var_88_0.diffShakeFeedbacks and var_88_0.diffShakeFeedbacks[iter_88_4] and var_88_0.diffShakeFeedbacks[iter_88_4] > 0 then
						local var_88_211 = 0.28 - var_88_0.diffShakeFeedbacks[iter_88_4]
						local var_88_212 = 0.28
						local var_88_213 = 2.5
						local var_88_214 = 58
						local var_88_215 = math.min(1, var_88_211 / var_88_212)

						var_88_210 = math.sin(var_88_211 * var_88_214) * var_88_213 * (1 - var_88_215)
					end

					local var_88_216 = var_88_197 + var_88_192 * var_88_194 * 0.5 + var_88_210
					local var_88_217 = var_88_198 + var_88_193 * var_88_194 * 0.5
					local var_88_218 = var_0_79(var_88_200 * 8, 0, 1)

					if not var_88_0.diffActive then
						var_88_218 = var_0_79(var_88_200 * 100, 0, 1)
					end

					local var_88_219 = var_88_0.selectedStage or 1
					local var_88_220 = _G.isDemoContentLocked and _G.isDemoContentLocked(var_88_219, iter_88_4)
					local var_88_221 = var_88_220 or not var_0_126(var_88_219, iter_88_4)
					local var_88_222 = not var_88_221 and var_0_134(var_88_219, iter_88_4)
					local var_88_223 = var_88_0.diffActive == true and (var_88_0.diffAppearProg and var_88_0.diffAppearProg[1] or 0) >= 1 and (var_88_0.diffAppearProg and var_88_0.diffAppearProg[2] or 0) >= 1 and (var_88_0.diffAppearProg and var_88_0.diffAppearProg[3] or 0) >= 1
					local var_88_224 = not var_88_221 and var_88_223 and var_0_135(var_88_219, iter_88_4) or nil
					local var_88_225 = var_88_224 and (var_88_224.p or 0) or 0
					local var_88_226 = var_88_221 or var_88_222 or var_88_224 ~= nil

					if var_88_221 and var_88_0.diffHoverIdx == iter_88_4 and var_88_165 * var_88_218 > 0.05 then
						var_88_196 = {
							x = var_88_216 - var_88_192 * math.abs(var_88_208) * 0.5,
							y = var_88_217 - var_88_193 * math.abs(var_88_209) * 0.5,
							w = var_88_192 * math.abs(var_88_208),
							h = var_88_193 * math.abs(var_88_209),
							alpha = var_88_165 * var_88_218,
							fullVersion = var_88_220 == true
						}
					end

					if var_88_226 then
						local var_88_227 = 0.4 + 0.6 * (var_88_224 and math.max(0, math.min(1, var_88_225)) or 0)

						love.graphics.setColor(var_88_227, var_88_227, var_88_227, var_88_165 * var_88_218)
					else
						love.graphics.setColor(1, 1, 1, var_88_165 * var_88_218)
					end

					love.graphics.draw(var_88_199, var_88_216, var_88_217, 0, var_88_208, var_88_209, var_88_192 * 0.5, var_88_193 * 0.5)

					if not var_88_221 and var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(var_88_0.selectedStage or 1, iter_88_4) then
						var_0_140(iter_88_4, var_88_216, var_88_217, 0, var_88_208, var_88_209, var_88_192 * 0.5 - 15, -var_88_193 * 0.5 + 24, var_88_165 * var_88_218)
					end

					if (var_88_221 or var_88_222 and not var_88_224) and difficultyLockImg then
						local var_88_228, var_88_229 = difficultyLockImg:getDimensions()

						love.graphics.setColor(1, 1, 1, var_88_165 * var_88_218)
						love.graphics.draw(difficultyLockImg, var_88_216, var_88_217 + 3 * var_88_209, 0, var_88_208 * 2.2, var_88_209 * 2.2, var_88_228 * 0.5, var_88_229 * 0.5)
					elseif var_88_224 then
						var_0_138(var_88_216, var_88_217 + 3 * var_88_209, var_88_208, var_88_209, var_88_165 * var_88_218, var_88_224)
					end
				end
			end

			if var_88_196 then
				local var_88_230 = arg_88_0 and arg_88_0.menuSettings and arg_88_0.menuSettings.language or "ko"
				local var_88_231 = var_88_196.fullVersion and var_0_123(var_88_230) or var_0_2.getText("menu_difficulty_locked_hint", var_88_230)
				local var_88_232 = var_0_7 or love.graphics.getFont()
				local var_88_233 = love.graphics.getFont()

				love.graphics.setFont(var_88_232)

				local var_88_234 = 0.9
				local var_88_235 = 8
				local var_88_236 = 5
				local var_88_237 = var_88_232:getWidth(var_88_231) * var_88_234
				local var_88_238 = var_88_232:getHeight() * var_88_234
				local var_88_239 = math.ceil(var_88_237 + var_88_235 * 2)
				local var_88_240 = math.ceil(var_88_238 + var_88_236 * 2)
				local var_88_241 = math.floor(var_88_196.x + var_88_196.w * 0.5 - var_88_239 * 0.5 + 0.5)
				local var_88_242 = math.floor(var_88_196.y - var_88_240 - 8 + 0.5)

				if var_88_241 < 8 then
					var_88_241 = 8
				end

				if var_88_241 + var_88_239 > var_88_1 - 8 then
					var_88_241 = var_88_1 - 8 - var_88_239
				end

				if var_88_242 < 8 then
					var_88_242 = math.floor(var_88_196.y + var_88_196.h + 8 + 0.5)
				end

				local var_88_243 = math.min(1, var_88_196.alpha or 1)
				local var_88_244 = arg_88_0 and arg_88_0.tooltip
				local var_88_245 = {
					0.06,
					0.05,
					0.08,
					0.92 * var_88_243
				}

				if var_88_244 and var_88_244.drawPixelRoundedRect then
					var_88_244:drawPixelRoundedRect(var_88_241, var_88_242, var_88_239, var_88_240, var_88_245, var_88_245)
				else
					love.graphics.setColor(var_88_245)
					love.graphics.rectangle("fill", var_88_241, var_88_242, var_88_239, var_88_240)
				end

				love.graphics.setColor(0.95, 0.9, 0.78, var_88_243)
				love.graphics.print(var_88_231, math.floor(var_88_241 + var_88_235 + 0.5), math.floor(var_88_242 + var_88_236 - 1 + 0.5), 0, var_88_234, var_88_234)
				love.graphics.setFont(var_88_233)
				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	if var_88_0.showDebugUnlockPanel then
		local var_88_246 = var_88_0.diffActive and 660 or 760
		local var_88_247 = var_88_0.diffActive and 92 or 138
		local var_88_248 = (var_88_1 - var_88_246) * 0.5
		local var_88_249 = 20

		love.graphics.setColor(0, 0, 0, 0.75)
		love.graphics.rectangle("fill", var_88_248, var_88_249, var_88_246, var_88_247, 6, 6)
		love.graphics.setLineWidth(1.5)
		love.graphics.setColor(0.4, 0.4, 0.4, 0.8)
		love.graphics.rectangle("line", var_88_248, var_88_249, var_88_246, var_88_247, 6, 6)

		local var_88_250 = 200
		local var_88_251 = 34
		local var_88_252 = 40
		local var_88_253 = var_88_249 + (var_88_247 - var_88_251) * 0.5
		local var_88_254 = var_88_248 + (var_88_246 - (var_88_250 * 2 + var_88_252)) * 0.5
		local var_88_255 = var_88_254 + var_88_250 + var_88_252
		local var_88_256, var_88_257 = love.mouse.getPosition()
		local var_88_258 = var_88_256
		local var_88_259 = var_88_257

		if _G.toVirtual then
			var_88_258, var_88_259 = _G.toVirtual(var_88_256, var_88_257)
		end

		if var_88_0.diffActive then
			local var_88_260 = var_88_0.selectedStage or 1
			local var_88_261 = var_0_126(var_88_260, 2)

			if var_88_254 <= var_88_258 and var_88_258 <= var_88_254 + var_88_250 and var_88_253 <= var_88_259 and var_88_259 <= var_88_253 + var_88_251 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_88_254, var_88_253, var_88_250, var_88_251, 4, 4)
			love.graphics.setColor(var_88_261 and {
				0.2,
				0.8,
				0.2,
				0.9
			} or {
				0.8,
				0.2,
				0.2,
				0.9
			})
			love.graphics.rectangle("line", var_88_254, var_88_253, var_88_250, var_88_251, 4, 4)

			local var_88_262 = love.graphics.getFont()

			if var_0_7 then
				love.graphics.setFont(var_0_7)
			end

			love.graphics.setColor(1, 1, 1, 1)

			local var_88_263 = "Normal: " .. (var_88_261 and "UNLOCKED" or "LOCKED")
			local var_88_264 = love.graphics.getFont():getWidth(var_88_263)
			local var_88_265 = love.graphics.getFont():getHeight()

			love.graphics.print(var_88_263, math.floor(var_88_254 + (var_88_250 - var_88_264) * 0.5 + 0.5), math.floor(var_88_253 + (var_88_251 - var_88_265) * 0.5 + 0.5))

			local var_88_266 = var_0_126(var_88_260, 3)

			if var_88_255 <= var_88_258 and var_88_258 <= var_88_255 + var_88_250 and var_88_253 <= var_88_259 and var_88_259 <= var_88_253 + var_88_251 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_88_255, var_88_253, var_88_250, var_88_251, 4, 4)
			love.graphics.setColor(var_88_266 and {
				0.2,
				0.8,
				0.2,
				0.9
			} or {
				0.8,
				0.2,
				0.2,
				0.9
			})
			love.graphics.rectangle("line", var_88_255, var_88_253, var_88_250, var_88_251, 4, 4)
			love.graphics.setColor(1, 1, 1, 1)

			local var_88_267 = "Hard: " .. (var_88_266 and "UNLOCKED" or "LOCKED")
			local var_88_268 = love.graphics.getFont():getWidth(var_88_267)
			local var_88_269 = love.graphics.getFont():getHeight()

			love.graphics.print(var_88_267, math.floor(var_88_255 + (var_88_250 - var_88_268) * 0.5 + 0.5), math.floor(var_88_253 + (var_88_251 - var_88_269) * 0.5 + 0.5))

			var_88_0.debugMedalButtons = {}

			local var_88_270 = 180
			local var_88_271 = 28
			local var_88_272 = 18
			local var_88_273 = var_88_249 + 56
			local var_88_274 = var_88_270 * 3 + var_88_272 * 2
			local var_88_275 = math.floor(var_88_248 + (var_88_246 - var_88_274) * 0.5 + 0.5)
			local var_88_276 = {
				"Easy Medal",
				"Normal Medal",
				"Hard Medal"
			}

			for iter_88_5 = 1, 3 do
				local var_88_277 = var_88_275 + (iter_88_5 - 1) * (var_88_270 + var_88_272)
				local var_88_278 = var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(var_88_260, iter_88_5)
				local var_88_279 = var_88_277 <= var_88_258 and var_88_258 <= var_88_277 + var_88_270 and var_88_273 <= var_88_259 and var_88_259 <= var_88_273 + var_88_271

				love.graphics.setColor(var_88_279 and {
					0.3,
					0.35,
					0.4,
					0.92
				} or {
					0.15,
					0.15,
					0.15,
					0.84
				})
				love.graphics.rectangle("fill", var_88_277, var_88_273, var_88_270, var_88_271, 4, 4)
				love.graphics.setColor(var_88_278 and {
					0.75,
					0.62,
					0.28,
					0.95
				} or {
					0.45,
					0.38,
					0.48,
					0.95
				})
				love.graphics.rectangle("line", var_88_277, var_88_273, var_88_270, var_88_271, 4, 4)
				love.graphics.setColor(1, 1, 1, 1)

				local var_88_280 = var_88_276[iter_88_5] .. ": " .. (var_88_278 and "ON" or "OFF")
				local var_88_281 = love.graphics.getFont():getWidth(var_88_280)
				local var_88_282 = love.graphics.getFont():getHeight()

				love.graphics.print(var_88_280, math.floor(var_88_277 + (var_88_270 - var_88_281) * 0.5 + 0.5), math.floor(var_88_273 + (var_88_271 - var_88_282) * 0.5 + 0.5))

				var_88_0.debugMedalButtons[iter_88_5] = {
					x = var_88_277,
					y = var_88_273,
					w = var_88_270,
					h = var_88_271,
					diffKey = iter_88_5,
					hovered = var_88_279
				}
			end

			if var_88_262 then
				love.graphics.setFont(var_88_262)
			end
		else
			var_88_0.debugMedalButtons = nil

			local var_88_283 = var_0_99(2)

			if var_88_254 <= var_88_258 and var_88_258 <= var_88_254 + var_88_250 and var_88_253 <= var_88_259 and var_88_259 <= var_88_253 + var_88_251 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_88_254, var_88_253, var_88_250, var_88_251, 4, 4)
			love.graphics.setColor(var_88_283 and {
				0.2,
				0.8,
				0.2,
				0.9
			} or {
				0.8,
				0.2,
				0.2,
				0.9
			})
			love.graphics.rectangle("line", var_88_254, var_88_253, var_88_250, var_88_251, 4, 4)

			local var_88_284 = love.graphics.getFont()

			if var_0_7 then
				love.graphics.setFont(var_0_7)
			end

			love.graphics.setColor(1, 1, 1, 1)

			local var_88_285 = "Stage 2: " .. (var_88_283 and "UNLOCKED" or "LOCKED")
			local var_88_286 = love.graphics.getFont():getWidth(var_88_285)
			local var_88_287 = love.graphics.getFont():getHeight()

			love.graphics.print(var_88_285, math.floor(var_88_254 + (var_88_250 - var_88_286) * 0.5 + 0.5), math.floor(var_88_253 + (var_88_251 - var_88_287) * 0.5 + 0.5))

			local var_88_288 = var_0_99(3)

			if var_88_255 <= var_88_258 and var_88_258 <= var_88_255 + var_88_250 and var_88_253 <= var_88_259 and var_88_259 <= var_88_253 + var_88_251 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_88_255, var_88_253, var_88_250, var_88_251, 4, 4)
			love.graphics.setColor(var_88_288 and {
				0.2,
				0.8,
				0.2,
				0.9
			} or {
				0.8,
				0.2,
				0.2,
				0.9
			})
			love.graphics.rectangle("line", var_88_255, var_88_253, var_88_250, var_88_251, 4, 4)
			love.graphics.setColor(1, 1, 1, 1)

			local var_88_289 = "Stage 3: " .. (var_88_288 and "UNLOCKED" or "LOCKED")
			local var_88_290 = love.graphics.getFont():getWidth(var_88_289)
			local var_88_291 = love.graphics.getFont():getHeight()

			love.graphics.print(var_88_289, math.floor(var_88_255 + (var_88_250 - var_88_290) * 0.5 + 0.5), math.floor(var_88_253 + (var_88_251 - var_88_291) * 0.5 + 0.5))

			var_88_0.debugMedalButtons = {}

			local var_88_292 = 72
			local var_88_293 = 24
			local var_88_294 = 8
			local var_88_295 = 6
			local var_88_296 = 64
			local var_88_297 = {
				"E",
				"N",
				"H"
			}
			local var_88_298 = var_88_249 + 56
			local var_88_299 = math.floor(var_88_248 + (var_88_246 - (var_88_296 + var_88_292 * 3 + var_88_294 * 2)) * 0.5 + 0.5)

			for iter_88_6 = 1, 3 do
				local var_88_300 = var_88_298 + (iter_88_6 - 1) * (var_88_293 + var_88_295)
				local var_88_301 = "Stage " .. tostring(iter_88_6)

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.print(var_88_301, var_88_299, math.floor(var_88_300 + 3 + 0.5))

				for iter_88_7 = 1, 3 do
					local var_88_302 = var_88_299 + var_88_296 + (iter_88_7 - 1) * (var_88_292 + var_88_294)
					local var_88_303 = var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(iter_88_6, iter_88_7)
					local var_88_304 = var_88_302 <= var_88_258 and var_88_258 <= var_88_302 + var_88_292 and var_88_300 <= var_88_259 and var_88_259 <= var_88_300 + var_88_293

					love.graphics.setColor(var_88_304 and {
						0.3,
						0.35,
						0.4,
						0.92
					} or {
						0.15,
						0.15,
						0.15,
						0.84
					})
					love.graphics.rectangle("fill", var_88_302, var_88_300, var_88_292, var_88_293, 4, 4)
					love.graphics.setColor(var_88_303 and {
						0.75,
						0.62,
						0.28,
						0.95
					} or {
						0.45,
						0.38,
						0.48,
						0.95
					})
					love.graphics.rectangle("line", var_88_302, var_88_300, var_88_292, var_88_293, 4, 4)
					love.graphics.setColor(1, 1, 1, 1)

					local var_88_305 = var_88_297[iter_88_7] .. ":" .. (var_88_303 and "ON" or "OFF")
					local var_88_306 = love.graphics.getFont():getWidth(var_88_305)
					local var_88_307 = love.graphics.getFont():getHeight()

					love.graphics.print(var_88_305, math.floor(var_88_302 + (var_88_292 - var_88_306) * 0.5 + 0.5), math.floor(var_88_300 + (var_88_293 - var_88_307) * 0.5 + 0.5))

					var_88_0.debugMedalButtons[#var_88_0.debugMedalButtons + 1] = {
						x = var_88_302,
						y = var_88_300,
						w = var_88_292,
						h = var_88_293,
						stageKey = iter_88_6,
						diffKey = iter_88_7,
						hovered = var_88_304
					}
				end
			end

			if var_88_284 then
				love.graphics.setFont(var_88_284)
			end
		end

		var_88_0.debugButtons = var_88_0.debugButtons or {}
		var_88_0.debugButtons[1] = {
			stageKey = 2,
			x = var_88_254,
			y = var_88_253,
			w = var_88_250,
			h = var_88_251,
			hovered = hover1
		}
		var_88_0.debugButtons[2] = {
			stageKey = 3,
			x = var_88_255,
			y = var_88_253,
			w = var_88_250,
			h = var_88_251,
			hovered = hover2
		}
	end
end

local function var_0_142(arg_90_0, arg_90_1)
	local var_90_0 = arg_90_1 / 720
	local var_90_1 = 1280 * var_90_0
	local var_90_2 = var_0_80() * var_0_64
	local var_90_3 = math.max(1, math.floor(var_90_2 * var_90_0 + 0.5))
	local var_90_4, var_90_5 = love.graphics.getBlendMode()

	for iter_90_0, iter_90_1 in ipairs(var_0_62) do
		local var_90_6 = math.floor(iter_90_1.x)
		local var_90_7 = math.floor(iter_90_1.y)
		local var_90_8 = math.floor(var_90_7 * var_90_0 + 0.5)
		local var_90_9 = var_90_6 * var_90_0 % var_90_1 - var_90_1

		while var_90_9 < arg_90_0 do
			local var_90_10 = math.floor(var_90_9 + 0.5)

			if iter_90_1.glow then
				local var_90_11 = 0.52 + 0.48 * math.sin(iter_90_1.t * 2.6 + (iter_90_1.phase or 0))
				local var_90_12 = var_0_79((iter_90_1.alpha or 0.5) * var_90_11, 0.08, 1)

				love.graphics.setBlendMode("add", "alphamultiply")

				for iter_90_2 = -1, 1 do
					for iter_90_3 = -1, 1 do
						local var_90_13 = math.abs(iter_90_3) + math.abs(iter_90_2)
						local var_90_14 = var_90_10 + iter_90_3 * var_90_3
						local var_90_15 = var_90_8 + iter_90_2 * var_90_3

						if var_90_13 == 0 then
							love.graphics.setColor(1, 0.95, 0.82, var_90_12 * 0.5)
						elseif var_90_13 == 1 then
							love.graphics.setColor(1, 0.78, 0.42, var_90_12 * 0.27)
						else
							love.graphics.setColor(1, 0.72, 0.38, var_90_12 * 0.13)
						end

						love.graphics.rectangle("fill", var_90_14, var_90_15, var_90_3, var_90_3)
					end
				end

				love.graphics.setBlendMode(var_90_4, var_90_5)
			else
				local var_90_16 = iter_90_1.alpha + math.sin(iter_90_1.t * 2) * 0.1

				love.graphics.setColor(1, 0.95, 0.8, var_0_79(var_90_16, 0.06, 1))
				love.graphics.rectangle("fill", var_90_10, var_90_8, var_90_3, var_90_3)
			end

			var_90_9 = var_90_9 + var_90_1
		end
	end

	love.graphics.setBlendMode(var_90_4, var_90_5)
end

function var_0_4.drawBackground(arg_91_0, arg_91_1)
	if not var_0_69 then
		var_0_116()
	end

	local var_91_0 = var_0_0.colors.bg

	love.graphics.setColor(var_91_0[1], var_91_0[2], var_91_0[3], 1)
	love.graphics.rectangle("fill", 0, 0, arg_91_0, arg_91_1)
	love.graphics.setColor(1, 1, 1, 1)

	if var_0_56 then
		var_0_56:send("time", love.timer.getTime() % 10000)
		love.graphics.setShader(var_0_56)
	end

	for iter_91_0, iter_91_1 in ipairs(var_0_12) do
		local var_91_1 = iter_91_1.img
		local var_91_2, var_91_3 = var_91_1:getDimensions()

		if var_91_2 > 0 and var_91_3 > 0 then
			if iter_91_1.sheetAnim and iter_91_1.quads then
				local var_91_4 = iter_91_1.frameW or math.floor(var_91_2 / (iter_91_1.frameCount or 1))
				local var_91_5 = iter_91_1.frameH or var_91_3
				local var_91_6 = iter_91_1.frameCount or 1
				local var_91_7 = var_0_79(iter_91_1.frameIndex or 1, 1, var_91_6)
				local var_91_8 = iter_91_1.quads[var_91_7]

				if var_91_8 then
					if iter_91_1.splitComposite and iter_91_1.compositeW and iter_91_1.compositeH then
						local var_91_9 = iter_91_1.compositeW
						local var_91_10 = iter_91_1.compositeH
						local var_91_11 = math.max(arg_91_0 / var_91_9, arg_91_1 / var_91_10)
						local var_91_12 = var_91_9 * var_91_11
						local var_91_13 = var_91_10 * var_91_11
						local var_91_14 = math.floor((arg_91_0 - var_91_12) * 0.5 + 0.5)
						local var_91_15 = math.floor((arg_91_1 - var_91_13) * 0.5 + 0.5)
						local var_91_16 = math.floor((iter_91_1.offsetXInComposite or 0) * var_91_11 + 0.5)

						love.graphics.draw(var_91_1, var_91_8, var_91_14 + var_91_16, var_91_15, 0, var_91_11, var_91_11)
					else
						local var_91_17 = math.max(arg_91_0 / var_91_4, arg_91_1 / var_91_5)
						local var_91_18 = var_91_4 * var_91_17
						local var_91_19 = var_91_5 * var_91_17
						local var_91_20 = math.floor((arg_91_0 - var_91_18) * 0.5 + 0.5)
						local var_91_21 = math.floor((arg_91_1 - var_91_19) * 0.5 + 0.5)

						love.graphics.draw(var_91_1, var_91_8, var_91_20, var_91_21, 0, var_91_17, var_91_17)
					end
				end
			elseif iter_91_1.scrollMatchComposite then
				local var_91_22 = iter_91_1.compositeW or 519
				local var_91_23 = iter_91_1.compositeH or 286
				local var_91_24 = math.max(arg_91_0 / var_91_22, arg_91_1 / var_91_23)
				local var_91_25 = var_91_23 * var_91_24
				local var_91_26 = math.floor((arg_91_1 - var_91_25) * 0.5 + 0.5)
				local var_91_27 = var_91_2
				local var_91_28 = math.max(1, math.floor(var_91_27 * var_91_24 + 0.5))
				local var_91_29 = ((iter_91_1.x or 0) % var_91_27 + var_91_27) % var_91_27 * var_91_24
				local var_91_30 = math.floor(var_91_29 + 0.5) % var_91_28
				local var_91_31 = 1
				local var_91_32 = math.max(1, var_91_28 - var_91_31)
				local var_91_33 = math.floor(-var_91_28 + var_91_30)
				local var_91_34 = math.ceil(arg_91_0 + var_91_28 + var_91_32)

				while var_91_33 < var_91_34 do
					love.graphics.draw(var_91_1, var_91_33, var_91_26, 0, var_91_24, var_91_24)

					var_91_33 = var_91_33 + var_91_32
				end
			elseif iter_91_1.fullscreenCover then
				local var_91_35 = math.max(arg_91_0 / var_91_2, arg_91_1 / var_91_3)
				local var_91_36 = var_91_2 * var_91_35
				local var_91_37 = var_91_3 * var_91_35
				local var_91_38 = math.floor((arg_91_0 - var_91_36) * 0.5 + 0.5)
				local var_91_39 = math.floor((arg_91_1 - var_91_37) * 0.5 + 0.5)

				love.graphics.draw(var_91_1, var_91_38, var_91_39, 0, var_91_35, var_91_35)
			else
				local var_91_40 = arg_91_1 / var_91_3
				local var_91_41 = var_91_2 * var_91_40
				local var_91_42 = iter_91_1.x * var_91_40 % var_91_41
				local var_91_43 = -var_91_41 + var_91_42

				while var_91_43 < arg_91_0 do
					love.graphics.draw(var_91_1, var_91_43, 0, 0, var_91_40, var_91_40)

					var_91_43 = var_91_43 + var_91_41
				end
			end
		end
	end

	love.graphics.setShader()
	var_0_142(arg_91_0, arg_91_1)
end

function var_0_4.drawCurrency(arg_92_0)
	local var_92_0 = arg_92_0.virtual.W
	local var_92_1 = arg_92_0.virtual.H
	local var_92_2 = arg_92_0.fontTitle or love.graphics.getFont()

	if var_0_21 then
		local var_92_3, var_92_4 = var_0_21:getDimensions()
		local var_92_5 = 1.5
		local var_92_6 = 20
		local var_92_7 = 10
		local var_92_8 = tostring(math.floor(var_0_23))
		local var_92_9 = var_0_8 or var_0_7 or var_92_2

		love.graphics.setFont(var_92_9)

		local var_92_10 = 1.1
		local var_92_11 = var_92_9:getWidth(var_92_8) * var_92_10
		local var_92_12 = var_92_9:getHeight() * var_92_10
		local var_92_13 = var_92_3 * var_92_5 + var_92_7 + var_92_11
		local var_92_14 = var_92_0 - var_92_6 - var_92_13
		local var_92_15 = var_92_6

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_0_21, math.floor(var_92_14), math.floor(var_92_15), 0, var_92_5, var_92_5)

		local var_92_16 = var_92_15 + (var_92_4 * var_92_5 - var_92_12) / 2

		love.graphics.print(var_92_8, math.floor(var_92_14 + var_92_3 * var_92_5 + var_92_7), math.floor(var_92_16), 0, var_92_10, var_92_10)

		for iter_92_0, iter_92_1 in ipairs(var_0_120) do
			local var_92_17 = var_0_79(tonumber(iter_92_1.alpha or 1 - iter_92_1.t / (iter_92_1.dur or 1)) or 1, 0, 1)

			love.graphics.setColor(iter_92_1.color[1], iter_92_1.color[2], iter_92_1.color[3], var_92_17)

			local var_92_18 = var_92_9:getWidth(iter_92_1.text) * var_92_10
			local var_92_19 = var_92_14 + var_92_3 * var_92_5 + var_92_7 + var_92_11 - var_92_18 + (iter_92_1.xOffset or 0)
			local var_92_20 = var_92_16 + var_92_12 + iter_92_1.yOffset

			love.graphics.print(iter_92_1.text, math.floor(var_92_19), math.floor(var_92_20), 0, var_92_10, var_92_10)
		end
	end
end

local function var_0_143(arg_93_0, arg_93_1, arg_93_2, arg_93_3)
	local var_93_0 = "Demo v0.2.8"
	local var_93_1 = var_0_8 or var_0_7 or arg_93_0 and arg_93_0.font or love.graphics.getFont()

	if not var_93_1 then
		return
	end

	love.graphics.setFont(var_93_1)
	love.graphics.setColor(0.6862745098039216, 0.6588235294117647, 0.6039215686274509, arg_93_3 or 1)

	local var_93_2 = 1
	local var_93_3 = 8
	local var_93_4 = arg_93_2 - var_93_1:getHeight() * var_93_2 - 8

	love.graphics.print(var_93_0, math.floor(var_93_3 + 0.5), math.floor(var_93_4 + 0.5), 0, var_93_2, var_93_2)
end

function var_0_4.drawUI(arg_94_0)
	local var_94_0 = arg_94_0.virtual.W
	local var_94_1 = arg_94_0.virtual.H
	local var_94_2 = arg_94_0.fontTitle or love.graphics.getFont()
	local var_94_3 = var_0_79(tonumber(var_0_4._menuFadeAlpha or 1) or 1, 0, 1)
	local var_94_4 = math.floor((var_0_4._menuLogoOffsetY or 0) + 0.5)
	local var_94_5 = math.floor((var_0_4._menuButtonsOffsetY or 0) + 0.5)
	local var_94_6 = arg_94_0 and arg_94_0.mainMenuLogo or {}

	var_0_115.targetY = tonumber(var_94_6.targetY) or 0

	if var_0_13 then
		love.graphics.setColor(1, 1, 1, var_94_3)

		local var_94_7, var_94_8 = var_0_13:getDimensions()
		local var_94_9 = tonumber(var_94_6.scale) or 1.7
		local var_94_10 = math.floor((var_94_6.offsetX or 0) + 0.5)
		local var_94_11 = math.floor((var_94_6.offsetY or 0) + 0.5)
		local var_94_12 = math.floor((var_94_0 - var_94_7 * var_94_9) / 2 + var_94_10)
		local var_94_13 = math.floor(var_0_115.y + var_94_4 + var_94_11)

		love.graphics.draw(var_0_13, var_94_12, var_94_13, 0, var_94_9, var_94_9)
	else
		local var_94_14 = "Slot Tactics"

		love.graphics.setFont(var_94_2)

		local var_94_15 = 2
		local var_94_16 = var_94_2:getWidth(var_94_14) * var_94_15
		local var_94_17 = var_94_2:getHeight() * var_94_15

		love.graphics.setColor(1, 0.8, 0.2, var_94_3)
		love.graphics.print(var_94_14, (var_94_0 - var_94_16) / 2, var_94_1 * 0.15, 0, var_94_15, var_94_15)
	end

	local var_94_18 = math.floor(var_94_1 * 0.012 + 10 + 0.5)
	local var_94_19 = var_94_1 * 0.35 + var_94_18
	local var_94_20 = 37
	local var_94_21 = math.floor(var_94_1 * 0.028 - 10)
	local var_94_22 = var_0_7 or var_94_2

	love.graphics.setFont(var_94_22)

	local var_94_23 = arg_94_0 and arg_94_0.menuSettings and arg_94_0.menuSettings.language or "ko"
	local var_94_24
	local var_94_25

	if var_0_24 then
		local var_94_26 = var_0_24:getWidth()

		var_94_25 = var_0_24:getHeight()
	else
		local var_94_27 = var_0_2.getText(var_0_4.buttons[1].textKey, var_94_23)
		local var_94_28 = var_94_22:getWidth(var_94_27) + 40

		var_94_25 = var_94_22:getHeight() + 20
	end

	if var_0_28 then
		love.graphics.setColor(1, 1, 1, var_94_3)

		local var_94_29, var_94_30 = var_0_28:getDimensions()

		if var_94_29 > 0 and var_94_30 > 0 then
			local var_94_31 = math.floor(var_94_19 + 0 * var_94_20 + var_94_25 / 2 + var_94_5)
			local var_94_32 = math.floor(var_94_19 + 2 * var_94_20 + var_94_25 / 2 + var_94_5)
			local var_94_33 = math.floor((var_94_31 + var_94_32) / 2 + var_94_21 + 0.5)

			love.graphics.draw(var_0_28, math.floor(var_94_0 / 2), var_94_33, 0, 1, 1, math.floor(var_94_29 / 2), math.floor(var_94_30 / 2))
		end
	end

	love.graphics.setColor(1, 1, 1, var_94_3)

	for iter_94_0, iter_94_1 in ipairs(var_0_4.buttons) do
		local var_94_34 = var_0_2.getText(iter_94_1.textKey, var_94_23)
		local var_94_35 = var_94_22:getWidth(var_94_34)
		local var_94_36 = var_94_22:getHeight()
		local var_94_37 = iter_94_1.scale or 1
		local var_94_38 = iter_94_1.id == "play" and var_0_25
		local var_94_39 = iter_94_1.id == "settings" and var_0_26
		local var_94_40 = iter_94_1.id == "exit" and var_0_27
		local var_94_41 = (var_94_38 or var_94_39 or var_94_40) and 2 or 1
		local var_94_42
		local var_94_43

		if var_94_38 then
			var_94_42 = var_0_25:getWidth()
			var_94_43 = var_0_25:getHeight()
		elseif var_94_39 then
			var_94_42 = var_0_26:getWidth()
			var_94_43 = var_0_26:getHeight()
		elseif var_94_40 then
			var_94_42 = var_0_27:getWidth()
			var_94_43 = var_0_27:getHeight()
		elseif var_0_24 then
			var_94_42 = var_0_24:getWidth()
			var_94_43 = var_0_24:getHeight()
		else
			var_94_42 = var_94_35 + 40
			var_94_43 = var_94_36 + 20
		end

		local var_94_44 = math.floor(var_94_0 / 2)
		local var_94_45 = math.floor(var_94_19 + (iter_94_0 - 1) * var_94_20 + var_94_25 / 2 + var_94_5)
		local var_94_46 = var_94_42 * var_94_37 * var_94_41
		local var_94_47 = var_94_43 * var_94_37 * var_94_41

		iter_94_1.rect = {
			x = var_94_44 - var_94_46 / 2,
			y = var_94_45 - var_94_47 / 2,
			w = var_94_46,
			h = var_94_47
		}

		love.graphics.setColor(1, 1, 1, var_94_3)

		if var_94_38 then
			love.graphics.draw(var_0_25, var_94_44, var_94_45, 0, var_94_37 * var_94_41, var_94_37 * var_94_41, math.floor(var_94_42 / 2), math.floor(var_94_43 / 2))
		elseif var_94_39 then
			love.graphics.draw(var_0_26, var_94_44, var_94_45, 0, var_94_37 * var_94_41, var_94_37 * var_94_41, math.floor(var_94_42 / 2), math.floor(var_94_43 / 2))
		elseif var_94_40 then
			love.graphics.draw(var_0_27, var_94_44, var_94_45, 0, var_94_37 * var_94_41, var_94_37 * var_94_41, math.floor(var_94_42 / 2), math.floor(var_94_43 / 2))
		elseif var_0_24 then
			love.graphics.draw(var_0_24, var_94_44, var_94_45, 0, var_94_37, var_94_37, math.floor(var_94_42 / 2), math.floor(var_94_43 / 2))

			local var_94_48 = var_94_37 * 1.1

			love.graphics.print(var_94_34, var_94_44, math.floor(var_94_45 - 2), 0, var_94_48, var_94_48, math.floor(var_94_35 / 2), math.floor(var_94_36 / 2))
		else
			local var_94_49 = var_94_37 * 1.1

			love.graphics.print(var_94_34, var_94_44, math.floor(var_94_45 - 2), 0, var_94_49, var_94_49, math.floor(var_94_35 / 2), math.floor(var_94_36 / 2))
		end
	end

	love.graphics.setColor(1, 1, 1, var_94_3)

	local var_94_50 = var_0_8 or var_0_7 or var_94_22

	love.graphics.setFont(var_94_50)

	var_0_4.upgradeRect = nil
	var_0_4.collectionRect = nil
	var_0_4.achievementRect = nil
	var_0_4.discordRect = nil

	local var_94_51
	local var_94_52

	if var_0_20 then
		local var_94_53 = arg_94_0 and arg_94_0.mainMenuUpgradeButton or {}
		local var_94_54 = tonumber(var_94_53.paddingRight)

		if var_94_54 == nil then
			var_94_54 = 40
		end

		local var_94_55 = tonumber(var_94_53.paddingBottom)

		if var_94_55 == nil then
			var_94_55 = var_94_54
		end

		local var_94_56 = math.floor((tonumber(var_94_53.offsetX) or 0) + 0.5)
		local var_94_57 = math.floor((tonumber(var_94_53.offsetY) or 0) + 0.5)
		local var_94_58 = string.upper(var_0_2.getText("upgrade_title", var_94_23) or "")
		local var_94_59 = tonumber(var_94_53.iconScale) or tonumber(var_94_53.drawMul) or 1.5
		local var_94_60, var_94_61 = var_0_20:getDimensions()
		local var_94_62 = var_94_60 * var_94_59
		local var_94_63 = math.floor(var_94_0 - var_94_54 - var_94_62 / 2 + var_94_56)
		local var_94_64 = math.floor(var_94_1 - var_94_55 - var_94_61 * var_94_59 / 2 + var_94_5 + var_94_57)

		var_94_51 = var_0_75(var_94_53, var_0_20, var_94_58, var_94_50, var_94_63, var_94_64)
		var_0_4.upgradeState = var_0_4.upgradeState or {
			scale = 1
		}
		var_0_4.upgradeRect = var_0_77(var_94_51, var_0_20, var_94_58, var_94_50, var_94_3, var_0_4.upgradeState.scale or 1, 0, false)
	end

	if var_0_18 then
		local var_94_65 = arg_94_0 and arg_94_0.mainMenuDiscordButton or {}
		local var_94_66 = tonumber(var_94_65.paddingRight) or 40
		local var_94_67 = tonumber(var_94_65.paddingBottom) or var_94_66
		local var_94_68 = tonumber(var_94_65.iconScale) or tonumber(var_94_65.drawMul) or 1.5
		local var_94_69, var_94_70 = var_0_18:getDimensions()
		local var_94_71 = var_0_2.getText("menu_discord", var_94_23) or "Discord"
		local var_94_72 = math.floor(var_94_0 - var_94_66 - var_94_69 * var_94_68 / 2 + (tonumber(var_94_65.offsetX) or 0))
		local var_94_73 = math.floor(var_94_1 - var_94_67 - var_94_70 * var_94_68 / 2 + var_94_5 + (tonumber(var_94_65.offsetY) or 0))
		local var_94_74 = var_0_75(var_94_65, var_0_18, var_94_71, var_94_50, var_94_72, var_94_73)

		var_0_4.discordState = var_0_4.discordState or {
			scale = 1
		}
		var_0_4.discordRect = var_0_77(var_94_74, var_0_18, var_94_71, var_94_50, var_94_3, var_0_4.discordState.scale or 1, 0, false)
	end

	if var_0_14 then
		local var_94_75 = arg_94_0 and arg_94_0.mainMenuCollectionButton or {}
		local var_94_76 = string.upper(var_0_2.getText("menu_collection", var_94_23) or "")
		local var_94_77
		local var_94_78

		if var_94_51 then
			local var_94_79 = tonumber(var_94_75.gapFromUpgradePx) or 24
			local var_94_80 = tonumber(var_94_75.iconScale) or tonumber(var_94_75.drawMul) or 1.5
			local var_94_81 = var_0_14:getDimensions() * var_94_80

			var_94_77 = math.floor(var_94_51.iconScreenCx - var_94_51.idleIconW / 2 - var_94_79 - var_94_81 / 2 + (tonumber(var_94_75.offsetX) or 0))
			var_94_78 = math.floor(var_94_51.iconScreenCy + (tonumber(var_94_75.offsetY) or 0))
		else
			local var_94_82 = tonumber(var_94_75.paddingRight) or 40
			local var_94_83 = tonumber(var_94_75.paddingBottom) or var_94_82
			local var_94_84 = tonumber(var_94_75.iconScale) or 1.5
			local var_94_85, var_94_86 = var_0_14:getDimensions()

			var_94_77 = math.floor(var_94_0 - var_94_82 - var_94_85 * var_94_84 / 2 + (tonumber(var_94_75.offsetX) or 0))
			var_94_78 = math.floor(var_94_1 - var_94_83 - var_94_86 * var_94_84 / 2 + var_94_5 + (tonumber(var_94_75.offsetY) or 0))
		end

		var_94_52 = var_0_75(var_94_75, var_0_14, var_94_76, var_94_50, var_94_77, var_94_78)
		var_0_4.collectionState = var_0_4.collectionState or {
			scale = 1
		}

		local var_94_87 = 0

		if var_0_4.collectionShake then
			local var_94_88 = math.max(0.001, var_0_4.collectionShake.dur or 0.28)
			local var_94_89 = var_0_4.collectionShake.t or 0
			local var_94_90 = var_0_4.collectionShake.amp or 2.5
			local var_94_91 = var_0_4.collectionShake.freq or 58
			local var_94_92 = math.min(1, var_94_89 / var_94_88)

			var_94_87 = math.sin(var_94_89 * var_94_91) * var_94_90 * (1 - var_94_92)
		end

		local var_94_93 = var_0_14

		if var_0_15 and (var_0_4._collectionHovering or var_0_4.collectionState and var_0_4.collectionState.pressed) then
			var_94_93 = var_0_15
		end

		var_0_4.collectionRect = var_0_77(var_94_52, var_94_93, var_94_76, var_94_50, var_94_3, var_0_4.collectionState.scale or 1, var_94_87, var_0_4.collectionLocked == true)
	end

	if var_0_16 and var_94_52 then
		local var_94_94 = arg_94_0 and arg_94_0.mainMenuAchievementButton or {}
		local var_94_95 = string.upper(var_0_2.getText("menu_achievement", var_94_23) or "")
		local var_94_96 = tonumber(var_94_94.gapFromCollectionPx) or 24
		local var_94_97 = var_0_76(var_94_52, var_94_52.idleIconW, var_94_96, var_0_16, var_94_94)
		local var_94_98 = math.floor(var_94_52.iconScreenCy + (tonumber(var_94_94.offsetY) or 0))
		local var_94_99 = var_0_75(var_94_94, var_0_16, var_94_95, var_94_50, var_94_97, var_94_98)

		var_0_4.achievementState = var_0_4.achievementState or {
			scale = 1
		}

		local var_94_100 = 0

		if var_0_4.achievementShake then
			local var_94_101 = math.max(0.001, var_0_4.achievementShake.dur or 0.28)
			local var_94_102 = var_0_4.achievementShake.t or 0
			local var_94_103 = var_0_4.achievementShake.amp or 2.5
			local var_94_104 = var_0_4.achievementShake.freq or 58
			local var_94_105 = math.min(1, var_94_102 / var_94_101)

			var_94_100 = math.sin(var_94_102 * var_94_104) * var_94_103 * (1 - var_94_105)
		end

		local var_94_106 = var_0_16

		if var_0_17 and (var_0_4._achievementHovering or var_0_4.achievementState and var_0_4.achievementState.pressed) then
			var_94_106 = var_0_17
		end

		var_0_4.achievementRect = var_0_77(var_94_99, var_94_106, var_94_95, var_94_50, var_94_3, var_0_4.achievementState.scale or 1, var_94_100, var_0_4.achievementLocked == true)
	end

	if var_0_4.collectionLocked then
		var_0_122(arg_94_0, var_94_0, var_94_1, var_94_3, var_94_23, var_0_4.collectionRect, arg_94_0 and arg_94_0.mainMenuCollectionButton, var_0_4._collectionHintAlpha, "menu_collection_locked_hint")
	end

	if var_0_4.achievementLocked then
		var_0_122(arg_94_0, var_94_0, var_94_1, var_94_3, var_94_23, var_0_4.achievementRect, arg_94_0 and arg_94_0.mainMenuAchievementButton, var_0_4._achievementHintAlpha, "menu_achievement_locked_hint")
	end

	var_0_143(arg_94_0, var_94_0, var_94_1, var_94_3)
	var_0_141(arg_94_0)
end

function var_0_4.drawMessageWindow(arg_95_0, arg_95_1, arg_95_2, arg_95_3, arg_95_4)
	if not arg_95_0 then
		return
	end

	local var_95_0 = arg_95_4 or 1

	arg_95_1 = math.floor(arg_95_1 + 0.5)
	arg_95_2 = math.floor(arg_95_2 + 0.5)

	local var_95_1 = (arg_95_3 and arg_95_3.restartConfirm or {}).shadow or {}

	if var_95_1.enabled ~= false then
		local var_95_2 = math.floor((var_95_1.offsetX or 5) + 0.5)
		local var_95_3 = math.floor((var_95_1.offsetY or 5) + 0.5)
		local var_95_4 = var_95_1.color or {
			0,
			0,
			0,
			0.55
		}

		love.graphics.setColor(var_95_4[1] or 0, var_95_4[2] or 0, var_95_4[3] or 0, (var_95_4[4] or 0.55) * var_95_0)
		love.graphics.draw(arg_95_0, arg_95_1 + var_95_2, arg_95_2 + var_95_3)
	end

	love.graphics.setColor(1, 1, 1, var_95_0)
	love.graphics.draw(arg_95_0, arg_95_1, arg_95_2)
end

function var_0_4.drawExitConfirm(arg_96_0, arg_96_1)
	if not var_0_4.exitConfirm.active then
		return
	end

	local var_96_0 = arg_96_1 and arg_96_1.ui and arg_96_1.ui.messageWindow

	if not var_96_0 then
		return
	end

	local var_96_1 = var_0_4.exitConfirm
	local var_96_2 = arg_96_0 and arg_96_0.restartConfirm or {}
	local var_96_3 = arg_96_0.virtual.W
	local var_96_4 = arg_96_0.virtual.H
	local var_96_5 = var_96_0:getWidth()
	local var_96_6 = var_96_0:getHeight()
	local var_96_7 = var_96_2.centerY or math.floor(var_96_4 * (var_96_2.centerFracY or 0.5) + 0.5)
	local var_96_8 = var_96_2.boardOffsetY or 0

	var_96_1.targetY = math.floor(var_96_7 - var_96_6 * 0.5 + var_96_8 + 0.5)

	local var_96_9 = var_96_2.centerX or math.floor(var_96_3 * (var_96_2.centerFracX or 0.5) + 0.5)
	local var_96_10 = var_96_2.boardOffsetX or 0
	local var_96_11 = math.floor(var_96_9 - var_96_5 * 0.5 + var_96_10 + 0.5)
	local var_96_12 = math.floor(var_96_1.y + 0.5)

	var_0_4.drawMessageWindow(var_96_0, var_96_11, var_96_12, arg_96_0, 1)

	local var_96_13 = var_96_2.font or arg_96_0.coreMessage and arg_96_0.coreMessage.font or arg_96_0.font or love.graphics.getFont()

	love.graphics.setFont(var_96_13)

	local var_96_14 = arg_96_0 and arg_96_0.menuSettings and arg_96_0.menuSettings.language or "ko"
	local var_96_15 = var_96_1.prompt or var_0_2.getText("menu_exit_confirm", var_96_14)
	local var_96_16 = var_96_13:getWidth(var_96_15)
	local var_96_17 = var_96_13:getHeight()
	local var_96_18 = var_96_2.prompt or {}
	local var_96_19 = math.floor((var_96_3 - var_96_16) * 0.5 + (var_96_18.offsetX or 0) + 0.5)
	local var_96_20 = var_96_12 + math.max(var_96_18.topPadMinPx or 16, math.floor(var_96_6 * (var_96_18.yFrac or 0.24))) + (var_96_18.offsetY or 0)
	local var_96_21 = var_96_18.color or {
		0.898,
		0.886,
		0.941,
		1
	}

	love.graphics.setColor(var_96_21)
	love.graphics.print(var_96_15, var_96_19, var_96_20)

	local var_96_22 = var_0_2.getText("menu_yes", var_96_14)
	local var_96_23 = var_0_2.getText("menu_no", var_96_14)
	local var_96_24 = var_96_13:getWidth(var_96_22)
	local var_96_25 = var_96_13:getWidth(var_96_23)
	local var_96_26 = var_96_17
	local var_96_27 = var_96_2.hitPad and var_96_2.hitPad.x or 12
	local var_96_28 = var_96_2.hitPad and var_96_2.hitPad.y or 6
	local var_96_29 = var_96_2.yes or {}
	local var_96_30 = var_96_2.no or {}
	local var_96_31 = var_96_12 + var_96_6 - var_96_26 - math.max(var_96_2.bottomPadMinPx or 10, math.floor(var_96_6 * (var_96_29.yFracFromBottom or 0.1)))
	local var_96_32 = math.max(var_96_2.sidePadMinPx or 10, math.floor(var_96_5 * (var_96_29.xFrac or 0.06)))
	local var_96_33 = math.max(var_96_2.sidePadMinPx or 10, math.floor(var_96_5 * (var_96_30.xFrac or 0.06)))
	local var_96_34 = var_96_11 + var_96_32 + (var_96_29.offsetX or 0)
	local var_96_35 = var_96_11 + var_96_5 - var_96_33 - var_96_25 + (var_96_30.offsetX or 0)
	local var_96_36 = var_96_31 + (var_96_29.offsetY or 0)
	local var_96_37 = var_96_31 + (var_96_30.offsetY or 0)
	local var_96_38 = var_96_29.color or {
		0.949,
		0.902,
		0.788,
		1
	}
	local var_96_39 = var_96_30.color or {
		0.949,
		0.902,
		0.788,
		1
	}

	love.graphics.setColor(var_96_38)
	love.graphics.print(var_96_22, var_96_34, var_96_36)
	love.graphics.setColor(var_96_39)
	love.graphics.print(var_96_23, var_96_35, var_96_37)

	var_96_1.rectYes = {
		x = var_96_34 - var_96_27,
		y = var_96_36 - var_96_28,
		w = var_96_24 + var_96_27 * 2,
		h = var_96_26 + var_96_28 * 2
	}
	var_96_1.rectNo = {
		x = var_96_35 - var_96_27,
		y = var_96_37 - var_96_28,
		w = var_96_25 + var_96_27 * 2,
		h = var_96_26 + var_96_28 * 2
	}

	local var_96_40 = var_96_2.hoverUnderline

	if var_96_40 and var_96_40.enabled ~= false and not var_96_1.leaving then
		local var_96_41 = arg_96_0 and arg_96_0.battle and arg_96_0.battle.unitScale or 1
		local var_96_42 = math.max(1, math.floor((var_96_40.thicknessSourcePx or 1) * var_96_41 + 0.5))
		local var_96_43 = var_96_40.gapPx or 2
		local var_96_44 = var_96_40.padX or 0

		love.graphics.setColor(var_96_40.color or {
			0.9490196078431372,
			0.6509803921568628,
			0.3686274509803922,
			1
		})

		if var_96_1.ulYesProg and var_96_1.ulYesProg > 0 then
			local var_96_45 = var_96_34 - var_96_27 - var_96_44
			local var_96_46 = var_96_24 + var_96_27 * 2 + var_96_44 * 2
			local var_96_47 = math.max(1, math.floor(var_96_46 * var_96_1.ulYesProg + 0.5))
			local var_96_48 = var_96_36 + var_96_26 + var_96_43

			love.graphics.rectangle("fill", math.floor(var_96_45 + 0.5), math.floor(var_96_48 + 0.5), var_96_47, var_96_42)
		end

		if var_96_1.ulNoProg and var_96_1.ulNoProg > 0 then
			local var_96_49 = var_96_35 - var_96_27 - var_96_44
			local var_96_50 = var_96_25 + var_96_27 * 2 + var_96_44 * 2
			local var_96_51 = math.max(1, math.floor(var_96_50 * var_96_1.ulNoProg + 0.5))
			local var_96_52 = var_96_36 + var_96_26 + var_96_43

			love.graphics.rectangle("fill", math.floor(var_96_49 + 0.5), math.floor(var_96_52 + 0.5), var_96_51, var_96_42)
		end
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function var_0_4.mousepressed(arg_97_0, arg_97_1, arg_97_2)
	if arg_97_2 == 1 then
		if var_0_4.stageSelect and var_0_4.stageSelect.active then
			local var_97_0 = var_0_4.stageSelect

			if var_97_0.showDebugUnlockPanel then
				local var_97_1 = 500
				local var_97_2 = 50
				local var_97_3 = (var_0_5.virtual.W - var_97_1) * 0.5
				local var_97_4 = 20
				local var_97_5 = 200
				local var_97_6 = 34
				local var_97_7 = 40
				local var_97_8 = var_97_4 + (var_97_2 - var_97_6) * 0.5
				local var_97_9 = var_97_3 + (var_97_1 - (var_97_5 * 2 + var_97_7)) * 0.5
				local var_97_10 = var_97_9 + var_97_5 + var_97_7

				if var_97_0.debugMedalButtons then
					for iter_97_0, iter_97_1 in ipairs(var_97_0.debugMedalButtons) do
						if arg_97_0 >= iter_97_1.x and arg_97_0 <= iter_97_1.x + iter_97_1.w and arg_97_1 >= iter_97_1.y and arg_97_1 <= iter_97_1.y + iter_97_1.h then
							if var_0_4.toggleDifficultyCleared then
								var_0_4.toggleDifficultyCleared(iter_97_1.stageKey or var_97_0.selectedStage or 1, iter_97_1.diffKey or 1)
							end

							if var_0_30 then
								if var_0_30:isPlaying() then
									var_0_30:stop()
								end

								var_0_30:play()
							end

							return nil
						end
					end
				end

				if var_97_0.diffActive then
					if var_97_9 <= arg_97_0 and arg_97_0 <= var_97_9 + var_97_5 and var_97_8 <= arg_97_1 and arg_97_1 <= var_97_8 + var_97_6 then
						var_97_0.unlockedDifficulties = var_97_0.unlockedDifficulties or {
							{
								true,
								false,
								false
							},
							{
								true,
								false,
								false
							},
							{
								true,
								false,
								false
							}
						}

						local var_97_11 = var_97_0.selectedStage or 1

						var_97_0.unlockedDifficulties[var_97_11] = var_97_0.unlockedDifficulties[var_97_11] or {
							true,
							false,
							false
						}
						var_97_0.unlockedDifficulties[var_97_11][2] = not var_97_0.unlockedDifficulties[var_97_11][2]

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						return nil
					end

					if var_97_10 <= arg_97_0 and arg_97_0 <= var_97_10 + var_97_5 and var_97_8 <= arg_97_1 and arg_97_1 <= var_97_8 + var_97_6 then
						var_97_0.unlockedDifficulties = var_97_0.unlockedDifficulties or {
							{
								true,
								false,
								false
							},
							{
								true,
								false,
								false
							},
							{
								true,
								false,
								false
							}
						}

						local var_97_12 = var_97_0.selectedStage or 1

						var_97_0.unlockedDifficulties[var_97_12] = var_97_0.unlockedDifficulties[var_97_12] or {
							true,
							false,
							false
						}
						var_97_0.unlockedDifficulties[var_97_12][3] = not var_97_0.unlockedDifficulties[var_97_12][3]

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						return nil
					end
				else
					if var_97_9 <= arg_97_0 and arg_97_0 <= var_97_9 + var_97_5 and var_97_8 <= arg_97_1 and arg_97_1 <= var_97_8 + var_97_6 then
						var_97_0.unlockedStages = var_97_0.unlockedStages or {
							true,
							false,
							false
						}
						var_97_0.unlockedStages[2] = not var_97_0.unlockedStages[2]

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						return nil
					end

					if var_97_10 <= arg_97_0 and arg_97_0 <= var_97_10 + var_97_5 and var_97_8 <= arg_97_1 and arg_97_1 <= var_97_8 + var_97_6 then
						var_97_0.unlockedStages = var_97_0.unlockedStages or {
							true,
							false,
							false
						}
						var_97_0.unlockedStages[3] = not var_97_0.unlockedStages[3]

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						return nil
					end
				end
			end

			if var_97_0.diffActive and var_97_0.diffRects then
				for iter_97_2, iter_97_3 in ipairs(var_97_0.diffRects) do
					local var_97_13 = iter_97_2 == 1 and var_0_50 or iter_97_2 == 2 and var_0_51 or iter_97_2 == 3 and var_0_52

					if var_97_13 then
						if var_0_95(var_97_13, arg_97_0, arg_97_1, iter_97_3.x, iter_97_3.y, iter_97_3.s or 1, 3, 0.05) then
							var_97_0.diffPressedIdx = iter_97_2

							return nil
						end
					elseif arg_97_0 >= iter_97_3.x and arg_97_0 <= iter_97_3.x + iter_97_3.w and arg_97_1 >= iter_97_3.y and arg_97_1 <= iter_97_3.y + iter_97_3.h then
						var_97_0.diffPressedIdx = iter_97_2

						return nil
					end
				end
			end

			var_97_0.pressedIndex = nil

			if var_97_0.back and var_97_0.back.rect then
				local var_97_14 = var_97_0.back.rect

				if arg_97_0 >= var_97_14.x and arg_97_0 <= var_97_14.x + var_97_14.w and arg_97_1 >= var_97_14.y and arg_97_1 <= var_97_14.y + var_97_14.h then
					var_97_0.back.pressed = true

					return nil
				end
			end

			if not var_97_0.diffActive and var_97_0.pageArrow and var_97_0.pageArrow.rect and (var_97_0.pageSlideT or 0) <= 0 then
				local var_97_15 = var_97_0.pageArrow.rect

				if arg_97_0 >= var_97_15.x and arg_97_0 <= var_97_15.x + var_97_15.w and arg_97_1 >= var_97_15.y and arg_97_1 <= var_97_15.y + var_97_15.h then
					var_97_0.pagePressed = var_0_100(var_97_0)

					return nil
				end
			end

			if var_97_0.stageRects and (var_97_0.pageSlideT or 0) <= 0 then
				for iter_97_4, iter_97_5 in ipairs(var_97_0.stageRects) do
					local var_97_16 = iter_97_4 == 1 and var_0_43 or var_0_44

					if var_97_16 then
						local var_97_17 = var_0_95(var_97_16, arg_97_0, arg_97_1, iter_97_5.x, iter_97_5.y, iter_97_5.s or 1, 3, 0.05)

						if not var_97_17 and iter_97_5.stageArtData and iter_97_5.stageArtX and iter_97_5.stageArtY then
							var_97_17 = var_0_95(iter_97_5.stageArtData, arg_97_0, arg_97_1, iter_97_5.stageArtX, iter_97_5.stageArtY, iter_97_5.s or 1, 3, 0.05)
						end

						if var_97_17 then
							var_97_0.pressedIndex = iter_97_4

							return nil
						end
					elseif arg_97_0 >= iter_97_5.x and arg_97_0 <= iter_97_5.x + iter_97_5.w and arg_97_1 >= iter_97_5.y and arg_97_1 <= iter_97_5.y + iter_97_5.h then
						var_97_0.pressedIndex = iter_97_4

						return nil
					end
				end
			end

			return nil
		end

		if var_0_4.exitConfirm.active then
			local var_97_18 = var_0_4.exitConfirm

			if var_97_18.rectYes and arg_97_0 >= var_97_18.rectYes.x and arg_97_0 <= var_97_18.rectYes.x + var_97_18.rectYes.w and arg_97_1 >= var_97_18.rectYes.y and arg_97_1 <= var_97_18.rectYes.y + var_97_18.rectYes.h then
				local var_97_19 = var_97_18.action or "exit"

				var_97_18.active = false
				var_97_18.leaving = false

				return var_97_19
			elseif var_97_18.rectNo and arg_97_0 >= var_97_18.rectNo.x and arg_97_0 <= var_97_18.rectNo.x + var_97_18.rectNo.w and arg_97_1 >= var_97_18.rectNo.y and arg_97_1 <= var_97_18.rectNo.y + var_97_18.rectNo.h then
				var_97_18.leaving = true

				return nil
			end

			return nil
		end

		if var_0_4.inputCooldown and var_0_4.inputCooldown > 0 then
			return nil
		end

		if var_0_4.discordRect then
			local var_97_20 = var_0_4.discordRect

			if arg_97_0 >= var_97_20.x and arg_97_0 <= var_97_20.x + var_97_20.w and arg_97_1 >= var_97_20.y and arg_97_1 <= var_97_20.y + var_97_20.h then
				var_0_4.discordState = var_0_4.discordState or {}
				var_0_4.discordState.pressed = true

				if var_0_30 then
					if var_0_30:isPlaying() then
						var_0_30:stop()
					end

					var_0_30:play()
				end

				if love.system and love.system.openURL then
					pcall(love.system.openURL, var_0_72)
				end

				var_0_4.inputCooldown = var_0_121

				return nil
			end
		end

		if var_0_4.collectionRect then
			local var_97_21 = var_0_4.collectionRect

			if arg_97_0 >= var_97_21.x and arg_97_0 <= var_97_21.x + var_97_21.w and arg_97_1 >= var_97_21.y and arg_97_1 <= var_97_21.y + var_97_21.h then
				var_0_4.collectionState = var_0_4.collectionState or {}
				var_0_4.collectionState.pressed = true

				return nil
			end
		end

		if var_0_4.achievementRect then
			local var_97_22 = var_0_4.achievementRect

			if arg_97_0 >= var_97_22.x and arg_97_0 <= var_97_22.x + var_97_22.w and arg_97_1 >= var_97_22.y and arg_97_1 <= var_97_22.y + var_97_22.h then
				var_0_4.achievementState = var_0_4.achievementState or {}
				var_0_4.achievementState.pressed = true

				return nil
			end
		end

		if var_0_4.upgradeRect then
			local var_97_23 = var_0_4.upgradeRect

			if arg_97_0 >= var_97_23.x and arg_97_0 <= var_97_23.x + var_97_23.w and arg_97_1 >= var_97_23.y and arg_97_1 <= var_97_23.y + var_97_23.h then
				var_0_4.upgradeState = var_0_4.upgradeState or {}
				var_0_4.upgradeState.pressed = true

				return nil
			end
		end

		local var_97_24 = var_0_74(var_0_4.buttons, arg_97_0, arg_97_1)

		if var_97_24 then
			local var_97_25 = var_0_4.buttons[var_97_24]

			if var_97_25.rect then
				var_97_25.pressed = true

				return nil
			end
		end
	end

	return nil
end

function var_0_4.mousereleased(arg_98_0, arg_98_1, arg_98_2)
	if arg_98_2 == 1 then
		if var_0_4.stageSelect and var_0_4.stageSelect.active then
			local var_98_0 = var_0_4.stageSelect
			local var_98_1 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720

			if var_98_0.diffActive and var_98_0.diffPressedIdx then
				local var_98_2 = var_98_0.diffPressedIdx
				local var_98_3 = var_98_0.diffRects and var_98_0.diffRects[var_98_2]

				var_98_0.diffPressedIdx = nil

				local var_98_4 = false

				if var_98_3 then
					local var_98_5 = var_98_2 == 1 and var_0_50 or var_98_2 == 2 and var_0_51 or var_98_2 == 3 and var_0_52

					if var_98_5 then
						var_98_4 = var_0_95(var_98_5, arg_98_0, arg_98_1, var_98_3.x, var_98_3.y, var_98_3.s or 1, 3, 0.05)
					else
						var_98_4 = arg_98_0 >= var_98_3.x and arg_98_0 <= var_98_3.x + var_98_3.w and arg_98_1 >= var_98_3.y and arg_98_1 <= var_98_3.y + var_98_3.h
					end
				end

				if var_98_4 then
					if var_0_126(var_98_0.selectedStage, var_98_2) then
						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						local var_98_6 = var_98_0.selectedStage or 1
						local var_98_7 = 1

						if var_98_2 == 1 then
							var_98_7 = 1
						elseif var_98_2 == 2 then
							var_98_7 = 2
						elseif var_98_2 == 3 then
							var_98_7 = 3
						end

						if var_98_0.newStages then
							var_98_0.newStages[var_98_6] = nil
						end

						return {
							type = "play",
							stage = var_98_6,
							difficulty = var_98_7
						}
					else
						var_98_0.diffShakeFeedbacks = var_98_0.diffShakeFeedbacks or {}
						var_98_0.diffShakeFeedbacks[var_98_2] = 0.28

						if var_0_29 then
							if var_0_29:isPlaying() then
								var_0_29:stop()
							end

							var_0_29:play()
						end
					end
				end
			end

			if var_98_0.back and var_98_0.back.pressed then
				var_98_0.back.pressed = false

				if var_98_0.back.rect then
					local var_98_8 = var_98_0.back.rect

					if arg_98_0 >= var_98_8.x and arg_98_0 <= var_98_8.x + var_98_8.w and arg_98_1 >= var_98_8.y and arg_98_1 <= var_98_8.y + var_98_8.h then
						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						if var_98_0.diffActive then
							if var_0_37[math.floor(tonumber(var_98_0.selectedStage or 0) or 0)] then
								var_0_91(var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or nil)
							end

							var_98_0.diffActive = false
							var_98_0.diffTargetY = var_98_1
							var_98_0.diffClosing = true
						else
							var_0_113(var_0_5)
						end

						return nil
					end
				end
			end

			if var_98_0.pagePressed then
				local var_98_9 = var_98_0.pagePressed

				var_98_0.pagePressed = nil

				local var_98_10 = var_98_0.pageArrow and var_98_0.pageArrow.rect

				if not var_98_0.diffActive and var_98_10 and arg_98_0 >= var_98_10.x and arg_98_0 <= var_98_10.x + var_98_10.w and arg_98_1 >= var_98_10.y and arg_98_1 <= var_98_10.y + var_98_10.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					var_0_109(var_98_0, var_98_9 == 1 and 2 or 1)

					return nil
				end
			end

			if var_98_0.pressedIndex and var_98_0.stageRects and var_98_0.stageRects[var_98_0.pressedIndex] and (var_98_0.pageSlideT or 0) <= 0 then
				local var_98_11 = var_98_0.pressedIndex
				local var_98_12 = var_98_0.stageRects[var_98_11]
				local var_98_13 = var_98_12.stageKey or var_0_101(var_98_0, var_98_11)

				var_98_0.pressedIndex = nil

				local var_98_14 = var_98_11 == 1 and var_0_43 or var_0_44
				local var_98_15 = false

				if var_98_14 then
					var_98_15 = var_0_95(var_98_14, arg_98_0, arg_98_1, var_98_12.x, var_98_12.y, var_98_12.s or 1, 3, 0.05)

					if not var_98_15 and var_98_12.stageArtData and var_98_12.stageArtX and var_98_12.stageArtY then
						var_98_15 = var_0_95(var_98_12.stageArtData, arg_98_0, arg_98_1, var_98_12.stageArtX, var_98_12.stageArtY, var_98_12.s or 1, 3, 0.05)
					end
				else
					var_98_15 = arg_98_0 >= var_98_12.x and arg_98_0 <= var_98_12.x + var_98_12.w and arg_98_1 >= var_98_12.y and arg_98_1 <= var_98_12.y + var_98_12.h
				end

				if var_98_15 then
					if var_0_99(var_98_13) then
						var_98_0.clickFeedbacks = var_98_0.clickFeedbacks or {}
						var_98_0.clickFeedbacks[var_98_11] = 0.15

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						var_98_0.selectedStage = var_98_13
						var_98_0.targetY = -var_98_1
						var_98_0.diffActive = true
						var_98_0.diffTargetY = 0
						var_98_0.diffClosing = false
						var_98_0.diffTimers = {
							0,
							0,
							0
						}
						var_98_0.diffAppearProg = {
							0,
							0,
							0
						}

						var_0_90(var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or nil)
					else
						var_98_0.shakeFeedbacks = var_98_0.shakeFeedbacks or {}
						var_98_0.shakeFeedbacks[var_98_11] = 0.28

						if var_0_29 then
							if var_0_29:isPlaying() then
								var_0_29:stop()
							end

							var_0_29:play()
						end
					end
				end
			end

			if not var_98_0.diffActive and var_98_0.stageRects and var_98_0.hoveredIndex and var_98_0.stageRects[var_98_0.hoveredIndex] and (var_98_0.pageSlideT or 0) <= 0 then
				local var_98_16 = var_98_0.hoveredIndex
				local var_98_17 = var_98_0.stageRects[var_98_16]
				local var_98_18 = var_98_17.stageKey or var_0_101(var_98_0, var_98_16)
				local var_98_19 = false
				local var_98_20 = var_98_16 == 1 and var_0_43 or var_0_44

				if var_98_20 then
					var_98_19 = var_0_95(var_98_20, arg_98_0, arg_98_1, var_98_17.x, var_98_17.y, var_98_17.s or 1, 3, 0.05)
				end

				if not var_98_19 and var_98_17.stageArtData and var_98_17.stageArtX and var_98_17.stageArtY then
					var_98_19 = var_0_95(var_98_17.stageArtData, arg_98_0, arg_98_1, var_98_17.stageArtX, var_98_17.stageArtY, var_98_17.s or 1, 3, 0.05)
				end

				if var_98_19 then
					if var_0_99(var_98_18) then
						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						var_98_0.selectedStage = var_98_18
						var_98_0.targetY = -var_98_1
						var_98_0.diffActive = true
						var_98_0.diffTargetY = 0
						var_98_0.diffClosing = false
						var_98_0.diffTimers = {
							0,
							0,
							0
						}
						var_98_0.diffAppearProg = {
							0,
							0,
							0
						}

						var_0_90(var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or nil)
					else
						var_98_0.shakeFeedbacks = var_98_0.shakeFeedbacks or {}
						var_98_0.shakeFeedbacks[var_98_16] = 0.28

						if var_0_29 then
							if var_0_29:isPlaying() then
								var_0_29:stop()
							end

							var_0_29:play()
						end
					end
				end
			end

			var_98_0.pressedIndex = nil

			return nil
		end

		if not var_0_4.exitConfirm.active and var_0_4.inputCooldown and var_0_4.inputCooldown > 0 then
			if var_0_4.upgradeState then
				var_0_4.upgradeState.pressed = false
			end

			if var_0_4.collectionState then
				var_0_4.collectionState.pressed = false
			end

			if var_0_4.achievementState then
				var_0_4.achievementState.pressed = false
			end

			if var_0_4.discordState then
				var_0_4.discordState.pressed = false
			end

			for iter_98_0, iter_98_1 in ipairs(var_0_4.buttons) do
				iter_98_1.pressed = false
			end

			return nil
		end

		if var_0_4.collectionState and var_0_4.collectionState.pressed then
			var_0_4.collectionState.pressed = false

			if var_0_4.collectionRect then
				local var_98_21 = var_0_4.collectionRect

				if arg_98_0 >= var_98_21.x and arg_98_0 <= var_98_21.x + var_98_21.w and arg_98_1 >= var_98_21.y and arg_98_1 <= var_98_21.y + var_98_21.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					if var_0_4.collectionLocked then
						var_0_4.collectionShake = {
							t = 0,
							amp = 2.5,
							freq = 58,
							dur = 0.28
						}
					else
						var_0_117 = "collection"
						var_0_118 = var_0_119
						var_0_4.inputCooldown = var_0_121
					end

					return nil
				end
			end
		end

		if var_0_4.achievementState and var_0_4.achievementState.pressed then
			var_0_4.achievementState.pressed = false

			if var_0_4.achievementRect then
				local var_98_22 = var_0_4.achievementRect

				if arg_98_0 >= var_98_22.x and arg_98_0 <= var_98_22.x + var_98_22.w and arg_98_1 >= var_98_22.y and arg_98_1 <= var_98_22.y + var_98_22.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					if var_0_4.achievementLocked then
						var_0_4.achievementShake = {
							t = 0,
							amp = 2.5,
							freq = 58,
							dur = 0.28
						}
					else
						var_0_117 = "achievement"
						var_0_118 = var_0_119
						var_0_4.inputCooldown = var_0_121
					end

					return nil
				end
			end
		end

		if var_0_4.upgradeState and var_0_4.upgradeState.pressed then
			var_0_4.upgradeState.pressed = false

			if var_0_4.upgradeRect then
				local var_98_23 = var_0_4.upgradeRect

				if arg_98_0 >= var_98_23.x and arg_98_0 <= var_98_23.x + var_98_23.w and arg_98_1 >= var_98_23.y and arg_98_1 <= var_98_23.y + var_98_23.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					var_0_117 = "upgrade"
					var_0_118 = var_0_119
					var_0_4.inputCooldown = var_0_121

					return nil
				end
			end
		end

		for iter_98_2, iter_98_3 in ipairs(var_0_4.buttons) do
			if iter_98_3.pressed then
				iter_98_3.pressed = false

				if iter_98_3.rect and var_0_74(var_0_4.buttons, arg_98_0, arg_98_1) == iter_98_2 then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					if iter_98_3.id == "exit" then
						var_0_117 = "open_exit_modal"
					else
						var_0_117 = iter_98_3.id
					end

					var_0_118 = var_0_119
					var_0_4.inputCooldown = var_0_121

					return nil
				end
			end
		end
	end

	return nil
end

return var_0_4
