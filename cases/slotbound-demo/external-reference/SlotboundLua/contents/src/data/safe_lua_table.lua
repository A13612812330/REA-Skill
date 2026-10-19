local var_0_0 = {}
local var_0_1 = {
	maxTotalStringBytes = 33554432,
	maxStringBytes = 4194304,
	maxEntries = 250000,
	maxDepth = 64,
	maxSourceBytes = 16777216,
	maxInstructions = 10000000
}

local function var_0_2(arg_1_0, arg_1_1)
	arg_1_0 = tonumber(arg_1_0)

	if not arg_1_0 or arg_1_0 < 1 then
		return arg_1_1
	end

	return math.floor(arg_1_0)
end

local function var_0_3(arg_2_0)
	arg_2_0 = type(arg_2_0) == "table" and arg_2_0 or {}

	return {
		maxSourceBytes = var_0_2(arg_2_0.maxSourceBytes, var_0_1.maxSourceBytes),
		maxDepth = var_0_2(arg_2_0.maxDepth, var_0_1.maxDepth),
		maxEntries = var_0_2(arg_2_0.maxEntries, var_0_1.maxEntries),
		maxStringBytes = var_0_2(arg_2_0.maxStringBytes, var_0_1.maxStringBytes),
		maxTotalStringBytes = var_0_2(arg_2_0.maxTotalStringBytes, var_0_1.maxTotalStringBytes),
		maxInstructions = var_0_2(arg_2_0.maxInstructions, var_0_1.maxInstructions)
	}
end

local function var_0_4(arg_3_0)
	return arg_3_0 == arg_3_0 and arg_3_0 ~= math.huge and arg_3_0 ~= -math.huge
end

local function var_0_5(arg_4_0)
	return arg_4_0 == 9 or arg_4_0 == 10 or arg_4_0 == 11 or arg_4_0 == 12 or arg_4_0 == 13 or arg_4_0 == 32
end

local function var_0_6(arg_5_0)
	return arg_5_0 and arg_5_0 >= 48 and arg_5_0 <= 57
end

local function var_0_7(arg_6_0)
	return arg_6_0 and (arg_6_0 >= 65 and arg_6_0 <= 90 or arg_6_0 >= 97 and arg_6_0 <= 122 or arg_6_0 == 95)
end

local function var_0_8(arg_7_0)
	return var_0_7(arg_7_0) or var_0_6(arg_7_0)
end

local function var_0_9(arg_8_0)
	local var_8_0 = #arg_8_0
	local var_8_1 = 1
	local var_8_2 = true

	if var_8_0 >= 3 and arg_8_0:byte(1) == 239 and arg_8_0:byte(2) == 187 and arg_8_0:byte(3) == 191 then
		var_8_1 = 4
	end

	while var_8_1 <= var_8_0 do
		local var_8_3 = arg_8_0:byte(var_8_1)

		if var_0_5(var_8_3) then
			var_8_1 = var_8_1 + 1
		elseif var_8_3 == 34 or var_8_3 == 39 then
			local var_8_4 = var_8_3

			var_8_1 = var_8_1 + 1

			local var_8_5 = false

			while var_8_1 <= var_8_0 do
				local var_8_6 = arg_8_0:byte(var_8_1)

				if var_8_6 == 92 then
					var_8_1 = var_8_1 + 2
				elseif var_8_6 == var_8_4 then
					var_8_1 = var_8_1 + 1
					var_8_5 = true

					break
				else
					var_8_1 = var_8_1 + 1
				end
			end

			if not var_8_5 then
				return false, "unterminated string"
			end

			if var_8_2 then
				return false, "save chunk must begin with return"
			end

			var_8_2 = false
		elseif var_0_6(var_8_3) or (var_8_3 == 43 or var_8_3 == 45) and var_0_6(arg_8_0:byte(var_8_1 + 1)) then
			local var_8_7 = var_8_1

			var_8_1 = var_8_1 + 1

			while var_8_1 <= var_8_0 do
				local var_8_8 = arg_8_0:byte(var_8_1)

				if var_0_6(var_8_8) or var_8_8 == 46 or var_8_8 == 69 or var_8_8 == 101 or var_8_8 == 43 or var_8_8 == 45 then
					var_8_1 = var_8_1 + 1
				else
					break
				end
			end

			local var_8_9 = arg_8_0:sub(var_8_7, var_8_1 - 1)
			local var_8_10 = tonumber(var_8_9)

			if not var_8_10 or not var_0_4(var_8_10) then
				return false, "invalid or non-finite number"
			end

			if var_8_2 then
				return false, "save chunk must begin with return"
			end

			var_8_2 = false
		elseif var_0_7(var_8_3) then
			local var_8_11 = var_8_1

			var_8_1 = var_8_1 + 1

			while var_8_1 <= var_8_0 and var_0_8(arg_8_0:byte(var_8_1)) do
				var_8_1 = var_8_1 + 1
			end

			local var_8_12 = arg_8_0:sub(var_8_11, var_8_1 - 1)

			if var_8_12 ~= "return" and var_8_12 ~= "true" and var_8_12 ~= "false" and var_8_12 ~= "nil" then
				return false, "executable identifier is not allowed"
			end

			if var_8_2 and var_8_12 ~= "return" then
				return false, "save chunk must begin with return"
			end

			var_8_2 = false
		elseif var_8_3 == 123 or var_8_3 == 125 or var_8_3 == 91 or var_8_3 == 93 or var_8_3 == 61 or var_8_3 == 44 then
			if var_8_2 then
				return false, "save chunk must begin with return"
			end

			var_8_2 = false
			var_8_1 = var_8_1 + 1
		else
			return false, "non-literal syntax is not allowed"
		end
	end

	if var_8_2 then
		return false, "empty save chunk"
	end

	return true
