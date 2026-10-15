local var_0_0 = {}
local var_0_1 = require("src.ui.mainmenu")
local var_0_2 = require("src.data.constants")
local var_0_3 = require("src.data.language")
local var_0_4 = require("src.data.font_resolver")
local var_0_5 = require("src.ui.config")
local var_0_6 = require("src.ui.widgets").count_impact
local var_0_7 = {}
local var_0_8 = {
	slotrare2 = "src/sprites/icons/menu/upgrade/21rareresearch2.png",
	slotrare = "src/sprites/icons/menu/upgrade/21rareresearch1.png",
	slotrare3 = "src/sprites/icons/menu/upgrade/21rareresearch3.png",
	slotadvanced3 = "src/sprites/icons/menu/upgrade/20advancedresearch3.png",
	slotlegend = "src/sprites/icons/menu/upgrade/35legendresearch1.png",
	slotadvanced2 = "src/sprites/icons/menu/upgrade/19advancedresearch2.png",
	slotlegend2 = "src/sprites/icons/menu/upgrade/35legendresearch2.png",
	slotadvanced = "src/sprites/icons/menu/upgrade/04advancedresearch1.png",
	slotlegend3 = "src/sprites/icons/menu/upgrade/35legendresearch3.png",
	slotodds = "src/sprites/icons/menu/upgrade/01slotodds.png",
	slotprism = "src/sprites/icons/menu/upgrade/36prismresearch1.png",
	factionsynergy = "src/sprites/icons/menu/upgrade/34factionsynergy.png",
	slotprism2 = "src/sprites/icons/menu/upgrade/36prismresearch2.png",
	growthbranch = "src/sprites/icons/menu/upgrade/33growthbranch.png",
	slotprism3 = "src/sprites/icons/menu/upgrade/36prismresearch3.png",
	dormantpower = "src/sprites/icons/menu/upgrade/32dormantpower.png",
	fatestone = "src/sprites/icons/menu/upgrade/36fatestone.png",
	interest = "src/sprites/icons/menu/upgrade/07InterestBonus.png",
	stonetwin = "src/sprites/icons/menu/upgrade/37stonetwin.png",
	preptime = "src/sprites/icons/menu/upgrade/06prephourglass.png",
	stonebreeze = "src/sprites/icons/menu/upgrade/38stonebreeze.png",
	slotnudge = "src/sprites/icons/menu/upgrade/05nudge.png",
	stoneomen = "src/sprites/icons/menu/upgrade/39stoneomen.png",
	startgold2 = "src/sprites/icons/menu/upgrade/17startgold2.png",
	stonespecial = "src/sprites/icons/menu/upgrade/40stonespecial.png",
	comebackgold = "src/sprites/icons/menu/upgrade/16comebackgold.png",
	stonemastery = "src/sprites/icons/menu/upgrade/41stonemastery.png",
	gateheal = "src/sprites/icons/menu/upgrade/15regenhp.png",
	stonerift = "src/sprites/icons/menu/upgrade/42stonerift.png",
	comebackspin = "src/sprites/icons/menu/upgrade/14emergencygrant.png",
	stoneconstellation = "src/sprites/icons/menu/upgrade/43stoneconstellation.png",
	startingmerccontract = "src/sprites/icons/menu/upgrade/31merccontract.png",
	stonesanctum = "src/sprites/icons/menu/upgrade/44stonesanctum.png",
	startgold = "src/sprites/icons/menu/upgrade/13startgold.png",
	stonegambit = "src/sprites/icons/menu/upgrade/45stonegambit.png",
	noviceshield = "src/sprites/icons/menu/upgrade/12noviceshield.png",
	preptime2 = "src/sprites/icons/menu/upgrade/08prephourglass2.png",
	maxhp2 = "src/sprites/icons/menu/upgrade/18heartII.png",
	preptimerdisabled = "src/sprites/icons/menu/upgrade/09prephourglass3.png",
	maxhp = "src/sprites/icons/menu/upgrade/02heart.png",
	maxunit3 = "src/sprites/icons/menu/upgrade/11maxunit3.png",
	maxunit2 = "src/sprites/icons/menu/upgrade/10maxunit2.png",
	maxunit = "src/sprites/icons/menu/upgrade/03maxunit.png",
	shoppin = "src/sprites/icons/menu/upgrade/28shoppin.png",
	itemresearch = "src/sprites/icons/menu/upgrade/27debuffitemresearch.png",
	iteminventory2 = "src/sprites/icons/menu/upgrade/26iteminventory2.png",
	itemrefund = "src/sprites/icons/menu/upgrade/25refundbook.png",
	iteminventory = "src/sprites/icons/menu/upgrade/24iteminventory.png",
	shopreroll = "src/sprites/icons/menu/upgrade/23shopreroll.png",
	firstcoreuncommon = "src/sprites/icons/menu/upgrade/30corechoice.png",
	firstcorespin = "src/sprites/icons/menu/upgrade/29firstcorespin.png",
	corereroll = "src/sprites/icons/menu/upgrade/22corereroll.png"
}
local var_0_9
local var_0_10
local var_0_11
local var_0_12
local var_0_13
local var_0_14
local var_0_15
local var_0_16
local var_0_17
local var_0_18
local var_0_19
local var_0_20
local var_0_21
local var_0_22
local var_0_23
local var_0_24
local var_0_25 = {
	scale = 0.9,
	pressed = false
}
local var_0_26
local var_0_27
local var_0_28 = 0
local var_0_29 = "src/data/font/Chinese/arkpixel10.ttf"
local var_0_30 = 10
local var_0_31 = "normal"
local var_0_32
local var_0_33 = 0
local var_0_34 = {}

local function var_0_35()
	return (_G.currentGameLang or "ko") == "zh"
end

local function var_0_36()
	return _G.currentGameLang or "ko"
end

local function var_0_37(arg_3_0)
	local var_3_0 = rawget(_G, "getChineseLatinFallbackFont")

	if type(var_3_0) == "function" then
		local var_3_1 = var_3_0(arg_3_0)

		if var_3_1 then
			return var_3_1
		end
	end

	return arg_3_0
end

local function var_0_38(arg_4_0, arg_4_1)
	if var_0_35() then
		arg_4_0 = var_0_29
		arg_4_1 = arg_4_1 or var_0_30
	end

	if type(arg_4_0) ~= "string" or arg_4_0 == "" or not love.filesystem.getInfo(arg_4_0) then
		return nil
	end

	local var_4_0
	local var_4_1

	if arg_4_0:lower():match("%.ttf$") or arg_4_0:lower():match("%.otf$") then
		var_4_0, var_4_1 = pcall(love.graphics.newFont, arg_4_0, arg_4_1 or var_0_30, var_0_31)
	else
		var_4_0, var_4_1 = pcall(love.graphics.newFont, arg_4_0)
	end

	if var_4_0 and var_4_1 then
		var_4_1:setFilter("nearest", "nearest")
		var_0_4.attachFallbacks(var_4_1, arg_4_0)

		if var_0_35() and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_4_1)
		end

		return var_4_1
	end

	return nil
end

local function var_0_39(arg_5_0, arg_5_1)
	if type(arg_5_0) ~= "string" or arg_5_0 == "" or not love.filesystem.getInfo(arg_5_0) then
		return nil
	end

	local var_5_0
	local var_5_1
	local var_5_2 = tostring(arg_5_0):lower()

	if var_5_2:match("%.ttf$") or var_5_2:match("%.otf$") then
		var_5_0, var_5_1 = pcall(love.graphics.newFont, arg_5_0, arg_5_1 or var_0_30, var_0_31)
	else
		var_5_0, var_5_1 = pcall(love.graphics.newFont, arg_5_0)
	end

	if var_5_0 and var_5_1 then
		var_5_1:setFilter("nearest", "nearest")

		return var_5_1
	end

	return nil
end

local function var_0_40(arg_6_0)
	local var_6_0 = var_0_36()
	local var_6_1 = var_0_35() and var_0_29 or var_0_4.resolve(arg_6_0, var_6_0)

	if type(var_6_1) ~= "string" or var_6_1 == "" then
		var_6_1 = arg_6_0
	end

	return var_6_1, var_6_0
end

local function var_0_41(arg_7_0, arg_7_1, arg_7_2)
	local var_7_0, var_7_1 = var_0_40(arg_7_2)
	local var_7_2 = tostring(var_7_1) .. "|" .. tostring(var_7_0)

	if arg_7_1 == var_7_2 then
		return arg_7_0, arg_7_1
	end

	local var_7_3 = var_0_38(var_7_0, var_0_35() and var_0_30 or nil)

	if var_7_3 then
		if _G.maybeRegisterSLineTtfTextEffect then
			_G.maybeRegisterSLineTtfTextEffect(var_7_3, arg_7_2, var_7_0, var_7_1)
		end

		if var_0_35() and _G.registerChineseLatinFallbackFont then
			local var_7_4 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_7_2) or arg_7_2

			_G.registerChineseLatinFallbackFont(var_7_3, var_0_39(var_7_4, var_0_30))
		end

		return var_7_3, var_7_2
	end

	return nil, var_7_2
end

function var_0_0.getOriginiteFont()
	var_0_14, var_0_15 = var_0_41(var_0_14, var_0_15, "src/data/font/Galmuri9WSLine.fnt")

	return var_0_14
end

function var_0_0.reloadLanguageFonts()
	var_0_14 = nil
	var_0_15 = nil
	var_0_16 = nil
	var_0_17 = nil
	var_0_19 = nil
	var_0_20 = nil
end

local var_0_42
local var_0_43 = "    extern number time;\n    extern number scale;\n\n    // Precision-safe scalar hash. The old sin(dot(...)) hash multiplied a\n    // large trigonometric result by 43758, which becomes blocky on fragment\n    // hardware with reduced float precision. This version keeps coordinates\n    // bounded and uses only small fract/dot operations.\n    float hash12(vec2 p) {\n        p = mod(p, 71.0);\n        vec3 p3 = fract(vec3(p.x, p.y, p.x) * 0.1031);\n        p3 += dot(p3, vec3(p3.y, p3.z, p3.x) + 33.33);\n        return fract((p3.x + p3.y) * p3.z);\n    }\n\n    float valueNoise(vec2 st) {\n        vec2 i = floor(st);\n        vec2 f = fract(st);\n        float a = hash12(i);\n        float b = hash12(i + vec2(1.0, 0.0));\n        float c = hash12(i + vec2(0.0, 1.0));\n        float d = hash12(i + vec2(1.0, 1.0));\n        vec2 u = f * f * (3.0 - 2.0 * f);\n        return mix(a, b, u.x)\n            + (c - a) * u.y * (1.0 - u.x)\n            + (d - b) * u.x * u.y;\n    }\n\n    float fbm(vec2 st) {\n        float value = 0.0;\n        float amplitude = 0.5;\n        for (int i = 0; i < 4; i++) {\n            value += amplitude * valueNoise(st);\n            st *= 2.0;\n            amplitude *= 0.5;\n        }\n        return value;\n    }\n\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        // Preserve the original three-pixel cloudy/pixelated appearance.\n        float pixelSize = max(1.0, 3.0 * scale);\n        vec2 samplePx = floor(screen_coords / pixelSize);\n        vec2 uv = samplePx / 200.0;\n\n        // A cosine loop follows nearly the same slow drift as the old linear\n        // timer for its first half, then returns smoothly without ever sending\n        // large time values to the shader.\n        const float TAU = 6.28318530718;\n        float phase = time * (TAU / 100.0);\n        float drift = 0.5 - 0.5 * cos(phase);\n        uv += vec2(drift, drift * 0.5);\n        float n = fbm(uv);\n        float n2 = fbm(uv + vec2(n * 2.0, n * 0.5) - vec2(drift * 2.5));\n        float finalNoise = mix(n, n2, 0.6);\n\n        // Original upgrade-screen palette.\n\n        vec3 colDeep = vec3(0.10, 0.08, 0.14); // Darker than #2e222f (Abyss)\n        vec3 colBase = vec3(0.18, 0.13, 0.18); // #2e222f (UI Dark)\n        vec3 colMid  = vec3(0.24, 0.21, 0.28); // #3e3546 (UI Light)\n        vec3 colHigh = vec3(0.35, 0.25, 0.35); // Faint Highlight\n\n        vec3 col = colDeep;\n\n        // Smooth mixing based on noise height.\n        col = mix(col, colBase, smoothstep(0.2, 0.5, finalNoise));\n        col = mix(col, colMid,  smoothstep(0.5, 0.7, finalNoise));\n        col = mix(col, colHigh, smoothstep(0.7, 1.0, finalNoise));\n\n        // Darken edges to focus on the upgrade tree.\n        vec2 vUV = screen_coords / love_ScreenSize.xy;\n        float vignette = 1.0 - smoothstep(0.5, 1.5, length(vUV - 0.5) * 1.5);\n        col *= vignette;\n\n        // A one-LSB interleaved dither prevents visible color bands on 8/10-bit\n        // output without introducing another grid into the cloud field.\n        float dither = fract(52.9829189\n            * fract(dot(screen_coords, vec2(0.06711056, 0.00583715)))) - 0.5;\n        col += vec3(dither * (1.0 / 255.0));\n\n        return vec4(clamp(col, vec3(0.0), vec3(1.0)), 1.0) * color;\n    }\n"
local var_0_44 = 0
local var_0_45 = 0
local var_0_46 = 1
local var_0_47 = {
	0.6,
	0.8,
	1,
	1.2
}
local var_0_48 = 1
local var_0_49 = 0
local var_0_50 = 0
local var_0_51 = false
local var_0_52 = 1280
local var_0_53 = 720
local var_0_54 = false
local var_0_55 = 0
local var_0_56 = 0
local var_0_57 = 0
local var_0_58 = 0
local var_0_59 = 0
local var_0_60 = 0
local var_0_61 = 680

local function var_0_62(arg_10_0, arg_10_1, arg_10_2)
	local var_10_0 = math.max(0, arg_10_2 - 1) * var_0_61 * 0.5
	local var_10_1 = 50 + var_10_0
	local var_10_2 = 190 + var_10_0

	return math.max(-var_10_1, math.min(var_10_1, arg_10_0)), math.max(-(var_10_2 + 80), math.min(var_10_2, arg_10_1))
end

local function var_0_63()
	var_0_44, var_0_45 = var_0_62(var_0_44, var_0_45, var_0_46)
end

local var_0_64 = false
local var_0_65 = {}
local var_0_66 = {}

local function var_0_67(arg_12_0)
	if not var_0_66[arg_12_0] then
		var_0_66[arg_12_0] = {
			pulseT = 0,
			disappearTimer = 0,
			isDisappearing = false,
			appearTimer = 0,
			isAppearing = false,
			revealed = false,
			unlockLineProgress = 0,
			popTimer = 0,
			isPopping = false,
			flashT = 0,
			pressed = false,
			shakeAmp = 0,
			shakeDur = 0,
			shakeT = 0,
			pressTimer = 0,
			scaleY = 1,
			scaleX = 1,
			shineT = love.math.random() * -2,
			energyParticles = {}
		}
	end

	return var_0_66[arg_12_0]
end

local function var_0_68(arg_13_0)
	if not arg_13_0 then
		return
	end

	arg_13_0.isDisappearing = true
	arg_13_0.disappearTimer = 0
	arg_13_0.isAppearing = false
end

var_0_67("slotodds").revealed = true
var_0_67("maxhp").revealed = false

var_0_67("maxhp2")
var_0_67("noviceshield")
var_0_67("startgold")
var_0_67("startingmerccontract")
var_0_67("comebackspin")
var_0_67("gateheal")
var_0_67("comebackgold")
var_0_67("startgold2")
var_0_67("maxunit")
var_0_67("maxunit2")
var_0_67("maxunit3")
var_0_67("slotnudge")
var_0_67("slotadvanced")
var_0_67("slotadvanced2")
var_0_67("slotadvanced3")
var_0_67("slotrare")
var_0_67("corereroll")
var_0_67("firstcorespin")
var_0_67("firstcoreuncommon")
var_0_67("shopreroll")
var_0_67("iteminventory")
var_0_67("itemrefund")
var_0_67("iteminventory2")
var_0_67("itemresearch")
var_0_67("shoppin")
var_0_67("preptime")
var_0_67("interest")
var_0_67("dormantpower")
var_0_67("growthbranch")
var_0_67("factionsynergy")
var_0_67("preptime2")
var_0_67("preptimerdisabled")

local var_0_69
local var_0_70

local function var_0_71()
	if var_0_26 and var_0_27 then
		return
	end

	local var_14_0 = love.timer.getTime()

	if var_14_0 < var_0_28 then
		return
	end

	var_0_28 = var_14_0 + 3

	if not var_0_26 then
		local var_14_1 = loadedAssets and loadedAssets.audio and loadedAssets.audio.buttonHover

		if not var_14_1 then
			local var_14_2 = "src/audio/ui/buttonhover1.wav"
			local var_14_3, var_14_4 = pcall(love.audio.newSource, var_14_2, "static")

			if not var_14_3 then
				local var_14_5 = "audio/ui/buttonhover1.wav"

				var_14_3, var_14_4 = pcall(love.audio.newSource, var_14_5, "static")
			end

			if var_14_3 and var_14_4 then
				var_14_1 = var_14_4
			end
		end

		if var_14_1 then
			local var_14_6 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

			if var_14_1.setVolume then
				var_14_1:setVolume(var_14_6 * 1.6)
			end

			var_0_26 = var_14_1
		end
	end

	if not var_0_27 then
		local var_14_7 = loadedAssets and loadedAssets.audio and loadedAssets.audio.buttonClick

		if not var_14_7 then
			local var_14_8 = "src/audio/ui/buttonclick1.wav"
			local var_14_9, var_14_10 = pcall(love.audio.newSource, var_14_8, "static")

			if not var_14_9 then
				local var_14_11 = "audio/ui/buttonclick1.wav"

				var_14_9, var_14_10 = pcall(love.audio.newSource, var_14_11, "static")
			end

			if var_14_9 and var_14_10 then
				var_14_7 = var_14_10
			end
		end

		if var_14_7 then
			local var_14_12 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

			if var_14_7.setVolume then
				var_14_7:setVolume(var_14_12 * 1.6)
			end

			var_0_27 = var_14_7
		end
	end
end

local var_0_72
local var_0_73 = {}
local var_0_74 = {}
local var_0_75 = 100
local var_0_76 = 2000

for iter_0_0 = 1, var_0_75 do
	table.insert(var_0_74, {
		x = love.math.random(-var_0_76 / 2, var_0_76 / 2),
		y = love.math.random(-var_0_76 / 2, var_0_76 / 2),
		size = love.math.random(1, 2),
		speedX = love.math.random(-5, 5),
		speedY = love.math.random(-5, 5),
		alpha = love.math.random() * 0.5 + 0.2,
		t = love.math.random() * 100,
		blinkSpeed = love.math.random() * 2 + 1
	})
end

local var_0_77 = {}
local var_0_78 = 0
local var_0_79 = 2

function var_0_0.resetCamera()
	var_0_44 = 0
	var_0_45 = 0
	var_0_46 = 1
	var_0_49 = 0
	var_0_50 = 0
	var_0_48 = 1
	var_0_51 = false
	var_0_54 = false
	var_0_55, var_0_56 = 0, 0

	for iter_15_0, iter_15_1 in pairs(var_0_66) do
		iter_15_1.scaleX = 1
		iter_15_1.scaleY = 1
		iter_15_1.pressed = false
		iter_15_1.shakeT = 0
	end

	var_0_69 = nil

	if var_0_25 then
		var_0_25.pressed = false
		var_0_25.scale = 0.9
	end

	for iter_15_2, iter_15_3 in ipairs(var_0_74) do
		iter_15_3.x = love.math.random(-var_0_76 / 2, var_0_76 / 2)
		iter_15_3.y = love.math.random(-var_0_76 / 2, var_0_76 / 2)
	end
end

local function var_0_80(arg_16_0)
	arg_16_0 = arg_16_0:gsub("#", "")

	if arg_16_0 == "6FAACC" then
		arg_16_0 = "73A1B8"
	elseif arg_16_0 == "5FAF6F" then
		arg_16_0 = "69A873"
	elseif arg_16_0 == "A84F5A" then
		arg_16_0 = "A65B67"
	end

	local var_16_0 = tonumber(arg_16_0:sub(1, 2), 16) / 255
	local var_16_1 = tonumber(arg_16_0:sub(3, 4), 16) / 255
	local var_16_2 = tonumber(arg_16_0:sub(5, 6), 16) / 255

	return var_16_0, var_16_1, var_16_2, 1
end

local function var_0_81(arg_17_0)
	return math.floor(arg_17_0 or 0)
end

local var_0_82 = {
	boxFill = {
		0,
		0,
		0,
		0.8
	},
	label = (function()
		local var_18_0, var_18_1, var_18_2 = var_0_80("#999999")

		return {
			var_18_0,
			var_18_1,
			var_18_2,
			1
		}
	end)(),
	value = {
		1,
		1,
		1,
		1
	},
	gaugeBg = (function()
		local var_19_0, var_19_1, var_19_2 = var_0_80("#2A2A2A")

		return {
			var_19_0,
			var_19_1,
			var_19_2,
			1
		}
	end)(),
	gaugeFill = (function()
		local var_20_0, var_20_1, var_20_2 = var_0_80("#4FC3F7")

		return {
			var_20_0,
			var_20_1,
			var_20_2,
			1
		}
	end)(),
	hint = (function()
		local var_21_0, var_21_1, var_21_2 = var_0_80("#EDE6F3")

		return {
			var_21_0,
			var_21_1,
			var_21_2,
			1
		}
	end)(),
	separator = {
		1,
		1,
		1,
		0.2
	}
}
local var_0_83 = 3

local function var_0_84()
	return 1
end

local function var_0_85(arg_23_0, arg_23_1, arg_23_2, arg_23_3, arg_23_4, arg_23_5)
	local var_23_0 = var_0_84()
	local var_23_1 = math.max(1, math.floor((var_0_83 or 3) / var_23_0 + 0.5))
	local var_23_2 = math.min(math.floor(arg_23_2 / (2 * var_23_0)), math.floor(arg_23_3 / (2 * var_23_0)))

	if var_23_2 < 1 then
		var_23_2 = 1
	end

	if var_23_2 < var_23_1 then
		var_23_1 = var_23_2
	end

	local var_23_3 = var_23_1 * var_23_0

	if arg_23_4 then
		love.graphics.setColor(arg_23_4[1], arg_23_4[2], arg_23_4[3], arg_23_4[4] or 1)
	end

	if arg_23_3 - 2 * var_23_3 > 0 then
		love.graphics.rectangle("fill", var_0_81(arg_23_0 + var_23_3), var_0_81(arg_23_1 + var_23_3), var_0_81(arg_23_2 - 2 * var_23_3), var_0_81(arg_23_3 - 2 * var_23_3))
	end

	if arg_23_3 - 2 * var_23_3 > 0 then
		love.graphics.rectangle("fill", var_0_81(arg_23_0), var_0_81(arg_23_1 + var_23_3), var_0_81(var_23_3), var_0_81(arg_23_3 - 2 * var_23_3))
		love.graphics.rectangle("fill", var_0_81(arg_23_0 + arg_23_2 - var_23_3), var_0_81(arg_23_1 + var_23_3), var_0_81(var_23_3), var_0_81(arg_23_3 - 2 * var_23_3))
	end

	for iter_23_0 = 0, var_23_1 - 1 do
		local var_23_4 = var_23_3 - (iter_23_0 + 1) * var_23_0

		if var_23_4 < 0 then
			var_23_4 = 0
		end

		local var_23_5 = arg_23_2 - 2 * var_23_4

		if var_23_5 > 0 then
			love.graphics.rectangle("fill", var_0_81(arg_23_0 + var_23_4), var_0_81(arg_23_1 + iter_23_0 * var_23_0), var_0_81(var_23_5), var_0_81(var_23_0))
			love.graphics.rectangle("fill", var_0_81(arg_23_0 + var_23_4), var_0_81(arg_23_1 + arg_23_3 - (iter_23_0 + 1) * var_23_0), var_0_81(var_23_5), var_0_81(var_23_0))
		end
	end

	if arg_23_5 then
		love.graphics.setColor(arg_23_5[1], arg_23_5[2], arg_23_5[3], arg_23_5[4] or 1)

		local var_23_6 = var_23_0

		for iter_23_1 = 0, var_23_1 - 1 do
			local var_23_7 = var_23_3 - (iter_23_1 + 1) * var_23_0

			if var_23_7 < 0 then
				var_23_7 = 0
			end

			if iter_23_1 == 0 then
				local var_23_8 = arg_23_2 - 2 * var_23_7

				if var_23_8 > 0 then
					love.graphics.rectangle("fill", var_0_81(arg_23_0 + var_23_7), var_0_81(arg_23_1 + iter_23_1 * var_23_0), var_0_81(var_23_8), var_0_81(var_23_6))
					love.graphics.rectangle("fill", var_0_81(arg_23_0 + var_23_7), var_0_81(arg_23_1 + arg_23_3 - (iter_23_1 + 1) * var_23_0), var_0_81(var_23_8), var_0_81(var_23_6))
				end
			else
				love.graphics.rectangle("fill", var_0_81(arg_23_0 + var_23_7), var_0_81(arg_23_1 + iter_23_1 * var_23_0), var_0_81(var_23_6), var_0_81(var_23_6))
				love.graphics.rectangle("fill", var_0_81(arg_23_0 + arg_23_2 - var_23_7 - var_23_6), var_0_81(arg_23_1 + iter_23_1 * var_23_0), var_0_81(var_23_6), var_0_81(var_23_6))
				love.graphics.rectangle("fill", var_0_81(arg_23_0 + var_23_7), var_0_81(arg_23_1 + arg_23_3 - (iter_23_1 + 1) * var_23_0), var_0_81(var_23_6), var_0_81(var_23_6))
				love.graphics.rectangle("fill", var_0_81(arg_23_0 + arg_23_2 - var_23_7 - var_23_6), var_0_81(arg_23_1 + arg_23_3 - (iter_23_1 + 1) * var_23_0), var_0_81(var_23_6), var_0_81(var_23_6))
			end
		end

		local var_23_9 = arg_23_3 - 2 * var_23_3

		if var_23_9 > 0 then
			love.graphics.rectangle("fill", var_0_81(arg_23_0), var_0_81(arg_23_1 + var_23_3), var_0_81(var_23_6), var_0_81(var_23_9))
			love.graphics.rectangle("fill", var_0_81(arg_23_0 + arg_23_2 - var_23_6), var_0_81(arg_23_1 + var_23_3), var_0_81(var_23_6), var_0_81(var_23_9))
		end
	end
end

local var_0_86
local var_0_87 = {
	maxhp = {
		nameKey = "upgrade_maxhp_name",
		cost = 1,
		nodeId = "A01",
		stat = "5 -> 6",
		descKey = "upgrade_maxhp_desc"
	},
	maxhp2 = {
		nameKey = "upgrade_maxhp2_name",
		descKey = "upgrade_maxhp2_desc",
		nodeId = "A11",
		cost = 22,
		stat = "6 -> 7",
		statKey = "upgrade_maxhp2_stat"
	},
	noviceshield = {
		nameKey = "upgrade_noviceshield_name",
		descKey = "upgrade_noviceshield_desc",
		nodeId = "A03",
		cost = 4,
		stat = "First life loss 0 -> 1",
		statKey = "upgrade_noviceshield_stat"
	},
	startgold = {
		nameKey = "upgrade_startgold_name",
		descKey = "upgrade_startgold_desc",
		nodeId = "A02",
		cost = 2,
		stat = "Starting {gold.png} 450 -> 500",
		statKey = "upgrade_startgold_stat"
	},
	startingmerccontract = {
		nameKey = "upgrade_startingmerccontract_name",
		cost = 12,
		nodeId = "A07",
		stat = "startingmerccontract 0 -> 1",
		unlockCoreKey = "MercContract",
		descKey = "upgrade_startingmerccontract_desc"
	},
	comebackspin = {
		nameKey = "upgrade_comebackspin_name",
		descKey = "upgrade_comebackspin_desc",
		nodeId = "A06",
		cost = 20,
		stat = "First spin guaranteed win",
		statKey = "upgrade_comebackspin_stat"
	},
	gateheal = {
		nameKey = "upgrade_gateheal_name",
		descKey = "upgrade_gateheal_desc",
		nodeId = "A09",
		cost = 48,
		stat = "Life recovery",
		statKey = "upgrade_gateheal_stat"
	},
	comebackgold = {
		nameKey = "upgrade_comebackgold_name",
		descKey = "upgrade_comebackgold_desc",
		nodeId = "A05",
		cost = 9,
		stat = "After defeat {gold.png} 0 -> 100",
		statKey = "upgrade_comebackgold_stat"
	},
	startgold2 = {
		nameKey = "upgrade_startgold2_name",
		descKey = "upgrade_startgold2_desc",
		nodeId = "A04",
		cost = 7,
		stat = "Starting {gold.png} 500 -> 550",
		statKey = "upgrade_startgold2_stat"
	},
	slotnudge = {
		nameKey = "upgrade_slotnudge_name",
		descKey = "upgrade_slotnudge_desc",
		nodeId = "B02",
		cost = 3,
		stat = "Nudge spin cost reduction",
		statKey = "upgrade_slotnudge_stat"
	},
	interest = {
		nameKey = "upgrade_interest_name",
		descKey = "upgrade_interest_desc",
		nodeId = "B03",
		cost = 8,
		stat = "Interest 0 -> 50",
		statKey = "upgrade_interest_stat"
	},
	dormantpower = {
		nameKey = "upgrade_dormantpower_name",
		descKey = "upgrade_dormantpower_desc",
		nodeId = "B04",
		cost = 12,
		stat = "awakeningUnlocked 0 -> 1",
		statKey = "upgrade_dormantpower_stat"
	},
	growthbranch = {
		nameKey = "upgrade_growthbranch_name",
		descKey = "upgrade_growthbranch_desc",
		nodeId = "B05",
		cost = 45,
		stat = "promotionTraitChoice 0 -> 1",
		statKey = "upgrade_growthbranch_stat"
	},
	factionsynergy = {
		nameKey = "upgrade_factionsynergy_name",
		descKey = "upgrade_factionsynergy_desc",
		nodeId = "B10",
		cost = 60,
		stat = "factionSynergyUnlocked 0 -> 1",
		statKey = "upgrade_factionsynergy_stat"
	},
	slotodds = {
		nameKey = "upgrade_slotodds_name",
		descKey = "upgrade_slotodds_desc",
		nodeId = "S01",
		cost = 1,
		stat = "Locked -> Unsealed",
		statKey = "upgrade_slotodds_stat"
	},
	slotadvanced = {
		nameKey = "upgrade_slotadvanced_name",
		descKey = "upgrade_slotadvanced_desc",
		nodeId = "R01",
		cost = 4,
		stat = "怨좉툒 0% -> 5%",
		statKey = "upgrade_slotadvanced_stat"
	},
	slotadvanced2 = {
		nameKey = "upgrade_slotadvanced2_name",
		descKey = "upgrade_slotadvanced2_desc",
		nodeId = "R02",
		cost = 12,
		stat = "Advanced 5% -> 10%",
		statKey = "upgrade_slotadvanced2_stat"
	},
	slotadvanced3 = {
		nameKey = "upgrade_slotadvanced3_name",
		descKey = "upgrade_slotadvanced3_desc",
		nodeId = "R03",
		cost = 28,
		stat = "Advanced 10% -> 15%",
		statKey = "upgrade_slotadvanced3_stat"
	},
	slotrare = {
		nameKey = "upgrade_slotrare_name",
		descKey = "upgrade_slotrare_desc",
		nodeId = "R04",
		cost = 70,
		stat = "Rare 0% -> 2%",
		statKey = "upgrade_slotrare_stat"
	},
	corereroll = {
		nameKey = "upgrade_corereroll_name",
		descKey = "upgrade_corereroll_desc",
		nodeId = "K01",
		cost = 10,
		stat = "Free reroll 0 -> 1",
		statKey = "upgrade_corereroll_stat"
	},
	firstcorespin = {
		nameKey = "upgrade_firstcorespin_name",
		descKey = "upgrade_firstcorespin_desc",
		nodeId = "K02",
		cost = 30,
		stat = "First core required spins 0 -> -1",
		statKey = "upgrade_firstcorespin_stat"
	},
	firstcoreuncommon = {
		nameKey = "upgrade_firstcoreuncommon_name",
		descKey = "upgrade_firstcoreuncommon_desc",
		nodeId = "K03",
		cost = 60,
		stat = "Uncommon core appears",
		statKey = "upgrade_firstcoreuncommon_stat"
	},
	shopreroll = {
		nameKey = "upgrade_shopreroll_name",
		descKey = "upgrade_shopreroll_desc",
		nodeId = "M01",
		cost = 6,
		stat = "Shop reroll discount 0 -> 1",
		statKey = "upgrade_shopreroll_stat"
	},
	iteminventory = {
		nameKey = "upgrade_iteminventory_name",
		descKey = "upgrade_iteminventory_desc",
		nodeId = "M03",
		cost = 45,
		stat = "Item slots 6 -> 7",
		statKey = "upgrade_iteminventory_stat"
	},
	itemrefund = {
		nameKey = "upgrade_itemrefund_name",
		descKey = "upgrade_itemrefund_desc",
		nodeId = "M04",
		cost = 35,
		stat = "Refund rate 50% -> 80%",
		statKey = "upgrade_itemrefund_stat"
	},
	iteminventory2 = {
		nameKey = "upgrade_iteminventory2_name",
		descKey = "upgrade_iteminventory2_desc",
		nodeId = "M12",
		cost = 160,
		stat = "Item slots 7 -> 8",
		statKey = "upgrade_iteminventory2_stat"
	},
	itemresearch = {
		nameKey = "upgrade_itemresearch_name",
		descKey = "upgrade_itemresearch_desc",
		nodeId = "M05",
		cost = 24,
		stat = "2 specialist items added",
		statKey = "upgrade_itemresearch_stat"
	},
	shoppin = {
		nameKey = "upgrade_shoppin_name",
		descKey = "upgrade_shoppin_desc",
		nodeId = "M02",
		cost = 30,
		stat = "Pin product",
		statKey = "upgrade_shoppin_stat"
	},
	maxunit = {
		nameKey = "upgrade_maxunit_name",
		cost = 6,
		nodeId = "B01",
		stat = "5 -> 6",
		descKey = "upgrade_maxunit_desc"
	},
	maxunit2 = {
		nameKey = "upgrade_maxunit2_name",
		descKey = "upgrade_maxunit2_desc",
		nodeId = "B06",
		cost = 70,
		stat = "6 -> 7",
		statKey = "upgrade_maxunit2_stat"
	},
	maxunit3 = {
		nameKey = "upgrade_maxunit3_name",
		descKey = "upgrade_maxunit3_desc",
		nodeId = "B09",
		cost = 180,
		stat = "7 -> 8",
		statKey = "upgrade_maxunit3_stat"
	}
}

