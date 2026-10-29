local var_0_0 = {}
local var_0_1 = {
	lastHitchRateLog = -100,
	hitchWorstUpdate = 0,
	hitchWorstPresent = 0,
	hitchWorstDraw = 0,
	hitchWorstSeconds = 0,
	hitchCount = 0,
	installed = false,
	lastRegressionRatio = 0,
	lastRegressionLog = -100,
	lastSlowPresentLog = -100,
	lastSlowDrawLog = -100,
	lastSlowUpdateLog = -100,
	lastLowFpsLog = -100,
	lastStallLog = -100,
	slowSeconds = 0,
	lastPresentSeconds = 0,
	lastDrawSeconds = 0,
	lastUpdateSeconds = 0,
	sessionWritten = false,
	earlyHandlerInstalled = false
}
local var_0_2 = 20
local var_0_3 = 10
local var_0_4 = 2
local var_0_5 = 0.014285714285714285
local var_0_6 = 5
local var_0_7 = 60
local var_0_8 = 2.5
local var_0_9 = 0.016666666666666666
local var_0_10 = 60
local var_0_11 = 6
local var_0_12 = 300

local function var_0_13()
	if love and love.timer and love.timer.getTime then
		local var_1_0, var_1_1 = pcall(love.timer.getTime)

		if var_1_0 and tonumber(var_1_1) then
			return tonumber(var_1_1)
		end
	end

	return os.clock()
end

local function var_0_14()
	local var_2_0, var_2_1 = pcall(os.date, "%Y-%m-%d %H:%M:%S")

	return var_2_0 and var_2_1 or "unknown-time"
end

local function var_0_15(arg_3_0, arg_3_1)
	arg_3_0 = tostring(arg_3_0 or "")

	if arg_3_0 == "" then
		return arg_3_1
	end

	local var_3_0 = arg_3_0:sub(-1)

	if var_3_0 == "/" or var_3_0 == "\\" then
		return arg_3_0 .. arg_3_1
	end

	local var_3_1 = arg_3_0:find("\\", 1, true) and "\\" or "/"

	return arg_3_0 .. var_3_1 .. arg_3_1
end

local function var_0_16(arg_4_0)
	if type(arg_4_0) ~= "string" or arg_4_0 == "" then
		return false
	end

	if not io or not io.open then
		return false
	end

	local var_4_0 = io.open(var_0_15(arg_4_0, "main.lua"), "r")

	if not var_4_0 then
		return false
	end

	var_4_0:close()

	return true
end

local function var_0_17()
	local var_5_0 = love and love.filesystem
	local var_5_1 = false

	if var_5_0 and var_5_0.isFused then
		local var_5_2, var_5_3 = pcall(var_5_0.isFused)

		var_5_1 = var_5_2 and var_5_3 == true
	end

	if var_5_0 and not var_5_1 and var_5_0.getSource then
		local var_5_4, var_5_5 = pcall(var_5_0.getSource)

		if var_5_4 and var_0_16(var_5_5) then
			return var_0_15(var_5_5, "errorlog.txt")
		end
	end

	if var_5_0 and var_5_0.getSourceBaseDirectory then
		local var_5_6, var_5_7 = pcall(var_5_0.getSourceBaseDirectory)

		if var_5_6 and type(var_5_7) == "string" and var_5_7 ~= "" then
			return var_0_15(var_5_7, "errorlog.txt")
		end
	end

	if type(arg) == "table" then
		for iter_5_0, iter_5_1 in ipairs({
			-2,
			-1,
			0
		}) do
			local var_5_8 = arg[iter_5_1]

			if type(var_5_8) == "string" and var_5_8 ~= "" then
				local var_5_9 = var_5_8:match("^(.*)[/\\][^/\\]+$")

				if var_5_9 and var_5_9 ~= "" then
					return var_0_15(var_5_9, "errorlog.txt")
				end
			end
		end
	end

	return var_0_15(".", "errorlog.txt")
end

local function var_0_18(arg_6_0)
	local var_6_0 = var_0_1.logFile

	var_0_1.logFile = nil

	if not var_6_0 then
		return
	end

	if arg_6_0 then
		pcall(var_6_0.flush, var_6_0)
	end

	pcall(var_6_0.close, var_6_0)
end

