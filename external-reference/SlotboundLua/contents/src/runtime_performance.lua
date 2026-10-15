local var_0_0 = {}
local var_0_1 = false
local var_0_2 = 0
local var_0_3 = {
	gcMemoryKB = 0,
	clampedDeltaCount = 0,
	spikeCount = 0,
	worstFrameTimeMs = 0,
	averageFrameTimeMs = 0,
	frameTimeMs = 0
}
local var_0_4 = 0.1
local var_0_5 = 0.05

local function var_0_6()
	if var_0_1 then
		return
	end

	var_0_1 = true

	pcall(collectgarbage, "setpause", 120)
	pcall(collectgarbage, "setstepmul", 200)
end

function var_0_0.beginFrame(arg_2_0)
	var_0_6()

	var_0_2 = var_0_2 + 1
	arg_2_0 = tonumber(arg_2_0) or 0

	if arg_2_0 < 0 then
		arg_2_0 = 0
	end

	local var_2_0 = arg_2_0 * 1000

	var_0_3.frameTimeMs = var_2_0

	if var_0_2 == 1 then
		var_0_3.averageFrameTimeMs = var_2_0
	else
		var_0_3.averageFrameTimeMs = var_0_3.averageFrameTimeMs + (var_2_0 - var_0_3.averageFrameTimeMs) * 0.05
	end

	if var_2_0 > var_0_3.worstFrameTimeMs then
		var_0_3.worstFrameTimeMs = var_2_0
	end

	if arg_2_0 >= var_0_5 then
		var_0_3.spikeCount = var_0_3.spikeCount + 1
	end

	if var_0_2 % 2 == 0 and arg_2_0 < 0.022222222222222223 then
		pcall(collectgarbage, "step", 16)
	elseif var_0_2 % 8 == 0 and arg_2_0 < var_0_5 then
		pcall(collectgarbage, "step", 4)
	end

	if var_0_2 % 60 == 0 then
		local var_2_1, var_2_2 = pcall(collectgarbage, "count")

		if var_2_1 then
			var_0_3.gcMemoryKB = tonumber(var_2_2) or var_0_3.gcMemoryKB
		end
	end

	if arg_2_0 > var_0_4 then
		var_0_3.clampedDeltaCount = var_0_3.clampedDeltaCount + 1
		arg_2_0 = var_0_4
	end

	rawset(_G, "__slotPerformance", var_0_3)

	return arg_2_0
end

function var_0_0.getStats()
	return var_0_3
end

function var_0_0.resetWorstFrame()
	var_0_3.worstFrameTimeMs = var_0_3.frameTimeMs
	var_0_3.spikeCount = 0
end

return var_0_0
