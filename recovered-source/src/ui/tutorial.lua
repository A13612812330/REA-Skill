local var_0_0 = {}
local var_0_1 = require("src.data.language")

local function var_0_2()
	local var_1_0 = rawget(_G, "Controller")

	return var_1_0 and var_1_0.isPad and var_1_0.isPad() and var_1_0 or nil
end

local function var_0_3(arg_2_0)
	local var_2_0 = _G.currentGameLang or "ko"

	if var_0_2() then
		local var_2_1 = "tutorial_pad_" .. tostring(arg_2_0)
		local var_2_2 = var_0_1.getText(var_2_1, var_2_0)

		if var_2_2 ~= var_2_1 then
			return var_2_2
		end
	end

	return var_0_1.getText("tutorial_" .. tostring(arg_2_0), var_2_0)
end

local var_0_4 = {
	active = false,
	pending = false,
	step = 0,
	skipped = false,
	running = false,
	t = 0
}
local var_0_5
local var_0_6
local var_0_7
local var_0_8
local var_0_9
local var_0_10
local var_0_11
local var_0_12
local var_0_13 = {}
local var_0_14
local var_0_15

STEP_SLOT = 1
STEP_GOLD = 2
STEP_ARCHER_WIN = 3
STEP_SECOND_SPIN = 4
STEP_SECOND_SPINNING = 5
STEP_WARRIOR_WIN = 6
STEP_UNIT_HOVER = 7
STEP_POSITION = 8
STEP_BATTLE_READY = 9
STEP_BATTLE_FREE = 10
STEP_WAVE_REWARD = 11
STEP_REWARD_SPIN = 12
STEP_REWARD_SPINNING = 13
STEP_MORE_SPIN = 14
STEP_MORE_SPINNING = 15
STEP_NUDGE_MISS = 16
STEP_NUDGE_ACTION = 17
STEP_NUDGE_WIN = 18
STEP_ABSORB_BUTTON = 19
STEP_ABSORB_DRAG = 20
STEP_ABSORB_MODAL = 21
STEP_IMPRINT_INSPECT = 22
STEP_FINAL_READY = 23
STEP_CORE_COUNTER = 24
STEP_CORE_SPIN = 25
STEP_CORE_SPINNING = 26
STEP_CORE_SELECT = 27
STEP_POST_CORE_SLOT = 28
STEP_POST_CORE_SPINNING = 29
STEP_POST_CORE_ARCHER_WIN = 30
STEP_POST_CORE_SECOND_SPIN = 31
STEP_POST_CORE_SECOND_SPINNING = 32
STEP_SLOT_BROKEN = 33
STEP_MAX_UNIT_NOTICE = 34
STEP_FREE_ABSORB_BUTTON = 35
STEP_FREE_ABSORB = 36
STEP_CLASS_PROMOTION = 37
STEP_CLASS_SKILL_HOVER = 38
STEP_CLASS_CHOOSE = 39
STEP_PROMOTED_ARCHER = 40
STEP_SHOP_INTRO = 41
STEP_SHOP_CURRENCY = 42
STEP_SHOP_BUY = 43
STEP_SHOP_ITEM_BOUGHT = 44
STEP_SHOP_RETURN = 45
STEP_WAVE_TYPES = 46
STEP_TUTORIAL_COMPLETE = 47

local var_0_16 = 1.2
local var_0_17 = 5
local var_0_18 = 3
local var_0_19 = 2.5

local function var_0_20()
	return (var_0_4.skipLockElapsed or 0) >= var_0_17
end

local function var_0_21(arg_4_0)
	if not love or not love.graphics or not love.graphics.newFont then
		return nil
	end

	local var_4_0 = require("src.data.font_resolver")

	arg_4_0 = var_4_0.resolve(arg_4_0)

	local var_4_1, var_4_2 = pcall(love.graphics.newFont, arg_4_0)

	if var_4_1 and var_4_2 then
		var_4_2:setFilter("nearest", "nearest")

		return var_4_0.attachFallbacks(var_4_2, arg_4_0)
	end

	return nil
end

local var_0_22 = false

local function var_0_23()
	if var_0_5 or var_0_22 then
		return
	end

	var_0_22 = true
	var_0_5 = var_0_21("src/data/font/Galmuri9W.fnt")
end

local function var_0_24()
	if var_0_6 ~= nil then
		return var_0_6 or nil
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	local var_6_0, var_6_1 = pcall(love.graphics.newImage, "src/sprites/background/mainbackground/tutorialwindow.png")

	if var_6_0 and var_6_1 then
		var_6_1:setFilter("nearest", "nearest")

		var_0_6 = var_6_1

		return var_0_6
	end

	var_0_6 = false

	return nil
end

local function var_0_25()
	if var_0_7 ~= nil then
		return var_0_7 or nil
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	local var_7_0, var_7_1 = pcall(love.graphics.newImage, "src/sprites/mainmenu/tutorial.png")

	if var_7_0 and var_7_1 then
		var_7_1:setFilter("nearest", "nearest")

		var_0_7 = var_7_1

		return var_0_7
	end

	var_0_7 = false

	return nil
end

local var_0_26 = {}

local function var_0_27()
	if var_0_12 then
		return var_0_12
	end

	if var_0_26.gold then
		return nil
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	var_0_26.gold = true

	local var_8_0 = {
		"src/sprites/icons/tooltip/gold.png",
		"src/sprites/icons/menu/gold.png"
	}

	for iter_8_0, iter_8_1 in ipairs(var_8_0) do
		local var_8_1, var_8_2 = pcall(love.graphics.newImage, iter_8_1)

		if var_8_1 and var_8_2 then
			var_8_2:setFilter("nearest", "nearest")

			var_0_12 = var_8_2

			return var_0_12
		end
	end

	return nil
end

local function var_0_28(arg_9_0)
	arg_9_0 = arg_9_0 == "mouseLeft" and "mouseLeft" or "mouseRight"

	local var_9_0 = var_0_2()

	if var_9_0 and var_9_0.actionGlyphImage then
		local var_9_1 = var_9_0.actionGlyphImage(arg_9_0 == "mouseLeft" and "confirm" or "inspect")

		if var_9_1 then
			return var_9_1
		end
	end

	if var_0_13[arg_9_0] then
		return var_0_13[arg_9_0]
	end

	if var_0_26[arg_9_0] then
		return nil
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	var_0_26[arg_9_0] = true

	local var_9_2 = arg_9_0 == "mouseLeft" and "mouserleftsmall.png" or "mouserightsmall.png"
	local var_9_3, var_9_4 = pcall(love.graphics.newImage, "src/sprites/icons/tooltip/" .. var_9_2)

	if var_9_3 and var_9_4 then
		var_9_4:setFilter("nearest", "nearest")

		var_0_13[arg_9_0] = var_9_4
	end

	return var_0_13[arg_9_0]
end

local function var_0_29(arg_10_0)
	if arg_10_0 == "judgement" and var_0_14 then
		return var_0_14
	end

	if arg_10_0 == "boss" and var_0_15 then
		return var_0_15
	end

	local var_10_0 = arg_10_0 == "judgement" and "waveJudgement" or "waveBoss"

	if var_0_26[var_10_0] then
		return nil
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	var_0_26[var_10_0] = true

	local var_10_1 = arg_10_0 == "judgement" and "src/sprites/icons/battlefieldicons/battle_small.png" or "src/sprites/icons/battlefieldicons/boss.png"
	local var_10_2, var_10_3 = pcall(love.graphics.newImage, var_10_1)

	if var_10_2 and var_10_3 then
		var_10_3:setFilter("nearest", "nearest")

		if arg_10_0 == "judgement" then
			var_0_14 = var_10_3
		else
			var_0_15 = var_10_3
		end

		return var_10_3
	end

	return nil
end

local function var_0_30()
	if not var_0_8 and not var_0_26.coreButton and love and love.graphics then
		var_0_26.coreButton = true

		local var_11_0 = "src/sprites/background/button/corescrollbutton.png"
		local var_11_1, var_11_2 = pcall(love.graphics.newImage, var_11_0)

		if var_11_1 and var_11_2 then
			var_11_2:setFilter("nearest", "nearest")

			var_0_8 = var_11_2
		end

		if love.image and love.image.newImageData then
			local var_11_3, var_11_4 = pcall(love.image.newImageData, var_11_0)

			if var_11_3 then
				var_0_9 = var_11_4
			end
		end
	end

	return var_0_8
end

local function var_0_31()
	if var_0_10 or not love or not love.graphics or not love.graphics.newShader then
		return var_0_10
	end

	local var_12_0 = "    extern vec2 texelStep;\n    extern vec4 outlineColor;\n    extern float threshold;\n    extern float radiusPx;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold) {\n        vec2 s = texelStep;\n        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n        if (radiusPx > 1.5) {\n          vec2 t = s * 2.0;\n          float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;\n          float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;\n          float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;\n          float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;\n          float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;\n          float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;\n          float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;\n          float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;\n          float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));\n          neighbor = max(neighbor, neighbor2);\n        }\n        if (neighbor > threshold) return outlineColor;\n      }\n      return vec4(0.0);\n    }\n  "
	local var_12_1, var_12_2 = pcall(love.graphics.newShader, var_12_0)

	if var_12_1 then
		var_0_10 = var_12_2
	end

	return var_0_10
end

local function var_0_32()
	if var_0_11 or not love or not love.graphics or not love.graphics.newShader then
		return var_0_11
	end

	local var_13_0 = "    extern float threshold;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      vec4 px = Texel(tex, tc) * color;\n      if (px.a <= threshold) discard;\n      return px;\n    }\n  "
	local var_13_1, var_13_2 = pcall(love.graphics.newShader, var_13_0)

	if var_13_1 then
		var_0_11 = var_13_2

		var_0_11:send("threshold", 0.01)
	end

	return var_0_11
end

local function var_0_33(arg_14_0, arg_14_1, arg_14_2)
	return arg_14_2 and arg_14_0 >= arg_14_2.x and arg_14_0 <= arg_14_2.x + arg_14_2.w and arg_14_1 >= arg_14_2.y and arg_14_1 <= arg_14_2.y + arg_14_2.h
end

local function var_0_34(arg_15_0)
	if arg_15_0 and arg_15_0.battle and tonumber(arg_15_0.battle.allySize32) and arg_15_0.battle.allySize32 > 0 then
		return math.max(1, math.floor(arg_15_0.battle.allySize32 / 32 + 0.5))
	end

	return math.max(1, math.floor(tonumber(arg_15_0 and arg_15_0.battle and arg_15_0.battle.unitScale) or 2))
end

local var_0_35 = 168

local function var_0_36(arg_16_0)
	var_0_23()

	return arg_16_0 and arg_16_0.classCard and arg_16_0.classCard.font or arg_16_0 and arg_16_0.fontClassCard or var_0_5 or love and love.graphics and love.graphics.getFont()
end

local function var_0_37(arg_17_0, arg_17_1)
	arg_17_1 = arg_17_1 or {}

	local var_17_0 = _G.currentGameLang or "ko"

	if arg_17_0 == 1 then
		return {
			{
				text = "SlotBound",
				color = arg_17_1.brand
			},
			{
				text = var_0_3("welcome_suffix")
			}
		}
	end

	local var_17_1

	if arg_17_0 == 2 then
		var_17_1 = var_17_0 == "ja" and "、" or ","
	else
		var_17_1 = var_17_0 == "ja" and "。" or "."
	end

	return {
		{
			text = var_0_3("welcome_body_" .. arg_17_0 - 1 .. "_prefix")
		},
		{
			text = var_0_3("welcome_body_" .. arg_17_0 - 1 .. "_keyword"),
			color = arg_17_1.keyword
		},
		{
			text = var_17_1
		}
	}
end

