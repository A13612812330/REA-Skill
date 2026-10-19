local var_0_0 = {}
local var_0_1 = require("src.data.language")

local function var_0_2(arg_1_0)
	return var_0_1.getText("tutorial_" .. tostring(arg_1_0), _G.currentGameLang or "ko")
end

local var_0_3 = {
	pending = false,
	active = false,
	skipped = false,
	t = 0,
	step = 0,
	running = false
}
local var_0_4
local var_0_5
local var_0_6
local var_0_7
local var_0_8
local var_0_9
local var_0_10
local var_0_11
local var_0_12 = {}
local var_0_13
local var_0_14

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

local var_0_15 = 1.2
local var_0_16 = 5
local var_0_17 = 3
local var_0_18 = 2.5

local function var_0_19()
	return (var_0_3.skipLockElapsed or 0) >= var_0_16
end

local function var_0_20(arg_3_0)
	if not love or not love.graphics or not love.graphics.newFont then
		return nil
	end

	arg_3_0 = require("src.data.font_resolver").resolve(arg_3_0)

	local var_3_0, var_3_1 = pcall(love.graphics.newFont, arg_3_0)

	if var_3_0 and var_3_1 then
		var_3_1:setFilter("nearest", "nearest")

		return var_3_1
	end

	return nil
end

local function var_0_21()
	var_0_4 = var_0_4 or var_0_20("src/data/font/Galmuri9W.fnt")
end

local function var_0_22()
	if var_0_5 then
		return var_0_5
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	local var_5_0, var_5_1 = pcall(love.graphics.newImage, "src/sprites/background/mainbackground/tutorialwindow.png")

	if var_5_0 and var_5_1 then
		var_5_1:setFilter("nearest", "nearest")

		var_0_5 = var_5_1
	end

	return var_0_5
end

local function var_0_23()
	if var_0_6 then
		return var_0_6
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	local var_6_0, var_6_1 = pcall(love.graphics.newImage, "src/sprites/mainmenu/tutorial.png")

	if var_6_0 and var_6_1 then
		var_6_1:setFilter("nearest", "nearest")

		var_0_6 = var_6_1
	end

	return var_0_6
end

local function var_0_24()
	if var_0_11 then
		return var_0_11
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	local var_7_0 = {
		"src/sprites/icons/tooltip/gold.png",
		"src/sprites/icons/menu/gold.png"
	}

	for iter_7_0, iter_7_1 in ipairs(var_7_0) do
		local var_7_1, var_7_2 = pcall(love.graphics.newImage, iter_7_1)

		if var_7_1 and var_7_2 then
			var_7_2:setFilter("nearest", "nearest")

			var_0_11 = var_7_2

			return var_0_11
		end
	end

	return nil
end

local function var_0_25(arg_8_0)
	arg_8_0 = arg_8_0 == "mouseLeft" and "mouseLeft" or "mouseRight"

	if var_0_12[arg_8_0] then
		return var_0_12[arg_8_0]
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	local var_8_0 = arg_8_0 == "mouseLeft" and "mouserleftsmall.png" or "mouserightsmall.png"
	local var_8_1, var_8_2 = pcall(love.graphics.newImage, "src/sprites/icons/tooltip/" .. var_8_0)

	if var_8_1 and var_8_2 then
		var_8_2:setFilter("nearest", "nearest")

		var_0_12[arg_8_0] = var_8_2
	end

	return var_0_12[arg_8_0]
end

local function var_0_26(arg_9_0)
	if arg_9_0 == "judgement" and var_0_13 then
		return var_0_13
	end

	if arg_9_0 == "boss" and var_0_14 then
		return var_0_14
	end

	if not love or not love.graphics or not love.graphics.newImage then
		return nil
	end

	local var_9_0 = arg_9_0 == "judgement" and "src/sprites/icons/battlefieldicons/battle_small.png" or "src/sprites/icons/battlefieldicons/boss.png"
	local var_9_1, var_9_2 = pcall(love.graphics.newImage, var_9_0)

	if var_9_1 and var_9_2 then
		var_9_2:setFilter("nearest", "nearest")

		if arg_9_0 == "judgement" then
			var_0_13 = var_9_2
		else
			var_0_14 = var_9_2
		end

		return var_9_2
	end

	return nil
end

local function var_0_27()
	if not var_0_7 and love and love.graphics then
		local var_10_0 = "src/sprites/background/button/corescrollbutton.png"
		local var_10_1, var_10_2 = pcall(love.graphics.newImage, var_10_0)

		if var_10_1 and var_10_2 then
			var_10_2:setFilter("nearest", "nearest")

			var_0_7 = var_10_2
		end

		if love.image and love.image.newImageData then
			local var_10_3, var_10_4 = pcall(love.image.newImageData, var_10_0)

			if var_10_3 then
				var_0_8 = var_10_4
			end
		end
	end

	return var_0_7
end

local function var_0_28()
	if var_0_9 or not love or not love.graphics or not love.graphics.newShader then
		return var_0_9
	end

	local var_11_0 = "    extern vec2 texelStep;\n    extern vec4 outlineColor;\n    extern float threshold;\n    extern float radiusPx;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold) {\n        vec2 s = texelStep;\n        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n        if (radiusPx > 1.5) {\n          vec2 t = s * 2.0;\n          float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;\n          float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;\n          float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;\n          float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;\n          float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;\n          float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;\n          float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;\n          float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;\n          float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));\n          neighbor = max(neighbor, neighbor2);\n        }\n        if (neighbor > threshold) return outlineColor;\n      }\n      return vec4(0.0);\n    }\n  "
	local var_11_1, var_11_2 = pcall(love.graphics.newShader, var_11_0)

	if var_11_1 then
		var_0_9 = var_11_2
	end

	return var_0_9
end

local function var_0_29()
	if var_0_10 or not love or not love.graphics or not love.graphics.newShader then
		return var_0_10
	end

	local var_12_0 = "    extern float threshold;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      vec4 px = Texel(tex, tc) * color;\n      if (px.a <= threshold) discard;\n      return px;\n    }\n  "
	local var_12_1, var_12_2 = pcall(love.graphics.newShader, var_12_0)

	if var_12_1 then
		var_0_10 = var_12_2

		var_0_10:send("threshold", 0.01)
	end

	return var_0_10
end

local function var_0_30(arg_13_0, arg_13_1, arg_13_2)
	return arg_13_2 and arg_13_0 >= arg_13_2.x and arg_13_0 <= arg_13_2.x + arg_13_2.w and arg_13_1 >= arg_13_2.y and arg_13_1 <= arg_13_2.y + arg_13_2.h
end

local function var_0_31(arg_14_0)
	if arg_14_0 and arg_14_0.battle and tonumber(arg_14_0.battle.allySize32) and arg_14_0.battle.allySize32 > 0 then
		return math.max(1, math.floor(arg_14_0.battle.allySize32 / 32 + 0.5))
	end

	return math.max(1, math.floor(tonumber(arg_14_0 and arg_14_0.battle and arg_14_0.battle.unitScale) or 2))
end

local function var_0_32(arg_15_0)
	local var_15_0 = arg_15_0 and arg_15_0.virtual and arg_15_0.virtual.W or 640
	local var_15_1 = arg_15_0 and arg_15_0.virtual and arg_15_0.virtual.H or 360
	local var_15_2 = var_0_31(arg_15_0)
	local var_15_3 = var_0_22()
	local var_15_4 = var_0_27()
	local var_15_5 = (var_15_3 and var_15_3:getWidth() or 107) * var_15_2
	local var_15_6 = (var_15_3 and var_15_3:getHeight() or 109) * var_15_2
	local var_15_7 = arg_15_0 and arg_15_0.coreSelect and arg_15_0.coreSelect.buttons and arg_15_0.coreSelect.buttons.scale or 2
	local var_15_8 = (var_15_4 and var_15_4:getWidth() or 64) * var_15_7
	local var_15_9 = (var_15_4 and var_15_4:getHeight() or 16) * var_15_7
	local var_15_10 = arg_15_0 and arg_15_0.coreSelect and arg_15_0.coreSelect.buttons and arg_15_0.coreSelect.buttons.gapPx or 20
	local var_15_11 = 8
	local var_15_12 = var_15_6 + var_15_11 + var_15_9
	local var_15_13 = math.floor((var_15_0 - var_15_5) * 0.5 / var_15_2 + 0.5) * var_15_2
	local var_15_14 = math.floor((var_15_1 - var_15_12) * 0.5 / var_15_2 + 0.5) * var_15_2
	local var_15_15 = math.floor((var_15_0 - (var_15_8 * 2 + var_15_10)) * 0.5 + 0.5)
	local var_15_16 = var_15_14 + var_15_6 + var_15_11

	return {
		W = var_15_0,
		H = var_15_1,
		panel = {
			x = var_15_13,
			y = var_15_14,
			w = var_15_5,
			h = var_15_6,
			scale = var_15_2
		},
		buttonScale = var_15_7,
		start = {
			x = var_15_15,
			y = var_15_16,
			w = var_15_8,
			h = var_15_9
		},
		skip = {
			x = var_15_15 + var_15_8 + var_15_10,
			y = var_15_16,
			w = var_15_8,
			h = var_15_9
		}
	}
end

local function var_0_33(arg_16_0, arg_16_1, arg_16_2)
	local var_16_0 = arg_16_0 and arg_16_0[arg_16_1]

	if not var_16_0 then
		return nil
	end

	local var_16_1 = arg_16_2 and arg_16_2.coreSelect and arg_16_2.coreSelect.buttons or {}
	local var_16_2 = var_16_1.hover and var_16_1.hover.liftPx or 4
	local var_16_3 = arg_16_1 == "start" and (var_0_3.hoverStart or 0) or var_0_3.hoverSkip or 0

	return {
		x = var_16_0.x,
		y = var_16_0.y - math.floor(var_16_2 * var_16_3 + 0.5),
		w = var_16_0.w,
		h = var_16_0.h
	}
end

local function var_0_34(arg_17_0, arg_17_1, arg_17_2, arg_17_3)
	if not var_0_30(arg_17_0, arg_17_1, arg_17_2) then
		return false
	end

	if not var_0_8 then
		return true
	end

	local var_17_0 = math.floor((arg_17_0 - arg_17_2.x) / arg_17_3)
	local var_17_1 = math.floor((arg_17_1 - arg_17_2.y) / arg_17_3)
	local var_17_2, var_17_3 = var_0_8:getDimensions()

	if var_17_0 < 0 or var_17_1 < 0 or var_17_2 <= var_17_0 or var_17_3 <= var_17_1 then
		return false
	end

	local var_17_4, var_17_5, var_17_6, var_17_7 = var_0_8:getPixel(var_17_0, var_17_1)

	return (var_17_7 or 0) > 0.05
end

function var_0_0.beginForRun(arg_18_0, arg_18_1, arg_18_2)
	if not (not arg_18_2 or not arg_18_2.menuSettings or arg_18_2.menuSettings.tutorialEnabled ~= false) or tonumber(arg_18_0) ~= 1 or tonumber(arg_18_1) ~= 1 then
		var_0_3.active = false
		var_0_3.pending = false
		var_0_3.running = false

		return false
	end

	var_0_3.active = false
	var_0_3.pending = true
	var_0_3.running = false
	var_0_3.skipped = false
	var_0_3.step = 0
	var_0_3.t = 0
	var_0_3.skipLockElapsed = 0
	var_0_3.stepElapsed = 0
	var_0_3.hovered = nil
	var_0_3.hoverStart = 0
	var_0_3.hoverSkip = 0
	var_0_3.buttons = nil
	var_0_3.winRosterIndex = nil
	var_0_3.archerRosterIndex = nil
	var_0_3.archerRef = nil
	var_0_3.warriorRosterIndex = nil
	var_0_3.mageRosterIndex = nil
	var_0_3.spearRosterIndex = nil
	var_0_3.extraWarriorRosterIndex = nil
	var_0_3.postCoreArcherRosterIndex = nil
	var_0_3.postCoreArcherRef = nil
	var_0_3.promotedUnitRef = nil
	var_0_3.postCoreSpearCount = 0
	var_0_3.classSkillHovered = nil
	var_0_3.classSkillCompleteT = nil
	var_0_3.promotedName = nil
	var_0_3.unitHoverT = 0
	var_0_3.unitHoverCount = 0
	var_0_3.unitHoverWasOver = false
	var_0_3.movedArcher = false
	var_0_3.movedWarrior = false
	var_0_3.dragStartRef, var_0_3.dragStartX, var_0_3.dragStartY = nil

	return true
end

function var_0_0.isPending()
	return var_0_3.pending == true
end

function var_0_0.activatePending()
	if not var_0_3.pending then
		return false
	end

	var_0_3.pending = false
	var_0_3.active = true
	var_0_3.t = 0
	var_0_3.skipLockElapsed = 0
	var_0_3.hovered = nil
	var_0_3.hoverStart = 0
	var_0_3.hoverSkip = 0
	var_0_3.buttons = nil

	return true
end

function var_0_0.isActive()
	return var_0_3.active == true
end

function var_0_0.isRunning()
	return var_0_3.running == true
end

function var_0_0.isOverlayVisible()
	return var_0_3.active == true or var_0_3.running == true and var_0_3.step ~= STEP_BATTLE_FREE and var_0_3.step >= STEP_SLOT and var_0_3.step <= STEP_TUTORIAL_COMPLETE
end

function var_0_0.stop(arg_24_0)
	var_0_3.active = false
	var_0_3.pending = false
	var_0_3.running = false
	var_0_3.skipped = false
	var_0_3.step = 0
	var_0_3.t = 0
	var_0_3.skipLockElapsed = 0
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0
	var_0_3.spinStarted = false
	var_0_3.hovered = nil
	var_0_3.buttons = nil
	var_0_3.winLayout = nil
	var_0_3.winRosterIndex = nil
	var_0_3.archerRosterIndex = nil
	var_0_3.archerRef = nil
	var_0_3.warriorRosterIndex = nil
	var_0_3.mageRosterIndex = nil
	var_0_3.spearRosterIndex = nil
	var_0_3.extraWarriorRosterIndex = nil
	var_0_3.postCoreArcherRosterIndex = nil
	var_0_3.postCoreArcherRef = nil
	var_0_3.promotedUnitRef = nil
	var_0_3.postCoreSpearCount = 0
	var_0_3.classSkillHovered = nil
	var_0_3.classSkillCompleteT = nil
	var_0_3.promotedName = nil
	var_0_3.unitHoverT = 0
	var_0_3.unitHoverCount = 0
	var_0_3.unitHoverWasOver = false
	var_0_3.movedArcher = false
	var_0_3.movedWarrior = false
	var_0_3.dragStartRef, var_0_3.dragStartX, var_0_3.dragStartY = nil

	local var_24_0 = rawget(_G, "slot")

	if var_24_0 then
		var_24_0._tutorialSpin = false
		var_24_0.stopTimes = nil

		if var_24_0._coreSpinMods then
			var_24_0._coreSpinMods.forceCells = nil
		end
	end

	if arg_24_0 then
		arg_24_0._tutorialBlockNonSlot = false
		arg_24_0._tutorialAllowReadyIcon = false
		arg_24_0._tutorialAllowUnitInteraction = false
		arg_24_0._tutorialCursorX = nil
		arg_24_0._tutorialCursorY = nil
		arg_24_0._tutorialRunning = nil
		arg_24_0._tutorialShopIntroFocus = nil
		arg_24_0._tutorialBattleReturnFocus = nil
	end

	return true
end

function var_0_0.getStep()
	return var_0_3.step or 0
end

function var_0_0.isSlotStep()
	return var_0_3.running == true and var_0_3.step ~= STEP_BATTLE_FREE and var_0_3.step >= STEP_SLOT and var_0_3.step <= STEP_TUTORIAL_COMPLETE
end

function var_0_0.isBattleReadyStep()
	return var_0_3.running == true and (var_0_3.step == STEP_BATTLE_READY or var_0_3.step == STEP_FINAL_READY)
end

function var_0_0.isUnitHoverStep()
	return var_0_3.running == true and var_0_3.step == STEP_UNIT_HOVER
end

function var_0_0.isPromotedUnitStep()
	return var_0_3.running == true and var_0_3.step == STEP_PROMOTED_ARCHER
end

function var_0_0.isPositionStep()
	return var_0_3.running == true and var_0_3.step == STEP_POSITION
end

function var_0_0.isNudgeActionStep()
	return var_0_3.running == true and var_0_3.step == STEP_NUDGE_ACTION
end

function var_0_0.isAbsorbButtonStep()
	return var_0_3.running == true and (var_0_3.step == STEP_ABSORB_BUTTON or var_0_3.step == STEP_FREE_ABSORB_BUTTON)
end

function var_0_0.isAbsorbDragStep()
	return var_0_3.running == true and var_0_3.step == STEP_ABSORB_DRAG
end

function var_0_0.isFreeAbsorbStep()
	return var_0_3.running == true and var_0_3.step == STEP_FREE_ABSORB
end

function var_0_0.isAbsorbModalStep()
	return var_0_3.running == true and var_0_3.step == STEP_ABSORB_MODAL
end

function var_0_0.isImprintInspectStep()
	return var_0_3.running == true and var_0_3.step == STEP_IMPRINT_INSPECT
end

function var_0_0.isFinalReadyStep()
	return var_0_3.running == true and var_0_3.step == STEP_FINAL_READY
end

function var_0_0.isCoreSelectStep()
	return var_0_3.running == true and var_0_3.step == STEP_CORE_SELECT
end

function var_0_0.isClassPromotionStep()
	return var_0_3.running == true and (var_0_3.step == STEP_CLASS_PROMOTION or var_0_3.step == STEP_CLASS_SKILL_HOVER or var_0_3.step == STEP_CLASS_CHOOSE)
