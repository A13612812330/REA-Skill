local var_0_0 = {}
local var_0_1 = {
	maxTotalStringBytes = 33554432,
	maxStringBytes = 4194304,
	maxEntries = 250000,
	maxDepth = 64,
	maxSourceBytes = 16777216
}

local function var_0_2(arg_1_0)
	return arg_1_0 == arg_1_0 and arg_1_0 ~= math.huge and arg_1_0 ~= -math.huge
end

local function var_0_3(arg_2_0)
	local var_2_0 = {}

	for iter_2_0, iter_2_1 in pairs(var_0_1) do
		local var_2_1 = type(arg_2_0) == "table" and tonumber(arg_2_0[iter_2_0]) or nil

		var_2_0[iter_2_0] = var_2_1 and var_0_2(var_2_1) and var_2_1 >= 1 and math.floor(var_2_1) or iter_2_1
	end

	return var_2_0
end

local function var_0_4(arg_3_0, arg_3_1)
	local var_3_0 = 1
	local var_3_1 = #arg_3_0
	local var_3_2 = 0
	local var_3_3 = 0

	local function var_3_4(arg_4_0)
		error(arg_4_0, 0)
	end

	local function var_3_5()
		local var_5_0 = arg_3_0:byte(var_3_0)

		if var_5_0 ~= 32 and var_5_0 ~= 9 and var_5_0 ~= 10 and var_5_0 ~= 13 and var_5_0 ~= 11 and var_5_0 ~= 12 then
			return
		end

		local var_5_1, var_5_2 = arg_3_0:find("^[ \t\r\n\v\f]*", var_3_0)

		var_3_0 = (var_5_2 or var_3_0 - 1) + 1
	end

	local function var_3_6(arg_6_0)
		var_3_5()

		if arg_3_0:sub(var_3_0, var_3_0 + #arg_6_0 - 1) ~= arg_6_0 then
			var_3_4("expected " .. arg_6_0)
		end

		var_3_0 = var_3_0 + #arg_6_0
	end

	local function var_3_7(arg_7_0)
		var_3_3 = var_3_3 + #arg_7_0

		if #arg_7_0 > arg_3_1.maxStringBytes or var_3_3 > arg_3_1.maxTotalStringBytes then
			var_3_4("string limit exceeded")
		end

		return arg_7_0
	end

	local var_3_8 = {
		t = "\t",
		a = "\a",
		v = "\v",
		r = "\r",
		n = "\n",
		f = "\f",
		b = "\b",
		["\\"] = "\\",
		["\""] = "\"",
		["'"] = "'"
	}

	local function var_3_9()
		local var_8_0 = arg_3_0:sub(var_3_0, var_3_0)
		local var_8_1 = var_8_0 == "\"" and "[\"\\\r\n]" or "['\\\r\n]"
		local var_8_2 = arg_3_0:find(var_8_1, var_3_0 + 1)

		if var_8_2 and arg_3_0:sub(var_8_2, var_8_2) == var_8_0 then
			local var_8_3 = var_3_7(arg_3_0:sub(var_3_0 + 1, var_8_2 - 1))

			var_3_0 = var_8_2 + 1

			return var_8_3
		end

		local var_8_4 = {}
		local var_8_5 = 0

		var_3_0 = var_3_0 + 1

		while var_3_0 <= var_3_1 do
			local var_8_6 = var_3_0

			var_3_0 = arg_3_0:find(var_8_1, var_3_0) or var_3_1 + 1

			local var_8_7 = arg_3_0:sub(var_8_6, var_3_0 - 1)

			var_8_5 = var_8_5 + #var_8_7

			if var_8_5 > arg_3_1.maxStringBytes then
				var_3_4("string limit exceeded")
			end

			var_8_4[#var_8_4 + 1] = var_8_7

			local var_8_8 = arg_3_0:sub(var_3_0, var_3_0)

			if var_8_8 == var_8_0 then
				var_3_0 = var_3_0 + 1

				return var_3_7(table.concat(var_8_4))
			end

			if var_8_8 ~= "\\" then
				var_3_4("unterminated string")
			end

			var_3_0 = var_3_0 + 1

			local var_8_9 = arg_3_0:sub(var_3_0, var_3_0)

			if var_3_8[var_8_9] then
				var_8_7, var_3_0 = var_3_8[var_8_9], var_3_0 + 1
			elseif var_8_9:match("%d") then
				local var_8_10 = arg_3_0:match("^(%d%d?%d?)", var_3_0)
				local var_8_11 = tonumber(var_8_10)

				if var_8_11 > 255 then
					var_3_4("invalid decimal escape")
				end

				var_8_7, var_3_0 = string.char(var_8_11), var_3_0 + #var_8_10
			elseif var_8_9 == "x" then
				local var_8_12 = arg_3_0:sub(var_3_0 + 1, var_3_0 + 2)

				if not var_8_12:match("^%x%x$") then
					var_3_4("invalid hexadecimal escape")
				end

				var_8_7, var_3_0 = string.char(tonumber(var_8_12, 16)), var_3_0 + 3
			elseif var_8_9 == "z" then
				var_3_0 = var_3_0 + 1

				var_3_5()

				var_8_7 = ""
			elseif var_8_9 == "\r" or var_8_9 == "\n" then
				var_3_0 = var_3_0 + 1

				local var_8_13 = arg_3_0:sub(var_3_0, var_3_0)

				if (var_8_13 == "\r" or var_8_13 == "\n") and var_8_13 ~= var_8_9 then
					var_3_0 = var_3_0 + 1
				end

				var_8_7 = "\n"
			else
				var_3_4("invalid string escape")
			end

			var_8_5 = var_8_5 + #var_8_7

			if var_8_5 > arg_3_1.maxStringBytes then
				var_3_4("string limit exceeded")
			end

			var_8_4[#var_8_4 + 1] = var_8_7
		end

		var_3_4("unterminated string")
	end

	local var_3_10

	local function var_3_11(arg_9_0)
		if arg_9_0 > arg_3_1.maxDepth then
			var_3_4("table depth limit exceeded")
		end

		var_3_6("{")

		local var_9_0 = {}
		local var_9_1 = 1

		var_3_5()

		while arg_3_0:sub(var_3_0, var_3_0) ~= "}" do
			var_3_2 = var_3_2 + 1

			if var_3_2 > arg_3_1.maxEntries then
				var_3_4("table entry limit exceeded")
			end

			local var_9_2
			local var_9_3

			if arg_3_0:sub(var_3_0, var_3_0) == "[" then
				var_3_0 = var_3_0 + 1
				var_9_2 = var_3_10(arg_9_0 + 1)

				if type(var_9_2) ~= "number" and type(var_9_2) ~= "string" and type(var_9_2) ~= "boolean" then
					var_3_4("invalid table key")
				end

				var_3_6("]")
				var_3_6("=")

				var_9_3 = var_3_10(arg_9_0 + 1)
			else
				var_9_2, var_9_1 = var_9_1, var_9_1 + 1
				var_9_3 = var_3_10(arg_9_0 + 1)
			end

			var_9_0[var_9_2] = var_9_3

			var_3_5()

			local var_9_4 = arg_3_0:sub(var_3_0, var_3_0)

			if var_9_4 == "," then
				var_3_0 = var_3_0 + 1

				var_3_5()
			elseif var_9_4 ~= "}" then
				var_3_4("expected table separator")
			end
		end

		var_3_0 = var_3_0 + 1

		return var_9_0
	end

	function var_3_10(arg_10_0)
		var_3_5()

		local var_10_0 = arg_3_0:sub(var_3_0, var_3_0)

		if var_10_0 == "{" then
			return var_3_11(arg_10_0)
		end

		if var_10_0 == "\"" or var_10_0 == "'" then
			return var_3_9()
		end

		if arg_3_0:sub(var_3_0, var_3_0 + 3) == "true" then
			var_3_0 = var_3_0 + 4

			return true
		end

		if arg_3_0:sub(var_3_0, var_3_0 + 4) == "false" then
			var_3_0 = var_3_0 + 5

			return false
		end

		if arg_3_0:sub(var_3_0, var_3_0 + 2) == "nil" then
			var_3_0 = var_3_0 + 3

			return nil
		end

		local var_10_1 = arg_3_0:match("^%-?%d+%.?%d*[eE][%+%-]?%d+", var_3_0) or arg_3_0:match("^%-?%d+%.?%d*", var_3_0)

		if not var_10_1 then
			var_3_4("non-literal value is not allowed")
		end

		local var_10_2 = tonumber(var_10_1)

		if not var_10_2 or not var_0_2(var_10_2) then
			var_3_4("invalid or non-finite number")
		end

		var_3_0 = var_3_0 + #var_10_1

		return var_10_2
	end

	if arg_3_0:sub(1, 3) == "﻿" then
		var_3_0 = 4
	end

	var_3_6("return")

	if arg_3_0:sub(var_3_0, var_3_0):match("[%w_]") then
		var_3_4("invalid return token")
	end

	local var_3_12 = var_3_10(1)

	if type(var_3_12) ~= "table" then
		var_3_4("save root must be a table")
	end

	var_3_5()

	if var_3_0 <= var_3_1 then
		var_3_4("trailing save data")
	end

	return var_3_12
end

function var_0_0.decode(arg_11_0, arg_11_1)
	if type(arg_11_0) ~= "string" or arg_11_0 == "" then
		return nil, "empty save data"
	end

	local var_11_0 = var_0_3(arg_11_1)

	if #arg_11_0 > var_11_0.maxSourceBytes then
		return nil, "save source limit exceeded"
	end

	if arg_11_0:byte(1) == 27 then
		return nil, "Lua bytecode is not allowed"
	end

	local var_11_1, var_11_2 = pcall(var_0_4, arg_11_0, var_11_0)

	if not var_11_1 then
		return nil, tostring(var_11_2)
	end

	return var_11_2
end

function var_0_0.validate(arg_12_0, arg_12_1)
	if type(arg_12_0) ~= "table" then
		return false, "save root must be a table"
	end

	local var_12_0 = var_0_3(arg_12_1)
	local var_12_1 = {}
	local var_12_2 = 0
	local var_12_3 = 0

	local function var_12_4(arg_13_0, arg_13_1)
		local var_13_0 = type(arg_13_0)

		if var_13_0 == "number" then
			return var_0_2(arg_13_0)
		end

		if var_13_0 == "string" then
			var_12_3 = var_12_3 + #arg_13_0

			return #arg_13_0 <= var_12_0.maxStringBytes and var_12_3 <= var_12_0.maxTotalStringBytes
		end

		if var_13_0 == "boolean" or var_13_0 == "nil" then
			return true
		end

		if var_13_0 ~= "table" or arg_13_1 > var_12_0.maxDepth or var_12_1[arg_13_0] or getmetatable(arg_13_0) ~= nil then
			return false
		end

		var_12_1[arg_13_0] = true

		for iter_13_0, iter_13_1 in next, arg_13_0 do
			var_12_2 = var_12_2 + 1

			local var_13_1 = type(iter_13_0)

			if var_12_2 > var_12_0.maxEntries or var_13_1 ~= "number" and var_13_1 ~= "string" and var_13_1 ~= "boolean" or not var_12_4(iter_13_0, arg_13_1 + 1) or not var_12_4(iter_13_1, arg_13_1 + 1) then
				return false
			end
		end

		var_12_1[arg_13_0] = nil

		return true
	end

	if not var_12_4(arg_12_0, 1) then
		return false, "invalid save value or data limit exceeded"
	end

	return true
end

return var_0_0