local function var_0_38(arg_18_0, arg_18_1, arg_18_2)
	local var_18_0 = {}
	local var_18_1 = {}
	local var_18_2 = 0

	local function var_18_3()
		if #var_18_1 > 0 then
			var_18_1[#var_18_1].text = var_18_1[#var_18_1].text:gsub("%s+$", "")
			var_18_0[#var_18_0 + 1] = var_18_1
		end

		var_18_1, var_18_2 = {}, 0
	end

	for iter_18_0, iter_18_1 in ipairs(arg_18_1) do
		for iter_18_2 in tostring(iter_18_1.text or ""):gmatch("%s*%S+%s*") do
			local var_18_4 = iter_18_2

			if #var_18_1 == 0 then
				var_18_4 = var_18_4:gsub("^%s+", "")
			end

			if #var_18_1 > 0 and arg_18_2 < var_18_2 + arg_18_0:getWidth((var_18_4:gsub("%s+$", ""))) then
				var_18_3()

				var_18_4 = iter_18_2:gsub("^%s+", "")
			end

			var_18_1[#var_18_1 + 1] = {
				text = var_18_4,
				color = iter_18_1.color
			}
			var_18_2 = var_18_2 + arg_18_0:getWidth(var_18_4)
		end
	end

	var_18_3()

	return var_18_0
end

local var_0_39 = {}

local function var_0_40(arg_20_0, arg_20_1, arg_20_2, arg_20_3, arg_20_4)
	if (arg_20_4 or 0) <= 0 then
		love.graphics.draw(arg_20_0, arg_20_1, arg_20_2, 0, arg_20_3, arg_20_3)

		return
	end

	local var_20_0, var_20_1 = arg_20_0:getDimensions()

	local function var_20_2(arg_21_0, arg_21_1)
		local var_21_0 = arg_21_0 * 1000 + arg_21_1

		if not var_0_39[var_21_0] then
			var_0_39[var_21_0] = love.graphics.newQuad(0, arg_21_0, var_20_0, arg_21_1, var_20_0, var_20_1)
		end

		return var_0_39[var_21_0]
	end

	love.graphics.draw(arg_20_0, var_20_2(0, 37), arg_20_1, arg_20_2, 0, arg_20_3, arg_20_3)

	local var_20_3 = arg_20_2 + 37 * arg_20_3
	local var_20_4 = arg_20_4

	while var_20_4 > 0 do
		local var_20_5 = math.min(3, var_20_4)

		love.graphics.draw(arg_20_0, var_20_2(34, var_20_5), arg_20_1, var_20_3, 0, arg_20_3, arg_20_3)

		var_20_3, var_20_4 = var_20_3 + var_20_5 * arg_20_3, var_20_4 - var_20_5
	end

	love.graphics.draw(arg_20_0, var_20_2(37, var_20_1 - 37), arg_20_1, var_20_3, 0, arg_20_3, arg_20_3)
end

local function var_0_41(arg_22_0)
	local var_22_0 = arg_22_0 and arg_22_0.virtual and arg_22_0.virtual.W or 640
	local var_22_1 = arg_22_0 and arg_22_0.virtual and arg_22_0.virtual.H or 360
	local var_22_2 = var_0_34(arg_22_0)
	local var_22_3 = var_0_24()
	local var_22_4 = var_0_30()
	local var_22_5 = (var_22_3 and var_22_3:getWidth() or 107) * var_22_2
	local var_22_6 = (var_22_3 and var_22_3:getHeight() or 109) * var_22_2
	local var_22_7 = arg_22_0 and arg_22_0.coreSelect and arg_22_0.coreSelect.buttons and arg_22_0.coreSelect.buttons.scale or 2
	local var_22_8 = var_0_36(arg_22_0)
	local var_22_9 = arg_22_0 and arg_22_0.tutorial and arg_22_0.tutorial.bodyLines or {}
	local var_22_10 = tonumber((var_22_9[2] or {}).offsetY) or 61
	local var_22_11 = (tonumber((var_22_9[3] or {}).offsetY) or 77) - var_22_10
	local var_22_12 = 2
	local var_22_13 = 0

	if var_22_8 then
		var_22_12 = #var_0_38(var_22_8, var_0_37(2), var_0_35) + #var_0_38(var_22_8, var_0_37(3), var_0_35)

		local var_22_14 = arg_22_0 and arg_22_0.coreSelect and arg_22_0.coreSelect.buttons and arg_22_0.coreSelect.buttons.labelScale or 1
		local var_22_15 = math.max(var_22_8:getWidth(var_0_3("start")), var_22_8:getWidth(var_0_3("skip"))) * var_22_14

		var_22_13 = require("src.ui.widgets").core_button.extraFor(var_22_15, var_22_7)
	end

	local var_22_16 = math.ceil(math.max(0, var_22_12 - 2) * var_22_11 / var_22_2)
	local var_22_17 = var_22_6 + var_22_16 * var_22_2
	local var_22_18 = ((var_22_4 and var_22_4:getWidth() or 64) + var_22_13) * var_22_7
	local var_22_19 = (var_22_4 and var_22_4:getHeight() or 16) * var_22_7
	local var_22_20 = arg_22_0 and arg_22_0.coreSelect and arg_22_0.coreSelect.buttons and arg_22_0.coreSelect.buttons.gapPx or 20
	local var_22_21 = 8
	local var_22_22 = var_22_17 + var_22_21 + var_22_19
	local var_22_23 = math.floor((var_22_0 - var_22_5) * 0.5 / var_22_2 + 0.5) * var_22_2
	local var_22_24 = math.floor((var_22_1 - var_22_22) * 0.5 / var_22_2 + 0.5) * var_22_2
	local var_22_25 = math.floor((var_22_0 - (var_22_18 * 2 + var_22_20)) * 0.5 + 0.5)
	local var_22_26 = var_22_24 + var_22_17 + var_22_21

	return {
		W = var_22_0,
		H = var_22_1,
		panel = {
			x = var_22_23,
			y = var_22_24,
			w = var_22_5,
			h = var_22_17,
			scale = var_22_2
		},
		buttonScale = var_22_7,
		buttonExtraSrc = var_22_13,
		windowExtraRows = var_22_16,
		start = {
			x = var_22_25,
			y = var_22_26,
			w = var_22_18,
			h = var_22_19
		},
		skip = {
			x = var_22_25 + var_22_18 + var_22_20,
			y = var_22_26,
			w = var_22_18,
			h = var_22_19
		}
	}
end

local function var_0_42(arg_23_0, arg_23_1, arg_23_2)
	local var_23_0 = arg_23_0 and arg_23_0[arg_23_1]

	if not var_23_0 then
		return nil
	end

	local var_23_1 = arg_23_2 and arg_23_2.coreSelect and arg_23_2.coreSelect.buttons or {}
	local var_23_2 = var_23_1.hover and var_23_1.hover.liftPx or 4
	local var_23_3 = arg_23_1 == "start" and (var_0_4.hoverStart or 0) or var_0_4.hoverSkip or 0

	return {
		x = var_23_0.x,
		y = var_23_0.y - math.floor(var_23_2 * var_23_3 + 0.5),
		w = var_23_0.w,
		h = var_23_0.h
	}
end

local function var_0_43(arg_24_0, arg_24_1, arg_24_2, arg_24_3, arg_24_4)
	if not var_0_33(arg_24_0, arg_24_1, arg_24_2) then
		return false
	end

	if not var_0_9 then
		return true
	end

	local var_24_0 = math.floor(require("src.ui.widgets").core_button.sourceX((arg_24_0 - arg_24_2.x) / arg_24_3, arg_24_4))
	local var_24_1 = math.floor((arg_24_1 - arg_24_2.y) / arg_24_3)
	local var_24_2, var_24_3 = var_0_9:getDimensions()

	if var_24_0 < 0 or var_24_1 < 0 or var_24_2 <= var_24_0 or var_24_3 <= var_24_1 then
		return false
	end

	local var_24_4, var_24_5, var_24_6, var_24_7 = var_0_9:getPixel(var_24_0, var_24_1)

	return (var_24_7 or 0) > 0.05
end

function var_0_0.beginForRun(arg_25_0, arg_25_1, arg_25_2)
	if not (not arg_25_2 or not arg_25_2.menuSettings or arg_25_2.menuSettings.tutorialEnabled ~= false) or tonumber(arg_25_0) ~= 1 or tonumber(arg_25_1) ~= 1 then
		var_0_4.active = false
		var_0_4.pending = false
		var_0_4.running = false

		return false
	end

	var_0_4.active = false
	var_0_4.pending = true
	var_0_4.running = false
	var_0_4.skipped = false
	var_0_4.step = 0
	var_0_4.t = 0
	var_0_4.skipLockElapsed = 0
	var_0_4.stepElapsed = 0
	var_0_4.hovered = nil
	var_0_4.hoverStart = 0
	var_0_4.hoverSkip = 0
	var_0_4.buttons = nil
	var_0_4.winRosterIndex = nil
	var_0_4.archerRosterIndex = nil
	var_0_4.archerRef = nil
	var_0_4.warriorRosterIndex = nil
	var_0_4.mageRosterIndex = nil
	var_0_4.spearRosterIndex = nil
	var_0_4.extraWarriorRosterIndex = nil
	var_0_4.postCoreArcherRosterIndex = nil
	var_0_4.postCoreArcherRef = nil
	var_0_4.promotedUnitRef = nil
	var_0_4.postCoreSpearCount = 0
	var_0_4.classSkillHovered = nil
	var_0_4.classSkillCompleteT = nil
	var_0_4.promotedName = nil
	var_0_4.unitHoverT = 0
	var_0_4.unitHoverCount = 0
	var_0_4.unitHoverWasOver = false
	var_0_4.movedArcher = false
	var_0_4.movedWarrior = false
	var_0_4.dragStartRef, var_0_4.dragStartX, var_0_4.dragStartY = nil

	return true
end

function var_0_0.isPending()
	return var_0_4.pending == true
end

function var_0_0.activatePending()
	if not var_0_4.pending then
		return false
	end

	var_0_4.pending = false
	var_0_4.active = true
	var_0_4.t = 0
	var_0_4.skipLockElapsed = 0
	var_0_4.hovered = nil
	var_0_4.hoverStart = 0
	var_0_4.hoverSkip = 0
	var_0_4.buttons = nil

	return true
end

function var_0_0.isActive()
	return var_0_4.active == true
end

function var_0_0.isRunning()
	return var_0_4.running == true
end

function var_0_0.isOverlayVisible()
	return var_0_4.active == true or var_0_4.running == true and var_0_4.step ~= STEP_BATTLE_FREE and var_0_4.step >= STEP_SLOT and var_0_4.step <= STEP_TUTORIAL_COMPLETE
end

function var_0_0.stop(arg_31_0)
	var_0_4.active = false
	var_0_4.pending = false
	var_0_4.running = false
	var_0_4.skipped = false
	var_0_4.step = 0
	var_0_4.t = 0
	var_0_4.skipLockElapsed = 0
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0
	var_0_4.spinStarted = false
	var_0_4.hovered = nil
	var_0_4.buttons = nil
	var_0_4.winLayout = nil
	var_0_4.winRosterIndex = nil
	var_0_4.archerRosterIndex = nil
	var_0_4.archerRef = nil
	var_0_4.warriorRosterIndex = nil
	var_0_4.mageRosterIndex = nil
	var_0_4.spearRosterIndex = nil
	var_0_4.extraWarriorRosterIndex = nil
	var_0_4.postCoreArcherRosterIndex = nil
	var_0_4.postCoreArcherRef = nil
	var_0_4.promotedUnitRef = nil
	var_0_4.postCoreSpearCount = 0
	var_0_4.classSkillHovered = nil
	var_0_4.classSkillCompleteT = nil
	var_0_4.promotedName = nil
	var_0_4.unitHoverT = 0
	var_0_4.unitHoverCount = 0
	var_0_4.unitHoverWasOver = false
	var_0_4.movedArcher = false
	var_0_4.movedWarrior = false
	var_0_4.dragStartRef, var_0_4.dragStartX, var_0_4.dragStartY = nil

	local var_31_0 = rawget(_G, "slot")

	if var_31_0 then
		var_31_0._tutorialSpin = false
		var_31_0.stopTimes = nil

		if var_31_0._coreSpinMods then
			var_31_0._coreSpinMods.forceCells = nil
		end
	end

	if arg_31_0 then
		arg_31_0._tutorialBlockNonSlot = false
		arg_31_0._tutorialAllowReadyIcon = false
		arg_31_0._tutorialAllowUnitInteraction = false
		arg_31_0._tutorialCursorX = nil
		arg_31_0._tutorialCursorY = nil
		arg_31_0._tutorialRunning = nil
		arg_31_0._tutorialShopIntroFocus = nil
		arg_31_0._tutorialBattleReturnFocus = nil
	end

	return true
end

function var_0_0.getStep()
	return var_0_4.step or 0
end

function var_0_0.isSlotStep()
	return var_0_4.running == true and var_0_4.step ~= STEP_BATTLE_FREE and var_0_4.step >= STEP_SLOT and var_0_4.step <= STEP_TUTORIAL_COMPLETE
end

function var_0_0.isBattleReadyStep()
	return var_0_4.running == true and (var_0_4.step == STEP_BATTLE_READY or var_0_4.step == STEP_FINAL_READY)
end

function var_0_0.isUnitHoverStep()
	return var_0_4.running == true and var_0_4.step == STEP_UNIT_HOVER
end

function var_0_0.isPromotedUnitStep()
	return var_0_4.running == true and var_0_4.step == STEP_PROMOTED_ARCHER
end

function var_0_0.isPositionStep()
	return var_0_4.running == true and var_0_4.step == STEP_POSITION
end

function var_0_0.isNudgeActionStep()
	return var_0_4.running == true and var_0_4.step == STEP_NUDGE_ACTION
end

function var_0_0.isAbsorbButtonStep()
	return var_0_4.running == true and (var_0_4.step == STEP_ABSORB_BUTTON or var_0_4.step == STEP_FREE_ABSORB_BUTTON)
end

function var_0_0.isAbsorbDragStep()
	return var_0_4.running == true and var_0_4.step == STEP_ABSORB_DRAG
end

function var_0_0.isFreeAbsorbStep()
	return var_0_4.running == true and var_0_4.step == STEP_FREE_ABSORB
end

function var_0_0.isAbsorbModalStep()
	return var_0_4.running == true and var_0_4.step == STEP_ABSORB_MODAL
end

function var_0_0.isImprintInspectStep()
	return var_0_4.running == true and var_0_4.step == STEP_IMPRINT_INSPECT
end

function var_0_0.isFinalReadyStep()
	return var_0_4.running == true and var_0_4.step == STEP_FINAL_READY
end

function var_0_0.isCoreSelectStep()
	return var_0_4.running == true and var_0_4.step == STEP_CORE_SELECT
end

function var_0_0.isClassPromotionStep()
	return var_0_4.running == true and (var_0_4.step == STEP_CLASS_PROMOTION or var_0_4.step == STEP_CLASS_SKILL_HOVER or var_0_4.step == STEP_CLASS_CHOOSE)
end

function var_0_0.isClassSkillHoverStep()
	return var_0_4.running == true and var_0_4.step == STEP_CLASS_SKILL_HOVER
end

function var_0_0.isClassChooseStep()
	return var_0_4.running == true and var_0_4.step == STEP_CLASS_CHOOSE
end

function var_0_0.isShopIntroStep()
	return var_0_4.running == true and var_0_4.step == STEP_SHOP_INTRO
end

function var_0_0.isShopBuyStep()
	return var_0_4.running == true and var_0_4.step == STEP_SHOP_BUY
end

function var_0_0.isShopReturnStep()
	return var_0_4.running == true and var_0_4.step == STEP_SHOP_RETURN
end

function var_0_0.onShopIntroOpened()
	if not var_0_0.isShopIntroStep() then
		return false
	end

	var_0_4.step = STEP_SHOP_CURRENCY
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0

	return true
end

function var_0_0.prepareShopOffers(arg_53_0)
	if not var_0_4.running or not (var_0_4.step >= STEP_SHOP_CURRENCY) or not (var_0_4.step <= STEP_SHOP_RETURN) or not arg_53_0 then
		return false
	end

	local var_53_0, var_53_1 = pcall(require, "src.game.item")

	if not var_53_0 or not var_53_1 or not var_53_1.getById then
		return false
	end

	local var_53_2 = var_53_1.getById("SturdyFist")
	local var_53_3 = var_53_1.getById("SturdyShield")
	local var_53_4 = var_53_1.getById("FirstAid")

	if not var_53_2 or not var_53_3 or not var_53_4 then
		return false
	end

	arg_53_0._itemOffers = {
		var_53_2,
		var_53_3,
		var_53_4
	}
	arg_53_0._itemShopPurchased = {}
	var_0_4.shopTargetIndex = 1

	return true
end

function var_0_0.hitTestShopBuy(arg_54_0, arg_54_1, arg_54_2)
	if not var_0_0.isShopBuyStep() then
		return false
	end

	local var_54_0 = arg_54_0 and arg_54_0._tutorialShopOfferRects
	local var_54_1 = var_54_0 and var_54_0[var_0_4.shopTargetIndex or 1]

	return var_54_1 and arg_54_1 >= var_54_1.x and arg_54_1 <= var_54_1.x + var_54_1.w and arg_54_2 >= var_54_1.y and arg_54_2 <= var_54_1.y + var_54_1.h or false
end

function var_0_0.onShopItemPurchased(arg_55_0, arg_55_1)
	if not var_0_0.isShopBuyStep() then
		return false
	end

	if not arg_55_0 or arg_55_0.key ~= "SturdyFist" or tonumber(arg_55_1) ~= (var_0_4.shopTargetIndex or 1) then
		return false
	end

	var_0_4.step = STEP_SHOP_ITEM_BOUGHT
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0

	return true
end

function var_0_0.onBattlefieldReturned()
	if not var_0_0.isShopReturnStep() then
		return false
	end

	var_0_4.step = STEP_WAVE_TYPES
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0

	return true
end

function var_0_0.isFreeRosterControlStep()
	return var_0_4.running == true and var_0_4.step == STEP_FINAL_READY
end

function var_0_0.shouldDimMainBackground()
	if not var_0_4.running then
		return false
	end

	return var_0_4.step == STEP_POSITION or var_0_4.step == STEP_ABSORB_DRAG or var_0_4.step == STEP_FREE_ABSORB or var_0_4.step == STEP_IMPRINT_INSPECT or var_0_4.step == STEP_FINAL_READY or var_0_4.step == STEP_WAVE_TYPES or var_0_4.step == STEP_TUTORIAL_COMPLETE
end

function var_0_0.getMainBackgroundDimAlpha()
	if not var_0_0.shouldDimMainBackground() then
		return 1
	end

	if var_0_4.step == STEP_ABSORB_DRAG or var_0_4.step == STEP_FREE_ABSORB then
		return 0.62
	end

	return 0.35
end

function var_0_0.requiresAbsorbConfirmOnly()
	return var_0_0.isAbsorbModalStep()
end

function var_0_0.allowsUnitHover()
	return var_0_4.running == true and (var_0_4.step == STEP_UNIT_HOVER or var_0_4.step == STEP_POSITION or var_0_4.step == STEP_ABSORB_DRAG or var_0_4.step == STEP_FREE_ABSORB or var_0_4.step == STEP_IMPRINT_INSPECT or var_0_4.step == STEP_FINAL_READY or var_0_4.step == STEP_PROMOTED_ARCHER or var_0_4.step == STEP_SHOP_INTRO)
end

function var_0_0.getGuidedSpinKind()
	if not var_0_4.running then
		return nil
	end

	if var_0_4.step == STEP_SLOT then
		return "archer"
	end

	if var_0_4.step == STEP_SECOND_SPIN then
		return "warrior"
	end

	if var_0_4.step == STEP_REWARD_SPIN then
		return "mage_spear"
	end

	if var_0_4.step == STEP_MORE_SPIN then
		return "nudge_setup"
	end

	if var_0_4.step == STEP_CORE_SPIN then
		return "core_no_win"
	end

	if var_0_4.step == STEP_POST_CORE_SLOT then
		return "post_core_archer"
	end

	if var_0_4.step == STEP_POST_CORE_SECOND_SPIN then
		return "post_core_spears"
	end

	return nil
end

function var_0_0.canContinueFromWin()
	local var_63_0 = var_0_4.step == STEP_ARCHER_WIN or var_0_4.step == STEP_WARRIOR_WIN or var_0_4.step == STEP_WAVE_REWARD or var_0_4.step == STEP_NUDGE_MISS or var_0_4.step == STEP_NUDGE_WIN or var_0_4.step == STEP_CORE_COUNTER or var_0_4.step == STEP_POST_CORE_ARCHER_WIN or var_0_4.step == STEP_SLOT_BROKEN or var_0_4.step == STEP_MAX_UNIT_NOTICE or var_0_4.step == STEP_CLASS_PROMOTION or var_0_4.step == STEP_PROMOTED_ARCHER or var_0_4.step == STEP_SHOP_CURRENCY or var_0_4.step == STEP_SHOP_ITEM_BOUGHT or var_0_4.step == STEP_WAVE_TYPES or var_0_4.step == STEP_TUTORIAL_COMPLETE

	return var_0_4.running == true and var_63_0 and (var_0_4.stepElapsed or 0) >= var_0_16 + 0.35
end

function var_0_0.continueFromWin()
	if not var_0_0.canContinueFromWin() then
		return false
	end

	if var_0_4.step == STEP_ARCHER_WIN then
		var_0_4.step = STEP_SECOND_SPIN
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_WARRIOR_WIN then
		var_0_4.step = STEP_UNIT_HOVER
		var_0_4.unitHoverT = 0
		var_0_4.unitHoverCount = 0
		var_0_4.unitHoverWasOver = false
		var_0_4.stepT = 1
	elseif var_0_4.step == STEP_WAVE_REWARD then
		var_0_4.step = STEP_REWARD_SPIN
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_NUDGE_MISS then
		var_0_4.step = STEP_NUDGE_ACTION
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_NUDGE_WIN then
		var_0_4.nudgePressed = false
		var_0_4.step = STEP_ABSORB_BUTTON
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_CORE_COUNTER then
		var_0_4.step = STEP_CORE_SPIN
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_POST_CORE_ARCHER_WIN then
		var_0_4.step = STEP_POST_CORE_SECOND_SPIN
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_SLOT_BROKEN then
		var_0_4.step = STEP_MAX_UNIT_NOTICE
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_MAX_UNIT_NOTICE then
		var_0_4.step = STEP_FREE_ABSORB_BUTTON
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_CLASS_PROMOTION then
		var_0_4.step = STEP_CLASS_CHOOSE
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_PROMOTED_ARCHER then
		var_0_4.step = STEP_SHOP_INTRO
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_SHOP_CURRENCY then
		var_0_4.step = STEP_SHOP_BUY
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_SHOP_ITEM_BOUGHT then
		var_0_4.step = STEP_SHOP_RETURN
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_WAVE_TYPES then
		var_0_4.step = STEP_TUTORIAL_COMPLETE
		var_0_4.stepT = 0
	elseif var_0_4.step == STEP_TUTORIAL_COMPLETE then
		var_0_0.stop(rawget(_G, "ui"))

		return "complete"
	end

	var_0_4.stepElapsed = 0

	return true
end

function var_0_0.canSpin()
	return var_0_4.running == true and (var_0_4.step == STEP_SLOT or var_0_4.step == STEP_SECOND_SPIN or var_0_4.step == STEP_REWARD_SPIN or var_0_4.step == STEP_MORE_SPIN or var_0_4.step == STEP_CORE_SPIN or var_0_4.step == STEP_POST_CORE_SLOT or var_0_4.step == STEP_POST_CORE_SECOND_SPIN) and var_0_4.spinStarted ~= true
end

function var_0_0.getSpinStickOutlinePulse()
	if not var_0_0.canSpin() then
		return nil
	end

	local var_66_0 = 0

	if love and love.timer and love.timer.getTime then
		var_66_0 = love.timer.getTime()
	else
		var_66_0 = var_0_4.stepElapsed or var_0_4.stepT or 0
	end

	local var_66_1 = 0.5 + 0.5 * math.sin(var_66_0 * math.pi * 2 * 1.35)

	return {
		alpha = 0.45 + 0.5 * var_66_1,
		radius = 1.8 + 0.8 * var_66_1
	}
end

function var_0_0.onSpinStarted()
	if not var_0_0.canSpin() then
		return false
	end

	local var_67_0 = var_0_4.step == STEP_SECOND_SPIN
	local var_67_1 = var_0_4.step == STEP_REWARD_SPIN
	local var_67_2 = var_0_4.step == STEP_MORE_SPIN
	local var_67_3 = var_0_4.step == STEP_CORE_SPIN
	local var_67_4 = var_0_4.step == STEP_POST_CORE_SLOT
	local var_67_5 = var_0_4.step == STEP_POST_CORE_SECOND_SPIN

	var_0_4.spinStarted = true

	if var_67_2 then
		var_0_4.nudgePressed = false
	end

	if var_67_0 then
		var_0_4.step = STEP_SECOND_SPINNING
	elseif var_67_1 then
		var_0_4.step = STEP_REWARD_SPINNING
	elseif var_67_2 then
		var_0_4.step = STEP_MORE_SPINNING
	elseif var_67_3 then
		var_0_4.step = STEP_CORE_SPINNING
	elseif var_67_4 then
		var_0_4.step = STEP_POST_CORE_SPINNING
	elseif var_67_5 then
		var_0_4.step = STEP_POST_CORE_SECOND_SPINNING
	else
		var_0_4.step = STEP_GOLD
	end

	var_0_4.stepT = (var_67_0 or var_67_1 or var_67_2 or var_67_3 or var_67_4 or var_67_5) and 1 or 0
	var_0_4.stepElapsed = 0

	return true
end

local var_0_44

function var_0_0.onTutorialWinSpawned(arg_68_0, arg_68_1, arg_68_2, arg_68_3)
	if not var_0_4.running then
		return false
	end

	if arg_68_3 == "mage_spear" then
		local var_68_0 = rawget(_G, "battlefield")

		if (var_68_0 and var_68_0.rosterSymbols and arg_68_2 and var_68_0.rosterSymbols[arg_68_2]) == "S" then
			var_0_4.spearRosterIndex = arg_68_2
		end

		if var_0_4.spearRosterIndex then
			var_0_4.step = STEP_MORE_SPIN
			var_0_4.stepT = 0
			var_0_4.stepElapsed = 0
			var_0_4.spinStarted = false
			var_0_4.nudgePressed = false
			var_0_4.winLayout = arg_68_1

			return true
		end

		return false
	elseif arg_68_3 == "post_core_archer" then
		var_0_4.step = STEP_POST_CORE_ARCHER_WIN
		var_0_4.postCoreArcherRosterIndex = arg_68_2
		var_0_4.postCoreArcherRef = var_0_44(arg_68_2)
		var_0_4.winRosterIndex = arg_68_2
	elseif arg_68_3 == "post_core_spears" then
		local var_68_1 = rawget(_G, "battlefield")

		if (var_68_1 and var_68_1.rosterSymbols and arg_68_2 and var_68_1.rosterSymbols[arg_68_2]) == "S" then
			var_0_4.postCoreSpearCount = (var_0_4.postCoreSpearCount or 0) + 1
		end

		var_0_4.winLayout = arg_68_1
		var_0_4.spinStarted = false

		if (var_0_4.postCoreSpearCount or 0) >= 2 then
			var_0_4.step = STEP_SLOT_BROKEN
			var_0_4.stepT = 0
			var_0_4.stepElapsed = 0

			return true
		end

		return false
	elseif arg_68_3 == "nudge_setup" then
		if var_0_4.step == STEP_NUDGE_WIN and var_0_4.nudgePressed then
			var_0_4.extraWarriorRosterIndex = arg_68_2
			var_0_4.winLayout = arg_68_1
			var_0_4.winRosterIndex = arg_68_2
			var_0_4.spinStarted = false

			return true
		end

		var_0_4.step = STEP_NUDGE_WIN
		var_0_4.extraWarriorRosterIndex = arg_68_2
	elseif arg_68_3 == "warrior" then
		var_0_4.step = STEP_WARRIOR_WIN
		var_0_4.warriorRosterIndex = arg_68_2
	else
		var_0_4.step = STEP_ARCHER_WIN
		var_0_4.archerRosterIndex = arg_68_2
		var_0_4.archerRef = var_0_44(arg_68_2)
	end

	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0
	var_0_4.winLayout = arg_68_1
	var_0_4.winRosterIndex = arg_68_2
	var_0_4.spinStarted = false

	return true
end

function var_0_0.onWaveEnded(arg_69_0, arg_69_1, arg_69_2)
	local var_69_0 = tonumber(arg_69_1 and arg_69_1.waveId) or 0

	if not var_0_4.running or var_0_4.step ~= STEP_BATTLE_FREE or not arg_69_1 or not arg_69_1.victory then
		return false
	end

	if var_69_0 == 1 then
		var_0_4.step = STEP_WAVE_REWARD
	elseif var_69_0 == 2 then
		var_0_4.step = STEP_CORE_COUNTER

		local var_69_1 = rawget(_G, "scrollIntroAnim")

		if var_69_1 then
			var_69_1.spinCountdown = 1
			var_69_1.countdownModalPending = false
			var_69_1.countdownModalTriggered = false
			var_69_1.squashT = love and love.timer and love.timer.getTime and love.timer.getTime() or var_69_1.squashT
		end
	else
		return false
	end

	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0
	var_0_4.waveReward = tonumber(arg_69_2) or 0

	if arg_69_0 then
		arg_69_0._shopMode = false
		arg_69_0._stoneMode = false
	end

	return true
end

function var_0_0.onCoreSelected(arg_70_0)
	if not var_0_0.isCoreSelectStep() then
		return false
	end

	var_0_4.step = STEP_POST_CORE_SLOT
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0
	var_0_4.spinStarted = false

	return true
end

function var_0_0.onNudgePressed(arg_71_0)
	if not var_0_4.running or var_0_4.step ~= STEP_NUDGE_ACTION or arg_71_0 ~= 2 then
		return false
	end

	var_0_4.step = STEP_NUDGE_WIN
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0
	var_0_4.nudgePressed = true

	return true
end

function var_0_0.onAbsorbButtonPressed()
	if not var_0_0.isAbsorbButtonStep() then
		return false
	end

	if var_0_4.step == STEP_FREE_ABSORB_BUTTON then
		var_0_4.step = STEP_FREE_ABSORB
	else
		var_0_4.step = STEP_ABSORB_DRAG
	end

	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0

	return true
end

function var_0_0.onAbsorbModalOpened()
	if not var_0_0.isAbsorbDragStep() then
		return false
	end

	var_0_4.step = STEP_ABSORB_MODAL
	var_0_4.stepT = 1

	return true
end

local function var_0_45(arg_74_0)
	if not arg_74_0 or type(arg_74_0.imprints) ~= "table" then
		return false
	end

	for iter_74_0, iter_74_1 in pairs(arg_74_0.imprints) do
		if iter_74_1 ~= nil then
			return true
		end
	end

	return false
end

local function var_0_46(arg_75_0)
	return arg_75_0 ~= nil and (arg_75_0.sym == "A" or arg_75_0 == var_0_44(var_0_4.archerRosterIndex) or arg_75_0 == var_0_4.archerRef or arg_75_0 == var_0_44(var_0_4.postCoreArcherRosterIndex) or arg_75_0 == var_0_4.postCoreArcherRef or arg_75_0 == var_0_4.promotedUnitRef)
end

local function var_0_47()
	local var_76_0 = {
		var_0_44(var_0_4.archerRosterIndex),
		var_0_4.archerRef,
		var_0_44(var_0_4.postCoreArcherRosterIndex),
		var_0_4.postCoreArcherRef,
		var_0_4.promotedUnitRef
	}
	local var_76_1 = rawget(_G, "battlefield")

	if var_76_1 and var_76_1.rosterUnits then
		for iter_76_0, iter_76_1 in ipairs(var_76_1.rosterUnits) do
			if iter_76_1 and iter_76_1.sym == "A" then
				table.insert(var_76_0, iter_76_1)
			end
		end
	end

	for iter_76_2, iter_76_3 in ipairs(var_76_0) do
		if var_0_46(iter_76_3) and var_0_45(iter_76_3) then
			return iter_76_3
		end
	end

	return nil
end

function var_0_0.isAllowedAbsorbVictim(arg_77_0)
	if arg_77_0 == nil then
		return false
	end

	if var_0_4.running and var_0_4.step == STEP_FREE_ABSORB then
		if var_0_46(arg_77_0) and var_0_45(arg_77_0) then
			return false
		end

		return true
	end

	return arg_77_0 == var_0_44(var_0_4.spearRosterIndex)
end

function var_0_0.isAllowedAbsorbPair(arg_78_0, arg_78_1)
	if not arg_78_0 or not arg_78_1 then
		return false
	end

	if var_0_4.running and var_0_4.step == STEP_FREE_ABSORB then
		return var_0_0.isAllowedAbsorbVictim(arg_78_0) and arg_78_1 == var_0_47()
	end

	return var_0_0.isAllowedAbsorbVictim(arg_78_0) and arg_78_1 == var_0_44(var_0_4.archerRosterIndex)
end

function var_0_0.onAbsorbCompleted(arg_79_0, arg_79_1)
	if var_0_4.running and var_0_4.step == STEP_FREE_ABSORB then
		return true
	end

	if not var_0_4.running or var_0_4.step ~= STEP_ABSORB_MODAL and var_0_4.step ~= STEP_ABSORB_DRAG then
		return false
	end

	if not arg_79_1 or arg_79_1.absorber ~= var_0_44(var_0_4.archerRosterIndex) then
		return false
	end

	var_0_4.step = STEP_IMPRINT_INSPECT
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0
	var_0_4.imprintInspectT = 0

	local var_79_0 = rawget(_G, "battlefield")

	if var_79_0 then
		var_79_0.absorbMode = false
	end

	return true
end

function var_0_44(arg_80_0)
	local var_80_0 = rawget(_G, "battlefield")

	return var_80_0 and var_80_0.rosterUnits and arg_80_0 and var_80_0.rosterUnits[arg_80_0] or nil
end

function var_0_0.isTutorialRosterUnit(arg_81_0)
	return arg_81_0 ~= nil and (arg_81_0 == var_0_44(var_0_4.archerRosterIndex) or arg_81_0 == var_0_44(var_0_4.warriorRosterIndex))
end

function var_0_0.isArcherUnit(arg_82_0)
	return arg_82_0 ~= nil and (arg_82_0 == var_0_44(var_0_4.archerRosterIndex) or arg_82_0 == var_0_4.archerRef or arg_82_0 == var_0_44(var_0_4.postCoreArcherRosterIndex) or arg_82_0 == var_0_4.postCoreArcherRef or arg_82_0 == var_0_4.promotedUnitRef)
end

function var_0_0.onClassSkillHovered(arg_83_0)
	if not var_0_4.running or var_0_4.step ~= STEP_CLASS_SKILL_HOVER then
		return false
	end

	arg_83_0 = tonumber(arg_83_0) or 0

	if arg_83_0 <= 0 then
		return false
	end

	var_0_4.classSkillHovered = var_0_4.classSkillHovered or {}
	var_0_4.classSkillHovered[arg_83_0] = true

	if var_0_4.classSkillHovered[1] and var_0_4.classSkillHovered[2] and var_0_4.classSkillCompleteT == nil then
		var_0_4.classSkillCompleteT = 0
	end

	return true
end

function var_0_0.onRosterDragStarted(arg_84_0)
	if not var_0_4.running or var_0_4.step ~= STEP_POSITION or not var_0_0.isTutorialRosterUnit(arg_84_0) then
		return false
	end

	var_0_4.dragStartRef = arg_84_0
	var_0_4.dragStartX = arg_84_0.x
	var_0_4.dragStartY = arg_84_0.y

	return true
end

function var_0_0.onRosterDropped(arg_85_0)
	if not var_0_4.running or var_0_4.step ~= STEP_POSITION or not arg_85_0 then
		return false
	end

	local var_85_0 = var_0_44(var_0_4.archerRosterIndex)
	local var_85_1 = var_0_44(var_0_4.warriorRosterIndex)
	local var_85_2 = var_0_4.dragStartRef == arg_85_0 and (math.abs((arg_85_0.x or 0) - (var_0_4.dragStartX or arg_85_0.x or 0)) >= 2 or math.abs((arg_85_0.y or 0) - (var_0_4.dragStartY or arg_85_0.y or 0)) >= 2)

	var_0_4.dragStartRef, var_0_4.dragStartX, var_0_4.dragStartY = nil

	if var_85_2 and arg_85_0 == var_85_0 then
		var_0_4.movedArcher = true
	end

	if var_85_2 and arg_85_0 == var_85_1 then
		var_0_4.movedWarrior = true
	end

	if var_0_4.movedArcher and var_0_4.movedWarrior and var_85_0 and var_85_1 and (var_85_1.x or 0) > (var_85_0.x or 0) + 4 then
		var_0_4.step = STEP_BATTLE_READY
		var_0_4.stepT = 0
		var_0_4.stepElapsed = 0

		return true
	end

	return false
end

function var_0_0.update(arg_86_0, arg_86_1, arg_86_2, arg_86_3)
	if arg_86_3 then
		arg_86_3._tutorialShopIntroFocus = var_0_4.running == true and var_0_4.step == STEP_SHOP_INTRO or nil
		arg_86_3._tutorialBattleReturnFocus = var_0_4.running == true and var_0_4.step == STEP_SHOP_RETURN or nil
		arg_86_3._tutorialRunning = var_0_4.running == true or nil
	end

	if var_0_4.running then
		var_0_4.stepT = math.min(1, (var_0_4.stepT or 0) + (arg_86_0 or 0) * 3)
		var_0_4.stepElapsed = (var_0_4.stepElapsed or 0) + (arg_86_0 or 0)

		if var_0_4.step == STEP_UNIT_HOVER then
			local var_86_0 = tonumber(arg_86_3 and arg_86_3.battle and arg_86_3.battle.allySize32) or 64
			local var_86_1 = false

			for iter_86_0, iter_86_1 in ipairs({
				var_0_4.archerRosterIndex,
				var_0_4.warriorRosterIndex
			}) do
				local var_86_2 = var_0_44(iter_86_1)

				if var_86_2 and var_86_2.x and var_86_2.y and math.abs((arg_86_1 or -9999) - var_86_2.x) <= var_86_0 * 0.5 and math.abs((arg_86_2 or -9999) - var_86_2.y) <= var_86_0 * 0.5 then
					var_86_1 = true

					break
				end
			end

			if var_86_1 and not var_0_4.unitHoverWasOver then
				var_0_4.unitHoverCount = math.min(var_0_18, (var_0_4.unitHoverCount or 0) + 1)
			end

			var_0_4.unitHoverWasOver = var_86_1

			if var_86_1 then
				var_0_4.unitHoverT = math.min(var_0_19, (var_0_4.unitHoverT or 0) + (arg_86_0 or 0))
			else
				var_0_4.unitHoverT = 0
			end

			if (var_0_4.unitHoverCount or 0) >= var_0_18 or (var_0_4.unitHoverT or 0) >= var_0_19 then
				var_0_4.step = STEP_POSITION
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
			end
		elseif var_0_4.step == STEP_MORE_SPINNING then
			local var_86_3 = rawget(_G, "slot")

			if not var_0_4.nudgePressed and var_86_3 and var_86_3.spin and not var_86_3.spin.active and var_86_3.result and var_86_3.result.checked and not var_86_3.result.won and (not var_86_3.result.winSeq or not var_86_3.result.winSeq.active) then
				var_0_4.step = STEP_NUDGE_ACTION
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
				var_0_4.spinStarted = false
			end
		elseif var_0_4.step == STEP_CORE_SPINNING then
			if arg_86_3 and arg_86_3._coreSelect and arg_86_3._coreSelect.active then
				var_0_4.step = STEP_CORE_SELECT
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
				var_0_4.spinStarted = false
				var_0_4.coreSelectTipReady = false
			end
		elseif var_0_4.step == STEP_POST_CORE_SPINNING then
			local var_86_4 = rawget(_G, "slot")

			if var_86_4 and var_86_4.spin and not var_86_4.spin.active and var_86_4.result and var_86_4.result.checked and (not var_86_4.result.winSeq or not var_86_4.result.winSeq.active) then
				var_0_4.step = STEP_POST_CORE_ARCHER_WIN
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
				var_0_4.spinStarted = false
			end
		elseif var_0_4.step == STEP_POST_CORE_SECOND_SPINNING then
			local var_86_5 = rawget(_G, "slot")

			if var_86_5 and var_86_5.spin and not var_86_5.spin.active and var_86_5.result and var_86_5.result.checked and (not var_86_5.result.winSeq or not var_86_5.result.winSeq.active) then
				var_0_4.step = STEP_SLOT_BROKEN
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
				var_0_4.spinStarted = false
			end
		elseif var_0_4.step == STEP_FREE_ABSORB then
			local var_86_6 = rawget(_G, "battlefield")
			local var_86_7 = var_86_6 and var_86_6.classSelect and var_86_6.classSelect.ru

			if var_86_7 and var_86_7.sym == "A" then
				var_0_4.promotedUnitRef = var_86_7
				var_0_4.step = STEP_CLASS_PROMOTION
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
				var_0_4.classSkillHovered = {}
			end
		elseif var_0_4.step == STEP_CLASS_SKILL_HOVER then
			local var_86_8 = rawget(_G, "battlefield")
			local var_86_9 = var_86_8 and var_86_8.classSelect and var_86_8.classSelect._hoveredSkill

			if var_86_9 and var_86_9.cardIndex then
				var_0_0.onClassSkillHovered(var_86_9.cardIndex)
			end

			if var_0_4.classSkillCompleteT ~= nil then
				var_0_4.classSkillCompleteT = var_0_4.classSkillCompleteT + math.max(0, arg_86_0 or 0)

				if var_0_4.classSkillCompleteT >= 0.7 then
					var_0_4.step = STEP_CLASS_CHOOSE
					var_0_4.stepT = 0
					var_0_4.stepElapsed = 0
					var_0_4.classSkillCompleteT = nil
				end
			end
		elseif var_0_4.step == STEP_CLASS_CHOOSE then
			local var_86_10 = rawget(_G, "battlefield")

			if not var_86_10 or not var_86_10.classSelect then
				local var_86_11 = var_0_4.promotedUnitRef or var_0_4.postCoreArcherRef or var_0_44(var_0_4.postCoreArcherRosterIndex)
				local var_86_12 = var_86_11 and (var_86_11.subclassName or var_86_11.subclass or var_86_11.subclassKey or var_86_11.name) or var_0_3("unit_archer")

				var_0_4.promotedName = var_0_1.translateUnitName(tostring(var_86_12), _G.currentGameLang or "ko")

				if var_86_10 then
					var_86_10.absorbMode = false
				end

				local var_86_13 = rawget(_G, "firemanSetAnim")

				if var_86_13 then
					pcall(var_86_13, "off")
				end

				var_0_4.step = STEP_PROMOTED_ARCHER
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
			end
		elseif var_0_4.step == STEP_ABSORB_DRAG then
			local var_86_14 = rawget(_G, "battlefield")

			if var_86_14 and var_86_14.imprintModal and var_86_14.imprintModal.active then
				var_0_0.onAbsorbModalOpened()
			end
		elseif var_0_4.step == STEP_IMPRINT_INSPECT then
			local var_86_15 = arg_86_3 and arg_86_3.tooltip
			local var_86_16 = var_0_44(var_0_4.archerRosterIndex)

			if var_86_15 and var_86_15.locked and var_86_15.target and var_86_15.target.ref == var_86_16 then
				var_0_4.imprintInspectT = (var_0_4.imprintInspectT or 0) + (arg_86_0 or 0)
			else
				var_0_4.imprintInspectT = 0
			end

			if (var_0_4.imprintInspectT or 0) >= 3 then
				var_0_4.step = STEP_FINAL_READY
				var_0_4.stepT = 0
				var_0_4.stepElapsed = 0
			end
		end

		return
	end

	if not var_0_4.active then
		return
	end

	var_0_4.t = math.min(1, (var_0_4.t or 0) + (arg_86_0 or 0) * 3.2)
	var_0_4.skipLockElapsed = math.min(var_0_17, (var_0_4.skipLockElapsed or 0) + math.max(0, arg_86_0 or 0))

	local var_86_17 = var_0_41(arg_86_3)

	var_0_4.buttons = var_86_17

	if var_0_43(arg_86_1 or -9999, arg_86_2 or -9999, var_86_17.start, var_86_17.buttonScale, var_86_17.buttonExtraSrc) then
		var_0_4.hovered = "start"
	elseif var_0_20() and var_0_43(arg_86_1 or -9999, arg_86_2 or -9999, var_86_17.skip, var_86_17.buttonScale, var_86_17.buttonExtraSrc) then
		var_0_4.hovered = "skip"
	else
		var_0_4.hovered = nil
	end

	var_0_4.hoverStart = (var_0_4.hoverStart or 0) + ((var_0_4.hovered == "start" and 1 or 0) - (var_0_4.hoverStart or 0)) * 0.25
	var_0_4.hoverSkip = (var_0_4.hoverSkip or 0) + ((var_0_4.hovered == "skip" and 1 or 0) - (var_0_4.hoverSkip or 0)) * 0.25
end

local function var_0_48(arg_87_0)
	if not var_0_4.active then
		return nil
	end

	var_0_4.pending = false

	if arg_87_0 == "start" then
		var_0_4.active = false
		var_0_4.running = true
		var_0_4.skipped = false
		var_0_4.step = STEP_SLOT
		var_0_4.spinStarted = false
		var_0_4.stepT = 0
		var_0_4.stepElapsed = 0
		var_0_4.winLayout = nil
		var_0_4.winRosterIndex = nil
		var_0_4.archerRosterIndex = nil
		var_0_4.archerRef = nil
		var_0_4.warriorRosterIndex = nil
		var_0_4.mageRosterIndex = nil
		var_0_4.spearRosterIndex = nil
		var_0_4.extraWarriorRosterIndex = nil
		var_0_4.postCoreArcherRosterIndex = nil
		var_0_4.postCoreArcherRef = nil
		var_0_4.promotedUnitRef = nil
		var_0_4.postCoreSpearCount = 0
		var_0_4.classSkillHovered = nil
		var_0_4.classSkillCompleteT = nil
		var_0_4.promotedName = nil
		var_0_4.unitHoverT = 0
		var_0_4.unitHoverCount = 0
		var_0_4.unitHoverWasOver = false
		var_0_4.movedArcher = false
		var_0_4.movedWarrior = false
		var_0_4.dragStartRef, var_0_4.dragStartX, var_0_4.dragStartY = nil

		return "start"
	elseif arg_87_0 == "skip" then
		var_0_4.active = false
		var_0_4.running = false
		var_0_4.skipped = true
		var_0_4.step = 0

		return "skip"
	end

	return nil
end

function var_0_0.mousepressed(arg_88_0, arg_88_1, arg_88_2, arg_88_3)
	if not var_0_4.active then
		return nil
	end

	if arg_88_2 ~= 1 then
		return "blocked"
	end

	if (var_0_4.t or 0) < 0.82 then
		return "blocked"
	end

	local var_88_0 = var_0_4.buttons or var_0_41(arg_88_3)
	local var_88_1 = var_0_42(var_88_0, "start", arg_88_3)
	local var_88_2 = var_0_42(var_88_0, "skip", arg_88_3)

	if var_0_43(arg_88_0, arg_88_1, var_88_1, var_88_0.buttonScale, var_88_0.buttonExtraSrc) then
		return var_0_48("start")
	end

	if var_0_20() and var_0_43(arg_88_0, arg_88_1, var_88_2, var_88_0.buttonScale, var_88_0.buttonExtraSrc) then
		return var_0_48("skip")
	end

	return "blocked"
end

function var_0_0.padTargets(arg_89_0)
	local var_89_0 = {}

	if not var_0_4.active then
		return var_89_0
	end

	local var_89_1 = var_0_4.buttons or var_0_41(arg_89_0)
	local var_89_2 = var_0_42(var_89_1, "start", arg_89_0)

	if var_89_2 then
		var_89_0[#var_89_0 + 1] = {
			order = 1,
			group = "tutorial",
			default = true,
			id = "start",
			x = var_89_2.x,
			y = var_89_2.y,
			w = var_89_2.w,
			h = var_89_2.h
		}
	end

	if var_0_20() then
		local var_89_3 = var_0_42(var_89_1, "skip", arg_89_0)

		if var_89_3 then
			var_89_0[#var_89_0 + 1] = {
				order = 2,
				group = "tutorial",
				id = "skip",
				x = var_89_3.x,
				y = var_89_3.y,
				w = var_89_3.w,
				h = var_89_3.h
			}
		end
	end

	return var_89_0
end

function var_0_0.keypressed(arg_90_0)
	if not var_0_4.active then
		return nil
	end

	if (var_0_4.t or 0) < 0.82 then
		return "blocked"
	end

	if arg_90_0 == "return" or arg_90_0 == "kpenter" or arg_90_0 == "space" then
		return var_0_48("start")
	end

	return "blocked"
end

local function var_0_49(arg_91_0, arg_91_1, arg_91_2, arg_91_3, arg_91_4)
	if arg_91_0 then
		love.graphics.setFont(arg_91_0)
	end

	local var_91_0 = love.graphics.getFont()

	love.graphics.setColor(arg_91_4)
	love.graphics.print(arg_91_1, math.floor(arg_91_2 - var_91_0:getWidth(arg_91_1) * 0.5 + 0.5), math.floor(arg_91_3 + 0.5))
end

local function var_0_50(arg_92_0)
	if arg_92_0 < 0 then
		return 0
	end

	if arg_92_0 > 1 then
		return 1
	end

	return arg_92_0
end

local function var_0_51(arg_93_0)
	arg_93_0 = var_0_50(arg_93_0)

	return 1 - (1 - arg_93_0) * (1 - arg_93_0) * (1 - arg_93_0)
end

local function var_0_52(arg_94_0)
	arg_94_0 = var_0_50(arg_94_0)

	return arg_94_0 * arg_94_0 * (3 - 2 * arg_94_0)
end

local function var_0_53(arg_95_0, arg_95_1, arg_95_2, arg_95_3, arg_95_4)
	if arg_95_0 then
		love.graphics.setFont(arg_95_0)
	end

	local var_95_0 = love.graphics.getFont()
	local var_95_1 = 0

	for iter_95_0, iter_95_1 in ipairs(arg_95_1 or {}) do
		var_95_1 = var_95_1 + var_95_0:getWidth(iter_95_1.text or "")
	end

	local var_95_2 = math.floor(arg_95_2 - var_95_1 * 0.5 + 0.5)
	local var_95_3 = math.floor(arg_95_3 + 0.5)

	for iter_95_2, iter_95_3 in ipairs(arg_95_1 or {}) do
		local var_95_4 = iter_95_3.text or ""

		love.graphics.setColor(iter_95_3.color or arg_95_4)
		love.graphics.print(var_95_4, var_95_2, var_95_3)

		var_95_2 = var_95_2 + var_95_0:getWidth(var_95_4)
	end
end

local function var_0_54(arg_96_0, arg_96_1, arg_96_2, arg_96_3, arg_96_4, arg_96_5, arg_96_6)
	local var_96_0 = math.max(1, math.floor(var_0_34(arg_96_0) + 0.5))
	local var_96_1 = 2
	local var_96_2 = arg_96_6 or {
		0.4627450980392157,
		0.3215686274509804,
		0.3568627450980392,
		0.98
	}

	love.graphics.setColor(var_96_2[1] or 1, var_96_2[2] or 1, var_96_2[3] or 1, (var_96_2[4] or 1) * arg_96_5)

	for iter_96_0 = 0, var_96_1 - 1 do
		local var_96_3 = (var_96_1 - iter_96_0) * var_96_0

		love.graphics.rectangle("fill", arg_96_1 + var_96_3, arg_96_2 + iter_96_0 * var_96_0, arg_96_3 - var_96_3 * 2, var_96_0)
		love.graphics.rectangle("fill", arg_96_1 + var_96_3, arg_96_2 + arg_96_4 - (iter_96_0 + 1) * var_96_0, arg_96_3 - var_96_3 * 2, var_96_0)
	end

	love.graphics.rectangle("fill", arg_96_1, arg_96_2 + var_96_1 * var_96_0, arg_96_3, arg_96_4 - var_96_1 * var_96_0 * 2)
end

local function var_0_55(arg_97_0)
	if type(arg_97_0) == "table" and arg_97_0.parts then
		return arg_97_0.parts
	end

	if type(arg_97_0) == "table" and arg_97_0[1] then
		return arg_97_0
	end

	return {
		{
			text = tostring(arg_97_0 or "")
		}
	}
end

local function var_0_56(arg_98_0, arg_98_1, arg_98_2)
	local var_98_0 = var_0_55(arg_98_1)
	local var_98_1 = 0

	for iter_98_0, iter_98_1 in ipairs(var_98_0) do
		if iter_98_1.icon == "gold" or iter_98_1.icon == "mouseRight" or iter_98_1.icon == "mouseLeft" or iter_98_1.icon == "judgement" or iter_98_1.icon == "boss" then
			local var_98_2 = iter_98_1.icon == "gold" and var_0_27() or (iter_98_1.icon == "mouseRight" or iter_98_1.icon == "mouseLeft") and var_0_28(iter_98_1.icon) or var_0_29(iter_98_1.icon)
			local var_98_3 = var_98_0[iter_98_0 + 1] and var_98_0[iter_98_0 + 1].text or ""
			local var_98_4 = tostring(var_98_3):match("^%s") and 0 or arg_98_0 and arg_98_0:getWidth(" ") or 4

			var_98_1 = var_98_1 + (var_98_2 and var_98_2:getWidth() or 8) * arg_98_2 + var_98_4
		else
			var_98_1 = var_98_1 + (arg_98_0 and arg_98_0:getWidth(iter_98_1.text or "") or 0)
		end
	end

	return var_98_1
end

local function var_0_57(arg_99_0, arg_99_1, arg_99_2, arg_99_3, arg_99_4, arg_99_5, arg_99_6, arg_99_7, arg_99_8)
	if arg_99_0 then
		love.graphics.setFont(arg_99_0)
	end

	local var_99_0 = var_0_55(arg_99_1)
	local var_99_1 = arg_99_2

	for iter_99_0, iter_99_1 in ipairs(var_99_0) do
		if iter_99_1.icon == "gold" or iter_99_1.icon == "mouseRight" or iter_99_1.icon == "mouseLeft" or iter_99_1.icon == "judgement" or iter_99_1.icon == "boss" then
			local var_99_2 = iter_99_1.icon == "gold" and var_0_27() or (iter_99_1.icon == "mouseRight" or iter_99_1.icon == "mouseLeft") and var_0_28(iter_99_1.icon) or var_0_29(iter_99_1.icon)

			if var_99_2 then
				local var_99_3 = arg_99_0 and arg_99_0.getHeight and arg_99_0:getHeight() or var_99_2:getHeight()
				local var_99_4 = math.floor(arg_99_3 + (var_99_3 - var_99_2:getHeight() * arg_99_6) * 0.5 + (arg_99_7 or 0) + 0.5)

				love.graphics.setColor(1, 1, 1, arg_99_5)
				love.graphics.draw(var_99_2, math.floor(var_99_1 + 0.5), var_99_4, 0, arg_99_6, arg_99_6)

				local var_99_5 = var_99_0[iter_99_0 + 1] and var_99_0[iter_99_0 + 1].text or ""
				local var_99_6 = tostring(var_99_5):match("^%s") and 0 or arg_99_0 and arg_99_0:getWidth(" ") or 4

				var_99_1 = var_99_1 + var_99_2:getWidth() * arg_99_6 + var_99_6
			end
		else
			local var_99_7 = iter_99_1.text or ""
			local var_99_8 = iter_99_1.color or arg_99_4
			local var_99_9 = 1

			while var_99_9 <= #var_99_7 do
				local var_99_10, var_99_11 = string.find(var_99_7, "%d+", var_99_9)
				local var_99_12 = var_99_10 and var_99_10 - 1 or #var_99_7

				if var_99_9 <= var_99_12 then
					local var_99_13 = string.sub(var_99_7, var_99_9, var_99_12)

					love.graphics.setColor(var_99_8[1] or 1, var_99_8[2] or 1, var_99_8[3] or 1, arg_99_5)
					love.graphics.print(var_99_13, math.floor(var_99_1 + 0.5), math.floor(arg_99_3 + 0.5))

					var_99_1 = var_99_1 + (arg_99_0 and arg_99_0:getWidth(var_99_13) or 0)
				end

				if not var_99_10 then
					break
				end

				local var_99_14 = string.sub(var_99_7, var_99_10, var_99_11)
				local var_99_15 = arg_99_8 or {
					0.96,
					0.78,
					0.32
				}

				love.graphics.setColor(var_99_15[1] or 1, var_99_15[2] or 1, var_99_15[3] or 1, arg_99_5)
				love.graphics.print(var_99_14, math.floor(var_99_1 + 0.5), math.floor(arg_99_3 + 0.5))

				var_99_1 = var_99_1 + (arg_99_0 and arg_99_0:getWidth(var_99_14) or 0)
				var_99_9 = var_99_11 + 1
			end
		end
	end
end

local function var_0_58(arg_100_0, arg_100_1, arg_100_2, arg_100_3, arg_100_4)
	if arg_100_0 then
		love.graphics.setFont(arg_100_0)
	end

	love.graphics.setColor(arg_100_4)
	love.graphics.print(arg_100_1, math.floor(arg_100_2 + 0.5), math.floor(arg_100_3 + 0.5))
end

local function var_0_59(arg_101_0, arg_101_1)
	local var_101_0 = arg_101_0 and arg_101_0.virtual and arg_101_0.virtual.W or 640
	local var_101_1 = arg_101_0 and arg_101_0.virtual and arg_101_0.virtual.H or 360
	local var_101_2 = arg_101_1 and arg_101_1.slotPanel

	if not var_101_2 then
		return {
			y = 0,
			x = 0,
			w = math.floor(var_101_0 * 0.48),
			h = var_101_1
		}
	end

	local var_101_3 = arg_101_0 and arg_101_0.tutorial and arg_101_0.tutorial.slotFocus or {}
	local var_101_4 = arg_101_0 and arg_101_0.slot and arg_101_0.slot.bgAnimY or 0
	local var_101_5 = var_101_2.x + (tonumber(var_101_3.offsetX) or -20)
	local var_101_6 = var_101_2.y + var_101_4 + (tonumber(var_101_3.offsetY) or -24)
	local var_101_7 = var_101_2.w + (tonumber(var_101_3.extraW) or 64)
	local var_101_8 = var_101_2.h + (tonumber(var_101_3.extraH) or 54)

	if var_101_5 < 0 then
		var_101_7 = var_101_7 + var_101_5
		var_101_5 = 0
	end

	if var_101_6 < 0 then
		var_101_8 = var_101_8 + var_101_6
		var_101_6 = 0
	end

	if var_101_0 < var_101_5 + var_101_7 then
		var_101_7 = var_101_0 - var_101_5
	end

	if var_101_1 < var_101_6 + var_101_8 then
		var_101_8 = var_101_1 - var_101_6
	end

	return {
		x = math.floor(var_101_5 + 0.5),
		y = math.floor(var_101_6 + 0.5),
		w = math.floor(var_101_7 + 0.5),
		h = math.floor(var_101_8 + 0.5)
	}
end

local function var_0_60(arg_102_0, arg_102_1, arg_102_2, arg_102_3, arg_102_4)
	if not arg_102_0 then
		return
	end

	local var_102_0 = arg_102_0:getWidth()
	local var_102_1 = arg_102_0:getHeight()

	if var_102_0 <= 0 or var_102_1 <= 0 then
		return
	end

	if var_102_0 == arg_102_3 and var_102_1 == arg_102_4 then
		love.graphics.draw(arg_102_0, arg_102_1 or 0, arg_102_2 or 0)
	else
		love.graphics.draw(arg_102_0, arg_102_1 or 0, arg_102_2 or 0, 0, arg_102_3 / var_102_0, arg_102_4 / var_102_1)
	end
end

local function var_0_61(arg_103_0, arg_103_1)
	local var_103_0 = var_0_32()

	if var_103_0 then
		love.graphics.setShader(var_103_0)
	end

	love.graphics.setColor(1, 1, 1, 1)

	local var_103_1 = arg_103_0 and arg_103_0.virtual and arg_103_0.virtual.W or 640
	local var_103_2 = arg_103_0 and arg_103_0.virtual and arg_103_0.virtual.H or 360
	local var_103_3 = arg_103_1 and arg_103_1.slotPanel
	local var_103_4 = spinShake and spinShake.x or 0
	local var_103_5 = spinShake and spinShake.y or 0
	local var_103_6 = slotBgAnim and slotBgAnim.y or 0
	local var_103_7 = arg_103_0 and arg_103_0.slot and arg_103_0.slot.stickyOffsetY or 0
	local var_103_8 = spinPressShake and spinPressShake.y or 0
	local var_103_9 = slotBgJitter and slotBgJitter.x or 0
	local var_103_10 = slotBgJitter and slotBgJitter.y or 0
	local var_103_11 = arg_103_0 and arg_103_0.slot and arg_103_0.slot.ropeOffsetY or 0
	local var_103_12 = slotBgSquash and slotBgSquash.sx or 1
	local var_103_13 = slotBgSquash and slotBgSquash.sy or 1
	local var_103_14 = math.floor(var_103_4 + 0.5) + var_103_9
	local var_103_15 = math.floor(var_103_6 + var_103_5 + var_103_8 + var_103_7 + 0.5) + var_103_10
	local var_103_16 = var_103_1 * 0.5
	local var_103_17 = var_103_2 * 0.5

	if var_103_3 then
		local var_103_18 = arg_103_0 and arg_103_0.slot and arg_103_0.slot.lineHitSquash or {}

		var_103_16 = var_103_3.x + var_103_3.w * 0.5 + (var_103_18.anchorOffsetX or 0)
		var_103_17 = var_103_3.y + var_103_3.h * 0.5 + (var_103_18.anchorOffsetY or 0)
	end

	if backgroundSlotImage then
		local var_103_19 = backgroundSlotImage:getWidth()
		local var_103_20 = backgroundSlotImage:getHeight()

		if var_103_19 > 0 and var_103_20 > 0 then
			love.graphics.draw(backgroundSlotImage, var_103_14 + (1 - var_103_12) * var_103_16, var_103_15 + (1 - var_103_13) * var_103_17, 0, var_103_1 / var_103_19 * var_103_12, var_103_2 / var_103_20 * var_103_13)
		end
	end

	var_0_60(backgroundSlotRopeImage, math.floor(var_103_4 + 0.5) + var_103_9, math.floor(var_103_6 + var_103_5 + var_103_7 + var_103_11 + 0.5) + var_103_10, var_103_1, var_103_2)
	var_0_60(backgroundMonsterBodyImage, math.floor(var_103_4 + 0.5) + var_103_9, math.floor(var_103_6 + var_103_5 + var_103_7 + 0.5) + var_103_10, var_103_1, var_103_2)

	local var_103_21 = backgroundMonsterHeadImage

	if monsterHeadAnim and monsterHeadAnim.mode == "laugh" and backgroundMonsterHeadLaughImage then
		var_103_21 = backgroundMonsterHeadLaughImage
	end

	local var_103_22 = 0
	local var_103_23 = arg_103_0 and arg_103_0.monster and arg_103_0.monster.headIdle or {
		ampPx = 1,
		freq = 0.5
	}
	local var_103_24 = math.max(0, var_103_23.ampPx or 1)
	local var_103_25 = var_103_23.freq or 0.5

	if var_103_24 > 0 and var_103_25 > 0 then
		if monsterHeadAnim and monsterHeadAnim.mode == "laugh" then
			var_103_22 = math.floor(math.sin(2 * math.pi * (monsterHeadAnim.freq or 12) * (monsterHeadAnim.t or 0)) * (monsterHeadAnim.ampPx or 2) + 0.5)
		else
			var_103_22 = math.floor(math.sin(2 * math.pi * var_103_25 * (monsterHeadIdleT or 0)) * var_103_24 + 0.5)
		end
	end

	var_0_60(backgroundMonsterHeadShadowImage, math.floor(var_103_4 + 0.5) + var_103_9, math.floor(var_103_6 + var_103_5 + var_103_7 + var_103_22 + 0.5) + var_103_10, var_103_1, var_103_2)
	var_0_60(var_103_21, math.floor(var_103_4 + 0.5) + var_103_9, math.floor(var_103_6 + var_103_5 + var_103_7 + var_103_22 + 0.5) + var_103_10, var_103_1, var_103_2)
	var_0_60(backgroundSlotLeftImage, math.floor(var_103_4 + 0.5) + var_103_9, math.floor(var_103_6 + var_103_5 + var_103_7 + 0.5) + var_103_10, var_103_1, var_103_2)

	local var_103_26 = slotBgSquash and slotBgSquash.sx or 1
	local var_103_27 = slotBgSquash and slotBgSquash.sy or 1
	local var_103_28 = math.floor(var_103_4 + 0.5) + var_103_9
	local var_103_29 = math.floor(var_103_6 + var_103_5 + var_103_7 + 0.5) + var_103_10
	local var_103_30 = var_103_1 * 0.5
	local var_103_31 = var_103_2 * 0.5

	if var_103_3 then
		local var_103_32 = arg_103_0 and arg_103_0.slot and arg_103_0.slot.lineHitSquash or {}

		var_103_30 = var_103_3.x + var_103_3.w * 0.5 + (var_103_32.anchorOffsetX or 0)
		var_103_31 = var_103_3.y + var_103_3.h * 0.5 + (var_103_32.anchorOffsetY or 0)
	end

	if backgroundSlotShadowImage then
		local var_103_33 = backgroundSlotShadowImage:getWidth()
		local var_103_34 = backgroundSlotShadowImage:getHeight()

		if var_103_33 > 0 and var_103_34 > 0 then
			love.graphics.draw(backgroundSlotShadowImage, var_103_28 + (1 - var_103_26) * var_103_30, var_103_29 + (1 - var_103_27) * var_103_31, 0, var_103_1 / var_103_33 * var_103_26, var_103_2 / var_103_34 * var_103_27)
		end
	end

	local var_103_35 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick

	if var_103_35 and var_103_35.image and var_103_35.quads and var_103_35.quads[1] and var_103_3 then
		local var_103_36 = arg_103_0 and arg_103_0.spinstick or {}
		local var_103_37 = var_103_3.x + var_103_3.w + (var_103_36.offsetX or 4)
		local var_103_38 = var_103_3.y + (var_103_36.offsetY or 0)
		local var_103_39 = math.floor(var_103_37 + var_103_4 + var_103_9 + 0.5)
		local var_103_40 = math.floor(var_103_38 + var_103_6 + var_103_5 + var_103_7 + var_103_10 + 0.5)
		local var_103_41 = var_103_35.frames or #var_103_35.quads
		local var_103_42 = 1

		if spinStickAnim and spinStickAnim.playing and var_103_41 > 1 then
			var_103_42 = math.max(1, math.min(var_103_41, spinStickAnim.frame or 1))
		end

		love.graphics.draw(var_103_35.image, var_103_35.quads[var_103_42] or var_103_35.quads[1], var_103_39, var_103_40)
	end

	if arg_103_1 and arg_103_1.nudgeBtns then
		local var_103_43 = loadedAssets and loadedAssets.ui and loadedAssets.ui.nudgeButton
		local var_103_44 = loadedAssets and loadedAssets.ui and loadedAssets.ui.nudgeButtonQuads

		if var_103_43 and var_103_44 and var_103_44[1] then
			local var_103_45 = math.max(1, math.floor((arg_103_0 and arg_103_0.scale or 1) + 0.5))
			local var_103_46 = math.floor(var_103_4 + var_103_9 + 0.5)
			local var_103_47 = math.floor(var_103_6 + var_103_5 + var_103_7 + var_103_8 + var_103_10 + 0.5)

			for iter_103_0, iter_103_1 in ipairs(arg_103_1.nudgeBtns) do
				love.graphics.draw(var_103_43, var_103_44[1], math.floor(iter_103_1.x + var_103_46 + 0.5), math.floor(iter_103_1.y + var_103_47 + 0.5), 0, var_103_45, var_103_45)
			end
		end
	end

	love.graphics.setShader()
end

local function var_0_62(arg_104_0)
	local var_104_0 = arg_104_0 and arg_104_0.tutorial and arg_104_0.tutorial.goldFocus or {}
	local var_104_1 = arg_104_0 and arg_104_0.goldDisplay or {}
	local var_104_2 = tonumber(var_104_0.w) or 70
	local var_104_3 = tonumber(var_104_0.h) or 22
	local var_104_4 = tonumber(var_104_0.x)
	local var_104_5 = tonumber(var_104_0.y)

	if not var_104_4 then
		local var_104_6 = tonumber(var_104_1.x) or 288

		var_104_4 = (var_104_1.align or "right") == "right" and var_104_6 - var_104_2 or var_104_6
	end

	var_104_5 = var_104_5 or (tonumber(var_104_1.y) or 10) - 6

	love.graphics.rectangle("fill", math.floor(var_104_4 + 0.5), math.floor(var_104_5 + 0.5), math.floor(var_104_2 + 0.5), math.floor(var_104_3 + 0.5))
end

local function var_0_63(arg_105_0)
	local var_105_0 = rawget(_G, "battlefield")
	local var_105_1

	if var_0_4.step == STEP_PROMOTED_ARCHER then
		var_105_1 = var_0_4.promotedUnitRef
	elseif var_0_4.step == STEP_POST_CORE_ARCHER_WIN then
		var_105_1 = var_0_4.postCoreArcherRef or var_105_0 and var_105_0.rosterUnits and var_0_4.postCoreArcherRosterIndex and var_105_0.rosterUnits[var_0_4.postCoreArcherRosterIndex]
	end

	var_105_1 = var_105_1 or var_105_0 and var_105_0.rosterUnits and var_0_4.winRosterIndex and var_105_0.rosterUnits[var_0_4.winRosterIndex]

	return var_105_0, var_105_1
end

local function var_0_64(arg_106_0)
	local var_106_0, var_106_1 = var_0_63(arg_106_0)

	if not var_106_1 or not var_106_1.x or not var_106_1.y then
		return
	end

	local var_106_2 = tonumber(arg_106_0 and arg_106_0.battle and arg_106_0.battle.allySize32) or 64
	local var_106_3 = arg_106_0 and arg_106_0.tutorial and arg_106_0.tutorial.unitFocus or {}
	local var_106_4 = tonumber(var_106_3.padX) or 8
	local var_106_5 = tonumber(var_106_3.padY) or 6
	local var_106_6 = math.floor(var_106_1.x - var_106_2 * 0.5 - var_106_4 + 0.5)
	local var_106_7 = math.floor(var_106_1.y - var_106_2 * 0.5 - var_106_5 + 0.5)
	local var_106_8 = math.floor(var_106_2 + var_106_4 * 2 + 0.5)
	local var_106_9 = math.floor(var_106_2 + var_106_5 * 2 + 0.5)

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_106_6, var_106_7, var_106_8, var_106_9)
end

local function var_0_65(arg_107_0)
	local var_107_0, var_107_1 = pcall(require, "src.ui.imprint")
	local var_107_2 = var_107_0 and var_107_1 and var_107_1._panelRect

	if var_107_2 and var_107_2.w and var_107_2.h then
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.rectangle("fill", math.floor(var_107_2.x + 0.5), math.floor(var_107_2.y + 0.5), math.floor(var_107_2.w + 0.5), math.floor(var_107_2.h + 0.5))

		return
	else
		return
	end

	local var_107_3 = arg_107_0 and arg_107_0.virtual and arg_107_0.virtual.W or 640
	local var_107_4 = arg_107_0 and arg_107_0.virtual and arg_107_0.virtual.H or 360
	local var_107_5 = arg_107_0 and arg_107_0.imprintPanel or {}
	local var_107_6 = tonumber(arg_107_0 and arg_107_0.scale) or 1
	local var_107_7 = var_107_5.slotBg or {}
	local var_107_8 = tonumber(var_107_5.tutorialFocusPad) or 6 * var_107_6
	local var_107_9 = (tonumber(var_107_5.slotX) or 15) * var_107_6
	local var_107_10 = (tonumber(var_107_5.slotY) or 96) * var_107_6
	local var_107_11 = tonumber(var_107_7.offsetX) or 0
	local var_107_12 = tonumber(var_107_7.offsetY) or 0
	local var_107_13 = (tonumber(var_107_5.slotW) or 180) * var_107_6
	local var_107_14 = tonumber(var_107_5.tutorialFocusSlotH) or 40
	local var_107_15 = tonumber(var_107_5.tutorialFocusRows) or 5
	local var_107_16 = tonumber(var_107_5.slotGap) or -1
	local var_107_17 = var_107_14 * var_107_15 + var_107_16 * math.max(0, var_107_15 - 1)
	local var_107_18 = tonumber(var_107_5.tutorialFocusX) or var_107_9 + var_107_11 - var_107_8
	local var_107_19 = tonumber(var_107_5.tutorialFocusY) or var_107_10 + var_107_12 - var_107_8
	local var_107_20 = tonumber(var_107_5.tutorialFocusW) or var_107_13 + var_107_8 * 2
	local var_107_21 = tonumber(var_107_5.tutorialFocusH) or var_107_17 + var_107_8 * 2
	local var_107_22 = math.max(0, math.min(var_107_3, var_107_18))
	local var_107_23 = math.max(0, math.min(var_107_4, var_107_19))
	local var_107_24 = math.max(0, math.min(var_107_3 - var_107_22, var_107_20))
	local var_107_25 = math.max(0, math.min(var_107_4 - var_107_23, var_107_21))

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(var_107_22 + 0.5), math.floor(var_107_23 + 0.5), math.floor(var_107_24 + 0.5), math.floor(var_107_25 + 0.5))
end

