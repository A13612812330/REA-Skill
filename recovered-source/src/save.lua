local var_0_0 = require("src.data.safe_lua_table")
local var_0_1 = {}
local var_0_2 = "SlotBound"
local var_0_3 = "save.dat"
local var_0_4 = "save.bak"
local var_0_5 = "save.tmp"
local var_0_6 = "save_fallback.dat"
local var_0_7 = "save_fallback.bak"
local var_0_8 = "save_fallback.tmp"
local var_0_9 = 16777216
local var_0_10 = "legacy_appdata_migrated_v1"
local var_0_11

local function var_0_12()
	if love and love.timer and love.timer.getTime then
		local var_1_0, var_1_1 = pcall(love.timer.getTime)

		if var_1_0 and tonumber(var_1_1) then
			return tonumber(var_1_1)
		end
	end

	return os.clock()
end

local function var_0_13(arg_2_0, arg_2_1, arg_2_2)
	local var_2_0 = rawget(_G, "RuntimeDiagnostics")

	if not var_2_0 or not var_2_0.recordOperation then
		return
	end

	pcall(var_2_0.recordOperation, arg_2_0, var_0_12() - arg_2_1, arg_2_2)
end

local function var_0_14()
	return jit and jit.os == "Windows" or love.system and love.system.getOS and love.system.getOS() == "Windows"
end

local function var_0_15()
	return jit and jit.os == "OSX" or love.system and love.system.getOS and love.system.getOS() == "OS X"
end

local function var_0_16(arg_5_0, arg_5_1)
	if not arg_5_0 or arg_5_0 == "" then
		return arg_5_1
	end

	if not arg_5_1 or arg_5_1 == "" then
		return arg_5_0
	end

	if arg_5_0:sub(-1) == "\\" then
		return arg_5_0 .. arg_5_1
	end

	return arg_5_0 .. "\\" .. arg_5_1
end

local function var_0_17(arg_6_0, arg_6_1)
	if not arg_6_0 or arg_6_0 == "" then
		return arg_6_1
	end

	if not arg_6_1 or arg_6_1 == "" then
		return arg_6_0
	end

	if arg_6_0:sub(-1) == "/" then
		return arg_6_0 .. arg_6_1
	end

	return arg_6_0 .. "/" .. arg_6_1
end

