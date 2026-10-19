local var_0_0 = {
	isFullscreenMode = function(arg_1_0)
		return arg_1_0 == "fullscreen"
	end,
	isBorderlessWindowMode = function(arg_2_0)
		return arg_2_0 == "borderless"
	end,
	fullscreenTypeForMode = function(arg_3_0)
		return "desktop"
	end,
	isWindowsPlatform = function()
		return jit and jit.os == "Windows" or love and love.system and love.system.getOS and love.system.getOS() == "Windows"
	end,
	vsyncForMode = function(arg_5_0, arg_5_1)
		if arg_5_1 == false then
			return 0
		end

		return 1
	end,
	getPrimaryDesktopArea = function()
		local var_6_0, var_6_1 = pcall(require, "ffi")

		if not var_6_0 or not var_6_1 then
			return nil
		end

		if not pcall(var_6_1.cdef, "    int GetSystemMetrics(int nIndex);\n  ") then
			return nil
		end

		local var_6_2, var_6_3 = pcall(var_6_1.load, "user32")

		if not var_6_2 or not var_6_3 then
			return nil
		end

		local var_6_4 = tonumber(var_6_3.GetSystemMetrics(0))
		local var_6_5 = tonumber(var_6_3.GetSystemMetrics(1))

		if var_6_4 and var_6_5 and var_6_4 > 0 and var_6_5 > 0 then
			return 0, 0, var_6_4, var_6_5
		end

		return nil
	end,
	getBorderlessWindowBounds = function(arg_7_0, arg_7_1, arg_7_2, arg_7_3)
		arg_7_0 = tonumber(arg_7_0) or 0
		arg_7_1 = tonumber(arg_7_1) or 0
		arg_7_2 = tonumber(arg_7_2)
		arg_7_3 = tonumber(arg_7_3)

		if not arg_7_2 or not arg_7_3 or arg_7_2 <= 0 or arg_7_3 <= 0 then
			return arg_7_0, arg_7_1, arg_7_2, arg_7_3
		end

		return arg_7_0, arg_7_1, arg_7_2, arg_7_3
	end
}
local var_0_1
local var_0_2 = false

local function var_0_3()
	if var_0_2 then
		return var_0_1
	end

	var_0_2 = true

	local var_8_0, var_8_1 = pcall(require, "ffi")

	if not var_8_0 or not var_8_1 then
		return nil
	end

	if not pcall(var_8_1.cdef, "    void * __stdcall OpenInputDesktop(uint32_t flags, int32_t inherit,\n      uint32_t desiredAccess);\n    int32_t __stdcall GetUserObjectInformationW(void *object, int32_t index,\n      void *info, uint32_t infoLength, uint32_t *needed);\n    int32_t __stdcall CloseDesktop(void *desktop);\n  ") then
		return nil
	end

	local var_8_2, var_8_3 = pcall(var_8_1.load, "user32")

	if not var_8_2 or not var_8_3 then
		return nil
	end

	var_0_1 = {
		ffi = var_8_1,
		user32 = var_8_3
	}

	return var_0_1
end

function var_0_0.isInteractiveDesktopAvailable(arg_9_0)
	if arg_9_0 ~= "Windows" then
		return nil
	end

	local var_9_0 = var_0_3()

	if not var_9_0 then
		return nil
	end

	local var_9_1 = var_9_0.ffi
	local var_9_2 = var_9_0.user32
	local var_9_3 = 1
	local var_9_4 = 2
	local var_9_5 = var_9_2.OpenInputDesktop(0, 0, var_9_3)

	if var_9_5 == nil or var_9_5 == var_9_1.NULL then
		return false
	end

	local var_9_6 = var_9_1.new("uint32_t[1]")

	var_9_2.GetUserObjectInformationW(var_9_5, var_9_4, nil, 0, var_9_6)

	local var_9_7 = tonumber(var_9_6[0]) or 0
	local var_9_8

	if var_9_7 >= 2 and var_9_7 <= 1024 then
		local var_9_9 = var_9_1.new("uint16_t[?]", math.floor(var_9_7 / 2) + 1)

		if var_9_2.GetUserObjectInformationW(var_9_5, var_9_4, var_9_9, var_9_7, var_9_6) ~= 0 then
			local var_9_10 = {}

			for iter_9_0 = 0, math.floor(var_9_7 / 2) do
				local var_9_11 = tonumber(var_9_9[iter_9_0]) or 0

				if var_9_11 == 0 then
					break
				end

				if var_9_11 < 128 then
					var_9_10[#var_9_10 + 1] = string.char(var_9_11)
				end
			end

			var_9_8 = table.concat(var_9_10)
		end
	end

	var_9_2.CloseDesktop(var_9_5)

	if not var_9_8 or var_9_8 == "" then
		return nil
	end

	return var_9_8:lower() == "default"
end

return var_0_0
