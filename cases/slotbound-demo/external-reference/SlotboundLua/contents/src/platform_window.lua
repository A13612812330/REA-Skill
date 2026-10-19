local var_0_0 = {
	usesCompositedFullscreen = function(arg_1_0, arg_1_1)
		return arg_1_1 == "Windows" and arg_1_0 == "fullscreen"
	end
}

function var_0_0.usesBorderlessPresentation(arg_2_0, arg_2_1)
	return arg_2_0 == "borderless" or var_0_0.usesCompositedFullscreen(arg_2_0, arg_2_1)
end

function var_0_0.normalizeRefreshRate(arg_3_0)
	local var_3_0 = tonumber(arg_3_0)

	if not var_3_0 or var_3_0 ~= var_3_0 or var_3_0 < 24 or var_3_0 > 1000 then
		return nil
	end

	return var_3_0
end

function var_0_0.compositorSafeDesktopArea(arg_4_0, arg_4_1, arg_4_2, arg_4_3, arg_4_4)
	arg_4_0, arg_4_1 = tonumber(arg_4_0) or 0, tonumber(arg_4_1) or 0
	arg_4_2, arg_4_3 = tonumber(arg_4_2), tonumber(arg_4_3)

	return arg_4_0, arg_4_1, arg_4_2, arg_4_3
end

return var_0_0
