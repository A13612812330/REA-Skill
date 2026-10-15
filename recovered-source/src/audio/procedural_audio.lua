local var_0_0 = {}

local function var_0_1()
	local var_1_0 = 0.12
	local var_1_1 = 44100
	local var_1_2 = math.floor(var_1_0 * var_1_1)
	local var_1_3 = love.sound.newSoundData(var_1_2, var_1_1, 16, 1)

	for iter_1_0 = 0, var_1_2 - 1 do
		local var_1_4 = iter_1_0 / var_1_1
		local var_1_5 = math.exp(-45 * var_1_4)
		local var_1_6 = (math.random() * 2 - 1) * 0.08
		local var_1_7 = var_1_5 * (0.6 * math.sin(2 * math.pi * 3200 * var_1_4) + 0.4 * math.sin(2 * math.pi * 4800 * var_1_4) + var_1_6)

		var_1_3:setSample(iter_1_0, var_1_7)
	end

	local var_1_8, var_1_9 = pcall(love.audio.newSource, var_1_3, "static")

	if var_1_8 and var_1_9 then
		return var_1_9
	end

	return nil
end

local function var_0_2()
	local var_2_0 = 0.35
	local var_2_1 = 44100
	local var_2_2 = math.floor(var_2_0 * var_2_1)
	local var_2_3 = love.sound.newSoundData(var_2_2, var_2_1, 16, 1)

	for iter_2_0 = 0, var_2_2 - 1 do
		local var_2_4 = iter_2_0 / var_2_1
		local var_2_5 = 0

		if var_2_4 < 0.08 then
			var_2_5 = math.exp(-22 * var_2_4) * math.sin(2 * math.pi * 523 * var_2_4)
		else
			local var_2_6 = var_2_4 - 0.08

			var_2_5 = math.exp(-14 * var_2_6) * (0.85 * math.sin(2 * math.pi * 659 * var_2_6) + 0.15 * math.sin(2 * math.pi * 1318 * var_2_6))
		end

		var_2_3:setSample(iter_2_0, var_2_5 * 0.65)
	end

	local var_2_7, var_2_8 = pcall(love.audio.newSource, var_2_3, "static")

	if var_2_7 and var_2_8 then
		return var_2_8
	end

	return nil
end

function var_0_0.createSovereignPressureTone()
	if not love or not love.sound or not love.audio then
		return nil
	end

	local var_3_0, var_3_1 = pcall(function()
		local var_4_0 = 22050
		local var_4_1 = 1.15
		local var_4_2 = math.floor(var_4_0 * var_4_1)
		local var_4_3 = love.sound.newSoundData(var_4_2, var_4_0, 16, 1)

		for iter_4_0 = 0, var_4_2 - 1 do
			local var_4_4 = iter_4_0 / var_4_0
			local var_4_5 = math.min(1, var_4_4 / 0.025)
			local var_4_6 = var_4_5 * var_4_5 * (3 - 2 * var_4_5)
			local var_4_7 = math.min(1, (var_4_1 - var_4_4) / 0.2)
			local var_4_8 = var_4_7 * var_4_7 * (3 - 2 * var_4_7)
			local var_4_9 = 2 * math.pi * (52 * var_4_4 + 3.36 * (1 - math.exp(-var_4_4 / 0.12)))
			local var_4_10 = 0.55 * math.sin(var_4_9) + 0.22 * math.sin(var_4_9 * 2) + 0.1 * math.sin(var_4_9 * 3)
			local var_4_11 = 0.1 * math.sin(2 * math.pi * 208 * var_4_4) * math.exp(-var_4_4 * 4)

			var_4_3:setSample(iter_4_0, (var_4_10 + var_4_11) * var_4_6 * var_4_8 * math.exp(-var_4_4 * 2.3) * 0.65)
		end

		return love.audio.newSource(var_4_3, "static")
	end)

	return var_3_0 and var_3_1 or nil
end

var_0_0.AWAKEN_STAR_POP = 0.68

