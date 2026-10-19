local var_0_0 = require("src.data.safe_lua_table")
local var_0_1 = {}
local var_0_2 = "SlotBound"
local var_0_3 = "save.dat"
local var_0_4 = "save.bak"
local var_0_5 = "save.tmp"
local var_0_6 = "save_fallback.dat"
local var_0_7 = "save_fallback.bak"

local function var_0_8()
	return jit and jit.os == "Windows" or love.system and love.system.getOS and love.system.getOS() == "Windows"
end

local function var_0_9()
	return jit and jit.os == "OSX" or love.system and love.system.getOS and love.system.getOS() == "OS X"
end

local function var_0_10()
	return (love.system and love.system.getOS and love.system.getOS() or nil) == "Web" or jit and jit.os == "Emscripten"
end

local function var_0_11(arg_4_0, arg_4_1)
	if not arg_4_0 or arg_4_0 == "" then
		return arg_4_1
	end

	if not arg_4_1 or arg_4_1 == "" then
		return arg_4_0
	end

	if arg_4_0:sub(-1) == "\\" then
		return arg_4_0 .. arg_4_1
	end

	return arg_4_0 .. "\\" .. arg_4_1
end

local function var_0_12(arg_5_0, arg_5_1)
	if not arg_5_0 or arg_5_0 == "" then
		return arg_5_1
	end

	if not arg_5_1 or arg_5_1 == "" then
		return arg_5_0
	end

	if arg_5_0:sub(-1) == "/" then
		return arg_5_0 .. arg_5_1
	end

	return arg_5_0 .. "/" .. arg_5_1
end