end

function var_0_0.isClassSkillHoverStep()
	return var_0_3.running == true and var_0_3.step == STEP_CLASS_SKILL_HOVER
end

function var_0_0.isClassChooseStep()
	return var_0_3.running == true and var_0_3.step == STEP_CLASS_CHOOSE
end

function var_0_0.isShopIntroStep()
	return var_0_3.running == true and var_0_3.step == STEP_SHOP_INTRO
end

function var_0_0.isShopBuyStep()
	return var_0_3.running == true and var_0_3.step == STEP_SHOP_BUY
end

function var_0_0.isShopReturnStep()
	return var_0_3.running == true and var_0_3.step == STEP_SHOP_RETURN
end

function var_0_0.onShopIntroOpened()
	if not var_0_0.isShopIntroStep() then
		return false
	end

	var_0_3.step = STEP_SHOP_CURRENCY
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0

	return true
end

function var_0_0.prepareShopOffers(arg_46_0)
	if not var_0_3.running or not (var_0_3.step >= STEP_SHOP_CURRENCY) or not (var_0_3.step <= STEP_SHOP_RETURN) or not arg_46_0 then
		return false
	end

	local var_46_0, var_46_1 = pcall(require, "src.game.item")

	if not var_46_0 or not var_46_1 or not var_46_1.getById then
		return false
	end

	local var_46_2 = var_46_1.getById("SturdyFist")
	local var_46_3 = var_46_1.getById("SturdyShield")
	local var_46_4 = var_46_1.getById("FirstAid")

	if not var_46_2 or not var_46_3 or not var_46_4 then
		return false
	end

	arg_46_0._itemOffers = {
		var_46_2,
		var_46_3,
		var_46_4
	}
	arg_46_0._itemShopPurchased = {}
	var_0_3.shopTargetIndex = 1

	return true
end

function var_0_0.hitTestShopBuy(arg_47_0, arg_47_1, arg_47_2)
	if not var_0_0.isShopBuyStep() then
		return false
	end

	local var_47_0 = arg_47_0 and arg_47_0._tutorialShopOfferRects
	local var_47_1 = var_47_0 and var_47_0[var_0_3.shopTargetIndex or 1]

	return var_47_1 and arg_47_1 >= var_47_1.x and arg_47_1 <= var_47_1.x + var_47_1.w and arg_47_2 >= var_47_1.y and arg_47_2 <= var_47_1.y + var_47_1.h or false
end

function var_0_0.onShopItemPurchased(arg_48_0, arg_48_1)
	if not var_0_0.isShopBuyStep() then
		return false
	end

	if not arg_48_0 or arg_48_0.key ~= "SturdyFist" or tonumber(arg_48_1) ~= (var_0_3.shopTargetIndex or 1) then
		return false
	end

	var_0_3.step = STEP_SHOP_ITEM_BOUGHT
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0

	return true
end

function var_0_0.onBattlefieldReturned()
	if not var_0_0.isShopReturnStep() then
		return false
	end

	var_0_3.step = STEP_WAVE_TYPES
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0

	return true
end

function var_0_0.isFreeRosterControlStep()
	return var_0_3.running == true and var_0_3.step == STEP_FINAL_READY
end

function var_0_0.shouldDimMainBackground()
	if not var_0_3.running then
		return false
	end

	return var_0_3.step == STEP_POSITION or var_0_3.step == STEP_ABSORB_DRAG or var_0_3.step == STEP_FREE_ABSORB or var_0_3.step == STEP_IMPRINT_INSPECT or var_0_3.step == STEP_FINAL_READY or var_0_3.step == STEP_WAVE_TYPES or var_0_3.step == STEP_TUTORIAL_COMPLETE
end

function var_0_0.getMainBackgroundDimAlpha()
	if not var_0_0.shouldDimMainBackground() then
		return 1
	end

	if var_0_3.step == STEP_ABSORB_DRAG or var_0_3.step == STEP_FREE_ABSORB then
		return 0.62
	end

	return 0.35
end

function var_0_0.requiresAbsorbConfirmOnly()
	return var_0_0.isAbsorbModalStep()
end

function var_0_0.allowsUnitHover()
	return var_0_3.running == true and (var_0_3.step == STEP_UNIT_HOVER or var_0_3.step == STEP_POSITION or var_0_3.step == STEP_ABSORB_DRAG or var_0_3.step == STEP_FREE_ABSORB or var_0_3.step == STEP_IMPRINT_INSPECT or var_0_3.step == STEP_FINAL_READY or var_0_3.step == STEP_PROMOTED_ARCHER or var_0_3.step == STEP_SHOP_INTRO)
end

function var_0_0.getGuidedSpinKind()
	if not var_0_3.running then
		return nil
	end

	if var_0_3.step == STEP_SLOT then
		return "archer"
	end

	if var_0_3.step == STEP_SECOND_SPIN then
		return "warrior"
	end

	if var_0_3.step == STEP_REWARD_SPIN then
		return "mage_spear"
	end

	if var_0_3.step == STEP_MORE_SPIN then
		return "nudge_setup"
	end

	if var_0_3.step == STEP_CORE_SPIN then
		return "core_no_win"
	end

	if var_0_3.step == STEP_POST_CORE_SLOT then
		return "post_core_archer"
	end

	if var_0_3.step == STEP_POST_CORE_SECOND_SPIN then
		return "post_core_spears"
	end

	return nil
end

function var_0_0.canContinueFromWin()
	local var_56_0 = var_0_3.step == STEP_ARCHER_WIN or var_0_3.step == STEP_WARRIOR_WIN or var_0_3.step == STEP_WAVE_REWARD or var_0_3.step == STEP_NUDGE_MISS or var_0_3.step == STEP_NUDGE_WIN or var_0_3.step == STEP_CORE_COUNTER or var_0_3.step == STEP_POST_CORE_ARCHER_WIN or var_0_3.step == STEP_SLOT_BROKEN or var_0_3.step == STEP_MAX_UNIT_NOTICE or var_0_3.step == STEP_CLASS_PROMOTION or var_0_3.step == STEP_PROMOTED_ARCHER or var_0_3.step == STEP_SHOP_CURRENCY or var_0_3.step == STEP_SHOP_ITEM_BOUGHT or var_0_3.step == STEP_WAVE_TYPES or var_0_3.step == STEP_TUTORIAL_COMPLETE

	return var_0_3.running == true and var_56_0 and (var_0_3.stepElapsed or 0) >= var_0_15 + 0.35
end

function var_0_0.continueFromWin()
	if not var_0_0.canContinueFromWin() then
		return false
	end

	if var_0_3.step == STEP_ARCHER_WIN then
		var_0_3.step = STEP_SECOND_SPIN
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_WARRIOR_WIN then
		var_0_3.step = STEP_UNIT_HOVER
		var_0_3.unitHoverT = 0
		var_0_3.unitHoverCount = 0
		var_0_3.unitHoverWasOver = false
		var_0_3.stepT = 1
	elseif var_0_3.step == STEP_WAVE_REWARD then
		var_0_3.step = STEP_REWARD_SPIN
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_NUDGE_MISS then
		var_0_3.step = STEP_NUDGE_ACTION
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_NUDGE_WIN then
		var_0_3.nudgePressed = false
		var_0_3.step = STEP_ABSORB_BUTTON
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_CORE_COUNTER then
		var_0_3.step = STEP_CORE_SPIN
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_POST_CORE_ARCHER_WIN then
		var_0_3.step = STEP_POST_CORE_SECOND_SPIN
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_SLOT_BROKEN then
		var_0_3.step = STEP_MAX_UNIT_NOTICE
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_MAX_UNIT_NOTICE then
		var_0_3.step = STEP_FREE_ABSORB_BUTTON
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_CLASS_PROMOTION then
		var_0_3.step = STEP_CLASS_CHOOSE
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_PROMOTED_ARCHER then
		var_0_3.step = STEP_SHOP_INTRO
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_SHOP_CURRENCY then
		var_0_3.step = STEP_SHOP_BUY
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_SHOP_ITEM_BOUGHT then
		var_0_3.step = STEP_SHOP_RETURN
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_WAVE_TYPES then
		var_0_3.step = STEP_TUTORIAL_COMPLETE
		var_0_3.stepT = 0
	elseif var_0_3.step == STEP_TUTORIAL_COMPLETE then
		var_0_0.stop(rawget(_G, "ui"))

		return "complete"
	end

	var_0_3.stepElapsed = 0

	return true
end

function var_0_0.canSpin()
	return var_0_3.running == true and (var_0_3.step == STEP_SLOT or var_0_3.step == STEP_SECOND_SPIN or var_0_3.step == STEP_REWARD_SPIN or var_0_3.step == STEP_MORE_SPIN or var_0_3.step == STEP_CORE_SPIN or var_0_3.step == STEP_POST_CORE_SLOT or var_0_3.step == STEP_POST_CORE_SECOND_SPIN) and var_0_3.spinStarted ~= true
end

function var_0_0.getSpinStickOutlinePulse()
	if not var_0_0.canSpin() then
		return nil
	end

	local var_59_0 = 0

	if love and love.timer and love.timer.getTime then
		var_59_0 = love.timer.getTime()
	else
		var_59_0 = var_0_3.stepElapsed or var_0_3.stepT or 0
	end

	local var_59_1 = 0.5 + 0.5 * math.sin(var_59_0 * math.pi * 2 * 1.35)

	return {
		alpha = 0.45 + 0.5 * var_59_1,
		radius = 1.8 + 0.8 * var_59_1
	}
end

function var_0_0.onSpinStarted()
	if not var_0_0.canSpin() then
		return false
	end

	local var_60_0 = var_0_3.step == STEP_SECOND_SPIN
	local var_60_1 = var_0_3.step == STEP_REWARD_SPIN
	local var_60_2 = var_0_3.step == STEP_MORE_SPIN
	local var_60_3 = var_0_3.step == STEP_CORE_SPIN
	local var_60_4 = var_0_3.step == STEP_POST_CORE_SLOT
	local var_60_5 = var_0_3.step == STEP_POST_CORE_SECOND_SPIN

	var_0_3.spinStarted = true

	if var_60_2 then
		var_0_3.nudgePressed = false
	end

	if var_60_0 then
		var_0_3.step = STEP_SECOND_SPINNING
	elseif var_60_1 then
		var_0_3.step = STEP_REWARD_SPINNING
	elseif var_60_2 then
		var_0_3.step = STEP_MORE_SPINNING
	elseif var_60_3 then
		var_0_3.step = STEP_CORE_SPINNING
	elseif var_60_4 then
		var_0_3.step = STEP_POST_CORE_SPINNING
	elseif var_60_5 then
		var_0_3.step = STEP_POST_CORE_SECOND_SPINNING
	else
		var_0_3.step = STEP_GOLD
	end

	var_0_3.stepT = (var_60_0 or var_60_1 or var_60_2 or var_60_3 or var_60_4 or var_60_5) and 1 or 0
	var_0_3.stepElapsed = 0

	return true
end

local var_0_35

function var_0_0.onTutorialWinSpawned(arg_61_0, arg_61_1, arg_61_2, arg_61_3)
	if not var_0_3.running then
		return false
	end

	if arg_61_3 == "mage_spear" then
		local var_61_0 = rawget(_G, "battlefield")

		if (var_61_0 and var_61_0.rosterSymbols and arg_61_2 and var_61_0.rosterSymbols[arg_61_2]) == "S" then
			var_0_3.spearRosterIndex = arg_61_2
		end

		if var_0_3.spearRosterIndex then
			var_0_3.step = STEP_MORE_SPIN
			var_0_3.stepT = 0
			var_0_3.stepElapsed = 0
			var_0_3.spinStarted = false
			var_0_3.nudgePressed = false
			var_0_3.winLayout = arg_61_1

			return true
		end

		return false
	elseif arg_61_3 == "post_core_archer" then
		var_0_3.step = STEP_POST_CORE_ARCHER_WIN
		var_0_3.postCoreArcherRosterIndex = arg_61_2
		var_0_3.postCoreArcherRef = var_0_35(arg_61_2)
		var_0_3.winRosterIndex = arg_61_2
	elseif arg_61_3 == "post_core_spears" then
		local var_61_1 = rawget(_G, "battlefield")

		if (var_61_1 and var_61_1.rosterSymbols and arg_61_2 and var_61_1.rosterSymbols[arg_61_2]) == "S" then
			var_0_3.postCoreSpearCount = (var_0_3.postCoreSpearCount or 0) + 1
		end

		var_0_3.winLayout = arg_61_1
		var_0_3.spinStarted = false

		if (var_0_3.postCoreSpearCount or 0) >= 2 then
			var_0_3.step = STEP_SLOT_BROKEN
			var_0_3.stepT = 0
			var_0_3.stepElapsed = 0

			return true
		end

		return false
	elseif arg_61_3 == "nudge_setup" then
		if var_0_3.step == STEP_NUDGE_WIN and var_0_3.nudgePressed then
			var_0_3.extraWarriorRosterIndex = arg_61_2
			var_0_3.winLayout = arg_61_1
			var_0_3.winRosterIndex = arg_61_2
			var_0_3.spinStarted = false

			return true
		end

		var_0_3.step = STEP_NUDGE_WIN
		var_0_3.extraWarriorRosterIndex = arg_61_2
	elseif arg_61_3 == "warrior" then
		var_0_3.step = STEP_WARRIOR_WIN
		var_0_3.warriorRosterIndex = arg_61_2
	else
		var_0_3.step = STEP_ARCHER_WIN
		var_0_3.archerRosterIndex = arg_61_2
		var_0_3.archerRef = var_0_35(arg_61_2)
	end

	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0
	var_0_3.winLayout = arg_61_1
	var_0_3.winRosterIndex = arg_61_2
	var_0_3.spinStarted = false

	return true
end

function var_0_0.onWaveEnded(arg_62_0, arg_62_1, arg_62_2)
	local var_62_0 = tonumber(arg_62_1 and arg_62_1.waveId) or 0

	if not var_0_3.running or var_0_3.step ~= STEP_BATTLE_FREE or not arg_62_1 or not arg_62_1.victory then
		return false
	end

	if var_62_0 == 1 then
		var_0_3.step = STEP_WAVE_REWARD
	elseif var_62_0 == 2 then
		var_0_3.step = STEP_CORE_COUNTER

		local var_62_1 = rawget(_G, "scrollIntroAnim")

		if var_62_1 then
			var_62_1.spinCountdown = 1
			var_62_1.countdownModalPending = false
			var_62_1.countdownModalTriggered = false
			var_62_1.squashT = love and love.timer and love.timer.getTime and love.timer.getTime() or var_62_1.squashT
		end
	else
		return false
	end

	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0
	var_0_3.waveReward = tonumber(arg_62_2) or 0

	if arg_62_0 then
		arg_62_0._shopMode = false
		arg_62_0._stoneMode = false
	end

	return true
end

function var_0_0.onCoreSelected(arg_63_0)
	if not var_0_0.isCoreSelectStep() then
		return false
	end

	var_0_3.step = STEP_POST_CORE_SLOT
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0
	var_0_3.spinStarted = false

	return true
end

function var_0_0.onNudgePressed(arg_64_0)
	if not var_0_3.running or var_0_3.step ~= STEP_NUDGE_ACTION or arg_64_0 ~= 2 then
		return false
	end

	var_0_3.step = STEP_NUDGE_WIN
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0
	var_0_3.nudgePressed = true

	return true
end

function var_0_0.onAbsorbButtonPressed()
	if not var_0_0.isAbsorbButtonStep() then
		return false
	end

	if var_0_3.step == STEP_FREE_ABSORB_BUTTON then
		var_0_3.step = STEP_FREE_ABSORB
	else
		var_0_3.step = STEP_ABSORB_DRAG
	end

	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0

	return true
end

function var_0_0.onAbsorbModalOpened()
	if not var_0_0.isAbsorbDragStep() then
		return false
	end

	var_0_3.step = STEP_ABSORB_MODAL
	var_0_3.stepT = 1

	return true
end

local function var_0_36(arg_67_0)
	if not arg_67_0 or type(arg_67_0.imprints) ~= "table" then
		return false
	end

	for iter_67_0, iter_67_1 in pairs(arg_67_0.imprints) do
		if iter_67_1 ~= nil then
			return true
		end
	end

	return false
end

local function var_0_37(arg_68_0)
	return arg_68_0 ~= nil and (arg_68_0.sym == "A" or arg_68_0 == var_0_35(var_0_3.archerRosterIndex) or arg_68_0 == var_0_3.archerRef or arg_68_0 == var_0_35(var_0_3.postCoreArcherRosterIndex) or arg_68_0 == var_0_3.postCoreArcherRef or arg_68_0 == var_0_3.promotedUnitRef)
end

local function var_0_38()
	local var_69_0 = {
		var_0_35(var_0_3.archerRosterIndex),
		var_0_3.archerRef,
		var_0_35(var_0_3.postCoreArcherRosterIndex),
		var_0_3.postCoreArcherRef,
		var_0_3.promotedUnitRef
	}
	local var_69_1 = rawget(_G, "battlefield")

	if var_69_1 and var_69_1.rosterUnits then
		for iter_69_0, iter_69_1 in ipairs(var_69_1.rosterUnits) do
			if iter_69_1 and iter_69_1.sym == "A" then
				table.insert(var_69_0, iter_69_1)
			end
		end
	end

	for iter_69_2, iter_69_3 in ipairs(var_69_0) do
		if var_0_37(iter_69_3) and var_0_36(iter_69_3) then
			return iter_69_3
		end
	end

	return nil
end