local function var_0_19(arg_7_0, arg_7_1)
	arg_7_0 = tostring(arg_7_0 or "")

	if arg_7_0 == "" then
		return true
	end

	if not var_0_1.logPath then
		var_0_1.logPath = var_0_17()
	end

	local var_7_0 = var_0_1.logFile

	if not var_7_0 and io and io.open then
		var_7_0 = io.open(var_0_1.logPath, "ab")

		if var_7_0 then
			pcall(var_7_0.setvbuf, var_7_0, "full", 65536)

			var_0_1.logFile = var_7_0
		end
	end

	if var_7_0 then
		if pcall(function()
			assert(var_7_0:write(arg_7_0))

			if arg_7_1 then
				assert(var_7_0:flush())
			end
		end) then
			return true
		end

		var_0_18(false)
	end

	return false
end

local function var_0_20(arg_9_0)
	return type(arg_9_0) == "table" and #arg_9_0 or 0
end

local function var_0_21(arg_10_0, ...)
	if type(arg_10_0) ~= "function" then
		return nil
	end

	local var_10_0, var_10_1, var_10_2, var_10_3, var_10_4 = pcall(arg_10_0, ...)

	if var_10_0 then
		return var_10_1, var_10_2, var_10_3, var_10_4
	end

	return nil
end

