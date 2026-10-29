local var_0_0 = {}
local var_0_1 = "--slotbound-audio-runtime"
local var_0_2 = 65001
local var_0_3 = 1

local function var_0_4()
	for iter_1_0, iter_1_1 in pairs(_G and _G.arg or {}) do
		if iter_1_1 == var_0_1 then
			return true
		end
	end

	return false
end

local function var_0_5(arg_2_0)
	local var_2_0 = io.open(arg_2_0, "rb")

	if not var_2_0 then
		return false
	end

	var_2_0:close()

	return true
end

function var_0_0.relaunchBundledWindowsRuntimeBeforeWindow()
	if (love and love.system and love.system.getOS and love.system.getOS() or jit and jit.os or nil) ~= "Windows" or var_0_4() then
		return false
	end

	if not love or not love.filesystem or not love.filesystem.getSource then
		return false
	end

	local var_3_0 = love.filesystem.getSource()

	if not var_3_0 or var_3_0 == "" then
		return false
	end

	local var_3_1 = var_3_0 .. "/love/love.exe"

	if not var_0_5(var_3_1) then
		return false
	end

	local var_3_2, var_3_3 = pcall(require, "ffi")

	if not var_3_2 or not var_3_3 then
		return false
	end

	if not pcall(var_3_3.cdef, "    int32_t __stdcall MultiByteToWideChar(uint32_t codePage,\n      uint32_t flags, const char *input, int32_t inputLength,\n      uint16_t *output, int32_t outputLength);\n    void * __stdcall ShellExecuteW(void *window, const uint16_t *operation,\n      const uint16_t *file, const uint16_t *parameters,\n      const uint16_t *directory, int32_t showCommand);\n  ") then
		return false
	end

	local var_3_4, var_3_5 = pcall(var_3_3.load, "kernel32")
	local var_3_6, var_3_7 = pcall(var_3_3.load, "shell32")

	if not var_3_4 or not var_3_5 or not var_3_6 or not var_3_7 then
		return false
	end

	local function var_3_8(arg_4_0)
		arg_4_0 = tostring(arg_4_0 or "")

		local var_4_0 = var_3_5.MultiByteToWideChar(var_0_2, 0, arg_4_0, #arg_4_0, nil, 0)

		if var_4_0 <= 0 then
			return nil
		end

		local var_4_1 = var_3_3.new("uint16_t[?]", var_4_0 + 1)

		if var_3_5.MultiByteToWideChar(var_0_2, 0, arg_4_0, #arg_4_0, var_4_1, var_4_0) <= 0 then
			return nil
		end

		var_4_1[var_4_0] = 0

		return var_4_1
	end

	local var_3_9 = var_3_8("open")
	local var_3_10 = var_3_8(var_3_1)
	local var_3_11 = var_3_8("\"" .. var_3_0 .. "\" " .. var_0_1)
	local var_3_12 = var_3_8(var_3_0)

	if not var_3_9 or not var_3_10 or not var_3_11 or not var_3_12 then
		return false
	end

	local var_3_13 = var_3_7.ShellExecuteW(nil, var_3_9, var_3_10, var_3_11, var_3_12, var_0_3)

	return (tonumber(var_3_3.cast("intptr_t", var_3_13)) or 0) > 32
end

return var_0_0