function var_0_0.isAllowedAbsorbVictim(arg_70_0)
	if arg_70_0 == nil then
		return false
	end

	if var_0_3.running and var_0_3.step == STEP_FREE_ABSORB then
		if var_0_37(arg_70_0) and var_0_36(arg_70_0) then
			return false
		end

		return true
	end

	return arg_70_0 == var_0_35(var_0_3.spearRosterIndex)
end

function var_0_0.isAllowedAbsorbPair(arg_71_0, arg_71_1)
	if not arg_71_0 or not arg_71_1 then
		return false
	end

	if var_0_3.running and var_0_3.step == STEP_FREE_ABSORB then
		return var_0_0.isAllowedAbsorbVictim(arg_71_0) and arg_71_1 == var_0_38()
	end

	return var_0_0.isAllowedAbsorbVictim(arg_71_0) and arg_71_1 == var_0_35(var_0_3.archerRosterIndex)
end

function var_0_0.onAbsorbCompleted(arg_72_0, arg_72_1)
	if var_0_3.running and var_0_3.step == STEP_FREE_ABSORB then
		return true
	end

	if not var_0_3.running or var_0_3.step ~= STEP_ABSORB_MODAL and var_0_3.step ~= STEP_ABSORB_DRAG then
		return false
	end

	if not arg_72_1 or arg_72_1.absorber ~= var_0_35(var_0_3.archerRosterIndex) then
		return false
	end

	var_0_3.step = STEP_IMPRINT_INSPECT
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0
	var_0_3.imprintInspectT = 0

	local var_72_0 = rawget(_G, "battlefield")

	if var_72_0 then
		var_72_0.absorbMode = false
	end

	return true
end

function var_0_35(arg_73_0)
	local var_73_0 = rawget(_G, "battlefield")

	return var_73_0 and var_73_0.rosterUnits and arg_73_0 and var_73_0.rosterUnits[arg_73_0] or nil
end

function var_0_0.isTutorialRosterUnit(arg_74_0)
	return arg_74_0 ~= nil and (arg_74_0 == var_0_35(var_0_3.archerRosterIndex) or arg_74_0 == var_0_35(var_0_3.warriorRosterIndex))
end

function var_0_0.isArcherUnit(arg_75_0)
	return arg_75_0 ~= nil and (arg_75_0 == var_0_35(var_0_3.archerRosterIndex) or arg_75_0 == var_0_3.archerRef or arg_75_0 == var_0_35(var_0_3.postCoreArcherRosterIndex) or arg_75_0 == var_0_3.postCoreArcherRef or arg_75_0 == var_0_3.promotedUnitRef)
end

function var_0_0.onClassSkillHovered(arg_76_0)
	if not var_0_3.running or var_0_3.step ~= STEP_CLASS_SKILL_HOVER then
		return false
	end

	arg_76_0 = tonumber(arg_76_0) or 0

	if arg_76_0 <= 0 then
		return false
	end

	var_0_3.classSkillHovered = var_0_3.classSkillHovered or {}
	var_0_3.classSkillHovered[arg_76_0] = true

	if var_0_3.classSkillHovered[1] and var_0_3.classSkillHovered[2] and var_0_3.classSkillCompleteT == nil then
		var_0_3.classSkillCompleteT = 0
	end

	return true
end

function var_0_0.onRosterDragStarted(arg_77_0)
	if not var_0_3.running or var_0_3.step ~= STEP_POSITION or not var_0_0.isTutorialRosterUnit(arg_77_0) then
		return false
	end

	var_0_3.dragStartRef = arg_77_0
	var_0_3.dragStartX = arg_77_0.x
	var_0_3.dragStartY = arg_77_0.y

	return true
end

function var_0_0.onRosterDropped(arg_78_0)
	if not var_0_3.running or var_0_3.step ~= STEP_POSITION or not arg_78_0 then
		return false
	end

	local var_78_0 = var_0_35(var_0_3.archerRosterIndex)
	local var_78_1 = var_0_35(var_0_3.warriorRosterIndex)
	local var_78_2 = var_0_3.dragStartRef == arg_78_0 and (math.abs((arg_78_0.x or 0) - (var_0_3.dragStartX or arg_78_0.x or 0)) >= 2 or math.abs((arg_78_0.y or 0) - (var_0_3.dragStartY or arg_78_0.y or 0)) >= 2)

	var_0_3.dragStartRef, var_0_3.dragStartX, var_0_3.dragStartY = nil

	if var_78_2 and arg_78_0 == var_78_0 then
		var_0_3.movedArcher = true
	end

	if var_78_2 and arg_78_0 == var_78_1 then
		var_0_3.movedWarrior = true
	end

	if var_0_3.movedArcher and var_0_3.movedWarrior and var_78_0 and var_78_1 and (var_78_1.x or 0) > (var_78_0.x or 0) + 4 then
		var_0_3.step = STEP_BATTLE_READY
		var_0_3.stepT = 0
		var_0_3.stepElapsed = 0

		return true
	end

	return false
end

function var_0_0.update(arg_79_0, arg_79_1, arg_79_2, arg_79_3)
	if arg_79_3 then
		arg_79_3._tutorialShopIntroFocus = var_0_3.running == true and var_0_3.step == STEP_SHOP_INTRO or nil
		arg_79_3._tutorialBattleReturnFocus = var_0_3.running == true and var_0_3.step == STEP_SHOP_RETURN or nil
		arg_79_3._tutorialRunning = var_0_3.running == true or nil
	end

	if var_0_3.running then
		var_0_3.stepT = math.min(1, (var_0_3.stepT or 0) + (arg_79_0 or 0) * 3)
		var_0_3.stepElapsed = (var_0_3.stepElapsed or 0) + (arg_79_0 or 0)

		if var_0_3.step == STEP_UNIT_HOVER then
			local var_79_0 = tonumber(arg_79_3 and arg_79_3.battle and arg_79_3.battle.allySize32) or 64
			local var_79_1 = false

			for iter_79_0, iter_79_1 in ipairs({
				var_0_3.archerRosterIndex,
				var_0_3.warriorRosterIndex
			}) do
				local var_79_2 = var_0_35(iter_79_1)

				if var_79_2 and var_79_2.x and var_79_2.y and math.abs((arg_79_1 or -9999) - var_79_2.x) <= var_79_0 * 0.5 and math.abs((arg_79_2 or -9999) - var_79_2.y) <= var_79_0 * 0.5 then
					var_79_1 = true

					break
				end
			end

			if var_79_1 and not var_0_3.unitHoverWasOver then
				var_0_3.unitHoverCount = math.min(var_0_17, (var_0_3.unitHoverCount or 0) + 1)
			end

			var_0_3.unitHoverWasOver = var_79_1

			if var_79_1 then
				var_0_3.unitHoverT = math.min(var_0_18, (var_0_3.unitHoverT or 0) + (arg_79_0 or 0))
			else
				var_0_3.unitHoverT = 0
			end

			if (var_0_3.unitHoverCount or 0) >= var_0_17 or (var_0_3.unitHoverT or 0) >= var_0_18 then
				var_0_3.step = STEP_POSITION
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
			end
		elseif var_0_3.step == STEP_MORE_SPINNING then
			local var_79_3 = rawget(_G, "slot")

			if not var_0_3.nudgePressed and var_79_3 and var_79_3.spin and not var_79_3.spin.active and var_79_3.result and var_79_3.result.checked and not var_79_3.result.won and (not var_79_3.result.winSeq or not var_79_3.result.winSeq.active) then
				var_0_3.step = STEP_NUDGE_ACTION
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
				var_0_3.spinStarted = false
			end
		elseif var_0_3.step == STEP_CORE_SPINNING then
			if arg_79_3 and arg_79_3._coreSelect and arg_79_3._coreSelect.active then
				var_0_3.step = STEP_CORE_SELECT
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
				var_0_3.spinStarted = false
				var_0_3.coreSelectTipReady = false
			end
		elseif var_0_3.step == STEP_POST_CORE_SPINNING then
			local var_79_4 = rawget(_G, "slot")

			if var_79_4 and var_79_4.spin and not var_79_4.spin.active and var_79_4.result and var_79_4.result.checked and (not var_79_4.result.winSeq or not var_79_4.result.winSeq.active) then
				var_0_3.step = STEP_POST_CORE_ARCHER_WIN
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
				var_0_3.spinStarted = false
			end
		elseif var_0_3.step == STEP_POST_CORE_SECOND_SPINNING then
			local var_79_5 = rawget(_G, "slot")

			if var_79_5 and var_79_5.spin and not var_79_5.spin.active and var_79_5.result and var_79_5.result.checked and (not var_79_5.result.winSeq or not var_79_5.result.winSeq.active) then
				var_0_3.step = STEP_SLOT_BROKEN
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
				var_0_3.spinStarted = false
			end
		elseif var_0_3.step == STEP_FREE_ABSORB then
			local var_79_6 = rawget(_G, "battlefield")
			local var_79_7 = var_79_6 and var_79_6.classSelect and var_79_6.classSelect.ru

			if var_79_7 and var_79_7.sym == "A" then
				var_0_3.promotedUnitRef = var_79_7
				var_0_3.step = STEP_CLASS_PROMOTION
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
				var_0_3.classSkillHovered = {}
			end
		elseif var_0_3.step == STEP_CLASS_SKILL_HOVER then
			local var_79_8 = rawget(_G, "battlefield")
			local var_79_9 = var_79_8 and var_79_8.classSelect and var_79_8.classSelect._hoveredSkill

			if var_79_9 and var_79_9.cardIndex then
				var_0_0.onClassSkillHovered(var_79_9.cardIndex)
			end

			if var_0_3.classSkillCompleteT ~= nil then
				var_0_3.classSkillCompleteT = var_0_3.classSkillCompleteT + math.max(0, arg_79_0 or 0)

				if var_0_3.classSkillCompleteT >= 0.7 then
					var_0_3.step = STEP_CLASS_CHOOSE
					var_0_3.stepT = 0
					var_0_3.stepElapsed = 0
					var_0_3.classSkillCompleteT = nil
				end
			end
		elseif var_0_3.step == STEP_CLASS_CHOOSE then
			local var_79_10 = rawget(_G, "battlefield")

			if not var_79_10 or not var_79_10.classSelect then
				local var_79_11 = var_0_3.promotedUnitRef or var_0_3.postCoreArcherRef or var_0_35(var_0_3.postCoreArcherRosterIndex)
				local var_79_12 = var_79_11 and (var_79_11.subclassName or var_79_11.subclass or var_79_11.subclassKey or var_79_11.name) or var_0_2("unit_archer")

				var_0_3.promotedName = var_0_1.translateUnitName(tostring(var_79_12), _G.currentGameLang or "ko")

				if var_79_10 then
					var_79_10.absorbMode = false
				end

				local var_79_13 = rawget(_G, "firemanSetAnim")

				if var_79_13 then
					pcall(var_79_13, "off")
				end

				var_0_3.step = STEP_PROMOTED_ARCHER
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
			end
		elseif var_0_3.step == STEP_ABSORB_DRAG then
			local var_79_14 = rawget(_G, "battlefield")

			if var_79_14 and var_79_14.imprintModal and var_79_14.imprintModal.active then
				var_0_0.onAbsorbModalOpened()
			end
		elseif var_0_3.step == STEP_IMPRINT_INSPECT then
			local var_79_15 = arg_79_3 and arg_79_3.tooltip
			local var_79_16 = var_0_35(var_0_3.archerRosterIndex)

			if var_79_15 and var_79_15.locked and var_79_15.target and var_79_15.target.ref == var_79_16 then
				var_0_3.imprintInspectT = (var_0_3.imprintInspectT or 0) + (arg_79_0 or 0)
			else
				var_0_3.imprintInspectT = 0
			end

			if (var_0_3.imprintInspectT or 0) >= 3 then
				var_0_3.step = STEP_FINAL_READY
				var_0_3.stepT = 0
				var_0_3.stepElapsed = 0
			end
		end

		return
	end

	if not var_0_3.active then
		return
	end

	var_0_3.t = math.min(1, (var_0_3.t or 0) + (arg_79_0 or 0) * 3.2)
	var_0_3.skipLockElapsed = math.min(var_0_16, (var_0_3.skipLockElapsed or 0) + math.max(0, arg_79_0 or 0))

	local var_79_17 = var_0_32(arg_79_3)

	var_0_3.buttons = var_79_17

	if var_0_34(arg_79_1 or -9999, arg_79_2 or -9999, var_79_17.start, var_79_17.buttonScale) then
		var_0_3.hovered = "start"
	elseif var_0_19() and var_0_34(arg_79_1 or -9999, arg_79_2 or -9999, var_79_17.skip, var_79_17.buttonScale) then
		var_0_3.hovered = "skip"
	else
		var_0_3.hovered = nil
	end

	var_0_3.hoverStart = (var_0_3.hoverStart or 0) + ((var_0_3.hovered == "start" and 1 or 0) - (var_0_3.hoverStart or 0)) * 0.25
	var_0_3.hoverSkip = (var_0_3.hoverSkip or 0) + ((var_0_3.hovered == "skip" and 1 or 0) - (var_0_3.hoverSkip or 0)) * 0.25
end

local function var_0_39(arg_80_0)
	if not var_0_3.active then
		return nil
	end

	var_0_3.pending = false

	if arg_80_0 == "start" then
		var_0_3.active = false
		var_0_3.running = true
		var_0_3.skipped = false
		var_0_3.step = STEP_SLOT
		var_0_3.spinStarted = false
		var_0_3.stepT = 0
		var_0_3.stepElapsed = 0
		var_0_3.winLayout = nil
		var_0_3.winRosterIndex = nil
		var_0_3.archerRosterIndex = nil
		var_0_3.archerRef = nil
		var_0_3.warriorRosterIndex = nil
		var_0_3.mageRosterIndex = nil
		var_0_3.spearRosterIndex = nil
		var_0_3.extraWarriorRosterIndex = nil
		var_0_3.postCoreArcherRosterIndex = nil
		var_0_3.postCoreArcherRef = nil
		var_0_3.promotedUnitRef = nil
		var_0_3.postCoreSpearCount = 0
		var_0_3.classSkillHovered = nil
		var_0_3.classSkillCompleteT = nil
		var_0_3.promotedName = nil
		var_0_3.unitHoverT = 0
		var_0_3.unitHoverCount = 0
		var_0_3.unitHoverWasOver = false
		var_0_3.movedArcher = false
		var_0_3.movedWarrior = false
		var_0_3.dragStartRef, var_0_3.dragStartX, var_0_3.dragStartY = nil

		return "start"
	elseif arg_80_0 == "skip" then
		var_0_3.active = false
		var_0_3.running = false
		var_0_3.skipped = true
		var_0_3.step = 0

		return "skip"
	end

	return nil
end

function var_0_0.mousepressed(arg_81_0, arg_81_1, arg_81_2, arg_81_3)
	if not var_0_3.active then
		return nil
	end

	if arg_81_2 ~= 1 then
		return "blocked"
	end

	if (var_0_3.t or 0) < 0.82 then
		return "blocked"
	end

	local var_81_0 = var_0_3.buttons or var_0_32(arg_81_3)
	local var_81_1 = var_0_33(var_81_0, "start", arg_81_3)
	local var_81_2 = var_0_33(var_81_0, "skip", arg_81_3)

	if var_0_34(arg_81_0, arg_81_1, var_81_1, var_81_0.buttonScale) then
		return var_0_39("start")
	end

	if var_0_19() and var_0_34(arg_81_0, arg_81_1, var_81_2, var_81_0.buttonScale) then
		return var_0_39("skip")
	end

	return "blocked"
end

function var_0_0.keypressed(arg_82_0)
	if not var_0_3.active then
		return nil
	end

	if (var_0_3.t or 0) < 0.82 then
		return "blocked"
	end

	if arg_82_0 == "return" or arg_82_0 == "kpenter" or arg_82_0 == "space" then
		return var_0_39("start")
	end

	return "blocked"
end

local function var_0_40(arg_83_0, arg_83_1, arg_83_2, arg_83_3, arg_83_4)
	if arg_83_0 then
		love.graphics.setFont(arg_83_0)
	end

	local var_83_0 = love.graphics.getFont()

	love.graphics.setColor(arg_83_4)
	love.graphics.print(arg_83_1, math.floor(arg_83_2 - var_83_0:getWidth(arg_83_1) * 0.5 + 0.5), math.floor(arg_83_3 + 0.5))
end

local function var_0_41(arg_84_0)
	if arg_84_0 < 0 then
		return 0
	end

	if arg_84_0 > 1 then
		return 1
	end

	return arg_84_0
end

local function var_0_42(arg_85_0)
	arg_85_0 = var_0_41(arg_85_0)

	return 1 - (1 - arg_85_0) * (1 - arg_85_0) * (1 - arg_85_0)
end

local function var_0_43(arg_86_0)
	arg_86_0 = var_0_41(arg_86_0)

	return arg_86_0 * arg_86_0 * (3 - 2 * arg_86_0)
end

local function var_0_44(arg_87_0, arg_87_1, arg_87_2, arg_87_3, arg_87_4)
	if arg_87_0 then
		love.graphics.setFont(arg_87_0)
	end

	local var_87_0 = love.graphics.getFont()
	local var_87_1 = 0

	for iter_87_0, iter_87_1 in ipairs(arg_87_1 or {}) do
		var_87_1 = var_87_1 + var_87_0:getWidth(iter_87_1.text or "")
	end

	local var_87_2 = math.floor(arg_87_2 - var_87_1 * 0.5 + 0.5)
	local var_87_3 = math.floor(arg_87_3 + 0.5)

	for iter_87_2, iter_87_3 in ipairs(arg_87_1 or {}) do
		local var_87_4 = iter_87_3.text or ""

		love.graphics.setColor(iter_87_3.color or arg_87_4)
		love.graphics.print(var_87_4, var_87_2, var_87_3)

		var_87_2 = var_87_2 + var_87_0:getWidth(var_87_4)
	end
