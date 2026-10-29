local var_0_0
local var_0_1 = {
	getCapacity = function(arg_1_0, arg_1_1)
		local var_1_0 = arg_1_1 and arg_1_1.getActive and arg_1_1.getActive() or {}
		local var_1_1 = type(var_1_0) == "table" and #var_1_0 or 0
		local var_1_2 = arg_1_0 and arg_1_0.coreCountDisplay and arg_1_0.coreCountDisplay.max or 8
		local var_1_3 = math.max(1, math.floor(tonumber(var_1_2) or 8))

		return var_1_1, var_1_3
	end
}

function var_0_1.isFull(arg_2_0, arg_2_1)
	local var_2_0, var_2_1 = var_0_1.getCapacity(arg_2_0, arg_2_1)

	return var_2_1 <= var_2_0
end

var_0_1.MANUAL_USE = {
	MercContract = true,
	OldCrown = true,
	CrookedFang = true,
	BanStamp = true,
	X2 = true
}

function var_0_1.isManualUse(arg_3_0)
	return arg_3_0 ~= nil and var_0_1.MANUAL_USE[arg_3_0.key] == true
end

function var_0_1.getButtonMode(arg_4_0, arg_4_1, arg_4_2)
	if arg_4_2 == "detail" then
		return "detail"
	end

	if var_0_1.isFull(arg_4_0, arg_4_1) then
		return "capacity"
	end

	return "normal"
end

function var_0_1.hasPending(arg_5_0)
	if not arg_5_0 then
		return false
	end

	local var_5_0 = arg_5_0._coreSelect
	local var_5_1 = arg_5_0._deferredCoreSelect

	return (var_5_0 and var_5_0.active and var_5_0.mode ~= "detail") == true or var_5_1 ~= nil and var_5_1.mode ~= "detail"
end

function var_0_1.defer(arg_6_0, arg_6_1)
	if not arg_6_0 or not arg_6_0._coreSelect or not arg_6_0._coreSelect.active then
		return false
	end

	local var_6_0 = arg_6_0._coreSelect

	var_6_0.active = false
	var_6_0._returnPromptT0 = arg_6_1 or 0
	var_6_0._btnHoverState = nil
	var_6_0._hoverState = nil
	var_6_0._denyShake = nil
	var_6_0._discardConfirm = nil
	arg_6_0._deferredCoreSelect = var_6_0
	arg_6_0._coreSelect = nil

	return true
end

function var_0_1.resume(arg_7_0, arg_7_1)
	if not arg_7_0 or not arg_7_0._deferredCoreSelect then
		return false
	end

	if arg_7_0._coreSelect and arg_7_0._coreSelect.active then
		return false
	end

	local var_7_0 = arg_7_0._deferredCoreSelect

	arg_7_0._deferredCoreSelect = nil
	var_7_0.active = true
	var_7_0.fromCountdown = true
	var_7_0.startT = arg_7_1 or 0
	var_7_0.left = nil
	var_7_0.mid = nil
	var_7_0.right = nil
	var_7_0._btnHoverState = nil
	var_7_0._hoverState = nil
	var_7_0._denyShake = nil
	arg_7_0._coreSelect = var_7_0

	return true
end

function var_0_1.clearDeferred(arg_8_0)
	if not arg_8_0 then
		return
	end

	arg_8_0._deferredCoreSelect = nil
	arg_8_0._coreSelectReturnHover = nil
	arg_8_0._coreSelectDeniedAt = nil
end

function var_0_1.skipPending(arg_9_0)
	if not arg_9_0 then
		return false
	end

	local var_9_0 = arg_9_0._coreSelect and arg_9_0._coreSelect.active and arg_9_0._coreSelect.mode ~= "detail"
	local var_9_1 = arg_9_0._deferredCoreSelect ~= nil

	if not var_9_0 and not var_9_1 then
		return false
	end

	if var_9_0 then
		arg_9_0._coreSelect.active = false
		arg_9_0._coreSelect = nil
	end

	var_0_1.clearDeferred(arg_9_0)

	return true
end

local var_0_2 = var_0_1
local var_0_3
local var_0_4 = {}
local var_0_5 = {
	duration = 2.05,
	t = 0,
	mode = "demo",
	active = false
}
local var_0_6 = {
	ko = {
		full = "풀버전",
		prefix = "현재 버전: ",
		semi_demo = "세미 데모 버전",
		demo = "데모 버전"
	},
	en = {
		full = "Full Version",
		prefix = "Current version: ",
		semi_demo = "Semi Demo Version",
		demo = "Demo Version"
	},
	ja = {
		full = "製品版",
		prefix = "現在のバージョン: ",
		semi_demo = "セミデモ版",
		demo = "デモ版"
	},
	zh = {
		full = "完整版",
		prefix = "当前版本：",
		semi_demo = "半试玩版",
		demo = "试玩版"
	},
	fr = {
		full = "Version complète",
		prefix = "Version actuelle : ",
		semi_demo = "Démo partielle",
		demo = "Démo"
	},
	it = {
		full = "Versione completa",
		prefix = "Versione attuale: ",
		semi_demo = "Demo parziale",
		demo = "Demo"
	},
	de = {
		full = "Vollversion",
		prefix = "Aktuelle Version: ",
		semi_demo = "Teildemo",
		demo = "Demo"
	},
	es = {
		full = "Versión completa",
		prefix = "Versión actual: ",
		semi_demo = "Demo parcial",
		demo = "Demo"
	},
	ru = {
		full = "Полная версия",
		prefix = "Текущая версия: ",
		semi_demo = "Частичная демоверсия",
		demo = "Демоверсия"
	},
	pl = {
		full = "Pełna wersja",
		prefix = "Bieżąca wersja: ",
		semi_demo = "Częściowe demo",
		demo = "Demo"
	},
	pt = {
		full = "Versão completa",
		prefix = "Versão atual: ",
		semi_demo = "Demo parcial",
		demo = "Demo"
	}
}
local var_0_7 = {
	demo = {
		0.95,
		0.7,
		0.3
	},
	full = {
		0.45,
		0.92,
		0.55
	},
	semi_demo = {
		0.48,
		0.78,
		1
	}
}

local function var_0_8(arg_10_0)
	local var_10_0 = math.max(0, math.min(1, tonumber(arg_10_0) or 0))

	return var_10_0 * var_10_0 * (3 - 2 * var_10_0)
end

local function var_0_9(arg_11_0)
	local var_11_0 = tostring(rawget(_G, "currentGameLang") or arg_11_0 and arg_11_0.menuSettings and arg_11_0.menuSettings.language or "ko"):lower()

	if var_11_0:match("^ja") then
		return "ja"
	end

	if var_11_0:match("^zh") then
		return "zh"
	end

	if var_11_0:match("^en") then
		return "en"
	end

	if var_11_0:match("^fr") then
		return "fr"
	end

	if var_11_0:match("^it") then
		return "it"
	end

	if var_11_0:match("^de") then
		return "de"
	end

	if var_11_0:match("^es") then
		return "es"
	end

	if var_11_0:match("^ru") then
		return "ru"
	end

	if var_11_0:match("^pl") then
		return "pl"
	end

	if var_11_0:match("^pt") then
		return "pt"
	end

	return "ko"
end

function var_0_4.show(arg_12_0)
	var_0_5.mode = var_0_6.ko[arg_12_0] and arg_12_0 or "demo"
	var_0_5.t = 0
	var_0_5.active = true
end

function var_0_4.update(arg_13_0)
	if not var_0_5.active then
		return
	end

	var_0_5.t = var_0_5.t + math.max(0, tonumber(arg_13_0) or 0)

	if var_0_5.t >= var_0_5.duration then
		var_0_5.t = var_0_5.duration
		var_0_5.active = false
	end
end

