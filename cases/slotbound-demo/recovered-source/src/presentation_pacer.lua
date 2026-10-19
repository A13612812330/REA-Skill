local var_0_0 = {}
local var_0_1 = 60
local var_0_2 = 30
local var_0_3 = 1000
local var_0_4 = 0.001
local var_0_5 = {
	hidden = false,
	focused = true,
	presentSuppressed = false,
	vsync = true,
	lastPresentSeconds = 0,
	installed = false,
	lastUpdateSeconds = 0,
	lastDrawSeconds = 0,
	lastSleepSeconds = 0,
	lastEventSeconds = 0,
	refreshHz = var_0_1,
	lastTargetHz = var_0_1
}

local function var_0_6(arg_1_0, ...)
	if type(arg_1_0) ~= "function" then
		return nil
	end

	local var_1_0, var_1_1, var_1_2, var_1_3 = pcall(arg_1_0, ...)

	if var_1_0 then
		return var_1_1, var_1_2, var_1_3
	end

	return nil
end

local function var_0_7(arg_2_0)
	if jit and jit.os == "Windows" then
		return true
	end

	local var_2_0 = arg_2_0 and arg_2_0.system

	return var_2_0 and var_2_0.getOS and var_0_6(var_2_0.getOS) == "Windows"
end

local function var_0_8(arg_3_0)
	local var_3_0 = arg_3_0 and arg_3_0.timer

	return var_3_0 and var_3_0.getTime and var_0_6(var_3_0.getTime) or os.clock()
end

function var_0_0.refresh()
	local var_4_0 = var_0_5.loveApi or love
	local var_4_1 = var_4_0 and var_4_0.window

	if not var_4_1 or not var_4_1.getMode then
		return
	end

	local var_4_2, var_4_3, var_4_4 = var_0_6(var_4_1.getMode)
	local var_4_5 = type(var_4_4) == "table" and tonumber(var_4_4.refreshrate) or nil

	if var_4_5 and var_4_5 >= var_0_2 and var_4_5 <= var_0_3 then
		var_0_5.refreshHz = var_4_5
	end

	local var_4_6 = type(var_4_4) == "table" and var_4_4.vsync or nil

	if var_4_6 == nil and var_4_1.getVSync then
		var_4_6 = var_0_6(var_4_1.getVSync)
	end

	if var_4_6 ~= nil then
		if type(var_4_6) == "boolean" then
			var_0_5.vsync = var_4_6
		else
			var_0_5.vsync = (tonumber(var_4_6) or 0) ~= 0
		end
	end
end

local function var_0_9(arg_5_0, arg_5_1)
	local var_5_0 = os and os.getenv and os.getenv(arg_5_0)
	local var_5_1 = tonumber(var_5_0 or "")

	if var_5_1 and var_5_1 > 0 then
		return var_5_1
	end

	if var_5_0 == "0" then
		return nil
	end

	return arg_5_1
end

local var_0_10 = os and os.getenv and os.getenv("SLOTBOUND_PACER_LEGACY_SLEEP") == "1" or false
local var_0_11 = var_0_9("SLOTBOUND_PACER_BG_HZ", nil)
local var_0_12 = var_0_9("SLOTBOUND_PACER_HIDDEN_HZ", 20)

local function var_0_13(arg_6_0)
	local var_6_0 = arg_6_0 and arg_6_0.window

	if not var_6_0 then
		return true, false, false
	end

	local var_6_1 = true

	if var_6_0.hasFocus then
		local var_6_2, var_6_3 = pcall(var_6_0.hasFocus)

		if var_6_2 then
			var_6_1 = var_6_3 == true
		end
	end

	local var_6_4 = false

	if var_6_0.isMinimized then
		local var_6_5, var_6_6 = pcall(var_6_0.isMinimized)

		if var_6_5 and var_6_6 == true then
			var_6_4 = true
		end
	end

	if not var_6_4 and var_6_0.isVisible then
		local var_6_7, var_6_8 = pcall(var_6_0.isVisible)

		if var_6_7 and var_6_8 == false then
			var_6_4 = true
		end
	end

	return var_6_1, var_6_4, var_0_5.vsync ~= false
end

local function var_0_14(arg_7_0)
	local var_7_0, var_7_1, var_7_2 = var_0_13(arg_7_0)

	var_0_5.focused = var_7_0
	var_0_5.hidden = var_7_1
	var_0_5.vsync = var_7_2

	local var_7_3 = math.max(var_0_2, tonumber(var_0_5.refreshHz) or var_0_1)

	if var_7_0 then
		return var_7_3, not var_7_2
	end

	local var_7_4 = var_7_1 and var_0_12 or var_0_11

	if not var_7_4 then
		return var_7_3, not var_7_2
	end

	return var_7_4, true
end