end

local function var_0_45(arg_88_0, arg_88_1, arg_88_2, arg_88_3, arg_88_4, arg_88_5, arg_88_6)
	local var_88_0 = math.max(1, math.floor(var_0_31(arg_88_0) + 0.5))
	local var_88_1 = 2
	local var_88_2 = arg_88_6 or {
		0.4627450980392157,
		0.3215686274509804,
		0.3568627450980392,
		0.98
	}

	love.graphics.setColor(var_88_2[1] or 1, var_88_2[2] or 1, var_88_2[3] or 1, (var_88_2[4] or 1) * arg_88_5)

	for iter_88_0 = 0, var_88_1 - 1 do
		local var_88_3 = (var_88_1 - iter_88_0) * var_88_0

		love.graphics.rectangle("fill", arg_88_1 + var_88_3, arg_88_2 + iter_88_0 * var_88_0, arg_88_3 - var_88_3 * 2, var_88_0)
		love.graphics.rectangle("fill", arg_88_1 + var_88_3, arg_88_2 + arg_88_4 - (iter_88_0 + 1) * var_88_0, arg_88_3 - var_88_3 * 2, var_88_0)
	end

	love.graphics.rectangle("fill", arg_88_1, arg_88_2 + var_88_1 * var_88_0, arg_88_3, arg_88_4 - var_88_1 * var_88_0 * 2)
end

local function var_0_46(arg_89_0)
	if type(arg_89_0) == "table" and arg_89_0.parts then
		return arg_89_0.parts
	end

	if type(arg_89_0) == "table" and arg_89_0[1] then
		return arg_89_0
	end

	return {
		{
			text = tostring(arg_89_0 or "")
		}
	}
end

local function var_0_47(arg_90_0, arg_90_1, arg_90_2)
	local var_90_0 = var_0_46(arg_90_1)
	local var_90_1 = 0

	for iter_90_0, iter_90_1 in ipairs(var_90_0) do
		if iter_90_1.icon == "gold" or iter_90_1.icon == "mouseRight" or iter_90_1.icon == "mouseLeft" or iter_90_1.icon == "judgement" or iter_90_1.icon == "boss" then
			local var_90_2 = iter_90_1.icon == "gold" and var_0_24() or (iter_90_1.icon == "mouseRight" or iter_90_1.icon == "mouseLeft") and var_0_25(iter_90_1.icon) or var_0_26(iter_90_1.icon)
			local var_90_3 = var_90_0[iter_90_0 + 1] and var_90_0[iter_90_0 + 1].text or ""
			local var_90_4 = tostring(var_90_3):match("^%s") and 0 or arg_90_0 and arg_90_0:getWidth(" ") or 4

			var_90_1 = var_90_1 + (var_90_2 and var_90_2:getWidth() or 8) * arg_90_2 + var_90_4
		else
			var_90_1 = var_90_1 + (arg_90_0 and arg_90_0:getWidth(iter_90_1.text or "") or 0)
		end
	end

	return var_90_1
end

local function var_0_48(arg_91_0, arg_91_1, arg_91_2, arg_91_3, arg_91_4, arg_91_5, arg_91_6, arg_91_7, arg_91_8)
	if arg_91_0 then
		love.graphics.setFont(arg_91_0)
	end

	local var_91_0 = var_0_46(arg_91_1)
	local var_91_1 = arg_91_2

	for iter_91_0, iter_91_1 in ipairs(var_91_0) do
		if iter_91_1.icon == "gold" or iter_91_1.icon == "mouseRight" or iter_91_1.icon == "mouseLeft" or iter_91_1.icon == "judgement" or iter_91_1.icon == "boss" then
			local var_91_2 = iter_91_1.icon == "gold" and var_0_24() or (iter_91_1.icon == "mouseRight" or iter_91_1.icon == "mouseLeft") and var_0_25(iter_91_1.icon) or var_0_26(iter_91_1.icon)

			if var_91_2 then
				local var_91_3 = arg_91_0 and arg_91_0.getHeight and arg_91_0:getHeight() or var_91_2:getHeight()
				local var_91_4 = math.floor(arg_91_3 + (var_91_3 - var_91_2:getHeight() * arg_91_6) * 0.5 + (arg_91_7 or 0) + 0.5)

				love.graphics.setColor(1, 1, 1, arg_91_5)
				love.graphics.draw(var_91_2, math.floor(var_91_1 + 0.5), var_91_4, 0, arg_91_6, arg_91_6)

				local var_91_5 = var_91_0[iter_91_0 + 1] and var_91_0[iter_91_0 + 1].text or ""
				local var_91_6 = tostring(var_91_5):match("^%s") and 0 or arg_91_0 and arg_91_0:getWidth(" ") or 4

				var_91_1 = var_91_1 + var_91_2:getWidth() * arg_91_6 + var_91_6
			end
		else
			local var_91_7 = iter_91_1.text or ""
			local var_91_8 = iter_91_1.color or arg_91_4
			local var_91_9 = 1

			while var_91_9 <= #var_91_7 do
				local var_91_10, var_91_11 = string.find(var_91_7, "%d+", var_91_9)
				local var_91_12 = var_91_10 and var_91_10 - 1 or #var_91_7

				if var_91_9 <= var_91_12 then
					local var_91_13 = string.sub(var_91_7, var_91_9, var_91_12)

					love.graphics.setColor(var_91_8[1] or 1, var_91_8[2] or 1, var_91_8[3] or 1, arg_91_5)
					love.graphics.print(var_91_13, math.floor(var_91_1 + 0.5), math.floor(arg_91_3 + 0.5))

					var_91_1 = var_91_1 + (arg_91_0 and arg_91_0:getWidth(var_91_13) or 0)
				end

				if not var_91_10 then
					break
				end

				local var_91_14 = string.sub(var_91_7, var_91_10, var_91_11)
				local var_91_15 = arg_91_8 or {
					0.96,
					0.78,
					0.32
				}

				love.graphics.setColor(var_91_15[1] or 1, var_91_15[2] or 1, var_91_15[3] or 1, arg_91_5)
				love.graphics.print(var_91_14, math.floor(var_91_1 + 0.5), math.floor(arg_91_3 + 0.5))

				var_91_1 = var_91_1 + (arg_91_0 and arg_91_0:getWidth(var_91_14) or 0)
				var_91_9 = var_91_11 + 1
			end
		end
	end
end

local function var_0_49(arg_92_0, arg_92_1, arg_92_2, arg_92_3, arg_92_4)
	if arg_92_0 then
		love.graphics.setFont(arg_92_0)
	end

	love.graphics.setColor(arg_92_4)
	love.graphics.print(arg_92_1, math.floor(arg_92_2 + 0.5), math.floor(arg_92_3 + 0.5))
end

local function var_0_50(arg_93_0, arg_93_1)
	local var_93_0 = arg_93_0 and arg_93_0.virtual and arg_93_0.virtual.W or 640
	local var_93_1 = arg_93_0 and arg_93_0.virtual and arg_93_0.virtual.H or 360
	local var_93_2 = arg_93_1 and arg_93_1.slotPanel

	if not var_93_2 then
		return {
			y = 0,
			x = 0,
			w = math.floor(var_93_0 * 0.48),
			h = var_93_1
		}
	end

	local var_93_3 = arg_93_0 and arg_93_0.tutorial and arg_93_0.tutorial.slotFocus or {}
	local var_93_4 = arg_93_0 and arg_93_0.slot and arg_93_0.slot.bgAnimY or 0
	local var_93_5 = var_93_2.x + (tonumber(var_93_3.offsetX) or -20)
	local var_93_6 = var_93_2.y + var_93_4 + (tonumber(var_93_3.offsetY) or -24)
	local var_93_7 = var_93_2.w + (tonumber(var_93_3.extraW) or 64)
	local var_93_8 = var_93_2.h + (tonumber(var_93_3.extraH) or 54)

	if var_93_5 < 0 then
		var_93_7 = var_93_7 + var_93_5
		var_93_5 = 0
	end

	if var_93_6 < 0 then
		var_93_8 = var_93_8 + var_93_6
		var_93_6 = 0
	end

	if var_93_0 < var_93_5 + var_93_7 then
		var_93_7 = var_93_0 - var_93_5
	end

	if var_93_1 < var_93_6 + var_93_8 then
		var_93_8 = var_93_1 - var_93_6
	end

	return {
		x = math.floor(var_93_5 + 0.5),
		y = math.floor(var_93_6 + 0.5),
		w = math.floor(var_93_7 + 0.5),
		h = math.floor(var_93_8 + 0.5)
	}
end

local function var_0_51(arg_94_0, arg_94_1, arg_94_2, arg_94_3, arg_94_4)
	if not arg_94_0 then
		return
	end

	local var_94_0 = arg_94_0:getWidth()
	local var_94_1 = arg_94_0:getHeight()

	if var_94_0 <= 0 or var_94_1 <= 0 then
		return
	end

	if var_94_0 == arg_94_3 and var_94_1 == arg_94_4 then
		love.graphics.draw(arg_94_0, arg_94_1 or 0, arg_94_2 or 0)
	else
		love.graphics.draw(arg_94_0, arg_94_1 or 0, arg_94_2 or 0, 0, arg_94_3 / var_94_0, arg_94_4 / var_94_1)
	end
end

local function var_0_52(arg_95_0, arg_95_1)
	local var_95_0 = var_0_29()

	if var_95_0 then
		love.graphics.setShader(var_95_0)
	end

	love.graphics.setColor(1, 1, 1, 1)

	local var_95_1 = arg_95_0 and arg_95_0.virtual and arg_95_0.virtual.W or 640
	local var_95_2 = arg_95_0 and arg_95_0.virtual and arg_95_0.virtual.H or 360
	local var_95_3 = arg_95_1 and arg_95_1.slotPanel
	local var_95_4 = spinShake and spinShake.x or 0
	local var_95_5 = spinShake and spinShake.y or 0
	local var_95_6 = slotBgAnim and slotBgAnim.y or 0
	local var_95_7 = arg_95_0 and arg_95_0.slot and arg_95_0.slot.stickyOffsetY or 0
	local var_95_8 = spinPressShake and spinPressShake.y or 0
	local var_95_9 = slotBgJitter and slotBgJitter.x or 0
	local var_95_10 = slotBgJitter and slotBgJitter.y or 0
	local var_95_11 = arg_95_0 and arg_95_0.slot and arg_95_0.slot.ropeOffsetY or 0
	local var_95_12 = slotBgSquash and slotBgSquash.sx or 1
	local var_95_13 = slotBgSquash and slotBgSquash.sy or 1
	local var_95_14 = math.floor(var_95_4 + 0.5) + var_95_9
	local var_95_15 = math.floor(var_95_6 + var_95_5 + var_95_8 + var_95_7 + 0.5) + var_95_10
	local var_95_16 = var_95_1 * 0.5
	local var_95_17 = var_95_2 * 0.5

	if var_95_3 then
		local var_95_18 = arg_95_0 and arg_95_0.slot and arg_95_0.slot.lineHitSquash or {}

		var_95_16 = var_95_3.x + var_95_3.w * 0.5 + (var_95_18.anchorOffsetX or 0)
		var_95_17 = var_95_3.y + var_95_3.h * 0.5 + (var_95_18.anchorOffsetY or 0)
	end

	if backgroundSlotImage then
		local var_95_19 = backgroundSlotImage:getWidth()
		local var_95_20 = backgroundSlotImage:getHeight()

		if var_95_19 > 0 and var_95_20 > 0 then
			love.graphics.draw(backgroundSlotImage, var_95_14 + (1 - var_95_12) * var_95_16, var_95_15 + (1 - var_95_13) * var_95_17, 0, var_95_1 / var_95_19 * var_95_12, var_95_2 / var_95_20 * var_95_13)
		end
	end

	var_0_51(backgroundSlotRopeImage, math.floor(var_95_4 + 0.5) + var_95_9, math.floor(var_95_6 + var_95_5 + var_95_7 + var_95_11 + 0.5) + var_95_10, var_95_1, var_95_2)
	var_0_51(backgroundMonsterBodyImage, math.floor(var_95_4 + 0.5) + var_95_9, math.floor(var_95_6 + var_95_5 + var_95_7 + 0.5) + var_95_10, var_95_1, var_95_2)

	local var_95_21 = backgroundMonsterHeadImage

	if monsterHeadAnim and monsterHeadAnim.mode == "laugh" and backgroundMonsterHeadLaughImage then
		var_95_21 = backgroundMonsterHeadLaughImage
	end

	local var_95_22 = 0
	local var_95_23 = arg_95_0 and arg_95_0.monster and arg_95_0.monster.headIdle or {
		ampPx = 1,
		freq = 0.5
	}
	local var_95_24 = math.max(0, var_95_23.ampPx or 1)
	local var_95_25 = var_95_23.freq or 0.5

	if var_95_24 > 0 and var_95_25 > 0 then
		if monsterHeadAnim and monsterHeadAnim.mode == "laugh" then
			var_95_22 = math.floor(math.sin(2 * math.pi * (monsterHeadAnim.freq or 12) * (monsterHeadAnim.t or 0)) * (monsterHeadAnim.ampPx or 2) + 0.5)
		else
			var_95_22 = math.floor(math.sin(2 * math.pi * var_95_25 * (monsterHeadIdleT or 0)) * var_95_24 + 0.5)
		end
	end

	var_0_51(backgroundMonsterHeadShadowImage, math.floor(var_95_4 + 0.5) + var_95_9, math.floor(var_95_6 + var_95_5 + var_95_7 + var_95_22 + 0.5) + var_95_10, var_95_1, var_95_2)
	var_0_51(var_95_21, math.floor(var_95_4 + 0.5) + var_95_9, math.floor(var_95_6 + var_95_5 + var_95_7 + var_95_22 + 0.5) + var_95_10, var_95_1, var_95_2)
	var_0_51(backgroundSlotLeftImage, math.floor(var_95_4 + 0.5) + var_95_9, math.floor(var_95_6 + var_95_5 + var_95_7 + 0.5) + var_95_10, var_95_1, var_95_2)

	local var_95_26 = slotBgSquash and slotBgSquash.sx or 1
	local var_95_27 = slotBgSquash and slotBgSquash.sy or 1
	local var_95_28 = math.floor(var_95_4 + 0.5) + var_95_9
	local var_95_29 = math.floor(var_95_6 + var_95_5 + var_95_7 + 0.5) + var_95_10
	local var_95_30 = var_95_1 * 0.5
	local var_95_31 = var_95_2 * 0.5

	if var_95_3 then
		local var_95_32 = arg_95_0 and arg_95_0.slot and arg_95_0.slot.lineHitSquash or {}

		var_95_30 = var_95_3.x + var_95_3.w * 0.5 + (var_95_32.anchorOffsetX or 0)
		var_95_31 = var_95_3.y + var_95_3.h * 0.5 + (var_95_32.anchorOffsetY or 0)
	end

	if backgroundSlotShadowImage then
		local var_95_33 = backgroundSlotShadowImage:getWidth()
		local var_95_34 = backgroundSlotShadowImage:getHeight()

		if var_95_33 > 0 and var_95_34 > 0 then
			love.graphics.draw(backgroundSlotShadowImage, var_95_28 + (1 - var_95_26) * var_95_30, var_95_29 + (1 - var_95_27) * var_95_31, 0, var_95_1 / var_95_33 * var_95_26, var_95_2 / var_95_34 * var_95_27)
		end
	end

	local var_95_35 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick

	if var_95_35 and var_95_35.image and var_95_35.quads and var_95_35.quads[1] and var_95_3 then
		local var_95_36 = arg_95_0 and arg_95_0.spinstick or {}
		local var_95_37 = var_95_3.x + var_95_3.w + (var_95_36.offsetX or 4)
		local var_95_38 = var_95_3.y + (var_95_36.offsetY or 0)
		local var_95_39 = math.floor(var_95_37 + var_95_4 + var_95_9 + 0.5)
		local var_95_40 = math.floor(var_95_38 + var_95_6 + var_95_5 + var_95_7 + var_95_10 + 0.5)
		local var_95_41 = var_95_35.frames or #var_95_35.quads
		local var_95_42 = 1

		if spinStickAnim and spinStickAnim.playing and var_95_41 > 1 then
			var_95_42 = math.max(1, math.min(var_95_41, spinStickAnim.frame or 1))
		end

		love.graphics.draw(var_95_35.image, var_95_35.quads[var_95_42] or var_95_35.quads[1], var_95_39, var_95_40)
	end

	if arg_95_1 and arg_95_1.nudgeBtns then
		local var_95_43 = loadedAssets and loadedAssets.ui and loadedAssets.ui.nudgeButton
		local var_95_44 = loadedAssets and loadedAssets.ui and loadedAssets.ui.nudgeButtonQuads

		if var_95_43 and var_95_44 and var_95_44[1] then
			local var_95_45 = math.max(1, math.floor((arg_95_0 and arg_95_0.scale or 1) + 0.5))
			local var_95_46 = math.floor(var_95_4 + var_95_9 + 0.5)
			local var_95_47 = math.floor(var_95_6 + var_95_5 + var_95_7 + var_95_8 + var_95_10 + 0.5)

			for iter_95_0, iter_95_1 in ipairs(arg_95_1.nudgeBtns) do
				love.graphics.draw(var_95_43, var_95_44[1], math.floor(iter_95_1.x + var_95_46 + 0.5), math.floor(iter_95_1.y + var_95_47 + 0.5), 0, var_95_45, var_95_45)
			end
		end
	end

	love.graphics.setShader()