function var_0_4.draw(arg_14_0, arg_14_1, arg_14_2, arg_14_3, arg_14_4)
	if not var_0_5.active or not love or not love.graphics then
		return
	end

	local var_14_0 = 0.18
	local var_14_1 = 0.48
	local var_14_2

	if var_14_0 > var_0_5.t then
		var_14_2 = var_0_8(var_0_5.t / var_14_0)
	elseif var_0_5.t > var_0_5.duration - var_14_1 then
		var_14_2 = var_0_8((var_0_5.duration - var_0_5.t) / var_14_1)
	else
		var_14_2 = 1
	end

	if var_14_2 <= 0 then
		return
	end

	local var_14_3 = var_0_6[var_0_9(arg_14_0)] or var_0_6.ko
	local var_14_4 = var_14_3.prefix .. (var_14_3[var_0_5.mode] or var_0_6.ko[var_0_5.mode] or var_0_6.ko.demo)
	local var_14_5 = arg_14_0 and (arg_14_0.fontGameOver or arg_14_0.font) or love.graphics.getFont()
	local var_14_6 = arg_14_0 and arg_14_0.virtual and arg_14_0.virtual.W or 640
	local var_14_7 = var_14_5:getWidth(var_14_4)
	local var_14_8 = var_14_5:getHeight()
	local var_14_9 = 10
	local var_14_10 = 6
	local var_14_11 = var_14_7 + var_14_9 * 2
	local var_14_12 = var_14_8 + var_14_10 * 2
	local var_14_13 = var_0_8(var_0_5.t / var_14_0)
	local var_14_14 = var_0_8(math.max(0, var_0_5.t - (var_0_5.duration - var_14_1)) / var_14_1)
	local var_14_15 = math.floor((var_14_6 - var_14_11) * 0.5 + 0.5)
	local var_14_16 = math.floor(18 + (1 - var_14_13) * 4 - var_14_14 * 3 + 0.5)
	local var_14_17 = var_0_7[var_0_5.mode] or var_0_7.demo

	love.graphics.push("all")
	love.graphics.origin()
	love.graphics.translate(tonumber(arg_14_1) or 0, tonumber(arg_14_2) or 0)
	love.graphics.scale(tonumber(arg_14_3) or 1, tonumber(arg_14_4) or tonumber(arg_14_3) or 1)
	love.graphics.setShader()
	love.graphics.setStencilTest()
	love.graphics.setScissor()
	love.graphics.setBlendMode("alpha", "alphamultiply")
	love.graphics.setFont(var_14_5)
	love.graphics.setColor(0.08, 0.07, 0.1, 0.86 * var_14_2)
	love.graphics.rectangle("fill", var_14_15, var_14_16, var_14_11, var_14_12, 5, 5)
	love.graphics.setColor(var_14_17[1], var_14_17[2], var_14_17[3], 0.92 * var_14_2)
	love.graphics.rectangle("fill", var_14_15, var_14_16 + var_14_12 - 2, var_14_11, 2, 2, 2)
	love.graphics.setColor(1, 1, 1, var_14_2)
	love.graphics.print(var_14_4, var_14_15 + var_14_9, var_14_16 + var_14_10)
	love.graphics.pop()
end

local var_0_10 = var_0_4
local var_0_11
local var_0_12 = {}
local var_0_13 = "src/sprites/mainmenu/OptimaArchlogoblack.png"
local var_0_14 = 0.0392156862745098
local var_0_15 = {
	fadeIn = 0.7,
	blackHold = 0.12,
	leadIn = 0.15,
	fadeOut = 0.65,
	reveal = 0.65,
	hold = 0.9
}
local var_0_16 = {
	elapsed = 0,
	active = false
}

local function var_0_17(arg_15_0)
	local var_15_0 = math.max(0, math.min(1, arg_15_0 or 0))

	return var_15_0 * var_15_0 * (3 - 2 * var_15_0)
end

local function var_0_18()
	return var_0_15.leadIn + var_0_15.fadeIn + var_0_15.hold + var_0_15.fadeOut + var_0_15.blackHold + var_0_15.reveal
end

function var_0_12.load()
	var_0_16.elapsed = 0
	var_0_16.active = false

	local var_17_0, var_17_1 = pcall(love.graphics.newImage, var_0_13)

	if not var_17_0 or not var_17_1 then
		print("[startup] Could not load logo: " .. tostring(var_17_1))

		var_0_16.logo = nil

		return false
	end

	var_17_1:setFilter("linear", "linear")

	var_0_16.logo = var_17_1
	var_0_16.active = true

	return true
end

function var_0_12.isActive()
	return var_0_16.active == true
end

function var_0_12.isRevealing()
	local var_19_0 = var_0_15.leadIn + var_0_15.fadeIn + var_0_15.hold + var_0_15.fadeOut + var_0_15.blackHold

	return var_0_16.active == true and var_19_0 <= var_0_16.elapsed
end

function var_0_12.update(arg_20_0)
	if not var_0_16.active then
		return
	end

	local var_20_0 = tonumber(arg_20_0) or 0

	if var_20_0 ~= var_20_0 or var_20_0 < 0 or var_20_0 == math.huge then
		var_20_0 = 0
	end

	var_0_16.elapsed = var_0_16.elapsed + math.min(var_20_0, 0.1)

	if var_0_16.elapsed >= var_0_18() then
		var_0_16.elapsed = var_0_18()
		var_0_16.active = false
	end
end

function var_0_12.draw()
	if not var_0_16.active or not var_0_16.logo then
		return
	end

	local var_21_0 = var_0_16.elapsed
	local var_21_1 = 0
	local var_21_2 = 1
	local var_21_3 = var_0_15.leadIn

	if var_21_0 < var_21_3 then
		var_21_1 = 0
	elseif var_21_0 < var_21_3 + var_0_15.fadeIn then
		var_21_1 = var_0_17((var_21_0 - var_21_3) / var_0_15.fadeIn)
	else
		local var_21_4 = var_21_3 + var_0_15.fadeIn

		if var_21_0 < var_21_4 + var_0_15.hold then
			var_21_1 = 1
		else
			local var_21_5 = var_21_4 + var_0_15.hold

			if var_21_0 < var_21_5 + var_0_15.fadeOut then
				var_21_1 = 1 - var_0_17((var_21_0 - var_21_5) / var_0_15.fadeOut)
			else
				local var_21_6 = var_21_5 + var_0_15.fadeOut

				var_21_1 = 0

				if var_21_0 >= var_21_6 + var_0_15.blackHold then
					local var_21_7 = var_21_6 + var_0_15.blackHold

					var_21_2 = 1 - var_0_17((var_21_0 - var_21_7) / var_0_15.reveal)
				end
			end
		end
	end

	love.graphics.push("all")
	love.graphics.origin()
	love.graphics.setShader()

	if love.graphics.setStencilTest then
		love.graphics.setStencilTest()
	end

	if love.graphics.setScissor then
		love.graphics.setScissor()
	end

	love.graphics.setBlendMode("alpha", "alphamultiply")

	local var_21_8, var_21_9 = love.graphics.getDimensions()

	love.graphics.setColor(var_0_14, var_0_14, var_0_14, var_21_2)
	love.graphics.rectangle("fill", 0, 0, var_21_8, var_21_9)

	if var_21_1 > 0 then
		local var_21_10, var_21_11 = var_0_16.logo:getDimensions()
		local var_21_12 = math.min(var_21_8 * 0.38, var_21_9 * 0.48, var_21_10) / math.max(var_21_10, var_21_11)
		local var_21_13 = var_21_10 * var_21_12
		local var_21_14 = var_21_11 * var_21_12

		love.graphics.setColor(1, 1, 1, var_21_1)
		love.graphics.draw(var_0_16.logo, math.floor((var_21_8 - var_21_13) * 0.5 + 0.5), math.floor((var_21_9 - var_21_14) * 0.5 + 0.5), 0, var_21_12, var_21_12)
	end

	love.graphics.pop()
end

local var_0_19 = var_0_12
local var_0_20
local var_0_21 = {
	language = function(arg_22_0)
		return _G.currentGameLang or arg_22_0 and arg_22_0.menuSettings and arg_22_0.menuSettings.language or "ko"
	end
}

function var_0_21.text(arg_23_0, arg_23_1, ...)
	local var_23_0 = require("src.data.language").getText(arg_23_1, var_0_21.language(arg_23_0))

	return select("#", ...) > 0 and string.format(var_23_0, ...) or var_23_0
end

function var_0_21.content(arg_24_0, arg_24_1, arg_24_2, arg_24_3)
	local var_24_0 = require("src.data.language")
	local var_24_1 = var_0_21.language(arg_24_0)

	return var_24_0.getAwakeningText(arg_24_1, arg_24_2, "name", nil, var_24_1), var_24_0.getAwakeningText(arg_24_1, arg_24_2, "text", arg_24_3, var_24_1), var_24_0.getAwakeningText(arg_24_1, arg_24_2, "limit", arg_24_3, var_24_1)
end