function var_0_0.awakeningStarData()
	if not love or not love.sound or not love.sound.newSoundData then
		return nil
	end

	local var_5_0 = 44100
	local var_5_1 = 2.45
	local var_5_2 = var_0_0.AWAKEN_STAR_POP
	local var_5_3 = math.floor(var_5_0 * var_5_1)
	local var_5_4 = {}

	for iter_5_0 = 1, var_5_3 do
		var_5_4[iter_5_0] = 0
	end

	local var_5_5 = math.sin
	local var_5_6 = math.exp
	local var_5_7 = math.pi * 2

	local function var_5_8(arg_6_0, arg_6_1, arg_6_2, arg_6_3, arg_6_4)
		local var_6_0 = math.floor(arg_6_0 * var_5_0)
		local var_6_1 = math.min(var_5_3 - 1, var_6_0 + math.floor(math.log(arg_6_2 / 0.0001) / arg_6_3 * var_5_0))

		arg_6_4 = arg_6_4 or 0.003

		for iter_6_0 = math.max(0, var_6_0), var_6_1 do
			local var_6_2 = (iter_6_0 - var_6_0) / var_5_0
			local var_6_3 = arg_6_2 * var_5_6(-arg_6_3 * var_6_2)

			if var_6_2 < arg_6_4 then
				var_6_3 = var_6_3 * var_6_2 / arg_6_4
			end

			var_5_4[iter_6_0 + 1] = var_5_4[iter_6_0 + 1] + var_6_3 * var_5_5(var_5_7 * arg_6_1 * var_6_2)
		end
	end

	local function var_5_9(arg_7_0, arg_7_1, arg_7_2, arg_7_3)
		var_5_8(arg_7_0, arg_7_1 * 1.0009, arg_7_2 * 0.7, arg_7_3)
		var_5_8(arg_7_0, arg_7_1 * 0.9991, arg_7_2 * 0.3, arg_7_3)
		var_5_8(arg_7_0, arg_7_1 * 2, arg_7_2 * 0.28, arg_7_3 * 1.5)
		var_5_8(arg_7_0, arg_7_1 * 2.76, arg_7_2 * 0.18, arg_7_3 * 2.2)
		var_5_8(arg_7_0, arg_7_1 * 4.07, arg_7_2 * 0.09, arg_7_3 * 3.4)
		var_5_8(arg_7_0, arg_7_1 * 5.4, arg_7_2 * 0.04, arg_7_3 * 4.8)
	end

	local var_5_10 = 90731
	local var_5_11 = 0
	local var_5_12 = 0
	local var_5_13 = 0.02
	local var_5_14 = var_5_2 - 0.015

	for iter_5_1 = math.floor(var_5_13 * var_5_0), math.floor(var_5_14 * var_5_0) do
		local var_5_15 = iter_5_1 / var_5_0
		local var_5_16 = (var_5_15 - var_5_13) / (var_5_14 - var_5_13)
		local var_5_17 = math.max(0, (var_5_15 - 0.04) / (var_5_2 - 0.04))^1.25 * 1.6 * var_5_7 + var_5_15 * 2

		var_5_10 = var_5_10 * 16807 % 2147483647

		local var_5_18 = 2 * var_5_5(math.pi * (650 * 8.615384615384615^var_5_16) / var_5_0)

		var_5_11 = var_5_11 + var_5_18 * var_5_12
		var_5_12 = var_5_12 + var_5_18 * (var_5_10 / 1073741823.5 - 1 - var_5_11 - 0.9 * var_5_12)

		local var_5_19 = var_5_16^1.5 * (0.65 + 0.35 * math.cos(2 * var_5_17)) * math.min(1, (1 - var_5_16) * 18)

		var_5_4[iter_5_1 + 1] = var_5_4[iter_5_1 + 1] + var_5_12 * var_5_19 * 0.32
	end

	local var_5_20 = math.floor(0.08 * var_5_0)
	local var_5_21 = math.floor((var_5_2 - 0.015) * var_5_0)
	local var_5_22 = 0

	for iter_5_2 = var_5_20, var_5_21 do
		local var_5_23 = (iter_5_2 - var_5_20) / (var_5_21 - var_5_20)

		var_5_22 = var_5_22 + var_5_7 * (330 * 2.9932424242424243^var_5_23^1.6 * (1 + 0.004 * var_5_5(var_5_7 * 6 * iter_5_2 / var_5_0))) / var_5_0

		local var_5_24 = 0.05 * var_5_23^2 * math.min(1, (1 - var_5_23) * 20)

		var_5_4[iter_5_2 + 1] = var_5_4[iter_5_2 + 1] + var_5_24 * (var_5_5(var_5_22) + 0.6 * var_5_5(var_5_22 * 1.5))
	end

	local var_5_25 = math.floor(var_5_2 * var_5_0)
	local var_5_26 = 0
	local var_5_27 = 0

	for iter_5_3 = var_5_25, math.min(var_5_3 - 1, var_5_25 + math.floor(0.16 * var_5_0)) do
		local var_5_28 = (iter_5_3 - var_5_25) / var_5_0

		var_5_10 = var_5_10 * 16807 % 2147483647

		local var_5_29 = var_5_10 / 1073741823.5 - 1
		local var_5_30 = (var_5_29 - var_5_26) * 0.5 * var_5_6(-700 * var_5_28)

		var_5_26 = var_5_29
		var_5_27 = var_5_27 + var_5_7 * (70 + 150 * var_5_6(-28 * var_5_28)) / var_5_0

		local var_5_31 = 0.42 * var_5_6(-24 * var_5_28) * math.min(1, var_5_28 / 0.002) * var_5_5(var_5_27)

		var_5_4[iter_5_3 + 1] = var_5_4[iter_5_3 + 1] + var_5_30 + var_5_31
	end

	var_5_9(var_5_2, 987.77, 0.55, 9)
	var_5_9(var_5_2 + 0.06, 1318.51, 1, 2.6)

	for iter_5_4, iter_5_5 in ipairs({
		1661.22,
		1975.53,
		2637.02
	}) do
		var_5_8(var_5_2 + 0.06, iter_5_5, 0.07, 1.7, 0.12)
	end

	local var_5_32 = {
		2637.02,
		3951.07,
		3322.44
	}

	for iter_5_6 = 0, 1 do
		for iter_5_7, iter_5_8 in ipairs(var_5_32) do
			local var_5_33 = var_5_2 + 0.14 + (iter_5_7 - 1) * 0.21 + iter_5_6 * 0.95 + 0.03
			local var_5_34 = (0.17 - iter_5_7 * 0.02) * (iter_5_6 == 0 and 1 or 0.38)

			var_5_8(var_5_33, iter_5_8, var_5_34, 18, 0.002)
			var_5_8(var_5_33, iter_5_8 * 2, var_5_34 * 0.22, 30, 0.002)
		end
	end

	local var_5_35 = 0

	for iter_5_9 = 1, var_5_3 do
		var_5_35 = math.max(var_5_35, math.abs(var_5_4[iter_5_9]))
	end

	local var_5_36 = var_5_35 > 0 and 0.62 / var_5_35 or 0
	local var_5_37 = math.floor(0.08 * var_5_0)
	local var_5_38 = love.sound.newSoundData(var_5_3, var_5_0, 16, 1)

	for iter_5_10 = 0, var_5_3 - 1 do
		local var_5_39 = var_5_4[iter_5_10 + 1] * var_5_36

		if iter_5_10 > var_5_3 - var_5_37 then
			var_5_39 = var_5_39 * (var_5_3 - iter_5_10) / var_5_37
		end

		var_5_38:setSample(iter_5_10, var_5_39)
	end

	return var_5_38