end

local function var_0_53(arg_96_0)
	local var_96_0 = arg_96_0 and arg_96_0.tutorial and arg_96_0.tutorial.goldFocus or {}
	local var_96_1 = arg_96_0 and arg_96_0.goldDisplay or {}
	local var_96_2 = tonumber(var_96_0.w) or 70
	local var_96_3 = tonumber(var_96_0.h) or 22
	local var_96_4 = tonumber(var_96_0.x)
	local var_96_5 = tonumber(var_96_0.y)

	if not var_96_4 then
		local var_96_6 = tonumber(var_96_1.x) or 288

		var_96_4 = (var_96_1.align or "right") == "right" and var_96_6 - var_96_2 or var_96_6
	end

	var_96_5 = var_96_5 or (tonumber(var_96_1.y) or 10) - 6

	love.graphics.rectangle("fill", math.floor(var_96_4 + 0.5), math.floor(var_96_5 + 0.5), math.floor(var_96_2 + 0.5), math.floor(var_96_3 + 0.5))
end

local function var_0_54(arg_97_0)
	local var_97_0 = rawget(_G, "battlefield")
	local var_97_1

	if var_0_3.step == STEP_PROMOTED_ARCHER then
		var_97_1 = var_0_3.promotedUnitRef
	elseif var_0_3.step == STEP_POST_CORE_ARCHER_WIN then
		var_97_1 = var_0_3.postCoreArcherRef or var_97_0 and var_97_0.rosterUnits and var_0_3.postCoreArcherRosterIndex and var_97_0.rosterUnits[var_0_3.postCoreArcherRosterIndex]
	end

	var_97_1 = var_97_1 or var_97_0 and var_97_0.rosterUnits and var_0_3.winRosterIndex and var_97_0.rosterUnits[var_0_3.winRosterIndex]

	return var_97_0, var_97_1
end

local function var_0_55(arg_98_0)
	local var_98_0, var_98_1 = var_0_54(arg_98_0)

	if not var_98_1 or not var_98_1.x or not var_98_1.y then
		return
	end

	local var_98_2 = tonumber(arg_98_0 and arg_98_0.battle and arg_98_0.battle.allySize32) or 64
	local var_98_3 = arg_98_0 and arg_98_0.tutorial and arg_98_0.tutorial.unitFocus or {}
	local var_98_4 = tonumber(var_98_3.padX) or 8
	local var_98_5 = tonumber(var_98_3.padY) or 6
	local var_98_6 = math.floor(var_98_1.x - var_98_2 * 0.5 - var_98_4 + 0.5)
	local var_98_7 = math.floor(var_98_1.y - var_98_2 * 0.5 - var_98_5 + 0.5)
	local var_98_8 = math.floor(var_98_2 + var_98_4 * 2 + 0.5)
	local var_98_9 = math.floor(var_98_2 + var_98_5 * 2 + 0.5)

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_98_6, var_98_7, var_98_8, var_98_9)
end

local function var_0_56(arg_99_0)
	local var_99_0, var_99_1 = pcall(require, "src.ui.imprint")
	local var_99_2 = var_99_0 and var_99_1 and var_99_1._panelRect

	if var_99_2 and var_99_2.w and var_99_2.h then
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.rectangle("fill", math.floor(var_99_2.x + 0.5), math.floor(var_99_2.y + 0.5), math.floor(var_99_2.w + 0.5), math.floor(var_99_2.h + 0.5))

		return
	else
		return
	end

	local var_99_3 = arg_99_0 and arg_99_0.virtual and arg_99_0.virtual.W or 640
	local var_99_4 = arg_99_0 and arg_99_0.virtual and arg_99_0.virtual.H or 360
	local var_99_5 = arg_99_0 and arg_99_0.imprintPanel or {}
	local var_99_6 = tonumber(arg_99_0 and arg_99_0.scale) or 1
	local var_99_7 = var_99_5.slotBg or {}
	local var_99_8 = tonumber(var_99_5.tutorialFocusPad) or 6 * var_99_6
	local var_99_9 = (tonumber(var_99_5.slotX) or 15) * var_99_6
	local var_99_10 = (tonumber(var_99_5.slotY) or 96) * var_99_6
	local var_99_11 = tonumber(var_99_7.offsetX) or 0
	local var_99_12 = tonumber(var_99_7.offsetY) or 0
	local var_99_13 = (tonumber(var_99_5.slotW) or 180) * var_99_6
	local var_99_14 = tonumber(var_99_5.tutorialFocusSlotH) or 40
	local var_99_15 = tonumber(var_99_5.tutorialFocusRows) or 5
	local var_99_16 = tonumber(var_99_5.slotGap) or -1
	local var_99_17 = var_99_14 * var_99_15 + var_99_16 * math.max(0, var_99_15 - 1)
	local var_99_18 = tonumber(var_99_5.tutorialFocusX) or var_99_9 + var_99_11 - var_99_8
	local var_99_19 = tonumber(var_99_5.tutorialFocusY) or var_99_10 + var_99_12 - var_99_8
	local var_99_20 = tonumber(var_99_5.tutorialFocusW) or var_99_13 + var_99_8 * 2
	local var_99_21 = tonumber(var_99_5.tutorialFocusH) or var_99_17 + var_99_8 * 2
	local var_99_22 = math.max(0, math.min(var_99_3, var_99_18))
	local var_99_23 = math.max(0, math.min(var_99_4, var_99_19))
	local var_99_24 = math.max(0, math.min(var_99_3 - var_99_22, var_99_20))
	local var_99_25 = math.max(0, math.min(var_99_4 - var_99_23, var_99_21))

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(var_99_22 + 0.5), math.floor(var_99_23 + 0.5), math.floor(var_99_24 + 0.5), math.floor(var_99_25 + 0.5))
end

local function var_0_57(arg_100_0, arg_100_1)
	local var_100_0 = rawget(_G, "battlefield")
	local var_100_1 = rawget(_G, "loadedAssets")
	local var_100_2 = arg_100_1 and arg_100_1.right
	local var_100_3 = var_100_0 and var_100_0.waveTimer

	if not var_100_0 or not var_100_1 or not var_100_1.ui or not var_100_2 or not var_100_3 then
		return nil
	end

	local var_100_4 = ((var_100_3.t or 0) >= (var_100_3.dur or 0) or var_100_3.state == "fading") and (var_100_1.ui.battleReadyOpen or var_100_1.ui.battleReadyClosed) or var_100_1.ui.battleReadyClosed or var_100_1.ui.battleReadyOpen

	if not var_100_4 then
		return nil
	end

	local var_100_5 = 32
	local var_100_6 = tonumber(arg_100_0 and arg_100_0.battle and arg_100_0.battle.allySize32) or 64
	local var_100_7 = var_100_1.units and (var_100_1.units.MiniSwordMan or var_100_1.units.MiniArcherMan or var_100_1.units.MiniSpearMan)
	local var_100_8 = var_100_6 / math.max(1, var_100_7 and var_100_7.frameW or var_100_5)
	local var_100_9 = arg_100_0 and arg_100_0.battle and arg_100_0.battle.readyIcon or {}
	local var_100_10 = arg_100_0 and arg_100_0.scale or 1
	local var_100_11 = math.floor((var_100_9.padX ~= nil and var_100_9.padX or 8) * var_100_10)
	local var_100_12 = math.floor((var_100_9.padY ~= nil and var_100_9.padY or 12) * var_100_10)
	local var_100_13 = math.floor(var_100_4:getWidth() * var_100_8 + 0.5)
	local var_100_14 = math.floor(var_100_4:getHeight() * var_100_8 + 0.5)
	local var_100_15 = math.floor(var_100_2.x + var_100_2.w - var_100_13 - var_100_11 + 0.5)
	local var_100_16

	if (var_100_9.anchor or "bottom-right") == "bottom-right" then
		var_100_16 = math.floor(var_100_2.y + var_100_2.h - var_100_14 - var_100_12 + 0.5)
	else
		var_100_16 = math.floor(var_100_2.y + math.max(0, math.floor(var_100_2.h * 0.12)) + 0.5)
	end

	return {
		icon = var_100_4,
		x = var_100_15,
		y = var_100_16,
		w = var_100_13,
		h = var_100_14,
		scale = var_100_8
	}
end

function var_0_0.hitTestBattleReady(arg_101_0, arg_101_1, arg_101_2, arg_101_3)
	if not var_0_0.isBattleReadyStep() then
		return false
	end

	local var_101_0 = var_0_57(arg_101_0, arg_101_1)

	if not var_101_0 then
		return false
	end

	local var_101_1 = 5

	return arg_101_2 >= var_101_0.x - var_101_1 and arg_101_2 <= var_101_0.x + var_101_0.w + var_101_1 and arg_101_3 >= var_101_0.y - var_101_1 and arg_101_3 <= var_101_0.y + var_101_0.h + var_101_1
end

function var_0_0.onBattleStarted(arg_102_0)
	if not var_0_0.isBattleReadyStep() then
		return false
	end

	var_0_3.step = STEP_BATTLE_FREE
	var_0_3.stepT = 0
	var_0_3.stepElapsed = 0

	local var_102_0 = rawget(_G, "slot")

	if var_102_0 then
		var_102_0._tutorialSpin = false
		var_102_0.stopTimes = nil

		if var_102_0._coreSpinMods then
			var_102_0._coreSpinMods.forceCells = nil
		end
	end

	if arg_102_0 then
		arg_102_0._tutorialBlockNonSlot = false
		arg_102_0._tutorialAllowReadyIcon = false
		arg_102_0._tutorialAllowUnitInteraction = false
		arg_102_0._tutorialCursorX = nil
		arg_102_0._tutorialCursorY = nil
	end

	return true
end

local function var_0_58(arg_103_0, arg_103_1)
	local var_103_0 = var_0_57(arg_103_0, arg_103_1)

	if not var_103_0 then
		return
	end

	local var_103_1 = arg_103_0 and arg_103_0.tutorial and arg_103_0.tutorial.readyFocus or {}
	local var_103_2 = tonumber(var_103_1.padX) or 6
	local var_103_3 = tonumber(var_103_1.padY) or 6

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(var_103_0.x - var_103_2 + 0.5), math.floor(var_103_0.y - var_103_3 + 0.5), math.floor(var_103_0.w + var_103_2 * 2 + 0.5), math.floor(var_103_0.h + var_103_3 * 2 + 0.5))
end

local function var_0_59(arg_104_0, arg_104_1)
	local var_104_0 = arg_104_1 and arg_104_1.nudgeBtns and arg_104_1.nudgeBtns[2]

	if not var_104_0 then
		return
	end

	local var_104_1 = 5

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_104_0.x - var_104_1, var_104_0.y - var_104_1, var_104_0.w + var_104_1 * 2, var_104_0.h + var_104_1 * 2)
end

local function var_0_60(arg_105_0)
	local var_105_0 = arg_105_0 and arg_105_0._tutorialFiremanRect

	if not var_105_0 then
		return
	end

	local var_105_1 = arg_105_0 and arg_105_0.tutorial and arg_105_0.tutorial.firemanFocus or {}
	local var_105_2 = tonumber(var_105_1.pad) or 6
	local var_105_3 = tonumber(var_105_1.offsetY) or 0

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_105_0.x - var_105_2, var_105_0.y - var_105_2 + var_105_3, var_105_0.w + var_105_2 * 2, var_105_0.h + var_105_2 * 2)
end

local function var_0_61(arg_106_0)
	local var_106_0 = arg_106_0 and arg_106_0.maxUnit or {}
	local var_106_1 = tonumber(var_106_0.x) or 369
	local var_106_2 = tonumber(var_106_0.y) or 9
	local var_106_3 = tonumber(var_106_0.tutorialFocusW) or tonumber(var_106_0.focusW) or 44
	local var_106_4 = tonumber(var_106_0.tutorialFocusH) or tonumber(var_106_0.focusH) or 22
	local var_106_5 = tonumber(var_106_0.tutorialFocusX)

	if not var_106_5 then
		local var_106_6 = var_106_0.align or "right"

		if var_106_6 == "right" then
			var_106_5 = var_106_1 - var_106_3 - 4
		elseif var_106_6 == "center" then
			var_106_5 = var_106_1 - var_106_3 * 0.5
		else
			var_106_5 = var_106_1 - 4
		end
	end

	local var_106_7 = tonumber(var_106_0.tutorialFocusOffsetX) or 8
	local var_106_8 = tonumber(var_106_0.tutorialFocusOffsetY) or -5

	return {
		x = math.floor(var_106_5 + var_106_7 + 0.5),
		y = math.floor(var_106_2 + var_106_8 + 0.5),
		w = math.floor(var_106_3 + 0.5),
		h = math.floor(var_106_4 + 0.5)
	}
end

local function var_0_62(arg_107_0)
	local var_107_0 = var_0_61(arg_107_0)

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_107_0.x, var_107_0.y, var_107_0.w, var_107_0.h)
end

local function var_0_63(arg_108_0, arg_108_1)
	local var_108_0 = arg_108_1 and arg_108_1.right
	local var_108_1 = arg_108_0 and arg_108_0.battlefieldSections and arg_108_0.battlefieldSections.shop

	if not var_108_0 or not var_108_1 then
		return nil
	end

	local var_108_2 = tonumber(var_108_1.scale) or 1
	local var_108_3 = arg_108_0 and arg_108_0._shopMode and 376 or tonumber(var_108_1.x) or 382
	local var_108_4 = var_108_0.x + var_108_3

	if var_108_1.anchor == "right" then
		var_108_4 = var_108_0.x + var_108_0.w + (tonumber(var_108_1.x) or 0)
	end

	local var_108_5 = var_108_0.y + (tonumber(var_108_1.y) or 0)
	local var_108_6 = tonumber(var_108_1.focusW) or 40 * var_108_2
	local var_108_7 = tonumber(var_108_1.focusH) or 32 * var_108_2

	return {
		x = var_108_4,
		y = var_108_5,
		w = var_108_6,
		h = var_108_7
	}
end

local function var_0_64(arg_109_0, arg_109_1)
	local var_109_0 = var_0_63(arg_109_0, arg_109_1)

	var_0_3.shopFocusRect = var_109_0

	if not var_109_0 then
		return
	end

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(var_109_0.x - 6 + 0.5), math.floor(var_109_0.y - 6 + 0.5), math.floor(var_109_0.w + 12 + 0.5), math.floor(var_109_0.h + 12 + 0.5))
end

local function var_0_65(arg_110_0)
	local var_110_0 = arg_110_0 and arg_110_0.jungsuDisplay or {}
	local var_110_1 = tonumber(var_110_0.x) or 400
	local var_110_2 = tonumber(var_110_0.y) or 10

	return {
		w = 44,
		h = 23,
		x = var_110_1 - 22,
		y = var_110_2 - 6
	}
end

local function var_0_66(arg_111_0)
	local var_111_0 = arg_111_0 and arg_111_0._tutorialShopOfferRects

	return var_111_0 and var_111_0[var_0_3.shopTargetIndex or 1] or nil
end

local function var_0_67(arg_112_0)
	return arg_112_0 and arg_112_0._tutorialPurchasedItemRect or nil
end

local function var_0_68(arg_113_0, arg_113_1)
	local var_113_0 = arg_113_1 and arg_113_1.right
	local var_113_1 = arg_113_0 and arg_113_0.battlefieldSections and arg_113_0.battlefieldSections.battlefield

	if not var_113_0 or not var_113_1 then
		return nil
	end

	local var_113_2 = tonumber(var_113_1.scale) or 1

	return {
		x = var_113_0.x + (arg_113_0 and arg_113_0._shopMode and 382 or tonumber(var_113_1.x) or 376),
		y = var_113_0.y + (tonumber(var_113_1.y) or 230),
		w = (tonumber(var_113_1.focusW) or 40) * var_113_2,
		h = (tonumber(var_113_1.focusH) or 32) * var_113_2
	}
end

local function var_0_69(arg_114_0, arg_114_1)
	if not arg_114_0 then
		return
	end

	arg_114_1 = tonumber(arg_114_1) or 6

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", math.floor(arg_114_0.x - arg_114_1 + 0.5), math.floor(arg_114_0.y - arg_114_1 + 0.5), math.floor(arg_114_0.w + arg_114_1 * 2 + 0.5), math.floor(arg_114_0.h + arg_114_1 * 2 + 0.5))
end

function var_0_0.hitTestBattlefieldReturn(arg_115_0, arg_115_1, arg_115_2, arg_115_3)
	if not var_0_0.isShopReturnStep() then
		return false
	end

	local var_115_0 = var_0_68(arg_115_0, arg_115_1)
	local var_115_1 = 7

	return var_115_0 and arg_115_2 >= var_115_0.x - var_115_1 and arg_115_2 <= var_115_0.x + var_115_0.w + var_115_1 and arg_115_3 >= var_115_0.y - var_115_1 and arg_115_3 <= var_115_0.y + var_115_0.h + var_115_1 or false
end

function var_0_0.hitTestShopIntro(arg_116_0, arg_116_1, arg_116_2, arg_116_3)
	if not var_0_0.isShopIntroStep() then
		return false
	end

	local var_116_0 = var_0_63(arg_116_0, arg_116_1)

	if not var_116_0 then
		return false
	end

	local var_116_1 = 8

	return arg_116_2 >= var_116_0.x - var_116_1 and arg_116_2 <= var_116_0.x + var_116_0.w + var_116_1 and arg_116_3 >= var_116_0.y - var_116_1 and arg_116_3 <= var_116_0.y + var_116_0.h + var_116_1
end