end

local function var_0_10(arg_9_0, arg_9_1)
	if type(setfenv) ~= "function" then
		return false, "empty Lua environment is unavailable"
	end

	setfenv(arg_9_0, {})

	local var_9_0 = type(debug) == "table" and debug or nil
	local var_9_1 = var_9_0 and type(var_9_0.sethook) == "function"
	local var_9_2
	local var_9_3
	local var_9_4
	local var_9_5 = false

	if var_9_1 then
		if type(var_9_0.gethook) == "function" then
			local var_9_6, var_9_7, var_9_8, var_9_9 = pcall(var_9_0.gethook)

			if var_9_6 then
				var_9_2, var_9_3, var_9_4 = var_9_7, var_9_8, var_9_9
			end
		end

		var_9_5 = pcall(var_9_0.sethook, function()
			error("safe table instruction limit exceeded", 0)
		end, "", arg_9_1)
	end

	local var_9_10, var_9_11 = pcall(arg_9_0)

	if var_9_5 then
		if var_9_2 then
			pcall(var_9_0.sethook, var_9_2, var_9_3 or "", var_9_4 or 0)
		else
			pcall(var_9_0.sethook)
		end
	end

	return var_9_10, var_9_11
end

local function var_0_11(arg_11_0, arg_11_1)
	if type(arg_11_0) ~= "table" then
		return false, "save root must be a table"
	end

	local var_11_0 = {}
	local var_11_1 = 0
	local var_11_2 = 0

	local function var_11_3(arg_12_0)
		local var_12_0 = #arg_12_0

		if var_12_0 > arg_11_1.maxStringBytes then
			return false, "string limit exceeded"
		end

		var_11_2 = var_11_2 + var_12_0

		if var_11_2 > arg_11_1.maxTotalStringBytes then
			return false, "total string limit exceeded"
		end

		return true
	end

	local function var_11_4(arg_13_0, arg_13_1)
		local var_13_0 = type(arg_13_0)

		if var_13_0 == "number" then
			if not var_0_4(arg_13_0) then
				return false, "non-finite number is not allowed"
			end

			return true
		elseif var_13_0 == "string" then
			return var_11_3(arg_13_0)
		elseif var_13_0 == "boolean" or var_13_0 == "nil" then
			return true
		elseif var_13_0 ~= "table" then
			return false, "unsupported value type: " .. var_13_0
		end

		if arg_13_1 > arg_11_1.maxDepth then
			return false, "table depth limit exceeded"
		end

		if getmetatable(arg_13_0) ~= nil then
			return false, "table metatables are not allowed"
		end

		if var_11_0[arg_13_0] then
			return false, "cyclic or shared tables are not allowed"
		end

		var_11_0[arg_13_0] = true

		for iter_13_0, iter_13_1 in next, arg_13_0 do
			var_11_1 = var_11_1 + 1

			if var_11_1 > arg_11_1.maxEntries then
				return false, "table entry limit exceeded"
			end

			local var_13_1 = type(iter_13_0)

			if var_13_1 == "number" then
				if not var_0_4(iter_13_0) then
					return false, "non-finite table key is not allowed"
				end
			elseif var_13_1 == "string" then
				local var_13_2, var_13_3 = var_11_3(iter_13_0)

				if not var_13_2 then
					return false, var_13_3
				end
			elseif var_13_1 ~= "boolean" then
				return false, "unsupported table key type: " .. var_13_1
			end

			local var_13_4, var_13_5 = var_11_4(iter_13_1, arg_13_1 + 1)

			if not var_13_4 then
				return false, var_13_5
			end
		end

		return true
	end

	return var_11_4(arg_11_0, 1)
end

function var_0_0.decode(arg_14_0, arg_14_1)
	if type(arg_14_0) ~= "string" or arg_14_0 == "" then
		return nil, "empty save data"
	end

	local var_14_0 = var_0_3(arg_14_1)

	if #arg_14_0 > var_14_0.maxSourceBytes then
		return nil, "save source limit exceeded"
	end

	if arg_14_0:byte(1) == 27 then
		return nil, "Lua bytecode is not allowed"
	end

	local var_14_1, var_14_2 = var_0_9(arg_14_0)

	if not var_14_1 then
		return nil, var_14_2
	end

	local var_14_3 = type(arg_14_1) == "table" and type(arg_14_1.chunkName) == "string" and arg_14_1.chunkName or "=(safe save data)"
	local var_14_4, var_14_5 = loadstring(arg_14_0, var_14_3)

	if not var_14_4 then
		return nil, var_14_5 or "invalid save syntax"
	end

	if jit and type(jit.off) == "function" then
		pcall(jit.off, var_14_4, true)
	end

	local var_14_6, var_14_7 = var_0_10(var_14_4, var_14_0.maxInstructions)

	if not var_14_6 then
		return nil, tostring(var_14_7 or "save execution failed")
	end

	local var_14_8, var_14_9 = var_0_11(var_14_7, var_14_0)

	if not var_14_8 then
		return nil, var_14_9
	end

	return var_14_7
end

return var_0_0
