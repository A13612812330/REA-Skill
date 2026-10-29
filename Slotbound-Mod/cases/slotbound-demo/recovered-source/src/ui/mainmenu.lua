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

		local var_4_1, var_4_2 = pcall(love.graphics.newFont, arg_4_0)

		if var_4_1 and var_4_2 then
			var_0_3.attachFallbacks(var_4_2, arg_4_0)
		end

		return var_4_1, var_4_2
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
local var_0_57
local var_0_58
local var_0_59 = "    extern number time;\n\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        vec4 texColor = Texel(texture, texture_coords);\n        vec2 uv = screen_coords / love_ScreenSize.xy;\n\n        // Continuous low-frequency waves replace the old lattice/hash FBM.\n        // Some low-precision fragment GPUs evaluated the hash in blocks, making\n        // the cloud shade expose square cell boundaries. These inputs remain in\n        // a small numeric range and contain no floor-based grid at all.\n        const float TAU = 6.28318530718;\n        float phase = time * (TAU / 100.0);\n        float cloudField = 0.50;\n        cloudField += 0.22 * sin(TAU * dot(uv, vec2(0.72, 0.31)) + phase);\n        cloudField += 0.14 * sin(TAU * dot(uv, vec2(-0.38, 0.83)) - phase * 2.0 + 1.70);\n        cloudField += 0.08 * sin(TAU * dot(uv, vec2(1.16, -0.54)) + phase * 3.0 + 0.60);\n        float shadow = smoothstep(0.12, 0.88, cloudField);\n\n        vec3 shadowTint = vec3(0.9, 0.9, 1.0);\n        vec3 sunTint = vec3(1.05, 1.02, 0.98);\n\n        vec3 finalRGB = texColor.rgb;\n        // Apply the cloud over the full image. A separate screen-region cutoff,\n        // however soft, can become a visible contour after driver quantization.\n        float shadowAmt = shadow * 0.72;\n        finalRGB = mix(finalRGB * sunTint, finalRGB * shadowTint * 0.7, shadowAmt);\n\n        // Sub-pixel interleaved noise breaks up 8/10-bit gradient bands without\n        // reading as grain at the virtual resolution or after integer scaling.\n        float dither = fract(52.9829189\n            * fract(dot(screen_coords, vec2(0.06711056, 0.00583715)))) - 0.5;\n        finalRGB += vec3(dither * (1.0 / 255.0));\n\n        return vec4(clamp(finalRGB, vec3(0.0), vec3(1.0)), texColor.a) * color;\n    }\n"
local var_0_60
local var_0_61 = "    extern number mixFactor;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        vec4 texcolor = Texel(tex, tc);\n        vec3 finalRGB = mix(texcolor.rgb, vec3(1.0, 1.0, 1.0), mixFactor);\n        return vec4(finalRGB, texcolor.a) * color;\n    }\n"
local var_0_62
local var_0_63 = "    extern number time;\n    extern vec4 tintColor;\n\n    float colorDist(vec3 c1, vec3 c2) {\n        return length(c1 - c2);\n    }\n\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        // 1. Get original pixel to enforce strict alpha mask boundary\n        vec4 originalColor = Texel(texture, texture_coords);\n        if (originalColor.a < 0.01) {\n            return vec4(0.0);\n        }\n\n        // 2. Sample texture at native resolution for perfectly sharp, crisp pixel art\n        vec4 texColor = Texel(texture, texture_coords);\n        vec3 rgb = texColor.rgb;\n        vec3 finalRGB = rgb;\n\n        // 3. Pixel-perfect original color groups from stage2.png & stage3.png\n        // Group 1: Sky & Pale Highlights (Stage 3 and Stage 2 cave background wall)\n        vec3 sky1 = vec3(178.0/255.0, 165.0/255.0, 146.0/255.0); // B2A592\n        vec3 sky2 = vec3(207.0/255.0, 192.0/255.0, 171.0/255.0); // CFC0AB\n        vec3 sky3 = vec3(228.0/255.0, 204.0/255.0, 183.0/255.0); // E4CCB7\n        vec3 sky4 = vec3(194.0/255.0, 174.0/255.0, 152.0/255.0); // C2AE98\n        vec3 sky5 = vec3(55.0/255.0, 46.0/255.0, 63.0/255.0);    // 372E3F (Stage 2 dominant back wall)\n        vec3 sky6 = vec3(30.0/255.0, 28.0/255.0, 46.0/255.0);    // 1E1C2E (Stage 2 dark back wall)\n\n        // Group 2: Midtone Clay & Ground\n        vec3 mid1 = vec3(203.0/255.0, 158.0/255.0, 114.0/255.0); // CB9E72\n        vec3 mid2 = vec3(175.0/255.0, 133.0/255.0, 102.0/255.0); // AF8566\n        vec3 mid3 = vec3(179.0/255.0, 116.0/255.0, 92.0/255.0);  // B3745C\n        vec3 mid4 = vec3(161.0/255.0, 134.0/255.0, 116.0/255.0); // A18674\n\n        // Group 3: Dark Shadows & Deep Rocks\n        vec3 dark1 = vec3(108.0/255.0, 72.0/255.0, 69.0/255.0);  // 6C4845\n        vec3 dark2 = vec3(134.0/255.0, 122.0/255.0, 112.0/255.0); // 867A70\n        vec3 dark3 = vec3(137.0/255.0, 101.0/255.0, 86.0/255.0);  // 896556\n\n        // 4. Mapped Target Colors (Ultra-Flat Achromatic Silhouette Swap)\n        // Snaps all ground, rocks, shadows, and extra colors to a single flat charcoal black (#141414).\n        // Only the sky is a slightly lighter stone gray (#212121), creating a beautiful flat silhouette relief.\n        // This completely obliterates all internal visual shapes, making the stage totally unrecognizable!\n        vec3 targetSky = vec3(0.13, 0.13, 0.13);   // #212121 (Slightly lighter dark-gray sky)\n        vec3 targetMid = vec3(0.08, 0.08, 0.08);   // #141414 (Flat dark charcoal ground)\n        vec3 targetDark = vec3(0.08, 0.08, 0.08);  // #141414 (Flat dark charcoal shadows)\n\n        float thres = 0.09; // Matching threshold\n\n        // Apply dynamic color swapping\n        if (colorDist(rgb, sky1) < thres || colorDist(rgb, sky2) < thres || colorDist(rgb, sky3) < thres || colorDist(rgb, sky4) < thres || colorDist(rgb, sky5) < thres || colorDist(rgb, sky6) < thres) {\n            finalRGB = targetSky;\n        } else if (colorDist(rgb, mid1) < thres || colorDist(rgb, mid2) < thres || colorDist(rgb, mid3) < thres || colorDist(rgb, mid4) < thres) {\n            finalRGB = targetMid;\n        } else if (colorDist(rgb, dark1) < thres || colorDist(rgb, dark2) < thres || colorDist(rgb, dark3) < thres) {\n            finalRGB = targetDark;\n        } else {\n            // Fallback blend for extra colors - snapped flat to the dark ground color to eliminate all detail\n            finalRGB = targetMid;\n        }\n\n        // 5. Force 100% pure achromatic gray (eliminate any possible color leak/tint)\n        float gray = (finalRGB.r + finalRGB.g + finalRGB.b) / 3.0;\n        finalRGB = vec3(gray);\n\n        // Prevent compiler optimization of uniforms and guarantee strict boundaries using pure achromatic additions\n        float dummy = (tintColor.r + tintColor.g + tintColor.b) * 0.000001 + time * 0.0000001;\n        finalRGB += vec3(dummy);\n\n        return vec4(finalRGB, originalColor.a * color.a);\n    }\n"
local var_0_64 = {}
local var_0_65 = 30
local var_0_66 = 2

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

function var_0_4.setRunSaves(arg_11_0)
	var_0_4.stageSelect.runSaves = type(arg_11_0) == "table" and arg_11_0 or {}
	var_0_4.stageSelect.saveSlotRect = nil
	var_0_4.stageSelect.saveSlotHovered = false
	var_0_4.stageSelect.saveSlotPressed = false
	var_0_4.stageSelect.saveSlotPressedProg = 0
	var_0_4.stageSelect.saveSlotClickFeedback = 0
end

function var_0_4.getRunSave(arg_12_0)
	local var_12_0 = math.max(1, math.floor(tonumber(arg_12_0 or 1) or 1))
	local var_12_1 = var_0_4.stageSelect and var_0_4.stageSelect.runSaves

	return type(var_12_1) == "table" and var_12_1[var_12_0] or nil
end

local var_0_67
local var_0_68
local var_0_69
local var_0_70
local var_0_71 = false
local var_0_72
local var_0_73 = 0
local var_0_74 = "https://discord.com/invite/XthPFC9thw"

local function var_0_75(arg_13_0, arg_13_1, arg_13_2)
	if not arg_13_0.rect then
		return false
	end

	local var_13_0 = var_0_73
	local var_13_1 = arg_13_0.rect.x - var_13_0
	local var_13_2 = arg_13_0.rect.y - var_13_0
	local var_13_3 = arg_13_0.rect.w + var_13_0 * 2
	local var_13_4 = arg_13_0.rect.h + var_13_0 * 2

	return var_13_1 <= arg_13_1 and arg_13_1 <= var_13_1 + var_13_3 and var_13_2 <= arg_13_2 and arg_13_2 <= var_13_2 + var_13_4
end

local function var_0_76(arg_14_0, arg_14_1, arg_14_2)
	local var_14_0
	local var_14_1 = math.huge

	for iter_14_0, iter_14_1 in ipairs(arg_14_0) do
		if var_0_75(iter_14_1, arg_14_1, arg_14_2) then
			local var_14_2 = iter_14_1.rect
			local var_14_3 = var_14_2.x + var_14_2.w * 0.5
			local var_14_4 = var_14_2.y + var_14_2.h * 0.5
			local var_14_5 = arg_14_1 - var_14_3
			local var_14_6 = arg_14_2 - var_14_4
			local var_14_7 = var_14_5 * var_14_5 + var_14_6 * var_14_6

			if var_14_7 < var_14_1 then
				var_14_1 = var_14_7
				var_14_0 = iter_14_0
			end
		end
	end

	return var_14_0
end

local function var_0_77(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4, arg_15_5)
	local var_15_0 = tonumber(arg_15_0.iconScale) or tonumber(arg_15_0.drawMul) or 1.5
	local var_15_1 = tonumber(arg_15_0.labelGapPx) or 6
	local var_15_2 = tonumber(arg_15_0.labelScale) or 1.1
	local var_15_3, var_15_4 = arg_15_1:getDimensions()
	local var_15_5 = arg_15_3:getWidth(arg_15_2)
	local var_15_6 = var_15_5 * var_15_2
	local var_15_7 = arg_15_3:getHeight() * var_15_2
	local var_15_8 = var_15_3 * var_15_0
	local var_15_9 = var_15_4 * var_15_0

	return {
		iconScreenCx = arg_15_4,
		iconScreenCy = arg_15_5,
		hitBlockW = math.max(var_15_8, var_15_6),
		hitBlockH = var_15_9 + var_15_1 + var_15_7,
		idleIconW = var_15_8,
		idleIconH = var_15_9,
		iconBaseScale = var_15_0,
		labelGap = var_15_1,
		labelScale = var_15_2,
		labelOffsetX = tonumber(arg_15_0.labelOffsetX) or 0,
		localLabelY = var_15_9 / 2 + var_15_1,
		rawTextW = var_15_5,
		texHalfW = var_15_3 / 2,
		texHalfH = var_15_4 / 2
	}
end

local function var_0_78(arg_16_0, arg_16_1, arg_16_2, arg_16_3, arg_16_4)
	local var_16_0 = tonumber(arg_16_4.iconScale) or tonumber(arg_16_4.drawMul) or 1.5
	local var_16_1 = arg_16_3:getDimensions() * var_16_0
	local var_16_2 = tonumber(arg_16_2) or 24

	return math.floor(arg_16_0.iconScreenCx + arg_16_1 / 2 + var_16_2 + var_16_1 / 2 + (tonumber(arg_16_4.offsetX) or 0)), var_16_1
end

local function var_0_79(arg_17_0, arg_17_1, arg_17_2, arg_17_3, arg_17_4, arg_17_5, arg_17_6, arg_17_7)
	local var_17_0 = arg_17_6 or 0
	local var_17_1 = arg_17_7 and arg_17_4 * 0.55 or arg_17_4

	love.graphics.push()
	love.graphics.translate(arg_17_0.iconScreenCx + var_17_0, arg_17_0.iconScreenCy)
	love.graphics.scale(arg_17_5, arg_17_5)
	love.graphics.setColor(1, 1, 1, var_17_1)

	local var_17_2, var_17_3 = arg_17_1:getDimensions()

	love.graphics.draw(arg_17_1, 0, 0, 0, arg_17_0.iconBaseScale, arg_17_0.iconBaseScale, math.floor(var_17_2 / 2), math.floor(var_17_3 / 2))
	love.graphics.print(arg_17_2, arg_17_0.labelOffsetX, arg_17_0.localLabelY, 0, arg_17_0.labelScale, arg_17_0.labelScale, arg_17_0.rawTextW * 0.5, 0)
	love.graphics.pop()

	local var_17_4 = arg_17_0.hitBlockW * arg_17_5
	local var_17_5 = arg_17_0.hitBlockH * arg_17_5

	return {
		x = arg_17_0.iconScreenCx - var_17_4 / 2,
		y = math.floor(arg_17_0.iconScreenCy - arg_17_0.idleIconH / 2 * arg_17_5),
		w = var_17_4,
		h = var_17_5
	}
end

local function var_0_80(arg_18_0, arg_18_1, arg_18_2, arg_18_3, arg_18_4, arg_18_5, arg_18_6)
	arg_18_0 = arg_18_0 or {
		scale = 1
	}

	if not arg_18_1 then
		return arg_18_0
	end

	local var_18_0 = arg_18_5 == 0 and arg_18_3 >= arg_18_1.x and arg_18_3 <= arg_18_1.x + arg_18_1.w and arg_18_4 >= arg_18_1.y and arg_18_4 <= arg_18_1.y + arg_18_1.h

	if var_18_0 and arg_18_6 then
		arg_18_6()
	end

	local var_18_1 = 1

	if arg_18_0.pressed and arg_18_5 == 0 then
		var_18_1 = 0.9130434782608696
		arg_18_0.scale = arg_18_0.scale + (var_18_1 - arg_18_0.scale) * math.min(1, arg_18_2 * 20)
	elseif var_18_0 then
		var_18_1 = 1.1304347826086958
		arg_18_0.scale = arg_18_0.scale + (var_18_1 - arg_18_0.scale) * math.min(1, arg_18_2 * 12)
	else
		arg_18_0.scale = arg_18_0.scale + (var_18_1 - arg_18_0.scale) * math.min(1, arg_18_2 * 10)
	end

	if arg_18_5 > 0 then
		arg_18_0.pressed = false
	end

	return arg_18_0
end

var_0_4.stageSelect = {
	pageTo = 1,
	pageFrom = 1,
	pageSlideDir = 0,
	pageSlideDur = 0.56,
	pageSlideT = 0,
	saveSlotClickFeedback = 0,
	saveSlotPressedProg = 0,
	saveSlotPressed = false,
	saveSlotHovered = false,
	maxStages = 6,
	targetY = 0,
	y = 0,
	stagePage = 1,
	hoverGraceT = 0,
	diffV = 0,
	snapEps = 0.5,
	phase = "idle",
	saveSlotAppearProg = 0,
	saveSlotAppearTimer = 0,
	v = 0,
	saveSlotHoverProg = 0,
	active = false,
	diffTargetY = 0,
	diffY = 0,
	diffActive = false,
	pageArrow = {
		scale = 1,
		hovered = false
	},
	back = {
		pressed = false,
		alphaVel = 0,
		alpha = 0,
		scale = 0.9
	},
	runSaves = {}
}
var_0_4._menuFadeAlpha = 1
var_0_4._menuLogoOffsetY = 0
var_0_4._menuButtonsOffsetY = 0
var_0_4._stageSelectFlow = {
	t = 0,
	phase = "idle",
	floatLogoPx = 18,
	active = false,
	showDur = 0.22,
	hideDur = 0.3,
	gapDur = 0.02,
	floatButtonsPx = 18
}

local function var_0_81(arg_19_0, arg_19_1, arg_19_2)
	if arg_19_0 < arg_19_1 then
		return arg_19_1
	end

	if arg_19_2 < arg_19_0 then
		return arg_19_2
	end

	return arg_19_0
end

local function var_0_82()
	local var_20_0 = 32
	local var_20_1 = var_0_5

	if var_20_1 and var_20_1.battle and var_20_1.battle.allySize32 and var_20_1.battle.allySize32 > 0 then
		local var_20_2 = math.max(var_20_0, math.floor(var_20_1.battle.allySize32 / var_20_0) * var_20_0)

		return math.max(1, math.floor(var_20_2 / var_20_0))
	end

	return 2
end

local function var_0_83(arg_21_0, arg_21_1, arg_21_2)
	return arg_21_0 + (arg_21_1 - arg_21_0) * var_0_81(arg_21_2, 0, 1)
end

local function var_0_84(arg_22_0)
	arg_22_0 = var_0_81(arg_22_0, 0, 1)

	return 1 - (1 - arg_22_0)^3
end

local function var_0_85(arg_23_0)
	arg_23_0 = var_0_81(arg_23_0, 0, 1)

	if arg_23_0 < 0.5 then
		return 4 * arg_23_0 * arg_23_0 * arg_23_0
	else
		return 1 - (-2 * arg_23_0 + 2)^3 / 2
	end
end

local var_0_86 = {
	overshoot = 5,
	totalDur = 0.72,
	state = "done",
	startY = -80,
	direction = "in",
	t = 0,
	y = -80,
	targetY = 25,
	outDur = 0.48
}

local function var_0_87(arg_24_0, arg_24_1)
	if not arg_24_0 or arg_24_0.state ~= "anim" then
		return arg_24_0 and (arg_24_0.y or arg_24_0.targetY or 0) or 0, 1
	end

	arg_24_0.t = (arg_24_0.t or 0) + (arg_24_1 or 0)

	local var_24_0 = math.min(1, arg_24_0.t / math.max(0.001, arg_24_0.totalDur or 0.9))
	local var_24_1 = (arg_24_0.targetY or 0) - (arg_24_0.startY or 0) + (arg_24_0.overshoot or 0)

	if var_24_0 < 0.7 then
		local var_24_2 = var_24_0 / 0.7
		local var_24_3 = 1 - math.pow(1 - var_24_2, 2)

		arg_24_0.y = (arg_24_0.startY or 0) + var_24_1 * var_24_3
	else
		local var_24_4 = (var_24_0 - 0.7) / 0.3
		local var_24_5 = var_24_4 * var_24_4 * (3 - 2 * var_24_4)

		arg_24_0.y = (arg_24_0.startY or 0) + var_24_1 - (arg_24_0.overshoot or 0) * var_24_5
	end

	if var_24_0 >= 1 then
		arg_24_0.state = "idle"
		arg_24_0.y = arg_24_0.targetY or 0
	end

	local var_24_6 = var_0_81(var_24_0 * 1.35, 0, 1)

	return arg_24_0.y, var_24_6
end

local function var_0_88(arg_25_0)
	arg_25_0 = arg_25_0 or {}
	var_0_86.startY = tonumber(arg_25_0.startY) or -80
	var_0_86.targetY = tonumber(arg_25_0.targetY) or 25
	var_0_86.totalDur = tonumber(arg_25_0.totalDur) or 0.72
	var_0_86.outDur = tonumber(arg_25_0.outDur) or 0.48
	var_0_86.overshoot = tonumber(arg_25_0.overshoot) or 5
end

local function var_0_89(arg_26_0)
	if not arg_26_0 then
		return 0.72
	end

	if arg_26_0.direction == "out" then
		return math.max(0.001, arg_26_0.outDur or arg_26_0.totalDur or 0.48)
	end

	return math.max(0.001, arg_26_0.totalDur or 0.72)
end

local function var_0_90(arg_27_0, arg_27_1)
	local var_27_0 = arg_27_0.startY or 0
	local var_27_1 = arg_27_0.targetY or 0
	local var_27_2 = arg_27_0.overshoot or 0
	local var_27_3 = var_27_1 - var_27_0 + var_27_2

	if arg_27_1 < 0.7 then
		local var_27_4 = arg_27_1 / 0.7

		return var_27_0 + var_27_3 * (1 - math.pow(1 - var_27_4, 2))
	end

	local var_27_5 = (arg_27_1 - 0.7) / 0.3
	local var_27_6 = var_27_5 * var_27_5 * (3 - 2 * var_27_5)

	return var_27_0 + var_27_3 - var_27_2 * var_27_6
end

local function var_0_91(arg_28_0, arg_28_1)
	arg_28_1 = math.min(1, math.max(0, arg_28_1 or 0))

	if arg_28_0.direction == "out" then
		local var_28_0 = arg_28_0.targetY or 0
		local var_28_1 = arg_28_0.startY or 0
		local var_28_2 = arg_28_1 * arg_28_1 * (3 - 2 * arg_28_1)

		return var_28_0 + (var_28_1 - var_28_0) * var_28_2, 1 - var_28_2
	end

	return var_0_90(arg_28_0, arg_28_1), var_0_81(arg_28_1 * 1.35, 0, 1)
end

local function var_0_92(arg_29_0)
	var_0_88(arg_29_0)

	var_0_86.direction = "in"
	var_0_86.t = 0
	var_0_86.state = "anim"
	var_0_86.y = var_0_86.startY
end

local function var_0_93(arg_30_0)
	var_0_88(arg_30_0)

	var_0_86.direction = "out"
	var_0_86.t = 0
	var_0_86.state = "anim"
	var_0_86.y = var_0_86.targetY
end

local function var_0_94(arg_31_0, arg_31_1)
	if not arg_31_0 then
		return 0, 0
	end

	if arg_31_0.state == "done" then
		return arg_31_0.y or arg_31_0.startY or 0, 0
	end

	if arg_31_0.state == "idle" then
		return arg_31_0.y or arg_31_0.targetY or 0, 1
	end

	if arg_31_0.state ~= "anim" then
		return arg_31_0.y or 0, 0
	end

	arg_31_0.t = (arg_31_0.t or 0) + (arg_31_1 or 0)

	local var_31_0 = math.min(1, arg_31_0.t / var_0_89(arg_31_0))
	local var_31_1, var_31_2 = var_0_91(arg_31_0, var_31_0)

	arg_31_0.y = var_31_1

	if var_31_0 >= 1 then
		if arg_31_0.direction == "out" then
			arg_31_0.state = "done"
			arg_31_0.y = arg_31_0.startY or 0
			var_31_2 = 0
		else
			arg_31_0.state = "idle"
			arg_31_0.y = arg_31_0.targetY or 0
			var_31_2 = 1
		end
	end

	return arg_31_0.y, var_31_2
end

local function var_0_95(arg_32_0)
	if not arg_32_0 then
		return 0
	end

	if arg_32_0.state == "idle" then
		return 1
	end

	if arg_32_0.state == "done" then
		return 0
	end

	if arg_32_0.state ~= "anim" then
		return 0
	end

	local var_32_0 = math.min(1, (arg_32_0.t or 0) / var_0_89(arg_32_0))
	local var_32_1, var_32_2 = var_0_91(arg_32_0, var_32_0)

	return var_32_2
end

local function var_0_96(arg_33_0)
	if not arg_33_0 or not arg_33_0.active then
		return false
	end

	local var_33_0 = math.floor(tonumber(arg_33_0.selectedStage or 0) or 0)

	if not var_0_37[var_33_0] then
		return false
	end

	return arg_33_0.diffActive or var_0_86.state == "anim"
end

local function var_0_97(arg_34_0, arg_34_1, arg_34_2, arg_34_3, arg_34_4, arg_34_5, arg_34_6, arg_34_7)
	if not arg_34_0 then
		return false
	end

	arg_34_5 = tonumber(arg_34_5 or 1) or 1

	if arg_34_5 <= 0 then
		return false
	end

	arg_34_6 = math.max(0, math.floor(tonumber(arg_34_6 or 0) or 0))
	arg_34_7 = tonumber(arg_34_7 or 0.05) or 0.05

	local var_34_0 = (arg_34_1 - arg_34_3) / arg_34_5
	local var_34_1 = (arg_34_2 - arg_34_4) / arg_34_5
	local var_34_2 = math.floor(var_34_0)
	local var_34_3 = math.floor(var_34_1)
	local var_34_4 = arg_34_0:getWidth()
	local var_34_5 = arg_34_0:getHeight()

	for iter_34_0 = -arg_34_6, arg_34_6 do
		local var_34_6 = var_34_3 + iter_34_0

		if var_34_6 >= 0 and var_34_6 < var_34_5 then
			for iter_34_1 = -arg_34_6, arg_34_6 do
				local var_34_7 = var_34_2 + iter_34_1

				if var_34_7 >= 0 and var_34_7 < var_34_4 then
					local var_34_8, var_34_9, var_34_10, var_34_11 = arg_34_0:getPixel(var_34_7, var_34_6)

					if arg_34_7 < (var_34_11 or 0) then
						return true
					end
				end
			end
		end
	end

	return false
end

local var_0_98

local function var_0_99()
	if var_0_98 then
		return var_0_98
	end

	local var_35_0 = "                extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel\n                extern vec4 outlineColor;   // RGBA\n                extern float threshold;     // alpha threshold\n                extern float radiusPx;      // outline radius in px (1=1px)\n                vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n                    float a0 = Texel(tex, tc).a;\n                    if (a0 <= threshold){\n                        vec2 s = texelStep;\n                        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n                        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n                        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n                        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n                        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n                        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n                        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n                        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n                        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n                        if (radiusPx > 1.5){\n                            vec2 t = s * 2.0;\n                            float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;\n                            float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;\n                            float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;\n                            float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;\n                            float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;\n                            float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;\n                            float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;\n                            float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;\n                            float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));\n                            neighbor = max(neighbor, neighbor2);\n                        }\n                        if (neighbor > threshold){ return outlineColor; }\n                    }\n                    return vec4(0.0);\n                }\n        "

	var_0_98 = love.graphics.newShader(var_35_0)

	return var_0_98
end

local function var_0_100(arg_36_0, arg_36_1, arg_36_2)
	if not arg_36_0 or not arg_36_0.virtual or not arg_36_1 or not var_0_34 or not var_0_41 then
		return nil
	end

	local var_36_0 = arg_36_0 and arg_36_0.stageSelectOverlay and arg_36_0.stageSelectOverlay.stageCards or nil

	if var_36_0 and var_36_0.enabled == false then
		return nil
	end

	local var_36_1 = var_0_34:getWidth()
	local var_36_2 = var_0_34:getHeight()
	local var_36_3 = arg_36_0 and arg_36_0.virtual and arg_36_0.virtual.H or 720
	local var_36_4 = var_0_81(((arg_36_1.y or 0) + var_36_3) / math.max(1, var_36_3), 0, 1)

	if var_36_4 <= 0.001 then
		return nil
	end

	local var_36_5 = arg_36_0 and arg_36_0.scale or 1
	local var_36_6 = math.floor((var_36_0 and var_36_0.gapPx or 18) * var_36_5 + 0.5)
	local var_36_7 = math.floor((var_36_0 and var_36_0.offsetX or 0) * var_36_5 + 0.5)
	local var_36_8 = math.floor((var_36_0 and var_36_0.offsetY or 0) * var_36_5 + 0.5)
	local var_36_9 = var_0_41:getWidth()
	local var_36_10 = var_0_41:getHeight()
	local var_36_11 = 3
	local var_36_12 = math.floor(math.min(64 * var_36_5, var_36_1 * 0.12) + 0.5)
	local var_36_13 = math.floor(math.min(220 * var_36_5, var_36_2 * 0.4) + 0.5)
	local var_36_14 = math.floor(math.min(70 * var_36_5, var_36_2 * 0.14) + 0.5)
	local var_36_15 = var_36_12
	local var_36_16 = arg_36_2 + var_36_13
	local var_36_17 = math.max(1, var_36_1 - var_36_12 * 2)
	local var_36_18 = math.max(1, var_36_2 - var_36_13 - var_36_14)
	local var_36_19 = 1
	local var_36_20 = var_36_11 * var_36_9 * var_36_19 + (var_36_11 - 1) * var_36_6
	local var_36_21 = math.floor(var_36_15 + (var_36_17 - var_36_20) * 0.5 + var_36_7 + 0.5)
	local var_36_22 = math.floor(var_36_16 + (var_36_18 - var_36_10 * var_36_19) * 0.5 + var_36_8 + 0.5)

	return {
		alpha = var_36_4,
		x0 = var_36_21,
		y0 = var_36_22,
		cardW = var_36_9,
		cardH = var_36_10,
		cols = var_36_11,
		gap = var_36_6,
		scale = var_36_19
	}
end

local var_0_101

local function var_0_102(arg_37_0)
	local var_37_0 = math.floor(tonumber(arg_37_0 and arg_37_0.stagePage or 1) or 1)

	return var_0_81(var_37_0, 1, 2)
end

local function var_0_103(arg_38_0, arg_38_1)
	return (var_0_102(arg_38_0) - 1) * 3 + (arg_38_1 or 1)
end

local function var_0_104(arg_39_0)
	arg_39_0 = math.floor(tonumber(arg_39_0 or 0) or 0)

	return var_0_45[arg_39_0], var_0_46[arg_39_0]
end

local function var_0_105(arg_40_0, arg_40_1)
	if not arg_40_0 or not arg_40_0.stageSelectOverlay then
		return nil
	end

	if arg_40_1 == 1 then
		return arg_40_0.stageSelectOverlay.stage1Title
	elseif arg_40_1 == 2 then
		return arg_40_0.stageSelectOverlay.stage2Title
	elseif arg_40_1 == 3 then
		return arg_40_0.stageSelectOverlay.stage3Title
	elseif arg_40_1 == 4 then
		return arg_40_0.stageSelectOverlay.stage4Title
	end

	return {
		offsetY = -4,
		offsetX = 0,
		yPx = 194,
		enabled = true,
		scale = 1.15
	}
end

local function var_0_106(arg_41_0, arg_41_1)
	if not var_0_101(arg_41_1) then
		return "???"
	end

	local var_41_0 = arg_41_0 and arg_41_0.menuSettings and arg_41_0.menuSettings.language or "ko"
	local var_41_1 = var_0_105(arg_41_0, arg_41_1)

	if var_41_1 and var_41_1.text then
		return var_0_2.getText(var_41_1.text, var_41_0)
	end

	if arg_41_1 == 1 then
		return var_0_2.getText("menu_stage_1_title", var_41_0)
	end

	local var_41_2 = "menu_stage_name_" .. tostring(arg_41_1)
	local var_41_3 = var_0_2.getText(var_41_2, var_41_0)

	if var_41_3 == var_41_2 then
		var_41_3 = "Stage " .. tostring(arg_41_1)
	end

	return var_41_3
end

local function var_0_107(arg_42_0, arg_42_1, arg_42_2)
	if not arg_42_0 or not arg_42_1 or not arg_42_2 or not var_0_39 or not var_0_38 then
		return nil
	end

	local var_42_0 = var_0_102(arg_42_1) == 1 and 1 or -1
	local var_42_1 = arg_42_0.stageSelectOverlay and arg_42_0.stageSelectOverlay.title or {}
	local var_42_2 = tonumber(var_42_1.spriteScale or var_42_1.scale or 1) or 1
	local var_42_3 = math.max(1, var_0_38:getHeight() * var_42_2 * 1.15)
	local var_42_4, var_42_5 = var_0_39:getDimensions()
	local var_42_6 = var_42_3 / math.max(1, var_42_5)
	local var_42_7 = var_42_4 * var_42_6
	local var_42_8 = var_42_5 * var_42_6
	local var_42_9 = math.floor(0 * (arg_42_0 and arg_42_0.scale or 1) + 0.5)
	local var_42_10 = arg_42_2.x0
	local var_42_11 = arg_42_2.x0 + (arg_42_2.cols or 3) * arg_42_2.cardW * arg_42_2.scale + ((arg_42_2.cols or 3) - 1) * arg_42_2.gap
	local var_42_12 = var_42_0 == 1 and var_42_11 + var_42_9 + var_42_7 * 0.5 or var_42_10 - var_42_9 - var_42_7 * 0.5

	if var_0_34 then
		local var_42_13 = var_0_34:getWidth()

		var_42_12 = var_0_81(var_42_12, var_42_7 * 0.5 + 8, var_42_13 - var_42_7 * 0.5 - 8)
	end

	local var_42_14 = arg_42_2.y0 + arg_42_2.cardH * arg_42_2.scale * 0.5

	return {
		x = var_42_12 - var_42_7 * 0.5,
		y = var_42_14 - var_42_8 * 0.5,
		w = var_42_7,
		h = var_42_8,
		cx = var_42_12,
		cy = var_42_14,
		scale = var_42_6,
		dir = var_42_0
	}
