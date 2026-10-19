local var_0_0 = {}
local var_0_1 = "SBPKG001"
local var_0_2 = 36
local var_0_3 = 536870912 + var_0_2

local function var_0_4(arg_1_0)
	error("SlotBound could not open its protected game package. " .. "Please reinstall an official copy. (" .. arg_1_0 .. ")", 0)
end

local function var_0_5()
	return jit and jit.os == "Windows" and jit.arch == "x64"
end

local function var_0_6(arg_3_0, arg_3_1)
	local var_3_0 = arg_3_0.new("uint16_t[?]", #arg_3_1 + 1)

	for iter_3_0 = 1, #arg_3_1 do
		var_3_0[iter_3_0 - 1] = arg_3_1:byte(iter_3_0)
	end

	return var_3_0
end

local function var_0_7()
	if not var_0_5() then
		var_0_4("Windows x64 is required")
	end

	local var_4_0, var_4_1 = pcall(require, "ffi")

	if not var_4_0 then
		var_0_4("Windows cryptography is unavailable")
	end

	if not pcall(var_4_1.typeof, "SBP_AUTH_INFO") then
		var_4_1.cdef("      typedef struct {\n        uint32_t cbSize;\n        uint32_t dwInfoVersion;\n        unsigned char *pbNonce;\n        uint32_t cbNonce;\n        unsigned char *pbAuthData;\n        uint32_t cbAuthData;\n        unsigned char *pbTag;\n        uint32_t cbTag;\n        unsigned char *pbMacContext;\n        uint32_t cbMacContext;\n        uint32_t cbAAD;\n        uint64_t cbData;\n        uint32_t dwFlags;\n      } SBP_AUTH_INFO;\n      int32_t BCryptOpenAlgorithmProvider(void **algorithm,\n        const uint16_t *identifier, const uint16_t *implementation,\n        uint32_t flags);\n      int32_t BCryptSetProperty(void *object, const uint16_t *property,\n        unsigned char *input, uint32_t inputSize, uint32_t flags);\n      int32_t BCryptGetProperty(void *object, const uint16_t *property,\n        unsigned char *output, uint32_t outputSize, uint32_t *resultSize,\n        uint32_t flags);\n      int32_t BCryptGenerateSymmetricKey(void *algorithm, void **key,\n        unsigned char *keyObject, uint32_t keyObjectSize,\n        unsigned char *secret, uint32_t secretSize, uint32_t flags);\n      int32_t BCryptDecrypt(void *key, unsigned char *input,\n        uint32_t inputSize, void *paddingInfo, unsigned char *iv,\n        uint32_t ivSize, unsigned char *output, uint32_t outputSize,\n        uint32_t *resultSize, uint32_t flags);\n      int32_t BCryptDestroyKey(void *key);\n      int32_t BCryptCloseAlgorithmProvider(void *algorithm, uint32_t flags);\n      uint32_t __stdcall GetSystemDirectoryW(uint16_t *buffer, uint32_t size);\n      void * __stdcall LoadLibraryExW(const uint16_t *name,\n        void *reserved, uint32_t flags);\n      void * __stdcall GetProcAddress(void *library, const char *name);\n      int __stdcall FreeLibrary(void *library);\n    ")
	end

	if var_4_1.sizeof("SBP_AUTH_INFO") ~= 88 then
		var_0_4("unsupported cryptography ABI")
	end

	local var_4_2, var_4_3 = pcall(var_4_1.load, "kernel32")

	if not var_4_2 then
		var_0_4("Windows library loading is unavailable")
	end

	local var_4_4 = var_4_1.new("uint16_t[32768]")
	local var_4_5 = tonumber(var_4_3.GetSystemDirectoryW(var_4_4, 32768))
	local var_4_6 = "\\bcrypt.dll"

	if var_4_5 < 1 or var_4_5 + #var_4_6 >= 32768 then
		var_0_4("Windows system directory is unavailable")
	end

	for iter_4_0 = 1, #var_4_6 do
		var_4_4[var_4_5 + iter_4_0 - 1] = var_4_6:byte(iter_4_0)
	end

	var_4_4[var_4_5 + #var_4_6] = 0

	local var_4_7 = var_4_3.LoadLibraryExW(var_4_4, nil, 2048)

	if var_4_7 == nil then
		var_0_4("system cryptography is unavailable")
	end

	local var_4_8 = {
		_library = var_4_1.gc(var_4_7, var_4_3.FreeLibrary)
	}
	local var_4_9 = {
		BCryptGetProperty = "int32_t (*)(void *, const uint16_t *, unsigned char *, uint32_t, uint32_t *, uint32_t)",
		BCryptDecrypt = "int32_t (*)(void *, unsigned char *, uint32_t, void *, unsigned char *, uint32_t, unsigned char *, uint32_t, uint32_t *, uint32_t)",
		BCryptSetProperty = "int32_t (*)(void *, const uint16_t *, unsigned char *, uint32_t, uint32_t)",
		BCryptDestroyKey = "int32_t (*)(void *)",
		BCryptOpenAlgorithmProvider = "int32_t (*)(void **, const uint16_t *, const uint16_t *, uint32_t)",
		BCryptCloseAlgorithmProvider = "int32_t (*)(void *, uint32_t)",
		BCryptGenerateSymmetricKey = "int32_t (*)(void *, void **, unsigned char *, uint32_t, unsigned char *, uint32_t, uint32_t)"
	}

	for iter_4_1, iter_4_2 in pairs(var_4_9) do
		local var_4_10 = var_4_3.GetProcAddress(var_4_7, iter_4_1)

		if var_4_10 == nil then
			var_0_4("required system cryptography is unavailable")
		end

		var_4_8[iter_4_1] = var_4_1.cast(iter_4_2, var_4_10)
	end

	return var_4_1, var_4_8
end

local function var_0_8(arg_5_0, arg_5_1)
	if type(arg_5_1) ~= "string" or #arg_5_1 ~= 32 then
		var_0_4("invalid package key")
	end

	if type(arg_5_0) ~= "string" or #arg_5_0 <= var_0_2 then
		var_0_4("truncated package")
	end

	if #arg_5_0 > var_0_3 then
		var_0_4("package exceeds size limit")
	end

	if arg_5_0:sub(1, #var_0_1) ~= var_0_1 then
		var_0_4("unsupported package format")
	end
end

function var_0_0.decrypt(arg_6_0, arg_6_1)
	var_0_8(arg_6_0, arg_6_1)

	local var_6_0, var_6_1 = var_0_7()
	local var_6_2 = var_6_0.new("void *[1]")
	local var_6_3 = var_6_0.new("void *[1]")
	local var_6_4 = var_6_0.new("unsigned char[32]")
	local var_6_5
	local var_6_6
	local var_6_7 = #arg_6_0 - var_0_2

	var_6_0.copy(var_6_4, arg_6_1, 32)

	arg_6_1 = nil

	local function var_6_8(arg_7_0, arg_7_1)
		if arg_7_0 ~= 0 then
			var_0_4(arg_7_1)
		end
	end

	local function var_6_9()
		if var_6_3[0] ~= nil then
			var_6_1.BCryptDestroyKey(var_6_3[0])

			var_6_3[0] = nil
		end

		if var_6_6 then
			var_6_0.fill(var_6_6, var_6_0.sizeof(var_6_6), 0)
		end

		var_6_0.fill(var_6_4, var_6_0.sizeof(var_6_4), 0)

		if var_6_5 then
			var_6_0.fill(var_6_5, var_6_7, 0)
		end

		if var_6_2[0] ~= nil then
			var_6_1.BCryptCloseAlgorithmProvider(var_6_2[0], 0)

			var_6_2[0] = nil
		end
	end

	local var_6_10, var_6_11 = pcall(function()
		var_6_8(var_6_1.BCryptOpenAlgorithmProvider(var_6_2, var_0_6(var_6_0, "AES"), nil, 0), "AES provider is unavailable")

		local var_9_0 = var_0_6(var_6_0, "ChainingModeGCM")

		var_6_8(var_6_1.BCryptSetProperty(var_6_2[0], var_0_6(var_6_0, "ChainingMode"), var_6_0.cast("unsigned char *", var_9_0), var_6_0.sizeof(var_9_0), 0), "AES-GCM is unavailable")

		local var_9_1 = var_6_0.new("uint32_t[1]")
		local var_9_2 = var_6_0.new("uint32_t[1]")

		var_6_8(var_6_1.BCryptGetProperty(var_6_2[0], var_0_6(var_6_0, "ObjectLength"), var_6_0.cast("unsigned char *", var_9_1), var_6_0.sizeof(var_9_1), var_9_2, 0), "invalid AES provider")

		if var_9_2[0] ~= var_6_0.sizeof(var_9_1) or var_9_1[0] < 1 or var_9_1[0] > 1048576 then
			var_0_4("invalid AES key allocation")
		end

		var_6_6 = var_6_0.new("unsigned char[?]", var_9_1[0])

		var_6_8(var_6_1.BCryptGenerateSymmetricKey(var_6_2[0], var_6_3, var_6_6, var_9_1[0], var_6_4, 32, 0), "AES key setup failed")
		var_6_0.fill(var_6_4, var_6_0.sizeof(var_6_4), 0)

		local var_9_3 = var_6_0.new("unsigned char[12]")
		local var_9_4 = var_6_0.new("unsigned char[16]")
		local var_9_5 = var_6_0.new("unsigned char[8]")
		local var_9_6 = var_6_0.cast("const unsigned char *", arg_6_0)

		var_6_0.copy(var_9_3, var_9_6 + 8, 12)
		var_6_0.copy(var_9_4, var_9_6 + 20, 16)
		var_6_0.copy(var_9_5, var_9_6, 8)

		local var_9_7 = var_6_0.new("SBP_AUTH_INFO[1]")

		var_9_7[0].cbSize = var_6_0.sizeof("SBP_AUTH_INFO")
		var_9_7[0].dwInfoVersion = 1
		var_9_7[0].pbNonce, var_9_7[0].cbNonce = var_9_3, 12
		var_9_7[0].pbAuthData, var_9_7[0].cbAuthData = var_9_5, 8
		var_9_7[0].pbTag, var_9_7[0].cbTag = var_9_4, 16
		var_6_5 = var_6_0.new("unsigned char[?]", var_6_7)

		var_6_8(var_6_1.BCryptDecrypt(var_6_3[0], var_6_0.cast("unsigned char *", var_9_6 + var_0_2), var_6_7, var_9_7, nil, 0, var_6_5, var_6_7, var_9_2, 0), "package authentication failed")

		if var_9_2[0] ~= var_6_7 then
			var_0_4("invalid decrypted length")
		end

		return var_6_0.string(var_6_5, var_6_7)
	end)

	var_6_9()

	if not var_6_10 then
		error(var_6_11, 0)
	end

	return var_6_11
end

local function var_0_9(arg_10_0)
	return type(arg_10_0) == "string" and arg_10_0:match("^[%w_-][%w_.-]*$") and not arg_10_0:find("..", 1, true)
end

local function var_0_10(arg_11_0, arg_11_1)
	if type(arg_11_0) ~= "string" or type(arg_11_1) ~= "string" then
		return false
	end

	local function var_11_0(arg_12_0)
		return arg_12_0:gsub("\\", "/"):gsub("/+$", ""):lower()
	end

	return var_11_0(arg_11_0) == var_11_0(arg_11_1)
end

local function var_0_11(arg_13_0, arg_13_1, arg_13_2)
	local var_13_0 = arg_13_0.getRealDirectory(arg_13_1)

	if not var_0_10(var_13_0, arg_13_2) then
		var_0_4("untrusted or missing package file: " .. arg_13_1)
	end
end

local function var_0_12(arg_14_0, arg_14_1)
	local var_14_0 = package.loaders or package.searchers

	if type(var_14_0) ~= "table" then
		var_0_4("Lua module loading is unavailable")
	end

	local var_14_1 = arg_14_0.getInfo
	local var_14_2 = arg_14_0.getRealDirectory
	local var_14_3 = arg_14_0.load

	local function var_14_4(arg_15_0)
		if type(arg_15_0) ~= "string" then
			return nil
		end

		local var_15_0 = arg_15_0 == "src" or arg_15_0:match("^src[./\\]")

		if arg_15_0 ~= "main" and not var_15_0 then
			return nil
		end

		if arg_15_0:find("[^%w_%.]") or arg_15_0:find("..", 1, true) or arg_15_0:sub(-1) == "." then
			var_0_4("invalid project module name")
		end

		local var_15_1 = arg_15_0:gsub("%.", "/")

		for iter_15_0, iter_15_1 in ipairs({
			var_15_1 .. ".lua",
			var_15_1 .. "/init.lua"
		}) do
			if var_14_1(iter_15_1, "file") then
				if not var_0_10(var_14_2(iter_15_1), arg_14_1) then
					var_0_4("untrusted project module: " .. arg_15_0)
				end

				local var_15_2 = var_14_3(iter_15_1)

				if type(var_15_2) ~= "function" then
					var_0_4("invalid project module: " .. arg_15_0)
				end

				return var_15_2
			end
		end

		var_0_4("missing protected module: " .. arg_15_0)
	end

	table.insert(var_14_0, 1, var_14_4)

	return function()
		for iter_16_0 = #var_14_0, 1, -1 do
			if var_14_0[iter_16_0] == var_14_4 then
				table.remove(var_14_0, iter_16_0)
			end
		end
	end
end

function var_0_0.boot(arg_17_0)
	if type(arg_17_0) ~= "table" then
		var_0_4("missing package configuration")
	end

	if not var_0_5() then
		var_0_4("Windows x64 is required")
	end

	local var_17_0 = love and love.filesystem

	if not var_17_0 then
		require("love.filesystem")

		var_17_0 = love and love.filesystem
	end

	if not var_17_0 or not var_17_0.isFused or not var_17_0.getSource or not var_17_0.getRealDirectory or not var_17_0.getInfo or not var_17_0.read or not var_17_0.newFileData or not var_17_0.mount or not var_17_0.setIdentity or not var_17_0.load then
		var_0_4("required filesystem support is unavailable")
	end

	if not var_17_0.isFused() and arg_17_0.allowUnfused ~= true then
		var_0_4("run the official Slotbound executable")
	end

	local var_17_1 = arg_17_0.payload or "content.sbpack"
	local var_17_2 = arg_17_0.archiveName or "slotbound-protected.zip"

	if not var_0_9(var_17_1) or not var_0_9(var_17_2) or var_17_1 == var_17_2 then
		var_0_4("invalid package filename")
	end

	var_17_0.setIdentity("slotbound", true)
	var_0_11(var_17_0, var_17_1, var_17_0.getSource())

	local var_17_3 = var_17_0.getInfo(var_17_1, "file")

	if not var_17_3 or type(var_17_3.size) ~= "number" or var_17_3.size <= var_0_2 or var_17_3.size > var_0_3 then
		var_0_4("invalid package size")
	end

	local var_17_4 = var_17_0.read(var_17_1)

	if type(var_17_4) ~= "string" or #var_17_4 ~= var_17_3.size then
		var_0_4("could not read the complete package")
	end

	local var_17_5 = arg_17_0.key

	arg_17_0.key = nil

	local var_17_6 = var_0_0.decrypt(var_17_4, var_17_5)
	local var_17_7
	local var_17_8 = var_17_0.newFileData(var_17_6, var_17_2)
	local var_17_9

	if not var_17_0.mount(var_17_8, "", false) then
		var_0_4("invalid protected archive")
	end

	local var_17_10
	local var_17_11, var_17_12 = pcall(function()
		var_0_11(var_17_0, "conf.lua", var_17_2)
		var_0_11(var_17_0, "main.lua", var_17_2)
		var_0_11(var_17_0, "release.flag", var_17_2)

		var_17_10 = var_0_12(var_17_0, var_17_2)

		local var_18_0 = var_17_0.load("conf.lua")

		if type(var_18_0) ~= "function" then
			var_0_4("invalid protected configuration")
		end

		var_18_0()

		return true
	end)

	if not var_17_11 then
		if var_17_10 then
			var_17_10()
		end

		if var_17_0.unmount then
			pcall(var_17_0.unmount, var_17_8)
		end

		error(var_17_12, 0)
	end

	return var_17_12
end

return var_0_0
