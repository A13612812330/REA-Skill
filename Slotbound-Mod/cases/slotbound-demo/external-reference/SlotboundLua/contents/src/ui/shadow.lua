local var_0_0 = {}
local var_0_1 = {}

local function var_0_2(arg_1_0)
	if arg_1_0 < 0 then
		return 0
	end

	if arg_1_0 > 1 then
		return 1
	end

	return arg_1_0
end

local function var_0_3(arg_2_0, arg_2_1, arg_2_2)
	local var_2_0 = love.image.newImageData(arg_2_0, arg_2_1)
	local var_2_1 = (arg_2_0 - 1) * 0.5
	local var_2_2 = (arg_2_1 - 1) * 0.62
	local var_2_3 = math.max(1, (arg_2_0 - 2) * 0.5)
	local var_2_4 = math.max(1, (arg_2_1 - 2) * 0.5)
	local var_2_5 = arg_2_2 or 2

	for iter_2_0 = 0, arg_2_1 - 1 do
		for iter_2_1 = 0, arg_2_0 - 1 do
			local var_2_6 = (iter_2_1 - var_2_1) / var_2_3
			local var_2_7 = (iter_2_0 - var_2_2) / var_2_4
			local var_2_8 = math.pow(math.abs(var_2_6), var_2_5) + math.pow(math.abs(var_2_7), var_2_5)
			local var_2_9 = 0

			if iter_2_0 < arg_2_1 - 1 and var_2_8 <= 1 then
				var_2_9 = 0.36
			end

			var_2_0:setPixel(iter_2_1, iter_2_0, 0, 0, 0, var_2_9)
		end
	end

	local var_2_10 = love.graphics.newImage(var_2_0)

	var_2_10:setFilter("nearest", "nearest")

	return var_2_10
end

local function var_0_4(arg_3_0, arg_3_1, arg_3_2)
	return tostring(arg_3_0) .. "x" .. tostring(arg_3_1) .. "p" .. tostring(arg_3_2 or 2)
end

function var_0_0.get(arg_4_0, arg_4_1, arg_4_2)
	arg_4_0 = math.max(1, math.floor(arg_4_0 or 1))
	arg_4_1 = math.max(1, math.floor(arg_4_1 or 1))

	local var_4_0 = var_0_4(arg_4_0, arg_4_1, arg_4_2)
	local var_4_1 = var_0_1[var_4_0]

	if not var_4_1 then
		var_4_1 = var_0_3(arg_4_0, arg_4_1, arg_4_2)
		var_0_1[var_4_0] = var_4_1
	end

	return var_4_1, arg_4_0, arg_4_1
end

function var_0_0.draw(arg_5_0, arg_5_1, arg_5_2, arg_5_3, arg_5_4, arg_5_5, arg_5_6, arg_5_7)
	if not arg_5_4 or arg_5_4 <= 0 then
		return
	end

	local var_5_0, var_5_1, var_5_2 = var_0_0.get(arg_5_2, arg_5_3, arg_5_7)

	if not var_5_0 then
		return
	end

	arg_5_5 = var_0_2(arg_5_5 or 1)

	local var_5_3, var_5_4 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha")

	local var_5_5 = 1
	local var_5_6 = 1
	local var_5_7 = 1

	if arg_5_6 and type(arg_5_6) == "table" then
		var_5_5 = arg_5_6[1] or 1
		var_5_6 = arg_5_6[2] or 1
		var_5_7 = arg_5_6[3] or 1
	end

	love.graphics.setColor(var_5_5, var_5_6, var_5_7, arg_5_5)
	love.graphics.draw(var_5_0, math.floor(arg_5_0 + 0.5), math.floor(arg_5_1 + 0.5), 0, arg_5_4, arg_5_4, var_5_1 / 2, var_5_2)
	love.graphics.setColor(1, 1, 1, 1)

	if var_5_3 then
		love.graphics.setBlendMode(var_5_3, var_5_4)
	end
end

return var_0_0