end

local function var_0_108(arg_43_0)
	local var_43_0 = math.max(0.001, tonumber(arg_43_0.pageSlideDur or 0.28) or 0.28)

	return 1 - var_0_81((arg_43_0.pageSlideT or 0) / var_43_0, 0, 1)
end

local function var_0_109(arg_44_0, arg_44_1, arg_44_2)
	if not arg_44_0 or not arg_44_1 or not arg_44_2 then
		return {}
	end

	local var_44_0 = arg_44_0.virtual and arg_44_0.virtual.W or 1280
	local var_44_1 = math.min(var_44_0 * 0.42, arg_44_2.cardW * arg_44_2.scale * 1.65 + arg_44_2.gap + 36 * (arg_44_0 and arg_44_0.scale or 1))
	local var_44_2 = tonumber(arg_44_1.pageSlideDir or 0) or 0

	if (arg_44_1.pageSlideT or 0) <= 0 or var_44_2 == 0 then
		return {
			{
				alpha = 1,
				scale = 1,
				x = 0,
				page = var_0_102(arg_44_1)
			}
		}
	end

	local var_44_3 = var_0_85(var_0_108(arg_44_1))
	local var_44_4 = math.max(0, 1 - var_44_3 * 1.8)
	local var_44_5 = var_0_81((var_44_3 - 0.08) / 0.72, 0, 1)
	local var_44_6 = -var_44_2 * var_44_1 * var_44_3
	local var_44_7 = var_44_2 * var_44_1 * (1 - var_44_3)

	return {
		{
			y = 0,
			page = arg_44_1.pageFrom or var_0_102(arg_44_1),
			x = var_44_6,
			alpha = var_44_4,
			scale = 1 - 0.035 * var_44_3
		},
		{
			y = 0,
			page = arg_44_1.pageTo or var_0_102(arg_44_1),
			x = var_44_7,
			alpha = var_44_5,
			scale = 0.965 + 0.035 * var_44_3
		}
	}
end

local function var_0_110(arg_45_0)
	if not arg_45_0 then
		return 1
	end

	if (arg_45_0.pageSlideT or 0) <= 0 or (arg_45_0.pageSlideDir or 0) == 0 then
		return var_0_102(arg_45_0)
	end

	local var_45_0 = var_0_85(var_0_108(arg_45_0))
	local var_45_1 = tonumber(arg_45_0.pageFrom or var_0_102(arg_45_0)) or 1

	return var_45_1 + ((tonumber(arg_45_0.pageTo or var_0_102(arg_45_0)) or var_45_1) - var_45_1) * var_45_0
end

local function var_0_111(arg_46_0, arg_46_1)
	if not arg_46_0 then
		return
	end

	local var_46_0 = var_0_102(arg_46_0)

	arg_46_1 = var_0_81(math.floor(tonumber(arg_46_1 or var_46_0) or var_46_0), 1, 2)

	if arg_46_1 == var_46_0 then
		return
	end

	arg_46_0.pageFrom = var_46_0
	arg_46_0.pageTo = arg_46_1
	arg_46_0.stagePage = arg_46_1
	arg_46_0.pageSlideDir = var_46_0 < arg_46_1 and 1 or -1
	arg_46_0.pageSlideT = arg_46_0.pageSlideDur or 0.28
	arg_46_0.hoveredIndex = nil
	arg_46_0.pressedIndex = nil
	arg_46_0.stageRects = nil
	arg_46_0.hoverGraceT = 0
end

function var_0_4.padStagePage(arg_47_0)
	local var_47_0 = var_0_4.stageSelect

	if not var_47_0 or not var_47_0.active or var_47_0.diffActive or var_47_0.phase == "leave" then
		return false
	end

	if (var_47_0.pageSlideT or 0) > 0 or not var_47_0.pageArrow or not var_47_0.pageArrow.rect then
		return false
	end

	local var_47_1 = var_0_102(var_47_0)
	local var_47_2 = var_0_81(var_47_1 + (arg_47_0 or 0), 1, 2)

	if var_47_2 == var_47_1 then
		return false
	end

	if var_0_30 then
		if var_0_30:isPlaying() then
			var_0_30:stop()
		end

		var_0_30:play()
	end

	var_0_111(var_47_0, var_47_2)

	return true
end

local function var_0_112(arg_48_0, arg_48_1)
	if not arg_48_0 or not arg_48_0.virtual or not var_0_34 or not var_0_47 then
		return nil
	end

	local var_48_0 = arg_48_0 and arg_48_0.scale or 1
	local var_48_1 = var_0_34:getWidth()
	local var_48_2 = var_0_34:getHeight()

	if not arg_48_0 or not arg_48_0.virtual or not arg_48_0.virtual.H then
		local var_48_3 = 720
	end

	local var_48_4 = var_0_47:getWidth()
	local var_48_5 = var_0_47:getHeight()
	local var_48_6 = 3
	local var_48_7 = arg_48_0 and arg_48_0.stageSelectOverlay and arg_48_0.stageSelectOverlay.difficultySelect or {}
	local var_48_8 = math.floor((var_48_7.gapPx or 18) * var_48_0 + 0.5)
	local var_48_9 = math.floor((var_48_7.offsetX or 0) * var_48_0 + 0.5)
	local var_48_10 = math.floor((var_48_7.offsetY or 0) * var_48_0 + 0.5)
	local var_48_11 = math.floor(math.min(64 * var_48_0, var_48_1 * 0.12) + 0.5)
	local var_48_12 = math.floor(math.min(220 * var_48_0, var_48_2 * 0.4) + 0.5)
	local var_48_13 = math.floor(math.min(70 * var_48_0, var_48_2 * 0.14) + 0.5)
	local var_48_14 = var_48_11
	local var_48_15 = arg_48_1 + var_48_12
	local var_48_16 = math.max(1, var_48_1 - var_48_11 * 2)
	local var_48_17 = math.max(1, var_48_2 - var_48_12 - var_48_13)
	local var_48_18 = tonumber(var_48_7.scale or 1)
	local var_48_19 = var_48_6 * var_48_4 * var_48_18 + (var_48_6 - 1) * var_48_8
	local var_48_20 = math.floor(var_48_14 + (var_48_16 - var_48_19) * 0.5 + var_48_9 + 0.5)
	local var_48_21 = math.floor(var_48_15 + (var_48_17 - var_48_5 * var_48_18) * 0.5 + var_48_10 + 0.5)

	return {
		x0 = var_48_20,
		y0 = var_48_21,
		cardW = var_48_4,
		cardH = var_48_5,
		cols = var_48_6,
		gap = var_48_8,
		scale = var_48_18
	}
end

local function var_0_113(arg_49_0)
	if not arg_49_0 or not arg_49_0.virtual or not var_0_56 then
		return nil
	end

	local var_49_0 = arg_49_0.stageSelectOverlay and arg_49_0.stageSelectOverlay.runSaveSlot or {}
	local var_49_1 = math.max(0.5, tonumber(var_49_0.scale or 1.5) or 1.5)
	local var_49_2, var_49_3 = var_0_56:getDimensions()
	local var_49_4 = arg_49_0.virtual.W or 1280
	local var_49_5 = arg_49_0.virtual.H or 720
	local var_49_6 = math.floor((var_49_4 - var_49_2 * var_49_1) * 0.5 + (tonumber(var_49_0.offsetX or 0) or 0) + 0.5)
	local var_49_7 = math.floor(var_49_5 - var_49_3 * var_49_1 - (tonumber(var_49_0.bottomMargin or 42) or 42) + (tonumber(var_49_0.offsetY or 0) or 0) + 0.5)

	return {
		x = var_49_6,
		y = var_49_7,
		w = var_49_2 * var_49_1,
		h = var_49_3 * var_49_1,
		scale = var_49_1
	}
end

local function var_0_114(arg_50_0, arg_50_1, arg_50_2, arg_50_3, arg_50_4)
	if not arg_50_0 or not arg_50_1 or not arg_50_1.active then
		return nil
	end

	local var_50_0 = math.floor((arg_50_1.y or 0) + 0.5)
	local var_50_1 = var_0_100(arg_50_0, arg_50_1, var_50_0)

	if not var_50_1 then
		return nil
	end

	for iter_50_0 = 1, var_50_1.cols or 3 do
		local var_50_2 = var_50_1.x0 + (iter_50_0 - 1) * (var_50_1.cardW * var_50_1.scale + var_50_1.gap)
		local var_50_3 = var_50_1.y0
		local var_50_4 = var_0_103(arg_50_1, iter_50_0)
		local var_50_5, var_50_6 = var_0_104(var_50_4)
		local var_50_7
		local var_50_8

		if var_50_5 then
			local var_50_9 = var_50_5:getWidth()
			local var_50_10 = var_50_5:getHeight()

			var_50_7 = math.floor(var_50_2 + (var_50_1.cardW * var_50_1.scale - var_50_9 * var_50_1.scale) * 0.5 + 0.5)
			var_50_8 = math.floor(var_50_3 + (var_50_1.cardH * var_50_1.scale - var_50_10 * var_50_1.scale) * 0.5 + 0.5)
		end

		local var_50_11 = iter_50_0 == 1 and var_0_43 or var_0_44

		if var_50_11 then
			if var_0_97(var_50_11, arg_50_2, arg_50_3, var_50_2, var_50_3, var_50_1.scale, 3, 0.05) then
				return iter_50_0
			end

			if var_50_6 and var_50_7 and var_50_8 and var_0_97(var_50_6, arg_50_2, arg_50_3, var_50_7, var_50_8, var_50_1.scale, 3, 0.05) then
				return iter_50_0
			end
		else
			local var_50_12 = var_50_1.cardW * var_50_1.scale
			local var_50_13 = var_50_1.cardH * var_50_1.scale

			if var_50_2 <= arg_50_2 and arg_50_2 <= var_50_2 + var_50_12 and var_50_3 <= arg_50_3 and arg_50_3 <= var_50_3 + var_50_13 then
				return iter_50_0
			end
		end
	end

	return nil
end

local function var_0_115(arg_51_0)
	if not arg_51_0 or not arg_51_0.virtual then
		return
	end

	local var_51_0 = var_0_4.stageSelect

	var_51_0.active = true
	var_51_0.phase = "enter"
	var_51_0.selectedStage = nil
	var_51_0.stageRects = nil
	var_51_0.pressedIndex = nil
	var_51_0.hoveredIndex = nil
	var_51_0.hoverProg = nil
	var_51_0.pressedProg = nil
	var_51_0.clickFeedbacks = nil
	var_51_0.shakeFeedbacks = nil
	var_51_0.hoverGraceT = 0
	var_51_0.stagePage = 1
	var_51_0.pagePressed = nil
	var_51_0.pageSlideT = 0
	var_51_0.pageSlideDir = 0
	var_51_0.pageFrom = 1
	var_51_0.pageTo = 1
	var_51_0.pageArrow = var_51_0.pageArrow or {
		scale = 1,
		hovered = false
	}
	var_51_0.pageArrow.rect = nil
	var_51_0.pageArrow.hovered = false
	var_51_0.pageArrow.scale = 1
	var_51_0.diffActive = false
	var_51_0.diffY = arg_51_0.virtual.H
	var_51_0.diffTargetY = arg_51_0.virtual.H
	var_51_0.diffV = 0
	var_51_0.diffAppearT = 0
	var_51_0.diffAppearProg = {
		0,
		0,
		0
	}
	var_51_0.saveSlotAppearTimer = 0
	var_51_0.saveSlotAppearProg = 0
	var_51_0.saveSlotRect = nil
	var_51_0.saveSlotHovered = false
	var_51_0.saveSlotPressed = false
	var_51_0.saveSlotHoverProg = 0
	var_51_0.saveSlotPressedProg = 0
	var_51_0.saveSlotClickFeedback = 0

	if var_51_0.back then
		var_51_0.back.pressed = false
		var_51_0.back.scale = 0.9
		var_51_0.back.rect = nil
	end

	var_51_0.y = -arg_51_0.virtual.H
	var_51_0.targetY = 0
	var_51_0.v = 0
	var_51_0._dropSfxT = 0.2
	var_51_0._dropSfxPlayed = false
end

local function var_0_116(arg_52_0)
	if not arg_52_0 or not arg_52_0.virtual then
		return
	end

	local var_52_0 = var_0_4.stageSelect

	if not var_52_0 or not var_52_0.active then
		return
	end

	if var_52_0.diffActive then
		if var_0_37[math.floor(tonumber(var_52_0.selectedStage or 0) or 0)] then
			var_0_93(arg_52_0.stageSelectOverlay and arg_52_0.stageSelectOverlay.difficultyTitle or nil)
		end

		var_52_0.diffActive = false
		var_52_0.diffTargetY = arg_52_0.virtual.H
		var_52_0.diffClosing = true

		if var_0_30 then
			if var_0_30:isPlaying() then
				var_0_30:stop()
			end

			var_0_30:play()
		end

		return
	end

	local var_52_1 = arg_52_0.virtual.H

	var_52_0.phase = "leave"
	var_52_0.targetY = -var_52_1

	var_0_33()

	var_52_0.pressedIndex = nil
	var_52_0.stageRects = nil
	var_52_0.hoveredIndex = nil
	var_52_0.hoverProg = nil
	var_52_0.hoverGraceT = 0

	if var_52_0.back then
		var_52_0.back.pressed = false
	end
end

local function var_0_117(arg_53_0)
	local var_53_0 = var_0_4._stageSelectFlow

	if not var_53_0 then
		return
	end

	if var_0_4.stageSelect and var_0_4.stageSelect.active then
		return
	end

	var_53_0.active = true
	var_53_0.phase = "hide"
	var_53_0.t = 0
	var_0_4.inputCooldown = math.max(var_0_4.inputCooldown or 0, 0.25)
	var_0_4._menuFadeAlpha = 1
	var_0_4._menuLogoOffsetY = 0
	var_0_4._menuButtonsOffsetY = 0
end

function var_0_4.closeStageSelect(arg_54_0)
	var_0_116(arg_54_0 or var_0_5)
end

function var_0_4.isStageSelectOpen()
	return (var_0_4.stageSelect and var_0_4.stageSelect.active) == true
end

function var_0_4.resetMenuState(arg_56_0)
	arg_56_0 = arg_56_0 or var_0_5
	pendingAction = nil
	pendingTimer = 0

	if var_0_4.stageSelect then
		local var_56_0 = var_0_4.stageSelect

		var_56_0.active = false
		var_56_0.phase = "idle"
		var_56_0.v = 0
		var_56_0.pressedIndex = nil
		var_56_0.stageRects = nil
		var_56_0.saveSlotRect = nil
		var_56_0.saveSlotHovered = false
		var_56_0.saveSlotPressed = false
		var_56_0.saveSlotHoverProg = 0
		var_56_0.saveSlotPressedProg = 0
		var_56_0.saveSlotClickFeedback = 0
		var_56_0.saveSlotAppearTimer = 0
		var_56_0.saveSlotAppearProg = 0

		if arg_56_0 and arg_56_0.virtual and arg_56_0.virtual.H then
			var_56_0.y = -arg_56_0.virtual.H
			var_56_0.targetY = -arg_56_0.virtual.H
		else
			var_56_0.y = 0
			var_56_0.targetY = 0
		end

		if var_56_0.back then
			var_56_0.back.pressed = false
			var_56_0.back.scale = 0.9
			var_56_0.back.rect = nil
			var_56_0.back.alpha = 0
			var_56_0.back._drawScale = nil
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

local var_0_118 = {
	overshoot = 8,
	totalDur = 0.9,
	state = "anim",
	startY = -100,
	targetY = 0,
	t = 0,
	y = -100
}

function var_0_4.resetLogoAnim()
	var_0_118.t = 0
	var_0_118.state = "anim"
	var_0_118.y = var_0_118.startY
end

var_0_4.exitConfirm = {
	active = false,
	action = "exit",
	leaving = false,
	v = 0,
	ulNoProg = 0,
	y = 720,
	ulYesProg = 0,
	targetY = 0
}

function var_0_4.openConfirm(arg_58_0, arg_58_1, arg_58_2)
	local var_58_0 = arg_58_0 and arg_58_0.restartConfirm or {}
	local var_58_1 = arg_58_0 and arg_58_0.virtual and arg_58_0.virtual.H or 720
	local var_58_2 = 160
	local var_58_3 = var_58_0.centerY or math.floor(var_58_1 * (var_58_0.centerFracY or 0.5) + 0.5)
	local var_58_4 = var_58_0.boardOffsetY or 0
	local var_58_5 = math.floor(var_58_3 - var_58_2 * 0.5 + var_58_4 + 0.5)

	var_0_4.exitConfirm.active = true
	var_0_4.exitConfirm.leaving = false
	var_0_4.exitConfirm.y = var_58_1 + 10
	var_0_4.exitConfirm.v = 0
	var_0_4.exitConfirm.targetY = var_58_5
	var_0_4.exitConfirm.rectYes = nil
	var_0_4.exitConfirm.rectNo = nil
	var_0_4.exitConfirm.ulYesProg = 0
	var_0_4.exitConfirm.ulNoProg = 0
	var_0_4.exitConfirm.action = arg_58_1 or "exit"
	var_0_4.exitConfirm.prompt = arg_58_2
end

var_0_4.buttons = {
	{
		textKey = "menu_play",
		id = "play"
	},
	{
		textKey = "menu_settings",
		id = "settings"
	},
	{
		textKey = "menu_exit",
		id = "exit"
	}
}

local function var_0_119()
	if var_0_71 then
		return
	end

	local var_59_0, var_59_1 = pcall(love.graphics.newImage, "src/sprites/mainmenu/logo.png")

	if var_59_0 then
		var_59_1:setFilter("nearest", "nearest")

		var_0_13 = var_59_1
	end

	local var_59_2 = {
		"src/sprites/icons/menu/upgrade.png",
		"sprites/icons/menu/upgrade.png"
	}
	local var_59_3 = false
	local var_59_4

	for iter_59_0, iter_59_1 in ipairs(var_59_2) do
		var_59_3, var_59_4 = pcall(love.graphics.newImage, iter_59_1)

		if var_59_3 and var_59_4 then
			break
		end
	end

	if var_59_3 and var_59_4 then
		var_59_4:setFilter("nearest", "nearest")

		var_0_20 = var_59_4
	end

	local var_59_5 = {
		"src/sprites/icons/menu/discord.png",
		"sprites/icons/menu/discord.png"
	}
	local var_59_6 = false
	local var_59_7

	for iter_59_2, iter_59_3 in ipairs(var_59_5) do
		var_59_6, var_59_7 = pcall(love.graphics.newImage, iter_59_3)

		if var_59_6 and var_59_7 then
			break
		end
	end

	if var_59_6 and var_59_7 then
		var_59_7:setFilter("nearest", "nearest")

		var_0_18 = var_59_7
	end

	local var_59_8 = {
		"src/sprites/icons/menu/collection.png",
		"sprites/icons/menu/collection.png"
	}
	local var_59_9 = false
	local var_59_10

	for iter_59_4, iter_59_5 in ipairs(var_59_8) do
		var_59_9, var_59_10 = pcall(love.graphics.newImage, iter_59_5)

		if var_59_9 and var_59_10 then
			break
		end
	end

	if var_59_9 and var_59_10 then
		var_59_10:setFilter("nearest", "nearest")

		var_0_14 = var_59_10
	end

	local var_59_11 = {
		"src/sprites/icons/menu/collectionopen.png",
		"sprites/icons/menu/collectionopen.png"
	}
	local var_59_12 = false
	local var_59_13

	for iter_59_6, iter_59_7 in ipairs(var_59_11) do
		if love.filesystem.getInfo(iter_59_7, "file") then
			var_59_12, var_59_13 = pcall(love.graphics.newImage, iter_59_7)

			if var_59_12 and var_59_13 then
				break
			end
		end
	end

	if var_59_12 and var_59_13 then
		var_59_13:setFilter("nearest", "nearest")

		var_0_15 = var_59_13
	end

	local var_59_14 = {
		"src/sprites/icons/menu/achievement.png",
		"sprites/icons/menu/achievement.png"
	}
	local var_59_15 = false
	local var_59_16

	for iter_59_8, iter_59_9 in ipairs(var_59_14) do
		var_59_15, var_59_16 = pcall(love.graphics.newImage, iter_59_9)

		if var_59_15 and var_59_16 then
			break
		end
	end

	if var_59_15 and var_59_16 then
		var_59_16:setFilter("nearest", "nearest")

		var_0_16 = var_59_16
	end

	local var_59_17 = {
		"src/sprites/icons/menu/achievementopen.png",
		"sprites/icons/menu/achievementopen.png"
	}
	local var_59_18 = false
	local var_59_19

	for iter_59_10, iter_59_11 in ipairs(var_59_17) do
		if love.filesystem.getInfo(iter_59_11, "file") then
			var_59_18, var_59_19 = pcall(love.graphics.newImage, iter_59_11)

			if var_59_18 and var_59_19 then
				break
			end
		end
	end

	if var_59_18 and var_59_19 then
		var_59_19:setFilter("nearest", "nearest")

		var_0_17 = var_59_19
	end

	local var_59_20, var_59_21 = pcall(love.graphics.newImage, "src/sprites/icons/menu/originite.png")

	if var_59_20 then
		var_59_21:setFilter("nearest", "nearest")

		var_0_21 = var_59_21
	end

	local var_59_22, var_59_23 = pcall(love.graphics.newImage, "src/sprites/mainmenu/menubutton.png")

	if var_59_22 then
		var_59_23:setFilter("nearest", "nearest")

		var_0_24 = var_59_23
	end

	local var_59_24, var_59_25 = pcall(love.image.newImageData, "src/sprites/mainmenu/menubutton.png")

	if var_59_24 then
		var_0_67 = var_59_25
	end

	local var_59_26 = {
		"src/sprites/mainmenu/playbutton.png",
		"sprites/mainmenu/playbutton.png"
	}
	local var_59_27 = false
	local var_59_28

	for iter_59_12, iter_59_13 in ipairs(var_59_26) do
		var_59_27, var_59_28 = pcall(love.graphics.newImage, iter_59_13)

		if var_59_27 and var_59_28 then
			break
		end
	end

	if var_59_27 and var_59_28 then
		var_59_28:setFilter("nearest", "nearest")

		var_0_25 = var_59_28
	end

	local var_59_29 = false
	local var_59_30

	for iter_59_14, iter_59_15 in ipairs(var_59_26) do
		var_59_29, var_59_30 = pcall(love.image.newImageData, iter_59_15)

		if var_59_29 and var_59_30 then
			break
		end
	end

	if var_59_29 and var_59_30 then
		var_0_68 = var_59_30
	end

	local var_59_31 = {
		"src/sprites/mainmenu/optionbutton.png",
		"sprites/mainmenu/optionbutton.png"
	}
	local var_59_32 = false
	local var_59_33

	for iter_59_16, iter_59_17 in ipairs(var_59_31) do
		var_59_32, var_59_33 = pcall(love.graphics.newImage, iter_59_17)

		if var_59_32 and var_59_33 then
			break
		end
	end

	if var_59_32 and var_59_33 then
		var_59_33:setFilter("nearest", "nearest")

		var_0_26 = var_59_33
	end

	local var_59_34 = false
	local var_59_35

	for iter_59_18, iter_59_19 in ipairs(var_59_31) do
		var_59_34, var_59_35 = pcall(love.image.newImageData, iter_59_19)

		if var_59_34 and var_59_35 then
			break
		end
	end

	if var_59_34 and var_59_35 then
		var_0_69 = var_59_35
	end

	local var_59_36 = {
		"src/sprites/mainmenu/quitbutton.png",
		"sprites/mainmenu/quitbutton.png"
	}
	local var_59_37 = false
	local var_59_38

	for iter_59_20, iter_59_21 in ipairs(var_59_36) do
		var_59_37, var_59_38 = pcall(love.graphics.newImage, iter_59_21)

		if var_59_37 and var_59_38 then
			break
		end
	end

	if var_59_37 and var_59_38 then
		var_59_38:setFilter("nearest", "nearest")

		var_0_27 = var_59_38
	end

	local var_59_39 = false
	local var_59_40

	for iter_59_22, iter_59_23 in ipairs(var_59_36) do
		var_59_39, var_59_40 = pcall(love.image.newImageData, iter_59_23)

		if var_59_39 and var_59_40 then
			break
		end
	end

	if var_59_39 and var_59_40 then
		var_0_70 = var_59_40
	end

	local var_59_41 = {
		"src/sprites/mainmenu/menubuttonbackground.png",
		"sprites/mainmenu/menubuttonbackground.png"
	}
	local var_59_42 = false
	local var_59_43

	for iter_59_24, iter_59_25 in ipairs(var_59_41) do
		var_59_42, var_59_43 = pcall(love.graphics.newImage, iter_59_25)

		if var_59_42 then
			break
		end
	end

	if var_59_42 and var_59_43 then
		var_59_43:setFilter("nearest", "nearest")

		var_0_28 = var_59_43
	end

	if not var_0_29 then
		local var_59_44 = var_0_6 and var_0_6.audio and var_0_6.audio.buttonHover

		if not var_59_44 then
			local var_59_45 = "src/audio/ui/buttonhover1.wav"
			local var_59_46, var_59_47 = pcall(love.audio.newSource, var_59_45, "static")

			if not var_59_46 then
				local var_59_48 = "audio/ui/buttonhover1.wav"

				var_59_46, var_59_47 = pcall(love.audio.newSource, var_59_48, "static")
			end

			if var_59_46 and var_59_47 then
				var_59_44 = var_59_47
			end
		end

		if var_59_44 then
			local var_59_49 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

			if var_59_44.setVolume then
				var_59_44:setVolume(var_59_49 * 1.6)
			end

			var_0_29 = var_59_44
		end
	end

	if not var_0_30 then
		local var_59_50 = var_0_6 and var_0_6.audio and var_0_6.audio.buttonClick

		if not var_59_50 then
			local var_59_51 = "src/audio/ui/buttonclick1.wav"
			local var_59_52, var_59_53 = pcall(love.audio.newSource, var_59_51, "static")

			if not var_59_52 then
				local var_59_54 = "audio/ui/buttonclick1.wav"

				var_59_52, var_59_53 = pcall(love.audio.newSource, var_59_54, "static")
			end

			if var_59_52 and var_59_53 then
				var_59_50 = var_59_53
			end
		end

		if var_59_50 then
			local var_59_55 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

			if var_59_50.setVolume then
				var_59_50:setVolume(var_59_55 * 1.6)
			end

			var_0_30 = var_59_50
		end
	end

	if not var_0_31 then
		local var_59_56 = "src/audio/ui/risingheavyhit.wav"
		local var_59_57, var_59_58 = pcall(love.audio.newSource, var_59_56, "static")

		if not var_59_57 then
			local var_59_59 = "audio/ui/risingheavyhit.wav"

			var_59_57, var_59_58 = pcall(love.audio.newSource, var_59_59, "static")
		end

		if var_59_57 and var_59_58 then
			local var_59_60 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

			if var_59_58.setVolume then
				var_59_58:setVolume(var_59_60 * 1.8)
			end

			var_0_31 = var_59_58
		end
	end

	local var_59_61, var_59_62 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagewindow.png")

	if var_59_61 then
		var_59_62:setFilter("nearest", "nearest")

		var_0_34 = var_59_62
	end

	local var_59_63, var_59_64 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagewindowrope.png")

	if var_59_63 then
		var_59_64:setFilter("nearest", "nearest")

		var_0_35 = var_59_64
	end

	local var_59_65, var_59_66 = pcall(love.graphics.newImage, "src/sprites/mainmenu/titlebackground.png")

	if var_59_65 then
		var_59_66:setFilter("nearest", "nearest")

		var_0_36 = var_59_66
	end

	for iter_59_26 = 1, 6 do
		local var_59_67, var_59_68 = pcall(love.graphics.newImage, string.format("src/sprites/mainmenu/stage%dtitle.png", iter_59_26))

		if var_59_67 and var_59_68 then
			var_59_68:setFilter("nearest", "nearest")

			var_0_37[iter_59_26] = var_59_68
		end
	end

	if not var_0_37[4] then
		local var_59_69, var_59_70 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage4title.png")

		if var_59_69 and var_59_70 then
			var_59_70:setFilter("nearest", "nearest")

			var_0_37[4] = var_59_70
		end
	end

	local var_59_71 = {
		"src/sprites/mainmenu/stagetitle.png",
		"sprites/mainmenu/stagetitle.png"
	}

	for iter_59_27, iter_59_28 in ipairs(var_59_71) do
		local var_59_72, var_59_73 = pcall(love.graphics.newImage, iter_59_28)

		if var_59_72 and var_59_73 then
			var_59_73:setFilter("nearest", "nearest")

			var_0_38 = var_59_73

			break
		end
	end

	local var_59_74, var_59_75 = pcall(love.graphics.newImage, "src/sprites/mainmenu/arrow.png")

	if var_59_74 and var_59_75 then
		var_59_75:setFilter("nearest", "nearest")

		var_0_39 = var_59_75
	end

	local var_59_76, var_59_77 = pcall(love.graphics.newImage, "src/sprites/mainmenu/backbutton.png")

	if var_59_76 then
		var_59_77:setFilter("nearest", "nearest")

		var_0_40 = var_59_77
	end

	local function var_59_78(arg_60_0)
		local var_60_0, var_60_1 = pcall(love.graphics.newImage, arg_60_0)

		if var_60_0 and var_60_1 then
			var_60_1:setFilter("nearest", "nearest")

			return var_60_1
		end

		return nil
	end

	var_0_53 = var_59_78("src/sprites/icons/menu/bronzemedal.png")
	var_0_54 = var_59_78("src/sprites/icons/menu/silvermedal.png")
	var_0_55 = var_59_78("src/sprites/icons/menu/goldmedal.png")

	local var_59_79, var_59_80 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard.png")

	if var_59_79 then
		var_59_80:setFilter("nearest", "nearest")

		var_0_41 = var_59_80
		var_0_42 = var_59_80
	end

	local var_59_81, var_59_82 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage1.png")

	if var_59_81 then
		var_59_82:setFilter("nearest", "nearest")

		var_0_45[1] = var_59_82
	end

	local var_59_83, var_59_84 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage2.png")

	if var_59_83 then
		var_59_84:setFilter("nearest", "nearest")

		var_0_45[2] = var_59_84
	end

	local var_59_85, var_59_86 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage3.png")

	if var_59_85 then
		var_59_86:setFilter("nearest", "nearest")

		var_0_45[3] = var_59_86
	end

	local var_59_87, var_59_88 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage4.png")

	if var_59_87 then
		var_59_88:setFilter("nearest", "nearest")

		var_0_45[4] = var_59_88
	end

	local var_59_89, var_59_90 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage5.png")

	if var_59_89 then
		var_59_90:setFilter("nearest", "nearest")

		var_0_45[5] = var_59_90
	end

	local var_59_91, var_59_92 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stage6.png")

	if var_59_91 then
		var_59_92:setFilter("nearest", "nearest")

		var_0_45[6] = var_59_92
	end

	local var_59_93, var_59_94 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard.png")

	if var_59_93 then
		var_0_43 = var_59_94
		var_0_44 = var_59_94
	end

	local var_59_95, var_59_96 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage1.png")

	if var_59_95 then
		var_0_46[1] = var_59_96
	end

	local var_59_97, var_59_98 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage2.png")

	if var_59_97 then
		var_0_46[2] = var_59_98
	end

	local var_59_99, var_59_100 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage3.png")

	if var_59_99 then
		var_0_46[3] = var_59_100
	end

	local var_59_101, var_59_102 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage4.png")

	if var_59_101 then
		var_0_46[4] = var_59_102
	end

	local var_59_103, var_59_104 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage5.png")

	if var_59_103 then
		var_0_46[5] = var_59_104
	end

	local var_59_105, var_59_106 = pcall(love.image.newImageData, "src/sprites/mainmenu/stage6.png")

	if var_59_105 then
		var_0_46[6] = var_59_106
	end

	local var_59_107, var_59_108 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard_easy.png")

	if var_59_107 then
		var_59_108:setFilter("nearest", "nearest")

		var_0_47 = var_59_108
	end

	local var_59_109, var_59_110 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard_normal.png")

	if var_59_109 then
		var_59_110:setFilter("nearest", "nearest")

		var_0_48 = var_59_110
	end

	local var_59_111, var_59_112 = pcall(love.graphics.newImage, "src/sprites/mainmenu/stagecard_hard.png")

	if var_59_111 then
		var_59_112:setFilter("nearest", "nearest")

		var_0_49 = var_59_112
	end

	local var_59_113, var_59_114 = pcall(love.graphics.newImage, "src/sprites/icons/stoneicon/000lock.png")

	if var_59_113 then
		var_59_114:setFilter("nearest", "nearest")

		difficultyLockImg = var_59_114
	end

	local var_59_115, var_59_116 = pcall(love.graphics.newImage, "src/sprites/icons/stoneicon/000lockanimation.png")

	if var_59_115 then
		var_59_116:setFilter("nearest", "nearest")

		difficultyLockAnimImg = var_59_116
		difficultyLockAnimQuads = {}

		local var_59_117, var_59_118 = var_59_116:getDimensions()

		for iter_59_29 = 1, 4 do
			difficultyLockAnimQuads[iter_59_29] = love.graphics.newQuad((iter_59_29 - 1) * 16, 0, 16, 16, var_59_117, var_59_118)
		end
	end

	local var_59_119, var_59_120 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard_easy.png")

	if var_59_119 then
		var_0_50 = var_59_120
	end

	local var_59_121, var_59_122 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard_normal.png")

	if var_59_121 then
		var_0_51 = var_59_122
	end

	local var_59_123, var_59_124 = pcall(love.image.newImageData, "src/sprites/mainmenu/stagecard_hard.png")

	if var_59_123 then
		var_0_52 = var_59_124
	end

	local var_59_125, var_59_126 = pcall(love.graphics.newImage, "src/sprites/background/button/saveslot.png")

	if var_59_125 and var_59_126 then
		var_59_126:setFilter("nearest", "nearest")

		var_0_56 = var_59_126
	end

	local var_59_127, var_59_128 = pcall(love.graphics.newImage, "src/sprites/background/button/savedatatitle.png")

	if var_59_127 and var_59_128 then
		var_59_128:setFilter("nearest", "nearest")

		var_0_57 = var_59_128
	end

	var_0_4.reloadFonts()

	local var_59_129 = var_0_5 and var_0_5.mainMenuBackground or {}
	local var_59_130 = tonumber(var_59_129.mainlayers1ScrollSpeed)

	if var_59_130 == nil then
		var_59_130 = 18
	end

	local var_59_131 = tonumber(var_59_129.mainlayers2ScrollSpeed)

	if var_59_131 == nil then
		var_59_131 = var_59_130
	end

	local var_59_132 = 1
	local var_59_133 = {
		"src/sprites/mainmenu/mainbackground/mainlayers1.png",
		"sprites/mainmenu/mainbackground/mainlayers1.png"
	}
	local var_59_134 = false
	local var_59_135

	for iter_59_30, iter_59_31 in ipairs(var_59_133) do
		var_59_134, var_59_135 = pcall(love.graphics.newImage, iter_59_31)

		if var_59_134 and var_59_135 then
			break
		end
	end

	if var_59_134 and var_59_135 then
		var_59_135:setFilter("nearest", "nearest")
		table.insert(var_0_12, var_59_132, {
			compositeH = 286,
			compositeW = 519,
			scrollMatchComposite = true,
			x = 0,
			img = var_59_135,
			speed = var_59_130
		})

		var_59_132 = var_59_132 + 1
	end

	local var_59_136 = {
		"src/sprites/mainmenu/mainbackground/mainlayers2.png",
		"sprites/mainmenu/mainbackground/mainlayers2.png"
	}
	local var_59_137 = false
	local var_59_138

	for iter_59_32, iter_59_33 in ipairs(var_59_136) do
		var_59_137, var_59_138 = pcall(love.graphics.newImage, iter_59_33)

		if var_59_137 and var_59_138 then
			break
		end
	end

	if var_59_137 and var_59_138 then
		var_59_138:setFilter("nearest", "nearest")
		table.insert(var_0_12, var_59_132, {
			compositeH = 286,
			compositeW = 519,
			scrollMatchComposite = true,
			x = 0,
			img = var_59_138,
			speed = var_59_131
		})
	end

	local var_59_139 = 353
	local var_59_140 = 166
	local var_59_141 = var_59_139 + var_59_140
	local var_59_142 = 286
	local var_59_143 = 9
	local var_59_144 = var_0_5 and var_0_5.mainMenuBackground or {}
	local var_59_145 = tonumber(var_59_144.unitsFrameDur) or 0.26
	local var_59_146 = tonumber(var_59_144.goblinsFrameDur) or 0.15

	local function var_59_147(arg_61_0)
		local var_61_0 = false
		local var_61_1

		for iter_61_0, iter_61_1 in ipairs(arg_61_0) do
			var_61_0, var_61_1 = pcall(love.graphics.newImage, iter_61_1)

			if var_61_0 and var_61_1 then
				break
			end
		end

		return var_61_0 and var_61_1 or nil
	end

	local function var_59_148(arg_62_0, arg_62_1)
		arg_62_0:setFilter("nearest", "nearest")

		local var_62_0, var_62_1 = arg_62_0:getDimensions()
		local var_62_2 = arg_62_1.frameW
		local var_62_3 = arg_62_1.frameH
		local var_62_4 = {}

		for iter_62_0 = 1, var_59_143 do
			var_62_4[iter_62_0] = love.graphics.newQuad((iter_62_0 - 1) * var_62_2, 0, var_62_2, var_62_3, var_62_0, var_62_1)
		end

		table.insert(var_0_12, {
			fullscreenCover = false,
			speed = 0,
			splitComposite = true,
			sheetAnim = true,
			x = 0,
			frameIndex = 1,
			animT = 0,
			img = arg_62_0,
			compositeW = var_59_141,
			compositeH = var_59_142,
			offsetXInComposite = arg_62_1.offsetXInComposite,
			quads = var_62_4,
			frameW = var_62_2,
			frameH = var_62_3,
			frameCount = var_59_143,
			frameDur = arg_62_1.frameDur
		})
	end

	local var_59_149 = var_59_147({
		"src/sprites/mainmenu/mainbackground/units-sheet.png",
		"sprites/mainmenu/mainbackground/units-sheet.png"
	})
	local var_59_150 = var_59_147({
		"src/sprites/mainmenu/mainbackground/goblins-sheet.png",
		"sprites/mainmenu/mainbackground/goblins-sheet.png"
	})

	if var_59_149 and var_59_150 then
		var_59_148(var_59_149, {
			offsetXInComposite = 0,
			frameW = var_59_139,
			frameH = var_59_142,
			frameDur = var_59_145
		})
		var_59_148(var_59_150, {
			frameW = var_59_140,
			frameH = var_59_142,
			offsetXInComposite = var_59_139,
			frameDur = var_59_146
		})
	else
		local var_59_151 = 519
		local var_59_152 = 286
		local var_59_153 = 0.17
		local var_59_154 = {
			"src/sprites/mainmenu/mainbackground/main-sheet.png",
			"sprites/mainmenu/mainbackground/main-sheet.png"
		}
		local var_59_155 = false
		local var_59_156

		for iter_59_34, iter_59_35 in ipairs(var_59_154) do
			var_59_155, var_59_156 = pcall(love.graphics.newImage, iter_59_35)

			if var_59_155 then
				break
			end
		end

		if var_59_155 and var_59_156 then
			var_59_156:setFilter("nearest", "nearest")

			local var_59_157, var_59_158 = var_59_156:getDimensions()
			local var_59_159 = {}

			for iter_59_36 = 1, var_59_143 do
				var_59_159[iter_59_36] = love.graphics.newQuad((iter_59_36 - 1) * var_59_151, 0, var_59_151, var_59_152, var_59_157, var_59_158)
			end

			table.insert(var_0_12, {
				speed = 0,
				fullscreenCover = true,
				sheetAnim = true,
				x = 0,
				animT = 0,
				frameIndex = 1,
				img = var_59_156,
				quads = var_59_159,
				frameW = var_59_151,
				frameH = var_59_152,
				frameCount = var_59_143,
				frameDur = var_59_153
			})
		else
			print("Failed to load main menu background (units+goblins or main-sheet fallback)")
		end
	end

	for iter_59_37 = 1, var_0_65 do
		local var_59_160 = love.math.random() < 0.42

		table.insert(var_0_64, {
			x = love.math.random(0, 1280),
			y = love.math.random(0, 720),
			glow = var_59_160,
			phase = love.math.random() * math.pi * 2,
			speedX = (var_59_160 and love.math.random(-35, 35) or love.math.random(-50, 50)) / 10,
			speedY = (var_59_160 and love.math.random(-15, 15) or love.math.random(-20, 20)) / 10,
			alpha = love.math.random() * 0.45 + (var_59_160 and 0.35 or 0.22),
			t = love.math.random() * 100
		})
	end

	local var_59_161, var_59_162 = pcall(love.graphics.newShader, var_0_59)

	if var_59_161 then
		var_0_58 = var_59_162
	end

	local var_59_163, var_59_164 = pcall(love.graphics.newShader, var_0_63)

	if var_59_163 then
		var_0_62 = var_59_164
	end

	local var_59_165, var_59_166 = pcall(love.graphics.newShader, var_0_61)

	if var_59_165 then
		var_0_60 = var_59_166
	end

	var_0_71 = true
