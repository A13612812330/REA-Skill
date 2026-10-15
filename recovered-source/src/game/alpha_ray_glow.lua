local var_0_0 = {}
local var_0_1

function var_0_0.buildDistanceImageData(arg_1_0, arg_1_1, arg_1_2, arg_1_3, arg_1_4)
	assert(arg_1_0 and arg_1_0.getDimensions and arg_1_0.getPixel, "alpha ray glow requires source ImageData")

	local var_1_0, var_1_1 = arg_1_0:getDimensions()
	local var_1_2 = math.max(1, math.floor(tonumber(arg_1_1) or var_1_0))
	local var_1_3 = math.max(1, math.floor(tonumber(arg_1_2) or var_1_1))
	local var_1_4 = math.max(1, math.min(254, math.floor(tonumber(arg_1_3) or 32)))
	local var_1_5 = tonumber(arg_1_4) or 0.01
	local var_1_6 = var_1_4 + 1
	local var_1_7 = {}
	local var_1_8 = {}

	for iter_1_0 = 0, var_1_3 - 1 do
		local var_1_9 = math.min(var_1_1 - 1, math.floor((iter_1_0 + 0.5) * var_1_1 / var_1_3))
		local var_1_10 = iter_1_0 * var_1_2

		for iter_1_1 = 0, var_1_2 - 1 do
			local var_1_11 = math.min(var_1_0 - 1, math.floor((iter_1_1 + 0.5) * var_1_0 / var_1_2))
			local var_1_12, var_1_13, var_1_14, var_1_15 = arg_1_0:getPixel(var_1_11, var_1_9)
			local var_1_16 = var_1_10 + iter_1_1 + 1
			local var_1_17 = var_1_5 < (var_1_15 or 0)

			var_1_7[var_1_16] = var_1_17
			var_1_8[var_1_16] = var_1_17 and 0 or var_1_6
		end
	end

	local function var_1_18(arg_2_0, arg_2_1)
		if arg_2_1 > 0 and arg_2_1 < var_1_8[arg_2_0] then
			var_1_8[arg_2_0] = arg_2_1
		end
	end

	for iter_1_2 = 0, var_1_3 - 1 do
		local var_1_19 = iter_1_2 * var_1_2
		local var_1_20

		for iter_1_3 = 0, var_1_2 - 1 do
			local var_1_21 = var_1_19 + iter_1_3 + 1

			if var_1_7[var_1_21] then
				var_1_20 = iter_1_3
			elseif var_1_20 then
				var_1_18(var_1_21, iter_1_3 - var_1_20)
			end
		end

		local var_1_22

		for iter_1_4 = var_1_2 - 1, 0, -1 do
			local var_1_23 = var_1_19 + iter_1_4 + 1

			if var_1_7[var_1_23] then
				var_1_22 = iter_1_4
			elseif var_1_22 then
				var_1_18(var_1_23, var_1_22 - iter_1_4)
			end
		end
	end

	for iter_1_5 = 0, var_1_2 - 1 do
		local var_1_24

		for iter_1_6 = 0, var_1_3 - 1 do
			local var_1_25 = iter_1_6 * var_1_2 + iter_1_5 + 1

			if var_1_7[var_1_25] then
				var_1_24 = iter_1_6
			elseif var_1_24 then
				var_1_18(var_1_25, iter_1_6 - var_1_24)
			end
		end

		local var_1_26

		for iter_1_7 = var_1_3 - 1, 0, -1 do
			local var_1_27 = iter_1_7 * var_1_2 + iter_1_5 + 1

			if var_1_7[var_1_27] then
				var_1_26 = iter_1_7
			elseif var_1_26 then
				var_1_18(var_1_27, var_1_26 - iter_1_7)
			end
		end
	end

	local var_1_28 = {}

	for iter_1_8 = 0, var_1_3 - 1 do
		for iter_1_9 = 0, var_1_2 - 1 do
			local var_1_29 = iter_1_8 * var_1_2 + iter_1_9 + 1
			local var_1_30 = iter_1_9 - iter_1_8 + var_1_3
			local var_1_31 = var_1_28[var_1_30]

			if var_1_7[var_1_29] then
				var_1_28[var_1_30] = iter_1_8
			elseif var_1_31 then
				var_1_18(var_1_29, iter_1_8 - var_1_31)
			end
		end
	end

	local var_1_32 = {}

	for iter_1_10 = var_1_3 - 1, 0, -1 do
		for iter_1_11 = var_1_2 - 1, 0, -1 do
			local var_1_33 = iter_1_10 * var_1_2 + iter_1_11 + 1
			local var_1_34 = iter_1_11 - iter_1_10 + var_1_3
			local var_1_35 = var_1_32[var_1_34]

			if var_1_7[var_1_33] then
				var_1_32[var_1_34] = iter_1_10
			elseif var_1_35 then
				var_1_18(var_1_33, var_1_35 - iter_1_10)
			end
		end
	end

	local var_1_36 = {}

	for iter_1_12 = 0, var_1_3 - 1 do
		for iter_1_13 = var_1_2 - 1, 0, -1 do
			local var_1_37 = iter_1_12 * var_1_2 + iter_1_13 + 1
			local var_1_38 = iter_1_13 + iter_1_12
			local var_1_39 = var_1_36[var_1_38]

			if var_1_7[var_1_37] then
				var_1_36[var_1_38] = iter_1_12
			elseif var_1_39 then
				var_1_18(var_1_37, iter_1_12 - var_1_39)
			end
		end
	end

	local var_1_40 = {}

	for iter_1_14 = var_1_3 - 1, 0, -1 do
		for iter_1_15 = 0, var_1_2 - 1 do
			local var_1_41 = iter_1_14 * var_1_2 + iter_1_15 + 1
			local var_1_42 = iter_1_15 + iter_1_14
			local var_1_43 = var_1_40[var_1_42]

			if var_1_7[var_1_41] then
				var_1_40[var_1_42] = iter_1_14
			elseif var_1_43 then
				var_1_18(var_1_41, var_1_43 - iter_1_14)
			end
		end
	end

	local var_1_44 = love.image.newImageData(var_1_2, var_1_3)

	for iter_1_16 = 0, var_1_3 - 1 do
		local var_1_45 = iter_1_16 * var_1_2

		for iter_1_17 = 0, var_1_2 - 1 do
			local var_1_46 = var_1_8[var_1_45 + iter_1_17 + 1]
			local var_1_47 = var_1_46 >= 1 and var_1_46 <= var_1_4 and var_1_46 / 255 or 0

			var_1_44:setPixel(iter_1_17, iter_1_16, var_1_47, 0, 0, 1)
		end
	end

	return var_1_44