local function var_0_66(arg_108_0, arg_108_1)
	local var_108_0 = rawget(_G, "battlefield")
	local var_108_1 = rawget(_G, "loadedAssets")
	local var_108_2 = arg_108_1 and arg_108_1.right
	local var_108_3 = var_108_0 and var_108_0.waveTimer

	if not var_108_0 or not var_108_1 or not var_108_1.ui or not var_108_2 or not var_108_3 then
		return nil
	end

	local var_108_4 = ((var_108_3.t or 0) >= (var_108_3.dur or 0) or var_108_3.state == "fading") and (var_108_1.ui.battleReadyOpen or var_108_1.ui.battleReadyClosed) or var_108_1.ui.battleReadyClosed or var_108_1.ui.battleReadyOpen

	if not var_108_4 then
		return nil
	end

	local var_108_5 = 32
	local var_108_6 = tonumber(arg_108_0 and arg_108_0.battle and arg_108_0.battle.allySize32) or 64
	local var_108_7 = var_108_1.units and (var_108_1.units.MiniSwordMan or var_108_1.units.MiniArcherMan or var_108_1.units.MiniSpearMan)
	local var_108_8 = var_108_6 / math.max(1, var_108_7 and var_108_7.frameW or var_108_5)
	local var_108_9 = arg_108_0 and arg_108_0.battle and arg_108_0.battle.readyIcon or {}
	local var_108_10 = arg_108_0 and arg_108_0.scale or 1
	local var_108_11 = math.floor((var_108_9.padX ~= nil and var_108_9.padX or 8) * var_108_10)
	local var_108_12 = math.floor((var_108_9.padY ~= nil and var_108_9.padY or 12) * var_108_10)
	local var_108_13 = math.floor(var_108_4:getWidth() * var_108_8 + 0.5)
	local var_108_14 = math.floor(var_108_4:getHeight() * var_108_8 + 0.5)
	local var_108_15 = math.floor(var_108_2.x + var_108_2.w - var_108_13 - var_108_11 + 0.5)
	local var_108_16

	if (var_108_9.anchor or "bottom-right") == "bottom-right" then
		var_108_16 = math.floor(var_108_2.y + var_108_2.h - var_108_14 - var_108_12 + 0.5)
	else
		var_108_16 = math.floor(var_108_2.y + math.max(0, math.floor(var_108_2.h * 0.12)) + 0.5)
	end

	return {
		icon = var_108_4,
		x = var_108_15,
		y = var_108_16,
		w = var_108_13,
		h = var_108_14,
		scale = var_108_8
	}
