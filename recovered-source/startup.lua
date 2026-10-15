local var_0_0, var_0_1, var_0_2 = ...

local function var_0_3(arg_1_0)
	error("SlotBound could not start its protected game package. " .. "Please reinstall an official copy. (" .. arg_1_0 .. ")", 0)
end

if not jit or jit.os ~= "Windows" or jit.arch ~= "x64" then
	var_0_3("Windows x64 is required")
end

if type(var_0_0) ~= "string" or #var_0_0 < 22 or #var_0_0 > 536870912 then
	var_0_3("invalid authenticated archive")
end

if type(var_0_1) ~= "string" or type(var_0_2) ~= "string" then
	var_0_3("invalid native executable path")
end

for iter_0_0, iter_0_1 in ipairs({
	var_0_1,
	var_0_2
}) do
	if iter_0_1 == "" or iter_0_1:find("\x00", 1, true) or not iter_0_1:match("^%a:[/\\]") and not iter_0_1:match("^[/\\][/\\]") then
		var_0_3("invalid native executable path")
	end
end

if type(package) ~= "table" or type(package.loaded) ~= "table" or type(package.preload) ~= "table" then
	var_0_3("Lua module loading is unavailable")
end

local function var_0_4(arg_2_0)
	if type(arg_2_0) ~= "string" then
		return false
	end

	return arg_2_0 == "src" or arg_2_0 == "main" or arg_2_0 == "conf" or arg_2_0:match("^src[./\\]") or arg_2_0:match("^main[./\\]") or arg_2_0:match("^conf[./\\]")
end

for iter_0_2, iter_0_3 in ipairs({
	package.loaded,
	package.preload
}) do
	for iter_0_4 in pairs(iter_0_3) do
		if var_0_4(iter_0_4) then
			var_0_3("project module loaded before authentication")
		end
	end
end

package.path, package.cpath = "", ""

local var_0_5 = require("love")

var_0_5._exe = true
arg = {
	[-1] = "embedded boot.lua",
	[-2] = var_0_1
}

local var_0_6 = require("love.boot")

if type(var_0_6) ~= "function" then
	var_0_3("official engine bootstrap is unavailable")
end

local var_0_7 = {}

for iter_0_5, iter_0_6 in pairs(package.preload) do
	var_0_7[iter_0_5] = iter_0_6
end

local var_0_8 = "slotbound-native-protected.zip"
local var_0_9 = false

function var_0_5.boot()
	if var_0_9 then
		var_0_3("protected bootstrap was already started")
	end

	var_0_9 = true

	require("love.filesystem")

	local var_3_0 = var_0_5.filesystem

	if not var_3_0 or not var_3_0.init or not var_3_0.setFused or not var_3_0.isFused or not var_3_0.setSymlinksEnabled or not var_3_0.setIdentity or not var_3_0.newFileData or not var_3_0.mount or not var_3_0.getRealDirectory or not var_3_0.getInfo or not var_3_0.read or not var_3_0.load then
		var_0_3("required filesystem support is unavailable")
	end

	var_3_0.init(var_0_1)
	var_3_0.setFused(true)
	var_3_0.setSymlinksEnabled(false)

	if not var_3_0.isFused() then
		var_0_3("native release mode is unavailable")
	end

	var_3_0.setIdentity("slotbound", true)
	var_0_5.setDeprecationOutput(false)

	var_0_5.arg.options.game.set = true
	var_0_5.arg.options.console.set = false

	var_0_5.arg.parseOptions()

	local var_3_1 = var_3_0.newFileData(var_0_0, var_0_8)

	var_0_0 = nil

	if not var_3_0.mount(var_3_1, "", false) then
		var_0_3("invalid authenticated archive")
	end

	local function var_3_2(arg_4_0)
		if var_3_0.getRealDirectory(arg_4_0) ~= var_0_8 then
			var_0_3("untrusted or missing package file: " .. arg_4_0)
		end
	end

	var_3_2("conf.lua")
	var_3_2("main.lua")
	var_3_2("release.flag")

	local var_3_3 = var_3_0.read("release.flag")

	if var_3_3 ~= "demo\n" and var_3_3 ~= "semi_demo\n" then
		var_0_3("invalid release edition lock")
	end

	local var_3_4 = package.loaders or package.searchers

	if type(var_3_4) ~= "table" then
		var_0_3("Lua module searchers are unavailable")
	end

	local var_3_5 = var_3_0.getInfo
	local var_3_6 = var_3_0.getRealDirectory
	local var_3_7 = var_3_0.load

	local function var_3_8(arg_5_0, ...)
		if type(arg_5_0) ~= "string" or arg_5_0 == "" or arg_5_0:find("[\\:%z]") or arg_5_0:sub(1, 1) == "/" or arg_5_0:sub(-1) == "/" or arg_5_0:find("//", 1, true) then
			var_0_3("invalid protected code path")
		end

		for iter_5_0 in arg_5_0:gmatch("[^/]+") do
			if iter_5_0 == "." or iter_5_0 == ".." then
				var_0_3("invalid protected code path")
			end
		end

		if var_3_6(arg_5_0) ~= var_0_8 then
			var_0_3("untrusted or missing code file: " .. arg_5_0)
		end

		return var_3_7(arg_5_0, ...)
	end

	local function var_3_9(arg_6_0)
		if type(arg_6_0) ~= "string" or arg_6_0:find("[^%w_%.]") or arg_6_0:find("..", 1, true) or arg_6_0:sub(1, 1) == "." or arg_6_0:sub(-1) == "." then
			var_0_3("invalid project module name")
		end

		if not var_0_4(arg_6_0) and var_0_7[arg_6_0] then
			return var_0_7[arg_6_0]
		end

		local var_6_0 = arg_6_0:gsub("%.", "/")

		for iter_6_0, iter_6_1 in ipairs({
			var_6_0 .. ".lua",
			var_6_0 .. "/init.lua"
		}) do
			if var_3_5(iter_6_1, "file") then
				if var_3_6(iter_6_1) ~= var_0_8 then
					var_0_3("untrusted project module: " .. arg_6_0)
				end

				local var_6_1 = var_3_8(iter_6_1)

				if type(var_6_1) ~= "function" then
					var_0_3("invalid project module: " .. arg_6_0)
				end

				return var_6_1
			end
		end

		var_0_3("missing protected module: " .. arg_6_0)
	end

	for iter_3_0 = #var_3_4, 1, -1 do
		var_3_4[iter_3_0] = nil
	end

	var_3_4[1] = var_3_9
	var_3_0.load = var_3_8
	loadfile = var_3_8

	function dofile(arg_7_0)
		return assert(var_3_8(arg_7_0))()
	end

	function var_3_0.getSource()
		return var_0_1
	end

	function var_3_0.getSourceBaseDirectory()
		return var_0_2
	end
end

return var_0_6