local function var_0_88(arg_24_0, arg_24_1, arg_24_2, arg_24_3, arg_24_4, arg_24_5, arg_24_6)
	local var_24_0 = {
		nodeId = arg_24_1,
		nameKey = "upgrade_" .. arg_24_0 .. "_name",
		descKey = "upgrade_" .. arg_24_0 .. "_desc",
		statKey = "upgrade_" .. arg_24_0 .. "_stat",
		stat = arg_24_6.stat,
		cost = arg_24_3,
		parent = arg_24_2,
		posX = arg_24_4,
		posY = arg_24_5,
		maxedGrade = arg_24_6.grade,
		maxedValue = arg_24_6.value,
		reqStage = arg_24_6.reqStage,
		reqDiff = arg_24_6.reqDiff,
		reqFull = arg_24_6.reqFull
	}

	var_0_87[arg_24_0] = var_24_0
end

var_0_88("slotrare2", "R05", "slotrare", 100, -160, -240, {
	grade = "rare",
	stat = "Rare 2% -> 3%",
	value = "3%"
})
var_0_88("slotrare3", "R06", "slotrare2", 140, -240, -240, {
	grade = "rare",
	stat = "Rare 3% -> 4.5%",
	value = "4.5%"
})
var_0_88("slotlegend", "R07", "slotrare", 120, -80, -320, {
	grade = "legendary",
	stat = "Legendary 0% -> 0.1%",
	reqFull = true,
	value = "0.1%",
	reqDiff = 2,
	reqStage = 4
})
var_0_88("slotlegend2", "R08", "slotlegend", 170, -160, -320, {
	grade = "legendary",
	stat = "Legendary 0.1% -> 0.2%",
	value = "0.2%"
})
var_0_88("slotlegend3", "R09", "slotlegend2", 230, -240, -320, {
	grade = "legendary",
	stat = "Legendary 0.2% -> 0.4%",
	value = "0.4%"
})
var_0_88("slotprism", "R10", "slotlegend", 200, -80, -400, {
	grade = "prism",
	stat = "Prism 0% -> 0.02%",
	reqFull = true,
	value = "0.02%",
	reqDiff = 2,
	reqStage = 5
})
var_0_88("slotprism2", "R11", "slotprism", 280, -160, -400, {
	grade = "prism",
	stat = "Prism 0.02% -> 0.05%",
	value = "0.05%"
})
var_0_88("slotprism3", "R12", "slotprism2", 380, -240, -400, {
	grade = "prism",
	stat = "Prism 0.05% -> 0.1%",
	value = "0.1%"
})
var_0_88("fatestone", "F01", "slotprism", 60, 0, -400, {
	stat = "Locked -> Unlocked"
})
var_0_88("stonetwin", "F02", "fatestone", 20, 80, -320, {
	stat = "Locked -> Unlocked"
})
var_0_88("stonebreeze", "F03", "stonetwin", 30, 160, -320, {
	stat = "Locked -> Unlocked"
})
var_0_88("stoneomen", "F04", "stonebreeze", 40, 240, -320, {
	stat = "Locked -> Unlocked"
})
var_0_88("stonespecial", "F05", "fatestone", 50, 80, -400, {
	stat = "Locked -> Unlocked"
})
var_0_88("stonemastery", "F06", "stonespecial", 70, 160, -400, {
	stat = "Locked -> Unlocked"
})
var_0_88("stonerift", "F07", "stonemastery", 90, 240, -400, {
	stat = "Locked -> Unlocked"
})
var_0_88("stoneconstellation", "F08", "fatestone", 110, 80, -480, {
	stat = "Locked -> Unlocked"
})
var_0_88("stonesanctum", "F09", "stoneconstellation", 140, 160, -480, {
	stat = "Locked -> Unlocked"
})
var_0_88("stonegambit", "F10", "stonesanctum", 180, 240, -480, {
	stat = "Locked -> Unlocked"
})

for iter_0_1, iter_0_2 in pairs(var_0_87) do
	if iter_0_2.parent then
		var_0_67(iter_0_1)
	end
end

local function var_0_89()
	local var_25_0 = var_0_1 and var_0_1.stageSelect
	local var_25_1 = var_25_0 and var_25_0.clearedDifficulties

	return var_25_1 and var_25_1[1] and var_25_1[1][1] == true
end

local function var_0_90()
	local var_26_0 = var_0_1 and var_0_1.stageSelect
	local var_26_1 = var_26_0 and var_26_0.clearedDifficulties

	return var_26_1 and var_26_1[3] and var_26_1[3][2] == true
end

local function var_0_91(arg_27_0, arg_27_1)
	local var_27_0 = var_0_1 and var_0_1.stageSelect
	local var_27_1 = var_27_0 and var_27_0.clearedDifficulties

	return var_27_1 and var_27_1[arg_27_0] and var_27_1[arg_27_0][arg_27_1] == true
end

local function var_0_92(arg_28_0)
	local var_28_0 = var_0_87 and var_0_87[arg_28_0]

	if var_28_0 and var_28_0.reqStage then
		if var_28_0.reqFull and _G.GameEditionMode ~= "full" then
			return false
		end

		return var_0_91(var_28_0.reqStage, var_28_0.reqDiff or 1) == true
	end

	if arg_28_0 == "slotadvanced" then
		return var_0_89()
	end

	if arg_28_0 == "slotrare" then
		return _G.GameEditionMode == "full" and var_0_90()
	end

	if arg_28_0 == "itemresearch" then
		return false
	end

	if arg_28_0 == "shoppin" then
		return false
	end

	return true
end

local function var_0_93(arg_29_0)
	local var_29_0 = var_0_87[arg_29_0]

	if var_29_0 and var_29_0.parent then
		return var_0_87[var_29_0.parent] ~= nil and var_0_87[var_29_0.parent].maxed == true and var_0_92(arg_29_0)
	end

	if arg_29_0 == "noviceshield" then
		return var_0_87.maxhp and var_0_87.maxhp.maxed == true
	end

	if arg_29_0 == "startgold" then
		return var_0_87.maxhp and var_0_87.maxhp.maxed == true
	end

	if arg_29_0 == "startingmerccontract" then
		return var_0_87.startgold and var_0_87.startgold.maxed == true
	end

	if arg_29_0 == "comebackspin" then
		return var_0_87.noviceshield and var_0_87.noviceshield.maxed == true
	end

	if arg_29_0 == "gateheal" then
		return var_0_87.comebackspin and var_0_87.comebackspin.maxed == true
	end

	if arg_29_0 == "comebackgold" then
		return var_0_87.startgold and var_0_87.startgold.maxed == true
	end

	if arg_29_0 == "startgold2" then
		return var_0_87.startgold and var_0_87.startgold.maxed == true
	end

	if arg_29_0 == "maxhp2" then
		return var_0_87.comebackgold and var_0_87.comebackgold.maxed == true
	end

	if arg_29_0 == "slotnudge" then
		return var_0_87.maxunit and var_0_87.maxunit.maxed == true
	end

	if arg_29_0 == "maxunit2" then
		return var_0_87.maxunit and var_0_87.maxunit.maxed == true
	end

	if arg_29_0 == "maxunit3" then
		return var_0_87.maxunit2 and var_0_87.maxunit2.maxed == true
	end

	if arg_29_0 == "interest" then
		return var_0_87.maxunit and var_0_87.maxunit.maxed == true
	end

	if arg_29_0 == "dormantpower" then
		return var_0_87.interest and var_0_87.interest.maxed == true
	end

	if arg_29_0 == "growthbranch" then
		return var_0_87.dormantpower and var_0_87.dormantpower.maxed == true
	end

	if arg_29_0 == "factionsynergy" then
		return var_0_87.growthbranch and var_0_87.growthbranch.maxed == true
	end

	if arg_29_0 == "slotadvanced" then
		return var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true or var_0_92(arg_29_0)
	end

	if arg_29_0 == "slotadvanced2" then
		return var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true
	end

	if arg_29_0 == "slotadvanced3" then
		return var_0_87.slotadvanced2 and var_0_87.slotadvanced2.maxed == true
	end

	if arg_29_0 == "slotrare" then
		return var_0_87.slotadvanced3 and var_0_87.slotadvanced3.maxed == true and var_0_92(arg_29_0)
	end

	if arg_29_0 == "corereroll" then
		return var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true
	end

	if arg_29_0 == "firstcorespin" then
		return var_0_87.corereroll and var_0_87.corereroll.maxed == true
	end

	if arg_29_0 == "firstcoreuncommon" then
		return var_0_87.firstcorespin and var_0_87.firstcorespin.maxed == true
	end

	if arg_29_0 == "shopreroll" then
		return var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true
	end

	if arg_29_0 == "iteminventory" then
		return var_0_87.shopreroll and var_0_87.shopreroll.maxed == true
	end

	if arg_29_0 == "itemrefund" then
		return var_0_87.iteminventory and var_0_87.iteminventory.maxed == true
	end

	if arg_29_0 == "iteminventory2" then
		return var_0_87.iteminventory and var_0_87.iteminventory.maxed == true
	end

	if arg_29_0 == "itemresearch" then
		return var_0_87.shopreroll and var_0_87.shopreroll.maxed == true and var_0_92(arg_29_0)
	end

	if arg_29_0 == "shoppin" then
		return var_0_87.shopreroll and var_0_87.shopreroll.maxed == true and var_0_92(arg_29_0)
	end

	return true
end

local function var_0_94(arg_30_0)
	return arg_30_0 == "slotadvanced" or arg_30_0 == "slotrare" or arg_30_0 == "itemresearch" or arg_30_0 == "shoppin" or var_0_87[arg_30_0] ~= nil and var_0_87[arg_30_0].reqStage ~= nil
end

local var_0_95 = {
	"difficulty_easy",
	"difficulty_normal",
	"difficulty_hard"
}

local function var_0_96(arg_31_0, arg_31_1)
	local var_31_0 = var_0_87[arg_31_0]

	if var_31_0 and var_31_0.reqStage then
		if var_31_0.reqFull and _G.GameEditionMode ~= "full" then
			return var_0_3.getText("full_version_hint", arg_31_1)
		end

		return var_0_3.getText("menu_stage_name_" .. tostring(var_31_0.reqStage), arg_31_1) .. " " .. var_0_3.getText(var_0_95[var_31_0.reqDiff or 1] or "difficulty_easy", arg_31_1) .. " " .. var_0_3.getText("clear_label", arg_31_1)
	end

	if arg_31_0 == "slotrare" or arg_31_0 == "itemresearch" or arg_31_0 == "shoppin" then
		return var_0_3.getText("full_version_hint", arg_31_1)
	end

	if arg_31_0 == "slotadvanced" then
		return var_0_3.getText("clear_open_forest_easy_hint", arg_31_1)
	end

	return nil
end

local function var_0_97(arg_32_0, arg_32_1)
	local var_32_0 = var_0_87[arg_32_0]

	if var_32_0 and var_32_0.reqStage then
		if var_32_0.reqFull and _G.GameEditionMode ~= "full" then
			return nil
		end

		return {
			{
				kind = "stage",
				text = var_0_3.getText("menu_stage_name_" .. tostring(var_32_0.reqStage), arg_32_1)
			},
			{
				kind = "difficulty",
				text = var_0_3.getText(var_0_95[var_32_0.reqDiff or 1] or "difficulty_easy", arg_32_1)
			},
			{
				kind = "clear",
				text = var_0_3.getText("clear_label", arg_32_1)
			}
		}
	end

	if arg_32_0 == "slotrare" or arg_32_0 == "itemresearch" or arg_32_0 == "shoppin" then
		return nil
	end

	if arg_32_0 == "slotadvanced" then
		return {
			{
				kind = "stage",
				text = var_0_3.getText("menu_stage_name_1", arg_32_1)
			},
			{
				kind = "difficulty",
				text = var_0_3.getText("difficulty_easy", arg_32_1)
			},
			{
				kind = "clear",
				text = var_0_3.getText("clear_label", arg_32_1)
			}
		}
	end

	return nil
end

local function var_0_98(arg_33_0, arg_33_1)
	if arg_33_0 then
		return {
			stage = {
				var_0_80("#9EDFFF")
			},
			difficulty = {
				var_0_80("#6FAACC")
			},
			clear = {
				var_0_80("#C7F1FF")
			}
		}
	elseif arg_33_1 then
		return {
			stage = {
				var_0_80("#8DFFB2")
			},
			difficulty = {
				var_0_80("#D7FF7A")
			},
			clear = {
				var_0_80("#5FAF6F")
			}
		}
	end

	return {
		stage = {
			var_0_80("#FF9A9A")
		},
		difficulty = {
			var_0_80("#FFB05F")
		},
		clear = {
			var_0_80("#A84F5A")
		}
	}
end

function var_0_0.applyUpgradeEffects()
	if var_0_2 and var_0_2.slot then
		var_0_2.slot.winSuppressProb = 0
		var_0_2.slot.forceWinProb = 0
	end

	if var_0_2 and var_0_2.unitGrades and var_0_2.unitGrades.probabilities then
		local var_34_0 = var_0_2.unitGrades.probabilities

		local function var_34_1(arg_35_0)
			return var_0_87[arg_35_0] ~= nil and var_0_87[arg_35_0].maxed == true
		end

		local var_34_2 = _G.GameEditionMode == "full"
		local var_34_3 = _G.GameEditionMode == "semi_demo" and 0.02 or 0
		local var_34_4 = 0
		local var_34_5 = 0

		if var_34_2 and var_34_1("slotrare") then
			var_34_0.advanced = 0.15
			var_34_3 = var_34_1("slotrare3") and 0.045 or var_34_1("slotrare2") and 0.03 or 0.02

			if var_34_1("slotlegend") then
				var_34_4 = var_34_1("slotlegend3") and 0.004 or var_34_1("slotlegend2") and 0.002 or 0.001
			end

			if var_34_1("slotprism") then
				var_34_5 = var_34_1("slotprism3") and 0.001 or var_34_1("slotprism2") and 0.0005 or 0.0002
			end
		elseif var_34_1("slotadvanced3") then
			var_34_0.advanced = 0.15
		elseif var_34_1("slotadvanced2") then
			var_34_0.advanced = 0.1
		elseif var_34_1("slotadvanced") then
			var_34_0.advanced = 0.05
		else
			var_34_0.advanced = 0
		end

		var_34_0.rare = var_34_3
		var_34_0.legendary = var_34_4
		var_34_0.prism = var_34_5
		var_34_0.normal = 1 - var_34_0.advanced - var_34_3 - var_34_4 - var_34_5
	end
end

var_0_0.applyUpgradeEffects()

function var_0_0.getUpgradeState()
	local var_36_0 = {}

	for iter_36_0, iter_36_1 in pairs(var_0_87) do
		if iter_36_1.maxed then
			var_36_0[iter_36_0] = true
		end
	end

	return var_36_0
end

function var_0_0.setUpgradeState(arg_37_0)
	if not arg_37_0 then
		return
	end

	if arg_37_0.stonejester and arg_37_0.stonespecial == nil then
		arg_37_0.stonespecial = true
	end

	for iter_37_0, iter_37_1 in pairs(var_0_87) do
		if arg_37_0[iter_37_0] then
			iter_37_1.maxed = true
		else
			iter_37_1.maxed = false
		end
	end

	if var_0_87.slotodds.maxed then
		local var_37_0 = var_0_67("maxunit")

		var_37_0.revealed = true
		var_37_0.unlockLineProgress = 1
		var_37_0.isAppearing = false
		var_37_0.scaleX = 1
		var_37_0.scaleY = 1

		local var_37_1 = var_0_67("maxhp")

		var_37_1.revealed = true
		var_37_1.unlockLineProgress = 1
		var_37_1.isAppearing = false
		var_37_1.scaleX = 1
		var_37_1.scaleY = 1

		local var_37_2 = var_0_67("noviceshield")
		local var_37_3 = var_0_87.maxhp and var_0_87.maxhp.maxed == true

		var_37_2.revealed = var_37_3
		var_37_2.unlockLineProgress = var_37_3 and 1 or 0
		var_37_2.isAppearing = false
		var_37_2.scaleX = var_37_3 and 1 or 0
		var_37_2.scaleY = var_37_3 and 1 or 0

		local var_37_4 = var_0_67("startgold")

		var_37_4.revealed = var_37_3
		var_37_4.unlockLineProgress = var_37_3 and 1 or 0
		var_37_4.isAppearing = false
		var_37_4.scaleX = var_37_3 and 1 or 0
		var_37_4.scaleY = var_37_3 and 1 or 0

		local var_37_5 = var_0_67("comebackspin")
		local var_37_6 = var_0_87.noviceshield and var_0_87.noviceshield.maxed == true

		var_37_5.revealed = var_37_6
		var_37_5.unlockLineProgress = var_37_6 and 1 or 0
		var_37_5.isAppearing = false
		var_37_5.scaleX = var_37_6 and 1 or 0
		var_37_5.scaleY = var_37_6 and 1 or 0

		local var_37_7 = var_0_67("gateheal")
		local var_37_8 = var_0_87.comebackspin and var_0_87.comebackspin.maxed == true

		var_37_7.revealed = var_37_8
		var_37_7.unlockLineProgress = var_37_8 and 1 or 0
		var_37_7.isAppearing = false
		var_37_7.scaleX = var_37_8 and 1 or 0
		var_37_7.scaleY = var_37_8 and 1 or 0

		local var_37_9 = var_0_67("comebackgold")
		local var_37_10 = var_0_87.startgold and var_0_87.startgold.maxed == true

		var_37_9.revealed = var_37_10
		var_37_9.unlockLineProgress = var_37_10 and 1 or 0
		var_37_9.isAppearing = false
		var_37_9.scaleX = var_37_10 and 1 or 0
		var_37_9.scaleY = var_37_10 and 1 or 0

		local var_37_11 = var_0_67("maxhp2")
		local var_37_12 = var_0_87.comebackgold and var_0_87.comebackgold.maxed == true

		var_37_11.revealed = var_37_12
		var_37_11.unlockLineProgress = var_37_12 and 1 or 0
		var_37_11.isAppearing = false
		var_37_11.scaleX = var_37_12 and 1 or 0
		var_37_11.scaleY = var_37_12 and 1 or 0

		local var_37_13 = var_0_67("startgold2")

		var_37_13.revealed = var_37_10
		var_37_13.unlockLineProgress = var_37_10 and 1 or 0
		var_37_13.isAppearing = false
		var_37_13.scaleX = var_37_10 and 1 or 0
		var_37_13.scaleY = var_37_10 and 1 or 0

		local var_37_14 = var_0_67("slotnudge")
		local var_37_15 = var_0_87.maxunit and var_0_87.maxunit.maxed == true

		var_37_14.revealed = var_37_15
		var_37_14.unlockLineProgress = var_37_15 and 1 or 0
		var_37_14.isAppearing = false
		var_37_14.scaleX = var_37_15 and 1 or 0
		var_37_14.scaleY = var_37_15 and 1 or 0

		local var_37_16 = var_0_67("preptime")

		var_37_16.revealed = false
		var_37_16.unlockLineProgress = 0
		var_37_16.isAppearing = false
		var_37_16.scaleX = 0
		var_37_16.scaleY = 0

		local var_37_17 = var_0_67("maxunit2")

		var_37_17.revealed = var_37_15
		var_37_17.unlockLineProgress = var_37_15 and 1 or 0
		var_37_17.isAppearing = false
		var_37_17.scaleX = var_37_15 and 1 or 0
		var_37_17.scaleY = var_37_15 and 1 or 0

		local var_37_18 = var_0_67("maxunit3")
		local var_37_19 = var_0_87.maxunit2 and var_0_87.maxunit2.maxed == true

		var_37_18.revealed = var_37_19
		var_37_18.unlockLineProgress = var_37_19 and 1 or 0
		var_37_18.isAppearing = false
		var_37_18.scaleX = var_37_19 and 1 or 0
		var_37_18.scaleY = var_37_19 and 1 or 0

		local var_37_20 = var_0_67("interest")

		var_37_20.revealed = var_37_15
		var_37_20.unlockLineProgress = var_37_15 and 1 or 0
		var_37_20.isAppearing = false
		var_37_20.scaleX = var_37_15 and 1 or 0
		var_37_20.scaleY = var_37_15 and 1 or 0

		local var_37_21 = var_0_67("preptime2")

		var_37_21.revealed = false
		var_37_21.unlockLineProgress = 0
		var_37_21.isAppearing = false
		var_37_21.scaleX = 0
		var_37_21.scaleY = 0

		local var_37_22 = var_0_67("preptimerdisabled")

		var_37_22.revealed = false
		var_37_22.unlockLineProgress = 0
		var_37_22.isAppearing = false
		var_37_22.scaleX = 0
		var_37_22.scaleY = 0

		local var_37_23 = var_0_67("slotadvanced")

		var_37_23.revealed = true
		var_37_23.unlockLineProgress = 1
		var_37_23.isAppearing = false
		var_37_23.scaleX = 1
		var_37_23.scaleY = 1

		local var_37_24 = var_0_67("slotadvanced2")
		local var_37_25 = var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true

		var_37_24.revealed = var_37_25
		var_37_24.unlockLineProgress = var_37_25 and 1 or 0
		var_37_24.isAppearing = false
		var_37_24.scaleX = var_37_25 and 1 or 0
		var_37_24.scaleY = var_37_25 and 1 or 0

		local var_37_26 = var_0_67("corereroll")

		var_37_26.revealed = var_37_25
		var_37_26.unlockLineProgress = var_37_25 and 1 or 0
		var_37_26.isAppearing = false
		var_37_26.scaleX = var_37_25 and 1 or 0
		var_37_26.scaleY = var_37_25 and 1 or 0

		local var_37_27 = var_0_67("firstcorespin")
		local var_37_28 = var_0_87.corereroll and var_0_87.corereroll.maxed == true

		var_37_27.revealed = var_37_28
		var_37_27.unlockLineProgress = var_37_28 and 1 or 0
		var_37_27.isAppearing = false
		var_37_27.scaleX = var_37_28 and 1 or 0
		var_37_27.scaleY = var_37_28 and 1 or 0

		local var_37_29 = var_0_67("firstcoreuncommon")
		local var_37_30 = var_0_87.firstcorespin and var_0_87.firstcorespin.maxed == true

		var_37_29.revealed = var_37_30
		var_37_29.unlockLineProgress = var_37_30 and 1 or 0
		var_37_29.isAppearing = false
		var_37_29.scaleX = var_37_30 and 1 or 0
		var_37_29.scaleY = var_37_30 and 1 or 0

		local var_37_31 = var_0_67("shopreroll")

		var_37_31.revealed = var_37_25
		var_37_31.unlockLineProgress = var_37_25 and 1 or 0
		var_37_31.isAppearing = false
		var_37_31.scaleX = var_37_25 and 1 or 0
		var_37_31.scaleY = var_37_25 and 1 or 0

		local var_37_32 = var_0_67("iteminventory")
		local var_37_33 = var_0_87.shopreroll and var_0_87.shopreroll.maxed == true

		var_37_32.revealed = var_37_33
		var_37_32.unlockLineProgress = var_37_33 and 1 or 0
		var_37_32.isAppearing = false
		var_37_32.scaleX = var_37_33 and 1 or 0
		var_37_32.scaleY = var_37_33 and 1 or 0

		local var_37_34 = var_0_67("itemrefund")
		local var_37_35 = var_0_87.iteminventory and var_0_87.iteminventory.maxed == true

		var_37_34.revealed = var_37_35
		var_37_34.unlockLineProgress = var_37_35 and 1 or 0
		var_37_34.isAppearing = false
		var_37_34.scaleX = var_37_35 and 1 or 0
		var_37_34.scaleY = var_37_35 and 1 or 0

		local var_37_36 = var_0_67("iteminventory2")

		var_37_36.revealed = var_37_35
		var_37_36.unlockLineProgress = var_37_35 and 1 or 0
		var_37_36.isAppearing = false
		var_37_36.scaleX = var_37_35 and 1 or 0
		var_37_36.scaleY = var_37_35 and 1 or 0

		local var_37_37 = var_0_67("itemresearch")

		var_37_37.revealed = var_37_33
		var_37_37.unlockLineProgress = var_37_33 and 1 or 0
		var_37_37.isAppearing = false
		var_37_37.scaleX = var_37_33 and 1 or 0
		var_37_37.scaleY = var_37_33 and 1 or 0

		local var_37_38 = var_0_67("shoppin")

		var_37_38.revealed = var_37_33
		var_37_38.unlockLineProgress = var_37_33 and 1 or 0
		var_37_38.isAppearing = false
		var_37_38.scaleX = var_37_33 and 1 or 0
		var_37_38.scaleY = var_37_33 and 1 or 0

		local var_37_39 = var_0_67("slotadvanced3")
		local var_37_40 = var_0_87.slotadvanced2 and var_0_87.slotadvanced2.maxed == true

		var_37_39.revealed = var_37_40
		var_37_39.unlockLineProgress = var_37_40 and 1 or 0
		var_37_39.isAppearing = false
		var_37_39.scaleX = var_37_40 and 1 or 0
		var_37_39.scaleY = var_37_40 and 1 or 0

		local var_37_41 = var_0_67("slotrare")
		local var_37_42 = var_0_87.slotadvanced3 and var_0_87.slotadvanced3.maxed == true

		var_37_41.revealed = var_37_42
		var_37_41.unlockLineProgress = var_37_42 and 1 or 0
		var_37_41.isAppearing = false
		var_37_41.scaleX = var_37_42 and 1 or 0
		var_37_41.scaleY = var_37_42 and 1 or 0
	else
		local var_37_43 = var_0_67("maxunit")

		var_37_43.revealed = false
		var_37_43.unlockLineProgress = 0
		var_37_43.isAppearing = false
		var_37_43.isDisappearing = false
		var_37_43.scaleX = 0
		var_37_43.scaleY = 0

		local var_37_44 = var_0_67("maxhp")

		var_37_44.revealed = false
		var_37_44.unlockLineProgress = 0
		var_37_44.isAppearing = false
		var_37_44.isDisappearing = false
		var_37_44.scaleX = 0
		var_37_44.scaleY = 0

		local var_37_45 = var_0_67("noviceshield")

		var_37_45.revealed = false
		var_37_45.unlockLineProgress = 0
		var_37_45.isAppearing = false
		var_37_45.isDisappearing = false
		var_37_45.scaleX = 0
		var_37_45.scaleY = 0

		local var_37_46 = var_0_67("startgold")

		var_37_46.revealed = false
		var_37_46.unlockLineProgress = 0
		var_37_46.isAppearing = false
		var_37_46.isDisappearing = false
		var_37_46.scaleX = 0
		var_37_46.scaleY = 0

		local var_37_47 = var_0_67("comebackspin")

		var_37_47.revealed = false
		var_37_47.unlockLineProgress = 0
		var_37_47.isAppearing = false
		var_37_47.isDisappearing = false
		var_37_47.scaleX = 0
		var_37_47.scaleY = 0

		local var_37_48 = var_0_67("gateheal")

		var_37_48.revealed = false
		var_37_48.unlockLineProgress = 0
		var_37_48.isAppearing = false
		var_37_48.isDisappearing = false
		var_37_48.scaleX = 0
		var_37_48.scaleY = 0

		local var_37_49 = var_0_67("comebackgold")

		var_37_49.revealed = false
		var_37_49.unlockLineProgress = 0
		var_37_49.isAppearing = false
		var_37_49.isDisappearing = false
		var_37_49.scaleX = 0
		var_37_49.scaleY = 0

		local var_37_50 = var_0_67("maxhp2")

		var_37_50.revealed = false
		var_37_50.unlockLineProgress = 0
		var_37_50.isAppearing = false
		var_37_50.isDisappearing = false
		var_37_50.scaleX = 0
		var_37_50.scaleY = 0

		local var_37_51 = var_0_67("startgold2")

		var_37_51.revealed = false
		var_37_51.unlockLineProgress = 0
		var_37_51.isAppearing = false
		var_37_51.isDisappearing = false
		var_37_51.scaleX = 0
		var_37_51.scaleY = 0

		local var_37_52 = var_0_67("slotnudge")

		var_37_52.revealed = false
		var_37_52.unlockLineProgress = 0
		var_37_52.isAppearing = false
		var_37_52.isDisappearing = false
		var_37_52.scaleX = 0
		var_37_52.scaleY = 0

		local var_37_53 = var_0_67("preptime")

		var_37_53.revealed = false
		var_37_53.unlockLineProgress = 0
		var_37_53.isAppearing = false
		var_37_53.isDisappearing = false
		var_37_53.scaleX = 0
		var_37_53.scaleY = 0

		local var_37_54 = var_0_67("maxunit2")

		var_37_54.revealed = false
		var_37_54.unlockLineProgress = 0
		var_37_54.isAppearing = false
		var_37_54.isDisappearing = false
		var_37_54.scaleX = 0
		var_37_54.scaleY = 0

		local var_37_55 = var_0_67("maxunit3")

		var_37_55.revealed = false
		var_37_55.unlockLineProgress = 0
		var_37_55.isAppearing = false
		var_37_55.isDisappearing = false
		var_37_55.scaleX = 0
		var_37_55.scaleY = 0

		local var_37_56 = var_0_67("interest")

		var_37_56.revealed = false
		var_37_56.unlockLineProgress = 0
		var_37_56.isAppearing = false
		var_37_56.isDisappearing = false
		var_37_56.scaleX = 0
		var_37_56.scaleY = 0

		local var_37_57 = var_0_67("preptime2")

		var_37_57.revealed = false
		var_37_57.unlockLineProgress = 0
		var_37_57.isAppearing = false
		var_37_57.isDisappearing = false
		var_37_57.scaleX = 0
		var_37_57.scaleY = 0

		local var_37_58 = var_0_67("preptimerdisabled")

		var_37_58.revealed = false
		var_37_58.unlockLineProgress = 0
		var_37_58.isAppearing = false
		var_37_58.isDisappearing = false
		var_37_58.scaleX = 0
		var_37_58.scaleY = 0

		local var_37_59 = var_0_67("slotadvanced")

		var_37_59.revealed = false
		var_37_59.unlockLineProgress = 0
		var_37_59.isAppearing = false
		var_37_59.isDisappearing = false
		var_37_59.scaleX = 0
		var_37_59.scaleY = 0

		local var_37_60 = var_0_67("slotadvanced2")

		var_37_60.revealed = false
		var_37_60.unlockLineProgress = 0
		var_37_60.isAppearing = false
		var_37_60.isDisappearing = false
		var_37_60.scaleX = 0
		var_37_60.scaleY = 0

		local var_37_61 = var_0_67("corereroll")

		var_37_61.revealed = false
		var_37_61.unlockLineProgress = 0
		var_37_61.isAppearing = false
		var_37_61.isDisappearing = false
		var_37_61.scaleX = 0
		var_37_61.scaleY = 0

		local var_37_62 = var_0_67("firstcorespin")

		var_37_62.revealed = false
		var_37_62.unlockLineProgress = 0
		var_37_62.isAppearing = false
		var_37_62.isDisappearing = false
		var_37_62.scaleX = 0
		var_37_62.scaleY = 0

		local var_37_63 = var_0_67("firstcoreuncommon")

		var_37_63.revealed = false
		var_37_63.unlockLineProgress = 0
		var_37_63.isAppearing = false
		var_37_63.isDisappearing = false
		var_37_63.scaleX = 0
		var_37_63.scaleY = 0

		local var_37_64 = var_0_67("shopreroll")

		var_37_64.revealed = false
		var_37_64.unlockLineProgress = 0
		var_37_64.isAppearing = false
		var_37_64.isDisappearing = false
		var_37_64.scaleX = 0
		var_37_64.scaleY = 0

		local var_37_65 = var_0_67("iteminventory")

		var_37_65.revealed = false
		var_37_65.unlockLineProgress = 0
		var_37_65.isAppearing = false
		var_37_65.isDisappearing = false
		var_37_65.scaleX = 0
		var_37_65.scaleY = 0

		local var_37_66 = var_0_67("itemrefund")

		var_37_66.revealed = false
		var_37_66.unlockLineProgress = 0
		var_37_66.isAppearing = false
		var_37_66.isDisappearing = false
		var_37_66.scaleX = 0
		var_37_66.scaleY = 0

		local var_37_67 = var_0_67("iteminventory2")

		var_37_67.revealed = false
		var_37_67.unlockLineProgress = 0
		var_37_67.isAppearing = false
		var_37_67.isDisappearing = false
		var_37_67.scaleX = 0
		var_37_67.scaleY = 0

		local var_37_68 = var_0_67("itemresearch")

		var_37_68.revealed = false
		var_37_68.unlockLineProgress = 0
		var_37_68.isAppearing = false
		var_37_68.isDisappearing = false
		var_37_68.scaleX = 0
		var_37_68.scaleY = 0

		local var_37_69 = var_0_67("shoppin")

		var_37_69.revealed = false
		var_37_69.unlockLineProgress = 0
		var_37_69.isAppearing = false
		var_37_69.isDisappearing = false
		var_37_69.scaleX = 0
		var_37_69.scaleY = 0

		local var_37_70 = var_0_67("slotadvanced3")

		var_37_70.revealed = false
		var_37_70.unlockLineProgress = 0
		var_37_70.isAppearing = false
		var_37_70.isDisappearing = false
		var_37_70.scaleX = 0
		var_37_70.scaleY = 0

		local var_37_71 = var_0_67("slotrare")

		var_37_71.revealed = false
		var_37_71.unlockLineProgress = 0
		var_37_71.isAppearing = false
		var_37_71.isDisappearing = false
		var_37_71.scaleX = 0
		var_37_71.scaleY = 0
	end

	local var_37_72 = var_0_67("startingmerccontract")
	local var_37_73 = var_0_87.slotodds and var_0_87.slotodds.maxed == true and var_0_87.startgold and var_0_87.startgold.maxed == true

	var_37_72.revealed = var_37_73
	var_37_72.unlockLineProgress = var_37_73 and 1 or 0
	var_37_72.isAppearing = false
	var_37_72.isDisappearing = false
	var_37_72.scaleX = var_37_73 and 1 or 0
	var_37_72.scaleY = var_37_73 and 1 or 0

	for iter_37_2, iter_37_3 in ipairs({
		{
			"dormantpower",
			"interest"
		},
		{
			"growthbranch",
			"dormantpower"
		},
		{
			"factionsynergy",
			"growthbranch"
		}
	}) do
		local var_37_74 = var_0_67(iter_37_3[1])
		local var_37_75 = var_0_87.slotodds.maxed == true and var_0_87[iter_37_3[2]].maxed == true

		var_37_74.revealed = var_37_75
		var_37_74.unlockLineProgress = var_37_75 and 1 or 0
		var_37_74.isAppearing = false
		var_37_74.isDisappearing = false
		var_37_74.scaleX = var_37_75 and 1 or 0
		var_37_74.scaleY = var_37_75 and 1 or 0
	end

	for iter_37_4, iter_37_5 in pairs(var_0_87) do
		if iter_37_5.parent then
			local var_37_76 = var_0_67(iter_37_4)
			local var_37_77 = var_0_87.slotodds.maxed == true and var_0_87[iter_37_5.parent] ~= nil and var_0_87[iter_37_5.parent].maxed == true

			var_37_76.revealed = var_37_77
			var_37_76.unlockLineProgress = var_37_77 and 1 or 0
			var_37_76.isAppearing = false
			var_37_76.isDisappearing = false
			var_37_76.scaleX = var_37_77 and 1 or 0
			var_37_76.scaleY = var_37_77 and 1 or 0
		end
	end

	var_0_0.applyUpgradeEffects()