local function var_0_22(arg_11_0)
	local var_11_0 = rawget(_G, "battlefield")
	local var_11_1 = rawget(_G, "ui")
	local var_11_2 = rawget(_G, "phase")
	local var_11_3 = var_11_0 and var_11_0.wave or nil
	local var_11_4 = var_11_1 and var_11_1.pauseOverlayState and var_11_1.pauseOverlayState.active == true
	local var_11_5 = var_11_1 and var_11_1._coreSelect and var_11_1._coreSelect.active == true
	local var_11_6 = var_11_0 and var_11_0.classSelect ~= nil
	local var_11_7 = {
		"phase=" .. tostring(var_11_2 or "unknown"),
		"battleMode=" .. tostring(var_11_0 and var_11_0.mode or "none"),
		"wave=" .. tostring(var_11_3 and var_11_3.id or 0),
		"waveActive=" .. tostring(var_11_3 and var_11_3.active == true or false),
		"fastForward=" .. tostring(var_11_0 and var_11_0.battleFastForward == true or false),
		"paused=" .. tostring(var_11_4),
		"coreModal=" .. tostring(var_11_5),
		"classModal=" .. tostring(var_11_6),
		"roster=" .. tostring(var_0_20(var_11_0 and var_11_0.rosterUnits)),
		"allies=" .. tostring(var_0_20(var_11_0 and var_11_0.allies)),
		"enemies=" .. tostring(var_0_20(var_11_0 and var_11_0.enemies)),
		"projectiles=" .. tostring(var_0_20(var_11_0 and var_11_0.projectiles)),
		"meteors=" .. tostring(var_0_20(var_11_0 and var_11_0.meteors)),
		"vfx=" .. tostring(var_0_20(var_11_0 and var_11_0.vfx)),
		"vfxQueued=" .. tostring(var_0_20(var_11_0 and var_11_0.vfxList)),
		"effects=" .. tostring(var_0_20(var_11_0 and var_11_0.effects)),
		string.format("luaMemoryMB=%.1f", (collectgarbage("count") or 0) / 1024)
	}

	if var_0_1.lastNote and var_0_1.lastNote ~= "" then
		var_11_7[#var_11_7 + 1] = "lastNote=" .. var_0_1.lastNote
	end

	if love and love.audio and love.audio.getActiveSourceCount then
		local var_11_8 = var_0_21(love.audio.getActiveSourceCount)

		if var_11_8 then
			var_11_7[#var_11_7 + 1] = "activeAudioSources=" .. tostring(var_11_8)
		end
	end

	if arg_11_0 and love and love.graphics then
		local var_11_9, var_11_10 = var_0_21(love.graphics.getDimensions)

		if var_11_9 and var_11_10 then
			var_11_7[#var_11_7 + 1] = ("window=%sx%s"):format(var_11_9, var_11_10)
		end

		local var_11_11 = var_0_21(love.graphics.getStats)

		if type(var_11_11) == "table" then
			var_11_7[#var_11_7 + 1] = "drawCalls=" .. tostring(var_11_11.drawcalls or 0)
			var_11_7[#var_11_7 + 1] = "canvases=" .. tostring(var_11_11.canvases or 0)
			var_11_7[#var_11_7 + 1] = string.format("textureMemoryMB=%.1f", (tonumber(var_11_11.texturememory) or 0) / 1048576)
		end

		if love.window then
			local var_11_12 = love.window.hasFocus and var_0_21(love.window.hasFocus)
			local var_11_13 = love.window.isVisible and var_0_21(love.window.isVisible)
			local var_11_14 = love.window.isMinimized and var_0_21(love.window.isMinimized)
			local var_11_15
			local var_11_16

			if love.window.getFullscreen then
				var_11_15, var_11_16 = var_0_21(love.window.getFullscreen)
			end

			local var_11_17

			if love.window.getMode then
				local var_11_18, var_11_19, var_11_20 = var_0_21(love.window.getMode)

				var_11_17 = var_11_20
			end

			local var_11_21 = love.window.getVSync and var_0_21(love.window.getVSync)

			if var_11_12 ~= nil then
				var_11_7[#var_11_7 + 1] = "focused=" .. tostring(var_11_12 == true)
			end

			if var_11_13 ~= nil then
				var_11_7[#var_11_7 + 1] = "visible=" .. tostring(var_11_13 == true)
			end

			if var_11_14 ~= nil then
				var_11_7[#var_11_7 + 1] = "minimized=" .. tostring(var_11_14 == true)
			end

			if var_11_15 ~= nil then
				var_11_7[#var_11_7 + 1] = "fullscreen=" .. tostring(var_11_15 == true)

				if var_11_16 then
					var_11_7[#var_11_7 + 1] = "fullscreenType=" .. tostring(var_11_16)
				end
			end

			if type(var_11_17) == "table" then
				var_11_7[#var_11_7 + 1] = "borderless=" .. tostring(var_11_17.borderless == true)
			end

			if var_11_21 ~= nil then
				var_11_7[#var_11_7 + 1] = "vsync=" .. tostring(var_11_21)
			end
		end

		local var_11_22 = rawget(_G, "PresentationPacer")

		if var_11_22 and var_11_22.getStatus then
			local var_11_23 = var_0_21(var_11_22.getStatus)

			if type(var_11_23) == "table" then
				var_11_7[#var_11_7 + 1] = "presentationPacing=" .. tostring(var_11_23.active == true)

				if tonumber(var_11_23.refreshHz) then
					var_11_7[#var_11_7 + 1] = string.format("presentationHz=%.3f", tonumber(var_11_23.refreshHz))
				end

				if var_11_23.presentSuppressed ~= nil then
					var_11_7[#var_11_7 + 1] = "presentationSuppressed=" .. tostring(var_11_23.presentSuppressed == true)
				end

				if var_11_23.fallbackActivated then
					var_11_7[#var_11_7 + 1] = "presentationFallback=" .. tostring(var_11_23.fallbackReason or true)
				end
			end
		end
	end

	return table.concat(var_11_7, ", ")
end

local function var_0_23()
	local var_12_0 = {
		"time=" .. var_0_14(),
		"logPath=" .. tostring(var_0_1.logPath or var_0_17())
	}

	if love and love.getVersion then
		local var_12_1, var_12_2, var_12_3, var_12_4 = var_0_21(love.getVersion)

		if var_12_1 then
			var_12_0[#var_12_0 + 1] = ("love=%s.%s.%s %s"):format(tostring(var_12_1), tostring(var_12_2), tostring(var_12_3), tostring(var_12_4 or ""))
		end
	end

	if love and love.system and love.system.getOS then
		var_12_0[#var_12_0 + 1] = "os=" .. tostring(var_0_21(love.system.getOS) or "unknown")
	end

	if love and love.graphics and love.graphics.getRendererInfo then
		local var_12_5, var_12_6, var_12_7, var_12_8 = var_0_21(love.graphics.getRendererInfo)

		if var_12_5 then
			var_12_0[#var_12_0 + 1] = ("renderer=%s | %s | %s | %s"):format(tostring(var_12_5), tostring(var_12_6), tostring(var_12_7), tostring(var_12_8))
		end
	end

	return table.concat(var_12_0, "\n")
end

local function var_0_24()
	if var_0_1.sessionWritten then
		return
	end

	if not var_0_1.logPath then
		var_0_1.logPath = var_0_17()
	end

	var_0_1.sessionWritten = var_0_19(("\n===== SlotBound diagnostic session =====\n%s\n%s\n"):format(var_0_23(), var_0_22(true)))
end

local function var_0_25(arg_14_0, arg_14_1, arg_14_2, arg_14_3)
	var_0_24()
	var_0_19(("[%s] [%s] %s\n%s\n"):format(var_0_14(), tostring(arg_14_0 or "INFO"), tostring(arg_14_1 or ""), var_0_22(arg_14_2 == true)), arg_14_3 == true)
end

function var_0_0.getLogPath()
	if not var_0_1.logPath then
		var_0_1.logPath = var_0_17()
	end

	return var_0_1.logPath
end

function var_0_0.note(arg_16_0)
	var_0_1.lastNote = tostring(arg_16_0 or "")
end

function var_0_0.recordOperation(arg_17_0, arg_17_1, arg_17_2)
	arg_17_1 = tonumber(arg_17_1) or 0

	if arg_17_1 < 0.25 then
		return
	end

	var_0_25("SLOW_OPERATION", ("%s took %.1f ms%s"):format(tostring(arg_17_0 or "operation"), arg_17_1 * 1000, arg_17_2 and "; " .. tostring(arg_17_2) or ""), arg_17_1 >= 0.25)
end

function var_0_0.recordFatal(arg_18_0, arg_18_1, arg_18_2)
	local var_18_0 = tostring(arg_18_0 or "unknown error")

	if arg_18_2 and arg_18_2 ~= "" then
		var_18_0 = var_18_0 .. "\nContext: " .. tostring(arg_18_2)
	end

	if arg_18_1 and arg_18_1 ~= "" then
		var_18_0 = var_18_0 .. "\nTraceback:\n" .. tostring(arg_18_1)
	end

	var_0_25("FATAL_ERROR", var_18_0, true, true)
end

function var_0_0.installEarlyErrorHandler()
	if var_0_1.earlyHandlerInstalled or not love then
		return
	end

	var_0_1.earlyHandlerInstalled = true

	local var_19_0 = love.errorhandler

	function love.errorhandler(arg_20_0)
		local var_20_0 = debug and debug.traceback and debug.traceback("", 2) or ""

		pcall(var_0_0.recordFatal, arg_20_0, var_20_0, "startup=true")

		if var_19_0 then
			return var_19_0(arg_20_0)
		end

		return function()
			return 1
		end
	end
end

local function var_0_26()
	local var_22_0 = {
		textureMiB = 0,
		canvases = 0,
		images = 0,
		fonts = 0,
		luaKiB = collectgarbage("count") or 0
	}

	if love and love.graphics and love.graphics.getStats then
		local var_22_1 = var_0_21(love.graphics.getStats)

		if type(var_22_1) == "table" then
			var_22_0.images = tonumber(var_22_1.images) or 0
			var_22_0.canvases = tonumber(var_22_1.canvases) or 0
			var_22_0.fonts = tonumber(var_22_1.fonts) or 0
			var_22_0.textureMiB = (tonumber(var_22_1.texturememory) or 0) / 1048576
		end
	end

	if love and love.audio and love.audio.getActiveSourceCount then
		var_22_0.audioSources = tonumber(var_0_21(love.audio.getActiveSourceCount)) or 0
	end

	return var_22_0
end

local function var_0_27(arg_23_0, arg_23_1)
	if type(arg_23_0) ~= "table" or type(arg_23_1) ~= "table" then
		return "unavailable"
	end

	return ("luaMB %.1f->%.1f, images %d->%d, canvases %d->%d, fonts %d->%d, " .. "textureMiB %.1f->%.1f, audioSources %s->%s"):format((arg_23_0.luaKiB or 0) / 1024, (arg_23_1.luaKiB or 0) / 1024, arg_23_0.images or 0, arg_23_1.images or 0, arg_23_0.canvases or 0, arg_23_1.canvases or 0, arg_23_0.fonts or 0, arg_23_1.fonts or 0, arg_23_0.textureMiB or 0, arg_23_1.textureMiB or 0, tostring(arg_23_0.audioSources or "?"), tostring(arg_23_1.audioSources or "?"))
end

local function var_0_28(arg_24_0)
	local var_24_0 = var_0_1.emaFrameSeconds

	if not var_24_0 then
		return
	end

	var_0_1.sessionStartedAt = var_0_1.sessionStartedAt or arg_24_0

	local var_24_1 = arg_24_0 - var_0_1.sessionStartedAt

	if not var_0_1.baselineFrameSeconds then
		if var_24_1 >= var_0_2 + var_0_3 then
			var_0_1.baselineFrameSeconds = var_24_0
			var_0_1.baselineSnapshot = var_0_26()
		end

		return
	end

	local var_24_2 = var_24_0 / math.max(1e-06, var_0_1.baselineFrameSeconds)

	if not (var_24_2 >= var_0_4 and var_24_0 >= var_0_5) then
		var_0_1.regressionSince = nil

		return
	end

	var_0_1.regressionSince = var_0_1.regressionSince or arg_24_0

	if arg_24_0 - var_0_1.regressionSince < var_0_6 then
		return
	end

	local var_24_3 = var_24_2 >= var_0_1.lastRegressionRatio * 1.5

	if arg_24_0 - var_0_1.lastRegressionLog < var_0_7 and not var_24_3 then
		return
	end

	var_0_1.lastRegressionLog = arg_24_0
	var_0_1.lastRegressionRatio = var_24_2

	local var_24_4 = var_0_26()

	var_0_25("FRAME_TIME_REGRESSION", ("frame time %.1f ms (%.1f FPS) is %.1fx the session baseline %.1f ms " .. "(%.1f FPS) after %.1f min; growth: %s"):format(var_24_0 * 1000, 1 / math.max(1e-06, var_24_0), var_24_2, var_0_1.baselineFrameSeconds * 1000, 1 / math.max(1e-06, var_0_1.baselineFrameSeconds), var_24_1 / 60, var_0_27(var_0_1.baselineSnapshot, var_24_4)), true, true)
end

local function var_0_29(arg_25_0, arg_25_1)
	local var_25_0 = var_0_1.baselineFrameSeconds

	if not var_25_0 then
		return
	end

	var_0_1.hitchWindowStartedAt = var_0_1.hitchWindowStartedAt or arg_25_0

	if arg_25_1 >= math.max(var_25_0 * var_0_8, var_0_9) then
		var_0_1.hitchCount = var_0_1.hitchCount + 1

		if arg_25_1 > var_0_1.hitchWorstSeconds then
			var_0_1.hitchWorstSeconds = arg_25_1
			var_0_1.hitchWorstUpdate = var_0_1.lastUpdateSeconds
			var_0_1.hitchWorstDraw = var_0_1.lastDrawSeconds
			var_0_1.hitchWorstPresent = var_0_1.lastPresentSeconds
		end
	end

	local var_25_1 = arg_25_0 - var_0_1.hitchWindowStartedAt

	if var_25_1 < var_0_10 then
		return
	end

	local var_25_2 = var_0_1.hitchCount
	local var_25_3 = var_0_1.hitchWorstSeconds
	local var_25_4 = var_0_1.hitchWorstUpdate
	local var_25_5 = var_0_1.hitchWorstDraw
	local var_25_6 = var_0_1.hitchWorstPresent

	var_0_1.hitchWindowStartedAt = arg_25_0
	var_0_1.hitchCount = 0
	var_0_1.hitchWorstSeconds = 0
	var_0_1.hitchWorstUpdate, var_0_1.hitchWorstDraw, var_0_1.hitchWorstPresent = 0, 0, 0

	if var_25_2 < var_0_11 then
		return
	end

	if arg_25_0 - var_0_1.lastHitchRateLog < var_0_12 then
		return
	end

	var_0_1.lastHitchRateLog = arg_25_0

	var_0_25("HITCH_RATE", ("%d long frames in %.0f s (baseline %.1f ms); worst %.1f ms " .. "= update %.1f + draw %.1f + present %.1f; session %.1f min; growth: %s"):format(var_25_2, var_25_1, (var_25_0 or 0) * 1000, var_25_3 * 1000, var_25_4 * 1000, var_25_5 * 1000, var_25_6 * 1000, (arg_25_0 - (var_0_1.sessionStartedAt or arg_25_0)) / 60, var_0_27(var_0_1.baselineSnapshot, var_0_26())), true, true)
end

local function var_0_30(arg_26_0)
	local var_26_0 = var_0_13()

	arg_26_0 = tonumber(arg_26_0) or 0

	if arg_26_0 ~= arg_26_0 or arg_26_0 < 0 or arg_26_0 == math.huge then
		arg_26_0 = 0
	end

	local var_26_1 = true
	local var_26_2 = true

	if love and love.window then
		if love.window.hasFocus then
			var_26_1 = var_0_21(love.window.hasFocus) ~= false
		end

		if love.window.isVisible then
			var_26_2 = var_0_21(love.window.isVisible) ~= false
		end
	end

	if not var_26_1 or not var_26_2 then
		var_0_1.emaFrameSeconds = nil
		var_0_1.slowSeconds = 0

		return
	end

	local var_26_3 = math.min(arg_26_0, 0.5)

	var_0_1.emaFrameSeconds = var_0_1.emaFrameSeconds and var_0_1.emaFrameSeconds * 0.9 + var_26_3 * 0.1 or var_26_3

	var_0_28(var_26_0)
	var_0_29(var_26_0, var_26_3)

	if arg_26_0 >= 0.25 and var_26_0 - var_0_1.lastStallLog >= 2 then
		var_0_1.lastStallLog = var_26_0

		var_0_25("FRAME_STALL", ("frame interval %.1f ms; previous update %.1f ms; previous draw %.1f ms; previous present %.1f ms"):format(arg_26_0 * 1000, var_0_1.lastUpdateSeconds * 1000, var_0_1.lastDrawSeconds * 1000, var_0_1.lastPresentSeconds * 1000), true)
	end

	if (var_0_1.emaFrameSeconds or 0) >= 0.06666666666666667 then
		var_0_1.slowSeconds = var_0_1.slowSeconds + math.min(arg_26_0, 0.25)

		if var_0_1.slowSeconds >= 1 and var_26_0 - var_0_1.lastLowFpsLog >= 15 then
			var_0_1.lastLowFpsLog = var_26_0

			var_0_25("LOW_FPS", ("estimated FPS %.1f; update %.1f ms; draw %.1f ms; present %.1f ms"):format(1 / math.max(0.001, var_0_1.emaFrameSeconds), var_0_1.lastUpdateSeconds * 1000, var_0_1.lastDrawSeconds * 1000, var_0_1.lastPresentSeconds * 1000), true)
		end
	else
		var_0_1.slowSeconds = math.max(0, var_0_1.slowSeconds - arg_26_0 * 2)
	end
end

local function var_0_31(arg_27_0)
	local var_27_0 = math.max(0, var_0_13() - arg_27_0)

	var_0_1.lastUpdateSeconds = var_27_0

	local var_27_1 = var_0_13()

	if var_27_0 >= 0.25 and var_27_1 - var_0_1.lastSlowUpdateLog >= 2 then
		var_0_1.lastSlowUpdateLog = var_27_1

		var_0_25("SLOW_UPDATE", ("game update took %.1f ms"):format(var_27_0 * 1000), true)
	end
end

local function var_0_32(arg_28_0)
	local var_28_0 = math.max(0, var_0_13() - arg_28_0)

	var_0_1.lastDrawSeconds = var_28_0

	local var_28_1 = var_0_13()

	if var_28_0 >= 0.25 and var_28_1 - var_0_1.lastSlowDrawLog >= 2 then
		var_0_1.lastSlowDrawLog = var_28_1

		var_0_25("SLOW_DRAW", ("render submission took %.1f ms"):format(var_28_0 * 1000), true)
	end
end

local function var_0_33(arg_29_0)
	local var_29_0 = math.max(0, var_0_13() - arg_29_0)

	var_0_1.lastPresentSeconds = var_29_0

	local var_29_1 = var_0_13()

	if var_29_0 >= 0.25 and var_29_1 - var_0_1.lastSlowPresentLog >= 2 then
		var_0_1.lastSlowPresentLog = var_29_1

		var_0_25("SLOW_PRESENT", ("buffer presentation took %.1f ms"):format(var_29_0 * 1000), true)
	end
end

function var_0_0.shutdown()
	var_0_18(true)
end

function var_0_0.install()
	if var_0_1.installed or not love then
		return
	end

	var_0_1.installed = true

	local var_31_0 = love.update

	if var_31_0 then
		function love.update(arg_32_0)
			local var_32_0 = var_0_13()

			var_0_30(arg_32_0)

			local var_32_1 = var_31_0(arg_32_0)

			var_0_31(var_32_0)

			return var_32_1
		end
	end

	local var_31_1 = love.draw

	if var_31_1 then
		function love.draw()
			local var_33_0 = var_0_13()
			local var_33_1 = var_31_1()

			var_0_32(var_33_0)

			return var_33_1
		end
	end

	local var_31_2 = love.graphics and love.graphics.present

	if var_31_2 then
		function love.graphics.present(...)
			local var_34_0 = var_0_13()
			local var_34_1 = var_31_2(...)

			var_0_33(var_34_0)

			return var_34_1
		end
	end

	local var_31_3 = love.quit

	function love.quit(...)
		local var_35_0 = var_31_3 and var_31_3(...) or nil

		if var_35_0 == true then
			return true
		end

		var_0_0.shutdown()

		return var_35_0
	end
end

return var_0_0