local function var_0_15(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
	local var_8_0 = arg_8_0 and arg_8_0.timer

	if not var_8_0 or not var_8_0.sleep then
		var_0_5.lastSleepSeconds = 0

		return
	end

	local var_8_1 = 1 / math.max(1, tonumber(arg_8_2) or var_0_1) - math.max(0, var_0_8(arg_8_0) - arg_8_1)

	if var_8_1 <= 0 and not var_0_10 then
		if arg_8_3 then
			var_0_5.lastSleepSeconds = 0

			return
		end

		var_0_5.lastSleepSeconds = var_0_4

		var_8_0.sleep(var_0_4)

		return
	end

	local var_8_2 = var_8_1 > var_0_4 and var_8_1 or var_0_4

	var_0_5.lastSleepSeconds = var_8_2

	var_8_0.sleep(var_8_2)
end

local function var_0_16(arg_9_0)
	function arg_9_0.run()
		if arg_9_0.load then
			arg_9_0.load(arg_9_0.arg.parseGameArguments(arg), arg)
		end

		if arg_9_0.timer then
			arg_9_0.timer.step()
		end

		local var_10_0 = 0

		return function()
			local var_11_0 = var_0_8(arg_9_0)
			local var_11_1, var_11_2 = var_0_14(arg_9_0)
			local var_11_3 = var_0_5.hidden

			if arg_9_0.event then
				arg_9_0.event.pump()

				for iter_11_0, iter_11_1, iter_11_2, iter_11_3, iter_11_4, iter_11_5, iter_11_6 in arg_9_0.event.poll() do
					if iter_11_0 == "quit" and (not arg_9_0.quit or not arg_9_0.quit()) then
						return iter_11_1 or 0
					end

					arg_9_0.handlers[iter_11_0](iter_11_1, iter_11_2, iter_11_3, iter_11_4, iter_11_5, iter_11_6)
				end
			end

			local var_11_4 = var_0_8(arg_9_0)

			if arg_9_0.timer then
				var_10_0 = arg_9_0.timer.step()
			end

			if arg_9_0.update then
				arg_9_0.update(var_10_0)
			end

			local var_11_5 = var_0_8(arg_9_0)

			var_0_5.presentSuppressed = false

			local var_11_6 = var_11_5
			local var_11_7 = false

			if var_11_3 then
				var_0_5.presentSuppressed = true
			elseif arg_9_0.graphics and arg_9_0.graphics.isActive() then
				arg_9_0.graphics.origin()
				arg_9_0.graphics.clear(arg_9_0.graphics.getBackgroundColor())

				if arg_9_0.draw then
					arg_9_0.draw()
				end

				var_11_6 = var_0_8(arg_9_0)

				arg_9_0.graphics.present()

				var_11_7 = true
			else
				var_0_5.presentSuppressed = true
			end

			local var_11_8 = var_0_8(arg_9_0)

			var_0_5.lastEventSeconds = var_11_4 - var_11_0
			var_0_5.lastUpdateSeconds = var_11_5 - var_11_4
			var_0_5.lastDrawSeconds = var_11_6 - var_11_5
			var_0_5.lastPresentSeconds = var_11_8 - var_11_6
			var_0_5.lastTargetHz = var_11_1

			if var_11_2 or not var_11_7 then
				var_0_15(arg_9_0, var_11_0, var_11_1, var_11_7)
			else
				var_0_5.lastSleepSeconds = 0
			end
		end
	end
end

function var_0_0.getStatus()
	return {
		fallbackActivated = false,
		knownBlockedRenderer = false,
		installed = var_0_5.installed,
		active = var_0_5.installed and var_0_7(var_0_5.loveApi or love),
		refreshHz = var_0_5.refreshHz,
		lastSleepSeconds = var_0_5.lastSleepSeconds,
		presentSuppressed = var_0_5.presentSuppressed,
		foregroundRefreshHz = var_0_5.refreshHz,
		focused = var_0_5.focused,
		hidden = var_0_5.hidden,
		vsync = var_0_5.vsync,
		targetHz = var_0_5.lastTargetHz,
		eventSeconds = var_0_5.lastEventSeconds,
		updateSeconds = var_0_5.lastUpdateSeconds,
		drawSeconds = var_0_5.lastDrawSeconds,
		presentSeconds = var_0_5.lastPresentSeconds
	}
end

function var_0_0.getBackgroundRefreshHz()
	return var_0_11
end

function var_0_0.getHiddenRefreshHz()
	return var_0_12
end

function var_0_0.adjustVSyncForMode(arg_15_0, arg_15_1)
	return arg_15_1
end

function var_0_0.install(arg_16_0)
	if var_0_5.installed then
		return true
	end

	var_0_5.loveApi = arg_16_0 or love

	if not var_0_5.loveApi then
		return false
	end

	var_0_5.installed = true

	var_0_0.refresh()

	if var_0_7(var_0_5.loveApi) then
		var_0_16(var_0_5.loveApi)
	end

	return true
end

return var_0_0