var_0_21.titleColors = {
	["일반 패시브 / 아군 보호"] = {
		0.6313725490196078,
		0.8392156862745098,
		0.7450980392156863,
		1
	},
	["일반 패시브 / 상황 반응"] = {
		0.9372549019607843,
		0.6980392156862745,
		0.592156862745098,
		1
	},
	["일반 패시브 / 상시·배치"] = {
		0.615686274509804,
		0.792156862745098,
		0.9411764705882353,
		1
	},
	["고유 능력 연계 / 고유 능력 연계"] = {
		0.7764705882352941,
		0.6901960784313725,
		0.9372549019607843,
		1
	},
	["소환수 패시브 / 소환수 상태"] = {
		0.6313725490196078,
		0.8392156862745098,
		0.6666666666666666,
		1
	}
}
var_0_21.titlePalette = {
	{
		0.6313725490196078,
		0.8392156862745098,
		0.7450980392156863,
		1
	},
	{
		0.9372549019607843,
		0.6980392156862745,
		0.592156862745098,
		1
	},
	{
		0.615686274509804,
		0.792156862745098,
		0.9411764705882353,
		1
	},
	{
		0.7764705882352941,
		0.6901960784313725,
		0.9372549019607843,
		1
	},
	{
		0.9215686274509803,
		0.803921568627451,
		0.5333333333333333,
		1
	},
	{
		0.9058823529411765,
		0.6509803921568628,
		0.796078431372549,
		1
	},
	{
		0.6823529411764706,
		0.8470588235294118,
		0.5607843137254902,
		1
	},
	{
		0.5607843137254902,
		0.8549019607843137,
		0.8588235294117647,
		1
	}
}

