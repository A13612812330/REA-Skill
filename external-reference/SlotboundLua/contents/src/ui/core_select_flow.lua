local var_0_0 = {
	getCapacity = function(arg_1_0, arg_1_1)
		local var_1_0 = arg_1_1 and arg_1_1.getActive and arg_1_1.getActive() or {}
		local var_1_1 = type(var_1_0) == "table" and #var_1_0 or 0
		local var_1_2 = arg_1_0 and arg_1_0.coreCountDisplay and arg_1_0.coreCountDisplay.max or 8
		local var_1_3 = math.max(1, math.floor(tonumber(var_1_2) or 8))

		return var_1_1, var_1_3
	end
}

function var_0_0.isFull(arg_2_0, arg_2_1)
	local var_2_0, var_2_1 = var_0_0.getCapacity(arg_2_0, arg_2_1)

	return var_2_1 <= var_2_0
end

function var_0_0.getButtonMode(arg_3_0, arg_3_1, arg_3_2)
	if arg_3_2 == "detail" then
		return "detail"
	end

	if var_0_0.isFull(arg_3_0, arg_3_1) then
		return "capacity"
	end

	return "normal"
end

function var_0_0.defer(arg_4_0, arg_4_1)
	if not arg_4_0 or not arg_4_0._coreSelect or not arg_4_0._coreSelect.active then
		return false
	end

	local var_4_0 = arg_4_0._coreSelect

	var_4_0.active = false
	var_4_0._returnPromptT0 = arg_4_1 or 0
	var_4_0._btnHoverState = nil
	var_4_0._hoverState = nil
	var_4_0._denyShake = nil
	var_4_0._discardConfirm = nil
	arg_4_0._deferredCoreSelect = var_4_0
	arg_4_0._coreSelect = nil

	return true
end

function var_0_0.resume(arg_5_0, arg_5_1)
	if not arg_5_0 or not arg_5_0._deferredCoreSelect then
		return false
	end

	if arg_5_0._coreSelect and arg_5_0._coreSelect.active then
		return false
	end

	local var_5_0 = arg_5_0._deferredCoreSelect

	arg_5_0._deferredCoreSelect = nil
	var_5_0.active = true
	var_5_0.fromCountdown = true
	var_5_0.startT = arg_5_1 or 0
	var_5_0.left = nil
	var_5_0.mid = nil
	var_5_0.right = nil
	var_5_0._btnHoverState = nil
	var_5_0._hoverState = nil
	var_5_0._denyShake = nil
	arg_5_0._coreSelect = var_5_0

	return true
end

function var_0_0.clearDeferred(arg_6_0)
	if not arg_6_0 then
		return
	end

	arg_6_0._deferredCoreSelect = nil
	arg_6_0._coreSelectReturnHover = nil
end

function var_0_0.skipPending(arg_7_0)
	if not arg_7_0 then
		return false
	end

	local var_7_0 = arg_7_0._coreSelect and arg_7_0._coreSelect.active and arg_7_0._coreSelect.mode ~= "detail"
	local var_7_1 = arg_7_0._deferredCoreSelect ~= nil

	if not var_7_0 and not var_7_1 then
		return false
	end

	if var_7_0 then
		arg_7_0._coreSelect.active = false
		arg_7_0._coreSelect = nil
	end

	var_0_0.clearDeferred(arg_7_0)

	return true
end

return var_0_0
