local var_0_0 = {}
local var_0_1 = 4

local function var_0_2()
	return love.timer and love.timer.getTime and love.timer.getTime() or 0
end

local function var_0_3(arg_2_0, arg_2_1)
	local var_2_0 = var_0_2()

	if var_2_0 - (arg_2_0.lastSoundT or -10) < 0.035 then
		return
	end

	local var_2_1 = rawget(_G, "loadedAssets")
	local var_2_2 = var_2_1 and var_2_1.audio and var_2_1.audio.buttonHover

	if not var_2_2 or not var_2_2.clone then
		return
	end

	arg_2_0.sounds = arg_2_0.sounds or {}

	local var_2_3

	for iter_2_0, iter_2_1 in ipairs(arg_2_0.sounds) do
		if iter_2_1 and iter_2_1.isPlaying and not iter_2_1:isPlaying() then
			var_2_3 = iter_2_1

			break
		end
	end

	if not var_2_3 and #arg_2_0.sounds < var_0_1 then
		var_2_3 = var_2_2:clone()
		arg_2_0.sounds[#arg_2_0.sounds + 1] = var_2_3
	end

	if not var_2_3 then
		return
	end

	local var_2_4 = arg_2_1 and arg_2_1.menuSettings and arg_2_1.menuSettings.sfxVolume or 1

	if var_2_3.setVolume then
		var_2_3:setVolume(var_2_4 * 0.28)
	end

	if var_2_3.setPitch then
		var_2_3:setPitch(1.15 + 0.03 * ((arg_2_0.serial or 0) % 2))
	end

	var_2_3:play()

	arg_2_0.lastSoundT = var_2_0
end

function var_0_0.track(arg_3_0, arg_3_1, arg_3_2)
	if not arg_3_0 then
		return
	end

	local var_3_0 = math.floor((tonumber(arg_3_1) or 0) + 0.5)

	if arg_3_0.value == nil then
		arg_3_0.value = var_3_0

		return
	end

	if var_3_0 ~= arg_3_0.value then
		local var_3_1 = var_3_0 - arg_3_0.value

		arg_3_0.value = var_3_0
		arg_3_0.impactT = var_0_2()
		arg_3_0.serial = (arg_3_0.serial or 0) + 1

		if var_3_1 < 0 then
			arg_3_0.damageT = arg_3_0.impactT
			arg_3_0.damageSerial = arg_3_0.serial
		end

		var_0_3(arg_3_0, arg_3_2)
	end
end

function var_0_0.getPunch(arg_4_0)
	if not arg_4_0 then
		return 1, 1, 0
	end

	local var_4_0 = var_0_2() - (arg_4_0.impactT or -10)
	local var_4_1 = 0

	if var_4_0 >= 0 and var_4_0 < 0.09 then
		var_4_1 = math.exp(-32 * var_4_0)
	end

	local var_4_2 = (arg_4_0.serial or 0) % 2 == 0 and -1 or 1

	return 1 + 0.18 * var_4_1, 1 - 0.09 * var_4_1, var_4_2 * 1.5 * var_4_1
end

function var_0_0.getDamageSlice(arg_5_0)
	if not arg_5_0 then
		return 0, 0
	end

	local var_5_0 = var_0_2() - (arg_5_0.damageT or -10)

	if var_5_0 < 0 or var_5_0 >= 0.28 then
		return 0, 0
	end

	local var_5_1 = var_5_0 / 0.28
	local var_5_2 = var_5_1 < 0.18 and var_5_1 / 0.18 or 1 - (var_5_1 - 0.18) / 0.82
	local var_5_3 = math.max(0, math.min(1, var_5_2))
	local var_5_4 = (arg_5_0.damageSerial or 0) % 2 == 0 and -1 or 1

	return var_5_3, var_5_4
end

return var_0_0
