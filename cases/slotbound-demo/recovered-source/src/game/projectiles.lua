-- Recovered source: generated locals lifted into per-invocation tables.
local __recovered_scope_0 = {}
 __recovered_scope_0.var_0_0 = nil
 __recovered_scope_0.var_0_1 = {}
 __recovered_scope_0.var_0_2 = 159
 __recovered_scope_0.var_0_3 = 68
 __recovered_scope_0.var_0_4 = 60

 function __recovered_scope_0.var_0_5(arg_1_0)
	return math.floor((tonumber(arg_1_0) or 0) * 255 + 0.5)
end

 function __recovered_scope_0.var_0_6(arg_2_0)
	if arg_2_0 and arg_2_0._bodyColX and arg_2_0._bodyColY and arg_2_0._bodyColW and arg_2_0._bodyColH then
		return arg_2_0._bodyColX + arg_2_0._bodyColW * 0.5, arg_2_0._bodyColY + arg_2_0._bodyColH * 0.5
	end

	if arg_2_0 and arg_2_0.colX and arg_2_0.colY and arg_2_0.colW and arg_2_0.colH then
		return arg_2_0.colX + arg_2_0.colW * 0.5, arg_2_0.colY + arg_2_0.colH * 0.5
	end

	return tonumber(arg_2_0 and arg_2_0.x) or 0, tonumber(arg_2_0 and arg_2_0.y) or 0
end

 function __recovered_scope_0.var_0_7(arg_3_0)
	local var_3_0 = arg_3_0 and arg_3_0.hitShake

	if not var_3_0 or not var_3_0.t or not var_3_0.dur then
		return 0
	end

	local var_3_1 = math.max(0, math.min(1, (tonumber(var_3_0.t) or 0) / math.max(1e-09, tonumber(var_3_0.dur) or 0.11)))
	local var_3_2 = math.floor((tonumber(var_3_0.amp) or 2) * (1 - var_3_1) + 0.5)

	if var_3_2 <= 0 then
		return 0
	end

	return var_3_2 * (math.floor((tonumber(var_3_0.t) or 0) * 60) % 2 == 0 and -1 or 1)
end

 function __recovered_scope_0.var_0_8(arg_4_0, arg_4_1)
	local var_4_0 = arg_4_1
	local var_4_1 = arg_4_1
	local var_4_2 = arg_4_0 and arg_4_0.braceSquash

	if var_4_2 and var_4_2.t and var_4_2.dur then
		local var_4_3 = math.max(0, math.min(1, (tonumber(var_4_2.t) or 0) / math.max(1e-09, tonumber(var_4_2.dur) or 0.18)))
		local var_4_4 = (tonumber(var_4_2.amt) or 0.25) * math.sin(var_4_3 * math.pi)

		var_4_0 = var_4_0 * (1 + var_4_4)
		var_4_1 = var_4_1 * (1 - var_4_4)
	end

	local var_4_5 = arg_4_0 and arg_4_0.curseSquash

	if var_4_5 and var_4_5.t and var_4_5.dur then
		local var_4_6 = math.max(0, math.min(1, (tonumber(var_4_5.t) or 0) / math.max(1e-09, tonumber(var_4_5.dur) or 0.22)))
		local var_4_7 = (tonumber(var_4_5.amt) or 0.16) * math.sin(var_4_6 * math.pi)

		var_4_0 = var_4_0 * (1 + var_4_7)
		var_4_1 = var_4_1 * (1 - var_4_7 * 0.72)
	end

	return var_4_0, var_4_1
end

function __recovered_scope_0.var_0_1.matches(arg_5_0)
	if not arg_5_0 then
		return false
	end

	return arg_5_0.kind == "Ember Imp" or arg_5_0.kind == "불씨 임프" or arg_5_0.kind == "불씨 임프 (Ember Imp)" or arg_5_0.skin == "Ember Imp" or arg_5_0.skin == "불씨 임프" or arg_5_0.skin == "불씨 임프 (Ember Imp)"
end

function __recovered_scope_0.var_0_1.findAttackMarker(arg_6_0, arg_6_1)
	local var_6_0 = tonumber(arg_6_0 and arg_6_0.frameW) or 32
	local var_6_1 = tonumber(arg_6_0 and arg_6_0.frameH) or 32
	local var_6_2 = arg_6_0 and arg_6_0.animations and arg_6_0.animations.attack
	local var_6_3 = arg_6_0 and arg_6_0.imageData

	if not var_6_2 or not var_6_3 then
		return nil
	end

	local var_6_4 = math.max(1, math.min(math.floor(tonumber(arg_6_1) or 4), tonumber(var_6_2.frames) or 1))
	local var_6_5 = tostring(var_6_4)
	local var_6_6 = arg_6_0._emberImpAttackMarkers

	if var_6_6 and var_6_6[var_6_5] then
		local var_6_7 = var_6_6[var_6_5]

		return var_6_7.x, var_6_7.y, var_6_7.count
	end

	local var_6_8 = (var_6_4 - 1) * var_6_0
	local var_6_9 = tonumber(var_6_2.y) or (math.max(1, tonumber(var_6_2.row) or 1) - 1) * var_6_1
	local var_6_10, var_6_11 = var_6_3:getDimensions()

	if var_6_8 < 0 or var_6_9 < 0 or var_6_10 < var_6_8 + var_6_0 or var_6_11 < var_6_9 + var_6_1 then
		return nil
	end

	local var_6_12 = 0
	local var_6_13 = 0
	local var_6_14 = 0

	for iter_6_0 = 0, var_6_1 - 1 do
		for iter_6_1 = 0, var_6_0 - 1 do
			local var_6_15, var_6_16, var_6_17, var_6_18 = var_6_3:getPixel(var_6_8 + iter_6_1, var_6_9 + iter_6_0)

			if var_6_18 and var_6_18 > 0 and __recovered_scope_0.var_0_5(var_6_15) == __recovered_scope_0.var_0_2 and __recovered_scope_0.var_0_5(var_6_16) == __recovered_scope_0.var_0_3 and __recovered_scope_0.var_0_5(var_6_17) == __recovered_scope_0.var_0_4 then
				var_6_12 = var_6_12 + iter_6_1 + 0.5
				var_6_13 = var_6_13 + iter_6_0 + 0.5
				var_6_14 = var_6_14 + 1
			end
		end
	end

	if var_6_14 <= 0 then
		return nil
	end

	local var_6_19 = {
		x = var_6_12 / var_6_14,
		y = var_6_13 / var_6_14,
		count = var_6_14
	}

	arg_6_0._emberImpAttackMarkers = var_6_6 or {}
	arg_6_0._emberImpAttackMarkers[var_6_5] = var_6_19

	return var_6_19.x, var_6_19.y, var_6_19.count
end

function __recovered_scope_0.var_0_1.getProjectileLaunch(arg_7_0, arg_7_1, arg_7_2, arg_7_3, arg_7_4)
	local var_7_0, var_7_1, var_7_2 = __recovered_scope_0.var_0_1.findAttackMarker(arg_7_1, 4)

	if not var_7_0 then
		return nil
	end

	local var_7_3 = tonumber(arg_7_1 and arg_7_1.frameW) or 32
	local var_7_4 = tonumber(arg_7_1 and arg_7_1.frameH) or 32
	local var_7_5 = math.max(1, math.floor((tonumber(arg_7_2) or 32) / 32 + 0.5))
	local var_7_6, var_7_7 = __recovered_scope_0.var_0_8(arg_7_0, var_7_5)
	local var_7_8 = (tonumber(arg_7_0 and arg_7_0.facing) or -1) < 0 and -1 or 1
	local var_7_9 = math.floor((tonumber(arg_7_0 and arg_7_0.x) or 0) + 0.5) + __recovered_scope_0.var_0_7(arg_7_0)
	local var_7_10 = math.floor((tonumber(arg_7_0 and arg_7_0.y) or 0) + 0.5)
	local var_7_11 = var_7_9 + (var_7_0 - var_7_3 * 0.5) * var_7_6 * var_7_8
	local var_7_12 = var_7_10 + (var_7_1 - var_7_4 * 0.5) * var_7_7
	local var_7_13, var_7_14 = __recovered_scope_0.var_0_6(arg_7_3)
	local var_7_15 = var_7_13 - var_7_11
	local var_7_16 = var_7_14 - var_7_12
	local var_7_17 = math.sqrt(var_7_15 * var_7_15 + var_7_16 * var_7_16)

	if var_7_17 <= 1e-05 then
		return nil
	end

	local var_7_18 = var_7_15 / var_7_17
	local var_7_19 = var_7_16 / var_7_17
	local var_7_20 = arg_7_4 and arg_7_4.bounds and arg_7_4.bounds[1]
	local var_7_21 = (tonumber(var_7_20 and var_7_20.w) or tonumber(arg_7_4 and arg_7_4.frameW) or 16) * var_7_5 * 0.5

	return var_7_11 + var_7_18 * var_7_21, var_7_12 + var_7_19 * var_7_21, var_7_13, var_7_14, var_7_5, var_7_2, var_7_11, var_7_12
end

 __recovered_scope_0.var_0_9 = __recovered_scope_0.var_0_1
 __recovered_scope_0.var_0_10 = nil
 __recovered_scope_0.var_0_11 = {}
 __recovered_scope_0.var_0_12 = 159
 __recovered_scope_0.var_0_13 = 66
 __recovered_scope_0.var_0_14 = 58

 function __recovered_scope_0.var_0_15(arg_8_0)
	return math.floor((tonumber(arg_8_0) or 0) * 255 + 0.5)
end

 function __recovered_scope_0.var_0_16(arg_9_0)
	if arg_9_0 and arg_9_0._bodyColX and arg_9_0._bodyColY and arg_9_0._bodyColW and arg_9_0._bodyColH then
		return arg_9_0._bodyColX + arg_9_0._bodyColW * 0.5, arg_9_0._bodyColY + arg_9_0._bodyColH * 0.5
	end

	if arg_9_0 and arg_9_0.colX and arg_9_0.colY and arg_9_0.colW and arg_9_0.colH then
		return arg_9_0.colX + arg_9_0.colW * 0.5, arg_9_0.colY + arg_9_0.colH * 0.5
	end

	return tonumber(arg_9_0 and arg_9_0.x) or 0, tonumber(arg_9_0 and arg_9_0.y) or 0
end

 function __recovered_scope_0.var_0_17(arg_10_0)
	local var_10_0 = arg_10_0 and arg_10_0.hitShake

	if not var_10_0 or not var_10_0.t or not var_10_0.dur then
		return 0
	end

	local var_10_1 = math.max(0, math.min(1, (tonumber(var_10_0.t) or 0) / math.max(1e-09, tonumber(var_10_0.dur) or 0.11)))
	local var_10_2 = math.floor((tonumber(var_10_0.amp) or 2) * (1 - var_10_1) + 0.5)

	if var_10_2 <= 0 then
		return 0
	end

	return var_10_2 * (math.floor((tonumber(var_10_0.t) or 0) * 60) % 2 == 0 and -1 or 1)
end

 function __recovered_scope_0.var_0_18(arg_11_0, arg_11_1)
	local var_11_0 = arg_11_1
	local var_11_1 = arg_11_1
	local var_11_2 = arg_11_0 and arg_11_0.braceSquash

	if var_11_2 and var_11_2.t and var_11_2.dur then
		local var_11_3 = math.max(0, math.min(1, (tonumber(var_11_2.t) or 0) / math.max(1e-09, tonumber(var_11_2.dur) or 0.18)))
		local var_11_4 = (tonumber(var_11_2.amt) or 0.25) * math.sin(var_11_3 * math.pi)

		var_11_0 = var_11_0 * (1 + var_11_4)
		var_11_1 = var_11_1 * (1 - var_11_4)
	end

	local var_11_5 = arg_11_0 and arg_11_0.curseSquash

	if var_11_5 and var_11_5.t and var_11_5.dur then
		local var_11_6 = math.max(0, math.min(1, (tonumber(var_11_5.t) or 0) / math.max(1e-09, tonumber(var_11_5.dur) or 0.22)))
		local var_11_7 = (tonumber(var_11_5.amt) or 0.16) * math.sin(var_11_6 * math.pi)

		var_11_0 = var_11_0 * (1 + var_11_7)
		var_11_1 = var_11_1 * (1 - var_11_7 * 0.72)
	end

	return var_11_0, var_11_1
end

function __recovered_scope_0.var_0_11.matches(arg_12_0)
	if not arg_12_0 then
		return false
	end

	return arg_12_0.kind == "Rascal Imp" or arg_12_0.kind == "악동 임프" or arg_12_0.kind == "악동 임프 (Rascal Imp)" or arg_12_0.skin == "Rascal Imp" or arg_12_0.skin == "악동 임프" or arg_12_0.skin == "악동 임프 (Rascal Imp)"
end

function __recovered_scope_0.var_0_11.findAttackMarker(arg_13_0, arg_13_1)
	local var_13_0 = tonumber(arg_13_0 and arg_13_0.frameW) or 32
	local var_13_1 = tonumber(arg_13_0 and arg_13_0.frameH) or 32
	local var_13_2 = arg_13_0 and arg_13_0.animations and arg_13_0.animations.attack2
	local var_13_3 = arg_13_0 and arg_13_0.imageData

	if not var_13_2 or not var_13_3 then
		return nil
	end

	local var_13_4 = math.max(1, math.min(math.floor(tonumber(arg_13_1) or 5), tonumber(var_13_2.frames) or 1))
	local var_13_5 = tostring(var_13_4)
	local var_13_6 = arg_13_0._rascalImpAttackMarkers

	if var_13_6 and var_13_6[var_13_5] then
		local var_13_7 = var_13_6[var_13_5]

		return var_13_7.x, var_13_7.y, var_13_7.count
	end

	local var_13_8 = (var_13_4 - 1) * var_13_0
	local var_13_9 = tonumber(var_13_2.y) or (math.max(1, tonumber(var_13_2.row) or 1) - 1) * var_13_1
	local var_13_10, var_13_11 = var_13_3:getDimensions()

	if var_13_8 < 0 or var_13_9 < 0 or var_13_10 < var_13_8 + var_13_0 or var_13_11 < var_13_9 + var_13_1 then
		return nil
	end

	local var_13_12 = 0
	local var_13_13 = 0
	local var_13_14 = 0

	for iter_13_0 = 0, var_13_1 - 1 do
		for iter_13_1 = 0, var_13_0 - 1 do
			local var_13_15, var_13_16, var_13_17, var_13_18 = var_13_3:getPixel(var_13_8 + iter_13_1, var_13_9 + iter_13_0)

			if var_13_18 and var_13_18 > 0 and __recovered_scope_0.var_0_15(var_13_15) == __recovered_scope_0.var_0_12 and __recovered_scope_0.var_0_15(var_13_16) == __recovered_scope_0.var_0_13 and __recovered_scope_0.var_0_15(var_13_17) == __recovered_scope_0.var_0_14 then
				var_13_12 = var_13_12 + iter_13_1 + 0.5
				var_13_13 = var_13_13 + iter_13_0 + 0.5
				var_13_14 = var_13_14 + 1
			end
		end
	end

	if var_13_14 <= 0 then
		return nil
	end

	local var_13_19 = {
		x = var_13_12 / var_13_14,
		y = var_13_13 / var_13_14,
		count = var_13_14
	}

	arg_13_0._rascalImpAttackMarkers = var_13_6 or {}
	arg_13_0._rascalImpAttackMarkers[var_13_5] = var_13_19

	return var_13_19.x, var_13_19.y, var_13_19.count
end

function __recovered_scope_0.var_0_11.getProjectileLaunch(arg_14_0, arg_14_1, arg_14_2, arg_14_3, arg_14_4)
	local var_14_0, var_14_1, var_14_2 = __recovered_scope_0.var_0_11.findAttackMarker(arg_14_1, 5)

	if not var_14_0 then
		return nil
	end

	local var_14_3 = tonumber(arg_14_1 and arg_14_1.frameW) or 32
	local var_14_4 = tonumber(arg_14_1 and arg_14_1.frameH) or 32
	local var_14_5 = math.max(1, math.floor((tonumber(arg_14_2) or 32) / 32 + 0.5))
	local var_14_6, var_14_7 = __recovered_scope_0.var_0_18(arg_14_0, var_14_5)
	local var_14_8 = (tonumber(arg_14_0 and arg_14_0.facing) or -1) < 0 and -1 or 1
	local var_14_9 = math.floor((tonumber(arg_14_0 and arg_14_0.x) or 0) + 0.5) + __recovered_scope_0.var_0_17(arg_14_0)
	local var_14_10 = math.floor((tonumber(arg_14_0 and arg_14_0.y) or 0) + 0.5)
	local var_14_11 = var_14_9 + (var_14_0 - var_14_3 * 0.5) * var_14_6 * var_14_8
	local var_14_12 = var_14_10 + (var_14_1 - var_14_4 * 0.5) * var_14_7
	local var_14_13, var_14_14 = __recovered_scope_0.var_0_16(arg_14_3)
	local var_14_15 = var_14_13 - var_14_11
	local var_14_16 = var_14_14 - var_14_12
	local var_14_17 = math.sqrt(var_14_15 * var_14_15 + var_14_16 * var_14_16)

	if var_14_17 <= 1e-05 then
		return nil
	end

	local var_14_18 = var_14_15 / var_14_17
	local var_14_19 = var_14_16 / var_14_17
	local var_14_20 = arg_14_4 and arg_14_4.bounds and arg_14_4.bounds[1]
	local var_14_21 = (tonumber(var_14_20 and var_14_20.w) or tonumber(arg_14_4 and arg_14_4.frameW) or 24) * var_14_5 * 0.5

	return var_14_11 + var_14_18 * var_14_21, var_14_12 + var_14_19 * var_14_21, var_14_13, var_14_14, var_14_5, var_14_2, var_14_11, var_14_12
end

function __recovered_scope_0.var_0_11.recordPrimaryPierceTarget(arg_15_0, arg_15_1)
	local var_15_0 = arg_15_0 and arg_15_0.pierce

	if not var_15_0 or var_15_0.rascalNearbyBehind ~= true or var_15_0._primaryHitDone then
		return false
	end

	var_15_0.primaryX, var_15_0.primaryY = __recovered_scope_0.var_0_16(arg_15_1)

	return true
end

function __recovered_scope_0.var_0_11.canHitPierceTarget(arg_16_0, arg_16_1)
	local var_16_0 = arg_16_0 and arg_16_0.pierce

	if not var_16_0 or var_16_0.rascalNearbyBehind ~= true or not var_16_0._primaryHitDone then
		return true
	end

	if not var_16_0.primaryX or not var_16_0.primaryY then
		return false
	end

	local var_16_1, var_16_2 = __recovered_scope_0.var_0_16(arg_16_1)
	local var_16_3 = var_16_1 - var_16_0.primaryX
	local var_16_4 = var_16_2 - var_16_0.primaryY
	local var_16_5 = tonumber(arg_16_0.dirX) or 0
	local var_16_6 = tonumber(arg_16_0.dirY) or 0

	if var_16_3 * var_16_5 + var_16_4 * var_16_6 <= 0 then
		return false
	end

	local var_16_7 = math.max(0, tonumber(var_16_0.maxSecondTargetDistance) or 48)

	return var_16_3 * var_16_3 + var_16_4 * var_16_4 <= var_16_7 * var_16_7
end

 __recovered_scope_0.var_0_19 = __recovered_scope_0.var_0_11
 __recovered_scope_0.var_0_20 = nil
 __recovered_scope_0.var_0_21 = {}
 __recovered_scope_0.var_0_22 = "SpaceAssassinShuriken"
 __recovered_scope_0.var_0_23 = "SpaceAssassinShurikenGone"
 __recovered_scope_0.var_0_24 = 120
 __recovered_scope_0.var_0_25 = 18
 __recovered_scope_0.var_0_26 = 123
 __recovered_scope_0.var_0_27 = 168
 __recovered_scope_0.var_0_28 = 232
 __recovered_scope_0.var_0_29 = 8
 __recovered_scope_0.var_0_30 = 26.5
 __recovered_scope_0.var_0_31 = 21.5

 function __recovered_scope_0.var_0_32(arg_17_0)
	return math.floor((tonumber(arg_17_0) or 0) * 255 + 0.5)
end

 function __recovered_scope_0.var_0_33(arg_18_0)
	local var_18_0 = arg_18_0 and arg_18_0.hitShake

	if not var_18_0 or not var_18_0.t or not var_18_0.dur then
		return 0
	end

	local var_18_1 = math.max(0, math.min(1, (tonumber(var_18_0.t) or 0) / math.max(1e-09, tonumber(var_18_0.dur) or 0.11)))
	local var_18_2 = math.floor((tonumber(var_18_0.amp) or 2) * (1 - var_18_1) + 0.5)

	if var_18_2 <= 0 then
		return 0
	end

	return math.floor((tonumber(var_18_0.t) or 0) * 60) % 2 == 0 and -var_18_2 or var_18_2
end

 function __recovered_scope_0.var_0_34(arg_19_0, arg_19_1)
	local var_19_0 = arg_19_1
	local var_19_1 = arg_19_1
	local var_19_2 = arg_19_0 and arg_19_0.braceSquash

	if var_19_2 and var_19_2.t and var_19_2.dur then
		local var_19_3 = math.max(0, math.min(1, (tonumber(var_19_2.t) or 0) / math.max(1e-09, tonumber(var_19_2.dur) or 0.18)))
		local var_19_4 = (tonumber(var_19_2.amt) or 0.25) * math.sin(var_19_3 * math.pi)

		var_19_0 = var_19_0 * (1 + var_19_4)
		var_19_1 = var_19_1 * (1 - var_19_4)
	end

	local var_19_5 = arg_19_0 and arg_19_0.curseSquash

	if var_19_5 and var_19_5.t and var_19_5.dur then
		local var_19_6 = math.max(0, math.min(1, (tonumber(var_19_5.t) or 0) / math.max(1e-09, tonumber(var_19_5.dur) or 0.22)))
		local var_19_7 = (tonumber(var_19_5.amt) or 0.16) * math.sin(var_19_6 * math.pi)

		var_19_0 = var_19_0 * (1 + var_19_7)
		var_19_1 = var_19_1 * (1 - var_19_7 * 0.72)
	end

	return var_19_0, var_19_1
end

 function __recovered_scope_0.var_0_35(arg_20_0)
	if arg_20_0 and arg_20_0.colX and arg_20_0.colY and arg_20_0.colW and arg_20_0.colH then
		return arg_20_0.colX + arg_20_0.colW * 0.5, arg_20_0.colY + arg_20_0.colH * 0.5
	end

	return tonumber(arg_20_0 and arg_20_0.x) or 0, tonumber(arg_20_0 and arg_20_0.y) or 0
end

 function __recovered_scope_0.var_0_36(arg_21_0, arg_21_1)
	if math.atan2 then
		return math.atan2(arg_21_1, arg_21_0)
	end

	if arg_21_0 == 0 then
		return arg_21_1 >= 0 and math.pi * 0.5 or -math.pi * 0.5
	end

	local var_21_0 = math.atan(arg_21_1 / arg_21_0)

	if arg_21_0 < 0 then
		var_21_0 = var_21_0 + math.pi
	end

	return var_21_0
end

function __recovered_scope_0.var_0_21.findLaunchMarker(arg_22_0, arg_22_1, arg_22_2, arg_22_3)
	local var_22_0 = arg_22_0 and arg_22_0.assets
	local var_22_1 = var_22_0 and var_22_0.units
	local var_22_2 = var_22_1 and (var_22_1[arg_22_1 and arg_22_1.skin or ""] or var_22_1[arg_22_1 and arg_22_1.kind or ""] or var_22_1["Space Assassin"] or var_22_1["우주 암살자 (Space Assassin)"])
	local var_22_3 = tonumber(var_22_2 and var_22_2.frameW) or 32
	local var_22_4 = tonumber(var_22_2 and var_22_2.frameH) or 32
	local var_22_5 = __recovered_scope_0.var_0_30
	local var_22_6 = __recovered_scope_0.var_0_31
	local var_22_7 = var_22_2 and var_22_2._spaceAssassinShurikenMarker

	if var_22_7 then
		var_22_5, var_22_6 = var_22_7.x, var_22_7.y
	else
		local var_22_8 = var_22_2 and var_22_2.animations and var_22_2.animations.attack2
		local var_22_9 = var_22_2 and var_22_2.quads and var_22_2.quads.attack2 and var_22_2.quads.attack2[__recovered_scope_0.var_0_29]

		if var_22_8 and var_22_2.imageData and var_22_9 then
			local var_22_10, var_22_11 = var_22_9:getViewport()
			local var_22_12 = 0
			local var_22_13 = 0
			local var_22_14 = 0

			for iter_22_0 = 0, var_22_4 - 1 do
				for iter_22_1 = 0, var_22_3 - 1 do
					local var_22_15, var_22_16, var_22_17, var_22_18 = var_22_2.imageData:getPixel(var_22_10 + iter_22_1, var_22_11 + iter_22_0)

					if var_22_18 and var_22_18 > 0 and __recovered_scope_0.var_0_32(var_22_15) == __recovered_scope_0.var_0_26 and __recovered_scope_0.var_0_32(var_22_16) == __recovered_scope_0.var_0_27 and __recovered_scope_0.var_0_32(var_22_17) == __recovered_scope_0.var_0_28 then
						var_22_12 = var_22_12 + iter_22_1 + 0.5
						var_22_13 = var_22_13 + iter_22_0 + 0.5
						var_22_14 = var_22_14 + 1
					end
				end
			end

			if var_22_14 > 0 then
				var_22_5 = var_22_12 / var_22_14
				var_22_6 = var_22_13 / var_22_14
			end
		end

		if var_22_2 then
			var_22_2._spaceAssassinShurikenMarker = {
				x = var_22_5,
				y = var_22_6
			}
		end
	end

	local var_22_19, var_22_20 = __recovered_scope_0.var_0_34(arg_22_1, math.max(1, tonumber(arg_22_3) or 1))
	local var_22_21 = (tonumber(arg_22_2) or tonumber(arg_22_1 and arg_22_1.facing) or -1) < 0 and -1 or 1
	local var_22_22 = math.floor((tonumber(arg_22_1 and arg_22_1.x) or 0) + 0.5) + __recovered_scope_0.var_0_33(arg_22_1)
	local var_22_23 = math.floor((tonumber(arg_22_1 and arg_22_1.y) or 0) + 0.5)

	return var_22_22 + (var_22_5 - var_22_3 * 0.5) * var_22_19 * var_22_21, var_22_23 + (var_22_6 - var_22_4 * 0.5) * var_22_20
end

function __recovered_scope_0.var_0_21.spawn(arg_23_0, arg_23_1, arg_23_2)
	if not arg_23_0 or not arg_23_1 or not arg_23_2 or not arg_23_2.alive or not not arg_23_2.dying then
		return nil
	end

	local var_23_0, var_23_1 = __recovered_scope_0.var_0_35(arg_23_2)
	local var_23_2 = var_23_0 >= (tonumber(arg_23_1.x) or 0) and 1 or -1
	local var_23_3 = tonumber(arg_23_0.ui and arg_23_0.ui.battle and arg_23_0.ui.battle.allySize32) or 32
	local var_23_4 = math.max(1, math.floor(var_23_3 / 32 + 0.5))

	arg_23_1.facing = var_23_2

	local var_23_5, var_23_6 = __recovered_scope_0.var_0_21.findLaunchMarker(arg_23_0, arg_23_1, var_23_2, var_23_4)
	local var_23_7 = var_23_0 - var_23_5
	local var_23_8 = var_23_1 - var_23_6
	local var_23_9 = math.sqrt(var_23_7 * var_23_7 + var_23_8 * var_23_8)

	if var_23_9 <= 1e-05 then
		return nil
	end

	local var_23_10 = var_23_7 / var_23_9
	local var_23_11 = var_23_8 / var_23_9
	local var_23_12 = arg_23_0.assets and arg_23_0.assets.projectiles
	local var_23_13 = var_23_12 and var_23_12[__recovered_scope_0.var_0_22]
	local var_23_14 = var_23_13 and var_23_13.bounds and var_23_13.bounds[1]
	local var_23_15 = (tonumber(var_23_14 and var_23_14.w) or tonumber(var_23_13 and var_23_13.frameW) or 32) * var_23_4 * 0.5
	local var_23_16 = var_23_5 + var_23_10 * var_23_15
	local var_23_17 = var_23_6 + var_23_11 * var_23_15
	local var_23_18 = math.max(1, tonumber(arg_23_1.spaceAssassinShurikenSpeed) or __recovered_scope_0.var_0_24)
	local var_23_19 = math.max(1, math.floor((tonumber(arg_23_1.dmg) or 0) * (tonumber(arg_23_1.spaceAssassinShurikenDmgMul) or 0.7) + 0.5))
	local var_23_20 = {
		battleSkillDamage = true,
		state = "flight",
		animFrames = 4,
		animT = 0,
		alive = true,
		kind = "projectile",
		frame = 1,
		side = "enemy",
		life = 2.5,
		spaceAssassinShuriken = true,
		asset = __recovered_scope_0.var_0_22,
		x = var_23_16,
		y = var_23_17,
		startX = var_23_16,
		startY = var_23_17,
		vx = var_23_10 * var_23_18,
		vy = var_23_11 * var_23_18,
		dirX = var_23_10,
		dirY = var_23_11,
		rot = __recovered_scope_0.var_0_36(var_23_10, var_23_11),
		dmg = var_23_19,
		scale = var_23_4,
		owner = arg_23_1,
		awakeningCast = arg_23_1._awakening and arg_23_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_23_1),
		targetOnly = arg_23_2,
		hitTargets = {}
	}

	arg_23_0.projectiles = arg_23_0.projectiles or {}
	arg_23_0.projectiles[#arg_23_0.projectiles + 1] = var_23_20

	return var_23_20
end

function __recovered_scope_0.var_0_21.startPostHitTravel(arg_24_0, arg_24_1)
	if not arg_24_0 or arg_24_0.asset ~= __recovered_scope_0.var_0_22 or arg_24_0.state == "dying" then
		return false
	end

	arg_24_0.state = "post_hit_travel"
	arg_24_0.visualOnly = true
	arg_24_0.targetOnly = nil
	arg_24_0.hitTargets = nil
	arg_24_0.spaceAssassinPostHitStartX = tonumber(arg_24_0.x) or 0
	arg_24_0.spaceAssassinPostHitStartY = tonumber(arg_24_0.y) or 0
	arg_24_0.spaceAssassinPostHitDistance = math.max(1, tonumber(arg_24_1) or __recovered_scope_0.var_0_25)
	arg_24_0.life = math.max(tonumber(arg_24_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_21.startGone(arg_25_0)
	if not arg_25_0 or arg_25_0.asset ~= __recovered_scope_0.var_0_22 or arg_25_0.state == "dying" then
		return false
	end

	arg_25_0.asset = __recovered_scope_0.var_0_23
	arg_25_0.state = "dying"
	arg_25_0.frame = 1
	arg_25_0.animT = 0
	arg_25_0.animFrames = 4
	arg_25_0.vx, arg_25_0.vy = 0, 0
	arg_25_0.rot = 0
	arg_25_0.visualOnly = true
	arg_25_0.spaceAssassinGoneT = 0
	arg_25_0.life = math.max(tonumber(arg_25_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_21.updatePostHitTravel(arg_26_0)
	if not arg_26_0 or arg_26_0.asset ~= __recovered_scope_0.var_0_22 or arg_26_0.state ~= "post_hit_travel" then
		return false
	end

	local var_26_0 = (tonumber(arg_26_0.x) or 0) - (tonumber(arg_26_0.spaceAssassinPostHitStartX) or 0)
	local var_26_1 = (tonumber(arg_26_0.y) or 0) - (tonumber(arg_26_0.spaceAssassinPostHitStartY) or 0)
	local var_26_2 = math.max(1, tonumber(arg_26_0.spaceAssassinPostHitDistance) or __recovered_scope_0.var_0_25)

	if var_26_0 * var_26_0 + var_26_1 * var_26_1 >= var_26_2 * var_26_2 then
		return __recovered_scope_0.var_0_21.startGone(arg_26_0)
	end

	return false
end

function __recovered_scope_0.var_0_21.updateGone(arg_27_0, arg_27_1, arg_27_2)
	if not arg_27_0 or arg_27_0.asset ~= __recovered_scope_0.var_0_23 or arg_27_0.state ~= "dying" then
		return false
	end

	arg_27_0.spaceAssassinGoneT = (tonumber(arg_27_0.spaceAssassinGoneT) or 0) + math.max(0, tonumber(arg_27_1) or 0)

	if math.max(0.01, tonumber(arg_27_2) or 0.08) * 4 <= arg_27_0.spaceAssassinGoneT then
		arg_27_0.alive = false

		return false
	end

	return true
end

__recovered_scope_0.var_0_21.constants = {
	FLIGHT_ASSET = __recovered_scope_0.var_0_22,
	GONE_ASSET = __recovered_scope_0.var_0_23,
	SPEED = __recovered_scope_0.var_0_24,
	POST_HIT_DISTANCE = __recovered_scope_0.var_0_25,
	MARKER_R = __recovered_scope_0.var_0_26,
	MARKER_G = __recovered_scope_0.var_0_27,
	MARKER_B = __recovered_scope_0.var_0_28,
	MARKER_FRAME = __recovered_scope_0.var_0_29
}

 __recovered_scope_0.var_0_37 = __recovered_scope_0.var_0_21
 __recovered_scope_0.var_0_38 = nil
 __recovered_scope_0.var_0_39 = {}
 __recovered_scope_0.var_0_40 = "SpaceHunterProjectile"
 __recovered_scope_0.var_0_41 = "SpaceHunterProjectileGone"
 __recovered_scope_0.var_0_42 = 144
 __recovered_scope_0.var_0_43 = 65
 __recovered_scope_0.var_0_44 = 213
 __recovered_scope_0.var_0_45 = 3
 __recovered_scope_0.var_0_46 = 18

 function __recovered_scope_0.var_0_47(arg_28_0)
	return math.floor((tonumber(arg_28_0) or 0) * 255 + 0.5)
end

 function __recovered_scope_0.var_0_48(arg_29_0)
	if arg_29_0 and arg_29_0._bodyColX and arg_29_0._bodyColY and arg_29_0._bodyColW and arg_29_0._bodyColH then
		return arg_29_0._bodyColX + arg_29_0._bodyColW * 0.5, arg_29_0._bodyColY + arg_29_0._bodyColH * 0.5
	end

	if arg_29_0 and arg_29_0.colX and arg_29_0.colY and arg_29_0.colW and arg_29_0.colH then
		return arg_29_0.colX + arg_29_0.colW * 0.5, arg_29_0.colY + arg_29_0.colH * 0.5
	end

	return tonumber(arg_29_0 and arg_29_0.x) or 0, tonumber(arg_29_0 and arg_29_0.y) or 0
end

 function __recovered_scope_0.var_0_49(arg_30_0)
	local var_30_0 = arg_30_0 and arg_30_0.hitShake

	if not var_30_0 or not var_30_0.t or not var_30_0.dur then
		return 0
	end

	local var_30_1 = math.max(0, math.min(1, (tonumber(var_30_0.t) or 0) / math.max(1e-09, tonumber(var_30_0.dur) or 0.11)))
	local var_30_2 = math.floor((tonumber(var_30_0.amp) or 2) * (1 - var_30_1) + 0.5)

	if var_30_2 <= 0 then
		return 0
	end

	return math.floor((tonumber(var_30_0.t) or 0) * 60) % 2 == 0 and -var_30_2 or var_30_2
end

 function __recovered_scope_0.var_0_50(arg_31_0, arg_31_1)
	local var_31_0 = arg_31_1
	local var_31_1 = arg_31_1
	local var_31_2 = arg_31_0 and arg_31_0.braceSquash

	if var_31_2 and var_31_2.t and var_31_2.dur then
		local var_31_3 = math.max(0, math.min(1, (tonumber(var_31_2.t) or 0) / math.max(1e-09, tonumber(var_31_2.dur) or 0.18)))
		local var_31_4 = (tonumber(var_31_2.amt) or 0.25) * math.sin(var_31_3 * math.pi)

		var_31_0 = var_31_0 * (1 + var_31_4)
		var_31_1 = var_31_1 * (1 - var_31_4)
	end

	local var_31_5 = arg_31_0 and arg_31_0.curseSquash

	if var_31_5 and var_31_5.t and var_31_5.dur then
		local var_31_6 = math.max(0, math.min(1, (tonumber(var_31_5.t) or 0) / math.max(1e-09, tonumber(var_31_5.dur) or 0.22)))
		local var_31_7 = (tonumber(var_31_5.amt) or 0.16) * math.sin(var_31_6 * math.pi)

		var_31_0 = var_31_0 * (1 + var_31_7)
		var_31_1 = var_31_1 * (1 - var_31_7 * 0.72)
	end

	return var_31_0, var_31_1
end

function __recovered_scope_0.var_0_39.matches(arg_32_0)
	if not arg_32_0 then
		return false
	end

	return arg_32_0.kind == "Space Hunter" or arg_32_0.kind == "우주 사냥꾼" or arg_32_0.kind == "우주 사냥꾼 (Space Hunter)" or arg_32_0.skin == "Space Hunter" or arg_32_0.skin == "우주 사냥꾼" or arg_32_0.skin == "우주 사냥꾼 (Space Hunter)"
end

function __recovered_scope_0.var_0_39.findAttackMarker(arg_33_0, arg_33_1)
	local var_33_0 = arg_33_1 and arg_33_1.cacheKey or "_spaceHunterProjectileMarker"
	local var_33_1 = arg_33_0 and arg_33_0[var_33_0]

	if var_33_1 then
		return var_33_1.x, var_33_1.y, var_33_1.count
	end

	local var_33_2 = tonumber(arg_33_0 and arg_33_0.frameW) or 32
	local var_33_3 = tonumber(arg_33_0 and arg_33_0.frameH) or 32
	local var_33_4 = arg_33_0 and arg_33_0.animations and arg_33_0.animations[arg_33_1 and arg_33_1.animation or "attack"]
	local var_33_5 = arg_33_0 and arg_33_0.imageData

	if not var_33_4 or not var_33_5 then
		return nil
	end

	local var_33_6 = ((arg_33_1 and arg_33_1.frame or __recovered_scope_0.var_0_45) - 1) * var_33_2
	local var_33_7 = tonumber(var_33_4.y) or (math.max(1, tonumber(var_33_4.row) or 1) - 1) * var_33_3
	local var_33_8, var_33_9 = var_33_5:getDimensions()

	if var_33_6 < 0 or var_33_7 < 0 or var_33_8 < var_33_6 + var_33_2 or var_33_9 < var_33_7 + var_33_3 then
		return nil
	end

	local var_33_10 = 0
	local var_33_11 = 0
	local var_33_12 = 0

	for iter_33_0 = 0, var_33_3 - 1 do
		for iter_33_1 = 0, var_33_2 - 1 do
			local var_33_13, var_33_14, var_33_15, var_33_16 = var_33_5:getPixel(var_33_6 + iter_33_1, var_33_7 + iter_33_0)

			if var_33_16 and var_33_16 > 0 and __recovered_scope_0.var_0_47(var_33_13) == (arg_33_1 and arg_33_1.r or __recovered_scope_0.var_0_42) and __recovered_scope_0.var_0_47(var_33_14) == (arg_33_1 and arg_33_1.g or __recovered_scope_0.var_0_43) and __recovered_scope_0.var_0_47(var_33_15) == (arg_33_1 and arg_33_1.b or __recovered_scope_0.var_0_44) then
				var_33_10 = var_33_10 + iter_33_1 + 0.5
				var_33_11 = var_33_11 + iter_33_0 + 0.5
				var_33_12 = var_33_12 + 1
			end
		end
	end

	if var_33_12 <= 0 then
		return nil
	end

	local var_33_17 = {
		x = var_33_10 / var_33_12,
		y = var_33_11 / var_33_12,
		count = var_33_12
	}

	if arg_33_1 and arg_33_1.exactPixel then
		local var_33_18 = math.huge

		for iter_33_2 = 0, var_33_3 - 1 do
			for iter_33_3 = 0, var_33_2 - 1 do
				local var_33_19, var_33_20, var_33_21, var_33_22 = var_33_5:getPixel(var_33_6 + iter_33_3, var_33_7 + iter_33_2)

				if var_33_22 > 0 and __recovered_scope_0.var_0_47(var_33_19) == arg_33_1.r and __recovered_scope_0.var_0_47(var_33_20) == arg_33_1.g and __recovered_scope_0.var_0_47(var_33_21) == arg_33_1.b then
					local var_33_23 = (iter_33_3 + 0.5 - var_33_10 / var_33_12)^2 + (iter_33_2 + 0.5 - var_33_11 / var_33_12)^2

					if var_33_23 < var_33_18 then
						var_33_18, var_33_17.x, var_33_17.y = var_33_23, iter_33_3 + 0.5, iter_33_2 + 0.5
					end
				end
			end
		end
	end

	arg_33_0[var_33_0] = var_33_17

	return var_33_17.x, var_33_17.y, var_33_17.count
end

function __recovered_scope_0.var_0_39.getProjectileLaunch(arg_34_0, arg_34_1, arg_34_2, arg_34_3, arg_34_4, arg_34_5)
	local var_34_0, var_34_1, var_34_2 = __recovered_scope_0.var_0_39.findAttackMarker(arg_34_1, arg_34_5)

	if not var_34_0 then
		return nil
	end

	local var_34_3 = tonumber(arg_34_1 and arg_34_1.frameW) or 32
	local var_34_4 = tonumber(arg_34_1 and arg_34_1.frameH) or 32
	local var_34_5 = math.max(1, math.floor((tonumber(arg_34_2) or 32) / 32 + 0.5))
	local var_34_6, var_34_7 = __recovered_scope_0.var_0_50(arg_34_0, var_34_5)
	local var_34_8 = (tonumber(arg_34_0 and arg_34_0.facing) or -1) < 0 and -1 or 1
	local var_34_9 = math.floor((tonumber(arg_34_0 and arg_34_0.x) or 0) + 0.5) + __recovered_scope_0.var_0_49(arg_34_0)
	local var_34_10 = math.floor((tonumber(arg_34_0 and arg_34_0.y) or 0) + 0.5)

	if arg_34_5 and arg_34_5.hover then
		var_34_10 = var_34_10 - require("src.game.combat").stage6_rift.hoverLift(arg_34_0, var_34_5)
	end

	local var_34_11 = var_34_9 + (var_34_0 - var_34_3 * 0.5) * var_34_6 * var_34_8
	local var_34_12 = var_34_10 + (var_34_1 - var_34_4 * 0.5) * var_34_7
	local var_34_13, var_34_14 = __recovered_scope_0.var_0_48(arg_34_3)
	local var_34_15 = var_34_13 - var_34_11
	local var_34_16 = var_34_14 - var_34_12
	local var_34_17 = math.sqrt(var_34_15 * var_34_15 + var_34_16 * var_34_16)

	if var_34_17 <= 1e-05 then
		return nil
	end

	local var_34_18 = var_34_15 / var_34_17
	local var_34_19 = var_34_16 / var_34_17
	local var_34_20 = arg_34_4 and arg_34_4.bounds and arg_34_4.bounds[1]
	local var_34_21 = (tonumber(var_34_20 and var_34_20.w) or tonumber(arg_34_4 and arg_34_4.frameW) or 32) * var_34_5 * 0.5

	return var_34_11 + var_34_18 * var_34_21, var_34_12 + var_34_19 * var_34_21, var_34_13, var_34_14, var_34_5, var_34_2, var_34_11, var_34_12
end

function __recovered_scope_0.var_0_39.startPostHitTravel(arg_35_0, arg_35_1)
	if not arg_35_0 or arg_35_0.asset ~= __recovered_scope_0.var_0_40 or arg_35_0.state == "dying" then
		return false
	end

	arg_35_0.state = "post_hit_travel"
	arg_35_0.visualOnly = true
	arg_35_0.targetOnly = nil
	arg_35_0.hitTargets = nil
	arg_35_0.spaceHunterPostHitStartX = tonumber(arg_35_0.x) or 0
	arg_35_0.spaceHunterPostHitStartY = tonumber(arg_35_0.y) or 0
	arg_35_0.spaceHunterPostHitDistance = math.max(1, tonumber(arg_35_1) or __recovered_scope_0.var_0_46)
	arg_35_0.life = math.max(tonumber(arg_35_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_39.startGone(arg_36_0)
	if not arg_36_0 or arg_36_0.asset ~= __recovered_scope_0.var_0_40 or arg_36_0.state == "dying" then
		return false
	end

	arg_36_0.asset = __recovered_scope_0.var_0_41
	arg_36_0.state = "dying"
	arg_36_0.frame = 1
	arg_36_0.animT = 0
	arg_36_0.animFrames = 3
	arg_36_0.vx, arg_36_0.vy = 0, 0
	arg_36_0.rot = 0
	arg_36_0.visualOnly = true
	arg_36_0.spaceHunterGoneT = 0
	arg_36_0.life = math.max(tonumber(arg_36_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_39.updatePostHitTravel(arg_37_0)
	if not arg_37_0 or arg_37_0.asset ~= __recovered_scope_0.var_0_40 or arg_37_0.state ~= "post_hit_travel" then
		return false
	end

	local var_37_0 = (tonumber(arg_37_0.x) or 0) - (tonumber(arg_37_0.spaceHunterPostHitStartX) or 0)
	local var_37_1 = (tonumber(arg_37_0.y) or 0) - (tonumber(arg_37_0.spaceHunterPostHitStartY) or 0)
	local var_37_2 = math.max(1, tonumber(arg_37_0.spaceHunterPostHitDistance) or __recovered_scope_0.var_0_46)

	if var_37_0 * var_37_0 + var_37_1 * var_37_1 >= var_37_2 * var_37_2 then
		return __recovered_scope_0.var_0_39.startGone(arg_37_0)
	end

	return false
end

function __recovered_scope_0.var_0_39.updateGone(arg_38_0, arg_38_1, arg_38_2)
	if not arg_38_0 or arg_38_0.asset ~= __recovered_scope_0.var_0_41 or arg_38_0.state ~= "dying" then
		return false
	end

	arg_38_0.spaceHunterGoneT = (tonumber(arg_38_0.spaceHunterGoneT) or 0) + math.max(0, tonumber(arg_38_1) or 0)

	if math.max(0.01, tonumber(arg_38_2) or 0.1) * 3 <= arg_38_0.spaceHunterGoneT then
		arg_38_0.alive = false

		return false
	end

	return true
end

__recovered_scope_0.var_0_39.constants = {
	FLIGHT_ASSET = __recovered_scope_0.var_0_40,
	GONE_ASSET = __recovered_scope_0.var_0_41,
	ATTACK_FRAME = __recovered_scope_0.var_0_45,
	POST_HIT_DISTANCE = __recovered_scope_0.var_0_46
}

 __recovered_scope_0.var_0_51 = __recovered_scope_0.var_0_39
 __recovered_scope_0.var_0_52 = nil
 __recovered_scope_0.var_0_53 = {}
 __recovered_scope_0.var_0_54 = "SpaceWizardProjectile"
 __recovered_scope_0.var_0_55 = "SpaceWizardProjectileGone"
 __recovered_scope_0.var_0_56 = 139
 __recovered_scope_0.var_0_57 = 17
 __recovered_scope_0.var_0_58 = 1
 __recovered_scope_0.var_0_59 = 7
 __recovered_scope_0.var_0_60 = 8

 function __recovered_scope_0.var_0_61(arg_39_0)
	return math.floor((tonumber(arg_39_0) or 0) * 255 + 0.5)
end

 function __recovered_scope_0.var_0_62(arg_40_0)
	if arg_40_0 and arg_40_0._bodyColX and arg_40_0._bodyColY and arg_40_0._bodyColW and arg_40_0._bodyColH then
		return arg_40_0._bodyColX + arg_40_0._bodyColW * 0.5, arg_40_0._bodyColY + arg_40_0._bodyColH * 0.5
	end

	if arg_40_0 and arg_40_0.colX and arg_40_0.colY and arg_40_0.colW and arg_40_0.colH then
		return arg_40_0.colX + arg_40_0.colW * 0.5, arg_40_0.colY + arg_40_0.colH * 0.5
	end

	return tonumber(arg_40_0 and arg_40_0.x) or 0, tonumber(arg_40_0 and arg_40_0.y) or 0
end

 function __recovered_scope_0.var_0_63(arg_41_0)
	local var_41_0 = arg_41_0 and arg_41_0.hitShake

	if not var_41_0 or not var_41_0.t or not var_41_0.dur then
		return 0
	end

	local var_41_1 = math.max(0, math.min(1, (tonumber(var_41_0.t) or 0) / math.max(1e-09, tonumber(var_41_0.dur) or 0.11)))
	local var_41_2 = math.floor((tonumber(var_41_0.amp) or 2) * (1 - var_41_1) + 0.5)

	if var_41_2 <= 0 then
		return 0
	end

	return math.floor((tonumber(var_41_0.t) or 0) * 60) % 2 == 0 and -var_41_2 or var_41_2
end

 function __recovered_scope_0.var_0_64(arg_42_0, arg_42_1)
	local var_42_0 = arg_42_1
	local var_42_1 = arg_42_1
	local var_42_2 = arg_42_0 and arg_42_0.braceSquash

	if var_42_2 and var_42_2.t and var_42_2.dur then
		local var_42_3 = math.max(0, math.min(1, (tonumber(var_42_2.t) or 0) / math.max(1e-09, tonumber(var_42_2.dur) or 0.18)))
		local var_42_4 = (tonumber(var_42_2.amt) or 0.25) * math.sin(var_42_3 * math.pi)

		var_42_0 = var_42_0 * (1 + var_42_4)
		var_42_1 = var_42_1 * (1 - var_42_4)
	end

	local var_42_5 = arg_42_0 and arg_42_0.curseSquash

	if var_42_5 and var_42_5.t and var_42_5.dur then
		local var_42_6 = math.max(0, math.min(1, (tonumber(var_42_5.t) or 0) / math.max(1e-09, tonumber(var_42_5.dur) or 0.22)))
		local var_42_7 = (tonumber(var_42_5.amt) or 0.16) * math.sin(var_42_6 * math.pi)

		var_42_0 = var_42_0 * (1 + var_42_7)
		var_42_1 = var_42_1 * (1 - var_42_7 * 0.72)
	end

	return var_42_0, var_42_1
end

function __recovered_scope_0.var_0_53.matches(arg_43_0)
	if not arg_43_0 then
		return false
	end

	return arg_43_0.kind == "Space Wizard" or arg_43_0.kind == "우주 마법사" or arg_43_0.kind == "우주 마법사 (Space Wizard)" or arg_43_0.skin == "Space Wizard" or arg_43_0.skin == "우주 마법사" or arg_43_0.skin == "우주 마법사 (Space Wizard)"
end

function __recovered_scope_0.var_0_53.findAttackMarker(arg_44_0)
	local var_44_0 = arg_44_0 and arg_44_0._spaceWizardProjectileMarker

	if var_44_0 then
		return var_44_0.x, var_44_0.y, var_44_0.count
	end

	local var_44_1 = tonumber(arg_44_0 and arg_44_0.frameW) or 32
	local var_44_2 = tonumber(arg_44_0 and arg_44_0.frameH) or 32
	local var_44_3 = arg_44_0 and arg_44_0.animations and arg_44_0.animations.attack
	local var_44_4 = arg_44_0 and arg_44_0.imageData

	if not var_44_3 or not var_44_4 then
		return nil
	end

	local var_44_5 = (__recovered_scope_0.var_0_59 - 1) * var_44_1
	local var_44_6 = tonumber(var_44_3.y) or (math.max(1, tonumber(var_44_3.row) or 1) - 1) * var_44_2
	local var_44_7, var_44_8 = var_44_4:getDimensions()

	if var_44_5 < 0 or var_44_6 < 0 or var_44_7 < var_44_5 + var_44_1 or var_44_8 < var_44_6 + var_44_2 then
		return nil
	end

	local var_44_9 = 0
	local var_44_10 = 0
	local var_44_11 = 0

	for iter_44_0 = 0, var_44_2 - 1 do
		for iter_44_1 = 0, var_44_1 - 1 do
			local var_44_12, var_44_13, var_44_14, var_44_15 = var_44_4:getPixel(var_44_5 + iter_44_1, var_44_6 + iter_44_0)

			if var_44_15 and var_44_15 > 0 and __recovered_scope_0.var_0_61(var_44_12) == __recovered_scope_0.var_0_56 and __recovered_scope_0.var_0_61(var_44_13) == __recovered_scope_0.var_0_57 and __recovered_scope_0.var_0_61(var_44_14) == __recovered_scope_0.var_0_58 then
				var_44_9 = var_44_9 + iter_44_1 + 0.5
				var_44_10 = var_44_10 + iter_44_0 + 0.5
				var_44_11 = var_44_11 + 1
			end
		end
	end

	if var_44_11 <= 0 then
		return nil
	end

	local var_44_16 = {
		x = var_44_9 / var_44_11,
		y = var_44_10 / var_44_11,
		count = var_44_11
	}

	arg_44_0._spaceWizardProjectileMarker = var_44_16

	return var_44_16.x, var_44_16.y, var_44_16.count
end

function __recovered_scope_0.var_0_53.getProjectileLaunch(arg_45_0, arg_45_1, arg_45_2, arg_45_3, arg_45_4)
	local var_45_0, var_45_1, var_45_2 = __recovered_scope_0.var_0_53.findAttackMarker(arg_45_1)

	if not var_45_0 then
		return nil
	end

	local var_45_3 = tonumber(arg_45_1 and arg_45_1.frameW) or 32
	local var_45_4 = tonumber(arg_45_1 and arg_45_1.frameH) or 32
	local var_45_5 = math.max(1, math.floor((tonumber(arg_45_2) or 32) / 32 + 0.5))
	local var_45_6, var_45_7 = __recovered_scope_0.var_0_64(arg_45_0, var_45_5)
	local var_45_8 = (tonumber(arg_45_0 and arg_45_0.facing) or -1) < 0 and -1 or 1
	local var_45_9 = math.floor((tonumber(arg_45_0 and arg_45_0.x) or 0) + 0.5) + __recovered_scope_0.var_0_63(arg_45_0)
	local var_45_10 = math.floor((tonumber(arg_45_0 and arg_45_0.y) or 0) + 0.5)
	local var_45_11 = var_45_9 + (var_45_0 - var_45_3 * 0.5) * var_45_6 * var_45_8
	local var_45_12 = var_45_10 + (var_45_1 - var_45_4 * 0.5) * var_45_7
	local var_45_13, var_45_14 = __recovered_scope_0.var_0_62(arg_45_3)
	local var_45_15 = var_45_13 - var_45_11
	local var_45_16 = var_45_14 - var_45_12
	local var_45_17 = math.sqrt(var_45_15 * var_45_15 + var_45_16 * var_45_16)

	if var_45_17 <= 1e-05 then
		return nil
	end

	local var_45_18 = var_45_15 / var_45_17
	local var_45_19 = var_45_16 / var_45_17
	local var_45_20 = arg_45_4 and arg_45_4.bounds and arg_45_4.bounds[1]
	local var_45_21 = (tonumber(var_45_20 and var_45_20.w) or tonumber(arg_45_4 and arg_45_4.frameW) or 32) * var_45_5 * 0.5

	return var_45_11 + var_45_18 * var_45_21, var_45_12 + var_45_19 * var_45_21, var_45_13, var_45_14, var_45_5, var_45_2, var_45_11, var_45_12
end

function __recovered_scope_0.var_0_53.startPostHitTravel(arg_46_0, arg_46_1)
	if not arg_46_0 or arg_46_0.asset ~= __recovered_scope_0.var_0_54 or arg_46_0.state == "dying" then
		return false
	end

	arg_46_0.state = "post_hit_travel"
	arg_46_0.visualOnly = true
	arg_46_0.targetOnly = nil
	arg_46_0.hitTargets = nil
	arg_46_0.spaceWizardPostHitStartX = tonumber(arg_46_0.x) or 0
	arg_46_0.spaceWizardPostHitStartY = tonumber(arg_46_0.y) or 0
	arg_46_0.spaceWizardPostHitDistance = math.max(1, tonumber(arg_46_1) or __recovered_scope_0.var_0_60)
	arg_46_0.life = math.max(tonumber(arg_46_0.life) or 0, 0.9)

	return true
end

function __recovered_scope_0.var_0_53.startGone(arg_47_0)
	if not arg_47_0 or arg_47_0.asset ~= __recovered_scope_0.var_0_54 or arg_47_0.state == "dying" then
		return false
	end

	arg_47_0.asset = __recovered_scope_0.var_0_55
	arg_47_0.state = "dying"
	arg_47_0.frame = 1
	arg_47_0.animT = 0
	arg_47_0.animFrames = 4
	arg_47_0.vx, arg_47_0.vy = 0, 0
	arg_47_0.rot = 0
	arg_47_0.visualOnly = true
	arg_47_0.spaceWizardGoneT = 0
	arg_47_0.life = math.max(tonumber(arg_47_0.life) or 0, 0.9)

	return true
end

function __recovered_scope_0.var_0_53.updatePostHitTravel(arg_48_0)
	if not arg_48_0 or arg_48_0.asset ~= __recovered_scope_0.var_0_54 or arg_48_0.state ~= "post_hit_travel" then
		return false
	end

	local var_48_0 = (tonumber(arg_48_0.x) or 0) - (tonumber(arg_48_0.spaceWizardPostHitStartX) or 0)
	local var_48_1 = (tonumber(arg_48_0.y) or 0) - (tonumber(arg_48_0.spaceWizardPostHitStartY) or 0)
	local var_48_2 = math.max(1, tonumber(arg_48_0.spaceWizardPostHitDistance) or __recovered_scope_0.var_0_60)

	if var_48_0 * var_48_0 + var_48_1 * var_48_1 >= var_48_2 * var_48_2 then
		return __recovered_scope_0.var_0_53.startGone(arg_48_0)
	end

	return false
end

function __recovered_scope_0.var_0_53.updateGone(arg_49_0, arg_49_1, arg_49_2)
	if not arg_49_0 or arg_49_0.asset ~= __recovered_scope_0.var_0_55 or arg_49_0.state ~= "dying" then
		return false
	end

	arg_49_0.spaceWizardGoneT = (tonumber(arg_49_0.spaceWizardGoneT) or 0) + math.max(0, tonumber(arg_49_1) or 0)

	if math.max(0.01, tonumber(arg_49_2) or 0.11) * 4 <= arg_49_0.spaceWizardGoneT then
		arg_49_0.alive = false

		return false
	end

	return true
end

__recovered_scope_0.var_0_53.constants = {
	FLIGHT_ASSET = __recovered_scope_0.var_0_54,
	GONE_ASSET = __recovered_scope_0.var_0_55,
	ATTACK_FRAME = __recovered_scope_0.var_0_59,
	POST_HIT_DISTANCE = __recovered_scope_0.var_0_60
}

 __recovered_scope_0.var_0_65 = __recovered_scope_0.var_0_53
 __recovered_scope_0.var_0_66 = nil
 __recovered_scope_0.var_0_67 = {}
 __recovered_scope_0.var_0_68 = "SpaceHunterGravityArrow"
 __recovered_scope_0.var_0_69 = "SpaceHunterGravityArrowGone"
 __recovered_scope_0.var_0_70 = 241
 __recovered_scope_0.var_0_71 = 241
 __recovered_scope_0.var_0_72 = 84
 __recovered_scope_0.var_0_73 = 6
 __recovered_scope_0.var_0_74 = 140
 __recovered_scope_0.var_0_75 = 18

 function __recovered_scope_0.var_0_76(arg_50_0)
	return math.floor((tonumber(arg_50_0) or 0) * 255 + 0.5)
end

 function __recovered_scope_0.var_0_77(arg_51_0)
	if arg_51_0 and arg_51_0._bodyColX and arg_51_0._bodyColY and arg_51_0._bodyColW and arg_51_0._bodyColH then
		return arg_51_0._bodyColX + arg_51_0._bodyColW * 0.5, arg_51_0._bodyColY + arg_51_0._bodyColH * 0.5
	end

	if arg_51_0 and arg_51_0.colX and arg_51_0.colY and arg_51_0.colW and arg_51_0.colH then
		return arg_51_0.colX + arg_51_0.colW * 0.5, arg_51_0.colY + arg_51_0.colH * 0.5
	end

	return tonumber(arg_51_0 and arg_51_0.x) or 0, tonumber(arg_51_0 and arg_51_0.y) or 0
end

 function __recovered_scope_0.var_0_78(arg_52_0, arg_52_1)
	if math.atan2 then
		return math.atan2(arg_52_1, arg_52_0)
	end

	if arg_52_0 == 0 then
		return arg_52_1 >= 0 and math.pi * 0.5 or -math.pi * 0.5
	end

	local var_52_0 = math.atan(arg_52_1 / arg_52_0)

	if arg_52_0 < 0 then
		var_52_0 = var_52_0 + math.pi
	end

	return var_52_0
end

 function __recovered_scope_0.var_0_79(arg_53_0)
	local var_53_0 = arg_53_0 and arg_53_0.hitShake

	if not var_53_0 or not var_53_0.t or not var_53_0.dur then
		return 0
	end

	local var_53_1 = math.max(0, math.min(1, (tonumber(var_53_0.t) or 0) / math.max(1e-09, tonumber(var_53_0.dur) or 0.11)))
	local var_53_2 = math.floor((tonumber(var_53_0.amp) or 2) * (1 - var_53_1) + 0.5)

	if var_53_2 <= 0 then
		return 0
	end

	return math.floor((tonumber(var_53_0.t) or 0) * 60) % 2 == 0 and -var_53_2 or var_53_2
end

 function __recovered_scope_0.var_0_80(arg_54_0, arg_54_1)
	local var_54_0 = arg_54_1
	local var_54_1 = arg_54_1
	local var_54_2 = arg_54_0 and arg_54_0.braceSquash

	if var_54_2 and var_54_2.t and var_54_2.dur then
		local var_54_3 = math.max(0, math.min(1, (tonumber(var_54_2.t) or 0) / math.max(1e-09, tonumber(var_54_2.dur) or 0.18)))
		local var_54_4 = (tonumber(var_54_2.amt) or 0.25) * math.sin(var_54_3 * math.pi)

		var_54_0 = var_54_0 * (1 + var_54_4)
		var_54_1 = var_54_1 * (1 - var_54_4)
	end

	local var_54_5 = arg_54_0 and arg_54_0.curseSquash

	if var_54_5 and var_54_5.t and var_54_5.dur then
		local var_54_6 = math.max(0, math.min(1, (tonumber(var_54_5.t) or 0) / math.max(1e-09, tonumber(var_54_5.dur) or 0.22)))
		local var_54_7 = (tonumber(var_54_5.amt) or 0.16) * math.sin(var_54_6 * math.pi)

		var_54_0 = var_54_0 * (1 + var_54_7)
		var_54_1 = var_54_1 * (1 - var_54_7 * 0.72)
	end

	return var_54_0, var_54_1
end

 function __recovered_scope_0.var_0_81(arg_55_0)
	local var_55_0 = arg_55_0 and arg_55_0._spaceHunterGravityArrowMarker

	if var_55_0 then
		return var_55_0.x, var_55_0.y, var_55_0.count
	end

	local var_55_1 = tonumber(arg_55_0 and arg_55_0.frameW) or 32
	local var_55_2 = tonumber(arg_55_0 and arg_55_0.frameH) or 32
	local var_55_3 = arg_55_0 and arg_55_0.animations and arg_55_0.animations.attack2
	local var_55_4 = arg_55_0 and arg_55_0.imageData

	if not var_55_3 or not var_55_4 then
		return nil
	end

	local var_55_5 = (__recovered_scope_0.var_0_73 - 1) * var_55_1
	local var_55_6 = tonumber(var_55_3.y) or (math.max(1, tonumber(var_55_3.row) or 1) - 1) * var_55_2
	local var_55_7, var_55_8 = var_55_4:getDimensions()

	if var_55_5 < 0 or var_55_6 < 0 or var_55_7 < var_55_5 + var_55_1 or var_55_8 < var_55_6 + var_55_2 then
		return nil
	end

	local var_55_9 = 0
	local var_55_10 = 0
	local var_55_11 = 0

	for iter_55_0 = 0, var_55_2 - 1 do
		for iter_55_1 = 0, var_55_1 - 1 do
			local var_55_12, var_55_13, var_55_14, var_55_15 = var_55_4:getPixel(var_55_5 + iter_55_1, var_55_6 + iter_55_0)

			if var_55_15 and var_55_15 > 0 and __recovered_scope_0.var_0_76(var_55_12) == __recovered_scope_0.var_0_70 and __recovered_scope_0.var_0_76(var_55_13) == __recovered_scope_0.var_0_71 and __recovered_scope_0.var_0_76(var_55_14) == __recovered_scope_0.var_0_72 then
				var_55_9 = var_55_9 + iter_55_1 + 0.5
				var_55_10 = var_55_10 + iter_55_0 + 0.5
				var_55_11 = var_55_11 + 1
			end
		end
	end

	if var_55_11 <= 0 then
		return nil
	end

	local var_55_16 = {
		x = var_55_9 / var_55_11,
		y = var_55_10 / var_55_11,
		count = var_55_11
	}

	arg_55_0._spaceHunterGravityArrowMarker = var_55_16

	return var_55_16.x, var_55_16.y, var_55_16.count
end

 function __recovered_scope_0.var_0_82(arg_56_0, arg_56_1)
	local var_56_0 = arg_56_0 and arg_56_0.assets and arg_56_0.assets.units

	return var_56_0 and (var_56_0[arg_56_1 and arg_56_1.skin or ""] or var_56_0[arg_56_1 and arg_56_1.kind or ""] or var_56_0["Space Hunter"] or var_56_0["우주 사냥꾼 (Space Hunter)"])
end

function __recovered_scope_0.var_0_67.spawn(arg_57_0, arg_57_1, arg_57_2)
	if not arg_57_0 or not arg_57_1 or not arg_57_2 or not arg_57_2.alive or not not arg_57_2.dying then
		return nil
	end

	local var_57_0 = __recovered_scope_0.var_0_82(arg_57_0, arg_57_1)
	local var_57_1, var_57_2 = __recovered_scope_0.var_0_81(var_57_0)

	if not var_57_1 then
		return nil
	end

	local var_57_3 = tonumber(var_57_0 and var_57_0.frameW) or 32
	local var_57_4 = tonumber(var_57_0 and var_57_0.frameH) or 32
	local var_57_5 = tonumber(arg_57_0.ui and arg_57_0.ui.battle and arg_57_0.ui.battle.allySize32) or 32
	local var_57_6 = math.max(1, math.floor(var_57_5 / 32 + 0.5))
	local var_57_7, var_57_8 = __recovered_scope_0.var_0_77(arg_57_2)
	local var_57_9 = var_57_7 >= (tonumber(arg_57_1.x) or 0) and 1 or -1

	arg_57_1.facing = var_57_9

	local var_57_10, var_57_11 = __recovered_scope_0.var_0_80(arg_57_1, var_57_6)
	local var_57_12 = math.floor((tonumber(arg_57_1.x) or 0) + 0.5) + __recovered_scope_0.var_0_79(arg_57_1) + (var_57_1 - var_57_3 * 0.5) * var_57_10 * var_57_9
	local var_57_13 = math.floor((tonumber(arg_57_1.y) or 0) + 0.5) + (var_57_2 - var_57_4 * 0.5) * var_57_11
	local var_57_14 = var_57_7 - var_57_12
	local var_57_15 = var_57_8 - var_57_13
	local var_57_16 = math.sqrt(var_57_14 * var_57_14 + var_57_15 * var_57_15)

	if var_57_16 <= 1e-05 then
		return nil
	end

	local var_57_17 = var_57_14 / var_57_16
	local var_57_18 = var_57_15 / var_57_16
	local var_57_19 = arg_57_0.assets and arg_57_0.assets.projectiles and arg_57_0.assets.projectiles[__recovered_scope_0.var_0_68]
	local var_57_20 = var_57_19 and var_57_19.bounds and var_57_19.bounds[1]
	local var_57_21 = (tonumber(var_57_20 and var_57_20.w) or tonumber(var_57_19 and var_57_19.frameW) or 32) * var_57_6 * 0.5
	local var_57_22 = var_57_12 + var_57_17 * var_57_21
	local var_57_23 = var_57_13 + var_57_18 * var_57_21
	local var_57_24 = math.max(1, tonumber(arg_57_1.spaceHunterGravityArrowSpeed) or __recovered_scope_0.var_0_74)
	local var_57_25 = math.max(1, math.floor((tonumber(arg_57_1.dmg) or 0) * (tonumber(arg_57_1.spaceHunterGravityArrowDmgMul) or 1) + 0.5))
	local var_57_26 = {
		battleSkillDamage = true,
		state = "flight",
		animFrames = 4,
		animT = 0,
		alive = true,
		kind = "projectile",
		frame = 1,
		side = "enemy",
		life = 3,
		spaceHunterGravityArrow = true,
		asset = __recovered_scope_0.var_0_68,
		x = var_57_22,
		y = var_57_23,
		startX = var_57_22,
		startY = var_57_23,
		vx = var_57_17 * var_57_24,
		vy = var_57_18 * var_57_24,
		dirX = var_57_17,
		dirY = var_57_18,
		rot = __recovered_scope_0.var_0_78(var_57_17, var_57_18),
		dmg = var_57_25,
		scale = var_57_6,
		owner = arg_57_1,
		awakeningCast = arg_57_1._awakening and arg_57_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_57_1),
		targetOnly = arg_57_2,
		hitTargets = {}
	}

	arg_57_0.projectiles = arg_57_0.projectiles or {}
	arg_57_0.projectiles[#arg_57_0.projectiles + 1] = var_57_26

	return var_57_26
end

function __recovered_scope_0.var_0_67.startPostHitTravel(arg_58_0, arg_58_1)
	if not arg_58_0 or arg_58_0.asset ~= __recovered_scope_0.var_0_68 or arg_58_0.state == "dying" then
		return false
	end

	arg_58_0.state = "post_hit_travel"
	arg_58_0.visualOnly = true
	arg_58_0.targetOnly = nil
	arg_58_0.hitTargets = nil
	arg_58_0.spaceHunterGravityPostHitStartX = tonumber(arg_58_0.x) or 0
	arg_58_0.spaceHunterGravityPostHitStartY = tonumber(arg_58_0.y) or 0
	arg_58_0.spaceHunterGravityPostHitDistance = math.max(1, tonumber(arg_58_1) or __recovered_scope_0.var_0_75)
	arg_58_0.life = math.max(tonumber(arg_58_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_67.startGone(arg_59_0)
	if not arg_59_0 or arg_59_0.asset ~= __recovered_scope_0.var_0_68 or arg_59_0.state == "dying" then
		return false
	end

	arg_59_0.asset = __recovered_scope_0.var_0_69
	arg_59_0.state = "dying"
	arg_59_0.frame = 1
	arg_59_0.animT = 0
	arg_59_0.animFrames = 4
	arg_59_0.vx, arg_59_0.vy = 0, 0
	arg_59_0.rot = 0
	arg_59_0.visualOnly = true
	arg_59_0.spaceHunterGravityGoneT = 0
	arg_59_0.life = math.max(tonumber(arg_59_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_67.updatePostHitTravel(arg_60_0)
	if not arg_60_0 or arg_60_0.asset ~= __recovered_scope_0.var_0_68 or arg_60_0.state ~= "post_hit_travel" then
		return false
	end

	local var_60_0 = (tonumber(arg_60_0.x) or 0) - (tonumber(arg_60_0.spaceHunterGravityPostHitStartX) or 0)
	local var_60_1 = (tonumber(arg_60_0.y) or 0) - (tonumber(arg_60_0.spaceHunterGravityPostHitStartY) or 0)
	local var_60_2 = math.max(1, tonumber(arg_60_0.spaceHunterGravityPostHitDistance) or __recovered_scope_0.var_0_75)

	if var_60_0 * var_60_0 + var_60_1 * var_60_1 >= var_60_2 * var_60_2 then
		return __recovered_scope_0.var_0_67.startGone(arg_60_0)
	end

	return false
end

function __recovered_scope_0.var_0_67.updateGone(arg_61_0, arg_61_1, arg_61_2)
	if not arg_61_0 or arg_61_0.asset ~= __recovered_scope_0.var_0_69 or arg_61_0.state ~= "dying" then
		return false
	end

	arg_61_0.spaceHunterGravityGoneT = (tonumber(arg_61_0.spaceHunterGravityGoneT) or 0) + math.max(0, tonumber(arg_61_1) or 0)

	if math.max(0.01, tonumber(arg_61_2) or 0.1) * 4 <= arg_61_0.spaceHunterGravityGoneT then
		arg_61_0.alive = false

		return false
	end

	return true
end

__recovered_scope_0.var_0_67.constants = {
	FLIGHT_ASSET = __recovered_scope_0.var_0_68,
	GONE_ASSET = __recovered_scope_0.var_0_69,
	MARKER_FRAME = __recovered_scope_0.var_0_73,
	SPEED = __recovered_scope_0.var_0_74,
	POST_HIT_DISTANCE = __recovered_scope_0.var_0_75
}

 __recovered_scope_0.var_0_83 = __recovered_scope_0.var_0_67
 __recovered_scope_0.var_0_84 = nil
 __recovered_scope_0.var_0_85 = {}
 __recovered_scope_0.var_0_86 = "StarlightPaladinProjectile"
 __recovered_scope_0.var_0_87 = "StarlightPaladinProjectileGone"
 __recovered_scope_0.var_0_88 = 34
 __recovered_scope_0.var_0_89 = 33
 __recovered_scope_0.var_0_90 = 32
 __recovered_scope_0.var_0_91 = 6
 __recovered_scope_0.var_0_92 = 170
 __recovered_scope_0.var_0_93 = 14

 function __recovered_scope_0.var_0_94(arg_62_0)
	return math.floor((tonumber(arg_62_0) or 0) * 255 + 0.5)
end

 function __recovered_scope_0.var_0_95(arg_63_0)
	if arg_63_0 and arg_63_0._bodyColX and arg_63_0._bodyColY and arg_63_0._bodyColW and arg_63_0._bodyColH then
		return arg_63_0._bodyColX + arg_63_0._bodyColW * 0.5, arg_63_0._bodyColY + arg_63_0._bodyColH * 0.5
	end

	if arg_63_0 and arg_63_0.colX and arg_63_0.colY and arg_63_0.colW and arg_63_0.colH then
		return arg_63_0.colX + arg_63_0.colW * 0.5, arg_63_0.colY + arg_63_0.colH * 0.5
	end

	return tonumber(arg_63_0 and arg_63_0.x) or 0, tonumber(arg_63_0 and arg_63_0.y) or 0
end

 function __recovered_scope_0.var_0_96(arg_64_0, arg_64_1)
	if math.atan2 then
		return math.atan2(arg_64_1, arg_64_0)
	end

	if arg_64_0 == 0 then
		return arg_64_1 >= 0 and math.pi * 0.5 or -math.pi * 0.5
	end

	local var_64_0 = math.atan(arg_64_1 / arg_64_0)

	if arg_64_0 < 0 then
		var_64_0 = var_64_0 + math.pi
	end

	return var_64_0
end

 function __recovered_scope_0.var_0_97(arg_65_0)
	local var_65_0 = arg_65_0 and arg_65_0.hitShake

	if not var_65_0 or not var_65_0.t or not var_65_0.dur then
		return 0
	end

	local var_65_1 = math.max(0, math.min(1, (tonumber(var_65_0.t) or 0) / math.max(1e-09, tonumber(var_65_0.dur) or 0.11)))
	local var_65_2 = math.floor((tonumber(var_65_0.amp) or 2) * (1 - var_65_1) + 0.5)

	if var_65_2 <= 0 then
		return 0
	end

	return math.floor((tonumber(var_65_0.t) or 0) * 60) % 2 == 0 and -var_65_2 or var_65_2
end

 function __recovered_scope_0.var_0_98(arg_66_0, arg_66_1)
	local var_66_0 = arg_66_1
	local var_66_1 = arg_66_1
	local var_66_2 = arg_66_0 and arg_66_0.braceSquash

	if var_66_2 and var_66_2.t and var_66_2.dur then
		local var_66_3 = math.max(0, math.min(1, (tonumber(var_66_2.t) or 0) / math.max(1e-09, tonumber(var_66_2.dur) or 0.18)))
		local var_66_4 = (tonumber(var_66_2.amt) or 0.25) * math.sin(var_66_3 * math.pi)

		var_66_0 = var_66_0 * (1 + var_66_4)
		var_66_1 = var_66_1 * (1 - var_66_4)
	end

	local var_66_5 = arg_66_0 and arg_66_0.curseSquash

	if var_66_5 and var_66_5.t and var_66_5.dur then
		local var_66_6 = math.max(0, math.min(1, (tonumber(var_66_5.t) or 0) / math.max(1e-09, tonumber(var_66_5.dur) or 0.22)))
		local var_66_7 = (tonumber(var_66_5.amt) or 0.16) * math.sin(var_66_6 * math.pi)

		var_66_0 = var_66_0 * (1 + var_66_7)
		var_66_1 = var_66_1 * (1 - var_66_7 * 0.72)
	end

	return var_66_0, var_66_1
end

 function __recovered_scope_0.var_0_99(arg_67_0)
	local var_67_0 = arg_67_0 and arg_67_0._starlightPaladinProjectileMarker

	if var_67_0 then
		return var_67_0.x, var_67_0.y, var_67_0.count
	end

	local var_67_1 = tonumber(arg_67_0 and arg_67_0.frameW) or 32
	local var_67_2 = tonumber(arg_67_0 and arg_67_0.frameH) or 32
	local var_67_3 = arg_67_0 and arg_67_0.animations and arg_67_0.animations.attack3
	local var_67_4 = arg_67_0 and arg_67_0.imageData

	if not var_67_3 or not var_67_4 then
		return nil
	end

	local var_67_5 = (__recovered_scope_0.var_0_91 - 1) * var_67_1
	local var_67_6 = tonumber(var_67_3.y) or (math.max(1, tonumber(var_67_3.row) or 1) - 1) * var_67_2
	local var_67_7, var_67_8 = var_67_4:getDimensions()

	if var_67_5 < 0 or var_67_6 < 0 or var_67_7 < var_67_5 + var_67_1 or var_67_8 < var_67_6 + var_67_2 then
		return nil
	end

	local var_67_9 = 0
	local var_67_10 = 0
	local var_67_11 = 0

	for iter_67_0 = 0, var_67_2 - 1 do
		for iter_67_1 = 0, var_67_1 - 1 do
			local var_67_12, var_67_13, var_67_14, var_67_15 = var_67_4:getPixel(var_67_5 + iter_67_1, var_67_6 + iter_67_0)

			if var_67_15 and var_67_15 > 0 and __recovered_scope_0.var_0_94(var_67_12) == __recovered_scope_0.var_0_88 and __recovered_scope_0.var_0_94(var_67_13) == __recovered_scope_0.var_0_89 and __recovered_scope_0.var_0_94(var_67_14) == __recovered_scope_0.var_0_90 then
				var_67_9 = var_67_9 + iter_67_1 + 0.5
				var_67_10 = var_67_10 + iter_67_0 + 0.5
				var_67_11 = var_67_11 + 1
			end
		end
	end

	if var_67_11 <= 0 then
		return nil
	end

	local var_67_16 = {
		x = var_67_9 / var_67_11,
		y = var_67_10 / var_67_11,
		count = var_67_11
	}

	arg_67_0._starlightPaladinProjectileMarker = var_67_16

	return var_67_16.x, var_67_16.y, var_67_16.count
end

 function __recovered_scope_0.var_0_100(arg_68_0, arg_68_1)
	local var_68_0 = arg_68_0 and arg_68_0.assets and arg_68_0.assets.units

	return var_68_0 and (var_68_0[arg_68_1 and arg_68_1.skin or ""] or var_68_0[arg_68_1 and arg_68_1.kind or ""] or var_68_0["Starlight Paladin"] or var_68_0["별빛 성기사 (Starlight Paladin)"])
end

function __recovered_scope_0.var_0_85.spawn(arg_69_0, arg_69_1, arg_69_2)
	if not arg_69_0 or not arg_69_1 or not arg_69_2 or not arg_69_2.alive or not not arg_69_2.dying then
		return nil
	end

	local var_69_0 = __recovered_scope_0.var_0_100(arg_69_0, arg_69_1)
	local var_69_1, var_69_2 = __recovered_scope_0.var_0_99(var_69_0)

	if not var_69_1 then
		return nil
	end

	local var_69_3 = tonumber(var_69_0 and var_69_0.frameW) or 32
	local var_69_4 = tonumber(var_69_0 and var_69_0.frameH) or 32
	local var_69_5 = tonumber(arg_69_0.ui and arg_69_0.ui.battle and arg_69_0.ui.battle.allySize32) or 32
	local var_69_6 = math.max(1, math.floor(var_69_5 / 32 + 0.5))
	local var_69_7, var_69_8 = __recovered_scope_0.var_0_95(arg_69_2)
	local var_69_9 = var_69_7 >= (tonumber(arg_69_1.x) or 0) and 1 or -1

	arg_69_1.facing = var_69_9

	local var_69_10, var_69_11 = __recovered_scope_0.var_0_98(arg_69_1, var_69_6)
	local var_69_12 = math.floor((tonumber(arg_69_1.x) or 0) + 0.5) + __recovered_scope_0.var_0_97(arg_69_1) + (var_69_1 - var_69_3 * 0.5) * var_69_10 * var_69_9
	local var_69_13 = math.floor((tonumber(arg_69_1.y) or 0) + 0.5) + (var_69_2 - var_69_4 * 0.5) * var_69_11
	local var_69_14 = var_69_7 - var_69_12
	local var_69_15 = var_69_8 - var_69_13
	local var_69_16 = math.sqrt(var_69_14 * var_69_14 + var_69_15 * var_69_15)

	if var_69_16 <= 1e-05 then
		return nil
	end

	local var_69_17 = var_69_14 / var_69_16
	local var_69_18 = var_69_15 / var_69_16
	local var_69_19 = arg_69_0.assets and arg_69_0.assets.projectiles and arg_69_0.assets.projectiles[__recovered_scope_0.var_0_86]
	local var_69_20 = var_69_19 and var_69_19.bounds and var_69_19.bounds[1]
	local var_69_21 = (tonumber(var_69_20 and var_69_20.w) or tonumber(var_69_19 and var_69_19.frameW) or 32) * var_69_6 * 0.5
	local var_69_22 = var_69_12 + var_69_17 * var_69_21
	local var_69_23 = var_69_13 + var_69_18 * var_69_21
	local var_69_24 = math.max(1, tonumber(arg_69_1.starlightTheftProjectileSpeed) or __recovered_scope_0.var_0_92)
	local var_69_25 = {
		battleSkillDamage = true,
		starlightTheftProjectile = true,
		state = "flight",
		animFrames = 3,
		animT = 0,
		alive = true,
		kind = "projectile",
		frame = 1,
		side = "enemy",
		life = 3,
		dmg = 0,
		asset = __recovered_scope_0.var_0_86,
		x = var_69_22,
		y = var_69_23,
		startX = var_69_22,
		startY = var_69_23,
		vx = var_69_17 * var_69_24,
		vy = var_69_18 * var_69_24,
		dirX = var_69_17,
		dirY = var_69_18,
		rot = __recovered_scope_0.var_0_96(var_69_17, var_69_18),
		scale = var_69_6,
		owner = arg_69_1,
		awakeningCast = arg_69_1._awakening and arg_69_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_69_1),
		targetOnly = arg_69_2,
		hitTargets = {}
	}

	arg_69_0.projectiles = arg_69_0.projectiles or {}
	arg_69_0.projectiles[#arg_69_0.projectiles + 1] = var_69_25

	return var_69_25
end

function __recovered_scope_0.var_0_85.startPostHitTravel(arg_70_0, arg_70_1)
	if not arg_70_0 or arg_70_0.asset ~= __recovered_scope_0.var_0_86 or arg_70_0.state == "dying" then
		return false
	end

	arg_70_0.state = "post_hit_travel"
	arg_70_0.visualOnly = true
	arg_70_0.targetOnly = nil
	arg_70_0.hitTargets = nil
	arg_70_0.starlightTheftPostHitStartX = tonumber(arg_70_0.x) or 0
	arg_70_0.starlightTheftPostHitStartY = tonumber(arg_70_0.y) or 0
	arg_70_0.starlightTheftPostHitDistance = math.max(1, tonumber(arg_70_1) or __recovered_scope_0.var_0_93)
	arg_70_0.life = math.max(tonumber(arg_70_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_85.startGone(arg_71_0)
	if not arg_71_0 or arg_71_0.asset ~= __recovered_scope_0.var_0_86 or arg_71_0.state == "dying" then
		return false
	end

	arg_71_0.asset = __recovered_scope_0.var_0_87
	arg_71_0.state = "dying"
	arg_71_0.frame = 1
	arg_71_0.animT = 0
	arg_71_0.animFrames = 4
	arg_71_0.vx, arg_71_0.vy = 0, 0
	arg_71_0.rot = 0
	arg_71_0.visualOnly = true
	arg_71_0.starlightTheftGoneT = 0
	arg_71_0.life = math.max(tonumber(arg_71_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_85.updatePostHitTravel(arg_72_0)
	if not arg_72_0 or arg_72_0.asset ~= __recovered_scope_0.var_0_86 or arg_72_0.state ~= "post_hit_travel" then
		return false
	end

	local var_72_0 = (tonumber(arg_72_0.x) or 0) - (tonumber(arg_72_0.starlightTheftPostHitStartX) or 0)
	local var_72_1 = (tonumber(arg_72_0.y) or 0) - (tonumber(arg_72_0.starlightTheftPostHitStartY) or 0)
	local var_72_2 = math.max(1, tonumber(arg_72_0.starlightTheftPostHitDistance) or __recovered_scope_0.var_0_93)

	if var_72_0 * var_72_0 + var_72_1 * var_72_1 >= var_72_2 * var_72_2 then
		return __recovered_scope_0.var_0_85.startGone(arg_72_0)
	end

	return false
end

function __recovered_scope_0.var_0_85.updateGone(arg_73_0, arg_73_1, arg_73_2)
	if not arg_73_0 or arg_73_0.asset ~= __recovered_scope_0.var_0_87 or arg_73_0.state ~= "dying" then
		return false
	end

	arg_73_0.starlightTheftGoneT = (tonumber(arg_73_0.starlightTheftGoneT) or 0) + math.max(0, tonumber(arg_73_1) or 0)

	if math.max(0.01, tonumber(arg_73_2) or 0.1) * 4 <= arg_73_0.starlightTheftGoneT then
		arg_73_0.alive = false

		return false
	end

	return true
end

__recovered_scope_0.var_0_85.constants = {
	FLIGHT_ASSET = __recovered_scope_0.var_0_86,
	GONE_ASSET = __recovered_scope_0.var_0_87,
	MARKER_FRAME = __recovered_scope_0.var_0_91,
	SPEED = __recovered_scope_0.var_0_92,
	POST_HIT_DISTANCE = __recovered_scope_0.var_0_93
}

 __recovered_scope_0.var_0_101 = __recovered_scope_0.var_0_85
 __recovered_scope_0.var_0_102 = nil
 __recovered_scope_0.var_0_103 = {}
 __recovered_scope_0.var_0_104 = "StarPriestessHammer"
 __recovered_scope_0.var_0_105 = 3
 __recovered_scope_0.var_0_106 = 4
 __recovered_scope_0.var_0_107 = 7
 __recovered_scope_0.var_0_108 = 0.2
 __recovered_scope_0.var_0_109 = 0.65

 function __recovered_scope_0.var_0_110(arg_74_0)
	if arg_74_0 and arg_74_0.colX and arg_74_0.colY and arg_74_0.colW and arg_74_0.colH then
		return arg_74_0.colX + arg_74_0.colW * 0.5, arg_74_0.colY + arg_74_0.colH * 0.5
	end

	return tonumber(arg_74_0 and arg_74_0.x) or 0, tonumber(arg_74_0 and arg_74_0.y) or 0
end

 function __recovered_scope_0.var_0_111()
	if love and love.math and love.math.random then
		return love.math.random()
	end

	return math.random()
end

function __recovered_scope_0.var_0_103.getLandingRegions(arg_76_0)
	if not arg_76_0 then
		return {}, 0, 0, 1
	end

	local var_76_0 = tonumber(arg_76_0.ui and arg_76_0.ui.battle and arg_76_0.ui.battle.allySize32) or 32
	local var_76_1 = math.max(1, math.floor(var_76_0 / 32 + 0.5))
	local var_76_2 = arg_76_0.assets and arg_76_0.assets.projectiles and arg_76_0.assets.projectiles[__recovered_scope_0.var_0_104]
	local var_76_3 = 32

	if var_76_2 and var_76_2.bounds then
		var_76_3 = 1

		for iter_76_0 = __recovered_scope_0.var_0_105, __recovered_scope_0.var_0_107 do
			local var_76_4 = var_76_2.bounds[iter_76_0]

			var_76_3 = math.max(var_76_3, tonumber(var_76_4 and var_76_4.h) or 0)
		end
	end

	local var_76_5 = var_76_3 * var_76_1 * 0.5 + var_76_1
	local var_76_6 = 12 * var_76_1
	local var_76_7 = require("src.game.combat").placement_area
	local var_76_8 = var_76_7 and var_76_7.regions and var_76_7.regions(arg_76_0, var_76_5, var_76_6) or {}

	if var_76_8[1] then
		var_76_8[1].minY = math.min(var_76_8[1].maxY, var_76_8[1].minY + 14 * var_76_1)
	end

	if var_76_8[2] then
		var_76_8[2].minY = math.max(0, var_76_8[2].minY - 4 * var_76_1)
	end

	return var_76_8, var_76_5, var_76_6, var_76_1
end

function __recovered_scope_0.var_0_103.spawn(arg_77_0, arg_77_1, arg_77_2, arg_77_3)
	if not arg_77_0 or not arg_77_1 then
		return nil
	end

	local var_77_0 = arg_77_0.area or {
		y = 0,
		x = 0,
		w = 640,
		h = 360
	}
	local var_77_1, var_77_2, var_77_3, var_77_4 = __recovered_scope_0.var_0_103.getLandingRegions(arg_77_0)
	local var_77_5 = require("src.game.combat").placement_area
	local var_77_6
	local var_77_7

	if arg_77_2 and arg_77_2.alive and not arg_77_2.dying then
		var_77_6, var_77_7 = __recovered_scope_0.var_0_110(arg_77_2)
	else
		if #var_77_1 > 0 then
			local var_77_8 = var_77_1[(math.max(1, math.floor(tonumber(arg_77_3) or 1)) - 1) % #var_77_1 + 1]

			var_77_6 = var_77_8.minX + (var_77_8.maxX - var_77_8.minX) * __recovered_scope_0.var_0_111()
			var_77_7 = var_77_8.minY + (var_77_8.maxY - var_77_8.minY) * __recovered_scope_0.var_0_111()
		elseif var_77_5 and var_77_5.randomPoint then
			var_77_6, var_77_7 = var_77_5.randomPoint(arg_77_0, var_77_2, var_77_3)
		end

		if var_77_6 == nil or var_77_7 == nil then
			if type(arg_77_0.getRosterClamp) == "function" then
				local var_77_9, var_77_10, var_77_11, var_77_12 = arg_77_0:getRosterClamp()

				var_77_6 = var_77_9 + (var_77_10 - var_77_9) * __recovered_scope_0.var_0_111()
				var_77_7 = var_77_11 + (var_77_12 - var_77_11) * __recovered_scope_0.var_0_111()
			else
				var_77_6 = var_77_0.x + var_77_0.w * (0.18 + __recovered_scope_0.var_0_111() * 0.28)
				var_77_7 = var_77_0.y + var_77_0.h * (0.58 + __recovered_scope_0.var_0_111() * 0.25)
			end
		end

		arg_77_2 = nil
	end

	if var_77_5 and var_77_5.clampPoint then
		var_77_6, var_77_7 = var_77_5.clampPoint(arg_77_0, var_77_6, var_77_7, var_77_2, var_77_3)
	elseif type(arg_77_0.clampToRosterArea) == "function" then
		var_77_6, var_77_7 = arg_77_0:clampToRosterArea(var_77_6, var_77_7)
	end

	local var_77_13 = var_77_0.y + 18 * var_77_4
	local var_77_14 = {
		battleSkillDamage = true,
		phase = "appear",
		phaseT = 0,
		animFrames = 7,
		animT = 0,
		alive = true,
		frame = 1,
		side = "enemy",
		life = 2.5,
		rot = 0,
		vy = 0,
		vx = 0,
		kind = "projectile",
		starPriestessHammer = true,
		visualOnly = false,
		asset = __recovered_scope_0.var_0_104,
		x = var_77_6,
		y = var_77_13,
		startX = var_77_6,
		startY = var_77_13,
		groundY = var_77_7,
		dmg = math.max(1, math.floor((tonumber(arg_77_1.dmg) or 0) * math.max(0, tonumber(arg_77_1.hammerRainDmgMul) or 0.9) + 0.5)),
		scale = var_77_4,
		owner = arg_77_1,
		awakeningCast = arg_77_1._awakening and arg_77_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_77_1),
		targetOnly = arg_77_2,
		hitTargets = {}
	}

	arg_77_0.projectiles = arg_77_0.projectiles or {}
	arg_77_0.projectiles[#arg_77_0.projectiles + 1] = var_77_14

	return var_77_14
end

function __recovered_scope_0.var_0_103.update(arg_78_0, arg_78_1, arg_78_2)
	if not arg_78_0 or not arg_78_0.starPriestessHammer or arg_78_0.asset ~= __recovered_scope_0.var_0_104 or not arg_78_0.alive then
		return false
	end

	local var_78_0 = math.max(0.01, tonumber(arg_78_2) or 0.07)

	if arg_78_0.phase == "appear" then
		arg_78_0.vx, arg_78_0.vy = 0, 0
		arg_78_0.phaseT = (tonumber(arg_78_0.phaseT) or 0) + math.max(0, tonumber(arg_78_1) or 0)
		arg_78_0.frame = math.min(__recovered_scope_0.var_0_105, 1 + math.floor(arg_78_0.phaseT / __recovered_scope_0.var_0_108))
		arg_78_0.animT = 0

		if arg_78_0.phaseT >= __recovered_scope_0.var_0_108 * 2 then
			arg_78_0.phase = "fall"
			arg_78_0.frame = __recovered_scope_0.var_0_105
			arg_78_0.animT = 0
			arg_78_0.vy = math.max(0, (tonumber(arg_78_0.groundY) or 0) - (tonumber(arg_78_0.y) or 0)) / __recovered_scope_0.var_0_109
		end
	elseif arg_78_0.phase == "fall" then
		arg_78_0.frame = __recovered_scope_0.var_0_105
		arg_78_0.animT = 0

		if (tonumber(arg_78_0.y) or 0) >= (tonumber(arg_78_0.groundY) or 0) then
			arg_78_0.y = arg_78_0.groundY
			arg_78_0.phase = "vanish"
			arg_78_0.frame = __recovered_scope_0.var_0_106
			arg_78_0.animT = 0
			arg_78_0.vx, arg_78_0.vy = 0, 0
			arg_78_0.visualOnly = true
			arg_78_0.vanishT = 0
		end
	elseif arg_78_0.phase == "vanish" then
		arg_78_0.vx, arg_78_0.vy = 0, 0
		arg_78_0.vanishT = (tonumber(arg_78_0.vanishT) or 0) + math.max(0, tonumber(arg_78_1) or 0)

		local var_78_1 = math.floor(arg_78_0.vanishT / var_78_0)

		arg_78_0.frame = math.min(__recovered_scope_0.var_0_107, __recovered_scope_0.var_0_106 + var_78_1)
		arg_78_0.animT = 0

		if arg_78_0.vanishT >= var_78_0 * 4 then
			arg_78_0.alive = false

			return false
		end
	end

	return true
end

function __recovered_scope_0.var_0_103.markHit(arg_79_0, arg_79_1)
	if not arg_79_0 or not arg_79_0.starPriestessHammer or arg_79_0.phase ~= "fall" then
		return false
	end

	arg_79_0.didDamage = true
	arg_79_0.visualOnly = true
	arg_79_0.hitTargets = arg_79_0.hitTargets or {}

	if arg_79_1 then
		arg_79_0.hitTargets[arg_79_1] = true
	end

	return true
end

__recovered_scope_0.var_0_103.constants = {
	ASSET = __recovered_scope_0.var_0_104,
	FALL_FRAME = __recovered_scope_0.var_0_105,
	APPEAR_FRAME_DURATION = __recovered_scope_0.var_0_108,
	FALL_DURATION = __recovered_scope_0.var_0_109,
	VANISH_FIRST_FRAME = __recovered_scope_0.var_0_106,
	VANISH_LAST_FRAME = __recovered_scope_0.var_0_107
}

 __recovered_scope_0.var_0_112 = __recovered_scope_0.var_0_103
 __recovered_scope_0.var_0_113 = nil
 __recovered_scope_0.var_0_114 = {}
 __recovered_scope_0.var_0_115 = 252
 __recovered_scope_0.var_0_116 = 239
 __recovered_scope_0.var_0_117 = 170

function __recovered_scope_0.var_0_114.getAnchor(arg_80_0, arg_80_1, arg_80_2)
	local var_80_0 = tonumber(arg_80_1 and arg_80_1.frameW) or 32
	local var_80_1 = tonumber(arg_80_1 and arg_80_1.frameH) or 32
	local var_80_2 = arg_80_1 and arg_80_1.animations and arg_80_1.animations.attack
	local var_80_3 = arg_80_1 and arg_80_1.imageData
	local var_80_4 = 24.5
	local var_80_5 = 20.5
	local var_80_6 = 0
	local var_80_7 = arg_80_1 and arg_80_1._ferretTamerProjectileAnchor

	if var_80_7 then
		var_80_4, var_80_5, var_80_6 = var_80_7.x, var_80_7.y, var_80_7.count or 0
	elseif var_80_3 and var_80_2 then
		local var_80_8 = (math.min(3, tonumber(var_80_2.frames) or 3) - 1) * var_80_0
		local var_80_9 = ((var_80_2.row or 1) - 1) * var_80_1
		local var_80_10, var_80_11 = var_80_3:getDimensions()
		local var_80_12 = 0
		local var_80_13 = 0

		if var_80_8 >= 0 and var_80_9 >= 0 and var_80_10 >= var_80_8 + var_80_0 and var_80_11 >= var_80_9 + var_80_1 then
			for iter_80_0 = 0, var_80_1 - 1 do
				for iter_80_1 = 0, var_80_0 - 1 do
					local var_80_14, var_80_15, var_80_16, var_80_17 = var_80_3:getPixel(var_80_8 + iter_80_1, var_80_9 + iter_80_0)

					if var_80_17 and var_80_17 > 0.05 then
						local var_80_18 = math.floor((var_80_14 or 0) * 255 + 0.5)
						local var_80_19 = math.floor((var_80_15 or 0) * 255 + 0.5)
						local var_80_20 = math.floor((var_80_16 or 0) * 255 + 0.5)

						if var_80_18 == __recovered_scope_0.var_0_115 and var_80_19 == __recovered_scope_0.var_0_116 and var_80_20 == __recovered_scope_0.var_0_117 then
							var_80_12 = var_80_12 + iter_80_1
							var_80_13 = var_80_13 + iter_80_0
							var_80_6 = var_80_6 + 1
						end
					end
				end
			end
		end

		if var_80_6 > 0 then
			var_80_4 = var_80_12 / var_80_6 + 0.5
			var_80_5 = var_80_13 / var_80_6 + 0.5
		end

		if arg_80_1 then
			arg_80_1._ferretTamerProjectileAnchor = {
				x = var_80_4,
				y = var_80_5,
				count = var_80_6
			}
		end
	end

	local var_80_21 = tonumber(arg_80_2) or 32
	local var_80_22 = var_80_21 / math.max(1, var_80_0)
	local var_80_23 = var_80_21 / math.max(1, var_80_1)

	if ((arg_80_0 and (arg_80_0._attackFacing or arg_80_0.facing) or 1) < 0 and -1 or 1) < 0 then
		var_80_4 = var_80_0 - var_80_4
	end

	local var_80_24 = (arg_80_0 and arg_80_0.x or 0) - var_80_21 * 0.5 + var_80_4 * var_80_22
	local var_80_25 = (arg_80_0 and arg_80_0.y or 0) - var_80_21 * 0.5 + var_80_5 * var_80_23

	return var_80_24, var_80_25, var_80_6, var_80_4, var_80_5
end

function __recovered_scope_0.var_0_114.startPostHitTravel(arg_81_0, arg_81_1)
	if not arg_81_0 or arg_81_0.asset ~= "FerretTamerProjectile" or arg_81_0.state == "dying" then
		return false
	end

	arg_81_0.state = "post_hit_travel"
	arg_81_0.visualOnly = true
	arg_81_0.pierce = nil
	arg_81_0.ferretPostHitStartX = tonumber(arg_81_0.x) or 0
	arg_81_0.ferretPostHitStartY = tonumber(arg_81_0.y) or 0
	arg_81_0.ferretPostHitDistance = math.max(1, tonumber(arg_81_1) or 18)
	arg_81_0.life = math.max(tonumber(arg_81_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_114.updatePostHitTravel(arg_82_0)
	if not arg_82_0 or arg_82_0.asset ~= "FerretTamerProjectile" or arg_82_0.state ~= "post_hit_travel" then
		return false
	end

	local var_82_0 = (tonumber(arg_82_0.x) or 0) - (tonumber(arg_82_0.ferretPostHitStartX) or 0)
	local var_82_1 = (tonumber(arg_82_0.y) or 0) - (tonumber(arg_82_0.ferretPostHitStartY) or 0)
	local var_82_2 = math.max(1, tonumber(arg_82_0.ferretPostHitDistance) or 18)

	if var_82_0 * var_82_0 + var_82_1 * var_82_1 >= var_82_2 * var_82_2 then
		return __recovered_scope_0.var_0_114.startVanish(arg_82_0)
	end

	return false
end

function __recovered_scope_0.var_0_114.startVanish(arg_83_0)
	if not arg_83_0 or arg_83_0.asset ~= "FerretTamerProjectile" or arg_83_0.state == "dying" then
		return false
	end

	arg_83_0.asset = "FerretTamerProjectileVanish"
	arg_83_0.state = "dying"
	arg_83_0.frame = 1
	arg_83_0.animT = 0
	arg_83_0.vx, arg_83_0.vy = 0, 0
	arg_83_0.rot = 0
	arg_83_0.animFrames = 4
	arg_83_0.ferretVanishT = 0
	arg_83_0.visualOnly = true
	arg_83_0.life = math.max(tonumber(arg_83_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_114.updateVanish(arg_84_0, arg_84_1, arg_84_2)
	if not arg_84_0 or arg_84_0.asset ~= "FerretTamerProjectileVanish" or arg_84_0.state ~= "dying" then
		return false
	end

	arg_84_0.ferretVanishT = (arg_84_0.ferretVanishT or 0) + math.max(0, tonumber(arg_84_1) or 0)

	if math.max(0.01, tonumber(arg_84_2) or 0.1) * 4 <= arg_84_0.ferretVanishT then
		arg_84_0.alive = false

		return false
	end

	return true
end

 __recovered_scope_0.var_0_118 = __recovered_scope_0.var_0_114
 __recovered_scope_0.var_0_119 = nil
 __recovered_scope_0.var_0_120 = {}
 __recovered_scope_0.var_0_121 = {}

 function __recovered_scope_0.var_0_122(arg_85_0)
	if arg_85_0 >= 0 then
		return math.floor(arg_85_0 + 0.5)
	end

	return math.ceil(arg_85_0 - 0.5)
end

function __recovered_scope_0.var_0_120.getVisualOffsetX(arg_86_0)
	if not arg_86_0 or not arg_86_0.hitShake or not arg_86_0.hitShake.t or not arg_86_0.hitShake.dur then
		return 0
	end

	local var_86_0 = math.max(0, math.min(1, (arg_86_0.hitShake.t or 0) / math.max(1e-09, arg_86_0.hitShake.dur or 0.11)))
	local var_86_1 = math.floor((arg_86_0.hitShake.amp or 2) * (1 - var_86_0) + 0.5)

	if var_86_1 <= 0 then
		return 0
	end

	return var_86_1 * (math.floor((arg_86_0.hitShake.t or 0) * 60) % 2 == 0 and -1 or 1)
end

function __recovered_scope_0.var_0_120.getWorldRect(arg_87_0, arg_87_1, arg_87_2, arg_87_3, arg_87_4)
	local var_87_0 = math.floor((arg_87_0 and arg_87_0.x or 0) + 0.5)
	local var_87_1 = math.floor((arg_87_0 and arg_87_0.y or 0) + 0.5)
	local var_87_2 = math.max(1, math.floor(tonumber(arg_87_0 and arg_87_0.scale) or 1)) * math.max(0.25, math.min(1, tonumber(arg_87_0 and arg_87_0.footprintScale) or 1))
	local var_87_3 = var_87_0 + __recovered_scope_0.var_0_122(arg_87_1 * var_87_2)
	local var_87_4 = var_87_1 + __recovered_scope_0.var_0_122(arg_87_2 * var_87_2)
	local var_87_5 = var_87_0 + __recovered_scope_0.var_0_122((arg_87_1 + (arg_87_3 or 1)) * var_87_2)
	local var_87_6 = var_87_1 + __recovered_scope_0.var_0_122((arg_87_2 + (arg_87_4 or 1)) * var_87_2)

	if var_87_5 <= var_87_3 then
		var_87_5 = var_87_3 + 1
	end

	if var_87_6 <= var_87_4 then
		var_87_6 = var_87_4 + 1
	end

	return var_87_3, var_87_4, var_87_5 - var_87_3, var_87_6 - var_87_4
end

function __recovered_scope_0.var_0_120.getOpaqueSpriteCenter(arg_88_0, arg_88_1, arg_88_2)
	if not arg_88_0 or not arg_88_1 then
		return arg_88_0 and arg_88_0.x or 0, arg_88_0 and arg_88_0.y or 0
	end

	local var_88_0 = arg_88_1.frameW or 32
	local var_88_1 = arg_88_1.frameH or 32
	local var_88_2 = arg_88_0.anim and arg_88_0.anim.name or "idle"

	if arg_88_1.animations and not arg_88_1.animations[var_88_2] then
		var_88_2 = "idle"
	end

	local var_88_3 = arg_88_1.animations and arg_88_1.animations[var_88_2] and arg_88_1.animations[var_88_2].frames or 1
	local var_88_4 = math.max(1, math.min(arg_88_0.anim and arg_88_0.anim.frame or 1, var_88_3))
	local var_88_5 = arg_88_1.quads and arg_88_1.quads[var_88_2] and arg_88_1.quads[var_88_2][var_88_4]
	local var_88_6
	local var_88_7

	if arg_88_1.imageData and var_88_5 then
		local var_88_8, var_88_9, var_88_10, var_88_11 = var_88_5:getViewport()
		local var_88_12 = 0
		local var_88_13 = 0
		local var_88_14 = 0

		for iter_88_0 = 0, var_88_11 - 1 do
			for iter_88_1 = 0, var_88_10 - 1 do
				local var_88_15, var_88_16, var_88_17, var_88_18 = arg_88_1.imageData:getPixel(var_88_8 + iter_88_1, var_88_9 + iter_88_0)

				if var_88_18 and var_88_18 > 0 then
					var_88_12 = var_88_12 + iter_88_1 + 0.5
					var_88_13 = var_88_13 + iter_88_0 + 0.5
					var_88_14 = var_88_14 + 1
				end
			end
		end

		if var_88_14 > 0 then
			var_88_6, var_88_7 = var_88_12 / var_88_14, var_88_13 / var_88_14
		end
	end

	if not var_88_6 then
		local var_88_19 = arg_88_1.bounds and arg_88_1.bounds[var_88_2] and arg_88_1.bounds[var_88_2][var_88_4]

		if var_88_19 then
			var_88_6 = (var_88_19.x or 0) + (var_88_19.w or var_88_0) * 0.5
			var_88_7 = (var_88_19.y or 0) + (var_88_19.h or var_88_1) * 0.5
		else
			var_88_6, var_88_7 = var_88_0 * 0.5, var_88_1 * 0.5
		end
	end

	local var_88_20 = math.max(1, tonumber(arg_88_2) or 1)
	local var_88_21 = (arg_88_0.facing or 1) < 0 and -var_88_20 or var_88_20
	local var_88_22 = (arg_88_0.x or 0) + (var_88_6 - var_88_0 * 0.5) * var_88_21 + __recovered_scope_0.var_0_120.getVisualOffsetX(arg_88_0)
	local var_88_23 = (arg_88_0.y or 0) + (var_88_7 - var_88_1 * 0.5) * var_88_20

	return var_88_22, var_88_23
end

function __recovered_scope_0.var_0_120.getFrameInfo(arg_89_0, arg_89_1)
	arg_89_0 = math.max(0, tonumber(arg_89_0) or 0)
	arg_89_1 = math.max(0.01, tonumber(arg_89_1) or 0.42)

	local var_89_0 = math.max(0, math.min(1, arg_89_0 / arg_89_1))

	if var_89_0 >= 1 then
		return nil, nil, var_89_0
	end

	local var_89_1 = math.min(6, math.floor(var_89_0 * 6) + 1)

	return var_89_1, var_89_0 * 6 - (var_89_1 - 1), var_89_0
end

function __recovered_scope_0.var_0_120.forEachRect(arg_90_0, arg_90_1, arg_90_2)
	if type(arg_90_2) ~= "function" then
		return false
	end

	local var_90_0, var_90_1 = __recovered_scope_0.var_0_120.getFrameInfo(arg_90_0, arg_90_1)

	if not var_90_0 then
		return false
	end

	local function var_90_2(arg_91_0, arg_91_1, arg_91_2, arg_91_3, arg_91_4, arg_91_5, arg_91_6, arg_91_7, arg_91_8)
		if arg_91_8 == nil then
			arg_91_8 = true
		end

		return arg_90_2(arg_91_0, arg_91_1, arg_91_2 or 1, arg_91_3 or 1, arg_91_4, arg_91_5, arg_91_6, arg_91_7 or 1, arg_91_8) == true
	end

	local function var_90_3(arg_92_0, arg_92_1, arg_92_2, arg_92_3, arg_92_4, arg_92_5, arg_92_6, arg_92_7)
		for iter_92_0 = -arg_92_2, arg_92_2 do
			for iter_92_1 = -arg_92_2, arg_92_2 do
				if iter_92_1 * iter_92_1 + iter_92_0 * iter_92_0 <= arg_92_2 * arg_92_2 + 0.5 and var_90_2(arg_92_0 + iter_92_1, arg_92_1 + iter_92_0, 1, 1, arg_92_3, arg_92_4, arg_92_5, arg_92_6, arg_92_7) then
					return true
				end
			end
		end

		return false
	end

	if var_90_0 == 1 then
		local var_90_4 = 1

		if var_90_2(-3, 0, 1, 1, 1, 0.55, 0.1, var_90_4) then
			return true
		end

		if var_90_2(3, 0, 1, 1, 1, 0.55, 0.1, var_90_4) then
			return true
		end

		if var_90_2(0, -3, 1, 1, 1, 0.55, 0.1, var_90_4) then
			return true
		end

		if var_90_2(0, 3, 1, 1, 1, 0.55, 0.1, var_90_4) then
			return true
		end

		if var_90_2(-2, -1, 5, 3, 1, 0.9, 0.2, var_90_4) then
			return true
		end

		if var_90_2(-1, -2, 3, 5, 1, 0.9, 0.2, var_90_4) then
			return true
		end

		return var_90_2(-1, -1, 3, 3, 1, 1, 1, var_90_4)
	elseif var_90_0 == 2 then
		local var_90_5 = 1

		if var_90_3(0, 0, 6, 1, 0.45, 0.05, var_90_5) then
			return true
		end

		if var_90_3(0, 0, 4, 1, 0.88, 0.15, var_90_5) then
			return true
		end

		if var_90_3(0, 0, 2, 1, 1, 1, var_90_5) then
			return true
		end

		if var_90_2(-7, 0, 1, 1, 1, 0.6, 0.1, var_90_5) then
			return true
		end

		if var_90_2(7, 0, 1, 1, 1, 0.6, 0.1, var_90_5) then
			return true
		end

		if var_90_2(0, -7, 1, 1, 1, 0.6, 0.1, var_90_5) then
			return true
		end

		return var_90_2(0, 7, 1, 1, 1, 0.6, 0.1, var_90_5)
	elseif var_90_0 == 3 then
		local var_90_6 = 1
		local var_90_7 = {
			{
				0,
				0,
				6
			},
			{
				-4,
				-3,
				5
			},
			{
				4,
				-3,
				5
			},
			{
				-4,
				3,
				5
			},
			{
				4,
				3,
				5
			},
			{
				0,
				-5,
				4
			},
			{
				0,
				5,
				4
			}
		}

		for iter_90_0, iter_90_1 in ipairs(var_90_7) do
			if var_90_3(iter_90_1[1], iter_90_1[2], iter_90_1[3], 1, 0.48, 0.06, var_90_6) then
				return true
			end
		end

		for iter_90_2, iter_90_3 in ipairs(var_90_7) do
			if iter_90_3[3] >= 5 and var_90_3(iter_90_3[1], iter_90_3[2], iter_90_3[3] - 2, 1, 0.88, 0.2, var_90_6) then
				return true
			end
		end

		return var_90_3(0, 0, 2, 1, 1, 0.9, var_90_6)
	elseif var_90_0 == 4 then
		local var_90_8 = 0.95
		local var_90_9 = {
			{
				-6,
				-5,
				4,
				1,
				0.55,
				0.1
			},
			{
				6,
				-5,
				4,
				1,
				0.55,
				0.1
			},
			{
				-6,
				5,
				4,
				0.95,
				0.42,
				0.08
			},
			{
				6,
				5,
				4,
				0.95,
				0.42,
				0.08
			},
			{
				0,
				-7,
				3,
				1,
				0.65,
				0.15
			},
			{
				0,
				7,
				3,
				0.88,
				0.38,
				0.06
			},
			{
				-1,
				0,
				3,
				0.6,
				0.28,
				0.18,
				false
			}
		}

		for iter_90_4, iter_90_5 in ipairs(var_90_9) do
			if var_90_3(iter_90_5[1], iter_90_5[2], iter_90_5[3], iter_90_5[4], iter_90_5[5], iter_90_5[6], var_90_8, iter_90_5[7]) then
				return true
			end

			if iter_90_5[3] >= 4 and var_90_3(iter_90_5[1], iter_90_5[2], iter_90_5[3] - 2, 1, 0.85, 0.25, var_90_8) then
				return true
			end
		end
	elseif var_90_0 == 5 then
		local var_90_10 = 0.75 - var_90_1 * 0.3
		local var_90_11 = {
			{
				-9,
				-7,
				3
			},
			{
				9,
				-7,
				3
			},
			{
				-8,
				8,
				3
			},
			{
				8,
				8,
				3
			},
			{
				0,
				-10,
				2
			},
			{
				0,
				10,
				2
			},
			{
				-3,
				-1,
				2
			},
			{
				3,
				1,
				2
			}
		}

		for iter_90_6, iter_90_7 in ipairs(var_90_11) do
			if var_90_3(iter_90_7[1], iter_90_7[2], iter_90_7[3], 0.55, 0.46, 0.48, var_90_10, false) then
				return true
			end

			if iter_90_7[3] >= 3 and var_90_2(iter_90_7[1], iter_90_7[2], 1, 1, 0.95, 0.45, 0.15, var_90_10) then
				return true
			end
		end
	else
		local var_90_12 = math.max(0, 0.45 * (1 - var_90_1))
		local var_90_13 = {
			{
				-11,
				-9,
				1,
				1,
				0.5,
				0.42,
				0.45,
				false
			},
			{
				11,
				-8,
				1,
				1,
				0.5,
				0.42,
				0.45,
				false
			},
			{
				-10,
				10,
				1,
				1,
				0.5,
				0.42,
				0.45,
				false
			},
			{
				10,
				11,
				1,
				1,
				0.5,
				0.42,
				0.45,
				false
			},
			{
				-2,
				-12,
				1,
				1,
				1,
				0.55,
				0.15,
				true
			},
			{
				3,
				12,
				1,
				1,
				1,
				0.55,
				0.15,
				true
			},
			{
				-5,
				2,
				1,
				1,
				0.4,
				0.32,
				0.35,
				false
			},
			{
				6,
				-2,
				1,
				1,
				0.4,
				0.32,
				0.35,
				false
			}
		}

		for iter_90_8, iter_90_9 in ipairs(var_90_13) do
			if var_90_2(iter_90_9[1], iter_90_9[2], iter_90_9[3], iter_90_9[4], iter_90_9[5], iter_90_9[6], iter_90_9[7], var_90_12, iter_90_9[8]) then
				return true
			end
		end
	end

	return false
end

function __recovered_scope_0.var_0_120.forEachResolvedPixel(arg_93_0, arg_93_1, arg_93_2)
	if type(arg_93_2) ~= "function" then
		return false
	end

	local var_93_0 = {}
	local var_93_1 = {}

	__recovered_scope_0.var_0_120.forEachRect(arg_93_0, arg_93_1, function(arg_94_0, arg_94_1, arg_94_2, arg_94_3, arg_94_4, arg_94_5, arg_94_6, arg_94_7, arg_94_8)
		for iter_94_0 = arg_94_1, arg_94_1 + arg_94_3 - 1 do
			for iter_94_1 = arg_94_0, arg_94_0 + arg_94_2 - 1 do
				local var_94_0 = tostring(iter_94_1) .. ":" .. tostring(iter_94_0)
				local var_94_1 = var_93_0[var_94_0]

				if not var_94_1 then
					var_94_1 = {}
					var_93_0[var_94_0] = var_94_1
					var_93_1[#var_93_1 + 1] = var_94_1
				end

				var_94_1.x, var_94_1.y = iter_94_1, iter_94_0
				var_94_1.r, var_94_1.g, var_94_1.b, var_94_1.a = arg_94_4, arg_94_5, arg_94_6, arg_94_7
				var_94_1.damaging = arg_94_8 == true
			end
		end
	end)

	for iter_93_0, iter_93_1 in ipairs(var_93_1) do
		if arg_93_2(iter_93_1.x, iter_93_1.y, iter_93_1.r, iter_93_1.g, iter_93_1.b, iter_93_1.a, iter_93_1.damaging) == true then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_120.forEachDamagePixel(arg_95_0, arg_95_1, arg_95_2)
	if type(arg_95_2) ~= "function" then
		return false
	end

	local var_95_0 = __recovered_scope_0.var_0_120.getFrameInfo(arg_95_0, arg_95_1)

	if not var_95_0 then
		return false
	end

	local var_95_1 = __recovered_scope_0.var_0_121[var_95_0]

	if not var_95_1 then
		var_95_1 = {}

		local var_95_2 = (var_95_0 - 1 + 0.5) / 6

		__recovered_scope_0.var_0_120.forEachResolvedPixel(var_95_2, 1, function(arg_96_0, arg_96_1, arg_96_2, arg_96_3, arg_96_4, arg_96_5, arg_96_6)
			if arg_96_6 and arg_96_5 and arg_96_5 > 0 then
				var_95_1[#var_95_1 + 1] = {
					x = arg_96_0,
					y = arg_96_1
				}
			end
		end)

		__recovered_scope_0.var_0_121[var_95_0] = var_95_1
	end

	for iter_95_0, iter_95_1 in ipairs(var_95_1) do
		if arg_95_2(iter_95_1.x, iter_95_1.y) == true then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_120.hitsTarget(arg_97_0, arg_97_1, arg_97_2)
	if not arg_97_0 or not arg_97_1 or not arg_97_2 or not arg_97_2.imageData or not arg_97_2.quads or not arg_97_2.bounds or not arg_97_1.colX or not arg_97_1.colY or not arg_97_1.colW or not arg_97_1.colH then
		return false
	end

	local var_97_0 = arg_97_1.anim and arg_97_1.anim.name or "idle"

	if arg_97_2.animations and not arg_97_2.animations[var_97_0] then
		var_97_0 = "idle"
	end

	local var_97_1 = arg_97_2.animations and arg_97_2.animations[var_97_0] and arg_97_2.animations[var_97_0].frames or 1
	local var_97_2 = math.max(1, math.min(arg_97_1.anim and arg_97_1.anim.frame or 1, var_97_1))
	local var_97_3 = arg_97_2.bounds[var_97_0] and arg_97_2.bounds[var_97_0][var_97_2]
	local var_97_4 = arg_97_2.quads[var_97_0] and arg_97_2.quads[var_97_0][var_97_2]

	if not var_97_3 or not var_97_4 or not ((var_97_3.w or 0) > 0) or not ((var_97_3.h or 0) > 0) then
		return false
	end

	local var_97_5 = arg_97_1.colW / var_97_3.w
	local var_97_6 = arg_97_1.colH / var_97_3.h

	if var_97_5 <= 0 or var_97_6 <= 0 then
		return false
	end

	local var_97_7, var_97_8 = var_97_4:getViewport()
	local var_97_9 = arg_97_1.facing or 1
	local var_97_10 = __recovered_scope_0.var_0_120.getVisualOffsetX(arg_97_1)
	local var_97_11 = arg_97_1.colX + var_97_10
	local var_97_12 = var_97_11 + arg_97_1.colW
	local var_97_13 = arg_97_1.colY + arg_97_1.colH
	local var_97_14 = math.max(0, tonumber(arg_97_0.radius) or 0)

	if var_97_14 > 0 then
		local var_97_15 = tonumber(arg_97_0.x) or 0
		local var_97_16 = tonumber(arg_97_0.y) or 0
		local var_97_17 = math.max(var_97_11, math.min(var_97_15, var_97_12))
		local var_97_18 = math.max(arg_97_1.colY, math.min(var_97_16, var_97_13))
		local var_97_19 = var_97_17 - var_97_15
		local var_97_20 = var_97_18 - var_97_16

		if var_97_19 * var_97_19 + var_97_20 * var_97_20 <= var_97_14 * var_97_14 then
			return true, var_97_17, var_97_18
		end

		return false
	end

	local var_97_21
	local var_97_22

	return __recovered_scope_0.var_0_120.forEachDamagePixel(arg_97_0.t, arg_97_0.dur, function(arg_98_0, arg_98_1)
		local var_98_0, var_98_1, var_98_2, var_98_3 = __recovered_scope_0.var_0_120.getWorldRect(arg_97_0, arg_98_0, arg_98_1, 1, 1)
		local var_98_4 = var_98_0 + var_98_2
		local var_98_5 = var_98_1 + var_98_3
		local var_98_6 = math.max(var_98_0, var_97_11)
		local var_98_7 = math.max(var_98_1, arg_97_1.colY)
		local var_98_8 = math.min(var_98_4, var_97_12)
		local var_98_9 = math.min(var_98_5, var_97_13)

		if var_98_8 <= var_98_6 or var_98_9 <= var_98_7 then
			return false
		end

		local var_98_10 = math.ceil(var_98_6 - 0.5)
		local var_98_11 = math.ceil(var_98_7 - 0.5)
		local var_98_12 = math.ceil(var_98_8 - 0.5) - 1
		local var_98_13 = math.ceil(var_98_9 - 0.5) - 1

		for iter_98_0 = var_98_11, var_98_13 do
			for iter_98_1 = var_98_10, var_98_12 do
				local var_98_14 = (iter_98_1 + 0.5 - var_97_11) / var_97_5
				local var_98_15 = (iter_98_0 + 0.5 - arg_97_1.colY) / var_97_6

				if var_98_14 >= 0 and var_98_15 >= 0 and var_98_14 < var_97_3.w and var_98_15 < var_97_3.h then
					if var_97_9 < 0 then
						var_98_14 = var_97_3.w - 1e-09 - var_98_14
					end

					local var_98_16 = math.floor(var_97_7 + (var_97_3.x or 0) + var_98_14)
					local var_98_17 = math.floor(var_97_8 + (var_97_3.y or 0) + var_98_15)
					local var_98_18, var_98_19, var_98_20, var_98_21 = arg_97_2.imageData:getPixel(var_98_16, var_98_17)

					if var_98_21 and var_98_21 > 0 then
						var_97_21, var_97_22 = iter_98_1 + 0.5, iter_98_0 + 0.5

						return true
					end
				end
			end
		end

		return false
	end), var_97_21, var_97_22
end

 __recovered_scope_0.var_0_123 = __recovered_scope_0.var_0_120
 __recovered_scope_0.var_0_124 = nil
 __recovered_scope_0.var_0_125 = {}
 __recovered_scope_0.var_0_126 = {
	b = 227,
	g = 227,
	r = 227,
	cacheKey = "_starJudgeProjectileMarker",
	frame = 4
}

function __recovered_scope_0.var_0_125.findAttackMarker(arg_99_0)
	return __recovered_scope_0.var_0_51.findAttackMarker(arg_99_0, __recovered_scope_0.var_0_126)
end

function __recovered_scope_0.var_0_125.getProjectileLaunch(arg_100_0, arg_100_1, arg_100_2, arg_100_3, arg_100_4)
	return __recovered_scope_0.var_0_51.getProjectileLaunch(arg_100_0, arg_100_1, arg_100_2, arg_100_3, arg_100_4, __recovered_scope_0.var_0_126)
end

function __recovered_scope_0.var_0_125.startPostHitTravel(arg_101_0)
	if not arg_101_0 or arg_101_0.asset ~= "StarJudgeProjectile" or arg_101_0.state == "post_hit_travel" then
		return false
	end

	local var_101_0 = tonumber(arg_101_0.vx) or 0
	local var_101_1 = tonumber(arg_101_0.vy) or 0
	local var_101_2 = math.sqrt(var_101_0 * var_101_0 + var_101_1 * var_101_1)

	arg_101_0._starJudgePostHit = {
		x = tonumber(arg_101_0.x) or 0,
		y = tonumber(arg_101_0.y) or 0,
		dx = var_101_2 > 0 and var_101_0 / var_101_2 or 0,
		dy = var_101_2 > 0 and var_101_1 / var_101_2 or 0,
		distance = var_101_2 > 0 and 12 * math.max(1, tonumber(arg_101_0.scale) or 1) or 0
	}
	arg_101_0.state = "post_hit_travel"
	arg_101_0.visualOnly = true
	arg_101_0.targetOnly = nil
	arg_101_0.life = math.max(tonumber(arg_101_0.life) or 0, 0.8)

	return true
end

function __recovered_scope_0.var_0_125.updatePostHitTravel(arg_102_0)
	local var_102_0 = arg_102_0 and arg_102_0._starJudgePostHit

	if not var_102_0 or arg_102_0.state ~= "post_hit_travel" then
		return false
	end

	local var_102_1 = (arg_102_0.x or 0) - var_102_0.x
	local var_102_2 = (arg_102_0.y or 0) - var_102_0.y

	if var_102_1 * var_102_0.dx + var_102_2 * var_102_0.dy + 1e-06 < var_102_0.distance then
		return false
	end

	arg_102_0.x = var_102_0.x + var_102_0.dx * var_102_0.distance
	arg_102_0.y = var_102_0.y + var_102_0.dy * var_102_0.distance
	arg_102_0.alive = false
	arg_102_0._starJudgePostHit = nil

	return true
end

 __recovered_scope_0.var_0_127 = __recovered_scope_0.var_0_125
 __recovered_scope_0.var_0_128 = nil
 __recovered_scope_0.var_0_129 = {}
 __recovered_scope_0.var_0_130 = {
	attack = {
		animation = "attack",
		exactPixel = true,
		b = 111,
		g = 111,
		r = 111,
		hover = true,
		cacheKey = "_cosmicAttackMarker",
		frame = 4
	},
	attack2 = {
		animation = "attack2",
		exactPixel = true,
		b = 112,
		g = 112,
		r = 113,
		hover = true,
		cacheKey = "_cosmicAttack2Marker",
		frame = 4
	}
}

function __recovered_scope_0.var_0_129.getProjectileLaunch(arg_103_0, arg_103_1, arg_103_2, arg_103_3, arg_103_4, arg_103_5)
	if not __recovered_scope_0.var_0_130[arg_103_5] then
		return nil
	end

	return __recovered_scope_0.var_0_51.getProjectileLaunch(arg_103_0, arg_103_1, arg_103_2, arg_103_3, arg_103_4, __recovered_scope_0.var_0_130[arg_103_5])
end

function __recovered_scope_0.var_0_129.startImpact(arg_104_0)
	if arg_104_0.state == "cosmic_impact" then
		return
	end

	arg_104_0.state, arg_104_0.visualOnly = "cosmic_impact", true
	arg_104_0._cosmicImpactT, arg_104_0._cosmicImpactAlpha = 0, arg_104_0.alpha or 1
	arg_104_0.vx, arg_104_0.vy = (arg_104_0.vx or 0) * 0.25, (arg_104_0.vy or 0) * 0.25
	arg_104_0.life = math.max(arg_104_0.life or 0, 0.2)
end

function __recovered_scope_0.var_0_129.updateImpact(arg_105_0, arg_105_1)
	arg_105_0._cosmicImpactT = (arg_105_0._cosmicImpactT or 0) + arg_105_1

	local var_105_0 = math.min(1, math.max(0, (arg_105_0._cosmicImpactT - 0.04) / 0.12))

	arg_105_0.alpha = (arg_105_0._cosmicImpactAlpha or 1) * (1 - var_105_0 * var_105_0 * (3 - 2 * var_105_0))

	if var_105_0 >= 1 then
		arg_105_0.alive = false
	end
end

 __recovered_scope_0.var_0_131 = __recovered_scope_0.var_0_129
 __recovered_scope_0.var_0_132 = nil
 __recovered_scope_0.var_0_133 = {
	marker = function(arg_106_0)
		if not arg_106_0 then
			return nil
		end

		if arg_106_0._combustionMarker ~= nil then
			return arg_106_0._combustionMarker or nil
		end

		local var_106_0 = arg_106_0.quads and arg_106_0.quads.attack3 and arg_106_0.quads.attack3[7]

		if not var_106_0 or not arg_106_0.imageData then
			return nil
		end

		local var_106_1, var_106_2, var_106_3, var_106_4 = var_106_0:getViewport()
		local var_106_5 = 0
		local var_106_6 = 0
		local var_106_7 = 0

		for iter_106_0 = 0, var_106_4 - 1 do
			for iter_106_1 = 0, var_106_3 - 1 do
				local var_106_8, var_106_9, var_106_10, var_106_11 = arg_106_0.imageData:getPixel(var_106_1 + iter_106_1, var_106_2 + iter_106_0)

				if var_106_11 > 0 and math.floor(var_106_8 * 255 + 0.5) == 235 and math.floor(var_106_9 * 255 + 0.5) == 209 and math.floor(var_106_10 * 255 + 0.5) == 10 then
					var_106_5, var_106_6, var_106_7 = var_106_5 + iter_106_1 + 0.5, var_106_6 + iter_106_0 + 0.5, var_106_7 + 1
				end
			end
		end

		arg_106_0._combustionMarker = var_106_7 > 0 and {
			x = var_106_5 / var_106_7,
			y = var_106_6 / var_106_7
		} or false

		return arg_106_0._combustionMarker or nil
	end
}

function __recovered_scope_0.var_0_133.launch(arg_107_0, arg_107_1, arg_107_2, arg_107_3, arg_107_4, arg_107_5)
	local var_107_0 = __recovered_scope_0.var_0_133.marker(arg_107_2)

	if not var_107_0 or not arg_107_4 then
		return nil
	end

	local var_107_1 = arg_107_3 / math.max(1, arg_107_2.frameH or 32)
	local var_107_2 = arg_107_2.frameW or 40
	local var_107_3 = (arg_107_1.facing or 1) < 0 and -1 or 1
	local var_107_4 = _G.__slotBattleSpriteAirLift and _G.__slotBattleSpriteAirLift(arg_107_1, arg_107_3) or 0
	local var_107_5 = math.floor((arg_107_1.x or 0) - var_107_2 * var_107_1 * 0.5) + (var_107_3 > 0 and var_107_0.x or var_107_2 - var_107_0.x) * var_107_1
	local var_107_6 = math.floor((arg_107_1.y or 0) - var_107_4 - arg_107_3 * 0.5) + var_107_0.y * var_107_1 - (arg_107_1._jumpYOffset or 0)
	local var_107_7 = arg_107_1.hitShake

	if var_107_7 and var_107_7.t and var_107_7.dur then
		local var_107_8 = math.max(0, math.min(1, var_107_7.t / math.max(0.001, var_107_7.dur)))

		var_107_5 = var_107_5 + math.floor((var_107_7.amp or 2) * (1 - var_107_8) + 0.5) * (math.floor(var_107_7.t * 60) % 2 == 0 and -1 or 1)
	end

	local var_107_9 = arg_107_4.colX and arg_107_4.colW and arg_107_4.colX + arg_107_4.colW * 0.5 or arg_107_4.x or var_107_5 + var_107_3
	local var_107_10 = arg_107_4.colY and arg_107_4.colH and arg_107_4.colY + arg_107_4.colH * 0.5 or arg_107_4.y or var_107_6
	local var_107_11 = var_107_9 - var_107_5
	local var_107_12 = var_107_10 - var_107_6
	local var_107_13 = math.sqrt(var_107_11 * var_107_11 + var_107_12 * var_107_12)

	if var_107_13 < 0.0001 then
		var_107_11, var_107_12, var_107_13 = var_107_3, 0, 1
	end

	local var_107_14, var_107_15 = var_107_11 / var_107_13, var_107_12 / var_107_13
	local var_107_16 = arg_107_0.assets and arg_107_0.assets.projectiles and arg_107_0.assets.projectiles.CombustionBlastProjectile
	local var_107_17 = arg_107_1.primarySkillDef and arg_107_1.primarySkillDef.effects or {}
	local var_107_18 = {
		battleSkillDamage = true,
		state = "flight",
		animFrames = 4,
		animT = 0,
		alive = true,
		combustionBlast = true,
		kind = "projectile",
		holdSpawnPosition = true,
		frame = 1,
		side = "ally",
		life = 2.5,
		asset = "CombustionBlastProjectile",
		owner = arg_107_1,
		awakeningCast = arg_107_1._awakening and arg_107_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_107_1),
		x = var_107_5,
		y = var_107_6,
		startX = var_107_5,
		startY = var_107_6,
		vx = var_107_14 * (var_107_16 and var_107_16.travelSpeed or 220),
		vy = var_107_15 * (var_107_16 and var_107_16.travelSpeed or 220),
		dirX = var_107_14,
		dirY = var_107_15,
		rot = math.atan2(var_107_15, var_107_14),
		scale = var_107_1,
		hitTargets = {},
		baseATK = arg_107_5,
		dmg = arg_107_5 * (arg_107_1.skill.dmgMul or 1),
		maxTargets = arg_107_1.skill.maxTargets or 3,
		splashRadius = arg_107_1.skill.radius or 65,
		explosionMul = var_107_17.explosionMul or 0.8
	}

	arg_107_0.projectiles = arg_107_0.projectiles or {}
	arg_107_0.projectiles[#arg_107_0.projectiles + 1] = var_107_18

	require("src.ui.effects").combustion_blast.launchFlash(arg_107_0, var_107_18)

	return var_107_18
end

function __recovered_scope_0.var_0_133.startAfterglow(arg_108_0)
	if arg_108_0.state == "combustion_afterglow" then
		return
	end

	arg_108_0.state, arg_108_0.visualOnly = "combustion_afterglow", true
	arg_108_0._combustionAfterglow = {
		dur = 0.18,
		t = 0,
		x = arg_108_0.x,
		y = arg_108_0.y,
		alpha = arg_108_0.alpha or 1,
		distance = math.max(12, math.min(22, 10 * (arg_108_0.scale or 1)))
	}
	arg_108_0.vx, arg_108_0.vy = 0, 0
	arg_108_0.life = math.max(arg_108_0.life or 0, 0.23)
end

function __recovered_scope_0.var_0_133.updateAfterglow(arg_109_0, arg_109_1)
	local var_109_0 = arg_109_0._combustionAfterglow

	if not var_109_0 then
		return
	end

	var_109_0.t = math.min(var_109_0.dur, var_109_0.t + math.max(0, arg_109_1))

	local var_109_1 = var_109_0.t / var_109_0.dur
	local var_109_2 = var_109_0.distance * (1 - (1 - var_109_1)^2)

	arg_109_0.x, arg_109_0.y = var_109_0.x + (arg_109_0.dirX or 1) * var_109_2, var_109_0.y + (arg_109_0.dirY or 0) * var_109_2

	local var_109_3 = math.max(0, math.min(1, (var_109_1 - 0.15) / 0.85))

	arg_109_0.alpha = var_109_0.alpha * (1 - var_109_3 * var_109_3 * (3 - 2 * var_109_3))

	if var_109_1 >= 1 then
		arg_109_0.alive = false
	end
end

 __recovered_scope_0.var_0_134 = __recovered_scope_0.var_0_133
 __recovered_scope_0.var_0_135 = nil
 __recovered_scope_0.var_0_136 = {}

function __recovered_scope_0.var_0_136.isOracle(arg_110_0)
	if not arg_110_0 or arg_110_0.sym ~= "M" then
		return false
	end

	for iter_110_0, iter_110_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_110_0 = arg_110_0[iter_110_1]

		if var_110_0 == "예언자" or var_110_0 == "Oracle" or var_110_0 == "예언자 (Oracle)" then
			return true
		end
	end

	if __recovered_scope_0.var_0_136.isLichLord(arg_110_0) then
		return false
	end

	return (arg_110_0.grade == "prism" or arg_110_0.jackpot5th == true) and tonumber(arg_110_0.rank or arg_110_0.star) == 3
end

function __recovered_scope_0.var_0_136.isLichLord(arg_111_0)
	if not arg_111_0 or arg_111_0.sym ~= "M" then
		return false
	end

	for iter_111_0, iter_111_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_111_0 = arg_111_0[iter_111_1]

		if var_111_0 == "리치로드" or var_111_0 == "Lich Lord" or var_111_0 == "리치로드 (Lich Lord)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isLich(arg_112_0)
	if not arg_112_0 or arg_112_0.sym ~= "M" then
		return false
	end

	for iter_112_0, iter_112_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_112_0 = arg_112_0[iter_112_1]

		if var_112_0 == "리치" or var_112_0 == "Lich" or var_112_0 == "리치 (Lich)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isDiviner(arg_113_0)
	if not arg_113_0 or arg_113_0.sym ~= "M" then
		return false
	end

	for iter_113_0, iter_113_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_113_0 = arg_113_0[iter_113_1]

		if var_113_0 == "예지술사" or var_113_0 == "Diviner" or var_113_0 == "예지술사 (Diviner)" then
			return true
		end
	end

	if __recovered_scope_0.var_0_136.isLich(arg_113_0) then
		return false
	end

	return (arg_113_0.grade == "prism" or arg_113_0.jackpot5th == true) and tonumber(arg_113_0.rank or arg_113_0.star) == 2
end

function __recovered_scope_0.var_0_136.isForbiddenMage(arg_114_0)
	if not arg_114_0 or arg_114_0.sym ~= "M" then
		return false
	end

	for iter_114_0, iter_114_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_114_0 = arg_114_0[iter_114_1]

		if var_114_0 == "금단술사" or var_114_0 == "Forbidden Mage" or var_114_0 == "금단술사 (Forbidden Mage)" then
			return true
		end
	end

	return (arg_114_0.grade == "prism" or arg_114_0.jackpot5th == true) and (tonumber(arg_114_0.rank or arg_114_0.star) or 1) <= 1
end

function __recovered_scope_0.var_0_136.isWarlock(arg_115_0)
	if not arg_115_0 or arg_115_0.sym ~= "M" then
		return false
	end

	for iter_115_0, iter_115_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_115_0 = arg_115_0[iter_115_1]

		if var_115_0 == "워록" or var_115_0 == "Warlock" or var_115_0 == "워록 (Warlock)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isArchmage(arg_116_0)
	if not arg_116_0 or arg_116_0.sym ~= "M" then
		return false
	end

	for iter_116_0, iter_116_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_116_0 = arg_116_0[iter_116_1]

		if var_116_0 == "아크메이지" or var_116_0 == "Archmage" or var_116_0 == "아크메이지 (Archmage)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isDarkMage(arg_117_0)
	if not arg_117_0 or arg_117_0.sym ~= "M" then
		return false
	end

	for iter_117_0, iter_117_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_117_0 = arg_117_0[iter_117_1]

		if var_117_0 == "흑마법사" or var_117_0 == "Dark Mage" or var_117_0 == "흑마법사 (Dark Mage)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isAbyssMage(arg_118_0)
	if not arg_118_0 or arg_118_0.sym ~= "M" then
		return false
	end

	for iter_118_0, iter_118_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_118_0 = arg_118_0[iter_118_1]

		if var_118_0 == "심연술사" or var_118_0 == "Abyss Mage" or var_118_0 == "심연술사 (Abyss Mage)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isBoneMage(arg_119_0)
	if not arg_119_0 or arg_119_0.sym ~= "M" then
		return false
	end

	for iter_119_0, iter_119_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_119_0 = arg_119_0[iter_119_1]

		if var_119_0 == "해골술사" or var_119_0 == "Bone Mage" or var_119_0 == "해골술사 (Bone Mage)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isSeraph(arg_120_0)
	if not arg_120_0 or arg_120_0.sym ~= "A" then
		return false
	end

	for iter_120_0, iter_120_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_120_0 = arg_120_0[iter_120_1]

		if var_120_0 == "세라프" or var_120_0 == "Seraph" or var_120_0 == "세라프 (Seraph)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isEclipse(arg_121_0)
	if not arg_121_0 or arg_121_0.sym ~= "A" then
		return false
	end

	for iter_121_0, iter_121_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_121_0 = arg_121_0[iter_121_1]

		if var_121_0 == "이클립스" or var_121_0 == "Eclipse" or var_121_0 == "이클립스 (Eclipse)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isSilverSniper(arg_122_0)
	if not arg_122_0 or arg_122_0.sym ~= "A" then
		return false
	end

	for iter_122_0, iter_122_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_122_0 = arg_122_0[iter_122_1]

		if var_122_0 == "은빛사수" or var_122_0 == "Silver Sniper" or var_122_0 == "은빛사수 (Silver Sniper)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isCupid(arg_123_0)
	if not arg_123_0 or arg_123_0.sym ~= "A" then
		return false
	end

	for iter_123_0, iter_123_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_123_0 = arg_123_0[iter_123_1]

		if var_123_0 == "큐피드" or var_123_0 == "Cupid" or var_123_0 == "큐피드 (Cupid)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isSharpshooter(arg_124_0)
	if not arg_124_0 or arg_124_0.sym ~= "A" then
		return false
	end

	for iter_124_0, iter_124_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_124_0 = arg_124_0[iter_124_1]

		if var_124_0 == "명궁" or var_124_0 == "Sharpshooter" or var_124_0 == "명궁 (Sharpshooter)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isSkeletonArcher(arg_125_0)
	if not arg_125_0 or arg_125_0.sym ~= "A" then
		return false
	end

	for iter_125_0, iter_125_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_125_0 = arg_125_0[iter_125_1]

		if var_125_0 == "해골궁수" or var_125_0 == "Skeleton Archer" or var_125_0 == "해골궁수 (Skeleton Archer)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.usesDarkArcherArrow(arg_126_0)
	if not arg_126_0 or arg_126_0.sym ~= "A" then
		return false
	end

	for iter_126_0, iter_126_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_126_0 = arg_126_0[iter_126_1]

		if var_126_0 == "암흑사수" or var_126_0 == "Dark Archer" or var_126_0 == "암흑사수 (Dark Archer)" then
			return true
		end

		if var_126_0 == "레이븐" or var_126_0 == "Raven" or var_126_0 == "레이븐 (Raven)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isIllusionArcher(arg_127_0)
	if not arg_127_0 or arg_127_0.sym ~= "A" then
		return false
	end

	for iter_127_0, iter_127_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_127_0 = arg_127_0[iter_127_1]

		if var_127_0 == "환영사수" or var_127_0 == "Illusion Archer" or var_127_0 == "환영사수 (Illusion Archer)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isMirage(arg_128_0)
	if not arg_128_0 or arg_128_0.sym ~= "A" then
		return false
	end

	for iter_128_0, iter_128_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_128_0 = arg_128_0[iter_128_1]

		if var_128_0 == "미라지" or var_128_0 == "Mirage" or var_128_0 == "미라지 (Mirage)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.beginArcherBurst(arg_129_0)
	arg_129_0._archerBurstRemaining = (__recovered_scope_0.var_0_136.isSkeletonArcher(arg_129_0) or __recovered_scope_0.var_0_136.usesDarkArcherArrow(arg_129_0)) and 1 or nil
	arg_129_0._archerBurstRewind = nil
	arg_129_0._archerBurstSecond = nil
end

function __recovered_scope_0.var_0_136.prepareArcherBurst(arg_130_0)
	local var_130_0 = arg_130_0._archerBurstRewind

	if not var_130_0 then
		return
	end

	arg_130_0._archerBurstRewind = nil

	if not arg_130_0.shotPending or not arg_130_0.anim or arg_130_0.anim.name ~= "attack" or arg_130_0.dying or arg_130_0.alive == false or (arg_130_0.hp or 1) <= 0 then
		arg_130_0._archerBurstRemaining, arg_130_0._archerBurstSecond = nil

		return
	end

	arg_130_0.anim.frame, arg_130_0.anim.t = var_130_0, 0
	arg_130_0._archerBurstSecond = true
	arg_130_0._archerShotSfxPlayed = nil
end

function __recovered_scope_0.var_0_136.afterArcherRelease(arg_131_0, arg_131_1)
	if arg_131_0._archerBurstRemaining and not arg_131_0._isVolleyShot then
		arg_131_0._archerBurstRemaining = nil
		arg_131_0._archerBurstRewind = math.max(1, arg_131_1 - 2)
	end
end

function __recovered_scope_0.var_0_136.isArcanist(arg_132_0)
	if not arg_132_0 or arg_132_0.sym ~= "M" then
		return false
	end

	for iter_132_0, iter_132_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_132_0 = arg_132_0[iter_132_1]

		if var_132_0 == "비술사" or var_132_0 == "Arcanist" or var_132_0 == "비술사 (Arcanist)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isCrystalMage(arg_133_0)
	if not arg_133_0 or arg_133_0.sym ~= "M" then
		return false
	end

	for iter_133_0, iter_133_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_133_0 = arg_133_0[iter_133_1]

		if var_133_0 == "수정술사" or var_133_0 == "Crystal Mage" or var_133_0 == "수정술사 (Crystal Mage)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isFlamecaller(arg_134_0)
	if not arg_134_0 or arg_134_0.sym ~= "M" then
		return false
	end

	for iter_134_0, iter_134_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_134_0 = arg_134_0[iter_134_1]

		if var_134_0 == "화령술사" or var_134_0 == "Flamecaller" or var_134_0 == "화령술사 (Flamecaller)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isSalamander(arg_135_0)
	if not arg_135_0 or arg_135_0.sym ~= "M" then
		return false
	end

	for iter_135_0, iter_135_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_135_0 = arg_135_0[iter_135_1]

		if var_135_0 == "샐러맨더" or var_135_0 == "Salamander" or var_135_0 == "샐러맨더 (Salamander)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.isUndine(arg_136_0)
	if not arg_136_0 or arg_136_0.sym ~= "M" then
		return false
	end

	for iter_136_0, iter_136_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_136_0 = arg_136_0[iter_136_1]

		if var_136_0 == "운디네" or var_136_0 == "Undine" or var_136_0 == "운디네 (Undine)" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_136.holdReleaseFrame(arg_137_0)
	if (__recovered_scope_0.var_0_136.isEclipse(arg_137_0) or __recovered_scope_0.var_0_136.isSilverSniper(arg_137_0)) and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 3 then
		arg_137_0.anim.frame, arg_137_0.anim.t = 3, 0

		return
	end

	if (__recovered_scope_0.var_0_136.isBoneMage(arg_137_0) or __recovered_scope_0.var_0_136.isAbyssMage(arg_137_0) or __recovered_scope_0.var_0_136.isArchmage(arg_137_0)) and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 4 then
		arg_137_0.anim.frame, arg_137_0.anim.t = 4, 0

		return
	end

	if __recovered_scope_0.var_0_136.usesDarkArcherArrow(arg_137_0) and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 9 then
		arg_137_0.anim.frame, arg_137_0.anim.t = 9, 0

		return
	end

	if (__recovered_scope_0.var_0_136.isSeraph(arg_137_0) or __recovered_scope_0.var_0_136.isCupid(arg_137_0) or __recovered_scope_0.var_0_136.isSharpshooter(arg_137_0) or __recovered_scope_0.var_0_136.isSkeletonArcher(arg_137_0) or __recovered_scope_0.var_0_136.isIllusionArcher(arg_137_0) or __recovered_scope_0.var_0_136.isMirage(arg_137_0)) and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 8 then
		arg_137_0.anim.frame, arg_137_0.anim.t = 8, 0

		return
	end

	if __recovered_scope_0.var_0_136.isSalamander(arg_137_0) and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 7 then
		arg_137_0.anim.frame, arg_137_0.anim.t = 7, 0

		return
	end

	if (__recovered_scope_0.var_0_136.isCrystalMage(arg_137_0) or __recovered_scope_0.var_0_136.isUndine(arg_137_0) or __recovered_scope_0.var_0_136.isDarkMage(arg_137_0) or __recovered_scope_0.var_0_136.isWarlock(arg_137_0) or __recovered_scope_0.var_0_136.isForbiddenMage(arg_137_0) or __recovered_scope_0.var_0_136.isDiviner(arg_137_0) or __recovered_scope_0.var_0_136.isLich(arg_137_0) or __recovered_scope_0.var_0_136.isLichLord(arg_137_0) or __recovered_scope_0.var_0_136.isOracle(arg_137_0)) and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 5 then
		arg_137_0.anim.frame, arg_137_0.anim.t = 5, 0

		return
	end

	if (__recovered_scope_0.var_0_136.isArcanist(arg_137_0) or __recovered_scope_0.var_0_136.isFlamecaller(arg_137_0)) and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 6 then
		arg_137_0.anim.frame, arg_137_0.anim.t = 6, 0

		return
	end

	if arg_137_0 and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 3 and (arg_137_0.subclass == "척탄병" or arg_137_0.subclassName == "척탄병" or arg_137_0.subclassKey == "척탄병" or arg_137_0.subclass == "폭파대장" or arg_137_0.subclassName == "폭파대장" or arg_137_0.subclassKey == "폭파대장") then
		arg_137_0.anim.frame, arg_137_0.anim.t = 3, 0

		return
	end

	if arg_137_0 and arg_137_0.sym == "A" and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.subclass == "화포수" or arg_137_0.subclassName == "화포수" or arg_137_0.subclassKey == "화포수") then
		arg_137_0.anim.frame, arg_137_0.anim.t = 1, 0

		return
	end

	if arg_137_0 and arg_137_0.sym == "A" and arg_137_0.shotPending and arg_137_0.anim and arg_137_0.anim.name == "attack" and (arg_137_0.anim.frame or 1) >= 3 and (arg_137_0.subclass == "총포수" or arg_137_0.subclassName == "총포수" or arg_137_0.subclassKey == "총포수" or arg_137_0.subclass == "캐노니어" or arg_137_0.subclassName == "캐노니어" or arg_137_0.subclassKey == "캐노니어") then
		arg_137_0.anim.frame, arg_137_0.anim.t = 3, 0
	end
end

function __recovered_scope_0.var_0_136.anchor(arg_138_0, arg_138_1, arg_138_2, arg_138_3, arg_138_4, arg_138_5, arg_138_6, arg_138_7)
	local var_138_0, var_138_1, var_138_2, var_138_3, var_138_4 = __slotGetJesterCardAnchor(arg_138_0, arg_138_1, arg_138_2, arg_138_7 or "attack", arg_138_3 or 3, arg_138_4 or 235, arg_138_5 or 209, arg_138_6 or 9)
	local var_138_5 = (arg_138_0.x or 0) - arg_138_2 * 0.5
	local var_138_6 = _G.__slotBattleSpriteAirLift and _G.__slotBattleSpriteAirLift(arg_138_0, arg_138_2) or 0
	local var_138_7 = (arg_138_0.y or 0) - arg_138_2 * 0.5

	if arg_138_1 and arg_138_1.pixelScaleBase then
		local var_138_8
		local var_138_9

		var_138_5, var_138_7, var_138_9 = require("src.ui.widgets").sprite_anchor.allyTransform(arg_138_0, arg_138_1, arg_138_2)
		var_138_0, var_138_1 = var_138_5 + var_138_3 * var_138_9, var_138_7 + var_138_4 * var_138_9
	end

	local var_138_10 = var_138_0 + math.floor(var_138_5) - var_138_5
	local var_138_11 = var_138_1 + math.floor(var_138_7 - var_138_6) - var_138_7 - (arg_138_0._jumpYOffset or 0)
	local var_138_12 = arg_138_0.hitShake

	if var_138_12 and var_138_12.t and var_138_12.dur then
		local var_138_13 = math.max(0, math.min(1, var_138_12.t / math.max(0.001, var_138_12.dur)))

		var_138_10 = var_138_10 + math.floor((var_138_12.amp or 2) * (1 - var_138_13) + 0.5) * (math.floor(var_138_12.t * 60) % 2 == 0 and -1 or 1)
	end

	if arg_138_0.skill and arg_138_0.skill.kind == "ShatterCannon" then
		var_138_10 = var_138_10 + require("src.ui.effects").shatter_cannon.offset(arg_138_0, arg_138_2 / (arg_138_1.frameH or 32))
	end

	return var_138_10, var_138_11
end

function __recovered_scope_0.var_0_136.launchSuppressive(arg_139_0, arg_139_1, arg_139_2, arg_139_3, arg_139_4, arg_139_5)
	local var_139_0 = arg_139_1.skill.kind == "ShatterCannon"
	local var_139_1
	local var_139_2

	if var_139_0 then
		var_139_1, var_139_2 = __recovered_scope_0.var_0_136.anchor(arg_139_1, arg_139_2, arg_139_3, 4, 232, 206, 8, "attack2")
	else
		var_139_1, var_139_2 = __recovered_scope_0.var_0_136.anchor(arg_139_1, arg_139_2, arg_139_3, 1, 111, 109, 107)
	end

	local var_139_3 = arg_139_4.colX and arg_139_4.colW and arg_139_4.colX + arg_139_4.colW * 0.5 or arg_139_4.x
	local var_139_4 = arg_139_4.colY and arg_139_4.colH and arg_139_4.colY + arg_139_4.colH * 0.5 or arg_139_4.y
	local var_139_5 = var_139_3 - var_139_1
	local var_139_6 = var_139_4 - var_139_2
	local var_139_7 = math.sqrt(var_139_5 * var_139_5 + var_139_6 * var_139_6)

	if var_139_7 < 0.0001 then
		var_139_5, var_139_6, var_139_7 = arg_139_1.facing or 1, 0, 1
	end

	local var_139_8, var_139_9 = var_139_5 / var_139_7, var_139_6 / var_139_7
	local var_139_10 = var_139_0 and "CannoneerProjectile" or "SuppressiveRoundProjectile"
	local var_139_11 = arg_139_0.assets and arg_139_0.assets.projectiles and arg_139_0.assets.projectiles[var_139_10]
	local var_139_12 = var_139_11 and var_139_11.travelSpeed or 250
	local var_139_13 = {
		battleSkillDamage = true,
		state = "flight",
		animT = 0,
		alive = true,
		holdSpawnPosition = true,
		frame = 1,
		side = "ally",
		kind = "projectile",
		asset = var_139_10,
		owner = arg_139_1,
		awakeningCast = arg_139_1._awakening and arg_139_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_139_1),
		x = var_139_1,
		y = var_139_2,
		startX = var_139_1,
		startY = var_139_2,
		vx = var_139_8 * var_139_12,
		vy = var_139_9 * var_139_12,
		dirX = var_139_8,
		dirY = var_139_9,
		rot = math.atan2(var_139_9, var_139_8),
		scale = arg_139_3 / (arg_139_2.frameH or 32),
		life = math.max(2.5, var_139_7 / var_139_12 + 1),
		animFrames = var_139_0 and 4 or 1,
		hitTargets = {},
		targetOnly = arg_139_4,
		suppressiveRound = not var_139_0,
		shatterCannon = var_139_0,
		dmg = arg_139_5 * (arg_139_1.skill.dmgMul or var_139_0 and 2 or 1.5),
		debuffDuration = arg_139_1.skill.dur or var_139_0 and 4 or 3
	}

	arg_139_0.projectiles = arg_139_0.projectiles or {}
	arg_139_0.projectiles[#arg_139_0.projectiles + 1] = var_139_13

	if not var_139_0 then
		require("src.ui.effects").suppressive_round.launch(arg_139_0, var_139_13)
	end

	return var_139_13
end

 __recovered_scope_0.var_0_137 = __recovered_scope_0.var_0_136
 __recovered_scope_0.var_0_138 = nil
 __recovered_scope_0.var_0_139 = {}

 function __recovered_scope_0.var_0_140(arg_140_0, arg_140_1, arg_140_2)
	return math.max(arg_140_1, math.min(arg_140_2, arg_140_0))
end

 function __recovered_scope_0.var_0_141(arg_141_0, arg_141_1)
	local var_141_0 = arg_141_1 and arg_141_1.bounds and arg_141_1.bounds[arg_141_0.frame]
	local var_141_1 = (var_141_0 and var_141_0.w or 16) * arg_141_0.scale
	local var_141_2 = (var_141_0 and var_141_0.h or 16) * arg_141_0.scale

	if arg_141_0.state == "explode" and arg_141_0.groundY then
		arg_141_0.y = math.floor(arg_141_0.groundY - var_141_2 * 0.5 + 0.5)
	end

	arg_141_0.colX, arg_141_0.colY, arg_141_0.colW, arg_141_0.colH = arg_141_0.x - var_141_1 * 0.5, arg_141_0.y - var_141_2 * 0.5, var_141_1, var_141_2
end

 function __recovered_scope_0.var_0_142(arg_142_0, arg_142_1, arg_142_2, arg_142_3)
	if not arg_142_2.colX or not arg_142_2.colY or not arg_142_2.colW or not arg_142_2.colH then
		return false
	end

	if arg_142_0.colX >= arg_142_2.colX + arg_142_2.colW or arg_142_0.colX + arg_142_0.colW <= arg_142_2.colX or arg_142_0.colY >= arg_142_2.colY + arg_142_2.colH or arg_142_0.colY + arg_142_0.colH <= arg_142_2.colY then
		return false
	end

	return arg_142_3(arg_142_0, arg_142_1, arg_142_2)
end

function __recovered_scope_0.var_0_139.launch(arg_143_0, arg_143_1, arg_143_2, arg_143_3, arg_143_4, arg_143_5, arg_143_6, arg_143_7)
	arg_143_7 = arg_143_7 or {}

	local var_143_0 = arg_143_7.grenadierTarget

	if var_143_0 then
		if arg_143_0.entityGroundPoint then
			arg_143_3, arg_143_4 = arg_143_0:entityGroundPoint(var_143_0, (arg_143_6 or 1) * 32)
		elseif var_143_0.colY and var_143_0.colH then
			arg_143_4 = var_143_0.colY + var_143_0.colH
		end
	end

	local var_143_1 = math.sqrt((arg_143_3 - arg_143_1)^2 + (arg_143_4 - arg_143_2)^2)
	local var_143_2 = {
		frame = 1,
		battleSkillDamage = false,
		state = "flight",
		animFrames = 4,
		animT = 0,
		side = "ally",
		holdSpawnPosition = true,
		rot = 0,
		asset = "GrenadierBomb",
		alive = true,
		hitCount = 0,
		flightT = 0,
		grenadierBomb = true,
		kind = "projectile",
		x = arg_143_1,
		y = arg_143_2,
		startX = arg_143_1,
		startY = arg_143_2,
		endX = arg_143_3,
		endY = arg_143_4,
		groundY = arg_143_4,
		flightDur = __recovered_scope_0.var_0_140(var_143_1 / 200, 0.35, 0.85),
		arcHeight = __recovered_scope_0.var_0_140(var_143_1 * 0.35, 24, 65),
		owner = arg_143_7.owner,
		chainCast = arg_143_7.chainCast or require("src.game.combat").chain_casting.capture(arg_143_7.owner),
		target = arg_143_7.grenadierTarget,
		dmg = arg_143_5,
		scale = arg_143_6 or 1,
		hitTargets = {},
		basicAttack = arg_143_7.basicAttack,
		basicAttackAtkMul = arg_143_7.basicAttackAtkMul,
		knockback = arg_143_7.knockback,
		crossfireAttack = arg_143_7.crossfireAttack
	}

	arg_143_0.projectiles = arg_143_0.projectiles or {}
	arg_143_0.projectiles[#arg_143_0.projectiles + 1] = var_143_2

	require("src.game.awakening").projectile(arg_143_0, var_143_2, var_143_0)

	return var_143_2
end

function __recovered_scope_0.var_0_139.launchConcussion(arg_144_0, arg_144_1, arg_144_2, arg_144_3, arg_144_4, arg_144_5)
	local var_144_0, var_144_1 = __recovered_scope_0.var_0_137.anchor(arg_144_1, arg_144_2, arg_144_3, 4, 40, 38, 37, "attack2")
	local var_144_2 = __recovered_scope_0.var_0_139.launch(arg_144_0, var_144_0, var_144_1, arg_144_4.x, arg_144_4.y, arg_144_5 * (arg_144_1.skill.dmgMul or 1.4), arg_144_3 / (arg_144_2 and arg_144_2.frameH or 32), {
		owner = arg_144_1,
		awakeningCast = arg_144_1._awakening and arg_144_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_144_1),
		grenadierTarget = arg_144_4
	})

	var_144_2.asset, var_144_2.flightAsset, var_144_2.explosionAsset = "ConcussionBomb", "ConcussionBomb", "ConcussionBombExplosion"
	var_144_2.concussionBomb, var_144_2.battleSkillDamage = true, true
	var_144_2.maxTargets, var_144_2.stunDur = 3, arg_144_1.skill.stunDur or 0.5

	return var_144_2
end

 function __recovered_scope_0.var_0_143(arg_145_0, arg_145_1)
	arg_145_0.state, arg_145_0.asset, arg_145_0.frame, arg_145_0.animFrames, arg_145_0.animT = "explode", arg_145_0.explosionAsset or "GrenadierExplosion", 1, 6, 0
	arg_145_0.primary = arg_145_0.target

	__recovered_scope_0.var_0_141(arg_145_0, arg_145_1)
end

 function __recovered_scope_0.var_0_144(arg_146_0, arg_146_1, arg_146_2, arg_146_3, arg_146_4, arg_146_5)
	__recovered_scope_0.var_0_141(arg_146_1, arg_146_2)

	local var_146_0 = {}

	for iter_146_0, iter_146_1 in ipairs(arg_146_0.enemies or {}) do
		if not arg_146_1.hitTargets[iter_146_1] and arg_146_3(iter_146_1, arg_146_1.owner, arg_146_0) and __recovered_scope_0.var_0_142(arg_146_1, arg_146_2, iter_146_1, arg_146_4) then
			var_146_0[#var_146_0 + 1] = {
				unit = iter_146_1,
				index = iter_146_0,
				distance = ((iter_146_1.x or 0) - arg_146_1.x)^2 + ((iter_146_1.y or 0) - arg_146_1.y)^2
			}
		end
	end

	table.sort(var_146_0, function(arg_147_0, arg_147_1)
		if arg_147_0.unit == arg_147_1.unit then
			return false
		end

		if arg_147_0.unit == arg_146_1.primary then
			return true
		end

		if arg_147_1.unit == arg_146_1.primary then
			return false
		end

		if arg_147_0.distance == arg_147_1.distance then
			return arg_147_0.index < arg_147_1.index
		end

		return arg_147_0.distance < arg_147_1.distance
	end)

	for iter_146_2, iter_146_3 in ipairs(var_146_0) do
		if arg_146_1.hitCount >= (arg_146_1.battleSkillDamage and require("src.game.combat").branching_bloom.limit(arg_146_0, arg_146_1.owner, arg_146_1.maxTargets or 4) or arg_146_1.maxTargets or 4) then
			break
		end

		local var_146_1 = iter_146_3.unit

		if arg_146_1.basicAttack and not arg_146_1.basicAttackCounted then
			arg_146_1.dmg = __slotPrepareClassTrainingBasicAttack(arg_146_1.owner, var_146_1, arg_146_1.dmg, arg_146_1.basicAttackAtkMul or 1, arg_146_0)
			arg_146_1.basicAttackCounted = true
		end

		arg_146_1.hitTargets[var_146_1], arg_146_1.hitCount = true, arg_146_1.hitCount + 1

		local var_146_2 = arg_146_1.concussionBomb and require("src.game.unit_abilities").timed_keg.hasDebuff(var_146_1)

		if not arg_146_1.battleSkillDamage or not require("src.game.combat").branching_bloom.extra(arg_146_0, arg_146_1.owner, arg_146_1.hitCount, arg_146_1.maxTargets or 4, var_146_1, arg_146_1.dmg, arg_146_5) then
			arg_146_5(var_146_1, arg_146_1.dmg, arg_146_1.owner, arg_146_1.knockback, {
				explosion = true,
				basicAttack = arg_146_1.basicAttack == true,
				projectile = arg_146_1,
				awakeningAction = arg_146_1.awakeningAction,
				awakeningCast = arg_146_1.awakeningCast,
				impactX = arg_146_1.x,
				impactY = arg_146_1.y,
				explosionRadius = math.min(30, (arg_146_1.colW or 60) * 0.5, (arg_146_1.colH or 60) * 0.5),
				chainCast = arg_146_1.chainCast or false,
				battleSkillDamage = arg_146_1.battleSkillDamage == true,
				crossfireAttack = arg_146_1.crossfireAttack
			})

			if var_146_2 and var_146_1.alive and not var_146_1.dying then
				var_146_1.stunT = math.max(var_146_1.stunT or 0, arg_146_1.stunDur or 0.5)
			end
		end
	end
end

function __recovered_scope_0.var_0_139.update(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4, arg_148_5)
	if arg_148_1.timedKeg then
		return require("src.game.projectiles").timed_keg.update(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4, arg_148_5)
	end

	if not arg_148_1.alive or arg_148_2 <= 0 then
		return
	end

	if arg_148_1.holdSpawnPosition then
		arg_148_1.holdSpawnPosition = nil

		return
	end

	local var_148_0 = arg_148_0.assets and arg_148_0.assets.projectiles or {}
	local var_148_1 = var_148_0[arg_148_1.flightAsset or "GrenadierBomb"]
	local var_148_2 = var_148_0[arg_148_1.explosionAsset or "GrenadierExplosion"]

	if arg_148_1.state == "flight" then
		arg_148_1.flightT = math.min(arg_148_1.flightDur, arg_148_1.flightT + arg_148_2)

		local var_148_3 = arg_148_1.flightT / arg_148_1.flightDur

		arg_148_1.x = math.floor(arg_148_1.startX + (arg_148_1.endX - arg_148_1.startX) * var_148_3 + 0.5)
		arg_148_1.frame = math.floor(arg_148_1.flightT / (var_148_1 and var_148_1.speed or 0.1)) % 4 + 1

		local var_148_4 = var_148_1 and var_148_1.bounds[arg_148_1.frame]
		local var_148_5 = (var_148_4 and var_148_4.h or 16) * arg_148_1.scale * 0.5

		arg_148_1.y = math.floor(arg_148_1.startY + (arg_148_1.endY - var_148_5 - arg_148_1.startY) * var_148_3 - 4 * arg_148_1.arcHeight * var_148_3 * (1 - var_148_3) + 0.5)

		__recovered_scope_0.var_0_141(arg_148_1, var_148_1)

		if arg_148_1.flightT >= arg_148_1.flightDur then
			__recovered_scope_0.var_0_143(arg_148_1, var_148_2)
			require("src.game.awakening").explosionStarted(arg_148_0, arg_148_1, var_148_2)

			if arg_148_1.concussionBomb then
				require("src.audio.procedural_audio").playBigGrenadeExplosion(arg_148_0.assets, arg_148_0.ui)
			else
				require("src.audio.procedural_audio").playGrenadeExplosion(arg_148_0.assets, arg_148_0.ui)
			end
		end

		return
	end

	local var_148_6 = var_148_2
	local var_148_7 = var_148_6 and var_148_6.speed or 0.1
	local var_148_8 = arg_148_1.animT + arg_148_2

	if arg_148_1.frame < 2 and var_148_7 <= var_148_8 then
		var_148_8 = var_148_7
	end

	arg_148_1.animT = var_148_8
	arg_148_1.frame = math.floor(var_148_8 / var_148_7) + 1

	if arg_148_1.frame > 6 then
		arg_148_1.alive = false

		return
	end

	__recovered_scope_0.var_0_141(arg_148_1, var_148_6)

	if arg_148_1.frame == 2 then
		__recovered_scope_0.var_0_144(arg_148_0, arg_148_1, var_148_6, arg_148_3, arg_148_4, arg_148_5)
	end
end

__recovered_scope_0.var_0_139.explosionDamage = __recovered_scope_0.var_0_144
__recovered_scope_0.var_0_139.geometry = __recovered_scope_0.var_0_141

 __recovered_scope_0.var_0_145 = __recovered_scope_0.var_0_139
 __recovered_scope_0.var_0_146 = nil
 __recovered_scope_0.var_0_147 = {
	anchor = function(arg_149_0, arg_149_1, arg_149_2)
		local var_149_0 = arg_149_0.getUnitAssetForEnemy and arg_149_0:getUnitAssetForEnemy(arg_149_1)
		local var_149_1 = arg_149_1.anim and arg_149_1.anim.name or "idle"

		if var_149_0 and var_149_0.animations and not var_149_0.animations[var_149_1] then
			var_149_1 = "idle"
		end

		local var_149_2 = math.max(1, math.min(arg_149_1.anim and arg_149_1.anim.frame or 1, var_149_0 and var_149_0.animations and var_149_0.animations[var_149_1] and var_149_0.animations[var_149_1].frames or 1))
		local var_149_3 = var_149_0 and var_149_0.quads and var_149_0.quads[var_149_1] and var_149_0.quads[var_149_1][var_149_2]
		local var_149_4 = var_149_0 and var_149_0.bounds and var_149_0.bounds[var_149_1] and var_149_0.bounds[var_149_1][var_149_2]

		if var_149_3 and var_149_4 and var_149_0.imageData and arg_149_1.colX and arg_149_1.colY and arg_149_1.colW and arg_149_1.colH then
			var_149_0._kegAnchors = var_149_0._kegAnchors or {}

			local var_149_5 = var_149_1 .. ":" .. var_149_2
			local var_149_6 = var_149_0._kegAnchors[var_149_5]

			if not var_149_6 then
				local var_149_7, var_149_8, var_149_9, var_149_10 = var_149_3:getViewport()
				local var_149_11 = var_149_10
				local var_149_12 = -1
				local var_149_13 = var_149_9
				local var_149_14 = -1

				for iter_149_0 = 0, var_149_10 - 1 do
					local var_149_15 = var_149_9
					local var_149_16 = -1

					for iter_149_1 = 0, var_149_9 - 1 do
						local var_149_17, var_149_18, var_149_19, var_149_20 = var_149_0.imageData:getPixel(var_149_7 + iter_149_1, var_149_8 + iter_149_0)

						if var_149_20 > 0 then
							var_149_15 = math.min(var_149_15, iter_149_1)
							var_149_16 = math.max(var_149_16, iter_149_1)
						end
					end

					if var_149_16 >= 0 then
						var_149_11 = math.min(var_149_11, iter_149_0)
						var_149_12 = iter_149_0
						var_149_13, var_149_14 = var_149_15, var_149_16
					end
				end

				var_149_6 = var_149_12 >= 0 and {
					x = (var_149_13 + var_149_14 + 1) * 0.5,
					y = (var_149_11 + var_149_12 + 1) * 0.5
				} or false
				var_149_0._kegAnchors[var_149_5] = var_149_6
			end

			if var_149_6 then
				local var_149_21 = arg_149_1.colW / math.max(1, var_149_4.w)
				local var_149_22 = arg_149_1.colH / math.max(1, var_149_4.h)
				local var_149_23 = var_149_6.x - var_149_4.x

				if (arg_149_1.facing or -1) < 0 then
					var_149_23 = var_149_4.w - var_149_23
				end

				return arg_149_1.colX + var_149_23 * var_149_21, arg_149_1.colY + (var_149_6.y - var_149_4.y) * var_149_22
			end
		end

		return arg_149_1.colX and arg_149_1.colX + (arg_149_1.colW or 0) * 0.5 or arg_149_1.x or 0, arg_149_1.colY and arg_149_1.colY + (arg_149_1.colH or 0) * 0.5 or arg_149_1.y or 0
	end
}

function __recovered_scope_0.var_0_147.launch(arg_150_0, arg_150_1, arg_150_2, arg_150_3, arg_150_4, arg_150_5)
	local var_150_0, var_150_1 = __recovered_scope_0.var_0_137.anchor(arg_150_1, arg_150_2, arg_150_3, 6, 177, 210, 218, "attack2")
	local var_150_2, var_150_3 = __recovered_scope_0.var_0_147.anchor(arg_150_0, arg_150_4, arg_150_3)
	local var_150_4 = math.sqrt((var_150_2 - var_150_0)^2 + (var_150_3 - var_150_1)^2)
	local var_150_5 = {
		battleSkillDamage = true,
		flightT = 0,
		state = "flight",
		animFrames = 8,
		animT = 0,
		timedKeg = true,
		maxTargets = 3,
		side = "ally",
		holdSpawnPosition = true,
		rot = 0,
		asset = "TimedKeg",
		alive = true,
		basicAttack = false,
		hitCount = 0,
		frame = 1,
		grenadierBomb = true,
		kind = "projectile",
		fuse = 1.5,
		attachedT = 0,
		owner = arg_150_1,
		awakeningCast = arg_150_1._awakening and arg_150_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_150_1),
		target = arg_150_4,
		primary = arg_150_4,
		x = var_150_0,
		y = var_150_1,
		startX = var_150_0,
		startY = var_150_1,
		endX = var_150_2,
		endY = var_150_3,
		scale = arg_150_3 / (arg_150_2.frameH or 32),
		flightDur = math.max(0.35, math.min(0.85, var_150_4 / 240)),
		arcHeight = math.max(20, math.min(55, var_150_4 * 0.25)),
		dmg = arg_150_5 * (arg_150_1.skill.dmgMul or 1.1),
		knockback = {
			dist = 12
		},
		hitTargets = {}
	}

	arg_150_0.projectiles = arg_150_0.projectiles or {}
	arg_150_0.projectiles[#arg_150_0.projectiles + 1] = var_150_5

	return var_150_5
end

 function __recovered_scope_0.var_0_148(arg_151_0, arg_151_1)
	arg_151_1.state, arg_151_1.asset, arg_151_1.frame, arg_151_1.animFrames, arg_151_1.animT = "explode", "TimedKegExplosion", 1, 6, 0

	require("src.audio.procedural_audio").playBigGrenadeExplosion(arg_151_0.assets, arg_151_0.ui)
end

function __recovered_scope_0.var_0_147.blink(arg_152_0)
	if arg_152_0.state ~= "attached" then
		return 0
	end

	local var_152_0 = math.max(0, math.min(arg_152_0.fuse, arg_152_0.attachedT or 0))
	local var_152_1 = 1.5 * var_152_0 + 8.5 * var_152_0 * var_152_0 / (2 * arg_152_0.fuse)

	return (0.5 - 0.5 * math.cos(var_152_1 * math.pi * 2))^3
end

function __recovered_scope_0.var_0_147.update(arg_153_0, arg_153_1, arg_153_2, arg_153_3, arg_153_4, arg_153_5)
	if not arg_153_1.alive or arg_153_2 <= 0 then
		return
	end

	local var_153_0 = arg_153_0.assets and arg_153_0.assets.projectiles or {}

	if arg_153_1.state ~= "explode" and (not arg_153_1.target or not arg_153_1.target.alive or arg_153_1.target.dying or not ((arg_153_1.target.hp or 1) > 0)) then
		__recovered_scope_0.var_0_148(arg_153_0, arg_153_1)

		return
	end

	if arg_153_1.holdSpawnPosition then
		arg_153_1.holdSpawnPosition = nil

		return
	end

	if arg_153_1.state == "flight" then
		arg_153_1.flightT = math.min(arg_153_1.flightDur, arg_153_1.flightT + arg_153_2)

		local var_153_1 = arg_153_1.flightT / arg_153_1.flightDur
		local var_153_2, var_153_3 = __recovered_scope_0.var_0_147.anchor(arg_153_0, arg_153_1.target, arg_153_1.scale * 32)

		arg_153_1.x = math.floor(arg_153_1.startX + (var_153_2 - arg_153_1.startX) * var_153_1 + 0.5)
		arg_153_1.y = math.floor(arg_153_1.startY + (var_153_3 - arg_153_1.startY) * var_153_1 - 4 * arg_153_1.arcHeight * var_153_1 * (1 - var_153_1) + 0.5)
		arg_153_1.frame = math.floor(arg_153_1.flightT / 0.1) % 8 + 1

		if var_153_1 >= 1 then
			arg_153_1.state, arg_153_1.frame, arg_153_1.animFrames, arg_153_1.attachedT = "attached", 1, 8, 0
			arg_153_1.x, arg_153_1.y = math.floor(var_153_2 + 0.5), math.floor(var_153_3 + 0.5)
		end

		return
	end

	if arg_153_1.state == "attached" then
		local var_153_4, var_153_5 = __recovered_scope_0.var_0_147.anchor(arg_153_0, arg_153_1.target, arg_153_1.scale * 32)

		arg_153_1.x, arg_153_1.y = math.floor(var_153_4 + 0.5), math.floor(var_153_5 + 0.5)
		arg_153_1.attachedT = math.min(arg_153_1.fuse, arg_153_1.attachedT + arg_153_2)

		if arg_153_1.attachedT >= arg_153_1.fuse then
			__recovered_scope_0.var_0_148(arg_153_0, arg_153_1)
		end

		return
	end

	local var_153_6 = var_153_0.TimedKegExplosion
	local var_153_7 = var_153_6 and var_153_6.speed or 0.1
	local var_153_8 = arg_153_1.animT + arg_153_2

	if arg_153_1.frame < 2 and var_153_7 <= var_153_8 then
		var_153_8 = var_153_7
	end

	arg_153_1.animT, arg_153_1.frame = var_153_8, math.floor(var_153_8 / var_153_7) + 1

	if arg_153_1.frame > 6 then
		arg_153_1.alive = false

		return
	end

	__recovered_scope_0.var_0_145.geometry(arg_153_1, var_153_6)

	if arg_153_1.frame == 2 then
		__recovered_scope_0.var_0_145.explosionDamage(arg_153_0, arg_153_1, var_153_6, arg_153_3, arg_153_4, arg_153_5)
	end
end

 __recovered_scope_0.var_0_149 = __recovered_scope_0.var_0_147
 __recovered_scope_0.var_0_150 = nil
 __recovered_scope_0.var_0_151 = {
	geometry = function(arg_154_0, arg_154_1)
		local var_154_0 = arg_154_1 and arg_154_1.bounds and arg_154_1.bounds[arg_154_0.frame or 1]

		if not var_154_0 then
			return false
		end

		local var_154_1 = arg_154_0.scale or 1
		local var_154_2 = math.abs(math.cos(arg_154_0.rot or 0))
		local var_154_3 = math.abs(math.sin(arg_154_0.rot or 0))
		local var_154_4 = (var_154_2 * var_154_0.w + var_154_3 * var_154_0.h) * var_154_1
		local var_154_5 = (var_154_3 * var_154_0.w + var_154_2 * var_154_0.h) * var_154_1
		local var_154_6 = arg_154_0.x
		local var_154_7 = arg_154_0.y

		arg_154_0.colX, arg_154_0.colY, arg_154_0.colW, arg_154_0.colH = var_154_6 - var_154_4 / 2, var_154_7 - var_154_5 / 2, var_154_4, var_154_5

		return true
	end
}

function __recovered_scope_0.var_0_151.hitsOpaque(arg_155_0, arg_155_1, arg_155_2, arg_155_3)
	if not arg_155_1 or not arg_155_1.imageData or not arg_155_2 or not arg_155_2.colX or not arg_155_2.colY or not arg_155_2.colW or not (arg_155_2.colW > 0) or not arg_155_2.colH or not (arg_155_2.colH > 0) or not arg_155_3 or not arg_155_3.imageData or not arg_155_3.quads or not arg_155_3.bounds then
		return false
	end

	local var_155_0 = arg_155_2.anim and arg_155_2.anim.name or "idle"

	if not arg_155_3.quads[var_155_0] or not arg_155_3.bounds[var_155_0] then
		var_155_0 = "idle"
	end

	local var_155_1 = arg_155_3.quads[var_155_0]
	local var_155_2 = arg_155_3.bounds[var_155_0]
	local var_155_3 = math.max(1, math.min(arg_155_2.anim and arg_155_2.anim.frame or 1, var_155_1 and #var_155_1 or 1))
	local var_155_4 = var_155_1 and var_155_1[var_155_3]
	local var_155_5 = var_155_2 and var_155_2[var_155_3]
	local var_155_6 = arg_155_1.quads and arg_155_1.quads[arg_155_0.frame or 1]
	local var_155_7 = arg_155_1.bounds and arg_155_1.bounds[arg_155_0.frame or 1]

	if not var_155_4 or not var_155_5 or not (var_155_5.w > 0) or not (var_155_5.h > 0) or not var_155_6 or not var_155_7 or not __recovered_scope_0.var_0_151.geometry(arg_155_0, arg_155_1) then
		return false
	end

	local var_155_8, var_155_9 = var_155_6:getViewport()
	local var_155_10, var_155_11 = var_155_4:getViewport()
	local var_155_12 = var_155_7.x + var_155_7.w / 2
	local var_155_13 = var_155_7.y + var_155_7.h / 2
	local var_155_14 = arg_155_2.colW / var_155_5.w
	local var_155_15 = arg_155_2.colH / var_155_5.h
	local var_155_16 = math.max(0.0001, arg_155_0.scale or 1)
	local var_155_17 = math.cos(arg_155_0.rot or 0)
	local var_155_18 = math.sin(arg_155_0.rot or 0)
	local var_155_19 = arg_155_0.x
	local var_155_20 = arg_155_0.y

	for iter_155_0 = math.floor(math.max(arg_155_0.colY, arg_155_2.colY)), math.ceil(math.min(arg_155_0.colY + arg_155_0.colH, arg_155_2.colY + arg_155_2.colH)) - 1 do
		for iter_155_1 = math.floor(math.max(arg_155_0.colX, arg_155_2.colX)), math.ceil(math.min(arg_155_0.colX + arg_155_0.colW, arg_155_2.colX + arg_155_2.colW)) - 1 do
			local var_155_21 = iter_155_1 + 0.5 - var_155_19
			local var_155_22 = iter_155_0 + 0.5 - var_155_20
			local var_155_23 = (var_155_17 * var_155_21 + var_155_18 * var_155_22) / var_155_16
			local var_155_24 = (-var_155_18 * var_155_21 + var_155_17 * var_155_22) / var_155_16

			if arg_155_0.flipX then
				var_155_23 = -var_155_23
			end

			if arg_155_0.flipY then
				var_155_24 = -var_155_24
			end

			local var_155_25, var_155_26 = math.floor(var_155_12 + var_155_23), math.floor(var_155_13 + var_155_24)
			local var_155_27 = math.floor((iter_155_1 + 0.5 - arg_155_2.colX) / var_155_14)
			local var_155_28 = math.floor((iter_155_0 + 0.5 - arg_155_2.colY) / var_155_15)

			if var_155_25 >= var_155_7.x and var_155_25 < var_155_7.x + var_155_7.w and var_155_26 >= var_155_7.y and var_155_26 < var_155_7.y + var_155_7.h and var_155_27 >= 0 and var_155_27 < var_155_5.w and var_155_28 >= 0 and var_155_28 < var_155_5.h then
				if (arg_155_2.facing or 1) < 0 then
					var_155_27 = var_155_5.w - 1 - var_155_27
				end

				local var_155_29, var_155_30, var_155_31, var_155_32 = arg_155_1.imageData:getPixel(var_155_8 + var_155_25, var_155_9 + var_155_26)
				local var_155_33, var_155_34, var_155_35, var_155_36 = arg_155_3.imageData:getPixel(var_155_10 + var_155_5.x + var_155_27, var_155_11 + var_155_5.y + var_155_28)

				if var_155_32 > 0 and var_155_36 > 0 then
					return true, iter_155_1 + 0.5, iter_155_0 + 0.5
				end
			end
		end
	end

	return false
end

function __recovered_scope_0.var_0_151.move(arg_156_0, arg_156_1)
	arg_156_0._cannoneerPrevX, arg_156_0._cannoneerPrevY = arg_156_0.x, arg_156_0.y

	if arg_156_0.state == "dying" then
		return
	end

	local var_156_0 = (arg_156_0.vx or 0) * arg_156_1
	local var_156_1 = (arg_156_0.vy or 0) * arg_156_1

	if arg_156_0.state == "post_hit_travel" then
		local var_156_2 = math.sqrt(var_156_0 * var_156_0 + var_156_1 * var_156_1)
		local var_156_3 = arg_156_0._cannoneerRemaining or 0

		if var_156_3 <= var_156_2 and var_156_2 > 0 then
			var_156_0, var_156_1 = var_156_0 * var_156_3 / var_156_2, var_156_1 * var_156_3 / var_156_2
			arg_156_0.x, arg_156_0.y = arg_156_0.x + var_156_0, arg_156_0.y + var_156_1

			local var_156_4 = arg_156_0.asset == "ArcanistProjectile"
			local var_156_5 = arg_156_0.asset == "FlamecallerProjectile"
			local var_156_6 = arg_156_0.asset == "BoneMageProjectile"
			local var_156_7 = arg_156_0.asset == "AbyssMageProjectile"
			local var_156_8 = arg_156_0.asset == "ArchmageProjectile"
			local var_156_9 = arg_156_0.asset == "WarlockProjectile"
			local var_156_10 = arg_156_0.asset == "ForbiddenMageProjectile"
			local var_156_11 = arg_156_0.asset == "DivinerProjectile"
			local var_156_12 = arg_156_0.asset == "LichProjectile"
			local var_156_13 = arg_156_0.asset == "LichLordProjectile"
			local var_156_14 = arg_156_0.asset == "OracleProjectile"

			arg_156_0.asset, arg_156_0.state = var_156_14 and "OracleProjectileGone" or var_156_11 and "DivinerProjectileGone" or var_156_12 and "LichProjectileGone" or var_156_13 and "LichLordProjectileGone" or var_156_10 and "ForbiddenMageProjectileGone" or var_156_9 and "WarlockProjectileGone" or var_156_8 and "ArchmageProjectileGone" or var_156_4 and "ArcanistProjectile" or var_156_7 and "AbyssMageProjectileGone" or var_156_6 and "BoneMageProjectileGone" or var_156_5 and "FlamecallerProjectileGone" or "CannoneerProjectileGone", "dying"
			arg_156_0.frame, arg_156_0.animT, arg_156_0.animFrames = var_156_4 and 3 or 1, 0, (var_156_11 or var_156_12 or var_156_13) and 4 or (var_156_8 or var_156_10 or var_156_14) and 3 or (var_156_6 or var_156_7 or var_156_9) and 2 or var_156_5 and 4 or 5
			arg_156_0.vx, arg_156_0.vy = 0, 0
			arg_156_0._cannoneerGoneStarted = true

			return
		end

		arg_156_0._cannoneerRemaining = var_156_3 - var_156_2
	end

	arg_156_0.x, arg_156_0.y = arg_156_0.x + var_156_0, arg_156_0.y + var_156_1
end

function __recovered_scope_0.var_0_151.animate(arg_157_0, arg_157_1, arg_157_2)
	if arg_157_0._cannoneerGoneStarted then
		arg_157_0._cannoneerGoneStarted = nil

		return
	end

	local var_157_0 = arg_157_2 and arg_157_2.speed or 0.08
	local var_157_1 = arg_157_0.asset == "ArcanistProjectile"
	local var_157_2 = var_157_1 and arg_157_0.state == "dying" and 3 or 1
	local var_157_3 = arg_157_0.state == "dying" and (var_157_1 and 3 or arg_157_0.asset == "BoneMageProjectileGone" and 2 or arg_157_0.asset == "FlamecallerProjectileGone" and 4 or 5) or (var_157_1 or arg_157_0.asset == "CrystalMageProjectile" or arg_157_0.asset == "UndineProjectile") and 2 or 4

	if arg_157_0.asset == "AbyssMageProjectile" then
		var_157_3 = 3
	elseif arg_157_0.asset == "AbyssMageProjectileGone" then
		var_157_3 = 2
	elseif arg_157_0.asset == "ArchmageProjectileGone" or arg_157_0.asset == "ForbiddenMageProjectileGone" or arg_157_0.asset == "OracleProjectileGone" then
		var_157_3 = 3
	end

	if arg_157_0.asset == "DarkMageProjectile" then
		var_157_3 = 2
	end

	if arg_157_0.asset == "DivinerProjectileGone" or arg_157_0.asset == "LichProjectileGone" or arg_157_0.asset == "LichLordProjectileGone" then
		var_157_3 = 4
	end

	if arg_157_0.asset == "WarlockProjectile" or arg_157_0.asset == "WarlockProjectileGone" then
		var_157_3 = arg_157_2 and arg_157_2.frames or arg_157_0.animFrames or 2
	end

	arg_157_0.animT = (arg_157_0.animT or 0) + arg_157_1

	local var_157_4 = math.floor((arg_157_0.animT + 1e-09) / var_157_0) + 1

	if arg_157_0.state == "dying" then
		arg_157_0.frame = var_157_2 + math.min(var_157_4, var_157_3) - 1

		if var_157_3 < var_157_4 then
			arg_157_0.alive = false
		end
	else
		arg_157_0.frame = (var_157_4 - 1) % var_157_3 + 1
	end
end

function __recovered_scope_0.var_0_151.startPostHit(arg_158_0)
	arg_158_0.state, arg_158_0.visualOnly = "post_hit_travel", true
	arg_158_0._cannoneerRemaining = ((arg_158_0.asset == "BoneMageProjectile" or arg_158_0.asset == "AbyssMageProjectile" or arg_158_0.asset == "WarlockProjectile" or arg_158_0.asset == "ForbiddenMageProjectile" or arg_158_0.asset == "DivinerProjectile" or arg_158_0.asset == "LichProjectile" or arg_158_0.asset == "LichLordProjectile" or arg_158_0.asset == "OracleProjectile") and 8 or arg_158_0.asset == "FlamecallerProjectile" and __recovered_scope_0.var_0_137.isSalamander(arg_158_0.owner) and 6 or 4) * (arg_158_0.boltFusionBase or arg_158_0.scale or 1)
	arg_158_0.life = math.max(arg_158_0.life or 0, 0.6 + arg_158_0._cannoneerRemaining / 250)
end

function __recovered_scope_0.var_0_151.sweepHit(arg_159_0, arg_159_1, arg_159_2, arg_159_3, arg_159_4, arg_159_5)
	if not __recovered_scope_0.var_0_151.geometry(arg_159_1, arg_159_2) then
		return nil
	end

	local var_159_0 = arg_159_1.x
	local var_159_1 = arg_159_1.y
	local var_159_2 = arg_159_1._cannoneerPrevX or var_159_0
	local var_159_3 = arg_159_1._cannoneerPrevY or var_159_1
	local var_159_4 = var_159_0 - var_159_2
	local var_159_5 = var_159_1 - var_159_3
	local var_159_6 = {}
	local var_159_7 = arg_159_1.colW / 2 + 1
	local var_159_8 = arg_159_1.colH / 2 + 1

	for iter_159_0, iter_159_1 in ipairs(arg_159_3 or {}) do
		if arg_159_4(iter_159_1, arg_159_1.owner, arg_159_0) and (not arg_159_1.targetOnly or arg_159_1.targetOnly == iter_159_1) and (not arg_159_1.hitTargets or not arg_159_1.hitTargets[iter_159_1]) and iter_159_1.colX and iter_159_1.colY and iter_159_1.colW and iter_159_1.colH and iter_159_1.colX + iter_159_1.colW >= math.min(var_159_2, var_159_0) - var_159_7 and iter_159_1.colX <= math.max(var_159_2, var_159_0) + var_159_7 and iter_159_1.colY + iter_159_1.colH >= math.min(var_159_3, var_159_1) - var_159_8 and iter_159_1.colY <= math.max(var_159_3, var_159_1) + var_159_8 then
			var_159_6[#var_159_6 + 1] = iter_159_1
		end
	end

	if #var_159_6 == 0 then
		return nil
	end

	local var_159_9 = math.max(1, math.ceil(math.sqrt(var_159_4 * var_159_4 + var_159_5 * var_159_5) / 0.5))

	for iter_159_2 = 0, var_159_9 do
		arg_159_1.x, arg_159_1.y = var_159_2 + var_159_4 * iter_159_2 / var_159_9, var_159_3 + var_159_5 * iter_159_2 / var_159_9

		__recovered_scope_0.var_0_151.geometry(arg_159_1, arg_159_2)

		for iter_159_3, iter_159_4 in ipairs(var_159_6) do
			if arg_159_5(arg_159_1, arg_159_2, iter_159_4) then
				return iter_159_4
			end
		end
	end

	arg_159_1.x, arg_159_1.y = var_159_0, var_159_1

	__recovered_scope_0.var_0_151.geometry(arg_159_1, arg_159_2)

	return nil
end

 __recovered_scope_0.var_0_152 = __recovered_scope_0.var_0_151
 __recovered_scope_0.var_0_153 = nil
 __recovered_scope_0.var_0_154 = {
	anchor = function(arg_160_0, arg_160_1, arg_160_2, arg_160_3, arg_160_4, arg_160_5, arg_160_6, arg_160_7)
		if not arg_160_0 or not arg_160_0.imageData or not arg_160_0.animations or not arg_160_0.animations.attack2 then
			return nil
		end

		local var_160_0 = arg_160_0._spearCycloneMarker

		if var_160_0 == nil then
			local var_160_1 = arg_160_0.frameW or 32
			local var_160_2 = arg_160_0.frameH or 32
			local var_160_3 = arg_160_0.animations.attack2.y or 128
			local var_160_4 = 0
			local var_160_5 = 0
			local var_160_6 = 0

			for iter_160_0 = 0, var_160_2 - 1 do
				for iter_160_1 = 0, var_160_1 - 1 do
					local var_160_7, var_160_8, var_160_9, var_160_10 = arg_160_0.imageData:getPixel(var_160_1 + iter_160_1, var_160_3 + iter_160_0)

					if var_160_10 > 0 and math.floor(var_160_7 * 255 + 0.5) == 88 and math.floor(var_160_8 * 255 + 0.5) == 57 and math.floor(var_160_9 * 255 + 0.5) == 33 then
						var_160_4, var_160_5, var_160_6 = var_160_4 + iter_160_1 + 0.5, var_160_5 + iter_160_0 + 0.5, var_160_6 + 1
					end
				end
			end

			var_160_0 = var_160_6 > 0 and {
				x = var_160_4 / var_160_6,
				y = var_160_5 / var_160_6
			} or false
			arg_160_0._spearCycloneMarker = var_160_0
		end

		if not var_160_0 then
			return nil
		end

		local var_160_11 = (var_160_0.x - (arg_160_6 or 0)) * (arg_160_4 or 1)
		local var_160_12 = (var_160_0.y - (arg_160_7 or 0)) * (arg_160_5 or 1)
		local var_160_13 = math.cos(arg_160_3 or 0)
		local var_160_14 = math.sin(arg_160_3 or 0)

		return arg_160_1 + var_160_11 * var_160_13 - var_160_12 * var_160_14, arg_160_2 + var_160_11 * var_160_14 + var_160_12 * var_160_13
	end
}

function __recovered_scope_0.var_0_154.worldAnchor(arg_161_0, arg_161_1)
	local var_161_0 = arg_161_0.getUnitAssetForAlly and arg_161_0:getUnitAssetForAlly(arg_161_1)

	if not var_161_0 then
		return nil
	end

	local var_161_1 = arg_161_1.skill and arg_161_1.skill.cycloneCast and arg_161_1.skill.cycloneCast.size or math.max(32, math.floor((arg_161_0.ui and arg_161_0.ui.battle and arg_161_0.ui.battle.allySize32 or 32) / 32) * 32)
	local var_161_2 = var_161_1 / (var_161_0.frameH or 32)
	local var_161_3 = math.floor((arg_161_1.x or 0) - (var_161_0.frameW or 32) * var_161_2 * 0.5)
	local var_161_4 = math.floor((arg_161_1.y or 0) - var_161_1 * 0.5) - (arg_161_1._jumpYOffset or 0)
	local var_161_5 = arg_161_1.hitShake

	if var_161_5 and var_161_5.t and var_161_5.dur then
		local var_161_6 = math.max(0, math.min(1, var_161_5.t / var_161_5.dur))

		var_161_3 = var_161_3 + math.floor((var_161_5.amp or 2) * (1 - var_161_6) + 0.5) * (math.floor(var_161_5.t * 60) % 2 == 0 and -1 or 1)
	end

	local var_161_7 = arg_161_1._attackFacing or arg_161_1.facing or 1

	return __recovered_scope_0.var_0_154.anchor(var_161_0, var_161_3, var_161_4, 0, var_161_7 < 0 and -var_161_2 or var_161_2, var_161_2, var_161_7 < 0 and (var_161_0.frameW or 32) or 0, 0)
end

 function __recovered_scope_0.var_0_155(arg_162_0, arg_162_1, arg_162_2)
	arg_162_1.style = arg_162_2
	arg_162_1.minX, arg_162_1.minY, arg_162_1.maxX, arg_162_1.maxY = math.huge, math.huge, -math.huge, -math.huge

	for iter_162_0 = 1, #arg_162_1, 2 do
		arg_162_1.minX = math.min(arg_162_1.minX, arg_162_1[iter_162_0])
		arg_162_1.maxX = math.max(arg_162_1.maxX, arg_162_1[iter_162_0])
		arg_162_1.minY = math.min(arg_162_1.minY, arg_162_1[iter_162_0 + 1])
		arg_162_1.maxY = math.max(arg_162_1.maxY, arg_162_1[iter_162_0 + 1])
	end

	arg_162_0[#arg_162_0 + 1] = arg_162_1
end

function __recovered_scope_0.var_0_154.shapes(arg_163_0, arg_163_1, arg_163_2, arg_163_3)
	local var_163_0 = {}

	for iter_163_0 = 1, 2 do
		local var_163_1 = arg_163_2 * 1.05 * (iter_163_0 == 1 and 1 + 0.06 * math.sin(arg_163_3 * 26) or 0.65)
		local var_163_2 = var_163_1 * 0.58
		local var_163_3 = iter_163_0 == 1 and 0.7 or 0.5

		for iter_163_1 = 0, 95 do
			local var_163_4 = iter_163_1 * math.pi / 48
			local var_163_5 = (iter_163_1 + 1) * math.pi / 48

			local function var_163_6(arg_164_0, arg_164_1)
				local var_164_0 = math.cos(arg_164_0)
				local var_164_1 = math.sin(arg_164_0)
				local var_164_2 = var_164_0 / var_163_1
				local var_164_3 = var_164_1 / var_163_2
				local var_164_4 = math.sqrt(var_164_2 * var_164_2 + var_164_3 * var_164_3)

				return arg_163_0 + var_163_1 * var_164_0 + arg_164_1 * var_163_3 * var_164_2 / var_164_4, arg_163_1 + var_163_2 * var_164_1 + arg_164_1 * var_163_3 * var_164_3 / var_164_4
			end

			local var_163_7, var_163_8 = var_163_6(var_163_4, 1)
			local var_163_9, var_163_10 = var_163_6(var_163_5, 1)
			local var_163_11, var_163_12 = var_163_6(var_163_5, -1)
			local var_163_13, var_163_14 = var_163_6(var_163_4, -1)

			__recovered_scope_0.var_0_155(var_163_0, {
				var_163_7,
				var_163_8,
				var_163_9,
				var_163_10,
				var_163_11,
				var_163_12,
				var_163_13,
				var_163_14
			}, iter_163_0)
		end
	end

	for iter_163_2 = 0, 1 do
		local var_163_15 = arg_163_3 * 16 * math.pi + iter_163_2 * math.pi

		for iter_163_3 = 0, 17 do
			local function var_163_16(arg_165_0, arg_165_1)
				local var_165_0 = var_163_15 - (1 - arg_165_0) * math.pi * 0.78
				local var_165_1 = arg_163_2 * (0.8 + arg_165_0 * 0.2) + arg_165_1 * arg_165_0^0.6 * 2.1

				return arg_163_0 + math.cos(var_165_0) * var_165_1, arg_163_1 + math.sin(var_165_0) * var_165_1 * 0.58
			end

			local var_163_17, var_163_18 = var_163_16(iter_163_3 / 18, 1)
			local var_163_19, var_163_20 = var_163_16((iter_163_3 + 1) / 18, 1)
			local var_163_21, var_163_22 = var_163_16((iter_163_3 + 1) / 18, -1)
			local var_163_23, var_163_24 = var_163_16(iter_163_3 / 18, -1)

			__recovered_scope_0.var_0_155(var_163_0, {
				var_163_17,
				var_163_18,
				var_163_19,
				var_163_20,
				var_163_21,
				var_163_22,
				var_163_23,
				var_163_24
			}, 3)
		end
	end

	return var_163_0
end

function __recovered_scope_0.var_0_154.overlaps(arg_166_0, arg_166_1, arg_166_2, arg_166_3, arg_166_4)
	if arg_166_1 > arg_166_0.maxX or arg_166_1 + arg_166_3 < arg_166_0.minX or arg_166_2 > arg_166_0.maxY or arg_166_2 + arg_166_4 < arg_166_0.minY then
		return false
	end

	for iter_166_0 = 1, #arg_166_0, 2 do
		local var_166_0 = iter_166_0 + 2

		if var_166_0 > #arg_166_0 then
			var_166_0 = 1
		end

		local var_166_1 = -(arg_166_0[var_166_0 + 1] - arg_166_0[iter_166_0 + 1])
		local var_166_2 = arg_166_0[var_166_0] - arg_166_0[iter_166_0]
		local var_166_3 = math.huge
		local var_166_4 = -math.huge

		for iter_166_1 = 1, #arg_166_0, 2 do
			local var_166_5 = arg_166_0[iter_166_1] * var_166_1 + arg_166_0[iter_166_1 + 1] * var_166_2

			var_166_3 = math.min(var_166_3, var_166_5)
			var_166_4 = math.max(var_166_4, var_166_5)
		end

		local var_166_6 = (arg_166_1 + arg_166_3 * 0.5) * var_166_1 + (arg_166_2 + arg_166_4 * 0.5) * var_166_2
		local var_166_7 = math.abs(var_166_1) * arg_166_3 * 0.5 + math.abs(var_166_2) * arg_166_4 * 0.5

		if var_166_3 > var_166_6 + var_166_7 or var_166_4 < var_166_6 - var_166_7 then
			return false
		end
	end

	return true
end

function __recovered_scope_0.var_0_154.hitsTarget(arg_167_0, arg_167_1, arg_167_2)
	if not arg_167_2 or not arg_167_2.imageData or not arg_167_2.bounds or not arg_167_2.quads or not arg_167_1.colX or not arg_167_1.colY or not arg_167_1.colW or not arg_167_1.colH then
		return false
	end

	local var_167_0 = arg_167_1.anim and arg_167_1.anim.name or "idle"

	if not arg_167_2.quads[var_167_0] then
		var_167_0 = "idle"
	end

	local var_167_1 = arg_167_2.quads[var_167_0]

	if not var_167_1 then
		return false
	end

	local var_167_2 = math.max(1, math.min(arg_167_1.anim and arg_167_1.anim.frame or 1, #var_167_1))
	local var_167_3 = arg_167_2.bounds[var_167_0] and arg_167_2.bounds[var_167_0][var_167_2]
	local var_167_4 = var_167_1[var_167_2]

	if not var_167_3 or not var_167_4 or not (var_167_3.w > 0) or not (var_167_3.h > 0) then
		return false
	end

	local var_167_5, var_167_6 = var_167_4:getViewport()
	local var_167_7 = arg_167_1.colW / var_167_3.w
	local var_167_8 = arg_167_1.colH / var_167_3.h

	if var_167_7 <= 0 or var_167_8 <= 0 then
		return false
	end

	local var_167_9 = (arg_167_1.facing or -1) < 0

	for iter_167_0, iter_167_1 in ipairs(arg_167_0) do
		if __recovered_scope_0.var_0_154.overlaps(iter_167_1, arg_167_1.colX, arg_167_1.colY, arg_167_1.colW, arg_167_1.colH) then
			local var_167_10 = math.max(0, math.floor((iter_167_1.minX - arg_167_1.colX) / var_167_7))
			local var_167_11 = math.min(var_167_3.w - 1, math.floor((iter_167_1.maxX - arg_167_1.colX) / var_167_7))
			local var_167_12 = math.max(0, math.floor((iter_167_1.minY - arg_167_1.colY) / var_167_8))
			local var_167_13 = math.min(var_167_3.h - 1, math.floor((iter_167_1.maxY - arg_167_1.colY) / var_167_8))

			for iter_167_2 = var_167_12, var_167_13 do
				for iter_167_3 = var_167_10, var_167_11 do
					local var_167_14, var_167_15, var_167_16, var_167_17 = arg_167_2.imageData:getPixel(var_167_5 + var_167_3.x + (var_167_9 and var_167_3.w - 1 - iter_167_3 or iter_167_3), var_167_6 + var_167_3.y + iter_167_2)

					if var_167_17 > 0 and __recovered_scope_0.var_0_154.overlaps(iter_167_1, arg_167_1.colX + iter_167_3 * var_167_7, arg_167_1.colY + iter_167_2 * var_167_8, var_167_7, var_167_8) then
						return true
					end
				end
			end
		end
	end

	return false
end

 __recovered_scope_0.var_0_156 = __recovered_scope_0.var_0_154
 __recovered_scope_0.var_0_157 = nil
 __recovered_scope_0.var_0_158 = {}

 function __recovered_scope_0.var_0_159(arg_168_0)
	return arg_168_0 and arg_168_0.alive and not arg_168_0.dying and (arg_168_0.hp or 1) > 0
end

function __recovered_scope_0.var_0_158.launch(arg_169_0, arg_169_1, arg_169_2, arg_169_3, arg_169_4, arg_169_5, arg_169_6, arg_169_7)
	local var_169_0 = arg_169_1.skill.releaseFrame or 9
	local var_169_1 = arg_169_3 / (arg_169_2 and arg_169_2.frameH or 32)
	local var_169_2 = arg_169_1._attackFacing or arg_169_1.facing or 1
	local var_169_3 = arg_169_1.skill.kind == "TripleTide"
	local var_169_4 = arg_169_1.x

	if not var_169_3 then
		var_169_4 = __recovered_scope_0.var_0_137.anchor(arg_169_1, arg_169_2, arg_169_3, var_169_0, 24, 71, 190, arg_169_1.skill.activeAnim or "attack3")
	end

	local var_169_5 = arg_169_1.y + arg_169_3 * 0.5

	if arg_169_0.entityGroundPoint then
		local var_169_6, var_169_7 = arg_169_0:entityGroundPoint(arg_169_1, arg_169_3)

		var_169_5 = var_169_7
	end

	local var_169_8 = var_169_5
	local var_169_9 = var_169_2
	local var_169_10 = 0

	if arg_169_4 then
		local var_169_11 = arg_169_4.x or var_169_4 + var_169_2
		local var_169_12 = (arg_169_4.y or arg_169_1.y) + arg_169_3 * 0.5

		if arg_169_0.entityGroundPoint then
			var_169_11, var_169_12 = arg_169_0:entityGroundPoint(arg_169_4, arg_169_3)
		end

		local var_169_13 = math.sqrt((var_169_11 - var_169_4)^2 + (var_169_12 - var_169_5)^2)

		if var_169_13 > 0.001 then
			var_169_9, var_169_10 = (var_169_11 - var_169_4) / var_169_13, (var_169_12 - var_169_5) / var_169_13
		end
	end

	local var_169_14 = var_169_3 and "TripleTide" or "CleansingWave"
	local var_169_15 = arg_169_0.assets and arg_169_0.assets.projectiles and arg_169_0.assets.projectiles[var_169_14]
	local var_169_16 = var_169_15 and var_169_15.travelSpeed or 90
	local var_169_17 = {
		side = "ally",
		battleSkillDamage = true,
		state = "growing",
		animFrames = 9,
		animT = 0,
		cleansingWave = true,
		cleansed = false,
		traveled = 0,
		opaqueBottomAnchor = true,
		holdSpawnPosition = true,
		rot = 0,
		alive = true,
		basicAttack = false,
		hitCount = 0,
		frame = 1,
		kind = "arrow",
		asset = var_169_14,
		owner = arg_169_1,
		awakeningCast = arg_169_1._awakening and arg_169_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_169_1),
		x = var_169_4,
		y = var_169_8,
		startX = var_169_4,
		startY = var_169_8,
		vx = var_169_9 * var_169_16,
		vy = var_169_10 * var_169_16,
		dirX = var_169_9,
		dirY = var_169_10,
		groundLockedY = var_169_5,
		depthY = arg_169_1.y,
		spawnDelay = arg_169_7 or 0,
		flipX = var_169_9 < 0,
		scale = var_169_1 * require("src.game.awakening").skillScale(arg_169_1),
		maxTravel = math.max(96, (arg_169_1.distance or 140) + 32) * require("src.game.awakening").skillScale(arg_169_1),
		dmg = arg_169_5 * (arg_169_1.skill.dmgMul or 1.1),
		hitTargets = arg_169_6 and arg_169_6.hitTargets or {},
		castBudget = arg_169_6
	}

	var_169_17.maxTargets = 2

	__recovered_scope_0.var_0_158.alignGround(var_169_17, var_169_15)

	arg_169_0.projectiles = arg_169_0.projectiles or {}
	arg_169_0.projectiles[#arg_169_0.projectiles + 1] = var_169_17

	return var_169_17
end

function __recovered_scope_0.var_0_158.launchTriple(arg_170_0, arg_170_1, arg_170_2, arg_170_3, arg_170_4, arg_170_5)
	local var_170_0 = {
		maxTargets = 3,
		hitCount = 0,
		allyCount = 0,
		hitTargets = {},
		allyTargets = {},
		maxAllies = require("src.game.awakening").healCapacity(arg_170_1, 2)
	}
	local var_170_1 = {}
	local var_170_2 = {
		{
			y = -5.5,
			x = -2,
			anim = 1.04,
			delay = 0.035
		},
		{
			y = 0.5,
			x = 1,
			anim = 0.93,
			delay = 0
		},
		{
			y = 5,
			x = -4,
			anim = 1.14,
			delay = 0.085
		}
	}

	for iter_170_0 = 1, 3 do
		local var_170_3 = var_170_2[iter_170_0]
		local var_170_4 = __recovered_scope_0.var_0_158.launch(arg_170_0, arg_170_1, arg_170_2, arg_170_3, arg_170_4, arg_170_5, var_170_0, var_170_3.delay)
		local var_170_5 = (love.math.random() - 0.5) * 1.2
		local var_170_6 = (var_170_3.y + var_170_5) * var_170_4.scale
		local var_170_7 = (var_170_3.x + var_170_5) * var_170_4.scale

		var_170_4.x = var_170_4.x + var_170_4.dirX * var_170_7
		var_170_4.startX = var_170_4.x
		var_170_4.waveAnimRate = var_170_3.anim
		var_170_4.groundLockedY = var_170_4.groundLockedY + var_170_6
		var_170_4.startY = var_170_4.startY + var_170_6
		var_170_4.depthY = var_170_4.depthY + var_170_6

		__recovered_scope_0.var_0_158.alignGround(var_170_4, arg_170_0.assets and arg_170_0.assets.projectiles and arg_170_0.assets.projectiles[var_170_4.asset])

		var_170_1[iter_170_0] = var_170_4
	end

	return var_170_1
end

function __recovered_scope_0.var_0_158.alignGround(arg_171_0, arg_171_1)
	local var_171_0 = arg_171_1 and arg_171_1.bounds and arg_171_1.bounds[arg_171_0.frame or 1]

	if var_171_0 then
		arg_171_0.y = arg_171_0.groundLockedY - var_171_0.h * (arg_171_0.scale or 1) * 0.5
	end
end

 function __recovered_scope_0.var_0_160(arg_172_0, arg_172_1, arg_172_2, arg_172_3, arg_172_4)
	if not arg_172_3.colX or not arg_172_3.colY or not arg_172_3.colW or not arg_172_3.colH then
		return false
	end

	if arg_172_3.colX > arg_172_1.colX + arg_172_1.colW or arg_172_3.colX + arg_172_3.colW < arg_172_1.colX or arg_172_3.colY > arg_172_1.colY + arg_172_1.colH or arg_172_3.colY + arg_172_3.colH < arg_172_1.colY then
		return false
	end

	local var_172_0 = arg_172_4 and arg_172_0.getUnitAssetForAlly and arg_172_0:getUnitAssetForAlly(arg_172_3) or not arg_172_4 and arg_172_0.getUnitAssetForEnemy and arg_172_0:getUnitAssetForEnemy(arg_172_3)

	return __recovered_scope_0.var_0_152.hitsOpaque(arg_172_1, arg_172_2, arg_172_3, var_172_0)
end

 function __recovered_scope_0.var_0_161(arg_173_0, arg_173_1, arg_173_2)
	for iter_173_0, iter_173_1 in ipairs(arg_173_0.enemies or {}) do
		if __recovered_scope_0.var_0_159(iter_173_1) and not arg_173_1.hitTargets[iter_173_1] and arg_173_2(iter_173_1, arg_173_1.owner, arg_173_0) then
			local var_173_0 = iter_173_1.colX and iter_173_1.colX + iter_173_1.colW * 0.5 or iter_173_1.x
			local var_173_1 = iter_173_1.colY and iter_173_1.colY + iter_173_1.colH * 0.5 or iter_173_1.y
			local var_173_2 = var_173_0 - arg_173_1.x
			local var_173_3 = var_173_1 - arg_173_1.y
			local var_173_4 = var_173_2 * arg_173_1.dirX + var_173_3 * arg_173_1.dirY
			local var_173_5 = math.abs(var_173_2 * arg_173_1.dirY - var_173_3 * arg_173_1.dirX)
			local var_173_6 = math.max(iter_173_1.colW or 16, iter_173_1.colH or 16) * 0.5 + 16 * arg_173_1.scale

			if var_173_4 >= -var_173_6 and var_173_4 <= arg_173_1.maxTravel - arg_173_1.traveled + var_173_6 and var_173_5 <= var_173_6 then
				return true
			end
		end
	end

	return false
end

 function __recovered_scope_0.var_0_162(arg_174_0, arg_174_1, arg_174_2, arg_174_3, arg_174_4)
	__recovered_scope_0.var_0_158.alignGround(arg_174_1, arg_174_2)
	__recovered_scope_0.var_0_152.geometry(arg_174_1, arg_174_2)

	local var_174_0 = arg_174_1.castBudget or arg_174_1

	if not arg_174_1.finishRequested and var_174_0.hitCount < require("src.game.combat").branching_bloom.limit(arg_174_0, arg_174_1.owner, var_174_0.maxTargets or 2) then
		for iter_174_0, iter_174_1 in ipairs(arg_174_0.enemies or {}) do
			if __recovered_scope_0.var_0_159(iter_174_1) and not arg_174_1.hitTargets[iter_174_1] and arg_174_3(iter_174_1, arg_174_1.owner, arg_174_0) and __recovered_scope_0.var_0_160(arg_174_0, arg_174_1, arg_174_2, iter_174_1, false) then
				arg_174_1.hitTargets[iter_174_1] = true
				var_174_0.hitCount = var_174_0.hitCount + 1

				local var_174_1 = iter_174_1.isBoss or iter_174_1.isFinalBoss or iter_174_1.finalBoss
				local var_174_2

				if not var_174_1 then
					var_174_2 = {
						waveHop = true,
						dist = 24,
						noImpactEffect = true,
						dur = 0.28,
						height = 5,
						dirX = arg_174_1.dirX,
						dirY = arg_174_1.dirY
					}
				end

				if not require("src.game.combat").branching_bloom.extra(arg_174_0, arg_174_1.owner, var_174_0.hitCount, var_174_0.maxTargets or 2, iter_174_1, arg_174_1.dmg, arg_174_4) then
					arg_174_4(iter_174_1, arg_174_1.dmg, arg_174_1.owner, var_174_2, {
						battleSkillDamage = true,
						awakeningCast = arg_174_1.awakeningCast,
						projectile = arg_174_1,
						chainCast = arg_174_1.chainCast or false
					})
				end

				if var_174_0.hitCount >= require("src.game.combat").branching_bloom.limit(arg_174_0, arg_174_1.owner, var_174_0.maxTargets or 2) then
					arg_174_1.finishRequested = true

					break
				end
			end
		end

		if var_174_0.hitCount > 0 and not __recovered_scope_0.var_0_161(arg_174_0, arg_174_1, arg_174_3) then
			arg_174_1.finishRequested = true
		end
	end

	if arg_174_1.castBudget then
		__recovered_scope_0.var_0_158.support(arg_174_0, arg_174_1, arg_174_2)
	elseif not arg_174_1.cleansed then
		local var_174_3 = require("src.game.unit_abilities").cleansing_wave

		for iter_174_2, iter_174_3 in ipairs(arg_174_0.allies or {}) do
			if __recovered_scope_0.var_0_159(iter_174_3) and var_174_3.debuffKey(iter_174_3) and __recovered_scope_0.var_0_160(arg_174_0, arg_174_1, arg_174_2, iter_174_3, true) and var_174_3.cleanseOne(iter_174_3) then
				arg_174_1.cleansed = true

				break
			end
		end
	end
end

function __recovered_scope_0.var_0_158.support(arg_175_0, arg_175_1, arg_175_2)
	local var_175_0 = arg_175_1.castBudget

	if var_175_0.allyCount >= var_175_0.maxAllies then
		return
	end

	local var_175_1 = require("src.game.unit_abilities").cleansing_wave
	local var_175_2 = {
		nativeMaxTargets = 2,
		injured = 0,
		multi = true
	}

	for iter_175_0, iter_175_1 in ipairs(arg_175_0.allies or {}) do
		if __recovered_scope_0.var_0_159(iter_175_1) and not iter_175_1.isDecoyDummy and not iter_175_1.isGuardianGolem and (iter_175_1.hp or 0) < (iter_175_1.maxhp or 1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_175_0, arg_175_1.owner, iter_175_1) and __recovered_scope_0.var_0_160(arg_175_0, arg_175_1, arg_175_2, iter_175_1, true) then
			var_175_2.injured = var_175_2.injured + 1
		end
	end

	for iter_175_2, iter_175_3 in ipairs(arg_175_0.allies or {}) do
		local var_175_3 = iter_175_3.maxhp or iter_175_3.hp or 1

		if __recovered_scope_0.var_0_159(iter_175_3) and not iter_175_3.isDecoyDummy and not iter_175_3.isGuardianGolem and not var_175_0.allyTargets[iter_175_3] and not require("src.game.unit_abilities").dimensional_duel.separated(arg_175_0, arg_175_1.owner, iter_175_3) and (var_175_3 > (iter_175_3.hp or 0) or var_175_1.debuffKey(iter_175_3)) and __recovered_scope_0.var_0_160(arg_175_0, arg_175_1, arg_175_2, iter_175_3, true) then
			var_175_0.allyTargets[iter_175_3] = true
			var_175_0.allyCount = var_175_0.allyCount + 1

			local var_175_4 = require("src.game.awakening").nativeHeal(arg_175_0, arg_175_1.owner, iter_175_3, math.max(1, math.floor(var_175_3 * 0.06 + 0.5)), var_175_2)

			if var_175_4 > 0 then
				require("src.ui.effects").healing_feedback.apply(iter_175_3, var_175_4)
				require("src.ui.effects").healing_feedback.healerPlus(arg_175_0, iter_175_3)
			end

			var_175_1.cleanseOne(iter_175_3)

			if var_175_0.allyCount >= var_175_0.maxAllies then
				break
			end
		end
	end
end

function __recovered_scope_0.var_0_158.update(arg_176_0, arg_176_1, arg_176_2, arg_176_3, arg_176_4)
	if not arg_176_1.alive or arg_176_2 <= 0 then
		return
	end

	if arg_176_1.spawnDelay and arg_176_1.spawnDelay > 0 then
		local var_176_0 = math.min(arg_176_2, arg_176_1.spawnDelay)

		arg_176_1.spawnDelay = arg_176_1.spawnDelay - var_176_0
		arg_176_2 = arg_176_2 - var_176_0

		if arg_176_2 <= 0 then
			return
		end
	end

	if arg_176_1.holdSpawnPosition then
		arg_176_1.holdSpawnPosition = nil

		return
	end

	local var_176_1 = arg_176_0.assets and arg_176_0.assets.projectiles and arg_176_0.assets.projectiles[arg_176_1.asset]

	if not var_176_1 then
		arg_176_1.alive = false

		return
	end

	local var_176_2 = (var_176_1.speed or 0.12) * (arg_176_1.waveAnimRate or 1)
	local var_176_3 = math.sqrt(arg_176_1.vx * arg_176_1.vx + arg_176_1.vy * arg_176_1.vy)
	local var_176_4 = arg_176_2

	while var_176_4 > 1e-09 and arg_176_1.alive do
		local var_176_5 = math.min(var_176_4, 0.01, 0.5 / math.max(1, var_176_3))

		var_176_4 = var_176_4 - var_176_5

		if arg_176_1.state == "gone" then
			arg_176_1.animT = arg_176_1.animT + var_176_5

			local var_176_6 = 7 + math.floor((arg_176_1.animT + 1e-09) / var_176_2)

			arg_176_1.frame = math.min(9, var_176_6)

			if var_176_6 > 9 then
				arg_176_1.alive = false
			end
		else
			__recovered_scope_0.var_0_162(arg_176_0, arg_176_1, var_176_1, arg_176_3, arg_176_4)

			if arg_176_1.castBudget and not arg_176_1.castBudget.finishTravel and (arg_176_1.finishRequested or arg_176_1.castBudget.hitCount >= arg_176_1.castBudget.maxTargets or arg_176_1.traveled >= arg_176_1.maxTravel) then
				arg_176_1.castBudget.finishTravel = math.max(arg_176_1.traveled, 6 * var_176_2 * var_176_3) + 36 * arg_176_1.scale
			end

			local var_176_7 = var_176_3 * var_176_5

			if arg_176_1.castBudget and arg_176_1.castBudget.finishTravel then
				var_176_7 = math.min(var_176_7, math.max(0, arg_176_1.castBudget.finishTravel - arg_176_1.traveled))
			end

			if arg_176_1.state == "post_hit_travel" then
				var_176_7 = math.min(var_176_7, arg_176_1.postRemaining)
			end

			arg_176_1.x = arg_176_1.x + arg_176_1.dirX * var_176_7
			arg_176_1.groundLockedY = arg_176_1.groundLockedY + arg_176_1.dirY * var_176_7
			arg_176_1.depthY = (arg_176_1.depthY or arg_176_1.startY) + arg_176_1.dirY * var_176_7
			arg_176_1.traveled = arg_176_1.traveled + var_176_7

			__recovered_scope_0.var_0_162(arg_176_0, arg_176_1, var_176_1, arg_176_3, arg_176_4)

			if arg_176_1.traveled >= arg_176_1.maxTravel then
				arg_176_1.finishRequested = true
			end

			if arg_176_1.state == "post_hit_travel" then
				arg_176_1.postRemaining = arg_176_1.postRemaining - var_176_7

				if arg_176_1.postRemaining <= 1e-09 then
					arg_176_1.state, arg_176_1.frame, arg_176_1.animT = "gone", 7, 0
				end
			else
				arg_176_1.animT = arg_176_1.animT + var_176_5

				if arg_176_1.state == "growing" then
					arg_176_1.frame = math.min(6, 1 + math.floor((arg_176_1.animT + 1e-09) / var_176_2))

					if arg_176_1.animT + 1e-09 >= 6 * var_176_2 then
						arg_176_1.state, arg_176_1.frame, arg_176_1.animT = "flight", 3, 0
					end
				else
					arg_176_1.frame = 3 + math.floor((arg_176_1.animT + 1e-09) / var_176_2) % 3
				end

				if arg_176_1.state == "flight" and arg_176_1.finishRequested and not arg_176_1.castBudget then
					arg_176_1.state, arg_176_1.postRemaining = "post_hit_travel", 36 * arg_176_1.scale
				end
			end
		end

		if arg_176_1.castBudget and arg_176_1.castBudget.finishTravel and arg_176_1.state ~= "gone" and arg_176_1.traveled >= arg_176_1.castBudget.finishTravel - 1e-09 then
			arg_176_1.state, arg_176_1.frame, arg_176_1.animT = "gone", 7, 0
		end

		__recovered_scope_0.var_0_158.alignGround(arg_176_1, var_176_1)
	end
end

 __recovered_scope_0.var_0_163 = __recovered_scope_0.var_0_158
 __recovered_scope_0.var_0_164 = nil
 __recovered_scope_0.var_0_165 = {
	launch = function(arg_177_0, arg_177_1, arg_177_2, arg_177_3, arg_177_4, arg_177_5)
		local var_177_0 = arg_177_3 / (arg_177_2 and arg_177_2.frameH or 32)
		local var_177_1 = 1
		local var_177_2 = arg_177_4 and arg_177_4.x or arg_177_1.x
		local var_177_3 = arg_177_0.area or {
			x = math.min(arg_177_1.x, var_177_2) - 160,
			w = math.abs(var_177_2 - arg_177_1.x) + 320
		}
		local var_177_4 = 32 * var_177_0
		local var_177_5 = math.min(var_177_3.x - 6 * var_177_0, arg_177_1.x - var_177_4)
		local var_177_6 = arg_177_1.y + arg_177_3 * 0.5

		if arg_177_0.entityGroundPoint then
			local var_177_7, var_177_8 = arg_177_0:entityGroundPoint(arg_177_1, arg_177_3)

			var_177_6 = var_177_8
		end

		local var_177_9 = arg_177_0.assets and arg_177_0.assets.projectiles and arg_177_0.assets.projectiles.PlainsHorse
		local var_177_10 = var_177_9 and var_177_9.travelSpeed or 120
		local var_177_11 = (0.02 + love.math.random() * 0.02) * (love.math.random() < 0.5 and -1 or 1)
		local var_177_12 = require("src.game.combat").stage6_rift
		local var_177_13 = var_177_12.entityLane(arg_177_0, arg_177_1, arg_177_3)
		local var_177_14 = arg_177_1.skill.horseCount or 2
		local var_177_15 = require("src.game.combat").branching_bloom.ratio(arg_177_0, arg_177_1) > 0
		local var_177_16 = {
			hitCount = 0,
			hitTargets = {},
			maxTargets = arg_177_1.skill.maxTargets or 3,
			knockbackOnce = arg_177_1.skill.knockbackOncePerTarget == true
		}
		local var_177_17 = {}

		arg_177_0.projectiles = arg_177_0.projectiles or {}

		for iter_177_0 = 1, var_177_14 + (var_177_15 and 1 or 0) do
			local var_177_18 = var_177_10 * (1 + var_177_11 * (iter_177_0 % 2 == 1 and 1 or -1) * (iter_177_0 <= 2 and 1 or 0.5))
			local var_177_19 = (var_177_14 == 2 and (iter_177_0 == 1 and -5 or 5) or (iter_177_0 - (var_177_14 + 1) * 0.5) * 7) * var_177_0

			if var_177_14 < iter_177_0 then
				var_177_19 = -(var_177_14 + 1) * 4 * var_177_0
			end

			local var_177_20 = ((iter_177_0 - 1) * 2 + (iter_177_0 == 4 and 1 or 0)) % 6

			if var_177_13 then
				local var_177_21, var_177_22 = var_177_12.clampGroundPointToLane(arg_177_0, var_177_13, arg_177_1.x, var_177_6 + var_177_19)

				var_177_19 = var_177_22 - var_177_6
			end

			local var_177_23 = {
				battleSkillDamage = true,
				animFrames = 6,
				opaqueBottomAnchor = true,
				side = "ally",
				holdSpawnPosition = true,
				rot = 0,
				vy = 0,
				asset = "PlainsHorse",
				dirY = 0,
				exactSpritePosition = true,
				traveled = 0,
				plainsHorse = true,
				alive = true,
				basicAttack = false,
				kind = "arrow",
				branchingBloomHorse = var_177_14 < iter_177_0,
				alternateHorseCoat = iter_177_0 == 2,
				horseCoat = iter_177_0,
				owner = arg_177_1,
				awakeningCast = arg_177_1._awakening and arg_177_1._awakening.cast,
				chainCast = require("src.game.combat").chain_casting.capture(arg_177_1),
				x = var_177_5,
				y = var_177_6 + var_177_19,
				groundLockedY = var_177_6 + var_177_19,
				depthY = arg_177_1.y + var_177_19,
				stage6Lane = var_177_13,
				dirX = var_177_1,
				vx = var_177_1 * var_177_18,
				flipX = var_177_1 < 0,
				scale = var_177_0,
				frame = var_177_20 + 1,
				animT = var_177_20 * (var_177_9 and var_177_9.speed or 0.09),
				spawnDelay = (iter_177_0 - 1) * 0.1,
				hoofbeatLeader = iter_177_0 == 1,
				maxTravel = var_177_3.x + var_177_3.w + var_177_4 - var_177_5,
				castBudget = var_177_16,
				hitTargets = var_177_16.hitTargets,
				contactTargets = {},
				dmg = arg_177_5 * (arg_177_1.skill.dmgMul or 1.2)
			}

			__recovered_scope_0.var_0_163.alignGround(var_177_23, var_177_9)

			var_177_17[iter_177_0] = var_177_23
			arg_177_0.projectiles[#arg_177_0.projectiles + 1] = var_177_23
		end

		return var_177_17
	end,
	contact = function(arg_178_0, arg_178_1, arg_178_2, arg_178_3, arg_178_4)
		local var_178_0 = arg_178_1.castBudget

		if not __recovered_scope_0.var_0_152.geometry(arg_178_1, arg_178_2) then
			return
		end

		arg_178_1.contactTargets = arg_178_1.contactTargets or {}

		for iter_178_0, iter_178_1 in ipairs(arg_178_0.enemies or {}) do
			if iter_178_1.alive and not iter_178_1.dying and (iter_178_1.hp or 0) > 0 and not arg_178_1.contactTargets[iter_178_1] and arg_178_3(iter_178_1, arg_178_1.owner, arg_178_0) and (not var_178_0.knockbackOnce or not var_178_0.hitTargets[iter_178_1]) and (arg_178_1.branchingBloomHorse and not var_178_0.hitTargets[iter_178_1] and var_178_0.hitCount == var_178_0.maxTargets or not arg_178_1.branchingBloomHorse and (var_178_0.hitTargets[iter_178_1] or var_178_0.hitCount < var_178_0.maxTargets)) and (not arg_178_1.stage6Lane or require("src.game.combat").stage6_rift.entityLane(arg_178_0, iter_178_1) == arg_178_1.stage6Lane) and iter_178_1.colX and iter_178_1.colY and iter_178_1.colW and iter_178_1.colH and iter_178_1.colX <= arg_178_1.colX + arg_178_1.colW and iter_178_1.colX + iter_178_1.colW >= arg_178_1.colX and iter_178_1.colY <= arg_178_1.colY + arg_178_1.colH and iter_178_1.colY + iter_178_1.colH >= arg_178_1.colY then
				local var_178_1 = arg_178_0.getUnitAssetForEnemy and arg_178_0:getUnitAssetForEnemy(iter_178_1)

				if __recovered_scope_0.var_0_152.hitsOpaque(arg_178_1, arg_178_2, iter_178_1, var_178_1) then
					local var_178_2
					local var_178_3 = iter_178_1.isBoss or iter_178_1.isFinalBoss or iter_178_1.finalBoss

					if not var_178_3 and iter_178_1 ~= var_178_0.bloomTarget and (var_178_0.hitTargets[iter_178_1] or var_178_0.hitCount < var_178_0.maxTargets) and (var_178_0.knockbackOnce or (iter_178_1._plainsHorseKnockbackT or 0) <= 0) then
						var_178_2 = {
							waveHop = true,
							dist = 24,
							noImpactEffect = true,
							dur = 0.28,
							height = 5,
							dirY = 0,
							dirX = arg_178_1.dirX
						}

						if not var_178_0.knockbackOnce then
							iter_178_1._plainsHorseKnockbackT = 0.3
						end
					end

					if var_178_2 or var_178_3 then
						arg_178_1.contactTargets[iter_178_1] = true
					end

					if not var_178_0.hitTargets[iter_178_1] then
						var_178_0.hitTargets[iter_178_1] = true
						var_178_0.hitCount = var_178_0.hitCount + 1

						if require("src.game.combat").branching_bloom.extra(arg_178_0, arg_178_1.owner, var_178_0.hitCount, var_178_0.maxTargets, iter_178_1, arg_178_1.dmg, arg_178_4) then
							var_178_0.bloomTarget = iter_178_1
							arg_178_1.contactTargets[iter_178_1] = true
						else
							arg_178_4(iter_178_1, arg_178_1.dmg, arg_178_1.owner, var_178_2, {
								basicAttack = false,
								battleSkillDamage = true,
								awakeningCast = arg_178_1.awakeningCast,
								projectile = arg_178_1,
								chainCast = arg_178_1.chainCast or false
							})
						end
					elseif var_178_2 then
						var_178_2.t = 0
						iter_178_1._kb = var_178_2
					end
				end
			end
		end
	end
}

function __recovered_scope_0.var_0_165.update(arg_179_0, arg_179_1, arg_179_2, arg_179_3, arg_179_4)
	if not arg_179_1.alive or arg_179_2 <= 0 then
		return
	end

	local var_179_0 = math.min(arg_179_2, arg_179_1.spawnDelay or 0)

	arg_179_1.spawnDelay = (arg_179_1.spawnDelay or 0) - var_179_0
	arg_179_2 = arg_179_2 - var_179_0

	if arg_179_2 <= 0 then
		return
	end

	if arg_179_1.holdSpawnPosition then
		arg_179_1.holdSpawnPosition = nil

		return
	end

	local var_179_1 = arg_179_0.assets and arg_179_0.assets.projectiles and arg_179_0.assets.projectiles[arg_179_1.asset]

	if not var_179_1 then
		arg_179_1.alive = false

		return
	end

	local var_179_2 = math.abs(arg_179_1.vx)
	local var_179_3 = math.floor(arg_179_1.traveled / math.max(1, var_179_2 * 0.18))
	local var_179_4 = arg_179_2

	while var_179_4 > 1e-09 and arg_179_1.alive do
		local var_179_5 = math.min(var_179_4, 0.01, 0.5 / math.max(1, var_179_2))

		var_179_4 = var_179_4 - var_179_5

		__recovered_scope_0.var_0_163.alignGround(arg_179_1, var_179_1)
		__recovered_scope_0.var_0_165.contact(arg_179_0, arg_179_1, var_179_1, arg_179_3, arg_179_4)

		local var_179_6 = math.min(var_179_2 * var_179_5, arg_179_1.maxTravel - arg_179_1.traveled)

		arg_179_1.x = arg_179_1.x + arg_179_1.dirX * var_179_6
		arg_179_1.traveled = arg_179_1.traveled + var_179_6
		arg_179_1.animT = arg_179_1.animT + var_179_5
		arg_179_1.frame = 1 + math.floor((arg_179_1.animT + 1e-09) / (var_179_1.speed or 0.09)) % 6

		__recovered_scope_0.var_0_163.alignGround(arg_179_1, var_179_1)
		__recovered_scope_0.var_0_165.contact(arg_179_0, arg_179_1, var_179_1, arg_179_3, arg_179_4)

		if arg_179_1.traveled >= arg_179_1.maxTravel - 1e-09 then
			arg_179_1.alive = false
		end
	end

	if arg_179_1.hoofbeatLeader and arg_179_1.alive and arg_179_0.area and arg_179_1.x >= arg_179_0.area.x and arg_179_1.x <= arg_179_0.area.x + arg_179_0.area.w and var_179_3 < math.floor(arg_179_1.traveled / math.max(1, var_179_2 * 0.18)) then
		local var_179_7 = arg_179_0.cameraShake

		if (var_179_7 and (var_179_7.ampY or 0) * math.max(0, 1 - (var_179_7.t or 0) / math.max(0.001, var_179_7.dur or 0.1)) or 0) < 0.65 then
			arg_179_0.cameraShake = {
				ampY = 0.65,
				dur = 0.08,
				t = 0
			}
		end
	end
end

 __recovered_scope_0.var_0_166 = __recovered_scope_0.var_0_165
 __recovered_scope_0.var_0_167 = nil
 __recovered_scope_0.var_0_168 = {}

 function __recovered_scope_0.var_0_169(arg_180_0)
	return arg_180_0 and arg_180_0.alive and not arg_180_0.dying and (arg_180_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_168.launch(arg_181_0, arg_181_1, arg_181_2, arg_181_3, arg_181_4)
	local var_181_0, var_181_1 = require("src.ui.effects").fire_spirit_burst.anchor(arg_181_0, arg_181_2)
	local var_181_2 = arg_181_3.colX and arg_181_3.colX + arg_181_3.colW * 0.5 or arg_181_3.x
	local var_181_3 = arg_181_3.colY and arg_181_3.colY + arg_181_3.colH * 0.5 or arg_181_3.y
	local var_181_4 = var_181_2 - var_181_0
	local var_181_5 = var_181_3 - var_181_1
	local var_181_6 = math.sqrt(var_181_4 * var_181_4 + var_181_5 * var_181_5)

	if var_181_6 > 0.001 then
		var_181_4, var_181_5 = var_181_4 / var_181_6, var_181_5 / var_181_6
	else
		var_181_4, var_181_5 = arg_181_1.facing or 1, 0
	end

	local var_181_7 = arg_181_0.ui and arg_181_0.ui.battle and arg_181_0.ui.battle.allySize32 or 32
	local var_181_8 = require("src.game.awakening").skillScale(arg_181_1)
	local var_181_9 = {
		kind = "projectile",
		battleSkillDamage = true,
		age = 0,
		alive = true,
		traveled = 0,
		basicAttack = false,
		side = "ally",
		holdSpawnPosition = true,
		flameDescent = true,
		speed = 170,
		owner = arg_181_1,
		awakeningCast = arg_181_1._awakening and arg_181_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_181_1),
		spirit = arg_181_2,
		x = var_181_0,
		y = var_181_1,
		dirX = var_181_4,
		dirY = var_181_5,
		radius = 10 * var_181_7 / 32 * var_181_8,
		awakeningScale = var_181_8,
		pixel = math.max(1, math.floor(var_181_7 / 32 + 0.5)),
		maxTravel = math.max(160, var_181_6 + 55) * var_181_8,
		dmg = arg_181_4 * 1.1,
		burnATK = arg_181_2.dmg or 18,
		hitTargets = {},
		awakeningPoint = arg_181_3.awakeningPoint and {
			x = var_181_2,
			y = var_181_3,
			distance = var_181_6
		} or nil
	}

	arg_181_0.projectiles = arg_181_0.projectiles or {}
	arg_181_0.projectiles[#arg_181_0.projectiles + 1] = var_181_9

	return var_181_9
end

function __recovered_scope_0.var_0_168.overlaps(arg_182_0, arg_182_1)
	local var_182_0 = arg_182_1.colX or arg_182_1.x - 8
	local var_182_1 = arg_182_1.colY or arg_182_1.y - 8
	local var_182_2 = arg_182_1.colW or 16
	local var_182_3 = arg_182_1.colH or 16
	local var_182_4 = math.max(var_182_0, math.min(var_182_0 + var_182_2, arg_182_0.x))
	local var_182_5 = math.max(var_182_1, math.min(var_182_1 + var_182_3, arg_182_0.y))

	return (var_182_4 - arg_182_0.x)^2 + (var_182_5 - arg_182_0.y)^2 <= arg_182_0.radius^2
end

function __recovered_scope_0.var_0_168.explode(arg_183_0, arg_183_1, arg_183_2, arg_183_3, arg_183_4)
	if not arg_183_1.alive then
		return
	end

	arg_183_1.alive = false

	require("src.ui.effects").flame_descent.burst(arg_183_0, arg_183_1.x, arg_183_1.y, arg_183_1.pixel, arg_183_1.awakeningScale)

	if not arg_183_4 and not arg_183_1.awakeningPoint then
		return
	end

	local var_183_0 = {}
	local var_183_1 = 45 * (arg_183_1.awakeningScale or 1)

	for iter_183_0, iter_183_1 in ipairs(arg_183_0.enemies or {}) do
		if __recovered_scope_0.var_0_169(iter_183_1) and arg_183_2(iter_183_1, arg_183_1.owner, arg_183_0) then
			local var_183_2 = iter_183_1.x - arg_183_1.x
			local var_183_3 = iter_183_1.y - arg_183_1.y
			local var_183_4 = var_183_2 * var_183_2 + var_183_3 * var_183_3

			if iter_183_1 == arg_183_4 or var_183_4 <= var_183_1 * var_183_1 then
				var_183_0[#var_183_0 + 1] = {
					e = iter_183_1,
					d = iter_183_1 == arg_183_4 and -1 or var_183_4
				}
			end
		end
	end

	table.sort(var_183_0, function(arg_184_0, arg_184_1)
		return arg_184_0.d < arg_184_1.d
	end)

	for iter_183_2 = 1, math.min(3, #var_183_0) do
		local var_183_5 = var_183_0[iter_183_2].e

		if not arg_183_1.hitTargets[var_183_5] then
			arg_183_1.hitTargets[var_183_5] = true

			arg_183_3(var_183_5, arg_183_1.dmg, arg_183_1.owner, nil, {
				battleSkillDamage = true,
				awakeningCast = arg_183_1.awakeningCast,
				projectile = arg_183_1,
				chainCast = arg_183_1.chainCast or false
			})
			require("src.game.unit_abilities").flame_call.applyBurn(var_183_5, arg_183_1.spirit, arg_183_1.burnATK)
		end
	end
end

function __recovered_scope_0.var_0_168.update(arg_185_0, arg_185_1, arg_185_2, arg_185_3, arg_185_4)
	if not arg_185_1.alive or arg_185_2 <= 0 then
		return
	end

	if arg_185_1.holdSpawnPosition then
		arg_185_1.holdSpawnPosition = nil

		return
	end

	local var_185_0 = arg_185_2

	while var_185_0 > 1e-09 and arg_185_1.alive do
		local var_185_1 = math.min(var_185_0, 1 / arg_185_1.speed)

		var_185_0 = var_185_0 - var_185_1
		arg_185_1.age = arg_185_1.age + var_185_1

		local var_185_2 = math.min(arg_185_1.speed * var_185_1, arg_185_1.maxTravel - arg_185_1.traveled)

		arg_185_1.x = arg_185_1.x + arg_185_1.dirX * var_185_2
		arg_185_1.y = arg_185_1.y + arg_185_1.dirY * var_185_2
		arg_185_1.traveled = arg_185_1.traveled + var_185_2

		for iter_185_0, iter_185_1 in ipairs(arg_185_0.enemies or {}) do
			if __recovered_scope_0.var_0_169(iter_185_1) and arg_185_3(iter_185_1, arg_185_1.owner, arg_185_0) and __recovered_scope_0.var_0_168.overlaps(arg_185_1, iter_185_1) then
				__recovered_scope_0.var_0_168.explode(arg_185_0, arg_185_1, arg_185_3, arg_185_4, iter_185_1)

				break
			end
		end

		if arg_185_1.alive and arg_185_1.awakeningPoint and arg_185_1.traveled >= arg_185_1.awakeningPoint.distance then
			arg_185_1.x = arg_185_1.awakeningPoint.x
			arg_185_1.y = arg_185_1.awakeningPoint.y

			__recovered_scope_0.var_0_168.explode(arg_185_0, arg_185_1, arg_185_3, arg_185_4)
		end

		if arg_185_1.alive and arg_185_1.traveled >= arg_185_1.maxTravel - 1e-09 then
			__recovered_scope_0.var_0_168.explode(arg_185_0, arg_185_1, arg_185_3, arg_185_4)
		end
	end
end

 __recovered_scope_0.var_0_170 = __recovered_scope_0.var_0_168
 __recovered_scope_0.var_0_171 = nil
 __recovered_scope_0.var_0_172 = {
	hitsTarget = function(arg_186_0, arg_186_1, arg_186_2, arg_186_3, arg_186_4)
		if not arg_186_0 or not arg_186_1 or not arg_186_1.imageData or not arg_186_3 or not arg_186_4 or not arg_186_4.imageData or not arg_186_3.colX or not arg_186_3.colY or not arg_186_3.colW or not arg_186_3.colH then
			return false
		end

		local var_186_0 = arg_186_1.quads and arg_186_1.quads[arg_186_2]

		if not var_186_0 then
			return false
		end

		local var_186_1, var_186_2, var_186_3, var_186_4 = var_186_0:getViewport()
		local var_186_5 = arg_186_1.bounds and arg_186_1.bounds[arg_186_2]
		local var_186_6 = arg_186_0.originX or var_186_3 / 2
		local var_186_7 = arg_186_0.originY or arg_186_0.opaqueBottomAnchor and var_186_5 and var_186_5.y + var_186_5.h or var_186_4
		local var_186_8 = arg_186_0.scale or 2

		if var_186_8 <= 0 then
			return false
		end

		local var_186_9 = (arg_186_0.flipX or (arg_186_0.facing or 1) < 0) and -1 or 1
		local var_186_10 = math.floor((arg_186_0.x or 0) + 0.5)
		local var_186_11 = math.floor((arg_186_0.y or 0) + 0.5)
		local var_186_12 = arg_186_3.anim and arg_186_3.anim.name or "idle"

		if not arg_186_4.quads or not arg_186_4.quads[var_186_12] then
			var_186_12 = "idle"
		end

		local var_186_13 = arg_186_4.animations and arg_186_4.animations[var_186_12] and arg_186_4.animations[var_186_12].frames or 1
		local var_186_14 = math.max(1, math.min(arg_186_3.anim and arg_186_3.anim.frame or 1, var_186_13))
		local var_186_15 = arg_186_4.quads and arg_186_4.quads[var_186_12] and arg_186_4.quads[var_186_12][var_186_14]
		local var_186_16 = arg_186_4.bounds and arg_186_4.bounds[var_186_12] and arg_186_4.bounds[var_186_12][var_186_14]

		if not var_186_15 or not var_186_16 or not (var_186_16.w > 0) or not (var_186_16.h > 0) or not (arg_186_3.colW > 0) or not (arg_186_3.colH > 0) then
			return false
		end

		local var_186_17, var_186_18 = var_186_15:getViewport()
		local var_186_19 = arg_186_3.colW / var_186_16.w
		local var_186_20 = arg_186_3.colH / var_186_16.h
		local var_186_21 = arg_186_3.colX + __recovered_scope_0.var_0_123.getVisualOffsetX(arg_186_3)
		local var_186_22 = arg_186_3.colY

		for iter_186_0 = 0, var_186_4 - 1 do
			for iter_186_1 = 0, var_186_3 - 1 do
				local var_186_23, var_186_24, var_186_25, var_186_26 = arg_186_1.imageData:getPixel(var_186_1 + iter_186_1, var_186_2 + iter_186_0)

				if var_186_26 > 0 then
					local var_186_27 = var_186_10 + (var_186_9 > 0 and iter_186_1 - var_186_6 or var_186_6 - iter_186_1 - 1) * var_186_8
					local var_186_28 = var_186_11 + (iter_186_0 - var_186_7) * var_186_8
					local var_186_29 = math.max(var_186_27, var_186_21)
					local var_186_30 = math.min(var_186_27 + var_186_8, var_186_21 + arg_186_3.colW)
					local var_186_31 = math.max(var_186_28, var_186_22)
					local var_186_32 = math.min(var_186_28 + var_186_8, var_186_22 + arg_186_3.colH)

					if var_186_29 < var_186_30 and var_186_31 < var_186_32 then
						local var_186_33 = math.max(0, math.floor((var_186_29 - var_186_21) / var_186_19))
						local var_186_34 = math.min(var_186_16.w - 1, math.ceil((var_186_30 - var_186_21) / var_186_19) - 1)
						local var_186_35 = math.max(0, math.floor((var_186_31 - var_186_22) / var_186_20))
						local var_186_36 = math.min(var_186_16.h - 1, math.ceil((var_186_32 - var_186_22) / var_186_20) - 1)

						for iter_186_2 = var_186_35, var_186_36 do
							for iter_186_3 = var_186_33, var_186_34 do
								local var_186_37 = (arg_186_3.facing or 1) < 0 and var_186_16.w - 1 - iter_186_3 or iter_186_3
								local var_186_38, var_186_39, var_186_40, var_186_41 = arg_186_4.imageData:getPixel(var_186_17 + var_186_16.x + var_186_37, var_186_18 + var_186_16.y + iter_186_2)

								if var_186_41 > 0 then
									return true
								end
							end
						end
					end
				end
			end
		end

		return false
	end
}
 __recovered_scope_0.var_0_173 = nil
 __recovered_scope_0.var_0_174 = {}
 __recovered_scope_0.var_0_175 = {
	ArcaneOrb = true,
	ObserverLaser = true,
	PierceProjectile = true,
	AssaultBarrierAttack = true,
	StormBlade = true,
	BladeWaveFrankenstein = true,
	BladeWave = true,
	ShadowSorcererAttack2 = true,
	GrenadierBomb = true,
	AbyssArrow2 = true,
	GrenadierExplosion = true,
	DarkOrbCrash = true
}

 function __recovered_scope_0.var_0_176(arg_187_0)
	return arg_187_0 and arg_187_0.alive and not arg_187_0.dying and (tonumber(arg_187_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_177(arg_188_0)
	return arg_188_0.colX and arg_188_0.colW and arg_188_0.colX + arg_188_0.colW * 0.5 or arg_188_0.x or 0, arg_188_0.colY and arg_188_0.colH and arg_188_0.colY + arg_188_0.colH * 0.5 or arg_188_0.y or 0
end

function __recovered_scope_0.var_0_174.attach(arg_189_0, arg_189_1, arg_189_2)
	if not arg_189_0 or not arg_189_1 or not arg_189_1.alive or arg_189_1.kind ~= "arrow" or arg_189_1.side ~= "ally" or arg_189_1.basicAttack ~= true or not __recovered_scope_0.var_0_176(arg_189_2) then
		return false
	end

	if arg_189_1.battleSkillDamage or arg_189_1.visualOnly or arg_189_1.anchoredLaser or arg_189_1.grenadierBomb or arg_189_1.explosionRadius or arg_189_1.splashRadius or arg_189_1.beam or arg_189_1.laser or (tonumber(arg_189_1.maxTargets) or 1) > 1 or __recovered_scope_0.var_0_175[arg_189_1.asset] then
		return false
	end

	for iter_189_0, iter_189_1 in ipairs(arg_189_0.ui and arg_189_0.ui._itemPurchased or {}) do
		if iter_189_1.key == "HuntersLens" then
			arg_189_1._huntersLens = {
				target = arg_189_2,
				radius = iter_189_1.retargetRadius or 90,
				bonus = require("src.game.item").levelValue(iter_189_1, "retargetDamageBonus", iter_189_1.retargetDamageBonus or {
					0.2,
					0.35,
					0.5
				})
			}

			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_174.update(arg_190_0, arg_190_1, arg_190_2, arg_190_3)
	local var_190_0 = arg_190_1 and arg_190_1._huntersLens

	if not var_190_0 or not arg_190_1.alive or arg_190_1.side ~= "ally" or (arg_190_1.life or 0) <= 0 or arg_190_1.spineReflected or arg_190_1.crescentRaiderDeflected or arg_190_1.visualOnly or arg_190_1.state == "dying" or arg_190_1.state == "post_hit_travel" or arg_190_1.didDamage or arg_190_1.basicAttackCounted or next(arg_190_1.hitTargets or {}) then
		return false
	end

	if not var_190_0.searched then
		if __recovered_scope_0.var_0_176(var_190_0.target) then
			return false
		end

		var_190_0.searched = true

		local var_190_1
		local var_190_2 = (var_190_0.radius or 90)^2

		for iter_190_0, iter_190_1 in ipairs(arg_190_0.enemies or {}) do
			if iter_190_1 ~= var_190_0.target and __recovered_scope_0.var_0_176(iter_190_1) and iter_190_1.side ~= "ally" and not iter_190_1._tricksterCharm and not iter_190_1.isUndyingSoul and not iter_190_1._venomMawSwallowed and (not arg_190_2 or arg_190_2(iter_190_1, arg_190_1.owner, arg_190_0)) then
				local var_190_3, var_190_4 = __recovered_scope_0.var_0_177(iter_190_1)
				local var_190_5 = var_190_3 - (arg_190_1.x or 0)
				local var_190_6 = var_190_4 - (arg_190_1.y or 0)
				local var_190_7 = var_190_5 * var_190_5 + var_190_6 * var_190_6

				if var_190_7 <= var_190_2 and (not var_190_1 or var_190_7 < var_190_2) then
					var_190_1, var_190_2 = iter_190_1, var_190_7
				end
			end
		end

		if not var_190_1 then
			return false
		end

		var_190_0.target, var_190_0.redirected = var_190_1, true

		if arg_190_3 then
			arg_190_3(arg_190_0, "HuntersLens", false)
		end
	end

	if not var_190_0.redirected or not __recovered_scope_0.var_0_176(var_190_0.target) or arg_190_2 and not arg_190_2(var_190_0.target, arg_190_1.owner, arg_190_0) then
		return false
	end

	local var_190_8, var_190_9 = __recovered_scope_0.var_0_177(var_190_0.target)
	local var_190_10 = var_190_8 - (arg_190_1.x or 0)
	local var_190_11 = var_190_9 - (arg_190_1.y or 0)
	local var_190_12 = math.sqrt(var_190_10 * var_190_10 + var_190_11 * var_190_11)
	local var_190_13 = math.sqrt((arg_190_1.vx or 0)^2 + (arg_190_1.vy or 0)^2)

	if var_190_12 > 0.0001 and var_190_13 > 0 then
		arg_190_1.dirX, arg_190_1.dirY = var_190_10 / var_190_12, var_190_11 / var_190_12
		arg_190_1.vx, arg_190_1.vy = arg_190_1.dirX * var_190_13, arg_190_1.dirY * var_190_13
		arg_190_1.rot = math.atan2(arg_190_1.dirY, arg_190_1.dirX)
	end

	return true
end

function __recovered_scope_0.var_0_174.damage(arg_191_0, arg_191_1, arg_191_2)
	local var_191_0 = arg_191_0 and arg_191_0._huntersLens

	if var_191_0 and var_191_0.redirected and arg_191_1 == var_191_0.target and arg_191_0.side == "ally" and not arg_191_0.spineReflected and not arg_191_0.crescentRaiderDeflected then
		return arg_191_2 * (1 + (var_191_0.bonus or 0))
	end

	return arg_191_2
end

 __recovered_scope_0.var_0_178 = __recovered_scope_0.var_0_174
 __recovered_scope_0.var_0_179 = nil
 __recovered_scope_0.var_0_180 = {}

 function __recovered_scope_0.var_0_181(arg_192_0)
	return arg_192_0 and arg_192_0.alive and arg_192_0.side == "enemy" and arg_192_0.basicAttack == true and arg_192_0.owner and arg_192_0.owner.side == "enemy" and not arg_192_0.owner._tricksterCharm and not arg_192_0.battleSkillDamage and not arg_192_0.skillDamage and not arg_192_0.skillBig and not arg_192_0.visualOnly and not arg_192_0.spineReflected and not arg_192_0.crescentRaiderDeflected and not arg_192_0._spearCycloneDeflect and arg_192_0.state ~= "dying" and arg_192_0.state ~= "post_hit_travel"
end

 function __recovered_scope_0.var_0_182(arg_193_0)
	if not arg_193_0 or arg_193_0.mode ~= "battle" then
		return
	end

	for iter_193_0, iter_193_1 in ipairs(arg_193_0.ui and arg_193_0.ui._itemPurchased or {}) do
		if iter_193_1.key == "EyeOfConfusion" then
			return require("src.game.item").levelValue(iter_193_1, "damageRatio", require("src.game.item").getById("58").damageRatio)
		end
	end
end

function __recovered_scope_0.var_0_180.beginStep(arg_194_0, arg_194_1)
	if not __recovered_scope_0.var_0_181(arg_194_1) or arg_194_1._eyeConfusionHit then
		return
	end

	local var_194_0 = __recovered_scope_0.var_0_182(arg_194_0)

	if not var_194_0 then
		return
	end

	arg_194_1._eyeConfusion = arg_194_1._eyeConfusion or {
		atk = math.max(0, tonumber(arg_194_1.owner.dmg) or 0),
		ratio = var_194_0
	}
	arg_194_1._eyeConfusion.x, arg_194_1._eyeConfusion.y = arg_194_1.x, arg_194_1.y
end

 function __recovered_scope_0.var_0_183(arg_195_0, arg_195_1, arg_195_2, arg_195_3)
	return arg_195_2 and arg_195_2 ~= arg_195_1.owner and arg_195_2.side == "enemy" and arg_195_2.alive and not arg_195_2.dying and (arg_195_2.hp or 0) > 0 and not arg_195_2._tricksterCharm and not arg_195_2._shadowConsumed and not arg_195_2.isCrystalGuardWall and not arg_195_2.isUndyingSoul and (not arg_195_3 or arg_195_3(arg_195_2, arg_195_1.owner, arg_195_0))
end

 function __recovered_scope_0.var_0_184(arg_196_0, arg_196_1, arg_196_2, arg_196_3)
	local var_196_0 = arg_196_1._eyeConfusion

	arg_196_1._eyeConfusionHit = true

	local var_196_1 = {
		side = "ally",
		itemKey = "EyeOfConfusion",
		isItemEffect = true,
		x = arg_196_1.owner.x,
		y = arg_196_1.owner.y,
		stage6Lane = arg_196_1.owner.stage6Lane
	}

	arg_196_3(arg_196_2, var_196_0.atk * var_196_0.ratio, var_196_1, nil, {
		battleSkillDamage = false,
		fromItem = true,
		itemDamage = true,
		basicAttack = false
	})

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_196_0, "EyeOfConfusion", false)
	end
end

 function __recovered_scope_0.var_0_185(arg_197_0, arg_197_1, arg_197_2, arg_197_3, arg_197_4)
	local var_197_0 = arg_197_1.startX or arg_197_1.x
	local var_197_1 = arg_197_1.startY or arg_197_1.y
	local var_197_2
	local var_197_3

	if arg_197_4 then
		local var_197_4, var_197_5 = arg_197_2(arg_197_1, arg_197_4)

		if var_197_4 then
			var_197_3 = (var_197_4 - var_197_0)^2 + (var_197_5 - var_197_1)^2
		end
	end

	for iter_197_0, iter_197_1 in ipairs(arg_197_0.enemies or {}) do
		if __recovered_scope_0.var_0_183(arg_197_0, arg_197_1, iter_197_1, arg_197_3) then
			local var_197_6, var_197_7 = arg_197_2(arg_197_1, iter_197_1)

			if var_197_6 then
				local var_197_8 = (var_197_6 - var_197_0)^2 + (var_197_7 - var_197_1)^2

				if not var_197_3 or var_197_8 < var_197_3 then
					var_197_2, var_197_3 = iter_197_1, var_197_8
				end
			end
		end
	end

	return var_197_2
end

function __recovered_scope_0.var_0_180.onStep(arg_198_0, arg_198_1, arg_198_2, arg_198_3, arg_198_4, arg_198_5, arg_198_6, arg_198_7, arg_198_8)
	if arg_198_3 <= 0 or not __recovered_scope_0.var_0_181(arg_198_1) or arg_198_1._eyeConfusionHit or not arg_198_1._eyeConfusion or (arg_198_1.life or 0) <= 0 or not __recovered_scope_0.var_0_182(arg_198_0) then
		return
	end

	local var_198_0

	if arg_198_1.asset == "ObserverLaser" then
		var_198_0 = __recovered_scope_0.var_0_185(arg_198_0, arg_198_1, arg_198_5, arg_198_7, arg_198_8)
	else
		local var_198_1 = arg_198_1._eyeConfusion
		local var_198_2 = arg_198_1.x
		local var_198_3 = arg_198_1.y
		local var_198_4 = arg_198_1.colX
		local var_198_5 = arg_198_1.colY
		local var_198_6 = var_198_2 - var_198_1.x
		local var_198_7 = var_198_3 - var_198_1.y
		local var_198_8 = math.max(1, math.ceil(math.sqrt(var_198_6 * var_198_6 + var_198_7 * var_198_7)))

		for iter_198_0 = 0, var_198_8 do
			local var_198_9 = iter_198_0 / var_198_8

			arg_198_1.x, arg_198_1.y = var_198_1.x + var_198_6 * var_198_9, var_198_1.y + var_198_7 * var_198_9
			arg_198_1.colX, arg_198_1.colY = (var_198_4 or var_198_2) + (arg_198_1.x - var_198_2), (var_198_5 or var_198_3) + (arg_198_1.y - var_198_3)

			if (arg_198_1.x - (arg_198_1.startX or var_198_1.x))^2 + (arg_198_1.y - (arg_198_1.startY or var_198_1.y))^2 >= (arg_198_1.minHitTravel or 0)^2 then
				if arg_198_8 and arg_198_4(arg_198_1, arg_198_2, arg_198_8) then
					break
				end

				for iter_198_1, iter_198_2 in ipairs(arg_198_0.enemies or {}) do
					if __recovered_scope_0.var_0_183(arg_198_0, arg_198_1, iter_198_2, arg_198_7) and iter_198_2.colX and iter_198_2.colY and arg_198_1.colX + (arg_198_1.colW or 0) >= iter_198_2.colX and iter_198_2.colX + (iter_198_2.colW or 0) >= arg_198_1.colX and arg_198_1.colY + (arg_198_1.colH or 0) >= iter_198_2.colY and iter_198_2.colY + (iter_198_2.colH or 0) >= arg_198_1.colY and arg_198_4(arg_198_1, arg_198_2, iter_198_2) then
						var_198_0 = iter_198_2

						break
					end
				end
			end

			if var_198_0 then
				break
			end
		end

		arg_198_1.x, arg_198_1.y, arg_198_1.colX, arg_198_1.colY = var_198_2, var_198_3, var_198_4, var_198_5
	end

	if var_198_0 then
		__recovered_scope_0.var_0_184(arg_198_0, arg_198_1, var_198_0, arg_198_6)
	end
end

function __recovered_scope_0.var_0_180.direct(arg_199_0, arg_199_1, arg_199_2, arg_199_3, arg_199_4, arg_199_5)
	local var_199_0 = {
		side = "enemy",
		life = 1,
		scale = 1,
		alive = true,
		basicAttack = true,
		owner = arg_199_1,
		awakeningCast = arg_199_1._awakening and arg_199_1._awakening.cast,
		chainCast = require("src.game.combat").chain_casting.capture(arg_199_1),
		x = arg_199_1.x,
		y = arg_199_1.y
	}

	__recovered_scope_0.var_0_180.beginStep(arg_199_0, var_199_0)

	if not var_199_0._eyeConfusion then
		return
	end

	var_199_0.startX, var_199_0.startY = arg_199_1.x, arg_199_1.y
	var_199_0.x = arg_199_2.colX and arg_199_2.colX + (arg_199_2.colW or 0) * 0.5 or arg_199_2.x
	var_199_0.y = arg_199_2.colY and arg_199_2.colY + (arg_199_2.colH or 0) * 0.5 or arg_199_2.y

	local var_199_1 = __recovered_scope_0.var_0_185(arg_199_0, var_199_0, arg_199_3, arg_199_5, arg_199_2)

	if var_199_1 then
		__recovered_scope_0.var_0_184(arg_199_0, var_199_0, var_199_1, arg_199_4)
	end
end

 __recovered_scope_0.var_0_186 = __recovered_scope_0.var_0_180
 __recovered_scope_0.var_0_187 = nil
 __recovered_scope_0.var_0_188 = {
	speed = 220,
	drawSize = function(arg_200_0)
		local var_200_0 = (arg_200_0.ui or {}).battle or {}

		if (var_200_0.allySize32 or 0) > 0 then
			return math.max(32, math.floor(var_200_0.allySize32 / 32) * 32)
		end

		local var_200_1 = arg_200_0.area or {}

		return 32 * math.max(1, math.ceil(math.floor(math.min(var_200_1.w or 320, var_200_1.h or 320) * 0.12 * (var_200_0.unitScale or 1)) / 32))
	end
}

function __recovered_scope_0.var_0_188.spritePoint(arg_201_0, arg_201_1, arg_201_2, arg_201_3, arg_201_4, arg_201_5, arg_201_6)
	local var_201_0 = __recovered_scope_0.var_0_188.drawSize(arg_201_0)
	local var_201_1 = arg_201_2.frameW or 32
	local var_201_2 = arg_201_2.frameH or 32
	local var_201_3 = arg_201_5 and math.max(1, math.floor(var_201_0 / 32 + 0.5)) or require("src.ui.widgets").sprite_anchor.uniformScale(arg_201_2, var_201_0)
	local var_201_4 = not arg_201_6 and _G.__slotBattleSpriteAirLift and _G.__slotBattleSpriteAirLift(arg_201_1, var_201_0) or 0
	local var_201_5 = tonumber(arg_201_1._spaceKnightWindupFacing) or tonumber(arg_201_1._twinStarBarrierFacing) or tonumber(arg_201_1._starJudgeScaleFacing) or arg_201_1.facing or arg_201_5 and -1 or 1
	local var_201_6 = var_201_3
	local var_201_7 = var_201_3
	local var_201_8
	local var_201_9

	if arg_201_5 then
		var_201_8, var_201_9 = math.floor((arg_201_1.x or 0) + 0.5), math.floor((arg_201_1.y or 0) - var_201_4 + 0.5)

		if not arg_201_6 and _G.__slotApplyEnemyHitShake then
			var_201_8, var_201_9 = _G.__slotApplyEnemyHitShake(arg_201_1, var_201_8, var_201_9)
		end

		for iter_201_0, iter_201_1 in ipairs({
			{
				"braceSquash",
				0.25,
				0.18,
				1
			},
			{
				"curseSquash",
				0.16,
				0.22,
				0.72
			}
		}) do
			local var_201_10 = arg_201_1[iter_201_1[1]]

			if var_201_10 and var_201_10.t and var_201_10.dur then
				local var_201_11 = math.max(0, math.min(1, var_201_10.t / math.max(0.001, var_201_10.dur or iter_201_1[3])))
				local var_201_12 = (var_201_10.amt or iter_201_1[2]) * math.sin(var_201_11 * math.pi)

				var_201_6, var_201_7 = var_201_6 * (1 + var_201_12), var_201_7 * (1 - var_201_12 * iter_201_1[4])
			end
		end

		arg_201_3, arg_201_4 = arg_201_3 - var_201_1 * 0.5, arg_201_4 - var_201_2 * 0.5
	else
		local var_201_13 = not arg_201_6 and arg_201_1.promoteVis and arg_201_1.promoteVis.prevX or arg_201_1.x or 0

		var_201_8 = math.floor(var_201_13 - var_201_1 * var_201_3 * 0.5)
		var_201_9 = math.floor((not arg_201_6 and arg_201_1.promoteVis and arg_201_1.promoteVis.prevY or (arg_201_1.y or 0) - var_201_4) - var_201_0 * 0.5)

		if arg_201_2.pixelScaleBase then
			var_201_9 = var_201_9 + var_201_0 - var_201_2 * var_201_3
		end

		local var_201_14, var_201_15 = require("src.ui.widgets").sprite_anchor.allyShift(arg_201_1, arg_201_2, var_201_0, arg_201_0.ui and arg_201_0.ui.battle, var_201_13)

		var_201_8, var_201_9 = var_201_8 + var_201_14, var_201_9 + var_201_15

		local var_201_16 = arg_201_1.hitShake

		if not arg_201_6 and var_201_16 and var_201_16.t and var_201_16.dur then
			local var_201_17 = math.max(0, math.min(1, var_201_16.t / math.max(0.001, var_201_16.dur)))

			var_201_8 = var_201_8 + math.floor((var_201_16.amp or 2) * (1 - var_201_17) + 0.5) * (math.floor(var_201_16.t * 60) % 2 == 0 and -1 or 1)
		end

		if not arg_201_6 then
			var_201_8, var_201_9, var_201_6, var_201_7 = require("src.game.awakening").basicVisual(arg_201_1, var_201_8, var_201_9, var_201_6, var_201_7)
		end

		if var_201_5 < 0 then
			var_201_8 = var_201_8 + var_201_1 * var_201_6
			arg_201_3 = -arg_201_3
		end
	end

	if arg_201_5 and var_201_5 < 0 then
		arg_201_3 = -arg_201_3
	end

	local var_201_18, var_201_19 = var_201_8 + arg_201_3 * var_201_6, var_201_9 + arg_201_4 * var_201_7 - (not arg_201_6 and arg_201_1._jumpYOffset or 0)
	local var_201_20 = _G.Render2 and _G.Render2.getUnitVisualScale and _G.Render2.getUnitVisualScale(arg_201_1, var_201_0) or 1
	local var_201_21 = (arg_201_1.enlargeScale or 1) * var_201_20

	if math.abs(var_201_21 - 1) > 0.001 then
		local var_201_22 = (tonumber(arg_201_1.demonLordDominionScale) or 1) > 1.0001 and var_201_2 * var_201_3 or var_201_0
		local var_201_23 = math.floor(arg_201_1.x or 0)
		local var_201_24 = math.floor((arg_201_1.y or 0) + var_201_22 * 0.5)

		if math.abs(var_201_20 - 1) > 0.001 then
			var_201_23, var_201_24 = math.floor((arg_201_1.x or 0) + 0.5), math.floor((arg_201_1.y or 0) + 0.5) + math.floor(var_201_22 * 0.5 + 0.5)
		end

		var_201_18, var_201_19 = var_201_23 + (var_201_18 - var_201_23) * var_201_21, var_201_24 + (var_201_19 - var_201_24) * var_201_21
	end

	return var_201_18, var_201_19
end

 function __recovered_scope_0.var_0_189(arg_202_0, arg_202_1, arg_202_2, arg_202_3)
	local var_202_0 = arg_202_0.getUnitAssetForEnemy and arg_202_0:getUnitAssetForEnemy(arg_202_1) or arg_202_0.assets and arg_202_0.assets.units and arg_202_0.assets.units[arg_202_1.skin or arg_202_1.kind]

	if not var_202_0 or not var_202_0.imageData then
		return nil
	end

	local var_202_1 = arg_202_2 or arg_202_1.anim and arg_202_1.anim.name or "idle"

	if not var_202_0.animations or not var_202_0.animations[var_202_1] then
		var_202_1 = var_202_0.animations and var_202_0.animations.walk and "walk" or "idle"
	end

	local var_202_2 = var_202_0.quads and var_202_0.quads[var_202_1]
	local var_202_3 = var_202_2 and var_202_2[math.max(1, math.min(#var_202_2, arg_202_3 or arg_202_1.anim and arg_202_1.anim.frame or 1))]

	if not var_202_3 then
		return nil
	end

	local var_202_4, var_202_5, var_202_6, var_202_7 = var_202_3:getViewport()
	local var_202_8 = var_202_4 .. ":" .. var_202_5 .. ":" .. var_202_6 .. ":" .. var_202_7

	var_202_0._spellbladeAnchors = var_202_0._spellbladeAnchors or {}

	local var_202_9 = var_202_0._spellbladeAnchors[var_202_8]

	if not var_202_9 then
		local var_202_10
		local var_202_11
		local var_202_12
		local var_202_13

		for iter_202_0 = 0, var_202_7 - 1 do
			local var_202_14
			local var_202_15

			for iter_202_1 = 0, var_202_6 - 1 do
				local var_202_16, var_202_17, var_202_18, var_202_19 = var_202_0.imageData:getPixel(var_202_4 + iter_202_1, var_202_5 + iter_202_0)

				if var_202_19 > 0 then
					var_202_14 = var_202_14 or iter_202_1
					var_202_15 = iter_202_1
				end
			end

			if var_202_14 then
				var_202_10 = var_202_10 or iter_202_0
				var_202_11 = iter_202_0
				var_202_12, var_202_13 = var_202_14, var_202_15
			end
		end

		if var_202_10 then
			var_202_9 = {
				x = (var_202_12 + var_202_13 + 1) * 0.5,
				y = (var_202_10 + var_202_11 + 1) * 0.5,
				half = (var_202_11 - var_202_10 + 1) * 0.5
			}
			var_202_0._spellbladeAnchors[var_202_8] = var_202_9
		end
	end

	return var_202_0, var_202_3, var_202_9
end

function __recovered_scope_0.var_0_188.targetPoint(arg_203_0, arg_203_1, arg_203_2, arg_203_3)
	local var_203_0, var_203_1, var_203_2 = __recovered_scope_0.var_0_189(arg_203_0, arg_203_1, arg_203_2, arg_203_3)

	if var_203_2 then
		return __recovered_scope_0.var_0_188.spritePoint(arg_203_0, arg_203_1, var_203_0, var_203_2.x, var_203_2.y, true)
	end

	return arg_203_1.x or 0, arg_203_1.y or 0
end

function __recovered_scope_0.var_0_188.targetCover(arg_204_0, arg_204_1, arg_204_2, arg_204_3, arg_204_4)
	local var_204_0, var_204_1, var_204_2 = __recovered_scope_0.var_0_189(arg_204_0, arg_204_1)

	if not var_204_2 then
		return nil
	end

	if arg_204_3 then
		local var_204_3, var_204_4, var_204_5 = __recovered_scope_0.var_0_189(arg_204_0, arg_204_1, arg_204_3, arg_204_4)

		var_204_2 = var_204_5 or var_204_2
	end

	arg_204_2 = arg_204_2 or {}

	local var_204_6, var_204_7 = __recovered_scope_0.var_0_188.spritePoint(arg_204_0, arg_204_1, var_204_0, 0, 0, true)
	local var_204_8, var_204_9 = __recovered_scope_0.var_0_188.spritePoint(arg_204_0, arg_204_1, var_204_0, 1, 1, true)

	arg_204_2.data, arg_204_2.ox, arg_204_2.oy, arg_204_2.ux, arg_204_2.uy = var_204_0.imageData, var_204_6, var_204_7, var_204_8 - var_204_6, var_204_9 - var_204_7
	arg_204_2.qx, arg_204_2.qy, arg_204_2.qw, arg_204_2.qh = var_204_1:getViewport()
	arg_204_2.half = var_204_2.half * math.abs(var_204_9 - var_204_7)

	return arg_204_2
end

function __recovered_scope_0.var_0_188.launch(arg_205_0, arg_205_1, arg_205_2, arg_205_3, arg_205_4, arg_205_5)
	local var_205_0 = arg_205_1.skill or {}

	arg_205_5 = arg_205_5 or arg_205_0.getUnitAssetForAlly and arg_205_0:getUnitAssetForAlly(arg_205_1)

	local var_205_1, var_205_2 = __recovered_scope_0.var_0_51.findAttackMarker(arg_205_5, {
		animation = "attack2",
		exactPixel = true,
		b = 195,
		g = 171,
		r = 139,
		cacheKey = "_spellbladeLaunchMarker",
		frame = 3
	})

	if not var_205_1 then
		return nil
	end

	local var_205_3, var_205_4 = __recovered_scope_0.var_0_188.spritePoint(arg_205_0, arg_205_1, arg_205_5, var_205_1, var_205_2, false)
	local var_205_5, var_205_6 = __recovered_scope_0.var_0_188.targetPoint(arg_205_0, arg_205_2)
	local var_205_7 = math.sqrt((var_205_5 - var_205_3)^2 + (var_205_6 - var_205_4)^2) / __recovered_scope_0.var_0_188.speed
	local var_205_8 = {
		state = "flight",
		lastUpdateT = 0,
		t = 0,
		kind = "spellblade_vortex",
		holdSpawnPosition = true,
		x = var_205_3,
		y = var_205_4,
		sx = var_205_3,
		sy = var_205_4,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_188.drawSize(arg_205_0) / 32 + 0.5)),
		speed = __recovered_scope_0.var_0_188.speed,
		dirX = var_205_5 - var_205_3,
		dirY = var_205_6 - var_205_4,
		flight = var_205_7,
		spinDuration = var_205_0.dur or 0.8,
		dur = var_205_7 + (var_205_0.dur or 0.8),
		owner = arg_205_1,
		target = arg_205_2,
		atk = arg_205_3,
		dmgMul = var_205_0.dmgMul or 1.4,
		splashDmgMul = var_205_0.splashDmgMul or 0.8,
		pullDistance = var_205_0.pullDistance or 50,
		metric = arg_205_4,
		chainCast = require("src.game.combat").chain_casting.capture(arg_205_1),
		awakeningCast = arg_205_1._awakening and arg_205_1._awakening.cast
	}

	arg_205_0.vfx = arg_205_0.vfx or {}
	arg_205_0.vfx[#arg_205_0.vfx + 1] = var_205_8

	return var_205_8
end

function __recovered_scope_0.var_0_188.update(arg_206_0, arg_206_1, arg_206_2, arg_206_3)
	if arg_206_1.finished then
		return
	end

	local var_206_0 = require("src.game.unit_abilities").spellblade_vortex

	if arg_206_1.holdSpawnPosition then
		arg_206_1.holdSpawnPosition = nil
		arg_206_1.t = 0
		arg_206_1.lastUpdateT = 0

		return
	end

	local var_206_1 = math.max(0, (arg_206_1.t or 0) - (arg_206_1.lastUpdateT or 0))

	arg_206_1.lastUpdateT = arg_206_1.t or 0

	if not arg_206_1.applied then
		if not var_206_0.targetable(arg_206_0, arg_206_1.owner, arg_206_1.target, arg_206_2) then
			arg_206_1.finished = true

			return
		end

		local var_206_2, var_206_3 = __recovered_scope_0.var_0_188.targetPoint(arg_206_0, arg_206_1.target)
		local var_206_4 = var_206_2 - arg_206_1.x
		local var_206_5 = var_206_3 - arg_206_1.y
		local var_206_6 = math.sqrt(var_206_4 * var_206_4 + var_206_5 * var_206_5)
		local var_206_7 = arg_206_1.speed * var_206_1

		arg_206_1.dirX, arg_206_1.dirY = var_206_4, var_206_5

		if var_206_6 <= var_206_7 + 1e-07 then
			arg_206_1.x, arg_206_1.y = var_206_2, var_206_3
			arg_206_1.flight = (arg_206_1.t or 0) - var_206_1 + var_206_6 / arg_206_1.speed
			arg_206_1.dur = arg_206_1.flight + arg_206_1.spinDuration
			arg_206_1.state = "vortex"

			var_206_0.impact(arg_206_0, arg_206_1, arg_206_2, arg_206_3)
		else
			arg_206_1.x, arg_206_1.y = arg_206_1.x + var_206_4 / var_206_6 * var_206_7, arg_206_1.y + var_206_5 / var_206_6 * var_206_7
			arg_206_1.dur = (arg_206_1.t or 0) + var_206_6 / arg_206_1.speed + arg_206_1.spinDuration
		end
	end

	if arg_206_1.applied and not arg_206_1.finished then
		arg_206_1.x, arg_206_1.y = __recovered_scope_0.var_0_188.targetPoint(arg_206_0, arg_206_1.target)
		arg_206_1.cover = __recovered_scope_0.var_0_188.targetCover(arg_206_0, arg_206_1.target, arg_206_1.cover)

		local var_206_8 = math.max(0, math.min(1, ((arg_206_1.t or 0) - arg_206_1.flight) / arg_206_1.spinDuration))

		var_206_0.advancePull(arg_206_0, arg_206_1, var_206_8, arg_206_2)

		if var_206_8 >= 1 then
			arg_206_1.finished = true
		end
	end
end

 __recovered_scope_0.var_0_190 = __recovered_scope_0.var_0_188
 __recovered_scope_0.var_0_191 = nil
 __recovered_scope_0.var_0_192 = {
	speed = 200,
	burst = 0.65,
	targetPoint = function(arg_207_0, arg_207_1)
		return __recovered_scope_0.var_0_190.targetPoint(arg_207_0, arg_207_1, "idle", 1)
	end
}

function __recovered_scope_0.var_0_192.launch(arg_208_0, arg_208_1, arg_208_2, arg_208_3, arg_208_4, arg_208_5)
	local var_208_0 = arg_208_1.skill or {}

	arg_208_5 = arg_208_5 or arg_208_0.getUnitAssetForAlly and arg_208_0:getUnitAssetForAlly(arg_208_1)

	local var_208_1, var_208_2 = __recovered_scope_0.var_0_51.findAttackMarker(arg_208_5, {
		animation = "attack3",
		b = 96,
		g = 208,
		r = 72,
		cacheKey = "_arcaneCollapseLaunchMarker",
		frame = var_208_0.releaseFrame or 5
	})

	if not var_208_1 then
		return nil
	end

	local var_208_3, var_208_4 = __recovered_scope_0.var_0_190.spritePoint(arg_208_0, arg_208_1, arg_208_5, var_208_1, var_208_2, false)
	local var_208_5, var_208_6 = __recovered_scope_0.var_0_192.targetPoint(arg_208_0, arg_208_2)
	local var_208_7 = var_208_0.dur or 1
	local var_208_8 = math.sqrt((var_208_5 - var_208_3)^2 + (var_208_6 - var_208_4)^2) / __recovered_scope_0.var_0_192.speed
	local var_208_9 = {
		state = "flight",
		lastUpdateT = 0,
		t = 0,
		kind = "arcane_collapse",
		holdSpawnPosition = true,
		x = var_208_3,
		y = var_208_4,
		sx = var_208_3,
		sy = var_208_4,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_208_0) / 32 + 0.5)),
		speed = __recovered_scope_0.var_0_192.speed,
		dirX = var_208_5 - var_208_3,
		dirY = var_208_6 - var_208_4,
		flight = var_208_8,
		collapse = var_208_7,
		burst = __recovered_scope_0.var_0_192.burst,
		dur = var_208_8 + var_208_7 + __recovered_scope_0.var_0_192.burst,
		owner = arg_208_1,
		target = arg_208_2,
		atk = arg_208_3,
		dmgMul = var_208_0.dmgMul or 0.9,
		maxTargets = var_208_0.maxTargets or 3,
		radius = var_208_0.radius or 90,
		pullDistance = var_208_0.pullDistance or 50,
		metric = arg_208_4,
		burstRadius = require("src.game.unit_abilities").arcane_collapse.BURST_RADIUS,
		groundScale = math.max(0.1, math.min(1, tonumber(arg_208_0.ui and arg_208_0.ui.battle and arg_208_0.ui.battle.rangeEllipseYScale) or 0.5)),
		chainCast = require("src.game.combat").chain_casting.capture(arg_208_1),
		awakeningCast = arg_208_1._awakening and arg_208_1._awakening.cast
	}

	arg_208_0.vfx = arg_208_0.vfx or {}
	arg_208_0.vfx[#arg_208_0.vfx + 1] = var_208_9

	return var_208_9
end

function __recovered_scope_0.var_0_192.update(arg_209_0, arg_209_1, arg_209_2, arg_209_3)
	if arg_209_1.finished then
		return
	end

	local var_209_0 = require("src.game.unit_abilities").arcane_collapse

	if arg_209_1.holdSpawnPosition then
		arg_209_1.holdSpawnPosition = nil
		arg_209_1.t = 0
		arg_209_1.lastUpdateT = 0

		return
	end

	local var_209_1 = math.max(0, (arg_209_1.t or 0) - (arg_209_1.lastUpdateT or 0))

	arg_209_1.lastUpdateT = arg_209_1.t or 0

	if arg_209_1.state == "flight" then
		if not var_209_0.targetable(arg_209_0, arg_209_1.owner, arg_209_1.target, arg_209_2) then
			arg_209_1.finished = true

			return
		end

		local var_209_2, var_209_3 = __recovered_scope_0.var_0_192.targetPoint(arg_209_0, arg_209_1.target)
		local var_209_4 = var_209_2 - arg_209_1.x
		local var_209_5 = var_209_3 - arg_209_1.y
		local var_209_6 = math.sqrt(var_209_4 * var_209_4 + var_209_5 * var_209_5)
		local var_209_7 = arg_209_1.speed * var_209_1

		arg_209_1.dirX, arg_209_1.dirY = var_209_4, var_209_5

		if var_209_6 <= var_209_7 + 1e-07 then
			arg_209_1.x, arg_209_1.y = var_209_2, var_209_3
			arg_209_1.flight = (arg_209_1.t or 0) - var_209_1 + var_209_6 / arg_209_1.speed
			arg_209_1.dur = arg_209_1.flight + arg_209_1.collapse + arg_209_1.burst
			arg_209_1.state = "collapse"

			var_209_0.gather(arg_209_0, arg_209_1, arg_209_2)
		else
			arg_209_1.x, arg_209_1.y = arg_209_1.x + var_209_4 / var_209_6 * var_209_7, arg_209_1.y + var_209_5 / var_209_6 * var_209_7
			arg_209_1.dur = (arg_209_1.t or 0) + var_209_6 / arg_209_1.speed + arg_209_1.collapse + arg_209_1.burst
		end
	end

	if arg_209_1.state == "collapse" then
		if var_209_0.targetable(arg_209_0, arg_209_1.owner, arg_209_1.target, arg_209_2) then
			arg_209_1.x, arg_209_1.y = __recovered_scope_0.var_0_192.targetPoint(arg_209_0, arg_209_1.target)
			arg_209_1.cover = __recovered_scope_0.var_0_190.targetCover(arg_209_0, arg_209_1.target, arg_209_1.cover, "idle", 1)
		else
			arg_209_1.cover = nil
		end

		local var_209_8 = math.max(0, math.min(1, ((arg_209_1.t or 0) - arg_209_1.flight) / arg_209_1.collapse))

		var_209_0.advancePull(arg_209_0, arg_209_1, var_209_8, arg_209_2)

		if var_209_8 >= 1 then
			var_209_0.explode(arg_209_0, arg_209_1, arg_209_2, arg_209_3)

			arg_209_1.state = "burst"
		end
	end

	if arg_209_1.state == "burst" and (arg_209_1.t or 0) >= arg_209_1.flight + arg_209_1.collapse + arg_209_1.burst then
		arg_209_1.finished = true
	end
end

 __recovered_scope_0.var_0_193 = __recovered_scope_0.var_0_192
 __recovered_scope_0.var_0_194 = nil
 __recovered_scope_0.var_0_195 = {
	IMPACT = 0.3,
	GAP = 0.24,
	FALL = 0.4,
	SPAWN = 0.2,
	LEAN = 0,
	HEIGHT = 100,
	AFTER = 0.45
}

function __recovered_scope_0.var_0_195.launch(arg_210_0, arg_210_1, arg_210_2, arg_210_3, arg_210_4, arg_210_5, arg_210_6)
	local var_210_0 = arg_210_1.skill or {}
	local var_210_1 = arg_210_6 and arg_210_6.gap or __recovered_scope_0.var_0_195.GAP
	local var_210_2 = {
		lastUpdateT = 0,
		t = 0,
		holdSpawnPosition = true,
		kind = "arrow_rain",
		owner = arg_210_1,
		atk = arg_210_3,
		metric = arg_210_4,
		dmgMul = var_210_0.dmgMul or 0.7,
		base = arg_210_5 or 3,
		arrows = {},
		knocked = {},
		pushed = {},
		gap = var_210_1,
		style = arg_210_6 and arg_210_6.style,
		height = arg_210_6 and arg_210_6.height,
		fall = arg_210_6 and arg_210_6.fall,
		facing = (arg_210_1.facing or 1) < 0 and -1 or 1,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_210_0) / 32 + 0.5)),
		groundScale = math.max(0.1, math.min(1, tonumber(arg_210_0.ui and arg_210_0.ui.battle and arg_210_0.ui.battle.rangeEllipseYScale) or 0.5)),
		chainCast = require("src.game.combat").chain_casting.capture(arg_210_1),
		awakeningCast = arg_210_1._awakening and arg_210_1._awakening.cast
	}

	for iter_210_0, iter_210_1 in ipairs(arg_210_2) do
		var_210_2.arrows[iter_210_0] = {
			index = iter_210_0,
			target = iter_210_1.target,
			bloom = iter_210_1.bloom,
			at = (iter_210_0 - 1) * var_210_1
		}
	end

	var_210_2.dur = (#arg_210_2 - 1) * var_210_1 + __recovered_scope_0.var_0_195.SPAWN + (var_210_2.fall or __recovered_scope_0.var_0_195.FALL) + math.max(__recovered_scope_0.var_0_195.IMPACT, __recovered_scope_0.var_0_195.AFTER)

	for iter_210_2, iter_210_3 in ipairs(var_210_2.arrows) do
		__recovered_scope_0.var_0_195.aim(arg_210_0, var_210_2, iter_210_3)
	end

	arg_210_0.vfx = arg_210_0.vfx or {}
	arg_210_0.vfx[#arg_210_0.vfx + 1] = var_210_2

	return var_210_2
end

function __recovered_scope_0.var_0_195.stableFeet(arg_211_0, arg_211_1)
	local var_211_0 = setmetatable({
		braceSquash = false,
		curseSquash = false,
		hitShake = false
	}, {
		__index = arg_211_1
	})

	return require("src.game.unit_abilities").shadow_harvest.footPoint(arg_211_0, var_211_0, true)
end

function __recovered_scope_0.var_0_195.settledX(arg_212_0, arg_212_1)
	local var_212_0 = require("src.game.unit_abilities").arrow_rain
	local var_212_1 = arg_212_1.target
	local var_212_2 = var_212_1.x or 0
	local var_212_3 = var_212_1._kb

	if var_212_3 and var_212_3.waveHop then
		local var_212_4 = math.min(1, (var_212_3.t or 0) / math.max(0.001, var_212_3.dur or 1))

		return var_212_2 + (var_212_3.dirX or 0) * (var_212_3.dist or 0) * (1 - (2 * var_212_4 - var_212_4 * var_212_4))
	end

	if arg_212_0.knocked[var_212_1] or not var_212_0.pushable(var_212_1) then
		return var_212_2
	end

	for iter_212_0, iter_212_1 in ipairs(arg_212_0.arrows) do
		if iter_212_1 ~= arg_212_1 and iter_212_1.target == var_212_1 and not iter_212_1.bloom and not iter_212_1.landed and iter_212_1.at < arg_212_1.at then
			return var_212_2 + ((var_212_1.x or 0) >= (arg_212_0.owner.x or 0) and 1 or -1) * var_212_0.KNOCKBACK
		end
	end

	return var_212_2
end

function __recovered_scope_0.var_0_195.aim(arg_213_0, arg_213_1, arg_213_2)
	local var_213_0 = arg_213_2.target
	local var_213_1, var_213_2 = __recovered_scope_0.var_0_195.stableFeet(arg_213_0, var_213_0)

	arg_213_2.offX, arg_213_2.offY = var_213_1 - (var_213_0.x or 0), var_213_2 - (var_213_0.y or 0)
	arg_213_2.x, arg_213_2.footY = __recovered_scope_0.var_0_195.settledX(arg_213_1, arg_213_2) + arg_213_2.offX, (var_213_0.y or 0) + arg_213_2.offY
end

function __recovered_scope_0.var_0_195.update(arg_214_0, arg_214_1, arg_214_2, arg_214_3)
	if arg_214_1.finished then
		return
	end

	if arg_214_1.holdSpawnPosition then
		arg_214_1.holdSpawnPosition = nil
		arg_214_1.t = 0
		arg_214_1.lastUpdateT = 0

		return
	end

	local var_214_0 = math.max(0, (arg_214_1.t or 0) - (arg_214_1.lastUpdateT or 0))

	arg_214_1.lastUpdateT = arg_214_1.t or 0

	local var_214_1 = require("src.game.unit_abilities").arrow_rain

	for iter_214_0, iter_214_1 in ipairs(arg_214_1.arrows) do
		local var_214_2 = (arg_214_1.t or 0) - iter_214_1.at

		if var_214_2 >= 0 and not iter_214_1.landed then
			if not iter_214_1.aimed then
				iter_214_1.aimed = true

				if not var_214_1.targetable(arg_214_0, arg_214_1.owner, iter_214_1.target, arg_214_2) then
					local var_214_3 = not iter_214_1.bloom and var_214_1.retarget(arg_214_0, arg_214_1, iter_214_1, arg_214_2)

					if var_214_3 then
						iter_214_1.target = var_214_3
					else
						iter_214_1.lost = true
					end
				end

				if not iter_214_1.lost then
					__recovered_scope_0.var_0_195.aim(arg_214_0, arg_214_1, iter_214_1)
				end
			end

			if var_214_2 >= __recovered_scope_0.var_0_195.SPAWN + (arg_214_1.fall or __recovered_scope_0.var_0_195.FALL) - 1e-09 then
				iter_214_1.landed = true

				local var_214_4 = not iter_214_1.lost and var_214_1.catch(arg_214_0, arg_214_1, iter_214_1, arg_214_2)

				if var_214_4 then
					iter_214_1.target = var_214_4
					iter_214_1.struck = var_214_1.hit(arg_214_0, arg_214_1, iter_214_1, arg_214_2, arg_214_3)
				end
			end
		end
	end

	var_214_1.carryFallen(arg_214_1, var_214_0)

	if (arg_214_1.t or 0) >= arg_214_1.dur then
		arg_214_1.finished = true
	end
end

 __recovered_scope_0.var_0_196 = __recovered_scope_0.var_0_195
 __recovered_scope_0.var_0_197 = nil
 __recovered_scope_0.var_0_198 = {
	SINK = 6,
	SUCK = 0.15,
	SHEET = "src/sprites/units/ArcherMan/04Legend/02LegendArcherMan_02Skill.png",
	POP = 0.08,
	SPEED = 180,
	FRAME = 0.1,
	IMPACT = 0.45,
	BODY_R = 12,
	HALF = 5,
	TAIL = 7,
	TIP = 7,
	GROW = 0.25,
	FADE = 0.3,
	RANGE = 300,
	SNAP = math.rad(8)
}
 __recovered_scope_0.var_0_199 = {}

function __recovered_scope_0.var_0_198.cellsOf(arg_215_0)
	local var_215_0 = {}

	for iter_215_0 = 1, math.floor(arg_215_0:getWidth() / 16) do
		local var_215_1 = {}

		for iter_215_1 = 0, 15 do
			for iter_215_2 = 0, 15 do
				local var_215_2, var_215_3, var_215_4, var_215_5 = arg_215_0:getPixel((iter_215_0 - 1) * 16 + iter_215_2, iter_215_1)

				if var_215_5 > 0 then
					var_215_1[#var_215_1 + 1] = {
						iter_215_2,
						iter_215_1
					}
				end
			end
		end

		var_215_0[iter_215_0] = var_215_1
	end

	return var_215_0
end

function __recovered_scope_0.var_0_198.useSheet(arg_216_0, arg_216_1)
	__recovered_scope_0.var_0_199[arg_216_0] = __recovered_scope_0.var_0_198.cellsOf(arg_216_1)
end

function __recovered_scope_0.var_0_198.cells(arg_217_0)
	arg_217_0 = arg_217_0 or __recovered_scope_0.var_0_198.SHEET

	if __recovered_scope_0.var_0_199[arg_217_0] == nil then
		local var_217_0, var_217_1 = pcall(function()
			return love.image.newImageData(arg_217_0)
		end)

		__recovered_scope_0.var_0_199[arg_217_0] = var_217_0 and var_217_1 and __recovered_scope_0.var_0_198.cellsOf(var_217_1) or false
	end

	return __recovered_scope_0.var_0_199[arg_217_0] or nil
end

function __recovered_scope_0.var_0_198.frame(arg_219_0)
	return 1 + math.floor(math.max(0, arg_219_0 or 0) / __recovered_scope_0.var_0_198.FRAME) % 4
end

function __recovered_scope_0.var_0_198.grown(arg_220_0, arg_220_1)
	local var_220_0 = 0

	for iter_220_0, iter_220_1 in ipairs(arg_220_0.swallows or {}) do
		if arg_220_1 >= iter_220_1.t + __recovered_scope_0.var_0_198.SUCK then
			var_220_0 = var_220_0 + 1
		end
	end

	return var_220_0
end

function __recovered_scope_0.var_0_198.density()
	local var_221_0 = tonumber(rawget(_G, "__slotGameplayCanvasDensity"))

	return var_221_0 and var_221_0 > 0 and var_221_0 or 1
end

function __recovered_scope_0.var_0_198.texel(arg_222_0, arg_222_1, arg_222_2)
	local var_222_0 = arg_222_2 or __recovered_scope_0.var_0_198.density()
	local var_222_1 = __recovered_scope_0.var_0_198.grown(arg_222_0, arg_222_1)
	local var_222_2 = require("src.game.unit_abilities").shrink_imprint.growTexelPixels(arg_222_0.pixel or 2, var_222_0, __recovered_scope_0.var_0_198.GROW, var_222_1 + (arg_222_0.sizeStep or 0))
	local var_222_3 = arg_222_0.swallows and arg_222_0.swallows[var_222_1]

	if var_222_3 and arg_222_1 < var_222_3.t + __recovered_scope_0.var_0_198.SUCK + __recovered_scope_0.var_0_198.POP then
		var_222_2 = math.floor(var_222_2 + 0.0001) + 1
	end

	return var_222_2 / var_222_0, var_222_1
end

function __recovered_scope_0.var_0_198.pose(arg_223_0)
	local var_223_0 = (arg_223_0.dirX or 1) < 0 and -1 or 1
	local var_223_1 = math.atan2((arg_223_0.dirY or 0) * var_223_0, (arg_223_0.dirX or 1) * var_223_0)

	if math.abs(var_223_1) < __recovered_scope_0.var_0_198.SNAP then
		var_223_1 = 0
	end

	local var_223_2 = math.cos(var_223_1)
	local var_223_3 = math.sin(var_223_1)

	return var_223_1, var_223_0, var_223_2 * var_223_0, var_223_3 * var_223_0, -var_223_3, var_223_2
end

function __recovered_scope_0.var_0_198.at(arg_224_0, arg_224_1, arg_224_2, arg_224_3, arg_224_4, arg_224_5)
	local var_224_0, var_224_1, var_224_2, var_224_3, var_224_4, var_224_5 = __recovered_scope_0.var_0_198.pose(arg_224_0)

	return arg_224_1 + (var_224_2 * arg_224_3 + var_224_4 * arg_224_4) * arg_224_5, arg_224_2 + (var_224_3 * arg_224_3 + var_224_5 * arg_224_4) * arg_224_5
end

function __recovered_scope_0.var_0_198.mouth(arg_225_0, arg_225_1, arg_225_2, arg_225_3)
	return __recovered_scope_0.var_0_198.at(arg_225_0, arg_225_2 or arg_225_0.x, arg_225_3 or arg_225_0.y, __recovered_scope_0.var_0_198.TIP - 3, 0, arg_225_1)
end

function __recovered_scope_0.var_0_198.snap(arg_226_0, arg_226_1, arg_226_2)
	if __recovered_scope_0.var_0_198.pose(arg_226_0) ~= 0 then
		return arg_226_1, arg_226_2
	end

	local var_226_0 = __recovered_scope_0.var_0_198.density()

	return math.floor(arg_226_1 * var_226_0 + 0.5) / var_226_0, math.floor(arg_226_2 * var_226_0 + 0.5) / var_226_0
end

function __recovered_scope_0.var_0_198.launch(arg_227_0, arg_227_1, arg_227_2, arg_227_3, arg_227_4)
	local var_227_0 = arg_227_1.skill or {}

	arg_227_4 = arg_227_4 or arg_227_0.getUnitAssetForAlly and arg_227_0:getUnitAssetForAlly(arg_227_1)

	local var_227_1, var_227_2 = __recovered_scope_0.var_0_51.findAttackMarker(arg_227_4, {
		exactPixel = true,
		b = 241,
		g = 241,
		r = 209,
		cacheKey = "_hollowArrowLaunchMarker",
		animation = var_227_0.activeAnim or "attack2",
		frame = var_227_0.releaseFrame or 8
	})

	if not var_227_1 then
		return nil
	end

	local var_227_3, var_227_4 = __recovered_scope_0.var_0_190.spritePoint(arg_227_0, arg_227_1, arg_227_4, var_227_1, var_227_2, false)
	local var_227_5
	local var_227_6

	if arg_227_2 then
		var_227_5, var_227_6 = __recovered_scope_0.var_0_190.targetPoint(arg_227_0, arg_227_2)
	else
		var_227_5, var_227_6 = var_227_3 + ((arg_227_1.facing or 1) < 0 and -100 or 100), var_227_4
	end

	return __recovered_scope_0.var_0_198.spawn(arg_227_0, arg_227_1, arg_227_2, arg_227_3, var_227_3, var_227_4, var_227_5, var_227_6)
end

function __recovered_scope_0.var_0_198.spawn(arg_228_0, arg_228_1, arg_228_2, arg_228_3, arg_228_4, arg_228_5, arg_228_6, arg_228_7)
	local var_228_0 = arg_228_1.skill or {}
	local var_228_1 = arg_228_1.primarySkillDef and arg_228_1.primarySkillDef.runtime or {}
	local var_228_2 = arg_228_6 - arg_228_4
	local var_228_3 = arg_228_7 - arg_228_5
	local var_228_4 = math.sqrt(var_228_2 * var_228_2 + var_228_3 * var_228_3)

	if var_228_4 < 1e-06 then
		var_228_2, var_228_3, var_228_4 = (arg_228_1.facing or 1) < 0 and -1 or 1, 0, 1
	end

	local var_228_5 = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_228_0) / 32 + 0.5))
	local var_228_6 = {
		state = "flight",
		lastUpdateT = 0,
		t = 0,
		holdSpawnPosition = true,
		kind = "hollow_arrow",
		travel = 0,
		sx = arg_228_4,
		sy = arg_228_5,
		dirX = var_228_2 / var_228_4,
		dirY = var_228_3 / var_228_4,
		speed = __recovered_scope_0.var_0_198.SPEED,
		range = __recovered_scope_0.var_0_198.RANGE,
		dur = __recovered_scope_0.var_0_198.RANGE / __recovered_scope_0.var_0_198.SPEED + __recovered_scope_0.var_0_198.FADE,
		owner = arg_228_1,
		target = arg_228_2,
		atk = arg_228_3,
		dmgMul = var_228_0.dmgMul or tonumber(var_228_1.dmgMul) or 1.7,
		swallowDmgMul = tonumber(var_228_1.swallowDmgMul or var_228_0.swallowDmgMul) or 0.3,
		maxSwallow = tonumber(var_228_1.maxProjectiles or var_228_0.maxProjectiles) or 2,
		swallows = {},
		pixel = var_228_5,
		sizeStep = tonumber(var_228_1.sizeStep) or 0,
		sheet = var_228_1.sheet or __recovered_scope_0.var_0_198.SHEET,
		style = var_228_1.style,
		chainCast = require("src.game.combat").chain_casting.capture(arg_228_1),
		awakeningCast = arg_228_1._awakening and arg_228_1._awakening.cast
	}
	local var_228_7 = __recovered_scope_0.var_0_198.texel(var_228_6, 0)

	var_228_6.x, var_228_6.y = arg_228_4 + var_228_6.dirX * __recovered_scope_0.var_0_198.TAIL * var_228_7, arg_228_5 + var_228_6.dirY * __recovered_scope_0.var_0_198.TAIL * var_228_7
	arg_228_0.vfx = arg_228_0.vfx or {}
	arg_228_0.vfx[#arg_228_0.vfx + 1] = var_228_6

	return var_228_6
end

function __recovered_scope_0.var_0_198.touches(arg_229_0, arg_229_1, arg_229_2, arg_229_3)
	if arg_229_3 then
		local var_229_0 = math.floor((arg_229_1 - arg_229_3.ox) / arg_229_3.ux)
		local var_229_1 = math.floor((arg_229_2 - arg_229_3.oy) / arg_229_3.uy)

		if var_229_0 < 0 or var_229_1 < 0 or var_229_0 >= arg_229_3.qw or var_229_1 >= arg_229_3.qh then
			return false
		end

		local var_229_2, var_229_3, var_229_4, var_229_5 = arg_229_3.data:getPixel(arg_229_3.qx + var_229_0, arg_229_3.qy + var_229_1)

		return var_229_5 > 0
	end

	local var_229_6 = arg_229_1 - (arg_229_0.x or 0)
	local var_229_7 = arg_229_2 - (arg_229_0.y or 0)

	return var_229_6 * var_229_6 + var_229_7 * var_229_7 <= __recovered_scope_0.var_0_198.BODY_R * __recovered_scope_0.var_0_198.BODY_R
end

 function __recovered_scope_0.var_0_200(arg_230_0, arg_230_1, arg_230_2, arg_230_3, arg_230_4)
	local var_230_0 = (arg_230_1 - arg_230_0.ox) / arg_230_0.ux
	local var_230_1 = (arg_230_3 - arg_230_0.ox) / arg_230_0.ux
	local var_230_2 = (arg_230_2 - arg_230_0.oy) / arg_230_0.uy
	local var_230_3 = (arg_230_4 - arg_230_0.oy) / arg_230_0.uy
	local var_230_4 = math.max(0, math.floor(math.min(var_230_0, var_230_1) + 1e-06))
	local var_230_5 = math.min(arg_230_0.qw - 1, math.ceil(math.max(var_230_0, var_230_1) - 1e-06) - 1)
	local var_230_6 = math.max(0, math.floor(math.min(var_230_2, var_230_3) + 1e-06))
	local var_230_7 = math.min(arg_230_0.qh - 1, math.ceil(math.max(var_230_2, var_230_3) - 1e-06) - 1)

	for iter_230_0 = var_230_6, var_230_7 do
		for iter_230_1 = var_230_4, var_230_5 do
			local var_230_8, var_230_9, var_230_10, var_230_11 = arg_230_0.data:getPixel(arg_230_0.qx + iter_230_1, arg_230_0.qy + iter_230_0)

			if var_230_11 > 0 then
				return true
			end
		end
	end

	return false
end

__recovered_scope_0.var_0_198.coverOverlaps = __recovered_scope_0.var_0_200

 __recovered_scope_0.var_0_201 = {
	{
		0.5,
		0.5
	},
	{
		0.08,
		0.08
	},
	{
		0.92,
		0.08
	},
	{
		0.08,
		0.92
	},
	{
		0.92,
		0.92
	}
}

function __recovered_scope_0.var_0_198.overlaps(arg_231_0, arg_231_1, arg_231_2, arg_231_3, arg_231_4, arg_231_5, arg_231_6)
	local var_231_0 = __recovered_scope_0.var_0_198.cells(arg_231_0.sheet)
	local var_231_1, var_231_2, var_231_3, var_231_4, var_231_5, var_231_6 = __recovered_scope_0.var_0_198.pose(arg_231_0)

	if not var_231_0 then
		local var_231_7, var_231_8 = __recovered_scope_0.var_0_198.at(arg_231_0, arg_231_1, arg_231_2, __recovered_scope_0.var_0_198.TIP, 0, arg_231_3)
		local var_231_9, var_231_10 = __recovered_scope_0.var_0_198.at(arg_231_0, arg_231_1, arg_231_2, __recovered_scope_0.var_0_198.TIP - 3, -__recovered_scope_0.var_0_198.HALF, arg_231_3)
		local var_231_11, var_231_12 = __recovered_scope_0.var_0_198.at(arg_231_0, arg_231_1, arg_231_2, __recovered_scope_0.var_0_198.TIP - 3, __recovered_scope_0.var_0_198.HALF, arg_231_3)

		return __recovered_scope_0.var_0_198.touches(arg_231_5, var_231_7, var_231_8, arg_231_6) or __recovered_scope_0.var_0_198.touches(arg_231_5, var_231_9, var_231_10, arg_231_6) or __recovered_scope_0.var_0_198.touches(arg_231_5, var_231_11, var_231_12, arg_231_6)
	end

	arg_231_1, arg_231_2 = __recovered_scope_0.var_0_198.snap(arg_231_0, arg_231_1, arg_231_2)

	for iter_231_0, iter_231_1 in ipairs(var_231_0[arg_231_4] or var_231_0[1]) do
		if var_231_1 == 0 then
			local var_231_13 = arg_231_1 + (iter_231_1[1] - 8) * arg_231_3 * var_231_2
			local var_231_14 = arg_231_1 + (iter_231_1[1] - 7) * arg_231_3 * var_231_2

			if var_231_14 < var_231_13 then
				var_231_13, var_231_14 = var_231_14, var_231_13
			end

			local var_231_15 = arg_231_2 + (iter_231_1[2] - 8) * arg_231_3

			if arg_231_6 then
				if __recovered_scope_0.var_0_200(arg_231_6, var_231_13, var_231_15, var_231_14, var_231_15 + arg_231_3) then
					return true
				end
			elseif __recovered_scope_0.var_0_198.touches(arg_231_5, (var_231_13 + var_231_14) * 0.5, var_231_15 + arg_231_3 * 0.5) then
				return true
			end
		else
			for iter_231_2, iter_231_3 in ipairs(__recovered_scope_0.var_0_201) do
				local var_231_16 = iter_231_1[1] - 8 + iter_231_3[1]
				local var_231_17 = iter_231_1[2] - 8 + iter_231_3[2]

				if __recovered_scope_0.var_0_198.touches(arg_231_5, arg_231_1 + (var_231_3 * var_231_16 + var_231_5 * var_231_17) * arg_231_3, arg_231_2 + (var_231_4 * var_231_16 + var_231_6 * var_231_17) * arg_231_3, arg_231_6) then
					return true
				end
			end
		end
	end

	return false
end

function __recovered_scope_0.var_0_198.firstHit(arg_232_0, arg_232_1, arg_232_2, arg_232_3, arg_232_4, arg_232_5, arg_232_6)
	local var_232_0 = require("src.game.unit_abilities").hollow_arrow
	local var_232_1 = arg_232_1.t or 0
	local var_232_2 = __recovered_scope_0.var_0_198.texel(arg_232_1, var_232_1)
	local var_232_3 = __recovered_scope_0.var_0_198.frame(var_232_1)
	local var_232_4 = math.sqrt((arg_232_4 - arg_232_2)^2 + (arg_232_5 - arg_232_3)^2)
	local var_232_5 = 9 * var_232_2
	local var_232_6 = math.min(arg_232_2, arg_232_4) - var_232_5
	local var_232_7 = math.max(arg_232_2, arg_232_4) + var_232_5
	local var_232_8 = math.min(arg_232_3, arg_232_5) - var_232_5
	local var_232_9 = math.max(arg_232_3, arg_232_5) + var_232_5
	local var_232_10 = {}

	for iter_232_0, iter_232_1 in ipairs(arg_232_0.enemies or {}) do
		if var_232_0.targetable(arg_232_0, arg_232_1.owner, iter_232_1, arg_232_6) then
			local var_232_11 = __recovered_scope_0.var_0_190.targetCover(arg_232_0, iter_232_1)
			local var_232_12
			local var_232_13
			local var_232_14
			local var_232_15

			if var_232_11 then
				var_232_12, var_232_13 = math.min(var_232_11.ox, var_232_11.ox + var_232_11.qw * var_232_11.ux), math.max(var_232_11.ox, var_232_11.ox + var_232_11.qw * var_232_11.ux)
				var_232_14, var_232_15 = math.min(var_232_11.oy, var_232_11.oy + var_232_11.qh * var_232_11.uy), math.max(var_232_11.oy, var_232_11.oy + var_232_11.qh * var_232_11.uy)
			else
				var_232_12, var_232_13, var_232_14, var_232_15 = (iter_232_1.x or 0) - __recovered_scope_0.var_0_198.BODY_R, (iter_232_1.x or 0) + __recovered_scope_0.var_0_198.BODY_R, (iter_232_1.y or 0) - __recovered_scope_0.var_0_198.BODY_R, (iter_232_1.y or 0) + __recovered_scope_0.var_0_198.BODY_R
			end

			if var_232_6 <= var_232_13 and var_232_12 <= var_232_7 and var_232_8 <= var_232_15 and var_232_14 <= var_232_9 then
				var_232_10[#var_232_10 + 1] = iter_232_1
				var_232_10[iter_232_1] = var_232_11 or false
			end
		end
	end

	if #var_232_10 == 0 then
		return nil
	end

	local var_232_16 = math.max(1, math.ceil(var_232_4))

	for iter_232_2 = 0, var_232_16 do
		local var_232_17 = iter_232_2 / var_232_16
		local var_232_18 = arg_232_2 + (arg_232_4 - arg_232_2) * var_232_17
		local var_232_19 = arg_232_3 + (arg_232_5 - arg_232_3) * var_232_17

		for iter_232_3, iter_232_4 in ipairs(var_232_10) do
			if __recovered_scope_0.var_0_198.overlaps(arg_232_1, var_232_18, var_232_19, var_232_2, var_232_3, iter_232_4, var_232_10[iter_232_4] or nil) then
				return iter_232_4, var_232_17
			end
		end
	end
end

function __recovered_scope_0.var_0_198.swallow(arg_233_0, arg_233_1, arg_233_2, arg_233_3, arg_233_4, arg_233_5, arg_233_6)
	local var_233_0 = require("src.game.unit_abilities").hollow_arrow
	local var_233_1 = (arg_233_1.maxSwallow or 2) - #arg_233_1.swallows

	if var_233_1 <= 0 then
		return
	end

	local var_233_2 = __recovered_scope_0.var_0_198.texel(arg_233_1, arg_233_1.t or 0)
	local var_233_3, var_233_4 = __recovered_scope_0.var_0_198.mouth(arg_233_1, var_233_2, arg_233_2, arg_233_3)
	local var_233_5, var_233_6 = __recovered_scope_0.var_0_198.mouth(arg_233_1, var_233_2, arg_233_4, arg_233_5)
	local var_233_7 = (__recovered_scope_0.var_0_198.HALF + 3) * var_233_2
	local var_233_8 = {}

	for iter_233_0, iter_233_1 in ipairs(arg_233_0.projectiles or {}) do
		if var_233_0.swallowable(iter_233_1) then
			local var_233_9 = iter_233_1.holdSpawnPosition and 0 or arg_233_6
			local var_233_10 = iter_233_1.x or 0
			local var_233_11 = iter_233_1.y or 0
			local var_233_12 = var_233_10 - (iter_233_1.vx or 0) * var_233_9
			local var_233_13 = var_233_11 - (iter_233_1.vy or 0) * var_233_9
			local var_233_14 = var_233_12 - var_233_3
			local var_233_15 = var_233_13 - var_233_4
			local var_233_16 = var_233_10 - var_233_12 - (var_233_5 - var_233_3)
			local var_233_17 = var_233_11 - var_233_13 - (var_233_6 - var_233_4)
			local var_233_18 = var_233_16 * var_233_16 + var_233_17 * var_233_17
			local var_233_19 = var_233_18 > 1e-09 and math.max(0, math.min(1, -(var_233_14 * var_233_16 + var_233_15 * var_233_17) / var_233_18)) or 0
			local var_233_20 = var_233_14 + var_233_16 * var_233_19
			local var_233_21 = var_233_15 + var_233_17 * var_233_19

			if var_233_20 * var_233_20 + var_233_21 * var_233_21 <= var_233_7 * var_233_7 then
				var_233_8[#var_233_8 + 1] = {
					q = iter_233_1,
					u = var_233_19,
					x = var_233_12 + (var_233_10 - var_233_12) * var_233_19,
					y = var_233_13 + (var_233_11 - var_233_13) * var_233_19
				}
			end
		end
	end

	table.sort(var_233_8, function(arg_234_0, arg_234_1)
		return arg_234_0.u < arg_234_1.u
	end)

	for iter_233_2 = 1, math.min(var_233_1, #var_233_8) do
		local var_233_22 = var_233_8[iter_233_2]
		local var_233_23 = var_233_22.q

		arg_233_1.swallows[#arg_233_1.swallows + 1] = {
			t = (arg_233_1.t or 0) - arg_233_6 * (1 - var_233_22.u),
			x = var_233_22.x,
			y = var_233_22.y,
			rot = var_233_23.rot or math.atan2(var_233_23.vy or 0, var_233_23.vx or -1),
			frame = var_233_23.frame or 1,
			scale = var_233_23.scale or 1,
			sheet = arg_233_0.assets and arg_233_0.assets.projectiles and arg_233_0.assets.projectiles[var_233_23.asset or "HumanArrow"]
		}
		var_233_23._hollowArrowSwallowed = true
		var_233_23.alive, var_233_23.didDamage, var_233_23.visualOnly, var_233_23.basicAttack = false, true, true, false
	end
end

 function __recovered_scope_0.var_0_202(arg_235_0, arg_235_1, arg_235_2, arg_235_3, arg_235_4)
	arg_235_2 = math.min(arg_235_2, arg_235_1.sinkLeft)
	arg_235_1.x, arg_235_1.y, arg_235_1.travel = arg_235_1.x + arg_235_1.dirX * arg_235_2, arg_235_1.y + arg_235_1.dirY * arg_235_2, arg_235_1.travel + arg_235_2
	arg_235_1.sinkLeft = arg_235_1.sinkLeft - arg_235_2

	if arg_235_1.sinkLeft > 1e-09 then
		return
	end

	arg_235_1.hitX, arg_235_1.hitY = __recovered_scope_0.var_0_198.at(arg_235_1, arg_235_1.x, arg_235_1.y, __recovered_scope_0.var_0_198.TIP, 0, __recovered_scope_0.var_0_198.texel(arg_235_1, arg_235_1.t))
	arg_235_1.state, arg_235_1.endT, arg_235_1.dur = "impact", arg_235_1.t, arg_235_1.t + __recovered_scope_0.var_0_198.IMPACT
	arg_235_1.struck = require("src.game.unit_abilities").hollow_arrow.strike(arg_235_0, arg_235_1, arg_235_1.victim, arg_235_3, arg_235_4)
end

function __recovered_scope_0.var_0_198.update(arg_236_0, arg_236_1, arg_236_2, arg_236_3)
	if arg_236_1.finished then
		return
	end

	if arg_236_1.holdSpawnPosition then
		arg_236_1.holdSpawnPosition = nil
		arg_236_1.t = 0
		arg_236_1.lastUpdateT = 0

		return
	end

	local var_236_0 = math.max(0, (arg_236_1.t or 0) - (arg_236_1.lastUpdateT or 0))

	arg_236_1.lastUpdateT = arg_236_1.t or 0

	if arg_236_1.state == "flight" and var_236_0 > 0 and arg_236_1.victim then
		__recovered_scope_0.var_0_202(arg_236_0, arg_236_1, arg_236_1.speed * var_236_0, arg_236_2, arg_236_3)
	elseif arg_236_1.state == "flight" and var_236_0 > 0 then
		local var_236_1 = math.min(arg_236_1.speed * var_236_0, arg_236_1.range - arg_236_1.travel)
		local var_236_2 = arg_236_1.x
		local var_236_3 = arg_236_1.y
		local var_236_4 = var_236_2 + arg_236_1.dirX * var_236_1
		local var_236_5 = var_236_3 + arg_236_1.dirY * var_236_1

		__recovered_scope_0.var_0_198.swallow(arg_236_0, arg_236_1, var_236_2, var_236_3, var_236_4, var_236_5, var_236_0)

		local var_236_6, var_236_7 = __recovered_scope_0.var_0_198.firstHit(arg_236_0, arg_236_1, var_236_2, var_236_3, var_236_4, var_236_5, arg_236_2)

		if var_236_6 then
			arg_236_1.x, arg_236_1.y, arg_236_1.travel = var_236_2 + (var_236_4 - var_236_2) * var_236_7, var_236_3 + (var_236_5 - var_236_3) * var_236_7, arg_236_1.travel + var_236_1 * var_236_7
			arg_236_1.victim, arg_236_1.contactX, arg_236_1.contactY, arg_236_1.contactT = var_236_6, arg_236_1.x, arg_236_1.y, arg_236_1.t
			arg_236_1.sinkLeft = __recovered_scope_0.var_0_198.SINK * __recovered_scope_0.var_0_198.texel(arg_236_1, arg_236_1.t)
			arg_236_1.dur = math.max(arg_236_1.dur, arg_236_1.t + arg_236_1.sinkLeft / arg_236_1.speed + __recovered_scope_0.var_0_198.IMPACT)

			__recovered_scope_0.var_0_202(arg_236_0, arg_236_1, arg_236_1.speed * var_236_0 * (1 - var_236_7), arg_236_2, arg_236_3)
		else
			arg_236_1.x, arg_236_1.y, arg_236_1.travel = var_236_4, var_236_5, arg_236_1.travel + var_236_1

			if arg_236_1.travel >= arg_236_1.range - 1e-09 then
				arg_236_1.state, arg_236_1.endT, arg_236_1.dur = "fade", arg_236_1.t, arg_236_1.t + __recovered_scope_0.var_0_198.FADE
			end
		end
	end

	if arg_236_1.state ~= "flight" and (arg_236_1.t or 0) >= arg_236_1.dur - 1e-09 then
		arg_236_1.finished = true
	end
end

 __recovered_scope_0.var_0_203 = __recovered_scope_0.var_0_198
 __recovered_scope_0.var_0_204 = nil
 __recovered_scope_0.var_0_205 = {
	SINK = 3,
	IMPACT = 0.55,
	FADE = 0.2,
	TAIL = 4,
	TIP = 4,
	SHEET = "src/sprites/units/ArcherMan/05Prism/02PrismArcherMan_02Skill.png",
	SPEED = 560,
	RANGE = 460
}
 __recovered_scope_0.var_0_206 = __recovered_scope_0.var_0_203

function __recovered_scope_0.var_0_205.useSheet(arg_237_0, arg_237_1)
	__recovered_scope_0.var_0_206.useSheet(arg_237_0 or __recovered_scope_0.var_0_205.SHEET, arg_237_1)
end

function __recovered_scope_0.var_0_205.cells(arg_238_0)
	return __recovered_scope_0.var_0_206.cells(arg_238_0 or __recovered_scope_0.var_0_205.SHEET)
end

function __recovered_scope_0.var_0_205.extent(arg_239_0)
	local var_239_0 = __recovered_scope_0.var_0_205.cells(arg_239_0)
	local var_239_1 = var_239_0 and var_239_0[1]

	if not var_239_1 or not var_239_1[1] then
		return __recovered_scope_0.var_0_205.TAIL, __recovered_scope_0.var_0_205.TIP
	end

	local var_239_2 = 99
	local var_239_3 = -1

	for iter_239_0, iter_239_1 in ipairs(var_239_1) do
		var_239_2, var_239_3 = math.min(var_239_2, iter_239_1[1]), math.max(var_239_3, iter_239_1[1])
	end

	return 8 - var_239_2, var_239_3 + 1 - 8
end

function __recovered_scope_0.var_0_205.multiplier(arg_240_0, arg_240_1)
	local var_240_0 = arg_240_0.skill or {}
	local var_240_1 = arg_240_0.primarySkillDef and arg_240_0.primarySkillDef.runtime or {}
	local var_240_2 = var_240_1.shotMuls

	if var_240_2 and var_240_2[arg_240_1] then
		return tonumber(var_240_2[arg_240_1])
	end

	if arg_240_1 >= 2 then
		return tonumber(var_240_1.chainDmgMul or var_240_0.chainDmgMul) or 1.6
	end

	return tonumber(var_240_1.dmgMul or var_240_0.dmgMul) or 2.4
end

function __recovered_scope_0.var_0_205.texel(arg_241_0, arg_241_1)
	return __recovered_scope_0.var_0_206.texel({
		pixel = arg_241_0.pixel
	}, 0, arg_241_1)
end

__recovered_scope_0.var_0_205.pose, __recovered_scope_0.var_0_205.snap = __recovered_scope_0.var_0_206.pose, __recovered_scope_0.var_0_206.snap

function __recovered_scope_0.var_0_205.at(arg_242_0, arg_242_1, arg_242_2, arg_242_3, arg_242_4, arg_242_5)
	return __recovered_scope_0.var_0_206.at(arg_242_0, arg_242_1, arg_242_2, arg_242_3, arg_242_4, arg_242_5)
end

function __recovered_scope_0.var_0_205.muzzle(arg_243_0, arg_243_1, arg_243_2)
	local var_243_0 = arg_243_1.skill or {}

	arg_243_2 = arg_243_2 or arg_243_0.getUnitAssetForAlly and arg_243_0:getUnitAssetForAlly(arg_243_1)

	local var_243_1, var_243_2 = __recovered_scope_0.var_0_51.findAttackMarker(arg_243_2, {
		exactPixel = true,
		b = 249,
		g = 194,
		r = 103,
		cacheKey = "_chainSnipeLaunchMarker",
		animation = var_243_0.activeAnim or "attack2",
		frame = var_243_0.releaseFrame or 5
	})

	if not var_243_1 then
		return nil
	end

	return __recovered_scope_0.var_0_190.spritePoint(arg_243_0, arg_243_1, arg_243_2, var_243_1, var_243_2, false)
end

function __recovered_scope_0.var_0_205.launch(arg_244_0, arg_244_1, arg_244_2, arg_244_3, arg_244_4, arg_244_5)
	local var_244_0, var_244_1 = __recovered_scope_0.var_0_205.muzzle(arg_244_0, arg_244_1, arg_244_4)

	if not var_244_0 then
		return nil
	end

	local var_244_2
	local var_244_3

	if arg_244_2 then
		var_244_2, var_244_3 = __recovered_scope_0.var_0_190.targetPoint(arg_244_0, arg_244_2)
	else
		var_244_2, var_244_3 = var_244_0 + ((arg_244_1.facing or 1) < 0 and -100 or 100), var_244_1
	end

	return __recovered_scope_0.var_0_205.spawn(arg_244_0, arg_244_1, arg_244_2, arg_244_3, var_244_0, var_244_1, var_244_2, var_244_3, arg_244_5)
end

function __recovered_scope_0.var_0_205.spawn(arg_245_0, arg_245_1, arg_245_2, arg_245_3, arg_245_4, arg_245_5, arg_245_6, arg_245_7, arg_245_8)
	local var_245_0 = arg_245_1.primarySkillDef and arg_245_1.primarySkillDef.runtime or {}
	local var_245_1 = arg_245_6 - arg_245_4
	local var_245_2 = arg_245_7 - arg_245_5
	local var_245_3 = math.sqrt(var_245_1 * var_245_1 + var_245_2 * var_245_2)

	if var_245_3 < 1e-06 then
		var_245_1, var_245_2, var_245_3 = (arg_245_1.facing or 1) < 0 and -1 or 1, 0, 1
	end

	arg_245_8 = arg_245_8 or 1

	local var_245_4 = {
		state = "flight",
		lastUpdateT = 0,
		t = 0,
		holdSpawnPosition = true,
		kind = "chain_snipe",
		travel = 0,
		sx = arg_245_4,
		sy = arg_245_5,
		tx = arg_245_6,
		ty = arg_245_7,
		dirX = var_245_1 / var_245_3,
		dirY = var_245_2 / var_245_3,
		speed = __recovered_scope_0.var_0_205.SPEED,
		range = __recovered_scope_0.var_0_205.RANGE,
		dur = __recovered_scope_0.var_0_205.RANGE / __recovered_scope_0.var_0_205.SPEED + __recovered_scope_0.var_0_205.FADE,
		owner = arg_245_1,
		target = arg_245_2,
		atk = arg_245_3,
		shot = arg_245_8,
		dmgMul = __recovered_scope_0.var_0_205.multiplier(arg_245_1, arg_245_8),
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_245_0) / 32 + 0.5)),
		sheet = var_245_0.sheet or __recovered_scope_0.var_0_205.SHEET,
		style = var_245_0.style,
		chainCast = require("src.game.combat").chain_casting.capture(arg_245_1),
		awakeningCast = arg_245_1._awakening and arg_245_1._awakening.cast
	}

	var_245_4.tail, var_245_4.tip = __recovered_scope_0.var_0_205.extent(var_245_4.sheet)

	local var_245_5 = __recovered_scope_0.var_0_205.texel(var_245_4)

	var_245_4.x, var_245_4.y = arg_245_4 + var_245_4.dirX * var_245_4.tail * var_245_5, arg_245_5 + var_245_4.dirY * var_245_4.tail * var_245_5
	arg_245_0.vfx = arg_245_0.vfx or {}
	arg_245_0.vfx[#arg_245_0.vfx + 1] = var_245_4

	return var_245_4
end

function __recovered_scope_0.var_0_205.contact(arg_246_0, arg_246_1, arg_246_2, arg_246_3, arg_246_4, arg_246_5, arg_246_6)
	local var_246_0 = arg_246_1.target
	local var_246_1 = require("src.game.unit_abilities").chain_snipe

	if not var_246_0 or not var_246_1.targetable(arg_246_0, arg_246_1.owner, var_246_0, arg_246_6) then
		return nil
	end

	local var_246_2 = __recovered_scope_0.var_0_205.texel(arg_246_1)
	local var_246_3 = __recovered_scope_0.var_0_190.targetCover(arg_246_0, var_246_0)
	local var_246_4 = 9 * var_246_2
	local var_246_5
	local var_246_6
	local var_246_7
	local var_246_8

	if var_246_3 then
		var_246_5, var_246_6 = math.min(var_246_3.ox, var_246_3.ox + var_246_3.qw * var_246_3.ux), math.max(var_246_3.ox, var_246_3.ox + var_246_3.qw * var_246_3.ux)
		var_246_7, var_246_8 = math.min(var_246_3.oy, var_246_3.oy + var_246_3.qh * var_246_3.uy), math.max(var_246_3.oy, var_246_3.oy + var_246_3.qh * var_246_3.uy)
	else
		var_246_5, var_246_6, var_246_7, var_246_8 = (var_246_0.x or 0) - __recovered_scope_0.var_0_206.BODY_R, (var_246_0.x or 0) + __recovered_scope_0.var_0_206.BODY_R, (var_246_0.y or 0) - __recovered_scope_0.var_0_206.BODY_R, (var_246_0.y or 0) + __recovered_scope_0.var_0_206.BODY_R
	end

	if var_246_6 < math.min(arg_246_2, arg_246_4) - var_246_4 or var_246_5 > math.max(arg_246_2, arg_246_4) + var_246_4 or var_246_8 < math.min(arg_246_3, arg_246_5) - var_246_4 or var_246_7 > math.max(arg_246_3, arg_246_5) + var_246_4 then
		return nil
	end

	local var_246_9 = math.max(1, math.ceil(math.sqrt((arg_246_4 - arg_246_2)^2 + (arg_246_5 - arg_246_3)^2)))

	for iter_246_0 = 0, var_246_9 do
		local var_246_10 = iter_246_0 / var_246_9

		if __recovered_scope_0.var_0_206.overlaps(arg_246_1, arg_246_2 + (arg_246_4 - arg_246_2) * var_246_10, arg_246_3 + (arg_246_5 - arg_246_3) * var_246_10, var_246_2, 1, var_246_0, var_246_3) then
			return var_246_10
		end
	end
end

 function __recovered_scope_0.var_0_207(arg_247_0, arg_247_1, arg_247_2, arg_247_3, arg_247_4)
	arg_247_2 = math.min(arg_247_2, arg_247_1.sinkLeft)
	arg_247_1.x, arg_247_1.y, arg_247_1.travel = arg_247_1.x + arg_247_1.dirX * arg_247_2, arg_247_1.y + arg_247_1.dirY * arg_247_2, arg_247_1.travel + arg_247_2
	arg_247_1.sinkLeft = arg_247_1.sinkLeft - arg_247_2

	if arg_247_1.sinkLeft > 1e-09 then
		return
	end

	arg_247_1.hitX, arg_247_1.hitY = __recovered_scope_0.var_0_205.at(arg_247_1, arg_247_1.x, arg_247_1.y, arg_247_1.tip or __recovered_scope_0.var_0_205.TIP, 0, __recovered_scope_0.var_0_205.texel(arg_247_1))
	arg_247_1.state, arg_247_1.endT, arg_247_1.dur = "impact", arg_247_1.t, arg_247_1.t + __recovered_scope_0.var_0_205.IMPACT
	arg_247_1.struck = require("src.game.unit_abilities").chain_snipe.strike(arg_247_0, arg_247_1, arg_247_3, arg_247_4)
end

function __recovered_scope_0.var_0_205.update(arg_248_0, arg_248_1, arg_248_2, arg_248_3)
	if arg_248_1.finished then
		return
	end

	if arg_248_1.holdSpawnPosition then
		arg_248_1.holdSpawnPosition = nil
		arg_248_1.t = 0
		arg_248_1.lastUpdateT = 0

		return
	end

	local var_248_0 = math.max(0, (arg_248_1.t or 0) - (arg_248_1.lastUpdateT or 0))

	arg_248_1.lastUpdateT = arg_248_1.t or 0

	if arg_248_1.state == "flight" and var_248_0 > 0 and arg_248_1.contactT then
		__recovered_scope_0.var_0_207(arg_248_0, arg_248_1, arg_248_1.speed * var_248_0, arg_248_2, arg_248_3)
	elseif arg_248_1.state == "flight" and var_248_0 > 0 then
		local var_248_1 = math.min(arg_248_1.speed * var_248_0, arg_248_1.range - arg_248_1.travel)
		local var_248_2 = arg_248_1.x
		local var_248_3 = arg_248_1.y
		local var_248_4 = var_248_2 + arg_248_1.dirX * var_248_1
		local var_248_5 = var_248_3 + arg_248_1.dirY * var_248_1
		local var_248_6 = __recovered_scope_0.var_0_205.contact(arg_248_0, arg_248_1, var_248_2, var_248_3, var_248_4, var_248_5, arg_248_2)

		if var_248_6 then
			arg_248_1.x, arg_248_1.y, arg_248_1.travel = var_248_2 + (var_248_4 - var_248_2) * var_248_6, var_248_3 + (var_248_5 - var_248_3) * var_248_6, arg_248_1.travel + var_248_1 * var_248_6
			arg_248_1.contactX, arg_248_1.contactY, arg_248_1.contactT = arg_248_1.x, arg_248_1.y, arg_248_1.t
			arg_248_1.sinkLeft = __recovered_scope_0.var_0_205.SINK * __recovered_scope_0.var_0_205.texel(arg_248_1)
			arg_248_1.dur = math.max(arg_248_1.dur, arg_248_1.t + arg_248_1.sinkLeft / arg_248_1.speed + __recovered_scope_0.var_0_205.IMPACT)

			__recovered_scope_0.var_0_207(arg_248_0, arg_248_1, arg_248_1.speed * var_248_0 * (1 - var_248_6), arg_248_2, arg_248_3)
		else
			arg_248_1.x, arg_248_1.y, arg_248_1.travel = var_248_4, var_248_5, arg_248_1.travel + var_248_1

			if arg_248_1.travel >= arg_248_1.range - 1e-09 then
				arg_248_1.state, arg_248_1.endT, arg_248_1.dur = "fade", arg_248_1.t, arg_248_1.t + __recovered_scope_0.var_0_205.FADE
			end
		end
	end

	if arg_248_1.state ~= "flight" and (arg_248_1.t or 0) >= arg_248_1.dur - 1e-09 then
		arg_248_1.finished = true
	end
end

 __recovered_scope_0.var_0_208 = __recovered_scope_0.var_0_205
 __recovered_scope_0.var_0_209 = nil
 __recovered_scope_0.var_0_210 = {
	IMPACT = 0.5,
	SHEET = "src/sprites/units/SpearMan/05Prism/02PrismSpearMan_01Skill.png",
	PIVOT_Y = 16.5,
	PIVOT_X = 16.5,
	FW = 32,
	SPEED = 520,
	FRAME = 4,
	SINK = 4,
	TAIL = 12.5,
	TIP = 12.5,
	FADE = 0.2,
	RANGE = 420
}
 __recovered_scope_0.var_0_211 = __recovered_scope_0.var_0_203
 __recovered_scope_0.var_0_212 = {}

function __recovered_scope_0.var_0_210.cellsOf(arg_249_0)
	local var_249_0 = {}

	for iter_249_0 = 1, math.floor(arg_249_0:getWidth() / __recovered_scope_0.var_0_210.FW) do
		local var_249_1 = {}

		for iter_249_1 = 0, __recovered_scope_0.var_0_210.FW - 1 do
			for iter_249_2 = 0, __recovered_scope_0.var_0_210.FW - 1 do
				local var_249_2, var_249_3, var_249_4, var_249_5 = arg_249_0:getPixel((iter_249_0 - 1) * __recovered_scope_0.var_0_210.FW + iter_249_2, iter_249_1)

				if var_249_5 > 0 then
					var_249_1[#var_249_1 + 1] = {
						iter_249_2,
						iter_249_1
					}
				end
			end
		end

		var_249_0[iter_249_0] = var_249_1
	end

	return var_249_0
end

 __recovered_scope_0.var_0_213 = {}

function __recovered_scope_0.var_0_210.useSheet(arg_250_0, arg_250_1)
	__recovered_scope_0.var_0_212[arg_250_0 or __recovered_scope_0.var_0_210.SHEET] = __recovered_scope_0.var_0_210.cellsOf(arg_250_1)
	__recovered_scope_0.var_0_213[arg_250_0 or __recovered_scope_0.var_0_210.SHEET] = nil
end

function __recovered_scope_0.var_0_210.cells(arg_251_0)
	arg_251_0 = arg_251_0 or __recovered_scope_0.var_0_210.SHEET

	if __recovered_scope_0.var_0_212[arg_251_0] == nil then
		local var_251_0, var_251_1 = pcall(function()
			return love.image.newImageData(arg_251_0)
		end)

		__recovered_scope_0.var_0_212[arg_251_0] = var_251_0 and var_251_1 and __recovered_scope_0.var_0_210.cellsOf(var_251_1) or false
	end

	return __recovered_scope_0.var_0_212[arg_251_0] or nil
end

function __recovered_scope_0.var_0_210.geometry(arg_253_0)
	arg_253_0 = arg_253_0 or __recovered_scope_0.var_0_210.SHEET

	if __recovered_scope_0.var_0_213[arg_253_0] then
		return __recovered_scope_0.var_0_213[arg_253_0]
	end

	local var_253_0 = __recovered_scope_0.var_0_210.cells(arg_253_0)

	if not var_253_0 or not var_253_0[1] then
		return nil
	end

	local var_253_1 = {}

	for iter_253_0, iter_253_1 in ipairs(var_253_0) do
		local var_253_2 = 99
		local var_253_3 = -1
		local var_253_4 = 99
		local var_253_5 = -1

		for iter_253_2, iter_253_3 in ipairs(iter_253_1) do
			var_253_2, var_253_3, var_253_4, var_253_5 = math.min(var_253_2, iter_253_3[1]), math.max(var_253_3, iter_253_3[1]), math.min(var_253_4, iter_253_3[2]), math.max(var_253_5, iter_253_3[2])
		end

		if var_253_3 < 0 then
			var_253_2, var_253_3, var_253_4, var_253_5 = 16, 15, 16, 15
		end

		var_253_1[iter_253_0] = {
			x0 = var_253_2,
			x1 = var_253_3,
			y0 = var_253_4,
			y1 = var_253_5
		}
	end

	local var_253_6 = var_253_1[#var_253_1]
	local var_253_7 = {
		frames = #var_253_1,
		boxes = var_253_1,
		pivotX = (var_253_6.x0 + var_253_6.x1 + 1) * 0.5,
		pivotY = (var_253_6.y0 + var_253_6.y1 + 1) * 0.5
	}

	var_253_7.tip, var_253_7.tail = var_253_6.y1 + 1 - var_253_7.pivotY, var_253_7.pivotY - var_253_6.y0
	__recovered_scope_0.var_0_213[arg_253_0] = var_253_7

	return var_253_7
end

function __recovered_scope_0.var_0_210.extent(arg_254_0)
	local var_254_0 = __recovered_scope_0.var_0_210.geometry(arg_254_0)

	if not var_254_0 then
		return __recovered_scope_0.var_0_210.TIP, __recovered_scope_0.var_0_210.TAIL
	end

	return var_254_0.tip, var_254_0.tail
end

function __recovered_scope_0.var_0_210.texel(arg_255_0, arg_255_1)
	return __recovered_scope_0.var_0_211.texel({
		pixel = arg_255_0.pixel
	}, 0, arg_255_1)
end

function __recovered_scope_0.var_0_210.at(arg_256_0, arg_256_1, arg_256_2, arg_256_3, arg_256_4, arg_256_5, arg_256_6)
	return arg_256_0 + (arg_256_4 * arg_256_3 + arg_256_5 * arg_256_2) * arg_256_6, arg_256_1 + (arg_256_5 * arg_256_3 - arg_256_4 * arg_256_2) * arg_256_6
end

function __recovered_scope_0.var_0_210.rotation(arg_257_0, arg_257_1)
	return math.atan2(arg_257_1, arg_257_0) - math.pi / 2
end

function __recovered_scope_0.var_0_210.spawn(arg_258_0, arg_258_1, arg_258_2, arg_258_3, arg_258_4, arg_258_5, arg_258_6, arg_258_7, arg_258_8, arg_258_9, arg_258_10)
	local var_258_0 = math.sqrt(arg_258_6 * arg_258_6 + arg_258_7 * arg_258_7)

	if var_258_0 < 1e-06 then
		arg_258_6, arg_258_7, var_258_0 = 0, 1, 1
	end

	local var_258_1 = arg_258_10 or {}
	local var_258_2 = {
		state = "flight",
		lastUpdateT = 0,
		t = 0,
		holdSpawnPosition = true,
		kind = "rift_spear",
		travel = 0,
		x = arg_258_4,
		y = arg_258_5,
		sx = arg_258_4,
		sy = arg_258_5,
		dirX = arg_258_6 / var_258_0,
		dirY = arg_258_7 / var_258_0,
		speed = __recovered_scope_0.var_0_210.SPEED,
		range = __recovered_scope_0.var_0_210.RANGE,
		dur = __recovered_scope_0.var_0_210.RANGE / __recovered_scope_0.var_0_210.SPEED + __recovered_scope_0.var_0_210.FADE,
		owner = arg_258_1,
		target = arg_258_2,
		atk = arg_258_3,
		mul = arg_258_8 or 1.8,
		shot = arg_258_9 or 1,
		pixel = var_258_1.pixel or math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_258_0) / 32 + 0.5)),
		sheet = var_258_1.sheet or __recovered_scope_0.var_0_210.SHEET,
		style = var_258_1.style,
		chainCast = var_258_1.chainCast or false,
		awakeningCast = var_258_1.awakeningCast,
		impact = var_258_1.impact or __recovered_scope_0.var_0_210.IMPACT
	}
	local var_258_3 = __recovered_scope_0.var_0_210.geometry(var_258_2.sheet)

	var_258_2.frame = var_258_3 and var_258_3.frames or __recovered_scope_0.var_0_210.FRAME
	var_258_2.pivotX, var_258_2.pivotY = var_258_3 and var_258_3.pivotX or __recovered_scope_0.var_0_210.PIVOT_X, var_258_3 and var_258_3.pivotY or __recovered_scope_0.var_0_210.PIVOT_Y
	var_258_2.tip, var_258_2.tail = __recovered_scope_0.var_0_210.extent(var_258_2.sheet)
	arg_258_0.vfx = arg_258_0.vfx or {}
	arg_258_0.vfx[#arg_258_0.vfx + 1] = var_258_2

	return var_258_2
end

 __recovered_scope_0.var_0_214 = {
	{
		0.5,
		0.5
	},
	{
		0.08,
		0.08
	},
	{
		0.92,
		0.08
	},
	{
		0.08,
		0.92
	},
	{
		0.92,
		0.92
	}
}

function __recovered_scope_0.var_0_210.overlaps(arg_259_0, arg_259_1, arg_259_2, arg_259_3, arg_259_4, arg_259_5, arg_259_6, arg_259_7)
	local var_259_0 = __recovered_scope_0.var_0_210.cells(arg_259_0.sheet)
	local var_259_1 = var_259_0 and var_259_0[arg_259_0.frame or #var_259_0]
	local var_259_2 = arg_259_0.pivotX or __recovered_scope_0.var_0_210.PIVOT_X
	local var_259_3 = arg_259_0.pivotY or __recovered_scope_0.var_0_210.PIVOT_Y

	if not var_259_1 or not var_259_1[1] then
		local var_259_4, var_259_5 = __recovered_scope_0.var_0_210.at(arg_259_1, arg_259_2, arg_259_3, arg_259_4, 0, arg_259_0.tip or __recovered_scope_0.var_0_210.TIP, arg_259_5)

		return __recovered_scope_0.var_0_211.touches(arg_259_6, var_259_4, var_259_5, arg_259_7)
	end

	for iter_259_0, iter_259_1 in ipairs(var_259_1) do
		for iter_259_2, iter_259_3 in ipairs(__recovered_scope_0.var_0_214) do
			local var_259_6 = iter_259_1[1] + iter_259_3[1] - var_259_2
			local var_259_7 = iter_259_1[2] + iter_259_3[2] - var_259_3
			local var_259_8, var_259_9 = __recovered_scope_0.var_0_210.at(arg_259_1, arg_259_2, arg_259_3, arg_259_4, var_259_6, var_259_7, arg_259_5)

			if __recovered_scope_0.var_0_211.touches(arg_259_6, var_259_8, var_259_9, arg_259_7) then
				return true
			end
		end
	end

	return false
end

function __recovered_scope_0.var_0_210.contact(arg_260_0, arg_260_1, arg_260_2, arg_260_3, arg_260_4, arg_260_5, arg_260_6)
	local var_260_0 = arg_260_1.target
	local var_260_1 = require("src.game.unit_abilities").rift_arsenal

	if not var_260_0 or not var_260_1.targetable(arg_260_0, arg_260_1.owner, var_260_0, arg_260_6) then
		return nil
	end

	local var_260_2 = __recovered_scope_0.var_0_210.texel(arg_260_1)
	local var_260_3 = __recovered_scope_0.var_0_190.targetCover(arg_260_0, var_260_0)
	local var_260_4 = 17 * var_260_2
	local var_260_5
	local var_260_6
	local var_260_7
	local var_260_8

	if var_260_3 then
		var_260_5, var_260_6 = math.min(var_260_3.ox, var_260_3.ox + var_260_3.qw * var_260_3.ux), math.max(var_260_3.ox, var_260_3.ox + var_260_3.qw * var_260_3.ux)
		var_260_7, var_260_8 = math.min(var_260_3.oy, var_260_3.oy + var_260_3.qh * var_260_3.uy), math.max(var_260_3.oy, var_260_3.oy + var_260_3.qh * var_260_3.uy)
	else
		var_260_5, var_260_6, var_260_7, var_260_8 = (var_260_0.x or 0) - __recovered_scope_0.var_0_211.BODY_R, (var_260_0.x or 0) + __recovered_scope_0.var_0_211.BODY_R, (var_260_0.y or 0) - __recovered_scope_0.var_0_211.BODY_R, (var_260_0.y or 0) + __recovered_scope_0.var_0_211.BODY_R
	end

	if var_260_6 < math.min(arg_260_2, arg_260_4) - var_260_4 or var_260_5 > math.max(arg_260_2, arg_260_4) + var_260_4 or var_260_8 < math.min(arg_260_3, arg_260_5) - var_260_4 or var_260_7 > math.max(arg_260_3, arg_260_5) + var_260_4 then
		return nil
	end

	local var_260_9 = math.max(1, math.ceil(math.sqrt((arg_260_4 - arg_260_2)^2 + (arg_260_5 - arg_260_3)^2)))

	for iter_260_0 = 0, var_260_9 do
		local var_260_10 = iter_260_0 / var_260_9

		if __recovered_scope_0.var_0_210.overlaps(arg_260_1, arg_260_2 + (arg_260_4 - arg_260_2) * var_260_10, arg_260_3 + (arg_260_5 - arg_260_3) * var_260_10, arg_260_1.dirX, arg_260_1.dirY, var_260_2, var_260_0, var_260_3) then
			return var_260_10
		end
	end
end

 function __recovered_scope_0.var_0_215(arg_261_0, arg_261_1, arg_261_2, arg_261_3, arg_261_4)
	arg_261_2 = math.min(arg_261_2, arg_261_1.sinkLeft)
	arg_261_1.x, arg_261_1.y, arg_261_1.travel = arg_261_1.x + arg_261_1.dirX * arg_261_2, arg_261_1.y + arg_261_1.dirY * arg_261_2, arg_261_1.travel + arg_261_2
	arg_261_1.sinkLeft = arg_261_1.sinkLeft - arg_261_2

	if arg_261_1.sinkLeft > 1e-09 then
		return
	end

	arg_261_1.hitX, arg_261_1.hitY = __recovered_scope_0.var_0_210.at(arg_261_1.x, arg_261_1.y, arg_261_1.dirX, arg_261_1.dirY, 0, arg_261_1.tip or __recovered_scope_0.var_0_210.TIP, __recovered_scope_0.var_0_210.texel(arg_261_1))
	arg_261_1.state, arg_261_1.endT, arg_261_1.dur = "impact", arg_261_1.t, arg_261_1.t + (arg_261_1.impact or __recovered_scope_0.var_0_210.IMPACT)

	if arg_261_1.target and arg_261_0.entityGroundPoint then
		local var_261_0, var_261_1, var_261_2 = pcall(arg_261_0.entityGroundPoint, arg_261_0, arg_261_1.target)

		if var_261_0 and var_261_1 then
			arg_261_1.groundX, arg_261_1.groundY = var_261_1, var_261_2
		end
	end

	arg_261_1.struck = require("src.game.unit_abilities").rift_arsenal.strike(arg_261_0, arg_261_1, arg_261_3, arg_261_4)
end

function __recovered_scope_0.var_0_210.update(arg_262_0, arg_262_1, arg_262_2, arg_262_3)
	if arg_262_1.finished then
		return
	end

	if arg_262_1.holdSpawnPosition then
		arg_262_1.holdSpawnPosition = nil
		arg_262_1.t = 0
		arg_262_1.lastUpdateT = 0

		return
	end

	local var_262_0 = math.max(0, (arg_262_1.t or 0) - (arg_262_1.lastUpdateT or 0))

	arg_262_1.lastUpdateT = arg_262_1.t or 0

	if arg_262_1.state == "flight" and var_262_0 > 0 and arg_262_1.contactT then
		__recovered_scope_0.var_0_215(arg_262_0, arg_262_1, arg_262_1.speed * var_262_0, arg_262_2, arg_262_3)
	elseif arg_262_1.state == "flight" and var_262_0 > 0 then
		local var_262_1 = require("src.game.unit_abilities").rift_arsenal

		if arg_262_1.target and var_262_1.targetable(arg_262_0, arg_262_1.owner, arg_262_1.target, arg_262_2) then
			local var_262_2, var_262_3 = __recovered_scope_0.var_0_190.targetPoint(arg_262_0, arg_262_1.target)
			local var_262_4 = var_262_2 - arg_262_1.x
			local var_262_5 = var_262_3 - arg_262_1.y
			local var_262_6 = math.sqrt(var_262_4 * var_262_4 + var_262_5 * var_262_5)

			if var_262_6 > 1 then
				arg_262_1.dirX, arg_262_1.dirY = var_262_4 / var_262_6, var_262_5 / var_262_6
			end
		else
			arg_262_1.target = nil
		end

		local var_262_7 = math.min(arg_262_1.speed * var_262_0, arg_262_1.range - arg_262_1.travel)
		local var_262_8 = arg_262_1.x
		local var_262_9 = arg_262_1.y
		local var_262_10 = var_262_8 + arg_262_1.dirX * var_262_7
		local var_262_11 = var_262_9 + arg_262_1.dirY * var_262_7
		local var_262_12 = __recovered_scope_0.var_0_210.contact(arg_262_0, arg_262_1, var_262_8, var_262_9, var_262_10, var_262_11, arg_262_2)

		if var_262_12 then
			arg_262_1.x, arg_262_1.y, arg_262_1.travel = var_262_8 + (var_262_10 - var_262_8) * var_262_12, var_262_9 + (var_262_11 - var_262_9) * var_262_12, arg_262_1.travel + var_262_7 * var_262_12
			arg_262_1.contactX, arg_262_1.contactY, arg_262_1.contactT = arg_262_1.x, arg_262_1.y, arg_262_1.t
			arg_262_1.sinkLeft = __recovered_scope_0.var_0_210.SINK * __recovered_scope_0.var_0_210.texel(arg_262_1)
			arg_262_1.dur = math.max(arg_262_1.dur, arg_262_1.t + arg_262_1.sinkLeft / arg_262_1.speed + (arg_262_1.impact or __recovered_scope_0.var_0_210.IMPACT))

			__recovered_scope_0.var_0_215(arg_262_0, arg_262_1, arg_262_1.speed * var_262_0 * (1 - var_262_12), arg_262_2, arg_262_3)
		else
			arg_262_1.x, arg_262_1.y, arg_262_1.travel = var_262_10, var_262_11, arg_262_1.travel + var_262_7

			if arg_262_1.travel >= arg_262_1.range - 1e-09 then
				arg_262_1.state, arg_262_1.endT, arg_262_1.dur = "fade", arg_262_1.t, arg_262_1.t + __recovered_scope_0.var_0_210.FADE
			end
		end
	end

	if arg_262_1.state ~= "flight" and (arg_262_1.t or 0) >= arg_262_1.dur - 1e-09 then
		arg_262_1.finished = true
	end
end

 __recovered_scope_0.var_0_216 = __recovered_scope_0.var_0_210
 __recovered_scope_0.var_0_217 = nil
 __recovered_scope_0.var_0_218 = {
	TIP = 26,
	SHEET = "src/sprites/units/SpearMan/04Legend/02LegendSpearMan_01Projectile.png",
	SPEED = 340,
	CUT = 21,
	ROW = 16.5,
	CHAIN_X = 8.5,
	REACH = 180,
	RETRACT = 0.2,
	DRAG_SPEED = 300,
	DRAG_BASE = 0.18,
	BITE = 0.14
}

__recovered_scope_0.var_0_218.GEO = {
	sheet = __recovered_scope_0.var_0_218.SHEET,
	chainX = __recovered_scope_0.var_0_218.CHAIN_X,
	row = __recovered_scope_0.var_0_218.ROW,
	cut = __recovered_scope_0.var_0_218.CUT,
	tip = __recovered_scope_0.var_0_218.TIP
}

 __recovered_scope_0.var_0_219 = setmetatable({}, {
	__mode = "k"
})

function __recovered_scope_0.var_0_218.geometry(arg_263_0)
	local var_263_0 = arg_263_0 and arg_263_0.spear

	if not var_263_0 then
		return __recovered_scope_0.var_0_218.GEO
	end

	local var_263_1 = __recovered_scope_0.var_0_219[var_263_0]

	if not var_263_1 then
		var_263_1 = {
			sheet = var_263_0.sheet or __recovered_scope_0.var_0_218.SHEET,
			chainX = var_263_0.chainX or __recovered_scope_0.var_0_218.CHAIN_X,
			row = var_263_0.row or __recovered_scope_0.var_0_218.ROW,
			cut = var_263_0.cut or __recovered_scope_0.var_0_218.CUT,
			tip = var_263_0.tip or __recovered_scope_0.var_0_218.TIP
		}
		__recovered_scope_0.var_0_219[var_263_0] = var_263_1
	end

	return var_263_1
end

 function __recovered_scope_0.var_0_220(arg_264_0)
	local var_264_0 = arg_264_0.geo or __recovered_scope_0.var_0_218.GEO

	return (var_264_0.cut - var_264_0.chainX) * (arg_264_0.pixel or 2)
end

 function __recovered_scope_0.var_0_221(arg_265_0)
	return arg_265_0 and arg_265_0.alive and not arg_265_0.dying and (arg_265_0.hp or 1) > 0
end

function __recovered_scope_0.var_0_218.launch(arg_266_0, arg_266_1, arg_266_2, arg_266_3, arg_266_4)
	local var_266_0 = arg_266_1.skill or {}
	local var_266_1 = (arg_266_1.primarySkillDef and arg_266_1.primarySkillDef.runtime or {}).marker or {
		174,
		207,
		214
	}

	arg_266_4 = arg_266_4 or arg_266_0.getUnitAssetForAlly and arg_266_0:getUnitAssetForAlly(arg_266_1)

	local var_266_2, var_266_3 = __recovered_scope_0.var_0_51.findAttackMarker(arg_266_4, {
		exactPixel = true,
		cacheKey = "_chainSpearLaunchMarker",
		animation = var_266_0.activeAnim or "attack2",
		frame = var_266_0.releaseFrame or 3,
		r = var_266_1[1],
		g = var_266_1[2],
		b = var_266_1[3]
	})

	if not var_266_2 then
		return nil
	end

	local var_266_4, var_266_5 = __recovered_scope_0.var_0_190.spritePoint(arg_266_0, arg_266_1, arg_266_4, var_266_2, var_266_3, false)
	local var_266_6
	local var_266_7

	if arg_266_2 then
		var_266_6, var_266_7 = __recovered_scope_0.var_0_190.targetPoint(arg_266_0, arg_266_2)
	else
		var_266_6, var_266_7 = var_266_4 + ((arg_266_1.facing or 1) < 0 and -__recovered_scope_0.var_0_218.REACH or __recovered_scope_0.var_0_218.REACH), var_266_5
	end

	return __recovered_scope_0.var_0_218.spawn(arg_266_0, arg_266_1, arg_266_2, arg_266_3, var_266_4, var_266_5, var_266_6, var_266_7, {
		asset = arg_266_4,
		x = var_266_2,
		y = var_266_3
	})
end

function __recovered_scope_0.var_0_218.spawn(arg_267_0, arg_267_1, arg_267_2, arg_267_3, arg_267_4, arg_267_5, arg_267_6, arg_267_7, arg_267_8)
	local var_267_0 = arg_267_1.skill or {}
	local var_267_1 = arg_267_1.primarySkillDef and arg_267_1.primarySkillDef.runtime or {}
	local var_267_2 = arg_267_6 - arg_267_4
	local var_267_3 = arg_267_7 - arg_267_5
	local var_267_4 = math.sqrt(var_267_2 * var_267_2 + var_267_3 * var_267_3)

	if var_267_4 < 1e-06 then
		var_267_2, var_267_3, var_267_4 = (arg_267_1.facing or 1) < 0 and -1 or 1, 0, 1
	end

	local var_267_5 = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_267_0) / 32 + 0.5))
	local var_267_6 = {
		kind = "chain_spear",
		state = "flight",
		lastUpdateT = 0,
		dur = 1,
		t = 0,
		stateT = 0,
		holdSpawnPosition = true,
		dirX = var_267_2 / var_267_4,
		dirY = var_267_3 / var_267_4,
		hx = arg_267_4,
		hy = arg_267_5,
		hand = arg_267_8,
		aimX = arg_267_6,
		aimY = arg_267_7,
		owner = arg_267_1,
		target = arg_267_2,
		atk = arg_267_3,
		dmgMul = var_267_0.dmgMul or tonumber(var_267_1.dmgMul) or 1.5,
		pullTo = tonumber(var_267_1.pullTo) or 55,
		speed = __recovered_scope_0.var_0_218.SPEED,
		pixel = var_267_5,
		geo = __recovered_scope_0.var_0_218.geometry(var_267_1),
		style = var_267_1.style,
		chainCast = require("src.game.combat").chain_casting.capture(arg_267_1),
		awakeningCast = arg_267_1._awakening and arg_267_1._awakening.cast
	}

	if var_267_1.bleedDur then
		var_267_6.bleed = {
			mul = tonumber(var_267_1.bleedDmgMulPerTick) or 0.1,
			interval = tonumber(var_267_1.bleedTickInterval) or 0.5,
			dur = tonumber(var_267_1.bleedDur) or 3
		}
	end

	local var_267_7 = __recovered_scope_0.var_0_220(var_267_6)

	var_267_6.x, var_267_6.y = arg_267_4 + var_267_6.dirX * var_267_7, arg_267_5 + var_267_6.dirY * var_267_7
	arg_267_0.vfx = arg_267_0.vfx or {}
	arg_267_0.vfx[#arg_267_0.vfx + 1] = var_267_6

	return var_267_6
end

function __recovered_scope_0.var_0_218.chainEnd(arg_268_0)
	local var_268_0 = __recovered_scope_0.var_0_220(arg_268_0)

	return arg_268_0.x - arg_268_0.dirX * var_268_0, arg_268_0.y - arg_268_0.dirY * var_268_0
end

 function __recovered_scope_0.var_0_222(arg_269_0)
	local var_269_0 = require("src.game.unit_abilities").chain_spear

	if arg_269_0.target then
		var_269_0.release(arg_269_0.target, arg_269_0)
	end

	if arg_269_0.stuckX then
		arg_269_0.restX, arg_269_0.restY = arg_269_0.x - arg_269_0.stuckX, arg_269_0.y - arg_269_0.stuckY + (arg_269_0.footDY or 14)
	end

	arg_269_0.state, arg_269_0.stateT, arg_269_0.retractX, arg_269_0.retractY = "retract", arg_269_0.t, arg_269_0.x, arg_269_0.y
end

 function __recovered_scope_0.var_0_223(arg_270_0, arg_270_1)
	local var_270_0, var_270_1 = __recovered_scope_0.var_0_190.targetPoint(arg_270_0, arg_270_1.target, "idle", 1)

	arg_270_1.x, arg_270_1.y = var_270_0 + arg_270_1.stuckX, var_270_1 + arg_270_1.stuckY
end

function __recovered_scope_0.var_0_218.update(arg_271_0, arg_271_1, arg_271_2, arg_271_3)
	if arg_271_1.finished then
		return
	end

	if arg_271_1.holdSpawnPosition then
		arg_271_1.holdSpawnPosition = nil
		arg_271_1.t = 0
		arg_271_1.lastUpdateT = 0

		return
	end

	local var_271_0 = math.max(0, (arg_271_1.t or 0) - (arg_271_1.lastUpdateT or 0))

	arg_271_1.lastUpdateT = arg_271_1.t or 0

	local var_271_1 = require("src.game.unit_abilities").chain_spear
	local var_271_2 = arg_271_1.owner

	arg_271_1.dur = (arg_271_1.t or 0) + 1

	if arg_271_1.hand and __recovered_scope_0.var_0_221(var_271_2) then
		arg_271_1.hx, arg_271_1.hy = __recovered_scope_0.var_0_190.spritePoint(arg_271_0, var_271_2, arg_271_1.hand.asset, arg_271_1.hand.x, arg_271_1.hand.y, false)
	end

	if arg_271_1.state ~= "retract" and not var_271_1.canAct(var_271_2) then
		__recovered_scope_0.var_0_222(arg_271_1)
	end

	if arg_271_1.state == "flight" then
		local var_271_3 = arg_271_1.target

		if var_271_3 and var_271_1.targetable(arg_271_0, var_271_2, var_271_3, arg_271_2) then
			arg_271_1.aimX, arg_271_1.aimY = __recovered_scope_0.var_0_190.targetPoint(arg_271_0, var_271_3)
		else
			arg_271_1.lost = true
		end

		local var_271_4 = arg_271_1.aimX - arg_271_1.x
		local var_271_5 = arg_271_1.aimY - arg_271_1.y
		local var_271_6 = math.sqrt(var_271_4 * var_271_4 + var_271_5 * var_271_5)
		local var_271_7 = arg_271_1.speed * var_271_0

		if var_271_6 > 1e-06 then
			arg_271_1.dirX, arg_271_1.dirY = var_271_4 / var_271_6, var_271_5 / var_271_6
		end

		if var_271_6 <= var_271_7 + 1e-09 then
			arg_271_1.x, arg_271_1.y = arg_271_1.aimX, arg_271_1.aimY

			if var_271_3 and not arg_271_1.lost then
				local var_271_8, var_271_9 = __recovered_scope_0.var_0_190.targetPoint(arg_271_0, var_271_3, "idle", 1)

				arg_271_1.stuckX, arg_271_1.stuckY = arg_271_1.x - var_271_8, arg_271_1.y - var_271_9

				local var_271_10 = __recovered_scope_0.var_0_190.targetCover(arg_271_0, var_271_3, nil, "idle", 1)

				arg_271_1.footDY = var_271_10 and var_271_10.half or 14
				arg_271_1.state, arg_271_1.stateT, arg_271_1.hitT = "bite", arg_271_1.t, arg_271_1.t
				arg_271_1.struck = var_271_1.bite(arg_271_0, arg_271_1, arg_271_2, arg_271_3)
			else
				__recovered_scope_0.var_0_222(arg_271_1)
			end
		else
			arg_271_1.x, arg_271_1.y = arg_271_1.x + arg_271_1.dirX * var_271_7, arg_271_1.y + arg_271_1.dirY * var_271_7
		end
	elseif arg_271_1.state == "bite" then
		if not var_271_1.targetable(arg_271_0, var_271_2, arg_271_1.target, arg_271_2) then
			__recovered_scope_0.var_0_222(arg_271_1)
		else
			__recovered_scope_0.var_0_223(arg_271_0, arg_271_1)

			if arg_271_1.t - arg_271_1.stateT >= __recovered_scope_0.var_0_218.BITE - 1e-09 then
				local var_271_11, var_271_12 = var_271_1.dragGoal(arg_271_0, arg_271_1, arg_271_2)

				if var_271_11 then
					local var_271_13 = arg_271_1.target

					arg_271_1.state, arg_271_1.stateT, arg_271_1.progress, arg_271_1.dragged = "drag", arg_271_1.t, 0, true
					arg_271_1.fromX, arg_271_1.fromY, arg_271_1.toX, arg_271_1.toY = var_271_13.x or 0, var_271_13.y or 0, var_271_11, var_271_12
					arg_271_1.dragDur = __recovered_scope_0.var_0_218.DRAG_BASE + math.sqrt((var_271_11 - arg_271_1.fromX)^2 + (var_271_12 - arg_271_1.fromY)^2) / __recovered_scope_0.var_0_218.DRAG_SPEED

					var_271_1.seize(var_271_13, arg_271_1, arg_271_1.dragDur)
				else
					__recovered_scope_0.var_0_222(arg_271_1)
				end
			end
		end
	elseif arg_271_1.state == "drag" then
		local var_271_14 = arg_271_1.target

		if not var_271_1.targetable(arg_271_0, var_271_2, var_271_14, arg_271_2) then
			__recovered_scope_0.var_0_222(arg_271_1)
		else
			local var_271_15 = math.min(1, (arg_271_1.t - arg_271_1.stateT) / arg_271_1.dragDur)
			local var_271_16 = var_271_15 * var_271_15 * (3 - 2 * var_271_15) - arg_271_1.progress * arg_271_1.progress * (3 - 2 * arg_271_1.progress)

			arg_271_1.progress = var_271_15
			var_271_14.x, var_271_14.y = (var_271_14.x or 0) + (arg_271_1.toX - arg_271_1.fromX) * var_271_16, (var_271_14.y or 0) + (arg_271_1.toY - arg_271_1.fromY) * var_271_16

			if var_271_14._chainSpearDrag then
				var_271_14._chainSpearDrag.t = arg_271_1.t - arg_271_1.stateT
			end

			__recovered_scope_0.var_0_223(arg_271_0, arg_271_1)

			if var_271_15 >= 1 then
				__recovered_scope_0.var_0_222(arg_271_1)
			end
		end
	end

	if arg_271_1.state == "retract" then
		local var_271_17 = math.min(1, (arg_271_1.t - arg_271_1.stateT) / __recovered_scope_0.var_0_218.RETRACT)
		local var_271_18 = __recovered_scope_0.var_0_220(arg_271_1)
		local var_271_19 = arg_271_1.hx + arg_271_1.dirX * var_271_18
		local var_271_20 = arg_271_1.hy + arg_271_1.dirY * var_271_18
		local var_271_21 = var_271_17 * var_271_17

		arg_271_1.x, arg_271_1.y = arg_271_1.retractX + (var_271_19 - arg_271_1.retractX) * var_271_21, arg_271_1.retractY + (var_271_20 - arg_271_1.retractY) * var_271_21

		if var_271_17 >= 1 then
			arg_271_1.finished = true
		end
	end
end

 __recovered_scope_0.var_0_224 = __recovered_scope_0.var_0_218
 __recovered_scope_0.var_0_225 = nil
 __recovered_scope_0.var_0_226 = {
	RETURN_SPEED = 170,
	FLIP = 0.4,
	DRIFT = 4,
	TURN = 0.28,
	CREEP = 18,
	BRAKE = 330,
	OVERSHOOT = 100,
	AFTER = 0.45,
	LAUNCH = 0.15,
	SPEAR_ROW = 17.5,
	SHEET = "src/sprites/units/SpearMan/04Legend/02LegendSpearMan_02Skill.png",
	SPEED = 180,
	FRAME = 0.1,
	SINK = 6,
	BODY_R = 12,
	REACH = 200,
	ANCHOR_Y = 19.5,
	ANCHOR_X = 15.5,
	FADE = 0.25,
	RETURN_MIN = 0.35,
	MARKER = {
		45,
		43,
		42
	}
}
 __recovered_scope_0.var_0_227 = {}

function __recovered_scope_0.var_0_226.cellsOf(arg_272_0)
	local var_272_0 = {}

	for iter_272_0 = 1, math.floor(arg_272_0:getWidth() / 32) do
		local var_272_1 = {}

		for iter_272_1 = 0, 31 do
			for iter_272_2 = 0, 31 do
				local var_272_2, var_272_3, var_272_4, var_272_5 = arg_272_0:getPixel((iter_272_0 - 1) * 32 + iter_272_2, iter_272_1)

				if var_272_5 > 0 then
					var_272_1[#var_272_1 + 1] = {
						iter_272_2,
						iter_272_1
					}
				end
			end
		end

		var_272_0[iter_272_0] = var_272_1
	end

	return var_272_0
end

function __recovered_scope_0.var_0_226.useSheet(arg_273_0, arg_273_1)
	__recovered_scope_0.var_0_227[arg_273_0 or __recovered_scope_0.var_0_226.SHEET] = __recovered_scope_0.var_0_226.cellsOf(arg_273_1)
end

function __recovered_scope_0.var_0_226.cells(arg_274_0)
	arg_274_0 = arg_274_0 or __recovered_scope_0.var_0_226.SHEET

	if __recovered_scope_0.var_0_227[arg_274_0] == nil then
		local var_274_0, var_274_1 = pcall(function()
			return love.image.newImageData(arg_274_0)
		end)

		__recovered_scope_0.var_0_227[arg_274_0] = var_274_0 and var_274_1 and __recovered_scope_0.var_0_226.cellsOf(var_274_1) or false
	end

	return __recovered_scope_0.var_0_227[arg_274_0] or nil
end

function __recovered_scope_0.var_0_226.frame(arg_276_0)
	return 1 + math.floor(math.max(0, arg_276_0 or 0) / __recovered_scope_0.var_0_226.FRAME) % 4
end

function __recovered_scope_0.var_0_226.rushTravel(arg_277_0)
	arg_277_0 = math.max(0, arg_277_0 or 0)

	if arg_277_0 < __recovered_scope_0.var_0_226.LAUNCH then
		return __recovered_scope_0.var_0_226.SPEED * arg_277_0 * arg_277_0 / (2 * __recovered_scope_0.var_0_226.LAUNCH)
	end

	return __recovered_scope_0.var_0_226.SPEED * (__recovered_scope_0.var_0_226.LAUNCH * 0.5 + arg_277_0 - __recovered_scope_0.var_0_226.LAUNCH)
end

function __recovered_scope_0.var_0_226.cellRect(arg_278_0, arg_278_1, arg_278_2, arg_278_3, arg_278_4)
	local var_278_0 = arg_278_0.pixel or 2
	local var_278_1 = arg_278_0.anchorX or __recovered_scope_0.var_0_226.ANCHOR_X
	local var_278_2 = arg_278_0.anchorY or __recovered_scope_0.var_0_226.ANCHOR_Y
	local var_278_3

	if (arg_278_0.face or 1) < 0 then
		var_278_3 = arg_278_1 + (var_278_1 - arg_278_3 - 1) * var_278_0
	else
		var_278_3 = arg_278_1 + (arg_278_3 - var_278_1) * var_278_0
	end

	local var_278_4 = arg_278_2 + (arg_278_4 - var_278_2) * var_278_0

	return var_278_3, var_278_4, var_278_3 + var_278_0, var_278_4 + var_278_0
end

function __recovered_scope_0.var_0_226.aimPoint(arg_279_0, arg_279_1, arg_279_2, arg_279_3)
	local var_279_0 = 0
	local var_279_1 = 0

	if arg_279_1 then
		var_279_0, var_279_1 = (arg_279_1.x or 0) - (arg_279_0.x or 0), (arg_279_1.y or 0) - (arg_279_0.y or 0)
	end

	local var_279_2 = math.sqrt(var_279_0 * var_279_0 + var_279_1 * var_279_1)

	if var_279_2 < 1e-06 then
		var_279_0, var_279_1, var_279_2 = (arg_279_0.facing or 1) < 0 and -1 or 1, 0, 1
	end

	return arg_279_2 + var_279_0 / var_279_2 * __recovered_scope_0.var_0_226.REACH, arg_279_3 + var_279_1 / var_279_2 * __recovered_scope_0.var_0_226.REACH
end

function __recovered_scope_0.var_0_226.overlaps(arg_280_0, arg_280_1, arg_280_2, arg_280_3, arg_280_4)
	local var_280_0 = __recovered_scope_0.var_0_203
	local var_280_1 = __recovered_scope_0.var_0_226.cells(arg_280_0.sheet)

	if not var_280_1 then
		for iter_280_0, iter_280_1 in ipairs({
			6,
			12,
			18,
			24,
			27
		}) do
			local var_280_2, var_280_3, var_280_4, var_280_5 = __recovered_scope_0.var_0_226.cellRect(arg_280_0, arg_280_1, arg_280_2, iter_280_1, 17)

			if var_280_0.touches(arg_280_3, (var_280_2 + var_280_4) * 0.5, (var_280_3 + var_280_5) * 0.5, arg_280_4) then
				return true
			end
		end

		return false
	end

	for iter_280_2, iter_280_3 in ipairs(var_280_1[__recovered_scope_0.var_0_226.frame(arg_280_0.t)] or var_280_1[1]) do
		local var_280_6, var_280_7, var_280_8, var_280_9 = __recovered_scope_0.var_0_226.cellRect(arg_280_0, arg_280_1, arg_280_2, iter_280_3[1], iter_280_3[2])

		if arg_280_4 then
			if var_280_0.coverOverlaps(arg_280_4, var_280_6, var_280_7, var_280_8, var_280_9) then
				return true
			end
		elseif var_280_0.touches(arg_280_3, (var_280_6 + var_280_8) * 0.5, (var_280_7 + var_280_9) * 0.5) then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_228(arg_281_0)
	return arg_281_0 and arg_281_0.alive and not arg_281_0.dying and (arg_281_0.hp or 1) > 0
end

function __recovered_scope_0.var_0_226.marker(arg_282_0, arg_282_1, arg_282_2)
	local var_282_0 = arg_282_1.skill or {}
	local var_282_1 = (arg_282_1.primarySkillDef and arg_282_1.primarySkillDef.runtime or {}).marker or __recovered_scope_0.var_0_226.MARKER

	arg_282_2 = arg_282_2 or arg_282_0 and arg_282_0.getUnitAssetForAlly and arg_282_0:getUnitAssetForAlly(arg_282_1)

	if not arg_282_2 then
		return nil
	end

	return __recovered_scope_0.var_0_51.findAttackMarker(arg_282_2, {
		exactPixel = true,
		cacheKey = "_spectralRushMarker",
		animation = var_282_0.activeAnim or "attack2",
		frame = var_282_0.releaseFrame or 4,
		r = var_282_1[1],
		g = var_282_1[2],
		b = var_282_1[3]
	})
end

function __recovered_scope_0.var_0_226.launch(arg_283_0, arg_283_1, arg_283_2, arg_283_3, arg_283_4)
	arg_283_4 = arg_283_4 or arg_283_0.getUnitAssetForAlly and arg_283_0:getUnitAssetForAlly(arg_283_1)

	local var_283_0, var_283_1 = __recovered_scope_0.var_0_226.marker(arg_283_0, arg_283_1, arg_283_4)

	if not var_283_0 then
		return nil
	end

	local var_283_2, var_283_3 = __recovered_scope_0.var_0_190.spritePoint(arg_283_0, arg_283_1, arg_283_4, var_283_0, var_283_1, false)
	local var_283_4, var_283_5 = __recovered_scope_0.var_0_226.aimPoint(arg_283_1, arg_283_2, var_283_2, var_283_3)

	return __recovered_scope_0.var_0_226.spawn(arg_283_0, arg_283_1, arg_283_2, arg_283_3, var_283_2, var_283_3, var_283_4, var_283_5, {
		asset = arg_283_4,
		x = var_283_0,
		y = var_283_1
	})
end

function __recovered_scope_0.var_0_226.spawn(arg_284_0, arg_284_1, arg_284_2, arg_284_3, arg_284_4, arg_284_5, arg_284_6, arg_284_7, arg_284_8)
	local var_284_0 = arg_284_1.skill or {}
	local var_284_1 = arg_284_1.primarySkillDef and arg_284_1.primarySkillDef.runtime or {}
	local var_284_2 = arg_284_6 - arg_284_4
	local var_284_3 = arg_284_7 - arg_284_5
	local var_284_4 = math.sqrt(var_284_2 * var_284_2 + var_284_3 * var_284_3)

	if var_284_4 < 1e-06 then
		var_284_2, var_284_3, var_284_4 = (arg_284_1.facing or 1) < 0 and -1 or 1, 0, 1
	end

	local var_284_5 = tonumber(var_284_0.maxTargets or var_284_1.maxTargets) or 3
	local var_284_6 = {
		lastUpdateT = 0,
		dur = 1,
		t = 0,
		stateT = 0,
		holdSpawnPosition = true,
		state = "rush",
		distinct = 0,
		kind = "spectral_rush",
		travel = 0,
		backTravel = 0,
		x = arg_284_4,
		y = arg_284_5,
		sx = arg_284_4,
		sy = arg_284_5,
		homeX = arg_284_4,
		homeY = arg_284_5,
		dirX = var_284_2 / var_284_4,
		dirY = var_284_3 / var_284_4,
		face = var_284_2 < -1e-06 and -1 or var_284_2 > 1e-06 and 1 or (arg_284_1.facing or 1) < 0 and -1 or 1,
		stop = tonumber(var_284_1.reach) or __recovered_scope_0.var_0_226.REACH,
		owner = arg_284_1,
		target = arg_284_2,
		atk = arg_284_3,
		dmgMul = var_284_0.dmgMul or tonumber(var_284_1.dmgMul) or 1.3,
		base = var_284_5,
		limit = require("src.game.combat").branching_bloom.limit(arg_284_0, arg_284_1, var_284_5),
		order = {},
		contacts = {},
		struck = {},
		hits = {},
		home = arg_284_8,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_284_0) / 32 + 0.5)),
		sheet = var_284_1.sheet or __recovered_scope_0.var_0_226.SHEET,
		style = var_284_1.style,
		streaks = var_284_1.streaks,
		anchorX = tonumber(var_284_1.anchorX),
		anchorY = tonumber(var_284_1.anchorY),
		returnDmgMul = tonumber(var_284_1.returnDmgMul),
		turnDur = tonumber(var_284_1.turn),
		backOrder = {},
		backContacts = {},
		backStruck = {},
		backHits = {},
		chainCast = require("src.game.combat").chain_casting.capture(arg_284_1),
		awakeningCast = arg_284_1._awakening and arg_284_1._awakening.cast
	}

	arg_284_0.vfx = arg_284_0.vfx or {}
	arg_284_0.vfx[#arg_284_0.vfx + 1] = var_284_6
	arg_284_1._spectralRushWraith = var_284_6

	return var_284_6
end

 function __recovered_scope_0.var_0_229(arg_285_0, arg_285_1, arg_285_2, arg_285_3, arg_285_4)
	arg_285_1.struck[arg_285_2] = true
	arg_285_1.distinct = (arg_285_1.distinct or 0) + 1

	local var_285_0 = #arg_285_1.hits + 1
	local var_285_1, var_285_2 = __recovered_scope_0.var_0_190.targetPoint(arg_285_0, arg_285_2)

	arg_285_1.hits[var_285_0] = {
		e = arg_285_2,
		t = arg_285_1.t,
		x = var_285_1,
		y = var_285_2,
		wx = arg_285_1.x,
		wy = arg_285_1.y,
		index = var_285_0,
		bloom = var_285_0 > arg_285_1.base,
		ex = arg_285_2.x or 0,
		ey = arg_285_2.y or 0,
		cover = __recovered_scope_0.var_0_190.targetCover(arg_285_0, arg_285_2)
	}

	require("src.game.unit_abilities").spectral_rush.strike(arg_285_0, arg_285_1, arg_285_2, var_285_0, arg_285_3, arg_285_4)

	if var_285_0 >= arg_285_1.limit then
		arg_285_1.stop = arg_285_1.travel + __recovered_scope_0.var_0_226.OVERSHOOT
	else
		arg_285_1.stop = math.max(arg_285_1.stop, arg_285_1.travel + __recovered_scope_0.var_0_226.OVERSHOOT)
	end
end

 function __recovered_scope_0.var_0_230(arg_286_0)
	arg_286_0.state, arg_286_0.stateT, arg_286_0.turnT, arg_286_0.turnX, arg_286_0.turnY = "turn", arg_286_0.t, arg_286_0.t, arg_286_0.x, arg_286_0.y
end

 function __recovered_scope_0.var_0_231(arg_287_0)
	arg_287_0.state, arg_287_0.stateT, arg_287_0.fromX, arg_287_0.fromY = "return", arg_287_0.t, arg_287_0.x, arg_287_0.y

	if not arg_287_0.flipT then
		arg_287_0.flipT, arg_287_0.flipX, arg_287_0.flipY, arg_287_0.face = arg_287_0.t, arg_287_0.x, arg_287_0.y, -(arg_287_0.face or 1)
	end

	local var_287_0 = math.sqrt((arg_287_0.homeX - arg_287_0.x)^2 + (arg_287_0.homeY - arg_287_0.y)^2)

	arg_287_0.retDur = math.max(__recovered_scope_0.var_0_226.RETURN_MIN, var_287_0 / __recovered_scope_0.var_0_226.RETURN_SPEED)
	arg_287_0.arriveT = arg_287_0.t + arg_287_0.retDur
end

 function __recovered_scope_0.var_0_232(arg_288_0, arg_288_1, arg_288_2, arg_288_3, arg_288_4, arg_288_5, arg_288_6, arg_288_7)
	local var_288_0 = require("src.game.unit_abilities").spectral_rush
	local var_288_1 = arg_288_1.pixel or 2
	local var_288_2 = math.min(arg_288_2, arg_288_4) - 17 * var_288_1
	local var_288_3 = math.max(arg_288_2, arg_288_4) + 17 * var_288_1
	local var_288_4 = math.min(arg_288_3, arg_288_5) - 10 * var_288_1
	local var_288_5 = math.max(arg_288_3, arg_288_5) + 3 * var_288_1
	local var_288_6 = {}

	for iter_288_0, iter_288_1 in ipairs(arg_288_0.enemies or {}) do
		if not arg_288_7[iter_288_1] and var_288_0.targetable(arg_288_0, arg_288_1.owner, iter_288_1, arg_288_6) then
			local var_288_7 = __recovered_scope_0.var_0_190.targetCover(arg_288_0, iter_288_1)
			local var_288_8
			local var_288_9
			local var_288_10
			local var_288_11

			if var_288_7 then
				var_288_8, var_288_9 = math.min(var_288_7.ox, var_288_7.ox + var_288_7.qw * var_288_7.ux), math.max(var_288_7.ox, var_288_7.ox + var_288_7.qw * var_288_7.ux)
				var_288_10, var_288_11 = math.min(var_288_7.oy, var_288_7.oy + var_288_7.qh * var_288_7.uy), math.max(var_288_7.oy, var_288_7.oy + var_288_7.qh * var_288_7.uy)
			else
				var_288_8, var_288_9, var_288_10, var_288_11 = (iter_288_1.x or 0) - __recovered_scope_0.var_0_226.BODY_R, (iter_288_1.x or 0) + __recovered_scope_0.var_0_226.BODY_R, (iter_288_1.y or 0) - __recovered_scope_0.var_0_226.BODY_R, (iter_288_1.y or 0) + __recovered_scope_0.var_0_226.BODY_R
			end

			if var_288_2 <= var_288_9 and var_288_8 <= var_288_3 and var_288_4 <= var_288_11 and var_288_10 <= var_288_5 then
				var_288_6[#var_288_6 + 1] = iter_288_1
				var_288_6[iter_288_1] = var_288_7 or false
			end
		end
	end

	return var_288_6
end

 function __recovered_scope_0.var_0_233(arg_289_0)
	local var_289_0 = __recovered_scope_0.var_0_226.SPEED * math.min(1, (arg_289_0.t - arg_289_0.stateT) / __recovered_scope_0.var_0_226.LAUNCH)
	local var_289_1 = math.sqrt(2 * __recovered_scope_0.var_0_226.BRAKE * math.max(0, arg_289_0.stop - arg_289_0.travel))

	return math.min(var_289_0, math.max(__recovered_scope_0.var_0_226.CREEP, var_289_1))
end

 function __recovered_scope_0.var_0_234(arg_290_0, arg_290_1, arg_290_2, arg_290_3, arg_290_4)
	local var_290_0 = arg_290_2 - arg_290_1.travel

	if var_290_0 <= 0 then
		return
	end

	local var_290_1 = __recovered_scope_0.var_0_232(arg_290_0, arg_290_1, arg_290_1.x, arg_290_1.y, arg_290_1.sx + arg_290_1.dirX * arg_290_2, arg_290_1.sy + arg_290_1.dirY * arg_290_2, arg_290_3, arg_290_1.contacts)
	local var_290_2 = __recovered_scope_0.var_0_226.SINK * (arg_290_1.pixel or 2)
	local var_290_3 = math.max(1, math.ceil(var_290_0))
	local var_290_4 = arg_290_1.travel

	for iter_290_0 = 1, var_290_3 do
		local var_290_5 = math.min(arg_290_1.stop, var_290_4 + var_290_0 * iter_290_0 / var_290_3)

		arg_290_1.travel, arg_290_1.x, arg_290_1.y = var_290_5, arg_290_1.sx + arg_290_1.dirX * var_290_5, arg_290_1.sy + arg_290_1.dirY * var_290_5

		for iter_290_1, iter_290_2 in ipairs(var_290_1) do
			if #arg_290_1.order >= arg_290_1.limit then
				break
			end

			if not arg_290_1.contacts[iter_290_2] and __recovered_scope_0.var_0_226.overlaps(arg_290_1, arg_290_1.x, arg_290_1.y, iter_290_2, var_290_1[iter_290_2] or nil) then
				arg_290_1.contacts[iter_290_2] = var_290_5
				arg_290_1.order[#arg_290_1.order + 1] = iter_290_2
			end
		end

		for iter_290_3, iter_290_4 in ipairs(arg_290_1.order) do
			if not arg_290_1.struck[iter_290_4] and var_290_5 >= arg_290_1.contacts[iter_290_4] + var_290_2 - 1e-09 then
				__recovered_scope_0.var_0_229(arg_290_0, arg_290_1, iter_290_4, arg_290_3, arg_290_4)
			end
		end

		if var_290_5 >= arg_290_1.stop - 1e-09 then
			break
		end
	end
end

 function __recovered_scope_0.var_0_235(arg_291_0, arg_291_1, arg_291_2, arg_291_3, arg_291_4)
	arg_291_1.backStruck[arg_291_2] = true

	local var_291_0 = false

	if arg_291_1.struck[arg_291_2] then
		for iter_291_0, iter_291_1 in ipairs(arg_291_1.hits) do
			if iter_291_1.e == arg_291_2 then
				var_291_0 = iter_291_1.bloom
			end
		end
	else
		arg_291_1.distinct = (arg_291_1.distinct or 0) + 1
		var_291_0 = arg_291_1.distinct > arg_291_1.base
	end

	local var_291_1, var_291_2 = __recovered_scope_0.var_0_190.targetPoint(arg_291_0, arg_291_2)
	local var_291_3 = #arg_291_1.backHits + 1

	arg_291_1.backHits[var_291_3] = {
		back = true,
		e = arg_291_2,
		t = arg_291_1.t,
		x = var_291_1,
		y = var_291_2,
		wx = arg_291_1.x,
		wy = arg_291_1.y,
		index = var_291_3,
		bloom = var_291_0,
		ex = arg_291_2.x or 0,
		ey = arg_291_2.y or 0,
		cover = __recovered_scope_0.var_0_190.targetCover(arg_291_0, arg_291_2)
	}

	require("src.game.unit_abilities").spectral_rush.strikeBack(arg_291_0, arg_291_1, arg_291_2, var_291_0, arg_291_3, arg_291_4)
end

 function __recovered_scope_0.var_0_236(arg_292_0, arg_292_1, arg_292_2, arg_292_3, arg_292_4, arg_292_5, arg_292_6, arg_292_7)
	local var_292_0 = math.sqrt((arg_292_4 - arg_292_2)^2 + (arg_292_5 - arg_292_3)^2)

	if var_292_0 <= 1e-09 then
		return
	end

	local var_292_1 = __recovered_scope_0.var_0_232(arg_292_0, arg_292_1, arg_292_2, arg_292_3, arg_292_4, arg_292_5, arg_292_6, arg_292_1.backContacts)
	local var_292_2 = __recovered_scope_0.var_0_226.SINK * (arg_292_1.pixel or 2)
	local var_292_3 = math.max(1, math.ceil(var_292_0))
	local var_292_4 = arg_292_1.backTravel

	for iter_292_0 = 1, var_292_3 do
		local var_292_5 = iter_292_0 / var_292_3
		local var_292_6 = arg_292_2 + (arg_292_4 - arg_292_2) * var_292_5
		local var_292_7 = arg_292_3 + (arg_292_5 - arg_292_3) * var_292_5
		local var_292_8 = var_292_4 + var_292_0 * var_292_5

		arg_292_1.backTravel = var_292_8

		for iter_292_1, iter_292_2 in ipairs(var_292_1) do
			if not arg_292_1.backContacts[iter_292_2] then
				local var_292_9 = not arg_292_1.struck[iter_292_2]

				if (not var_292_9 or (arg_292_1.distinct or 0) + (arg_292_1.backFresh or 0) < arg_292_1.limit) and __recovered_scope_0.var_0_226.overlaps(arg_292_1, var_292_6, var_292_7, iter_292_2, var_292_1[iter_292_2] or nil) then
					arg_292_1.backContacts[iter_292_2] = var_292_8
					arg_292_1.backOrder[#arg_292_1.backOrder + 1] = iter_292_2

					if var_292_9 then
						arg_292_1.backFresh = (arg_292_1.backFresh or 0) + 1
					end
				end
			end
		end

		for iter_292_3, iter_292_4 in ipairs(arg_292_1.backOrder) do
			if not arg_292_1.backStruck[iter_292_4] and var_292_8 >= arg_292_1.backContacts[iter_292_4] + var_292_2 - 1e-09 then
				if not arg_292_1.struck[iter_292_4] then
					arg_292_1.backFresh = arg_292_1.backFresh - 1
				end

				__recovered_scope_0.var_0_235(arg_292_0, arg_292_1, iter_292_4, arg_292_6, arg_292_7)
			end
		end
	end
end

function __recovered_scope_0.var_0_226.update(arg_293_0, arg_293_1, arg_293_2, arg_293_3)
	if arg_293_1.finished then
		return
	end

	if arg_293_1.holdSpawnPosition then
		arg_293_1.holdSpawnPosition = nil
		arg_293_1.t = 0
		arg_293_1.lastUpdateT = 0

		return
	end

	local var_293_0 = math.max(0, (arg_293_1.t or 0) - (arg_293_1.lastUpdateT or 0))

	arg_293_1.lastUpdateT = arg_293_1.t or 0

	local var_293_1 = require("src.game.unit_abilities").spectral_rush
	local var_293_2 = arg_293_1.owner

	arg_293_1.dur = (arg_293_1.t or 0) + 1

	if arg_293_1.state == "home" then
		if arg_293_1.t - arg_293_1.mergeT >= __recovered_scope_0.var_0_226.AFTER - 1e-09 then
			arg_293_1.finished = true
		end

		return
	end

	if arg_293_1.state ~= "fade" and not __recovered_scope_0.var_0_228(var_293_2) then
		arg_293_1.state, arg_293_1.stateT = "fade", arg_293_1.t

		var_293_1.release(var_293_2, arg_293_1)
	end

	if arg_293_1.state == "fade" then
		if arg_293_1.t - arg_293_1.stateT >= __recovered_scope_0.var_0_226.FADE - 1e-09 then
			arg_293_1.finished = true
		end

		return
	end

	if arg_293_1.home then
		arg_293_1.homeX, arg_293_1.homeY = __recovered_scope_0.var_0_190.spritePoint(arg_293_0, var_293_2, arg_293_1.home.asset, arg_293_1.home.x, arg_293_1.home.y, false)
	end

	if arg_293_1.state == "rush" then
		if not var_293_1.canAct(var_293_2) then
			arg_293_1.stop, arg_293_1.v = arg_293_1.travel, 0
		else
			arg_293_1.v = __recovered_scope_0.var_0_233(arg_293_1)

			__recovered_scope_0.var_0_234(arg_293_0, arg_293_1, math.min(arg_293_1.stop, arg_293_1.travel + arg_293_1.v * var_293_0), arg_293_2, arg_293_3)
		end

		if arg_293_1.travel >= arg_293_1.stop - 1e-09 then
			for iter_293_0, iter_293_1 in ipairs(arg_293_1.order) do
				if not arg_293_1.struck[iter_293_1] and var_293_1.targetable(arg_293_0, var_293_2, iter_293_1, arg_293_2) then
					__recovered_scope_0.var_0_229(arg_293_0, arg_293_1, iter_293_1, arg_293_2, arg_293_3)
				end
			end

			__recovered_scope_0.var_0_230(arg_293_1)
		end
	end

	if arg_293_1.state == "turn" then
		local var_293_3 = math.min(1, (arg_293_1.t - arg_293_1.stateT) / (arg_293_1.turnDur or __recovered_scope_0.var_0_226.TURN))
		local var_293_4 = 1 - (1 - var_293_3) * (1 - var_293_3)

		arg_293_1.x, arg_293_1.y = arg_293_1.turnX + arg_293_1.dirX * __recovered_scope_0.var_0_226.DRIFT * var_293_4, arg_293_1.turnY + arg_293_1.dirY * __recovered_scope_0.var_0_226.DRIFT * var_293_4

		if var_293_3 >= __recovered_scope_0.var_0_226.FLIP and not arg_293_1.flipT then
			arg_293_1.flipT, arg_293_1.flipX, arg_293_1.flipY, arg_293_1.face = arg_293_1.t, arg_293_1.x, arg_293_1.y, -(arg_293_1.face or 1)
		end

		if var_293_3 >= 1 then
			__recovered_scope_0.var_0_231(arg_293_1)
		end
	end

	if arg_293_1.state == "return" then
		local var_293_5 = math.min(1, (arg_293_1.t - arg_293_1.stateT) / arg_293_1.retDur)
		local var_293_6 = var_293_5 * var_293_5 * (3 - 2 * var_293_5)
		local var_293_7 = arg_293_1.x
		local var_293_8 = arg_293_1.y

		arg_293_1.x, arg_293_1.y = arg_293_1.fromX + (arg_293_1.homeX - arg_293_1.fromX) * var_293_6, arg_293_1.fromY + (arg_293_1.homeY - arg_293_1.fromY) * var_293_6

		if arg_293_1.returnDmgMul and var_293_1.canAct(var_293_2) then
			__recovered_scope_0.var_0_236(arg_293_0, arg_293_1, var_293_7, var_293_8, arg_293_1.x, arg_293_1.y, arg_293_2, arg_293_3)
		end

		if var_293_5 >= 1 then
			for iter_293_2, iter_293_3 in ipairs(arg_293_1.backOrder) do
				if not arg_293_1.backStruck[iter_293_3] and var_293_1.targetable(arg_293_0, var_293_2, iter_293_3, arg_293_2) then
					if not arg_293_1.struck[iter_293_3] then
						arg_293_1.backFresh = arg_293_1.backFresh - 1
					end

					__recovered_scope_0.var_0_235(arg_293_0, arg_293_1, iter_293_3, arg_293_2, arg_293_3)
				end
			end

			arg_293_1.state, arg_293_1.merged, arg_293_1.mergeT = "home", true, arg_293_1.t

			var_293_1.merged(var_293_2, arg_293_1)
		end
	end
end

 __recovered_scope_0.var_0_237 = __recovered_scope_0.var_0_226
 __recovered_scope_0.var_0_238 = nil
 __recovered_scope_0.var_0_239 = {
	BEAM = 3,
	FADE = 0.25,
	SWING = 0.15,
	INTERVAL = 0.5,
	STEPS = {
		0.4,
		0.4,
		0.8,
		0.8,
		1.2,
		1.2
	},
	MARKER = {
		214,
		182,
		241
	}
}

function __recovered_scope_0.var_0_239.marker(arg_294_0, arg_294_1, arg_294_2)
	local var_294_0 = arg_294_1.skill or {}
	local var_294_1 = (arg_294_1.primarySkillDef and arg_294_1.primarySkillDef.runtime or {}).marker or __recovered_scope_0.var_0_239.MARKER

	arg_294_2 = arg_294_2 or arg_294_0 and arg_294_0.getUnitAssetForAlly and arg_294_0:getUnitAssetForAlly(arg_294_1)

	if not arg_294_2 then
		return nil
	end

	return __recovered_scope_0.var_0_51.findAttackMarker(arg_294_2, {
		exactPixel = true,
		cacheKey = "_abyssalRayMarker",
		animation = var_294_0.activeAnim or "attack2",
		frame = var_294_0.releaseFrame or 4,
		r = var_294_1[1],
		g = var_294_1[2],
		b = var_294_1[3]
	})
end

function __recovered_scope_0.var_0_239.origin(arg_295_0, arg_295_1, arg_295_2)
	arg_295_2 = arg_295_2 or arg_295_0 and arg_295_0.getUnitAssetForAlly and arg_295_0:getUnitAssetForAlly(arg_295_1)

	local var_295_0, var_295_1 = __recovered_scope_0.var_0_239.marker(arg_295_0, arg_295_1, arg_295_2)

	if not var_295_0 then
		return nil
	end

	local var_295_2, var_295_3 = __recovered_scope_0.var_0_190.spritePoint(arg_295_0, arg_295_1, arg_295_2, var_295_0, var_295_1, false)
	local var_295_4 = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_295_0) / 32 + 0.5))

	return var_295_2 + require("src.game.unit_abilities").abyssal_ray.sway(arg_295_1, var_295_4), var_295_3
end

function __recovered_scope_0.var_0_239.spawn(arg_296_0, arg_296_1, arg_296_2, arg_296_3)
	local var_296_0 = arg_296_1.primarySkillDef and arg_296_1.primarySkillDef.runtime or {}
	local var_296_1 = {
		t = 0,
		state = "charge",
		ticks = 0,
		kind = "abyssal_ray",
		dur = math.huge,
		owner = arg_296_1,
		target = arg_296_2,
		metric = arg_296_3,
		beam = tonumber(var_296_0.beam) or __recovered_scope_0.var_0_239.BEAM,
		interval = tonumber(var_296_0.interval) or __recovered_scope_0.var_0_239.INTERVAL,
		steps = var_296_0.steps or __recovered_scope_0.var_0_239.STEPS,
		beams = math.max(1, tonumber(var_296_0.beams) or 1),
		style = var_296_0.style,
		hits = {},
		rays = {},
		face = arg_296_1.facing or 1,
		windup = tonumber(var_296_0.windup) or require("src.game.unit_abilities").abyssal_ray.WINDUP,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_296_0) / 32 + 0.5)),
		asset = arg_296_0.getUnitAssetForAlly and arg_296_0:getUnitAssetForAlly(arg_296_1) or nil
	}

	var_296_1.ox, var_296_1.oy = __recovered_scope_0.var_0_239.origin(arg_296_0, arg_296_1, var_296_1.asset)

	if arg_296_2 then
		var_296_1.tx, var_296_1.ty = __recovered_scope_0.var_0_190.targetPoint(arg_296_0, arg_296_2)
	end

	var_296_1.ex, var_296_1.ey = var_296_1.tx, var_296_1.ty
	arg_296_0.vfx = arg_296_0.vfx or {}
	arg_296_0.vfx[#arg_296_0.vfx + 1] = var_296_1

	return var_296_1
end

 function __recovered_scope_0.var_0_240(arg_297_0)
	local var_297_0 = arg_297_0.rays[1]

	if not var_297_0 then
		return
	end

	arg_297_0.target, arg_297_0.tx, arg_297_0.ty, arg_297_0.ex, arg_297_0.ey = var_297_0.target, var_297_0.tx, var_297_0.ty, var_297_0.ex, var_297_0.ey
	arg_297_0.swingT, arg_297_0.swingX, arg_297_0.swingY = var_297_0.swingT, var_297_0.swingX, var_297_0.swingY
end

function __recovered_scope_0.var_0_239.release(arg_298_0, arg_298_1, arg_298_2, arg_298_3)
	if arg_298_1.finished or arg_298_1.state ~= "charge" then
		return false
	end

	local var_298_0 = arg_298_1.owner
	local var_298_1 = arg_298_2 and (arg_298_2[1] ~= nil and arg_298_2 or arg_298_2.x and {
		arg_298_2
	}) or {}

	arg_298_1.state, arg_298_1.releaseT, arg_298_1.atk = "beam", arg_298_1.t or 0, arg_298_3
	arg_298_1.face = var_298_0.facing or arg_298_1.face or 1
	arg_298_1.chainCast = require("src.game.combat").chain_casting.capture(var_298_0)
	arg_298_1.awakeningCast = var_298_0._awakening and var_298_0._awakening.cast

	local var_298_2, var_298_3 = __recovered_scope_0.var_0_239.origin(arg_298_0, var_298_0, arg_298_1.asset)

	if var_298_2 then
		arg_298_1.ox, arg_298_1.oy = var_298_2, var_298_3
	end

	arg_298_1.rays = {}

	for iter_298_0 = 1, arg_298_1.beams do
		local var_298_4 = {
			index = iter_298_0,
			target = var_298_1[iter_298_0]
		}

		if var_298_4.target then
			var_298_4.tx, var_298_4.ty = __recovered_scope_0.var_0_190.targetPoint(arg_298_0, var_298_4.target)
		elseif iter_298_0 == 1 and arg_298_1.ox then
			var_298_4.tx, var_298_4.ty = arg_298_1.ox + arg_298_1.face * 120, arg_298_1.oy
		end

		var_298_4.ex, var_298_4.ey = var_298_4.tx, var_298_4.ty
		arg_298_1.rays[iter_298_0] = var_298_4
	end

	__recovered_scope_0.var_0_240(arg_298_1)

	return true
end

function __recovered_scope_0.var_0_239.stop(arg_299_0)
	if arg_299_0.finished then
		return
	end

	if arg_299_0.state == "charge" then
		arg_299_0.finished = true

		return
	end

	if arg_299_0.state ~= "beam" then
		return
	end

	arg_299_0.state, arg_299_0.endT = "fade", arg_299_0.t or 0
	arg_299_0.cut = (arg_299_0.t or 0) - (arg_299_0.releaseT or 0) < arg_299_0.beam - 1e-06
	arg_299_0.dur = arg_299_0.endT + __recovered_scope_0.var_0_239.FADE
end

function __recovered_scope_0.var_0_239.beamTime(arg_300_0)
	return arg_300_0.releaseT and (arg_300_0.t or 0) - arg_300_0.releaseT or nil
end

function __recovered_scope_0.var_0_239.update(arg_301_0, arg_301_1, arg_301_2, arg_301_3)
	if arg_301_1.finished then
		return
	end

	local var_301_0 = arg_301_1.owner
	local var_301_1 = require("src.game.unit_abilities").abyssal_ray

	if arg_301_1.state == "fade" then
		if (arg_301_1.t or 0) - (arg_301_1.endT or 0) >= __recovered_scope_0.var_0_239.FADE then
			arg_301_1.finished = true
		end

		return
	end

	if not var_301_1.holding(var_301_0, arg_301_1) then
		__recovered_scope_0.var_0_239.stop(arg_301_1)

		return
	end

	local var_301_2, var_301_3 = __recovered_scope_0.var_0_239.origin(arg_301_0, var_301_0, arg_301_1.asset)

	if var_301_2 then
		arg_301_1.ox, arg_301_1.oy = var_301_2, var_301_3
	end

	if arg_301_1.state ~= "beam" then
		return
	end

	arg_301_1.face = var_301_0.facing or arg_301_1.face

	local var_301_4 = {}
	local var_301_5 = false

	for iter_301_0, iter_301_1 in ipairs(arg_301_1.rays) do
		if iter_301_1.target and not var_301_1.targetable(arg_301_0, var_301_0, iter_301_1.target, arg_301_2) then
			iter_301_1.target = nil
		end

		if iter_301_1.target then
			var_301_4[iter_301_1.target] = (var_301_4[iter_301_1.target] or 0) + 1
		end
	end

	for iter_301_2, iter_301_3 in ipairs(arg_301_1.rays) do
		if not iter_301_3.target then
			local var_301_6 = var_301_1.pick(arg_301_0, var_301_0, arg_301_2, arg_301_1.metric, var_301_4)

			if var_301_6 then
				if iter_301_3.ex then
					iter_301_3.swingT, iter_301_3.swingX, iter_301_3.swingY = arg_301_1.t, iter_301_3.ex, iter_301_3.ey
				end

				iter_301_3.target, var_301_4[var_301_6], var_301_5 = var_301_6, (var_301_4[var_301_6] or 0) + 1, true
			end
		end
	end

	if var_301_5 and arg_301_1.rays[1] and arg_301_1.rays[1].target then
		var_301_1.face(var_301_0, arg_301_1.rays[1].target)

		arg_301_1.face = var_301_0.facing
	end

	for iter_301_4, iter_301_5 in ipairs(arg_301_1.rays) do
		if iter_301_5.target then
			iter_301_5.tx, iter_301_5.ty = __recovered_scope_0.var_0_190.targetPoint(arg_301_0, iter_301_5.target)
		elseif not iter_301_5.tx and arg_301_1.ox then
			iter_301_5.tx, iter_301_5.ty = arg_301_1.ox + arg_301_1.face * 120, arg_301_1.oy
		end

		local var_301_7 = iter_301_5.swingT and math.min(1, ((arg_301_1.t or 0) - iter_301_5.swingT) / __recovered_scope_0.var_0_239.SWING) or 1

		if var_301_7 < 1 and iter_301_5.swingX then
			local var_301_8 = var_301_7 * var_301_7 * (3 - 2 * var_301_7)

			iter_301_5.ex, iter_301_5.ey = iter_301_5.swingX + (iter_301_5.tx - iter_301_5.swingX) * var_301_8, iter_301_5.swingY + (iter_301_5.ty - iter_301_5.swingY) * var_301_8
		else
			iter_301_5.ex, iter_301_5.ey = iter_301_5.tx, iter_301_5.ty
		end
	end

	__recovered_scope_0.var_0_240(arg_301_1)

	local var_301_9 = __recovered_scope_0.var_0_239.beamTime(arg_301_1)

	while arg_301_1.ticks < #arg_301_1.steps and var_301_9 >= (arg_301_1.ticks + 1) * arg_301_1.interval - 1e-06 do
		arg_301_1.ticks = arg_301_1.ticks + 1

		local var_301_10 = arg_301_1.steps[arg_301_1.ticks]
		local var_301_11 = {}
		local var_301_12 = {}

		for iter_301_6, iter_301_7 in ipairs(arg_301_1.rays) do
			local var_301_13 = iter_301_7.target or iter_301_7
			local var_301_14 = var_301_11[var_301_13]

			if not var_301_14 then
				var_301_14 = {
					count = 0,
					mul = 0,
					t = arg_301_1.releaseT + arg_301_1.ticks * arg_301_1.interval,
					index = arg_301_1.ticks,
					rays = {},
					x = iter_301_7.tx,
					y = iter_301_7.ty
				}
				var_301_11[var_301_13], var_301_12[#var_301_12 + 1] = var_301_14, {
					h = var_301_14,
					e = iter_301_7.target
				}
			end

			var_301_14.mul, var_301_14.count, var_301_14.rays[#var_301_14.rays + 1] = var_301_14.mul + var_301_10, var_301_14.count + 1, iter_301_6
		end

		for iter_301_8, iter_301_9 in ipairs(var_301_12) do
			if iter_301_9.e and var_301_1.strike(arg_301_0, arg_301_1, iter_301_9.e, iter_301_9.h.mul, arg_301_2, arg_301_3) then
				iter_301_9.h.e = iter_301_9.e
			end

			arg_301_1.hits[#arg_301_1.hits + 1] = iter_301_9.h
		end
	end

	if var_301_9 >= arg_301_1.beam - 1e-06 then
		__recovered_scope_0.var_0_239.stop(arg_301_1)
	end
end

 __recovered_scope_0.var_0_241 = __recovered_scope_0.var_0_239
 __recovered_scope_0.var_0_242 = nil
 __recovered_scope_0.var_0_243 = {
	JOIN_SPEED = 190,
	ANCHOR_Y = 8.5,
	SHEET = "src/sprites/units/Mage/04Legend/02LegendMage_02Skill.png",
	SPEED = 240,
	FRAME = 0.08,
	HEAL_SPEED = 210,
	SEEK_SPEED = 150,
	FORM = 0.35,
	BURST = 0.4,
	FRAMES = 4,
	ANCHOR_X = 10.5,
	FADE = 0.3,
	HOVER = {
		y = -30,
		x = -15
	},
	HOVERS = {
		{
			y = -30,
			x = -15
		},
		{
			y = -42,
			x = -4
		}
	},
	MARKER = {
		70,
		204,
		94
	}
}

 function __recovered_scope_0.var_0_244(arg_302_0)
	return arg_302_0 and arg_302_0.primarySkillDef and arg_302_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_243.marker(arg_303_0, arg_303_1, arg_303_2)
	local var_303_0 = arg_303_1.skill or {}
	local var_303_1 = __recovered_scope_0.var_0_244(arg_303_1).marker or __recovered_scope_0.var_0_243.MARKER

	arg_303_2 = arg_303_2 or arg_303_0 and arg_303_0.getUnitAssetForAlly and arg_303_0:getUnitAssetForAlly(arg_303_1)

	if not arg_303_2 then
		return nil
	end

	return __recovered_scope_0.var_0_51.findAttackMarker(arg_303_2, {
		exactPixel = true,
		cacheKey = "_lifeSiphonMarker",
		animation = var_303_0.activeAnim or "attack",
		frame = var_303_0.releaseFrame or 5,
		r = var_303_1[1],
		g = var_303_1[2],
		b = var_303_1[3]
	})
end

function __recovered_scope_0.var_0_243.origin(arg_304_0, arg_304_1, arg_304_2)
	arg_304_2 = arg_304_2 or arg_304_0 and arg_304_0.getUnitAssetForAlly and arg_304_0:getUnitAssetForAlly(arg_304_1)

	local var_304_0, var_304_1 = __recovered_scope_0.var_0_243.marker(arg_304_0, arg_304_1, arg_304_2)

	if not var_304_0 then
		return nil
	end

	return __recovered_scope_0.var_0_190.spritePoint(arg_304_0, arg_304_1, arg_304_2, var_304_0, var_304_1, false)
end

function __recovered_scope_0.var_0_243.frame(arg_305_0, arg_305_1)
	return 1 + math.floor(math.max(0, arg_305_0 or 0) / __recovered_scope_0.var_0_243.FRAME) % (arg_305_1 or __recovered_scope_0.var_0_243.FRAMES)
end

 __recovered_scope_0.var_0_245 = {}

function __recovered_scope_0.var_0_243.cellsOf(arg_306_0, arg_306_1)
	local var_306_0 = {}

	for iter_306_0 = 1, arg_306_1 or __recovered_scope_0.var_0_243.FRAMES do
		local var_306_1 = {}

		for iter_306_1 = 0, 15 do
			for iter_306_2 = 0, 15 do
				local var_306_2, var_306_3, var_306_4, var_306_5 = arg_306_0:getPixel((iter_306_0 - 1) * 16 + iter_306_2, iter_306_1)

				if var_306_5 > 0 then
					var_306_1[#var_306_1 + 1] = {
						iter_306_2,
						iter_306_1
					}
				end
			end
		end

		var_306_0[iter_306_0] = var_306_1
	end

	return var_306_0
end

function __recovered_scope_0.var_0_243.useSheet(arg_307_0, arg_307_1, arg_307_2)
	__recovered_scope_0.var_0_245[arg_307_0] = __recovered_scope_0.var_0_243.cellsOf(arg_307_1, arg_307_2)
end

function __recovered_scope_0.var_0_243.cells(arg_308_0, arg_308_1)
	if __recovered_scope_0.var_0_245[arg_308_0] == nil then
		local var_308_0, var_308_1 = pcall(function()
			return love.image.newImageData(arg_308_0)
		end)

		__recovered_scope_0.var_0_245[arg_308_0] = var_308_0 and var_308_1 and __recovered_scope_0.var_0_243.cellsOf(var_308_1, arg_308_1) or false
	end

	return __recovered_scope_0.var_0_245[arg_308_0] or nil
end

function __recovered_scope_0.var_0_243.touches(arg_310_0, arg_310_1, arg_310_2)
	local var_310_0 = __recovered_scope_0.var_0_190.targetCover(arg_310_0, arg_310_2)
	local var_310_1 = var_310_0 and __recovered_scope_0.var_0_243.cells(arg_310_1.sheet, arg_310_1.frames)

	if not var_310_1 then
		return false
	end

	local var_310_2 = arg_310_1.pixel or 2
	local var_310_3 = arg_310_1.face or 1
	local var_310_4 = arg_310_1.anchorX or __recovered_scope_0.var_0_243.ANCHOR_X
	local var_310_5 = arg_310_1.anchorY or __recovered_scope_0.var_0_243.ANCHOR_Y

	for iter_310_0, iter_310_1 in ipairs(var_310_1[__recovered_scope_0.var_0_243.frame((arg_310_1.t or 0) - (arg_310_1.releaseT or 0), arg_310_1.frames)] or var_310_1[1]) do
		local var_310_6 = var_310_3 < 0 and arg_310_1.x + (var_310_4 - iter_310_1[1] - 1) * var_310_2 or arg_310_1.x + (iter_310_1[1] - var_310_4) * var_310_2
		local var_310_7 = arg_310_1.y + (iter_310_1[2] - var_310_5) * var_310_2

		if __recovered_scope_0.var_0_203.coverOverlaps(var_310_0, var_310_6, var_310_7, var_310_6 + var_310_2, var_310_7 + var_310_2) then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_243.spawn(arg_311_0, arg_311_1, arg_311_2)
	local var_311_0 = __recovered_scope_0.var_0_244(arg_311_1)
	local var_311_1 = {
		t = 0,
		state = "charge",
		bend = 0,
		kind = "life_siphon",
		dur = math.huge,
		owner = arg_311_1,
		target = arg_311_2,
		face = arg_311_1.facing or 1,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_311_0) / 32 + 0.5)),
		sheet = var_311_0.sheet or __recovered_scope_0.var_0_243.SHEET,
		anchorX = tonumber(var_311_0.anchorX),
		anchorY = tonumber(var_311_0.anchorY),
		frames = tonumber(var_311_0.frames) or __recovered_scope_0.var_0_243.FRAMES,
		gone = tonumber(var_311_0.gone),
		pixelHit = var_311_0.pixelHit == true,
		overshoot = tonumber(var_311_0.overshoot) or 0,
		sink = tonumber(var_311_0.sink) or 0,
		style = var_311_0.style,
		asset = arg_311_0.getUnitAssetForAlly and arg_311_0:getUnitAssetForAlly(arg_311_1) or nil
	}

	var_311_1.x, var_311_1.y = __recovered_scope_0.var_0_243.origin(arg_311_0, arg_311_1, var_311_1.asset)
	arg_311_0.vfx = arg_311_0.vfx or {}
	arg_311_0.vfx[#arg_311_0.vfx + 1] = var_311_1

	return var_311_1
end

function __recovered_scope_0.var_0_243.release(arg_312_0, arg_312_1, arg_312_2, arg_312_3, arg_312_4)
	if arg_312_1.finished or arg_312_1.state ~= "charge" then
		return false
	end

	local var_312_0 = arg_312_1.owner
	local var_312_1 = __recovered_scope_0.var_0_244(var_312_0)

	arg_312_1.state, arg_312_1.releaseT, arg_312_1.target, arg_312_1.atk, arg_312_1.bend = "fly", arg_312_1.t or 0, arg_312_2, arg_312_3, arg_312_4 or 0
	arg_312_1.dmgMul = var_312_0.skill and var_312_0.skill.dmgMul or tonumber(var_312_1.dmgMul) or 1.6
	arg_312_1.chainCast = require("src.game.combat").chain_casting.capture(var_312_0)
	arg_312_1.awakeningCast = var_312_0._awakening and var_312_0._awakening.cast

	local var_312_2, var_312_3 = __recovered_scope_0.var_0_243.origin(arg_312_0, var_312_0, arg_312_1.asset)

	if var_312_2 then
		arg_312_1.x, arg_312_1.y = var_312_2, var_312_3
	end

	if not arg_312_1.x then
		arg_312_1.x, arg_312_1.y = var_312_0.x or 0, (var_312_0.y or 0) - 16
	end

	arg_312_1.sx, arg_312_1.sy = arg_312_1.x, arg_312_1.y
	arg_312_1.face = var_312_0.facing or arg_312_1.face or 1

	if arg_312_2 then
		arg_312_1.tx, arg_312_1.ty = __recovered_scope_0.var_0_190.targetPoint(arg_312_0, arg_312_2)
	else
		arg_312_1.tx, arg_312_1.ty = arg_312_1.x + arg_312_1.face * 260, arg_312_1.y
		arg_312_1.lost = true
	end

	arg_312_1.d0 = math.max(1, math.sqrt((arg_312_1.tx - arg_312_1.x)^2 + (arg_312_1.ty - arg_312_1.y)^2))

	return true
end

function __recovered_scope_0.var_0_243.launch(arg_313_0, arg_313_1, arg_313_2, arg_313_3, arg_313_4, arg_313_5)
	local var_313_0 = __recovered_scope_0.var_0_243.spawn(arg_313_0, arg_313_1, arg_313_2)

	var_313_0.asset = arg_313_4 or var_313_0.asset

	if not var_313_0.x then
		var_313_0.x, var_313_0.y = __recovered_scope_0.var_0_243.origin(arg_313_0, arg_313_1, var_313_0.asset)
	end

	__recovered_scope_0.var_0_243.release(arg_313_0, var_313_0, arg_313_2, arg_313_3, arg_313_5)

	return var_313_0
end

 function __recovered_scope_0.var_0_246(arg_314_0, arg_314_1, arg_314_2, arg_314_3, arg_314_4, arg_314_5)
	local var_314_0 = require("src.game.unit_abilities").life_siphon

	arg_314_1.hitT, arg_314_1.hitX, arg_314_1.hitY = arg_314_1.t, arg_314_4, arg_314_5

	if arg_314_1.target and not arg_314_1.lost then
		arg_314_1.amount = var_314_0.strike(arg_314_0, arg_314_1, arg_314_1.target, arg_314_2, arg_314_3) * (tonumber(__recovered_scope_0.var_0_244(arg_314_1.owner).drainRatio) or 0.5)

		if arg_314_1.amount > 0 and var_314_0.standing(arg_314_1.owner) then
			arg_314_1.orb = __recovered_scope_0.var_0_243.orb(arg_314_0, arg_314_1.owner, arg_314_1.amount, arg_314_4, arg_314_5)
		end
	end

	if arg_314_1.gone then
		arg_314_1.state, arg_314_1.passT = "pass", arg_314_1.t

		if (arg_314_1.overshoot or 0) <= 0 then
			arg_314_1.state, arg_314_1.goneT = "gone", arg_314_1.t
		end
	else
		arg_314_1.state, arg_314_1.dur = "burst", arg_314_1.t + __recovered_scope_0.var_0_243.BURST
	end
end

function __recovered_scope_0.var_0_243.update(arg_315_0, arg_315_1, arg_315_2, arg_315_3)
	if arg_315_1.finished then
		return
	end

	local var_315_0 = require("src.game.unit_abilities").life_siphon

	if arg_315_1.state == "charge" then
		local var_315_1, var_315_2 = __recovered_scope_0.var_0_243.origin(arg_315_0, arg_315_1.owner, arg_315_1.asset)

		if var_315_1 then
			arg_315_1.x, arg_315_1.y = var_315_1, var_315_2
		end

		return
	end

	if arg_315_1.state == "burst" then
		if (arg_315_1.t or 0) - (arg_315_1.hitT or 0) >= __recovered_scope_0.var_0_243.BURST then
			arg_315_1.finished = true
		end

		return
	end

	if arg_315_1.state == "gone" then
		if (arg_315_1.t or 0) - (arg_315_1.goneT or 0) >= (arg_315_1.gone or 2) * __recovered_scope_0.var_0_243.FRAME then
			arg_315_1.finished = true
		end

		return
	end

	local var_315_3 = math.max(0, (arg_315_1.t or 0) - (arg_315_1.lastT or arg_315_1.releaseT or 0))

	arg_315_1.lastT = arg_315_1.t

	local var_315_4 = __recovered_scope_0.var_0_243.SPEED * var_315_3

	if arg_315_1.state == "pass" then
		local var_315_5 = (arg_315_1.overshoot or 0) - (arg_315_1.passed or 0)
		local var_315_6 = math.min(var_315_4, var_315_5)

		arg_315_1.x, arg_315_1.y, arg_315_1.passed = arg_315_1.x + (arg_315_1.dirX or arg_315_1.face) * var_315_6, arg_315_1.y + (arg_315_1.dirY or 0) * var_315_6, (arg_315_1.passed or 0) + var_315_6

		if arg_315_1.passed >= (arg_315_1.overshoot or 0) - 1e-06 then
			arg_315_1.state, arg_315_1.goneT, arg_315_1.dur = "gone", arg_315_1.t, arg_315_1.t + (arg_315_1.gone or 2) * __recovered_scope_0.var_0_243.FRAME
		end

		return
	end

	if arg_315_1.sinkLeft then
		local var_315_7 = math.min(var_315_4, arg_315_1.sinkLeft)

		arg_315_1.x, arg_315_1.y, arg_315_1.sinkLeft = arg_315_1.x + (arg_315_1.dirX or arg_315_1.face) * var_315_7, arg_315_1.y + (arg_315_1.dirY or 0) * var_315_7, arg_315_1.sinkLeft - var_315_7

		if arg_315_1.sinkLeft <= 1e-06 then
			arg_315_1.sinkLeft = nil

			__recovered_scope_0.var_0_246(arg_315_0, arg_315_1, arg_315_2, arg_315_3, arg_315_1.x, arg_315_1.y)
		end

		return
	end

	if arg_315_1.target and var_315_0.targetable(arg_315_0, arg_315_1.owner, arg_315_1.target, arg_315_2) then
		arg_315_1.tx, arg_315_1.ty = __recovered_scope_0.var_0_190.targetPoint(arg_315_0, arg_315_1.target)
	elseif arg_315_1.target then
		arg_315_1.target = nil
		arg_315_1.lost = true
	end

	local var_315_8 = arg_315_1.tx - arg_315_1.x
	local var_315_9 = arg_315_1.ty - arg_315_1.y
	local var_315_10 = math.sqrt(var_315_8 * var_315_8 + var_315_9 * var_315_9)

	if var_315_10 <= var_315_4 + 1e-06 then
		arg_315_1.x, arg_315_1.y = arg_315_1.tx, arg_315_1.ty

		__recovered_scope_0.var_0_246(arg_315_0, arg_315_1, arg_315_2, arg_315_3, arg_315_1.tx, arg_315_1.ty)

		return
	end

	local var_315_11 = var_315_8 / var_315_10
	local var_315_12 = var_315_9 / var_315_10
	local var_315_13 = (arg_315_1.bend or 0) * math.min(1, var_315_10 / (arg_315_1.d0 or var_315_10))^1.5
	local var_315_14 = var_315_11 - var_315_12 * var_315_13
	local var_315_15 = var_315_12 + var_315_11 * var_315_13
	local var_315_16 = math.sqrt(var_315_14 * var_315_14 + var_315_15 * var_315_15)

	arg_315_1.dirX, arg_315_1.dirY = var_315_14 / var_315_16, var_315_15 / var_315_16

	if math.abs(arg_315_1.dirX) > 0.001 then
		arg_315_1.face = arg_315_1.dirX < 0 and -1 or 1
	end

	arg_315_1.x, arg_315_1.y = arg_315_1.x + arg_315_1.dirX * var_315_4, arg_315_1.y + arg_315_1.dirY * var_315_4

	if arg_315_1.pixelHit and arg_315_1.target and not arg_315_1.lost and __recovered_scope_0.var_0_243.touches(arg_315_0, arg_315_1, arg_315_1.target) then
		arg_315_1.contactX, arg_315_1.contactY, arg_315_1.contactT = arg_315_1.x, arg_315_1.y, arg_315_1.t
		arg_315_1.sinkLeft = (arg_315_1.sink or 0) * (arg_315_1.pixel or 2)

		if arg_315_1.sinkLeft <= 1e-06 then
			arg_315_1.sinkLeft = nil

			__recovered_scope_0.var_0_246(arg_315_0, arg_315_1, arg_315_2, arg_315_3, arg_315_1.x, arg_315_1.y)
		end
	end
end

function __recovered_scope_0.var_0_243.hoverPoint(arg_316_0, arg_316_1)
	local var_316_0 = arg_316_0.facing or 1
	local var_316_1 = (__recovered_scope_0.var_0_244(arg_316_0).hovers or __recovered_scope_0.var_0_243.HOVERS)[arg_316_1 or 1] or __recovered_scope_0.var_0_243.HOVER

	return (arg_316_0.x or 0) + var_316_1.x * var_316_0, (arg_316_0.y or 0) + var_316_1.y
end

 function __recovered_scope_0.var_0_247(arg_317_0)
	return arg_317_0 and not arg_317_0.finished and not arg_317_0.host and (arg_317_0.state == "form" or arg_317_0.state == "seek" or arg_317_0.state == "hover")
end

function __recovered_scope_0.var_0_243.orbsOf(arg_318_0)
	local var_318_0 = {}

	for iter_318_0, iter_318_1 in ipairs(arg_318_0._lifeOrbs or {}) do
		if __recovered_scope_0.var_0_247(iter_318_1) then
			var_318_0[#var_318_0 + 1] = iter_318_1
		end
	end

	arg_318_0._lifeOrbs, arg_318_0._lifeOrb = var_318_0, var_318_0[1]

	return var_318_0
end

function __recovered_scope_0.var_0_243.orb(arg_319_0, arg_319_1, arg_319_2, arg_319_3, arg_319_4)
	local var_319_0 = __recovered_scope_0.var_0_244(arg_319_1)
	local var_319_1 = __recovered_scope_0.var_0_243.orbsOf(arg_319_1)
	local var_319_2 = {
		state = "form",
		kind = "life_orb",
		t = 0,
		bornT = 0,
		stateT = 0,
		dur = math.huge,
		owner = arg_319_1,
		amount = arg_319_2,
		x = arg_319_3,
		y = arg_319_4,
		fromX = arg_319_3,
		fromY = arg_319_4,
		life = tonumber(var_319_0.orbLife) or 10,
		below = tonumber(var_319_0.healBelow) or 0.7,
		style = var_319_0.style,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_319_0) / 32 + 0.5))
	}

	if #var_319_1 < math.max(1, tonumber(var_319_0.maxOrbs) or 1) then
		local var_319_3 = {}

		for iter_319_0, iter_319_1 in ipairs(var_319_1) do
			var_319_3[iter_319_1.slot or 1] = true
		end

		var_319_2.slot = 1

		while var_319_3[var_319_2.slot] do
			var_319_2.slot = var_319_2.slot + 1
		end

		var_319_1[#var_319_1 + 1] = var_319_2
		arg_319_1._lifeOrbs, arg_319_1._lifeOrb = var_319_1, var_319_1[1]
	else
		local var_319_4

		for iter_319_2, iter_319_3 in ipairs(var_319_1) do
			if not var_319_4 or iter_319_3.t - iter_319_3.bornT > var_319_4.t - var_319_4.bornT then
				var_319_4 = iter_319_3
			end
		end

		var_319_2.host = var_319_4
	end

	arg_319_0.vfx = arg_319_0.vfx or {}
	arg_319_0.vfx[#arg_319_0.vfx + 1] = var_319_2

	return var_319_2
end

 function __recovered_scope_0.var_0_248(arg_320_0, arg_320_1)
	arg_320_0.state, arg_320_0.stateT, arg_320_0.fromX, arg_320_0.fromY = arg_320_1, arg_320_0.t or 0, arg_320_0.x, arg_320_0.y
end

 function __recovered_scope_0.var_0_249(arg_321_0, arg_321_1, arg_321_2, arg_321_3, arg_321_4)
	local var_321_0 = arg_321_1 - arg_321_0.x
	local var_321_1 = arg_321_2 - arg_321_0.y
	local var_321_2 = math.sqrt(var_321_0 * var_321_0 + var_321_1 * var_321_1)
	local var_321_3 = arg_321_3 * math.min(1, 0.25 + ((arg_321_0.t or 0) - (arg_321_0.stateT or 0)) / 0.25) * arg_321_4

	if var_321_2 <= var_321_3 + 1e-06 then
		arg_321_0.x, arg_321_0.y = arg_321_1, arg_321_2

		return true
	end

	arg_321_0.x, arg_321_0.y = arg_321_0.x + var_321_0 / var_321_2 * var_321_3, arg_321_0.y + var_321_1 / var_321_2 * var_321_3

	return false
end

 function __recovered_scope_0.var_0_250(arg_322_0, arg_322_1)
	local var_322_0 = {}

	for iter_322_0, iter_322_1 in ipairs(arg_322_0.vfx or {}) do
		if iter_322_1 ~= arg_322_1 and iter_322_1.kind == "life_orb" and not iter_322_1.finished and iter_322_1.state == "heal" and iter_322_1.ally then
			var_322_0[iter_322_1.ally] = (var_322_0[iter_322_1.ally] or 0) + (iter_322_1.amount or 0)
		end
	end

	return var_322_0
end

function __recovered_scope_0.var_0_243.updateOrb(arg_323_0, arg_323_1)
	if arg_323_1.finished then
		return
	end

	local var_323_0 = require("src.game.unit_abilities").life_siphon
	local var_323_1 = math.max(0, (arg_323_1.t or 0) - (arg_323_1.lastT or 0))

	arg_323_1.lastT = arg_323_1.t

	local var_323_2 = (arg_323_1.t or 0) - (arg_323_1.stateT or 0)

	if arg_323_1.state == "burst" or arg_323_1.state == "expire" then
		if var_323_2 >= (arg_323_1.state == "burst" and __recovered_scope_0.var_0_243.BURST or __recovered_scope_0.var_0_243.FADE) then
			arg_323_1.finished = true
		end

		return
	end

	if not var_323_0.standing(arg_323_1.owner) then
		arg_323_1.host, arg_323_1.ally = nil

		__recovered_scope_0.var_0_248(arg_323_1, "expire")

		arg_323_1.dur = arg_323_1.t + __recovered_scope_0.var_0_243.FADE

		__recovered_scope_0.var_0_243.orbsOf(arg_323_1.owner)

		return
	end

	if arg_323_1.state == "form" and var_323_2 < __recovered_scope_0.var_0_243.FORM then
		return
	end

	if arg_323_1.host then
		local var_323_3 = arg_323_1.host

		if not __recovered_scope_0.var_0_247(var_323_3) then
			arg_323_1.host = nil

			local var_323_4 = __recovered_scope_0.var_0_243.orbsOf(arg_323_1.owner)

			if #var_323_4 < math.max(1, tonumber(__recovered_scope_0.var_0_244(arg_323_1.owner).maxOrbs) or 1) then
				arg_323_1.slot = var_323_4[1] and var_323_4[1].slot == 1 and 2 or 1
				var_323_4[#var_323_4 + 1] = arg_323_1
				arg_323_1.owner._lifeOrbs, arg_323_1.owner._lifeOrb = var_323_4, var_323_4[1]
			else
				arg_323_1.host = var_323_4[1]
			end

			if arg_323_1.host then
				return
			end
		else
			if arg_323_1.state ~= "join" then
				__recovered_scope_0.var_0_248(arg_323_1, "join")
			end

			if __recovered_scope_0.var_0_249(arg_323_1, var_323_3.x, var_323_3.y, __recovered_scope_0.var_0_243.JOIN_SPEED, var_323_1) then
				var_323_3.amount, var_323_3.bornT, var_323_3.joinT = var_323_3.amount + arg_323_1.amount, var_323_3.t, var_323_3.t
				arg_323_1.finished = true
			end

			return
		end
	end

	local var_323_5 = __recovered_scope_0.var_0_250(arg_323_0, arg_323_1)

	if arg_323_1.state == "heal" then
		if not var_323_0.healable(arg_323_1.ally) or not var_323_0.woundedEnough(arg_323_1.ally, arg_323_1.below, var_323_5) or require("src.game.unit_abilities").dimensional_duel.separated(arg_323_0, arg_323_1.owner, arg_323_1.ally) then
			arg_323_1.ally = var_323_0.wounded(arg_323_0, arg_323_1.below, var_323_5, arg_323_1.owner)
		end

		if not arg_323_1.ally then
			__recovered_scope_0.var_0_248(arg_323_1, "seek")
		else
			local var_323_6, var_323_7 = __recovered_scope_0.var_0_190.targetPoint(arg_323_0, arg_323_1.ally)

			if __recovered_scope_0.var_0_249(arg_323_1, var_323_6, var_323_7, __recovered_scope_0.var_0_243.HEAL_SPEED, var_323_1) then
				arg_323_1.healed = var_323_0.heal(arg_323_0, arg_323_1, arg_323_1.ally)
				arg_323_1.healT, arg_323_1.dur = arg_323_1.t, arg_323_1.t + __recovered_scope_0.var_0_243.BURST

				__recovered_scope_0.var_0_248(arg_323_1, "burst")
				__recovered_scope_0.var_0_243.orbsOf(arg_323_1.owner)
			end

			return
		end
	end

	local var_323_8 = var_323_0.wounded(arg_323_0, arg_323_1.below, var_323_5, arg_323_1.owner)

	if var_323_8 then
		arg_323_1.ally = var_323_8

		__recovered_scope_0.var_0_248(arg_323_1, "heal")
		__recovered_scope_0.var_0_243.orbsOf(arg_323_1.owner)

		return
	end

	if (arg_323_1.t or 0) - (arg_323_1.bornT or 0) >= arg_323_1.life then
		__recovered_scope_0.var_0_248(arg_323_1, "expire")

		arg_323_1.dur = arg_323_1.t + __recovered_scope_0.var_0_243.FADE

		__recovered_scope_0.var_0_243.orbsOf(arg_323_1.owner)

		return
	end

	local var_323_9, var_323_10 = __recovered_scope_0.var_0_243.hoverPoint(arg_323_1.owner, arg_323_1.slot)

	if arg_323_1.state == "form" then
		__recovered_scope_0.var_0_248(arg_323_1, "seek")
	end

	if arg_323_1.state == "seek" then
		if __recovered_scope_0.var_0_249(arg_323_1, var_323_9, var_323_10, __recovered_scope_0.var_0_243.SEEK_SPEED, var_323_1) then
			__recovered_scope_0.var_0_248(arg_323_1, "hover")
		end
	elseif arg_323_1.state == "hover" then
		local var_323_11 = var_323_9 - arg_323_1.x
		local var_323_12 = var_323_10 - arg_323_1.y

		if math.sqrt(var_323_11 * var_323_11 + var_323_12 * var_323_12) > 1e-06 then
			local var_323_13 = math.min(1, var_323_1 * 6)

			arg_323_1.x, arg_323_1.y = arg_323_1.x + var_323_11 * var_323_13, arg_323_1.y + var_323_12 * var_323_13
		end
	end
end

 __recovered_scope_0.var_0_251 = __recovered_scope_0.var_0_243
 __recovered_scope_0.var_0_252 = nil
 __recovered_scope_0.var_0_253 = {
	TRAIL = 0.3,
	FADE = 0.2,
	BURST = 0.45,
	SPEED = 240,
	FRAME = 5,
	MARKER = {
		247,
		247,
		247
	},
	BURSTS = {
		queen = 0.6
	}
}
 __recovered_scope_0.var_0_254 = {
	["초승달 여왕 (Crescent Queen)"] = "queen",
	["Crescent Queen"] = "queen",
	["초승달 여왕"] = "queen",
	["월광사제 (Moon Priestess)"] = "priestess",
	["Moon Priestess"] = "priestess",
	월광사제 = "priestess"
}

function __recovered_scope_0.var_0_253.unitOf(arg_324_0)
	if not arg_324_0 or arg_324_0.sym ~= "H" then
		return nil
	end

	return __recovered_scope_0.var_0_254[arg_324_0.subclass] or __recovered_scope_0.var_0_254[arg_324_0.subclassName] or __recovered_scope_0.var_0_254[arg_324_0.subclassKey]
end

function __recovered_scope_0.var_0_253.matches(arg_325_0)
	return __recovered_scope_0.var_0_253.unitOf(arg_325_0) ~= nil
end

function __recovered_scope_0.var_0_253.marker(arg_326_0)
	return __recovered_scope_0.var_0_51.findAttackMarker(arg_326_0, {
		animation = "attack",
		exactPixel = true,
		cacheKey = "_moonBoltMarker",
		frame = __recovered_scope_0.var_0_253.FRAME,
		r = __recovered_scope_0.var_0_253.MARKER[1],
		g = __recovered_scope_0.var_0_253.MARKER[2],
		b = __recovered_scope_0.var_0_253.MARKER[3]
	})
end

function __recovered_scope_0.var_0_253.origin(arg_327_0, arg_327_1, arg_327_2)
	arg_327_2 = arg_327_2 or arg_327_0.getUnitAssetForAlly and arg_327_0:getUnitAssetForAlly(arg_327_1)

	local var_327_0
	local var_327_1

	if arg_327_2 then
		var_327_0, var_327_1 = __recovered_scope_0.var_0_253.marker(arg_327_2)
	end

	if not var_327_0 then
		return nil
	end

	return __recovered_scope_0.var_0_190.spritePoint(arg_327_0, arg_327_1, arg_327_2, var_327_0, var_327_1, false)
end

 function __recovered_scope_0.var_0_255(arg_328_0, arg_328_1, arg_328_2, arg_328_3)
	return arg_328_2 ~= nil and arg_328_2.alive and not arg_328_2.dying and (arg_328_2.hp or 0) > 0 and (not arg_328_3 or arg_328_3(arg_328_2, arg_328_1, arg_328_0))
end

function __recovered_scope_0.var_0_253.launch(arg_329_0, arg_329_1, arg_329_2, arg_329_3, arg_329_4, arg_329_5)
	if not arg_329_4 then
		arg_329_4, arg_329_5 = __recovered_scope_0.var_0_253.origin(arg_329_0, arg_329_1)
	end

	if not arg_329_4 then
		arg_329_4, arg_329_5 = (arg_329_1.x or 0) + (arg_329_1.facing or 1) * 10, (arg_329_1.y or 0) + 5
	end

	local var_329_0 = (arg_329_1.facing or 1) < 0 and -1 or 1
	local var_329_1 = __recovered_scope_0.var_0_253.unitOf(arg_329_1) == "queen" and "queen" or nil
	local var_329_2 = {
		kind = "moon_bolt",
		state = "fly",
		t = 0,
		hold = true,
		dirY = 0,
		dur = math.huge,
		owner = arg_329_1,
		target = arg_329_2,
		hit = arg_329_3,
		style = var_329_1,
		burst = var_329_1 and __recovered_scope_0.var_0_253.BURSTS[var_329_1] or __recovered_scope_0.var_0_253.BURST,
		x = arg_329_4,
		y = arg_329_5,
		sx = arg_329_4,
		sy = arg_329_5,
		face = var_329_0,
		dirX = var_329_0,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_329_0) / 32 + 0.5)),
		trail = {
			{
				t = 0,
				x = arg_329_4,
				y = arg_329_5
			}
		}
	}

	var_329_2.tx, var_329_2.ty = __recovered_scope_0.var_0_190.targetPoint(arg_329_0, arg_329_2)
	arg_329_0.vfx = arg_329_0.vfx or {}
	arg_329_0.vfx[#arg_329_0.vfx + 1] = var_329_2

	return var_329_2
end

 function __recovered_scope_0.var_0_256(arg_330_0, arg_330_1)
	arg_330_0.state, arg_330_0.endT, arg_330_0.hitX, arg_330_0.hitY = arg_330_1, arg_330_0.t or 0, arg_330_0.x, arg_330_0.y

	local var_330_0 = arg_330_0.hit

	arg_330_0.hit = nil

	if arg_330_1 == "burst" and var_330_0 then
		var_330_0(arg_330_0.target)
	end
end

function __recovered_scope_0.var_0_253.update(arg_331_0, arg_331_1, arg_331_2)
	if arg_331_1.finished then
		return
	end

	if arg_331_1.hold then
		arg_331_1.hold, arg_331_1.t, arg_331_1.lastT = nil, 0, 0

		return
	end

	local var_331_0 = arg_331_1.t or 0

	if arg_331_1.state ~= "fly" then
		if var_331_0 - (arg_331_1.endT or 0) >= (arg_331_1.state == "burst" and (arg_331_1.burst or __recovered_scope_0.var_0_253.BURST) or __recovered_scope_0.var_0_253.FADE) then
			arg_331_1.finished = true
		end

		return
	end

	local var_331_1 = __recovered_scope_0.var_0_253.SPEED * math.max(0, var_331_0 - (arg_331_1.lastT or 0))

	arg_331_1.lastT = var_331_0

	if not arg_331_1.lost then
		if __recovered_scope_0.var_0_255(arg_331_0, arg_331_1.owner, arg_331_1.target, arg_331_2) then
			arg_331_1.tx, arg_331_1.ty = __recovered_scope_0.var_0_190.targetPoint(arg_331_0, arg_331_1.target)
		else
			arg_331_1.lost = true
		end
	end

	local var_331_2 = arg_331_1.tx - arg_331_1.x
	local var_331_3 = arg_331_1.ty - arg_331_1.y
	local var_331_4 = math.sqrt(var_331_2 * var_331_2 + var_331_3 * var_331_3)

	if var_331_4 <= var_331_1 + 1e-06 then
		arg_331_1.x, arg_331_1.y = arg_331_1.tx, arg_331_1.ty

		__recovered_scope_0.var_0_256(arg_331_1, arg_331_1.lost and "fade" or "burst")
	else
		arg_331_1.dirX, arg_331_1.dirY = var_331_2 / var_331_4, var_331_3 / var_331_4

		if math.abs(arg_331_1.dirX) > 0.001 then
			arg_331_1.face = arg_331_1.dirX < 0 and -1 or 1
		end

		arg_331_1.x, arg_331_1.y = arg_331_1.x + arg_331_1.dirX * var_331_1, arg_331_1.y + arg_331_1.dirY * var_331_1
	end

	local var_331_5 = arg_331_1.trail

	var_331_5[#var_331_5 + 1] = {
		x = arg_331_1.x,
		y = arg_331_1.y,
		t = var_331_0
	}

	while #var_331_5 > 2 and var_331_5[2].t < var_331_0 - __recovered_scope_0.var_0_253.TRAIL do
		table.remove(var_331_5, 1)
	end
end

function __recovered_scope_0.var_0_253.behind(arg_332_0, arg_332_1)
	local var_332_0 = arg_332_0.trail

	if not var_332_0 or not var_332_0[1] then
		return arg_332_0.x, arg_332_0.y
	end

	local var_332_1 = (arg_332_0.t or 0) - arg_332_1

	for iter_332_0 = #var_332_0, 2, -1 do
		local var_332_2 = var_332_0[iter_332_0 - 1]
		local var_332_3 = var_332_0[iter_332_0]

		if var_332_1 >= var_332_2.t then
			local var_332_4 = math.min(1, (var_332_1 - var_332_2.t) / math.max(1e-09, var_332_3.t - var_332_2.t))

			return var_332_2.x + (var_332_3.x - var_332_2.x) * var_332_4, var_332_2.y + (var_332_3.y - var_332_2.y) * var_332_4
		end
	end

	return var_332_0[1].x, var_332_0[1].y
end

function __recovered_scope_0.var_0_253.endBattle(arg_333_0)
	for iter_333_0, iter_333_1 in ipairs(arg_333_0 and arg_333_0.vfx or {}) do
		if iter_333_1.kind == "moon_bolt" then
			iter_333_1.finished, iter_333_1.hit = true
		end
	end
end

 __recovered_scope_0.var_0_257 = __recovered_scope_0.var_0_253
 __recovered_scope_0.var_0_258 = nil
 __recovered_scope_0.var_0_259 = {
	HOLD = 0.24,
	FADE = 0.24,
	SPEED = 700,
	FRAME = 7,
	MARKER = {
		235,
		209,
		10
	}
}

function __recovered_scope_0.var_0_259.marker(arg_334_0, arg_334_1)
	arg_334_1 = arg_334_1 or __recovered_scope_0.var_0_259.MARKER

	return __recovered_scope_0.var_0_51.findAttackMarker(arg_334_0, {
		animation = "attack2",
		exactPixel = true,
		cacheKey = ("_shrinkRayMarker%02x%02x%02x"):format(arg_334_1[1], arg_334_1[2], arg_334_1[3]),
		frame = __recovered_scope_0.var_0_259.FRAME,
		r = arg_334_1[1],
		g = arg_334_1[2],
		b = arg_334_1[3]
	})
end

function __recovered_scope_0.var_0_259.pixel(arg_335_0, arg_335_1, arg_335_2, arg_335_3, arg_335_4)
	local var_335_0 = arg_335_0.ui and arg_335_0.ui.battle
	local var_335_1 = var_335_0 and var_335_0.allySize32 or 32
	local var_335_2 = _G.__slotBattleSpriteAirLift and _G.__slotBattleSpriteAirLift(arg_335_1, var_335_1) or 0
	local var_335_3 = {
		x = arg_335_1.x,
		y = (arg_335_1.y or 0) - var_335_2,
		sym = arg_335_1.sym,
		isFlameSpirit = arg_335_1.isFlameSpirit
	}
	local var_335_4, var_335_5, var_335_6, var_335_7 = require("src.ui.widgets").sprite_anchor.allyTransform(var_335_3, arg_335_2, var_335_1, var_335_0)
	local var_335_8 = arg_335_1.hitShake

	if var_335_8 and var_335_8.t and var_335_8.dur then
		local var_335_9 = math.max(0, math.min(1, var_335_8.t / math.max(0.001, var_335_8.dur)))

		var_335_4 = var_335_4 + math.floor((var_335_8.amp or 2) * (1 - var_335_9) + 0.5) * (math.floor(var_335_8.t * 60) % 2 == 0 and -1 or 1)
	end

	local var_335_10 = arg_335_2.frameW or 32

	if (arg_335_1.facing or 1) < 0 then
		arg_335_3 = var_335_10 - arg_335_3
	end

	return var_335_4 + arg_335_3 * var_335_6, var_335_5 + arg_335_4 * var_335_7 - (arg_335_1._jumpYOffset or 0)
end

function __recovered_scope_0.var_0_259.origin(arg_336_0, arg_336_1, arg_336_2)
	arg_336_2 = arg_336_2 or arg_336_0.getUnitAssetForAlly and arg_336_0:getUnitAssetForAlly(arg_336_1)

	local var_336_0 = arg_336_1.primarySkillDef and arg_336_1.primarySkillDef.runtime
	local var_336_1
	local var_336_2

	if arg_336_2 then
		var_336_1, var_336_2 = __recovered_scope_0.var_0_259.marker(arg_336_2, var_336_0 and var_336_0.marker)
	end

	if not var_336_1 then
		return nil
	end

	return __recovered_scope_0.var_0_259.pixel(arg_336_0, arg_336_1, arg_336_2, var_336_1, var_336_2)
end

 function __recovered_scope_0.var_0_260(arg_337_0)
	return arg_337_0 ~= nil and arg_337_0.alive and not arg_337_0.dying and (arg_337_0.hp or 0) > 0
end

 function __recovered_scope_0.var_0_261(arg_338_0, arg_338_1, arg_338_2, arg_338_3)
	return __recovered_scope_0.var_0_260(arg_338_2) and (not arg_338_3 or arg_338_3(arg_338_2, arg_338_1, arg_338_0))
end

function __recovered_scope_0.var_0_259.launch(arg_339_0, arg_339_1, arg_339_2, arg_339_3, arg_339_4, arg_339_5, arg_339_6, arg_339_7, arg_339_8, arg_339_9)
	if not arg_339_6 then
		arg_339_6, arg_339_7 = __recovered_scope_0.var_0_259.origin(arg_339_0, arg_339_1)
	end

	local var_339_0 = (arg_339_1.facing or 1) < 0 and -1 or 1

	if not arg_339_6 then
		arg_339_6, arg_339_7 = (arg_339_1.x or 0) + var_339_0 * 10, (arg_339_1.y or 0) - 20
	end

	local var_339_1 = {
		hold = true,
		state = "beam",
		t = 0,
		kind = "shrink_ray",
		dur = math.huge,
		owner = arg_339_1,
		target = arg_339_2,
		atk = arg_339_3,
		dmgMul = arg_339_4,
		style = arg_339_5,
		index = arg_339_8 or 1,
		twins = arg_339_9 or 1,
		ox = arg_339_6,
		oy = arg_339_7,
		x = arg_339_6,
		y = arg_339_7,
		face = var_339_0,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_339_0) / 32 + 0.5))
	}

	if arg_339_2 then
		var_339_1.tx, var_339_1.ty = __recovered_scope_0.var_0_190.targetPoint(arg_339_0, arg_339_2)
	else
		var_339_1.tx, var_339_1.ty, var_339_1.lost = arg_339_6 + var_339_0 * 150, arg_339_7 + 30, true
	end

	arg_339_0.vfx = arg_339_0.vfx or {}
	arg_339_0.vfx[#arg_339_0.vfx + 1] = var_339_1

	return var_339_1
end

 function __recovered_scope_0.var_0_262(arg_340_0, arg_340_1)
	local var_340_0 = arg_340_1.target

	arg_340_1.mx, arg_340_1.my = __recovered_scope_0.var_0_190.targetPoint(arg_340_0, var_340_0)

	local var_340_1 = __recovered_scope_0.var_0_190.targetCover(arg_340_0, var_340_0)

	arg_340_1.half = var_340_1 and var_340_1.half or 16

	if arg_340_0.entityGroundPoint then
		local var_340_2, var_340_3 = arg_340_0:entityGroundPoint(var_340_0)

		arg_340_1.footY = var_340_3
	end

	arg_340_1.footY = arg_340_1.footY or (var_340_0.y or 0) + 16
end

function __recovered_scope_0.var_0_259.update(arg_341_0, arg_341_1, arg_341_2, arg_341_3)
	if arg_341_1.finished then
		return
	end

	if arg_341_1.hold then
		arg_341_1.hold, arg_341_1.t, arg_341_1.lastT = nil, 0, 0

		return
	end

	local var_341_0 = arg_341_1.t or 0

	if arg_341_1.state == "beam" then
		local var_341_1 = __recovered_scope_0.var_0_259.SPEED * math.max(0, var_341_0 - (arg_341_1.lastT or 0))

		arg_341_1.lastT = var_341_0

		if not arg_341_1.lost then
			if __recovered_scope_0.var_0_261(arg_341_0, arg_341_1.owner, arg_341_1.target, arg_341_2) then
				arg_341_1.tx, arg_341_1.ty = __recovered_scope_0.var_0_190.targetPoint(arg_341_0, arg_341_1.target)
			else
				arg_341_1.lost = true
			end
		end

		local var_341_2 = arg_341_1.tx - arg_341_1.x
		local var_341_3 = arg_341_1.ty - arg_341_1.y
		local var_341_4 = math.sqrt(var_341_2 * var_341_2 + var_341_3 * var_341_3)

		if var_341_4 <= var_341_1 + 1e-06 then
			arg_341_1.x, arg_341_1.y, arg_341_1.hitT, arg_341_1.state, arg_341_1.endT = arg_341_1.tx, arg_341_1.ty, var_341_0, arg_341_1.lost and "fade" or "hold", var_341_0

			if not arg_341_1.lost then
				arg_341_1.shrink = require("src.game.unit_abilities").shrink_ray.strike(arg_341_0, arg_341_1, arg_341_1.target, arg_341_3)

				if arg_341_1.shrink then
					__recovered_scope_0.var_0_262(arg_341_0, arg_341_1)
				end
			end
		else
			arg_341_1.x, arg_341_1.y = arg_341_1.x + var_341_2 / var_341_4 * var_341_1, arg_341_1.y + var_341_3 / var_341_4 * var_341_1
		end
	elseif arg_341_1.state == "hold" then
		if arg_341_1.shrink and __recovered_scope_0.var_0_260(arg_341_1.target) then
			__recovered_scope_0.var_0_262(arg_341_0, arg_341_1)
		end

		if var_341_0 - arg_341_1.endT >= __recovered_scope_0.var_0_259.HOLD then
			arg_341_1.state, arg_341_1.endT = "fade", var_341_0
		end
	elseif arg_341_1.state == "fade" then
		if arg_341_1.shrink and __recovered_scope_0.var_0_260(arg_341_1.target) then
			__recovered_scope_0.var_0_262(arg_341_0, arg_341_1)
		end

		if var_341_0 - arg_341_1.endT >= __recovered_scope_0.var_0_259.FADE then
			if arg_341_1.shrink and __recovered_scope_0.var_0_260(arg_341_1.target) and arg_341_1.target._shrinkRay == arg_341_1.shrink then
				arg_341_1.state, arg_341_1.endT = "mark", var_341_0
			else
				arg_341_1.finished = true
			end
		end
	elseif arg_341_1.state == "mark" then
		if not __recovered_scope_0.var_0_260(arg_341_1.target) or arg_341_1.target._shrinkRay ~= arg_341_1.shrink then
			arg_341_1.finished = true

			return
		end

		__recovered_scope_0.var_0_262(arg_341_0, arg_341_1)
	end
end

function __recovered_scope_0.var_0_259.endBattle(arg_342_0)
	for iter_342_0, iter_342_1 in ipairs(arg_342_0 and arg_342_0.vfx or {}) do
		if iter_342_1.kind == "shrink_ray" then
			iter_342_1.finished = true
		end
	end
end

 __recovered_scope_0.var_0_263 = __recovered_scope_0.var_0_259
 __recovered_scope_0.var_0_264 = nil
 __recovered_scope_0.var_0_265 = {
	DRIFT = 7,
	FH = 20,
	LIFE = 0.5,
	FADE_FRAME = 0.11,
	PASS = 22,
	FW = 16,
	SPEED = 240,
	FRAME = 3,
	SHEET = "src/sprites/units/SwordMan/05Prism/02PrismSwordMan_02Projectile.png",
	RANGE = 140,
	MARKER = {
		161,
		223,
		252
	}
}

__recovered_scope_0.var_0_265.UNITS = {
	white = {
		sheet = __recovered_scope_0.var_0_265.SHEET,
		marker = __recovered_scope_0.var_0_265.MARKER
	},
	grail = {
		sheet = "src/sprites/units/SwordMan/05Prism/03PrismSwordMan_02_01Projectile.png",
		marker = {
			38,
			78,
			197
		}
	}
}

 __recovered_scope_0.var_0_266 = {
	성배기사 = "grail",
	["백기사 (White Knight)"] = "white",
	["White Knight"] = "white",
	백기사 = "white",
	["성배기사 (Grail Knight)"] = "grail",
	["Grail Knight"] = "grail"
}

function __recovered_scope_0.var_0_265.unitOf(arg_343_0)
	if not arg_343_0 or arg_343_0.sym ~= "W" then
		return nil
	end

	return __recovered_scope_0.var_0_266[arg_343_0.subclass] or __recovered_scope_0.var_0_266[arg_343_0.subclassName] or __recovered_scope_0.var_0_266[arg_343_0.subclassKey]
end

function __recovered_scope_0.var_0_265.matches(arg_344_0)
	return __recovered_scope_0.var_0_265.unitOf(arg_344_0) ~= nil
end

 __recovered_scope_0.var_0_267 = {}

function __recovered_scope_0.var_0_265.cellsOf(arg_345_0)
	local var_345_0 = {}

	for iter_345_0 = 1, math.floor(arg_345_0:getWidth() / __recovered_scope_0.var_0_265.FW) do
		local var_345_1 = {}

		for iter_345_1 = 0, __recovered_scope_0.var_0_265.FH - 1 do
			for iter_345_2 = 0, __recovered_scope_0.var_0_265.FW - 1 do
				local var_345_2, var_345_3, var_345_4, var_345_5 = arg_345_0:getPixel((iter_345_0 - 1) * __recovered_scope_0.var_0_265.FW + iter_345_2, iter_345_1)

				if var_345_5 > 0 then
					var_345_1[#var_345_1 + 1] = {
						iter_345_2,
						iter_345_1
					}
				end
			end
		end

		var_345_0[iter_345_0] = var_345_1
	end

	return var_345_0
end

function __recovered_scope_0.var_0_265.useSheet(arg_346_0, arg_346_1)
	__recovered_scope_0.var_0_267[arg_346_0 or __recovered_scope_0.var_0_265.SHEET] = __recovered_scope_0.var_0_265.cellsOf(arg_346_1)
end

function __recovered_scope_0.var_0_265.cells(arg_347_0)
	arg_347_0 = arg_347_0 or __recovered_scope_0.var_0_265.SHEET

	if __recovered_scope_0.var_0_267[arg_347_0] == nil then
		local var_347_0, var_347_1 = pcall(function()
			return love.image.newImageData(arg_347_0)
		end)

		__recovered_scope_0.var_0_267[arg_347_0] = var_347_0 and var_347_1 and __recovered_scope_0.var_0_265.cellsOf(var_347_1) or false
	end

	return __recovered_scope_0.var_0_267[arg_347_0] or nil
end

function __recovered_scope_0.var_0_265.release(arg_349_0, arg_349_1, arg_349_2)
	if not arg_349_0 or not arg_349_0.imageData or not arg_349_0.animations or not arg_349_0.animations.attack then
		return nil
	end

	local var_349_0 = arg_349_0._whiteWaveRelease

	if var_349_0 ~= nil then
		if var_349_0 then
			return var_349_0.x, var_349_0.y
		end

		return nil
	end

	local var_349_1 = (arg_349_1 or __recovered_scope_0.var_0_265.cells() or {})[1]

	arg_349_2 = arg_349_2 or __recovered_scope_0.var_0_265.MARKER

	local var_349_2 = arg_349_0.frameW or 32
	local var_349_3 = arg_349_0.frameH or 32
	local var_349_4 = arg_349_0.animations.attack
	local var_349_5 = (__recovered_scope_0.var_0_265.FRAME - 1) * var_349_2
	local var_349_6 = tonumber(var_349_4.y) or (math.max(1, tonumber(var_349_4.row) or 1) - 1) * var_349_3
	local var_349_7
	local var_349_8
	local var_349_9
	local var_349_10, var_349_11 = arg_349_0.imageData:getDimensions()

	if var_349_10 >= var_349_5 + var_349_2 and var_349_11 >= var_349_6 + var_349_3 then
		for iter_349_0 = 0, var_349_3 - 1 do
			for iter_349_1 = 0, var_349_2 - 1 do
				local var_349_12, var_349_13, var_349_14, var_349_15 = arg_349_0.imageData:getPixel(var_349_5 + iter_349_1, var_349_6 + iter_349_0)

				if var_349_15 > 0 and math.floor(var_349_12 * 255 + 0.5) == arg_349_2[1] and math.floor(var_349_13 * 255 + 0.5) == arg_349_2[2] and math.floor(var_349_14 * 255 + 0.5) == arg_349_2[3] then
					var_349_7, var_349_8, var_349_9 = var_349_7 or iter_349_0, iter_349_0, math.max(var_349_9 or iter_349_1, iter_349_1)
				end
			end
		end
	end

	if not var_349_1 or not var_349_1[1] or not var_349_7 then
		arg_349_0._whiteWaveRelease = false

		return nil
	end

	local var_349_16 = math.huge
	local var_349_17 = -1
	local var_349_18 = -1

	for iter_349_2, iter_349_3 in ipairs(var_349_1) do
		var_349_16, var_349_17, var_349_18 = math.min(var_349_16, iter_349_3[2]), math.max(var_349_17, iter_349_3[2]), math.max(var_349_18, iter_349_3[1])
	end

	local var_349_19 = var_349_9 - var_349_18
	local var_349_20 = math.floor((var_349_7 + var_349_8 + 1) * 0.5 - (var_349_16 + var_349_17 + 1) * 0.5 + 0.5)

	arg_349_0._whiteWaveRelease = {
		x = var_349_19 + __recovered_scope_0.var_0_265.FW / 2,
		y = var_349_20 + __recovered_scope_0.var_0_265.FH / 2
	}

	return var_349_19 + __recovered_scope_0.var_0_265.FW / 2, var_349_20 + __recovered_scope_0.var_0_265.FH / 2
end

function __recovered_scope_0.var_0_265.origin(arg_350_0, arg_350_1, arg_350_2)
	arg_350_2 = arg_350_2 or arg_350_0.getUnitAssetForAlly and arg_350_0:getUnitAssetForAlly(arg_350_1)

	local var_350_0 = __recovered_scope_0.var_0_265.UNITS[__recovered_scope_0.var_0_265.unitOf(arg_350_1) or "white"]
	local var_350_1, var_350_2 = __recovered_scope_0.var_0_265.release(arg_350_2, __recovered_scope_0.var_0_265.cells(var_350_0.sheet), var_350_0.marker)

	if not var_350_1 then
		return nil
	end

	return __recovered_scope_0.var_0_190.spritePoint(arg_350_0, arg_350_1, arg_350_2, var_350_1, var_350_2, false)
end

function __recovered_scope_0.var_0_265.snap(arg_351_0, arg_351_1)
	local var_351_0 = tonumber(rawget(_G, "__slotGameplayCanvasDensity"))

	var_351_0 = var_351_0 and var_351_0 > 0 and var_351_0 or 1

	return math.floor(arg_351_0 * var_351_0 + 0.5) / var_351_0, math.floor(arg_351_1 * var_351_0 + 0.5) / var_351_0
end

function __recovered_scope_0.var_0_265.cellRect(arg_352_0, arg_352_1, arg_352_2, arg_352_3)
	local var_352_0 = arg_352_0.pixel or 2

	return (arg_352_0.face or 1) < 0 and arg_352_1 + (__recovered_scope_0.var_0_265.FW / 2 - 1 - arg_352_3[1]) * var_352_0 or arg_352_1 + (arg_352_3[1] - __recovered_scope_0.var_0_265.FW / 2) * var_352_0, arg_352_2 + (arg_352_3[2] - __recovered_scope_0.var_0_265.FH / 2) * var_352_0, var_352_0
end

function __recovered_scope_0.var_0_265.launch(arg_353_0, arg_353_1, arg_353_2, arg_353_3, arg_353_4, arg_353_5)
	if not arg_353_4 then
		arg_353_4, arg_353_5 = __recovered_scope_0.var_0_265.origin(arg_353_0, arg_353_1)
	end

	local var_353_0 = (arg_353_1.facing or 1) < 0 and -1 or 1

	if not arg_353_4 then
		arg_353_4, arg_353_5 = (arg_353_1.x or 0) + var_353_0 * 14, arg_353_1.y or 0
	end

	local var_353_1 = var_353_0
	local var_353_2 = 0

	if arg_353_2 then
		local var_353_3 = __recovered_scope_0.var_0_190.targetPoint(arg_353_0, arg_353_2) - arg_353_4

		if var_353_3 * var_353_0 > 4 then
			local var_353_4 = math.max(-0.5, math.min(0.5, ((arg_353_2.y or 0) - (arg_353_1.y or 0)) / math.abs(var_353_3))) * math.abs(var_353_3)
			local var_353_5 = math.sqrt(var_353_3 * var_353_3 + var_353_4 * var_353_4)

			var_353_1, var_353_2 = var_353_3 / var_353_5, var_353_4 / var_353_5
		end
	end

	local var_353_6 = __recovered_scope_0.var_0_265.unitOf(arg_353_1) or "white"
	local var_353_7 = {
		kind = "white_wave",
		state = "fly",
		lastT = 0,
		t = 0,
		hold = true,
		frame = 1,
		travel = 0,
		dur = math.huge,
		owner = arg_353_1,
		target = arg_353_2,
		hit = arg_353_3,
		style = var_353_6,
		sheet = __recovered_scope_0.var_0_265.UNITS[var_353_6].sheet,
		x = arg_353_4,
		y = arg_353_5,
		sx = arg_353_4,
		sy = arg_353_5,
		dirX = var_353_1,
		dirY = var_353_2,
		face = var_353_0,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_190.drawSize(arg_353_0) / 32 + 0.5))
	}

	arg_353_0.vfx = arg_353_0.vfx or {}
	arg_353_0.vfx[#arg_353_0.vfx + 1] = var_353_7

	return var_353_7
end

function __recovered_scope_0.var_0_265.touch(arg_354_0, arg_354_1, arg_354_2, arg_354_3, arg_354_4, arg_354_5)
	local var_354_0 = 0
	local var_354_1 = 0
	local var_354_2 = 0

	for iter_354_0, iter_354_1 in ipairs(arg_354_5) do
		local var_354_3, var_354_4, var_354_5 = __recovered_scope_0.var_0_265.cellRect(arg_354_0, arg_354_1, arg_354_2, iter_354_1)
		local var_354_6

		if arg_354_4 then
			var_354_6 = __recovered_scope_0.var_0_203.coverOverlaps(arg_354_4, var_354_3, var_354_4, var_354_3 + var_354_5, var_354_4 + var_354_5)
		else
			var_354_6 = __recovered_scope_0.var_0_203.touches(arg_354_3, var_354_3 + var_354_5 * 0.5, var_354_4 + var_354_5 * 0.5)
		end

		if var_354_6 then
			var_354_0, var_354_1, var_354_2 = var_354_0 + var_354_3 + var_354_5 * 0.5, var_354_1 + var_354_4 + var_354_5 * 0.5, var_354_2 + 1
		end
	end

	if var_354_2 > 0 then
		return var_354_0 / var_354_2, var_354_1 / var_354_2
	end
end

 function __recovered_scope_0.var_0_268(arg_355_0, arg_355_1, arg_355_2, arg_355_3)
	return arg_355_2 ~= nil and arg_355_2.alive and not arg_355_2.dying and (arg_355_2.hp or 0) > 0 and (not arg_355_3 or arg_355_3(arg_355_2, arg_355_1, arg_355_0))
end

function __recovered_scope_0.var_0_265.firstHit(arg_356_0, arg_356_1, arg_356_2, arg_356_3, arg_356_4, arg_356_5, arg_356_6)
	local var_356_0 = __recovered_scope_0.var_0_265.cells(arg_356_1.sheet)

	var_356_0 = var_356_0 and var_356_0[1]

	if not var_356_0 then
		return nil
	end

	local var_356_1 = arg_356_1.pixel or 2
	local var_356_2 = (__recovered_scope_0.var_0_265.FW / 2 + 1) * var_356_1
	local var_356_3 = (__recovered_scope_0.var_0_265.FH / 2 + 1) * var_356_1
	local var_356_4 = math.min(arg_356_2, arg_356_4) - var_356_2
	local var_356_5 = math.max(arg_356_2, arg_356_4) + var_356_2
	local var_356_6 = math.min(arg_356_3, arg_356_5) - var_356_3
	local var_356_7 = math.max(arg_356_3, arg_356_5) + var_356_3
	local var_356_8 = {}

	for iter_356_0, iter_356_1 in ipairs(arg_356_0.enemies or {}) do
		if __recovered_scope_0.var_0_268(arg_356_0, arg_356_1.owner, iter_356_1, arg_356_6) then
			local var_356_9 = __recovered_scope_0.var_0_190.targetCover(arg_356_0, iter_356_1)
			local var_356_10
			local var_356_11
			local var_356_12
			local var_356_13

			if var_356_9 then
				var_356_10, var_356_11 = math.min(var_356_9.ox, var_356_9.ox + var_356_9.qw * var_356_9.ux), math.max(var_356_9.ox, var_356_9.ox + var_356_9.qw * var_356_9.ux)
				var_356_12, var_356_13 = math.min(var_356_9.oy, var_356_9.oy + var_356_9.qh * var_356_9.uy), math.max(var_356_9.oy, var_356_9.oy + var_356_9.qh * var_356_9.uy)
			else
				local var_356_14 = __recovered_scope_0.var_0_203.BODY_R

				var_356_10, var_356_11, var_356_12, var_356_13 = (iter_356_1.x or 0) - var_356_14, (iter_356_1.x or 0) + var_356_14, (iter_356_1.y or 0) - var_356_14, (iter_356_1.y or 0) + var_356_14
			end

			if var_356_4 <= var_356_11 and var_356_10 <= var_356_5 and var_356_6 <= var_356_13 and var_356_12 <= var_356_7 then
				var_356_8[#var_356_8 + 1] = iter_356_1
				var_356_8[iter_356_1] = var_356_9 or false
			end
		end
	end

	if #var_356_8 == 0 then
		return nil
	end

	local var_356_15 = math.max(1, math.ceil(math.sqrt((arg_356_4 - arg_356_2)^2 + (arg_356_5 - arg_356_3)^2)))

	for iter_356_2 = 0, var_356_15 do
		local var_356_16 = iter_356_2 / var_356_15
		local var_356_17, var_356_18 = __recovered_scope_0.var_0_265.snap(arg_356_2 + (arg_356_4 - arg_356_2) * var_356_16, arg_356_3 + (arg_356_5 - arg_356_3) * var_356_16)

		for iter_356_3, iter_356_4 in ipairs(var_356_8) do
			local var_356_19, var_356_20 = __recovered_scope_0.var_0_265.touch(arg_356_1, var_356_17, var_356_18, iter_356_4, var_356_8[iter_356_4] or nil, var_356_0)

			if var_356_19 then
				return iter_356_4, var_356_16, var_356_19, var_356_20
			end
		end
	end
end

 function __recovered_scope_0.var_0_269(arg_357_0, arg_357_1)
	arg_357_0.state, arg_357_0.endT, arg_357_0.frame, arg_357_0.fadeX, arg_357_0.fadeY = "fade", arg_357_1, 2, arg_357_0.x, arg_357_0.y
end

 function __recovered_scope_0.var_0_270(arg_358_0, arg_358_1)
	arg_358_0.x, arg_358_0.y, arg_358_0.travel = arg_358_0.x + arg_358_0.dirX * arg_358_1, arg_358_0.y + arg_358_0.dirY * arg_358_1, arg_358_0.travel + arg_358_1
end

function __recovered_scope_0.var_0_265.update(arg_359_0, arg_359_1, arg_359_2)
	if arg_359_1.finished then
		return
	end

	if arg_359_1.hold then
		arg_359_1.hold, arg_359_1.t, arg_359_1.lastT = nil, 0, 0

		return
	end

	local var_359_0 = arg_359_1.t or 0
	local var_359_1 = math.max(0, var_359_0 - (arg_359_1.lastT or 0))

	arg_359_1.lastT = var_359_0

	if arg_359_1.state == "fly" then
		local var_359_2 = math.min(__recovered_scope_0.var_0_265.SPEED * var_359_1, __recovered_scope_0.var_0_265.RANGE - arg_359_1.travel)
		local var_359_3 = arg_359_1.x
		local var_359_4 = arg_359_1.y
		local var_359_5 = var_359_3 + arg_359_1.dirX * var_359_2
		local var_359_6 = var_359_4 + arg_359_1.dirY * var_359_2
		local var_359_7, var_359_8, var_359_9, var_359_10 = __recovered_scope_0.var_0_265.firstHit(arg_359_0, arg_359_1, var_359_3, var_359_4, var_359_5, var_359_6, arg_359_2)

		if var_359_7 then
			arg_359_1.x, arg_359_1.y, arg_359_1.travel = var_359_3 + (var_359_5 - var_359_3) * var_359_8, var_359_4 + (var_359_6 - var_359_4) * var_359_8, arg_359_1.travel + var_359_2 * var_359_8
			arg_359_1.victim, arg_359_1.hitX, arg_359_1.hitY, arg_359_1.hitT, arg_359_1.contactX, arg_359_1.contactY = var_359_7, var_359_9, var_359_10, var_359_0, arg_359_1.x, arg_359_1.y
			arg_359_1.state, arg_359_1.passLeft = "pass", __recovered_scope_0.var_0_265.PASS * (arg_359_1.pixel or 2)

			local var_359_11 = arg_359_1.hit

			arg_359_1.hit = nil

			if var_359_11 then
				var_359_11(var_359_7)
			end
		else
			arg_359_1.x, arg_359_1.y, arg_359_1.travel = var_359_5, var_359_6, arg_359_1.travel + var_359_2

			if arg_359_1.travel >= __recovered_scope_0.var_0_265.RANGE - 1e-09 then
				arg_359_1.hit = nil

				__recovered_scope_0.var_0_269(arg_359_1, var_359_0)
			end
		end

		return
	end

	if arg_359_1.state == "pass" then
		local var_359_12 = math.min(__recovered_scope_0.var_0_265.SPEED * var_359_1, arg_359_1.passLeft)

		__recovered_scope_0.var_0_270(arg_359_1, var_359_12)

		arg_359_1.passLeft = arg_359_1.passLeft - var_359_12

		if arg_359_1.passLeft <= 1e-09 then
			__recovered_scope_0.var_0_269(arg_359_1, var_359_0)
		end

		return
	end

	local var_359_13 = var_359_0 - (arg_359_1.endT or 0)

	if var_359_13 >= 3 * __recovered_scope_0.var_0_265.FADE_FRAME and var_359_0 - (arg_359_1.hitT or arg_359_1.endT or 0) >= __recovered_scope_0.var_0_265.LIFE then
		arg_359_1.finished = true

		return
	end

	local var_359_14 = math.min(1, var_359_13 / (3 * __recovered_scope_0.var_0_265.FADE_FRAME))

	arg_359_1.frame = var_359_13 < 3 * __recovered_scope_0.var_0_265.FADE_FRAME and 2 + math.min(2, math.floor(var_359_13 / __recovered_scope_0.var_0_265.FADE_FRAME)) or nil

	local var_359_15 = __recovered_scope_0.var_0_265.DRIFT * (arg_359_1.pixel or 2) * (1 - (1 - var_359_14)^2)

	arg_359_1.x, arg_359_1.y = arg_359_1.fadeX + arg_359_1.dirX * var_359_15, arg_359_1.fadeY + arg_359_1.dirY * var_359_15
end

function __recovered_scope_0.var_0_265.endBattle(arg_360_0)
	for iter_360_0, iter_360_1 in ipairs(arg_360_0 and arg_360_0.vfx or {}) do
		if iter_360_1.kind == "white_wave" then
			iter_360_1.finished, iter_360_1.hit = true
		end
	end
end

 __recovered_scope_0.var_0_271 = __recovered_scope_0.var_0_265
 __recovered_scope_0.var_0_272 = nil
 __recovered_scope_0.var_0_273 = {
	BLADE_X = 15.5,
	FH = 32,
	SINK = 3,
	SHEET = "src/sprites/units/SwordMan/05Prism/02PrismSwordMan_02Skill.png",
	FW = 32
}
 __recovered_scope_0.var_0_274 = {}

function __recovered_scope_0.var_0_273.cellsOf(arg_361_0)
	local var_361_0 = {
		bottom = -1,
		right = -1,
		top = math.huge,
		left = math.huge
	}

	for iter_361_0 = 0, __recovered_scope_0.var_0_273.FH - 1 do
		for iter_361_1 = 0, __recovered_scope_0.var_0_273.FW - 1 do
			local var_361_1, var_361_2, var_361_3, var_361_4 = arg_361_0:getPixel(iter_361_1, iter_361_0)

			if var_361_4 > 0 then
				var_361_0[#var_361_0 + 1] = {
					iter_361_1,
					iter_361_0
				}
				var_361_0.top, var_361_0.bottom = math.min(var_361_0.top, iter_361_0), math.max(var_361_0.bottom, iter_361_0)
				var_361_0.left, var_361_0.right = math.min(var_361_0.left, iter_361_1), math.max(var_361_0.right, iter_361_1)
			end
		end
	end

	return var_361_0
end

function __recovered_scope_0.var_0_273.useSheet(arg_362_0, arg_362_1)
	__recovered_scope_0.var_0_274[arg_362_0 or __recovered_scope_0.var_0_273.SHEET] = __recovered_scope_0.var_0_273.cellsOf(arg_362_1)
end

function __recovered_scope_0.var_0_273.cells(arg_363_0)
	arg_363_0 = arg_363_0 or __recovered_scope_0.var_0_273.SHEET

	if __recovered_scope_0.var_0_274[arg_363_0] == nil then
		local var_363_0, var_363_1 = pcall(function()
			return love.image.newImageData(arg_363_0)
		end)

		__recovered_scope_0.var_0_274[arg_363_0] = var_363_0 and var_363_1 and __recovered_scope_0.var_0_273.cellsOf(var_363_1) or false
	end

	return __recovered_scope_0.var_0_274[arg_363_0] or nil
end

function __recovered_scope_0.var_0_273.frame(arg_365_0, arg_365_1, arg_365_2, arg_365_3)
	local var_365_0 = __recovered_scope_0.var_0_273.cells(arg_365_0.sheet)
	local var_365_1 = arg_365_0.pixel or 2
	local var_365_2 = var_365_0 and var_365_0.bottom or 30
	local var_365_3, var_365_4 = __recovered_scope_0.var_0_271.snap(arg_365_1 - __recovered_scope_0.var_0_273.BLADE_X * var_365_1, arg_365_2 - (var_365_2 + 1 - __recovered_scope_0.var_0_273.SINK) * var_365_1 - (arg_365_3 or 0))

	return var_365_3, var_365_4, var_365_1
end

function __recovered_scope_0.var_0_273.eachCell(arg_366_0, arg_366_1, arg_366_2, arg_366_3, arg_366_4)
	local var_366_0 = __recovered_scope_0.var_0_273.cells(arg_366_0.sheet)

	if not var_366_0 then
		return
	end

	local var_366_1, var_366_2, var_366_3 = __recovered_scope_0.var_0_273.frame(arg_366_0, arg_366_1, arg_366_2, arg_366_3)

	for iter_366_0, iter_366_1 in ipairs(var_366_0) do
		local var_366_4 = var_366_2 + iter_366_1[2] * var_366_3

		if var_366_4 + var_366_3 <= arg_366_2 + 1e-06 then
			arg_366_4(var_366_1 + iter_366_1[1] * var_366_3, var_366_4, var_366_3)
		end
	end
end

 function __recovered_scope_0.var_0_275(arg_367_0, arg_367_1, arg_367_2, arg_367_3)
	return arg_367_2 ~= nil and arg_367_2.alive and not arg_367_2.dying and (arg_367_2.hp or 0) > 0 and (not arg_367_3 or arg_367_3(arg_367_2, arg_367_1, arg_367_0))
end

function __recovered_scope_0.var_0_273.nearEdge(arg_368_0, arg_368_1, arg_368_2)
	local var_368_0 = __recovered_scope_0.var_0_190.targetCover(arg_368_0, arg_368_1)

	if var_368_0 then
		local var_368_1

		for iter_368_0 = 0, var_368_0.qh - 1 do
			for iter_368_1 = 0, var_368_0.qw - 1 do
				local var_368_2, var_368_3, var_368_4, var_368_5 = var_368_0.data:getPixel(var_368_0.qx + iter_368_1, var_368_0.qy + iter_368_0)

				if var_368_5 > 0 then
					local var_368_6 = var_368_0.ox + iter_368_1 * var_368_0.ux
					local var_368_7 = var_368_0.ox + (iter_368_1 + 1) * var_368_0.ux
					local var_368_8 = arg_368_2 > 0 and math.min(var_368_6, var_368_7) or math.max(var_368_6, var_368_7)

					if not var_368_1 or arg_368_2 > 0 and var_368_8 < var_368_1 or arg_368_2 < 0 and var_368_1 < var_368_8 then
						var_368_1 = var_368_8
					end
				end
			end
		end

		if var_368_1 then
			return var_368_1
		end
	end

	return (arg_368_1.x or 0) - arg_368_2 * __recovered_scope_0.var_0_203.BODY_R
end

function __recovered_scope_0.var_0_273.touching(arg_369_0, arg_369_1, arg_369_2, arg_369_3, arg_369_4)
	local var_369_0 = {}

	for iter_369_0, iter_369_1 in ipairs(arg_369_0.enemies or {}) do
		if (not arg_369_3 or not arg_369_3[iter_369_1]) and __recovered_scope_0.var_0_275(arg_369_0, arg_369_1.owner, iter_369_1, arg_369_2) then
			local var_369_1 = __recovered_scope_0.var_0_190.targetCover(arg_369_0, iter_369_1)
			local var_369_2 = 0
			local var_369_3 = 0
			local var_369_4 = 0

			__recovered_scope_0.var_0_273.eachCell(arg_369_1, arg_369_1.x, arg_369_1.footY, 0, function(arg_370_0, arg_370_1, arg_370_2)
				local var_370_0

				if var_369_1 then
					var_370_0 = __recovered_scope_0.var_0_203.coverOverlaps(var_369_1, arg_370_0, arg_370_1, arg_370_0 + arg_370_2, arg_370_1 + arg_370_2)
				else
					var_370_0 = __recovered_scope_0.var_0_203.touches(iter_369_1, arg_370_0 + arg_370_2 * 0.5, arg_370_1 + arg_370_2 * 0.5)
				end

				if var_370_0 then
					var_369_2, var_369_3, var_369_4 = var_369_2 + arg_370_0 + arg_370_2 * 0.5, var_369_3 + arg_370_1 + arg_370_2 * 0.5, var_369_4 + 1
				end
			end)

			if var_369_4 > 0 then
				local var_369_5 = __recovered_scope_0.var_0_190.targetPoint(arg_369_0, iter_369_1)

				var_369_0[#var_369_0 + 1] = {
					target = iter_369_1,
					x = var_369_2 / var_369_4,
					y = var_369_3 / var_369_4,
					d = math.abs((var_369_5 or iter_369_1.x or 0) - arg_369_1.x),
					index = iter_369_0
				}
			end
		end
	end

	table.sort(var_369_0, function(arg_371_0, arg_371_1)
		if arg_371_0.d ~= arg_371_1.d then
			return arg_371_0.d < arg_371_1.d
		end

		return arg_371_0.index < arg_371_1.index
	end)

	local var_369_6 = {}

	for iter_369_2 = 1, math.min(arg_369_4 or 2, #var_369_0) do
		var_369_6[iter_369_2] = {
			target = var_369_0[iter_369_2].target,
			x = var_369_0[iter_369_2].x,
			y = var_369_0[iter_369_2].y
		}
	end

	return var_369_6
end

 __recovered_scope_0.var_0_276 = __recovered_scope_0.var_0_273
 __recovered_scope_0.var_0_277 = nil
 __recovered_scope_0.var_0_278 = {
	SLOW = 75,
	GROW = 0.08,
	LIFE = 4,
	REACH = 6,
	SIZE = 2,
	MUL = 2.4,
	GIANT = 180,
	FAST = 270,
	matches = function(arg_372_0)
		return __recovered_scope_0.var_0_137.isForbiddenMage(arg_372_0)
	end,
	setSpeed = function(arg_373_0, arg_373_1)
		arg_373_0.speedStart, arg_373_0.speedFinal = arg_373_1, arg_373_1
		arg_373_0.vx, arg_373_0.vy = (arg_373_0.dirX or 1) * arg_373_1, (arg_373_0.dirY or 0) * arg_373_1
	end
}

function __recovered_scope_0.var_0_278.launched(arg_374_0, arg_374_1, arg_374_2)
	if not arg_374_0 or not arg_374_0.projectiles or not __recovered_scope_0.var_0_278.matches(arg_374_1) then
		return nil
	end

	for iter_374_0 = #arg_374_0.projectiles, 1, -1 do
		local var_374_0 = arg_374_0.projectiles[iter_374_0]

		if var_374_0.owner == arg_374_1 and var_374_0.asset == "ForbiddenMageProjectile" and var_374_0.basicAttack and not var_374_0.boltFusion then
			return __recovered_scope_0.var_0_278.tag(var_374_0, arg_374_1, arg_374_2)
		end
	end

	return nil
end

function __recovered_scope_0.var_0_278.tag(arg_375_0, arg_375_1, arg_375_2)
	local var_375_0 = arg_375_1._boltFusionFast == true

	arg_375_1._boltFusionFast = not var_375_0
	arg_375_1._boltFusionSeq = (arg_375_1._boltFusionSeq or 0) + 1
	arg_375_0.boltFusion, arg_375_0.boltFusionTarget, arg_375_0.boltFusionSeq = var_375_0 and "fast" or "slow", arg_375_2, arg_375_1._boltFusionSeq

	__recovered_scope_0.var_0_278.setSpeed(arg_375_0, var_375_0 and __recovered_scope_0.var_0_278.FAST or __recovered_scope_0.var_0_278.SLOW)

	if not var_375_0 then
		arg_375_0.life = math.max(arg_375_0.life or 0, __recovered_scope_0.var_0_278.LIFE)
	end

	return arg_375_0
end

function __recovered_scope_0.var_0_278.flying(arg_376_0)
	return arg_376_0.alive ~= false and (arg_376_0.state == nil or arg_376_0.state == "flight") and not arg_376_0.visualOnly
end

function __recovered_scope_0.var_0_278.caught(arg_377_0, arg_377_1)
	local var_377_0 = (arg_377_0.x or 0) - (arg_377_1.x or 0)
	local var_377_1 = (arg_377_0.y or 0) - (arg_377_1.y or 0)
	local var_377_2 = arg_377_1.dirX or 1
	local var_377_3 = arg_377_1.dirY or 0
	local var_377_4 = __recovered_scope_0.var_0_278.REACH * (arg_377_1.scale or 1)

	return var_377_4 >= var_377_0 * var_377_2 + var_377_1 * var_377_3 and math.abs(var_377_1 * var_377_2 - var_377_0 * var_377_3) <= var_377_4 * 1.5
end

function __recovered_scope_0.var_0_278.fuse(arg_378_0, arg_378_1, arg_378_2, arg_378_3)
	local var_378_0 = arg_378_0.scale or 1

	arg_378_0.dmg = ((arg_378_0.dmg or 0) + (arg_378_1.dmg or 0)) * __recovered_scope_0.var_0_278.MUL / 2
	arg_378_0.boltFusion, arg_378_0.boltFusionX, arg_378_0.boltFusionY, arg_378_0.boltFusionBase = "giant", arg_378_0.x, arg_378_0.y, var_378_0
	arg_378_0.growFrom, arg_378_0.growTo, arg_378_0.growDur, arg_378_0.growT = var_378_0, var_378_0 * __recovered_scope_0.var_0_278.SIZE, __recovered_scope_0.var_0_278.GROW, 0

	if arg_378_2 and arg_378_3 then
		local var_378_1 = arg_378_2 - (arg_378_0.x or 0)
		local var_378_2 = arg_378_3 - (arg_378_0.y or 0)
		local var_378_3 = math.sqrt(var_378_1 * var_378_1 + var_378_2 * var_378_2)

		if var_378_3 > 1e-06 then
			arg_378_0.dirX, arg_378_0.dirY, arg_378_0.rot = var_378_1 / var_378_3, var_378_2 / var_378_3, math.atan2(var_378_2, var_378_1)
		end
	end

	__recovered_scope_0.var_0_278.setSpeed(arg_378_0, __recovered_scope_0.var_0_278.GIANT)

	arg_378_1.alive, arg_378_1.boltFusion = false, "fused"

	return arg_378_0
end

function __recovered_scope_0.var_0_278.update(arg_379_0)
	local var_379_0 = arg_379_0 and arg_379_0.projectiles

	if not var_379_0 then
		return
	end

	for iter_379_0, iter_379_1 in ipairs(var_379_0) do
		if iter_379_1.boltFusion == "fast" and __recovered_scope_0.var_0_278.flying(iter_379_1) then
			for iter_379_2, iter_379_3 in ipairs(var_379_0) do
				if iter_379_3.boltFusion == "slow" and iter_379_3.owner == iter_379_1.owner and iter_379_3.boltFusionTarget == iter_379_1.boltFusionTarget and (iter_379_3.boltFusionSeq or 0) < (iter_379_1.boltFusionSeq or 0) and __recovered_scope_0.var_0_278.flying(iter_379_3) and __recovered_scope_0.var_0_278.caught(iter_379_3, iter_379_1) then
					local var_379_1 = iter_379_1.boltFusionTarget
					local var_379_2
					local var_379_3

					if var_379_1 and var_379_1.alive and var_379_1.colX and var_379_1.colW and var_379_1.colY and var_379_1.colH then
						var_379_2, var_379_3 = var_379_1.colX + var_379_1.colW / 2, var_379_1.colY + var_379_1.colH / 2
					end

					__recovered_scope_0.var_0_278.fuse(iter_379_3, iter_379_1, var_379_2, var_379_3)

					break
				end
			end
		end
	end
end

 __recovered_scope_0.var_0_279 = __recovered_scope_0.var_0_278

return {
	bolt_fusion = __recovered_scope_0.var_0_279,
	guardian_sword = __recovered_scope_0.var_0_276,
	white_wave = __recovered_scope_0.var_0_271,
	shrink_ray = __recovered_scope_0.var_0_263,
	moon_bolt = __recovered_scope_0.var_0_257,
	spellblade_vortex = __recovered_scope_0.var_0_190,
	arcane_collapse = __recovered_scope_0.var_0_193,
	arrow_rain = __recovered_scope_0.var_0_196,
	hollow_arrow = __recovered_scope_0.var_0_203,
	chain_snipe = __recovered_scope_0.var_0_208,
	rift_spear = __recovered_scope_0.var_0_216,
	chain_spear = __recovered_scope_0.var_0_224,
	spectral_rush = __recovered_scope_0.var_0_237,
	abyssal_ray = __recovered_scope_0.var_0_241,
	life_siphon = __recovered_scope_0.var_0_251,
	eye_of_confusion = __recovered_scope_0.var_0_186,
	hunters_lens = __recovered_scope_0.var_0_178,
	ground_sprite_mask = __recovered_scope_0.var_0_172,
	flame_descent = __recovered_scope_0.var_0_170,
	call_of_the_plains = __recovered_scope_0.var_0_166,
	cleansing_wave = __recovered_scope_0.var_0_163,
	spear_cyclone_area = __recovered_scope_0.var_0_156,
	cannoneer_projectile = __recovered_scope_0.var_0_152,
	timed_keg = __recovered_scope_0.var_0_149,
	grenadier_bomb = __recovered_scope_0.var_0_145,
	gunslinger_bullet = __recovered_scope_0.var_0_137,
	combustion_blast_projectile = __recovered_scope_0.var_0_134,
	cosmic_sovereign_projectile = __recovered_scope_0.var_0_131,
	star_judge_projectile = __recovered_scope_0.var_0_127,
	ember_imp = __recovered_scope_0.var_0_9,
	rascal_imp = __recovered_scope_0.var_0_19,
	space_assassin_shuriken = __recovered_scope_0.var_0_37,
	space_hunter_projectile = __recovered_scope_0.var_0_51,
	space_wizard_projectile = __recovered_scope_0.var_0_65,
	space_hunter_gravity_arrow = __recovered_scope_0.var_0_83,
	starlight_paladin_projectile = __recovered_scope_0.var_0_101,
	star_priestess_hammer = __recovered_scope_0.var_0_112,
	ferret_tamer_projectile = __recovered_scope_0.var_0_118,
	imp_explosion = __recovered_scope_0.var_0_123
}