end

function var_0_0.hitTestBattleReady(arg_109_0, arg_109_1, arg_109_2, arg_109_3)
	if not var_0_0.isBattleReadyStep() then
		return false
	end

	local var_109_0 = var_0_66(arg_109_0, arg_109_1)

	if not var_109_0 then
		return false
	end

	local var_109_1 = 5

	return arg_109_2 >= var_109_0.x - var_109_1 and arg_109_2 <= var_109_0.x + var_109_0.w + var_109_1 and arg_109_3 >= var_109_0.y - var_109_1 and arg_109_3 <= var_109_0.y + var_109_0.h + var_109_1
end

function var_0_0.onBattleStarted(arg_110_0)
	if not var_0_0.isBattleReadyStep() then
		return false
	end

	var_0_4.step = STEP_BATTLE_FREE
	var_0_4.stepT = 0
	var_0_4.stepElapsed = 0

	local var_110_0 = rawget(_G, "slot")

	if var_110_0 then
		var_110_0._tutorialSpin = false
		var_110_0.stopTimes = nil

		if var_110_0._coreSpinMods then
			var_110_0._coreSpinMods.forceCells = nil
		end
	end

	if arg_110_0 then
		arg_110_0._tutorialBlockNonSlot = false
		arg_110_0._tutorialAllowReadyIcon = false
		arg_110_0._tutorialAllowUnitInteraction = false
		arg_110_0._tutorialCursorX = nil
		arg_110_0._tutorialCursorY = nil
	end

	return true