end

function var_0_0.playVanguardDrum(arg_8_0)
	if not love or not love.audio then
		return
	end

	local var_8_0 = arg_8_0 and arg_8_0.menuSettings and arg_8_0.menuSettings.sfxVolume or 1

	if var_8_0 <= 0 then
		return
	end

	if not var_0_0._vanguardDrum then
		var_0_0._vanguardDrum = love.audio.newSource("src/audio/battlefield/items/Vanguard Drum.wav", "static")

		var_0_0._vanguardDrum:setLooping(false)
	end

	var_0_0._vanguardDrum:stop()
	var_0_0._vanguardDrum:setVolume(math.max(0, math.min(1, var_8_0)) * 0.8)
	var_0_0._vanguardDrum:play()
end

function var_0_0.playWatchtowerCollapse(arg_9_0)
	if not love or not love.audio then
		return
	end

	local var_9_0 = arg_9_0 and arg_9_0.menuSettings and arg_9_0.menuSettings.sfxVolume or 1

	if var_9_0 <= 0 then
		return
	end

	if not var_0_0._watchtowerCollapse then
		var_0_0._watchtowerCollapse = love.audio.newSource("src/audio/battlefield/items/watchtower.wav", "static")

		var_0_0._watchtowerCollapse:setLooping(false)
	end

	var_0_0._watchtowerCollapse:stop()
	var_0_0._watchtowerCollapse:setVolume(math.max(0, math.min(1, var_9_0)) * 0.85)
	var_0_0._watchtowerCollapse:play()
