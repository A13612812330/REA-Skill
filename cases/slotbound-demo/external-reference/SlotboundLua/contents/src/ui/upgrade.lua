local var_0_0 = {}
local var_0_1 = require("src.ui.mainmenu")
local var_0_2 = require("src.data.constants")
local var_0_3 = require("src.data.language")
local var_0_4 = require("src.data.font_resolver")
local var_0_5 = require("src.ui.config")
local var_0_6 = require("src.ui.count_impact")
local var_0_7 = {}
local var_0_8 = {
	maxhp2 = "src/sprites/icons/menu/upgrade/18heartII.png",
	noviceshield = "src/sprites/icons/menu/upgrade/12noviceshield.png",
	startgold = "src/sprites/icons/menu/upgrade/13startgold.png",
	comebackspin = "src/sprites/icons/menu/upgrade/14emergencygrant.png",
	itemresearch = "src/sprites/icons/menu/upgrade/27debuffitemresearch.png",
	gateheal = "src/sprites/icons/menu/upgrade/15regenhp.png",
	iteminventory2 = "src/sprites/icons/menu/upgrade/26iteminventory2.png",
	comebackgold = "src/sprites/icons/menu/upgrade/16comebackgold.png",
	itemrefund = "src/sprites/icons/menu/upgrade/25refundbook.png",
	startgold2 = "src/sprites/icons/menu/upgrade/17startgold2.png",
	iteminventory = "src/sprites/icons/menu/upgrade/24iteminventory.png",
	slotnudge = "src/sprites/icons/menu/upgrade/05nudge.png",
	shopreroll = "src/sprites/icons/menu/upgrade/23shopreroll.png",
	preptime = "src/sprites/icons/menu/upgrade/06prephourglass.png",
	firstcoreuncommon = "src/sprites/icons/menu/upgrade/30corechoice.png",
	interest = "src/sprites/icons/menu/upgrade/07InterestBonus.png",
	firstcorespin = "src/sprites/icons/menu/upgrade/29firstcorespin.png",
	preptime2 = "src/sprites/icons/menu/upgrade/08prephourglass2.png",
	corereroll = "src/sprites/icons/menu/upgrade/22corereroll.png",
	preptimerdisabled = "src/sprites/icons/menu/upgrade/09prephourglass3.png",
	slotrare = "src/sprites/icons/menu/upgrade/21rareresearch1.png",
	maxhp = "src/sprites/icons/menu/upgrade/02heart.png",
	slotadvanced3 = "src/sprites/icons/menu/upgrade/20advancedresearch3.png",
	maxunit3 = "src/sprites/icons/menu/upgrade/11maxunit3.png",
	slotadvanced2 = "src/sprites/icons/menu/upgrade/19advancedresearch2.png",
	maxunit2 = "src/sprites/icons/menu/upgrade/10maxunit2.png",
	slotadvanced = "src/sprites/icons/menu/upgrade/04advancedresearch1.png",
	maxunit = "src/sprites/icons/menu/upgrade/03maxunit.png",
	slotodds = "src/sprites/icons/menu/upgrade/01slotodds.png",
	shoppin = "src/sprites/icons/menu/upgrade/28shoppin.png"
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
	pressed = false,
	scale = 0.9
}
local var_0_26
local var_0_27
local var_0_28 = "src/data/font/Chinese/arkpixel10.ttf"
local var_0_29 = 10
local var_0_30 = "normal"
local var_0_31
local var_0_32 = 0
local var_0_33 = {}

local function var_0_34()
	return (_G.currentGameLang or "ko") == "zh"
end

local function var_0_35()
	return _G.currentGameLang or "ko"
end

local function var_0_36(arg_3_0)
	local var_3_0 = rawget(_G, "getChineseLatinFallbackFont")

	if type(var_3_0) == "function" then
		local var_3_1 = var_3_0(arg_3_0)

		if var_3_1 then
			return var_3_1
		end
	end

	return arg_3_0
end

local function var_0_37(arg_4_0, arg_4_1)
	if var_0_34() then
		arg_4_0 = var_0_28
		arg_4_1 = arg_4_1 or var_0_29
	end

	if type(arg_4_0) ~= "string" or arg_4_0 == "" or not love.filesystem.getInfo(arg_4_0) then
		return nil
	end

	local var_4_0
	local var_4_1

	if arg_4_0:lower():match("%.ttf$") or arg_4_0:lower():match("%.otf$") then
		var_4_0, var_4_1 = pcall(love.graphics.newFont, arg_4_0, arg_4_1 or var_0_29, var_0_30)
	else
		var_4_0, var_4_1 = pcall(love.graphics.newFont, arg_4_0)
	end

	if var_4_0 and var_4_1 then
		var_4_1:setFilter("nearest", "nearest")

		if var_0_34() and _G.registerChineseShadowFont then
			_G.registerChineseShadowFont(var_4_1)
		end

		return var_4_1
	end

	return nil
end

local function var_0_38(arg_5_0, arg_5_1)
	if type(arg_5_0) ~= "string" or arg_5_0 == "" or not love.filesystem.getInfo(arg_5_0) then
		return nil
	end

	local var_5_0
	local var_5_1
	local var_5_2 = tostring(arg_5_0):lower()

	if var_5_2:match("%.ttf$") or var_5_2:match("%.otf$") then
		var_5_0, var_5_1 = pcall(love.graphics.newFont, arg_5_0, arg_5_1 or var_0_29, var_0_30)
	else
		var_5_0, var_5_1 = pcall(love.graphics.newFont, arg_5_0)
	end

	if var_5_0 and var_5_1 then
		var_5_1:setFilter("nearest", "nearest")

		return var_5_1
	end

	return nil
end

local function var_0_39(arg_6_0)
	local var_6_0 = var_0_35()
	local var_6_1 = var_0_34() and var_0_28 or var_0_4.resolve(arg_6_0, var_6_0)

	if type(var_6_1) ~= "string" or var_6_1 == "" then
		var_6_1 = arg_6_0
	end

	return var_6_1, var_6_0
end

local function var_0_40(arg_7_0, arg_7_1, arg_7_2)
	local var_7_0, var_7_1 = var_0_39(arg_7_2)
	local var_7_2 = tostring(var_7_1) .. "|" .. tostring(var_7_0)

	if arg_7_0 and arg_7_1 == var_7_2 then
		return arg_7_0, arg_7_1
	end

	local var_7_3 = var_0_37(var_7_0, var_0_34() and var_0_29 or nil)

	if var_7_3 then
		if _G.maybeRegisterSLineTtfTextEffect then
			_G.maybeRegisterSLineTtfTextEffect(var_7_3, arg_7_2, var_7_0, var_7_1)
		end

		if var_0_34() and _G.registerChineseLatinFallbackFont then
			local var_7_4 = _G.resolveChineseLatinFallbackPath and _G.resolveChineseLatinFallbackPath(arg_7_2) or arg_7_2

			_G.registerChineseLatinFallbackFont(var_7_3, var_0_38(var_7_4, var_0_29))
		end

		return var_7_3, var_7_2
	end

	if arg_7_1 ~= var_7_2 then
		return nil, nil
	end

	return arg_7_0, arg_7_1
end

function var_0_0.getOriginiteFont()
	var_0_14, var_0_15 = var_0_40(var_0_14, var_0_15, "src/data/font/Galmuri9WSLine.fnt")

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

local var_0_41
local var_0_42 = "    extern number time;\n    extern number scale;\n\n    // Random function\n    float random(vec2 st) {\n        return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);\n    }\n\n    // Value Noise\n    float noise(vec2 st) {\n        vec2 i = floor(st);\n        vec2 f = fract(st);\n        float a = random(i);\n        float b = random(i + vec2(1.0, 0.0));\n        float c = random(i + vec2(0.0, 1.0));\n        float d = random(i + vec2(1.0, 1.0));\n        vec2 u = f * f * (3.0 - 2.0 * f);\n        return mix(a, b, u.x) + (c - a)* u.y * (1.0 - u.x) + (d - b) * u.x * u.y;\n    }\n\n    // Fractal Brownian Motion (Cloudy look)\n    float fbm(vec2 st) {\n        float value = 0.0;\n        float amplitude = 0.5;\n        for (int i = 0; i < 4; i++) {\n            value += amplitude * noise(st);\n            st *= 2.0;\n            amplitude *= 0.5;\n        }\n        return value;\n    }\n\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        // 1. Pixelate\n        float pixelSize = 3.0 * scale;\n        vec2 p = floor(screen_coords / pixelSize);\n\n        // 2. Moving Coordinates (Slow drift)\n        vec2 uv = p / 200.0;\n        uv.x += time * 0.02;\n        uv.y += time * 0.01;\n\n        // 3. Generate Cloud Pattern\n        float n = fbm(uv);\n\n        // 4. Secondary Detail Layer (Warps the first one)\n        float n2 = fbm(uv + vec2(n * 2.0, n * 0.5) - time * 0.05);\n\n        // Combine\n        float finalNoise = mix(n, n2, 0.6);\n\n        // 5. Color Palette (Harmonizing with #2e222f, #3e3546)\n        // We create a deep, mysterious void that isn't just a pattern\n\n        vec3 colDeep = vec3(0.10, 0.08, 0.14); // Darker than #2e222f (Abyss)\n        vec3 colBase = vec3(0.18, 0.13, 0.18); // #2e222f (UI Dark)\n        vec3 colMid  = vec3(0.24, 0.21, 0.28); // #3e3546 (UI Light)\n        vec3 colHigh = vec3(0.35, 0.25, 0.35); // Faint Highlight\n\n        vec3 col = colDeep;\n\n        // Smooth mixing based on noise height\n        col = mix(col, colBase, smoothstep(0.2, 0.5, finalNoise));\n        col = mix(col, colMid,  smoothstep(0.5, 0.7, finalNoise));\n        col = mix(col, colHigh, smoothstep(0.7, 1.0, finalNoise));\n\n        // 6. Vignette (Darken edges to focus on center UI)\n        vec2 vUV = screen_coords / love_ScreenSize.xy;\n        float vignette = 1.0 - smoothstep(0.5, 1.5, length(vUV - 0.5) * 1.5);\n        col *= vignette;\n\n        return vec4(col, 1.0);\n    }\n"
local var_0_43 = 0
local var_0_44 = 0
local var_0_45 = 1
local var_0_46 = {
	0.6,
	0.8,
	1,
	1.2
}
local var_0_47 = 1
local var_0_48 = 0
local var_0_49 = 0
local var_0_50 = false
local var_0_51 = 1280
local var_0_52 = 720
local var_0_53 = false
local var_0_54 = 0
local var_0_55 = 0
local var_0_56 = 0
local var_0_57 = 0
local var_0_58 = 0
local var_0_59 = 0
local var_0_60 = 680

local function var_0_61(arg_10_0, arg_10_1, arg_10_2)
	local var_10_0 = math.max(0, arg_10_2 - 1) * var_0_60 * 0.5
	local var_10_1 = 50 + var_10_0
	local var_10_2 = 190 + var_10_0

	return math.max(-var_10_1, math.min(var_10_1, arg_10_0)), math.max(-var_10_2, math.min(var_10_2, arg_10_1))
end

local function var_0_62()
	var_0_43, var_0_44 = var_0_61(var_0_43, var_0_44, var_0_45)
end

local var_0_63 = false
local var_0_64 = {}
local var_0_65 = {}

local function var_0_66(arg_12_0)
	if not var_0_65[arg_12_0] then
		var_0_65[arg_12_0] = {
			isAppearing = false,
			revealed = false,
			unlockLineProgress = 0,
			popTimer = 0,
			isPopping = false,
			flashT = 0,
			pulseT = 0,
			shakeAmp = 0,
			shakeDur = 0,
			pressTimer = 0,
			shakeT = 0,
			scaleY = 1,
			scaleX = 1,
			pressed = false,
			disappearTimer = 0,
			isDisappearing = false,
			appearTimer = 0,
			shineT = love.math.random() * -2,
			energyParticles = {}
		}
	end

	return var_0_65[arg_12_0]
end

local function var_0_67(arg_13_0)
	if not arg_13_0 then
		return
	end

	arg_13_0.isDisappearing = true
	arg_13_0.disappearTimer = 0
	arg_13_0.isAppearing = false
end

var_0_66("slotodds").revealed = true
var_0_66("maxhp").revealed = false

var_0_66("maxhp2")
var_0_66("noviceshield")
var_0_66("startgold")
var_0_66("comebackspin")
var_0_66("gateheal")
var_0_66("comebackgold")
var_0_66("startgold2")
var_0_66("maxunit")
var_0_66("maxunit2")
var_0_66("maxunit3")
var_0_66("slotnudge")
var_0_66("slotadvanced")
var_0_66("slotadvanced2")
var_0_66("slotadvanced3")
var_0_66("slotrare")
var_0_66("corereroll")
var_0_66("firstcorespin")
var_0_66("firstcoreuncommon")
var_0_66("shopreroll")
var_0_66("iteminventory")
var_0_66("itemrefund")
var_0_66("iteminventory2")
var_0_66("itemresearch")
var_0_66("shoppin")
var_0_66("preptime")
var_0_66("interest")
var_0_66("preptime2")
var_0_66("preptimerdisabled")

local var_0_68
local var_0_69

local function var_0_70()
	if love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo("web.flag", "file") then
		return
	end

	if not var_0_26 then
		local var_14_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.buttonHover

		if not var_14_0 then
			local var_14_1 = "src/audio/ui/buttonhover1.wav"
			local var_14_2, var_14_3 = pcall(love.audio.newSource, var_14_1, "static")

			if not var_14_2 then
				local var_14_4 = "audio/ui/buttonhover1.wav"

				var_14_2, var_14_3 = pcall(love.audio.newSource, var_14_4, "static")
			end

			if var_14_2 and var_14_3 then
				var_14_0 = var_14_3
			end
		end

		if var_14_0 then
			local var_14_5 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

			if var_14_0.setVolume then
				var_14_0:setVolume(var_14_5 * 1.6)
			end

			var_0_26 = var_14_0
		end
	end

	if not var_0_27 then
		local var_14_6 = loadedAssets and loadedAssets.audio and loadedAssets.audio.buttonClick

		if not var_14_6 then
			local var_14_7 = "src/audio/ui/buttonclick1.wav"
			local var_14_8, var_14_9 = pcall(love.audio.newSource, var_14_7, "static")

			if not var_14_8 then
				local var_14_10 = "audio/ui/buttonclick1.wav"

				var_14_8, var_14_9 = pcall(love.audio.newSource, var_14_10, "static")
			end

			if var_14_8 and var_14_9 then
				var_14_6 = var_14_9
			end
		end

		if var_14_6 then
			local var_14_11 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

			if var_14_6.setVolume then
				var_14_6:setVolume(var_14_11 * 1.6)
			end

			var_0_27 = var_14_6
		end
	end
end

local var_0_71
local var_0_72 = {}
local var_0_73 = {}
local var_0_74 = 100
local var_0_75 = 2000

for iter_0_0 = 1, var_0_74 do
	table.insert(var_0_73, {
		x = love.math.random(-var_0_75 / 2, var_0_75 / 2),
		y = love.math.random(-var_0_75 / 2, var_0_75 / 2),
		size = love.math.random(1, 2),
		speedX = love.math.random(-5, 5),
		speedY = love.math.random(-5, 5),
		alpha = love.math.random() * 0.5 + 0.2,
		t = love.math.random() * 100,
		blinkSpeed = love.math.random() * 2 + 1
	})
end

local var_0_76 = {}
local var_0_77 = 0
local var_0_78 = 2

function var_0_0.resetCamera()
	var_0_43 = 0
	var_0_44 = 0
	var_0_45 = 1
	var_0_48 = 0
	var_0_49 = 0
	var_0_47 = 1
	var_0_50 = false
	var_0_53 = false
	var_0_54, var_0_55 = 0, 0

	for iter_15_0, iter_15_1 in pairs(var_0_65) do
		iter_15_1.scaleX = 1
		iter_15_1.scaleY = 1
		iter_15_1.pressed = false
		iter_15_1.shakeT = 0
	end

	var_0_68 = nil

	if var_0_25 then
		var_0_25.pressed = false
		var_0_25.scale = 0.9
	end

	for iter_15_2, iter_15_3 in ipairs(var_0_73) do
		iter_15_3.x = love.math.random(-var_0_75 / 2, var_0_75 / 2)
		iter_15_3.y = love.math.random(-var_0_75 / 2, var_0_75 / 2)
	end
end

local function var_0_79(arg_16_0)
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

local function var_0_80(arg_17_0)
	return math.floor(arg_17_0 or 0)
end