function var_0_21.titleColor(arg_25_0)
	if var_0_21.titleColors[arg_25_0.category] then
		return var_0_21.titleColors[arg_25_0.category]
	end

	local var_25_0, var_25_1 = (arg_25_0.id or ""):match("^(%a)(%d+)$")
	local var_25_2 = ({
		W = 0,
		H = 1,
		S = 4,
		J = 5,
		M = 6,
		A = 2,
		D = 3
	})[var_25_0] or 0

	return var_0_21.titlePalette[((tonumber(var_25_1) or 1) - 1 + var_25_2) % #var_0_21.titlePalette + 1]
end

local var_0_22 = require("src.game.awakening")
local var_0_23 = require("src.ui.tooltip")
local var_0_24 = {
	"I",
	"II",
	"III",
	"IV",
	"V"
}

local function var_0_25(arg_26_0, arg_26_1, arg_26_2)
	return arg_26_0 and arg_26_1 >= arg_26_0.x and arg_26_1 <= arg_26_0.x + arg_26_0.w and arg_26_2 >= arg_26_0.y and arg_26_2 <= arg_26_0.y + arg_26_0.h
end

function var_0_21.open(arg_27_0, arg_27_1)
	if not arg_27_0 or arg_27_0.gameOver or arg_27_0.mode == "battle" or arg_27_0.classSelect or arg_27_0.awakeningModal or arg_27_0.imprintModal and arg_27_0.imprintModal.active or not var_0_22.available(arg_27_0, arg_27_1) then
		return false
	end

	local var_27_0 = var_0_22.offer(arg_27_1)

	if not var_27_0 or #var_27_0 == 0 then
		return false
	end

	arg_27_0.awakeningModal = {
		hoveredIndex = 0,
		t = 0,
		unit = arg_27_1,
		options = var_27_0,
		stage = var_0_22.stage(arg_27_1) + 1,
		hoverProg = {}
	}
	arg_27_0.absorbMode = false

	if _G.__slotSaveAwakeningChoices then
		__slotSaveAwakeningChoices()
	end

	if arg_27_0.ui then
		arg_27_0.ui._awakeningInfo = nil

		local var_27_1 = arg_27_0.ui.tooltip

		if var_27_1 and var_27_1.update then
			var_27_1:update(0, var_27_1.mouseX or -9999, var_27_1.mouseY or -9999, arg_27_0)
		end
	end

	return true
end

local function var_0_26(arg_28_0, arg_28_1)
	local var_28_0 = arg_28_0.virtual and arg_28_0.virtual.W or love.graphics.getWidth()
	local var_28_1 = arg_28_0.virtual and arg_28_0.virtual.H or love.graphics.getHeight()
	local var_28_2 = arg_28_1.area or {
		y = 0,
		x = 0,
		w = var_28_0,
		h = var_28_1
	}
	local var_28_3 = arg_28_0.scale or 1
	local var_28_4 = math.floor(12 * var_28_3)
	local var_28_5 = var_28_2.x + var_28_4
	local var_28_6 = var_28_2.y + var_28_4 + math.floor(28 * var_28_3)
	local var_28_7 = var_28_2.w - var_28_4 * 2
	local var_28_8 = var_28_2.h - var_28_4 * 2 - math.floor(28 * var_28_3)
	local var_28_9 = math.floor(math.min(180, var_28_7 * 0.28))
	local var_28_10 = math.floor(math.min(320, var_28_8 * 0.8))
	local var_28_11 = math.floor(var_28_9 * (arg_28_0.classCard and arg_28_0.classCard.gapMul or 0.2))
	local var_28_12 = math.max(1, math.min(3, #(arg_28_1.awakeningModal.options or {})))

	return var_28_2, var_28_5 + math.floor((var_28_7 - (var_28_9 * var_28_12 + var_28_11 * (var_28_12 - 1))) / 2), var_28_6 + math.floor((var_28_8 - var_28_10) / 2), var_28_9, var_28_10, var_28_11, var_28_5, var_28_6, var_28_7, var_28_8
end

local function var_0_27(arg_29_0, arg_29_1, arg_29_2)
	local var_29_0 = arg_29_0.assets and arg_29_0.assets.audio and arg_29_0.assets.audio[arg_29_1]

	if not var_29_0 then
		return
	end

	local var_29_1 = arg_29_0.ui and arg_29_0.ui.menuSettings and arg_29_0.ui.menuSettings.sfxVolume or 1
	local var_29_2 = arg_29_0.assets.audioBaseGain and arg_29_0.assets.audioBaseGain[arg_29_1] or 1

	if var_29_0.isPlaying and var_29_0:isPlaying() then
		var_29_0:stop()
	end

	if var_29_0.setLooping then
		var_29_0:setLooping(false)
	end

	if var_29_0.setVolume then
		var_29_0:setVolume(var_29_1 * var_29_2 * (arg_29_2 or 1))
	end

	if var_29_0.setPitch then
		var_29_0:setPitch(1)
	end

	if var_29_0.play then
		var_29_0:play()
	end
end

function var_0_21.update(arg_30_0, arg_30_1, arg_30_2)
	if not arg_30_1 then
		return
	end

	var_0_22.bindRun(arg_30_1)

	local var_30_0 = require("src.ui.effects").awakening_burst

	var_30_0.update(arg_30_2)

	local var_30_1 = arg_30_1.awakeningModal

	if not var_30_1 then
		if arg_30_1.mode == "battle" or arg_30_1.gameOver or arg_30_1.classSelect or arg_30_1.imprintModal and arg_30_1.imprintModal.active or arg_30_0 and (arg_30_0._shopMode or arg_30_0._stoneMode or arg_30_0.pauseOverlayState and arg_30_0.pauseOverlayState.active) or var_30_0.busy() then
			return
		end

		for iter_30_0, iter_30_1 in ipairs(arg_30_1.rosterUnits or {}) do
			if var_0_22.available(arg_30_1, iter_30_1) then
				var_0_21.open(arg_30_1, iter_30_1)

				break
			end
		end

		return
	end

	arg_30_2 = math.max(0, math.min(0.1, tonumber(arg_30_2) or 0))
	var_30_1.t = (var_30_1.t or 0) + arg_30_2

	if var_30_1.press then
		var_30_1.press.t = var_30_1.press.t + arg_30_2

		if var_30_1.press.t >= var_30_1.press.dur then
			var_30_1.press = nil
		end
	end

	local var_30_2 = var_30_1.resolving

	if var_30_2 then
		var_30_2.t = var_30_2.t + arg_30_2
		var_30_1.hoveredIndex = 0

		for iter_30_2 = 1, #var_30_1.options do
			var_30_1.hoverProg[iter_30_2] = math.max(0, (var_30_1.hoverProg[iter_30_2] or 0) - 10 * arg_30_2)
		end

		if var_30_2.t >= var_30_2.dur then
			if var_0_22.choose(var_30_1.unit, var_30_1.options[var_30_2.chosenIndex]) then
				var_30_0.start(var_30_1.unit, var_0_22.stage(var_30_1.unit))
				var_0_27(arg_30_1, "awakenStar")

				if _G.__slotSaveAwakeningChoices then
					__slotSaveAwakeningChoices()
				end
			end

			arg_30_1.awakeningModal = nil
		end

		return
	end

	local var_30_3, var_30_4, var_30_5, var_30_6, var_30_7, var_30_8 = var_0_26(arg_30_0, arg_30_1)
	local var_30_9 = arg_30_0.tooltip and arg_30_0.tooltip.mouseX or -1000
	local var_30_10 = arg_30_0.tooltip and arg_30_0.tooltip.mouseY or -1000
	local var_30_11 = arg_30_0.classCard and arg_30_0.classCard.appear or {
		delay = 0.4,
		dur = 0.4,
		offsetPx = 24
	}
	local var_30_12 = arg_30_0.classCard and arg_30_0.classCard.hover or {}
	local var_30_13 = var_30_1.hoveredIndex or 0
	local var_30_14 = 0

	local function var_30_15(arg_31_0)
		local var_31_0 = 1 - (1 - math.max(0, math.min(1, (var_30_1.t - (arg_31_0 - 1) * (var_30_11.delay or 0)) / math.max(0.001, var_30_11.dur or 0.4))))^3
		local var_31_1 = var_30_4 + (arg_31_0 - 1) * (var_30_6 + var_30_8)
		local var_31_2 = var_30_5 + math.floor((var_30_11.offsetPx or 24) * (1 - var_31_0) + 0.5) - math.floor((var_30_12.liftPx or 6) * (var_30_1.hoverProg[arg_31_0] or 0) + 0.5)

		return var_31_1, var_31_2, var_31_0
	end

	if var_30_13 >= 1 and var_30_13 <= #var_30_1.options then
		local var_30_16, var_30_17, var_30_18 = var_30_15(var_30_13)
		local var_30_19 = var_30_12.leaveExpandPx or 2

		if var_30_18 > 0.05 and var_30_9 >= var_30_16 - var_30_19 and var_30_9 <= var_30_16 + var_30_6 + var_30_19 and var_30_10 >= var_30_17 - var_30_19 and var_30_10 <= var_30_17 + var_30_7 + var_30_19 then
			var_30_14 = var_30_13
		end
	end

	if var_30_14 == 0 then
		for iter_30_3 = 1, #var_30_1.options do
			local var_30_20, var_30_21, var_30_22 = var_30_15(iter_30_3)
			local var_30_23 = var_30_12.insetEnterPx or 6

			if var_30_22 > 0.05 and var_30_9 >= var_30_20 + var_30_23 and var_30_9 <= var_30_20 + var_30_6 - var_30_23 and var_30_10 >= var_30_21 + var_30_23 and var_30_10 <= var_30_21 + var_30_7 - var_30_23 then
				var_30_14 = iter_30_3

				break
			end
		end
	end

	var_30_1.hoveredIndex = var_30_14

	for iter_30_4 = 1, #var_30_1.options do
		local var_30_24 = var_30_1.hoverProg[iter_30_4] or 0

		var_30_1.hoverProg[iter_30_4] = var_30_14 == iter_30_4 and math.min(1, var_30_24 + 12 * arg_30_2) or math.max(0, var_30_24 - 10 * arg_30_2)
	end
end

local function var_0_28(arg_32_0, arg_32_1, arg_32_2)
	local var_32_0 = {}

	for iter_32_0 = 1, arg_32_1 do
		local var_32_1 = {}

		for iter_32_1 = 1, arg_32_0 do
			var_32_1[iter_32_1] = (iter_32_0 == 1 or iter_32_0 == arg_32_1) and "XXX" or ".X."
		end

		var_32_0[iter_32_0] = table.concat(var_32_1, ("."):rep(arg_32_2))
	end

	return var_32_0
end

local var_0_29 = {
	stone = {},
	tip = {}
}

for iter_0_0 = 1, 5 do
	var_0_29.stone[iter_0_0] = var_0_28(iter_0_0, 5, 3)
	var_0_29.tip[iter_0_0] = var_0_28(iter_0_0, 8, 2)
end

var_0_21.numerals = var_0_29

local function var_0_30(arg_33_0, arg_33_1, arg_33_2, arg_33_3, arg_33_4)
	local var_33_0 = love.graphics

	if arg_33_4 then
		var_33_0.setColor(arg_33_4)

		for iter_33_0, iter_33_1 in ipairs(arg_33_0) do
			for iter_33_2 = 1, #iter_33_1 do
				if iter_33_1:byte(iter_33_2) == 88 then
					var_33_0.rectangle("fill", arg_33_1 + iter_33_2 - 2, arg_33_2 + iter_33_0 - 1, 3, 1)
					var_33_0.rectangle("fill", arg_33_1 + iter_33_2 - 1, arg_33_2 + iter_33_0 - 2, 1, 3)
				end
			end
		end
	end

	var_33_0.setColor(arg_33_3)

	for iter_33_3, iter_33_4 in ipairs(arg_33_0) do
		for iter_33_5 = 1, #iter_33_4 do
			if iter_33_4:byte(iter_33_5) == 88 then
				var_33_0.rectangle("fill", arg_33_1 + iter_33_5 - 1, arg_33_2 + iter_33_3 - 1, 1, 1)
			end
		end
	end
end

function var_0_21.drawRunes(arg_34_0, arg_34_1, arg_34_2, arg_34_3, arg_34_4, arg_34_5, arg_34_6, arg_34_7, arg_34_8)
	if arg_34_0 then
		arg_34_0._awakeningInfo = nil
		arg_34_0._awakeningPanelRect = nil
	end

	local var_34_0 = require("src.ui.upgrade")

	if (not arg_34_8 or not arg_34_8.sandboxMode) and var_34_0.getAwakeningUnlocked and not var_34_0.getAwakeningUnlocked() then
		return
	end

	if not arg_34_0 or not arg_34_2 or not var_0_22.identity(arg_34_1) then
		return
	end

	local var_34_1 = love.graphics
	local var_34_2 = var_0_22.capacity(arg_34_1)
	local var_34_3 = var_0_22.stage(arg_34_1)
	local var_34_4 = var_0_22.available(arg_34_8, arg_34_1)

	if var_34_2 < 1 then
		return
	end

	local var_34_5 = math.floor(arg_34_2.x + arg_34_2.w)
	local var_34_6 = arg_34_3 + 35
	local var_34_7 = math.min(17, math.floor(54 / var_34_2))
	local var_34_8 = var_34_7 - 3
	local var_34_9 = arg_34_0._awakeningRunes

	if not var_34_9 or var_34_9.unit ~= arg_34_1 then
		var_34_9 = {
			unit = arg_34_1,
			off = {},
			motion = {}
		}
		arg_34_0._awakeningRunes = var_34_9
	end

	local var_34_10 = 0.5 + 0.5 * math.sin((love.timer and love.timer.getTime() or 0) * 3.2)
	local var_34_11 = {
		w = 0,
		x = var_34_5,
		y = arg_34_4 + 44,
		stones = {}
	}
	local var_34_12 = require("src.ui.effects").awakening_stone
	local var_34_13 = arg_34_0.imprintPanel and arg_34_0.imprintPanel.skillFrame

	var_34_1.push("all")
	var_34_1.setShader()

	for iter_34_0 = 1, var_34_2 do
		local var_34_14 = arg_34_4 + 44 + (iter_34_0 - 1) * var_34_7
		local var_34_15 = iter_34_0 <= var_34_3 and "awake" or iter_34_0 == var_34_3 + 1 and var_34_4 and "ready" or "locked"
		local var_34_16 = var_34_15 == "awake" and 0 or -var_34_12.inset
		local var_34_17 = var_34_9.motion[iter_34_0] or {
			vel = 0,
			off = var_34_16
		}

		var_34_9.motion[iter_34_0] = var_34_17

		local var_34_18 = var_34_12.bounds(var_34_5 - 10, var_34_14, var_34_6 - var_34_5 + 8, var_34_8, var_34_16, var_34_5)

		var_34_18.unit, var_34_18.index = arg_34_1, iter_34_0

		local var_34_19 = var_34_12.hit(var_34_18, arg_34_5, arg_34_6)

		if var_34_19 then
			var_34_16 = var_34_16 - (var_34_13 and var_34_13.hoverShiftLeftPx or var_34_12.hoverDepth)
		end

		local var_34_20 = var_34_12.advance(var_34_17, var_34_16, arg_34_7, var_34_13)

		var_34_9.off[iter_34_0] = var_34_20

		local var_34_21 = var_34_12.displayOffset(var_34_20, var_34_13)
		local var_34_22 = var_34_12.bounds(var_34_5 - 10, var_34_14, var_34_6 - var_34_5 + 8, var_34_8, var_34_21, var_34_5)
		local var_34_23 = var_0_29.stone[iter_34_0] or var_0_29.stone[#var_0_29.stone]

		var_34_12.draw(iter_34_0, var_34_5 - 10, var_34_14, var_34_6 - var_34_5 + 8, var_34_8, var_34_21, var_34_15, var_34_19, var_34_10, var_34_23, var_0_30, var_34_22)
		var_34_1.setColor(0, 0, 0, 0.4745098039215686)
		var_34_1.rectangle("fill", arg_34_3 + 1, var_34_14, 5, var_34_8)

		if var_34_19 then
			arg_34_0._awakeningInfo = {
				unit = arg_34_1,
				index = iter_34_0,
				state = var_34_15,
				x = var_34_6 + 5,
				y = var_34_14 - 3
			}
		end

		if var_34_15 == "ready" then
			arg_34_0._awakeningPanelRect = var_34_18
		end

		var_34_11.stones[iter_34_0] = var_34_18
		var_34_11.w = math.max(var_34_11.w, var_34_18.x + var_34_18.w - var_34_5)
		var_34_11.h = var_34_14 + var_34_8 - var_34_11.y
	end

	var_34_1.pop()

	var_34_11.drawnAt = love.timer and love.timer.getTime and love.timer.getTime() or 0

	return var_34_11
end

function var_0_21.hitRunes(arg_35_0, arg_35_1, arg_35_2)
	local var_35_0 = require("src.ui.effects").awakening_stone

	for iter_35_0, iter_35_1 in ipairs(arg_35_0 and arg_35_0.stones or {}) do
		if var_35_0.hit(iter_35_1, arg_35_1, arg_35_2) then
			return true
		end
	end

	return false
end

function var_0_21.draw(arg_36_0, arg_36_1)
	if not arg_36_0 or not arg_36_1 then
		return
	end

	love.graphics.push("all")
	love.graphics.setShader()
	love.graphics.setScissor()

	if arg_36_0.font then
		love.graphics.setFont(arg_36_0.font)
	end

	local var_36_0 = arg_36_0.virtual and arg_36_0.virtual.W or love.graphics.getWidth()
	local var_36_1 = arg_36_0.virtual and arg_36_0.virtual.H or love.graphics.getHeight()
	local var_36_2 = arg_36_1.awakeningModal

	if var_36_2 then
		var_0_21.card = var_0_21.card or love.graphics.newImage("src/sprites/background/button/awakeningcard.png")

		var_0_21.card:setFilter("nearest", "nearest")

		local var_36_3, var_36_4, var_36_5, var_36_6, var_36_7, var_36_8 = var_0_26(arg_36_0, arg_36_1)
		local var_36_9 = arg_36_0.classCard or {}
		local var_36_10 = var_36_9.appear or {
			delay = 0.4,
			dur = 0.4,
			offsetPx = 24
		}
		local var_36_11 = var_36_2.resolving
		local var_36_12 = var_36_9.overlayMask or {}
		local var_36_13 = math.max(0, math.min(var_36_3.w, math.floor(var_36_3.w * (var_36_12.holeFracW or 0.14) + 0.5) + (var_36_12.padPx or 0)))
		local var_36_14 = math.max(0, math.min(var_36_3.h, math.floor(var_36_3.h * (var_36_12.holeFracH or 0.18) + 0.5) + (var_36_12.padPx or 0)))

		love.graphics.setColor(0, 0, 0, 0.65)
		love.graphics.rectangle("fill", var_36_3.x + var_36_13, var_36_3.y, var_36_3.w - var_36_13, var_36_14)
		love.graphics.rectangle("fill", var_36_3.x, var_36_3.y + var_36_14, var_36_3.w, var_36_3.h - var_36_14)

		var_36_2.rects = {}

		local var_36_15 = arg_36_0.fontAwakeningCard or arg_36_0.fontGameOver or arg_36_0.font or love.graphics.getFont()
		local var_36_16 = (arg_36_0.itemShop or {}).itemLayout or {}
		local var_36_17 = var_36_16.nameFont or var_36_15
		local var_36_18 = var_36_16.effectFont or var_36_15

		love.graphics.setFont(var_36_15)

		for iter_36_0, iter_36_1 in ipairs(var_36_2.options) do
			local var_36_19 = var_0_22.catalog(var_36_2.unit)
			local var_36_20 = var_36_19.candidates[iter_36_1]
			local var_36_21, var_36_22, var_36_23 = var_0_21.content(arg_36_0, var_36_19, var_36_20, var_36_2.stage)
			local var_36_24 = var_36_4 + (iter_36_0 - 1) * (var_36_6 + var_36_8)
			local var_36_25 = var_36_5

			var_36_2.rects[iter_36_0] = {
				x = var_36_24,
				y = var_36_25,
				w = var_36_6,
				h = var_36_7,
				id = iter_36_1
			}

			local var_36_26 = 1 - (1 - math.max(0, math.min(1, ((var_36_2.t or 0) - (iter_36_0 - 1) * (var_36_10.delay or 0)) / math.max(0.001, var_36_10.dur or 0.4))))^3
			local var_36_27 = var_36_25 + math.floor((var_36_10.offsetPx or 24) * (1 - var_36_26) + 0.5)
			local var_36_28 = var_36_26

			if var_36_11 then
				var_36_28 = iter_36_0 == var_36_11.chosenIndex and 1 or math.max(0, 1 - var_36_11.t / var_36_11.dur)
			end

			local var_36_29 = var_36_27 - math.floor((var_36_9.hover and var_36_9.hover.liftPx or 6) * (var_36_2.hoverProg[iter_36_0] or 0) + 0.5)
			local var_36_30 = var_36_2.press
			local var_36_31 = math.floor(var_36_24 + 0.5)
			local var_36_32 = math.floor(var_36_29 + 0.5)
			local var_36_33 = 1.8
			local var_36_34 = var_0_21.card:getWidth() * var_36_33
			local var_36_35 = var_0_21.card:getHeight() * var_36_33
			local var_36_36 = var_36_31 + math.floor((var_36_6 - var_36_34) / 2 + 0.5)
			local var_36_37 = var_36_32 + math.floor((var_36_7 - var_36_35) / 2 + 0.5)

			love.graphics.push()

			if var_36_2.hoveredIndex == iter_36_0 and not var_36_11 or var_36_11 and var_36_11.chosenIndex == iter_36_0 then
				local var_36_38 = require("src.ui.render").getImageOutlineShader()

				if var_36_38 then
					var_36_38:send("texelStep", {
						1 / var_36_34,
						1 / var_36_35
					})
					var_36_38:send("outlineColor", {
						0.93,
						0.9,
						0.95,
						var_36_28
					})
					var_36_38:send("threshold", 0.01)
					var_36_38:send("radiusPx", 2)
					love.graphics.setShader(var_36_38)
					love.graphics.setColor(1, 1, 1, var_36_28)
					love.graphics.draw(var_0_21.card, var_36_36, var_36_37, 0, var_36_33, var_36_33)
					love.graphics.setShader()
				end
			end

			local var_36_39 = var_36_30 and var_36_30.index == iter_36_0 and var_36_30.t < var_36_30.dur

			love.graphics.setColor(var_36_39 and 0.84 or 1, var_36_39 and 0.84 or 1, var_36_39 and 0.84 or 1, var_36_28)
			love.graphics.draw(var_0_21.card, var_36_36, var_36_37, 0, var_36_33, var_36_33)

			local var_36_40 = var_0_21.titleColor(var_36_20)
			local var_36_41 = var_36_16.effectColor or {
				0.82,
				0.84,
				0.86,
				1
			}
			local var_36_42 = ((arg_36_0.infoOverlay or {}).text or {}).numberColor or {
				1,
				0.839,
				0.353,
				1
			}
			local var_36_43 = var_36_36 + 14
			local var_36_44 = var_36_34 - 28

			love.graphics.setFont(var_36_17)
			love.graphics.setColor(var_36_40[1], var_36_40[2], var_36_40[3], var_36_28 * (var_36_40[4] or 1))

			var_36_2.titleScroll = var_36_2.titleScroll or {}
			var_36_2.titleScroll[iter_36_0] = require("src.ui.widgets").scrolling_text.drawHorizontal(var_36_2.titleScroll[iter_36_0], iter_36_1 .. ":" .. var_36_2.stage .. ":" .. var_0_21.language(arg_36_0), var_36_21, var_36_43, var_36_37 + 44, var_36_44, 13, {
				font = var_36_17,
				now = math.max(0, (var_36_2.t or 0) - (iter_36_0 - 1) * (var_36_10.delay or 0) - (var_36_10.dur or 0.4))
			})

			love.graphics.setFont(var_36_18)

			if var_36_23 ~= "" then
				var_36_22 = var_36_22 .. "\n" .. var_36_23
			end

			if not _G.__slotWrapRichTextWithStatIcons then
				require("src.ui.render")
			end

			var_36_2.descriptionScroll = var_36_2.descriptionScroll or {}

			local var_36_45 = math.floor(85 * var_36_33) - 4 - 66

			var_36_2.descriptionScroll[iter_36_0] = require("src.ui.widgets").scrolling_text.draw(var_36_2.descriptionScroll[iter_36_0], iter_36_1 .. ":" .. var_36_2.stage .. ":" .. var_0_21.language(arg_36_0), var_36_22, var_36_43, var_36_37 + 66, var_36_44, var_36_45, {
				scale = 1,
				font = var_36_18,
				lineGapPx = var_36_16.descLineGapPx or 5,
				bodyColor = {
					var_36_41[1],
					var_36_41[2],
					var_36_41[3],
					var_36_28 * (var_36_41[4] or 1)
				},
				numberColor = {
					var_36_42[1],
					var_36_42[2],
					var_36_42[3],
					var_36_28 * (var_36_42[4] or 1)
				},
				assets = arg_36_1.assets,
				wrap = __slotWrapRichTextWithStatIcons,
				draw = __slotDrawRichTextWithStatIcons,
				now = var_36_2.t or 0
			})

			love.graphics.pop()
		end

		local var_36_46 = arg_36_1.assets and arg_36_1.assets.ui and arg_36_1.assets.ui.classTitle

		if var_36_46 then
			local var_36_47 = arg_36_1.assets.ui.classTitleBounds

			love.graphics.setColor(1, 1, 1, 1)

			if var_36_47 and arg_36_1.assets.ui.classTitleQuad then
				local var_36_48 = require("src.ui.widgets").title_plaque
				local var_36_49 = var_36_48.fit(var_0_21.text(arg_36_0, "awakening_select_title_fmt", var_0_24[var_36_2.stage]), arg_36_0.fontTitle or love.graphics.getFont(), var_0_21.language(arg_36_0))

				var_36_48.draw(var_36_46, arg_36_1.assets.ui.classTitleQuad, var_36_47, var_36_0 / var_36_47.iw, var_36_1 / var_36_47.ih, var_36_49)
			else
				love.graphics.draw(var_36_46, 0, 0, 0, var_36_0 / var_36_46:getWidth(), var_36_1 / var_36_46:getHeight())
			end
		end

		local var_36_50 = arg_36_0.fontTitle or love.graphics.getFont()

		love.graphics.setFont(var_36_50)

		local var_36_51 = var_0_21.text(arg_36_0, "awakening_select_title_fmt", var_0_24[var_36_2.stage])
		local var_36_52 = arg_36_1.assets and arg_36_1.assets.ui and arg_36_1.assets.ui.classTitleBounds
		local var_36_53
		local var_36_54
		local var_36_55
		local var_36_56

		if var_36_52 then
			var_36_53 = var_36_52.x * var_36_0 / var_36_52.iw
			var_36_54 = var_36_52.y * var_36_1 / var_36_52.ih
			var_36_55 = var_36_52.w * var_36_0 / var_36_52.iw
			var_36_56 = var_36_52.h * var_36_1 / var_36_52.ih
		else
			var_36_53 = var_36_4
			var_36_54 = math.max(0, var_36_5 - 33)
			var_36_55 = var_36_6 * #var_36_2.options + var_36_8 * (#var_36_2.options - 1)
			var_36_56 = 24
		end

		local var_36_57 = arg_36_0.classTitleText or {}
		local var_36_58 = var_36_57.insetPx or 0
		local var_36_59 = var_36_53 + var_36_58
		local var_36_60 = var_36_54 + var_36_58
		local var_36_61 = var_36_55 - var_36_58 * 2
		local var_36_62 = var_36_56 - var_36_58 * 2
		local var_36_63 = math.max(0, var_36_57.maxWidthPadPx or 0)
		local var_36_64 = 1

		if var_36_57.scaleOverride and var_36_57.scaleOverride > 0 then
			var_36_64 = var_36_57.scaleOverride
		else
			local var_36_65, var_36_66, var_36_67 = require("src.ui.widgets").title_plaque.fit(var_36_51, var_36_50, var_0_21.language(arg_36_0))

			if var_36_66 ~= var_36_50 then
				var_36_50, var_36_64 = var_36_66, var_36_67

				love.graphics.setFont(var_36_50)
			end
		end

		local var_36_68 = var_36_59 + (var_36_61 - var_36_50:getWidth(var_36_51) * var_36_64) / 2

		if var_36_57.align == "left" then
			var_36_68 = var_36_59 + var_36_63 / 2
		elseif var_36_57.align == "right" then
			var_36_68 = var_36_59 + var_36_61 - var_36_63 / 2 - var_36_50:getWidth(var_36_51) * var_36_64
		end

		local var_36_69 = math.floor(var_36_68 + (var_36_57.offsetX or 0) + 0.5)
		local var_36_70 = math.floor(var_36_60 + (var_36_62 - var_36_50:getHeight() * var_36_64) / 2 + (var_36_57.offsetY or 0) + (var_36_57.baselineShiftPx or 0) + 0.5)
		local var_36_71 = var_36_57.outline or {}
		local var_36_72 = var_36_71.color or {
			0,
			0,
			0,
			1
		}
		local var_36_73 = math.max(1, var_36_71.thicknessPx or 1)

		love.graphics.setColor(unpack(var_36_72))
		love.graphics.print(var_36_51, var_36_69 - var_36_73, var_36_70, 0, var_36_64, var_36_64)
		love.graphics.print(var_36_51, var_36_69 + var_36_73, var_36_70, 0, var_36_64, var_36_64)
		love.graphics.print(var_36_51, var_36_69, var_36_70 - var_36_73, 0, var_36_64, var_36_64)
		love.graphics.print(var_36_51, var_36_69, var_36_70 + var_36_73, 0, var_36_64, var_36_64)

		if var_36_71.diagonal then
			love.graphics.print(var_36_51, var_36_69 - var_36_73, var_36_70 - var_36_73, 0, var_36_64, var_36_64)
			love.graphics.print(var_36_51, var_36_69 + var_36_73, var_36_70 + var_36_73, 0, var_36_64, var_36_64)
			love.graphics.print(var_36_51, var_36_69 - var_36_73, var_36_70 + var_36_73, 0, var_36_64, var_36_64)
			love.graphics.print(var_36_51, var_36_69 + var_36_73, var_36_70 - var_36_73, 0, var_36_64, var_36_64)
		end

		love.graphics.setColor(unpack(var_36_57.color or {
			1,
			1,
			1,
			1
		}))
		love.graphics.print(var_36_51, var_36_69, var_36_70, 0, var_36_64, var_36_64)
	end

	if arg_36_1.sandboxMode and arg_36_1.mode ~= "battle" and not var_36_2 and not arg_36_1.classSelect then
		local var_36_74 = love.graphics.getFont()

		love.graphics.setFont(require("src.data.font_resolver").developerFont(var_36_74))

		local var_36_75 = {
			require("src.data.language").getText("awakening_sandbox_units", "ko"),
			"Lv.30",
			"Lv.60",
			"Lv.100"
		}

		var_0_21.sandboxRects = {}

		local var_36_76 = math.max(12, var_36_0 - 12 - (#var_36_75 * 84 - 4))

		for iter_36_2, iter_36_3 in ipairs(var_36_75) do
			local var_36_77 = {
				w = 80,
				h = 22,
				x = var_36_76 + (iter_36_2 - 1) * 84,
				y = var_36_1 - 30
			}

			var_0_21.sandboxRects[iter_36_2] = var_36_77

			love.graphics.setColor(0.24, 0.18, 0.26, 0.96)
			love.graphics.rectangle("fill", var_36_77.x, var_36_77.y, var_36_77.w, var_36_77.h)
			love.graphics.setColor(1, 0.86, 0.56, 1)
			love.graphics.printf(iter_36_3, var_36_77.x, var_36_77.y + 3, var_36_77.w, "center")
		end

		if arg_36_1._awakeningPicker then
			arg_36_1._awakeningPickerRects = {}

			local var_36_78 = {}

			for iter_36_4 in pairs(var_0_22.data.units) do
				var_36_78[#var_36_78 + 1] = iter_36_4
			end

			table.sort(var_36_78)

			local var_36_79 = math.min(var_36_0 - 24, 720)
			local var_36_80 = var_36_79 / 6
			local var_36_81 = var_36_1 - 230

			love.graphics.setColor(0.125, 0.09, 0.153, 0.98)
			love.graphics.rectangle("fill", 12, var_36_81, var_36_79, 195)

			for iter_36_5, iter_36_6 in ipairs(var_36_78) do
				local var_36_82 = {
					h = 25,
					x = 12 + (iter_36_5 - 1) % 6 * var_36_80,
					y = var_36_81 + math.floor((iter_36_5 - 1) / 6) * 27,
					w = var_36_80 - 2,
					id = iter_36_6
				}

				arg_36_1._awakeningPickerRects[iter_36_5] = var_36_82

				love.graphics.setColor(0.82, 0.73, 0.9, 1)
				love.graphics.printf(require("src.data.language").translateUnitName(var_0_22.data.units[iter_36_6].name, "ko"), var_36_82.x, var_36_82.y + 4, var_36_82.w, "center")
			end
		end

		love.graphics.setFont(var_36_74)
	end

	love.graphics.pop()
end

local var_0_31 = {
	fill = {
		0,
		0,
		0,
		1
	},
	title = {
		1,
		0.9,
		0.5,
		1
	},
	text = {
		0.9,
		0.9,
		0.9,
		1
	},
	label = {
		0.55,
		0.55,
		0.55,
		1
	},
	number = {
		0.6,
		1,
		0.6,
		1
	},
	divider = {
		0.35,
		0.35,
		0.35,
		0.8
	},
	next = {
		0.35,
		0.85,
		1,
		1
	},
	dim = {
		0.72,
		0.72,
		0.72,
		1
	}
}

local function var_0_32(arg_37_0, arg_37_1, arg_37_2, arg_37_3)
	local var_37_0 = love.graphics

	var_37_0.setColor(var_0_31.fill)
	var_37_0.rectangle("fill", arg_37_0 + 2, arg_37_1, arg_37_2 - 4, 1)
	var_37_0.rectangle("fill", arg_37_0 + 1, arg_37_1 + 1, arg_37_2 - 2, 1)
	var_37_0.rectangle("fill", arg_37_0, arg_37_1 + 2, arg_37_2, arg_37_3 - 4)
	var_37_0.rectangle("fill", arg_37_0 + 1, arg_37_1 + arg_37_3 - 2, arg_37_2 - 2, 1)
	var_37_0.rectangle("fill", arg_37_0 + 2, arg_37_1 + arg_37_3 - 1, arg_37_2 - 4, 1)
end

local function var_0_33(arg_38_0, arg_38_1)
	local var_38_0 = 0

	for iter_38_0, iter_38_1 in ipairs(arg_38_1) do
		var_38_0 = var_38_0 + (iter_38_1.numeral and #var_0_29.tip[iter_38_1.numeral][1] + 2 or arg_38_0:getWidth(iter_38_1[1]))
	end

	return var_38_0
end

local function var_0_34(arg_39_0, arg_39_1, arg_39_2, arg_39_3, arg_39_4)
	local var_39_0 = arg_39_0:getHeight()

	for iter_39_0, iter_39_1 in ipairs(arg_39_1) do
		local var_39_1 = iter_39_1[2]
		local var_39_2 = {
			var_39_1[1],
			var_39_1[2],
			var_39_1[3],
			(var_39_1[4] or 1) * (arg_39_4 or 1)
		}

		if iter_39_1.numeral then
			local var_39_3 = var_0_29.tip[iter_39_1.numeral]

			var_0_30(var_39_3, arg_39_2 + 1, arg_39_3 + var_39_0 - 6, var_39_2)

			arg_39_2 = arg_39_2 + #var_39_3[1] + 2
		else
			love.graphics.setColor(var_39_2)
			love.graphics.print(iter_39_1[1], arg_39_2, arg_39_3)

			arg_39_2 = arg_39_2 + arg_39_0:getWidth(iter_39_1[1])
		end
	end
end

local function var_0_35(arg_40_0, arg_40_1, arg_40_2, arg_40_3, arg_40_4)
	if arg_40_3 == "awake" then
		local var_40_0 = arg_40_1.awakening and arg_40_1.awakening.selected and arg_40_1.awakening.selected[arg_40_2]
		local var_40_1 = var_40_0 and var_0_22.catalog(arg_40_1).candidates[var_40_0]
		local var_40_2 = var_0_22.level(arg_40_1, var_40_0)

		if not (var_40_1 and var_40_1.stages[var_40_2]) then
			return
		end

		local var_40_3, var_40_4, var_40_5 = var_0_21.content(arg_40_4, var_0_22.catalog(arg_40_1), var_40_1, var_40_2)
		local var_40_6 = var_0_21.titleColor(var_40_1)

		return {
			{
				var_40_3 .. " ",
				var_40_6
			},
			{
				numeral = var_40_2,
				[2] = var_40_6
			}
		}, var_40_4, var_40_5
	elseif arg_40_3 == "ready" then
		local var_40_7 = arg_40_0.mode == "battle" and var_0_21.text(arg_40_4, "awakening_after_battle") or var_0_21.text(arg_40_4, "awakening_choose_hint_fmt", arg_40_2)

		return {
			{
				var_0_21.text(arg_40_4, "awakening_ready_title"),
				var_0_31.title
			}
		}, var_40_7, "", {
			{
				var_0_21.text(arg_40_4, "awakening_upgrade_prefix"),
				var_0_31.label
			},
			{
				numeral = arg_40_2,
				[2] = var_0_31.next
			},
			{
				var_0_21.text(arg_40_4, "awakening_upgrade_suffix"),
				var_0_31.label
			}
		}
	end

	local var_40_8 = var_0_22.data.milestones[arg_40_2]
	local var_40_9 = tonumber(arg_40_1.rank or arg_40_1.star) or 1
	local var_40_10 = var_40_8 and (var_40_9 < var_40_8.rank and var_0_21.text(arg_40_4, "awakening_unlock_rank_fmt", var_40_8.level, var_40_8.rank) or var_0_21.text(arg_40_4, "awakening_unlock_level_fmt", var_40_8.level)) or ""

	return {
		{
			var_0_21.text(arg_40_4, "awakening_locked_title_fmt", arg_40_2),
			var_0_31.dim
		}
	}, var_40_10, ""
end

function var_0_21.drawInfo(arg_41_0, arg_41_1, arg_41_2)
	local var_41_0 = arg_41_0 and arg_41_0._awakeningInfo

	if not arg_41_1 or not var_41_0 or not var_41_0.unit or not var_41_0.index then
		return
	end

	if arg_41_0.pauseOverlayState and (arg_41_0.pauseOverlayState.active or arg_41_0.pauseOverlayState.settingsMode) then
		return
	end

	local var_41_1, var_41_2, var_41_3, var_41_4 = var_0_35(arg_41_1, var_41_0.unit, var_41_0.index, var_41_0.state, arg_41_0)

	if not var_41_1 then
		return
	end

	arg_41_0._awakeningTipAnim = arg_41_0._awakeningTipAnim or {}

	local var_41_5 = tostring(var_41_0.unit) .. "|" .. var_41_0.index .. "|" .. var_41_0.state .. "|" .. var_0_22.stage(var_41_0.unit)
	local var_41_6 = love.timer and love.timer.getTime and love.timer.getTime() or os.clock()
	local var_41_7, var_41_8 = require("src.ui.effects").awakening_stone.tooltipAppearance(arg_41_0._awakeningTipAnim, var_41_5, var_41_6)

	local function var_41_9(arg_42_0)
		return {
			arg_42_0[1],
			arg_42_0[2],
			arg_42_0[3],
			(arg_42_0[4] or 1) * var_41_7
		}
	end

	local var_41_10 = arg_41_0.virtual and arg_41_0.virtual.W or love.graphics.getWidth()
	local var_41_11 = arg_41_0.virtual and arg_41_0.virtual.H or love.graphics.getHeight()
	local var_41_12 = love.graphics

	var_41_12.push("all")
	var_41_12.setShader()
	var_41_12.setScissor()

	local var_41_13 = arg_41_0.font or var_41_12.getFont()

	var_41_12.setFont(var_41_13)

	local var_41_14 = var_41_13:getHeight()
	local var_41_15 = 5
	local var_41_16 = 5
	local var_41_17 = var_41_15 + 1 + 2
	local var_41_18 = math.max(var_0_33(var_41_13, var_41_1), var_41_4 and var_0_33(var_41_13, var_41_4) or 0)

	for iter_41_0 in (var_41_2 .. "\n"):gmatch("(.-)\n") do
		var_41_18 = math.max(var_41_18, var_41_13:getWidth(iter_41_0))
	end

	local var_41_19 = math.max(60, math.min(160, var_41_18 + var_41_15 * 2 + 2))
	local var_41_20 = var_41_19 - var_41_15 * 2
	local var_41_21 = {
		lineGapPx = var_41_16,
		numberColor = var_41_9(var_41_0.state == "ready" and var_0_31.text or var_0_31.number)
	}
	local var_41_22 = {
		lineGapPx = var_41_16,
		numberColor = var_41_9(var_0_31.label)
	}

	local function var_41_23(arg_43_0, arg_43_1, arg_43_2)
		local var_43_0 = arg_43_1 + var_41_15

		if arg_43_2 then
			var_0_34(var_41_13, var_41_1, arg_43_0 + var_41_15, var_43_0, var_41_7)
		end

		local var_43_1 = var_43_0 + var_41_14 + var_41_16 + 1

		if arg_43_2 then
			var_41_12.setColor(var_41_9(var_0_31.divider))
			var_41_12.rectangle("fill", arg_43_0 + var_41_15, var_43_1, var_41_20, 1)
		end

		local var_43_2 = var_43_1 + var_41_16
		local var_43_3 = var_43_2 + var_0_23.drawInlineText(arg_41_1.assets, var_41_2, arg_43_0 + var_41_15, var_43_2, var_41_20, 1, var_41_9(var_0_31.text), not arg_43_2, var_41_21)

		if var_41_3 ~= "" then
			var_43_3 = var_43_3 + var_0_23.drawInlineText(arg_41_1.assets, var_41_3, arg_43_0 + var_41_15, var_43_3, var_41_20, 1, var_41_9(var_0_31.label), not arg_43_2, var_41_22)
		end

		if var_41_4 then
			var_43_3 = var_43_3 + 1

			if arg_43_2 then
				var_41_12.setColor(var_41_9(var_0_31.divider))
				var_41_12.rectangle("fill", arg_43_0 + var_41_15, var_43_3, var_41_20, 1)
			end

			var_43_3 = var_43_3 + var_41_16

			if arg_43_2 then
				var_0_34(var_41_13, var_41_4, arg_43_0 + var_41_15, var_43_3, var_41_7)
			end

			var_43_3 = var_43_3 + var_41_14 + var_41_16
		end

		return var_43_3 - var_41_16 - arg_43_1 + var_41_17
	end

	local var_41_24 = var_41_23(0, 0, false)
	local var_41_25 = math.floor(math.max(4, math.min(var_41_10 - var_41_19 - 4, var_41_0.x - 4)))
	local var_41_26 = math.floor(math.max(4, math.min(var_41_11 - var_41_24 - 4, var_41_0.y))) + var_41_8
	local var_41_27 = arg_41_2 or arg_41_0.tooltip

	if var_41_27 and var_41_27.drawSkillStyleBox then
		var_41_27:drawSkillStyleBox(var_41_25, var_41_26, var_41_19, var_41_24)
	else
		var_0_32(var_41_25, var_41_26, var_41_19, var_41_24)
	end

	var_41_23(var_41_25, var_41_26, true)
	var_41_12.pop()
end

function var_0_21.click(arg_44_0, arg_44_1, arg_44_2, arg_44_3, arg_44_4)
	if not arg_44_1 then
		return false
	end

	if arg_44_0 and arg_44_0.pauseOverlayState and arg_44_0.pauseOverlayState.active then
		return false
	end

	local var_44_0 = arg_44_1.awakeningModal

	if var_44_0 then
		if var_44_0.resolving then
			return true
		end

		if arg_44_4 == 1 then
			local var_44_1, var_44_2, var_44_3, var_44_4, var_44_5, var_44_6 = var_0_26(arg_44_0, arg_44_1)
			local var_44_7 = arg_44_0.classCard or {}
			local var_44_8 = var_44_7.appear or {
				delay = 0.4,
				dur = 0.4
			}

			for iter_44_0 = 1, #var_44_0.options do
				local var_44_9 = {
					x = var_44_2 + (iter_44_0 - 1) * (var_44_4 + var_44_6),
					y = var_44_3,
					w = var_44_4,
					h = var_44_5
				}

				if (var_44_0.t or 0) >= (iter_44_0 - 1) * (var_44_8.delay or 0) + (var_44_8.dur or 0.4) and var_0_25(var_44_9, arg_44_2, arg_44_3) then
					local var_44_10 = var_44_7.press or {}

					var_44_0.press = {
						t = 0,
						index = iter_44_0,
						dur = var_44_10.dur or 0.12,
						scale = var_44_10.scale or 0.94
					}
					var_44_0.resolving = {
						dur = 0.18,
						t = 0,
						chosenIndex = iter_44_0
					}

					var_0_27(arg_44_1, "buttonClick", 0.5)

					return true
				end
			end
		end

		return true
	end

	if arg_44_1.mode == "battle" or arg_44_1.classSelect or arg_44_1.imprintModal then
		return false
	end

	if arg_44_4 == 1 and require("src.ui.effects").awakening_stone.hit(arg_44_0._awakeningPanelRect, arg_44_2, arg_44_3) then
		return var_0_21.open(arg_44_1, arg_44_0._awakeningPanelRect.unit)
	end

	if arg_44_1.sandboxMode and arg_44_4 == 1 then
		if arg_44_1._awakeningPicker then
			for iter_44_1, iter_44_2 in ipairs(arg_44_1._awakeningPickerRects or {}) do
				if var_0_25(iter_44_2, arg_44_2, arg_44_3) then
					var_0_22.sandboxSpawn(arg_44_1, iter_44_2.id)

					return true
				end
			end
		end

		for iter_44_3, iter_44_4 in ipairs(var_0_21.sandboxRects or {}) do
			if var_0_25(iter_44_4, arg_44_2, arg_44_3) then
				if iter_44_3 == 1 then
					arg_44_1._awakeningPicker = not arg_44_1._awakeningPicker
				else
					var_0_22.sandboxLevel(arg_44_1, ({
						30,
						60,
						100
					})[iter_44_3 - 1])
				end

				return true
			end
		end
	end

	return false
end

local var_0_36 = var_0_21
local var_0_37
local var_0_38 = {
	click = function(arg_45_0, arg_45_1, arg_45_2, arg_45_3, arg_45_4, arg_45_5)
		if arg_45_5 ~= 1 or not arg_45_1 or not arg_45_1.sandboxMode or not arg_45_2 or arg_45_1.mode == "battle" then
			return false
		end

		if arg_45_1.gameOver or arg_45_1.classSelect or arg_45_1.awakeningModal or arg_45_1.imprintModal and arg_45_1.imprintModal.active then
			return false
		end

		if arg_45_0 and (arg_45_0.pauseOverlayState and arg_45_0.pauseOverlayState.active or arg_45_0._coreSelect and arg_45_0._coreSelect.active or arg_45_0._stoneActivated and arg_45_0._stoneActivated.active) then
			return false
		end

		local var_45_0 = arg_45_2._sandboxRarityPicker

		if not var_45_0 or arg_45_4 < var_45_0.y or arg_45_4 > var_45_0.y + var_45_0.h then
			return false
		end

		if arg_45_3 >= var_45_0.randX and arg_45_3 <= var_45_0.randX + var_45_0.randW then
			arg_45_2.sandboxNextWinGrade = nil

			return true
		end

		if arg_45_3 < var_45_0.x or arg_45_3 > var_45_0.x + var_45_0.w then
			return false
		end

		local var_45_1 = var_45_0.btnW + var_45_0.gap
		local var_45_2 = math.floor((arg_45_3 - var_45_0.x) / var_45_1) + 1
		local var_45_3 = var_45_0.items[var_45_2]

		if var_45_3 and arg_45_3 <= var_45_0.x + (var_45_2 - 1) * var_45_1 + var_45_0.btnW then
			arg_45_2.sandboxNextWinGrade = var_45_3.key

			return true
		end

		return false
	end
}

return {
	sandbox_slot = var_0_38,
	awakening = var_0_36,
	core_select = var_0_2,
	edition_notice = var_0_10,
	startup_splash = var_0_19
}
