local var_0_0 = {}
local var_0_1 = "b02661600b862204894c15ecf9ed1b9f1caee8b44b085c9a9e8438c50e66c3a6"
local var_0_2 = false

local function var_0_3(arg_1_0)
	error("SlotBound could not start because its game files were modified or corrupted. " .. "Please reinstall an official copy. (" .. tostring(arg_1_0 or "integrity check failed") .. ")", 0)
end

local function var_0_4(arg_2_0)
	local var_2_0 = love and love.data

	if not var_2_0 or not var_2_0.hash or not var_2_0.encode then
		var_0_3("SHA-256 support is unavailable")
	end

	local var_2_1, var_2_2 = pcall(var_2_0.hash, "sha256", arg_2_0)

	if not var_2_1 or type(var_2_2) ~= "string" then
		var_0_3("SHA-256 calculation failed")
	end

	local var_2_3, var_2_4 = pcall(var_2_0.encode, "string", "hex", var_2_2)

	if not var_2_3 or type(var_2_4) ~= "string" then
		var_0_3("SHA-256 encoding failed")
	end

	return var_2_4:lower()
end

local function var_0_5(arg_3_0)
	local var_3_0 = love and love.filesystem

	if not var_3_0 or not var_3_0.read then
		var_0_3("filesystem access is unavailable")
	end

	local var_3_1, var_3_2 = pcall(var_3_0.read, arg_3_0)

	if not var_3_1 or type(var_3_2) ~= "string" then
		var_0_3("missing file: " .. tostring(arg_3_0))
	end

	return var_3_2
end

local function var_0_6(arg_4_0)
	if type(arg_4_0) ~= "string" or arg_4_0 == "" then
		return false
	end

	if arg_4_0:sub(1, 1) == "/" or arg_4_0:find("\\", 1, true) then
		return false
	end

	if arg_4_0:find(":", 1, true) or arg_4_0:find("[%c]") or arg_4_0:find("//", 1, true) or arg_4_0:sub(-1) == "/" then
		return false
	end

	for iter_4_0 in arg_4_0:gmatch("[^/]+") do
		if iter_4_0 == "." or iter_4_0 == ".." then
			return false
		end
	end

	return true
end

local function var_0_7(arg_5_0)
	if #arg_5_0 > 16777216 then
		var_0_3("integrity manifest is too large")
	end

	local var_5_0, var_5_1 = arg_5_0:match("^SBIM001\n([1-9][0-9]*)\n()")
	local var_5_2 = tonumber(var_5_0)

	if not var_5_2 or var_5_2 > 100000 then
		var_0_3("invalid integrity manifest header")
	end

	local var_5_3 = {}
	local var_5_4 = {}
	local var_5_5

	while var_5_1 <= #arg_5_0 do
		local var_5_6 = arg_5_0:find("\n", var_5_1, true)

		if not var_5_6 then
			var_0_3("truncated integrity manifest")
		end

		local var_5_7, var_5_8, var_5_9 = arg_5_0:sub(var_5_1, var_5_6 - 1):match("^([0-9a-f]+)\t([0-9]+)\t(.+)$")
		local var_5_10 = tonumber(var_5_8)

		if not var_5_7 or #var_5_7 ~= 64 or not var_5_10 or var_5_10 > 536870912 or #var_5_8 > 1 and var_5_8:sub(1, 1) == "0" or not var_0_6(var_5_9) or var_5_4[var_5_9] or var_5_5 and var_5_9 <= var_5_5 then
			var_0_3("invalid integrity manifest entry")
		end

		var_5_4[var_5_9] = true
		var_5_5 = var_5_9
		var_5_3[#var_5_3 + 1] = {
			path = var_5_9,
			digest = var_5_7,
			size = var_5_10
		}

		if var_5_2 < #var_5_3 then
			var_0_3("protected file count mismatch")
		end

		var_5_1 = var_5_6 + 1
	end

	if #var_5_3 ~= var_5_2 then
		var_0_3("protected file count mismatch")
	end

	return var_5_3
end

function var_0_0.verify()
	if var_0_2 then
		return true
	end

	if type(var_0_1) ~= "string" then
		var_0_2 = true

		return true
	end

	if not var_0_1:match("^[0-9a-f][0-9a-f]+$") or #var_0_1 ~= 64 then
		var_0_3("invalid embedded manifest hash")
	end

	local var_6_0 = var_0_5("src/release_integrity_manifest.bin")

	if var_0_4(var_6_0) ~= var_0_1 then
		var_0_3("integrity manifest mismatch")
	end

	local var_6_1 = var_0_7(var_6_0)

	for iter_6_0, iter_6_1 in ipairs(var_6_1) do
		local var_6_2 = var_0_5(iter_6_1.path)

		if #var_6_2 ~= iter_6_1.size or var_0_4(var_6_2) ~= iter_6_1.digest then
			var_0_3("modified file: " .. iter_6_1.path)
		end
	end

	var_0_2 = true

	return true
end

return var_0_0