local var_0_81 = {
	boxFill = {
		0,
		0,
		0,
		0.8
	},
	label = (function()
		local var_18_0, var_18_1, var_18_2 = var_0_79("#999999")

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
		local var_19_0, var_19_1, var_19_2 = var_0_79("#2A2A2A")

		return {
			var_19_0,
			var_19_1,
			var_19_2,
			1
		}
	end)(),
	gaugeFill = (function()
		local var_20_0, var_20_1, var_20_2 = var_0_79("#4FC3F7")

		return {
			var_20_0,
			var_20_1,
			var_20_2,
			1
		}
	end)(),
	hint = (function()
		local var_21_0, var_21_1, var_21_2 = var_0_79("#EDE6F3")

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
local var_0_82 = 3

local function var_0_83()
	return 1
end

local function var_0_84(arg_23_0, arg_23_1, arg_23_2, arg_23_3, arg_23_4, arg_23_5)
	local var_23_0 = var_0_83()
	local var_23_1 = math.max(1, math.floor((var_0_82 or 3) / var_23_0 + 0.5))
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
		love.graphics.rectangle("fill", var_0_80(arg_23_0 + var_23_3), var_0_80(arg_23_1 + var_23_3), var_0_80(arg_23_2 - 2 * var_23_3), var_0_80(arg_23_3 - 2 * var_23_3))
	end

	if arg_23_3 - 2 * var_23_3 > 0 then
		love.graphics.rectangle("fill", var_0_80(arg_23_0), var_0_80(arg_23_1 + var_23_3), var_0_80(var_23_3), var_0_80(arg_23_3 - 2 * var_23_3))
		love.graphics.rectangle("fill", var_0_80(arg_23_0 + arg_23_2 - var_23_3), var_0_80(arg_23_1 + var_23_3), var_0_80(var_23_3), var_0_80(arg_23_3 - 2 * var_23_3))
	end

	for iter_23_0 = 0, var_23_1 - 1 do
		local var_23_4 = var_23_3 - (iter_23_0 + 1) * var_23_0

		if var_23_4 < 0 then
			var_23_4 = 0
		end

		local var_23_5 = arg_23_2 - 2 * var_23_4

		if var_23_5 > 0 then
			love.graphics.rectangle("fill", var_0_80(arg_23_0 + var_23_4), var_0_80(arg_23_1 + iter_23_0 * var_23_0), var_0_80(var_23_5), var_0_80(var_23_0))
			love.graphics.rectangle("fill", var_0_80(arg_23_0 + var_23_4), var_0_80(arg_23_1 + arg_23_3 - (iter_23_0 + 1) * var_23_0), var_0_80(var_23_5), var_0_80(var_23_0))
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
					love.graphics.rectangle("fill", var_0_80(arg_23_0 + var_23_7), var_0_80(arg_23_1 + iter_23_1 * var_23_0), var_0_80(var_23_8), var_0_80(var_23_6))
					love.graphics.rectangle("fill", var_0_80(arg_23_0 + var_23_7), var_0_80(arg_23_1 + arg_23_3 - (iter_23_1 + 1) * var_23_0), var_0_80(var_23_8), var_0_80(var_23_6))
				end
			else
				love.graphics.rectangle("fill", var_0_80(arg_23_0 + var_23_7), var_0_80(arg_23_1 + iter_23_1 * var_23_0), var_0_80(var_23_6), var_0_80(var_23_6))
				love.graphics.rectangle("fill", var_0_80(arg_23_0 + arg_23_2 - var_23_7 - var_23_6), var_0_80(arg_23_1 + iter_23_1 * var_23_0), var_0_80(var_23_6), var_0_80(var_23_6))
				love.graphics.rectangle("fill", var_0_80(arg_23_0 + var_23_7), var_0_80(arg_23_1 + arg_23_3 - (iter_23_1 + 1) * var_23_0), var_0_80(var_23_6), var_0_80(var_23_6))
				love.graphics.rectangle("fill", var_0_80(arg_23_0 + arg_23_2 - var_23_7 - var_23_6), var_0_80(arg_23_1 + arg_23_3 - (iter_23_1 + 1) * var_23_0), var_0_80(var_23_6), var_0_80(var_23_6))
			end
		end

		local var_23_9 = arg_23_3 - 2 * var_23_3

		if var_23_9 > 0 then
			love.graphics.rectangle("fill", var_0_80(arg_23_0), var_0_80(arg_23_1 + var_23_3), var_0_80(var_23_6), var_0_80(var_23_9))
			love.graphics.rectangle("fill", var_0_80(arg_23_0 + arg_23_2 - var_23_6), var_0_80(arg_23_1 + var_23_3), var_0_80(var_23_6), var_0_80(var_23_9))
		end
	end
end

local var_0_85
local var_0_86 = {
	maxhp = {
		cost = 1,
		nameKey = "upgrade_maxhp_name",
		nodeId = "A01",
		stat = "5 -> 6",
		descKey = "upgrade_maxhp_desc"
	},
	maxhp2 = {
		descKey = "upgrade_maxhp2_desc",
		nameKey = "upgrade_maxhp2_name",
		cost = 22,
		nodeId = "A11",
		stat = "6 -> 7",
		statKey = "upgrade_maxhp2_stat"
	},
	noviceshield = {
		descKey = "upgrade_noviceshield_desc",
		nameKey = "upgrade_noviceshield_name",
		cost = 4,
		nodeId = "A03",
		stat = "First life loss 0 -> 1",
		statKey = "upgrade_noviceshield_stat"
	},
	startgold = {
		descKey = "upgrade_startgold_desc",
		nameKey = "upgrade_startgold_name",
		cost = 2,
		nodeId = "A02",
		stat = "Starting {gold.png} 450 -> 500",
		statKey = "upgrade_startgold_stat"
	},
	comebackspin = {
		descKey = "upgrade_comebackspin_desc",
		nameKey = "upgrade_comebackspin_name",
		cost = 20,
		nodeId = "A06",
		stat = "First spin guaranteed win",
		statKey = "upgrade_comebackspin_stat"
	},
	gateheal = {
		descKey = "upgrade_gateheal_desc",
		nameKey = "upgrade_gateheal_name",
		cost = 48,
		nodeId = "A09",
		stat = "Life recovery",
		statKey = "upgrade_gateheal_stat"
	},
	comebackgold = {
		descKey = "upgrade_comebackgold_desc",
		nameKey = "upgrade_comebackgold_name",
		cost = 9,
		nodeId = "A05",
		stat = "After defeat {gold.png} 0 -> 100",
		statKey = "upgrade_comebackgold_stat"
	},
	startgold2 = {
		descKey = "upgrade_startgold2_desc",
		nameKey = "upgrade_startgold2_name",
		cost = 7,
		nodeId = "A04",
		stat = "Starting {gold.png} 500 -> 550",
		statKey = "upgrade_startgold2_stat"
	},
	slotnudge = {
		descKey = "upgrade_slotnudge_desc",
		nameKey = "upgrade_slotnudge_name",
		cost = 3,
		nodeId = "B02",
		stat = "Nudge spin cost reduction",
		statKey = "upgrade_slotnudge_stat"
	},
	interest = {
		descKey = "upgrade_interest_desc",
		nameKey = "upgrade_interest_name",
		cost = 8,
		nodeId = "B03",
		stat = "Interest 0 -> 50",
		statKey = "upgrade_interest_stat"
	},
	slotodds = {
		descKey = "upgrade_slotodds_desc",
		nameKey = "upgrade_slotodds_name",
		cost = 1,
		nodeId = "S01",
		stat = "Locked -> Unsealed",
		statKey = "upgrade_slotodds_stat"
	},
	slotadvanced = {
		descKey = "upgrade_slotadvanced_desc",
		nameKey = "upgrade_slotadvanced_name",
		cost = 4,
		nodeId = "R01",
		stat = "怨좉툒 0% -> 5%",
		statKey = "upgrade_slotadvanced_stat"
	},
	slotadvanced2 = {
		descKey = "upgrade_slotadvanced2_desc",
		nameKey = "upgrade_slotadvanced2_name",
		cost = 12,
		nodeId = "R02",
		stat = "Advanced 5% -> 10%",
		statKey = "upgrade_slotadvanced2_stat"
	},
	slotadvanced3 = {
		descKey = "upgrade_slotadvanced3_desc",
		nameKey = "upgrade_slotadvanced3_name",
		cost = 28,
		nodeId = "R03",
		stat = "Advanced 10% -> 15%",
		statKey = "upgrade_slotadvanced3_stat"
	},
	slotrare = {
		descKey = "upgrade_slotrare_desc",
		nameKey = "upgrade_slotrare_name",
		cost = 70,
		nodeId = "R04",
		stat = "Rare 0% -> 2%",
		statKey = "upgrade_slotrare_stat"
	},
	corereroll = {
		descKey = "upgrade_corereroll_desc",
		nameKey = "upgrade_corereroll_name",
		cost = 10,
		nodeId = "K01",
		stat = "Free reroll 0 -> 1",
		statKey = "upgrade_corereroll_stat"
	},
	firstcorespin = {
		descKey = "upgrade_firstcorespin_desc",
		nameKey = "upgrade_firstcorespin_name",
		cost = 30,
		nodeId = "K02",
		stat = "First core required spins 0 -> -1",
		statKey = "upgrade_firstcorespin_stat"
	},
	firstcoreuncommon = {
		descKey = "upgrade_firstcoreuncommon_desc",
		nameKey = "upgrade_firstcoreuncommon_name",
		cost = 60,
		nodeId = "K03",
		stat = "Uncommon core appears",
		statKey = "upgrade_firstcoreuncommon_stat"
	},
	shopreroll = {
		descKey = "upgrade_shopreroll_desc",
		nameKey = "upgrade_shopreroll_name",
		cost = 6,
		nodeId = "M01",
		stat = "Shop reroll discount 0 -> 1",
		statKey = "upgrade_shopreroll_stat"
	},
	iteminventory = {
		descKey = "upgrade_iteminventory_desc",
		nameKey = "upgrade_iteminventory_name",
		cost = 45,
		nodeId = "M03",
		stat = "Item slots 6 -> 7",
		statKey = "upgrade_iteminventory_stat"
	},
	itemrefund = {
		descKey = "upgrade_itemrefund_desc",
		nameKey = "upgrade_itemrefund_name",
		cost = 35,
		nodeId = "M04",
		stat = "Refund rate 50% -> 80%",
		statKey = "upgrade_itemrefund_stat"
	},
	iteminventory2 = {
		descKey = "upgrade_iteminventory2_desc",
		nameKey = "upgrade_iteminventory2_name",
		cost = 160,
		nodeId = "M12",
		stat = "Item slots 7 -> 8",
		statKey = "upgrade_iteminventory2_stat"
	},
	itemresearch = {
		descKey = "upgrade_itemresearch_desc",
		nameKey = "upgrade_itemresearch_name",
		cost = 24,
		nodeId = "M05",
		stat = "2 specialist items added",
		statKey = "upgrade_itemresearch_stat"
	},
	shoppin = {
		descKey = "upgrade_shoppin_desc",
		nameKey = "upgrade_shoppin_name",
		cost = 30,
		nodeId = "M02",
		stat = "Pin product",
		statKey = "upgrade_shoppin_stat"
	},
	maxunit = {
		cost = 6,
		nameKey = "upgrade_maxunit_name",
		nodeId = "B01",
		stat = "5 -> 6",
		descKey = "upgrade_maxunit_desc"
	},
	maxunit2 = {
		descKey = "upgrade_maxunit2_desc",
		nameKey = "upgrade_maxunit2_name",
		cost = 70,
		nodeId = "B06",
		stat = "6 -> 7",
		statKey = "upgrade_maxunit2_stat"
	},
	maxunit3 = {
		descKey = "upgrade_maxunit3_desc",
		nameKey = "upgrade_maxunit3_name",
		cost = 180,
		nodeId = "B09",
		stat = "7 -> 8",
		statKey = "upgrade_maxunit3_stat"
	}
}

local function var_0_87()
	local var_24_0 = var_0_1 and var_0_1.stageSelect
	local var_24_1 = var_24_0 and var_24_0.clearedDifficulties

	return var_24_1 and var_24_1[1] and var_24_1[1][1] == true
end

local function var_0_88()
	local var_25_0 = var_0_1 and var_0_1.stageSelect
	local var_25_1 = var_25_0 and var_25_0.clearedDifficulties

	return var_25_1 and var_25_1[3] and var_25_1[3][2] == true
end

local function var_0_89(arg_26_0)
	if arg_26_0 == "slotadvanced" then
		return var_0_87()
	end

	if arg_26_0 == "slotrare" then
		return var_0_88()
	end

	if arg_26_0 == "itemresearch" then
		return false
	end

	if arg_26_0 == "shoppin" then
		return false
	end

	return true
end

local function var_0_90(arg_27_0)
	if arg_27_0 == "noviceshield" then
		return var_0_86.maxhp and var_0_86.maxhp.maxed == true
	end

	if arg_27_0 == "startgold" then
		return var_0_86.maxhp and var_0_86.maxhp.maxed == true
	end

	if arg_27_0 == "comebackspin" then
		return var_0_86.noviceshield and var_0_86.noviceshield.maxed == true
	end

	if arg_27_0 == "gateheal" then
		return var_0_86.comebackspin and var_0_86.comebackspin.maxed == true
	end

	if arg_27_0 == "comebackgold" then
		return var_0_86.startgold and var_0_86.startgold.maxed == true
	end

	if arg_27_0 == "startgold2" then
		return var_0_86.startgold and var_0_86.startgold.maxed == true
	end

	if arg_27_0 == "maxhp2" then
		return var_0_86.comebackgold and var_0_86.comebackgold.maxed == true
	end

	if arg_27_0 == "slotnudge" then
		return var_0_86.maxunit and var_0_86.maxunit.maxed == true
	end

	if arg_27_0 == "maxunit2" then
		return var_0_86.maxunit and var_0_86.maxunit.maxed == true
	end

	if arg_27_0 == "maxunit3" then
		return var_0_86.maxunit2 and var_0_86.maxunit2.maxed == true
	end

	if arg_27_0 == "interest" then
		return var_0_86.maxunit and var_0_86.maxunit.maxed == true
	end

	if arg_27_0 == "slotadvanced" then
		return var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true or var_0_89(arg_27_0)
	end

	if arg_27_0 == "slotadvanced2" then
		return var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true
	end

	if arg_27_0 == "slotadvanced3" then
		return var_0_86.slotadvanced2 and var_0_86.slotadvanced2.maxed == true
	end

	if arg_27_0 == "slotrare" then
		return var_0_86.slotadvanced3 and var_0_86.slotadvanced3.maxed == true and var_0_89(arg_27_0)
	end

	if arg_27_0 == "corereroll" then
		return var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true
	end

	if arg_27_0 == "firstcorespin" then
		return var_0_86.corereroll and var_0_86.corereroll.maxed == true
	end

	if arg_27_0 == "firstcoreuncommon" then
		return var_0_86.firstcorespin and var_0_86.firstcorespin.maxed == true
	end

	if arg_27_0 == "shopreroll" then
		return var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true
	end

	if arg_27_0 == "iteminventory" then
		return var_0_86.shopreroll and var_0_86.shopreroll.maxed == true
	end

	if arg_27_0 == "itemrefund" then
		return var_0_86.iteminventory and var_0_86.iteminventory.maxed == true
	end

	if arg_27_0 == "iteminventory2" then
		return var_0_86.iteminventory and var_0_86.iteminventory.maxed == true
	end

	if arg_27_0 == "itemresearch" then
		return var_0_86.shopreroll and var_0_86.shopreroll.maxed == true and var_0_89(arg_27_0)
	end

	if arg_27_0 == "shoppin" then
		return var_0_86.shopreroll and var_0_86.shopreroll.maxed == true and var_0_89(arg_27_0)
	end

	return true
end

local function var_0_91(arg_28_0)
	return arg_28_0 == "slotadvanced" or arg_28_0 == "slotrare" or arg_28_0 == "itemresearch" or arg_28_0 == "shoppin"
end

local function var_0_92(arg_29_0, arg_29_1)
	if arg_29_0 == "slotrare" or arg_29_0 == "itemresearch" or arg_29_0 == "shoppin" then
		return var_0_3.getText("full_version_hint", arg_29_1)
	end

	if arg_29_0 == "slotadvanced" then
		return var_0_3.getText("clear_open_forest_easy_hint", arg_29_1)
	end

	return nil
end

local function var_0_93(arg_30_0, arg_30_1)
	if arg_30_0 == "slotrare" or arg_30_0 == "itemresearch" or arg_30_0 == "shoppin" then
		return nil
	end

	if arg_30_0 == "slotadvanced" then
		return {
			{
				kind = "stage",
				text = var_0_3.getText("menu_stage_name_1", arg_30_1)
			},
			{
				kind = "difficulty",
				text = var_0_3.getText("difficulty_easy", arg_30_1)
			},
			{
				kind = "clear",
				text = var_0_3.getText("clear_label", arg_30_1)
			}
		}
	end

	return nil
end

local function var_0_94(arg_31_0, arg_31_1)
	if arg_31_0 then
		return {
			stage = {
				var_0_79("#9EDFFF")
			},
			difficulty = {
				var_0_79("#6FAACC")
			},
			clear = {
				var_0_79("#C7F1FF")
			}
		}
	elseif arg_31_1 then
		return {
			stage = {
				var_0_79("#8DFFB2")
			},
			difficulty = {
				var_0_79("#D7FF7A")
			},
			clear = {
				var_0_79("#5FAF6F")
			}
		}
	end

	return {
		stage = {
			var_0_79("#FF9A9A")
		},
		difficulty = {
			var_0_79("#FFB05F")
		},
		clear = {
			var_0_79("#A84F5A")
		}
	}
end

function var_0_0.applyUpgradeEffects()
	if var_0_2 and var_0_2.slot then
		var_0_2.slot.winSuppressProb = 0
		var_0_2.slot.forceWinProb = 0
	end

	if var_0_2 and var_0_2.unitGrades and var_0_2.unitGrades.probabilities then
		local var_32_0 = var_0_2.unitGrades.probabilities

		if var_0_86.slotrare and var_0_86.slotrare.maxed then
			var_32_0.normal = 0.83
			var_32_0.advanced = 0.15
			var_32_0.rare = 0.02
		elseif var_0_86.slotadvanced3 and var_0_86.slotadvanced3.maxed then
			var_32_0.normal = 0.85
			var_32_0.advanced = 0.15
			var_32_0.rare = 0
		elseif var_0_86.slotadvanced2 and var_0_86.slotadvanced2.maxed then
			var_32_0.normal = 0.9
			var_32_0.advanced = 0.1
			var_32_0.rare = 0
		elseif var_0_86.slotadvanced and var_0_86.slotadvanced.maxed then
			var_32_0.normal = 0.95
			var_32_0.advanced = 0.05
			var_32_0.rare = 0
		else
			var_32_0.normal = 1
			var_32_0.advanced = 0
			var_32_0.rare = 0
		end
	end
end

var_0_0.applyUpgradeEffects()

function var_0_0.getUpgradeState()
	local var_33_0 = {}

	for iter_33_0, iter_33_1 in pairs(var_0_86) do
		if iter_33_1.maxed then
			var_33_0[iter_33_0] = true
		end
	end

	return var_33_0
end

function var_0_0.setUpgradeState(arg_34_0)
	if not arg_34_0 then
		return
	end

	for iter_34_0, iter_34_1 in pairs(var_0_86) do
		if arg_34_0[iter_34_0] then
			iter_34_1.maxed = true
		else
			iter_34_1.maxed = false
		end
	end

	if var_0_86.slotodds.maxed then
		local var_34_0 = var_0_66("maxunit")

		var_34_0.revealed = true
		var_34_0.unlockLineProgress = 1
		var_34_0.isAppearing = false
		var_34_0.scaleX = 1
		var_34_0.scaleY = 1

		local var_34_1 = var_0_66("maxhp")

		var_34_1.revealed = true
		var_34_1.unlockLineProgress = 1
		var_34_1.isAppearing = false
		var_34_1.scaleX = 1
		var_34_1.scaleY = 1

		local var_34_2 = var_0_66("noviceshield")
		local var_34_3 = var_0_86.maxhp and var_0_86.maxhp.maxed == true

		var_34_2.revealed = var_34_3
		var_34_2.unlockLineProgress = var_34_3 and 1 or 0
		var_34_2.isAppearing = false
		var_34_2.scaleX = var_34_3 and 1 or 0
		var_34_2.scaleY = var_34_3 and 1 or 0

		local var_34_4 = var_0_66("startgold")

		var_34_4.revealed = var_34_3
		var_34_4.unlockLineProgress = var_34_3 and 1 or 0
		var_34_4.isAppearing = false
		var_34_4.scaleX = var_34_3 and 1 or 0
		var_34_4.scaleY = var_34_3 and 1 or 0

		local var_34_5 = var_0_66("comebackspin")
		local var_34_6 = var_0_86.noviceshield and var_0_86.noviceshield.maxed == true

		var_34_5.revealed = var_34_6
		var_34_5.unlockLineProgress = var_34_6 and 1 or 0
		var_34_5.isAppearing = false
		var_34_5.scaleX = var_34_6 and 1 or 0
		var_34_5.scaleY = var_34_6 and 1 or 0

		local var_34_7 = var_0_66("gateheal")
		local var_34_8 = var_0_86.comebackspin and var_0_86.comebackspin.maxed == true

		var_34_7.revealed = var_34_8
		var_34_7.unlockLineProgress = var_34_8 and 1 or 0
		var_34_7.isAppearing = false
		var_34_7.scaleX = var_34_8 and 1 or 0
		var_34_7.scaleY = var_34_8 and 1 or 0

		local var_34_9 = var_0_66("comebackgold")
		local var_34_10 = var_0_86.startgold and var_0_86.startgold.maxed == true

		var_34_9.revealed = var_34_10
		var_34_9.unlockLineProgress = var_34_10 and 1 or 0
		var_34_9.isAppearing = false
		var_34_9.scaleX = var_34_10 and 1 or 0
		var_34_9.scaleY = var_34_10 and 1 or 0

		local var_34_11 = var_0_66("maxhp2")
		local var_34_12 = var_0_86.comebackgold and var_0_86.comebackgold.maxed == true

		var_34_11.revealed = var_34_12
		var_34_11.unlockLineProgress = var_34_12 and 1 or 0
		var_34_11.isAppearing = false
		var_34_11.scaleX = var_34_12 and 1 or 0
		var_34_11.scaleY = var_34_12 and 1 or 0

		local var_34_13 = var_0_66("startgold2")

		var_34_13.revealed = var_34_10
		var_34_13.unlockLineProgress = var_34_10 and 1 or 0
		var_34_13.isAppearing = false
		var_34_13.scaleX = var_34_10 and 1 or 0
		var_34_13.scaleY = var_34_10 and 1 or 0

		local var_34_14 = var_0_66("slotnudge")
		local var_34_15 = var_0_86.maxunit and var_0_86.maxunit.maxed == true

		var_34_14.revealed = var_34_15
		var_34_14.unlockLineProgress = var_34_15 and 1 or 0
		var_34_14.isAppearing = false
		var_34_14.scaleX = var_34_15 and 1 or 0
		var_34_14.scaleY = var_34_15 and 1 or 0

		local var_34_16 = var_0_66("preptime")

		var_34_16.revealed = false
		var_34_16.unlockLineProgress = 0
		var_34_16.isAppearing = false
		var_34_16.scaleX = 0
		var_34_16.scaleY = 0

		local var_34_17 = var_0_66("maxunit2")

		var_34_17.revealed = var_34_15
		var_34_17.unlockLineProgress = var_34_15 and 1 or 0
		var_34_17.isAppearing = false
		var_34_17.scaleX = var_34_15 and 1 or 0
		var_34_17.scaleY = var_34_15 and 1 or 0

		local var_34_18 = var_0_66("maxunit3")
		local var_34_19 = var_0_86.maxunit2 and var_0_86.maxunit2.maxed == true

		var_34_18.revealed = var_34_19
		var_34_18.unlockLineProgress = var_34_19 and 1 or 0
		var_34_18.isAppearing = false
		var_34_18.scaleX = var_34_19 and 1 or 0
		var_34_18.scaleY = var_34_19 and 1 or 0

		local var_34_20 = var_0_66("interest")

		var_34_20.revealed = var_34_15
		var_34_20.unlockLineProgress = var_34_15 and 1 or 0
		var_34_20.isAppearing = false
		var_34_20.scaleX = var_34_15 and 1 or 0
		var_34_20.scaleY = var_34_15 and 1 or 0

		local var_34_21 = var_0_66("preptime2")

		var_34_21.revealed = false
		var_34_21.unlockLineProgress = 0
		var_34_21.isAppearing = false
		var_34_21.scaleX = 0
		var_34_21.scaleY = 0

		local var_34_22 = var_0_66("preptimerdisabled")

		var_34_22.revealed = false
		var_34_22.unlockLineProgress = 0
		var_34_22.isAppearing = false
		var_34_22.scaleX = 0
		var_34_22.scaleY = 0

		local var_34_23 = var_0_66("slotadvanced")

		var_34_23.revealed = true
		var_34_23.unlockLineProgress = 1
		var_34_23.isAppearing = false
		var_34_23.scaleX = 1
		var_34_23.scaleY = 1

		local var_34_24 = var_0_66("slotadvanced2")
		local var_34_25 = var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true

		var_34_24.revealed = var_34_25
		var_34_24.unlockLineProgress = var_34_25 and 1 or 0
		var_34_24.isAppearing = false
		var_34_24.scaleX = var_34_25 and 1 or 0
		var_34_24.scaleY = var_34_25 and 1 or 0

		local var_34_26 = var_0_66("corereroll")

		var_34_26.revealed = var_34_25
		var_34_26.unlockLineProgress = var_34_25 and 1 or 0
		var_34_26.isAppearing = false
		var_34_26.scaleX = var_34_25 and 1 or 0
		var_34_26.scaleY = var_34_25 and 1 or 0

		local var_34_27 = var_0_66("firstcorespin")
		local var_34_28 = var_0_86.corereroll and var_0_86.corereroll.maxed == true

		var_34_27.revealed = var_34_28
		var_34_27.unlockLineProgress = var_34_28 and 1 or 0
		var_34_27.isAppearing = false
		var_34_27.scaleX = var_34_28 and 1 or 0
		var_34_27.scaleY = var_34_28 and 1 or 0

		local var_34_29 = var_0_66("firstcoreuncommon")
		local var_34_30 = var_0_86.firstcorespin and var_0_86.firstcorespin.maxed == true

		var_34_29.revealed = var_34_30
		var_34_29.unlockLineProgress = var_34_30 and 1 or 0
		var_34_29.isAppearing = false
		var_34_29.scaleX = var_34_30 and 1 or 0
		var_34_29.scaleY = var_34_30 and 1 or 0

		local var_34_31 = var_0_66("shopreroll")

		var_34_31.revealed = var_34_25
		var_34_31.unlockLineProgress = var_34_25 and 1 or 0
		var_34_31.isAppearing = false
		var_34_31.scaleX = var_34_25 and 1 or 0
		var_34_31.scaleY = var_34_25 and 1 or 0

		local var_34_32 = var_0_66("iteminventory")
		local var_34_33 = var_0_86.shopreroll and var_0_86.shopreroll.maxed == true

		var_34_32.revealed = var_34_33
		var_34_32.unlockLineProgress = var_34_33 and 1 or 0
		var_34_32.isAppearing = false
		var_34_32.scaleX = var_34_33 and 1 or 0
		var_34_32.scaleY = var_34_33 and 1 or 0

		local var_34_34 = var_0_66("itemrefund")
		local var_34_35 = var_0_86.iteminventory and var_0_86.iteminventory.maxed == true

		var_34_34.revealed = var_34_35
		var_34_34.unlockLineProgress = var_34_35 and 1 or 0
		var_34_34.isAppearing = false
		var_34_34.scaleX = var_34_35 and 1 or 0
		var_34_34.scaleY = var_34_35 and 1 or 0

		local var_34_36 = var_0_66("iteminventory2")

		var_34_36.revealed = var_34_35
		var_34_36.unlockLineProgress = var_34_35 and 1 or 0
		var_34_36.isAppearing = false
		var_34_36.scaleX = var_34_35 and 1 or 0
		var_34_36.scaleY = var_34_35 and 1 or 0

		local var_34_37 = var_0_66("itemresearch")

		var_34_37.revealed = var_34_33
		var_34_37.unlockLineProgress = var_34_33 and 1 or 0
		var_34_37.isAppearing = false
		var_34_37.scaleX = var_34_33 and 1 or 0
		var_34_37.scaleY = var_34_33 and 1 or 0

		local var_34_38 = var_0_66("shoppin")

		var_34_38.revealed = var_34_33
		var_34_38.unlockLineProgress = var_34_33 and 1 or 0
		var_34_38.isAppearing = false
		var_34_38.scaleX = var_34_33 and 1 or 0
		var_34_38.scaleY = var_34_33 and 1 or 0

		local var_34_39 = var_0_66("slotadvanced3")
		local var_34_40 = var_0_86.slotadvanced2 and var_0_86.slotadvanced2.maxed == true

		var_34_39.revealed = var_34_40
		var_34_39.unlockLineProgress = var_34_40 and 1 or 0
		var_34_39.isAppearing = false
		var_34_39.scaleX = var_34_40 and 1 or 0
		var_34_39.scaleY = var_34_40 and 1 or 0

		local var_34_41 = var_0_66("slotrare")
		local var_34_42 = var_0_86.slotadvanced3 and var_0_86.slotadvanced3.maxed == true

		var_34_41.revealed = var_34_42
		var_34_41.unlockLineProgress = var_34_42 and 1 or 0
		var_34_41.isAppearing = false
		var_34_41.scaleX = var_34_42 and 1 or 0
		var_34_41.scaleY = var_34_42 and 1 or 0
	else
		local var_34_43 = var_0_66("maxunit")

		var_34_43.revealed = false
		var_34_43.unlockLineProgress = 0
		var_34_43.isAppearing = false
		var_34_43.isDisappearing = false
		var_34_43.scaleX = 0
		var_34_43.scaleY = 0

		local var_34_44 = var_0_66("maxhp")

		var_34_44.revealed = false
		var_34_44.unlockLineProgress = 0
		var_34_44.isAppearing = false
		var_34_44.isDisappearing = false
		var_34_44.scaleX = 0
		var_34_44.scaleY = 0

		local var_34_45 = var_0_66("noviceshield")

		var_34_45.revealed = false
		var_34_45.unlockLineProgress = 0
		var_34_45.isAppearing = false
		var_34_45.isDisappearing = false
		var_34_45.scaleX = 0
		var_34_45.scaleY = 0

		local var_34_46 = var_0_66("startgold")

		var_34_46.revealed = false
		var_34_46.unlockLineProgress = 0
		var_34_46.isAppearing = false
		var_34_46.isDisappearing = false
		var_34_46.scaleX = 0
		var_34_46.scaleY = 0

		local var_34_47 = var_0_66("comebackspin")

		var_34_47.revealed = false
		var_34_47.unlockLineProgress = 0
		var_34_47.isAppearing = false
		var_34_47.isDisappearing = false
		var_34_47.scaleX = 0
		var_34_47.scaleY = 0

		local var_34_48 = var_0_66("gateheal")

		var_34_48.revealed = false
		var_34_48.unlockLineProgress = 0
		var_34_48.isAppearing = false
		var_34_48.isDisappearing = false
		var_34_48.scaleX = 0
		var_34_48.scaleY = 0

		local var_34_49 = var_0_66("comebackgold")

		var_34_49.revealed = false
		var_34_49.unlockLineProgress = 0
		var_34_49.isAppearing = false
		var_34_49.isDisappearing = false
		var_34_49.scaleX = 0
		var_34_49.scaleY = 0

		local var_34_50 = var_0_66("maxhp2")

		var_34_50.revealed = false
		var_34_50.unlockLineProgress = 0
		var_34_50.isAppearing = false
		var_34_50.isDisappearing = false
		var_34_50.scaleX = 0
		var_34_50.scaleY = 0

		local var_34_51 = var_0_66("startgold2")

		var_34_51.revealed = false
		var_34_51.unlockLineProgress = 0
		var_34_51.isAppearing = false
		var_34_51.isDisappearing = false
		var_34_51.scaleX = 0
		var_34_51.scaleY = 0

		local var_34_52 = var_0_66("slotnudge")

		var_34_52.revealed = false
		var_34_52.unlockLineProgress = 0
		var_34_52.isAppearing = false
		var_34_52.isDisappearing = false
		var_34_52.scaleX = 0
		var_34_52.scaleY = 0

		local var_34_53 = var_0_66("preptime")

		var_34_53.revealed = false
		var_34_53.unlockLineProgress = 0
		var_34_53.isAppearing = false
		var_34_53.isDisappearing = false
		var_34_53.scaleX = 0
		var_34_53.scaleY = 0

		local var_34_54 = var_0_66("maxunit2")

		var_34_54.revealed = false
		var_34_54.unlockLineProgress = 0
		var_34_54.isAppearing = false
		var_34_54.isDisappearing = false
		var_34_54.scaleX = 0
		var_34_54.scaleY = 0

		local var_34_55 = var_0_66("maxunit3")

		var_34_55.revealed = false
		var_34_55.unlockLineProgress = 0
		var_34_55.isAppearing = false
		var_34_55.isDisappearing = false
		var_34_55.scaleX = 0
		var_34_55.scaleY = 0

		local var_34_56 = var_0_66("interest")

		var_34_56.revealed = false
		var_34_56.unlockLineProgress = 0
		var_34_56.isAppearing = false
		var_34_56.isDisappearing = false
		var_34_56.scaleX = 0
		var_34_56.scaleY = 0

		local var_34_57 = var_0_66("preptime2")

		var_34_57.revealed = false
		var_34_57.unlockLineProgress = 0
		var_34_57.isAppearing = false
		var_34_57.isDisappearing = false
		var_34_57.scaleX = 0
		var_34_57.scaleY = 0

		local var_34_58 = var_0_66("preptimerdisabled")

		var_34_58.revealed = false
		var_34_58.unlockLineProgress = 0
		var_34_58.isAppearing = false
		var_34_58.isDisappearing = false
		var_34_58.scaleX = 0
		var_34_58.scaleY = 0

		local var_34_59 = var_0_66("slotadvanced")

		var_34_59.revealed = false
		var_34_59.unlockLineProgress = 0
		var_34_59.isAppearing = false
		var_34_59.isDisappearing = false
		var_34_59.scaleX = 0
		var_34_59.scaleY = 0

		local var_34_60 = var_0_66("slotadvanced2")

		var_34_60.revealed = false
		var_34_60.unlockLineProgress = 0
		var_34_60.isAppearing = false
		var_34_60.isDisappearing = false
		var_34_60.scaleX = 0
		var_34_60.scaleY = 0

		local var_34_61 = var_0_66("corereroll")

		var_34_61.revealed = false
		var_34_61.unlockLineProgress = 0
		var_34_61.isAppearing = false
		var_34_61.isDisappearing = false
		var_34_61.scaleX = 0
		var_34_61.scaleY = 0

		local var_34_62 = var_0_66("firstcorespin")

		var_34_62.revealed = false
		var_34_62.unlockLineProgress = 0
		var_34_62.isAppearing = false
		var_34_62.isDisappearing = false
		var_34_62.scaleX = 0
		var_34_62.scaleY = 0

		local var_34_63 = var_0_66("firstcoreuncommon")

		var_34_63.revealed = false
		var_34_63.unlockLineProgress = 0
		var_34_63.isAppearing = false
		var_34_63.isDisappearing = false
		var_34_63.scaleX = 0
		var_34_63.scaleY = 0

		local var_34_64 = var_0_66("shopreroll")

		var_34_64.revealed = false
		var_34_64.unlockLineProgress = 0
		var_34_64.isAppearing = false
		var_34_64.isDisappearing = false
		var_34_64.scaleX = 0
		var_34_64.scaleY = 0

		local var_34_65 = var_0_66("iteminventory")

		var_34_65.revealed = false
		var_34_65.unlockLineProgress = 0
		var_34_65.isAppearing = false
		var_34_65.isDisappearing = false
		var_34_65.scaleX = 0
		var_34_65.scaleY = 0

		local var_34_66 = var_0_66("itemrefund")

		var_34_66.revealed = false
		var_34_66.unlockLineProgress = 0
		var_34_66.isAppearing = false
		var_34_66.isDisappearing = false
		var_34_66.scaleX = 0
		var_34_66.scaleY = 0

		local var_34_67 = var_0_66("iteminventory2")

		var_34_67.revealed = false
		var_34_67.unlockLineProgress = 0
		var_34_67.isAppearing = false
		var_34_67.isDisappearing = false
		var_34_67.scaleX = 0
		var_34_67.scaleY = 0

		local var_34_68 = var_0_66("itemresearch")

		var_34_68.revealed = false
		var_34_68.unlockLineProgress = 0
		var_34_68.isAppearing = false
		var_34_68.isDisappearing = false
		var_34_68.scaleX = 0
		var_34_68.scaleY = 0

		local var_34_69 = var_0_66("shoppin")

		var_34_69.revealed = false
		var_34_69.unlockLineProgress = 0
		var_34_69.isAppearing = false
		var_34_69.isDisappearing = false
		var_34_69.scaleX = 0
		var_34_69.scaleY = 0

		local var_34_70 = var_0_66("slotadvanced3")

		var_34_70.revealed = false
		var_34_70.unlockLineProgress = 0
		var_34_70.isAppearing = false
		var_34_70.isDisappearing = false
		var_34_70.scaleX = 0
		var_34_70.scaleY = 0

		local var_34_71 = var_0_66("slotrare")

		var_34_71.revealed = false
		var_34_71.unlockLineProgress = 0
		var_34_71.isAppearing = false
		var_34_71.isDisappearing = false
		var_34_71.scaleX = 0
		var_34_71.scaleY = 0
	end

	var_0_0.applyUpgradeEffects()
end

local function var_0_95(arg_35_0, arg_35_1, arg_35_2, arg_35_3)
	local var_35_0 = {}
	local var_35_1 = 1

	arg_35_0 = tostring(arg_35_0 or "")

	while var_35_1 <= #arg_35_0 do
		local var_35_2, var_35_3 = arg_35_0:find("{gold%.png}", var_35_1)
		local var_35_4, var_35_5 = arg_35_0:find("{infinity}", var_35_1, true)
		local var_35_6
		local var_35_7
		local var_35_8

		if var_35_2 and (not var_35_4 or var_35_2 < var_35_4) then
			var_35_6, var_35_7, var_35_8 = var_35_2, var_35_3, "gold"
		elseif var_35_4 then
			var_35_6, var_35_7, var_35_8 = var_35_4, var_35_5, "infinity"
		end

		if not var_35_6 then
			local var_35_9 = arg_35_0:sub(var_35_1)

			if #var_35_9 > 0 then
				table.insert(var_35_0, {
					type = "text",
					text = var_35_9
				})
			end

			break
		end

		if var_35_1 < var_35_6 then
			table.insert(var_35_0, {
				type = "text",
				text = arg_35_0:sub(var_35_1, var_35_6 - 1)
			})
		end

		local var_35_10 = var_35_7 + 1

		if var_35_8 == "infinity" then
			table.insert(var_35_0, {
				fallback = "INF",
				type = "infinity"
			})

			var_35_1 = var_35_10
		else
			local var_35_11 = arg_35_0:sub(var_35_10)
			local var_35_12, var_35_13 = var_35_11:match("^(%s*)(%S+)")

			if var_35_13 then
				local var_35_14, var_35_15 = var_35_13:match("^(%d+)(.*)$")
				local var_35_16 = 0

				if var_35_14 and (not var_35_15 or var_35_15 == "") then
					local var_35_17, var_35_18 = var_35_11:sub(#var_35_12 + #var_35_13 + 1):match("^(%s+)(%S+)")

					if var_35_18 == "s" or var_35_18 == "sec" or var_35_18 == "seconds" then
						var_35_15 = var_35_18
						var_35_16 = #var_35_17 + #var_35_18
					end
				end

				table.insert(var_35_0, {
					type = "iconword",
					icon = var_0_13,
					word = var_35_13,
					number = var_35_14,
					suffix = var_35_15,
					fallback = "G" .. var_35_13
				})

				var_35_1 = var_35_10 + #var_35_12 + #var_35_13 + var_35_16
			else
				table.insert(var_35_0, {
					fallback = "G",
					type = "icon",
					icon = var_0_13
				})

				var_35_1 = var_35_10
			end
		end
	end

	return var_35_0
end

local function var_0_96(arg_36_0)
	arg_36_0 = tostring(arg_36_0 or "")

	return arg_36_0:find("{gold%.png}") ~= nil or arg_36_0:find("{infinity}", 1, true) ~= nil
end

local function var_0_97(arg_37_0, arg_37_1, arg_37_2)
	arg_37_0 = tostring(arg_37_0 or "")
	arg_37_2 = arg_37_2 or 1

	local var_37_0 = rawget(_G, "measureChineseMixedTextWidth")

	if type(var_37_0) == "function" then
		local var_37_1, var_37_2 = pcall(var_37_0, arg_37_0, arg_37_1)

		if var_37_1 and type(var_37_2) == "number" then
			return var_37_2 * arg_37_2
		end
	end

	return arg_37_1:getWidth(arg_37_0) * arg_37_2
end

local function var_0_98(arg_38_0, arg_38_1, arg_38_2, arg_38_3)
	local var_38_0 = 0
	local var_38_1 = var_0_36(arg_38_1):getHeight() * arg_38_2

	for iter_38_0, iter_38_1 in ipairs(arg_38_0 or {}) do
		if iter_38_1.type == "icon" and iter_38_1.icon then
			local var_38_2, var_38_3 = iter_38_1.icon:getDimensions()

			var_38_0 = var_38_0 + var_38_2 * arg_38_3
			var_38_1 = math.max(var_38_1, var_38_3 * arg_38_3)
		elseif iter_38_1.type == "iconword" and iter_38_1.icon then
			local var_38_4, var_38_5 = iter_38_1.icon:getDimensions()
			local var_38_6 = math.max(3, math.floor(4 * arg_38_2))

			var_38_0 = var_38_0 + var_38_4 * arg_38_3 + var_38_6

			if iter_38_1.number then
				local var_38_7 = iter_38_1.suffix and iter_38_1.suffix ~= "" and " " .. iter_38_1.suffix or ""

				var_38_0 = var_38_0 + var_0_97(iter_38_1.number, arg_38_1, arg_38_2) + var_0_97(var_38_7, arg_38_1, arg_38_2)
			else
				var_38_0 = var_38_0 + var_0_97(iter_38_1.word or "", arg_38_1, arg_38_2)
			end

			var_38_1 = math.max(var_38_1, var_38_5 * arg_38_3)
		elseif iter_38_1.type == "infinity" then
			local var_38_8 = var_0_83()

			var_38_0 = var_38_0 + 16 * var_38_8
			var_38_1 = math.max(var_38_1, 7 * var_38_8)
		else
			var_38_0 = var_38_0 + var_0_97(iter_38_1.text or iter_38_1.fallback or "", arg_38_1, arg_38_2)
		end
	end

	return var_38_0, var_38_1
end

local function var_0_99(arg_39_0, arg_39_1, arg_39_2)
	local var_39_0 = var_0_83()
	local var_39_1 = {
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
	local var_39_2 = math.floor(arg_39_0)
	local var_39_3 = math.floor(arg_39_1)

	local function var_39_4(arg_40_0)
		for iter_40_0, iter_40_1 in ipairs(var_39_1) do
			love.graphics.rectangle("fill", var_39_2 + iter_40_1[1] * var_39_0, var_39_3 + iter_40_1[2] * var_39_0 + arg_40_0, var_39_0, var_39_0)
		end
	end

	love.graphics.setColor(0, 0, 0, 0.45)
	var_39_4(var_39_0)
	love.graphics.setColor(arg_39_2 or {
		1,
		1,
		1,
		1
	})
	var_39_4(0)
end

local function var_0_100(arg_41_0, arg_41_1, arg_41_2, arg_41_3, arg_41_4, arg_41_5, arg_41_6, arg_41_7, arg_41_8)
	local var_41_0 = arg_41_1
	local var_41_1 = var_0_36(arg_41_3):getHeight() * arg_41_4

	local function var_41_2(arg_42_0)
		arg_42_0 = tostring(arg_42_0 or "")

		if not arg_41_8 then
			love.graphics.setColor(arg_41_6 or {
				1,
				1,
				1,
				1
			})
			love.graphics.print(arg_42_0, math.floor(var_41_0), math.floor(arg_41_2), 0, arg_41_4, arg_41_4)

			var_41_0 = var_41_0 + var_0_97(arg_42_0, arg_41_3, arg_41_4)

			return
		end

		local var_42_0 = 1

		while var_42_0 <= #arg_42_0 do
			local var_42_1, var_42_2 = arg_42_0:find("%d+", var_42_0)

			if not var_42_1 then
				local var_42_3 = arg_42_0:sub(var_42_0)

				love.graphics.setColor(arg_41_6 or {
					1,
					1,
					1,
					1
				})
				love.graphics.print(var_42_3, math.floor(var_41_0), math.floor(arg_41_2), 0, arg_41_4, arg_41_4)

				var_41_0 = var_41_0 + var_0_97(var_42_3, arg_41_3, arg_41_4)

				break
			end

			if var_42_0 < var_42_1 then
				local var_42_4 = arg_42_0:sub(var_42_0, var_42_1 - 1)

				love.graphics.setColor(arg_41_6 or {
					1,
					1,
					1,
					1
				})
				love.graphics.print(var_42_4, math.floor(var_41_0), math.floor(arg_41_2), 0, arg_41_4, arg_41_4)

				var_41_0 = var_41_0 + var_0_97(var_42_4, arg_41_3, arg_41_4)
			end

			local var_42_5 = arg_42_0:sub(var_42_1, var_42_2)

			love.graphics.setColor(arg_41_8)
			love.graphics.print(var_42_5, math.floor(var_41_0), math.floor(arg_41_2), 0, arg_41_4, arg_41_4)

			var_41_0 = var_41_0 + var_0_97(var_42_5, arg_41_3, arg_41_4)
			var_42_0 = var_42_2 + 1
		end
	end

	for iter_41_0, iter_41_1 in ipairs(arg_41_0 or {}) do
		if iter_41_1.type == "icon" and iter_41_1.icon then
			local var_41_3, var_41_4 = iter_41_1.icon:getDimensions()

			love.graphics.setColor(arg_41_7 or {
				1,
				1,
				1,
				1
			})

			local var_41_5 = arg_41_2 + math.floor((var_41_1 - var_41_4 * arg_41_5) / 2) + 2

			love.graphics.draw(iter_41_1.icon, math.floor(var_41_0), math.floor(var_41_5), 0, arg_41_5, arg_41_5)

			var_41_0 = var_41_0 + var_41_3 * arg_41_5
		elseif iter_41_1.type == "iconword" and iter_41_1.icon then
			local var_41_6, var_41_7 = iter_41_1.icon:getDimensions()
			local var_41_8 = math.max(3, math.floor(4 * arg_41_4))

			love.graphics.setColor(arg_41_7 or {
				1,
				1,
				1,
				1
			})

			local var_41_9 = arg_41_2 + math.floor((var_41_1 - var_41_7 * arg_41_5) / 2) + 2

			love.graphics.draw(iter_41_1.icon, math.floor(var_41_0), math.floor(var_41_9), 0, arg_41_5, arg_41_5)

			var_41_0 = var_41_0 + var_41_6 * arg_41_5 + var_41_8

			if iter_41_1.number then
				love.graphics.setColor(arg_41_8 or arg_41_6 or {
					1,
					1,
					1,
					1
				})
				love.graphics.print(iter_41_1.number, math.floor(var_41_0), math.floor(arg_41_2), 0, arg_41_4, arg_41_4)

				var_41_0 = var_41_0 + var_0_97(iter_41_1.number, arg_41_3, arg_41_4)

				if iter_41_1.suffix and iter_41_1.suffix ~= "" then
					local var_41_10 = " " .. iter_41_1.suffix

					love.graphics.setColor(arg_41_6 or {
						1,
						1,
						1,
						1
					})
					love.graphics.print(var_41_10, math.floor(var_41_0), math.floor(arg_41_2), 0, arg_41_4, arg_41_4)

					var_41_0 = var_41_0 + var_0_97(var_41_10, arg_41_3, arg_41_4)
				end
			else
				love.graphics.setColor(arg_41_6 or {
					1,
					1,
					1,
					1
				})

				local var_41_11 = iter_41_1.word or ""

				love.graphics.print(var_41_11, math.floor(var_41_0), math.floor(arg_41_2), 0, arg_41_4, arg_41_4)

				var_41_0 = var_41_0 + var_0_97(var_41_11, arg_41_3, arg_41_4)
			end
		elseif iter_41_1.type == "infinity" then
			local var_41_12 = var_0_83()
			local var_41_13 = arg_41_2 + math.floor((var_41_1 - 7 * var_41_12) / 2) + var_41_12 * 2

			var_0_99(var_41_0, var_41_13, arg_41_6 or {
				1,
				1,
				1,
				1
			})

			var_41_0 = var_41_0 + 16 * var_41_12
		else
			local var_41_14 = iter_41_1.text or iter_41_1.fallback or ""

			var_41_2(var_41_14)
		end
	end
end

local function var_0_101(arg_43_0, arg_43_1, arg_43_2, arg_43_3, arg_43_4)
	local var_43_0 = var_0_95(arg_43_0, arg_43_1, arg_43_3, arg_43_4)
	local var_43_1 = {}

	for iter_43_0, iter_43_1 in ipairs(var_43_0) do
		if iter_43_1.type == "text" then
			for iter_43_2 in tostring(iter_43_1.text):gmatch("%s*%S+") do
				table.insert(var_43_1, {
					type = "text",
					text = iter_43_2
				})
			end
		else
			table.insert(var_43_1, iter_43_1)
		end
	end

	local var_43_2 = {}
	local var_43_3 = {}
	local var_43_4 = 0

	local function var_43_5()
		table.insert(var_43_2, var_43_3)

		var_43_3, var_43_4 = {}, 0
	end

	local function var_43_6(arg_45_0)
		local var_45_0 = {}
		local var_45_1 = ""

		for iter_45_0 in tostring(arg_45_0 or ""):gmatch("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*") do
			if var_45_1 == "" and iter_45_0:match("%s") then
				var_45_1 = iter_45_0
			elseif var_45_1 ~= "" and var_45_1:match("^%s+$") then
				var_45_1 = var_45_1 .. iter_45_0
			else
				if var_45_1 ~= "" then
					var_45_0[#var_45_0 + 1] = var_45_1
				end

				var_45_1 = iter_45_0
			end
		end

		if var_45_1 ~= "" then
			var_45_0[#var_45_0 + 1] = var_45_1
		end

		return var_45_0
	end

	for iter_43_3, iter_43_4 in ipairs(var_43_1) do
		local var_43_7 = var_0_98({
			iter_43_4
		}, arg_43_1, arg_43_3, arg_43_4)

		if iter_43_4.type == "text" and arg_43_2 < var_43_7 then
			for iter_43_5, iter_43_6 in ipairs(var_43_6(iter_43_4.text)) do
				local var_43_8 = {
					type = "text",
					text = iter_43_6
				}
				local var_43_9 = var_0_98({
					var_43_8
				}, arg_43_1, arg_43_3, arg_43_4)

				if var_43_4 > 0 and arg_43_2 < var_43_4 + var_43_9 then
					var_43_5()

					var_43_8.text = tostring(var_43_8.text):gsub("^%s+", "")
					var_43_9 = var_0_98({
						var_43_8
					}, arg_43_1, arg_43_3, arg_43_4)
				end

				if var_43_8.text ~= "" then
					table.insert(var_43_3, var_43_8)

					var_43_4 = var_43_4 + var_43_9
				end
			end
		else
			if var_43_4 > 0 and arg_43_2 < var_43_4 + var_43_7 then
				var_43_5()

				if iter_43_4.type == "text" then
					iter_43_4 = {
						type = "text",
						text = tostring(iter_43_4.text):gsub("^%s+", "")
					}
					var_43_7 = var_0_98({
						iter_43_4
					}, arg_43_1, arg_43_3, arg_43_4)
				end
			end

			table.insert(var_43_3, iter_43_4)

			var_43_4 = var_43_4 + var_43_7
		end
	end

	if #var_43_3 > 0 then
		table.insert(var_43_2, var_43_3)
	end

	if #var_43_2 == 0 then
		table.insert(var_43_2, {})
	end

	return var_43_2
end

function var_0_0.draw(arg_46_0, arg_46_1, arg_46_2)
	local var_46_0 = arg_46_0.virtual.W
	local var_46_1 = arg_46_0.virtual.H

	var_0_51, var_0_52 = var_46_0, var_46_1

	if var_0_68 ~= var_0_69 then
		var_0_71 = nil
		var_0_69 = var_0_68
	end

	if not var_0_41 then
		local var_46_2, var_46_3 = pcall(love.graphics.newShader, var_0_42)

		if var_46_2 then
			var_0_41 = var_46_3
		else
			print("Shader Error: " .. tostring(var_46_3))
		end
	end

	if var_0_41 then
		var_0_41:send("time", love.timer.getTime() % 10000)

		local var_46_4 = love.graphics.getHeight() / 720

		var_0_41:send("scale", var_46_4)
		love.graphics.setShader(var_0_41)
		love.graphics.rectangle("fill", 0, 0, var_46_0, var_46_1)
		love.graphics.setShader()
	else
		love.graphics.setColor(0.1, 0.08, 0.15, 1)
		love.graphics.rectangle("fill", 0, 0, var_46_0, var_46_1)
	end

	love.graphics.setColor(1, 1, 1, 1)

	for iter_46_0, iter_46_1 in ipairs(var_0_76) do
		local var_46_5 = iter_46_1.x - math.cos(iter_46_1.angle) * iter_46_1.len
		local var_46_6 = iter_46_1.y - math.sin(iter_46_1.angle) * iter_46_1.len

		love.graphics.setLineWidth(iter_46_1.thickness)
		love.graphics.setColor(1, 1, 1, iter_46_1.life)
		love.graphics.line(iter_46_1.x, iter_46_1.y, var_46_5, var_46_6)
	end

	love.graphics.setLineWidth(1)

	local var_46_7 = love.timer.getDelta()

	for iter_46_2, iter_46_3 in ipairs(var_0_73) do
		iter_46_3.x = iter_46_3.x + iter_46_3.speedX * var_46_7
		iter_46_3.y = iter_46_3.y + iter_46_3.speedY * var_46_7
		iter_46_3.t = iter_46_3.t + var_46_7

		local var_46_8 = var_0_75

		if iter_46_3.x < -var_46_8 / 2 then
			iter_46_3.x = iter_46_3.x + var_46_8
		end

		if iter_46_3.x > var_46_8 / 2 then
			iter_46_3.x = iter_46_3.x - var_46_8
		end

		if iter_46_3.y < -var_46_8 / 2 then
			iter_46_3.y = iter_46_3.y + var_46_8
		end

		if iter_46_3.y > var_46_8 / 2 then
			iter_46_3.y = iter_46_3.y - var_46_8
		end

		local var_46_9 = var_46_0 / 2 + iter_46_3.x + var_0_43 * 0.2
		local var_46_10 = var_46_1 / 2 + iter_46_3.y + var_0_44 * 0.2

		if var_46_9 > -10 and var_46_9 < var_46_0 + 10 and var_46_10 > -10 and var_46_10 < var_46_1 + 10 then
			local var_46_11 = math.sin(iter_46_3.t * iter_46_3.blinkSpeed) * 0.3 + 0.7

			love.graphics.setColor(1, 1, 1, iter_46_3.alpha * var_46_11)
			love.graphics.rectangle("fill", math.floor(var_46_9), math.floor(var_46_10), iter_46_3.size, iter_46_3.size)
		end
	end

	love.graphics.push()
	love.graphics.translate(var_46_0 / 2 + var_0_43, var_46_1 / 2 + var_0_44)
	love.graphics.scale(var_0_45, var_0_45)
	love.graphics.translate(-var_46_0 / 2, -var_46_1 / 2)

	local var_46_12 = var_0_60
	local var_46_13 = (var_46_0 - var_46_12) / 2
	local var_46_14 = (var_46_1 - var_46_12) / 2

	for iter_46_4, iter_46_5 in pairs(var_0_8) do
		if not var_0_7[iter_46_4] then
			local var_46_15, var_46_16 = pcall(love.graphics.newImage, iter_46_5)

			if var_46_15 then
				var_46_16:setFilter("nearest", "nearest")

				var_0_7[iter_46_4] = var_46_16
			end
		end
	end

	if not var_0_12 then
		local var_46_17 = "src/sprites/icons/menu/originite.png"
		local var_46_18, var_46_19 = pcall(love.graphics.newImage, var_46_17)

		if var_46_18 then
			var_46_19:setFilter("nearest", "nearest")

			var_0_12 = var_46_19
		end
	end

	if not var_0_13 then
		local var_46_20 = "src/sprites/icons/tooltip/gold.png"
		local var_46_21, var_46_22 = pcall(love.graphics.newImage, var_46_20)

		if var_46_21 then
			var_46_22:setFilter("nearest", "nearest")

			var_0_13 = var_46_22
		end
	end

	var_0_0.getOriginiteFont()

	var_0_16, var_0_17 = var_0_40(var_0_16, var_0_17, "src/data/font/Galmuri9WS.fnt")

	if not var_0_18 then
		local var_46_23 = "src/sprites/mainmenu/upgradetitle.png"
		local var_46_24, var_46_25 = pcall(love.graphics.newImage, var_46_23)

		if var_46_24 then
			var_46_25:setFilter("nearest", "nearest")

			var_0_18 = var_46_25
		end
	end

	var_0_19, var_0_20 = var_0_40(var_0_19, var_0_20, "src/data/font/Galmuri9WS.fnt")

	if not var_0_21 then
		local var_46_26 = "src/sprites/icons/menu/mouseright.png"
		local var_46_27, var_46_28 = pcall(love.graphics.newImage, var_46_26)

		if var_46_27 then
			var_46_28:setFilter("nearest", "nearest")

			var_0_21 = var_46_28
		end
	end

	if not var_0_22 then
		local var_46_29 = "src/sprites/icons/menu/mouseleft.png"
		local var_46_30, var_46_31 = pcall(love.graphics.newImage, var_46_29)

		if var_46_30 then
			var_46_31:setFilter("nearest", "nearest")

			var_0_22 = var_46_31
		end
	end

	if not var_0_23 then
		local var_46_32 = "src/sprites/icons/menu/mousewheel.png"
		local var_46_33, var_46_34 = pcall(love.graphics.newImage, var_46_32)

		if var_46_33 then
			var_46_34:setFilter("nearest", "nearest")

			var_0_23 = var_46_34
		end
	end

	if not var_0_24 then
		local var_46_35 = "src/sprites/mainmenu/backbutton.png"
		local var_46_36, var_46_37 = pcall(love.graphics.newImage, var_46_35)

		if var_46_36 then
			var_46_37:setFilter("nearest", "nearest")

			var_0_24 = var_46_37
		end
	end

	if not var_0_9 then
		var_0_9 = love.graphics.newShader("            vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n                vec4 texcolor = Texel(texture, texture_coords);\n                if (texcolor.a == 0.0) discard;\n                return color;\n            }\n        ")
	end

	if not var_0_10 then
		var_0_10 = love.graphics.newShader("            extern vec4 glowColor;\n\n            vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n                vec2 uv = texture_coords - 0.5;\n\n                // Improved Rounded Box SDF to eliminate \"X\" artifact\n                // Box half-size 0.25, Corner radius is handled by the distance field nature\n                vec2 d = abs(uv) - 0.2;\n                float dist = length(max(d, 0.0)) + min(max(d.x, d.y), 0.0);\n\n                // Smooth falloff from the edge of the box\n                // 0.0 is the edge of the box, 0.3 is the fade out distance\n                float alpha = 1.0 - smoothstep(0.0, 0.3, dist);\n\n                // Sharper falloff to reduce \"large area\" feel\n                alpha = pow(alpha, 2.0);\n\n                return glowColor * alpha;\n            }\n        ")
	end

	if not var_0_11 then
		var_0_11 = love.graphics.newImage(love.image.newImageData(1, 1))
	end

	var_0_72 = {}

	local var_46_38 = var_46_0 / 2
	local var_46_39 = var_46_1 / 2
	local var_46_40 = {
		maxhp = {
			x = var_46_38 - 60,
			y = var_46_39 + 60
		},
		noviceshield = {
			x = var_46_38 - 60,
			y = var_46_39 + 140
		},
		startgold = {
			x = var_46_38 - 120,
			y = var_46_39 + 120
		},
		comebackspin = {
			x = var_46_38 - 60,
			y = var_46_39 + 220
		},
		gateheal = {
			x = var_46_38 - 60,
			y = var_46_39 + 300
		},
		comebackgold = {
			x = var_46_38 - 120,
			y = var_46_39 + 200
		},
		maxhp2 = {
			x = var_46_38 - 180,
			y = var_46_39 + 260
		},
		startgold2 = {
			x = var_46_38 - 180,
			y = var_46_39 + 180
		},
		slotodds = {
			x = var_46_38,
			y = var_46_39
		},
		maxunit = {
			x = var_46_38 + 60,
			y = var_46_39 + 60
		},
		maxunit2 = {
			x = var_46_38 + 120,
			y = var_46_39 + 120
		},
		maxunit3 = {
			x = var_46_38 + 180,
			y = var_46_39 + 180
		},
		slotnudge = {
			x = var_46_38 + 140,
			y = var_46_39 + 60
		},
		interest = {
			x = var_46_38 + 60,
			y = var_46_39 + 140
		},
		preptime2 = {
			x = var_46_38 + 120,
			y = var_46_39 + 200
		},
		preptimerdisabled = {
			x = var_46_38 + 180,
			y = var_46_39 + 260
		},
		slotadvanced = {
			x = var_46_38,
			y = var_46_39 - 80
		},
		slotadvanced2 = {
			x = var_46_38,
			y = var_46_39 - 160
		},
		slotadvanced3 = {
			x = var_46_38,
			y = var_46_39 - 240
		},
		slotrare = {
			x = var_46_38 - 80,
			y = var_46_39 - 240
		},
		corereroll = {
			x = var_46_38 - 80,
			y = var_46_39 - 80
		},
		firstcorespin = {
			x = var_46_38 - 160,
			y = var_46_39 - 80
		},
		firstcoreuncommon = {
			x = var_46_38 - 240,
			y = var_46_39 - 80
		},
		shopreroll = {
			x = var_46_38 + 80,
			y = var_46_39 - 80
		},
		iteminventory = {
			x = var_46_38 + 140,
			y = var_46_39 - 140
		},
		itemrefund = {
			x = var_46_38 + 220,
			y = var_46_39 - 140
		},
		iteminventory2 = {
			x = var_46_38 + 200,
			y = var_46_39 - 200
		},
		itemresearch = {
			x = var_46_38 + 80,
			y = var_46_39 - 160
		},
		shoppin = {
			x = var_46_38 + 220,
			y = var_46_39 - 80
		}
	}
	local var_46_41 = var_0_86.slotodds.maxed == true
	local var_46_42 = var_0_86.maxhp and var_0_86.maxhp.maxed == true
	local var_46_43 = var_0_66("noviceshield")
	local var_46_44 = var_0_66("startgold")
	local var_46_45 = var_0_66("comebackspin")
	local var_46_46 = var_0_86.noviceshield and var_0_86.noviceshield.maxed == true
	local var_46_47 = var_0_66("gateheal")
	local var_46_48 = var_0_86.comebackspin and var_0_86.comebackspin.maxed == true
	local var_46_49 = var_0_66("comebackgold")
	local var_46_50 = var_0_86.startgold and var_0_86.startgold.maxed == true
	local var_46_51 = var_0_66("maxhp2")
	local var_46_52 = var_0_86.comebackgold and var_0_86.comebackgold.maxed == true
	local var_46_53 = var_0_66("startgold2")
	local var_46_54 = var_0_86.maxunit and var_0_86.maxunit.maxed == true
	local var_46_55 = var_0_66("maxunit2")
	local var_46_56 = var_0_66("maxunit3")
	local var_46_57 = var_0_86.maxunit2 and var_0_86.maxunit2.maxed == true
	local var_46_58 = var_0_66("preptime")
	local var_46_59 = var_0_66("interest")
	local var_46_60 = var_0_66("preptime2")
	local var_46_61 = var_0_66("preptimerdisabled")
	local var_46_62 = var_0_66("slotadvanced2")
	local var_46_63 = var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true
	local var_46_64 = var_0_66("corereroll")
	local var_46_65 = var_0_66("firstcorespin")
	local var_46_66 = var_0_86.corereroll and var_0_86.corereroll.maxed == true
	local var_46_67 = var_0_66("firstcoreuncommon")
	local var_46_68 = var_0_86.firstcorespin and var_0_86.firstcorespin.maxed == true
	local var_46_69 = var_0_66("shopreroll")
	local var_46_70 = var_0_66("iteminventory")
	local var_46_71 = var_0_86.shopreroll and var_0_86.shopreroll.maxed == true
	local var_46_72 = var_0_66("itemrefund")
	local var_46_73 = var_0_86.iteminventory and var_0_86.iteminventory.maxed == true
	local var_46_74 = var_0_66("iteminventory2")
	local var_46_75 = var_0_66("itemresearch")
	local var_46_76 = var_0_66("shoppin")
	local var_46_77 = var_0_66("slotadvanced3")
	local var_46_78 = var_0_86.slotadvanced2 and var_0_86.slotadvanced2.maxed == true
	local var_46_79 = var_0_66("slotrare")
	local var_46_80 = var_0_86.slotadvanced3 and var_0_86.slotadvanced3.maxed == true
	local var_46_81 = var_0_66("maxhp")

	if var_46_41 and (var_46_81.revealed or (var_46_81.unlockLineProgress or 0) > 0) or var_46_81.isDisappearing then
		local var_46_82 = {
			1,
			1,
			1,
			1
		}
		local var_46_83 = var_0_86.maxhp
		local var_46_84 = var_46_83 and var_46_83.maxed or false
		local var_46_85 = var_46_83 and arg_46_1 >= var_46_83.cost

		if var_46_84 then
			var_46_82 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_85 then
			var_46_82 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_82 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_86 = var_46_40.slotodds.x
		local var_46_87 = var_46_40.slotodds.y
		local var_46_88 = var_46_40.maxhp.x
		local var_46_89 = var_46_40.maxhp.y
		local var_46_90 = var_46_81.unlockLineProgress or 0
		local var_46_91 = var_46_86 + (var_46_88 - var_46_86) * var_46_90
		local var_46_92 = var_46_87 + (var_46_89 - var_46_87) * var_46_90
		local var_46_93, var_46_94 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_95 = 0.18
		local var_46_96 = 0
		local var_46_97 = 0
		local var_46_98 = 6
		local var_46_99 = 10
		local var_46_100 = 2.3
		local var_46_101 = var_46_95 + var_46_96 * 1

		for iter_46_6 = 1, var_46_99 do
			local var_46_102 = (iter_46_6 - 0.5) / var_46_99
			local var_46_103 = var_46_98 * var_46_102^1.05
			local var_46_104 = var_46_101 * math.exp(-var_46_102 * var_46_100) * 0.7

			love.graphics.setColor(var_46_82[1], var_46_82[2], var_46_82[3], var_46_104)
			love.graphics.setLineWidth(2 + var_46_103 * 1.2)
			love.graphics.line(var_46_86, var_46_87, var_46_91, var_46_92)
		end

		love.graphics.setBlendMode(var_46_93 or "alpha", var_46_94 or "alphamultiply")
		love.graphics.setColor(var_46_82[1], var_46_82[2], var_46_82[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_86, var_46_87, var_46_91, var_46_92)
		love.graphics.setLineWidth(1)
	end

	if (var_46_42 or var_46_43.isDisappearing) and var_46_43.unlockLineProgress > 0 then
		local var_46_105 = {
			1,
			1,
			1,
			1
		}
		local var_46_106 = var_0_86.noviceshield
		local var_46_107 = var_46_106 and var_46_106.maxed or false
		local var_46_108 = var_46_106 and var_46_42 and arg_46_1 >= var_46_106.cost

		if var_46_107 then
			var_46_105 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_108 then
			var_46_105 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_105 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_109 = var_46_40.maxhp.x
		local var_46_110 = var_46_40.maxhp.y
		local var_46_111 = var_46_40.noviceshield.x
		local var_46_112 = var_46_40.noviceshield.y
		local var_46_113 = var_46_43.unlockLineProgress
		local var_46_114 = var_46_109 + (var_46_111 - var_46_109) * var_46_113
		local var_46_115 = var_46_110 + (var_46_112 - var_46_110) * var_46_113
		local var_46_116, var_46_117 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_118 = 0.18
		local var_46_119 = 6
		local var_46_120 = 10
		local var_46_121 = 2.3

		for iter_46_7 = 1, var_46_120 do
			local var_46_122 = (iter_46_7 - 0.5) / var_46_120
			local var_46_123 = var_46_119 * var_46_122^1.05
			local var_46_124 = var_46_118 * math.exp(-var_46_122 * var_46_121) * 0.7

			love.graphics.setColor(var_46_105[1], var_46_105[2], var_46_105[3], var_46_124)
			love.graphics.setLineWidth(2 + var_46_123 * 1.2)
			love.graphics.line(var_46_109, var_46_110, var_46_114, var_46_115)
		end

		love.graphics.setBlendMode(var_46_116 or "alpha", var_46_117 or "alphamultiply")
		love.graphics.setColor(var_46_105[1], var_46_105[2], var_46_105[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_109, var_46_110, var_46_114, var_46_115)
		love.graphics.setLineWidth(1)
	end

	if (var_46_42 or var_46_44.isDisappearing) and var_46_44.unlockLineProgress > 0 then
		local var_46_125 = {
			1,
			1,
			1,
			1
		}
		local var_46_126 = var_0_86.startgold
		local var_46_127 = var_46_126 and var_46_126.maxed or false
		local var_46_128 = var_46_126 and var_46_42 and arg_46_1 >= var_46_126.cost

		if var_46_127 then
			var_46_125 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_128 then
			var_46_125 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_125 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_129 = var_46_40.maxhp.x
		local var_46_130 = var_46_40.maxhp.y
		local var_46_131 = var_46_40.startgold.x
		local var_46_132 = var_46_40.startgold.y
		local var_46_133 = var_46_44.unlockLineProgress
		local var_46_134 = var_46_129 + (var_46_131 - var_46_129) * var_46_133
		local var_46_135 = var_46_130 + (var_46_132 - var_46_130) * var_46_133
		local var_46_136, var_46_137 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_138 = 0.18
		local var_46_139 = 6
		local var_46_140 = 10
		local var_46_141 = 2.3

		for iter_46_8 = 1, var_46_140 do
			local var_46_142 = (iter_46_8 - 0.5) / var_46_140
			local var_46_143 = var_46_139 * var_46_142^1.05
			local var_46_144 = var_46_138 * math.exp(-var_46_142 * var_46_141) * 0.7

			love.graphics.setColor(var_46_125[1], var_46_125[2], var_46_125[3], var_46_144)
			love.graphics.setLineWidth(2 + var_46_143 * 1.2)
			love.graphics.line(var_46_129, var_46_130, var_46_134, var_46_135)
		end

		love.graphics.setBlendMode(var_46_136 or "alpha", var_46_137 or "alphamultiply")
		love.graphics.setColor(var_46_125[1], var_46_125[2], var_46_125[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_129, var_46_130, var_46_134, var_46_135)
		love.graphics.setLineWidth(1)
	end

	if (var_46_46 or var_46_45.isDisappearing) and var_46_45.unlockLineProgress > 0 then
		local var_46_145 = {
			1,
			1,
			1,
			1
		}
		local var_46_146 = var_0_86.comebackspin
		local var_46_147 = var_46_146 and var_46_146.maxed or false
		local var_46_148 = var_46_146 and var_46_46 and arg_46_1 >= var_46_146.cost

		if var_46_147 then
			var_46_145 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_148 then
			var_46_145 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_145 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_149 = var_46_40.noviceshield.x
		local var_46_150 = var_46_40.noviceshield.y
		local var_46_151 = var_46_40.comebackspin.x
		local var_46_152 = var_46_40.comebackspin.y
		local var_46_153 = var_46_45.unlockLineProgress
		local var_46_154 = var_46_149 + (var_46_151 - var_46_149) * var_46_153
		local var_46_155 = var_46_150 + (var_46_152 - var_46_150) * var_46_153
		local var_46_156, var_46_157 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_158 = 0.18
		local var_46_159 = 6
		local var_46_160 = 10
		local var_46_161 = 2.3

		for iter_46_9 = 1, var_46_160 do
			local var_46_162 = (iter_46_9 - 0.5) / var_46_160
			local var_46_163 = var_46_159 * var_46_162^1.05
			local var_46_164 = var_46_158 * math.exp(-var_46_162 * var_46_161) * 0.7

			love.graphics.setColor(var_46_145[1], var_46_145[2], var_46_145[3], var_46_164)
			love.graphics.setLineWidth(2 + var_46_163 * 1.2)
			love.graphics.line(var_46_149, var_46_150, var_46_154, var_46_155)
		end

		love.graphics.setBlendMode(var_46_156 or "alpha", var_46_157 or "alphamultiply")
		love.graphics.setColor(var_46_145[1], var_46_145[2], var_46_145[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_149, var_46_150, var_46_154, var_46_155)
		love.graphics.setLineWidth(1)
	end

	if (var_46_48 or var_46_47.isDisappearing) and var_46_47.unlockLineProgress > 0 then
		local var_46_165 = {
			1,
			1,
			1,
			1
		}
		local var_46_166 = var_0_86.gateheal
		local var_46_167 = var_46_166 and var_46_166.maxed or false
		local var_46_168 = var_46_166 and var_46_48 and arg_46_1 >= var_46_166.cost

		if var_46_167 then
			var_46_165 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_168 then
			var_46_165 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_165 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_169 = var_46_40.comebackspin.x
		local var_46_170 = var_46_40.comebackspin.y
		local var_46_171 = var_46_40.gateheal.x
		local var_46_172 = var_46_40.gateheal.y
		local var_46_173 = var_46_47.unlockLineProgress
		local var_46_174 = var_46_169 + (var_46_171 - var_46_169) * var_46_173
		local var_46_175 = var_46_170 + (var_46_172 - var_46_170) * var_46_173
		local var_46_176, var_46_177 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_178 = 0.18
		local var_46_179 = 6
		local var_46_180 = 10
		local var_46_181 = 2.3

		for iter_46_10 = 1, var_46_180 do
			local var_46_182 = (iter_46_10 - 0.5) / var_46_180
			local var_46_183 = var_46_179 * var_46_182^1.05
			local var_46_184 = var_46_178 * math.exp(-var_46_182 * var_46_181) * 0.7

			love.graphics.setColor(var_46_165[1], var_46_165[2], var_46_165[3], var_46_184)
			love.graphics.setLineWidth(2 + var_46_183 * 1.2)
			love.graphics.line(var_46_169, var_46_170, var_46_174, var_46_175)
		end

		love.graphics.setBlendMode(var_46_176 or "alpha", var_46_177 or "alphamultiply")
		love.graphics.setColor(var_46_165[1], var_46_165[2], var_46_165[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_169, var_46_170, var_46_174, var_46_175)
		love.graphics.setLineWidth(1)
	end

	if (var_46_50 or var_46_49.isDisappearing) and var_46_49.unlockLineProgress > 0 then
		local var_46_185 = {
			1,
			1,
			1,
			1
		}
		local var_46_186 = var_0_86.comebackgold
		local var_46_187 = var_46_186 and var_46_186.maxed or false
		local var_46_188 = var_46_186 and var_46_50 and arg_46_1 >= var_46_186.cost

		if var_46_187 then
			var_46_185 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_188 then
			var_46_185 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_185 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_189 = var_46_40.startgold.x
		local var_46_190 = var_46_40.startgold.y
		local var_46_191 = var_46_40.comebackgold.x
		local var_46_192 = var_46_40.comebackgold.y
		local var_46_193 = var_46_49.unlockLineProgress
		local var_46_194 = var_46_189 + (var_46_191 - var_46_189) * var_46_193
		local var_46_195 = var_46_190 + (var_46_192 - var_46_190) * var_46_193
		local var_46_196, var_46_197 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_198 = 0.18
		local var_46_199 = 6
		local var_46_200 = 10
		local var_46_201 = 2.3

		for iter_46_11 = 1, var_46_200 do
			local var_46_202 = (iter_46_11 - 0.5) / var_46_200
			local var_46_203 = var_46_199 * var_46_202^1.05
			local var_46_204 = var_46_198 * math.exp(-var_46_202 * var_46_201) * 0.7

			love.graphics.setColor(var_46_185[1], var_46_185[2], var_46_185[3], var_46_204)
			love.graphics.setLineWidth(2 + var_46_203 * 1.2)
			love.graphics.line(var_46_189, var_46_190, var_46_194, var_46_195)
		end

		love.graphics.setBlendMode(var_46_196 or "alpha", var_46_197 or "alphamultiply")
		love.graphics.setColor(var_46_185[1], var_46_185[2], var_46_185[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_189, var_46_190, var_46_194, var_46_195)
		love.graphics.setLineWidth(1)
	end

	if (var_46_52 or var_46_51.isDisappearing) and var_46_51.unlockLineProgress > 0 then
		local var_46_205 = {
			1,
			1,
			1,
			1
		}
		local var_46_206 = var_0_86.maxhp2
		local var_46_207 = var_46_206 and var_46_206.maxed or false
		local var_46_208 = var_46_206 and var_46_52 and arg_46_1 >= var_46_206.cost

		if var_46_207 then
			var_46_205 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_208 then
			var_46_205 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_205 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_209 = var_46_40.comebackgold.x
		local var_46_210 = var_46_40.comebackgold.y
		local var_46_211 = var_46_40.maxhp2.x
		local var_46_212 = var_46_40.maxhp2.y
		local var_46_213 = var_46_51.unlockLineProgress
		local var_46_214 = var_46_209 + (var_46_211 - var_46_209) * var_46_213
		local var_46_215 = var_46_210 + (var_46_212 - var_46_210) * var_46_213
		local var_46_216, var_46_217 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_218 = 0.18
		local var_46_219 = 6
		local var_46_220 = 10
		local var_46_221 = 2.3

		for iter_46_12 = 1, var_46_220 do
			local var_46_222 = (iter_46_12 - 0.5) / var_46_220
			local var_46_223 = var_46_219 * var_46_222^1.05
			local var_46_224 = var_46_218 * math.exp(-var_46_222 * var_46_221) * 0.7

			love.graphics.setColor(var_46_205[1], var_46_205[2], var_46_205[3], var_46_224)
			love.graphics.setLineWidth(2 + var_46_223 * 1.2)
			love.graphics.line(var_46_209, var_46_210, var_46_214, var_46_215)
		end

		love.graphics.setBlendMode(var_46_216 or "alpha", var_46_217 or "alphamultiply")
		love.graphics.setColor(var_46_205[1], var_46_205[2], var_46_205[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_209, var_46_210, var_46_214, var_46_215)
		love.graphics.setLineWidth(1)
	end

	if (var_46_50 or var_46_53.isDisappearing) and var_46_53.unlockLineProgress > 0 then
		local var_46_225 = {
			1,
			1,
			1,
			1
		}
		local var_46_226 = var_0_86.startgold2
		local var_46_227 = var_46_226 and var_46_226.maxed or false
		local var_46_228 = var_46_226 and var_46_50 and arg_46_1 >= var_46_226.cost

		if var_46_227 then
			var_46_225 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_228 then
			var_46_225 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_225 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_229 = var_46_40.startgold.x
		local var_46_230 = var_46_40.startgold.y
		local var_46_231 = var_46_40.startgold2.x
		local var_46_232 = var_46_40.startgold2.y
		local var_46_233 = var_46_53.unlockLineProgress
		local var_46_234 = var_46_229 + (var_46_231 - var_46_229) * var_46_233
		local var_46_235 = var_46_230 + (var_46_232 - var_46_230) * var_46_233
		local var_46_236, var_46_237 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_238 = 0.18
		local var_46_239 = 6
		local var_46_240 = 10
		local var_46_241 = 2.3

		for iter_46_13 = 1, var_46_240 do
			local var_46_242 = (iter_46_13 - 0.5) / var_46_240
			local var_46_243 = var_46_239 * var_46_242^1.05
			local var_46_244 = var_46_238 * math.exp(-var_46_242 * var_46_241) * 0.7

			love.graphics.setColor(var_46_225[1], var_46_225[2], var_46_225[3], var_46_244)
			love.graphics.setLineWidth(2 + var_46_243 * 1.2)
			love.graphics.line(var_46_229, var_46_230, var_46_234, var_46_235)
		end

		love.graphics.setBlendMode(var_46_236 or "alpha", var_46_237 or "alphamultiply")
		love.graphics.setColor(var_46_225[1], var_46_225[2], var_46_225[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_229, var_46_230, var_46_234, var_46_235)
		love.graphics.setLineWidth(1)
	end

	local var_46_245 = var_0_66("maxunit")

	if (var_46_41 or var_46_245.isDisappearing) and var_46_245.unlockLineProgress > 0 then
		local var_46_246 = {
			1,
			1,
			1,
			1
		}
		local var_46_247 = var_0_86.maxunit
		local var_46_248 = var_46_247.maxed or false
		local var_46_249 = arg_46_1 >= var_46_247.cost

		if var_46_248 then
			var_46_246 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_249 then
			var_46_246 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_246 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_250 = var_46_40.slotodds.x
		local var_46_251 = var_46_40.slotodds.y
		local var_46_252 = var_46_40.maxunit.x
		local var_46_253 = var_46_40.maxunit.y
		local var_46_254 = var_46_245.unlockLineProgress
		local var_46_255 = var_46_250 + (var_46_252 - var_46_250) * var_46_254
		local var_46_256 = var_46_251 + (var_46_253 - var_46_251) * var_46_254
		local var_46_257, var_46_258 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_259 = 0.18
		local var_46_260 = 0
		local var_46_261 = 0
		local var_46_262 = 6
		local var_46_263 = 10
		local var_46_264 = 2.3
		local var_46_265 = var_46_259 + var_46_260 * 1

		for iter_46_14 = 1, var_46_263 do
			local var_46_266 = (iter_46_14 - 0.5) / var_46_263
			local var_46_267 = var_46_262 * var_46_266^1.05
			local var_46_268 = var_46_265 * math.exp(-var_46_266 * var_46_264) * 0.7

			love.graphics.setColor(var_46_246[1], var_46_246[2], var_46_246[3], var_46_268)
			love.graphics.setLineWidth(2 + var_46_267 * 1.2)
			love.graphics.line(var_46_250, var_46_251, var_46_255, var_46_256)
		end

		love.graphics.setBlendMode(var_46_257 or "alpha", var_46_258 or "alphamultiply")
		love.graphics.setColor(var_46_246[1], var_46_246[2], var_46_246[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_250, var_46_251, var_46_255, var_46_256)
		love.graphics.setLineWidth(1)
	end

	if (var_46_54 or var_46_55.isDisappearing) and var_46_55.unlockLineProgress > 0 then
		local var_46_269 = {
			1,
			1,
			1,
			1
		}
		local var_46_270 = var_0_86.maxunit2
		local var_46_271 = var_46_270 and var_46_270.maxed or false
		local var_46_272 = var_46_270 and var_46_54 and arg_46_1 >= var_46_270.cost

		if var_46_271 then
			var_46_269 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_272 then
			var_46_269 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_269 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_273 = var_46_40.maxunit.x
		local var_46_274 = var_46_40.maxunit.y
		local var_46_275 = var_46_40.maxunit2.x
		local var_46_276 = var_46_40.maxunit2.y
		local var_46_277 = var_46_55.unlockLineProgress
		local var_46_278 = var_46_273 + (var_46_275 - var_46_273) * var_46_277
		local var_46_279 = var_46_274 + (var_46_276 - var_46_274) * var_46_277
		local var_46_280, var_46_281 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_282 = 0.18
		local var_46_283 = 6
		local var_46_284 = 10
		local var_46_285 = 2.3

		for iter_46_15 = 1, var_46_284 do
			local var_46_286 = (iter_46_15 - 0.5) / var_46_284
			local var_46_287 = var_46_283 * var_46_286^1.05
			local var_46_288 = var_46_282 * math.exp(-var_46_286 * var_46_285) * 0.7

			love.graphics.setColor(var_46_269[1], var_46_269[2], var_46_269[3], var_46_288)
			love.graphics.setLineWidth(2 + var_46_287 * 1.2)
			love.graphics.line(var_46_273, var_46_274, var_46_278, var_46_279)
		end

		love.graphics.setBlendMode(var_46_280 or "alpha", var_46_281 or "alphamultiply")
		love.graphics.setColor(var_46_269[1], var_46_269[2], var_46_269[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_273, var_46_274, var_46_278, var_46_279)
		love.graphics.setLineWidth(1)
	end

	if (var_46_57 or var_46_56.isDisappearing) and var_46_56.unlockLineProgress > 0 then
		local var_46_289 = {
			1,
			1,
			1,
			1
		}
		local var_46_290 = var_0_86.maxunit3
		local var_46_291 = var_46_290 and var_46_290.maxed or false
		local var_46_292 = var_46_290 and var_46_57 and arg_46_1 >= var_46_290.cost

		if var_46_291 then
			var_46_289 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_292 then
			var_46_289 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_289 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_293 = var_46_40.maxunit2.x
		local var_46_294 = var_46_40.maxunit2.y
		local var_46_295 = var_46_40.maxunit3.x
		local var_46_296 = var_46_40.maxunit3.y
		local var_46_297 = var_46_56.unlockLineProgress
		local var_46_298 = var_46_293 + (var_46_295 - var_46_293) * var_46_297
		local var_46_299 = var_46_294 + (var_46_296 - var_46_294) * var_46_297
		local var_46_300, var_46_301 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_302 = 0.18
		local var_46_303 = 6
		local var_46_304 = 10
		local var_46_305 = 2.3

		for iter_46_16 = 1, var_46_304 do
			local var_46_306 = (iter_46_16 - 0.5) / var_46_304
			local var_46_307 = var_46_303 * var_46_306^1.05
			local var_46_308 = var_46_302 * math.exp(-var_46_306 * var_46_305) * 0.7

			love.graphics.setColor(var_46_289[1], var_46_289[2], var_46_289[3], var_46_308)
			love.graphics.setLineWidth(2 + var_46_307 * 1.2)
			love.graphics.line(var_46_293, var_46_294, var_46_298, var_46_299)
		end

		love.graphics.setBlendMode(var_46_300 or "alpha", var_46_301 or "alphamultiply")
		love.graphics.setColor(var_46_289[1], var_46_289[2], var_46_289[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_293, var_46_294, var_46_298, var_46_299)
		love.graphics.setLineWidth(1)
	end

	local var_46_309 = var_0_66("slotnudge")

	if (var_46_54 or var_46_309.isDisappearing) and var_46_309.unlockLineProgress > 0 then
		local var_46_310 = {
			1,
			1,
			1,
			1
		}
		local var_46_311 = var_0_86.slotnudge
		local var_46_312 = var_46_311 and var_46_311.maxed or false
		local var_46_313 = var_46_311 and var_46_54 and arg_46_1 >= var_46_311.cost

		if var_46_312 then
			var_46_310 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_313 then
			var_46_310 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_310 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_314 = var_46_40.maxunit.x
		local var_46_315 = var_46_40.maxunit.y
		local var_46_316 = var_46_40.slotnudge.x
		local var_46_317 = var_46_40.slotnudge.y
		local var_46_318 = var_46_309.unlockLineProgress
		local var_46_319 = var_46_314 + (var_46_316 - var_46_314) * var_46_318
		local var_46_320 = var_46_315 + (var_46_317 - var_46_315) * var_46_318
		local var_46_321, var_46_322 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_323 = 0.18
		local var_46_324 = 0
		local var_46_325 = 0
		local var_46_326 = 6
		local var_46_327 = 10
		local var_46_328 = 2.3
		local var_46_329 = var_46_323 + var_46_324 * 1

		for iter_46_17 = 1, var_46_327 do
			local var_46_330 = (iter_46_17 - 0.5) / var_46_327
			local var_46_331 = var_46_326 * var_46_330^1.05
			local var_46_332 = var_46_329 * math.exp(-var_46_330 * var_46_328) * 0.7

			love.graphics.setColor(var_46_310[1], var_46_310[2], var_46_310[3], var_46_332)
			love.graphics.setLineWidth(2 + var_46_331 * 1.2)
			love.graphics.line(var_46_314, var_46_315, var_46_319, var_46_320)
		end

		love.graphics.setBlendMode(var_46_321 or "alpha", var_46_322 or "alphamultiply")
		love.graphics.setColor(var_46_310[1], var_46_310[2], var_46_310[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_314, var_46_315, var_46_319, var_46_320)
		love.graphics.setLineWidth(1)
	end

	if false and (var_46_54 or var_46_58.isDisappearing) and var_46_58.unlockLineProgress > 0 then
		local var_46_333 = {
			1,
			1,
			1,
			1
		}
		local var_46_334 = var_0_86.preptime
		local var_46_335 = var_46_334 and var_46_334.maxed or false
		local var_46_336 = var_46_334 and var_46_54 and arg_46_1 >= var_46_334.cost

		if var_46_335 then
			var_46_333 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_336 then
			var_46_333 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_333 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_337 = var_46_40.maxunit.x
		local var_46_338 = var_46_40.maxunit.y
		local var_46_339 = var_46_40.preptime.x
		local var_46_340 = var_46_40.preptime.y
		local var_46_341 = var_46_58.unlockLineProgress
		local var_46_342 = var_46_337 + (var_46_339 - var_46_337) * var_46_341
		local var_46_343 = var_46_338 + (var_46_340 - var_46_338) * var_46_341
		local var_46_344, var_46_345 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_346 = 0.18
		local var_46_347 = 6
		local var_46_348 = 10
		local var_46_349 = 2.3

		for iter_46_18 = 1, var_46_348 do
			local var_46_350 = (iter_46_18 - 0.5) / var_46_348
			local var_46_351 = var_46_347 * var_46_350^1.05
			local var_46_352 = var_46_346 * math.exp(-var_46_350 * var_46_349) * 0.7

			love.graphics.setColor(var_46_333[1], var_46_333[2], var_46_333[3], var_46_352)
			love.graphics.setLineWidth(2 + var_46_351 * 1.2)
			love.graphics.line(var_46_337, var_46_338, var_46_342, var_46_343)
		end

		love.graphics.setBlendMode(var_46_344 or "alpha", var_46_345 or "alphamultiply")
		love.graphics.setColor(var_46_333[1], var_46_333[2], var_46_333[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_337, var_46_338, var_46_342, var_46_343)
		love.graphics.setLineWidth(1)
	end

	if (var_46_54 or var_46_59.isDisappearing) and var_46_59.unlockLineProgress > 0 then
		local var_46_353 = {
			1,
			1,
			1,
			1
		}
		local var_46_354 = var_0_86.interest
		local var_46_355 = var_46_354 and var_46_354.maxed or false
		local var_46_356 = var_46_354 and var_46_54 and arg_46_1 >= var_46_354.cost

		if var_46_355 then
			var_46_353 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_356 then
			var_46_353 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_353 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_357 = var_46_40.maxunit.x
		local var_46_358 = var_46_40.maxunit.y
		local var_46_359 = var_46_40.interest.x
		local var_46_360 = var_46_40.interest.y
		local var_46_361 = var_46_59.unlockLineProgress
		local var_46_362 = var_46_357 + (var_46_359 - var_46_357) * var_46_361
		local var_46_363 = var_46_358 + (var_46_360 - var_46_358) * var_46_361
		local var_46_364, var_46_365 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_366 = 0.18
		local var_46_367 = 6
		local var_46_368 = 10
		local var_46_369 = 2.3

		for iter_46_19 = 1, var_46_368 do
			local var_46_370 = (iter_46_19 - 0.5) / var_46_368
			local var_46_371 = var_46_367 * var_46_370^1.05
			local var_46_372 = var_46_366 * math.exp(-var_46_370 * var_46_369) * 0.7

			love.graphics.setColor(var_46_353[1], var_46_353[2], var_46_353[3], var_46_372)
			love.graphics.setLineWidth(2 + var_46_371 * 1.2)
			love.graphics.line(var_46_357, var_46_358, var_46_362, var_46_363)
		end

		love.graphics.setBlendMode(var_46_364 or "alpha", var_46_365 or "alphamultiply")
		love.graphics.setColor(var_46_353[1], var_46_353[2], var_46_353[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_357, var_46_358, var_46_362, var_46_363)
		love.graphics.setLineWidth(1)
	end

	if false and var_46_60.isDisappearing and var_46_60.unlockLineProgress > 0 then
		local var_46_373 = {
			1,
			1,
			1,
			1
		}
		local var_46_374 = var_0_86.preptime2
		local var_46_375 = var_46_374 and var_46_374.maxed or false
		local var_46_376 = var_46_374 and prepTimePurchased and arg_46_1 >= var_46_374.cost

		if var_46_375 then
			var_46_373 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_376 then
			var_46_373 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_373 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_377 = var_46_40.preptime.x
		local var_46_378 = var_46_40.preptime.y
		local var_46_379 = var_46_40.preptime2.x
		local var_46_380 = var_46_40.preptime2.y
		local var_46_381 = var_46_60.unlockLineProgress
		local var_46_382 = var_46_377 + (var_46_379 - var_46_377) * var_46_381
		local var_46_383 = var_46_378 + (var_46_380 - var_46_378) * var_46_381
		local var_46_384, var_46_385 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_386 = 0.18
		local var_46_387 = 6
		local var_46_388 = 10
		local var_46_389 = 2.3

		for iter_46_20 = 1, var_46_388 do
			local var_46_390 = (iter_46_20 - 0.5) / var_46_388
			local var_46_391 = var_46_387 * var_46_390^1.05
			local var_46_392 = var_46_386 * math.exp(-var_46_390 * var_46_389) * 0.7

			love.graphics.setColor(var_46_373[1], var_46_373[2], var_46_373[3], var_46_392)
			love.graphics.setLineWidth(2 + var_46_391 * 1.2)
			love.graphics.line(var_46_377, var_46_378, var_46_382, var_46_383)
		end

		love.graphics.setBlendMode(var_46_384 or "alpha", var_46_385 or "alphamultiply")
		love.graphics.setColor(var_46_373[1], var_46_373[2], var_46_373[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_377, var_46_378, var_46_382, var_46_383)
		love.graphics.setLineWidth(1)
	end

	if false and var_46_61.isDisappearing and var_46_61.unlockLineProgress > 0 then
		local var_46_393 = {
			1,
			1,
			1,
			1
		}
		local var_46_394 = var_0_86.preptimerdisabled
		local var_46_395 = var_46_394 and var_46_394.maxed or false
		local var_46_396 = var_46_394 and prepTime2Purchased and arg_46_1 >= var_46_394.cost

		if var_46_395 then
			var_46_393 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_396 then
			var_46_393 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_393 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_397 = var_46_40.preptime2.x
		local var_46_398 = var_46_40.preptime2.y
		local var_46_399 = var_46_40.preptimerdisabled.x
		local var_46_400 = var_46_40.preptimerdisabled.y
		local var_46_401 = var_46_61.unlockLineProgress
		local var_46_402 = var_46_397 + (var_46_399 - var_46_397) * var_46_401
		local var_46_403 = var_46_398 + (var_46_400 - var_46_398) * var_46_401
		local var_46_404, var_46_405 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_406 = 0.18
		local var_46_407 = 6
		local var_46_408 = 10
		local var_46_409 = 2.3

		for iter_46_21 = 1, var_46_408 do
			local var_46_410 = (iter_46_21 - 0.5) / var_46_408
			local var_46_411 = var_46_407 * var_46_410^1.05
			local var_46_412 = var_46_406 * math.exp(-var_46_410 * var_46_409) * 0.7

			love.graphics.setColor(var_46_393[1], var_46_393[2], var_46_393[3], var_46_412)
			love.graphics.setLineWidth(2 + var_46_411 * 1.2)
			love.graphics.line(var_46_397, var_46_398, var_46_402, var_46_403)
		end

		love.graphics.setBlendMode(var_46_404 or "alpha", var_46_405 or "alphamultiply")
		love.graphics.setColor(var_46_393[1], var_46_393[2], var_46_393[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_397, var_46_398, var_46_402, var_46_403)
		love.graphics.setLineWidth(1)
	end

	local var_46_413 = var_0_66("slotadvanced")
	local var_46_414 = var_46_41

	if (var_46_414 or var_46_413.isDisappearing) and var_46_413.unlockLineProgress > 0 then
		local var_46_415 = {
			1,
			1,
			1,
			1
		}
		local var_46_416 = var_0_86.slotadvanced
		local var_46_417 = var_46_416 and var_46_416.maxed or false
		local var_46_418 = var_46_416 and var_0_90("slotadvanced") and arg_46_1 >= var_46_416.cost

		if var_46_417 then
			var_46_415 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_418 then
			var_46_415 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_415 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_419 = var_46_40.slotodds.x
		local var_46_420 = var_46_40.slotodds.y
		local var_46_421 = var_46_40.slotadvanced.x
		local var_46_422 = var_46_40.slotadvanced.y
		local var_46_423 = var_46_413.unlockLineProgress
		local var_46_424 = var_46_419 + (var_46_421 - var_46_419) * var_46_423
		local var_46_425 = var_46_420 + (var_46_422 - var_46_420) * var_46_423
		local var_46_426, var_46_427 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_428 = 0.18
		local var_46_429 = 6
		local var_46_430 = 10
		local var_46_431 = 2.3

		for iter_46_22 = 1, var_46_430 do
			local var_46_432 = (iter_46_22 - 0.5) / var_46_430
			local var_46_433 = var_46_429 * var_46_432^1.05
			local var_46_434 = var_46_428 * math.exp(-var_46_432 * var_46_431) * 0.7

			love.graphics.setColor(var_46_415[1], var_46_415[2], var_46_415[3], var_46_434)
			love.graphics.setLineWidth(2 + var_46_433 * 1.2)
			love.graphics.line(var_46_419, var_46_420, var_46_424, var_46_425)
		end

		love.graphics.setBlendMode(var_46_426 or "alpha", var_46_427 or "alphamultiply")
		love.graphics.setColor(var_46_415[1], var_46_415[2], var_46_415[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_419, var_46_420, var_46_424, var_46_425)
		love.graphics.setLineWidth(1)
	end

	if (var_46_63 or var_46_64.isDisappearing) and var_46_64.unlockLineProgress > 0 then
		local var_46_435 = {
			1,
			1,
			1,
			1
		}
		local var_46_436 = var_0_86.corereroll
		local var_46_437 = var_46_436 and var_46_436.maxed or false
		local var_46_438 = var_46_436 and var_46_63 and arg_46_1 >= var_46_436.cost

		if var_46_437 then
			var_46_435 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_438 then
			var_46_435 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_435 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_439 = var_46_40.slotadvanced.x
		local var_46_440 = var_46_40.slotadvanced.y
		local var_46_441 = var_46_40.corereroll.x
		local var_46_442 = var_46_40.corereroll.y
		local var_46_443 = var_46_64.unlockLineProgress
		local var_46_444 = var_46_439 + (var_46_441 - var_46_439) * var_46_443
		local var_46_445 = var_46_440 + (var_46_442 - var_46_440) * var_46_443
		local var_46_446, var_46_447 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_448 = 0.18
		local var_46_449 = 6
		local var_46_450 = 10
		local var_46_451 = 2.3

		for iter_46_23 = 1, var_46_450 do
			local var_46_452 = (iter_46_23 - 0.5) / var_46_450
			local var_46_453 = var_46_449 * var_46_452^1.05
			local var_46_454 = var_46_448 * math.exp(-var_46_452 * var_46_451) * 0.7

			love.graphics.setColor(var_46_435[1], var_46_435[2], var_46_435[3], var_46_454)
			love.graphics.setLineWidth(2 + var_46_453 * 1.2)
			love.graphics.line(var_46_439, var_46_440, var_46_444, var_46_445)
		end

		love.graphics.setBlendMode(var_46_446 or "alpha", var_46_447 or "alphamultiply")
		love.graphics.setColor(var_46_435[1], var_46_435[2], var_46_435[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_439, var_46_440, var_46_444, var_46_445)
		love.graphics.setLineWidth(1)
	end

	if (var_46_66 or var_46_65.isDisappearing) and var_46_65.unlockLineProgress > 0 then
		local var_46_455 = {
			1,
			1,
			1,
			1
		}
		local var_46_456 = var_0_86.firstcorespin
		local var_46_457 = var_46_456 and var_46_456.maxed or false
		local var_46_458 = var_46_456 and var_46_66 and arg_46_1 >= var_46_456.cost

		if var_46_457 then
			var_46_455 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_458 then
			var_46_455 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_455 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_459 = var_46_40.corereroll.x
		local var_46_460 = var_46_40.corereroll.y
		local var_46_461 = var_46_40.firstcorespin.x
		local var_46_462 = var_46_40.firstcorespin.y
		local var_46_463 = var_46_65.unlockLineProgress
		local var_46_464 = var_46_459 + (var_46_461 - var_46_459) * var_46_463
		local var_46_465 = var_46_460 + (var_46_462 - var_46_460) * var_46_463
		local var_46_466, var_46_467 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_468 = 0.18
		local var_46_469 = 6
		local var_46_470 = 10
		local var_46_471 = 2.3

		for iter_46_24 = 1, var_46_470 do
			local var_46_472 = (iter_46_24 - 0.5) / var_46_470
			local var_46_473 = var_46_469 * var_46_472^1.05
			local var_46_474 = var_46_468 * math.exp(-var_46_472 * var_46_471) * 0.7

			love.graphics.setColor(var_46_455[1], var_46_455[2], var_46_455[3], var_46_474)
			love.graphics.setLineWidth(2 + var_46_473 * 1.2)
			love.graphics.line(var_46_459, var_46_460, var_46_464, var_46_465)
		end

		love.graphics.setBlendMode(var_46_466 or "alpha", var_46_467 or "alphamultiply")
		love.graphics.setColor(var_46_455[1], var_46_455[2], var_46_455[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_459, var_46_460, var_46_464, var_46_465)
		love.graphics.setLineWidth(1)
	end

	if (var_46_68 or var_46_67.isDisappearing) and var_46_67.unlockLineProgress > 0 then
		local var_46_475 = {
			1,
			1,
			1,
			1
		}
		local var_46_476 = var_0_86.firstcoreuncommon
		local var_46_477 = var_46_476 and var_46_476.maxed or false
		local var_46_478 = var_46_476 and var_46_68 and arg_46_1 >= var_46_476.cost

		if var_46_477 then
			var_46_475 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_478 then
			var_46_475 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_475 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_479 = var_46_40.firstcorespin.x
		local var_46_480 = var_46_40.firstcorespin.y
		local var_46_481 = var_46_40.firstcoreuncommon.x
		local var_46_482 = var_46_40.firstcoreuncommon.y
		local var_46_483 = var_46_67.unlockLineProgress
		local var_46_484 = var_46_479 + (var_46_481 - var_46_479) * var_46_483
		local var_46_485 = var_46_480 + (var_46_482 - var_46_480) * var_46_483
		local var_46_486, var_46_487 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_488 = 0.18
		local var_46_489 = 6
		local var_46_490 = 10
		local var_46_491 = 2.3

		for iter_46_25 = 1, var_46_490 do
			local var_46_492 = (iter_46_25 - 0.5) / var_46_490
			local var_46_493 = var_46_489 * var_46_492^1.05
			local var_46_494 = var_46_488 * math.exp(-var_46_492 * var_46_491) * 0.7

			love.graphics.setColor(var_46_475[1], var_46_475[2], var_46_475[3], var_46_494)
			love.graphics.setLineWidth(2 + var_46_493 * 1.2)
			love.graphics.line(var_46_479, var_46_480, var_46_484, var_46_485)
		end

		love.graphics.setBlendMode(var_46_486 or "alpha", var_46_487 or "alphamultiply")
		love.graphics.setColor(var_46_475[1], var_46_475[2], var_46_475[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_479, var_46_480, var_46_484, var_46_485)
		love.graphics.setLineWidth(1)
	end

	if (var_46_63 or var_46_69.isDisappearing) and var_46_69.unlockLineProgress > 0 then
		local var_46_495 = {
			1,
			1,
			1,
			1
		}
		local var_46_496 = var_0_86.shopreroll
		local var_46_497 = var_46_496 and var_46_496.maxed or false
		local var_46_498 = var_46_496 and var_46_63 and arg_46_1 >= var_46_496.cost

		if var_46_497 then
			var_46_495 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_498 then
			var_46_495 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_495 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_499 = var_46_40.slotadvanced.x
		local var_46_500 = var_46_40.slotadvanced.y
		local var_46_501 = var_46_40.shopreroll.x
		local var_46_502 = var_46_40.shopreroll.y
		local var_46_503 = var_46_69.unlockLineProgress
		local var_46_504 = var_46_499 + (var_46_501 - var_46_499) * var_46_503
		local var_46_505 = var_46_500 + (var_46_502 - var_46_500) * var_46_503
		local var_46_506, var_46_507 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_508 = 0.18
		local var_46_509 = 6
		local var_46_510 = 10
		local var_46_511 = 2.3

		for iter_46_26 = 1, var_46_510 do
			local var_46_512 = (iter_46_26 - 0.5) / var_46_510
			local var_46_513 = var_46_509 * var_46_512^1.05
			local var_46_514 = var_46_508 * math.exp(-var_46_512 * var_46_511) * 0.7

			love.graphics.setColor(var_46_495[1], var_46_495[2], var_46_495[3], var_46_514)
			love.graphics.setLineWidth(2 + var_46_513 * 1.2)
			love.graphics.line(var_46_499, var_46_500, var_46_504, var_46_505)
		end

		love.graphics.setBlendMode(var_46_506 or "alpha", var_46_507 or "alphamultiply")
		love.graphics.setColor(var_46_495[1], var_46_495[2], var_46_495[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_499, var_46_500, var_46_504, var_46_505)
		love.graphics.setLineWidth(1)
	end

	if (var_46_71 or var_46_76.isDisappearing) and var_46_76.unlockLineProgress > 0 then
		local var_46_515 = {
			1,
			1,
			1,
			1
		}
		local var_46_516 = var_0_86.shoppin
		local var_46_517 = var_46_516 and var_46_516.maxed or false
		local var_46_518 = var_46_516 and var_46_71 and var_0_90("shoppin") and arg_46_1 >= var_46_516.cost

		if var_46_517 then
			var_46_515 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_518 then
			var_46_515 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_515 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_519 = var_46_40.shopreroll.x
		local var_46_520 = var_46_40.shopreroll.y
		local var_46_521 = var_46_40.shoppin.x
		local var_46_522 = var_46_40.shoppin.y
		local var_46_523 = var_46_76.unlockLineProgress
		local var_46_524 = var_46_519 + (var_46_521 - var_46_519) * var_46_523
		local var_46_525 = var_46_520 + (var_46_522 - var_46_520) * var_46_523
		local var_46_526, var_46_527 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_528 = 0.18
		local var_46_529 = 6
		local var_46_530 = 10
		local var_46_531 = 2.3

		for iter_46_27 = 1, var_46_530 do
			local var_46_532 = (iter_46_27 - 0.5) / var_46_530
			local var_46_533 = var_46_529 * var_46_532^1.05
			local var_46_534 = var_46_528 * math.exp(-var_46_532 * var_46_531) * 0.7

			love.graphics.setColor(var_46_515[1], var_46_515[2], var_46_515[3], var_46_534)
			love.graphics.setLineWidth(2 + var_46_533 * 1.2)
			love.graphics.line(var_46_519, var_46_520, var_46_524, var_46_525)
		end

		love.graphics.setBlendMode(var_46_526 or "alpha", var_46_527 or "alphamultiply")
		love.graphics.setColor(var_46_515[1], var_46_515[2], var_46_515[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_519, var_46_520, var_46_524, var_46_525)
		love.graphics.setLineWidth(1)
	end

	if (var_46_71 or var_46_75.isDisappearing) and var_46_75.unlockLineProgress > 0 then
		local var_46_535 = {
			1,
			1,
			1,
			1
		}
		local var_46_536 = var_0_86.itemresearch
		local var_46_537 = var_46_536 and var_46_536.maxed or false
		local var_46_538 = var_46_536 and var_46_71 and var_0_90("itemresearch") and arg_46_1 >= var_46_536.cost

		if var_46_537 then
			var_46_535 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_538 then
			var_46_535 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_535 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_539 = var_46_40.shopreroll.x
		local var_46_540 = var_46_40.shopreroll.y
		local var_46_541 = var_46_40.itemresearch.x
		local var_46_542 = var_46_40.itemresearch.y
		local var_46_543 = var_46_75.unlockLineProgress
		local var_46_544 = var_46_539 + (var_46_541 - var_46_539) * var_46_543
		local var_46_545 = var_46_540 + (var_46_542 - var_46_540) * var_46_543
		local var_46_546, var_46_547 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_548 = 0.18
		local var_46_549 = 6
		local var_46_550 = 10
		local var_46_551 = 2.3

		for iter_46_28 = 1, var_46_550 do
			local var_46_552 = (iter_46_28 - 0.5) / var_46_550
			local var_46_553 = var_46_549 * var_46_552^1.05
			local var_46_554 = var_46_548 * math.exp(-var_46_552 * var_46_551) * 0.7

			love.graphics.setColor(var_46_535[1], var_46_535[2], var_46_535[3], var_46_554)
			love.graphics.setLineWidth(2 + var_46_553 * 1.2)
			love.graphics.line(var_46_539, var_46_540, var_46_544, var_46_545)
		end

		love.graphics.setBlendMode(var_46_546 or "alpha", var_46_547 or "alphamultiply")
		love.graphics.setColor(var_46_535[1], var_46_535[2], var_46_535[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_539, var_46_540, var_46_544, var_46_545)
		love.graphics.setLineWidth(1)
	end

	if (var_46_71 or var_46_70.isDisappearing) and var_46_70.unlockLineProgress > 0 then
		local var_46_555 = {
			1,
			1,
			1,
			1
		}
		local var_46_556 = var_0_86.iteminventory
		local var_46_557 = var_46_556 and var_46_556.maxed or false
		local var_46_558 = var_46_556 and var_46_71 and arg_46_1 >= var_46_556.cost

		if var_46_557 then
			var_46_555 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_558 then
			var_46_555 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_555 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_559 = var_46_40.shopreroll.x
		local var_46_560 = var_46_40.shopreroll.y
		local var_46_561 = var_46_40.iteminventory.x
		local var_46_562 = var_46_40.iteminventory.y
		local var_46_563 = var_46_70.unlockLineProgress
		local var_46_564 = var_46_559 + (var_46_561 - var_46_559) * var_46_563
		local var_46_565 = var_46_560 + (var_46_562 - var_46_560) * var_46_563
		local var_46_566, var_46_567 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_568 = 0.18
		local var_46_569 = 6
		local var_46_570 = 10
		local var_46_571 = 2.3

		for iter_46_29 = 1, var_46_570 do
			local var_46_572 = (iter_46_29 - 0.5) / var_46_570
			local var_46_573 = var_46_569 * var_46_572^1.05
			local var_46_574 = var_46_568 * math.exp(-var_46_572 * var_46_571) * 0.7

			love.graphics.setColor(var_46_555[1], var_46_555[2], var_46_555[3], var_46_574)
			love.graphics.setLineWidth(2 + var_46_573 * 1.2)
			love.graphics.line(var_46_559, var_46_560, var_46_564, var_46_565)
		end

		love.graphics.setBlendMode(var_46_566 or "alpha", var_46_567 or "alphamultiply")
		love.graphics.setColor(var_46_555[1], var_46_555[2], var_46_555[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_559, var_46_560, var_46_564, var_46_565)
		love.graphics.setLineWidth(1)
	end

	if (var_46_73 or var_46_72.isDisappearing) and var_46_72.unlockLineProgress > 0 then
		local var_46_575 = {
			1,
			1,
			1,
			1
		}
		local var_46_576 = var_0_86.itemrefund
		local var_46_577 = var_46_576 and var_46_576.maxed or false
		local var_46_578 = var_46_576 and var_46_73 and arg_46_1 >= var_46_576.cost

		if var_46_577 then
			var_46_575 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_578 then
			var_46_575 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_575 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_579 = var_46_40.iteminventory.x
		local var_46_580 = var_46_40.iteminventory.y
		local var_46_581 = var_46_40.itemrefund.x
		local var_46_582 = var_46_40.itemrefund.y
		local var_46_583 = var_46_72.unlockLineProgress
		local var_46_584 = var_46_579 + (var_46_581 - var_46_579) * var_46_583
		local var_46_585 = var_46_580 + (var_46_582 - var_46_580) * var_46_583
		local var_46_586, var_46_587 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_588 = 0.18
		local var_46_589 = 6
		local var_46_590 = 10
		local var_46_591 = 2.3

		for iter_46_30 = 1, var_46_590 do
			local var_46_592 = (iter_46_30 - 0.5) / var_46_590
			local var_46_593 = var_46_589 * var_46_592^1.05
			local var_46_594 = var_46_588 * math.exp(-var_46_592 * var_46_591) * 0.7

			love.graphics.setColor(var_46_575[1], var_46_575[2], var_46_575[3], var_46_594)
			love.graphics.setLineWidth(2 + var_46_593 * 1.2)
			love.graphics.line(var_46_579, var_46_580, var_46_584, var_46_585)
		end

		love.graphics.setBlendMode(var_46_586 or "alpha", var_46_587 or "alphamultiply")
		love.graphics.setColor(var_46_575[1], var_46_575[2], var_46_575[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_579, var_46_580, var_46_584, var_46_585)
		love.graphics.setLineWidth(1)
	end

	if (var_46_73 or var_46_74.isDisappearing) and var_46_74.unlockLineProgress > 0 then
		local var_46_595 = {
			1,
			1,
			1,
			1
		}
		local var_46_596 = var_0_86.iteminventory2
		local var_46_597 = var_46_596 and var_46_596.maxed or false
		local var_46_598 = var_46_596 and var_46_73 and arg_46_1 >= var_46_596.cost

		if var_46_597 then
			var_46_595 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_598 then
			var_46_595 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_595 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_599 = var_46_40.iteminventory.x
		local var_46_600 = var_46_40.iteminventory.y
		local var_46_601 = var_46_40.iteminventory2.x
		local var_46_602 = var_46_40.iteminventory2.y
		local var_46_603 = var_46_74.unlockLineProgress
		local var_46_604 = var_46_599 + (var_46_601 - var_46_599) * var_46_603
		local var_46_605 = var_46_600 + (var_46_602 - var_46_600) * var_46_603
		local var_46_606, var_46_607 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_608 = 0.18
		local var_46_609 = 6
		local var_46_610 = 10
		local var_46_611 = 2.3

		for iter_46_31 = 1, var_46_610 do
			local var_46_612 = (iter_46_31 - 0.5) / var_46_610
			local var_46_613 = var_46_609 * var_46_612^1.05
			local var_46_614 = var_46_608 * math.exp(-var_46_612 * var_46_611) * 0.7

			love.graphics.setColor(var_46_595[1], var_46_595[2], var_46_595[3], var_46_614)
			love.graphics.setLineWidth(2 + var_46_613 * 1.2)
			love.graphics.line(var_46_599, var_46_600, var_46_604, var_46_605)
		end

		love.graphics.setBlendMode(var_46_606 or "alpha", var_46_607 or "alphamultiply")
		love.graphics.setColor(var_46_595[1], var_46_595[2], var_46_595[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_599, var_46_600, var_46_604, var_46_605)
		love.graphics.setLineWidth(1)
	end

	if (var_46_63 or var_46_62.isDisappearing) and var_46_62.unlockLineProgress > 0 then
		local var_46_615 = {
			1,
			1,
			1,
			1
		}
		local var_46_616 = var_0_86.slotadvanced2
		local var_46_617 = var_46_616 and var_46_616.maxed or false
		local var_46_618 = var_46_616 and var_46_63 and arg_46_1 >= var_46_616.cost

		if var_46_617 then
			var_46_615 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_618 then
			var_46_615 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_615 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_619 = var_46_40.slotadvanced.x
		local var_46_620 = var_46_40.slotadvanced.y
		local var_46_621 = var_46_40.slotadvanced2.x
		local var_46_622 = var_46_40.slotadvanced2.y
		local var_46_623 = var_46_62.unlockLineProgress
		local var_46_624 = var_46_619 + (var_46_621 - var_46_619) * var_46_623
		local var_46_625 = var_46_620 + (var_46_622 - var_46_620) * var_46_623
		local var_46_626, var_46_627 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_628 = 0.18
		local var_46_629 = 6
		local var_46_630 = 10
		local var_46_631 = 2.3

		for iter_46_32 = 1, var_46_630 do
			local var_46_632 = (iter_46_32 - 0.5) / var_46_630
			local var_46_633 = var_46_629 * var_46_632^1.05
			local var_46_634 = var_46_628 * math.exp(-var_46_632 * var_46_631) * 0.7

			love.graphics.setColor(var_46_615[1], var_46_615[2], var_46_615[3], var_46_634)
			love.graphics.setLineWidth(2 + var_46_633 * 1.2)
			love.graphics.line(var_46_619, var_46_620, var_46_624, var_46_625)
		end

		love.graphics.setBlendMode(var_46_626 or "alpha", var_46_627 or "alphamultiply")
		love.graphics.setColor(var_46_615[1], var_46_615[2], var_46_615[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_619, var_46_620, var_46_624, var_46_625)
		love.graphics.setLineWidth(1)
	end

	if (var_46_78 or var_46_77.isDisappearing) and var_46_77.unlockLineProgress > 0 then
		local var_46_635 = {
			1,
			1,
			1,
			1
		}
		local var_46_636 = var_0_86.slotadvanced3
		local var_46_637 = var_46_636 and var_46_636.maxed or false
		local var_46_638 = var_46_636 and var_46_78 and arg_46_1 >= var_46_636.cost

		if var_46_637 then
			var_46_635 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_638 then
			var_46_635 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_635 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_639 = var_46_40.slotadvanced2.x
		local var_46_640 = var_46_40.slotadvanced2.y
		local var_46_641 = var_46_40.slotadvanced3.x
		local var_46_642 = var_46_40.slotadvanced3.y
		local var_46_643 = var_46_77.unlockLineProgress
		local var_46_644 = var_46_639 + (var_46_641 - var_46_639) * var_46_643
		local var_46_645 = var_46_640 + (var_46_642 - var_46_640) * var_46_643
		local var_46_646, var_46_647 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_648 = 0.18
		local var_46_649 = 6
		local var_46_650 = 10
		local var_46_651 = 2.3

		for iter_46_33 = 1, var_46_650 do
			local var_46_652 = (iter_46_33 - 0.5) / var_46_650
			local var_46_653 = var_46_649 * var_46_652^1.05
			local var_46_654 = var_46_648 * math.exp(-var_46_652 * var_46_651) * 0.7

			love.graphics.setColor(var_46_635[1], var_46_635[2], var_46_635[3], var_46_654)
			love.graphics.setLineWidth(2 + var_46_653 * 1.2)
			love.graphics.line(var_46_639, var_46_640, var_46_644, var_46_645)
		end

		love.graphics.setBlendMode(var_46_646 or "alpha", var_46_647 or "alphamultiply")
		love.graphics.setColor(var_46_635[1], var_46_635[2], var_46_635[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_639, var_46_640, var_46_644, var_46_645)
		love.graphics.setLineWidth(1)
	end

	if (var_46_80 or var_46_79.isDisappearing) and var_46_79.unlockLineProgress > 0 then
		local var_46_655 = {
			1,
			1,
			1,
			1
		}
		local var_46_656 = var_0_86.slotrare
		local var_46_657 = var_46_656 and var_46_656.maxed or false
		local var_46_658 = var_46_656 and var_46_80 and var_0_90("slotrare") and arg_46_1 >= var_46_656.cost

		if var_46_657 then
			var_46_655 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_658 then
			var_46_655 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_655 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_659 = var_46_40.slotadvanced3.x
		local var_46_660 = var_46_40.slotadvanced3.y
		local var_46_661 = var_46_40.slotrare.x
		local var_46_662 = var_46_40.slotrare.y
		local var_46_663 = var_46_79.unlockLineProgress
		local var_46_664 = var_46_659 + (var_46_661 - var_46_659) * var_46_663
		local var_46_665 = var_46_660 + (var_46_662 - var_46_660) * var_46_663
		local var_46_666, var_46_667 = love.graphics.getBlendMode()

		love.graphics.setBlendMode("add", "alphamultiply")

		local var_46_668 = 0.18
		local var_46_669 = 6
		local var_46_670 = 10
		local var_46_671 = 2.3

		for iter_46_34 = 1, var_46_670 do
			local var_46_672 = (iter_46_34 - 0.5) / var_46_670
			local var_46_673 = var_46_669 * var_46_672^1.05
			local var_46_674 = var_46_668 * math.exp(-var_46_672 * var_46_671) * 0.7

			love.graphics.setColor(var_46_655[1], var_46_655[2], var_46_655[3], var_46_674)
			love.graphics.setLineWidth(2 + var_46_673 * 1.2)
			love.graphics.line(var_46_659, var_46_660, var_46_664, var_46_665)
		end

		love.graphics.setBlendMode(var_46_666 or "alpha", var_46_667 or "alphamultiply")
		love.graphics.setColor(var_46_655[1], var_46_655[2], var_46_655[3], 1)
		love.graphics.setLineWidth(2)
		love.graphics.line(var_46_659, var_46_660, var_46_664, var_46_665)
		love.graphics.setLineWidth(1)
	end

	local function var_46_675(arg_47_0, arg_47_1, arg_47_2, arg_47_3)
		local var_47_0 = var_0_66(arg_47_0)
		local var_47_1 = var_0_86[arg_47_0]
		local var_47_2 = var_47_1.maxed or false
		local var_47_3 = var_0_90(arg_47_0) and arg_46_1 >= var_47_1.cost
		local var_47_4 = {
			1,
			1,
			1,
			1
		}

		if var_47_2 then
			var_47_4 = {
				var_0_79("#6FAACC")
			}
		elseif var_47_3 then
			var_47_4 = {
				var_0_79("#5FAF6F")
			}
		else
			var_47_4 = {
				var_0_79("#A84F5A")
			}
		end

		local var_47_5, var_47_6 = arg_47_1:getDimensions()
		local var_47_7 = var_47_0.scaleX or 1
		local var_47_8 = var_47_0.scaleY or 1
		local var_47_9 = arg_47_2

		if var_47_0.shakeT > 0 then
			var_47_9 = var_47_9 + var_47_0.shakeX
		end

		local var_47_10 = math.max(var_47_7, var_47_8)
		local var_47_11 = var_47_9 - var_47_5 * var_47_10 / 2
		local var_47_12 = arg_47_3 - var_47_6 * var_47_10 / 2

		var_0_72[arg_47_0] = {
			x = var_47_11,
			y = var_47_12,
			w = var_47_5 * var_47_10,
			h = var_47_6 * var_47_10
		}

		if (var_47_3 or var_47_2) and var_0_10 and var_0_11 then
			love.graphics.setShader(var_0_10)

			local var_47_13 = 0.8 + 0.2 * math.sin(love.timer.getTime() * 3)

			var_0_10:send("glowColor", {
				var_47_4[1],
				var_47_4[2],
				var_47_4[3],
				var_47_13
			})

			local var_47_14 = math.max(var_47_5, var_47_6) * 2 * var_47_7

			love.graphics.draw(var_0_11, var_47_9, arg_47_3, 0, var_47_14, var_47_14, 0.5, 0.5)
			love.graphics.setShader()
		end

		if var_47_3 and not var_47_2 then
			local var_47_15 = love.timer.getTime()
			local var_47_16 = 1 + 0.04 * math.sin(var_47_15 * 3.5)

			var_47_7 = var_47_7 * var_47_16
			var_47_8 = var_47_8 * var_47_16

			local var_47_17 = 0.05 + 0.05 * math.sin(var_47_15 * 3.5)

			if var_0_9 then
				love.graphics.setShader(var_0_9)
				love.graphics.setColor(1, 1, 1, var_47_17)
				love.graphics.draw(arg_47_1, var_47_9, arg_47_3, 0, var_47_7, var_47_8, var_47_5 / 2, var_47_6 / 2)
				love.graphics.setShader()
			end
		end

		if var_47_3 and not var_47_2 then
			if love.math.random() < 0.05 then
				table.insert(var_47_0.energyParticles, {
					type = "sparkle",
					life = 0.6,
					x = (love.math.random() - 0.5) * var_47_5 * var_47_7 * 1.2,
					y = (love.math.random() - 0.5) * var_47_6 * var_47_8 * 1.2,
					size = love.math.random(1, 3)
				})
			end

			local var_47_18 = love.timer.getDelta()

			for iter_47_0 = #var_47_0.energyParticles, 1, -1 do
				local var_47_19 = var_47_0.energyParticles[iter_47_0]

				if var_47_19.type == "sparkle" then
					var_47_19.life = var_47_19.life - var_47_18

					if var_47_19.life <= 0 then
						table.remove(var_47_0.energyParticles, iter_47_0)
					else
						local var_47_20 = math.sin(var_47_19.life / 0.6 * math.pi)

						love.graphics.setColor(1, 1, 1, var_47_20)

						local var_47_21 = math.floor(var_47_19.size)

						if var_47_21 < 2 then
							love.graphics.rectangle("fill", math.floor(var_47_9 + var_47_19.x), math.floor(arg_47_3 + var_47_19.y), 1, 1)
						else
							local var_47_22 = math.floor(var_47_9 + var_47_19.x)
							local var_47_23 = math.floor(arg_47_3 + var_47_19.y)
							local var_47_24 = math.floor(var_47_21 / 2)

							love.graphics.rectangle("fill", var_47_22 - var_47_24, var_47_23, var_47_21, 1)
							love.graphics.rectangle("fill", var_47_22, var_47_23 - var_47_24, 1, var_47_21)
						end
					end
				end
			end
		end

		if var_0_9 then
			love.graphics.setShader(var_0_9)

			local var_47_25 = {
				var_47_4[1],
				var_47_4[2],
				var_47_4[3],
				var_47_4[4]
			}

			if var_47_3 and not var_47_2 then
				local var_47_26 = 0.5 + 0.5 * math.sin(var_47_0.pulseT * 2)

				for iter_47_1 = 1, 3 do
					var_47_25[iter_47_1] = var_47_25[iter_47_1] + (1 - var_47_25[iter_47_1]) * var_47_26 * 0.5
				end
			end

			love.graphics.setColor(var_47_25)

			local var_47_27 = 0.5
			local var_47_28 = 1.5

			for iter_47_2 = -var_47_28, var_47_28, var_47_27 do
				for iter_47_3 = -var_47_28, var_47_28, var_47_27 do
					if iter_47_2 ~= 0 or iter_47_3 ~= 0 then
						love.graphics.draw(arg_47_1, var_47_9 + iter_47_2 * var_47_7, arg_47_3 + iter_47_3 * var_47_8, 0, var_47_7, var_47_8, var_47_5 / 2, var_47_6 / 2)
					end
				end
			end

			love.graphics.setShader()
		end

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_47_1, var_47_9, arg_47_3, 0, var_47_7, var_47_8, var_47_5 / 2, var_47_6 / 2)

		if var_0_63 and var_47_1.nodeId then
			local var_47_29 = var_0_16 or love.graphics.getFont()
			local var_47_30 = love.graphics.getFont()

			love.graphics.setFont(var_47_29)

			local var_47_31 = tostring(var_47_1.nodeId)
			local var_47_32 = 0.75
			local var_47_33 = var_47_29:getWidth(var_47_31) * var_47_32
			local var_47_34 = math.floor(var_47_9 - var_47_33 / 2)
			local var_47_35 = math.floor(arg_47_3 - var_47_6 * var_47_8 / 2 - 12)

			love.graphics.setColor(0, 0, 0, 0.85)
			love.graphics.print(var_47_31, var_47_34 + 1, var_47_35 + 1, 0, var_47_32, var_47_32)
			love.graphics.setColor(1, 0.92, 0.35, 1)
			love.graphics.print(var_47_31, var_47_34, var_47_35, 0, var_47_32, var_47_32)
			love.graphics.setFont(var_47_30)
		end

		if var_47_0.flashT > 0 and var_0_9 then
			love.graphics.setShader(var_0_9)
			love.graphics.setColor(1, 1, 1, var_47_0.flashT / 0.2)
			love.graphics.draw(arg_47_1, var_47_9, arg_47_3, 0, var_47_7, var_47_8, var_47_5 / 2, var_47_6 / 2)
			love.graphics.setShader()
		end

		if var_47_3 or var_47_2 then
			local var_47_36 = 0.6

			if var_47_36 > var_47_0.shineT then
				local var_47_37 = var_47_0.shineT / var_47_36

				love.graphics.stencil(function()
					love.graphics.draw(arg_47_1, var_47_9, arg_47_3, 0, var_47_7, var_47_8, var_47_5 / 2, var_47_6 / 2)
				end, "replace", 1)
				love.graphics.setStencilTest("greater", 0)
				love.graphics.setColor(1, 1, 1, 0.6 * (1 - math.abs(var_47_37 - 0.5) * 2))

				local var_47_38 = 20 * var_47_7
				local var_47_39 = var_47_9 - var_47_5 * var_47_7 / 2
				local var_47_40 = var_47_5 * var_47_7
				local var_47_41 = var_47_39 - var_47_38
				local var_47_42 = var_47_41 + (var_47_39 + var_47_40 + var_47_38 - var_47_41) * var_47_37

				love.graphics.push()
				love.graphics.translate(var_47_42, arg_47_3)
				love.graphics.rotate(-0.5)

				local var_47_43 = var_47_6 * var_47_8 * 4

				love.graphics.rectangle("fill", -var_47_38 / 2, -var_47_43 / 2, var_47_38, var_47_43)
				love.graphics.pop()
				love.graphics.setStencilTest()
			end
		end

		if var_0_68 == arg_47_0 then
			local var_47_44 = 2 * var_47_7
			local var_47_45 = 6 * var_47_7
			local var_47_46 = 2
			local var_47_47 = var_47_5 * var_47_7
			local var_47_48 = var_47_6 * var_47_8
			local var_47_49 = var_47_47 / 2 + var_47_44
			local var_47_50 = var_47_48 / 2 + var_47_44
			local var_47_51 = var_47_9 - var_47_49
			local var_47_52 = arg_47_3 - var_47_50
			local var_47_53 = var_47_9 + var_47_49
			local var_47_54 = arg_47_3 + var_47_50

			love.graphics.setColor(0, 0, 0, 1)

			local var_47_55 = var_47_46 + 2
			local var_47_56 = var_47_45 + 2
			local var_47_57 = var_47_51 - 1
			local var_47_58 = var_47_52 - 1
			local var_47_59 = var_47_53 + 1
			local var_47_60 = var_47_54 + 1

			love.graphics.rectangle("fill", var_47_57 + 1, var_47_58, var_47_56 - 1, var_47_55)
			love.graphics.rectangle("fill", var_47_57, var_47_58 + 1, var_47_55, var_47_56 - 1)
			love.graphics.rectangle("fill", var_47_59 - var_47_56, var_47_58, var_47_56 - 1, var_47_55)
			love.graphics.rectangle("fill", var_47_59 - var_47_55, var_47_58 + 1, var_47_55, var_47_56 - 1)
			love.graphics.rectangle("fill", var_47_57 + 1, var_47_60 - var_47_55, var_47_56 - 1, var_47_55)
			love.graphics.rectangle("fill", var_47_57, var_47_60 - var_47_56, var_47_55, var_47_56 - 1)
			love.graphics.rectangle("fill", var_47_59 - var_47_56, var_47_60 - var_47_55, var_47_56 - 1, var_47_55)
			love.graphics.rectangle("fill", var_47_59 - var_47_55, var_47_60 - var_47_56, var_47_55, var_47_56 - 1)
			love.graphics.setColor(1, 1, 1, 1)

			local var_47_61 = var_47_51
			local var_47_62 = var_47_52
			local var_47_63 = var_47_53
			local var_47_64 = var_47_54

			love.graphics.rectangle("fill", var_47_61 + 1, var_47_62, var_47_45 - 1, var_47_46)
			love.graphics.rectangle("fill", var_47_61, var_47_62 + 1, var_47_46, var_47_45 - 1)
			love.graphics.rectangle("fill", var_47_63 - var_47_45, var_47_62, var_47_45 - 1, var_47_46)
			love.graphics.rectangle("fill", var_47_63 - var_47_46, var_47_62 + 1, var_47_46, var_47_45 - 1)
			love.graphics.rectangle("fill", var_47_61 + 1, var_47_64 - var_47_46, var_47_45 - 1, var_47_46)
			love.graphics.rectangle("fill", var_47_61, var_47_64 - var_47_45, var_47_46, var_47_45 - 1)
			love.graphics.rectangle("fill", var_47_63 - var_47_45, var_47_64 - var_47_46, var_47_45 - 1, var_47_46)
			love.graphics.rectangle("fill", var_47_63 - var_47_46, var_47_64 - var_47_45, var_47_46, var_47_45 - 1)
		end
	end

	local var_46_676 = var_0_66("maxhp")

	if var_0_7.maxhp and (var_46_41 and var_46_676.revealed or var_46_676.isDisappearing) then
		var_46_675("maxhp", var_0_7.maxhp, var_46_40.maxhp.x, var_46_40.maxhp.y)
	end

	if var_0_7.noviceshield and (var_46_42 and var_46_43.revealed or var_46_43.isDisappearing) then
		var_46_675("noviceshield", var_0_7.noviceshield, var_46_40.noviceshield.x, var_46_40.noviceshield.y)
	end

	if var_0_7.startgold and (var_46_42 and var_46_44.revealed or var_46_44.isDisappearing) then
		var_46_675("startgold", var_0_7.startgold, var_46_40.startgold.x, var_46_40.startgold.y)
	end

	if var_0_7.comebackspin and (var_46_46 and var_46_45.revealed or var_46_45.isDisappearing) then
		var_46_675("comebackspin", var_0_7.comebackspin, var_46_40.comebackspin.x, var_46_40.comebackspin.y)
	end

	if var_0_7.gateheal and (var_46_48 and var_46_47.revealed or var_46_47.isDisappearing) then
		var_46_675("gateheal", var_0_7.gateheal, var_46_40.gateheal.x, var_46_40.gateheal.y)
	end

	if var_0_7.comebackgold and (var_46_50 and var_46_49.revealed or var_46_49.isDisappearing) then
		var_46_675("comebackgold", var_0_7.comebackgold, var_46_40.comebackgold.x, var_46_40.comebackgold.y)
	end

	if var_0_7.maxhp2 and (var_46_52 and var_46_51.revealed or var_46_51.isDisappearing) then
		var_46_675("maxhp2", var_0_7.maxhp2, var_46_40.maxhp2.x, var_46_40.maxhp2.y)
	end

	if var_0_7.startgold2 and (var_46_50 and var_46_53.revealed or var_46_53.isDisappearing) then
		var_46_675("startgold2", var_0_7.startgold2, var_46_40.startgold2.x, var_46_40.startgold2.y)
	end

	if var_0_7.slotodds then
		var_46_675("slotodds", var_0_7.slotodds, var_46_40.slotodds.x, var_46_40.slotodds.y)
	end

	if var_0_7.slotnudge and (var_46_54 and var_46_309.revealed or var_46_309.isDisappearing) then
		var_46_675("slotnudge", var_0_7.slotnudge, var_46_40.slotnudge.x, var_46_40.slotnudge.y)
	end

	if var_0_7.interest and (var_46_54 and var_46_59.revealed or var_46_59.isDisappearing) then
		var_46_675("interest", var_0_7.interest, var_46_40.interest.x, var_46_40.interest.y)
	end

	if var_0_7.slotadvanced and (var_46_414 and var_46_413.revealed or var_46_413.isDisappearing) then
		var_46_675("slotadvanced", var_0_7.slotadvanced, var_46_40.slotadvanced.x, var_46_40.slotadvanced.y)
	end

	if var_0_7.corereroll and (var_46_63 and var_46_64.revealed or var_46_64.isDisappearing) then
		var_46_675("corereroll", var_0_7.corereroll, var_46_40.corereroll.x, var_46_40.corereroll.y)
	end

	if var_0_7.firstcorespin and (var_46_66 and var_46_65.revealed or var_46_65.isDisappearing) then
		var_46_675("firstcorespin", var_0_7.firstcorespin, var_46_40.firstcorespin.x, var_46_40.firstcorespin.y)
	end

	if var_0_7.firstcoreuncommon and (var_46_68 and var_46_67.revealed or var_46_67.isDisappearing) then
		var_46_675("firstcoreuncommon", var_0_7.firstcoreuncommon, var_46_40.firstcoreuncommon.x, var_46_40.firstcoreuncommon.y)
	end

	if var_0_7.shopreroll and (var_46_63 and var_46_69.revealed or var_46_69.isDisappearing) then
		var_46_675("shopreroll", var_0_7.shopreroll, var_46_40.shopreroll.x, var_46_40.shopreroll.y)
	end

	if var_0_7.iteminventory and (var_46_71 and var_46_70.revealed or var_46_70.isDisappearing) then
		var_46_675("iteminventory", var_0_7.iteminventory, var_46_40.iteminventory.x, var_46_40.iteminventory.y)
	end

	if var_0_7.itemrefund and (var_46_73 and var_46_72.revealed or var_46_72.isDisappearing) then
		var_46_675("itemrefund", var_0_7.itemrefund, var_46_40.itemrefund.x, var_46_40.itemrefund.y)
	end

	if var_0_7.iteminventory2 and (var_46_73 and var_46_74.revealed or var_46_74.isDisappearing) then
		var_46_675("iteminventory2", var_0_7.iteminventory2, var_46_40.iteminventory2.x, var_46_40.iteminventory2.y)
	end

	if var_0_7.itemresearch and (var_46_71 and var_46_75.revealed or var_46_75.isDisappearing) then
		var_46_675("itemresearch", var_0_7.itemresearch, var_46_40.itemresearch.x, var_46_40.itemresearch.y)
	end

	if var_0_7.shoppin and (var_46_71 and var_46_76.revealed or var_46_76.isDisappearing) then
		var_46_675("shoppin", var_0_7.shoppin, var_46_40.shoppin.x, var_46_40.shoppin.y)
	end

	if var_0_7.slotadvanced2 and (var_46_63 and var_46_62.revealed or var_46_62.isDisappearing) then
		var_46_675("slotadvanced2", var_0_7.slotadvanced2, var_46_40.slotadvanced2.x, var_46_40.slotadvanced2.y)
	end

	if var_0_7.slotadvanced3 and (var_46_78 and var_46_77.revealed or var_46_77.isDisappearing) then
		var_46_675("slotadvanced3", var_0_7.slotadvanced3, var_46_40.slotadvanced3.x, var_46_40.slotadvanced3.y)
	end

	if var_0_7.slotrare and (var_46_80 and var_46_79.revealed or var_46_79.isDisappearing) then
		var_46_675("slotrare", var_0_7.slotrare, var_46_40.slotrare.x, var_46_40.slotrare.y)
	end

	if var_0_7.maxunit and (var_46_41 and var_46_245.revealed or var_46_245.isDisappearing) then
		var_46_675("maxunit", var_0_7.maxunit, var_46_40.maxunit.x, var_46_40.maxunit.y)
	end

	if var_0_7.maxunit2 and (var_46_54 and var_46_55.revealed or var_46_55.isDisappearing) then
		var_46_675("maxunit2", var_0_7.maxunit2, var_46_40.maxunit2.x, var_46_40.maxunit2.y)
	end

	if var_0_7.maxunit3 and (var_46_57 and var_46_56.revealed or var_46_56.isDisappearing) then
		var_46_675("maxunit3", var_0_7.maxunit3, var_46_40.maxunit3.x, var_46_40.maxunit3.y)
	end

	love.graphics.pop()
	love.graphics.setColor(0, 0, 0, 0.4)

	local var_46_677 = 100

	for iter_46_35 = 0, var_46_677 do
		local var_46_678 = 0.6 * (1 - iter_46_35 / var_46_677)

		love.graphics.setColor(0, 0, 0, var_46_678)
		love.graphics.rectangle("fill", 0, iter_46_35, var_46_0, 1)
		love.graphics.rectangle("fill", 0, var_46_1 - 1 - iter_46_35, var_46_0, 1)
		love.graphics.rectangle("fill", iter_46_35, 0, 1, var_46_1)
		love.graphics.rectangle("fill", var_46_0 - 1 - iter_46_35, 0, 1, var_46_1)
	end

	if var_0_12 then
		local var_46_679, var_46_680 = var_0_12:getDimensions()
		local var_46_681 = 1.5
		local var_46_682 = 20
		local var_46_683 = 10
		local var_46_684 = tostring(arg_46_1 or 0)
		local var_46_685 = var_0_14 or love.graphics.getFont()

		love.graphics.setFont(var_46_685)

		local var_46_686 = var_0_36(var_46_685)
		local var_46_687 = 1.1
		local var_46_688 = var_0_97(var_46_684, var_46_685, var_46_687)
		local var_46_689 = var_46_686:getHeight() * var_46_687

		var_0_6.track(var_0_33, arg_46_1, arg_46_0)

		local var_46_690, var_46_691, var_46_692 = var_0_6.getPunch(var_0_33)
		local var_46_693 = var_46_687 * var_46_690
		local var_46_694 = var_46_687 * var_46_691
		local var_46_695 = var_46_679 * var_46_681 + var_46_683 + var_46_688
		local var_46_696 = var_46_0 - var_46_682 - var_46_695
		local var_46_697 = var_46_682

		if not arg_46_2 then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_0_12, math.floor(var_46_696), math.floor(var_46_697), 0, var_46_681, var_46_681)

			local var_46_698 = var_46_697 + (var_46_680 * var_46_681 - var_46_689) / 2
			local var_46_699 = var_46_696 + var_46_679 * var_46_681 + var_46_683
			local var_46_700 = var_0_97(var_46_684, var_46_685, var_46_693)
			local var_46_701 = var_46_686:getHeight() * var_46_694
			local var_46_702 = var_46_699 + (var_46_688 - var_46_700) * 0.5 + var_46_692
			local var_46_703 = var_46_698 + (var_46_689 - var_46_701) * 0.5

			love.graphics.print(var_46_684, math.floor(var_46_702), math.floor(var_46_703), 0, var_46_693, var_46_694)
		end

		if var_0_63 then
			local var_46_704 = 20
			local var_46_705 = 5
			local var_46_706 = var_46_697 + (var_46_680 * var_46_681 - var_46_704) / 2
			local var_46_707 = var_46_696 - var_46_704 - var_46_705

			love.graphics.setColor(0.2, 0.8, 0.2, 1)
			love.graphics.rectangle("fill", var_46_707, var_46_706, var_46_704, var_46_704)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.print("+", var_46_707 + 5, var_46_706 + 2)

			var_0_64.plus = {
				x = var_46_707,
				y = var_46_706,
				w = var_46_704,
				h = var_46_704
			}

			local var_46_708 = var_46_707 - var_46_704 - var_46_705

			love.graphics.setColor(0.8, 0.2, 0.2, 1)
			love.graphics.rectangle("fill", var_46_708, var_46_706, var_46_704, var_46_704)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.print("-", var_46_708 + 7, var_46_706 + 2)

			var_0_64.minus = {
				x = var_46_708,
				y = var_46_706,
				w = var_46_704,
				h = var_46_704
			}
		else
			var_0_64 = {}
		end
	end

	if var_0_68 and var_0_86[var_0_68] then
		local var_46_709 = var_0_86[var_0_68]
		local var_46_710 = var_46_709.maxed or false
		local var_46_711 = arg_46_1 >= var_46_709.cost
		local var_46_712 = var_0_90(var_0_68) and var_46_711
		local var_46_713 = {
			1,
			1,
			1,
			1
		}

		if var_46_710 then
			var_46_713 = {
				var_0_79("#6FAACC")
			}
		elseif var_46_712 then
			var_46_713 = {
				var_0_79("#5FAF6F")
			}
		else
			var_46_713 = {
				var_0_79("#A84F5A")
			}
		end

		local var_46_714 = var_46_713

		if not var_46_710 then
			var_46_714 = var_46_711 and {
				var_0_79("#5FAF6F")
			} or {
				var_0_79("#A84F5A")
			}
		end

		local var_46_715 = var_0_16 or font or arg_46_0 and arg_46_0.font or love.graphics.getFont()

		if not var_46_715 then
			return
		end

		local var_46_716 = var_0_36(var_46_715)
		local var_46_717 = var_46_715:getLineHeight()

		var_46_715:setLineHeight(1)
		love.graphics.setFont(var_46_715)

		local var_46_718 = 6
		local var_46_719 = 3
		local var_46_720 = 1
		local var_46_721 = 1
		local var_46_722 = 1.05
		local var_46_723 = arg_46_0 and arg_46_0.menuSettings and arg_46_0.menuSettings.language or "ko"
		local var_46_724 = var_0_3.getText(var_46_709.nameKey, var_46_723)
		local var_46_725 = var_0_3.getText(var_46_709.descKey, var_46_723)
		local var_46_726 = var_46_709.statKey and var_0_3.getText(var_46_709.statKey, var_46_723) or var_46_709.stat

		if var_46_710 then
			if var_0_68 == "slotadvanced" then
				var_46_726 = var_0_3.getGradeLabel("advanced", "Advanced", var_46_723) .. " 5%"
			elseif var_0_68 == "slotadvanced2" then
				var_46_726 = var_0_3.getGradeLabel("advanced", "Advanced", var_46_723) .. " 10%"
			elseif var_0_68 == "slotadvanced3" then
				var_46_726 = var_0_3.getGradeLabel("advanced", "Advanced", var_46_723) .. " 15%"
			elseif var_0_68 == "slotrare" then
				var_46_726 = var_0_3.getGradeLabel("rare", "Rare", var_46_723) .. " 2%"
			else
				local var_46_727 = tostring(var_46_726):find("{gold%.png}") ~= nil
				local var_46_728 = var_46_726:match("%->%s*(.+)$")

				if var_46_728 then
					var_46_726 = var_46_727 and "{gold.png} " .. var_46_728 or var_46_728
				end
			end
		end

		local var_46_729 = tostring(var_46_709.cost)

		if var_46_710 then
			var_46_729 = var_0_3.getText("upgrade_maxed", var_46_723)
		end

		local var_46_730 = 150
		local var_46_731 = var_0_97(var_46_724, var_46_715, var_46_721)

		var_46_715:setLineHeight(1.4)

		local var_46_732 = var_0_97(var_46_725, var_46_715, var_46_721)
		local var_46_733 = math.min(var_46_732, var_46_730)
		local var_46_734 = (math.max(var_46_730, var_46_731) - 5) / var_46_721
		local var_46_735 = var_0_101(var_46_725, var_46_715, var_46_734, var_46_721, var_46_722)
		local var_46_736 = #var_46_735 * var_46_716:getHeight() * var_46_715:getLineHeight() * var_46_721

		var_46_715:setLineHeight(1)

		local var_46_737 = var_0_97(var_46_726, var_46_715, var_46_721)

		if var_0_96(var_46_726) then
			local var_46_738, var_46_739 = var_46_726:match("^(.*%->%s*)(.*)$")

			if var_46_738 and var_46_739 then
				local var_46_740 = var_0_95(var_46_738, var_46_715, var_46_721, var_46_722)
				local var_46_741 = var_0_98(var_46_740, var_46_715, var_46_721, var_46_722)
				local var_46_742 = var_0_95(var_46_739, var_46_715, var_46_721, var_46_722)

				var_46_737 = var_46_741 + var_0_98(var_46_742, var_46_715, var_46_721, var_46_722)
			else
				local var_46_743 = var_0_95(var_46_726, var_46_715, var_46_721, var_46_722)

				var_46_737 = var_0_98(var_46_743, var_46_715, var_46_721, var_46_722)
			end
		end

		local var_46_744 = var_46_737

		if var_46_723 == "ja" then
			var_46_737 = var_46_737 + math.floor(18 * var_46_721 + 0.5)
		end

		local var_46_745 = 1
		local var_46_746 = 0
		local var_46_747 = 0

		if var_0_12 and not var_46_710 then
			var_46_746, var_46_747 = var_0_12:getDimensions()
		end

		local var_46_748 = 4
		local var_46_749 = 0

		if var_46_710 then
			var_46_749 = var_0_97(var_46_729, var_46_715, var_46_721)
		else
			var_46_749 = var_46_746 * var_46_745 + var_46_748 + var_0_97(var_46_729, var_46_715, var_46_721)
		end

		local var_46_750
		local var_46_751
		local var_46_752 = true
		local var_46_753 = 0
		local var_46_754 = 0
		local var_46_755 = var_46_723 == "zh" and 32 or 0
		local var_46_756 = 9 * var_46_721
		local var_46_757 = 4 * var_46_721
		local var_46_758 = var_0_68 ~= "slotrare" and var_0_68 ~= "itemresearch" and var_0_68 ~= "shoppin"

		if var_0_91(var_0_68) then
			var_46_750 = var_0_92(var_0_68, var_46_723)
			var_46_751 = var_0_93(var_0_68, var_46_723)
			var_46_752 = var_0_89(var_0_68)

			if var_46_750 then
				local var_46_759 = 0

				if var_46_751 then
					local var_46_760 = var_0_97(" ", var_46_715, var_46_721)

					for iter_46_36, iter_46_37 in ipairs(var_46_751) do
						var_46_759 = var_46_759 + var_0_97(iter_46_37.text, var_46_715, var_46_721)

						if iter_46_36 < #var_46_751 then
							var_46_759 = var_46_759 + var_46_760
						end
					end
				else
					var_46_759 = var_0_97(var_46_750, var_46_715, var_46_721)
				end

				var_46_754 = var_46_759

				if var_46_758 then
					var_46_754 = var_46_754 + var_46_756 + var_46_757
				end

				var_46_753 = var_46_754 + var_46_755 * 2
			end
		end

		local var_46_761 = math.max(var_46_731, var_46_733, var_46_737, var_46_749, var_46_753)
		local var_46_762 = math.max(var_46_730, (var_46_0 or 640) - 20 - var_46_718 * 2)

		if var_46_762 < var_46_761 then
			var_46_761 = var_46_762
		end

		local var_46_763 = var_46_716:getHeight() * var_46_721
		local var_46_764 = 3
		local var_46_765 = 2
		local var_46_766 = var_46_763 + 4
		local var_46_767 = 0
		local var_46_768 = var_46_750 and var_46_765 + var_46_766 + var_46_767 or 0
		local var_46_769 = var_46_763 * 3 + var_46_736 + (var_46_719 * 2 + var_46_720) * 3 + var_46_718 * 2 + var_46_764 + var_46_768
		local var_46_770 = var_46_761 + var_46_718 * 2
		local var_46_771 = var_0_72[var_0_68]
		local var_46_772 = var_46_771.x + var_46_771.w / 2
		local var_46_773 = var_46_771.y + var_46_771.h / 2
		local var_46_774 = var_46_0 / 2 + var_0_43 + (var_46_772 - var_46_0 / 2) * var_0_45
		local var_46_775 = var_46_1 / 2 + var_0_44 + (var_46_773 - var_46_1 / 2) * var_0_45
		local var_46_776 = var_46_771.w * var_0_45
		local var_46_777 = var_46_771.h * var_0_45
		local var_46_778 = var_46_774 - var_46_776 / 2
		local var_46_779 = var_46_775 - var_46_777 / 2

		if not var_0_71 then
			if var_46_774 > var_46_0 / 2 then
				var_0_71 = "left"
			else
				var_0_71 = "right"
			end
		end

		local var_46_780
		local var_46_781

		if var_0_71 == "left" then
			var_46_780 = var_46_778 - var_46_770 - 10
		else
			var_46_780 = var_46_778 + var_46_776 + 10
		end

		local var_46_782 = var_46_779 + (var_46_777 - var_46_769) / 2

		if var_46_782 < 10 then
			var_46_782 = 10
		end

		if var_46_782 + var_46_769 > var_46_1 - 10 then
			var_46_782 = var_46_1 - 10 - var_46_769
		end

		if var_46_780 < 10 then
			var_46_780 = 10
		end

		if var_46_780 + var_46_770 > var_46_0 - 10 then
			var_46_780 = var_46_0 - 10 - var_46_770
		end

		if var_46_780 < 10 then
			var_46_780 = 10
		end

		local var_46_783 = math.floor(var_46_780)
		local var_46_784 = math.floor(var_46_782)

		var_0_84(var_46_783, var_46_784, var_46_770, var_46_769, {
			0.05,
			0.05,
			0.05,
			1
		}, var_46_713)

		local var_46_785 = arg_46_0 and arg_46_0.upgrade and arg_46_0.upgrade.tooltip or {}
		local var_46_786 = var_46_785.nameOffsetY or 0
		local var_46_787 = var_46_785.descOffsetY or 0
		local var_46_788 = var_46_785.statOffsetY or 0
		local var_46_789 = var_46_785.costOffsetY or 0
		local var_46_790 = var_46_785.costTextOffsetY or 0
		local var_46_791 = var_46_784 + var_46_718
		local var_46_792 = var_46_783 + var_46_718
		local var_46_793 = var_46_761

		love.graphics.setColor(1, 0.8, 0.2, 1)
		love.graphics.print(var_46_724, var_46_783 + var_46_718, math.floor(var_46_791 + var_46_786), 0, var_46_721, var_46_721)

		local var_46_794 = var_46_791 + var_46_763 + var_46_719 + var_46_764

		love.graphics.setColor(var_0_81.separator)
		love.graphics.rectangle("fill", var_46_792, math.floor(var_46_794), var_46_793, var_46_720)

		local var_46_795 = var_46_794 + var_46_720 + var_46_719

		love.graphics.setColor(0.9, 0.9, 0.9, 1)
		var_46_715:setLineHeight(1.4)

		if var_46_735 then
			local var_46_796 = var_46_716:getHeight() * var_46_715:getLineHeight() * var_46_721

			for iter_46_38, iter_46_39 in ipairs(var_46_735) do
				var_0_100(iter_46_39, var_46_783 + var_46_718, math.floor(var_46_795 + var_46_787 + (iter_46_38 - 1) * var_46_796), var_46_715, var_46_721, var_46_722, {
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
			love.graphics.printf(var_46_725, var_46_783 + var_46_718, math.floor(var_46_795 + var_46_787), var_46_734, "left", 0, var_46_721, var_46_721)
		end

		var_46_715:setLineHeight(1)

		local var_46_797 = var_46_795 + var_46_736 + var_46_719

		love.graphics.setColor(var_0_81.separator)
		love.graphics.rectangle("fill", var_46_792, math.floor(var_46_797), var_46_793, var_46_720)

		local var_46_798 = var_46_797 + var_46_720 + var_46_719
		local var_46_799 = var_46_783 + var_46_718 + (var_46_761 - var_46_744) / 2

		if var_46_799 < var_46_783 + var_46_718 then
			var_46_799 = var_46_783 + var_46_718
		end

		local var_46_800, var_46_801 = var_46_726:match("^(.*%->%s*)(.*)$")

		if var_46_800 and var_46_801 then
			local var_46_802 = var_0_97(var_46_800, var_46_715, var_46_721)

			if var_0_96(var_46_800) then
				local var_46_803 = var_0_95(var_46_800, var_46_715, var_46_721, var_46_722)

				var_46_802 = var_0_98(var_46_803, var_46_715, var_46_721, var_46_722)

				var_0_100(var_46_803, math.floor(var_46_799), math.floor(var_46_798 + var_46_788) - 2, var_46_715, var_46_721, var_46_722, {
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
				love.graphics.print(var_46_800, math.floor(var_46_799), math.floor(var_46_798 + var_46_788) - 2, 0, var_46_721, var_46_721)
			end

			if var_0_96(var_46_801) then
				local var_46_804 = var_0_95(var_46_801, var_46_715, var_46_721, var_46_722)

				var_0_100(var_46_804, math.floor(var_46_799 + var_46_802), math.floor(var_46_798 + var_46_788) - 2, var_46_715, var_46_721, var_46_722, {
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
				love.graphics.print(var_46_801, math.floor(var_46_799 + var_46_802), math.floor(var_46_798 + var_46_788) - 2, 0, var_46_721, var_46_721)
			end
		elseif var_0_96(var_46_726) then
			local var_46_805 = var_0_95(var_46_726, var_46_715, var_46_721, var_46_722)

			var_0_100(var_46_805, math.floor(var_46_799), math.floor(var_46_798 + var_46_788) - 2, var_46_715, var_46_721, var_46_722, {
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
			love.graphics.print(var_46_726, math.floor(var_46_799), math.floor(var_46_798 + var_46_788) - 2, 0, var_46_721, var_46_721)
		end

		local var_46_806 = var_46_798 + var_46_763 + var_46_719

		love.graphics.setColor(var_0_81.separator)
		love.graphics.rectangle("fill", var_46_792, math.floor(var_46_806), var_46_793, var_46_720)

		local var_46_807 = var_46_806 + var_46_720 + var_46_719
		local var_46_808 = var_46_749
		local var_46_809 = var_46_783 + var_46_718 + (var_46_761 - var_46_808) / 2
		local var_46_810 = {
			var_46_714[1] * 0.25,
			var_46_714[2] * 0.25,
			var_46_714[3] * 0.25,
			1
		}
		local var_46_811 = var_46_763 + 4
		local var_46_812 = var_46_807 - 1 + var_46_789
		local var_46_813 = var_46_792
		local var_46_814 = var_46_793

		var_0_84(math.floor(var_46_813), math.floor(var_46_812), math.floor(var_46_814), math.floor(var_46_811), var_46_810, nil)

		local var_46_815 = var_46_716:getHeight() * var_46_721
		local var_46_816 = var_46_812 + math.floor((var_46_811 - var_46_815) / 2) - 1
		local var_46_817 = var_46_812 + math.floor((var_46_811 - var_46_747 * var_46_745) / 2) - 1

		if var_46_710 then
			love.graphics.setColor(var_46_714)
			love.graphics.print(var_46_729, math.floor(var_46_809), math.floor(var_46_816 + var_46_790), 0, var_46_721, var_46_721)
		else
			love.graphics.setColor(1, 1, 1, 1)

			if var_0_12 then
				love.graphics.draw(var_0_12, math.floor(var_46_809), math.floor(var_46_817), 0, var_46_745, var_46_745)
			end

			love.graphics.setColor(var_46_714)
			love.graphics.print(var_46_729, math.floor(var_46_809 + var_46_746 * var_46_745 + var_46_748), math.floor(var_46_816 + var_46_790), 0, var_46_721, var_46_721)
		end

		if var_46_750 then
			local var_46_818 = var_46_807 + var_46_811 + var_46_765
			local var_46_819 = var_46_710 and {
				var_0_79("#6FAACC")
			} or var_46_752 and {
				var_0_79("#5FAF6F")
			} or {
				var_0_79("#A84F5A")
			}
			local var_46_820 = var_0_94(var_46_710, var_46_752)
			local var_46_821 = var_46_783 + var_46_718 + (var_46_761 - var_46_754) / 2
			local var_46_822 = {
				var_46_819[1] * 0.25,
				var_46_819[2] * 0.25,
				var_46_819[3] * 0.25,
				1
			}
			local var_46_823 = var_46_818 - 1
			local var_46_824 = var_46_823 + math.floor((var_46_766 - var_46_756) / 2)
			local var_46_825 = var_46_823 + math.floor((var_46_766 - var_46_815) / 2) - 2

			var_0_84(math.floor(var_46_792), math.floor(var_46_823), math.floor(var_46_793), math.floor(var_46_766), var_46_822, nil)

			if var_46_758 then
				local var_46_826 = var_0_83()
				local var_46_827 = math.floor(var_46_821)
				local var_46_828 = math.floor(var_46_824)
				local var_46_829 = math.floor(var_46_756)

				local function var_46_830(arg_49_0, arg_49_1)
					love.graphics.rectangle("fill", var_46_827 + arg_49_0, var_46_828 + arg_49_1, var_46_829, var_46_826)
					love.graphics.rectangle("fill", var_46_827 + arg_49_0, var_46_828 + arg_49_1 + var_46_829 - var_46_826, var_46_829, var_46_826)
					love.graphics.rectangle("fill", var_46_827 + arg_49_0, var_46_828 + arg_49_1, var_46_826, var_46_829)
					love.graphics.rectangle("fill", var_46_827 + arg_49_0 + var_46_829 - var_46_826, var_46_828 + arg_49_1, var_46_826, var_46_829)

					if var_46_752 then
						local var_49_0 = {
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

						for iter_49_0, iter_49_1 in ipairs(var_49_0) do
							love.graphics.rectangle("fill", var_46_827 + arg_49_0 + iter_49_1[1] * var_46_826, var_46_828 + arg_49_1 + iter_49_1[2] * var_46_826, var_46_826, var_46_826)
						end
					end
				end

				love.graphics.setColor(0, 0, 0, 0.45)
				var_46_830(0, var_46_826)
				love.graphics.setColor(var_46_819[1], var_46_819[2], var_46_819[3], 1)
				var_46_830(0, 0)
			end

			local var_46_831 = var_46_821

			if var_46_758 then
				var_46_831 = var_46_831 + var_46_756 + var_46_757
			end

			if var_46_751 then
				local var_46_832 = var_0_97(" ", var_46_715, var_46_721)

				for iter_46_40, iter_46_41 in ipairs(var_46_751) do
					local var_46_833 = var_46_820[iter_46_41.kind] or var_46_819

					love.graphics.setColor(var_46_833[1], var_46_833[2], var_46_833[3], 1)
					love.graphics.print(iter_46_41.text, math.floor(var_46_831), math.floor(var_46_825), 0, var_46_721, var_46_721)

					var_46_831 = var_46_831 + var_0_97(iter_46_41.text, var_46_715, var_46_721)

					if iter_46_40 < #var_46_751 then
						var_46_831 = var_46_831 + var_46_832
					end
				end
			else
				love.graphics.setColor(var_46_819[1], var_46_819[2], var_46_819[3], 1)
				love.graphics.print(var_46_750, math.floor(var_46_831), math.floor(var_46_825), 0, var_46_721, var_46_721)
			end
		end

		var_46_715:setLineHeight(var_46_717)
	end

	love.graphics.setColor(1, 1, 1, 1)

	if var_0_24 then
		local var_46_834 = var_0_25.scale
		local var_46_835, var_46_836 = var_0_24:getDimensions()
		local var_46_837 = 60
		local var_46_838 = 60
		local var_46_839 = var_46_835 * var_46_834
		local var_46_840 = var_46_836 * var_46_834

		var_0_25.rect = {
			x = var_46_837 - var_46_839 / 2,
			y = var_46_838 - var_46_840 / 2,
			w = var_46_839,
			h = var_46_840
		}

		love.graphics.draw(var_0_24, var_46_837, var_46_838, 0, var_46_834, var_46_834, var_46_835 / 2, var_46_836 / 2)
	end

	if var_0_18 then
		local var_46_841, var_46_842 = var_0_18:getDimensions()
		local var_46_843 = 1.15
		local var_46_844 = math.floor((var_46_0 - var_46_841 * var_46_843) / 2)
		local var_46_845 = 25

		love.graphics.draw(var_0_18, var_46_844, var_46_845, 0, var_46_843, var_46_843)
	else
		local var_46_846 = arg_46_0.fontTitle or love.graphics.getFont()

		love.graphics.setFont(var_46_846)

		local var_46_847 = arg_46_0 and arg_46_0.menuSettings and arg_46_0.menuSettings.language or "ko"
		local var_46_848 = var_0_3.getText("upgrade_title", var_46_847)
		local var_46_849 = 2
		local var_46_850 = var_46_846:getWidth(var_46_848) * var_46_849
		local var_46_851 = var_46_846:getHeight() * var_46_849

		love.graphics.print(var_46_848, (var_46_0 - var_46_850) / 2, 50, 0, var_46_849, var_46_849)
	end

	if var_0_21 and var_0_22 and var_0_23 then
		local var_46_852 = var_0_19 or arg_46_0.fontTitle or love.graphics.getFont()

		love.graphics.setFont(var_46_852)
		love.graphics.setColor(1, 1, 1, 1)

		local var_46_853 = 1
		local var_46_854 = 1.2
		local var_46_855 = 10
		local var_46_856 = 20
		local var_46_857 = 10
		local var_46_858 = arg_46_0 and arg_46_0.menuSettings and arg_46_0.menuSettings.language or "ko"
		local var_46_859 = var_0_3.getText("upgrade_action_select_move", var_46_858)
		local var_46_860 = var_46_852:getWidth(var_46_859) * var_46_853
		local var_46_861 = var_46_852:getHeight() * var_46_853
		local var_46_862, var_46_863 = var_0_21:getDimensions()
		local var_46_864 = var_46_863 * var_46_854
		local var_46_865 = math.max(var_46_861, var_46_864)
		local var_46_866 = var_46_860 + var_46_855 + var_46_862 * var_46_854
		local var_46_867 = var_46_0 - var_46_856 - var_46_866
		local var_46_868 = var_0_3.getText("upgrade_action_zoom", var_46_858)
		local var_46_869 = var_46_852:getWidth(var_46_868) * var_46_853
		local var_46_870 = var_46_852:getHeight() * var_46_853
		local var_46_871, var_46_872 = var_0_23:getDimensions()
		local var_46_873 = var_46_872 * var_46_854
		local var_46_874 = math.max(var_46_870, var_46_873)
		local var_46_875 = var_46_869 + var_46_855 + var_46_871 * var_46_854
		local var_46_876 = var_46_0 - var_46_856 - var_46_875
		local var_46_877 = var_46_1 - var_46_856 - var_46_874
		local var_46_878 = var_46_877 - var_46_857 - var_46_865
		local var_46_879 = var_46_878 + (var_46_864 - var_46_861) / 2

		love.graphics.print(var_46_859, math.floor(var_46_867), math.floor(var_46_879), 0, var_46_853, var_46_853)
		love.graphics.draw(var_0_21, math.floor(var_46_867 + var_46_860 + var_46_855), math.floor(var_46_878), 0, var_46_854, var_46_854)

		local var_46_880 = var_0_3.getText("upgrade_action_upgrade", var_46_858)
		local var_46_881 = var_46_852:getWidth(var_46_880) * var_46_853
		local var_46_882 = var_46_852:getHeight() * var_46_853
		local var_46_883, var_46_884 = var_0_22:getDimensions()
		local var_46_885 = var_46_884 * var_46_854
		local var_46_886 = math.max(var_46_882, var_46_885)
		local var_46_887 = var_46_881 + var_46_855 + var_46_883 * var_46_854
		local var_46_888 = var_46_0 - var_46_856 - var_46_887
		local var_46_889 = var_46_878 - var_46_857 - var_46_886
		local var_46_890 = var_46_889 + (var_46_885 - var_46_882) / 2

		love.graphics.print(var_46_880, math.floor(var_46_888), math.floor(var_46_890), 0, var_46_853, var_46_853)
		love.graphics.draw(var_0_22, math.floor(var_46_888 + var_46_881 + var_46_855), math.floor(var_46_889), 0, var_46_854, var_46_854)

		local var_46_891 = var_46_877 + (var_46_873 - var_46_870) / 2

		love.graphics.print(var_46_868, math.floor(var_46_876), math.floor(var_46_891), 0, var_46_853, var_46_853)
		love.graphics.draw(var_0_23, math.floor(var_46_876 + var_46_869 + var_46_855), math.floor(var_46_877), 0, var_46_854, var_46_854)
	end
end

function var_0_0.update(arg_50_0, arg_50_1, arg_50_2)
	var_0_70()

	local var_50_0 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

	if var_0_26 and var_0_26.setVolume then
		var_0_26:setVolume(var_50_0 * 1.6)
	end

	if var_0_27 and var_0_27.setVolume then
		var_0_27:setVolume(var_50_0 * 1.6)
	end

	if var_0_50 and not var_0_53 then
		local var_50_1 = 1 - math.exp(-math.max(0, arg_50_0) * 11)

		var_0_45 = var_0_45 + (var_0_47 - var_0_45) * var_50_1
		var_0_43 = var_0_43 + (var_0_48 - var_0_43) * var_50_1
		var_0_44 = var_0_44 + (var_0_49 - var_0_44) * var_50_1

		if math.abs(var_0_47 - var_0_45) < 0.001 and math.abs(var_0_48 - var_0_43) < 0.05 and math.abs(var_0_49 - var_0_44) < 0.05 then
			var_0_45 = var_0_47
			var_0_43, var_0_44 = var_0_48, var_0_49
			var_0_50 = false
		end
	end

	local var_50_2 = 0
	local var_50_3 = 0

	if love.keyboard and love.keyboard.isDown then
		if love.keyboard.isDown("a", "left") then
			var_50_2 = var_50_2 + 1
		end

		if love.keyboard.isDown("d", "right") then
			var_50_2 = var_50_2 - 1
		end

		if love.keyboard.isDown("w", "up") then
			var_50_3 = var_50_3 + 1
		end

		if love.keyboard.isDown("s", "down") then
			var_50_3 = var_50_3 - 1
		end
	end

	local var_50_4 = var_50_2 ~= 0 or var_50_3 ~= 0
	local var_50_5 = 0
	local var_50_6 = 0

	if var_50_4 then
		local var_50_7 = math.sqrt(var_50_2 * var_50_2 + var_50_3 * var_50_3)
		local var_50_8 = 250

		var_50_5 = var_50_2 / var_50_7 * var_50_8
		var_50_6 = var_50_3 / var_50_7 * var_50_8
	end

	local var_50_9 = math.min(math.max(arg_50_0, 0), 0.05)
	local var_50_10 = var_50_4 and 11 or 7.5
	local var_50_11 = 1 - math.exp(-var_50_10 * var_50_9)

	var_0_54 = var_0_54 + (var_50_5 - var_0_54) * var_50_11
	var_0_55 = var_0_55 + (var_50_6 - var_0_55) * var_50_11

	if not var_50_4 then
		if math.abs(var_0_54) < 0.5 then
			var_0_54 = 0
		end

		if math.abs(var_0_55) < 0.5 then
			var_0_55 = 0
		end
	end

	if var_0_54 ~= 0 or var_0_55 ~= 0 then
		local var_50_12 = var_0_43
		local var_50_13 = var_0_44
		local var_50_14 = var_50_12 + var_0_54 * var_50_9
		local var_50_15 = var_50_13 + var_0_55 * var_50_9

		var_0_43, var_0_44 = var_0_61(var_50_14, var_50_15, var_0_45)

		local var_50_16 = var_0_43 - var_50_12
		local var_50_17 = var_0_44 - var_50_13

		if math.abs(var_0_43 - var_50_14) > 0.001 then
			var_0_54 = 0
		end

		if math.abs(var_0_44 - var_50_15) > 0.001 then
			var_0_55 = 0
		end

		if var_0_50 then
			var_0_48, var_0_49 = var_0_61(var_0_48 + var_50_16, var_0_49 + var_50_17, var_0_47)
		else
			var_0_48, var_0_49 = var_0_43, var_0_44
		end
	end

	var_0_77 = var_0_77 + arg_50_0

	if var_0_77 > var_0_78 then
		var_0_77 = 0
		var_0_78 = love.math.random(2, 6)

		local var_50_18 = love.math.random(-200, 1480)
		local var_50_19 = love.math.random(-200, 500)

		table.insert(var_0_76, {
			life = 1,
			x = var_50_18,
			y = var_50_19,
			len = love.math.random(50, 150),
			speed = love.math.random(600, 1000),
			angle = math.pi / 4,
			thickness = love.math.random(1, 2)
		})
	end

	for iter_50_0 = #var_0_76, 1, -1 do
		local var_50_20 = var_0_76[iter_50_0]

		var_50_20.x = var_50_20.x + math.cos(var_50_20.angle) * var_50_20.speed * arg_50_0
		var_50_20.y = var_50_20.y + math.sin(var_50_20.angle) * var_50_20.speed * arg_50_0
		var_50_20.life = var_50_20.life - arg_50_0 * 1.5

		if var_50_20.life <= 0 then
			table.remove(var_0_76, iter_50_0)
		end
	end

	if var_0_31 then
		var_0_32 = var_0_32 - arg_50_0

		if var_0_32 <= 0 then
			local var_50_21 = var_0_31

			var_0_31 = nil

			return var_50_21
		end
	end

	if var_0_25 and var_0_25.rect then
		local var_50_22 = arg_50_1 or -9999
		local var_50_23 = arg_50_2 or -9999
		local var_50_24 = var_0_25.rect
		local var_50_25 = var_50_22 >= var_50_24.x and var_50_22 <= var_50_24.x + var_50_24.w and var_50_23 >= var_50_24.y and var_50_23 <= var_50_24.y + var_50_24.h

		if var_50_25 and not var_0_25._hovered and var_0_26 then
			if var_0_26:isPlaying() then
				var_0_26:stop()
			end

			var_0_26:play()
		end

		var_0_25._hovered = var_50_25

		local var_50_26 = 0.9
		local var_50_27 = var_50_26

		if var_0_25.pressed then
			local var_50_28 = var_50_26 * 0.9

			var_0_25.scale = var_0_25.scale + (var_50_28 - var_0_25.scale) * math.min(1, arg_50_0 * 20)
		elseif var_50_25 then
			local var_50_29 = var_50_26 * 1.15

			var_0_25.scale = var_0_25.scale + (var_50_29 - var_0_25.scale) * math.min(1, arg_50_0 * 12)
		else
			local var_50_30 = var_50_26

			var_0_25.scale = var_0_25.scale + (var_50_30 - var_0_25.scale) * math.min(1, arg_50_0 * 10)
		end
	end

	var_0_68 = nil

	local var_50_31 = false
	local var_50_32 = false

	if ui and ui._coreSelect and ui._coreSelect.active then
		var_50_32 = true
	end

	if arg_50_1 and arg_50_2 and not var_50_32 then
		local var_50_33 = var_0_51 / 2 + (arg_50_1 - var_0_51 / 2 - var_0_43) / var_0_45
		local var_50_34 = var_0_52 / 2 + (arg_50_2 - var_0_52 / 2 - var_0_44) / var_0_45

		for iter_50_1, iter_50_2 in pairs(var_0_72) do
			if var_50_33 >= iter_50_2.x and var_50_33 <= iter_50_2.x + iter_50_2.w and var_50_34 >= iter_50_2.y and var_50_34 <= iter_50_2.y + iter_50_2.h then
				var_0_68 = iter_50_1

				local var_50_35 = true

				break
			end
		end
	end

	for iter_50_3, iter_50_4 in pairs(var_0_65) do
		iter_50_4.shakeX = 0

		if iter_50_4.shakeT > 0 then
			iter_50_4.shakeT = iter_50_4.shakeT - arg_50_0

			if iter_50_4.shakeT < 0 then
				iter_50_4.shakeT = 0
			end

			local var_50_36 = 1 - iter_50_4.shakeT / iter_50_4.shakeDur
			local var_50_37 = 1 - var_50_36

			iter_50_4.shakeX = math.sin(var_50_36 * math.pi * 8) * iter_50_4.shakeAmp * var_50_37
		end

		iter_50_4.pulseT = (iter_50_4.pulseT or 0) + arg_50_0 * 4
		iter_50_4.shineT = (iter_50_4.shineT or 0) + arg_50_0

		if iter_50_4.shineT > 3 then
			iter_50_4.shineT = love.math.random() * -1
		end

		if iter_50_4.flashT > 0 then
			iter_50_4.flashT = iter_50_4.flashT - arg_50_0

			if iter_50_4.flashT < 0 then
				iter_50_4.flashT = 0
			end
		end

		local var_50_38 = false

		if iter_50_4.isDisappearing then
			iter_50_4.disappearTimer = iter_50_4.disappearTimer + arg_50_0

			local var_50_39 = iter_50_4.disappearTimer

			if var_50_39 < 0.1 then
				local var_50_40 = var_50_39 / 0.1

				iter_50_4.scaleX = 1 - var_50_40 * 0.1
				iter_50_4.scaleY = 1 - var_50_40 * 0.1
				iter_50_4.unlockLineProgress = math.max(0, 1 - var_50_39 / 0.4)
				var_50_38 = true
			elseif var_50_39 < 0.2 then
				local var_50_41 = (var_50_39 - 0.1) / 0.1

				iter_50_4.scaleX = 0.9 + var_50_41 * 0.4
				iter_50_4.scaleY = 0.9 + var_50_41 * 0.4
				iter_50_4.unlockLineProgress = math.max(0, 1 - var_50_39 / 0.4)
				var_50_38 = true
			elseif var_50_39 < 0.4 then
				local var_50_42 = (var_50_39 - 0.2) / 0.2

				iter_50_4.scaleX = 1.3 * (1 - var_50_42)
				iter_50_4.scaleY = 1.3 * (1 - var_50_42)
				iter_50_4.unlockLineProgress = math.max(0, 1 - var_50_39 / 0.4)
				var_50_38 = true
			else
				iter_50_4.isDisappearing = false
				iter_50_4.revealed = false
				iter_50_4.unlockLineProgress = 0
				iter_50_4.scaleX = 0
				iter_50_4.scaleY = 0
				var_50_38 = true
			end
		end

		if not var_50_38 then
			if iter_50_3 == "maxunit" or iter_50_3 == "maxunit2" or iter_50_3 == "maxunit3" or iter_50_3 == "maxhp" or iter_50_3 == "maxhp2" or iter_50_3 == "noviceshield" or iter_50_3 == "startgold" or iter_50_3 == "startgold2" or iter_50_3 == "comebackspin" or iter_50_3 == "gateheal" or iter_50_3 == "comebackgold" or iter_50_3 == "slotnudge" or iter_50_3 == "slotadvanced" or iter_50_3 == "slotadvanced2" or iter_50_3 == "slotadvanced3" or iter_50_3 == "slotrare" or iter_50_3 == "corereroll" or iter_50_3 == "firstcorespin" or iter_50_3 == "firstcoreuncommon" or iter_50_3 == "shopreroll" or iter_50_3 == "iteminventory" or iter_50_3 == "itemrefund" or iter_50_3 == "iteminventory2" or iter_50_3 == "itemresearch" or iter_50_3 == "shoppin" or iter_50_3 == "interest" then
				local var_50_43 = var_0_86.slotodds.maxed

				if iter_50_3 == "slotnudge" then
					var_50_43 = var_0_86.maxunit and var_0_86.maxunit.maxed == true
				elseif iter_50_3 == "maxunit2" then
					var_50_43 = var_0_86.maxunit and var_0_86.maxunit.maxed == true
				elseif iter_50_3 == "maxunit3" then
					var_50_43 = var_0_86.maxunit2 and var_0_86.maxunit2.maxed == true
				elseif iter_50_3 == "noviceshield" then
					var_50_43 = var_0_86.maxhp and var_0_86.maxhp.maxed == true
				elseif iter_50_3 == "startgold" then
					var_50_43 = var_0_86.maxhp and var_0_86.maxhp.maxed == true
				elseif iter_50_3 == "comebackspin" then
					var_50_43 = var_0_86.noviceshield and var_0_86.noviceshield.maxed == true
				elseif iter_50_3 == "gateheal" then
					var_50_43 = var_0_86.comebackspin and var_0_86.comebackspin.maxed == true
				elseif iter_50_3 == "comebackgold" then
					var_50_43 = var_0_86.startgold and var_0_86.startgold.maxed == true
				elseif iter_50_3 == "maxhp2" then
					var_50_43 = var_0_86.comebackgold and var_0_86.comebackgold.maxed == true
				elseif iter_50_3 == "startgold2" then
					var_50_43 = var_0_86.startgold and var_0_86.startgold.maxed == true
				elseif iter_50_3 == "interest" then
					var_50_43 = var_0_86.maxunit and var_0_86.maxunit.maxed == true
				elseif iter_50_3 == "slotadvanced2" then
					var_50_43 = var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true
				elseif iter_50_3 == "corereroll" then
					var_50_43 = var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true
				elseif iter_50_3 == "firstcorespin" then
					var_50_43 = var_0_86.corereroll and var_0_86.corereroll.maxed == true
				elseif iter_50_3 == "firstcoreuncommon" then
					var_50_43 = var_0_86.firstcorespin and var_0_86.firstcorespin.maxed == true
				elseif iter_50_3 == "shopreroll" then
					var_50_43 = var_0_86.slotadvanced and var_0_86.slotadvanced.maxed == true
				elseif iter_50_3 == "iteminventory" then
					var_50_43 = var_0_86.shopreroll and var_0_86.shopreroll.maxed == true
				elseif iter_50_3 == "itemrefund" then
					var_50_43 = var_0_86.iteminventory and var_0_86.iteminventory.maxed == true
				elseif iter_50_3 == "iteminventory2" then
					var_50_43 = var_0_86.iteminventory and var_0_86.iteminventory.maxed == true
				elseif iter_50_3 == "itemresearch" then
					var_50_43 = var_0_86.shopreroll and var_0_86.shopreroll.maxed == true
				elseif iter_50_3 == "shoppin" then
					var_50_43 = var_0_86.shopreroll and var_0_86.shopreroll.maxed == true
				elseif iter_50_3 == "slotadvanced3" then
					var_50_43 = var_0_86.slotadvanced2 and var_0_86.slotadvanced2.maxed == true
				elseif iter_50_3 == "slotrare" then
					var_50_43 = var_0_86.slotadvanced3 and var_0_86.slotadvanced3.maxed == true
				end

				if var_50_43 then
					if iter_50_3 == "maxhp" then
						local var_50_44 = var_0_66("maxunit")

						if var_50_44 and var_50_44.unlockLineProgress then
							iter_50_4.unlockLineProgress = var_50_44.unlockLineProgress
						end
					end

					if iter_50_4.unlockLineProgress < 1 then
						iter_50_4.unlockLineProgress = iter_50_4.unlockLineProgress + arg_50_0 * 4

						if iter_50_4.unlockLineProgress >= 1 then
							iter_50_4.unlockLineProgress = 1

							if not iter_50_4.revealed then
								iter_50_4.revealed = true
								iter_50_4.isAppearing = true
								iter_50_4.appearTimer = 0
								iter_50_4.scaleX = 0
								iter_50_4.scaleY = 0
							end
						end
					elseif not iter_50_4.revealed then
						iter_50_4.unlockLineProgress = 1
						iter_50_4.revealed = true
					end
				end

				if iter_50_4.isAppearing then
					iter_50_4.appearTimer = iter_50_4.appearTimer + arg_50_0

					local var_50_45 = iter_50_4.appearTimer

					if var_50_45 < 0.2 then
						local var_50_46 = var_50_45 / 0.2

						targetX = var_50_46 * 1.3
						targetY = var_50_46 * 1.3
						iter_50_4.scaleX = targetX
						iter_50_4.scaleY = targetY
						var_50_38 = true
					elseif var_50_45 < 0.3 then
						local var_50_47 = (var_50_45 - 0.2) / 0.1

						targetX = 1.3 - var_50_47 * 0.4
						targetY = 1.3 - var_50_47 * 0.4
						iter_50_4.scaleX = targetX
						iter_50_4.scaleY = targetY
						var_50_38 = true
					elseif var_50_45 < 0.4 then
						local var_50_48 = (var_50_45 - 0.3) / 0.1

						targetX = 0.9 + var_50_48 * 0.1
						targetY = 0.9 + var_50_48 * 0.1
						iter_50_4.scaleX = targetX
						iter_50_4.scaleY = targetY
						var_50_38 = true
					else
						iter_50_4.isAppearing = false
						iter_50_4.scaleX = 1
						iter_50_4.scaleY = 1
					end
				end
			end

			if not var_50_38 then
				local var_50_49 = 1
				local var_50_50 = var_50_49
				local var_50_51 = var_50_49

				if iter_50_4.isPopping then
					iter_50_4.popTimer = iter_50_4.popTimer + arg_50_0

					if iter_50_4.popTimer < 0.08 then
						local var_50_52 = 1.15
						local var_50_53 = 0.85

						iter_50_4.scaleX = iter_50_4.scaleX + (var_50_52 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 30)
						iter_50_4.scaleY = iter_50_4.scaleY + (var_50_53 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 30)
					elseif iter_50_4.popTimer < 0.22 then
						local var_50_54 = 0.9
						local var_50_55 = 1.1

						iter_50_4.scaleX = iter_50_4.scaleX + (var_50_54 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 18)
						iter_50_4.scaleY = iter_50_4.scaleY + (var_50_55 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 18)
					elseif iter_50_4.popTimer < 0.35 then
						local var_50_56 = 1.05
						local var_50_57 = 0.95

						iter_50_4.scaleX = iter_50_4.scaleX + (var_50_56 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 15)
						iter_50_4.scaleY = iter_50_4.scaleY + (var_50_57 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 15)
					elseif iter_50_4.popTimer < 0.48 then
						local var_50_58 = 0.98
						local var_50_59 = 1.02

						iter_50_4.scaleX = iter_50_4.scaleX + (var_50_58 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 12)
						iter_50_4.scaleY = iter_50_4.scaleY + (var_50_59 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 12)
					else
						local var_50_60 = 1
						local var_50_61 = 1

						iter_50_4.scaleX = iter_50_4.scaleX + (var_50_60 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 8)
						iter_50_4.scaleY = iter_50_4.scaleY + (var_50_61 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 8)

						if math.abs(iter_50_4.scaleY - 1) < 0.005 and iter_50_4.popTimer > 0.6 then
							iter_50_4.isPopping = false
						end
					end
				elseif iter_50_4.pressed then
					local var_50_62 = var_50_49 * 0.9
					local var_50_63 = var_50_49 * 0.9

					iter_50_4.scaleX = iter_50_4.scaleX + (var_50_62 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 20)
					iter_50_4.scaleY = iter_50_4.scaleY + (var_50_63 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 20)
					iter_50_4.pressTimer = (iter_50_4.pressTimer or 0) + arg_50_0

					if iter_50_4.pressTimer > 0.1 then
						iter_50_4.pressed = false
						iter_50_4.pressTimer = 0
					end
				elseif var_0_68 == iter_50_3 and iter_50_4.revealed ~= false then
					local var_50_64 = var_50_49 * 1.15
					local var_50_65 = var_50_49 * 1.15

					iter_50_4.scaleX = iter_50_4.scaleX + (var_50_64 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 12)
					iter_50_4.scaleY = iter_50_4.scaleY + (var_50_65 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 12)
				else
					local var_50_66 = var_50_49
					local var_50_67 = var_50_49

					iter_50_4.scaleX = iter_50_4.scaleX + (var_50_66 - iter_50_4.scaleX) * math.min(1, arg_50_0 * 10)
					iter_50_4.scaleY = iter_50_4.scaleY + (var_50_67 - iter_50_4.scaleY) * math.min(1, arg_50_0 * 10)
				end
			end
		end
	end
end

function var_0_0.mousepressed(arg_51_0, arg_51_1, arg_51_2)
	var_0_70()

	if var_0_63 and arg_51_2 == 2 and var_0_68 and var_0_86[var_0_68] and var_0_86[var_0_68].maxed then
		local var_51_0 = var_0_68
		local var_51_1 = var_0_86.maxhp and var_0_86.maxhp.maxed and true or false

		var_0_86[var_51_0].maxed = false

		if var_51_0 == "slotodds" then
			if var_0_86.maxunit then
				var_0_86.maxunit.maxed = false
			end

			if var_0_86.maxunit2 then
				var_0_86.maxunit2.maxed = false
			end

			if var_0_86.maxunit3 then
				var_0_86.maxunit3.maxed = false
			end

			if var_0_86.maxhp then
				var_0_86.maxhp.maxed = false
			end

			if var_0_86.maxhp2 then
				var_0_86.maxhp2.maxed = false
			end

			if var_0_86.noviceshield then
				var_0_86.noviceshield.maxed = false
			end

			if var_0_86.comebackspin then
				var_0_86.comebackspin.maxed = false
			end

			if var_0_86.gateheal then
				var_0_86.gateheal.maxed = false
			end

			if var_0_86.startgold then
				var_0_86.startgold.maxed = false
			end

			if var_0_86.startgold2 then
				var_0_86.startgold2.maxed = false
			end

			if var_0_86.comebackgold then
				var_0_86.comebackgold.maxed = false
			end

			if var_0_86.slotnudge then
				var_0_86.slotnudge.maxed = false
			end

			if var_0_86.preptime then
				var_0_86.preptime.maxed = false
			end

			if var_0_86.interest then
				var_0_86.interest.maxed = false
			end

			if var_0_86.preptime2 then
				var_0_86.preptime2.maxed = false
			end

			if var_0_86.preptimerdisabled then
				var_0_86.preptimerdisabled.maxed = false
			end

			if var_0_86.slotadvanced then
				var_0_86.slotadvanced.maxed = false
			end

			if var_0_86.slotadvanced2 then
				var_0_86.slotadvanced2.maxed = false
			end

			if var_0_86.slotadvanced3 then
				var_0_86.slotadvanced3.maxed = false
			end

			if var_0_86.slotrare then
				var_0_86.slotrare.maxed = false
			end

			if var_0_86.corereroll then
				var_0_86.corereroll.maxed = false
			end

			if var_0_86.firstcorespin then
				var_0_86.firstcorespin.maxed = false
			end

			if var_0_86.firstcoreuncommon then
				var_0_86.firstcoreuncommon.maxed = false
			end

			if var_0_86.shopreroll then
				var_0_86.shopreroll.maxed = false
			end

			if var_0_86.iteminventory then
				var_0_86.iteminventory.maxed = false
			end

			if var_0_86.itemrefund then
				var_0_86.itemrefund.maxed = false
			end

			if var_0_86.iteminventory2 then
				var_0_86.iteminventory2.maxed = false
			end

			if var_0_86.itemresearch then
				var_0_86.itemresearch.maxed = false
			end

			if var_0_86.shoppin then
				var_0_86.shoppin.maxed = false
			end

			var_0_67(var_0_66("maxunit"))
			var_0_67(var_0_66("maxunit2"))
			var_0_67(var_0_66("maxunit3"))
			var_0_67(var_0_66("maxhp"))
			var_0_67(var_0_66("maxhp2"))
			var_0_67(var_0_66("noviceshield"))
			var_0_67(var_0_66("comebackspin"))
			var_0_67(var_0_66("gateheal"))
			var_0_67(var_0_66("startgold"))
			var_0_67(var_0_66("startgold2"))
			var_0_67(var_0_66("comebackgold"))
			var_0_67(var_0_66("slotnudge"))
			var_0_67(var_0_66("preptime"))
			var_0_67(var_0_66("interest"))
			var_0_67(var_0_66("preptime2"))
			var_0_67(var_0_66("preptimerdisabled"))
			var_0_67(var_0_66("slotadvanced"))
			var_0_67(var_0_66("slotadvanced2"))
			var_0_67(var_0_66("slotadvanced3"))
			var_0_67(var_0_66("slotrare"))
			var_0_67(var_0_66("corereroll"))
			var_0_67(var_0_66("firstcorespin"))
			var_0_67(var_0_66("firstcoreuncommon"))
			var_0_67(var_0_66("shopreroll"))
			var_0_67(var_0_66("iteminventory"))
			var_0_67(var_0_66("itemrefund"))
			var_0_67(var_0_66("iteminventory2"))
			var_0_67(var_0_66("itemresearch"))
			var_0_67(var_0_66("shoppin"))
		elseif var_51_0 == "slotadvanced" then
			if var_0_86.slotadvanced2 then
				var_0_86.slotadvanced2.maxed = false
			end

			if var_0_86.slotadvanced3 then
				var_0_86.slotadvanced3.maxed = false
			end

			if var_0_86.slotrare then
				var_0_86.slotrare.maxed = false
			end

			if var_0_86.corereroll then
				var_0_86.corereroll.maxed = false
			end

			if var_0_86.firstcorespin then
				var_0_86.firstcorespin.maxed = false
			end

			if var_0_86.firstcoreuncommon then
				var_0_86.firstcoreuncommon.maxed = false
			end

			if var_0_86.shopreroll then
				var_0_86.shopreroll.maxed = false
			end

			if var_0_86.iteminventory then
				var_0_86.iteminventory.maxed = false
			end

			if var_0_86.itemrefund then
				var_0_86.itemrefund.maxed = false
			end

			if var_0_86.iteminventory2 then
				var_0_86.iteminventory2.maxed = false
			end

			if var_0_86.itemresearch then
				var_0_86.itemresearch.maxed = false
			end

			if var_0_86.shoppin then
				var_0_86.shoppin.maxed = false
			end

			var_0_67(var_0_66("slotadvanced2"))
			var_0_67(var_0_66("slotadvanced3"))
			var_0_67(var_0_66("slotrare"))
			var_0_67(var_0_66("corereroll"))
			var_0_67(var_0_66("firstcorespin"))
			var_0_67(var_0_66("firstcoreuncommon"))
			var_0_67(var_0_66("shopreroll"))
			var_0_67(var_0_66("iteminventory"))
			var_0_67(var_0_66("itemrefund"))
			var_0_67(var_0_66("iteminventory2"))
			var_0_67(var_0_66("itemresearch"))
			var_0_67(var_0_66("shoppin"))
		elseif var_51_0 == "corereroll" then
			if var_0_86.firstcorespin then
				var_0_86.firstcorespin.maxed = false
			end

			if var_0_86.firstcoreuncommon then
				var_0_86.firstcoreuncommon.maxed = false
			end

			var_0_67(var_0_66("firstcorespin"))
			var_0_67(var_0_66("firstcoreuncommon"))
		elseif var_51_0 == "firstcorespin" then
			if var_0_86.firstcoreuncommon then
				var_0_86.firstcoreuncommon.maxed = false
			end

			var_0_67(var_0_66("firstcoreuncommon"))
		elseif var_51_0 == "shopreroll" then
			if var_0_86.iteminventory then
				var_0_86.iteminventory.maxed = false
			end

			if var_0_86.itemrefund then
				var_0_86.itemrefund.maxed = false
			end

			if var_0_86.iteminventory2 then
				var_0_86.iteminventory2.maxed = false
			end

			if var_0_86.itemresearch then
				var_0_86.itemresearch.maxed = false
			end

			if var_0_86.shoppin then
				var_0_86.shoppin.maxed = false
			end

			var_0_67(var_0_66("iteminventory"))
			var_0_67(var_0_66("itemrefund"))
			var_0_67(var_0_66("iteminventory2"))
			var_0_67(var_0_66("itemresearch"))
			var_0_67(var_0_66("shoppin"))
		elseif var_51_0 == "iteminventory" then
			if var_0_86.itemrefund then
				var_0_86.itemrefund.maxed = false
			end

			if var_0_86.iteminventory2 then
				var_0_86.iteminventory2.maxed = false
			end

			var_0_67(var_0_66("itemrefund"))
			var_0_67(var_0_66("iteminventory2"))
		elseif var_51_0 == "slotadvanced2" then
			if var_0_86.slotadvanced3 then
				var_0_86.slotadvanced3.maxed = false
			end

			if var_0_86.slotrare then
				var_0_86.slotrare.maxed = false
			end

			var_0_67(var_0_66("slotadvanced3"))
			var_0_67(var_0_66("slotrare"))
		elseif var_51_0 == "slotadvanced3" then
			if var_0_86.slotrare then
				var_0_86.slotrare.maxed = false
			end

			var_0_67(var_0_66("slotrare"))
		elseif var_51_0 == "maxhp" then
			if var_0_86.noviceshield then
				var_0_86.noviceshield.maxed = false
			end

			if var_0_86.comebackspin then
				var_0_86.comebackspin.maxed = false
			end

			if var_0_86.gateheal then
				var_0_86.gateheal.maxed = false
			end

			if var_0_86.startgold then
				var_0_86.startgold.maxed = false
			end

			if var_0_86.startgold2 then
				var_0_86.startgold2.maxed = false
			end

			if var_0_86.comebackgold then
				var_0_86.comebackgold.maxed = false
			end

			if var_0_86.maxhp2 then
				var_0_86.maxhp2.maxed = false
			end

			var_0_67(var_0_66("noviceshield"))
			var_0_67(var_0_66("comebackspin"))
			var_0_67(var_0_66("gateheal"))
			var_0_67(var_0_66("startgold"))
			var_0_67(var_0_66("startgold2"))
			var_0_67(var_0_66("comebackgold"))
			var_0_67(var_0_66("maxhp2"))
		elseif var_51_0 == "noviceshield" then
			if var_0_86.comebackspin then
				var_0_86.comebackspin.maxed = false
			end

			if var_0_86.gateheal then
				var_0_86.gateheal.maxed = false
			end

			var_0_67(var_0_66("comebackspin"))
			var_0_67(var_0_66("gateheal"))
		elseif var_51_0 == "comebackspin" then
			if var_0_86.gateheal then
				var_0_86.gateheal.maxed = false
			end

			var_0_67(var_0_66("gateheal"))
		elseif var_51_0 == "startgold" then
			if var_0_86.comebackgold then
				var_0_86.comebackgold.maxed = false
			end

			if var_0_86.startgold2 then
				var_0_86.startgold2.maxed = false
			end

			if var_0_86.maxhp2 then
				var_0_86.maxhp2.maxed = false
			end

			var_0_67(var_0_66("comebackgold"))
			var_0_67(var_0_66("startgold2"))
			var_0_67(var_0_66("maxhp2"))
		elseif var_51_0 == "comebackgold" then
			if var_0_86.maxhp2 then
				var_0_86.maxhp2.maxed = false
			end

			var_0_67(var_0_66("maxhp2"))
		elseif var_51_0 == "maxunit" then
			if var_0_86.maxunit2 then
				var_0_86.maxunit2.maxed = false
			end

			if var_0_86.maxunit3 then
				var_0_86.maxunit3.maxed = false
			end

			if var_0_86.slotnudge then
				var_0_86.slotnudge.maxed = false
			end

			if var_0_86.preptime then
				var_0_86.preptime.maxed = false
			end

			if var_0_86.interest then
				var_0_86.interest.maxed = false
			end

			if var_0_86.preptime2 then
				var_0_86.preptime2.maxed = false
			end

			if var_0_86.preptimerdisabled then
				var_0_86.preptimerdisabled.maxed = false
			end

			var_0_67(var_0_66("slotnudge"))
			var_0_67(var_0_66("maxunit2"))
			var_0_67(var_0_66("maxunit3"))
			var_0_67(var_0_66("preptime"))
			var_0_67(var_0_66("interest"))
			var_0_67(var_0_66("preptime2"))
			var_0_67(var_0_66("preptimerdisabled"))
		elseif var_51_0 == "maxunit2" then
			if var_0_86.maxunit3 then
				var_0_86.maxunit3.maxed = false
			end

			var_0_67(var_0_66("maxunit3"))
		elseif var_51_0 == "preptime" then
			if var_0_86.interest then
				var_0_86.interest.maxed = false
			end

			if var_0_86.preptime2 then
				var_0_86.preptime2.maxed = false
			end

			if var_0_86.preptimerdisabled then
				var_0_86.preptimerdisabled.maxed = false
			end

			var_0_67(var_0_66("interest"))
			var_0_67(var_0_66("preptime2"))
			var_0_67(var_0_66("preptimerdisabled"))
		elseif var_51_0 == "preptime2" then
			if var_0_86.preptimerdisabled then
				var_0_86.preptimerdisabled.maxed = false
			end

			var_0_67(var_0_66("preptimerdisabled"))
		end

		var_0_0.applyUpgradeEffects()

		if var_51_0 == "maxhp" or var_51_0 == "slotodds" and var_51_1 then
			return {
				action = "downgrade_maxhp"
			}
		end

		return
	end

	if arg_51_2 == 1 then
		if var_0_25 and var_0_25.rect then
			local var_51_2 = var_0_25.rect

			if arg_51_0 >= var_51_2.x and arg_51_0 <= var_51_2.x + var_51_2.w and arg_51_1 >= var_51_2.y and arg_51_1 <= var_51_2.y + var_51_2.h then
				if var_0_27 then
					if var_0_27:isPlaying() then
						var_0_27:stop()
					end

					var_0_27:play()
				end

				var_0_25.pressed = true
				var_0_31 = "back"
				var_0_32 = 0.15

				return nil
			end
		end

		if var_0_68 and var_0_86[var_0_68] then
			local var_51_3 = var_0_68
			local var_51_4 = var_0_86[var_51_3]
			local var_51_5 = var_0_66(var_51_3)

			if var_51_5.revealed == false then
				return
			end

			local var_51_6 = var_0_1.getOriginiteAmount and var_0_1.getOriginiteAmount() or 0
			local var_51_7 = var_0_90(var_51_3) and var_51_6 >= var_51_4.cost
			local var_51_8 = var_51_4.maxed or false

			if not var_51_7 and not var_51_8 then
				var_51_5.shakeT = 0.3
				var_51_5.shakeDur = 0.4
				var_51_5.shakeAmp = 2
			elseif not var_51_8 and var_0_1.spendOriginite(var_51_4.cost) then
				var_51_5.scaleX = 1.2
				var_51_5.scaleY = 0.8
				var_51_5.popTimer = 0
				var_51_5.isPopping = true
				var_51_5.flashT = 0.2
				var_51_4.maxed = true

				var_0_0.applyUpgradeEffects()

				if var_51_3 == "slotodds" then
					local var_51_9 = var_0_66("slotadvanced")

					var_51_9.revealed = false
					var_51_9.unlockLineProgress = 0
					var_51_9.isAppearing = false
					var_51_9.appearTimer = 0
					var_51_9.scaleX = 0
					var_51_9.scaleY = 0

					local var_51_10 = var_0_66("slotadvanced2")

					var_51_10.revealed = false
					var_51_10.unlockLineProgress = 0
					var_51_10.isAppearing = false
					var_51_10.appearTimer = 0
					var_51_10.scaleX = 0
					var_51_10.scaleY = 0

					local var_51_11 = var_0_66("corereroll")

					var_51_11.revealed = false
					var_51_11.unlockLineProgress = 0
					var_51_11.isAppearing = false
					var_51_11.appearTimer = 0
					var_51_11.scaleX = 0
					var_51_11.scaleY = 0

					local var_51_12 = var_0_66("firstcorespin")

					var_51_12.revealed = false
					var_51_12.unlockLineProgress = 0
					var_51_12.isAppearing = false
					var_51_12.appearTimer = 0
					var_51_12.scaleX = 0
					var_51_12.scaleY = 0

					local var_51_13 = var_0_66("firstcoreuncommon")

					var_51_13.revealed = false
					var_51_13.unlockLineProgress = 0
					var_51_13.isAppearing = false
					var_51_13.appearTimer = 0
					var_51_13.scaleX = 0
					var_51_13.scaleY = 0

					local var_51_14 = var_0_66("shopreroll")

					var_51_14.revealed = false
					var_51_14.unlockLineProgress = 0
					var_51_14.isAppearing = false
					var_51_14.appearTimer = 0
					var_51_14.scaleX = 0
					var_51_14.scaleY = 0

					local var_51_15 = var_0_66("iteminventory")

					var_51_15.revealed = false
					var_51_15.unlockLineProgress = 0
					var_51_15.isAppearing = false
					var_51_15.appearTimer = 0
					var_51_15.scaleX = 0
					var_51_15.scaleY = 0

					local var_51_16 = var_0_66("itemrefund")

					var_51_16.revealed = false
					var_51_16.unlockLineProgress = 0
					var_51_16.isAppearing = false
					var_51_16.appearTimer = 0
					var_51_16.scaleX = 0
					var_51_16.scaleY = 0

					local var_51_17 = var_0_66("iteminventory2")

					var_51_17.revealed = false
					var_51_17.unlockLineProgress = 0
					var_51_17.isAppearing = false
					var_51_17.appearTimer = 0
					var_51_17.scaleX = 0
					var_51_17.scaleY = 0

					local var_51_18 = var_0_66("itemresearch")

					var_51_18.revealed = false
					var_51_18.unlockLineProgress = 0
					var_51_18.isAppearing = false
					var_51_18.appearTimer = 0
					var_51_18.scaleX = 0
					var_51_18.scaleY = 0

					local var_51_19 = var_0_66("shoppin")

					var_51_19.revealed = false
					var_51_19.unlockLineProgress = 0
					var_51_19.isAppearing = false
					var_51_19.appearTimer = 0
					var_51_19.scaleX = 0
					var_51_19.scaleY = 0

					local var_51_20 = var_0_66("slotadvanced3")

					var_51_20.revealed = false
					var_51_20.unlockLineProgress = 0
					var_51_20.isAppearing = false
					var_51_20.appearTimer = 0
					var_51_20.scaleX = 0
					var_51_20.scaleY = 0

					local var_51_21 = var_0_66("slotrare")

					var_51_21.revealed = false
					var_51_21.unlockLineProgress = 0
					var_51_21.isAppearing = false
					var_51_21.appearTimer = 0
					var_51_21.scaleX = 0
					var_51_21.scaleY = 0

					local var_51_22 = var_0_66("preptime")

					var_51_22.revealed = false
					var_51_22.unlockLineProgress = 0
					var_51_22.isAppearing = false
					var_51_22.appearTimer = 0
					var_51_22.scaleX = 0
					var_51_22.scaleY = 0

					local var_51_23 = var_0_66("interest")

					var_51_23.revealed = false
					var_51_23.unlockLineProgress = 0
					var_51_23.isAppearing = false
					var_51_23.appearTimer = 0
					var_51_23.scaleX = 0
					var_51_23.scaleY = 0

					local var_51_24 = var_0_66("preptime2")

					var_51_24.revealed = false
					var_51_24.unlockLineProgress = 0
					var_51_24.isAppearing = false
					var_51_24.appearTimer = 0
					var_51_24.scaleX = 0
					var_51_24.scaleY = 0

					local var_51_25 = var_0_66("preptimerdisabled")

					var_51_25.revealed = false
					var_51_25.unlockLineProgress = 0
					var_51_25.isAppearing = false
					var_51_25.appearTimer = 0
					var_51_25.scaleX = 0
					var_51_25.scaleY = 0

					local var_51_26 = var_0_66("maxhp2")

					var_51_26.revealed = false
					var_51_26.unlockLineProgress = 0
					var_51_26.isAppearing = false
					var_51_26.appearTimer = 0
					var_51_26.scaleX = 0
					var_51_26.scaleY = 0
				elseif var_51_3 == "slotadvanced" then
					local var_51_27 = var_0_66("slotadvanced2")

					var_51_27.revealed = false
					var_51_27.unlockLineProgress = 0
					var_51_27.isAppearing = false
					var_51_27.appearTimer = 0
					var_51_27.scaleX = 0
					var_51_27.scaleY = 0

					local var_51_28 = var_0_66("corereroll")

					var_51_28.revealed = false
					var_51_28.unlockLineProgress = 0
					var_51_28.isAppearing = false
					var_51_28.appearTimer = 0
					var_51_28.scaleX = 0
					var_51_28.scaleY = 0

					local var_51_29 = var_0_66("firstcorespin")

					var_51_29.revealed = false
					var_51_29.unlockLineProgress = 0
					var_51_29.isAppearing = false
					var_51_29.appearTimer = 0
					var_51_29.scaleX = 0
					var_51_29.scaleY = 0

					local var_51_30 = var_0_66("firstcoreuncommon")

					var_51_30.revealed = false
					var_51_30.unlockLineProgress = 0
					var_51_30.isAppearing = false
					var_51_30.appearTimer = 0
					var_51_30.scaleX = 0
					var_51_30.scaleY = 0

					local var_51_31 = var_0_66("shopreroll")

					var_51_31.revealed = false
					var_51_31.unlockLineProgress = 0
					var_51_31.isAppearing = false
					var_51_31.appearTimer = 0
					var_51_31.scaleX = 0
					var_51_31.scaleY = 0

					local var_51_32 = var_0_66("iteminventory")

					var_51_32.revealed = false
					var_51_32.unlockLineProgress = 0
					var_51_32.isAppearing = false
					var_51_32.appearTimer = 0
					var_51_32.scaleX = 0
					var_51_32.scaleY = 0

					local var_51_33 = var_0_66("itemrefund")

					var_51_33.revealed = false
					var_51_33.unlockLineProgress = 0
					var_51_33.isAppearing = false
					var_51_33.appearTimer = 0
					var_51_33.scaleX = 0
					var_51_33.scaleY = 0

					local var_51_34 = var_0_66("iteminventory2")

					var_51_34.revealed = false
					var_51_34.unlockLineProgress = 0
					var_51_34.isAppearing = false
					var_51_34.appearTimer = 0
					var_51_34.scaleX = 0
					var_51_34.scaleY = 0

					local var_51_35 = var_0_66("itemresearch")

					var_51_35.revealed = false
					var_51_35.unlockLineProgress = 0
					var_51_35.isAppearing = false
					var_51_35.appearTimer = 0
					var_51_35.scaleX = 0
					var_51_35.scaleY = 0

					local var_51_36 = var_0_66("shoppin")

					var_51_36.revealed = false
					var_51_36.unlockLineProgress = 0
					var_51_36.isAppearing = false
					var_51_36.appearTimer = 0
					var_51_36.scaleX = 0
					var_51_36.scaleY = 0

					local var_51_37 = var_0_66("slotadvanced3")

					var_51_37.revealed = false
					var_51_37.unlockLineProgress = 0
					var_51_37.isAppearing = false
					var_51_37.appearTimer = 0
					var_51_37.scaleX = 0
					var_51_37.scaleY = 0

					local var_51_38 = var_0_66("slotrare")

					var_51_38.revealed = false
					var_51_38.unlockLineProgress = 0
					var_51_38.isAppearing = false
					var_51_38.appearTimer = 0
					var_51_38.scaleX = 0
					var_51_38.scaleY = 0
				elseif var_51_3 == "iteminventory" then
					local var_51_39 = var_0_66("itemrefund")

					var_51_39.revealed = false
					var_51_39.unlockLineProgress = 0
					var_51_39.isAppearing = false
					var_51_39.appearTimer = 0
					var_51_39.scaleX = 0
					var_51_39.scaleY = 0

					local var_51_40 = var_0_66("iteminventory2")

					var_51_40.revealed = false
					var_51_40.unlockLineProgress = 0
					var_51_40.isAppearing = false
					var_51_40.appearTimer = 0
					var_51_40.scaleX = 0
					var_51_40.scaleY = 0
				elseif var_51_3 == "slotadvanced2" then
					local var_51_41 = var_0_66("slotadvanced3")

					var_51_41.revealed = false
					var_51_41.unlockLineProgress = 0
					var_51_41.isAppearing = false
					var_51_41.appearTimer = 0
					var_51_41.scaleX = 0
					var_51_41.scaleY = 0

					local var_51_42 = var_0_66("slotrare")

					var_51_42.revealed = false
					var_51_42.unlockLineProgress = 0
					var_51_42.isAppearing = false
					var_51_42.appearTimer = 0
					var_51_42.scaleX = 0
					var_51_42.scaleY = 0
				elseif var_51_3 == "slotadvanced3" then
					local var_51_43 = var_0_66("slotrare")

					var_51_43.revealed = false
					var_51_43.unlockLineProgress = 0
					var_51_43.isAppearing = false
					var_51_43.appearTimer = 0
					var_51_43.scaleX = 0
					var_51_43.scaleY = 0
				elseif var_51_3 == "maxhp" then
					local var_51_44 = var_0_66("noviceshield")

					var_51_44.revealed = false
					var_51_44.unlockLineProgress = 0
					var_51_44.isAppearing = false
					var_51_44.appearTimer = 0
					var_51_44.scaleX = 0
					var_51_44.scaleY = 0

					local var_51_45 = var_0_66("startgold")

					var_51_45.revealed = false
					var_51_45.unlockLineProgress = 0
					var_51_45.isAppearing = false
					var_51_45.appearTimer = 0
					var_51_45.scaleX = 0
					var_51_45.scaleY = 0
				elseif var_51_3 == "noviceshield" then
					local var_51_46 = var_0_66("comebackspin")

					var_51_46.revealed = false
					var_51_46.unlockLineProgress = 0
					var_51_46.isAppearing = false
					var_51_46.appearTimer = 0
					var_51_46.scaleX = 0
					var_51_46.scaleY = 0
				elseif var_51_3 == "startgold" then
					local var_51_47 = var_0_66("comebackgold")

					var_51_47.revealed = false
					var_51_47.unlockLineProgress = 0
					var_51_47.isAppearing = false
					var_51_47.appearTimer = 0
					var_51_47.scaleX = 0
					var_51_47.scaleY = 0

					local var_51_48 = var_0_66("startgold2")

					var_51_48.revealed = false
					var_51_48.unlockLineProgress = 0
					var_51_48.isAppearing = false
					var_51_48.appearTimer = 0
					var_51_48.scaleX = 0
					var_51_48.scaleY = 0

					local var_51_49 = var_0_66("maxhp2")

					var_51_49.revealed = false
					var_51_49.unlockLineProgress = 0
					var_51_49.isAppearing = false
					var_51_49.appearTimer = 0
					var_51_49.scaleX = 0
					var_51_49.scaleY = 0
				elseif var_51_3 == "comebackgold" then
					local var_51_50 = var_0_66("maxhp2")

					var_51_50.revealed = false
					var_51_50.unlockLineProgress = 0
					var_51_50.isAppearing = false
					var_51_50.appearTimer = 0
					var_51_50.scaleX = 0
					var_51_50.scaleY = 0
				elseif var_51_3 == "comebackspin" then
					local var_51_51 = var_0_66("gateheal")

					var_51_51.revealed = false
					var_51_51.unlockLineProgress = 0
					var_51_51.isAppearing = false
					var_51_51.appearTimer = 0
					var_51_51.scaleX = 0
					var_51_51.scaleY = 0
				elseif var_51_3 == "maxunit" then
					local var_51_52 = var_0_66("maxunit2")

					var_51_52.revealed = false
					var_51_52.unlockLineProgress = 0
					var_51_52.isAppearing = false
					var_51_52.appearTimer = 0
					var_51_52.scaleX = 0
					var_51_52.scaleY = 0

					local var_51_53 = var_0_66("maxunit3")

					var_51_53.revealed = false
					var_51_53.unlockLineProgress = 0
					var_51_53.isAppearing = false
					var_51_53.appearTimer = 0
					var_51_53.scaleX = 0
					var_51_53.scaleY = 0

					local var_51_54 = var_0_66("slotnudge")

					var_51_54.revealed = false
					var_51_54.unlockLineProgress = 0
					var_51_54.isAppearing = false
					var_51_54.appearTimer = 0
					var_51_54.scaleX = 0
					var_51_54.scaleY = 0

					local var_51_55 = var_0_66("preptime")

					var_51_55.revealed = false
					var_51_55.unlockLineProgress = 0
					var_51_55.isAppearing = false
					var_51_55.appearTimer = 0
					var_51_55.scaleX = 0
					var_51_55.scaleY = 0

					local var_51_56 = var_0_66("preptimerdisabled")

					var_51_56.revealed = false
					var_51_56.unlockLineProgress = 0
					var_51_56.isAppearing = false
					var_51_56.appearTimer = 0
					var_51_56.scaleX = 0
					var_51_56.scaleY = 0
				elseif var_51_3 == "maxunit2" then
					local var_51_57 = var_0_66("maxunit3")

					var_51_57.revealed = false
					var_51_57.unlockLineProgress = 0
					var_51_57.isAppearing = false
					var_51_57.appearTimer = 0
					var_51_57.scaleX = 0
					var_51_57.scaleY = 0
				elseif var_51_3 == "preptime" then
					local var_51_58 = var_0_66("interest")

					var_51_58.revealed = false
					var_51_58.unlockLineProgress = 0
					var_51_58.isAppearing = false
					var_51_58.appearTimer = 0
					var_51_58.scaleX = 0
					var_51_58.scaleY = 0

					local var_51_59 = var_0_66("preptime2")

					var_51_59.revealed = false
					var_51_59.unlockLineProgress = 0
					var_51_59.isAppearing = false
					var_51_59.appearTimer = 0
					var_51_59.scaleX = 0
					var_51_59.scaleY = 0

					local var_51_60 = var_0_66("preptimerdisabled")

					var_51_60.revealed = false
					var_51_60.unlockLineProgress = 0
					var_51_60.isAppearing = false
					var_51_60.appearTimer = 0
					var_51_60.scaleX = 0
					var_51_60.scaleY = 0
				elseif var_51_3 == "preptime2" then
					local var_51_61 = var_0_66("preptimerdisabled")

					var_51_61.revealed = false
					var_51_61.unlockLineProgress = 0
					var_51_61.isAppearing = false
					var_51_61.appearTimer = 0
					var_51_61.scaleX = 0
					var_51_61.scaleY = 0
				end

				return {
					action = "upgrade_" .. var_51_3
				}
			end
		end
	end

	if arg_51_2 == 1 and var_0_63 then
		if var_0_64.plus then
			local var_51_62 = var_0_64.plus

			if arg_51_0 >= var_51_62.x and arg_51_0 <= var_51_62.x + var_51_62.w and arg_51_1 >= var_51_62.y and arg_51_1 <= var_51_62.y + var_51_62.h then
				return {
					action = "add_originite",
					amount = 10
				}
			end
		end

		if var_0_64.minus then
			local var_51_63 = var_0_64.minus

			if arg_51_0 >= var_51_63.x and arg_51_0 <= var_51_63.x + var_51_63.w and arg_51_1 >= var_51_63.y and arg_51_1 <= var_51_63.y + var_51_63.h then
				return {
					action = "add_originite",
					amount = -10
				}
			end
		end
	end

	if arg_51_2 == 2 then
		var_0_53 = true
		var_0_54, var_0_55 = 0, 0
		var_0_56 = arg_51_0
		var_0_57 = arg_51_1
		var_0_58 = var_0_43
		var_0_59 = var_0_44
	end
end

function var_0_0.keypressed(arg_52_0)
	if arg_52_0 == "f2" then
		var_0_63 = not var_0_63

		return
	end

	if arg_52_0 == "escape" then
		return "back"
	end

	return nil
end

function var_0_0.wheelmoved(arg_53_0, arg_53_1, arg_53_2, arg_53_3)
	local var_53_0 = tonumber(arg_53_1) or 0

	if var_53_0 == 0 then
		var_53_0 = tonumber(arg_53_0) or 0
	end

	if var_53_0 == 0 then
		return false
	end

	local var_53_1 = 1
	local var_53_2 = math.huge

	for iter_53_0, iter_53_1 in ipairs(var_0_46) do
		local var_53_3 = math.abs(iter_53_1 - var_0_47)

		if var_53_3 < var_53_2 then
			var_53_2 = var_53_3
			var_53_1 = iter_53_0
		end
	end

	if var_53_0 > 0 then
		var_53_1 = math.min(#var_0_46, var_53_1 + 1)
	else
		var_53_1 = math.max(1, var_53_1 - 1)
	end

	local var_53_4 = var_0_46[var_53_1]

	if math.abs(var_53_4 - var_0_47) < 0.0001 then
		return true
	end

	local var_53_5 = tonumber(arg_53_2) or var_0_51 / 2
	local var_53_6 = tonumber(arg_53_3) or var_0_52 / 2
	local var_53_7 = var_0_51 / 2 + (var_53_5 - var_0_51 / 2 - var_0_43) / var_0_45
	local var_53_8 = var_0_52 / 2 + (var_53_6 - var_0_52 / 2 - var_0_44) / var_0_45

	var_0_48 = var_53_5 - var_0_51 / 2 - (var_53_7 - var_0_51 / 2) * var_53_4
	var_0_49 = var_53_6 - var_0_52 / 2 - (var_53_8 - var_0_52 / 2) * var_53_4
	var_0_48, var_0_49 = var_0_61(var_0_48, var_0_49, var_53_4)
	var_0_47 = var_53_4
	var_0_50 = true

	return true
end

function var_0_0.mousereleased(arg_54_0, arg_54_1, arg_54_2)
	if arg_54_2 == 1 and var_0_25 then
		var_0_25.pressed = false
	end

	if arg_54_2 == 2 then
		var_0_53 = false

		if var_0_50 then
			local var_54_0 = var_0_47 / math.max(0.0001, var_0_45)

			var_0_48, var_0_49 = var_0_61(var_0_43 * var_54_0, var_0_44 * var_54_0, var_0_47)
		end
	end
end

function var_0_0.mousemoved(arg_55_0, arg_55_1, arg_55_2, arg_55_3)
	if var_0_53 then
		local var_55_0 = var_0_58 + (arg_55_0 - var_0_56)

		var_0_44, var_0_43 = var_0_59 + (arg_55_1 - var_0_57), var_55_0

		var_0_62()
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
	if var_0_86.maxunit3 and var_0_86.maxunit3.maxed then
		return 3
	end

	if var_0_86.maxunit2 and var_0_86.maxunit2.maxed then
		return 2
	end

	if var_0_86.maxunit.maxed then
		return 1
	end

	return 0
end

function var_0_0.getBaseHPBonus()
	if var_0_86.maxhp2 and var_0_86.maxhp2.maxed then
		return 2
	end

	if var_0_86.maxhp and var_0_86.maxhp.maxed then
		return 1
	end

	return 0
end

function var_0_0.getEarlyBaseShieldEnabled()
	return (var_0_86.noviceshield and var_0_86.noviceshield.maxed) == true
end

function var_0_0.getStartGoldBonus()
	if var_0_86.startgold2 and var_0_86.startgold2.maxed then
		return 100
	end

	return var_0_86.startgold and var_0_86.startgold.maxed and 50 or 0
end

function var_0_0.getComebackGuaranteedSpinEnabled()
	return (var_0_86.comebackspin and var_0_86.comebackspin.maxed) == true
end

function var_0_0.getGateRecoveryEnabled()
	return (var_0_86.gateheal and var_0_86.gateheal.maxed) == true
end

function var_0_0.getComebackGoldBonus()
	return var_0_86.comebackgold and var_0_86.comebackgold.maxed and 100 or 0
end

function var_0_0.getNudgeEnabled()
	return true
end

function var_0_0.getNudgeMissDiscountEnabled()
	return (var_0_86.slotnudge and var_0_86.slotnudge.maxed) == true
end

function var_0_0.getPrepTimeBonusSec()
	return 0
end

function var_0_0.isPrepTimerDisabled()
	return false
end

function var_0_0.getMaxInterestBonus()
	return var_0_86.interest and var_0_86.interest.maxed and 50 or 0
end

function var_0_0.getCoreFreeRerollBonus()
	return var_0_86.corereroll and var_0_86.corereroll.maxed and 1 or 0
end

function var_0_0.getFirstCoreSpinReqDelta()
	return var_0_86.firstcorespin and var_0_86.firstcorespin.maxed and -1 or 0
end

function var_0_0.getFirstCoreUncommonGuarantee()
	return var_0_86.firstcoreuncommon and var_0_86.firstcoreuncommon.maxed and 1 or 0
end

function var_0_0.getShopFirstRerollDiscount()
	return var_0_86.shopreroll and var_0_86.shopreroll.maxed and 1 or 0
end

function var_0_0.getItemInventoryAdd()
	if var_0_86.iteminventory2 and var_0_86.iteminventory2.maxed then
		return 2
	end

	return var_0_86.iteminventory and var_0_86.iteminventory.maxed and 1 or 0
end

function var_0_0.getItemRefundRate()
	return var_0_86.itemrefund and var_0_86.itemrefund.maxed and 0.8 or 0.5
end

function var_0_0.getItemResearchTier()
	return var_0_86.itemresearch and var_0_86.itemresearch.maxed and 1 or 0
end

function var_0_0.getShopPinCount()
	return var_0_86.shoppin and var_0_86.shoppin.maxed and 1 or 0
end

return var_0_0