end

function var_0_0.buildDistanceImage(arg_3_0, arg_3_1, arg_3_2, arg_3_3, arg_3_4)
	local var_3_0 = var_0_0.buildDistanceImageData(arg_3_0, arg_3_1, arg_3_2, arg_3_3, arg_3_4)
	local var_3_1 = love.graphics.newImage(var_3_0)

	var_3_1:setFilter("nearest", "nearest")

	return var_3_1
end

function var_0_0.getShader()
	if var_0_1 then
		return var_0_1
	end

	var_0_1 = love.graphics.newShader("    extern vec4 glowColor;\n    extern float maxRadius;\n    extern float falloff;\n    extern float baseAlpha;\n    extern float pulse;\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n      float found = floor(Texel(tex, tc).r * 255.0 + 0.5);\n      if (found < 0.5 || found > maxRadius + 0.001) return vec4(0.0);\n      float u = (found - 1.0) / max(maxRadius, 0.5);\n      float fade = pow(1.0 - clamp(u, 0.0, 1.0), falloff);\n      float alpha = glowColor.a * baseAlpha * fade * pulse;\n      return vec4(glowColor.rgb, alpha) * color;\n    }\n  ")

	return var_0_1
end

function var_0_0.release()
	if var_0_1 then
		pcall(var_0_1.release, var_0_1)

		var_0_1 = nil
	end
end

return var_0_0
