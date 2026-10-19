local var_0_0 = {}
local var_0_1 = "c96d593ac2010ddc682f76d9373bd6e563cca39a2e932462d7158e3f2a73d570"
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

	if arg_4_0:find(":", 1, true) then
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
	local var_5_0, var_5_1 = loadstring(arg_5_0, "@src/release_integrity_manifest.lua")

	if not var_5_0 then
		var_0_3("invalid integrity manifest: " .. tostring(var_5_1))
	end

	if type(setfenv) ~= "function" then
		var_0_3("manifest sandbox is unavailable")
	end

	setfenv(var_5_0, {})

	local var_5_2, var_5_3 = pcall(var_5_0)

	if not var_5_2 or type(var_5_3) ~= "table" then
		var_0_3("invalid integrity manifest")
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
		var_0_3("invalid embedded manifest signature")
	end

	local var_6_0 = var_0_5("src/release_integrity_manifest.lua")

	if var_0_4(var_6_0) ~= var_0_1 then
		var_0_3("integrity manifest mismatch")
	end

	local var_6_1 = var_0_7(var_6_0)

	if var_6_1.enabled ~= true or var_6_1.version ~= 1 or var_6_1.algorithm ~= "sha256" or type(var_6_1.files) ~= "table" then
		var_0_3("unsupported integrity manifest")
	end

	local var_6_2 = {}
	local var_6_3 = 0

	for iter_6_0, iter_6_1 in pairs(var_6_1.files) do
		if not var_0_6(iter_6_0) then
			var_0_3("invalid protected path")
		end

		if type(iter_6_1) ~= "string" or #iter_6_1 ~= 64 or not iter_6_1:match("^[0-9a-f][0-9a-f]+$") then
			var_0_3("invalid protected hash: " .. iter_6_0)
		end

		var_6_3 = var_6_3 + 1
		var_6_2[var_6_3] = iter_6_0
	end

	if var_6_3 < 1 or var_6_3 ~= tonumber(var_6_1.fileCount) then
		var_0_3("protected file count mismatch")
	end

	table.sort(var_6_2)

	for iter_6_2, iter_6_3 in ipairs(var_6_2) do
		local var_6_4 = var_0_5(iter_6_3)

		if var_0_4(var_6_4) ~= var_6_1.files[iter_6_3] then
			var_0_3("modified file: " .. iter_6_3)
		end
	end

	var_0_2 = true

	return true
end

return var_0_0
