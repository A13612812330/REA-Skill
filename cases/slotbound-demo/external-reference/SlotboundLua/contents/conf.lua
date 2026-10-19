local var_0_0, var_0_1 = pcall(require, "ffi")

if var_0_0 and var_0_1 then
	if pcall(function()
		var_0_1.cdef(" int SetProcessDpiAwarenessContext(void* value); ")
	end) then
		local var_0_2, var_0_3 = pcall(var_0_1.load, "user32")

		if var_0_2 and var_0_3 then
			pcall(var_0_3.SetProcessDpiAwarenessContext, var_0_1.cast("void*", -4))
		end
	end

	if pcall(function()
		var_0_1.cdef(" int SetProcessDPIAware(void); ")
	end) then
		local var_0_4, var_0_5 = pcall(var_0_1.load, "user32")

		if var_0_4 and var_0_5 then
			pcall(var_0_5.SetProcessDPIAware)
		end
	end
end

local var_0_6 = love and love.filesystem

if var_0_6 and var_0_6.setIdentity then
	pcall(var_0_6.setIdentity, "slotbound", true)
end

local var_0_7 = require("src.data.safe_lua_table")
local var_0_8 = require("src.platform_window")

function love.conf(arg_3_0)
	local var_3_0 = (function()
		if love and love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo("web.flag", "file") then
			return true
		end

		return (love and love.system and love.system.getOS and love.system.getOS() or nil) == "Web" or jit and jit.os == "Emscripten"
	end)()
	local var_3_1 = love and love.system and love.system.getOS and love.system.getOS() or jit and jit.os or nil
	local var_3_2
	local var_3_3, var_3_4 = pcall(require, "src.save")
	local var_3_5 = var_3_3 and var_3_4 and var_3_4.load and var_3_4.load() or nil
	local var_3_6 = var_3_5 and var_3_5.settings and var_3_5.settings.displayMode or nil

	if var_3_6 == nil then
		local function var_3_7(arg_5_0)
			local var_5_0 = io.open(arg_5_0, "rb")

			if not var_5_0 then
				return nil
			end

			local var_5_1 = var_5_0:read("*all")

			var_5_0:close()

			return var_5_1
		end

		local function var_3_8(arg_6_0)
			if not arg_6_0 or arg_6_0 == "" then
				return nil
			end

			return var_0_7.decode(arg_6_0, {
				chunkName = "@SlotBound/save.dat"
			})
		end

		local var_3_9 = os.getenv("OneDrive")
		local var_3_10 = os.getenv("OneDriveConsumer")
		local var_3_11 = os.getenv("OneDriveCommercial")
		local var_3_12 = os.getenv("USERPROFILE")
		local var_3_13 = {
			var_3_9,
			var_3_10,
			var_3_11,
			var_3_12
		}

		for iter_3_0, iter_3_1 in ipairs(var_3_13) do
			if iter_3_1 and iter_3_1 ~= "" then
				local var_3_14 = iter_3_1 .. "\\Documents\\SlotBound\\save.dat"
				local var_3_15 = iter_3_1 .. "\\문서\\SlotBound\\save.dat"
				local var_3_16 = var_3_7(var_3_14) or var_3_7(var_3_15)
				local var_3_17 = var_3_8(var_3_16)

				if var_3_17 and var_3_17.settings and var_3_17.settings.displayMode then
					var_3_6 = var_3_17.settings.displayMode

					break
				end
			end
		end
	end

	if var_3_6 ~= "windowed" and var_3_6 ~= "fullscreen" and var_3_6 ~= "borderless" then
		var_3_6 = "borderless"
	end

	if var_3_0 then
		var_3_6 = "windowed"
	end

	local var_3_18 = var_0_8.usesBorderlessPresentation(var_3_6, var_3_1)

	local function var_3_19()
		local var_7_0, var_7_1 = pcall(require, "ffi")

		if not var_7_0 or not var_7_1 then
			return nil
		end

		if not pcall(function()
			var_7_1.cdef("        int GetSystemMetrics(int nIndex);\n      ")
		end) then
			return nil
		end

		local var_7_2, var_7_3 = pcall(var_7_1.load, "user32")

		if not var_7_2 or not var_7_3 then
			return nil
		end

		local var_7_4 = tonumber(var_7_3.GetSystemMetrics(0))
		local var_7_5 = tonumber(var_7_3.GetSystemMetrics(1))

		if var_7_4 and var_7_5 and var_7_4 > 0 and var_7_5 > 0 then
			return 0, 0, var_7_4, var_7_5
		end

		return nil
	end

	arg_3_0.window.title = "SlotBound"
	arg_3_0.window.icon = "icon.png"

	local var_3_20
	local var_3_21
	local var_3_22
	local var_3_23

	if var_3_18 then
		var_3_20, var_3_21, var_3_22, var_3_23 = var_3_19()

		if var_3_1 == "Windows" and (not var_3_22 or not var_3_23) then
			var_3_20, var_3_21, var_3_22, var_3_23 = 0, 0, 1280, 720
		end

		var_3_20, var_3_21, var_3_22, var_3_23 = var_0_8.compositorSafeDesktopArea(var_3_20, var_3_21, var_3_22, var_3_23, var_3_1)
	end

	arg_3_0.window.width = var_3_22 or 1280
	arg_3_0.window.height = var_3_23 or 720

	if var_3_18 then
		arg_3_0.window.x = var_3_20 or 0
		arg_3_0.window.y = var_3_21 or 0
	end

	arg_3_0.window.highdpi = true
	arg_3_0.window.usedpiscale = false
	arg_3_0.window.msaa = 0
	arg_3_0.window.stencil = 0
	arg_3_0.window.vsync = 1
	arg_3_0.window.resizable = var_3_0
	arg_3_0.window.visible = var_3_0
	arg_3_0.window.fullscreen = var_3_6 == "fullscreen" and not var_0_8.usesCompositedFullscreen(var_3_6, var_3_1)
	arg_3_0.window.borderless = var_3_18 and not var_3_0
	arg_3_0.window.fullscreentype = "desktop"
	arg_3_0.identity = "slotbound"
	arg_3_0.appendidentity = true
end
