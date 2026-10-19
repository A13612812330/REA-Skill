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

if jit and jit.os == "Windows" then
	local var_0_6, var_0_7 = pcall(require, "ffi")

	if not var_0_6 or not var_0_7 then
		error("SlotBound requires LuaJIT FFI to select its Windows D3D11 renderer")
	end

	pcall(var_0_7.cdef, "      int SDL_setenv(const char *name, const char *value, int overwrite);\n    ")

	local var_0_8, var_0_9 = pcall(var_0_7.load, "SDL2")

	if not var_0_8 or not var_0_9 then
		error("SlotBound could not load SDL2 for its Windows renderer setup")
	end

	local function var_0_10(arg_3_0, arg_3_1)
		local var_3_0, var_3_1 = pcall(var_0_9.SDL_setenv, arg_3_0, arg_3_1, 1)

		if not var_3_0 or var_3_1 ~= 0 then
			error(("SlotBound could not set Windows renderer value %s"):format(arg_3_0))
		end
	end

	var_0_10("LOVE_GRAPHICS_USE_OPENGLES", "1")
	var_0_10("SDL_OPENGL_ES_DRIVER", "1")
	var_0_10("LOVE_GRAPHICS_VSYNC_DWM", "0")
end

local var_0_11 = love and love.filesystem

if var_0_11 and var_0_11.setIdentity then
	pcall(var_0_11.setIdentity, "slotbound", true)
end

RuntimeDiagnostics = RuntimeDiagnostics or require("src.runtime_diagnostics")

RuntimeDiagnostics.installEarlyErrorHandler()

if require("src.audio.runtime_bootstrap").relaunchBundledWindowsRuntimeBeforeWindow() then
	os.exit(0)
end

local var_0_12 = require("src.platform_window")

function love.conf(arg_4_0)
	arg_4_0.gammacorrect = false

	local var_4_0
	local var_4_1
	local var_4_2, var_4_3 = pcall(require, "src.save")
	local var_4_4 = var_4_2 and var_4_3 and var_4_3.load and var_4_3.load() or nil
	local var_4_5 = var_4_4 and var_4_4.settings and var_4_4.settings.displayMode or nil

	if var_4_4 and var_4_4.settings then
		var_4_1 = var_4_4.settings.vsyncEnabled
	end

	if var_4_5 ~= "windowed" and var_4_5 ~= "fullscreen" and var_4_5 ~= "borderless" then
		var_4_5 = "borderless"
	end

	local var_4_6 = var_0_12.isBorderlessWindowMode(var_4_5)
	local var_4_7
	local var_4_8
	local var_4_9
	local var_4_10

	if var_4_6 and var_0_12.getPrimaryDesktopArea then
		var_4_7, var_4_8, var_4_9, var_4_10 = var_0_12.getPrimaryDesktopArea()

		if var_4_9 and var_4_10 and var_0_12.getBorderlessWindowBounds then
			var_4_7, var_4_8, var_4_9, var_4_10 = var_0_12.getBorderlessWindowBounds(var_4_7, var_4_8, var_4_9, var_4_10)
		end
	end

	arg_4_0.window.title = "SlotBound"
	arg_4_0.window.icon = "icon.png"
	arg_4_0.window.width = var_4_6 and (var_4_9 or 0) or 1280
	arg_4_0.window.height = var_4_6 and (var_4_10 or 0) or 720
	arg_4_0.window.highdpi = true
	arg_4_0.window.usedpiscale = false
	arg_4_0.window.msaa = 0
	arg_4_0.window.stencil = false
	arg_4_0.window.vsync = var_0_12.vsyncForMode(var_4_5, var_4_1)
	arg_4_0.window.resizable = false
	arg_4_0.window.fullscreen = var_0_12.isFullscreenMode(var_4_5)
	arg_4_0.window.fullscreentype = var_0_12.fullscreenTypeForMode(var_4_5)
	arg_4_0.window.borderless = var_4_6
	arg_4_0.window.centered = not var_4_6

	if var_4_6 then
		arg_4_0.window.x = var_4_7 or 0
		arg_4_0.window.y = var_4_8 or 0
	end

	arg_4_0.window.visible = true
	arg_4_0.identity = "slotbound"
	arg_4_0.appendidentity = true
end