end

function var_0_0.playShortExplosion(arg_10_0)
	if not love or not love.audio then
		return
	end

	local var_10_0 = arg_10_0 and arg_10_0.menuSettings and arg_10_0.menuSettings.sfxVolume or 1

	if var_10_0 <= 0 then
		return
	end

	var_0_0._shortExplosionPool = var_0_0._shortExplosionPool or {}
	var_0_0._shortExplosionRandom = var_0_0._shortExplosionRandom or love.math.newRandomGenerator()

	local var_10_1 = var_0_0._shortExplosionPool
	local var_10_2

	for iter_10_0, iter_10_1 in ipairs(var_10_1) do
		if not iter_10_1:isPlaying() then
			var_10_2 = iter_10_1

			break
		end
	end

	if not var_10_2 then
		if #var_10_1 < 8 then
			var_10_2 = var_10_1[1] and var_10_1[1]:clone() or love.audio.newSource("src/audio/battlefield/attacks/explosion/shortexplosion.wav", "static")

			var_10_2:setLooping(false)

			var_10_1[#var_10_1 + 1] = var_10_2
		else
			var_10_2 = table.remove(var_10_1, 1)

			var_10_2:stop()

			var_10_1[#var_10_1 + 1] = var_10_2
		end
	end

	var_10_2:setPitch(0.92 + var_0_0._shortExplosionRandom:random() * 0.16)
	var_10_2:setVolume(math.max(0, math.min(1, var_10_0)) * 0.8 * (0.92 + var_0_0._shortExplosionRandom:random() * 0.16))
	var_10_2:play()
end

local function var_0_3(arg_11_0, arg_11_1, arg_11_2)
	local var_11_0 = arg_11_0 and arg_11_0.audio and arg_11_0.audio[arg_11_2]

	if not var_11_0 then
		return false
	end

	local var_11_1 = arg_11_1 and arg_11_1.menuSettings and arg_11_1.menuSettings.sfxVolume or 1

	if var_11_1 <= 0 then
		return false
	end

	var_0_0._battleSoundPools = var_0_0._battleSoundPools or {}

	local var_11_2 = var_0_0._battleSoundPools[arg_11_2]

	if not var_11_2 or var_11_2.source ~= var_11_0 then
		var_11_2 = {
			serial = 0,
			source = var_11_0,
			pool = {
				var_11_0
			},
			started = {}
		}
		var_0_0._battleSoundPools[arg_11_2] = var_11_2
	end

	var_0_0._battleSoundRandom = var_0_0._battleSoundRandom or love.math.newRandomGenerator()

	local var_11_3 = var_11_2.pool
	local var_11_4 = var_11_2.started
	local var_11_5
	local var_11_6 = 0

	for iter_11_0, iter_11_1 in ipairs(var_11_3) do
		if iter_11_1:isPlaying() then
			var_11_6 = var_11_6 + 1
		else
			var_11_5 = var_11_5 or iter_11_1
		end
	end

	if not var_11_5 then
		if #var_11_3 < 16 and var_11_0.clone then
			var_11_5 = var_11_0:clone()
			var_11_3[#var_11_3 + 1] = var_11_5
		else
			local var_11_7 = 1

			for iter_11_2 = 2, #var_11_3 do
				if (var_11_4[iter_11_2] or 0) < (var_11_4[var_11_7] or 0) then
					var_11_7 = iter_11_2
				end
			end

			var_11_5 = var_11_3[var_11_7]

			var_11_5:stop()

			var_11_6 = var_11_6 - 1
		end
	end

	local var_11_8 = var_0_0._battleSoundRandom
	local var_11_9

	if arg_11_2 == "canonAttack" or arg_11_2 == "grenadeExplosion" or arg_11_2 == "bigGrenadeExplosion" then
		var_11_9 = 0.98 + var_11_8:random() * 0.04

		if var_11_2.lastPitch and math.abs(var_11_9 - var_11_2.lastPitch) < 0.006 then
			var_11_9 = var_11_2.lastPitch + (var_11_2.lastPitch >= 1 and -0.006 or 0.006)
		end

		var_11_2.lastPitch = var_11_9
	else
		var_11_9 = 1 + (var_11_8:random() + var_11_8:random() - 1) * 0.03
	end

	local var_11_10 = 1 + (var_11_8:random() + var_11_8:random() - 1) * 0.06
	local var_11_11 = 1 / math.sqrt(1 + var_11_6 * 0.25)
	local var_11_12 = arg_11_0.audioBaseGain and arg_11_0.audioBaseGain[arg_11_2] or 1

	var_11_5:setPitch(var_11_9)
	var_11_5:setVolume(var_11_1 * var_11_12 * var_11_10 * var_11_11)

	local var_11_13 = arg_11_0.audioCueOffset and arg_11_0.audioCueOffset[arg_11_2]

	if var_11_13 and var_11_5.seek then
		var_11_5:seek(var_11_13, "seconds")
	end

	var_11_5:play()

	var_11_2.serial = var_11_2.serial + 1

	for iter_11_3, iter_11_4 in ipairs(var_11_3) do
		if iter_11_4 == var_11_5 then
			var_11_4[iter_11_3] = var_11_2.serial

			break
		end
	end

	return true, var_11_5
end

function var_0_0.playGunAttack(arg_12_0, arg_12_1)
	return var_0_3(arg_12_0, arg_12_1, "gunAttack")
end

function var_0_0.playCannonAttack(arg_13_0, arg_13_1)
	return var_0_3(arg_13_0, arg_13_1, "canonAttack")
end

function var_0_0.playArcherAttack(arg_14_0, arg_14_1)
	local var_14_0 = arg_14_0 and arg_14_0.audio and arg_14_0.audio.slashAttackArcher1

	if not var_14_0 then
		return false
	end

	local var_14_1 = arg_14_1 and arg_14_1.menuSettings and arg_14_1.menuSettings.sfxVolume or 1
	local var_14_2 = arg_14_0.audioBaseGain and arg_14_0.audioBaseGain.slashAttackArcher1 or 1
	local var_14_3 = 0.02 + love.math.random() * 0.02
	local var_14_4 = 1 + (love.math.random() < 0.5 and -1 or 1) * var_14_3
	local var_14_5 = love.math.random() * 2 - 1
	local var_14_6 = math.pow(10, var_14_5 / 20)

	if var_14_0.setVolume then
		var_14_0:setVolume(var_14_1 * var_14_2 * var_14_6)
	end

	if var_14_0.setPitch then
		var_14_0:setPitch(var_14_4)
	end

	if var_14_0.isPlaying and var_14_0:isPlaying() then
		var_14_0:stop()
	end

	if var_14_0.play then
		var_14_0:play()
	end

	return true
end

function var_0_0.playSkillSound(arg_15_0, arg_15_1, arg_15_2)
	if not arg_15_2 then
		return false
	end

	return var_0_3(arg_15_0, arg_15_1, arg_15_2)
end

function var_0_0.stopSkillSound(arg_16_0)
	if arg_16_0 and arg_16_0.isPlaying and arg_16_0:isPlaying() then
		arg_16_0:stop()
	end
end

function var_0_0.playGrenadeExplosion(arg_17_0, arg_17_1)
	return var_0_3(arg_17_0, arg_17_1, "grenadeExplosion")
end

function var_0_0.playBigGrenadeExplosion(arg_18_0, arg_18_1)
	return var_0_3(arg_18_0, arg_18_1, "bigGrenadeExplosion")
end

function var_0_0.loadProceduralAudio(arg_19_0)
	if not love or not love.sound or not love.sound.newSoundData or not love.audio or not love.audio.newSource then
		return false
	end

	print("[procedural_audio] Generating custom synth sounds...")

	local var_19_0 = var_0_2()
	local var_19_1 = var_0_1()

	if var_19_0 then
		arg_19_0.custom_win = var_19_0
	end

	if var_19_1 then
		arg_19_0.coinClink = var_19_1
	end

	arg_19_0.cosmicPressure = var_0_0.createSovereignPressureTone()

	local var_19_2, var_19_3 = pcall(function()
		return love.audio.newSource(var_0_0.awakeningStarData(), "static")
	end)

	if var_19_2 and var_19_3 then
		arg_19_0.awakenStar = var_19_3
	end

	print("[procedural_audio] Synthesized sounds successfully loaded.")

	return true
end

return var_0_0