local function var_0_13(arg_6_0, arg_6_1)
	arg_6_1 = tostring(arg_6_1 or "")

	local var_6_0 = {}
	local var_6_1 = 1
	local var_6_2 = #arg_6_1

	while var_6_1 <= var_6_2 do
		local var_6_3 = arg_6_1:byte(var_6_1)
		local var_6_4

		if var_6_3 < 128 then
			var_6_4 = var_6_3
			var_6_1 = var_6_1 + 1
		elseif var_6_3 < 224 then
			local var_6_5 = arg_6_1:byte(var_6_1 + 1)

			if not var_6_5 then
				break
			end

			var_6_4 = var_6_3 % 32 * 64 + var_6_5 % 64
			var_6_1 = var_6_1 + 2
		elseif var_6_3 < 240 then
			local var_6_6 = arg_6_1:byte(var_6_1 + 1)
			local var_6_7 = arg_6_1:byte(var_6_1 + 2)

			if not var_6_6 or not var_6_7 then
				break
			end

			var_6_4 = var_6_3 % 16 * 4096 + var_6_6 % 64 * 64 + var_6_7 % 64
			var_6_1 = var_6_1 + 3
		else
			local var_6_8 = arg_6_1:byte(var_6_1 + 1)
			local var_6_9 = arg_6_1:byte(var_6_1 + 2)
			local var_6_10 = arg_6_1:byte(var_6_1 + 3)

			if not var_6_8 or not var_6_9 or not var_6_10 then
				break
			end

			var_6_4 = var_6_3 % 8 * 262144 + var_6_8 % 64 * 4096 + var_6_9 % 64 * 64 + var_6_10 % 64
			var_6_1 = var_6_1 + 4
		end

		if var_6_4 <= 65535 then
			var_6_0[#var_6_0 + 1] = var_6_4
		else
			local var_6_11 = var_6_4 - 65536
			local var_6_12 = 55296 + math.floor(var_6_11 / 1024)
			local var_6_13 = 56320 + var_6_11 % 1024

			var_6_0[#var_6_0 + 1] = var_6_12
			var_6_0[#var_6_0 + 1] = var_6_13
		end
	end

	local var_6_14 = arg_6_0.new("WCHAR[?]", #var_6_0 + 1)

	for iter_6_0 = 1, #var_6_0 do
		var_6_14[iter_6_0 - 1] = var_6_0[iter_6_0]
	end

	var_6_14[#var_6_0] = 0

	return var_6_14
end

local function var_0_14()
	if var_0_1._documentsDir ~= nil then
		return var_0_1._documentsDir
	end

	local var_7_0

	if var_0_8() then
		local var_7_1, var_7_2 = pcall(require, "ffi")

		if var_7_1 and var_7_2 then
			pcall(function()
				var_7_2.cdef("                    typedef unsigned long DWORD;\n                    typedef unsigned short WCHAR;\n                    typedef const WCHAR* LPCWSTR;\n                    typedef void* HANDLE;\n                    typedef void* HWND;\n                    typedef struct _GUID {\n                        unsigned long  Data1;\n                        unsigned short Data2;\n                        unsigned short Data3;\n                        unsigned char  Data4[8];\n                    } GUID;\n                    long SHGetKnownFolderPath(const GUID* rfid, DWORD dwFlags, HANDLE hToken, WCHAR** ppszPath);\n                    void CoTaskMemFree(void* pv);\n                    int SHCreateDirectoryExW(HWND hwnd, LPCWSTR pszPath, void* psa);\n\n                    typedef struct _iobuf FILE;\n                    FILE* _wfopen(LPCWSTR filename, LPCWSTR mode);\n                    size_t fwrite(const void* ptr, size_t size, size_t nmemb, FILE* stream);\n                    size_t fread(void* ptr, size_t size, size_t nmemb, FILE* stream);\n                    int fseek(FILE* stream, long offset, int origin);\n                    long ftell(FILE* stream);\n                    int fclose(FILE* stream);\n                ")
			end)

			local var_7_3 = var_7_2.load("shell32")
			local var_7_4 = var_7_2.load("ole32")
			local var_7_5 = var_7_2.load("msvcrt")
			local var_7_6 = var_7_2.new("GUID", {
				Data3 = 18095,
				Data2 = 9103,
				Data1 = 4258503376,
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

			local function var_7_7(arg_9_0)
				if arg_9_0 <= 127 then
					return string.char(arg_9_0)
				elseif arg_9_0 <= 2047 then
					return string.char(192 + math.floor(arg_9_0 / 64), 128 + arg_9_0 % 64)
				elseif arg_9_0 <= 65535 then
					return string.char(224 + math.floor(arg_9_0 / 4096), 128 + math.floor(arg_9_0 / 64) % 64, 128 + arg_9_0 % 64)
				else
					return string.char(240 + math.floor(arg_9_0 / 262144), 128 + math.floor(arg_9_0 / 4096) % 64, 128 + math.floor(arg_9_0 / 64) % 64, 128 + arg_9_0 % 64)
				end
			end

			local function var_7_8(arg_10_0)
				if arg_10_0 == nil then
					return nil
				end

				local var_10_0 = {}
				local var_10_1 = 0

				while arg_10_0[var_10_1] ~= 0 do
					local var_10_2 = tonumber(arg_10_0[var_10_1])
					local var_10_3 = var_10_2

					if var_10_2 >= 55296 and var_10_2 <= 56319 then
						local var_10_4 = tonumber(arg_10_0[var_10_1 + 1])

						if var_10_4 and var_10_4 >= 56320 and var_10_4 <= 57343 then
							local var_10_5 = var_10_2 - 55296
							local var_10_6 = var_10_4 - 56320

							var_10_3 = 65536 + var_10_5 * 1024 + var_10_6
							var_10_1 = var_10_1 + 1
						end
					end

					var_10_0[#var_10_0 + 1] = var_7_7(var_10_3)
					var_10_1 = var_10_1 + 1
				end

				return table.concat(var_10_0)
			end

			local function var_7_9(arg_11_0)
				if not arg_11_0 or arg_11_0 == "" then
					return false
				end

				local var_11_0 = var_0_13(var_7_2, arg_11_0)
				local var_11_1 = var_7_3.SHCreateDirectoryExW(nil, var_11_0, nil)

				return var_11_1 == 0 or var_11_1 == 183
			end

			local function var_7_10(arg_12_0)
				local var_12_0 = var_0_13(var_7_2, arg_12_0)
				local var_12_1 = var_0_13(var_7_2, "rb")
				local var_12_2 = var_7_5._wfopen(var_12_0, var_12_1)

				if var_12_2 == nil then
					return nil
				end

				var_7_5.fseek(var_12_2, 0, 2)

				local var_12_3 = tonumber(var_7_5.ftell(var_12_2)) or 0

				var_7_5.fseek(var_12_2, 0, 0)

				if var_12_3 <= 0 then
					var_7_5.fclose(var_12_2)

					return ""
				end

				local var_12_4 = var_7_2.new("uint8_t[?]", var_12_3)
				local var_12_5 = tonumber(var_7_5.fread(var_12_4, 1, var_12_3, var_12_2)) or 0

				var_7_5.fclose(var_12_2)

				if var_12_5 <= 0 then
					return nil
				end

				return var_7_2.string(var_12_4, var_12_5)
			end

			local function var_7_11(arg_13_0, arg_13_1)
				local var_13_0 = var_0_13(var_7_2, arg_13_0)
				local var_13_1 = var_0_13(var_7_2, "wb")
				local var_13_2 = var_7_5._wfopen(var_13_0, var_13_1)

				if var_13_2 == nil then
					return false
				end

				arg_13_1 = tostring(arg_13_1 or "")

				local var_13_3 = #arg_13_1

				if var_13_3 > 0 then
					local var_13_4 = tonumber(var_7_5.fwrite(arg_13_1, 1, var_13_3, var_13_2)) or 0

					var_7_5.fclose(var_13_2)

					return var_13_4 == var_13_3
				end

				var_7_5.fclose(var_13_2)

				return true
			end

			local var_7_12 = var_7_2.new("WCHAR*[1]")

			if var_7_3.SHGetKnownFolderPath(var_7_6, 0, nil, var_7_12) == 0 and var_7_12[0] ~= nil then
				var_7_0 = var_7_8(var_7_12[0])

				var_7_4.CoTaskMemFree(var_7_12[0])

				if var_7_0 and var_7_0 ~= "" then
					function var_0_1._ensureDir(arg_14_0)
						return var_7_9(arg_14_0)
					end

					function var_0_1._readFile(arg_15_0)
						return var_7_10(arg_15_0)
					end

					function var_0_1._writeFile(arg_16_0, arg_16_1)
						return var_7_11(arg_16_0, arg_16_1)
					end
				end
			end
		end
	end

	var_0_1._documentsDir = var_7_0

	return var_7_0
end

local function var_0_15(arg_17_0, arg_17_1, arg_17_2)
	if not arg_17_1 or arg_17_1 == "" then
		return
	end

	if arg_17_2[arg_17_1] then
		return
	end

	arg_17_2[arg_17_1] = true

	table.insert(arg_17_0, arg_17_1)
end

local function var_0_16(arg_18_0)
	if not arg_18_0 or arg_18_0 == "" then
		return false
	end

	local var_18_0 = arg_18_0:gsub("'", "'\\''")
	local var_18_1 = os.execute("mkdir -p '" .. var_18_0 .. "'")

	return var_18_1 == 0 or var_18_1 == true
end

local function var_0_17()
	local var_19_0 = {}
	local var_19_1 = {}

	if not var_0_8() then
		local var_19_2 = os.getenv("HOME") or ""

		if var_19_2 ~= "" then
			local var_19_3 = var_0_12(var_19_2, "Documents")

			var_0_15(var_19_0, var_19_3, var_19_1)
		end

		if not var_0_1._ensureDir then
			var_0_1._ensureDir = var_0_16
		end

		return var_19_0
	end

	local var_19_4 = var_0_14()

	if var_19_4 and var_19_4 ~= "" then
		var_0_15(var_19_0, var_19_4, var_19_1)
	end

	local var_19_5 = {}
	local var_19_6 = {}

	var_0_15(var_19_5, os.getenv("OneDrive"), var_19_6)
	var_0_15(var_19_5, os.getenv("OneDriveConsumer"), var_19_6)
	var_0_15(var_19_5, os.getenv("OneDriveCommercial"), var_19_6)
	var_0_15(var_19_5, os.getenv("USERPROFILE"), var_19_6)

	for iter_19_0, iter_19_1 in ipairs(var_19_5) do
		var_0_15(var_19_0, iter_19_1 .. "\\Documents", var_19_1)
		var_0_15(var_19_0, iter_19_1 .. "\\문서", var_19_1)
	end

	return var_19_0
end

local function var_0_18(arg_20_0)
	if var_0_1._readFile then
		return var_0_1._readFile(arg_20_0)
	end

	local var_20_0 = io.open(arg_20_0, "r")

	if not var_20_0 then
		return nil
	end

	local var_20_1 = var_20_0:read("*all")

	var_20_0:close()

	return var_20_1
end

local function var_0_19(arg_21_0, arg_21_1)
	if var_0_1._writeFile then
		return var_0_1._writeFile(arg_21_0, arg_21_1)
	end

	local var_21_0 = io.open(arg_21_0, "wb")

	if not var_21_0 then
		return false
	end

	local var_21_1 = pcall(function()
		assert(var_21_0:write(arg_21_1))
		assert(var_21_0:flush())
	end)
	local var_21_2 = pcall(function()
		var_21_0:close()
	end)

	return var_21_1 and var_21_2
end

local function var_0_20(arg_24_0, arg_24_1)
	if var_0_8() then
		return var_0_11(arg_24_0, arg_24_1)
	else
		return var_0_12(arg_24_0, arg_24_1)
	end
end

local function var_0_21(arg_25_0)
	if type(arg_25_0) ~= "string" or arg_25_0 == "" then
		return nil
	end

	return var_0_0.decode(arg_25_0, {
		chunkName = "@SlotBound/save.dat"
	})
end

local function var_0_22(arg_26_0, arg_26_1)
	if not var_0_19(arg_26_0, arg_26_1) then
		return false
	end

	return var_0_18(arg_26_0) == arg_26_1
end

local function var_0_23()
	if not love or not love.filesystem or not love.filesystem.read or not love.filesystem.write then
		return false
	end

	if love.filesystem.setIdentity then
		pcall(love.filesystem.setIdentity, "slotbound", true)
	end

	return true
end

local function var_0_24(arg_28_0)
	if not var_0_23() then
		return nil
	end

	local var_28_0, var_28_1 = pcall(love.filesystem.read, arg_28_0)

	if var_28_0 then
		return var_28_1
	end

	return nil
end

local function var_0_25(arg_29_0)
	if not var_0_23() then
		return false
	end

	local var_29_0 = var_0_24(var_0_6)

	if var_29_0 and var_0_21(var_29_0) then
		pcall(love.filesystem.write, var_0_7, var_29_0)
	end

	local var_29_1, var_29_2 = pcall(love.filesystem.write, var_0_6, arg_29_0)

	if not var_29_1 or not var_29_2 or var_0_24(var_0_6) ~= arg_29_0 then
		return false
	end

	var_0_1._lastSavePath = var_0_6
	var_0_1._usingFallback = true

	return true
end

local function var_0_26(arg_30_0)
	for iter_30_0, iter_30_1 in ipairs(var_0_17()) do
		local var_30_0 = var_0_20(iter_30_1, var_0_2)

		if var_0_1._ensureDir then
			var_0_1._ensureDir(var_30_0)
		end

		local var_30_1 = var_0_20(var_30_0, var_0_3)
		local var_30_2 = var_0_20(var_30_0, var_0_5)
		local var_30_3 = var_0_20(var_30_0, var_0_4)

		if var_0_22(var_30_2, arg_30_0) then
			local var_30_4 = var_0_18(var_30_1)

			if var_30_4 and var_0_21(var_30_4) then
				var_0_22(var_30_3, var_30_4)
			end

			if var_0_22(var_30_1, arg_30_0) then
				var_0_1._lastSavePath = var_30_1
				var_0_1._usingFallback = false

				return true
			end
		end
	end

	return false
end

function var_0_1.save(arg_31_0)
	local var_31_0 = "return " .. var_0_1.serialize(arg_31_0)

	if var_0_10() and love.filesystem then
		local var_31_1 = var_0_2 .. "/" .. var_0_3

		if love.filesystem.createDirectory then
			pcall(love.filesystem.createDirectory, var_0_2)
		end

		local var_31_2 = love.filesystem.read and love.filesystem.read(var_31_1) or nil

		if var_31_2 and var_0_21(var_31_2) then
			pcall(love.filesystem.write, var_0_2 .. "/" .. var_0_4, var_31_2)
		end

		if love.filesystem.write and love.filesystem.write(var_31_1, var_31_0) then
			var_0_1._lastSavePath = var_31_1

			return true
		end

		var_0_1._lastSavePath = nil

		return false
	end

	local var_31_3 = var_0_25(var_31_0)
	local var_31_4 = var_0_26(var_31_0)

	if var_31_3 or var_31_4 then
		return true
	end

	var_0_1._lastSavePath = nil

	return false
end

function var_0_1.load()
	if var_0_10() and love.filesystem then
		local var_32_0 = var_0_2 .. "/" .. var_0_3
		local var_32_1 = var_0_21(love.filesystem.read and love.filesystem.read(var_32_0) or nil) or var_0_21(love.filesystem.read and love.filesystem.read(var_0_2 .. "/" .. var_0_4) or nil)

		var_0_1._lastSavePath = var_32_0

		return var_32_1
	end

	local var_32_2 = var_0_21(var_0_24(var_0_6)) or var_0_21(var_0_24(var_0_7))

	if var_32_2 then
		var_0_1._lastSavePath = var_0_6
		var_0_1._usingFallback = true

		return var_32_2
	end

	for iter_32_0, iter_32_1 in ipairs(var_0_17()) do
		local var_32_3 = var_0_20(iter_32_1, var_0_2)
		local var_32_4 = var_0_20(var_32_3, var_0_3)
		local var_32_5 = var_0_21(var_0_18(var_32_4))

		if var_32_5 then
			var_0_1._lastSavePath = var_32_4
			var_0_1._usingFallback = false

			return var_32_5
		end

		local var_32_6 = var_0_20(var_32_3, var_0_4)
		local var_32_7 = var_0_21(var_0_18(var_32_6))

		if var_32_7 then
			var_0_1._lastSavePath = var_32_6
			var_0_1._usingFallback = false

			return var_32_7
		end
	end

	return nil
end

function var_0_1.serialize(arg_33_0)
	if type(arg_33_0) == "number" or type(arg_33_0) == "boolean" then
		return tostring(arg_33_0)
	elseif type(arg_33_0) == "string" then
		return string.format("%q", arg_33_0)
	elseif type(arg_33_0) == "table" then
		local var_33_0 = "{"

		for iter_33_0, iter_33_1 in pairs(arg_33_0) do
			var_33_0 = var_33_0 .. "[" .. var_0_1.serialize(iter_33_0) .. "]=" .. var_0_1.serialize(iter_33_1) .. ","
		end

		return var_33_0 .. "}"
	end

	return "nil"
end

return var_0_1
