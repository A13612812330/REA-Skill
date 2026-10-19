local var_0_0 = {}

local function var_0_1(arg_1_0, arg_1_1, arg_1_2)
	arg_1_1 = arg_1_1 or {}

	local var_1_0 = tonumber(arg_1_1.hiddenY) or -(tonumber(arg_1_2) or 128)
	local var_1_1 = tonumber(arg_1_1.visibleY) or 0

	return tonumber(arg_1_0 and arg_1_0.y) or var_1_0, var_1_0, var_1_1
end

function var_0_0.progress(arg_2_0, arg_2_1, arg_2_2)
	local var_2_0, var_2_1, var_2_2 = var_0_1(arg_2_0, arg_2_1, arg_2_2)
	local var_2_3 = math.max(1e-06, math.abs(var_2_2 - var_2_1))

	return math.max(0, math.min(1, (var_2_0 - var_2_1) / var_2_3))
end

function var_0_0.isVisible(arg_3_0, arg_3_1, arg_3_2)
	if not arg_3_0 then
		return false
	end

	if arg_3_0.active == true then
		return true
	end

	return var_0_0.progress(arg_3_0, arg_3_1, arg_3_2) > 0.0001
end

return var_0_0