end

local function var_0_99(arg_38_0, arg_38_1, arg_38_2, arg_38_3)
	local var_38_0 = {}
	local var_38_1 = 1

	arg_38_0 = tostring(arg_38_0 or "")

	while var_38_1 <= #arg_38_0 do
		local var_38_2, var_38_3 = arg_38_0:find("{gold%.png}", var_38_1)
		local var_38_4, var_38_5 = arg_38_0:find("{infinity}", var_38_1, true)
		local var_38_6
		local var_38_7
		local var_38_8

		if var_38_2 and (not var_38_4 or var_38_2 < var_38_4) then
			var_38_6, var_38_7, var_38_8 = var_38_2, var_38_3, "gold"
		elseif var_38_4 then
			var_38_6, var_38_7, var_38_8 = var_38_4, var_38_5, "infinity"
		end

		if not var_38_6 then
			local var_38_9 = arg_38_0:sub(var_38_1)

			if #var_38_9 > 0 then
				table.insert(var_38_0, {
					type = "text",
					text = var_38_9
				})
			end

			break
		end

		if var_38_1 < var_38_6 then
			table.insert(var_38_0, {
				type = "text",
				text = arg_38_0:sub(var_38_1, var_38_6 - 1)
			})
		end

		local var_38_10 = var_38_7 + 1

		if var_38_8 == "infinity" then
			table.insert(var_38_0, {
				fallback = "INF",
				type = "infinity"
			})

			var_38_1 = var_38_10
		else
			local var_38_11 = arg_38_0:sub(var_38_10)
			local var_38_12, var_38_13 = var_38_11:match("^(%s*)(%S+)")

			if var_38_13 then
				local var_38_14, var_38_15 = var_38_13:match("^(%d+)(.*)$")
				local var_38_16 = 0

				if var_38_14 and (not var_38_15 or var_38_15 == "") then
					local var_38_17, var_38_18 = var_38_11:sub(#var_38_12 + #var_38_13 + 1):match("^(%s+)(%S+)")

					if var_38_18 == "s" or var_38_18 == "sec" or var_38_18 == "seconds" then
						var_38_15 = var_38_18
						var_38_16 = #var_38_17 + #var_38_18
					end
				end

				table.insert(var_38_0, {
					type = "iconword",
					icon = var_0_13,
					word = var_38_13,
					number = var_38_14,
					suffix = var_38_15,
					fallback = "G" .. var_38_13
				})

				var_38_1 = var_38_10 + #var_38_12 + #var_38_13 + var_38_16
			else
				table.insert(var_38_0, {
					fallback = "G",
					type = "icon",
					icon = var_0_13
				})

				var_38_1 = var_38_10
			end
		end
	end

	return var_38_0
end

local function var_0_100(arg_39_0)
	arg_39_0 = tostring(arg_39_0 or "")

	return arg_39_0:find("{gold%.png}") ~= nil or arg_39_0:find("{infinity}", 1, true) ~= nil
end

local function var_0_101(arg_40_0, arg_40_1, arg_40_2)
	arg_40_0 = tostring(arg_40_0 or "")
	arg_40_2 = arg_40_2 or 1

	local var_40_0 = rawget(_G, "measureChineseMixedTextWidth")

	if type(var_40_0) == "function" then
		local var_40_1, var_40_2 = pcall(var_40_0, arg_40_0, arg_40_1)

		if var_40_1 and type(var_40_2) == "number" then
			return var_40_2 * arg_40_2
		end
	end

	return arg_40_1:getWidth(arg_40_0) * arg_40_2
end

local function var_0_102(arg_41_0, arg_41_1, arg_41_2, arg_41_3)
	local var_41_0 = 0
	local var_41_1 = var_0_37(arg_41_1):getHeight() * arg_41_2

	for iter_41_0, iter_41_1 in ipairs(arg_41_0 or {}) do
		if iter_41_1.type == "icon" and iter_41_1.icon then
			local var_41_2, var_41_3 = iter_41_1.icon:getDimensions()

			var_41_0 = var_41_0 + var_41_2 * arg_41_3
			var_41_1 = math.max(var_41_1, var_41_3 * arg_41_3)
		elseif iter_41_1.type == "iconword" and iter_41_1.icon then
			local var_41_4, var_41_5 = iter_41_1.icon:getDimensions()
			local var_41_6 = math.max(3, math.floor(4 * arg_41_2))

			var_41_0 = var_41_0 + var_41_4 * arg_41_3 + var_41_6

			if iter_41_1.number then
				local var_41_7 = iter_41_1.suffix and iter_41_1.suffix ~= "" and " " .. iter_41_1.suffix or ""

				var_41_0 = var_41_0 + var_0_101(iter_41_1.number, arg_41_1, arg_41_2) + var_0_101(var_41_7, arg_41_1, arg_41_2)
			else
				var_41_0 = var_41_0 + var_0_101(iter_41_1.word or "", arg_41_1, arg_41_2)
			end

			var_41_1 = math.max(var_41_1, var_41_5 * arg_41_3)
		elseif iter_41_1.type == "infinity" then
			local var_41_8 = var_0_84()

			var_41_0 = var_41_0 + 16 * var_41_8
			var_41_1 = math.max(var_41_1, 7 * var_41_8)
		else
			var_41_0 = var_41_0 + var_0_101(iter_41_1.text or iter_41_1.fallback or "", arg_41_1, arg_41_2)
		end
	end

	return var_41_0, var_41_1
end

local function var_0_103(arg_42_0, arg_42_1, arg_42_2)
	local var_42_0 = var_0_84()
	local var_42_1 = {
		{
			2,
			0
		},
		{
			3,
			0
		},
		{
			4,
			0
		},
		{
			10,
			0
		},
		{
			11,
			0
		},
		{
			12,
			0
		},
		{
			1,
			1
		},
		{
			5,
			1
		},
		{
			9,
			1
		},
		{
			13,
			1
		},
		{
			0,
			2
		},
		{
			6,
			2
		},
		{
			8,
			2
		},
		{
			14,
			2
		},
		{
			0,
			3
		},
		{
			7,
			3
		},
		{
			14,
			3
		},
		{
			0,
			4
		},
		{
			6,
			4
		},
		{
			8,
			4
		},
		{
			14,
			4
		},
		{
			1,
			5
		},
		{
			5,
			5
		},
		{
			9,
			5
		},
		{
			13,
			5
		},
		{
			2,
			6
		},
		{
			3,
			6
		},
		{
			4,
			6
		},
		{
			10,
			6
		},
		{
			11,
			6
		},
		{
			12,
			6
		}
	}
	local var_42_2 = math.floor(arg_42_0)
	local var_42_3 = math.floor(arg_42_1)

	local function var_42_4(arg_43_0)
		for iter_43_0, iter_43_1 in ipairs(var_42_1) do
			love.graphics.rectangle("fill", var_42_2 + iter_43_1[1] * var_42_0, var_42_3 + iter_43_1[2] * var_42_0 + arg_43_0, var_42_0, var_42_0)
		end
	end

	love.graphics.setColor(0, 0, 0, 0.45)
	var_42_4(var_42_0)
	love.graphics.setColor(arg_42_2 or {
		1,
		1,
		1,
		1
	})
	var_42_4(0)
end

local function var_0_104(arg_44_0, arg_44_1, arg_44_2, arg_44_3, arg_44_4, arg_44_5, arg_44_6, arg_44_7, arg_44_8)
	local var_44_0 = arg_44_1
	local var_44_1 = var_0_37(arg_44_3):getHeight() * arg_44_4

	local function var_44_2(arg_45_0)
		arg_45_0 = tostring(arg_45_0 or "")

		if not arg_44_8 then
			love.graphics.setColor(arg_44_6 or {
				1,
				1,
				1,
				1
			})
			love.graphics.print(arg_45_0, math.floor(var_44_0), math.floor(arg_44_2), 0, arg_44_4, arg_44_4)

			var_44_0 = var_44_0 + var_0_101(arg_45_0, arg_44_3, arg_44_4)

			return
		end

		local var_45_0 = 1

		while var_45_0 <= #arg_45_0 do
			local var_45_1, var_45_2 = arg_45_0:find("%d+", var_45_0)

			if not var_45_1 then
				local var_45_3 = arg_45_0:sub(var_45_0)

				love.graphics.setColor(arg_44_6 or {
					1,
					1,
					1,
					1
				})
				love.graphics.print(var_45_3, math.floor(var_44_0), math.floor(arg_44_2), 0, arg_44_4, arg_44_4)

				var_44_0 = var_44_0 + var_0_101(var_45_3, arg_44_3, arg_44_4)

				break
			end

			if var_45_0 < var_45_1 then
				local var_45_4 = arg_45_0:sub(var_45_0, var_45_1 - 1)

				love.graphics.setColor(arg_44_6 or {
					1,
					1,
					1,
					1
				})
				love.graphics.print(var_45_4, math.floor(var_44_0), math.floor(arg_44_2), 0, arg_44_4, arg_44_4)

				var_44_0 = var_44_0 + var_0_101(var_45_4, arg_44_3, arg_44_4)
			end

			local var_45_5 = arg_45_0:sub(var_45_1, var_45_2)

			love.graphics.setColor(arg_44_8)
			love.graphics.print(var_45_5, math.floor(var_44_0), math.floor(arg_44_2), 0, arg_44_4, arg_44_4)

			var_44_0 = var_44_0 + var_0_101(var_45_5, arg_44_3, arg_44_4)
			var_45_0 = var_45_2 + 1
		end
	end

	for iter_44_0, iter_44_1 in ipairs(arg_44_0 or {}) do
		if iter_44_1.type == "icon" and iter_44_1.icon then
			local var_44_3, var_44_4 = iter_44_1.icon:getDimensions()

			love.graphics.setColor(arg_44_7 or {
				1,
				1,
				1,
				1
			})

			local var_44_5 = arg_44_2 + math.floor((var_44_1 - var_44_4 * arg_44_5) / 2) + 2

			love.graphics.draw(iter_44_1.icon, math.floor(var_44_0), math.floor(var_44_5), 0, arg_44_5, arg_44_5)

			var_44_0 = var_44_0 + var_44_3 * arg_44_5
		elseif iter_44_1.type == "iconword" and iter_44_1.icon then
			local var_44_6, var_44_7 = iter_44_1.icon:getDimensions()
			local var_44_8 = math.max(3, math.floor(4 * arg_44_4))

			love.graphics.setColor(arg_44_7 or {
				1,
				1,
				1,
				1
			})

			local var_44_9 = arg_44_2 + math.floor((var_44_1 - var_44_7 * arg_44_5) / 2) + 2

			love.graphics.draw(iter_44_1.icon, math.floor(var_44_0), math.floor(var_44_9), 0, arg_44_5, arg_44_5)

			var_44_0 = var_44_0 + var_44_6 * arg_44_5 + var_44_8

			if iter_44_1.number then
				love.graphics.setColor(arg_44_8 or arg_44_6 or {
					1,
					1,
					1,
					1
				})
				love.graphics.print(iter_44_1.number, math.floor(var_44_0), math.floor(arg_44_2), 0, arg_44_4, arg_44_4)

				var_44_0 = var_44_0 + var_0_101(iter_44_1.number, arg_44_3, arg_44_4)

				if iter_44_1.suffix and iter_44_1.suffix ~= "" then
					local var_44_10 = " " .. iter_44_1.suffix

					love.graphics.setColor(arg_44_6 or {
						1,
						1,
						1,
						1
					})
					love.graphics.print(var_44_10, math.floor(var_44_0), math.floor(arg_44_2), 0, arg_44_4, arg_44_4)

					var_44_0 = var_44_0 + var_0_101(var_44_10, arg_44_3, arg_44_4)
				end
			else
				love.graphics.setColor(arg_44_6 or {
					1,
					1,
					1,
					1
				})

				local var_44_11 = iter_44_1.word or ""

				love.graphics.print(var_44_11, math.floor(var_44_0), math.floor(arg_44_2), 0, arg_44_4, arg_44_4)

				var_44_0 = var_44_0 + var_0_101(var_44_11, arg_44_3, arg_44_4)
			end
		elseif iter_44_1.type == "infinity" then
			local var_44_12 = var_0_84()
			local var_44_13 = arg_44_2 + math.floor((var_44_1 - 7 * var_44_12) / 2) + var_44_12 * 2

			var_0_103(var_44_0, var_44_13, arg_44_6 or {
				1,
				1,
				1,
				1
			})

			var_44_0 = var_44_0 + 16 * var_44_12
		else
			local var_44_14 = iter_44_1.text or iter_44_1.fallback or ""

			var_44_2(var_44_14)
		end
	end
end

local function var_0_105(arg_46_0, arg_46_1, arg_46_2, arg_46_3, arg_46_4)
	local var_46_0 = var_0_99(arg_46_0, arg_46_1, arg_46_3, arg_46_4)
	local var_46_1 = {}

	for iter_46_0, iter_46_1 in ipairs(var_46_0) do
		if iter_46_1.type == "text" then
			for iter_46_2 in tostring(iter_46_1.text):gmatch("%s*%S+") do
				table.insert(var_46_1, {
					type = "text",
					text = iter_46_2
				})
			end
		else
			table.insert(var_46_1, iter_46_1)
		end
	end

	local var_46_2 = {}
	local var_46_3 = {}
	local var_46_4 = 0

	local function var_46_5()
		table.insert(var_46_2, var_46_3)

		var_46_3, var_46_4 = {}, 0
	end

	local function var_46_6(arg_48_0)
		local var_48_0 = {}
		local var_48_1 = ""

		for iter_48_0 in tostring(arg_48_0 or ""):gmatch("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*") do
			if var_48_1 == "" and iter_48_0:match("%s") then
				var_48_1 = iter_48_0
			elseif var_48_1 ~= "" and var_48_1:match("^%s+$") then
				var_48_1 = var_48_1 .. iter_48_0
			else
				if var_48_1 ~= "" then
					var_48_0[#var_48_0 + 1] = var_48_1
				end

				var_48_1 = iter_48_0
			end
		end

		if var_48_1 ~= "" then
			var_48_0[#var_48_0 + 1] = var_48_1
		end

		return var_48_0
	end

	for iter_46_3, iter_46_4 in ipairs(var_46_1) do
		local var_46_7 = var_0_102({
			iter_46_4
		}, arg_46_1, arg_46_3, arg_46_4)

		if iter_46_4.type == "text" and arg_46_2 < var_46_7 then
			for iter_46_5, iter_46_6 in ipairs(var_46_6(iter_46_4.text)) do
				local var_46_8 = {
					type = "text",
					text = iter_46_6
				}
				local var_46_9 = var_0_102({
					var_46_8
				}, arg_46_1, arg_46_3, arg_46_4)

				if var_46_4 > 0 and arg_46_2 < var_46_4 + var_46_9 then
					var_46_5()

					var_46_8.text = tostring(var_46_8.text):gsub("^%s+", "")
					var_46_9 = var_0_102({
						var_46_8
					}, arg_46_1, arg_46_3, arg_46_4)
				end

				if var_46_8.text ~= "" then
					table.insert(var_46_3, var_46_8)

					var_46_4 = var_46_4 + var_46_9
				end
			end
		else
			if var_46_4 > 0 and arg_46_2 < var_46_4 + var_46_7 then
				var_46_5()

				if iter_46_4.type == "text" then
					iter_46_4 = {
						type = "text",
						text = tostring(iter_46_4.text):gsub("^%s+", "")
					}
					var_46_7 = var_0_102({
						iter_46_4
					}, arg_46_1, arg_46_3, arg_46_4)
				end
			end

			table.insert(var_46_3, iter_46_4)

			var_46_4 = var_46_4 + var_46_7
		end
	end

	if #var_46_3 > 0 then
		table.insert(var_46_2, var_46_3)
	end

	if #var_46_2 == 0 then
		table.insert(var_46_2, {})
	end

	return var_46_2
end

_G.__slotUpgradeLazyFailed = _G.__slotUpgradeLazyFailed or {}

function _G.__slotUpgradeLoadLazyImage(arg_49_0, arg_49_1)
	local var_49_0 = _G.__slotUpgradeLazyFailed

	if var_49_0[arg_49_0] then
		return nil
	end

	local var_49_1, var_49_2 = pcall(love.graphics.newImage, arg_49_1)

	if var_49_1 and var_49_2 then
		var_49_2:setFilter("nearest", "nearest")

		return var_49_2
	end

	var_49_0[arg_49_0] = true

	return nil
end

function _G.__slotUpgradeLoadLazyShader(arg_50_0, arg_50_1)
	local var_50_0 = _G.__slotUpgradeLazyFailed

	if var_50_0[arg_50_0] then
		return nil
	end

	local var_50_1, var_50_2 = pcall(love.graphics.newShader, arg_50_1)

	if var_50_1 and var_50_2 then
		return var_50_2
	end

	var_50_0[arg_50_0] = true

	return nil
end

function var_0_0.draw(arg_51_0, arg_51_1, arg_51_2)
	local var_51_0 = arg_51_0.virtual.W
	local var_51_1 = arg_51_0.virtual.H

	var_0_52, var_0_53 = var_51_0, var_51_1

	if var_0_69 ~= var_0_70 then
		var_0_72 = nil
		var_0_70 = var_0_69
	end

	if not var_0_42 then
		var_0_42 = __slotUpgradeLoadLazyShader("bgShader", var_0_43)
	end

	love.graphics.setColor(1, 1, 1, 1)

	if var_0_42 then
		var_0_42:send("time", love.timer.getTime() % 100)

		local var_51_2 = _G.Render2 and _G.Render2.getCurrentTargetDPIScale and _G.Render2.getCurrentTargetDPIScale() or 1

		var_0_42:send("scale", love.graphics.getHeight() / 720 * var_51_2)
		love.graphics.setShader(var_0_42)
		love.graphics.rectangle("fill", 0, 0, var_51_0, var_51_1)
		love.graphics.setShader()
	else
		love.graphics.setColor(0.1, 0.08, 0.15, 1)
		love.graphics.rectangle("fill", 0, 0, var_51_0, var_51_1)
	end

	love.graphics.setColor(1, 1, 1, 1)

	for iter_51_0, iter_51_1 in ipairs(var_0_77) do
		local var_51_3 = iter_51_1.x - math.cos(iter_51_1.angle) * iter_51_1.len
		local var_51_4 = iter_51_1.y - math.sin(iter_51_1.angle) * iter_51_1.len

		love.graphics.setLineWidth(iter_51_1.thickness)
		love.graphics.setColor(1, 1, 1, iter_51_1.life)
		love.graphics.line(iter_51_1.x, iter_51_1.y, var_51_3, var_51_4)
	end

	love.graphics.setLineWidth(1)

	local var_51_5 = love.timer.getDelta()

	for iter_51_2, iter_51_3 in ipairs(var_0_74) do
		iter_51_3.x = iter_51_3.x + iter_51_3.speedX * var_51_5
		iter_51_3.y = iter_51_3.y + iter_51_3.speedY * var_51_5
		iter_51_3.t = iter_51_3.t + var_51_5

		local var_51_6 = var_0_76

		if iter_51_3.x < -var_51_6 / 2 then
			iter_51_3.x = iter_51_3.x + var_51_6
		end

		if iter_51_3.x > var_51_6 / 2 then
			iter_51_3.x = iter_51_3.x - var_51_6
		end

		if iter_51_3.y < -var_51_6 / 2 then
			iter_51_3.y = iter_51_3.y + var_51_6
		end

		if iter_51_3.y > var_51_6 / 2 then
			iter_51_3.y = iter_51_3.y - var_51_6
		end

		local var_51_7 = var_51_0 / 2 + iter_51_3.x + var_0_44 * 0.2
		local var_51_8 = var_51_1 / 2 + iter_51_3.y + var_0_45 * 0.2

		if var_51_7 > -10 and var_51_7 < var_51_0 + 10 and var_51_8 > -10 and var_51_8 < var_51_1 + 10 then
			local var_51_9 = math.sin(iter_51_3.t * iter_51_3.blinkSpeed) * 0.3 + 0.7

			love.graphics.setColor(1, 1, 1, iter_51_3.alpha * var_51_9)
			love.graphics.rectangle("fill", math.floor(var_51_7), math.floor(var_51_8), iter_51_3.size, iter_51_3.size)
		end
	end

	love.graphics.push()
	love.graphics.translate(var_51_0 / 2 + var_0_44, var_51_1 / 2 + var_0_45)
	love.graphics.scale(var_0_46, var_0_46)
	love.graphics.translate(-var_51_0 / 2, -var_51_1 / 2)

	local var_51_10 = var_0_61
	local var_51_11 = (var_51_0 - var_51_10) / 2
	local var_51_12 = (var_51_1 - var_51_10) / 2

	for iter_51_4, iter_51_5 in pairs(var_0_8) do
		if var_0_7[iter_51_4] == nil then
			local var_51_13, var_51_14 = pcall(love.graphics.newImage, iter_51_5)

			if var_51_13 and var_51_14 then
				var_51_14:setFilter("nearest", "nearest")

				var_0_7[iter_51_4] = var_51_14
			else
				var_0_7[iter_51_4] = false
			end
		end
	end

	if not var_0_12 then
		var_0_12 = __slotUpgradeLoadLazyImage("originiteIcon", "src/sprites/icons/menu/originite.png")
	end

	if not var_0_13 then
		var_0_13 = __slotUpgradeLoadLazyImage("goldIcon", "src/sprites/icons/tooltip/gold.png")
	end

	var_0_0.getOriginiteFont()

	var_0_16, var_0_17 = var_0_41(var_0_16, var_0_17, "src/data/font/Galmuri9WS.fnt")

	if not var_0_18 then
		var_0_18 = __slotUpgradeLoadLazyImage("titleBg", "src/sprites/mainmenu/upgradetitle.png")
	end

	var_0_19, var_0_20 = var_0_41(var_0_19, var_0_20, "src/data/font/Galmuri9WS.fnt")

	if not var_0_21 then
		var_0_21 = __slotUpgradeLoadLazyImage("mouseRightIcon", "src/sprites/icons/menu/mouseright.png")
	end

	if not var_0_22 then
		var_0_22 = __slotUpgradeLoadLazyImage("mouseLeftIcon", "src/sprites/icons/menu/mouseleft.png")
	end

	if not var_0_23 then
		var_0_23 = __slotUpgradeLoadLazyImage("mouseWheelIcon", "src/sprites/icons/menu/mousewheel.png")
	end

	if not var_0_24 then
		var_0_24 = __slotUpgradeLoadLazyImage("backButtonImg", "src/sprites/mainmenu/backbutton.png")
	end

	if not var_0_9 then
		var_0_9 = __slotUpgradeLoadLazyShader("solidColorShader", "            vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n                vec4 texcolor = Texel(texture, texture_coords);\n                if (texcolor.a == 0.0) discard;\n                return color;\n            }\n        ")
	end

	if not var_0_10 then
		var_0_10 = __slotUpgradeLoadLazyShader("glowShader", "            extern vec4 glowColor;\n\n            vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n                vec2 uv = texture_coords - 0.5;\n\n                // Improved Rounded Box SDF to eliminate \"X\" artifact\n                // Box half-size 0.25, Corner radius is handled by the distance field nature\n                vec2 d = abs(uv) - 0.2;\n                float dist = length(max(d, 0.0)) + min(max(d.x, d.y), 0.0);\n\n                // Smooth falloff from the edge of the box\n                // 0.0 is the edge of the box, 0.3 is the fade out distance\n                float alpha = 1.0 - smoothstep(0.0, 0.3, dist);\n\n                // Sharper falloff to reduce \"large area\" feel\n                alpha = pow(alpha, 2.0);\n\n                return glowColor * alpha;\n            }\n        ")
	end

	if not var_0_11 and not _G.__slotUpgradeLazyFailed.whitePixel then
		local var_51_15, var_51_16 = pcall(function()
			return love.graphics.newImage(love.image.newImageData(1, 1))
		end)

		if var_51_15 and var_51_16 then
			var_0_11 = var_51_16
		else
			_G.__slotUpgradeLazyFailed.whitePixel = true
		end
	end

	var_0_73 = {}

	local var_51_17 = var_51_0 / 2
	local var_51_18 = var_51_1 / 2
	local var_51_19 = {
		maxhp = {
			x = var_51_17 - 60,
			y = var_51_18 + 60
		},
		noviceshield = {
			x = var_51_17 - 60,
			y = var_51_18 + 140
		},
		startgold = {
			x = var_51_17 - 120,
			y = var_51_18 + 120
		},
		startingmerccontract = {
			x = var_51_17 - 200,
			y = var_51_18 + 120
		},
		comebackspin = {
			x = var_51_17 - 60,
			y = var_51_18 + 220
		},
		gateheal = {
			x = var_51_17 - 60,
			y = var_51_18 + 300
		},
		comebackgold = {
			x = var_51_17 - 120,
			y = var_51_18 + 200
		},
		maxhp2 = {
			x = var_51_17 - 180,
			y = var_51_18 + 260
		},
		startgold2 = {
			x = var_51_17 - 180,
			y = var_51_18 + 180
		},
		slotodds = {
			x = var_51_17,
			y = var_51_18
		},
		factionsynergy = {
			x = var_51_17 + 120,
			y = var_51_18 + 360
		},
		maxunit = {
			x = var_51_17 + 60,
			y = var_51_18 + 60
		},
		maxunit2 = {
			x = var_51_17 + 120,
			y = var_51_18 + 120
		},
		maxunit3 = {
			x = var_51_17 + 180,
			y = var_51_18 + 180
		},
		slotnudge = {
			x = var_51_17 + 140,
			y = var_51_18 + 60
		},
		interest = {
			x = var_51_17 + 60,
			y = var_51_18 + 140
		},
		dormantpower = {
			x = var_51_17 + 60,
			y = var_51_18 + 220
		},
		growthbranch = {
			x = var_51_17 + 120,
			y = var_51_18 + 280
		},
		preptime2 = {
			x = var_51_17 + 120,
			y = var_51_18 + 200
		},
		preptimerdisabled = {
			x = var_51_17 + 180,
			y = var_51_18 + 260
		},
		slotadvanced = {
			x = var_51_17,
			y = var_51_18 - 80
		},
		slotadvanced2 = {
			x = var_51_17,
			y = var_51_18 - 160
		},
		slotadvanced3 = {
			x = var_51_17,
			y = var_51_18 - 240
		},
		slotrare = {
			x = var_51_17 - 80,
			y = var_51_18 - 240
		},
		corereroll = {
			x = var_51_17 - 80,
			y = var_51_18 - 80
		},
		firstcorespin = {
			x = var_51_17 - 160,
			y = var_51_18 - 80
		},
		firstcoreuncommon = {
			x = var_51_17 - 240,
			y = var_51_18 - 80
		},
		shopreroll = {
			x = var_51_17 + 80,
			y = var_51_18 - 80
		},
		iteminventory = {
			x = var_51_17 + 140,
			y = var_51_18 - 140
		},
		itemrefund = {
			x = var_51_17 + 220,
			y = var_51_18 - 140
		},
		iteminventory2 = {
			x = var_51_17 + 200,
			y = var_51_18 - 200
		},
		itemresearch = {
			x = var_51_17 + 80,
			y = var_51_18 - 160
		},
		shoppin = {
			x = var_51_17 + 220,
			y = var_51_18 - 80
		}
	}

	for iter_51_6, iter_51_7 in pairs(var_0_87) do
		if iter_51_7.posX then
			var_51_19[iter_51_6] = {
				x = var_51_17 + iter_51_7.posX,
				y = var_51_18 + iter_51_7.posY
			}
		end
	end

	local var_51_20 = var_0_87.slotodds.maxed == true
	local var_51_21 = var_0_87.maxhp and var_0_87.maxhp.maxed == true
	local var_51_22 = var_0_67("noviceshield")
	local var_51_23 = var_0_67("startgold")
	local var_51_24 = var_0_67("startingmerccontract")
	local var_51_25 = var_0_67("comebackspin")
	local var_51_26 = var_0_87.noviceshield and var_0_87.noviceshield.maxed == true
	local var_51_27 = var_0_67("gateheal")
	local var_51_28 = var_0_87.comebackspin and var_0_87.comebackspin.maxed == true
	local var_51_29 = var_0_67("comebackgold")
	local var_51_30 = var_0_87.startgold and var_0_87.startgold.maxed == true
	local var_51_31 = var_0_67("maxhp2")
	local var_51_32 = var_0_87.comebackgold and var_0_87.comebackgold.maxed == true
	local var_51_33 = var_0_67("startgold2")
	local var_51_34 = var_0_87.maxunit and var_0_87.maxunit.maxed == true
	local var_51_35 = var_0_67("maxunit2")
	local var_51_36 = var_0_67("maxunit3")
	local var_51_37 = var_0_87.maxunit2 and var_0_87.maxunit2.maxed == true
	local var_51_38 = var_0_67("preptime")
	local var_51_39 = var_0_67("interest")
	local var_51_40 = var_0_67("preptime2")
	local var_51_41 = var_0_67("preptimerdisabled")
	local var_51_42 = var_0_67("slotadvanced2")
	local var_51_43 = var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true
	local var_51_44 = var_0_67("corereroll")
	local var_51_45 = var_0_67("firstcorespin")
	local var_51_46 = var_0_87.corereroll and var_0_87.corereroll.maxed == true
	local var_51_47 = var_0_67("firstcoreuncommon")
	local var_51_48 = var_0_87.firstcorespin and var_0_87.firstcorespin.maxed == true
	local var_51_49 = var_0_67("shopreroll")
	local var_51_50 = var_0_67("iteminventory")
	local var_51_51 = var_0_87.shopreroll and var_0_87.shopreroll.maxed == true
	local var_51_52 = var_0_67("itemrefund")
	local var_51_53 = var_0_87.iteminventory and var_0_87.iteminventory.maxed == true
	local var_51_54 = var_0_67("iteminventory2")
	local var_51_55 = var_0_67("itemresearch")
	local var_51_56 = var_0_67("shoppin")
	local var_51_57 = var_0_67("slotadvanced3")
	local var_51_58 = var_0_87.slotadvanced2 and var_0_87.slotadvanced2.maxed == true
	local var_51_59 = var_0_67("slotrare")
	local var_51_60 = var_0_87.slotadvanced3 and var_0_87.slotadvanced3.maxed == true
	local var_51_61 = var_0_67("maxhp")

	if var_51_20 and (var_51_61.revealed or (var_51_61.unlockLineProgress or 0) > 0) or var_51_61.isDisappearing then
		local var_51_62 = {
			1,
			1,
			1,
			1
		}
		local var_51_63 = var_0_87.maxhp
		local var_51_64 = var_51_63 and var_51_63.maxed or false
		local var_51_65 = var_51_63 and arg_51_1 >= var_51_63.cost

		if var_51_64 then
			var_51_62 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_65 then
			var_51_62 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_62 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_66 = var_51_19.slotodds.x
		local var_51_67 = var_51_19.slotodds.y
		local var_51_68 = var_51_19.maxhp.x
		local var_51_69 = var_51_19.maxhp.y
		local var_51_70 = var_51_61.unlockLineProgress or 0
		local var_51_71 = var_51_66 + (var_51_68 - var_51_66) * var_51_70
		local var_51_72 = var_51_67 + (var_51_69 - var_51_67) * var_51_70
		local var_51_73, var_51_74 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_75 = 0.18
		local var_51_76 = 0
		local var_51_77 = 0
		local var_51_78 = 6
		local var_51_79 = 10
		local var_51_80 = 2.3
		local var_51_81 = var_51_75 + var_51_76 * 1

		for iter_51_8 = 1, var_51_79 do
			local var_51_82 = (iter_51_8 - 0.5) / var_51_79
			local var_51_83 = var_51_78 * var_51_82^1.05
			local var_51_84 = var_51_81 * math.exp(-var_51_82 * var_51_80) * 0.7

			love.graphics.setColor(var_51_62[1], var_51_62[2], var_51_62[3], var_51_84)
			love.graphics.setLineWidth(2 + var_51_83 * 1.2)
			love.graphics.line(var_51_66, var_51_67, var_51_71, var_51_72)
		end

		love.graphics.setBlendMode(var_51_73 or "alpha", var_51_74 or "alphamultiply")
		love.graphics.setColor(var_51_62[1], var_51_62[2], var_51_62[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_66, var_51_67, var_51_71, var_51_72)
		love.graphics.setLineWidth(1)
	end

	if (var_51_21 or var_51_22.isDisappearing) and var_51_22.unlockLineProgress > 0 then
		local var_51_85 = {
			1,
			1,
			1,
			1
		}
		local var_51_86 = var_0_87.noviceshield
		local var_51_87 = var_51_86 and var_51_86.maxed or false
		local var_51_88 = var_51_86 and var_51_21 and arg_51_1 >= var_51_86.cost

		if var_51_87 then
			var_51_85 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_88 then
			var_51_85 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_85 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_89 = var_51_19.maxhp.x
		local var_51_90 = var_51_19.maxhp.y
		local var_51_91 = var_51_19.noviceshield.x
		local var_51_92 = var_51_19.noviceshield.y
		local var_51_93 = var_51_22.unlockLineProgress
		local var_51_94 = var_51_89 + (var_51_91 - var_51_89) * var_51_93
		local var_51_95 = var_51_90 + (var_51_92 - var_51_90) * var_51_93
		local var_51_96, var_51_97 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_98 = 0.18
		local var_51_99 = 6
		local var_51_100 = 10
		local var_51_101 = 2.3

		for iter_51_9 = 1, var_51_100 do
			local var_51_102 = (iter_51_9 - 0.5) / var_51_100
			local var_51_103 = var_51_99 * var_51_102^1.05
			local var_51_104 = var_51_98 * math.exp(-var_51_102 * var_51_101) * 0.7

			love.graphics.setColor(var_51_85[1], var_51_85[2], var_51_85[3], var_51_104)
			love.graphics.setLineWidth(2 + var_51_103 * 1.2)
			love.graphics.line(var_51_89, var_51_90, var_51_94, var_51_95)
		end

		love.graphics.setBlendMode(var_51_96 or "alpha", var_51_97 or "alphamultiply")
		love.graphics.setColor(var_51_85[1], var_51_85[2], var_51_85[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_89, var_51_90, var_51_94, var_51_95)
		love.graphics.setLineWidth(1)
	end

	if (var_51_21 or var_51_23.isDisappearing) and var_51_23.unlockLineProgress > 0 then
		local var_51_105 = {
			1,
			1,
			1,
			1
		}
		local var_51_106 = var_0_87.startgold
		local var_51_107 = var_51_106 and var_51_106.maxed or false
		local var_51_108 = var_51_106 and var_51_21 and arg_51_1 >= var_51_106.cost

		if var_51_107 then
			var_51_105 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_108 then
			var_51_105 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_105 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_109 = var_51_19.maxhp.x
		local var_51_110 = var_51_19.maxhp.y
		local var_51_111 = var_51_19.startgold.x
		local var_51_112 = var_51_19.startgold.y
		local var_51_113 = var_51_23.unlockLineProgress
		local var_51_114 = var_51_109 + (var_51_111 - var_51_109) * var_51_113
		local var_51_115 = var_51_110 + (var_51_112 - var_51_110) * var_51_113
		local var_51_116, var_51_117 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_118 = 0.18
		local var_51_119 = 6
		local var_51_120 = 10
		local var_51_121 = 2.3

		for iter_51_10 = 1, var_51_120 do
			local var_51_122 = (iter_51_10 - 0.5) / var_51_120
			local var_51_123 = var_51_119 * var_51_122^1.05
			local var_51_124 = var_51_118 * math.exp(-var_51_122 * var_51_121) * 0.7

			love.graphics.setColor(var_51_105[1], var_51_105[2], var_51_105[3], var_51_124)
			love.graphics.setLineWidth(2 + var_51_123 * 1.2)
			love.graphics.line(var_51_109, var_51_110, var_51_114, var_51_115)
		end

		love.graphics.setBlendMode(var_51_116 or "alpha", var_51_117 or "alphamultiply")
		love.graphics.setColor(var_51_105[1], var_51_105[2], var_51_105[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_109, var_51_110, var_51_114, var_51_115)
		love.graphics.setLineWidth(1)
	end

	if (var_51_30 or var_51_24.isDisappearing) and var_51_24.unlockLineProgress > 0 then
		local var_51_125 = {
			1,
			1,
			1,
			1
		}
		local var_51_126 = var_0_87.startingmerccontract
		local var_51_127 = var_51_126 and var_51_126.maxed or false
		local var_51_128 = var_51_126 and var_51_30 and arg_51_1 >= var_51_126.cost

		if var_51_127 then
			var_51_125 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_128 then
			var_51_125 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_125 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_129 = var_51_19.startgold.x
		local var_51_130 = var_51_19.startgold.y
		local var_51_131 = var_51_19.startingmerccontract.x
		local var_51_132 = var_51_19.startingmerccontract.y
		local var_51_133 = var_51_24.unlockLineProgress
		local var_51_134 = var_51_129 + (var_51_131 - var_51_129) * var_51_133
		local var_51_135 = var_51_130 + (var_51_132 - var_51_130) * var_51_133
		local var_51_136, var_51_137 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_138 = 0.18
		local var_51_139 = 6
		local var_51_140 = 10
		local var_51_141 = 2.3

		for iter_51_11 = 1, var_51_140 do
			local var_51_142 = (iter_51_11 - 0.5) / var_51_140
			local var_51_143 = var_51_139 * var_51_142^1.05
			local var_51_144 = var_51_138 * math.exp(-var_51_142 * var_51_141) * 0.7

			love.graphics.setColor(var_51_125[1], var_51_125[2], var_51_125[3], var_51_144)
			love.graphics.setLineWidth(2 + var_51_143 * 1.2)
			love.graphics.line(var_51_129, var_51_130, var_51_134, var_51_135)
		end

		love.graphics.setBlendMode(var_51_136 or "alpha", var_51_137 or "alphamultiply")
		love.graphics.setColor(var_51_125[1], var_51_125[2], var_51_125[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_129, var_51_130, var_51_134, var_51_135)
		love.graphics.setLineWidth(1)
	end

	if (var_51_26 or var_51_25.isDisappearing) and var_51_25.unlockLineProgress > 0 then
		local var_51_145 = {
			1,
			1,
			1,
			1
		}
		local var_51_146 = var_0_87.comebackspin
		local var_51_147 = var_51_146 and var_51_146.maxed or false
		local var_51_148 = var_51_146 and var_51_26 and arg_51_1 >= var_51_146.cost

		if var_51_147 then
			var_51_145 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_148 then
			var_51_145 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_145 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_149 = var_51_19.noviceshield.x
		local var_51_150 = var_51_19.noviceshield.y
		local var_51_151 = var_51_19.comebackspin.x
		local var_51_152 = var_51_19.comebackspin.y
		local var_51_153 = var_51_25.unlockLineProgress
		local var_51_154 = var_51_149 + (var_51_151 - var_51_149) * var_51_153
		local var_51_155 = var_51_150 + (var_51_152 - var_51_150) * var_51_153
		local var_51_156, var_51_157 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_158 = 0.18
		local var_51_159 = 6
		local var_51_160 = 10
		local var_51_161 = 2.3

		for iter_51_12 = 1, var_51_160 do
			local var_51_162 = (iter_51_12 - 0.5) / var_51_160
			local var_51_163 = var_51_159 * var_51_162^1.05
			local var_51_164 = var_51_158 * math.exp(-var_51_162 * var_51_161) * 0.7

			love.graphics.setColor(var_51_145[1], var_51_145[2], var_51_145[3], var_51_164)
			love.graphics.setLineWidth(2 + var_51_163 * 1.2)
			love.graphics.line(var_51_149, var_51_150, var_51_154, var_51_155)
		end

		love.graphics.setBlendMode(var_51_156 or "alpha", var_51_157 or "alphamultiply")
		love.graphics.setColor(var_51_145[1], var_51_145[2], var_51_145[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_149, var_51_150, var_51_154, var_51_155)
		love.graphics.setLineWidth(1)
	end

	if (var_51_28 or var_51_27.isDisappearing) and var_51_27.unlockLineProgress > 0 then
		local var_51_165 = {
			1,
			1,
			1,
			1
		}
		local var_51_166 = var_0_87.gateheal
		local var_51_167 = var_51_166 and var_51_166.maxed or false
		local var_51_168 = var_51_166 and var_51_28 and arg_51_1 >= var_51_166.cost

		if var_51_167 then
			var_51_165 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_168 then
			var_51_165 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_165 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_169 = var_51_19.comebackspin.x
		local var_51_170 = var_51_19.comebackspin.y
		local var_51_171 = var_51_19.gateheal.x
		local var_51_172 = var_51_19.gateheal.y
		local var_51_173 = var_51_27.unlockLineProgress
		local var_51_174 = var_51_169 + (var_51_171 - var_51_169) * var_51_173
		local var_51_175 = var_51_170 + (var_51_172 - var_51_170) * var_51_173
		local var_51_176, var_51_177 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_178 = 0.18
		local var_51_179 = 6
		local var_51_180 = 10
		local var_51_181 = 2.3

		for iter_51_13 = 1, var_51_180 do
			local var_51_182 = (iter_51_13 - 0.5) / var_51_180
			local var_51_183 = var_51_179 * var_51_182^1.05
			local var_51_184 = var_51_178 * math.exp(-var_51_182 * var_51_181) * 0.7

			love.graphics.setColor(var_51_165[1], var_51_165[2], var_51_165[3], var_51_184)
			love.graphics.setLineWidth(2 + var_51_183 * 1.2)
			love.graphics.line(var_51_169, var_51_170, var_51_174, var_51_175)
		end

		love.graphics.setBlendMode(var_51_176 or "alpha", var_51_177 or "alphamultiply")
		love.graphics.setColor(var_51_165[1], var_51_165[2], var_51_165[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_169, var_51_170, var_51_174, var_51_175)
		love.graphics.setLineWidth(1)
	end

	if (var_51_30 or var_51_29.isDisappearing) and var_51_29.unlockLineProgress > 0 then
		local var_51_185 = {
			1,
			1,
			1,
			1
		}
		local var_51_186 = var_0_87.comebackgold
		local var_51_187 = var_51_186 and var_51_186.maxed or false
		local var_51_188 = var_51_186 and var_51_30 and arg_51_1 >= var_51_186.cost

		if var_51_187 then
			var_51_185 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_188 then
			var_51_185 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_185 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_189 = var_51_19.startgold.x
		local var_51_190 = var_51_19.startgold.y
		local var_51_191 = var_51_19.comebackgold.x
		local var_51_192 = var_51_19.comebackgold.y
		local var_51_193 = var_51_29.unlockLineProgress
		local var_51_194 = var_51_189 + (var_51_191 - var_51_189) * var_51_193
		local var_51_195 = var_51_190 + (var_51_192 - var_51_190) * var_51_193
		local var_51_196, var_51_197 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_198 = 0.18
		local var_51_199 = 6
		local var_51_200 = 10
		local var_51_201 = 2.3

		for iter_51_14 = 1, var_51_200 do
			local var_51_202 = (iter_51_14 - 0.5) / var_51_200
			local var_51_203 = var_51_199 * var_51_202^1.05
			local var_51_204 = var_51_198 * math.exp(-var_51_202 * var_51_201) * 0.7

			love.graphics.setColor(var_51_185[1], var_51_185[2], var_51_185[3], var_51_204)
			love.graphics.setLineWidth(2 + var_51_203 * 1.2)
			love.graphics.line(var_51_189, var_51_190, var_51_194, var_51_195)
		end

		love.graphics.setBlendMode(var_51_196 or "alpha", var_51_197 or "alphamultiply")
		love.graphics.setColor(var_51_185[1], var_51_185[2], var_51_185[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_189, var_51_190, var_51_194, var_51_195)
		love.graphics.setLineWidth(1)
	end

	if (var_51_32 or var_51_31.isDisappearing) and var_51_31.unlockLineProgress > 0 then
		local var_51_205 = {
			1,
			1,
			1,
			1
		}
		local var_51_206 = var_0_87.maxhp2
		local var_51_207 = var_51_206 and var_51_206.maxed or false
		local var_51_208 = var_51_206 and var_51_32 and arg_51_1 >= var_51_206.cost

		if var_51_207 then
			var_51_205 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_208 then
			var_51_205 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_205 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_209 = var_51_19.comebackgold.x
		local var_51_210 = var_51_19.comebackgold.y
		local var_51_211 = var_51_19.maxhp2.x
		local var_51_212 = var_51_19.maxhp2.y
		local var_51_213 = var_51_31.unlockLineProgress
		local var_51_214 = var_51_209 + (var_51_211 - var_51_209) * var_51_213
		local var_51_215 = var_51_210 + (var_51_212 - var_51_210) * var_51_213
		local var_51_216, var_51_217 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_218 = 0.18
		local var_51_219 = 6
		local var_51_220 = 10
		local var_51_221 = 2.3

		for iter_51_15 = 1, var_51_220 do
			local var_51_222 = (iter_51_15 - 0.5) / var_51_220
			local var_51_223 = var_51_219 * var_51_222^1.05
			local var_51_224 = var_51_218 * math.exp(-var_51_222 * var_51_221) * 0.7

			love.graphics.setColor(var_51_205[1], var_51_205[2], var_51_205[3], var_51_224)
			love.graphics.setLineWidth(2 + var_51_223 * 1.2)
			love.graphics.line(var_51_209, var_51_210, var_51_214, var_51_215)
		end

		love.graphics.setBlendMode(var_51_216 or "alpha", var_51_217 or "alphamultiply")
		love.graphics.setColor(var_51_205[1], var_51_205[2], var_51_205[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_209, var_51_210, var_51_214, var_51_215)
		love.graphics.setLineWidth(1)
	end

	if (var_51_30 or var_51_33.isDisappearing) and var_51_33.unlockLineProgress > 0 then
		local var_51_225 = {
			1,
			1,
			1,
			1
		}
		local var_51_226 = var_0_87.startgold2
		local var_51_227 = var_51_226 and var_51_226.maxed or false
		local var_51_228 = var_51_226 and var_51_30 and arg_51_1 >= var_51_226.cost

		if var_51_227 then
			var_51_225 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_228 then
			var_51_225 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_225 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_229 = var_51_19.startgold.x
		local var_51_230 = var_51_19.startgold.y
		local var_51_231 = var_51_19.startgold2.x
		local var_51_232 = var_51_19.startgold2.y
		local var_51_233 = var_51_33.unlockLineProgress
		local var_51_234 = var_51_229 + (var_51_231 - var_51_229) * var_51_233
		local var_51_235 = var_51_230 + (var_51_232 - var_51_230) * var_51_233
		local var_51_236, var_51_237 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_238 = 0.18
		local var_51_239 = 6
		local var_51_240 = 10
		local var_51_241 = 2.3

		for iter_51_16 = 1, var_51_240 do
			local var_51_242 = (iter_51_16 - 0.5) / var_51_240
			local var_51_243 = var_51_239 * var_51_242^1.05
			local var_51_244 = var_51_238 * math.exp(-var_51_242 * var_51_241) * 0.7

			love.graphics.setColor(var_51_225[1], var_51_225[2], var_51_225[3], var_51_244)
			love.graphics.setLineWidth(2 + var_51_243 * 1.2)
			love.graphics.line(var_51_229, var_51_230, var_51_234, var_51_235)
		end

		love.graphics.setBlendMode(var_51_236 or "alpha", var_51_237 or "alphamultiply")
		love.graphics.setColor(var_51_225[1], var_51_225[2], var_51_225[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_229, var_51_230, var_51_234, var_51_235)
		love.graphics.setLineWidth(1)
	end

	local var_51_245 = var_0_67("maxunit")

	if (var_51_20 or var_51_245.isDisappearing) and var_51_245.unlockLineProgress > 0 then
		local var_51_246 = {
			1,
			1,
			1,
			1
		}
		local var_51_247 = var_0_87.maxunit
		local var_51_248 = var_51_247.maxed or false
		local var_51_249 = arg_51_1 >= var_51_247.cost

		if var_51_248 then
			var_51_246 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_249 then
			var_51_246 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_246 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_250 = var_51_19.slotodds.x
		local var_51_251 = var_51_19.slotodds.y
		local var_51_252 = var_51_19.maxunit.x
		local var_51_253 = var_51_19.maxunit.y
		local var_51_254 = var_51_245.unlockLineProgress
		local var_51_255 = var_51_250 + (var_51_252 - var_51_250) * var_51_254
		local var_51_256 = var_51_251 + (var_51_253 - var_51_251) * var_51_254
		local var_51_257, var_51_258 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_259 = 0.18
		local var_51_260 = 0
		local var_51_261 = 0
		local var_51_262 = 6
		local var_51_263 = 10
		local var_51_264 = 2.3
		local var_51_265 = var_51_259 + var_51_260 * 1

		for iter_51_17 = 1, var_51_263 do
			local var_51_266 = (iter_51_17 - 0.5) / var_51_263
			local var_51_267 = var_51_262 * var_51_266^1.05
			local var_51_268 = var_51_265 * math.exp(-var_51_266 * var_51_264) * 0.7

			love.graphics.setColor(var_51_246[1], var_51_246[2], var_51_246[3], var_51_268)
			love.graphics.setLineWidth(2 + var_51_267 * 1.2)
			love.graphics.line(var_51_250, var_51_251, var_51_255, var_51_256)
		end

		love.graphics.setBlendMode(var_51_257 or "alpha", var_51_258 or "alphamultiply")
		love.graphics.setColor(var_51_246[1], var_51_246[2], var_51_246[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_250, var_51_251, var_51_255, var_51_256)
		love.graphics.setLineWidth(1)
	end

	if (var_51_34 or var_51_35.isDisappearing) and var_51_35.unlockLineProgress > 0 then
		local var_51_269 = {
			1,
			1,
			1,
			1
		}
		local var_51_270 = var_0_87.maxunit2
		local var_51_271 = var_51_270 and var_51_270.maxed or false
		local var_51_272 = var_51_270 and var_51_34 and arg_51_1 >= var_51_270.cost

		if var_51_271 then
			var_51_269 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_272 then
			var_51_269 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_269 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_273 = var_51_19.maxunit.x
		local var_51_274 = var_51_19.maxunit.y
		local var_51_275 = var_51_19.maxunit2.x
		local var_51_276 = var_51_19.maxunit2.y
		local var_51_277 = var_51_35.unlockLineProgress
		local var_51_278 = var_51_273 + (var_51_275 - var_51_273) * var_51_277
		local var_51_279 = var_51_274 + (var_51_276 - var_51_274) * var_51_277
		local var_51_280, var_51_281 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_282 = 0.18
		local var_51_283 = 6
		local var_51_284 = 10
		local var_51_285 = 2.3

		for iter_51_18 = 1, var_51_284 do
			local var_51_286 = (iter_51_18 - 0.5) / var_51_284
			local var_51_287 = var_51_283 * var_51_286^1.05
			local var_51_288 = var_51_282 * math.exp(-var_51_286 * var_51_285) * 0.7

			love.graphics.setColor(var_51_269[1], var_51_269[2], var_51_269[3], var_51_288)
			love.graphics.setLineWidth(2 + var_51_287 * 1.2)
			love.graphics.line(var_51_273, var_51_274, var_51_278, var_51_279)
		end

		love.graphics.setBlendMode(var_51_280 or "alpha", var_51_281 or "alphamultiply")
		love.graphics.setColor(var_51_269[1], var_51_269[2], var_51_269[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_273, var_51_274, var_51_278, var_51_279)
		love.graphics.setLineWidth(1)
	end

	if (var_51_37 or var_51_36.isDisappearing) and var_51_36.unlockLineProgress > 0 then
		local var_51_289 = {
			1,
			1,
			1,
			1
		}
		local var_51_290 = var_0_87.maxunit3
		local var_51_291 = var_51_290 and var_51_290.maxed or false
		local var_51_292 = var_51_290 and var_51_37 and arg_51_1 >= var_51_290.cost

		if var_51_291 then
			var_51_289 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_292 then
			var_51_289 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_289 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_293 = var_51_19.maxunit2.x
		local var_51_294 = var_51_19.maxunit2.y
		local var_51_295 = var_51_19.maxunit3.x
		local var_51_296 = var_51_19.maxunit3.y
		local var_51_297 = var_51_36.unlockLineProgress
		local var_51_298 = var_51_293 + (var_51_295 - var_51_293) * var_51_297
		local var_51_299 = var_51_294 + (var_51_296 - var_51_294) * var_51_297
		local var_51_300, var_51_301 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_302 = 0.18
		local var_51_303 = 6
		local var_51_304 = 10
		local var_51_305 = 2.3

		for iter_51_19 = 1, var_51_304 do
			local var_51_306 = (iter_51_19 - 0.5) / var_51_304
			local var_51_307 = var_51_303 * var_51_306^1.05
			local var_51_308 = var_51_302 * math.exp(-var_51_306 * var_51_305) * 0.7

			love.graphics.setColor(var_51_289[1], var_51_289[2], var_51_289[3], var_51_308)
			love.graphics.setLineWidth(2 + var_51_307 * 1.2)
			love.graphics.line(var_51_293, var_51_294, var_51_298, var_51_299)
		end

		love.graphics.setBlendMode(var_51_300 or "alpha", var_51_301 or "alphamultiply")
		love.graphics.setColor(var_51_289[1], var_51_289[2], var_51_289[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_293, var_51_294, var_51_298, var_51_299)
		love.graphics.setLineWidth(1)
	end

	local var_51_309 = var_0_67("slotnudge")

	if (var_51_34 or var_51_309.isDisappearing) and var_51_309.unlockLineProgress > 0 then
		local var_51_310 = {
			1,
			1,
			1,
			1
		}
		local var_51_311 = var_0_87.slotnudge
		local var_51_312 = var_51_311 and var_51_311.maxed or false
		local var_51_313 = var_51_311 and var_51_34 and arg_51_1 >= var_51_311.cost

		if var_51_312 then
			var_51_310 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_313 then
			var_51_310 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_310 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_314 = var_51_19.maxunit.x
		local var_51_315 = var_51_19.maxunit.y
		local var_51_316 = var_51_19.slotnudge.x
		local var_51_317 = var_51_19.slotnudge.y
		local var_51_318 = var_51_309.unlockLineProgress
		local var_51_319 = var_51_314 + (var_51_316 - var_51_314) * var_51_318
		local var_51_320 = var_51_315 + (var_51_317 - var_51_315) * var_51_318
		local var_51_321, var_51_322 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_323 = 0.18
		local var_51_324 = 0
		local var_51_325 = 0
		local var_51_326 = 6
		local var_51_327 = 10
		local var_51_328 = 2.3
		local var_51_329 = var_51_323 + var_51_324 * 1

		for iter_51_20 = 1, var_51_327 do
			local var_51_330 = (iter_51_20 - 0.5) / var_51_327
			local var_51_331 = var_51_326 * var_51_330^1.05
			local var_51_332 = var_51_329 * math.exp(-var_51_330 * var_51_328) * 0.7

			love.graphics.setColor(var_51_310[1], var_51_310[2], var_51_310[3], var_51_332)
			love.graphics.setLineWidth(2 + var_51_331 * 1.2)
			love.graphics.line(var_51_314, var_51_315, var_51_319, var_51_320)
		end

		love.graphics.setBlendMode(var_51_321 or "alpha", var_51_322 or "alphamultiply")
		love.graphics.setColor(var_51_310[1], var_51_310[2], var_51_310[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_314, var_51_315, var_51_319, var_51_320)
		love.graphics.setLineWidth(1)
	end

	if false and (var_51_34 or var_51_38.isDisappearing) and var_51_38.unlockLineProgress > 0 then
		local var_51_333 = {
			1,
			1,
			1,
			1
		}
		local var_51_334 = var_0_87.preptime
		local var_51_335 = var_51_334 and var_51_334.maxed or false
		local var_51_336 = var_51_334 and var_51_34 and arg_51_1 >= var_51_334.cost

		if var_51_335 then
			var_51_333 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_336 then
			var_51_333 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_333 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_337 = var_51_19.maxunit.x
		local var_51_338 = var_51_19.maxunit.y
		local var_51_339 = var_51_19.preptime.x
		local var_51_340 = var_51_19.preptime.y
		local var_51_341 = var_51_38.unlockLineProgress
		local var_51_342 = var_51_337 + (var_51_339 - var_51_337) * var_51_341
		local var_51_343 = var_51_338 + (var_51_340 - var_51_338) * var_51_341
		local var_51_344, var_51_345 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_346 = 0.18
		local var_51_347 = 6
		local var_51_348 = 10
		local var_51_349 = 2.3

		for iter_51_21 = 1, var_51_348 do
			local var_51_350 = (iter_51_21 - 0.5) / var_51_348
			local var_51_351 = var_51_347 * var_51_350^1.05
			local var_51_352 = var_51_346 * math.exp(-var_51_350 * var_51_349) * 0.7

			love.graphics.setColor(var_51_333[1], var_51_333[2], var_51_333[3], var_51_352)
			love.graphics.setLineWidth(2 + var_51_351 * 1.2)
			love.graphics.line(var_51_337, var_51_338, var_51_342, var_51_343)
		end

		love.graphics.setBlendMode(var_51_344 or "alpha", var_51_345 or "alphamultiply")
		love.graphics.setColor(var_51_333[1], var_51_333[2], var_51_333[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_337, var_51_338, var_51_342, var_51_343)
		love.graphics.setLineWidth(1)
	end

	if (var_51_34 or var_51_39.isDisappearing) and var_51_39.unlockLineProgress > 0 then
		local var_51_353 = {
			1,
			1,
			1,
			1
		}
		local var_51_354 = var_0_87.interest
		local var_51_355 = var_51_354 and var_51_354.maxed or false
		local var_51_356 = var_51_354 and var_51_34 and arg_51_1 >= var_51_354.cost

		if var_51_355 then
			var_51_353 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_356 then
			var_51_353 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_353 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_357 = var_51_19.maxunit.x
		local var_51_358 = var_51_19.maxunit.y
		local var_51_359 = var_51_19.interest.x
		local var_51_360 = var_51_19.interest.y
		local var_51_361 = var_51_39.unlockLineProgress
		local var_51_362 = var_51_357 + (var_51_359 - var_51_357) * var_51_361
		local var_51_363 = var_51_358 + (var_51_360 - var_51_358) * var_51_361
		local var_51_364, var_51_365 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_366 = 0.18
		local var_51_367 = 6
		local var_51_368 = 10
		local var_51_369 = 2.3

		for iter_51_22 = 1, var_51_368 do
			local var_51_370 = (iter_51_22 - 0.5) / var_51_368
			local var_51_371 = var_51_367 * var_51_370^1.05
			local var_51_372 = var_51_366 * math.exp(-var_51_370 * var_51_369) * 0.7

			love.graphics.setColor(var_51_353[1], var_51_353[2], var_51_353[3], var_51_372)
			love.graphics.setLineWidth(2 + var_51_371 * 1.2)
			love.graphics.line(var_51_357, var_51_358, var_51_362, var_51_363)
		end

		love.graphics.setBlendMode(var_51_364 or "alpha", var_51_365 or "alphamultiply")
		love.graphics.setColor(var_51_353[1], var_51_353[2], var_51_353[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_357, var_51_358, var_51_362, var_51_363)
		love.graphics.setLineWidth(1)
	end

	for iter_51_23, iter_51_24 in ipairs({
		{
			"interest",
			"dormantpower"
		},
		{
			"dormantpower",
			"growthbranch"
		},
		{
			"growthbranch",
			"factionsynergy"
		}
	}) do
		local var_51_373 = var_0_67(iter_51_24[2])
		local var_51_374 = var_0_87[iter_51_24[1]].maxed == true

		if (var_51_374 or var_51_373.isDisappearing) and var_51_373.unlockLineProgress > 0 then
			local var_51_375 = var_0_87[iter_51_24[2]]
			local var_51_376 = var_51_375.maxed and "#6FAACC" or var_51_374 and arg_51_1 >= var_51_375.cost and "#5FAF6F" or "#A84F5A"
			local var_51_377, var_51_378, var_51_379 = var_0_80(var_51_376)
			local var_51_380 = var_51_19[iter_51_24[1]]
			local var_51_381 = var_51_19[iter_51_24[2]]
			local var_51_382 = var_51_373.unlockLineProgress
			local var_51_383 = var_51_380.x + (var_51_381.x - var_51_380.x) * var_51_382
			local var_51_384 = var_51_380.y + (var_51_381.y - var_51_380.y) * var_51_382
			local var_51_385, var_51_386 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add", "alphamultiply")

			local var_51_387 = 0.18
			local var_51_388 = 6
			local var_51_389 = 10
			local var_51_390 = 2.3

			for iter_51_25 = 1, var_51_389 do
				local var_51_391 = (iter_51_25 - 0.5) / var_51_389
				local var_51_392 = var_51_388 * var_51_391^1.05
				local var_51_393 = var_51_387 * math.exp(-var_51_391 * var_51_390) * 0.7

				love.graphics.setColor(var_51_377, var_51_378, var_51_379, var_51_393)
				love.graphics.setLineWidth(2 + var_51_392 * 1.2)
				love.graphics.line(var_51_380.x, var_51_380.y, var_51_383, var_51_384)
			end

			love.graphics.setBlendMode(var_51_385 or "alpha", var_51_386 or "alphamultiply")
			love.graphics.setColor(var_51_377, var_51_378, var_51_379, 1)
			love.graphics.setLineWidth(2)
			love.graphics.line(var_51_380.x, var_51_380.y, var_51_383, var_51_384)
			love.graphics.setLineWidth(1)
		end
	end

	for iter_51_26, iter_51_27 in pairs(var_0_87) do
		local var_51_394 = iter_51_27.parent
		local var_51_395 = var_51_394 and var_0_67(iter_51_26)
		local var_51_396 = var_51_394 and var_0_87[var_51_394] and var_0_87[var_51_394].maxed == true

		if var_51_395 and (var_51_396 or var_51_395.isDisappearing) and var_51_395.unlockLineProgress > 0 then
			local var_51_397 = iter_51_27.maxed and "#6FAACC" or var_51_396 and var_0_93(iter_51_26) and arg_51_1 >= iter_51_27.cost and "#5FAF6F" or "#A84F5A"
			local var_51_398, var_51_399, var_51_400 = var_0_80(var_51_397)
			local var_51_401 = var_51_19[var_51_394]
			local var_51_402 = var_51_19[iter_51_26]
			local var_51_403 = var_51_395.unlockLineProgress
			local var_51_404 = var_51_401.x + (var_51_402.x - var_51_401.x) * var_51_403
			local var_51_405 = var_51_401.y + (var_51_402.y - var_51_401.y) * var_51_403
			local var_51_406, var_51_407 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add", "alphamultiply")

			for iter_51_28 = 1, 10 do
				local var_51_408 = (iter_51_28 - 0.5) / 10
				local var_51_409 = 6 * var_51_408^1.05

				love.graphics.setColor(var_51_398, var_51_399, var_51_400, 0.18 * math.exp(-var_51_408 * 2.3) * 0.7)
				love.graphics.setLineWidth(2 + var_51_409 * 1.2)
				love.graphics.line(var_51_401.x, var_51_401.y, var_51_404, var_51_405)
			end

			love.graphics.setBlendMode(var_51_406 or "alpha", var_51_407 or "alphamultiply")
			love.graphics.setColor(var_51_398, var_51_399, var_51_400, 1)
			love.graphics.setLineWidth(2)
			love.graphics.line(var_51_401.x, var_51_401.y, var_51_404, var_51_405)
			love.graphics.setLineWidth(1)
		end
	end

	if false and var_51_40.isDisappearing and var_51_40.unlockLineProgress > 0 then
		local var_51_410 = {
			1,
			1,
			1,
			1
		}
		local var_51_411 = var_0_87.preptime2
		local var_51_412 = var_51_411 and var_51_411.maxed or false
		local var_51_413 = var_51_411 and prepTimePurchased and arg_51_1 >= var_51_411.cost

		if var_51_412 then
			var_51_410 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_413 then
			var_51_410 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_410 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_414 = var_51_19.preptime.x
		local var_51_415 = var_51_19.preptime.y
		local var_51_416 = var_51_19.preptime2.x
		local var_51_417 = var_51_19.preptime2.y
		local var_51_418 = var_51_40.unlockLineProgress
		local var_51_419 = var_51_414 + (var_51_416 - var_51_414) * var_51_418
		local var_51_420 = var_51_415 + (var_51_417 - var_51_415) * var_51_418
		local var_51_421, var_51_422 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_423 = 0.18
		local var_51_424 = 6
		local var_51_425 = 10
		local var_51_426 = 2.3

		for iter_51_29 = 1, var_51_425 do
			local var_51_427 = (iter_51_29 - 0.5) / var_51_425
			local var_51_428 = var_51_424 * var_51_427^1.05
			local var_51_429 = var_51_423 * math.exp(-var_51_427 * var_51_426) * 0.7

			love.graphics.setColor(var_51_410[1], var_51_410[2], var_51_410[3], var_51_429)
			love.graphics.setLineWidth(2 + var_51_428 * 1.2)
			love.graphics.line(var_51_414, var_51_415, var_51_419, var_51_420)
		end

		love.graphics.setBlendMode(var_51_421 or "alpha", var_51_422 or "alphamultiply")
		love.graphics.setColor(var_51_410[1], var_51_410[2], var_51_410[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_414, var_51_415, var_51_419, var_51_420)
		love.graphics.setLineWidth(1)
	end

	if false and var_51_41.isDisappearing and var_51_41.unlockLineProgress > 0 then
		local var_51_430 = {
			1,
			1,
			1,
			1
		}
		local var_51_431 = var_0_87.preptimerdisabled
		local var_51_432 = var_51_431 and var_51_431.maxed or false
		local var_51_433 = var_51_431 and prepTime2Purchased and arg_51_1 >= var_51_431.cost

		if var_51_432 then
			var_51_430 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_433 then
			var_51_430 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_430 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_434 = var_51_19.preptime2.x
		local var_51_435 = var_51_19.preptime2.y
		local var_51_436 = var_51_19.preptimerdisabled.x
		local var_51_437 = var_51_19.preptimerdisabled.y
		local var_51_438 = var_51_41.unlockLineProgress
		local var_51_439 = var_51_434 + (var_51_436 - var_51_434) * var_51_438
		local var_51_440 = var_51_435 + (var_51_437 - var_51_435) * var_51_438
		local var_51_441, var_51_442 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_443 = 0.18
		local var_51_444 = 6
		local var_51_445 = 10
		local var_51_446 = 2.3

		for iter_51_30 = 1, var_51_445 do
			local var_51_447 = (iter_51_30 - 0.5) / var_51_445
			local var_51_448 = var_51_444 * var_51_447^1.05
			local var_51_449 = var_51_443 * math.exp(-var_51_447 * var_51_446) * 0.7

			love.graphics.setColor(var_51_430[1], var_51_430[2], var_51_430[3], var_51_449)
			love.graphics.setLineWidth(2 + var_51_448 * 1.2)
			love.graphics.line(var_51_434, var_51_435, var_51_439, var_51_440)
		end

		love.graphics.setBlendMode(var_51_441 or "alpha", var_51_442 or "alphamultiply")
		love.graphics.setColor(var_51_430[1], var_51_430[2], var_51_430[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_434, var_51_435, var_51_439, var_51_440)
		love.graphics.setLineWidth(1)
	end

	local var_51_450 = var_0_67("slotadvanced")
	local var_51_451 = var_51_20

	if (var_51_451 or var_51_450.isDisappearing) and var_51_450.unlockLineProgress > 0 then
		local var_51_452 = {
			1,
			1,
			1,
			1
		}
		local var_51_453 = var_0_87.slotadvanced
		local var_51_454 = var_51_453 and var_51_453.maxed or false
		local var_51_455 = var_51_453 and var_0_93("slotadvanced") and arg_51_1 >= var_51_453.cost

		if var_51_454 then
			var_51_452 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_455 then
			var_51_452 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_452 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_456 = var_51_19.slotodds.x
		local var_51_457 = var_51_19.slotodds.y
		local var_51_458 = var_51_19.slotadvanced.x
		local var_51_459 = var_51_19.slotadvanced.y
		local var_51_460 = var_51_450.unlockLineProgress
		local var_51_461 = var_51_456 + (var_51_458 - var_51_456) * var_51_460
		local var_51_462 = var_51_457 + (var_51_459 - var_51_457) * var_51_460
		local var_51_463, var_51_464 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_465 = 0.18
		local var_51_466 = 6
		local var_51_467 = 10
		local var_51_468 = 2.3

		for iter_51_31 = 1, var_51_467 do
			local var_51_469 = (iter_51_31 - 0.5) / var_51_467
			local var_51_470 = var_51_466 * var_51_469^1.05
			local var_51_471 = var_51_465 * math.exp(-var_51_469 * var_51_468) * 0.7

			love.graphics.setColor(var_51_452[1], var_51_452[2], var_51_452[3], var_51_471)
			love.graphics.setLineWidth(2 + var_51_470 * 1.2)
			love.graphics.line(var_51_456, var_51_457, var_51_461, var_51_462)
		end

		love.graphics.setBlendMode(var_51_463 or "alpha", var_51_464 or "alphamultiply")
		love.graphics.setColor(var_51_452[1], var_51_452[2], var_51_452[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_456, var_51_457, var_51_461, var_51_462)
		love.graphics.setLineWidth(1)
	end

	if (var_51_43 or var_51_44.isDisappearing) and var_51_44.unlockLineProgress > 0 then
		local var_51_472 = {
			1,
			1,
			1,
			1
		}
		local var_51_473 = var_0_87.corereroll
		local var_51_474 = var_51_473 and var_51_473.maxed or false
		local var_51_475 = var_51_473 and var_51_43 and arg_51_1 >= var_51_473.cost

		if var_51_474 then
			var_51_472 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_475 then
			var_51_472 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_472 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_476 = var_51_19.slotadvanced.x
		local var_51_477 = var_51_19.slotadvanced.y
		local var_51_478 = var_51_19.corereroll.x
		local var_51_479 = var_51_19.corereroll.y
		local var_51_480 = var_51_44.unlockLineProgress
		local var_51_481 = var_51_476 + (var_51_478 - var_51_476) * var_51_480
		local var_51_482 = var_51_477 + (var_51_479 - var_51_477) * var_51_480
		local var_51_483, var_51_484 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_485 = 0.18
		local var_51_486 = 6
		local var_51_487 = 10
		local var_51_488 = 2.3

		for iter_51_32 = 1, var_51_487 do
			local var_51_489 = (iter_51_32 - 0.5) / var_51_487
			local var_51_490 = var_51_486 * var_51_489^1.05
			local var_51_491 = var_51_485 * math.exp(-var_51_489 * var_51_488) * 0.7

			love.graphics.setColor(var_51_472[1], var_51_472[2], var_51_472[3], var_51_491)
			love.graphics.setLineWidth(2 + var_51_490 * 1.2)
			love.graphics.line(var_51_476, var_51_477, var_51_481, var_51_482)
		end

		love.graphics.setBlendMode(var_51_483 or "alpha", var_51_484 or "alphamultiply")
		love.graphics.setColor(var_51_472[1], var_51_472[2], var_51_472[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_476, var_51_477, var_51_481, var_51_482)
		love.graphics.setLineWidth(1)
	end

	if (var_51_46 or var_51_45.isDisappearing) and var_51_45.unlockLineProgress > 0 then
		local var_51_492 = {
			1,
			1,
			1,
			1
		}
		local var_51_493 = var_0_87.firstcorespin
		local var_51_494 = var_51_493 and var_51_493.maxed or false
		local var_51_495 = var_51_493 and var_51_46 and arg_51_1 >= var_51_493.cost

		if var_51_494 then
			var_51_492 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_495 then
			var_51_492 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_492 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_496 = var_51_19.corereroll.x
		local var_51_497 = var_51_19.corereroll.y
		local var_51_498 = var_51_19.firstcorespin.x
		local var_51_499 = var_51_19.firstcorespin.y
		local var_51_500 = var_51_45.unlockLineProgress
		local var_51_501 = var_51_496 + (var_51_498 - var_51_496) * var_51_500
		local var_51_502 = var_51_497 + (var_51_499 - var_51_497) * var_51_500
		local var_51_503, var_51_504 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_505 = 0.18
		local var_51_506 = 6
		local var_51_507 = 10
		local var_51_508 = 2.3

		for iter_51_33 = 1, var_51_507 do
			local var_51_509 = (iter_51_33 - 0.5) / var_51_507
			local var_51_510 = var_51_506 * var_51_509^1.05
			local var_51_511 = var_51_505 * math.exp(-var_51_509 * var_51_508) * 0.7

			love.graphics.setColor(var_51_492[1], var_51_492[2], var_51_492[3], var_51_511)
			love.graphics.setLineWidth(2 + var_51_510 * 1.2)
			love.graphics.line(var_51_496, var_51_497, var_51_501, var_51_502)
		end

		love.graphics.setBlendMode(var_51_503 or "alpha", var_51_504 or "alphamultiply")
		love.graphics.setColor(var_51_492[1], var_51_492[2], var_51_492[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_496, var_51_497, var_51_501, var_51_502)
		love.graphics.setLineWidth(1)
	end

	if (var_51_48 or var_51_47.isDisappearing) and var_51_47.unlockLineProgress > 0 then
		local var_51_512 = {
			1,
			1,
			1,
			1
		}
		local var_51_513 = var_0_87.firstcoreuncommon
		local var_51_514 = var_51_513 and var_51_513.maxed or false
		local var_51_515 = var_51_513 and var_51_48 and arg_51_1 >= var_51_513.cost

		if var_51_514 then
			var_51_512 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_515 then
			var_51_512 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_512 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_516 = var_51_19.firstcorespin.x
		local var_51_517 = var_51_19.firstcorespin.y
		local var_51_518 = var_51_19.firstcoreuncommon.x
		local var_51_519 = var_51_19.firstcoreuncommon.y
		local var_51_520 = var_51_47.unlockLineProgress
		local var_51_521 = var_51_516 + (var_51_518 - var_51_516) * var_51_520
		local var_51_522 = var_51_517 + (var_51_519 - var_51_517) * var_51_520
		local var_51_523, var_51_524 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_525 = 0.18
		local var_51_526 = 6
		local var_51_527 = 10
		local var_51_528 = 2.3

		for iter_51_34 = 1, var_51_527 do
			local var_51_529 = (iter_51_34 - 0.5) / var_51_527
			local var_51_530 = var_51_526 * var_51_529^1.05
			local var_51_531 = var_51_525 * math.exp(-var_51_529 * var_51_528) * 0.7

			love.graphics.setColor(var_51_512[1], var_51_512[2], var_51_512[3], var_51_531)
			love.graphics.setLineWidth(2 + var_51_530 * 1.2)
			love.graphics.line(var_51_516, var_51_517, var_51_521, var_51_522)
		end

		love.graphics.setBlendMode(var_51_523 or "alpha", var_51_524 or "alphamultiply")
		love.graphics.setColor(var_51_512[1], var_51_512[2], var_51_512[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_516, var_51_517, var_51_521, var_51_522)
		love.graphics.setLineWidth(1)
	end

	if (var_51_43 or var_51_49.isDisappearing) and var_51_49.unlockLineProgress > 0 then
		local var_51_532 = {
			1,
			1,
			1,
			1
		}
		local var_51_533 = var_0_87.shopreroll
		local var_51_534 = var_51_533 and var_51_533.maxed or false
		local var_51_535 = var_51_533 and var_51_43 and arg_51_1 >= var_51_533.cost

		if var_51_534 then
			var_51_532 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_535 then
			var_51_532 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_532 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_536 = var_51_19.slotadvanced.x
		local var_51_537 = var_51_19.slotadvanced.y
		local var_51_538 = var_51_19.shopreroll.x
		local var_51_539 = var_51_19.shopreroll.y
		local var_51_540 = var_51_49.unlockLineProgress
		local var_51_541 = var_51_536 + (var_51_538 - var_51_536) * var_51_540
		local var_51_542 = var_51_537 + (var_51_539 - var_51_537) * var_51_540
		local var_51_543, var_51_544 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_545 = 0.18
		local var_51_546 = 6
		local var_51_547 = 10
		local var_51_548 = 2.3

		for iter_51_35 = 1, var_51_547 do
			local var_51_549 = (iter_51_35 - 0.5) / var_51_547
			local var_51_550 = var_51_546 * var_51_549^1.05
			local var_51_551 = var_51_545 * math.exp(-var_51_549 * var_51_548) * 0.7

			love.graphics.setColor(var_51_532[1], var_51_532[2], var_51_532[3], var_51_551)
			love.graphics.setLineWidth(2 + var_51_550 * 1.2)
			love.graphics.line(var_51_536, var_51_537, var_51_541, var_51_542)
		end

		love.graphics.setBlendMode(var_51_543 or "alpha", var_51_544 or "alphamultiply")
		love.graphics.setColor(var_51_532[1], var_51_532[2], var_51_532[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_536, var_51_537, var_51_541, var_51_542)
		love.graphics.setLineWidth(1)
	end

	if (var_51_51 or var_51_56.isDisappearing) and var_51_56.unlockLineProgress > 0 then
		local var_51_552 = {
			1,
			1,
			1,
			1
		}
		local var_51_553 = var_0_87.shoppin
		local var_51_554 = var_51_553 and var_51_553.maxed or false
		local var_51_555 = var_51_553 and var_51_51 and var_0_93("shoppin") and arg_51_1 >= var_51_553.cost

		if var_51_554 then
			var_51_552 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_555 then
			var_51_552 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_552 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_556 = var_51_19.shopreroll.x
		local var_51_557 = var_51_19.shopreroll.y
		local var_51_558 = var_51_19.shoppin.x
		local var_51_559 = var_51_19.shoppin.y
		local var_51_560 = var_51_56.unlockLineProgress
		local var_51_561 = var_51_556 + (var_51_558 - var_51_556) * var_51_560
		local var_51_562 = var_51_557 + (var_51_559 - var_51_557) * var_51_560
		local var_51_563, var_51_564 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_565 = 0.18
		local var_51_566 = 6
		local var_51_567 = 10
		local var_51_568 = 2.3

		for iter_51_36 = 1, var_51_567 do
			local var_51_569 = (iter_51_36 - 0.5) / var_51_567
			local var_51_570 = var_51_566 * var_51_569^1.05
			local var_51_571 = var_51_565 * math.exp(-var_51_569 * var_51_568) * 0.7

			love.graphics.setColor(var_51_552[1], var_51_552[2], var_51_552[3], var_51_571)
			love.graphics.setLineWidth(2 + var_51_570 * 1.2)
			love.graphics.line(var_51_556, var_51_557, var_51_561, var_51_562)
		end

		love.graphics.setBlendMode(var_51_563 or "alpha", var_51_564 or "alphamultiply")
		love.graphics.setColor(var_51_552[1], var_51_552[2], var_51_552[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_556, var_51_557, var_51_561, var_51_562)
		love.graphics.setLineWidth(1)
	end

	if (var_51_51 or var_51_55.isDisappearing) and var_51_55.unlockLineProgress > 0 then
		local var_51_572 = {
			1,
			1,
			1,
			1
		}
		local var_51_573 = var_0_87.itemresearch
		local var_51_574 = var_51_573 and var_51_573.maxed or false
		local var_51_575 = var_51_573 and var_51_51 and var_0_93("itemresearch") and arg_51_1 >= var_51_573.cost

		if var_51_574 then
			var_51_572 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_575 then
			var_51_572 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_572 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_576 = var_51_19.shopreroll.x
		local var_51_577 = var_51_19.shopreroll.y
		local var_51_578 = var_51_19.itemresearch.x
		local var_51_579 = var_51_19.itemresearch.y
		local var_51_580 = var_51_55.unlockLineProgress
		local var_51_581 = var_51_576 + (var_51_578 - var_51_576) * var_51_580
		local var_51_582 = var_51_577 + (var_51_579 - var_51_577) * var_51_580
		local var_51_583, var_51_584 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_585 = 0.18
		local var_51_586 = 6
		local var_51_587 = 10
		local var_51_588 = 2.3

		for iter_51_37 = 1, var_51_587 do
			local var_51_589 = (iter_51_37 - 0.5) / var_51_587
			local var_51_590 = var_51_586 * var_51_589^1.05
			local var_51_591 = var_51_585 * math.exp(-var_51_589 * var_51_588) * 0.7

			love.graphics.setColor(var_51_572[1], var_51_572[2], var_51_572[3], var_51_591)
			love.graphics.setLineWidth(2 + var_51_590 * 1.2)
			love.graphics.line(var_51_576, var_51_577, var_51_581, var_51_582)
		end

		love.graphics.setBlendMode(var_51_583 or "alpha", var_51_584 or "alphamultiply")
		love.graphics.setColor(var_51_572[1], var_51_572[2], var_51_572[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_576, var_51_577, var_51_581, var_51_582)
		love.graphics.setLineWidth(1)
	end

	if (var_51_51 or var_51_50.isDisappearing) and var_51_50.unlockLineProgress > 0 then
		local var_51_592 = {
			1,
			1,
			1,
			1
		}
		local var_51_593 = var_0_87.iteminventory
		local var_51_594 = var_51_593 and var_51_593.maxed or false
		local var_51_595 = var_51_593 and var_51_51 and arg_51_1 >= var_51_593.cost

		if var_51_594 then
			var_51_592 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_595 then
			var_51_592 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_592 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_596 = var_51_19.shopreroll.x
		local var_51_597 = var_51_19.shopreroll.y
		local var_51_598 = var_51_19.iteminventory.x
		local var_51_599 = var_51_19.iteminventory.y
		local var_51_600 = var_51_50.unlockLineProgress
		local var_51_601 = var_51_596 + (var_51_598 - var_51_596) * var_51_600
		local var_51_602 = var_51_597 + (var_51_599 - var_51_597) * var_51_600
		local var_51_603, var_51_604 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_605 = 0.18
		local var_51_606 = 6
		local var_51_607 = 10
		local var_51_608 = 2.3

		for iter_51_38 = 1, var_51_607 do
			local var_51_609 = (iter_51_38 - 0.5) / var_51_607
			local var_51_610 = var_51_606 * var_51_609^1.05
			local var_51_611 = var_51_605 * math.exp(-var_51_609 * var_51_608) * 0.7

			love.graphics.setColor(var_51_592[1], var_51_592[2], var_51_592[3], var_51_611)
			love.graphics.setLineWidth(2 + var_51_610 * 1.2)
			love.graphics.line(var_51_596, var_51_597, var_51_601, var_51_602)
		end

		love.graphics.setBlendMode(var_51_603 or "alpha", var_51_604 or "alphamultiply")
		love.graphics.setColor(var_51_592[1], var_51_592[2], var_51_592[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_596, var_51_597, var_51_601, var_51_602)
		love.graphics.setLineWidth(1)
	end

	if (var_51_53 or var_51_52.isDisappearing) and var_51_52.unlockLineProgress > 0 then
		local var_51_612 = {
			1,
			1,
			1,
			1
		}
		local var_51_613 = var_0_87.itemrefund
		local var_51_614 = var_51_613 and var_51_613.maxed or false
		local var_51_615 = var_51_613 and var_51_53 and arg_51_1 >= var_51_613.cost

		if var_51_614 then
			var_51_612 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_615 then
			var_51_612 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_612 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_616 = var_51_19.iteminventory.x
		local var_51_617 = var_51_19.iteminventory.y
		local var_51_618 = var_51_19.itemrefund.x
		local var_51_619 = var_51_19.itemrefund.y
		local var_51_620 = var_51_52.unlockLineProgress
		local var_51_621 = var_51_616 + (var_51_618 - var_51_616) * var_51_620
		local var_51_622 = var_51_617 + (var_51_619 - var_51_617) * var_51_620
		local var_51_623, var_51_624 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_625 = 0.18
		local var_51_626 = 6
		local var_51_627 = 10
		local var_51_628 = 2.3

		for iter_51_39 = 1, var_51_627 do
			local var_51_629 = (iter_51_39 - 0.5) / var_51_627
			local var_51_630 = var_51_626 * var_51_629^1.05
			local var_51_631 = var_51_625 * math.exp(-var_51_629 * var_51_628) * 0.7

			love.graphics.setColor(var_51_612[1], var_51_612[2], var_51_612[3], var_51_631)
			love.graphics.setLineWidth(2 + var_51_630 * 1.2)
			love.graphics.line(var_51_616, var_51_617, var_51_621, var_51_622)
		end

		love.graphics.setBlendMode(var_51_623 or "alpha", var_51_624 or "alphamultiply")
		love.graphics.setColor(var_51_612[1], var_51_612[2], var_51_612[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_616, var_51_617, var_51_621, var_51_622)
		love.graphics.setLineWidth(1)
	end

	if (var_51_53 or var_51_54.isDisappearing) and var_51_54.unlockLineProgress > 0 then
		local var_51_632 = {
			1,
			1,
			1,
			1
		}
		local var_51_633 = var_0_87.iteminventory2
		local var_51_634 = var_51_633 and var_51_633.maxed or false
		local var_51_635 = var_51_633 and var_51_53 and arg_51_1 >= var_51_633.cost

		if var_51_634 then
			var_51_632 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_635 then
			var_51_632 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_632 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_636 = var_51_19.iteminventory.x
		local var_51_637 = var_51_19.iteminventory.y
		local var_51_638 = var_51_19.iteminventory2.x
		local var_51_639 = var_51_19.iteminventory2.y
		local var_51_640 = var_51_54.unlockLineProgress
		local var_51_641 = var_51_636 + (var_51_638 - var_51_636) * var_51_640
		local var_51_642 = var_51_637 + (var_51_639 - var_51_637) * var_51_640
		local var_51_643, var_51_644 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_645 = 0.18
		local var_51_646 = 6
		local var_51_647 = 10
		local var_51_648 = 2.3

		for iter_51_40 = 1, var_51_647 do
			local var_51_649 = (iter_51_40 - 0.5) / var_51_647
			local var_51_650 = var_51_646 * var_51_649^1.05
			local var_51_651 = var_51_645 * math.exp(-var_51_649 * var_51_648) * 0.7

			love.graphics.setColor(var_51_632[1], var_51_632[2], var_51_632[3], var_51_651)
			love.graphics.setLineWidth(2 + var_51_650 * 1.2)
			love.graphics.line(var_51_636, var_51_637, var_51_641, var_51_642)
		end

		love.graphics.setBlendMode(var_51_643 or "alpha", var_51_644 or "alphamultiply")
		love.graphics.setColor(var_51_632[1], var_51_632[2], var_51_632[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_636, var_51_637, var_51_641, var_51_642)
		love.graphics.setLineWidth(1)
	end

	if (var_51_43 or var_51_42.isDisappearing) and var_51_42.unlockLineProgress > 0 then
		local var_51_652 = {
			1,
			1,
			1,
			1
		}
		local var_51_653 = var_0_87.slotadvanced2
		local var_51_654 = var_51_653 and var_51_653.maxed or false
		local var_51_655 = var_51_653 and var_51_43 and arg_51_1 >= var_51_653.cost

		if var_51_654 then
			var_51_652 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_655 then
			var_51_652 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_652 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_656 = var_51_19.slotadvanced.x
		local var_51_657 = var_51_19.slotadvanced.y
		local var_51_658 = var_51_19.slotadvanced2.x
		local var_51_659 = var_51_19.slotadvanced2.y
		local var_51_660 = var_51_42.unlockLineProgress
		local var_51_661 = var_51_656 + (var_51_658 - var_51_656) * var_51_660
		local var_51_662 = var_51_657 + (var_51_659 - var_51_657) * var_51_660
		local var_51_663, var_51_664 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_665 = 0.18
		local var_51_666 = 6
		local var_51_667 = 10
		local var_51_668 = 2.3

		for iter_51_41 = 1, var_51_667 do
			local var_51_669 = (iter_51_41 - 0.5) / var_51_667
			local var_51_670 = var_51_666 * var_51_669^1.05
			local var_51_671 = var_51_665 * math.exp(-var_51_669 * var_51_668) * 0.7

			love.graphics.setColor(var_51_652[1], var_51_652[2], var_51_652[3], var_51_671)
			love.graphics.setLineWidth(2 + var_51_670 * 1.2)
			love.graphics.line(var_51_656, var_51_657, var_51_661, var_51_662)
		end

		love.graphics.setBlendMode(var_51_663 or "alpha", var_51_664 or "alphamultiply")
		love.graphics.setColor(var_51_652[1], var_51_652[2], var_51_652[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_656, var_51_657, var_51_661, var_51_662)
		love.graphics.setLineWidth(1)
	end

	if (var_51_58 or var_51_57.isDisappearing) and var_51_57.unlockLineProgress > 0 then
		local var_51_672 = {
			1,
			1,
			1,
			1
		}
		local var_51_673 = var_0_87.slotadvanced3
		local var_51_674 = var_51_673 and var_51_673.maxed or false
		local var_51_675 = var_51_673 and var_51_58 and arg_51_1 >= var_51_673.cost

		if var_51_674 then
			var_51_672 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_675 then
			var_51_672 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_672 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_676 = var_51_19.slotadvanced2.x
		local var_51_677 = var_51_19.slotadvanced2.y
		local var_51_678 = var_51_19.slotadvanced3.x
		local var_51_679 = var_51_19.slotadvanced3.y
		local var_51_680 = var_51_57.unlockLineProgress
		local var_51_681 = var_51_676 + (var_51_678 - var_51_676) * var_51_680
		local var_51_682 = var_51_677 + (var_51_679 - var_51_677) * var_51_680
		local var_51_683, var_51_684 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_685 = 0.18
		local var_51_686 = 6
		local var_51_687 = 10
		local var_51_688 = 2.3

		for iter_51_42 = 1, var_51_687 do
			local var_51_689 = (iter_51_42 - 0.5) / var_51_687
			local var_51_690 = var_51_686 * var_51_689^1.05
			local var_51_691 = var_51_685 * math.exp(-var_51_689 * var_51_688) * 0.7

			love.graphics.setColor(var_51_672[1], var_51_672[2], var_51_672[3], var_51_691)
			love.graphics.setLineWidth(2 + var_51_690 * 1.2)
			love.graphics.line(var_51_676, var_51_677, var_51_681, var_51_682)
		end

		love.graphics.setBlendMode(var_51_683 or "alpha", var_51_684 or "alphamultiply")
		love.graphics.setColor(var_51_672[1], var_51_672[2], var_51_672[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_676, var_51_677, var_51_681, var_51_682)
		love.graphics.setLineWidth(1)
	end

	if (var_51_60 or var_51_59.isDisappearing) and var_51_59.unlockLineProgress > 0 then
		local var_51_692 = {
			1,
			1,
			1,
			1
		}
		local var_51_693 = var_0_87.slotrare
		local var_51_694 = var_51_693 and var_51_693.maxed or false
		local var_51_695 = var_51_693 and var_51_60 and var_0_93("slotrare") and arg_51_1 >= var_51_693.cost

		if var_51_694 then
			var_51_692 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_695 then
			var_51_692 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_692 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_696 = var_51_19.slotadvanced3.x
		local var_51_697 = var_51_19.slotadvanced3.y
		local var_51_698 = var_51_19.slotrare.x
		local var_51_699 = var_51_19.slotrare.y
		local var_51_700 = var_51_59.unlockLineProgress
		local var_51_701 = var_51_696 + (var_51_698 - var_51_696) * var_51_700
		local var_51_702 = var_51_697 + (var_51_699 - var_51_697) * var_51_700
		local var_51_703, var_51_704 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_51_705 = 0.18
		local var_51_706 = 6
		local var_51_707 = 10
		local var_51_708 = 2.3

		for iter_51_43 = 1, var_51_707 do
			local var_51_709 = (iter_51_43 - 0.5) / var_51_707
			local var_51_710 = var_51_706 * var_51_709^1.05
			local var_51_711 = var_51_705 * math.exp(-var_51_709 * var_51_708) * 0.7

			love.graphics.setColor(var_51_692[1], var_51_692[2], var_51_692[3], var_51_711)
			love.graphics.setLineWidth(2 + var_51_710 * 1.2)
			love.graphics.line(var_51_696, var_51_697, var_51_701, var_51_702)
		end

		love.graphics.setBlendMode(var_51_703 or "alpha", var_51_704 or "alphamultiply")
		love.graphics.setColor(var_51_692[1], var_51_692[2], var_51_692[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_51_696, var_51_697, var_51_701, var_51_702)
		love.graphics.setLineWidth(1)
	end

	local function var_51_712(arg_53_0, arg_53_1, arg_53_2, arg_53_3)
		local var_53_0 = var_0_67(arg_53_0)
		local var_53_1 = var_0_87[arg_53_0]
		local var_53_2 = var_53_1.maxed or false
		local var_53_3 = var_0_93(arg_53_0) and arg_51_1 >= var_53_1.cost
		local var_53_4 = {
			1,
			1,
			1,
			1
		}

		if var_53_2 then
			var_53_4 = {
				var_0_80("#6FAACC")
			}
		elseif var_53_3 then
			var_53_4 = {
				var_0_80("#5FAF6F")
			}
		else
			var_53_4 = {
				var_0_80("#A84F5A")
			}
		end

		local var_53_5, var_53_6 = arg_53_1:getDimensions()
		local var_53_7 = var_53_0.scaleX or 1
		local var_53_8 = var_53_0.scaleY or 1
		local var_53_9 = arg_53_2

		if var_53_0.shakeT > 0 then
			var_53_9 = var_53_9 + var_53_0.shakeX
		end

		local var_53_10 = math.max(var_53_7, var_53_8)
		local var_53_11 = var_53_9 - var_53_5 * var_53_10 / 2
		local var_53_12 = arg_53_3 - var_53_6 * var_53_10 / 2

		var_0_73[arg_53_0] = {
			x = var_53_11,
			y = var_53_12,
			w = var_53_5 * var_53_10,
			h = var_53_6 * var_53_10
		}

		if (var_53_3 or var_53_2) and var_0_10 and var_0_11 then
			love.graphics.setShader(var_0_10)

			local var_53_13 = 0.8 + 0.2 * math.sin(love.timer.getTime() * 3)

			var_0_10:send("glowColor", {
				var_53_4[1],
				var_53_4[2],
				var_53_4[3],
				var_53_13
			})

			local var_53_14 = math.max(var_53_5, var_53_6) * 2 * var_53_7

			love.graphics.draw(var_0_11, var_53_9, arg_53_3, 0, var_53_14, var_53_14, 0.5, 0.5)
			love.graphics.setShader()
		end

		if var_53_3 and not var_53_2 then
			local var_53_15 = love.timer.getTime()
			local var_53_16 = 1 + 0.04 * math.sin(var_53_15 * 3.5)

			var_53_7 = var_53_7 * var_53_16
			var_53_8 = var_53_8 * var_53_16

			local var_53_17 = 0.05 + 0.05 * math.sin(var_53_15 * 3.5)

			if var_0_9 then
				love.graphics.setShader(var_0_9)
				love.graphics.setColor(1, 1, 1, var_53_17)
				love.graphics.draw(arg_53_1, var_53_9, arg_53_3, 0, var_53_7, var_53_8, var_53_5 / 2, var_53_6 / 2)
				love.graphics.setShader()
			end
		end

		if var_53_3 and not var_53_2 then
			local var_53_18 = math.max(0, love.timer.getDelta() or 0)
			local var_53_19 = 1 - math.exp(-3 * var_53_18)

			if #var_53_0.energyParticles < 8 and var_53_19 > love.math.random() then
				table.insert(var_53_0.energyParticles, {
					type = "sparkle",
					life = 0.6,
					x = (love.math.random() - 0.5) * var_53_5 * var_53_7 * 1.2,
					y = (love.math.random() - 0.5) * var_53_6 * var_53_8 * 1.2,
					size = love.math.random(1, 3)
				})
			end

			for iter_53_0 = #var_53_0.energyParticles, 1, -1 do
				local var_53_20 = var_53_0.energyParticles[iter_53_0]

				if var_53_20.type == "sparkle" then
					var_53_20.life = var_53_20.life - var_53_18

					if var_53_20.life <= 0 then
						table.remove(var_53_0.energyParticles, iter_53_0)
					else
						local var_53_21 = math.sin(var_53_20.life / 0.6 * math.pi)

						love.graphics.setColor(1, 1, 1, var_53_21)

						local var_53_22 = math.floor(var_53_20.size)

						if var_53_22 < 2 then
							love.graphics.rectangle("fill", math.floor(var_53_9 + var_53_20.x), math.floor(arg_53_3 + var_53_20.y), 1, 1)
						else
							local var_53_23 = math.floor(var_53_9 + var_53_20.x)
							local var_53_24 = math.floor(arg_53_3 + var_53_20.y)
							local var_53_25 = math.floor(var_53_22 / 2)

							love.graphics.rectangle("fill", var_53_23 - var_53_25, var_53_24, var_53_22, 1)
							love.graphics.rectangle("fill", var_53_23, var_53_24 - var_53_25, 1, var_53_22)
						end
					end
				end
			end
		end

		if var_0_9 then
			love.graphics.setShader(var_0_9)

			local var_53_26 = {
				var_53_4[1],
				var_53_4[2],
				var_53_4[3],
				var_53_4[4]
			}

			if var_53_3 and not var_53_2 then
				local var_53_27 = 0.5 + 0.5 * math.sin(var_53_0.pulseT * 2)

				for iter_53_1 = 1, 3 do
					var_53_26[iter_53_1] = var_53_26[iter_53_1] + (1 - var_53_26[iter_53_1]) * var_53_27 * 0.5
				end
			end

			love.graphics.setColor(var_53_26)

			local var_53_28 = 0.5
			local var_53_29 = 1.5

			for iter_53_2 = -var_53_29, var_53_29, var_53_28 do
				for iter_53_3 = -var_53_29, var_53_29, var_53_28 do
					if iter_53_2 ~= 0 or iter_53_3 ~= 0 then
						love.graphics.draw(arg_53_1, var_53_9 + iter_53_2 * var_53_7, arg_53_3 + iter_53_3 * var_53_8, 0, var_53_7, var_53_8, var_53_5 / 2, var_53_6 / 2)
					end
				end
			end

			love.graphics.setShader()
		end

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_53_1, var_53_9, arg_53_3, 0, var_53_7, var_53_8, var_53_5 / 2, var_53_6 / 2)

		if var_0_64 and var_53_1.nodeId then
			local var_53_30 = var_0_16 or love.graphics.getFont()
			local var_53_31 = love.graphics.getFont()

			love.graphics.setFont(var_53_30)

			local var_53_32 = tostring(var_53_1.nodeId)
			local var_53_33 = 0.75
			local var_53_34 = var_53_30:getWidth(var_53_32) * var_53_33
			local var_53_35 = math.floor(var_53_9 - var_53_34 / 2)
			local var_53_36 = math.floor(arg_53_3 - var_53_6 * var_53_8 / 2 - 12)

			love.graphics.setColor(0, 0, 0, 0.85)
			love.graphics.print(var_53_32, var_53_35 + 1, var_53_36 + 1, 0, var_53_33, var_53_33)
			love.graphics.setColor(1, 0.92, 0.35, 1)
			love.graphics.print(var_53_32, var_53_35, var_53_36, 0, var_53_33, var_53_33)
			love.graphics.setFont(var_53_31)
		end

		if var_53_0.flashT > 0 and var_0_9 then
			love.graphics.setShader(var_0_9)
			love.graphics.setColor(1, 1, 1, var_53_0.flashT / 0.2)
			love.graphics.draw(arg_53_1, var_53_9, arg_53_3, 0, var_53_7, var_53_8, var_53_5 / 2, var_53_6 / 2)
			love.graphics.setShader()
		end

		if var_53_3 or var_53_2 then
			local var_53_37 = 0.6

			if var_53_37 > var_53_0.shineT then
				local var_53_38 = var_53_0.shineT / var_53_37

				love.graphics.stencil(function()
					love.graphics.draw(arg_53_1, var_53_9, arg_53_3, 0, var_53_7, var_53_8, var_53_5 / 2, var_53_6 / 2)
				end, "replace", 1)
				love.graphics.setStencilTest("greater", 0)
				love.graphics.setColor(1, 1, 1, 0.6 * (1 - math.abs(var_53_38 - 0.5) * 2))

				local var_53_39 = 20 * var_53_7
				local var_53_40 = var_53_9 - var_53_5 * var_53_7 / 2
				local var_53_41 = var_53_5 * var_53_7
				local var_53_42 = var_53_40 - var_53_39
				local var_53_43 = var_53_42 + (var_53_40 + var_53_41 + var_53_39 - var_53_42) * var_53_38

				love.graphics.push()
				love.graphics.translate(var_53_43, arg_53_3)
				love.graphics.rotate(-0.5)

				local var_53_44 = var_53_6 * var_53_8 * 4

				love.graphics.rectangle("fill", -var_53_39 / 2, -var_53_44 / 2, var_53_39, var_53_44)
				love.graphics.pop()
				love.graphics.setStencilTest()
			end
		end

		if var_0_69 == arg_53_0 then
			local var_53_45 = 2 * var_53_7
			local var_53_46 = 6 * var_53_7
			local var_53_47 = 2
			local var_53_48 = var_53_5 * var_53_7
			local var_53_49 = var_53_6 * var_53_8
			local var_53_50 = var_53_48 / 2 + var_53_45
			local var_53_51 = var_53_49 / 2 + var_53_45
			local var_53_52 = var_53_9 - var_53_50
			local var_53_53 = arg_53_3 - var_53_51
			local var_53_54 = var_53_9 + var_53_50
			local var_53_55 = arg_53_3 + var_53_51

			love.graphics.setColor(0, 0, 0, 1)

			local var_53_56 = var_53_47 + 2
			local var_53_57 = var_53_46 + 2
			local var_53_58 = var_53_52 - 1
			local var_53_59 = var_53_53 - 1
			local var_53_60 = var_53_54 + 1
			local var_53_61 = var_53_55 + 1

			love.graphics.rectangle("fill", var_53_58 + 1, var_53_59, var_53_57 - 1, var_53_56)
			love.graphics.rectangle("fill", var_53_58, var_53_59 + 1, var_53_56, var_53_57 - 1)
			love.graphics.rectangle("fill", var_53_60 - var_53_57, var_53_59, var_53_57 - 1, var_53_56)
			love.graphics.rectangle("fill", var_53_60 - var_53_56, var_53_59 + 1, var_53_56, var_53_57 - 1)
			love.graphics.rectangle("fill", var_53_58 + 1, var_53_61 - var_53_56, var_53_57 - 1, var_53_56)
			love.graphics.rectangle("fill", var_53_58, var_53_61 - var_53_57, var_53_56, var_53_57 - 1)
			love.graphics.rectangle("fill", var_53_60 - var_53_57, var_53_61 - var_53_56, var_53_57 - 1, var_53_56)
			love.graphics.rectangle("fill", var_53_60 - var_53_56, var_53_61 - var_53_57, var_53_56, var_53_57 - 1)
			love.graphics.setColor(1, 1, 1, 1)

			local var_53_62 = var_53_52
			local var_53_63 = var_53_53
			local var_53_64 = var_53_54
			local var_53_65 = var_53_55

			love.graphics.rectangle("fill", var_53_62 + 1, var_53_63, var_53_46 - 1, var_53_47)
			love.graphics.rectangle("fill", var_53_62, var_53_63 + 1, var_53_47, var_53_46 - 1)
			love.graphics.rectangle("fill", var_53_64 - var_53_46, var_53_63, var_53_46 - 1, var_53_47)
			love.graphics.rectangle("fill", var_53_64 - var_53_47, var_53_63 + 1, var_53_47, var_53_46 - 1)
			love.graphics.rectangle("fill", var_53_62 + 1, var_53_65 - var_53_47, var_53_46 - 1, var_53_47)
			love.graphics.rectangle("fill", var_53_62, var_53_65 - var_53_46, var_53_47, var_53_46 - 1)
			love.graphics.rectangle("fill", var_53_64 - var_53_46, var_53_65 - var_53_47, var_53_46 - 1, var_53_47)
			love.graphics.rectangle("fill", var_53_64 - var_53_47, var_53_65 - var_53_46, var_53_47, var_53_46 - 1)
		end
	end

	local var_51_713 = var_0_67("maxhp")

	if var_0_7.maxhp and (var_51_20 and var_51_713.revealed or var_51_713.isDisappearing) then
		var_51_712("maxhp", var_0_7.maxhp, var_51_19.maxhp.x, var_51_19.maxhp.y)
	end

	if var_0_7.noviceshield and (var_51_21 and var_51_22.revealed or var_51_22.isDisappearing) then
		var_51_712("noviceshield", var_0_7.noviceshield, var_51_19.noviceshield.x, var_51_19.noviceshield.y)
	end

	if var_0_7.startgold and (var_51_21 and var_51_23.revealed or var_51_23.isDisappearing) then
		var_51_712("startgold", var_0_7.startgold, var_51_19.startgold.x, var_51_19.startgold.y)
	end

	if var_0_7.startingmerccontract and (var_51_30 and var_51_24.revealed or var_51_24.isDisappearing) then
		var_51_712("startingmerccontract", var_0_7.startingmerccontract, var_51_19.startingmerccontract.x, var_51_19.startingmerccontract.y)
	end

	if var_0_7.comebackspin and (var_51_26 and var_51_25.revealed or var_51_25.isDisappearing) then
		var_51_712("comebackspin", var_0_7.comebackspin, var_51_19.comebackspin.x, var_51_19.comebackspin.y)
	end

	if var_0_7.gateheal and (var_51_28 and var_51_27.revealed or var_51_27.isDisappearing) then
		var_51_712("gateheal", var_0_7.gateheal, var_51_19.gateheal.x, var_51_19.gateheal.y)
	end

	if var_0_7.comebackgold and (var_51_30 and var_51_29.revealed or var_51_29.isDisappearing) then
		var_51_712("comebackgold", var_0_7.comebackgold, var_51_19.comebackgold.x, var_51_19.comebackgold.y)
	end

	if var_0_7.maxhp2 and (var_51_32 and var_51_31.revealed or var_51_31.isDisappearing) then
		var_51_712("maxhp2", var_0_7.maxhp2, var_51_19.maxhp2.x, var_51_19.maxhp2.y)
	end

	if var_0_7.startgold2 and (var_51_30 and var_51_33.revealed or var_51_33.isDisappearing) then
		var_51_712("startgold2", var_0_7.startgold2, var_51_19.startgold2.x, var_51_19.startgold2.y)
	end

	if var_0_7.slotodds then
		var_51_712("slotodds", var_0_7.slotodds, var_51_19.slotodds.x, var_51_19.slotodds.y)
	end

	if var_0_7.slotnudge and (var_51_34 and var_51_309.revealed or var_51_309.isDisappearing) then
		var_51_712("slotnudge", var_0_7.slotnudge, var_51_19.slotnudge.x, var_51_19.slotnudge.y)
	end

	if var_0_7.interest and (var_51_34 and var_51_39.revealed or var_51_39.isDisappearing) then
		var_51_712("interest", var_0_7.interest, var_51_19.interest.x, var_51_19.interest.y)
	end

	for iter_51_44, iter_51_45 in ipairs({
		{
			"interest",
			"dormantpower"
		},
		{
			"dormantpower",
			"growthbranch"
		},
		{
			"growthbranch",
			"factionsynergy"
		}
	}) do
		local var_51_714 = var_0_67(iter_51_45[2])

		if var_0_7[iter_51_45[2]] and (var_0_87[iter_51_45[1]].maxed and var_51_714.revealed or var_51_714.isDisappearing) then
			var_51_712(iter_51_45[2], var_0_7[iter_51_45[2]], var_51_19[iter_51_45[2]].x, var_51_19[iter_51_45[2]].y)
		end
	end

	for iter_51_46, iter_51_47 in pairs(var_0_87) do
		local var_51_715 = iter_51_47.parent

		if var_51_715 and var_0_7[iter_51_46] and var_51_19[iter_51_46] then
			local var_51_716 = var_0_67(iter_51_46)

			if var_0_87[var_51_715].maxed and var_51_716.revealed or var_51_716.isDisappearing then
				var_51_712(iter_51_46, var_0_7[iter_51_46], var_51_19[iter_51_46].x, var_51_19[iter_51_46].y)
			end
		end
	end

	if var_0_7.slotadvanced and (var_51_451 and var_51_450.revealed or var_51_450.isDisappearing) then
		var_51_712("slotadvanced", var_0_7.slotadvanced, var_51_19.slotadvanced.x, var_51_19.slotadvanced.y)
	end

	if var_0_7.corereroll and (var_51_43 and var_51_44.revealed or var_51_44.isDisappearing) then
		var_51_712("corereroll", var_0_7.corereroll, var_51_19.corereroll.x, var_51_19.corereroll.y)
	end

	if var_0_7.firstcorespin and (var_51_46 and var_51_45.revealed or var_51_45.isDisappearing) then
		var_51_712("firstcorespin", var_0_7.firstcorespin, var_51_19.firstcorespin.x, var_51_19.firstcorespin.y)
	end

	if var_0_7.firstcoreuncommon and (var_51_48 and var_51_47.revealed or var_51_47.isDisappearing) then
		var_51_712("firstcoreuncommon", var_0_7.firstcoreuncommon, var_51_19.firstcoreuncommon.x, var_51_19.firstcoreuncommon.y)
	end

	if var_0_7.shopreroll and (var_51_43 and var_51_49.revealed or var_51_49.isDisappearing) then
		var_51_712("shopreroll", var_0_7.shopreroll, var_51_19.shopreroll.x, var_51_19.shopreroll.y)
	end

	if var_0_7.iteminventory and (var_51_51 and var_51_50.revealed or var_51_50.isDisappearing) then
		var_51_712("iteminventory", var_0_7.iteminventory, var_51_19.iteminventory.x, var_51_19.iteminventory.y)
	end

	if var_0_7.itemrefund and (var_51_53 and var_51_52.revealed or var_51_52.isDisappearing) then
		var_51_712("itemrefund", var_0_7.itemrefund, var_51_19.itemrefund.x, var_51_19.itemrefund.y)
	end

	if var_0_7.iteminventory2 and (var_51_53 and var_51_54.revealed or var_51_54.isDisappearing) then
		var_51_712("iteminventory2", var_0_7.iteminventory2, var_51_19.iteminventory2.x, var_51_19.iteminventory2.y)
	end

	if var_0_7.itemresearch and (var_51_51 and var_51_55.revealed or var_51_55.isDisappearing) then
		var_51_712("itemresearch", var_0_7.itemresearch, var_51_19.itemresearch.x, var_51_19.itemresearch.y)
	end

	if var_0_7.shoppin and (var_51_51 and var_51_56.revealed or var_51_56.isDisappearing) then
		var_51_712("shoppin", var_0_7.shoppin, var_51_19.shoppin.x, var_51_19.shoppin.y)
	end

	if var_0_7.slotadvanced2 and (var_51_43 and var_51_42.revealed or var_51_42.isDisappearing) then
		var_51_712("slotadvanced2", var_0_7.slotadvanced2, var_51_19.slotadvanced2.x, var_51_19.slotadvanced2.y)
	end

	if var_0_7.slotadvanced3 and (var_51_58 and var_51_57.revealed or var_51_57.isDisappearing) then
		var_51_712("slotadvanced3", var_0_7.slotadvanced3, var_51_19.slotadvanced3.x, var_51_19.slotadvanced3.y)
	end

	if var_0_7.slotrare and (var_51_60 and var_51_59.revealed or var_51_59.isDisappearing) then
		var_51_712("slotrare", var_0_7.slotrare, var_51_19.slotrare.x, var_51_19.slotrare.y)
	end

	if var_0_7.maxunit and (var_51_20 and var_51_245.revealed or var_51_245.isDisappearing) then
		var_51_712("maxunit", var_0_7.maxunit, var_51_19.maxunit.x, var_51_19.maxunit.y)
	end

	if var_0_7.maxunit2 and (var_51_34 and var_51_35.revealed or var_51_35.isDisappearing) then
		var_51_712("maxunit2", var_0_7.maxunit2, var_51_19.maxunit2.x, var_51_19.maxunit2.y)
	end

	if var_0_7.maxunit3 and (var_51_37 and var_51_36.revealed or var_51_36.isDisappearing) then
		var_51_712("maxunit3", var_0_7.maxunit3, var_51_19.maxunit3.x, var_51_19.maxunit3.y)
	end

	love.graphics.pop()
	love.graphics.setColor(0, 0, 0, 0.4)

	local var_51_717 = 100

	for iter_51_48 = 0, var_51_717 do
		local var_51_718 = 0.6 * (1 - iter_51_48 / var_51_717)

		love.graphics.setColor(0, 0, 0, var_51_718)
		love.graphics.rectangle("fill", 0, iter_51_48, var_51_0, 1)
		love.graphics.rectangle("fill", 0, var_51_1 - 1 - iter_51_48, var_51_0, 1)
		love.graphics.rectangle("fill", iter_51_48, 0, 1, var_51_1)
		love.graphics.rectangle("fill", var_51_0 - 1 - iter_51_48, 0, 1, var_51_1)
	end

	if var_0_12 then
		local var_51_719, var_51_720 = var_0_12:getDimensions()
		local var_51_721 = 1.5
		local var_51_722 = 20
		local var_51_723 = 10
		local var_51_724 = tostring(arg_51_1 or 0)
		local var_51_725 = var_0_14 or love.graphics.getFont()

		love.graphics.setFont(var_51_725)

		local var_51_726 = var_0_37(var_51_725)
		local var_51_727 = 1.1
		local var_51_728 = var_0_101(var_51_724, var_51_725, var_51_727)
		local var_51_729 = var_51_726:getHeight() * var_51_727

		var_0_6.track(var_0_34, arg_51_1, arg_51_0)

		local var_51_730, var_51_731, var_51_732 = var_0_6.getPunch(var_0_34)
		local var_51_733 = var_51_727 * var_51_730
		local var_51_734 = var_51_727 * var_51_731
		local var_51_735 = var_51_719 * var_51_721 + var_51_723 + var_51_728
		local var_51_736 = var_51_0 - var_51_722 - var_51_735
		local var_51_737 = var_51_722

		if not arg_51_2 then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_0_12, math.floor(var_51_736), math.floor(var_51_737), 0, var_51_721, var_51_721)

			local var_51_738 = var_51_737 + (var_51_720 * var_51_721 - var_51_729) / 2
			local var_51_739 = var_51_736 + var_51_719 * var_51_721 + var_51_723
			local var_51_740 = var_0_101(var_51_724, var_51_725, var_51_733)
			local var_51_741 = var_51_726:getHeight() * var_51_734
			local var_51_742 = var_51_739 + (var_51_728 - var_51_740) * 0.5 + var_51_732
			local var_51_743 = var_51_738 + (var_51_729 - var_51_741) * 0.5

			love.graphics.print(var_51_724, math.floor(var_51_742), math.floor(var_51_743), 0, var_51_733, var_51_734)
		end

		if var_0_64 then
			local var_51_744 = 20
			local var_51_745 = 5
			local var_51_746 = var_51_737 + (var_51_720 * var_51_721 - var_51_744) / 2
			local var_51_747 = var_51_736 - var_51_744 - var_51_745

			love.graphics.setColor(0.2, 0.8, 0.2, 1)
			love.graphics.rectangle("fill", var_51_747, var_51_746, var_51_744, var_51_744)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.print("+", var_51_747 + 5, var_51_746 + 2)

			var_0_65.plus = {
				x = var_51_747,
				y = var_51_746,
				w = var_51_744,
				h = var_51_744
			}

			local var_51_748 = var_51_747 - var_51_744 - var_51_745

			love.graphics.setColor(0.8, 0.2, 0.2, 1)
			love.graphics.rectangle("fill", var_51_748, var_51_746, var_51_744, var_51_744)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.print("-", var_51_748 + 7, var_51_746 + 2)

			var_0_65.minus = {
				x = var_51_748,
				y = var_51_746,
				w = var_51_744,
				h = var_51_744
			}
		else
			var_0_65 = {}
		end
	end

	if var_0_69 and var_0_87[var_0_69] then
		local var_51_749 = var_0_87[var_0_69]
		local var_51_750 = var_51_749.maxed or false
		local var_51_751 = arg_51_1 >= var_51_749.cost
		local var_51_752 = var_0_93(var_0_69) and var_51_751
		local var_51_753 = {
			1,
			1,
			1,
			1
		}

		if var_51_750 then
			var_51_753 = {
				var_0_80("#6FAACC")
			}
		elseif var_51_752 then
			var_51_753 = {
				var_0_80("#5FAF6F")
			}
		else
			var_51_753 = {
				var_0_80("#A84F5A")
			}
		end

		local var_51_754 = var_51_753

		if not var_51_750 then
			var_51_754 = var_51_751 and {
				var_0_80("#5FAF6F")
			} or {
				var_0_80("#A84F5A")
			}
		end

		local var_51_755 = var_0_16 or font or arg_51_0 and arg_51_0.font or love.graphics.getFont()

		if not var_51_755 then
			return
		end

		local var_51_756 = var_0_37(var_51_755)
		local var_51_757 = var_51_755:getLineHeight()

		var_51_755:setLineHeight(1)
		love.graphics.setFont(var_51_755)

		local var_51_758 = 6
		local var_51_759 = 3
		local var_51_760 = 1
		local var_51_761 = 1
		local var_51_762 = 1.05
		local var_51_763 = arg_51_0 and arg_51_0.menuSettings and arg_51_0.menuSettings.language or "ko"
		local var_51_764 = var_0_3.getText(var_51_749.nameKey, var_51_763)
		local var_51_765 = var_0_3.getText(var_51_749.descKey, var_51_763)
		local var_51_766 = var_51_749.unlockCoreKey
		local var_51_767 = var_51_766 and var_0_3.getText("upgrade_unlock_label", var_51_763) or nil
		local var_51_768 = var_51_766 and var_0_3.getText("core.name." .. var_51_766, var_51_763) or nil
		local var_51_769 = var_51_766 and var_0_3.getText("core.desc." .. var_51_766, var_51_763) or nil
		local var_51_770 = var_51_749.statKey and var_0_3.getText(var_51_749.statKey, var_51_763) or var_51_749.stat

		if var_51_750 then
			if var_0_69 == "slotadvanced" then
				var_51_770 = var_0_3.getGradeLabel("advanced", "Advanced", var_51_763) .. " 5%"
			elseif var_0_69 == "slotadvanced2" then
				var_51_770 = var_0_3.getGradeLabel("advanced", "Advanced", var_51_763) .. " 10%"
			elseif var_0_69 == "slotadvanced3" then
				var_51_770 = var_0_3.getGradeLabel("advanced", "Advanced", var_51_763) .. " 15%"
			elseif var_0_69 == "slotrare" then
				var_51_770 = var_0_3.getGradeLabel("rare", "Rare", var_51_763) .. " 2%"
			elseif var_51_749.maxedGrade then
				var_51_770 = var_0_3.getGradeLabel(var_51_749.maxedGrade, var_51_749.maxedGrade, var_51_763) .. " " .. tostring(var_51_749.maxedValue or "")
			else
				local var_51_771 = tostring(var_51_770):find("{gold%.png}") ~= nil
				local var_51_772 = var_51_770:match("%->%s*(.+)$")

				if var_51_772 then
					var_51_770 = var_51_771 and "{gold.png} " .. var_51_772 or var_51_772
				end
			end
		end

		local var_51_773 = tostring(var_51_749.cost)

		if var_51_750 then
			var_51_773 = var_0_3.getText("upgrade_maxed", var_51_763)
		end

		local var_51_774 = var_51_766 and 190 or 150
		local var_51_775 = var_0_101(var_51_764, var_51_755, var_51_761)

		var_51_755:setLineHeight(1.4)

		local var_51_776 = var_0_101(var_51_765, var_51_755, var_51_761)
		local var_51_777 = math.min(var_51_776, var_51_774)
		local var_51_778 = (math.max(var_51_774, var_51_775) - 5) / var_51_761
		local var_51_779 = var_0_105(var_51_765, var_51_755, var_51_778, var_51_761, var_51_762)
		local var_51_780 = #var_51_779 * var_51_756:getHeight() * var_51_755:getLineHeight() * var_51_761

		var_51_755:setLineHeight(1)

		local var_51_781
		local var_51_782 = 0
		local var_51_783 = 0
		local var_51_784 = 0
		local var_51_785 = 0

		if var_51_766 then
			var_51_783 = var_0_101(var_51_767, var_51_755, var_51_761)
			var_51_784 = var_0_101(var_51_768, var_51_755, var_51_761)
			var_51_785 = math.min(var_0_101(var_51_769, var_51_755, var_51_761), var_51_774)

			var_51_755:setLineHeight(1.4)

			var_51_781 = var_0_105(var_51_769, var_51_755, var_51_778, var_51_761, var_51_762)
			var_51_782 = #var_51_781 * var_51_756:getHeight() * var_51_755:getLineHeight() * var_51_761

			var_51_755:setLineHeight(1)
		end

		local var_51_786 = var_0_101(var_51_770, var_51_755, var_51_761)

		if var_0_100(var_51_770) then
			local var_51_787, var_51_788 = var_51_770:match("^(.*%->%s*)(.*)$")

			if var_51_787 and var_51_788 then
				local var_51_789 = var_0_99(var_51_787, var_51_755, var_51_761, var_51_762)
				local var_51_790 = var_0_102(var_51_789, var_51_755, var_51_761, var_51_762)
				local var_51_791 = var_0_99(var_51_788, var_51_755, var_51_761, var_51_762)

				var_51_786 = var_51_790 + var_0_102(var_51_791, var_51_755, var_51_761, var_51_762)
			else
				local var_51_792 = var_0_99(var_51_770, var_51_755, var_51_761, var_51_762)

				var_51_786 = var_0_102(var_51_792, var_51_755, var_51_761, var_51_762)
			end
		end

		local var_51_793 = var_51_786

		if var_51_763 == "ja" then
			var_51_786 = var_51_786 + math.floor(18 * var_51_761 + 0.5)
		end

		local var_51_794 = 1
		local var_51_795 = 0
		local var_51_796 = 0

		if var_0_12 and not var_51_750 then
			var_51_795, var_51_796 = var_0_12:getDimensions()
		end

		local var_51_797 = 4
		local var_51_798 = 0

		if var_51_750 then
			var_51_798 = var_0_101(var_51_773, var_51_755, var_51_761)
		else
			var_51_798 = var_51_795 * var_51_794 + var_51_797 + var_0_101(var_51_773, var_51_755, var_51_761)
		end

		local var_51_799
		local var_51_800
		local var_51_801 = true
		local var_51_802 = 0
		local var_51_803 = 0
		local var_51_804 = var_51_763 == "zh" and 32 or 0
		local var_51_805 = 9 * var_51_761
		local var_51_806 = 4 * var_51_761
		local var_51_807 = var_0_69 ~= "slotrare" and var_0_69 ~= "itemresearch" and var_0_69 ~= "shoppin" and (not var_51_749.reqFull or _G.GameEditionMode == "full")

		if var_0_94(var_0_69) then
			var_51_799 = var_0_96(var_0_69, var_51_763)
			var_51_800 = var_0_97(var_0_69, var_51_763)
			var_51_801 = var_0_92(var_0_69)

			if var_51_799 then
				local var_51_808 = 0

				if var_51_800 then
					local var_51_809 = var_0_101(" ", var_51_755, var_51_761)

					for iter_51_49, iter_51_50 in ipairs(var_51_800) do
						var_51_808 = var_51_808 + var_0_101(iter_51_50.text, var_51_755, var_51_761)

						if iter_51_49 < #var_51_800 then
							var_51_808 = var_51_808 + var_51_809
						end
					end
				else
					var_51_808 = var_0_101(var_51_799, var_51_755, var_51_761)
				end

				var_51_803 = var_51_808

				if var_51_807 then
					var_51_803 = var_51_803 + var_51_805 + var_51_806
				end

				var_51_802 = var_51_803 + var_51_804 * 2
			end
		end

		local var_51_810 = math.max(var_51_775, var_51_777, var_51_786, var_51_798, var_51_802, var_51_783, var_51_784, var_51_785)
		local var_51_811 = math.max(var_51_774, (var_51_0 or 640) - 20 - var_51_758 * 2)

		if var_51_811 < var_51_810 then
			var_51_810 = var_51_811
		end

		local var_51_812 = var_51_756:getHeight() * var_51_761
		local var_51_813 = 3
		local var_51_814 = 2
		local var_51_815 = var_51_812 + 4
		local var_51_816 = 0
		local var_51_817 = var_51_799 and var_51_814 + var_51_815 + var_51_816 or 0
		local var_51_818 = 1
		local var_51_819 = 7
		local var_51_820 = 2
		local var_51_821 = var_51_819
		local var_51_822 = var_51_820
		local var_51_823 = var_51_812

		if var_51_766 then
			var_51_823 = var_51_812 * 2 + var_51_782 + var_51_819 + var_51_760 + var_51_820 + var_51_821 + var_51_760 + var_51_822 - var_51_818
		end

		local var_51_824 = var_51_812 * 2 + var_51_780 + var_51_823 + (var_51_759 * 2 + var_51_760) * 3 + var_51_758 * 2 + var_51_813 + var_51_817
		local var_51_825 = var_51_810 + var_51_758 * 2
		local var_51_826 = var_0_73[var_0_69]
		local var_51_827 = var_51_826.x + var_51_826.w / 2
		local var_51_828 = var_51_826.y + var_51_826.h / 2
		local var_51_829 = var_51_0 / 2 + var_0_44 + (var_51_827 - var_51_0 / 2) * var_0_46
		local var_51_830 = var_51_1 / 2 + var_0_45 + (var_51_828 - var_51_1 / 2) * var_0_46
		local var_51_831 = var_51_826.w * var_0_46
		local var_51_832 = var_51_826.h * var_0_46
		local var_51_833 = var_51_829 - var_51_831 / 2
		local var_51_834 = var_51_830 - var_51_832 / 2

		if not var_0_72 then
			if var_51_829 > var_51_0 / 2 then
				var_0_72 = "left"
			else
				var_0_72 = "right"
			end
		end

		local var_51_835
		local var_51_836

		if var_0_72 == "left" then
			var_51_835 = var_51_833 - var_51_825 - 10
		else
			var_51_835 = var_51_833 + var_51_831 + 10
		end

		local var_51_837 = var_51_834 + (var_51_832 - var_51_824) / 2

		if var_51_837 < 10 then
			var_51_837 = 10
		end

		if var_0_18 then
			local var_51_838 = var_0_18:getWidth() * 1.15
			local var_51_839 = var_0_18:getHeight() * 1.15
			local var_51_840 = (var_51_0 - var_51_838) / 2

			if var_51_835 < var_51_840 + var_51_838 and var_51_840 < var_51_835 + var_51_825 and var_51_837 < 25 + var_51_839 + 4 then
				var_51_837 = 25 + var_51_839 + 4
			end
		end

		if var_51_837 + var_51_824 > var_51_1 - 10 then
			var_51_837 = var_51_1 - 10 - var_51_824
		end

		if var_51_835 < 10 then
			var_51_835 = 10
		end

		if var_51_835 + var_51_825 > var_51_0 - 10 then
			var_51_835 = var_51_0 - 10 - var_51_825
		end

		if var_51_835 < 10 then
			var_51_835 = 10
		end

		local var_51_841 = math.floor(var_51_835)
		local var_51_842 = math.floor(var_51_837)

		var_0_85(var_51_841, var_51_842, var_51_825, var_51_824, {
			0.05,
			0.05,
			0.05,
			1
		}, var_51_753)

		local var_51_843 = arg_51_0 and arg_51_0.upgrade and arg_51_0.upgrade.tooltip or {}
		local var_51_844 = var_51_843.nameOffsetY or 0
		local var_51_845 = var_51_843.descOffsetY or 0
		local var_51_846 = var_51_843.statOffsetY or 0
		local var_51_847 = var_51_843.costOffsetY or 0
		local var_51_848 = var_51_843.costTextOffsetY or 0
		local var_51_849 = var_51_842 + var_51_758
		local var_51_850 = var_51_841 + var_51_758
		local var_51_851 = var_51_810

		love.graphics.setColor(1, 0.8, 0.2, 1)
		love.graphics.print(var_51_764, var_51_841 + var_51_758, math.floor(var_51_849 + var_51_844), 0, var_51_761, var_51_761)

		local var_51_852 = var_51_849 + var_51_812 + var_51_759 + var_51_813

		love.graphics.setColor(var_0_82.separator)
		love.graphics.rectangle("fill", var_51_850, math.floor(var_51_852), var_51_851, var_51_760)

		local var_51_853 = var_51_852 + var_51_760 + var_51_759

		love.graphics.setColor(0.9, 0.9, 0.9, 1)
		var_51_755:setLineHeight(1.4)

		if var_51_779 then
			local var_51_854 = var_51_756:getHeight() * var_51_755:getLineHeight() * var_51_761

			for iter_51_51, iter_51_52 in ipairs(var_51_779) do
				var_0_104(iter_51_52, var_51_841 + var_51_758, math.floor(var_51_853 + var_51_845 + (iter_51_51 - 1) * var_51_854), var_51_755, var_51_761, var_51_762, {
					0.9,
					0.9,
					0.9,
					1
				}, {
					1,
					1,
					1,
					1
				}, {
					0.45,
					0.82,
					1,
					1
				})
			end
		else
			love.graphics.printf(var_51_765, var_51_841 + var_51_758, math.floor(var_51_853 + var_51_845), var_51_778, "left", 0, var_51_761, var_51_761)
		end

		var_51_755:setLineHeight(1)

		local var_51_855 = var_51_853 + var_51_780 + var_51_759

		love.graphics.setColor(var_0_82.separator)
		love.graphics.rectangle("fill", var_51_850, math.floor(var_51_855), var_51_851, var_51_760)

		local var_51_856 = var_51_855 + var_51_760 + var_51_759

		if var_51_766 then
			var_51_856 = var_51_856 - var_51_818

			love.graphics.setColor(0.2, 1, 0.2, 1)
			love.graphics.print(var_51_767, var_51_841 + var_51_758, math.floor(var_51_856 + var_51_846), 0, var_51_761, var_51_761)

			var_51_856 = var_51_856 + var_51_812 + var_51_819

			love.graphics.setColor(var_0_82.separator)
			love.graphics.rectangle("fill", var_51_850, math.floor(var_51_856), var_51_851, var_51_760)

			var_51_856 = var_51_856 + var_51_760 + var_51_820

			love.graphics.setColor(1, 0.8, 0.2, 1)

			local var_51_857 = var_51_841 + var_51_758 + (var_51_810 - var_51_784) / 2

			love.graphics.print(var_51_768, math.floor(var_51_857), math.floor(var_51_856 + var_51_846), 0, var_51_761, var_51_761)

			var_51_856 = var_51_856 + var_51_812 + var_51_821

			love.graphics.setColor(var_0_82.separator)
			love.graphics.rectangle("fill", var_51_850, math.floor(var_51_856), var_51_851, var_51_760)

			var_51_856 = var_51_856 + var_51_760 + var_51_822

			var_51_755:setLineHeight(1.4)

			local var_51_858 = var_51_756:getHeight() * var_51_755:getLineHeight() * var_51_761

			for iter_51_53, iter_51_54 in ipairs(var_51_781 or {}) do
				local var_51_859 = var_0_102(iter_51_54, var_51_755, var_51_761, var_51_762)
				local var_51_860 = var_51_841 + var_51_758 + (var_51_810 - var_51_859) / 2

				var_0_104(iter_51_54, math.floor(var_51_860), math.floor(var_51_856 + var_51_846 + (iter_51_53 - 1) * var_51_858), var_51_755, var_51_761, var_51_762, {
					0.9,
					0.9,
					0.9,
					1
				}, {
					1,
					1,
					1,
					1
				}, {
					0.45,
					0.82,
					1,
					1
				})
			end

			var_51_755:setLineHeight(1)

			var_51_856 = var_51_856 + var_51_782 + var_51_759
		else
			local var_51_861 = var_51_841 + var_51_758 + (var_51_810 - var_51_793) / 2

			if var_51_861 < var_51_841 + var_51_758 then
				var_51_861 = var_51_841 + var_51_758
			end

			local var_51_862, var_51_863 = var_51_770:match("^(.*%->%s*)(.*)$")

			if var_51_862 and var_51_863 then
				local var_51_864 = var_0_101(var_51_862, var_51_755, var_51_761)

				if var_0_100(var_51_862) then
					local var_51_865 = var_0_99(var_51_862, var_51_755, var_51_761, var_51_762)

					var_51_864 = var_0_102(var_51_865, var_51_755, var_51_761, var_51_762)

					var_0_104(var_51_865, math.floor(var_51_861), math.floor(var_51_856 + var_51_846) - 2, var_51_755, var_51_761, var_51_762, {
						1,
						1,
						1,
						1
					}, {
						1,
						1,
						1,
						1
					})
				else
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.print(var_51_862, math.floor(var_51_861), math.floor(var_51_856 + var_51_846) - 2, 0, var_51_761, var_51_761)
				end

				if var_0_100(var_51_863) then
					local var_51_866 = var_0_99(var_51_863, var_51_755, var_51_761, var_51_762)

					var_0_104(var_51_866, math.floor(var_51_861 + var_51_864), math.floor(var_51_856 + var_51_846) - 2, var_51_755, var_51_761, var_51_762, {
						0.2,
						1,
						0.2,
						1
					}, {
						1,
						1,
						1,
						1
					})
				else
					love.graphics.setColor(0.2, 1, 0.2, 1)
					love.graphics.print(var_51_863, math.floor(var_51_861 + var_51_864), math.floor(var_51_856 + var_51_846) - 2, 0, var_51_761, var_51_761)
				end
			elseif var_0_100(var_51_770) then
				local var_51_867 = var_0_99(var_51_770, var_51_755, var_51_761, var_51_762)

				var_0_104(var_51_867, math.floor(var_51_861), math.floor(var_51_856 + var_51_846) - 2, var_51_755, var_51_761, var_51_762, {
					0.2,
					1,
					0.2,
					1
				}, {
					1,
					1,
					1,
					1
				})
			else
				love.graphics.setColor(0.2, 1, 0.2, 1)
				love.graphics.print(var_51_770, math.floor(var_51_861), math.floor(var_51_856 + var_51_846) - 2, 0, var_51_761, var_51_761)
			end

			var_51_856 = var_51_856 + var_51_812 + var_51_759
		end

		love.graphics.setColor(var_0_82.separator)
		love.graphics.rectangle("fill", var_51_850, math.floor(var_51_856), var_51_851, var_51_760)

		local var_51_868 = var_51_856 + var_51_760 + var_51_759
		local var_51_869 = var_51_798
		local var_51_870 = var_51_841 + var_51_758 + (var_51_810 - var_51_869) / 2
		local var_51_871 = {
			var_51_754[1] * 0.25,
			var_51_754[2] * 0.25,
			var_51_754[3] * 0.25,
			1
		}
		local var_51_872 = var_51_812 + 4
		local var_51_873 = var_51_868 - 1 + var_51_847
		local var_51_874 = var_51_850
		local var_51_875 = var_51_851

		var_0_85(math.floor(var_51_874), math.floor(var_51_873), math.floor(var_51_875), math.floor(var_51_872), var_51_871, nil)

		local var_51_876 = var_51_756:getHeight() * var_51_761
		local var_51_877 = var_51_873 + math.floor((var_51_872 - var_51_876) / 2) - 1
		local var_51_878 = var_51_873 + math.floor((var_51_872 - var_51_796 * var_51_794) / 2) - 1

		if var_51_750 then
			love.graphics.setColor(var_51_754)
			love.graphics.print(var_51_773, math.floor(var_51_870), math.floor(var_51_877 + var_51_848), 0, var_51_761, var_51_761)
		else
			love.graphics.setColor(1, 1, 1, 1)

			if var_0_12 then
				love.graphics.draw(var_0_12, math.floor(var_51_870), math.floor(var_51_878), 0, var_51_794, var_51_794)
			end

			love.graphics.setColor(var_51_754)
			love.graphics.print(var_51_773, math.floor(var_51_870 + var_51_795 * var_51_794 + var_51_797), math.floor(var_51_877 + var_51_848), 0, var_51_761, var_51_761)
		end

		if var_51_799 then
			local var_51_879 = var_51_868 + var_51_872 + var_51_814
			local var_51_880 = var_51_750 and {
				var_0_80("#6FAACC")
			} or var_51_801 and {
				var_0_80("#5FAF6F")
			} or {
				var_0_80("#A84F5A")
			}
			local var_51_881 = var_0_98(var_51_750, var_51_801)
			local var_51_882 = var_51_841 + var_51_758 + (var_51_810 - var_51_803) / 2
			local var_51_883 = {
				var_51_880[1] * 0.25,
				var_51_880[2] * 0.25,
				var_51_880[3] * 0.25,
				1
			}
			local var_51_884 = var_51_879 - 1
			local var_51_885 = var_51_884 + math.floor((var_51_815 - var_51_805) / 2)
			local var_51_886 = var_51_884 + math.floor((var_51_815 - var_51_876) / 2) - 2

			var_0_85(math.floor(var_51_850), math.floor(var_51_884), math.floor(var_51_851), math.floor(var_51_815), var_51_883, nil)

			if var_51_807 then
				local var_51_887 = var_0_84()
				local var_51_888 = math.floor(var_51_882)
				local var_51_889 = math.floor(var_51_885)
				local var_51_890 = math.floor(var_51_805)

				local function var_51_891(arg_55_0, arg_55_1)
					love.graphics.rectangle("fill", var_51_888 + arg_55_0, var_51_889 + arg_55_1, var_51_890, var_51_887)
					love.graphics.rectangle("fill", var_51_888 + arg_55_0, var_51_889 + arg_55_1 + var_51_890 - var_51_887, var_51_890, var_51_887)
					love.graphics.rectangle("fill", var_51_888 + arg_55_0, var_51_889 + arg_55_1, var_51_887, var_51_890)
					love.graphics.rectangle("fill", var_51_888 + arg_55_0 + var_51_890 - var_51_887, var_51_889 + arg_55_1, var_51_887, var_51_890)

					if var_51_801 then
						local var_55_0 = {
							{
								2,
								5
							},
							{
								3,
								6
							},
							{
								4,
								5
							},
							{
								5,
								4
							},
							{
								6,
								3
							},
							{
								7,
								2
							}
						}

						for iter_55_0, iter_55_1 in ipairs(var_55_0) do
							love.graphics.rectangle("fill", var_51_888 + arg_55_0 + iter_55_1[1] * var_51_887, var_51_889 + arg_55_1 + iter_55_1[2] * var_51_887, var_51_887, var_51_887)
						end
					end
				end

				love.graphics.setColor(0, 0, 0, 0.45)
				var_51_891(0, var_51_887)
				love.graphics.setColor(var_51_880[1], var_51_880[2], var_51_880[3], 1)
				var_51_891(0, 0)
			end

			local var_51_892 = var_51_882

			if var_51_807 then
				var_51_892 = var_51_892 + var_51_805 + var_51_806
			end

			if var_51_800 then
				local var_51_893 = var_0_101(" ", var_51_755, var_51_761)

				for iter_51_55, iter_51_56 in ipairs(var_51_800) do
					local var_51_894 = var_51_881[iter_51_56.kind] or var_51_880

					love.graphics.setColor(var_51_894[1], var_51_894[2], var_51_894[3], 1)
					love.graphics.print(iter_51_56.text, math.floor(var_51_892), math.floor(var_51_886), 0, var_51_761, var_51_761)

					var_51_892 = var_51_892 + var_0_101(iter_51_56.text, var_51_755, var_51_761)

					if iter_51_55 < #var_51_800 then
						var_51_892 = var_51_892 + var_51_893
					end
				end
			else
				love.graphics.setColor(var_51_880[1], var_51_880[2], var_51_880[3], 1)
				love.graphics.print(var_51_799, math.floor(var_51_892), math.floor(var_51_886), 0, var_51_761, var_51_761)
			end
		end

		var_51_755:setLineHeight(var_51_757)
	end

	love.graphics.setColor(1, 1, 1, 1)

	if var_0_24 then
		local var_51_895 = var_0_25.scale
		local var_51_896, var_51_897 = var_0_24:getDimensions()
		local var_51_898 = 60
		local var_51_899 = 60
		local var_51_900 = var_51_896 * var_51_895
		local var_51_901 = var_51_897 * var_51_895

		var_0_25.rect = {
			x = var_51_898 - var_51_900 / 2,
			y = var_51_899 - var_51_901 / 2,
			w = var_51_900,
			h = var_51_901
		}

		love.graphics.draw(var_0_24, var_51_898, var_51_899, 0, var_51_895, var_51_895, var_51_896 / 2, var_51_897 / 2)
	end

	if var_0_18 then
		local var_51_902, var_51_903 = var_0_18:getDimensions()
		local var_51_904 = 1.15
		local var_51_905 = math.floor((var_51_0 - var_51_902 * var_51_904) / 2)
		local var_51_906 = 25

		love.graphics.draw(var_0_18, var_51_905, var_51_906, 0, var_51_904, var_51_904)
	else
		local var_51_907 = arg_51_0.fontTitle or love.graphics.getFont()

		love.graphics.setFont(var_51_907)

		local var_51_908 = arg_51_0 and arg_51_0.menuSettings and arg_51_0.menuSettings.language or "ko"
		local var_51_909 = var_0_3.getText("upgrade_title", var_51_908)
		local var_51_910 = 2
		local var_51_911 = var_51_907:getWidth(var_51_909) * var_51_910
		local var_51_912 = var_51_907:getHeight() * var_51_910

		love.graphics.print(var_51_909, (var_51_0 - var_51_911) / 2, 50, 0, var_51_910, var_51_910)
	end

	if var_0_21 and var_0_22 and var_0_23 then
		local var_51_913 = var_0_19 or arg_51_0.fontTitle or love.graphics.getFont()

		love.graphics.setFont(var_51_913)
		love.graphics.setColor(1, 1, 1, 1)

		local var_51_914 = 1
		local var_51_915 = 1.2
		local var_51_916 = 10
		local var_51_917 = 20
		local var_51_918 = 10
		local var_51_919 = arg_51_0 and arg_51_0.menuSettings and arg_51_0.menuSettings.language or "ko"
		local var_51_920 = rawget(_G, "Controller")

		if not var_51_920 or not var_51_920.isPad or not var_51_920.isPad() or not var_51_920.glyphRowSize then
			var_51_920 = nil
		end

		local function var_51_921(arg_56_0, arg_56_1)
			if var_51_920 then
				return var_51_920.glyphRowSize(arg_56_1)
			end

			local var_56_0, var_56_1 = arg_56_0:getDimensions()

			return var_56_0 * var_51_915, var_56_1 * var_51_915
		end

		local function var_51_922(arg_57_0, arg_57_1, arg_57_2, arg_57_3, arg_57_4)
			if var_51_920 then
				local var_57_0, var_57_1 = var_51_920.glyphRowSize(arg_57_1)

				var_51_920.drawGlyphRow(arg_57_1, math.floor(arg_57_2), math.floor(arg_57_3 + (arg_57_4 - var_57_1) / 2))
				love.graphics.setColor(1, 1, 1, 1)

				return
			end

			love.graphics.draw(arg_57_0, math.floor(arg_57_2), math.floor(arg_57_3), 0, var_51_915, var_51_915)
		end

		local var_51_923 = var_0_3.getText("upgrade_action_select_move", var_51_919)
		local var_51_924 = var_51_913:getWidth(var_51_923) * var_51_914
		local var_51_925 = var_51_913:getHeight() * var_51_914
		local var_51_926, var_51_927 = var_51_921(var_0_21, {
			"rstick"
		})
		local var_51_928 = math.max(var_51_925, var_51_927)
		local var_51_929 = var_51_924 + var_51_916 + var_51_926
		local var_51_930 = var_51_0 - var_51_917 - var_51_929
		local var_51_931 = var_0_3.getText("upgrade_action_zoom", var_51_919)
		local var_51_932 = var_51_913:getWidth(var_51_931) * var_51_914
		local var_51_933 = var_51_913:getHeight() * var_51_914
		local var_51_934, var_51_935 = var_51_921(var_0_23, {
			"leftshoulder",
			"rightshoulder"
		})
		local var_51_936 = math.max(var_51_933, var_51_935)
		local var_51_937 = var_51_932 + var_51_916 + var_51_934
		local var_51_938 = var_51_0 - var_51_917 - var_51_937
		local var_51_939 = var_51_1 - var_51_917 - var_51_936
		local var_51_940 = var_51_939 - var_51_918 - var_51_928
		local var_51_941 = var_51_940 + (var_51_927 - var_51_925) / 2

		love.graphics.print(var_51_923, math.floor(var_51_930), math.floor(var_51_941), 0, var_51_914, var_51_914)
		var_51_922(var_0_21, {
			"rstick"
		}, var_51_930 + var_51_924 + var_51_916, var_51_940, var_51_927)

		local var_51_942 = var_0_3.getText("upgrade_action_upgrade", var_51_919)
		local var_51_943 = var_51_913:getWidth(var_51_942) * var_51_914
		local var_51_944 = var_51_913:getHeight() * var_51_914
		local var_51_945, var_51_946 = var_51_921(var_0_22, {
			"@confirm"
		})
		local var_51_947 = math.max(var_51_944, var_51_946)
		local var_51_948 = var_51_943 + var_51_916 + var_51_945
		local var_51_949 = var_51_0 - var_51_917 - var_51_948
		local var_51_950 = var_51_940 - var_51_918 - var_51_947
		local var_51_951 = var_51_950 + (var_51_946 - var_51_944) / 2

		love.graphics.print(var_51_942, math.floor(var_51_949), math.floor(var_51_951), 0, var_51_914, var_51_914)
		var_51_922(var_0_22, {
			"@confirm"
		}, var_51_949 + var_51_943 + var_51_916, var_51_950, var_51_946)

		local var_51_952 = var_51_939 + (var_51_935 - var_51_933) / 2

		love.graphics.print(var_51_931, math.floor(var_51_938), math.floor(var_51_952), 0, var_51_914, var_51_914)
		var_51_922(var_0_23, {
			"leftshoulder",
			"rightshoulder"
		}, var_51_938 + var_51_932 + var_51_916, var_51_939, var_51_935)

		if var_51_920 then
			local var_51_953 = var_0_3.getText("pad_hint_back", var_51_919)
			local var_51_954 = var_51_913:getWidth(var_51_953) * var_51_914
			local var_51_955 = var_51_913:getHeight() * var_51_914
			local var_51_956, var_51_957 = var_51_921(nil, {
				"@back"
			})
			local var_51_958 = math.max(var_51_955, var_51_957)
			local var_51_959 = var_51_0 - var_51_917 - (var_51_954 + var_51_916 + var_51_956)
			local var_51_960 = var_51_950 - var_51_918 - var_51_958

			love.graphics.print(var_51_953, math.floor(var_51_959), math.floor(var_51_960 + (var_51_957 - var_51_955) / 2), 0, var_51_914, var_51_914)
			var_51_922(nil, {
				"@back"
			}, var_51_959 + var_51_954 + var_51_916, var_51_960, var_51_957)
		end
	end
end

function var_0_0.update(arg_58_0, arg_58_1, arg_58_2)
	var_0_71()

	local var_58_0 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

	if var_0_26 and var_0_26.setVolume then
		var_0_26:setVolume(var_58_0 * 1.6)
	end

	if var_0_27 and var_0_27.setVolume then
		var_0_27:setVolume(var_58_0 * 1.6)
	end

	if var_0_51 and not var_0_54 then
		local var_58_1 = 1 - math.exp(-math.max(0, arg_58_0) * 11)

		var_0_46 = var_0_46 + (var_0_48 - var_0_46) * var_58_1
		var_0_44 = var_0_44 + (var_0_49 - var_0_44) * var_58_1
		var_0_45 = var_0_45 + (var_0_50 - var_0_45) * var_58_1

		if math.abs(var_0_48 - var_0_46) < 0.001 and math.abs(var_0_49 - var_0_44) < 0.05 and math.abs(var_0_50 - var_0_45) < 0.05 then
			var_0_46 = var_0_48
			var_0_44, var_0_45 = var_0_49, var_0_50
			var_0_51 = false
		end
	end

	local var_58_2 = 0
	local var_58_3 = 0

	if love.keyboard and love.keyboard.isDown then
		if love.keyboard.isDown("a", "left") then
			var_58_2 = var_58_2 + 1
		end

		if love.keyboard.isDown("d", "right") then
			var_58_2 = var_58_2 - 1
		end

		if love.keyboard.isDown("w", "up") then
			var_58_3 = var_58_3 + 1
		end

		if love.keyboard.isDown("s", "down") then
			var_58_3 = var_58_3 - 1
		end
	end

	local var_58_4 = var_58_2 + (var_0_0._padPanX or 0)
	local var_58_5 = var_58_3 + (var_0_0._padPanY or 0)
	local var_58_6 = var_58_4 ~= 0 or var_58_5 ~= 0
	local var_58_7 = 0
	local var_58_8 = 0

	if var_58_6 then
		local var_58_9 = math.sqrt(var_58_4 * var_58_4 + var_58_5 * var_58_5)
		local var_58_10 = 250 * math.min(1, var_58_9)

		var_58_7 = var_58_4 / var_58_9 * var_58_10
		var_58_8 = var_58_5 / var_58_9 * var_58_10
	end

	local var_58_11 = math.min(math.max(arg_58_0, 0), 0.05)
	local var_58_12 = var_58_6 and 11 or 7.5
	local var_58_13 = 1 - math.exp(-var_58_12 * var_58_11)

	var_0_55 = var_0_55 + (var_58_7 - var_0_55) * var_58_13
	var_0_56 = var_0_56 + (var_58_8 - var_0_56) * var_58_13

	if not var_58_6 then
		if math.abs(var_0_55) < 0.5 then
			var_0_55 = 0
		end

		if math.abs(var_0_56) < 0.5 then
			var_0_56 = 0
		end
	end

	if var_0_55 ~= 0 or var_0_56 ~= 0 then
		local var_58_14 = var_0_44
		local var_58_15 = var_0_45
		local var_58_16 = var_58_14 + var_0_55 * var_58_11
		local var_58_17 = var_58_15 + var_0_56 * var_58_11

		var_0_44, var_0_45 = var_0_62(var_58_16, var_58_17, var_0_46)

		local var_58_18 = var_0_44 - var_58_14
		local var_58_19 = var_0_45 - var_58_15

		if math.abs(var_0_44 - var_58_16) > 0.001 then
			var_0_55 = 0
		end

		if math.abs(var_0_45 - var_58_17) > 0.001 then
			var_0_56 = 0
		end

		if var_0_51 then
			var_0_49, var_0_50 = var_0_62(var_0_49 + var_58_18, var_0_50 + var_58_19, var_0_48)
		else
			var_0_49, var_0_50 = var_0_44, var_0_45
		end
	end

	var_0_78 = var_0_78 + arg_58_0

	if var_0_78 > var_0_79 then
		var_0_78 = 0
		var_0_79 = love.math.random(2, 6)

		local var_58_20 = love.math.random(-200, 1480)
		local var_58_21 = love.math.random(-200, 500)

		table.insert(var_0_77, {
			life = 1,
			x = var_58_20,
			y = var_58_21,
			len = love.math.random(50, 150),
			speed = love.math.random(600, 1000),
			angle = math.pi / 4,
			thickness = love.math.random(1, 2)
		})
	end

	for iter_58_0 = #var_0_77, 1, -1 do
		local var_58_22 = var_0_77[iter_58_0]

		var_58_22.x = var_58_22.x + math.cos(var_58_22.angle) * var_58_22.speed * arg_58_0
		var_58_22.y = var_58_22.y + math.sin(var_58_22.angle) * var_58_22.speed * arg_58_0
		var_58_22.life = var_58_22.life - arg_58_0 * 1.5

		if var_58_22.life <= 0 then
			table.remove(var_0_77, iter_58_0)
		end
	end

	if var_0_32 then
		var_0_33 = var_0_33 - arg_58_0

		if var_0_33 <= 0 then
			local var_58_23 = var_0_32

			var_0_32 = nil

			return var_58_23
		end
	end

	if var_0_25 and var_0_25.rect then
		local var_58_24 = arg_58_1 or -9999
		local var_58_25 = arg_58_2 or -9999
		local var_58_26 = var_0_25.rect
		local var_58_27 = var_58_24 >= var_58_26.x and var_58_24 <= var_58_26.x + var_58_26.w and var_58_25 >= var_58_26.y and var_58_25 <= var_58_26.y + var_58_26.h

		if var_58_27 and not var_0_25._hovered and var_0_26 then
			if var_0_26:isPlaying() then
				var_0_26:stop()
			end

			var_0_26:play()
		end

		var_0_25._hovered = var_58_27

		local var_58_28 = 0.9
		local var_58_29 = var_58_28

		if var_0_25.pressed then
			local var_58_30 = var_58_28 * 0.9

			var_0_25.scale = var_0_25.scale + (var_58_30 - var_0_25.scale) * math.min(1, arg_58_0 * 20)
		elseif var_58_27 then
			local var_58_31 = var_58_28 * 1.15

			var_0_25.scale = var_0_25.scale + (var_58_31 - var_0_25.scale) * math.min(1, arg_58_0 * 12)
		else
			local var_58_32 = var_58_28

			var_0_25.scale = var_0_25.scale + (var_58_32 - var_0_25.scale) * math.min(1, arg_58_0 * 10)
		end
	end

	var_0_69 = nil

	local var_58_33 = false
	local var_58_34 = false

	if ui and ui._coreSelect and ui._coreSelect.active then
		var_58_34 = true
	end

	if arg_58_1 and arg_58_2 and not var_58_34 then
		local var_58_35 = var_0_52 / 2 + (arg_58_1 - var_0_52 / 2 - var_0_44) / var_0_46
		local var_58_36 = var_0_53 / 2 + (arg_58_2 - var_0_53 / 2 - var_0_45) / var_0_46

		for iter_58_1, iter_58_2 in pairs(var_0_73) do
			if var_58_35 >= iter_58_2.x and var_58_35 <= iter_58_2.x + iter_58_2.w and var_58_36 >= iter_58_2.y and var_58_36 <= iter_58_2.y + iter_58_2.h then
				var_0_69 = iter_58_1

				local var_58_37 = true

				break
			end
		end
	end

	for iter_58_3, iter_58_4 in pairs(var_0_66) do
		iter_58_4.shakeX = 0

		if iter_58_4.shakeT > 0 then
			iter_58_4.shakeT = iter_58_4.shakeT - arg_58_0

			if iter_58_4.shakeT < 0 then
				iter_58_4.shakeT = 0
			end

			local var_58_38 = 1 - iter_58_4.shakeT / iter_58_4.shakeDur
			local var_58_39 = 1 - var_58_38

			iter_58_4.shakeX = math.sin(var_58_38 * math.pi * 8) * iter_58_4.shakeAmp * var_58_39
		end

		iter_58_4.pulseT = (iter_58_4.pulseT or 0) + arg_58_0 * 4
		iter_58_4.shineT = (iter_58_4.shineT or 0) + arg_58_0

		if iter_58_4.shineT > 3 then
			iter_58_4.shineT = love.math.random() * -1
		end

		if iter_58_4.flashT > 0 then
			iter_58_4.flashT = iter_58_4.flashT - arg_58_0

			if iter_58_4.flashT < 0 then
				iter_58_4.flashT = 0
			end
		end

		local var_58_40 = false

		if iter_58_4.isDisappearing then
			iter_58_4.disappearTimer = iter_58_4.disappearTimer + arg_58_0

			local var_58_41 = iter_58_4.disappearTimer

			if var_58_41 < 0.1 then
				local var_58_42 = var_58_41 / 0.1

				iter_58_4.scaleX = 1 - var_58_42 * 0.1
				iter_58_4.scaleY = 1 - var_58_42 * 0.1
				iter_58_4.unlockLineProgress = math.max(0, 1 - var_58_41 / 0.4)
				var_58_40 = true
			elseif var_58_41 < 0.2 then
				local var_58_43 = (var_58_41 - 0.1) / 0.1

				iter_58_4.scaleX = 0.9 + var_58_43 * 0.4
				iter_58_4.scaleY = 0.9 + var_58_43 * 0.4
				iter_58_4.unlockLineProgress = math.max(0, 1 - var_58_41 / 0.4)
				var_58_40 = true
			elseif var_58_41 < 0.4 then
				local var_58_44 = (var_58_41 - 0.2) / 0.2

				iter_58_4.scaleX = 1.3 * (1 - var_58_44)
				iter_58_4.scaleY = 1.3 * (1 - var_58_44)
				iter_58_4.unlockLineProgress = math.max(0, 1 - var_58_41 / 0.4)
				var_58_40 = true
			else
				iter_58_4.isDisappearing = false
				iter_58_4.revealed = false
				iter_58_4.unlockLineProgress = 0
				iter_58_4.scaleX = 0
				iter_58_4.scaleY = 0
				var_58_40 = true
			end
		end

		if not var_58_40 then
			if iter_58_3 == "maxunit" or iter_58_3 == "maxunit2" or iter_58_3 == "maxunit3" or iter_58_3 == "maxhp" or iter_58_3 == "maxhp2" or iter_58_3 == "noviceshield" or iter_58_3 == "startgold" or iter_58_3 == "startingmerccontract" or iter_58_3 == "startgold2" or iter_58_3 == "comebackspin" or iter_58_3 == "gateheal" or iter_58_3 == "comebackgold" or iter_58_3 == "slotnudge" or iter_58_3 == "slotadvanced" or iter_58_3 == "slotadvanced2" or iter_58_3 == "slotadvanced3" or iter_58_3 == "slotrare" or iter_58_3 == "corereroll" or iter_58_3 == "firstcorespin" or iter_58_3 == "firstcoreuncommon" or iter_58_3 == "shopreroll" or iter_58_3 == "iteminventory" or iter_58_3 == "itemrefund" or iter_58_3 == "iteminventory2" or iter_58_3 == "itemresearch" or iter_58_3 == "shoppin" or iter_58_3 == "interest" or iter_58_3 == "dormantpower" or iter_58_3 == "growthbranch" or iter_58_3 == "factionsynergy" or var_0_87[iter_58_3] ~= nil and var_0_87[iter_58_3].parent ~= nil then
				local var_58_45 = var_0_87.slotodds.maxed

				if iter_58_3 == "slotnudge" then
					var_58_45 = var_0_87.maxunit and var_0_87.maxunit.maxed == true
				elseif iter_58_3 == "maxunit2" then
					var_58_45 = var_0_87.maxunit and var_0_87.maxunit.maxed == true
				elseif iter_58_3 == "maxunit3" then
					var_58_45 = var_0_87.maxunit2 and var_0_87.maxunit2.maxed == true
				elseif iter_58_3 == "noviceshield" then
					var_58_45 = var_0_87.maxhp and var_0_87.maxhp.maxed == true
				elseif iter_58_3 == "startgold" then
					var_58_45 = var_0_87.maxhp and var_0_87.maxhp.maxed == true
				elseif iter_58_3 == "startingmerccontract" then
					var_58_45 = var_0_87.startgold and var_0_87.startgold.maxed == true
				elseif iter_58_3 == "comebackspin" then
					var_58_45 = var_0_87.noviceshield and var_0_87.noviceshield.maxed == true
				elseif iter_58_3 == "gateheal" then
					var_58_45 = var_0_87.comebackspin and var_0_87.comebackspin.maxed == true
				elseif iter_58_3 == "comebackgold" then
					var_58_45 = var_0_87.startgold and var_0_87.startgold.maxed == true
				elseif iter_58_3 == "maxhp2" then
					var_58_45 = var_0_87.comebackgold and var_0_87.comebackgold.maxed == true
				elseif iter_58_3 == "startgold2" then
					var_58_45 = var_0_87.startgold and var_0_87.startgold.maxed == true
				elseif iter_58_3 == "interest" then
					var_58_45 = var_0_87.maxunit and var_0_87.maxunit.maxed == true
				elseif iter_58_3 == "dormantpower" then
					var_58_45 = var_0_87.interest and var_0_87.interest.maxed == true
				elseif iter_58_3 == "growthbranch" then
					var_58_45 = var_0_87.dormantpower and var_0_87.dormantpower.maxed == true
				elseif iter_58_3 == "factionsynergy" then
					var_58_45 = var_0_87.growthbranch and var_0_87.growthbranch.maxed == true
				elseif iter_58_3 == "slotadvanced2" then
					var_58_45 = var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true
				elseif iter_58_3 == "corereroll" then
					var_58_45 = var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true
				elseif iter_58_3 == "firstcorespin" then
					var_58_45 = var_0_87.corereroll and var_0_87.corereroll.maxed == true
				elseif iter_58_3 == "firstcoreuncommon" then
					var_58_45 = var_0_87.firstcorespin and var_0_87.firstcorespin.maxed == true
				elseif iter_58_3 == "shopreroll" then
					var_58_45 = var_0_87.slotadvanced and var_0_87.slotadvanced.maxed == true
				elseif iter_58_3 == "iteminventory" then
					var_58_45 = var_0_87.shopreroll and var_0_87.shopreroll.maxed == true
				elseif iter_58_3 == "itemrefund" then
					var_58_45 = var_0_87.iteminventory and var_0_87.iteminventory.maxed == true
				elseif iter_58_3 == "iteminventory2" then
					var_58_45 = var_0_87.iteminventory and var_0_87.iteminventory.maxed == true
				elseif iter_58_3 == "itemresearch" then
					var_58_45 = var_0_87.shopreroll and var_0_87.shopreroll.maxed == true
				elseif iter_58_3 == "shoppin" then
					var_58_45 = var_0_87.shopreroll and var_0_87.shopreroll.maxed == true
				elseif iter_58_3 == "slotadvanced3" then
					var_58_45 = var_0_87.slotadvanced2 and var_0_87.slotadvanced2.maxed == true
				elseif iter_58_3 == "slotrare" then
					var_58_45 = var_0_87.slotadvanced3 and var_0_87.slotadvanced3.maxed == true
				elseif var_0_87[iter_58_3] and var_0_87[iter_58_3].parent then
					local var_58_46 = var_0_87[var_0_87[iter_58_3].parent]

					var_58_45 = var_0_87.slotodds.maxed == true and var_58_46 ~= nil and var_58_46.maxed == true
				end

				if var_58_45 then
					if iter_58_3 == "maxhp" then
						local var_58_47 = var_0_67("maxunit")

						if var_58_47 and var_58_47.unlockLineProgress then
							iter_58_4.unlockLineProgress = var_58_47.unlockLineProgress
						end
					end

					if iter_58_4.unlockLineProgress < 1 then
						iter_58_4.unlockLineProgress = iter_58_4.unlockLineProgress + arg_58_0 * 4

						if iter_58_4.unlockLineProgress >= 1 then
							iter_58_4.unlockLineProgress = 1

							if not iter_58_4.revealed then
								iter_58_4.revealed = true
								iter_58_4.isAppearing = true
								iter_58_4.appearTimer = 0
								iter_58_4.scaleX = 0
								iter_58_4.scaleY = 0
							end
						end
					elseif not iter_58_4.revealed then
						iter_58_4.unlockLineProgress = 1
						iter_58_4.revealed = true
					end
				end

				if iter_58_4.isAppearing then
					iter_58_4.appearTimer = iter_58_4.appearTimer + arg_58_0

					local var_58_48 = iter_58_4.appearTimer

					if var_58_48 < 0.2 then
						local var_58_49 = var_58_48 / 0.2

						targetX = var_58_49 * 1.3
						targetY = var_58_49 * 1.3
						iter_58_4.scaleX = targetX
						iter_58_4.scaleY = targetY
						var_58_40 = true
					elseif var_58_48 < 0.3 then
						local var_58_50 = (var_58_48 - 0.2) / 0.1

						targetX = 1.3 - var_58_50 * 0.4
						targetY = 1.3 - var_58_50 * 0.4
						iter_58_4.scaleX = targetX
						iter_58_4.scaleY = targetY
						var_58_40 = true
					elseif var_58_48 < 0.4 then
						local var_58_51 = (var_58_48 - 0.3) / 0.1

						targetX = 0.9 + var_58_51 * 0.1
						targetY = 0.9 + var_58_51 * 0.1
						iter_58_4.scaleX = targetX
						iter_58_4.scaleY = targetY
						var_58_40 = true
					else
						iter_58_4.isAppearing = false
						iter_58_4.scaleX = 1
						iter_58_4.scaleY = 1
					end
				end
			end

			if not var_58_40 then
				local var_58_52 = 1
				local var_58_53 = var_58_52
				local var_58_54 = var_58_52

				if iter_58_4.isPopping then
					iter_58_4.popTimer = iter_58_4.popTimer + arg_58_0

					if iter_58_4.popTimer < 0.08 then
						local var_58_55 = 1.15
						local var_58_56 = 0.85

						iter_58_4.scaleX = iter_58_4.scaleX + (var_58_55 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 30)
						iter_58_4.scaleY = iter_58_4.scaleY + (var_58_56 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 30)
					elseif iter_58_4.popTimer < 0.22 then
						local var_58_57 = 0.9
						local var_58_58 = 1.1

						iter_58_4.scaleX = iter_58_4.scaleX + (var_58_57 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 18)
						iter_58_4.scaleY = iter_58_4.scaleY + (var_58_58 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 18)
					elseif iter_58_4.popTimer < 0.35 then
						local var_58_59 = 1.05
						local var_58_60 = 0.95

						iter_58_4.scaleX = iter_58_4.scaleX + (var_58_59 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 15)
						iter_58_4.scaleY = iter_58_4.scaleY + (var_58_60 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 15)
					elseif iter_58_4.popTimer < 0.48 then
						local var_58_61 = 0.98
						local var_58_62 = 1.02

						iter_58_4.scaleX = iter_58_4.scaleX + (var_58_61 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 12)
						iter_58_4.scaleY = iter_58_4.scaleY + (var_58_62 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 12)
					else
						local var_58_63 = 1
						local var_58_64 = 1

						iter_58_4.scaleX = iter_58_4.scaleX + (var_58_63 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 8)
						iter_58_4.scaleY = iter_58_4.scaleY + (var_58_64 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 8)

						if math.abs(iter_58_4.scaleY - 1) < 0.005 and iter_58_4.popTimer > 0.6 then
							iter_58_4.isPopping = false
						end
					end
				elseif iter_58_4.pressed then
					local var_58_65 = var_58_52 * 0.9
					local var_58_66 = var_58_52 * 0.9

					iter_58_4.scaleX = iter_58_4.scaleX + (var_58_65 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 20)
					iter_58_4.scaleY = iter_58_4.scaleY + (var_58_66 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 20)
					iter_58_4.pressTimer = (iter_58_4.pressTimer or 0) + arg_58_0

					if iter_58_4.pressTimer > 0.1 then
						iter_58_4.pressed = false
						iter_58_4.pressTimer = 0
					end
				elseif var_0_69 == iter_58_3 and iter_58_4.revealed ~= false then
					local var_58_67 = var_58_52 * 1.15
					local var_58_68 = var_58_52 * 1.15

					iter_58_4.scaleX = iter_58_4.scaleX + (var_58_67 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 12)
					iter_58_4.scaleY = iter_58_4.scaleY + (var_58_68 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 12)
				else
					local var_58_69 = var_58_52
					local var_58_70 = var_58_52

					iter_58_4.scaleX = iter_58_4.scaleX + (var_58_69 - iter_58_4.scaleX) * math.min(1, arg_58_0 * 10)
					iter_58_4.scaleY = iter_58_4.scaleY + (var_58_70 - iter_58_4.scaleY) * math.min(1, arg_58_0 * 10)
				end
			end
		end
	end
end

function var_0_0.mousepressed(arg_59_0, arg_59_1, arg_59_2)
	var_0_71()

	if var_0_64 and arg_59_2 == 2 and var_0_69 and var_0_87[var_0_69] and var_0_87[var_0_69].maxed then
		local var_59_0 = var_0_69
		local var_59_1 = var_0_87.maxhp and var_0_87.maxhp.maxed and true or false

		var_0_87[var_59_0].maxed = false

		if var_59_0 == "slotodds" then
			if var_0_87.maxunit then
				var_0_87.maxunit.maxed = false
			end

			if var_0_87.maxunit2 then
				var_0_87.maxunit2.maxed = false
			end

			if var_0_87.maxunit3 then
				var_0_87.maxunit3.maxed = false
			end

			if var_0_87.maxhp then
				var_0_87.maxhp.maxed = false
			end

			if var_0_87.maxhp2 then
				var_0_87.maxhp2.maxed = false
			end

			if var_0_87.noviceshield then
				var_0_87.noviceshield.maxed = false
			end

			if var_0_87.comebackspin then
				var_0_87.comebackspin.maxed = false
			end

			if var_0_87.gateheal then
				var_0_87.gateheal.maxed = false
			end

			if var_0_87.startgold then
				var_0_87.startgold.maxed = false
			end

			if var_0_87.startingmerccontract then
				var_0_87.startingmerccontract.maxed = false
			end

			if var_0_87.startgold2 then
				var_0_87.startgold2.maxed = false
			end

			if var_0_87.comebackgold then
				var_0_87.comebackgold.maxed = false
			end

			if var_0_87.slotnudge then
				var_0_87.slotnudge.maxed = false
			end

			if var_0_87.preptime then
				var_0_87.preptime.maxed = false
			end

			if var_0_87.interest then
				var_0_87.interest.maxed = false
			end

			if var_0_87.dormantpower then
				var_0_87.dormantpower.maxed = false
			end

			if var_0_87.growthbranch then
				var_0_87.growthbranch.maxed = false
			end

			if var_0_87.factionsynergy then
				var_0_87.factionsynergy.maxed = false
			end

			if var_0_87.preptime2 then
				var_0_87.preptime2.maxed = false
			end

			if var_0_87.preptimerdisabled then
				var_0_87.preptimerdisabled.maxed = false
			end

			if var_0_87.slotadvanced then
				var_0_87.slotadvanced.maxed = false
			end

			if var_0_87.slotadvanced2 then
				var_0_87.slotadvanced2.maxed = false
			end

			if var_0_87.slotadvanced3 then
				var_0_87.slotadvanced3.maxed = false
			end

			if var_0_87.slotrare then
				var_0_87.slotrare.maxed = false
			end

			if var_0_87.corereroll then
				var_0_87.corereroll.maxed = false
			end

			if var_0_87.firstcorespin then
				var_0_87.firstcorespin.maxed = false
			end

			if var_0_87.firstcoreuncommon then
				var_0_87.firstcoreuncommon.maxed = false
			end

			if var_0_87.shopreroll then
				var_0_87.shopreroll.maxed = false
			end

			if var_0_87.iteminventory then
				var_0_87.iteminventory.maxed = false
			end

			if var_0_87.itemrefund then
				var_0_87.itemrefund.maxed = false
			end

			if var_0_87.iteminventory2 then
				var_0_87.iteminventory2.maxed = false
			end

			if var_0_87.itemresearch then
				var_0_87.itemresearch.maxed = false
			end

			if var_0_87.shoppin then
				var_0_87.shoppin.maxed = false
			end

			var_0_68(var_0_67("maxunit"))
			var_0_68(var_0_67("maxunit2"))
			var_0_68(var_0_67("maxunit3"))
			var_0_68(var_0_67("maxhp"))
			var_0_68(var_0_67("maxhp2"))
			var_0_68(var_0_67("noviceshield"))
			var_0_68(var_0_67("comebackspin"))
			var_0_68(var_0_67("gateheal"))
			var_0_68(var_0_67("startgold"))
			var_0_68(var_0_67("startingmerccontract"))
			var_0_68(var_0_67("startgold2"))
			var_0_68(var_0_67("comebackgold"))
			var_0_68(var_0_67("slotnudge"))
			var_0_68(var_0_67("preptime"))
			var_0_68(var_0_67("interest"))
			var_0_68(var_0_67("dormantpower"))
			var_0_68(var_0_67("growthbranch"))
			var_0_68(var_0_67("factionsynergy"))
			var_0_68(var_0_67("preptime2"))
			var_0_68(var_0_67("preptimerdisabled"))
			var_0_68(var_0_67("slotadvanced"))
			var_0_68(var_0_67("slotadvanced2"))
			var_0_68(var_0_67("slotadvanced3"))
			var_0_68(var_0_67("slotrare"))
			var_0_68(var_0_67("corereroll"))
			var_0_68(var_0_67("firstcorespin"))
			var_0_68(var_0_67("firstcoreuncommon"))
			var_0_68(var_0_67("shopreroll"))
			var_0_68(var_0_67("iteminventory"))
			var_0_68(var_0_67("itemrefund"))
			var_0_68(var_0_67("iteminventory2"))
			var_0_68(var_0_67("itemresearch"))
			var_0_68(var_0_67("shoppin"))
		elseif var_59_0 == "slotadvanced" then
			if var_0_87.slotadvanced2 then
				var_0_87.slotadvanced2.maxed = false
			end

			if var_0_87.slotadvanced3 then
				var_0_87.slotadvanced3.maxed = false
			end

			if var_0_87.slotrare then
				var_0_87.slotrare.maxed = false
			end

			if var_0_87.corereroll then
				var_0_87.corereroll.maxed = false
			end

			if var_0_87.firstcorespin then
				var_0_87.firstcorespin.maxed = false
			end

			if var_0_87.firstcoreuncommon then
				var_0_87.firstcoreuncommon.maxed = false
			end

			if var_0_87.shopreroll then
				var_0_87.shopreroll.maxed = false
			end

			if var_0_87.iteminventory then
				var_0_87.iteminventory.maxed = false
			end

			if var_0_87.itemrefund then
				var_0_87.itemrefund.maxed = false
			end

			if var_0_87.iteminventory2 then
				var_0_87.iteminventory2.maxed = false
			end

			if var_0_87.itemresearch then
				var_0_87.itemresearch.maxed = false
			end

			if var_0_87.shoppin then
				var_0_87.shoppin.maxed = false
			end

			var_0_68(var_0_67("slotadvanced2"))
			var_0_68(var_0_67("slotadvanced3"))
			var_0_68(var_0_67("slotrare"))
			var_0_68(var_0_67("corereroll"))
			var_0_68(var_0_67("firstcorespin"))
			var_0_68(var_0_67("firstcoreuncommon"))
			var_0_68(var_0_67("shopreroll"))
			var_0_68(var_0_67("iteminventory"))
			var_0_68(var_0_67("itemrefund"))
			var_0_68(var_0_67("iteminventory2"))
			var_0_68(var_0_67("itemresearch"))
			var_0_68(var_0_67("shoppin"))
		elseif var_59_0 == "corereroll" then
			if var_0_87.firstcorespin then
				var_0_87.firstcorespin.maxed = false
			end

			if var_0_87.firstcoreuncommon then
				var_0_87.firstcoreuncommon.maxed = false
			end

			var_0_68(var_0_67("firstcorespin"))
			var_0_68(var_0_67("firstcoreuncommon"))
		elseif var_59_0 == "firstcorespin" then
			if var_0_87.firstcoreuncommon then
				var_0_87.firstcoreuncommon.maxed = false
			end

			var_0_68(var_0_67("firstcoreuncommon"))
		elseif var_59_0 == "shopreroll" then
			if var_0_87.iteminventory then
				var_0_87.iteminventory.maxed = false
			end

			if var_0_87.itemrefund then
				var_0_87.itemrefund.maxed = false
			end

			if var_0_87.iteminventory2 then
				var_0_87.iteminventory2.maxed = false
			end

			if var_0_87.itemresearch then
				var_0_87.itemresearch.maxed = false
			end

			if var_0_87.shoppin then
				var_0_87.shoppin.maxed = false
			end

			var_0_68(var_0_67("iteminventory"))
			var_0_68(var_0_67("itemrefund"))
			var_0_68(var_0_67("iteminventory2"))
			var_0_68(var_0_67("itemresearch"))
			var_0_68(var_0_67("shoppin"))
		elseif var_59_0 == "iteminventory" then
			if var_0_87.itemrefund then
				var_0_87.itemrefund.maxed = false
			end

			if var_0_87.iteminventory2 then
				var_0_87.iteminventory2.maxed = false
			end

			var_0_68(var_0_67("itemrefund"))
			var_0_68(var_0_67("iteminventory2"))
		elseif var_59_0 == "slotadvanced2" then
			if var_0_87.slotadvanced3 then
				var_0_87.slotadvanced3.maxed = false
			end

			if var_0_87.slotrare then
				var_0_87.slotrare.maxed = false
			end

			var_0_68(var_0_67("slotadvanced3"))
			var_0_68(var_0_67("slotrare"))
		elseif var_59_0 == "slotadvanced3" then
			if var_0_87.slotrare then
				var_0_87.slotrare.maxed = false
			end

			var_0_68(var_0_67("slotrare"))
		elseif var_59_0 == "maxhp" then
			if var_0_87.noviceshield then
				var_0_87.noviceshield.maxed = false
			end

			if var_0_87.comebackspin then
				var_0_87.comebackspin.maxed = false
			end

			if var_0_87.gateheal then
				var_0_87.gateheal.maxed = false
			end

			if var_0_87.startgold then
				var_0_87.startgold.maxed = false
			end

			if var_0_87.startingmerccontract then
				var_0_87.startingmerccontract.maxed = false
			end

			if var_0_87.startgold2 then
				var_0_87.startgold2.maxed = false
			end

			if var_0_87.comebackgold then
				var_0_87.comebackgold.maxed = false
			end

			if var_0_87.maxhp2 then
				var_0_87.maxhp2.maxed = false
			end

			var_0_68(var_0_67("noviceshield"))
			var_0_68(var_0_67("comebackspin"))
			var_0_68(var_0_67("gateheal"))
			var_0_68(var_0_67("startgold"))
			var_0_68(var_0_67("startingmerccontract"))
			var_0_68(var_0_67("startgold2"))
			var_0_68(var_0_67("comebackgold"))
			var_0_68(var_0_67("maxhp2"))
		elseif var_59_0 == "noviceshield" then
			if var_0_87.comebackspin then
				var_0_87.comebackspin.maxed = false
			end

			if var_0_87.gateheal then
				var_0_87.gateheal.maxed = false
			end

			var_0_68(var_0_67("comebackspin"))
			var_0_68(var_0_67("gateheal"))
		elseif var_59_0 == "comebackspin" then
			if var_0_87.gateheal then
				var_0_87.gateheal.maxed = false
			end

			var_0_68(var_0_67("gateheal"))
		elseif var_59_0 == "startgold" then
			if var_0_87.startingmerccontract then
				var_0_87.startingmerccontract.maxed = false
			end

			if var_0_87.comebackgold then
				var_0_87.comebackgold.maxed = false
			end

			if var_0_87.startgold2 then
				var_0_87.startgold2.maxed = false
			end

			if var_0_87.maxhp2 then
				var_0_87.maxhp2.maxed = false
			end

			var_0_68(var_0_67("startingmerccontract"))
			var_0_68(var_0_67("comebackgold"))
			var_0_68(var_0_67("startgold2"))
			var_0_68(var_0_67("maxhp2"))
		elseif var_59_0 == "comebackgold" then
			if var_0_87.maxhp2 then
				var_0_87.maxhp2.maxed = false
			end

			var_0_68(var_0_67("maxhp2"))
		elseif var_59_0 == "maxunit" then
			if var_0_87.maxunit2 then
				var_0_87.maxunit2.maxed = false
			end

			if var_0_87.maxunit3 then
				var_0_87.maxunit3.maxed = false
			end

			if var_0_87.slotnudge then
				var_0_87.slotnudge.maxed = false
			end

			if var_0_87.preptime then
				var_0_87.preptime.maxed = false
			end

			if var_0_87.interest then
				var_0_87.interest.maxed = false
			end

			if var_0_87.dormantpower then
				var_0_87.dormantpower.maxed = false
			end

			if var_0_87.growthbranch then
				var_0_87.growthbranch.maxed = false
			end

			if var_0_87.factionsynergy then
				var_0_87.factionsynergy.maxed = false
			end

			if var_0_87.preptime2 then
				var_0_87.preptime2.maxed = false
			end

			if var_0_87.preptimerdisabled then
				var_0_87.preptimerdisabled.maxed = false
			end

			var_0_68(var_0_67("slotnudge"))
			var_0_68(var_0_67("maxunit2"))
			var_0_68(var_0_67("maxunit3"))
			var_0_68(var_0_67("preptime"))
			var_0_68(var_0_67("interest"))
			var_0_68(var_0_67("dormantpower"))
			var_0_68(var_0_67("growthbranch"))
			var_0_68(var_0_67("factionsynergy"))
			var_0_68(var_0_67("preptime2"))
			var_0_68(var_0_67("preptimerdisabled"))
		elseif var_59_0 == "maxunit2" then
			if var_0_87.maxunit3 then
				var_0_87.maxunit3.maxed = false
			end

			var_0_68(var_0_67("maxunit3"))
		elseif var_59_0 == "preptime" then
			if var_0_87.interest then
				var_0_87.interest.maxed = false
			end

			if var_0_87.preptime2 then
				var_0_87.preptime2.maxed = false
			end

			if var_0_87.preptimerdisabled then
				var_0_87.preptimerdisabled.maxed = false
			end

			var_0_68(var_0_67("interest"))
			var_0_68(var_0_67("preptime2"))
			var_0_68(var_0_67("preptimerdisabled"))
		elseif var_59_0 == "preptime2" then
			if var_0_87.preptimerdisabled then
				var_0_87.preptimerdisabled.maxed = false
			end

			var_0_68(var_0_67("preptimerdisabled"))
		elseif var_59_0 == "interest" then
			if var_0_87.dormantpower then
				var_0_87.dormantpower.maxed = false
			end

			if var_0_87.growthbranch then
				var_0_87.growthbranch.maxed = false
			end

			if var_0_87.factionsynergy then
				var_0_87.factionsynergy.maxed = false
			end

			var_0_68(var_0_67("dormantpower"))
			var_0_68(var_0_67("growthbranch"))
			var_0_68(var_0_67("factionsynergy"))
		elseif var_59_0 == "dormantpower" then
			if var_0_87.growthbranch then
				var_0_87.growthbranch.maxed = false
			end

			if var_0_87.factionsynergy then
				var_0_87.factionsynergy.maxed = false
			end

			var_0_68(var_0_67("growthbranch"))
			var_0_68(var_0_67("factionsynergy"))
		elseif var_59_0 == "growthbranch" then
			if var_0_87.factionsynergy then
				var_0_87.factionsynergy.maxed = false
			end

			var_0_68(var_0_67("factionsynergy"))
		end

		local var_59_2 = true

		while var_59_2 do
			var_59_2 = false

			for iter_59_0, iter_59_1 in pairs(var_0_87) do
				local var_59_3 = iter_59_1.parent and var_0_87[iter_59_1.parent]

				if var_59_3 and iter_59_1.maxed and not var_59_3.maxed then
					iter_59_1.maxed = false
					var_59_2 = true
				end
			end
		end

		for iter_59_2, iter_59_3 in pairs(var_0_87) do
			local var_59_4 = iter_59_3.parent and var_0_87[iter_59_3.parent]

			if var_59_4 and not var_59_4.maxed then
				local var_59_5 = var_0_67(iter_59_2)

				if (var_59_5.revealed or (var_59_5.unlockLineProgress or 0) > 0) and not var_59_5.isDisappearing then
					var_0_68(var_59_5)
				end
			end
		end

		var_0_0.applyUpgradeEffects()

		if var_59_0 == "maxhp" or var_59_0 == "slotodds" and var_59_1 then
			return {
				action = "downgrade_maxhp"
			}
		end

		return
	end

	if arg_59_2 == 1 then
		if var_0_25 and var_0_25.rect then
			local var_59_6 = var_0_25.rect

			if arg_59_0 >= var_59_6.x and arg_59_0 <= var_59_6.x + var_59_6.w and arg_59_1 >= var_59_6.y and arg_59_1 <= var_59_6.y + var_59_6.h then
				if var_0_27 then
					if var_0_27:isPlaying() then
						var_0_27:stop()
					end

					var_0_27:play()
				end

				var_0_25.pressed = true
				var_0_32 = "back"
				var_0_33 = 0.15

				return nil
			end
		end

		if var_0_69 and var_0_87[var_0_69] then
			local var_59_7 = var_0_69
			local var_59_8 = var_0_87[var_59_7]
			local var_59_9 = var_0_67(var_59_7)

			if var_59_9.revealed == false then
				return
			end

			local var_59_10 = var_0_1.getOriginiteAmount and var_0_1.getOriginiteAmount() or 0
			local var_59_11 = var_0_93(var_59_7) and var_59_10 >= var_59_8.cost
			local var_59_12 = var_59_8.maxed or false

			if not var_59_11 and not var_59_12 then
				var_59_9.shakeT = 0.3
				var_59_9.shakeDur = 0.4
				var_59_9.shakeAmp = 2
			elseif not var_59_12 and var_0_1.spendOriginite(var_59_8.cost) then
				var_59_9.scaleX = 1.2
				var_59_9.scaleY = 0.8
				var_59_9.popTimer = 0
				var_59_9.isPopping = true
				var_59_9.flashT = 0.2
				var_59_8.maxed = true

				var_0_0.applyUpgradeEffects()

				if var_59_7 == "slotodds" then
					local var_59_13 = var_0_67("slotadvanced")

					var_59_13.revealed = false
					var_59_13.unlockLineProgress = 0
					var_59_13.isAppearing = false
					var_59_13.appearTimer = 0
					var_59_13.scaleX = 0
					var_59_13.scaleY = 0

					local var_59_14 = var_0_67("slotadvanced2")

					var_59_14.revealed = false
					var_59_14.unlockLineProgress = 0
					var_59_14.isAppearing = false
					var_59_14.appearTimer = 0
					var_59_14.scaleX = 0
					var_59_14.scaleY = 0

					local var_59_15 = var_0_67("corereroll")

					var_59_15.revealed = false
					var_59_15.unlockLineProgress = 0
					var_59_15.isAppearing = false
					var_59_15.appearTimer = 0
					var_59_15.scaleX = 0
					var_59_15.scaleY = 0

					local var_59_16 = var_0_67("firstcorespin")

					var_59_16.revealed = false
					var_59_16.unlockLineProgress = 0
					var_59_16.isAppearing = false
					var_59_16.appearTimer = 0
					var_59_16.scaleX = 0
					var_59_16.scaleY = 0

					local var_59_17 = var_0_67("firstcoreuncommon")

					var_59_17.revealed = false
					var_59_17.unlockLineProgress = 0
					var_59_17.isAppearing = false
					var_59_17.appearTimer = 0
					var_59_17.scaleX = 0
					var_59_17.scaleY = 0

					local var_59_18 = var_0_67("shopreroll")

					var_59_18.revealed = false
					var_59_18.unlockLineProgress = 0
					var_59_18.isAppearing = false
					var_59_18.appearTimer = 0
					var_59_18.scaleX = 0
					var_59_18.scaleY = 0

					local var_59_19 = var_0_67("iteminventory")

					var_59_19.revealed = false
					var_59_19.unlockLineProgress = 0
					var_59_19.isAppearing = false
					var_59_19.appearTimer = 0
					var_59_19.scaleX = 0
					var_59_19.scaleY = 0

					local var_59_20 = var_0_67("itemrefund")

					var_59_20.revealed = false
					var_59_20.unlockLineProgress = 0
					var_59_20.isAppearing = false
					var_59_20.appearTimer = 0
					var_59_20.scaleX = 0
					var_59_20.scaleY = 0

					local var_59_21 = var_0_67("iteminventory2")

					var_59_21.revealed = false
					var_59_21.unlockLineProgress = 0
					var_59_21.isAppearing = false
					var_59_21.appearTimer = 0
					var_59_21.scaleX = 0
					var_59_21.scaleY = 0

					local var_59_22 = var_0_67("itemresearch")

					var_59_22.revealed = false
					var_59_22.unlockLineProgress = 0
					var_59_22.isAppearing = false
					var_59_22.appearTimer = 0
					var_59_22.scaleX = 0
					var_59_22.scaleY = 0

					local var_59_23 = var_0_67("shoppin")

					var_59_23.revealed = false
					var_59_23.unlockLineProgress = 0
					var_59_23.isAppearing = false
					var_59_23.appearTimer = 0
					var_59_23.scaleX = 0
					var_59_23.scaleY = 0

					local var_59_24 = var_0_67("slotadvanced3")

					var_59_24.revealed = false
					var_59_24.unlockLineProgress = 0
					var_59_24.isAppearing = false
					var_59_24.appearTimer = 0
					var_59_24.scaleX = 0
					var_59_24.scaleY = 0

					local var_59_25 = var_0_67("slotrare")

					var_59_25.revealed = false
					var_59_25.unlockLineProgress = 0
					var_59_25.isAppearing = false
					var_59_25.appearTimer = 0
					var_59_25.scaleX = 0
					var_59_25.scaleY = 0

					local var_59_26 = var_0_67("preptime")

					var_59_26.revealed = false
					var_59_26.unlockLineProgress = 0
					var_59_26.isAppearing = false
					var_59_26.appearTimer = 0
					var_59_26.scaleX = 0
					var_59_26.scaleY = 0

					local var_59_27 = var_0_67("interest")

					var_59_27.revealed = false
					var_59_27.unlockLineProgress = 0
					var_59_27.isAppearing = false
					var_59_27.appearTimer = 0
					var_59_27.scaleX = 0
					var_59_27.scaleY = 0

					local var_59_28 = var_0_67("preptime2")

					var_59_28.revealed = false
					var_59_28.unlockLineProgress = 0
					var_59_28.isAppearing = false
					var_59_28.appearTimer = 0
					var_59_28.scaleX = 0
					var_59_28.scaleY = 0

					local var_59_29 = var_0_67("preptimerdisabled")

					var_59_29.revealed = false
					var_59_29.unlockLineProgress = 0
					var_59_29.isAppearing = false
					var_59_29.appearTimer = 0
					var_59_29.scaleX = 0
					var_59_29.scaleY = 0

					local var_59_30 = var_0_67("maxhp2")

					var_59_30.revealed = false
					var_59_30.unlockLineProgress = 0
					var_59_30.isAppearing = false
					var_59_30.appearTimer = 0
					var_59_30.scaleX = 0
					var_59_30.scaleY = 0
				elseif var_59_7 == "slotadvanced" then
					local var_59_31 = var_0_67("slotadvanced2")

					var_59_31.revealed = false
					var_59_31.unlockLineProgress = 0
					var_59_31.isAppearing = false
					var_59_31.appearTimer = 0
					var_59_31.scaleX = 0
					var_59_31.scaleY = 0

					local var_59_32 = var_0_67("corereroll")

					var_59_32.revealed = false
					var_59_32.unlockLineProgress = 0
					var_59_32.isAppearing = false
					var_59_32.appearTimer = 0
					var_59_32.scaleX = 0
					var_59_32.scaleY = 0

					local var_59_33 = var_0_67("firstcorespin")

					var_59_33.revealed = false
					var_59_33.unlockLineProgress = 0
					var_59_33.isAppearing = false
					var_59_33.appearTimer = 0
					var_59_33.scaleX = 0
					var_59_33.scaleY = 0

					local var_59_34 = var_0_67("firstcoreuncommon")

					var_59_34.revealed = false
					var_59_34.unlockLineProgress = 0
					var_59_34.isAppearing = false
					var_59_34.appearTimer = 0
					var_59_34.scaleX = 0
					var_59_34.scaleY = 0

					local var_59_35 = var_0_67("shopreroll")

					var_59_35.revealed = false
					var_59_35.unlockLineProgress = 0
					var_59_35.isAppearing = false
					var_59_35.appearTimer = 0
					var_59_35.scaleX = 0
					var_59_35.scaleY = 0

					local var_59_36 = var_0_67("iteminventory")

					var_59_36.revealed = false
					var_59_36.unlockLineProgress = 0
					var_59_36.isAppearing = false
					var_59_36.appearTimer = 0
					var_59_36.scaleX = 0
					var_59_36.scaleY = 0

					local var_59_37 = var_0_67("itemrefund")

					var_59_37.revealed = false
					var_59_37.unlockLineProgress = 0
					var_59_37.isAppearing = false
					var_59_37.appearTimer = 0
					var_59_37.scaleX = 0
					var_59_37.scaleY = 0

					local var_59_38 = var_0_67("iteminventory2")

					var_59_38.revealed = false
					var_59_38.unlockLineProgress = 0
					var_59_38.isAppearing = false
					var_59_38.appearTimer = 0
					var_59_38.scaleX = 0
					var_59_38.scaleY = 0

					local var_59_39 = var_0_67("itemresearch")

					var_59_39.revealed = false
					var_59_39.unlockLineProgress = 0
					var_59_39.isAppearing = false
					var_59_39.appearTimer = 0
					var_59_39.scaleX = 0
					var_59_39.scaleY = 0

					local var_59_40 = var_0_67("shoppin")

					var_59_40.revealed = false
					var_59_40.unlockLineProgress = 0
					var_59_40.isAppearing = false
					var_59_40.appearTimer = 0
					var_59_40.scaleX = 0
					var_59_40.scaleY = 0

					local var_59_41 = var_0_67("slotadvanced3")

					var_59_41.revealed = false
					var_59_41.unlockLineProgress = 0
					var_59_41.isAppearing = false
					var_59_41.appearTimer = 0
					var_59_41.scaleX = 0
					var_59_41.scaleY = 0

					local var_59_42 = var_0_67("slotrare")

					var_59_42.revealed = false
					var_59_42.unlockLineProgress = 0
					var_59_42.isAppearing = false
					var_59_42.appearTimer = 0
					var_59_42.scaleX = 0
					var_59_42.scaleY = 0
				elseif var_59_7 == "iteminventory" then
					local var_59_43 = var_0_67("itemrefund")

					var_59_43.revealed = false
					var_59_43.unlockLineProgress = 0
					var_59_43.isAppearing = false
					var_59_43.appearTimer = 0
					var_59_43.scaleX = 0
					var_59_43.scaleY = 0

					local var_59_44 = var_0_67("iteminventory2")

					var_59_44.revealed = false
					var_59_44.unlockLineProgress = 0
					var_59_44.isAppearing = false
					var_59_44.appearTimer = 0
					var_59_44.scaleX = 0
					var_59_44.scaleY = 0
				elseif var_59_7 == "slotadvanced2" then
					local var_59_45 = var_0_67("slotadvanced3")

					var_59_45.revealed = false
					var_59_45.unlockLineProgress = 0
					var_59_45.isAppearing = false
					var_59_45.appearTimer = 0
					var_59_45.scaleX = 0
					var_59_45.scaleY = 0

					local var_59_46 = var_0_67("slotrare")

					var_59_46.revealed = false
					var_59_46.unlockLineProgress = 0
					var_59_46.isAppearing = false
					var_59_46.appearTimer = 0
					var_59_46.scaleX = 0
					var_59_46.scaleY = 0
				elseif var_59_7 == "slotadvanced3" then
					local var_59_47 = var_0_67("slotrare")

					var_59_47.revealed = false
					var_59_47.unlockLineProgress = 0
					var_59_47.isAppearing = false
					var_59_47.appearTimer = 0
					var_59_47.scaleX = 0
					var_59_47.scaleY = 0
				elseif var_59_7 == "maxhp" then
					local var_59_48 = var_0_67("noviceshield")

					var_59_48.revealed = false
					var_59_48.unlockLineProgress = 0
					var_59_48.isAppearing = false
					var_59_48.appearTimer = 0
					var_59_48.scaleX = 0
					var_59_48.scaleY = 0

					local var_59_49 = var_0_67("startgold")

					var_59_49.revealed = false
					var_59_49.unlockLineProgress = 0
					var_59_49.isAppearing = false
					var_59_49.appearTimer = 0
					var_59_49.scaleX = 0
					var_59_49.scaleY = 0
				elseif var_59_7 == "noviceshield" then
					local var_59_50 = var_0_67("comebackspin")

					var_59_50.revealed = false
					var_59_50.unlockLineProgress = 0
					var_59_50.isAppearing = false
					var_59_50.appearTimer = 0
					var_59_50.scaleX = 0
					var_59_50.scaleY = 0
				elseif var_59_7 == "startgold" then
					local var_59_51 = var_0_67("comebackgold")

					var_59_51.revealed = false
					var_59_51.unlockLineProgress = 0
					var_59_51.isAppearing = false
					var_59_51.appearTimer = 0
					var_59_51.scaleX = 0
					var_59_51.scaleY = 0

					local var_59_52 = var_0_67("startgold2")

					var_59_52.revealed = false
					var_59_52.unlockLineProgress = 0
					var_59_52.isAppearing = false
					var_59_52.appearTimer = 0
					var_59_52.scaleX = 0
					var_59_52.scaleY = 0

					local var_59_53 = var_0_67("maxhp2")

					var_59_53.revealed = false
					var_59_53.unlockLineProgress = 0
					var_59_53.isAppearing = false
					var_59_53.appearTimer = 0
					var_59_53.scaleX = 0
					var_59_53.scaleY = 0
				elseif var_59_7 == "comebackgold" then
					local var_59_54 = var_0_67("maxhp2")

					var_59_54.revealed = false
					var_59_54.unlockLineProgress = 0
					var_59_54.isAppearing = false
					var_59_54.appearTimer = 0
					var_59_54.scaleX = 0
					var_59_54.scaleY = 0
				elseif var_59_7 == "comebackspin" then
					local var_59_55 = var_0_67("gateheal")

					var_59_55.revealed = false
					var_59_55.unlockLineProgress = 0
					var_59_55.isAppearing = false
					var_59_55.appearTimer = 0
					var_59_55.scaleX = 0
					var_59_55.scaleY = 0
				elseif var_59_7 == "maxunit" then
					local var_59_56 = var_0_67("maxunit2")

					var_59_56.revealed = false
					var_59_56.unlockLineProgress = 0
					var_59_56.isAppearing = false
					var_59_56.appearTimer = 0
					var_59_56.scaleX = 0
					var_59_56.scaleY = 0

					local var_59_57 = var_0_67("maxunit3")

					var_59_57.revealed = false
					var_59_57.unlockLineProgress = 0
					var_59_57.isAppearing = false
					var_59_57.appearTimer = 0
					var_59_57.scaleX = 0
					var_59_57.scaleY = 0

					local var_59_58 = var_0_67("slotnudge")

					var_59_58.revealed = false
					var_59_58.unlockLineProgress = 0
					var_59_58.isAppearing = false
					var_59_58.appearTimer = 0
					var_59_58.scaleX = 0
					var_59_58.scaleY = 0

					local var_59_59 = var_0_67("preptime")

					var_59_59.revealed = false
					var_59_59.unlockLineProgress = 0
					var_59_59.isAppearing = false
					var_59_59.appearTimer = 0
					var_59_59.scaleX = 0
					var_59_59.scaleY = 0

					local var_59_60 = var_0_67("preptimerdisabled")

					var_59_60.revealed = false
					var_59_60.unlockLineProgress = 0
					var_59_60.isAppearing = false
					var_59_60.appearTimer = 0
					var_59_60.scaleX = 0
					var_59_60.scaleY = 0
				elseif var_59_7 == "maxunit2" then
					local var_59_61 = var_0_67("maxunit3")

					var_59_61.revealed = false
					var_59_61.unlockLineProgress = 0
					var_59_61.isAppearing = false
					var_59_61.appearTimer = 0
					var_59_61.scaleX = 0
					var_59_61.scaleY = 0
				elseif var_59_7 == "preptime" then
					local var_59_62 = var_0_67("interest")

					var_59_62.revealed = false
					var_59_62.unlockLineProgress = 0
					var_59_62.isAppearing = false
					var_59_62.appearTimer = 0
					var_59_62.scaleX = 0
					var_59_62.scaleY = 0

					local var_59_63 = var_0_67("preptime2")

					var_59_63.revealed = false
					var_59_63.unlockLineProgress = 0
					var_59_63.isAppearing = false
					var_59_63.appearTimer = 0
					var_59_63.scaleX = 0
					var_59_63.scaleY = 0

					local var_59_64 = var_0_67("preptimerdisabled")

					var_59_64.revealed = false
					var_59_64.unlockLineProgress = 0
					var_59_64.isAppearing = false
					var_59_64.appearTimer = 0
					var_59_64.scaleX = 0
					var_59_64.scaleY = 0
				elseif var_59_7 == "preptime2" then
					local var_59_65 = var_0_67("preptimerdisabled")

					var_59_65.revealed = false
					var_59_65.unlockLineProgress = 0
					var_59_65.isAppearing = false
					var_59_65.appearTimer = 0
					var_59_65.scaleX = 0
					var_59_65.scaleY = 0
				end

				return {
					action = "upgrade_" .. var_59_7
				}
			end
		end
	end

	if arg_59_2 == 1 and var_0_64 then
		if var_0_65.plus then
			local var_59_66 = var_0_65.plus

			if arg_59_0 >= var_59_66.x and arg_59_0 <= var_59_66.x + var_59_66.w and arg_59_1 >= var_59_66.y and arg_59_1 <= var_59_66.y + var_59_66.h then
				return {
					action = "add_originite",
					amount = 10
				}
			end
		end

		if var_0_65.minus then
			local var_59_67 = var_0_65.minus

			if arg_59_0 >= var_59_67.x and arg_59_0 <= var_59_67.x + var_59_67.w and arg_59_1 >= var_59_67.y and arg_59_1 <= var_59_67.y + var_59_67.h then
				return {
					action = "add_originite",
					amount = -10
				}
			end
		end
	end

	if arg_59_2 == 2 then
		var_0_54 = true
		var_0_55, var_0_56 = 0, 0
		var_0_57 = arg_59_0
		var_0_58 = arg_59_1
		var_0_59 = var_0_44
		var_0_60 = var_0_45
	end
end

function var_0_0.keypressed(arg_60_0)
	if arg_60_0 == "f2" then
		var_0_64 = not var_0_64

		return
	end

	if arg_60_0 == "escape" then
		return "back"
	end

	return nil
end

function var_0_0.wheelmoved(arg_61_0, arg_61_1, arg_61_2, arg_61_3)
	local var_61_0 = tonumber(arg_61_1) or 0

	if var_61_0 == 0 then
		var_61_0 = tonumber(arg_61_0) or 0
	end

	if var_61_0 == 0 then
		return false
	end

	local var_61_1 = 1
	local var_61_2 = math.huge

	for iter_61_0, iter_61_1 in ipairs(var_0_47) do
		local var_61_3 = math.abs(iter_61_1 - var_0_48)

		if var_61_3 < var_61_2 then
			var_61_2 = var_61_3
			var_61_1 = iter_61_0
		end
	end

	if var_61_0 > 0 then
		var_61_1 = math.min(#var_0_47, var_61_1 + 1)
	else
		var_61_1 = math.max(1, var_61_1 - 1)
	end

	local var_61_4 = var_0_47[var_61_1]

	if math.abs(var_61_4 - var_0_48) < 0.0001 then
		return true
	end

	local var_61_5 = tonumber(arg_61_2) or var_0_52 / 2
	local var_61_6 = tonumber(arg_61_3) or var_0_53 / 2
	local var_61_7 = var_0_52 / 2 + (var_61_5 - var_0_52 / 2 - var_0_44) / var_0_46
	local var_61_8 = var_0_53 / 2 + (var_61_6 - var_0_53 / 2 - var_0_45) / var_0_46

	var_0_49 = var_61_5 - var_0_52 / 2 - (var_61_7 - var_0_52 / 2) * var_61_4
	var_0_50 = var_61_6 - var_0_53 / 2 - (var_61_8 - var_0_53 / 2) * var_61_4
	var_0_49, var_0_50 = var_0_62(var_0_49, var_0_50, var_61_4)
	var_0_48 = var_61_4
	var_0_51 = true

	return true
end

function var_0_0.mousereleased(arg_62_0, arg_62_1, arg_62_2)
	if arg_62_2 == 1 and var_0_25 then
		var_0_25.pressed = false
	end

	if arg_62_2 == 2 then
		var_0_54 = false

		if var_0_51 then
			local var_62_0 = var_0_48 / math.max(0.0001, var_0_46)

			var_0_49, var_0_50 = var_0_62(var_0_44 * var_62_0, var_0_45 * var_62_0, var_0_48)
		end
	end
end

function var_0_0.mousemoved(arg_63_0, arg_63_1, arg_63_2, arg_63_3)
	if var_0_54 then
		local var_63_0 = var_0_59 + (arg_63_0 - var_0_57)

		var_0_45, var_0_44 = var_0_60 + (arg_63_1 - var_0_58), var_63_0

		var_0_63()
	end
end

function var_0_0.getBattleSpeedMultiplier()
	return 1
end

function var_0_0.getSpinLuckForceWinProb()
	return 0
end

function var_0_0.getSpinLuckSuppressDelta()
	return 0
end

function var_0_0.getMaxUnitBonus()
	if var_0_87.maxunit3 and var_0_87.maxunit3.maxed then
		return 3
	end

	if var_0_87.maxunit2 and var_0_87.maxunit2.maxed then
		return 2
	end

	if var_0_87.maxunit.maxed then
		return 1
	end

	return 0
end

function var_0_0.getBaseHPBonus()
	if var_0_87.maxhp2 and var_0_87.maxhp2.maxed then
		return 2
	end

	if var_0_87.maxhp and var_0_87.maxhp.maxed then
		return 1
	end

	return 0
end

function var_0_0.getEarlyBaseShieldEnabled()
	return (var_0_87.noviceshield and var_0_87.noviceshield.maxed) == true
end

function var_0_0.getStartGoldBonus()
	if var_0_87.startgold2 and var_0_87.startgold2.maxed then
		return 100
	end

	return var_0_87.startgold and var_0_87.startgold.maxed and 50 or 0
end

function var_0_0.getComebackGuaranteedSpinEnabled()
	return (var_0_87.comebackspin and var_0_87.comebackspin.maxed) == true
end

function var_0_0.getGateRecoveryEnabled()
	return (var_0_87.gateheal and var_0_87.gateheal.maxed) == true
end

function var_0_0.getComebackGoldBonus()
	return var_0_87.comebackgold and var_0_87.comebackgold.maxed and 100 or 0
end

function var_0_0.getNudgeEnabled()
	return true
end

function var_0_0.getNudgeMissDiscountEnabled()
	return (var_0_87.slotnudge and var_0_87.slotnudge.maxed) == true
end

function var_0_0.getPrepTimeBonusSec()
	return 0
end

function var_0_0.getStartingMercContractCount()
	return var_0_87.startingmerccontract and var_0_87.startingmerccontract.maxed and 1 or 0
end

function var_0_0.isPrepTimerDisabled()
	return false
end

function var_0_0.getMaxInterestBonus()
	return var_0_87.interest and var_0_87.interest.maxed and 50 or 0
end

function var_0_0.getFactionSynergyUnlocked()
	return var_0_87.factionsynergy and var_0_87.factionsynergy.maxed == true
end

function var_0_0.getAwakeningUnlocked()
	return var_0_87.dormantpower and var_0_87.dormantpower.maxed == true
end

function var_0_0.getPromotionTraitChoiceUnlocked()
	return var_0_87.growthbranch and var_0_87.growthbranch.maxed == true
end

function var_0_0.getCoreFreeRerollBonus()
	return var_0_87.corereroll and var_0_87.corereroll.maxed and 1 or 0
end

function var_0_0.getFirstCoreSpinReqDelta()
	return var_0_87.firstcorespin and var_0_87.firstcorespin.maxed and -1 or 0
end

function var_0_0.getFirstCoreUncommonGuarantee()
	return var_0_87.firstcoreuncommon and var_0_87.firstcoreuncommon.maxed and 1 or 0
end

function var_0_0.getShopFirstRerollDiscount()
	return var_0_87.shopreroll and var_0_87.shopreroll.maxed and 1 or 0
end

function var_0_0.getItemInventoryAdd()
	if var_0_87.iteminventory2 and var_0_87.iteminventory2.maxed then
		return 2
	end

	return var_0_87.iteminventory and var_0_87.iteminventory.maxed and 1 or 0
end

function var_0_0.getItemRefundRate()
	return var_0_87.itemrefund and var_0_87.itemrefund.maxed and 0.8 or 0.5
end

function var_0_0.getItemResearchTier()
	return var_0_87.itemresearch and var_0_87.itemresearch.maxed and 1 or 0
end

function var_0_0.getShopPinCount()
	return var_0_87.shoppin and var_0_87.shoppin.maxed and 1 or 0
end

function var_0_0.isOwned(arg_91_0)
	return var_0_87[arg_91_0] ~= nil and var_0_87[arg_91_0].maxed == true
end

function var_0_0.getPadTargets()
	local var_92_0 = {}

	for iter_92_0, iter_92_1 in pairs(var_0_73) do
		local var_92_1 = var_0_52 / 2 + var_0_44 + (iter_92_1.x - var_0_52 / 2) * var_0_46
		local var_92_2 = var_0_53 / 2 + var_0_45 + (iter_92_1.y - var_0_53 / 2) * var_0_46
		local var_92_3 = iter_92_1.w * var_0_46
		local var_92_4 = iter_92_1.h * var_0_46

		if var_92_3 > 2 and var_92_4 > 2 and var_92_1 + var_92_3 > 0 and var_92_2 + var_92_4 > 0 and var_92_1 < var_0_52 and var_92_2 < var_0_53 then
			var_92_0[#var_92_0 + 1] = {
				id = iter_92_0,
				x = var_92_1,
				y = var_92_2,
				w = var_92_3,
				h = var_92_4
			}
		end
	end

	local var_92_5 = var_0_25 and var_0_25.rect

	if var_92_5 then
		var_92_0[#var_92_0 + 1] = {
			id = "back",
			x = var_92_5.x,
			y = var_92_5.y,
			w = var_92_5.w,
			h = var_92_5.h
		}
	end

	return var_92_0
end

function var_0_0.setPadPan(arg_93_0, arg_93_1)
	var_0_0._padPanX = tonumber(arg_93_0) or 0
	var_0_0._padPanY = tonumber(arg_93_1) or 0
end

return var_0_0
