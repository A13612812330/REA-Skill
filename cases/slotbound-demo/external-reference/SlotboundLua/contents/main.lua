local var_0_0 = "6aa514c9918f4ea9c8d673899272347f97ab95625133eb595fffee5490f36d46"

local function var_0_1(arg_1_0)
	local var_1_0 = love and love.data

	if not var_1_0 or not var_1_0.hash or not var_1_0.encode then
		error("SlotBound release integrity support is unavailable.", 0)
	end

	local var_1_1 = var_1_0.hash("sha256", arg_1_0)

	return var_1_0.encode("string", "hex", var_1_1):lower()
end

if type(var_0_0) == "string" then
	local var_0_2 = "src/release_integrity.lua"
	local var_0_3 = love.filesystem.read(var_0_2)

	if type(var_0_3) ~= "string" or var_0_1(var_0_3) ~= var_0_0 then
		error("SlotBound could not start because its game files were modified or corrupted. " .. "Please reinstall an official copy. (integrity bootstrap mismatch)", 0)
	end
end

require("src.release_integrity").verify()

local var_0_4 = require("src.platform_window")

function getBorderlessDesktopArea()
	local var_2_0 = love and love.system and love.system.getOS and love.system.getOS() or jit and jit.os or nil
	local var_2_1, var_2_2 = pcall(require, "ffi")

	if var_2_1 and var_2_2 then
		pcall(function()
			var_2_2.cdef("        int GetSystemMetrics(int nIndex);\n      ")
		end)

		local var_2_3, var_2_4 = pcall(var_2_2.load, "user32")

		if var_2_3 and var_2_4 then
			local var_2_5 = tonumber(var_2_4.GetSystemMetrics(0))
			local var_2_6 = tonumber(var_2_4.GetSystemMetrics(1))

			if var_2_5 and var_2_6 and var_2_5 > 0 and var_2_6 > 0 then
				return var_0_4.compositorSafeDesktopArea(0, 0, var_2_5, var_2_6, var_2_0)
			end
		end
	end

	if love.window and love.window.getDesktopDimensions then
		local var_2_7, var_2_8, var_2_9 = pcall(love.window.getDesktopDimensions)

		if var_2_7 and var_2_8 and var_2_9 and var_2_8 > 0 and var_2_9 > 0 then
			return var_0_4.compositorSafeDesktopArea(0, 0, var_2_8, var_2_9, var_2_0)
		end
	end

	return var_0_4.compositorSafeDesktopArea(0, 0, 1280, 720, var_2_0)
end

WindowsBorderlessCaptureState = WindowsBorderlessCaptureState or {
	retryFrames = 0,
	active = false
}

function setWindowsBorderlessCaptureStyle(arg_4_0, arg_4_1, arg_4_2, arg_4_3, arg_4_4)
	local var_4_0 = WindowsBorderlessCaptureState

	var_4_0.active = false
	var_4_0.retryFrames = 0

	return true
end

function ensureWindowsBorderlessCaptureStyle(arg_5_0)
	WindowsBorderlessCaptureState.active = false
	WindowsBorderlessCaptureState.retryFrames = 0

	return true
end

local var_0_5 = require("src.data.constants")
local var_0_6 = require("src.data.assets")
local var_0_7 = require("src.data.language")
local var_0_8 = require("src.ui.config")

if uiAssets then
	local var_0_9 = uiAssets.pauseBackground
end

local var_0_10 = require("src.ui.layout")
local var_0_11 = require("src.ui.render")

Render2 = Render2 or require("src.ui.render2")
AlphaRayGlow = AlphaRayGlow or require("src.game.alpha_ray_glow")
Tutorial = Tutorial or require("src.ui.tutorial")
CoreSelectFlow = CoreSelectFlow or require("src.ui.core_select_flow")
BattleStartGuard = BattleStartGuard or require("src.game.battle_start_guard")
PauseMotion = PauseMotion or require("src.ui.pause_motion")
RuntimePerformance = RuntimePerformance or require("src.runtime_performance")

local var_0_12 = require("src.ui.tooltip")
local var_0_13 = require("src.game.slot")
local var_0_14 = require("src.game.battlefield")
local var_0_15 = require("src.game.postprocess_v4")
local var_0_16 = require("src.ui.mainmenu")
local var_0_17 = require("src.ui.upgrade")
local var_0_18 = require("src.game.quest")
local var_0_19 = require("src.game.hidden_luck")
local var_0_20

_G.__hiddenLuckDebug = var_0_19.getState()

local var_0_21 = (function()
	if not love or not love.filesystem or not love.filesystem.getInfo then
		return false
	end

	return love.filesystem.getInfo("release.flag", "file") ~= nil or love.filesystem.getInfo("build_release.flag", "file") ~= nil
end)()
local var_0_22

local function var_0_23(arg_7_0)
	local var_7_0 = tostring(arg_7_0 or ""):lower():gsub("_", "-")

	if var_7_0:match("^ko") then
		return "ko"
	end

	if var_7_0:match("^en") then
		return "en"
	end

	return "en"
end

local function var_0_24()
	local var_8_0, var_8_1 = pcall(require, "ffi")

	if not var_8_0 or not var_8_1 then
		return nil
	end

	if not pcall(function()
		var_8_1.cdef("      typedef unsigned short WCHAR;\n      int GetUserDefaultLocaleName(WCHAR* lpLocaleName, int cchLocaleName);\n    ")
	end) then
		return nil
	end

	local var_8_2, var_8_3 = pcall(var_8_1.load, "kernel32")

	if not var_8_2 or not var_8_3 then
		return nil
	end

	local var_8_4 = var_8_1.new("WCHAR[85]")
	local var_8_5, var_8_6 = pcall(var_8_3.GetUserDefaultLocaleName, var_8_4, 85)

	if var_8_5 and tonumber(var_8_6 or 0) > 0 then
		local var_8_7 = {}

		for iter_8_0 = 0, math.min(84, tonumber(var_8_6 or 0) - 1) do
			local var_8_8 = tonumber(var_8_4[iter_8_0]) or 0

			if var_8_8 == 0 then
				break
			end

			if var_8_8 < 128 then
				var_8_7[#var_8_7 + 1] = string.char(var_8_8)
			end
		end

		return table.concat(var_8_7)
	end

	return nil
end

local function var_0_25(arg_10_0)
	if type(arg_10_0) == "table" then
		for iter_10_0, iter_10_1 in ipairs(arg_10_0) do
			local var_10_0 = tostring(iter_10_1 or ""):match("^%-%-system%-language=(.+)$")

			if var_10_0 and var_10_0 ~= "" then
				return var_0_23(var_10_0)
			end
		end
	end

	if os and os.getenv then
		local var_10_1 = {
			os.getenv("LANGUAGE"),
			os.getenv("LC_ALL"),
			os.getenv("LC_MESSAGES"),
			os.getenv("LANG")
		}

		for iter_10_2, iter_10_3 in ipairs(var_10_1) do
			if iter_10_3 and iter_10_3 ~= "" then
				return var_0_23(iter_10_3)
			end
		end
	end

	return var_0_23(var_0_24())
end

local var_0_26 = false

local function var_0_27(arg_11_0)
	if not var_0_26 then
		return
	end

	local var_11_0 = love and love.system and love.system.getOS and love.system.getOS() or nil

	if var_11_0 == "Web" or var_11_0 == "HTML5" or jit and jit.os == "Emscripten" then
		print("[web boot] " .. tostring(arg_11_0 or ""))
	end
end

ui = nil
canvas = nil
masterCanvas = nil
masterDepthStencil = nil
screenScale = 1
screenScaleX, screenScaleY = 1, 1
screenOffsetX, screenOffsetY = 0, 0

local var_0_28 = 2

local function var_0_29(arg_12_0)
	if not love or not love.graphics then
		return
	end

	if arg_12_0 then
		love.graphics.origin()
	end

	love.graphics.setShader()

	if love.graphics.setStencilTest then
		love.graphics.setStencilTest()
	end

	if love.graphics.setScissor then
		love.graphics.setScissor()
	end

	if love.graphics.setColorMask then
		love.graphics.setColorMask(true, true, true, true)
	end

	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_30()
	love.graphics.setCanvas()
	var_0_29(true)
end

local var_0_31

local function var_0_32()
	if var_0_31 then
		return var_0_31
	end

	if not love or not love.graphics or not love.graphics.newShader then
		return nil
	end

	local var_14_0, var_14_1 = pcall(love.graphics.newShader, "    extern vec4 tintColor;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float a = Texel(tex, tc).a;\n      return vec4(tintColor.rgb, tintColor.a * a);\n    }\n  ")

	if var_14_0 and var_14_1 then
		var_0_31 = var_14_1
	end

	return var_0_31
end

local function var_0_33(arg_15_0)
	if not ui or not ui.virtual then
		return
	end

	local var_15_0 = math.max(0, tonumber(arg_15_0) or 0)
	local var_15_1 = masterCanvas and masterCanvas:getWidth() or love.graphics.getWidth()
	local var_15_2 = masterCanvas and masterCanvas:getHeight() or love.graphics.getHeight()
	local var_15_3 = screenScaleX or screenScale or 1
	local var_15_4 = screenScaleY or screenScale or 1
	local var_15_5 = ui.virtual.W
	local var_15_6 = ui.virtual.H
	local var_15_7 = screenOffsetX
	local var_15_8 = screenOffsetY

	love.graphics.setShader()
	love.graphics.setColor(0, 0, 0, 1)

	local var_15_9 = var_15_7 - var_15_0
	local var_15_10 = var_15_8 - var_15_0
	local var_15_11 = var_15_7 + var_15_5 * var_15_3 + var_15_0
	local var_15_12 = var_15_8 + var_15_6 * var_15_4 + var_15_0
	local var_15_13 = math.max(0, math.floor(var_15_10 + 0.0001))

	if var_15_13 > 0 then
		love.graphics.rectangle("fill", 0, 0, var_15_1, var_15_13)
	end

	local var_15_14 = math.min(var_15_2, math.ceil(var_15_12 - 0.0001))

	if var_15_14 < var_15_2 then
		love.graphics.rectangle("fill", 0, var_15_14, var_15_1, var_15_2 - var_15_14)
	end

	local var_15_15 = math.max(0, math.floor(var_15_9 + 0.0001))

	if var_15_15 > 0 then
		love.graphics.rectangle("fill", 0, 0, var_15_15, var_15_2)
	end

	local var_15_16 = math.min(var_15_1, math.ceil(var_15_11 - 0.0001))

	if var_15_16 < var_15_1 then
		love.graphics.rectangle("fill", var_15_16, 0, var_15_1 - var_15_16, var_15_2)
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function __slotDrawCreditsScroll(arg_16_0, arg_16_1, arg_16_2, arg_16_3, arg_16_4, arg_16_5)
	local var_16_0 = arg_16_0 and arg_16_0.pauseOverlay and arg_16_0.pauseOverlay.creditsText

	if not var_16_0 or var_16_0.enabled == false or not arg_16_1 then
		return
	end

	local var_16_1 = var_16_0.scrollArea or {}
	local var_16_2 = var_16_0.scaleWithBackground == false and 1 or arg_16_4 or 1
	local var_16_3 = var_16_0.textScaleWithBackground == false and 1 or arg_16_4 or 1
	local var_16_4 = math.floor((arg_16_2 or 0) + (var_16_1.x or 0) * var_16_2 + (var_16_0.offsetX or 0) + 0.5)
	local var_16_5 = math.floor((arg_16_3 or 0) + (var_16_1.y or 0) * var_16_2 + (var_16_0.offsetY or 0) + 0.5)
	local var_16_6 = math.max(1, math.floor((var_16_1.w or arg_16_1:getWidth()) * var_16_2 + 0.5))
	local var_16_7 = math.max(1, math.floor((var_16_1.h or arg_16_1:getHeight()) * var_16_2 + 0.5))
	local var_16_8 = _G.currentGameLang or arg_16_0 and arg_16_0.menuSettings and arg_16_0.menuSettings.language or "ko"
	local var_16_9 = var_16_8 == "en"
	local var_16_10 = var_16_8 == "ja"
	local var_16_11 = var_16_8 == "zh"
	local var_16_12 = var_16_11 and (var_16_0.titleZh or var_16_0.titleEn or "CREDITS") or var_16_10 and (var_16_0.titleJa or "クレジット") or var_16_9 and (var_16_0.titleEn or "CREDITS") or var_16_0.titleKo or "크레딧"
	local var_16_13 = var_16_11 and (var_16_0.bodyZh or var_16_0.bodyEn or {}) or var_16_10 and (var_16_0.bodyJa or {}) or var_16_9 and (var_16_0.bodyEn or {}) or var_16_0.bodyKo or {}
	local var_16_14 = math.max(0, math.min(1, tonumber(arg_16_5) or 1))

	if var_16_14 <= 0 then
		return
	end

	local var_16_15 = love.graphics.getFont()
	local var_16_16 = var_16_0.titleFont or arg_16_0 and (arg_16_0.fontPauseTitle or arg_16_0.fontTitle or arg_16_0.font) or var_16_15
	local var_16_17 = var_16_0.bodyFont or arg_16_0 and (arg_16_0.fontPauseTitle or arg_16_0.fontTitle or arg_16_0.font) or var_16_15
	local var_16_18 = (var_16_0.titleScale or 1) * var_16_3
	local var_16_19 = (var_16_0.bodyScale or 1) * var_16_3
	local var_16_20 = (var_16_17 and var_16_17:getHeight() or 12) * var_16_19
	local var_16_21 = (var_16_0.lineGapPx or 2) * var_16_3
	local var_16_22 = (var_16_0.blankLineGapPx or 10) * var_16_3
	local var_16_23 = var_16_0.title or {}
	local var_16_24 = math.floor((arg_16_2 or 0) + (var_16_23.x or var_16_1.x or 0) * var_16_2 + (var_16_0.titleOffsetX or 0) * var_16_3 + 0.5)
	local var_16_25 = math.floor((arg_16_3 or 0) + (var_16_23.y or var_16_1.y or 0) * var_16_2 + (var_16_0.titleOffsetY or 0) * var_16_3 + 0.5)
	local var_16_26 = math.max(1, math.floor((var_16_23.w or var_16_1.w or arg_16_1:getWidth()) * var_16_2 + 0.5))
	local var_16_27 = var_16_5
	local var_16_28 = var_16_7
	local var_16_29 = 0

	for iter_16_0, iter_16_1 in ipairs(var_16_13) do
		if tostring(iter_16_1 or "") == "" then
			var_16_29 = var_16_29 + var_16_22
		else
			var_16_29 = var_16_29 + var_16_20 + var_16_21
		end
	end

	local var_16_30 = (var_16_0.resetGapPx or 20) * var_16_3
	local var_16_31 = math.max(1, var_16_29 + var_16_30)
	local var_16_32 = love.timer and love.timer.getTime and love.timer.getTime() or 0

	arg_16_0._creditsScrollStartTime = arg_16_0._creditsScrollStartTime or var_16_32

	local var_16_33 = var_16_27 - ((var_16_32 - arg_16_0._creditsScrollStartTime) * (var_16_0.speedPxPerSec or 12) + (var_16_0.startOffsetPx or 0)) % var_16_31

	local function var_16_34(arg_17_0, arg_17_1, arg_17_2, arg_17_3, arg_17_4, arg_17_5, arg_17_6, arg_17_7)
		arg_17_1 = tostring(arg_17_1 or "")

		if arg_17_0 then
			love.graphics.setFont(arg_17_0)
		end

		local var_17_0 = arg_17_0 and arg_17_0:getWidth(arg_17_1) or 0
		local var_17_1 = arg_17_2 + (arg_17_7 or var_16_0.textOffsetX or 0)

		if var_16_0.align ~= "left" then
			var_17_1 = math.floor(arg_17_2 + (arg_17_3 - var_17_0 * arg_17_5) * 0.5 + (arg_17_7 or var_16_0.textOffsetX or 0) + 0.5)
		end

		local var_17_2 = arg_17_6 or {
			1,
			1,
			1,
			1
		}
		local var_17_3 = love.graphics.getShader and love.graphics.getShader() or nil
		local var_17_4 = var_0_32()

		if var_17_4 and var_17_4.send then
			var_17_4:send("tintColor", {
				var_17_2[1] or 1,
				var_17_2[2] or 1,
				var_17_2[3] or 1,
				(var_17_2[4] or 1) * var_16_14
			})
			love.graphics.setShader(var_17_4)
			love.graphics.setColor(1, 1, 1, 1)
		else
			love.graphics.setColor(var_17_2[1] or 1, var_17_2[2] or 1, var_17_2[3] or 1, (var_17_2[4] or 1) * var_16_14)
		end

		love.graphics.print(arg_17_1, var_17_1, math.floor(arg_17_4 + 0.5), 0, arg_17_5, arg_17_5)

		if var_17_4 then
			love.graphics.setShader(var_17_3)
		end
	end

	local function var_16_35(arg_18_0, arg_18_1, arg_18_2, arg_18_3, arg_18_4)
		var_16_34(arg_18_0, arg_18_1, var_16_4, var_16_6, arg_18_2, arg_18_3, arg_18_4, 0)
	end

	local function var_16_36(arg_19_0, arg_19_1)
		local var_19_0 = var_16_0.palette or {}
		local var_19_1 = tostring(arg_19_0 or "")

		if arg_19_1 == 1 or arg_19_1 == 3 or arg_19_1 == 6 or arg_19_1 == 9 then
			return var_19_0.heading or var_19_0.label or var_16_0.bodyColor
		end

		if arg_19_1 == 4 or arg_19_1 == 7 or arg_19_1 == 10 then
			return var_19_0.name or var_19_0.credit or var_16_0.bodyColor
		end

		if var_16_9 and (arg_19_1 == 12 or arg_19_1 == 14) or var_16_10 and (arg_19_1 == 12 or arg_19_1 == 13 or arg_19_1 == 15) or not var_16_9 and not var_16_10 and (arg_19_1 == 12 or arg_19_1 == 13 or arg_19_1 == 15) then
			return var_19_0.footer or var_19_0.thanks or var_16_0.bodyColor
		end

		if arg_19_1 == 1 then
			return var_19_0.brand or var_16_0.bodyColor
		end

		if arg_19_1 == 3 or arg_19_1 == 9 then
			return var_19_0.label or var_16_0.bodyColor
		end

		if arg_19_1 == 6 then
			return var_19_0.music or var_19_0.label or var_16_0.bodyColor
		end

		if arg_19_1 == 4 or arg_19_1 == 7 or arg_19_1 == 10 then
			return var_19_0.credit or var_16_0.bodyColor
		end

		if var_16_9 and arg_19_1 == 12 or not var_16_9 and (arg_19_1 == 12 or arg_19_1 == 13) then
			return var_19_0.thanks or var_16_0.bodyColor
		end

		if var_16_9 and arg_19_1 == 14 or not var_16_9 and arg_19_1 == 15 then
			return var_19_0.copyright or var_16_0.bodyColor
		end

		if var_19_1 == "Slotbound" then
			return var_19_0.brand or var_16_0.bodyColor
		end

		if var_19_1 == "제작" or var_19_1 == "Created by" or var_19_1 == "制作" or var_19_1 == "Special Thanks" then
			return var_19_0.label or var_16_0.bodyColor
		end

		if var_19_1 == "스테이지 음악" or var_19_1 == "Stage Music" or var_19_1 == "ステージ音楽" then
			return var_19_0.music or var_19_0.label or var_16_0.bodyColor
		end

		if var_19_1 == "김민 / Optima Arch" or var_19_1 == "Min Kim / Optima Arch" or var_19_1 == "류형준" or var_19_1 == "Hyeongjun Lyu" or var_19_1 == "ミン・キム / Optima Arch" or var_19_1 == "リュ・ヒョンジュン" or var_19_1 == "Tsiya" then
			return var_19_0.credit or var_16_0.bodyColor
		end

		if var_19_1 == "플레이해주셔서" or var_19_1 == "감사합니다." or var_19_1 == "플레이해주셔서 감사합니다." or var_19_1 == "Thank you for playing." or var_19_1 == "遊んでいただき" or var_19_1 == "ありがとうございます。" or var_19_1 == "遊んでいただきありがとうございます。" then
			return var_19_0.thanks or var_16_0.bodyColor
		end

		if var_19_1:sub(1, 2) == "© " then
			return var_19_0.copyright or var_16_0.bodyColor
		end

		return var_16_0.bodyColor
	end

	local var_16_37 = arg_16_0 and arg_16_0.unitSpawnBannerState
	local var_16_38 = var_16_37 and var_16_37.active and var_16_37._renderRect or nil

	if var_16_38 then
		local var_16_39 = 2

		var_16_38 = {
			x = math.floor(var_16_38.x - var_16_39),
			y = math.floor(var_16_38.y - var_16_39),
			w = math.ceil(var_16_38.w + var_16_39 * 2),
			h = math.ceil(var_16_38.h + var_16_39 * 2)
		}
	end

	local var_16_40, var_16_41 = love.graphics.getStencilTest()

	if var_16_38 then
		local var_16_42 = arg_16_0 and arg_16_0.virtual and arg_16_0.virtual.W or love.graphics.getWidth()
		local var_16_43 = arg_16_0 and arg_16_0.virtual and arg_16_0.virtual.H or love.graphics.getHeight()

		love.graphics.stencil(function()
			love.graphics.rectangle("fill", 0, 0, var_16_42, var_16_43)
		end, "replace", 1)
		love.graphics.stencil(function()
			love.graphics.rectangle("fill", var_16_38.x, var_16_38.y, var_16_38.w, var_16_38.h)
		end, "replace", 0, true)
		love.graphics.setStencilTest("greater", 0)
	end

	var_16_34(var_16_16, var_16_12, var_16_24, var_16_26, var_16_25, var_16_18, var_16_0.titleColor, 0)

	if var_16_38 then
		love.graphics.setStencilTest(var_16_40, var_16_41)
	end

	local var_16_44 = false

	if var_16_0.clip ~= false or var_16_38 then
		love.graphics.stencil(function()
			if var_16_0.clip ~= false then
				love.graphics.rectangle("fill", var_16_4, var_16_27, var_16_6, var_16_28)
			else
				local var_22_0 = arg_16_0 and arg_16_0.virtual and arg_16_0.virtual.W or love.graphics.getWidth()
				local var_22_1 = arg_16_0 and arg_16_0.virtual and arg_16_0.virtual.H or love.graphics.getHeight()

				love.graphics.rectangle("fill", 0, 0, var_22_0, var_22_1)
			end
		end, "replace", 1)

		if var_16_38 then
			love.graphics.stencil(function()
				love.graphics.rectangle("fill", var_16_38.x, var_16_38.y, var_16_38.w, var_16_38.h)
			end, "replace", 0, true)
		end

		love.graphics.setStencilTest("greater", 0)

		var_16_44 = true
	end

	local function var_16_45(arg_24_0)
		local var_24_0 = arg_24_0

		for iter_24_0, iter_24_1 in ipairs(var_16_13) do
			if tostring(iter_24_1 or "") == "" then
				var_24_0 = var_24_0 + var_16_22
			else
				var_16_35(var_16_17, iter_24_1, var_24_0, var_16_19, var_16_36(iter_24_1, iter_24_0))

				var_24_0 = var_24_0 + var_16_20 + var_16_21
			end
		end
	end

	var_16_45(var_16_33)
	var_16_45(var_16_33 + var_16_29 + var_16_30)

	if var_16_44 then
		love.graphics.setStencilTest(var_16_40, var_16_41)
	end

	if arg_16_0._creditsTextEditor and arg_16_0._creditsTextEditor.active then
		local var_16_46 = {
			x = var_16_4,
			y = var_16_5,
			w = var_16_6,
			h = var_16_7
		}

		love.graphics.setColor(0.95, 0.9, 0.55, 0.18 * var_16_14)
		love.graphics.rectangle("fill", var_16_46.x, var_16_46.y, var_16_46.w, var_16_46.h)
		love.graphics.setColor(0.98, 0.92, 0.58, 0.95 * var_16_14)
		love.graphics.rectangle("line", var_16_46.x + 0.5, var_16_46.y + 0.5, var_16_46.w - 1, var_16_46.h - 1)
		love.graphics.setColor(0.98, 0.92, 0.58, 1 * var_16_14)

		local var_16_47 = 5

		love.graphics.rectangle("fill", var_16_46.x + var_16_46.w - var_16_47, var_16_46.y + var_16_46.h - var_16_47, var_16_47, var_16_47)
		love.graphics.rectangle("fill", var_16_46.x + var_16_46.w - var_16_47, var_16_46.y + math.floor(var_16_46.h * 0.5) - 2, var_16_47, var_16_47)
		love.graphics.rectangle("fill", var_16_46.x + math.floor(var_16_46.w * 0.5) - 2, var_16_46.y + var_16_46.h - var_16_47, var_16_47, var_16_47)

		local var_16_48 = {
			h = 16,
			w = 64,
			x = var_16_46.x + math.floor((var_16_46.w - 64) * 0.5 + 0.5),
			y = var_16_46.y + var_16_46.h + 8
		}

		arg_16_0._creditsTextEditor.saveRect = var_16_48

		love.graphics.setColor(0.18, 0.15, 0.2, 0.88 * var_16_14)
		love.graphics.rectangle("fill", var_16_48.x, var_16_48.y, var_16_48.w, var_16_48.h)
		love.graphics.setColor(0.72, 0.66, 0.74, 0.95 * var_16_14)
		love.graphics.rectangle("line", var_16_48.x + 0.5, var_16_48.y + 0.5, var_16_48.w - 1, var_16_48.h - 1)
		love.graphics.setColor(0.88, 0.84, 0.76, 1 * var_16_14)

		local var_16_49 = var_0_7.getText("editor_save", var_16_8)
		local var_16_50 = love.graphics.getFont()
		local var_16_51 = var_16_50 and var_16_50:getWidth(var_16_49) or 0
		local var_16_52 = var_16_50 and var_16_50:getHeight() or 10

		love.graphics.print(var_16_49, math.floor(var_16_48.x + (var_16_48.w - var_16_51) * 0.5), math.floor(var_16_48.y + (var_16_48.h - var_16_52) * 0.5 - 1))

		if var_16_32 < (arg_16_0._creditsTextEditor.savedUntil or 0) then
			love.graphics.setColor(0.78, 0.95, 0.72, 1 * var_16_14)
			love.graphics.print(var_0_7.getText("editor_saved", var_16_8), var_16_48.x + var_16_48.w + 6, var_16_48.y + 1)
		end
	end

	love.graphics.setColor(1, 1, 1, 1)

	if var_16_15 then
		love.graphics.setFont(var_16_15)
	end
end

local function var_0_34(arg_25_0, arg_25_1, arg_25_2)
	return arg_25_2 and arg_25_0 and arg_25_1 and arg_25_0 >= arg_25_2.x and arg_25_0 <= arg_25_2.x + arg_25_2.w and arg_25_1 >= arg_25_2.y and arg_25_1 <= arg_25_2.y + arg_25_2.h
end

function __slotGetCreditsEditorRect(arg_26_0, arg_26_1, arg_26_2, arg_26_3, arg_26_4)
	local var_26_0 = arg_26_0 and arg_26_0.pauseOverlay and arg_26_0.pauseOverlay.creditsText

	if not var_26_0 or not arg_26_1 then
		return nil
	end

	local var_26_1 = var_26_0.scrollArea or {}
	local var_26_2 = var_26_0.scaleWithBackground == false and 1 or arg_26_4 or 1

	return {
		x = math.floor((arg_26_2 or 0) + (var_26_1.x or 0) * var_26_2 + (var_26_0.offsetX or 0) + 0.5),
		y = math.floor((arg_26_3 or 0) + (var_26_1.y or 0) * var_26_2 + (var_26_0.offsetY or 0) + 0.5),
		w = math.max(1, math.floor((var_26_1.w or arg_26_1:getWidth()) * var_26_2 + 0.5)),
		h = math.max(1, math.floor((var_26_1.h or arg_26_1:getHeight()) * var_26_2 + 0.5)),
		bgX = arg_26_2 or 0,
		bgY = arg_26_3 or 0,
		scale = var_26_2
	}
end

function __slotSaveCreditsTextTuning(arg_27_0)
	local var_27_0 = arg_27_0 and arg_27_0.pauseOverlay and arg_27_0.pauseOverlay.creditsText
	local var_27_1 = var_27_0 and var_27_0.scrollArea
	local var_27_2 = love and love.filesystem

	if not var_27_0 or not var_27_1 or not var_27_2 or not var_27_2.write then
		return false
	end

	local function var_27_3(arg_28_0)
		return tonumber(arg_28_0 or 0) or 0
	end

	local var_27_4 = string.format("return {\n  creditsText = {\n    bodyOnly = true,\n    scrollArea = { x = %.3f, y = %.3f, w = %.3f, h = %.3f },\n  },\n}\n", var_27_3(var_27_1.x), var_27_3(var_27_1.y), var_27_3(var_27_1.w), var_27_3(var_27_1.h))

	return var_27_2.write("credits_scroll_tuning.lua", var_27_4) == true
end

function __slotToggleCreditsTextEditor(arg_29_0)
	if not arg_29_0 then
		return false
	end

	arg_29_0._creditsTextEditor = arg_29_0._creditsTextEditor or {}

	local var_29_0 = arg_29_0._creditsTextEditor

	var_29_0.active = var_29_0.active ~= true
	var_29_0.drag = nil

	return true
end

function __slotHandleCreditsTextEditorMousePressed(arg_30_0, arg_30_1, arg_30_2, arg_30_3, arg_30_4, arg_30_5, arg_30_6, arg_30_7)
	if arg_30_7 ~= 1 then
		return false
	end

	local var_30_0 = arg_30_0 and arg_30_0._creditsTextEditor

	if not var_30_0 or not var_30_0.active then
		return false
	end

	if var_0_34(arg_30_5, arg_30_6, var_30_0.saveRect) then
		if __slotSaveCreditsTextTuning(arg_30_0) then
			var_30_0.savedUntil = (love.timer and love.timer.getTime and love.timer.getTime() or 0) + 1.2
		end

		return true
	end

	local var_30_1 = __slotGetCreditsEditorRect(arg_30_0, arg_30_1, arg_30_2, arg_30_3, arg_30_4)

	if not var_30_1 then
		return false
	end

	local var_30_2 = 8
	local var_30_3

	if arg_30_5 >= var_30_1.x + var_30_1.w - var_30_2 and arg_30_6 >= var_30_1.y + var_30_1.h - var_30_2 and arg_30_5 <= var_30_1.x + var_30_1.w + var_30_2 and arg_30_6 <= var_30_1.y + var_30_1.h + var_30_2 then
		var_30_3 = "resize-both"
	elseif arg_30_5 >= var_30_1.x + var_30_1.w - var_30_2 and arg_30_5 <= var_30_1.x + var_30_1.w + var_30_2 and arg_30_6 >= var_30_1.y and arg_30_6 <= var_30_1.y + var_30_1.h then
		var_30_3 = "resize-w"
	elseif arg_30_6 >= var_30_1.y + var_30_1.h - var_30_2 and arg_30_6 <= var_30_1.y + var_30_1.h + var_30_2 and arg_30_5 >= var_30_1.x and arg_30_5 <= var_30_1.x + var_30_1.w then
		var_30_3 = "resize-h"
	elseif var_0_34(arg_30_5, arg_30_6, var_30_1) then
		var_30_3 = "move"
	end

	if not var_30_3 then
		return false
	end

	local var_30_4 = arg_30_0.pauseOverlay and arg_30_0.pauseOverlay.creditsText
	local var_30_5 = var_30_4 and var_30_4.scrollArea

	if not var_30_5 then
		return false
	end

	var_30_0.drag = {
		mode = var_30_3,
		mx = arg_30_5,
		my = arg_30_6,
		x = var_30_5.x or 0,
		y = var_30_5.y or 0,
		w = var_30_5.w or var_30_1.w,
		h = var_30_5.h or var_30_1.h,
		scale = math.max(0.0001, var_30_1.scale or 1)
	}

	return true
end

function __slotHandleCreditsTextEditorMouseMoved(arg_31_0, arg_31_1, arg_31_2)
	local var_31_0 = arg_31_0 and arg_31_0._creditsTextEditor
	local var_31_1 = var_31_0 and var_31_0.drag
	local var_31_2 = arg_31_0 and arg_31_0.pauseOverlay and arg_31_0.pauseOverlay.creditsText
	local var_31_3 = var_31_2 and var_31_2.scrollArea

	if not var_31_1 or not var_31_3 then
		return false
	end

	local var_31_4 = (arg_31_1 - var_31_1.mx) / var_31_1.scale
	local var_31_5 = (arg_31_2 - var_31_1.my) / var_31_1.scale

	if var_31_1.mode == "move" then
		var_31_3.x = math.floor(var_31_1.x + var_31_4 + 0.5)
		var_31_3.y = math.floor(var_31_1.y + var_31_5 + 0.5)
	elseif var_31_1.mode == "resize-w" then
		var_31_3.w = math.max(24, math.floor(var_31_1.w + var_31_4 + 0.5))
	elseif var_31_1.mode == "resize-h" then
		var_31_3.h = math.max(24, math.floor(var_31_1.h + var_31_5 + 0.5))
	elseif var_31_1.mode == "resize-both" then
		var_31_3.w = math.max(24, math.floor(var_31_1.w + var_31_4 + 0.5))
		var_31_3.h = math.max(24, math.floor(var_31_1.h + var_31_5 + 0.5))
	end

	return true
end

function __slotHandleCreditsTextEditorMouseReleased(arg_32_0)
	local var_32_0 = arg_32_0 and arg_32_0._creditsTextEditor

	if not var_32_0 or not var_32_0.drag then
		return false
	end

	var_32_0.drag = nil

	return true
end

function __slotGetCurrentCreditsBackgroundRect(arg_33_0, arg_33_1)
	local var_33_0 = arg_33_0 and arg_33_0.pauseOverlayState
	local var_33_1 = arg_33_1 and arg_33_1.ui and arg_33_1.ui.creditsBackground
	local var_33_2 = arg_33_0 and arg_33_0.pauseOverlay and arg_33_0.pauseOverlay.creditsBackground

	if not var_33_0 or not var_33_0.active or not var_33_1 or not var_33_2 or var_33_2.enabled == false then
		return nil
	end

	if var_33_0.settingsMode == true or var_33_0._settingsPending then
		return nil
	end

	local var_33_3 = var_33_0._settingsPending and not var_33_0.settingsMode
	local var_33_4 = arg_33_0.pauseOverlay and arg_33_0.pauseOverlay.settingsDelaySec or 0.35
	local var_33_5 = var_33_0._settingsT or 0
	local var_33_6 = var_33_3 and math.min(1, var_33_5 / math.max(0.0001, var_33_4)) or 0
	local var_33_7 = 1 - (1 - var_33_6) * (1 - var_33_6) * (1 - var_33_6)
	local var_33_8 = var_33_2.scale or 1
	local var_33_9 = math.floor((var_33_2.offsetX or 0) + 0.5)
	local var_33_10 = math.floor((var_33_2.offsetY or 0) + 0.5) - 28 * var_33_7

	return {
		img = var_33_1,
		x = var_33_9,
		y = math.floor((var_33_0.y or 0) + var_33_10 + 0.5),
		scale = var_33_8
	}
end

cursorImage = nil
cursorHotspotX, cursorHotspotY = 0, 0
_linuxGameCursorImageData = nil
_linuxGameCursorScale = nil
_linuxGameCursorAppliedScale = nil
WindowActivityState = WindowActivityState or {
	cacheInactiveFrame = true,
	activeLimiterEngaged = false,
	activeOverspeedFrames = 0,
	nextRefreshRateCheck = 0,
	resumeGuardFrames = 0,
	inactiveFrameCap = 30,
	cacheResumeGuardFrame = true,
	visible = true,
	throttleEnabled = false,
	focused = true
}

function refreshActiveFrameCap()
	if not WindowActivityState or not love.window or not love.window.getMode then
		return nil
	end

	local var_34_0, var_34_1, var_34_2, var_34_3 = pcall(love.window.getMode)
	local var_34_4 = var_34_0 and var_34_3 and var_0_4.normalizeRefreshRate(var_34_3.refreshrate) or nil

	if WindowActivityState.activeFrameCap ~= var_34_4 then
		WindowActivityState.activeFrameCap = var_34_4
		WindowActivityState.nextInactiveFrameTime = nil
		WindowActivityState.currentFrameCap = nil
		WindowActivityState.activeOverspeedFrames = 0
		WindowActivityState.activeLimiterEngaged = false
	end

	return var_34_4
end

_blankCursor = nil

function applyLinuxGameCursorHardware()
	if not love or not love.system or not love.system.getOS or love.system.getOS() ~= "Linux" then
		return false
	end

	if not _linuxGameCursorImageData or not love.mouse or not love.mouse.newCursor or not love.image then
		return false
	end

	local var_35_0 = math.max(1, math.floor((screenScale or 1) + 0.5))

	if var_35_0 > 8 then
		var_35_0 = 8
	end

	if _linuxGameCursorAppliedScale == var_35_0 then
		if love.mouse.setVisible then
			love.mouse.setVisible(true)
		end

		return true
	end

	return (pcall(function()
		local var_36_0 = _linuxGameCursorImageData
		local var_36_1 = var_36_0:getWidth()
		local var_36_2 = var_36_0:getHeight()
		local var_36_3 = love.image.newImageData(var_36_1 * var_35_0, var_36_2 * var_35_0)

		for iter_36_0 = 0, var_36_2 * var_35_0 - 1 do
			local var_36_4 = math.floor(iter_36_0 / var_35_0)

			for iter_36_1 = 0, var_36_1 * var_35_0 - 1 do
				local var_36_5 = math.floor(iter_36_1 / var_35_0)

				var_36_3:setPixel(iter_36_1, iter_36_0, var_36_0:getPixel(var_36_5, var_36_4))
			end
		end

		local var_36_6 = math.max(0, math.min(var_36_1 * var_35_0 - 1, math.floor((cursorHotspotX or 0) * var_35_0 + 0.5)))
		local var_36_7 = math.max(0, math.min(var_36_2 * var_35_0 - 1, math.floor((cursorHotspotY or 0) * var_35_0 + 0.5)))
		local var_36_8 = love.mouse.newCursor(var_36_3, var_36_6, var_36_7)

		love.mouse.setCursor(var_36_8)
		love.mouse.setVisible(true)

		_linuxGameCursorAppliedScale = var_35_0
		_linuxGameCursorScale = var_35_0
	end))
end

backgroundMainImage = nil
backgroundMainPaperGlowDistanceImage = nil
backgroundSettingBarImage = nil
backgroundCoreImage = nil
backgroundCoreNumberImage = nil
backgroundSlotImage = nil
backgroundSlotColourFilterImage = nil
backgroundSlotRopeImage = nil
backgroundSymbolOddsImage = nil
backgroundSlotLeftImage = nil
backgroundMonsterBodyImage = nil
backgroundMonsterHeadShadowImage = nil
backgroundMonsterHeadImage = nil
backgroundMonsterHeadData = nil
backgroundMonsterHeadLaughImage = nil
backgroundMonsterHeadLaughData = nil
monsterHeadAnim = nil
backgroundMonsterEyeShineImage = nil
backgroundFiremanBgImage = nil
backgroundFiremanBgData = nil
firemanSpriteImage = nil
firemanSpriteImageData = nil
fireman = nil
backgroundShopBackgroundImage = nil
backgroundShopInvenBackgroundImage = nil
shopkeeper = nil
backgroundShopInfoBackgroundImage = nil
backgroundStoneQuestBackgroundImage = nil
backgroundSpinBtnData = nil
backgroundSpinBtnImage = nil
backgroundSpinBtnOutlineImage = nil
backgroundSpinBtnPressedImage = nil
backgroundSlotShadowImage = nil
backgroundWaveCounterImage = nil
backgroundItemPanelData = nil
backgroundItemPanelBrokenImage = nil
backgroundItemPanelShadowUncommonImage = nil
backgroundCharacterPanelImage = nil
backgroundCharacterPanelData = nil
backgroundItemPanelCooltimeData = nil
backgroundItemPanelCooltimeBBox = nil
slotBgAnim = {
	y = 0,
	dropDur = 0.85,
	t = 0,
	bounceDur = 0.24,
	state = "init",
	settleY = -10
}
scrollIntroAnim = {
	slideT = 0,
	slideY = 0,
	slideState = "done",
	done = true,
	fps = 8,
	frame = 0,
	active = false,
	t = 0,
	pulseStartT = -1,
	squashT = -1,
	countdownModalTriggered = false,
	countdownModalPending = false,
	spinCountdown = 5
}
coreBgAnim = {
	y = 0,
	state = "wait",
	t = 0,
	riseDur = 0.45
}
absorbGlowAnim = {
	state = "off",
	active = false,
	radiusDur = 0.5,
	radiusT = 0,
	fadeDur = 0.6,
	fadeT = 0
}

local function var_0_35()
	return love and love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo("web.flag", "file") ~= nil
end

local function var_0_36(arg_38_0)
	if masterDepthStencil then
		love.graphics.setCanvas({
			masterCanvas,
			depthstencil = masterDepthStencil
		})
	elseif arg_38_0 then
		love.graphics.setCanvas({
			masterCanvas,
			stencil = true
		})
	else
		love.graphics.setCanvas(masterCanvas)
	end
end

local function var_0_37()
	if var_0_15 == nil or var_0_35() then
		return false
	end

	if (love and love.system and love.system.getOS and love.system.getOS() or nil) == "Windows" then
		return false
	end

	if love and love.graphics and love.graphics.getDimensions then
		local var_39_0, var_39_1 = love.graphics.getDimensions()

		if (tonumber(var_39_0) or 0) * (tonumber(var_39_1) or 0) > 2073600 then
			return false
		end
	end

	return true
end

function love.errorhandler(arg_40_0)
	arg_40_0 = tostring(arg_40_0)

	local var_40_0 = debug and debug.traceback and debug.traceback("", 2) or ""
	local var_40_1 = ("SlotBound crashed:\n\n%s\n%s"):format(arg_40_0, var_40_0)

	if love and love.system and love.system.setClipboardText then
		pcall(love.system.setClipboardText, var_40_1)
	end

	if not love or not love.graphics or not love.event then
		return function()
			return
		end
	end

	pcall(function()
		if love.mouse and love.mouse.setVisible then
			love.mouse.setVisible(true)
		end

		if not var_0_35() and love.audio and love.audio.stop then
			love.audio.stop()
		end

		if love.graphics and love.graphics.reset then
			love.graphics.reset()
		end

		if love.window and love.window.setMode then
			local var_42_0 = 960
			local var_42_1 = 540

			if love.graphics and love.graphics.getDimensions then
				local var_42_2, var_42_3 = love.graphics.getDimensions()

				if var_42_2 and var_42_3 and var_42_2 > 0 and var_42_3 > 0 then
					var_42_0, var_42_1 = var_42_2, var_42_3
				end
			end

			love.window.setMode(var_42_0, var_42_1, {
				stencil = false,
				vsync = 1,
				resizable = true
			})
		end
	end)

	local function var_40_2()
		local var_43_0, var_43_1 = love.graphics.getDimensions()

		love.graphics.clear(0.1, 0.2, 0.65, 1)
		love.graphics.setColor(1, 1, 1, 1)

		local var_43_2 = 24
		local var_43_3 = "오류가 발생했습니다. 오류 내용은 클립보드에 복사되었습니다."

		love.graphics.print(var_43_3, var_43_2, var_43_2)

		local var_43_4 = var_43_2 + 28
		local var_43_5 = math.max(100, var_43_0 - var_43_2 * 2)

		love.graphics.printf(var_40_1, var_43_2, var_43_4, var_43_5)
		love.graphics.print("ESC: 종료", var_43_2, var_43_1 - var_43_2 - 18)
	end

	return function()
		while true do
			love.event.pump()

			for iter_44_0, iter_44_1, iter_44_2, iter_44_3, iter_44_4 in love.event.poll() do
				if iter_44_0 == "quit" then
					return 1
				end

				if iter_44_0 == "keypressed" and iter_44_1 == "escape" then
					return 1
				end
			end

			love.graphics.origin()
			var_40_2()
			love.graphics.present()

			if love.timer then
				love.timer.sleep(0.01)
			end
		end
	end
end

function resetAbsorbGlowAnim()
	absorbGlowAnim.active = false
	absorbGlowAnim.state = "off"
	absorbGlowAnim.fadeT = 0
	absorbGlowAnim.radiusT = 0
	absorbGlowAnim.fadeDur = 0.6
	absorbGlowAnim.radiusDur = 0.5
end

MainMenuBgm = MainMenuBgm or {
	path = "src/audio/soundtrack/mainmenu.ogg"
}

function ensureMainMenuBgm()
	if var_0_35() then
		return
	end

	if MainMenuBgm.src then
		return
	end

	local var_46_0, var_46_1 = pcall(love.audio.newSource, MainMenuBgm.path, "stream")

	if not var_46_0 or not var_46_1 then
		local var_46_2 = "audio/soundtrack/mainmenu.ogg"

		var_46_0, var_46_1 = pcall(love.audio.newSource, var_46_2, "stream")

		if var_46_0 and var_46_1 then
			MainMenuBgm.path = var_46_2
		end
	end

	if var_46_0 and var_46_1 then
		if var_46_1.setLooping then
			var_46_1:setLooping(true)
		end

		MainMenuBgm.src = var_46_1
	end
end

Stage1Bgm = Stage1Bgm or {
	path = "src/audio/soundtrack/stage1.mp3"
}

function ensureStage1Bgm()
	if var_0_35() then
		return
	end

	if Stage1Bgm.src then
		return
	end

	local var_47_0, var_47_1 = pcall(love.audio.newSource, Stage1Bgm.path, "stream")

	if not var_47_0 or not var_47_1 then
		local var_47_2 = "audio/soundtrack/stage1.mp3"

		var_47_0, var_47_1 = pcall(love.audio.newSource, var_47_2, "stream")

		if var_47_0 and var_47_1 then
			Stage1Bgm.path = var_47_2
		end
	end

	if var_47_0 and var_47_1 then
		if var_47_1.setLooping then
			var_47_1:setLooping(true)
		end

		Stage1Bgm.src = var_47_1
	end
end

Stage2Bgm = Stage2Bgm or {
	path = "src/audio/soundtrack/stage2.mp3"
}

function ensureStage2Bgm()
	if var_0_35() then
		return
	end

	if Stage2Bgm.src then
		return
	end

	local var_48_0, var_48_1 = pcall(love.audio.newSource, Stage2Bgm.path, "stream")

	if not var_48_0 or not var_48_1 then
		local var_48_2 = "audio/soundtrack/stage2.mp3"

		var_48_0, var_48_1 = pcall(love.audio.newSource, var_48_2, "stream")

		if var_48_0 and var_48_1 then
			Stage2Bgm.path = var_48_2
		end
	end

	if var_48_0 and var_48_1 then
		if var_48_1.setLooping then
			var_48_1:setLooping(true)
		end

		Stage2Bgm.src = var_48_1
	end
end

BattleBgm = BattleBgm or {
	path = "src/audio/soundtrack/battle.ogg"
}

function ensureBattleBgm()
	if var_0_35() then
		return
	end

	if BattleBgm.src then
		return
	end

	local var_49_0, var_49_1 = pcall(love.audio.newSource, BattleBgm.path, "stream")

	if not var_49_0 or not var_49_1 then
		local var_49_2 = "audio/soundtrack/battle.ogg"

		var_49_0, var_49_1 = pcall(love.audio.newSource, var_49_2, "stream")

		if var_49_0 and var_49_1 then
			BattleBgm.path = var_49_2
		end
	end

	if var_49_0 and var_49_1 then
		if var_49_1.setLooping then
			var_49_1:setLooping(true)
		end

		BattleBgm.src = var_49_1
	end
end

JudgementBgm = JudgementBgm or {
	path = "src/audio/soundtrack/judgement.ogg"
}

function ensureJudgementBgm()
	if var_0_35() then
		return
	end

	if JudgementBgm.src then
		return
	end

	local var_50_0, var_50_1 = pcall(love.audio.newSource, JudgementBgm.path, "stream")

	if not var_50_0 or not var_50_1 then
		local var_50_2 = "audio/soundtrack/judgement.ogg"

		var_50_0, var_50_1 = pcall(love.audio.newSource, var_50_2, "stream")

		if var_50_0 and var_50_1 then
			JudgementBgm.path = var_50_2
		end
	end

	if var_50_0 and var_50_1 then
		if var_50_1.setLooping then
			var_50_1:setLooping(true)
		end

		JudgementBgm.src = var_50_1
	end
end

BossBgm = BossBgm or {
	path = "src/audio/soundtrack/boss.ogg"
}

function ensureBossBgm()
	if var_0_35() then
		return
	end

	if BossBgm.src then
		return
	end

	local var_51_0, var_51_1 = pcall(love.audio.newSource, BossBgm.path, "stream")

	if not var_51_0 or not var_51_1 then
		local var_51_2 = "audio/soundtrack/boss.ogg"

		var_51_0, var_51_1 = pcall(love.audio.newSource, var_51_2, "stream")

		if var_51_0 and var_51_1 then
			BossBgm.path = var_51_2
		end
	end

	if var_51_0 and var_51_1 then
		if var_51_1.setLooping then
			var_51_1:setLooping(true)
		end

		BossBgm.src = var_51_1
	end
end

BgmMixState = BgmMixState or {
	battle = 0,
	stage2 = 0,
	stage1 = 0,
	menu = 0,
	pauseFadeSpeed = 1.8,
	pauseDuck = 0.55,
	pauseMul = 1,
	menuVolumeMul = 1.25,
	stage2VolumeMul = 2,
	stage1VolumeMul = 1.08,
	masterMul = 0.3,
	gapDur = 0.4,
	gapDelay = 0,
	fadeSpeed = 0.7,
	boss = 0,
	judgement = 0
}
StoneSlotModSoundState = {
	fadeSpeed = 1.8,
	target = 0,
	volume = 0
}

function updateStoneSlotModFade(arg_52_0)
	if var_0_35() then
		return
	end

	local var_52_0 = StoneSlotModSoundState
	local var_52_1 = loadedAssets and loadedAssets.audio and loadedAssets.audio.stoneSlotMod

	if not var_52_0 or not var_52_1 then
		return
	end

	local var_52_2 = var_52_0.fadeSpeed * (arg_52_0 or 0)

	if var_52_0.volume < var_52_0.target then
		var_52_0.volume = math.min(var_52_0.target, var_52_0.volume + var_52_2)
	elseif var_52_0.volume > var_52_0.target then
		var_52_0.volume = math.max(var_52_0.target, var_52_0.volume - var_52_2)
	end

	local var_52_3 = loadedAssets and loadedAssets.audioBaseGain and loadedAssets.audioBaseGain.stoneSlotMod or 1
	local var_52_4 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

	var_52_1:setVolume(var_52_0.volume * var_52_3 * var_52_4)

	if var_52_0.volume <= 0 and var_52_0.target == 0 and var_52_1:isPlaying() then
		var_52_1:stop()
	end
end

function updateBgmMix(arg_53_0, arg_53_1, arg_53_2, arg_53_3)
	if var_0_35() then
		return
	end

	local var_53_0 = arg_53_2 and arg_53_2.menuSettings and arg_53_2.menuSettings.bgmVolume or 1
	local var_53_1 = BgmMixState and BgmMixState.masterMul or 1
	local var_53_2 = (arg_53_2 and arg_53_2.pauseOverlayState and arg_53_2.pauseOverlayState.active) == true
	local var_53_3 = arg_53_3 and arg_53_3.mode or nil
	local var_53_4 = arg_53_1 == "spin" or arg_53_1 == "prep" or arg_53_1 == "battle" or var_53_3 == "battle"
	local var_53_5 = tonumber(arg_53_3 and (arg_53_3.stage or arg_53_3.currentStage) or CurrentStage) or 1
	local var_53_6 = 0
	local var_53_7 = 0
	local var_53_8 = 0
	local var_53_9 = 0
	local var_53_10 = 0
	local var_53_11 = 0

	if arg_53_1 == "menu" or arg_53_1 == "upgrade" then
		var_53_6 = 1
	elseif var_53_4 then
		if var_53_5 == 2 then
			var_53_8 = 1
		else
			var_53_7 = 1
		end
	end

	local var_53_12 = BgmMixState._prevTarget or "none"
	local var_53_13 = "none"

	if var_53_11 == 1 then
		var_53_13 = "boss"
	elseif var_53_10 == 1 then
		var_53_13 = "judgement"
	elseif var_53_9 == 1 then
		var_53_13 = "battle"
	elseif var_53_8 == 1 then
		var_53_13 = "stage2"
	elseif var_53_7 == 1 then
		var_53_13 = "stage1"
	elseif var_53_6 == 1 then
		var_53_13 = "menu"
	end

	if (var_53_12 == "stage1" and (var_53_13 == "battle" or var_53_13 == "judgement" or var_53_13 == "boss") or (var_53_12 == "battle" or var_53_12 == "judgement" or var_53_12 == "boss") and var_53_13 == "stage1" or var_53_12 == "battle" and (var_53_13 == "judgement" or var_53_13 == "boss") or var_53_12 == "judgement" and (var_53_13 == "battle" or var_53_13 == "boss") or var_53_12 == "boss" and (var_53_13 == "battle" or var_53_13 == "judgement") or var_53_12 == "menu" and (var_53_13 == "stage1" or var_53_13 == "stage2" or var_53_13 == "battle") or (var_53_12 == "stage1" or var_53_12 == "stage2" or var_53_12 == "battle" or var_53_12 == "judgement" or var_53_12 == "boss") and var_53_13 == "menu") and BgmMixState._transitionGap == nil then
		BgmMixState._transitionGap = BgmMixState.gapDur or 0.4
	end

	BgmMixState._prevTarget = var_53_13

	if (BgmMixState._transitionGap or 0) > 0 then
		BgmMixState._transitionGap = BgmMixState._transitionGap - (arg_53_0 or 0)

		if BgmMixState._transitionGap <= 0 then
			BgmMixState._transitionGap = nil
		end

		if var_53_13 ~= "menu" then
			var_53_7 = 0
			var_53_8 = 0
			var_53_9 = 0
			var_53_10 = 0
			var_53_11 = 0
		end
	end

	local function var_53_14(arg_54_0, arg_54_1, arg_54_2)
		if arg_54_0 < arg_54_1 then
			arg_54_0 = arg_54_0 + arg_54_2

			if arg_54_1 < arg_54_0 then
				arg_54_0 = arg_54_1
			end
		elseif arg_54_1 < arg_54_0 then
			arg_54_0 = arg_54_0 - arg_54_2

			if arg_54_0 < arg_54_1 then
				arg_54_0 = arg_54_1
			end
		end

		return arg_54_0
	end

	local var_53_15 = (BgmMixState.fadeSpeed or 0.7) * (arg_53_0 or 0)

	BgmMixState.menu = var_53_14(BgmMixState.menu or 0, var_53_6, var_53_15)

	if (var_53_7 or 0) > (BgmMixState.stage1 or 0) then
		BgmMixState.stage1 = var_53_7
	else
		BgmMixState.stage1 = var_53_14(BgmMixState.stage1 or 0, var_53_7, var_53_15)
	end

	if (var_53_8 or 0) > (BgmMixState.stage2 or 0) then
		BgmMixState.stage2 = var_53_8
	else
		BgmMixState.stage2 = var_53_14(BgmMixState.stage2 or 0, var_53_8, var_53_15)
	end

	BgmMixState.battle = var_53_14(BgmMixState.battle or 0, var_53_9, var_53_15)
	BgmMixState.judgement = var_53_14(BgmMixState.judgement or 0, var_53_10, var_53_15)
	BgmMixState.boss = var_53_14(BgmMixState.boss or 0, var_53_11, var_53_15)

	local var_53_16 = var_53_2 and (BgmMixState.pauseDuck or 0.45) or 1
	local var_53_17 = (BgmMixState.pauseFadeSpeed or 1.8) * (arg_53_0 or 0)

	BgmMixState.pauseMul = var_53_14(BgmMixState.pauseMul or 1, var_53_16, var_53_17)

	local var_53_18 = var_53_0 * var_53_1 * (BgmMixState.pauseMul or 1)

	if BgmMixState.menu > 0 then
		ensureMainMenuBgm()
	end

	local var_53_19 = MainMenuBgm and MainMenuBgm.src

	if var_53_19 then
		if var_53_19.setLooping then
			var_53_19:setLooping(true)
		end

		if var_53_19.setVolume then
			var_53_19:setVolume(var_53_18 * (BgmMixState.menuVolumeMul or 1.25) * BgmMixState.menu)
		end

		if var_53_19.isPlaying and not var_53_19:isPlaying() and BgmMixState.menu > 0.001 then
			var_53_19:play()
		end

		if var_53_19.isPlaying and var_53_19:isPlaying() and BgmMixState.menu <= 0.0005 then
			var_53_19:stop()
		end
	end

	if BgmMixState.stage1 > 0 then
		ensureStage1Bgm()
	end

	local var_53_20 = Stage1Bgm and Stage1Bgm.src

	if var_53_20 then
		if var_53_20.setLooping then
			var_53_20:setLooping(true)
		end

		if var_53_20.setVolume then
			var_53_20:setVolume(var_53_18 * (BgmMixState.stage1VolumeMul or 1) * BgmMixState.stage1)
		end

		if var_53_20.isPlaying and not var_53_20:isPlaying() and BgmMixState.stage1 > 0.001 then
			var_53_20:play()
		end

		if var_53_20.isPlaying and var_53_20:isPlaying() and BgmMixState.stage1 <= 0.0005 then
			var_53_20:stop()
		end
	end

	if BgmMixState.stage2 > 0 then
		ensureStage2Bgm()
	end

	local var_53_21 = Stage2Bgm and Stage2Bgm.src

	if var_53_21 then
		if var_53_21.setLooping then
			var_53_21:setLooping(true)
		end

		if var_53_21.setVolume then
			var_53_21:setVolume(var_53_18 * (BgmMixState.stage2VolumeMul or 1) * BgmMixState.stage2)
		end

		if var_53_21.isPlaying and not var_53_21:isPlaying() and BgmMixState.stage2 > 0.001 then
			var_53_21:play()
		end

		if var_53_21.isPlaying and var_53_21:isPlaying() and BgmMixState.stage2 <= 0.0005 then
			var_53_21:stop()
		end
	end

	if BgmMixState.battle > 0 then
		ensureBattleBgm()
	end

	local var_53_22 = BattleBgm and BattleBgm.src

	if var_53_22 then
		if var_53_22.setLooping then
			var_53_22:setLooping(true)
		end

		if var_53_22.setVolume then
			var_53_22:setVolume(var_53_18 * BgmMixState.battle)
		end

		if var_53_22.isPlaying and not var_53_22:isPlaying() and BgmMixState.battle > 0.001 then
			var_53_22:play()
		end

		if var_53_22.isPlaying and var_53_22:isPlaying() and BgmMixState.battle <= 0.0005 then
			var_53_22:stop()
		end
	end

	if BgmMixState.judgement > 0 then
		ensureJudgementBgm()
	end

	local var_53_23 = JudgementBgm and JudgementBgm.src

	if var_53_23 then
		if var_53_23.setLooping then
			var_53_23:setLooping(true)
		end

		if var_53_23.setVolume then
			var_53_23:setVolume(var_53_18 * BgmMixState.judgement)
		end

		if var_53_23.isPlaying and not var_53_23:isPlaying() and BgmMixState.judgement > 0.001 then
			var_53_23:play()
		end

		if var_53_23.isPlaying and var_53_23:isPlaying() and BgmMixState.judgement <= 0.0005 then
			var_53_23:stop()
		end
	end

	if BgmMixState.boss > 0 then
		ensureBossBgm()
	end

	local var_53_24 = BossBgm and BossBgm.src

	if var_53_24 then
		if var_53_24.setLooping then
			var_53_24:setLooping(true)
		end

		if var_53_24.setVolume then
			var_53_24:setVolume(var_53_18 * BgmMixState.boss)
		end

		if var_53_24.isPlaying and not var_53_24:isPlaying() and BgmMixState.boss > 0.001 then
			var_53_24:play()
		end

		if var_53_24.isPlaying and var_53_24:isPlaying() and BgmMixState.boss <= 0.0005 then
			var_53_24:stop()
		end
	end
end

coreNumAnim = {
	state = "wait",
	x = 0,
	t = 0,
	startAfter = "rise",
	fromX = 0,
	slideDur = 0.45,
	startDelay = 0
}
slot = nil
battlefield = nil
loadedAssets = nil
spinCount = 0
coreSelectionsMade = 0
coreFreeRerollsRemaining = 0
lastLayout = nil
pendingBattle = {
	delay = 0,
	active = false,
	t = 0
}
WAVE_TIMER_ENABLED = false
waveTimer = {
	t = 0,
	fadeDur = 0.6,
	fadeT = 0,
	hidden = true,
	disabled = true,
	appearDur = 0.35,
	appearT = 0,
	state = "countdown",
	dur = 60
}

local function var_0_38()
	local var_55_0 = var_0_17 and var_0_17.getPrepTimeBonusSec and var_0_17.getPrepTimeBonusSec() or 0

	return 60 + math.max(0, tonumber(var_55_0) or 0)
end

local function var_0_39()
	local var_56_0 = var_0_17 and var_0_17.getStartGoldBonus and var_0_17.getStartGoldBonus() or 0

	return 450 + math.max(0, tonumber(var_56_0) or 0)
end

local function var_0_40()
	return var_0_17 and var_0_17.getComebackGoldBonus and var_0_17.getComebackGoldBonus() or 0
end

local function var_0_41()
	return var_0_17 and var_0_17.getCoreFreeRerollBonus and var_0_17.getCoreFreeRerollBonus() or 0
end

local function var_0_42()
	return var_0_17 and var_0_17.getFirstCoreSpinReqDelta and var_0_17.getFirstCoreSpinReqDelta() or 0
end

function hasFirstCoreUncommonGuarantee()
	return (var_0_17 and var_0_17.getFirstCoreUncommonGuarantee and var_0_17.getFirstCoreUncommonGuarantee() or 0) > 0
end

local function var_0_43()
	return var_0_17 and var_0_17.getShopFirstRerollDiscount and var_0_17.getShopFirstRerollDiscount() or 0
end

local function var_0_44()
	local var_62_0 = math.max(0, math.floor(tonumber(var_0_43()) or 0))

	return math.max(0, 2 - var_62_0)
end

function getItemInventoryCapacity()
	local var_63_0 = var_0_17 and var_0_17.getItemInventoryAdd and var_0_17.getItemInventoryAdd() or 0
	local var_63_1 = math.max(0, math.floor(tonumber(var_63_0) or 0))

	return math.min(8, 6 + var_63_1)
end

function getItemRefundRate()
	return var_0_17 and var_0_17.getItemRefundRate and var_0_17.getItemRefundRate() or 0.5
end

local function var_0_45()
	return not WAVE_TIMER_ENABLED or (var_0_17 and var_0_17.isPrepTimerDisabled and var_0_17.isPrepTimerDisabled()) == true
end

local function var_0_46()
	local var_66_0 = var_0_17 and var_0_17.getMaxInterestBonus and var_0_17.getMaxInterestBonus() or 0
	local var_66_1 = math.max(0, tonumber(var_66_0) or 0)

	if var_66_1 <= 0 then
		return 0
	end

	local var_66_2 = math.max(0, tonumber(coins) or 0)
	local var_66_3 = math.min(var_66_1, math.floor(var_66_2 / 100) * 10)

	if var_66_3 <= 0 then
		return 0
	end

	coins = math.max(0, var_66_2 + var_66_3)

	if ui then
		ui.coinsBalanceTarget = coins
	end

	if addCoinPopup then
		addCoinPopup(var_66_3)
	end

	return var_66_3
end

local function var_0_47(arg_67_0)
	if not BattleStartGuard.claim(battlefield, pendingBattle) then
		return false
	end

	if skipPendingCoreSelection then
		skipPendingCoreSelection()
	end

	if var_0_20 then
		var_0_20()
	end

	if _G.Render2 and _G.Render2.closeDpsWindow then
		_G.Render2.closeDpsWindow(ui, false)
	end

	var_0_46()

	return battlefield:beginBattle(arg_67_0) ~= false
end

phase = "menu"
GameEditionMode = var_0_21 and "demo" or GameEditionMode or "demo"

function isDemoMode()
	return GameEditionMode == "demo"
end

function isDemoContentLocked(arg_69_0, arg_69_1)
	if not isDemoMode() then
		return false
	end

	local var_69_0 = math.floor(tonumber(arg_69_0) or 1)
	local var_69_1 = math.floor(tonumber(arg_69_1) or 1)

	return var_69_0 >= 3 or var_69_0 == 2 and var_69_1 >= 2
end

function toggleGameEditionMode()
	if var_0_21 then
		GameEditionMode = "demo"

		return GameEditionMode
	end

	GameEditionMode = isDemoMode() and "full" or "demo"

	return GameEditionMode
end

CurrentStage = CurrentStage or 1
OriginiteFirstReachedGates = OriginiteFirstReachedGates or {}
upgradeTransition = {
	cx = 0,
	active = false,
	t = 0,
	cy = 0,
	maxR = 0,
	state = "idle",
	dur = 0.15
}
displayModeTransition = {
	alpha = 0,
	active = false,
	t = 0,
	phase = "idle",
	fadeDur = 0.12,
	vx = 0,
	vy = 0
}

function applyDisplayMode(arg_71_0)
	local var_71_0 = (arg_71_0 == "fullscreen" or arg_71_0 == "borderless") and arg_71_0 or "windowed"
	local var_71_1 = love and love.system and love.system.getOS and love.system.getOS() or jit and jit.os or nil
	local var_71_2 = var_0_4.usesCompositedFullscreen(var_71_0, var_71_1)

	local function var_71_3()
		if not WindowActivityState then
			return
		end

		WindowActivityState.nextInactiveFrameTime = nil
		WindowActivityState.currentFrameCap = nil
		WindowActivityState.activeOverspeedFrames = 0
		WindowActivityState.activeLimiterEngaged = false
	end

	local function var_71_4(arg_73_0, arg_73_1, arg_73_2)
		local var_73_0 = love.window and love.window.getFullscreen and love.window.getFullscreen() or false

		if arg_73_0 == "fullscreen" then
			return var_73_0 == true
		end

		if var_73_0 then
			return false
		end

		local var_73_1

		if love.window and love.window.getMode then
			local var_73_2, var_73_3, var_73_4, var_73_5 = pcall(love.window.getMode)

			if var_73_2 then
				var_73_1 = var_73_5
			end
		end

		local var_73_6 = var_73_1 and var_73_1.borderless == true or false

		if arg_73_0 == "borderless" and not var_73_6 then
			return false
		end

		if arg_73_0 == "windowed" and var_73_6 then
			return false
		end

		if arg_73_0 == "borderless" and arg_73_1 and arg_73_2 and love.graphics then
			local var_73_7, var_73_8 = love.graphics.getDimensions()

			if var_73_7 ~= arg_73_1 or var_73_8 ~= arg_73_2 then
				return false
			end
		end

		return true
	end

	if var_71_0 == "fullscreen" and not var_71_2 then
		if setWindowsBorderlessCaptureStyle then
			setWindowsBorderlessCaptureStyle(false)
		end

		if love.window and love.window.setFullscreen then
			local var_71_5, var_71_6 = pcall(love.window.setFullscreen, true, "desktop")
			local var_71_7 = var_71_5 and var_71_6 ~= false and var_71_4("fullscreen")

			if var_71_7 and love.window.setVSync then
				pcall(love.window.setVSync, 1)
			end

			if var_71_7 then
				var_71_3()
				refreshActiveFrameCap()
			end

			return var_71_7
		end

		return false
	end

	local var_71_8 = 1280
	local var_71_9 = 720
	local var_71_10 = 0
	local var_71_11 = 0
	local var_71_12 = false

	if var_71_0 == "borderless" or var_71_2 then
		var_71_10, var_71_11, var_71_8, var_71_9 = getBorderlessDesktopArea()
		var_71_10 = var_71_10 or 0
		var_71_11 = var_71_11 or 0
		var_71_8 = var_71_8 or 1280
		var_71_9 = var_71_9 or 720
		var_71_12 = true
	end

	if love.window and love.window.getFullscreen and love.window.getFullscreen() and love.window.setFullscreen then
		pcall(love.window.setFullscreen, false)
	end

	if setWindowsBorderlessCaptureStyle then
		setWindowsBorderlessCaptureStyle(false)
	end

	local var_71_13 = false

	if love.window and love.window.setMode then
		local var_71_14, var_71_15 = pcall(love.window.setMode, var_71_8, var_71_9, {
			highdpi = true,
			vsync = 1,
			stencil = false,
			usedpiscale = false,
			fullscreentype = "desktop",
			fullscreen = false,
			resizable = false,
			borderless = var_71_12
		})

		var_71_13 = var_71_14 and var_71_15 ~= false
	elseif love.window and love.window.setFullscreen then
		local var_71_16, var_71_17 = pcall(love.window.setFullscreen, false)

		var_71_13 = var_71_16 and var_71_17 ~= false
	end

	if var_71_12 and love.window and love.window.setPosition then
		pcall(love.window.setPosition, var_71_10 or 0, var_71_11 or 0)
	end

	if var_71_13 and var_71_12 and setWindowsBorderlessCaptureStyle and not setWindowsBorderlessCaptureStyle(true, var_71_10, var_71_11, var_71_8, var_71_9) then
		WindowsBorderlessCaptureState.retryFrames = 60
	end

	local var_71_18 = var_71_2 and "borderless" or var_71_0
	local var_71_19 = var_71_13 and var_71_4(var_71_18, var_71_8, var_71_9)

	if var_71_19 and love.window and love.window.setVSync then
		pcall(love.window.setVSync, 1)
	end

	if var_71_19 then
		var_71_3()
		refreshActiveFrameCap()
	end

	return var_71_19
end

SuddenDeathAlertBanner = SuddenDeathAlertBanner or {}

function SuddenDeathAlertBanner.start(arg_74_0, arg_74_1)
	return
end

function SuddenDeathAlertBanner.sandboxTrigger(arg_75_0, arg_75_1)
	return
end

function SuddenDeathAlertBanner.update(arg_76_0, arg_76_1)
	if not arg_76_0 or not arg_76_0._suddenDeathAlertBanner then
		return
	end

	local var_76_0 = arg_76_0._suddenDeathAlertBanner
	local var_76_1 = arg_76_0.suddenDeathAlert or {}

	arg_76_0.suddenDeathAlertState = arg_76_0.suddenDeathAlertState or {}
	var_76_0.holdT = (var_76_0.holdT or 0) + (arg_76_1 or 0)

	if var_76_0.show == true and (var_76_0.holdT or 0) >= (var_76_0.holdDur or 2) then
		var_76_0.show = false
	end

	local var_76_2 = var_76_1.spring or {}
	local var_76_3 = var_76_2.k or 90
	local var_76_4 = var_76_2.damping or 12
	local var_76_5 = var_76_2.maxVel or 2000
	local var_76_6 = arg_76_0.infoOverlay and arg_76_0.infoOverlay.hiddenY or var_76_1.hiddenY ~= nil and var_76_1.hiddenY or -(arg_76_0.virtual and arg_76_0.virtual.H or 128)
	local var_76_7 = arg_76_0.infoOverlay and arg_76_0.infoOverlay.visibleY or var_76_1.visibleY ~= nil and var_76_1.visibleY or 0
	local var_76_8 = var_76_0.show == true and var_76_7 or var_76_6
	local var_76_9 = arg_76_0.suddenDeathAlertState
	local var_76_10 = var_76_9.y or var_76_6
	local var_76_11 = var_76_9.v or 0
	local var_76_12 = var_76_11 + ((var_76_8 - var_76_10) * var_76_3 - var_76_4 * var_76_11) * (arg_76_1 or 0)

	if var_76_5 and var_76_5 > 0 then
		if var_76_5 < var_76_12 then
			var_76_12 = var_76_5
		elseif var_76_12 < -var_76_5 then
			var_76_12 = -var_76_5
		end
	end

	local var_76_13 = var_76_10 + var_76_12 * (arg_76_1 or 0)

	var_76_9.y, var_76_9.v = var_76_13, var_76_12
	var_76_0.active = var_76_0.show == true or var_76_13 > var_76_6 + 0.5

	local var_76_14 = var_76_1.snapEps or 0.5

	if var_76_0.show ~= true and math.abs(var_76_12) < 0.02 and var_76_14 > math.abs(var_76_13 - var_76_6) then
		arg_76_0._suddenDeathAlertBanner = nil
	end
end

local function var_0_48(arg_77_0)
	local var_77_0 = var_0_16 and var_0_16.upgradeRect or nil

	if var_77_0 then
		upgradeTransition.cx = var_77_0.x + var_77_0.w / 2
		upgradeTransition.cy = var_77_0.y + var_77_0.h / 2
	else
		upgradeTransition.cx = (arg_77_0 and arg_77_0.virtual and arg_77_0.virtual.W or 1280) / 2
		upgradeTransition.cy = (arg_77_0 and arg_77_0.virtual and arg_77_0.virtual.H or 720) / 2
	end

	local var_77_1 = arg_77_0 and arg_77_0.virtual and arg_77_0.virtual.W or 1280
	local var_77_2 = arg_77_0 and arg_77_0.virtual and arg_77_0.virtual.H or 720
	local var_77_3 = math.max(upgradeTransition.cx, var_77_1 - upgradeTransition.cx)
	local var_77_4 = math.max(upgradeTransition.cy, var_77_2 - upgradeTransition.cy)

	upgradeTransition.maxR = math.sqrt(var_77_3 * var_77_3 + var_77_4 * var_77_4)
end

local var_0_49

menuPlayTransition = {
	durIn = 0.26,
	active = false,
	t = 0,
	stage = 1,
	state = "idle",
	hold = 0,
	durOut = 0.26
}

function menuPlayEaseInOutCubic(arg_78_0)
	arg_78_0 = math.max(0, math.min(1, arg_78_0 or 0))

	if arg_78_0 < 0.5 then
		return 4 * arg_78_0 * arg_78_0 * arg_78_0
	end

	local var_78_0 = -2 * arg_78_0 + 2

	return 1 - var_78_0 * var_78_0 * var_78_0 / 2
end

function menuPlayFadeAlpha()
	if not menuPlayTransition or not menuPlayTransition.active then
		return 0
	end

	local var_79_0 = menuPlayTransition.state

	if var_79_0 == "out" then
		local var_79_1 = menuPlayTransition.durOut and menuPlayTransition.durOut > 0 and menuPlayTransition.t / menuPlayTransition.durOut or 1

		return menuPlayEaseInOutCubic(var_79_1)
	elseif var_79_0 == "black" then
		return 1
	elseif var_79_0 == "in" then
		local var_79_2 = menuPlayTransition.durIn and menuPlayTransition.durIn > 0 and menuPlayTransition.t / menuPlayTransition.durIn or 1

		return 1 - menuPlayEaseInOutCubic(var_79_2)
	end

	return 0
end

function drawMenuPlayFadeOverlay()
	local var_80_0 = menuPlayFadeAlpha()

	if not var_80_0 or var_80_0 <= 0 then
		return
	end

	local var_80_1, var_80_2 = love.graphics.getDimensions()

	love.graphics.setShader()
	love.graphics.setColor(0.1803921568627451, 0.13333333333333333, 0.1843137254901961, math.max(0, math.min(1, var_80_0)))
	love.graphics.rectangle("fill", 0, 0, var_80_1, var_80_2)
	love.graphics.setColor(1, 1, 1, 1)
end

function drawDisplayModeTransitionOverlay()
	if not displayModeTransition or not displayModeTransition.active then
		return
	end

	local var_81_0 = displayModeTransition.alpha or 0

	if var_81_0 <= 0 then
		return
	end

	local var_81_1, var_81_2 = love.graphics.getDimensions()

	love.graphics.setShader()
	love.graphics.setColor(0, 0, 0, math.max(0, math.min(1, var_81_0)))
	love.graphics.rectangle("fill", 0, 0, var_81_1, var_81_2)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_50()
	if not windowShowPending then
		return
	end

	if type(windowShowPending) == "number" and windowShowPending > 0 then
		windowShowPending = windowShowPending - 1

		return
	end

	if love.window and love.window.setVisible then
		if not love.window.isVisible() then
			love.window.setVisible(true)
		end
	elseif love.window and love.window.show then
		pcall(love.window.show)
	end

	if ensureWindowsBorderlessCaptureStyle then
		ensureWindowsBorderlessCaptureStyle(true)
	end

	local var_82_0 = love.system and love.system.getOS and love.system.getOS() or nil

	WindowActivityState.throttleEnabled = true
	WindowActivityState.cacheInactiveFrame = true
	WindowActivityState.cacheResumeGuardFrame = var_82_0 ~= "Windows"

	if var_82_0 == "Windows" then
		WindowActivityState.resumeGuardFrames = 0
	end

	if love.window and love.window.hasFocus then
		local var_82_1, var_82_2 = pcall(love.window.hasFocus)

		if var_82_1 then
			WindowActivityState.focused = var_82_2 and true or false
		end
	end

	if love.window and love.window.isVisible then
		local var_82_3, var_82_4 = pcall(love.window.isVisible)

		if var_82_3 then
			WindowActivityState.visible = var_82_4 and true or false
		end
	end

	refreshActiveFrameCap()

	windowShowPending = false
end

function startMenuPlayTransition(arg_83_0, arg_83_1)
	if menuPlayTransition.active then
		return
	end

	if ui then
		ui._victorySprite = nil
		ui._defeatSprite = nil
	end

	local var_83_0 = tonumber(arg_83_0 or 1) or 1

	if isDemoContentLocked(var_83_0, arg_83_1) then
		return false
	end

	local var_83_1 = math.max(1, math.floor(var_83_0))

	menuPlayTransition.stage = var_83_1
	menuPlayTransition.difficulty = tonumber(arg_83_1 or 1) or 1
	CurrentStage = var_83_1
	menuPlayTransition.active = true
	menuPlayTransition.state = "out"
	menuPlayTransition.t = 0

	if phase == "menu" and var_0_16 and var_0_16.isStageSelectOpen and var_0_16.isStageSelectOpen() then
		-- block empty
	end
end

function updateMenuPlayTransition(arg_84_0)
	if not menuPlayTransition.active then
		return
	end

	menuPlayTransition.t = (menuPlayTransition.t or 0) + (arg_84_0 or 0)

	if menuPlayTransition.state == "out" then
		if menuPlayTransition.t >= (menuPlayTransition.durOut or 0) then
			local var_84_0 = menuPlayTransition.stage or 1
			local var_84_1 = menuPlayTransition.difficulty or 1

			if battlefield then
				battlefield.gameOver = false
				battlefield.gameClear = false
				battlefield.clearWaveTarget = nil
				battlefield.clearRewardGranted = false
				battlefield.originiteEarnedThisRun = 0
				battlefield._earlyBaseShieldUsed = false
				battlefield._comebackGuaranteedSpinUsed = false
				battlefield._comebackGuaranteedSpinPending = false
				battlefield.gameOverT = 0

				if battlefield.wave then
					battlefield.wave.id = 0
				end

				battlefield.stage = var_84_0
				battlefield.currentStage = var_84_0
				battlefield.difficulty = var_84_1
				battlefield.baseHP = 5 + (var_0_17.getBaseHPBonus and var_0_17.getBaseHPBonus() or 0)
				battlefield._prevBaseHP = battlefield.baseHP
				coins = var_0_39()
				displayCoins = coins

				if ui then
					ui._hpCountImpact = {
						value = battlefield.baseHP
					}
					ui.coinsBalanceTarget = coins
				end
			end

			if _G.Render2 and _G.Render2.resetDpsWindow then
				_G.Render2.resetDpsWindow(ui, battlefield)
			end

			phase = "spin"

			if waveTimer then
				waveTimer.dur = var_0_38()
				waveTimer.t = 0
				waveTimer.state = "countdown"
			end

			if ui then
				ui._suddenDeathAlertBanner = nil
				ui.suddenDeathAlertState = nil
			end

			var_0_49()

			if Tutorial and Tutorial.beginForRun then
				Tutorial.beginForRun(var_84_0, var_84_1, ui)
			end

			if (menuPlayTransition.hold or 0) > 0 then
				menuPlayTransition.state = "black"
			else
				menuPlayTransition.state = "in"
			end

			menuPlayTransition.t = 0
		end
	elseif menuPlayTransition.state == "black" then
		if menuPlayTransition.t >= (menuPlayTransition.hold or 0) then
			menuPlayTransition.state = "in"
			menuPlayTransition.t = 0
		end
	elseif menuPlayTransition.state == "in" and menuPlayTransition.t >= (menuPlayTransition.durIn or 0) then
		menuPlayTransition.active = false
		menuPlayTransition.state = "idle"
		menuPlayTransition.t = 0
	end
end

prepIdleT = 0
heartbeatT = 0
uiLocked = false
startShake = {
	dur = 0.2,
	active = false,
	t = 0,
	amp = 1.5
}
lastBattleMode = "spin"
tooltip = nil
drag = {
	oy = 0,
	active = false,
	ox = 0
}
spinHitRectDrag = {
	oy = 0,
	active = false,
	ox = 0
}
econ = var_0_5.economy or {}
coins = var_0_39()
jungsu = 0
displayJungsu = 0
jungsuAnim = {
	target = 0,
	start = 0,
	t = 0,
	active = false
}
displayCoins = 0
coinAnim = {
	target = 0,
	start = 0,
	t = 0,
	active = false
}
spinsInWave = 0
spinsLeft = 6
paidBought = 0
paidSpinsInWave = 0
spinCost = 100
spinCostStep = 50
lastSpinWasPaid = false
lastSpinWasFirstPaid = false
lastPaidSpinCost = 0
lastPaidSpinCoinsBefore = 0
lastPaidSpinIndex = 0
lastPaidSpinCostIncreaseApplied = 0

local var_0_51
local var_0_52

freeSpinCredits = 0
nudgeSpinDiscountPending = false

local var_0_53
local var_0_54

local function var_0_55()
	local var_85_0 = battlefield and battlefield.wave and tonumber(battlefield.wave.id) or 0

	if battlefield and battlefield.gameOver then
		return math.max(1, var_85_0)
	end

	local var_85_1 = battlefield and battlefield.wave and battlefield.wave.active == true

	return math.max(1, var_85_1 and var_85_0 or var_85_0 + 1)
end

local function var_0_56(arg_86_0)
	arg_86_0 = math.max(1, math.floor(tonumber(arg_86_0 or 1) or 1))

	local var_86_0 = ({
		5,
		10,
		10,
		15,
		15,
		15,
		20,
		20
	})[arg_86_0] or 25

	if arg_86_0 == 1 then
		var_86_0 = var_86_0 + math.floor(tonumber(var_0_42()) or 0)
	end

	return math.max(1, var_86_0)
end

local function var_0_57()
	return var_0_56((coreSelectionsMade or 0) + 1)
end

function isCoreSelectionCountdownReady()
	if not scrollIntroAnim then
		return false
	end

	return math.max(0, math.floor(tonumber(scrollIntroAnim.spinCountdown) or 0)) <= 0 and scrollIntroAnim.countdownModalPending == true and scrollIntroAnim.countdownModalTriggered ~= true
end

function canOpenCoreSelectionCountdownModal()
	if not isCoreSelectionCountdownReady() then
		return false
	end

	if slot and slot.spin and slot.spin.active then
		return false
	end

	if slot and slot.result and slot.result.winSeq and slot.result.winSeq.active then
		return false
	end

	if ui and ui._preSpinSeq and ui._preSpinSeq.active then
		return false
	end

	if battlefield and (battlefield.mode == "battle" or battlefield.gameOver or battlefield.classSelect) then
		return false
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	return true
end

local function var_0_58(arg_90_0, arg_90_1, arg_90_2)
	if not arg_90_0 or not arg_90_1 or not arg_90_2 then
		return nil
	end

	if arg_90_0 == "Blank" or arg_90_1 == "Blank" or arg_90_2 == "Blank" then
		return nil
	end

	local var_90_0
	local var_90_1 = 0

	for iter_90_0, iter_90_1 in ipairs({
		arg_90_0,
		arg_90_1,
		arg_90_2
	}) do
		if iter_90_1 == "Joker" or iter_90_1 == "J" then
			var_90_1 = var_90_1 + 1
		elseif not var_90_0 then
			var_90_0 = iter_90_1
		elseif iter_90_1 ~= var_90_0 then
			return nil
		end
	end

	if var_90_1 == 3 then
		return nil
	end

	return var_90_0
end

local function var_0_59()
	if ui and CoreSelectFlow then
		CoreSelectFlow.clearDeferred(ui)
	end

	if not scrollIntroAnim then
		return
	end

	local var_91_0 = var_0_57()

	scrollIntroAnim.spinCountdown = var_91_0
	scrollIntroAnim.countupAnim = {
		tickT = 0,
		stamped = false,
		target = var_91_0,
		current = var_91_0,
		stampT = love.timer.getTime()
	}
	scrollIntroAnim.countdownModalPending = false
	scrollIntroAnim.countdownModalTriggered = false
end

function skipPendingCoreSelection()
	if not ui then
		return false
	end

	if not CoreSelectFlow or not CoreSelectFlow.skipPending or not CoreSelectFlow.skipPending(ui) then
		return false
	end

	coreSelectionsMade = (coreSelectionsMade or 0) + 1
	ui._coreSelectRerollCost = nil
	ui._coreSelectOffersCache = nil

	if ui._coreMsg then
		ui._coreMsg.phase = "leave"
		ui._coreMsg.startT = love.timer.getTime()
	end

	var_0_59()

	return true
end

coinPopups = {}
jungsuPopups = {}
hpPopups = {}
spinBtnPressed = false
spinShake = {
	y = 0,
	x = 0,
	t = 0,
	amp = 0
}
slotSway = {
	ampPx = 0,
	x = 0,
	t = 0,
	period = 8
}
spinPressShake = {
	freq = 8,
	active = false,
	ampPx = 3,
	t = 0,
	y = 0,
	dur = 0.18
}
spinGoldDenyFX = {
	freq = 19,
	active = false,
	ampPx = 3,
	t = 0,
	x = 0,
	dur = 0.34
}
spinStickAnim = {
	speed = 0.05,
	playing = false,
	t = 0,
	frame = 1
}

function playRollingSound()
	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return
	end

	local var_93_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.rolling

	if var_93_0 then
		if var_93_0.setLooping then
			var_93_0:setLooping(true)
		end

		if var_93_0.setPitch then
			var_93_0:setPitch(0.85)
		end

		if not var_93_0:isPlaying() then
			var_93_0:play()
		end
	end
end

function stopRollingSound()
	local var_94_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.rolling

	if var_94_0 and var_94_0:isPlaying() then
		var_94_0:stop()
	end
end

function playStoneSlotModSound()
	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return
	end

	local var_95_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.stoneSlotMod

	if var_95_0 then
		if var_95_0.setLooping then
			var_95_0:setLooping(true)
		end

		if not var_95_0:isPlaying() then
			var_95_0:play()
			var_95_0:setVolume(0)

			if StoneSlotModSoundState then
				StoneSlotModSoundState.volume = 0
			end
		end

		if StoneSlotModSoundState then
			StoneSlotModSoundState.target = 1
		end
	end
end

function stopStoneSlotModSound()
	if StoneSlotModSoundState then
		StoneSlotModSoundState.target = 0
	end
end

function stopSlotMachineSounds()
	stopRollingSound()
	stopStoneSlotModSound()

	local var_97_0 = loadedAssets and loadedAssets.audio

	if var_97_0 then
		local var_97_1 = {
			var_97_0.reelStop,
			var_97_0.leverSound
		}

		for iter_97_0, iter_97_1 in ipairs(var_97_1) do
			if iter_97_1 and iter_97_1.isPlaying and iter_97_1:isPlaying() then
				iter_97_1:stop()
			end
		end
	end
end

function stopHolyRaySound()
	local var_98_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.holyRay

	if var_98_0 and var_98_0.isPlaying and var_98_0:isPlaying() then
		var_98_0:stop()
	end

	if battlefield and battlefield._holyRayFade then
		battlefield._holyRayFade = nil
	end
end

function playUnitEnteringSound()
	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return
	end

	if battlefield and battlefield.mode ~= "spin" then
		return
	end

	local var_99_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.unitEntering

	if var_99_0 then
		local var_99_1 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1
		local var_99_2 = loadedAssets and loadedAssets.audioBaseGain and loadedAssets.audioBaseGain.unitEntering or 1

		if var_99_0.setVolume then
			var_99_0:setVolume(var_99_1 * var_99_2)
		end

		if var_99_0.isPlaying and var_99_0:isPlaying() then
			var_99_0:stop()
		end

		var_99_0:play()
	end
end

function playWoodDropSound()
	local var_100_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.woodDrop

	if var_100_0 then
		local var_100_1 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1
		local var_100_2 = loadedAssets and loadedAssets.audioBaseGain and loadedAssets.audioBaseGain.woodDrop or 1

		if var_100_0.setVolume then
			var_100_0:setVolume(var_100_1 * var_100_2)
		end

		if var_100_0.setPitch then
			var_100_0:setPitch(1)
		end

		if var_100_0.isPlaying and var_100_0:isPlaying() then
			var_100_0:stop()
		end

		var_100_0:play()
	end
end

function scheduleSfx(arg_101_0, arg_101_1)
	if not ui then
		return
	end

	ui._sfxTimers = ui._sfxTimers or {}

	table.insert(ui._sfxTimers, {
		t = arg_101_0 or 0,
		fn = arg_101_1
	})
end

function playButtonHoverSound()
	local var_102_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.buttonHover

	if var_102_0 then
		local var_102_1 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

		if var_102_0.setVolume then
			var_102_0:setVolume(var_102_1 * 1.6)
		end

		if var_102_0.isPlaying and var_102_0:isPlaying() then
			var_102_0:stop()
		end

		var_102_0:play()
	end
end

function playButtonClickSound()
	local var_103_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.buttonClick

	if var_103_0 then
		local var_103_1 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1

		if var_103_0.setVolume then
			var_103_0:setVolume(var_103_1 * 1.6)
		end

		if var_103_0.isPlaying and var_103_0:isPlaying() then
			var_103_0:stop()
		end

		var_103_0:play()
	end
end

function playWoodDropSoundDelayed(arg_104_0)
	scheduleSfx(arg_104_0 or 0.2, playWoodDropSound)
end

function playWoodUpSound()
	local var_105_0 = loadedAssets and loadedAssets.audio and loadedAssets.audio.woodDropUp

	if var_105_0 then
		local var_105_1 = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1
		local var_105_2 = loadedAssets and loadedAssets.audioBaseGain and loadedAssets.audioBaseGain.woodDropUp or 1

		if var_105_0.setVolume then
			var_105_0:setVolume(var_105_1 * var_105_2)
		end

		if var_105_0.setPitch then
			var_105_0:setPitch(0.75)
		end

		if var_105_0.isPlaying and var_105_0:isPlaying() then
			var_105_0:stop()
		end

		var_105_0:play()
	end
end

function triggerSlotDropSound()
	if slotBgAnim and slotBgAnim._dropSfxPlayed then
		return
	end

	if slotBgAnim then
		slotBgAnim._playDropSfx = playWoodDropSound
		slotBgAnim._dropSfxPlayed = false
		slotBgAnim._dropSfxPending = true
		slotBgAnim._dropSfxT = 0
		slotBgAnim._dropSfxDelay = 2.8
	end
end

nudgeBtnAnims = {
	{
		dur = 0.3,
		active = false,
		t = 0
	},
	{
		dur = 0.3,
		active = false,
		t = 0
	},
	{
		dur = 0.3,
		active = false,
		t = 0
	}
}
slotBgSquash = {
	sy = 1,
	active = false,
	t = 0,
	sx = 1,
	dur = 0.4
}
slotBgJitter = {
	freq = 16,
	active = false,
	ampPx = 2,
	t = 0,
	x = 0,
	axis = "xy",
	dur = 0.22,
	y = 0
}
screenLineShake = {
	freq = 22,
	active = false,
	ampPx = 1.2,
	t = 0,
	x = 0,
	axis = "xy",
	dur = 0.16,
	y = 0
}

local var_0_60 = {
	minAlpha = 0.2,
	speedHz = 2.2,
	t = 0,
	active = false,
	enabled = true,
	maxAlpha = 0.65
}
local var_0_61 = {
	active = false,
	t = 0,
	grade = "normal",
	dur = 0.46,
	color = {
		1,
		1,
		1
	}
}

local function var_0_62(arg_107_0)
	if arg_107_0 == "advanced" then
		return {
			0.5,
			1,
			0.5
		}
	end

	if arg_107_0 == "rare" then
		return {
			0.3,
			0.7,
			1
		}
	end

	if arg_107_0 == "legendary" then
		return {
			1,
			0.76,
			0.16
		}
	end

	if arg_107_0 == "prism" then
		return {
			1,
			0.95,
			1
		}
	end

	return nil
end

local function var_0_63(arg_108_0)
	local var_108_0 = var_0_62(arg_108_0)

	if not var_108_0 then
		return
	end

	local var_108_1 = 0.46

	if arg_108_0 == "prism" then
		var_108_1 = 1.6
	elseif arg_108_0 == "legendary" then
		var_108_1 = 1
	elseif arg_108_0 == "rare" then
		var_108_1 = 0.8
	elseif arg_108_0 == "advanced" then
		var_108_1 = 0.65
	end

	var_0_61.active = true
	var_0_61.t = 0
	var_0_61.dur = var_108_1
	var_0_61.grade = arg_108_0
	var_0_61.color = var_108_0
end

local function var_0_64(arg_109_0, arg_109_1)
	arg_109_0 = math.max(0, math.min(1, arg_109_0 or 0))

	local var_109_0 = arg_109_1 == "prism" and 0.25 or 0.2
	local var_109_1 = 0

	if arg_109_0 < var_109_0 then
		local var_109_2 = arg_109_0 / var_109_0

		var_109_1 = var_109_2 * var_109_2 * (3 - 2 * var_109_2)
	else
		local var_109_3 = (arg_109_0 - var_109_0) / (1 - var_109_0)

		var_109_1 = 1 - var_109_3 * var_109_3 * (3 - 2 * var_109_3)
	end

	local var_109_4 = 0.35

	if arg_109_1 == "prism" then
		var_109_4 = 0.45
	elseif arg_109_1 == "legendary" then
		var_109_4 = 0.38
	elseif arg_109_1 == "rare" then
		var_109_4 = 0.28
	elseif arg_109_1 == "advanced" then
		var_109_4 = 0.2
	end

	return var_109_4 * var_109_1
end

local var_0_65 = {
	y = 0,
	t = 0,
	state = "idle",
	dropDur = slotBgAnim and slotBgAnim.dropDur or 0.85,
	bounceDur = slotBgAnim and slotBgAnim.bounceDur or 0.24,
	settleY = slotBgAnim and slotBgAnim.settleY or -6
}
local var_0_66 = {
	freq = 20,
	active = false,
	ampPx = 2,
	t = 0,
	dur = 0.22,
	jx = 0
}
local var_0_67 = {
	alpha = 0,
	active = false,
	t = 0,
	intensity = 0,
	dur = 0.34
}
local var_0_68 = 0
local var_0_69 = 0
local var_0_70 = {
	scaleFrom = 0.1,
	active = false,
	seenBanner = false,
	sustainUntilBannerEnd = false,
	pulseT = 0,
	fadeIn = 0.25,
	scaleTo = 1,
	t = 0,
	dur = 0.35
}
local var_0_71 = {
	active = true,
	won = false,
	spins = 0
}
local var_0_72 = {
	missedWaves = 0,
	guaranteePending = false,
	currentWaveHadSpin = false,
	currentWaveWon = false
}
local var_0_73

local function var_0_74()
	var_0_72 = {
		missedWaves = 0,
		guaranteePending = false,
		currentWaveHadSpin = false,
		currentWaveWon = false
	}
end

local function var_0_75()
	local var_111_0 = math.max(0, math.floor(tonumber(spinsLeft or 0) or 0))

	if var_111_0 <= 0 then
		return 0
	end

	local var_111_1 = spinCost
	local var_111_2 = coins
	local var_111_3 = nudgeSpinDiscountPending
	local var_111_4 = tonumber(spinCost or 0) or 0
	local var_111_5 = math.max(0, tonumber(coins or 0) or 0)
	local var_111_6 = math.max(0, math.floor(tonumber(freeSpinCredits or 0) or 0))
	local var_111_7 = nudgeSpinDiscountPending == true

	if lastSpinWasPaid then
		var_111_4 = var_111_4 + math.max(0, tonumber(spinCostStep or 0) or 0)
	end

	local var_111_8 = 0

	while var_111_0 > 0 do
		if var_111_6 > 0 then
			var_111_6 = var_111_6 - 1
			var_111_8 = var_111_8 + 1
			var_111_0 = var_111_0 - 1
		else
			spinCost = var_111_4
			coins = var_111_5
			nudgeSpinDiscountPending = var_111_7

			local var_111_9 = math.max(0, tonumber(var_0_73() or 0) or 0)

			if var_111_5 < var_111_9 then
				break
			end

			var_111_5 = var_111_5 - var_111_9
			var_111_8 = var_111_8 + 1
			var_111_0 = var_111_0 - 1
			var_111_4 = var_111_4 + math.max(0, tonumber(spinCostStep or 0) or 0)
			var_111_7 = false
		end
	end

	spinCost = var_111_1
	coins = var_111_2
	nudgeSpinDiscountPending = var_111_3

	return var_111_8
end

local function var_0_76(arg_112_0)
	if arg_112_0 then
		return
	end

	if not var_0_72 or not var_0_72.guaranteePending then
		return
	end

	if slot then
		local var_112_0 = var_0_75()
		local var_112_1 = math.max(1, var_112_0 + 1)

		if var_112_0 <= 0 or love.math.random() < 1 / var_112_1 then
			slot.forceWinOnce = true
			var_0_72.guaranteePending = false
		end
	end
end

local function var_0_77(arg_113_0)
	var_0_72 = var_0_72 or {}
	var_0_72.currentWaveHadSpin = true

	if arg_113_0 and arg_113_0.checked and arg_113_0.won then
		var_0_72.currentWaveWon = true
	end
end

local function var_0_78()
	var_0_72 = var_0_72 or {}

	if var_0_72.currentWaveHadSpin then
		if var_0_72.currentWaveWon then
			var_0_72.missedWaves = 0
			var_0_72.guaranteePending = false
		else
			var_0_72.missedWaves = (var_0_72.missedWaves or 0) + 1

			if var_0_72.missedWaves >= 2 then
				var_0_72.missedWaves = 0
				var_0_72.guaranteePending = true
			end
		end
	end

	var_0_72.currentWaveWon = false
	var_0_72.currentWaveHadSpin = false
end

local var_0_79
local var_0_80
local var_0_81
local var_0_82
local var_0_83

stageIntroBanner = {
	durHold = 1.5,
	active = false,
	maxH = 64,
	stage = 1,
	t = 0,
	difficulty = 1,
	durExit = 0.35,
	state = "idle",
	durEnter = 0.35
}

local function var_0_84(arg_115_0)
	return 1 - math.pow(1 - arg_115_0, 3)
end

local function var_0_85(arg_116_0)
	return arg_116_0 * arg_116_0 * arg_116_0
end

function triggerStageIntroBanner(arg_117_0, arg_117_1)
	stageIntroBanner.active = true
	stageIntroBanner.state = "enter"
	stageIntroBanner.t = 0
	stageIntroBanner.stage = arg_117_0 or battlefield and battlefield.stage or 1
	stageIntroBanner.difficulty = arg_117_1 or battlefield and battlefield.difficulty or 1
end

function var_0_49()
	if not ui or not ui.virtual then
		return
	end

	if slotBgAnim then
		slotBgAnim.y = -ui.virtual.H
		slotBgAnim.t = 0
		slotBgAnim.state = "drop"
		slotBgAnim._dropSfxPlayed = nil

		triggerSlotDropSound()
	end

	if coreBgAnim then
		coreBgAnim.y = ui.virtual.H
		coreBgAnim.t = 0
		coreBgAnim.state = "wait"
	end

	if coreNumAnim then
		coreNumAnim.x = -ui.virtual.W
		coreNumAnim.t = 0
		coreNumAnim.state = "wait"
	end

	if var_0_65 then
		var_0_65.y = -ui.virtual.H
		var_0_65.t = 0
		var_0_65.state = "wait"
	end

	if scrollIntroAnim then
		scrollIntroAnim.active = false
		scrollIntroAnim.t = 0
		scrollIntroAnim.frame = 0
		scrollIntroAnim.done = false
		scrollIntroAnim.slideState = "wait"
		scrollIntroAnim.slideY = -50
		scrollIntroAnim.slideT = 0
		scrollIntroAnim.spinCountdown = var_0_57()
		scrollIntroAnim.countdownModalPending = false
		scrollIntroAnim.countdownModalTriggered = false
	end

	ui.slot = ui.slot or {}
	ui.slot.bgAnimX = 0
	ui.slot.bgAnimY = slotBgAnim and slotBgAnim.y or 0

	if phase == "spin" then
		local var_118_0 = battlefield and battlefield.stage or 1
		local var_118_1 = battlefield and battlefield.difficulty or 1

		triggerStageIntroBanner(var_118_0, var_118_1)
	end
end

local function var_0_86(arg_119_0)
	arg_119_0 = arg_119_0 or {}

	if not ui then
		return false
	end

	if ui._coreSelect and ui._coreSelect.active then
		return true
	end

	if arg_119_0.force ~= true and not canOpenCoreSelectionCountdownModal() then
		return false
	end

	local var_119_0, var_119_1 = pcall(require, "src.game.cores")

	if not var_119_0 or not var_119_1 or not var_119_1.offer then
		return false
	end

	local var_119_2 = battlefield and battlefield.wave and battlefield.wave.id or 0
	local var_119_3 = (coreSelectionsMade or 0) + 1
	local var_119_4 = ui._coreSelectOffersCache
	local var_119_5

	if var_119_4 and var_119_4.waveId == var_119_2 and var_119_4.order == var_119_3 and var_119_4.offers then
		var_119_5 = var_119_4.offers
	else
		local var_119_6 = var_119_1.offer(3, var_119_3, hasFirstCoreUncommonGuarantee())

		var_119_5 = {
			var_119_6[1],
			var_119_6[2],
			var_119_6[3]
		}
		ui._coreSelectOffersCache = {
			waveId = var_119_2,
			order = var_119_3,
			offers = var_119_5
		}
	end

	local var_119_7 = false

	for iter_119_0 = 1, 3 do
		if var_119_5[iter_119_0] then
			var_119_7 = true

			break
		end
	end

	if not var_119_7 then
		return false
	end

	local var_119_8 = math.max(1, math.floor(tonumber(ui._coreSelectRerollCost ~= nil and ui._coreSelectRerollCost or 1) or 1))
	local var_119_9 = (coreFreeRerollsRemaining or 0) > 0 and var_119_8 > 0

	ui._coreSelect = {
		active = true,
		startT = love.timer.getTime(),
		offers = var_119_5,
		fromCountdown = arg_119_0.fromCountdown == true,
		rerollCost = var_119_9 and 0 or var_119_8,
		_paidRerollCost = var_119_8,
		_usesUpgradeFreeReroll = var_119_9
	}

	if ui._coreMsg and ui._coreMsg.typeStartT and ui._coreMsg.phase == "hold" then
		ui._coreSelect.typeElapsed = love.timer.getTime() - ui._coreMsg.typeStartT
	end

	if arg_119_0.fromCountdown == true and scrollIntroAnim then
		scrollIntroAnim.countdownModalPending = false
		scrollIntroAnim.countdownModalTriggered = true
	end

	return true
end

function canResumeDeferredCoreSelect()
	if not ui or not ui._deferredCoreSelect then
		return false
	end

	if ui._coreSelect and ui._coreSelect.active then
		return false
	end

	if slot and slot.spin and slot.spin.active then
		return false
	end

	if slot and slot.result and slot.result.winSeq and slot.result.winSeq.active then
		return false
	end

	if ui._preSpinSeq and ui._preSpinSeq.active then
		return false
	end

	if ui._shopMode or ui._stoneMode then
		return false
	end

	if ui._stoneActivated and ui._stoneActivated.active then
		return false
	end

	if ui._promotionSelect and ui._promotionSelect.active then
		return false
	end

	if ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	if battlefield then
		if battlefield.mode == "battle" or battlefield.gameOver or battlefield.classSelect then
			return false
		end

		if battlefield.imprintModal and battlefield.imprintModal.active then
			return false
		end
	end

	return true
end

function resumeDeferredCoreSelect()
	if not canResumeDeferredCoreSelect() then
		return false
	end

	return CoreSelectFlow.resume(ui, love.timer.getTime())
end

local function var_0_87(arg_122_0)
	if not slot or not arg_122_0 then
		return nil
	end

	local var_122_0, var_122_1 = slot:evaluateGrid(arg_122_0)
	local var_122_2 = {
		checked = true,
		won = var_122_0 and #var_122_0 > 0,
		winningLines = var_122_0 or {},
		symbol = var_122_1
	}
	local var_122_3 = {}
	local var_122_4, var_122_5 = pcall(require, "src.game.cores")
	local var_122_6 = {
		deferAnimation = true,
		grid = arg_122_0,
		waveId = var_0_55(),
		isPaidSpin = lastSpinWasPaid == true,
		isFirstSpin = (spinsInWave or 0) == 0,
		isFirstPaidSpin = lastSpinWasPaid == true and lastSpinWasFirstPaid == true,
		spinIndexInWave = (spinsInWave or 0) + 1,
		paidSpinIndex = lastPaidSpinIndex,
		forceJokerCell = slot._coreSpinMods and slot._coreSpinMods.forceJokerCell,
		forceJokerCells = slot._coreSpinMods and slot._coreSpinMods.forceJokerCells,
		forceCells = slot._coreSpinMods and slot._coreSpinMods.forceCells
	}
	local var_122_7

	if not var_122_2.won and var_122_4 and var_122_5 then
		if var_122_5.applyPostEvaluate then
			local var_122_8 = var_122_5.applyPostEvaluate(var_122_2, var_122_6)

			if type(var_122_8) == "table" then
				var_122_7 = var_122_8
				var_122_3._deferredCorePostEvaluatePlan = var_122_8
			elseif var_122_8 == true then
				var_122_3._preRevealCoreOutcomeChanged = true

				if slot._hiddenLuckSpinContext then
					slot._hiddenLuckSpinContext.automaticCoreOutcome = true
				end
			end
		end

		if not var_122_7 and not var_122_2.won and var_122_5.prepareFinalOutcome then
			var_122_5.prepareFinalOutcome(var_122_2, var_122_6)
		end
	end

	local var_122_9 = slot._hiddenLuckSpinContext

	if not var_122_7 and not var_122_2.won and not var_122_2._coreAutoReroll and var_122_9 and var_122_9.eligible then
		local var_122_10 = var_0_19.tryCorrection({
			context = var_122_9,
			grid = arg_122_0,
			lines = slot:getWinningLinesDefinition(),
			evaluate = function(arg_123_0)
				return slot:evaluateGrid(arg_123_0)
			end,
			protectedCells = slot:getProtectedSpinCells(),
			random = function()
				return love.math.random()
			end
		})

		if var_122_10 then
			var_122_3.wasHiddenLuckCorrection = true
			var_122_3.hiddenLuckLineKind = var_122_10.lineKind
		end
	end

	var_122_3._coreFinalOutcomePrepared = var_122_2._coreFinalOutcomePrepared
	var_122_3._coreAutoReroll = var_122_2._coreAutoReroll
	var_122_3._twistedBellRerolled = var_122_2._twistedBellRerolled

	return var_122_3
end

local function var_0_88(arg_125_0)
	local var_125_0, var_125_1 = pcall(require, "src.game.cores")

	if not var_125_0 or not var_125_1 or not var_125_1.applyPostEvaluate or not slot then
		return
	end

	local var_125_2 = {
		deferAnimation = true,
		grid = slot.grid,
		waveId = var_0_55(),
		isPaidSpin = lastSpinWasPaid == true,
		isFirstSpin = (spinsInWave or 0) == 0,
		isFirstPaidSpin = lastSpinWasPaid == true and lastSpinWasFirstPaid == true,
		spinIndexInWave = (spinsInWave or 0) + 1,
		paidSpinIndex = lastPaidSpinIndex,
		forceJokerCell = slot._coreSpinMods and slot._coreSpinMods.forceJokerCell,
		forceJokerCells = slot._coreSpinMods and slot._coreSpinMods.forceJokerCells,
		forceCells = slot._coreSpinMods and slot._coreSpinMods.forceCells
	}
	local var_125_3 = arg_125_0 and arg_125_0._deferredCorePostEvaluatePlan or nil

	if arg_125_0 then
		arg_125_0._deferredCorePostEvaluatePlan = nil
	end

	local var_125_4 = arg_125_0 and arg_125_0._corePostEvaluateComplete == true
	local var_125_5 = var_125_3

	if not var_125_5 and not var_125_4 then
		var_125_5 = var_125_1.applyPostEvaluate(arg_125_0, var_125_2)
	end

	if type(var_125_5) == "table" and var_125_5.reels and slot.startMultiReelRespin then
		local function var_125_6()
			slot:startMultiReelRespin(var_125_5.reels, {
				delay = 0,
				timing = {
					decelTime = 0.22,
					accelTime = 0.1,
					vmax = 20,
					stopAt = 0.34,
					settleTime = 0.18
				},
				twistedBellReroll = var_125_5.key == "TwistedBell"
			})
			playRollingSound()
		end

		local var_125_7 = var_125_5.inst

		if var_125_7 and ui then
			local var_125_8 = ui.coreEquipped and ui.coreEquipped.preSpin or {}

			ui._preSpinSeq = {
				phase = "init",
				active = true,
				i = 1,
				pendingPaid = false,
				t = 0,
				queue = {
					var_125_7
				},
				moveSec = var_125_8.moveSec or 0.25,
				holdSec = var_125_8.holdSec or 0.3,
				returnSec = var_125_8.returnSec or 0.25,
				shake = var_125_8.shake or {
					quantize = true,
					pixelStep = 1,
					ampPx = 2,
					freqHz = 9
				},
				onComplete = var_125_6
			}

			return true
		end

		var_125_6()

		return true
	elseif type(var_125_5) == "table" and var_125_5.col and var_125_5.newSymbol and slot.startSingleReelRespin then
		local var_125_9 = tonumber(var_125_5.col) or 2
		local var_125_10 = {}

		for iter_125_0 = 1, 3 do
			var_125_10[iter_125_0] = slot.grid and slot.grid[iter_125_0] and slot.grid[iter_125_0][var_125_9]
		end

		var_125_10[tonumber(var_125_5.row or 2) or 2] = var_125_5.newSymbol

		local function var_125_11()
			slot:startSingleReelRespin(var_125_9, var_125_10, {
				delay = 0,
				timing = {
					decelTime = 0.22,
					accelTime = 0.1,
					vmax = 20,
					stopAt = 0.34,
					settleTime = 0.18
				}
			})
			playRollingSound()
		end

		local var_125_12 = var_125_5.inst

		if var_125_12 and ui then
			local var_125_13 = ui.coreEquipped and ui.coreEquipped.preSpin or {}

			ui._preSpinSeq = {
				phase = "init",
				active = true,
				i = 1,
				pendingPaid = false,
				t = 0,
				queue = {
					var_125_12
				},
				moveSec = var_125_13.moveSec or 0.25,
				holdSec = var_125_13.holdSec or 0.3,
				returnSec = var_125_13.returnSec or 0.25,
				shake = var_125_13.shake or {
					quantize = true,
					pixelStep = 1,
					ampPx = 2,
					freqHz = 9
				},
				onComplete = var_125_11
			}

			return true
		end

		var_125_11()

		return true
	elseif var_125_5 == true then
		slot.previousWinningLines = arg_125_0 and arg_125_0.winningLines or nil

		return true
	end

	if arg_125_0 and arg_125_0.checked and not arg_125_0.won and var_125_1.prepareFinalOutcome and var_125_1.prepareFinalOutcome(arg_125_0, var_125_2) then
		return false
	end

	if var_125_4 and arg_125_0 and arg_125_0.won and var_125_1.applyWinPostEvaluate then
		var_125_1.applyWinPostEvaluate(arg_125_0, var_125_2)
	end

	return false
end

local function var_0_89(arg_128_0, arg_128_1, arg_128_2)
	if not battlefield or not battlefield.spawn then
		return
	end

	local var_128_0 = math.max(0, tonumber(arg_128_1 or 0) or 0)

	if var_128_0 <= 0 then
		return
	end

	var_0_19.recordPermanentUnits(var_128_0)

	local var_128_1 = arg_128_2

	if var_128_1 and var_128_1.grade then
		if var_128_1.grade == "prism" and var_128_1.specialJackpot5th ~= true then
			var_128_1.specialJackpot5th = true
		end

		playUnitEnteringSound()
		battlefield:spawn(arg_128_0, var_128_0, var_128_1)

		return
	end

	if var_128_1 and var_128_1.specialJackpot5th == true then
		playUnitEnteringSound()
		battlefield:spawn(arg_128_0, var_128_0, var_128_1)

		return
	end

	local var_128_2 = 0

	if slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.prismConvertChance or 0) then
		var_128_2 = math.max(0, math.min(1, slot._coreSpinMods.prismConvertChance or 0))
	end

	if var_128_2 <= 0 then
		playUnitEnteringSound()
		battlefield:spawn(arg_128_0, var_128_0, var_128_1)

		return
	end

	local var_128_3 = 0
	local var_128_4 = 0

	for iter_128_0 = 1, var_128_0 do
		if var_128_2 > love.math.random() then
			var_128_3 = var_128_3 + 1
		else
			var_128_4 = var_128_4 + 1
		end
	end

	local function var_128_5(arg_129_0)
		if not arg_129_0 then
			return nil
		end

		local var_129_0 = {}

		for iter_129_0, iter_129_1 in pairs(arg_129_0) do
			var_129_0[iter_129_0] = iter_129_1
		end

		return var_129_0
	end

	if var_128_4 > 0 then
		playUnitEnteringSound()
		battlefield:spawn(arg_128_0, var_128_4, var_128_1)
	end

	if var_128_3 > 0 then
		local var_128_6 = var_128_5(var_128_1) or {}

		var_128_6.specialJackpot5th = true

		playUnitEnteringSound()
		battlefield:spawn(arg_128_0, var_128_3, var_128_6)

		if slot and slot._coreSpinMods and not slot._coreSpinMods._stellarPulseUsed then
			local var_128_7, var_128_8 = pcall(require, "src.game.cores")

			if var_128_7 and var_128_8 and var_128_8.getActive then
				local var_128_9 = var_128_8.getActive() or {}
				local var_128_10 = love.timer.getTime and love.timer.getTime() or 0

				for iter_128_1, iter_128_2 in ipairs(var_128_9) do
					if iter_128_2 and iter_128_2.key == "StellarBlessing" then
						iter_128_2._uiTrigger = true
						iter_128_2._uiPulseT0 = var_128_10
						iter_128_2._uiPulseDur = 0.6
					end
				end
			end

			slot._coreSpinMods._stellarPulseUsed = true
		end
	end
end

local var_0_90 = 2.5

local function var_0_91()
	if var_0_45() then
		return false
	end

	local var_130_0 = battlefield and battlefield.waveTimer

	if not var_130_0 or not var_130_0.dur or var_130_0.dur <= 0 then
		return false
	end

	if var_130_0.state == "fading" then
		return true
	end

	return (var_130_0.dur or 0) - (var_130_0.t or 0) <= var_0_90
end

local var_0_92 = 0

local function var_0_93(arg_131_0)
	arg_131_0 = math.max(0, math.floor(arg_131_0 or 0))

	local var_131_0 = math.floor(arg_131_0 / 3600)
	local var_131_1 = math.floor(arg_131_0 % 3600 / 60)
	local var_131_2 = arg_131_0 % 60

	local function var_131_3(arg_132_0)
		return arg_132_0 < 10 and "0" .. tostring(arg_132_0) or tostring(arg_132_0)
	end

	return var_131_3(var_131_0) .. ":" .. var_131_3(var_131_1) .. ":" .. var_131_3(var_131_2)
end

function var_0_73()
	local var_133_0 = math.max(0, tonumber(spinCost or 0) or 0)
	local var_133_1 = 0
	local var_133_2, var_133_3 = pcall(require, "src.game.cores")

	if var_133_2 and var_133_3 and var_133_3.getSpinPriceDiscount then
		local var_133_4 = var_0_55()

		var_133_1 = var_133_1 + math.max(0, tonumber(var_133_3.getSpinPriceDiscount(var_133_4, {
			coins = coins,
			nextSpinIndex = (spinsInWave or 0) + 1,
			nextPaidSpinIndex = (paidSpinsInWave or 0) + 1
		}) or 0) or 0)
	end

	if var_133_1 > 0 then
		var_133_0 = math.floor(var_133_0 * (1 - var_133_1))

		if var_133_0 < 0 then
			var_133_0 = 0
		end
	end

	local var_133_5, var_133_6 = pcall(require, "src.game.cores")

	if var_133_5 and var_133_6 and var_133_6.getSpinPriceFlatReduction then
		local var_133_7 = var_0_55()
		local var_133_8 = math.max(0, tonumber(var_133_6.getSpinPriceFlatReduction(var_133_7, {
			coins = coins,
			pendingPaidFailure = var_0_51 ~= nil
		}) or 0) or 0)

		var_133_0 = math.max(0, var_133_0 - var_133_8)
	end

	if nudgeSpinDiscountPending then
		var_133_0 = math.max(0, var_133_0 - 50)
	end

	if var_133_1 > 0 then
		local var_133_9 = var_133_0

		if var_133_9 < 0 then
			var_133_9 = 0
		end

		return var_133_9
	end

	return var_133_0
end

local function var_0_94(arg_134_0, arg_134_1)
	if not arg_134_0 then
		return nil
	end

	local var_134_0 = (arg_134_1 and arg_134_1.level or 0) + 1

	if type(arg_134_0.prices) == "table" then
		return arg_134_0.prices[var_134_0] or arg_134_0.prices[#arg_134_0.prices] or arg_134_0.price
	end

	return arg_134_0.price
end

local function var_0_95(arg_135_0)
	if not arg_135_0 then
		return 0
	end

	local var_135_0 = math.max(1, math.floor(tonumber(arg_135_0.level or 1) or 1))

	if type(arg_135_0.prices) == "table" then
		local var_135_1 = 0

		for iter_135_0 = 1, var_135_0 do
			var_135_1 = var_135_1 + (arg_135_0.prices[iter_135_0] or arg_135_0.prices[#arg_135_0.prices] or arg_135_0.price or 0)
		end

		return var_135_1
	end

	return (arg_135_0.price or 0) * var_135_0
end

local function var_0_96(arg_136_0)
	if uiLocked then
		return false
	end

	if Tutorial and (Tutorial.isPending and Tutorial.isPending() or Tutorial.isActive and Tutorial.isActive()) then
		return false
	end

	if Tutorial and Tutorial.isRunning and Tutorial.isRunning() and (not Tutorial.canSpin or not Tutorial.canSpin()) then
		return false
	end

	if slotBgAnim and slotBgAnim.state ~= "done" then
		return false
	end

	if var_0_60 and var_0_60.active and ui and ui.slotBlink and ui.slotBlink.lockSpin ~= false then
		return false
	end

	if ui and ui._preSpinSeq and ui._preSpinSeq.active then
		return false
	end

	if slot and slot.result and slot.result.winSeq and slot.result.winSeq.active then
		return false
	end

	if battlefield.mode == "battle" or battlefield.gameOver then
		return false
	end

	if slot.spin.active then
		return false
	end

	local var_136_0 = ui and ui._stoneActivated
	local var_136_1 = var_136_0 and var_136_0.active and (var_136_0.phase == "fadein" or var_136_0.phase == "active") or false

	if not var_136_1 and (spinsLeft or 0) <= 0 then
		return false
	end

	local var_136_2 = (freeSpinCredits or 0) > 0

	if not var_136_2 and var_0_73() > coins then
		spinGoldDenyFX.active = true
		spinGoldDenyFX.t = 0
		spinGoldDenyFX.x = 0

		return false
	end

	if not var_0_52 and var_0_20 then
		var_0_20()
	end

	prepIdleT = 0

	local var_136_3 = false

	if var_136_2 then
		freeSpinCredits = (freeSpinCredits or 0) - 1

		local var_136_4 = true

		lastSpinWasPaid = false
		lastSpinWasFirstPaid = false
		lastPaidSpinCost = 0
		lastPaidSpinCoinsBefore = 0
		lastPaidSpinIndex = 0
		lastPaidSpinCostIncreaseApplied = 0
	else
		local var_136_5 = var_0_73()

		lastPaidSpinCoinsBefore = coins
		coins = coins - var_136_5

		if var_136_5 > 0 then
			addCoinPopup(-var_136_5)
		end

		lastSpinWasPaid = true
		lastSpinWasFirstPaid = (paidSpinsInWave or 0) == 0
		paidSpinsInWave = (paidSpinsInWave or 0) + 1
		lastPaidSpinCost = var_136_5
		lastPaidSpinIndex = paidSpinsInWave
		lastPaidSpinCostIncreaseApplied = 0
		nudgeSpinDiscountPending = false
	end

	if not var_136_1 then
		spinsLeft = math.max(0, (spinsLeft or 0) - 1)
	end

	slot._wave1GuaranteeArmed = false

	if battlefield and battlefield._comebackGuaranteedSpinPending then
		slot.forceWinOnce = true
		battlefield._comebackGuaranteedSpinPending = false
	end

	var_0_76(var_136_1)

	if var_0_71.active and var_0_71.spins + 1 == 3 and not var_0_71.won then
		slot.forceWinOnce = true

		local var_136_6 = battlefield and battlefield.wave and tonumber(battlefield.wave.id) or 0
		local var_136_7 = battlefield and battlefield.wave and battlefield.wave.active == true and var_136_6 or var_136_6 + 1

		slot._wave1GuaranteeArmed = var_136_7 == 1
	end

	if var_136_0 and var_136_0.active and var_136_0.probs then
		slot.forceWinOnce = true

		local var_136_8 = require("src.data.constants")

		if var_136_8 and var_136_8.unitGrades and var_136_8.unitGrades.probabilities then
			if not var_136_0._origProbs then
				var_136_0._origProbs = {}

				for iter_136_0, iter_136_1 in pairs(var_136_8.unitGrades.probabilities) do
					var_136_0._origProbs[iter_136_0] = iter_136_1
				end
			end

			for iter_136_2, iter_136_3 in pairs(var_136_0.probs) do
				var_136_8.unitGrades.probabilities[iter_136_2] = iter_136_3
			end
		end
	end

	local var_136_9 = ui and ui.slot and ui.slot.spinPressFX or {}
	local var_136_10 = tonumber(var_136_9.emulateLineIndex or 3) or 3
	local var_136_11 = {
		squash = {
			ampMul = var_136_9.squash and var_136_9.squash.ampMul or 1,
			durMul = var_136_9.squash and var_136_9.squash.durMul or 1
		},
		jitter = {
			ampMul = var_136_9.jitter and var_136_9.jitter.ampMul or 1,
			durMul = var_136_9.jitter and var_136_9.jitter.durMul or 1,
			freqMul = var_136_9.jitter and var_136_9.jitter.freqMul or 1,
			axis = var_136_9.jitter and var_136_9.jitter.axis
		},
		screenShake = {
			ampMul = var_136_9.screenShake and var_136_9.screenShake.ampMul or 1,
			durMul = var_136_9.screenShake and var_136_9.screenShake.durMul or 1,
			freqMul = var_136_9.screenShake and var_136_9.screenShake.freqMul or 1,
			axis = var_136_9.screenShake and var_136_9.screenShake.axis
		}
	}

	triggerLineHitFX(var_136_10, var_136_11)

	local var_136_12, var_136_13 = pcall(require, "src.game.cores")

	if var_136_12 and var_136_13 and var_136_13.prepareSpin then
		local var_136_14 = {
			waveId = var_0_55(),
			isPaidSpin = lastSpinWasPaid == true,
			isFirstSpin = (spinsInWave or 0) == 0,
			isFirstPaidSpin = lastSpinWasPaid == true and lastSpinWasFirstPaid == true,
			spinIndexInWave = (spinsInWave or 0) + 1,
			paidSpinIndex = lastPaidSpinIndex,
			paidCost = lastPaidSpinCost,
			spinCostStep = spinCostStep,
			coinsBeforeSpin = lastPaidSpinCoinsBefore
		}

		slot._coreSpinMods = var_136_13.prepareSpin(var_136_14)

		if slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.forceExactWinningLines or 0) and (slot._coreSpinMods.forceExactWinningLines or 0) > 0 then
			slot.sandboxNextWinLines = math.max(0, math.min(5, math.floor(slot._coreSpinMods.forceExactWinningLines)))
		end

		if slot and slot._coreSpinMods and slot._coreSpinMods.forceWinOnce == true then
			slot.forceWinOnce = true
		end

		local var_136_15 = ui and ui.coreEquipped and ui.coreEquipped.preSpin

		if var_136_15 and var_136_15.enabled ~= false then
			local var_136_16 = var_136_13.getActive and var_136_13.getActive() or {}
			local var_136_17 = {}

			if var_136_15.exclude and type(var_136_15.exclude) == "table" then
				for iter_136_4, iter_136_5 in ipairs(var_136_15.exclude) do
					var_136_17[iter_136_5] = true
				end
			end

			var_136_17.JokerSeed = true
			var_136_17.Wildcard = true
			var_136_17.OldCrown = true
			var_136_17.HarvestFlag = true

			local var_136_18 = {}

			for iter_136_6, iter_136_7 in ipairs(var_136_16 or {}) do
				if iter_136_7 and iter_136_7._uiActiveThisSpin and not var_136_17[iter_136_7.key] then
					table.insert(var_136_18, iter_136_7)
				end
			end

			if #var_136_18 > 0 then
				ui._preSpinSeq = {
					phase = "init",
					active = true,
					i = 1,
					t = 0,
					queue = var_136_18,
					moveSec = var_136_15.moveSec or 0.22,
					holdSec = var_136_15.holdSec or 0.28,
					returnSec = var_136_15.returnSec or 0.2,
					shake = var_136_15.shake or {
						quantize = true,
						pixelStep = 1,
						ampPx = 2,
						freqHz = 9
					},
					pendingPaid = lastSpinWasPaid == true
				}
			end
		end
	end

	if Tutorial and Tutorial.canSpin and Tutorial.canSpin() then
		local var_136_19 = Tutorial.getGuidedSpinKind and Tutorial.getGuidedSpinKind() or "archer"

		slot._coreSpinMods = slot._coreSpinMods or {}

		if var_136_19 == "mage_spear" then
			slot._coreSpinMods.forceCells = {
				{
					row = 1,
					col = 1,
					symbol = "S"
				},
				{
					row = 1,
					col = 2,
					symbol = "W"
				},
				{
					row = 1,
					col = 3,
					symbol = "A"
				},
				{
					row = 2,
					col = 1,
					symbol = "M"
				},
				{
					row = 2,
					col = 2,
					symbol = "S"
				},
				{
					row = 2,
					col = 3,
					symbol = "W"
				},
				{
					row = 3,
					col = 1,
					symbol = "A"
				},
				{
					row = 3,
					col = 2,
					symbol = "M"
				},
				{
					row = 3,
					col = 3,
					symbol = "S"
				}
			}
			slot.stopTimes = {
				1.45,
				1.9,
				2.35
			}
		elseif var_136_19 == "nudge_setup" then
			slot._coreSpinMods.forceCells = {
				{
					row = 1,
					col = 1,
					symbol = "S"
				},
				{
					row = 1,
					col = 2,
					symbol = "W"
				},
				{
					row = 1,
					col = 3,
					symbol = "A"
				},
				{
					row = 2,
					col = 1,
					symbol = "W"
				},
				{
					row = 2,
					col = 2,
					symbol = "A"
				},
				{
					row = 2,
					col = 3,
					symbol = "W"
				},
				{
					row = 3,
					col = 1,
					symbol = "S"
				},
				{
					row = 3,
					col = 2,
					symbol = "M"
				},
				{
					row = 3,
					col = 3,
					symbol = "M"
				}
			}
			slot.stopTimes = {
				1.25,
				1.65,
				2.05
			}
		elseif var_136_19 == "core_no_win" then
			slot._coreSpinMods.forceCells = {
				{
					row = 1,
					col = 1,
					symbol = "W"
				},
				{
					row = 1,
					col = 2,
					symbol = "S"
				},
				{
					row = 1,
					col = 3,
					symbol = "A"
				},
				{
					row = 2,
					col = 1,
					symbol = "S"
				},
				{
					row = 2,
					col = 2,
					symbol = "A"
				},
				{
					row = 2,
					col = 3,
					symbol = "W"
				},
				{
					row = 3,
					col = 1,
					symbol = "W"
				},
				{
					row = 3,
					col = 2,
					symbol = "M"
				},
				{
					row = 3,
					col = 3,
					symbol = "S"
				}
			}
			slot.stopTimes = {
				1.45,
				1.9,
				2.35
			}
		elseif var_136_19 == "post_core_archer" then
			slot._coreSpinMods.forceCells = {
				{
					row = 1,
					col = 1,
					symbol = "W"
				},
				{
					row = 1,
					col = 2,
					symbol = "S"
				},
				{
					row = 1,
					col = 3,
					symbol = "W"
				},
				{
					row = 2,
					col = 1,
					symbol = "A"
				},
				{
					row = 2,
					col = 2,
					symbol = "A"
				},
				{
					row = 2,
					col = 3,
					symbol = "A"
				},
				{
					row = 3,
					col = 1,
					symbol = "S"
				},
				{
					row = 3,
					col = 2,
					symbol = "W"
				},
				{
					row = 3,
					col = 3,
					symbol = "S"
				}
			}
			slot.stopTimes = {
				1.45,
				1.9,
				2.35
			}
		elseif var_136_19 == "post_core_spears" then
			slot._coreSpinMods.forceCells = {
				{
					row = 1,
					col = 1,
					symbol = "S"
				},
				{
					row = 1,
					col = 2,
					symbol = "A"
				},
				{
					row = 1,
					col = 3,
					symbol = "S"
				},
				{
					row = 2,
					col = 1,
					symbol = "S"
				},
				{
					row = 2,
					col = 2,
					symbol = "W"
				},
				{
					row = 2,
					col = 3,
					symbol = "S"
				},
				{
					row = 3,
					col = 1,
					symbol = "S"
				},
				{
					row = 3,
					col = 2,
					symbol = "A"
				},
				{
					row = 3,
					col = 3,
					symbol = "S"
				}
			}
			slot.stopTimes = {
				1.45,
				1.9,
				2.35
			}
		elseif var_136_19 == "warrior" then
			slot._coreSpinMods.forceCells = {
				{
					row = 1,
					col = 1,
					symbol = "A"
				},
				{
					row = 1,
					col = 2,
					symbol = "W"
				},
				{
					row = 1,
					col = 3,
					symbol = "S"
				},
				{
					row = 2,
					col = 1,
					symbol = "S"
				},
				{
					row = 2,
					col = 2,
					symbol = "W"
				},
				{
					row = 2,
					col = 3,
					symbol = "A"
				},
				{
					row = 3,
					col = 1,
					symbol = "A"
				},
				{
					row = 3,
					col = 2,
					symbol = "W"
				},
				{
					row = 3,
					col = 3,
					symbol = "S"
				}
			}
			slot.stopTimes = {
				1.45,
				1.9,
				2.35
			}
		else
			slot._coreSpinMods.forceCells = {
				{
					row = 1,
					col = 1,
					symbol = "W"
				},
				{
					row = 1,
					col = 2,
					symbol = "S"
				},
				{
					row = 1,
					col = 3,
					symbol = "W"
				},
				{
					row = 2,
					col = 1,
					symbol = "A"
				},
				{
					row = 2,
					col = 2,
					symbol = "A"
				},
				{
					row = 2,
					col = 3,
					symbol = "A"
				},
				{
					row = 3,
					col = 1,
					symbol = "S"
				},
				{
					row = 3,
					col = 2,
					symbol = "W"
				},
				{
					row = 3,
					col = 3,
					symbol = "S"
				}
			}
			slot.stopTimes = {
				1.85,
				2.55,
				3.25
			}
		end

		slot._tutorialSpin = var_136_19
	end

	local var_136_20 = battlefield and battlefield.wave and tonumber(battlefield.wave.id) or 0
	local var_136_21 = battlefield and battlefield.wave and battlefield.wave.active == true
	local var_136_22 = math.max(1, var_136_21 and var_136_20 or var_136_20 + 1)

	if var_0_52 then
		slot._hiddenLuckSpinContext = var_0_52.hiddenContext
		slot._hiddenLuckSpinContext.automaticCoreOutcome = true
	elseif lastSpinWasPaid == true then
		local var_136_23 = slot.forceWinOnce == true or type(slot.sandboxNextWinLines) == "number" or slot._tutorialSpin ~= nil
		local var_136_24 = var_136_22 >= 2 and not var_136_1 and not var_136_23

		slot._hiddenLuckSpinContext = var_0_19.beginPaidSpin(var_136_24, var_136_22)
		slot._hiddenLuckSpinContext.wave1GuaranteeArmed = slot._wave1GuaranteeArmed == true
		slot._hiddenLuckSpinContext.specialGuaranteed = var_136_23
		slot._hiddenLuckSpinContext.automaticCoreOutcome = slot._coreSpinMods and (slot._coreSpinMods.forceWinOnce == true or (slot._coreSpinMods.forceExactWinningLines or 0) > 0) or false
	else
		slot._hiddenLuckSpinContext = nil
	end

	if scrollIntroAnim and not scrollIntroAnim.countdownModalTriggered then
		local var_136_25 = math.max(0, (scrollIntroAnim.spinCountdown or 0) - 1)

		scrollIntroAnim.spinCountdown = var_136_25
		scrollIntroAnim.squashT = love.timer.getTime()

		if var_136_25 <= (ui and ui.scrollIntroAnim and ui.scrollIntroAnim.label and ui.scrollIntroAnim.label.urgentThreshold or 2) and var_136_25 > 0 then
			scrollIntroAnim.pulseStartT = love.timer.getTime()
		end

		if var_136_25 <= 0 then
			scrollIntroAnim.countdownModalPending = true

			if battlefield then
				battlefield.absorbMode = false
			end

			if drag and drag.active then
				if battlefield and battlefield.setRosterHeld and drag.ref then
					battlefield:setRosterHeld(drag.ref, false)
				end

				drag.active = false
				drag.ref = nil
			end

			if ui and ui.tooltip then
				ui.tooltip._heldRef = nil
				ui.tooltip._predActive = false
				ui.tooltip._predSrcSym = nil
				ui.tooltip._predTarget = nil
			end
		end
	end

	if ui and ui.jackpotBannerState then
		ui.jackpotBannerState.active = false
		ui.jackpotBannerState.t = 0
	end

	if ui and ui._preSpinSeq and ui._preSpinSeq.active then
		-- block empty
	else
		if Tutorial and Tutorial.onSpinStarted then
			Tutorial.onSpinStarted()
		end

		slot:startSpin()

		if slot and slot._tutorialSpin then
			slot.stopTimes = nil
		end

		playRollingSound()

		if var_0_18 and var_0_18.onSpinUsed then
			var_0_18.onSpinUsed(1)
		end

		if lastSpinWasPaid then
			local var_136_26 = slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.costStepReduction or 0) or 0
			local var_136_27 = math.max(0, (spinCostStep or 0) - var_136_26)

			lastPaidSpinCostIncreaseApplied = var_136_27
			spinCost = spinCost + var_136_27
		end
	end

	return true
end

local var_0_97 = {}
local var_0_98

function var_0_97.getGodRayShader()
	if var_0_98 then
		return var_0_98
	end

	local var_137_0 = "    extern number time;\n    extern vec4 rayColor;\n    extern number density; // Number of rays\n    extern number speed;   // Rotation speed\n    extern number pixelSize; // Pixelation factor\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        // Pixelate coordinates for that blocky feel\n        vec2 p_tc = floor(tc * pixelSize) / pixelSize;\n\n        // Adjust UV to squash vertically and SCALE UP (making the effect smaller)\n        vec2 uv = (p_tc - 0.5) * 2.5;\n        uv.y *= 2.0; // Squash vertically\n\n        // Convert to polar\n        float angle = atan(uv.y, uv.x);\n        float dist = length(uv);\n\n        // Rotation\n        float rotAngle = angle + time * speed;\n\n        // Sharp stepped rays\n        float rayValue = sin(rotAngle * density);\n        float ray = step(0.2, rayValue);\n\n        // Radial fade (adjusted for the smaller size)\n        float fade = 1.0 - smoothstep(0.0, 0.8, dist);\n\n        // ADDITIVE BLENDING SIMULATION: Boost the output color significantly\n        // This ensures it glows and stays bright even against dark backgrounds\n        vec4 finalColor = rayColor * ray * fade * 2.0;\n        finalColor.a = rayColor.a * ray * fade;\n\n        return finalColor;\n    }\n  "

	var_0_98 = love.graphics.newShader(var_137_0)

	return var_0_98
end

local var_0_99

function var_0_97.getBtnHoverOutlineShader()
	if var_0_99 then
		return var_0_99
	end

	local var_138_0 = "    extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel\n    extern vec4 outlineColor;   // RGBA\n    extern float threshold;     // alpha threshold\n    extern float radiusPx;      // 1 = 1px, 2 = 2px\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold){\n        vec2 s = texelStep;\n        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n        // Optional 2px radius: sample at 2*step\n        if (radiusPx > 1.5){\n          vec2 t = s * 2.0;\n          float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;\n          float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;\n          float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;\n          float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;\n          float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;\n          float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;\n          float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;\n          float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;\n          float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));\n          neighbor = max(neighbor, neighbor2);\n        }\n        if (neighbor > threshold){ return outlineColor; }\n      }\n      return vec4(0.0);\n    }\n  "

	var_0_99 = love.graphics.newShader(var_138_0)

	return var_0_99
end

local var_0_100

function var_0_97.getImageOutlineShader()
	if var_0_100 then
		return var_0_100
	end

	local var_139_0 = "    extern vec2 texelStep;      // texture coord offset equal to 1 screen pixel\n    extern vec4 outlineColor;   // RGBA\n    extern float threshold;     // alpha threshold\n    extern float radiusPx;      // outline radius in px (1=1px)\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold){\n        vec2 s = texelStep;\n        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n        if (radiusPx > 1.5){\n          vec2 t = s * 2.0;\n          float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;\n          float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;\n          float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;\n          float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;\n          float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;\n          float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;\n          float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;\n          float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;\n          float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));\n          neighbor = max(neighbor, neighbor2);\n        }\n        if (neighbor > threshold){ return outlineColor; }\n      }\n      return vec4(0.0);\n    }\n  "

	var_0_100 = love.graphics.newShader(var_139_0)

	return var_0_100
end

local var_0_101

function var_0_97.getRainbowOutlineShader()
	if var_0_101 then
		return var_0_101
	end

	local var_140_0 = "    extern vec2  texelStep;   // texture coord offset equal to 1 screen pixel\n    extern float threshold;  // alpha threshold\n    extern float radiusPx;   // outline radius in px\n    extern float u_time;     // elapsed seconds for color animation\n    // Prism unit outline formula (matches getPrismBorderShader in render.lua)\n    vec3 prismColor(vec2 sc, float t){\n      float p = (sc.x * 0.06 + sc.y * 0.04) + t * 1.5;\n      return vec3(\n        0.70 + 0.30 * sin(p + 0.0),\n        0.65 + 0.35 * sin(p + 2.1),\n        0.75 + 0.25 * sin(p + 4.2)\n      );\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a0 = Texel(tex, tc).a;\n      if (a0 <= threshold){\n        vec2 s = texelStep;\n        float a1 = Texel(tex, tc + vec2( s.x, 0.0)).a;\n        float a2 = Texel(tex, tc + vec2(-s.x, 0.0)).a;\n        float a3 = Texel(tex, tc + vec2(0.0,  s.y)).a;\n        float a4 = Texel(tex, tc + vec2(0.0, -s.y)).a;\n        float a5 = Texel(tex, tc + vec2( s.x,  s.y)).a;\n        float a6 = Texel(tex, tc + vec2(-s.x, -s.y)).a;\n        float a7 = Texel(tex, tc + vec2( s.x, -s.y)).a;\n        float a8 = Texel(tex, tc + vec2(-s.x,  s.y)).a;\n        float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n        if (radiusPx > 1.5){\n          vec2 t = s * 2.0;\n          float b1 = Texel(tex, tc + vec2( t.x, 0.0)).a;\n          float b2 = Texel(tex, tc + vec2(-t.x, 0.0)).a;\n          float b3 = Texel(tex, tc + vec2(0.0,  t.y)).a;\n          float b4 = Texel(tex, tc + vec2(0.0, -t.y)).a;\n          float b5 = Texel(tex, tc + vec2( t.x,  t.y)).a;\n          float b6 = Texel(tex, tc + vec2(-t.x, -t.y)).a;\n          float b7 = Texel(tex, tc + vec2( t.x, -t.y)).a;\n          float b8 = Texel(tex, tc + vec2(-t.x,  t.y)).a;\n          float neighbor2 = max(max(max(b1,b2),max(b3,b4)), max(max(b5,b6),max(b7,b8)));\n          neighbor = max(neighbor, neighbor2);\n        }\n        if (neighbor > threshold){\n          // Prism color using screen coords (same formula as prism unit border)\n          vec3 col = prismColor(sc, u_time);\n          return vec4(col, 1.0);\n        }\n      }\n      return vec4(0.0);\n    }\n  "

	var_0_101 = love.graphics.newShader(var_140_0)

	return var_0_101
end

local var_0_102

function var_0_97.getStoneSlotBackEffectShader()
	if var_0_102 then
		return var_0_102
	end

	local var_141_0 = "    extern float u_time;\n    extern vec2 u_center; // in window pixels\n    extern vec2 u_resolution;\n    extern float u_intensity;\n    // 0 = OriginStone, 1 = MileStone, 2 = BlessingStone\n    extern float u_stone_type;\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        float minDim = min(u_resolution.y, u_resolution.x);\n        vec2 uv = (sc.xy - u_center) / minDim;\n\n        float dist     = length(uv);\n        float rawAngle = atan(uv.y, uv.x);\n        float t        = u_time;\n\n        // ── Per-stone globals ──\n        // OriginStone (0) + MileStone (1): small, simple, no micro-tendrils\n        // BlessingStone (2): full organic deform\n        bool isSimple = (u_stone_type < 1.5);  // Origin or Mile\n        float warpAmp  = isSimple ? 0.45 : 1.0;\n        float microAmp = isSimple ? 0.0  : 1.0;\n\n        // ── Domain warp pass 1: large-scale organic deformation, pinned at origin ──\n        float w1 = t * 0.52;\n        float w2 = t * 0.37;\n        vec2 warpUV = uv + dist * warpAmp * vec2(\n            sin(uv.y * 2.6 + dist * 1.4 + w1) * 0.22 +\n            cos(uv.x * 3.3 - dist * 1.9 + w2) * 0.14,\n            cos(uv.x * 2.3 + dist * 1.7 - w1) * 0.18 +\n            sin(uv.y * 3.8 + dist * 0.8 + w2) * 0.12\n        );\n        float wDist0 = length(warpUV);\n\n        // ── Domain warp pass 2: medium wrinkles, pinned at origin ──\n        vec2 warpUV2 = warpUV + wDist0 * warpAmp * vec2(\n            sin(warpUV.y * 5.1 - dist * 3.2 + t * 0.81) * 0.08,\n            cos(warpUV.x * 4.7 + dist * 2.8 - t * 0.64) * 0.07\n        );\n        float wDist1 = length(warpUV2);\n\n        // ── Domain warp pass 3: fine local twist for Balatro-style curling tips ──\n        vec2 warpUV3 = warpUV2 + wDist1 * warpAmp * vec2(\n            cos(warpUV2.x * 8.3 + warpUV2.y * 3.7 - t * 1.20) * 0.04,\n            sin(warpUV2.y * 7.1 - warpUV2.x * 4.2 + t * 0.95) * 0.04\n        );\n\n        float wDist = length(warpUV3);\n        float angle = atan(warpUV3.y, warpUV3.x) + wDist * 3.4;\n\n        // ── Layer A: primary 4-arm body (3 async sub-layers) ──\n        float f1 = sin(angle * 4.0 + wDist *  8.5 + t * 2.10);\n        float f2 = sin(angle * 4.0 - wDist *  6.2 - t * 1.73 + 1.05);\n        float f3 = sin(angle * 4.0 + wDist * 11.0 + t * 2.90 + 2.09);\n        // 2-arm sub-harmonic: asymmetric weight so the 4 arms breathe unevenly\n        float fs = sin(angle * 2.0 + wDist * 4.8 - t * 1.40 + 0.52);\n        float body = f1 * 0.38 + f2 * 0.32 + f3 * 0.22 + fs * 0.28;\n\n        // ── Layer B: surface fiber texture (integer angular freq = no atan seam) ──\n        float fd1 = sin(angle * 4.0 + wDist * 18.0 + t * 5.10);\n        float fd2 = sin(angle * 8.0 - wDist * 14.0 - t * 3.80 + 1.80);\n        float fd3 = sin(angle * 4.0 + wDist * 22.0 - t * 6.20 + 0.95);\n        float fd4 = sin(angle * 8.0 + wDist * 30.0 + t * 7.50 + 3.14);\n        float fiber = fd1 * 0.35 + fd2 * 0.28 + fd3 * 0.22 + fd4 * 0.15;\n\n        // Mix body + fiber → raw signal\n        float combo = body * 0.62 + fiber * 0.38;\n        combo = combo * 0.5 + 0.5;   // remap to [0,1]\n\n        // Narrow-band threshold → wide dark gaps, sharp arm edges (~4 arms)\n        float mainShape = smoothstep(0.50, 0.80, combo);\n\n        // ── Volumetric ribbon profile ──\n        // ramp: 0 at arm center, 1 at flanks — gives Balatro-style thick glowing ribbons\n        float armCenter = 0.65;\n        float ramp = clamp(abs(combo - armCenter) * 3.2, 0.0, 1.0);\n        float softCore = exp(-ramp * ramp * 3.5);        // wide luminous core\n        float edgeRing = exp(-ramp * ramp * 14.0) * 0.6; // tight bright edge ring\n        float volumetric = mainShape * (0.55 + softCore * 0.80 + edgeRing);\n\n        // ── Layer C: micro sub-tendrils (2x warped space, finer branches) ──\n        // Computed in a separately-warped coordinate so they feel independent\n        vec2 microUV = warpUV2 * 2.1 + vec2(\n            sin(t * 0.44 + wDist1 * 2.0) * wDist1 * 0.05,\n            cos(t * 0.33 - wDist1 * 1.6) * wDist1 * 0.05\n        );\n        float mDist  = length(microUV);\n        float mAngle = atan(microUV.y, microUV.x) + mDist * 2.8;\n        float mb1 = sin(mAngle * 4.0 + mDist * 12.0 + t * 3.40);\n        float mb2 = sin(mAngle * 4.0 - mDist *  9.0 - t * 2.60 + 1.57);\n        float mb3 = sin(mAngle * 8.0 + mDist * 20.0 + t * 4.80 + 0.78);\n        float micro = (mb1 * 0.45 + mb2 * 0.35 + mb3 * 0.20) * 0.5 + 0.5;\n        float microShape = smoothstep(0.54, 0.76, micro) * 0.40 * microAmp;\n\n        float finalShape = clamp(volumetric + microShape, 0.0, 1.8);\n\n        // ── Per-stone radius scale ──\n        // Origin + Mile: tighter radius; BlessingStone: full radius\n        float radiusScale = isSimple ? 0.62 : 1.0;\n        float outerEdge   = 1.10 * radiusScale;\n        float innerEdge   = 0.30 * radiusScale;\n\n        // ── Radial fades: hollow center + soft outer edge ──\n        float innerFade = smoothstep(0.00, 0.18, dist);\n        float outerFade = smoothstep(outerEdge, innerEdge, dist);\n        finalShape *= innerFade * outerFade;\n\n        // ── Origin + Mile: suppress overall brightness for simpler look ──\n        if (isSimple) {\n            finalShape *= 0.80;\n        }\n\n        // ── Prism color (all angular multipliers = integers → no seam) ──\n        float p_val = wDist * 4.0 - rawAngle * 1.0 + t * 1.90;\n        vec3 rainbow = vec3(\n            0.5 + 0.5 * sin(p_val + 0.00),\n            0.5 + 0.5 * sin(p_val + 2.09),\n            0.5 + 0.5 * sin(p_val + 4.18)\n        );\n        // Per-arm hue shift: adjacent arms get different colour temperature\n        float ctShift = sin(rawAngle * 2.0 + t * 0.80) * 0.30;\n        rainbow = clamp(rainbow + ctShift * vec3(0.30, -0.08, 0.40), 0.0, 1.0);\n\n        // ── OriginStone: desaturate to white/silver, gentle cool tint ──\n        if (u_stone_type < 0.5) {\n            float lum = dot(rainbow, vec3(0.299, 0.587, 0.114));\n            rainbow = mix(vec3(lum), rainbow, 0.10) + vec3(0.05, 0.06, 0.12);\n            rainbow = clamp(rainbow, 0.0, 1.0);\n        }\n        // ── MileStone: tint to #367f63 green, low saturation variation ──\n        if (u_stone_type > 0.5 && u_stone_type < 1.5) {\n            float lum = dot(rainbow, vec3(0.299, 0.587, 0.114));\n            // #367f63 = (0.212, 0.498, 0.388) — blend desaturated base toward this hue\n            vec3 mileGreen = vec3(0.212, 0.498, 0.388);\n            rainbow = mix(vec3(lum) * mileGreen * 2.0, mileGreen, 0.55);\n            // Allow a subtle luminance shimmer (lum variation preserves depth)\n            rainbow *= 0.80 + 0.20 * lum;\n            rainbow = clamp(rainbow, 0.0, 1.0);\n        }\n        // ── BlessingStone: gold (#ffc300) mixed with warm white ──\n        if (u_stone_type > 1.5) {\n            float lum = dot(rainbow, vec3(0.299, 0.587, 0.114));\n            // #ffc300 = (1.0, 0.765, 0.0)\n            vec3 gold  = vec3(1.00, 0.765, 0.00);\n            vec3 warm  = vec3(1.00, 0.95,  0.80);  // soft warm white highlight\n            // Core of arm → warm white; body → gold; blend by lum so bright parts gleam\n            vec3 blessColor = mix(gold, warm, smoothstep(0.3, 0.85, lum));\n            // Keep a tiny amount of the original luminance variation for depth\n            blessColor *= 0.75 + 0.25 * lum;\n            rainbow = clamp(blessColor, 0.0, 1.0);\n        }\n\n        // Core brighter & more saturated; edges tinted cooler/darker\n        vec3 coreColor = rainbow * 2.0;\n        vec3 edgeColor = rainbow * 0.80 + vec3(0.04, 0.02, 0.14);\n        vec3 baseColor = mix(edgeColor, coreColor, softCore);\n\n        // Sparkle: 2-axis shimmer — fine fibres catch light differently\n        float shimmer = sin(wDist * 26.0 + t * 8.0) * sin(angle * 6.0 + t * 3.2);\n        shimmer = shimmer * 0.09 + 0.91;\n        // Slow pulse that makes the whole effect breathe (Balatro-style energy)\n        // Origin + Mile pulse slower and calmer; BlessingStone is more energetic\n        float pulseFreq = isSimple ? 0.9 : 1.7;\n        float pulseAmp  = isSimple ? 0.07 : 0.12;\n        float pulse = (1.0 - pulseAmp) + pulseAmp * sin(t * pulseFreq + dist * 2.0);\n        baseColor *= shimmer * pulse;\n\n        vec3 finalCol = baseColor * finalShape * u_intensity;\n        float alpha   = clamp(finalShape * u_intensity * 0.95, 0.0, 1.0);\n\n        return vec4(finalCol, alpha);\n    }\n  "

	var_0_102 = love.graphics.newShader(var_141_0)

	return var_0_102
end

local var_0_103

function var_0_97.getImageGlowShader()
	if var_0_103 then
		return var_0_103
	end

	var_0_103 = AlphaRayGlow.getShader()

	return var_0_103
end

local var_0_104

function var_0_97.getAlphaMaskTintShader()
	if var_0_104 then
		return var_0_104
	end

	local var_143_0 = "    extern vec4 tintColor; // RGBA\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a = Texel(tex, tc).a;\n      // Output solid tint color masked by source alpha\n      return vec4(tintColor.rgb, tintColor.a * a);\n    }\n  "

	var_0_104 = love.graphics.newShader(var_143_0)

	return var_0_104
end

local var_0_105

function var_0_97.getSlotPrismMaskShader()
	if var_0_105 then
		return var_0_105
	end

	local var_144_0 = "    extern float u_time;\n    extern float u_alpha;\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a = Texel(tex, tc).a * color.a * clamp(u_alpha, 0.0, 1.0);\n      float p = (sc.x * 0.055 + sc.y * 0.040) + u_time * 3.8;\n      float r = 0.64 + 0.36 * sin(p + 0.0);\n      float g = 0.64 + 0.36 * sin(p + 2.094);\n      float b = 0.64 + 0.36 * sin(p + 4.188);\n      return vec4(r, g, b, a);\n    }\n  "

	var_0_105 = love.graphics.newShader(var_144_0)

	return var_0_105
end

local var_0_106

function var_0_97.getAlphaDiscardShader()
	if var_0_106 then
		return var_0_106
	end

	var_0_106 = love.graphics.newShader("    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      float a = Texel(tex, tc).a * color.a;\n      if (a < 0.01) discard;\n      return vec4(1.0);\n    }\n  ")

	return var_0_106
end

local var_0_107

function var_0_97.getPaletteSwapShader()
	if var_0_107 then
		return var_0_107
	end

	local var_146_0 = "    extern vec4 sourceColors[5];\n    extern vec4 targetColors[5];\n    extern float threshold;\n    extern float u_mix; // Transition progress (0..1)\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        vec4 texColor = Texel(tex, tc) * color;\n        if (texColor.a < 0.01) return texColor;\n\n        for (int i = 0; i < 5; i++) {\n            if (distance(texColor.rgb, sourceColors[i].rgb) < threshold) {\n                vec3 base = texColor.rgb;\n                vec3 swapped = targetColors[i].rgb;\n                // Gradually mix between original and stone-themed neutral gray\n                return vec4(mix(base, swapped, u_mix), texColor.a);\n            }\n        }\n        return texColor;\n    }\n  "

	var_0_107 = love.graphics.newShader(var_146_0)

	return var_0_107
end

local function var_0_108()
	local var_147_0 = ui and ui.jackpotBannerState
	local var_147_1 = ui and ui.jackpotBanner

	if not var_147_0 or not var_147_1 or not var_147_0.active then
		return 0
	end

	local var_147_2 = var_147_0.t or 0
	local var_147_3 = var_147_1.fadeInSec or 0.2
	local var_147_4 = var_147_1.holdSec or 1
	local var_147_5 = var_147_1.fadeOutSec or 0.5
	local var_147_6 = 1

	if var_147_2 < var_147_3 then
		var_147_6 = math.max(0, math.min(1, var_147_2 / math.max(0.0001, var_147_3)))
	elseif var_147_2 < var_147_3 + var_147_4 then
		var_147_6 = 1
	else
		local var_147_7 = (var_147_2 - var_147_3 - var_147_4) / math.max(0.0001, var_147_5)

		var_147_6 = math.max(0, math.min(1, 1 - var_147_7))
	end

	if var_147_6 <= 0 then
		return 0
	end

	local var_147_8 = var_147_1.machineShake or {
		quantize = true,
		pixelStep = 1,
		ampPx = 2,
		freqHz = 2.8
	}
	local var_147_9 = math.max(0, tonumber(var_147_8.ampPx or 0) or 0)
	local var_147_10 = tonumber(var_147_8.freqHz or 0) or 0

	if var_147_9 <= 0 or var_147_10 <= 0 then
		return 0
	end

	local var_147_11 = math.sin(2 * math.pi * var_147_10 * var_147_2) * var_147_9 * var_147_6

	if var_147_8.quantize ~= false then
		local var_147_12 = math.max(1, math.floor((var_147_8.pixelStep or 1) + 0))

		var_147_11 = var_147_12 * math.floor(var_147_11 / var_147_12 + 0.5)
	end

	return math.floor(var_147_11 + 0.5)
end

local var_0_109

function var_0_97.getPrismFoilShader()
	if var_0_109 then
		return var_0_109
	end

	local var_148_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for fonts leave zeros to use tc\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color; // includes source alpha\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      return vec4(outRGB, alpha);\n    }\n  "

	var_0_109 = love.graphics.newShader(var_148_0)

	return var_0_109
end

local function var_0_110()
	if var_0_20 then
		var_0_20()
	end

	var_0_78()
	var_0_19.onWaveStart()

	spinsInWave = 0
	paidBought = 0
	paidSpinsInWave = 0
	spinCost = 100
	spinsLeft = 6
	lastSpinWasPaid = false
	lastSpinWasFirstPaid = false
	lastPaidSpinCost = 0
	lastPaidSpinCoinsBefore = 0
	lastPaidSpinIndex = 0
	lastPaidSpinCostIncreaseApplied = 0

	if var_0_18 and var_0_18.onRoundStart then
		var_0_18.onRoundStart()
	end

	if ui then
		ui._nudgeUsedWaveId = nil
		ui._nudgeUsedSpinWaveId = nil
		ui._nudgeUsedSpinIndex = nil
		ui._nudgeBonusWaveId = nil
		ui._nudgeBonusCount = 0
	end
end

local function var_0_111()
	return var_0_55()
end

local function var_0_112()
	if not slot or not slot.reels or not ui or not ui.slot then
		return false
	end

	for iter_151_0 = 1, ui.slot.cols or 0 do
		local var_151_0 = slot.reels[iter_151_0]
		local var_151_1 = var_151_0 and var_151_0.nudge

		if var_151_1 and var_151_1.active then
			return true
		end
	end

	return false
end

local function var_0_113()
	if not ui or not slot or not battlefield then
		return false, "no_state"
	end

	if battlefield.imprintModal and battlefield.imprintModal.active then
		return false, "modal"
	end

	if ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false, "pause"
	end

	if battlefield.mode == "battle" then
		return false, "battle"
	end

	if slot.spin and slot.spin.active then
		return false, "spinning"
	end

	if var_0_112() then
		return false, "nudge_anim"
	end

	if slot.result and slot.result.winSeq and slot.result.winSeq.active then
		return false, "win_seq"
	end

	if (spinsInWave or 0) < 1 then
		return false, "need_spin"
	end

	local var_152_0 = var_0_111()

	if (ui._nudgeUsedSpinWaveId or -1) == var_152_0 and (ui._nudgeUsedSpinIndex or -1) == (spinsInWave or 0) then
		return false, "used_this_spin"
	end

	local var_152_1 = 0

	if (ui._nudgeBonusWaveId or -1) == var_152_0 then
		var_152_1 = math.max(0, math.floor(tonumber(ui._nudgeBonusCount or 0) or 0))
	end

	if (ui._nudgeUsedWaveId or -1) == var_152_0 and var_152_1 <= 0 then
		return false, "used_this_wave"
	end

	return true, nil
end

local var_0_114
local var_0_115

function handleNudgeComplete(arg_153_0, arg_153_1)
	if var_0_51 and var_0_115 then
		var_0_115(arg_153_1 == true, arg_153_0, arg_153_1 == true and "nudge" or "failure")
	end

	local var_153_0, var_153_1 = pcall(require, "src.game.cores")

	if var_153_0 and var_153_1 and var_153_1.onNudgeComplete then
		local var_153_2 = var_0_111()

		if arg_153_1 == true and var_153_1.applyWinPostEvaluate then
			var_153_1.applyWinPostEvaluate(arg_153_0, {
				isNudgeWin = true,
				waveId = var_153_2,
				grid = slot and slot.grid,
				isPaidSpin = lastSpinWasPaid == true
			})
		end

		local var_153_3 = var_153_1.onNudgeComplete(arg_153_0, {
			waveId = var_153_2,
			spinWaveId = var_0_55(),
			spinKey = tostring(var_0_55()) .. ":" .. tostring(spinsInWave or 0)
		})

		if var_153_3 and var_153_3.refundNudge == true and ui then
			if (ui._nudgeBonusWaveId or -1) ~= var_153_2 then
				ui._nudgeBonusWaveId = var_153_2
				ui._nudgeBonusCount = 0
			end

			ui._nudgeBonusCount = math.max(0, math.floor(tonumber(ui._nudgeBonusCount or 0) or 0)) + 1
		end

		if var_0_114 then
			var_0_114(var_153_3)
		end
	end

	if arg_153_1 == true then
		return
	end

	if var_0_17 and var_0_17.getNudgeMissDiscountEnabled and var_0_17.getNudgeMissDiscountEnabled() then
		nudgeSpinDiscountPending = true
	end
end

local var_0_116

function addCoinPopup(arg_154_0)
	for iter_154_0, iter_154_1 in ipairs(coinPopups) do
		if iter_154_1.t < 0.5 then
			iter_154_1.amt = iter_154_1.amt + arg_154_0
			iter_154_1.t = 0

			return
		end
	end

	table.insert(coinPopups, {
		yOff = 0,
		t = 0,
		dur = 1.35,
		amt = arg_154_0
	})
end

function addJungsuPopup(arg_155_0)
	for iter_155_0, iter_155_1 in ipairs(jungsuPopups) do
		if iter_155_1.t < 0.5 then
			iter_155_1.amt = iter_155_1.amt + arg_155_0
			iter_155_1.t = 0

			return
		end
	end

	table.insert(jungsuPopups, {
		dur = 1.35,
		t = 0,
		amt = arg_155_0
	})
end

function var_0_114(arg_156_0)
	if not arg_156_0 then
		return
	end

	local var_156_0 = math.max(0, math.floor(tonumber(arg_156_0.essence or 0) or 0))

	if var_156_0 > 0 then
		jungsu = (jungsu or 0) + var_156_0

		if ui then
			ui.jungsuBalanceTarget = jungsu
		end

		addJungsuPopup(var_156_0)

		if var_0_18 and var_0_18.onEssenceChange then
			var_0_18.onEssenceChange(jungsu)
		end
	end

	local var_156_1 = math.max(0, math.floor(tonumber(arg_156_0.goldRefund or 0) or 0))

	if var_156_1 > 0 then
		coins = math.max(0, (coins or 0) + var_156_1)

		addCoinPopup(var_156_1)
	end

	local var_156_2 = math.max(0, math.floor(tonumber(arg_156_0.spinCostRollback or 0) or 0))

	if var_156_2 > 0 then
		spinCost = math.max(0, (spinCost or 0) - var_156_2)
	end

	local var_156_3 = math.max(0, math.floor(tonumber(arg_156_0.bonusNudge or 0) or 0))

	if var_156_3 > 0 and ui then
		local var_156_4 = var_0_111()

		if (ui._nudgeBonusWaveId or -1) ~= var_156_4 then
			ui._nudgeBonusWaveId = var_156_4
			ui._nudgeBonusCount = 0
		end

		ui._nudgeBonusCount = math.max(0, math.floor(tonumber(ui._nudgeBonusCount or 0) or 0)) + var_156_3
	end

	if arg_156_0.freeShopReroll == true and ui then
		ui._freeRerollPending = true
	end

	if arg_156_0.extraSpawnSym and battlefield and battlefield.spawn then
		local var_156_5

		if arg_156_0.extraSpawnNoAbsorbEssence == true then
			var_156_5 = {
				noAbsorbEssence = true
			}
		end

		if playUnitEnteringSound then
			playUnitEnteringSound()
		end

		var_0_19.recordPermanentUnits(1)
		battlefield:spawn(arg_156_0.extraSpawnSym, 1, var_156_5)
	end
end

local function var_0_117(arg_157_0, arg_157_1)
	local var_157_0, var_157_1 = pcall(require, "src.game.cores")

	if var_157_0 and var_157_1 and var_157_1.onSpinResult then
		local var_157_2 = var_157_1.onSpinResult(arg_157_0, arg_157_1 or {})

		var_0_114(var_157_2)
	end
end

function var_0_115(arg_158_0, arg_158_1, arg_158_2)
	local var_158_0 = var_0_51

	if not var_158_0 then
		return false
	end

	var_0_51 = nil

	local var_158_1 = arg_158_1 or var_158_0.result or {
		checked = true,
		won = arg_158_0 == true,
		winningLines = {}
	}

	var_158_1.checked = true
	var_158_1.won = arg_158_0 == true

	var_0_117(var_158_1, var_158_0.coreContext)
	var_0_19.finalizePaidSpinOutcome(var_158_0.hiddenContext, arg_158_0 == true, arg_158_2)

	if arg_158_0 and var_158_0.hiddenContext and var_158_0.hiddenContext.wave1GuaranteeArmed then
		var_0_19.resetDebtAfterWave1Guarantee()
	end

	if not arg_158_0 then
		local var_158_2 = econ.spins and econ.spins.refundOnFail or 0

		if var_158_2 and var_158_2 > 0 then
			coins = math.max(0, coins + var_158_2)

			addCoinPopup(var_158_2)
		end
	end

	return true
end

function var_0_20()
	if var_0_51 then
		return var_0_115(false, var_0_51.result, "failure")
	end

	if var_0_52 then
		local var_159_0 = var_0_52

		var_0_52 = nil
		var_0_51 = {
			hiddenContext = var_159_0.hiddenContext,
			coreContext = var_159_0.coreContext,
			result = var_159_0.result
		}

		return var_0_115(false, var_159_0.result, "failure")
	end

	return false
end

local function var_0_118(arg_160_0)
	local var_160_0 = lastSpinWasPaid == true
	local var_160_1 = var_0_52
	local var_160_2 = var_160_1 and var_160_1.hiddenContext or slot and slot._hiddenLuckSpinContext
	local var_160_3 = var_160_0 or var_160_1 ~= nil
	local var_160_4 = var_160_1 and var_160_1.coreContext or {
		grid = slot and slot.grid,
		waveId = var_0_55(),
		isPaidSpin = var_160_0,
		isFirstSpin = (spinsInWave or 0) == 0,
		isFirstPaidSpin = var_160_0 and lastSpinWasFirstPaid == true,
		spinIndexInWave = (spinsInWave or 0) + 1,
		paidSpinIndex = lastPaidSpinIndex,
		spinKey = tostring(var_0_55()) .. ":" .. tostring((spinsInWave or 0) + 1),
		paidCost = lastPaidSpinCost,
		spinCostIncreaseApplied = lastPaidSpinCostIncreaseApplied
	}

	var_160_4.grid = slot and slot.grid

	if arg_160_0 and arg_160_0._coreAutoReroll then
		local var_160_5, var_160_6 = pcall(require, "src.game.cores")

		if var_160_5 and var_160_6 and var_160_6.finishSpinModifiers then
			var_160_6.finishSpinModifiers()
		end

		if var_160_3 then
			var_0_52 = {
				hiddenContext = var_160_2,
				coreContext = var_160_4,
				result = arg_160_0
			}
		else
			var_0_117(arg_160_0, var_160_4)
		end

		return "autoReroll"
	end

	if var_160_3 then
		var_160_4.isPaidSpin = true

		if arg_160_0 and arg_160_0.checked and not arg_160_0.won then
			local var_160_7, var_160_8 = pcall(require, "src.game.cores")

			if var_160_7 and var_160_8 and var_160_8.onVisibleSpinLoss then
				var_0_114(var_160_8.onVisibleSpinLoss(arg_160_0, var_160_4))
			end
		end

		var_0_51 = {
			hiddenContext = var_160_2,
			coreContext = var_160_4,
			result = arg_160_0
		}
		var_0_52 = nil

		if arg_160_0 and arg_160_0.won then
			local var_160_9 = "natural"

			if arg_160_0.wasHiddenLuckCorrection then
				var_160_9 = "correction"
			elseif var_160_2 and var_160_2.automaticCoreOutcome or arg_160_0._corePostEvaluateComplete then
				var_160_9 = "core"
			elseif var_160_2 and var_160_2.specialGuaranteed then
				var_160_9 = "special"
			end

			var_0_115(true, arg_160_0, var_160_9)
		else
			local var_160_10, var_160_11 = pcall(require, "src.game.cores")

			if var_160_10 and var_160_11 and var_160_11.finishSpinModifiers then
				var_160_11.finishSpinModifiers()
			end
		end
	else
		var_0_117(arg_160_0, var_160_4)
	end

	if arg_160_0 and arg_160_0.won and slot and slot._wave1GuaranteeArmed then
		var_0_19.resetDebtAfterWave1Guarantee()
	end

	return "complete"
end

function addHPPopup(arg_161_0)
	table.insert(hpPopups, {
		dur = 1.35,
		t = 0,
		amt = arg_161_0
	})
end

local function var_0_119(arg_162_0, arg_162_1, arg_162_2)
	return math.max(arg_162_1, math.min(arg_162_2, arg_162_0))
end

function triggerLineHitFX(arg_163_0, arg_163_1)
	local var_163_0 = tonumber(arg_163_0 or 3) or 3
	local var_163_1 = ui and ui.slot and ui.slot.lineHitSquash or {
		dur = 0.4,
		amp = 0.06
	}

	slotBgSquash.active = true
	slotBgSquash.t = 0
	slotBgSquash.dur = var_163_1.dur or 0.4

	local var_163_2 = 1

	if var_163_1.ampByLine and type(var_163_1.ampByLine) == "table" then
		var_163_2 = tonumber(var_163_1.ampByLine[var_163_0] or 1) or 1
	end

	local var_163_3 = arg_163_1 and arg_163_1.squash and arg_163_1.squash.ampMul or 1
	local var_163_4 = arg_163_1 and arg_163_1.squash and arg_163_1.squash.durMul or 1

	slotBgSquash.amp = (var_163_1.amp or 0.06) * var_163_2 * var_163_3
	slotBgSquash.dur = math.max(0.01, slotBgSquash.dur * var_163_4)

	local var_163_5 = var_163_1.shake or {}

	slotBgJitter.active = true
	slotBgJitter.t = 0

	local var_163_6 = arg_163_1 and arg_163_1.jitter and arg_163_1.jitter.durMul or 1
	local var_163_7 = arg_163_1 and arg_163_1.jitter and arg_163_1.jitter.freqMul or 1

	slotBgJitter.dur = math.max(0.01, (var_163_5.dur or 0.22) * var_163_6)
	slotBgJitter.freq = math.max(0.01, (var_163_5.freq or 16) * var_163_7)
	slotBgJitter.axis = arg_163_1 and arg_163_1.jitter and arg_163_1.jitter.axis or var_163_5.axis or "xy"

	local var_163_8 = 1

	if var_163_5.byLine and type(var_163_5.byLine) == "table" then
		var_163_8 = tonumber(var_163_5.byLine[var_163_0] or 1) or 1
	end

	local var_163_9 = arg_163_1 and arg_163_1.jitter and arg_163_1.jitter.ampMul or 1

	slotBgJitter.ampPx = (var_163_5.ampPx or 2) * var_163_8 * var_163_9

	local var_163_10 = var_163_1.screenShake or {}
	local var_163_11 = 1

	if var_163_10.byLine and type(var_163_10.byLine) == "table" then
		var_163_11 = tonumber(var_163_10.byLine[var_163_0] or 1) or 1
	end

	local var_163_12 = arg_163_1 and arg_163_1.screenShake and arg_163_1.screenShake.durMul or 1
	local var_163_13 = arg_163_1 and arg_163_1.screenShake and arg_163_1.screenShake.freqMul or 1
	local var_163_14 = arg_163_1 and arg_163_1.screenShake and arg_163_1.screenShake.ampMul or 1

	screenLineShake.active = true
	screenLineShake.t = 0
	screenLineShake.dur = math.max(0.01, (var_163_10.dur or screenLineShake.dur or 0.16) * var_163_12)
	screenLineShake.freq = math.max(0.01, (var_163_10.freq or screenLineShake.freq or 22) * var_163_13)
	screenLineShake.axis = arg_163_1 and arg_163_1.screenShake and arg_163_1.screenShake.axis or var_163_10.axis or screenLineShake.axis or "xy"
	screenLineShake.ampPx = (var_163_10.ampPx or screenLineShake.ampPx or 1.2) * var_163_11 * var_163_14
	screenLineShake.x, screenLineShake.y = 0, 0
end

function love.load(arg_164_0)
	var_0_27("love.load start")

	if setWindowsBorderlessCaptureStyle and love.window and love.window.getMode then
		local var_164_0, var_164_1, var_164_2, var_164_3 = pcall(love.window.getMode)
		local var_164_4 = love.window.getFullscreen and love.window.getFullscreen() or false

		if var_164_0 and var_164_3 and var_164_3.borderless and not var_164_4 then
			local var_164_5, var_164_6, var_164_7, var_164_8 = getBorderlessDesktopArea()

			if not setWindowsBorderlessCaptureStyle(true, var_164_5, var_164_6, var_164_7, var_164_8) then
				WindowsBorderlessCaptureState.retryFrames = 60
			end
		end
	end

	love.graphics.setDefaultFilter("nearest", "nearest", 1)

	ui = var_0_8.init()

	var_0_27("ui init done")

	_G.ui = ui

	if var_0_16 and var_0_16.setUI then
		var_0_16.setUI(ui)
	end

	local var_164_9 = require("src.save").load()

	var_0_27("save load done")

	local var_164_10 = var_0_25(arg_164_0)

	if var_164_9 then
		if var_164_9.originite and var_0_16.setOriginiteAmount then
			var_0_16.setOriginiteAmount(var_164_9.originite)
		end

		if var_164_9.upgrades and var_0_17.setUpgradeState then
			var_0_17.setUpgradeState(var_164_9.upgrades)
		end

		if var_164_9.unlockedStages and var_0_16.stageSelect then
			var_0_16.stageSelect.unlockedStages = var_164_9.unlockedStages
			var_0_16.stageSelect.newStages = var_0_16.stageSelect.newStages or {}

			if var_164_9.newStages then
				var_0_16.stageSelect.newStages = var_164_9.newStages
			else
				for iter_164_0 = 2, 3 do
					if var_164_9.unlockedStages[iter_164_0] then
						var_0_16.stageSelect.newStages[iter_164_0] = true
					end
				end
			end
		end

		if var_164_9.unlockedDifficulties and var_0_16.stageSelect then
			var_0_16.stageSelect.unlockedDifficulties = var_164_9.unlockedDifficulties
		end

		if var_164_9.clearedDifficulties and var_0_16.stageSelect then
			var_0_16.stageSelect.clearedDifficulties = var_164_9.clearedDifficulties
		end

		if type(var_164_9.originiteFirstReachedGates) == "table" then
			OriginiteFirstReachedGates = var_164_9.originiteFirstReachedGates
		end

		if var_164_9.settings then
			ui.menuSettings = ui.menuSettings or {}

			if var_164_9.settings.displayMode then
				ui.menuSettings.displayMode = var_164_9.settings.displayMode
			end

			if var_164_9.settings.masterVolume then
				ui.menuSettings.masterVolume = var_164_9.settings.masterVolume
			end

			if var_164_9.settings.sfxVolume then
				ui.menuSettings.sfxVolume = var_164_9.settings.sfxVolume
			end

			if var_164_9.settings.bgmVolume then
				ui.menuSettings.bgmVolume = var_164_9.settings.bgmVolume
			end

			if var_164_9.settings.language then
				ui.menuSettings.language = var_164_9.settings.language
				_G.currentGameLang = var_164_9.settings.language
			end

			if var_164_9.settings.tutorialEnabled ~= nil then
				ui.menuSettings.tutorialEnabled = var_164_9.settings.tutorialEnabled == true
			end

			if love.audio and love.audio.setVolume then
				love.audio.setVolume(ui.menuSettings.masterVolume or 1)
			end
		end
	else
		ui.menuSettings = ui.menuSettings or {}
		ui.menuSettings.displayMode = "borderless"
	end

	ui.menuSettings = ui.menuSettings or {}

	local var_164_11 = love.system and love.system.getOS and love.system.getOS() or nil

	if var_0_4.usesBorderlessPresentation(ui.menuSettings.displayMode, var_164_11) and setWindowsBorderlessCaptureStyle and (not WindowsBorderlessCaptureState or not WindowsBorderlessCaptureState.active) then
		ensureWindowsBorderlessCaptureStyle(false)
	end

	if not ui.menuSettings.language then
		ui.menuSettings.language = var_164_10
	end

	_G.currentGameLang = ui.menuSettings.language or var_164_10 or "en"

	if var_0_8 and var_0_8.reloadLanguageFonts then
		var_0_8.reloadLanguageFonts(ui)
	end

	if Render2 and Render2.reloadLanguageFonts then
		Render2.reloadLanguageFonts(ui)
	end

	if var_0_17 and var_0_17.reloadLanguageFonts then
		var_0_17.reloadLanguageFonts(ui)
	end

	if var_0_16 and var_0_16.reloadFonts then
		var_0_16.reloadFonts()
	end

	econ = var_0_5.economy or {}
	coins = var_0_39()
	jungsu = 0
	displayJungsu = jungsu
	jungsuAnim.accum = 0
	spinsInWave = 0
	spinsLeft = 6
	paidBought = 0
	paidSpinsInWave = 0
	spinCost = econ and econ.spins and econ.spins.paidStartCost or 100
	spinCostStep = econ and econ.spins and econ.spins.paidCostStep or 50
	lastSpinWasPaid = false
	lastSpinWasFirstPaid = false
	lastPaidSpinCost = 0
	lastPaidSpinCoinsBefore = 0
	lastPaidSpinIndex = 0
	lastPaidSpinCostIncreaseApplied = 0
	lastSpinWasFirstPaid = false
	freeSpinCredits = 0
	nudgeSpinDiscountPending = false
	spinCount = 0
	coreSelectionsMade = 0
	coreFreeRerollsRemaining = math.max(0, math.floor(tonumber(var_0_41()) or 0))
	coinPopups = {}
	jungsuPopups = {}
	hpPopups = {}

	if ui then
		ui._coinPopupsActive = false
		ui._coreSelectRerollCost = nil
	end

	var_0_71 = {
		active = true,
		won = false,
		spins = 0
	}

	var_0_19.reset()

	_G.__hiddenLuckDebug = var_0_19.getState()
	var_0_51 = nil
	var_0_52 = nil
	phase = "menu"

	if waveTimer then
		waveTimer.t = 0
		waveTimer.state = "countdown"
		waveTimer.fadeT = 0
		waveTimer.appearT = 0
	end

	ui.pauseOverlayState = {
		v = 0,
		settingsMode = false,
		active = false,
		y = ui and ui.pauseOverlay and ui.pauseOverlay.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	}

	if ui._preSpinSeq then
		ui._preSpinSeq = nil
	end

	local var_164_12, var_164_13 = pcall(require, "src.game.cores")

	if var_164_12 and var_164_13 and var_164_13.reset then
		var_164_13.reset()
	end

	ui.jungsuBalance = displayJungsu
	ui.jungsuBalanceTarget = jungsu

	local var_164_14 = ui and ui.slotBlink or nil

	if var_164_14 then
		var_0_60.enabled = var_164_14.enabled ~= false

		if tonumber(var_164_14.speedHz or 0) and var_164_14.speedHz > 0 then
			var_0_60.speedHz = var_164_14.speedHz
		end

		if tonumber(var_164_14.minAlpha or 0) then
			var_0_60.minAlpha = var_164_14.minAlpha
		end

		if tonumber(var_164_14.maxAlpha or 0) then
			var_0_60.maxAlpha = var_164_14.maxAlpha
		end

		if var_164_14.color and type(var_164_14.color) == "table" then
			var_0_60.color = var_164_14.color
		end
	end

	if coreBgAnim and ui and ui.coreBackground and ui.coreBackground.riseDur then
		coreBgAnim.riseDur = ui.coreBackground.riseDur
	end

	if ui and ui.coreBackgroundNumber then
		if ui.coreBackgroundNumber.slideDur then
			coreNumAnim.slideDur = ui.coreBackgroundNumber.slideDur
		end

		if ui.coreBackgroundNumber.fromX then
			coreNumAnim.fromX = ui.coreBackgroundNumber.fromX
		else
			coreNumAnim.fromX = -32
		end

		if ui.coreBackgroundNumber.startAfter then
			coreNumAnim.startAfter = ui.coreBackgroundNumber.startAfter
		end

		if ui.coreBackgroundNumber.startDelay then
			coreNumAnim.startDelay = ui.coreBackgroundNumber.startDelay
		end

		coreNumAnim.x = coreNumAnim.fromX or -ui.virtual.W
	else
		coreNumAnim.fromX = -32
		coreNumAnim.x = coreNumAnim.fromX
	end

	if ui and ui.font then
		love.graphics.setFont(ui.font)
	end

	ui.infoOverlayState = ui.infoOverlayState or {
		v = 0,
		y = ui and ui.infoOverlay and ui.infoOverlay.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	}
	ui.itemInfoOverlayState = ui.itemInfoOverlayState or {
		v = 0,
		y = ui and ui.itemInfoOverlay and ui.itemInfoOverlay.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	}
	ui.shopOverlayState = ui.shopOverlayState or {
		v = 0,
		y = ui and ui.infoOverlay and ui.infoOverlay.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	}
	ui.pauseOverlayState = ui.pauseOverlayState or {
		v = 0,
		settingsMode = false,
		active = false,
		y = ui and ui.pauseOverlay and ui.pauseOverlay.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	}

	local var_164_15 = "src/sprites/background/cursor.png"
	local var_164_16 = love.system and love.system.getOS and love.system.getOS() or nil

	if love.filesystem.getInfo(var_164_15) then
		cursorImage = love.graphics.newImage(var_164_15)

		cursorImage:setFilter("nearest", "nearest")

		if var_164_16 == "Linux" and love.image and love.image.newImageData then
			local var_164_17, var_164_18 = pcall(love.image.newImageData, var_164_15)

			if var_164_17 and var_164_18 then
				_linuxGameCursorImageData = var_164_18
				_linuxGameCursorAppliedScale = nil
			end
		end

		if var_164_16 == "OS X" then
			pcall(function()
				if love.mouse.newCursor and love.image then
					local var_165_0 = love.image.newImageData(16, 16)

					_blankCursor = love.mouse.newCursor(var_165_0, 0, 0)
				end
			end)
		end

		if _blankCursor then
			pcall(love.mouse.setCursor, _blankCursor)
		end

		love.mouse.setVisible(false)

		local var_164_19 = cursorImage:getWidth()
		local var_164_20 = cursorImage:getHeight()
		local var_164_21
		local var_164_22

		if ui and ui.cursor then
			var_164_21 = ui.cursor.hotspotX
			var_164_22 = ui.cursor.hotspotY
		end

		if var_164_21 == nil or var_164_22 == nil then
			var_164_21 = math.floor((var_164_19 - 1) / 2)
			var_164_22 = math.floor((var_164_20 - 1) / 2)
			var_164_21 = var_164_21 - 2

			if var_164_21 < 0 then
				var_164_21 = 0
			end

			if var_164_21 > var_164_19 - 1 then
				var_164_21 = var_164_19 - 1
			end
		end

		cursorHotspotX = var_164_21
		cursorHotspotY = var_164_22
		ui.cursor = ui.cursor or {}
		ui.cursor.spriteW = var_164_19
		ui.cursor.spriteH = var_164_20

		if ui.cursor.hotspotX == nil then
			ui.cursor.hotspotX = var_164_21
		end

		if ui.cursor.hotspotY == nil then
			ui.cursor.hotspotY = var_164_22
		end

		if var_164_16 == "Linux" and _linuxGameCursorImageData then
			cursorImage = nil

			if applyLinuxGameCursorHardware then
				applyLinuxGameCursorHardware()
			end
		end
	else
		love.mouse.setVisible(true)
	end

	ui.firemanShake = ui.firemanShake or {
		freq = 18,
		active = false,
		t = 0,
		ampPx = 2,
		dur = 0,
		jx = 0
	}

	local var_164_23 = ui.heartShake or {}

	var_0_66.active = false
	var_0_66.t = 0
	var_0_66.dur = var_164_23.dur or var_0_66.dur
	var_0_66.ampPx = var_164_23.ampPx or var_0_66.ampPx
	var_0_66.freq = var_164_23.freq or var_0_66.freq
	var_0_66.jx = 0
	canvas = love.graphics.newCanvas(ui.virtual.W, ui.virtual.H)

	canvas:setFilter("nearest", "nearest")
	var_0_27("main canvas created")

	slotBgAnim.y = -ui.virtual.H
	slotBgAnim.t = 0
	slotBgAnim.state = "drop"
	slotBgAnim._dropSfxPlayed = nil

	triggerSlotDropSound()

	coreBgAnim.y = ui.virtual.H
	coreBgAnim.t = 0
	coreBgAnim.state = "wait"
	coreNumAnim.x = -ui.virtual.W
	coreNumAnim.t = 0
	coreNumAnim.state = "wait"
	var_0_65.y = -ui.virtual.H
	var_0_65.t = 0
	var_0_65.state = "wait"
	ui.slot = ui.slot or {}
	ui.slot.bgAnimX = 0
	ui.slot.bgAnimY = slotBgAnim.y or -ui.virtual.H

	local var_164_24 = "src/sprites/background/mainbackground/mainbackground.png"

	if love.filesystem.getInfo(var_164_24) then
		backgroundMainImage = love.graphics.newImage(var_164_24)

		backgroundMainImage:setFilter("nearest", "nearest")
	end

	local var_164_25 = "src/sprites/background/menu/settingbar.png"

	if love.filesystem.getInfo(var_164_25) then
		backgroundSettingBarImage = love.graphics.newImage(var_164_25)

		backgroundSettingBarImage:setFilter("nearest", "nearest")
	end

	local var_164_26 = "src/sprites/background/mainbackground/mainbackgroundpaper.png"

	if love.filesystem.getInfo(var_164_26) then
		backgroundMainPaperImage = love.graphics.newImage(var_164_26)

		backgroundMainPaperImage:setFilter("nearest", "nearest")

		local var_164_27, var_164_28 = pcall(love.image.newImageData, var_164_26)

		if var_164_27 and var_164_28 and AlphaRayGlow then
			local var_164_29 = ui and ui.battle and ui.battle.absorb or ui and ui.absorb or {}
			local var_164_30, var_164_31 = pcall(AlphaRayGlow.buildDistanceImage, var_164_28, ui.virtual.W, ui.virtual.H, 32, var_164_29.outlineAlphaThreshold or 0.01)

			if var_164_30 then
				backgroundMainPaperGlowDistanceImage = var_164_31
			end
		end
	end

	local var_164_32 = "src/sprites/background/button/itempanel.png"

	if love.filesystem.getInfo(var_164_32) then
		backgroundItemPanelImage = love.graphics.newImage(var_164_32)

		backgroundItemPanelImage:setFilter("nearest", "nearest")

		local var_164_33, var_164_34 = pcall(love.image.newImageData, var_164_32)

		if var_164_33 and var_164_34 then
			backgroundItemPanelData = var_164_34
		end
	end

	local var_164_35 = "src/sprites/background/button/itempanelbroken.png"

	if love.filesystem.getInfo(var_164_35) then
		backgroundItemPanelBrokenImage = love.graphics.newImage(var_164_35)

		backgroundItemPanelBrokenImage:setFilter("nearest", "nearest")
	end

	_stonePassivePanelShader = love.graphics.newShader("      extern vec3 cIn1;\n      extern vec3 cOut1;\n      extern vec3 cIn2;\n      extern vec3 cOut2;\n      vec4 effect(vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords) {\n          vec4 texColor = Texel(tex, texture_coords);\n          vec3 c = texColor.rgb;\n          float d1 = distance(c, cIn1);\n          float d2 = distance(c, cIn2);\n          if (d1 < 0.05) { return color * vec4(cOut1, texColor.a); }\n          if (d2 < 0.05) { return color * vec4(cOut2, texColor.a); }\n          return color * texColor;\n      }\n    ")

	local var_164_36 = "src/sprites/background/button/itempanelshadow.png"

	if love.filesystem.getInfo(var_164_36) then
		backgroundItemPanelShadowImage = love.graphics.newImage(var_164_36)

		backgroundItemPanelShadowImage:setFilter("nearest", "nearest")
	end

	local var_164_37 = "src/sprites/background/button/itempanelshadowuncommon.png"

	if love.filesystem.getInfo(var_164_37) then
		backgroundItemPanelShadowUncommonImage = love.graphics.newImage(var_164_37)

		backgroundItemPanelShadowUncommonImage:setFilter("nearest", "nearest")
	end

	local var_164_38 = "src/sprites/background/button/chracterpanel.png"

	if love.filesystem.getInfo(var_164_38) then
		backgroundCharacterPanelImage = love.graphics.newImage(var_164_38)

		backgroundCharacterPanelImage:setFilter("nearest", "nearest")

		local var_164_39, var_164_40 = pcall(love.image.newImageData, var_164_38)

		if var_164_39 and var_164_40 then
			backgroundCharacterPanelData = var_164_40
		end
	end

	local var_164_41 = "src/sprites/background/button/itempanelcooltime.png"

	if love.filesystem.getInfo(var_164_41) then
		backgroundItemPanelCooltimeImage = love.graphics.newImage(var_164_41)

		backgroundItemPanelCooltimeImage:setFilter("nearest", "nearest")

		local var_164_42, var_164_43 = pcall(love.image.newImageData, var_164_41)

		if var_164_42 and var_164_43 then
			backgroundItemPanelCooltimeData = var_164_43

			local var_164_44 = var_164_43:getWidth()
			local var_164_45 = var_164_43:getHeight()
			local var_164_46 = 0.05
			local var_164_47 = var_164_45
			local var_164_48 = -1
			local var_164_49 = {}

			for iter_164_1 = 0, var_164_45 - 1 do
				local var_164_50 = false
				local var_164_51 = 0
				local var_164_52 = {}

				while var_164_51 < var_164_44 do
					local var_164_53, var_164_54, var_164_55, var_164_56 = var_164_43:getPixel(var_164_51, iter_164_1)

					if var_164_56 and var_164_46 < var_164_56 then
						var_164_50 = true

						local var_164_57 = var_164_51

						var_164_51 = var_164_51 + 1

						while var_164_51 < var_164_44 do
							local var_164_58, var_164_59, var_164_60, var_164_61 = var_164_43:getPixel(var_164_51, iter_164_1)

							if not var_164_61 or not (var_164_46 < var_164_61) then
								break
							end

							var_164_51 = var_164_51 + 1
						end

						local var_164_62 = var_164_51 - 1

						table.insert(var_164_52, {
							start = var_164_57,
							finish = var_164_62
						})
					else
						var_164_51 = var_164_51 + 1
					end
				end

				if var_164_50 then
					if iter_164_1 < var_164_47 then
						var_164_47 = iter_164_1
					end

					if var_164_48 < iter_164_1 then
						var_164_48 = iter_164_1
					end

					var_164_49[iter_164_1] = {
						segments = var_164_52
					}
				end
			end

			if var_164_47 <= var_164_48 and var_164_47 >= 0 and var_164_48 < var_164_45 then
				backgroundItemPanelCooltimeBBox = {
					top = var_164_47,
					bottom = var_164_48,
					height = var_164_48 - var_164_47 + 1
				}

				local var_164_63 = {}

				for iter_164_2 = var_164_47, var_164_48 do
					local var_164_64 = var_164_49[iter_164_2]

					if var_164_64 and var_164_64.segments and #var_164_64.segments > 0 then
						var_164_64.y = iter_164_2

						table.insert(var_164_63, var_164_64)
					end
				end

				backgroundItemPanelCooltimeRowSpans = var_164_63
			end
		end
	end

	local var_164_65 = "src/sprites/background/mainbackground/mainbackgroundpaperfront.png"

	if love.filesystem.getInfo(var_164_65) then
		backgroundMainPaperFrontImage = love.graphics.newImage(var_164_65)

		backgroundMainPaperFrontImage:setFilter("nearest", "nearest")
	end

	local var_164_66 = "src/sprites/background/mainbackground/shopbackground.png"

	if love.filesystem.getInfo(var_164_66) then
		backgroundShopBackgroundImage = love.graphics.newImage(var_164_66)

		backgroundShopBackgroundImage:setFilter("nearest", "nearest")
	end

	local var_164_67 = "src/sprites/background/mainbackground/shopbackgroundinvenbackground.png"

	if love.filesystem.getInfo(var_164_67) then
		backgroundShopInvenBackgroundImage = love.graphics.newImage(var_164_67)

		backgroundShopInvenBackgroundImage:setFilter("nearest", "nearest")
	end

	local var_164_68 = {
		"src/sprites/background/mainbackground/shopkeeper.png",
		"sprites/background/mainbackground/shopkeeper.png"
	}
	local var_164_69

	for iter_164_3, iter_164_4 in ipairs(var_164_68) do
		if love.filesystem.getInfo(iter_164_4) then
			local var_164_70, var_164_71 = pcall(love.graphics.newImage, iter_164_4)

			if var_164_70 and var_164_71 then
				var_164_69 = var_164_71

				break
			end
		end
	end

	if var_164_69 then
		var_164_69:setFilter("nearest", "nearest")

		local var_164_72 = var_164_69:getWidth()
		local var_164_73 = var_164_69:getHeight()
		local var_164_74 = 63
		local var_164_75 = 68
		local var_164_76 = 4
		local var_164_77 = {}

		for iter_164_5 = 1, var_164_76 do
			var_164_77[iter_164_5] = love.graphics.newQuad((iter_164_5 - 1) * var_164_74, 0, var_164_74, var_164_75, var_164_72, var_164_73)
		end

		shopkeeper = {
			image = var_164_69,
			frameW = var_164_74,
			frameH = var_164_75,
			frameCount = var_164_76,
			quads = var_164_77,
			anim = {
				t = 0,
				frame = 1
			}
		}
	end

	local var_164_78 = "src/sprites/background/mainbackground/shopbackgroundinfobackground.png"

	if love.filesystem.getInfo(var_164_78) then
		backgroundShopInfoBackgroundImage = love.graphics.newImage(var_164_78)

		backgroundShopInfoBackgroundImage:setFilter("nearest", "nearest")
	end

	local var_164_79 = "src/sprites/background/mainbackground/stonequestbackground.png"

	if love.filesystem.getInfo(var_164_79) then
		backgroundStoneQuestBackgroundImage = love.graphics.newImage(var_164_79)

		backgroundStoneQuestBackgroundImage:setFilter("nearest", "nearest")
	end

	local var_164_80 = "src/sprites/background/mainbackground/corebackground.png"

	if love.filesystem.getInfo(var_164_80) then
		backgroundCoreImage = love.graphics.newImage(var_164_80)

		backgroundCoreImage:setFilter("nearest", "nearest")
	end

	local var_164_81 = "src/sprites/background/mainbackground/corebackgroundnumber.png"

	if love.filesystem.getInfo(var_164_81) then
		backgroundCoreNumberImage = love.graphics.newImage(var_164_81)

		backgroundCoreNumberImage:setFilter("nearest", "nearest")
	else
		local var_164_82 = "src/sprites/background/mainbackground/corebackground number.png"

		if love.filesystem.getInfo(var_164_82) then
			backgroundCoreNumberImage = love.graphics.newImage(var_164_82)

			backgroundCoreNumberImage:setFilter("nearest", "nearest")
		end
	end

	local var_164_83 = "src/sprites/background/mainbackground/slotbackground.png"

	if love.filesystem.getInfo(var_164_83) then
		backgroundSlotImage = love.graphics.newImage(var_164_83)

		backgroundSlotImage:setFilter("nearest", "nearest")
	end

	local var_164_84 = "src/sprites/background/mainbackground/slotbackgroundcolourfilter.png"

	if love.filesystem.getInfo(var_164_84) then
		backgroundSlotColourFilterImage = love.graphics.newImage(var_164_84)

		backgroundSlotColourFilterImage:setFilter("nearest", "nearest")
	end

	local var_164_85 = "src/sprites/background/mainbackground/slotrope.png"

	if love.filesystem.getInfo(var_164_85) then
		backgroundSlotRopeImage = love.graphics.newImage(var_164_85)

		backgroundSlotRopeImage:setFilter("nearest", "nearest")
	end

	local var_164_86 = "src/sprites/background/mainbackground/slotshadow.png"

	if love.filesystem.getInfo(var_164_86) then
		backgroundSlotShadowImage = love.graphics.newImage(var_164_86)

		backgroundSlotShadowImage:setFilter("nearest", "nearest")
	end

	local var_164_87 = "src/sprites/background/mainbackground/slotleftbackground.png"

	if love.filesystem.getInfo(var_164_87) then
		backgroundSlotLeftImage = love.graphics.newImage(var_164_87)

		backgroundSlotLeftImage:setFilter("nearest", "nearest")
	end

	local var_164_88 = {
		"src/sprites/background/mainbackground/symbolodds.png.png",
		"src/sprites/background/mainbackground/symbolodds.png"
	}

	for iter_164_6, iter_164_7 in ipairs(var_164_88) do
		if love.filesystem.getInfo(iter_164_7) then
			backgroundSymbolOddsImage = love.graphics.newImage(iter_164_7)

			backgroundSymbolOddsImage:setFilter("nearest", "nearest")

			break
		end
	end

	local var_164_89 = "src/sprites/background/mainbackground/monsterbody.png"

	if love.filesystem.getInfo(var_164_89) then
		backgroundMonsterBodyImage = love.graphics.newImage(var_164_89)

		backgroundMonsterBodyImage:setFilter("nearest", "nearest")
	end

	local var_164_90 = "src/sprites/background/mainbackground/monsterheadshadow.png"

	if love.filesystem.getInfo(var_164_90) then
		backgroundMonsterHeadShadowImage = love.graphics.newImage(var_164_90)

		backgroundMonsterHeadShadowImage:setFilter("nearest", "nearest")
	end

	local var_164_91 = "src/sprites/background/mainbackground/monsterhead.png"

	if love.filesystem.getInfo(var_164_91) then
		backgroundMonsterHeadImage = love.graphics.newImage(var_164_91)

		backgroundMonsterHeadImage:setFilter("nearest", "nearest")

		local var_164_92, var_164_93 = pcall(love.image.newImageData, var_164_91)

		if var_164_92 then
			backgroundMonsterHeadData = var_164_93
		end
	end

	local var_164_94 = "src/sprites/background/mainbackground/monsterheadlaugh.png"

	if love.filesystem.getInfo(var_164_94) then
		backgroundMonsterHeadLaughImage = love.graphics.newImage(var_164_94)

		backgroundMonsterHeadLaughImage:setFilter("nearest", "nearest")

		local var_164_95, var_164_96 = pcall(love.image.newImageData, var_164_94)

		if var_164_95 then
			backgroundMonsterHeadLaughData = var_164_96
		end
	end

	local var_164_97 = ui and ui.monster and ui.monster.headLaugh or {}

	monsterHeadAnim = {
		mode = "idle",
		t = 0,
		dur = var_164_97.dur or 0.7,
		ampPx = var_164_97.ampPx or 2,
		freq = var_164_97.freq or 4
	}

	local var_164_98 = "src/sprites/background/mainbackground/monstereyeshine.png"

	if love.filesystem.getInfo(var_164_98) then
		backgroundMonsterEyeShineImage = love.graphics.newImage(var_164_98)

		backgroundMonsterEyeShineImage:setFilter("nearest", "nearest")
	end

	if ui and ui.monster and ui.monster.eyesShine then
		local var_164_99 = ui.monster.eyesShine

		var_0_70.dur = var_164_99.dur or var_0_70.dur
		var_0_70.scaleFrom = var_164_99.scaleFrom ~= nil and var_164_99.scaleFrom or var_0_70.scaleFrom
		var_0_70.scaleTo = var_164_99.scaleTo ~= nil and var_164_99.scaleTo or var_0_70.scaleTo
		var_0_70.fadeIn = var_164_99.fadeIn ~= nil and var_164_99.fadeIn or var_0_70.fadeIn
	end

	local var_164_100 = "src/sprites/background/mainbackground/wavecounter.png"

	if love.filesystem.getInfo(var_164_100) then
		backgroundWaveCounterImage = love.graphics.newImage(var_164_100)

		backgroundWaveCounterImage:setFilter("nearest", "nearest")
	end

	local var_164_101 = "src/sprites/background/mainbackground/firemanbackground.png"

	if love.filesystem.getInfo(var_164_101) then
		backgroundFiremanBgImage = love.graphics.newImage(var_164_101)

		backgroundFiremanBgImage:setFilter("nearest", "nearest")

		local var_164_102, var_164_103 = pcall(love.image.newImageData, var_164_101)

		if var_164_102 and var_164_103 then
			backgroundFiremanBgData = var_164_103
		end
	end

	local var_164_104 = "src/sprites/background/mainbackground/fireman.png"

	if love.filesystem.getInfo(var_164_104) then
		firemanSpriteImage = love.graphics.newImage(var_164_104)

		firemanSpriteImage:setFilter("nearest", "nearest")

		local var_164_105, var_164_106 = pcall(love.image.newImageData, var_164_104)

		if var_164_105 and var_164_106 then
			firemanSpriteImageData = var_164_106
		end

		local var_164_107 = firemanSpriteImage:getWidth()
		local var_164_108 = firemanSpriteImage:getHeight()
		local var_164_109 = 20
		local var_164_110 = 20

		if var_164_107 > 0 and var_164_108 > 0 then
			local var_164_111 = math.max(1, math.floor(var_164_107 / var_164_109))
			local var_164_112 = math.max(1, math.floor(var_164_108 / var_164_110))

			fireman = {
				image = firemanSpriteImage,
				frameW = var_164_109,
				frameH = var_164_110,
				rows = {},
				anim = {
					name = "offidle",
					frame = 1,
					t = 0
				},
				animations = {
					offidle = {
						frames = 1,
						row = 1,
						speed = 0.2,
						loop = true
					},
					on = {
						frames = 5,
						row = 2,
						speed = 0.1,
						loop = false
					},
					onidle = {
						frames = 5,
						row = 3,
						speed = 0.12,
						loop = true
					},
					off = {
						frames = 5,
						row = 4,
						speed = 0.1,
						loop = false
					}
				}
			}

			for iter_164_8 = 1, var_164_112 do
				fireman.rows[iter_164_8] = {}

				for iter_164_9 = 1, var_164_111 do
					local var_164_113 = love.graphics.newQuad((iter_164_9 - 1) * var_164_109, (iter_164_8 - 1) * var_164_110, var_164_109, var_164_110, var_164_107, var_164_108)

					table.insert(fireman.rows[iter_164_8], var_164_113)
				end
			end
		end
	end

	updateScreenScale()
	var_0_27("screen scale updated")

	if (love.system and love.system.getOS and love.system.getOS() or nil) == "Windows" then
		local var_164_114 = false

		pcall(function()
			if masterCanvas then
				love.graphics.push("all")

				var_164_114 = true

				var_0_36(true)
				love.graphics.stencil(function()
					love.graphics.rectangle("fill", 0, 0, 1, 1)
				end, "replace", 1)
				love.graphics.setStencilTest()
				love.graphics.setCanvas()
			end
		end)
		pcall(love.graphics.setStencilTest)
		pcall(love.graphics.setCanvas)

		if var_164_114 then
			pcall(love.graphics.pop)
		end

		if Render2 and Render2.prepareWaveStartResources then
			pcall(Render2.prepareWaveStartResources, ui)
		end
	end

	loadedAssets = var_0_6.load()

	var_0_27("assets.load done")

	if var_0_16 and var_0_16.setAssets then
		var_0_16.setAssets(loadedAssets)
	end

	if loadedAssets and loadedAssets.audio and ui and ui.menuSettings then
		local var_164_115 = ui.menuSettings.sfxVolume or 1
		local var_164_116 = loadedAssets.audioBaseGain

		for iter_164_10, iter_164_11 in pairs(loadedAssets.audio) do
			if type(iter_164_11) == "userdata" and iter_164_11.setVolume then
				local var_164_117 = var_164_116 and var_164_116[iter_164_10] or 1

				iter_164_11:setVolume(var_164_115 * var_164_117)
			end
		end
	end

	windowShowPending = 10

	if loadedAssets then
		loadedAssets.ui = loadedAssets.ui or {}
		loadedAssets.ui.firemanBackground = backgroundFiremanBgImage
		loadedAssets.ui.firemanBackgroundData = backgroundFiremanBgData
	end

	slot = var_0_13.new(ui)

	slot:initGrid()
	var_0_27("slot init done")

	slot.onNudgeComplete = handleNudgeComplete
	slot.reelStopSfx = loadedAssets and loadedAssets.audio and loadedAssets.audio.reelStop
	battlefield = var_0_14.new(ui)

	var_0_27("battlefield init done")

	ui.battlefield = battlefield

	if _G.Render2 and _G.Render2.resetDpsWindow then
		_G.Render2.resetDpsWindow(ui, battlefield)
	end

	battlefield.assets = loadedAssets
	battlefield.waveTimer = waveTimer

	function battlefield.onCoinEvent(arg_168_0)
		local var_168_0 = arg_168_0 and arg_168_0.amount or 0

		if var_168_0 ~= 0 then
			coins = math.max(0, coins + var_168_0)
		end

		addCoinPopup(var_168_0)
	end

	function battlefield.onSymbolsChange(arg_169_0, arg_169_1, arg_169_2, arg_169_3, arg_169_4, arg_169_5, arg_169_6, arg_169_7)
		if var_0_18 and var_0_18.onUnitsChange then
			var_0_18.onUnitsChange(arg_169_0)
		end

		if var_0_18 and var_0_18.onUniqueUnitsChange then
			var_0_18.onUniqueUnitsChange(arg_169_1)
		end

		if var_0_18 and var_0_18.onRosterAbsorbChange then
			var_0_18.onRosterAbsorbChange(arg_169_2)
		end

		if var_0_18 and var_0_18.onMaxImprintsChange then
			var_0_18.onMaxImprintsChange(arg_169_3)
		end

		if var_0_18 and var_0_18.onMaxRankChange then
			var_0_18.onMaxRankChange(arg_169_4)
		end

		if var_0_18 and var_0_18.onMaxAbsorbedUniqueSymbolsChange then
			var_0_18.onMaxAbsorbedUniqueSymbolsChange(arg_169_5)
		end

		if var_0_18 and var_0_18.onRosterCompositionChange then
			var_0_18.onRosterCompositionChange(arg_169_6, arg_169_7)
		end
	end

	function battlefield.onAbsorb(arg_170_0)
		if Tutorial and Tutorial.onAbsorbCompleted then
			Tutorial.onAbsorbCompleted(ui, arg_170_0)
		end

		local var_170_0, var_170_1 = pcall(require, "src.game.cores")

		if var_170_0 and var_170_1 and var_170_1.onAbsorb then
			local var_170_2 = var_170_1.onAbsorb({
				waveId = var_0_55(),
				info = arg_170_0
			})

			var_0_114(var_170_2)
		end

		local var_170_3 = 0
		local var_170_4 = 0

		if arg_170_0 and arg_170_0.victim and arg_170_0.victim.noAbsorbEssence == true then
			-- block empty
		elseif arg_170_0 and arg_170_0.victim and arg_170_0.victim.randomOptions then
			for iter_170_0, iter_170_1 in ipairs(arg_170_0.victim.randomOptions) do
				if iter_170_1 and iter_170_1.id == "13" then
					local var_170_5 = tostring(iter_170_1.variant and iter_170_1.variant.value or "0")

					var_170_3 = var_170_3 + (tonumber(var_170_5:match("[-+]?%d+")) or 0)
				elseif iter_170_1 and iter_170_1.id == "18" then
					local var_170_6 = tostring(iter_170_1.variant and iter_170_1.variant.value or "0")

					var_170_4 = var_170_4 + (tonumber(var_170_6:match("[-+]?%d+")) or 0)
				end
			end
		end

		local var_170_7 = var_170_3

		if var_170_7 > 0 then
			jungsu = (jungsu or 0) + var_170_7
			ui.jungsuBalanceTarget = jungsu

			if var_0_18 and var_0_18.onEssenceChange then
				var_0_18.onEssenceChange(jungsu)
			end

			addJungsuPopup(var_170_7)
		end

		if var_0_18 and var_0_18.onAbsorb then
			var_0_18.onAbsorb()
		end

		if var_170_4 > 0 then
			coins = (coins or 0) + var_170_4
			ui.coinsBalanceTarget = coins

			addCoinPopup(var_170_4)
		end
	end

	function battlefield.onWaveEnd(arg_171_0)
		local var_171_0 = econ and econ.wave or {}
		local var_171_1 = var_171_0.baseClear or 0
		local var_171_2 = var_171_0.fastClearBonusMax or 0
		local var_171_3 = var_171_0.fastClearTime or 20
		local var_171_4 = var_171_0.survivalBonusMax or 0
		local var_171_5 = var_171_0.condolenceOnFail or 0
		local var_171_6 = arg_171_0 and arg_171_0.victory
		local var_171_7 = tonumber(arg_171_0 and arg_171_0.waveId or battlefield and battlefield.wave and battlefield.wave.id or 0) or 0
		local var_171_8 = arg_171_0 and arg_171_0.duration or 0
		local var_171_9 = arg_171_0 and arg_171_0.allyDeaths or 0

		if var_0_18 and var_0_18.onWaveEnd then
			var_0_18.onWaveEnd(arg_171_0)
		end

		awardOriginiteForGate(arg_171_0)

		ui._lastWaveEndJungsuWaveId = ui._lastWaveEndJungsuWaveId or -1

		if var_171_7 ~= (ui._lastWaveEndJungsuWaveId or -1) then
			local var_171_10 = 1

			if var_171_6 then
				if var_171_7 % 10 == 0 then
					var_171_10 = var_171_10 + 5
				elseif var_171_7 % 10 == 5 then
					var_171_10 = var_171_10 + 3
				end
			end

			if var_171_10 > 0 then
				jungsu = (jungsu or 0) + var_171_10
				ui.jungsuBalanceTarget = jungsu

				if var_0_18 and var_0_18.onEssenceChange then
					var_0_18.onEssenceChange(jungsu)
				end

				addJungsuPopup(var_171_10)
			end

			ui._lastWaveEndJungsuWaveId = var_171_7
		end

		local var_171_11 = 0

		if var_171_6 then
			var_171_11 = var_171_11 + var_171_1

			if var_171_2 > 0 and var_171_3 > 0 then
				local var_171_12 = 1 - math.max(0, math.min(var_171_3, var_171_8)) / var_171_3

				var_171_11 = var_171_11 + math.floor(var_171_2 * var_171_12 + 0.5)
			end

			if var_171_4 > 0 then
				local var_171_13 = 1 - math.max(0, math.min(1, var_171_9 / 3))

				var_171_11 = var_171_11 + math.floor(var_171_4 * var_171_13 + 0.5)
			end
		else
			var_171_11 = var_171_11 + var_171_5

			if battlefield and not battlefield.gameOver then
				var_171_11 = var_171_11 + math.max(0, tonumber(var_0_40()) or 0)
			end
		end

		if var_171_11 ~= 0 then
			coins = math.max(0, coins + var_171_11)
		end

		if var_171_11 ~= 0 then
			addCoinPopup(var_171_11)
		end

		local var_171_14, var_171_15 = pcall(require, "src.game.cores")

		if var_171_14 and var_171_15 and type(var_171_15.getActive) == "function" then
			local var_171_16 = var_171_15.getActive()
			local var_171_17 = false

			for iter_171_0, iter_171_1 in ipairs(var_171_16 or {}) do
				if iter_171_1 and iter_171_1.key == "Triggerchest" then
					var_171_17 = true

					break
				end
			end

			if var_171_17 then
				freeSpinCredits = 1
			end
		end

		local var_171_18 = 400

		coins = math.max(0, coins + var_171_18)

		addCoinPopup(var_171_18)

		if Tutorial and Tutorial.onWaveEnded then
			Tutorial.onWaveEnded(ui, arg_171_0, var_171_11 + 400)
		end

		var_0_110()

		phase = "spin"
		prepIdleT = 0
		uiLocked = false

		if waveTimer then
			waveTimer.t = 0
			waveTimer.state = "countdown"
			waveTimer.fadeT = 0
			waveTimer.appearT = 0
		end

		markRunClearedIfFinalWave(arg_171_0)
	end

	tooltip = var_0_12.new(ui)
	tooltip.battlefield = battlefield
	ui.tooltip = tooltip
	battlefield.rosterSymbols = {}
	battlefield.rosterUnits = {}
	battlefield.waves = {}
	battlefield.waveId = 1
	battlefield.mode = "spin"
	battlefield.gameOver = false
	battlefield.gameClear = false
	battlefield.clearWaveTarget = nil
	battlefield.clearRewardGranted = false
	battlefield.originiteEarnedThisRun = 0
	battlefield._earlyBaseShieldUsed = false
	battlefield._comebackGuaranteedSpinUsed = false
	battlefield._comebackGuaranteedSpinPending = false
	slot.onPreRevealOutcome = var_0_87
	slot.onPostEvaluate = var_0_88

	function slot.onWin(arg_172_0)
		if not arg_172_0 or not arg_172_0.won or not arg_172_0.winningLines then
			return
		end

		if slot._spinInitiatedNearBattleStart and var_0_18 and var_0_18.onClutchWin then
			var_0_18.onClutchWin()
		end

		local var_172_0 = arg_172_0.newWinningLines or arg_172_0.winningLines

		if not var_172_0 or #var_172_0 == 0 then
			return
		end

		local var_172_1 = {
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
		}
		local var_172_2 = slot.grid or arg_172_0.grid
		local var_172_3 = {}

		if var_172_2 then
			for iter_172_0, iter_172_1 in ipairs(var_172_0) do
				local var_172_4 = var_172_1[iter_172_1]

				if var_172_4 then
					local var_172_5 = var_172_2[var_172_4[1][1]][var_172_4[1][2]]
					local var_172_6 = var_172_2[var_172_4[2][1]][var_172_4[2][2]]
					local var_172_7 = var_172_2[var_172_4[3][1]][var_172_4[3][2]]
					local var_172_8 = var_0_58(var_172_5, var_172_6, var_172_7)

					if var_172_8 then
						table.insert(var_172_3, {
							lineId = iter_172_1,
							sym = var_172_8
						})
					end
				end
			end
		end

		if #var_172_3 == 0 then
			return
		end

		local var_172_9 = false

		if var_172_2 then
			local var_172_10 = var_172_2[1] and var_172_2[1][1]

			if var_172_10 then
				var_172_9 = true

				for iter_172_2 = 1, 3 do
					for iter_172_3 = 1, 3 do
						if var_172_2[iter_172_2] == nil or var_172_2[iter_172_2][iter_172_3] ~= var_172_10 then
							var_172_9 = false

							break
						end
					end

					if not var_172_9 then
						break
					end
				end
			end
		end

		arg_172_0.winSeq = {
			t = 0,
			active = true,
			i = 0,
			dur = 0.55,
			spawnedForStep = false,
			steps = var_172_3
		}

		if slot and slot._tutorialSpin then
			arg_172_0.winSeq.dur = 1.05
			arg_172_0.winSeq.spawnDelay = 0.48
		end

		arg_172_0.visibleWinningLines = nil
		arg_172_0.highlightActive = false
		arg_172_0.ht = 0

		if var_0_71.active and var_0_71.spins < 3 then
			var_0_71.won = true
		end

		if var_172_9 then
			if ui and ui.monster and ui.monster.eyesShine and ui.monster.eyesShine.enabled ~= false then
				var_0_70.active = true
				var_0_70.t = 0
				var_0_70.pulseT = 0
				var_0_70.sustainUntilBannerEnd = true
				var_0_70.seenBanner = false
			end
		elseif monsterHeadAnim then
			monsterHeadAnim.mode = "laugh"
			monsterHeadAnim.t = 0
		end
	end

	function slot.onSpinEnd(arg_173_0)
		stopRollingSound()
		var_0_118(arg_173_0)

		local var_173_0, var_173_1 = pcall(require, "src.game.cores")

		if var_173_0 and var_173_1 and var_173_1.getActive then
			local var_173_2 = var_173_1.getActive()

			if var_173_2 and #var_173_2 > 0 then
				local var_173_3 = love.timer.getTime()

				for iter_173_0, iter_173_1 in ipairs(var_173_2) do
					if iter_173_1 and iter_173_1._uiTrigger then
						iter_173_1._uiPulseT0 = var_173_3
						iter_173_1._uiPulseDur = 0.6
					end
				end
			end
		end

		if arg_173_0 and arg_173_0.won and arg_173_0.winningLines then
			local var_173_4 = arg_173_0.winningLines
			local var_173_5 = 0

			for iter_173_2 in ipairs(var_173_4) do
				var_173_5 = var_173_5 + 1
			end

			if var_173_5 >= 5 then
				jungsu = (jungsu or 0) + 2
				ui.jungsuBalanceTarget = jungsu

				if var_0_18 and var_0_18.onEssenceChange then
					var_0_18.onEssenceChange(jungsu)
				end
			end
		end

		spinCount = spinCount + 1
		spinsInWave = spinsInWave + 1

		var_0_77(arg_173_0)

		local var_173_6 = ui and ui._stoneActivated

		if var_173_6 and var_173_6.active and (var_173_6.phase == "spinning" or var_173_6.phase == "active") then
			var_173_6.phase = "fadeout"
			var_173_6.t = 0
		end

		if var_0_71.active then
			var_0_71.spins = var_0_71.spins + 1

			if var_0_71.spins >= 3 or var_0_71.won then
				var_0_71.active = false
			end
		end

		if arg_173_0 and arg_173_0._coreAutoReroll and not battlefield.gameOver and battlefield.mode ~= "battle" then
			freeSpinCredits = math.max(0, freeSpinCredits or 0) + 1
			spinsLeft = math.max(0, spinsLeft or 0) + 1

			var_0_96("core-reroll")

			return
		end

		if not battlefield.gameOver and battlefield.mode ~= "battle" and spinsLeft <= 0 then
			if slot and slot.result and slot.result.winSeq and slot.result.winSeq.active then
				pendingBattle.deferStart = true
			else
				local var_173_7 = computeLayout()

				if var_173_7 and var_173_7.right then
					if ui then
						ui._coreSelectOffersCache = nil
					end

					var_0_47(var_173_7.right)

					phase = "battle"
				else
					if ui then
						ui._coreSelectOffersCache = nil
					end

					var_0_47({
						y = 0,
						x = 0,
						w = ui.virtual.W,
						h = ui.virtual.H
					})

					phase = "battle"
				end
			end
		end
	end

	displayCoins = coins

	if battlefield and battlefield.baseHP then
		battlefield._prevBaseHP = battlefield.baseHP
	end

	var_0_27("love.load done")
end

local function var_0_120(arg_174_0, arg_174_1)
	if Tutorial and (Tutorial.isPending and Tutorial.isPending() or Tutorial.isActive and Tutorial.isActive()) then
		return false
	end

	if slotBgAnim and slotBgAnim.state ~= "done" then
		return false
	end

	if battlefield and battlefield.imprintModal and battlefield.imprintModal.active then
		return false
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	local var_174_0 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick

	if not var_174_0 or not var_174_0.image or not var_174_0.imageData or not var_174_0.quads or not var_174_0.quads[1] or not lastLayout or not lastLayout.slotPanel then
		return false
	end

	if spinStickAnim and spinStickAnim.playing then
		return false
	end

	local var_174_1 = lastLayout.slotPanel
	local var_174_2 = ui and ui.spinstick or {}
	local var_174_3 = var_174_1.x + var_174_1.w + (var_174_2.offsetX or 4)
	local var_174_4 = var_174_1.y + (var_174_2.offsetY or 0)
	local var_174_5 = slotBgJitter and slotBgJitter.x or 0
	local var_174_6 = slotBgJitter and slotBgJitter.y or 0
	local var_174_7 = math.floor(var_174_3 + (spinShake.x or 0) + var_174_5 + 0.5)
	local var_174_8 = math.floor(var_174_4 + (slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (ui and ui.slot and ui.slot.stickyOffsetY or 0) + var_0_108() + var_174_6 + 0.5)
	local var_174_9 = var_174_0.frameW
	local var_174_10 = var_174_0.frameH
	local var_174_11 = tonumber(var_174_2.hitExpandPx or 0) or 0
	local var_174_12 = tonumber(var_174_2.hitExpandX or var_174_11) or 0
	local var_174_13 = tonumber(var_174_2.hitExpandY or var_174_11) or 0
	local var_174_14 = tonumber(var_174_2.hitOffsetX or 0) or 0
	local var_174_15 = tonumber(var_174_2.hitOffsetY or 0) or 0
	local var_174_16 = var_174_7 + var_174_14
	local var_174_17 = var_174_8 + var_174_15

	if arg_174_0 >= var_174_16 - var_174_12 and arg_174_0 <= var_174_16 + var_174_9 + var_174_12 and arg_174_1 >= var_174_17 - var_174_13 and arg_174_1 <= var_174_17 + var_174_10 + var_174_13 then
		return true
	end

	local var_174_18 = arg_174_0 - var_174_7
	local var_174_19 = arg_174_1 - var_174_8

	if var_174_18 < 0 or var_174_19 < 0 or var_174_9 <= var_174_18 or var_174_10 <= var_174_19 then
		return false
	end

	local var_174_20 = var_174_0.frames or #var_174_0.quads or 1
	local var_174_21 = 1

	if spinStickAnim and spinStickAnim.playing and var_174_20 > 1 then
		var_174_21 = math.max(1, math.min(var_174_20, spinStickAnim.frame or 1))
	end

	local var_174_22 = var_174_0.quads[var_174_21] or var_174_0.quads[1]
	local var_174_23 = 0
	local var_174_24 = 0

	if var_174_22 and var_174_22.getViewport then
		local var_174_25, var_174_26 = var_174_22:getViewport()

		var_174_23, var_174_24 = var_174_25 or 0, var_174_26 or 0
	end

	local var_174_27 = var_174_23 + var_174_18
	local var_174_28 = var_174_24 + var_174_19
	local var_174_29 = var_174_0.iw
	local var_174_30 = var_174_0.ih

	if var_174_27 < 0 or var_174_28 < 0 or var_174_29 <= var_174_27 or var_174_30 <= var_174_28 then
		return false
	end

	local var_174_31, var_174_32, var_174_33, var_174_34 = var_174_0.imageData:getPixel(var_174_27, var_174_28)

	return var_174_34 and var_174_34 > 0.05
end

local function var_0_121(arg_175_0, arg_175_1, arg_175_2)
	if not lastLayout or not lastLayout.nudgeBtns then
		return false
	end

	if var_0_113() ~= true then
		return false
	end

	local var_175_0 = lastLayout.nudgeBtns[arg_175_2]

	if not var_175_0 then
		return false
	end

	local var_175_1 = loadedAssets and loadedAssets.ui and loadedAssets.ui.nudgeButtonData
	local var_175_2 = math.max(1, math.floor((ui and ui.scale or 1) + 0.5))
	local var_175_3 = ui and ui.slot and ui.slot.lastNudgeExtraX or 0
	local var_175_4 = ui and ui.slot and ui.slot.lastNudgeExtraY or 0
	local var_175_5 = ui and ui.slot and ui.slot.gridFX or nil

	if var_175_5 and var_175_5.active == true then
		local var_175_6 = var_175_5.ax or 0
		local var_175_7 = var_175_5.ay or 0
		local var_175_8 = var_175_5.sx or 1
		local var_175_9 = var_175_5.sy or 1

		if var_175_8 ~= 0 and var_175_9 ~= 0 then
			arg_175_0 = var_175_6 + (arg_175_0 - var_175_6) / var_175_8
			arg_175_1 = var_175_7 + (arg_175_1 - var_175_7) / var_175_9
		end
	end

	local var_175_10 = math.floor(var_175_0.x + var_175_3 + 0.5)
	local var_175_11 = math.floor(var_175_0.y + var_175_4 + 0.5)
	local var_175_12 = math.floor((arg_175_0 - var_175_10) / var_175_2)
	local var_175_13 = math.floor((arg_175_1 - var_175_11) / var_175_2)

	if var_175_12 < 0 or var_175_13 < 0 or var_175_12 >= 39 or var_175_13 >= 28 then
		return false
	end

	if var_175_1 then
		local var_175_14 = nudgeBtnAnims and nudgeBtnAnims[arg_175_2]
		local var_175_15 = var_175_14 and var_175_14.active and 39 or 0
		local var_175_16, var_175_17, var_175_18, var_175_19 = var_175_1:getPixel(var_175_12 + var_175_15, var_175_13)

		return (var_175_19 or 0) > 0.05
	end

	return true
end

local function var_0_122()
	if not ui then
		return
	end

	local var_176_0 = var_0_113() == true

	ui._nudgeEnabled = var_176_0

	local var_176_1 = ui.nudgeButtons

	ui._nudgeDisabledDimMul = tonumber(var_176_1 and var_176_1.disabledDimMul or 0.72) or 0.72

	local var_176_2 = 0
	local var_176_3 = {
		1,
		1,
		1
	}
	local var_176_4 = 0

	if var_176_0 then
		local var_176_5 = var_176_1 and var_176_1.enabledPulse or {}

		if var_176_5.enabled ~= false then
			local var_176_6 = love.timer.getTime()
			local var_176_7 = tonumber(var_176_5.freqHz or 1.15) or 1.15
			local var_176_8 = tonumber(var_176_5.alphaMin or 0.06) or 0.06
			local var_176_9 = tonumber(var_176_5.alphaMax or 0.2) or 0.2
			local var_176_10 = 0.5 + 0.5 * math.sin(2 * math.pi * (var_176_7 * var_176_6))

			var_176_2 = var_176_8 + (var_176_9 - var_176_8) * var_176_10
			var_176_3 = var_176_5.color or var_176_3
		end

		if lastLayout and lastLayout.nudgeBtns then
			local var_176_11, var_176_12 = love.mouse.getPosition()
			local var_176_13 = (var_176_11 - screenOffsetX) / (screenScaleX or screenScale)
			local var_176_14 = (var_176_12 - screenOffsetY) / (screenScaleY or screenScale)

			for iter_176_0 = 1, #lastLayout.nudgeBtns do
				if var_0_121(var_176_13, var_176_14, iter_176_0) then
					var_176_4 = iter_176_0

					break
				end
			end
		end
	end

	ui._nudgePulseAlpha = var_176_2
	ui._nudgePulseCol = var_176_3
	ui._nudgeHoverIdx = var_176_4
end

function restartGameSession(arg_177_0)
	local var_177_0 = "spin"
	local var_177_1 = false

	if type(arg_177_0) == "table" then
		if type(arg_177_0.targetPhase) == "string" then
			var_177_0 = arg_177_0.targetPhase
		end

		var_177_1 = arg_177_0.skipIntro == true
	elseif type(arg_177_0) == "string" then
		var_177_0 = arg_177_0
	end

	stopSlotMachineSounds()

	econ = var_0_5.economy or {}
	coins = var_0_39()

	resetAbsorbGlowAnim()

	jungsu = 0

	if ui then
		displayJungsu = jungsu
		jungsuAnim.accum = 0
		ui.jungsuBalance = displayJungsu
		ui.jungsuBalanceTarget = jungsu
		ui._coreSelectRerollCost = nil
		ui._victorySprite = nil
		ui._defeatSprite = nil
		ui._nudgeUsedWaveId = nil
		ui._nudgeUsedSpinWaveId = nil
		ui._nudgeUsedSpinIndex = nil
		ui._nudgeBonusWaveId = nil
		ui._nudgeBonusCount = 0
		ui._nudgeEnabled = false
		ui._nudgeHoverIdx = 0
		ui._nudgePulseAlpha = 0
		ui._itemPurchased = nil
		ui._itemPurchasedKeys = nil
		ui._itemShopPurchased = nil
		ui._itemOffers = nil
		ui._freeRerollPending = false
		ui._deleteMode = false
		ui._itemPanelDrop = nil
		ui._itemPanelHover = nil
		ui._itemPanelCooldown = nil
		ui._itemPanelClickPop = nil
		ui._itemPanelRipple = nil
		ui._itemPanelShapeRipple = nil
		ui._itemPanelShake = nil
		ui._shopMode = false
		ui._stoneMode = false
		ui._stoneActivated = nil
		ui._stoneT = nil
		ui._stoneQuests = nil
		ui._stoneQuestHoverProgs = nil
		ui._ownedStones = nil
		ui._stoneQuestCardHitAreas = nil
		ui.shopNotification = false
		ui._shopRefreshAnim = nil
		ui._coreSelect = nil

		CoreSelectFlow.clearDeferred(ui)

		ui._coreSelectOffersCache = nil
		ui._coreMsg = nil
		ui.unitSpawnBannerState = nil
		ui._suddenDeathAlertBanner = nil
		ui.suddenDeathAlertState = nil
		ui._coreScrollHoverHard = false
		ui.gameOverButtons = nil

		if ui.shopOverlayState and ui.shopOverlay and ui.shopOverlay.hiddenY then
			ui.shopOverlayState.y = ui.shopOverlay.hiddenY
			ui.shopOverlayState.v = 0
		end
	end

	if var_0_18 and var_0_18.resetAllProgress then
		var_0_18.resetAllProgress()
	end

	var_0_92 = 0

	var_0_74()

	spinsInWave = 0
	spinsLeft = 6
	paidBought = 0
	paidSpinsInWave = 0
	spinCost = econ and econ.spins and econ.spins.paidStartCost or 100
	spinCostStep = econ and econ.spins and econ.spins.paidCostStep or 50
	lastSpinWasPaid = false
	lastSpinWasFirstPaid = false
	lastPaidSpinCost = 0
	lastPaidSpinCoinsBefore = 0
	lastPaidSpinIndex = 0
	lastPaidSpinCostIncreaseApplied = 0
	freeSpinCredits = 0
	nudgeSpinDiscountPending = false
	spinCount = 0
	coreSelectionsMade = 0
	coreFreeRerollsRemaining = math.max(0, math.floor(tonumber(var_0_41()) or 0))
	coinPopups = {}

	if ui then
		ui._coinPopupsActive = false
	end

	var_0_71 = {
		active = true,
		won = false,
		spins = 0
	}

	var_0_19.reset()

	_G.__hiddenLuckDebug = var_0_19.getState()
	var_0_51 = nil
	var_0_52 = nil
	phase = var_177_0

	if not var_177_1 and phase == "spin" then
		var_0_49()
	end

	if waveTimer then
		waveTimer.t = 0
		waveTimer.state = "countdown"
		waveTimer.fadeT = 0
		waveTimer.appearT = 0
	end

	if pendingBattle then
		pendingBattle.active = false
		pendingBattle.t = 0
		pendingBattle.deferStart = false
	end

	if ui and ui.pauseOverlayState then
		ui.pauseOverlayState.active = false
		ui.pauseOverlayState.settingsMode = false
		ui.pauseOverlayState._settingsPending = false
		ui.pauseOverlayState._settingsT = 0
		ui.pauseOverlayState.settingsPaperT = 0
		ui.pauseOverlayState.playHovered = false
		ui.pauseOverlayState.replayHovered = false
		ui.pauseOverlayState.wikiHovered = false
		ui.pauseOverlayState.optionHovered = false
		ui.pauseOverlayState.toMainHovered = false
		ui.pauseOverlayState.buttonRopeDrop = {}
		ui.pauseOverlayState.v = 0
		ui.pauseOverlayState.y = ui.pauseOverlay and ui.pauseOverlay.hiddenY or -(ui.virtual and ui.virtual.H or 128)
	end

	stopHolyRaySound()

	if ui and ui._preSpinSeq then
		ui._preSpinSeq = nil
	end

	local var_177_2, var_177_3 = pcall(require, "src.game.cores")

	if var_177_2 and var_177_3 and var_177_3.reset then
		var_177_3.reset()
	end

	local var_177_4 = battlefield and battlefield.difficulty or 1
	local var_177_5 = battlefield and (battlefield.stage or battlefield.currentStage) or CurrentStage or 1

	slot = var_0_13.new(ui)

	slot:initGrid()

	slot.onNudgeComplete = handleNudgeComplete
	slot.reelStopSfx = loadedAssets and loadedAssets.audio and loadedAssets.audio.reelStop
	battlefield = var_0_14.new(ui)
	battlefield.difficulty = var_177_4
	battlefield.stage = var_177_5
	battlefield.currentStage = var_177_5
	ui.battlefield = battlefield

	if _G.Render2 and _G.Render2.resetDpsWindow then
		_G.Render2.resetDpsWindow(ui, battlefield)
	end

	battlefield.assets = loadedAssets
	battlefield.waveTimer = waveTimer
	battlefield.gameClear = false
	battlefield.clearWaveTarget = nil
	battlefield.clearRewardGranted = false
	battlefield.originiteEarnedThisRun = 0
	battlefield._earlyBaseShieldUsed = false
	battlefield._comebackGuaranteedSpinUsed = false
	battlefield._comebackGuaranteedSpinPending = false

	function battlefield.onCoinEvent(arg_178_0)
		local var_178_0 = arg_178_0 and arg_178_0.amount or 0

		if var_178_0 ~= 0 then
			coins = math.max(0, coins + var_178_0)
		end

		addCoinPopup(var_178_0)
	end

	function battlefield.onSymbolsChange(arg_179_0, arg_179_1, arg_179_2, arg_179_3, arg_179_4, arg_179_5, arg_179_6, arg_179_7)
		if var_0_18 and var_0_18.onUnitsChange then
			var_0_18.onUnitsChange(arg_179_0)
		end

		if var_0_18 and var_0_18.onUniqueUnitsChange then
			var_0_18.onUniqueUnitsChange(arg_179_1)
		end

		if var_0_18 and var_0_18.onRosterAbsorbChange then
			var_0_18.onRosterAbsorbChange(arg_179_2)
		end

		if var_0_18 and var_0_18.onMaxImprintsChange then
			var_0_18.onMaxImprintsChange(arg_179_3)
		end

		if var_0_18 and var_0_18.onMaxRankChange then
			var_0_18.onMaxRankChange(arg_179_4)
		end

		if var_0_18 and var_0_18.onMaxAbsorbUniqueSymbolsChange then
			var_0_18.onMaxAbsorbUniqueSymbolsChange(arg_179_5)
		end

		if var_0_18 and var_0_18.onMaxAbsorbedUniqueSymbolsChange then
			var_0_18.onMaxAbsorbedUniqueSymbolsChange(arg_179_5)
		end

		if var_0_18 and var_0_18.onRosterCompositionChange then
			var_0_18.onRosterCompositionChange(arg_179_6, arg_179_7)
		end
	end

	function battlefield.onAbsorb(arg_180_0)
		if Tutorial and Tutorial.onAbsorbCompleted then
			Tutorial.onAbsorbCompleted(ui, arg_180_0)
		end

		local var_180_0, var_180_1 = pcall(require, "src.game.cores")

		if var_180_0 and var_180_1 and var_180_1.onAbsorb then
			local var_180_2 = var_180_1.onAbsorb({
				waveId = var_0_55(),
				info = arg_180_0
			})

			var_0_114(var_180_2)
		end

		local var_180_3 = 0
		local var_180_4 = 0

		if arg_180_0 and arg_180_0.victim and arg_180_0.victim.noAbsorbEssence == true then
			-- block empty
		elseif arg_180_0 and arg_180_0.victim and arg_180_0.victim.randomOptions then
			for iter_180_0, iter_180_1 in ipairs(arg_180_0.victim.randomOptions) do
				if iter_180_1 and iter_180_1.id == "13" then
					local var_180_5 = tostring(iter_180_1.variant and iter_180_1.variant.value or "0")

					var_180_3 = var_180_3 + (tonumber(var_180_5:match("[-+]?%d+")) or 0)
				elseif iter_180_1 and iter_180_1.id == "18" then
					local var_180_6 = tostring(iter_180_1.variant and iter_180_1.variant.value or "0")

					var_180_4 = var_180_4 + (tonumber(var_180_6:match("[-+]?%d+")) or 0)
				end
			end
		end

		local var_180_7 = var_180_3

		if var_180_7 > 0 then
			jungsu = (jungsu or 0) + var_180_7
			ui.jungsuBalanceTarget = jungsu

			if var_0_18 and var_0_18.onEssenceChange then
				var_0_18.onEssenceChange(jungsu)
			end

			addJungsuPopup(var_180_7)
		end

		if var_0_18 and var_0_18.onAbsorb then
			var_0_18.onAbsorb()
		end

		if var_180_4 > 0 then
			coins = (coins or 0) + var_180_4
			ui.coinsBalanceTarget = coins

			addCoinPopup(var_180_4)
		end
	end

	function battlefield.onWaveEnd(arg_181_0)
		local var_181_0 = tonumber(arg_181_0 and arg_181_0.waveId or battlefield and battlefield.wave and battlefield.wave.id or 0) or 0
		local var_181_1 = econ and econ.wave or {}
		local var_181_2 = var_181_1.baseClear or 0
		local var_181_3 = var_181_1.fastClearBonusMax or 0
		local var_181_4 = var_181_1.fastClearTime or 20
		local var_181_5 = var_181_1.survivalBonusMax or 0
		local var_181_6 = var_181_1.condolenceOnFail or 0
		local var_181_7 = arg_181_0 and arg_181_0.victory
		local var_181_8 = arg_181_0 and arg_181_0.duration or 0
		local var_181_9 = arg_181_0 and arg_181_0.allyDeaths or 0

		if var_0_18 and var_0_18.onWaveEnd then
			var_0_18.onWaveEnd(arg_181_0)
		end

		awardOriginiteForGate(arg_181_0)

		ui._lastWaveEndJungsuWaveId = ui._lastWaveEndJungsuWaveId or -1

		if var_181_0 ~= (ui._lastWaveEndJungsuWaveId or -1) then
			local var_181_10 = 1

			if var_181_7 then
				if var_181_0 % 10 == 0 then
					var_181_10 = var_181_10 + 5
				elseif var_181_0 % 10 == 5 then
					var_181_10 = var_181_10 + 3
				end
			end

			if var_181_10 > 0 then
				jungsu = (jungsu or 0) + var_181_10
				ui.jungsuBalanceTarget = jungsu

				if var_0_18 and var_0_18.onEssenceChange then
					var_0_18.onEssenceChange(jungsu)
				end

				addJungsuPopup(var_181_10)
			end

			ui._lastWaveEndJungsuWaveId = var_181_0
		end

		local var_181_11 = 0

		if var_181_7 then
			var_181_11 = var_181_11 + var_181_2

			if var_181_3 > 0 and var_181_4 > 0 then
				local var_181_12 = 1 - math.max(0, math.min(var_181_4, var_181_8)) / var_181_4

				var_181_11 = var_181_11 + math.floor(var_181_3 * var_181_12 + 0.5)
			end

			if var_181_5 > 0 then
				local var_181_13 = 1 - math.max(0, math.min(1, var_181_9 / 3))

				var_181_11 = var_181_11 + math.floor(var_181_5 * var_181_13 + 0.5)
			end
		else
			var_181_11 = var_181_11 + var_181_6

			if battlefield and not battlefield.gameOver then
				var_181_11 = var_181_11 + math.max(0, tonumber(var_0_40()) or 0)
			end
		end

		if var_181_11 ~= 0 then
			coins = math.max(0, coins + var_181_11)
		end

		if var_181_11 ~= 0 then
			addCoinPopup(var_181_11)
		end

		local var_181_14, var_181_15 = pcall(require, "src.game.cores")

		if var_181_14 and var_181_15 and type(var_181_15.getActive) == "function" then
			local var_181_16 = var_181_15.getActive()
			local var_181_17 = false

			for iter_181_0, iter_181_1 in ipairs(var_181_16 or {}) do
				if iter_181_1 and iter_181_1.key == "Triggerchest" then
					var_181_17 = true

					break
				end
			end

			if var_181_17 then
				freeSpinCredits = 1
			end
		end

		local var_181_18 = 400

		coins = math.max(0, coins + var_181_18)

		addCoinPopup(var_181_18)

		if Tutorial and Tutorial.onWaveEnded then
			Tutorial.onWaveEnded(ui, arg_181_0, var_181_11 + 400)
		end

		var_0_110()

		phase = "spin"
		prepIdleT = 0
		uiLocked = false

		if waveTimer then
			waveTimer.t = 0
			waveTimer.state = "countdown"
			waveTimer.fadeT = 0
			waveTimer.appearT = 0
		end

		markRunClearedIfFinalWave(arg_181_0)
	end

	if tooltip then
		tooltip.battlefield = battlefield
	end

	battlefield.rosterSymbols = {}
	battlefield.rosterUnits = {}
	battlefield.waves = {}
	battlefield.waveId = 1
	battlefield.mode = "spin"
	battlefield.gameOver = false
	battlefield.gameClear = false
	battlefield.clearWaveTarget = nil
	battlefield.clearRewardGranted = false
	slot.onPreRevealOutcome = var_0_87
	slot.onPostEvaluate = var_0_88

	function slot.onWin(arg_182_0)
		if not arg_182_0 or not arg_182_0.won or not arg_182_0.winningLines then
			return
		end

		if slot._spinInitiatedNearBattleStart and var_0_18 and var_0_18.onClutchWin then
			var_0_18.onClutchWin()
		end

		local var_182_0 = arg_182_0.newWinningLines or arg_182_0.winningLines

		if not var_182_0 or #var_182_0 == 0 then
			return
		end

		local var_182_1 = {
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
		}
		local var_182_2 = slot.grid or arg_182_0.grid
		local var_182_3 = {}

		if var_182_2 then
			for iter_182_0, iter_182_1 in ipairs(var_182_0) do
				local var_182_4 = var_182_1[iter_182_1]

				if var_182_4 then
					local var_182_5 = var_182_2[var_182_4[1][1]][var_182_4[1][2]]
					local var_182_6 = var_182_2[var_182_4[2][1]][var_182_4[2][2]]
					local var_182_7 = var_182_2[var_182_4[3][1]][var_182_4[3][2]]
					local var_182_8 = var_0_58(var_182_5, var_182_6, var_182_7)

					if var_182_8 then
						table.insert(var_182_3, {
							lineId = iter_182_1,
							sym = var_182_8
						})
					end
				end
			end
		end

		if #var_182_3 == 0 then
			return
		end

		local var_182_9 = false

		if var_182_2 then
			local var_182_10 = var_182_2[1] and var_182_2[1][1]

			if var_182_10 then
				var_182_9 = true

				for iter_182_2 = 1, 3 do
					for iter_182_3 = 1, 3 do
						if var_182_2[iter_182_2] == nil or var_182_2[iter_182_2][iter_182_3] ~= var_182_10 then
							var_182_9 = false

							break
						end
					end

					if not var_182_9 then
						break
					end
				end
			end
		end

		arg_182_0.winSeq = {
			t = 0,
			active = true,
			i = 0,
			dur = 0.55,
			spawnedForStep = false,
			steps = var_182_3
		}
		arg_182_0.visibleWinningLines = nil
		arg_182_0.highlightActive = false
		arg_182_0.ht = 0

		if var_0_71.active and var_0_71.spins < 3 then
			var_0_71.won = true
		end

		if var_182_9 then
			if ui and ui.monster and ui.monster.eyesShine and ui.monster.eyesShine.enabled ~= false then
				var_0_70.active = true
				var_0_70.t = 0
				var_0_70.pulseT = 0
				var_0_70.sustainUntilBannerEnd = true
				var_0_70.seenBanner = false
			end
		elseif monsterHeadAnim then
			monsterHeadAnim.mode = "laugh"
			monsterHeadAnim.t = 0
		end
	end

	function slot.onSpinEnd(arg_183_0)
		stopRollingSound()
		var_0_118(arg_183_0)

		local var_183_0, var_183_1 = pcall(require, "src.game.cores")

		if var_183_0 and var_183_1 and var_183_1.getActive then
			local var_183_2 = var_183_1.getActive()

			if var_183_2 and #var_183_2 > 0 then
				local var_183_3 = love.timer.getTime()

				for iter_183_0, iter_183_1 in ipairs(var_183_2) do
					if iter_183_1 and iter_183_1._uiTrigger then
						iter_183_1._uiPulseT0 = var_183_3
						iter_183_1._uiPulseDur = 0.6
					end
				end
			end
		end

		spinCount = spinCount + 1
		spinsInWave = spinsInWave + 1

		var_0_77(arg_183_0)

		local var_183_4 = ui and ui._stoneActivated

		if var_183_4 and var_183_4.active and (var_183_4.phase == "spinning" or var_183_4.phase == "active") then
			var_183_4.phase = "fadeout"
			var_183_4.t = 0
		end

		if var_0_71.active then
			var_0_71.spins = var_0_71.spins + 1

			if var_0_71.spins >= 3 or var_0_71.won then
				var_0_71.active = false
			end
		end

		if arg_183_0 and arg_183_0._coreAutoReroll and not battlefield.gameOver and battlefield.mode ~= "battle" then
			freeSpinCredits = math.max(0, freeSpinCredits or 0) + 1
			spinsLeft = math.max(0, spinsLeft or 0) + 1

			var_0_96("core-reroll")

			return
		end

		if not battlefield.gameOver and battlefield.mode ~= "battle" and spinsLeft <= 0 then
			if slot and slot.result and slot.result.winSeq and slot.result.winSeq.active then
				pendingBattle.deferStart = true
			else
				local var_183_5 = computeLayout()

				if var_183_5 and var_183_5.right then
					if ui then
						ui._coreSelectOffersCache = nil
					end

					var_0_47(var_183_5.right)

					phase = "battle"
				else
					if ui then
						ui._coreSelectOffersCache = nil
					end

					var_0_47({
						y = 0,
						x = 0,
						w = ui.virtual.W,
						h = ui.virtual.H
					})

					phase = "battle"
				end
			end
		end
	end

	var_0_49()

	if ui and ui.pauseOverlayState then
		ui.pauseOverlayState.playHovered = false
		ui.pauseOverlayState.replayHovered = false
		ui.pauseOverlayState.wikiHovered = false
		ui.pauseOverlayState.optionHovered = false
		ui.pauseOverlayState.toMainHovered = false
		ui.pauseOverlayState.buttonRopeDrop = {}
	end

	displayCoins = coins

	if battlefield and battlefield.baseHP then
		battlefield._prevBaseHP = battlefield.baseHP
	end
end

local function var_0_123()
	local var_184_0 = ui and ui.slotBookIcon
	local var_184_1 = loadedAssets and loadedAssets.ui
	local var_184_2 = var_184_1 and var_184_1.slotBook
	local var_184_3 = var_184_1 and var_184_1.slotBookShadow

	if not var_184_0 or var_184_0.enabled == false or not var_184_2 or not var_184_3 or not lastLayout or not lastLayout.slotPanel then
		return nil
	end

	local var_184_4 = lastLayout.slotPanel
	local var_184_5 = var_184_4.x + var_184_4.w
	local var_184_6 = var_184_4.y
	local var_184_7 = var_184_0.scale or 1
	local var_184_8 = slotBgJitter and slotBgJitter.x or 0
	local var_184_9 = slotBgJitter and slotBgJitter.y or 0
	local var_184_10 = math.floor((spinShake.x or 0) + var_184_8 + 0)
	local var_184_11 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (ui and ui.slot and ui.slot.stickyOffsetY or 0) + var_0_108() + var_184_9 + 0.5)
	local var_184_12 = var_184_2:getWidth()
	local var_184_13 = var_184_2:getHeight()
	local var_184_14 = math.floor(var_184_5 - var_184_12 * var_184_7 * 0.5 + (var_184_0.offsetX or 0) + var_184_10 + 0.5)
	local var_184_15 = math.floor(var_184_6 - var_184_13 * var_184_7 + (var_184_0.offsetY or 0) + var_184_11 + 0.5)

	return {
		dx = var_184_14,
		dy = var_184_15,
		scale = var_184_7,
		bw = var_184_12,
		bh = var_184_13,
		book = var_184_2,
		shadow = var_184_3,
		bookData = var_184_1 and var_184_1.slotBookData
	}
end

local function var_0_124(arg_185_0, arg_185_1)
	if battlefield and battlefield.gameOver then
		return false
	end

	if battlefield and battlefield.imprintModal and battlefield.imprintModal.active then
		return false
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	local var_185_0 = var_0_123()

	if not var_185_0 then
		return false
	end

	local var_185_1 = var_185_0.dx
	local var_185_2 = var_185_0.dy
	local var_185_3 = var_185_0.scale
	local var_185_4 = var_185_0.bw
	local var_185_5 = var_185_0.bh
	local var_185_6 = (arg_185_0 - var_185_1) / math.max(0.0001, var_185_3)
	local var_185_7 = (arg_185_1 - var_185_2) / math.max(0.0001, var_185_3)

	if var_185_6 < 0 or var_185_7 < 0 or var_185_4 <= var_185_6 or var_185_5 <= var_185_7 then
		return false
	end

	if var_185_0.bookData and var_185_0.bookData.getPixel then
		local var_185_8 = math.floor(var_185_6)
		local var_185_9 = math.floor(var_185_7)
		local var_185_10, var_185_11, var_185_12, var_185_13 = var_185_0.bookData:getPixel(var_185_8, var_185_9)

		return var_185_13 and var_185_13 > 0.05
	else
		return true
	end
end

local var_0_125 = {
	y = 68,
	x = 27,
	h = 22,
	w = 31
}

local function var_0_126()
	if not backgroundSlotLeftImage then
		return nil
	end

	local var_186_0 = slotBgJitter and slotBgJitter.x or 0
	local var_186_1 = slotBgJitter and slotBgJitter.y or 0
	local var_186_2 = math.floor((spinShake and spinShake.x or 0) + var_186_0 + 0)
	local var_186_3 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake and spinShake.y or 0) + (ui and ui.slot and ui.slot.stickyOffsetY or 0) + var_0_108() + var_186_1 + 0.5)
	local var_186_4 = var_0_125

	return {
		x = var_186_2 + var_186_4.x,
		y = var_186_3 + var_186_4.y,
		w = var_186_4.w,
		h = var_186_4.h
	}
end

local function var_0_127(arg_187_0, arg_187_1)
	if battlefield and battlefield.imprintModal and battlefield.imprintModal.active then
		return false
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	local var_187_0 = var_0_126()

	return var_187_0 and arg_187_0 >= var_187_0.x and arg_187_0 <= var_187_0.x + var_187_0.w and arg_187_1 >= var_187_0.y and arg_187_1 <= var_187_0.y + var_187_0.h
end

local function var_0_128()
	local var_188_0 = ui and ui.spinLeftTooltipState
	local var_188_1 = var_188_0 and tonumber(var_188_0.fade or 0) or 0

	if var_188_1 <= 0.001 or not ui or not ui.tooltip or not ui.virtual then
		return
	end

	local var_188_2 = var_188_0.rect or var_0_126()

	if not var_188_2 then
		return
	end

	local var_188_3 = require("src.data.language")
	local var_188_4 = var_188_3.getText("slot_remaining_spins_tooltip", _G.currentGameLang or "ko")
	local var_188_5 = ui.tooltip and ui.tooltip.font or ui.font

	if not var_188_5 or not var_188_4 then
		return
	end

	love.graphics.setFont(var_188_5)

	local var_188_6 = 4
	local var_188_7 = 4
	local var_188_8 = math.floor(var_188_5:getWidth(var_188_4) + var_188_6 * 2 + 0.5)
	local var_188_9 = math.floor(var_188_5:getHeight() + var_188_6 * 2 + 0.5)
	local var_188_10 = math.floor(var_188_2.x + var_188_2.w * 0.5 - var_188_8 * 0.5 + 0.5)
	local var_188_11 = math.floor(var_188_2.y - var_188_9 - var_188_7 + 0.5)

	if var_188_11 < 0 then
		var_188_11 = math.floor(var_188_2.y + var_188_2.h + var_188_7 + 0.5)
	end

	local var_188_12 = math.max(0, math.min(var_188_10, ui.virtual.W - var_188_8))
	local var_188_13 = math.max(0, math.min(var_188_11, ui.virtual.H - var_188_9))

	if ui.tooltip.drawPixelRoundedRect then
		ui.tooltip:drawPixelRoundedRect(var_188_12, var_188_13, var_188_8, var_188_9, {
			0,
			0,
			0,
			0.95 * var_188_1
		}, nil)
	else
		love.graphics.setColor(0, 0, 0, 0.95 * var_188_1)
		love.graphics.rectangle("fill", var_188_12, var_188_13, var_188_8, var_188_9)
	end

	local var_188_14 = var_188_3.getText("keyword_core", _G.currentGameLang or "ko")
	local var_188_15, var_188_16 = tostring(var_188_4):find(var_188_14, 1, true)
	local var_188_17 = var_188_12 + var_188_6
	local var_188_18 = var_188_13 + var_188_6 - 1
	local var_188_19 = {
		1,
		1,
		1,
		var_188_1
	}
	local var_188_20 = {
		0.95,
		0.74,
		0.32,
		var_188_1
	}

	if var_188_15 and var_188_16 then
		local var_188_21 = var_188_4:sub(1, var_188_15 - 1)
		local var_188_22 = var_188_4:sub(var_188_15, var_188_16)
		local var_188_23 = var_188_4:sub(var_188_16 + 1)

		if var_188_21 ~= "" then
			love.graphics.setColor(var_188_19)
			love.graphics.print(var_188_21, var_188_17, var_188_18)

			var_188_17 = var_188_17 + var_188_5:getWidth(var_188_21)
		end

		love.graphics.setColor(var_188_20)
		love.graphics.print(var_188_22, var_188_17, var_188_18)

		var_188_17 = var_188_17 + var_188_5:getWidth(var_188_22)

		if var_188_23 ~= "" then
			love.graphics.setColor(var_188_19)
			love.graphics.print(var_188_23, var_188_17, var_188_18)
		end
	else
		love.graphics.setColor(var_188_19)
		love.graphics.print(var_188_4, var_188_17, var_188_18)
	end

	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_129()
	local var_189_0 = scrollIntroAnim
	local var_189_1 = loadedAssets and loadedAssets.ui and loadedAssets.ui.scrollIntroAnim

	if not var_189_0 or not var_189_1 or var_189_0.slideState ~= "slide" and var_189_0.slideState ~= "done" then
		return nil
	end

	local var_189_2 = var_189_1.frameW
	local var_189_3 = var_189_1.frameH

	if not var_189_2 or not var_189_3 or not (var_189_2 > 0) or not (var_189_3 > 0) then
		return nil
	end

	local var_189_4 = ui and ui.scrollIntroAnim
	local var_189_5 = var_189_4 and var_189_4.scale or 1
	local var_189_6 = ui and ui.virtual and ui.virtual.W or 640
	local var_189_7 = ui and ui.virtual and ui.virtual.H or 360
	local var_189_8 = math.floor((var_189_6 - var_189_2 * var_189_5) * 0.5 + 0.5)
	local var_189_9 = math.floor((var_189_7 - var_189_3 * var_189_5) * 0.5 + 0.5)
	local var_189_10 = var_189_4 and var_189_4.x ~= nil and var_189_4.x or var_189_8
	local var_189_11 = (var_189_4 and var_189_4.y ~= nil and var_189_4.y or var_189_9) + (var_189_0.slideY or 0)

	return {
		x = math.floor(var_189_10 + 0.5),
		y = math.floor(var_189_11 + 0.5),
		w = math.floor(var_189_2 * var_189_5 + 0.5),
		h = math.floor(var_189_3 * var_189_5 + 0.5)
	}
end

local function var_0_130(arg_190_0, arg_190_1)
	local var_190_0 = var_0_129()

	if not var_190_0 or arg_190_0 < var_190_0.x or arg_190_0 >= var_190_0.x + var_190_0.w or arg_190_1 < var_190_0.y or arg_190_1 >= var_190_0.y + var_190_0.h then
		return false
	end

	local var_190_1 = scrollIntroAnim
	local var_190_2 = loadedAssets and loadedAssets.ui and loadedAssets.ui.scrollIntroAnim
	local var_190_3 = var_190_2 and var_190_2.imageData
	local var_190_4 = var_190_2 and var_190_2.frameW
	local var_190_5 = var_190_2 and var_190_2.frameH

	if not var_190_1 or not var_190_3 or not var_190_4 or not var_190_5 or not (var_190_4 > 0) or not (var_190_5 > 0) then
		return true
	end

	local var_190_6 = math.floor((arg_190_0 - var_190_0.x) * var_190_4 / math.max(1, var_190_0.w))
	local var_190_7 = math.floor((arg_190_1 - var_190_0.y) * var_190_5 / math.max(1, var_190_0.h))

	if var_190_6 < 0 or var_190_4 <= var_190_6 or var_190_7 < 0 or var_190_5 <= var_190_7 then
		return false
	end

	local var_190_8 = var_190_2.frameCount or 1
	local var_190_9 = math.max(1, math.min(var_190_8, (var_190_1.frame or 0) + 1))
	local var_190_10, var_190_11, var_190_12, var_190_13, var_190_14 = pcall(var_190_3.getPixel, var_190_3, (var_190_9 - 1) * var_190_4 + var_190_6, var_190_7)

	return var_190_10 and (var_190_14 or 0) > 0.05
end

local function var_0_131()
	if not ui or not ui._deferredCoreSelect then
		return 1, 1, 0
	end

	local var_191_0 = ui.scrollIntroAnim and ui.scrollIntroAnim.returnPrompt or {}
	local var_191_1 = love.timer.getTime()
	local var_191_2 = ui._deferredCoreSelect._returnPromptT0 or var_191_1
	local var_191_3 = math.max(0, var_191_1 - var_191_2) * math.pi * 2 * (var_191_0.pulseHz or 0.55)
	local var_191_4 = 0.5 - 0.5 * math.cos(var_191_3)
	local var_191_5 = 1 + (var_191_0.scaleAmp or 0.04) * var_191_4
	local var_191_6 = 1 - (1 - math.max(0, math.min(1, var_191_0.minAlpha or 0.94))) * var_191_4

	return var_191_5, var_191_6, var_191_4
end

function hitTestDeferredCoreSelectIcon(arg_192_0, arg_192_1)
	if not ui or not ui._deferredCoreSelect then
		return false
	end

	return var_0_130(arg_192_0, arg_192_1)
end

function drawDeferredCoreSelectIcon()
	if not ui or not ui._deferredCoreSelect then
		return
	end

	local var_193_0 = scrollIntroAnim
	local var_193_1 = loadedAssets and loadedAssets.ui and loadedAssets.ui.scrollIntroAnim
	local var_193_2 = var_193_1 and var_193_1.image
	local var_193_3 = var_193_1 and var_193_1.quads and var_193_1.quads[math.max(1, math.min(var_193_1.frameCount or 1, (var_193_0 and var_193_0.frame or 0) + 1))]
	local var_193_4 = var_0_129()

	if not var_193_0 or not var_193_2 or not var_193_3 or not var_193_4 then
		return
	end

	ui._coreSelectReturnHover = ui._coreSelectReturnHover or {
		hard = false,
		u = 0
	}

	local var_193_5 = ui._coreSelectReturnHover
	local var_193_6 = tooltip and tooltip.mouseX or -9999
	local var_193_7 = tooltip and tooltip.mouseY or -9999
	local var_193_8 = canResumeDeferredCoreSelect() and var_193_6 ~= -9999 and hitTestDeferredCoreSelectIcon(var_193_6, var_193_7) or false

	var_193_5.hard = var_193_8

	local var_193_9 = var_193_8 and 1 or 0

	var_193_5.u = (var_193_5.u or 0) + (var_193_9 - (var_193_5.u or 0)) * 0.25

	local var_193_10 = math.max(0, math.min(1, var_193_5.u or 0))
	local var_193_11, var_193_12, var_193_13 = var_0_131()
	local var_193_14 = var_193_1.frameW
	local var_193_15 = var_193_1.frameH
	local var_193_16 = var_193_4.w / math.max(1, var_193_14) * var_193_11
	local var_193_17 = var_193_4.x + var_193_4.w * 0.5
	local var_193_18 = var_193_4.y + var_193_4.h * 0.5
	local var_193_19 = var_193_17 - var_193_14 * var_193_16 * 0.5
	local var_193_20 = var_193_18 - var_193_15 * var_193_16 * 0.5

	love.graphics.push("all")

	local var_193_21 = var_0_97 and var_0_97.getBtnHoverOutlineShader and var_0_97.getBtnHoverOutlineShader()

	if var_193_21 then
		local var_193_22 = ui.scrollIntroAnim and ui.scrollIntroAnim.returnPrompt or {}
		local var_193_23 = var_193_22.outlineColor or {
			1,
			0.68,
			0.22,
			1
		}
		local var_193_24 = {
			0.9294117647058824,
			0.9019607843137255,
			0.9529411764705882
		}

		var_193_21:send("texelStep", {
			1 / math.max(1, var_193_2:getWidth() * var_193_16),
			1 / math.max(1, var_193_2:getHeight() * var_193_16)
		})
		var_193_21:send("outlineColor", {
			var_193_23[1] + (var_193_24[1] - var_193_23[1]) * var_193_10,
			var_193_23[2] + (var_193_24[2] - var_193_23[2]) * var_193_10,
			var_193_23[3] + (var_193_24[3] - var_193_23[3]) * var_193_10,
			math.min(1, 0.28 + 0.32 * var_193_13 + 0.4 * var_193_10)
		})
		var_193_21:send("threshold", 0.01)
		var_193_21:send("radiusPx", var_193_22.outlineRadiusPx or 2)
		love.graphics.setShader(var_193_21)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_193_2, var_193_3, var_193_19, var_193_20, 0, var_193_16, var_193_16)
	end

	love.graphics.pop()
end

local function var_0_132(arg_194_0, arg_194_1)
	local var_194_0 = package.loaded and package.loaded["src.ui.imprint"]

	return var_194_0 and var_194_0.isSkillFrameHovered and var_194_0.isSkillFrameHovered(arg_194_0, arg_194_1) or false
end

local function var_0_133(arg_195_0, arg_195_1)
	if battlefield and battlefield.imprintModal and battlefield.imprintModal.active then
		return false
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	if battlefield and battlefield.classSelect then
		return false
	end

	if var_0_132(arg_195_0, arg_195_1) then
		return false
	end

	return var_0_130(arg_195_0, arg_195_1)
end

local function var_0_134()
	if tooltip and tooltip.mouseX and tooltip.mouseY and var_0_132(tooltip.mouseX, tooltip.mouseY) then
		return
	end

	local var_196_0 = ui and ui.coreScrollTooltipState
	local var_196_1 = var_196_0 and tonumber(var_196_0.fade or 0) or 0

	if var_196_1 <= 0.001 or not ui or not ui.tooltip or not ui.virtual then
		return
	end

	local var_196_2 = var_196_0.rect or var_0_129()

	if not var_196_2 then
		return
	end

	local var_196_3 = require("src.data.language").getText("core_scroll_remaining_spins_tooltip", _G.currentGameLang or "ko")
	local var_196_4 = ui.tooltip and ui.tooltip.font or ui.font

	if not var_196_4 or not var_196_3 then
		return
	end

	love.graphics.setFont(var_196_4)

	local var_196_5 = 4
	local var_196_6 = 4
	local var_196_7 = math.floor(var_196_4:getWidth(var_196_3) + var_196_5 * 2 + 0.5)
	local var_196_8 = math.floor(var_196_4:getHeight() + var_196_5 * 2 + 0.5)
	local var_196_9 = math.floor(var_196_2.x + var_196_2.w * 0.5 - var_196_7 * 0.5 + 0.5)
	local var_196_10 = math.floor(var_196_2.y + var_196_2.h + var_196_6 + 0.5)

	if var_196_10 + var_196_8 > ui.virtual.H then
		var_196_10 = math.floor(var_196_2.y - var_196_8 - var_196_6 + 0.5)
	end

	local var_196_11 = math.max(0, math.min(var_196_9, ui.virtual.W - var_196_7))
	local var_196_12 = math.max(0, math.min(var_196_10, ui.virtual.H - var_196_8))

	if ui.tooltip.drawPixelRoundedRect then
		ui.tooltip:drawPixelRoundedRect(var_196_11, var_196_12, var_196_7, var_196_8, {
			0,
			0,
			0,
			0.95 * var_196_1
		}, nil)
	else
		love.graphics.setColor(0, 0, 0, 0.95 * var_196_1)
		love.graphics.rectangle("fill", var_196_11, var_196_12, var_196_7, var_196_8)
	end

	love.graphics.setColor(1, 1, 1, var_196_1)
	love.graphics.print(var_196_3, var_196_11 + var_196_5, var_196_12 + var_196_5 - 1)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_135(arg_197_0)
	arg_197_0 = tonumber(arg_197_0) or 0

	local var_197_0 = math.floor(arg_197_0 + 0.5)

	if math.abs(arg_197_0 - var_197_0) < 0.05 then
		return string.format("%d%%", var_197_0)
	end

	return string.format("%.1f%%", arg_197_0)
end

local function var_0_136()
	local var_198_0 = 0
	local var_198_1, var_198_2 = pcall(require, "src.game.cores")

	if var_198_1 and var_198_2 and var_198_2.getJokerChance then
		var_198_0 = tonumber(var_198_2.getJokerChance(var_0_55()) or 0) or 0
	else
		local var_198_3 = var_198_1 and var_198_2 and var_198_2.getActive and var_198_2.getActive() or nil

		for iter_198_0, iter_198_1 in ipairs(type(var_198_3) == "table" and var_198_3 or {}) do
			if iter_198_1 and iter_198_1.key == "Wildcard" then
				var_198_0 = var_198_0 + 0.03
			elseif iter_198_1 and iter_198_1.key == "JokerSeed" then
				var_198_0 = var_198_0 + 0.02
			end
		end
	end

	return math.max(0, math.min(0.05, var_198_0 or 0))
end

local function var_0_137()
	local var_199_0 = {
		{
			iconKey = "W",
			key = "W"
		},
		{
			iconKey = "A",
			key = "A"
		},
		{
			iconKey = "S",
			key = "S"
		},
		{
			iconKey = "H",
			key = "H"
		},
		{
			iconKey = "M",
			key = "M"
		},
		{
			iconKey = "D",
			key = "D"
		},
		{
			iconKey = "joker_tooltip",
			key = "Joker"
		}
	}
	local var_199_1 = var_0_5 and var_0_5.slot and var_0_5.slot.symbolWeights or {}
	local var_199_2 = var_199_1
	local var_199_3, var_199_4 = pcall(require, "src.game.cores")

	if var_199_3 and var_199_4 and var_199_4.getProjectedSymbolWeights then
		local var_199_5 = var_0_55()
		local var_199_6 = (freeSpinCredits or 0) <= 0
		local var_199_7, var_199_8 = var_199_4.getProjectedSymbolWeights(var_199_5, {
			isPaidSpin = var_199_6
		})

		if var_199_7 then
			var_199_1 = var_199_7
		end

		if var_199_8 then
			var_199_2 = var_199_8
		end
	end

	local var_199_9 = 0
	local var_199_10 = 0

	for iter_199_0, iter_199_1 in ipairs(var_199_0) do
		if iter_199_1.key ~= "Joker" then
			var_199_9 = var_199_9 + math.max(0, tonumber(var_199_2[iter_199_1.key] or 0) or 0)
			var_199_10 = var_199_10 + math.max(0, tonumber(var_199_1[iter_199_1.key] or 0) or 0)
		end
	end

	local var_199_11 = var_0_136()
	local var_199_12 = {}

	for iter_199_2, iter_199_3 in ipairs(var_199_0) do
		local var_199_13 = 0
		local var_199_14 = 0

		if iter_199_3.key == "Joker" then
			var_199_13 = var_199_11 * 100
			var_199_14 = 0
		elseif var_199_10 > 0 then
			var_199_13 = math.max(0, tonumber(var_199_1[iter_199_3.key] or 0) or 0) / var_199_10 * (1 - var_199_11) * 100

			if var_199_9 > 0 then
				var_199_14 = math.max(0, tonumber(var_199_2[iter_199_3.key] or 0) or 0) / var_199_9 * (1 - var_199_11) * 100
			else
				var_199_14 = 0.16666666666666666 * (1 - var_199_11) * 100
			end
		else
			var_199_13 = 0.16666666666666666 * (1 - var_199_11) * 100
			var_199_14 = 0.16666666666666666 * (1 - var_199_11) * 100
		end

		local var_199_15 = iter_199_3.key == "Joker" and loadedAssets and loadedAssets.tooltipStatIcons and loadedAssets.tooltipStatIcons.joker_tooltip or loadedAssets and loadedAssets.iconsSmall and loadedAssets.iconsSmall[iter_199_3.iconKey]

		table.insert(var_199_12, {
			key = iter_199_3.key,
			icon = var_199_15,
			text = var_0_135(var_199_13),
			locked = var_199_13 <= 0.0001,
			boosted = var_199_13 > var_199_14 + 0.05
		})
	end

	return var_199_12
end

local var_0_138 = alphaBoundsCache or {}

local function var_0_139(arg_200_0, arg_200_1)
	if not arg_200_0 then
		return nil
	end

	arg_200_1 = arg_200_1 or 0.01

	local var_200_0 = tostring(arg_200_0) .. ":" .. tostring(arg_200_1)

	if var_0_138[var_200_0] then
		return var_0_138[var_200_0]
	end

	local var_200_1, var_200_2 = arg_200_0:getDimensions()
	local var_200_3 = var_200_1
	local var_200_4 = var_200_2
	local var_200_5 = -1
	local var_200_6 = -1

	for iter_200_0 = 0, var_200_2 - 1 do
		for iter_200_1 = 0, var_200_1 - 1 do
			local var_200_7, var_200_8, var_200_9, var_200_10 = arg_200_0:getPixel(iter_200_1, iter_200_0)

			if arg_200_1 < var_200_10 then
				if iter_200_1 < var_200_3 then
					var_200_3 = iter_200_1
				end

				if iter_200_0 < var_200_4 then
					var_200_4 = iter_200_0
				end

				if var_200_5 < iter_200_1 then
					var_200_5 = iter_200_1
				end

				if var_200_6 < iter_200_0 then
					var_200_6 = iter_200_0
				end
			end
		end
	end

	if var_200_5 < var_200_3 or var_200_6 < var_200_4 then
		return nil
	end

	local var_200_11 = {
		x = var_200_3,
		y = var_200_4,
		w = var_200_5 - var_200_3 + 1,
		h = var_200_6 - var_200_4 + 1
	}

	var_0_138[var_200_0] = var_200_11

	return var_200_11
end

local function var_0_140(arg_201_0, arg_201_1, arg_201_2)
	local var_201_0 = var_0_137()
	local var_201_1 = ui and ui.tooltip and ui.tooltip.font or ui.font

	if var_201_1 then
		love.graphics.setFont(var_201_1)
	end

	local function var_201_2(arg_202_0)
		local var_202_0 = rawget(_G, "measureChineseMixedTextWidth")

		if type(var_202_0) == "function" then
			local var_202_1, var_202_2 = pcall(var_202_0, arg_202_0, var_201_1)

			if var_202_1 and type(var_202_2) == "number" then
				return var_202_2
			end
		end

		return var_201_1 and var_201_1:getWidth(arg_202_0) or 0
	end

	arg_201_2 = arg_201_2 or 1

	local var_201_3 = ui and ui.tooltip and ui.tooltip.padPx or math.floor(6 * (ui.scale or 1) + 0.5)
	local var_201_4 = math.max(1, math.floor(5 * (ui.scale or 1) + 0.5))
	local var_201_5 = var_201_1 and var_201_1:getHeight() or 8
	local var_201_6 = math.max(8, math.floor(var_201_5 * 0.92 + 0.5))
	local var_201_7 = math.max(5, math.floor(7 * (ui.scale or 1) + 0.5))
	local var_201_8 = loadedAssets and loadedAssets.ui and loadedAssets.ui.slotLock
	local var_201_9 = var_201_8 and (ui and ui.slotBookIcon and ui.slotBookIcon.tooltipLockScale or 1) or 1
	local var_201_10 = var_201_8 and math.floor(var_201_8:getWidth() * var_201_9 + 0.5) or math.max(8, math.floor(var_201_5 * 0.75 + 0.5))
	local var_201_11 = var_201_8 and math.floor(var_201_8:getHeight() * var_201_9 + 0.5) or math.max(7, math.floor(var_201_5 * 0.7 + 0.5))
	local var_201_12 = var_0_7.getText("slot_symbols_title", _G.currentGameLang or "ko")
	local var_201_13 = var_201_5
	local var_201_14 = var_201_4 + 2
	local var_201_15 = var_201_4 + 2
	local var_201_16 = var_201_13 + var_201_14 + 1 + var_201_15
	local var_201_17 = var_201_2(var_201_12)
	local var_201_18 = var_201_16

	for iter_201_0, iter_201_1 in ipairs(var_201_0) do
		local var_201_19 = var_201_6
		local var_201_20 = var_201_6

		if iter_201_1.icon then
			local var_201_21, var_201_22 = iter_201_1.icon:getDimensions()
			local var_201_23 = math.max(1, math.floor(var_201_6 / math.max(1, var_201_22) + 0.5))

			var_201_19, var_201_20 = var_201_21 * var_201_23, var_201_22 * var_201_23
			iter_201_1._iconScale = var_201_23
			iter_201_1._iconW = var_201_19
			iter_201_1._iconH = var_201_20
		end

		iter_201_1._rowH = math.max(var_201_5, var_201_20, iter_201_1.locked and var_201_11 or 0)

		local var_201_24 = iter_201_1.locked and var_201_10 or var_201_2(iter_201_1.text)

		var_201_17 = math.max(var_201_17, var_201_19 + var_201_7 + var_201_24)
		var_201_18 = var_201_18 + iter_201_1._rowH
	end

	local var_201_25 = var_201_18 + math.max(0, #var_201_0 - 1) * var_201_4
	local var_201_26 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadLeftPx or math.floor(2 * (ui.scale or 1) + 0.5)
	local var_201_27 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadRightPx or math.floor(2 * (ui.scale or 1) + 0.5)
	local var_201_28 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadTopPx or math.floor(2 * (ui.scale or 1) + 0.5)
	local var_201_29 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadBottomPx or math.floor(3 * (ui.scale or 1) + 0.5)
	local var_201_30 = var_201_3 * 2 + var_201_26 + var_201_27 + var_201_17
	local var_201_31 = var_201_3 * 2 + var_201_28 + var_201_29 + var_201_25
	local var_201_32 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipGapPx or math.floor(6 * (ui.scale or 1) + 0.5)
	local var_201_33
	local var_201_34

	if type(arg_201_0) == "table" then
		var_201_33 = math.floor((arg_201_0.x or 0) + ((arg_201_0.w or 0) - var_201_30) * 0.5 + 0.5)
		var_201_34 = math.floor((arg_201_0.y or 0) + (arg_201_0.h or 0) + var_201_32 + 0.5)
	else
		var_201_33 = math.floor((arg_201_0 or 0) + var_201_32 + 0.5)
		var_201_34 = math.floor((arg_201_1 or 0) + var_201_32 + 0.5)
	end

	if var_201_33 + var_201_30 > ui.virtual.W - 2 then
		var_201_33 = ui.virtual.W - 2 - var_201_30
	end

	if var_201_34 + var_201_31 > ui.virtual.H - 2 then
		var_201_34 = ui.virtual.H - 2 - var_201_31
	end

	if var_201_33 < 2 then
		var_201_33 = 2
	end

	if var_201_34 < 2 then
		var_201_34 = 2
	end

	local var_201_35 = math.floor(var_201_33 + 0.5)
	local var_201_36 = math.floor(var_201_34 + 0.5)
	local var_201_37 = {
		0,
		0,
		0,
		math.min(1, 0.85 * arg_201_2)
	}

	if ui and ui.tooltip and ui.tooltip.drawPixelRoundedRect then
		ui.tooltip:drawPixelRoundedRect(var_201_35, var_201_36, var_201_30, var_201_31, var_201_37, nil)
	else
		love.graphics.setColor(var_201_37[1], var_201_37[2], var_201_37[3], var_201_37[4])
		love.graphics.rectangle("fill", var_201_35, var_201_36, var_201_30, var_201_31, 6, 6)
	end

	local var_201_38 = math.floor(var_201_33 + var_201_3 + var_201_26 + 0.5)
	local var_201_39 = math.floor(var_201_34 + var_201_3 + var_201_28 + 0.5)

	love.graphics.setColor(0.83, 0.78, 0.64, arg_201_2)
	love.graphics.print(var_201_12, var_201_38, var_201_39)

	local var_201_40 = math.floor(var_201_39 + var_201_13 + var_201_14 + 1 + 0.5)

	love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * arg_201_2)
	love.graphics.rectangle("fill", var_201_38, var_201_40, var_201_17, 1)

	local var_201_41 = var_201_39 + var_201_16

	local function var_201_42(arg_203_0, arg_203_1, arg_203_2)
		if var_201_8 then
			love.graphics.setColor(1, 1, 1, arg_203_2 or 1)
			love.graphics.draw(var_201_8, math.floor(arg_203_0 + 0.5), math.floor(arg_203_1 + 0.5), 0, var_201_9, var_201_9)

			return
		end

		local var_203_0 = var_201_10
		local var_203_1 = var_201_11
		local var_203_2 = math.max(7, math.floor(var_203_0 * 0.92 + 0.5))
		local var_203_3 = math.max(5, math.floor(var_203_1 * 0.5 + 0.5))
		local var_203_4 = math.floor(arg_203_0 + (var_203_0 - var_203_2) * 0.5 + 0.5)
		local var_203_5 = math.floor(arg_203_1 + var_203_1 - var_203_3 + 0.5)
		local var_203_6 = math.max(5, var_203_2 - 3)
		local var_203_7 = math.max(4, math.floor(var_203_1 * 0.48 + 0.5))
		local var_203_8 = math.floor(arg_203_0 + (var_203_0 - var_203_6) * 0.5 + 0.5)
		local var_203_9 = math.floor(arg_203_1 + 0.5)
		local var_203_10 = math.max(1, math.floor((ui.scale or 1) + 0.5))

		love.graphics.setColor(0.58, 0.58, 0.58, arg_203_2 or 1)
		love.graphics.rectangle("fill", var_203_8, var_203_9, var_203_6, var_203_10)
		love.graphics.rectangle("fill", var_203_8, var_203_9, var_203_10, var_203_7)
		love.graphics.rectangle("fill", var_203_8 + var_203_6 - var_203_10, var_203_9, var_203_10, var_203_7)
		love.graphics.setColor(0.48, 0.48, 0.48, arg_203_2 or 1)
		love.graphics.rectangle("fill", var_203_4, var_203_5, var_203_2, var_203_3)
		love.graphics.setColor(0.28, 0.28, 0.28, arg_203_2 or 1)
		love.graphics.rectangle("fill", var_203_4 + math.floor(var_203_2 * 0.5), var_203_5 + 2, var_203_10, math.max(1, var_203_3 - 3))
	end

	local var_201_43 = var_201_38 + var_201_17

	for iter_201_2, iter_201_3 in ipairs(var_201_0) do
		local var_201_44 = iter_201_3._rowH or var_201_5
		local var_201_45 = var_201_41 + math.floor((var_201_44 - (iter_201_3._iconH or var_201_6)) * 0.5 + 0.5)

		if iter_201_3.icon then
			local var_201_46 = iter_201_3._iconScale or 1

			love.graphics.setColor(1, 1, 1, arg_201_2)
			love.graphics.draw(iter_201_3.icon, var_201_38, var_201_45, 0, var_201_46, var_201_46)
		end

		if iter_201_3.locked then
			local var_201_47 = var_201_43 - var_201_10
			local var_201_48 = var_201_41 + math.floor((var_201_44 - var_201_11) * 0.5 + 0.5)

			var_201_42(var_201_47, var_201_48, arg_201_2)
		else
			local var_201_49 = var_201_41 + math.floor((var_201_44 - var_201_5) * 0.5 + 0.5) - 1
			local var_201_50 = var_201_2(iter_201_3.text)

			if iter_201_3.boosted then
				love.graphics.setColor(0.6, 1, 0.6, arg_201_2)
			else
				love.graphics.setColor(1, 1, 1, arg_201_2)
			end

			love.graphics.print(iter_201_3.text, var_201_43 - var_201_50, var_201_49)
		end

		var_201_41 = var_201_41 + var_201_44 + var_201_4
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function updateScreenScale()
	local var_204_0 = love.graphics.getWidth()
	local var_204_1 = love.graphics.getHeight()
	local var_204_2, var_204_3 = math.floor(tonumber(var_204_0) or 0), math.floor(tonumber(var_204_1) or 0)

	if var_204_2 <= 0 or var_204_3 <= 0 then
		return false
	end

	local var_204_4 = ui.virtual.W
	local var_204_5 = ui.virtual.H
	local var_204_6 = love.window and love.window.getFullscreen and love.window.getFullscreen()
	local var_204_7 = false

	if love.window and love.window.getMode then
		local var_204_8, var_204_9, var_204_10, var_204_11 = pcall(love.window.getMode)

		var_204_7 = var_204_8 and var_204_11 and var_204_11.borderless == true
	end

	local var_204_12 = (love.system and love.system.getOS and love.system.getOS() or nil) == "OS X" or jit and jit.os == "OSX"
	local var_204_13 = ui and ui.integerScale ~= false
	local var_204_14 = ui and ui.windowIntegerScale ~= false
	local var_204_15 = math.min(var_204_2 / var_204_4, var_204_3 / var_204_5)

	local function var_204_16()
		local var_205_0 = math.floor(var_204_2 / var_204_4)
		local var_205_1 = math.floor(var_204_3 / var_204_5)
		local var_205_2 = math.min(var_205_0, var_205_1)

		if var_205_2 >= 1 then
			return var_205_2
		end

		return nil
	end

	local var_204_17

	if var_204_12 and (var_204_6 or var_204_7) then
		var_204_17 = math.max(0.1, var_204_15)
	elseif var_204_6 then
		var_204_17 = var_204_13 and var_204_16() or nil

		if not var_204_17 then
			var_204_17 = math.max(0.1, var_204_15)
		end
	else
		var_204_17 = var_204_14 and var_204_16() or nil
		var_204_17 = var_204_17 or math.max(0.1, var_204_15)
	end

	if not masterCanvas or masterCanvas:getWidth() ~= var_204_2 or masterCanvas:getHeight() ~= var_204_3 then
		local var_204_18, var_204_19 = pcall(love.graphics.newCanvas, var_204_2, var_204_3)

		if not var_204_18 or not var_204_19 then
			return false
		end

		local var_204_20

		if not var_0_35() then
			local var_204_21 = love.graphics.getCanvasFormats and love.graphics.getCanvasFormats() or nil

			if not var_204_21 or var_204_21.depth24stencil8 ~= false then
				local var_204_22, var_204_23 = pcall(love.graphics.newCanvas, var_204_2, var_204_3, {
					msaa = 0,
					format = "depth24stencil8",
					readable = false
				})

				if var_204_22 and var_204_23 then
					var_204_20 = var_204_23
				end
			end

			if not var_204_20 and (not var_204_21 or var_204_21.stencil8 ~= false) then
				local var_204_24, var_204_25 = pcall(love.graphics.newCanvas, var_204_2, var_204_3, {
					msaa = 0,
					format = "stencil8",
					readable = false
				})

				if var_204_24 and var_204_25 then
					var_204_20 = var_204_25
				end
			end
		end

		local var_204_26 = masterCanvas
		local var_204_27 = masterDepthStencil

		masterCanvas = var_204_19
		masterDepthStencil = var_204_20

		if var_204_26 then
			pcall(var_204_26.release, var_204_26)
		end

		if var_204_27 then
			pcall(var_204_27.release, var_204_27)
		end
	end

	screenScale = var_204_17
	screenScaleX = var_204_17
	screenScaleY = var_204_17
	screenOffsetX = math.floor((var_204_2 - var_204_4 * var_204_17) * 0.5 + 0.5)
	screenOffsetY = math.floor((var_204_3 - var_204_5 * var_204_17) * 0.5 + 0.5)

	if applyLinuxGameCursorHardware then
		applyLinuxGameCursorHardware()
	end

	return true
end

local function var_0_141(arg_206_0, arg_206_1, arg_206_2, arg_206_3, arg_206_4)
	var_0_11.drawPanel(ui, arg_206_0, arg_206_1, arg_206_2, arg_206_3, arg_206_4)
end

local function var_0_142()
	return var_0_10.compute(ui)
end

local function var_0_143()
	if not lastLayout then
		return nil
	end

	local var_208_0 = lastLayout.slotPanel.x
	local var_208_1 = lastLayout.slotPanel.y
	local var_208_2 = lastLayout.slotPanel.w
	local var_208_3 = ui and ui.sandboxNextLines or {}
	local var_208_4 = math.floor(var_208_0 + 8 + (var_208_3.offsetX or 0))
	local var_208_5 = math.floor(var_208_1 + 18 + (var_208_3.offsetY or 0))
	local var_208_6 = math.floor((ui and ui.slot and ui.slot.stickyOffsetY or 0) + 0.5)
	local var_208_7 = math.floor((spinShake.x or 0) + 0)
	local var_208_8 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_208_6 + 0.5)
	local var_208_9 = var_208_4 + var_208_7
	local var_208_10 = var_208_5 + var_208_8
	local var_208_11 = var_208_3.labelDY or math.floor(6 * (ui.scale or 1))
	local var_208_12 = var_208_3.controlsDY ~= nil and var_208_3.controlsDY or var_208_11
	local var_208_13 = var_208_3.btnW or math.floor(14 * (ui.scale or 1))
	local var_208_14 = var_208_3.btnH or math.floor(10 * (ui.scale or 1))
	local var_208_15 = var_208_3.gap or math.floor(4 * (ui.scale or 1))
	local var_208_16 = var_208_9
	local var_208_17 = var_208_9 + math.floor(64 * (ui.scale or 1))
	local var_208_18 = var_208_17 + var_208_13 + var_208_15 + math.floor(18 * (ui.scale or 1))

	return {
		label = {
			x = var_208_16,
			y = var_208_10 + var_208_11
		},
		valueX = var_208_17 + var_208_13 + var_208_15,
		valueY = var_208_10 + var_208_12,
		minus = {
			x = var_208_17,
			y = var_208_10 + var_208_12,
			w = var_208_13,
			h = var_208_14
		},
		plus = {
			x = var_208_18,
			y = var_208_10 + var_208_12,
			w = var_208_13,
			h = var_208_14
		}
	}
end

local function var_0_144()
	if not lastLayout then
		return nil
	end

	local var_209_0 = lastLayout.slotPanel.x
	local var_209_1 = lastLayout.slotPanel.y
	local var_209_2 = ui and ui.sandboxJungsu or {}
	local var_209_3 = math.floor(var_209_0 + 8 + (var_209_2.offsetX or 0))
	local var_209_4 = math.floor(var_209_1 + 18 + (var_209_2.offsetY or 0))
	local var_209_5 = math.floor((ui and ui.slot and ui.slot.stickyOffsetY or 0) + 0.5)
	local var_209_6 = math.floor((spinShake.x or 0) + 0)
	local var_209_7 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_209_5 + 0.5)
	local var_209_8 = var_209_3 + var_209_6
	local var_209_9 = var_209_4 + var_209_7
	local var_209_10 = ui and ui.sandboxNextLines or {}
	local var_209_11 = var_209_2.btnW or var_209_10.btnW or math.floor(14 * (ui.scale or 1))
	local var_209_12 = var_209_2.btnH or var_209_10.btnH or math.floor(10 * (ui.scale or 1))
	local var_209_13 = var_209_2.gap or var_209_10.gap or math.floor(4 * (ui.scale or 1))
	local var_209_14 = var_209_2.addW or math.floor(30 * (ui.scale or 1))
	local var_209_15 = var_209_2.addH or math.floor(12 * (ui.scale or 1))
	local var_209_16 = var_209_8
	local var_209_17 = var_209_9 + math.floor(6 * (ui.scale or 1))
	local var_209_18 = var_209_8 + math.floor(64 * (ui.scale or 1))
	local var_209_19 = var_209_18 + var_209_11 + var_209_13
	local var_209_20 = var_209_19 + math.floor(18 * (ui.scale or 1))
	local var_209_21 = var_209_20 + var_209_11 + math.floor(10 * (ui.scale or 1))
	local var_209_22 = var_209_9 + math.floor(6 * (ui.scale or 1))

	return {
		label = {
			x = var_209_16,
			y = var_209_17
		},
		valueX = var_209_19,
		valueY = var_209_22,
		minus = {
			x = var_209_18,
			y = var_209_22,
			w = var_209_11,
			h = var_209_12
		},
		plus = {
			x = var_209_20,
			y = var_209_22,
			w = var_209_11,
			h = var_209_12
		},
		add = {
			x = var_209_21,
			y = var_209_22 - 1,
			w = var_209_14,
			h = var_209_15
		}
	}
end

local function var_0_145()
	local var_210_0 = var_0_144()

	if not var_210_0 then
		return nil
	end

	local var_210_1 = (ui and ui.sandboxGold or {}).rowGap or math.floor(16 * (ui.scale or 1))

	return {
		label = {
			x = var_210_0.label.x,
			y = var_210_0.label.y + var_210_1
		},
		valueX = var_210_0.valueX,
		valueY = var_210_0.valueY + var_210_1,
		minus = {
			x = var_210_0.minus.x,
			y = var_210_0.minus.y + var_210_1,
			w = var_210_0.minus.w,
			h = var_210_0.minus.h
		},
		plus = {
			x = var_210_0.plus.x,
			y = var_210_0.plus.y + var_210_1,
			w = var_210_0.plus.w,
			h = var_210_0.plus.h
		},
		add = {
			x = var_210_0.add.x,
			y = var_210_0.add.y + var_210_1,
			w = var_210_0.add.w,
			h = var_210_0.add.h
		}
	}
end

local function var_0_146()
	if not lastLayout then
		return nil
	end

	if not battlefield or not battlefield.sandboxMode or battlefield.mode == "battle" then
		return nil
	end

	local var_211_0 = lastLayout.right

	if not var_211_0 then
		return nil
	end

	local var_211_1 = ui and ui.sandboxCoreEquip or {}
	local var_211_2 = math.floor(var_211_0.x + (var_211_1.offsetX or 0))
	local var_211_3 = math.floor(var_211_0.y + var_211_0.h + (var_211_1.offsetY or 0))
	local var_211_4 = var_211_1.labelDY or math.floor(6 * (ui.scale or 1))
	local var_211_5 = var_211_1.controlsDY ~= nil and var_211_1.controlsDY or var_211_4
	local var_211_6 = var_211_1.btnW or math.floor(14 * (ui.scale or 1))
	local var_211_7 = var_211_1.btnH or math.floor(10 * (ui.scale or 1))
	local var_211_8 = var_211_1.gap or math.floor(4 * (ui.scale or 1))
	local var_211_9 = var_211_1.equipW or math.floor(40 * (ui.scale or 1))
	local var_211_10 = var_211_1.equipH or math.floor(12 * (ui.scale or 1))
	local var_211_11 = var_211_1.alertW or math.floor(44 * (ui.scale or 1))
	local var_211_12 = var_211_1.alertH or var_211_10
	local var_211_13 = var_211_1.alertGap or math.floor(10 * (ui.scale or 1))
	local var_211_14 = var_211_2
	local var_211_15 = var_211_14 + math.floor(64 * (ui.scale or 1))
	local var_211_16 = var_211_15 + var_211_6 + var_211_8
	local var_211_17 = var_211_16 + math.floor(18 * (ui.scale or 1))
	local var_211_18 = var_211_17 + var_211_6 + math.floor(10 * (ui.scale or 1))
	local var_211_19 = var_211_18 + var_211_9 + var_211_13

	return {
		label = {
			x = var_211_14,
			y = var_211_3 + var_211_4
		},
		valueX = var_211_16,
		valueY = var_211_3 + var_211_5,
		minus = {
			x = var_211_15,
			y = var_211_3 + var_211_5,
			w = var_211_6,
			h = var_211_7
		},
		plus = {
			x = var_211_17,
			y = var_211_3 + var_211_5,
			w = var_211_6,
			h = var_211_7
		},
		equip = {
			x = var_211_18,
			y = var_211_3 + var_211_5 - 1,
			w = var_211_9,
			h = var_211_10
		},
		alert = {
			x = var_211_19,
			y = var_211_3 + var_211_5 - 1,
			w = var_211_11,
			h = var_211_12
		}
	}
end

function getVictoryClearWaveForDifficulty(arg_212_0)
	local var_212_0 = tonumber(arg_212_0 or 1) or 1

	if var_212_0 <= 1 then
		return 10
	end

	if var_212_0 == 2 then
		return 20
	end

	return 30
end

local var_0_147 = {
	1,
	2,
	4,
	6,
	9,
	13,
	18,
	24
}
local var_0_148 = {
	1,
	2,
	3
}

function awardOriginiteForGate(arg_213_0)
	if not battlefield or not arg_213_0 or not arg_213_0.victory then
		return nil
	end

	local var_213_0 = math.floor(tonumber(arg_213_0.waveId or battlefield.wave and battlefield.wave.id or 0) or 0)

	if var_213_0 <= 0 or var_213_0 % 5 ~= 0 then
		return nil
	end

	local var_213_1 = math.max(1, math.min(8, math.floor(tonumber(battlefield.stage or battlefield.currentStage or CurrentStage or 1) or 1)))
	local var_213_2 = math.max(1, math.min(3, math.floor(tonumber(battlefield.difficulty or 1) or 1)))
	local var_213_3 = math.floor(var_213_0 / 5)
	local var_213_4 = var_213_3 * (var_0_147[var_213_1] or 1) * (var_0_148[var_213_2] or 1)

	OriginiteFirstReachedGates[var_213_1] = OriginiteFirstReachedGates[var_213_1] or {}
	OriginiteFirstReachedGates[var_213_1][var_213_2] = OriginiteFirstReachedGates[var_213_1][var_213_2] or {}

	local var_213_5 = OriginiteFirstReachedGates[var_213_1][var_213_2]
	local var_213_6 = var_213_5[var_213_3] ~= true

	if var_213_6 then
		var_213_5[var_213_3] = true
	end

	local var_213_7 = var_213_6 and var_213_4 or 0
	local var_213_8 = var_213_4 + var_213_7

	if var_213_8 > 0 and var_0_16 and var_0_16.addOriginite then
		pcall(var_0_16.addOriginite, var_213_8)

		if var_0_22 then
			pcall(var_0_22)
		end
	end

	battlefield.originiteEarnedThisRun = math.max(0, (tonumber(battlefield.originiteEarnedThisRun) or 0) + var_213_8)

	if ui and ui._victorySprite then
		ui._victorySprite.originiteReward = {
			kind = var_213_0 % 10 == 0 and "boss" or "judgement",
			amount = var_213_4,
			firstReachBonus = var_213_7
		}
	end

	return var_213_8
end

function showSandboxOriginiteVictoryPreview(arg_214_0)
	if not battlefield or not battlefield.sandboxMode or not ui then
		return false
	end

	local var_214_0 = arg_214_0 == "boss"
	local var_214_1 = math.max(1, math.min(8, math.floor(tonumber(battlefield.stage or battlefield.currentStage or CurrentStage or 1) or 1)))
	local var_214_2 = math.max(1, math.min(3, math.floor(tonumber(battlefield.difficulty or 1) or 1)))
	local var_214_3 = (var_214_0 and 2 or 1) * (var_0_147[var_214_1] or 1) * (var_0_148[var_214_2] or 1)
	local var_214_4 = ui.victorySprite and ui.victorySprite.dur or 2

	ui._defeatSprite = nil
	ui._victorySprite = {
		active = true,
		t = 0,
		dur = var_214_4,
		originiteReward = {
			kind = var_214_0 and "boss" or "judgement",
			amount = var_214_3,
			firstReachBonus = var_214_3
		}
	}

	return true
end

function markRunClearedIfFinalWave(arg_215_0)
	if not battlefield or not arg_215_0 or not arg_215_0.victory then
		return false
	end

	local var_215_0 = tonumber(arg_215_0.waveId or battlefield.wave and battlefield.wave.id or 0) or 0
	local var_215_1 = getVictoryClearWaveForDifficulty(battlefield.difficulty)

	if var_215_0 < var_215_1 then
		return false
	end

	battlefield.gameOver = true
	battlefield.gameClear = true
	battlefield.clearWaveTarget = var_215_1
	battlefield.gameOverT = 0
	battlefield.clearRewardGranted = true

	if var_0_16 and var_0_16.markDifficultyCleared then
		pcall(var_0_16.markDifficultyCleared, battlefield.stage or battlefield.currentStage or CurrentStage or 1, battlefield.difficulty or 1)
	end

	if battlefield.wave then
		battlefield.wave.active = false
	end

	uiLocked = false

	return true
end

local function var_0_149()
	local var_216_0 = var_0_146()

	if not var_216_0 then
		return nil
	end

	local var_216_1 = ui.scale or 1
	local var_216_2 = var_216_0.minus.y + math.floor(17 * var_216_1)
	local var_216_3 = var_216_0.minus.w
	local var_216_4 = var_216_0.minus.h
	local var_216_5 = math.floor(4 * var_216_1)
	local var_216_6 = var_216_0.minus.x + var_216_3 + var_216_5
	local var_216_7 = var_216_6 + math.floor(110 * var_216_1)
	local var_216_8 = var_216_7 + var_216_3 + math.floor(8 * var_216_1)

	return {
		label = {
			x = var_216_0.label.x,
			y = var_216_2
		},
		valueX = var_216_6,
		valueY = var_216_2,
		minus = {
			x = var_216_0.minus.x,
			y = var_216_2,
			w = var_216_3,
			h = var_216_4
		},
		plus = {
			x = var_216_7,
			y = var_216_2,
			w = var_216_3,
			h = var_216_4
		},
		clear = {
			x = var_216_8,
			y = var_216_2 - 1,
			w = math.floor(34 * var_216_1),
			h = math.floor(12 * var_216_1)
		}
	}
end

local function var_0_150(arg_217_0)
	local var_217_0

	if slot.result and slot.result.highlightActive and slot.result.winningLines then
		local var_217_1 = {
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
		}
		local var_217_2 = {
			{},
			{},
			{}
		}
		local var_217_3 = slot.result.visibleWinningLines or slot.result.winningLines

		for iter_217_0, iter_217_1 in ipairs(var_217_3) do
			local var_217_4 = var_217_1[iter_217_1]

			if var_217_4 then
				for iter_217_2, iter_217_3 in ipairs(var_217_4) do
					local var_217_5 = iter_217_3[1]
					local var_217_6 = iter_217_3[2]

					var_217_2[var_217_5][var_217_6] = true
				end
			end
		end

		local var_217_7 = "normal"
		local var_217_8 = slot.result.winSeq

		if var_217_8 and var_217_8.i and var_217_8.i > 0 and var_217_8.steps then
			local var_217_9 = var_217_8.i

			if var_217_8._prismByStep and var_217_8._prismByStep[var_217_9] then
				var_217_7 = "prism"
			elseif var_217_8._legendByStep and var_217_8._legendByStep[var_217_9] then
				var_217_7 = "legendary"
			elseif var_217_8._rareByStep and var_217_8._rareByStep[var_217_9] then
				var_217_7 = "rare"
			elseif var_217_8._advByStep and var_217_8._advByStep[var_217_9] then
				var_217_7 = "advanced"
			end
		elseif var_217_8 and var_217_8.steps then
			for iter_217_4 = 1, #var_217_8.steps do
				if var_217_8._prismByStep and var_217_8._prismByStep[iter_217_4] then
					var_217_7 = "prism"

					break
				elseif var_217_8._legendByStep and var_217_8._legendByStep[iter_217_4] then
					if var_217_7 ~= "prism" then
						var_217_7 = "legendary"
					end
				elseif var_217_8._rareByStep and var_217_8._rareByStep[iter_217_4] then
					if var_217_7 ~= "prism" and var_217_7 ~= "legendary" then
						var_217_7 = "rare"
					end
				elseif var_217_8._advByStep and var_217_8._advByStep[iter_217_4] and var_217_7 == "normal" then
					var_217_7 = "advanced"
				end
			end
		end

		var_217_0 = {
			active = true,
			cells = var_217_2,
			t = slot.result.ht or 0,
			d = slot.result.hd or 0.35,
			winGrade = var_217_7
		}
	end

	var_0_11.drawGrid(ui, arg_217_0, slot.grid, loadedAssets, slot.reels, var_217_0)

	if Render2 and Render2.drawSlotWinEffects then
		Render2.drawSlotWinEffects(ui, arg_217_0)
	end
end

local function var_0_151(arg_218_0)
	if ui then
		ui._equippedCoreRects = {}
	end

	if not arg_218_0 or not arg_218_0.slotPanel or not arg_218_0.grid or not arg_218_0.spinBtn then
		return
	end

	local var_218_0, var_218_1 = pcall(require, "src.game.cores")

	if not var_218_0 or not var_218_1 or type(var_218_1.getActive) ~= "function" then
		return
	end

	local var_218_2 = var_218_1.getActive()

	if not var_218_2 or #var_218_2 == 0 then
		return
	end

	local var_218_3 = ui and ui.coreEquipped or {
		gapPx = 4,
		anchor = "below"
	}
	local var_218_4 = ui and ui.coreSelect or {}
	local var_218_5 = var_218_4.scale or 2
	local var_218_6 = var_218_4.content and var_218_4.content.icon or {}
	local var_218_7 = math.max(1, math.floor((var_218_6.sizePx or 16 * var_218_5) + 0.5))
	local var_218_8 = math.max(0, math.floor((var_218_3.gapPx or 4) + 0.5))
	local var_218_9 = 0
	local var_218_10 = 0
	local var_218_11 = 0
	local var_218_12 = 0
	local var_218_13 = #var_218_2
	local var_218_14 = var_218_3.align or "left"
	local var_218_15

	if var_218_3.x ~= nil then
		if var_218_14 == "left" then
			var_218_15 = math.floor((var_218_3.x or 0) + 0.5) + var_218_11
		else
			local var_218_16 = var_218_13 * var_218_7 + (var_218_13 - 1) * var_218_8

			var_218_15 = math.floor((var_218_3.x or 0) - var_218_16 * 0.5 + 0.5) + var_218_11
		end
	elseif var_218_14 == "left" then
		var_218_15 = math.floor(arg_218_0.slotPanel.x + arg_218_0.slotPanel.w * 0.5 - var_218_7 * 0.5 + 0.5) + var_218_11
	else
		local var_218_17 = var_218_13 * var_218_7 + (var_218_13 - 1) * var_218_8

		var_218_15 = arg_218_0.slotPanel.x + math.floor((arg_218_0.slotPanel.w - var_218_17) / 2 + 0.5) + var_218_11
	end

	local var_218_18

	if var_218_3.y ~= nil then
		var_218_18 = math.floor((var_218_3.y or 0) + 0.5) + var_218_12
	elseif var_218_3.anchor == "below" then
		var_218_18 = arg_218_0.spinBtn.y + arg_218_0.spinBtn.h + var_218_10 + var_218_12
	else
		var_218_18 = arg_218_0.spinBtn.y - var_218_9 - var_218_7 + var_218_12
	end

	local var_218_19 = math.max(1, math.floor((var_218_3.wrapCols or 4) + 0))
	local var_218_20 = math.max(0, math.floor((var_218_3.rowGapPx or var_218_8) + 0.5))
	local var_218_21 = slot and slot.spin and slot.spin.active and true or false

	for iter_218_0 = 1, var_218_13 do
		local var_218_22 = var_218_2[iter_218_0]
		local var_218_23 = var_218_22 and var_218_22.def
		local var_218_24 = var_218_23 and var_218_1.getIcon(var_218_23)

		if var_218_24 then
			if var_218_22._uiHideInBar then
				local var_218_25 = var_218_24:getWidth()
				local var_218_26 = var_218_24:getHeight()
				local var_218_27 = var_218_7 / math.max(1, var_218_25)
				local var_218_28 = var_218_7 / math.max(1, var_218_26)
				local var_218_29 = math.floor((iter_218_0 - 1) / var_218_19)
				local var_218_30 = (iter_218_0 - 1) % var_218_19
				local var_218_31

				if var_218_14 == "center" then
					local var_218_32 = var_218_13 - var_218_29 * var_218_19
					local var_218_33 = math.max(1, math.min(var_218_19, var_218_32))
					local var_218_34 = var_218_33 * var_218_7 + (var_218_33 - 1) * var_218_8
					local var_218_35

					if var_218_3.x ~= nil then
						var_218_35 = math.floor((var_218_3.x or 0) - var_218_34 * 0.5 + 0.5) + var_218_11
					else
						var_218_35 = arg_218_0.slotPanel.x + math.floor((arg_218_0.slotPanel.w - var_218_34) / 2 + 0.5) + var_218_11
					end

					var_218_31 = var_218_35 + var_218_30 * (var_218_7 + var_218_8)
				else
					var_218_31 = var_218_15 + var_218_30 * (var_218_7 + var_218_8)
				end

				local var_218_36 = var_218_18 + var_218_29 * (var_218_7 + var_218_20)

				ui._equippedCoreRects = ui._equippedCoreRects or {}

				local var_218_37 = math.floor(var_218_31 + var_218_25 * var_218_27 * 0.5 + 0.5)
				local var_218_38 = math.floor(var_218_36 + var_218_26 * var_218_28 * 0.5 + 0.5)
				local var_218_39, var_218_40 = pcall(require, "src.game.cores")
				local var_218_41 = var_218_39 and var_218_40 and var_218_40.getIconData and var_218_40.getIconData(var_218_23) or nil

				table.insert(ui._equippedCoreRects, {
					def = var_218_23,
					cx = var_218_37,
					cy = var_218_38,
					sx = var_218_27,
					sy = var_218_28,
					iw = var_218_25,
					ih = var_218_26,
					idata = var_218_41
				})
			else
				local var_218_42 = var_218_24:getWidth()
				local var_218_43 = var_218_24:getHeight()
				local var_218_44 = var_218_7 / math.max(1, var_218_42)
				local var_218_45 = var_218_7 / math.max(1, var_218_43)
				local var_218_46 = math.floor((iter_218_0 - 1) / var_218_19)
				local var_218_47 = (iter_218_0 - 1) % var_218_19
				local var_218_48

				if var_218_14 == "center" then
					local var_218_49 = var_218_13 - var_218_46 * var_218_19
					local var_218_50 = math.max(1, math.min(var_218_19, var_218_49))
					local var_218_51 = var_218_50 * var_218_7 + (var_218_50 - 1) * var_218_8
					local var_218_52

					if var_218_3.x ~= nil then
						var_218_52 = math.floor((var_218_3.x or 0) - var_218_51 * 0.5 + 0.5) + var_218_11
					else
						var_218_52 = arg_218_0.slotPanel.x + math.floor((arg_218_0.slotPanel.w - var_218_51) / 2 + 0.5) + var_218_11
					end

					var_218_48 = var_218_52 + var_218_47 * (var_218_7 + var_218_8)
				else
					var_218_48 = var_218_15 + var_218_47 * (var_218_7 + var_218_8)
				end

				local var_218_53 = var_218_18 + var_218_46 * (var_218_7 + var_218_20)
				local var_218_54 = 1
				local var_218_55 = ui and ui.coreEquipped and ui.coreEquipped.fx and ui.coreEquipped.fx.scale or {}
				local var_218_56 = var_218_55.amp or 0.08
				local var_218_57 = var_218_55.speedHz or 2
				local var_218_58 = love.timer.getTime()

				if var_218_22._uiSustainSpin and var_218_21 then
					var_218_54 = 1 + var_218_56 * math.sin(2 * math.pi * var_218_57 * var_218_58 + iter_218_0 * 0.3)
				elseif var_218_22._uiPulseT0 and var_218_22._uiPulseDur and var_218_58 - (var_218_22._uiPulseT0 or 0) <= (var_218_22._uiPulseDur or 0) then
					local var_218_59 = var_218_58 - (var_218_22._uiPulseT0 or 0)

					var_218_54 = 1 + var_218_56 * math.sin(2 * math.pi * var_218_57 * var_218_59 + iter_218_0 * 0.3)
				end

				local var_218_60 = var_218_44 * var_218_54
				local var_218_61 = var_218_45 * var_218_54
				local var_218_62 = math.floor(var_218_48 + var_218_42 * var_218_44 * 0.5 + 0.5)
				local var_218_63 = math.floor(var_218_53 + var_218_43 * var_218_45 * 0.5 + 0.5)
				local var_218_64 = ui and ui.tooltip and ui.tooltip.mouseX or nil
				local var_218_65 = ui and ui.tooltip and ui.tooltip.mouseY or nil
				local var_218_66 = 6
				local var_218_67 = false
				local var_218_68 = not var_218_21 and (not battlefield or battlefield.mode ~= "battle") and (not ui or not ui.pauseOverlayState or not ui.pauseOverlayState.active) and (not battlefield or not battlefield.imprintModal or not battlefield.imprintModal.active)

				if ui and ui._coreSelect and ui._coreSelect.active then
					var_218_68 = false
				end

				if battlefield and battlefield.gameOver then
					var_218_68 = false
				end

				if var_218_68 and var_218_64 and var_218_65 then
					local var_218_69, var_218_70 = pcall(require, "src.game.cores")
					local var_218_71 = var_218_69 and var_218_70 and var_218_70.getIconData and var_218_70.getIconData(var_218_23) or nil

					if var_218_71 and ui and ui.tooltip and ui.tooltip.hitTestImageAlpha then
						var_218_67 = ui.tooltip:hitTestImageAlpha(var_218_71, var_218_62, var_218_63, var_218_60, var_218_61, var_218_42 * 0.5, var_218_43 * 0.5, var_218_64, var_218_65, 0.05)
					else
						local var_218_72 = var_218_42 * var_218_60 * 0.5
						local var_218_73 = var_218_43 * var_218_61 * 0.5
						local var_218_74 = var_218_62 - var_218_72
						local var_218_75 = var_218_62 + var_218_72
						local var_218_76 = var_218_63 - var_218_73
						local var_218_77 = var_218_63 + var_218_73

						var_218_67 = var_218_74 <= var_218_64 and var_218_64 <= var_218_75 and var_218_76 <= var_218_65 and var_218_65 <= var_218_77
					end
				end

				var_218_22._uiHoverHard = var_218_67

				local var_218_78 = var_218_67 and 1 or 0

				var_218_22._uiHoverU = (var_218_22._uiHoverU or 0) + (var_218_78 - (var_218_22._uiHoverU or 0)) * 0.25

				local var_218_79 = var_218_53 + -math.floor(var_218_66 * (var_218_22._uiHoverU or 0) + 0.5)
				local var_218_80 = math.floor(var_218_79 + var_218_43 * var_218_45 * 0.5 + 0.5)
				local var_218_81, var_218_82 = var_218_1.getRarity(var_218_23)
				local var_218_83 = var_0_97.getImageOutlineShader()

				love.graphics.setShader(var_218_83)
				var_218_83:send("texelStep", {
					1 / (math.max(1, var_218_42) * var_218_60),
					1 / (math.max(1, var_218_43) * var_218_61)
				})
				var_218_83:send("outlineColor", var_218_82 or {
					1,
					1,
					1,
					1
				})
				var_218_83:send("threshold", 0.01)
				var_218_83:send("radiusPx", 1)
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_218_24, var_218_62, var_218_80, 0, var_218_60, var_218_61, var_218_42 * 0.5, var_218_43 * 0.5)
				love.graphics.setShader()
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_218_24, var_218_62, var_218_80, 0, var_218_60, var_218_61, var_218_42 * 0.5, var_218_43 * 0.5)

				local var_218_84 = var_218_22._uiSpawnVFX

				if var_218_84 then
					local var_218_85 = love.timer and love.timer.getTime and love.timer.getTime() or 0
					local var_218_86 = var_218_84.startT or var_218_85
					local var_218_87 = var_218_84.dur and var_218_84.dur[1] or 0.45
					local var_218_88 = var_218_84.dur and var_218_84.dur[2] or 0.35
					local var_218_89 = var_218_84.dur and var_218_84.dur[3] or 0.25
					local var_218_90 = math.max(0, var_218_85 - var_218_86)
					local var_218_91 = var_218_43 * var_218_61
					local var_218_92 = var_218_62
					local var_218_93 = var_218_80

					if var_218_90 < var_218_87 then
						local var_218_94 = var_218_87 > 0 and var_218_90 / var_218_87 or 1
						local var_218_95 = math.max(0, 1 - var_218_94)^2

						if var_218_95 > 0.001 and var_0_11.getWhiteFlashShader then
							local var_218_96 = var_0_11.getWhiteFlashShader()

							love.graphics.setShader(var_218_96)
							var_218_96:send("u_intensity", var_218_95)
							love.graphics.setColor(1, 1, 1, 1)
							love.graphics.draw(var_218_24, var_218_92, var_218_93, 0, var_218_60, var_218_61, var_218_42 * 0.5, var_218_43 * 0.5)
							love.graphics.setShader()
							love.graphics.setColor(1, 1, 1, 1)
						end
					elseif var_218_90 < var_218_87 + var_218_88 then
						local var_218_97 = var_218_90 - var_218_87
						local var_218_98 = var_218_88 > 0 and var_218_97 / var_218_88 or 1
						local var_218_99 = math.max(0, 1 - var_218_98)
						local var_218_100 = var_218_99 * var_218_99
						local var_218_101 = 1
						local var_218_102 = 1
						local var_218_103 = 1

						if var_218_84.tint and #var_218_84.tint >= 3 then
							var_218_101, var_218_102, var_218_103 = var_218_84.tint[1], var_218_84.tint[2], var_218_84.tint[3]
						end

						local var_218_104, var_218_105 = love.graphics.getBlendMode()

						love.graphics.setBlendMode("add", "alphamultiply")
						love.graphics.setColor(var_218_101 or 1, var_218_102 or 1, var_218_103 or 1, 0.45 * var_218_100)
						love.graphics.draw(var_218_24, var_218_92, var_218_93, 0, var_218_60, var_218_61, var_218_42 * 0.5, var_218_43 * 0.5)

						if var_0_97.getImageOutlineShader then
							local var_218_106 = var_0_97.getImageOutlineShader()

							love.graphics.setShader(var_218_106)
							var_218_106:send("texelStep", {
								1 / (math.max(1, var_218_42) * var_218_60),
								1 / (math.max(1, var_218_43) * var_218_61)
							})
							var_218_106:send("outlineColor", {
								var_218_101 or 1,
								var_218_102 or 1,
								var_218_103 or 1,
								0.85
							})
							var_218_106:send("threshold", 0.01)
							var_218_106:send("radiusPx", 1.5)
							love.graphics.setColor(1, 1, 1, 0.35 * var_218_100)
							love.graphics.draw(var_218_24, var_218_92, var_218_93, 0, var_218_60, var_218_61, var_218_42 * 0.5, var_218_43 * 0.5)
							love.graphics.setShader()
						end

						local var_218_107 = 0.06 * var_218_100

						if var_218_107 > 0.001 then
							love.graphics.setColor(var_218_101 or 1, var_218_102 or 1, var_218_103 or 1, 0.22 * var_218_100)
							love.graphics.draw(var_218_24, var_218_92, var_218_93, 0, var_218_60 * (1 + var_218_107), var_218_61 * (1 + var_218_107), var_218_42 * 0.5, var_218_43 * 0.5)
						end

						love.graphics.setColor(1, 1, 1, 1)
						love.graphics.setBlendMode(var_218_104 or "alpha", var_218_105 or "alphamultiply")
					elseif var_218_90 < var_218_87 + var_218_88 + var_218_89 then
						local var_218_108 = var_218_90 - var_218_87 - var_218_88
						local var_218_109 = var_218_89 > 0 and var_218_108 / var_218_89 or 1
						local var_218_110 = 0

						if var_218_109 < 0.5 then
							local var_218_111 = math.sin(var_218_109 * math.pi)

							var_218_110 = 0.2 * var_218_111 * var_218_111
						end

						if var_218_110 > 0.001 then
							local var_218_112, var_218_113 = love.graphics.getBlendMode()

							love.graphics.setBlendMode("add", "alphamultiply")
							love.graphics.setColor(1, 1, 1, 0.18 * var_218_110)
							love.graphics.draw(var_218_24, var_218_92, var_218_93, 0, var_218_60, var_218_61, var_218_42 * 0.5, var_218_43 * 0.5)
							love.graphics.setColor(1, 1, 1, 1)
							love.graphics.setBlendMode(var_218_112 or "alpha", var_218_113 or "alphamultiply")
						end
					else
						var_218_22._uiSpawnVFX = nil
					end
				end

				local var_218_114 = var_218_22.key == "OldCrown" and var_218_22._oldCrownTargetSym or nil

				if var_218_114 and var_218_114 ~= "" then
					local var_218_115 = math.max(8, math.floor(var_218_7 * 0.42 + 0.5))
					local var_218_116 = var_218_62 + var_218_42 * var_218_60 * 0.5
					local var_218_117 = var_218_80 + var_218_43 * var_218_61 * 0.5
					local var_218_118 = math.floor(var_218_116 - var_218_115 + 2 + 0.5)
					local var_218_119 = math.floor(var_218_117 - var_218_115 + 2 + 0.5)

					love.graphics.setShader()

					local var_218_120 = loadedAssets and loadedAssets.iconsSmall and loadedAssets.iconsSmall[var_218_114]

					if var_218_120 then
						local var_218_121 = var_218_120:getWidth()
						local var_218_122 = var_218_120:getHeight()
						local var_218_123 = math.max(1, var_218_115)
						local var_218_124 = math.min(1, var_218_123 / math.max(1, var_218_121), var_218_123 / math.max(1, var_218_122))
						local var_218_125 = math.floor(var_218_118 + (var_218_115 - var_218_121 * var_218_124) * 0.5 + 0.5)
						local var_218_126 = math.floor(var_218_119 + (var_218_115 - var_218_122 * var_218_124) * 0.5 + 0.5)

						love.graphics.setColor(0, 0, 0, 1)
						love.graphics.draw(var_218_120, var_218_125 - 1, var_218_126, 0, var_218_124, var_218_124)
						love.graphics.draw(var_218_120, var_218_125 + 1, var_218_126, 0, var_218_124, var_218_124)
						love.graphics.draw(var_218_120, var_218_125, var_218_126 - 1, 0, var_218_124, var_218_124)
						love.graphics.draw(var_218_120, var_218_125, var_218_126 + 1, 0, var_218_124, var_218_124)
						love.graphics.setColor(1, 1, 1, 1)
						love.graphics.draw(var_218_120, var_218_125, var_218_126, 0, var_218_124, var_218_124)
					else
						var_0_11.drawSymbol(var_218_114, var_218_118, var_218_119, math.max(1, var_218_115), loadedAssets)
					end

					love.graphics.setColor(1, 1, 1, 1)
				end

				ui._equippedCoreRects = ui._equippedCoreRects or {}

				local var_218_127, var_218_128 = pcall(require, "src.game.cores")
				local var_218_129 = var_218_127 and var_218_128 and var_218_128.getIconData and var_218_128.getIconData(var_218_23) or nil

				table.insert(ui._equippedCoreRects, {
					def = var_218_23,
					cx = var_218_62,
					cy = var_218_80,
					sx = var_218_60,
					sy = var_218_61,
					iw = var_218_42,
					ih = var_218_43,
					idata = var_218_129
				})
			end
		end
	end
end

local function var_0_152(arg_219_0)
	if not arg_219_0 or not ui or not battlefield or not loadedAssets or not loadedAssets.ui or not loadedAssets.ui.fastForwardButton then
		return false
	end

	if not (phase == "spin" or phase == "prep" or phase == "battle") or battlefield.gameOver then
		return false
	end

	if ui._shopMode or ui._stoneMode then
		return false
	end

	if Tutorial and Tutorial.isRunning and Tutorial.isRunning() then
		return false
	end

	return true
end

local function var_0_153(arg_220_0)
	if not var_0_152(arg_220_0) then
		return false
	end

	if ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	return true
end

local function var_0_154(arg_221_0)
	local var_221_0 = loadedAssets and loadedAssets.ui and loadedAssets.ui.fastForwardButton

	if not arg_221_0 or not var_221_0 then
		return nil
	end

	local var_221_1 = ui and ui.fastForwardButton or {}
	local var_221_2 = 1
	local var_221_3 = math.floor(5 * (ui and ui.scale or 1) + 0.5)
	local var_221_4 = tonumber(var_221_1.offsetX) or 0
	local var_221_5 = tonumber(var_221_1.offsetY) or 0
	local var_221_6 = math.floor(var_221_0:getWidth() * var_221_2 + 0.5)
	local var_221_7 = math.floor(var_221_0:getHeight() * var_221_2 + 0.5)

	return {
		x = math.floor((arg_221_0.x or 0) + (arg_221_0.w or 0) - var_221_6 - var_221_3 + var_221_4 + 0.5),
		y = math.floor((arg_221_0.y or 0) + var_221_3 + var_221_5 + 0.5),
		w = var_221_6,
		h = var_221_7,
		scale = var_221_2
	}
end

local function var_0_155(arg_222_0, arg_222_1, arg_222_2)
	if not var_0_153(arg_222_0) then
		return false
	end

	local var_222_0 = var_0_154(arg_222_0)

	if not var_222_0 or arg_222_1 < var_222_0.x or arg_222_1 > var_222_0.x + var_222_0.w or arg_222_2 < var_222_0.y or arg_222_2 > var_222_0.y + var_222_0.h then
		return false
	end

	local var_222_1 = loadedAssets and loadedAssets.ui and loadedAssets.ui.fastForwardButtonData

	if var_222_1 then
		local var_222_2 = (arg_222_1 - var_222_0.x) / math.max(0.0001, var_222_0.scale or 1)
		local var_222_3 = (arg_222_2 - var_222_0.y) / math.max(0.0001, var_222_0.scale or 1)

		if var_222_2 < 0 or var_222_3 < 0 or var_222_2 >= var_222_1:getWidth() or var_222_3 >= var_222_1:getHeight() then
			return false
		end

		local var_222_4, var_222_5, var_222_6, var_222_7 = var_222_1:getPixel(math.floor(var_222_2), math.floor(var_222_3))

		return (var_222_7 or 0) > 0.05
	end

	return true
end

_G.__slotHitTestBattleFastForwardButton = var_0_155

local function var_0_156(arg_223_0)
	if not var_0_152(arg_223_0) then
		if ui then
			ui._battleFastForwardButtonRect = nil
		end

		return
	end

	local var_223_0 = loadedAssets and loadedAssets.ui
	local var_223_1 = battlefield and battlefield.battleFastForward == true and var_223_0 and var_223_0.fastForwardButtonActive or var_223_0 and var_223_0.fastForwardButton
	local var_223_2 = var_223_1
	local var_223_3 = ui and ui._battleFastForwardPressState

	if var_223_3 and (var_223_3.untilTime or 0) > love.timer.getTime() then
		if var_223_3.wasActive then
			var_223_2 = var_223_0 and var_223_0.fastForwardButtonActivePressed or var_223_1
		else
			var_223_2 = var_223_0 and var_223_0.fastForwardButtonPressed or var_223_1
		end
	end

	local var_223_4 = var_0_154(arg_223_0)

	if not var_223_2 or not var_223_4 then
		return
	end

	ui._battleFastForwardButtonRect = var_223_4

	if var_0_153(arg_223_0) then
		love.graphics.setColor(1, 1, 1, 1)
	else
		love.graphics.setColor(1, 1, 1, 1)
	end

	love.graphics.draw(var_223_2, var_223_4.x, var_223_4.y, 0, var_223_4.scale or 1, var_223_4.scale or 1)

	local var_223_5 = false

	if var_0_153(arg_223_0) and tooltip and tooltip.mouseX and tooltip.mouseY then
		var_223_5 = var_0_155(arg_223_0, tooltip.mouseX, tooltip.mouseY)
	end

	if var_223_5 and var_0_97 and var_0_97.getBtnHoverOutlineShader then
		local var_223_6 = var_0_97.getBtnHoverOutlineShader()

		if var_223_6 then
			local var_223_7 = var_223_2:getWidth()
			local var_223_8 = var_223_2:getHeight()
			local var_223_9 = var_223_4.scale or 1

			love.graphics.setShader(var_223_6)
			var_223_6:send("texelStep", {
				1 / math.max(1, var_223_7 * var_223_9),
				1 / math.max(1, var_223_8 * var_223_9)
			})
			var_223_6:send("outlineColor", {
				0.9294117647058824,
				0.9019607843137255,
				0.9529411764705882,
				1
			})
			var_223_6:send("threshold", 0.01)
			var_223_6:send("radiusPx", 2)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_223_2, var_223_4.x, var_223_4.y, 0, var_223_9, var_223_9)
			love.graphics.setShader()
		end
	end

	love.graphics.setColor(1, 1, 1, 1)
end

_G.__slotDrawBattleFastForwardButton = var_0_156

local function var_0_157(arg_224_0)
	if _G.Render2 and _G.Render2.preDrawBattlefield then
		_G.Render2.preDrawBattlefield(arg_224_0, battlefield)
	end

	local var_224_0 = (phase == "spin" or phase == "prep" or phase == "battle") and battlefield

	var_0_11.drawBattlefield(ui, arg_224_0, battlefield, loadedAssets, var_224_0)

	if _G.Render2 and _G.Render2.postDrawBattlefield then
		_G.Render2.postDrawBattlefield()
	end
end

function ensureMenuSettingsOverlayState()
	if not ui then
		return nil
	end

	ui.menuSettingsOverlayState = ui.menuSettingsOverlayState or {}

	local var_225_0 = ui.menuSettingsOverlayState
	local var_225_1 = (ui.pauseOverlay or {}).hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)

	if var_225_0.y == nil then
		var_225_0.y = var_225_1
	end

	if var_225_0.v == nil then
		var_225_0.v = 0
	end

	if var_225_0.open == nil then
		var_225_0.open = false
	end

	if var_225_0.paperT == nil then
		var_225_0.paperT = 0
	end

	if var_225_0.settingsScrollY == nil then
		var_225_0.settingsScrollY = 0
	end

	if var_225_0.settingsScrollMax == nil then
		var_225_0.settingsScrollMax = 0
	end

	if var_225_0.langDropdownOpen == nil then
		var_225_0.langDropdownOpen = false
	end

	ui.menuSettings = ui.menuSettings or {}

	local var_225_2 = ui.menuSettings

	if var_225_2.masterVolume == nil then
		var_225_2.masterVolume = 1
	end

	if var_225_2.bgmVolume == nil then
		var_225_2.bgmVolume = 1
	end

	if var_225_2.sfxVolume == nil then
		var_225_2.sfxVolume = 1
	end

	if var_225_2.language == nil then
		var_225_2.language = "ko"
	end

	if var_225_2.tutorialEnabled == nil then
		var_225_2.tutorialEnabled = true
	end

	if var_225_2.displayMode == nil then
		local var_225_3 = love.window and love.window.getFullscreen and love.window.getFullscreen() or false

		if love.window and love.window.getMode then
			local var_225_4 = love.window.getMode()
		end

		local var_225_5
		local var_225_6

		var_225_2.displayMode = var_225_3 and "fullscreen" or var_225_6 and var_225_6.borderless and "borderless" or "windowed"
	end

	return var_225_0
end

local function var_0_158(arg_226_0, arg_226_1)
	if not ui or not ui.virtual then
		return
	end

	local var_226_0 = loadedAssets and loadedAssets.ui
	local var_226_1 = var_226_0 and var_226_0.messageWindow
	local var_226_2 = var_226_1 and var_226_1:getHeight() or 160
	local var_226_3 = ui and ui.restartConfirm or {}
	local var_226_4 = var_226_3.centerY or math.floor(ui.virtual.H * (var_226_3.centerFracY or 0.5) + 0.5)
	local var_226_5 = var_226_3.boardOffsetY or 0
	local var_226_6 = math.floor(var_226_4 - var_226_2 * 0.5 + var_226_5 + 0.5)

	ui._restartConfirm = {
		v = 0,
		active = true,
		y = var_226_6,
		targetY = var_226_6,
		action = arg_226_0,
		prompt = arg_226_1
	}
end

local function var_0_159()
	local var_227_0 = var_0_25() or "en"
	local var_227_1 = {
		bgmVolume = 1,
		sfxVolume = 1,
		masterVolume = 1,
		displayMode = "borderless",
		tutorialEnabled = true,
		language = var_227_0
	}

	ui = ui or {}
	ui.menuSettings = {
		displayMode = var_227_1.displayMode,
		masterVolume = var_227_1.masterVolume,
		sfxVolume = var_227_1.sfxVolume,
		bgmVolume = var_227_1.bgmVolume,
		language = var_227_1.language,
		tutorialEnabled = var_227_1.tutorialEnabled
	}
	_G.currentGameLang = var_227_1.language

	if love.audio and love.audio.setVolume then
		love.audio.setVolume(var_227_1.masterVolume)
	end

	if displayModeTransition then
		displayModeTransition.active = false
		displayModeTransition.phase = "idle"
		displayModeTransition.alpha = 0
	end

	if applyDisplayMode then
		applyDisplayMode(var_227_1.displayMode)
	end

	if updateScreenScale then
		updateScreenScale()
	end

	if var_0_16 and var_0_16.setOriginiteAmount then
		var_0_16.setOriginiteAmount(0)
	end

	if var_0_17 and var_0_17.setUpgradeState then
		var_0_17.setUpgradeState({})
	end

	local var_227_2 = {
		true,
		false,
		false,
		false,
		false
	}
	local var_227_3 = {
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
	local var_227_4 = {
		{},
		{},
		{}
	}

	if var_0_16 and var_0_16.stageSelect then
		local var_227_5 = var_0_16.stageSelect

		var_227_5.unlockedStages = var_227_2
		var_227_5.newStages = {}
		var_227_5.unlockedDifficulties = var_227_3
		var_227_5.clearedDifficulties = var_227_4
	end

	OriginiteFirstReachedGates = {}

	local var_227_6, var_227_7 = pcall(require, "src.save")

	if not var_227_6 or not var_227_7 or not var_227_7.save then
		return false
	end

	local var_227_8 = {
		originite = 0,
		upgrades = {},
		unlockedStages = var_227_2,
		unlockedDifficulties = var_227_3,
		newStages = {},
		clearedDifficulties = var_227_4,
		originiteFirstReachedGates = OriginiteFirstReachedGates,
		settings = var_227_1
	}
	local var_227_9, var_227_10 = pcall(var_227_7.save, var_227_8)

	return var_227_9 and var_227_10 == true
end

local function var_0_160(arg_228_0)
	local var_228_0 = {}
	local var_228_1 = ui and ui.menuSettings and ui.menuSettings.language or "ko"
	local var_228_2 = arg_228_0 == "pause"

	table.insert(var_228_0, {
		kind = "radio",
		key = "displayMode",
		label = var_0_7.getText("settings_display_mode", var_228_1),
		options = {
			{
				value = "windowed",
				label = var_0_7.getText("settings_windowed", var_228_1)
			},
			{
				value = "borderless",
				label = var_0_7.getText("settings_borderless", var_228_1)
			},
			{
				value = "fullscreen",
				label = var_0_7.getText("settings_fullscreen", var_228_1)
			}
		},
		get = function()
			return ui and ui.menuSettings and ui.menuSettings.displayMode or "windowed"
		end,
		set = function(arg_230_0)
			if not ui or not ui.menuSettings then
				return
			end

			if arg_230_0 ~= "windowed" and arg_230_0 ~= "fullscreen" and arg_230_0 ~= "borderless" then
				return
			end

			if ui.menuSettings.displayMode == arg_230_0 then
				return
			end

			local var_230_0, var_230_1 = love.mouse.getPosition()
			local var_230_2 = 0
			local var_230_3 = 0

			if toVirtual then
				var_230_2, var_230_3 = toVirtual(var_230_0, var_230_1)
			else
				var_230_2 = (var_230_0 - (screenOffsetX or 0)) / (screenScale or 1)
				var_230_3 = (var_230_1 - (screenOffsetY or 0)) / (screenScale or 1)
			end

			displayModeTransition.active = true
			displayModeTransition.phase = "fade_in"
			displayModeTransition.alpha = 0
			displayModeTransition.t = 0
			displayModeTransition.targetMode = arg_230_0
			displayModeTransition.vx = var_230_2
			displayModeTransition.vy = var_230_3
		end
	})
	table.insert(var_228_0, {
		kind = "slider",
		max = 1,
		min = 0,
		step = 0.01,
		key = "bgmVolume",
		label = var_0_7.getText("settings_bgm_volume", var_228_1),
		get = function()
			return ui and ui.menuSettings and ui.menuSettings.bgmVolume or 1
		end,
		set = function(arg_232_0)
			if not ui or not ui.menuSettings then
				return
			end

			arg_232_0 = tonumber(arg_232_0) or 1

			if arg_232_0 < 0 then
				arg_232_0 = 0
			elseif arg_232_0 > 1 then
				arg_232_0 = 1
			end

			ui.menuSettings.bgmVolume = arg_232_0
		end
	})
	table.insert(var_228_0, {
		kind = "slider",
		max = 1,
		min = 0,
		step = 0.01,
		key = "sfxVolume",
		label = var_0_7.getText("settings_sfx_volume", var_228_1),
		get = function()
			return ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1
		end,
		set = function(arg_234_0)
			if not ui or not ui.menuSettings then
				return
			end

			arg_234_0 = tonumber(arg_234_0) or 1

			if arg_234_0 < 0 then
				arg_234_0 = 0
			elseif arg_234_0 > 1 then
				arg_234_0 = 1
			end

			ui.menuSettings.sfxVolume = arg_234_0

			local var_234_0 = loadedAssets and loadedAssets.audio
			local var_234_1 = loadedAssets and loadedAssets.audioBaseGain

			if var_234_0 then
				for iter_234_0, iter_234_1 in pairs(var_234_0) do
					if type(iter_234_1) == "userdata" and iter_234_1.setVolume then
						local var_234_2 = var_234_1 and var_234_1[iter_234_0] or 1

						iter_234_1:setVolume(arg_234_0 * var_234_2)
					end
				end
			end
		end
	})
	table.insert(var_228_0, {
		kind = "dropdown",
		key = "language",
		label = var_0_7.getText("settings_language", var_228_1),
		options = {
			{
				fontLang = "ko",
				value = "ko",
				label = var_0_7.getText("settings_korean", "ko")
			},
			{
				fontLang = "en",
				value = "en",
				label = var_0_7.getText("settings_english", "en")
			},
			{
				fontLang = "ja",
				value = "ja",
				label = var_0_7.getText("settings_japanese", "ja")
			},
			{
				fontLang = "zh",
				value = "zh",
				label = var_0_7.getText("settings_chinese", "zh")
			}
		},
		get = function()
			return ui and ui.menuSettings and ui.menuSettings.language or "ko"
		end,
		set = function(arg_236_0)
			if not ui or not ui.menuSettings then
				return
			end

			ui.menuSettings.language = arg_236_0
			_G.currentGameLang = arg_236_0

			if var_0_8 and var_0_8.reloadLanguageFonts then
				var_0_8.reloadLanguageFonts(ui)
			end

			if Render2 and Render2.reloadLanguageFonts then
				Render2.reloadLanguageFonts(ui)
			end

			if var_0_17 and var_0_17.reloadLanguageFonts then
				var_0_17.reloadLanguageFonts(ui)
			end

			if var_0_16 and var_0_16.reloadFonts then
				var_0_16.reloadFonts()
			end
		end
	})
	table.insert(var_228_0, {
		kind = "radio",
		key = "tutorialEnabled",
		label = var_0_7.getText("settings_tutorial", var_228_1),
		options = {
			{
				value = true,
				label = var_0_7.getText("settings_enabled", var_228_1)
			},
			{
				value = false,
				label = var_0_7.getText("settings_disabled", var_228_1)
			}
		},
		get = function()
			return not ui or not ui.menuSettings or ui.menuSettings.tutorialEnabled ~= false
		end,
		set = function(arg_238_0)
			if not ui then
				return
			end

			ui.menuSettings = ui.menuSettings or {}
			ui.menuSettings.tutorialEnabled = arg_238_0 == true
		end
	})
	table.insert(var_228_0, {
		kind = "button",
		key = "resetSaveData",
		label = var_0_7.getText("settings_reset_save_data", var_228_1),
		disabled = var_228_2,
		set = function()
			if var_228_2 then
				return
			end

			if var_0_16 and var_0_16.openConfirm then
				var_0_16.openConfirm(ui, "resetsave", var_0_7.getText("settings_reset_save_data_prompt", var_228_1))
			end
		end
	})

	return var_228_0
end

local function var_0_161(arg_240_0, arg_240_1, arg_240_2, arg_240_3, arg_240_4)
	local var_240_0 = arg_240_4 and arg_240_4.content or {}
	local var_240_1 = tonumber(var_240_0.padX) or 72
	local var_240_2 = tonumber(var_240_0.padY) or 48
	local var_240_3 = tonumber(var_240_0.extraTop) or 16
	local var_240_4 = tonumber(var_240_0.offsetX) or 0
	local var_240_5 = tonumber(var_240_0.offsetY) or 0
	local var_240_6 = tostring(var_240_0.widthAlign or "center")
	local var_240_7 = tonumber(var_240_0.widthPx)
	local var_240_8 = var_240_7 ~= nil
	local var_240_9 = math.max(1, arg_240_2 - var_240_1 * 2)
	local var_240_10 = var_240_9

	if var_240_8 then
		if var_240_7 > 0 then
			var_240_10 = var_240_7
		elseif var_240_7 < 0 then
			var_240_10 = var_240_9 + var_240_7
		end
	end

	local var_240_11 = math.max(1, math.min(var_240_10, arg_240_2))
	local var_240_12

	if var_240_8 and var_240_6 == "center" then
		var_240_12 = arg_240_0 + math.floor((arg_240_2 - var_240_11) * 0.5 + 0.5) + var_240_4
	else
		var_240_12 = arg_240_0 + var_240_1 + var_240_4
	end

	local var_240_13 = arg_240_1 + var_240_2 + var_240_3 + var_240_5
	local var_240_14 = math.max(1, arg_240_3 - var_240_2 * 2 - var_240_3)

	return var_240_12, var_240_13, var_240_11, var_240_14
end

local function var_0_162(arg_241_0, arg_241_1, arg_241_2)
	if not arg_241_0 or not arg_241_1 or not arg_241_2 then
		return nil
	end

	local var_241_0 = arg_241_2.optionPaperBackground
	local var_241_1 = arg_241_1.optionPaperBackground

	if not var_241_0 or not var_241_1 or var_241_1.enabled == false then
		return nil
	end

	local var_241_2 = arg_241_1.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	local var_241_3 = math.floor((arg_241_0.y or var_241_2) + 0.5)

	local function var_241_4(arg_242_0)
		return 1 - (1 - arg_242_0) * (1 - arg_242_0) * (1 - arg_242_0)
	end

	local var_241_5 = 0.08
	local var_241_6 = 0.45
	local var_241_7 = arg_241_0.paperT or 0

	if var_241_7 < var_241_5 then
		return nil
	end

	local var_241_8 = math.min(1, (var_241_7 - var_241_5) / var_241_6)
	local var_241_9 = -40 * (1 - var_241_4(var_241_8))
	local var_241_10 = var_241_1.scale or 1
	local var_241_11 = var_241_0:getWidth()
	local var_241_12 = var_241_0:getHeight()
	local var_241_13 = math.floor(var_241_11 * var_241_10 + 0.5)
	local var_241_14, var_241_15 = math.floor((ui.virtual.W - var_241_13) / 2), math.floor((var_241_1.offsetY or 0) + 0.5)
	local var_241_16 = math.floor(var_241_3 + var_241_15 + var_241_9 + 0.5)
	local var_241_17 = math.floor(var_241_12 * var_241_10 + 0.5)
	local var_241_18, var_241_19, var_241_20, var_241_21 = var_0_161(var_241_14, var_241_16, var_241_13, var_241_17, var_241_1)

	return {
		paper = {
			x = var_241_14,
			y = var_241_16,
			w = var_241_13,
			h = var_241_17,
			s = var_241_10
		},
		content = {
			x = var_241_18,
			y = var_241_19,
			w = var_241_20,
			h = var_241_21
		}
	}
end

function isMenuSettingsOverlayBlocking()
	local var_243_0 = ui and ui.menuSettingsOverlayState
	local var_243_1 = ui and ui.pauseOverlay

	if not var_243_0 or not var_243_1 then
		return false
	end

	local var_243_2 = var_243_1.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	local var_243_3 = var_243_0.y or var_243_2
	local var_243_4 = var_243_0.v or 0

	if var_243_0.open then
		return true
	end

	if math.abs(var_243_4) > 0.02 then
		return true
	end

	if math.abs(var_243_3 - var_243_2) > (var_243_1 and var_243_1.snapEps or 0.5) then
		return true
	end

	return false
end

function openMenuSettingsOverlay()
	local var_244_0 = ensureMenuSettingsOverlayState()

	if not var_244_0 then
		return
	end

	var_244_0.open = true
	var_244_0.paperT = 0
	var_244_0.settingsScrollY = 0
	var_244_0.draggingSettingsScrollbar = nil
	var_244_0.draggingSlider = nil
	var_244_0.langDropdownOpen = false

	playWoodDropSoundDelayed(0.2)
end

function closeMenuSettingsOverlay()
	local var_245_0 = ensureMenuSettingsOverlayState()

	if not var_245_0 then
		return
	end

	if var_245_0.open then
		playWoodUpSound()
	end

	var_245_0.open = false
end

function getSettingsScrollbarGeometry(arg_246_0, arg_246_1, arg_246_2, arg_246_3, arg_246_4)
	if not arg_246_4 then
		return nil
	end

	local var_246_0 = arg_246_4.settingsScrollMax or 0
	local var_246_1 = 5
	local var_246_2 = math.floor(arg_246_0 + arg_246_2 - 8 + 0.5)
	local var_246_3 = math.floor(arg_246_1 + 6 + 0.5)
	local var_246_4 = math.max(1, math.floor(arg_246_3 - 12 + 0.5))
	local var_246_5 = math.max(1, arg_246_3)
	local var_246_6 = var_246_5 + var_246_0
	local var_246_7 = math.max(16, math.floor(var_246_4 * (var_246_5 / math.max(1, var_246_6)) + 0.5))
	local var_246_8 = math.min(var_246_4, var_246_7)
	local var_246_9 = math.max(0, var_246_4 - var_246_8)
	local var_246_10 = math.max(0, math.min(var_246_0, arg_246_4.settingsScrollY or 0))
	local var_246_11 = var_246_3

	if var_246_0 > 0 and var_246_9 > 0 then
		var_246_11 = math.floor(var_246_3 + var_246_10 / var_246_0 * var_246_9 + 0.5)
	end

	return {
		trackX = var_246_2,
		trackY = var_246_3,
		trackW = var_246_1,
		trackH = var_246_4,
		thumbX = var_246_2 - 1,
		thumbY = var_246_11,
		thumbW = var_246_1 + 2,
		thumbH = var_246_8
	}
end

local function var_0_163(arg_247_0, arg_247_1, arg_247_2, arg_247_3)
	local var_247_0 = math.min(arg_247_3, 108)

	return arg_247_0 + 3, arg_247_1, arg_247_2, var_247_0
end

local function var_0_164(arg_248_0, arg_248_1)
	local var_248_0 = 26

	return #(arg_248_0 or {}) * var_248_0
end

local function var_0_165(arg_249_0, arg_249_1, arg_249_2)
	if not arg_249_0 or not arg_249_1 or arg_249_1 == 0 then
		return false
	end

	local var_249_0 = arg_249_0.settingsScrollMax or 0

	if var_249_0 <= 0 then
		return true
	end

	arg_249_0.settingsScrollY = (arg_249_0.settingsScrollY or 0) + -arg_249_1 * (arg_249_2 or 24)

	if arg_249_0.settingsScrollY < 0 then
		arg_249_0.settingsScrollY = 0
	end

	if var_249_0 < arg_249_0.settingsScrollY then
		arg_249_0.settingsScrollY = var_249_0
	end

	return true
end

local function var_0_166(arg_250_0, arg_250_1, arg_250_2, arg_250_3, arg_250_4, arg_250_5, arg_250_6)
	local var_250_0 = getSettingsScrollbarGeometry(arg_250_1, arg_250_2, arg_250_3, arg_250_4, arg_250_0)

	if not var_250_0 then
		return false
	end

	if (arg_250_0.settingsScrollMax or 0) <= 0 then
		return false
	end

	local var_250_1 = 5

	if not (arg_250_5 >= var_250_0.trackX - var_250_1 and arg_250_5 <= var_250_0.trackX + var_250_0.trackW + var_250_1 and arg_250_6 >= var_250_0.trackY and arg_250_6 <= var_250_0.trackY + var_250_0.trackH) then
		return false
	end

	local var_250_2 = arg_250_5 >= var_250_0.thumbX - var_250_1 and arg_250_5 <= var_250_0.thumbX + var_250_0.thumbW + var_250_1 and arg_250_6 >= var_250_0.thumbY and arg_250_6 <= var_250_0.thumbY + var_250_0.thumbH
	local var_250_3 = var_250_2 and arg_250_6 - var_250_0.thumbY or var_250_0.thumbH * 0.5

	arg_250_0.draggingSettingsScrollbar = {
		grabY = var_250_3
	}

	if not var_250_2 then
		local var_250_4 = arg_250_0.settingsScrollMax or 0
		local var_250_5 = math.max(1, var_250_0.trackH - var_250_0.thumbH)
		local var_250_6 = (arg_250_6 - var_250_3 - var_250_0.trackY) / var_250_5

		arg_250_0.settingsScrollY = math.max(0, math.min(1, var_250_6)) * var_250_4
	end

	return true
end

function updateSettingsDrag(arg_251_0, arg_251_1)
	if arg_251_0 and arg_251_0.draggingSettingsScrollbar then
		if not love.mouse.isDown(1) then
			arg_251_0.draggingSettingsScrollbar = nil

			return
		end

		if not arg_251_1 then
			return
		end

		local var_251_0 = arg_251_0.draggingSettingsScrollbar
		local var_251_1 = arg_251_1.content.x
		local var_251_2 = arg_251_1.content.y
		local var_251_3 = arg_251_1.content.w
		local var_251_4 = arg_251_1.content.h
		local var_251_5 = getSettingsScrollbarGeometry(var_251_1, var_251_2, var_251_3, var_251_4, arg_251_0)

		if not var_251_5 then
			arg_251_0.draggingSettingsScrollbar = nil

			return
		end

		local var_251_6, var_251_7 = love.mouse.getPosition()
		local var_251_8, var_251_9 = toVirtual(var_251_6, var_251_7)
		local var_251_10 = arg_251_0.settingsScrollMax or 0
		local var_251_11 = math.max(1, var_251_5.trackH - var_251_5.thumbH)
		local var_251_12 = (var_251_9 - (var_251_0.grabY or var_251_5.thumbH * 0.5) - var_251_5.trackY) / var_251_11

		arg_251_0.settingsScrollY = math.max(0, math.min(1, var_251_12)) * var_251_10

		return
	end

	if not arg_251_0 or not arg_251_0.draggingSlider then
		return
	end

	if not love.mouse.isDown(1) then
		arg_251_0.draggingSlider = nil

		return
	end

	local var_251_13 = arg_251_0.draggingSlider
	local var_251_14 = type(var_251_13) == "table" and var_251_13.item or var_251_13

	if type(var_251_14) ~= "table" then
		arg_251_0.draggingSlider = nil

		return
	end

	local var_251_15 = type(var_251_13) == "table" and var_251_13.grabDx or 0

	if not arg_251_1 then
		return
	end

	local var_251_16 = arg_251_1.content.x
	local var_251_17 = arg_251_1.content.y
	local var_251_18 = arg_251_1.content.w
	local var_251_19 = arg_251_1.content.h
	local var_251_20, var_251_21 = love.mouse.getPosition()
	local var_251_22, var_251_23 = toVirtual(var_251_20, var_251_21)
	local var_251_24 = var_0_160()
	local var_251_25 = 26
	local var_251_26 = arg_251_0.settingsScrollY or 0
	local var_251_27 = 0
	local var_251_28 = var_251_14.key or type(var_251_13) == "table" and var_251_13.key or nil

	for iter_251_0, iter_251_1 in ipairs(var_251_24) do
		if var_251_28 and iter_251_1.key == var_251_28 then
			local var_251_29 = var_251_17 + var_251_27 - var_251_26
			local var_251_30 = type(var_251_13) == "table" and var_251_13.barW or 100
			local var_251_31 = type(var_251_13) == "table" and var_251_13.handleW or 8
			local var_251_32 = type(var_251_13) == "table" and var_251_13.barX or var_251_16 + var_251_18 - var_251_30 - 10
			local var_251_33 = math.floor(var_251_32 + 0.5)
			local var_251_34 = (var_251_22 - (var_251_15 or 0) - (var_251_33 + var_251_31 / 2)) / math.max(1, var_251_30 - var_251_31)
			local var_251_35 = math.max(0, math.min(1, var_251_34))

			var_251_14.set(var_251_35)

			break
		end

		var_251_27 = var_251_27 + var_251_25
	end
end

function updateMenuSettingsOverlay(arg_252_0)
	local var_252_0 = ensureMenuSettingsOverlayState()
	local var_252_1 = ui and ui.pauseOverlay

	if not var_252_0 or not var_252_1 then
		return
	end

	local var_252_2 = var_252_1.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
	local var_252_3 = var_252_1.visibleY or 0
	local var_252_4 = var_252_0.open and var_252_3 or var_252_2
	local var_252_5 = var_252_1.spring and var_252_1.spring.k or 90
	local var_252_6 = var_252_1.spring and var_252_1.spring.damping or 12
	local var_252_7 = var_252_1.spring and var_252_1.spring.maxVel or 2000
	local var_252_8 = var_252_0.y or var_252_2
	local var_252_9 = var_252_0.v or 0
	local var_252_10 = var_252_9 + ((var_252_4 - var_252_8) * var_252_5 - var_252_6 * var_252_9) * (arg_252_0 or 0)

	if var_252_7 and var_252_7 > 0 then
		if var_252_7 < var_252_10 then
			var_252_10 = var_252_7
		elseif var_252_10 < -var_252_7 then
			var_252_10 = -var_252_7
		end
	end

	local var_252_11 = var_252_8 + var_252_10 * (arg_252_0 or 0)
	local var_252_12 = var_252_1 and var_252_1.snapEps or 0.5

	if math.abs(var_252_10) < 0.02 and var_252_12 > math.abs(var_252_4 - var_252_11) then
		var_252_11 = var_252_4
		var_252_10 = 0
	end

	var_252_0.y = var_252_11
	var_252_0.v = var_252_10

	if var_252_0.open then
		var_252_0.paperT = (var_252_0.paperT or 0) + (arg_252_0 or 0)
	end

	local var_252_13 = loadedAssets and loadedAssets.ui
	local var_252_14 = var_0_162(var_252_0, var_252_1, var_252_13)

	if var_252_14 and var_252_0.open == true then
		local var_252_15, var_252_16, var_252_17, var_252_18 = var_0_163(var_252_14.content.x, var_252_14.content.y, var_252_14.content.w, var_252_14.content.h)

		updateSettingsDrag(var_252_0, {
			content = {
				x = var_252_15,
				y = var_252_16,
				w = var_252_17,
				h = var_252_18
			}
		})

		local var_252_19 = var_0_160()
		local var_252_20 = var_0_164(var_252_19, var_252_0)

		var_252_0.settingsScrollMax = math.max(0, var_252_20 - var_252_18)

		if var_252_0.settingsScrollY < 0 then
			var_252_0.settingsScrollY = 0
		end

		if var_252_0.settingsScrollY > var_252_0.settingsScrollMax then
			var_252_0.settingsScrollY = var_252_0.settingsScrollMax
		end
	else
		var_252_0.settingsScrollMax = 0

		if var_252_0.settingsScrollY < 0 then
			var_252_0.settingsScrollY = 0
		end
	end

	var_252_0.buttonRopeDrop = var_252_0.buttonRopeDrop or {}
	var_252_0.menuButtonsHovered = var_252_0.menuButtonsHovered or {
		back = false,
		option = false
	}

	local var_252_21 = var_252_0.menuButtonsHovered.back
	local var_252_22 = var_252_0.menuButtonsHovered.option

	var_252_0.menuButtonsHovered.back = false
	var_252_0.menuButtonsHovered.option = false

	local var_252_23 = loadedAssets and loadedAssets.ui
	local var_252_24 = var_252_1.buttonRopes or {}
	local var_252_25 = var_252_24.positions or {}
	local var_252_26 = {}
	local var_252_27 = math.floor((var_252_24.offsetX or 0) + 0.5)

	for iter_252_0, iter_252_1 in ipairs(var_252_25) do
		local var_252_28 = math.floor((iter_252_1.x or 0) + var_252_27 + 0.5)

		table.insert(var_252_26, {
			idx = iter_252_0,
			x = var_252_28
		})
	end

	table.sort(var_252_26, function(arg_253_0, arg_253_1)
		return arg_253_0.x < arg_253_1.x
	end)

	local var_252_29 = var_252_26[1] and var_252_26[1].idx or nil
	local var_252_30 = var_252_26[2] and var_252_26[2].idx or nil
	local var_252_31 = var_252_29 and var_252_25[var_252_29] or nil
	local var_252_32 = var_252_30 and var_252_25[var_252_30] or nil

	if var_252_23 and var_252_31 and var_252_32 and var_252_0.open == true then
		local var_252_33, var_252_34 = love.mouse.getPosition()
		local var_252_35, var_252_36 = toVirtual(var_252_33, var_252_34)

		local function var_252_37(arg_254_0)
			local var_254_0 = var_252_24.motion or {}

			if var_254_0.enabled == false then
				return 0
			end

			local var_254_1 = tonumber(var_254_0.amplitudePx) or 0
			local var_254_2 = tonumber(var_254_0.periodSec) or 0

			if var_254_1 == 0 or var_254_2 == 0 then
				return 0
			end

			local var_254_3 = tonumber(var_254_0.phaseStep) or 0
			local var_254_4 = tonumber(var_254_0.basePhase) or 0
			local var_254_5 = love.timer and love.timer.getTime and love.timer.getTime() or 0
			local var_254_6 = var_254_4 + (arg_254_0 or 1) * var_254_3

			return var_254_1 * math.sin(var_254_5 / var_254_2 * (2 * math.pi) + var_254_6)
		end

		local function var_252_38(arg_255_0, arg_255_1, arg_255_2, arg_255_3, arg_255_4)
			if not arg_255_0 then
				return false
			end

			arg_255_4 = arg_255_4 or 1

			local var_255_0 = arg_255_0:getWidth()
			local var_255_1 = arg_255_0:getHeight()

			if arg_255_2 > var_252_35 or var_252_35 >= arg_255_2 + var_255_0 * arg_255_4 or arg_255_3 > var_252_36 or var_252_36 >= arg_255_3 + var_255_1 * arg_255_4 then
				return false
			end

			if not arg_255_1 then
				return true
			end

			local var_255_2 = math.floor((var_252_35 - arg_255_2) / arg_255_4)
			local var_255_3 = math.floor((var_252_36 - arg_255_3) / arg_255_4)

			if var_255_2 < 0 or var_255_3 < 0 or var_255_0 <= var_255_2 or var_255_1 <= var_255_3 then
				return false
			end

			local var_255_4, var_255_5, var_255_6, var_255_7 = arg_255_1:getPixel(var_255_2, var_255_3)

			return (var_255_7 or 0) > 0.05
		end

		local var_252_39 = math.floor((var_252_24.offsetX or 0) + 0.5)
		local var_252_40 = math.floor((var_252_24.offsetY or 0) + 0.5)

		if not var_252_24.scale then
			local var_252_41 = 1
		end

		local var_252_42 = var_252_1.playButtonDark or {
			scale = 1,
			offsetY = 20,
			hoverDropPx = 6,
			offsetX = 22
		}
		local var_252_43 = var_252_1.optionButtonDark or {
			scale = 1,
			offsetY = 20,
			hoverDropPx = 6,
			offsetX = 22
		}

		local function var_252_44(arg_256_0, arg_256_1, arg_256_2, arg_256_3)
			if not arg_256_3 then
				return arg_256_0
			end

			local var_256_0 = arg_256_1 and arg_256_1:getWidth() or 0

			return math.floor(arg_256_0 - var_256_0 * (arg_256_2 or 1) * 0.5 + 0.5)
		end

		local function var_252_45(arg_257_0, arg_257_1, arg_257_2, arg_257_3, arg_257_4, arg_257_5)
			local var_257_0 = var_252_0.buttonRopeDrop[arg_257_1] or 0
			local var_257_1 = math.floor((arg_257_2.x or 0) + var_252_39 + 0.5)
			local var_257_2 = math.floor((arg_257_2.y or 0) + var_252_40 + (var_252_0.y or 0) + var_252_37(arg_257_1) + var_257_0 + 0.5)
			local var_257_3 = math.floor(var_257_1 + (arg_257_3.offsetX or 0) + 0.5)
			local var_257_4 = math.floor(var_257_2 + (arg_257_3.offsetY or 0) + 0.5)
			local var_257_5 = arg_257_3.scale or 1
			local var_257_6 = var_252_44(var_257_3, arg_257_4, var_257_5, arg_257_3.alignCenterX)

			if var_252_38(arg_257_4, arg_257_5, var_257_6, var_257_4, var_257_5) then
				var_252_0.menuButtonsHovered[arg_257_0] = true

				return true
			end

			return false
		end

		local var_252_46 = var_252_23.pauseBackButtonDark or var_252_23.pauseBackButton
		local var_252_47 = var_252_23.pauseBackButtonDarkData or var_252_23.pauseBackButtonData
		local var_252_48 = var_252_23.optionButton
		local var_252_49 = var_252_23.optionButtonData
		local var_252_50 = var_252_45("back", var_252_29, var_252_31, var_252_42, var_252_46, var_252_47)
		local var_252_51 = var_252_45("option", var_252_30, var_252_32, var_252_43, var_252_48, var_252_49)

		if var_252_50 and not var_252_21 or var_252_51 and not var_252_22 then
			playButtonHoverSound()
		end

		local function var_252_52(arg_258_0, arg_258_1, arg_258_2)
			local var_258_0 = arg_258_1 and (arg_258_2.hoverDropPx or 6) or 0
			local var_258_1 = var_252_0.buttonRopeDrop[arg_258_0] or 0
			local var_258_2 = 18
			local var_258_3 = math.min(1, (arg_252_0 or 0) * var_258_2)

			var_252_0.buttonRopeDrop[arg_258_0] = var_258_1 + (var_258_0 - var_258_1) * var_258_3
		end

		var_252_52(var_252_29, var_252_50, var_252_42)
		var_252_52(var_252_30, var_252_51, var_252_43)
	else
		for iter_252_2 = 1, #var_252_25 do
			local var_252_53 = var_252_0.buttonRopeDrop[iter_252_2] or 0
			local var_252_54 = math.min(1, (arg_252_0 or 0) * 18)

			var_252_0.buttonRopeDrop[iter_252_2] = var_252_53 + (0 - var_252_53) * var_252_54
		end
	end
end

local function var_0_167(arg_259_0, arg_259_1, arg_259_2, arg_259_3, arg_259_4)
	local var_259_0 = getSettingsScrollbarGeometry(arg_259_0, arg_259_1, arg_259_2, arg_259_3, arg_259_4)

	if not var_259_0 then
		return
	end

	love.graphics.setColor(0.19607843137254902, 0.16862745098039217, 0.2196078431372549, 0.4)
	love.graphics.rectangle("fill", var_259_0.trackX, var_259_0.trackY, var_259_0.trackW, var_259_0.trackH)
	love.graphics.setColor(0.7215686274509804, 0.6784313725490196, 0.5137254901960784, 0.95)
	love.graphics.rectangle("fill", var_259_0.thumbX + 1, var_259_0.thumbY, var_259_0.thumbW - 2, var_259_0.thumbH)
	love.graphics.rectangle("fill", var_259_0.thumbX, var_259_0.thumbY + 1, var_259_0.thumbW, var_259_0.thumbH - 2)
	love.graphics.setColor(0.22745098039215686, 0.19215686274509805, 0.25882352941176473, 0.98)
	love.graphics.rectangle("fill", var_259_0.thumbX + 1, var_259_0.thumbY, var_259_0.thumbW - 2, 1)
	love.graphics.rectangle("fill", var_259_0.thumbX + 1, var_259_0.thumbY + var_259_0.thumbH - 1, var_259_0.thumbW - 2, 1)
	love.graphics.rectangle("fill", var_259_0.thumbX, var_259_0.thumbY + 1, 1, var_259_0.thumbH - 2)
	love.graphics.rectangle("fill", var_259_0.thumbX + var_259_0.thumbW - 1, var_259_0.thumbY + 1, 1, var_259_0.thumbH - 2)

	if var_259_0.thumbH >= 14 then
		local var_259_1 = math.max(3, var_259_0.thumbW - 4)
		local var_259_2 = math.floor(var_259_0.thumbX + (var_259_0.thumbW - var_259_1) * 0.5 + 0.5)
		local var_259_3 = math.floor(var_259_0.thumbY + var_259_0.thumbH * 0.5 - 2 + 0.5)

		love.graphics.setColor(0.3568627450980392, 0.2901960784313726, 0.37254901960784315, 0.95)
		love.graphics.rectangle("fill", var_259_2, var_259_3, var_259_1, 1)
		love.graphics.rectangle("fill", var_259_2, var_259_3 + 4, var_259_1, 1)
	end
end

local var_0_168 = {}

local function var_0_169(arg_260_0, arg_260_1)
	arg_260_0 = tostring(arg_260_0 or "")

	if arg_260_0 == "" then
		return arg_260_1
	end

	if arg_260_0 == (_G.currentGameLang or "ko") and arg_260_0 ~= "zh" then
		return arg_260_1
	end

	local var_260_0 = var_0_168[arg_260_0]

	if var_260_0 ~= nil then
		return var_260_0 or arg_260_1
	end

	local var_260_1

	if arg_260_0 == "zh" then
		var_260_1 = "src/data/font/Chinese/arkpixel10.ttf"
	else
		local var_260_2, var_260_3 = pcall(require, "src.data.font_resolver")

		if not var_260_2 or not var_260_3 or not var_260_3.resolve then
			var_0_168[arg_260_0] = false

			return arg_260_1
		end

		var_260_1 = var_260_3.resolve("src/data/font/Galmuri9W.fnt", arg_260_0)
	end

	if type(var_260_1) ~= "string" or var_260_1 == "" or not love.filesystem.getInfo(var_260_1) then
		var_0_168[arg_260_0] = false

		return arg_260_1
	end

	local var_260_4
	local var_260_5
	local var_260_6 = var_260_1:lower()

	if var_260_6:match("%.ttf$") or var_260_6:match("%.otf$") then
		var_260_4, var_260_5 = pcall(love.graphics.newFont, var_260_1, 10, "normal")
	else
		var_260_4, var_260_5 = pcall(love.graphics.newFont, var_260_1)
	end

	if var_260_4 and var_260_5 then
		var_260_5:setFilter("nearest", "nearest")

		var_0_168[arg_260_0] = var_260_5

		return var_260_5
	end

	var_0_168[arg_260_0] = false

	return arg_260_1
end

local function var_0_170(arg_261_0, arg_261_1, arg_261_2, arg_261_3, arg_261_4, arg_261_5, arg_261_6)
	local var_261_0 = arg_261_2
	local var_261_1 = arg_261_6 ~= nil

	if var_261_1 then
		arg_261_2 = math.max(1, arg_261_2 - 20)
	end

	love.graphics.stencil(function()
		love.graphics.rectangle("fill", arg_261_0, arg_261_1, arg_261_2, arg_261_3)
	end, "replace", 1)
	love.graphics.setStencilTest("greater", 0)
	love.graphics.setLineWidth(1)

	local var_261_2 = 26
	local var_261_3 = 0
	local var_261_4 = love.graphics.getFont()
	local var_261_5 = ui and ui.font or var_261_4

	if var_261_5 then
		love.graphics.setFont(var_261_5)
	end

	local var_261_6 = var_261_5 and var_261_5.getHeight and var_261_5:getHeight() or 12

	local function var_261_7(arg_263_0, arg_263_1, arg_263_2)
		love.graphics.setColor(0, 0, 0, 0.92)
		love.graphics.print(arg_263_0, arg_263_1, arg_263_2)
	end

	local function var_261_8(arg_264_0, arg_264_1, arg_264_2, arg_264_3)
		local var_264_0 = love.graphics.getFont()
		local var_264_1 = var_0_169(arg_264_1, var_261_5)

		if var_264_1 then
			love.graphics.setFont(var_264_1)
		end

		love.graphics.setColor(0, 0, 0, 0.92)
		love.graphics.print(arg_264_0, arg_264_2, arg_264_3)

		if var_264_0 then
			love.graphics.setFont(var_264_0)
		end
	end

	local function var_261_9(arg_265_0)
		local var_265_0 = var_0_169(arg_265_0, var_261_5)

		return var_265_0 and var_265_0.getHeight and var_265_0:getHeight() or var_261_6
	end

	local function var_261_10(arg_266_0, arg_266_1, arg_266_2, arg_266_3)
		love.graphics.setColor(0.7333333333333333, 0.7176470588235294, 0.6, 1)
		love.graphics.rectangle("fill", arg_266_0 + 1, arg_266_1, arg_266_2 - 2, arg_266_3)
		love.graphics.rectangle("fill", arg_266_0, arg_266_1 + 1, arg_266_2, arg_266_3 - 2)
		love.graphics.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, 1)
		love.graphics.rectangle("fill", arg_266_0 + 1, arg_266_1, arg_266_2 - 2, 1)
		love.graphics.rectangle("fill", arg_266_0 + 1, arg_266_1 + arg_266_3 - 1, arg_266_2 - 2, 1)
		love.graphics.rectangle("fill", arg_266_0, arg_266_1 + 1, 1, arg_266_3 - 2)
		love.graphics.rectangle("fill", arg_266_0 + arg_266_2 - 1, arg_266_1 + 1, 1, arg_266_3 - 2)
	end

	local function var_261_11(arg_267_0, arg_267_1, arg_267_2, arg_267_3, arg_267_4)
		arg_267_4 = math.max(0, math.min(1, arg_267_4 or 0))

		local var_267_0 = 8
		local var_267_1 = math.floor(arg_267_0 + arg_267_4 * (arg_267_2 - var_267_0) + 0.5)
		local var_267_2 = 2
		local var_267_3 = arg_267_1 + arg_267_3 / 2 - var_267_2 / 2

		love.graphics.setColor(0.6352941176470588, 0.6196078431372549, 0.5215686274509804, 1)
		love.graphics.rectangle("fill", arg_267_0, var_267_3, arg_267_2, var_267_2)

		local var_267_4 = var_267_0
		local var_267_5 = arg_267_3 + 4
		local var_267_6 = var_267_1
		local var_267_7 = arg_267_1 - 2

		love.graphics.setColor(0.9333333333333333, 0.9137254901960784, 0.7647058823529411, 1)
		love.graphics.rectangle("fill", var_267_6 + 1, var_267_7, var_267_4 - 2, var_267_5)
		love.graphics.rectangle("fill", var_267_6, var_267_7 + 1, var_267_4, var_267_5 - 2)
		love.graphics.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, 1)
		love.graphics.rectangle("fill", var_267_6 + 1, var_267_7, var_267_4 - 2, 1)
		love.graphics.rectangle("fill", var_267_6 + 1, var_267_7 + var_267_5 - 1, var_267_4 - 2, 1)
		love.graphics.rectangle("fill", var_267_6, var_267_7 + 1, 1, var_267_5 - 2)
		love.graphics.rectangle("fill", var_267_6 + var_267_4 - 1, var_267_7 + 1, 1, var_267_5 - 2)
	end

	local function var_261_12(arg_268_0, arg_268_1, arg_268_2, arg_268_3)
		local var_268_0 = math.min(12, var_261_2 - 8)

		if var_268_0 < 6 then
			var_268_0 = 6
		end

		local var_268_1 = arg_268_1 + math.floor((var_261_6 - var_268_0) * 0.5 + 0.5) + 1

		var_261_10(arg_268_0, var_268_1, var_268_0, var_268_0)

		if arg_268_3 then
			local var_268_2 = 3
			local var_268_3 = math.max(2, var_268_0 - var_268_2 * 2)

			love.graphics.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, 1)
			love.graphics.rectangle("fill", arg_268_0 + var_268_2, var_268_1 + var_268_2, var_268_3, var_268_3)
		end

		var_261_7(tostring(arg_268_2 or ""), arg_268_0 + var_268_0 + 6, arg_268_1)
	end

	local function var_261_13(arg_269_0, arg_269_1, arg_269_2, arg_269_3, arg_269_4, arg_269_5)
		love.graphics.setColor(0.9333333333333333, 0.9137254901960784, 0.7647058823529411, 1)
		love.graphics.rectangle("fill", arg_269_0 + 1, arg_269_1, arg_269_2 - 2, arg_269_3)
		love.graphics.rectangle("fill", arg_269_0, arg_269_1 + 1, arg_269_2, arg_269_3 - 2)
		love.graphics.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, 1)
		love.graphics.rectangle("fill", arg_269_0 + 1, arg_269_1, arg_269_2 - 2, 1)
		love.graphics.rectangle("fill", arg_269_0 + 1, arg_269_1 + arg_269_3 - 1, arg_269_2 - 2, 1)
		love.graphics.rectangle("fill", arg_269_0, arg_269_1 + 1, 1, arg_269_3 - 2)
		love.graphics.rectangle("fill", arg_269_0 + arg_269_2 - 1, arg_269_1 + 1, 1, arg_269_3 - 2)

		local var_269_0 = arg_269_5 and var_261_9(arg_269_5) or var_261_6
		local var_269_1 = arg_269_1 + math.floor((arg_269_3 - var_269_0) * 0.5 + 0.5)

		if arg_269_5 then
			var_261_8(arg_269_4, arg_269_5, arg_269_0 + 8, var_269_1 - 1)
		else
			var_261_7(arg_269_4, arg_269_0 + 8, var_269_1 - 1)
		end

		local var_269_2 = arg_269_1 + math.floor((arg_269_3 - var_261_6) * 0.5 + 0.5)

		var_261_7("v", arg_269_0 + arg_269_2 - 12, var_269_2 - 2)
	end

	for iter_261_0, iter_261_1 in ipairs(arg_261_5) do
		local var_261_14 = math.floor(arg_261_1 + var_261_3 - arg_261_4 + 0.5)
		local var_261_15 = iter_261_1.label

		if type(var_261_15) == "function" then
			var_261_15 = var_261_15()
		end

		local var_261_16 = tostring(var_261_15 or "")

		if arg_261_1 <= var_261_14 + var_261_2 and var_261_14 <= arg_261_1 + arg_261_3 then
			local var_261_17 = var_261_14
			local var_261_18 = var_261_17 + math.floor((var_261_2 - var_261_6) * 0.5 + 0.5)

			if iter_261_1.kind ~= "button" then
				var_261_7(var_261_16, arg_261_0, var_261_18)
			end

			local var_261_19 = 10
			local var_261_20 = 100
			local var_261_21 = math.floor(arg_261_0 + arg_261_2 - var_261_20 - var_261_19 + 0.5)
			local var_261_22 = (var_261_21 - 36 + (var_261_21 + var_261_20)) * 0.5
			local var_261_23 = 140
			local var_261_24 = math.floor(var_261_22 - var_261_23 * 0.5 + 0.5) + 6

			if iter_261_1.kind == "radio" and iter_261_1.options then
				local var_261_25

				if iter_261_1.get then
					var_261_25 = iter_261_1.get()
				end

				local var_261_26 = iter_261_1.options[1] and iter_261_1.options[1].label or ""

				for iter_261_2, iter_261_3 in ipairs(iter_261_1.options) do
					if iter_261_3.value == var_261_25 then
						var_261_26 = iter_261_3.label
					end
				end

				local var_261_27 = 14
				local var_261_28 = 112
				local var_261_29 = var_261_18 - 1
				local var_261_30 = math.floor(var_261_22 - (var_261_27 + var_261_28 + var_261_27) * 0.5 + 0.5)
				local var_261_31 = var_261_30 + var_261_27
				local var_261_32 = var_261_31 + var_261_28

				var_261_7("<", var_261_30 + 4, var_261_29)

				local var_261_33 = var_261_5:getWidth(tostring(var_261_26))

				var_261_7(tostring(var_261_26), var_261_31 + math.floor((var_261_28 - var_261_33) * 0.5 + 0.5), var_261_18)
				var_261_7(">", var_261_32 + 4, var_261_29)
			elseif iter_261_1.kind == "slider" then
				local var_261_34 = iter_261_1.get and iter_261_1.get() or 0
				local var_261_35 = var_261_20
				local var_261_36 = 10
				local var_261_37 = var_261_21
				local var_261_38 = var_261_17 + math.floor((var_261_2 - var_261_36) * 0.5 + 0.5)

				var_261_11(var_261_37, var_261_38, var_261_35, var_261_36, var_261_34)
				var_261_7(string.format("%d%%", math.floor((var_261_34 or 0) * 100 + 0.5)), var_261_37 - 36, var_261_18)
			elseif iter_261_1.kind == "dropdown" and iter_261_1.options then
				local var_261_39 = iter_261_1.get and iter_261_1.get() or "ko"
				local var_261_40 = iter_261_1.options[1] and (iter_261_1.options[1].fontLang or iter_261_1.options[1].value) or nil
				local var_261_41 = iter_261_1.options[1] and iter_261_1.options[1].label or "한국어"

				for iter_261_4, iter_261_5 in ipairs(iter_261_1.options) do
					if iter_261_5.value == var_261_39 then
						var_261_41 = iter_261_5.label
						var_261_40 = iter_261_5.fontLang or iter_261_5.value
					end
				end

				local var_261_42 = 120
				local var_261_43 = var_261_2 - 8
				local var_261_44 = math.floor(var_261_22 - var_261_42 * 0.5 + 0.5)
				local var_261_45 = var_261_17 + 4

				var_261_13(var_261_44, var_261_45, var_261_42, var_261_43, var_261_41, var_261_40)
			elseif iter_261_1.kind == "button" then
				local var_261_46 = math.min(arg_261_2 - 4, 170)
				local var_261_47 = var_261_2 - 8
				local var_261_48 = math.floor(arg_261_0 + (arg_261_2 - var_261_46) * 0.5 + 0.5)
				local var_261_49 = var_261_17 + 4

				if iter_261_1.disabled then
					love.graphics.setColor(0.6784313725490196, 0.6627450980392157, 0.5686274509803921, 0.85)
					love.graphics.rectangle("fill", var_261_48 + 1, var_261_49, var_261_46 - 2, var_261_47)
					love.graphics.rectangle("fill", var_261_48, var_261_49 + 1, var_261_46, var_261_47 - 2)
					love.graphics.setColor(0.47843137254901963, 0.4549019607843137, 0.40784313725490196, 0.95)
					love.graphics.rectangle("fill", var_261_48 + 1, var_261_49, var_261_46 - 2, 1)
					love.graphics.rectangle("fill", var_261_48 + 1, var_261_49 + var_261_47 - 1, var_261_46 - 2, 1)
					love.graphics.rectangle("fill", var_261_48, var_261_49 + 1, 1, var_261_47 - 2)
					love.graphics.rectangle("fill", var_261_48 + var_261_46 - 1, var_261_49 + 1, 1, var_261_47 - 2)
				else
					var_261_10(var_261_48, var_261_49, var_261_46, var_261_47)
				end

				local var_261_50 = var_261_5:getWidth(var_261_16)
				local var_261_51 = var_261_48 + math.floor((var_261_46 - var_261_50) * 0.5 + 0.5)
				local var_261_52 = var_261_49 + math.floor((var_261_47 - var_261_6) * 0.5 + 0.5) - 1

				if iter_261_1.disabled then
					love.graphics.setColor(0.33725490196078434, 0.3215686274509804, 0.2980392156862745, 0.78)
				else
					love.graphics.setColor(0.6392156862745098, 0.22745098039215686, 0.22745098039215686, 1)
				end

				love.graphics.print(var_261_16, var_261_51, var_261_52)
			end
		end

		var_261_3 = var_261_3 + var_261_2
	end

	love.graphics.setStencilTest()

	if arg_261_6 and arg_261_6.langDropdownOpen then
		local var_261_53 = 0

		for iter_261_6, iter_261_7 in ipairs(arg_261_5) do
			if iter_261_7.kind == "dropdown" and iter_261_7.options then
				local var_261_54 = math.floor(arg_261_1 + var_261_53 - arg_261_4 + 0.5)

				if arg_261_1 <= var_261_54 + var_261_2 and var_261_54 <= arg_261_1 + arg_261_3 then
					local var_261_55 = 120
					local var_261_56 = 10
					local var_261_57 = 100
					local var_261_58 = math.floor(arg_261_0 + arg_261_2 - var_261_57 - var_261_56 + 0.5)
					local var_261_59 = (var_261_58 - 36 + (var_261_58 + var_261_57)) * 0.5
					local var_261_60 = math.floor(var_261_59 - var_261_55 * 0.5 + 0.5)
					local var_261_61 = var_261_54 + 4 + (var_261_2 - 8)

					for iter_261_8, iter_261_9 in ipairs(iter_261_7.options) do
						local var_261_62 = var_261_61 + (iter_261_8 - 1) * var_261_2

						love.graphics.setColor(0.9333333333333333, 0.9137254901960784, 0.7647058823529411, 1)
						love.graphics.rectangle("fill", var_261_60 + 1, var_261_62, var_261_55 - 2, var_261_2)
						love.graphics.rectangle("fill", var_261_60, var_261_62 + 1, var_261_55, var_261_2 - 2)
						love.graphics.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, 1)
						love.graphics.rectangle("fill", var_261_60 + 1, var_261_62, var_261_55 - 2, 1)
						love.graphics.rectangle("fill", var_261_60 + 1, var_261_62 + var_261_2 - 1, var_261_55 - 2, 1)
						love.graphics.rectangle("fill", var_261_60, var_261_62 + 1, 1, var_261_2 - 2)
						love.graphics.rectangle("fill", var_261_60 + var_261_55 - 1, var_261_62 + 1, 1, var_261_2 - 2)

						local var_261_63 = iter_261_9.fontLang or iter_261_9.value
						local var_261_64 = var_261_9(var_261_63)

						var_261_8(iter_261_9.label, var_261_63, var_261_60 + 8, var_261_62 + math.floor((var_261_2 - var_261_64) * 0.5 + 0.5) - 1)
					end

					love.graphics.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, 1)

					local var_261_65 = #iter_261_7.options * var_261_2

					love.graphics.rectangle("fill", var_261_60, var_261_61, 1, var_261_65)
					love.graphics.rectangle("fill", var_261_60 + var_261_55 - 1, var_261_61, 1, var_261_65)
				end
			end

			var_261_53 = var_261_53 + var_261_2
		end
	end

	if var_261_4 then
		love.graphics.setFont(var_261_4)
	end

	if var_261_1 then
		var_0_167(arg_261_0, arg_261_1, var_261_0, arg_261_3, arg_261_6)
	end
end

local function var_0_171(arg_270_0, arg_270_1, arg_270_2, arg_270_3, arg_270_4, arg_270_5, arg_270_6, arg_270_7, arg_270_8)
	if arg_270_8 then
		arg_270_4 = math.max(1, arg_270_4 - 20)
	end

	local var_270_0 = 26
	local var_270_1 = 0

	local function var_270_2(arg_271_0, arg_271_1)
		local var_271_0 = arg_270_1 - arg_270_3 + arg_270_6

		return arg_271_0 <= var_271_0 and var_271_0 < arg_271_0 + arg_271_1
	end

	for iter_270_0, iter_270_1 in ipairs(arg_270_7) do
		if var_270_2(var_270_1, var_270_0) then
			local var_270_3 = 10
			local var_270_4 = 100
			local var_270_5 = math.floor(arg_270_2 + arg_270_4 - var_270_4 - var_270_3 + 0.5)
			local var_270_6 = (var_270_5 - 36 + (var_270_5 + var_270_4)) * 0.5
			local var_270_7 = 140
			local var_270_8 = math.floor(var_270_6 - var_270_7 * 0.5 + 0.5) + 6

			if iter_270_1.kind == "radio" and iter_270_1.options and iter_270_1.set then
				local var_270_9

				if iter_270_1.get then
					var_270_9 = iter_270_1.get()
				end

				local var_270_10 = 1

				for iter_270_2, iter_270_3 in ipairs(iter_270_1.options) do
					if iter_270_3.value == var_270_9 then
						var_270_10 = iter_270_2

						break
					end
				end

				local var_270_11 = arg_270_3 + var_270_1 - arg_270_6
				local var_270_12 = 14
				local var_270_13 = 112
				local var_270_14 = math.floor(var_270_6 - (var_270_12 + var_270_13 + var_270_12) * 0.5 + 0.5)
				local var_270_15 = var_270_14 + var_270_12
				local var_270_16 = var_270_15 + var_270_13

				local function var_270_17(arg_272_0)
					local var_272_0 = #iter_270_1.options

					if var_272_0 <= 0 then
						return
					end

					while arg_272_0 < 1 do
						arg_272_0 = arg_272_0 + var_272_0
					end

					while var_272_0 < arg_272_0 do
						arg_272_0 = arg_272_0 - var_272_0
					end

					iter_270_1.set(iter_270_1.options[arg_272_0].value)
				end

				if var_270_11 <= arg_270_1 and arg_270_1 <= var_270_11 + var_270_0 and var_270_14 <= arg_270_0 and arg_270_0 <= var_270_14 + var_270_12 then
					var_270_17(var_270_10 - 1)
					playButtonClickSound()

					return true
				end

				if var_270_11 <= arg_270_1 and arg_270_1 <= var_270_11 + var_270_0 and var_270_16 <= arg_270_0 and arg_270_0 <= var_270_16 + var_270_12 then
					var_270_17(var_270_10 + 1)
					playButtonClickSound()

					return true
				end

				if var_270_11 <= arg_270_1 and arg_270_1 <= var_270_11 + var_270_0 and var_270_15 <= arg_270_0 and arg_270_0 <= var_270_15 + var_270_13 then
					var_270_17(var_270_10 + 1)
					playButtonClickSound()

					return true
				end
			elseif iter_270_1.kind == "slider" and iter_270_1.set and iter_270_1.get then
				local var_270_18 = arg_270_3 + var_270_1 - arg_270_6
				local var_270_19 = 100
				local var_270_20 = 8
				local var_270_21 = 10
				local var_270_22 = math.floor(arg_270_2 + arg_270_4 - var_270_19 - 10 + 0.5)
				local var_270_23 = var_270_18 + math.floor((var_270_0 - var_270_21) * 0.5 + 0.5)

				if var_270_22 <= arg_270_0 and arg_270_0 <= var_270_22 + var_270_19 and arg_270_1 >= var_270_23 - 6 and arg_270_1 <= var_270_23 + var_270_21 + 6 then
					local var_270_24 = iter_270_1.get() or 0
					local var_270_25 = math.max(0, math.min(1, var_270_24))
					local var_270_26 = math.floor(var_270_22 + var_270_25 * (var_270_19 - var_270_20) + 0.5)
					local var_270_27 = var_270_23 - 6
					local var_270_28 = var_270_21 + 12
					local var_270_29 = var_270_26 + var_270_20 / 2

					if var_270_26 <= arg_270_0 and arg_270_0 <= var_270_26 + var_270_20 and var_270_27 <= arg_270_1 and arg_270_1 <= var_270_27 + var_270_28 then
						local var_270_30 = arg_270_0 - var_270_29

						arg_270_8.draggingSlider = {
							key = iter_270_1.key,
							item = iter_270_1,
							grabDx = var_270_30,
							barX = var_270_22,
							barW = var_270_19,
							handleW = var_270_20
						}

						playButtonClickSound()

						return true
					end

					local var_270_31 = (arg_270_0 - 0 - (var_270_22 + var_270_20 / 2)) / math.max(1, var_270_19 - var_270_20)
					local var_270_32 = math.max(0, math.min(1, var_270_31))

					iter_270_1.set(var_270_32)

					arg_270_8.draggingSlider = {
						grabDx = 0,
						key = iter_270_1.key,
						item = iter_270_1,
						barX = var_270_22,
						barW = var_270_19,
						handleW = var_270_20
					}

					playButtonClickSound()

					return true
				end
			elseif iter_270_1.kind == "dropdown" and iter_270_1.options and iter_270_1.set then
				local var_270_33 = arg_270_3 + var_270_1 - arg_270_6
				local var_270_34 = 120
				local var_270_35 = math.floor(var_270_6 - var_270_34 * 0.5 + 0.5)
				local var_270_36 = var_270_33 + 4
				local var_270_37 = var_270_0 - 8

				if var_270_35 <= arg_270_0 and arg_270_0 <= var_270_35 + var_270_34 and var_270_36 <= arg_270_1 and arg_270_1 <= var_270_36 + var_270_37 then
					arg_270_8.langDropdownOpen = arg_270_8.langDropdownOpen ~= true

					playButtonClickSound()

					return true
				end
			elseif iter_270_1.kind == "button" and iter_270_1.set then
				local var_270_38 = arg_270_3 + var_270_1 - arg_270_6
				local var_270_39 = math.min(arg_270_4 - 4, 170)
				local var_270_40 = var_270_0 - 8
				local var_270_41 = math.floor(arg_270_2 + (arg_270_4 - var_270_39) * 0.5 + 0.5)
				local var_270_42 = var_270_38 + 4

				if var_270_41 <= arg_270_0 and arg_270_0 <= var_270_41 + var_270_39 and var_270_42 <= arg_270_1 and arg_270_1 <= var_270_42 + var_270_40 then
					if iter_270_1.disabled then
						return true
					end

					iter_270_1.set()
					playButtonClickSound()

					return true
				end
			end
		end

		var_270_1 = var_270_1 + var_270_0

		if iter_270_1.kind == "dropdown" and arg_270_8.langDropdownOpen == true and iter_270_1.options then
			for iter_270_4, iter_270_5 in ipairs(iter_270_1.options) do
				local var_270_43 = arg_270_3 + (var_270_1 - var_270_0) - arg_270_6
				local var_270_44 = 120
				local var_270_45 = 10
				local var_270_46 = 100
				local var_270_47 = math.floor(arg_270_2 + arg_270_4 - var_270_46 - var_270_45 + 0.5)
				local var_270_48 = (var_270_47 - 36 + (var_270_47 + var_270_46)) * 0.5
				local var_270_49 = math.floor(var_270_48 - var_270_44 * 0.5 + 0.5)
				local var_270_50 = var_270_43 + 4 + (var_270_0 - 8) + (iter_270_4 - 1) * var_270_0

				if var_270_49 <= arg_270_0 and arg_270_0 <= var_270_49 + var_270_44 and var_270_50 <= arg_270_1 and arg_270_1 <= var_270_50 + var_270_0 then
					iter_270_1.set(iter_270_5.value)

					arg_270_8.langDropdownOpen = false

					playButtonClickSound()

					return true
				end
			end
		end
	end

	return false
end

function menuSettingsOverlayMousepressed(arg_273_0, arg_273_1, arg_273_2)
	local var_273_0 = ui and ui.menuSettingsOverlayState
	local var_273_1 = ui and ui.pauseOverlay
	local var_273_2 = loadedAssets and loadedAssets.ui

	if not var_273_0 or not var_273_1 or not var_273_2 then
		return true
	end

	if var_273_0.open ~= true then
		return true
	end

	if arg_273_2 ~= 1 then
		return true
	end

	local var_273_3 = var_273_1.buttonRopes or {}
	local var_273_4 = var_273_3.positions or {}
	local var_273_5 = {}
	local var_273_6 = math.floor((var_273_3.offsetX or 0) + 0.5)

	for iter_273_0, iter_273_1 in ipairs(var_273_4) do
		local var_273_7 = math.floor((iter_273_1.x or 0) + var_273_6 + 0.5)

		table.insert(var_273_5, {
			idx = iter_273_0,
			x = var_273_7
		})
	end

	table.sort(var_273_5, function(arg_274_0, arg_274_1)
		return arg_274_0.x < arg_274_1.x
	end)

	local var_273_8 = var_273_5[1] and var_273_5[1].idx or nil
	local var_273_9 = var_273_5[2] and var_273_5[2].idx or nil
	local var_273_10 = var_273_8 and var_273_4[var_273_8] or nil
	local var_273_11 = var_273_9 and var_273_4[var_273_9] or nil

	if not var_273_10 or not var_273_11 then
		return true
	end

	local function var_273_12(arg_275_0)
		local var_275_0 = var_273_3.motion or {}

		if var_275_0.enabled == false then
			return 0
		end

		local var_275_1 = tonumber(var_275_0.amplitudePx) or 0
		local var_275_2 = tonumber(var_275_0.periodSec) or 0

		if var_275_1 == 0 or var_275_2 == 0 then
			return 0
		end

		local var_275_3 = tonumber(var_275_0.phaseStep) or 0
		local var_275_4 = tonumber(var_275_0.basePhase) or 0
		local var_275_5 = love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_275_6 = var_275_4 + (arg_275_0 or 1) * var_275_3

		return var_275_1 * math.sin(var_275_5 / var_275_2 * (2 * math.pi) + var_275_6)
	end

	local function var_273_13(arg_276_0, arg_276_1, arg_276_2, arg_276_3, arg_276_4)
		if not arg_276_0 then
			return false
		end

		arg_276_4 = arg_276_4 or 1

		local var_276_0 = arg_276_0:getWidth()
		local var_276_1 = arg_276_0:getHeight()

		if arg_276_2 > arg_273_0 or arg_273_0 >= arg_276_2 + var_276_0 * arg_276_4 or arg_276_3 > arg_273_1 or arg_273_1 >= arg_276_3 + var_276_1 * arg_276_4 then
			return false
		end

		if not arg_276_1 then
			return true
		end

		local var_276_2 = math.floor((arg_273_0 - arg_276_2) / arg_276_4)
		local var_276_3 = math.floor((arg_273_1 - arg_276_3) / arg_276_4)

		if var_276_2 < 0 or var_276_3 < 0 or var_276_0 <= var_276_2 or var_276_1 <= var_276_3 then
			return false
		end

		local var_276_4, var_276_5, var_276_6, var_276_7 = arg_276_1:getPixel(var_276_2, var_276_3)

		return (var_276_7 or 0) > 0.05
	end

	local var_273_14 = math.floor((var_273_3.offsetX or 0) + 0.5)
	local var_273_15 = math.floor((var_273_3.offsetY or 0) + 0.5)

	var_273_0.buttonRopeDrop = var_273_0.buttonRopeDrop or {}

	local var_273_16 = var_273_1.playButtonDark or {
		scale = 1,
		offsetY = 20,
		offsetX = 22
	}
	local var_273_17 = var_273_1.optionButtonDark or {
		scale = 1,
		offsetY = 20,
		offsetX = 22
	}

	local function var_273_18(arg_277_0, arg_277_1, arg_277_2, arg_277_3)
		if not arg_277_3 then
			return arg_277_0
		end

		local var_277_0 = arg_277_1 and arg_277_1:getWidth() or 0

		return math.floor(arg_277_0 - var_277_0 * (arg_277_2 or 1) * 0.5 + 0.5)
	end

	local function var_273_19(arg_278_0, arg_278_1, arg_278_2, arg_278_3, arg_278_4)
		local var_278_0 = var_273_0.buttonRopeDrop[arg_278_0] or 0
		local var_278_1 = math.floor((arg_278_1.x or 0) + var_273_14 + 0.5)
		local var_278_2 = math.floor((arg_278_1.y or 0) + var_273_15 + (var_273_0.y or 0) + var_273_12(arg_278_0) + var_278_0 + 0.5)
		local var_278_3 = math.floor(var_278_1 + (arg_278_2.offsetX or 0) + 0.5)
		local var_278_4 = math.floor(var_278_2 + (arg_278_2.offsetY or 0) + 0.5)
		local var_278_5 = arg_278_2.scale or 1
		local var_278_6 = var_273_18(var_278_3, arg_278_3, var_278_5, arg_278_2.alignCenterX)

		return var_273_13(arg_278_3, arg_278_4, var_278_6, var_278_4, var_278_5)
	end

	if var_273_19(var_273_8, var_273_10, var_273_16, var_273_2.pauseBackButtonDark or var_273_2.pauseBackButton, var_273_2.pauseBackButtonDarkData or var_273_2.pauseBackButtonData) then
		playButtonClickSound()
		closeMenuSettingsOverlay()

		return true
	end

	if var_273_19(var_273_9, var_273_11, var_273_17, var_273_2.optionButton, var_273_2.optionButtonData) then
		playButtonClickSound()

		return true
	end

	local var_273_20 = var_0_162(var_273_0, var_273_1, var_273_2)

	if var_273_20 then
		local var_273_21, var_273_22, var_273_23, var_273_24 = var_0_163(var_273_20.content.x, var_273_20.content.y, var_273_20.content.w, var_273_20.content.h)
		local var_273_25 = var_0_160()
		local var_273_26 = var_273_0.settingsScrollY or 0

		if var_273_0.langDropdownOpen == true and var_0_171(arg_273_0, arg_273_1, var_273_21, var_273_22, var_273_23, var_273_24, var_273_26, var_273_25, var_273_0) then
			return true
		end

		if var_273_21 <= arg_273_0 and arg_273_0 <= var_273_21 + var_273_23 and var_273_22 <= arg_273_1 and arg_273_1 <= var_273_22 + var_273_24 then
			if var_0_166(var_273_0, var_273_21, var_273_22, var_273_23, var_273_24, arg_273_0, arg_273_1) then
				return true
			end

			if var_0_171(arg_273_0, arg_273_1, var_273_21, var_273_22, var_273_23, var_273_24, var_273_26, var_273_25, var_273_0) then
				return true
			end
		end
	end

	return true
end

function drawMenuSettingsOverlay()
	local var_279_0 = ui and ui.menuSettingsOverlayState
	local var_279_1 = ui and ui.pauseOverlay

	if not var_279_0 or not var_279_1 then
		return
	end

	if not isMenuSettingsOverlayBlocking() then
		return
	end

	local var_279_2 = loadedAssets and loadedAssets.ui

	if not var_279_2 then
		return
	end

	local var_279_3 = var_279_2.optionWindowRope
	local var_279_4 = var_279_2.optionWindow
	local var_279_5 = var_279_2.pauseBackground
	local var_279_6 = var_279_2.optionPaperBackground
	local var_279_7 = var_279_2.optionWindowTopbar
	local var_279_8 = var_279_2.optionButtonRope
	local var_279_9 = var_279_2.pauseBackButton
	local var_279_10 = var_279_2.pauseBackButtonDark
	local var_279_11 = var_279_2.optionButton
	local var_279_12 = var_279_2.optionButtonDark

	if not var_279_4 and not var_279_3 then
		return
	end

	local var_279_13 = var_279_1.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)

	if not var_279_1.visibleY then
		local var_279_14 = 0
	end

	local var_279_15 = math.floor((var_279_0.y or var_279_13) + 0.5)

	local function var_279_16(arg_280_0)
		return 1 - (1 - arg_280_0) * (1 - arg_280_0) * (1 - arg_280_0)
	end

	if var_279_0.open == true then
		love.graphics.setColor(0, 0, 0, 0.65)
		love.graphics.rectangle("fill", 0, 0, ui.virtual.W, ui.virtual.H)
		love.graphics.setColor(1, 1, 1, 1)
	end

	if var_279_4 then
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_279_4, 0, var_279_15)
	end

	local var_279_17 = 0.08
	local var_279_18 = 0.45
	local var_279_19 = var_279_0.paperT or 0
	local var_279_20 = var_279_17 <= var_279_19
	local var_279_21 = -40

	if var_279_20 then
		local var_279_22 = math.min(1, (var_279_19 - var_279_17) / var_279_18)

		var_279_21 = -40 * (1 - var_279_16(var_279_22))
	end

	local var_279_23 = var_279_1.pauseBackground

	if var_279_5 and var_279_23 and var_279_23.enabled ~= false then
		local var_279_24 = var_279_23.scale or 1
		local var_279_25 = math.floor((var_279_23.offsetX or 0) + 0.5)
		local var_279_26 = math.floor((var_279_23.offsetY or 0) + 0.5)

		if var_279_20 then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_279_5, var_279_25, var_279_15 + var_279_26 + var_279_21, 0, var_279_24, var_279_24)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_279_27 = var_279_1.optionPaperBackground

	if var_279_6 and var_279_27 and var_279_27.enabled ~= false then
		local var_279_28 = var_279_27.scale or 1
		local var_279_29 = math.floor((var_279_27.offsetX or 0) + 0.5)
		local var_279_30 = math.floor((var_279_27.offsetY or 0) + 0.5)

		if var_279_20 then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_279_6, var_279_29, var_279_15 + var_279_30 + var_279_21, 0, var_279_28, var_279_28)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	if var_279_20 then
		local var_279_31 = var_0_162(var_279_0, var_279_1, var_279_2)

		if var_279_31 then
			local var_279_32 = var_0_160()
			local var_279_33 = var_279_0.settingsScrollY or 0
			local var_279_34, var_279_35, var_279_36, var_279_37 = var_0_163(var_279_31.content.x, var_279_31.content.y, var_279_31.content.w, var_279_31.content.h)

			var_0_170(var_279_34, var_279_35, var_279_36, var_279_37, var_279_33, var_279_32, var_279_0)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_279_38 = var_279_1.pauseTitle
	local var_279_39 = var_279_1.pauseBackground

	if var_279_38 and var_279_39 and var_279_5 and var_279_38.enabled ~= false then
		local var_279_40 = love.graphics.getFont()
		local var_279_41 = ui and ui.fontPauseTitle or var_279_40

		if var_279_41 then
			love.graphics.setFont(var_279_41)
		end

		local var_279_42 = ui and ui.menuSettings and ui.menuSettings.language or "ko"
		local var_279_43 = tostring(var_279_38.settingsText or var_0_7.getText("settings_title", var_279_42))
		local var_279_44 = var_279_38.scale or 1
		local var_279_45 = var_279_5:getWidth()
		local var_279_46 = var_279_5:getHeight()
		local var_279_47 = math.floor((var_279_39.offsetX or 0) + 0.5)
		local var_279_48 = math.floor((var_279_39.offsetY or 0) + 0.5)
		local var_279_49 = var_279_47 + math.floor(var_279_45 * 0.5 + 0.5)
		local var_279_50 = var_279_48 + var_279_21 + math.floor((var_279_38.yFrac or 0.22) * var_279_46 + 0.5)
		local var_279_51 = var_279_41 and var_279_41:getWidth(var_279_43) or 0
		local var_279_52

		if var_279_38.align == "left" then
			var_279_52 = var_279_47 + (var_279_38.offsetX or 0)
		else
			var_279_52 = math.floor(var_279_49 - var_279_51 * var_279_44 * 0.5 + (var_279_38.offsetX or 0) + 0.5)
		end

		local var_279_53 = math.floor(var_279_15 + var_279_50 + (var_279_38.offsetY or 0) + 0.5)
		local var_279_54 = var_279_38.color or {
			1,
			1,
			1,
			1
		}

		if var_279_20 then
			love.graphics.setColor(var_279_54[1] or 1, var_279_54[2] or 1, var_279_54[3] or 1, var_279_54[4] or 1)
			love.graphics.print(var_279_43, var_279_52, var_279_53, 0, var_279_44, var_279_44)
			love.graphics.setColor(1, 1, 1, 1)
		end

		if var_279_40 then
			love.graphics.setFont(var_279_40)
		end
	end

	local var_279_55 = var_279_1.buttonRopes or {}

	if var_279_55.enabled ~= false and var_279_8 then
		local var_279_56 = var_279_55.positions or {}
		local var_279_57 = {}
		local var_279_58 = math.floor((var_279_55.offsetX or 0) + 0.5)

		for iter_279_0, iter_279_1 in ipairs(var_279_56) do
			local var_279_59 = math.floor((iter_279_1.x or 0) + var_279_58 + 0.5)

			table.insert(var_279_57, {
				idx = iter_279_0,
				x = var_279_59
			})
		end

		table.sort(var_279_57, function(arg_281_0, arg_281_1)
			return arg_281_0.x < arg_281_1.x
		end)

		local var_279_60 = var_279_57[1] and var_279_57[1].idx or nil
		local var_279_61 = var_279_57[2] and var_279_57[2].idx or nil
		local var_279_62 = var_279_60 and var_279_56[var_279_60] or nil
		local var_279_63 = var_279_61 and var_279_56[var_279_61] or nil

		if var_279_62 and var_279_63 and var_279_60 and var_279_61 then
			local function var_279_64(arg_282_0)
				local var_282_0 = var_279_55.motion or {}

				if var_282_0.enabled == false then
					return 0
				end

				local var_282_1 = tonumber(var_282_0.amplitudePx) or 0
				local var_282_2 = tonumber(var_282_0.periodSec) or 0

				if var_282_1 == 0 or var_282_2 == 0 then
					return 0
				end

				local var_282_3 = tonumber(var_282_0.phaseStep) or 0
				local var_282_4 = tonumber(var_282_0.basePhase) or 0
				local var_282_5 = love.timer and love.timer.getTime and love.timer.getTime() or 0
				local var_282_6 = var_282_4 + (arg_282_0 or 1) * var_282_3

				return var_282_1 * math.sin(var_282_5 / var_282_2 * (2 * math.pi) + var_282_6)
			end

			local var_279_65 = math.floor((var_279_55.offsetX or 0) + 0.5)
			local var_279_66 = math.floor((var_279_55.offsetY or 0) + 0.5)
			local var_279_67 = var_279_55.scale or 1

			var_279_0.buttonRopeDrop = var_279_0.buttonRopeDrop or {}

			local var_279_68 = var_279_0.buttonRopeDrop[var_279_60] or 0
			local var_279_69 = var_279_0.buttonRopeDrop[var_279_61] or 0
			local var_279_70 = math.floor((var_279_62.x or 0) + var_279_65 + 0.5)
			local var_279_71 = math.floor((var_279_62.y or 0) + var_279_66 + var_279_15 + var_279_64(var_279_60) + var_279_68 + 0.5)
			local var_279_72 = math.floor((var_279_63.x or 0) + var_279_65 + 0.5)
			local var_279_73 = math.floor((var_279_63.y or 0) + var_279_66 + var_279_15 + var_279_64(var_279_61) + var_279_69 + 0.5)
			local var_279_74 = var_279_1.playButtonDark or {
				scale = 1,
				offsetY = 20,
				offsetX = 22
			}
			local var_279_75 = var_279_1.optionButtonDark or {
				scale = 1,
				offsetY = 20,
				offsetX = 22
			}

			local function var_279_76(arg_283_0, arg_283_1, arg_283_2, arg_283_3)
				if not arg_283_3 then
					return arg_283_0
				end

				local var_283_0 = arg_283_1 and arg_283_1:getWidth() or 0

				return math.floor(arg_283_0 - var_283_0 * (arg_283_2 or 1) * 0.5 + 0.5)
			end

			local var_279_77 = math.floor(var_279_70 + (var_279_74.offsetX or 0) + 0.5)
			local var_279_78 = math.floor(var_279_71 + (var_279_74.offsetY or 0) + 0.5)
			local var_279_79 = var_279_74.scale or 1
			local var_279_80 = var_279_10 or var_279_9
			local var_279_81 = var_279_76(var_279_77, var_279_80, var_279_79, var_279_74.alignCenterX)
			local var_279_82 = math.floor(var_279_72 + (var_279_75.offsetX or 0) + 0.5)
			local var_279_83 = math.floor(var_279_73 + (var_279_75.offsetY or 0) + 0.5)
			local var_279_84 = var_279_75.scale or 1
			local var_279_85 = var_279_76(var_279_82, var_279_11, var_279_84, var_279_75.alignCenterX)

			love.graphics.setColor(1, 1, 1, 1)

			if (var_279_0.menuButtonsHovered or {}).back and var_279_9 then
				love.graphics.draw(var_279_9, var_279_81, var_279_78, 0, var_279_79, var_279_79)
			elseif var_279_10 then
				love.graphics.draw(var_279_10, var_279_81, var_279_78, 0, var_279_79, var_279_79)
			elseif var_279_9 then
				love.graphics.draw(var_279_9, var_279_81, var_279_78, 0, var_279_79, var_279_79)
			end

			if var_279_12 then
				love.graphics.draw(var_279_12, var_279_85, var_279_83, 0, var_279_84, var_279_84)
			end

			if var_279_11 then
				love.graphics.draw(var_279_11, var_279_85, var_279_83, 0, var_279_84, var_279_84)
			end

			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_279_8, var_279_70, var_279_71, 0, var_279_67, var_279_67)
			love.graphics.draw(var_279_8, var_279_72, var_279_73, 0, var_279_67, var_279_67)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	if var_279_7 then
		local var_279_86 = var_279_1.topbarYOffsetPx or 0

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_279_7, 0, var_279_15 + var_279_86)
	end

	if var_279_3 then
		local var_279_87 = var_279_1.ropeYOffsetPx or 0

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_279_3, 0, var_279_15 + var_279_87)
	end
end

function love.draw()
	var_0_30()

	local var_284_0 = WindowActivityState and WindowActivityState.throttleEnabled and (WindowActivityState.focused == false or WindowActivityState.visible == false)
	local var_284_1 = WindowActivityState and WindowActivityState.throttleEnabled and (WindowActivityState.resumeGuardFrames or 0) > 0
	local var_284_2 = WindowActivityState and var_284_0 and (WindowActivityState.cacheInactiveFrame ~= false or WindowActivityState.visible == false)
	local var_284_3 = WindowActivityState and var_284_1 and WindowActivityState.cacheResumeGuardFrame ~= false

	if var_284_2 or var_284_3 then
		var_0_30()
		love.graphics.clear(0.1803921568627451, 0.13333333333333333, 0.1843137254901961, 1)

		if masterCanvas then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(masterCanvas, 0, 0)
		end

		if var_284_1 and not var_284_0 then
			WindowActivityState.resumeGuardFrames = math.max(0, (WindowActivityState.resumeGuardFrames or 0) - 1)
		end

		return
	end

	if var_284_1 and not var_284_0 then
		WindowActivityState.resumeGuardFrames = math.max(0, (WindowActivityState.resumeGuardFrames or 0) - 1)
	end

	if not _webLoggedFirstDraw then
		_webLoggedFirstDraw = true

		var_0_27("first draw start")
	end

	var_0_50()

	if _canvasRefreshPending then
		_canvasRefreshPending = false

		updateScreenScale()

		if canvas and ui and ui.virtual then
			local var_284_4 = canvas

			canvas = love.graphics.newCanvas(ui.virtual.W, ui.virtual.H)

			canvas:setFilter("nearest", "nearest")
			var_284_4:release()
		end
	end

	if not masterCanvas then
		updateScreenScale()
	end

	var_0_36(false)
	love.graphics.clear(0, 0, 0, 1)
	love.graphics.setCanvas(canvas)
	love.graphics.clear(0.1803921568627451, 0.13333333333333333, 0.1843137254901961, 1)

	local var_284_5 = ui and ui.pauseOverlayState and ui.pauseOverlayState.active or Tutorial and Tutorial.isActive and Tutorial.isActive()
	local var_284_6
	local var_284_7

	if tooltip then
		var_284_6, var_284_7 = tooltip.mouseX, tooltip.mouseY

		if var_284_5 then
			tooltip.mouseX, tooltip.mouseY = -9999, -9999
		end
	end

	if phase == "menu" then
		if upgradeTransition.active and upgradeTransition.state == "in" or var_0_16 and var_0_16.isStageSelectOpen and var_0_16.isStageSelectOpen() or isMenuSettingsOverlayBlocking() then
			var_0_36(true)
		else
			var_0_36(false)
		end

		love.graphics.clear(0, 0, 0, 1)
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)
		var_0_16.drawBackground(ui.virtual.W, ui.virtual.H)
		var_0_16.drawUI(ui)

		if upgradeTransition.active and upgradeTransition.state == "in" then
			love.graphics.stencil(function()
				local var_285_0 = upgradeTransition.t / upgradeTransition.dur * upgradeTransition.maxR

				love.graphics.circle("fill", upgradeTransition.cx, upgradeTransition.cy, var_285_0)
			end, "replace", 1)
			love.graphics.setStencilTest("greater", 0)
			var_0_17.draw(ui, var_0_16.getOriginiteAmount and var_0_16.getOriginiteAmount() or 0, true)
			love.graphics.setStencilTest()
		end

		drawMenuSettingsOverlay()
		var_0_16.drawExitConfirm(ui, loadedAssets)
		love.graphics.pop()

		if cursorImage and tooltip and tooltip.mouseX and tooltip.mouseY then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.setShader()

			local var_284_8, var_284_9 = love.mouse.getPosition()
			local var_284_10 = screenScaleX or screenScale
			local var_284_11 = screenScaleY or screenScale
			local var_284_12 = math.floor(var_284_8 - (cursorHotspotX or 0) * var_284_10 + 0.5)
			local var_284_13 = math.floor(var_284_9 - (cursorHotspotY or 0) * var_284_11 + 0.5)

			love.graphics.draw(cursorImage, var_284_12, var_284_13, 0, var_284_10, var_284_11)
		end

		var_0_29(true)
		var_0_33()
		var_0_30()

		if var_0_37() then
			var_0_15.draw(masterCanvas)
		else
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(masterCanvas, 0, 0)
		end

		drawDisplayModeTransitionOverlay()

		return
	end

	if phase == "upgrade" then
		var_0_36(true)
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)

		if upgradeTransition.active and upgradeTransition.state == "out" then
			var_0_16.drawBackground(ui.virtual.W, ui.virtual.H)
			var_0_16.drawUI(ui)
			love.graphics.stencil(function()
				local var_286_0 = (1 - upgradeTransition.t / upgradeTransition.dur) * upgradeTransition.maxR

				love.graphics.circle("fill", upgradeTransition.cx, upgradeTransition.cy, var_286_0)
			end, "replace", 1)
			love.graphics.setStencilTest("greater", 0)
			var_0_17.draw(ui, var_0_16.getOriginiteAmount and var_0_16.getOriginiteAmount() or 0, true)
			love.graphics.setStencilTest()
		else
			var_0_17.draw(ui, var_0_16.getOriginiteAmount and var_0_16.getOriginiteAmount() or 0, false)
		end

		love.graphics.pop()

		if cursorImage and tooltip and tooltip.mouseX and tooltip.mouseY then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.setShader()

			local var_284_14, var_284_15 = love.mouse.getPosition()
			local var_284_16 = math.floor(var_284_14 - (cursorHotspotX or 0) * screenScale + 0.5)
			local var_284_17 = math.floor(var_284_15 - (cursorHotspotY or 0) * screenScale + 0.5)

			love.graphics.draw(cursorImage, var_284_16, var_284_17, 0, screenScale, screenScale)
		end

		var_0_29(true)
		var_0_33(0)
		var_0_30()

		if var_0_37() then
			var_0_15.draw(masterCanvas)
		else
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(masterCanvas, 0, 0)
		end

		return
	end

	local var_284_18 = math.floor((ui and ui.slot and ui.slot.stickyOffsetY or 0) + 0.5)
	local var_284_19 = 0
	local var_284_20 = ui and ui.jackpotBannerState
	local var_284_21 = ui and ui.jackpotBanner

	if var_284_20 and var_284_20.active and var_284_21 then
		local var_284_22 = var_284_20.t or 0
		local var_284_23 = var_284_21.fadeInSec or 0.2
		local var_284_24 = var_284_21.holdSec or 1
		local var_284_25 = var_284_21.fadeOutSec or 0.5
		local var_284_26 = 1

		if var_284_22 < var_284_23 then
			var_284_26 = math.max(0, math.min(1, var_284_22 / math.max(0.0001, var_284_23)))
		elseif var_284_22 < var_284_23 + var_284_24 then
			var_284_26 = 1
		else
			local var_284_27 = (var_284_22 - var_284_23 - var_284_24) / math.max(0.0001, var_284_25)

			var_284_26 = math.max(0, math.min(1, 1 - var_284_27))
		end

		if var_284_26 > 0 then
			local var_284_28 = var_284_21.machineShake or {
				quantize = true,
				pixelStep = 1,
				ampPx = 2,
				freqHz = 2.8
			}
			local var_284_29 = math.max(0, tonumber(var_284_28.ampPx or 0) or 0)
			local var_284_30 = tonumber(var_284_28.freqHz or 0) or 0

			if var_284_29 > 0 and var_284_30 > 0 then
				local var_284_31 = math.sin(2 * math.pi * var_284_30 * var_284_22) * var_284_29 * var_284_26

				if var_284_28.quantize then
					local var_284_32 = math.max(1, math.floor((var_284_28.pixelStep or 1) + 0))

					var_284_31 = var_284_32 * math.floor(var_284_31 / var_284_32 + 0.5)
				end

				var_284_19 = math.floor(var_284_31 + 0.5)
			end
		end
	end

	local var_284_33 = math.floor((ui and ui.slot and ui.slot.ropeOffsetY or 0) + 0.5)
	local var_284_34 = math.floor((spinPressShake and spinPressShake.y or 0) + 0.5)

	local function var_284_35(arg_287_0, arg_287_1)
		if not arg_287_0 then
			return
		end

		local var_287_0 = arg_287_0:getWidth()
		local var_287_1 = arg_287_0:getHeight()

		if var_287_0 > 0 and var_287_1 > 0 then
			local var_287_2 = tonumber(arg_287_1) or 1

			love.graphics.setColor(var_287_2, var_287_2, var_287_2, 1)

			if var_287_0 == ui.virtual.W and var_287_1 == ui.virtual.H then
				love.graphics.draw(arg_287_0, 0, 0)
			else
				local var_287_3 = ui.virtual.W / var_287_0
				local var_287_4 = ui.virtual.H / var_287_1

				love.graphics.draw(arg_287_0, 0, 0, 0, var_287_3, var_287_4)
			end
		end
	end

	local function var_284_36(arg_288_0, arg_288_1, arg_288_2)
		if not arg_288_0 then
			return
		end

		local var_288_0 = arg_288_0:getWidth()
		local var_288_1 = arg_288_0:getHeight()

		if var_288_0 > 0 and var_288_1 > 0 then
			love.graphics.setColor(1, 1, 1, 1)

			if var_288_0 == ui.virtual.W and var_288_1 == ui.virtual.H then
				love.graphics.draw(arg_288_0, arg_288_1 or 0, arg_288_2 or 0)
			else
				local var_288_2 = ui.virtual.W / var_288_0
				local var_288_3 = ui.virtual.H / var_288_1

				love.graphics.draw(arg_288_0, arg_288_1 or 0, arg_288_2 or 0, 0, var_288_2, var_288_3)
			end
		end
	end

	local function var_284_37(arg_289_0, arg_289_1, arg_289_2, arg_289_3, arg_289_4)
		if not arg_289_0 then
			return
		end

		local var_289_0 = arg_289_0:getWidth()
		local var_289_1 = arg_289_0:getHeight()

		if var_289_0 > 0 and var_289_1 > 0 then
			love.graphics.setColor(1, 1, 1, 1)

			if var_289_0 == ui.virtual.W and var_289_1 == ui.virtual.H then
				love.graphics.draw(arg_289_0, arg_289_1 or 0, arg_289_2 or 0, 0, arg_289_3 or 1, arg_289_4 or 1)
			else
				local var_289_2 = ui.virtual.W / var_289_0
				local var_289_3 = ui.virtual.H / var_289_1

				love.graphics.draw(arg_289_0, arg_289_1 or 0, arg_289_2 or 0, 0, var_289_2 * (arg_289_3 or 1), var_289_3 * (arg_289_4 or 1))
			end
		end
	end

	local function var_284_38(arg_290_0, arg_290_1, arg_290_2, arg_290_3, arg_290_4, arg_290_5, arg_290_6)
		if not arg_290_0 then
			return
		end

		local var_290_0 = arg_290_0:getWidth()
		local var_290_1 = arg_290_0:getHeight()

		if var_290_0 <= 0 or var_290_1 <= 0 then
			return
		end

		local var_290_2 = (ui and ui.virtual and ui.virtual.W or var_290_0) / var_290_0
		local var_290_3 = (ui and ui.virtual and ui.virtual.H or var_290_1) / var_290_1
		local var_290_4 = arg_290_5 or 1
		local var_290_5 = arg_290_6 or 1
		local var_290_6 = (arg_290_1 or 0) + (1 - var_290_4) * (arg_290_3 or 0)
		local var_290_7 = (arg_290_2 or 0) + (1 - var_290_5) * (arg_290_4 or 0)

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_290_0, var_290_6, var_290_7, 0, var_290_2 * var_290_4, var_290_3 * var_290_5)
	end

	local var_284_39 = Tutorial and Tutorial.getMainBackgroundDimAlpha and Tutorial.getMainBackgroundDimAlpha()

	if var_284_39 == nil then
		var_284_39 = Tutorial and Tutorial.shouldDimMainBackground and Tutorial.shouldDimMainBackground() and 0.35 or 1
	end

	var_284_35(backgroundMainImage, var_284_39)
	love.graphics.setColor(1, 1, 1, 1)

	local var_284_40 = ui and ui.battle and ui.battle.absorb or ui and ui.absorb or {}
	local var_284_41 = battlefield and battlefield.absorbMode or false

	if var_284_41 and absorbGlowAnim.state == "off" then
		absorbGlowAnim.state = "fadein"
		absorbGlowAnim.fadeT = 0
		absorbGlowAnim.radiusT = 0
		absorbGlowAnim.fadeDur = var_284_40.glowFadeInSec or 0.6
		absorbGlowAnim.radiusDur = var_284_40.glowRadiusInSec or 0.5
		absorbGlowAnim.active = true
	elseif not var_284_41 and (absorbGlowAnim.state == "on" or absorbGlowAnim.state == "fadein") then
		absorbGlowAnim.state = "fadeout"
		absorbGlowAnim.fadeT = 0
		absorbGlowAnim.radiusT = 0
		absorbGlowAnim.fadeDur = var_284_40.glowFadeOutSec or 0.6
		absorbGlowAnim.radiusDur = var_284_40.glowRadiusOutSec or 0.5
	end

	if absorbGlowAnim.active and backgroundMainPaperImage and ui and ui.virtual then
		local var_284_42 = backgroundMainPaperImage:getWidth()
		local var_284_43 = backgroundMainPaperImage:getHeight()

		if var_284_42 > 0 and var_284_43 > 0 then
			local var_284_44 = var_284_42 == ui.virtual.W and 1 or ui.virtual.W / var_284_42
			local var_284_45 = var_284_43 == ui.virtual.H and 1 or ui.virtual.H / var_284_43
			local var_284_46 = ui and ui.battle and ui.battle.absorb or ui and ui.absorb or {}
			local var_284_47 = var_284_46.borderColor or {
				0.525,
				0.294,
				0.757,
				1
			}
			local var_284_48 = var_284_46.glowMaxRadiusPx or 20
			local var_284_49 = var_284_46.glowFalloff or 0.6
			local var_284_50 = var_284_46.glowAlpha or 0.9
			local var_284_51 = math.min(1, absorbGlowAnim.fadeT / absorbGlowAnim.fadeDur)
			local var_284_52 = 1

			if absorbGlowAnim.state == "fadein" then
				var_284_52 = var_284_51
			elseif absorbGlowAnim.state == "fadeout" then
				var_284_52 = 1 - var_284_51
			end

			local var_284_53 = math.min(1, absorbGlowAnim.radiusT / absorbGlowAnim.radiusDur)
			local var_284_54 = 1

			if absorbGlowAnim.state == "fadein" then
				var_284_54 = var_284_53
			elseif absorbGlowAnim.state == "fadeout" then
				var_284_54 = 1 - var_284_53
			end

			local var_284_55 = math.min(32, var_284_48 * var_284_54)

			if var_284_55 < 0.5 then
				var_284_55 = 0.5
			end

			love.graphics.setBlendMode("alpha", "alphamultiply")

			local var_284_56 = (var_284_46.innerTintAlpha or 0.25) * var_284_52

			love.graphics.setColor(var_284_47[1] or 1, var_284_47[2] or 1, var_284_47[3] or 1, var_284_56)
			love.graphics.draw(backgroundMainPaperImage, 0, 0, 0, var_284_44, var_284_45)
			love.graphics.setColor(1, 1, 1, 1)

			local var_284_57 = var_0_97.getImageGlowShader and var_0_97.getImageGlowShader()

			if var_284_57 and backgroundMainPaperGlowDistanceImage then
				love.graphics.setBlendMode("add", "alphamultiply")
				love.graphics.setShader(var_284_57)
				var_284_57:send("glowColor", {
					var_284_47[1] or 1,
					var_284_47[2] or 1,
					var_284_47[3] or 1,
					var_284_47[4] or 1
				})
				var_284_57:send("maxRadius", var_284_55)
				var_284_57:send("falloff", var_284_49)
				var_284_57:send("baseAlpha", var_284_50 * var_284_52)

				local var_284_58 = love.timer.getTime()
				local var_284_59 = var_284_46.glowPulseHz or 1.2
				local var_284_60 = 0.6 + 0.4 * (math.sin(2 * math.pi * var_284_59 * var_284_58) * 0.5 + 0.5)

				var_284_57:send("pulse", var_284_60)
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(backgroundMainPaperGlowDistanceImage, 0, 0)
				love.graphics.setShader()
				love.graphics.setBlendMode("alpha", "alphamultiply")
			end
		end
	end

	local var_284_61 = math.floor((coreBgAnim and coreBgAnim.y or 0) + 0.5)
	local var_284_62 = math.floor((coreNumAnim and coreNumAnim.x or 0) + 0.5)

	var_284_36(backgroundCoreNumberImage, var_284_62, var_284_61)

	local var_284_63 = ui and ui.coreCountDisplay

	if var_284_63 then
		local var_284_64 = 0
		local var_284_65, var_284_66 = pcall(require, "src.game.cores")

		if var_284_65 and var_284_66 and type(var_284_66.getActive) == "function" then
			local var_284_67 = var_284_66.getActive()

			if var_284_67 and type(var_284_67) == "table" then
				var_284_64 = #var_284_67
			end
		end

		local var_284_68 = var_284_63.max or 8
		local var_284_69 = tostring(var_284_64) .. "/" .. tostring(var_284_68)
		local var_284_70 = var_284_63.font or ui.coreMessage and ui.coreMessage.font or ui.infoOverlay and ui.infoOverlay.text and ui.infoOverlay.text.titleFont or ui.font

		if var_284_70 then
			love.graphics.setFont(var_284_70)
		end

		local var_284_71 = var_284_63.scale or 1
		local var_284_72 = var_284_63.color or {
			1,
			1,
			1,
			1
		}

		love.graphics.setColor(var_284_72)

		local var_284_73 = math.floor((var_284_63.x or 0) + (coreNumAnim and coreNumAnim.x or 0) + 0.5)
		local var_284_74 = math.floor((var_284_63.y or 0) + 0.5) + var_284_61

		if var_284_70 and var_284_63.align == "right" then
			local var_284_75 = var_284_70:getWidth(var_284_69) * (var_284_71 or 1)

			var_284_73 = var_284_73 - math.floor(var_284_75 + 0.5)
		end

		love.graphics.print(var_284_69, var_284_73, var_284_74, 0, var_284_71, var_284_71)
		love.graphics.setColor(1, 1, 1, 1)
	end

	var_284_36(backgroundCoreImage, 0, var_284_61)

	local var_284_76
	local var_284_77
	local var_284_78

	if var_0_60 and var_0_60.active and var_0_60.enabled ~= false then
		local var_284_79 = var_0_60.speedHz or 2.2
		local var_284_80 = (var_0_60.t or 0) * var_284_79
		local var_284_81 = ui and ui.slotBlink and ui.slotBlink.waveShape or "abs-sin"
		local var_284_82

		if var_284_81 == "sin" then
			var_284_82 = math.sin(2 * math.pi * var_284_80) * 0.5 + 0.5
		elseif var_284_81 == "pulse" then
			var_284_82 = math.sin(math.pi * var_284_80) > 0 and 1 or 0
		else
			var_284_82 = math.abs(math.sin(math.pi * var_284_80))
		end

		local var_284_83 = var_0_60.minAlpha or 0.2

		var_284_77 = var_284_83 + ((var_0_60.maxAlpha or 0.65) - var_284_83) * var_284_82

		local var_284_84 = var_0_60.color or {
			1,
			0.4196078431,
			0.368627451,
			1
		}

		var_284_78 = {
			var_284_84[1] or 1,
			var_284_84[2] or 1,
			var_284_84[3] or 1
		}
		var_284_76 = true
	end

	local var_284_85 = ui and ui._stoneActivated
	local var_284_86 = var_284_85 and var_284_85.stoneKey
	local var_284_87 = var_284_85 and var_284_85.active and (var_284_86 == "OriginStone" or var_284_86 == "MileStone" or var_284_86 == "BlessingStone") and var_0_97.getPaletteSwapShader()

	if var_284_87 then
		local var_284_88 = 0

		if var_284_85.phase == "fadein" then
			var_284_88 = math.min(1, (var_284_85.t or 0) / math.max(0.001, var_284_85.fadeInDur or 0.5))
		elseif var_284_85.phase == "fadeout" then
			var_284_88 = math.max(0, 1 - (var_284_85.t or 0) / math.max(0.001, var_284_85.fadeOutDur or 0.4))
		else
			var_284_88 = 1
		end

		if var_284_88 >= 1 then
			var_284_88 = 1 + math.sin(love.timer.getTime() * 1.5) * 0.04
		end

		love.graphics.setShader(var_284_87)
		var_284_87:send("u_mix", var_284_88)
		var_284_87:send("sourceColors", {
			0.3411764705882353,
			0.25098039215686274,
			0.30980392156862746,
			1
		}, {
			0.20392156862745098,
			0.15294117647058825,
			0.18823529411764706,
			1
		}, {
			0.4196078431372549,
			0.3137254901960784,
			0.3568627450980392,
			1
		}, {
			0.4627450980392157,
			0.34901960784313724,
			0.3803921568627451,
			1
		}, {
			0.24313725490196078,
			0.20784313725490197,
			0.27450980392156865,
			1
		})

		if var_284_86 == "MileStone" then
			var_284_87:send("targetColors", {
				0.16470588235294117,
				0.3764705882352941,
				0.2980392156862745,
				1
			}, {
				0.07450980392156863,
				0.1568627450980392,
				0.1450980392156863,
				1
			}, {
				0.21176470588235294,
				0.4980392156862745,
				0.38823529411764707,
				1
			}, {
				0.2627450980392157,
				0.611764705882353,
				0.47843137254901963,
				1
			}, {
				0.07450980392156863,
				0.1568627450980392,
				0.1450980392156863,
				1
			})
		elseif var_284_86 == "BlessingStone" then
			var_284_87:send("targetColors", {
				0.7450980392156863,
				0.4392156862745098,
				0,
				1
			}, {
				0.30980392156862746,
				0.1803921568627451,
				0,
				1
			}, {
				0.7647058823529411,
				0.5843137254901961,
				0,
				1
			}, {
				0.8235294117647058,
				0.6274509803921569,
				0,
				1
			}, {
				0.30980392156862746,
				0.1803921568627451,
				0,
				1
			})
		else
			var_284_87:send("targetColors", {
				0.3215686274509804,
				0.3215686274509804,
				0.3215686274509804,
				1
			}, {
				0.21176470588235294,
				0.21176470588235294,
				0.21176470588235294,
				1
			}, {
				0.4,
				0.4,
				0.4,
				1
			}, {
				0.5215686274509804,
				0.5215686274509804,
				0.5215686274509804,
				1
			}, {
				0.21176470588235294,
				0.27450980392156865,
				0.20784313725490197,
				1
			})
		end

		var_284_87:send("threshold", 0.01)
		love.graphics.setShader()
	end

	local var_284_89 = slotBgSquash and slotBgSquash.sx or 1
	local var_284_90 = slotBgSquash and slotBgSquash.sy or 1
	local var_284_91 = slotBgJitter and slotBgJitter.x or 0
	local var_284_92 = slotBgJitter and slotBgJitter.y or 0
	local var_284_93 = math.floor((spinShake.x or 0) + 0) + var_284_91
	local var_284_94 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_34 + var_284_18 + var_284_19 + 0.5) + var_284_92
	local var_284_95 = 0
	local var_284_96 = 0

	if lastLayout and lastLayout.slotPanel then
		local var_284_97 = ui and ui.slot and ui.slot.lineHitSquash or {}
		local var_284_98 = lastLayout.slotPanel

		var_284_95 = var_284_98.x + var_284_98.w * 0.5 + (var_284_97.anchorOffsetX or 0)
		var_284_96 = var_284_98.y + var_284_98.h * 0.5 + (var_284_97.anchorOffsetY or 0)
	else
		var_284_95 = (ui and ui.virtual and ui.virtual.W or 0) * 0.5
		var_284_96 = (ui and ui.virtual and ui.virtual.H or 0) * 0.5
	end

	if var_284_87 then
		love.graphics.setShader(var_284_87)
	end

	var_284_38(backgroundSlotImage, var_284_93, var_284_94, var_284_95, var_284_96, var_284_89, var_284_90)

	if var_284_87 then
		love.graphics.setShader()
	end

	if var_284_76 then
		local var_284_99 = var_0_97.getAlphaMaskTintShader()

		love.graphics.setShader(var_284_99)
		var_284_99:send("tintColor", {
			var_284_78 and var_284_78[1] or 1,
			var_284_78 and var_284_78[2] or 1,
			var_284_78 and var_284_78[3] or 1,
			var_284_77 or 0
		})
		love.graphics.setColor(1, 1, 1, 1)
		var_284_38(backgroundSlotImage, var_284_93, var_284_94, var_284_95, var_284_96, var_284_89, var_284_90)
		love.graphics.setShader()
	end

	if backgroundSlotColourFilterImage and var_0_61 and var_0_61.active then
		local var_284_100 = math.max(0.001, var_0_61.dur or 0.46)
		local var_284_101 = math.max(0, math.min(1, (var_0_61.t or 0) / var_284_100))
		local var_284_102 = var_0_64(var_284_101, var_0_61.grade)

		if var_284_102 > 0.001 then
			local var_284_103

			if var_0_61.grade == "prism" then
				local var_284_104 = var_0_97.getSlotPrismMaskShader()

				love.graphics.setShader(var_284_104)
				var_284_104:send("u_time", love.timer.getTime())
				var_284_104:send("u_alpha", var_284_102)
			else
				local var_284_105 = var_0_61.color or {
					1,
					1,
					1
				}
				local var_284_106 = var_0_97.getAlphaMaskTintShader()

				love.graphics.setShader(var_284_106)
				var_284_106:send("tintColor", {
					var_284_105[1] or 1,
					var_284_105[2] or 1,
					var_284_105[3] or 1,
					var_284_102
				})
			end

			love.graphics.setColor(1, 1, 1, 1)
			var_284_38(backgroundSlotColourFilterImage, var_284_93, var_284_94, var_284_95, var_284_96, var_284_89, var_284_90)
			love.graphics.setShader()
		end
	end

	if var_284_87 then
		love.graphics.setShader(var_284_87)
	end

	var_284_36(backgroundSlotRopeImage, math.floor((spinShake.x or 0) + 0) + (slotBgJitter and slotBgJitter.x or 0), math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + var_284_33 + 0.5) + (slotBgJitter and slotBgJitter.y or 0))
	var_284_36(backgroundMonsterBodyImage, math.floor((spinShake.x or 0) + (slotBgJitter and slotBgJitter.x or 0) + 0), math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + (slotBgJitter and slotBgJitter.y or 0) + 0.5))

	local var_284_107 = backgroundMonsterHeadImage
	local var_284_108 = backgroundMonsterHeadData

	if monsterHeadAnim and monsterHeadAnim.mode == "laugh" and backgroundMonsterHeadLaughImage then
		var_284_107 = backgroundMonsterHeadLaughImage
		var_284_108 = backgroundMonsterHeadLaughData or var_284_108
	end

	local var_284_109 = 0
	local var_284_110 = ui and ui.monster and ui.monster.headIdle or {
		ampPx = 1,
		freq = 0.5
	}
	local var_284_111 = math.max(0, var_284_110.ampPx or 1)
	local var_284_112 = var_284_110.freq or 0.5

	if var_284_111 > 0 and var_284_112 > 0 then
		if monsterHeadAnim and monsterHeadAnim.mode == "laugh" then
			local var_284_113 = monsterHeadAnim.ampPx or 2
			local var_284_114 = monsterHeadAnim.freq or 12

			var_284_109 = math.floor(math.sin(2 * math.pi * var_284_114 * (monsterHeadAnim.t or 0)) * var_284_113 + 0.5)
		else
			var_284_109 = math.floor(math.sin(2 * math.pi * var_284_112 * (var_0_69 or 0)) * var_284_111 + 0.5)
		end
	end

	local var_284_115 = math.floor((spinShake.x or 0) + (slotBgJitter and slotBgJitter.x or 0) + 0)
	local var_284_116 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + var_284_109 + (slotBgJitter and slotBgJitter.y or 0) + 0.5)

	var_284_36(backgroundMonsterHeadShadowImage, var_284_115, var_284_116)
	var_284_36(var_284_107, var_284_115, var_284_116)

	local var_284_117 = false
	local var_284_118
	local var_284_119 = tooltip and tooltip.mouseX
	local var_284_120 = tooltip and tooltip.mouseY

	if var_284_107 and var_284_108 and var_284_119 and var_284_120 then
		local var_284_121 = var_284_107:getWidth()
		local var_284_122 = var_284_107:getHeight()
		local var_284_123 = var_284_121 == ui.virtual.W and 1 or ui.virtual.W / var_284_121
		local var_284_124 = var_284_122 == ui.virtual.H and 1 or ui.virtual.H / var_284_122
		local var_284_125 = math.floor((var_284_119 - var_284_115) / var_284_123)
		local var_284_126 = math.floor((var_284_120 - var_284_116) / var_284_124)

		if var_284_125 >= 0 and var_284_126 >= 0 and var_284_125 < var_284_121 and var_284_126 < var_284_122 then
			local var_284_127, var_284_128, var_284_129, var_284_130 = var_284_108:getPixel(var_284_125, var_284_126)
			local var_284_131 = ui and ui.monster and ui.monster.headHover or {}
			local var_284_132 = var_284_131.alphaThreshold or 0.01

			if var_284_132 < var_284_130 then
				var_284_117 = true

				local var_284_133 = var_0_139(var_284_108, var_284_132)

				if var_284_133 then
					var_284_118 = {
						x = var_284_115 + var_284_133.x * var_284_123,
						y = var_284_116 + var_284_133.y * var_284_124,
						w = var_284_133.w * var_284_123,
						h = var_284_133.h * var_284_124
					}
				else
					var_284_118 = {
						x = var_284_115,
						y = var_284_116,
						w = var_284_121 * var_284_123,
						h = var_284_122 * var_284_124
					}
				end

				local var_284_134 = var_0_97.getImageOutlineShader and var_0_97.getImageOutlineShader()

				if var_284_134 then
					love.graphics.setShader(var_284_134)
					var_284_134:send("texelStep", {
						1 / math.max(1, var_284_121 * var_284_123),
						1 / math.max(1, var_284_122 * var_284_124)
					})
					var_284_134:send("outlineColor", var_284_131.outlineColor or {
						0.9294117647058824,
						0.9019607843137255,
						0.9529411764705882,
						1
					})
					var_284_134:send("threshold", var_284_132)
					var_284_134:send("radiusPx", var_284_131.outlineRadiusPx or 2)
					love.graphics.setColor(1, 1, 1, 1)
					var_284_36(var_284_107, var_284_115, var_284_116)

					if var_284_87 then
						love.graphics.setShader(var_284_87)
					else
						love.graphics.setShader()
					end
				end
			end
		end
	end

	if ui then
		ui._monsterHeadHovered = var_284_117

		if var_284_118 then
			ui._monsterHeadTooltipAnchor = var_284_118
		end
	end

	local var_284_135 = ui and ui.monster and ui.monster.eyesShine
	local var_284_136 = ui and ui.jackpotBannerState

	if var_284_135 and var_284_135.enabled ~= false and backgroundMonsterEyeShineImage ~= nil then
		if var_0_70.active then
			var_0_70.t = (var_0_70.t or 0) + 0
		end

		if var_0_70.active or var_284_136 and var_284_136.active then
			local var_284_137 = backgroundMonsterEyeShineImage:getWidth()
			local var_284_138 = backgroundMonsterEyeShineImage:getHeight()
			local var_284_139 = math.max(0, math.min((var_0_70.t or 0) / math.max(0.0001, var_0_70.dur or 0.35), 1))
			local var_284_140 = 1 - (1 - var_284_139) * (1 - var_284_139) * (1 - var_284_139)
			local var_284_141 = var_0_70.scaleFrom or 0.1
			local var_284_142 = var_284_141 + ((var_0_70.scaleTo or 1) - var_284_141) * var_284_140
			local var_284_143 = var_284_135 and var_284_135.pulse

			if var_284_139 >= 1 and var_284_143 then
				local var_284_144 = tonumber(var_284_143.freq or 0) or 0
				local var_284_145 = 0

				if var_284_144 > 0 then
					var_284_145 = math.sin((var_0_70.pulseT or 0) * (2 * math.pi) * var_284_144)
				end

				local var_284_146 = tonumber(var_284_143.minScale or 0)
				local var_284_147 = tonumber(var_284_143.maxScale or 0)

				if var_284_146 and var_284_147 and var_284_146 > 0 and var_284_147 > 0 then
					if var_284_147 < var_284_146 then
						var_284_146, var_284_147 = var_284_147, var_284_146
					end

					local var_284_148 = 0.5 * (var_284_145 + 1)

					var_284_142 = var_284_146 + (var_284_147 - var_284_146) * var_284_148
				else
					local var_284_149 = tonumber(var_284_143.amp or 0) or 0

					if var_284_149 > 0 and var_284_144 > 0 then
						var_284_142 = var_284_142 * (1 + var_284_149 * var_284_145)
					end
				end
			end

			local var_284_150 = 1
			local var_284_151 = var_0_70.fadeIn or 0

			if var_284_151 and var_284_151 > 0 then
				var_284_150 = math.max(0, math.min((var_0_70.t or 0) / var_284_151, 1))
			end

			love.graphics.setColor(1, 1, 1, var_284_150)

			local var_284_152 = var_284_135.left and var_284_135.left.x or 0
			local var_284_153 = var_284_135.left and var_284_135.left.y or 0

			love.graphics.draw(backgroundMonsterEyeShineImage, math.floor(var_284_115 + var_284_152 + 0.5), math.floor(var_284_116 + var_284_153 + 0.5), 0, var_284_142, var_284_142, var_284_137 * 0.5, var_284_138 * 0.5)

			local var_284_154 = var_284_135.right and var_284_135.right.x or 0
			local var_284_155 = var_284_135.right and var_284_135.right.y or 0

			love.graphics.draw(backgroundMonsterEyeShineImage, math.floor(var_284_115 + var_284_154 + 0.5), math.floor(var_284_116 + var_284_155 + 0.5), 0, var_284_142, var_284_142, var_284_137 * 0.5, var_284_138 * 0.5)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_284_156 = math.floor((spinShake.x or 0) + (slotBgJitter and slotBgJitter.x or 0) + 0)
	local var_284_157 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + (slotBgJitter and slotBgJitter.y or 0) + 0.5)

	var_284_36(backgroundSlotLeftImage, var_284_156, var_284_157)

	if var_284_76 then
		local var_284_158 = var_0_97.getAlphaMaskTintShader()

		love.graphics.setShader(var_284_158)
		var_284_158:send("tintColor", {
			var_284_78 and var_284_78[1] or 1,
			var_284_78 and var_284_78[2] or 1,
			var_284_78 and var_284_78[3] or 1,
			var_284_77 or 0
		})
		love.graphics.setColor(1, 1, 1, 1)
		var_284_36(backgroundSlotLeftImage, var_284_156, var_284_157)
		love.graphics.setShader()
	end

	local var_284_159 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_34 + var_284_18 + var_284_19 + (slotBgJitter and slotBgJitter.y or 0) + 0.5)

	if tooltip then
		tooltip:beginFrame()
	end

	local var_284_160 = var_0_142()

	lastLayout = var_284_160

	if ui then
		ui._deferSlotBookTooltip = nil
		ui._deferSymbolOddsTooltip = nil
	end

	ui.slot = ui.slot or {}

	local var_284_161 = ui and ui.slot and ui.slot.lineHitSquash or {}
	local var_284_162 = lastLayout and lastLayout.slotPanel
	local var_284_163
	local var_284_164

	if var_284_162 then
		var_284_163 = var_284_162.x + var_284_162.w * 0.5 + (var_284_161.anchorOffsetX or 0)
		var_284_164 = var_284_162.y + var_284_162.h * 0.5 + (var_284_161.anchorOffsetY or 0)
	else
		var_284_163 = (ui and ui.virtual and ui.virtual.W or 0) * 0.5
		var_284_164 = (ui and ui.virtual and ui.virtual.H or 0) * 0.5
	end

	local var_284_165 = slotBgSquash and slotBgSquash.sx or 1
	local var_284_166 = slotBgSquash and slotBgSquash.sy or 1
	local var_284_167 = slotBgJitter and slotBgJitter.x or 0
	local var_284_168 = slotBgJitter and slotBgJitter.y or 0

	ui.slot.gridFX = {
		active = (slotBgSquash and slotBgSquash.active or slotBgJitter and slotBgJitter.active or var_284_19 ~= 0) and true or false,
		sx = var_284_165,
		sy = var_284_166,
		jx = var_284_167,
		jy = var_284_168,
		ax = var_284_163,
		ay = var_284_164
	}

	local var_284_169 = var_284_160.grid and {
		x = var_284_160.grid.x,
		y = var_284_160.grid.y + var_284_19,
		w = var_284_160.grid.w,
		h = var_284_160.grid.h
	} or var_284_160.grid

	var_0_150(var_284_169 or var_284_160.grid)

	if var_284_76 and var_0_11 and var_0_11.drawGridBlinkOverlay then
		var_0_11.drawGridBlinkOverlay(ui, var_284_169 or var_284_160.grid, slot.grid, loadedAssets, slot.reels, var_284_77 or 0, var_284_78)
	end

	local var_284_170 = slotBgSquash and slotBgSquash.sx or 1
	local var_284_171 = slotBgSquash and slotBgSquash.sy or 1
	local var_284_172 = math.floor((spinShake.x or 0) + 0) + (slotBgJitter and slotBgJitter.x or 0)
	local var_284_173 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + 0.5) + (slotBgJitter and slotBgJitter.y or 0)
	local var_284_174 = 0
	local var_284_175 = 0

	if lastLayout and lastLayout.slotPanel then
		local var_284_176 = ui and ui.slot and ui.slot.lineHitSquash or {}
		local var_284_177 = lastLayout.slotPanel

		var_284_174 = var_284_177.x + var_284_177.w * 0.5 + (var_284_176.anchorOffsetX or 0)
		var_284_175 = var_284_177.y + var_284_177.h * 0.5 + (var_284_176.anchorOffsetY or 0)
	else
		var_284_174 = (ui and ui.virtual and ui.virtual.W or 0) * 0.5
		var_284_175 = (ui and ui.virtual and ui.virtual.H or 0) * 0.5
	end

	var_284_38(backgroundSlotShadowImage, var_284_172, var_284_173, var_284_174, var_284_175, var_284_170, var_284_171)

	local var_284_178 = slot and slot.spin and slot.spin.active or slot and slot.result and slot.result.winSeq and slot.result.winSeq.active or slot and slot.result and slot.result.highlightActive
	local var_284_179 = ui and ui.symbolOddsTooltipState

	if ui and var_284_179 and (var_284_179.fade or 0) > 0 and not var_284_178 then
		local var_284_180 = var_284_179.cursor
		local var_284_181 = var_284_179.fade or 0

		function ui._deferSymbolOddsTooltip()
			if var_284_180 then
				var_0_140(var_284_180.x, var_284_180.y, var_284_181)
			end
		end
	end

	if var_284_160.nudgeBtns and var_0_11 and var_0_11.drawNudgeButtons then
		local var_284_182 = slotBgJitter and slotBgJitter.x or 0
		local var_284_183 = slotBgJitter and slotBgJitter.y or 0
		local var_284_184 = math.floor((spinShake.x or 0) + var_284_182 + 0.5)
		local var_284_185 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (var_284_18 or 0) + (var_284_19 or 0) + var_284_183 + 0.5)

		if ui and ui.slot then
			ui.slot.lastNudgeExtraX = var_284_184
			ui.slot.lastNudgeExtraY = var_284_185
		end

		local var_284_186 = (ui and ui._nudgeEnabled) == true
		local var_284_187 = ui and ui._nudgePulseAlpha or 0
		local var_284_188 = ui and ui._nudgePulseCol or {
			1,
			1,
			1
		}
		local var_284_189 = ui and ui._nudgeDisabledDimMul or 0.72

		if var_284_87 then
			love.graphics.setShader(var_284_87)
		end

		var_0_11.drawNudgeButtons(ui, var_284_160.nudgeBtns, loadedAssets, nudgeBtnAnims, {
			dx = var_284_184,
			dy = var_284_185,
			blinkAlpha = var_284_77,
			blinkCol = var_284_78,
			nudgeEnabled = var_284_186,
			pulseAlpha = var_284_187,
			pulseCol = var_284_188,
			disabledDimMul = var_284_189,
			hoverIdx = ui and ui._nudgeHoverIdx or 0
		})

		if var_284_87 then
			love.graphics.setShader()
		end
	end

	local var_284_190 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick

	if var_284_190 and var_284_190.image and var_284_190.quads and var_284_190.quads[1] and lastLayout and lastLayout.slotPanel then
		local var_284_191 = lastLayout.slotPanel
		local var_284_192 = ui and ui.spinstick or {}
		local var_284_193 = var_284_191.x + var_284_191.w + (var_284_192.offsetX or 4)
		local var_284_194 = var_284_191.y + (var_284_192.offsetY or 0)
		local var_284_195 = slotBgJitter and slotBgJitter.x or 0
		local var_284_196 = slotBgJitter and slotBgJitter.y or 0
		local var_284_197 = math.floor(var_284_193 + (spinShake.x or 0) + var_284_195 + 0.5)
		local var_284_198 = math.floor(var_284_194 + (slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (ui and ui.slot and ui.slot.stickyOffsetY or 0) + var_284_19 + var_284_196 + 0.5)
		local var_284_199 = var_284_190.frames or #var_284_190.quads
		local var_284_200 = 1

		if spinStickAnim and spinStickAnim.playing and var_284_199 and var_284_199 > 1 then
			var_284_200 = math.max(1, math.min(var_284_199, spinStickAnim.frame or 1))
		end

		local var_284_201 = var_284_190.quads[var_284_200] or var_284_190.quads[1]

		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(var_284_190.image, var_284_201, var_284_197, var_284_198)

		local var_284_202 = ui and ui._coreSelect and ui._coreSelect.active
		local var_284_203 = battlefield and battlefield.imprintModal and battlefield.imprintModal.active
		local var_284_204 = Tutorial and Tutorial.getSpinStickOutlinePulse and Tutorial.getSpinStickOutlinePulse()

		if (tooltip and tooltip.mouseX and tooltip.mouseY or var_284_204) and (not battlefield or battlefield.mode ~= "battle") and not var_0_91() and (not ui or not ui.pauseOverlayState or not ui.pauseOverlayState.active) and not var_284_202 and not var_284_203 and (not battlefield or not battlefield.gameOver) then
			local var_284_205 = Tutorial and Tutorial.isSlotStep and Tutorial.isSlotStep()
			local var_284_206 = var_284_205 and ui and ui._tutorialCursorX or tooltip and tooltip.mouseX
			local var_284_207 = var_284_205 and ui and ui._tutorialCursorY or tooltip and tooltip.mouseY
			local var_284_208 = not var_284_205 or Tutorial and Tutorial.canSpin and Tutorial.canSpin()
			local var_284_209 = var_284_204 ~= nil

			if var_284_208 and (var_284_209 or var_0_120(var_284_206, var_284_207)) then
				local var_284_210 = var_0_97.getBtnHoverOutlineShader()

				love.graphics.setShader(var_284_210)

				local var_284_211 = var_284_190.iw
				local var_284_212 = var_284_190.ih

				var_284_210:send("texelStep", {
					1 / var_284_211,
					1 / var_284_212
				})
				var_284_210:send("outlineColor", {
					1,
					1,
					1,
					var_284_204 and var_284_204.alpha or 1
				})
				var_284_210:send("threshold", 0.01)
				var_284_210:send("radiusPx", var_284_204 and var_284_204.radius or 2)
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_284_190.image, var_284_201, var_284_197, var_284_198)
				love.graphics.setShader()
			end
		end

		if battlefield and battlefield.sandboxMode and (not battlefield or battlefield.mode ~= "battle") then
			local var_284_213 = var_284_190.frameW
			local var_284_214 = var_284_190.frameH
			local var_284_215 = ui and ui.spinstick or {}
			local var_284_216 = tonumber(var_284_215.hitExpandPx or 0) or 0
			local var_284_217 = tonumber(var_284_215.hitExpandX or var_284_216) or 0
			local var_284_218 = tonumber(var_284_215.hitExpandY or var_284_216) or 0
			local var_284_219 = tonumber(var_284_215.hitOffsetX or 0) or 0
			local var_284_220 = tonumber(var_284_215.hitOffsetY or 0) or 0
			local var_284_221 = var_284_197 + var_284_219
			local var_284_222 = var_284_198 + var_284_220
			local var_284_223 = var_284_213 + var_284_217 * 2
			local var_284_224 = var_284_214 + var_284_218 * 2

			love.graphics.setColor(0, 1, 0, 0.12)
			love.graphics.rectangle("fill", math.floor(var_284_221 - var_284_217 + 0.5), math.floor(var_284_222 - var_284_218 + 0.5), var_284_223, var_284_224)
			love.graphics.setColor(0.1, 0.95, 0.2, 0.9)
			love.graphics.rectangle("line", math.floor(var_284_221 - var_284_217 + 0.5), math.floor(var_284_222 - var_284_218 + 0.5), var_284_223, var_284_224)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local var_284_225 = var_0_123()

	if var_284_225 then
		local var_284_226 = 1
		local var_284_227 = ui and ui.pauseOverlayState

		if var_284_227 then
			local var_284_228 = ui and ui.pauseOverlay or {}
			local var_284_229 = var_284_228 and var_284_228.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
			local var_284_230 = var_284_228 and var_284_228.visibleY or 0
			local var_284_231 = math.floor((var_284_227.y or 0) + 0.5)
			local var_284_232 = math.max(1, math.abs(var_284_230 - var_284_229))

			var_284_226 = 1 - 0.5 * math.max(0, math.min(1, (var_284_231 - var_284_229) / var_284_232))
		end

		love.graphics.setColor(var_284_226, var_284_226, var_284_226, 1)

		local var_284_233 = ui and ui._stoneActivated and ui._stoneActivated.active

		if not var_284_233 then
			love.graphics.draw(var_284_225.shadow, var_284_225.dx, var_284_225.dy, 0, var_284_225.scale, var_284_225.scale)
		end

		love.graphics.draw(var_284_225.book, var_284_225.dx, var_284_225.dy, 0, var_284_225.scale, var_284_225.scale)

		local var_284_234 = ui and ui._stoneActivated

		if var_284_234 and var_284_234.active then
			local var_284_235 = var_0_97.getRainbowOutlineShader()

			love.graphics.setShader(var_284_235)

			local var_284_236 = var_284_225.bw
			local var_284_237 = var_284_225.bh
			local var_284_238 = var_284_225.scale
			local var_284_239 = var_284_225.scale

			var_284_235:send("texelStep", {
				1 / (math.max(1, var_284_236) * var_284_238),
				1 / (math.max(1, var_284_237) * var_284_239)
			})
			var_284_235:send("threshold", 0.01)

			local var_284_240 = ui and ui.slotBookIcon and ui.slotBookIcon.stoneOutlineRadiusPx or ui and ui.slotBookIcon and ui.slotBookIcon.outlineRadiusPx or 2.5

			var_284_235:send("radiusPx", var_284_240)
			var_284_235:send("u_time", love.timer.getTime())
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_284_225.book, var_284_225.dx, var_284_225.dy, 0, var_284_225.scale, var_284_225.scale)
			love.graphics.setShader()
		end

		if var_284_76 then
			local var_284_241 = var_0_97.getAlphaMaskTintShader()

			love.graphics.setShader(var_284_241)
			var_284_241:send("tintColor", {
				var_284_78 and var_284_78[1] or 1,
				var_284_78 and var_284_78[2] or 1,
				var_284_78 and var_284_78[3] or 1,
				var_284_77 or 0
			})
			love.graphics.setColor(var_284_226, var_284_226, var_284_226, 1)

			if not var_284_233 then
				love.graphics.draw(var_284_225.shadow, var_284_225.dx, var_284_225.dy, 0, var_284_225.scale, var_284_225.scale)
			end

			love.graphics.draw(var_284_225.book, var_284_225.dx, var_284_225.dy, 0, var_284_225.scale, var_284_225.scale)
			love.graphics.setShader()
		end

		local var_284_242 = battlefield and battlefield.imprintModal and battlefield.imprintModal.active

		if tooltip and tooltip.mouseX and tooltip.mouseY and (not ui or not ui.pauseOverlayState or not ui.pauseOverlayState.active) and not var_284_242 and (not battlefield or not battlefield.gameOver) then
			local var_284_243 = tooltip.mouseX
			local var_284_244 = tooltip.mouseY
			local var_284_245 = var_0_124(var_284_243, var_284_244)

			if var_284_245 then
				local var_284_246 = var_0_97.getImageOutlineShader()

				love.graphics.setShader(var_284_246)

				local var_284_247 = var_284_225.bw
				local var_284_248 = var_284_225.bh
				local var_284_249 = var_284_225.scale
				local var_284_250 = var_284_225.scale

				var_284_246:send("texelStep", {
					1 / (math.max(1, var_284_247) * var_284_249),
					1 / (math.max(1, var_284_248) * var_284_250)
				})
				var_284_246:send("outlineColor", {
					0.9294117647058824,
					0.9019607843137255,
					0.9529411764705882,
					1
				})
				var_284_246:send("threshold", 0.01)

				local var_284_251 = ui and ui.slotBookIcon and ui.slotBookIcon.outlineRadiusPx or 2.5

				var_284_246:send("radiusPx", var_284_251)
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_284_225.book, var_284_225.dx, var_284_225.dy, 0, var_284_225.scale, var_284_225.scale)
				love.graphics.setShader()
			end

			local var_284_252 = ui and ui.slotBookIconState and ui.slotBookIconState.fade or var_284_245 and 1 or 0

			if var_284_252 and var_284_252 > 0 then
				local function var_284_253()
					local var_292_0 = var_0_5 and var_0_5.unitGrades
					local var_292_1 = var_292_0 and var_292_0.order or {
						"normal",
						"advanced",
						"rare",
						"legendary",
						"prism"
					}
					local var_292_2 = var_292_0 and var_292_0.labels or {}
					local var_292_3 = var_292_0 and var_292_0.probabilities or {}
					local var_292_4 = var_292_0 and var_292_0.colors or {}
					local var_292_5 = ui and ui._stoneActivated

					if var_292_5 and var_292_5.active and var_292_5.probs then
						var_292_3 = var_292_5.probs
					end

					local var_292_6 = ui and ui.tooltip and ui.tooltip.font or ui.font

					if var_292_6 then
						love.graphics.setFont(var_292_6)
					end

					local function var_292_7(arg_293_0)
						local var_293_0 = rawget(_G, "measureChineseMixedTextWidth")

						if type(var_293_0) == "function" then
							local var_293_1, var_293_2 = pcall(var_293_0, arg_293_0, var_292_6)

							if var_293_1 and type(var_293_2) == "number" then
								return var_293_2
							end
						end

						return var_292_6 and var_292_6:getWidth(arg_293_0) or 0
					end

					local var_292_8 = ui and ui.tooltip and ui.tooltip.padPx or math.floor(6 * (ui.scale or 1) + 0.5)
					local var_292_9 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipRowGapPx or math.floor(4 * (ui.scale or 1) + 0.5)
					local var_292_10 = var_292_6 and var_292_6:getHeight() or 8
					local var_292_11 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipIconGapPx or math.floor(12 * (ui.scale or 1) + 0.5)
					local var_292_12 = loadedAssets and loadedAssets.ui and loadedAssets.ui.slotLock
					local var_292_13 = var_292_12 and (ui and ui.slotBookIcon and ui.slotBookIcon.tooltipLockScale or 1) or 1
					local var_292_14 = var_292_12 and math.floor(var_292_12:getWidth() * var_292_13 + 0.5) or math.max(9, math.floor(var_292_10 * 0.95 + 0.5))
					local var_292_15 = var_292_12 and math.floor(var_292_12:getHeight() * var_292_13 + 0.5) or math.max(9, math.floor(var_292_10 * 0.9 + 0.5))

					local function var_292_16(arg_294_0)
						arg_294_0 = tonumber(arg_294_0) or 0

						local var_294_0 = math.floor(arg_294_0 + 0.5)

						if math.abs(arg_294_0 - var_294_0) < 0.05 then
							return string.format("%d%%", var_294_0)
						end

						return string.format("%.1f%%", arg_294_0)
					end

					local var_292_17 = {}
					local var_292_18 = 0
					local var_292_19 = 0
					local var_292_20 = 0

					for iter_292_0, iter_292_1 in ipairs(var_292_1) do
						local var_292_21 = var_0_7.getGradeLabel(iter_292_1, var_292_2[iter_292_1] or iter_292_1, _G.currentGameLang or "ko")
						local var_292_22 = var_292_7(var_292_21)

						var_292_20 = math.max(var_292_20, var_292_22)
					end

					local var_292_23 = 0
					local var_292_24 = 0

					for iter_292_2, iter_292_3 in ipairs(var_292_1) do
						local var_292_25 = (var_292_3[iter_292_3] or 0) * 100
						local var_292_26 = var_292_16(var_292_25)
						local var_292_27 = var_292_25 <= 0 or var_292_26 == "0%" or var_292_26 == "0.0%"
						local var_292_28 = var_0_7.getGradeLabel(iter_292_3, var_292_2[iter_292_3] or iter_292_3, _G.currentGameLang or "ko")
						local var_292_29 = var_292_27 and var_292_14 or var_292_7(var_292_26)
						local var_292_30 = var_292_27 and math.max(var_292_10, var_292_15) or var_292_10
						local var_292_31 = var_292_20 + var_292_11 + var_292_29

						var_292_23 = math.max(var_292_23, var_292_31)
						var_292_24 = var_292_24 + var_292_30

						table.insert(var_292_17, {
							key = iter_292_3,
							label = var_292_28,
							color = var_292_4[iter_292_3] or {
								1,
								1,
								1,
								1
							},
							text = var_292_26,
							locked = var_292_27,
							rowH = var_292_30,
							rowW = var_292_31,
							tw = var_292_29
						})
					end

					local var_292_32 = var_292_24 + math.max(0, #var_292_17 - 1) * var_292_9
					local var_292_33 = {}
					local var_292_34 = {
						{
							iconKey = "W",
							key = "W"
						},
						{
							iconKey = "A",
							key = "A"
						},
						{
							iconKey = "S",
							key = "S"
						},
						{
							iconKey = "H",
							key = "H"
						},
						{
							iconKey = "M",
							key = "M"
						},
						{
							iconKey = "D",
							key = "D"
						},
						{
							iconKey = "joker_tooltip",
							key = "Joker"
						}
					}
					local var_292_35 = var_0_5 and var_0_5.slot and var_0_5.slot.symbolWeights or {}
					local var_292_36 = 0

					for iter_292_4, iter_292_5 in ipairs(var_292_34) do
						if iter_292_5.key ~= "Joker" then
							var_292_36 = var_292_36 + math.max(0, tonumber(var_292_35[iter_292_5.key] or 0) or 0)
						end
					end

					local var_292_37 = var_0_136()
					local var_292_38 = math.max(4, math.floor(5 * (ui.scale or 1) + 0.5))
					local var_292_39 = 0
					local var_292_40 = 0
					local var_292_41 = math.max(8, math.floor(var_292_10 * 0.92 + 0.5))

					for iter_292_6, iter_292_7 in ipairs(var_292_34) do
						local var_292_42 = 0

						if iter_292_7.key == "Joker" then
							var_292_42 = var_292_37 * 100
						elseif var_292_36 > 0 then
							var_292_42 = math.max(0, tonumber(var_292_35[iter_292_7.key] or 0) or 0) / var_292_36 * (1 - var_292_37) * 100
						else
							var_292_42 = 0.16666666666666666 * (1 - var_292_37) * 100
						end

						local var_292_43 = var_292_16(var_292_42)
						local var_292_44 = iter_292_7.key == "Joker" and loadedAssets and loadedAssets.tooltipStatIcons and loadedAssets.tooltipStatIcons.joker_tooltip or loadedAssets and loadedAssets.iconsSmall and loadedAssets.iconsSmall[iter_292_7.iconKey]
						local var_292_45 = var_292_41
						local var_292_46 = var_292_41
						local var_292_47 = 1

						if var_292_44 then
							local var_292_48, var_292_49 = var_292_44:getDimensions()

							var_292_47 = math.max(1, math.floor(var_292_41 / math.max(1, var_292_49) + 0.5))
							var_292_45, var_292_46 = var_292_48 * var_292_47, var_292_49 * var_292_47
						end

						local var_292_50 = var_292_7(var_292_43)
						local var_292_51 = math.max(var_292_10, var_292_46)
						local var_292_52 = var_292_45 + var_292_38 + var_292_50

						var_292_39 = math.max(var_292_39, var_292_52)
						var_292_40 = var_292_40 + var_292_51

						table.insert(var_292_33, {
							key = iter_292_7.key,
							icon = var_292_44,
							iconScale = var_292_47,
							iconW = var_292_45,
							iconH = var_292_46,
							text = var_292_43,
							rowH = var_292_51
						})
					end

					local var_292_53 = var_292_40 + math.max(0, #var_292_33 - 1) * var_292_9
					local var_292_54 = 1
					local var_292_55 = var_292_10
					local var_292_56 = var_292_9 + 1
					local var_292_57 = var_292_9 + 2
					local var_292_58 = var_292_55 + var_292_56 + 1 + var_292_57
					local var_292_59 = var_0_7.getText("rarity_title", _G.currentGameLang or "ko")
					local var_292_60 = math.max(var_292_23, var_292_7(var_292_59))
					local var_292_61 = var_292_60
					local var_292_62 = var_292_58 + var_292_32
					local var_292_63 = var_292_8 * 2 + var_292_61
					local var_292_64 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadLeftPx or math.floor(2 * (ui.scale or 1) + 0.5)
					local var_292_65 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadRightPx or math.floor(2 * (ui.scale or 1) + 0.5)
					local var_292_66 = var_292_63 + var_292_64 + var_292_65
					local var_292_67 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadTopPx or math.floor(2 * (ui.scale or 1) + 0.5)
					local var_292_68 = math.max(0, var_292_67 - 1)
					local var_292_69 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipPadBottomPx or math.floor(3 * (ui.scale or 1) + 0.5)
					local var_292_70 = var_292_8 * 2 + var_292_68 + var_292_69 + var_292_62
					local var_292_71 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipGapPx or math.floor(6 * (ui.scale or 1) + 0.5)
					local var_292_72 = var_284_225.dx
					local var_292_73 = var_284_225.dy
					local var_292_74 = var_284_225.bw * var_284_225.scale
					local var_292_75 = var_284_225.bh * var_284_225.scale
					local var_292_76 = var_292_72 + math.floor((var_292_74 - var_292_66) * 0.5 + 0.5)
					local var_292_77 = var_292_73 + var_292_75 + var_292_71
					local var_292_78 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipOffsetX or 0
					local var_292_79 = ui and ui.slotBookIcon and ui.slotBookIcon.tooltipOffsetY or 0
					local var_292_80 = var_292_76 + var_292_78
					local var_292_81 = var_292_77 + var_292_79

					if var_292_80 + var_292_66 > ui.virtual.W - 2 then
						var_292_80 = ui.virtual.W - 2 - var_292_66
					end

					if var_292_80 < 2 then
						var_292_80 = 2
					end

					if var_292_81 + var_292_70 > ui.virtual.H - 2 then
						var_292_81 = ui.virtual.H - 2 - var_292_70
					end

					if var_292_81 < 2 then
						var_292_81 = 2
					end

					local var_292_82 = math.floor(var_292_80 + 0.5)
					local var_292_83 = math.floor(var_292_81 + 0.5)
					local var_292_84 = {
						0,
						0,
						0,
						math.min(1, 0.85 * var_284_252)
					}

					if ui and ui.tooltip and ui.tooltip.drawPixelRoundedRect then
						ui.tooltip:drawPixelRoundedRect(var_292_82, var_292_83, var_292_66, var_292_70, var_292_84, nil)
					else
						love.graphics.setColor(var_292_84[1], var_292_84[2], var_292_84[3], var_292_84[4])

						local var_292_85 = ui and ui.tooltip and ui.tooltip.cornerRadiusPx or 6

						love.graphics.rectangle("fill", var_292_82, var_292_83, var_292_66, var_292_70, var_292_85, var_292_85)
					end

					local var_292_86 = math.floor(var_292_80 + var_292_8 + var_292_64 + 0.5)
					local var_292_87 = math.floor(var_292_81 + var_292_8 + var_292_68 + 0.5)

					local function var_292_88(arg_295_0, arg_295_1, arg_295_2)
						if var_292_12 then
							love.graphics.setColor(1, 1, 1, arg_295_2 or 1)
							love.graphics.draw(var_292_12, math.floor(arg_295_0 + 0.5), math.floor(arg_295_1 + 0.5), 0, var_292_13, var_292_13)

							return
						end

						local var_295_0 = var_292_14
						local var_295_1 = var_292_15
						local var_295_2 = math.max(7, math.floor(var_295_0 * 0.92 + 0.5))
						local var_295_3 = math.max(5, math.floor(var_295_1 * 0.5 + 0.5))
						local var_295_4 = math.floor(arg_295_0 + (var_295_0 - var_295_2) * 0.5 + 0.5)
						local var_295_5 = math.floor(arg_295_1 + var_295_1 - var_295_3 + 0.5)
						local var_295_6 = math.max(5, var_295_2 - 3)
						local var_295_7 = math.max(4, math.floor(var_295_1 * 0.48 + 0.5))
						local var_295_8 = math.floor(arg_295_0 + (var_295_0 - var_295_6) * 0.5 + 0.5)
						local var_295_9 = math.floor(arg_295_1 + 0.5)
						local var_295_10 = math.max(1, math.floor((ui.scale or 1) + 0.5))

						love.graphics.setColor(0.58, 0.58, 0.58, arg_295_2 or 1)
						love.graphics.rectangle("fill", var_295_8, var_295_9, var_295_6, var_295_10)
						love.graphics.rectangle("fill", var_295_8, var_295_9, var_295_10, var_295_7)
						love.graphics.rectangle("fill", var_295_8 + var_295_6 - var_295_10, var_295_9, var_295_10, var_295_7)
						love.graphics.setColor(0.48, 0.48, 0.48, arg_295_2 or 1)
						love.graphics.rectangle("fill", var_295_4, var_295_5, var_295_2, var_295_3)
						love.graphics.setColor(0.28, 0.28, 0.28, arg_295_2 or 1)
						love.graphics.rectangle("fill", var_295_4 + math.floor(var_295_2 * 0.5), var_295_5 + 2, var_295_10, math.max(1, var_295_3 - 3))
					end

					local var_292_89 = {
						0.83,
						0.78,
						0.64,
						var_284_252
					}

					love.graphics.setColor(var_292_89)

					local var_292_90 = var_292_86

					love.graphics.print(var_292_59, var_292_90, var_292_87, 0, var_292_54, var_292_54)

					local var_292_91 = math.floor(var_292_87 + var_292_55 + var_292_56 + 1 + 0.5)

					love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_284_252)
					love.graphics.rectangle("fill", var_292_90, var_292_91, var_292_60, 1)

					local var_292_92 = var_292_87 + var_292_58

					for iter_292_8, iter_292_9 in ipairs(var_292_17) do
						local var_292_93 = var_292_92
						local var_292_94 = iter_292_9.rowH or var_292_10
						local var_292_95 = var_292_90
						local var_292_96 = var_292_93 + math.floor((var_292_94 - var_292_10) * 0.5 + 0.5) - 1
						local var_292_97 = iter_292_9.color

						if iter_292_9.key == "prism" then
							local var_292_98 = (love.timer.getAtTime and love.timer.getAtTime() or love.timer.getTime() or 0) * 0.5 % 1
							local var_292_99 = 2 * math.pi
							local var_292_100 = 0.7 + 0.3 * math.cos(var_292_99 * (var_292_98 + 0))
							local var_292_101 = 0.7 + 0.3 * math.cos(var_292_99 * (var_292_98 + 0.33))
							local var_292_102 = 0.7 + 0.3 * math.cos(var_292_99 * (var_292_98 + 0.66))

							love.graphics.setColor(var_292_100, var_292_101, var_292_102, var_284_252)
						else
							love.graphics.setColor(var_292_97[1], var_292_97[2], var_292_97[3], var_284_252)
						end

						love.graphics.print(iter_292_9.label, var_292_95, var_292_96)

						local var_292_103 = var_292_95 + var_292_20 + var_292_11
						local var_292_104 = var_292_96

						if iter_292_9.locked then
							var_292_88(var_292_103, var_292_104 + math.floor((var_292_10 - var_292_15) * 0.5 + 0.5), var_284_252)
						else
							local var_292_105 = ui and ui._stoneActivated

							if var_292_105 and var_292_105.active and var_292_105.probs then
								love.graphics.setColor(0.6, 1, 0.6, var_284_252)
							else
								love.graphics.setColor(1, 1, 1, var_284_252)
							end

							love.graphics.print(iter_292_9.text, var_292_103, var_292_104)
						end

						var_292_92 = var_292_92 + var_292_94 + var_292_9
					end

					love.graphics.setColor(1, 1, 1, 1)
				end

				ui._deferSlotBookTooltip = var_284_253
			end
		end
	end

	local var_284_254 = ui.jackpotBannerState
	local var_284_255 = ui.jackpotBanner or {}

	if var_284_254 and var_284_254.active and lastLayout and lastLayout.slotPanel and ui.fontJackpot then
		local var_284_256 = lastLayout.slotPanel
		local var_284_257 = var_284_256.x + var_284_256.w * 0.5 + (var_284_255.offsetX or 0)
		local var_284_258 = var_284_256.y + var_284_256.h * 0.5 + (var_284_255.offsetY or 0) + var_284_19
		local var_284_259 = "JACKPOT"
		local var_284_260 = ui.fontJackpot
		local var_284_261 = ui.fontJackpotScale or 1
		local var_284_262 = var_284_254.t or 0
		local var_284_263 = var_284_261
		local var_284_264 = var_284_255.scalePulse or {}

		if var_284_264.enabled ~= false then
			local var_284_265 = tonumber(var_284_264.freqHz or 0) or 0
			local var_284_266 = tonumber(var_284_264.phase or 0) or 0

			if var_284_264.smooth then
				local var_284_267 = tonumber(var_284_264.amp or 0) or 0

				if var_284_265 > 0 and var_284_267 ~= 0 then
					local var_284_268 = 2 * math.pi * (var_284_265 * var_284_262 + var_284_266)
					local var_284_269 = 1 + var_284_267 * math.sin(var_284_268)
					local var_284_270 = tonumber(var_284_264.minMul or 0)

					if var_284_270 and var_284_270 > 0 then
						var_284_269 = math.max(var_284_270, var_284_269)
					end

					var_284_263 = var_284_261 * var_284_269
				end
			else
				local var_284_271 = math.max(0, math.floor((var_284_264.step or 0) + 0))
				local var_284_272 = math.max(0, math.min(1, tonumber(var_284_264.duty or 0.18) or 0.18))

				if var_284_271 > 0 and var_284_265 > 0 and var_284_272 > 0 then
					local var_284_273 = var_284_265 * var_284_262 + var_284_266

					if var_284_272 > var_284_273 - math.floor(var_284_273) then
						var_284_263 = math.max(1, math.floor(var_284_261 + var_284_271 + 0))
					end
				end
			end
		end

		love.graphics.setFont(var_284_260)

		local var_284_274 = var_284_255.fadeInSec or 0.2
		local var_284_275 = var_284_255.holdSec or 1
		local var_284_276 = var_284_255.fadeOutSec or 0.5
		local var_284_277 = 1

		if var_284_262 < var_284_274 then
			var_284_277 = math.max(0, math.min(1, var_284_262 / math.max(0.0001, var_284_274)))
		elseif var_284_262 < var_284_274 + var_284_275 then
			var_284_277 = 1
		else
			local var_284_278 = (var_284_262 - var_284_274 - var_284_275) / math.max(0.0001, var_284_276)

			var_284_277 = math.max(0, math.min(1, 1 - var_284_278))
		end

		local var_284_279 = var_284_260:getWidth(var_284_259) * var_284_263
		local var_284_280 = var_284_260:getHeight() * var_284_263
		local var_284_281 = math.floor(var_284_257 - var_284_279 * 0.5 + 0.5)
		local var_284_282 = math.floor(var_284_258 - var_284_280 * 0.5 + 0.5)
		local var_284_283 = var_284_255.shake or {}

		if var_284_283.enabled ~= false then
			local var_284_284 = math.max(0, tonumber(var_284_283.ampPx or 0) or 0)
			local var_284_285 = tonumber(var_284_283.freqHz or 0) or 0

			if var_284_284 > 0 and var_284_285 > 0 then
				local var_284_286 = math.sin(2 * math.pi * var_284_285 * var_284_262) * var_284_284

				if var_284_283.quantize then
					local var_284_287 = math.max(1, math.floor(var_284_283.pixelStep or 1))

					var_284_286 = var_284_287 * math.floor(var_284_286 / var_284_287 + 0.5)
				end

				var_284_282 = var_284_282 + math.floor(var_284_286 + 0.5)
			end
		end

		local var_284_288 = var_284_255.wave or {
			phaseShift = 0.45,
			ampPx = 3,
			freqHz = 4
		}
		local var_284_289 = math.max(0, var_284_288.ampPx or 0)
		local var_284_290 = var_284_288.freqHz or 0
		local var_284_291 = var_284_288.phaseShift or 0.45
		local var_284_292 = var_284_288.perCharDelaySec
		local var_284_293 = var_284_288.bounceDurSec or 0.28
		local var_284_294 = var_284_288.restDurSec or 0
		local var_284_295 = var_284_281

		for iter_284_0 = 1, #var_284_259 do
			local var_284_296 = var_284_259:sub(iter_284_0, iter_284_0)
			local var_284_297 = var_284_260:getWidth(var_284_296) * var_284_263
			local var_284_298 = 0

			if var_284_289 > 0 then
				if var_284_292 and var_284_292 > 0 then
					local var_284_299 = #var_284_259 * var_284_292 + var_284_293 + var_284_294
					local var_284_300 = (var_284_299 > 0 and var_284_262 % var_284_299 or var_284_262) - (iter_284_0 - 1) * var_284_292

					if var_284_300 >= 0 and var_284_300 < var_284_293 then
						local var_284_301 = var_284_300 / math.max(0.0001, var_284_293)
						local var_284_302 = math.sin(math.pi * var_284_301) * var_284_289

						var_284_298 = -math.floor(var_284_302 + 0.5)
					else
						var_284_298 = 0
					end
				elseif var_284_290 > 0 then
					local var_284_303 = 2 * math.pi * (var_284_290 * var_284_262 - (iter_284_0 - 1) * var_284_291)

					var_284_298 = -math.floor(math.sin(var_284_303) * var_284_289 + 0.5)
				end
			end

			local var_284_304 = math.floor(var_284_295 + 0.5)
			local var_284_305 = math.floor(var_284_282 + var_284_298 + 0.5)

			if var_284_255.shadow and var_284_255.shadow.color then
				local var_284_306 = var_284_255.shadow.color
				local var_284_307 = var_284_255.shadow.dx or 1
				local var_284_308 = var_284_255.shadow.dy or 1

				love.graphics.setColor(var_284_306[1], var_284_306[2], var_284_306[3], (var_284_306[4] or 1) * var_284_277)
				love.graphics.print(var_284_296, var_284_304 + var_284_307, var_284_305 + var_284_308, 0, var_284_263, var_284_263)
			end

			if var_284_255.outline and var_284_255.outline.color then
				local var_284_309 = var_284_255.outline.color
				local var_284_310 = math.max(1, math.floor((var_284_255.outline.radiusPx or 1) + 0.5))

				love.graphics.setColor(var_284_309[1], var_284_309[2], var_284_309[3], (var_284_309[4] or 1) * var_284_277)
				love.graphics.print(var_284_296, var_284_304 - var_284_310, var_284_305, 0, var_284_263, var_284_263)
				love.graphics.print(var_284_296, var_284_304 + var_284_310, var_284_305, 0, var_284_263, var_284_263)
				love.graphics.print(var_284_296, var_284_304, var_284_305 - var_284_310, 0, var_284_263, var_284_263)
				love.graphics.print(var_284_296, var_284_304, var_284_305 + var_284_310, 0, var_284_263, var_284_263)
				love.graphics.print(var_284_296, var_284_304 - var_284_310, var_284_305 - var_284_310, 0, var_284_263, var_284_263)
				love.graphics.print(var_284_296, var_284_304 - var_284_310, var_284_305 + var_284_310, 0, var_284_263, var_284_263)
				love.graphics.print(var_284_296, var_284_304 + var_284_310, var_284_305 - var_284_310, 0, var_284_263, var_284_263)
				love.graphics.print(var_284_296, var_284_304 + var_284_310, var_284_305 + var_284_310, 0, var_284_263, var_284_263)
			end

			local var_284_311 = var_284_255.color or {
				1,
				1,
				1,
				1
			}

			love.graphics.setColor(var_284_311[1], var_284_311[2], var_284_311[3], (var_284_311[4] or 1) * var_284_277)
			love.graphics.print(var_284_296, var_284_304, var_284_305, 0, var_284_263, var_284_263)

			local var_284_312 = var_284_255.foil or {}
			local var_284_313 = (var_284_312.alpha or 0) * var_284_277

			if var_284_313 and var_284_313 > 0 then
				local var_284_314 = var_0_97.getPrismFoilShader()

				love.graphics.setShader(var_284_314)

				local var_284_315 = (var_284_312.angleDeg or 20) * math.pi / 180
				local var_284_316 = math.cos(var_284_315)
				local var_284_317 = math.sin(var_284_315)

				var_284_314:send("u_time", love.timer.getTime() % 10000)
				var_284_314:send("u_alpha", var_284_313)
				var_284_314:send("u_dir", {
					var_284_316,
					var_284_317
				})
				var_284_314:send("u_cycle", var_284_312.cycleSec or 4)
				var_284_314:send("u_scale", var_284_312.scale or 2.5)

				local var_284_318 = var_284_312.grain or {}
				local var_284_319 = var_284_312.film or {}

				var_284_314:send("u_grainScale", var_284_318.scale or 3)
				var_284_314:send("u_grainAmp", var_284_318.amp or 0.2)
				var_284_314:send("u_filmFreq", var_284_319.freq or 2)
				var_284_314:send("u_filmAmp", var_284_319.amp or 0.25)
				var_284_314:send("u_specular", var_284_312.specular or 0.35)
				var_284_314:send("u_fresnelPow", var_284_312.fresnelPow or 2.5)
				var_284_314:send("u_colorGain", var_284_312.colorGain or 1)
				var_284_314:send("u_saturation", var_284_312.saturation or 1)
				var_284_314:send("u_mixBP", var_284_312.mixBP or 0.55)
				var_284_314:send("u_frameUV", {
					0,
					0,
					0,
					0
				})
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.print(var_284_296, var_284_304, var_284_305, 0, var_284_263, var_284_263)
				love.graphics.setShader()
			end

			var_284_295 = var_284_295 + var_284_297
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	if ui then
		ui._itemHoverDef = nil
	end

	if ui then
		ui._tutorialPurchasedItemRect = nil
	end

	local var_284_320 = ui and ui._itemPurchased
	local var_284_321 = backgroundItemPanelImage
	local var_284_322 = backgroundItemPanelShadowImage

	if var_284_321 then
		ui._itemPanelHover = ui._itemPanelHover or {}

		local var_284_323 = love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_284_324 = ui._itemPanelHoverLastT or var_284_323
		local var_284_325 = math.max(0, var_284_323 - var_284_324)

		ui._itemPanelHoverLastT = var_284_323

		local var_284_326 = ui and ui.itemInventory or {}
		local var_284_327 = var_284_326.panel or {}
		local var_284_328 = var_284_326.icon or {}
		local var_284_329 = var_284_327.scale or 1
		local var_284_330 = var_284_321:getWidth()
		local var_284_331 = var_284_321:getHeight()
		local var_284_332
		local var_284_333

		if var_284_327.anchor == "battlefield-bottom-left" and lastLayout and lastLayout.right then
			local var_284_334 = lastLayout.right

			var_284_332 = (var_284_334.x or 0) + (var_284_327.offsetX or 0)
			var_284_333 = (var_284_334.y or 0) + (var_284_334.h or 0) - var_284_331 * var_284_329 - (var_284_327.offsetY or 0)
		elseif var_284_327.anchor == "screen-bottom-left" and ui and ui.virtual then
			var_284_332 = (var_284_327.x or 0) + (var_284_327.offsetX or 0)
			var_284_333 = (ui.virtual.H or 0) - var_284_331 * var_284_329 - (var_284_327.offsetY or 0)
		else
			var_284_332 = var_284_327.x or 20
			var_284_333 = var_284_327.y or 90
		end

		local var_284_335 = math.floor(var_284_332 + 0.5)
		local var_284_336 = math.floor(var_284_333 + 0.5)
		local var_284_337 = var_284_327.gapX or 8
		local var_284_338 = math.floor(var_284_330 * var_284_329 + 0.5)
		local var_284_339 = math.floor(var_284_338 + var_284_337 + 0.5)
		local var_284_340 = backgroundItemPanelBrokenImage

		if var_284_340 then
			love.graphics.setColor(1, 1, 1, 1)

			local var_284_341 = math.floor((var_284_327.shadowOffsetX or 0) + 0.5)
			local var_284_342 = math.floor((var_284_327.shadowOffsetY or 0) + 0.5)

			for iter_284_1 = getItemInventoryCapacity(), 7 do
				local var_284_343 = var_284_335 + var_284_339 * iter_284_1

				love.graphics.draw(var_284_340, var_284_343, var_284_336, 0, var_284_329, var_284_329)

				if var_284_322 then
					love.graphics.draw(var_284_322, var_284_343 + var_284_341, var_284_336 + var_284_342, 0, var_284_329, var_284_329)
				end
			end
		end

		local var_284_344, var_284_345 = pcall(require, "src.game.item")
		local var_284_346 = math.min(var_284_320 and #var_284_320 or 0, getItemInventoryCapacity())
		local var_284_347
		local var_284_348

		for iter_284_2 = 1, var_284_346 do
			local var_284_349 = var_284_320[iter_284_2]

			if var_284_349 then
				local var_284_350 = iter_284_2 - 1
				local var_284_351 = (ui._itemPurchasedKeys or {})[iter_284_2] or var_284_349
				local var_284_352 = var_284_321
				local var_284_353 = backgroundItemPanelData

				if not var_284_327.cooldown then
					local var_284_354 = {}
				end

				local var_284_355 = false
				local var_284_356 = 0
				local var_284_357 = 0

				if ui and ui._deleteMode then
					local var_284_358 = love.timer.getTime()
					local var_284_359 = iter_284_2

					if type(var_284_351) == "string" and var_284_351:sub(1, 1) == "p" then
						var_284_359 = tonumber(var_284_351:sub(2)) or iter_284_2
					end

					local var_284_360 = 20 + var_284_359 * 13 % 15
					local var_284_361 = 0.8
					local var_284_362 = var_284_359 * 1234.567
					local var_284_363 = var_284_359 * 8765.432

					var_284_356 = math.sin(var_284_358 * var_284_360 + var_284_362) * var_284_361
					var_284_357 = math.cos(var_284_358 * (var_284_360 * 0.8) + var_284_363) * var_284_361
				end

				local var_284_364 = 0

				if ui and ui._itemShift then
					local var_284_365 = ui._itemShift

					if iter_284_2 >= var_284_365.index then
						local var_284_366 = love.timer.getTime() - var_284_365.startTime
						local var_284_367 = 1

						if var_284_366 < var_284_365.delay then
							var_284_364 = var_284_365.step * var_284_367
						elseif var_284_366 < var_284_365.delay + var_284_365.dur then
							local var_284_368 = (var_284_366 - var_284_365.delay) / var_284_365.dur
							local var_284_369 = 1 - (1 - var_284_368) * (1 - var_284_368) * (1 - var_284_368)

							var_284_364 = var_284_365.step * var_284_367 * (1 - var_284_369)
						else
							var_284_364 = 0
						end
					end
				end

				local var_284_370 = var_284_335 + var_284_339 * var_284_350 + var_284_356 + var_284_364
				local var_284_371 = var_284_336 + var_284_357
				local var_284_372 = false
				local var_284_373 = false
				local var_284_374 = tooltip and tooltip.mouseX or nil
				local var_284_375 = tooltip and tooltip.mouseY or nil
				local var_284_376 = false
				local var_284_377 = false

				if ui then
					if ui._coreSelect and ui._coreSelect.active then
						var_284_377 = true
					end

					if ui.pauseOverlayState and (ui.pauseOverlayState.settingsMode or ui.pauseOverlayState.active) then
						var_284_377 = true
					end

					if ui._infoOverlayUnit then
						var_284_377 = true
					end

					if battlefield and battlefield.gameOver then
						var_284_377 = true
					end
				end

				if var_284_374 and var_284_375 and var_284_353 and not var_284_377 then
					local var_284_378 = (var_284_374 - var_284_370) / var_284_329
					local var_284_379 = (var_284_375 - var_284_371) / var_284_329

					if var_284_378 >= 0 and var_284_379 >= 0 and var_284_378 < var_284_330 and var_284_379 < var_284_331 then
						local var_284_380 = math.floor(var_284_378)
						local var_284_381 = math.floor(var_284_379)
						local var_284_382, var_284_383, var_284_384, var_284_385 = var_284_353:getPixel(var_284_380, var_284_381)

						if (var_284_385 or 0) > 0.05 then
							var_284_376 = true
						end
					end
				end

				local var_284_386 = ui and ui._itemPanelCooldown
				local var_284_387 = var_284_386 and (var_284_386[var_284_351] or var_284_386[var_284_349])

				if var_284_387 and not var_284_387.done then
					var_284_373 = true
				end

				if var_284_376 and not var_284_347 then
					var_284_347 = var_284_349
					var_284_348 = var_284_351
				end

				local var_284_388 = var_284_376 and (var_284_348 == nil or var_284_348 == var_284_351)
				local var_284_389 = 0
				local var_284_390 = ui._itemPanelHover and ui._itemPanelHover[var_284_351] or ui._itemPanelHover and ui._itemPanelHover[var_284_349]

				if not var_284_390 then
					var_284_390 = {
						u = 0
					}
					ui._itemPanelHover = ui._itemPanelHover or {}
					ui._itemPanelHover[var_284_351] = var_284_390
				end

				if ui and ui.pauseOverlayState and ui.pauseOverlayState.active and ui.pauseOverlayState.settingsMode then
					var_284_390.u = 0
					var_284_388 = false
					var_284_389 = 0
				else
					local var_284_391 = var_284_327.hoverInRate or 12
					local var_284_392 = var_284_327.hoverOutRate or 10

					if not var_284_388 and var_284_373 then
						var_284_392 = var_284_392 * (var_284_327.hoverOutRateCooldownMul or 3.5)
					end

					local var_284_393 = (var_284_388 and var_284_391 or -var_284_392) * var_284_325

					var_284_390.u = var_284_390.u + var_284_393

					if var_284_390.u < 0 then
						var_284_390.u = 0
					elseif var_284_390.u > 1 then
						var_284_390.u = 1
					end

					local var_284_394 = var_284_327.hoverDownPx or 3
					local var_284_395 = var_284_327.hoverUpOnCooldownPx or var_284_394
					local var_284_396 = var_284_373 and var_284_395 or var_284_394

					var_284_389 = (var_284_373 and -1 or 1) * math.floor(var_284_396 * var_284_390.u + 0.5)

					if not var_284_388 and var_284_373 and math.abs(var_284_389) <= 1 then
						var_284_389 = 0
						var_284_390.u = 0
					end
				end

				local var_284_397 = 0
				local var_284_398 = ui and ui._itemPanelDrop
				local var_284_399 = var_284_398 and (var_284_398[var_284_351] or var_284_398[var_284_349])

				if var_284_399 then
					local var_284_400 = math.max(0.001, var_284_399.dur or var_284_327.dropDur or 0.35)
					local var_284_401 = math.min(1, (var_284_399.t or 0) / var_284_400)
					local var_284_402 = 1 - (1 - var_284_401) * (1 - var_284_401) * (1 - var_284_401)
					local var_284_403 = var_284_399.start

					if var_284_403 == nil then
						var_284_403 = var_284_327.dropStartOffsetPx ~= nil and var_284_327.dropStartOffsetPx or -(var_284_327.dropOffsetPx or 16)
					end

					local var_284_404 = var_284_399.finish

					if var_284_404 == nil then
						var_284_404 = var_284_327.dropEndOffsetPx ~= nil and var_284_327.dropEndOffsetPx or 0
					end

					var_284_397 = math.floor(var_284_403 + (var_284_404 - var_284_403) * var_284_402 + 0.5)
				end

				local var_284_405 = 0
				local var_284_406 = ui and ui._itemPanelClickPop
				local var_284_407 = var_284_406 and (var_284_406[var_284_351] or var_284_406[var_284_349])

				if var_284_407 and var_284_407.offsetY then
					var_284_405 = math.floor(var_284_407.offsetY + 0.5)
				end

				local var_284_408 = var_284_371 + var_284_397 + var_284_389 + var_284_405
				local var_284_409 = var_284_371 + var_284_397

				if var_284_349.key == "SturdyFist" then
					ui._tutorialPurchasedItemRect = {
						x = math.floor(var_284_370 + 0.5),
						y = math.floor(var_284_408 + 0.5),
						w = math.floor(var_284_330 * var_284_329 + 0.5),
						h = math.floor(var_284_331 * var_284_329 + 0.5)
					}
				end

				local var_284_410 = ui and ui._itemPanelShapeRipple and ui._itemPanelShapeRipple[var_284_351]

				if var_284_410 and var_284_410.t and var_284_410.dur then
					local var_284_411 = (var_284_410.t or 0) - (var_284_410.delay or 0)
					local var_284_412 = math.max(0, math.min(1, var_284_411 / math.max(0.0001, var_284_410.dur)))

					if var_284_411 >= 0 and var_284_412 < 1 then
						local var_284_413 = var_284_370 + var_284_330 * var_284_329 * 0.5
						local var_284_414 = var_284_408 + var_284_331 * var_284_329 * 0.5
						local var_284_415 = var_284_410.impact and 6 or 8
						local var_284_416 = math.floor(var_284_412 * var_284_415) / var_284_415
						local var_284_417 = var_0_97.getAlphaMaskTintShader()

						love.graphics.setShader(var_284_417)
						love.graphics.setBlendMode("add")

						if var_284_410.impact then
							local var_284_418 = 0.72 * (1 - var_284_412) * (1 - var_284_412)
							local var_284_419 = 0.9 * math.max(0, 1 - var_284_412 * 1.65)

							if var_284_418 > 0 then
								local var_284_420 = var_284_329 * (1 + var_284_416 * 0.42)

								var_284_417:send("tintColor", {
									0.48,
									0.34,
									0.58,
									var_284_418
								})
								love.graphics.draw(var_284_352, var_284_413, var_284_414, 0, var_284_420, var_284_420, var_284_330 * 0.5, var_284_331 * 0.5)
							end

							if var_284_419 > 0 then
								local var_284_421 = var_284_329 * (1 + var_284_416 * 0.2)

								var_284_417:send("tintColor", {
									0.94,
									0.84,
									1,
									var_284_419
								})
								love.graphics.draw(var_284_352, var_284_413, var_284_414, 0, var_284_421, var_284_421, var_284_330 * 0.5, var_284_331 * 0.5)
							end
						else
							local var_284_422 = 0.6 * (1 - var_284_412)

							if var_284_422 > 0 then
								local var_284_423 = var_284_329 * (1 + var_284_416 * 0.35)

								var_284_417:send("tintColor", {
									0.56,
									0.49,
									0.6,
									var_284_422
								})
								love.graphics.draw(var_284_352, var_284_413, var_284_414, 0, var_284_423, var_284_423, var_284_330 * 0.5, var_284_331 * 0.5)
							end
						end

						love.graphics.setBlendMode("alpha")
						love.graphics.setShader()
					elseif var_284_411 >= (var_284_410.dur or 0) then
						ui._itemPanelShapeRipple[var_284_351] = nil
					end
				end

				local var_284_424 = var_284_329
				local var_284_425 = ui and ui._itemPanelRipple and ui._itemPanelRipple[var_284_351]

				if var_284_425 and var_284_425.t and var_284_425.dur and not var_284_425.done then
					local var_284_426 = math.max(0, math.min(1, var_284_425.t / math.max(0.0001, var_284_425.dur)))
					local var_284_427 = 10.5
					local var_284_428 = 0.1
					local var_284_429 = 4.2
					local var_284_430 = var_284_428 * math.exp(-var_284_429 * var_284_426) * math.sin(var_284_427 * var_284_426)

					var_284_424 = var_284_329 * (1 + math.max(-0.06, var_284_430))
				end

				if false then
					if not itemPassiveGearIconImage then
						local var_284_431 = "src/sprites/icons/relics icon/item icons/00 gear.png"

						if love.filesystem.getInfo(var_284_431) then
							itemPassiveGearIconImage = love.graphics.newImage(var_284_431)

							itemPassiveGearIconImage:setFilter("nearest", "nearest")
						end
					end

					local var_284_432 = itemPassiveGearIconImage

					if var_284_432 then
						local var_284_433 = {}
						local var_284_434 = var_284_330 * var_284_329
						local var_284_435 = var_284_331 * var_284_329
						local var_284_436 = (var_284_433.scale or 1) * var_284_329
						local var_284_437 = var_284_432:getWidth()
						local var_284_438 = var_284_432:getHeight()
						local var_284_439 = var_284_437 * var_284_436
						local var_284_440 = var_284_438 * var_284_436
						local var_284_441 = var_284_433.anchor or "bottom-center"
						local var_284_442
						local var_284_443

						if var_284_441 == "bottom-center" then
							var_284_442 = var_284_370 + (var_284_434 - var_284_439) * 0.5
							var_284_443 = var_284_408 + var_284_435 - var_284_440
						elseif var_284_441 == "bottom-left" then
							var_284_442 = var_284_370
							var_284_443 = var_284_408 + var_284_435 - var_284_440
						elseif var_284_441 == "bottom-right" then
							var_284_442 = var_284_370 + var_284_434 - var_284_439
							var_284_443 = var_284_408 + var_284_435 - var_284_440
						elseif var_284_441 == "center" then
							var_284_442 = var_284_370 + (var_284_434 - var_284_439) * 0.5
							var_284_443 = var_284_408 + (var_284_435 - var_284_440) * 0.5
						elseif var_284_441 == "top-center" then
							var_284_442 = var_284_370 + (var_284_434 - var_284_439) * 0.5
							var_284_443 = var_284_408
						elseif var_284_441 == "top-left" then
							var_284_442 = var_284_370
							var_284_443 = var_284_408
						elseif var_284_441 == "top-right" then
							var_284_442 = var_284_370 + var_284_434 - var_284_439
							var_284_443 = var_284_408
						else
							var_284_442 = var_284_370 + (var_284_434 - var_284_439) * 0.5
							var_284_443 = var_284_408 + var_284_435 - var_284_440
						end

						local var_284_444 = var_284_442 + (var_284_433.offsetX or 0)
						local var_284_445 = var_284_443 + (var_284_433.offsetY or 0)
						local var_284_446 = var_284_433.alpha or 1

						love.graphics.setColor(1, 1, 1, var_284_446)
						love.graphics.draw(var_284_432, math.floor(var_284_444 + 0.5), math.floor(var_284_445 + 0.5), var_284_433.rotation or 0, var_284_436, var_284_436)
					end
				end

				love.graphics.setColor(1, 1, 1, 1)

				local var_284_447 = var_284_349 and var_284_349.id and type(var_284_349.id) == "string" and var_284_349.id:sub(1, 6) == "stone_"
				local var_284_448 = var_284_349 and var_284_349.rarity == "U" and not var_284_447

				if (var_284_447 or var_284_448) and _stonePassivePanelShader then
					love.graphics.setShader(_stonePassivePanelShader)
					_stonePassivePanelShader:send("cIn1", {
						0.3843137254901961,
						0.3333333333333333,
						0.396078431372549
					})
					_stonePassivePanelShader:send("cIn2", {
						0.2235294117647059,
						0.17254901960784313,
						0.22745098039215686
					})

					if var_284_448 then
						_stonePassivePanelShader:send("cOut1", {
							0.43137254901960786,
							0.5411764705882353,
							0.43529411764705883
						})
						_stonePassivePanelShader:send("cOut2", {
							0.24313725490196078,
							0.35294117647058826,
							0.24705882352941178
						})
					else
						_stonePassivePanelShader:send("cOut1", {
							0.333,
							0.396,
							0.333
						})
						_stonePassivePanelShader:send("cOut2", {
							0.173,
							0.227,
							0.173
						})
					end
				end

				love.graphics.draw(var_284_352, var_284_370, var_284_408, 0, var_284_424, var_284_424)

				if var_284_447 or var_284_448 then
					love.graphics.setShader()
				end

				local var_284_449 = ui and ui._itemPanelRipple and ui._itemPanelRipple[var_284_351]

				if var_284_449 and var_284_449.t and var_284_449.dur and not var_284_449.done then
					local var_284_450 = math.max(0, math.min(1, var_284_449.t / math.max(0.0001, var_284_449.dur)))
					local var_284_451 = var_284_370 + var_284_330 * var_284_329 * 0.5
					local var_284_452 = var_284_408 + var_284_331 * var_284_329 * 0.5
					local var_284_453 = math.min(var_284_330, var_284_331) * var_284_329 * 0.3
					local var_284_454 = 3

					love.graphics.setBlendMode("add")

					for iter_284_3 = 1, var_284_454 do
						local var_284_455 = var_284_450 + (iter_284_3 - 1) * 0.1

						if var_284_455 <= 1.2 then
							local var_284_456 = var_284_453 + var_284_455 * (var_284_330 * var_284_329 * 0.55)
							local var_284_457 = math.max(0, 1 - var_284_455)
							local var_284_458 = 1 + (1 - var_284_457) * 2

							love.graphics.setColor(0.85, 0.9, 1, 0.22 * var_284_457)

							for iter_284_4 = 0, var_284_458 do
								love.graphics.circle("line", math.floor(var_284_451 + 0.5), math.floor(var_284_452 + 0.5), var_284_456 + iter_284_4, 32)
							end
						end
					end

					love.graphics.setBlendMode("alpha")
					love.graphics.setColor(1, 1, 1, 1)
				end

				if var_284_344 and var_284_345 and type(var_284_345.getIcon) == "function" then
					local var_284_459 = var_284_345.getIcon(var_284_349)

					if var_284_459 then
						local var_284_460 = var_284_349 and var_284_349.iconScale or var_284_328.scale or 1
						local var_284_461 = math.floor((var_284_328.offsetX or 0) + 0.5)
						local var_284_462 = math.floor((var_284_328.offsetY or 0) + 0.5)
						local var_284_463 = var_284_370 + var_284_461
						local var_284_464 = var_284_408 + var_284_462

						if var_284_328.center then
							local var_284_465 = var_284_330 * var_284_329
							local var_284_466 = var_284_459:getWidth() * var_284_460

							var_284_463 = var_284_370 + math.floor((var_284_465 - var_284_466) / 2 + 0.5) + var_284_461
						end

						love.graphics.setColor(1, 1, 1, 1)
						love.graphics.draw(var_284_459, var_284_463, var_284_464, 0, var_284_460, var_284_460)
					end
				end

				local var_284_467 = false
				local var_284_468 = ui and ui._itemPanelCooldown
				local var_284_469 = var_284_468 and (var_284_468[var_284_351] or var_284_468[var_284_349])
				local var_284_470 = var_284_327.cooldown or {}
				local var_284_471 = battlefield and battlefield.mode == "battle"
				local var_284_472 = var_284_469 and not var_284_469.done
				local var_284_473 = var_284_349 and var_284_349.id and type(var_284_349.id) == "string" and var_284_349.id:sub(1, 6) == "stone_"

				if var_284_472 then
					local var_284_474 = math.max(0.0001, var_284_469 and var_284_469.dur or var_284_470.durSec or 0)
					local var_284_475 = 1 - math.max(0, math.min(1, (var_284_469 and var_284_469.t or 0) / var_284_474))
					local var_284_476 = var_284_470.baseAlpha or 0.4

					love.graphics.setColor(0, 0, 0, var_284_476)

					if (var_284_473 or var_284_448) and _stonePassivePanelShader then
						love.graphics.setShader(_stonePassivePanelShader)
					end

					love.graphics.draw(var_284_352, var_284_370, var_284_408, 0, var_284_329, var_284_329)

					if var_284_473 or var_284_448 then
						love.graphics.setShader()
					end

					love.graphics.setColor(1, 1, 1, 1)

					var_284_355 = true
					var_284_467 = true

					local var_284_477 = backgroundItemPanelCooltimeBBox
					local var_284_478 = backgroundItemPanelCooltimeRowSpans

					if var_284_477 and var_284_478 and #var_284_478 > 0 then
						local var_284_479 = #var_284_478
						local var_284_480 = math.min(var_284_479, math.floor(var_284_479 * var_284_475 + 0.5))

						if var_284_480 > 0 then
							local var_284_481 = var_284_470.progressColor or var_284_470.color or {
								0,
								0,
								0,
								1
							}
							local var_284_482 = var_284_470.progressAlpha or var_284_470.alpha or 0.45

							love.graphics.setColor(var_284_481[1] or 0, var_284_481[2] or 0, var_284_481[3] or 0, var_284_482)

							local var_284_483 = var_284_327 and var_284_327.cooltimeOffsetY or 0

							for iter_284_5 = 1, var_284_480 do
								local var_284_484 = var_284_478[iter_284_5]
								local var_284_485 = var_284_484.y
								local var_284_486 = var_284_408 + var_284_483 + var_284_485 * var_284_329

								for iter_284_6, iter_284_7 in ipairs(var_284_484.segments) do
									local var_284_487 = var_284_370 + iter_284_7.start * var_284_329
									local var_284_488 = (iter_284_7.finish - iter_284_7.start + 1) * var_284_329

									love.graphics.rectangle("fill", var_284_487, var_284_486, var_284_488, var_284_329)
								end
							end

							love.graphics.setColor(1, 1, 1, 1)
						end
					end
				elseif var_284_473 and var_284_471 then
					local var_284_489 = var_284_470.baseAlpha or 0.4

					love.graphics.setColor(0, 0, 0, var_284_489)

					if (var_284_473 or var_284_448) and _stonePassivePanelShader then
						love.graphics.setShader(_stonePassivePanelShader)
					end

					love.graphics.draw(var_284_352, var_284_370, var_284_408, 0, var_284_329, var_284_329)

					if var_284_473 or var_284_448 then
						love.graphics.setShader()
					end

					love.graphics.setColor(1, 1, 1, 1)

					var_284_355 = true
				end

				if var_284_322 then
					local var_284_490 = math.floor((var_284_327.shadowOffsetX or 0) + 0.5)
					local var_284_491 = math.floor((var_284_327.shadowOffsetY or 0) + 0.5)
					local var_284_492 = var_284_327.shadow or {}
					local var_284_493 = var_284_448 and backgroundItemPanelShadowUncommonImage or var_284_322

					if var_284_355 then
						local var_284_494

						if var_284_467 then
							var_284_494 = var_284_492.greyoutBrightnessCooldown or 0.5
						else
							var_284_494 = var_284_492.greyoutBrightness or 0.7
						end

						love.graphics.setColor(var_284_494, var_284_494, var_284_494, 1)
					else
						love.graphics.setColor(1, 1, 1, 1)
					end

					if var_284_447 and _stonePassivePanelShader then
						love.graphics.setShader(_stonePassivePanelShader)
					end

					love.graphics.draw(var_284_493, var_284_370 + var_284_490, var_284_409 + var_284_491, 0, var_284_329, var_284_329)

					if var_284_447 then
						love.graphics.setShader()
					end
				end
			end
		end

		ui._itemHoverDef = var_284_347

		if var_284_347 then
			ui._itemHoverSource = "inventory"
		end
	end

	local var_284_495 = ui and ui._itemDeleting

	if var_284_495 and #var_284_495 > 0 and var_284_321 then
		local var_284_496 = love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_284_497 = 1

		while var_284_497 <= #var_284_495 do
			local var_284_498 = var_284_495[var_284_497]

			if not var_284_498 then
				var_284_497 = var_284_497 + 1
			else
				if shadowDim then
					local var_284_499 = cdCfg and cdCfg.baseAlpha or 0.4
					local var_284_500 = math.max(0, 1 - var_284_499 * 1.2)

					love.graphics.setColor(var_284_500, var_284_500, var_284_500, 1)
				else
					love.graphics.setColor(1, 1, 1, 1)
				end

				local var_284_501 = var_284_496 - (var_284_498.lastT or var_284_496)

				var_284_498.lastT = var_284_496
				var_284_498.t = var_284_498.t + var_284_501

				if var_284_498.t >= var_284_498.dur then
					table.remove(var_284_495, var_284_497)
				else
					local var_284_502 = var_284_498.t / var_284_498.dur
					local var_284_503 = 40 * (1 - (1 - var_284_502) * (1 - var_284_502) * (1 - var_284_502))
					local var_284_504 = 1
					local var_284_505 = var_284_498.scale or 1
					local var_284_506 = var_284_498.x
					local var_284_507 = var_284_498.y - var_284_503

					love.graphics.setColor(1, 1, 1, var_284_504)
					love.graphics.draw(var_284_321, var_284_506, var_284_507, 0, var_284_505, var_284_505)

					local var_284_508, var_284_509 = pcall(require, "src.game.item")

					if var_284_508 and var_284_509 and type(var_284_509.getIcon) == "function" then
						local var_284_510 = var_284_509.getIcon(var_284_498.def)

						if var_284_510 then
							local var_284_511 = ui and ui.itemInventory and ui.itemInventory.icon or {}
							local var_284_512 = var_284_498.def and var_284_498.def.iconScale or var_284_511.scale or 1
							local var_284_513 = math.floor((var_284_511.offsetX or 0) + 0.5)
							local var_284_514 = math.floor((var_284_511.offsetY or 0) + 0.5)
							local var_284_515 = var_284_506 + var_284_513
							local var_284_516 = var_284_507 + var_284_514
							local var_284_517 = var_284_321:getWidth()

							if var_284_511.center then
								local var_284_518 = var_284_517 * var_284_505
								local var_284_519 = var_284_510:getWidth() * var_284_512

								var_284_515 = var_284_506 + math.floor((var_284_518 - var_284_519) / 2 + 0.5) + var_284_513
							end

							love.graphics.setColor(1, 1, 1, var_284_504)
							love.graphics.draw(var_284_510, var_284_515, var_284_516, 0, var_284_512, var_284_512)
						end
					end

					var_284_497 = var_284_497 + 1
				end
			end
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	if var_0_11 and var_0_11.drawBattlefieldSectionIcons and lastLayout and lastLayout.right then
		var_0_11.drawBattlefieldSectionIcons(ui, lastLayout.right, loadedAssets)
	end

	var_284_35(backgroundMainPaperFrontImage)

	if ui and (ui._shopMode or ui._stoneMode) then
		if ui._stoneMode then
			ui._stoneT = (ui._stoneT or 0) + love.timer.getDelta()

			if backgroundStoneQuestBackgroundImage then
				var_284_35(backgroundStoneQuestBackgroundImage)
			end
		else
			ui._stoneT = nil

			if backgroundShopBackgroundImage then
				var_284_35(backgroundShopBackgroundImage)
			end

			if backgroundShopInvenBackgroundImage then
				if ui and ui._deleteMode then
					love.graphics.setColor(0.5, 0.5, 0.5, 1)
				else
					love.graphics.setColor(1, 1, 1, 1)
				end

				local var_284_520 = backgroundShopInvenBackgroundImage
				local var_284_521 = var_284_520:getWidth()
				local var_284_522 = var_284_520:getHeight()

				if var_284_521 > 0 and var_284_522 > 0 then
					if var_284_521 == ui.virtual.W and var_284_522 == ui.virtual.H then
						love.graphics.draw(var_284_520, 0, 0)
					else
						local var_284_523 = ui.virtual.W / var_284_521
						local var_284_524 = ui.virtual.H / var_284_522

						love.graphics.draw(var_284_520, 0, 0, 0, var_284_523, var_284_524)
					end
				end

				love.graphics.setColor(1, 1, 1, 1)
			end

			if var_0_11 and var_0_11.drawShopKeeper then
				var_0_11.drawShopKeeper(ui)
			end

			if backgroundShopInfoBackgroundImage then
				var_284_35(backgroundShopInfoBackgroundImage)
			end
		end
	end

	if ui then
		ui._classSelectHighResOverlay = battlefield and battlefield.classSelect and true or nil
	end

	var_0_157(var_284_160.right)

	if ui and ui._deferSlotBookTooltip then
		ui._deferSlotBookTooltip()

		ui._deferSlotBookTooltip = nil
	end

	var_0_128()

	local var_284_525 = battlefield and battlefield.classSelect
	local var_284_526 = ui and ui._stoneMode

	if (var_284_525 or var_284_526) and loadedAssets and loadedAssets.ui and loadedAssets.ui.classTitle and (not ui or not ui._classSelectHighResOverlay) then
		local var_284_527 = ui and ui.classTitleFade or {
			dur = 0.15,
			startAlpha = 0
		}
		local var_284_528 = var_284_525 and battlefield.classSelect.t or var_284_526 and (ui._stoneT or 0.5) or 0
		local var_284_529 = var_284_527.dur or 0.5

		if var_284_529 <= 0 then
			var_284_529 = 0.0001
		end

		local var_284_530 = math.min(1, var_284_528 / var_284_529)

		local function var_284_531(arg_296_0)
			return 1 - (1 - arg_296_0) * (1 - arg_296_0) * (1 - arg_296_0)
		end

		if var_284_527.ease == "outCubic" then
			local var_284_532 = var_284_531(var_284_530)
		end

		local var_284_533 = 1
		local var_284_534 = loadedAssets.ui.classTitle

		if var_284_534 then
			local var_284_535 = var_284_534:getWidth()
			local var_284_536 = var_284_534:getHeight()

			if var_284_535 > 0 and var_284_536 > 0 then
				love.graphics.setColor(1, 1, 1, var_284_533)

				if ui and ui.virtual and var_284_535 == ui.virtual.W and var_284_536 == ui.virtual.H then
					love.graphics.draw(var_284_534, 0, 0)
				else
					local var_284_537 = (ui and ui.virtual and ui.virtual.W or var_284_535) / var_284_535
					local var_284_538 = (ui and ui.virtual and ui.virtual.H or var_284_536) / var_284_536

					love.graphics.draw(var_284_534, 0, 0, 0, var_284_537, var_284_538)
				end

				love.graphics.setColor(1, 1, 1, 1)
			end
		end

		local var_284_539 = loadedAssets.ui.classTitleData
		local var_284_540 = loadedAssets.ui.classTitleBounds
		local var_284_541 = ui

		if var_284_540 and var_284_541 and var_284_541.virtual then
			local var_284_542 = var_284_541.virtual.W
			local var_284_543 = var_284_541.virtual.H
			local var_284_544 = var_284_540.iw
			local var_284_545 = var_284_540.ih

			if var_284_544 > 0 and var_284_545 > 0 then
				local var_284_546 = var_284_542 / var_284_544
				local var_284_547 = var_284_543 / var_284_545
				local var_284_548 = math.floor(var_284_540.x * var_284_546 + 0.5)
				local var_284_549 = math.floor(var_284_540.y * var_284_547 + 0.5)
				local var_284_550 = math.floor(var_284_540.w * var_284_546 + 0.5)
				local var_284_551 = math.floor(var_284_540.h * var_284_547 + 0.5)
				local var_284_552 = var_284_541.classTitleText or {}
				local var_284_553 = math.max(0, var_284_552.insetPx or 0)
				local var_284_554 = var_284_548 + var_284_553
				local var_284_555 = var_284_549 + var_284_553
				local var_284_556 = math.max(1, var_284_550 - var_284_553 * 2)
				local var_284_557 = math.max(1, var_284_551 - var_284_553 * 2)
				local var_284_558 = var_284_541.fontTitle or love.graphics.getFont()

				if var_284_558 then
					love.graphics.setFont(var_284_558)
				end

				local var_284_559 = var_284_526 and var_0_7.getText("stone_panel_title", _G.currentGameLang or "ko") or var_0_7.getText("class_promotion", _G.currentGameLang or "ko")
				local var_284_560 = var_284_558 and var_284_558:getWidth(var_284_559) or 0
				local var_284_561 = var_284_558 and var_284_558:getHeight() or 0
				local var_284_562 = math.max(0, var_284_552.maxWidthPadPx or 0)
				local var_284_563 = 1

				if var_284_552.scaleOverride and var_284_552.scaleOverride > 0 then
					var_284_563 = var_284_552.scaleOverride
				elseif var_284_560 > var_284_556 - var_284_562 then
					var_284_563 = (var_284_556 - var_284_562) / math.max(1, var_284_560)
				end

				local var_284_564

				if var_284_552.align == "left" then
					var_284_564 = var_284_554 + var_284_562 / 2
				elseif var_284_552.align == "right" then
					var_284_564 = var_284_554 + var_284_556 - var_284_562 / 2 - var_284_560 * var_284_563
				else
					var_284_564 = var_284_554 + math.floor((var_284_556 - var_284_560 * var_284_563) / 2 + 0.5)
				end

				local var_284_565 = var_284_555 + math.floor((var_284_557 - var_284_561 * var_284_563) / 2 + 0.5)
				local var_284_566 = var_284_564 + math.floor((var_284_552.offsetX or 0) + 0.5)
				local var_284_567 = var_284_565 + math.floor((var_284_552.offsetY or 0) + (var_284_552.baselineShiftPx or 0) + 0.5)
				local var_284_568 = var_284_552.outline or {}
				local var_284_569 = var_284_568.color or {
					0,
					0,
					0,
					1
				}
				local var_284_570 = math.max(1, var_284_568.thicknessPx or 1)
				local var_284_571 = math.max(1, var_284_568.passes or 4)
				local var_284_572 = var_284_568.diagonal or false

				love.graphics.setColor(var_284_569[1], var_284_569[2], var_284_569[3], (var_284_569[4] or 1) * var_284_533)

				local function var_284_573(arg_297_0, arg_297_1)
					love.graphics.print(var_284_559, var_284_566 + arg_297_0, var_284_567 + arg_297_1, 0, var_284_563, var_284_563)
				end

				var_284_573(-var_284_570, 0)
				var_284_573(var_284_570, 0)
				var_284_573(0, -var_284_570)
				var_284_573(0, var_284_570)

				if var_284_572 then
					var_284_573(-var_284_570, -var_284_570)
					var_284_573(var_284_570, var_284_570)
					var_284_573(-var_284_570, var_284_570)
					var_284_573(var_284_570, -var_284_570)
				end

				local var_284_574 = var_284_552.color or {
					1,
					1,
					1,
					1
				}

				love.graphics.setColor(var_284_574[1], var_284_574[2], var_284_574[3], (var_284_574[4] or 1) * var_284_533)
				love.graphics.print(var_284_559, var_284_566, var_284_567, 0, var_284_563, var_284_563)
				love.graphics.setColor(1, 1, 1, 1)
			end
		end

		if ui and ui.classSelectHoverPreview and tooltip and tooltip.drawCustom then
			local var_284_575 = ui.classSelectHoverPreview
			local var_284_576 = battlefield.assets
			local var_284_577 = var_284_576

			if var_284_576 then
				local var_284_578 = {}

				for iter_284_8, iter_284_9 in pairs(var_284_576) do
					var_284_578[iter_284_8] = iter_284_9
				end

				local var_284_579 = var_284_576.tooltipStatIcons or {}
				local var_284_580 = var_284_576.tooltipStatIconsClassCard
				local var_284_581 = {}

				for iter_284_10, iter_284_11 in pairs(var_284_579) do
					var_284_581[iter_284_10] = iter_284_11
				end

				if var_284_580 then
					for iter_284_12, iter_284_13 in pairs(var_284_580) do
						var_284_581[iter_284_12] = iter_284_13
					end
				end

				var_284_578.tooltipStatIcons = var_284_581
				var_284_577 = var_284_578
			end

			tooltip:drawCustom(var_284_575.title, var_284_575.iconSym, var_284_575.items, var_284_575.anchorX, var_284_575.anchorY, {
				assets = var_284_577
			})

			ui.classSelectHoverPreview = nil
		end
	end

	local var_284_582 = ui and ui._coreSelect and ui._coreSelect.active
	local var_284_583 = false
	local var_284_584 = battlefield and battlefield.imprintModal and battlefield.imprintModal.active

	if tooltip and tooltip.mouseX and tooltip.mouseY and battlefield and battlefield.mode ~= "battle" and not battlefield.classSelect and (not ui or not ui._tutorialBlockNonSlot or not not ui._tutorialAllowFiremanHover) and (not ui or not ui.pauseOverlayState or not ui.pauseOverlayState.active) and (not ui or not ui._shopMode and not ui._stoneMode) and (not ui or not ui._stoneActivated or not ui._stoneActivated.active) and not var_284_582 and not var_284_584 then
		local var_284_585 = tooltip.mouseX
		local var_284_586 = tooltip.mouseY

		var_284_583 = var_0_82(var_284_585, var_284_586) or var_0_83(var_284_585, var_284_586)
	end

	if var_284_583 and loadedAssets and loadedAssets.ui and loadedAssets.ui.firemanBackground then
		local var_284_587 = var_0_80()

		if var_284_587 then
			local var_284_588 = math.max(1, math.floor(ui and ui.fireman and ui.fireman.scaleStep or 2))
			local var_284_589 = math.max(0, math.floor(ui and ui.fireman and ui.fireman.shadowExtraPx or 8))
			local var_284_590 = math.floor(var_284_587.x - var_284_588 + 0.5)
			local var_284_591 = math.floor(var_284_587.y - var_284_588 + 0.5)
			local var_284_592 = var_284_587.w + var_284_588 * 2
			local var_284_593 = var_284_587.h + var_284_588 * 2 + var_284_589

			love.graphics.setScissor(var_284_590, var_284_591, var_284_592, var_284_593)

			local var_284_594 = ui and ui.firemanShake and ui.firemanShake.jx or 0
			local var_284_595 = 1
			local var_284_596 = lastLayout and lastLayout.right

			if var_284_596 and loadedAssets and loadedAssets.units then
				local var_284_597 = 32
				local var_284_598 = math.floor(10 * ui.scale)
				local var_284_599 = var_284_596.w - var_284_598 * 2
				local var_284_600 = var_284_596.h - var_284_598 * 2 - math.floor(22 * ui.scale)
				local var_284_601

				if ui.battle and ui.battle.allySize32 and ui.battle.allySize32 > 0 then
					var_284_601 = math.max(var_284_597, math.floor(ui.battle.allySize32 / var_284_597) * var_284_597)
				else
					local var_284_602 = math.floor(math.min(var_284_599, var_284_600) * 0.12 * (ui.battle and ui.battle.unitScale or 1))

					var_284_601 = var_284_597 * math.max(1, math.ceil(var_284_602 / var_284_597))
				end

				local var_284_603 = loadedAssets.units.MiniSwordMan or loadedAssets.units.MiniArcherMan or loadedAssets.units.MiniSpearMan
				local var_284_604 = var_284_603 and var_284_603.frameW or var_284_597

				var_284_595 = math.max(1, var_284_601 / math.max(1, var_284_604))
			end

			local var_284_605 = var_0_97.getBtnHoverOutlineShader()

			love.graphics.setShader(var_284_605)

			local var_284_606 = loadedAssets.ui.firemanBackground
			local var_284_607 = var_284_606:getWidth()
			local var_284_608 = var_284_606:getHeight()
			local var_284_609 = 1
			local var_284_610 = 1

			var_284_605:send("texelStep", {
				1 / (var_284_607 * var_284_609),
				1 / (var_284_608 * var_284_610)
			})
			var_284_605:send("outlineColor", {
				0.9294117647058824,
				0.9019607843137255,
				0.9529411764705882,
				1
			})
			var_284_605:send("threshold", 0.01)
			var_284_605:send("radiusPx", var_284_595)
			love.graphics.setColor(1, 1, 1, 1)

			local var_284_611 = false

			if battlefield and ui and ui.maxUnit and (battlefield.getOwnedUnitCount and battlefield:getOwnedUnitCount() or 0) > 5 + (var_0_17.getMaxUnitBonus and var_0_17.getMaxUnitBonus() or 0) then
				var_284_611 = true
			end

			if var_284_611 then
				local var_284_612
				local var_284_613

				if ui._firemanBounds then
					var_284_612, var_284_613 = math.floor(ui._firemanBounds.cx), math.floor(ui._firemanBounds.cy)
				else
					var_284_612, var_284_613 = math.floor(var_284_607 * 0.5), math.floor(var_284_608 * 0.5)
				end

				local var_284_614 = love.timer.getTime()
				local var_284_615 = 1
				local var_284_616 = 0.06
				local var_284_617 = 10
				local var_284_618 = var_284_615 + math.sin(var_284_614 * var_284_617) * var_284_616

				love.graphics.draw(var_284_606, math.floor(var_284_594 + var_284_612), math.floor(var_284_613), 0, var_284_618, var_284_618, var_284_612, var_284_613)
			else
				love.graphics.draw(var_284_606, var_284_594, 0, 0, var_284_609, var_284_610)
			end

			love.graphics.setShader()
			love.graphics.setScissor()
		end
	end

	var_0_36(true)
	love.graphics.clear(0, 0, 0, 1)
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.push()
	love.graphics.translate(screenOffsetX, screenOffsetY)
	love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)

	if startShake and startShake.active then
		local var_284_619 = math.max(0, math.min(1, (startShake.t or 0) / (startShake.dur or 0.2)))
		local var_284_620 = (startShake.amp or 1.5) * (1 - var_284_619)
		local var_284_621 = math.floor((love.math.random() - 0.5) * 2 * var_284_620)
		local var_284_622 = math.floor((love.math.random() - 0.5) * 2 * var_284_620)

		love.graphics.translate(var_284_621, var_284_622)
	end

	if screenLineShake and screenLineShake.active then
		love.graphics.translate(screenLineShake.x or 0, screenLineShake.y or 0)
	end

	local var_284_623 = var_0_28
	local var_284_624 = screenScaleX or screenScale or 1
	local var_284_625 = screenScaleY or screenScale or 1
	local var_284_626 = ui and ui.virtual and ui.virtual.W or canvas:getWidth()
	local var_284_627 = ui and ui.virtual and ui.virtual.H or canvas:getHeight()
	local var_284_628 = var_284_623 / math.max(var_284_624, 0.0001)
	local var_284_629 = var_284_623 / math.max(var_284_625, 0.0001)

	love.graphics.draw(canvas, -var_284_628, -var_284_629, 0, (var_284_626 + var_284_628 * 2) / var_284_626, (var_284_627 + var_284_629 * 2) / var_284_627)

	if _G.Render2 and _G.Render2.drawDpsTitleOverlay then
		_G.Render2.drawDpsTitleOverlay(ui)
	end

	local var_284_630 = lastLayout and lastLayout.right

	if battlefield and battlefield.classSelect and var_0_11 and var_0_11.drawClassSelectionModal and ui and var_284_630 and loadedAssets then
		local var_284_631 = require("src.ui.shadow")
		local var_284_632 = ui and ui.battle and ui.battle.shadow or {}
		local var_284_633 = {}
		local var_284_634 = {}

		local function var_284_635(arg_298_0)
			if not arg_298_0 then
				return 16
			end

			local var_298_0 = tostring(arg_298_0.image)
			local var_298_1 = var_284_634[var_298_0]

			if var_298_1 then
				return var_298_1
			end

			local var_298_2

			if arg_298_0.bounds and arg_298_0.bounds.idle and arg_298_0.bounds.idle[1] and arg_298_0.bounds.idle[1].w then
				var_298_2 = arg_298_0.bounds.idle[1].w
			else
				for iter_298_0, iter_298_1 in pairs(arg_298_0.bounds or {}) do
					if type(iter_298_1) == "table" and iter_298_1[1] and iter_298_1[1].w then
						var_298_2 = iter_298_1[1].w

						break
					end
				end
			end

			var_298_2 = var_298_2 or arg_298_0.frameW or 16
			var_284_634[var_298_0] = var_298_2

			return var_298_2
		end

		local function var_284_636(arg_299_0)
			if not arg_299_0 then
				return 11, 7
			end

			local var_299_0 = tostring(arg_299_0.image)
			local var_299_1 = var_284_633[var_299_0]

			if var_299_1 then
				return var_299_1.w, var_299_1.h
			end

			local var_299_2 = var_284_635(arg_299_0)
			local var_299_3 = var_284_632.widthMul or 0.75
			local var_299_4 = math.floor(var_299_2 * var_299_3 + 0.5)

			if var_284_632.minWidthPx then
				var_299_4 = math.max(var_299_4, var_284_632.minWidthPx)
			end

			if var_284_632.maxWidthPx and var_284_632.maxWidthPx > 0 then
				var_299_4 = math.min(var_299_4, var_284_632.maxWidthPx)
			end

			if var_299_4 % 2 == 0 then
				if not var_284_632.maxWidthPx or var_299_4 + 1 <= var_284_632.maxWidthPx then
					var_299_4 = var_299_4 + 1
				else
					var_299_4 = math.max(1, var_299_4 - 1)
				end
			end

			if var_299_4 < 1 then
				var_299_4 = 1
			end

			local var_299_5 = math.floor(var_299_4 * (var_284_632.heightRatio or 0.4) + 0.5)

			if var_284_632.minHeightPx then
				var_299_5 = math.max(var_299_5, var_284_632.minHeightPx)
			end

			if var_284_632.maxHeightPx and var_284_632.maxHeightPx > 0 then
				var_299_5 = math.min(var_299_5, var_284_632.maxHeightPx)
			end

			if var_299_5 % 2 == 0 then
				if not var_284_632.maxHeightPx or var_299_5 + 1 <= var_284_632.maxHeightPx then
					var_299_5 = var_299_5 + 1
				else
					var_299_5 = math.max(1, var_299_5 - 1)
				end
			end

			if var_299_5 < 1 then
				var_299_5 = 1
			end

			local var_299_6 = {
				w = var_299_4,
				h = var_299_5
			}

			var_284_633[var_299_0] = var_299_6

			return var_299_4, var_299_5
		end

		local function var_284_637(arg_300_0, arg_300_1, arg_300_2, arg_300_3, arg_300_4, arg_300_5)
			if not arg_300_0 or not arg_300_1 or arg_300_1 <= 0 then
				return
			end

			local var_300_0 = arg_300_4 and (var_284_632.dyingStrength or var_284_632.strength or 0.9) or var_284_632.strength or 0.9

			if arg_300_5 then
				var_300_0 = var_300_0 * arg_300_5
			end

			local var_300_1 = var_284_632.yOffsetPx or 0
			local var_300_2, var_300_3 = var_284_636(arg_300_0)

			var_284_631.draw(arg_300_2, arg_300_3 + var_300_1, var_300_2, var_300_3, arg_300_1, var_300_0)
		end

		love.graphics.push("all")
		var_0_11.drawClassSelectionModal(ui, var_284_630, battlefield, loadedAssets, var_284_630.x, var_284_630.y, var_284_630.w, var_284_630.h, var_284_637)

		if ui._deferCoreScrollShadow and ui._deferCoreScrollShadow.image then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(ui._deferCoreScrollShadow.image, 0, 0)

			ui._deferCoreScrollShadow = nil
		end

		if ui._deferCoreScroll and ui._deferCoreScroll.image then
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(ui._deferCoreScroll.image, 0, 0)

			ui._deferCoreScroll = nil
		end

		love.graphics.pop()
	end

	local var_284_638 = scrollIntroAnim
	local var_284_639 = loadedAssets and loadedAssets.ui and loadedAssets.ui.scrollIntroAnim

	if var_284_638 and var_284_639 and (var_284_638.slideState == "slide" or var_284_638.slideState == "done") then
		local var_284_640 = var_284_639.image
		local var_284_641 = var_284_639.frameW
		local var_284_642 = var_284_639.frameH
		local var_284_643 = var_284_639.quads
		local var_284_644 = (var_284_638.frame or 0) + 1

		if var_284_644 < 1 then
			var_284_644 = 1
		end

		local var_284_645 = var_284_639.frameCount or 1

		if var_284_645 < var_284_644 then
			var_284_644 = var_284_645
		end

		local var_284_646 = var_284_643 and var_284_643[var_284_644]

		if var_284_640 and var_284_646 then
			local var_284_647 = ui and ui.scrollIntroAnim
			local var_284_648 = var_284_647 and var_284_647.scale or 1
			local var_284_649 = ui and ui.virtual and ui.virtual.W or 640
			local var_284_650 = ui and ui.virtual and ui.virtual.H or 360
			local var_284_651 = math.floor((var_284_649 - var_284_641 * var_284_648) * 0.5 + 0.5)
			local var_284_652 = math.floor((var_284_650 - var_284_642 * var_284_648) * 0.5 + 0.5)
			local var_284_653 = var_284_647 and var_284_647.x ~= nil and var_284_647.x or var_284_651
			local var_284_654 = (var_284_647 and var_284_647.y ~= nil and var_284_647.y or var_284_652) + (var_284_638.slideY or 0)

			love.graphics.setShader()
			love.graphics.setColor(1, 1, 1, 1)

			local var_284_655 = 1
			local var_284_656 = 1
			local var_284_657 = var_284_638.tickImpactT or -1
			local var_284_658 = var_284_638.squashT or -1
			local var_284_659
			local var_284_660
			local var_284_661
			local var_284_662
			local var_284_663
			local var_284_664

			if var_284_657 >= 0 and (var_284_658 < 0 or var_284_658 < var_284_657) then
				var_284_659 = love.timer.getTime() - var_284_657
				var_284_663 = 0.1
				var_284_660 = 28
				var_284_661 = 0
				var_284_664 = 0.15
			else
				var_284_659 = love.timer.getTime() - var_284_658
				var_284_663 = 0.85
				var_284_660 = 3.5
				var_284_661 = 1.4
				var_284_664 = -0.15
			end

			if (var_284_658 >= 0 or var_284_657 >= 0) and var_284_659 < var_284_663 then
				if var_284_661 == 0 then
					var_284_655 = 1 + var_284_664 * math.exp(-var_284_660 * var_284_659)
					var_284_656 = 1 / math.max(var_284_655, 0.1)
				else
					var_284_656 = 1 + var_284_664 * math.exp(-var_284_660 * var_284_659) * math.cos(var_284_661 * 2 * math.pi * var_284_659)
					var_284_655 = 1 / math.max(var_284_656, 0.1)
				end
			end

			local var_284_665 = var_284_653 + var_284_641 * var_284_648 * 0.5
			local var_284_666 = var_284_654 + var_284_642 * var_284_648 * 0.5
			local var_284_667, var_284_668 = var_0_131()

			love.graphics.push()
			love.graphics.translate(var_284_665, var_284_666)
			love.graphics.scale(var_284_655 * var_284_667, var_284_656 * var_284_667)
			love.graphics.setColor(1, 1, 1, var_284_668)
			love.graphics.draw(var_284_640, var_284_646, -var_284_641 * var_284_648 * 0.5, -var_284_642 * var_284_648 * 0.5, 0, var_284_648, var_284_648)
			love.graphics.pop()
			love.graphics.setColor(1, 1, 1, 1)

			local var_284_669 = var_284_647 and var_284_647.label
			local var_284_670 = tostring(var_284_638.spinCountdown or 0)

			if var_284_669 and var_284_670 ~= "" and var_284_638.done then
				local var_284_671 = loadedAssets and loadedAssets.ui and loadedAssets.ui.m6x11
				local var_284_672 = var_284_638.spinCountdown or 0
				local var_284_673 = var_284_672 <= 0
				local var_284_674 = var_284_669.scale or 2
				local var_284_675 = var_284_672 <= (var_284_669.urgentThreshold or 2) and var_284_672 > 0
				local var_284_676 = false
				local var_284_677 = 0

				if var_284_675 then
					local var_284_678 = var_284_669.pulseFreq or 1.6
					local var_284_679 = var_284_669.pulseAmp or 0.22
					local var_284_680 = var_284_669.pulseCount or 3
					local var_284_681 = var_284_638.pulseStartT or -1

					if var_284_681 >= 0 then
						local var_284_682 = love.timer.getTime() - var_284_681

						if var_284_682 < var_284_680 / var_284_678 then
							local var_284_683 = 0.5 - 0.5 * math.cos(var_284_682 * var_284_678 * 2 * math.pi)

							var_284_674 = var_284_674 * (1 + var_284_679 * var_284_683)
							var_284_676 = true
							var_284_677 = var_284_683
						end
					end
				end

				local var_284_684 = var_284_641 * var_284_648
				local var_284_685 = var_284_642 * var_284_648
				local var_284_686 = math.floor(var_284_653 + var_284_684 * 0.5 + (var_284_669.offsetX or 0) + 0.5)
				local var_284_687 = math.floor(var_284_654 + var_284_685 * 0.5 + (var_284_669.offsetY or 0) + 0.5)
				local var_284_688 = var_284_669.color or {
					0.4235294118,
					0.2980392157,
					0.168627451,
					1
				}
				local var_284_689 = var_284_669.urgentColor or var_284_688
				local var_284_690

				if var_284_676 then
					local var_284_691 = var_284_677

					var_284_690 = {
						var_284_688[1] + (var_284_689[1] - var_284_688[1]) * var_284_691,
						var_284_688[2] + (var_284_689[2] - var_284_688[2]) * var_284_691,
						var_284_688[3] + (var_284_689[3] - var_284_688[3]) * var_284_691,
						(var_284_688[4] or 1) + ((var_284_689[4] or 1) - (var_284_688[4] or 1)) * var_284_691
					}
				else
					var_284_690 = var_284_688
				end

				if var_284_673 then
					var_284_690 = var_284_669.completeColor or var_284_689
				end

				love.graphics.setColor(var_284_690[1], var_284_690[2], var_284_690[3], (var_284_690[4] or 1) * var_284_668)

				if var_284_673 then
					local var_284_692 = {
						{
							-4,
							0
						},
						{
							-3,
							1
						},
						{
							-2,
							2
						},
						{
							-1,
							3
						},
						{
							0,
							2
						},
						{
							1,
							1
						},
						{
							2,
							0
						},
						{
							3,
							-1
						},
						{
							4,
							-2
						}
					}

					love.graphics.push()
					love.graphics.translate(var_284_686 + (var_284_669.completeOffsetX or -1), var_284_687)
					love.graphics.scale(var_284_674 * var_284_655 * var_284_667, var_284_674 * var_284_656 * var_284_667)

					for iter_284_14 = 1, #var_284_692 do
						local var_284_693 = var_284_692[iter_284_14]

						love.graphics.rectangle("fill", var_284_693[1], var_284_693[2], 2, 2)
					end

					love.graphics.pop()
				elseif var_284_671 then
					local var_284_694 = var_284_669.letterSpacing or 0
					local var_284_695, var_284_696 = var_284_671:measure(var_284_670, {
						scale = 1,
						spacing = var_284_694
					})
					local var_284_697 = -math.floor(var_284_695 * 0.5 + 0.5)
					local var_284_698 = -math.floor(var_284_696 * 0.5 + 0.5)
					local var_284_699 = 1
					local var_284_700 = var_284_638.countupAnim

					if var_284_700 and var_284_700.stampT and var_284_700.stampT >= 0 then
						local var_284_701 = love.timer.getTime() - var_284_700.stampT
						local var_284_702 = 0.3

						if var_284_701 < var_284_702 then
							local var_284_703 = 0.4

							if var_284_701 < var_284_702 * var_284_703 then
								var_284_699 = 1 + 0.7 * (var_284_701 / (var_284_702 * var_284_703))
							else
								local var_284_704 = (var_284_701 - var_284_702 * var_284_703) / (var_284_702 * (1 - var_284_703))

								var_284_699 = 1.7 - 0.7 * (1 - (1 - var_284_704) * (1 - var_284_704))
							end
						else
							var_284_700.stampT = -1
							var_284_700.countupAnim = nil
							var_284_638.countupAnim = nil
							var_284_638.squashT = love.timer.getTime()
						end
					end

					love.graphics.push()
					love.graphics.translate(var_284_686, var_284_687)
					love.graphics.scale(var_284_674 * var_284_655 * var_284_699 * var_284_667, var_284_674 * var_284_656 * var_284_699 * var_284_667)
					var_284_671:draw(var_284_670, var_284_697, var_284_698, {
						scale = 1,
						spacing = var_284_694
					})
					love.graphics.pop()
				end

				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	drawDeferredCoreSelectIcon()
	var_0_134()

	if battlefield and battlefield.classSelect and loadedAssets and loadedAssets.ui and loadedAssets.ui.classTitle then
		local var_284_705 = ui and ui.classTitleFade or {
			dur = 0.15,
			startAlpha = 0
		}
		local var_284_706 = battlefield.classSelect and battlefield.classSelect.t or 0
		local var_284_707 = var_284_705.dur or 0.5

		if var_284_707 <= 0 then
			var_284_707 = 0.0001
		end

		local var_284_708 = math.min(1, var_284_706 / var_284_707)

		local function var_284_709(arg_301_0)
			return 1 - (1 - arg_301_0) * (1 - arg_301_0) * (1 - arg_301_0)
		end

		if var_284_705.ease == "outCubic" then
			local var_284_710 = var_284_709(var_284_708)
		end

		local var_284_711 = 1
		local var_284_712 = loadedAssets.ui.classTitle

		if var_284_712 then
			local var_284_713 = var_284_712:getWidth()
			local var_284_714 = var_284_712:getHeight()

			if var_284_713 > 0 and var_284_714 > 0 then
				love.graphics.setColor(1, 1, 1, var_284_711)

				if ui and ui.virtual and var_284_713 == ui.virtual.W and var_284_714 == ui.virtual.H then
					love.graphics.draw(var_284_712, 0, 0)
				else
					local var_284_715 = (ui and ui.virtual and ui.virtual.W or var_284_713) / var_284_713
					local var_284_716 = (ui and ui.virtual and ui.virtual.H or var_284_714) / var_284_714

					love.graphics.draw(var_284_712, 0, 0, 0, var_284_715, var_284_716)
				end

				love.graphics.setColor(1, 1, 1, 1)
			end
		end

		local var_284_717 = loadedAssets.ui.classTitleBounds
		local var_284_718 = ui

		if var_284_717 and var_284_718 and var_284_718.virtual then
			local var_284_719 = var_284_718.virtual.W
			local var_284_720 = var_284_718.virtual.H
			local var_284_721 = var_284_717.iw
			local var_284_722 = var_284_717.ih

			if var_284_721 > 0 and var_284_722 > 0 then
				local var_284_723 = var_284_719 / var_284_721
				local var_284_724 = var_284_720 / var_284_722
				local var_284_725 = math.floor(var_284_717.x * var_284_723 + 0.5)
				local var_284_726 = math.floor(var_284_717.y * var_284_724 + 0.5)
				local var_284_727 = math.floor(var_284_717.w * var_284_723 + 0.5)
				local var_284_728 = math.floor(var_284_717.h * var_284_724 + 0.5)
				local var_284_729 = var_284_718.classTitleText or {}
				local var_284_730 = math.max(0, var_284_729.insetPx or 0)
				local var_284_731 = var_284_725 + var_284_730
				local var_284_732 = var_284_726 + var_284_730
				local var_284_733 = math.max(1, var_284_727 - var_284_730 * 2)
				local var_284_734 = math.max(1, var_284_728 - var_284_730 * 2)
				local var_284_735 = var_284_718.fontTitle or love.graphics.getFont()

				if var_284_735 then
					love.graphics.setFont(var_284_735)
				end

				local var_284_736 = var_0_7.getText("class_promotion", _G.currentGameLang or "ko")
				local var_284_737 = var_284_735 and var_284_735:getWidth(var_284_736) or 0
				local var_284_738 = var_284_735 and var_284_735:getHeight() or 0
				local var_284_739 = math.max(0, var_284_729.maxWidthPadPx or 0)
				local var_284_740 = 1

				if var_284_729.scaleOverride and var_284_729.scaleOverride > 0 then
					var_284_740 = var_284_729.scaleOverride
				elseif var_284_737 > var_284_733 - var_284_739 then
					var_284_740 = (var_284_733 - var_284_739) / math.max(1, var_284_737)
				end

				local var_284_741

				if var_284_729.align == "left" then
					var_284_741 = var_284_731 + var_284_739 / 2
				elseif var_284_729.align == "right" then
					var_284_741 = var_284_731 + var_284_733 - var_284_739 / 2 - var_284_737 * var_284_740
				else
					var_284_741 = var_284_731 + math.floor((var_284_733 - var_284_737 * var_284_740) / 2 + 0.5)
				end

				local var_284_742 = var_284_732 + math.floor((var_284_734 - var_284_738 * var_284_740) / 2 + 0.5)
				local var_284_743 = var_284_741 + math.floor((var_284_729.offsetX or 0) + 0.5)
				local var_284_744 = var_284_742 + math.floor((var_284_729.offsetY or 0) + (var_284_729.baselineShiftPx or 0) + 0.5)
				local var_284_745 = var_284_729.outline or {}
				local var_284_746 = var_284_745.color or {
					0,
					0,
					0,
					1
				}
				local var_284_747 = math.max(1, var_284_745.thicknessPx or 1)
				local var_284_748 = var_284_745.diagonal or false

				love.graphics.setColor(var_284_746[1], var_284_746[2], var_284_746[3], (var_284_746[4] or 1) * var_284_711)

				local function var_284_749(arg_302_0, arg_302_1)
					love.graphics.print(var_284_736, var_284_743 + arg_302_0, var_284_744 + arg_302_1, 0, var_284_740, var_284_740)
				end

				var_284_749(-var_284_747, 0)
				var_284_749(var_284_747, 0)
				var_284_749(0, -var_284_747)
				var_284_749(0, var_284_747)

				if var_284_748 then
					var_284_749(-var_284_747, -var_284_747)
					var_284_749(var_284_747, var_284_747)
					var_284_749(-var_284_747, var_284_747)
					var_284_749(var_284_747, -var_284_747)
				end

				local var_284_750 = var_284_729.color or {
					1,
					1,
					1,
					1
				}

				love.graphics.setColor(var_284_750[1], var_284_750[2], var_284_750[3], (var_284_750[4] or 1) * var_284_711)
				love.graphics.print(var_284_736, var_284_743, var_284_744, 0, var_284_740, var_284_740)
				love.graphics.setColor(1, 1, 1, 1)
			end
		end
	end

	if ui._victorySprite and ui._victorySprite.active and loadedAssets and loadedAssets.ui and loadedAssets.ui.victory and not ui._shopMode and not ui._stoneMode then
		local var_284_751 = ui._victorySprite
		local var_284_752 = loadedAssets.ui.victory
		local var_284_753 = ui and ui.victorySprite or ui and ui.unitSpawnBanner or {}
		local var_284_754 = lastLayout and lastLayout.right
		local var_284_755
		local var_284_756
		local var_284_757 = var_284_754 and var_284_754.x + var_284_754.w * 0.5 or ui.virtual.W * 0.5
		local var_284_758 = math.floor(var_284_757 + (var_284_753.offsetX or 0) + 0.5)
		local var_284_759 = math.floor((var_284_754 and var_284_754.y or 0) + (var_284_753.offsetY or 60) + 0.5)
		local var_284_760 = 1
		local var_284_761 = var_284_751.t or 0
		local var_284_762 = var_284_751.dur or var_284_753.dur or 2

		if var_284_761 < 0.2 then
			var_284_760 = var_284_761 / 0.2
		elseif var_284_761 > var_284_762 - 0.3 then
			var_284_760 = math.max(0, (var_284_762 - var_284_761) / 0.3)
		end

		love.graphics.push("all")
		love.graphics.setShader()
		love.graphics.setColor(1, 1, 1, var_284_760)

		local var_284_763, var_284_764 = var_284_752:getDimensions()
		local var_284_765 = var_284_753.scale or 1

		love.graphics.draw(var_284_752, var_284_758, var_284_759, 0, var_284_765, var_284_765, var_284_763 * 0.5, var_284_764 * 0.5)

		local var_284_766 = var_284_751.originiteReward

		if var_284_766 and (var_284_766.amount or 0) > 0 then
			local var_284_767 = love.graphics.getFont()
			local var_284_768 = var_0_17.getOriginiteFont and var_0_17.getOriginiteFont() or ui and ui.coreMessage and ui.coreMessage.font or ui and ui.font or var_284_767

			love.graphics.setFont(var_284_768)

			local var_284_769 = {
				{
					label = var_0_7.getText(var_284_766.kind == "boss" and "originite_boss_clear" or "originite_judgement_clear", _G.currentGameLang or "ko"),
					targetAmount = math.max(0, math.floor(tonumber(var_284_766.amount) or 0))
				}
			}

			if (var_284_766.firstReachBonus or 0) > 0 then
				var_284_769[#var_284_769 + 1] = {
					label = var_0_7.getText("originite_first_reach_bonus", _G.currentGameLang or "ko"),
					targetAmount = math.max(0, math.floor(tonumber(var_284_766.firstReachBonus) or 0))
				}
			end

			local var_284_770 = var_284_753.rewardTextScale or 1
			local var_284_771 = loadedAssets and loadedAssets.ui and loadedAssets.ui.originiteIcon
			local var_284_772 = var_284_753.rewardIconScale or 1
			local var_284_773 = var_284_771 and var_284_771:getWidth() * var_284_772 or 0
			local var_284_774 = var_284_771 and var_284_771:getHeight() * var_284_772 or 0
			local var_284_775 = var_284_771 and (var_284_753.rewardIconGap or 3) or 0
			local var_284_776 = var_284_771 and (var_284_753.rewardNumberGap or 1) or 0
			local var_284_777 = math.max(var_284_768:getHeight() * var_284_770, var_284_774)
			local var_284_778 = var_284_777 + (var_284_753.rewardLineGap or 2)
			local var_284_779 = var_284_759 + var_284_764 * var_284_765 * 0.5 + (var_284_753.rewardOffsetY or 7)
			local var_284_780 = var_284_753.rewardCountDuration or 0.45
			local var_284_781 = math.min(1, math.max(0, (var_284_751.t or 0) / math.max(0.001, var_284_780)))

			for iter_284_15, iter_284_16 in ipairs(var_284_769) do
				local var_284_782 = iter_284_16.targetAmount

				if iter_284_16.targetAmount >= 1 then
					var_284_782 = math.floor(iter_284_16.targetAmount * var_284_781 + 0.5)
				end

				local var_284_783 = "+" .. tostring(var_284_782)
				local var_284_784 = "+" .. tostring(iter_284_16.targetAmount)
				local var_284_785 = var_284_768:getWidth(iter_284_16.label) * var_284_770
				local var_284_786 = var_284_768:getWidth(var_284_784) * var_284_770
				local var_284_787 = var_284_785 + var_284_775 + var_284_773 + var_284_776 + var_284_786
				local var_284_788 = math.floor(var_284_758 - var_284_787 * 0.5 + 0.5)
				local var_284_789 = math.floor(var_284_788 + var_284_785 + var_284_775 + 0.5)
				local var_284_790 = math.floor(var_284_789 + var_284_773 + var_284_776 + 0.5)
				local var_284_791 = var_284_779 + (iter_284_15 - 1) * var_284_778
				local var_284_792 = math.floor(var_284_791 + (var_284_777 - var_284_768:getHeight() * var_284_770) * 0.5 + 0.5)

				if iter_284_15 == 1 then
					love.graphics.setColor(0.92, 0.96, 1, var_284_760)
				else
					love.graphics.setColor(1, 0.86, 0.35, var_284_760)
				end

				love.graphics.print(iter_284_16.label, var_284_788, var_284_792, 0, var_284_770, var_284_770)

				local var_284_793 = var_284_753.rewardNumberColor or {
					0.45,
					1,
					0.65,
					1
				}

				love.graphics.setColor(var_284_793[1], var_284_793[2], var_284_793[3], (var_284_793[4] or 1) * var_284_760)

				local var_284_794 = (var_284_751.t or 0) - (var_284_751.rewardTickImpactT or -10)
				local var_284_795 = 0

				if var_284_794 >= 0 and var_284_794 < 0.09 then
					var_284_795 = math.exp(-32 * var_284_794)
				end

				local var_284_796 = (var_284_751.rewardTickSerial or 0) % 2 == 0 and -1 or 1
				local var_284_797 = var_284_770 * (1 + 0.18 * var_284_795)
				local var_284_798 = var_284_770 * (1 - 0.09 * var_284_795)
				local var_284_799 = var_284_790 + (var_284_768:getWidth(var_284_783) * var_284_770 - var_284_768:getWidth(var_284_783) * var_284_797) * 0.5 + var_284_796 * 1.5 * var_284_795
				local var_284_800 = var_284_792 + var_284_768:getHeight() * (var_284_770 - var_284_798) * 0.5

				love.graphics.print(var_284_783, math.floor(var_284_799 + 0.5), math.floor(var_284_800 + 0.5), 0, var_284_797, var_284_798)

				if var_284_771 then
					local var_284_801 = math.floor(var_284_791 + (var_284_777 - var_284_774) * 0.5 + (var_284_753.rewardIconOffsetY or 2) + 0.5)

					love.graphics.setColor(1, 1, 1, var_284_760)
					love.graphics.draw(var_284_771, var_284_789, var_284_801, 0, var_284_772, var_284_772)
				end
			end

			love.graphics.setFont(var_284_767)
		end

		love.graphics.pop()
	end

	if ui._defeatSprite and ui._defeatSprite.active and loadedAssets and loadedAssets.ui and loadedAssets.ui.defeat and not ui._shopMode and not ui._stoneMode then
		local var_284_802 = ui._defeatSprite
		local var_284_803 = loadedAssets.ui.defeat
		local var_284_804 = ui and ui.defeatSprite or ui and ui.unitSpawnBanner or {}
		local var_284_805 = lastLayout and lastLayout.right
		local var_284_806
		local var_284_807
		local var_284_808 = var_284_805 and var_284_805.x + var_284_805.w * 0.5 or ui.virtual.W * 0.5
		local var_284_809 = math.floor(var_284_808 + (var_284_804.offsetX or 0) + 0.5)
		local var_284_810 = math.floor((var_284_805 and var_284_805.y or 0) + (var_284_804.offsetY or 60) + 0.5)
		local var_284_811 = 1
		local var_284_812 = var_284_802.t or 0
		local var_284_813 = var_284_802.dur or var_284_804.dur or 2

		if var_284_812 < 0.2 then
			var_284_811 = var_284_812 / 0.2
		elseif var_284_812 > var_284_813 - 0.3 then
			var_284_811 = math.max(0, (var_284_813 - var_284_812) / 0.3)
		end

		love.graphics.push("all")
		love.graphics.setShader()
		love.graphics.setColor(1, 1, 1, var_284_811)

		local var_284_814, var_284_815 = var_284_803:getDimensions()
		local var_284_816 = var_284_804.scale or 1

		love.graphics.draw(var_284_803, var_284_809, var_284_810, 0, var_284_816, var_284_816, var_284_814 * 0.5, var_284_815 * 0.5)
		love.graphics.pop()
	end

	;(function()
		local var_303_0 = ui and ui.unitSpawnBannerState

		if var_303_0 and var_303_0.active and (var_303_0.text1 or var_303_0.text2) and lastLayout and lastLayout.right then
			local var_303_1 = ui and ui.unitSpawnBanner or {}
			local var_303_2 = lastLayout.right
			local var_303_3 = love.graphics.getFont()
			local var_303_4 = ui and ui.fontGameOver or ui and ui.font or var_303_3

			love.graphics.push("all")
			love.graphics.setShader()

			if var_303_4 then
				var_303_4:setFilter("nearest", "nearest")
				love.graphics.setFont(var_303_4)
			end

			local var_303_5
			local var_303_6

			if var_303_1.anchor == "battlefield_top" and var_303_2 then
				local var_303_7 = var_303_2.x + var_303_2.w * 0.5

				var_303_5 = math.floor(var_303_7 + (var_303_1.offsetX or 0) + 0.5)
				var_303_6 = math.floor(var_303_2.y + (var_303_1.offsetY or 0) + 0.5)
			else
				var_303_5 = math.floor((var_303_1.x ~= nil and var_303_1.x or 16) + (var_303_1.offsetX or 0) + 0.5)
				var_303_6 = math.floor((var_303_1.y ~= nil and var_303_1.y or 16) + (var_303_1.offsetY or 0) + 0.5)
			end

			local var_303_8 = 1
			local var_303_9 = var_303_0.dur or 2
			local var_303_10 = var_303_0.t or 0

			if var_303_10 < 0.2 then
				var_303_8 = var_303_10 / 0.2
			elseif var_303_10 > var_303_9 - 0.3 then
				var_303_8 = (var_303_9 - var_303_10) / 0.3
			end

			local var_303_11 = var_303_0.text1 or ""
			local var_303_12 = var_303_0.text2 or ""
			local var_303_13 = var_303_0.gradeColor or {
				1,
				1,
				1,
				1
			}
			local var_303_14 = var_303_0.isPrism == true
			local var_303_15 = tonumber(var_303_0.fxTime) or 0

			local function var_303_16(arg_304_0)
				local var_304_0 = 2 * math.pi
				local var_304_1 = 0.5 + 0.5 * math.cos(var_304_0 * (arg_304_0 + 0))
				local var_304_2 = 0.5 + 0.5 * math.cos(var_304_0 * (arg_304_0 + 0.33))
				local var_304_3 = 0.5 + 0.5 * math.cos(var_304_0 * (arg_304_0 + 0.66))

				return var_304_1, var_304_2, var_304_3
			end

			local var_303_17 = var_303_1.scale or 1
			local var_303_18 = (var_303_1.text1Scale or 1) * var_303_17
			local var_303_19 = (var_303_1.text2Scale or 0.75) * var_303_17
			local var_303_20 = var_303_4:getWidth(var_303_11) * var_303_18
			local var_303_21 = var_303_4:getWidth(var_303_12) * var_303_19
			local var_303_22 = var_303_4:getHeight()
			local var_303_23 = var_303_22 * var_303_18
			local var_303_24 = var_303_22 * var_303_19
			local var_303_25 = math.max(var_303_20, var_303_21)
			local var_303_26 = 24 * var_303_17
			local var_303_27 = 6 * var_303_17
			local var_303_28 = math.floor(var_303_25 + var_303_26 * 2)
			local var_303_29 = math.floor((var_303_1 and var_303_1.gapPx or 6) * var_303_17 + 0.5)
			local var_303_30 = math.floor(var_303_23 + var_303_24 + var_303_29 + var_303_27 * 2 + 4 * var_303_17)
			local var_303_31 = math.floor(var_303_5 - var_303_28 * 0.5)
			local var_303_32 = math.floor(var_303_6 - var_303_27)

			var_303_0._renderRect = {
				x = var_303_31,
				y = var_303_32,
				w = var_303_28,
				h = var_303_30
			}

			local var_303_33 = var_303_0.grade

			if (var_303_33 == "legendary" or var_303_33 == "prism") and var_0_97.getGodRayShader then
				local var_303_34 = var_0_97.getGodRayShader()

				if var_303_34 then
					if ui and not ui._unitSpawnBannerWhitePixel and love and love.image and love.image.newImageData then
						local var_303_35 = love.image.newImageData(1, 1)

						var_303_35:setPixel(0, 0, 1, 1, 1, 1)

						ui._unitSpawnBannerWhitePixel = love.graphics.newImage(var_303_35)

						ui._unitSpawnBannerWhitePixel:setFilter("nearest", "nearest")
					end

					local var_303_36 = ui and ui._unitSpawnBannerWhitePixel

					if var_303_36 then
						love.graphics.setBlendMode("add")
						love.graphics.setShader(var_303_34)
						var_303_34:send("time", var_303_15 % 10000)
						var_303_34:send("density", 12)
						var_303_34:send("speed", 0.5)
						var_303_34:send("pixelSize", 256)

						local var_303_37 = {
							1,
							1,
							0,
							1 * var_303_8
						}

						if var_303_33 == "prism" then
							var_303_37 = {
								1,
								1,
								1,
								1 * var_303_8
							}
						end

						var_303_34:send("rayColor", var_303_37)

						local var_303_38 = math.max(var_303_28, var_303_30) * 2.5

						love.graphics.setColor(1, 1, 1, 1)

						local var_303_39 = var_303_31 + var_303_28 * 0.5
						local var_303_40 = var_303_32 + var_303_30 * 0.5

						love.graphics.draw(var_303_36, var_303_39, var_303_40, 0, var_303_38, var_303_38, 0.5, 0.5)
						love.graphics.setShader()
						love.graphics.setBlendMode("alpha")
					end
				end
			end

			local var_303_41 = (function()
				local var_305_0 = 1
				local var_305_1 = lastLayout and lastLayout.right

				if ui and var_305_1 and loadedAssets and loadedAssets.units then
					local var_305_2 = 32
					local var_305_3 = math.floor(10 * (ui.scale or 1))
					local var_305_4 = var_305_1.w - var_305_3 * 2
					local var_305_5 = var_305_1.h - var_305_3 * 2 - math.floor(22 * (ui.scale or 1))
					local var_305_6

					if ui.battle and ui.battle.allySize32 and ui.battle.allySize32 > 0 then
						var_305_6 = math.max(var_305_2, math.floor(ui.battle.allySize32 / var_305_2) * var_305_2)
					else
						local var_305_7 = math.floor(math.min(var_305_4, var_305_5) * 0.12 * (ui.battle and ui.battle.unitScale or 1))

						var_305_6 = var_305_2 * math.max(1, math.ceil(var_305_7 / var_305_2))
					end

					local var_305_8 = loadedAssets.units.MiniSwordMan or loadedAssets.units.MiniArcherMan or loadedAssets.units.MiniSpearMan
					local var_305_9 = var_305_8 and var_305_8.frameW or var_305_2
					local var_305_10 = var_305_6 / math.max(1, var_305_9)

					var_305_0 = math.max(1, math.floor(var_305_10 + 0.5))
				end

				return var_305_0
			end)()

			local function var_303_42(arg_306_0, arg_306_1)
				local var_306_0 = 3 * var_303_17
				local var_306_1 = math.max(1, math.floor((var_306_0 or 3) / var_303_41 + 0.5))
				local var_306_2 = math.min(math.floor(arg_306_0 / (2 * var_303_41)), math.floor(arg_306_1 / (2 * var_303_41)))

				if var_306_2 < 1 then
					var_306_2 = 1
				end

				if var_306_2 < var_306_1 then
					var_306_1 = var_306_2
				end

				return var_306_1 * var_303_41
			end

			local function var_303_43(arg_307_0, arg_307_1, arg_307_2, arg_307_3, arg_307_4)
				if arg_307_2 <= 0 or arg_307_3 <= 0 then
					return
				end

				arg_307_4 = math.max(0, math.floor((arg_307_4 or 0) + 0.5))

				local var_307_0 = math.floor(math.min(arg_307_2, arg_307_3) / 2)

				if var_307_0 < arg_307_4 then
					arg_307_4 = var_307_0
				end

				local var_307_1 = math.max(0, math.floor(arg_307_4 / var_303_41 + 0.5))

				if var_307_1 < 1 then
					love.graphics.rectangle("fill", math.floor(arg_307_0 + 0.5), math.floor(arg_307_1 + 0.5), math.floor(arg_307_2 + 0.5), math.floor(arg_307_3 + 0.5))

					return
				end

				local var_307_2 = var_307_1 * var_303_41

				if var_307_0 < var_307_2 then
					var_307_2 = var_307_0
				end

				local var_307_3 = math.floor(arg_307_0 + 0.5)
				local var_307_4 = math.floor(arg_307_1 + 0.5)
				local var_307_5 = math.floor(arg_307_2 + 0.5)
				local var_307_6 = math.floor(arg_307_3 + 0.5)

				if var_307_6 - 2 * var_307_2 > 0 then
					love.graphics.rectangle("fill", var_307_3 + var_307_2, var_307_4 + var_307_2, var_307_5 - 2 * var_307_2, var_307_6 - 2 * var_307_2)
					love.graphics.rectangle("fill", var_307_3, var_307_4 + var_307_2, var_307_2, var_307_6 - 2 * var_307_2)
					love.graphics.rectangle("fill", var_307_3 + var_307_5 - var_307_2, var_307_4 + var_307_2, var_307_2, var_307_6 - 2 * var_307_2)
				end

				for iter_307_0 = 0, var_307_1 - 1 do
					local var_307_7 = var_307_2 - (iter_307_0 + 1) * var_303_41

					if var_307_7 < 0 then
						var_307_7 = 0
					end

					local var_307_8 = var_307_5 - 2 * var_307_7

					if var_307_8 > 0 then
						love.graphics.rectangle("fill", var_307_3 + var_307_7, var_307_4 + iter_307_0 * var_303_41, var_307_8, var_303_41)
						love.graphics.rectangle("fill", var_307_3 + var_307_7, var_307_4 + var_307_6 - (iter_307_0 + 1) * var_303_41, var_307_8, var_303_41)
					end
				end
			end

			local var_303_44 = var_303_42(var_303_28, var_303_30)

			if var_303_14 then
				love.graphics.stencil(function()
					var_303_43(var_303_31, var_303_32, var_303_28, var_303_30, var_303_44)
				end, "replace", 1)
				love.graphics.setStencilTest("greater", 0)
				love.graphics.setColor(0, 0, 0, 0.35 * var_303_8)
				love.graphics.rectangle("fill", var_303_31, var_303_32, var_303_28, var_303_30)

				if ui and not ui._unitSpawnBannerWhitePixel and love and love.image and love.image.newImageData then
					local var_303_45 = love.image.newImageData(1, 1)

					var_303_45:setPixel(0, 0, 1, 1, 1, 1)

					ui._unitSpawnBannerWhitePixel = love.graphics.newImage(var_303_45)

					ui._unitSpawnBannerWhitePixel:setFilter("nearest", "nearest")
				end

				local var_303_46 = ui and ui._unitSpawnBannerWhitePixel
				local var_303_47 = var_0_97.getPrismFoilShader and var_0_97.getPrismFoilShader() or nil

				if var_303_46 and var_303_47 then
					local var_303_48 = ui and ui.tooltipCfg and ui.tooltipCfg.iconFoil or ui and ui.tooltip and ui.tooltip.iconFoil or {}
					local var_303_49 = math.rad(var_303_48.angleDeg or 20)
					local var_303_50 = math.cos(var_303_49)
					local var_303_51 = math.sin(var_303_49)

					love.graphics.setShader(var_303_47)
					var_303_47:send("u_time", var_303_15 % 10000)
					var_303_47:send("u_alpha", math.max(0, math.min(1, (var_303_48.alpha or 0.7) * 1.05)) * var_303_8)
					var_303_47:send("u_dir", {
						var_303_50,
						var_303_51
					})
					var_303_47:send("u_cycle", var_303_48.cycleSec or 3.2)
					var_303_47:send("u_scale", (var_303_48.scale or 0.5) * 2.2)
					var_303_47:send("u_grainScale", var_303_48.grain and var_303_48.grain.scale or 2)
					var_303_47:send("u_grainAmp", var_303_48.grain and var_303_48.grain.amp or 0.04)
					var_303_47:send("u_filmFreq", var_303_48.film and var_303_48.film.freq or 2)
					var_303_47:send("u_filmAmp", var_303_48.film and var_303_48.film.amp or 0.1)
					var_303_47:send("u_specular", var_303_48.specular or 0.04)
					var_303_47:send("u_fresnelPow", var_303_48.fresnelPow or 2)
					var_303_47:send("u_frameUV", {
						0,
						0,
						1,
						1
					})
					var_303_47:send("u_colorGain", var_303_48.colorGain or 1.35)
					var_303_47:send("u_saturation", var_303_48.saturation or 1.35)
					var_303_47:send("u_mixBP", var_303_48.mixBP or 0.72)
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.draw(var_303_46, var_303_31, var_303_32, 0, var_303_28, var_303_30)
					love.graphics.setShader()
				end

				love.graphics.setColor(0, 0, 0, 0.18 * var_303_8)
				love.graphics.rectangle("fill", var_303_31, var_303_32, var_303_28, var_303_30)
				love.graphics.setStencilTest()

				local var_303_52 = {
					var_303_13[1],
					var_303_13[2],
					var_303_13[3],
					0.6 * var_303_8
				}
				local var_303_53 = math.max(1, math.floor(2 * var_303_17 + 0.5))

				love.graphics.setShader()
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.stencil(function()
					var_303_43(var_303_31, var_303_32, var_303_28, var_303_30, var_303_44)
				end, "replace", 1)
				love.graphics.stencil(function()
					local var_310_0 = var_303_31 + var_303_53
					local var_310_1 = var_303_32 + var_303_53
					local var_310_2 = var_303_28 - 2 * var_303_53
					local var_310_3 = var_303_30 - 2 * var_303_53

					if var_310_2 > 0 and var_310_3 > 0 then
						local var_310_4 = math.min(var_303_44, math.floor(math.min(var_310_2, var_310_3) / 2))

						var_303_43(var_310_0, var_310_1, var_310_2, var_310_3, var_310_4)
					end
				end, "replace", 0, true)
				love.graphics.setStencilTest("equal", 1)
				love.graphics.setColor(var_303_52[1], var_303_52[2], var_303_52[3], var_303_52[4])
				love.graphics.rectangle("fill", var_303_31, var_303_32, var_303_28, var_303_30)
				love.graphics.setStencilTest()

				local var_303_54 = var_303_0.grade

				if var_303_54 == "prism" or var_303_54 == "legendary" then
					local var_303_55 = 0.8
					local var_303_56 = var_303_15 % 3

					if var_303_56 < var_303_55 then
						local var_303_57 = var_303_56 / var_303_55

						love.graphics.stencil(function()
							var_303_43(var_303_31, var_303_32, var_303_28, var_303_30, var_303_44)
						end, "replace", 1)
						love.graphics.setStencilTest("greater", 0)
						love.graphics.setColor(1, 1, 1, 0.4 * (1 - math.abs(var_303_57 - 0.5) * 2) * var_303_8)

						local var_303_58 = 40 * var_303_17
						local var_303_59 = var_303_31 - var_303_58
						local var_303_60 = var_303_59 + (var_303_31 + var_303_28 + var_303_58 - var_303_59) * var_303_57

						love.graphics.push()
						love.graphics.translate(var_303_60, var_303_32 + var_303_30 * 0.5)
						love.graphics.rotate(-0.5)

						local var_303_61 = var_303_30 * 4

						love.graphics.rectangle("fill", -var_303_58 / 2, -var_303_61 / 2, var_303_58, var_303_61)
						love.graphics.pop()
						love.graphics.setStencilTest()
					end
				end
			else
				local var_303_62 = 0.18
				local var_303_63 = {
					math.min(1, (var_303_13[1] or 1) * var_303_62),
					math.min(1, (var_303_13[2] or 1) * var_303_62),
					math.min(1, (var_303_13[3] or 1) * var_303_62),
					0.85 * var_303_8
				}
				local var_303_64 = {
					var_303_13[1],
					var_303_13[2],
					var_303_13[3],
					0.6 * var_303_8
				}

				love.graphics.setColor(var_303_63[1], var_303_63[2], var_303_63[3], var_303_63[4])
				var_303_43(var_303_31, var_303_32, var_303_28, var_303_30, var_303_44)

				local var_303_65 = math.max(1, math.floor(2 * var_303_17 + 0.5))

				love.graphics.setShader()
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.stencil(function()
					var_303_43(var_303_31, var_303_32, var_303_28, var_303_30, var_303_44)
				end, "replace", 1)
				love.graphics.stencil(function()
					local var_313_0 = var_303_31 + var_303_65
					local var_313_1 = var_303_32 + var_303_65
					local var_313_2 = var_303_28 - 2 * var_303_65
					local var_313_3 = var_303_30 - 2 * var_303_65

					if var_313_2 > 0 and var_313_3 > 0 then
						local var_313_4 = math.min(var_303_44, math.floor(math.min(var_313_2, var_313_3) / 2))

						var_303_43(var_313_0, var_313_1, var_313_2, var_313_3, var_313_4)
					end
				end, "replace", 0, true)
				love.graphics.setStencilTest("equal", 1)
				love.graphics.setColor(var_303_64[1], var_303_64[2], var_303_64[3], var_303_64[4])
				love.graphics.rectangle("fill", var_303_31, var_303_32, var_303_28, var_303_30)
				love.graphics.setStencilTest()

				if var_303_0.grade == "legendary" then
					local var_303_66 = 0.8
					local var_303_67 = var_303_15 % 3

					if var_303_67 < var_303_66 then
						local var_303_68 = var_303_67 / var_303_66

						love.graphics.stencil(function()
							var_303_43(var_303_31, var_303_32, var_303_28, var_303_30, var_303_44)
						end, "replace", 1)
						love.graphics.setStencilTest("greater", 0)
						love.graphics.setColor(1, 1, 1, 0.4 * (1 - math.abs(var_303_68 - 0.5) * 2) * var_303_8)

						local var_303_69 = 40 * var_303_17
						local var_303_70 = var_303_31 - var_303_69
						local var_303_71 = var_303_70 + (var_303_31 + var_303_28 + var_303_69 - var_303_70) * var_303_68

						love.graphics.push()
						love.graphics.translate(var_303_71, var_303_32 + var_303_30 * 0.5)
						love.graphics.rotate(-0.5)

						local var_303_72 = var_303_30 * 4

						love.graphics.rectangle("fill", -var_303_69 / 2, -var_303_72 / 2, var_303_69, var_303_72)
						love.graphics.pop()
						love.graphics.setStencilTest()
					end
				end
			end

			local function var_303_73(arg_315_0, arg_315_1, arg_315_2, arg_315_3, arg_315_4, arg_315_5)
				local var_315_0 = math.floor(var_303_4:getWidth(arg_315_0) / 2)
				local var_315_1 = math.floor(var_303_4:getHeight() / 2)
				local var_315_2 = math.floor(arg_315_1 + 0.5)
				local var_315_3 = math.floor(arg_315_2 + 0.5)

				love.graphics.setColor(arg_315_4[1], arg_315_4[2], arg_315_4[3], arg_315_5)
				love.graphics.print(arg_315_0, var_315_2, var_315_3, 0, arg_315_3, arg_315_3, var_315_0, var_315_1)
			end

			local function var_303_74(arg_316_0, arg_316_1, arg_316_2, arg_316_3, arg_316_4)
				if arg_316_0 == "" then
					return
				end

				local var_316_0 = math.floor(var_303_4:getHeight() / 2)
				local var_316_1 = math.floor(arg_316_1 + 0.5)
				local var_316_2 = math.floor(arg_316_2 + 0.5)
				local var_316_3 = var_303_4:getWidth(arg_316_0) * arg_316_3
				local var_316_4 = math.floor(var_316_1 - var_316_3 * 0.5 + 0.5)
				local var_316_5 = (ui and ui.tooltipCfg and ui.tooltipCfg.iconFoil or ui and ui.tooltip and ui.tooltip.iconFoil or {}).cycleSec or 3.2
				local var_316_6 = 1 / math.max(0.1, var_316_5)
				local var_316_7 = 2
				local var_316_8 = var_303_15 * var_316_6
				local var_316_9 = var_316_4
				local var_316_10 = 1
				local var_316_11 = 0.58
				local var_316_12 = 1.1

				while var_316_10 <= #arg_316_0 do
					local var_316_13 = utf8 and utf8.offset and utf8.offset(arg_316_0, 2, var_316_10)

					var_316_13 = var_316_13 or #arg_316_0 + 1

					local var_316_14 = string.sub(arg_316_0, var_316_10, var_316_13 - 1)
					local var_316_15 = var_303_4:getWidth(var_316_14) * arg_316_3
					local var_316_16 = 0

					if var_316_3 > 1e-06 then
						var_316_16 = (var_316_9 - var_316_4 + var_316_15 * 0.5) / var_316_3
					end

					local var_316_17 = var_316_8 + var_316_16 * var_316_7
					local var_316_18, var_316_19, var_316_20 = var_303_16(var_316_17)
					local var_316_21 = var_316_18 * (1 - var_316_11) + var_316_11
					local var_316_22 = var_316_19 * (1 - var_316_11) + var_316_11
					local var_316_23 = var_316_20 * (1 - var_316_11) + var_316_11
					local var_316_24 = math.min(1, var_316_21 * var_316_12)
					local var_316_25 = math.min(1, var_316_22 * var_316_12)
					local var_316_26 = math.min(1, var_316_23 * var_316_12)

					love.graphics.setColor(var_316_24, var_316_25, var_316_26, arg_316_4)
					love.graphics.print(var_316_14, math.floor(var_316_9 + 0.5), var_316_2, 0, arg_316_3, arg_316_3, 0, var_316_0)

					var_316_9 = var_316_9 + var_316_15
					var_316_10 = var_316_13
				end
			end

			local var_303_75 = var_303_5 + (var_303_1.textOffsetX or 0)
			local var_303_76 = var_303_6 + (var_303_1.textOffsetY or 0)
			local var_303_77 = var_303_76 + var_303_23 * 0.5
			local var_303_78 = var_303_76 + var_303_23 + var_303_29 + var_303_24 * 0.5

			if var_303_14 then
				var_303_74(var_303_11, var_303_75, var_303_77, var_303_18, var_303_8)
				var_303_74(var_303_12, var_303_75, var_303_78, var_303_19, 0.9 * var_303_8)
			else
				var_303_73(var_303_11, var_303_75, var_303_77, var_303_18, var_303_13, var_303_8)
				var_303_73(var_303_12, var_303_75, var_303_78, var_303_19, var_303_13, 0.9 * var_303_8)
			end

			love.graphics.pop()

			if var_303_3 then
				love.graphics.setFont(var_303_3)
			end
		end
	end)()
	love.graphics.setColor(1, 1, 1, 1)

	if lastLayout then
		local var_284_817 = 1
		local var_284_818 = ui and ui.pauseOverlayState

		if var_284_818 then
			local var_284_819 = ui and ui.pauseOverlay or {}

			var_284_817 = 1 - 0.5 * PauseMotion.progress(var_284_818, var_284_819, ui and ui.virtual and ui.virtual.H)
		end

		local var_284_820 = lastLayout.slotPanel.x
		local var_284_821 = lastLayout.slotPanel.y
		local var_284_822 = lastLayout.slotPanel.w
		local var_284_823 = tostring(displayCoins)
		local var_284_824 = {
			0.8431372549,
			0.7058823529,
			0.4156862745,
			1
		}
		local var_284_825 = loadedAssets and loadedAssets.ui and loadedAssets.ui.coinDigits
		local var_284_826 = 8
		local var_284_827 = 0

		if var_284_825 then
			local var_284_828 = var_284_825.frameW
			local var_284_829 = var_284_825.frameH
			local var_284_830 = var_284_829 > 0 and var_284_826 / var_284_829 or 1

			for iter_284_17 = 1, #var_284_823 do
				if var_284_823:sub(iter_284_17, iter_284_17):match("%d") then
					var_284_827 = var_284_827 + var_284_828 * var_284_830
				end
			end
		else
			local var_284_831 = ui.fontCoin or ui.font
			local var_284_832 = ui.fontCoinScale or 1

			love.graphics.setFont(var_284_831)

			local var_284_833 = rawget(_G, "measureChineseMixedTextWidth")

			if type(var_284_833) == "function" then
				local var_284_834, var_284_835 = pcall(var_284_833, var_284_823, var_284_831)

				var_284_827 = (var_284_834 and type(var_284_835) == "number" and var_284_835 or var_284_831:getWidth(var_284_823)) * var_284_832
			else
				var_284_827 = var_284_831:getWidth(var_284_823) * var_284_832
			end
		end

		local var_284_836 = ui.moneyDisplay or {}

		if var_284_836.enabled ~= false then
			local var_284_837 = var_284_820 + var_284_822 + (var_284_836.offsetX or -12)
			local var_284_838 = var_284_821 + (var_284_836.offsetY or 10)
			local var_284_839 = math.floor((spinShake.x or 0) + (slotBgJitter and slotBgJitter.x or 0) + 0)
			local var_284_840 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + (slotBgJitter and slotBgJitter.y or 0) + 0.5)
			local var_284_841

			if (var_284_836.align or "right") == "right" then
				var_284_841 = math.floor(var_284_837 - var_284_827)
			else
				var_284_841 = math.floor(var_284_837)
			end

			local var_284_842 = math.floor(var_284_838)
			local var_284_843 = var_284_841 + var_284_839
			local var_284_844 = var_284_842 + var_284_840

			if var_284_825 then
				local var_284_845 = var_284_825.frameW
				local var_284_846 = var_284_825.frameH
				local var_284_847 = var_284_846 > 0 and var_284_826 / var_284_846 or 1

				love.graphics.setColor(var_284_817, var_284_817, var_284_817, 1)

				local var_284_848 = var_284_843

				for iter_284_18 = 1, #var_284_823 do
					local var_284_849 = var_284_823:sub(iter_284_18, iter_284_18)

					if var_284_849:match("%d") then
						local var_284_850
						local var_284_851 = var_284_849 == "0" and 10 or tonumber(var_284_849)
						local var_284_852 = var_284_825.quads[var_284_851]

						if var_284_852 then
							love.graphics.draw(var_284_825.image, var_284_852, math.floor(var_284_848 + 0.5), math.floor(var_284_844 + 0.5), 0, var_284_847, var_284_847)

							var_284_848 = var_284_848 + var_284_845 * var_284_847
						end
					end
				end
			else
				local var_284_853 = ui.fontCoin or ui.font
				local var_284_854 = ui.fontCoinScale or 1

				love.graphics.setFont(var_284_853)
				love.graphics.setColor((var_284_824[1] or 1) * var_284_817, (var_284_824[2] or 1) * var_284_817, (var_284_824[3] or 1) * var_284_817, var_284_824[4] or 1)
				love.graphics.print(var_284_823, var_284_843, var_284_844, 0, var_284_854, var_284_854)
			end
		end

		local var_284_855 = ui.spinCountDisplay or {
			align = "left",
			offsetY = 0,
			targetH = 8,
			offsetX = 0
		}
		local var_284_856 = math.floor((spinShake.x or 0) + (slotBgJitter and slotBgJitter.x or 0) + 0)
		local var_284_857 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + (slotBgJitter and slotBgJitter.y or 0) + 0.5)
		local var_284_858 = math.floor(var_284_820 + (var_284_855.offsetX or 0))
		local var_284_859 = math.floor(var_284_821 + (var_284_855.offsetY or 0))
		local var_284_860 = var_284_858 + var_284_856
		local var_284_861 = var_284_859 + var_284_857
		local var_284_862 = math.max(0, tonumber(spinsLeft or 0) or 0)
		local var_284_863 = tostring(var_284_862)

		if var_284_862 == 0 then
			var_284_863 = "-"
		end

		local var_284_864 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinDigitsPink

		if var_284_864 then
			local var_284_865 = var_284_864.frameW
			local var_284_866 = var_284_864.frameH
			local var_284_867 = var_284_855.targetH or 8
			local var_284_868 = var_284_866 > 0 and var_284_867 / var_284_866 or 1
			local var_284_869 = 0

			for iter_284_19 = 1, #var_284_863 do
				var_284_869 = var_284_869 + var_284_865 * var_284_868
			end

			if (var_284_855.align or "left") == "right" then
				var_284_860 = var_284_860 - var_284_869
			end

			local var_284_870 = var_284_860

			love.graphics.setColor(var_284_817, var_284_817, var_284_817, 1)

			for iter_284_20 = 1, #var_284_863 do
				local var_284_871 = var_284_863:sub(iter_284_20, iter_284_20)
				local var_284_872
				local var_284_873 = var_284_871 == "-" and 10 or var_284_871 == "0" and 10 or tonumber(var_284_871)
				local var_284_874 = var_284_864.quads[var_284_873]

				if var_284_874 then
					love.graphics.draw(var_284_864.image, var_284_874, math.floor(var_284_860 + 0.5), math.floor(var_284_861 + 0.5), 0, var_284_868, var_284_868)

					var_284_860 = var_284_860 + var_284_865 * var_284_868
				end
			end

			if var_284_76 and var_284_78 and var_284_77 and var_284_77 > 0 then
				local var_284_875 = var_0_97.getAlphaMaskTintShader()

				love.graphics.setShader(var_284_875)
				var_284_875:send("tintColor", {
					var_284_78[1] or 1,
					var_284_78[2] or 1,
					var_284_78[3] or 1,
					var_284_77 or 0
				})
				love.graphics.setColor(1, 1, 1, 1)

				local var_284_876 = var_284_870

				for iter_284_21 = 1, #var_284_863 do
					local var_284_877 = var_284_863:sub(iter_284_21, iter_284_21)
					local var_284_878
					local var_284_879 = var_284_877 == "-" and 10 or var_284_877 == "0" and 10 or tonumber(var_284_877)
					local var_284_880 = var_284_864.quads[var_284_879]

					if var_284_880 then
						love.graphics.draw(var_284_864.image, var_284_880, math.floor(var_284_876 + 0.5), math.floor(var_284_861 + 0.5), 0, var_284_868, var_284_868)

						var_284_876 = var_284_876 + var_284_865 * var_284_868
					end
				end

				love.graphics.setShader()
			end
		else
			local var_284_881 = math.floor(var_284_860 + 0.5)
			local var_284_882 = math.floor(var_284_861 + 0.5)

			love.graphics.setColor(1 * var_284_817, 0.6 * var_284_817, 0.8 * var_284_817, 1)
			love.graphics.setFont(ui.font)
			love.graphics.print(var_284_863, var_284_881, var_284_882)

			if var_284_76 and var_284_78 and var_284_77 and var_284_77 > 0 then
				local var_284_883 = var_0_97.getAlphaMaskTintShader()

				love.graphics.setShader(var_284_883)
				var_284_883:send("tintColor", {
					var_284_78[1] or 1,
					var_284_78[2] or 1,
					var_284_78[3] or 1,
					var_284_77 or 0
				})
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.print(var_284_863, var_284_881, var_284_882)
				love.graphics.setShader()
			end
		end

		local var_284_884 = ui.spinPriceDisplay or {
			align = "center",
			offsetY = 8,
			targetH = 8,
			offsetX = 0
		}
		local var_284_885 = (freeSpinCredits or 0) > 0 or var_0_73() <= 0
		local var_284_886 = slotBgJitter and slotBgJitter.x or 0
		local var_284_887 = slotBgJitter and slotBgJitter.y or 0
		local var_284_888 = math.floor((spinShake.x or 0) + var_284_886 + 0)
		local var_284_889 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (var_284_34 or 0) + var_284_18 + var_284_19 + var_284_887 + 0.5)
		local var_284_890 = math.floor(var_284_820 + var_284_822 * 0.5 + (var_284_884.offsetX or 0) + 0.5)
		local var_284_891 = math.floor(var_284_821 + lastLayout.slotPanel.h + (var_284_884.offsetY or 0) + 0.5)
		local var_284_892 = var_284_890 + var_284_888
		local var_284_893 = var_284_891 + var_284_889
		local var_284_894 = loadedAssets and loadedAssets.ui and loadedAssets.ui.coinDigits
		local var_284_895 = spinGoldDenyFX and spinGoldDenyFX.active and not var_284_885
		local var_284_896 = 0

		if var_284_895 then
			local var_284_897 = spinGoldDenyFX.t or 0

			var_284_896 = 0.45 + 0.55 * math.abs(math.sin(var_284_897 * math.pi * 16))
		end

		local function var_284_898()
			if var_284_895 then
				love.graphics.setColor(0.65 + 0.12 * var_284_896, 0.36 - 0.08 * var_284_896, 0.4 - 0.08 * var_284_896, 1)
			else
				love.graphics.setColor(var_284_817, var_284_817, var_284_817, 1)
			end
		end

		if var_284_885 and var_284_894 and var_284_894.order and var_284_894.order:find("F", 1, true) then
			local var_284_899 = "FREE"
			local var_284_900 = var_284_894.frameW
			local var_284_901 = var_284_894.frameH
			local var_284_902 = var_284_884.targetH or 8
			local var_284_903 = var_284_901 > 0 and var_284_902 / var_284_901 or 1
			local var_284_904 = var_284_900 * var_284_903 * #var_284_899
			local var_284_905 = var_284_884.align or "center"

			if var_284_905 == "center" then
				var_284_892 = var_284_892 - math.floor(var_284_904 / 2 + 0.5)
			elseif var_284_905 == "right" then
				var_284_892 = var_284_892 - var_284_904
			end

			local var_284_906 = var_284_892

			love.graphics.setColor(var_284_817, var_284_817, var_284_817, 1)

			local var_284_907 = var_284_892

			for iter_284_22 = 1, #var_284_899 do
				local var_284_908 = var_284_899:sub(iter_284_22, iter_284_22)
				local var_284_909 = var_284_894.order:find(var_284_908, 1, true)

				if var_284_909 then
					local var_284_910 = var_284_894.quads[var_284_909]

					if var_284_910 then
						love.graphics.draw(var_284_894.image, var_284_910, math.floor(var_284_907 + 0.5), math.floor(var_284_893 + 0.5), 0, var_284_903, var_284_903)

						var_284_907 = var_284_907 + var_284_900 * var_284_903
					end
				end
			end

			if var_284_76 and var_284_78 and var_284_77 and var_284_77 > 0 then
				local var_284_911 = var_0_97.getAlphaMaskTintShader()

				love.graphics.setShader(var_284_911)
				var_284_911:send("tintColor", {
					var_284_78[1] or 1,
					var_284_78[2] or 1,
					var_284_78[3] or 1,
					var_284_77 or 0
				})
				love.graphics.setColor(1, 1, 1, 1)

				local var_284_912 = var_284_906

				for iter_284_23 = 1, #var_284_899 do
					local var_284_913 = var_284_899:sub(iter_284_23, iter_284_23)
					local var_284_914 = var_284_894.order:find(var_284_913, 1, true)

					if var_284_914 then
						local var_284_915 = var_284_894.quads[var_284_914]

						if var_284_915 then
							love.graphics.draw(var_284_894.image, var_284_915, math.floor(var_284_912 + 0.5), math.floor(var_284_893 + 0.5), 0, var_284_903, var_284_903)

							var_284_912 = var_284_912 + var_284_900 * var_284_903
						end
					end
				end

				love.graphics.setShader()
			end
		else
			local var_284_916 = var_0_73()
			local var_284_917 = tostring(var_284_916)

			if not var_284_885 and var_284_894 then
				local var_284_918 = var_284_894.frameW
				local var_284_919 = var_284_894.frameH
				local var_284_920 = var_284_884.targetH or 8
				local var_284_921 = var_284_919 > 0 and var_284_920 / var_284_919 or 1
				local var_284_922 = 0

				for iter_284_24 = 1, #var_284_917 do
					local var_284_923 = var_284_917:sub(iter_284_24, iter_284_24)

					if var_284_894.order and var_284_894.order:find(var_284_923, 1, true) then
						var_284_922 = var_284_922 + var_284_918 * var_284_921
					end
				end

				local var_284_924 = var_284_884.align or "center"

				if var_284_924 == "center" then
					var_284_892 = var_284_892 - math.floor(var_284_922 / 2 + 0.5)
				elseif var_284_924 == "right" then
					var_284_892 = var_284_892 - var_284_922
				end

				local var_284_925 = var_284_892

				var_284_898()

				local var_284_926 = var_284_892

				for iter_284_25 = 1, #var_284_917 do
					local var_284_927 = var_284_917:sub(iter_284_25, iter_284_25)
					local var_284_928 = var_284_894.order and var_284_894.order:find(var_284_927, 1, true)

					if var_284_928 then
						local var_284_929 = var_284_894.quads[var_284_928]

						if var_284_929 then
							love.graphics.draw(var_284_894.image, var_284_929, math.floor(var_284_926 + 0.5), math.floor(var_284_893 + 0.5), 0, var_284_921, var_284_921)

							var_284_926 = var_284_926 + var_284_918 * var_284_921
						end
					end
				end

				if var_284_76 and var_284_78 and var_284_77 and var_284_77 > 0 then
					local var_284_930 = var_0_97.getAlphaMaskTintShader()

					love.graphics.setShader(var_284_930)
					var_284_930:send("tintColor", {
						var_284_78[1] or 1,
						var_284_78[2] or 1,
						var_284_78[3] or 1,
						var_284_77 or 0
					})
					love.graphics.setColor(1, 1, 1, 1)

					local var_284_931 = var_284_925

					for iter_284_26 = 1, #var_284_917 do
						local var_284_932 = var_284_917:sub(iter_284_26, iter_284_26)
						local var_284_933 = var_284_894.order and var_284_894.order:find(var_284_932, 1, true)

						if var_284_933 then
							local var_284_934 = var_284_894.quads[var_284_933]

							if var_284_934 then
								love.graphics.draw(var_284_894.image, var_284_934, math.floor(var_284_931 + 0.5), math.floor(var_284_893 + 0.5), 0, var_284_921, var_284_921)

								var_284_931 = var_284_931 + var_284_918 * var_284_921
							end
						end
					end

					love.graphics.setShader()
				end
			else
				local var_284_935 = ui and ui.fontHudYS or ui.fontCoin or ui.font or love.graphics.getFont()
				local var_284_936 = ui and ui.fontHudYSScale or ui.fontCoinScale or 1

				love.graphics.setFont(var_284_935)

				local var_284_937 = var_284_885 and "FREE" or var_284_917
				local var_284_938 = var_284_935:getWidth(var_284_937) * var_284_936
				local var_284_939 = var_284_884.align or "center"

				if var_284_939 == "center" then
					var_284_892 = var_284_892 - math.floor(var_284_938 / 2 + 0.5)
				elseif var_284_939 == "right" then
					var_284_892 = var_284_892 - var_284_938
				end

				local var_284_940 = math.floor(var_284_892 + 0.5)
				local var_284_941 = math.floor(var_284_893 + 0.5)

				var_284_898()
				love.graphics.print(var_284_937, var_284_940, var_284_941, 0, var_284_936, var_284_936)

				if var_284_76 and var_284_78 and var_284_77 and var_284_77 > 0 then
					local var_284_942 = var_0_97.getAlphaMaskTintShader()

					love.graphics.setShader(var_284_942)
					var_284_942:send("tintColor", {
						var_284_78[1] or 1,
						var_284_78[2] or 1,
						var_284_78[3] or 1,
						var_284_77 or 0
					})
					love.graphics.setColor(1, 1, 1, 1)
					love.graphics.print(var_284_937, var_284_940, var_284_941, 0, var_284_936, var_284_936)
					love.graphics.setShader()
				end
			end
		end
	end

	if ui and ui._deferSymbolOddsTooltip then
		ui._deferSymbolOddsTooltip()

		ui._deferSymbolOddsTooltip = nil
	end

	if lastLayout then
		var_0_151(lastLayout)
	end

	local var_284_943 = ui and ui._preSpinSeq

	if var_284_943 and var_284_943.active and var_284_943.phase ~= "init" and var_284_943.cur and var_284_943.queue and var_284_943.queue[var_284_943.i] then
		local var_284_944 = var_284_943.queue[var_284_943.i]
		local var_284_945 = var_284_944 and var_284_944.def
		local var_284_946, var_284_947 = pcall(require, "src.game.cores")
		local var_284_948 = var_284_946 and var_284_947 and var_284_945 and var_284_947.getIcon(var_284_945)

		if var_284_948 then
			local var_284_949 = var_284_948:getWidth()
			local var_284_950 = var_284_948:getHeight()
			local var_284_951 = var_284_943.cur.sx or 1
			local var_284_952 = var_284_943.cur.sy or var_284_951
			local var_284_953 = ui and ui.coreEquipped and ui.coreEquipped.preSpin
			local var_284_954 = lastLayout and lastLayout.slotPanel and lastLayout.slotPanel.x + lastLayout.slotPanel.w * 0.5 or ui.virtual.W * 0.5
			local var_284_955 = lastLayout and lastLayout.slotPanel and lastLayout.slotPanel.y + lastLayout.slotPanel.h or ui.virtual.H * 0.5
			local var_284_956 = math.floor((slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + var_284_18 + var_284_19 + (slotBgJitter and slotBgJitter.y or 0) + 0.5)

			if var_284_953 and var_284_953.dest and var_284_953.dest.anchor == "slot-bottom-center" then
				var_284_954 = var_284_954 + (var_284_953.dest.offsetX or 0)
				var_284_955 = var_284_955 + (var_284_953.dest.offsetY or 0) + var_284_956
			else
				var_284_955 = var_284_955 + var_284_956
			end

			local function var_284_957(arg_318_0)
				if arg_318_0 <= 0 then
					return 0
				end

				if arg_318_0 >= 1 then
					return 1
				end

				return 1 - (1 - arg_318_0) * (1 - arg_318_0) * (1 - arg_318_0)
			end

			local var_284_958
			local var_284_959

			if var_284_943.phase == "move" then
				local var_284_960 = var_284_957(math.max(0, math.min(1, (var_284_943.t or 0) / math.max(0.0001, var_284_943.moveSec or 0.22))))

				var_284_958 = (var_284_943.cur.ox or 0) + (var_284_954 - (var_284_943.cur.ox or 0)) * var_284_960
				var_284_959 = (var_284_943.cur.oy or 0) + (var_284_955 - (var_284_943.cur.oy or 0)) * var_284_960
			elseif var_284_943.phase == "hold" then
				var_284_958, var_284_959 = var_284_954, var_284_955

				local var_284_961 = var_284_943.shake or {
					quantize = true,
					pixelStep = 1,
					ampPx = 2,
					freqHz = 9
				}
				local var_284_962 = math.max(0, var_284_961.ampPx or 0)
				local var_284_963 = var_284_961.freqHz or 0

				if var_284_962 > 0 and var_284_963 > 0 then
					local var_284_964 = love.timer.getTime()
					local var_284_965 = var_284_962 * math.sin(2 * math.pi * var_284_963 * var_284_964)
					local var_284_966 = var_284_962 * math.cos(2 * math.pi * var_284_963 * var_284_964)

					if var_284_961.quantize then
						local var_284_967 = math.max(1, math.floor((var_284_961.pixelStep or 1) + 0))

						var_284_965 = var_284_967 * math.floor(var_284_965 / var_284_967 + 0.5)
						var_284_966 = var_284_967 * math.floor(var_284_966 / var_284_967 + 0.5)
					end

					var_284_958 = var_284_958 + var_284_965
					var_284_959 = var_284_959 + var_284_966
				end
			elseif var_284_943.phase == "return" then
				local var_284_968 = var_284_957(math.max(0, math.min(1, (var_284_943.t or 0) / math.max(0.0001, var_284_943.returnSec or 0.2))))

				var_284_958 = var_284_954 + ((var_284_943.cur.ox or 0) - var_284_954) * var_284_968
				var_284_959 = var_284_955 + ((var_284_943.cur.oy or 0) - var_284_955) * var_284_968
			else
				var_284_958, var_284_959 = var_284_943.cur.ox or 0, var_284_943.cur.oy or 0
			end

			local var_284_969 = var_0_97.getImageOutlineShader()

			love.graphics.setShader(var_284_969)
			var_284_969:send("texelStep", {
				1 / (math.max(1, var_284_949) * var_284_951),
				1 / (math.max(1, var_284_950) * var_284_952)
			})

			local var_284_970

			if var_284_946 and var_284_947 and var_284_947.getRarity then
				local var_284_971, var_284_972 = var_284_947.getRarity(var_284_945)

				var_284_970 = var_284_972
			end

			var_284_969:send("outlineColor", var_284_970 or {
				1,
				1,
				1,
				1
			})
			var_284_969:send("threshold", 0.01)
			var_284_969:send("radiusPx", 1)
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_284_948, math.floor(var_284_958 + 0.5), math.floor(var_284_959 + 0.5), 0, var_284_951, var_284_952, var_284_949 * 0.5, var_284_950 * 0.5)
			love.graphics.setShader()
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(var_284_948, math.floor(var_284_958 + 0.5), math.floor(var_284_959 + 0.5), 0, var_284_951, var_284_952, var_284_949 * 0.5, var_284_950 * 0.5)
		end
	end

	if battlefield and battlefield.sandboxMode and battlefield.mode ~= "battle" then
		local var_284_973 = var_0_143()

		if var_284_973 then
			local var_284_974 = slot and type(slot.sandboxNextWinLines) == "number" and math.max(0, math.min(5, math.floor(slot.sandboxNextWinLines))) or nil
			local var_284_975 = "승리줄:"

			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.setFont(ui.font)
			love.graphics.print(var_284_975, var_284_973.label.x, var_284_973.label.y)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_973.minus.x, var_284_973.minus.y, var_284_973.minus.w, var_284_973.minus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_973.minus.x, var_284_973.minus.y, var_284_973.minus.w, var_284_973.minus.h, 2, 2)
			love.graphics.print("-", var_284_973.minus.x + 3, var_284_973.minus.y - 1)

			local var_284_976 = var_284_974 and tostring(var_284_974) or "-"

			love.graphics.setColor(1, 1, 1, 0.95)
			love.graphics.print(var_284_976, var_284_973.valueX, var_284_973.valueY)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_973.plus.x, var_284_973.plus.y, var_284_973.plus.w, var_284_973.plus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_973.plus.x, var_284_973.plus.y, var_284_973.plus.w, var_284_973.plus.h, 2, 2)
			love.graphics.print("+", var_284_973.plus.x + 3, var_284_973.plus.y - 1)

			local var_284_977 = var_284_973.label.y + math.floor(54 * (ui.scale or 1))
			local var_284_978 = var_284_973.label.x
			local var_284_979 = "심볼:"

			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.setFont(ui.font)
			love.graphics.print(var_284_979, var_284_978, var_284_977)

			local var_284_980 = {
				"W",
				"A",
				"S",
				"M",
				"H",
				"D"
			}
			local var_284_981 = slot.sandboxNextWinSymbol
			local var_284_982 = math.floor(16 * (ui.scale or 1))
			local var_284_983 = math.floor(12 * (ui.scale or 1))
			local var_284_984 = math.floor(4 * (ui.scale or 1))
			local var_284_985 = var_284_978 + 44

			for iter_284_27, iter_284_28 in ipairs(var_284_980) do
				local var_284_986 = var_284_985 + (iter_284_27 - 1) * (var_284_982 + var_284_984)

				love.graphics.setColor(0, 0, 0, 0.35)
				love.graphics.rectangle("fill", var_284_986, var_284_977 - 2, var_284_982, var_284_983, 2, 2)

				if var_284_981 == iter_284_28 then
					love.graphics.setColor(1, 1, 1, 0.95)
				else
					love.graphics.setColor(1, 1, 1, 0.5)
				end

				love.graphics.rectangle("line", var_284_986, var_284_977 - 2, var_284_982, var_284_983, 2, 2)

				local var_284_987 = ui.font:getWidth(iter_284_28)

				love.graphics.print(iter_284_28, var_284_986 + math.floor((var_284_982 - var_284_987) / 2), var_284_977 - 3)
			end

			local var_284_988 = var_284_985 + #var_284_980 * (var_284_982 + var_284_984)

			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_988, var_284_977 - 2, var_284_982 + 12, var_284_983, 2, 2)
			love.graphics.setColor(var_284_981 == nil and 1 or 1, var_284_981 == nil and 1 or 1, var_284_981 == nil and 1 or 1, var_284_981 == nil and 0.95 or 0.5)
			love.graphics.rectangle("line", var_284_988, var_284_977 - 2, var_284_982 + 12, var_284_983, 2, 2)

			local var_284_989 = "랜덤"

			love.graphics.print(var_284_989, var_284_988 + 2, var_284_977 - 3)

			slot._sandboxSymbolPicker = {
				x = var_284_985,
				y = var_284_977 - 2,
				w = #var_284_980 * (var_284_982 + var_284_984) - var_284_984,
				h = var_284_983,
				btnW = var_284_982,
				btnH = var_284_983,
				gap = var_284_984,
				symbols = var_284_980,
				randX = var_284_988,
				randW = var_284_982 + 12
			}

			local var_284_990 = var_284_973.label.y + math.floor(70 * (ui.scale or 1))
			local var_284_991 = var_284_973.label.x
			local var_284_992 = "희귀도:"

			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.setFont(ui.font)
			love.graphics.print(var_284_992, var_284_991, var_284_990)

			local var_284_993 = {
				{
					label = "일반",
					key = "normal"
				},
				{
					label = "고급",
					key = "advanced"
				},
				{
					label = "희귀",
					key = "rare"
				},
				{
					label = "전설",
					key = "legendary"
				},
				{
					label = "프리즘",
					key = "prism"
				}
			}
			local var_284_994 = slot.sandboxNextWinGrade
			local var_284_995 = math.floor(30 * (ui.scale or 1))
			local var_284_996 = math.floor(12 * (ui.scale or 1))
			local var_284_997 = math.floor(4 * (ui.scale or 1))
			local var_284_998 = var_284_991 + math.floor(52 * (ui.scale or 1))

			for iter_284_29, iter_284_30 in ipairs(var_284_993) do
				local var_284_999 = var_284_998 + (iter_284_29 - 1) * (var_284_995 + var_284_997)

				love.graphics.setColor(0, 0, 0, 0.35)
				love.graphics.rectangle("fill", var_284_999, var_284_990 - 2, var_284_995, var_284_996, 2, 2)

				if var_284_994 == iter_284_30.key then
					love.graphics.setColor(1, 1, 1, 0.95)
				else
					love.graphics.setColor(1, 1, 1, 0.5)
				end

				love.graphics.rectangle("line", var_284_999, var_284_990 - 2, var_284_995, var_284_996, 2, 2)

				local var_284_1000 = ui.font:getWidth(iter_284_30.label)

				love.graphics.print(iter_284_30.label, var_284_999 + math.floor((var_284_995 - var_284_1000) / 2), var_284_990 - 3)
			end

			local var_284_1001 = var_284_998 + #var_284_993 * (var_284_995 + var_284_997)

			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1001, var_284_990 - 2, var_284_995 + 12, var_284_996, 2, 2)
			love.graphics.setColor(var_284_994 == nil and 1 or 1, var_284_994 == nil and 1 or 1, var_284_994 == nil and 1 or 1, var_284_994 == nil and 0.95 or 0.5)
			love.graphics.rectangle("line", var_284_1001, var_284_990 - 2, var_284_995 + 12, var_284_996, 2, 2)

			local var_284_1002 = "랜덤"

			love.graphics.print(var_284_1002, var_284_1001 + 2, var_284_990 - 3)

			slot._sandboxRarityPicker = {
				x = var_284_998,
				y = var_284_990 - 2,
				w = #var_284_993 * (var_284_995 + var_284_997) - var_284_997,
				h = var_284_996,
				btnW = var_284_995,
				btnH = var_284_996,
				gap = var_284_997,
				items = var_284_993,
				randX = var_284_1001,
				randW = var_284_995 + 12
			}

			local var_284_1003 = var_284_973.label.y + math.floor(88 * (ui.scale or 1))
			local var_284_1004 = var_284_973.label.x
			local var_284_1005 = ui.scale or 1
			local var_284_1006 = {
				"normal",
				"advanced",
				"rare",
				"legendary",
				"prism"
			}
			local var_284_1007 = {
				legendary = "L",
				rare = "R",
				advanced = "A",
				normal = "N",
				prism = "P"
			}
			local var_284_1008 = battlefield.getSandboxGradeProbabilities and battlefield:getSandboxGradeProbabilities() or {}
			local var_284_1009 = battlefield.sandboxGradeWeightKey or "normal"
			local var_284_1010 = math.floor(14 * var_284_1005)
			local var_284_1011 = math.floor(12 * var_284_1005)
			local var_284_1012 = math.floor(4 * var_284_1005)

			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.setFont(ui.font)
			love.graphics.print("Grade%", var_284_1004, var_284_1003)

			local var_284_1013 = var_284_1004 + math.floor(48 * var_284_1005)
			local var_284_1014 = var_284_1013 + var_284_1010 + var_284_1012
			local var_284_1015 = var_284_1014 + math.floor(30 * var_284_1005) + var_284_1012
			local var_284_1016 = var_284_1015 + var_284_1010 + var_284_1012 * 2
			local var_284_1017 = var_284_1016 + var_284_1010 + var_284_1012
			local var_284_1018 = var_284_1017 + var_284_1010 + var_284_1012
			local var_284_1019 = var_284_1003 - 2

			local function var_284_1020(arg_319_0, arg_319_1, arg_319_2, arg_319_3)
				love.graphics.setColor(0, 0, 0, 0.35)
				love.graphics.rectangle("fill", arg_319_0, var_284_1019, arg_319_1, var_284_1011, 2, 2)
				love.graphics.setColor(1, 1, 1, arg_319_3 and 0.95 or 0.65)
				love.graphics.rectangle("line", arg_319_0, var_284_1019, arg_319_1, var_284_1011, 2, 2)

				local var_319_0 = ui.font:getWidth(arg_319_2)

				love.graphics.print(arg_319_2, arg_319_0 + math.floor((arg_319_1 - var_319_0) / 2), var_284_1019 - 1)
			end

			var_284_1020(var_284_1013, var_284_1010, "<", true)
			var_284_1020(var_284_1014, math.floor(30 * var_284_1005), var_284_1007[var_284_1009] or "?", true)
			var_284_1020(var_284_1015, var_284_1010, ">", true)
			var_284_1020(var_284_1016, var_284_1010, "-", true)
			var_284_1020(var_284_1017, var_284_1010, "+", true)
			var_284_1020(var_284_1018, math.floor(22 * var_284_1005), "RST", true)

			local var_284_1021 = var_284_1018 + math.floor(28 * var_284_1005)
			local var_284_1022 = {}

			for iter_284_31, iter_284_32 in ipairs(var_284_1006) do
				table.insert(var_284_1022, string.format("%s%d", var_284_1007[iter_284_32] or "?", math.floor((var_284_1008[iter_284_32] or 0) * 100 + 0.5)))
			end

			love.graphics.setColor(1, 1, 1, 0.78)
			love.graphics.print(table.concat(var_284_1022, " "), var_284_1021, var_284_1003)

			slot._sandboxGradeProbControl = {
				prev = {
					x = var_284_1013,
					y = var_284_1019,
					w = var_284_1010,
					h = var_284_1011
				},
				next = {
					x = var_284_1015,
					y = var_284_1019,
					w = var_284_1010,
					h = var_284_1011
				},
				minus = {
					x = var_284_1016,
					y = var_284_1019,
					w = var_284_1010,
					h = var_284_1011
				},
				plus = {
					x = var_284_1017,
					y = var_284_1019,
					w = var_284_1010,
					h = var_284_1011
				},
				reset = {
					x = var_284_1018,
					y = var_284_1019,
					w = math.floor(22 * var_284_1005),
					h = var_284_1011
				}
			}
			ui._sandboxLineProb = ui._sandboxLineProb or {
				t = 0,
				trials = 0
			}

			local var_284_1023 = love.timer and love.timer.getTime and love.timer.getTime() or 0

			if ui._sandboxLineProb.p == nil or var_284_1023 - (ui._sandboxLineProb.t or 0) > 2 then
				local var_284_1024, var_284_1025 = pcall(require, "src.game.sim")

				if var_284_1024 and var_284_1025 and type(var_284_1025.simulateEffective) == "function" then
					local var_284_1026 = var_284_1025.simulateEffective(5000)

					ui._sandboxLineProb.p = var_284_1026 and var_284_1026.effectiveAtLeastOne or 0
					ui._sandboxLineProb.trials = var_284_1026 and var_284_1026.trials or 0
					ui._sandboxLineProb.t = var_284_1023
				else
					ui._sandboxLineProb.p = 0
					ui._sandboxLineProb.trials = 0
					ui._sandboxLineProb.t = var_284_1023
				end
			end

			local var_284_1027 = tonumber(ui._sandboxLineProb.p or 0) or 0
			local var_284_1028 = math.max(0, math.min(100, var_284_1027 * 100))
			local var_284_1029 = string.format("라인 확률(자연): %.1f%%", var_284_1028)

			love.graphics.setColor(1, 1, 1, 0.85)
			love.graphics.setFont(ui.font)

			local var_284_1030 = math.max(var_284_973.label.y, var_284_973.minus.y + var_284_973.minus.h)

			if slot and slot._sandboxRarityPicker then
				var_284_1030 = math.max(var_284_1030, slot._sandboxRarityPicker.y + slot._sandboxRarityPicker.h)
			elseif slot and slot._sandboxSymbolPicker then
				var_284_1030 = math.max(var_284_1030, slot._sandboxSymbolPicker.y + slot._sandboxSymbolPicker.h)
			end

			if slot and slot._sandboxGradeProbControl and slot._sandboxGradeProbControl.reset then
				var_284_1030 = math.max(var_284_1030, slot._sandboxGradeProbControl.reset.y + slot._sandboxGradeProbControl.reset.h)
			end

			local var_284_1031 = math.floor(4 * (ui.scale or 1))

			love.graphics.print(var_284_1029, var_284_973.label.x, var_284_1030 + var_284_1031)

			if false then
				local var_284_1032, var_284_1033 = pcall(require, "src.game.cores")
				local var_284_1034 = false
				local var_284_1035 = false
				local var_284_1036 = false

				if var_284_1032 and var_284_1033 and type(var_284_1033.getActive) == "function" then
					local var_284_1037 = var_284_1033.getActive()

					for iter_284_33, iter_284_34 in ipairs(var_284_1037 or {}) do
						if iter_284_34 and iter_284_34.key == "Wishlamp" then
							if iter_284_34._wishJackpotNext then
								var_284_1034 = true
							end

							if iter_284_34._uiActiveThisSpin then
								var_284_1035 = true
							end

							if iter_284_34._uiActiveThisSpin and iter_284_34._uiTrigger then
								var_284_1036 = true
							end
						end
					end
				end

				local var_284_1038
				local var_284_1039 = var_284_1034 and "연속 잭팟 확률: 10% (대기)" or var_284_1035 and var_284_1036 and "연속 잭팟: 성공 (강제 5줄)" or var_284_1035 and "연속 잭팟: 시도 중 (10%)" or "연속 잭팟 확률: 0%"

				love.graphics.setColor(1, 1, 0.8, 0.85)
				love.graphics.setFont(ui.font)

				local var_284_1040 = math.max(var_284_973.label.y, var_284_973.minus.y + var_284_973.minus.h)
				local var_284_1041 = math.floor(4 * (ui.scale or 1))

				love.graphics.print(var_284_1039, var_284_973.label.x, var_284_1040 + var_284_1041 + 12)
			end

			local var_284_1042 = 0
			local var_284_1043

			if var_284_974 and var_284_974 == 5 then
				var_284_1042 = 1
				var_284_1043 = "(샌드박스)"
			else
				local var_284_1044, var_284_1045 = pcall(require, "src.game.cores")

				if var_284_1044 and var_284_1045 and type(var_284_1045.getActive) == "function" then
					local var_284_1046 = var_284_1045.getActive()
					local var_284_1047 = battlefield and battlefield.wave and tonumber(battlefield.wave.id) or nil
					local var_284_1048 = 0
					local var_284_1049 = 0

					for iter_284_35, iter_284_36 in ipairs(var_284_1046 or {}) do
						if iter_284_36 then
							if iter_284_36.key == "Resonoscope" and iter_284_36._resonoJackpotNext then
								var_284_1048 = 0.01
							end

							if var_284_1047 ~= nil and iter_284_36.key == "PurusaVerdict" and (iter_284_36._purusaUsedWave or -1) ~= var_284_1047 then
								var_284_1049 = 0.004
							end

							if iter_284_36._uiActiveThisSpin and iter_284_36._uiTrigger and (iter_284_36.key == "Resonoscope" or iter_284_36.key == "PurusaVerdict") then
								var_284_1042 = 1
							end
						end
					end

					if var_284_1042 < 1 then
						var_284_1042 = 1 - (1 - var_284_1048) * (1 - var_284_1049)
					end
				end
			end

			local var_284_1050 = math.max(0, math.min(100, (var_284_1042 or 0) * 100))
			local var_284_1051

			if var_284_1042 >= 1 then
				var_284_1051 = "잭팟 확률: 100% " .. (var_284_1043 or "(강제)")
			else
				var_284_1051 = string.format("잭팟 확률: %.1f%%", var_284_1050)
			end

			love.graphics.setColor(0.8, 1, 0.9, 0.9)
			love.graphics.setFont(ui.font)

			local var_284_1052 = math.max(var_284_973.label.y, var_284_973.minus.y + var_284_973.minus.h)
			local var_284_1053 = math.floor(4 * (ui.scale or 1))

			love.graphics.print(var_284_1051, var_284_973.label.x, var_284_1052 + var_284_1053 + 24)
		end

		local var_284_1054 = var_0_144()

		if var_284_1054 then
			ui._sandboxJungsuAmt = ui._sandboxJungsuAmt or 1

			if ui._sandboxJungsuAmt < 0 then
				ui._sandboxJungsuAmt = 0
			end

			local var_284_1055 = ui._sandboxJungsuAmt

			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.setFont(ui.font)
			love.graphics.print(var_0_7.getText("sandbox_essence_label", _G.currentGameLang or "ko"), var_284_1054.label.x, var_284_1054.label.y)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1054.minus.x, var_284_1054.minus.y, var_284_1054.minus.w, var_284_1054.minus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1054.minus.x, var_284_1054.minus.y, var_284_1054.minus.w, var_284_1054.minus.h, 2, 2)
			love.graphics.print("-", var_284_1054.minus.x + 3, var_284_1054.minus.y - 1)
			love.graphics.setColor(1, 1, 1, 0.95)
			love.graphics.print(tostring(var_284_1055), var_284_1054.valueX, var_284_1054.valueY)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1054.plus.x, var_284_1054.plus.y, var_284_1054.plus.w, var_284_1054.plus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1054.plus.x, var_284_1054.plus.y, var_284_1054.plus.w, var_284_1054.plus.h, 2, 2)
			love.graphics.print("+", var_284_1054.plus.x + 3, var_284_1054.plus.y - 1)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1054.add.x, var_284_1054.add.y, var_284_1054.add.w, var_284_1054.add.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1054.add.x, var_284_1054.add.y, var_284_1054.add.w, var_284_1054.add.h, 2, 2)
			love.graphics.print(var_0_7.getText("sandbox_add", _G.currentGameLang or "ko"), var_284_1054.add.x + 3, var_284_1054.add.y - 1)
		end

		local var_284_1056 = var_0_145()

		if var_284_1056 then
			ui._sandboxGoldAmt = ui._sandboxGoldAmt or 100

			if ui._sandboxGoldAmt < 0 then
				ui._sandboxGoldAmt = 0
			end

			local var_284_1057 = ui._sandboxGoldAmt

			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.setFont(ui.font)
			love.graphics.print(var_0_7.getText("sandbox_gold_label", _G.currentGameLang or "ko"), var_284_1056.label.x, var_284_1056.label.y)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1056.minus.x, var_284_1056.minus.y, var_284_1056.minus.w, var_284_1056.minus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1056.minus.x, var_284_1056.minus.y, var_284_1056.minus.w, var_284_1056.minus.h, 2, 2)
			love.graphics.print("-", var_284_1056.minus.x + 3, var_284_1056.minus.y - 1)
			love.graphics.setColor(1, 1, 1, 0.95)
			love.graphics.print(tostring(var_284_1057), var_284_1056.valueX, var_284_1056.valueY)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1056.plus.x, var_284_1056.plus.y, var_284_1056.plus.w, var_284_1056.plus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1056.plus.x, var_284_1056.plus.y, var_284_1056.plus.w, var_284_1056.plus.h, 2, 2)
			love.graphics.print("+", var_284_1056.plus.x + 3, var_284_1056.plus.y - 1)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1056.add.x, var_284_1056.add.y, var_284_1056.add.w, var_284_1056.add.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1056.add.x, var_284_1056.add.y, var_284_1056.add.w, var_284_1056.add.h, 2, 2)
			love.graphics.print(var_0_7.getText("sandbox_add", _G.currentGameLang or "ko"), var_284_1056.add.x + 3, var_284_1056.add.y - 1)
		end
	end

	if battlefield and battlefield.sandboxMode and battlefield.mode ~= "battle" then
		local var_284_1058 = var_0_146()

		if var_284_1058 then
			battlefield._coreIds = battlefield._coreIds or (function()
				local var_320_0, var_320_1 = pcall(require, "src.game.cores")
				local var_320_2 = var_320_0 and var_320_1 and var_320_1.getIds and var_320_1.getIds() or {}

				return #var_320_2 > 0 and var_320_2 or {
					"01"
				}
			end)()
			battlefield._coreIdx = math.max(1, math.floor(battlefield._coreIdx or 1))

			if battlefield._coreIdx > #battlefield._coreIds then
				battlefield._coreIdx = #battlefield._coreIds
			end

			local var_284_1059 = battlefield._coreIds[battlefield._coreIdx] or "-"

			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.setFont(ui.font)
			love.graphics.print(var_0_7.getText("sandbox_core_id_label", _G.currentGameLang or "ko"), var_284_1058.label.x, var_284_1058.label.y)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1058.minus.x, var_284_1058.minus.y, var_284_1058.minus.w, var_284_1058.minus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1058.minus.x, var_284_1058.minus.y, var_284_1058.minus.w, var_284_1058.minus.h, 2, 2)
			love.graphics.print("-", var_284_1058.minus.x + 3, var_284_1058.minus.y - 1)
			love.graphics.setColor(1, 1, 1, 0.95)
			love.graphics.print(tostring(var_284_1059), var_284_1058.valueX, var_284_1058.valueY)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1058.plus.x, var_284_1058.plus.y, var_284_1058.plus.w, var_284_1058.plus.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1058.plus.x, var_284_1058.plus.y, var_284_1058.plus.w, var_284_1058.plus.h, 2, 2)
			love.graphics.print("+", var_284_1058.plus.x + 3, var_284_1058.plus.y - 1)
			love.graphics.setColor(0, 0, 0, 0.35)
			love.graphics.rectangle("fill", var_284_1058.equip.x, var_284_1058.equip.y, var_284_1058.equip.w, var_284_1058.equip.h, 2, 2)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.rectangle("line", var_284_1058.equip.x, var_284_1058.equip.y, var_284_1058.equip.w, var_284_1058.equip.h, 2, 2)
			love.graphics.print(var_0_7.getText("sandbox_equip", _G.currentGameLang or "ko"), var_284_1058.equip.x + 4, var_284_1058.equip.y - 1)

			if var_284_1058.alert then
				love.graphics.setColor(0, 0, 0, 0.35)
				love.graphics.rectangle("fill", var_284_1058.alert.x, var_284_1058.alert.y, var_284_1058.alert.w, var_284_1058.alert.h, 2, 2)
				love.graphics.setColor(1, 1, 1, 0.9)
				love.graphics.rectangle("line", var_284_1058.alert.x, var_284_1058.alert.y, var_284_1058.alert.w, var_284_1058.alert.h, 2, 2)
				love.graphics.print("ALERT", var_284_1058.alert.x + 4, var_284_1058.alert.y - 1)
			end
		end
	end

	if battlefield and battlefield.sandboxMode and battlefield.mode ~= "battle" then
		local var_284_1060 = var_0_149()

		if var_284_1060 then
			local var_284_1061, var_284_1062 = pcall(require, "src.game.item")
			local var_284_1063 = var_284_1061 and var_284_1062 and var_284_1062.getAll and var_284_1062.getAll() or {}

			battlefield._sandboxItemIndex = math.max(1, math.floor(battlefield._sandboxItemIndex or 1))

			if #var_284_1063 > 0 and battlefield._sandboxItemIndex > #var_284_1063 then
				battlefield._sandboxItemIndex = #var_284_1063
			end

			local var_284_1064 = ui and ui._sandboxForcedNextItemId
			local var_284_1065 = var_284_1064 and var_284_1062 and var_284_1062.getById and var_284_1062.getById(var_284_1064) or #var_284_1063 > 0 and var_284_1063[battlefield._sandboxItemIndex] or nil
			local var_284_1066 = _G.currentGameLang or "ko"
			local var_284_1067 = "-"

			if var_284_1065 then
				local var_284_1068 = tostring(var_284_1065.name or "")
				local var_284_1069 = var_0_7.getItemName(var_284_1065.id, var_284_1068, var_284_1066)

				if var_284_1066 ~= "en" then
					var_284_1069 = tostring(var_284_1069 or ""):gsub("%s*%b()$", "")
				end

				var_284_1067 = tostring(var_284_1065.id) .. " " .. tostring(var_284_1069 or "")
			end

			love.graphics.setFont(ui.font)
			love.graphics.setColor(1, 1, 1, 0.9)
			love.graphics.print(var_0_7.getText("next_item_label", var_284_1066), var_284_1060.label.x, var_284_1060.label.y)

			for iter_284_37, iter_284_38 in ipairs({
				var_284_1060.minus,
				var_284_1060.plus,
				var_284_1060.clear
			}) do
				love.graphics.setColor(0, 0, 0, 0.35)
				love.graphics.rectangle("fill", iter_284_38.x, iter_284_38.y, iter_284_38.w, iter_284_38.h, 2, 2)
				love.graphics.setColor(1, 1, 1, 0.9)
				love.graphics.rectangle("line", iter_284_38.x, iter_284_38.y, iter_284_38.w, iter_284_38.h, 2, 2)
			end

			love.graphics.print("-", var_284_1060.minus.x + 3, var_284_1060.minus.y - 1)
			love.graphics.print("+", var_284_1060.plus.x + 3, var_284_1060.plus.y - 1)
			love.graphics.print(var_0_7.getText("clear_label", var_284_1066), var_284_1060.clear.x + 4, var_284_1060.clear.y - 1)
			love.graphics.setColor(var_284_1064 and 1 or 0.72, var_284_1064 and 0.84 or 0.72, var_284_1064 and 0.32 or 0.72, 1)
			love.graphics.print(var_284_1067, var_284_1060.valueX, var_284_1060.valueY)
		end
	end

	if ui and ui.pauseOverlayState then
		local var_284_1070 = ui.pauseOverlayState.active
	end

	local var_284_1071 = ui and ui._suddenDeathAlertBanner and ui._suddenDeathAlertBanner.active or false

	if var_0_11 and var_0_11.drawSuddenDeathAlertBanner then
		var_0_11.drawSuddenDeathAlertBanner(ui, battlefield, loadedAssets)
	end

	if drawStageIntroBanner then
		drawStageIntroBanner()
	end

	love.graphics.pop()

	if var_0_11 and var_0_11.drawCoreSelectModal then
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)
		var_0_11.drawCoreSelectModal(ui, loadedAssets)
		love.graphics.pop()
	end

	if not var_284_1071 and tooltip and battlefield and not battlefield.gameOver then
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)
		tooltip:draw(battlefield)
		love.graphics.pop()
	end

	love.graphics.setStencilTest()
	love.graphics.setShader()

	if tooltip and var_284_6 then
		tooltip.mouseX, tooltip.mouseY = var_284_6, var_284_7
	end

	local function var_284_1072(arg_321_0)
		local var_321_0 = loadedAssets and loadedAssets.ui
		local var_321_1 = var_321_0 and var_321_0.optionWindowRope
		local var_321_2 = var_321_0 and var_321_0.optionWindow
		local var_321_3 = var_321_0 and var_321_0.pauseBackground
		local var_321_4 = var_321_0 and var_321_0.optionPaperBackground
		local var_321_5 = var_321_0 and var_321_0.optionWindowTopbar
		local var_321_6 = var_321_0 and var_321_0.playtimeBackground
		local var_321_7 = var_321_0 and var_321_0.creditsBackground
		local var_321_8 = var_321_0 and var_321_0.optionButtonRope
		local var_321_9 = var_321_0 and var_321_0.playButtonDark
		local var_321_10 = var_321_0 and var_321_0.playButton
		local var_321_11 = var_321_0 and var_321_0.replayButtonDark
		local var_321_12 = var_321_0 and var_321_0.replayButton
		local var_321_13 = var_321_0 and var_321_0.wikiButtonDark
		local var_321_14 = var_321_0 and var_321_0.wikiButton
		local var_321_15 = var_321_0 and var_321_0.optionButtonDark
		local var_321_16 = var_321_0 and var_321_0.optionButton
		local var_321_17 = var_321_0 and var_321_0.toMainMenuButtonDark
		local var_321_18 = var_321_0 and var_321_0.toMainMenuButton
		local var_321_19 = ui and ui.pauseOverlayState

		if var_321_19 and (var_321_1 or var_321_2) then
			love.graphics.push()
			love.graphics.translate(screenOffsetX, screenOffsetY)
			love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)

			local var_321_20 = math.floor((var_321_19.y or 0) + 0.5)
			local var_321_21 = var_321_19 and var_321_19.settingsMode == true
			local var_321_22 = var_321_19 and var_321_19._settingsPending and not var_321_19.settingsMode
			local var_321_23 = ui and ui.pauseOverlay or {}
			local var_321_24 = var_321_23 and var_321_23.settingsDelaySec or 0.35
			local var_321_25 = var_321_19 and var_321_19._settingsT or 0
			local var_321_26 = var_321_22 and math.min(1, var_321_25 / math.max(0.0001, var_321_24)) or 0

			local function var_321_27(arg_322_0)
				return 1 - (1 - arg_322_0) * (1 - arg_322_0) * (1 - arg_322_0)
			end

			local var_321_28 = var_321_27(var_321_26)
			local var_321_29 = 28

			if not arg_321_0 then
				local var_321_30 = ui and ui.pauseOverlay or {}
				local var_321_31 = 0.65 * PauseMotion.progress(var_321_19, var_321_30, ui and ui.virtual and ui.virtual.H)

				if var_321_31 > 0 then
					love.graphics.setColor(0, 0, 0, var_321_31)
					love.graphics.rectangle("fill", 0, 0, ui.virtual.W, ui.virtual.H)
					love.graphics.setColor(1, 1, 1, 1)
				end
			end

			if var_321_2 then
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_321_2, 0, var_321_20)
			end

			local var_321_32 = ui and ui.pauseOverlay and ui.pauseOverlay.pauseBackground

			if var_321_3 and var_321_32 and var_321_32.enabled ~= false then
				local var_321_33 = var_321_32.scale or 1
				local var_321_34 = math.floor((var_321_32.offsetX or 0) + 0.5)
				local var_321_35 = math.floor((var_321_32.offsetY or 0) + 0.5)
				local var_321_36 = var_321_35
				local var_321_37 = 1

				if var_321_22 and not var_321_21 then
					var_321_36 = var_321_35 - var_321_29 * var_321_28
					var_321_37 = 1 - var_321_28
				elseif var_321_21 then
					local var_321_38 = 0.08
					local var_321_39 = 0.45
					local var_321_40 = var_321_19.settingsPaperT or 0
					local var_321_41
					local var_321_42

					if var_321_40 < var_321_38 then
						var_321_37 = 0
						var_321_42 = -40
					else
						local var_321_43 = math.min(1, (var_321_40 - var_321_38) / var_321_39)
						local var_321_44 = var_321_27(var_321_43)

						var_321_37 = var_321_43
						var_321_42 = -40 * (1 - var_321_44)
					end

					var_321_36 = var_321_35 + var_321_42
				end

				love.graphics.setColor(1, 1, 1, var_321_37)
				love.graphics.draw(var_321_3, var_321_34, var_321_20 + var_321_36, 0, var_321_33, var_321_33)
				love.graphics.setColor(1, 1, 1, 1)
			end

			if not var_321_21 then
				local var_321_45 = ui and ui.pauseOverlay and ui.pauseOverlay.playtimeBackground

				if var_321_6 and var_321_45 and var_321_45.enabled ~= false then
					local var_321_46 = var_321_45.scale or 1
					local var_321_47 = math.floor((var_321_45.offsetX or 0) + 0.5)
					local var_321_48 = math.floor((var_321_45.offsetY or 0) + 0.5) - var_321_29 * var_321_28
					local var_321_49 = 1 - var_321_28

					love.graphics.setColor(1, 1, 1, var_321_49)
					love.graphics.draw(var_321_6, var_321_47, var_321_20 + var_321_48, 0, var_321_46, var_321_46)
					love.graphics.setColor(1, 1, 1, 1)
				end
			end

			local var_321_50 = var_321_23 and var_321_23.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)

			if (var_321_19.active == true or var_321_20 > var_321_50 + 0.5) and not var_321_21 and not var_321_22 then
				local var_321_51 = ui and ui.pauseOverlay and ui.pauseOverlay.creditsBackground

				if var_321_7 and var_321_51 and var_321_51.enabled ~= false then
					local var_321_52 = var_321_51.scale or 1
					local var_321_53 = math.floor((var_321_51.offsetX or 0) + 0.5)
					local var_321_54 = math.floor((var_321_51.offsetY or 0) + 0.5)
					local var_321_55 = 1

					love.graphics.setColor(1, 1, 1, var_321_55)
					love.graphics.draw(var_321_7, var_321_53, var_321_20 + var_321_54, 0, var_321_52, var_321_52)
					love.graphics.setColor(1, 1, 1, 1)

					if __slotDrawCreditsScroll then
						__slotDrawCreditsScroll(ui, var_321_7, var_321_53, var_321_20 + var_321_54, var_321_52, var_321_55)
					end
				end
			end

			if var_321_21 then
				local var_321_56 = ui and ui.pauseOverlay and ui.pauseOverlay.optionPaperBackground

				if var_321_4 and var_321_56 and var_321_56.enabled ~= false then
					local var_321_57 = var_321_56.scale or 1
					local var_321_58 = math.floor(var_321_4:getWidth() * var_321_57 + 0.5)
					local var_321_59 = math.floor((ui.virtual.W - var_321_58) / 2)
					local var_321_60 = math.floor((var_321_56.offsetY or 0) + 0.5)
					local var_321_61 = 0.08
					local var_321_62 = 0.45
					local var_321_63 = var_321_19.settingsPaperT or 0
					local var_321_64
					local var_321_65
					local var_321_66

					if var_321_63 < var_321_61 then
						var_321_64 = 0
						var_321_66 = -40
					else
						local var_321_67 = math.min(1, (var_321_63 - var_321_61) / var_321_62)
						local var_321_68 = var_321_27(var_321_67)

						var_321_64 = var_321_67
						var_321_66 = -40 * (1 - var_321_68)
					end

					local var_321_69 = var_321_60 + var_321_66

					love.graphics.setColor(1, 1, 1, var_321_64)
					love.graphics.draw(var_321_4, var_321_59, var_321_20 + var_321_69, 0, var_321_57, var_321_57)
					love.graphics.setColor(1, 1, 1, 1)

					if var_321_21 and var_321_64 > 0 then
						local var_321_70 = math.floor(var_321_4:getWidth() * var_321_57 + 0.5)
						local var_321_71 = math.floor(var_321_4:getHeight() * var_321_57 + 0.5)
						local var_321_72, var_321_73, var_321_74, var_321_75 = var_0_161(var_321_59, var_321_20 + var_321_69, var_321_70, var_321_71, var_321_56)
						local var_321_76, var_321_77, var_321_78, var_321_79 = var_0_163(var_321_72, var_321_73, var_321_74, var_321_75)
						local var_321_80 = var_0_160("pause")
						local var_321_81 = var_321_19.settingsScrollY or 0

						var_0_170(var_321_76, var_321_77, var_321_78, var_321_79, var_321_81, var_321_80, var_321_19)
						love.graphics.setColor(1, 1, 1, 1)
					end
				end
			end

			local var_321_82 = ui and ui.pauseOverlay and ui.pauseOverlay.playtimeText
			local var_321_83 = ui and ui.pauseOverlay and ui.pauseOverlay.playtimeBackground

			if not var_321_21 and var_321_82 and var_321_82.enabled ~= false and var_321_6 and var_321_83 then
				local var_321_84 = love.graphics.getFont()
				local var_321_85 = ui and ui.fontPauseTitle or var_321_84

				if var_321_85 then
					love.graphics.setFont(var_321_85)
				end

				local var_321_86 = var_321_6:getWidth()
				local var_321_87 = var_321_6:getHeight()
				local var_321_88 = math.floor((var_321_83.offsetX or 0) + 0.5)
				local var_321_89 = math.floor((var_321_83.offsetY or 0) + 0.5) - var_321_29 * var_321_28
				local var_321_90 = 1 - var_321_28
				local var_321_91 = var_321_88 + math.floor(var_321_86 * 0.5 + 0.5)
				local var_321_92 = var_0_7.getText("play_time_label", _G.currentGameLang or "ko")

				if var_321_92 ~= "" then
					local var_321_93 = var_321_82.titleScale or 1
					local var_321_94 = var_321_85 and var_321_85:getWidth(var_321_92) or 0
					local var_321_95

					if var_321_82.align == "left" then
						var_321_95 = var_321_88 + (var_321_82.offsetX or 0)
					else
						var_321_95 = math.floor(var_321_91 - var_321_94 * var_321_93 * 0.5 + (var_321_82.offsetX or 0) + 0.5)
					end

					local var_321_96 = var_321_89 + math.floor((var_321_82.yFracTitle or 0.18) * var_321_87 + 0.5)
					local var_321_97 = math.floor(var_321_20 + var_321_96 + (var_321_82.titleOffsetY or 0) + 0.5)
					local var_321_98 = var_321_82.titleColor or {
						1,
						1,
						1,
						1
					}

					love.graphics.setColor(var_321_98[1] or 1, var_321_98[2] or 1, var_321_98[3] or 1, (var_321_98[4] or 1) * var_321_90)
					love.graphics.print(var_321_92, var_321_95, var_321_97, 0, var_321_93, var_321_93)
				end

				local var_321_99 = var_0_93(var_0_92 or 0)

				if var_321_99 ~= "" then
					local var_321_100 = var_321_82.timeScale or 1
					local var_321_101 = var_321_85 and var_321_85:getWidth(var_321_99) or 0
					local var_321_102

					if var_321_82.align == "left" then
						var_321_102 = var_321_88 + (var_321_82.offsetX or 0)
					else
						var_321_102 = math.floor(var_321_91 - var_321_101 * var_321_100 * 0.5 + (var_321_82.offsetX or 0) + 0.5)
					end

					local var_321_103 = var_321_89 + math.floor((var_321_82.yFracTime or 0.35) * var_321_87 + 0.5)
					local var_321_104 = math.floor(var_321_20 + var_321_103 + (var_321_82.timeOffsetY or 0) + 0.5)
					local var_321_105 = var_321_82.timeColor or {
						1,
						1,
						1,
						1
					}

					love.graphics.setColor(var_321_105[1] or 1, var_321_105[2] or 1, var_321_105[3] or 1, (var_321_105[4] or 1) * var_321_90)
					love.graphics.print(var_321_99, var_321_102, var_321_104, 0, var_321_100, var_321_100)
				end

				love.graphics.setColor(1, 1, 1, 1)

				if var_321_84 then
					love.graphics.setFont(var_321_84)
				end
			end

			local var_321_106 = ui and ui.pauseOverlay and ui.pauseOverlay.pauseTitle

			if var_321_106 and var_321_106.enabled ~= false and var_321_3 then
				local var_321_107 = love.graphics.getFont()
				local var_321_108 = ui and ui.fontPauseTitle or var_321_107

				if var_321_108 then
					love.graphics.setFont(var_321_108)
				end

				local var_321_109 = ui and ui.menuSettings and ui.menuSettings.language or "ko"
				local var_321_110 = var_0_7.getText(var_321_106.text or "menu_pause", var_321_109)
				local var_321_111 = var_321_106.settingsText or var_0_7.getText("settings_title", var_321_109)
				local var_321_112

				if var_321_21 then
					var_321_112 = tostring(var_321_111)
				else
					var_321_112 = tostring(var_321_110)
				end

				local var_321_113 = var_321_106.scale or 1
				local var_321_114 = var_321_3:getWidth()
				local var_321_115 = var_321_3:getHeight()
				local var_321_116 = math.floor((ui and ui.pauseOverlay and ui.pauseOverlay.pauseBackground and ui.pauseOverlay.pauseBackground.offsetX or 0) + 0.5)
				local var_321_117 = math.floor((ui and ui.pauseOverlay and ui.pauseOverlay.pauseBackground and ui.pauseOverlay.pauseBackground.offsetY or 0) + 0.5)
				local var_321_118 = var_321_117
				local var_321_119 = 1

				if var_321_22 and not var_321_21 then
					var_321_118 = var_321_117 - var_321_29 * var_321_28
					var_321_119 = 1 - var_321_28
				elseif var_321_21 then
					local var_321_120 = 0.08
					local var_321_121 = 0.45
					local var_321_122 = var_321_19.settingsPaperT or 0

					if var_321_122 < var_321_120 then
						var_321_119 = 0
						var_321_118 = var_321_117 - 40
					else
						local var_321_123 = math.min(1, (var_321_122 - var_321_120) / var_321_121)
						local var_321_124 = var_321_27(var_321_123)

						var_321_119 = var_321_123
						var_321_118 = var_321_117 - 40 * (1 - var_321_124)
					end
				end

				local var_321_125 = var_321_116 + math.floor(var_321_114 * 0.5 + 0.5)
				local var_321_126 = var_321_118 + math.floor((var_321_106.yFrac or 0.22) * var_321_115 + 0.5)
				local var_321_127 = var_321_108 and var_321_108:getWidth(var_321_112) or 0
				local var_321_128

				if var_321_106.align == "left" then
					var_321_128 = var_321_116 + (var_321_106.offsetX or 0)
				else
					var_321_128 = math.floor(var_321_125 - var_321_127 * var_321_113 * 0.5 + (var_321_106.offsetX or 0) + 0.5)
				end

				local var_321_129 = math.floor(var_321_20 + var_321_126 + (var_321_106.offsetY or 0) + 0.5)
				local var_321_130 = var_321_106.color or {
					1,
					1,
					1,
					1
				}

				love.graphics.setColor(var_321_130[1] or 1, var_321_130[2] or 1, var_321_130[3] or 1, var_321_119 * (var_321_130[4] or 1))
				love.graphics.print(var_321_112, var_321_128, var_321_129, 0, var_321_113, var_321_113)
				love.graphics.setColor(1, 1, 1, 1)

				if var_321_107 then
					love.graphics.setFont(var_321_107)
				end
			end

			local var_321_131 = ui and ui.pauseOverlay and ui.pauseOverlay.buttonRopes

			if var_321_8 and var_321_131 and var_321_131.enabled and var_321_131.positions then
				local var_321_132 = var_321_131.scale or 1
				local var_321_133 = math.floor((var_321_131.offsetX or 0) + 0.5)
				local var_321_134 = math.floor((var_321_131.offsetY or 0) + 0.5)

				love.graphics.setColor(1, 1, 1, 1)

				local var_321_135 = var_321_131.motion
				local var_321_136 = love.timer and love.timer.getTime and love.timer.getTime() or 0

				local function var_321_137(arg_323_0)
					if var_321_135 and var_321_135.enabled and (var_321_135.amplitudePx or 0) > 0 and (var_321_135.periodSec or 0) > 0 then
						local var_323_0 = var_321_135.amplitudePx or 0
						local var_323_1 = 2 * math.pi / (var_321_135.periodSec or 1)
						local var_323_2 = (var_321_135.basePhase or 0) + (arg_323_0 - 1) * (var_321_135.phaseStep or 0)
						local var_323_3 = var_323_0 * math.sin(var_323_2 + var_323_1 * var_321_136)

						return math.floor(var_323_3 + 0.5)
					end

					return 0
				end

				local var_321_138 = {}

				for iter_321_0, iter_321_1 in ipairs(var_321_131.positions) do
					local var_321_139 = math.floor((iter_321_1.x or 0) + var_321_133 + 0.5)

					table.insert(var_321_138, {
						idx = iter_321_0,
						x = var_321_139
					})
				end

				table.sort(var_321_138, function(arg_324_0, arg_324_1)
					return arg_324_0.x < arg_324_1.x
				end)

				local var_321_140 = var_321_138[1] and var_321_138[1].idx or nil
				local var_321_141 = var_321_138[2] and var_321_138[2].idx or nil
				local var_321_142 = var_321_138[3] and var_321_138[3].idx or nil
				local var_321_143 = var_321_138[4] and var_321_138[4].idx or nil
				local var_321_144 = var_321_138[5] and var_321_138[5].idx or nil
				local var_321_145 = ui and ui.pauseOverlay and ui.pauseOverlay.wikiButtonDark

				if var_321_145 and not var_321_145.enabled then
					var_321_144 = var_321_143
					var_321_143 = var_321_142
					var_321_142 = nil
				end

				local var_321_146 = ui and ui.pauseOverlay and ui.pauseOverlay.playButtonDark
				local var_321_147 = var_321_19 and var_321_19.playHovered or false
				local var_321_148
				local var_321_149
				local var_321_150
				local var_321_151 = var_321_19 and var_321_19.buttonRopeDrop and var_321_140 and var_321_19.buttonRopeDrop[var_321_140] or 0

				if (var_321_9 or var_321_10) and var_321_146 and var_321_146.enabled and var_321_140 then
					local var_321_152 = var_321_131.positions[var_321_140]
					local var_321_153 = var_321_146.scale or 1
					local var_321_154 = math.floor((var_321_146.offsetX or 0) + 0.5)
					local var_321_155 = math.floor((var_321_146.offsetY or 0) + 0.5)
					local var_321_156 = math.floor((var_321_152.x or 0) + var_321_133 + var_321_154 + 0.5)
					local var_321_157 = math.floor((var_321_152.y or 0) + var_321_134 + var_321_20 + var_321_155 + var_321_137(var_321_140) + var_321_151 + 0.5)
					local var_321_158 = var_321_9 and var_321_9:getWidth() or var_321_10 and var_321_10:getWidth() or 0
					local var_321_159 = var_321_156

					if var_321_146.alignCenterX then
						var_321_159 = math.floor(var_321_156 - var_321_158 * var_321_153 * 0.5 + 0.5)
					end

					local var_321_160, var_321_161 = var_321_159, var_321_157, var_321_153

					love.graphics.setColor(1, 1, 1, 1)

					if var_321_147 and var_321_10 then
						love.graphics.draw(var_321_10, var_321_159, var_321_157, 0, var_321_153, var_321_153)
					elseif var_321_9 then
						love.graphics.draw(var_321_9, var_321_159, var_321_157, 0, var_321_153, var_321_153)
					end
				end

				local var_321_162 = ui and ui.pauseOverlay and ui.pauseOverlay.replayButtonDark
				local var_321_163 = (ui and ui._restartConfirm and ui._restartConfirm.active) == true and (ui._restartConfirm.action == "restart" or ui._restartConfirm.action == nil)
				local var_321_164 = (var_321_19 and var_321_19.replayHovered or var_321_163) and true or false
				local var_321_165 = var_321_19 and var_321_19.buttonRopeDrop and var_321_141 and var_321_19.buttonRopeDrop[var_321_141] or 0

				if (var_321_11 or var_321_12) and var_321_162 and var_321_162.enabled and var_321_141 then
					local var_321_166 = var_321_131.positions[var_321_141]
					local var_321_167 = var_321_162.scale or 1
					local var_321_168 = math.floor((var_321_162.offsetX or 0) + 0.5)
					local var_321_169 = math.floor((var_321_162.offsetY or 0) + 0.5)
					local var_321_170 = math.floor((var_321_166.x or 0) + var_321_133 + var_321_168 + 0.5)
					local var_321_171 = math.floor((var_321_166.y or 0) + var_321_134 + var_321_20 + var_321_169 + var_321_137(var_321_141) + var_321_165 + 0.5)
					local var_321_172 = var_321_11 and var_321_11:getWidth() or var_321_12 and var_321_12:getWidth() or 0
					local var_321_173 = var_321_170

					if var_321_162.alignCenterX then
						var_321_173 = math.floor(var_321_170 - var_321_172 * var_321_167 * 0.5 + 0.5)
					end

					love.graphics.setColor(1, 1, 1, 1)

					if var_321_164 and var_321_12 then
						love.graphics.draw(var_321_12, var_321_173, var_321_171, 0, var_321_167, var_321_167)
					elseif var_321_11 then
						love.graphics.draw(var_321_11, var_321_173, var_321_171, 0, var_321_167, var_321_167)
					end
				end

				local var_321_174 = ui and ui.pauseOverlay and ui.pauseOverlay.wikiButtonDark
				local var_321_175 = var_321_19 and var_321_19.wikiHovered or false
				local var_321_176 = var_321_19 and var_321_19.buttonRopeDrop and var_321_142 and var_321_19.buttonRopeDrop[var_321_142] or 0

				if (var_321_13 or var_321_14) and var_321_174 and var_321_174.enabled and var_321_142 then
					local var_321_177 = var_321_131.positions[var_321_142]
					local var_321_178 = var_321_174.scale or 1
					local var_321_179 = math.floor((var_321_174.offsetX or 0) + 0.5)
					local var_321_180 = math.floor((var_321_174.offsetY or 0) + 0.5)
					local var_321_181 = math.floor((var_321_177.x or 0) + var_321_133 + var_321_179 + 0.5)
					local var_321_182 = math.floor((var_321_177.y or 0) + var_321_134 + var_321_20 + var_321_180 + var_321_137(var_321_142) + var_321_176 + 0.5)
					local var_321_183 = var_321_13 and var_321_13:getWidth() or var_321_14 and var_321_14:getWidth() or 0
					local var_321_184 = var_321_181

					if var_321_174.alignCenterX then
						var_321_184 = math.floor(var_321_181 - var_321_183 * var_321_178 * 0.5 + 0.5)
					end

					love.graphics.setColor(1, 1, 1, 1)

					if var_321_175 and var_321_14 then
						love.graphics.draw(var_321_14, var_321_184, var_321_182, 0, var_321_178, var_321_178)
					elseif var_321_13 then
						love.graphics.draw(var_321_13, var_321_184, var_321_182, 0, var_321_178, var_321_178)
					end
				end

				local var_321_185 = ui and ui.pauseOverlay and ui.pauseOverlay.optionButtonDark
				local var_321_186 = (var_321_19 and var_321_19.optionHovered or var_321_21 == true) and true or false
				local var_321_187 = var_321_19 and var_321_19.buttonRopeDrop and var_321_143 and var_321_19.buttonRopeDrop[var_321_143] or 0

				if (var_321_15 or var_321_16) and var_321_185 and var_321_185.enabled and var_321_143 then
					local var_321_188 = var_321_131.positions[var_321_143]
					local var_321_189 = var_321_185.scale or 1
					local var_321_190 = math.floor((var_321_185.offsetX or 0) + 0.5)
					local var_321_191 = math.floor((var_321_185.offsetY or 0) + 0.5)
					local var_321_192 = math.floor((var_321_188.x or 0) + var_321_133 + var_321_190 + 0.5)
					local var_321_193 = math.floor((var_321_188.y or 0) + var_321_134 + var_321_20 + var_321_191 + var_321_137(var_321_143) + var_321_187 + 0.5)
					local var_321_194 = var_321_15 and var_321_15:getWidth() or var_321_16 and var_321_16:getWidth() or 0
					local var_321_195 = var_321_192

					if var_321_185.alignCenterX then
						var_321_195 = math.floor(var_321_192 - var_321_194 * var_321_189 * 0.5 + 0.5)
					end

					love.graphics.setColor(1, 1, 1, 1)

					if var_321_186 and var_321_16 then
						love.graphics.draw(var_321_16, var_321_195, var_321_193, 0, var_321_189, var_321_189)
					elseif var_321_15 then
						love.graphics.draw(var_321_15, var_321_195, var_321_193, 0, var_321_189, var_321_189)
					end
				end

				local var_321_196 = ui and ui.pauseOverlay and ui.pauseOverlay.toMainMenuButtonDark
				local var_321_197 = var_321_19 and var_321_19.toMainHovered or false
				local var_321_198 = var_321_19 and var_321_19.buttonRopeDrop and var_321_144 and var_321_19.buttonRopeDrop[var_321_144] or 0

				if (var_321_17 or var_321_18) and var_321_196 and var_321_196.enabled and var_321_144 then
					local var_321_199 = var_321_131.positions[var_321_144]
					local var_321_200 = var_321_196.scale or 1
					local var_321_201 = math.floor((var_321_196.offsetX or 0) + 0.5)
					local var_321_202 = math.floor((var_321_196.offsetY or 0) + 0.5)
					local var_321_203 = math.floor((var_321_199.x or 0) + var_321_133 + var_321_201 + 0.5)
					local var_321_204 = math.floor((var_321_199.y or 0) + var_321_134 + var_321_20 + var_321_202 + var_321_137(var_321_144) + var_321_198 + 0.5)
					local var_321_205 = var_321_17 and var_321_17:getWidth() or var_321_18 and var_321_18:getWidth() or 0
					local var_321_206 = var_321_203

					if var_321_196.alignCenterX then
						var_321_206 = math.floor(var_321_203 - var_321_205 * var_321_200 * 0.5 + 0.5)
					end

					love.graphics.setColor(1, 1, 1, 1)

					if var_321_197 and var_321_18 then
						love.graphics.draw(var_321_18, var_321_206, var_321_204, 0, var_321_200, var_321_200)
					elseif var_321_17 then
						love.graphics.draw(var_321_17, var_321_206, var_321_204, 0, var_321_200, var_321_200)
					end
				end

				for iter_321_2, iter_321_3 in ipairs(var_321_131.positions) do
					local var_321_207 = math.floor((iter_321_3.x or 0) + var_321_133 + 0.5)
					local var_321_208 = var_321_19 and var_321_19.buttonRopeDrop and var_321_19.buttonRopeDrop[iter_321_2] or 0
					local var_321_209 = math.floor((iter_321_3.y or 0) + var_321_134 + var_321_20 + var_321_137(iter_321_2) + var_321_208 + 0.5)

					love.graphics.draw(var_321_8, var_321_207, var_321_209, 0, var_321_132, var_321_132)
				end
			end

			if var_321_5 then
				local var_321_210 = ui and ui.pauseOverlay and ui.pauseOverlay.topbarYOffsetPx or 0

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_321_5, 0, var_321_20 + var_321_210)
			end

			if var_321_1 then
				local var_321_211 = ui and ui.pauseOverlay and ui.pauseOverlay.ropeYOffsetPx or 0

				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_321_1, 0, var_321_20 + var_321_211)
			end

			love.graphics.pop()
		end
	end

	var_284_1072(false)

	if battlefield and battlefield.gameOver then
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)
		love.graphics.push("all")
		var_0_11.drawGameOverScreen(ui, nil, battlefield, loadedAssets)
		love.graphics.pop()

		if _G.Render2 and _G.Render2.drawDpsButton and lastLayout and lastLayout.right and ui and ui.virtual then
			local var_284_1073 = ui.virtual.W or 640
			local var_284_1074 = ui.virtual.H or 360

			if not ui._gameOverDpsCanvas or ui._gameOverDpsCanvas:getWidth() ~= var_284_1073 or ui._gameOverDpsCanvas:getHeight() ~= var_284_1074 then
				if ui._gameOverDpsCanvas then
					ui._gameOverDpsCanvas:release()
				end

				ui._gameOverDpsCanvas = love.graphics.newCanvas(var_284_1073, var_284_1074)

				ui._gameOverDpsCanvas:setFilter("nearest", "nearest")
			end

			love.graphics.push("all")
			love.graphics.setCanvas(ui._gameOverDpsCanvas)
			love.graphics.origin()
			love.graphics.clear(0, 0, 0, 0)
			_G.Render2.drawDpsButton(ui, lastLayout.right, loadedAssets, false, false, battlefield)
			love.graphics.pop()
			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.draw(ui._gameOverDpsCanvas, 0, 0)

			if _G.Render2.drawDpsTitleOverlay then
				_G.Render2.drawDpsTitleOverlay(ui)
			end
		end

		if tooltip then
			tooltip:draw(battlefield)
		end

		love.graphics.pop()
	end

	if upgradeTransition.active and upgradeTransition.state == "in" then
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)

		local var_284_1075 = upgradeTransition.maxR

		if not var_284_1075 or var_284_1075 <= 0 then
			local var_284_1076 = ui and ui.virtual and ui.virtual.W or 1280
			local var_284_1077 = ui and ui.virtual and ui.virtual.H or 720
			local var_284_1078 = math.max(upgradeTransition.cx or var_284_1076 / 2, var_284_1076 - (upgradeTransition.cx or var_284_1076 / 2))
			local var_284_1079 = math.max(upgradeTransition.cy or var_284_1077 / 2, var_284_1077 - (upgradeTransition.cy or var_284_1077 / 2))

			var_284_1075 = math.sqrt(var_284_1078 * var_284_1078 + var_284_1079 * var_284_1079)
		end

		love.graphics.stencil(function()
			local var_325_0 = upgradeTransition.dur and upgradeTransition.dur > 0 and upgradeTransition.t / upgradeTransition.dur * var_284_1075 or var_284_1075

			love.graphics.circle("fill", upgradeTransition.cx, upgradeTransition.cy, var_325_0)
		end, "replace", 1)
		love.graphics.setStencilTest("greater", 0)
		var_0_17.draw(ui, var_0_16.getOriginiteAmount and var_0_16.getOriginiteAmount() or 0, true)
		love.graphics.setStencilTest()
		love.graphics.pop()
	end

	local function var_284_1080()
		local var_326_0 = ui and ui._restartConfirm
		local var_326_1 = loadedAssets and loadedAssets.ui and loadedAssets.ui.messageWindow

		if var_326_0 and var_326_0.active and var_326_1 then
			love.graphics.push()
			love.graphics.translate(screenOffsetX, screenOffsetY)
			love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)

			local var_326_2 = var_326_1:getWidth()
			local var_326_3 = var_326_1:getHeight()
			local var_326_4 = ui and ui.restartConfirm or {}
			local var_326_5 = var_326_4.centerX or math.floor(ui.virtual.W * (var_326_4.centerFracX or 0.5) + 0.5)

			if not var_326_4.centerY then
				local var_326_6 = math.floor(ui.virtual.H * (var_326_4.centerFracY or 0.5) + 0.5)
			end

			local var_326_7 = var_326_4.boardOffsetX or 0

			if not var_326_4.boardOffsetY then
				local var_326_8 = 0
			end

			local var_326_9 = math.floor(var_326_5 - var_326_2 * 0.5 + var_326_7 + 0.5)
			local var_326_10 = math.floor((var_326_0.y or ui.virtual.H) + 0.5)

			var_0_16.drawMessageWindow(var_326_1, var_326_9, var_326_10, ui, 1)

			local var_326_11 = var_326_4.font or ui and ui.coreMessage and ui.coreMessage.font or ui.font or love.graphics.getFont()

			love.graphics.setFont(var_326_11)

			local var_326_12 = var_326_0.prompt or var_0_7.getText("pause_restart_confirm", _G.currentGameLang or "ko")
			local var_326_13 = var_326_11:getWidth(var_326_12)
			local var_326_14 = var_326_11:getHeight()
			local var_326_15 = var_326_4.prompt or {}
			local var_326_16 = math.floor((ui.virtual.W - var_326_13) * 0.5 + (var_326_15.offsetX or 0) + 0.5)
			local var_326_17 = var_326_10 + math.max(var_326_15.topPadMinPx or 16, math.floor(var_326_3 * (var_326_15.yFrac or 0.24))) + (var_326_15.offsetY or 0)
			local var_326_18 = var_326_15.color or {
				0.898,
				0.886,
				0.941,
				1
			}

			love.graphics.setColor(var_326_18)
			love.graphics.print(var_326_12, var_326_16, var_326_17)

			local var_326_19 = var_0_7.getText("pause_yes", _G.currentGameLang or "ko")
			local var_326_20 = var_0_7.getText("pause_no", _G.currentGameLang or "ko")
			local var_326_21 = var_326_11:getWidth(var_326_19)
			local var_326_22 = var_326_11:getWidth(var_326_20)
			local var_326_23 = var_326_14
			local var_326_24 = var_326_4.hitPad and var_326_4.hitPad.x or 12
			local var_326_25 = var_326_4.hitPad and var_326_4.hitPad.y or 6
			local var_326_26 = var_326_4.yes or {}
			local var_326_27 = var_326_4.no or {}
			local var_326_28 = var_326_10 + var_326_3 - var_326_23 - math.max(var_326_4.bottomPadMinPx or 10, math.floor(var_326_3 * (var_326_26.yFracFromBottom or 0.1)))
			local var_326_29 = math.max(var_326_4.sidePadMinPx or 10, math.floor(var_326_2 * (var_326_26.xFrac or 0.06)))
			local var_326_30 = math.max(var_326_4.sidePadMinPx or 10, math.floor(var_326_2 * (var_326_27.xFrac or 0.06)))
			local var_326_31 = var_326_9 + var_326_29 + (var_326_26.offsetX or 0)
			local var_326_32 = var_326_9 + var_326_2 - var_326_30 - var_326_22 + (var_326_27.offsetX or 0)
			local var_326_33 = var_326_28 + (var_326_26.offsetY or 0)
			local var_326_34 = var_326_28 + (var_326_27.offsetY or 0)
			local var_326_35 = var_326_26.color or {
				0.949,
				0.902,
				0.788,
				1
			}
			local var_326_36 = var_326_27.color or {
				0.949,
				0.902,
				0.788,
				1
			}

			love.graphics.setColor(var_326_35)
			love.graphics.print(var_326_19, var_326_31, var_326_33)
			love.graphics.setColor(var_326_36)
			love.graphics.print(var_326_20, var_326_32, var_326_34)

			var_326_0.rectYes = {
				x = var_326_31 - var_326_24,
				y = var_326_33 - var_326_25,
				w = var_326_21 + var_326_24 * 2,
				h = var_326_23 + var_326_25 * 2
			}
			var_326_0.rectNo = {
				x = var_326_32 - var_326_24,
				y = var_326_34 - var_326_25,
				w = var_326_22 + var_326_24 * 2,
				h = var_326_23 + var_326_25 * 2
			}

			local var_326_37 = var_326_4.hoverUnderline

			if var_326_37 and var_326_37.enabled ~= false and not var_326_0.leaving then
				local var_326_38 = ui and ui.battle and ui.battle.unitScale or 1
				local var_326_39 = math.max(1, math.floor((var_326_37.thicknessSourcePx or 1) * var_326_38 + 0.5))
				local var_326_40 = var_326_37.gapPx or 2
				local var_326_41 = var_326_37.padX or 0

				love.graphics.setColor(var_326_37.color or {
					0.9490196078431372,
					0.6509803921568628,
					0.3686274509803922,
					1
				})

				if var_326_0.ulYesProg and var_326_0.ulYesProg > 0 then
					local var_326_42 = var_326_31 - var_326_24 - var_326_41
					local var_326_43 = var_326_21 + var_326_24 * 2 + var_326_41 * 2
					local var_326_44 = math.max(1, math.floor(var_326_43 * var_326_0.ulYesProg + 0.5))
					local var_326_45 = var_326_33 + var_326_23 + var_326_40

					love.graphics.rectangle("fill", math.floor(var_326_42 + 0.5), math.floor(var_326_45 + 0.5), var_326_44, var_326_39)
				end

				if var_326_0.ulNoProg and var_326_0.ulNoProg > 0 then
					local var_326_46 = var_326_32 - var_326_24 - var_326_41
					local var_326_47 = var_326_22 + var_326_24 * 2 + var_326_41 * 2
					local var_326_48 = math.max(1, math.floor(var_326_47 * var_326_0.ulNoProg + 0.5))
					local var_326_49 = var_326_34 + var_326_23 + var_326_40

					love.graphics.rectangle("fill", math.floor(var_326_46 + 0.5), math.floor(var_326_49 + 0.5), var_326_48, var_326_39)
				end
			end

			love.graphics.pop()
		end
	end

	local var_284_1081 = ui and ui._stoneActivated

	if var_284_1081 and var_284_1081.active and lastLayout then
		local var_284_1082 = 0

		if var_284_1081.phase == "fadein" then
			var_284_1082 = math.min(1, (var_284_1081.t or 0) / math.max(0.001, var_284_1081.fadeInDur or 0.5))
		elseif var_284_1081.phase == "fadeout" then
			var_284_1082 = math.max(0, 1 - (var_284_1081.t or 0) / math.max(0.001, var_284_1081.fadeOutDur or 0.4))
		else
			var_284_1082 = 1
		end

		local var_284_1083 = var_284_1082 * 0.65

		if ui and ui.pauseOverlayState and ui.pauseOverlayState.active and var_284_1081._pauseReleaseDur and var_284_1081._pauseReleaseDur > 0 then
			var_284_1083 = var_284_1083 * (1 - math.max(0, math.min(1, (var_284_1081._pauseReleaseT or 0) / var_284_1081._pauseReleaseDur)))
		end

		if var_284_1083 > 0.001 then
			love.graphics.push()
			love.graphics.translate(screenOffsetX, screenOffsetY)
			love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)

			local var_284_1084 = ui and ui.virtual and ui.virtual.W or 640
			local var_284_1085 = ui and ui.virtual and ui.virtual.H or 360
			local var_284_1086 = ui and ui.pauseOverlayState and ui.pauseOverlayState.active
			local var_284_1087 = math.floor((ui and ui.slot and ui.slot.stickyOffsetY or 0) + 0.5)
			local var_284_1088 = math.floor((spinPressShake and spinPressShake.y or 0) + 0.5)
			local var_284_1089 = var_0_108()
			local var_284_1090 = slotBgJitter and slotBgJitter.x or 0
			local var_284_1091 = slotBgJitter and slotBgJitter.y or 0
			local var_284_1092 = spinShake.x or 0
			local var_284_1093 = spinShake.y or 0
			local var_284_1094 = slotBgAnim and slotBgAnim.y or 0
			local var_284_1095 = math.floor((ui and ui.slot and ui.slot.ropeOffsetY or 0) + 0.5)

			local function var_284_1096(arg_327_0, arg_327_1, arg_327_2)
				if not arg_327_0 then
					return
				end

				local var_327_0 = arg_327_0:getWidth()
				local var_327_1 = arg_327_0:getHeight()

				if var_327_0 > 0 and var_327_1 > 0 then
					if var_327_0 == var_284_1084 and var_327_1 == var_284_1085 then
						love.graphics.draw(arg_327_0, arg_327_1 or 0, arg_327_2 or 0)
					else
						love.graphics.draw(arg_327_0, arg_327_1 or 0, arg_327_2 or 0, 0, var_284_1084 / var_327_0, var_284_1085 / var_327_1)
					end
				end
			end

			local var_284_1097 = var_0_97.getAlphaDiscardShader()

			love.graphics.stencil(function()
				love.graphics.setShader(var_284_1097)
				love.graphics.setColor(1, 1, 1, 1)

				local var_328_0 = slotBgSquash and slotBgSquash.sx or 1
				local var_328_1 = slotBgSquash and slotBgSquash.sy or 1
				local var_328_2 = math.floor(var_284_1092 + 0) + var_284_1090
				local var_328_3 = math.floor(var_284_1094 + var_284_1093 + var_284_1088 + var_284_1087 + var_284_1089 + 0.5) + var_284_1091
				local var_328_4 = var_284_1084 * 0.5
				local var_328_5 = var_284_1085 * 0.5
				local var_328_6 = lastLayout.slotPanel

				if var_328_6 then
					local var_328_7 = ui and ui.slot and ui.slot.lineHitSquash or {}

					var_328_4 = var_328_6.x + var_328_6.w * 0.5 + (var_328_7.anchorOffsetX or 0)
					var_328_5 = var_328_6.y + var_328_6.h * 0.5 + (var_328_7.anchorOffsetY or 0)
				end

				if backgroundSlotImage then
					local var_328_8 = backgroundSlotImage:getWidth()
					local var_328_9 = backgroundSlotImage:getHeight()

					if var_328_8 > 0 and var_328_9 > 0 then
						local var_328_10 = var_284_1084 / var_328_8
						local var_328_11 = var_284_1085 / var_328_9

						love.graphics.draw(backgroundSlotImage, var_328_2 + (1 - var_328_0) * var_328_4, var_328_3 + (1 - var_328_1) * var_328_5, 0, var_328_10 * var_328_0, var_328_11 * var_328_1)
					end
				end

				var_284_1096(backgroundSlotRopeImage, math.floor(var_284_1092 + 0) + var_284_1090, math.floor(var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_284_1095 + 0.5) + var_284_1091)
				var_284_1096(backgroundMonsterBodyImage, math.floor(var_284_1092 + var_284_1090 + 0), math.floor(var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_284_1091 + 0.5))

				local var_328_12 = backgroundMonsterHeadImage

				if monsterHeadAnim and monsterHeadAnim.mode == "laugh" and backgroundMonsterHeadLaughImage then
					var_328_12 = backgroundMonsterHeadLaughImage
				end

				if var_328_12 then
					local var_328_13 = 0
					local var_328_14 = ui and ui.monster and ui.monster.headIdle or {
						ampPx = 1,
						freq = 0.5
					}
					local var_328_15 = math.max(0, var_328_14.ampPx or 1)
					local var_328_16 = var_328_14.freq or 0.5

					if var_328_15 > 0 and var_328_16 > 0 then
						if monsterHeadAnim and monsterHeadAnim.mode == "laugh" then
							var_328_13 = math.floor(math.sin(2 * math.pi * (monsterHeadAnim.freq or 12) * (monsterHeadAnim.t or 0)) * (monsterHeadAnim.ampPx or 2) + 0.5)
						else
							var_328_13 = math.floor(math.sin(2 * math.pi * var_328_16 * (var_0_69 or 0)) * var_328_15 + 0.5)
						end
					end

					local var_328_17 = math.floor(var_284_1092 + var_284_1090 + 0)
					local var_328_18 = math.floor(var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_328_13 + var_284_1091 + 0.5)

					var_284_1096(backgroundMonsterHeadShadowImage, var_328_17, var_328_18)
					var_284_1096(var_328_12, var_328_17, var_328_18)
				end

				var_284_1096(backgroundSlotLeftImage, math.floor(var_284_1092 + var_284_1090 + 0), math.floor(var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_284_1091 + 0.5))

				local var_328_19 = slotBgSquash and slotBgSquash.sx or 1
				local var_328_20 = slotBgSquash and slotBgSquash.sy or 1
				local var_328_21 = math.floor(var_284_1092 + 0) + var_284_1090
				local var_328_22 = math.floor(var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + 0.5) + var_284_1091
				local var_328_23 = var_284_1084 * 0.5
				local var_328_24 = var_284_1085 * 0.5
				local var_328_25 = lastLayout.slotPanel

				if var_328_25 then
					local var_328_26 = ui and ui.slot and ui.slot.lineHitSquash or {}

					var_328_23 = var_328_25.x + var_328_25.w * 0.5 + (var_328_26.anchorOffsetX or 0)
					var_328_24 = var_328_25.y + var_328_25.h * 0.5 + (var_328_26.anchorOffsetY or 0)
				end

				if backgroundSlotShadowImage then
					local var_328_27 = backgroundSlotShadowImage:getWidth()
					local var_328_28 = backgroundSlotShadowImage:getHeight()

					if var_328_27 > 0 and var_328_28 > 0 then
						local var_328_29 = var_284_1084 / var_328_27
						local var_328_30 = var_284_1085 / var_328_28

						love.graphics.draw(backgroundSlotShadowImage, var_328_21 + (1 - var_328_19) * var_328_23, var_328_22 + (1 - var_328_20) * var_328_24, 0, var_328_29 * var_328_19, var_328_30 * var_328_20)
					end
				end

				local var_328_31 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick
				local var_328_32 = lastLayout.slotPanel

				if var_328_31 and var_328_31.image and var_328_31.quads and var_328_31.quads[1] and var_328_32 then
					local var_328_33 = ui and ui.spinstick or {}
					local var_328_34 = var_328_32.x + var_328_32.w + (var_328_33.offsetX or 4)
					local var_328_35 = var_328_32.y + (var_328_33.offsetY or 0)
					local var_328_36 = math.floor(var_328_34 + var_284_1092 + var_284_1090 + 0.5)
					local var_328_37 = math.floor(var_328_35 + var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_284_1091 + 0.5)
					local var_328_38 = var_328_31.frames or #var_328_31.quads
					local var_328_39 = 1

					if spinStickAnim and spinStickAnim.playing and var_328_38 > 1 then
						var_328_39 = math.max(1, math.min(var_328_38, spinStickAnim.frame or 1))
					end

					love.graphics.draw(var_328_31.image, var_328_31.quads[var_328_39] or var_328_31.quads[1], var_328_36, var_328_37)
				end

				if lastLayout and lastLayout.nudgeBtns then
					local var_328_40 = loadedAssets and loadedAssets.ui and loadedAssets.ui.nudgeButton
					local var_328_41 = loadedAssets and loadedAssets.ui and loadedAssets.ui.nudgeButtonQuads

					if var_328_40 and var_328_41 then
						local var_328_42 = math.max(1, math.floor((ui and ui.scale or 1) + 0.5))
						local var_328_43 = math.floor(var_284_1092 + var_284_1090 + 0.5)
						local var_328_44 = math.floor(var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_284_1088 + var_284_1091 + 0.5)

						for iter_328_0, iter_328_1 in ipairs(lastLayout.nudgeBtns) do
							local var_328_45 = math.floor(iter_328_1.x + var_328_43 + 0.5)
							local var_328_46 = math.floor(iter_328_1.y + var_328_44 + 0.5)

							love.graphics.draw(var_328_40, var_328_41[1], var_328_45, var_328_46, 0, var_328_42, var_328_42)
						end
					end
				end

				love.graphics.setShader()
			end, "replace", 1)
			love.graphics.setStencilTest("equal", 0)
			love.graphics.setColor(0, 0, 0, var_284_1083)
			love.graphics.rectangle("fill", 0, 0, var_284_1084, var_284_1085)

			local var_284_1098 = var_0_97.getStoneSlotBackEffectShader()

			if var_284_1098 then
				local var_284_1099 = var_284_1084 * 0.5
				local var_284_1100 = var_284_1085 * 0.5
				local var_284_1101 = lastLayout and lastLayout.slotPanel

				if var_284_1101 then
					local var_284_1102 = ui and ui.slot and ui.slot.lineHitSquash or {}

					var_284_1099 = var_284_1101.x + var_284_1101.w * 0.5 + (var_284_1102.anchorOffsetX or 0)
					var_284_1100 = var_284_1101.y + var_284_1101.h * 0.5 + (var_284_1102.anchorOffsetY or 0)
				end

				local var_284_1103 = 1

				if var_284_1081.phase == "fadein" then
					var_284_1103 = math.min(1, (var_284_1081.t or 0) / math.max(0.001, var_284_1081.fadeInDur or 0.5))
				elseif var_284_1081.phase == "fadeout" then
					var_284_1103 = math.max(0, 1 - (var_284_1081.t or 0) / math.max(0.001, var_284_1081.fadeOutDur or 0.4))
				end

				local var_284_1104, var_284_1105 = love.graphics.getBlendMode()

				love.graphics.setShader(var_284_1098)
				love.graphics.setBlendMode("add", "alphamultiply")
				var_284_1098:send("u_time", love.timer.getTime())

				local var_284_1106 = screenOffsetX + var_284_1099 * screenScale
				local var_284_1107 = screenOffsetY + var_284_1100 * screenScale
				local var_284_1108 = screenOffsetX * 2 + var_284_1084 * screenScale
				local var_284_1109 = screenOffsetY * 2 + var_284_1085 * screenScale

				var_284_1098:send("u_center", {
					var_284_1106,
					var_284_1107
				})
				var_284_1098:send("u_resolution", {
					var_284_1108,
					var_284_1109
				})
				var_284_1098:send("u_intensity", var_284_1103)

				local var_284_1110 = 1
				local var_284_1111 = var_284_1081 and var_284_1081.stoneKey

				if var_284_1111 == "OriginStone" then
					var_284_1110 = 0
				elseif var_284_1111 == "MileStone" then
					var_284_1110 = 1
				elseif var_284_1111 == "BlessingStone" then
					var_284_1110 = 2
				end

				var_284_1098:send("u_stone_type", var_284_1110)

				if ui and not ui._unitSpawnBannerWhitePixel then
					local var_284_1112 = love.image.newImageData(1, 1)

					var_284_1112:setPixel(0, 0, 1, 1, 1, 1)

					ui._unitSpawnBannerWhitePixel = love.graphics.newImage(var_284_1112)
				end

				local var_284_1113 = ui and ui._unitSpawnBannerWhitePixel

				if var_284_1113 then
					love.graphics.setColor(1, 1, 1, 1)

					local var_284_1114 = math.max(var_284_1084, var_284_1085) * 1.5

					love.graphics.draw(var_284_1113, var_284_1099, var_284_1100, 0, var_284_1114, var_284_1114, 0.5, 0.5)
				end

				love.graphics.setBlendMode(var_284_1104, var_284_1105)
				love.graphics.setShader()
			end

			love.graphics.setStencilTest()
			love.graphics.setShader()

			if not var_284_1086 and (not battlefield or not battlefield.gameOver) then
				local var_284_1115 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick
				local var_284_1116 = lastLayout.slotPanel

				if var_284_1115 and var_284_1115.image and var_284_1115.quads and var_284_1115.quads[1] and var_284_1116 then
					local var_284_1117 = Tutorial and Tutorial.getSpinStickOutlinePulse and Tutorial.getSpinStickOutlinePulse()

					if var_284_1117 or tooltip and tooltip.mouseX and tooltip.mouseY and var_0_120(tooltip.mouseX, tooltip.mouseY) then
						local var_284_1118 = ui and ui.spinstick or {}
						local var_284_1119 = var_284_1116.x + var_284_1116.w + (var_284_1118.offsetX or 4)
						local var_284_1120 = var_284_1116.y + (var_284_1118.offsetY or 0)
						local var_284_1121 = math.floor(var_284_1119 + var_284_1092 + var_284_1090 + 0.5)
						local var_284_1122 = math.floor(var_284_1120 + var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_284_1091 + 0.5)
						local var_284_1123 = var_284_1115.frames or #var_284_1115.quads
						local var_284_1124 = 1

						if spinStickAnim and spinStickAnim.playing and var_284_1123 > 1 then
							var_284_1124 = math.max(1, math.min(var_284_1123, spinStickAnim.frame or 1))
						end

						local var_284_1125 = var_0_97.getBtnHoverOutlineShader()

						love.graphics.setShader(var_284_1125)
						var_284_1125:send("texelStep", {
							1 / var_284_1115.iw,
							1 / var_284_1115.ih
						})
						var_284_1125:send("outlineColor", {
							1,
							1,
							1,
							var_284_1117 and var_284_1117.alpha or 1
						})
						var_284_1125:send("threshold", 0.01)
						var_284_1125:send("radiusPx", var_284_1117 and var_284_1117.radius or 2)
						love.graphics.setColor(1, 1, 1, 1)
						love.graphics.draw(var_284_1115.image, var_284_1115.quads[var_284_1124] or var_284_1115.quads[1], var_284_1121, var_284_1122)
						love.graphics.setShader()
					end
				end

				local var_284_1126 = lastLayout.slotPanel

				if var_284_1126 then
					local var_284_1127 = ui.spinCountDisplay or {
						align = "left",
						offsetY = 0,
						targetH = 8,
						offsetX = 0
					}
					local var_284_1128 = math.floor(var_284_1092 + var_284_1090 + 0)
					local var_284_1129 = math.floor(var_284_1094 + var_284_1093 + var_284_1087 + var_284_1089 + var_284_1091 + 0.5)
					local var_284_1130 = math.floor(var_284_1126.x + (var_284_1127.offsetX or 0))
					local var_284_1131 = math.floor(var_284_1126.y + (var_284_1127.offsetY or 0))
					local var_284_1132 = var_284_1130 + var_284_1128
					local var_284_1133 = var_284_1131 + var_284_1129
					local var_284_1134 = math.max(0, tonumber(spinsLeft or 0) or 0)
					local var_284_1135 = tostring(var_284_1134)

					if var_284_1134 == 0 then
						var_284_1135 = "-"
					end

					local var_284_1136 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinDigitsPink

					if var_284_1136 then
						local var_284_1137 = var_284_1136.frameW
						local var_284_1138 = var_284_1136.frameH
						local var_284_1139 = var_284_1127.targetH or 8
						local var_284_1140 = var_284_1138 > 0 and var_284_1139 / var_284_1138 or 1
						local var_284_1141 = 0

						for iter_284_39 = 1, #var_284_1135 do
							var_284_1141 = var_284_1141 + var_284_1137 * var_284_1140
						end

						if (var_284_1127.align or "left") == "right" then
							var_284_1132 = var_284_1132 - var_284_1141
						end

						love.graphics.setColor(1, 1, 1, 1)

						for iter_284_40 = 1, #var_284_1135 do
							local var_284_1142 = var_284_1135:sub(iter_284_40, iter_284_40)
							local var_284_1143
							local var_284_1144 = var_284_1142 == "-" and 10 or var_284_1142 == "0" and 10 or tonumber(var_284_1142)
							local var_284_1145 = var_284_1136.quads[var_284_1144]

							if var_284_1145 then
								love.graphics.draw(var_284_1136.image, var_284_1145, math.floor(var_284_1132 + 0.5), math.floor(var_284_1133 + 0.5), 0, var_284_1140, var_284_1140)

								var_284_1132 = var_284_1132 + var_284_1137 * var_284_1140
							end
						end
					end
				end

				local var_284_1146 = lastLayout.slotPanel

				if var_284_1146 then
					local var_284_1147 = ui.spinPriceDisplay or {
						align = "center",
						offsetY = 8,
						targetH = 8,
						offsetX = 0
					}
					local var_284_1148 = (freeSpinCredits or 0) > 0 or var_0_73() <= 0
					local var_284_1149 = var_284_1090
					local var_284_1150 = var_284_1091
					local var_284_1151 = math.floor(var_284_1092 + var_284_1149 + 0)
					local var_284_1152 = math.floor(var_284_1094 + var_284_1093 + var_284_1088 + var_284_1087 + var_284_1089 + var_284_1150 + 0.5)
					local var_284_1153 = math.floor(var_284_1146.x + var_284_1146.w * 0.5 + (var_284_1147.offsetX or 0) + 0.5)
					local var_284_1154 = math.floor(var_284_1146.y + var_284_1146.h + (var_284_1147.offsetY or 0) + 0.5)
					local var_284_1155 = var_284_1153 + var_284_1151
					local var_284_1156 = var_284_1154 + var_284_1152
					local var_284_1157 = loadedAssets and loadedAssets.ui and loadedAssets.ui.coinDigits

					if var_284_1148 and var_284_1157 and var_284_1157.order and var_284_1157.order:find("F", 1, true) then
						local var_284_1158 = "FREE"
						local var_284_1159 = var_284_1157.frameW
						local var_284_1160 = var_284_1157.frameH
						local var_284_1161 = var_284_1147.targetH or 8
						local var_284_1162 = var_284_1160 > 0 and var_284_1161 / var_284_1160 or 1
						local var_284_1163 = var_284_1159 * var_284_1162 * #var_284_1158
						local var_284_1164 = var_284_1147.align or "center"

						if var_284_1164 == "center" then
							var_284_1155 = var_284_1155 - math.floor(var_284_1163 / 2 + 0.5)
						elseif var_284_1164 == "right" then
							var_284_1155 = var_284_1155 - var_284_1163
						end

						love.graphics.setColor(1, 1, 1, 1)

						for iter_284_41 = 1, #var_284_1158 do
							local var_284_1165 = var_284_1158:sub(iter_284_41, iter_284_41)
							local var_284_1166 = var_284_1157.order:find(var_284_1165, 1, true)

							if var_284_1166 then
								local var_284_1167 = var_284_1157.quads[var_284_1166]

								if var_284_1167 then
									love.graphics.draw(var_284_1157.image, var_284_1167, math.floor(var_284_1155 + 0.5), math.floor(var_284_1156 + 0.5), 0, var_284_1162, var_284_1162)

									var_284_1155 = var_284_1155 + var_284_1159 * var_284_1162
								end
							end
						end
					elseif var_284_1157 then
						local var_284_1168 = var_0_73()
						local var_284_1169 = tostring(var_284_1168)
						local var_284_1170 = var_284_1157.frameW
						local var_284_1171 = var_284_1157.frameH
						local var_284_1172 = var_284_1147.targetH or 8
						local var_284_1173 = var_284_1171 > 0 and var_284_1172 / var_284_1171 or 1
						local var_284_1174 = 0

						for iter_284_42 = 1, #var_284_1169 do
							local var_284_1175 = var_284_1169:sub(iter_284_42, iter_284_42)

							if var_284_1157.order and var_284_1157.order:find(var_284_1175, 1, true) then
								var_284_1174 = var_284_1174 + var_284_1170 * var_284_1173
							end
						end

						local var_284_1176 = var_284_1147.align or "center"

						if var_284_1176 == "center" then
							var_284_1155 = var_284_1155 - math.floor(var_284_1174 / 2 + 0.5)
						elseif var_284_1176 == "right" then
							var_284_1155 = var_284_1155 - var_284_1174
						end

						love.graphics.setColor(1, 1, 1, 1)

						for iter_284_43 = 1, #var_284_1169 do
							local var_284_1177 = var_284_1169:sub(iter_284_43, iter_284_43)
							local var_284_1178 = var_284_1157.order and var_284_1157.order:find(var_284_1177, 1, true)

							if var_284_1178 then
								local var_284_1179 = var_284_1157.quads[var_284_1178]

								if var_284_1179 then
									love.graphics.draw(var_284_1157.image, var_284_1179, math.floor(var_284_1155 + 0.5), math.floor(var_284_1156 + 0.5), 0, var_284_1173, var_284_1173)

									var_284_1155 = var_284_1155 + var_284_1170 * var_284_1173
								end
							end
						end
					end
				end

				local var_284_1180 = var_0_123()

				if var_284_1180 then
					love.graphics.setColor(1, 1, 1, 1)

					if not (ui and ui._stoneActivated and ui._stoneActivated.active) then
						love.graphics.draw(var_284_1180.shadow, var_284_1180.dx, var_284_1180.dy, 0, var_284_1180.scale, var_284_1180.scale)
					end

					love.graphics.draw(var_284_1180.book, var_284_1180.dx, var_284_1180.dy, 0, var_284_1180.scale, var_284_1180.scale)
				end
			end

			love.graphics.setColor(1, 1, 1, 1)
			love.graphics.pop()
		end
	end

	local var_284_1181 = ui and ui._stoneActivated
	local var_284_1182 = ui and ui.pauseOverlayState
	local var_284_1183 = var_284_1182 and (var_284_1182.active or var_284_1182.settingsMode)

	if var_284_1181 and var_284_1181.active and var_284_1183 and var_284_1072 then
		var_284_1072(false)
	end

	if var_284_1080 then
		var_284_1080()
	end

	local var_284_1184 = false
	local var_284_1185 = ui and ui.pauseOverlayState
	local var_284_1186 = ui and ui.pauseOverlay

	if var_284_1185 then
		local var_284_1187 = var_284_1186 and var_284_1186.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)

		var_284_1184 = var_284_1185.active == true or var_284_1185.settingsMode == true

		if not var_284_1184 then
			local var_284_1188 = var_284_1186 and var_284_1186.visibleY or 0
			local var_284_1189 = math.max(1, math.abs(var_284_1188 - var_284_1187))

			var_284_1184 = math.max(0, math.min(1, (var_284_1188 - (var_284_1185.y or var_284_1187)) / var_284_1189)) < 0.35
		end
	end

	if not var_284_1184 and Tutorial and Tutorial.draw and Tutorial.isOverlayVisible and Tutorial.isOverlayVisible() then
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)
		love.graphics.setShader()

		if ui and var_0_80 then
			ui._tutorialFiremanRect = var_0_80()
		end

		Tutorial.draw(ui, lastLayout)

		if tooltip and tooltip.drawClassSelectRandomOptionOverlay and battlefield and battlefield.classSelect then
			love.graphics.setStencilTest()
			love.graphics.setShader()
			tooltip:drawClassSelectRandomOptionOverlay(battlefield)
			love.graphics.setStencilTest()
			love.graphics.setShader()
		end

		if (Tutorial.isUnitHoverStep and Tutorial.isUnitHoverStep() or Tutorial.isPromotedUnitStep and Tutorial.isPromotedUnitStep() or Tutorial.isImprintInspectStep and Tutorial.isImprintInspectStep() or Tutorial.isFinalReadyStep and Tutorial.isFinalReadyStep() or Tutorial.isFreeAbsorbStep and Tutorial.isFreeAbsorbStep()) and tooltip and battlefield then
			love.graphics.setStencilTest()
			love.graphics.setShader()
			tooltip:draw(battlefield)
			love.graphics.setStencilTest()
			love.graphics.setShader()
		end

		local var_284_1190 = Tutorial and Tutorial.getSpinStickOutlinePulse and Tutorial.getSpinStickOutlinePulse()

		if Tutorial.canSpin and Tutorial.canSpin() and lastLayout and lastLayout.slotPanel and (not battlefield or not battlefield.gameOver) and (var_284_1190 or ui and ui._tutorialCursorX and ui._tutorialCursorY and var_0_120(ui._tutorialCursorX, ui._tutorialCursorY)) then
			local var_284_1191 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick
			local var_284_1192 = lastLayout.slotPanel

			if var_284_1191 and var_284_1191.image and var_284_1191.quads and var_284_1191.quads[1] and var_284_1192 then
				local var_284_1193 = ui and ui.spinstick or {}
				local var_284_1194 = var_284_1192.x + var_284_1192.w + (var_284_1193.offsetX or 4)
				local var_284_1195 = var_284_1192.y + (var_284_1193.offsetY or 0)
				local var_284_1196 = slotBgJitter and slotBgJitter.x or 0
				local var_284_1197 = slotBgJitter and slotBgJitter.y or 0
				local var_284_1198 = math.floor(var_284_1194 + (spinShake.x or 0) + var_284_1196 + 0.5)
				local var_284_1199 = math.floor(var_284_1195 + (slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (ui and ui.slot and ui.slot.stickyOffsetY or 0) + var_0_108() + var_284_1197 + 0.5)
				local var_284_1200 = var_284_1191.frames or #var_284_1191.quads
				local var_284_1201 = 1

				if spinStickAnim and spinStickAnim.playing and var_284_1200 and var_284_1200 > 1 then
					var_284_1201 = math.max(1, math.min(var_284_1200, spinStickAnim.frame or 1))
				end

				local var_284_1202 = var_284_1191.quads[var_284_1201] or var_284_1191.quads[1]
				local var_284_1203 = var_0_97.getBtnHoverOutlineShader()

				love.graphics.setShader(var_284_1203)
				var_284_1203:send("texelStep", {
					1 / var_284_1191.iw,
					1 / var_284_1191.ih
				})
				var_284_1203:send("outlineColor", {
					1,
					1,
					1,
					var_284_1190 and var_284_1190.alpha or 1
				})
				var_284_1203:send("threshold", 0.01)
				var_284_1203:send("radiusPx", var_284_1190 and var_284_1190.radius or 2)
				love.graphics.setColor(1, 1, 1, 1)
				love.graphics.draw(var_284_1191.image, var_284_1202, var_284_1198, var_284_1199)
				love.graphics.setShader()
			end
		end

		love.graphics.pop()
	end

	if cursorImage and tooltip and tooltip.mouseX and tooltip.mouseY then
		love.graphics.push()
		love.graphics.translate(screenOffsetX, screenOffsetY)
		love.graphics.scale(screenScaleX or screenScale, screenScaleY or screenScale)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.setShader()

		local var_284_1204 = not var_284_1184 and Tutorial and Tutorial.isOverlayVisible and Tutorial.isOverlayVisible()
		local var_284_1205 = var_284_1204 and ui and ui._tutorialCursorX or tooltip.mouseX
		local var_284_1206 = var_284_1204 and ui and ui._tutorialCursorY or tooltip.mouseY
		local var_284_1207 = math.floor((var_284_1205 or 0) - (cursorHotspotX or 0) + 0.5)
		local var_284_1208 = math.floor((var_284_1206 or 0) - (cursorHotspotY or 0) + 0.5)

		love.graphics.draw(cursorImage, var_284_1207, var_284_1208)
		love.graphics.pop()
	end

	if var_0_67 and (var_0_67.alpha or 0) > 0 then
		local var_284_1209 = var_0_67.alpha or 0
		local var_284_1210 = masterCanvas and masterCanvas:getWidth() or love.graphics.getWidth()
		local var_284_1211 = masterCanvas and masterCanvas:getHeight() or love.graphics.getHeight()

		love.graphics.setShader()
		love.graphics.setColor(0.82, 0.04, 0.03, var_284_1209)
		love.graphics.rectangle("fill", 0, 0, var_284_1210, var_284_1211)
		love.graphics.setColor(1, 1, 1, 1)
	end

	var_0_29(true)
	var_0_33(var_0_28)
	var_0_30()

	if var_0_37() then
		var_0_15.draw(masterCanvas)
	else
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(masterCanvas, 0, 0)
	end

	drawMenuPlayFadeOverlay()
	drawDisplayModeTransitionOverlay()
end

function var_0_22()
	local var_329_0, var_329_1 = pcall(require, "src.save")

	if not var_329_0 or not var_329_1 or not var_329_1.save then
		return false
	end

	local var_329_2 = {
		originite = var_0_16 and var_0_16.getOriginiteAmount and var_0_16.getOriginiteAmount() or 0,
		upgrades = var_0_17 and var_0_17.getUpgradeState and var_0_17.getUpgradeState() or {},
		unlockedStages = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.unlockedStages or nil,
		unlockedDifficulties = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.unlockedDifficulties or nil,
		newStages = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.newStages or nil,
		clearedDifficulties = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.clearedDifficulties or nil,
		originiteFirstReachedGates = OriginiteFirstReachedGates,
		settings = {
			displayMode = ui and ui.menuSettings and ui.menuSettings.displayMode or love.window and love.window.getFullscreen and love.window.getFullscreen() and "fullscreen" or "windowed",
			masterVolume = ui and ui.menuSettings and ui.menuSettings.masterVolume or 1,
			sfxVolume = ui and ui.menuSettings and ui.menuSettings.sfxVolume or 1,
			bgmVolume = ui and ui.menuSettings and ui.menuSettings.bgmVolume or 1,
			language = ui and ui.menuSettings and ui.menuSettings.language or _G.currentGameLang or "ko",
			tutorialEnabled = not ui or not ui.menuSettings or ui.menuSettings.tutorialEnabled ~= false
		}
	}
	local var_329_3, var_329_4 = pcall(var_329_1.save, var_329_2)

	return var_329_3 and var_329_4 == true
end

local function var_0_172()
	ui = ui or {}
	ui.menuSettings = ui.menuSettings or {}
	ui.menuSettings.tutorialEnabled = false

	var_0_22()
end

local function var_0_173()
	return Tutorial and Tutorial.isSlotStep and Tutorial.isSlotStep()
end

local function var_0_174()
	return Tutorial and Tutorial.canSpin and Tutorial.canSpin()
end

local function var_0_175()
	local var_333_0 = ui and ui.pauseOverlayState

	return var_333_0 and (var_333_0.active == true or var_333_0.settingsMode == true)
end

local function var_0_176(arg_334_0, arg_334_1)
	if not ui then
		return
	end

	ui._tutorialCursorX, ui._tutorialCursorY = arg_334_0, arg_334_1
	ui._tutorialBlockNonSlot = true

	local var_334_0 = Tutorial and Tutorial.isBattleReadyStep and Tutorial.isBattleReadyStep()
	local var_334_1 = Tutorial and Tutorial.allowsUnitHover and Tutorial.allowsUnitHover()
	local var_334_2 = Tutorial and Tutorial.isAbsorbButtonStep and Tutorial.isAbsorbButtonStep()
	local var_334_3 = Tutorial and Tutorial.isClassPromotionStep and Tutorial.isClassPromotionStep()
	local var_334_4 = Tutorial and Tutorial.isShopIntroStep and Tutorial.isShopIntroStep()
	local var_334_5 = Tutorial and Tutorial.isShopBuyStep and Tutorial.isShopBuyStep()
	local var_334_6 = Tutorial and Tutorial.isShopReturnStep and Tutorial.isShopReturnStep()

	ui._tutorialAllowReadyIcon = var_334_0 == true
	ui._tutorialAllowUnitInteraction = var_334_1 == true
	ui._tutorialAllowFiremanHover = var_334_2 == true
	ui._nudgeHoverIdx = nil
	ui._monsterHeadHovered = false
	ui._itemHoverDef = nil
	ui._itemHoverKey = nil
	ui._coreScrollHoverHard = false

	if ui.slotBookIconState then
		ui.slotBookIconState.hovered = false
		ui.slotBookIconState.fade = 0
	end

	if ui.symbolOddsTooltipState then
		ui.symbolOddsTooltipState.hovered = false
		ui.symbolOddsTooltipState.fade = 0
		ui.symbolOddsTooltipState.cursor = nil
	end

	if ui._itemPanelHover then
		for iter_334_0, iter_334_1 in pairs(ui._itemPanelHover) do
			if type(iter_334_1) == "table" then
				iter_334_1.u = 0
				iter_334_1.hoverY = 0
			end
		end
	end

	if tooltip then
		if var_334_1 or var_334_3 then
			tooltip.mouseX, tooltip.mouseY = arg_334_0, arg_334_1
		else
			local var_334_7 = var_334_0 or var_334_2 or var_334_4 or var_334_5 or var_334_6

			tooltip.mouseX = var_334_7 and arg_334_0 or -9999
			tooltip.mouseY = var_334_7 and arg_334_1 or -9999
			tooltip.candidate = nil
			tooltip.target = nil
			tooltip.fade = 0
			tooltip.state = "IDLE"
		end
	end
end

function love.keypressed(arg_335_0)
	if var_0_21 then
		local var_335_0 = type(arg_335_0) == "string" and arg_335_0:match("^f(%d+)$")
		local var_335_1

		var_335_1 = var_335_0 and tonumber(var_335_0) or nil

		if var_335_1 and var_335_1 >= 1 and var_335_1 <= 12 then
			return
		end
	end

	if arg_335_0 == "f5" then
		toggleGameEditionMode()

		return
	end

	if Tutorial and Tutorial.isActive and Tutorial.isActive() and arg_335_0 ~= "escape" then
		local var_335_2 = Tutorial.keypressed and Tutorial.keypressed(arg_335_0) or "blocked"

		if var_335_2 == "start" or var_335_2 == "skip" then
			playButtonClickSound()
		end

		if var_335_2 == "skip" then
			var_0_172()
		end

		return
	end

	if Tutorial and Tutorial.isPending and Tutorial.isPending() and arg_335_0 ~= "escape" then
		return
	end

	if var_0_173() and arg_335_0 ~= "escape" and (arg_335_0 ~= "s" or not var_0_174()) then
		return
	end

	if phase == "menu" and arg_335_0 == "escape" then
		if isMenuSettingsOverlayBlocking() then
			closeMenuSettingsOverlay()

			return
		end

		if var_0_16 and var_0_16.isStageSelectOpen and var_0_16.isStageSelectOpen() then
			if var_0_16.closeStageSelect then
				var_0_16.closeStageSelect()
			end

			return
		end
	end

	if arg_335_0 == "f9" then
		if ui then
			local var_335_3, var_335_4 = pcall(function()
				package.loaded["src.ui.config"] = nil

				local var_336_0 = require("src.ui.config")

				if var_336_0 and var_336_0.init then
					local var_336_1 = var_336_0.init()

					if var_336_1 and var_336_1.imprintPanel then
						ui.imprintPanel = var_336_1.imprintPanel

						print("[ui] Reloaded imprintPanel config (F9).")
					else
						print("[ui] Reload imprintPanel failed: fresh config missing imprintPanel.")
					end
				end
			end)

			if not var_335_3 then
				print("[ui] Reload imprintPanel failed: " .. tostring(var_335_4))
			end
		end

		return
	end

	if arg_335_0 == "f2" then
		if __slotGetCurrentCreditsBackgroundRect and __slotGetCurrentCreditsBackgroundRect(ui, loadedAssets) and ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
			__slotToggleCreditsTextEditor(ui)

			return
		end

		if phase == "menu" and var_0_16 and var_0_16.isStageSelectOpen and var_0_16.isStageSelectOpen() then
			if var_0_16.toggleDebugUnlockPanel then
				var_0_16.toggleDebugUnlockPanel()
			end

			return
		end

		if phase == "upgrade" then
			if var_0_17 and var_0_17.keypressed then
				var_0_17.keypressed(arg_335_0)
			end

			return
		end

		if battlefield then
			battlefield.sandboxMode = battlefield.sandboxMode ~= true

			if not battlefield.sandboxMode then
				battlefield._sandboxQuickRects = nil
				battlefield._sandboxClassRects = nil
				battlefield._enemySpawnUI = nil
			end
		end

		return
	elseif arg_335_0 == "f3" then
		if battlefield then
			battlefield.baseHP = 0

			battlefield:endBattle()

			if phase == "menu" or phase == "upgrade" then
				phase = "spin"
			end

			if battlefield.mode == "battle" then
				battlefield.mode = "spin"
			end

			if battlefield.gameOver then
				battlefield.gameOverT = 0
			end

			if menuPlayTransition and menuPlayTransition.active then
				menuPlayTransition.active = false
				menuPlayTransition.state = "idle"
				menuPlayTransition.t = 0
			end
		end

		return
	elseif arg_335_0 == "f4" then
		if battlefield then
			local var_335_5 = getVictoryClearWaveForDifficulty and getVictoryClearWaveForDifficulty(battlefield.difficulty) or 10

			battlefield.gameOver = true
			battlefield.gameClear = true
			battlefield.clearWaveTarget = var_335_5
			battlefield.gameOverT = 0
			battlefield.baseHP = math.max(1, tonumber(battlefield.baseHP or 1) or 1)
			battlefield.mode = "spin"

			if battlefield.wave then
				battlefield.wave.id = var_335_5
				battlefield.wave.active = false
			end

			if phase == "menu" or phase == "upgrade" then
				phase = "spin"
			end

			if ui then
				ui._victorySprite = nil
				ui._defeatSprite = nil
				ui.gameOverButtons = nil
				ui.pendingGameOverAction = nil
			end

			if menuPlayTransition and menuPlayTransition.active then
				menuPlayTransition.active = false
				menuPlayTransition.state = "idle"
				menuPlayTransition.t = 0
			end
		end

		return
	elseif arg_335_0 == "f6" then
		if battlefield and battlefield.sandboxMode then
			showSandboxOriginiteVictoryPreview("boss")
		end

		return
	end

	if menuPlayTransition.active then
		return
	end

	if phase == "upgrade" then
		if not upgradeTransition.active and var_0_17.keypressed(arg_335_0) == "back" then
			var_0_48(ui)

			upgradeTransition.state = "out"
			upgradeTransition.active = true
			upgradeTransition.t = 0
		end

		return
	end

	if arg_335_0 == "d" then
		if battlefield and battlefield.mode ~= "battle" then
			if ui and ui._stoneActivated and ui._stoneActivated.active then
				return
			end

			battlefield._absorbToggleCooldown = battlefield._absorbToggleCooldown or 0

			if (battlefield._absorbToggleCooldown or 0) > 0 then
				return
			end

			local var_335_6 = battlefield.absorbMode ~= true

			battlefield.absorbMode = var_335_6

			if var_335_6 then
				var_0_79("on")
			else
				var_0_79("off")

				if ui and ui.tooltip then
					local var_335_7 = ui.tooltip

					var_335_7._predActive = false
					var_335_7._predSrcSym = nil
					var_335_7._predTarget = nil
					var_335_7._predTargetSym = nil
				end
			end

			battlefield._absorbToggleCooldown = 0.5
		end
	elseif arg_335_0 == "s" then
		if battlefield and battlefield.mode ~= "battle" and not battlefield.gameOver and (not slotBgAnim or slotBgAnim.state == "done") and (not Tutorial or not Tutorial.isPending or not Tutorial.isPending()) and (not ui or not ui.pauseOverlayState or not ui.pauseOverlayState.active) then
			if loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick then
				spinBtnPressed = true
				spinStickAnim.playing = true
				spinStickAnim.t = 0
				spinStickAnim.frame = 1
				spinPressShake.active = true
				spinPressShake.t = 0
				spinPressShake.y = 0
			end

			if not battlefield.gameOver then
				local var_335_8 = var_0_96("mouse")
			end
		end
	elseif arg_335_0 == "escape" then
		if phase == "menu" then
			return
		end

		local var_335_9 = ui and ui._restartConfirm

		if var_335_9 and var_335_9.active then
			return
		end

		local var_335_10 = ui and ui._coreSelect

		if var_335_10 and var_335_10.active then
			return
		end

		if battlefield and battlefield.gameOver then
			return
		end

		if ui and ui.pauseOverlayState then
			local var_335_11 = ui.pauseOverlayState.active ~= true

			ui.pauseOverlayState.active = var_335_11

			if var_335_11 then
				ui._creditsScrollStartTime = nil
				ui._creditsTextEditor = ui._creditsTextEditor or {}
				ui._creditsTextEditor.drag = nil

				stopSlotMachineSounds()
				stopHolyRaySound()
				playWoodDropSoundDelayed(0.2)

				ui.pauseOverlayState.settingsMode = false
				ui.pauseOverlayState._settingsPending = false
				ui.pauseOverlayState._settingsT = 0

				if ui and ui.tooltip then
					local var_335_12 = ui.tooltip

					var_335_12.locked = false
					var_335_12.state = "IDLE"
					var_335_12.target = nil
					var_335_12.candidate = nil
					var_335_12.fade = 0
					var_335_12.pinSide = nil
				end
			else
				ui._creditsScrollStartTime = nil

				if ui._creditsTextEditor then
					ui._creditsTextEditor.active = false
					ui._creditsTextEditor.drag = nil
				end

				playWoodUpSound()

				ui.pauseOverlayState.settingsMode = false
			end
		end
	end
end

local var_0_177 = false
local var_0_178 = 0
local var_0_179 = false
local var_0_180 = 4
local var_0_181 = var_0_180

local function var_0_182()
	if cursorImage and love.mouse then
		local var_337_0 = love.system and love.system.getOS and love.system.getOS() or nil

		if var_337_0 ~= "OS X" then
			if var_337_0 ~= "Linux" and love.mouse.setVisible then
				love.mouse.setVisible(false)
			end

			return
		end

		pcall(function()
			if love.mouse.newCursor and love.image then
				local var_338_0 = love.image.newImageData(16, 16)
				local var_338_1 = love.mouse.newCursor(var_338_0, 0, 0)

				love.mouse.setCursor(var_338_1)
			end
		end)
		love.mouse.setVisible(false)
	end
end

local function var_0_183()
	if not var_0_179 then
		return
	end

	if WindowActivityState.focused == false or WindowActivityState.visible == false then
		return
	end

	var_0_179 = false

	updateScreenScale()
end

local function var_0_184()
	if (love.system and love.system.getOS and love.system.getOS() or nil) == "Windows" and love.window and love.window.setVSync then
		pcall(love.window.setVSync, 1)
	end

	if WindowActivityState.throttleEnabled then
		WindowActivityState.resumeGuardFrames = math.max(WindowActivityState.resumeGuardFrames or 0, 2)
	else
		WindowActivityState.resumeGuardFrames = 0
	end

	WindowActivityState.nextInactiveFrameTime = nil
	WindowActivityState.currentFrameCap = nil
	WindowActivityState.activeOverspeedFrames = 0
	WindowActivityState.activeLimiterEngaged = false

	var_0_183()
	refreshActiveFrameCap()
end

function love.focus(arg_341_0)
	WindowActivityState.focused = arg_341_0 and true or false
	WindowActivityState.nextInactiveFrameTime = nil

	if arg_341_0 then
		local var_341_0 = love.system and love.system.getOS and love.system.getOS() or nil

		var_0_184()

		var_0_177 = var_341_0 == "OS X"
		var_0_178 = var_341_0 == "OS X" and 1.5 or 0

		var_0_182()
	end
end

function love.mousefocus(arg_342_0)
	if arg_342_0 then
		var_0_178 = (love.system and love.system.getOS and love.system.getOS() or nil) == "OS X" and 1.5 or 0

		var_0_182()
	end
end

function love.resize(arg_343_0, arg_343_1)
	arg_343_0, arg_343_1 = tonumber(arg_343_0), tonumber(arg_343_1)

	if not arg_343_0 or not arg_343_1 or arg_343_0 <= 0 or arg_343_1 <= 0 then
		return
	end

	if WindowActivityState.throttleEnabled and (WindowActivityState.focused == false or WindowActivityState.visible == false) then
		var_0_179 = true

		return
	end

	updateScreenScale()
	refreshActiveFrameCap()

	var_0_178 = (love.system and love.system.getOS and love.system.getOS() or nil) == "OS X" and 1.5 or 0

	var_0_182()
end

function love.visible(arg_344_0)
	WindowActivityState.visible = arg_344_0 and true or false
	WindowActivityState.nextInactiveFrameTime = nil

	if arg_344_0 then
		local var_344_0 = love.system and love.system.getOS and love.system.getOS() or nil

		var_0_184()

		var_0_178 = var_344_0 == "OS X" and 1.5 or 0

		var_0_182()
	end
end

function reconcileWindowActivityState()
	if not love.window or not WindowActivityState then
		return
	end

	local var_345_0 = WindowActivityState.focused
	local var_345_1 = WindowActivityState.visible
	local var_345_2 = var_345_0
	local var_345_3 = var_345_1

	if love.window.hasFocus then
		local var_345_4, var_345_5 = pcall(love.window.hasFocus)

		if var_345_4 then
			var_345_2 = var_345_5 and true or false
		end
	end

	if love.window.isVisible then
		local var_345_6, var_345_7 = pcall(love.window.isVisible)

		if var_345_6 then
			var_345_3 = var_345_7 and true or false
		end
	end

	if love.window.isMinimized then
		local var_345_8, var_345_9 = pcall(love.window.isMinimized)

		if var_345_8 and var_345_9 then
			var_345_3 = false
		end
	end

	WindowActivityState.focused = var_345_2
	WindowActivityState.visible = var_345_3

	if var_345_2 and var_345_0 == false or var_345_3 and var_345_1 == false then
		var_0_184()
	end

	if var_345_2 and var_345_3 and love.timer and love.timer.getTime then
		local var_345_10 = love.timer.getTime()

		if var_345_10 >= (WindowActivityState.nextRefreshRateCheck or 0) then
			WindowActivityState.nextRefreshRateCheck = var_345_10 + 1

			refreshActiveFrameCap()
		end
	end
end

function toVirtual(arg_346_0, arg_346_1)
	local var_346_0 = (arg_346_0 - screenOffsetX) / screenScale
	local var_346_1 = (arg_346_1 - screenOffsetY) / screenScale

	return var_346_0, var_346_1
end

function var_0_80()
	if not fireman or not fireman.image or not lastLayout or not lastLayout.right then
		return nil
	end

	local var_347_0 = fireman.frameW or 20
	local var_347_1 = fireman.frameH or 20
	local var_347_2 = ui.fireman or {}
	local var_347_3 = math.max(1, math.floor(var_347_2.scaleStep or 2))
	local var_347_4 = lastLayout.right
	local var_347_5 = var_347_4.x + (var_347_2.offsetX or 16)
	local var_347_6 = var_347_4.y + var_347_4.h + (var_347_2.offsetY or -16) - var_347_1 * var_347_3
	local var_347_7 = ui and ui.firemanShake and ui.firemanShake.jx or 0
	local var_347_8 = math.floor(var_347_5 + var_347_7 + 0.5)
	local var_347_9 = math.floor(var_347_6 + 0.5)

	return {
		x = var_347_8,
		y = var_347_9,
		w = var_347_0 * var_347_3,
		h = var_347_1 * var_347_3
	}
end

local function var_0_185()
	if not fireman or not fireman.image or not lastLayout or not lastLayout.right then
		return nil
	end

	local var_348_0 = fireman.frameW or 20
	local var_348_1 = fireman.frameH or 20
	local var_348_2 = ui.fireman or {}
	local var_348_3 = math.max(1, math.floor(var_348_2.scaleStep or 2))
	local var_348_4 = lastLayout.right
	local var_348_5 = var_348_4.x + (var_348_2.offsetX or 16)
	local var_348_6 = var_348_4.y + var_348_4.h + (var_348_2.offsetY or -16) - var_348_1 * var_348_3
	local var_348_7 = ui and ui.firemanShake and ui.firemanShake.jx or 0
	local var_348_8 = math.floor(var_348_5 + var_348_7 + 0.5)
	local var_348_9 = math.floor(var_348_6 + 0.5)
	local var_348_10 = fireman.animations[fireman.anim.name] or fireman.animations.onidle
	local var_348_11 = var_348_10 and var_348_10.row or 3
	local var_348_12 = fireman.rows[var_348_11] and #fireman.rows[var_348_11] or 1
	local var_348_13 = math.max(1, math.min(var_348_10 and var_348_10.frames or var_348_12, var_348_12))
	local var_348_14 = math.max(1, math.min(fireman.anim.frame or 1, var_348_13))
	local var_348_15 = fireman.rows[var_348_11] and fireman.rows[var_348_11][var_348_14]

	return {
		x = var_348_8,
		y = var_348_9,
		scale = var_348_3,
		frameW = var_348_0,
		frameH = var_348_1,
		animName = fireman.anim.name,
		frame = var_348_14,
		quad = var_348_15
	}
end

function var_0_82(arg_349_0, arg_349_1)
	if battlefield and battlefield.imprintModal and battlefield.imprintModal.active then
		return false
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	if ui and ui._coinPopupsActive then
		return false
	end

	if battlefield and battlefield.gameOver then
		return false
	end

	if not firemanSpriteImageData or not fireman or not fireman.image then
		return false
	end

	local var_349_0 = var_0_185()

	if not var_349_0 or not var_349_0.quad then
		return false
	end

	local var_349_1 = (arg_349_0 - var_349_0.x) / math.max(1e-09, var_349_0.scale)
	local var_349_2 = (arg_349_1 - var_349_0.y) / math.max(1e-09, var_349_0.scale)

	if var_349_1 < 0 or var_349_2 < 0 or var_349_1 >= var_349_0.frameW or var_349_2 >= var_349_0.frameH then
		return false
	end

	local var_349_3, var_349_4 = fireman.image:getDimensions()
	local var_349_5, var_349_6 = var_349_0.quad:getViewport()
	local var_349_7 = math.floor(var_349_5 + var_349_1)
	local var_349_8 = math.floor(var_349_6 + var_349_2)

	if var_349_7 < 0 or var_349_8 < 0 or var_349_3 <= var_349_7 or var_349_4 <= var_349_8 then
		return false
	end

	local var_349_9, var_349_10, var_349_11, var_349_12 = firemanSpriteImageData:getPixel(var_349_7, var_349_8)

	return (var_349_12 or 0) > 0.01
end

function var_0_83(arg_350_0, arg_350_1)
	if battlefield and battlefield.imprintModal and battlefield.imprintModal.active then
		return false
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return false
	end

	if ui and ui._coinPopupsActive then
		return false
	end

	if battlefield and battlefield.gameOver then
		return false
	end

	if not backgroundFiremanBgData then
		return false
	end

	local var_350_0 = var_0_80()

	if not var_350_0 then
		return false
	end

	local var_350_1 = math.max(1, math.floor(ui and ui.fireman and ui.fireman.scaleStep or 2))
	local var_350_2 = math.max(0, math.floor(ui and ui.fireman and ui.fireman.shadowExtraPx or 8))
	local var_350_3 = var_350_0.x - var_350_1
	local var_350_4 = var_350_0.y - var_350_1
	local var_350_5 = var_350_0.x + var_350_0.w + var_350_1
	local var_350_6 = var_350_0.y + var_350_0.h + var_350_1 + var_350_2

	if arg_350_0 < var_350_3 or var_350_5 < arg_350_0 or arg_350_1 < var_350_4 or var_350_6 < arg_350_1 then
		return false
	end

	local var_350_7 = ui and ui.firemanShake and ui.firemanShake.jx or 0
	local var_350_8 = backgroundFiremanBgData
	local var_350_9 = math.floor(arg_350_0 - var_350_7 + 0.5)
	local var_350_10 = math.floor(arg_350_1 + 0.5)
	local var_350_11, var_350_12 = var_350_8:getDimensions()

	if var_350_9 < 0 or var_350_10 < 0 or var_350_11 <= var_350_9 or var_350_12 <= var_350_10 then
		return false
	end

	local var_350_13, var_350_14, var_350_15, var_350_16 = var_350_8:getPixel(var_350_9, var_350_10)

	return (var_350_16 or 0) > 0.01
end

function var_0_79(arg_351_0)
	if not fireman then
		return
	end

	if fireman.anim and fireman.anim.name == arg_351_0 then
		return
	end

	fireman.anim.name = arg_351_0
	fireman.anim.t = 0
	fireman.anim.frame = 1

	if ui and ui.firemanShake and (arg_351_0 == "on" or arg_351_0 == "off") then
		local var_351_0 = fireman.animations and fireman.animations[arg_351_0]
		local var_351_1 = 0.25

		if var_351_0 and var_351_0.frames and var_351_0.speed then
			var_351_1 = var_351_0.frames * var_351_0.speed
		end

		ui.firemanShake.active = true
		ui.firemanShake.t = 0
		ui.firemanShake.dur = var_351_1

		local var_351_2 = ui.fireman or {}

		ui.firemanShake.ampPx = math.max(1, math.floor((var_351_2.shakeAmpPx or 2) + 0.5))
		ui.firemanShake.freq = var_351_2.shakeFreq or 18
	end
end

local var_0_186 = 0
local var_0_187 = 60

local function var_0_188()
	local var_352_0, var_352_1 = pcall(require, "src.save")

	if not var_352_0 or not var_352_1 then
		return
	end

	local var_352_2, var_352_3 = pcall(require, "src.ui.mainmenu")

	if not var_0_16 or not var_0_17 or not ui then
		return
	end

	local var_352_4 = {
		originite = var_0_16.getOriginiteAmount and var_0_16.getOriginiteAmount() or 0,
		upgrades = var_0_17.getUpgradeState and var_0_17.getUpgradeState() or {},
		unlockedStages = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.unlockedStages or nil,
		unlockedDifficulties = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.unlockedDifficulties or nil,
		newStages = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.newStages or nil,
		clearedDifficulties = var_0_16 and var_0_16.stageSelect and var_0_16.stageSelect.clearedDifficulties or nil,
		originiteFirstReachedGates = OriginiteFirstReachedGates,
		settings = {
			displayMode = ui.menuSettings and ui.menuSettings.displayMode or love.window and love.window.getFullscreen and love.window.getFullscreen() and "fullscreen" or "windowed",
			masterVolume = ui.menuSettings and ui.menuSettings.masterVolume or 1,
			sfxVolume = ui.menuSettings and ui.menuSettings.sfxVolume or 1,
			bgmVolume = ui.menuSettings and ui.menuSettings.bgmVolume or 1,
			language = ui.menuSettings and ui.menuSettings.language or _G.currentGameLang or "ko",
			tutorialEnabled = not ui.menuSettings or ui.menuSettings.tutorialEnabled ~= false
		}
	}

	pcall(var_352_1.save, var_352_4)
end

function updateStageIntroBanner(arg_353_0)
	if not stageIntroBanner.active then
		return
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return
	end

	stageIntroBanner.t = stageIntroBanner.t + arg_353_0

	if stageIntroBanner.state == "enter" then
		if stageIntroBanner.t >= stageIntroBanner.durEnter then
			stageIntroBanner.state = "hold"
			stageIntroBanner.t = 0
		end
	elseif stageIntroBanner.state == "hold" then
		if stageIntroBanner.t >= stageIntroBanner.durHold then
			stageIntroBanner.state = "exit"
			stageIntroBanner.t = 0
		end
	elseif stageIntroBanner.state == "exit" and stageIntroBanner.t >= stageIntroBanner.durExit then
		stageIntroBanner.state = "idle"
		stageIntroBanner.active = false
		stageIntroBanner.t = 0
	end
end

local function var_0_189(arg_354_0, arg_354_1)
	local var_354_0 = require("src.data.language")
	local var_354_1 = "menu_stage_name_" .. tostring(arg_354_0)
	local var_354_2 = var_354_0.getText(var_354_1, arg_354_1)

	if var_354_2 == var_354_1 then
		if arg_354_1 == "en" then
			if arg_354_0 == 1 then
				return "Open Forest"
			elseif arg_354_0 == 2 then
				return "Deep Cave"
			elseif arg_354_0 == 3 then
				return "Wasteland"
			elseif arg_354_0 == 4 then
				return "Lost Ruins"
			else
				return "Stage " .. tostring(arg_354_0)
			end
		elseif arg_354_0 == 1 then
			return "열린 숲"
		elseif arg_354_0 == 2 then
			return "깊은 동굴"
		elseif arg_354_0 == 3 then
			return "메마른 황야"
		else
			return "스테이지 " .. tostring(arg_354_0)
		end
	end

	return var_354_2
end

local function var_0_190(arg_355_0, arg_355_1)
	if arg_355_1 ~= "ko" then
		local var_355_0 = require("src.data.language")
		local var_355_1 = arg_355_0 == 1 and "difficulty_easy" or arg_355_0 == 2 and "difficulty_normal" or arg_355_0 == 3 and "difficulty_hard" or nil
		local var_355_2 = var_355_0.getText("difficulty_label", arg_355_1)

		if var_355_2 == "difficulty_label" then
			var_355_2 = "Difficulty"
		end

		local var_355_3 = var_355_1 and var_355_0.getText(var_355_1, arg_355_1) or nil

		if not var_355_3 or var_355_3 == var_355_1 then
			var_355_3 = arg_355_0 == 1 and "Easy" or arg_355_0 == 2 and "Normal" or arg_355_0 == 3 and "Hard" or ""
		end

		return var_355_3 ~= "" and var_355_2 .. " - " .. var_355_3 or var_355_2
	end

	if arg_355_1 == "en" then
		if arg_355_0 == 1 then
			return "Difficulty - Easy"
		elseif arg_355_0 == 2 then
			return "Difficulty - Normal"
		elseif arg_355_0 == 3 then
			return "Difficulty - Hard"
		else
			return "Difficulty"
		end
	elseif arg_355_1 == "ja" then
		if arg_355_0 == 1 then
			return "難易度 - イージー"
		elseif arg_355_0 == 2 then
			return "難易度 - ノーマル"
		elseif arg_355_0 == 3 then
			return "難易度 - ハード"
		else
			return "難易度"
		end
	elseif arg_355_0 == 1 then
		return "난이도 - 쉬움"
	elseif arg_355_0 == 2 then
		return "난이도 - 보통"
	elseif arg_355_0 == 3 then
		return "난이도 - 어려움"
	else
		return "난이도"
	end
end

local function var_0_191(arg_356_0, arg_356_1, arg_356_2, arg_356_3, arg_356_4)
	love.graphics.setFont(arg_356_1)

	local var_356_0 = arg_356_1:getWidth(arg_356_0) * arg_356_3
	local var_356_1 = arg_356_1:getHeight() * arg_356_3
	local var_356_2 = (ui.virtual.W - var_356_0) / 2
	local var_356_3 = arg_356_2 - var_356_1 / 2

	love.graphics.setColor(arg_356_4[1], arg_356_4[2], arg_356_4[3], arg_356_4[4])
	love.graphics.print(arg_356_0, math.floor(var_356_2 + 0.5), math.floor(var_356_3 + 0.5), 0, arg_356_3, arg_356_3)
end

function drawStageIntroBanner()
	if not stageIntroBanner.active then
		return
	end

	local var_357_0 = 0
	local var_357_1 = 0
	local var_357_2 = 0

	if stageIntroBanner.state == "enter" then
		local var_357_3 = math.min(1, stageIntroBanner.t / stageIntroBanner.durEnter)

		var_357_0 = 1 - math.pow(1 - var_357_3, 3)
		var_357_1 = var_357_0
		var_357_2 = math.max(0, math.min(1, (var_357_3 - 0.4) / 0.6))
	elseif stageIntroBanner.state == "hold" then
		var_357_0 = 1
		var_357_1 = 1
		var_357_2 = 1
	elseif stageIntroBanner.state == "exit" then
		local var_357_4 = math.min(1, stageIntroBanner.t / stageIntroBanner.durExit)

		var_357_0 = 1 - var_357_4 * var_357_4 * var_357_4
		var_357_1 = var_357_0
		var_357_2 = math.max(0, math.min(1, 1 - var_357_4 / 0.6))
	end

	if var_357_1 > 0 and ui and ui.virtual then
		love.graphics.setColor(0, 0, 0, 0.25 * var_357_1)
		love.graphics.rectangle("fill", 0, 0, ui.virtual.W, ui.virtual.H)
	end

	local var_357_5 = stageIntroBanner.maxH * var_357_0

	if var_357_5 > 0 and ui and ui.virtual then
		local var_357_6 = ui.virtual.H / 2

		love.graphics.setColor(0, 0, 0, 0.75)
		love.graphics.rectangle("fill", 0, var_357_6 - var_357_5 / 2, ui.virtual.W, var_357_5)

		if var_357_2 > 0 and var_357_5 > 15 then
			local var_357_7 = _G.currentGameLang or ui and ui.menuSettings and ui.menuSettings.language or "ko"
			local var_357_8 = var_0_189(stageIntroBanner.stage, var_357_7)
			local var_357_9 = var_0_190(stageIntroBanner.difficulty, var_357_7)
			local var_357_10 = ui.fontGameOver or ui.font or love.graphics.getFont()
			local var_357_11 = var_357_10
			local var_357_12 = 2.2
			local var_357_13 = 1.2

			var_0_191(var_357_8, var_357_11, var_357_6 - 14, var_357_12, {
				1,
				1,
				1,
				var_357_2
			})

			local var_357_14 = {
				1,
				1,
				1,
				var_357_2
			}

			if stageIntroBanner.difficulty == 1 then
				var_357_14 = {
					0.45,
					0.92,
					0.55,
					var_357_2
				}
			elseif stageIntroBanner.difficulty == 2 then
				var_357_14 = {
					0.95,
					0.7,
					0.3,
					var_357_2
				}
			elseif stageIntroBanner.difficulty == 3 then
				var_357_14 = {
					1,
					0.4,
					0.35,
					var_357_2
				}
			end

			var_0_191(var_357_9, var_357_10, var_357_6 + 14, var_357_13, var_357_14)
		end
	end

	love.graphics.setColor(1, 1, 1, 1)
end

function love.update(arg_358_0)
	if RuntimePerformance and RuntimePerformance.beginFrame then
		arg_358_0 = RuntimePerformance.beginFrame(arg_358_0)
	end

	if reconcileWindowActivityState then
		reconcileWindowActivityState()
	end

	if WindowsBorderlessCaptureState and (WindowsBorderlessCaptureState.retryFrames or 0) > 0 and not WindowsBorderlessCaptureState.active then
		WindowsBorderlessCaptureState.retryFrames = WindowsBorderlessCaptureState.retryFrames - 1

		if ensureWindowsBorderlessCaptureStyle then
			ensureWindowsBorderlessCaptureStyle(false)
		end
	end

	local var_358_0 = WindowActivityState and WindowActivityState.throttleEnabled and (WindowActivityState.focused == false or WindowActivityState.visible == false or (WindowActivityState.resumeGuardFrames or 0) > 0)
	local var_358_1 = WindowActivityState and tonumber(WindowActivityState.activeFrameCap) or nil

	if var_358_1 and var_358_1 > 0 and not var_358_0 and WindowActivityState.throttleEnabled and love.system and love.system.getOS and love.system.getOS() == "Windows" and not WindowActivityState.activeLimiterEngaged then
		local var_358_2 = 1 / var_358_1 * 0.9

		if tonumber(arg_358_0) and arg_358_0 > 0 and arg_358_0 < var_358_2 then
			WindowActivityState.activeOverspeedFrames = (WindowActivityState.activeOverspeedFrames or 0) + 1
		else
			WindowActivityState.activeOverspeedFrames = math.max(0, (WindowActivityState.activeOverspeedFrames or 0) - 1)
		end

		if WindowActivityState.activeOverspeedFrames >= 12 then
			WindowActivityState.activeLimiterEngaged = true
			WindowActivityState.nextInactiveFrameTime = nil
			WindowActivityState.currentFrameCap = nil
		end
	end

	local var_358_3 = WindowActivityState and WindowActivityState.throttleEnabled and not var_358_0 and WindowActivityState.activeLimiterEngaged == true and var_358_1 and var_358_1 > 0 and love.system and love.system.getOS and love.system.getOS() == "Windows"

	if var_358_0 or var_358_3 then
		if love.timer and love.timer.getTime and love.timer.sleep then
			local var_358_4 = var_358_0 and (tonumber(WindowActivityState.inactiveFrameCap) or 30) or var_358_1

			if var_358_4 > 0 then
				if WindowActivityState.currentFrameCap ~= var_358_4 then
					WindowActivityState.nextInactiveFrameTime = nil
					WindowActivityState.currentFrameCap = var_358_4
				end

				local var_358_5 = 1 / var_358_4
				local var_358_6 = love.timer.getTime()
				local var_358_7 = WindowActivityState.nextInactiveFrameTime

				if not var_358_7 or var_358_6 - var_358_7 > var_358_5 * 2 then
					var_358_7 = var_358_6
				end

				if var_358_6 < var_358_7 then
					love.timer.sleep(var_358_7 - var_358_6)

					var_358_6 = love.timer.getTime()
				end

				local var_358_8 = var_358_7 + var_358_5

				if var_358_8 <= var_358_6 then
					var_358_8 = var_358_8 + (math.floor((var_358_6 - var_358_8) / var_358_5) + 1) * var_358_5
				end

				WindowActivityState.nextInactiveFrameTime = var_358_8
			end
		end
	else
		WindowActivityState.nextInactiveFrameTime = nil
		WindowActivityState.currentFrameCap = nil
	end

	if Render2 and Render2.updateSlotWinEffects then
		Render2.updateSlotWinEffects(arg_358_0)
	end

	if var_0_61 and var_0_61.active then
		var_0_61.t = (var_0_61.t or 0) + (arg_358_0 or 0)

		if var_0_61.t >= (var_0_61.dur or 0.46) then
			var_0_61.active = false
			var_0_61.t = 0
		end
	end

	if not _webLoggedFirstUpdate then
		_webLoggedFirstUpdate = true

		var_0_27("first update start")
	end

	_G.frameCount = (_G.frameCount or 0) + 1

	if updateStageIntroBanner then
		updateStageIntroBanner(arg_358_0)
	end

	if var_0_15 and var_0_15.update then
		var_0_15.update(arg_358_0)
	end

	if var_0_178 > 0 then
		local var_358_9 = var_0_178

		var_0_178 = var_0_178 - arg_358_0

		if math.floor(var_358_9 / 0.3) ~= math.floor(var_0_178 / 0.3) and var_0_182 then
			var_0_182()
		end
	end

	if cursorImage and love.system and love.system.getOS and love.system.getOS() == "OS X" then
		var_0_181 = var_0_181 - arg_358_0

		if var_0_181 <= 0 then
			var_0_181 = var_0_180

			var_0_182()
		end
	end

	var_0_186 = var_0_186 + arg_358_0

	if var_0_186 >= var_0_187 then
		var_0_186 = 0

		var_0_188()
	end

	if displayModeTransition.active then
		local var_358_10 = displayModeTransition

		var_358_10.t = var_358_10.t + arg_358_0

		if var_358_10.phase == "fade_in" then
			var_358_10.alpha = math.min(1, var_358_10.t / var_358_10.fadeDur)

			if var_358_10.t >= var_358_10.fadeDur then
				var_358_10.phase = "switch"
				var_358_10.t = 0

				local var_358_11 = var_358_10.targetMode

				if (applyDisplayMode and applyDisplayMode(var_358_11) or false) and ui and ui.menuSettings then
					ui.menuSettings.displayMode = var_358_11
				end

				if updateScreenScale then
					updateScreenScale()
				end

				local var_358_12 = var_358_10.vx * (screenScale or 1) + (screenOffsetX or 0)
				local var_358_13 = var_358_10.vy * (screenScale or 1) + (screenOffsetY or 0)

				if love.mouse and love.mouse.setPosition then
					love.mouse.setPosition(var_358_12, var_358_13)
				end

				if var_0_182 then
					var_0_182()
				end
			end
		elseif var_358_10.phase == "switch" then
			var_358_10.phase = "fade_out"
			var_358_10.t = 0
			var_358_10.alpha = 1
		elseif var_358_10.phase == "fade_out" then
			var_358_10.alpha = math.max(0, 1 - var_358_10.t / var_358_10.fadeDur)

			if var_358_10.t >= var_358_10.fadeDur then
				var_358_10.active = false
				var_358_10.phase = "idle"
				var_358_10.alpha = 0

				if var_0_182 then
					var_0_182()
				end
			end
		end
	end

	if updateBgmMix then
		updateBgmMix(arg_358_0, phase, ui, battlefield)
	end

	if updateStoneSlotModFade then
		updateStoneSlotModFade(arg_358_0)
	end

	if ui and ui._sfxTimers then
		for iter_358_0 = #ui._sfxTimers, 1, -1 do
			local var_358_14 = ui._sfxTimers[iter_358_0]

			var_358_14.t = (var_358_14.t or 0) - arg_358_0

			if var_358_14.t <= 0 then
				local var_358_15 = var_358_14.fn

				table.remove(ui._sfxTimers, iter_358_0)

				if var_358_15 then
					var_358_15()
				end
			end
		end
	end

	updateMenuPlayTransition(arg_358_0)

	if Tutorial and Tutorial.isPending and Tutorial.isPending() and phase == "spin" and not var_0_175() and not menuPlayTransition.active and (not stageIntroBanner or not stageIntroBanner.active) and (not slotBgAnim or slotBgAnim.state == "done") and (not coreBgAnim or coreBgAnim.state == "done") and (not coreNumAnim or coreNumAnim.state == "done") and (not var_0_65 or var_0_65.state == "done") and (not scrollIntroAnim or scrollIntroAnim.slideState == "done" and scrollIntroAnim.done == true) and Tutorial.activatePending then
		Tutorial.activatePending()
	end

	if not var_0_175() and Tutorial and Tutorial.isActive and Tutorial.isActive() then
		local var_358_16, var_358_17 = love.mouse.getPosition()
		local var_358_18 = (var_358_16 - screenOffsetX) / (screenScaleX or screenScale)
		local var_358_19 = (var_358_17 - screenOffsetY) / (screenScaleY or screenScale)

		if ui then
			ui._tutorialCursorX, ui._tutorialCursorY = var_358_18, var_358_19
			ui._nudgeHoverIdx = 0
			ui._monsterHeadHovered = false
			ui._itemHoverDef = nil
			ui._itemHoverKey = nil
			ui._coreScrollHoverHard = false

			if ui.slotBookIconState then
				ui.slotBookIconState.hovered = false
				ui.slotBookIconState.fade = 0
				ui.slotBookIconState.cursor = nil
			end

			if ui.symbolOddsTooltipState then
				ui.symbolOddsTooltipState.hovered = false
				ui.symbolOddsTooltipState.fade = 0
				ui.symbolOddsTooltipState.cursor = nil
			end

			if ui._itemPanelHover then
				for iter_358_1, iter_358_2 in pairs(ui._itemPanelHover) do
					if type(iter_358_2) == "table" then
						iter_358_2.u = 0
						iter_358_2.hoverY = 0
					end
				end
			end
		end

		if tooltip then
			tooltip.mouseX, tooltip.mouseY = -9999, -9999
			tooltip.candidate = nil
			tooltip.target = nil
			tooltip.fade = 0
			tooltip.state = "IDLE"
		end

		Tutorial.update(arg_358_0, var_358_18, var_358_19, ui)
		var_0_16.updateCurrency(arg_358_0)

		return
	end

	if upgradeTransition.active then
		upgradeTransition.t = upgradeTransition.t + arg_358_0

		if upgradeTransition.t >= upgradeTransition.dur then
			upgradeTransition.active = false

			if upgradeTransition.state == "in" then
				phase = "upgrade"

				if ui and ui._restartAfterUpgradeEnter == true then
					ui._restartAfterUpgradeEnter = false

					restartGameSession({
						targetPhase = "upgrade",
						skipIntro = true
					})
				end
			elseif upgradeTransition.state == "out" then
				phase = "menu"
			end

			upgradeTransition.state = "idle"
		end
	end

	if phase == "upgrade" then
		local var_358_20, var_358_21 = love.mouse.getPosition()
		local var_358_22 = (var_358_20 - screenOffsetX) / screenScale
		local var_358_23 = (var_358_21 - screenOffsetY) / screenScale

		if var_0_17.update(arg_358_0, var_358_22, var_358_23) == "back" and not upgradeTransition.active then
			var_0_48(ui)

			upgradeTransition.state = "out"
			upgradeTransition.active = true
			upgradeTransition.t = 0
		end

		var_0_16.updateCurrency(arg_358_0)

		return
	end

	if phase == "menu" then
		ensureMenuSettingsOverlayState()
		updateMenuSettingsOverlay(arg_358_0)

		if menuPlayTransition.active then
			local var_358_24, var_358_25 = love.mouse.getPosition()
			local var_358_26 = (var_358_24 - screenOffsetX) / screenScale
			local var_358_27 = (var_358_25 - screenOffsetY) / screenScale

			var_0_16.update(arg_358_0, var_358_26, var_358_27)
			var_0_16.updateCurrency(arg_358_0)

			return
		end

		local var_358_28, var_358_29 = love.mouse.getPosition()
		local var_358_30 = (var_358_28 - screenOffsetX) / screenScale
		local var_358_31 = (var_358_29 - screenOffsetY) / screenScale
		local var_358_32 = (ui and ui.menuSettingsOverlayState and ui.menuSettingsOverlayState.open) == true
		local var_358_33 = var_358_30
		local var_358_34 = var_358_31

		if var_358_32 then
			var_358_33, var_358_34 = -10000, -10000

			if var_0_16 and var_0_16.exitConfirm and var_0_16.exitConfirm.active then
				var_358_33, var_358_34 = var_358_30, var_358_31
			end
		end

		local var_358_35 = var_0_16.update(arg_358_0, var_358_33, var_358_34)

		if not var_358_32 and var_358_35 then
			if var_358_35 == "play" or type(var_358_35) == "table" and var_358_35.type == "play" then
				local var_358_36 = 1
				local var_358_37 = 1

				if type(var_358_35) == "table" then
					var_358_36 = tonumber(var_358_35.stage or 1) or 1
					var_358_37 = tonumber(var_358_35.difficulty or 1) or 1
				end

				startMenuPlayTransition(var_358_36, var_358_37)
			elseif var_358_35 == "upgrade" then
				var_0_17.resetCamera()

				local var_358_38 = var_0_16.upgradeRect

				if var_358_38 then
					upgradeTransition.cx = var_358_38.x + var_358_38.w / 2
					upgradeTransition.cy = var_358_38.y + var_358_38.h / 2
				else
					upgradeTransition.cx = (ui and ui.virtual and ui.virtual.W or 1280) / 2
					upgradeTransition.cy = (ui and ui.virtual and ui.virtual.H or 720) / 2
				end

				local var_358_39 = ui and ui.virtual and ui.virtual.W or 1280
				local var_358_40 = ui and ui.virtual and ui.virtual.H or 720
				local var_358_41 = math.max(upgradeTransition.cx, var_358_39 - upgradeTransition.cx)
				local var_358_42 = math.max(upgradeTransition.cy, var_358_40 - upgradeTransition.cy)

				upgradeTransition.maxR = math.sqrt(var_358_41 * var_358_41 + var_358_42 * var_358_42)
				upgradeTransition.state = "in"
				upgradeTransition.active = true
				upgradeTransition.t = 0
			elseif var_358_35 == "collection" then
				print("Collection clicked")
			elseif var_358_35 == "achievement" then
				print("Achievement clicked")
			elseif var_358_35 == "settings" then
				openMenuSettingsOverlay()
			end
		end

		if tooltip then
			tooltip.mouseX, tooltip.mouseY = var_358_30, var_358_31
		end

		return
	end

	if var_0_173() and not var_0_175() then
		local var_358_43, var_358_44 = love.mouse.getPosition()
		local var_358_45 = (var_358_43 - screenOffsetX) / screenScale
		local var_358_46 = (var_358_44 - screenOffsetY) / screenScale

		Tutorial.update(arg_358_0, var_358_45, var_358_46, ui)
		var_0_176(var_358_45, var_358_46)
	elseif ui then
		ui._tutorialBlockNonSlot = false
		ui._tutorialAllowReadyIcon = false
		ui._tutorialAllowUnitInteraction = false
		ui._tutorialAllowFiremanHover = false
	end

	local var_358_47 = (ui and ui.pauseOverlayState and ui.pauseOverlayState.active and ui.pauseOverlayState.settingsMode) == true or var_0_173() and not var_0_175() and (not Tutorial or not Tutorial.allowsUnitHover or not Tutorial.allowsUnitHover()) and (not Tutorial or not Tutorial.isAbsorbModalStep or not Tutorial.isAbsorbModalStep())
	local var_358_48 = ui and ui.pauseOverlayState
	local var_358_49 = ui and ui.pauseOverlay

	if var_358_48 and var_358_48.active and var_358_49 then
		local var_358_50 = var_358_48.active and (var_358_49.visibleY or 0) or var_358_49.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
		local var_358_51 = var_358_49.spring and var_358_49.spring.k or 90
		local var_358_52 = var_358_49.spring and var_358_49.spring.damping or 12
		local var_358_53 = var_358_49.spring and var_358_49.spring.maxVel or 2000
		local var_358_54 = var_358_48.y or 0
		local var_358_55 = var_358_48.v or 0
		local var_358_56 = var_358_55 + ((var_358_50 - var_358_54) * var_358_51 - var_358_52 * var_358_55) * (arg_358_0 or 0)

		if var_358_53 and var_358_53 > 0 then
			if var_358_53 < var_358_56 then
				var_358_56 = var_358_53
			elseif var_358_56 < -var_358_53 then
				var_358_56 = -var_358_53
			end
		end

		local var_358_57 = var_358_54 + var_358_56 * (arg_358_0 or 0)
		local var_358_58 = var_358_49 and var_358_49.snapEps or 0.5

		if math.abs(var_358_56) < 0.02 and var_358_58 > math.abs(var_358_50 - var_358_57) then
			var_358_57 = var_358_50
			var_358_56 = 0
		end

		var_358_48.y = var_358_57
		var_358_48.v = var_358_56

		if var_358_48._settingsPending and not var_358_48.settingsMode then
			var_358_48._settingsT = (var_358_48._settingsT or 0) + (arg_358_0 or 0)

			if (var_358_49 and var_358_49.settingsDelaySec or 0.35) <= (var_358_48._settingsT or 0) then
				var_358_48.settingsMode = true
				var_358_48._settingsPending = false
				var_358_48._settingsT = 0
				var_358_48.settingsPaperT = 0
			end
		end

		if var_358_48.settingsMode then
			var_358_48.settingsPaperT = (var_358_48.settingsPaperT or 0) + (arg_358_0 or 0)

			local var_358_59 = loadedAssets and loadedAssets.ui
			local var_358_60 = var_358_59 and var_358_59.optionPaperBackground
			local var_358_61 = var_358_49.optionPaperBackground

			if var_358_60 and var_358_61 then
				local var_358_62 = var_358_61.scale or 1
				local var_358_63 = math.floor(var_358_60:getWidth() * var_358_62 + 0.5)
				local var_358_64 = math.floor((ui.virtual.W - var_358_63) / 2)
				local var_358_65 = math.floor((var_358_61.offsetY or 0) + 0.5)
				local var_358_66 = 0.08
				local var_358_67 = 0.45
				local var_358_68 = var_358_48.settingsPaperT or 0
				local var_358_69 = -40

				if var_358_66 <= var_358_68 then
					local var_358_70 = math.min(1, (var_358_68 - var_358_66) / var_358_67)

					var_358_69 = -40 * (1 - (1 - (1 - var_358_70) * (1 - var_358_70) * (1 - var_358_70)))
				end

				local var_358_71 = math.floor((var_358_48.y or 0) + 0.5)
				local var_358_72 = var_358_65 + var_358_69
				local var_358_73 = math.floor(var_358_60:getHeight() * var_358_62 + 0.5)
				local var_358_74, var_358_75, var_358_76, var_358_77 = var_0_161(var_358_64, var_358_71 + var_358_72, var_358_63, var_358_73, var_358_61)
				local var_358_78, var_358_79, var_358_80, var_358_81 = var_0_163(var_358_74, var_358_75, var_358_76, var_358_77)

				updateSettingsDrag(var_358_48, {
					content = {
						x = var_358_78,
						y = var_358_79,
						w = var_358_80,
						h = var_358_81
					}
				})

				local var_358_82 = var_0_160("pause")
				local var_358_83 = var_0_164(var_358_82, var_358_48)

				var_358_48.settingsScrollMax = math.max(0, var_358_83 - var_358_81)
				var_358_48.settingsScrollY = var_358_48.settingsScrollY or 0

				if var_358_48.settingsScrollY < 0 then
					var_358_48.settingsScrollY = 0
				end

				if var_358_48.settingsScrollY > var_358_48.settingsScrollMax then
					var_358_48.settingsScrollY = var_358_48.settingsScrollMax
				end
			end
		else
			var_358_48.settingsPaperT = nil
			var_358_48.settingsScrollMax = 0

			if var_358_48.settingsScrollY and var_358_48.settingsScrollY < 0 then
				var_358_48.settingsScrollY = 0
			end
		end

		local var_358_84, var_358_85 = love.mouse.getPosition()
		local var_358_86 = (var_358_84 - screenOffsetX) / screenScale
		local var_358_87 = (var_358_85 - screenOffsetY) / screenScale

		if tooltip then
			tooltip.mouseX, tooltip.mouseY = var_358_86, var_358_87
			tooltip.candidate = nil

			if tooltip.state then
				tooltip.state = "IDLE"
			end
		end

		local var_358_88 = loadedAssets and loadedAssets.ui
		local var_358_89 = var_358_88 and var_358_88.optionButtonRope
		local var_358_90 = var_358_88 and var_358_88.playButtonDarkData
		local var_358_91 = var_358_88 and var_358_88.replayButtonDarkData
		local var_358_92 = var_358_88 and var_358_88.wikiButtonDarkData
		local var_358_93 = var_358_88 and var_358_88.optionButtonDarkData
		local var_358_94 = var_358_88 and var_358_88.toMainMenuButtonDarkData
		local var_358_95 = ui and ui.pauseOverlay and ui.pauseOverlay.buttonRopes
		local var_358_96 = ui and ui.pauseOverlay and ui.pauseOverlay.playButtonDark
		local var_358_97 = ui and ui.pauseOverlay and ui.pauseOverlay.replayButtonDark
		local var_358_98 = ui and ui.pauseOverlay and ui.pauseOverlay.wikiButtonDark
		local var_358_99 = ui and ui.pauseOverlay and ui.pauseOverlay.optionButtonDark
		local var_358_100 = ui and ui.pauseOverlay and ui.pauseOverlay.toMainMenuButtonDark

		if var_358_89 and var_358_95 and var_358_95.positions then
			local var_358_101 = var_358_48.playHovered
			local var_358_102 = var_358_48.replayHovered
			local var_358_103 = var_358_48.wikiHovered
			local var_358_104 = var_358_48.optionHovered
			local var_358_105 = var_358_48.toMainHovered
			local var_358_106 = math.floor((var_358_95.offsetX or 0) + 0.5)
			local var_358_107 = math.floor((var_358_95.offsetY or 0) + 0.5)
			local var_358_108 = {}

			for iter_358_3, iter_358_4 in ipairs(var_358_95.positions) do
				local var_358_109 = math.floor((iter_358_4.x or 0) + var_358_106 + 0.5)

				table.insert(var_358_108, {
					idx = iter_358_3,
					x = var_358_109
				})
			end

			table.sort(var_358_108, function(arg_359_0, arg_359_1)
				return arg_359_0.x < arg_359_1.x
			end)

			local var_358_110 = var_358_108[1] and var_358_108[1].idx or nil
			local var_358_111 = var_358_108[2] and var_358_108[2].idx or nil
			local var_358_112 = var_358_108[3] and var_358_108[3].idx or nil
			local var_358_113 = var_358_108[4] and var_358_108[4].idx or nil
			local var_358_114 = var_358_108[5] and var_358_108[5].idx or nil
			local var_358_115 = ui and ui.pauseOverlay and ui.pauseOverlay.wikiButtonDark

			if var_358_115 and not var_358_115.enabled then
				var_358_114 = var_358_113
				var_358_113 = var_358_112
				var_358_112 = nil
			end

			local var_358_116 = math.floor((var_358_48.y or 0) + 0.5)
			local var_358_117 = var_358_95.motion

			local function var_358_118(arg_360_0)
				if var_358_117 and var_358_117.enabled and (var_358_117.amplitudePx or 0) > 0 and (var_358_117.periodSec or 0) > 0 then
					local var_360_0 = var_358_117.amplitudePx or 0
					local var_360_1 = 2 * math.pi / (var_358_117.periodSec or 1)
					local var_360_2 = (var_358_117.basePhase or 0) + (arg_360_0 - 1) * (var_358_117.phaseStep or 0)
					local var_360_3 = var_360_0 * math.sin(var_360_2 + var_360_1 * (love.timer and love.timer.getTime and love.timer.getTime() or 0))

					return math.floor(var_360_3 + 0.5)
				end

				return 0
			end

			var_358_48.buttonRopeDrop = var_358_48.buttonRopeDrop or {}

			local var_358_119 = false

			if var_358_96 and var_358_96.enabled and var_358_90 and var_358_110 then
				local var_358_120 = var_358_95.positions[var_358_110]
				local var_358_121 = var_358_96.scale or 1
				local var_358_122 = math.floor((var_358_120.x or 0) + var_358_106 + (var_358_96.offsetX or 0) + 0.5)
				local var_358_123 = math.floor((var_358_120.y or 0) + var_358_107 + var_358_116 + (var_358_96.offsetY or 0) + var_358_118(var_358_110) + 0.5)
				local var_358_124 = var_358_90:getWidth()
				local var_358_125 = var_358_122

				if var_358_96.alignCenterX then
					var_358_125 = math.floor(var_358_122 - var_358_124 * var_358_121 * 0.5 + 0.5)
				end

				local var_358_126 = (var_358_86 - var_358_125) / math.max(0.0001, var_358_121)
				local var_358_127 = (var_358_87 - var_358_123) / math.max(0.0001, var_358_121)
				local var_358_128, var_358_129 = var_358_90:getDimensions()

				if var_358_126 >= 0 and var_358_127 >= 0 and var_358_126 < var_358_128 and var_358_127 < var_358_129 then
					local var_358_130, var_358_131, var_358_132, var_358_133 = var_358_90:getPixel(math.floor(var_358_126), math.floor(var_358_127))

					var_358_119 = (var_358_133 or 0) > 0.05
				end
			end

			var_358_48.playHovered = var_358_119

			if var_358_110 then
				local var_358_134 = var_358_48.buttonRopeDrop[var_358_110] or 0
				local var_358_135 = var_358_119 and math.max(0, math.floor((var_358_96 and var_358_96.hoverDropPx or 6) + 0.5)) or 0
				local var_358_136 = var_358_134 < var_358_135 and 18 or 16

				var_358_48.buttonRopeDrop[var_358_110] = var_358_134 + (var_358_135 - var_358_134) * math.min(1, var_358_136 * (arg_358_0 or 0))
			end

			local var_358_137 = false

			if var_358_97 and var_358_97.enabled and var_358_91 and var_358_111 then
				local var_358_138 = var_358_95.positions[var_358_111]
				local var_358_139 = var_358_97.scale or 1
				local var_358_140 = math.floor((var_358_138.x or 0) + var_358_106 + (var_358_97.offsetX or 0) + 0.5)
				local var_358_141 = math.floor((var_358_138.y or 0) + var_358_107 + var_358_116 + (var_358_97.offsetY or 0) + var_358_118(var_358_111) + 0.5)
				local var_358_142 = var_358_91:getWidth()
				local var_358_143 = var_358_140

				if var_358_97.alignCenterX then
					var_358_143 = math.floor(var_358_140 - var_358_142 * var_358_139 * 0.5 + 0.5)
				end

				local var_358_144 = (var_358_86 - var_358_143) / math.max(0.0001, var_358_139)
				local var_358_145 = (var_358_87 - var_358_141) / math.max(0.0001, var_358_139)
				local var_358_146, var_358_147 = var_358_91:getDimensions()

				if var_358_144 >= 0 and var_358_145 >= 0 and var_358_144 < var_358_146 and var_358_145 < var_358_147 then
					local var_358_148, var_358_149, var_358_150, var_358_151 = var_358_91:getPixel(math.floor(var_358_144), math.floor(var_358_145))

					var_358_137 = (var_358_151 or 0) > 0.05
				end
			end

			local var_358_152 = (ui and ui._restartConfirm and ui._restartConfirm.active) == true and (ui._restartConfirm.action == "restart" or ui._restartConfirm.action == nil)

			var_358_48.replayHovered = var_358_137 or var_358_152

			if var_358_111 then
				local var_358_153 = var_358_48.buttonRopeDrop[var_358_111] or 0
				local var_358_154 = ((var_358_137 or var_358_152) and true or false) and math.max(0, math.floor((var_358_97 and var_358_97.hoverDropPx or 6) + 0.5)) or 0
				local var_358_155 = var_358_153 < var_358_154 and 18 or 16

				var_358_48.buttonRopeDrop[var_358_111] = var_358_153 + (var_358_154 - var_358_153) * math.min(1, var_358_155 * (arg_358_0 or 0))
			end

			local var_358_156 = false

			if var_358_98 and var_358_98.enabled and var_358_92 and var_358_112 then
				local var_358_157 = var_358_95.positions[var_358_112]
				local var_358_158 = var_358_98.scale or 1
				local var_358_159 = math.floor((var_358_157.x or 0) + var_358_106 + (var_358_98.offsetX or 0) + 0.5)
				local var_358_160 = math.floor((var_358_157.y or 0) + var_358_107 + var_358_116 + (var_358_98.offsetY or 0) + var_358_118(var_358_112) + 0.5)
				local var_358_161 = var_358_92:getWidth()
				local var_358_162 = var_358_159

				if var_358_98.alignCenterX then
					var_358_162 = math.floor(var_358_159 - var_358_161 * var_358_158 * 0.5 + 0.5)
				end

				local var_358_163 = (var_358_86 - var_358_162) / math.max(0.0001, var_358_158)
				local var_358_164 = (var_358_87 - var_358_160) / math.max(0.0001, var_358_158)
				local var_358_165, var_358_166 = var_358_92:getDimensions()

				if var_358_163 >= 0 and var_358_164 >= 0 and var_358_163 < var_358_165 and var_358_164 < var_358_166 then
					local var_358_167, var_358_168, var_358_169, var_358_170 = var_358_92:getPixel(math.floor(var_358_163), math.floor(var_358_164))

					var_358_156 = (var_358_170 or 0) > 0.05
				end
			end

			var_358_48.wikiHovered = var_358_156

			if var_358_112 then
				local var_358_171 = var_358_48.buttonRopeDrop[var_358_112] or 0
				local var_358_172 = var_358_156 and math.max(0, math.floor((var_358_98 and var_358_98.hoverDropPx or 6) + 0.5)) or 0
				local var_358_173 = var_358_171 < var_358_172 and 18 or 16

				var_358_48.buttonRopeDrop[var_358_112] = var_358_171 + (var_358_172 - var_358_171) * math.min(1, var_358_173 * (arg_358_0 or 0))
			end

			local var_358_174 = false

			if var_358_99 and var_358_99.enabled and var_358_93 and var_358_113 then
				local var_358_175 = var_358_95.positions[var_358_113]
				local var_358_176 = var_358_99.scale or 1
				local var_358_177 = math.floor((var_358_175.x or 0) + var_358_106 + (var_358_99.offsetX or 0) + 0.5)
				local var_358_178 = math.floor((var_358_175.y or 0) + var_358_107 + var_358_116 + (var_358_99.offsetY or 0) + var_358_118(var_358_113) + 0.5)
				local var_358_179 = var_358_93:getWidth()
				local var_358_180 = var_358_177

				if var_358_99.alignCenterX then
					var_358_180 = math.floor(var_358_177 - var_358_179 * var_358_176 * 0.5 + 0.5)
				end

				local var_358_181 = (var_358_86 - var_358_180) / math.max(0.0001, var_358_176)
				local var_358_182 = (var_358_87 - var_358_178) / math.max(0.0001, var_358_176)
				local var_358_183, var_358_184 = var_358_93:getDimensions()

				if var_358_181 >= 0 and var_358_182 >= 0 and var_358_181 < var_358_183 and var_358_182 < var_358_184 then
					local var_358_185, var_358_186, var_358_187, var_358_188 = var_358_93:getPixel(math.floor(var_358_181), math.floor(var_358_182))

					var_358_174 = (var_358_188 or 0) > 0.05
				end
			end

			var_358_48.optionHovered = var_358_174 or var_358_48 and var_358_48.settingsMode == true

			if var_358_113 then
				local var_358_189 = var_358_48.buttonRopeDrop[var_358_113] or 0
				local var_358_190 = ((var_358_174 or var_358_48 and var_358_48.settingsMode == true) and true or false) and math.max(0, math.floor((var_358_99 and var_358_99.hoverDropPx or 6) + 0.5)) or 0
				local var_358_191 = var_358_189 < var_358_190 and 18 or 16

				var_358_48.buttonRopeDrop[var_358_113] = var_358_189 + (var_358_190 - var_358_189) * math.min(1, var_358_191 * (arg_358_0 or 0))
			end

			local var_358_192 = false

			if var_358_100 and var_358_100.enabled and var_358_94 and var_358_114 then
				local var_358_193 = var_358_95.positions[var_358_114]
				local var_358_194 = var_358_100.scale or 1
				local var_358_195 = math.floor((var_358_193.x or 0) + var_358_106 + (var_358_100.offsetX or 0) + 0.5)
				local var_358_196 = math.floor((var_358_193.y or 0) + var_358_107 + var_358_116 + (var_358_100.offsetY or 0) + var_358_118(var_358_114) + 0.5)
				local var_358_197 = var_358_94:getWidth()
				local var_358_198 = var_358_195

				if var_358_100.alignCenterX then
					var_358_198 = math.floor(var_358_195 - var_358_197 * var_358_194 * 0.5 + 0.5)
				end

				local var_358_199 = (var_358_86 - var_358_198) / math.max(0.0001, var_358_194)
				local var_358_200 = (var_358_87 - var_358_196) / math.max(0.0001, var_358_194)
				local var_358_201, var_358_202 = var_358_94:getDimensions()

				if var_358_199 >= 0 and var_358_200 >= 0 and var_358_199 < var_358_201 and var_358_200 < var_358_202 then
					local var_358_203, var_358_204, var_358_205, var_358_206 = var_358_94:getPixel(math.floor(var_358_199), math.floor(var_358_200))

					var_358_192 = (var_358_206 or 0) > 0.05
				end
			end

			local var_358_207 = (ui and ui._restartConfirm and ui._restartConfirm.active) == true and ui._restartConfirm.action == "mainmenu"

			var_358_48.toMainHovered = var_358_192 or var_358_207

			if var_358_114 then
				local var_358_208 = var_358_48.buttonRopeDrop[var_358_114] or 0
				local var_358_209 = (var_358_192 or var_358_207) and math.max(0, math.floor((var_358_100 and var_358_100.hoverDropPx or 6) + 0.5)) or 0
				local var_358_210 = var_358_208 < var_358_209 and 18 or 16

				var_358_48.buttonRopeDrop[var_358_114] = var_358_208 + (var_358_209 - var_358_208) * math.min(1, var_358_210 * (arg_358_0 or 0))
			end

			if var_358_48.playHovered and not var_358_101 or var_358_48.replayHovered and not var_358_102 or var_358_48.wikiHovered and not var_358_103 or var_358_48.optionHovered and not var_358_104 or var_358_48.toMainHovered and not var_358_105 then
				playButtonHoverSound()
			end

			for iter_358_5, iter_358_6 in pairs(var_358_48.buttonRopeDrop) do
				if (not var_358_110 or iter_358_5 ~= var_358_110) and (not var_358_111 or iter_358_5 ~= var_358_111) and (not var_358_112 or iter_358_5 ~= var_358_112) and (not var_358_113 or iter_358_5 ~= var_358_113) and (not var_358_114 or iter_358_5 ~= var_358_114) then
					local var_358_211 = iter_358_6 + (0 - iter_358_6) * math.min(1, 16 * (arg_358_0 or 0))

					if math.abs(var_358_211) < 0.01 then
						var_358_211 = 0
					end

					var_358_48.buttonRopeDrop[iter_358_5] = var_358_211
				end
			end
		else
			var_358_48.playHovered = false
			var_358_48.replayHovered = false
			var_358_48.wikiHovered = false
			var_358_48.optionHovered = false
			var_358_48.toMainHovered = false
		end

		local var_358_212 = ui and ui._restartConfirm

		if var_358_212 and var_358_212.active then
			local var_358_213 = ui and ui.restartConfirm or {}
			local var_358_214 = var_358_213.spring or {}
			local var_358_215 = var_358_214.k or 90
			local var_358_216 = var_358_214.damping or 12
			local var_358_217 = var_358_214.maxVel or 2000
			local var_358_218 = var_358_212.y or ui.virtual.H
			local var_358_219 = var_358_212.v or 0
			local var_358_220 = var_358_212.targetY or 0
			local var_358_221 = var_358_219 + ((var_358_220 - var_358_218) * var_358_215 - var_358_216 * var_358_219) * (arg_358_0 or 0)

			if var_358_217 < var_358_221 then
				var_358_221 = var_358_217
			elseif var_358_221 < -var_358_217 then
				var_358_221 = -var_358_217
			end

			local var_358_222 = var_358_218 + var_358_221 * (arg_358_0 or 0)

			if var_358_212.leaving and var_358_222 >= (ui and ui.virtual and ui.virtual.H or 720) - 1 then
				var_358_212.active = false
			end

			if math.abs(var_358_221) < 0.02 and math.abs(var_358_220 - var_358_222) < 0.5 then
				var_358_222, var_358_221 = var_358_220, 0

				if var_358_212.leaving then
					var_358_212.active = false
				end
			end

			var_358_212.y, var_358_212.v = var_358_222, var_358_221

			local var_358_223 = var_358_213.hoverUnderline

			if var_358_223 and var_358_223.enabled ~= false and not var_358_212.leaving then
				var_358_212.ulYesProg = var_358_212.ulYesProg or 0
				var_358_212.ulNoProg = var_358_212.ulNoProg or 0

				local var_358_224, var_358_225 = love.mouse.getPosition()
				local var_358_226 = (var_358_224 - screenOffsetX) / screenScale
				local var_358_227 = (var_358_225 - screenOffsetY) / screenScale

				local function var_358_228(arg_361_0)
					return arg_361_0 and var_358_226 >= arg_361_0.x and var_358_226 <= arg_361_0.x + arg_361_0.w and var_358_227 >= arg_361_0.y and var_358_227 <= arg_361_0.y + arg_361_0.h
				end

				local var_358_229 = var_358_228(var_358_212.rectYes)
				local var_358_230 = var_358_228(var_358_212.rectNo)
				local var_358_231 = math.max(var_358_223.drawDurSec or 0.15, 0.001)
				local var_358_232 = math.max(var_358_223.retractDurSec or 0.1, 0.001)
				local var_358_233 = (arg_358_0 or 0) / var_358_231
				local var_358_234 = (arg_358_0 or 0) / var_358_232

				if var_358_229 then
					var_358_212.ulYesProg = var_358_212.ulYesProg + var_358_233
				else
					var_358_212.ulYesProg = var_358_212.ulYesProg - var_358_234
				end

				if var_358_230 then
					var_358_212.ulNoProg = var_358_212.ulNoProg + var_358_233
				else
					var_358_212.ulNoProg = var_358_212.ulNoProg - var_358_234
				end

				if var_358_212.ulYesProg < 0 then
					var_358_212.ulYesProg = 0
				elseif var_358_212.ulYesProg > 1 then
					var_358_212.ulYesProg = 1
				end

				if var_358_212.ulNoProg < 0 then
					var_358_212.ulNoProg = 0
				elseif var_358_212.ulNoProg > 1 then
					var_358_212.ulNoProg = 1
				end
			end
		end

		return
	end

	if ui and ui._coreSelect and ui._coreSelect.active then
		local var_358_235, var_358_236 = love.mouse.getPosition()
		local var_358_237 = (var_358_235 - screenOffsetX) / screenScale
		local var_358_238 = (var_358_236 - screenOffsetY) / screenScale

		if tooltip then
			tooltip.mouseX, tooltip.mouseY = var_358_237, var_358_238
			tooltip.candidate = nil
			tooltip.target = nil
			tooltip.fade = 0
			tooltip.state = "IDLE"
		end

		return
	end

	if canOpenCoreSelectionCountdownModal() then
		var_0_86({
			fromCountdown = true
		})
	end

	if not battlefield or not battlefield.gameOver then
		var_0_92 = (var_0_92 or 0) + (arg_358_0 or 0)

		if ui then
			ui.sessionPlayTimeSec = var_0_92
		end
	end

	local var_358_239 = ui and ui.slotBlink
	local var_358_240 = (var_358_239 and var_358_239.enabled) ~= false
	local var_358_241 = 5 + (var_0_17.getMaxUnitBonus and var_0_17.getMaxUnitBonus() or 0)
	local var_358_242 = 0

	if battlefield then
		var_358_242 = battlefield.getOwnedUnitCount and battlefield:getOwnedUnitCount() or 0
	end

	var_0_60.enabled = var_358_240
	var_0_60.speedHz = var_358_239 and var_358_239.speedHz or var_0_60.speedHz or 2.2
	var_0_60.minAlpha = var_358_239 and var_358_239.minAlpha or var_0_60.minAlpha or 0.2
	var_0_60.maxAlpha = var_358_239 and var_358_239.maxAlpha or var_0_60.maxAlpha or 0.65
	var_0_60.color = var_358_239 and var_358_239.color or ui and ui.maxUnit and ui.maxUnit.overColor or {
		1,
		0.4196078431,
		0.368627451,
		1
	}

	local var_358_243 = var_0_60.active

	var_0_60.active = var_358_240 and var_358_241 < var_358_242

	if var_0_60.active then
		var_0_60.t = (var_0_60.t or 0) + (arg_358_0 or 0)

		if not var_358_243 and battlefield and not battlefield.absorbMode and (not Tutorial or not Tutorial.isSlotStep or not Tutorial.isSlotStep()) then
			battlefield.absorbMode = true

			if var_0_79 then
				var_0_79("on")
			end
		end
	else
		var_0_60.t = 0
	end

	local var_358_244 = ui and ui.slotBlink
	local var_358_245 = var_358_244 and var_358_244.shake

	if var_0_60 and var_0_60.active and var_358_245 and var_358_245.enabled ~= false then
		slotBgJitter.active = true
		slotBgJitter.persistent = true

		if var_358_245.ampPx then
			slotBgJitter.ampPx = var_358_245.ampPx
		end

		if var_358_245.freq then
			slotBgJitter.freq = var_358_245.freq
		end

		if var_358_245.axis then
			slotBgJitter.axis = var_358_245.axis
		end
	elseif slotBgJitter and slotBgJitter.persistent then
		slotBgJitter.persistent = false
		slotBgJitter.active = false
		slotBgJitter.t = 0
		slotBgJitter.x = 0
		slotBgJitter.y = 0
	end

	if scrollIntroAnim then
		local var_358_246 = scrollIntroAnim.countupAnim

		if var_358_246 and var_358_246.current < var_358_246.target then
			var_358_246.tickT = (var_358_246.tickT or 0) + arg_358_0

			if var_358_246.tickT >= (var_358_246.tickInterval or 0.055) then
				var_358_246.tickT = var_358_246.tickT - (var_358_246.tickInterval or 0.055)
				var_358_246.current = var_358_246.current + 1
				scrollIntroAnim.spinCountdown = var_358_246.current
				scrollIntroAnim.tickImpactT = love.timer.getTime()

				if var_358_246.current >= var_358_246.target then
					var_358_246.stampT = love.timer.getTime()
				end
			end
		end

		if scrollIntroAnim.slideState == "wait" then
			local var_358_247 = 0

			if slotBgAnim then
				if slotBgAnim.state == "done" then
					var_358_247 = 1
				elseif slotBgAnim.state == "bounce" then
					var_358_247 = 1
				elseif slotBgAnim.state == "drop" then
					var_358_247 = math.min(1, slotBgAnim.t / math.max(0.001, slotBgAnim.dropDur or 0.55))
				end
			end

			if var_358_247 >= 0.5 then
				local var_358_248 = ui and ui.scrollIntroAnim

				scrollIntroAnim.slideState = "slide"
				scrollIntroAnim.slideT = 0
				scrollIntroAnim.slideY = var_358_248 and var_358_248.slideFromY or -50
			end
		elseif scrollIntroAnim.slideState == "slide" then
			scrollIntroAnim.slideT = (scrollIntroAnim.slideT or 0) + (arg_358_0 or 0)

			local var_358_249 = ui and ui.scrollIntroAnim
			local var_358_250 = var_358_249 and var_358_249.slideDur or 0.38
			local var_358_251 = var_358_249 and var_358_249.slideFromY or -50
			local var_358_252 = math.min(1, scrollIntroAnim.slideT / math.max(0.001, var_358_250))
			local var_358_253 = 1 - (1 - var_358_252) * (1 - var_358_252) * (1 - var_358_252)

			scrollIntroAnim.slideY = math.floor(var_358_251 * (1 - var_358_253) + 0.5)

			if var_358_252 >= 1 then
				scrollIntroAnim.slideState = "done"
				scrollIntroAnim.slideY = 0
				scrollIntroAnim.active = true
				scrollIntroAnim.t = 0
				scrollIntroAnim.frame = 0
				scrollIntroAnim.done = false
			end
		end
	end

	if scrollIntroAnim and scrollIntroAnim.active and not scrollIntroAnim.done then
		scrollIntroAnim.t = scrollIntroAnim.t + (arg_358_0 or 0)

		local var_358_254 = loadedAssets and loadedAssets.ui and loadedAssets.ui.scrollIntroAnim
		local var_358_255 = var_358_254 and var_358_254.frameCount or 1
		local var_358_256 = scrollIntroAnim.fps or 8
		local var_358_257 = math.floor(scrollIntroAnim.t * var_358_256)

		if var_358_255 <= var_358_257 then
			scrollIntroAnim.frame = var_358_255 - 1
			scrollIntroAnim.done = true
			scrollIntroAnim.active = false
		else
			scrollIntroAnim.frame = var_358_257
		end
	end

	if slotBgAnim and slotBgAnim.state ~= "done" then
		slotBgAnim.t = slotBgAnim.t + arg_358_0

		if slotBgAnim._dropSfxPending then
			slotBgAnim._dropSfxT = (slotBgAnim._dropSfxT or 0) + arg_358_0

			if (slotBgAnim._dropSfxT or 0) >= (slotBgAnim._dropSfxDelay or 0.08) then
				if slotBgAnim._playDropSfx then
					slotBgAnim._playDropSfx()
				end

				slotBgAnim._dropSfxPending = false
				slotBgAnim._dropSfxPlayed = true
			end
		end

		if slotBgAnim.state == "drop" then
			local var_358_258 = math.min(1, slotBgAnim.t / (slotBgAnim.dropDur or 0.55))
			local var_358_259 = 1 - (1 - var_358_258) * (1 - var_358_258) * (1 - var_358_258)

			slotBgAnim.y = -ui.virtual.H * (1 - var_358_259)

			if var_358_258 >= 1 then
				slotBgAnim.state = "bounce"
				slotBgAnim.t = 0
			end
		elseif slotBgAnim.state == "bounce" then
			local var_358_260 = math.min(1, slotBgAnim.t / (slotBgAnim.bounceDur or 0.18))
			local var_358_261 = 1 - (1 - var_358_260) * (1 - var_358_260)
			local var_358_262 = slotBgAnim.settleY or -6

			slotBgAnim.y = 0 + (var_358_262 - 0) * var_358_261

			if var_358_260 >= 1 then
				slotBgAnim.state = "done"
				slotBgAnim.t = 0
			end
		end
	end

	if coreBgAnim then
		if coreBgAnim.state == "wait" then
			if slotBgAnim then
				local var_358_263 = ui and ui.coreBackground and ui.coreBackground.startPhase or "done"
				local var_358_264 = ui and ui.coreBackground and ui.coreBackground.startU or 0
				local var_358_265 = false

				if var_358_263 == "bounce" and slotBgAnim.state == "bounce" then
					local var_358_266 = slotBgAnim.bounceDur or 0.24

					var_358_265 = var_358_264 <= (var_358_266 > 0 and math.min(1, (slotBgAnim.t or 0) / var_358_266) or 1)
				elseif var_358_263 == "drop" and slotBgAnim.state == "drop" then
					local var_358_267 = slotBgAnim.dropDur or 0.85

					var_358_265 = var_358_264 <= (var_358_267 > 0 and math.min(1, (slotBgAnim.t or 0) / var_358_267) or 1)
				elseif var_358_263 == "done" then
					var_358_265 = slotBgAnim.state == "done"
				else
					var_358_265 = slotBgAnim.state == "done"
				end

				if var_358_265 then
					coreBgAnim.state = "rise"
					coreBgAnim.t = 0
					coreBgAnim.y = ui.virtual.H
				end
			end
		elseif coreBgAnim.state == "rise" then
			coreBgAnim.t = (coreBgAnim.t or 0) + (arg_358_0 or 0)

			local var_358_268 = math.min(1, (coreBgAnim.t or 0) / math.max(0.001, coreBgAnim.riseDur or 0.45))
			local var_358_269 = 1 - (1 - var_358_268) * (1 - var_358_268) * (1 - var_358_268)

			coreBgAnim.y = ui.virtual.H * (1 - var_358_269)

			if var_358_268 >= 1 then
				coreBgAnim.state = "done"
				coreBgAnim.t = 0
				coreBgAnim.y = 0
			end
		end
	end

	if coreNumAnim then
		if coreNumAnim.state == "wait" then
			local var_358_270 = coreNumAnim.startAfter or "rise"
			local var_358_271 = false

			if var_358_270 == "rise" then
				var_358_271 = coreBgAnim and coreBgAnim.state == "rise"
			elseif var_358_270 == "done" then
				var_358_271 = coreBgAnim and coreBgAnim.state == "done"
			else
				var_358_271 = coreBgAnim and coreBgAnim.state ~= "wait"
			end

			if var_358_271 then
				coreNumAnim.t = (coreNumAnim.t or 0) + (arg_358_0 or 0)

				if (coreNumAnim.t or 0) >= (coreNumAnim.startDelay or 0) then
					coreNumAnim.state = "slide"
					coreNumAnim.t = 0
					coreNumAnim.x = coreNumAnim.fromX or -ui.virtual.W
				end
			end
		elseif coreNumAnim.state == "slide" then
			coreNumAnim.t = (coreNumAnim.t or 0) + (arg_358_0 or 0)

			local var_358_272 = math.max(0.001, coreNumAnim.slideDur or 0.45)
			local var_358_273 = math.min(1, (coreNumAnim.t or 0) / var_358_272)
			local var_358_274 = 1 - (1 - var_358_273) * (1 - var_358_273) * (1 - var_358_273)
			local var_358_275 = coreNumAnim.fromX or -ui.virtual.W

			coreNumAnim.x = math.floor(var_358_275 + (0 - var_358_275) * var_358_274 + 0.5)

			if var_358_273 >= 1 then
				coreNumAnim.state = "done"
				coreNumAnim.t = 0
				coreNumAnim.x = 0
			end
		end
	end

	local var_358_276 = ui and ui._itemPanelDrop

	if var_358_276 then
		local var_358_277 = {}

		for iter_358_7, iter_358_8 in pairs(var_358_276) do
			if iter_358_8 then
				local var_358_278 = math.max(0.001, iter_358_8.dur or 0.35)

				if var_358_278 > (iter_358_8.t or 0) then
					iter_358_8.t = (iter_358_8.t or 0) + (arg_358_0 or 0)

					if var_358_278 < iter_358_8.t then
						iter_358_8.t = var_358_278
					end
				end

				if var_358_278 <= (iter_358_8.t or 0) then
					if iter_358_8.consumeOnDone then
						var_358_277[#var_358_277 + 1] = iter_358_7
					end

					var_358_276[iter_358_7] = nil
				end
			end
		end

		if #var_358_277 > 0 and ui and ui._itemPurchased then
			local var_358_279 = ui._itemPurchased
			local var_358_280 = ui._itemPurchasedKeys

			for iter_358_9, iter_358_10 in ipairs(var_358_277) do
				local var_358_281

				if var_358_280 then
					for iter_358_11, iter_358_12 in ipairs(var_358_280) do
						if iter_358_12 == iter_358_10 then
							var_358_281 = iter_358_11

							break
						end
					end
				end

				if not var_358_281 and type(iter_358_10) == "table" then
					for iter_358_13, iter_358_14 in ipairs(var_358_279) do
						if iter_358_14 == iter_358_10 then
							var_358_281 = iter_358_13

							break
						end
					end
				end

				if var_358_281 then
					local var_358_282 = var_358_279[var_358_281]

					table.remove(var_358_279, var_358_281)

					if var_358_280 then
						table.remove(var_358_280, var_358_281)
					end

					if ui._itemHoverDef == var_358_282 then
						ui._itemHoverDef = nil
					end

					if ui._itemHoverDefLast == var_358_282 then
						ui._itemHoverDefLast = nil
					end

					local var_358_283 = ui._itemPanelCooldown

					if var_358_283 then
						var_358_283[iter_358_10] = nil
						var_358_283[var_358_282] = nil
					end

					local var_358_284 = ui._itemPanelClickPop

					if var_358_284 then
						var_358_284[iter_358_10] = nil
						var_358_284[var_358_282] = nil
					end

					local var_358_285 = ui._itemPanelHover

					if var_358_285 then
						var_358_285[iter_358_10] = nil
						var_358_285[var_358_282] = nil
					end

					local var_358_286 = ui._itemPanelShapeRipple

					if var_358_286 then
						var_358_286[iter_358_10] = nil
					end
				end
			end
		end
	end

	local var_358_287 = ui and ui._itemPanelCooldown

	if var_358_287 and battlefield and battlefield.mode == "battle" then
		for iter_358_15, iter_358_16 in pairs(var_358_287) do
			if iter_358_16 and not iter_358_16.done then
				iter_358_16.t = (iter_358_16.t or 0) + (arg_358_0 or 0)

				if iter_358_16.t >= (iter_358_16.dur or 0) then
					iter_358_16.t = iter_358_16.dur or iter_358_16.t
					iter_358_16.done = true
				end
			end
		end
	end

	local var_358_288 = ui and ui._itemPanelClickPop

	if var_358_288 then
		for iter_358_17, iter_358_18 in pairs(var_358_288) do
			if iter_358_18 and iter_358_18.phase and iter_358_18.phase ~= "done" then
				iter_358_18.t = (iter_358_18.t or 0) + (arg_358_0 or 0)

				local var_358_289 = (ui and ui.itemInventory and ui.itemInventory.panel or {}).clickPop or {}
				local var_358_290 = math.max(0.001, iter_358_18.upDurSec or var_358_289.upDurSec or 0.08)
				local var_358_291 = math.max(0.001, iter_358_18.downDurSec or var_358_289.downDurSec or 0.12)
				local var_358_292 = iter_358_18.upPx or var_358_289.upPx or 14

				if iter_358_18.phase == "press" then
					local var_358_293 = math.max(0.001, iter_358_18.pressDurSec or 0.1)
					local var_358_294 = math.min(1, (iter_358_18.t or 0) / var_358_293)
					local var_358_295 = var_358_294 * var_358_294 * (3 - 2 * var_358_294)

					iter_358_18.offsetY = (iter_358_18.pressPx or 5) * var_358_295

					if var_358_294 >= 1 then
						iter_358_18.phase = "rebound"
						iter_358_18.t = 0
					end
				elseif iter_358_18.phase == "rebound" then
					local var_358_296 = math.max(0.001, iter_358_18.reboundDurSec or 0.12)
					local var_358_297 = math.min(1, (iter_358_18.t or 0) / var_358_296)
					local var_358_298 = 1 - (1 - var_358_297) * (1 - var_358_297) * (1 - var_358_297)
					local var_358_299 = iter_358_18.pressPx or 5

					iter_358_18.offsetY = var_358_299 + (-(iter_358_18.reboundPx or 4) - var_358_299) * var_358_298

					if var_358_297 >= 1 then
						iter_358_18.phase = "settle"
						iter_358_18.t = 0
					end
				elseif iter_358_18.phase == "settle" then
					local var_358_300 = math.max(0.001, iter_358_18.settleDurSec or 0.18)
					local var_358_301 = math.min(1, (iter_358_18.t or 0) / var_358_300)
					local var_358_302 = 1 - (1 - var_358_301) * (1 - var_358_301) * (1 - var_358_301)

					iter_358_18.offsetY = -(iter_358_18.reboundPx or 4) * (1 - var_358_302)

					if var_358_301 >= 1 then
						iter_358_18.phase = "done"
						iter_358_18.t = 0
						iter_358_18.offsetY = 0
					end
				elseif iter_358_18.phase == "wait" then
					local var_358_303 = math.max(0, iter_358_18.waitSec or 0.08)

					iter_358_18.offsetY = 0

					if var_358_303 <= (iter_358_18.t or 0) then
						iter_358_18.phase = "up"
						iter_358_18.t = 0
					end
				elseif iter_358_18.phase == "up" then
					local var_358_304 = math.min(1, (iter_358_18.t or 0) / var_358_290)
					local var_358_305 = 1 - (1 - var_358_304) * (1 - var_358_304) * (1 - var_358_304)

					iter_358_18.offsetY = -var_358_292 * var_358_305

					if var_358_304 >= 1 then
						iter_358_18.phase = "down"
						iter_358_18.t = 0
					end
				elseif iter_358_18.phase == "down" then
					local var_358_306 = math.min(1, (iter_358_18.t or 0) / var_358_291)
					local var_358_307 = 1 - (1 - var_358_306) * (1 - var_358_306) * (1 - var_358_306)

					iter_358_18.offsetY = -var_358_292 * (1 - var_358_307)

					if var_358_306 >= 1 then
						iter_358_18.phase = "done"
						iter_358_18.t = 0
						iter_358_18.offsetY = 0
					end
				end
			end
		end
	end

	local var_358_308 = ui and ui._itemPanelRipple

	if var_358_308 then
		for iter_358_19, iter_358_20 in pairs(var_358_308) do
			if iter_358_20 and not iter_358_20.done then
				iter_358_20.t = (iter_358_20.t or 0) + (arg_358_0 or 0)

				if iter_358_20.t >= (iter_358_20.dur or 0.6) then
					iter_358_20.t = iter_358_20.dur or iter_358_20.t
					iter_358_20.done = true
				end
			end
		end
	end

	local var_358_309 = ui and ui._itemPanelShapeRipple

	if var_358_309 then
		for iter_358_21, iter_358_22 in pairs(var_358_309) do
			if iter_358_22 then
				iter_358_22.t = (iter_358_22.t or 0) + (arg_358_0 or 0)
			end
		end
	end

	if battlefield and battlefield._requestAbsorbOffAnim then
		var_0_79("off")

		battlefield._requestAbsorbOffAnim = nil

		if ui and ui.tooltip then
			local var_358_310 = ui.tooltip

			var_358_310._predActive = false
			var_358_310._predSrcSym = nil
			var_358_310._predTarget = nil
			var_358_310._predTargetSym = nil
			var_358_310.state = "IDLE"
			var_358_310.target = nil
			var_358_310.fade = 0
		end
	end

	if ui and ui.slot then
		local var_358_311 = slot and slot.spin and slot.spin.active and 1 or 0
		local var_358_312 = 6

		spinShake.amp = spinShake.amp + (var_358_311 - spinShake.amp) * math.min(1, var_358_312 * (arg_358_0 or 0))
		spinShake.t = (spinShake.t or 0) + (arg_358_0 or 0)

		local var_358_313 = ui.slot and ui.slot.spinShake or {}
		local var_358_314 = var_358_313.ampPx or 2
		local var_358_315 = math.max(1, math.floor(var_358_314 * ui.scale + 0.2))
		local var_358_316 = math.floor(var_358_315 * spinShake.amp + 0.5)
		local var_358_317 = 0
		local var_358_318 = 0

		if var_358_316 > 0 then
			local var_358_319 = spinShake.t
			local var_358_320 = var_358_313.mixA or 0.7
			local var_358_321 = var_358_313.freqA or 2.1
			local var_358_322 = var_358_313.freqB or 3
			local var_358_323 = var_358_313.phaseB or 0.8
			local var_358_324 = var_358_320 * math.sin(2 * math.pi * var_358_321 * var_358_319) + (1 - var_358_320) * math.sin(2 * math.pi * var_358_322 * var_358_319 + var_358_323)

			var_358_318 = math.floor(var_358_316 * var_358_324 + 0.5)
		end

		local var_358_325 = 0

		if spinPressShake and spinPressShake.active then
			spinPressShake.t = (spinPressShake.t or 0) + (arg_358_0 or 0)

			local var_358_326 = math.max(0, math.min(1, (spinPressShake.t or 0) / math.max(0.001, spinPressShake.dur or 0.18)))
			local var_358_327 = (1 - var_358_326) * (1 - var_358_326)
			local var_358_328 = (spinPressShake.ampPx or 3) * var_358_327
			local var_358_329 = spinPressShake.freq or 8
			local var_358_330 = math.sin(2 * math.pi * var_358_329 * (spinPressShake.t or 0))
			local var_358_331 = var_358_328 * 0.5
			local var_358_332 = math.floor(var_358_328 * var_358_330 - var_358_331 + 0.5)

			spinPressShake.y = var_358_332

			if (spinPressShake.t or 0) >= (spinPressShake.dur or 0.18) then
				spinPressShake.active = false
				spinPressShake.t = 0
				spinPressShake.y = 0
			end
		else
			spinPressShake.y = 0
		end

		local var_358_333 = 0

		if spinGoldDenyFX and spinGoldDenyFX.active then
			spinGoldDenyFX.t = (spinGoldDenyFX.t or 0) + (arg_358_0 or 0)

			local var_358_334 = math.max(0.001, spinGoldDenyFX.dur or 0.34)
			local var_358_335 = math.max(0, math.min(1, spinGoldDenyFX.t / var_358_334))
			local var_358_336 = (1 - var_358_335) * (1 - var_358_335)
			local var_358_337 = math.sin(2 * math.pi * (spinGoldDenyFX.freq or 19) * spinGoldDenyFX.t)

			var_358_333 = math.floor((spinGoldDenyFX.ampPx or 3) * var_358_336 * var_358_337 + 0.5)
			spinGoldDenyFX.x = var_358_333

			if var_358_334 <= spinGoldDenyFX.t then
				spinGoldDenyFX.active = false
				spinGoldDenyFX.t = 0
				spinGoldDenyFX.x = 0
				var_358_333 = 0
			end
		elseif spinGoldDenyFX then
			spinGoldDenyFX.x = 0
		end

		spinShake.x, spinShake.y = var_358_333, var_358_318

		if slotSway then
			slotSway.x = 0
		end

		ui.slot.bgAnimX = 0
		ui.slot.bgAnimY = math.floor((slotBgAnim and slotBgAnim.y or 0) + var_358_318 + 0.5)

		if var_0_65 then
			if var_0_65.state == "wait" then
				if slotBgAnim and slotBgAnim.state == "done" then
					var_0_65.dropDur = slotBgAnim.dropDur or var_0_65.dropDur
					var_0_65.bounceDur = slotBgAnim.bounceDur or var_0_65.bounceDur
					var_0_65.settleY = slotBgAnim.settleY or var_0_65.settleY
					var_0_65.state = "drop"
					var_0_65.t = 0
					var_0_65.y = -ui.virtual.H
				end
			elseif var_0_65.state == "drop" then
				var_0_65.t = var_0_65.t + (arg_358_0 or 0)

				local var_358_338 = math.min(1, var_0_65.t / (var_0_65.dropDur or 0.85))
				local var_358_339 = 1 - (1 - var_358_338) * (1 - var_358_338) * (1 - var_358_338)

				var_0_65.y = -ui.virtual.H * (1 - var_358_339)

				if var_358_338 >= 1 then
					var_0_65.state = "bounce"
					var_0_65.t = 0
				end
			elseif var_0_65.state == "bounce" then
				var_0_65.t = var_0_65.t + (arg_358_0 or 0)

				local var_358_340 = math.min(1, var_0_65.t / (var_0_65.bounceDur or 0.18))
				local var_358_341 = 1 - (1 - var_358_340) * (1 - var_358_340)
				local var_358_342 = var_0_65.settleY or 0

				var_0_65.y = 0 + (var_358_342 - 0) * var_358_341

				if var_358_340 >= 1 then
					var_0_65.state = "done"
					var_0_65.t = 0
				end
			end

			if var_0_65.state == "done" then
				var_0_68 = (var_0_68 or 0) + (arg_358_0 or 0)
			end

			local var_358_343 = 0
			local var_358_344 = ui and ui.heartIdle or {
				ampPx = 2,
				freq = 0.6
			}

			if var_0_65.state == "done" then
				local var_358_345 = math.max(0, var_358_344.ampPx or 2)
				local var_358_346 = var_358_344.freq or 0.6

				if var_358_345 > 0 and var_358_346 > 0 then
					var_358_343 = math.sin(2 * math.pi * var_358_346 * (var_0_68 or 0)) * var_358_345
				end
			end

			ui.slot.heartAnimY = (var_0_65.y or 0) + var_358_343
		end
	end

	slot:update(arg_358_0)

	if slot and slot.spin and not slot.spin.active then
		stopRollingSound()
	end

	local var_358_347 = ui and ui._stoneActivated

	if var_358_347 and var_358_347.active then
		var_358_347.t = (var_358_347.t or 0) + (arg_358_0 or 0)

		local var_358_348 = ui and ui.pauseOverlayState
		local var_358_349 = ui and ui.pauseOverlay or {}
		local var_358_350 = var_358_349 and var_358_349.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
		local var_358_351 = var_358_349 and var_358_349.visibleY or 0
		local var_358_352 = var_358_348 and var_358_348.y or var_358_350
		local var_358_353 = var_358_349 and var_358_349.snapEps or 0.5
		local var_358_354 = var_358_348 and var_358_348.active and var_358_353 >= math.abs((var_358_352 or 0) - (var_358_351 or 0))

		var_358_347._pauseReleaseDur = var_358_347._pauseReleaseDur or 0.45

		if var_358_354 then
			var_358_347._pauseReleaseT = math.min(var_358_347._pauseReleaseDur, (var_358_347._pauseReleaseT or 0) + (arg_358_0 or 0))
		else
			var_358_347._pauseReleaseT = 0
		end

		if var_358_347.phase == "fadein" then
			if var_358_347.t >= (var_358_347.fadeInDur or 0.5) then
				var_358_347.phase = "active"
				var_358_347.t = 0
			end
		elseif var_358_347.phase == "active" then
			if slot and slot.spin and slot.spin.active then
				var_358_347.phase = "spinning"
			end
		elseif var_358_347.phase == "spinning" then
			-- block empty
		elseif var_358_347.phase == "fadeout" and var_358_347.t >= (var_358_347.fadeOutDur or 0.4) then
			if var_358_347._origProbs then
				local var_358_355 = require("src.data.constants")

				if var_358_355 and var_358_355.unitGrades and var_358_355.unitGrades.probabilities then
					for iter_358_23, iter_358_24 in pairs(var_358_347._origProbs) do
						var_358_355.unitGrades.probabilities[iter_358_23] = iter_358_24
					end
				end
			end

			local var_358_356 = var_358_347.panelKey
			local var_358_357 = var_358_347.def
			local var_358_358 = var_358_347.panelConfig or {}
			local var_358_359, var_358_360 = pcall(require, "src.game.item")

			if var_358_359 and var_358_360 and type(var_358_360.activate) == "function" then
				var_358_360.activate(var_358_357, battlefield, ui)
			end

			ui._itemPanelDrop = ui._itemPanelDrop or {}

			local var_358_361 = var_358_358.dropStartOffsetPx ~= nil and var_358_358.dropStartOffsetPx or -(var_358_358.dropOffsetPx or 16)
			local var_358_362 = var_358_358.dropEndOffsetPx ~= nil and var_358_358.dropEndOffsetPx or 0

			ui._itemPanelDrop[var_358_356] = {
				consumeOnDone = true,
				t = 0,
				dur = var_358_358.dropDur or 0.35,
				start = var_358_362,
				finish = var_358_361
			}
			ui._stoneActivated = nil

			stopStoneSlotModSound()
		end
	end

	if pendingBattle and pendingBattle.deferStart then
		local var_358_363 = slot and slot.spin and slot.spin.active
		local var_358_364 = slot and slot.result and slot.result.winSeq and slot.result.winSeq.active
		local var_358_365 = ui and ui._stoneActivated and ui._stoneActivated.active or false

		if not var_358_363 and not var_358_364 and not var_358_365 then
			if not battlefield.gameOver then
				local var_358_366 = var_0_142()

				if var_358_366 and var_358_366.right then
					if ui then
						ui._coreSelectOffersCache = nil
					end

					var_0_47(var_358_366.right)

					phase = "battle"
				else
					if ui then
						ui._coreSelectOffersCache = nil
					end

					var_0_47({
						y = 0,
						x = 0,
						w = ui.virtual.W,
						h = ui.virtual.H
					})

					phase = "battle"
				end
			end

			if waveTimer then
				waveTimer.t = 0
				waveTimer.state = "countdown"
				waveTimer.fadeT = 0
				waveTimer.appearT = 0
				waveTimer.manualStart = false
			end

			pendingBattle.deferStart = false
		end
	end

	var_0_122()

	local var_358_367 = slot and slot.result
	local var_358_368 = var_358_367 and var_358_367.winSeq

	if var_358_368 and var_358_368.active and var_358_368.steps and #var_358_368.steps > 0 then
		if var_358_368.i <= 0 then
			var_358_368.i = 1
			var_358_368.t = 0
			var_358_368.spawnedForStep = false
		end

		local var_358_369 = var_358_368.steps[var_358_368.i]

		if var_358_369 then
			var_358_367.visibleWinningLines = {
				var_358_369.lineId
			}

			if not var_358_367.highlightActive or var_358_367.ht == 0 then
				var_358_367.highlightActive = true
				var_358_367.ht = 0
				var_358_367.hd = math.max(0.1, var_358_368.dur or 0.55)

				if var_358_368.steps then
					local var_358_370 = {}

					for iter_358_25, iter_358_26 in ipairs(var_358_368.steps) do
						if iter_358_26 and iter_358_26.lineId and iter_358_26.lineId <= 5 then
							table.insert(var_358_370, iter_358_25)
						end
					end

					table.sort(var_358_370)

					if #var_358_370 == 5 and var_358_368.i == var_358_370[#var_358_370] then
						local var_358_371 = ui.jackpotBannerState or {}

						ui.jackpotBannerState = var_358_371

						if not var_358_371.active then
							var_358_371.active = true
							var_358_371.t = 0
							jungsu = (jungsu or 0) + 2
							ui.jungsuBalanceTarget = jungsu

							if var_0_18 and var_0_18.onEssenceChange then
								var_0_18.onEssenceChange(jungsu)
							end

							addJungsuPopup(2)

							local var_358_372 = ui.monster

							if var_358_372 and var_358_372.eyesShine and var_358_372.eyesShine.enabled ~= false then
								if not var_0_70.active then
									var_0_70.active = true
									var_0_70.t = 0
									var_0_70.pulseT = 0
								end

								var_0_70.sustainUntilBannerEnd = true
								var_0_70.seenBanner = false
							end
						end
					end
				end
			end

			if not var_358_368.spawnedForStep and battlefield and var_358_369.sym and (not var_358_368.spawnDelay or (var_358_368.t or 0) >= var_358_368.spawnDelay) then
				local var_358_373 = false

				if var_358_368.steps then
					local var_358_374 = {}

					for iter_358_27, iter_358_28 in ipairs(var_358_368.steps) do
						if iter_358_28 and iter_358_28.lineId and iter_358_28.lineId <= 5 then
							table.insert(var_358_374, iter_358_27)
						end
					end

					table.sort(var_358_374)

					if #var_358_374 == 5 and var_358_368.i == #var_358_368.steps then
						var_358_373 = true
					end
				end

				local var_358_375 = 0

				if battlefield.spawnAnnouncements and #battlefield.spawnAnnouncements > 0 then
					var_358_375 = #battlefield.spawnAnnouncements
				end

				local var_358_376 = 1
				local var_358_377 = not var_0_21 and slot and slot.sandboxNextWinGrade or nil
				local var_358_378 = var_358_377 and var_358_377 ~= "prism"

				local function var_358_379(arg_362_0)
					if not var_358_377 then
						return arg_362_0
					end

					arg_362_0 = arg_362_0 or {}
					arg_362_0.grade = var_358_377

					local var_362_0

					if battlefield and battlefield.getSandboxGradeProbabilities then
						local var_362_1 = battlefield:getSandboxGradeProbabilities()

						var_362_0 = var_362_1 and var_362_1[var_358_377]
					end

					arg_362_0.gradeChance = tonumber(var_362_0) or nil
					arg_362_0.sandboxForcedGrade = true

					if var_358_377 == "prism" then
						arg_362_0.specialJackpot5th = true
					end

					return arg_362_0
				end

				local var_358_380 = 1

				if slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.rewardMul or 1) and (slot._coreSpinMods.rewardMul or 1) > 1 then
					var_358_380 = math.max(1, math.floor(slot._coreSpinMods.rewardMul))
				end

				local var_358_381 = var_358_376 * var_358_380
				local var_358_382 = slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.allyStatMul or 1) or 1
				local var_358_383

				if var_358_382 and var_358_382 > 1 then
					var_358_383 = {
						statBuffMul = var_358_382
					}
				end

				local var_358_384 = var_358_379(var_358_383)

				if var_358_373 and not var_358_378 then
					if var_358_384 then
						var_358_384.specialJackpot5th = true
					else
						var_358_384 = {
							specialJackpot5th = true
						}
					end
				end

				local var_358_385
				local var_358_386 = slot and slot._tutorialSpin or nil
				local var_358_387 = (var_358_386 == "warrior" or var_358_386 == "nudge_setup") and "W" or (var_358_386 == "mage_spear" or var_358_386 == "post_core_spears") and "S" or "A"
				local var_358_388 = (var_358_386 == "mage_spear" or var_358_386 == "post_core_spears") and var_358_369.sym == "S" or var_358_369.sym == var_358_387

				if var_358_386 and var_358_388 and battlefield.rosterSymbols then
					var_358_385 = #battlefield.rosterSymbols + 1
				end

				if var_358_373 and not var_358_378 then
					var_0_89(var_358_369.sym, var_358_381, var_358_384 or {
						specialJackpot5th = true
					})
				else
					var_0_89(var_358_369.sym, var_358_381, var_358_384)
				end

				local var_358_389, var_358_390 = pcall(require, "src.game.cores")

				if var_358_389 and var_358_390 and var_358_390.getActive then
					local var_358_391 = var_358_390.getActive()
					local var_358_392 = false

					for iter_358_29, iter_358_30 in ipairs(var_358_391 or {}) do
						if iter_358_30 and iter_358_30.key == "EchoMirror" then
							var_358_392 = true

							break
						end
					end

					if var_358_392 then
						local var_358_393 = 0

						for iter_358_31 = 1, math.max(0, tonumber(var_358_381 or 0) or 0) do
							if love.math.random() < 0.1 then
								var_358_393 = var_358_393 + 1
							end
						end

						if var_358_393 > 0 then
							local var_358_394
							local var_358_395 = slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.allyStatMul or 1) or 1

							if var_358_395 and var_358_395 > 1 then
								var_358_394 = {
									statBuffMul = var_358_395
								}
							end

							local var_358_396 = var_358_379(var_358_394)

							if var_358_373 and not var_358_378 then
								var_358_396 = var_358_396 or {}
								var_358_396.specialJackpot5th = true
							end

							var_0_89(var_358_369.sym, var_358_393, var_358_396)

							local var_358_397 = love.timer.getTime()

							for iter_358_32, iter_358_33 in ipairs(var_358_391 or {}) do
								if iter_358_33 and iter_358_33.key == "EchoMirror" then
									iter_358_33._uiTrigger = true
									iter_358_33._uiPulseT0 = var_358_397
									iter_358_33._uiPulseDur = 0.6
								end
							end
						end
					end
				end

				local var_358_398 = slot and slot.result
				local var_358_399 = {}

				if var_358_398 and type(var_358_398._coreExtraSpawns) == "table" then
					for iter_358_34, iter_358_35 in ipairs(var_358_398._coreExtraSpawns) do
						if iter_358_35 and iter_358_35.consumed ~= true and iter_358_35.sym == var_358_369.sym then
							table.insert(var_358_399, iter_358_35)
						end
					end
				elseif var_358_398 and var_358_398._coreExtraSpawnPending and not var_358_398._coreExtraSpawnConsumed and var_358_398._coreExtraSpawnSym == var_358_369.sym then
					table.insert(var_358_399, {
						count = 1,
						legacy = true,
						sym = var_358_398._coreExtraSpawnSym,
						noAbsorbEssence = var_358_398._coreExtraSpawnNoAbsorbEssence == true
					})
				end

				if #var_358_399 > 0 then
					local var_358_400, var_358_401 = pcall(require, "src.game.cores")
					local var_358_402 = var_358_400 and var_358_401 and var_358_401.getActive and var_358_401.getActive() or {}
					local var_358_403 = false

					for iter_358_36, iter_358_37 in ipairs(var_358_402 or {}) do
						if iter_358_37 and iter_358_37.key == "EchoMirror" then
							var_358_403 = true

							break
						end
					end

					local var_358_404 = {}
					local var_358_405 = false

					local function var_358_406(arg_363_0)
						local var_363_0
						local var_363_1 = slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.allyStatMul or 1) or 1

						if var_363_1 and var_363_1 > 1 then
							var_363_0 = {
								statBuffMul = var_363_1
							}
						end

						local var_363_2 = var_358_379(var_363_0)

						if var_358_373 and not var_358_378 then
							var_363_2 = var_363_2 or {}
							var_363_2.specialJackpot5th = true
						end

						if arg_363_0 == true then
							var_363_2 = var_363_2 or {}
							var_363_2.noAbsorbEssence = true
						end

						return var_363_2
					end

					for iter_358_38, iter_358_39 in ipairs(var_358_399) do
						local var_358_407 = math.max(1, math.floor(tonumber(iter_358_39.count or 1) or 1))
						local var_358_408 = iter_358_39.noAbsorbEssence == true

						var_0_89(var_358_369.sym, var_358_407, var_358_406(var_358_408))

						iter_358_39.consumed = true

						if iter_358_39.sourceKey then
							var_358_404[iter_358_39.sourceKey] = true
						end

						if var_358_403 then
							local var_358_409 = 0

							for iter_358_40 = 1, var_358_407 do
								if love.math.random() < 0.1 then
									var_358_409 = var_358_409 + 1
								end
							end

							if var_358_409 > 0 then
								var_0_89(var_358_369.sym, var_358_409, var_358_406(var_358_408))

								var_358_405 = true
							end
						end
					end

					var_358_398._coreExtraSpawnConsumed = true

					if var_358_400 and var_358_401 and var_358_401.getActive then
						local var_358_410 = love.timer.getTime()

						for iter_358_41, iter_358_42 in ipairs(var_358_402 or {}) do
							local var_358_411 = next(var_358_404) == nil and iter_358_42 and (iter_358_42.key == "Chainshroom" or iter_358_42.key == "EchoLantern" or iter_358_42.key == "ResonantAnvil" or iter_358_42.key == "SplinteredTorch" or iter_358_42.key == "Wildcard")

							if iter_358_42 and (var_358_404[iter_358_42.key] or var_358_411) then
								iter_358_42._uiPulseT0 = var_358_410
								iter_358_42._uiPulseDur = 0.6
							end
						end

						if var_358_405 then
							for iter_358_43, iter_358_44 in ipairs(var_358_402 or {}) do
								if iter_358_44 and iter_358_44.key == "EchoMirror" then
									iter_358_44._uiTrigger = true
									iter_358_44._uiPulseT0 = var_358_410
									iter_358_44._uiPulseDur = 0.6
								end
							end
						end
					end
				end

				local var_358_412 = false
				local var_358_413 = false
				local var_358_414 = false
				local var_358_415 = false

				if battlefield.spawnAnnouncements and var_358_375 < #battlefield.spawnAnnouncements then
					for iter_358_45 = var_358_375 + 1, #battlefield.spawnAnnouncements do
						local var_358_416 = battlefield.spawnAnnouncements[iter_358_45]

						if var_358_416 and (var_358_416.grade == "prism" or var_358_416.specialJackpot5th == true) then
							var_358_415 = true

							break
						elseif var_358_416 and var_358_416.grade == "legendary" then
							var_358_414 = true

							break
						elseif var_358_416 and var_358_416.grade == "rare" then
							var_358_413 = true
						elseif var_358_416 and var_358_416.grade == "advanced" then
							var_358_412 = true
						end
					end
				end

				var_358_368._advByStep = var_358_368._advByStep or {}
				var_358_368._rareByStep = var_358_368._rareByStep or {}
				var_358_368._legendByStep = var_358_368._legendByStep or {}
				var_358_368._prismByStep = var_358_368._prismByStep or {}
				var_358_368._advByStep[var_358_368.i] = var_358_412
				var_358_368._rareByStep[var_358_368.i] = var_358_413
				var_358_368._legendByStep[var_358_368.i] = var_358_414
				var_358_368._prismByStep[var_358_368.i] = var_358_415
				var_358_368.spawnedForStep = true

				if var_358_386 and var_358_388 and Tutorial and Tutorial.onTutorialWinSpawned then
					local var_358_417 = var_0_142 and var_0_142() or nil

					if Tutorial.onTutorialWinSpawned(ui, var_358_417, var_358_385, var_358_386) then
						slot._tutorialSpin = false
					end
				end

				local var_358_418 = ui and ui.slot and ui.slot.lineHitSquash or {
					startIndex = 3,
					dur = 0.4,
					amp = 0.06
				}
				local var_358_419 = math.max(1, tonumber(var_358_418.startIndex or 3) or 3)
				local var_358_420 = var_358_412 or var_358_413 or var_358_414 or var_358_415

				if var_358_419 <= var_358_368.i or var_358_420 then
					local var_358_421 = 1
					local var_358_422 = 1

					if var_358_415 then
						var_358_421 = 2.5
						var_358_422 = 1.5
					elseif var_358_414 then
						var_358_421 = 2
						var_358_422 = 1.3
					elseif var_358_413 then
						var_358_421 = 1.5
						var_358_422 = 1.2
					elseif var_358_412 then
						var_358_421 = 1.2
						var_358_422 = 1.1
					end

					slotBgSquash.active = true
					slotBgSquash.t = 0
					slotBgSquash.dur = (var_358_418.dur or 0.4) * var_358_422

					local var_358_423 = 1

					if var_358_418.ampByLine and type(var_358_418.ampByLine) == "table" then
						var_358_423 = tonumber(var_358_418.ampByLine[var_358_368.i] or 1) or 1
					end

					slotBgSquash.amp = (var_358_418.amp or 0.06) * var_358_423 * var_358_421

					local var_358_424 = var_358_418.shake or {}

					slotBgJitter.active = true
					slotBgJitter.t = 0
					slotBgJitter.dur = (var_358_424.dur or 0.22) * var_358_422
					slotBgJitter.freq = var_358_424.freq or 16
					slotBgJitter.axis = var_358_424.axis or "xy"

					local var_358_425 = 1

					if var_358_424.byLine and type(var_358_424.byLine) == "table" then
						var_358_425 = tonumber(var_358_424.byLine[var_358_368.i] or 1) or 1
					end

					slotBgJitter.ampPx = (var_358_424.ampPx or 2) * var_358_425 * var_358_421

					local var_358_426 = var_358_418.screenShake or {}
					local var_358_427 = 1

					if var_358_426.byLine and type(var_358_426.byLine) == "table" then
						var_358_427 = tonumber(var_358_426.byLine[var_358_368.i] or 1) or 1
					end

					screenLineShake.active = true
					screenLineShake.t = 0
					screenLineShake.dur = (var_358_426.dur or screenLineShake.dur or 0.16) * var_358_422
					screenLineShake.freq = var_358_426.freq or screenLineShake.freq or 22
					screenLineShake.axis = var_358_426.axis or screenLineShake.axis or "xy"
					screenLineShake.ampPx = (var_358_426.ampPx or screenLineShake.ampPx or 1.2) * var_358_427 * var_358_421
					screenLineShake.x, screenLineShake.y = 0, 0
				end
			end

			if var_358_368._lastWinSfxStep ~= var_358_368.i then
				local var_358_428 = ui and ui.pauseOverlayState and ui.pauseOverlayState.active
				local var_358_429 = loadedAssets and loadedAssets.audio
				local var_358_430 = var_358_368._prismByStep and var_358_368._prismByStep[var_358_368.i]
				local var_358_431 = var_358_368._legendByStep and var_358_368._legendByStep[var_358_368.i]
				local var_358_432 = var_358_368._rareByStep and var_358_368._rareByStep[var_358_368.i]
				local var_358_433 = not var_358_428 and var_358_429 and (var_358_430 and (var_358_429.winprism or var_358_429.winlegend or var_358_429.winrare or var_358_429.win) or var_358_431 and (var_358_429.winlegend or var_358_429.winrare or var_358_429.win) or var_358_432 and (var_358_429.winrare or var_358_429.win) or var_358_429.win)

				if var_358_433 then
					local var_358_434 = 1 + 0.06 * (math.max(1, math.min(8, tonumber(var_358_368.i or 1) or 1)) - 1)

					if var_358_433.setPitch then
						var_358_433:setPitch(var_358_434)
					end

					if var_358_433:isPlaying() then
						var_358_433:stop()
					end

					var_358_433:play()
				end

				if Render2 and Render2.triggerSlotWinEffects and var_358_369 then
					local var_358_435 = "normal"

					if var_358_430 then
						var_358_435 = "prism"
					elseif var_358_431 then
						var_358_435 = "legendary"
					elseif var_358_432 then
						var_358_435 = "rare"
					elseif var_358_368._advByStep and var_358_368._advByStep[var_358_368.i] then
						var_358_435 = "advanced"
					end

					var_0_63(var_358_435)
					Render2.triggerSlotWinEffects(ui, lastLayout and lastLayout.grid, var_358_369.lineId, var_358_435)
				end

				var_358_368._lastWinSfxStep = var_358_368.i
			end

			var_358_368.t = var_358_368.t + (arg_358_0 or 0)

			if math.max(0.1, var_358_368.dur or 0.55) <= var_358_368.t then
				var_358_368.i = var_358_368.i + 1
				var_358_368.t = 0
				var_358_368.spawnedForStep = false
				var_358_367.highlightActive = false
				var_358_367.ht = 0
			end
		end

		if var_358_368.i > #var_358_368.steps then
			var_358_368.active = false
			var_358_367.visibleWinningLines = nil
			var_358_367.highlightActive = false
			var_358_367.ht = 0

			if var_358_368.steps then
				local var_358_436 = {
					false,
					false,
					false,
					false,
					false
				}

				for iter_358_46, iter_358_47 in ipairs(var_358_368.steps) do
					if iter_358_47 and iter_358_47.lineId and iter_358_47.lineId >= 1 and iter_358_47.lineId <= 5 then
						var_358_436[iter_358_47.lineId] = true
					end
				end

				local var_358_437 = true

				for iter_358_48 = 1, 5 do
					if not var_358_436[iter_358_48] then
						var_358_437 = false

						break
					end
				end

				if var_358_437 then
					ui.jackpotBannerState = ui.jackpotBannerState or {}

					if not ui.jackpotBannerState.active then
						ui.jackpotBannerState.active = true
						ui.jackpotBannerState.t = 0
						jungsu = (jungsu or 0) + 2
						ui.jungsuBalanceTarget = jungsu

						if var_0_18 and var_0_18.onEssenceChange then
							var_0_18.onEssenceChange(jungsu)
						end

						addJungsuPopup(2)

						if ui and ui.monster and ui.monster.eyesShine and ui.monster.eyesShine.enabled ~= false then
							if not var_0_70.active then
								var_0_70.active = true
								var_0_70.t = 0
								var_0_70.pulseT = 0
							end

							var_0_70.sustainUntilBannerEnd = true
							var_0_70.seenBanner = false
						end
					end
				end
			end

			local var_358_438 = slot and slot.result

			if var_358_438 and var_358_438._coreExtraSpawnPending and not var_358_438._coreExtraSpawnConsumed and var_358_368 and var_358_368.steps and #var_358_368.steps > 0 then
				local var_358_439 = var_358_368.steps[1] and var_358_368.steps[1].sym

				if var_358_439 then
					local var_358_440
					local var_358_441 = slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.allyStatMul or 1) or 1

					if var_358_441 and var_358_441 > 1 then
						var_358_440 = {
							statBuffMul = var_358_441
						}
					end

					if var_358_438._coreExtraSpawnNoAbsorbEssence == true then
						var_358_440 = var_358_440 or {}
						var_358_440.noAbsorbEssence = true
					end

					var_0_89(var_358_439, 1, var_358_440)

					local var_358_442, var_358_443 = pcall(require, "src.game.cores")

					if var_358_442 and var_358_443 and var_358_443.getActive then
						local var_358_444 = var_358_443.getActive()
						local var_358_445 = false

						for iter_358_49, iter_358_50 in ipairs(var_358_444 or {}) do
							if iter_358_50 and iter_358_50.key == "EchoMirror" then
								var_358_445 = true

								break
							end
						end

						if var_358_445 and love.math.random() < 0.1 then
							local var_358_446
							local var_358_447 = slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.allyStatMul or 1) or 1

							if var_358_447 and var_358_447 > 1 then
								var_358_446 = {
									statBuffMul = var_358_447
								}
							end

							var_0_89(var_358_439, 1, var_358_446)

							local var_358_448 = love.timer.getTime()

							for iter_358_51, iter_358_52 in ipairs(var_358_444 or {}) do
								if iter_358_52 and iter_358_52.key == "EchoMirror" then
									iter_358_52._uiTrigger = true
									iter_358_52._uiPulseT0 = var_358_448
									iter_358_52._uiPulseDur = 0.6
								end
							end
						end
					end
				end

				var_358_438._coreExtraSpawnConsumed = true
			end

			if pendingBattle and pendingBattle.deferStart then
				if not battlefield.gameOver then
					local var_358_449 = var_0_142()

					if var_358_449 and var_358_449.right then
						if ui then
							ui._coreSelectOffersCache = nil
						end

						var_0_47(var_358_449.right)

						phase = "battle"
					else
						if ui then
							ui._coreSelectOffersCache = nil
						end

						var_0_47({
							y = 0,
							x = 0,
							w = ui.virtual.W,
							h = ui.virtual.H
						})

						phase = "battle"
					end
				end

				if waveTimer then
					waveTimer.t = 0
					waveTimer.state = "countdown"
					waveTimer.fadeT = 0
					waveTimer.appearT = 0
					waveTimer.manualStart = false
				end

				pendingBattle.deferStart = false
			end
		end
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		stopSlotMachineSounds()
	else
		if slot and slot.spin and slot.spin.active then
			playRollingSound()
		end

		if ui and ui._stoneActivated and ui._stoneActivated.active then
			playStoneSlotModSound()
		end
	end

	if slotBgSquash and slotBgSquash.active then
		local var_358_450 = ui and ui.slot and ui.slot.lineHitSquash or {
			dur = 0.4,
			amp = 0.06
		}
		local var_358_451 = math.max(0, slotBgSquash.amp or var_358_450.amp or 0.06)

		slotBgSquash.t = (slotBgSquash.t or 0) + (arg_358_0 or 0)

		local var_358_452 = math.max(0.05, slotBgSquash.dur or var_358_450.dur or 0.4)
		local var_358_453 = math.max(0, math.min(1, (slotBgSquash.t or 0) / var_358_452))
		local var_358_454 = 1
		local var_358_455 = 1

		if var_358_453 < 0.5 then
			local var_358_456 = var_358_453 * 2
			local var_358_457 = math.sin(math.pi * var_358_456)

			var_358_455 = 1 - var_358_451 * var_358_457
			var_358_454 = 1 + var_358_451 * 0.6 * var_358_457
		else
			local var_358_458 = (var_358_453 - 0.5) * 2
			local var_358_459 = math.sin(math.pi * var_358_458)

			var_358_454 = 1 - var_358_451 * var_358_459
			var_358_455 = 1 + var_358_451 * 0.4 * var_358_459
		end

		slotBgSquash.sx = var_358_454
		slotBgSquash.sy = var_358_455

		if var_358_452 <= (slotBgSquash.t or 0) then
			slotBgSquash.active = false
			slotBgSquash.t = 0
			slotBgSquash.sx = 1
			slotBgSquash.sy = 1
		end
	else
		slotBgSquash.sx = 1
		slotBgSquash.sy = 1
	end

	if slotBgJitter and slotBgJitter.active then
		slotBgJitter.t = (slotBgJitter.t or 0) + (arg_358_0 or 0)

		local var_358_460 = math.max(0.05, slotBgJitter.dur or 0.22)
		local var_358_461 = math.max(0, math.min(1, (slotBgJitter.t or 0) / var_358_460))
		local var_358_462 = slotBgJitter.persistent and 1 or 1 - var_358_461
		local var_358_463 = (slotBgJitter.ampPx or 2) * var_358_462
		local var_358_464 = slotBgJitter.freq or 16
		local var_358_465 = slotBgJitter.t or 0
		local var_358_466 = slotBgJitter.axis or "xy"
		local var_358_467 = 0
		local var_358_468 = 0

		if var_358_466 == "x" then
			var_358_467 = math.floor(var_358_463 * math.sin(2 * math.pi * var_358_464 * var_358_465) + 0.5)
		elseif var_358_466 == "y" then
			var_358_468 = math.floor(var_358_463 * math.sin(2 * math.pi * var_358_464 * var_358_465) + 0.5)
		else
			var_358_467 = math.floor(var_358_463 * math.sin(2 * math.pi * var_358_464 * var_358_465) + 0.5)
			var_358_468 = math.floor(var_358_463 * 0.6 * math.sin(2 * math.pi * var_358_464 * var_358_465 + math.pi / 2) + 0.5)
		end

		slotBgJitter.x, slotBgJitter.y = var_358_467, var_358_468

		if not slotBgJitter.persistent and var_358_460 <= (slotBgJitter.t or 0) then
			slotBgJitter.active = false
			slotBgJitter.t = 0
			slotBgJitter.x = 0
			slotBgJitter.y = 0
		end
	else
		slotBgJitter.x = 0
		slotBgJitter.y = 0
	end

	if screenLineShake and screenLineShake.active then
		screenLineShake.t = (screenLineShake.t or 0) + (arg_358_0 or 0)

		local var_358_469 = math.max(0.05, screenLineShake.dur or 0.16)
		local var_358_470 = 1 - math.max(0, math.min(1, (screenLineShake.t or 0) / var_358_469))
		local var_358_471 = (screenLineShake.ampPx or 1.2) * var_358_470
		local var_358_472 = screenLineShake.freq or 22
		local var_358_473 = screenLineShake.t or 0
		local var_358_474 = screenLineShake.axis or "xy"
		local var_358_475 = 0
		local var_358_476 = 0

		if var_358_474 == "x" then
			var_358_475 = math.floor(var_358_471 * math.sin(2 * math.pi * var_358_472 * var_358_473) + 0.5)
		elseif var_358_474 == "y" then
			var_358_476 = math.floor(var_358_471 * math.sin(2 * math.pi * var_358_472 * var_358_473) + 0.5)
		else
			var_358_475 = math.floor(var_358_471 * math.sin(2 * math.pi * var_358_472 * var_358_473) + 0.5)
			var_358_476 = math.floor(var_358_471 * 0.7 * math.sin(2 * math.pi * var_358_472 * var_358_473 + math.pi / 2) + 0.5)
		end

		screenLineShake.x, screenLineShake.y = var_358_475, var_358_476

		if var_358_469 <= (screenLineShake.t or 0) then
			screenLineShake.active = false
			screenLineShake.t = 0
			screenLineShake.x, screenLineShake.y = 0, 0
		end
	else
		screenLineShake.x, screenLineShake.y = 0, 0
	end

	local var_358_477 = ui and ui.monster and ui.monster.eyesShine
	local var_358_478 = ui and ui.jackpotBannerState

	if var_358_477 and var_358_477.enabled ~= false then
		if var_0_70.active then
			var_0_70.t = (var_0_70.t or 0) + (arg_358_0 or 0)
		end

		local var_358_479 = (var_0_70.t or 0) >= (var_0_70.dur or 0.35)
		local var_358_480 = var_358_478 and var_358_478.active

		if var_358_480 then
			var_0_70.seenBanner = true
		end

		if var_358_480 or var_0_70.active then
			var_0_70.pulseT = (var_0_70.pulseT or 0) + (arg_358_0 or 0)
		end

		if not var_358_480 then
			if var_0_70.seenBanner and var_0_70.sustainUntilBannerEnd then
				var_0_70.active = false
				var_0_70.t = 0
				var_0_70.pulseT = 0
				var_0_70.sustainUntilBannerEnd = false
				var_0_70.seenBanner = false
			elseif var_358_479 and not var_0_70.sustainUntilBannerEnd then
				var_0_70.active = false
				var_0_70.t = 0
				var_0_70.pulseT = 0
			end
		end
	end

	if monsterHeadAnim and monsterHeadAnim.mode == "laugh" then
		monsterHeadAnim.t = (monsterHeadAnim.t or 0) + (arg_358_0 or 0)

		if (monsterHeadAnim.t or 0) >= (monsterHeadAnim.dur or 0.6) then
			monsterHeadAnim.mode = "idle"
			monsterHeadAnim.t = 0
		end
	end

	local var_358_481 = ui and ui._preSpinSeq

	if var_358_481 and var_358_481.active then
		local function var_358_482()
			var_358_481.active = false

			if type(var_358_481.onComplete) == "function" then
				pcall(var_358_481.onComplete)
			else
				if Tutorial and Tutorial.onSpinStarted then
					Tutorial.onSpinStarted()
				end

				slot:startSpin()

				if slot and slot._tutorialSpin then
					slot.stopTimes = nil
				end

				playRollingSound()

				if var_0_18 and var_0_18.onSpinUsed then
					var_0_18.onSpinUsed(1)
				end

				if var_358_481.pendingPaid then
					local var_364_0 = slot and slot._coreSpinMods and tonumber(slot._coreSpinMods.costStepReduction or 0) or 0
					local var_364_1 = math.max(0, (spinCostStep or 0) - var_364_0)

					lastPaidSpinCostIncreaseApplied = var_364_1
					spinCost = spinCost + var_364_1
				end
			end

			ui._preSpinSeq = nil
		end

		local var_358_483 = var_358_481.queue[var_358_481.i]

		if not var_358_483 then
			var_358_482()
		elseif var_358_481.phase == "init" then
			var_358_481.cur = nil

			local var_358_484
			local var_358_485
			local var_358_486
			local var_358_487
			local var_358_488
			local var_358_489

			if ui and ui._equippedCoreRects then
				for iter_358_53, iter_358_54 in ipairs(ui._equippedCoreRects) do
					if iter_358_54.def == (var_358_483.def or var_358_483) then
						var_358_484, var_358_485, var_358_486, var_358_487, var_358_488, var_358_489 = iter_358_54.cx, iter_358_54.cy, iter_358_54.sx, iter_358_54.sy, iter_358_54.iw, iter_358_54.ih

						break
					end
				end
			end

			if not var_358_484 or not var_358_485 then
				var_358_481.i = var_358_481.i + 1
				var_358_481.phase = "init"
				var_358_481.t = 0

				if var_358_481.i > #var_358_481.queue then
					var_358_482()
				end
			else
				var_358_481.cur = {
					ox = var_358_484,
					oy = var_358_485,
					sx = var_358_486 or 1,
					sy = var_358_487 or var_358_486 or 1,
					iw = var_358_488 or 32,
					ih = var_358_489 or 32
				}
				var_358_483._uiHideInBar = true
				var_358_481.phase = "move"
				var_358_481.t = 0
			end
		else
			var_358_481.t = (var_358_481.t or 0) + (arg_358_0 or 0)

			local var_358_490 = false

			if var_358_481.phase == "move" then
				if (var_358_481.t or 0) >= (var_358_481.moveSec or 0.22) then
					local var_358_491 = true

					var_358_481.phase = "hold"
					var_358_481.t = 0
				end
			elseif var_358_481.phase == "hold" then
				if (var_358_481.t or 0) >= (var_358_481.holdSec or 0.28) then
					local var_358_492 = true

					var_358_481.phase = "return"
					var_358_481.t = 0
				end
			elseif var_358_481.phase == "return" and (var_358_481.t or 0) >= (var_358_481.returnSec or 0.2) then
				var_358_483._uiHideInBar = nil
				var_358_481.i = var_358_481.i + 1
				var_358_481.phase = "init"
				var_358_481.t = 0
				var_358_481.cur = nil

				if var_358_481.i > #var_358_481.queue then
					var_358_482()
				end
			end
		end
	end

	local var_358_493 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick

	if var_358_493 and spinStickAnim then
		local var_358_494 = ui and ui.spinstick and ui.spinstick.animSpeedSecPerFrame or spinStickAnim.speed or 0.05

		if spinStickAnim.playing then
			spinStickAnim.t = (spinStickAnim.t or 0) + (arg_358_0 or 0)

			while (spinStickAnim.t or 0) >= (var_358_494 or 0.05) do
				spinStickAnim.t = (spinStickAnim.t or 0) - (var_358_494 or 0.05)
				spinStickAnim.frame = (spinStickAnim.frame or 1) + 1

				if spinStickAnim.frame > (var_358_493.frames or #var_358_493.quads or 1) then
					spinStickAnim.playing = false
					spinStickAnim.frame = 1
					spinStickAnim.t = 0

					break
				end
			end
		else
			spinStickAnim.frame = 1
		end
	end

	if nudgeBtnAnims then
		for iter_358_55 = 1, #nudgeBtnAnims do
			local var_358_495 = nudgeBtnAnims[iter_358_55]

			if var_358_495.active then
				var_358_495.t = var_358_495.t + arg_358_0

				if var_358_495.t >= var_358_495.dur then
					var_358_495.active = false
					var_358_495.t = 0
				end
			end
		end
	end

	var_0_69 = (var_0_69 or 0) + (arg_358_0 or 0)

	if shopkeeper and shopkeeper.image and ui and ui._shopMode then
		local var_358_496 = ui and ui.shopKeeper or {}
		local var_358_497 = math.max(1, shopkeeper.frameCount or 4)
		local var_358_498 = tonumber(var_358_496.frameDur) or 0.12
		local var_358_499 = tonumber(var_358_496.pauseDur) or 1.4
		local var_358_500 = math.max(1, math.min(var_358_497, math.floor(tonumber(var_358_496.holdFrame) or 1)))

		shopkeeper.anim = shopkeeper.anim or {
			phase = "play",
			frame = 1,
			t = 0
		}

		local var_358_501 = shopkeeper.anim

		var_358_501.phase = var_358_501.phase or "play"
		var_358_501.t = (var_358_501.t or 0) + (arg_358_0 or 0)

		if var_358_501.phase == "pause" then
			var_358_501.frame = var_358_500

			if var_358_499 <= var_358_501.t then
				var_358_501.t = 0
				var_358_501.phase = "play"
				var_358_501.frame = 1
			end
		else
			while var_358_498 <= var_358_501.t do
				var_358_501.t = var_358_501.t - var_358_498

				local var_358_502 = (var_358_501.frame or 1) + 1

				if var_358_497 < var_358_502 then
					var_358_501.phase = "pause"
					var_358_501.frame = var_358_500
					var_358_501.t = 0

					break
				end

				var_358_501.frame = var_358_502
			end
		end
	elseif shopkeeper and shopkeeper.anim then
		shopkeeper.anim = {
			phase = "play",
			frame = 1,
			t = 0
		}
	end

	if fireman and fireman.image then
		local var_358_503 = fireman.animations[fireman.anim.name] or fireman.animations.onidle
		local var_358_504 = var_358_503 and var_358_503.speed or 0.12

		fireman.anim.t = (fireman.anim.t or 0) + (arg_358_0 or 0)

		while var_358_504 <= fireman.anim.t do
			fireman.anim.t = fireman.anim.t - var_358_504

			local var_358_505 = var_358_503 and var_358_503.row or 3
			local var_358_506 = fireman.rows[var_358_505] and #fireman.rows[var_358_505] or 1
			local var_358_507 = math.max(1, math.min(var_358_503 and var_358_503.frames or var_358_506, var_358_506))
			local var_358_508 = (fireman.anim.frame or 1) + 1

			if var_358_507 < var_358_508 then
				var_358_508 = var_358_503 and var_358_503.loop and 1 or var_358_507
			end

			fireman.anim.frame = var_358_508
		end

		if var_358_503 and not var_358_503.loop then
			local var_358_509 = var_358_503.row or 3
			local var_358_510 = fireman.rows[var_358_509] and #fireman.rows[var_358_509] or 1

			if math.max(1, math.min(var_358_503.frames or var_358_510, var_358_510)) <= fireman.anim.frame then
				if fireman.anim.name == "on" then
					var_0_79("onidle")
				elseif fireman.anim.name == "off" then
					var_0_79("offidle")
				end
			end
		elseif battlefield and battlefield.absorbMode == true then
			if fireman.anim.name == "offidle" then
				var_0_79("onidle")
			end
		elseif fireman.anim.name == "onidle" then
			var_0_79("offidle")
		end
	end

	if ui and ui.firemanShake then
		local var_358_511 = ui.firemanShake

		if var_358_511.active then
			var_358_511.t = (var_358_511.t or 0) + (arg_358_0 or 0)

			local var_358_512 = 1 - math.max(0, math.min(1, (var_358_511.t or 0) / math.max(0.001, var_358_511.dur or 0.25)))
			local var_358_513 = (var_358_511.ampPx or 2) * var_358_512
			local var_358_514 = var_358_511.freq or 18
			local var_358_515 = math.sin(2 * math.pi * var_358_514 * (var_358_511.t or 0))

			var_358_511.jx = math.floor(var_358_513 * var_358_515 + 0.5)

			if var_358_511.t >= (var_358_511.dur or 0.25) then
				var_358_511.active = false
				var_358_511.t = 0
				var_358_511.jx = 0
			end
		else
			var_358_511.jx = 0
		end
	end

	if battlefield and battlefield.baseHP ~= nil then
		local var_358_516 = battlefield._prevBaseHP
		local var_358_517 = battlefield.baseHP

		if var_358_516 ~= nil and var_358_517 ~= nil and var_358_517 < var_358_516 then
			local var_358_518 = ui and ui.heartShake or {}

			var_0_66.active = true
			var_0_66.t = 0
			var_0_66.dur = var_358_518.dur or var_0_66.dur or 0.22

			local var_358_519 = math.max(1, var_358_516 - var_358_517)
			local var_358_520 = var_358_518.ampPx or var_0_66.ampPx or 2

			var_0_66.ampPx = math.min(var_358_520 + (var_358_519 - 1), var_358_520 * 2)
			var_0_66.freq = var_358_518.freq or var_0_66.freq or 20
			var_0_67.active = true
			var_0_67.t = 0
			var_0_67.dur = 0.34
			var_0_67.intensity = math.min(1, 0.75 + (var_358_519 - 1) * 0.12)

			if screenLineShake then
				screenLineShake.active = true
				screenLineShake.t = 0
				screenLineShake.dur = 0.22
				screenLineShake.freq = 24
				screenLineShake.axis = "xy"
				screenLineShake.ampPx = math.min(4, 2.2 + (var_358_519 - 1) * 0.6)
				screenLineShake.x, screenLineShake.y = 0, 0
			end

			addHPPopup(var_358_517 - var_358_516)
		elseif var_358_516 ~= nil and var_358_517 ~= nil and var_358_516 < var_358_517 then
			addHPPopup(var_358_517 - var_358_516)
		end

		battlefield._prevBaseHP = var_358_517
	end

	if var_0_66.active then
		var_0_66.t = (var_0_66.t or 0) + (arg_358_0 or 0)

		local var_358_521 = 1 - math.max(0, math.min(1, (var_0_66.t or 0) / math.max(0.001, var_0_66.dur or 0.22)))
		local var_358_522 = (var_0_66.ampPx or 2) * var_358_521
		local var_358_523 = var_0_66.freq or 20
		local var_358_524 = math.sin(2 * math.pi * var_358_523 * (var_0_66.t or 0))

		var_0_66.jx = math.floor(var_358_522 * var_358_524 + 0.5)

		if var_0_66.t >= (var_0_66.dur or 0.22) then
			var_0_66.active = false
			var_0_66.t = 0
			var_0_66.jx = 0
		end
	else
		var_0_66.jx = 0
	end

	ui.slot.heartAnimX = var_0_66.jx or 0

	if var_0_67.active then
		var_0_67.t = (var_0_67.t or 0) + (arg_358_0 or 0)

		local var_358_525 = math.max(0.001, var_0_67.dur or 0.34)
		local var_358_526 = math.max(0, math.min(1, (var_0_67.t or 0) / var_358_525))
		local var_358_527 = 0.16
		local var_358_528

		if var_358_526 < var_358_527 then
			local var_358_529 = var_358_526 / var_358_527

			var_358_528 = var_358_529 * var_358_529 * (3 - 2 * var_358_529)
		else
			local var_358_530 = (var_358_526 - var_358_527) / (1 - var_358_527)

			var_358_528 = 1 - var_358_530 * var_358_530 * (3 - 2 * var_358_530)
		end

		var_0_67.alpha = math.max(0, math.min(0.32, var_358_528 * (var_0_67.intensity or 1) * 0.32))

		if var_358_526 >= 1 then
			var_0_67.active = false
			var_0_67.t = 0
			var_0_67.alpha = 0
		end
	else
		var_0_67.alpha = 0
	end

	heartbeatT = heartbeatT + arg_358_0

	if heartbeatT > math.pi * 10 then
		heartbeatT = heartbeatT - math.pi * 10
	end

	if #coinPopups > 0 then
		local var_358_531 = {}

		for iter_358_56, iter_358_57 in ipairs(coinPopups) do
			iter_358_57.t = iter_358_57.t + arg_358_0

			if iter_358_57.t < iter_358_57.dur then
				table.insert(var_358_531, iter_358_57)
			end
		end

		coinPopups = var_358_531
	end

	if ui then
		ui._coinPopupsActive = #coinPopups > 0
		ui._goldPopups = coinPopups
		ui.goldBalance = displayCoins
	end

	if #jungsuPopups > 0 then
		local var_358_532 = {}

		for iter_358_58, iter_358_59 in ipairs(jungsuPopups) do
			iter_358_59.t = iter_358_59.t + arg_358_0

			if iter_358_59.t < iter_358_59.dur then
				table.insert(var_358_532, iter_358_59)
			end
		end

		jungsuPopups = var_358_532
	end

	if ui then
		ui._jungsuPopups = jungsuPopups
		ui.jungsuBalance = displayJungsu
	end

	if #hpPopups > 0 then
		local var_358_533 = {}

		for iter_358_60, iter_358_61 in ipairs(hpPopups) do
			iter_358_61.t = iter_358_61.t + arg_358_0

			if iter_358_61.t < iter_358_61.dur then
				table.insert(var_358_533, iter_358_61)
			end
		end

		hpPopups = var_358_533
	end

	if ui then
		ui._hpPopups = hpPopups
	end

	local var_358_534 = coins or 0

	if coinAnim.target ~= var_358_534 then
		coinAnim.start = displayCoins or 0
		coinAnim.target = var_358_534
		coinAnim.t = 0
		coinAnim.active = true
	end

	if coinAnim.active then
		coinAnim.t = coinAnim.t + (arg_358_0 or 0)

		local var_358_535 = 1
		local var_358_536 = math.min(1, coinAnim.t / math.max(0.001, var_358_535))
		local var_358_537 = coinAnim.start + (coinAnim.target - coinAnim.start) * var_358_536

		displayCoins = math.floor(var_358_537 + 0.5)

		if var_358_536 >= 1 then
			displayCoins = coinAnim.target
			coinAnim.active = false
		end
	else
		displayCoins = var_358_534
	end

	local var_358_538 = ui and ui.jungsuBalanceTarget

	if var_358_538 == nil then
		var_358_538 = jungsu or 0
	end

	if jungsuAnim.target ~= var_358_538 then
		jungsuAnim.start = displayJungsu or 0
		jungsuAnim.target = var_358_538
		jungsuAnim.t = 0
		jungsuAnim.active = true
	end

	if jungsuAnim.active then
		jungsuAnim.t = jungsuAnim.t + (arg_358_0 or 0)

		local var_358_539 = 1
		local var_358_540 = math.min(1, jungsuAnim.t / math.max(0.001, var_358_539))
		local var_358_541 = jungsuAnim.start + (jungsuAnim.target - jungsuAnim.start) * var_358_540

		displayJungsu = math.floor(var_358_541 + 0.5)

		if var_358_540 >= 1 then
			displayJungsu = jungsuAnim.target
			jungsuAnim.active = false
		end
	else
		displayJungsu = var_358_538
	end

	if ui then
		ui.jungsuBalance = displayJungsu
	end

	local function var_358_542(arg_365_0)
		if not battlefield or not battlefield.gameOver then
			return
		end

		battlefield.gameOverT = (battlefield.gameOverT or 0) + arg_365_0

		if ui and ui.gameOverButtons then
			ui.gameOverButtonState = ui.gameOverButtonState or {
				replay = {
					pressed = false,
					scale = 1
				},
				upgrade = {
					pressed = false,
					scale = 1
				},
				main = {
					pressed = false,
					scale = 1
				}
			}

			local var_365_0, var_365_1 = love.mouse.getPosition()
			local var_365_2 = (var_365_0 - screenOffsetX) / screenScale
			local var_365_3 = (var_365_1 - screenOffsetY) / screenScale

			local function var_365_4(arg_366_0)
				return arg_366_0 and var_365_2 >= arg_366_0.x and var_365_2 < arg_366_0.x + arg_366_0.w and var_365_3 >= arg_366_0.y and var_365_3 < arg_366_0.y + arg_366_0.h
			end

			local function var_365_5(arg_367_0, arg_367_1)
				local var_367_0 = ui.gameOverButtonState[arg_367_0]

				if not var_367_0 then
					return
				end

				local var_367_1 = var_365_4(arg_367_1)
				local var_367_2 = 1

				if var_367_0.pressed then
					local var_367_3 = 0.95

					var_367_0.scale = var_367_0.scale + (var_367_3 - var_367_0.scale) * math.min(1, arg_365_0 * 20)
				elseif var_367_1 then
					local var_367_4 = 1.15

					var_367_0.scale = var_367_0.scale + (var_367_4 - var_367_0.scale) * math.min(1, arg_365_0 * 12)
				else
					local var_367_5 = 1

					var_367_0.scale = var_367_0.scale + (var_367_5 - var_367_0.scale) * math.min(1, arg_365_0 * 10)
				end
			end

			var_365_5("replay", ui.gameOverButtons.replay)
			var_365_5("upgrade", ui.gameOverButtons.upgrade)
			var_365_5("main", ui.gameOverButtons.main)
		end

		if ui.pendingGameOverAction then
			ui.pendingGameOverTimer = (ui.pendingGameOverTimer or 0) - arg_365_0

			if ui.pendingGameOverTimer <= 0 then
				local var_365_6 = ui.pendingGameOverAction

				ui.pendingGameOverAction = nil
				ui.gameOverButtonState.replay.pressed = false
				ui.gameOverButtonState.upgrade.pressed = false
				ui.gameOverButtonState.main.pressed = false

				if var_365_6 == "restart" then
					restartGameSession()

					if Tutorial and Tutorial.beginForRun then
						Tutorial.beginForRun(battlefield and (battlefield.stage or battlefield.currentStage) or 1, battlefield and battlefield.difficulty or 1, ui)
					end
				elseif var_365_6 == "upgrade" then
					if Tutorial and Tutorial.stop then
						Tutorial.stop(ui)
					end

					var_0_17.resetCamera()

					if var_0_16 and var_0_16.resetMenuState then
						var_0_16.resetMenuState(ui)
					end

					local var_365_7 = ui._pendingGameOverUpgradeCenter

					ui._pendingGameOverUpgradeCenter = nil
					upgradeTransition.cx = var_365_7 and var_365_7.x or (ui and ui.virtual and ui.virtual.W or 1280) / 2
					upgradeTransition.cy = var_365_7 and var_365_7.y or (ui and ui.virtual and ui.virtual.H or 720) / 2

					local var_365_8 = ui and ui.virtual and ui.virtual.W or 1280
					local var_365_9 = ui and ui.virtual and ui.virtual.H or 720
					local var_365_10 = math.max(upgradeTransition.cx, var_365_8 - upgradeTransition.cx)
					local var_365_11 = math.max(upgradeTransition.cy, var_365_9 - upgradeTransition.cy)

					upgradeTransition.maxR = math.sqrt(var_365_10 * var_365_10 + var_365_11 * var_365_11)
					upgradeTransition.active = true
					upgradeTransition.t = 0
					upgradeTransition.state = "in"
					ui._restartAfterUpgradeEnter = true
				elseif var_365_6 == "menu" then
					if Tutorial and Tutorial.stop then
						Tutorial.stop(ui)
					end

					restartGameSession()
					var_0_16.resetLogoAnim()

					if var_0_16 and var_0_16.resetMenuState then
						var_0_16.resetMenuState(ui)
					end

					phase = "menu"
				end
			end
		end
	end

	if battlefield and lastLayout and lastLayout.right then
		local var_358_543 = battlefield.imprintModal and battlefield.imprintModal.active
		local var_358_544 = ui and ui._stoneActivated
		local var_358_545 = var_358_544 and var_358_544.active and (var_358_544.phase == "fadein" or var_358_544.phase == "active") or false

		if not var_358_543 and not var_358_545 then
			battlefield:update(arg_358_0, lastLayout.right)

			if battlefield.classSelect and not battlefield.classSelect._assetsPrepared and var_0_11 and var_0_11.prepareClassSelectionModalAssets then
				battlefield.classSelect._assetsPrepared = var_0_11.prepareClassSelectionModalAssets(loadedAssets, battlefield.classSelect) == true
			end
		end

		if _G.Render2 and _G.Render2.updateBattle then
			_G.Render2.updateBattle(arg_358_0, battlefield)
		end

		if ui and battlefield.spawnAnnouncements and #battlefield.spawnAnnouncements > 0 then
			ui.unitSpawnBannerState = ui.unitSpawnBannerState or {
				active = false,
				t = 0,
				dur = 2,
				queue = {}
			}

			for iter_358_62, iter_358_63 in ipairs(battlefield.spawnAnnouncements) do
				table.insert(ui.unitSpawnBannerState.queue, iter_358_63)
			end

			battlefield.spawnAnnouncements = {}
		end

		local var_358_546 = ui and ui.unitSpawnBannerState

		if var_358_546 then
			local var_358_547 = PauseMotion.isVisible(ui and ui.pauseOverlayState, ui and ui.pauseOverlay, ui and ui.virtual and ui.virtual.H)

			if var_358_546.active and not var_358_547 then
				var_358_546.t = var_358_546.t + arg_358_0
				var_358_546.fxTime = (var_358_546.fxTime or 0) + arg_358_0

				local var_358_548 = var_358_546.dur or 2

				if #var_358_546.queue > 0 then
					var_358_548 = 0.5
				end

				if var_358_548 <= var_358_546.t then
					var_358_546.active = false
					var_358_546.t = 0
				end
			end

			if not var_358_546.active and #var_358_546.queue > 0 and not var_358_547 then
				local var_358_549 = table.remove(var_358_546.queue, 1)

				var_358_546.active = true
				var_358_546.t = 0
				var_358_546.fxTime = 0

				local var_358_550 = var_358_549 and var_358_549.sym
				local var_358_551 = var_358_549 and var_358_549.grade
				local var_358_552 = _G.currentGameLang or "ko"
				local var_358_553 = var_358_549 and var_358_549.name or type(_G.classNameBy) == "function" and _G.classNameBy(var_358_550, 1, var_358_551) or tostring(var_358_550 or "")
				local var_358_554 = var_0_7.translateUnitName(var_358_553, var_358_552)

				var_358_546.isPrism = var_358_551 == "prism" or (var_358_549 and var_358_549.specialJackpot5th) == true

				local var_358_555 = {
					1,
					1,
					1,
					1
				}
				local var_358_556 = var_0_7.getGradeLabel("normal", "일반", var_358_552)

				if var_358_551 == "advanced" then
					var_358_556 = var_0_7.getGradeLabel("advanced", "고급", var_358_552)
					var_358_555 = {
						0.6,
						1,
						0.6,
						1
					}
				elseif var_358_551 == "rare" then
					var_358_556 = var_0_7.getGradeLabel("rare", "희귀", var_358_552)
					var_358_555 = {
						0.6,
						0.75,
						1,
						1
					}
				elseif var_358_551 == "legendary" then
					var_358_556 = var_0_7.getGradeLabel("legendary", "전설", var_358_552)
					var_358_555 = {
						1,
						0.65,
						0.25,
						1
					}
				elseif var_358_551 == "prism" then
					var_358_556 = var_0_7.getGradeLabel("prism", "프리즘", var_358_552)
					var_358_555 = {
						0.8,
						0.4,
						1,
						1
					}
				end

				local var_358_557 = tonumber(var_358_549 and var_358_549.gradeChance)
				local var_358_558 = ""

				if var_358_551 == "prism" and (not var_358_549 or var_358_549.sandboxForcedGrade ~= true) then
					var_358_558 = var_0_7.getText("spawn_jackpot_only", var_358_552)
				elseif var_358_557 and var_358_557 >= 0 then
					local var_358_559 = var_358_557 * 100

					if math.abs(var_358_559 - math.floor(var_358_559 + 0.5)) < 1e-09 then
						var_358_558 = string.format("%d%%", math.floor(var_358_559 + 0.5))
					else
						var_358_558 = string.format("%.1f%%", var_358_559)
					end
				end

				var_358_546.text1 = string.format("%s (%s)", var_358_554, var_358_556)
				var_358_546.text2 = string.format(var_0_7.getText("spawn_chance_fmt", var_358_552), var_358_558)
				var_358_546.gradeColor = var_358_555
				var_358_546.grade = var_358_551
				var_358_546.dur = 3.5
			end
		end

		var_358_542(arg_358_0)

		if lastBattleMode ~= "battle" and battlefield.mode == "battle" then
			startShake.active = true
			startShake.t = 0
			startShake.dur = 0.2
			startShake.amp = 1.5
		end

		if lastBattleMode == "battle" and battlefield.mode ~= "battle" and waveTimer then
			waveTimer.t = 0
			waveTimer.state = "countdown"
			waveTimer.fadeT = 0
			waveTimer.appearT = 0
			waveTimer.manualStart = false
		end

		lastBattleMode = battlefield.mode

		if battlefield.mode == "spin" and spinCount > 0 and battlefield.baseHP <= 0 and not battlefield.gameOver then
			battlefield.gameOver = true
			battlefield.gameOverT = 0
		end
	end

	if battlefield and battlefield.gameOver and (not lastLayout or not lastLayout.right) then
		var_358_542(arg_358_0)
	end

	local var_358_560, var_358_561 = love.mouse.getPosition()
	local var_358_562 = (var_358_560 - screenOffsetX) / screenScale
	local var_358_563 = (var_358_561 - screenOffsetY) / screenScale

	if tooltip and battlefield then
		if _G.Render2 and _G.Render2.updateDpsHoverUnit and lastLayout and lastLayout.right then
			_G.Render2.updateDpsHoverUnit(ui, lastLayout.right, loadedAssets, battlefield, var_358_562, var_358_563)
		elseif ui then
			ui._dpsHoverUnit = nil
			ui._dpsHoverRow = nil
			ui._dpsHoverRowIndex = nil
			ui._dpsHoverTarget = nil
			ui._dpsDamageHoverTip = nil
		end

		local var_358_564 = ui and ui._suddenDeathAlertBanner and ui._suddenDeathAlertBanner.active or false
		local var_358_565 = ui and ui.pauseOverlayState and ui.pauseOverlayState.active or ui and ui._coreSelect and ui._coreSelect.active
		local var_358_566 = ui and ui._stoneActivated and ui._stoneActivated.active

		if var_358_47 or var_358_564 or var_358_566 then
			tooltip.mouseX, tooltip.mouseY = var_358_562, var_358_563
			tooltip.candidate = nil
			tooltip.target = nil
			tooltip.fade = 0
			tooltip.state = "IDLE"
		elseif var_358_565 then
			tooltip.mouseX, tooltip.mouseY = var_358_562, var_358_563
			tooltip.candidate = nil
			tooltip.target = nil
			tooltip.fade = 0
			tooltip.state = "IDLE"
		else
			tooltip:update(arg_358_0, var_358_562, var_358_563, battlefield)
		end
	end

	if SuddenDeathAlertBanner and SuddenDeathAlertBanner.update then
		SuddenDeathAlertBanner.update(ui, arg_358_0)
	end

	if battlefield and battlefield.gameOver and tooltip and not (ui and ui._coreSelect and ui._coreSelect.active) then
		local var_358_567, var_358_568 = love.mouse.getPosition()
		local var_358_569 = (var_358_567 - screenOffsetX) / screenScale
		local var_358_570 = (var_358_568 - screenOffsetY) / screenScale

		tooltip:update(arg_358_0, var_358_569, var_358_570, battlefield)
	end

	ui.slotBookIconState = ui.slotBookIconState or {
		hovered = false,
		fade = 0
	}

	local var_358_571 = ui.slotBookIconState
	local var_358_572 = not var_358_47 and tooltip and tooltip.mouseX and tooltip.mouseY
	local var_358_573 = false

	if var_358_572 then
		var_358_573 = var_0_124(tooltip.mouseX, tooltip.mouseY)
	end

	var_358_571.hovered = var_358_573

	local var_358_574 = var_358_573 and 1 or 0
	local var_358_575 = 0.15

	if var_358_574 > var_358_571.fade then
		var_358_571.fade = math.min(1, var_358_571.fade + (arg_358_0 or 0) / var_358_575)
	elseif var_358_574 < var_358_571.fade then
		var_358_571.fade = math.max(0, var_358_571.fade - (arg_358_0 or 0) / var_358_575)
	end

	ui.spinLeftTooltipState = ui.spinLeftTooltipState or {
		hovered = false,
		fade = 0
	}

	local var_358_576 = ui.spinLeftTooltipState
	local var_358_577 = not var_358_47 and tooltip and tooltip.mouseX and tooltip.mouseY
	local var_358_578 = false

	if var_358_577 then
		var_358_578 = var_0_127(tooltip.mouseX, tooltip.mouseY)
	end

	var_358_576.hovered = var_358_578

	if var_358_578 then
		var_358_576.rect = var_0_126()
	end

	local var_358_579 = var_358_578 and 1 or 0
	local var_358_580 = 0.15

	if var_358_579 > var_358_576.fade then
		var_358_576.fade = math.min(1, var_358_576.fade + (arg_358_0 or 0) / var_358_580)
	elseif var_358_579 < var_358_576.fade then
		var_358_576.fade = math.max(0, var_358_576.fade - (arg_358_0 or 0) / var_358_580)
	end

	if var_358_576.fade <= 0 then
		var_358_576.rect = nil
	end

	ui.coreScrollTooltipState = ui.coreScrollTooltipState or {
		hovered = false,
		fade = 0
	}

	local var_358_581 = ui.coreScrollTooltipState
	local var_358_582 = not var_358_47 and (not ui or not ui._deferredCoreSelect) and tooltip and tooltip.mouseX and tooltip.mouseY
	local var_358_583 = false

	if var_358_582 then
		var_358_583 = var_0_133(tooltip.mouseX, tooltip.mouseY)
	end

	var_358_581.hovered = var_358_583

	if var_358_583 then
		var_358_581.rect = var_0_129()
	end

	local var_358_584 = var_358_583 and 1 or 0
	local var_358_585 = 0.15

	if var_358_584 > var_358_581.fade then
		var_358_581.fade = math.min(1, var_358_581.fade + (arg_358_0 or 0) / var_358_585)
	elseif var_358_584 < var_358_581.fade then
		var_358_581.fade = math.max(0, var_358_581.fade - (arg_358_0 or 0) / var_358_585)
	end

	if var_358_581.fade <= 0 then
		var_358_581.rect = nil
	end

	ui.symbolOddsTooltipState = ui.symbolOddsTooltipState or {
		fade = 0,
		hovered = false
	}

	local var_358_586 = ui.symbolOddsTooltipState
	local var_358_587 = slot and slot.spin and slot.spin.active or slot and slot.result and slot.result.winSeq and slot.result.winSeq.active or slot and slot.result and slot.result.highlightActive
	local var_358_588 = not var_358_47 and not var_358_587 and ui._monsterHeadHovered == true

	var_358_586.hovered = var_358_588

	if var_358_588 and tooltip and tooltip.mouseX and tooltip.mouseY then
		var_358_586.cursor = {
			x = tooltip.mouseX,
			y = tooltip.mouseY
		}
	end

	local var_358_589 = var_358_588 and 1 or 0
	local var_358_590 = 0.15

	if var_358_589 > var_358_586.fade then
		var_358_586.fade = math.min(1, var_358_586.fade + (arg_358_0 or 0) / var_358_590)
	elseif var_358_589 < var_358_586.fade then
		var_358_586.fade = math.max(0, var_358_586.fade - (arg_358_0 or 0) / var_358_590)
	end

	if var_358_586.fade <= 0 then
		var_358_586.cursor = nil
	end

	local var_358_591 = false

	if battlefield and battlefield.mode ~= "battle" and not battlefield.classSelect and tooltip and tooltip.candidate and tooltip.candidate.kind == "roster" and tooltip.candidate.ref then
		var_358_591 = true
	end

	local var_358_592 = ui and ui.infoOverlay or {}
	local var_358_593 = ui and ui.infoOverlayState

	if var_358_593 and var_358_592 then
		local var_358_594 = var_358_591 and (var_358_592.visibleY or 0) or var_358_592.hiddenY or -(ui.virtual and ui.virtual.H or 128)
		local var_358_595 = var_358_592.spring and var_358_592.spring.k or 90
		local var_358_596 = var_358_592.spring and var_358_592.spring.damping or 12
		local var_358_597 = var_358_592.spring and var_358_592.spring.maxVel or 2000
		local var_358_598 = var_358_593.y or 0
		local var_358_599 = var_358_593.v or 0
		local var_358_600 = var_358_599 + ((var_358_594 - var_358_598) * var_358_595 - var_358_596 * var_358_599) * (arg_358_0 or 0)

		if var_358_597 and var_358_597 > 0 then
			if var_358_597 < var_358_600 then
				var_358_600 = var_358_597
			elseif var_358_600 < -var_358_597 then
				var_358_600 = -var_358_597
			end
		end

		local var_358_601 = var_358_598 + var_358_600 * (arg_358_0 or 0)
		local var_358_602 = var_358_592.snapEps or 0.5

		if math.abs(var_358_600) < 0.02 and var_358_602 > math.abs(var_358_594 - var_358_601) then
			var_358_601 = var_358_594
			var_358_600 = 0
		end

		var_358_593.y = var_358_601
		var_358_593.v = var_358_600
	end

	local var_358_603 = not var_358_47 and ui and ui._itemHoverDef and (not ui or not ui._shopMode) and true or false
	local var_358_604 = ui and ui.itemInfoOverlay or {}
	local var_358_605 = ui and ui.itemInfoOverlayState

	if var_358_605 and var_358_604 then
		local var_358_606 = var_358_603 and (var_358_604.visibleY or 0) or var_358_604.hiddenY or -(ui and ui.virtual and ui.virtual.H or 128)
		local var_358_607 = var_358_604.spring and var_358_604.spring.k or 90
		local var_358_608 = var_358_604.spring and var_358_604.spring.damping or 14
		local var_358_609 = var_358_604.spring and var_358_604.spring.maxVel or 2000
		local var_358_610 = var_358_605.y or 0
		local var_358_611 = var_358_605.v or 0
		local var_358_612 = var_358_611 + ((var_358_606 - var_358_610) * var_358_607 - var_358_608 * var_358_611) * (arg_358_0 or 0)

		if var_358_609 and var_358_609 > 0 then
			if var_358_609 < var_358_612 then
				var_358_612 = var_358_609
			elseif var_358_612 < -var_358_609 then
				var_358_612 = -var_358_609
			end
		end

		local var_358_613 = var_358_610 + var_358_612 * (arg_358_0 or 0)
		local var_358_614 = var_358_604.snapEps or 0.5

		if math.abs(var_358_612) < 0.02 and var_358_614 > math.abs(var_358_606 - var_358_613) then
			var_358_613 = var_358_606
			var_358_612 = 0
		end

		var_358_605.y = var_358_613
		var_358_605.v = var_358_612
	end

	local var_358_615 = (ui and ui._shopMode) == true
	local var_358_616, var_358_617 = ui and ui.shopOverlay or {}, ui and ui.infoOverlay or {}
	local var_358_618 = ui and ui.shopOverlayState

	if var_358_618 and var_358_616 then
		local var_358_619 = var_358_616.visibleY ~= nil and var_358_616.visibleY or var_358_617.visibleY or 0
		local var_358_620 = var_358_616.hiddenY ~= nil and var_358_616.hiddenY or var_358_617.hiddenY or -(ui.virtual and ui.virtual.H or 128)
		local var_358_621 = var_358_615 and var_358_619 or var_358_620
		local var_358_622 = var_358_618.y or var_358_620
		local var_358_623 = var_358_618.v or 0
		local var_358_624 = var_358_616.speedInPx or nil
		local var_358_625 = var_358_616.speedOutPx or nil

		if var_358_624 or var_358_625 then
			local var_358_626 = var_358_615 and (var_358_624 or var_358_625 or 1200) or var_358_625 or var_358_624 or 1200
			local var_358_627 = var_358_622 < var_358_621 and 1 or -1
			local var_358_628 = var_358_622 + var_358_626 * (arg_358_0 or 0) * var_358_627

			if var_358_627 > 0 and var_358_621 < var_358_628 or var_358_627 < 0 and var_358_628 < var_358_621 then
				var_358_628 = var_358_621
			end

			var_358_622 = var_358_628
			var_358_623 = 0
		else
			local var_358_629 = var_358_616.spring and var_358_616.spring.k or var_358_617.spring and var_358_617.spring.k or 90
			local var_358_630 = var_358_616.spring and var_358_616.spring.damping or var_358_617.spring and var_358_617.spring.damping or 12
			local var_358_631 = var_358_616.spring and var_358_616.spring.maxVel or var_358_617.spring and var_358_617.spring.maxVel or 2000

			var_358_623 = var_358_623 + ((var_358_621 - var_358_622) * var_358_629 - var_358_630 * var_358_623) * (arg_358_0 or 0)

			if var_358_631 and var_358_631 > 0 then
				if var_358_631 < var_358_623 then
					var_358_623 = var_358_631
				elseif var_358_623 < -var_358_631 then
					var_358_623 = -var_358_631
				end
			end

			var_358_622 = var_358_622 + var_358_623 * (arg_358_0 or 0)

			local var_358_632 = var_358_616.snapEps or var_358_617.snapEps or 0.5

			if math.abs(var_358_623) < 0.02 and var_358_632 > math.abs(var_358_621 - var_358_622) then
				var_358_622 = var_358_621
				var_358_623 = 0
			end
		end

		var_358_618.y, var_358_618.v = var_358_622, var_358_623
	end

	local var_358_633 = ui and ui.pauseOverlay or {}
	local var_358_634 = ui and ui.pauseOverlayState

	if var_358_634 and var_358_633 then
		local var_358_635 = var_358_634.active and (var_358_633.visibleY or 0) or var_358_633.hiddenY or -(ui.virtual and ui.virtual.H or 128)
		local var_358_636 = var_358_633.spring and var_358_633.spring.k or 90
		local var_358_637 = var_358_633.spring and var_358_633.spring.damping or 12
		local var_358_638 = var_358_633.spring and var_358_633.spring.maxVel or 2000
		local var_358_639 = var_358_634.y or 0
		local var_358_640 = var_358_634.v or 0
		local var_358_641 = var_358_640 + ((var_358_635 - var_358_639) * var_358_636 - var_358_637 * var_358_640) * (arg_358_0 or 0)

		if var_358_638 and var_358_638 > 0 then
			if var_358_638 < var_358_641 then
				var_358_641 = var_358_638
			elseif var_358_641 < -var_358_638 then
				var_358_641 = -var_358_638
			end
		end

		local var_358_642 = var_358_639 + var_358_641 * (arg_358_0 or 0)
		local var_358_643 = var_358_633.snapEps or 0.5

		if math.abs(var_358_641) < 0.02 and var_358_643 > math.abs(var_358_635 - var_358_642) then
			var_358_642 = var_358_635
			var_358_641 = 0
		end

		var_358_634.y = var_358_642
		var_358_634.v = var_358_641
	end

	local var_358_644 = ui.jackpotBannerState
	local var_358_645 = ui.jackpotBanner or {}

	if var_358_644 and var_358_644.active then
		var_358_644.t = (var_358_644.t or 0) + (arg_358_0 or 0)

		if (var_358_645.fadeInSec or 0.2) + (var_358_645.holdSec or 1) + (var_358_645.fadeOutSec or 0.5) <= var_358_644.t then
			var_358_644.active = false
		end
	end

	if battlefield and battlefield._readyClickCooldown and battlefield._readyClickCooldown > 0 then
		battlefield._readyClickCooldown = math.max(0, (battlefield._readyClickCooldown or 0) - (arg_358_0 or 0))
	end

	if battlefield and battlefield._absorbToggleCooldown and battlefield._absorbToggleCooldown > 0 then
		battlefield._absorbToggleCooldown = math.max(0, (battlefield._absorbToggleCooldown or 0) - (arg_358_0 or 0))
	end

	if absorbGlowAnim.state == "fadein" then
		absorbGlowAnim.fadeT = absorbGlowAnim.fadeT + (arg_358_0 or 0)
		absorbGlowAnim.radiusT = absorbGlowAnim.radiusT + (arg_358_0 or 0)

		if absorbGlowAnim.fadeT >= absorbGlowAnim.fadeDur then
			absorbGlowAnim.state = "on"
		end
	elseif absorbGlowAnim.state == "fadeout" then
		absorbGlowAnim.fadeT = absorbGlowAnim.fadeT + (arg_358_0 or 0)
		absorbGlowAnim.radiusT = absorbGlowAnim.radiusT + (arg_358_0 or 0)

		if absorbGlowAnim.fadeT >= absorbGlowAnim.fadeDur then
			absorbGlowAnim.state = "off"
			absorbGlowAnim.active = false
		end
	end

	if phase == "prep" and battlefield.mode ~= "battle" and not uiLocked then
		prepIdleT = math.min(60, (prepIdleT or 0) + arg_358_0)
	else
		prepIdleT = 0
	end

	local var_358_646 = battlefield.classSelect or battlefield.imprintModal and battlefield.imprintModal.active or ui and ui._coreSelect and ui._coreSelect.active or ui and ui.pauseOverlayState and ui.pauseOverlayState.active

	if waveTimer then
		waveTimer.disabled = var_0_45()
	end

	if battlefield and battlefield.mode ~= "battle" and var_0_173() and waveTimer and waveTimer.dur and waveTimer.dur > 0 and waveTimer.state == "countdown" then
		local var_358_647 = waveTimer.appearDur or 0.35

		waveTimer.appearT = math.min(var_358_647, (waveTimer.appearT or 0) + arg_358_0)
	end

	if battlefield and battlefield.mode ~= "battle" and not var_0_173() and not var_358_646 and (not ui or not ui._shopMode and not ui._stoneMode) and not battlefield.gameOver and #coinPopups == 0 and (not ui or not ui._stoneActivated or not ui._stoneActivated.active) and waveTimer and waveTimer.dur and waveTimer.dur > 0 then
		if waveTimer.state == "countdown" then
			local var_358_648 = waveTimer.appearDur or 0.35

			waveTimer.appearT = math.min(var_358_648, (waveTimer.appearT or 0) + arg_358_0)

			if not waveTimer.disabled then
				waveTimer.t = (waveTimer.t or 0) + arg_358_0

				if waveTimer.t >= waveTimer.dur then
					waveTimer.state = "fading"
					waveTimer.fadeT = 0
					waveTimer.manualStart = false
				end
			end
		elseif waveTimer.state == "fading" then
			waveTimer.fadeT = (waveTimer.fadeT or 0) + arg_358_0

			if (waveTimer.fadeT or 0) >= (waveTimer.fadeDur or 0.6) then
				local var_358_649 = slot and slot.spin and slot.spin.active
				local var_358_650 = slot and slot.result and slot.result.winSeq and slot.result.winSeq.active

				if var_358_649 or var_358_650 then
					pendingBattle.deferStart = true
				else
					if not battlefield.gameOver then
						local var_358_651 = var_0_142()

						if var_358_651 and var_358_651.right then
							if ui then
								ui._coreSelectOffersCache = nil
							end

							var_0_47(var_358_651.right)

							phase = "battle"
						end
					end

					waveTimer.t = 0
					waveTimer.dur = var_0_38()
					waveTimer.fadeT = 0
					waveTimer.state = "countdown"
					waveTimer.manualStart = false
				end
			end
		end
	end

	if ui then
		ui._waveTimer = waveTimer
		ui._promotionSelect = battlefield and battlefield.classSelect

		if ui._promotionSelect then
			ui._promotionSelect.active = true
		end
	end

	if startShake and startShake.active then
		startShake.t = (startShake.t or 0) + arg_358_0

		if (startShake.t or 0) >= (startShake.dur or 0.2) then
			startShake.active = false
		end
	end

	if ui and ui._victorySprite and ui._victorySprite.active then
		ui._victorySprite.t = ui._victorySprite.t + arg_358_0

		local var_358_652 = ui.victorySprite or {}
		local var_358_653 = ui._victorySprite.originiteReward

		if var_358_653 then
			local var_358_654 = var_358_652.rewardCountDuration or 0.45
			local var_358_655 = math.min(1, math.max(0, (ui._victorySprite.t or 0) / math.max(0.001, var_358_654)))
			local var_358_656 = math.max(tonumber(var_358_653.amount) or 0, tonumber(var_358_653.firstReachBonus) or 0)
			local var_358_657 = math.floor(var_358_656 * var_358_655 + 0.5)

			if var_358_657 > (ui._victorySprite.rewardDisplayedTick or 0) then
				ui._victorySprite.rewardDisplayedTick = var_358_657
				ui._victorySprite.rewardTickImpactT = ui._victorySprite.t
				ui._victorySprite.rewardTickSerial = (ui._victorySprite.rewardTickSerial or 0) + 1

				local var_358_658 = ui._victorySprite.rewardTickSoundT or -10

				if ui._victorySprite.t - var_358_658 >= 0.035 or var_358_655 >= 1 then
					local var_358_659 = loadedAssets and loadedAssets.audio and loadedAssets.audio.buttonHover

					if var_358_659 and var_358_659.clone then
						ui._victorySprite.rewardTickSounds = ui._victorySprite.rewardTickSounds or {}

						local var_358_660 = ui._victorySprite.rewardTickSounds
						local var_358_661

						for iter_358_64, iter_358_65 in ipairs(var_358_660) do
							if iter_358_65 and iter_358_65.isPlaying and not iter_358_65:isPlaying() then
								var_358_661 = iter_358_65

								break
							end
						end

						if not var_358_661 and #var_358_660 < 4 then
							var_358_661 = var_358_659:clone()
							var_358_660[#var_358_660 + 1] = var_358_661
						end

						if var_358_661 then
							local var_358_662 = ui.menuSettings and ui.menuSettings.sfxVolume or 1

							if var_358_661.setVolume then
								var_358_661:setVolume(var_358_662 * 0.28)
							end

							if var_358_661.setPitch then
								var_358_661:setPitch(1.15 + 0.18 * var_358_655 + 0.03 * ((ui._victorySprite.rewardTickSerial or 0) % 2))
							end

							var_358_661:play()
						end
					end

					ui._victorySprite.rewardTickSoundT = ui._victorySprite.t
				end
			end
		end

		if (ui._victorySprite.dur or var_358_652.dur or 2) <= ui._victorySprite.t then
			ui._victorySprite.active = false
		end
	end

	if ui and ui._defeatSprite and ui._defeatSprite.active then
		ui._defeatSprite.t = ui._defeatSprite.t + arg_358_0

		local var_358_663 = ui.defeatSprite or {}

		if (ui._defeatSprite.dur or var_358_663.dur or 2) <= ui._defeatSprite.t then
			ui._defeatSprite.active = false
		end
	end
end

function love.wheelmoved(arg_368_0, arg_368_1)
	if phase == "upgrade" then
		local var_368_0, var_368_1 = love.mouse.getPosition()
		local var_368_2, var_368_3 = toVirtual(var_368_0, var_368_1)

		if var_0_17 and var_0_17.wheelmoved then
			var_0_17.wheelmoved(arg_368_0, arg_368_1, var_368_2, var_368_3)
		end

		return
	end

	local var_368_4 = ui and ui.menuSettingsOverlayState

	if phase == "menu" and var_368_4 and var_368_4.open == true then
		var_0_165(var_368_4, arg_368_1, 24)

		return
	end

	local var_368_5 = ui and ui.pauseOverlayState

	if var_368_5 and var_368_5.active == true and var_368_5.settingsMode == true then
		var_0_165(var_368_5, arg_368_1, 24)

		return
	end

	if _G.Render2 and _G.Render2.handleDpsWheel and lastLayout and lastLayout.right and _G.Render2.handleDpsWheel(ui, lastLayout.right, loadedAssets, battlefield, ui and ui.tooltip and ui.tooltip.mouseX, ui and ui.tooltip and ui.tooltip.mouseY, arg_368_1) then
		return
	end

	if not var_0_175() then
		if Tutorial and (Tutorial.isActive and Tutorial.isActive() or Tutorial.isPending and Tutorial.isPending()) then
			return
		end

		if var_0_173() then
			return
		end
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return
	end

	if ui and ui._stoneActivated and ui._stoneActivated.active then
		return
	end

	if uiLocked then
		return
	end

	if not ui or not tooltip or not battlefield then
		return
	end

	if battlefield.mode == "battle" or battlefield.classSelect then
		return
	end

	do return end

	local var_368_6 = tooltip and tooltip.candidate

	if not var_368_6 or var_368_6.kind ~= "roster" or not var_368_6.ref then
		return
	end

	local var_368_7 = var_368_6.ref
	local var_368_8 = {
		"가까운",
		"먼",
		"약한",
		"강한"
	}

	if not var_368_7.attackTarget or type(var_368_7.attackTarget) ~= "string" then
		var_368_7.attackTarget = "가까운"
		var_368_7._uiAttackTargetDisplay = var_368_7.attackTarget
	end

	local var_368_9 = 1

	for iter_368_0, iter_368_1 in ipairs(var_368_8) do
		if iter_368_1 == var_368_7.attackTarget then
			var_368_9 = iter_368_0

			break
		end
	end

	local var_368_10 = 0

	if arg_368_1 and arg_368_1 ~= 0 then
		var_368_10 = -math.floor(arg_368_1)
	end

	if arg_368_0 and arg_368_0 ~= 0 and var_368_10 == 0 then
		var_368_10 = -math.floor(arg_368_0)
	end

	if var_368_10 == 0 then
		return
	end

	local var_368_11 = #var_368_8

	var_368_7.attackTarget = var_368_8[(var_368_9 - 1 + var_368_10) % var_368_11 + 1]
	var_368_7._uiAttackTargetDisplay = var_368_7.attackTarget
end

function love.mousepressed(arg_369_0, arg_369_1, arg_369_2)
	local var_369_0, var_369_1 = toVirtual(arg_369_0, arg_369_1)
	local var_369_2 = var_0_175()

	if not var_369_2 and Tutorial and Tutorial.isActive and Tutorial.isActive() then
		local var_369_3 = Tutorial.mousepressed and Tutorial.mousepressed(var_369_0, var_369_1, arg_369_2, ui) or "blocked"

		if var_369_3 == "start" or var_369_3 == "skip" then
			playButtonClickSound()
		end

		if var_369_3 == "skip" then
			var_0_172()
		end

		return
	end

	if not var_369_2 and Tutorial and Tutorial.isPending and Tutorial.isPending() then
		return
	end

	if not var_369_2 and var_0_173() then
		local var_369_4 = Tutorial and Tutorial.canContinueFromWin and Tutorial.canContinueFromWin()
		local var_369_5 = Tutorial and Tutorial.isBattleReadyStep and Tutorial.isBattleReadyStep()
		local var_369_6 = Tutorial and Tutorial.isFinalReadyStep and Tutorial.isFinalReadyStep()
		local var_369_7 = Tutorial and Tutorial.isPositionStep and Tutorial.isPositionStep()
		local var_369_8 = Tutorial and Tutorial.isNudgeActionStep and Tutorial.isNudgeActionStep()
		local var_369_9 = Tutorial and Tutorial.isAbsorbButtonStep and Tutorial.isAbsorbButtonStep()
		local var_369_10 = Tutorial and Tutorial.isAbsorbDragStep and Tutorial.isAbsorbDragStep()
		local var_369_11 = Tutorial and Tutorial.isFreeAbsorbStep and Tutorial.isFreeAbsorbStep()
		local var_369_12 = Tutorial and Tutorial.isAbsorbModalStep and Tutorial.isAbsorbModalStep()
		local var_369_13 = Tutorial and Tutorial.isImprintInspectStep and Tutorial.isImprintInspectStep()
		local var_369_14 = Tutorial and Tutorial.isCoreSelectStep and Tutorial.isCoreSelectStep()
		local var_369_15 = Tutorial and Tutorial.isClassSkillHoverStep and Tutorial.isClassSkillHoverStep()
		local var_369_16 = Tutorial and Tutorial.isClassChooseStep and Tutorial.isClassChooseStep()
		local var_369_17 = Tutorial and Tutorial.isShopIntroStep and Tutorial.isShopIntroStep()
		local var_369_18 = Tutorial and Tutorial.isShopBuyStep and Tutorial.isShopBuyStep()
		local var_369_19 = Tutorial and Tutorial.isShopReturnStep and Tutorial.isShopReturnStep()

		if var_369_4 and arg_369_2 == 1 then
			local var_369_20 = Tutorial.continueFromWin and Tutorial.continueFromWin()

			if var_369_20 then
				playButtonClickSound()
			end

			if var_369_20 == "complete" then
				var_0_172()
			end

			return
		elseif var_369_14 then
			-- block empty
		elseif var_369_15 then
			return
		elseif var_369_16 then
			-- block empty
		elseif var_369_17 then
			if not (Tutorial and Tutorial.hitTestShopIntro and Tutorial.hitTestShopIntro(ui, lastLayout, var_369_0, var_369_1)) then
				return
			end
		elseif var_369_18 then
			if not (Tutorial and Tutorial.hitTestShopBuy and Tutorial.hitTestShopBuy(ui, var_369_0, var_369_1)) then
				return
			end
		elseif var_369_19 then
			if not (Tutorial and Tutorial.hitTestBattlefieldReturn and Tutorial.hitTestBattlefieldReturn(ui, lastLayout, var_369_0, var_369_1)) then
				return
			end
		elseif var_369_6 then
			local var_369_21 = Tutorial.hitTestBattleReady and Tutorial.hitTestBattleReady(ui, lastLayout, var_369_0, var_369_1)

			var_369_21 = var_369_21 or var_0_11 and var_0_11.hitTestReadyIcon and lastLayout and lastLayout.right and var_0_11.hitTestReadyIcon(ui, lastLayout.right, battlefield, loadedAssets, var_369_0, var_369_1)

			local var_369_22 = tooltip and tooltip.candidate
			local var_369_23 = var_369_22 and var_369_22.kind == "roster" and var_369_22.ref

			if var_0_82(var_369_0, var_369_1) or var_0_83(var_369_0, var_369_1) then
				return
			end

			if not var_369_21 and not var_369_23 then
				if tooltip and tooltip.mousepressed then
					tooltip:mousepressed(var_369_0, var_369_1, arg_369_2)
				end

				return
			end
		elseif var_369_5 then
			local var_369_24 = Tutorial.hitTestBattleReady and Tutorial.hitTestBattleReady(ui, lastLayout, var_369_0, var_369_1)

			var_369_24 = var_369_24 or var_0_11 and var_0_11.hitTestReadyIcon and lastLayout and lastLayout.right and var_0_11.hitTestReadyIcon(ui, lastLayout.right, battlefield, loadedAssets, var_369_0, var_369_1)

			if not var_369_24 then
				return
			end
		elseif var_369_7 then
			local var_369_25 = tooltip and tooltip.candidate
			local var_369_26 = var_369_25 and var_369_25.kind == "roster" and var_369_25.ref or nil

			if not var_369_26 or not Tutorial.isTutorialRosterUnit or not Tutorial.isTutorialRosterUnit(var_369_26) then
				return
			end
		elseif var_369_8 then
			if arg_369_2 ~= 1 or not var_0_121(var_369_0, var_369_1, 2) then
				return
			end
		elseif var_369_9 then
			local var_369_27 = var_0_82(var_369_0, var_369_1) or var_0_83(var_369_0, var_369_1)

			if arg_369_2 ~= 1 or not var_369_27 then
				return
			end
		elseif var_369_10 then
			local var_369_28 = tooltip and tooltip.candidate
			local var_369_29 = var_369_28 and var_369_28.kind == "roster" and var_369_28.ref or nil

			if arg_369_2 ~= 1 or not var_369_29 or not Tutorial.isAllowedAbsorbVictim or not Tutorial.isAllowedAbsorbVictim(var_369_29) then
				return
			end
		elseif var_369_11 then
			if var_0_82(var_369_0, var_369_1) or var_0_83(var_369_0, var_369_1) then
				return
			end
		elseif var_369_12 then
			-- block empty
		elseif var_369_13 then
			local var_369_30 = tooltip and tooltip.candidate
			local var_369_31 = var_369_30 and var_369_30.kind == "roster" and var_369_30.ref or nil

			if arg_369_2 ~= 2 or not var_369_31 or not Tutorial.isArcherUnit or not Tutorial.isArcherUnit(var_369_31) then
				return
			end
		elseif not var_0_120(var_369_0, var_369_1) or not var_0_174() then
			return
		end
	end

	if ui and ui.tooltip and ui.tooltip.mousepressed and ui.tooltip:mousepressed(var_369_0, var_369_1, arg_369_2) == true then
		return
	end

	if battlefield and battlefield.imprintModal and battlefield.imprintModal.active and (not ui or not ui.pauseOverlayState or not ui.pauseOverlayState.active) then
		return
	end

	if menuPlayTransition.active then
		return
	end

	local var_369_32 = __slotGetCurrentCreditsBackgroundRect and __slotGetCurrentCreditsBackgroundRect(ui, loadedAssets)

	if var_369_32 and __slotHandleCreditsTextEditorMousePressed and __slotHandleCreditsTextEditorMousePressed(ui, var_369_32.img, var_369_32.x, var_369_32.y, var_369_32.scale, var_369_0, var_369_1, arg_369_2) then
		playButtonClickSound()

		return
	end

	if arg_369_2 == 1 and _G.Render2 and _G.Render2.handleDpsSandboxTuningMousePressed and lastLayout and lastLayout.right and _G.Render2.handleDpsSandboxTuningMousePressed(ui, lastLayout.right, loadedAssets, battlefield, var_369_0, var_369_1, arg_369_2) then
		playButtonClickSound()

		return
	end

	if arg_369_2 == 1 and _G.Render2 and _G.Render2.hitTestDpsSlotList and lastLayout and lastLayout.right and _G.Render2.hitTestDpsSlotList(ui, lastLayout.right, loadedAssets, battlefield, var_369_0, var_369_1) then
		return
	end

	if arg_369_2 == 1 and _G.Render2 and _G.Render2.hitTestDpsButton and lastLayout and lastLayout.right and _G.Render2.hitTestDpsButton(ui, lastLayout.right, loadedAssets, var_369_0, var_369_1, battlefield) then
		if _G.Render2.toggleDpsWindow then
			_G.Render2.toggleDpsWindow(ui, battlefield)
		end

		playButtonClickSound()

		return
	end

	if battlefield and battlefield.gameOver and ui and ui.gameOverButtons then
		if ui.pendingGameOverAction then
			return
		end

		local var_369_33 = ui.gameOverButtons.replay
		local var_369_34 = ui.gameOverButtons.upgrade
		local var_369_35 = ui.gameOverButtons.main

		local function var_369_36(arg_370_0)
			return var_369_0 >= arg_370_0.x and var_369_0 < arg_370_0.x + arg_370_0.w and var_369_1 >= arg_370_0.y and var_369_1 < arg_370_0.y + arg_370_0.h
		end

		if var_369_33 and var_369_36(var_369_33) then
			if ui.gameOverButtonState and ui.gameOverButtonState.replay then
				ui.gameOverButtonState.replay.pressed = true
			end

			ui.pendingGameOverAction = "restart"
			ui.pendingGameOverTimer = 0.15

			return
		end

		if var_369_34 and var_369_36(var_369_34) then
			if ui.gameOverButtonState and ui.gameOverButtonState.upgrade then
				ui.gameOverButtonState.upgrade.pressed = true
			end

			ui.pendingGameOverAction = "upgrade"
			ui.pendingGameOverTimer = 0.15
			ui._pendingGameOverUpgradeCenter = {
				x = var_369_34.x + var_369_34.w / 2,
				y = var_369_34.y + var_369_34.h / 2
			}

			return
		end

		if var_369_35 and var_369_36(var_369_35) then
			if ui.gameOverButtonState and ui.gameOverButtonState.main then
				ui.gameOverButtonState.main.pressed = true
			end

			ui.pendingGameOverAction = "menu"
			ui.pendingGameOverTimer = 0.15

			return
		end

		return
	end

	if phase == "upgrade" then
		local var_369_37, var_369_38 = toVirtual(arg_369_0, arg_369_1)

		if var_0_17.mousepressed then
			local var_369_39 = var_0_17.mousepressed(var_369_37, var_369_38, arg_369_2)

			if var_369_39 == "back" then
				if not upgradeTransition.active then
					var_0_48(ui)

					upgradeTransition.state = "out"
					upgradeTransition.active = true
					upgradeTransition.t = 0
				end
			elseif var_369_39 and var_369_39.action == "add_originite" then
				var_0_16.addOriginite(var_369_39.amount)
			end
		end

		return
	end

	if phase == "menu" then
		if (ui and ui.menuSettingsOverlayState and ui.menuSettingsOverlayState.open) == true then
			if var_0_16 and var_0_16.exitConfirm and var_0_16.exitConfirm.active then
				local var_369_40 = var_0_16.mousepressed(var_369_0, var_369_1, arg_369_2)

				if var_369_40 == "resetsave" then
					if var_0_159() then
						ui.menuSettingsOverlayState.open = false

						if Tutorial and Tutorial.stop then
							Tutorial.stop(ui)
						end

						phase = "menu"

						restartGameSession()

						phase = "menu"

						var_0_16.resetLogoAnim()

						if var_0_16 and var_0_16.resetMenuState then
							var_0_16.resetMenuState(ui)
						end
					end
				elseif var_369_40 == "exit" then
					love.event.quit()
				end

				return
			end

			menuSettingsOverlayMousepressed(var_369_0, var_369_1, arg_369_2)

			return
		end

		local var_369_41 = var_0_16.mousepressed(var_369_0, var_369_1, arg_369_2)

		if var_369_41 == "play" or type(var_369_41) == "table" and var_369_41.type == "play" then
			local var_369_42 = 1
			local var_369_43 = 1

			if type(var_369_41) == "table" then
				var_369_42 = tonumber(var_369_41.stage or 1) or 1
				var_369_43 = tonumber(var_369_41.difficulty or 1) or 1
			end

			startMenuPlayTransition(var_369_42, var_369_43)
		elseif var_369_41 == "upgrade" then
			print("Upgrade clicked")
		elseif var_369_41 == "collection" then
			print("Collection clicked")
		elseif var_369_41 == "achievement" then
			print("Achievement clicked")
		elseif var_369_41 == "settings" then
			openMenuSettingsOverlay()
		elseif var_369_41 == "exit" then
			love.event.quit()
		elseif var_369_41 == "resetsave" and var_0_159() then
			if ui and ui.menuSettingsOverlayState then
				ui.menuSettingsOverlayState.open = false
			end

			if Tutorial and Tutorial.stop then
				Tutorial.stop(ui)
			end

			phase = "menu"

			restartGameSession()

			phase = "menu"

			var_0_16.resetLogoAnim()

			if var_0_16 and var_0_16.resetMenuState then
				var_0_16.resetMenuState(ui)
			end
		end

		return
	end

	if arg_369_2 == 1 and battlefield and lastLayout and lastLayout.right and _G.__slotHitTestBattleFastForwardButton and _G.__slotHitTestBattleFastForwardButton(lastLayout.right, var_369_0, var_369_1) then
		local var_369_44 = battlefield.battleFastForward == true

		battlefield.battleFastForward = battlefield.battleFastForward ~= true
		ui._battleFastForwardPressState = ui._battleFastForwardPressState or {}
		ui._battleFastForwardPressState.wasActive = var_369_44

		local var_369_45 = ui and ui.fastForwardButton or {}
		local var_369_46 = tonumber(var_369_45.pressDur) or 0.1

		if var_369_46 < 0 then
			var_369_46 = 0
		end

		ui._battleFastForwardPressState.untilTime = love.timer.getTime() + var_369_46

		playButtonClickSound()

		return
	end

	local var_369_47 = ui and ui._restartConfirm

	if var_369_47 and var_369_47.active then
		if arg_369_2 ~= 1 then
			return
		end

		if var_369_47.leaving then
			local var_369_48 = ui and ui.virtual and ui.virtual.H or 720

			if (var_369_47.y or var_369_48 + 1) >= var_369_48 - 1 then
				var_369_47.active = false
			else
				return
			end
		end

		local var_369_49, var_369_50 = toVirtual(arg_369_0, arg_369_1)

		local function var_369_51(arg_371_0)
			return arg_371_0 and var_369_49 >= arg_371_0.x and var_369_49 <= arg_371_0.x + arg_371_0.w and var_369_50 >= arg_371_0.y and var_369_50 <= arg_371_0.y + arg_371_0.h
		end

		if var_369_51(var_369_47.rectYes) then
			playButtonClickSound()

			var_369_47.active = false

			if ui and ui.pauseOverlayState then
				ui.pauseOverlayState.active = false
			end

			if var_369_47.action == "resetsave" then
				if var_0_159() then
					if ui and ui.menuSettingsOverlayState then
						ui.menuSettingsOverlayState.open = false
					end

					if Tutorial and Tutorial.stop then
						Tutorial.stop(ui)
					end

					phase = "menu"

					restartGameSession()

					phase = "menu"

					var_0_16.resetLogoAnim()

					if var_0_16 and var_0_16.resetMenuState then
						var_0_16.resetMenuState(ui)
					end
				end
			elseif var_369_47.action == "mainmenu" then
				var_0_22()

				if Tutorial and Tutorial.stop then
					Tutorial.stop(ui)
				end

				phase = "menu"

				restartGameSession()

				phase = "menu"

				var_0_16.resetLogoAnim()

				if var_0_16 and var_0_16.resetMenuState then
					var_0_16.resetMenuState(ui)
				end
			else
				var_0_22()
				restartGameSession()

				if Tutorial and Tutorial.beginForRun then
					Tutorial.beginForRun(battlefield and (battlefield.stage or battlefield.currentStage) or 1, battlefield and battlefield.difficulty or 1, ui)
				end
			end

			return
		elseif var_369_51(var_369_47.rectNo) then
			playButtonClickSound()

			var_369_47.leaving = true
			var_369_47.targetY = (ui and ui.virtual and ui.virtual.H or 720) + 10
			var_369_47.rectYes, var_369_47.rectNo = nil

			return
		else
			return
		end
	end

	local var_369_52 = ui and ui.pauseOverlayState

	if var_369_52 and var_369_52.active then
		if loadedAssets and loadedAssets.audio then
			local var_369_53 = loadedAssets.audio.buttonClick
		end

		if arg_369_2 ~= 1 then
			return
		end

		if var_369_52.playHovered then
			playButtonClickSound()

			var_369_52.active = false

			playWoodUpSound()

			var_369_52.settingsMode = false
			var_369_52._settingsPending = false
			var_369_52._settingsT = 0

			return
		end

		if var_369_52.replayHovered then
			playButtonClickSound()

			local var_369_54 = loadedAssets and loadedAssets.ui
			local var_369_55 = var_369_54 and var_369_54.messageWindow
			local var_369_56 = var_369_55 and var_369_55:getHeight() or 160
			local var_369_57 = ui and ui.restartConfirm or {}
			local var_369_58 = var_369_57.centerY or math.floor(ui.virtual.H * (var_369_57.centerFracY or 0.5) + 0.5)
			local var_369_59 = var_369_57.boardOffsetY or 0
			local var_369_60 = math.floor(var_369_58 - var_369_56 * 0.5 + var_369_59 + 0.5)

			ui._restartConfirm = {
				v = 0,
				active = true,
				action = "restart",
				y = ui.virtual.H + 10,
				targetY = var_369_60,
				prompt = var_0_7.getText("pause_restart_confirm", _G.currentGameLang or "ko")
			}

			return
		end

		if var_369_52.toMainHovered then
			playButtonClickSound()

			local var_369_61 = loadedAssets and loadedAssets.ui
			local var_369_62 = var_369_61 and var_369_61.messageWindow
			local var_369_63 = var_369_62 and var_369_62:getHeight() or 160
			local var_369_64 = ui and ui.restartConfirm or {}
			local var_369_65 = var_369_64.centerY or math.floor(ui.virtual.H * (var_369_64.centerFracY or 0.5) + 0.5)
			local var_369_66 = var_369_64.boardOffsetY or 0
			local var_369_67 = math.floor(var_369_65 - var_369_63 * 0.5 + var_369_66 + 0.5)

			ui._restartConfirm = {
				v = 0,
				active = true,
				action = "mainmenu",
				y = ui.virtual.H + 10,
				targetY = var_369_67,
				prompt = var_0_7.getText("pause_mainmenu_confirm", _G.currentGameLang or "ko")
			}

			return
		end

		if var_369_52.optionHovered and not var_369_52.settingsMode then
			playButtonClickSound()

			var_369_52.settingsMode = true
			var_369_52._settingsPending = false
			var_369_52._settingsT = 0
			var_369_52.settingsPaperT = 0

			return
		end

		if var_369_52.settingsMode then
			local var_369_68 = ui and ui.pauseOverlay and ui.pauseOverlay.optionPaperBackground
			local var_369_69 = loadedAssets and loadedAssets.ui and loadedAssets.ui.optionPaperBackground

			if var_369_68 and var_369_69 then
				local var_369_70 = var_369_68.scale or 1
				local var_369_71 = math.floor(var_369_69:getWidth() * var_369_70 + 0.5)
				local var_369_72 = math.floor((ui.virtual.W - var_369_71) / 2)
				local var_369_73 = math.floor((var_369_68.offsetY or 0) + 0.5)
				local var_369_74 = 0.08
				local var_369_75 = 0.45
				local var_369_76 = var_369_52.settingsPaperT or 0
				local var_369_77 = -40

				if var_369_74 <= var_369_76 then
					local var_369_78 = math.min(1, (var_369_76 - var_369_74) / var_369_75)

					var_369_77 = -40 * (1 - (1 - (1 - var_369_78) * (1 - var_369_78) * (1 - var_369_78)))
				end

				local var_369_79 = math.floor((var_369_52.y or 0) + 0.5)
				local var_369_80 = var_369_73 + var_369_77
				local var_369_81 = math.floor(var_369_69:getHeight() * var_369_70 + 0.5)
				local var_369_82, var_369_83, var_369_84, var_369_85 = var_0_161(var_369_72, var_369_79 + var_369_80, var_369_71, var_369_81, var_369_68)
				local var_369_86, var_369_87, var_369_88, var_369_89 = var_0_163(var_369_82, var_369_83, var_369_84, var_369_85)
				local var_369_90 = var_0_160("pause")
				local var_369_91 = var_369_52.settingsScrollY or 0

				if var_369_52.langDropdownOpen == true and var_0_171(var_369_0, var_369_1, var_369_86, var_369_87, var_369_88, var_369_89, var_369_91, var_369_90, var_369_52) then
					return
				end

				if var_0_166(var_369_52, var_369_86, var_369_87, var_369_88, var_369_89, var_369_0, var_369_1) then
					return
				end

				if var_0_171(var_369_0, var_369_1, var_369_86, var_369_87, var_369_88, var_369_89, var_369_91, var_369_90, var_369_52) then
					return
				end
			end
		end

		return
	end

	if arg_369_2 == 2 then
		if uiLocked then
			return
		end

		local var_369_92, var_369_93 = toVirtual(arg_369_0, arg_369_1)

		if battlefield and battlefield.sandboxMode and (not battlefield or battlefield.mode ~= "battle") then
			local var_369_94 = loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick

			if var_369_94 and lastLayout and lastLayout.slotPanel then
				local var_369_95 = lastLayout.slotPanel
				local var_369_96 = ui and ui.spinstick or {}
				local var_369_97 = var_369_95.x + var_369_95.w + (var_369_96.offsetX or 4)
				local var_369_98 = var_369_95.y + (var_369_96.offsetY or 0)
				local var_369_99 = math.floor(var_369_97 + (spinShake.x or 0) + 0.5)
				local var_369_100 = math.floor(var_369_98 + (slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (ui and ui.slot and ui.slot.stickyOffsetY or 0) + var_0_108() + 0.5)
				local var_369_101 = tonumber(var_369_96.hitExpandPx or 0) or 0
				local var_369_102 = tonumber(var_369_96.hitExpandX or var_369_101) or 0
				local var_369_103 = tonumber(var_369_96.hitExpandY or var_369_101) or 0
				local var_369_104 = tonumber(var_369_96.hitOffsetX or 0) or 0
				local var_369_105 = tonumber(var_369_96.hitOffsetY or 0) or 0
				local var_369_106 = var_369_99 + var_369_104
				local var_369_107 = var_369_100 + var_369_105
				local var_369_108 = var_369_94.frameW
				local var_369_109 = var_369_94.frameH
				local var_369_110 = var_369_106 - var_369_102
				local var_369_111 = var_369_107 - var_369_103
				local var_369_112 = var_369_106 + var_369_108 + var_369_102
				local var_369_113 = var_369_107 + var_369_109 + var_369_103

				if var_369_110 <= var_369_92 and var_369_92 <= var_369_112 and var_369_111 <= var_369_93 and var_369_93 <= var_369_113 then
					spinHitRectDrag.active = true
					spinHitRectDrag.ox = var_369_92 - var_369_110
					spinHitRectDrag.oy = var_369_93 - var_369_111

					return
				end
			end
		end

		return
	end

	if arg_369_2 ~= 1 then
		return
	end

	if uiLocked then
		return
	end

	local var_369_114, var_369_115 = toVirtual(arg_369_0, arg_369_1)
	local var_369_116 = ui and ui._coreSelect and ui._coreSelect.active
	local var_369_117 = ui and ui.pauseOverlayState and ui.pauseOverlayState.settingsMode

	if ui and not var_369_116 and not var_369_117 then
		local var_369_118 = ui and ui._itemPurchased
		local var_369_119 = backgroundItemPanelImage

		if var_369_118 and var_369_119 and #var_369_118 > 0 then
			local var_369_120 = (ui and ui.itemInventory or {}).panel or {}
			local var_369_121 = var_369_120.scale or 1
			local var_369_122 = var_369_119:getWidth()
			local var_369_123 = var_369_119:getHeight()
			local var_369_124
			local var_369_125

			if var_369_120.anchor == "battlefield-bottom-left" and lastLayout and lastLayout.right then
				local var_369_126 = lastLayout.right

				var_369_124 = (var_369_126.x or 0) + (var_369_120.offsetX or 0)
				var_369_125 = (var_369_126.y or 0) + (var_369_126.h or 0) - var_369_123 * var_369_121 - (var_369_120.offsetY or 0)
			elseif var_369_120.anchor == "screen-bottom-left" and ui and ui.virtual then
				var_369_124 = (var_369_120.x or 0) + (var_369_120.offsetX or 0)
				var_369_125 = (ui.virtual.H or 0) - var_369_123 * var_369_121 - (var_369_120.offsetY or 0)
			else
				var_369_124 = var_369_120.x or 20
				var_369_125 = var_369_120.y or 90
			end

			local var_369_127 = math.floor(var_369_124 + 0.5)
			local var_369_128 = math.floor(var_369_125 + 0.5)
			local var_369_129 = var_369_120.gapX or 8
			local var_369_130 = math.floor(var_369_122 * var_369_121 + 0.5)
			local var_369_131 = math.floor(var_369_130 + var_369_129 + 0.5)

			for iter_369_0 = 1, math.min(#var_369_118, getItemInventoryCapacity()) do
				local var_369_132 = var_369_118[iter_369_0]

				if var_369_132 then
					local var_369_133 = iter_369_0 - 1
					local var_369_134 = (ui._itemPurchasedKeys or {})[iter_369_0] or var_369_132
					local var_369_135 = var_369_127 + var_369_131 * var_369_133
					local var_369_136 = var_369_128

					if var_369_135 <= var_369_114 and var_369_114 <= var_369_135 + var_369_122 * var_369_121 and var_369_136 <= var_369_115 and var_369_115 <= var_369_136 + var_369_123 * var_369_121 then
						local var_369_137 = false

						if backgroundItemPanelData then
							local var_369_138 = (var_369_114 - var_369_135) / math.max(0.0001, var_369_121)
							local var_369_139 = (var_369_115 - var_369_136) / math.max(0.0001, var_369_121)

							if var_369_138 >= 0 and var_369_139 >= 0 and var_369_138 < var_369_122 and var_369_139 < var_369_123 then
								local var_369_140, var_369_141, var_369_142, var_369_143 = backgroundItemPanelData:getPixel(math.floor(var_369_138), math.floor(var_369_139))

								var_369_137 = (var_369_143 or 0) > 0.05
							end
						else
							var_369_137 = true
						end

						if var_369_137 then
							if ui and ui._deleteMode then
								local var_369_144 = math.floor(var_0_95(var_369_132) * getItemRefundRate())

								jungsu = (jungsu or 0) + var_369_144
								ui.jungsuBalanceTarget = jungsu

								if var_369_144 > 0 then
									addJungsuPopup(var_369_144)
								end

								ui._itemDeleting = ui._itemDeleting or {}

								table.insert(ui._itemDeleting, {
									t = 0,
									dur = 0.5,
									def = var_369_132,
									x = var_369_135,
									y = var_369_136,
									scale = var_369_121,
									lastT = love.timer.getTime()
								})

								ui._itemShift = {
									delay = 0.5,
									dur = 0.3,
									index = iter_369_0,
									deletedType = var_369_132.type,
									startTime = love.timer.getTime(),
									step = var_369_131
								}

								table.remove(var_369_118, iter_369_0)

								if ui._itemPurchasedKeys then
									table.remove(ui._itemPurchasedKeys, iter_369_0)
								end

								if battlefield and __slotApplySturdyShieldMaxHp then
									__slotApplySturdyShieldMaxHp(battlefield)
								end

								if ui._itemHoverDef == var_369_132 then
									ui._itemHoverDef = nil
								end

								return
							end

							local var_369_145 = ui and ui._itemHoverDef

							if var_369_145 and var_369_145 ~= var_369_132 then
								-- block empty
							else
								local var_369_146 = var_369_132 and var_369_132.id and type(var_369_132.id) == "string" and var_369_132.id:sub(1, 6) == "stone_"
								local var_369_147 = battlefield and battlefield.mode == "battle"

								if ui and ui._stoneActivated and ui._stoneActivated.active then
									return
								end

								if not var_369_146 then
									break
								end

								if var_369_147 then
									return
								end

								local var_369_148 = ui and ui._itemPanelCooldown
								local var_369_149 = var_369_148 and (var_369_148[var_369_134] or var_369_148[var_369_132])

								if var_369_149 and not var_369_149.done then
									return
								end

								local var_369_150 = ui and ui.itemInventory and ui.itemInventory.panel or {}

								if var_369_146 then
									ui._itemPanelClickPop = ui._itemPanelClickPop or {}
									ui._itemPanelClickPop[var_369_134] = {
										phase = "wait",
										offsetY = 0,
										t = 0,
										waitSec = 0.08
									}
									ui._itemPanelShapeRipple = ui._itemPanelShapeRipple or {}
									ui._itemPanelShapeRipple[var_369_134] = {
										t = 0,
										dur = 0.55
									}
									screenLineShake.active = true
									screenLineShake.t = 0
									screenLineShake.dur = 0.09
									screenLineShake.freq = 22
									screenLineShake.axis = "y"
									screenLineShake.ampPx = 0.9
									screenLineShake.x, screenLineShake.y = 0, 0

									local var_369_151 = var_369_132.id:sub(7)
									local var_369_152 = require("src.game.stone").get(var_369_151)
									local var_369_153 = var_369_152 and var_369_152.effect and var_369_152.effect.type == "unit_spawn_probability" and var_369_152.effect.probabilities or nil

									ui._stoneActivated = {
										phase = "fadein",
										active = true,
										fadeInDur = 0.5,
										t = 0,
										fadeOutDur = 0.4,
										stoneKey = var_369_151,
										probs = var_369_153,
										def = var_369_132,
										panelKey = var_369_134,
										panelConfig = var_369_150
									}

									if slot then
										slot.forceWinOnce = true
									end

									freeSpinCredits = math.max(0, freeSpinCredits or 0) + 1

									playStoneSlotModSound()

									return
								end

								ui._itemPanelClickPop = ui._itemPanelClickPop or {}
								ui._itemPanelClickPop[var_369_134] = {
									phase = "up",
									offsetY = 0,
									t = 0
								}
								ui._itemPanelCooldown = ui._itemPanelCooldown or {}

								local var_369_154 = var_369_132 and var_369_132.cooldownSec or var_369_150.cooldown and var_369_150.cooldown.durSec or 3

								ui._itemPanelCooldown[var_369_134] = {
									t = 0,
									dur = var_369_154
								}

								local var_369_155, var_369_156 = pcall(require, "src.game.item")

								if var_369_155 and var_369_156 and type(var_369_156.activate) == "function" then
									var_369_156.activate(var_369_132, battlefield, ui)

									if var_0_18 and var_0_18.onItemUsed then
										var_0_18.onItemUsed()
									end

									ui._itemPanelShapeRipple = ui._itemPanelShapeRipple or {}
									ui._itemPanelShapeRipple[var_369_134] = {
										t = 0,
										dur = 0.55
									}
									screenLineShake.active = true
									screenLineShake.t = 0
									screenLineShake.dur = 0.09
									screenLineShake.freq = 22
									screenLineShake.axis = "y"
									screenLineShake.ampPx = 0.9
									screenLineShake.x, screenLineShake.y = 0, 0
								end

								return
							end
						end
					end
				end
			end
		end
	end

	if ui and ui._coreSelect and ui._coreSelect.active then
		if var_0_11 and var_0_11.hitTestCoreSelectButtons then
			local var_369_157 = var_0_11.hitTestCoreSelectButtons(ui, loadedAssets, var_369_114, var_369_115)

			if var_369_157 == "back" then
				if ui._coreSelect.mode == "detail" then
					ui._coreSelect._discardConfirm = nil
					ui._coreSelect.active = false
					ui._coreSelect = nil
				elseif var_0_11.isCoreSelectAtCapacity and var_0_11.isCoreSelectAtCapacity(ui) then
					CoreSelectFlow.defer(ui, love.timer.getTime())
				end

				return
			elseif var_369_157 == "skip" then
				skipPendingCoreSelection()

				return
			elseif var_369_157 == "reroll" then
				if Tutorial and Tutorial.isRunning and Tutorial.isRunning() then
					return
				end

				local var_369_158, var_369_159 = pcall(require, "src.game.cores")

				if var_369_158 and var_369_159 and var_369_159.offer then
					local var_369_160 = (coreSelectionsMade or 0) + 1
					local var_369_161 = 1
					local var_369_162 = ui._coreSelect.rerollCost

					if var_369_162 == nil then
						var_369_162 = ui._coreSelectRerollCost
					end

					if var_369_162 == nil then
						var_369_162 = var_369_161
					end

					local var_369_163 = math.max(0, math.floor(tonumber(var_369_162) or var_369_161))
					local var_369_164 = ui._coreSelect._usesUpgradeFreeReroll == true and (coreFreeRerollsRemaining or 0) > 0
					local var_369_165 = math.max(0, math.floor(tonumber(ui._coreSelect._paidRerollCost or var_369_161) or var_369_161))

					if not var_369_164 and var_369_163 > (jungsu or 0) then
						ui._coreSelect._rerollDenyT = love.timer.getTime()

						return
					end

					local var_369_166 = var_369_159.offer(3, var_369_160, hasFirstCoreUncommonGuarantee())
					local var_369_167 = {
						var_369_166[1],
						var_369_166[2],
						var_369_166[3]
					}
					local var_369_168 = false

					for iter_369_1 = 1, 3 do
						if var_369_167[iter_369_1] then
							var_369_168 = true

							break
						end
					end

					if var_369_168 then
						if var_369_164 then
							coreFreeRerollsRemaining = math.max(0, (coreFreeRerollsRemaining or 0) - 1)
						else
							jungsu = math.max(0, (jungsu or 0) - var_369_163)
						end

						displayJungsu = jungsu
						ui.jungsuBalance = displayJungsu
						ui.jungsuBalanceTarget = jungsu
						ui._coreSelect.rerollCost = (var_369_164 and var_369_165 or var_369_163) + 1
						ui._coreSelect._paidRerollCost = ui._coreSelect.rerollCost
						ui._coreSelect._usesUpgradeFreeReroll = false
						ui._coreSelectRerollCost = ui._coreSelect.rerollCost
						ui._coreSelect.offers = var_369_167

						local var_369_169 = battlefield and battlefield.wave and battlefield.wave.id or 0

						ui._coreSelectOffersCache = {
							waveId = var_369_169,
							order = var_369_160,
							offers = ui._coreSelect.offers
						}
						ui._coreSelect.startT = love.timer.getTime()
						ui._coreSelect.left = nil
						ui._coreSelect.mid = nil
						ui._coreSelect.right = nil
						ui._coreSelect._rerollDenyT = nil
					else
						ui._coreSelect.active = false
						ui._coreSelect = nil
					end
				end

				return
			elseif var_369_157 == "discard" then
				local var_369_170 = ui._coreSelect

				if not var_369_170 or var_369_170._discardConfirm ~= true then
					if var_369_170 then
						var_369_170._discardConfirm = true
						var_369_170._discardConfirmT = love.timer.getTime()
					end

					return
				end

				local var_369_171 = var_369_170 and var_369_170.offers and var_369_170.offers[2]

				if var_369_171 then
					local var_369_172, var_369_173 = pcall(require, "src.game.cores")

					if var_369_172 and var_369_173 and var_369_173.remove then
						var_369_173.remove(var_369_171)
					end

					local var_369_174 = var_369_171.rarity or var_369_171.tier or nil
					local var_369_175 = 0

					if var_369_174 == "U" then
						var_369_175 = 1
					elseif var_369_174 == "R" then
						var_369_175 = 2
					elseif var_369_174 == "L" then
						var_369_175 = 3
					end

					if var_369_175 > 0 then
						jungsu = (jungsu or 0) + var_369_175
						ui.jungsuBalanceTarget = jungsu

						if var_0_18 and var_0_18.onEssenceChange then
							var_0_18.onEssenceChange(jungsu)
						end

						addJungsuPopup(var_369_175)
					end
				end

				ui._coreSelect.active = false
				ui._coreSelect = nil

				return
			end
		end

		if ui._coreSelect and ui._coreSelect.mode == "detail" then
			return
		end

		if var_0_11 and var_0_11.hitTestCoreSelectChoice then
			if slot and slot.spin and slot.spin.active or battlefield and battlefield.mode == "battle" then
				return
			end

			local var_369_176 = var_0_11.hitTestCoreSelectChoice(ui, loadedAssets, var_369_114, var_369_115)

			if var_369_176 then
				local var_369_177 = ui._coreSelect and ui._coreSelect.offers
				local var_369_178 = var_369_177 and var_369_177[var_369_176]

				if var_369_178 then
					local var_369_179, var_369_180 = pcall(require, "src.game.cores")

					if var_369_179 and var_369_180 then
						local var_369_181 = var_369_180.getActive
						local var_369_182 = var_369_181 and var_369_181() or {}

						if (type(var_369_182) == "table" and #var_369_182 or 0) >= (ui and ui.coreCountDisplay and ui.coreCountDisplay.max or 8) then
							if ui and ui._coreSelect then
								local var_369_183 = var_369_176 == 1 and "left" or var_369_176 == 2 and "mid" or "right"

								ui._coreSelect._denyShake = {
									freq = 14,
									dur = 0.35,
									amp = 3,
									which = var_369_183,
									t0 = love.timer.getTime()
								}
							end

							return
						end

						if var_369_180.select then
							local var_369_184 = var_0_55()

							var_369_180.select(var_369_178, var_369_184)

							coreSelectionsMade = (coreSelectionsMade or 0) + 1
							ui._coreSelectRerollCost = nil
						end
					end
				end

				ui._coreSelect.active = false
				ui._coreSelect = nil

				if ui then
					ui._coreSelectOffersCache = nil
				end

				if ui._coreMsg then
					ui._coreMsg.phase = "leave"
					ui._coreMsg.startT = love.timer.getTime()
				end

				var_0_59()

				if Tutorial and Tutorial.onCoreSelected then
					Tutorial.onCoreSelected(ui)
				end

				return
			end
		end

		return
	end

	if ui and ui._deferredCoreSelect and hitTestDeferredCoreSelectIcon(var_369_114, var_369_115) then
		if resumeDeferredCoreSelect() then
			playButtonClickSound()
		end

		return
	end

	if ui and ui._coreMsg and ui._coreMsg.phase and ui._coreMsg.phase ~= "idle" and var_0_11 and var_0_11.hitTestCoreScroll and var_0_11.hitTestCoreScroll(ui, loadedAssets, var_369_114, var_369_115) then
		if canOpenCoreSelectionCountdownModal() then
			var_0_86({
				fromCountdown = true
			})
		end

		return
	end

	local var_369_185 = phase == "spin" or phase == "prep" or phase == "battle"
	local var_369_186 = ui and ui._coreSelect and ui._coreSelect.active and true or false

	if var_0_173() and (not Tutorial or not Tutorial.isShopIntroStep or not Tutorial.isShopIntroStep()) and (not Tutorial or not Tutorial.isShopReturnStep or not Tutorial.isShopReturnStep()) then
		var_369_186 = true
	end

	if var_369_185 and not var_369_186 and var_0_11 and var_0_11.hitTestBattlefieldSectionIcons and lastLayout and lastLayout.right then
		local var_369_187 = var_0_11.hitTestBattlefieldSectionIcons(ui, lastLayout.right, loadedAssets, var_369_114, var_369_115)
		local var_369_188 = battlefield and battlefield.mode == "battle" or false

		if var_369_188 and (var_369_187 == "shop" or var_369_187 == "stone") then
			local var_369_189 = ui and ui.battlefieldSections or {}
			local var_369_190 = var_369_189.preBattleClickShakeCycles or 2
			local var_369_191 = var_369_189.preBattleClickShakeHz or 10

			ui._bfSecDenyShake = ui._bfSecDenyShake or {}
			ui._bfSecDenyShake[var_369_187] = {
				t0 = love.timer.getTime(),
				dur = math.max(0.05, var_369_190 / math.max(0.001, var_369_191)),
				amp = var_369_189.preBattleClickShakeAmp or 2,
				freq = var_369_191
			}

			return
		end

		if var_369_187 == "shop" and not var_369_188 then
			ui.shopNotification = false
			ui._shopMode = true
			ui._stoneMode = false

			if Tutorial and Tutorial.onShopIntroOpened then
				Tutorial.onShopIntroOpened()
			end

			if Tutorial and Tutorial.isRunning and Tutorial.isRunning() and (jungsu or 0) <= 2 then
				jungsu = 2
				displayJungsu = jungsu
				ui.jungsuBalance = displayJungsu
				ui.jungsuBalanceTarget = jungsu

				if var_0_18 and var_0_18.onEssenceChange then
					var_0_18.onEssenceChange(jungsu)
				end
			end

			if shopkeeper then
				shopkeeper.anim = {
					phase = "play",
					frame = 1,
					t = 0
				}
			end

			if ui and ui.tooltip then
				local var_369_192 = ui.tooltip

				var_369_192.locked = false
				var_369_192.state = "IDLE"
				var_369_192.target = nil
				var_369_192.candidate = nil
				var_369_192.fade = 0
				var_369_192.pinSide = nil
				var_369_192.hoverT = 0
				var_369_192.hideT = 0
				var_369_192.crossPrevLayout = nil
				var_369_192.crossPrevInfo = nil
				var_369_192.crossT = 0
				var_369_192._predActive = false
				var_369_192._predSrcSym = nil
				var_369_192._predTarget = nil
				var_369_192._predTargetSym = nil
				var_369_192._heldRef = nil
				var_369_192._heldSym = nil
			end

			local var_369_193 = battlefield and battlefield.wave and battlefield.wave.id or 0
			local var_369_194 = math.max(0, math.floor((var_369_193 - 1) / 2))
			local var_369_195 = ui._itemOfferCycleId == var_369_194 + 1
			local var_369_196, var_369_197 = pcall(require, "src.game.item")
			local var_369_198 = false

			if var_369_196 and var_369_197 and var_369_197.isMaxed and ui._itemOffers then
				for iter_369_2, iter_369_3 in pairs(ui._itemOffers) do
					if (not ui._itemShopPurchased or not ui._itemShopPurchased[iter_369_2]) and var_369_197.isMaxed(iter_369_3, ui._itemPurchased) then
						var_369_198 = true

						break
					end
				end
			end

			if ui._itemOfferCycleId ~= var_369_194 and not var_369_195 or not ui._itemOffers or next(ui._itemOffers) == nil or var_369_198 then
				if var_369_196 and var_369_197 and var_369_197.offer then
					local var_369_199 = var_369_197.offer(3, var_369_193, ui._itemPurchased) or {}

					ui._itemOffers = var_369_199
					ui._itemOfferCycleId = var_369_194
					ui._itemShopPurchased = {}
					ui._itemRerollCost = var_0_44()
				else
					ui._itemOffers = {}
					ui._itemOfferCycleId = var_369_194
					ui._itemShopPurchased = {}
					ui._itemRerollCost = var_0_44()
				end
			end

			if Tutorial and Tutorial.prepareShopOffers then
				Tutorial.prepareShopOffers(ui)
			end

			return
		elseif var_369_187 == "stone" and not var_369_188 then
			ui._shopMode = false
			ui._stoneMode = true

			return
		elseif var_369_187 == "battlefield" and ui and (ui._shopMode or ui._stoneMode) and not var_369_188 then
			ui._shopMode = false
			ui._stoneMode = false
			ui._deleteMode = false

			if Tutorial and Tutorial.onBattlefieldReturned then
				Tutorial.onBattlefieldReturned()
			end

			return
		end
	end

	if ui and ui._stoneMode and ui._stoneQuestCardHitAreas then
		for iter_369_4, iter_369_5 in pairs(ui._stoneQuestCardHitAreas) do
			if iter_369_5.canClaim and iter_369_5.stoneDef and var_369_114 >= iter_369_5.x and var_369_114 < iter_369_5.x + iter_369_5.w and var_369_115 >= iter_369_5.y and var_369_115 < iter_369_5.y + iter_369_5.h then
				local var_369_200 = iter_369_5.stoneDef

				ui._itemPurchased = ui._itemPurchased or {}

				local var_369_201 = var_369_200.name
				local var_369_202 = var_369_201:match("^(.-)%s*%(") or var_369_201
				local var_369_203 = {
					level = 1,
					rarity = "C",
					type = "ACTIVE",
					iconScale = 2,
					id = "stone_" .. var_369_200.key,
					name = var_369_202,
					icon = var_369_200.icon,
					desc = var_369_200.desc or ""
				}
				local var_369_204

				for iter_369_6, iter_369_7 in ipairs(ui._itemPurchased) do
					if iter_369_7.id == var_369_203.id then
						var_369_204 = iter_369_7

						break
					end
				end

				if not var_369_204 and #ui._itemPurchased >= getItemInventoryCapacity() then
					ui._itemPanelShake = {
						t = 0,
						active = true
					}

					return
				end

				ui._ownedStones = ui._ownedStones or {
					0,
					0,
					0
				}
				ui._ownedStones[iter_369_4] = (ui._ownedStones[iter_369_4] or 0) + 1

				if var_369_204 then
					var_369_204.level = (var_369_204.level or 1) + 1
				else
					table.insert(ui._itemPurchased, var_369_203)

					ui._itemPurchasedKeys = ui._itemPurchasedKeys or {}
					ui._itemPanelNextId = (ui._itemPanelNextId or 0) + 1

					local var_369_205 = "p" .. tostring(ui._itemPanelNextId)

					table.insert(ui._itemPurchasedKeys, var_369_205)

					ui._itemPanelDrop = ui._itemPanelDrop or {}

					local var_369_206 = ui and ui.itemInventory and ui.itemInventory.panel or {}
					local var_369_207 = var_369_206.dropStartOffsetPx ~= nil and var_369_206.dropStartOffsetPx or -(var_369_206.dropOffsetPx or 16)

					ui._itemPanelDrop[var_369_205] = {
						t = 0,
						dur = var_369_206.dropDur or 0.35,
						start = var_369_207
					}
				end

				local var_369_208 = require("src.game.stone")
				local var_369_209 = ui._stoneQuests and ui._stoneQuests[var_369_200.key]
				local var_369_210 = var_369_208.getQuestDef(var_369_200.key, var_369_209)

				if var_369_210 then
					var_369_210.current = 0
					var_369_210.completed = false
				end

				local var_369_211 = {}

				if battlefield then
					var_369_211.wave = battlefield.wave and battlefield.wave.id or 1
					var_369_211.essence = battlefield.essence or 0
				end

				var_369_211.activeQuests = {}

				if ui._stoneQuests then
					for iter_369_8, iter_369_9 in pairs(ui._stoneQuests) do
						if iter_369_8 ~= var_369_200.key then
							var_369_211.activeQuests[iter_369_8] = iter_369_9
						end
					end
				end

				ui._stoneQuests[var_369_200.key] = var_369_208.getRandomQuestNumber(var_369_200.key, var_369_211)

				return
			end
		end
	end

	if ui and ui._stoneMode and battlefield and battlefield.sandboxMode and ui._stoneQuestSandboxBtns then
		local var_369_212 = require("src.game.stone")
		local var_369_213 = var_369_212.getAll()

		for iter_369_10, iter_369_11 in pairs(ui._stoneQuestSandboxBtns) do
			local var_369_214 = var_369_213[iter_369_10]

			if var_369_214 then
				local var_369_215 = ui._stoneQuests and ui._stoneQuests[var_369_214.key]
				local var_369_216 = var_369_212.getQuestDef(var_369_214.key, var_369_215)

				if var_369_216 then
					if iter_369_11.plus then
						local var_369_217 = iter_369_11.plus

						if var_369_114 >= var_369_217.x and var_369_114 < var_369_217.x + var_369_217.w and var_369_115 >= var_369_217.y and var_369_115 < var_369_217.y + var_369_217.h then
							var_369_216.current = math.min(var_369_216.target, (var_369_216.current or 0) + 1)
							var_369_216.completed = var_369_216.current >= var_369_216.target

							return
						end
					end

					if iter_369_11.minus then
						local var_369_218 = iter_369_11.minus

						if var_369_114 >= var_369_218.x and var_369_114 < var_369_218.x + var_369_218.w and var_369_115 >= var_369_218.y and var_369_115 < var_369_218.y + var_369_218.h then
							var_369_216.current = math.max(0, (var_369_216.current or 0) - 1)
							var_369_216.completed = var_369_216.current >= var_369_216.target

							return
						end
					end
				end
			end
		end
	end

	if not (ui and ui._coreSelect and ui._coreSelect.active and true or false) and ui and ui._shopMode and var_0_11 and var_0_11.hitTestItemShopSlots then
		local var_369_219 = var_0_11.hitTestItemShopSlots(ui, loadedAssets, var_369_114, var_369_115)

		if var_369_219 and var_369_219.kind == "sell" then
			local var_369_220 = var_369_219.index or 0
			local var_369_221 = ui._itemOffers or {}
			local var_369_222 = var_369_221[var_369_220]

			if not var_369_222 then
				return
			end

			ui._itemShopPurchased = ui._itemShopPurchased or {}

			if ui._itemShopPurchased[var_369_220] then
				return
			end

			ui._itemPurchased = ui._itemPurchased or {}

			local var_369_223

			for iter_369_12, iter_369_13 in ipairs(ui._itemPurchased) do
				local var_369_224 = tostring(iter_369_13.id or "") == tostring(var_369_222.id or "")
				local var_369_225 = tonumber(iter_369_13.id) and tonumber(var_369_222.id) and tonumber(iter_369_13.id) == tonumber(var_369_222.id)
				local var_369_226 = iter_369_13.key and var_369_222.key and tostring(iter_369_13.key) == tostring(var_369_222.key)

				if var_369_224 or var_369_225 or var_369_226 then
					var_369_223 = iter_369_13

					break
				end
			end

			local var_369_227 = math.max(1, math.floor(tonumber(var_369_222.maxLevel) or 1))
			local var_369_228 = var_369_223 and math.max(1, math.floor(tonumber(var_369_223.level) or 1)) or 0

			if var_369_223 and var_369_227 <= var_369_228 then
				ui._itemShopDenyShake = ui._itemShopDenyShake or {}
				ui._itemShopDenyShake[var_369_220] = {
					freq = 13,
					t = 0,
					dur = 0.4,
					amp = 2
				}

				return
			end

			if not var_369_223 and #ui._itemPurchased >= getItemInventoryCapacity() then
				ui._itemShopDenyShake = ui._itemShopDenyShake or {}
				ui._itemShopDenyShake[var_369_220] = {
					freq = 13,
					t = 0,
					dur = 0.4,
					amp = 2
				}

				return
			end

			local var_369_229 = var_0_94(var_369_222, var_369_223)

			if var_369_222 and var_369_229 and var_369_229 <= jungsu then
				jungsu = math.max(0, jungsu - var_369_229)
				ui.jungsuBalanceTarget = jungsu

				if var_0_18 and var_0_18.onEssenceChange then
					var_0_18.onEssenceChange(jungsu)
				end

				if var_369_229 > 0 then
					addJungsuPopup(-var_369_229)
				end

				ui._itemPurchased = ui._itemPurchased or {}

				if var_369_223 then
					var_369_223.level = math.min(var_369_227, var_369_228 + 1)

					if var_369_223.updateEffectString then
						var_369_223:updateEffectString()
					end
				else
					local var_369_230 = {}

					for iter_369_14, iter_369_15 in pairs(var_369_222) do
						var_369_230[iter_369_14] = iter_369_15
					end

					var_369_230.level = 1

					if var_369_230.updateEffectString then
						var_369_230:updateEffectString()
					end

					table.insert(ui._itemPurchased, var_369_230)

					ui._itemPurchasedKeys = ui._itemPurchasedKeys or {}
					ui._itemPanelNextId = (ui._itemPanelNextId or 0) + 1

					local var_369_231 = "p" .. tostring(ui._itemPanelNextId)

					table.insert(ui._itemPurchasedKeys, var_369_231)

					ui._itemPanelDrop = ui._itemPanelDrop or {}

					local var_369_232 = ui and ui.itemInventory and ui.itemInventory.panel or {}
					local var_369_233 = var_369_232.dropStartOffsetPx ~= nil and var_369_232.dropStartOffsetPx or -(var_369_232.dropOffsetPx or 16)

					ui._itemPanelDrop[var_369_231] = {
						t = 0,
						dur = var_369_232.dropDur or 0.35,
						start = var_369_233
					}
				end

				if battlefield and __slotApplySturdyShieldMaxHp then
					__slotApplySturdyShieldMaxHp(battlefield)
				end

				ui._itemShopPurchased[var_369_220] = true
				ui._itemOffers = var_369_221

				if Tutorial and Tutorial.onShopItemPurchased then
					Tutorial.onShopItemPurchased(var_369_222, var_369_220, ui)
				end

				if var_0_18 and var_0_18.onShopUsed then
					var_0_18.onShopUsed()
				end
			end

			return
		elseif var_369_219 and var_369_219.kind == "delete" then
			ui._deleteMode = not ui._deleteMode

			if ui._deleteMode then
				ui._itemPanelShake = {
					t = 0,
					active = true
				}
			else
				ui._itemPanelShake = nil
			end

			return
		elseif var_369_219 and var_369_219.kind == "reroll" then
			if Tutorial and Tutorial.isRunning and Tutorial.isRunning() then
				return
			end

			local var_369_234 = ui and ui._itemRerollCost or var_0_44()
			local var_369_235 = ui and ui._freeRerollPending == true
			local var_369_236 = var_369_235 and 0 or var_369_234

			if var_369_236 <= jungsu then
				if var_369_236 > 0 then
					jungsu = math.max(0, jungsu - var_369_236)
					ui.jungsuBalanceTarget = jungsu

					if var_0_18 and var_0_18.onEssenceChange then
						var_0_18.onEssenceChange(jungsu)
					end

					addJungsuPopup(-var_369_236)
				end

				local var_369_237, var_369_238 = pcall(require, "src.game.item")

				if var_369_237 and var_369_238 and var_369_238.offer then
					local var_369_239 = battlefield and battlefield.wave and battlefield.wave.id or 0
					local var_369_240 = battlefield and battlefield.sandboxMode and ui._sandboxForcedNextItemId or nil
					local var_369_241 = var_369_238.offer(3, var_369_239, ui._itemPurchased, var_369_240) or {}

					ui._itemOffers = var_369_241

					if var_369_235 then
						ui._freeRerollPending = false
					end

					if var_369_240 then
						ui._sandboxForcedNextItemId = nil
					end

					ui._itemShopPurchased = {}

					if not var_369_235 then
						ui._itemRerollCost = var_369_234 + 1
					end

					if var_0_18 and var_0_18.onShopUsed then
						var_0_18.onShopUsed()
					end
				end
			end

			return
		end
	end

	if slot and slot.spin and slot.spin.active or battlefield and battlefield.mode == "battle" then
		-- block empty
	elseif ui and ui._coreSelect and ui._coreSelect.active then
		-- block empty
	elseif ui and ui._equippedCoreRects and #ui._equippedCoreRects > 0 then
		local var_369_242 = var_369_114
		local var_369_243 = var_369_115

		for iter_369_16, iter_369_17 in ipairs(ui._equippedCoreRects) do
			local var_369_244 = iter_369_17.cx
			local var_369_245 = iter_369_17.cy
			local var_369_246 = iter_369_17.sx
			local var_369_247 = iter_369_17.sy
			local var_369_248 = iter_369_17.iw
			local var_369_249 = iter_369_17.ih
			local var_369_250 = iter_369_17.idata

			if var_369_250 and var_369_248 and var_369_249 and var_369_246 and var_369_247 then
				local var_369_251 = (var_369_242 - var_369_244) / var_369_246
				local var_369_252 = (var_369_243 - var_369_245) / var_369_247
				local var_369_253 = math.floor(var_369_251 + var_369_248 * 0.5 + 0)
				local var_369_254 = math.floor(var_369_252 + var_369_249 * 0.5 + 0)

				if var_369_253 >= 0 and var_369_254 >= 0 and var_369_253 < var_369_248 and var_369_254 < var_369_249 then
					local var_369_255, var_369_256, var_369_257, var_369_258 = var_369_250:getPixel(var_369_253, var_369_254)

					if (var_369_258 or 0) > 0.05 then
						local var_369_259 = iter_369_17.def

						ui._coreSelect = {
							mode = "detail",
							active = true,
							startT = love.timer.getTime(),
							offers = {
								[2] = var_369_259
							}
						}

						return
					end
				end
			end
		end
	end

	if battlefield and battlefield.handleClick and (not ui or not ui._stoneActivated or not ui._stoneActivated.active) and lastLayout and lastLayout.right and battlefield:handleClick(var_369_114, var_369_115, lastLayout.right) then
		return
	end

	if battlefield and battlefield.sandboxMode and battlefield.mode ~= "battle" then
		local var_369_260 = var_0_143()

		if var_369_260 then
			local function var_369_261(arg_372_0)
				return var_369_114 >= arg_372_0.x and var_369_114 <= arg_372_0.x + arg_372_0.w and var_369_115 >= arg_372_0.y and var_369_115 <= arg_372_0.y + arg_372_0.h
			end

			if var_369_261(var_369_260.minus) then
				local var_369_262 = tonumber(slot.sandboxNextWinLines or 0) or 0
				local var_369_263 = math.max(0, math.min(5, math.floor(var_369_262)))
				local var_369_264 = math.max(0, var_369_263 - 1)

				slot.sandboxNextWinLines = var_369_264

				return
			elseif var_369_261(var_369_260.plus) then
				local var_369_265 = tonumber(slot.sandboxNextWinLines or 0) or 0
				local var_369_266 = math.max(0, math.min(5, math.floor(var_369_265)))
				local var_369_267 = math.min(5, var_369_266 + 1)

				slot.sandboxNextWinLines = var_369_267

				return
			end

			local var_369_268 = slot and slot._sandboxSymbolPicker

			if var_369_268 then
				if var_369_114 >= var_369_268.x and var_369_114 <= var_369_268.x + var_369_268.w and var_369_115 >= var_369_268.y and var_369_115 <= var_369_268.y + var_369_268.h then
					local var_369_269 = var_369_114 - var_369_268.x
					local var_369_270 = var_369_268.btnW + var_369_268.gap
					local var_369_271 = math.floor(var_369_269 / var_369_270) + 1

					if var_369_271 >= 1 and var_369_271 <= #var_369_268.symbols and var_369_114 <= var_369_268.x + (var_369_271 - 1) * var_369_270 + var_369_268.btnW then
						slot.sandboxNextWinSymbol = var_369_268.symbols[var_369_271]

						return
					end
				end

				if var_369_114 >= var_369_268.randX and var_369_114 <= var_369_268.randX + var_369_268.randW and var_369_115 >= var_369_268.y and var_369_115 <= var_369_268.y + var_369_268.h then
					slot.sandboxNextWinSymbol = nil

					return
				end
			end

			local var_369_272 = slot and slot._sandboxRarityPicker

			if var_369_272 then
				if var_369_114 >= var_369_272.x and var_369_114 <= var_369_272.x + var_369_272.w and var_369_115 >= var_369_272.y and var_369_115 <= var_369_272.y + var_369_272.h then
					local var_369_273 = var_369_114 - var_369_272.x
					local var_369_274 = var_369_272.btnW + var_369_272.gap
					local var_369_275 = math.floor(var_369_273 / var_369_274) + 1

					if var_369_275 >= 1 and var_369_275 <= #var_369_272.items and var_369_114 <= var_369_272.x + (var_369_275 - 1) * var_369_274 + var_369_272.btnW then
						slot.sandboxNextWinGrade = var_369_272.items[var_369_275].key

						return
					end
				end

				if var_369_114 >= var_369_272.randX and var_369_114 <= var_369_272.randX + var_369_272.randW and var_369_115 >= var_369_272.y and var_369_115 <= var_369_272.y + var_369_272.h then
					slot.sandboxNextWinGrade = nil

					return
				end
			end

			local var_369_276 = slot and slot._sandboxGradeProbControl

			if var_369_276 and battlefield then
				local function var_369_277(arg_373_0)
					return arg_373_0 and var_369_114 >= arg_373_0.x and var_369_114 <= arg_373_0.x + arg_373_0.w and var_369_115 >= arg_373_0.y and var_369_115 <= arg_373_0.y + arg_373_0.h
				end

				if var_369_277(var_369_276.prev) then
					if battlefield.cycleSandboxGradeWeightKey then
						battlefield:cycleSandboxGradeWeightKey(-1)
					end

					return
				elseif var_369_277(var_369_276.next) then
					if battlefield.cycleSandboxGradeWeightKey then
						battlefield:cycleSandboxGradeWeightKey(1)
					end

					return
				elseif var_369_277(var_369_276.minus) then
					if battlefield.adjustSandboxGradeWeight then
						battlefield:adjustSandboxGradeWeight(battlefield.sandboxGradeWeightKey, -0.05)
					end

					return
				elseif var_369_277(var_369_276.plus) then
					if battlefield.adjustSandboxGradeWeight then
						battlefield:adjustSandboxGradeWeight(battlefield.sandboxGradeWeightKey, 0.05)
					end

					return
				elseif var_369_277(var_369_276.reset) then
					if battlefield.resetSandboxGradeWeights then
						battlefield:resetSandboxGradeWeights()
					end

					return
				end
			end
		end

		local var_369_278 = var_0_146()

		if var_369_278 then
			local function var_369_279(arg_374_0)
				return var_369_114 >= arg_374_0.x and var_369_114 <= arg_374_0.x + arg_374_0.w and var_369_115 >= arg_374_0.y and var_369_115 <= arg_374_0.y + arg_374_0.h
			end

			battlefield._coreIds = battlefield._coreIds or (function()
				local var_375_0, var_375_1 = pcall(require, "src.game.cores")
				local var_375_2 = var_375_0 and var_375_1 and var_375_1.getIds and var_375_1.getIds() or {}

				return #var_375_2 > 0 and var_375_2 or {
					"01"
				}
			end)()
			battlefield._coreIdx = math.max(1, math.floor(battlefield._coreIdx or 1))

			if battlefield._coreIdx > #battlefield._coreIds then
				battlefield._coreIdx = #battlefield._coreIds
			end

			if var_369_279(var_369_278.minus) then
				battlefield._coreIdx = battlefield._coreIdx - 1

				if battlefield._coreIdx < 1 then
					battlefield._coreIdx = #battlefield._coreIds
				end

				return
			elseif var_369_279(var_369_278.plus) then
				battlefield._coreIdx = battlefield._coreIdx + 1

				if battlefield._coreIdx > #battlefield._coreIds then
					battlefield._coreIdx = 1
				end

				return
			elseif var_369_279(var_369_278.equip) then
				local var_369_280 = battlefield._coreIds[battlefield._coreIdx]

				if var_369_280 then
					local var_369_281, var_369_282 = pcall(require, "src.game.cores")

					if var_369_281 and var_369_282 and var_369_282.getById and var_369_282.select then
						local var_369_283 = var_369_282.getById(var_369_280)

						if var_369_283 then
							local var_369_284 = var_0_55()

							var_369_282.select(var_369_283, var_369_284)
						end
					end
				end

				return
			elseif var_369_278.alert and var_369_279(var_369_278.alert) then
				if SuddenDeathAlertBanner and SuddenDeathAlertBanner.sandboxTrigger then
					SuddenDeathAlertBanner.sandboxTrigger(ui, battlefield)
				end

				return
			end
		end

		local var_369_285 = var_0_149()

		if var_369_285 and battlefield then
			local function var_369_286(arg_376_0)
				return arg_376_0 and var_369_114 >= arg_376_0.x and var_369_114 <= arg_376_0.x + arg_376_0.w and var_369_115 >= arg_376_0.y and var_369_115 <= arg_376_0.y + arg_376_0.h
			end

			local var_369_287, var_369_288 = pcall(require, "src.game.item")
			local var_369_289 = var_369_287 and var_369_288 and var_369_288.getAll and var_369_288.getAll() or {}

			if #var_369_289 > 0 then
				battlefield._sandboxItemIndex = math.max(1, math.min(#var_369_289, math.floor(battlefield._sandboxItemIndex or 1)))

				if var_369_286(var_369_285.minus) then
					battlefield._sandboxItemIndex = battlefield._sandboxItemIndex - 1

					if battlefield._sandboxItemIndex < 1 then
						battlefield._sandboxItemIndex = #var_369_289
					end

					ui._sandboxForcedNextItemId = var_369_289[battlefield._sandboxItemIndex].id

					return
				elseif var_369_286(var_369_285.plus) then
					battlefield._sandboxItemIndex = battlefield._sandboxItemIndex + 1

					if battlefield._sandboxItemIndex > #var_369_289 then
						battlefield._sandboxItemIndex = 1
					end

					ui._sandboxForcedNextItemId = var_369_289[battlefield._sandboxItemIndex].id

					return
				elseif var_369_286(var_369_285.clear) then
					ui._sandboxForcedNextItemId = nil

					return
				end
			end
		end

		local var_369_290 = var_0_144()

		if var_369_290 then
			if var_369_114 >= var_369_290.minus.x and var_369_114 <= var_369_290.minus.x + var_369_290.minus.w and var_369_115 >= var_369_290.minus.y and var_369_115 <= var_369_290.minus.y + var_369_290.minus.h then
				ui._sandboxJungsuAmt = math.max(0, (ui._sandboxJungsuAmt or 1) - (love.keyboard.isDown("lshift", "rshift") and 10 or 1))

				return
			end

			if var_369_114 >= var_369_290.plus.x and var_369_114 <= var_369_290.plus.x + var_369_290.plus.w and var_369_115 >= var_369_290.plus.y and var_369_115 <= var_369_290.plus.y + var_369_290.plus.h then
				ui._sandboxJungsuAmt = math.min(9999, (ui._sandboxJungsuAmt or 1) + (love.keyboard.isDown("lshift", "rshift") and 10 or 1))

				return
			end

			if var_369_114 >= var_369_290.add.x and var_369_114 <= var_369_290.add.x + var_369_290.add.w and var_369_115 >= var_369_290.add.y and var_369_115 <= var_369_290.add.y + var_369_290.add.h then
				local var_369_291 = math.max(0, math.floor((ui._sandboxJungsuAmt or 0) + 0))

				if var_369_291 > 0 then
					jungsu = (jungsu or 0) + var_369_291
					ui.jungsuBalanceTarget = jungsu

					addJungsuPopup(var_369_291)
				end

				return
			end
		end

		local var_369_292 = var_0_145()

		if var_369_292 then
			local var_369_293 = love.keyboard.isDown("lshift", "rshift") and 100 or 10

			if var_369_114 >= var_369_292.minus.x and var_369_114 <= var_369_292.minus.x + var_369_292.minus.w and var_369_115 >= var_369_292.minus.y and var_369_115 <= var_369_292.minus.y + var_369_292.minus.h then
				ui._sandboxGoldAmt = math.max(0, (ui._sandboxGoldAmt or 100) - var_369_293)

				return
			end

			if var_369_114 >= var_369_292.plus.x and var_369_114 <= var_369_292.plus.x + var_369_292.plus.w and var_369_115 >= var_369_292.plus.y and var_369_115 <= var_369_292.plus.y + var_369_292.plus.h then
				ui._sandboxGoldAmt = math.min(999999, (ui._sandboxGoldAmt or 100) + var_369_293)

				return
			end

			if var_369_114 >= var_369_292.add.x and var_369_114 <= var_369_292.add.x + var_369_292.add.w and var_369_115 >= var_369_292.add.y and var_369_115 <= var_369_292.add.y + var_369_292.add.h then
				local var_369_294 = math.max(0, math.floor((ui._sandboxGoldAmt or 0) + 0))

				if var_369_294 > 0 then
					coins = math.max(0, (coins or 0) + var_369_294)

					addCoinPopup(var_369_294)
				end

				return
			end
		end
	end

	if lastLayout and lastLayout.nudgeBtns then
		for iter_369_18, iter_369_19 in ipairs(lastLayout.nudgeBtns) do
			if var_0_121(var_369_114, var_369_115, iter_369_18) then
				if var_0_113() ~= true then
					return
				end

				if nudgeBtnAnims and nudgeBtnAnims[iter_369_18] then
					local var_369_295 = ui and ui.nudgeButtons or {}
					local var_369_296 = tonumber(var_369_295.pressAnimDurSec or 0) or 0

					if var_369_296 > 0 then
						nudgeBtnAnims[iter_369_18].dur = var_369_296
					end

					nudgeBtnAnims[iter_369_18].active = true
					nudgeBtnAnims[iter_369_18].t = 0

					if loadedAssets and loadedAssets.audio and loadedAssets.audio.ui and loadedAssets.audio.ui.click then
						loadedAssets.audio.ui.click:stop()
						loadedAssets.audio.ui.click:play()
					end

					if battlefield and battlefield.mode == "battle" then
						return
					end

					if slot and slot.result and slot.result.winSeq and slot.result.winSeq.active then
						return
					end

					if slot and slot.nudgeColumn then
						local var_369_297 = false

						if Tutorial and Tutorial.isNudgeActionStep and Tutorial.isNudgeActionStep() and Tutorial.onNudgePressed and iter_369_18 == 2 then
							var_369_297 = Tutorial.onNudgePressed(iter_369_18) == true
						end

						if slot:nudgeColumn(iter_369_18) and ui then
							local var_369_298 = var_0_111()

							if (ui._nudgeUsedWaveId or -1) == var_369_298 then
								local var_369_299 = 0

								if (ui._nudgeBonusWaveId or -1) == var_369_298 then
									var_369_299 = math.max(0, math.floor(tonumber(ui._nudgeBonusCount or 0) or 0))
								end

								ui._nudgeBonusWaveId = var_369_298
								ui._nudgeBonusCount = math.max(0, var_369_299 - 1)
							else
								ui._nudgeUsedWaveId = var_369_298
							end

							ui._nudgeUsedSpinWaveId = var_369_298
							ui._nudgeUsedSpinIndex = spinsInWave or 0

							if not var_369_297 and Tutorial and Tutorial.onNudgePressed then
								Tutorial.onNudgePressed(iter_369_18)
							end
						end
					end

					return
				end
			end
		end
	end

	if battlefield and battlefield.mode ~= "battle" and var_0_120(var_369_114, var_369_115) then
		spinBtnPressed = true

		local var_369_300 = loadedAssets and loadedAssets.audio and loadedAssets.audio.leverSound

		if var_369_300 then
			if var_369_300:isPlaying() then
				var_369_300:stop()
			end

			var_369_300:play()
		end

		if not battlefield.gameOver and (not ui or not ui._preSpinSeq or not ui._preSpinSeq.active) then
			local var_369_301 = var_0_96("mouse")
		end

		if loadedAssets and loadedAssets.ui and loadedAssets.ui.spinstick then
			spinStickAnim.playing = true
			spinStickAnim.t = 0
			spinStickAnim.frame = 1
			spinPressShake.active = true
			spinPressShake.t = 0
			spinPressShake.y = 0
		end

		return
	end

	local var_369_302 = Tutorial and Tutorial.isPositionStep and Tutorial.isPositionStep()
	local var_369_303 = Tutorial and Tutorial.isBattleReadyStep and Tutorial.isBattleReadyStep()
	local var_369_304 = Tutorial and Tutorial.isAbsorbButtonStep and Tutorial.isAbsorbButtonStep()
	local var_369_305 = Tutorial and Tutorial.isAbsorbDragStep and Tutorial.isAbsorbDragStep()
	local var_369_306 = Tutorial and Tutorial.isFreeAbsorbStep and Tutorial.isFreeAbsorbStep()
	local var_369_307 = Tutorial and Tutorial.isAbsorbModalStep and Tutorial.isAbsorbModalStep()
	local var_369_308 = Tutorial and Tutorial.isFinalReadyStep and Tutorial.isFinalReadyStep()

	if var_0_173() and not var_369_302 and not var_369_303 and not var_369_304 and not var_369_305 and not var_369_306 and not var_369_307 then
		return
	end

	if var_369_308 and (var_0_82(var_369_114, var_369_115) or var_0_83(var_369_114, var_369_115)) then
		return
	end

	if var_369_306 and (var_0_82(var_369_114, var_369_115) or var_0_83(var_369_114, var_369_115)) then
		return
	end

	if (var_369_304 or not var_0_173()) and battlefield and battlefield.mode ~= "battle" then
		if scrollIntroAnim and scrollIntroAnim.countdownModalPending then
			return
		end

		if ui and ui._stoneActivated and ui._stoneActivated.active then
			return
		end

		if battlefield.classSelect then
			return
		end

		if battlefield.imprintModal and battlefield.imprintModal.active then
			return
		end

		if ui and ui._coreSelect and ui._coreSelect.active then
			return
		end

		if ui and (ui._shopMode or ui._stoneMode) then
			return
		end

		battlefield._absorbToggleCooldown = battlefield._absorbToggleCooldown or 0

		if (battlefield._absorbToggleCooldown or 0) > 0 then
			return
		end

		if var_0_82(var_369_114, var_369_115) or var_0_83(var_369_114, var_369_115) then
			local var_369_309 = battlefield.absorbMode ~= true

			battlefield.absorbMode = var_369_309

			if var_369_309 and Tutorial and Tutorial.onAbsorbButtonPressed then
				Tutorial.onAbsorbButtonPressed()
			end

			if var_369_309 then
				var_0_79("on")
			else
				var_0_79("off")

				if ui and ui.tooltip then
					local var_369_310 = ui.tooltip

					var_369_310._predActive = false
					var_369_310._predSrcSym = nil
					var_369_310._predTarget = nil
					var_369_310._predTargetSym = nil
				end

				local var_369_311 = require("src.ui.imprint")

				if var_369_311 and var_369_311.hideBattlefieldPreview then
					var_369_311.hideBattlefieldPreview()
				end
			end

			battlefield._absorbToggleCooldown = 0.5

			return
		end
	end

	local var_369_312 = Tutorial and Tutorial.isBattleReadyStep and Tutorial.isBattleReadyStep()
	local var_369_313 = Tutorial and Tutorial.isFinalReadyStep and Tutorial.isFinalReadyStep()
	local var_369_314 = Tutorial and Tutorial.isPositionStep and Tutorial.isPositionStep()
	local var_369_315 = Tutorial and Tutorial.isAbsorbDragStep and Tutorial.isAbsorbDragStep()
	local var_369_316 = Tutorial and Tutorial.isFreeAbsorbStep and Tutorial.isFreeAbsorbStep()

	if var_0_173() and not var_369_312 and not var_369_314 and not var_369_315 and not var_369_316 then
		return
	end

	local var_369_317 = battlefield and battlefield.imprintModal and battlefield.imprintModal.active

	if battlefield and battlefield.mode ~= "battle" and loadedAssets and not battlefield.classSelect and not var_369_317 then
		if ui and ui._stoneActivated and ui._stoneActivated.active then
			return
		end

		local var_369_318 = var_0_142()
		local var_369_319 = var_369_312 and Tutorial and Tutorial.hitTestBattleReady and Tutorial.hitTestBattleReady(ui, var_369_318, var_369_114, var_369_115)
		local var_369_320 = var_369_318 and var_369_318.right and var_0_11.hitTestReadyIcon and var_0_11.hitTestReadyIcon(ui, var_369_318.right, battlefield, loadedAssets, var_369_114, var_369_115)

		if var_369_319 or var_369_320 then
			local var_369_321 = ui and ui.battle and ui.battle.readyIcon and ui.battle.readyIcon.cooldown or 0.6

			battlefield._readyClickCooldown = battlefield._readyClickCooldown or 0

			if battlefield.waveTimer and battlefield.waveTimer.state == "fading" or (battlefield._readyClickCooldown or 0) > 0 then
				return
			end

			if battlefield.waveTimer then
				battlefield.waveTimer.state = "fading"
				battlefield.waveTimer.fadeT = 0
				battlefield.waveTimer.manualStart = true

				local var_369_322 = battlefield.waveTimer.fadeDur or 0.6
				local var_369_323 = ui and ui.battlefieldSections and ui.battlefieldSections.postStartLockBufferSec or 0.05

				ui._shopModeLockUntil = love.timer.getTime() + var_369_322 + var_369_323
				battlefield._readyClickCooldown = var_369_321
			end

			if var_369_312 and Tutorial and Tutorial.onBattleStarted then
				Tutorial.onBattleStarted(ui)
			end

			return
		end
	end

	if var_369_312 and not var_369_313 then
		return
	end

	local var_369_324 = scrollIntroAnim and scrollIntroAnim.countdownModalPending == true

	if battlefield and battlefield.mode ~= "battle" and not slot.spin.active and not pendingBattle.active and not var_369_324 and not battlefield.gameOver and (not ui or not ui._stoneActivated or not ui._stoneActivated.active) then
		prepIdleT = 0

		if battlefield.classSelect and not battlefield.classSelect.resolving then
			return
		end

		if tooltip and tooltip.candidate and tooltip.candidate.kind == "roster" and tooltip.candidate.ref then
			if Tutorial and Tutorial.isPositionStep and Tutorial.isPositionStep() and Tutorial.isTutorialRosterUnit and not Tutorial.isTutorialRosterUnit(tooltip.candidate.ref) then
				return
			end

			if Tutorial and Tutorial.isAbsorbDragStep and Tutorial.isAbsorbDragStep() and Tutorial.isAllowedAbsorbVictim and not Tutorial.isAllowedAbsorbVictim(tooltip.candidate.ref) then
				return
			end

			drag.active = true
			drag.ref = tooltip.candidate.ref

			if Tutorial and Tutorial.isPositionStep and Tutorial.isPositionStep() and Tutorial.onRosterDragStarted then
				Tutorial.onRosterDragStarted(drag.ref)
			end

			drag.ox = var_369_114 - (drag.ref.x or var_369_114)
			drag.oy = var_369_115 - (drag.ref.y or var_369_115)

			if battlefield.beginRosterLift then
				battlefield:beginRosterLift(drag.ref)
			end

			if battlefield.setRosterHeld then
				battlefield:setRosterHeld(drag.ref, true)
			end
		end
	end
end

function love.mousemoved(arg_377_0, arg_377_1, arg_377_2, arg_377_3)
	if phase == "upgrade" then
		local var_377_0, var_377_1 = toVirtual(arg_377_0, arg_377_1)
		local var_377_2, var_377_3 = toVirtual(arg_377_0 - arg_377_2, arg_377_1 - arg_377_3)
		local var_377_4 = var_377_0 - var_377_2
		local var_377_5 = var_377_1 - var_377_3

		if var_0_17.mousemoved then
			var_0_17.mousemoved(var_377_0, var_377_1, var_377_4, var_377_5)
		end

		return
	end

	local var_377_6, var_377_7 = toVirtual(arg_377_0, arg_377_1)

	if __slotHandleCreditsTextEditorMouseMoved and __slotHandleCreditsTextEditorMouseMoved(ui, var_377_6, var_377_7) then
		return
	end

	local var_377_8, var_377_9 = toVirtual(arg_377_0, arg_377_1)

	if _G.Render2 and _G.Render2.handleDpsSandboxTuningMouseMoved and lastLayout and lastLayout.right and _G.Render2.handleDpsSandboxTuningMouseMoved(ui, lastLayout.right, loadedAssets, battlefield, var_377_8, var_377_9) then
		return
	end

	if (phase == "spin" or phase == "prep" or phase == "battle") and not var_0_173() and var_0_11 and var_0_11.hitTestBattlefieldSectionIcons and lastLayout and lastLayout.right then
		local var_377_10, var_377_11 = toVirtual(arg_377_0, arg_377_1)
		local var_377_12 = var_0_11.hitTestBattlefieldSectionIcons(ui, lastLayout.right, loadedAssets, var_377_10, var_377_11)

		ui._lastHoveredSection = ui._lastHoveredSection or nil

		if var_377_12 and var_377_12 ~= ui._lastHoveredSection then
			local var_377_13 = false

			if var_377_12 == "battlefield" then
				var_377_13 = ui and (ui._shopMode or ui._stoneMode)
			elseif var_377_12 == "shop" then
				var_377_13 = not ui or not ui._shopMode
			elseif var_377_12 == "stone" then
				var_377_13 = not ui or not ui._stoneMode
			end

			if var_377_13 and (not ui or not ui._coreSelect or not ui._coreSelect.active) and (not battlefield or not battlefield.gameOver) and loadedAssets and loadedAssets.audio and loadedAssets.audio.paperHover then
				local var_377_14 = loadedAssets.audio.paperHover

				if var_377_14:isPlaying() then
					var_377_14:stop()
				end

				var_377_14:play()
			end
		end

		ui._lastHoveredSection = var_377_12
	end

	if spinHitRectDrag and spinHitRectDrag.active then
		if not lastLayout or not lastLayout.slotPanel then
			return
		end

		local var_377_15, var_377_16 = toVirtual(arg_377_0, arg_377_1)
		local var_377_17 = lastLayout.slotPanel
		local var_377_18 = ui and ui.spinstick or {}
		local var_377_19 = var_377_17.x + var_377_17.w + (var_377_18.offsetX or 4)
		local var_377_20 = var_377_17.y + (var_377_18.offsetY or 0)
		local var_377_21 = math.floor(var_377_19 + (spinShake.x or 0) + 0.5)
		local var_377_22 = math.floor(var_377_20 + (slotBgAnim and slotBgAnim.y or 0) + (spinShake.y or 0) + (ui and ui.slot and ui.slot.stickyOffsetY or 0) + var_0_108() + 0.5)
		local var_377_23 = tonumber(var_377_18.hitExpandPx or 0) or 0
		local var_377_24 = tonumber(var_377_18.hitExpandX or var_377_23) or 0
		local var_377_25 = tonumber(var_377_18.hitExpandY or var_377_23) or 0
		local var_377_26 = var_377_15 - (spinHitRectDrag.ox or 0)
		local var_377_27 = var_377_16 - (spinHitRectDrag.oy or 0)
		local var_377_28 = var_377_26 + var_377_24 - var_377_21
		local var_377_29 = var_377_27 + var_377_25 - var_377_22

		ui.spinstick = ui.spinstick or {}
		ui.spinstick.hitOffsetX = math.floor(var_377_28 + 0.5)
		ui.spinstick.hitOffsetY = math.floor(var_377_29 + 0.5)

		return
	end

	if ui and ui._stoneActivated and ui._stoneActivated.active then
		if drag.active and drag.ref and battlefield and battlefield.setRosterHeld then
			battlefield:setRosterHeld(drag.ref, false)
		end

		drag.active = false
		drag.ref = nil

		return
	end

	if not drag.active or not drag.ref then
		return
	end

	if uiLocked then
		return
	end

	if not lastLayout or not lastLayout.right then
		return
	end

	local var_377_30, var_377_31 = toVirtual(arg_377_0, arg_377_1)
	local var_377_32 = var_377_30 - drag.ox
	local var_377_33 = var_377_31 - drag.oy
	local var_377_34 = 0
	local var_377_35 = 0
	local var_377_36 = 0
	local var_377_37 = 0

	if battlefield and battlefield.getRosterClamp then
		var_377_34, var_377_35, var_377_36, var_377_37 = battlefield:getRosterClamp(lastLayout.right)
	end

	if var_377_32 < var_377_34 then
		var_377_32 = var_377_34
	elseif var_377_35 < var_377_32 then
		var_377_32 = var_377_35
	end

	if var_377_33 < var_377_36 then
		var_377_33 = var_377_36
	elseif var_377_37 < var_377_33 then
		var_377_33 = var_377_37
	end

	drag.ref.x = var_377_32
	drag.ref.y = var_377_33

	if drag.ref.promoteVis then
		drag.ref.promoteVis.prevX = var_377_32
		drag.ref.promoteVis.prevY = var_377_33
	end

	if battlefield and battlefield.setRosterHeld then
		battlefield:setRosterHeld(drag.ref, true)
	end
end

function love.mousereleased(arg_378_0, arg_378_1, arg_378_2)
	if __slotHandleCreditsTextEditorMouseReleased and __slotHandleCreditsTextEditorMouseReleased(ui) then
		return
	end

	if _G.Render2 and _G.Render2.handleDpsSandboxTuningMouseReleased and _G.Render2.handleDpsSandboxTuningMouseReleased(ui) then
		return
	end

	if Tutorial and (Tutorial.isActive and Tutorial.isActive() or Tutorial.isPending and Tutorial.isPending()) then
		return
	end

	local var_378_0 = Tutorial and Tutorial.isPositionStep and Tutorial.isPositionStep()
	local var_378_1 = Tutorial and Tutorial.isAbsorbDragStep and Tutorial.isAbsorbDragStep()
	local var_378_2 = Tutorial and Tutorial.isFreeAbsorbStep and Tutorial.isFreeAbsorbStep()
	local var_378_3 = Tutorial and Tutorial.isFinalReadyStep and Tutorial.isFinalReadyStep()

	if var_0_173() and not var_378_0 and not var_378_1 and not var_378_2 and not var_378_3 then
		return
	end

	if ui and ui.pauseOverlayState and ui.pauseOverlayState.active then
		return
	end

	if upgradeTransition.active then
		return
	end

	if menuPlayTransition.active then
		return
	end

	if phase == "upgrade" then
		local var_378_4, var_378_5 = toVirtual(arg_378_0, arg_378_1)

		if var_0_17.mousereleased then
			var_0_17.mousereleased(var_378_4, var_378_5, arg_378_2)
		end

		return
	end

	if phase == "menu" then
		if (ui and ui.menuSettingsOverlayState and ui.menuSettingsOverlayState.open) == true then
			return
		end

		local var_378_6, var_378_7 = toVirtual(arg_378_0, arg_378_1)
		local var_378_8 = var_0_16.mousereleased(var_378_6, var_378_7, arg_378_2)

		if var_378_8 == "play" or type(var_378_8) == "table" and var_378_8.type == "play" then
			local var_378_9 = 1
			local var_378_10 = 1

			if type(var_378_8) == "table" then
				var_378_9 = tonumber(var_378_8.stage or 1) or 1
				var_378_10 = tonumber(var_378_8.difficulty or 1) or 1
			end

			startMenuPlayTransition(var_378_9, var_378_10)
		elseif var_378_8 == "upgrade" then
			upgradeTransition.active = true
			upgradeTransition.t = 0
			upgradeTransition.state = "in"
			upgradeTransition.cx = var_378_6
			upgradeTransition.cy = var_378_7

			var_0_17.resetCamera()
		elseif var_378_8 == "collection" then
			print("Collection clicked")
		elseif var_378_8 == "achievement" then
			print("Achievement clicked")
		elseif var_378_8 == "settings" then
			openMenuSettingsOverlay()
		elseif var_378_8 == "exit" then
			love.event.quit()
		end

		return
	end

	if arg_378_2 ~= 1 then
		return
	end

	if uiLocked then
		return
	end

	spinBtnPressed = false

	if spinHitRectDrag and spinHitRectDrag.active then
		spinHitRectDrag.active = false
	end

	if scrollIntroAnim and scrollIntroAnim.countdownModalPending and drag.active then
		if battlefield and battlefield.setRosterHeld and drag.ref then
			battlefield:setRosterHeld(drag.ref, false)
		end

		drag.active = false
		drag.ref = nil

		return
	end

	if drag.active then
		local var_378_11 = drag.ref

		if lastLayout and lastLayout.right and drag.ref then
			local var_378_12, var_378_13 = toVirtual(arg_378_0, arg_378_1)
			local var_378_14 = var_378_12 - drag.ox
			local var_378_15 = var_378_13 - drag.oy
			local var_378_16 = 0
			local var_378_17 = 0
			local var_378_18 = 0
			local var_378_19 = 0

			if battlefield and battlefield.getRosterClamp then
				var_378_16, var_378_17, var_378_18, var_378_19 = battlefield:getRosterClamp(lastLayout.right)
			end

			if var_378_14 < var_378_16 then
				var_378_14 = var_378_16
			elseif var_378_17 < var_378_14 then
				var_378_14 = var_378_17
			end

			if var_378_15 < var_378_18 then
				var_378_15 = var_378_18
			elseif var_378_19 < var_378_15 then
				var_378_15 = var_378_19
			end

			drag.ref.x = var_378_14
			drag.ref.y = var_378_15

			if drag.ref.promoteVis then
				drag.ref.promoteVis.prevX = var_378_14
				drag.ref.promoteVis.prevY = var_378_15
			end
		end

		drag.active = false

		if battlefield and battlefield.dropRoster then
			battlefield:dropRoster(drag.ref)
		end

		if battlefield and battlefield.setRosterHeld then
			battlefield:setRosterHeld(drag.ref, false)
		end

		drag.ref = nil

		if var_378_0 and Tutorial and Tutorial.onRosterDropped then
			Tutorial.onRosterDropped(var_378_11)
		end
	end
end

function love.quit()
	stopSlotMachineSounds()

	if not var_0_35() and love.audio and love.audio.stop then
		love.audio.stop()
	end

	if var_0_22 then
		var_0_22()
	end

	if love.graphics and love.graphics.flushBatch then
		pcall(love.graphics.flushBatch)
	end

	if ui and ui.tooltip and ui.tooltip.releaseResources then
		pcall(ui.tooltip.releaseResources, ui.tooltip)
	end

	if Render2 and Render2.releaseTransientResources then
		pcall(Render2.releaseTransientResources)
	end

	if var_0_11 and var_0_11.releaseTransientResources then
		pcall(var_0_11.releaseTransientResources)
	end

	if backgroundMainPaperGlowDistanceImage then
		pcall(backgroundMainPaperGlowDistanceImage.release, backgroundMainPaperGlowDistanceImage)

		backgroundMainPaperGlowDistanceImage = nil
	end

	if AlphaRayGlow and AlphaRayGlow.release then
		pcall(AlphaRayGlow.release)
	end

	if ui and ui._gameOverDpsCanvas then
		pcall(ui._gameOverDpsCanvas.release, ui._gameOverDpsCanvas)

		ui._gameOverDpsCanvas = nil
	end

	if canvas then
		pcall(canvas.release, canvas)

		canvas = nil
	end

	if masterDepthStencil then
		pcall(masterDepthStencil.release, masterDepthStencil)

		masterDepthStencil = nil
	end

	if masterCanvas then
		pcall(masterCanvas.release, masterCanvas)

		masterCanvas = nil
	end

	collectgarbage("collect")
end
