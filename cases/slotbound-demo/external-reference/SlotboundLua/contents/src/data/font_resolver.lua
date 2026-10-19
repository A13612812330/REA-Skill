local var_0_0 = {}

local function var_0_1()
	return _G.currentGameLang or "ko"
end

local function var_0_2(arg_2_0)
	if type(arg_2_0) ~= "string" or arg_2_0 == "" then
		return false
	end

	return love and love.filesystem and love.filesystem.getInfo and love.filesystem.getInfo(arg_2_0) ~= nil
end

function var_0_0.resolve(arg_3_0, arg_3_1)
	if type(arg_3_0) ~= "string" or arg_3_0 == "" then
		return arg_3_0
	end

	if arg_3_0:find("/coinfont/", 1, true) or arg_3_0:find("\\coinfont\\", 1, true) then
		return arg_3_0
	end

	arg_3_1 = arg_3_1 or var_0_1()

	local var_3_0, var_3_1 = arg_3_0:gsub("\\", "/"):match("^(.-)([^/]+)$")

	if not var_3_1 then
		return arg_3_0
	end

	local var_3_2, var_3_3 = var_3_1:match("^(.*)(%.[^%.]+)$")

	if not var_3_2 or var_3_3:lower() ~= ".fnt" then
		return arg_3_0
	end

	if (arg_3_1 == "ko" or arg_3_1 == "en") and var_3_2:lower():find("sline", 1, true) then
		local var_3_4 = var_3_0 .. var_3_2 .. ".ttf"

		if var_0_2(var_3_4) then
			return var_3_4
		end

		local var_3_5 = var_3_0 .. var_3_2 .. ".otf"

		if var_0_2(var_3_5) then
			return var_3_5
		end
	end

	if arg_3_1 ~= "ja" and arg_3_1 ~= "zh" then
		return arg_3_0
	end

	if arg_3_1 == "ja" then
		local var_3_6 = "src/data/font/Japanese/" .. var_3_2 .. "_J" .. var_3_3

		if var_0_2(var_3_6) then
			return var_3_6
		end
	elseif arg_3_1 == "zh" then
		local var_3_7 = "src/data/font/Chinese/arkpixel10.ttf"

		if var_0_2(arkpixelPath) then
			return var_3_7
		end

		local var_3_8 = "src/data/font/Chinese/" .. var_3_2 .. "_Zh" .. var_3_3

		if var_0_2(var_3_8) then
			return var_3_8
		end
	end

	return arg_3_0
end

function var_0_0.pagePath(arg_4_0)
	return var_0_0.resolve(arg_4_0)
end

return var_0_0
