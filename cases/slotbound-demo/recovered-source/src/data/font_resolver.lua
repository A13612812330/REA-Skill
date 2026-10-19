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

local var_0_3 = {
	galmuri9ws = "Galmuri9WS_Ru",
	galmuri7ws = "PizelWS_Ru",
	galmuri9w = "Galmuri9W_Ru",
	galmuri7w = "Pizel7W_Ru",
	galmuri9wsline = "Galmuri9WSLine_Ru"
}
local var_0_4 = {}

for iter_0_0, iter_0_1 in pairs(var_0_3) do
	var_0_4[iter_0_1:lower()] = iter_0_0
end

local var_0_5 = {
	galmuri9ws = "src/data/font/Galmuri9WS.fnt",
	galmuri7ws = "src/data/font/Galmuri7WS.fnt",
	galmuri9w = "src/data/font/Galmuri9W.fnt",
	galmuri7w = "src/data/font/Galmuri7W.fnt",
	galmuri9wsline = "src/data/font/Galmuri9WSLine.fnt"
}

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

	if arg_3_1 == "fr" or arg_3_1 == "it" or arg_3_1 == "de" or arg_3_1 == "es" then
		local var_3_6 = "src/data/font/Latin/" .. var_3_2 .. "_La" .. var_3_3

		if var_0_2(var_3_6) then
			return var_3_6
		end
	end

	if arg_3_1 == "ru" then
		local var_3_7 = var_0_3[var_3_2:lower()]
		local var_3_8 = var_3_7 and "src/data/font/Russian/" .. var_3_7 .. var_3_3

		if var_3_8 and var_0_2(var_3_8) then
			return var_3_8
		end

		return arg_3_0
	end

	if arg_3_1 == "pl" or arg_3_1 == "pt" then
		local var_3_9 = "src/data/font/Other/" .. var_3_2 .. "_L" .. var_3_3

		if var_0_2(var_3_9) then
			return var_3_9
		end
	end

	if arg_3_1 ~= "ja" and arg_3_1 ~= "zh" then
		return arg_3_0
	end

	if arg_3_1 == "ja" then
		local var_3_10 = "src/data/font/Japanese/" .. var_3_2 .. "_J" .. var_3_3

		if var_0_2(var_3_10) then
			return var_3_10
		end
	elseif arg_3_1 == "zh" then
		local var_3_11 = "src/data/font/Chinese/arkpixel10.ttf"

		if var_0_2(arkpixelPath) then
			return var_3_11
		end

		local var_3_12 = "src/data/font/Chinese/" .. var_3_2 .. "_Zh" .. var_3_3

		if var_0_2(var_3_12) then
			return var_3_12
		end
	end

	return arg_3_0
end

function var_0_0.pagePath(arg_4_0)
	return var_0_0.resolve(arg_4_0)
end

local var_0_6 = setmetatable({}, {
	__mode = "k"
})

function var_0_0.rememberPath(arg_5_0, arg_5_1)
	if arg_5_0 and type(arg_5_1) == "string" then
		var_0_6[arg_5_0] = arg_5_1
	end

	return arg_5_0
end

function var_0_0.pathOf(arg_6_0)
	return arg_6_0 and var_0_6[arg_6_0] or nil
end

function var_0_0.styleOf(arg_7_0)
	local var_7_0 = var_0_0.pathOf(arg_7_0)

	if not var_7_0 then
		return nil
	end

	if (var_7_0:gsub("\\", "/"):match("([^/]+)$") or var_7_0):lower():find("ws", 1, true) then
		return "shadow"
	end

	return "plain"
end

if love and love.graphics and love.graphics.newFont and not var_0_0._newFontHooked then
	var_0_0._newFontHooked = true

	local var_0_7 = love.graphics.newFont

	function love.graphics.newFont(arg_8_0, ...)
		local var_8_0 = var_0_7(arg_8_0, ...)

		if var_8_0 then
			if type(arg_8_0) == "string" then
				var_0_6[var_8_0] = arg_8_0
			elseif type(arg_8_0) == "userdata" and arg_8_0.typeOf and arg_8_0:typeOf("FileData") then
				var_0_6[var_8_0] = arg_8_0:getFilename()
			end
		end

		return var_8_0
	end
end

local var_0_8 = {}

local function var_0_9(arg_9_0)
	if not var_0_2(arg_9_0) then
		return nil
	end

	local var_9_0 = var_0_8[arg_9_0]

	if var_9_0 == nil then
		local var_9_1, var_9_2 = pcall(love.graphics.newFont, arg_9_0)

		var_9_0 = var_9_1 and var_9_2 or false

		if var_9_0 then
			var_9_0:setFilter("nearest", "nearest")
		end

		var_0_8[arg_9_0] = var_9_0
	end

	return var_9_0 or nil
end

function var_0_0.attachFallbacks(arg_10_0, arg_10_1)
	var_0_0.rememberPath(arg_10_0, arg_10_1)

	if not arg_10_0 or not arg_10_0.setFallbacks or type(arg_10_1) ~= "string" then
		return arg_10_0
	end

	local var_10_0 = arg_10_1:gsub("\\", "/"):match("/Russian/([^/]+)%.fnt$")
	local var_10_1 = var_10_0 and var_0_4[var_10_0:lower()]
	local var_10_2 = var_10_1 and var_0_5[var_10_1]

	if not var_10_2 then
		return arg_10_0
	end

	local var_10_3 = var_10_2:gsub("^src/data/font/(.+)%.fnt$", "src/data/font/Latin/%1_La.fnt")
	local var_10_4 = {}

	var_10_4[#var_10_4 + 1] = var_0_9(var_10_3)
	var_10_4[#var_10_4 + 1] = var_0_9(var_10_2)

	if #var_10_4 > 0 then
		pcall(arg_10_0.setFallbacks, arg_10_0, unpack(var_10_4))
	end

	return arg_10_0
end

function var_0_0.developerFont(arg_11_0)
	if not var_0_0._developerFont and love and love.graphics and love.graphics.newFont then
		var_0_0._developerFont = love.graphics.newFont("src/data/font/Galmuri9W.fnt")

		var_0_0._developerFont:setFilter("nearest", "nearest")
	end

	return var_0_0._developerFont or arg_11_0
end

return var_0_0