end

local function var_0_67(arg_111_0, arg_111_1)
	local var_111_0 = var_0_66(arg_111_0, arg_111_1)

	if not var_111_0 then
		return
	end

	local var_111_1 = arg_111_0 and arg_111_0.tutorial and arg_111_0.tutorial.readyFocus or {}
	local var_111_2 = tonumber(var_111_1.padX) or 6
	local var_111_3 = tonumber(var_111_1.padY) or 6

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(var_111_0.x - var_111_2 + 0.5), math.floor(var_111_0.y - var_111_3 + 0.5), math.floor(var_111_0.w + var_111_2 * 2 + 0.5), math.floor(var_111_0.h + var_111_3 * 2 + 0.5))
end

local function var_0_68(arg_112_0, arg_112_1)
	local var_112_0 = arg_112_1 and arg_112_1.nudgeBtns and arg_112_1.nudgeBtns[2]

	if not var_112_0 then
		return
	end

	local var_112_1 = 5

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_112_0.x - var_112_1, var_112_0.y - var_112_1, var_112_0.w + var_112_1 * 2, var_112_0.h + var_112_1 * 2)
end

local function var_0_69(arg_113_0)
	local var_113_0 = arg_113_0 and arg_113_0._tutorialFiremanRect

	if not var_113_0 then
		return
	end

	local var_113_1 = arg_113_0 and arg_113_0.tutorial and arg_113_0.tutorial.firemanFocus or {}
	local var_113_2 = tonumber(var_113_1.pad) or 6
	local var_113_3 = tonumber(var_113_1.offsetY) or 0

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_113_0.x - var_113_2, var_113_0.y - var_113_2 + var_113_3, var_113_0.w + var_113_2 * 2, var_113_0.h + var_113_2 * 2)
end

local function var_0_70(arg_114_0)
	local var_114_0 = arg_114_0 and arg_114_0.maxUnit or {}
	local var_114_1 = tonumber(var_114_0.x) or 369
	local var_114_2 = tonumber(var_114_0.y) or 9
	local var_114_3 = tonumber(var_114_0.tutorialFocusW) or tonumber(var_114_0.focusW) or 44
	local var_114_4 = tonumber(var_114_0.tutorialFocusH) or tonumber(var_114_0.focusH) or 22
	local var_114_5 = tonumber(var_114_0.tutorialFocusX)

	if not var_114_5 then
		local var_114_6 = var_114_0.align or "right"

		if var_114_6 == "right" then
			var_114_5 = var_114_1 - var_114_3 - 4
		elseif var_114_6 == "center" then
			var_114_5 = var_114_1 - var_114_3 * 0.5
		else
			var_114_5 = var_114_1 - 4
		end
	end

	local var_114_7 = tonumber(var_114_0.tutorialFocusOffsetX) or 8
	local var_114_8 = tonumber(var_114_0.tutorialFocusOffsetY) or -5

	return {
		x = math.floor(var_114_5 + var_114_7 + 0.5),
		y = math.floor(var_114_2 + var_114_8 + 0.5),
		w = math.floor(var_114_3 + 0.5),
		h = math.floor(var_114_4 + 0.5)
	}
end

local function var_0_71(arg_115_0)
	local var_115_0 = var_0_70(arg_115_0)

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_115_0.x, var_115_0.y, var_115_0.w, var_115_0.h)
end

local function var_0_72(arg_116_0, arg_116_1)
	local var_116_0 = arg_116_1 and arg_116_1.right
	local var_116_1 = arg_116_0 and arg_116_0.battlefieldSections and arg_116_0.battlefieldSections.shop

	if not var_116_0 or not var_116_1 then
		return nil
	end

	local var_116_2 = tonumber(var_116_1.scale) or 1
	local var_116_3 = arg_116_0 and arg_116_0._shopMode and 376 or tonumber(var_116_1.x) or 382
	local var_116_4 = var_116_0.x + var_116_3

	if var_116_1.anchor == "right" then
		var_116_4 = var_116_0.x + var_116_0.w + (tonumber(var_116_1.x) or 0)
	end

	local var_116_5 = var_116_0.y + (tonumber(var_116_1.y) or 0)
	local var_116_6 = tonumber(var_116_1.focusW) or 40 * var_116_2
	local var_116_7 = tonumber(var_116_1.focusH) or 32 * var_116_2

	return {
		x = var_116_4,
		y = var_116_5,
		w = var_116_6,
		h = var_116_7
	}
end