local function var_0_18(arg_7_0, arg_7_1)
	arg_7_1 = tostring(arg_7_1 or "")

	local var_7_0 = {}
	local var_7_1 = 1
	local var_7_2 = #arg_7_1

	while var_7_1 <= var_7_2 do
		local var_7_3 = arg_7_1:byte(var_7_1)
		local var_7_4

		if var_7_3 < 128 then
			var_7_4 = var_7_3
			var_7_1 = var_7_1 + 1
		elseif var_7_3 < 224 then
			local var_7_5 = arg_7_1:byte(var_7_1 + 1)

			if not var_7_5 then
				break
			end

			var_7_4 = var_7_3 % 32 * 64 + var_7_5 % 64
			var_7_1 = var_7_1 + 2
		elseif var_7_3 < 240 then
			local var_7_6 = arg_7_1:byte(var_7_1 + 1)
			local var_7_7 = arg_7_1:byte(var_7_1 + 2)

			if not var_7_6 or not var_7_7 then
				break
			end

			var_7_4 = var_7_3 % 16 * 4096 + var_7_6 % 64 * 64 + var_7_7 % 64
			var_7_1 = var_7_1 + 3
		else
			local var_7_8 = arg_7_1:byte(var_7_1 + 1)
			local var_7_9 = arg_7_1:byte(var_7_1 + 2)
			local var_7_10 = arg_7_1:byte(var_7_1 + 3)

			if not var_7_8 or not var_7_9 or not var_7_10 then
				break
			end

			var_7_4 = var_7_3 % 8 * 262144 + var_7_8 % 64 * 4096 + var_7_9 % 64 * 64 + var_7_10 % 64
			var_7_1 = var_7_1 + 4
		end

		if var_7_4 <= 65535 then
			var_7_0[#var_7_0 + 1] = var_7_4
		else
			local var_7_11 = var_7_4 - 65536
			local var_7_12 = 55296 + math.floor(var_7_11 / 1024)
			local var_7_13 = 56320 + var_7_11 % 1024

			var_7_0[#var_7_0 + 1] = var_7_12
			var_7_0[#var_7_0 + 1] = var_7_13
		end
	end

	local var_7_14 = arg_7_0.new("WCHAR[?]", #var_7_0 + 1)

	for iter_7_0 = 1, #var_7_0 do
		var_7_14[iter_7_0 - 1] = var_7_0[iter_7_0]
	end

	var_7_14[#var_7_0] = 0

	return var_7_14
end

local function var_0_19()
	if var_0_1._documentsDir ~= nil then
		return var_0_1._documentsDir
	end

	local var_8_0

	if var_0_14() then
		local var_8_1, var_8_2 = pcall(require, "ffi")

		if var_8_1 and var_8_2 then
			pcall(function()
				var_8_2.cdef("                    typedef unsigned long DWORD;\n                    typedef unsigned short WCHAR;\n                    typedef const WCHAR* LPCWSTR;\n                    typedef void* HANDLE;\n                    typedef void* HWND;\n                    typedef struct _GUID {\n                        unsigned long  Data1;\n                        unsigned short Data2;\n                        unsigned short Data3;\n                        unsigned char  Data4[8];\n                    } GUID;\n                    long SHGetKnownFolderPath(const GUID* rfid, DWORD dwFlags, HANDLE hToken, WCHAR** ppszPath);\n                    void CoTaskMemFree(void* pv);\n                    int SHCreateDirectoryExW(HWND hwnd, LPCWSTR pszPath, void* psa);\n\n                    typedef struct _iobuf FILE;\n                    FILE* _wfopen(LPCWSTR filename, LPCWSTR mode);\n                    size_t fwrite(const void* ptr, size_t size, size_t nmemb, FILE* stream);\n                    size_t fread(void* ptr, size_t size, size_t nmemb, FILE* stream);\n                    int fseek(FILE* stream, long offset, int origin);\n                    long ftell(FILE* stream);\n                    int fclose(FILE* stream);\n                ")
			end)

			local var_8_3 = var_8_2.load("shell32")
			local var_8_4 = var_8_2.load("ole32")
			local var_8_5 = var_8_2.load("msvcrt")
			local var_8_6 = var_8_2.new("GUID", {
				Data2 = 9103,
				Data1 = 4258503376,
				Data3 = 18095,
				Data4 = {
					173,
					180,
					108,
					133,
					72,
					3,
					105,
					199
				}
			})

			local function var_8_7(arg_10_0)
				if arg_10_0 <= 127 then
					return string.char(arg_10_0)
				elseif arg_10_0 <= 2047 then
					return string.char(192 + math.floor(arg_10_0 / 64), 128 + arg_10_0 % 64)
				elseif arg_10_0 <= 65535 then
					return string.char(224 + math.floor(arg_10_0 / 4096), 128 + math.floor(arg_10_0 / 64) % 64, 128 + arg_10_0 % 64)
				else
					return string.char(240 + math.floor(arg_10_0 / 262144), 128 + math.floor(arg_10_0 / 4096) % 64, 128 + math.floor(arg_10_0 / 64) % 64, 128 + arg_10_0 % 64)
				end
			end

			local function var_8_8(arg_11_0)
				if arg_11_0 == nil then
					return nil
				end

				local var_11_0 = {}
				local var_11_1 = 0

				while arg_11_0[var_11_1] ~= 0 do
					local var_11_2 = tonumber(arg_11_0[var_11_1])
					local var_11_3 = var_11_2

					if var_11_2 >= 55296 and var_11_2 <= 56319 then
						local var_11_4 = tonumber(arg_11_0[var_11_1 + 1])

						if var_11_4 and var_11_4 >= 56320 and var_11_4 <= 57343 then
							local var_11_5 = var_11_2 - 55296
							local var_11_6 = var_11_4 - 56320

							var_11_3 = 65536 + var_11_5 * 1024 + var_11_6
							var_11_1 = var_11_1 + 1
						end
					end

					var_11_0[#var_11_0 + 1] = var_8_7(var_11_3)
					var_11_1 = var_11_1 + 1
				end

				return table.concat(var_11_0)
			end

			local function var_8_9(arg_12_0)
				if not arg_12_0 or arg_12_0 == "" then
					return false
				end

				local var_12_0 = var_0_18(var_8_2, arg_12_0)
				local var_12_1 = var_8_3.SHCreateDirectoryExW(nil, var_12_0, nil)

				return var_12_1 == 0 or var_12_1 == 183
			end

			local function var_8_10(arg_13_0)
				local var_13_0 = var_0_18(var_8_2, arg_13_0)
				local var_13_1 = var_0_18(var_8_2, "rb")
				local var_13_2 = var_8_5._wfopen(var_13_0, var_13_1)

				if var_13_2 == nil then
					return nil
				end

				var_8_5.fseek(var_13_2, 0, 2)

				local var_13_3 = tonumber(var_8_5.ftell(var_13_2)) or 0

				var_8_5.fseek(var_13_2, 0, 0)

				if var_13_3 < 0 or var_13_3 > var_0_9 then
					var_8_5.fclose(var_13_2)

					return nil
				end

				if var_13_3 == 0 then
					var_8_5.fclose(var_13_2)

					return ""
				end

				local var_13_4 = var_8_2.new("uint8_t[?]", var_13_3)
				local var_13_5 = tonumber(var_8_5.fread(var_13_4, 1, var_13_3, var_13_2)) or 0

				var_8_5.fclose(var_13_2)

				if var_13_5 <= 0 then
					return nil
				end

				return var_8_2.string(var_13_4, var_13_5)
			end

			local function var_8_11(arg_14_0, arg_14_1)
				local var_14_0 = var_0_18(var_8_2, arg_14_0)
				local var_14_1 = var_0_18(var_8_2, "wb")
				local var_14_2 = var_8_5._wfopen(var_14_0, var_14_1)

				if var_14_2 == nil then
					return false
				end

				arg_14_1 = tostring(arg_14_1 or "")

				local var_14_3 = #arg_14_1

				if var_14_3 > 0 then
					local var_14_4 = tonumber(var_8_5.fwrite(arg_14_1, 1, var_14_3, var_14_2)) or 0
					local var_14_5 = var_8_5.fclose(var_14_2)

					return var_14_4 == var_14_3 and var_14_5 == 0
				end

				return var_8_5.fclose(var_14_2) == 0
			end

			local var_8_12 = var_8_2.new("WCHAR*[1]")

			if var_8_3.SHGetKnownFolderPath(var_8_6, 0, nil, var_8_12) == 0 and var_8_12[0] ~= nil then
				var_8_0 = var_8_8(var_8_12[0])

				var_8_4.CoTaskMemFree(var_8_12[0])

				if var_8_0 and var_8_0 ~= "" then
					function var_0_1._ensureDir(arg_15_0)
						return var_8_9(arg_15_0)
					end

					function var_0_1._readFile(arg_16_0)
						return var_8_10(arg_16_0)
					end

					function var_0_1._writeFile(arg_17_0, arg_17_1)
						return var_8_11(arg_17_0, arg_17_1)
					end
				end
			end
		end
	end

	var_0_1._documentsDir = var_8_0

	return var_8_0
end

local function var_0_20(arg_18_0, arg_18_1, arg_18_2)
	if not arg_18_1 or arg_18_1 == "" then
		return
	end

	if arg_18_2[arg_18_1] then
		return
	end

	arg_18_2[arg_18_1] = true

	table.insert(arg_18_0, arg_18_1)
end

local function var_0_21(arg_19_0)
	if not arg_19_0 or arg_19_0 == "" then
		return false
	end

	local var_19_0 = arg_19_0:gsub("'", "'\\''")
	local var_19_1 = os.execute("mkdir -p '" .. var_19_0 .. "'")

	return var_19_1 == 0 or var_19_1 == true
end

local function var_0_22()
	local var_20_0 = {}
	local var_20_1 = {}

	if not var_0_14() then
		local var_20_2 = os.getenv("HOME") or ""

		if var_20_2 ~= "" then
			local var_20_3 = var_0_17(var_20_2, "Documents")

			var_0_20(var_20_0, var_20_3, var_20_1)
		end

		if not var_0_1._ensureDir then
			var_0_1._ensureDir = var_0_21
		end

		return var_20_0
	end

	local var_20_4 = var_0_19()

	if var_20_4 and var_20_4 ~= "" then
		var_0_20(var_20_0, var_20_4, var_20_1)
	end

	local var_20_5 = {}
	local var_20_6 = {}

	var_0_20(var_20_5, os.getenv("OneDrive"), var_20_6)
	var_0_20(var_20_5, os.getenv("OneDriveConsumer"), var_20_6)
	var_0_20(var_20_5, os.getenv("OneDriveCommercial"), var_20_6)
	var_0_20(var_20_5, os.getenv("USERPROFILE"), var_20_6)

	for iter_20_0, iter_20_1 in ipairs(var_20_5) do
		var_0_20(var_20_0, iter_20_1 .. "\\Documents", var_20_1)
		var_0_20(var_20_0, iter_20_1 .. "\\문서", var_20_1)
	end

	return var_20_0
end

local function var_0_23(arg_21_0)
	if var_0_1._readFile then
		return var_0_1._readFile(arg_21_0)
	end

	local var_21_0 = io.open(arg_21_0, "rb")

	if not var_21_0 then
		return nil
	end

	local var_21_1 = var_21_0:read(var_0_9 + 1)

	var_21_0:close()

	if var_21_1 and #var_21_1 > var_0_9 then
		return nil
	end

	return var_21_1
end

local function var_0_24(arg_22_0, arg_22_1)
	if var_0_1._writeFile then
		return var_0_1._writeFile(arg_22_0, arg_22_1)
	end

	local var_22_0 = io.open(arg_22_0, "wb")

	if not var_22_0 then
		return false
	end

	local var_22_1 = pcall(function()
		assert(var_22_0:write(arg_22_1))
		assert(var_22_0:flush())
	end)
	local var_22_2 = pcall(function()
		assert(var_22_0:close())
	end)

	return var_22_1 and var_22_2
end

local function var_0_25(arg_25_0, arg_25_1)
	if var_0_14() then
		return var_0_16(arg_25_0, arg_25_1)
	else
		return var_0_17(arg_25_0, arg_25_1)
	end
end

local function var_0_26(arg_26_0)
	if type(arg_26_0) ~= "table" then
		return false
	end

	for iter_26_0, iter_26_1 in ipairs({
		"upgrades",
		"unlockedStages",
		"unlockedDifficulties",
		"clearedDifficulties",
		"newStages",
		"originiteFirstReachedGates",
		"runSaves",
		"settings"
	}) do
		if arg_26_0[iter_26_1] ~= nil and type(arg_26_0[iter_26_1]) ~= "table" then
			return false
		end
	end

	if arg_26_0.originite ~= nil and (type(arg_26_0.originite) ~= "number" or arg_26_0.originite < 0) then
		return false
	end

	local var_26_0 = arg_26_0.settings

	if var_26_0 then
		for iter_26_2, iter_26_3 in ipairs({
			"masterVolume",
			"sfxVolume",
			"bgmVolume"
		}) do
			local var_26_1 = var_26_0[iter_26_3]

			if var_26_1 ~= nil and (type(var_26_1) ~= "number" or var_26_1 < 0 or var_26_1 > 1) then
				return false
			end
		end

		for iter_26_4, iter_26_5 in ipairs({
			"displayMode",
			"language"
		}) do
			if var_26_0[iter_26_5] ~= nil and type(var_26_0[iter_26_5]) ~= "string" then
				return false
			end
		end

		for iter_26_6, iter_26_7 in ipairs({
			"tutorialEnabled",
			"vsyncEnabled"
		}) do
			if var_26_0[iter_26_7] ~= nil and type(var_26_0[iter_26_7]) ~= "boolean" then
				return false
			end
		end

		if var_26_0.controls ~= nil and type(var_26_0.controls) ~= "table" then
			var_26_0.controls = nil
		end
	end

	for iter_26_8, iter_26_9 in ipairs({
		"unlockedDifficulties",
		"clearedDifficulties"
	}) do
		for iter_26_10, iter_26_11 in pairs(arg_26_0[iter_26_9] or {}) do
			if type(iter_26_11) ~= "table" then
				return false
			end
		end
	end

	return true
end

local function var_0_27(arg_27_0)
	if type(arg_27_0) ~= "string" or arg_27_0 == "" then
		return nil
	end

	local var_27_0 = var_0_0.decode(arg_27_0)

	if not var_0_26(var_27_0) then
		return nil
	end

	return var_27_0
end

local function var_0_28(arg_28_0)
	if type(arg_28_0) ~= "table" then
		return 0
	end

	local var_28_0 = 0

	for iter_28_0, iter_28_1 in pairs(arg_28_0) do
		if iter_28_1 == true then
			var_28_0 = var_28_0 + 1
		elseif type(iter_28_1) == "table" then
			var_28_0 = var_28_0 + var_0_28(iter_28_1)
		end
	end

	return var_28_0
end

local function var_0_29(arg_29_0)
	if type(arg_29_0) ~= "table" then
		return -1
	end

	return math.max(0, tonumber(arg_29_0.originite or 0) or 0) + var_0_28(arg_29_0.upgrades) * 10000 + var_0_28(arg_29_0.clearedDifficulties) * 5000 + var_0_28(arg_29_0.unlockedStages) * 1000 + var_0_28(arg_29_0.unlockedDifficulties) * 500
end

local function var_0_30()
	if not var_0_14() then
		return nil
	end

	local var_30_0 = os.getenv("APPDATA")

	if not var_30_0 or var_30_0 == "" then
		return nil
	end

	local var_30_1 = var_0_16(var_30_0, "slotbound")
	local var_30_2
	local var_30_3 = -1

	for iter_30_0, iter_30_1 in ipairs({
		var_0_6,
		var_0_7
	}) do
		local var_30_4 = var_0_27(var_0_23(var_0_16(var_30_1, iter_30_1)))
		local var_30_5 = var_0_29(var_30_4)

		if var_30_3 < var_30_5 then
			var_30_2, var_30_3 = var_30_4, var_30_5
		end
	end

	return var_30_2
end

local function var_0_31(arg_31_0, arg_31_1)
	if not var_0_24(arg_31_0, arg_31_1) then
		return false
	end

	return var_0_23(arg_31_0) == arg_31_1
end

local var_0_32

local function var_0_33(arg_32_0, arg_32_1, arg_32_2)
	if var_0_1._replaceFile then
		return var_0_1._replaceFile(arg_32_0, arg_32_1, arg_32_2)
	end

	if not var_0_14() then
		return os.rename(arg_32_0, arg_32_1) ~= nil
	end

	if var_0_32 == nil then
		local var_32_0, var_32_1 = pcall(function()
			local var_33_0 = require("ffi")

			pcall(var_33_0.cdef, "typedef unsigned short WCHAR;")
			pcall(var_33_0.cdef, "int MoveFileExW(const unsigned short* from, const unsigned short* to, unsigned long flags);")
			pcall(var_33_0.cdef, "int ReplaceFileW(const unsigned short* current, const unsigned short* replacement,\n                const unsigned short* backup, unsigned long flags, void* exclude, void* reserved);")

			local var_33_1 = var_33_0.load("kernel32")

			return function(arg_34_0, arg_34_1, arg_34_2)
				if arg_34_2 then
					return var_33_1.ReplaceFileW(var_0_18(var_33_0, arg_34_1), var_0_18(var_33_0, arg_34_0), var_0_18(var_33_0, arg_34_2), 0, nil, nil) ~= 0
				end

				return var_33_1.MoveFileExW(var_0_18(var_33_0, arg_34_0), var_0_18(var_33_0, arg_34_1), 1) ~= 0
			end
		end)

		var_0_32 = var_32_0 and var_32_1 or false
	end

	return var_0_32 and var_0_32(arg_32_0, arg_32_1, arg_32_2) or false
end

local function var_0_34()
	if not love or not love.filesystem or not love.filesystem.read or not love.filesystem.write then
		return false
	end

	if love.filesystem.setIdentity then
		pcall(love.filesystem.setIdentity, "slotbound", true)
	end

	return true
end

local function var_0_35(arg_36_0)
	if not var_0_34() then
		return nil
	end

	local var_36_0, var_36_1 = pcall(love.filesystem.read, arg_36_0, var_0_9 + 1)

	if var_36_0 and type(var_36_1) == "string" and #var_36_1 <= var_0_9 then
		return var_36_1
	end

	return nil
end

local function var_0_36(arg_37_0)
	if not var_0_34() then
		return false
	end

	local var_37_0 = love.filesystem

	if not var_37_0.getSaveDirectory then
		return false
	end

	local var_37_1 = var_37_0.getSaveDirectory()

	if type(var_37_1) ~= "string" or var_37_1 == "" then
		return false
	end

	local function var_37_2(arg_38_0, arg_38_1, arg_38_2)
		local var_38_0, var_38_1 = pcall(var_37_0.write, arg_38_1, arg_38_2)

		if not var_38_0 or not var_38_1 or var_0_35(arg_38_1) ~= arg_38_2 then
			return false
		end

		return var_0_33(var_0_25(var_37_1, arg_38_1), var_0_25(var_37_1, arg_38_0))
	end

	local var_37_3, var_37_4 = pcall(var_37_0.write, var_0_8, arg_37_0)

	if not var_37_3 or not var_37_4 or var_0_35(var_0_8) ~= arg_37_0 then
		return false
	end

	local var_37_5 = var_0_35(var_0_6)
	local var_37_6 = var_37_5 and (var_37_5 == var_0_11 or var_0_27(var_37_5))
	local var_37_7 = var_0_14() and var_37_6 and var_0_25(var_37_1, var_0_7) or nil

	if var_37_6 and not var_37_7 and not var_37_2(var_0_7, var_0_7 .. ".tmp", var_37_5) then
		return false
	end

	if not var_0_33(var_0_25(var_37_1, var_0_8), var_0_25(var_37_1, var_0_6), var_37_7) then
		if var_37_7 and var_37_0.getInfo and not var_37_0.getInfo(var_0_6, "file") and var_0_35(var_0_7) == var_37_5 then
			var_0_33(var_37_7, var_0_25(var_37_1, var_0_6))
		end

		return false
	end

	if var_0_35(var_0_6) ~= arg_37_0 then
		return false
	end

	var_0_1._lastSavePath = var_0_6
	var_0_1._usingFallback = true

	return true
end

local function var_0_37(arg_39_0)
	for iter_39_0, iter_39_1 in ipairs(var_0_22()) do
		local var_39_0 = var_0_25(iter_39_1, var_0_2)

		if var_0_1._ensureDir then
			var_0_1._ensureDir(var_39_0)
		end

		local var_39_1 = var_0_25(var_39_0, var_0_3)
		local var_39_2 = var_0_25(var_39_0, var_0_5)
		local var_39_3 = var_0_25(var_39_0, var_0_4)

		if var_0_31(var_39_2, arg_39_0) then
			local var_39_4 = var_0_23(var_39_1)
			local var_39_5 = true

			if var_39_4 and var_0_27(var_39_4) then
				var_39_5 = var_0_31(var_39_3 .. ".tmp", var_39_4) and var_0_33(var_39_3 .. ".tmp", var_39_3)
			end

			if var_39_5 and var_0_33(var_39_2, var_39_1) then
				var_0_1._lastSavePath = var_39_1
				var_0_1._usingFallback = false

				return true
			end
		end
	end

	return false
end

function var_0_1.save(arg_40_0)
	local var_40_0 = var_0_12()

	if not var_0_26(arg_40_0) or not var_0_0.validate(arg_40_0) then
		return false
	end

	local var_40_1 = "return " .. var_0_1.serialize(arg_40_0)

	if #var_40_1 > var_0_9 then
		return false
	end

	if var_0_14() and var_40_1 == var_0_11 and love and love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo(var_0_6, "file") then
		return true
	end

	local var_40_2 = var_0_36(var_40_1)
	local var_40_3 = false

	if not var_0_14() or not var_40_2 then
		var_40_3 = var_0_37(var_40_1)
	end

	if var_40_2 or var_40_3 then
		if var_0_14() and var_40_2 then
			var_0_11 = var_40_1
		end

		var_0_13("save", var_40_0, ("bytes=%d, storage=%s"):format(#var_40_1, var_40_2 and "appdata" or "documents"))

		return true
	end

	var_0_1._lastSavePath = nil

	var_0_13("save-failed", var_40_0, ("bytes=%d"):format(#var_40_1))

	return false
end

function var_0_1.load()
	local var_41_0 = var_0_12()
	local var_41_1 = var_0_27(var_0_35(var_0_6)) or var_0_27(var_0_35(var_0_7))
	local var_41_2 = var_41_1 and var_0_6 or nil
	local var_41_3 = var_41_1 ~= nil

	if not var_41_1 then
		for iter_41_0, iter_41_1 in ipairs(var_0_22()) do
			local var_41_4 = var_0_25(iter_41_1, var_0_2)
			local var_41_5 = var_0_25(var_41_4, var_0_3)
			local var_41_6 = var_0_27(var_0_23(var_41_5))

			if not var_41_6 then
				local var_41_7 = var_0_25(var_41_4, var_0_4)

				var_41_6 = var_0_27(var_0_23(var_41_7))

				if var_41_6 and not var_41_1 then
					var_41_1, var_41_2, var_41_3 = var_41_6, var_41_7, false
				end
			elseif not var_41_1 then
				var_41_1, var_41_2, var_41_3 = var_41_6, var_41_5, false
			end

			if var_41_1 then
				break
			end
		end
	end

	if not (var_0_35(var_0_10) == "1") then
		local var_41_8 = var_0_30()

		if var_41_8 and var_0_29(var_41_8) > var_0_29(var_41_1) then
			if var_0_1.save(var_41_8) then
				pcall(love.filesystem.write, var_0_10, "1")
			end

			var_0_13("load-and-migrate-save", var_41_0, "legacy save selected")

			return var_41_8
		end

		pcall(love.filesystem.write, var_0_10, "1")
	end

	if var_41_1 and var_0_14() and not var_41_3 and var_0_1.save(var_41_1) then
		var_41_2 = var_0_6
		var_41_3 = true
	end

	var_0_1._lastSavePath = var_41_2
	var_0_1._usingFallback = var_41_3

	var_0_13("load-save", var_41_0, var_41_2 and "path=" .. tostring(var_41_2) or "no save found")

	return var_41_1
end

local function var_0_38(arg_42_0, arg_42_1)
	local var_42_0 = type(arg_42_1)

	if var_42_0 == "number" or var_42_0 == "boolean" then
		arg_42_0[#arg_42_0 + 1] = tostring(arg_42_1)
	elseif var_42_0 == "string" then
		arg_42_0[#arg_42_0 + 1] = string.format("%q", arg_42_1)
	elseif var_42_0 == "table" then
		arg_42_0[#arg_42_0 + 1] = "{"

		for iter_42_0, iter_42_1 in pairs(arg_42_1) do
			arg_42_0[#arg_42_0 + 1] = "["

			var_0_38(arg_42_0, iter_42_0)

			arg_42_0[#arg_42_0 + 1] = "]="

			var_0_38(arg_42_0, iter_42_1)

			arg_42_0[#arg_42_0 + 1] = ","
		end

		arg_42_0[#arg_42_0 + 1] = "}"
	else
		arg_42_0[#arg_42_0 + 1] = "nil"
	end
end

function var_0_1.serialize(arg_43_0)
	local var_43_0 = {}

	var_0_38(var_43_0, arg_43_0)

	return table.concat(var_43_0)
end

return var_0_1
