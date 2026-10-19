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

local function var_0_3()
	local var_3_0 = 0.6
	local var_3_1 = 44100
	local var_3_2 = math.floor(var_3_0 * var_3_1)
	local var_3_3 = love.sound.newSoundData(var_3_2, var_3_1, 16, 1)
	local var_3_4 = {
		523,
		659,
		784,
		1046
	}
	local var_3_5 = 0.08

	for iter_3_0 = 0, var_3_2 - 1 do
		local var_3_6 = iter_3_0 / var_3_1
		local var_3_7 = 0

		for iter_3_1 = 1, #var_3_4 do
			local var_3_8 = (iter_3_1 - 1) * var_3_5

			if var_3_8 <= var_3_6 then
				local var_3_9 = var_3_6 - var_3_8
				local var_3_10 = math.exp(-12 * var_3_9)
				local var_3_11 = var_3_4[iter_3_1]
				local var_3_12 = 2 * math.pi * var_3_11 * var_3_9
				local var_3_13 = math.abs(var_3_12 / math.pi % 2 - 1) * 2 - 1
				local var_3_14 = math.sin(var_3_12) >= 0 and 1 or -1

				var_3_7 = var_3_7 + var_3_10 * (var_3_13 * 0.75 + var_3_14 * 0.1)
			end
		end

		var_3_3:setSample(iter_3_0, var_3_7 * 0.45)
	end

	local var_3_15, var_3_16 = pcall(love.audio.newSource, var_3_3, "static")

	if var_3_15 and var_3_16 then
		return var_3_16
	end

	return nil
end

local function var_0_4()
	local var_4_0 = 1.3
	local var_4_1 = 44100
	local var_4_2 = math.floor(var_4_0 * var_4_1)
	local var_4_3 = love.sound.newSoundData(var_4_2, var_4_1, 16, 1)
	local var_4_4 = {
		523,
		659,
		784,
		987,
		1046,
		1318,
		1568,
		2093
	}
	local var_4_5 = 0.06

	for iter_4_0 = 0, var_4_2 - 1 do
		local var_4_6 = iter_4_0 / var_4_1
		local var_4_7 = 0
		local var_4_8 = math.exp(-2.5 * var_4_6)
		local var_4_9 = 120 - 75 * (var_4_6 / var_4_0)
		local var_4_10 = var_4_7 + math.sin(2 * math.pi * var_4_9 * var_4_6) * var_4_8 * 0.6

		for iter_4_1 = 1, #var_4_4 do
			local var_4_11 = (iter_4_1 - 1) * var_4_5

			if var_4_11 <= var_4_6 then
				local var_4_12 = var_4_6 - var_4_11
				local var_4_13 = math.exp(-7 * var_4_12)
				local var_4_14 = var_4_4[iter_4_1]
				local var_4_15 = 2 * math.pi * var_4_14 * var_4_12
				local var_4_16 = math.abs(var_4_15 / math.pi % 2 - 1) * 2 - 1
				local var_4_17 = var_4_15 / math.pi % 2 - 1

				var_4_10 = var_4_10 + var_4_13 * (var_4_16 * 0.55 + var_4_17 * 0.2)
			end
		end

		if var_4_6 > 0.48 then
			local var_4_18 = var_4_6 - 0.48
			local var_4_19 = math.exp(-4 * var_4_18)
			local var_4_20 = 2093 + 12 * math.sin(2 * math.pi * 6 * var_4_18)
			local var_4_21 = 2637 + 12 * math.sin(2 * math.pi * 6 * var_4_18 + 2)

			var_4_10 = var_4_10 + var_4_19 * (math.sin(2 * math.pi * var_4_20 * var_4_18) + math.sin(2 * math.pi * var_4_21 * var_4_18)) * 0.3
		end

		var_4_3:setSample(iter_4_0, var_4_10 * 0.4)
	end

	local var_4_22, var_4_23 = pcall(love.audio.newSource, var_4_3, "static")

	if var_4_22 and var_4_23 then
		return var_4_23
	end

	return nil
end

local function var_0_5()
	local var_5_0 = 1.7
	local var_5_1 = 44100
	local var_5_2 = math.floor(var_5_0 * var_5_1)
	local var_5_3 = love.sound.newSoundData(var_5_2, var_5_1, 16, 1)
	local var_5_4 = {
		1046,
		1175,
		1318,
		1568,
		1760,
		2093,
		1760,
		1568,
		1318,
		1175
	}
	local var_5_5 = 0.05

	for iter_5_0 = 0, var_5_2 - 1 do
		local var_5_6 = iter_5_0 / var_5_1
		local var_5_7 = 0
		local var_5_8 = 2600 - 2100 * (var_5_6 * 2 % 1)
		local var_5_9 = var_5_7 + math.sin(2 * math.pi * var_5_8 * var_5_6) * math.exp(-1.4 * var_5_6) * 0.3

		for iter_5_1 = 1, #var_5_4 * 3 do
			local var_5_10 = (iter_5_1 - 1) % #var_5_4 + 1
			local var_5_11 = (iter_5_1 - 1) * var_5_5

			if var_5_11 <= var_5_6 and var_5_6 < var_5_11 + 0.15 then
				local var_5_12 = var_5_6 - var_5_11
				local var_5_13 = math.max(0, 1 - var_5_12 / 0.15) * math.sin(var_5_12 * math.pi / 0.15)
				local var_5_14 = var_5_4[var_5_10]
				local var_5_15 = 3 * math.sin(2 * math.pi * 6 * var_5_12)

				var_5_9 = var_5_9 + var_5_13 * math.sin(2 * math.pi * var_5_14 * var_5_12 + var_5_15) * 0.35
			end
		end

		local var_5_16 = math.exp(-3.5 * var_5_6) * (math.cos(2 * math.pi * 10 * var_5_6) * 0.4 + 0.6)
		local var_5_17 = var_5_9 + (math.random() * 2 - 1) * var_5_16 * 0.12 + math.sin(2 * math.pi * 50 * var_5_6) * math.exp(-1 * var_5_6) * 0.4

		var_5_3:setSample(iter_5_0, var_5_17 * 0.42)
	end

	local var_5_18, var_5_19 = pcall(love.audio.newSource, var_5_3, "static")

	if var_5_18 and var_5_19 then
		return var_5_19
	end

	return nil
end

function var_0_0.loadProceduralAudio(arg_6_0)
	if not love or not love.sound or not love.sound.newSoundData or not love.audio or not love.audio.newSource then
		return false
	end

	print("[procedural_audio] Generating custom synth sounds...")

	local var_6_0 = var_0_2()
	local var_6_1 = var_0_3()
	local var_6_2 = var_0_4()
	local var_6_3 = var_0_5()
	local var_6_4 = var_0_1()

	if var_6_0 then
		arg_6_0.custom_win = var_6_0
	end

	if var_6_1 then
		arg_6_0.custom_winrare = var_6_1
	end

	if var_6_2 then
		arg_6_0.custom_winlegend = var_6_2
	end

	if var_6_3 then
		arg_6_0.custom_winprism = var_6_3
	end

	if var_6_4 then
		arg_6_0.coinClink = var_6_4
	end

	print("[procedural_audio] Synthesized sounds successfully loaded.")

	return true
end

return var_0_0