end

local var_0_120
local var_0_121 = 0
local var_0_122 = 0.15
local var_0_123 = {}

function var_0_4.spendOriginite(arg_63_0)
	if arg_63_0 <= 0 then
		return false
	end

	if arg_63_0 > var_0_22 then
		return false
	end

	var_0_22 = var_0_22 - arg_63_0

	table.insert(var_0_123, {
		t = 0,
		yOffset = 0,
		xOffset = 0,
		exitDur = 0.35,
		holdDur = 0.65,
		enterDur = 0.12,
		dur = 1.12,
		alpha = 0,
		text = "-" .. tostring(arg_63_0),
		color = {
			1,
			0.2,
			0.2,
			1
		}
	})

	return true
end

local var_0_124 = 0.3

var_0_4.inputCooldown = 0

if var_0_4.collectionLocked == nil then
	var_0_4.collectionLocked = true
end

if var_0_4.achievementLocked == nil then
	var_0_4.achievementLocked = true
end

function var_0_4.getDebugCounts()
	return {
		particles = #var_0_64,
		floatingTexts = #var_0_123,
		layers = #var_0_12
	}
end

function var_0_4.updateCurrency(arg_65_0)
	if var_0_23 ~= var_0_22 then
		local var_65_0 = var_0_22 - var_0_23

		if math.abs(var_65_0) < 0.5 then
			var_0_23 = var_0_22
		else
			var_0_23 = var_0_23 + var_65_0 * math.min(1, arg_65_0 * 5)
		end
	end

	for iter_65_0 = #var_0_123, 1, -1 do
		local var_65_1 = var_0_123[iter_65_0]

		var_65_1.t = var_65_1.t + arg_65_0

		local var_65_2 = math.max(0.001, var_65_1.enterDur or 0.12)
		local var_65_3 = math.max(0, var_65_1.holdDur or 0.65)
		local var_65_4 = math.max(0.001, var_65_1.exitDur or 0.35)
		local var_65_5 = var_65_2 + var_65_3 + var_65_4

		var_65_1.dur = var_65_5

		local var_65_6 = 0
		local var_65_7 = 0
		local var_65_8 = 18
		local var_65_9 = 10
		local var_65_10 = 20

		if var_65_2 > var_65_1.t then
			local var_65_11 = var_0_84(var_65_1.t / var_65_2)

			var_65_1.alpha = var_65_11
			var_65_1.xOffset = 0
			var_65_1.yOffset = var_0_83(var_65_8, var_65_9, var_65_11)
		elseif var_65_1.t < var_65_2 + var_65_3 then
			var_65_1.alpha = 1
			var_65_1.xOffset = 0
			var_65_1.yOffset = var_65_9
		else
			local var_65_12 = var_0_81((var_65_1.t - var_65_2 - var_65_3) / var_65_4, 0, 1)
			local var_65_13 = var_0_84(var_65_12)

			var_65_1.alpha = 1 - var_65_12
			var_65_1.xOffset = 0
			var_65_1.yOffset = var_0_83(var_65_9, var_65_10, var_65_13)
		end

		if var_65_5 <= var_65_1.t then
			table.remove(var_0_123, iter_65_0)
		end
	end
end