local function var_0_70(arg_117_0, arg_117_1, arg_117_2)
	local var_117_0 = rawget(_G, "battlefield")
	local var_117_1 = var_117_0 and var_117_0.classSelect
	local var_117_2 = arg_117_1 and arg_117_1.right
	local var_117_3 = var_117_1 and var_117_1._tutorialCardRects

	if not var_117_3 and var_117_2 then
		local var_117_4 = 2
		local var_117_5 = math.floor(math.min(180, var_117_2.w * 0.28))
		local var_117_6 = math.floor(math.min(320, var_117_2.h * 0.8))
		local var_117_7 = math.floor(var_117_5 * (arg_117_0 and arg_117_0.classCard and arg_117_0.classCard.gapMul or 0.2))
		local var_117_8 = var_117_5 * var_117_4 + var_117_7
		local var_117_9 = var_117_2.x + math.floor((var_117_2.w - var_117_8) / 2)
		local var_117_10 = var_117_2.y + math.floor((var_117_2.h - var_117_6) / 2)

		var_117_3 = {
			{
				x = var_117_9,
				y = var_117_10,
				w = var_117_5,
				h = var_117_6
			},
			{
				x = var_117_9 + var_117_5 + var_117_7,
				y = var_117_10,
				w = var_117_5,
				h = var_117_6
			}
		}
	end

	if not var_117_3 then
		return
	end

	love.graphics.setColor(1, 1, 1, 1)

	for iter_117_0 = 1, 2 do
		local var_117_11 = arg_117_2 == "skill" and var_117_1 and var_117_1._tutorialSkillRects and var_117_1._tutorialSkillRects[iter_117_0] or var_117_3[iter_117_0]

		if var_117_11 then
			local var_117_12 = arg_117_2 == "skill" and 5 or 8

			love.graphics.rectangle("fill", math.floor(var_117_11.x - var_117_12 + 0.5), math.floor(var_117_11.y - var_117_12 + 0.5), math.floor(var_117_11.w + var_117_12 * 2 + 0.5), math.floor(var_117_11.h + var_117_12 * 2 + 0.5))
		end
	end
end

local function var_0_71(arg_118_0)
	local var_118_0 = arg_118_0 and arg_118_0.tutorial and arg_118_0.tutorial.coreCounterFocus or {}
	local var_118_1 = arg_118_0 and arg_118_0.scrollIntroAnim or {}
	local var_118_2 = rawget(_G, "scrollIntroAnim")
	local var_118_3 = tonumber(var_118_1.scale) or 2
	local var_118_4 = 21 * var_118_3
	local var_118_5 = 20 * var_118_3
	local var_118_6 = tonumber(var_118_0.x)
	local var_118_7 = tonumber(var_118_0.y)

	var_118_6 = var_118_6 or tonumber(var_118_1.x) or 167
	var_118_7 = var_118_7 or (tonumber(var_118_1.y) or -16) + (var_118_2 and tonumber(var_118_2.slideY) or 0)

	local var_118_8 = tonumber(var_118_0.w) or var_118_4
	local var_118_9 = tonumber(var_118_0.h) or var_118_5

	return {
		x = math.floor(var_118_6 + 0.5),
		y = math.floor(var_118_7 + 0.5),
		w = math.floor(var_118_8 + 0.5),
		h = math.floor(var_118_9 + 0.5)
	}
end

local function var_0_72(arg_119_0)
	local var_119_0 = var_0_71(arg_119_0)
	local var_119_1 = arg_119_0 and arg_119_0.tutorial and arg_119_0.tutorial.coreCounterFocus or {}
	local var_119_2 = tonumber(var_119_1.pad) or 3

	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.rectangle("fill", var_119_0.x - var_119_2, var_119_0.y - var_119_2, var_119_0.w + var_119_2 * 2, var_119_0.h + var_119_2 * 2)
end