local function var_0_73(arg_117_0, arg_117_1)
	local var_117_0 = var_0_72(arg_117_0, arg_117_1)

	var_0_4.shopFocusRect = var_117_0

	if not var_117_0 then
		return
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(var_117_0.x - 6 + 0.5), math.floor(var_117_0.y - 6 + 0.5), math.floor(var_117_0.w + 12 + 0.5), math.floor(var_117_0.h + 12 + 0.5))
end

local function var_0_74(arg_118_0)
	local var_118_0 = arg_118_0 and arg_118_0.jungsuDisplay or {}
	local var_118_1 = tonumber(var_118_0.x) or 400
	local var_118_2 = tonumber(var_118_0.y) or 10

	return {
		h = 23,
		w = 44,
		x = var_118_1 - 22,
		y = var_118_2 - 6
	}
end

local function var_0_75(arg_119_0)
	local var_119_0 = arg_119_0 and arg_119_0._tutorialShopOfferRects

	return var_119_0 and var_119_0[var_0_4.shopTargetIndex or 1] or nil
end

local function var_0_76(arg_120_0)
	return arg_120_0 and arg_120_0._tutorialPurchasedItemRect or nil
end

local function var_0_77(arg_121_0, arg_121_1)
	local var_121_0 = arg_121_1 and arg_121_1.right
	local var_121_1 = arg_121_0 and arg_121_0.battlefieldSections and arg_121_0.battlefieldSections.battlefield

	if not var_121_0 or not var_121_1 then
		return nil
	end

	local var_121_2 = tonumber(var_121_1.scale) or 1

	return {
		x = var_121_0.x + (arg_121_0 and arg_121_0._shopMode and 382 or tonumber(var_121_1.x) or 376),
		y = var_121_0.y + (tonumber(var_121_1.y) or 230),
		w = (tonumber(var_121_1.focusW) or 40) * var_121_2,
		h = (tonumber(var_121_1.focusH) or 32) * var_121_2
	}
end

local function var_0_78(arg_122_0, arg_122_1)
	if not arg_122_0 then
		return
	end

	arg_122_1 = tonumber(arg_122_1) or 6

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(arg_122_0.x - arg_122_1 + 0.5), math.floor(arg_122_0.y - arg_122_1 + 0.5), math.floor(arg_122_0.w + arg_122_1 * 2 + 0.5), math.floor(arg_122_0.h + arg_122_1 * 2 + 0.5))
end

function var_0_0.hitTestBattlefieldReturn(arg_123_0, arg_123_1, arg_123_2, arg_123_3)
	if not var_0_0.isShopReturnStep() then
		return false
	end

	local var_123_0 = var_0_77(arg_123_0, arg_123_1)
	local var_123_1 = 7

	return var_123_0 and arg_123_2 >= var_123_0.x - var_123_1 and arg_123_2 <= var_123_0.x + var_123_0.w + var_123_1 and arg_123_3 >= var_123_0.y - var_123_1 and arg_123_3 <= var_123_0.y + var_123_0.h + var_123_1 or false
end

function var_0_0.hitTestShopIntro(arg_124_0, arg_124_1, arg_124_2, arg_124_3)
	if not var_0_0.isShopIntroStep() then
		return false
	end

	local var_124_0 = var_0_72(arg_124_0, arg_124_1)

	if not var_124_0 then
		return false
	end

	local var_124_1 = 8

	return arg_124_2 >= var_124_0.x - var_124_1 and arg_124_2 <= var_124_0.x + var_124_0.w + var_124_1 and arg_124_3 >= var_124_0.y - var_124_1 and arg_124_3 <= var_124_0.y + var_124_0.h + var_124_1
end

local function var_0_79(arg_125_0, arg_125_1, arg_125_2)
	local var_125_0 = rawget(_G, "battlefield")
	local var_125_1 = var_125_0 and var_125_0.classSelect
	local var_125_2 = arg_125_1 and arg_125_1.right
	local var_125_3 = var_125_1 and var_125_1._tutorialCardRects

	if not var_125_3 and var_125_2 then
		local var_125_4 = 2
		local var_125_5 = math.floor(math.min(180, var_125_2.w * 0.28))
		local var_125_6 = math.floor(math.min(320, var_125_2.h * 0.8))
		local var_125_7 = math.floor(var_125_5 * (arg_125_0 and arg_125_0.classCard and arg_125_0.classCard.gapMul or 0.2))
		local var_125_8 = var_125_5 * var_125_4 + var_125_7
		local var_125_9 = var_125_2.x + math.floor((var_125_2.w - var_125_8) / 2)
		local var_125_10 = var_125_2.y + math.floor((var_125_2.h - var_125_6) / 2)

		var_125_3 = {
			{
				x = var_125_9,
				y = var_125_10,
				w = var_125_5,
				h = var_125_6
			},
			{
				x = var_125_9 + var_125_5 + var_125_7,
				y = var_125_10,
				w = var_125_5,
				h = var_125_6
			}
		}
	end

	if not var_125_3 then
		return
	end

	love.graphics.setColor(1, 1, 1, 1)

	for iter_125_0 = 1, 2 do
		local var_125_11 = arg_125_2 == "skill" and var_125_1 and var_125_1._tutorialSkillRects and var_125_1._tutorialSkillRects[iter_125_0] or var_125_3[iter_125_0]

		if var_125_11 then
			local var_125_12 = arg_125_2 == "skill" and 5 or 8

			love.graphics.rectangle("fill", math.floor(var_125_11.x - var_125_12 + 0.5), math.floor(var_125_11.y - var_125_12 + 0.5), math.floor(var_125_11.w + var_125_12 * 2 + 0.5), math.floor(var_125_11.h + var_125_12 * 2 + 0.5))
		end
	end
end

local function var_0_80(arg_126_0)
	local var_126_0 = arg_126_0 and arg_126_0.tutorial and arg_126_0.tutorial.coreCounterFocus or {}
	local var_126_1 = arg_126_0 and arg_126_0.scrollIntroAnim or {}
	local var_126_2 = rawget(_G, "scrollIntroAnim")
	local var_126_3 = tonumber(var_126_1.scale) or 2
	local var_126_4 = 21 * var_126_3
	local var_126_5 = 20 * var_126_3
	local var_126_6 = tonumber(var_126_0.x)
	local var_126_7 = tonumber(var_126_0.y)

	var_126_6 = var_126_6 or tonumber(var_126_1.x) or 167
	var_126_7 = var_126_7 or (tonumber(var_126_1.y) or -16) + (var_126_2 and tonumber(var_126_2.slideY) or 0)

	local var_126_8 = tonumber(var_126_0.w) or var_126_4
	local var_126_9 = tonumber(var_126_0.h) or var_126_5

	return {
		x = math.floor(var_126_6 + 0.5),
		y = math.floor(var_126_7 + 0.5),
		w = math.floor(var_126_8 + 0.5),
		h = math.floor(var_126_9 + 0.5)
	}
end

local function var_0_81(arg_127_0)
	local var_127_0 = var_0_80(arg_127_0)
	local var_127_1 = arg_127_0 and arg_127_0.tutorial and arg_127_0.tutorial.coreCounterFocus or {}
	local var_127_2 = tonumber(var_127_1.pad) or 3

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_127_0.x - var_127_2, var_127_0.y - var_127_2, var_127_0.w + var_127_2 * 2, var_127_0.h + var_127_2 * 2)
end