function var_0_4.update(arg_66_0, arg_66_1, arg_66_2)
	var_0_4.updateCurrency(arg_66_0)

	local var_66_0 = var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.sfxVolume or 1

	if var_0_29 and var_0_29.setVolume then
		var_0_29:setVolume(var_66_0 * 1.6)
	end

	if var_0_30 and var_0_30.setVolume then
		var_0_30:setVolume(var_66_0 * 1.6)
	end

	if var_0_31 and var_0_31.setVolume then
		var_0_31:setVolume(var_66_0 * 1.8)
	end

	local var_66_1 = var_0_4.stageSelect
	local var_66_2 = var_0_4._stageSelectFlow
	local var_66_3 = var_0_5 and var_0_5.scale or 1
	local var_66_4 = (var_66_2 and var_66_2.floatLogoPx or 18) * var_66_3
	local var_66_5 = (var_66_2 and var_66_2.floatButtonsPx or 18) * var_66_3

	if var_66_2 and var_66_2.active and var_66_2.phase == "hide" then
		var_66_2.t = (var_66_2.t or 0) + arg_66_0

		local var_66_6 = var_0_84((var_66_2.t or 0) / math.max(0.001, var_66_2.hideDur or 0.3))

		var_0_4._menuFadeAlpha = 1 - var_66_6
		var_0_4._menuLogoOffsetY = -var_66_4 * var_66_6
		var_0_4._menuButtonsOffsetY = var_66_5 * var_66_6

		if (var_66_2.t or 0) >= (var_66_2.hideDur or 0.3) then
			var_0_4._menuFadeAlpha = 0
			var_0_4._menuLogoOffsetY = -var_66_4
			var_0_4._menuButtonsOffsetY = var_66_5
			var_66_2.phase = "gap"
			var_66_2.t = 0
		end
	elseif var_66_2 and var_66_2.active and var_66_2.phase == "gap" then
		var_66_2.t = (var_66_2.t or 0) + arg_66_0
		var_0_4._menuFadeAlpha = 0
		var_0_4._menuLogoOffsetY = -var_66_4
		var_0_4._menuButtonsOffsetY = var_66_5

		if (var_66_2.t or 0) >= (var_66_2.gapDur or 0.1) then
			var_0_115(var_0_5)

			var_66_2.phase = "idle"
			var_66_2.active = false
			var_66_2.t = 0
		end
	elseif var_66_2 and var_66_2.active and var_66_2.phase == "show" then
		var_66_2.t = (var_66_2.t or 0) + arg_66_0

		local var_66_7 = var_0_85((var_66_2.t or 0) / math.max(0.001, var_66_2.showDur or 0.22))

		var_0_4._menuFadeAlpha = var_66_7
		var_0_4._menuLogoOffsetY = -var_66_4 * (1 - var_66_7)
		var_0_4._menuButtonsOffsetY = var_66_5 * (1 - var_66_7)

		if (var_66_2.t or 0) >= (var_66_2.showDur or 0.22) then
			var_0_4._menuFadeAlpha = 1
			var_0_4._menuLogoOffsetY = 0
			var_0_4._menuButtonsOffsetY = 0
			var_66_2.phase = "idle"
			var_66_2.active = false
			var_66_2.t = 0
		end
	elseif var_66_1 and var_66_1.active then
		var_0_4._menuFadeAlpha = 0
		var_0_4._menuLogoOffsetY = -var_66_4
		var_0_4._menuButtonsOffsetY = var_66_5
	elseif not var_66_2 or not var_66_2.active then
		var_0_4._menuFadeAlpha = 1
		var_0_4._menuLogoOffsetY = 0
		var_0_4._menuButtonsOffsetY = 0
	end

	if var_66_1 and var_66_1.active then
		local var_66_8 = var_0_5 and var_0_5.pauseOverlay and var_0_5.pauseOverlay.spring or {
			k = 90,
			maxVel = 2000,
			damping = 14
		}
		local var_66_9 = tonumber(var_66_8.k or 90) or 90
		local var_66_10 = tonumber(var_66_8.damping or 14) or 14
		local var_66_11 = tonumber(var_66_8.maxVel or 2000) or 2000

		if var_66_1.phase == "leave" then
			var_66_9 = var_66_9 * 1.35
			var_66_10 = var_66_10 * 1
			var_66_11 = var_66_11 * 1.5
		end

		local var_66_12 = (var_66_1.targetY or 0) - (var_66_1.y or 0)

		var_66_1.v = (var_66_1.v or 0) + var_66_12 * var_66_9 * arg_66_0

		local var_66_13 = math.exp(-var_66_10 * arg_66_0)

		var_66_1.v = var_66_1.v * var_66_13
		var_66_1.v = var_0_81(var_66_1.v, -var_66_11, var_66_11)
		var_66_1.y = (var_66_1.y or 0) + var_66_1.v * arg_66_0

		local var_66_14 = var_66_1.snapEps or 0.5
		local var_66_15 = 10

		if var_66_1.phase == "leave" then
			var_66_14 = math.max(var_66_14, 2)
			var_66_15 = 35
		end

		if var_66_14 >= math.abs(var_66_12) and var_66_15 >= math.abs(var_66_1.v) then
			var_66_1.y = var_66_1.targetY or 0
			var_66_1.v = 0

			if var_66_1.phase == "leave" then
				var_66_1.active = false
				var_66_1.phase = "idle"
				var_66_1.stageRects = nil

				local var_66_16 = var_0_4._stageSelectFlow

				if var_66_16 then
					var_66_16.active = true
					var_66_16.phase = "show"
					var_66_16.t = 0
				end
			else
				var_66_1.phase = "idle"
			end
		end

		if var_66_1.diffActive or var_66_1.diffY and var_66_1.diffY < (var_0_5.virtual.H or 720) then
			local var_66_17 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
			local var_66_18 = (var_66_1.diffActive or var_66_1.diffClosing) and 0 or var_66_17
			local var_66_19 = 110
			local var_66_20 = 16
			local var_66_21 = var_66_18 - (var_66_1.diffY or var_66_17)

			var_66_1.diffV = (var_66_1.diffV or 0) + var_66_21 * var_66_19 * arg_66_0
			var_66_1.diffV = var_66_1.diffV * math.exp(-var_66_20 * arg_66_0)
			var_66_1.diffY = (var_66_1.diffY or var_66_17) + var_66_1.diffV * arg_66_0

			if math.abs(var_66_21) < 0.5 and math.abs(var_66_1.diffV) < 10 then
				var_66_1.diffY = var_66_18
				var_66_1.diffV = 0
			end
		end

		var_66_1.diffAppearProg = var_66_1.diffAppearProg or {
			0,
			0,
			0
		}
		var_66_1.diffTimers = var_66_1.diffTimers or {
			0,
			0,
			0
		}

		local var_66_22 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
		local var_66_23 = (var_66_1.y or 0) <= -var_66_22 * 0.8
		local var_66_24 = var_0_4.getRunSave(var_66_1.selectedStage) ~= nil
		local var_66_25 = var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.runSaveSlot or {}
		local var_66_26 = tonumber(var_66_25.appearAfterHardProgress or 0.18) or 0.18
		local var_66_27 = tonumber(var_66_25.appearSpeed or 1.6) or 1.6

		var_66_1.saveSlotAppearTimer = tonumber(var_66_1.saveSlotAppearTimer or 0) or 0
		var_66_1.saveSlotAppearProg = tonumber(var_66_1.saveSlotAppearProg or 0) or 0

		for iter_66_0 = 1, 3 do
			local var_66_28 = (iter_66_0 - 1) * 0.22

			if var_66_1.diffActive and var_66_23 then
				var_66_1.diffTimers[iter_66_0] = math.min(1.5, var_66_1.diffTimers[iter_66_0] + arg_66_0 * 1.6)
			elseif not var_66_1.diffActive then
				local var_66_29 = false

				if iter_66_0 == 3 then
					var_66_29 = not var_66_24 or var_66_1.saveSlotAppearProg <= 0.8
				elseif iter_66_0 == 2 then
					if var_66_1.diffAppearProg and var_66_1.diffAppearProg[3] <= 0.8 then
						var_66_29 = true
					end
				elseif iter_66_0 == 1 and var_66_1.diffAppearProg and var_66_1.diffAppearProg[2] <= 0.8 then
					var_66_29 = true
				end

				if var_66_29 then
					var_66_1.diffTimers[iter_66_0] = math.max(0, var_66_1.diffTimers[iter_66_0] - arg_66_0 * 3.5)
				end
			end

			local var_66_30 = var_0_81((var_66_1.diffTimers[iter_66_0] - var_66_28) / 0.8, 0, 1.5)

			var_66_1.diffAppearProg[iter_66_0] = var_66_30
		end

		if var_66_1.diffActive and var_66_23 and var_66_24 and var_66_26 <= (var_66_1.diffAppearProg[3] or 0) then
			var_66_1.saveSlotAppearTimer = math.min(1.2, var_66_1.saveSlotAppearTimer + arg_66_0 * var_66_27)
		elseif not var_66_1.diffActive or not var_66_24 then
			var_66_1.saveSlotAppearTimer = math.max(0, var_66_1.saveSlotAppearTimer - arg_66_0 * 3.5)
		end

		var_66_1.saveSlotAppearProg = var_0_81(var_66_1.saveSlotAppearTimer / 0.8, 0, 1.5)

		if var_66_1.diffClosing and var_66_1.diffAppearProg and var_66_1.diffAppearProg[1] <= 0.01 then
			var_66_1.targetY = 0
			var_66_1.diffClosing = false
		end

		if var_66_1._dropSfxT ~= nil and not var_66_1._dropSfxPlayed then
			var_66_1._dropSfxT = var_66_1._dropSfxT - arg_66_0

			if var_66_1._dropSfxT <= 0 then
				var_0_32()

				var_66_1._dropSfxPlayed = true
			end
		end

		local var_66_31 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
		local var_66_32 = var_0_81(((var_66_1.y or 0) + var_66_31) / math.max(1, var_66_31), 0, 1)
		local var_66_33 = var_0_81((var_66_31 - (var_66_1.diffY or var_66_31)) / math.max(1, var_66_31), 0, 1)
		local var_66_34 = math.max(var_66_32, var_66_33)
		local var_66_35 = var_66_1.phase == "leave" and 0 or var_66_34

		if var_66_1.back then
			var_66_1.back.alpha = var_0_83(var_66_1.back.alpha or 0, var_66_35, arg_66_0 * 10)
		end

		if var_0_40 and var_66_1.back then
			local var_66_36 = arg_66_1 or -9999
			local var_66_37 = arg_66_2 or -9999
			local var_66_38, var_66_39 = var_0_40:getDimensions()
			local var_66_40 = 60
			local var_66_41 = 60
			local var_66_42 = 0.9
			local var_66_43 = var_0_81(var_66_1.back.alpha or 0, 0, 1)
			local var_66_44 = var_66_1.back.scale or var_66_42
			local var_66_45 = var_66_38 * var_66_44
			local var_66_46 = var_66_39 * var_66_44

			var_66_1.back.rect = {
				x = var_66_40 - var_66_45 / 2,
				y = var_66_41 - var_66_46 / 2,
				w = var_66_45,
				h = var_66_46
			}

			local var_66_47 = var_66_1.back.rect
			local var_66_48 = var_66_36 >= var_66_47.x and var_66_36 <= var_66_47.x + var_66_47.w and var_66_37 >= var_66_47.y and var_66_37 <= var_66_47.y + var_66_47.h

			if var_66_43 > 0.05 and var_66_48 and not var_66_1.back._hovered and var_0_29 then
				if var_0_29:isPlaying() then
					var_0_29:stop()
				end

				if not Controller or not Controller.muteHover or not Controller.muteHover() then
					var_0_29:play()
				end
			end

			var_66_1.back._hovered = var_66_48

			local var_66_49 = var_66_42

			if var_66_1.back.pressed then
				var_66_49 = 0.85
				var_66_1.back.scale = var_66_1.back.scale + (var_66_49 - var_66_1.back.scale) * math.min(1, arg_66_0 * 20)
			elseif var_66_48 then
				var_66_49 = 1
				var_66_1.back.scale = var_66_1.back.scale + (var_66_49 - var_66_1.back.scale) * math.min(1, arg_66_0 * 12)
			else
				var_66_1.back.scale = var_66_1.back.scale + (var_66_49 - var_66_1.back.scale) * math.min(1, arg_66_0 * 10)
			end

			local var_66_50 = var_0_83(0.82, 1, var_66_43)

			var_66_1.back._drawScale = (var_66_1.back.scale or var_66_42) * var_66_50
		end

		if (var_66_1.pageSlideT or 0) > 0 then
			var_66_1.pageSlideT = math.max(0, (var_66_1.pageSlideT or 0) - arg_66_0)

			if var_66_1.pageSlideT <= 0 then
				var_66_1.pageSlideDir = 0
				var_66_1.pageFrom = var_0_102(var_66_1)
				var_66_1.pageTo = var_0_102(var_66_1)
			end
		end

		var_66_1.pageArrow = var_66_1.pageArrow or {
			scale = 1,
			hovered = false
		}

		local var_66_51 = var_0_100(var_0_5, var_66_1, math.floor((var_66_1.y or 0) + 0.5))
		local var_66_52 = not var_66_1.diffActive and var_0_107(var_0_5, var_66_1, var_66_51) or nil

		var_66_1.pageArrow.rect = var_66_52

		local var_66_53 = arg_66_1 or -9999
		local var_66_54 = arg_66_2 or -9999
		local var_66_55 = false

		if var_66_52 and (var_66_1.pageSlideT or 0) <= 0 then
			var_66_55 = var_66_53 >= var_66_52.x and var_66_53 <= var_66_52.x + var_66_52.w and var_66_54 >= var_66_52.y and var_66_54 <= var_66_52.y + var_66_52.h
		end

		if var_66_55 and not var_66_1.pageArrow.hovered and var_0_29 then
			if var_0_29:isPlaying() then
				var_0_29:stop()
			end

			if not Controller or not Controller.muteHover or not Controller.muteHover() then
				var_0_29:play()
			end
		end

		var_66_1.pageArrow.hovered = var_66_55

		local var_66_56 = var_66_1.pagePressed and 0.9 or var_66_55 and 1.1 or 1

		var_66_1.pageArrow.scale = var_0_83(var_66_1.pageArrow.scale or 1, var_66_56, arg_66_0 * (var_66_1.pagePressed and 20 or 12))

		local var_66_57 = arg_66_1 or -9999
		local var_66_58 = arg_66_2 or -9999
		local var_66_59 = math.floor((var_66_1.y or 0) + 0.5)
		local var_66_60 = var_0_100(var_0_5, var_66_1, var_66_59)
		local var_66_61 = var_66_1.hoveredIndex
		local var_66_62

		if var_66_60 then
			var_66_1.stageRects = {}

			for iter_66_1 = 1, var_66_60.cols or 3 do
				local var_66_63 = var_0_103(var_66_1, iter_66_1)
				local var_66_64 = var_66_60.x0 + (iter_66_1 - 1) * (var_66_60.cardW * var_66_60.scale + var_66_60.gap)
				local var_66_65 = var_66_60.y0
				local var_66_66 = var_66_60.cardW * var_66_60.scale
				local var_66_67 = var_66_60.cardH * var_66_60.scale
				local var_66_68 = {
					x = var_66_64,
					yBase = var_66_65,
					y = var_66_65,
					w = var_66_66,
					h = var_66_67,
					s = var_66_60.scale,
					stageKey = var_66_63
				}
				local var_66_69, var_66_70 = var_0_104(var_66_63)

				if var_66_69 then
					local var_66_71 = var_66_69:getWidth()
					local var_66_72 = var_66_69:getHeight()
					local var_66_73

					var_66_68.stageArtX, var_66_73 = math.floor(var_66_64 + (var_66_60.cardW * var_66_60.scale - var_66_71 * var_66_60.scale) * 0.5 + 0.5), math.floor(var_66_65 + (var_66_60.cardH * var_66_60.scale - var_66_72 * var_66_60.scale) * 0.5 + 0.5)
					var_66_68.stageArtYBase = var_66_73
					var_66_68.stageArtY = var_66_73
					var_66_68.stageArtData = var_66_70
				end

				var_66_1.stageRects[iter_66_1] = var_66_68

				local var_66_74 = iter_66_1 == 1 and var_0_43 or var_0_44

				if var_66_74 and (var_66_1.pageSlideT or 0) <= 0 then
					local var_66_75 = var_66_61 == iter_66_1 and 2 or 1

					if var_0_97(var_66_74, var_66_57, var_66_58, var_66_64, var_66_65, var_66_60.scale, var_66_75, 0.05) then
						var_66_62 = iter_66_1
					elseif var_66_68.stageArtData and var_66_68.stageArtX and var_66_68.stageArtYBase and var_0_97(var_66_68.stageArtData, var_66_57, var_66_58, var_66_68.stageArtX, var_66_68.stageArtYBase, var_66_60.scale, var_66_75, 0.05) then
						var_66_62 = iter_66_1
					end
				elseif (var_66_1.pageSlideT or 0) <= 0 and var_66_64 <= var_66_57 and var_66_57 <= var_66_64 + var_66_66 and var_66_65 <= var_66_58 and var_66_58 <= var_66_65 + var_66_67 then
					var_66_62 = iter_66_1
				end
			end
		else
			var_66_1.stageRects = nil
		end

		local var_66_76 = 0.1

		if var_66_62 == nil and var_66_61 ~= nil then
			var_66_1.hoverGraceT = (var_66_1.hoverGraceT or 0) + arg_66_0

			if var_66_76 >= (var_66_1.hoverGraceT or 0) then
				var_66_62 = var_66_61
			end
		else
			var_66_1.hoverGraceT = 0
		end

		var_66_1.hoveredIndex = var_66_62

		if var_66_62 and var_66_62 ~= var_66_61 and var_0_29 then
			if var_0_29:isPlaying() then
				var_0_29:stop()
			end

			if not Controller or not Controller.muteHover or not Controller.muteHover() then
				var_0_29:play()
			end
		end

		var_66_1.hoverProg = var_66_1.hoverProg or {}
		var_66_1.pressedProg = var_66_1.pressedProg or {}
		var_66_1.clickFeedbacks = var_66_1.clickFeedbacks or {}

		local var_66_77 = var_66_60 and var_66_60.cols or 3

		for iter_66_2 = 1, var_66_77 do
			local var_66_78 = var_66_1.hoveredIndex == iter_66_2 and 1 or 0

			var_66_1.hoverProg[iter_66_2] = var_0_83(var_66_1.hoverProg[iter_66_2] or 0, var_66_78, arg_66_0 * 14)

			if var_66_1.clickFeedbacks[iter_66_2] and var_66_1.clickFeedbacks[iter_66_2] > 0 then
				var_66_1.clickFeedbacks[iter_66_2] = var_66_1.clickFeedbacks[iter_66_2] - arg_66_0

				if var_66_1.clickFeedbacks[iter_66_2] < 0 then
					var_66_1.clickFeedbacks[iter_66_2] = 0
				end
			end

			var_66_1.shakeFeedbacks = var_66_1.shakeFeedbacks or {}

			if var_66_1.shakeFeedbacks[iter_66_2] and var_66_1.shakeFeedbacks[iter_66_2] > 0 then
				var_66_1.shakeFeedbacks[iter_66_2] = var_66_1.shakeFeedbacks[iter_66_2] - arg_66_0

				if var_66_1.shakeFeedbacks[iter_66_2] < 0 then
					var_66_1.shakeFeedbacks[iter_66_2] = 0
				end
			end

			local var_66_79 = var_66_1.clickFeedbacks[iter_66_2] and var_66_1.clickFeedbacks[iter_66_2] > 0
			local var_66_80 = (var_66_1.pressedIndex == iter_66_2 or var_66_79) and 1 or 0

			var_66_1.pressedProg[iter_66_2] = var_0_83(var_66_1.pressedProg[iter_66_2] or 0, var_66_80, arg_66_0 * 25)
		end

		var_66_1.unlockedStages = var_66_1.unlockedStages or {
			true,
			false,
			false,
			false,
			false,
			false
		}

		if not var_66_1.prevUnlockedStages then
			var_66_1.prevUnlockedStages = {}

			for iter_66_3, iter_66_4 in pairs(var_66_1.unlockedStages) do
				var_66_1.prevUnlockedStages[iter_66_3] = iter_66_4
			end
		end

		var_66_1.unlockAnims = var_66_1.unlockAnims or {}
		var_66_1.pendingStageUnlockAnims = var_66_1.pendingStageUnlockAnims or {}
		var_66_1.newStages = var_66_1.newStages or {}

		for iter_66_5 = 1, var_66_1.maxStages or 6 do
			local var_66_81 = _G.isDemoContentLocked and _G.isDemoContentLocked(iter_66_5, 1)
			local var_66_82 = var_66_1.unlockedStages[iter_66_5] == true and not var_66_81
			local var_66_83 = var_66_1.prevUnlockedStages[iter_66_5] == true

			if var_66_81 then
				var_66_1.unlockedStages[iter_66_5] = false
			end

			if var_66_82 and not var_66_83 then
				var_66_1.pendingStageUnlockAnims[iter_66_5] = true
				var_66_1.newStages[iter_66_5] = true
			elseif var_66_81 or not var_66_82 and var_66_83 then
				var_66_1.unlockAnims[iter_66_5] = nil
				var_66_1.pendingStageUnlockAnims[iter_66_5] = nil
				var_66_1.newStages[iter_66_5] = nil
			end

			var_66_1.prevUnlockedStages[iter_66_5] = var_66_82
		end

		if var_66_60 and (var_66_1.pageSlideT or 0) <= 0 and not var_66_1.diffActive then
			for iter_66_6 = 1, var_66_60.cols or 3 do
				local var_66_84 = var_0_103(var_66_1, iter_66_6)

				if var_66_1.pendingStageUnlockAnims[var_66_84] and var_66_1.unlockedStages[var_66_84] == true then
					var_66_1.unlockAnims[var_66_84] = {
						active = true,
						t = 0,
						duration = 1.6
					}
					var_66_1.pendingStageUnlockAnims[var_66_84] = nil
				end
			end
		end

		for iter_66_7 = 1, var_66_1.maxStages or 6 do
			local var_66_85 = var_66_1.unlockAnims[iter_66_7]

			if var_66_85 and var_66_85.active then
				var_66_85.t = var_66_85.t + arg_66_0

				if var_66_85.t >= var_66_85.duration then
					var_66_85.active = false
					var_66_85.t = var_66_85.duration
				end
			end
		end

		if var_66_1.diffY and var_66_1.diffY < (var_0_5.virtual.H or 720) then
			local var_66_86 = arg_66_1 or -9999
			local var_66_87 = arg_66_2 or -9999
			local var_66_88 = 0
			local var_66_89 = var_0_112(var_0_5, var_66_88)
			local var_66_90

			if var_66_89 then
				var_66_1.diffRects = {}

				for iter_66_8 = 1, 3 do
					local var_66_91 = var_66_89.x0 + (iter_66_8 - 1) * (var_66_89.cardW * var_66_89.scale + var_66_89.gap)
					local var_66_92 = var_66_89.y0

					var_66_1.diffRects[iter_66_8] = {
						x = var_66_91,
						y = var_66_92,
						w = var_66_89.cardW * var_66_89.scale,
						h = var_66_89.cardH * var_66_89.scale,
						s = var_66_89.scale
					}

					local var_66_93 = iter_66_8 == 1 and var_0_50 or iter_66_8 == 2 and var_0_51 or var_0_52

					if var_66_93 and var_0_97(var_66_93, var_66_86, var_66_87, var_66_91, var_66_92, var_66_89.scale, 1, 0.05) then
						var_66_90 = iter_66_8
					end
				end
			else
				var_66_1.diffRects = nil
			end

			var_66_1.diffHoverIdx = var_66_90
			var_66_1.diffHoverProg = var_66_1.diffHoverProg or {
				0,
				0,
				0
			}
			var_66_1.diffPressedProg = var_66_1.diffPressedProg or {
				0,
				0,
				0
			}
			var_66_1.diffClickFeedbacks = var_66_1.diffClickFeedbacks or {
				0,
				0,
				0
			}

			for iter_66_9 = 1, 3 do
				local var_66_94 = var_66_1.diffHoverIdx == iter_66_9 and 1 or 0

				var_66_1.diffHoverProg[iter_66_9] = var_0_83(var_66_1.diffHoverProg[iter_66_9] or 0, var_66_94, arg_66_0 * 14)

				if var_66_1.diffClickFeedbacks[iter_66_9] and var_66_1.diffClickFeedbacks[iter_66_9] > 0 then
					var_66_1.diffClickFeedbacks[iter_66_9] = var_66_1.diffClickFeedbacks[iter_66_9] - arg_66_0
				end

				var_66_1.diffShakeFeedbacks = var_66_1.diffShakeFeedbacks or {}

				if var_66_1.diffShakeFeedbacks[iter_66_9] and var_66_1.diffShakeFeedbacks[iter_66_9] > 0 then
					var_66_1.diffShakeFeedbacks[iter_66_9] = var_66_1.diffShakeFeedbacks[iter_66_9] - arg_66_0

					if var_66_1.diffShakeFeedbacks[iter_66_9] < 0 then
						var_66_1.diffShakeFeedbacks[iter_66_9] = 0
					end
				end

				local var_66_95 = (var_66_1.diffPressedIdx == iter_66_9 or var_66_1.diffClickFeedbacks[iter_66_9] and var_66_1.diffClickFeedbacks[iter_66_9] > 0) and 1 or 0

				var_66_1.diffPressedProg[iter_66_9] = var_0_83(var_66_1.diffPressedProg[iter_66_9] or 0, var_66_95, arg_66_0 * 25)
			end

			local var_66_96 = var_0_4.getRunSave(var_66_1.selectedStage) and var_66_1.diffActive and (var_66_1.saveSlotAppearProg or 0) >= 0.35 and var_0_113(var_0_5) or nil

			var_66_1.saveSlotRect = var_66_96
			var_66_1.saveSlotHovered = var_66_96 ~= nil and var_66_86 >= var_66_96.x and var_66_86 <= var_66_96.x + var_66_96.w and var_66_87 >= var_66_96.y and var_66_87 <= var_66_96.y + var_66_96.h
			var_66_1.saveSlotHoverProg = var_0_83(var_66_1.saveSlotHoverProg or 0, var_66_1.saveSlotHovered and 1 or 0, arg_66_0 * 14)
			var_66_1.saveSlotClickFeedback = math.max(0, (tonumber(var_66_1.saveSlotClickFeedback or 0) or 0) - arg_66_0)

			local var_66_97 = var_66_1.saveSlotPressed or (var_66_1.saveSlotClickFeedback or 0) > 0

			var_66_1.saveSlotPressedProg = var_0_83(var_66_1.saveSlotPressedProg or 0, var_66_97 and 1 or 0, arg_66_0 * 25)

			if not var_66_96 then
				var_66_1.saveSlotPressed = false
				var_66_1.saveSlotClickFeedback = 0
				var_66_1.saveSlotHoverProg = var_0_83(var_66_1.saveSlotHoverProg or 0, 0, arg_66_0 * 14)
				var_66_1.saveSlotPressedProg = var_0_83(var_66_1.saveSlotPressedProg or 0, 0, arg_66_0 * 25)
			end
		end
	end

	if var_0_4.inputCooldown and var_0_4.inputCooldown > 0 then
		var_0_4.inputCooldown = var_0_4.inputCooldown - arg_66_0

		if var_0_4.inputCooldown < 0 then
			var_0_4.inputCooldown = 0
		end
	end

	if var_0_4.collectionShake then
		var_0_4.collectionShake.t = (var_0_4.collectionShake.t or 0) + arg_66_0

		local var_66_98 = var_0_4.collectionShake.dur or 0

		if var_66_98 > 0 and var_66_98 <= (var_0_4.collectionShake.t or 0) then
			var_0_4.collectionShake = nil
		end
	end

	if var_0_4.achievementShake then
		var_0_4.achievementShake.t = (var_0_4.achievementShake.t or 0) + arg_66_0

		local var_66_99 = var_0_4.achievementShake.dur or 0

		if var_66_99 > 0 and var_66_99 <= (var_0_4.achievementShake.t or 0) then
			var_0_4.achievementShake = nil
		end
	end

	if var_0_120 then
		var_0_121 = var_0_121 - arg_66_0

		if var_0_121 <= 0 then
			local var_66_100 = var_0_120

			var_0_120 = nil

			if var_66_100 == "open_exit_modal" then
				var_0_4.openConfirm(var_0_5, "exit", var_0_2.getText("menu_exit_confirm", var_0_5 and var_0_5.menuSettings and var_0_5.menuSettings.language or "ko"))

				return nil
			else
				if var_66_100 == "play" then
					if not var_0_4.exitConfirm or not var_0_4.exitConfirm.active then
						var_0_117(var_0_5)
					end

					return nil
				end

				return var_66_100
			end
		end
	end

	if not var_0_71 then
		var_0_119()
	end

	for iter_66_10, iter_66_11 in ipairs(var_0_12) do
		if iter_66_11.sheetAnim then
			iter_66_11.animT = (iter_66_11.animT or 0) + arg_66_0

			local var_66_101 = iter_66_11.frameDur or 0.17

			while var_66_101 <= iter_66_11.animT do
				iter_66_11.animT = iter_66_11.animT - var_66_101

				local var_66_102 = iter_66_11.frameCount or 1

				iter_66_11.frameIndex = (iter_66_11.frameIndex or 1) % var_66_102 + 1
			end
		end

		iter_66_11.x = (iter_66_11.x - iter_66_11.speed * arg_66_0) % iter_66_11.img:getWidth()
	end

	for iter_66_12, iter_66_13 in ipairs(var_0_64) do
		iter_66_13.x = iter_66_13.x + iter_66_13.speedX * arg_66_0
		iter_66_13.y = iter_66_13.y + iter_66_13.speedY * arg_66_0
		iter_66_13.t = iter_66_13.t + arg_66_0

		if iter_66_13.x < 0 then
			iter_66_13.x = 1280
		end

		if iter_66_13.x > 1280 then
			iter_66_13.x = 0
		end

		if iter_66_13.y < 0 then
			iter_66_13.y = 720
		end

		if iter_66_13.y > 720 then
			iter_66_13.y = 0
		end
	end

	var_0_87(var_0_118, arg_66_0)

	local var_66_103 = var_0_4.stageSelect

	if var_0_96(var_66_103) then
		local var_66_104 = var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or {}

		var_0_88(var_66_104)
		var_0_94(var_0_86, arg_66_0)
	end

	local var_66_105 = var_0_4.exitConfirm

	if var_66_105.active then
		local var_66_106 = var_0_5 and var_0_5.restartConfirm or {}
		local var_66_107 = var_66_106.spring or {}
		local var_66_108 = var_66_107.k or 90
		local var_66_109 = var_66_107.damping or 12
		local var_66_110 = var_66_107.maxVel or 2000
		local var_66_111 = var_66_105.targetY

		if var_66_105.leaving then
			var_66_111 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720
		end

		local var_66_112 = (var_66_111 - var_66_105.y) * var_66_108 - var_66_109 * var_66_105.v

		var_66_105.v = var_66_105.v + var_66_112 * arg_66_0

		if var_66_110 < var_66_105.v then
			var_66_105.v = var_66_110
		elseif var_66_105.v < -var_66_110 then
			var_66_105.v = -var_66_110
		end

		var_66_105.y = var_66_105.y + var_66_105.v * arg_66_0

		if var_66_105.leaving then
			local var_66_113 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720

			if var_66_105.y >= var_66_113 - 1 then
				var_66_105.active = false
				var_66_105.leaving = false
			end
		elseif math.abs(var_66_105.v) < 0.02 and math.abs(var_66_111 - var_66_105.y) < 0.5 then
			var_66_105.y = var_66_111
			var_66_105.v = 0
		end

		local var_66_114 = var_66_106.hoverUnderline

		if var_66_114 and var_66_114.enabled ~= false and not var_66_105.leaving then
			var_66_105.ulYesProg = var_66_105.ulYesProg or 0
			var_66_105.ulNoProg = var_66_105.ulNoProg or 0

			local var_66_115 = arg_66_1 or 0
			local var_66_116 = arg_66_2 or 0

			local function var_66_117(arg_67_0)
				return arg_67_0 and var_66_115 >= arg_67_0.x and var_66_115 <= arg_67_0.x + arg_67_0.w and var_66_116 >= arg_67_0.y and var_66_116 <= arg_67_0.y + arg_67_0.h
			end

			local var_66_118 = var_66_117(var_66_105.rectYes)
			local var_66_119 = var_66_117(var_66_105.rectNo)
			local var_66_120 = math.max(var_66_114.drawDurSec or 0.15, 0.001)
			local var_66_121 = math.max(var_66_114.retractDurSec or 0.1, 0.001)
			local var_66_122 = arg_66_0 / var_66_120
			local var_66_123 = arg_66_0 / var_66_121

			if var_66_118 then
				var_66_105.ulYesProg = var_66_105.ulYesProg + var_66_122
			else
				var_66_105.ulYesProg = var_66_105.ulYesProg - var_66_123
			end

			if var_66_119 then
				var_66_105.ulNoProg = var_66_105.ulNoProg + var_66_122
			else
				var_66_105.ulNoProg = var_66_105.ulNoProg - var_66_123
			end

			if var_66_105.ulYesProg < 0 then
				var_66_105.ulYesProg = 0
			elseif var_66_105.ulYesProg > 1 then
				var_66_105.ulYesProg = 1
			end

			if var_66_105.ulNoProg < 0 then
				var_66_105.ulNoProg = 0
			elseif var_66_105.ulNoProg > 1 then
				var_66_105.ulNoProg = 1
			end
		end
	end

	local var_66_124 = (tonumber(var_0_4._menuFadeAlpha or 1) or 1) > 0.05 and (not var_0_4.stageSelect or not var_0_4.stageSelect.active) and (not var_0_4.exitConfirm or not var_0_4.exitConfirm.active)

	if var_66_124 and var_0_4.buttons and (var_0_24 or var_0_25 or var_0_26 or var_0_27) then
		local var_66_125 = arg_66_1 or -9999
		local var_66_126 = arg_66_2 or -9999
		local var_66_127 = var_0_4.inputCooldown == 0 and var_0_76(var_0_4.buttons, var_66_125, var_66_126) or nil
		local var_66_128

		for iter_66_14, iter_66_15 in ipairs(var_0_4.buttons) do
			iter_66_15.scale = iter_66_15.scale or 1

			local var_66_129 = var_66_127 == iter_66_14
			local var_66_130 = 1

			if iter_66_15.pressed and var_0_4.inputCooldown == 0 then
				local var_66_131 = 0.9130434782608696

				iter_66_15.scale = iter_66_15.scale + (var_66_131 - iter_66_15.scale) * math.min(1, arg_66_0 * 20)
			elseif var_66_129 then
				local var_66_132 = 1.1304347826086958

				iter_66_15.scale = iter_66_15.scale + (var_66_132 - iter_66_15.scale) * math.min(1, arg_66_0 * 12)
			else
				local var_66_133 = 1

				iter_66_15.scale = iter_66_15.scale + (var_66_133 - iter_66_15.scale) * math.min(1, arg_66_0 * 10)
			end

			if var_0_4.inputCooldown > 0 then
				iter_66_15.pressed = false
			end

			if var_66_129 then
				var_66_128 = iter_66_15.id or iter_66_14
			end
		end

		if var_66_128 ~= var_0_4._lastMenuHoverId then
			if var_66_128 and var_0_29 then
				if var_0_29:isPlaying() then
					var_0_29:stop()
				end

				if not Controller or not Controller.muteHover or not Controller.muteHover() then
					var_0_29:play()
				end
			end

			var_0_4._lastMenuHoverId = var_66_128
		end
	else
		var_0_4._lastMenuHoverId = nil
	end

	local function var_66_134()
		if var_0_29 then
			if var_0_29:isPlaying() then
				var_0_29:stop()
			end

			if not Controller or not Controller.muteHover or not Controller.muteHover() then
				var_0_29:play()
			end
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

	if var_66_124 then
		local var_66_135 = arg_66_1 or -9999
		local var_66_136 = arg_66_2 or -9999
		local var_66_137 = var_0_4.upgradeRect and var_66_135 >= var_0_4.upgradeRect.x and var_66_135 <= var_0_4.upgradeRect.x + var_0_4.upgradeRect.w and var_66_136 >= var_0_4.upgradeRect.y and var_66_136 <= var_0_4.upgradeRect.y + var_0_4.upgradeRect.h
		local var_66_138 = var_0_4.collectionRect and var_66_135 >= var_0_4.collectionRect.x and var_66_135 <= var_0_4.collectionRect.x + var_0_4.collectionRect.w and var_66_136 >= var_0_4.collectionRect.y and var_66_136 <= var_0_4.collectionRect.y + var_0_4.collectionRect.h
		local var_66_139 = var_0_4.achievementRect and var_66_135 >= var_0_4.achievementRect.x and var_66_135 <= var_0_4.achievementRect.x + var_0_4.achievementRect.w and var_66_136 >= var_0_4.achievementRect.y and var_66_136 <= var_0_4.achievementRect.y + var_0_4.achievementRect.h
		local var_66_140 = var_0_4.discordRect and var_66_135 >= var_0_4.discordRect.x and var_66_135 <= var_0_4.discordRect.x + var_0_4.discordRect.w and var_66_136 >= var_0_4.discordRect.y and var_66_136 <= var_0_4.discordRect.y + var_0_4.discordRect.h

		if var_66_137 and not var_0_4._upgradeHovering then
			var_66_134()
		end

		if var_66_138 and not var_0_4._collectionHovering then
			var_66_134()
		end

		if var_66_139 and not var_0_4._achievementHovering then
			var_66_134()
		end

		if var_66_140 and not var_0_4._discordHovering then
			var_66_134()
		end

		var_0_4._upgradeHovering = var_66_137
		var_0_4._collectionHovering = var_66_138
		var_0_4._achievementHovering = var_66_139
		var_0_4._discordHovering = var_66_140
		var_0_4.upgradeState = var_0_80(var_0_4.upgradeState, var_0_4.upgradeRect, arg_66_0, var_66_135, var_66_136, var_0_4.inputCooldown)
		var_0_4.collectionState = var_0_80(var_0_4.collectionState, var_0_4.collectionRect, arg_66_0, var_66_135, var_66_136, var_0_4.inputCooldown)
		var_0_4.achievementState = var_0_80(var_0_4.achievementState, var_0_4.achievementRect, arg_66_0, var_66_135, var_66_136, var_0_4.inputCooldown)
		var_0_4.discordState = var_0_80(var_0_4.discordState, var_0_4.discordRect, arg_66_0, var_66_135, var_66_136, var_0_4.inputCooldown)
	else
		var_0_4._upgradeHovering = nil
		var_0_4._collectionHovering = nil
		var_0_4._achievementHovering = nil
		var_0_4._discordHovering = nil
	end

	var_0_4._collectionHintAlpha = var_0_4._collectionHintAlpha or 0

	local var_66_141 = var_66_124 and var_0_4.collectionLocked and var_0_4._collectionHovering and 1 or 0

	var_0_4._collectionHintAlpha = var_0_4._collectionHintAlpha + (var_66_141 - var_0_4._collectionHintAlpha) * math.min(1, arg_66_0 * 14)
	var_0_4._achievementHintAlpha = var_0_4._achievementHintAlpha or 0

	local var_66_142 = var_66_124 and var_0_4.achievementLocked and var_0_4._achievementHovering and 1 or 0

	var_0_4._achievementHintAlpha = var_0_4._achievementHintAlpha + (var_66_142 - var_0_4._achievementHintAlpha) * math.min(1, arg_66_0 * 14)
end

local function var_0_125(arg_69_0, arg_69_1, arg_69_2, arg_69_3, arg_69_4, arg_69_5, arg_69_6, arg_69_7, arg_69_8)
	local var_69_0 = (arg_69_7 or 0) * arg_69_3

	if var_69_0 < 0.02 or not arg_69_5 then
		return
	end

	local var_69_1 = arg_69_6 or {}
	local var_69_2 = var_0_2.getText(arg_69_8, arg_69_4)

	if not var_69_2 or var_69_2 == arg_69_8 then
		var_69_2 = var_0_2.getText("menu_full_version_locked_hint", arg_69_4)
	end

	local var_69_3 = var_0_8 or var_0_7 or love.graphics.getFont()

	love.graphics.setFont(var_69_3)

	local var_69_4 = tonumber(var_69_1.lockedHintScale) or 0.95
	local var_69_5 = tonumber(var_69_1.lockedHintPadPx) or 6
	local var_69_6 = tonumber(var_69_1.lockedHintTextOffsetY) or -2
	local var_69_7 = var_69_3:getWidth(var_69_2) * var_69_4
	local var_69_8 = var_69_3:getHeight() * var_69_4
	local var_69_9 = math.ceil(var_69_7 + var_69_5 * 2)
	local var_69_10 = math.ceil(var_69_8 + var_69_5 * 2)
	local var_69_11 = tonumber(var_69_1.lockedHintGapPx) or 8
	local var_69_12 = arg_69_5
	local var_69_13 = math.floor(var_69_12.x + var_69_12.w / 2 - var_69_9 / 2)
	local var_69_14 = math.floor(var_69_12.y - var_69_11 - var_69_10)

	if var_69_13 < 6 then
		var_69_13 = 6
	end

	if var_69_13 + var_69_9 > arg_69_1 - 6 then
		var_69_13 = arg_69_1 - 6 - var_69_9
	end

	if var_69_14 < 6 then
		var_69_14 = 6
	end

	local var_69_15 = 0.92 * var_69_0
	local var_69_16 = {
		0.95,
		0.9,
		0.78,
		var_69_0
	}
	local var_69_17 = {
		0.06,
		0.05,
		0.08,
		var_69_15
	}
	local var_69_18 = arg_69_0 and arg_69_0.tooltip

	if var_69_18 and var_69_18.drawPixelRoundedRect then
		var_69_18:drawPixelRoundedRect(var_69_13, var_69_14, var_69_9, var_69_10, var_69_17, var_69_17)
	else
		love.graphics.setColor(var_69_17)
		love.graphics.rectangle("fill", var_69_13, var_69_14, var_69_9, var_69_10)
	end

	love.graphics.setColor(var_69_16)

	local var_69_19 = math.floor(var_69_13 + (var_69_9 - var_69_7) * 0.5 + 0.5)
	local var_69_20 = math.floor(var_69_14 + var_69_5 + var_69_6 + 0.5)

	love.graphics.print(var_69_2, var_69_19, var_69_20, 0, var_69_4, var_69_4)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_126(arg_70_0)
	return var_0_2.getText("menu_full_version_locked_hint", arg_70_0)
end

local function var_0_127(arg_71_0, arg_71_1, arg_71_2, arg_71_3)
	if not arg_71_0 or not arg_71_1 or not arg_71_2 or not (arg_71_2 > 0.02) then
		return
	end

	local var_71_0 = arg_71_0.menuSettings and arg_71_0.menuSettings.language or "ko"
	local var_71_1
	local var_71_2 = _G.isDemoContentLocked and _G.isDemoContentLocked(arg_71_3, 1) and "menu_full_version_locked_hint" or arg_71_3 == 3 and "menu_stage_3_locked_hint" or arg_71_3 == 2 and "menu_stage_2_locked_hint" or "menu_stage_locked_hint"
	local var_71_3 = var_0_2.getText(var_71_2, var_71_0)
	local var_71_4 = love.graphics.getFont()
	local var_71_5 = var_0_7 or var_71_4

	love.graphics.setFont(var_71_5)

	local var_71_6 = arg_71_0.virtual and arg_71_0.virtual.W or 1280
	local var_71_7 = 0.9
	local var_71_8 = 7
	local var_71_9 = var_71_5:getWidth(var_71_3) * var_71_7
	local var_71_10 = var_71_5:getHeight() * var_71_7
	local var_71_11 = math.ceil(var_71_9 + var_71_8 * 2)
	local var_71_12 = math.ceil(var_71_10 + var_71_8 * 2)
	local var_71_13 = math.floor(arg_71_1.x + arg_71_1.w * 0.5 - var_71_11 * 0.5 + 0.5)
	local var_71_14 = math.floor(arg_71_1.y + arg_71_1.h + 10 + 0.5)

	if var_71_13 < 8 then
		var_71_13 = 8
	end

	if var_71_13 + var_71_11 > var_71_6 - 8 then
		var_71_13 = var_71_6 - 8 - var_71_11
	end

	local var_71_15 = arg_71_0.virtual and arg_71_0.virtual.H or 720

	if var_71_14 + var_71_12 > var_71_15 - 8 then
		var_71_14 = math.floor(arg_71_1.y - var_71_12 - 10 + 0.5)
	end

	if var_71_14 < 8 then
		var_71_14 = 8
	end

	local var_71_16 = math.min(1, arg_71_2)
	local var_71_17 = {
		0.06,
		0.05,
		0.08,
		0.92 * var_71_16
	}
	local var_71_18 = {
		0.95,
		0.9,
		0.78,
		var_71_16
	}
	local var_71_19 = arg_71_0.tooltip

	if var_71_19 and var_71_19.drawPixelRoundedRect then
		var_71_19:drawPixelRoundedRect(var_71_13, var_71_14, var_71_11, var_71_12, var_71_17, var_71_17)
	else
		love.graphics.setColor(var_71_17)
		love.graphics.rectangle("fill", var_71_13, var_71_14, var_71_11, var_71_12)
	end

	love.graphics.setColor(var_71_18)
	love.graphics.print(var_71_3, math.floor(var_71_13 + var_71_8 + 0.5), math.floor(var_71_14 + var_71_8 - 1 + 0.5), 0, var_71_7, var_71_7)
	love.graphics.setFont(var_71_4)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_128()
	local var_72_0 = var_0_4.stageSelect

	if not var_72_0 then
		return
	end

	if var_72_0.unlockedStages == nil then
		var_72_0.unlockedStages = {
			true,
			false,
			false,
			false,
			false,
			false
		}
	end

	local var_72_1 = var_72_0.clearedDifficulties or {}

	var_72_0.unlockedStages[1] = true
	var_72_0.unlockedStages[2] = var_72_1[1] and var_72_1[1][2] == true
	var_72_0.unlockedStages[3] = var_72_1[2] and var_72_1[2][2] == true
	var_72_0.unlockedStages[4] = var_72_1[3] and var_72_1[3][2] == true or false
	var_72_0.unlockedStages[5] = var_72_1[4] and var_72_1[4][2] == true
	var_72_0.unlockedStages[6] = var_72_1[5] and var_72_1[5][2] == true

	for iter_72_0 = 1, var_72_0.maxStages or 6 do
		if _G.isDemoContentLocked and _G.isDemoContentLocked(iter_72_0, 1) then
			var_72_0.unlockedStages[iter_72_0] = false

			if var_72_0.unlockAnims then
				var_72_0.unlockAnims[iter_72_0] = nil
			end

			if var_72_0.pendingStageUnlockAnims then
				var_72_0.pendingStageUnlockAnims[iter_72_0] = nil
			end

			if var_72_0.newStages then
				var_72_0.newStages[iter_72_0] = nil
			end
		end
	end
end

function var_0_101(arg_73_0)
	local var_73_0 = var_0_4.stageSelect

	if not var_73_0 then
		return true
	end

	if _G.isDemoContentLocked and _G.isDemoContentLocked(arg_73_0, 1) then
		return false
	end

	var_0_128()

	if arg_73_0 == 1 then
		return true
	end

	return var_73_0.unlockedStages[arg_73_0] == true
end