local function var_0_73(arg_120_0, arg_120_1, arg_120_2, arg_120_3, arg_120_4, arg_120_5, arg_120_6)
	local var_120_0 = tonumber(arg_120_5.lineGap) or 16
	local var_120_1 = tonumber(arg_120_5.padX) or 12
	local var_120_2 = tonumber(arg_120_5.padY) or 12
	local var_120_3 = tonumber(arg_120_5.iconScale) or 1
	local var_120_4 = tonumber(arg_120_5.iconOffsetY) or 0
	local var_120_5 = arg_120_5.numberColor or arg_120_0 and arg_120_0.tutorial and arg_120_0.tutorial.numberColor
	local var_120_6 = arg_120_1 and arg_120_1.getHeight and arg_120_1:getHeight() or 12
	local var_120_7 = 0

	for iter_120_0, iter_120_1 in ipairs(arg_120_2) do
		var_120_7 = math.max(var_120_7, var_0_47(arg_120_1, iter_120_1, var_120_3))
	end

	local var_120_8 = var_120_6 + var_120_0 * (#arg_120_2 - 1)
	local var_120_9 = math.max(tonumber(arg_120_5.minW) or 0, math.floor(var_120_7 + var_120_1 * 2 + 0.5))
	local var_120_10 = math.max(tonumber(arg_120_5.minH) or 0, math.floor(var_120_8 + var_120_2 * 2 + 0.5))

	if tonumber(arg_120_5.w) and arg_120_5.autoSize == false then
		var_120_9 = tonumber(arg_120_5.w)
	end

	if tonumber(arg_120_5.h) and arg_120_5.autoSize == false then
		var_120_10 = tonumber(arg_120_5.h)
	end

	var_0_45(arg_120_0, arg_120_3, arg_120_4, var_120_9, var_120_10, arg_120_6)

	local var_120_11 = arg_120_3 + var_120_1 + (tonumber(arg_120_5.textOffsetX) or 0)
	local var_120_12 = arg_120_4 + math.floor((var_120_10 - var_120_8) * 0.5 + 0.5) + (tonumber(arg_120_5.textOffsetY) or 0)
	local var_120_13 = {
		0.9254901960784314,
		0.8980392156862745,
		0.8549019607843137,
		arg_120_6
	}

	for iter_120_2, iter_120_3 in ipairs(arg_120_2) do
		var_0_48(arg_120_1, iter_120_3, var_120_11, var_120_12 + var_120_0 * (iter_120_2 - 1), var_120_13, arg_120_6, var_120_3, var_120_4, var_120_5)
	end

	return var_120_9, var_120_10
end

local function var_0_74(arg_121_0, arg_121_1, arg_121_2)
	local var_121_0 = tonumber(arg_121_2.lineGap) or 16
	local var_121_1 = tonumber(arg_121_2.padX) or 12
	local var_121_2 = tonumber(arg_121_2.padY) or 12
	local var_121_3 = tonumber(arg_121_2.iconScale) or 1
	local var_121_4 = arg_121_0 and arg_121_0.getHeight and arg_121_0:getHeight() or 12
	local var_121_5 = 0

	for iter_121_0, iter_121_1 in ipairs(arg_121_1) do
		var_121_5 = math.max(var_121_5, var_0_47(arg_121_0, iter_121_1, var_121_3))
	end

	local var_121_6 = var_121_4 + var_121_0 * (#arg_121_1 - 1)
	local var_121_7 = math.max(tonumber(arg_121_2.minW) or 0, math.floor(var_121_5 + var_121_1 * 2 + 0.5))
	local var_121_8 = math.max(tonumber(arg_121_2.minH) or 0, math.floor(var_121_6 + var_121_2 * 2 + 0.5))

	if tonumber(arg_121_2.w) and arg_121_2.autoSize == false then
		var_121_7 = tonumber(arg_121_2.w)
	end

	if tonumber(arg_121_2.h) and arg_121_2.autoSize == false then
		var_121_8 = tonumber(arg_121_2.h)
	end

	return var_121_7, var_121_8
end

local function var_0_75(arg_122_0, arg_122_1)
	var_0_21()

	local var_122_0 = arg_122_0 and arg_122_0.restartConfirm and arg_122_0.restartConfirm.font or arg_122_0 and arg_122_0.coreMessage and arg_122_0.coreMessage.font or arg_122_0 and arg_122_0.font or var_0_4 or love.graphics.getFont()

	if var_122_0 and var_122_0.setFilter then
		var_122_0:setFilter("nearest", "nearest")
	end

	local var_122_1 = arg_122_0 and arg_122_0.virtual and arg_122_0.virtual.W or 640
	local var_122_2 = arg_122_0 and arg_122_0.virtual and arg_122_0.virtual.H or 360
	local var_122_3 = var_0_42(var_0_3.stepT or 0)
	local var_122_4 = var_122_3
	local var_122_5 = var_0_50(arg_122_0, arg_122_1)

	if var_0_3.step == STEP_ARCHER_WIN or var_0_3.step == STEP_WARRIOR_WIN or var_0_3.step == STEP_UNIT_HOVER or var_0_3.step == STEP_POST_CORE_ARCHER_WIN or var_0_3.step == STEP_PROMOTED_ARCHER then
		love.graphics.stencil(function()
			var_0_55(arg_122_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_BATTLE_READY then
		love.graphics.stencil(function()
			var_0_58(arg_122_0, arg_122_1)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_POSITION or var_0_3.step == STEP_ABSORB_DRAG or var_0_3.step == STEP_FREE_ABSORB or var_0_3.step == STEP_IMPRINT_INSPECT or var_0_3.step == STEP_FINAL_READY then
		love.graphics.stencil(function()
			local var_125_0 = arg_122_1 and arg_122_1.right

			if var_125_0 then
				love.graphics.rectangle("fill", var_125_0.x, var_125_0.y, var_125_0.w, var_125_0.h)
			end

			if var_0_3.step == STEP_FREE_ABSORB then
				var_0_56(arg_122_0)
			end

			if var_0_3.step == STEP_FINAL_READY then
				var_0_58(arg_122_0, arg_122_1)
			end
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest("equal", 1)
		love.graphics.setColor(0, 0, 0, 0.65 * (1 - var_122_3))
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_NUDGE_ACTION then
		love.graphics.stencil(function()
			var_0_59(arg_122_0, arg_122_1)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_ABSORB_BUTTON or var_0_3.step == STEP_FREE_ABSORB_BUTTON then
		love.graphics.stencil(function()
			var_0_60(arg_122_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_CORE_COUNTER then
		love.graphics.stencil(function()
			var_0_72(arg_122_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_CORE_SELECT then
		-- block empty
	elseif var_0_3.step == STEP_CLASS_PROMOTION or var_0_3.step == STEP_CLASS_SKILL_HOVER or var_0_3.step == STEP_CLASS_CHOOSE then
		-- block empty
	elseif var_0_3.step == STEP_MAX_UNIT_NOTICE then
		love.graphics.stencil(function()
			var_0_62(arg_122_0)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_SHOP_INTRO then
		love.graphics.stencil(function()
			var_0_64(arg_122_0, arg_122_1)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_SHOP_CURRENCY then
		love.graphics.stencil(function()
			var_0_69(var_0_65(arg_122_0), 5)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_SHOP_BUY then
		love.graphics.stencil(function()
			var_0_69(var_0_66(arg_122_0), 6)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_SHOP_ITEM_BOUGHT then
		love.graphics.stencil(function()
			var_0_69(var_0_67(arg_122_0), 6)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_SHOP_RETURN then
		love.graphics.stencil(function()
			var_0_69(var_0_68(arg_122_0, arg_122_1), 6)
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_WAVE_TYPES or var_0_3.step == STEP_TUTORIAL_COMPLETE then
		love.graphics.stencil(function()
			local var_135_0 = arg_122_1 and arg_122_1.right

			if var_135_0 then
				love.graphics.rectangle("fill", var_135_0.x, var_135_0.y, var_135_0.w, var_135_0.h)
			end
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	elseif var_0_3.step == STEP_ABSORB_MODAL then
		-- block empty
	else
		love.graphics.stencil(function()
			if var_0_3.step == STEP_SLOT or var_0_3.step == STEP_GOLD or var_0_3.step == STEP_SECOND_SPIN or var_0_3.step == STEP_SECOND_SPINNING or var_0_3.step == STEP_REWARD_SPIN or var_0_3.step == STEP_REWARD_SPINNING or var_0_3.step == STEP_MORE_SPIN or var_0_3.step == STEP_MORE_SPINNING or var_0_3.step == STEP_NUDGE_MISS or var_0_3.step == STEP_NUDGE_WIN or var_0_3.step == STEP_CORE_SPIN or var_0_3.step == STEP_CORE_SPINNING or var_0_3.step == STEP_POST_CORE_SLOT or var_0_3.step == STEP_POST_CORE_SPINNING or var_0_3.step == STEP_POST_CORE_SECOND_SPIN or var_0_3.step == STEP_POST_CORE_SECOND_SPINNING or var_0_3.step == STEP_SLOT_BROKEN then
				var_0_52(arg_122_0, arg_122_1)
			end

			if var_0_3.step == STEP_GOLD or var_0_3.step == STEP_WAVE_REWARD then
				var_0_53(arg_122_0)
			end
		end, "replace", 1)
		love.graphics.setStencilTest("equal", 0)
		love.graphics.setColor(0, 0, 0, 0.65 * var_122_4)
		love.graphics.rectangle("fill", 0, 0, var_122_1, var_122_2)
		love.graphics.setStencilTest()
	end

	if var_0_3.step == STEP_ABSORB_MODAL then
		return
	end

	local var_122_6 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.slotTip or {}
	local var_122_7 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.unitNameColor or {
		1,
		0.82,
		0.36
	}
	local var_122_8 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.absorbColor or {
		0.78,
		0.63,
		0.9
	}

	if var_0_3.step == STEP_CORE_SELECT then
		local var_122_9 = arg_122_0 and arg_122_0._coreSelect

		if not (var_122_9 and var_122_9.left and var_122_9.left.done and var_122_9.mid and var_122_9.mid.done and var_122_9.right and var_122_9.right.done) then
			return
		end

		if var_0_3.coreSelectTipReady ~= true then
			var_0_3.coreSelectTipReady = true
			var_0_3.stepT = 0
			var_0_3.stepElapsed = 0
		end
	end

	local var_122_10

	if var_0_3.step == STEP_GOLD then
		var_122_10 = {
			{
				{
					text = var_0_2("slot_cost_prefix")
				},
				{
					icon = "gold"
				},
				{
					text = var_0_2("slot_cost_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_ARCHER_WIN then
		var_122_10 = {
			{
				{
					text = var_0_2("good_prefix")
				},
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("archer_summoned_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_SECOND_SPIN or var_0_3.step == STEP_SECOND_SPINNING then
		var_122_10 = {
			var_0_2("second_spin")
		}
	elseif var_0_3.step == STEP_WARRIOR_WIN then
		var_122_10 = {
			{
				{
					text = var_0_2("this_time_prefix")
				},
				{
					text = var_0_2("unit_warrior"),
					color = var_122_7
				},
				{
					text = var_0_2("warrior_summoned_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_UNIT_HOVER then
		var_122_10 = {
			var_0_2("unit_hover_1"),
			var_0_2("unit_hover_2")
		}
	elseif var_0_3.step == STEP_POSITION then
		var_122_10 = {
			var_0_2("position_1"),
			{
				{
					text = var_0_2("mouse_prefix")
				},
				{
					icon = "mouseLeft"
				},
				{
					text = var_0_2("position_drag_suffix")
				}
			},
			{
				{
					text = var_0_2("unit_warrior"),
					color = var_122_7
				},
				{
					text = var_0_2("warrior_front_suffix")
				},
				{
					text = " "
				},
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("archer_back_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_WAVE_REWARD then
		var_122_10 = {
			{
				{
					text = var_0_2("wave_reward_prefix")
				},
				{
					icon = "gold"
				},
				{
					text = var_0_2("wave_reward_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_REWARD_SPIN or var_0_3.step == STEP_REWARD_SPINNING then
		var_122_10 = {
			{
				{
					text = var_0_2("reward_spin_prefix")
				},
				{
					icon = "gold"
				},
				{
					text = var_0_2("reward_spin_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_MORE_SPIN or var_0_3.step == STEP_MORE_SPINNING then
		if var_0_3.step == STEP_MORE_SPINNING and var_0_3.nudgePressed then
			var_122_10 = {
				var_0_2("nudge_win_1"),
				var_0_2("nudge_win_2")
			}
		else
			var_122_10 = {
				var_0_2("more_spin_1"),
				var_0_2("more_spin_2")
			}
		end
	elseif var_0_3.step == STEP_NUDGE_MISS then
		var_122_10 = {
			var_0_2("nudge_miss_1"),
			var_0_2("nudge_miss_2")
		}
	elseif var_0_3.step == STEP_NUDGE_ACTION then
		if var_0_3.nudgePressed then
			var_122_10 = {
				var_0_2("nudge_win_1"),
				var_0_2("nudge_win_2")
			}
		else
			var_122_10 = {
				var_0_2("nudge_action")
			}
		end
	elseif var_0_3.step == STEP_NUDGE_WIN then
		var_122_10 = {
			var_0_2("nudge_win_1"),
			var_0_2("nudge_win_2")
		}
	elseif var_0_3.step == STEP_ABSORB_BUTTON then
		var_122_10 = {
			{
				{
					text = var_0_2("absorb_intro_prefix")
				},
				{
					text = var_0_2("absorb_word"),
					color = var_122_8
				},
				{
					text = var_0_2("absorb_intro_suffix")
				}
			},
			{
				{
					text = var_0_2("absorb_word"),
					color = var_122_8
				},
				{
					text = var_0_2("absorb_button_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_ABSORB_DRAG then
		var_122_10 = {
			{
				{
					text = var_0_2("unit_spearman"),
					color = var_122_7
				},
				{
					text = var_0_2("object_particle")
				},
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("absorb_drag_middle")
				},
				{
					text = var_0_2("absorb_word"),
					color = var_122_8
				},
				{
					text = var_0_2("try_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_IMPRINT_INSPECT then
		var_122_10 = {
			{
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("subject_particle_space")
				},
				{
					text = var_0_2("absorb_word"),
					color = var_122_8
				},
				{
					text = var_0_2("imprint_inspect_1_suffix")
				}
			},
			{
				{
					text = var_0_2("mouse_prefix")
				},
				{
					icon = "mouseRight"
				},
				{
					text = var_0_2("with_particle")
				},
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("imprint_inspect_2_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_FINAL_READY then
		var_122_10 = {
			var_0_2("final_ready")
		}
	elseif var_0_3.step == STEP_CORE_COUNTER then
		var_122_10 = {
			var_0_2("core_counter_1"),
			var_0_2("core_counter_2")
		}
	elseif var_0_3.step == STEP_CORE_SPIN or var_0_3.step == STEP_CORE_SPINNING then
		var_122_10 = {
			var_0_2("core_spin")
		}
	elseif var_0_3.step == STEP_CORE_SELECT then
		var_122_10 = {
			var_0_2("core_select_1"),
			var_0_2("core_select_2")
		}
	elseif var_0_3.step == STEP_POST_CORE_SLOT or var_0_3.step == STEP_POST_CORE_SPINNING then
		var_122_10 = {
			var_0_2("post_core_spin")
		}
	elseif var_0_3.step == STEP_POST_CORE_ARCHER_WIN then
		var_122_10 = {
			{
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("archer_summoned_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_POST_CORE_SECOND_SPIN or var_0_3.step == STEP_POST_CORE_SECOND_SPINNING then
		var_122_10 = {
			var_0_2("one_more_spin")
		}
	elseif var_0_3.step == STEP_SLOT_BROKEN then
		var_122_10 = {
			var_0_2("slot_broken")
		}
	elseif var_0_3.step == STEP_MAX_UNIT_NOTICE then
		var_122_10 = {
			var_0_2("max_unit_notice")
		}
	elseif var_0_3.step == STEP_FREE_ABSORB_BUTTON then
		var_122_10 = {
			{
				{
					text = var_0_2("absorb_word"),
					color = var_122_8
				},
				{
					text = var_0_2("free_absorb_button_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_FREE_ABSORB then
		var_122_10 = {
			{
				{
					text = var_0_2("freely_prefix")
				},
				{
					text = var_0_2("absorb_word"),
					color = var_122_8
				},
				{
					text = var_0_2("through_particle")
				},
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("free_absorb_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_CLASS_PROMOTION then
		var_122_10 = {
			{
				{
					text = var_0_2("class_promotion_prefix")
				},
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("class_promotion_middle")
				}
			},
			var_0_2("class_promotion_2")
		}
	elseif var_0_3.step == STEP_CLASS_SKILL_HOVER then
		var_122_10 = {
			var_0_2("class_skill_1"),
			var_0_2("class_skill_2")
		}
	elseif var_0_3.step == STEP_CLASS_CHOOSE then
		var_122_10 = {
			var_0_2("class_choose")
		}
	elseif var_0_3.step == STEP_PROMOTED_ARCHER then
		var_122_10 = {
			{
				{
					text = var_0_2("unit_archer"),
					color = var_122_7
				},
				{
					text = var_0_2("promoted_archer_suffix")
				}
			},
			{
				{
					text = var_0_2("new_class_prefix")
				},
				{
					text = tostring(var_0_3.promotedName or var_0_2("new_unit_fallback")),
					color = var_122_7
				},
				{
					text = "\""
				}
			}
		}
	elseif var_0_3.step == STEP_SHOP_INTRO then
		var_122_10 = {
			var_0_2("shop_intro")
		}
	elseif var_0_3.step == STEP_SHOP_CURRENCY then
		var_122_10 = {
			var_0_2("shop_currency_1"),
			var_0_2("shop_currency_2")
		}
	elseif var_0_3.step == STEP_SHOP_BUY then
		var_122_10 = {
			{
				{
					text = var_0_2("shop_buy_prefix")
				},
				{
					text = var_0_2("item_sturdy_fist"),
					color = var_122_7
				},
				{
					text = var_0_2("shop_buy_suffix")
				}
			}
		}
	elseif var_0_3.step == STEP_SHOP_ITEM_BOUGHT then
		var_122_10 = {
			var_0_2("shop_item_bought")
		}
	elseif var_0_3.step == STEP_SHOP_RETURN then
		var_122_10 = {
			var_0_2("shop_return")
		}
	elseif var_0_3.step == STEP_WAVE_TYPES then
		var_122_10 = {
			{
				{
					text = var_0_2("wave_types_prefix")
				},
				{
					icon = "judgement"
				},
				{
					text = var_0_2("judgement_wave_suffix")
				}
			},
			{
				{
					icon = "boss"
				},
				{
					text = var_0_2("boss_wave_suffix")
				}
			},
			var_0_2("wave_types_3"),
			var_0_2("wave_types_4")
		}
	elseif var_0_3.step == STEP_TUTORIAL_COMPLETE then
		var_122_10 = {
			var_0_2("complete_1"),
			var_0_2("complete_2")
		}
	elseif var_0_3.step == STEP_BATTLE_READY then
		var_122_10 = {
			var_0_2("battle_ready_1"),
			var_0_2("battle_ready_2")
		}
	else
		var_122_10 = {
			var_0_2("slot_intro_1"),
			var_0_2("slot_intro_2"),
			var_0_2("slot_intro_3")
		}
	end

	local var_122_11 = arg_122_1 and arg_122_1.slotPanel
	local var_122_12 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.slotFocus or {}
	local var_122_13 = var_122_11 and var_122_11.x + (tonumber(var_122_12.offsetX) or -20) or var_122_5.x
	local var_122_14 = var_122_11 and var_122_11.y + (tonumber(var_122_12.offsetY) or -24) or var_122_5.y
	local var_122_15 = var_122_13 + (var_122_11 and var_122_11.w + (tonumber(var_122_12.extraW) or 64) or var_122_5.w) + (tonumber(var_122_6.gapX) or 14)
	local var_122_16 = var_122_14 + (tonumber(var_122_6.offsetY) or 24)

	if var_0_3.step == STEP_ARCHER_WIN or var_0_3.step == STEP_WARRIOR_WIN or var_0_3.step == STEP_UNIT_HOVER or var_0_3.step == STEP_POST_CORE_ARCHER_WIN or var_0_3.step == STEP_PROMOTED_ARCHER then
		local var_122_17 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.winTip or {}
		local var_122_18 = arg_122_1 and arg_122_1.right or var_0_3.winLayout and var_0_3.winLayout.right

		if var_122_18 then
			var_122_15 = var_122_18.x + (tonumber(var_122_17.offsetX) or 56)
			var_122_16 = var_122_18.y + (tonumber(var_122_17.offsetY) or 58)
		end
	elseif var_0_3.step == STEP_POSITION then
		local var_122_19 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.positionTip or {}
		local var_122_20 = arg_122_1 and arg_122_1.right

		if var_122_20 then
			var_122_15 = var_122_20.x + var_122_20.w * 0.5
			var_122_16 = var_122_20.y + (tonumber(var_122_19.topY) or 12)
		end
	elseif var_0_3.step == STEP_NUDGE_ACTION then
		local var_122_21 = arg_122_1 and arg_122_1.nudgeBtns and arg_122_1.nudgeBtns[2]

		if var_122_21 then
			var_122_15 = var_122_21.x + var_122_21.w + 8
			var_122_16 = var_122_21.y
		end
	elseif var_0_3.step == STEP_ABSORB_BUTTON or var_0_3.step == STEP_FREE_ABSORB_BUTTON then
		local var_122_22 = arg_122_0 and arg_122_0._tutorialFiremanRect

		if var_122_22 then
			var_122_15 = var_122_22.x + var_122_22.w + 8
			var_122_16 = var_122_22.y
		end
	elseif var_0_3.step == STEP_BATTLE_READY then
		local var_122_23 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.readyTip or {}
		local var_122_24 = var_0_57(arg_122_0, arg_122_1)

		if var_122_24 then
			var_122_15 = var_122_24.x + var_122_24.w * 0.5
			var_122_16 = var_122_24.y - (tonumber(var_122_23.gapY) or 8)
		end
	end

	local var_122_25 = math.floor((1 - var_122_3) * 8 + 0.5)
	local var_122_26 = var_122_16 + var_122_25
	local var_122_27 = {}

	for iter_122_0, iter_122_1 in pairs(var_122_6) do
		var_122_27[iter_122_0] = iter_122_1
	end

	if var_0_3.step == STEP_ARCHER_WIN or var_0_3.step == STEP_WARRIOR_WIN or var_0_3.step == STEP_UNIT_HOVER or var_0_3.step == STEP_POST_CORE_ARCHER_WIN or var_0_3.step == STEP_PROMOTED_ARCHER then
		local var_122_28 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.winTip or {}

		for iter_122_2, iter_122_3 in pairs(var_122_28) do
			var_122_27[iter_122_2] = iter_122_3
		end
	elseif var_0_3.step == STEP_POSITION or var_0_3.step == STEP_ABSORB_DRAG or var_0_3.step == STEP_FREE_ABSORB or var_0_3.step == STEP_IMPRINT_INSPECT or var_0_3.step == STEP_FINAL_READY then
		local var_122_29 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.positionTip or {}

		for iter_122_4, iter_122_5 in pairs(var_122_29) do
			var_122_27[iter_122_4] = iter_122_5
		end
	elseif var_0_3.step == STEP_BATTLE_READY then
		local var_122_30 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.readyTip or {}

		for iter_122_6, iter_122_7 in pairs(var_122_30) do
			var_122_27[iter_122_6] = iter_122_7
		end
	end

	local var_122_31, var_122_32 = var_0_74(var_122_0, var_122_10, var_122_27)

	if var_0_3.step == STEP_GOLD or var_0_3.step == STEP_WAVE_REWARD then
		local var_122_33 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.goldFocus or {}
		local var_122_34 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.goldTip or {}
		local var_122_35 = arg_122_0 and arg_122_0.goldDisplay or {}
		local var_122_36 = tonumber(var_122_33.w) or 70
		local var_122_37 = tonumber(var_122_33.h) or 22
		local var_122_38 = tonumber(var_122_33.x)
		local var_122_39 = tonumber(var_122_33.y)

		if not var_122_38 then
			local var_122_40 = tonumber(var_122_35.x) or 288

			var_122_38 = (var_122_35.align or "right") == "right" and var_122_40 - var_122_36 or var_122_40
		end

		var_122_39 = var_122_39 or (tonumber(var_122_35.y) or 10) - 6
		var_122_15 = var_122_38 + var_122_36 * 0.5 - var_122_31 * 0.5 + (tonumber(var_122_34.offsetX) or 0)
		var_122_26 = var_122_39 + var_122_37 + (tonumber(var_122_34.gapY) or 4) + (tonumber(var_122_34.offsetY) or 0) + var_122_25
	elseif var_0_3.step == STEP_CORE_COUNTER then
		local var_122_41 = var_0_71(arg_122_0)
		local var_122_42 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.coreCounterTip or {}

		var_122_15 = var_122_41.x + var_122_41.w * 0.5 - var_122_31 * 0.5 + (tonumber(var_122_42.offsetX) or 0)
		var_122_26 = var_122_41.y + var_122_41.h + (tonumber(var_122_42.gapY) or 8) + (tonumber(var_122_42.offsetY) or 0) + var_122_25
	elseif var_0_3.step == STEP_CORE_SELECT then
		local var_122_43 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.coreSelectTip or {}

		var_122_15 = var_122_1 * 0.5 - var_122_31 * 0.5 + (tonumber(var_122_43.offsetX) or 0)
		var_122_26 = (tonumber(var_122_43.y) or 26) + (tonumber(var_122_43.offsetY) or 0) + var_122_25
	elseif var_0_3.step == STEP_MAX_UNIT_NOTICE then
		local var_122_44 = var_0_61(arg_122_0)

		var_122_15 = var_122_44.x + var_122_44.w * 0.5 - var_122_31 * 0.5
		var_122_26 = var_122_44.y + var_122_44.h + 8 + var_122_25
	elseif var_0_3.step == STEP_CLASS_PROMOTION or var_0_3.step == STEP_CLASS_SKILL_HOVER or var_0_3.step == STEP_CLASS_CHOOSE then
		local var_122_45 = arg_122_1 and arg_122_1.right

		if var_122_45 then
			var_122_15 = var_122_45.x + var_122_45.w * 0.5 - var_122_31 * 0.5
			var_122_26 = var_122_45.y + var_122_45.h - var_122_32 - 16 + var_122_25
		end
	elseif var_0_3.step == STEP_SHOP_INTRO then
		local var_122_46 = var_0_3.shopFocusRect

		if var_122_46 then
			local var_122_47 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.shopTip or {}
			local var_122_48 = var_122_47.side or "below"

			if var_122_48 == "below" then
				var_122_15 = var_122_46.x + var_122_46.w * 0.5 - var_122_31 * 0.5
				var_122_26 = var_122_46.y + var_122_46.h + (tonumber(var_122_47.gapY) or 8) + (tonumber(var_122_47.offsetY) or 0) + var_122_25
			elseif var_122_48 == "right" then
				var_122_15 = var_122_46.x + var_122_46.w + (tonumber(var_122_47.gapX) or 8)
				var_122_26 = var_122_46.y + var_122_46.h * 0.5 - var_122_32 * 0.5 + (tonumber(var_122_47.offsetY) or 0) + var_122_25
			else
				var_122_15 = var_122_46.x - var_122_31 - (tonumber(var_122_47.gapX) or 8)
				var_122_26 = var_122_46.y + var_122_46.h * 0.5 - var_122_32 * 0.5 + (tonumber(var_122_47.offsetY) or 0) + var_122_25
			end
		end
	elseif var_0_3.step == STEP_SHOP_CURRENCY then
		local var_122_49 = var_0_65(arg_122_0)

		var_122_15 = var_122_49.x + var_122_49.w * 0.5 - var_122_31 * 0.5
		var_122_26 = var_122_49.y + var_122_49.h + 8 + var_122_25
	elseif var_0_3.step == STEP_SHOP_BUY then
		local var_122_50 = var_0_66(arg_122_0)

		if var_122_50 then
			var_122_15 = var_122_50.x + var_122_50.w * 0.5 - var_122_31 * 0.5
			var_122_26 = var_122_50.y - var_122_32 - 9 + var_122_25
		end
	elseif var_0_3.step == STEP_SHOP_ITEM_BOUGHT then
		local var_122_51 = var_0_67(arg_122_0)

		if var_122_51 then
			var_122_15 = var_122_51.x + var_122_51.w * 0.5 - var_122_31 * 0.5
			var_122_26 = var_122_51.y - var_122_32 - 9 + var_122_25
		end
	elseif var_0_3.step == STEP_SHOP_RETURN then
		local var_122_52 = var_0_68(arg_122_0, arg_122_1)

		if var_122_52 then
			var_122_15 = var_122_52.x - var_122_31 - 9
			var_122_26 = var_122_52.y + var_122_52.h * 0.5 - var_122_32 * 0.5 + var_122_25
		end
	elseif var_0_3.step == STEP_WAVE_TYPES then
		local var_122_53 = arg_122_1 and arg_122_1.right

		if var_122_53 then
			var_122_15 = var_122_53.x + var_122_53.w * 0.5 - var_122_31 * 0.5
			var_122_26 = var_122_53.y + 5 + var_122_25
		end
	elseif var_0_3.step == STEP_TUTORIAL_COMPLETE then
		local var_122_54 = arg_122_1 and arg_122_1.right

		if var_122_54 then
			var_122_15 = var_122_54.x + var_122_54.w * 0.5 - var_122_31 * 0.5
			var_122_26 = var_122_54.y + 16 + var_122_25
		end
	elseif var_0_3.step == STEP_ARCHER_WIN or var_0_3.step == STEP_WARRIOR_WIN or var_0_3.step == STEP_UNIT_HOVER or var_0_3.step == STEP_POST_CORE_ARCHER_WIN or var_0_3.step == STEP_PROMOTED_ARCHER then
		local var_122_55, var_122_56 = var_0_54(arg_122_0)

		if var_122_56 and var_122_56.x and var_122_56.y then
			local var_122_57 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.winTip or {}
			local var_122_58 = tonumber(arg_122_0 and arg_122_0.battle and arg_122_0.battle.allySize32) or 64
			local var_122_59 = tonumber(var_122_57.unitGap) or 8

			var_122_15 = var_122_56.x - var_122_31 * 0.5 + (tonumber(var_122_57.unitOffsetX) or 0)
			var_122_26 = var_122_56.y - var_122_58 * 0.5 - var_122_32 - var_122_59 + (tonumber(var_122_57.unitOffsetY) or 0) + var_122_25
		end
	elseif var_0_3.step == STEP_POSITION or var_0_3.step == STEP_ABSORB_DRAG or var_0_3.step == STEP_FREE_ABSORB or var_0_3.step == STEP_IMPRINT_INSPECT or var_0_3.step == STEP_FINAL_READY then
		local var_122_60 = arg_122_1 and arg_122_1.right
		local var_122_61 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.positionTip or {}

		if var_122_60 then
			var_122_15 = var_122_60.x + var_122_60.w * 0.5 - var_122_31 * 0.5 + (tonumber(var_122_61.offsetX) or 0)
			var_122_26 = var_122_60.y + (tonumber(var_122_61.topY) or 12) + (tonumber(var_122_61.offsetY) or 0) + var_122_25
		end
	elseif var_0_3.step == STEP_NUDGE_ACTION then
		local var_122_62 = arg_122_1 and arg_122_1.nudgeBtns and arg_122_1.nudgeBtns[2]

		if var_122_62 then
			var_122_15 = var_122_62.x + var_122_62.w + 8
			var_122_26 = var_122_62.y + var_122_62.h * 0.5 - var_122_32 * 0.5 + var_122_25
		end
	elseif var_0_3.step == STEP_ABSORB_BUTTON or var_0_3.step == STEP_FREE_ABSORB_BUTTON then
		local var_122_63 = arg_122_0 and arg_122_0._tutorialFiremanRect

		if var_122_63 then
			var_122_15 = var_122_63.x + var_122_63.w + 8
			var_122_26 = var_122_63.y + var_122_63.h * 0.5 - var_122_32 * 0.5 + var_122_25
		end
	elseif var_0_3.step == STEP_BATTLE_READY then
		local var_122_64 = var_0_57(arg_122_0, arg_122_1)
		local var_122_65 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.readyTip or {}

		if var_122_64 then
			var_122_15 = var_122_64.x + var_122_64.w * 0.5 - var_122_31 * 0.5 + (tonumber(var_122_65.offsetX) or 0)
			var_122_26 = var_122_64.y - var_122_32 - (tonumber(var_122_65.gapY) or 8) + (tonumber(var_122_65.offsetY) or 0) + var_122_25
		end
	end

	if var_122_15 + var_122_31 > var_122_1 - 8 then
		var_122_15 = var_122_1 - var_122_31 - 8
	end

	if var_122_15 < 8 then
		var_122_15 = 8
	end

	if var_122_26 + var_122_32 > var_122_2 - 8 then
		var_122_26 = var_122_2 - var_122_32 - 8
	end

	if var_122_26 < 8 then
		var_122_26 = 8
	end

	var_0_73(arg_122_0, var_122_0, var_122_10, var_122_15, var_122_26, var_122_27, var_122_4)

	if var_0_3.step == STEP_ARCHER_WIN or var_0_3.step == STEP_WARRIOR_WIN or var_0_3.step == STEP_WAVE_REWARD or var_0_3.step == STEP_NUDGE_MISS or var_0_3.step == STEP_NUDGE_WIN or var_0_3.step == STEP_CORE_COUNTER or var_0_3.step == STEP_POST_CORE_ARCHER_WIN or var_0_3.step == STEP_SLOT_BROKEN or var_0_3.step == STEP_MAX_UNIT_NOTICE or var_0_3.step == STEP_CLASS_PROMOTION or var_0_3.step == STEP_PROMOTED_ARCHER or var_0_3.step == STEP_SHOP_CURRENCY or var_0_3.step == STEP_SHOP_ITEM_BOUGHT or var_0_3.step == STEP_WAVE_TYPES or var_0_3.step == STEP_TUTORIAL_COMPLETE then
		local var_122_66 = var_0_3.stepElapsed or 0
		local var_122_67 = math.max(0, math.min(1, (var_122_66 - var_0_15) / 0.35))

		if var_122_67 > 0 then
			local var_122_68 = arg_122_0 and arg_122_0.tutorial and arg_122_0.tutorial.continuePrompt or {}
			local var_122_69 = var_0_3.step == STEP_TUTORIAL_COMPLETE and var_0_2("finish_prompt") or var_0_2("continue_prompt")

			love.graphics.setFont(var_122_0)
			love.graphics.setColor(0.8627450980392157, 0.8274509803921568, 0.7607843137254902, var_122_67 * var_122_4)

			local var_122_70 = var_122_15 + var_122_31 * 0.5 - var_122_0:getWidth(var_122_69) * 0.5 + (tonumber(var_122_68.offsetX) or 0)
			local var_122_71

			if var_0_3.step == STEP_WAVE_REWARD or var_0_3.step == STEP_CORE_COUNTER or var_0_3.step == STEP_MAX_UNIT_NOTICE or var_0_3.step == STEP_CLASS_PROMOTION or var_0_3.step == STEP_SHOP_CURRENCY or var_0_3.step == STEP_SHOP_ITEM_BOUGHT or var_0_3.step == STEP_WAVE_TYPES or var_0_3.step == STEP_TUTORIAL_COMPLETE then
				var_122_71 = var_122_26 + var_122_32 + (tonumber(var_122_68.gapY) or 7) + (tonumber(var_122_68.offsetY) or 0)
			else
				var_122_71 = var_122_26 - var_122_0:getHeight() - (tonumber(var_122_68.gapY) or 7) + (tonumber(var_122_68.offsetY) or 0)
			end

			if var_0_3.step == STEP_WAVE_TYPES or var_0_3.step == STEP_TUTORIAL_COMPLETE then
				local var_122_72 = 7
				local var_122_73 = 4
				local var_122_74 = var_122_0:getWidth(var_122_69)
				local var_122_75 = var_122_0:getHeight()
				local var_122_76 = math.floor(var_122_70 - var_122_72 + 0.5)
				local var_122_77 = math.floor(var_122_71 - var_122_73 + 0.5)
				local var_122_78 = math.floor(var_122_74 + var_122_72 * 2 + 0.5)
				local var_122_79 = math.floor(var_122_75 + var_122_73 * 2 + 0.5)

				var_0_45(arg_122_0, var_122_76, var_122_77, var_122_78, var_122_79, var_122_67 * var_122_4, {
					0.10980392156862745,
					0.10588235294117647,
					0.12156862745098039,
					0.78
				})
				love.graphics.setColor(0.8627450980392157, 0.8274509803921568, 0.7607843137254902, var_122_67 * var_122_4)
			end

			local var_122_80 = (var_0_3.step == STEP_WAVE_TYPES or var_0_3.step == STEP_TUTORIAL_COMPLETE) and -1 or 0

			love.graphics.print(var_122_69, math.floor(var_122_70 + 0.5), math.floor(var_122_71 + var_122_80 + 0.5))
		end
	end
end

function var_0_0.draw(arg_137_0, arg_137_1)
	if arg_137_0 then
		arg_137_0._tutorialShopIntroFocus = var_0_3.running == true and var_0_3.step == STEP_SHOP_INTRO or nil
		arg_137_0._tutorialBattleReturnFocus = var_0_3.running == true and var_0_3.step == STEP_SHOP_RETURN or nil
	end

	if var_0_3.running and var_0_3.step ~= STEP_BATTLE_FREE and var_0_3.step >= STEP_SLOT and var_0_3.step <= STEP_TUTORIAL_COMPLETE then
		var_0_75(arg_137_0, arg_137_1)

		return
	end

	if not var_0_3.active then
		return
	end

	var_0_21()

	local var_137_0 = arg_137_0 and arg_137_0.classCard and arg_137_0.classCard.font or arg_137_0 and arg_137_0.fontClassCard or var_0_4 or love.graphics.getFont()

	if var_137_0 and var_137_0.setFilter then
		var_137_0:setFilter("nearest", "nearest")
	end

	local var_137_1 = var_0_32(arg_137_0)

	var_0_3.buttons = var_137_1

	local var_137_2 = var_137_1.panel
	local var_137_3 = var_0_41(var_0_3.t or 0)
	local var_137_4 = var_0_42(var_137_3)
	local var_137_5 = var_137_4
	local var_137_6 = var_0_43((var_137_3 - 0.18) / 0.82)
	local var_137_7 = math.floor((1 - var_137_4) * 10 + 0.5)
	local var_137_8 = math.sin(math.min(1, var_137_3) * math.pi) * 0.012
	local var_137_9 = 0.96 + 0.04 * var_137_4 + var_137_8
	local var_137_10 = var_137_2.x + var_137_2.w * 0.5
	local var_137_11 = var_137_2.y + var_137_2.h * 0.5
	local var_137_12 = arg_137_0 and arg_137_0.tutorial or {}
	local var_137_13 = var_137_10 + (tonumber(var_137_12.contentOffsetX) or 0)
	local var_137_14 = tonumber(var_137_12.contentOffsetY) or 25
	local var_137_15 = {
		body = {
			0.22745098039215686,
			0.19607843137254902,
			0.25098039215686274,
			var_137_6
		},
		brand = {
			0.4549019607843137,
			0.2627450980392157,
			0.4627450980392157,
			var_137_6
		},
		keyword = {
			0.4,
			0.3254901960784314,
			0.5725490196078431,
			var_137_6
		},
		prompt = {
			0.21568627450980393,
			0.4627450980392157,
			0.27450980392156865,
			var_137_6
		},
		buttonText = {
			0.18823529411764706,
			0.1607843137254902,
			0.21176470588235294,
			var_137_6
		},
		buttonOutline = {
			0.43529411764705883,
			0.26666666666666666,
			0.2980392156862745,
			var_137_6
		},
		startButtonOutline = {
			0.28627450980392155,
			0.49411764705882355,
			0.3058823529411765,
			var_137_6
		}
	}

	love.graphics.setColor(0, 0, 0, 0.65 * var_137_5)
	love.graphics.rectangle("fill", 0, 0, var_137_1.W, var_137_1.H)
	love.graphics.push()
	love.graphics.translate(var_137_10, var_137_11 + var_137_7)
	love.graphics.scale(var_137_9, var_137_9)
	love.graphics.translate(-var_137_10, -var_137_11)

	local var_137_16 = var_0_22()

	if var_137_16 then
		love.graphics.setColor(1, 1, 1, var_137_5)
		love.graphics.draw(var_137_16, var_137_2.x, var_137_2.y, 0, var_137_2.scale, var_137_2.scale)
	end

	local var_137_17 = var_0_23()

	if var_137_17 then
		local var_137_18 = var_137_12.titleImage or {}
		local var_137_19 = tonumber(var_137_18.scale) or 1
		local var_137_20 = math.floor(var_137_13 + (tonumber(var_137_18.offsetX) or 0) - var_137_17:getWidth() * var_137_19 * 0.5 + 0.5)
		local var_137_21 = math.floor(var_137_2.y + (tonumber(var_137_18.offsetY) or 10) + 0.5)

		love.graphics.setColor(1, 1, 1, var_137_6)
		love.graphics.draw(var_137_17, var_137_20, var_137_21, 0, var_137_19, var_137_19)
	end

	local var_137_22 = var_137_15.body
	local var_137_23 = var_137_12.bodyLines or {}
	local var_137_24 = _G.currentGameLang or "ko"
	local var_137_25 = var_137_24 == "ja" and "、" or ","
	local var_137_26 = var_137_24 == "ja" and "。" or "."
	local var_137_27 = {
		{
			defaultY = 37,
			parts = {
				{
					text = "SlotBound",
					color = var_137_15.brand
				},
				{
					text = var_0_2("welcome_suffix")
				}
			}
		},
		{
			defaultY = 61,
			parts = {
				{
					text = var_0_2("welcome_body_1_prefix")
				},
				{
					text = var_0_2("welcome_body_1_keyword"),
					color = var_137_15.keyword
				},
				{
					text = var_137_25
				}
			}
		},
		{
			defaultY = 77,
			parts = {
				{
					text = var_0_2("welcome_body_2_prefix")
				},
				{
					text = var_0_2("welcome_body_2_keyword"),
					color = var_137_15.keyword
				},
				{
					text = var_137_26
				}
			}
		}
	}

	for iter_137_0, iter_137_1 in ipairs(var_137_27) do
		local var_137_28 = var_137_23[iter_137_0] or {}
		local var_137_29 = var_137_13 + (tonumber(var_137_28.offsetX) or 0)
		local var_137_30 = var_137_2.y + var_137_14 + (tonumber(var_137_28.offsetY) or iter_137_1.defaultY)

		if iter_137_1.parts then
			var_0_44(var_137_0, iter_137_1.parts, var_137_29, var_137_30, var_137_22)
		else
			var_0_40(var_137_0, iter_137_1.text, var_137_29, var_137_30, var_137_22)
		end
	end

	local var_137_31 = var_137_12.startPrompt or {}

	var_0_40(var_137_0, var_0_2("welcome_question"), var_137_13 + (tonumber(var_137_31.offsetX) or 0), var_137_2.y + var_137_14 + (tonumber(var_137_31.offsetY) or 121), var_137_15.prompt)

	local var_137_32 = var_137_0

	love.graphics.setFont(var_137_32)

	local var_137_33 = var_0_2("start")
	local var_137_34 = var_0_2("skip")
	local var_137_35 = var_0_27()

	if var_137_35 then
		local var_137_36 = arg_137_0 and arg_137_0.coreSelect and arg_137_0.coreSelect.buttons or {}
		local var_137_37 = var_137_12.welcomeSkip or {}
		local var_137_38 = var_0_19()
		local var_137_39 = tonumber(var_137_37.lockedAlpha) or 0.35
		local var_137_40 = var_137_38 and 1 or tonumber(var_137_37.lockedLabelAlpha) or 0.85
		local var_137_41 = var_137_38 and 1 or var_137_39
		local var_137_42 = var_137_36.hover and var_137_36.hover.liftPx or 4
		local var_137_43 = var_137_1.start.y - math.floor(var_137_42 * (var_0_3.hoverStart or 0) + 0.5)
		local var_137_44 = var_137_1.skip.y - math.floor(var_137_42 * (var_0_3.hoverSkip or 0) + 0.5)

		love.graphics.setColor(1, 1, 1, var_137_6)
		love.graphics.draw(var_137_35, var_137_1.start.x, var_137_43, 0, var_137_1.buttonScale, var_137_1.buttonScale)
		love.graphics.setColor(1, 1, 1, var_137_6 * var_137_41)
		love.graphics.draw(var_137_35, var_137_1.skip.x, var_137_44, 0, var_137_1.buttonScale, var_137_1.buttonScale)

		local var_137_45 = var_0_28()

		if var_137_45 then
			var_137_45:send("texelStep", {
				1 / (var_137_35:getWidth() * var_137_1.buttonScale),
				1 / (var_137_35:getHeight() * var_137_1.buttonScale)
			})
			var_137_45:send("outlineColor", var_137_15.buttonOutline)
			var_137_45:send("threshold", 0.01)
			var_137_45:send("radiusPx", var_137_36.hover and var_137_36.hover.outlineRadiusPx or 2)

			if (var_0_3.hoverStart or 0) > 0.01 then
				var_137_45:send("outlineColor", var_137_15.startButtonOutline)
				love.graphics.setShader(var_137_45)
				love.graphics.draw(var_137_35, var_137_1.start.x, var_137_43, 0, var_137_1.buttonScale, var_137_1.buttonScale)
				love.graphics.setShader()
			end

			if var_137_38 and (var_0_3.hoverSkip or 0) > 0.01 then
				var_137_45:send("outlineColor", var_137_15.buttonOutline)
				love.graphics.setShader(var_137_45)
				love.graphics.draw(var_137_35, var_137_1.skip.x, var_137_44, 0, var_137_1.buttonScale, var_137_1.buttonScale)
				love.graphics.setShader()
			end
		end

		local var_137_46 = var_137_36.labelScale or 1
		local var_137_47 = var_137_36.labelYOffsetPx or -2

		local function var_137_48(arg_138_0, arg_138_1, arg_138_2, arg_138_3)
			local var_138_0 = var_137_32:getWidth(arg_138_0) * var_137_46
			local var_138_1 = var_137_32:getHeight() * var_137_46
			local var_138_2 = math.floor(arg_138_1.x + (arg_138_1.w - var_138_0) * 0.5 + 0.5)
			local var_138_3 = math.floor(arg_138_2 + (arg_138_1.h - var_138_1) * 0.5 + var_137_47 + 0.5)

			love.graphics.setColor(var_137_15.buttonText[1], var_137_15.buttonText[2], var_137_15.buttonText[3], (var_137_15.buttonText[4] or 1) * (arg_138_3 or 1))
			love.graphics.print(arg_138_0, var_138_2, var_138_3, 0, var_137_46, var_137_46)
		end

		var_137_48(var_137_33, var_137_1.start, var_137_43)
		var_137_48(var_137_34, var_137_1.skip, var_137_44, var_137_40)

		if not var_137_38 then
			local var_137_49 = math.max(1, math.ceil(var_0_16 - (var_0_3.skipLockElapsed or 0)))
			local var_137_50 = string.format(var_0_2("skip_countdown_fmt"), var_137_49)
			local var_137_51 = arg_137_0 and arg_137_0.restartConfirm and arg_137_0.restartConfirm.font or arg_137_0 and arg_137_0.coreMessage and arg_137_0.coreMessage.font or arg_137_0 and arg_137_0.font or var_0_4 or var_137_32

			if var_137_51 and var_137_51.setFilter then
				var_137_51:setFilter("nearest", "nearest")
			end

			love.graphics.setFont(var_137_51)

			local var_137_52 = tonumber(var_137_37.counterScale) or 1
			local var_137_53 = tonumber(var_137_37.counterGapY) or 2
			local var_137_54 = var_137_51:getWidth(var_137_50) * var_137_52
			local var_137_55 = math.floor(var_137_1.skip.x + (var_137_1.skip.w - var_137_54) * 0.5 + 0.5)
			local var_137_56 = math.floor(var_137_44 + var_137_1.skip.h + var_137_53 + 0.5)
			local var_137_57 = var_137_37.counterColor or {
				0.9254901960784314,
				0.8980392156862745,
				0.8549019607843137,
				1
			}

			love.graphics.setColor(var_137_57[1] or 1, var_137_57[2] or 1, var_137_57[3] or 1, var_137_6 * (tonumber(var_137_37.counterAlpha) or 1))
			love.graphics.print(var_137_50, var_137_55, var_137_56, 0, var_137_52, var_137_52)
			love.graphics.setFont(var_137_32)
		end
	end

	love.graphics.pop()
	love.graphics.setColor(1, 1, 1, 1)
end

return var_0_0