local function var_0_82(arg_128_0, arg_128_1, arg_128_2, arg_128_3, arg_128_4, arg_128_5, arg_128_6)
	local var_128_0 = tonumber(arg_128_5.lineGap) or 16
	local var_128_1 = tonumber(arg_128_5.padX) or 12
	local var_128_2 = tonumber(arg_128_5.padY) or 12
	local var_128_3 = tonumber(arg_128_5.iconScale) or 1
	local var_128_4 = tonumber(arg_128_5.iconOffsetY) or 0
	local var_128_5 = arg_128_5.numberColor or arg_128_0 and arg_128_0.tutorial and arg_128_0.tutorial.numberColor
	local var_128_6 = arg_128_1 and arg_128_1.getHeight and arg_128_1:getHeight() or 12
	local var_128_7 = 0

	for iter_128_0, iter_128_1 in ipairs(arg_128_2) do
		var_128_7 = math.max(var_128_7, var_0_56(arg_128_1, iter_128_1, var_128_3))
	end

	local var_128_8 = var_128_6 + var_128_0 * (#arg_128_2 - 1)
	local var_128_9 = math.max(tonumber(arg_128_5.minW) or 0, math.floor(var_128_7 + var_128_1 * 2 + 0.5))
	local var_128_10 = math.max(tonumber(arg_128_5.minH) or 0, math.floor(var_128_8 + var_128_2 * 2 + 0.5))

	if tonumber(arg_128_5.w) and arg_128_5.autoSize == false then
		var_128_9 = tonumber(arg_128_5.w)
	end

	if tonumber(arg_128_5.h) and arg_128_5.autoSize == false then
		var_128_10 = tonumber(arg_128_5.h)
	end

	var_0_54(arg_128_0, arg_128_3, arg_128_4, var_128_9, var_128_10, arg_128_6)

	local var_128_11 = arg_128_3 + var_128_1 + (tonumber(arg_128_5.textOffsetX) or 0)
	local var_128_12 = arg_128_4 + math.floor((var_128_10 - var_128_8) * 0.5 + 0.5) + (tonumber(arg_128_5.textOffsetY) or 0)
	local var_128_13 = {
		0.9254901960784314,
		0.8980392156862745,
		0.8549019607843137,
		arg_128_6
	}

	for iter_128_2, iter_128_3 in ipairs(arg_128_2) do
		var_0_57(arg_128_1, iter_128_3, var_128_11, var_128_12 + var_128_0 * (iter_128_2 - 1), var_128_13, arg_128_6, var_128_3, var_128_4, var_128_5)
	end

	return var_128_9, var_128_10
end

local function var_0_83(arg_129_0, arg_129_1, arg_129_2)
	local var_129_0 = tonumber(arg_129_2.lineGap) or 16
	local var_129_1 = tonumber(arg_129_2.padX) or 12
	local var_129_2 = tonumber(arg_129_2.padY) or 12
	local var_129_3 = tonumber(arg_129_2.iconScale) or 1
	local var_129_4 = arg_129_0 and arg_129_0.getHeight and arg_129_0:getHeight() or 12
	local var_129_5 = 0

	for iter_129_0, iter_129_1 in ipairs(arg_129_1) do
		var_129_5 = math.max(var_129_5, var_0_56(arg_129_0, iter_129_1, var_129_3))
	end

	local var_129_6 = var_129_4 + var_129_0 * (#arg_129_1 - 1)
	local var_129_7 = math.max(tonumber(arg_129_2.minW) or 0, math.floor(var_129_5 + var_129_1 * 2 + 0.5))
	local var_129_8 = math.max(tonumber(arg_129_2.minH) or 0, math.floor(var_129_6 + var_129_2 * 2 + 0.5))

	if tonumber(arg_129_2.w) and arg_129_2.autoSize == false then
		var_129_7 = tonumber(arg_129_2.w)
	end

	if tonumber(arg_129_2.h) and arg_129_2.autoSize == false then
		var_129_8 = tonumber(arg_129_2.h)
	end

	return var_129_7, var_129_8
end

local function var_0_84(arg_130_0, arg_130_1)
	var_0_23()

	local var_130_0 = arg_130_0 and arg_130_0.restartConfirm and arg_130_0.restartConfirm.font or arg_130_0 and arg_130_0.coreMessage and arg_130_0.coreMessage.font or arg_130_0 and arg_130_0.font or var_0_5 or love.graphics.getFont()

	if var_130_0 and var_130_0.setFilter then
		var_130_0:setFilter("nearest", "nearest")
	end

	local var_130_1 = arg_130_0 and arg_130_0.virtual and arg_130_0.virtual.W or 640
	local var_130_2 = arg_130_0 and arg_130_0.virtual and arg_130_0.virtual.H or 360
	local var_130_3 = var_0_51(var_0_4.stepT or 0)
	local var_130_4 = var_130_3
	local var_130_5 = var_0_59(arg_130_0, arg_130_1)

	if var_0_4.step == STEP_ARCHER_WIN or var_0_4.step == STEP_WARRIOR_WIN or var_0_4.step == STEP_UNIT_HOVER or var_0_4.step == STEP_POST_CORE_ARCHER_WIN or var_0_4.step == STEP_PROMOTED_ARCHER then
		love.graphics.stencil(function()
			var_0_64(arg_130_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_BATTLE_READY then
		love.graphics.stencil(function()
			var_0_67(arg_130_0, arg_130_1)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_POSITION or var_0_4.step == STEP_ABSORB_DRAG or var_0_4.step == STEP_FREE_ABSORB or var_0_4.step == STEP_IMPRINT_INSPECT or var_0_4.step == STEP_FINAL_READY then
		love.graphics.stencil(function()
			local var_133_0 = arg_130_1 and arg_130_1.right

			if var_133_0 then
				love.graphics.rectangle("fill", var_133_0.x, var_133_0.y, var_133_0.w, var_133_0.h)
			end

			if var_0_4.step == STEP_FREE_ABSORB then
				var_0_65(arg_130_0)
			end

			if var_0_4.step == STEP_FINAL_READY then
				var_0_67(arg_130_0, arg_130_1)
			end
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest("equal", 1)
		love.graphics.setColor(0, 0, 0, 0.65 * (1 - var_130_3))
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_NUDGE_ACTION then
		love.graphics.stencil(function()
			var_0_68(arg_130_0, arg_130_1)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_ABSORB_BUTTON or var_0_4.step == STEP_FREE_ABSORB_BUTTON then
		love.graphics.stencil(function()
			var_0_69(arg_130_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_CORE_COUNTER then
		love.graphics.stencil(function()
			var_0_81(arg_130_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_CORE_SELECT then
		-- block empty
	elseif var_0_4.step == STEP_CLASS_PROMOTION or var_0_4.step == STEP_CLASS_SKILL_HOVER or var_0_4.step == STEP_CLASS_CHOOSE then
		-- block empty
	elseif var_0_4.step == STEP_MAX_UNIT_NOTICE then
		love.graphics.stencil(function()
			var_0_71(arg_130_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_SHOP_INTRO then
		love.graphics.stencil(function()
			var_0_73(arg_130_0, arg_130_1)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_SHOP_CURRENCY then
		love.graphics.stencil(function()
			var_0_78(var_0_74(arg_130_0), 5)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_SHOP_BUY then
		love.graphics.stencil(function()
			var_0_78(var_0_75(arg_130_0), 6)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_SHOP_ITEM_BOUGHT then
		love.graphics.stencil(function()
			var_0_78(var_0_76(arg_130_0), 6)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_SHOP_RETURN then
		love.graphics.stencil(function()
			var_0_78(var_0_77(arg_130_0, arg_130_1), 6)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_WAVE_TYPES or var_0_4.step == STEP_TUTORIAL_COMPLETE then
		love.graphics.stencil(function()
			local var_143_0 = arg_130_1 and arg_130_1.right

			if var_143_0 then
				love.graphics.rectangle("fill", var_143_0.x, var_143_0.y, var_143_0.w, var_143_0.h)
			end
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	elseif var_0_4.step == STEP_ABSORB_MODAL then
		-- block empty
	else
		love.graphics.stencil(function()
			if var_0_4.step == STEP_SLOT or var_0_4.step == STEP_GOLD or var_0_4.step == STEP_SECOND_SPIN or var_0_4.step == STEP_SECOND_SPINNING or var_0_4.step == STEP_REWARD_SPIN or var_0_4.step == STEP_REWARD_SPINNING or var_0_4.step == STEP_MORE_SPIN or var_0_4.step == STEP_MORE_SPINNING or var_0_4.step == STEP_NUDGE_MISS or var_0_4.step == STEP_NUDGE_WIN or var_0_4.step == STEP_CORE_SPIN or var_0_4.step == STEP_CORE_SPINNING or var_0_4.step == STEP_POST_CORE_SLOT or var_0_4.step == STEP_POST_CORE_SPINNING or var_0_4.step == STEP_POST_CORE_SECOND_SPIN or var_0_4.step == STEP_POST_CORE_SECOND_SPINNING or var_0_4.step == STEP_SLOT_BROKEN then
				var_0_61(arg_130_0, arg_130_1)
			end

			if var_0_4.step == STEP_GOLD or var_0_4.step == STEP_WAVE_REWARD then
				var_0_62(arg_130_0)
			end
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_130_4)
		love.graphics.rectangle("fill", 0, 0, var_130_1, var_130_2)
		love.graphics.setStencilTest()
	end

	if var_0_4.step == STEP_ABSORB_MODAL then
		return
	end

	local var_130_6 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.slotTip or {}
	local var_130_7 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.unitNameColor or {
		1,
		0.82,
		0.36
	}
	local var_130_8 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.absorbColor or {
		0.78,
		0.63,
		0.9
	}

	if var_0_4.step == STEP_CORE_SELECT then
		local var_130_9 = arg_130_0 and arg_130_0._coreSelect

		if not (var_130_9 and var_130_9.left and var_130_9.left.done and var_130_9.mid and var_130_9.mid.done and var_130_9.right and var_130_9.right.done) then
			return
		end

		if var_0_4.coreSelectTipReady ~= true then
			var_0_4.coreSelectTipReady = true
			var_0_4.stepT = 0
			var_0_4.stepElapsed = 0
		end
	end

	local var_130_10

	if var_0_4.step == STEP_GOLD then
		var_130_10 = {
			{
				{
					text = var_0_3("slot_cost_prefix")
				},
				{
					icon = "gold"
				},
				{
					text = var_0_3("slot_cost_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_ARCHER_WIN then
		var_130_10 = {
			{
				{
					text = var_0_3("good_prefix")
				},
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("archer_summoned_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_SECOND_SPIN or var_0_4.step == STEP_SECOND_SPINNING then
		var_130_10 = {
			var_0_3("second_spin")
		}
	elseif var_0_4.step == STEP_WARRIOR_WIN then
		var_130_10 = {
			{
				{
					text = var_0_3("this_time_prefix")
				},
				{
					text = var_0_3("unit_warrior"),
					color = var_130_7
				},
				{
					text = var_0_3("warrior_summoned_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_UNIT_HOVER then
		var_130_10 = {
			var_0_3("unit_hover_1"),
			var_0_3("unit_hover_2")
		}
	elseif var_0_4.step == STEP_POSITION then
		var_130_10 = {
			var_0_3("position_1"),
			{
				{
					text = var_0_3("mouse_prefix")
				},
				{
					icon = "mouseLeft"
				},
				{
					text = var_0_3("position_drag_suffix")
				}
			},
			{
				{
					text = var_0_3("unit_warrior"),
					color = var_130_7
				},
				{
					text = var_0_3("warrior_front_suffix")
				},
				{
					text = " "
				},
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("archer_back_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_WAVE_REWARD then
		var_130_10 = {
			{
				{
					text = var_0_3("wave_reward_prefix")
				},
				{
					icon = "gold"
				},
				{
					text = var_0_3("wave_reward_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_REWARD_SPIN or var_0_4.step == STEP_REWARD_SPINNING then
		var_130_10 = {
			{
				{
					text = var_0_3("reward_spin_prefix")
				},
				{
					icon = "gold"
				},
				{
					text = var_0_3("reward_spin_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_MORE_SPIN or var_0_4.step == STEP_MORE_SPINNING then
		if var_0_4.step == STEP_MORE_SPINNING and var_0_4.nudgePressed then
			var_130_10 = {
				var_0_3("nudge_win_1"),
				var_0_3("nudge_win_2")
			}
		else
			var_130_10 = {
				var_0_3("more_spin_1"),
				var_0_3("more_spin_2")
			}
		end
	elseif var_0_4.step == STEP_NUDGE_MISS then
		var_130_10 = {
			var_0_3("nudge_miss_1"),
			var_0_3("nudge_miss_2")
		}
	elseif var_0_4.step == STEP_NUDGE_ACTION then
		if var_0_4.nudgePressed then
			var_130_10 = {
				var_0_3("nudge_win_1"),
				var_0_3("nudge_win_2")
			}
		else
			var_130_10 = {
				var_0_3("nudge_action")
			}
		end
	elseif var_0_4.step == STEP_NUDGE_WIN then
		var_130_10 = {
			var_0_3("nudge_win_1"),
			var_0_3("nudge_win_2")
		}
	elseif var_0_4.step == STEP_ABSORB_BUTTON then
		var_130_10 = {
			{
				{
					text = var_0_3("absorb_intro_prefix")
				},
				{
					text = var_0_3("absorb_word"),
					color = var_130_8
				},
				{
					text = var_0_3("absorb_intro_suffix")
				}
			},
			{
				{
					text = var_0_3("absorb_word"),
					color = var_130_8
				},
				{
					text = var_0_3("absorb_button_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_ABSORB_DRAG then
		var_130_10 = {
			{
				{
					text = var_0_3("unit_spearman"),
					color = var_130_7
				},
				{
					text = var_0_3("object_particle")
				},
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("absorb_drag_middle")
				},
				{
					text = var_0_3("absorb_word"),
					color = var_130_8
				},
				{
					text = var_0_3("try_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_IMPRINT_INSPECT then
		var_130_10 = {
			{
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("subject_particle_space")
				},
				{
					text = var_0_3("absorb_word"),
					color = var_130_8
				},
				{
					text = var_0_3("imprint_inspect_1_suffix")
				}
			},
			{
				{
					text = var_0_3("mouse_prefix")
				},
				{
					icon = "mouseRight"
				},
				{
					text = var_0_3("with_particle")
				},
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("imprint_inspect_2_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_FINAL_READY then
		var_130_10 = {
			var_0_3("final_ready")
		}
	elseif var_0_4.step == STEP_CORE_COUNTER then
		var_130_10 = {
			var_0_3("core_counter_1"),
			var_0_3("core_counter_2")
		}
	elseif var_0_4.step == STEP_CORE_SPIN or var_0_4.step == STEP_CORE_SPINNING then
		var_130_10 = {
			var_0_3("core_spin")
		}
	elseif var_0_4.step == STEP_CORE_SELECT then
		var_130_10 = {
			var_0_3("core_select_1"),
			var_0_3("core_select_2")
		}
	elseif var_0_4.step == STEP_POST_CORE_SLOT or var_0_4.step == STEP_POST_CORE_SPINNING then
		var_130_10 = {
			var_0_3("post_core_spin")
		}
	elseif var_0_4.step == STEP_POST_CORE_ARCHER_WIN then
		var_130_10 = {
			{
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("archer_summoned_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_POST_CORE_SECOND_SPIN or var_0_4.step == STEP_POST_CORE_SECOND_SPINNING then
		var_130_10 = {
			var_0_3("one_more_spin")
		}
	elseif var_0_4.step == STEP_SLOT_BROKEN then
		var_130_10 = {
			var_0_3("slot_broken")
		}
	elseif var_0_4.step == STEP_MAX_UNIT_NOTICE then
		var_130_10 = {
			var_0_3("max_unit_notice")
		}
	elseif var_0_4.step == STEP_FREE_ABSORB_BUTTON then
		var_130_10 = {
			{
				{
					text = var_0_3("absorb_word"),
					color = var_130_8
				},
				{
					text = var_0_3("free_absorb_button_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_FREE_ABSORB then
		var_130_10 = {
			{
				{
					text = var_0_3("freely_prefix")
				},
				{
					text = var_0_3("absorb_word"),
					color = var_130_8
				},
				{
					text = var_0_3("through_particle")
				},
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("free_absorb_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_CLASS_PROMOTION then
		var_130_10 = {
			{
				{
					text = var_0_3("class_promotion_prefix")
				},
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("class_promotion_middle")
				}
			},
			var_0_3("class_promotion_2")
		}
	elseif var_0_4.step == STEP_CLASS_SKILL_HOVER then
		var_130_10 = {
			var_0_3("class_skill_1"),
			var_0_3("class_skill_2")
		}
	elseif var_0_4.step == STEP_CLASS_CHOOSE then
		var_130_10 = {
			var_0_3("class_choose")
		}
	elseif var_0_4.step == STEP_PROMOTED_ARCHER then
		var_130_10 = {
			{
				{
					text = var_0_3("unit_archer"),
					color = var_130_7
				},
				{
					text = var_0_3("promoted_archer_suffix")
				}
			},
			{
				{
					text = var_0_3("new_class_prefix")
				},
				{
					text = tostring(var_0_4.promotedName or var_0_3("new_unit_fallback")),
					color = var_130_7
				},
				{
					text = var_0_3("new_class_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_SHOP_INTRO then
		var_130_10 = {
			var_0_3("shop_intro")
		}
	elseif var_0_4.step == STEP_SHOP_CURRENCY then
		var_130_10 = {
			var_0_3("shop_currency_1"),
			var_0_3("shop_currency_2")
		}
	elseif var_0_4.step == STEP_SHOP_BUY then
		var_130_10 = {
			{
				{
					text = var_0_3("shop_buy_prefix")
				},
				{
					text = var_0_3("item_sturdy_fist"),
					color = var_130_7
				},
				{
					text = var_0_3("shop_buy_suffix")
				}
			}
		}
	elseif var_0_4.step == STEP_SHOP_ITEM_BOUGHT then
		var_130_10 = {
			var_0_3("shop_item_bought")
		}
	elseif var_0_4.step == STEP_SHOP_RETURN then
		var_130_10 = {
			var_0_3("shop_return")
		}
	elseif var_0_4.step == STEP_WAVE_TYPES then
		var_130_10 = {
			{
				{
					text = var_0_3("wave_types_prefix")
				},
				{
					icon = "judgement"
				},
				{
					text = var_0_3("judgement_wave_suffix")
				}
			},
			{
				{
					icon = "boss"
				},
				{
					text = var_0_3("boss_wave_suffix")
				}
			},
			var_0_3("wave_types_3"),
			var_0_3("wave_types_4")
		}
	elseif var_0_4.step == STEP_TUTORIAL_COMPLETE then
		var_130_10 = {
			var_0_3("complete_1"),
			var_0_3("complete_2")
		}
	elseif var_0_4.step == STEP_BATTLE_READY then
		var_130_10 = {
			var_0_3("battle_ready_1"),
			var_0_3("battle_ready_2")
		}
	else
		var_130_10 = {
			var_0_3("slot_intro_1"),
			var_0_3("slot_intro_2"),
			var_0_3("slot_intro_3")
		}
	end

	local var_130_11 = arg_130_1 and arg_130_1.slotPanel
	local var_130_12 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.slotFocus or {}
	local var_130_13 = var_130_11 and var_130_11.x + (tonumber(var_130_12.offsetX) or -20) or var_130_5.x
	local var_130_14 = var_130_11 and var_130_11.y + (tonumber(var_130_12.offsetY) or -24) or var_130_5.y
	local var_130_15 = var_130_13 + (var_130_11 and var_130_11.w + (tonumber(var_130_12.extraW) or 64) or var_130_5.w) + (tonumber(var_130_6.gapX) or 14)
	local var_130_16 = var_130_14 + (tonumber(var_130_6.offsetY) or 24)

	if var_0_4.step == STEP_ARCHER_WIN or var_0_4.step == STEP_WARRIOR_WIN or var_0_4.step == STEP_UNIT_HOVER or var_0_4.step == STEP_POST_CORE_ARCHER_WIN or var_0_4.step == STEP_PROMOTED_ARCHER then
		local var_130_17 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.winTip or {}
		local var_130_18 = arg_130_1 and arg_130_1.right or var_0_4.winLayout and var_0_4.winLayout.right

		if var_130_18 then
			var_130_15 = var_130_18.x + (tonumber(var_130_17.offsetX) or 56)
			var_130_16 = var_130_18.y + (tonumber(var_130_17.offsetY) or 58)
		end
	elseif var_0_4.step == STEP_POSITION then
		local var_130_19 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.positionTip or {}
		local var_130_20 = arg_130_1 and arg_130_1.right

		if var_130_20 then
			var_130_15 = var_130_20.x + var_130_20.w * 0.5
			var_130_16 = var_130_20.y + (tonumber(var_130_19.topY) or 12)
		end
	elseif var_0_4.step == STEP_NUDGE_ACTION then
		local var_130_21 = arg_130_1 and arg_130_1.nudgeBtns and arg_130_1.nudgeBtns[2]

		if var_130_21 then
			var_130_15 = var_130_21.x + var_130_21.w + 8
			var_130_16 = var_130_21.y
		end
	elseif var_0_4.step == STEP_ABSORB_BUTTON or var_0_4.step == STEP_FREE_ABSORB_BUTTON then
		local var_130_22 = arg_130_0 and arg_130_0._tutorialFiremanRect

		if var_130_22 then
			var_130_15 = var_130_22.x + var_130_22.w + 8
			var_130_16 = var_130_22.y
		end
	elseif var_0_4.step == STEP_BATTLE_READY then
		local var_130_23 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.readyTip or {}
		local var_130_24 = var_0_66(arg_130_0, arg_130_1)

		if var_130_24 then
			var_130_15 = var_130_24.x + var_130_24.w * 0.5
			var_130_16 = var_130_24.y - (tonumber(var_130_23.gapY) or 8)
		end
	end

	local var_130_25 = math.floor((1 - var_130_3) * 8 + 0.5)
	local var_130_26 = var_130_16 + var_130_25
	local var_130_27 = {}

	for iter_130_0, iter_130_1 in pairs(var_130_6) do
		var_130_27[iter_130_0] = iter_130_1
	end

	if var_0_4.step == STEP_ARCHER_WIN or var_0_4.step == STEP_WARRIOR_WIN or var_0_4.step == STEP_UNIT_HOVER or var_0_4.step == STEP_POST_CORE_ARCHER_WIN or var_0_4.step == STEP_PROMOTED_ARCHER then
		local var_130_28 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.winTip or {}

		for iter_130_2, iter_130_3 in pairs(var_130_28) do
			var_130_27[iter_130_2] = iter_130_3
		end
	elseif var_0_4.step == STEP_POSITION or var_0_4.step == STEP_ABSORB_DRAG or var_0_4.step == STEP_FREE_ABSORB or var_0_4.step == STEP_IMPRINT_INSPECT or var_0_4.step == STEP_FINAL_READY then
		local var_130_29 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.positionTip or {}

		for iter_130_4, iter_130_5 in pairs(var_130_29) do
			var_130_27[iter_130_4] = iter_130_5
		end
	elseif var_0_4.step == STEP_BATTLE_READY then
		local var_130_30 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.readyTip or {}

		for iter_130_6, iter_130_7 in pairs(var_130_30) do
			var_130_27[iter_130_6] = iter_130_7
		end
	end

	local var_130_31, var_130_32 = var_0_83(var_130_0, var_130_10, var_130_27)

	if var_0_4.step == STEP_GOLD or var_0_4.step == STEP_WAVE_REWARD then
		local var_130_33 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.goldFocus or {}
		local var_130_34 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.goldTip or {}
		local var_130_35 = arg_130_0 and arg_130_0.goldDisplay or {}
		local var_130_36 = tonumber(var_130_33.w) or 70
		local var_130_37 = tonumber(var_130_33.h) or 22
		local var_130_38 = tonumber(var_130_33.x)
		local var_130_39 = tonumber(var_130_33.y)

		if not var_130_38 then
			local var_130_40 = tonumber(var_130_35.x) or 288

			var_130_38 = (var_130_35.align or "right") == "right" and var_130_40 - var_130_36 or var_130_40
		end

		var_130_39 = var_130_39 or (tonumber(var_130_35.y) or 10) - 6
		var_130_15 = var_130_38 + var_130_36 * 0.5 - var_130_31 * 0.5 + (tonumber(var_130_34.offsetX) or 0)
		var_130_26 = var_130_39 + var_130_37 + (tonumber(var_130_34.gapY) or 4) + (tonumber(var_130_34.offsetY) or 0) + var_130_25
	elseif var_0_4.step == STEP_CORE_COUNTER then
		local var_130_41 = var_0_80(arg_130_0)
		local var_130_42 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.coreCounterTip or {}

		var_130_15 = var_130_41.x + var_130_41.w * 0.5 - var_130_31 * 0.5 + (tonumber(var_130_42.offsetX) or 0)
		var_130_26 = var_130_41.y + var_130_41.h + (tonumber(var_130_42.gapY) or 8) + (tonumber(var_130_42.offsetY) or 0) + var_130_25
	elseif var_0_4.step == STEP_CORE_SELECT then
		local var_130_43 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.coreSelectTip or {}

		var_130_15 = var_130_1 * 0.5 - var_130_31 * 0.5 + (tonumber(var_130_43.offsetX) or 0)
		var_130_26 = (tonumber(var_130_43.y) or 26) + (tonumber(var_130_43.offsetY) or 0) + var_130_25
	elseif var_0_4.step == STEP_MAX_UNIT_NOTICE then
		local var_130_44 = var_0_70(arg_130_0)

		var_130_15 = var_130_44.x + var_130_44.w * 0.5 - var_130_31 * 0.5
		var_130_26 = var_130_44.y + var_130_44.h + 8 + var_130_25
	elseif var_0_4.step == STEP_CLASS_PROMOTION or var_0_4.step == STEP_CLASS_SKILL_HOVER or var_0_4.step == STEP_CLASS_CHOOSE then
		local var_130_45 = arg_130_1 and arg_130_1.right

		if var_130_45 then
			var_130_15 = var_130_45.x + var_130_45.w * 0.5 - var_130_31 * 0.5
			var_130_26 = var_130_45.y + var_130_45.h - var_130_32 - 16 + var_130_25
		end
	elseif var_0_4.step == STEP_SHOP_INTRO then
		local var_130_46 = var_0_4.shopFocusRect

		if var_130_46 then
			local var_130_47 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.shopTip or {}
			local var_130_48 = var_130_47.side or "below"

			if var_130_48 == "below" then
				var_130_15 = var_130_46.x + var_130_46.w * 0.5 - var_130_31 * 0.5
				var_130_26 = var_130_46.y + var_130_46.h + (tonumber(var_130_47.gapY) or 8) + (tonumber(var_130_47.offsetY) or 0) + var_130_25
			elseif var_130_48 == "right" then
				var_130_15 = var_130_46.x + var_130_46.w + (tonumber(var_130_47.gapX) or 8)
				var_130_26 = var_130_46.y + var_130_46.h * 0.5 - var_130_32 * 0.5 + (tonumber(var_130_47.offsetY) or 0) + var_130_25
			else
				var_130_15 = var_130_46.x - var_130_31 - (tonumber(var_130_47.gapX) or 8)
				var_130_26 = var_130_46.y + var_130_46.h * 0.5 - var_130_32 * 0.5 + (tonumber(var_130_47.offsetY) or 0) + var_130_25
			end
		end
	elseif var_0_4.step == STEP_SHOP_CURRENCY then
		local var_130_49 = var_0_74(arg_130_0)

		var_130_15 = var_130_49.x + var_130_49.w * 0.5 - var_130_31 * 0.5
		var_130_26 = var_130_49.y + var_130_49.h + 8 + var_130_25
	elseif var_0_4.step == STEP_SHOP_BUY then
		local var_130_50 = var_0_75(arg_130_0)

		if var_130_50 then
			var_130_15 = var_130_50.x + var_130_50.w * 0.5 - var_130_31 * 0.5
			var_130_26 = var_130_50.y - var_130_32 - 9 + var_130_25
		end
	elseif var_0_4.step == STEP_SHOP_ITEM_BOUGHT then
		local var_130_51 = var_0_76(arg_130_0)

		if var_130_51 then
			var_130_15 = var_130_51.x + var_130_51.w * 0.5 - var_130_31 * 0.5
			var_130_26 = var_130_51.y - var_130_32 - 9 + var_130_25
		end
	elseif var_0_4.step == STEP_SHOP_RETURN then
		local var_130_52 = var_0_77(arg_130_0, arg_130_1)

		if var_130_52 then
			var_130_15 = var_130_52.x - var_130_31 - 9
			var_130_26 = var_130_52.y + var_130_52.h * 0.5 - var_130_32 * 0.5 + var_130_25
		end
	elseif var_0_4.step == STEP_WAVE_TYPES then
		local var_130_53 = arg_130_1 and arg_130_1.right

		if var_130_53 then
			var_130_15 = var_130_53.x + var_130_53.w * 0.5 - var_130_31 * 0.5
			var_130_26 = var_130_53.y + 5 + var_130_25
		end
	elseif var_0_4.step == STEP_TUTORIAL_COMPLETE then
		local var_130_54 = arg_130_1 and arg_130_1.right

		if var_130_54 then
			var_130_15 = var_130_54.x + var_130_54.w * 0.5 - var_130_31 * 0.5
			var_130_26 = var_130_54.y + 16 + var_130_25
		end
	elseif var_0_4.step == STEP_ARCHER_WIN or var_0_4.step == STEP_WARRIOR_WIN or var_0_4.step == STEP_UNIT_HOVER or var_0_4.step == STEP_POST_CORE_ARCHER_WIN or var_0_4.step == STEP_PROMOTED_ARCHER then
		local var_130_55, var_130_56 = var_0_63(arg_130_0)

		if var_130_56 and var_130_56.x and var_130_56.y then
			local var_130_57 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.winTip or {}
			local var_130_58 = tonumber(arg_130_0 and arg_130_0.battle and arg_130_0.battle.allySize32) or 64
			local var_130_59 = tonumber(var_130_57.unitGap) or 8

			var_130_15 = var_130_56.x - var_130_31 * 0.5 + (tonumber(var_130_57.unitOffsetX) or 0)
			var_130_26 = var_130_56.y - var_130_58 * 0.5 - var_130_32 - var_130_59 + (tonumber(var_130_57.unitOffsetY) or 0) + var_130_25
		end
	elseif var_0_4.step == STEP_POSITION or var_0_4.step == STEP_ABSORB_DRAG or var_0_4.step == STEP_FREE_ABSORB or var_0_4.step == STEP_IMPRINT_INSPECT or var_0_4.step == STEP_FINAL_READY then
		local var_130_60 = arg_130_1 and arg_130_1.right
		local var_130_61 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.positionTip or {}

		if var_130_60 then
			var_130_15 = var_130_60.x + var_130_60.w * 0.5 - var_130_31 * 0.5 + (tonumber(var_130_61.offsetX) or 0)
			var_130_26 = var_130_60.y + (tonumber(var_130_61.topY) or 12) + (tonumber(var_130_61.offsetY) or 0) + var_130_25
		end
	elseif var_0_4.step == STEP_NUDGE_ACTION then
		local var_130_62 = arg_130_1 and arg_130_1.nudgeBtns and arg_130_1.nudgeBtns[2]

		if var_130_62 then
			var_130_15 = var_130_62.x + var_130_62.w + 8
			var_130_26 = var_130_62.y + var_130_62.h * 0.5 - var_130_32 * 0.5 + var_130_25
		end
	elseif var_0_4.step == STEP_ABSORB_BUTTON or var_0_4.step == STEP_FREE_ABSORB_BUTTON then
		local var_130_63 = arg_130_0 and arg_130_0._tutorialFiremanRect

		if var_130_63 then
			var_130_15 = var_130_63.x + var_130_63.w + 8
			var_130_26 = var_130_63.y + var_130_63.h * 0.5 - var_130_32 * 0.5 + var_130_25
		end
	elseif var_0_4.step == STEP_BATTLE_READY then
		local var_130_64 = var_0_66(arg_130_0, arg_130_1)
		local var_130_65 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.readyTip or {}

		if var_130_64 then
			var_130_15 = var_130_64.x + var_130_64.w * 0.5 - var_130_31 * 0.5 + (tonumber(var_130_65.offsetX) or 0)
			var_130_26 = var_130_64.y - var_130_32 - (tonumber(var_130_65.gapY) or 8) + (tonumber(var_130_65.offsetY) or 0) + var_130_25
		end
	end

	if var_130_15 + var_130_31 > var_130_1 - 8 then
		var_130_15 = var_130_1 - var_130_31 - 8
	end

	if var_130_15 < 8 then
		var_130_15 = 8
	end

	if var_130_26 + var_130_32 > var_130_2 - 8 then
		var_130_26 = var_130_2 - var_130_32 - 8
	end

	if var_130_26 < 8 then
		var_130_26 = 8
	end

	var_0_82(arg_130_0, var_130_0, var_130_10, var_130_15, var_130_26, var_130_27, var_130_4)

	if var_0_4.step == STEP_ARCHER_WIN or var_0_4.step == STEP_WARRIOR_WIN or var_0_4.step == STEP_WAVE_REWARD or var_0_4.step == STEP_NUDGE_MISS or var_0_4.step == STEP_NUDGE_WIN or var_0_4.step == STEP_CORE_COUNTER or var_0_4.step == STEP_POST_CORE_ARCHER_WIN or var_0_4.step == STEP_SLOT_BROKEN or var_0_4.step == STEP_MAX_UNIT_NOTICE or var_0_4.step == STEP_CLASS_PROMOTION or var_0_4.step == STEP_PROMOTED_ARCHER or var_0_4.step == STEP_SHOP_CURRENCY or var_0_4.step == STEP_SHOP_ITEM_BOUGHT or var_0_4.step == STEP_WAVE_TYPES or var_0_4.step == STEP_TUTORIAL_COMPLETE then
		local var_130_66 = var_0_4.stepElapsed or 0
		local var_130_67 = math.max(0, math.min(1, (var_130_66 - var_0_16) / 0.35))

		if var_130_67 > 0 then
			local var_130_68 = arg_130_0 and arg_130_0.tutorial and arg_130_0.tutorial.continuePrompt or {}
			local var_130_69 = var_0_4.step == STEP_TUTORIAL_COMPLETE and var_0_3("finish_prompt") or var_0_3("continue_prompt")
			local var_130_70 = var_0_2()
			local var_130_71 = var_130_70 and var_130_70.actionGlyphImage and var_130_70.actionGlyphImage("confirm") or nil
			local var_130_72 = var_130_71 and var_130_71:getWidth() + 3 or 0

			love.graphics.setFont(var_130_0)
			love.graphics.setColor(0.8627450980392157, 0.8274509803921568, 0.7607843137254902, var_130_67 * var_130_4)

			local var_130_73 = var_130_15 + var_130_31 * 0.5 - (var_130_0:getWidth(var_130_69) + var_130_72) * 0.5 + (tonumber(var_130_68.offsetX) or 0)
			local var_130_74

			if var_0_4.step == STEP_WAVE_REWARD or var_0_4.step == STEP_CORE_COUNTER or var_0_4.step == STEP_MAX_UNIT_NOTICE or var_0_4.step == STEP_CLASS_PROMOTION or var_0_4.step == STEP_SHOP_CURRENCY or var_0_4.step == STEP_SHOP_ITEM_BOUGHT or var_0_4.step == STEP_WAVE_TYPES or var_0_4.step == STEP_TUTORIAL_COMPLETE then
				var_130_74 = var_130_26 + var_130_32 + (tonumber(var_130_68.gapY) or 7) + (tonumber(var_130_68.offsetY) or 0)
			else
				var_130_74 = var_130_26 - var_130_0:getHeight() - (tonumber(var_130_68.gapY) or 7) + (tonumber(var_130_68.offsetY) or 0)
			end

			if var_0_4.step == STEP_WAVE_TYPES or var_0_4.step == STEP_TUTORIAL_COMPLETE then
				local var_130_75 = 7
				local var_130_76 = 4
				local var_130_77 = var_130_0:getWidth(var_130_69) + var_130_72
				local var_130_78 = var_130_0:getHeight()
				local var_130_79 = math.floor(var_130_73 - var_130_75 + 0.5)
				local var_130_80 = math.floor(var_130_74 - var_130_76 + 0.5)
				local var_130_81 = math.floor(var_130_77 + var_130_75 * 2 + 0.5)
				local var_130_82 = math.floor(var_130_78 + var_130_76 * 2 + 0.5)

				var_0_54(arg_130_0, var_130_79, var_130_80, var_130_81, var_130_82, var_130_67 * var_130_4, {
					0.10980392156862745,
					0.10588235294117647,
					0.12156862745098039,
					0.78
				})
				love.graphics.setColor(0.8627450980392157, 0.8274509803921568, 0.7607843137254902, var_130_67 * var_130_4)
			end

			local var_130_83 = (var_0_4.step == STEP_WAVE_TYPES or var_0_4.step == STEP_TUTORIAL_COMPLETE) and -1 or 0

			if var_130_71 then
				local var_130_84, var_130_85, var_130_86, var_130_87 = love.graphics.getColor()

				love.graphics.setColor(1, 1, 1, var_130_67 * var_130_4)
				love.graphics.draw(var_130_71, math.floor(var_130_73 + 0.5), math.floor(var_130_74 + var_130_83 + (var_130_0:getHeight() - var_130_71:getHeight()) * 0.5 + 0.5))
				love.graphics.setColor(var_130_84, var_130_85, var_130_86, var_130_87)
			end

			love.graphics.print(var_130_69, math.floor(var_130_73 + var_130_72 + 0.5), math.floor(var_130_74 + var_130_83 + 0.5))
		end
	end
end

function var_0_0.draw(arg_145_0, arg_145_1)
	if arg_145_0 then
		arg_145_0._tutorialShopIntroFocus = var_0_4.running == true and var_0_4.step == STEP_SHOP_INTRO or nil
		arg_145_0._tutorialBattleReturnFocus = var_0_4.running == true and var_0_4.step == STEP_SHOP_RETURN or nil
	end

	if var_0_4.running and var_0_4.step ~= STEP_BATTLE_FREE and var_0_4.step >= STEP_SLOT and var_0_4.step <= STEP_TUTORIAL_COMPLETE then
		var_0_84(arg_145_0, arg_145_1)

		return
	end

	if not var_0_4.active then
		return
	end

	var_0_23()

	local var_145_0 = arg_145_0 and arg_145_0.classCard and arg_145_0.classCard.font or arg_145_0 and arg_145_0.fontClassCard or var_0_5 or love.graphics.getFont()

	if var_145_0 and var_145_0.setFilter then
		var_145_0:setFilter("nearest", "nearest")
	end

	local var_145_1 = var_0_41(arg_145_0)

	var_0_4.buttons = var_145_1

	local var_145_2 = var_145_1.panel
	local var_145_3 = var_0_50(var_0_4.t or 0)
	local var_145_4 = var_0_51(var_145_3)
	local var_145_5 = var_145_4
	local var_145_6 = var_0_52((var_145_3 - 0.18) / 0.82)
	local var_145_7 = math.floor((1 - var_145_4) * 10 + 0.5)
	local var_145_8 = math.sin(math.min(1, var_145_3) * math.pi) * 0.012
	local var_145_9 = 0.96 + 0.04 * var_145_4 + var_145_8
	local var_145_10 = var_145_2.x + var_145_2.w * 0.5
	local var_145_11 = var_145_2.y + var_145_2.h * 0.5
	local var_145_12 = arg_145_0 and arg_145_0.tutorial or {}
	local var_145_13 = var_145_10 + (tonumber(var_145_12.contentOffsetX) or 0)
	local var_145_14 = tonumber(var_145_12.contentOffsetY) or 25
	local var_145_15 = {
		body = {
			0.22745098039215686,
			0.19607843137254902,
			0.25098039215686274,
			var_145_6
		},
		brand = {
			0.4549019607843137,
			0.2627450980392157,
			0.4627450980392157,
			var_145_6
		},
		keyword = {
			0.4,
			0.3254901960784314,
			0.5725490196078431,
			var_145_6
		},
		prompt = {
			0.21568627450980393,
			0.4627450980392157,
			0.27450980392156865,
			var_145_6
		},
		buttonText = {
			0.18823529411764706,
			0.1607843137254902,
			0.21176470588235294,
			var_145_6
		},
		buttonOutline = {
			0.43529411764705883,
			0.26666666666666666,
			0.2980392156862745,
			var_145_6
		},
		startButtonOutline = {
			0.28627450980392155,
			0.49411764705882355,
			0.3058823529411765,
			var_145_6
		}
	}

	love.graphics.setColor(0, 0, 0, 0.65 * var_145_5)
	love.graphics.rectangle("fill", 0, 0, var_145_1.W, var_145_1.H)
	love.graphics.push()
	love.graphics.translate(var_145_10, var_145_11 + var_145_7)
	love.graphics.scale(var_145_9, var_145_9)
	love.graphics.translate(-var_145_10, -var_145_11)

	local var_145_16 = var_0_24()

	if var_145_16 then
		love.graphics.setColor(1, 1, 1, var_145_5)
		var_0_40(var_145_16, var_145_2.x, var_145_2.y, var_145_2.scale, var_145_1.windowExtraRows)
	end

	local var_145_17 = var_0_25()

	if var_145_17 then
		local var_145_18 = var_145_12.titleImage or {}
		local var_145_19 = tonumber(var_145_18.scale) or 1
		local var_145_20 = math.floor(var_145_13 + (tonumber(var_145_18.offsetX) or 0) - var_145_17:getWidth() * var_145_19 * 0.5 + 0.5)
		local var_145_21 = math.floor(var_145_2.y + (tonumber(var_145_18.offsetY) or 10) + 0.5)

		love.graphics.setColor(1, 1, 1, var_145_6)
		love.graphics.draw(var_145_17, var_145_20, var_145_21, 0, var_145_19, var_145_19)
	end

	local var_145_22 = var_145_15.body
	local var_145_23 = var_145_12.bodyLines or {}

	local function var_145_24(arg_146_0, arg_146_1)
		local var_146_0 = var_145_23[arg_146_0] or {}

		return tonumber(var_146_0.offsetX) or 0, tonumber(var_146_0.offsetY) or arg_146_1
	end

	local var_145_25, var_145_26 = var_145_24(1, 37)

	var_0_53(var_145_0, var_0_37(1, var_145_15), var_145_13 + var_145_25, var_145_2.y + var_145_14 + var_145_26, var_145_22)

	local var_145_27, var_145_28 = var_145_24(2, 61)
	local var_145_29, var_145_30 = var_145_24(3, 77)
	local var_145_31 = 0

	for iter_145_0 = 2, 3 do
		local var_145_32 = var_145_24(iter_145_0, 0)

		for iter_145_1, iter_145_2 in ipairs(var_0_38(var_145_0, var_0_37(iter_145_0, var_145_15), var_0_35)) do
			var_0_53(var_145_0, iter_145_2, var_145_13 + var_145_32, var_145_2.y + var_145_14 + var_145_28 + (var_145_30 - var_145_28) * var_145_31, var_145_22)

			var_145_31 = var_145_31 + 1
		end
	end

	local var_145_33 = var_145_12.startPrompt or {}

	var_0_49(var_145_0, var_0_3("welcome_question"), var_145_13 + (tonumber(var_145_33.offsetX) or 0), var_145_2.y + var_145_14 + (tonumber(var_145_33.offsetY) or 121) + (var_145_1.windowExtraRows or 0) * var_145_2.scale, var_145_15.prompt)

	local var_145_34 = var_145_0

	love.graphics.setFont(var_145_34)

	local var_145_35 = var_0_3("start")
	local var_145_36 = var_0_3("skip")
	local var_145_37 = var_0_30()

	if var_145_37 then
		local var_145_38 = arg_145_0 and arg_145_0.coreSelect and arg_145_0.coreSelect.buttons or {}
		local var_145_39 = var_145_12.welcomeSkip or {}
		local var_145_40 = var_0_20()
		local var_145_41 = tonumber(var_145_39.lockedAlpha) or 0.35
		local var_145_42 = var_145_40 and 1 or tonumber(var_145_39.lockedLabelAlpha) or 0.85
		local var_145_43 = var_145_40 and 1 or var_145_41
		local var_145_44 = var_145_38.hover and var_145_38.hover.liftPx or 4
		local var_145_45 = var_145_1.start.y - math.floor(var_145_44 * (var_0_4.hoverStart or 0) + 0.5)
		local var_145_46 = var_145_1.skip.y - math.floor(var_145_44 * (var_0_4.hoverSkip or 0) + 0.5)
		local var_145_47 = require("src.ui.widgets").core_button

		love.graphics.setColor(1, 1, 1, var_145_6)
		var_145_47.draw(var_145_37, var_145_1.start.x, var_145_45, var_145_1.buttonScale, var_145_1.buttonExtraSrc)
		love.graphics.setColor(1, 1, 1, var_145_6 * var_145_43)
		var_145_47.draw(var_145_37, var_145_1.skip.x, var_145_46, var_145_1.buttonScale, var_145_1.buttonExtraSrc)

		local var_145_48 = var_0_31()

		if var_145_48 then
			var_145_48:send("texelStep", {
				1 / (var_145_37:getWidth() * var_145_1.buttonScale),
				1 / (var_145_37:getHeight() * var_145_1.buttonScale)
			})
			var_145_48:send("outlineColor", var_145_15.buttonOutline)
			var_145_48:send("threshold", 0.01)
			var_145_48:send("radiusPx", var_145_38.hover and var_145_38.hover.outlineRadiusPx or 2)

			if (var_0_4.hoverStart or 0) > 0.01 then
				var_145_48:send("outlineColor", var_145_15.startButtonOutline)
				love.graphics.setShader(var_145_48)
				var_145_47.draw(var_145_37, var_145_1.start.x, var_145_45, var_145_1.buttonScale, var_145_1.buttonExtraSrc)
				love.graphics.setShader()
			end

			if var_145_40 and (var_0_4.hoverSkip or 0) > 0.01 then
				var_145_48:send("outlineColor", var_145_15.buttonOutline)
				love.graphics.setShader(var_145_48)
				var_145_47.draw(var_145_37, var_145_1.skip.x, var_145_46, var_145_1.buttonScale, var_145_1.buttonExtraSrc)
				love.graphics.setShader()
			end
		end

		local var_145_49 = var_145_38.labelScale or 1
		local var_145_50 = var_145_38.labelYOffsetPx or -2

		local function var_145_51(arg_147_0, arg_147_1, arg_147_2, arg_147_3)
			local var_147_0 = var_145_34:getWidth(arg_147_0) * var_145_49
			local var_147_1 = var_145_34:getHeight() * var_145_49
			local var_147_2 = math.floor(arg_147_1.x + (arg_147_1.w - var_147_0) * 0.5 + 0.5)
			local var_147_3 = math.floor(arg_147_2 + (arg_147_1.h - var_147_1) * 0.5 + var_145_50 + 0.5)

			love.graphics.setColor(var_145_15.buttonText[1], var_145_15.buttonText[2], var_145_15.buttonText[3], (var_145_15.buttonText[4] or 1) * (arg_147_3 or 1))
			love.graphics.print(arg_147_0, var_147_2, var_147_3, 0, var_145_49, var_145_49)
		end

		var_145_51(var_145_35, var_145_1.start, var_145_45)
		var_145_51(var_145_36, var_145_1.skip, var_145_46, var_145_42)

		if not var_145_40 then
			local var_145_52 = math.max(1, math.ceil(var_0_17 - (var_0_4.skipLockElapsed or 0)))
			local var_145_53 = string.format(var_0_3("skip_countdown_fmt"), var_145_52)
			local var_145_54 = arg_145_0 and arg_145_0.restartConfirm and arg_145_0.restartConfirm.font or arg_145_0 and arg_145_0.coreMessage and arg_145_0.coreMessage.font or arg_145_0 and arg_145_0.font or var_0_5 or var_145_34

			if var_145_54 and var_145_54.setFilter then
				var_145_54:setFilter("nearest", "nearest")
			end

			love.graphics.setFont(var_145_54)

			local var_145_55 = tonumber(var_145_39.counterScale) or 1
			local var_145_56 = tonumber(var_145_39.counterGapY) or 2
			local var_145_57 = var_145_54:getWidth(var_145_53) * var_145_55
			local var_145_58 = math.floor(var_145_1.skip.x + (var_145_1.skip.w - var_145_57) * 0.5 + 0.5)
			local var_145_59 = math.floor(var_145_46 + var_145_1.skip.h + var_145_56 + 0.5)
			local var_145_60 = var_145_39.counterColor or {
				0.9254901960784314,
				0.8980392156862745,
				0.8549019607843137,
				1
			}

			love.graphics.setColor(var_145_60[1] or 1, var_145_60[2] or 1, var_145_60[3] or 1, var_145_6 * (tonumber(var_145_39.counterAlpha) or 1))
			love.graphics.print(var_145_53, var_145_58, var_145_59, 0, var_145_55, var_145_55)
			love.graphics.setFont(var_145_34)
		end
	end

	love.graphics.pop()
	love.graphics.setColor(1, 1, 1, 1)
end

return var_0_0