local function var_0_129(arg_74_0, arg_74_1)
	local var_74_0 = var_0_4.stageSelect

	if not var_74_0 then
		return true
	end

	if _G.isDemoContentLocked and _G.isDemoContentLocked(arg_74_0, arg_74_1) then
		return false
	end

	if arg_74_1 == 1 then
		return true
	end

	if var_74_0.unlockedDifficulties == nil then
		var_74_0.unlockedDifficulties = {
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

	local var_74_1 = arg_74_0 or 1

	if not var_74_0.unlockedDifficulties[var_74_1] then
		var_74_0.unlockedDifficulties[var_74_1] = {
			true,
			false,
			false
		}
	end

	local var_74_2 = var_74_0.clearedDifficulties
	local var_74_3 = var_74_2 and var_74_2[var_74_1] or {}

	var_74_0.unlockedDifficulties[var_74_1][1] = true
	var_74_0.unlockedDifficulties[var_74_1][2] = var_74_3[1] == true
	var_74_0.unlockedDifficulties[var_74_1][3] = var_74_3[1] == true and var_74_3[2] == true

	return var_74_0.unlockedDifficulties[var_74_1][arg_74_1] == true
end

local function var_0_130(arg_75_0)
	local var_75_0 = var_0_4.stageSelect

	if not var_75_0 then
		return
	end

	local var_75_1 = math.max(1, math.floor(tonumber(arg_75_0 or 1) or 1))

	var_75_0.unlockedDifficulties = var_75_0.unlockedDifficulties or {
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

	local var_75_2 = var_75_0.clearedDifficulties and var_75_0.clearedDifficulties[var_75_1] or {}

	var_75_0.unlockedDifficulties[var_75_1] = var_75_0.unlockedDifficulties[var_75_1] or {}
	var_75_0.unlockedDifficulties[var_75_1][1] = true
	var_75_0.unlockedDifficulties[var_75_1][2] = var_75_2[1] == true
	var_75_0.unlockedDifficulties[var_75_1][3] = var_75_2[1] == true and var_75_2[2] == true
end

local function var_0_131(arg_76_0, arg_76_1)
	local var_76_0 = var_0_4.stageSelect

	if not var_76_0 then
		return
	end

	local var_76_1 = math.max(1, math.floor(tonumber(arg_76_0 or 1) or 1))
	local var_76_2 = math.max(1, math.floor(tonumber(arg_76_1 or 1) or 1))

	if var_76_2 >= 3 then
		return
	end

	var_76_0.unlockedDifficulties = var_76_0.unlockedDifficulties or {
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
	var_76_0.unlockedDifficulties[var_76_1] = var_76_0.unlockedDifficulties[var_76_1] or {
		true,
		false,
		false
	}
	var_76_0.unlockedDifficulties[var_76_1][var_76_2 + 1] = true
end

local function var_0_132()
	local var_77_0 = var_0_4.stageSelect

	if not var_77_0 then
		return nil
	end

	var_77_0.clearedDifficulties = var_77_0.clearedDifficulties or {}

	for iter_77_0 = 1, 3 do
		var_77_0.clearedDifficulties[iter_77_0] = var_77_0.clearedDifficulties[iter_77_0] or {}
	end

	return var_77_0.clearedDifficulties
end

function var_0_4.markDifficultyCleared(arg_78_0, arg_78_1)
	local var_78_0 = var_0_132()

	if not var_78_0 then
		return false
	end

	local var_78_1 = math.max(1, math.floor(tonumber(arg_78_0 or 1) or 1))
	local var_78_2 = math.max(1, math.floor(tonumber(arg_78_1 or 1) or 1))

	var_78_0[var_78_1] = var_78_0[var_78_1] or {}

	var_0_131(var_78_1, var_78_2)

	if var_78_0[var_78_1][var_78_2] == true then
		return false
	end

	var_78_0[var_78_1][var_78_2] = true

	local var_78_3 = var_0_4.stageSelect

	if var_78_3 then
		var_78_3.pendingClearMedalReveals = var_78_3.pendingClearMedalReveals or {}
		var_78_3.pendingClearMedalReveals[var_78_1] = var_78_3.pendingClearMedalReveals[var_78_1] or {}
		var_78_3.pendingClearMedalReveals[var_78_1][var_78_2] = true

		if var_78_2 < 3 and (not _G.isDemoContentLocked or not _G.isDemoContentLocked(var_78_1, var_78_2 + 1)) then
			var_78_3.pendingDifficultyUnlockAnims = var_78_3.pendingDifficultyUnlockAnims or {}
			var_78_3.pendingDifficultyUnlockAnims[var_78_1] = var_78_3.pendingDifficultyUnlockAnims[var_78_1] or {}
			var_78_3.pendingDifficultyUnlockAnims[var_78_1][var_78_2 + 1] = true
		end

		var_0_128()
	end

	return true
end

function var_0_4.toggleDifficultyCleared(arg_79_0, arg_79_1)
	local var_79_0 = var_0_132()

	if not var_79_0 then
		return false
	end

	local var_79_1 = math.max(1, math.floor(tonumber(arg_79_0 or 1) or 1))
	local var_79_2 = math.max(1, math.floor(tonumber(arg_79_1 or 1) or 1))

	var_79_0[var_79_1] = var_79_0[var_79_1] or {}
	var_79_0[var_79_1][var_79_2] = var_79_0[var_79_1][var_79_2] ~= true

	var_0_130(var_79_1)

	if var_79_0[var_79_1][var_79_2] == true and var_0_4.stageSelect then
		var_0_4.stageSelect.pendingClearMedalReveals = var_0_4.stageSelect.pendingClearMedalReveals or {}
		var_0_4.stageSelect.pendingClearMedalReveals[var_79_1] = var_0_4.stageSelect.pendingClearMedalReveals[var_79_1] or {}
		var_0_4.stageSelect.pendingClearMedalReveals[var_79_1][var_79_2] = true

		if var_79_2 < 3 and (not _G.isDemoContentLocked or not _G.isDemoContentLocked(var_79_1, var_79_2 + 1)) then
			var_0_4.stageSelect.pendingDifficultyUnlockAnims = var_0_4.stageSelect.pendingDifficultyUnlockAnims or {}
			var_0_4.stageSelect.pendingDifficultyUnlockAnims[var_79_1] = var_0_4.stageSelect.pendingDifficultyUnlockAnims[var_79_1] or {}
			var_0_4.stageSelect.pendingDifficultyUnlockAnims[var_79_1][var_79_2 + 1] = true
		end
	end

	var_0_128()

	return var_79_0[var_79_1][var_79_2] == true
end

function var_0_4.isDifficultyCleared(arg_80_0, arg_80_1)
	local var_80_0 = var_0_132()
	local var_80_1 = math.max(1, math.floor(tonumber(arg_80_0 or 1) or 1))
	local var_80_2 = math.max(1, math.floor(tonumber(arg_80_1 or 1) or 1))

	return var_80_0 and var_80_0[var_80_1] and var_80_0[var_80_1][var_80_2] == true
end

function var_0_4.isStageCleared(arg_81_0)
	local var_81_0 = var_0_132()
	local var_81_1 = math.max(1, math.floor(tonumber(arg_81_0 or 1) or 1))

	if not var_81_0 or not var_81_0[var_81_1] then
		return false
	end

	for iter_81_0 = 1, 3 do
		if var_81_0[var_81_1][iter_81_0] == true then
			return true
		end
	end

	return false
end

local function var_0_133(arg_82_0, arg_82_1)
	return var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(arg_82_0, arg_82_1)
end

local function var_0_134(arg_83_0)
	if arg_83_0 == 2 then
		return var_0_54 or var_0_53
	end

	if arg_83_0 == 3 then
		return var_0_55 or var_0_53
	end

	return var_0_53
end

local function var_0_135(arg_84_0, arg_84_1)
	local var_84_0 = var_0_4.stageSelect

	if not var_84_0 then
		return nil
	end

	var_84_0.clearMedalRevealAnims = var_84_0.clearMedalRevealAnims or {}
	var_84_0.pendingClearMedalReveals = var_84_0.pendingClearMedalReveals or {}
	var_84_0.clearMedalRevealAnims[arg_84_0] = var_84_0.clearMedalRevealAnims[arg_84_0] or {}

	if var_84_0.pendingClearMedalReveals[arg_84_0] and var_84_0.pendingClearMedalReveals[arg_84_0][arg_84_1] then
		var_84_0.pendingClearMedalReveals[arg_84_0][arg_84_1] = nil
		var_84_0.clearMedalRevealAnims[arg_84_0][arg_84_1] = {
			dur = 1.22,
			t0 = (love.timer and love.timer.getTime and love.timer.getTime() or 0) + 0.28
		}
	end

	local var_84_1 = var_84_0.clearMedalRevealAnims[arg_84_0] and var_84_0.clearMedalRevealAnims[arg_84_0][arg_84_1]

	if not var_84_1 then
		return nil
	end

	local var_84_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_84_3 = var_84_2 - (var_84_1.t0 or var_84_2)
	local var_84_4 = var_84_1.dur or 0.82

	if var_84_3 < 0 then
		var_84_1.t = 0
		var_84_1.p = 0

		return var_84_1
	end

	if var_84_4 <= var_84_3 then
		var_84_0.clearMedalRevealAnims[arg_84_0][arg_84_1] = nil

		return nil
	end

	var_84_1.t = var_84_3
	var_84_1.p = math.max(0, math.min(1, var_84_3 / math.max(0.001, var_84_4)))

	return var_84_1
end

local function var_0_136(arg_85_0, arg_85_1)
	local var_85_0 = var_0_4.stageSelect

	return var_85_0 and var_85_0.pendingClearMedalReveals and var_85_0.pendingClearMedalReveals[arg_85_0] and var_85_0.pendingClearMedalReveals[arg_85_0][arg_85_1] == true
end

local function var_0_137(arg_86_0, arg_86_1)
	local var_86_0 = var_0_4.stageSelect

	return var_86_0 and var_86_0.pendingDifficultyUnlockAnims and var_86_0.pendingDifficultyUnlockAnims[arg_86_0] and var_86_0.pendingDifficultyUnlockAnims[arg_86_0][arg_86_1] == true
end

local function var_0_138(arg_87_0, arg_87_1)
	local var_87_0 = var_0_4.stageSelect

	if not var_87_0 then
		return nil
	end

	var_87_0.difficultyUnlockAnims = var_87_0.difficultyUnlockAnims or {}
	var_87_0.pendingDifficultyUnlockAnims = var_87_0.pendingDifficultyUnlockAnims or {}
	var_87_0.difficultyUnlockAnims[arg_87_0] = var_87_0.difficultyUnlockAnims[arg_87_0] or {}

	if var_87_0.pendingDifficultyUnlockAnims[arg_87_0] and var_87_0.pendingDifficultyUnlockAnims[arg_87_0][arg_87_1] then
		var_87_0.pendingDifficultyUnlockAnims[arg_87_0][arg_87_1] = nil
		var_87_0.difficultyUnlockAnims[arg_87_0][arg_87_1] = {
			dur = 0.92,
			t0 = (love.timer and love.timer.getTime and love.timer.getTime() or 0) + 0.1
		}
	end

	local var_87_1 = var_87_0.difficultyUnlockAnims[arg_87_0] and var_87_0.difficultyUnlockAnims[arg_87_0][arg_87_1]

	if not var_87_1 then
		return nil
	end

	local var_87_2 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_87_3 = var_87_2 - (var_87_1.t0 or var_87_2)
	local var_87_4 = var_87_1.dur or 0.68

	if var_87_3 < 0 then
		var_87_1.t = 0
		var_87_1.p = 0

		return var_87_1
	end

	if var_87_4 <= var_87_3 then
		var_87_0.difficultyUnlockAnims[arg_87_0][arg_87_1] = nil

		return nil
	end

	var_87_1.t = var_87_3
	var_87_1.p = math.max(0, math.min(1, var_87_3 / math.max(0.001, var_87_4)))

	return var_87_1
end

local var_0_139

local function var_0_140()
	if not var_0_139 then
		local var_88_0 = {
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

		var_0_139 = love.graphics.newMesh(var_88_0, "strip", "static")
	end

	return var_0_139
end

local function var_0_141(arg_89_0, arg_89_1, arg_89_2, arg_89_3, arg_89_4, arg_89_5)
	if not difficultyLockAnimImg or not difficultyLockAnimQuads or not arg_89_5 then
		return
	end

	local var_89_0 = arg_89_5.p or 0
	local var_89_1 = math.max(1, math.min(4, math.floor(var_89_0 * 4) + 1))
	local var_89_2 = difficultyLockAnimQuads[var_89_1]

	if not var_89_2 then
		return
	end

	local var_89_3 = 1 - (1 - var_89_0) * (1 - var_89_0)
	local var_89_4 = arg_89_1 - math.floor(12 * var_89_3 + 0.5)
	local var_89_5 = var_89_0 > 0.64 and math.max(0, 1 - (var_89_0 - 0.64) / 0.36) or 1
	local var_89_6 = var_89_0 < 0.15 and 1 or math.max(0, 1 - (var_89_0 - 0.15) / 0.5)
	local var_89_7 = (arg_89_4 or 1) * var_89_5
	local var_89_8 = math.min(1, var_89_0 / 0.95)
	local var_89_9 = (arg_89_4 or 1) * math.max(0, 1 - var_89_8 * var_89_8) * 1.25

	if var_89_9 > 0.01 then
		local var_89_10 = (math.abs(arg_89_2) + math.abs(arg_89_3)) * 0.5
		local var_89_11 = var_0_140()

		if var_89_11 then
			local var_89_12, var_89_13 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add", "alphamultiply")
			love.graphics.setColor(1, 1, 1, var_89_9 * 0.75)

			local var_89_14 = 7
			local var_89_15 = var_89_8 * 1.2

			for iter_89_0 = 1, var_89_14 do
				local var_89_16 = var_89_15 + (iter_89_0 - 1) * (2 * math.pi / var_89_14)

				love.graphics.draw(var_89_11, arg_89_0, var_89_4, var_89_16, var_89_10, var_89_10)
			end

			love.graphics.setBlendMode(var_89_12, var_89_13)
		end
	end

	love.graphics.setColor(1, 1, 1, var_89_7)

	local var_89_17 = math.sin(math.min(1, var_89_0 / 0.26) * math.pi)
	local var_89_18 = math.sin(var_89_0 * math.pi * 10) * math.max(0, 1 - var_89_0 * 1.8)
	local var_89_19 = 2.2 * (1 + 0.18 * var_89_17 + 0.035 * var_89_18)
	local var_89_20 = math.floor(2 * var_89_17 + 0.5)

	love.graphics.draw(difficultyLockAnimImg, var_89_2, arg_89_0, var_89_4 + var_89_20, 0, arg_89_2 * var_89_19, arg_89_3 * var_89_19, 8, 8)

	if var_0_60 and var_89_6 > 0.01 then
		var_0_60:send("mixFactor", 1)
		love.graphics.setShader(var_0_60)
		love.graphics.setBlendMode("add", "alphamultiply")
		love.graphics.setColor(1, 1, 1, (arg_89_4 or 1) * var_89_6)
		love.graphics.draw(difficultyLockAnimImg, var_89_2, arg_89_0, var_89_4 + var_89_20, 0, arg_89_2 * var_89_19, arg_89_3 * var_89_19, 8, 8)
		love.graphics.setBlendMode("alpha")
		love.graphics.setShader()
	end
end

local function var_0_142(arg_90_0, arg_90_1, arg_90_2, arg_90_3, arg_90_4)
	local var_90_0 = var_0_134(arg_90_0)

	if not var_90_0 then
		return
	end

	local var_90_1, var_90_2 = var_90_0:getDimensions()

	arg_90_4 = arg_90_4 or {}

	local var_90_3 = 1.8 * (arg_90_4.scaleMul or 1)
	local var_90_4 = (arg_90_3 or 1) * (arg_90_4.alphaMul or 1)

	if arg_90_4.whiteMix and arg_90_4.whiteMix > 0 and var_0_60 then
		var_0_60:send("mixFactor", math.max(0, math.min(1, arg_90_4.whiteMix)))
		love.graphics.setShader(var_0_60)
	end

	love.graphics.setColor(1, 1, 1, var_90_4)
	love.graphics.draw(var_90_0, arg_90_1, arg_90_2, 0, var_90_3, var_90_3, var_90_1 * 0.5, var_90_2 * 0.5)

	if arg_90_4.whiteMix and arg_90_4.whiteMix > 0 and var_0_60 then
		love.graphics.setShader()
	end

	if arg_90_4.flashAlpha and arg_90_4.flashAlpha > 0 and var_0_60 then
		local var_90_5, var_90_6 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")
		var_0_60:send("mixFactor", 1)
		love.graphics.setShader(var_0_60)
		love.graphics.setColor(1, 1, 1, arg_90_4.flashAlpha * (arg_90_3 or 1))
		love.graphics.draw(var_90_0, arg_90_1, arg_90_2, 0, var_90_3, var_90_3, var_90_1 * 0.5, var_90_2 * 0.5)
		love.graphics.setShader()
		love.graphics.setBlendMode(var_90_5, var_90_6)
	end
end

local function var_0_143(arg_91_0, arg_91_1, arg_91_2, arg_91_3, arg_91_4, arg_91_5, arg_91_6, arg_91_7, arg_91_8, arg_91_9)
	if not var_0_134(arg_91_0) then
		return
	end

	arg_91_9 = arg_91_9 or {}

	love.graphics.push()
	love.graphics.translate(arg_91_1, arg_91_2)
	love.graphics.rotate(arg_91_3 or 0)
	love.graphics.scale(arg_91_4 or 1, arg_91_5 or arg_91_4 or 1)
	var_0_142(arg_91_0, arg_91_6 + (arg_91_9.offsetX or 0), arg_91_7 + (arg_91_9.offsetY or 0), arg_91_8, arg_91_9)
	love.graphics.pop()
end

function var_0_4.toggleDebugUnlockPanel()
	if var_0_4.stageSelect and var_0_4.stageSelect.active then
		var_0_4.stageSelect.showDebugUnlockPanel = not var_0_4.stageSelect.showDebugUnlockPanel
	end
end

local function var_0_144(arg_93_0)
	local var_93_0 = var_0_4.stageSelect

	if not var_93_0 or not var_93_0.active then
		return
	end

	if not arg_93_0 or not arg_93_0.virtual then
		return
	end

	love.graphics.setStencilTest()
	love.graphics.setShader()

	local var_93_1 = arg_93_0.virtual.W
	local var_93_2 = arg_93_0.virtual.H
	local var_93_3 = var_93_0.selectedStage
	local var_93_4 = var_0_81(1 - (var_0_4._menuFadeAlpha or 0), 0, 1)

	if var_93_4 > 0 then
		love.graphics.setColor(0, 0, 0, 0.65 * var_93_4)
		love.graphics.rectangle("fill", 0, 0, var_93_1, var_93_2)
	end

	local var_93_5 = math.floor((var_93_0.y or 0) + 0.5)

	if var_0_40 and var_93_0.back then
		local var_93_6 = var_0_81(var_93_0.back.alpha or 0, 0, 1)

		if var_93_6 > 0.001 then
			local var_93_7 = var_93_0.back._drawScale or var_93_0.back.scale or 0.9
			local var_93_8, var_93_9 = var_0_40:getDimensions()
			local var_93_10 = 60
			local var_93_11 = 60
			local var_93_12 = var_93_8 * var_93_7
			local var_93_13 = var_93_9 * var_93_7

			var_93_0.back.rect = {
				x = var_93_10 - var_93_12 / 2,
				y = var_93_11 - var_93_13 / 2,
				w = var_93_12,
				h = var_93_13
			}

			love.graphics.setColor(1, 1, 1, var_93_6)
			love.graphics.draw(var_0_40, var_93_10, var_93_11, 0, var_93_7, var_93_7, var_93_8 / 2, var_93_9 / 2)
		end
	end

	if var_0_34 then
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_0_34, 0, var_93_5)
	end

	if var_0_41 and var_0_42 and var_0_34 then
		local var_93_14 = arg_93_0 and arg_93_0.stageSelectOverlay and arg_93_0.stageSelectOverlay.stageCards or nil

		if var_93_14 == nil or var_93_14.enabled ~= false then
			local var_93_15 = var_0_34:getWidth()
			local var_93_16 = var_0_34:getHeight()
			local var_93_17 = arg_93_0 and arg_93_0.virtual and arg_93_0.virtual.H or 720
			local var_93_18 = var_0_81(((var_93_0.y or 0) + var_93_17) / math.max(1, var_93_17), 0, 1)

			if var_93_18 > 0.001 then
				local var_93_19 = arg_93_0 and arg_93_0.scale or 1
				local var_93_20 = math.floor((var_93_14 and var_93_14.gapPx or 18) * var_93_19 + 0.5)
				local var_93_21 = math.floor((var_93_14 and var_93_14.offsetX or 0) * var_93_19 + 0.5)
				local var_93_22 = math.floor((var_93_14 and var_93_14.offsetY or 0) * var_93_19 + 0.5)
				local var_93_23 = var_0_41:getWidth()
				local var_93_24 = var_0_41:getHeight()
				local var_93_25 = 3
				local var_93_26 = math.floor(math.min(64 * var_93_19, var_93_15 * 0.12) + 0.5)
				local var_93_27 = math.floor(math.min(220 * var_93_19, var_93_16 * 0.4) + 0.5)
				local var_93_28 = math.floor(math.min(70 * var_93_19, var_93_16 * 0.14) + 0.5)
				local var_93_29 = var_93_26
				local var_93_30 = var_93_5 + var_93_27
				local var_93_31 = math.max(1, var_93_15 - var_93_26 * 2)
				local var_93_32 = math.max(1, var_93_16 - var_93_27 - var_93_28)
				local var_93_33 = 1
				local var_93_34 = var_93_25 * var_93_23 * var_93_33 + (var_93_25 - 1) * var_93_20
				local var_93_35 = math.floor(var_93_29 + (var_93_31 - var_93_34) * 0.5 + var_93_21 + 0.5)
				local var_93_36 = math.floor(var_93_30 + (var_93_32 - var_93_24 * var_93_33) * 0.5 + var_93_22 + 0.5)
				local var_93_37 = var_93_18
				local var_93_38 = var_0_109(arg_93_0, var_93_0, {
					cardW = var_93_23,
					cardH = var_93_24,
					cols = var_93_25,
					gap = var_93_20,
					scale = var_93_33
				})

				love.graphics.stencil(function()
					love.graphics.rectangle("fill", 0, var_93_5, var_93_15, var_93_16)
				end, "replace", 1)
				love.graphics.setStencilTest("greater", 0)

				for iter_93_0, iter_93_1 in ipairs(var_93_38) do
					local var_93_39 = iter_93_1.page or var_0_102(var_93_0)
					local var_93_40 = iter_93_1.scale or 1
					local var_93_41 = var_93_37 * (iter_93_1.alpha or 1)

					love.graphics.setColor(1, 1, 1, var_93_41)

					for iter_93_2 = 0, var_93_25 - 1 do
						local var_93_42 = iter_93_2 + 1
						local var_93_43 = (var_93_39 - 1) * 3 + var_93_42
						local var_93_44 = var_93_35 + iter_93_2 * (var_93_23 * var_93_33 + var_93_20) + (iter_93_1.x or 0)
						local var_93_45 = iter_93_2 == 0 and var_0_41 or var_0_42
						local var_93_46 = var_93_0 and var_93_0.hoverProg and var_93_0.hoverProg[var_93_42] or 0
						local var_93_47 = var_93_0 and var_93_0.pressedProg and var_93_0.pressedProg[var_93_42] or 0
						local var_93_48 = (1 + 0.08 * var_93_46) * (1 - 0.1 * var_93_47)
						local var_93_49 = var_93_33 * var_93_48
						local var_93_50 = 0

						if var_93_0 and var_93_0.shakeFeedbacks and var_93_0.shakeFeedbacks[var_93_42] and var_93_0.shakeFeedbacks[var_93_42] > 0 then
							local var_93_51 = 0.28 - var_93_0.shakeFeedbacks[var_93_42]
							local var_93_52 = 0.28
							local var_93_53 = 2.5
							local var_93_54 = 58
							local var_93_55 = math.min(1, var_93_51 / var_93_52)

							var_93_50 = math.sin(var_93_51 * var_93_54) * var_93_53 * (1 - var_93_55)
						end

						local var_93_56 = (not _G.isDemoContentLocked or not _G.isDemoContentLocked(var_93_43, 1)) and var_93_0 and var_93_0.unlockAnims and var_93_0.unlockAnims[var_93_43]
						local var_93_57 = 1
						local var_93_58 = 1
						local var_93_59 = 0
						local var_93_60 = 0
						local var_93_61 = 0
						local var_93_62 = 0
						local var_93_63 = 0
						local var_93_64 = 0.45

						if var_93_56 and var_93_56.active then
							local var_93_65 = var_93_56.t
							local var_93_66 = 0.35
							local var_93_67 = 0.1
							local var_93_68 = 0.22

							if var_93_65 < var_93_66 then
								local var_93_69 = var_93_65 / var_93_66
								local var_93_70 = var_93_68 * math.sin(var_93_69 * math.pi * 0.5)

								var_93_57 = 1 + var_93_70
								var_93_58 = 1 + var_93_70
							elseif var_93_65 < var_93_64 then
								local var_93_71 = (var_93_65 - var_93_66) / var_93_67
								local var_93_72 = var_93_68 * (1 - var_93_71 * var_93_71)

								var_93_57 = 1 + var_93_72
								var_93_58 = 1 + var_93_72
							else
								local var_93_73 = var_93_65 - var_93_64

								if var_93_73 / 0.38 < 1 then
									local var_93_74 = 0.16 * math.exp(-6.5 * var_93_73) * math.sin(var_93_73 * math.pi * 2.2)

									var_93_57 = 1 + var_93_74
									var_93_58 = 1 - var_93_74
									var_93_62 = var_93_24 * var_93_49 * (1 - var_93_58) * 0.5
									var_93_63 = -12 * math.exp(-6 * var_93_73) * math.sin(var_93_73 * math.pi * 2.2)

									if var_93_63 > 0 then
										var_93_63 = 0
									end
								end

								local var_93_75 = 0.35

								if var_93_73 < var_93_75 then
									local var_93_76 = (1 - var_93_73 / var_93_75)^2
									local var_93_77 = 65

									var_93_59 = math.sin(var_93_73 * var_93_77) * 0.08 * var_93_76
									var_93_60 = math.cos(var_93_73 * var_93_77 * 1.2) * 14 * var_93_76
									var_93_61 = math.abs(math.sin(var_93_73 * var_93_77 * 0.8)) * 8 * var_93_76
								end
							end
						end

						local var_93_78 = var_93_49 * var_93_57 * var_93_40
						local var_93_79 = var_93_49 * var_93_58 * var_93_40
						local var_93_80 = var_93_59
						local var_93_81 = var_93_44 + var_93_23 * var_93_33 * 0.5 + var_93_50 + var_93_60
						local var_93_82 = var_93_36 + (iter_93_1.y or 0) + var_93_24 * var_93_33 * 0.5 + var_93_61 + var_93_62 + var_93_63
						local var_93_83 = false
						local var_93_84 = 0

						if var_93_56 and var_93_56.active then
							local var_93_85 = var_93_56.t
							local var_93_86 = 0.35
							local var_93_87 = var_93_86 + 0.1
							local var_93_88 = 0.48

							if var_93_85 < var_93_87 then
								var_93_83 = true
								var_93_84 = math.min(1, var_93_85 / 0.25)
							elseif var_93_85 < var_93_87 + var_93_88 then
								var_93_83 = true
								var_93_84 = 1 - (var_93_85 - var_93_87) / var_93_88
							end
						end

						local var_93_89 = var_0_104(var_93_43)

						if var_93_89 then
							local var_93_90 = var_93_89:getWidth()
							local var_93_91 = var_93_89:getHeight()
							local var_93_92 = false

							if var_93_83 and var_0_60 then
								var_0_60:send("mixFactor", var_93_84)
								love.graphics.setShader(var_0_60)

								var_93_92 = true
							elseif not var_0_101(var_93_43) and (not var_93_56 or not var_93_56.active) and var_0_62 then
								love.graphics.setShader(var_0_62)
								var_0_62:send("time", love.timer.getTime() % 10000)
								var_0_62:send("tintColor", {
									0.38,
									0.22,
									0.55,
									1
								})

								var_93_92 = true
							end

							love.graphics.setColor(1, 1, 1, var_93_41)
							love.graphics.draw(var_93_89, var_93_81, var_93_82, var_93_80, var_93_78, var_93_79, var_93_90 * 0.5, var_93_91 * 0.5)

							if var_93_92 then
								love.graphics.setShader()
							end
						end

						love.graphics.setColor(1, 1, 1, var_93_41)
						love.graphics.draw(var_93_45, var_93_81, var_93_82, var_93_80, var_93_78, var_93_79, var_93_23 * 0.5, var_93_24 * 0.5)

						if var_0_4.isStageCleared and var_0_4.isStageCleared(var_93_43) then
							local var_93_93 = -var_93_23 * 0.5 + 21
							local var_93_94 = -var_93_24 * 0.5 + 24
							local var_93_95 = 25

							for iter_93_3 = 1, 3 do
								if var_0_133(var_93_43, iter_93_3) then
									local var_93_96 = var_93_41 >= 0.98 and var_93_0.phase ~= "leave" and var_93_0.diffActive ~= true
									local var_93_97 = var_0_136(var_93_43, iter_93_3)
									local var_93_98

									if not var_93_97 or var_93_96 then
										var_93_98 = var_0_135(var_93_43, iter_93_3)
									end

									if var_93_97 and not var_93_96 then
										-- block empty
									else
										local var_93_99

										if var_93_98 then
											local var_93_100 = var_93_98.p or 0
											local var_93_101 = 1 - (1 - math.min(1, var_93_100 / 0.62))^3
											local var_93_102 = math.max(0, math.min(1, (var_93_100 - 0.55) / 0.22))
											local var_93_103 = math.max(0, math.min(1, (var_93_100 - 0.66) / 0.34))
											local var_93_104 = -7 * math.exp(-6 * var_93_103) * math.sin(var_93_103 * math.pi * 3.2)
											local var_93_105 = 0.13 * math.exp(-5 * var_93_102) * math.sin(var_93_102 * math.pi)
											local var_93_106 = math.max(0, 1 - math.abs(var_93_100 - 0.58) / 0.18)
											local var_93_107 = math.max(0, 1 - var_93_100 / 0.38)

											var_93_99 = {
												offsetY = -12 * (1 - var_93_101) + var_93_104,
												scaleMul = 1 + 0.26 * math.sin(math.min(1, var_93_100 / 0.62) * math.pi) - var_93_105,
												alphaMul = math.min(1, var_93_100 * 5),
												whiteMix = math.max(var_93_106 * 0.96, var_93_107 * 0.5),
												flashAlpha = var_93_106 * 0.78
											}
										end

										var_0_143(iter_93_3, var_93_81, var_93_82, var_93_80, var_93_78, var_93_79, var_93_93 + (iter_93_3 - 1) * var_93_95, var_93_94, var_93_41, var_93_99)
									end
								end
							end
						end

						if var_0_7 then
							local var_93_108 = love.graphics.getFont()

							love.graphics.setFont(var_0_7)

							local var_93_109 = var_0_105(arg_93_0, var_93_43)

							if not var_93_109 or var_93_109.enabled ~= false then
								local var_93_110 = var_0_106(arg_93_0, var_93_43)
								local var_93_111 = tonumber(var_93_109 and var_93_109.scale or 1.15) or 1.15
								local var_93_112 = var_93_111 * var_93_48 * var_93_57
								local var_93_113 = var_93_111 * var_93_48 * var_93_58
								local var_93_114 = arg_93_0 and arg_93_0.scale or 1
								local var_93_115 = (tonumber(var_93_109 and var_93_109.offsetX or 0) or 0) * var_93_114
								local var_93_116 = (tonumber(var_93_109 and var_93_109.offsetY or 0) or 0) * var_93_114
								local var_93_117 = tonumber(var_93_109 and var_93_109.yPx or 194) or 194
								local var_93_118 = var_0_7:getWidth(var_93_110)
								local var_93_119 = var_93_117 * var_93_33 + var_93_116 - var_93_24 * var_93_33 * 0.5
								local var_93_120 = var_93_115 * var_93_48 * var_93_57
								local var_93_121 = var_93_119 * var_93_48 * var_93_58
								local var_93_122 = var_93_120 * math.cos(var_93_80) - var_93_121 * math.sin(var_93_80)
								local var_93_123 = var_93_120 * math.sin(var_93_80) + var_93_121 * math.cos(var_93_80)
								local var_93_124 = var_93_81 + var_93_122
								local var_93_125 = var_93_82 + var_93_123

								love.graphics.setColor(1, 1, 1, var_93_41)

								local var_93_126 = require("src.ui.widgets").text_fit
								local var_93_127 = (var_0_41 and var_0_41:getWidth() or 91) - 12
								local var_93_128 = math.max(16, var_93_127 * var_93_33 - 10)
								local var_93_129 = var_93_126.fit(var_93_110, var_93_128, var_0_7, {
									maxLines = 2,
									maxH = 20,
									scale = var_93_111,
									steps = {
										1
									}
								})
								local var_93_130 = var_0_7:getHeight() * var_93_111 * 0.5

								love.graphics.push()
								love.graphics.translate(math.floor(var_93_124 + 0.5), math.floor(var_93_125 + 0.5))
								love.graphics.rotate(var_93_80)
								love.graphics.scale(var_93_48 * var_93_57, var_93_48 * var_93_58)
								var_93_126.draw(var_93_129, -math.floor(var_93_128 * 0.5 + 0.5), math.floor(var_93_130 - 11 + 0.5), var_93_128, 22, {
									align = "center",
									lineGap = 2,
									key = "stage_title:" .. var_93_110
								})
								love.graphics.pop()
							end

							love.graphics.setFont(var_93_108)
							love.graphics.setColor(1, 1, 1, var_93_41)
						end
					end
				end

				love.graphics.setStencilTest()
				love.graphics.setColor(1, 1, 1, 1)

				if var_93_0 and var_93_0.hoveredIndex and var_93_0.stageRects and var_93_0.stageRects[var_93_0.hoveredIndex] then
					local var_93_131 = var_93_0.stageRects[var_93_0.hoveredIndex].stageKey or var_0_103(var_93_0, var_93_0.hoveredIndex)

					if not var_0_101(var_93_131) and var_93_0.stageRects and var_93_0.stageRects[var_93_0.hoveredIndex] then
						local var_93_132 = (var_93_0.hoverProg and var_93_0.hoverProg[var_93_0.hoveredIndex] or 1) * var_93_18

						var_0_127(arg_93_0, var_93_0.stageRects[var_93_0.hoveredIndex], var_93_132, var_93_131)
					end
				end
			end
		end
	end

	if var_0_39 and var_0_38 and not var_93_0.diffActive then
		local var_93_133 = var_0_100(arg_93_0, var_93_0, var_93_5)
		local var_93_134 = var_0_107(arg_93_0, var_93_0, var_93_133)

		if var_93_134 and (var_93_0.pageSlideT or 0) <= 0 then
			var_93_0.pageArrow = var_93_0.pageArrow or {
				scale = 1
			}
			var_93_0.pageArrow.rect = var_93_134

			local var_93_135 = arg_93_0 and arg_93_0.virtual and arg_93_0.virtual.H or 720
			local var_93_136 = var_0_81(((var_93_0.y or 0) + var_93_135) / math.max(1, var_93_135), 0, 1)
			local var_93_137 = var_93_0.pageArrow.scale or 1
			local var_93_138, var_93_139 = var_0_39:getDimensions()

			love.graphics.setColor(1, 1, 1, var_93_136)
			love.graphics.draw(var_0_39, var_93_134.cx, var_93_134.cy, 0, var_93_134.scale * var_93_137 * var_93_134.dir, var_93_134.scale * var_93_137, var_93_138 * 0.5, var_93_139 * 0.5)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_93_140 = var_0_100(arg_93_0, var_93_0, var_93_5)

	if var_93_140 and not var_93_0.diffActive then
		local var_93_141 = arg_93_0 and arg_93_0.virtual and arg_93_0.virtual.H or 720
		local var_93_142 = var_0_81(((var_93_0.y or 0) + var_93_141) / math.max(1, var_93_141), 0, 1)

		if var_93_142 > 0.001 then
			local var_93_143 = arg_93_0 and arg_93_0.scale or 1
			local var_93_144 = (var_93_140.cols or 3) * var_93_140.cardW * var_93_140.scale + ((var_93_140.cols or 3) - 1) * var_93_140.gap
			local var_93_145 = var_93_140.x0 + var_93_144 * 0.5
			local var_93_146 = math.max(1, var_0_82())
			local var_93_147 = var_93_140.y0 + var_93_140.cardH * var_93_140.scale + math.floor(12 * var_93_143 + 0.5)
			local var_93_148 = var_0_110(var_93_0)
			local var_93_149 = var_93_146 * 18
			local var_93_150 = var_93_146
			local var_93_151 = math.floor(var_93_145 - var_93_149 * 0.5 + 0.5)
			local var_93_152 = math.floor(var_93_147 - var_93_150 * 0.5 + 0.5)

			love.graphics.setColor(0.34, 0.34, 0.34, var_93_142 * 0.9)
			love.graphics.rectangle("fill", var_93_151, var_93_152, var_93_149, var_93_150)

			local var_93_153 = var_93_146 * 6
			local var_93_154 = var_93_150
			local var_93_155 = var_0_81((var_93_148 - 1) / 1, 0, 1)
			local var_93_156 = var_93_149 - var_93_153
			local var_93_157 = math.floor(var_93_151 + var_93_156 * var_93_155 + 0.5)
			local var_93_158 = math.floor(var_93_147 - var_93_154 * 0.5 + 0.5)

			love.graphics.setColor(0.78, 0.78, 0.78, var_93_142)
			love.graphics.rectangle("fill", var_93_157, var_93_158, var_93_153, var_93_154)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_93_159 = arg_93_0 and arg_93_0.stageSelectOverlay and arg_93_0.stageSelectOverlay.title or nil

	if var_0_38 and var_93_159 and var_93_159.enabled ~= false then
		local var_93_160 = arg_93_0 and arg_93_0.virtual and arg_93_0.virtual.H or 720
		local var_93_161 = var_0_81(((var_93_0.y or 0) + var_93_160) / math.max(1, var_93_160), 0, 1)
		local var_93_162 = tonumber(var_93_159.spriteScale or var_93_159.scale or 1) or 1
		local var_93_163 = var_0_34 and var_0_34.getHeight and var_0_34:getHeight() or var_93_2
		local var_93_164 = math.floor((var_93_159.yFrac or 0.18) * var_93_163 + 0.5)
		local var_93_165 = math.floor(var_93_1 * 0.5 + (var_93_159.offsetX or 0) + 0.5)
		local var_93_166 = math.floor(var_93_5 + var_93_164 + (var_93_159.offsetY or 0) + 0.5)
		local var_93_167, var_93_168 = var_0_38:getDimensions()

		love.graphics.setColor(1, 1, 1, var_93_161)
		love.graphics.draw(var_0_38, var_93_165, var_93_166, 0, var_93_162, var_93_162, var_93_167 * 0.5, 0)
		love.graphics.setColor(1, 1, 1, 1)
	end

	if var_0_35 then
		local var_93_169 = 0

		if arg_93_0 and arg_93_0.pauseOverlay and arg_93_0.pauseOverlay.ropeYOffsetPx ~= nil then
			var_93_169 = arg_93_0.pauseOverlay.ropeYOffsetPx
		elseif var_0_5 and var_0_5.pauseOverlay and var_0_5.pauseOverlay.ropeYOffsetPx ~= nil then
			var_93_169 = var_0_5.pauseOverlay.ropeYOffsetPx
		end

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_0_35, 0, var_93_5 + math.floor(var_93_169 + 0.5))
	end

	love.graphics.setColor(1, 1, 1, 1)

	if var_93_2 > var_93_0.diffY then
		local var_93_170 = var_0_81((var_93_2 - var_93_0.diffY) / var_93_2, 0, 1)
		local var_93_171 = arg_93_0 and arg_93_0.menuSettings and arg_93_0.menuSettings.language or "ko"
		local var_93_172 = var_0_36
		local var_93_173 = false
		local var_93_174 = math.floor(tonumber(var_93_3 or 0) or 0)

		if var_0_37[var_93_174] then
			var_93_172 = var_0_37[var_93_174]
			var_93_173 = true
		end

		if var_93_172 then
			local var_93_175, var_93_176 = var_93_172:getDimensions()
			local var_93_177 = 1
			local var_93_178 = arg_93_0.virtual and arg_93_0.virtual.H and arg_93_0.virtual.W or var_0_34 and var_0_34:getWidth() + 100 or 1280

			if arg_93_0 and arg_93_0.virtual and arg_93_0.virtual.W then
				var_93_178 = arg_93_0.virtual.W
			end

			local var_93_179 = math.floor((var_93_178 - var_93_175 * var_93_177) / 2)
			local var_93_180 = arg_93_0 and arg_93_0.stageSelectOverlay and arg_93_0.stageSelectOverlay.difficultyTitle or {}
			local var_93_181 = tonumber(var_93_180.targetY) or 25
			local var_93_182 = var_93_173 and (var_93_0.diffActive or var_0_86.state == "anim" or var_0_86.state == "idle")
			local var_93_183 = var_93_181
			local var_93_184 = var_93_170

			if var_93_182 then
				var_93_183 = math.floor((var_0_86.y or var_93_181) + 0.5)
				var_93_184 = var_0_95(var_0_86) * var_93_170
			end

			if var_93_182 or not var_93_173 then
				love.graphics.setColor(1, 1, 1, var_93_184)
				love.graphics.draw(var_93_172, var_93_179, var_93_183, 0, var_93_177, var_93_177)
			end

			if not var_93_173 then
				local var_93_185 = (arg_93_0 and arg_93_0.stageSelectOverlay or {}).stageNames or {}
				local var_93_186 = var_93_3 or 1
				local var_93_187 = var_0_2.getText("menu_stage_name_" .. tostring(var_93_186), var_93_171)

				if var_93_187 == "menu_stage_name_" .. tostring(var_93_186) then
					var_93_187 = var_93_185[var_93_186] or "STAGE " .. tostring(var_93_186)
				end

				local var_93_188 = var_0_7 or love.graphics.getFont()
				local var_93_189 = love.graphics.getFont()

				love.graphics.setFont(var_93_188)

				local var_93_190 = 1.15
				local var_93_191 = var_93_188:getWidth(var_93_187) * var_93_190
				local var_93_192 = var_93_188:getHeight()
				local var_93_193 = var_93_179 + (var_93_175 * var_93_177 - var_93_191) / 2
				local var_93_194 = var_93_183 + (var_93_176 * var_93_177 - var_93_192 * var_93_190) / 2

				love.graphics.print(var_93_187, math.floor(var_93_193), math.floor(var_93_194), 0, var_93_190, var_93_190)
				love.graphics.setFont(var_93_189)
			end
		end

		local var_93_195 = 0
		local var_93_196 = var_0_112(arg_93_0, var_93_195)

		if var_93_196 then
			local var_93_197 = var_93_196.cardW
			local var_93_198 = var_93_196.cardH
			local var_93_199 = var_93_196.scale
			local var_93_200 = var_93_196.gap
			local var_93_201

			for iter_93_4 = 1, 3 do
				local var_93_202 = var_93_196.x0 + (iter_93_4 - 1) * (var_93_197 * var_93_199 + var_93_200)
				local var_93_203 = var_93_196.y0
				local var_93_204 = iter_93_4 == 1 and var_0_47 or iter_93_4 == 2 and var_0_48 or iter_93_4 == 3 and var_0_49

				if var_93_204 then
					local var_93_205 = var_93_0.diffAppearProg and var_93_0.diffAppearProg[iter_93_4] or 0
					local var_93_206 = var_93_0.diffHoverProg and var_93_0.diffHoverProg[iter_93_4] or 0
					local var_93_207 = var_93_0.diffPressedProg and var_93_0.diffPressedProg[iter_93_4] or 0
					local var_93_208 = 0

					if var_93_205 > 0 then
						var_93_208 = 1 - math.exp(-6.5 * var_93_205) * math.cos(2.5 * math.pi * var_93_205)
					end

					local var_93_209 = math.exp(-4 * var_93_205) * 0.4
					local var_93_210 = 15
					local var_93_211 = 1 + var_93_209 * math.sin(var_93_205 * var_93_210)
					local var_93_212 = (1 + 0.08 * var_93_206) * (1 - 0.1 * var_93_207)
					local var_93_213 = var_93_199 * var_93_208 * var_93_212 * (2 - var_93_211)
					local var_93_214 = var_93_199 * var_93_208 * var_93_212 * var_93_211
					local var_93_215 = 0

					if var_93_0 and var_93_0.diffShakeFeedbacks and var_93_0.diffShakeFeedbacks[iter_93_4] and var_93_0.diffShakeFeedbacks[iter_93_4] > 0 then
						local var_93_216 = 0.28 - var_93_0.diffShakeFeedbacks[iter_93_4]
						local var_93_217 = 0.28
						local var_93_218 = 2.5
						local var_93_219 = 58
						local var_93_220 = math.min(1, var_93_216 / var_93_217)

						var_93_215 = math.sin(var_93_216 * var_93_219) * var_93_218 * (1 - var_93_220)
					end

					local var_93_221 = var_93_202 + var_93_197 * var_93_199 * 0.5 + var_93_215
					local var_93_222 = var_93_203 + var_93_198 * var_93_199 * 0.5
					local var_93_223 = var_0_81(var_93_205 * 8, 0, 1)

					if not var_93_0.diffActive then
						var_93_223 = var_0_81(var_93_205 * 100, 0, 1)
					end

					local var_93_224 = var_93_0.selectedStage or 1
					local var_93_225 = _G.isDemoContentLocked and _G.isDemoContentLocked(var_93_224, iter_93_4)
					local var_93_226 = var_93_225 or not var_0_129(var_93_224, iter_93_4)
					local var_93_227 = not var_93_226 and var_0_137(var_93_224, iter_93_4)
					local var_93_228 = var_93_0.diffActive == true and (var_93_0.diffAppearProg and var_93_0.diffAppearProg[1] or 0) >= 1 and (var_93_0.diffAppearProg and var_93_0.diffAppearProg[2] or 0) >= 1 and (var_93_0.diffAppearProg and var_93_0.diffAppearProg[3] or 0) >= 1
					local var_93_229 = not var_93_226 and var_93_228 and var_0_138(var_93_224, iter_93_4) or nil
					local var_93_230 = var_93_229 and (var_93_229.p or 0) or 0
					local var_93_231 = var_93_226 or var_93_227 or var_93_229 ~= nil

					if var_93_226 and var_93_0.diffHoverIdx == iter_93_4 and var_93_170 * var_93_223 > 0.05 then
						var_93_201 = {
							x = var_93_221 - var_93_197 * math.abs(var_93_213) * 0.5,
							y = var_93_222 - var_93_198 * math.abs(var_93_214) * 0.5,
							w = var_93_197 * math.abs(var_93_213),
							h = var_93_198 * math.abs(var_93_214),
							alpha = var_93_170 * var_93_223,
							fullVersion = var_93_225 == true
						}
					end

					if var_93_231 then
						local var_93_232 = 0.4 + 0.6 * (var_93_229 and math.max(0, math.min(1, var_93_230)) or 0)

						love.graphics.setColor(var_93_232, var_93_232, var_93_232, var_93_170 * var_93_223)
					else
						love.graphics.setColor(1, 1, 1, var_93_170 * var_93_223)
					end

					love.graphics.draw(var_93_204, var_93_221, var_93_222, 0, var_93_213, var_93_214, var_93_197 * 0.5, var_93_198 * 0.5)

					if not var_93_226 and var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(var_93_0.selectedStage or 1, iter_93_4) then
						var_0_143(iter_93_4, var_93_221, var_93_222, 0, var_93_213, var_93_214, var_93_197 * 0.5 - 15, -var_93_198 * 0.5 + 24, var_93_170 * var_93_223)
					end

					if (var_93_226 or var_93_227 and not var_93_229) and difficultyLockImg then
						local var_93_233, var_93_234 = difficultyLockImg:getDimensions()

						love.graphics.setColor(1, 1, 1, var_93_170 * var_93_223)
						love.graphics.draw(difficultyLockImg, var_93_221, var_93_222 + 3 * var_93_214, 0, var_93_213 * 2.2, var_93_214 * 2.2, var_93_233 * 0.5, var_93_234 * 0.5)
					elseif var_93_229 then
						var_0_141(var_93_221, var_93_222 + 3 * var_93_214, var_93_213, var_93_214, var_93_170 * var_93_223, var_93_229)
					end
				end
			end

			if var_93_201 then
				local var_93_235 = arg_93_0 and arg_93_0.menuSettings and arg_93_0.menuSettings.language or "ko"
				local var_93_236 = var_93_201.fullVersion and var_0_126(var_93_235) or var_0_2.getText("menu_difficulty_locked_hint", var_93_235)
				local var_93_237 = var_0_7 or love.graphics.getFont()
				local var_93_238 = love.graphics.getFont()

				love.graphics.setFont(var_93_237)

				local var_93_239 = 0.9
				local var_93_240 = 8
				local var_93_241 = 5
				local var_93_242 = var_93_237:getWidth(var_93_236) * var_93_239
				local var_93_243 = var_93_237:getHeight() * var_93_239
				local var_93_244 = math.ceil(var_93_242 + var_93_240 * 2)
				local var_93_245 = math.ceil(var_93_243 + var_93_241 * 2)
				local var_93_246 = math.floor(var_93_201.x + var_93_201.w * 0.5 - var_93_244 * 0.5 + 0.5)
				local var_93_247 = math.floor(var_93_201.y - var_93_245 - 8 + 0.5)

				if var_93_246 < 8 then
					var_93_246 = 8
				end

				if var_93_246 + var_93_244 > var_93_1 - 8 then
					var_93_246 = var_93_1 - 8 - var_93_244
				end

				if var_93_247 < 8 then
					var_93_247 = math.floor(var_93_201.y + var_93_201.h + 8 + 0.5)
				end

				local var_93_248 = math.min(1, var_93_201.alpha or 1)
				local var_93_249 = arg_93_0 and arg_93_0.tooltip
				local var_93_250 = {
					0.06,
					0.05,
					0.08,
					0.92 * var_93_248
				}

				if var_93_249 and var_93_249.drawPixelRoundedRect then
					var_93_249:drawPixelRoundedRect(var_93_246, var_93_247, var_93_244, var_93_245, var_93_250, var_93_250)
				else
					love.graphics.setColor(var_93_250)
					love.graphics.rectangle("fill", var_93_246, var_93_247, var_93_244, var_93_245)
				end

				love.graphics.setColor(0.95, 0.9, 0.78, var_93_248)
				love.graphics.print(var_93_236, math.floor(var_93_246 + var_93_240 + 0.5), math.floor(var_93_247 + var_93_241 - 1 + 0.5), 0, var_93_239, var_93_239)
				love.graphics.setFont(var_93_238)
				love.graphics.setColor(1, 1, 1, 1)
			end
		end

		local var_93_251 = var_0_4.getRunSave(var_93_0.selectedStage)
		local var_93_252 = tonumber(var_93_0.saveSlotAppearProg or 0) or 0
		local var_93_253 = var_93_251 and (var_93_0.diffActive or var_93_252 > 0.001) and var_0_113(arg_93_0) or nil

		if var_93_253 and var_0_56 then
			var_93_0.saveSlotRect = var_93_0.diffActive and var_93_252 >= 0.35 and var_93_253 or nil

			local var_93_254 = 0

			if var_93_252 > 0 then
				var_93_254 = 1 - math.exp(-6.5 * var_93_252) * math.cos(2.5 * math.pi * var_93_252)
			end

			local var_93_255 = var_0_81(var_93_252 * 8, 0, 1)

			if not var_93_0.diffActive then
				var_93_255 = var_0_81(var_93_252 * 100, 0, 1)
			end

			local var_93_256 = var_93_170 * var_93_255
			local var_93_257 = var_93_0.saveSlotHoverProg or 0
			local var_93_258 = var_93_0.saveSlotPressedProg or 0
			local var_93_259 = var_93_254 * (1 + var_93_257 * 0.08) * (1 - var_93_258 * 0.1)
			local var_93_260 = var_93_253.scale
			local var_93_261 = var_93_260 * var_93_259
			local var_93_262, var_93_263 = var_0_56:getDimensions()
			local var_93_264 = var_93_253.x + var_93_253.w * 0.5
			local var_93_265 = var_93_253.y + var_93_253.h * 0.5
			local var_93_266 = var_93_264 - var_93_262 * var_93_260 * 0.5
			local var_93_267 = var_93_265 - var_93_263 * var_93_260 * 0.5
			local var_93_268 = arg_93_0 and arg_93_0.menuSettings and arg_93_0.menuSettings.language or "ko"
			local var_93_269 = math.max(1, math.floor(tonumber(var_93_251.stage or var_93_0.selectedStage or 1) or 1))
			local var_93_270 = math.max(1, math.min(3, math.floor(tonumber(var_93_251.difficulty or 1) or 1)))
			local var_93_271 = "menu_stage_name_" .. tostring(var_93_269)
			local var_93_272 = var_0_2.getText(var_93_271, var_93_268)

			if var_93_272 == var_93_271 then
				var_93_272 = "STAGE " .. tostring(var_93_269)
			end

			local var_93_273 = {
				"difficulty_easy",
				"difficulty_normal",
				"difficulty_hard"
			}
			local var_93_274 = var_0_2.getText(var_93_273[var_93_270], var_93_268)
			local var_93_275 = var_0_2.getText("run_save_title", var_93_268)
			local var_93_276 = var_0_2.getText("run_save_wave", var_93_268):gsub("{wave}", tostring(math.max(1, math.floor(tonumber(var_93_251.wave or 1) or 1))))
			local var_93_277 = var_93_272 .. " - "
			local var_93_278 = var_93_277 .. var_93_274
			local var_93_279 = love.graphics.getFont()
			local var_93_280 = var_0_7 or var_93_279

			love.graphics.setFont(var_93_280)

			local var_93_281 = arg_93_0.stageSelectOverlay and arg_93_0.stageSelectOverlay.runSaveSlot or {}
			local var_93_282 = var_0_105(arg_93_0, var_93_269) or {}
			local var_93_283 = tonumber(var_93_281.infoTextScale or var_93_282.scale or 1.15) or 1.15
			local var_93_284 = var_93_283
			local var_93_285 = var_93_283
			local var_93_286 = var_93_266 + var_93_262 * (tonumber(var_93_281.textLeftFrac or 0.226) or 0.226) * var_93_260
			local var_93_287 = var_93_266 + var_93_262 * (tonumber(var_93_281.textRightFrac or 0.963) or 0.963) * var_93_260
			local var_93_288 = var_93_267 + var_93_263 * (tonumber(var_93_281.titleCenterYFrac or 0.283) or 0.283) * var_93_260
			local var_93_289 = var_93_267 + var_93_263 * (tonumber(var_93_281.subtitleCenterYFrac or 0.696) or 0.696) * var_93_260
			local var_93_290 = var_93_288 - var_93_280:getHeight() * var_93_284 * 0.5
			local var_93_291 = var_93_289 - var_93_280:getHeight() * var_93_285 * 0.5 + (tonumber(var_93_281.infoTextOffsetY or 0) or 0)
			local var_93_292
			local var_93_293 = 0
			local var_93_294 = var_93_280:getHeight() * var_93_284
			local var_93_295 = var_93_286

			if var_0_57 then
				local var_93_296, var_93_297 = var_0_57:getDimensions()

				var_93_292 = tonumber(var_93_281.titleSpriteScale or 1.5) or 1.5
				var_93_293 = var_93_296 * var_93_292
				var_93_294 = var_93_297 * var_93_292
				var_93_295 = var_93_286 + (tonumber(var_93_281.titleSpriteOffsetX or 0) or 0)
				var_93_290 = var_93_288 - var_93_294 * 0.5 + (tonumber(var_93_281.titleSpriteOffsetY or 0) or 0)
			end

			local var_93_298 = var_93_280:getWidth(var_93_276) * var_93_284
			local var_93_299 = var_93_286 + (tonumber(var_93_281.stageTextOffsetX or 0) or 0)
			local var_93_300 = var_93_287 - var_93_298 + (tonumber(var_93_281.waveTextOffsetX or 0) or 0)

			local function var_93_301(arg_95_0)
				return var_93_264 + (arg_95_0 - var_93_264) * var_93_259
			end

			local function var_93_302(arg_96_0)
				return var_93_265 + (arg_96_0 - var_93_265) * var_93_259
			end

			var_93_0._runSaveTextDebug = {
				spriteX = var_93_301(var_93_266),
				spriteY = var_93_302(var_93_267),
				spriteW = var_93_262 * var_93_261,
				spriteH = var_93_263 * var_93_261,
				panelLeft = var_93_301(var_93_286),
				panelRight = var_93_301(var_93_287),
				topY = var_93_302(var_93_290),
				topH = var_93_294 * var_93_259,
				bottomY = var_93_302(var_93_291),
				bottomH = var_93_280:getHeight() * var_93_285 * var_93_259,
				stageTextX = var_93_301(var_93_299),
				subtitleRight = var_93_301(var_93_299 + var_93_280:getWidth(var_93_278) * var_93_285),
				waveLeft = var_93_301(var_93_300),
				waveY = var_93_302(var_93_291),
				motionScale = var_93_259,
				titleTextScale = var_93_284 * var_93_259,
				subtitleTextScale = var_93_285 * var_93_259,
				titleSpriteUsed = var_0_57 ~= nil,
				titleSpriteX = var_93_301(var_93_295),
				titleRight = var_93_301(var_93_295 + var_93_293)
			}

			local function var_93_303(arg_97_0, arg_97_1, arg_97_2, arg_97_3)
				love.graphics.push()
				love.graphics.translate(math.floor(arg_97_1 + 0.5), math.floor(arg_97_2 + 0.5))
				love.graphics.scale(arg_97_3, arg_97_3)
				love.graphics.print(arg_97_0, 0, 0)
				love.graphics.pop()
			end

			local var_93_304 = {
				"easy",
				"normal",
				"hard"
			}
			local var_93_305 = var_93_281.difficultyTextColors or {}
			local var_93_306 = {
				{
					0.5607843137254902,
					0.8117647058823529,
					0.5294117647058824,
					1
				},
				{
					0.9098039215686274,
					0.7843137254901961,
					0.4588235294117647,
					1
				},
				{
					0.9098039215686274,
					0.47058823529411764,
					0.47058823529411764,
					1
				}
			}
			local var_93_307 = var_93_305[var_93_304[var_93_270]] or var_93_306[var_93_270]

			local function var_93_308(arg_98_0, arg_98_1, arg_98_2)
				love.graphics.push()
				love.graphics.translate(math.floor(arg_98_0 + 0.5), math.floor(arg_98_1 + 0.5))
				love.graphics.scale(arg_98_2, arg_98_2)
				love.graphics.setColor(0.84, 0.76, 0.66, var_93_256)
				love.graphics.print(var_93_277, 0, 0)
				love.graphics.setColor(var_93_307[1] or 1, var_93_307[2] or 1, var_93_307[3] or 1, (var_93_307[4] or 1) * var_93_256)
				love.graphics.print(var_93_274, var_93_280:getWidth(var_93_277), 0)
				love.graphics.pop()
			end

			love.graphics.push()
			love.graphics.translate(var_93_264, var_93_265)
			love.graphics.scale(var_93_259, var_93_259)
			love.graphics.translate(-var_93_264, -var_93_265)
			love.graphics.setColor(1, 1, 1, var_93_256)
			love.graphics.draw(var_0_56, math.floor(var_93_266 + 0.5), math.floor(var_93_267 + 0.5), 0, var_93_260, var_93_260)
			love.graphics.setColor(0.96, 0.9, 0.78, var_93_256)

			if var_0_57 and var_93_292 then
				love.graphics.setColor(1, 1, 1, var_93_256)
				love.graphics.draw(var_0_57, math.floor(var_93_295 + 0.5), math.floor(var_93_290 + 0.5), 0, var_93_292, var_93_292)
				love.graphics.setColor(0.96, 0.9, 0.78, var_93_256)
			else
				var_93_303(var_93_275, var_93_286, var_93_290, var_93_284)
			end

			love.graphics.setColor(0.84, 0.76, 0.66, var_93_256)
			var_93_308(var_93_299, var_93_291, var_93_285)
			love.graphics.setColor(0.84, 0.76, 0.66, var_93_256)
			var_93_303(var_93_276, var_93_300, var_93_291, var_93_284)
			love.graphics.pop()
			love.graphics.setFont(var_93_279)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	if var_93_0.showDebugUnlockPanel then
		local var_93_309 = var_93_0.diffActive and 660 or 760
		local var_93_310 = var_93_0.diffActive and 92 or 138
		local var_93_311 = (var_93_1 - var_93_309) * 0.5
		local var_93_312 = 20

		love.graphics.setColor(0, 0, 0, 0.75)
		love.graphics.rectangle("fill", var_93_311, var_93_312, var_93_309, var_93_310, 6, 6)
		love.graphics.setLineWidth(1.5)
		love.graphics.setColor(0.4, 0.4, 0.4, 0.8)
		love.graphics.rectangle("line", var_93_311, var_93_312, var_93_309, var_93_310, 6, 6)

		local var_93_313 = 200
		local var_93_314 = 34
		local var_93_315 = 40
		local var_93_316 = var_93_312 + (var_93_310 - var_93_314) * 0.5
		local var_93_317 = var_93_311 + (var_93_309 - (var_93_313 * 2 + var_93_315)) * 0.5
		local var_93_318 = var_93_317 + var_93_313 + var_93_315
		local var_93_319, var_93_320 = love.mouse.getPosition()
		local var_93_321 = var_93_319
		local var_93_322 = var_93_320

		if _G.toVirtual then
			var_93_321, var_93_322 = _G.toVirtual(var_93_319, var_93_320)
		end

		if var_93_0.diffActive then
			local var_93_323 = var_93_0.selectedStage or 1
			local var_93_324 = var_0_129(var_93_323, 2)

			if var_93_317 <= var_93_321 and var_93_321 <= var_93_317 + var_93_313 and var_93_316 <= var_93_322 and var_93_322 <= var_93_316 + var_93_314 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_93_317, var_93_316, var_93_313, var_93_314, 4, 4)
			love.graphics.setColor(var_93_324 and {
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
			love.graphics.rectangle("line", var_93_317, var_93_316, var_93_313, var_93_314, 4, 4)

			local var_93_325 = love.graphics.getFont()

			love.graphics.setFont(var_0_3.developerFont(var_0_7 or var_93_325))
			love.graphics.setColor(1, 1, 1, 1)

			local var_93_326 = "일반: " .. (var_93_324 and "해금" or "잠김")
			local var_93_327 = love.graphics.getFont():getWidth(var_93_326)
			local var_93_328 = love.graphics.getFont():getHeight()

			love.graphics.print(var_93_326, math.floor(var_93_317 + (var_93_313 - var_93_327) * 0.5 + 0.5), math.floor(var_93_316 + (var_93_314 - var_93_328) * 0.5 + 0.5))

			local var_93_329 = var_0_129(var_93_323, 3)

			if var_93_318 <= var_93_321 and var_93_321 <= var_93_318 + var_93_313 and var_93_316 <= var_93_322 and var_93_322 <= var_93_316 + var_93_314 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_93_318, var_93_316, var_93_313, var_93_314, 4, 4)
			love.graphics.setColor(var_93_329 and {
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
			love.graphics.rectangle("line", var_93_318, var_93_316, var_93_313, var_93_314, 4, 4)
			love.graphics.setColor(1, 1, 1, 1)

			local var_93_330 = "어려움: " .. (var_93_329 and "해금" or "잠김")
			local var_93_331 = love.graphics.getFont():getWidth(var_93_330)
			local var_93_332 = love.graphics.getFont():getHeight()

			love.graphics.print(var_93_330, math.floor(var_93_318 + (var_93_313 - var_93_331) * 0.5 + 0.5), math.floor(var_93_316 + (var_93_314 - var_93_332) * 0.5 + 0.5))

			var_93_0.debugMedalButtons = {}

			local var_93_333 = 180
			local var_93_334 = 28
			local var_93_335 = 18
			local var_93_336 = var_93_312 + 56
			local var_93_337 = var_93_333 * 3 + var_93_335 * 2
			local var_93_338 = math.floor(var_93_311 + (var_93_309 - var_93_337) * 0.5 + 0.5)
			local var_93_339 = {
				"쉬움 메달",
				"일반 메달",
				"어려움 메달"
			}

			for iter_93_5 = 1, 3 do
				local var_93_340 = var_93_338 + (iter_93_5 - 1) * (var_93_333 + var_93_335)
				local var_93_341 = var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(var_93_323, iter_93_5)
				local var_93_342 = var_93_340 <= var_93_321 and var_93_321 <= var_93_340 + var_93_333 and var_93_336 <= var_93_322 and var_93_322 <= var_93_336 + var_93_334

				love.graphics.setColor(var_93_342 and {
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
				love.graphics.rectangle("fill", var_93_340, var_93_336, var_93_333, var_93_334, 4, 4)
				love.graphics.setColor(var_93_341 and {
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
				love.graphics.rectangle("line", var_93_340, var_93_336, var_93_333, var_93_334, 4, 4)
				love.graphics.setColor(1, 1, 1, 1)

				local var_93_343 = var_93_339[iter_93_5] .. ": " .. (var_93_341 and "획득" or "미획득")
				local var_93_344 = love.graphics.getFont():getWidth(var_93_343)
				local var_93_345 = love.graphics.getFont():getHeight()

				love.graphics.print(var_93_343, math.floor(var_93_340 + (var_93_333 - var_93_344) * 0.5 + 0.5), math.floor(var_93_336 + (var_93_334 - var_93_345) * 0.5 + 0.5))

				var_93_0.debugMedalButtons[iter_93_5] = {
					x = var_93_340,
					y = var_93_336,
					w = var_93_333,
					h = var_93_334,
					diffKey = iter_93_5,
					hovered = var_93_342
				}
			end

			if var_93_325 then
				love.graphics.setFont(var_93_325)
			end
		else
			var_93_0.debugMedalButtons = nil

			local var_93_346 = var_0_101(2)

			if var_93_317 <= var_93_321 and var_93_321 <= var_93_317 + var_93_313 and var_93_316 <= var_93_322 and var_93_322 <= var_93_316 + var_93_314 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_93_317, var_93_316, var_93_313, var_93_314, 4, 4)
			love.graphics.setColor(var_93_346 and {
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
			love.graphics.rectangle("line", var_93_317, var_93_316, var_93_313, var_93_314, 4, 4)

			local var_93_347 = love.graphics.getFont()

			love.graphics.setFont(var_0_3.developerFont(var_0_7 or var_93_347))
			love.graphics.setColor(1, 1, 1, 1)

			local var_93_348 = "스테이지 2: " .. (var_93_346 and "해금" or "잠김")
			local var_93_349 = love.graphics.getFont():getWidth(var_93_348)
			local var_93_350 = love.graphics.getFont():getHeight()

			love.graphics.print(var_93_348, math.floor(var_93_317 + (var_93_313 - var_93_349) * 0.5 + 0.5), math.floor(var_93_316 + (var_93_314 - var_93_350) * 0.5 + 0.5))

			local var_93_351 = var_0_101(3)

			if var_93_318 <= var_93_321 and var_93_321 <= var_93_318 + var_93_313 and var_93_316 <= var_93_322 and var_93_322 <= var_93_316 + var_93_314 then
				love.graphics.setColor(0.3, 0.35, 0.4, 0.9)
			else
				love.graphics.setColor(0.15, 0.15, 0.15, 0.8)
			end

			love.graphics.rectangle("fill", var_93_318, var_93_316, var_93_313, var_93_314, 4, 4)
			love.graphics.setColor(var_93_351 and {
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
			love.graphics.rectangle("line", var_93_318, var_93_316, var_93_313, var_93_314, 4, 4)
			love.graphics.setColor(1, 1, 1, 1)

			local var_93_352 = "스테이지 3: " .. (var_93_351 and "해금" or "잠김")
			local var_93_353 = love.graphics.getFont():getWidth(var_93_352)
			local var_93_354 = love.graphics.getFont():getHeight()

			love.graphics.print(var_93_352, math.floor(var_93_318 + (var_93_313 - var_93_353) * 0.5 + 0.5), math.floor(var_93_316 + (var_93_314 - var_93_354) * 0.5 + 0.5))

			var_93_0.debugMedalButtons = {}

			local var_93_355 = 72
			local var_93_356 = 24
			local var_93_357 = 8
			local var_93_358 = 6
			local var_93_359 = 64
			local var_93_360 = {
				"쉬움",
				"일반",
				"어려움"
			}
			local var_93_361 = var_93_312 + 56
			local var_93_362 = math.floor(var_93_311 + (var_93_309 - (var_93_359 + var_93_355 * 3 + var_93_357 * 2)) * 0.5 + 0.5)

			for iter_93_6 = 1, 3 do
				local var_93_363 = var_93_361 + (iter_93_6 - 1) * (var_93_356 + var_93_358)
				local var_93_364 = "스테이지 " .. tostring(iter_93_6)

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.print(var_93_364, var_93_362, math.floor(var_93_363 + 3 + 0.5))

				for iter_93_7 = 1, 3 do
					local var_93_365 = var_93_362 + var_93_359 + (iter_93_7 - 1) * (var_93_355 + var_93_357)
					local var_93_366 = var_0_4.isDifficultyCleared and var_0_4.isDifficultyCleared(iter_93_6, iter_93_7)
					local var_93_367 = var_93_365 <= var_93_321 and var_93_321 <= var_93_365 + var_93_355 and var_93_363 <= var_93_322 and var_93_322 <= var_93_363 + var_93_356

					love.graphics.setColor(var_93_367 and {
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
					love.graphics.rectangle("fill", var_93_365, var_93_363, var_93_355, var_93_356, 4, 4)
					love.graphics.setColor(var_93_366 and {
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
					love.graphics.rectangle("line", var_93_365, var_93_363, var_93_355, var_93_356, 4, 4)
					love.graphics.setColor(1, 1, 1, 1)

					local var_93_368 = var_93_360[iter_93_7] .. ":" .. (var_93_366 and "획득" or "미획득")
					local var_93_369 = love.graphics.getFont():getWidth(var_93_368)
					local var_93_370 = love.graphics.getFont():getHeight()

					love.graphics.print(var_93_368, math.floor(var_93_365 + (var_93_355 - var_93_369) * 0.5 + 0.5), math.floor(var_93_363 + (var_93_356 - var_93_370) * 0.5 + 0.5))

					var_93_0.debugMedalButtons[#var_93_0.debugMedalButtons + 1] = {
						x = var_93_365,
						y = var_93_363,
						w = var_93_355,
						h = var_93_356,
						stageKey = iter_93_6,
						diffKey = iter_93_7,
						hovered = var_93_367
					}
				end
			end

			if var_93_347 then
				love.graphics.setFont(var_93_347)
			end
		end

		var_93_0.debugButtons = var_93_0.debugButtons or {}
		var_93_0.debugButtons[1] = {
			stageKey = 2,
			x = var_93_317,
			y = var_93_316,
			w = var_93_313,
			h = var_93_314,
			hovered = hover1
		}
		var_93_0.debugButtons[2] = {
			stageKey = 3,
			x = var_93_318,
			y = var_93_316,
			w = var_93_313,
			h = var_93_314,
			hovered = hover2
		}
	end
end

local function var_0_145(arg_99_0, arg_99_1)
	local var_99_0 = arg_99_1 / 720
	local var_99_1 = 1280 * var_99_0
	local var_99_2 = var_0_82() * var_0_66
	local var_99_3 = math.max(1, math.floor(var_99_2 * var_99_0 + 0.5))
	local var_99_4, var_99_5 = love.graphics.getBlendMode()

	for iter_99_0, iter_99_1 in ipairs(var_0_64) do
		local var_99_6 = math.floor(iter_99_1.x)
		local var_99_7 = math.floor(iter_99_1.y)
		local var_99_8 = math.floor(var_99_7 * var_99_0 + 0.5)
		local var_99_9 = var_99_6 * var_99_0 % var_99_1 - var_99_1

		while var_99_9 < arg_99_0 do
			local var_99_10 = math.floor(var_99_9 + 0.5)

			if iter_99_1.glow then
				local var_99_11 = 0.52 + 0.48 * math.sin(iter_99_1.t * 2.6 + (iter_99_1.phase or 0))
				local var_99_12 = var_0_81((iter_99_1.alpha or 0.5) * var_99_11, 0.08, 1)

				love.graphics.setBlendMode("add", "alphamultiply")

				for iter_99_2 = -1, 1 do
					for iter_99_3 = -1, 1 do
						local var_99_13 = math.abs(iter_99_3) + math.abs(iter_99_2)
						local var_99_14 = var_99_10 + iter_99_3 * var_99_3
						local var_99_15 = var_99_8 + iter_99_2 * var_99_3

						if var_99_13 == 0 then
							love.graphics.setColor(1, 0.95, 0.82, var_99_12 * 0.5)
						elseif var_99_13 == 1 then
							love.graphics.setColor(1, 0.78, 0.42, var_99_12 * 0.27)
						else
							love.graphics.setColor(1, 0.72, 0.38, var_99_12 * 0.13)
						end

						love.graphics.rectangle("fill", var_99_14, var_99_15, var_99_3, var_99_3)
					end
				end

				love.graphics.setBlendMode(var_99_4, var_99_5)
			else
				local var_99_16 = iter_99_1.alpha + math.sin(iter_99_1.t * 2) * 0.1

				love.graphics.setColor(1, 0.95, 0.8, var_0_81(var_99_16, 0.06, 1))
				love.graphics.rectangle("fill", var_99_10, var_99_8, var_99_3, var_99_3)
			end

			var_99_9 = var_99_9 + var_99_1
		end
	end

	love.graphics.setBlendMode(var_99_4, var_99_5)
end

function var_0_4.drawBackground(arg_100_0, arg_100_1)
	if not var_0_71 then
		var_0_119()
	end

	local var_100_0 = var_0_0.colors.bg

	love.graphics.setColor(var_100_0[1], var_100_0[2], var_100_0[3], 1)
	love.graphics.rectangle("fill", 0, 0, arg_100_0, arg_100_1)
	love.graphics.setColor(1, 1, 1, 1)

	if var_0_58 then
		var_0_58:send("time", love.timer.getTime() % 100)
		love.graphics.setShader(var_0_58)
	end

	for iter_100_0, iter_100_1 in ipairs(var_0_12) do
		local var_100_1 = iter_100_1.img
		local var_100_2, var_100_3 = var_100_1:getDimensions()

		if var_100_2 > 0 and var_100_3 > 0 then
			if iter_100_1.sheetAnim and iter_100_1.quads then
				local var_100_4 = iter_100_1.frameW or math.floor(var_100_2 / (iter_100_1.frameCount or 1))
				local var_100_5 = iter_100_1.frameH or var_100_3
				local var_100_6 = iter_100_1.frameCount or 1
				local var_100_7 = var_0_81(iter_100_1.frameIndex or 1, 1, var_100_6)
				local var_100_8 = iter_100_1.quads[var_100_7]

				if var_100_8 then
					if iter_100_1.splitComposite and iter_100_1.compositeW and iter_100_1.compositeH then
						local var_100_9 = iter_100_1.compositeW
						local var_100_10 = iter_100_1.compositeH
						local var_100_11 = math.max(arg_100_0 / var_100_9, arg_100_1 / var_100_10)
						local var_100_12 = var_100_9 * var_100_11
						local var_100_13 = var_100_10 * var_100_11
						local var_100_14 = math.floor((arg_100_0 - var_100_12) * 0.5 + 0.5)
						local var_100_15 = math.floor((arg_100_1 - var_100_13) * 0.5 + 0.5)
						local var_100_16 = math.floor((iter_100_1.offsetXInComposite or 0) * var_100_11 + 0.5)

						love.graphics.draw(var_100_1, var_100_8, var_100_14 + var_100_16, var_100_15, 0, var_100_11, var_100_11)
					else
						local var_100_17 = math.max(arg_100_0 / var_100_4, arg_100_1 / var_100_5)
						local var_100_18 = var_100_4 * var_100_17
						local var_100_19 = var_100_5 * var_100_17
						local var_100_20 = math.floor((arg_100_0 - var_100_18) * 0.5 + 0.5)
						local var_100_21 = math.floor((arg_100_1 - var_100_19) * 0.5 + 0.5)

						love.graphics.draw(var_100_1, var_100_8, var_100_20, var_100_21, 0, var_100_17, var_100_17)
					end
				end
			elseif iter_100_1.scrollMatchComposite then
				local var_100_22 = iter_100_1.compositeW or 519
				local var_100_23 = iter_100_1.compositeH or 286
				local var_100_24 = math.max(arg_100_0 / var_100_22, arg_100_1 / var_100_23)
				local var_100_25 = var_100_23 * var_100_24
				local var_100_26 = math.floor((arg_100_1 - var_100_25) * 0.5 + 0.5)
				local var_100_27 = var_100_2
				local var_100_28 = math.max(1, math.floor(var_100_27 * var_100_24 + 0.5))
				local var_100_29 = ((iter_100_1.x or 0) % var_100_27 + var_100_27) % var_100_27 * var_100_24
				local var_100_30 = math.floor(var_100_29 + 0.5) % var_100_28
				local var_100_31 = 1
				local var_100_32 = math.max(1, var_100_28 - var_100_31)
				local var_100_33 = math.floor(-var_100_28 + var_100_30)
				local var_100_34 = math.ceil(arg_100_0 + var_100_28 + var_100_32)

				while var_100_33 < var_100_34 do
					love.graphics.draw(var_100_1, var_100_33, var_100_26, 0, var_100_24, var_100_24)

					var_100_33 = var_100_33 + var_100_32
				end
			elseif iter_100_1.fullscreenCover then
				local var_100_35 = math.max(arg_100_0 / var_100_2, arg_100_1 / var_100_3)
				local var_100_36 = var_100_2 * var_100_35
				local var_100_37 = var_100_3 * var_100_35
				local var_100_38 = math.floor((arg_100_0 - var_100_36) * 0.5 + 0.5)
				local var_100_39 = math.floor((arg_100_1 - var_100_37) * 0.5 + 0.5)

				love.graphics.draw(var_100_1, var_100_38, var_100_39, 0, var_100_35, var_100_35)
			else
				local var_100_40 = arg_100_1 / var_100_3
				local var_100_41 = var_100_2 * var_100_40
				local var_100_42 = iter_100_1.x * var_100_40 % var_100_41
				local var_100_43 = -var_100_41 + var_100_42

				while var_100_43 < arg_100_0 do
					love.graphics.draw(var_100_1, var_100_43, 0, 0, var_100_40, var_100_40)

					var_100_43 = var_100_43 + var_100_41
				end
			end
		end
	end

	love.graphics.setShader()
	var_0_145(arg_100_0, arg_100_1)
end

function var_0_4.drawCurrency(arg_101_0)
	local var_101_0 = arg_101_0.virtual.W
	local var_101_1 = arg_101_0.virtual.H
	local var_101_2 = arg_101_0.fontTitle or love.graphics.getFont()

	if var_0_21 then
		local var_101_3, var_101_4 = var_0_21:getDimensions()
		local var_101_5 = 1.5
		local var_101_6 = 20
		local var_101_7 = 10
		local var_101_8 = tostring(math.floor(var_0_23))
		local var_101_9 = var_0_8 or var_0_7 or var_101_2

		love.graphics.setFont(var_101_9)

		local var_101_10 = 1.1
		local var_101_11 = var_101_9:getWidth(var_101_8) * var_101_10
		local var_101_12 = var_101_9:getHeight() * var_101_10
		local var_101_13 = var_101_3 * var_101_5 + var_101_7 + var_101_11
		local var_101_14 = var_101_0 - var_101_6 - var_101_13
		local var_101_15 = var_101_6

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_0_21, math.floor(var_101_14), math.floor(var_101_15), 0, var_101_5, var_101_5)

		local var_101_16 = var_101_15 + (var_101_4 * var_101_5 - var_101_12) / 2

		love.graphics.print(var_101_8, math.floor(var_101_14 + var_101_3 * var_101_5 + var_101_7), math.floor(var_101_16), 0, var_101_10, var_101_10)

		for iter_101_0, iter_101_1 in ipairs(var_0_123) do
			local var_101_17 = var_0_81(tonumber(iter_101_1.alpha or 1 - iter_101_1.t / (iter_101_1.dur or 1)) or 1, 0, 1)

			love.graphics.setColor(iter_101_1.color[1], iter_101_1.color[2], iter_101_1.color[3], var_101_17)

			local var_101_18 = var_101_9:getWidth(iter_101_1.text) * var_101_10
			local var_101_19 = var_101_14 + var_101_3 * var_101_5 + var_101_7 + var_101_11 - var_101_18 + (iter_101_1.xOffset or 0)
			local var_101_20 = var_101_16 + var_101_12 + iter_101_1.yOffset

			love.graphics.print(iter_101_1.text, math.floor(var_101_19), math.floor(var_101_20), 0, var_101_10, var_101_10)
		end
	end
end

local function var_0_146(arg_102_0, arg_102_1, arg_102_2, arg_102_3)
	local var_102_0 = "Demo v0.4.1"
	local var_102_1 = var_0_8 or var_0_7 or arg_102_0 and arg_102_0.font or love.graphics.getFont()

	if not var_102_1 then
		return
	end

	love.graphics.setFont(var_102_1)
	love.graphics.setColor(0.6862745098039216, 0.6588235294117647, 0.6039215686274509, arg_102_3 or 1)

	local var_102_2 = 1
	local var_102_3 = 8
	local var_102_4 = arg_102_2 - var_102_1:getHeight() * var_102_2 - 8

	love.graphics.print(var_102_0, math.floor(var_102_3 + 0.5), math.floor(var_102_4 + 0.5), 0, var_102_2, var_102_2)
end

function var_0_4.drawUI(arg_103_0)
	local var_103_0 = arg_103_0.virtual.W
	local var_103_1 = arg_103_0.virtual.H
	local var_103_2 = arg_103_0.fontTitle or love.graphics.getFont()
	local var_103_3 = var_0_81(tonumber(var_0_4._menuFadeAlpha or 1) or 1, 0, 1)
	local var_103_4 = math.floor((var_0_4._menuLogoOffsetY or 0) + 0.5)
	local var_103_5 = math.floor((var_0_4._menuButtonsOffsetY or 0) + 0.5)
	local var_103_6 = arg_103_0 and arg_103_0.mainMenuLogo or {}

	var_0_118.targetY = tonumber(var_103_6.targetY) or 0

	if var_0_13 then
		love.graphics.setColor(1, 1, 1, var_103_3)

		local var_103_7, var_103_8 = var_0_13:getDimensions()
		local var_103_9 = tonumber(var_103_6.scale) or 1.7
		local var_103_10 = math.floor((var_103_6.offsetX or 0) + 0.5)
		local var_103_11 = math.floor((var_103_6.offsetY or 0) + 0.5)
		local var_103_12 = math.floor((var_103_0 - var_103_7 * var_103_9) / 2 + var_103_10)
		local var_103_13 = math.floor(var_0_118.y + var_103_4 + var_103_11)

		love.graphics.draw(var_0_13, var_103_12, var_103_13, 0, var_103_9, var_103_9)
	else
		local var_103_14 = "Slot Tactics"

		love.graphics.setFont(var_103_2)

		local var_103_15 = 2
		local var_103_16 = var_103_2:getWidth(var_103_14) * var_103_15
		local var_103_17 = var_103_2:getHeight() * var_103_15

		love.graphics.setColor(1, 0.8, 0.2, var_103_3)
		love.graphics.print(var_103_14, (var_103_0 - var_103_16) / 2, var_103_1 * 0.15, 0, var_103_15, var_103_15)
	end

	local var_103_18 = math.floor(var_103_1 * 0.012 + 10 + 0.5)
	local var_103_19 = var_103_1 * 0.35 + var_103_18
	local var_103_20 = 37
	local var_103_21 = math.floor(var_103_1 * 0.028 - 10)
	local var_103_22 = var_0_7 or var_103_2

	love.graphics.setFont(var_103_22)

	local var_103_23 = arg_103_0 and arg_103_0.menuSettings and arg_103_0.menuSettings.language or "ko"
	local var_103_24
	local var_103_25

	if var_0_24 then
		local var_103_26 = var_0_24:getWidth()

		var_103_25 = var_0_24:getHeight()
	else
		local var_103_27 = var_0_2.getText(var_0_4.buttons[1].textKey, var_103_23)
		local var_103_28 = var_103_22:getWidth(var_103_27) + 40

		var_103_25 = var_103_22:getHeight() + 20
	end

	if var_0_28 then
		love.graphics.setColor(1, 1, 1, var_103_3)

		local var_103_29, var_103_30 = var_0_28:getDimensions()

		if var_103_29 > 0 and var_103_30 > 0 then
			local var_103_31 = math.floor(var_103_19 + 0 * var_103_20 + var_103_25 / 2 + var_103_5)
			local var_103_32 = math.floor(var_103_19 + 2 * var_103_20 + var_103_25 / 2 + var_103_5)
			local var_103_33 = math.floor((var_103_31 + var_103_32) / 2 + var_103_21 + 0.5)

			love.graphics.draw(var_0_28, math.floor(var_103_0 / 2), var_103_33, 0, 1, 1, math.floor(var_103_29 / 2), math.floor(var_103_30 / 2))
		end
	end

	love.graphics.setColor(1, 1, 1, var_103_3)

	for iter_103_0, iter_103_1 in ipairs(var_0_4.buttons) do
		local var_103_34 = var_0_2.getText(iter_103_1.textKey, var_103_23)
		local var_103_35 = var_103_22:getWidth(var_103_34)
		local var_103_36 = var_103_22:getHeight()
		local var_103_37 = iter_103_1.scale or 1
		local var_103_38 = iter_103_1.id == "play" and var_0_25
		local var_103_39 = iter_103_1.id == "settings" and var_0_26
		local var_103_40 = iter_103_1.id == "exit" and var_0_27
		local var_103_41 = (var_103_38 or var_103_39 or var_103_40) and 2 or 1
		local var_103_42
		local var_103_43

		if var_103_38 then
			var_103_42 = var_0_25:getWidth()
			var_103_43 = var_0_25:getHeight()
		elseif var_103_39 then
			var_103_42 = var_0_26:getWidth()
			var_103_43 = var_0_26:getHeight()
		elseif var_103_40 then
			var_103_42 = var_0_27:getWidth()
			var_103_43 = var_0_27:getHeight()
		elseif var_0_24 then
			var_103_42 = var_0_24:getWidth()
			var_103_43 = var_0_24:getHeight()
		else
			var_103_42 = var_103_35 + 40
			var_103_43 = var_103_36 + 20
		end

		local var_103_44 = math.floor(var_103_0 / 2)
		local var_103_45 = math.floor(var_103_19 + (iter_103_0 - 1) * var_103_20 + var_103_25 / 2 + var_103_5)
		local var_103_46 = var_103_42 * var_103_37 * var_103_41
		local var_103_47 = var_103_43 * var_103_37 * var_103_41

		iter_103_1.rect = {
			x = var_103_44 - var_103_46 / 2,
			y = var_103_45 - var_103_47 / 2,
			w = var_103_46,
			h = var_103_47
		}

		love.graphics.setColor(1, 1, 1, var_103_3)

		if var_103_38 then
			love.graphics.draw(var_0_25, var_103_44, var_103_45, 0, var_103_37 * var_103_41, var_103_37 * var_103_41, math.floor(var_103_42 / 2), math.floor(var_103_43 / 2))
		elseif var_103_39 then
			love.graphics.draw(var_0_26, var_103_44, var_103_45, 0, var_103_37 * var_103_41, var_103_37 * var_103_41, math.floor(var_103_42 / 2), math.floor(var_103_43 / 2))
		elseif var_103_40 then
			love.graphics.draw(var_0_27, var_103_44, var_103_45, 0, var_103_37 * var_103_41, var_103_37 * var_103_41, math.floor(var_103_42 / 2), math.floor(var_103_43 / 2))
		elseif var_0_24 then
			love.graphics.draw(var_0_24, var_103_44, var_103_45, 0, var_103_37, var_103_37, math.floor(var_103_42 / 2), math.floor(var_103_43 / 2))

			local var_103_48 = var_103_37 * 1.1

			love.graphics.print(var_103_34, var_103_44, math.floor(var_103_45 - 2), 0, var_103_48, var_103_48, math.floor(var_103_35 / 2), math.floor(var_103_36 / 2))
		else
			local var_103_49 = var_103_37 * 1.1

			love.graphics.print(var_103_34, var_103_44, math.floor(var_103_45 - 2), 0, var_103_49, var_103_49, math.floor(var_103_35 / 2), math.floor(var_103_36 / 2))
		end
	end

	love.graphics.setColor(1, 1, 1, var_103_3)

	local var_103_50 = var_0_8 or var_0_7 or var_103_22

	love.graphics.setFont(var_103_50)

	var_0_4.upgradeRect = nil
	var_0_4.collectionRect = nil
	var_0_4.achievementRect = nil
	var_0_4.discordRect = nil

	local var_103_51
	local var_103_52
	local var_103_53 = require("src.ui.widgets").text_fit.upper
	local var_103_54 = var_103_53(var_0_2.getText("upgrade_title", var_103_23) or "")
	local var_103_55 = var_103_53(var_0_2.getText("menu_collection", var_103_23) or "")
	local var_103_56 = var_103_53(var_0_2.getText("menu_achievement", var_103_23) or "")
	local var_103_57 = 0
	local var_103_58 = 0

	if var_0_20 and var_0_14 then
		local var_103_59 = arg_103_0 and arg_103_0.mainMenuUpgradeButton or {}
		local var_103_60 = arg_103_0 and arg_103_0.mainMenuCollectionButton or {}
		local var_103_61 = arg_103_0 and arg_103_0.mainMenuAchievementButton or {}
		local var_103_62 = 1.1304347826086958
		local var_103_63 = var_103_50:getWidth(var_103_54) * (tonumber(var_103_59.labelScale) or 1.1)
		local var_103_64 = var_103_50:getWidth(var_103_55) * (tonumber(var_103_60.labelScale) or 1.1)
		local var_103_65 = var_0_20:getWidth() * (tonumber(var_103_59.iconScale) or tonumber(var_103_59.drawMul) or 1.5)
		local var_103_66 = var_0_14:getWidth() * (tonumber(var_103_60.iconScale) or tonumber(var_103_60.drawMul) or 1.5)
		local var_103_67 = (tonumber(var_103_60.offsetX) or 0) - (tonumber(var_103_60.gapFromUpgradePx) or 24) - (var_103_65 + var_103_66) / 2
		local var_103_68 = math.max(var_103_63 * var_103_62 + var_103_64, var_103_63 + var_103_64 * var_103_62) / 2 + 10

		var_103_57 = math.max(0, math.ceil(var_103_68 - var_103_67))

		if var_0_16 then
			local var_103_69 = var_103_50:getWidth(var_103_56) * (tonumber(var_103_61.labelScale) or 1.1)
			local var_103_70 = var_0_16:getWidth() * (tonumber(var_103_61.iconScale) or tonumber(var_103_61.drawMul) or 1.5)
			local var_103_71 = var_103_66 / 2 + (tonumber(var_103_61.gapFromCollectionPx) or 24) + var_103_70 / 2 + (tonumber(var_103_61.offsetX) or 0)
			local var_103_72 = math.max(var_103_64 * var_103_62 + var_103_69, var_103_64 + var_103_69 * var_103_62) / 2 + 10

			var_103_58 = math.max(0, math.ceil(var_103_72 - var_103_71))
		end

		local var_103_73 = math.max(var_103_57, var_0_16 and var_103_58 or 0)

		var_103_57, var_103_58 = var_103_73, var_103_73
	end

	if var_0_20 then
		local var_103_74 = arg_103_0 and arg_103_0.mainMenuUpgradeButton or {}
		local var_103_75 = tonumber(var_103_74.paddingRight)

		if var_103_75 == nil then
			var_103_75 = 40
		end

		local var_103_76 = tonumber(var_103_74.paddingBottom)

		if var_103_76 == nil then
			var_103_76 = var_103_75
		end

		local var_103_77 = math.floor((tonumber(var_103_74.offsetX) or 0) + 0.5)
		local var_103_78 = math.floor((tonumber(var_103_74.offsetY) or 0) + 0.5)
		local var_103_79 = tonumber(var_103_74.iconScale) or tonumber(var_103_74.drawMul) or 1.5
		local var_103_80, var_103_81 = var_0_20:getDimensions()
		local var_103_82 = var_103_80 * var_103_79
		local var_103_83 = math.floor(var_103_0 - var_103_75 - var_103_82 / 2 + var_103_77) - var_103_57
		local var_103_84 = math.floor(var_103_1 - var_103_76 - var_103_81 * var_103_79 / 2 + var_103_5 + var_103_78)

		var_103_51 = var_0_77(var_103_74, var_0_20, var_103_54, var_103_50, var_103_83, var_103_84)
		var_0_4.upgradeState = var_0_4.upgradeState or {
			scale = 1
		}
		var_0_4.upgradeRect = var_0_79(var_103_51, var_0_20, var_103_54, var_103_50, var_103_3, var_0_4.upgradeState.scale or 1, 0, false)
	end

	if var_0_18 then
		local var_103_85 = arg_103_0 and arg_103_0.mainMenuDiscordButton or {}
		local var_103_86 = tonumber(var_103_85.paddingLeft) or 26
		local var_103_87 = tonumber(var_103_85.paddingBottom) or 40
		local var_103_88 = tonumber(var_103_85.iconScale) or tonumber(var_103_85.drawMul) or 1.5
		local var_103_89, var_103_90 = var_0_18:getDimensions()
		local var_103_91 = var_0_2.getText("menu_discord", var_103_23) or "Discord"
		local var_103_92 = math.max(var_103_89 * var_103_88, var_103_50:getWidth(var_103_91) * (tonumber(var_103_85.labelScale) or 1.1))
		local var_103_93 = math.floor(var_103_86 + var_103_92 / 2 + (tonumber(var_103_85.offsetX) or 0))
		local var_103_94 = math.floor(var_103_1 - var_103_87 - var_103_90 * var_103_88 / 2 + var_103_5 + (tonumber(var_103_85.offsetY) or 0))
		local var_103_95 = var_0_77(var_103_85, var_0_18, var_103_91, var_103_50, var_103_93, var_103_94)

		var_0_4.discordState = var_0_4.discordState or {
			scale = 1
		}
		var_0_4.discordRect = var_0_79(var_103_95, var_0_18, var_103_91, var_103_50, var_103_3, var_0_4.discordState.scale or 1, 0, false)
	end

	if var_0_14 then
		local var_103_96 = arg_103_0 and arg_103_0.mainMenuCollectionButton or {}
		local var_103_97
		local var_103_98

		if var_103_51 then
			local var_103_99 = tonumber(var_103_96.gapFromUpgradePx) or 24
			local var_103_100 = tonumber(var_103_96.iconScale) or tonumber(var_103_96.drawMul) or 1.5
			local var_103_101 = var_0_14:getDimensions() * var_103_100

			var_103_97 = math.floor(var_103_51.iconScreenCx - var_103_51.idleIconW / 2 - var_103_99 - var_103_101 / 2 + (tonumber(var_103_96.offsetX) or 0)) + var_103_57
			var_103_98 = math.floor(var_103_51.iconScreenCy + (tonumber(var_103_96.offsetY) or 0))
		else
			local var_103_102 = tonumber(var_103_96.paddingRight) or 40
			local var_103_103 = tonumber(var_103_96.paddingBottom) or var_103_102
			local var_103_104 = tonumber(var_103_96.iconScale) or 1.5
			local var_103_105, var_103_106 = var_0_14:getDimensions()

			var_103_97 = math.floor(var_103_0 - var_103_102 - var_103_105 * var_103_104 / 2 + (tonumber(var_103_96.offsetX) or 0))
			var_103_98 = math.floor(var_103_1 - var_103_103 - var_103_106 * var_103_104 / 2 + var_103_5 + (tonumber(var_103_96.offsetY) or 0))
		end

		var_103_52 = var_0_77(var_103_96, var_0_14, var_103_55, var_103_50, var_103_97, var_103_98)
		var_0_4.collectionState = var_0_4.collectionState or {
			scale = 1
		}

		local var_103_107 = 0

		if var_0_4.collectionShake then
			local var_103_108 = math.max(0.001, var_0_4.collectionShake.dur or 0.28)
			local var_103_109 = var_0_4.collectionShake.t or 0
			local var_103_110 = var_0_4.collectionShake.amp or 2.5
			local var_103_111 = var_0_4.collectionShake.freq or 58
			local var_103_112 = math.min(1, var_103_109 / var_103_108)

			var_103_107 = math.sin(var_103_109 * var_103_111) * var_103_110 * (1 - var_103_112)
		end

		local var_103_113 = var_0_14

		if var_0_15 and (var_0_4._collectionHovering or var_0_4.collectionState and var_0_4.collectionState.pressed) then
			var_103_113 = var_0_15
		end

		var_0_4.collectionRect = var_0_79(var_103_52, var_103_113, var_103_55, var_103_50, var_103_3, var_0_4.collectionState.scale or 1, var_103_107, var_0_4.collectionLocked == true)
	end

	if var_0_16 and var_103_52 then
		local var_103_114 = arg_103_0 and arg_103_0.mainMenuAchievementButton or {}
		local var_103_115 = tonumber(var_103_114.gapFromCollectionPx) or 24
		local var_103_116 = var_0_78(var_103_52, var_103_52.idleIconW, var_103_115, var_0_16, var_103_114) + var_103_58
		local var_103_117 = math.floor(var_103_52.iconScreenCy + (tonumber(var_103_114.offsetY) or 0))
		local var_103_118 = var_0_77(var_103_114, var_0_16, var_103_56, var_103_50, var_103_116, var_103_117)

		var_0_4.achievementState = var_0_4.achievementState or {
			scale = 1
		}

		local var_103_119 = 0

		if var_0_4.achievementShake then
			local var_103_120 = math.max(0.001, var_0_4.achievementShake.dur or 0.28)
			local var_103_121 = var_0_4.achievementShake.t or 0
			local var_103_122 = var_0_4.achievementShake.amp or 2.5
			local var_103_123 = var_0_4.achievementShake.freq or 58
			local var_103_124 = math.min(1, var_103_121 / var_103_120)

			var_103_119 = math.sin(var_103_121 * var_103_123) * var_103_122 * (1 - var_103_124)
		end

		local var_103_125 = var_0_16

		if var_0_17 and (var_0_4._achievementHovering or var_0_4.achievementState and var_0_4.achievementState.pressed) then
			var_103_125 = var_0_17
		end

		var_0_4.achievementRect = var_0_79(var_103_118, var_103_125, var_103_56, var_103_50, var_103_3, var_0_4.achievementState.scale or 1, var_103_119, var_0_4.achievementLocked == true)
	end

	if var_0_4.collectionLocked then
		var_0_125(arg_103_0, var_103_0, var_103_1, var_103_3, var_103_23, var_0_4.collectionRect, arg_103_0 and arg_103_0.mainMenuCollectionButton, var_0_4._collectionHintAlpha, "menu_collection_locked_hint")
	end

	if var_0_4.achievementLocked then
		var_0_125(arg_103_0, var_103_0, var_103_1, var_103_3, var_103_23, var_0_4.achievementRect, arg_103_0 and arg_103_0.mainMenuAchievementButton, var_0_4._achievementHintAlpha, "menu_achievement_locked_hint")
	end

	var_0_146(arg_103_0, var_103_0, var_103_1, var_103_3)
	var_0_144(arg_103_0)
end

function var_0_4.drawMessageWindow(arg_104_0, arg_104_1, arg_104_2, arg_104_3, arg_104_4)
	if not arg_104_0 then
		return
	end

	local var_104_0 = arg_104_4 or 1

	arg_104_1 = math.floor(arg_104_1 + 0.5)
	arg_104_2 = math.floor(arg_104_2 + 0.5)

	local var_104_1 = (arg_104_3 and arg_104_3.restartConfirm or {}).shadow or {}

	if var_104_1.enabled ~= false then
		local var_104_2 = math.floor((var_104_1.offsetX or 5) + 0.5)
		local var_104_3 = math.floor((var_104_1.offsetY or 5) + 0.5)
		local var_104_4 = var_104_1.color or {
			0,
			0,
			0,
			0.55
		}

		love.graphics.setColor(var_104_4[1] or 0, var_104_4[2] or 0, var_104_4[3] or 0, (var_104_4[4] or 0.55) * var_104_0)
		love.graphics.draw(arg_104_0, arg_104_1 + var_104_2, arg_104_2 + var_104_3)
	end

	love.graphics.setColor(1, 1, 1, var_104_0)
	love.graphics.draw(arg_104_0, arg_104_1, arg_104_2)
end

function var_0_4.drawExitConfirm(arg_105_0, arg_105_1)
	if not var_0_4.exitConfirm.active then
		return
	end

	local var_105_0 = arg_105_1 and arg_105_1.ui and arg_105_1.ui.messageWindow

	if not var_105_0 then
		return
	end

	local var_105_1 = var_0_4.exitConfirm
	local var_105_2 = arg_105_0 and arg_105_0.restartConfirm or {}
	local var_105_3 = arg_105_0.virtual.W
	local var_105_4 = arg_105_0.virtual.H
	local var_105_5 = var_105_0:getWidth()
	local var_105_6 = var_105_0:getHeight()
	local var_105_7 = var_105_2.centerY or math.floor(var_105_4 * (var_105_2.centerFracY or 0.5) + 0.5)
	local var_105_8 = var_105_2.boardOffsetY or 0

	var_105_1.targetY = math.floor(var_105_7 - var_105_6 * 0.5 + var_105_8 + 0.5)

	local var_105_9 = var_105_2.centerX or math.floor(var_105_3 * (var_105_2.centerFracX or 0.5) + 0.5)
	local var_105_10 = var_105_2.boardOffsetX or 0
	local var_105_11 = math.floor(var_105_9 - var_105_5 * 0.5 + var_105_10 + 0.5)
	local var_105_12 = math.floor(var_105_1.y + 0.5)

	var_0_4.drawMessageWindow(var_105_0, var_105_11, var_105_12, arg_105_0, 1)

	local var_105_13 = var_105_2.font or arg_105_0.coreMessage and arg_105_0.coreMessage.font or arg_105_0.font or love.graphics.getFont()

	love.graphics.setFont(var_105_13)

	local var_105_14 = arg_105_0 and arg_105_0.menuSettings and arg_105_0.menuSettings.language or "ko"
	local var_105_15 = var_105_1.prompt or var_0_2.getText("menu_exit_confirm", var_105_14)
	local var_105_16 = var_105_13:getWidth(var_105_15)
	local var_105_17 = var_105_13:getHeight()
	local var_105_18 = var_105_2.prompt or {}
	local var_105_19 = math.floor((var_105_3 - var_105_16) * 0.5 + (var_105_18.offsetX or 0) + 0.5)
	local var_105_20 = var_105_12 + math.max(var_105_18.topPadMinPx or 16, math.floor(var_105_6 * (var_105_18.yFrac or 0.24))) + (var_105_18.offsetY or 0)
	local var_105_21 = var_105_18.color or {
		0.898,
		0.886,
		0.941,
		1
	}

	love.graphics.setColor(var_105_21)
	love.graphics.print(var_105_15, var_105_19, var_105_20)

	local var_105_22 = var_0_2.getText("menu_yes", var_105_14)
	local var_105_23 = var_0_2.getText("menu_no", var_105_14)
	local var_105_24 = var_105_13:getWidth(var_105_22)
	local var_105_25 = var_105_13:getWidth(var_105_23)
	local var_105_26 = var_105_17
	local var_105_27 = var_105_2.hitPad and var_105_2.hitPad.x or 12
	local var_105_28 = var_105_2.hitPad and var_105_2.hitPad.y or 6
	local var_105_29 = var_105_2.yes or {}
	local var_105_30 = var_105_2.no or {}
	local var_105_31 = var_105_12 + var_105_6 - var_105_26 - math.max(var_105_2.bottomPadMinPx or 10, math.floor(var_105_6 * (var_105_29.yFracFromBottom or 0.1)))
	local var_105_32 = math.max(var_105_2.sidePadMinPx or 10, math.floor(var_105_5 * (var_105_29.xFrac or 0.06)))
	local var_105_33 = math.max(var_105_2.sidePadMinPx or 10, math.floor(var_105_5 * (var_105_30.xFrac or 0.06)))
	local var_105_34 = var_105_11 + var_105_32 + (var_105_29.offsetX or 0)
	local var_105_35 = var_105_11 + var_105_5 - var_105_33 - var_105_25 + (var_105_30.offsetX or 0)
	local var_105_36 = var_105_31 + (var_105_29.offsetY or 0)
	local var_105_37 = var_105_31 + (var_105_30.offsetY or 0)
	local var_105_38 = var_105_29.color or {
		0.949,
		0.902,
		0.788,
		1
	}
	local var_105_39 = var_105_30.color or {
		0.949,
		0.902,
		0.788,
		1
	}

	love.graphics.setColor(var_105_38)
	love.graphics.print(var_105_22, var_105_34, var_105_36)
	love.graphics.setColor(var_105_39)
	love.graphics.print(var_105_23, var_105_35, var_105_37)

	var_105_1.rectYes = {
		x = var_105_34 - var_105_27,
		y = var_105_36 - var_105_28,
		w = var_105_24 + var_105_27 * 2,
		h = var_105_26 + var_105_28 * 2
	}
	var_105_1.rectNo = {
		x = var_105_35 - var_105_27,
		y = var_105_37 - var_105_28,
		w = var_105_25 + var_105_27 * 2,
		h = var_105_26 + var_105_28 * 2
	}

	local var_105_40 = var_105_2.hoverUnderline

	if var_105_40 and var_105_40.enabled ~= false and not var_105_1.leaving then
		local var_105_41 = arg_105_0 and arg_105_0.battle and arg_105_0.battle.unitScale or 1
		local var_105_42 = math.max(1, math.floor((var_105_40.thicknessSourcePx or 1) * var_105_41 + 0.5))
		local var_105_43 = var_105_40.gapPx or 2
		local var_105_44 = var_105_40.padX or 0

		love.graphics.setColor(var_105_40.color or {
			0.9490196078431372,
			0.6509803921568628,
			0.3686274509803922,
			1
		})

		if var_105_1.ulYesProg and var_105_1.ulYesProg > 0 then
			local var_105_45 = var_105_34 - var_105_27 - var_105_44
			local var_105_46 = var_105_24 + var_105_27 * 2 + var_105_44 * 2
			local var_105_47 = math.max(1, math.floor(var_105_46 * var_105_1.ulYesProg + 0.5))
			local var_105_48 = var_105_36 + var_105_26 + var_105_43

			love.graphics.rectangle("fill", math.floor(var_105_45 + 0.5), math.floor(var_105_48 + 0.5), var_105_47, var_105_42)
		end

		if var_105_1.ulNoProg and var_105_1.ulNoProg > 0 then
			local var_105_49 = var_105_35 - var_105_27 - var_105_44
			local var_105_50 = var_105_25 + var_105_27 * 2 + var_105_44 * 2
			local var_105_51 = math.max(1, math.floor(var_105_50 * var_105_1.ulNoProg + 0.5))
			local var_105_52 = var_105_36 + var_105_26 + var_105_43

			love.graphics.rectangle("fill", math.floor(var_105_49 + 0.5), math.floor(var_105_52 + 0.5), var_105_51, var_105_42)
		end
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function var_0_4.mousepressed(arg_106_0, arg_106_1, arg_106_2)
	if arg_106_2 == 1 then
		if var_0_4.stageSelect and var_0_4.stageSelect.active then
			local var_106_0 = var_0_4.stageSelect

			if var_106_0.showDebugUnlockPanel then
				local var_106_1 = 500
				local var_106_2 = 50
				local var_106_3 = (var_0_5.virtual.W - var_106_1) * 0.5
				local var_106_4 = 20
				local var_106_5 = 200
				local var_106_6 = 34
				local var_106_7 = 40
				local var_106_8 = var_106_4 + (var_106_2 - var_106_6) * 0.5
				local var_106_9 = var_106_3 + (var_106_1 - (var_106_5 * 2 + var_106_7)) * 0.5
				local var_106_10 = var_106_9 + var_106_5 + var_106_7

				if var_106_0.debugMedalButtons then
					for iter_106_0, iter_106_1 in ipairs(var_106_0.debugMedalButtons) do
						if arg_106_0 >= iter_106_1.x and arg_106_0 <= iter_106_1.x + iter_106_1.w and arg_106_1 >= iter_106_1.y and arg_106_1 <= iter_106_1.y + iter_106_1.h then
							if var_0_4.toggleDifficultyCleared then
								var_0_4.toggleDifficultyCleared(iter_106_1.stageKey or var_106_0.selectedStage or 1, iter_106_1.diffKey or 1)
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

				if var_106_0.diffActive then
					if var_106_9 <= arg_106_0 and arg_106_0 <= var_106_9 + var_106_5 and var_106_8 <= arg_106_1 and arg_106_1 <= var_106_8 + var_106_6 then
						var_106_0.unlockedDifficulties = var_106_0.unlockedDifficulties or {
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

						local var_106_11 = var_106_0.selectedStage or 1

						var_106_0.unlockedDifficulties[var_106_11] = var_106_0.unlockedDifficulties[var_106_11] or {
							true,
							false,
							false
						}
						var_106_0.unlockedDifficulties[var_106_11][2] = not var_106_0.unlockedDifficulties[var_106_11][2]

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						return nil
					end

					if var_106_10 <= arg_106_0 and arg_106_0 <= var_106_10 + var_106_5 and var_106_8 <= arg_106_1 and arg_106_1 <= var_106_8 + var_106_6 then
						var_106_0.unlockedDifficulties = var_106_0.unlockedDifficulties or {
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

						local var_106_12 = var_106_0.selectedStage or 1

						var_106_0.unlockedDifficulties[var_106_12] = var_106_0.unlockedDifficulties[var_106_12] or {
							true,
							false,
							false
						}
						var_106_0.unlockedDifficulties[var_106_12][3] = not var_106_0.unlockedDifficulties[var_106_12][3]

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						return nil
					end
				else
					if var_106_9 <= arg_106_0 and arg_106_0 <= var_106_9 + var_106_5 and var_106_8 <= arg_106_1 and arg_106_1 <= var_106_8 + var_106_6 then
						var_106_0.unlockedStages = var_106_0.unlockedStages or {
							true,
							false,
							false
						}
						var_106_0.unlockedStages[2] = not var_106_0.unlockedStages[2]

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						return nil
					end

					if var_106_10 <= arg_106_0 and arg_106_0 <= var_106_10 + var_106_5 and var_106_8 <= arg_106_1 and arg_106_1 <= var_106_8 + var_106_6 then
						var_106_0.unlockedStages = var_106_0.unlockedStages or {
							true,
							false,
							false
						}
						var_106_0.unlockedStages[3] = not var_106_0.unlockedStages[3]

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

			if var_106_0.diffActive then
				local var_106_13 = var_106_0.saveSlotRect

				if var_0_4.getRunSave(var_106_0.selectedStage) and var_106_13 and arg_106_0 >= var_106_13.x and arg_106_0 <= var_106_13.x + var_106_13.w and arg_106_1 >= var_106_13.y and arg_106_1 <= var_106_13.y + var_106_13.h then
					var_106_0.saveSlotPressed = true

					return nil
				end

				if var_106_0.diffRects then
					for iter_106_2, iter_106_3 in ipairs(var_106_0.diffRects) do
						local var_106_14 = iter_106_2 == 1 and var_0_50 or iter_106_2 == 2 and var_0_51 or iter_106_2 == 3 and var_0_52

						if var_106_14 then
							if var_0_97(var_106_14, arg_106_0, arg_106_1, iter_106_3.x, iter_106_3.y, iter_106_3.s or 1, 3, 0.05) then
								var_106_0.diffPressedIdx = iter_106_2

								return nil
							end
						elseif arg_106_0 >= iter_106_3.x and arg_106_0 <= iter_106_3.x + iter_106_3.w and arg_106_1 >= iter_106_3.y and arg_106_1 <= iter_106_3.y + iter_106_3.h then
							var_106_0.diffPressedIdx = iter_106_2

							return nil
						end
					end
				end
			end

			var_106_0.pressedIndex = nil

			if var_106_0.back and var_106_0.back.rect then
				local var_106_15 = var_106_0.back.rect

				if arg_106_0 >= var_106_15.x and arg_106_0 <= var_106_15.x + var_106_15.w and arg_106_1 >= var_106_15.y and arg_106_1 <= var_106_15.y + var_106_15.h then
					var_106_0.back.pressed = true

					return nil
				end
			end

			if not var_106_0.diffActive and var_106_0.pageArrow and var_106_0.pageArrow.rect and (var_106_0.pageSlideT or 0) <= 0 then
				local var_106_16 = var_106_0.pageArrow.rect

				if arg_106_0 >= var_106_16.x and arg_106_0 <= var_106_16.x + var_106_16.w and arg_106_1 >= var_106_16.y and arg_106_1 <= var_106_16.y + var_106_16.h then
					var_106_0.pagePressed = var_0_102(var_106_0)

					return nil
				end
			end

			if var_106_0.stageRects and (var_106_0.pageSlideT or 0) <= 0 then
				for iter_106_4, iter_106_5 in ipairs(var_106_0.stageRects) do
					local var_106_17 = iter_106_4 == 1 and var_0_43 or var_0_44

					if var_106_17 then
						local var_106_18 = var_0_97(var_106_17, arg_106_0, arg_106_1, iter_106_5.x, iter_106_5.y, iter_106_5.s or 1, 3, 0.05)

						if not var_106_18 and iter_106_5.stageArtData and iter_106_5.stageArtX and iter_106_5.stageArtY then
							var_106_18 = var_0_97(iter_106_5.stageArtData, arg_106_0, arg_106_1, iter_106_5.stageArtX, iter_106_5.stageArtY, iter_106_5.s or 1, 3, 0.05)
						end

						if var_106_18 then
							var_106_0.pressedIndex = iter_106_4

							return nil
						end
					elseif arg_106_0 >= iter_106_5.x and arg_106_0 <= iter_106_5.x + iter_106_5.w and arg_106_1 >= iter_106_5.y and arg_106_1 <= iter_106_5.y + iter_106_5.h then
						var_106_0.pressedIndex = iter_106_4

						return nil
					end
				end
			end

			return nil
		end

		if var_0_4.exitConfirm.active then
			local var_106_19 = var_0_4.exitConfirm

			if var_106_19.rectYes and arg_106_0 >= var_106_19.rectYes.x and arg_106_0 <= var_106_19.rectYes.x + var_106_19.rectYes.w and arg_106_1 >= var_106_19.rectYes.y and arg_106_1 <= var_106_19.rectYes.y + var_106_19.rectYes.h then
				local var_106_20 = var_106_19.action or "exit"

				var_106_19.active = false
				var_106_19.leaving = false

				return var_106_20
			elseif var_106_19.rectNo and arg_106_0 >= var_106_19.rectNo.x and arg_106_0 <= var_106_19.rectNo.x + var_106_19.rectNo.w and arg_106_1 >= var_106_19.rectNo.y and arg_106_1 <= var_106_19.rectNo.y + var_106_19.rectNo.h then
				var_106_19.leaving = true

				return nil
			end

			return nil
		end

		if var_0_4.inputCooldown and var_0_4.inputCooldown > 0 then
			return nil
		end

		if var_0_4.discordRect then
			local var_106_21 = var_0_4.discordRect

			if arg_106_0 >= var_106_21.x and arg_106_0 <= var_106_21.x + var_106_21.w and arg_106_1 >= var_106_21.y and arg_106_1 <= var_106_21.y + var_106_21.h then
				var_0_4.discordState = var_0_4.discordState or {}
				var_0_4.discordState.pressed = true

				if var_0_30 then
					if var_0_30:isPlaying() then
						var_0_30:stop()
					end

					var_0_30:play()
				end

				if love.system and love.system.openURL then
					pcall(love.system.openURL, var_0_74)
				end

				var_0_4.inputCooldown = var_0_124

				return nil
			end
		end

		if var_0_4.collectionRect then
			local var_106_22 = var_0_4.collectionRect

			if arg_106_0 >= var_106_22.x and arg_106_0 <= var_106_22.x + var_106_22.w and arg_106_1 >= var_106_22.y and arg_106_1 <= var_106_22.y + var_106_22.h then
				var_0_4.collectionState = var_0_4.collectionState or {}
				var_0_4.collectionState.pressed = true

				return nil
			end
		end

		if var_0_4.achievementRect then
			local var_106_23 = var_0_4.achievementRect

			if arg_106_0 >= var_106_23.x and arg_106_0 <= var_106_23.x + var_106_23.w and arg_106_1 >= var_106_23.y and arg_106_1 <= var_106_23.y + var_106_23.h then
				var_0_4.achievementState = var_0_4.achievementState or {}
				var_0_4.achievementState.pressed = true

				return nil
			end
		end

		if var_0_4.upgradeRect then
			local var_106_24 = var_0_4.upgradeRect

			if arg_106_0 >= var_106_24.x and arg_106_0 <= var_106_24.x + var_106_24.w and arg_106_1 >= var_106_24.y and arg_106_1 <= var_106_24.y + var_106_24.h then
				var_0_4.upgradeState = var_0_4.upgradeState or {}
				var_0_4.upgradeState.pressed = true

				return nil
			end
		end

		local var_106_25 = var_0_76(var_0_4.buttons, arg_106_0, arg_106_1)

		if var_106_25 then
			local var_106_26 = var_0_4.buttons[var_106_25]

			if var_106_26.rect then
				var_106_26.pressed = true

				return nil
			end
		end
	end

	return nil
end

function var_0_4.mousereleased(arg_107_0, arg_107_1, arg_107_2)
	if arg_107_2 == 1 then
		if var_0_4.stageSelect and var_0_4.stageSelect.active then
			local var_107_0 = var_0_4.stageSelect
			local var_107_1 = var_0_5 and var_0_5.virtual and var_0_5.virtual.H or 720

			if var_107_0.diffActive and var_107_0.saveSlotPressed then
				var_107_0.saveSlotPressed = false

				local var_107_2 = var_0_4.getRunSave(var_107_0.selectedStage)
				local var_107_3 = var_107_0.saveSlotRect

				if var_107_2 and var_107_3 and arg_107_0 >= var_107_3.x and arg_107_0 <= var_107_3.x + var_107_3.w and arg_107_1 >= var_107_3.y and arg_107_1 <= var_107_3.y + var_107_3.h then
					var_107_0.saveSlotClickFeedback = 0.12

					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					local var_107_4 = var_107_0.selectedStage or var_107_2.stage or 1

					if var_107_0.newStages then
						var_107_0.newStages[var_107_4] = nil
					end

					return {
						type = "continue",
						stage = var_107_4,
						difficulty = var_107_2.difficulty or 1
					}
				end
			end

			if var_107_0.diffActive and var_107_0.diffPressedIdx then
				local var_107_5 = var_107_0.diffPressedIdx
				local var_107_6 = var_107_0.diffRects and var_107_0.diffRects[var_107_5]

				var_107_0.diffPressedIdx = nil

				local var_107_7 = false

				if var_107_6 then
					local var_107_8 = var_107_5 == 1 and var_0_50 or var_107_5 == 2 and var_0_51 or var_107_5 == 3 and var_0_52

					if var_107_8 then
						var_107_7 = var_0_97(var_107_8, arg_107_0, arg_107_1, var_107_6.x, var_107_6.y, var_107_6.s or 1, 3, 0.05)
					else
						var_107_7 = arg_107_0 >= var_107_6.x and arg_107_0 <= var_107_6.x + var_107_6.w and arg_107_1 >= var_107_6.y and arg_107_1 <= var_107_6.y + var_107_6.h
					end
				end

				if var_107_7 then
					if var_0_129(var_107_0.selectedStage, var_107_5) then
						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						local var_107_9 = var_107_0.selectedStage or 1
						local var_107_10 = 1

						if var_107_5 == 1 then
							var_107_10 = 1
						elseif var_107_5 == 2 then
							var_107_10 = 2
						elseif var_107_5 == 3 then
							var_107_10 = 3
						end

						if var_107_0.newStages then
							var_107_0.newStages[var_107_9] = nil
						end

						return {
							type = "play",
							stage = var_107_9,
							difficulty = var_107_10
						}
					else
						var_107_0.diffShakeFeedbacks = var_107_0.diffShakeFeedbacks or {}
						var_107_0.diffShakeFeedbacks[var_107_5] = 0.28

						if var_0_29 then
							if var_0_29:isPlaying() then
								var_0_29:stop()
							end

							if not Controller or not Controller.muteHover or not Controller.muteHover() then
								var_0_29:play()
							end
						end
					end
				end
			end

			if var_107_0.back and var_107_0.back.pressed then
				var_107_0.back.pressed = false

				if var_107_0.back.rect then
					local var_107_11 = var_107_0.back.rect

					if arg_107_0 >= var_107_11.x and arg_107_0 <= var_107_11.x + var_107_11.w and arg_107_1 >= var_107_11.y and arg_107_1 <= var_107_11.y + var_107_11.h then
						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						if var_107_0.diffActive then
							if var_0_37[math.floor(tonumber(var_107_0.selectedStage or 0) or 0)] then
								var_0_93(var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or nil)
							end

							var_107_0.diffActive = false
							var_107_0.diffTargetY = var_107_1
							var_107_0.diffClosing = true
						else
							var_0_116(var_0_5)
						end

						return nil
					end
				end
			end

			if var_107_0.pagePressed then
				local var_107_12 = var_107_0.pagePressed

				var_107_0.pagePressed = nil

				local var_107_13 = var_107_0.pageArrow and var_107_0.pageArrow.rect

				if not var_107_0.diffActive and var_107_13 and arg_107_0 >= var_107_13.x and arg_107_0 <= var_107_13.x + var_107_13.w and arg_107_1 >= var_107_13.y and arg_107_1 <= var_107_13.y + var_107_13.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					var_0_111(var_107_0, var_107_12 == 1 and 2 or 1)

					return nil
				end
			end

			if var_107_0.pressedIndex and var_107_0.stageRects and var_107_0.stageRects[var_107_0.pressedIndex] and (var_107_0.pageSlideT or 0) <= 0 then
				local var_107_14 = var_107_0.pressedIndex
				local var_107_15 = var_107_0.stageRects[var_107_14]
				local var_107_16 = var_107_15.stageKey or var_0_103(var_107_0, var_107_14)

				var_107_0.pressedIndex = nil

				local var_107_17 = var_107_14 == 1 and var_0_43 or var_0_44
				local var_107_18 = false

				if var_107_17 then
					var_107_18 = var_0_97(var_107_17, arg_107_0, arg_107_1, var_107_15.x, var_107_15.y, var_107_15.s or 1, 3, 0.05)

					if not var_107_18 and var_107_15.stageArtData and var_107_15.stageArtX and var_107_15.stageArtY then
						var_107_18 = var_0_97(var_107_15.stageArtData, arg_107_0, arg_107_1, var_107_15.stageArtX, var_107_15.stageArtY, var_107_15.s or 1, 3, 0.05)
					end
				else
					var_107_18 = arg_107_0 >= var_107_15.x and arg_107_0 <= var_107_15.x + var_107_15.w and arg_107_1 >= var_107_15.y and arg_107_1 <= var_107_15.y + var_107_15.h
				end

				if var_107_18 then
					if var_0_101(var_107_16) then
						var_107_0.clickFeedbacks = var_107_0.clickFeedbacks or {}
						var_107_0.clickFeedbacks[var_107_14] = 0.15

						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						var_107_0.selectedStage = var_107_16
						var_107_0.targetY = -var_107_1
						var_107_0.diffActive = true
						var_107_0.diffTargetY = 0
						var_107_0.diffClosing = false
						var_107_0.diffTimers = {
							0,
							0,
							0
						}
						var_107_0.diffAppearProg = {
							0,
							0,
							0
						}
						var_107_0.saveSlotAppearTimer = 0
						var_107_0.saveSlotAppearProg = 0

						var_0_92(var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or nil)
					else
						var_107_0.shakeFeedbacks = var_107_0.shakeFeedbacks or {}
						var_107_0.shakeFeedbacks[var_107_14] = 0.28

						if var_0_29 then
							if var_0_29:isPlaying() then
								var_0_29:stop()
							end

							if not Controller or not Controller.muteHover or not Controller.muteHover() then
								var_0_29:play()
							end
						end
					end
				end
			end

			if not var_107_0.diffActive and var_107_0.stageRects and var_107_0.hoveredIndex and var_107_0.stageRects[var_107_0.hoveredIndex] and (var_107_0.pageSlideT or 0) <= 0 then
				local var_107_19 = var_107_0.hoveredIndex
				local var_107_20 = var_107_0.stageRects[var_107_19]
				local var_107_21 = var_107_20.stageKey or var_0_103(var_107_0, var_107_19)
				local var_107_22 = false
				local var_107_23 = var_107_19 == 1 and var_0_43 or var_0_44

				if var_107_23 then
					var_107_22 = var_0_97(var_107_23, arg_107_0, arg_107_1, var_107_20.x, var_107_20.y, var_107_20.s or 1, 3, 0.05)
				end

				if not var_107_22 and var_107_20.stageArtData and var_107_20.stageArtX and var_107_20.stageArtY then
					var_107_22 = var_0_97(var_107_20.stageArtData, arg_107_0, arg_107_1, var_107_20.stageArtX, var_107_20.stageArtY, var_107_20.s or 1, 3, 0.05)
				end

				if var_107_22 then
					if var_0_101(var_107_21) then
						if var_0_30 then
							if var_0_30:isPlaying() then
								var_0_30:stop()
							end

							var_0_30:play()
						end

						var_107_0.selectedStage = var_107_21
						var_107_0.targetY = -var_107_1
						var_107_0.diffActive = true
						var_107_0.diffTargetY = 0
						var_107_0.diffClosing = false
						var_107_0.diffTimers = {
							0,
							0,
							0
						}
						var_107_0.diffAppearProg = {
							0,
							0,
							0
						}
						var_107_0.saveSlotAppearTimer = 0
						var_107_0.saveSlotAppearProg = 0

						var_0_92(var_0_5 and var_0_5.stageSelectOverlay and var_0_5.stageSelectOverlay.difficultyTitle or nil)
					else
						var_107_0.shakeFeedbacks = var_107_0.shakeFeedbacks or {}
						var_107_0.shakeFeedbacks[var_107_19] = 0.28

						if var_0_29 then
							if var_0_29:isPlaying() then
								var_0_29:stop()
							end

							if not Controller or not Controller.muteHover or not Controller.muteHover() then
								var_0_29:play()
							end
						end
					end
				end
			end

			var_107_0.pressedIndex = nil

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

			for iter_107_0, iter_107_1 in ipairs(var_0_4.buttons) do
				iter_107_1.pressed = false
			end

			return nil
		end

		if var_0_4.collectionState and var_0_4.collectionState.pressed then
			var_0_4.collectionState.pressed = false

			if var_0_4.collectionRect then
				local var_107_24 = var_0_4.collectionRect

				if arg_107_0 >= var_107_24.x and arg_107_0 <= var_107_24.x + var_107_24.w and arg_107_1 >= var_107_24.y and arg_107_1 <= var_107_24.y + var_107_24.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					if var_0_4.collectionLocked then
						var_0_4.collectionShake = {
							amp = 2.5,
							t = 0,
							freq = 58,
							dur = 0.28
						}
					else
						var_0_120 = "collection"
						var_0_121 = var_0_122
						var_0_4.inputCooldown = var_0_124
					end

					return nil
				end
			end
		end

		if var_0_4.achievementState and var_0_4.achievementState.pressed then
			var_0_4.achievementState.pressed = false

			if var_0_4.achievementRect then
				local var_107_25 = var_0_4.achievementRect

				if arg_107_0 >= var_107_25.x and arg_107_0 <= var_107_25.x + var_107_25.w and arg_107_1 >= var_107_25.y and arg_107_1 <= var_107_25.y + var_107_25.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					if var_0_4.achievementLocked then
						var_0_4.achievementShake = {
							amp = 2.5,
							t = 0,
							freq = 58,
							dur = 0.28
						}
					else
						var_0_120 = "achievement"
						var_0_121 = var_0_122
						var_0_4.inputCooldown = var_0_124
					end

					return nil
				end
			end
		end

		if var_0_4.upgradeState and var_0_4.upgradeState.pressed then
			var_0_4.upgradeState.pressed = false

			if var_0_4.upgradeRect then
				local var_107_26 = var_0_4.upgradeRect

				if arg_107_0 >= var_107_26.x and arg_107_0 <= var_107_26.x + var_107_26.w and arg_107_1 >= var_107_26.y and arg_107_1 <= var_107_26.y + var_107_26.h then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					var_0_120 = "upgrade"
					var_0_121 = var_0_122
					var_0_4.inputCooldown = var_0_124

					return nil
				end
			end
		end

		for iter_107_2, iter_107_3 in ipairs(var_0_4.buttons) do
			if iter_107_3.pressed then
				iter_107_3.pressed = false

				if iter_107_3.rect and var_0_76(var_0_4.buttons, arg_107_0, arg_107_1) == iter_107_2 then
					if var_0_30 then
						if var_0_30:isPlaying() then
							var_0_30:stop()
						end

						var_0_30:play()
					end

					if iter_107_3.id == "exit" then
						var_0_120 = "open_exit_modal"
					else
						var_0_120 = iter_107_3.id
					end

					var_0_121 = var_0_122
					var_0_4.inputCooldown = var_0_124

					return nil
				end
			end
		end
	end

	return nil
end

return var_0_4
