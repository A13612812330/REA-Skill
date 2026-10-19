-- Recovered source: generated locals lifted into per-invocation tables.
local __recovered_scope_0 = {}
 __recovered_scope_0.var_0_0 = nil
 __recovered_scope_0.var_0_1 = {}

 function __recovered_scope_0.var_0_2(arg_1_0)
	return arg_1_0 and arg_1_0.alive ~= false and not arg_1_0.dying and not arg_1_0._venomMawSwallowed and not arg_1_0.isUndyingSoul and (tonumber(arg_1_0.hp) or 1) > 0
end

 function __recovered_scope_0.var_0_3(arg_2_0)
	if arg_2_0 and arg_2_0.colX and arg_2_0.colY and arg_2_0.colW and arg_2_0.colH then
		return arg_2_0.colX + arg_2_0.colW * 0.5, arg_2_0.colY + arg_2_0.colH * 0.5
	end

	return tonumber(arg_2_0 and arg_2_0.x) or 0, tonumber(arg_2_0 and arg_2_0.y) or 0
end

 function __recovered_scope_0.var_0_4(arg_3_0, arg_3_1)
	local var_3_0 = love and love.math and love.math.random or math.random

	return arg_3_0 + (arg_3_1 - arg_3_0) * var_3_0()
end

 function __recovered_scope_0.var_0_5(arg_4_0, arg_4_1)
	local var_4_0 = love and love.math and love.math.random or math.random
	local var_4_1 = {}
	local var_4_2 = {}

	for iter_4_0, iter_4_1 in ipairs(arg_4_0 and arg_4_0.allies or {}) do
		if __recovered_scope_0.var_0_2(iter_4_1) then
			var_4_1[#var_4_1 + 1] = iter_4_1
			var_4_2[iter_4_1] = true
		end
	end

	if #var_4_1 <= 0 then
		return nil
	end

	local var_4_3 = {}

	for iter_4_2, iter_4_3 in ipairs(arg_4_1._razorscaleRainTargetBag or {}) do
		if var_4_2[iter_4_3] then
			var_4_3[#var_4_3 + 1] = iter_4_3
		end
	end

	if #var_4_3 <= 0 then
		for iter_4_4, iter_4_5 in ipairs(var_4_1) do
			var_4_3[#var_4_3 + 1] = iter_4_5
		end
	end

	local var_4_4 = var_4_0(#var_4_3)
	local var_4_5 = table.remove(var_4_3, var_4_4)

	arg_4_1._razorscaleRainTargetBag = var_4_3

	return var_4_5
end

 function __recovered_scope_0.var_0_6(arg_5_0, arg_5_1, arg_5_2, arg_5_3, arg_5_4)
	local var_5_0 = require("src.game.combat").placement_area
	local var_5_1 = var_5_0 and var_5_0.regions and var_5_0.regions(arg_5_0, arg_5_3, arg_5_4) or {}

	if #var_5_1 > 0 then
		local var_5_2 = tonumber(arg_5_2) or 0
		local var_5_3
		local var_5_4

		for iter_5_0, iter_5_1 in ipairs(var_5_1) do
			local var_5_5 = math.max(iter_5_1.minY, math.min(iter_5_1.maxY, var_5_2))
			local var_5_6 = math.abs(var_5_5 - var_5_2)

			if var_5_4 == nil or var_5_6 < var_5_4 then
				var_5_3, var_5_4 = var_5_5, var_5_6
			end
		end

		arg_5_2 = var_5_3 or arg_5_2
	end

	local var_5_7 = arg_5_0 and arg_5_0.area

	if var_5_7 then
		local var_5_8 = math.max(0, tonumber(arg_5_3) or 0)
		local var_5_9 = (tonumber(var_5_7.x) or 0) + var_5_8
		local var_5_10 = (tonumber(var_5_7.x) or 0) + (tonumber(var_5_7.w) or 0) - var_5_8

		if var_5_9 <= var_5_10 then
			arg_5_1 = math.max(var_5_9, math.min(var_5_10, tonumber(arg_5_1) or var_5_9))
		end
	end

	return arg_5_1, arg_5_2
end

 function __recovered_scope_0.var_0_7(arg_6_0, arg_6_1)
	if math.atan2 then
		return math.atan2(arg_6_1, arg_6_0)
	end

	if arg_6_0 == 0 then
		return arg_6_1 >= 0 and math.pi * 0.5 or -math.pi * 0.5
	end

	local var_6_0 = math.atan(arg_6_1 / arg_6_0)

	if arg_6_0 < 0 then
		var_6_0 = var_6_0 + math.pi
	end

	return var_6_0
end

 function __recovered_scope_0.var_0_8(arg_7_0, arg_7_1, arg_7_2, arg_7_3, arg_7_4, arg_7_5, arg_7_6, arg_7_7)
	local var_7_0 = arg_7_2 - arg_7_0
	local var_7_1 = arg_7_3 - arg_7_1
	local var_7_2 = 0
	local var_7_3 = 1

	local function var_7_4(arg_8_0, arg_8_1, arg_8_2, arg_8_3)
		if math.abs(arg_8_1) < 1e-08 then
			return arg_8_2 <= arg_8_0 and arg_8_0 <= arg_8_3
		end

		local var_8_0 = (arg_8_2 - arg_8_0) / arg_8_1
		local var_8_1 = (arg_8_3 - arg_8_0) / arg_8_1

		if var_8_1 < var_8_0 then
			var_8_0, var_8_1 = var_8_1, var_8_0
		end

		if var_8_0 > var_7_2 then
			var_7_2 = var_8_0
		end

		if var_8_1 < var_7_3 then
			var_7_3 = var_8_1
		end

		return var_7_2 <= var_7_3
	end

	return var_7_4(arg_7_0, var_7_0, arg_7_4, arg_7_6) and var_7_4(arg_7_1, var_7_1, arg_7_5, arg_7_7), var_7_2
end

 function __recovered_scope_0.var_0_9(arg_9_0, arg_9_1, arg_9_2, arg_9_3, arg_9_4, arg_9_5, arg_9_6, arg_9_7, arg_9_8, arg_9_9)
	if type(arg_9_7) ~= "function" then
		return 0
	end

	local var_9_0 = math.max(3, (tonumber(arg_9_1.scale) or 1) * 4)
	local var_9_1 = math.max(8, (tonumber(arg_9_8) or 32) * 0.28)
	local var_9_2 = {}

	for iter_9_0, iter_9_1 in ipairs(arg_9_0 and arg_9_0.allies or {}) do
		if __recovered_scope_0.var_0_2(iter_9_1) and not arg_9_6[iter_9_1] then
			local var_9_3
			local var_9_4
			local var_9_5
			local var_9_6

			if iter_9_1.colX and iter_9_1.colY and iter_9_1.colW and iter_9_1.colH then
				var_9_3 = iter_9_1.colX - var_9_0
				var_9_4 = iter_9_1.colY - var_9_0
				var_9_5 = iter_9_1.colX + iter_9_1.colW + var_9_0
				var_9_6 = iter_9_1.colY + iter_9_1.colH + var_9_0
			else
				local var_9_7, var_9_8 = __recovered_scope_0.var_0_3(iter_9_1)

				var_9_3, var_9_4 = var_9_7 - var_9_1 - var_9_0, var_9_8 - var_9_1 - var_9_0
				var_9_5, var_9_6 = var_9_7 + var_9_1 + var_9_0, var_9_8 + var_9_1 + var_9_0
			end

			local var_9_9, var_9_10 = __recovered_scope_0.var_0_8(arg_9_2, arg_9_3, arg_9_4, arg_9_5, var_9_3, var_9_4, var_9_5, var_9_6)

			if var_9_9 then
				var_9_2[#var_9_2 + 1] = {
					ally = iter_9_1,
					t = tonumber(var_9_10) or 0,
					index = iter_9_0
				}
			end
		end
	end

	table.sort(var_9_2, function(arg_10_0, arg_10_1)
		if arg_10_0.t ~= arg_10_1.t then
			return arg_10_0.t < arg_10_1.t
		end

		return arg_10_0.index < arg_10_1.index
	end)

	local var_9_11 = 0
	local var_9_12 = math.max(1, math.floor(tonumber(arg_9_9) or #var_9_2))

	for iter_9_2, iter_9_3 in ipairs(var_9_2) do
		local var_9_13 = iter_9_3.ally

		arg_9_6[var_9_13] = true

		arg_9_7(var_9_13, arg_9_1.dmg or 1, arg_9_1.owner, {
			skillBig = true,
			hitFlashColor = {
				0.88,
				0.92,
				1
			}
		})

		var_9_11 = var_9_11 + 1

		if var_9_12 <= var_9_11 then
			break
		end
	end

	return var_9_11
end

function __recovered_scope_0.var_0_1.matches(arg_11_0)
	return arg_11_0 and ((tonumber(arg_11_0.razorscaleRainCd) or 0) > 0 or arg_11_0.kind == "Razorscale Elder" or arg_11_0.kind == "칼비늘 장로" or arg_11_0.kind == "칼비늘 장로 (Razorscale Elder)" or arg_11_0.skin == "칼비늘 장로 (Razorscale Elder)")
end

function __recovered_scope_0.var_0_1.getProjectileAnchor(arg_12_0, arg_12_1, arg_12_2, arg_12_3, arg_12_4)
	local var_12_0 = tonumber(arg_12_1 and arg_12_1.frameW) or 32
	local var_12_1 = tonumber(arg_12_1 and arg_12_1.frameH) or 32
	local var_12_2 = arg_12_1 and arg_12_1.animations and arg_12_1.animations[arg_12_3 or "attack"]
	local var_12_3 = arg_12_1 and arg_12_1.imageData
	local var_12_4 = 0
	local var_12_5 = 0
	local var_12_6 = 0

	if var_12_3 and var_12_2 then
		local var_12_7 = (math.max(1, math.min(math.floor(tonumber(arg_12_4) or 1), tonumber(var_12_2.frames) or 1)) - 1) * var_12_0
		local var_12_8 = tonumber(var_12_2.y) or (math.max(1, tonumber(var_12_2.row) or 1) - 1) * var_12_1
		local var_12_9 = var_12_3:getWidth()
		local var_12_10 = var_12_3:getHeight()

		if var_12_7 >= 0 and var_12_8 >= 0 and var_12_9 >= var_12_7 + var_12_0 and var_12_10 >= var_12_8 + var_12_1 then
			for iter_12_0 = 0, var_12_1 - 1 do
				for iter_12_1 = 0, var_12_0 - 1 do
					local var_12_11, var_12_12, var_12_13, var_12_14 = var_12_3:getPixel(var_12_7 + iter_12_1, var_12_8 + iter_12_0)

					if var_12_14 and var_12_14 > 0 and math.floor((var_12_11 or 0) * 255 + 0.5) == 162 and math.floor((var_12_12 or 0) * 255 + 0.5) == 32 and math.floor((var_12_13 or 0) * 255 + 0.5) == 18 then
						var_12_4 = var_12_4 + iter_12_1 + 0.5
						var_12_5 = var_12_5 + iter_12_0 + 0.5
						var_12_6 = var_12_6 + 1
					end
				end
			end
		end
	end

	local var_12_15
	local var_12_16

	if var_12_6 > 0 then
		var_12_15, var_12_16 = var_12_4 / var_12_6, var_12_5 / var_12_6
	else
		var_12_15, var_12_16 = var_12_0 * 0.796875, var_12_1 * 0.265625
	end

	if (tonumber(arg_12_0 and arg_12_0.facing) or -1) < 0 then
		var_12_15 = var_12_0 - var_12_15
	end

	local var_12_17 = (tonumber(arg_12_2) or 32) / math.max(1, var_12_0)
	local var_12_18 = (tonumber(arg_12_0 and arg_12_0.x) or 0) - var_12_0 * var_12_17 * 0.5
	local var_12_19 = (tonumber(arg_12_0 and arg_12_0.y) or 0) - var_12_1 * var_12_17 * 0.5

	return var_12_18 + var_12_15 * var_12_17, var_12_19 + var_12_16 * var_12_17, var_12_6
end

 function __recovered_scope_0.var_0_10(arg_13_0, arg_13_1, arg_13_2)
	arg_13_0.projectiles = arg_13_0.projectiles or {}

	local var_13_0 = math.max(0.1, tonumber(arg_13_1.razorscaleBladeFallDur) or 0.45)
	local var_13_1 = math.max(40, tonumber(arg_13_1.razorscaleBladeFallHeight) or 84)
	local var_13_2 = math.max(1, (tonumber(arg_13_2) or 32) / 32)
	local var_13_3 = math.max(1, math.floor((tonumber(arg_13_1.dmg) or 0) * (tonumber(arg_13_1.razorscaleBladeDmgMul) or 0.5) + 0.5))
	local var_13_4 = love and love.math and love.math.random or math.random
	local var_13_5 = __recovered_scope_0.var_0_5(arg_13_0, arg_13_1)

	if not var_13_5 then
		return false
	end

	local var_13_6, var_13_7 = __recovered_scope_0.var_0_3(var_13_5)
	local var_13_8 = math.max(0, math.min(1, tonumber(arg_13_1.razorscaleBladeNearChance) or 0.6)) > var_13_4()
	local var_13_9 = var_13_8 and math.max(0, tonumber(arg_13_1.razorscaleBladeNearMin) or 2) or math.max(0, tonumber(arg_13_1.razorscaleBladeMissMin) or 12)
	local var_13_10 = var_13_8 and math.max(var_13_9, tonumber(arg_13_1.razorscaleBladeNearMax) or 10) or math.max(var_13_9, tonumber(arg_13_1.razorscaleBladeMissMax) or 24)
	local var_13_11 = __recovered_scope_0.var_0_4(var_13_9, var_13_10)
	local var_13_12 = __recovered_scope_0.var_0_4(0, math.pi * 2)
	local var_13_13 = var_13_6 + math.cos(var_13_12) * var_13_11
	local var_13_14 = var_13_7 + math.sin(var_13_12) * var_13_11
	local var_13_15, var_13_16 = __recovered_scope_0.var_0_6(arg_13_0, var_13_13, var_13_14, 8 * var_13_2 + var_13_2, 20 * var_13_2)
	local var_13_17 = tonumber(arg_13_0.area and arg_13_0.area.y) or 0
	local var_13_18 = 8 * var_13_2
	local var_13_19 = math.min(var_13_16 - var_13_1, var_13_17 - var_13_18 - 2)
	local var_13_20 = math.max(1, var_13_16 - var_13_19)

	arg_13_0.projectiles[#arg_13_0.projectiles + 1] = {
		side = "enemy",
		life = 30,
		vx = 0,
		asset = "RazorscaleElderProjectile",
		frame = 1,
		razorscaleBlade = true,
		razorscaleState = "falling",
		visualOnly = true,
		alive = true,
		battleSkillDamage = true,
		kind = "arrow",
		animFrames = 4,
		animT = 0,
		x = var_13_15,
		y = var_13_19,
		startX = var_13_15,
		startY = var_13_19,
		groundX = var_13_15,
		groundY = var_13_16,
		vy = var_13_20 / var_13_0,
		rot = math.pi * 0.5,
		dmg = var_13_3,
		scale = var_13_2,
		owner = arg_13_1,
		chainCast = require("src.game.combat").chain_casting.capture(arg_13_1),
		razorscaleSerial = tonumber(arg_13_1._razorscaleRainSerial) or 0,
		razorscaleNearDrop = var_13_8,
		razorscaleTarget = var_13_5,
		razorscaleReturnSpeed = math.max(40, tonumber(arg_13_1.razorscaleBladeReturnSpeed) or 230),
		razorscaleFallHits = {},
		razorscaleReturnHits = {}
	}

	return true
end

function __recovered_scope_0.var_0_1.updateSkill(arg_14_0, arg_14_1, arg_14_2, arg_14_3, arg_14_4)
	if not arg_14_0 or not __recovered_scope_0.var_0_1.matches(arg_14_1) then
		return false
	end

	local var_14_0 = math.max(0, tonumber(arg_14_2) or 0)

	if arg_14_1.alive == false or arg_14_1.dying or (tonumber(arg_14_1.hp) or 0) <= 0 then
		arg_14_1._razorscaleRainActive = false
		arg_14_1._razorscaleRainCasting = false
		arg_14_1._razorscaleRainReleasing = false

		return false
	end

	local var_14_1 = false

	for iter_14_0, iter_14_1 in ipairs(arg_14_0.allies or {}) do
		if __recovered_scope_0.var_0_2(iter_14_1) then
			var_14_1 = true

			break
		end
	end

	if not var_14_1 then
		arg_14_1._razorscaleRainCdT = 0
		arg_14_1._razorscaleRainActive = false
		arg_14_1._razorscaleRainCasting = false
		arg_14_1._razorscaleRainReleasing = false
		arg_14_1._razorscaleRainFirstTriggered = false
		arg_14_1._razorscaleRainRecallSerial = arg_14_1._razorscaleRainSerial
		arg_14_1._razorscaleRainRecallT = nil
		arg_14_1._razorscaleRainWaitingSerial = nil

		return false
	end

	if arg_14_1._razorscaleRainRecallT then
		arg_14_1._razorscaleRainRecallT = math.max(0, (tonumber(arg_14_1._razorscaleRainRecallT) or 0) - var_14_0)

		if arg_14_1._razorscaleRainRecallT <= 0 then
			arg_14_1._razorscaleRainRecallSerial = arg_14_1._razorscaleRainWaitingSerial
			arg_14_1._razorscaleRainRecallT = nil
			arg_14_1._razorscaleRainWaitingSerial = nil
		end
	end

	local var_14_2 = arg_14_1._razorscaleRainFirstTriggered and math.max(0.1, tonumber(arg_14_1.razorscaleRainCd) or 9) or math.max(0.1, tonumber(arg_14_1.razorscaleRainFirstDelay) or 5)

	arg_14_1._razorscaleRainCdT = math.min(var_14_2, (tonumber(arg_14_1._razorscaleRainCdT) or 0) + var_14_0)

	if not arg_14_1._razorscaleRainActive and not arg_14_1._razorscaleRainCasting and not arg_14_1._razorscaleRainReleasing and arg_14_4 ~= false then
		local var_14_3 = arg_14_1.anim and arg_14_1.anim.name or "idle"
		local var_14_4 = var_14_3 == "attack" or var_14_3 == "attack2" or var_14_3 == "attack3" or var_14_3 == "skill" or var_14_3 == "jump"

		if var_14_2 <= arg_14_1._razorscaleRainCdT and not var_14_4 and (tonumber(arg_14_1.stunT) or 0) <= 0 then
			arg_14_1._razorscaleRainCdT = 0
			arg_14_1._razorscaleRainFirstTriggered = true
			arg_14_1._razorscaleRainCasting = true
			arg_14_1._razorscaleRainActive = false
			arg_14_1._razorscaleRainSerial = (tonumber(arg_14_1._razorscaleRainSerial) or 0) + 1
			arg_14_1._razorscaleRainTargetBag = nil
			arg_14_1._razorscaleRainRecallT = nil
			arg_14_1._razorscaleRainWaitingSerial = nil
			arg_14_1._razorscaleRainT = 0
			arg_14_1._razorscaleRainVolleysFired = 0
			arg_14_1._razorscaleRainLandedCount = 0
			arg_14_1._meleeLoop = false
			arg_14_1._pendingGoblinHit = nil
			arg_14_1._pendingOrcHit = nil
			arg_14_1._pendingHowlHit = nil
			arg_14_1.shotPending = false
			arg_14_1.pendingTarget = nil

			local var_14_5 = math.max(0.1, tonumber(arg_14_1.razorscaleRainDur) or 4)

			arg_14_1.coolTicks = math.max(tonumber(arg_14_1.coolTicks) or 0, math.floor(var_14_5 * 60 + 0.5))

			local var_14_6

			for iter_14_2, iter_14_3 in ipairs(arg_14_0.allies or {}) do
				if __recovered_scope_0.var_0_2(iter_14_3) then
					var_14_6 = iter_14_3

					break
				end
			end

			if var_14_6 then
				arg_14_1.facing = (tonumber(var_14_6.x) or 0) >= (tonumber(arg_14_1.x) or 0) and 1 or -1
			end

			if arg_14_1.anim then
				arg_14_1.anim.name = "attack2"
				arg_14_1.anim.frame = 1
				arg_14_1.anim.t = 0
			end
		end
	end

	if arg_14_1._razorscaleRainCasting then
		if arg_14_1.anim and arg_14_1.anim.name == "attack2" and (tonumber(arg_14_1.anim.frame) or 1) >= 4 then
			arg_14_1.anim.frame = 4
			arg_14_1.anim.t = 0
			arg_14_1._razorscaleRainCasting = false
			arg_14_1._razorscaleRainActive = true
		elseif arg_14_1.anim and arg_14_1.anim.name ~= "attack2" then
			arg_14_1.anim.name = "attack2"
			arg_14_1.anim.frame = 1
			arg_14_1.anim.t = 0
		end
	end

	if arg_14_1._razorscaleRainActive then
		local var_14_7 = math.max(0.1, tonumber(arg_14_1.razorscaleRainDur) or 4)
		local var_14_8 = math.max(1, math.floor(tonumber(arg_14_1.razorscaleRainVolleys) or 8))
		local var_14_9 = math.max(0.05, tonumber(arg_14_1.razorscaleRainInterval) or 0.5)

		arg_14_1._razorscaleRainT = math.min(var_14_7, (tonumber(arg_14_1._razorscaleRainT) or 0) + var_14_0)

		while var_14_8 > (tonumber(arg_14_1._razorscaleRainVolleysFired) or 0) and arg_14_1._razorscaleRainT >= ((tonumber(arg_14_1._razorscaleRainVolleysFired) or 0) + 1) * var_14_9 do
			__recovered_scope_0.var_0_10(arg_14_0, arg_14_1, arg_14_3)

			arg_14_1._razorscaleRainVolleysFired = (tonumber(arg_14_1._razorscaleRainVolleysFired) or 0) + 1
		end

		if var_14_7 <= arg_14_1._razorscaleRainT then
			arg_14_1._razorscaleRainActive = false
			arg_14_1._razorscaleRainReleasing = true

			if arg_14_1.anim then
				arg_14_1.anim.name = "attack2"
				arg_14_1.anim.frame = 4
				arg_14_1.anim.t = 0
			end

			arg_14_1._razorscaleRainWaitingSerial = arg_14_1._razorscaleRainSerial

			if var_14_8 <= (tonumber(arg_14_1._razorscaleRainLandedCount) or 0) then
				arg_14_1._razorscaleRainRecallT = math.max(0.1, tonumber(arg_14_1.razorscaleBladeGroundDur) or 2)
			end

			arg_14_1._razorscaleRainT = nil
			arg_14_1._razorscaleRainVolleysFired = nil
		end
	end

	return arg_14_1._razorscaleRainActive == true
end

function __recovered_scope_0.var_0_1.updateProjectile(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4)
	if not arg_15_0 or not arg_15_1 or not arg_15_1.razorscaleBlade then
		return false
	end

	local var_15_0 = arg_15_1.owner

	if not var_15_0 or var_15_0.alive == false or var_15_0.dying or not ((tonumber(var_15_0.hp) or 0) > 0) then
		arg_15_1.alive = false

		return true
	end

	local var_15_1 = math.max(0, tonumber(arg_15_2) or 0)
	local var_15_2 = tonumber(arg_15_1.x) or 0
	local var_15_3 = tonumber(arg_15_1.y) or 0
	local var_15_4 = arg_15_1.razorscaleState or "falling"

	if var_15_4 == "falling" then
		local var_15_5 = tonumber(arg_15_1.groundY) or var_15_3

		arg_15_1.y = math.min(var_15_5, var_15_3 + (tonumber(arg_15_1.vy) or 0) * var_15_1)

		if not arg_15_1.razorscaleFallHitDone and __recovered_scope_0.var_0_9(arg_15_0, arg_15_1, var_15_2, var_15_3, arg_15_1.x, arg_15_1.y, arg_15_1.razorscaleFallHits, arg_15_3, arg_15_4, 1) > 0 then
			arg_15_1.razorscaleFallHitDone = true
		end

		if var_15_5 <= arg_15_1.y then
			arg_15_1.x = tonumber(arg_15_1.groundX) or arg_15_1.x
			arg_15_1.y = var_15_5
			arg_15_1.vx, arg_15_1.vy = 0, 0
			arg_15_1.razorscaleState = "grounded"

			local var_15_6 = love and love.math and love.math.random or math.random
			local var_15_7 = var_15_6() < 0.5 and -1 or 1
			local var_15_8 = math.rad(__recovered_scope_0.var_0_4(7, 16)) * var_15_7

			arg_15_1.razorscaleGroundRot = math.pi * 0.5 + var_15_8
			arg_15_1.razorscaleGroundFrame = var_15_6() < 0.5 and 2 or 4
			arg_15_1.rot = arg_15_1.razorscaleGroundRot
			arg_15_1.frame = arg_15_1.razorscaleGroundFrame
			arg_15_1.animT = 0

			if not arg_15_1._razorscaleLandingCounted and tonumber(arg_15_1.razorscaleSerial) == tonumber(var_15_0._razorscaleRainSerial) then
				arg_15_1._razorscaleLandingCounted = true
				var_15_0._razorscaleRainLandedCount = (tonumber(var_15_0._razorscaleRainLandedCount) or 0) + 1

				local var_15_9 = math.max(1, math.floor(tonumber(var_15_0.razorscaleRainVolleys) or 8))

				if tonumber(var_15_0._razorscaleRainWaitingSerial) == tonumber(arg_15_1.razorscaleSerial) and var_15_9 <= var_15_0._razorscaleRainLandedCount and not var_15_0._razorscaleRainRecallT then
					var_15_0._razorscaleRainRecallT = math.max(0.1, tonumber(var_15_0.razorscaleBladeGroundDur) or 2)
				end
			end
		end
	elseif var_15_4 == "grounded" then
		arg_15_1.rot = arg_15_1.razorscaleGroundRot or arg_15_1.rot
		arg_15_1.frame = arg_15_1.razorscaleGroundFrame or arg_15_1.frame
		arg_15_1.animT = 0

		if tonumber(var_15_0._razorscaleRainRecallSerial) == tonumber(arg_15_1.razorscaleSerial) then
			arg_15_1.razorscaleState = "returning"
			arg_15_1.razorscaleGroundFrame = nil
			arg_15_1.razorscaleGroundRot = nil
		end
	elseif var_15_4 == "returning" then
		local var_15_10, var_15_11 = __recovered_scope_0.var_0_3(var_15_0)
		local var_15_12 = var_15_10 - var_15_2
		local var_15_13 = var_15_11 - var_15_3
		local var_15_14 = math.sqrt(var_15_12 * var_15_12 + var_15_13 * var_15_13)
		local var_15_15 = tonumber(arg_15_1.razorscaleReturnSpeed) or 230
		local var_15_16 = var_15_15 * var_15_1

		if var_15_14 <= math.max(5, var_15_16) then
			arg_15_1.x, arg_15_1.y = var_15_10, var_15_11

			if not arg_15_1.razorscaleReturnHitDone and __recovered_scope_0.var_0_9(arg_15_0, arg_15_1, var_15_2, var_15_3, arg_15_1.x, arg_15_1.y, arg_15_1.razorscaleReturnHits, arg_15_3, arg_15_4, 1) > 0 then
				arg_15_1.razorscaleReturnHitDone = true
			end

			arg_15_1.alive = false
		elseif var_15_14 > 1e-06 then
			local var_15_17 = var_15_12 / var_15_14
			local var_15_18 = var_15_13 / var_15_14

			arg_15_1.x = var_15_2 + var_15_17 * var_15_16
			arg_15_1.y = var_15_3 + var_15_18 * var_15_16
			arg_15_1.vx, arg_15_1.vy = var_15_17 * var_15_15, var_15_18 * var_15_15
			arg_15_1.rot = __recovered_scope_0.var_0_7(var_15_17, var_15_18)

			if not arg_15_1.razorscaleReturnHitDone and __recovered_scope_0.var_0_9(arg_15_0, arg_15_1, var_15_2, var_15_3, arg_15_1.x, arg_15_1.y, arg_15_1.razorscaleReturnHits, arg_15_3, arg_15_4, 1) > 0 then
				arg_15_1.razorscaleReturnHitDone = true
			end
		end
	end

	return true
end

 __recovered_scope_0.var_0_11 = __recovered_scope_0.var_0_1
 __recovered_scope_0.var_0_12 = nil
 __recovered_scope_0.var_0_13 = {}

 function __recovered_scope_0.var_0_14(arg_16_0)
	return arg_16_0 and arg_16_0.alive and not arg_16_0.dying and not arg_16_0._venomMawSwallowed and (tonumber(arg_16_0.hp) or 1) > 0
end

 function __recovered_scope_0.var_0_15(arg_17_0)
	if not arg_17_0 then
		return false
	end

	local var_17_0 = arg_17_0.state

	return arg_17_0.active == true or var_17_0 == "active" or var_17_0 == "casting" or var_17_0 == "precast" or var_17_0 == "pre"
end

function __recovered_scope_0.var_0_13.remainingCooldown(arg_18_0, arg_18_1)
	if arg_18_1 == arg_18_0 or not __recovered_scope_0.var_0_14(arg_18_1) then
		return nil
	end

	local var_18_0 = arg_18_1.skill
	local var_18_1 = tonumber(var_18_0 and var_18_0.cd) or 0

	if var_18_1 <= 0 or __recovered_scope_0.var_0_15(var_18_0) or var_18_0.ready == true then
		return nil
	end

	local var_18_2 = var_18_1 - (tonumber(var_18_0.cdT) or 0)

	if var_18_2 <= 0 then
		return nil
	end

	return var_18_2
end

function __recovered_scope_0.var_0_13.isValidTarget(arg_19_0, arg_19_1)
	return __recovered_scope_0.var_0_13.remainingCooldown(arg_19_0, arg_19_1) ~= nil and not require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_19_0, arg_19_1)
end

function __recovered_scope_0.var_0_13.findTargets(arg_20_0, arg_20_1, arg_20_2, arg_20_3)
	arg_20_2 = math.max(1, math.floor(tonumber(arg_20_2) or 1))

	local var_20_0 = tonumber(arg_20_0 and arg_20_0.x) or 0
	local var_20_1 = tonumber(arg_20_0 and arg_20_0.y) or 0
	local var_20_2 = {}

	for iter_20_0, iter_20_1 in ipairs(arg_20_1 or {}) do
		local var_20_3 = __recovered_scope_0.var_0_13.remainingCooldown(arg_20_0, iter_20_1)

		if var_20_3 and (not arg_20_3 or not arg_20_3[iter_20_1]) then
			local var_20_4 = (tonumber(iter_20_1.x) or 0) - var_20_0
			local var_20_5 = (tonumber(iter_20_1.y) or 0) - var_20_1
			local var_20_6 = var_20_4 * var_20_4 + var_20_5 * var_20_5

			var_20_2[#var_20_2 + 1] = {
				ally = iter_20_1,
				remaining = var_20_3,
				distance = var_20_6
			}
		end
	end

	table.sort(var_20_2, function(arg_21_0, arg_21_1)
		if arg_21_0.remaining ~= arg_21_1.remaining then
			return arg_21_0.remaining > arg_21_1.remaining
		end

		return arg_21_0.distance < arg_21_1.distance
	end)

	local var_20_7 = {}

	for iter_20_2 = 1, math.min(arg_20_2, #var_20_2) do
		var_20_7[iter_20_2] = var_20_2[iter_20_2].ally
	end

	return var_20_7
end

function __recovered_scope_0.var_0_13.findTarget(arg_22_0, arg_22_1, arg_22_2)
	local var_22_0 = __recovered_scope_0.var_0_13.findTargets(arg_22_0, arg_22_1, 1, arg_22_2)[1]

	return var_22_0, var_22_0 and __recovered_scope_0.var_0_13.remainingCooldown(arg_22_0, var_22_0) or nil
end

function __recovered_scope_0.var_0_13.apply(arg_23_0, arg_23_1)
	if not __recovered_scope_0.var_0_13.isValidTarget(nil, arg_23_0) then
		return false, 0
	end

	local var_23_0 = arg_23_0.skill
	local var_23_1 = tonumber(var_23_0.cd) or 0
	local var_23_2 = tonumber(var_23_0.cdT) or 0
	local var_23_3 = math.max(0, tonumber(arg_23_1) or 2)
	local var_23_4 = math.min(var_23_1, var_23_2 + var_23_3)
	local var_23_5 = math.max(0, var_23_4 - var_23_2)

	if var_23_5 <= 0 then
		return false, 0
	end

	var_23_0.cdT = var_23_4

	require("src.game.awakening").externalCooldown(arg_23_0, var_23_5)

	if var_23_1 <= var_23_4 then
		var_23_0.ready = true
	end

	arg_23_0.hitFlash = {
		t = 0,
		dur = 0.22,
		color = {
			0.96,
			0.82,
			0.35
		}
	}

	return true, var_23_5
end

 function __recovered_scope_0.var_0_16(arg_24_0, arg_24_1, arg_24_2, arg_24_3)
	arg_24_0.ferretAnim = arg_24_1
	arg_24_0.animFrames = arg_24_2
	arg_24_0.ferretAnimSpeed = arg_24_3
	arg_24_0.frame = 1
	arg_24_0.animT = 0
end

 function __recovered_scope_0.var_0_17(arg_25_0, arg_25_1, arg_25_2, arg_25_3, arg_25_4, arg_25_5)
	local var_25_0 = tonumber(arg_25_0.x) or 0
	local var_25_1 = tonumber(arg_25_0.y) or 0
	local var_25_2 = arg_25_1 - var_25_0
	local var_25_3 = arg_25_2 - var_25_1
	local var_25_4 = math.sqrt(var_25_2 * var_25_2 + var_25_3 * var_25_3)

	if var_25_4 <= math.max(0, arg_25_5 or 0) then
		arg_25_0.x, arg_25_0.y = arg_25_1, arg_25_2
		arg_25_0.vx, arg_25_0.vy = 0, 0

		return true, 0
	end

	local var_25_5 = var_25_2 / var_25_4
	local var_25_6 = var_25_3 / var_25_4
	local var_25_7 = math.min(var_25_4, math.max(0, arg_25_3 or 0) * math.max(0, arg_25_4 or 0))

	arg_25_0.x, arg_25_0.y = var_25_0 + var_25_5 * var_25_7, var_25_1 + var_25_6 * var_25_7
	arg_25_0.vx, arg_25_0.vy = var_25_5 * (arg_25_3 or 0), var_25_6 * (arg_25_3 or 0)
	arg_25_0.dirX, arg_25_0.dirY = var_25_5, var_25_6

	if math.abs(var_25_2) > 0.001 then
		arg_25_0.ferretFacing = var_25_2 >= 0 and 1 or -1
	end

	arg_25_0.rot = 0

	return var_25_4 <= var_25_7, math.max(0, var_25_4 - var_25_7)
end

 function __recovered_scope_0.var_0_18(arg_26_0)
	local var_26_0 = math.max(0, math.min(1, tonumber(arg_26_0) or 0))

	return var_26_0 * var_26_0 * (3 - 2 * var_26_0)
end

 function __recovered_scope_0.var_0_19(arg_27_0, arg_27_1, arg_27_2)
	local var_27_0
	local var_27_1 = math.huge
	local var_27_2 = tonumber(arg_27_0 and arg_27_0.x) or 0
	local var_27_3 = tonumber(arg_27_0 and arg_27_0.y) or 0

	for iter_27_0, iter_27_1 in ipairs(arg_27_1 or {}) do
		if iter_27_1 ~= arg_27_0.owner and __recovered_scope_0.var_0_14(iter_27_1) and (not arg_27_2 or not arg_27_2[iter_27_1]) then
			local var_27_4 = (tonumber(iter_27_1.x) or 0) - var_27_2
			local var_27_5 = (tonumber(iter_27_1.y) or 0) - var_27_3
			local var_27_6 = var_27_4 * var_27_4 + var_27_5 * var_27_5

			if var_27_6 < var_27_1 then
				var_27_0, var_27_1 = iter_27_1, var_27_6
			end
		end
	end

	if var_27_0 then
		return var_27_0
	end

	if __recovered_scope_0.var_0_14(arg_27_0 and arg_27_0.owner) then
		return arg_27_0.owner
	end

	return nil
end

 function __recovered_scope_0.var_0_20(arg_28_0)
	arg_28_0.ferretCourierState = "poof"
	arg_28_0.ferretPoofT = 0
	arg_28_0.alpha = 1
	arg_28_0.frame = math.max(1, tonumber(arg_28_0.frame) or 1)
	arg_28_0.animT = 0
	arg_28_0.ferretAnimSpeed = math.huge
	arg_28_0.vx, arg_28_0.vy = 0, 0
	arg_28_0._shrinkScalePoof = {
		t = 0,
		kind = "shrink",
		dur = 0.4
	}
end

 function __recovered_scope_0.var_0_21(arg_29_0, arg_29_1)
	arg_29_0.ferretDeliveredTargets = arg_29_0.ferretDeliveredTargets or {}

	if arg_29_1 then
		arg_29_0.ferretDeliveredTargets[arg_29_1] = true
	end

	arg_29_0.ferretDeliveriesCompleted = (tonumber(arg_29_0.ferretDeliveriesCompleted) or 0) + 1
end

 function __recovered_scope_0.var_0_22(arg_30_0, arg_30_1)
	local var_30_0 = arg_30_0.ferretDeliveredTargets or {}

	if arg_30_0._awakeningOriginalDeliveries and (arg_30_0.ferretDeliveriesCompleted or 0) >= arg_30_0._awakeningOriginalDeliveries then
		local var_30_1 = arg_30_0._awakeningDelivery

		return var_30_1 and not var_30_0[var_30_1] and __recovered_scope_0.var_0_13.isValidTarget(arg_30_0.owner, var_30_1) and var_30_1 or nil
	end

	for iter_30_0, iter_30_1 in ipairs(arg_30_0.ferretCourierTargets or {}) do
		if not var_30_0[iter_30_1] and iter_30_1 ~= arg_30_0._awakeningDelivery and __recovered_scope_0.var_0_13.isValidTarget(arg_30_0.owner, iter_30_1) then
			return iter_30_1
		end
	end

	local var_30_2 = {}

	for iter_30_2, iter_30_3 in pairs(var_30_0) do
		var_30_2[iter_30_2] = iter_30_3
	end

	if arg_30_0._awakeningDelivery then
		var_30_2[arg_30_0._awakeningDelivery] = true
	end

	local var_30_3 = __recovered_scope_0.var_0_13.findTarget(arg_30_0.owner, arg_30_1, var_30_2)

	if var_30_3 then
		return var_30_3
	end

	for iter_30_4, iter_30_5 in ipairs(arg_30_0.ferretCourierTargets or {}) do
		if iter_30_5 ~= arg_30_0._awakeningDelivery and not var_30_0[iter_30_5] and __recovered_scope_0.var_0_14(iter_30_5) then
			return iter_30_5
		end
	end

	return nil
end

function __recovered_scope_0.var_0_13.updateVisual(arg_31_0, arg_31_1, arg_31_2, arg_31_3)
	if not arg_31_0 or not arg_31_0.alive then
		return false
	end

	arg_31_2 = math.max(0, tonumber(arg_31_2) or 0)
	arg_31_3 = math.max(1, tonumber(arg_31_3) or 32)

	local var_31_0 = arg_31_0.ferretCourierState or "emerge"

	if var_31_0 == "emerge" then
		arg_31_0.vx, arg_31_0.vy = 0, 0
		arg_31_0.ferretAnim = "idle"
		arg_31_0.animFrames = 4
		arg_31_0.ferretAnimSpeed = arg_31_0.ferretIdleAnimSpeed or 0.18
		arg_31_0.ferretStateT = (arg_31_0.ferretStateT or 0) + arg_31_2

		local var_31_1 = math.max(0.01, arg_31_0.ferretEmergenceDuration or 0.85)

		arg_31_0.ferretReveal = __recovered_scope_0.var_0_18(arg_31_0.ferretStateT / var_31_1)
		arg_31_0.ferretRiseOffset = 0
		arg_31_0.alpha = 1

		if var_31_1 <= arg_31_0.ferretStateT then
			arg_31_0.ferretCourierState = "outbound"
			arg_31_0.ferretStateT = 0
			arg_31_0.ferretReveal = 1

			__recovered_scope_0.var_0_16(arg_31_0, "walk", 6, arg_31_0.ferretWalkAnimSpeed or 0.16)
		end

		return true
	end

	if var_31_0 == "outbound" then
		local var_31_2 = tonumber(arg_31_0.ferretBaseX) or tonumber(arg_31_0.x) or 0
		local var_31_3 = tonumber(arg_31_0.ferretBaseY) or tonumber(arg_31_0.y) or 0
		local var_31_4 = __recovered_scope_0.var_0_17(arg_31_0, var_31_2, var_31_3, arg_31_0.ferretMoveSpeed or 84, arg_31_2, math.max(2, arg_31_3 * 0.05))

		arg_31_0.alpha = 1

		if var_31_4 then
			arg_31_0.ferretCourierState = "pickup"
			arg_31_0.ferretStateT = 0
			arg_31_0.alpha = 1
			arg_31_0.vx, arg_31_0.vy = 0, 0
		end

		return true
	end

	if var_31_0 == "pickup" then
		arg_31_0.vx, arg_31_0.vy = 0, 0
		arg_31_0.alpha = 1
		arg_31_0.ferretStateT = (arg_31_0.ferretStateT or 0) + arg_31_2

		if arg_31_0.ferretStateT >= (arg_31_0.ferretPickupDuration or 0.42) then
			arg_31_0.ferretCourierState = "return"
			arg_31_0.ferretStateT = 0
			arg_31_0.ferretBaseDepartX = tonumber(arg_31_0.x) or 0
			arg_31_0.ferretBaseDepartY = tonumber(arg_31_0.y) or 0
			arg_31_0.alpha = 1

			__recovered_scope_0.var_0_16(arg_31_0, "walk2", 6, arg_31_0.ferretWalkAnimSpeed or 0.16)
		end

		return true
	end

	if var_31_0 == "return" then
		local var_31_5 = arg_31_0.ferretCourierTarget
		local var_31_6 = arg_31_0.ferretDeliveredTargets

		if arg_31_0._awakeningDelivery == var_31_5 and arg_31_0._awakeningOriginalDeliveries and (arg_31_0.ferretDeliveriesCompleted or 0) >= arg_31_0._awakeningOriginalDeliveries then
			if not __recovered_scope_0.var_0_13.isValidTarget(arg_31_0.owner, var_31_5) then
				__recovered_scope_0.var_0_20(arg_31_0)

				return true
			end
		elseif not __recovered_scope_0.var_0_14(var_31_5) then
			var_31_5 = __recovered_scope_0.var_0_13.findTarget(arg_31_0.owner, arg_31_1, var_31_6) or __recovered_scope_0.var_0_19(arg_31_0, arg_31_1, var_31_6)
		else
			var_31_5 = not __recovered_scope_0.var_0_13.isValidTarget(arg_31_0.owner, var_31_5) and __recovered_scope_0.var_0_13.findTarget(arg_31_0.owner, arg_31_1, var_31_6) or var_31_5
		end

		arg_31_0.ferretCourierTarget = var_31_5

		if not var_31_5 then
			__recovered_scope_0.var_0_20(arg_31_0)

			return true
		end

		local var_31_7 = tonumber(arg_31_0.x) or 0
		local var_31_8 = tonumber(var_31_5.x) or 0
		local var_31_9 = tonumber(var_31_5.y) or 0
		local var_31_10 = var_31_7 <= var_31_8 and 1 or -1
		local var_31_11 = var_31_8 - var_31_10 * arg_31_3 * 0.34
		local var_31_12 = __recovered_scope_0.var_0_17(arg_31_0, var_31_11, var_31_9, arg_31_0.ferretMoveSpeed or 84, arg_31_2, math.max(2, arg_31_3 * 0.05))

		arg_31_0.alpha = 1

		if var_31_12 then
			arg_31_0.ferretCourierState = "give"
			arg_31_0.ferretStateT = 0
			arg_31_0.ferretGiveT = 0
			arg_31_0.ferretDelivered = false
			arg_31_0.ferretFacing = var_31_10
			arg_31_0.alpha = 1
			arg_31_0.vx, arg_31_0.vy = 0, 0

			__recovered_scope_0.var_0_16(arg_31_0, "give", 5, arg_31_0.ferretGiveAnimSpeed or 0.18)
		end

		return true
	end

	if var_31_0 == "give" then
		arg_31_0.vx, arg_31_0.vy = 0, 0
		arg_31_0.alpha = 1
		arg_31_0.ferretGiveT = (arg_31_0.ferretGiveT or 0) + arg_31_2

		local var_31_13 = math.max(0.01, arg_31_0.ferretGiveAnimSpeed or 0.18)

		if not arg_31_0.ferretDelivered and arg_31_0.ferretGiveT >= var_31_13 * 2 then
			if __recovered_scope_0.var_0_13.isValidTarget(arg_31_0.owner, arg_31_0.ferretCourierTarget) then
				require("src.game.awakening").deliver(arg_31_0.owner._awakeningBattle, arg_31_0, arg_31_0.ferretCourierTarget, __recovered_scope_0.var_0_13.apply)
			end

			arg_31_0.ferretDelivered = true
		end

		if arg_31_0.ferretGiveT >= var_31_13 * 5 then
			arg_31_0.frame = 5

			__recovered_scope_0.var_0_21(arg_31_0, arg_31_0.ferretCourierTarget)

			local var_31_14 = math.max(1, math.floor(tonumber(arg_31_0.ferretMaxDeliveries) or 1))
			local var_31_15

			if var_31_14 > (arg_31_0.ferretDeliveriesCompleted or 0) then
				var_31_15 = __recovered_scope_0.var_0_22(arg_31_0, arg_31_1)
			end

			if var_31_15 then
				arg_31_0.ferretCourierTarget = var_31_15
				arg_31_0.ferretCourierState = "return"
				arg_31_0.ferretStateT = 0
				arg_31_0.ferretGiveT = 0
				arg_31_0.ferretDelivered = false

				__recovered_scope_0.var_0_16(arg_31_0, "walk2", 6, arg_31_0.ferretWalkAnimSpeed or 0.16)
			else
				__recovered_scope_0.var_0_20(arg_31_0)
			end
		end

		return true
	end

	if var_31_0 == "poof" then
		arg_31_0.vx, arg_31_0.vy = 0, 0
		arg_31_0.ferretPoofT = (arg_31_0.ferretPoofT or 0) + arg_31_2
		arg_31_0.alpha = arg_31_0.ferretPoofT < 0.04 and 1 or 0

		if arg_31_0._shrinkScalePoof then
			arg_31_0._shrinkScalePoof.t = arg_31_0.ferretPoofT
		end

		if arg_31_0.ferretPoofT >= 0.4 then
			arg_31_0._shrinkScalePoof = nil
			arg_31_0.alive = false
		end

		return arg_31_0.alive ~= false
	end

	arg_31_0.alive = false

	return false
end

 __recovered_scope_0.var_0_23 = __recovered_scope_0.var_0_13
 __recovered_scope_0.var_0_24 = nil
 __recovered_scope_0.var_0_25 = {}

 function __recovered_scope_0.var_0_26(arg_32_0)
	return arg_32_0 and arg_32_0.alive and not arg_32_0.dying and (tonumber(arg_32_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_27(arg_33_0)
	return arg_33_0 and (arg_33_0.isBoss == true or arg_33_0.isFinalBoss == true or arg_33_0.finalBoss == true)
end

 function __recovered_scope_0.var_0_28(arg_34_0, arg_34_1)
	local var_34_0 = (tonumber(arg_34_1 and arg_34_1.x) or 0) - (tonumber(arg_34_0 and arg_34_0.x) or 0)
	local var_34_1 = (tonumber(arg_34_1 and arg_34_1.y) or 0) - (tonumber(arg_34_0 and arg_34_0.y) or 0)

	return var_34_0 * var_34_0 + var_34_1 * var_34_1
end

 function __recovered_scope_0.var_0_29(arg_35_0, arg_35_1)
	if not arg_35_0 or not arg_35_0.anim then
		return
	end

	if arg_35_0.anim.name ~= arg_35_1 then
		arg_35_0.anim.name = arg_35_1
		arg_35_0.anim.frame = 1
		arg_35_0.anim.t = 0
	end
end

 function __recovered_scope_0.var_0_30(arg_36_0)
	if not arg_36_0 then
		return
	end

	arg_36_0.target = nil
	arg_36_0.pendingTarget = nil
	arg_36_0.shotPending = false
	arg_36_0._meleeLoop = false
	arg_36_0._pendingGoblinHit = nil
	arg_36_0._pendingOrcHit = nil
	arg_36_0._pendingHowlHit = nil
	arg_36_0._pendingJesterPrankHit = nil
	arg_36_0._pendingLizardHunterThrow = nil
	arg_36_0._stingerNeedlePending = nil
	arg_36_0._stingerNeedleFired = false
	arg_36_0._eyeWarlockOrbPending = nil
	arg_36_0._eyeWarlockOrbTarget = nil
	arg_36_0._eyeWarlockOrbCdT = 0
	arg_36_0._archRunePending = false
	arg_36_0._archRuneFired = false
	arg_36_0._archRuneTarget = nil
	arg_36_0._archRuneCdT = 0
	arg_36_0._archRageCasting = false
	arg_36_0._bloodMoonSlashCasting = false
	arg_36_0._bloodMoonSlashFired = false
	arg_36_0._bloodMoonSlashTarget = nil
	arg_36_0._bloodtailStingCasting = false
	arg_36_0._bloodtailStingApplied = false
	arg_36_0._bloodtailStingTarget = nil
	arg_36_0._beholderGazePending = false
	arg_36_0._beholderGazeFired = false
	arg_36_0._beholderGazeTarget = nil
	arg_36_0._beholderGazePreDelayT = 0
	arg_36_0._gazerGazeCasting = nil
	arg_36_0._gazerGazeShot = false
	arg_36_0._curseDollCasting = false
	arg_36_0._curseDollFired = false
	arg_36_0._curseDollTarget = nil
	arg_36_0._huntingCommandCasting = false
	arg_36_0._huntingCommandApplied = false
	arg_36_0._lizardShamanSeedCasting = false
	arg_36_0._lizardShamanSeedFired = false
	arg_36_0._lizardShamanSeedTarget = nil
	arg_36_0._dragonkinBoilingCasting = false
	arg_36_0._dragonkinBoilingApplied = false
	arg_36_0._lizardWarlordRoarCasting = false
	arg_36_0._lizardWarlordRoarApplied = false
	arg_36_0._batSummonCasting = false
	arg_36_0._batSummonFired = false
	arg_36_0._summonPending = false
	arg_36_0._summonFired = false
	arg_36_0._howlPending = false
	arg_36_0._howlApplied = false
	arg_36_0._berserkPending = false
	arg_36_0._berserkApplied = false
	arg_36_0._berserkAuraPending = false
	arg_36_0._berserkAuraApplied = false
	arg_36_0._berserkAuraWindupT = nil
end

function __recovered_scope_0.var_0_25.isValidTarget(arg_37_0, arg_37_1)
	return __recovered_scope_0.var_0_26(arg_37_0) and not arg_37_0._tricksterCharm and not arg_37_0._venomMawSwallowed and not __recovered_scope_0.var_0_27(arg_37_0) and require("src.game.combat").enemy_entry.canBeTargeted(arg_37_1, arg_37_0)
end

function __recovered_scope_0.var_0_25.findNearest(arg_38_0, arg_38_1, arg_38_2)
	local var_38_0
	local var_38_1

	for iter_38_0, iter_38_1 in ipairs(arg_38_1 or {}) do
		if iter_38_1 ~= arg_38_0 and __recovered_scope_0.var_0_25.isValidTarget(iter_38_1, arg_38_2) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_38_2, arg_38_0, iter_38_1) then
			local var_38_2 = __recovered_scope_0.var_0_28(arg_38_0, iter_38_1)

			if not var_38_1 or var_38_2 < var_38_1 then
				var_38_0, var_38_1 = iter_38_1, var_38_2
			end
		end
	end

	return var_38_0, var_38_1 and math.sqrt(var_38_1) or math.huge
end

function __recovered_scope_0.var_0_25.findNearestMany(arg_39_0, arg_39_1, arg_39_2, arg_39_3)
	local var_39_0 = {}

	for iter_39_0, iter_39_1 in ipairs(arg_39_1 or {}) do
		if iter_39_1 ~= arg_39_0 and __recovered_scope_0.var_0_25.isValidTarget(iter_39_1, arg_39_3) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_39_3, arg_39_0, iter_39_1) then
			var_39_0[#var_39_0 + 1] = {
				entity = iter_39_1,
				distance = __recovered_scope_0.var_0_28(arg_39_0, iter_39_1),
				index = iter_39_0
			}
		end
	end

	table.sort(var_39_0, function(arg_40_0, arg_40_1)
		if arg_40_0.distance == arg_40_1.distance then
			return arg_40_0.index < arg_40_1.index
		end

		return arg_40_0.distance < arg_40_1.distance
	end)

	local var_39_1 = {}
	local var_39_2 = math.max(0, math.floor(tonumber(arg_39_2) or 1))

	for iter_39_2 = 1, math.min(var_39_2, #var_39_0) do
		var_39_1[iter_39_2] = var_39_0[iter_39_2].entity
	end

	return var_39_1
end

 function __recovered_scope_0.var_0_31(arg_41_0, arg_41_1)
	local var_41_0
	local var_41_1

	for iter_41_0, iter_41_1 in ipairs(arg_41_1 or {}) do
		if iter_41_1 ~= arg_41_0 and __recovered_scope_0.var_0_26(iter_41_1) and not iter_41_1._tricksterCharm and not iter_41_1._venomMawSwallowed and require("src.game.combat").enemy_entry.canBeTargeted(nil, iter_41_1) then
			local var_41_2 = __recovered_scope_0.var_0_28(arg_41_0, iter_41_1)

			if not var_41_1 or var_41_2 < var_41_1 then
				var_41_0, var_41_1 = iter_41_1, var_41_2
			end
		end
	end

	return var_41_0, var_41_1 and math.sqrt(var_41_1) or math.huge
end

function __recovered_scope_0.var_0_25.apply(arg_42_0, arg_42_1, arg_42_2)
	if not __recovered_scope_0.var_0_25.isValidTarget(arg_42_1) then
		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_42_0, arg_42_1) then
		return false
	end

	__recovered_scope_0.var_0_30(arg_42_1)

	arg_42_1._tricksterCharm = {
		t = 0,
		cooldown = 0,
		hit = false,
		owner = arg_42_0,
		chainCast = require("src.game.combat").chain_casting.capture(arg_42_0),
		duration = math.max(0.01, tonumber(arg_42_2) or 3)
	}

	require("src.game.awakening").charm(arg_42_0._awakeningBattle, arg_42_0, arg_42_1, true)

	arg_42_1._tricksterCharmControlled = true
	arg_42_1._bossSkillBusy = false
	arg_42_1._venomMawBusy = false
	arg_42_1._forceRetarget = true
	arg_42_1.hitFlash = {
		t = 0,
		dur = 0.28,
		color = {
			0.95,
			0.24,
			0.64
		}
	}

	__recovered_scope_0.var_0_29(arg_42_1, "idle")

	return true
end

function __recovered_scope_0.var_0_25.release(arg_43_0, arg_43_1)
	if not arg_43_0 or not arg_43_0._tricksterCharm then
		return false
	end

	__recovered_scope_0.var_0_30(arg_43_0)

	local var_43_0 = arg_43_0._tricksterCharm.owner

	arg_43_0._tricksterCharm = nil

	require("src.game.awakening").charm(arg_43_0._awakeningBattle, var_43_0, arg_43_0, false, arg_43_1)

	arg_43_0._tricksterCharmControlled = nil
	arg_43_0._forceRetarget = true

	__recovered_scope_0.var_0_29(arg_43_0, "idle")

	return true
end

function __recovered_scope_0.var_0_25.update(arg_44_0, arg_44_1, arg_44_2, arg_44_3, arg_44_4, arg_44_5, arg_44_6, arg_44_7)
	local var_44_0 = arg_44_0 and arg_44_0._tricksterCharm

	if not var_44_0 then
		return false
	end

	if not __recovered_scope_0.var_0_26(arg_44_0) then
		__recovered_scope_0.var_0_25.release(arg_44_0)

		return false
	end

	local var_44_1 = math.max(0, tonumber(arg_44_2) or 0)
	local var_44_2 = math.max(0, tonumber(arg_44_3) or var_44_1)

	var_44_0.t = (tonumber(var_44_0.t) or 0) + var_44_1

	if var_44_0.t >= (tonumber(var_44_0.duration) or 3) then
		__recovered_scope_0.var_0_25.release(arg_44_0, true)

		return false
	end

	__recovered_scope_0.var_0_30(arg_44_0)

	arg_44_0._tricksterCharmControlled = true
	arg_44_0._bossSkillBusy = false
	arg_44_0._venomMawBusy = false
	var_44_0.cooldown = math.max(0, (tonumber(var_44_0.cooldown) or 0) - var_44_1)

	local var_44_3, var_44_4 = __recovered_scope_0.var_0_31(arg_44_0, arg_44_1)

	var_44_0.target = var_44_3
	arg_44_0.target = var_44_3

	if not var_44_3 then
		var_44_0.attackT = nil
		var_44_0.hit = false

		__recovered_scope_0.var_0_29(arg_44_0, "idle")

		return true
	end

	arg_44_0.facing = (tonumber(var_44_3.x) or 0) >= (tonumber(arg_44_0.x) or 0) and 1 or -1

	if arg_44_6 == false then
		var_44_0.attackT = nil
		var_44_0.hit = false

		__recovered_scope_0.var_0_29(arg_44_0, "idle")

		return true
	end

	local var_44_5 = arg_44_5 and arg_44_5.animations and arg_44_5.animations.attack
	local var_44_6 = math.max(1, tonumber(var_44_5 and var_44_5.frames) or 4)
	local var_44_7 = math.max(0.04, tonumber(var_44_5 and var_44_5.speed) or 0.1)
	local var_44_8 = math.max(0.3, var_44_6 * var_44_7)
	local var_44_9 = math.min(var_44_8 - var_44_7 * 0.5, math.max(var_44_7, var_44_8 * 0.55))

	if var_44_0.attackT then
		var_44_0.attackT = var_44_0.attackT + var_44_1

		__recovered_scope_0.var_0_29(arg_44_0, "attack")

		if not var_44_0.hit and var_44_9 <= var_44_0.attackT then
			var_44_0.hit = true

			require("src.game.awakening").basicStart(arg_44_0._awakeningBattle, arg_44_0, var_44_3)

			if __recovered_scope_0.var_0_26(var_44_3) and not var_44_3._tricksterCharm and type(arg_44_4) == "function" then
				arg_44_4(var_44_3, math.max(0, tonumber(arg_44_0.dmg) or 0), arg_44_0, nil, {
					tricksterCharm = true,
					basicAttack = true
				})
			end
		end

		if var_44_8 <= var_44_0.attackT then
			var_44_0.attackT = nil
			var_44_0.hit = false

			__recovered_scope_0.var_0_29(arg_44_0, "idle")
		end

		return true
	end

	local var_44_10 = math.max(12, tonumber(arg_44_0.distance) or 50)

	if var_44_4 <= var_44_10 and var_44_0.cooldown <= 0 then
		var_44_0.attackT = 0
		var_44_0.hit = false
		var_44_0.cooldown = math.max(0.1, (tonumber(arg_44_0.atkTicks) or 60) / 60)

		__recovered_scope_0.var_0_29(arg_44_0, "attack")

		return true
	end

	if var_44_10 < var_44_4 then
		local var_44_11 = (tonumber(var_44_3.x) or 0) - (tonumber(arg_44_0.x) or 0)
		local var_44_12 = (tonumber(var_44_3.y) or 0) - (tonumber(arg_44_0.y) or 0)
		local var_44_13 = math.sqrt(var_44_11 * var_44_11 + var_44_12 * var_44_12)

		if var_44_13 > 0.001 then
			local var_44_14 = math.min(math.max(0, var_44_4 - var_44_10 * 0.82), math.max(0, tonumber(arg_44_7) or tonumber(arg_44_0.speed) or 30) * var_44_2)

			arg_44_0.x = (tonumber(arg_44_0.x) or 0) + var_44_11 / var_44_13 * var_44_14
			arg_44_0.y = (tonumber(arg_44_0.y) or 0) + var_44_12 / var_44_13 * var_44_14
		end

		__recovered_scope_0.var_0_29(arg_44_0, "walk")
	else
		__recovered_scope_0.var_0_29(arg_44_0, "idle")
	end

	return true
end

 __recovered_scope_0.var_0_32 = __recovered_scope_0.var_0_25
 __recovered_scope_0.var_0_33 = nil
 __recovered_scope_0.var_0_34 = {}
 __recovered_scope_0.var_0_35 = 3
 __recovered_scope_0.var_0_36 = 0.1
 __recovered_scope_0.var_0_37 = 0.75
 __recovered_scope_0.var_0_38 = 0.016666666666666666
 __recovered_scope_0.var_0_39 = 0.4

 function __recovered_scope_0.var_0_40(arg_45_0, arg_45_1, arg_45_2)
	arg_45_0 = tonumber(arg_45_0) or arg_45_1

	if arg_45_0 < arg_45_1 then
		return arg_45_1
	end

	if arg_45_2 < arg_45_0 then
		return arg_45_2
	end

	return arg_45_0
end

 function __recovered_scope_0.var_0_41(arg_46_0)
	if not arg_46_0 then
		return nil
	end

	local var_46_0 = tonumber(arg_46_0.atkPeriod)

	if var_46_0 and var_46_0 > 0 then
		return var_46_0
	end

	local var_46_1 = tonumber(arg_46_0.atkTicks)

	if var_46_1 and var_46_1 > 0 then
		return var_46_1 / 60
	end

	return nil
end

 function __recovered_scope_0.var_0_42(arg_47_0)
	if not arg_47_0 or not arg_47_0.imprints or arg_47_0.isUndyingSoul then
		return nil
	end

	for iter_47_0, iter_47_1 in pairs(arg_47_0.imprints) do
		if iter_47_1 and iter_47_1.id == "shrink" then
			return iter_47_1.stats or {}
		end
	end

	return nil
end

function __recovered_scope_0.var_0_34.tryApply(arg_48_0, arg_48_1, arg_48_2)
	if not arg_48_0 or not arg_48_1 or not arg_48_0.alive or not arg_48_1.alive or arg_48_1.dying or arg_48_0.side ~= "ally" then
		return false
	end

	local var_48_0 = __recovered_scope_0.var_0_42(arg_48_0)

	if not var_48_0 then
		return false
	end

	if __recovered_scope_0.var_0_40(var_48_0.chance or 0.1, 0, 1) <= (arg_48_2 or love and love.math and love.math.random or math.random)() then
		return false
	end

	local var_48_1 = __recovered_scope_0.var_0_41(arg_48_0) or 1
	local var_48_2 = __recovered_scope_0.var_0_41(arg_48_1) or 1
	local var_48_3 = var_48_1 + __recovered_scope_0.var_0_38
	local var_48_4 = 1
	local var_48_5 = __recovered_scope_0.var_0_34.getVisualScale(arg_48_1) < 0.999

	if var_48_2 < var_48_3 then
		var_48_4 = __recovered_scope_0.var_0_40(var_48_2 / var_48_3, 0.05, 1)
	end

	arg_48_1.shrinkDebuff = {
		dur = math.max(0, tonumber(var_48_0.duration) or __recovered_scope_0.var_0_35),
		atkReduction = __recovered_scope_0.var_0_40(var_48_0.atkReduction or __recovered_scope_0.var_0_36, 0, 1),
		attackSpeedMultiplier = var_48_4,
		visualScale = __recovered_scope_0.var_0_40(var_48_0.visualScale or __recovered_scope_0.var_0_37, 0.1, 1),
		source = arg_48_0,
		sourceAttackPeriod = var_48_1
	}

	if not var_48_5 then
		arg_48_1._shrinkScalePoof = {
			t = 0,
			kind = "shrink",
			dur = __recovered_scope_0.var_0_39
		}
	end

	require("src.game.combat").antidote_fruit.onDebuff(arg_48_1)

	return true
end

function __recovered_scope_0.var_0_34.update(arg_49_0, arg_49_1)
	local var_49_0 = math.max(0, tonumber(arg_49_1) or 0)
	local var_49_1 = arg_49_0 and arg_49_0._shrinkScalePoof

	if var_49_1 then
		var_49_1.t = (tonumber(var_49_1.t) or 0) + var_49_0

		if var_49_1.t >= (tonumber(var_49_1.dur) or __recovered_scope_0.var_0_39) then
			arg_49_0._shrinkScalePoof = nil
		end
	end

	if not arg_49_0 or not arg_49_0.shrinkDebuff and not arg_49_0._shrinkRay then
		return false
	end

	local var_49_2 = __recovered_scope_0.var_0_34.getVisualScale(arg_49_0) < 0.999
	local var_49_3 = arg_49_0._shrinkRay

	if var_49_3 then
		var_49_3.dur = (tonumber(var_49_3.dur) or 0) - var_49_0

		if var_49_3.dur <= 0 then
			arg_49_0._shrinkRay = nil
		end
	end

	local var_49_4 = arg_49_0.shrinkDebuff

	if var_49_4 then
		var_49_4.dur = (tonumber(var_49_4.dur) or 0) - var_49_0

		if var_49_4.dur <= 0 then
			arg_49_0.shrinkDebuff = nil
		end
	end

	local var_49_5 = arg_49_0.shrinkDebuff ~= nil or arg_49_0._shrinkRay ~= nil

	if var_49_2 and not var_49_5 then
		arg_49_0._shrinkScalePoof = {
			t = 0,
			kind = "grow",
			dur = __recovered_scope_0.var_0_39
		}
	end

	return arg_49_0.shrinkDebuff ~= nil
end

function __recovered_scope_0.var_0_34.direct(arg_50_0, arg_50_1)
	if arg_50_0 and (arg_50_0.isFirebreatherBurn or arg_50_0.isPoison or arg_50_0.isDamageOverTime) then
		return false
	end

	arg_50_1 = arg_50_1 or {}

	return not arg_50_1.dot and not arg_50_1.burn and not arg_50_1.poison and not arg_50_1.bleed and not arg_50_1.damageOverTime and not arg_50_1.reflected and not arg_50_1.indirect and arg_50_1.directDamage ~= false
end

function __recovered_scope_0.var_0_34.getAttackMultiplier(arg_51_0, arg_51_1, arg_51_2)
	local var_51_0 = 0
	local var_51_1 = arg_51_0 and arg_51_0.shrinkDebuff

	if var_51_1 and (tonumber(var_51_1.dur) or 0) > 0 then
		var_51_0 = __recovered_scope_0.var_0_40(var_51_1.atkReduction or __recovered_scope_0.var_0_36, 0, 1)
	end

	local var_51_2 = arg_51_0 and arg_51_0._shrinkRay

	if var_51_2 and (tonumber(var_51_2.dur) or 0) > 0 and __recovered_scope_0.var_0_34.direct(arg_51_0, arg_51_2) then
		var_51_0 = math.max(var_51_0, __recovered_scope_0.var_0_40(var_51_2.cut or 0, 0, 1))
	end

	return 1 - var_51_0
end

function __recovered_scope_0.var_0_34.getAttackSpeedMultiplier(arg_52_0)
	local var_52_0 = arg_52_0 and arg_52_0.shrinkDebuff

	if not var_52_0 or (tonumber(var_52_0.dur) or 0) <= 0 then
		return 1
	end

	local var_52_1 = __recovered_scope_0.var_0_41(arg_52_0) or 1
	local var_52_2 = (__recovered_scope_0.var_0_41(var_52_0.source) or tonumber(var_52_0.sourceAttackPeriod) or 1) + __recovered_scope_0.var_0_38

	if var_52_2 <= var_52_1 then
		return 1
	end

	return __recovered_scope_0.var_0_40(var_52_1 / var_52_2, 0.05, 1)
end

function __recovered_scope_0.var_0_34.getVisualScale(arg_53_0)
	local var_53_0 = 1
	local var_53_1 = arg_53_0 and arg_53_0.shrinkDebuff

	if var_53_1 and (tonumber(var_53_1.dur) or 0) > 0 then
		var_53_0 = __recovered_scope_0.var_0_40(var_53_1.visualScale or __recovered_scope_0.var_0_37, 0.1, 1)
	end

	local var_53_2 = arg_53_0 and arg_53_0._shrinkRay

	if var_53_2 and (tonumber(var_53_2.dur) or 0) > 0 then
		var_53_0 = math.min(var_53_0, __recovered_scope_0.var_0_40(var_53_2.scale or 1, 0.1, 1))
	end

	return var_53_0
end

function __recovered_scope_0.var_0_34.getPixelPerfectVisualScale(arg_54_0, arg_54_1, arg_54_2)
	local var_54_0 = __recovered_scope_0.var_0_34.getVisualScale(arg_54_0)

	return __recovered_scope_0.var_0_34.snapVisualScale(var_54_0, math.max(1, tonumber(arg_54_1) or 32) / 32, arg_54_2)
end

function __recovered_scope_0.var_0_34.snapVisualScale(arg_55_0, arg_55_1, arg_55_2)
	if arg_55_0 >= 0.999 then
		return arg_55_0
	end

	local var_55_0 = arg_55_1 * math.max(0.01, tonumber(arg_55_2) or 1)

	if var_55_0 < 3.9999 then
		return arg_55_0
	end

	local var_55_1 = math.max(1, math.floor(var_55_0 * arg_55_0 + 0.5))

	return __recovered_scope_0.var_0_40(var_55_1 / var_55_0, 0.1, 1)
end

function __recovered_scope_0.var_0_34.growTexelPixels(arg_56_0, arg_56_1, arg_56_2, arg_56_3)
	local var_56_0 = math.max(0.01, tonumber(arg_56_1) or 1)
	local var_56_1 = math.max(1, math.floor(arg_56_0 * var_56_0 + 0.5))
	local var_56_2 = var_56_1

	for iter_56_0 = 1, math.max(0, math.floor(tonumber(arg_56_3) or 0)) do
		var_56_2 = math.max(math.floor(var_56_2 + 0.0001) + 1, math.floor(var_56_1 * (1 + arg_56_2 * iter_56_0) + 0.5))
	end

	return var_56_2, var_56_2 / var_56_1
end

 __recovered_scope_0.var_0_43 = __recovered_scope_0.var_0_34
 __recovered_scope_0.var_0_44 = nil
 __recovered_scope_0.var_0_45 = {
	DEFAULT_RANGE = 35
}

function __recovered_scope_0.var_0_45.getRange(arg_57_0)
	return math.max(1, tonumber(arg_57_0 and arg_57_0.range) or __recovered_scope_0.var_0_45.DEFAULT_RANGE)
end

function __recovered_scope_0.var_0_45.measure(arg_58_0, arg_58_1, arg_58_2)
	if not arg_58_0 or not arg_58_1 then
		return false, math.huge
	end

	local var_58_0 = (arg_58_0._attackFacing or arg_58_0.facing or 1) >= 0 and 1 or -1
	local var_58_1 = ((tonumber(arg_58_1.x) or 0) - (tonumber(arg_58_0.x) or 0)) * var_58_0
	local var_58_2 = (tonumber(arg_58_1.y) or 0) - (tonumber(arg_58_0.y) or 0)
	local var_58_3 = var_58_1 * var_58_1 + var_58_2 * var_58_2
	local var_58_4 = require("src.game.awakening").skillMetric(arg_58_0, arg_58_1, var_58_3)
	local var_58_5 = __recovered_scope_0.var_0_45.getRange(arg_58_2)

	return var_58_1 >= -8 and var_58_4 <= var_58_5 * var_58_5, var_58_4
end

 __recovered_scope_0.var_0_46 = __recovered_scope_0.var_0_45
 __recovered_scope_0.var_0_47 = nil
 __recovered_scope_0.var_0_48 = {
	matches = function(arg_59_0)
		return arg_59_0 and arg_59_0.skill and arg_59_0.skill._skillDataId == "holy_barrier"
	end
}

 function __recovered_scope_0.var_0_49(arg_60_0)
	return arg_60_0 and arg_60_0.alive and not arg_60_0.dying and (arg_60_0.hp or 0) > 0 and not arg_60_0.isUndyingSoul and not arg_60_0._venomMawSwallowed and not arg_60_0._succubusCharm and not arg_60_0._wastelandPiperCharm
end

function __recovered_scope_0.var_0_48.begin(arg_61_0, arg_61_1)
	if not __recovered_scope_0.var_0_48.matches(arg_61_0) then
		return
	end

	arg_61_0.skill.holyBlocked = 0
	arg_61_0.skill.holyGuardReady = false
	arg_61_0.skill.activeT = 0
	arg_61_0._holyGuardLastHP = nil
	arg_61_0.invuln, arg_61_0._casting, arg_61_0._suppressAttack = false, true, true
	arg_61_0.hitFlash, arg_61_0._fortifyPulseStart = nil

	require("src.ui.effects").holy_barrier.begin(arg_61_0, arg_61_1)
end

function __recovered_scope_0.var_0_48.onGuardFrame(arg_62_0)
	if not __recovered_scope_0.var_0_48.matches(arg_62_0) or arg_62_0.skill.state ~= "active" or not arg_62_0.alive or arg_62_0.dying or not arg_62_0.anim or arg_62_0.anim.name ~= "shield" or not ((arg_62_0.anim.frame or 1) >= 3) then
		return
	end

	arg_62_0.anim.frame, arg_62_0.anim.t = 3, 0

	if arg_62_0.skill.holyGuardReady then
		return
	end

	arg_62_0.skill.holyGuardReady = true
	arg_62_0.skill.activeT = 0
	arg_62_0._holyGuardLastHP = arg_62_0.hp
	arg_62_0.invuln = true
	arg_62_0.hitFlash, arg_62_0._fortifyPulseStart = nil
end

function __recovered_scope_0.var_0_48.advanceGuard(arg_63_0, arg_63_1)
	if not __recovered_scope_0.var_0_48.matches(arg_63_0) then
		return
	end

	if arg_63_0.skill.holyGuardReady then
		arg_63_0.skill.activeT = (arg_63_0.skill.activeT or 0) + math.max(0, arg_63_1 or 0)
	end

	arg_63_0.invuln = arg_63_0.skill.holyGuardReady == true
end

function __recovered_scope_0.var_0_48.block(arg_64_0, arg_64_1)
	if not __recovered_scope_0.var_0_48.matches(arg_64_0) or arg_64_0.skill.state ~= "active" or not arg_64_0.skill.holyGuardReady or not arg_64_0.alive or not not arg_64_0.dying then
		return false
	end

	arg_64_0.hitFlash, arg_64_0._fortifyPulseStart = nil
	arg_64_0.skill.holyBlocked = (arg_64_0.skill.holyBlocked or 0) + math.max(0, tonumber(arg_64_1) or 0)

	if (tonumber(arg_64_1) or 0) > 0 then
		require("src.ui.effects").holy_barrier.hit(arg_64_0, true)
	end

	return true
end

function __recovered_scope_0.var_0_48.absorb(arg_65_0, arg_65_1, arg_65_2, arg_65_3, arg_65_4)
	local var_65_0 = math.max(0, tonumber(arg_65_1) or 0)
	local var_65_1 = arg_65_0 and arg_65_0._holyBarrierShield

	if not var_65_1 or var_65_1.t <= 0 then
		return var_65_0
	end

	local var_65_2 = math.min(var_65_0, var_65_1.hp)

	var_65_1.hp = var_65_1.hp - var_65_2
	var_65_1.lastHP = (arg_65_0.hp or 0) - (var_65_0 - var_65_2)

	if var_65_2 > 0 then
		arg_65_0._factionShieldHitT = 0.35

		require("src.ui.effects").holy_barrier.hit(arg_65_0, false)
	end

	if var_65_1.hp <= 0 then
		arg_65_0._holyBarrierShield = nil

		require("src.game.combat").shield_break.depleted(arg_65_2, arg_65_0, var_65_1, var_65_1.origin or "HolyBarrier", var_65_2, arg_65_3, arg_65_4)
	end

	return var_65_0 - var_65_2
end

function __recovered_scope_0.var_0_48.poll(arg_66_0)
	if not arg_66_0 or arg_66_0.dying then
		return 0
	end

	local var_66_0 = 0

	if __recovered_scope_0.var_0_48.matches(arg_66_0) and arg_66_0.skill.state == "active" and arg_66_0.skill.holyGuardReady then
		var_66_0 = math.max(0, (arg_66_0._holyGuardLastHP or arg_66_0.hp or 0) - (arg_66_0.hp or 0))

		if var_66_0 > 0 then
			__recovered_scope_0.var_0_48.block(arg_66_0, var_66_0)

			arg_66_0.hp = arg_66_0.hp + var_66_0
		end

		arg_66_0._holyGuardLastHP = arg_66_0.hp
	else
		arg_66_0._holyGuardLastHP = nil
	end

	local var_66_1 = arg_66_0._holyBarrierShield

	if var_66_1 and var_66_1.t > 0 then
		local var_66_2 = math.max(0, (var_66_1.lastHP or arg_66_0.hp or 0) - (arg_66_0.hp or 0))
		local var_66_3 = math.min(var_66_2, var_66_1.hp)

		var_66_1.hp = var_66_1.hp - var_66_3
		arg_66_0.hp = (arg_66_0.hp or 0) + var_66_3
		var_66_1.lastHP = arg_66_0.hp
		var_66_0 = var_66_0 + var_66_3

		if var_66_3 > 0 then
			require("src.ui.effects").holy_barrier.hit(arg_66_0, false)
		end

		if var_66_1.hp <= 0 then
			arg_66_0._holyBarrierShield = nil
		end
	end

	return var_66_0
end

function __recovered_scope_0.var_0_48.finish(arg_67_0, arg_67_1)
	if not __recovered_scope_0.var_0_48.matches(arg_67_1) then
		return
	end

	__recovered_scope_0.var_0_48.poll(arg_67_1)

	local var_67_0 = arg_67_1.primarySkillDef and arg_67_1.primarySkillDef.effects or {}
	local var_67_1 = math.min((arg_67_1.skill.holyBlocked or 0) * (var_67_0.shieldDamageRatio or 1), (arg_67_1.maxhp or 0) * (var_67_0.shieldMaxHpRatio or 0.4))

	arg_67_1.skill.holyBlocked, arg_67_1._holyGuardLastHP = nil
	arg_67_1.skill.holyGuardReady = nil

	if not __recovered_scope_0.var_0_49(arg_67_1) or var_67_1 <= 0 then
		return
	end

	local var_67_2

	for iter_67_0, iter_67_1 in ipairs(arg_67_0.allies or {}) do
		if iter_67_1 ~= arg_67_1 and not iter_67_1.isDecoyDummy and __recovered_scope_0.var_0_49(iter_67_1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_67_0, arg_67_1, iter_67_1) and (not var_67_2 or iter_67_1.hp < var_67_2.hp) then
			var_67_2 = iter_67_1
		end
	end

	if not var_67_2 then
		return
	end

	local var_67_3 = var_67_2._holyBarrierShield
	local var_67_4 = math.max(var_67_1, var_67_3 and var_67_3.hp or 0)

	var_67_2._holyBarrierShield = {
		fresh = true,
		hp = var_67_4,
		max = var_67_4,
		t = var_67_0.shieldDuration or 3,
		lastHP = var_67_2.hp
	}

	require("src.game.combat").shield_break.register(arg_67_0, var_67_2._holyBarrierShield, "HolyBarrier")

	var_67_2.hpbarShowT = math.max(var_67_2.hpbarShowT or 0, 3)
	var_67_2._factionShieldHitT = 0.35

	require("src.ui.effects").holy_barrier.receive(var_67_2)

	return var_67_2, var_67_4
end

function __recovered_scope_0.var_0_48.update(arg_68_0, arg_68_1)
	require("src.ui.effects").holy_barrier.update(arg_68_0, arg_68_1)

	local var_68_0 = arg_68_0 and arg_68_0._holyBarrierShield

	if not var_68_0 then
		return
	end

	if not arg_68_0.alive or arg_68_0.dying then
		arg_68_0._holyBarrierShield = nil

		return
	end

	if var_68_0.fresh then
		var_68_0.fresh = nil

		return
	end

	var_68_0.t = var_68_0.t - math.max(0, tonumber(arg_68_1) or 0)

	if var_68_0.t <= 0 or var_68_0.hp <= 0 then
		arg_68_0._holyBarrierShield = nil
	end
end

 __recovered_scope_0.var_0_50 = __recovered_scope_0.var_0_48
 __recovered_scope_0.var_0_51 = nil
 __recovered_scope_0.var_0_52 = {}

 function __recovered_scope_0.var_0_53(arg_69_0, arg_69_1, arg_69_2)
	local var_69_0

	if arg_69_2 then
		var_69_0 = arg_69_0.getUnitAssetForEnemy and arg_69_0:getUnitAssetForEnemy(arg_69_1) or arg_69_0.assets and arg_69_0.assets.units and arg_69_0.assets.units[arg_69_1.skin or arg_69_1.kind]
	else
		var_69_0 = arg_69_0.getUnitAssetForAlly and arg_69_0:getUnitAssetForAlly(arg_69_1)
	end

	local var_69_1 = var_69_0 and var_69_0.imageData and var_69_0.quads and var_69_0.quads.idle and var_69_0.quads.idle[1]

	if var_69_1 and var_69_0._shadowHarvestFoot == nil then
		local var_69_2, var_69_3, var_69_4, var_69_5 = var_69_1:getViewport()

		var_69_0._shadowHarvestFoot = false

		for iter_69_0 = var_69_5 - 1, 0, -1 do
			local var_69_6
			local var_69_7

			for iter_69_1 = 0, var_69_4 - 1 do
				local var_69_8, var_69_9, var_69_10, var_69_11 = var_69_0.imageData:getPixel(var_69_2 + iter_69_1, var_69_3 + iter_69_0)

				if var_69_11 > 0 then
					var_69_6 = var_69_6 or iter_69_1
					var_69_7 = iter_69_1
				end
			end

			if var_69_6 then
				var_69_0._shadowHarvestFoot = {
					x = (var_69_6 + var_69_7 + 1) * 0.5,
					y = iter_69_0 + 1
				}

				break
			end
		end
	end

	local var_69_12 = var_69_1 and var_69_0._shadowHarvestFoot

	if not var_69_12 then
		return arg_69_1.x or 0, (arg_69_1.y or 0) + 16
	end

	return require("src.game.projectiles").spellblade_vortex.spritePoint(arg_69_0, arg_69_1, var_69_0, var_69_12.x, var_69_12.y, arg_69_2)
end

 function __recovered_scope_0.var_0_54(arg_70_0)
	return arg_70_0 and arg_70_0.alive and not arg_70_0.dying and (arg_70_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_52.matches(arg_71_0)
	return arg_71_0 ~= nil and arg_71_0.skill ~= nil and arg_71_0.skill.kind == "ShadowHarvest"
end

__recovered_scope_0.var_0_52.footPoint = __recovered_scope_0.var_0_53

function __recovered_scope_0.var_0_52.track(arg_72_0, arg_72_1)
	local var_72_0 = arg_72_1.owner

	if not __recovered_scope_0.var_0_54(var_72_0) then
		arg_72_1.finished = true

		return
	end

	arg_72_1.to.x, arg_72_1.to.footY = __recovered_scope_0.var_0_53(arg_72_0, var_72_0, false)
end

function __recovered_scope_0.var_0_52.amount(arg_73_0)
	local var_73_0 = arg_73_0 and arg_73_0.primarySkillDef
	local var_73_1 = tonumber(var_73_0 and var_73_0.effects and var_73_0.effects.shieldMaxHpRatio) or 0.15

	return math.floor((tonumber(arg_73_0 and arg_73_0.maxhp) or 0) * var_73_1 + 0.5)
end

function __recovered_scope_0.var_0_52.beginBattle(arg_74_0)
	for iter_74_0, iter_74_1 in ipairs(arg_74_0 and arg_74_0.allies or {}) do
		if __recovered_scope_0.var_0_52.matches(iter_74_1) then
			iter_74_1.skill.harvestCooldown = 0
		end
	end
end

function __recovered_scope_0.var_0_52.update(arg_75_0, arg_75_1)
	local var_75_0 = __recovered_scope_0.var_0_52.matches(arg_75_0) and arg_75_0.skill

	if var_75_0 and (var_75_0.harvestCooldown or 0) > 0 then
		var_75_0.harvestCooldown = math.max(0, var_75_0.harvestCooldown - math.max(0, tonumber(arg_75_1) or 0))
	end
end

function __recovered_scope_0.var_0_52.onKill(arg_76_0, arg_76_1, arg_76_2)
	if not arg_76_0 or arg_76_0.mode ~= "battle" or not __recovered_scope_0.var_0_52.matches(arg_76_1) or not __recovered_scope_0.var_0_54(arg_76_1) then
		return
	end

	local var_76_0 = arg_76_1.skill

	if (arg_76_1.rank or 1) < (tonumber(var_76_0.minRank) or 2) or (var_76_0.harvestCooldown or 0) > 0 then
		return
	end

	local var_76_1 = __recovered_scope_0.var_0_52.amount(arg_76_1)

	if var_76_1 <= 0 then
		return
	end

	local var_76_2 = arg_76_1.primarySkillDef and arg_76_1.primarySkillDef.runtime or {}

	var_76_0.harvestCooldown = tonumber(var_76_2.internalCooldown) or 3

	local var_76_3 = tonumber(var_76_0.dur) or 2
	local var_76_4 = arg_76_1._holyBarrierShield
	local var_76_5 = not var_76_4 or var_76_4.origin == "ShadowHarvest" or var_76_1 >= (var_76_4.hp or 0)

	if var_76_4 then
		var_76_4.hp = math.max(var_76_4.hp or 0, var_76_1)
		var_76_4.max = math.max(var_76_4.max or 0, var_76_4.hp)
		var_76_4.t = math.max(var_76_4.t or 0, var_76_3)
		var_76_4.lastHP = arg_76_1.hp

		if var_76_5 then
			var_76_4.origin = "ShadowHarvest"
		end
	else
		var_76_4 = {
			fresh = true,
			hp = var_76_1,
			max = var_76_1,
			t = var_76_3,
			lastHP = arg_76_1.hp
		}
		arg_76_1._holyBarrierShield = var_76_4

		require("src.game.combat").shield_break.register(arg_76_0, var_76_4, "ShadowHarvest")
	end

	arg_76_1.hpbarShowT = math.max(arg_76_1.hpbarShowT or 0, var_76_3)
	arg_76_1._factionShieldHitT = 0.35

	local var_76_6 = require("src.ui.effects").shadow_harvest

	if var_76_5 then
		require("src.ui.effects").holy_barrier.receive(arg_76_1)

		arg_76_1._holyWardFx.ramp, arg_76_1._holyWardFx.t, arg_76_1._holyWardFx.hit = "shadow", -var_76_6.arrive, 0
	end

	local var_76_7, var_76_8 = __recovered_scope_0.var_0_53(arg_76_0, arg_76_2 or arg_76_1, arg_76_2 ~= nil)
	local var_76_9, var_76_10 = __recovered_scope_0.var_0_53(arg_76_0, arg_76_1, false)
	local var_76_11 = require("src.game.projectiles").spellblade_vortex.drawSize(arg_76_0)

	arg_76_0.vfxList = arg_76_0.vfxList or {}
	arg_76_0.vfxList[#arg_76_0.vfxList + 1] = {
		kind = "shadow_harvest",
		t = 0,
		dur = var_76_6.duration,
		owner = arg_76_1,
		pixel = math.max(1, math.floor(var_76_11 / 32 + 0.5)),
		from = {
			x = var_76_7,
			footY = var_76_8
		},
		to = {
			x = var_76_9,
			footY = var_76_10
		}
	}

	return var_76_4
end

 __recovered_scope_0.var_0_55 = __recovered_scope_0.var_0_52
 __recovered_scope_0.var_0_56 = nil
 __recovered_scope_0.var_0_57 = {}

 function __recovered_scope_0.var_0_58(arg_77_0)
	return arg_77_0 and arg_77_0.alive and not arg_77_0.dying and not arg_77_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_59(arg_78_0, arg_78_1, arg_78_2)
	local var_78_0 = {}
	local var_78_1 = arg_78_1.skill.radius or 110

	for iter_78_0, iter_78_1 in ipairs(arg_78_0.enemies or {}) do
		if __recovered_scope_0.var_0_58(iter_78_1) and arg_78_2(iter_78_1, arg_78_1, arg_78_0) then
			local var_78_2 = (iter_78_1.x or 0) - (arg_78_1.x or 0)
			local var_78_3 = (iter_78_1.y or 0) - (arg_78_1.y or 0)
			local var_78_4 = var_78_2 * var_78_2 + var_78_3 * var_78_3

			if var_78_4 <= var_78_1 * var_78_1 then
				var_78_0[#var_78_0 + 1] = {
					unit = iter_78_1,
					d2 = var_78_4,
					index = iter_78_0
				}
			end
		end
	end

	table.sort(var_78_0, function(arg_79_0, arg_79_1)
		if arg_79_0.d2 == arg_79_1.d2 then
			return arg_79_0.index < arg_79_1.index
		end

		return arg_79_0.d2 < arg_79_1.d2
	end)

	return var_78_0
end

function __recovered_scope_0.var_0_57.updateCast(arg_80_0, arg_80_1, arg_80_2, arg_80_3)
	local var_80_0 = arg_80_1.skill

	if var_80_0.state == "active" then
		if not arg_80_1.anim or arg_80_1.anim.name ~= "attack2" or not var_80_0.flameCast then
			var_80_0.state, var_80_0.active, var_80_0.flameCast, var_80_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_80_0)
			arg_80_1._casting, arg_80_1._suppressAttack = false, false
			arg_80_1._forceAnim, arg_80_1._forceAnimT = nil, 0

			return
		end

		arg_80_1._casting, arg_80_1._suppressAttack = true, true
		arg_80_1._forceAnim, arg_80_1._forceAnimT = "attack2", math.max(0.2, arg_80_2 + 0.1)

		return
	end

	var_80_0.cdT = (var_80_0.cdT or 0) + arg_80_2

	if var_80_0.cdT < (var_80_0.cd or 5) then
		return
	end

	var_80_0.ready = true

	local var_80_1 = __recovered_scope_0.var_0_59(arg_80_0, arg_80_1, arg_80_3)

	if #var_80_1 == 0 or not arg_80_1.anim then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_80_1)

	var_80_0.state, var_80_0.active, var_80_0.ready, var_80_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_80_0)
	var_80_0.flameCast = {
		frame = 1,
		fired = false
	}
	arg_80_1._pendingWarriorHit = nil
	arg_80_1._casting, arg_80_1._suppressAttack = true, true
	arg_80_1._forceAnim, arg_80_1._forceAnimT = "attack2", math.max(0.2, arg_80_2 + 0.1)
	arg_80_1.anim.name, arg_80_1.anim.frame, arg_80_1.anim.t, arg_80_1.anim.reverse = "attack2", 1, 0
	arg_80_1.facing = (var_80_1[1].unit.x or 0) >= (arg_80_1.x or 0) and 1 or -1
end

function __recovered_scope_0.var_0_57.applyBurn(arg_81_0, arg_81_1, arg_81_2, arg_81_3)
	if require("src.game.combat").status_effects.blindMiss(arg_81_1) then
		return
	end

	local var_81_0 = arg_81_1.primarySkillDef and arg_81_1.primarySkillDef.effects or {}
	local var_81_1 = var_81_0.burnDuration or 3
	local var_81_2 = arg_81_0._flameEruptionBurn

	if var_81_2 and var_81_2.t > 0 then
		var_81_2.t = var_81_1

		require("src.game.awakening").burnStart(arg_81_1._awakeningBattle, arg_81_1, arg_81_0, var_81_2)

		return var_81_2
	end

	if arg_81_3 == nil then
		arg_81_3 = require("src.game.combat").chain_casting.capture(arg_81_1)
	end

	local var_81_3 = {
		fresh = true,
		visualT = 0,
		tickT = 0,
		t = var_81_1,
		source = arg_81_1,
		chainCast = arg_81_3,
		damage = math.max(0, arg_81_2 * (var_81_0.burnTickMul or 0.15))
	}

	arg_81_0._flameEruptionBurn = var_81_3

	require("src.game.awakening").burnStart(arg_81_1._awakeningBattle, arg_81_1, arg_81_0, var_81_3)

	return var_81_3
end

function __recovered_scope_0.var_0_57.onAnimation(arg_82_0, arg_82_1, arg_82_2, arg_82_3, arg_82_4, arg_82_5)
	local var_82_0 = arg_82_1.skill
	local var_82_1 = var_82_0 and var_82_0.flameCast

	if not __recovered_scope_0.var_0_58(arg_82_1) or not var_82_1 or var_82_0.state ~= "active" or not arg_82_1.anim or arg_82_1.anim.name ~= "attack2" then
		return
	end

	var_82_1.frame = arg_82_1.anim.frame or 1

	if var_82_1.frame >= 5 and not var_82_1.fired then
		var_82_1.fired = true

		local var_82_2 = __recovered_scope_0.var_0_59(arg_82_0, arg_82_1, arg_82_4)

		arg_82_0.vfx = arg_82_0.vfx or {}

		for iter_82_0 = 1, math.min(require("src.game.combat").branching_bloom.limit(arg_82_0, arg_82_1, var_82_0.maxTargets or 3), #var_82_2) do
			local var_82_3 = var_82_2[iter_82_0].unit
			local var_82_4, var_82_5 = arg_82_0:entityGroundPoint(var_82_3, arg_82_5)

			arg_82_0.vfx[#arg_82_0.vfx + 1] = {
				opaqueBottomAnchor = true,
				kind = "flame_eruption",
				scale = 2,
				sprite = "FireCone",
				owner = arg_82_1,
				chainCast = require("src.game.combat").chain_casting.capture(arg_82_1),
				flameCast = var_82_1,
				x = var_82_4,
				y = var_82_5,
				anim = {
					speed = 0.08,
					frames = 10,
					t = 0,
					name = "play",
					frame = 1,
					loop = false
				}
			}

			if not require("src.game.combat").branching_bloom.extra(arg_82_0, arg_82_1, iter_82_0, var_82_0.maxTargets or 3, var_82_3, arg_82_3 * (var_82_0.dmgMul or 1.1), arg_82_2) then
				arg_82_2(var_82_3, arg_82_3 * (var_82_0.dmgMul or 1.1), arg_82_1, nil, {
					battleSkillDamage = true
				})

				if __recovered_scope_0.var_0_58(var_82_3) then
					__recovered_scope_0.var_0_57.applyBurn(var_82_3, arg_82_1, arg_82_3)
				end
			end
		end
	end

	if var_82_1.frame > 15 then
		var_82_0.state, var_82_0.active, var_82_0.flameCast, var_82_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_82_0)
		arg_82_1._casting, arg_82_1._suppressAttack = false, false
		arg_82_1._forceAnim, arg_82_1._forceAnimT = nil, 0
	end
end

function __recovered_scope_0.var_0_57.updateEffect(arg_83_0)
	local var_83_0 = arg_83_0.owner
	local var_83_1 = arg_83_0.flameCast

	if not __recovered_scope_0.var_0_58(var_83_0) or not var_83_1 or not var_83_0.skill or var_83_0.skill.flameCast ~= var_83_1 or not var_83_0.anim or var_83_0.anim.name ~= "attack2" then
		arg_83_0.finished = true

		return
	end

	local var_83_2 = var_83_1.frame - 4

	if var_83_2 < 1 or var_83_2 > 10 then
		arg_83_0.finished = true

		return
	end

	arg_83_0.anim.frame, arg_83_0.anim.t = var_83_2, 0
end

function __recovered_scope_0.var_0_57.updateBurn(arg_84_0, arg_84_1, arg_84_2)
	local var_84_0 = arg_84_0._flameEruptionBurn

	if not var_84_0 then
		return
	end

	if not __recovered_scope_0.var_0_58(arg_84_0) then
		arg_84_0._flameEruptionBurn = nil

		return
	end

	if var_84_0.fresh then
		var_84_0.fresh = nil

		return
	end

	local var_84_1 = math.max(0, math.min(arg_84_1, var_84_0.t))

	var_84_0.t = math.max(0, var_84_0.t - math.max(0, arg_84_1))
	var_84_0.tickT, var_84_0.visualT = var_84_0.tickT + var_84_1, var_84_0.visualT + var_84_1

	while var_84_0.tickT >= 0.999999999 do
		var_84_0.tickT = math.max(0, var_84_0.tickT - 1)

		if var_84_0._awakeningSkipFirst then
			var_84_0._awakeningSkipFirst = nil
		else
			arg_84_2(arg_84_0, var_84_0.damage, var_84_0.source, nil, {
				dot = true,
				noCounterReflect = true,
				battleSkillDamage = true,
				burn = true,
				chainCast = var_84_0.chainCast or false,
				awakeningDamage = var_84_0.awakeningDerived,
				indirect = var_84_0.awakeningDerived,
				noProcs = var_84_0.awakeningDerived
			})
		end

		if not __recovered_scope_0.var_0_58(arg_84_0) then
			break
		end
	end

	if var_84_0.t <= 1e-09 or not __recovered_scope_0.var_0_58(arg_84_0) then
		arg_84_0._flameEruptionBurn = nil
	end
end

 __recovered_scope_0.var_0_60 = __recovered_scope_0.var_0_57
 __recovered_scope_0.var_0_61 = nil
 __recovered_scope_0.var_0_62 = {}

 function __recovered_scope_0.var_0_63(arg_85_0)
	return arg_85_0 and not arg_85_0.isDecoyDummy and arg_85_0.alive and not arg_85_0.dying and not arg_85_0.isUndyingSoul and not arg_85_0._venomMawSwallowed and not arg_85_0._succubusCharm and not arg_85_0._wastelandPiperCharm
end

function __recovered_scope_0.var_0_62.shieldStats(arg_86_0)
	local var_86_0 = 0
	local var_86_1 = 0

	if not __recovered_scope_0.var_0_63(arg_86_0) then
		return var_86_0, var_86_1
	end

	for iter_86_0, iter_86_1 in ipairs(arg_86_0._guardianOathShields or {}) do
		if iter_86_1.t > 0 and iter_86_1.hp > 0 then
			var_86_0 = var_86_0 + iter_86_1.hp
			var_86_1 = var_86_1 + iter_86_1.max
		end
	end

	return var_86_0, var_86_1
end

function __recovered_scope_0.var_0_62.hasShield(arg_87_0)
	return __recovered_scope_0.var_0_62.shieldStats(arg_87_0) > 0
end

function __recovered_scope_0.var_0_62.recordHP(arg_88_0)
	if not arg_88_0 or not arg_88_0._guardianOathShields then
		return
	end

	arg_88_0._guardianOathLastHP = arg_88_0.hp
	arg_88_0._factionShieldLastHP = arg_88_0.hp

	if arg_88_0._holyBarrierShield then
		arg_88_0._holyBarrierShield.lastHP = arg_88_0.hp
	end
end

 function __recovered_scope_0.var_0_64(arg_89_0)
	arg_89_0.t = 0

	for iter_89_0, iter_89_1 in ipairs(arg_89_0.members) do
		local var_89_0 = iter_89_1._guardianOathShields or {}

		for iter_89_2 = #var_89_0, 1, -1 do
			if var_89_0[iter_89_2] == arg_89_0 then
				table.remove(var_89_0, iter_89_2)
			end
		end

		if #var_89_0 == 0 then
			iter_89_1._guardianOathShields = nil
			iter_89_1._guardianOathLastHP = nil
		end
	end
end

function __recovered_scope_0.var_0_62.begin(arg_90_0, arg_90_1)
	if not __recovered_scope_0.var_0_63(arg_90_1) then
		return
	end

	local var_90_0 = {}

	for iter_90_0, iter_90_1 in ipairs(arg_90_0.allies or {}) do
		if iter_90_1 ~= arg_90_1 and __recovered_scope_0.var_0_63(iter_90_1) and (iter_90_1.hp or 0) > 0 and not require("src.game.unit_abilities").dimensional_duel.separated(arg_90_0, arg_90_1, iter_90_1) then
			var_90_0[#var_90_0 + 1] = {
				unit = iter_90_1,
				index = iter_90_0
			}
		end
	end

	table.sort(var_90_0, function(arg_91_0, arg_91_1)
		if arg_91_0.unit.hp == arg_91_1.unit.hp then
			return arg_91_0.index < arg_91_1.index
		end

		return arg_91_0.unit.hp < arg_91_1.unit.hp
	end)

	local var_90_1 = arg_90_1.primarySkillDef and arg_90_1.primarySkillDef.effects or {}
	local var_90_2 = math.max(0, (arg_90_1.maxhp or 0) * (var_90_1.shieldMaxHpRatio or 0.5))
	local var_90_3 = {
		fresh = true,
		hp = var_90_2,
		max = var_90_2,
		t = var_90_1.shieldDuration or 3,
		owner = arg_90_1,
		chainCast = require("src.game.combat").chain_casting.capture(arg_90_1),
		members = {
			arg_90_1
		}
	}

	require("src.game.combat").shield_break.register(arg_90_0, var_90_3, "GuardianOath")

	for iter_90_2 = 1, math.min(2, #var_90_0) do
		var_90_3.members[#var_90_3.members + 1] = var_90_0[iter_90_2].unit
	end

	arg_90_0._guardianOathPools = arg_90_0._guardianOathPools or {}

	for iter_90_3 = #arg_90_0._guardianOathPools, 1, -1 do
		if arg_90_0._guardianOathPools[iter_90_3].owner == arg_90_1 then
			__recovered_scope_0.var_0_64(arg_90_0._guardianOathPools[iter_90_3])
			table.remove(arg_90_0._guardianOathPools, iter_90_3)
		end
	end

	arg_90_0._guardianOathPools[#arg_90_0._guardianOathPools + 1] = var_90_3

	for iter_90_4, iter_90_5 in ipairs(var_90_3.members) do
		iter_90_5._guardianOathShields = iter_90_5._guardianOathShields or {}
		iter_90_5._guardianOathShields[#iter_90_5._guardianOathShields + 1] = var_90_3

		__recovered_scope_0.var_0_62.recordHP(iter_90_5)

		iter_90_5.hpbarShowT = math.max(iter_90_5.hpbarShowT or 0, var_90_3.t)
		iter_90_5._factionShieldHitT = 0.35

		require("src.ui.effects").holy_barrier.receive(iter_90_5, true)
	end

	return var_90_3
end

function __recovered_scope_0.var_0_62.absorb(arg_92_0, arg_92_1, arg_92_2, arg_92_3, arg_92_4)
	local var_92_0 = math.max(0, tonumber(arg_92_1) or 0)

	if not __recovered_scope_0.var_0_63(arg_92_0) then
		return var_92_0
	end

	local var_92_1 = 0

	for iter_92_0, iter_92_1 in ipairs(arg_92_0._guardianOathShields or {}) do
		if iter_92_1.t > 0 and iter_92_1.hp > 0 and var_92_0 > 0 and not require("src.game.unit_abilities").dimensional_duel.separated(arg_92_2, iter_92_1.owner, arg_92_0) then
			local var_92_2 = math.min(var_92_0, iter_92_1.hp)

			iter_92_1.hp = iter_92_1.hp - var_92_2
			var_92_0 = var_92_0 - var_92_2
			var_92_1 = var_92_1 + var_92_2

			for iter_92_2, iter_92_3 in ipairs(iter_92_1.members) do
				iter_92_3._factionShieldHitT = 0.35
			end

			if iter_92_1.hp <= 0 then
				require("src.game.combat").shield_break.depleted(arg_92_2, arg_92_0, iter_92_1, "GuardianOath", var_92_2, arg_92_3, arg_92_4)
			end
		end
	end

	if arg_92_0._guardianOathShields then
		arg_92_0._guardianOathLastHP = (arg_92_0.hp or 0) - var_92_0
	end

	if var_92_1 > 0 then
		require("src.ui.effects").holy_barrier.hit(arg_92_0, false)
	end

	return var_92_0
end

function __recovered_scope_0.var_0_62.poll(arg_93_0)
	if not arg_93_0 or not arg_93_0._guardianOathShields then
		return 0
	end

	local var_93_0 = math.max(0, (arg_93_0._guardianOathLastHP or arg_93_0.hp or 0) - (arg_93_0.hp or 0))
	local var_93_1 = var_93_0 - __recovered_scope_0.var_0_62.absorb(arg_93_0, var_93_0)

	arg_93_0.hp = (arg_93_0.hp or 0) + var_93_1

	__recovered_scope_0.var_0_62.recordHP(arg_93_0)

	return var_93_1
end

function __recovered_scope_0.var_0_62.updateWorld(arg_94_0, arg_94_1)
	local var_94_0 = arg_94_0._guardianOathPools

	if not var_94_0 then
		return
	end

	for iter_94_0 = #var_94_0, 1, -1 do
		local var_94_1 = var_94_0[iter_94_0]

		if var_94_1.fresh then
			var_94_1.fresh = nil
		else
			var_94_1.t = var_94_1.t - math.max(0, arg_94_1)
		end

		for iter_94_1 = #var_94_1.members, 1, -1 do
			local var_94_2 = var_94_1.members[iter_94_1]

			if not __recovered_scope_0.var_0_63(var_94_2) then
				local var_94_3 = var_94_2._guardianOathShields or {}

				for iter_94_2 = #var_94_3, 1, -1 do
					if var_94_3[iter_94_2] == var_94_1 then
						table.remove(var_94_3, iter_94_2)
					end
				end

				if #var_94_3 == 0 then
					var_94_2._guardianOathShields = nil
					var_94_2._guardianOathLastHP = nil
				end

				table.remove(var_94_1.members, iter_94_1)
			end
		end

		if var_94_1.t <= 0 or var_94_1.hp <= 0 or #var_94_1.members == 0 then
			__recovered_scope_0.var_0_64(var_94_1)
			table.remove(var_94_0, iter_94_0)
		end
	end

	if #var_94_0 == 0 then
		arg_94_0._guardianOathPools = nil
	end
end

function __recovered_scope_0.var_0_62.onRoarFrame(arg_95_0, arg_95_1, arg_95_2)
	local var_95_0 = arg_95_0 and arg_95_0.skill

	if not arg_95_2 or not var_95_0 or var_95_0.kind ~= "GuardianOath" or var_95_0.state ~= "active" or var_95_0.oathRoared or not arg_95_0.anim or arg_95_0.anim.name ~= "attack2" then
		return
	end

	if require("src.ui.effects").holy_barrier.roar(arg_95_0, arg_95_1) then
		var_95_0.oathRoared = true

		__recovered_scope_0.var_0_62.begin(arg_95_2, arg_95_0)
	end
end

function __recovered_scope_0.var_0_62.updateCast(arg_96_0, arg_96_1, arg_96_2, arg_96_3, arg_96_4)
	local var_96_0 = arg_96_1.skill

	var_96_0.cdT = (var_96_0.cdT or 0) + arg_96_2

	if var_96_0.state == "active" then
		var_96_0.activeT = (var_96_0.activeT or 0) + arg_96_2

		if var_96_0.activeT >= (var_96_0.oathCastDuration or 0.9) then
			var_96_0.state, var_96_0.active = nil, false
			arg_96_1._casting, arg_96_1._suppressAttack = false, false
			arg_96_1._forceAnim, arg_96_1._forceAnimT = nil, 0
		else
			arg_96_1._casting, arg_96_1._suppressAttack = true, true
			arg_96_1._forceAnim, arg_96_1._forceAnimT = "attack2", arg_96_2 + 0.1
		end

		return
	end

	if var_96_0.cdT < (var_96_0.cd or 6) then
		return
	end

	local var_96_1

	for iter_96_0, iter_96_1 in ipairs(arg_96_0.enemies or {}) do
		if arg_96_4(iter_96_1, arg_96_1, arg_96_0) then
			var_96_1 = iter_96_1

			break
		end
	end

	if not var_96_1 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_96_1)

	var_96_0.state, var_96_0.active, var_96_0.activeT, var_96_0.cdT = "active", true, 0, require("src.game.combat").chain_casting.reset(var_96_0)
	var_96_0.oathRoared = false

	local var_96_2 = arg_96_3 and arg_96_3.animations and arg_96_3.animations.attack2

	var_96_0.oathCastDuration = (var_96_2 and var_96_2.frames or 5) * (var_96_0.animationSpeed or 0.18)
	arg_96_1._pendingWarriorHit = nil
	arg_96_1._casting, arg_96_1._suppressAttack = true, true
	arg_96_1._forceAnim, arg_96_1._forceAnimT = "attack2", arg_96_2 + 0.1

	if arg_96_1.anim then
		arg_96_1.anim.name, arg_96_1.anim.frame, arg_96_1.anim.t, arg_96_1.anim.reverse = "attack2", 1, 0
	end
end

 __recovered_scope_0.var_0_65 = __recovered_scope_0.var_0_62
 __recovered_scope_0.var_0_66 = nil
 __recovered_scope_0.var_0_67 = {}

 function __recovered_scope_0.var_0_68(arg_97_0)
	return arg_97_0 and arg_97_0.alive and not arg_97_0.dying and not arg_97_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_69(arg_98_0, arg_98_1, arg_98_2)
	local var_98_0 = tonumber(arg_98_1.skill and arg_98_1.skill.range) or 135
	local var_98_1
	local var_98_2 = var_98_0 * var_98_0

	for iter_98_0, iter_98_1 in ipairs(arg_98_0.enemies or {}) do
		if __recovered_scope_0.var_0_68(iter_98_1) and arg_98_2(iter_98_1, arg_98_1, arg_98_0) then
			local var_98_3 = (iter_98_1.x or 0) - (arg_98_1.x or 0)
			local var_98_4 = (iter_98_1.y or 0) - (arg_98_1.y or 0)
			local var_98_5 = var_98_3 * var_98_3 + var_98_4 * var_98_4

			if var_98_5 <= var_98_2 then
				var_98_1, var_98_2 = iter_98_1, var_98_5
			end
		end
	end

	return var_98_1
end

 function __recovered_scope_0.var_0_70(arg_99_0)
	local var_99_0 = arg_99_0.skill

	var_99_0.state, var_99_0.active, var_99_0.combustionCast, var_99_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_99_0)
	arg_99_0._casting, arg_99_0._suppressAttack = false, false
	arg_99_0._forceAnim, arg_99_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_67.updateCast(arg_100_0, arg_100_1, arg_100_2, arg_100_3)
	local var_100_0 = arg_100_1.skill

	if var_100_0.state == "active" then
		if not __recovered_scope_0.var_0_68(arg_100_1) or not arg_100_1.anim or arg_100_1.anim.name ~= "attack3" or not var_100_0.combustionCast then
			__recovered_scope_0.var_0_70(arg_100_1)

			return
		end

		arg_100_1._casting, arg_100_1._suppressAttack = true, true
		arg_100_1._forceAnim, arg_100_1._forceAnimT = "attack3", math.max(0.2, arg_100_2 + 0.1)

		return
	end

	var_100_0.cdT = (var_100_0.cdT or 0) + arg_100_2

	if var_100_0.cdT < (var_100_0.cd or 6) then
		return
	end

	var_100_0.ready = true

	local var_100_1 = __recovered_scope_0.var_0_69(arg_100_0, arg_100_1, arg_100_3)

	if not __recovered_scope_0.var_0_68(arg_100_1) or not var_100_1 or not arg_100_1.anim then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_100_1)

	var_100_0.state, var_100_0.active, var_100_0.ready, var_100_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_100_0)
	var_100_0.combustionCast = {
		fired = false,
		target = var_100_1
	}
	arg_100_1._pendingWarriorHit = nil
	arg_100_1._casting, arg_100_1._suppressAttack = true, true
	arg_100_1._forceAnim, arg_100_1._forceAnimT = "attack3", math.max(0.2, arg_100_2 + 0.1)
	arg_100_1.anim.name, arg_100_1.anim.frame, arg_100_1.anim.t, arg_100_1.anim.reverse = "attack3", 1, 0
	arg_100_1.facing = (var_100_1.x or 0) >= (arg_100_1.x or 0) and 1 or -1
end

function __recovered_scope_0.var_0_67.onAnimation(arg_101_0, arg_101_1, arg_101_2, arg_101_3, arg_101_4, arg_101_5)
	local var_101_0 = arg_101_1.skill
	local var_101_1 = var_101_0 and var_101_0.combustionCast

	if not __recovered_scope_0.var_0_68(arg_101_1) or not var_101_1 or var_101_0.state ~= "active" or not arg_101_1.anim or arg_101_1.anim.name ~= "attack3" then
		return
	end

	if (arg_101_1.anim.frame or 1) >= 7 and not var_101_1.fired then
		arg_101_1.anim.frame, arg_101_1.anim.t = 7, 0
		var_101_1.fired = true

		local var_101_2 = var_101_1.target
		local var_101_3 = tonumber(var_101_0.range) or 135

		if not __recovered_scope_0.var_0_68(var_101_2) or not arg_101_5(var_101_2, arg_101_1, arg_101_0) or ((var_101_2.x or 0) - (arg_101_1.x or 0))^2 + ((var_101_2.y or 0) - (arg_101_1.y or 0))^2 > var_101_3 * var_101_3 then
			var_101_2 = __recovered_scope_0.var_0_69(arg_101_0, arg_101_1, arg_101_5)
		end

		if var_101_2 then
			require("src.game.projectiles").combustion_blast_projectile.launch(arg_101_0, arg_101_1, arg_101_2, arg_101_3, var_101_2, arg_101_4)
		end
	end

	if (arg_101_1.anim.frame or 1) > (arg_101_2 and arg_101_2.animations and arg_101_2.animations.attack3 and arg_101_2.animations.attack3.frames or 10) then
		__recovered_scope_0.var_0_70(arg_101_1)
	end
end

 __recovered_scope_0.var_0_71 = {
	"_flameEruptionBurn",
	"firebreatherBurn",
	"dragonkinBurn",
	"doomDragonBurn"
}

function __recovered_scope_0.var_0_67.consumeBurn(arg_102_0)
	local var_102_0 = false

	for iter_102_0, iter_102_1 in ipairs(__recovered_scope_0.var_0_71) do
		local var_102_1 = arg_102_0[iter_102_1]

		if var_102_1 and (tonumber(var_102_1.t) or 0) > 0 then
			var_102_0 = true
		end
	end

	if var_102_0 then
		for iter_102_2, iter_102_3 in ipairs(__recovered_scope_0.var_0_71) do
			arg_102_0[iter_102_3] = nil
		end
	end

	return var_102_0
end

function __recovered_scope_0.var_0_67.impact(arg_103_0, arg_103_1, arg_103_2, arg_103_3, arg_103_4)
	if arg_103_1._combustionApplied then
		return
	end

	arg_103_1._combustionApplied = true

	local var_103_0 = {
		arg_103_2
	}
	local var_103_1 = {}

	for iter_103_0, iter_103_1 in ipairs(arg_103_0.enemies or {}) do
		if iter_103_1 ~= arg_103_2 and __recovered_scope_0.var_0_68(iter_103_1) and arg_103_4(iter_103_1, arg_103_1.owner, arg_103_0) then
			local var_103_2 = (iter_103_1.x or 0) - (arg_103_2.x or 0)
			local var_103_3 = (iter_103_1.y or 0) - (arg_103_2.y or 0)
			local var_103_4 = var_103_2 * var_103_2 + var_103_3 * var_103_3

			if var_103_4 <= (arg_103_1.splashRadius or 65)^2 then
				var_103_1[#var_103_1 + 1] = {
					unit = iter_103_1,
					d2 = var_103_4,
					index = iter_103_0
				}
			end
		end
	end

	table.sort(var_103_1, function(arg_104_0, arg_104_1)
		if arg_104_0.d2 == arg_104_1.d2 then
			return arg_104_0.index < arg_104_1.index
		end

		return arg_104_0.d2 < arg_104_1.d2
	end)

	for iter_103_2 = 1, math.min(#var_103_1, require("src.game.combat").branching_bloom.limit(arg_103_0, arg_103_1.owner, arg_103_1.maxTargets or 3) - 1) do
		var_103_0[#var_103_0 + 1] = var_103_1[iter_103_2].unit
	end

	require("src.game.awakening").skillCircle(arg_103_0, arg_103_1.owner, arg_103_2, arg_103_1.splashRadius or 65, arg_103_1.maxTargets or 3, var_103_0)

	arg_103_0.vfx = arg_103_0.vfx or {}

	for iter_103_3, iter_103_4 in ipairs(var_103_0) do
		if __recovered_scope_0.var_0_68(iter_103_4) and not require("src.game.combat").branching_bloom.extra(arg_103_0, arg_103_1.owner, iter_103_3, arg_103_1.maxTargets or 3, iter_103_4, arg_103_1.dmg, arg_103_3) then
			local var_103_5 = __recovered_scope_0.var_0_67.consumeBurn(iter_103_4)

			arg_103_3(iter_103_4, arg_103_1.dmg or 0, arg_103_1.owner, nil, {
				battleSkillDamage = true,
				chainCast = arg_103_1.chainCast or false
			})

			if var_103_5 then
				require("src.ui.effects").combustion_blast.burst(arg_103_0, iter_103_4)

				if __recovered_scope_0.var_0_68(iter_103_4) then
					arg_103_3(iter_103_4, (arg_103_1.baseATK or 0) * (arg_103_1.explosionMul or 0.8), arg_103_1.owner, nil, {
						battleSkillDamage = true,
						chainCast = arg_103_1.chainCast or false
					})
				end
			elseif __recovered_scope_0.var_0_68(iter_103_4) then
				require("src.game.unit_abilities").flame_eruption.applyBurn(iter_103_4, arg_103_1.owner, arg_103_1.baseATK or 0, arg_103_1.chainCast or false)
			end
		end
	end
end

 __recovered_scope_0.var_0_72 = __recovered_scope_0.var_0_67
 __recovered_scope_0.var_0_73 = nil
 __recovered_scope_0.var_0_74 = {}
 __recovered_scope_0.var_0_75 = {
	0.26,
	0.3,
	0.38,
	0.12,
	0.14,
	0.14,
	0.16
}

 function __recovered_scope_0.var_0_76(arg_105_0)
	return arg_105_0 and arg_105_0.alive and not arg_105_0.dying and not arg_105_0._venomMawSwallowed
end

function __recovered_scope_0.var_0_74.shatterFrameDuration(arg_106_0, arg_106_1)
	local var_106_0 = arg_106_0 and arg_106_0.skill

	if var_106_0 and var_106_0.kind == "ShatterCannon" and var_106_0.state == "active" and arg_106_0.anim and arg_106_0.anim.name == "attack2" then
		return __recovered_scope_0.var_0_75[arg_106_0.anim.frame or 1] or arg_106_1
	end

	return arg_106_1
end

function __recovered_scope_0.var_0_74.shatterPresentation(arg_107_0)
	local var_107_0 = arg_107_0 and arg_107_0.skill
	local var_107_1 = var_107_0 and var_107_0.suppressiveCast

	if not __recovered_scope_0.var_0_76(arg_107_0) or not var_107_0 or var_107_0.kind ~= "ShatterCannon" or var_107_0.state ~= "active" or not var_107_1 or not arg_107_0.anim or arg_107_0.anim.name ~= "attack2" then
		return
	end

	local var_107_2 = arg_107_0.anim.frame or 1

	if var_107_2 < 1 or var_107_2 > 7 then
		return
	end

	local var_107_3 = math.max(0, math.min(arg_107_0.anim.t or 0, __recovered_scope_0.var_0_75[var_107_2]))

	if var_107_2 <= 3 and not var_107_1.fired then
		for iter_107_0 = 1, var_107_2 - 1 do
			var_107_3 = var_107_3 + __recovered_scope_0.var_0_75[iter_107_0]
		end

		return "charge", var_107_3, math.min(1, var_107_3 / 0.94)
	elseif var_107_2 >= 4 and var_107_1.launched then
		for iter_107_1 = 4, var_107_2 - 1 do
			var_107_3 = var_107_3 + __recovered_scope_0.var_0_75[iter_107_1]
		end

		return "recoil", var_107_3
	end
end

 function __recovered_scope_0.var_0_77(arg_108_0, arg_108_1, arg_108_2)
	local var_108_0
	local var_108_1 = -math.huge
	local var_108_2 = math.huge

	for iter_108_0, iter_108_1 in ipairs(arg_108_0.enemies or {}) do
		if __recovered_scope_0.var_0_76(iter_108_1) and arg_108_2(iter_108_1, arg_108_1, arg_108_0) then
			local var_108_3 = tonumber(iter_108_1.distance) or 0
			local var_108_4 = ((iter_108_1.x or 0) - (arg_108_1.x or 0))^2 + ((iter_108_1.y or 0) - (arg_108_1.y or 0))^2

			if var_108_1 < var_108_3 or var_108_3 == var_108_1 and var_108_4 < var_108_2 then
				var_108_0, var_108_1, var_108_2 = iter_108_1, var_108_3, var_108_4
			end
		end
	end

	return var_108_0
end

 function __recovered_scope_0.var_0_78(arg_109_0)
	local var_109_0 = arg_109_0.skill

	var_109_0.state, var_109_0.active, var_109_0.suppressiveCast, var_109_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_109_0)
	arg_109_0._casting, arg_109_0._suppressAttack = false, false
	arg_109_0._forceAnim, arg_109_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_74.updateCast(arg_110_0, arg_110_1, arg_110_2, arg_110_3)
	local var_110_0 = arg_110_1.skill
	local var_110_1 = var_110_0.activeAnim or var_110_0.kind == "ShatterCannon" and "attack2" or "attack"

	if var_110_0.state == "active" then
		if not __recovered_scope_0.var_0_76(arg_110_1) or not arg_110_1.anim or arg_110_1.anim.name ~= var_110_1 or not var_110_0.suppressiveCast then
			__recovered_scope_0.var_0_78(arg_110_1)

			return
		end

		arg_110_1._casting, arg_110_1._suppressAttack = true, true
		arg_110_1._forceAnim, arg_110_1._forceAnimT = var_110_1, math.max(0.2, arg_110_2 + 0.1)

		return
	end

	var_110_0.cdT = (var_110_0.cdT or 0) + arg_110_2

	if var_110_0.cdT < (var_110_0.cd or 5) then
		return
	end

	var_110_0.ready = true

	local var_110_2 = __recovered_scope_0.var_0_77(arg_110_0, arg_110_1, arg_110_3)

	if not __recovered_scope_0.var_0_76(arg_110_1) or not var_110_2 or not arg_110_1.anim then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_110_1)

	var_110_0.state, var_110_0.active, var_110_0.ready, var_110_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_110_0)
	var_110_0.suppressiveCast = {
		fired = false,
		target = var_110_2
	}

	if var_110_0.kind == "ShatterCannon" then
		arg_110_1._shatterChargeCastCount = (arg_110_1._shatterChargeCastCount or 0) + 1
	end

	arg_110_1.shotPending, arg_110_1.pendingTarget, arg_110_1._volleyFollowup = false
	arg_110_1._casting, arg_110_1._suppressAttack = true, true
	arg_110_1._forceAnim, arg_110_1._forceAnimT = var_110_1, math.max(0.2, arg_110_2 + 0.1)
	arg_110_1.anim.name, arg_110_1.anim.frame, arg_110_1.anim.t, arg_110_1.anim.reverse = var_110_1, 1, 0
	arg_110_1.anim._desynced = true
	arg_110_1.facing = var_110_0.kind == "CallOfThePlains" and 1 or (var_110_2.x or 0) >= (arg_110_1.x or 0) and 1 or -1
	arg_110_1._attackFacing = arg_110_1.facing
end

function __recovered_scope_0.var_0_74.onAnimation(arg_111_0, arg_111_1, arg_111_2, arg_111_3, arg_111_4, arg_111_5)
	local var_111_0 = arg_111_1.skill
	local var_111_1 = var_111_0 and var_111_0.suppressiveCast
	local var_111_2 = var_111_0 and (var_111_0.activeAnim or var_111_0.kind == "ShatterCannon" and "attack2" or "attack")

	if not __recovered_scope_0.var_0_76(arg_111_1) or not var_111_1 or var_111_0.state ~= "active" or not arg_111_1.anim or arg_111_1.anim.name ~= var_111_2 then
		return
	end

	local var_111_3 = var_111_0.releaseFrame or var_111_0.kind == "ShatterCannon" and 4 or 1

	if not var_111_1.fired and var_111_3 <= (arg_111_1.anim.frame or 1) then
		arg_111_1.anim.frame, arg_111_1.anim.t = var_111_3, 0
		var_111_1.fired = true

		local var_111_4 = var_111_1.target

		if not __recovered_scope_0.var_0_76(var_111_4) or not arg_111_5(var_111_4, arg_111_1, arg_111_0) then
			var_111_4 = __recovered_scope_0.var_0_77(arg_111_0, arg_111_1, arg_111_5)
		end

		if var_111_4 then
			require("src.game.projectiles").gunslinger_bullet.launchSuppressive(arg_111_0, arg_111_1, arg_111_2, arg_111_3, var_111_4, arg_111_4)

			local var_111_5 = require("src.audio.procedural_audio")

			if var_111_0.kind == "ShatterCannon" then
				var_111_5.playCannonAttack(arg_111_0.assets, arg_111_0.ui)
			else
				var_111_5.playArcherAttack(arg_111_0.assets, arg_111_0.ui)
			end

			var_111_1.launched = true
		end
	end

	if (arg_111_1.anim.frame or 1) > (arg_111_2 and arg_111_2.animations and arg_111_2.animations[var_111_2] and arg_111_2.animations[var_111_2].frames or 10) then
		__recovered_scope_0.var_0_78(arg_111_1)
	end
end

 function __recovered_scope_0.var_0_79(arg_112_0, arg_112_1)
	local var_112_0 = arg_112_1

	if arg_112_0._suppressiveRound then
		var_112_0 = math.min(var_112_0, arg_112_0._suppressiveRound.baseDistance * 0.65)
	end

	if arg_112_0._shatterCannon then
		var_112_0 = math.min(var_112_0, 60)
	end

	arg_112_0.distance = var_112_0
end

function __recovered_scope_0.var_0_74.impact(arg_113_0, arg_113_1, arg_113_2, arg_113_3)
	if arg_113_0._suppressiveApplied then
		return
	end

	arg_113_0._suppressiveApplied = true

	if arg_113_3 and not arg_113_0.shatterCannon then
		require("src.ui.effects").suppressive_round.impact(arg_113_3, arg_113_0, arg_113_1)
	end

	arg_113_2(arg_113_1, arg_113_0.dmg or 0, arg_113_0.owner, nil, {
		battleSkillDamage = true,
		projectile = arg_113_0,
		awakeningCast = arg_113_0.awakeningCast,
		chainCast = arg_113_0.chainCast or false
	})

	if __recovered_scope_0.var_0_76(arg_113_1) then
		local var_113_0 = arg_113_0.shatterCannon and "_shatterCannon" or "_suppressiveRound"
		local var_113_1 = arg_113_1[var_113_0]

		if not var_113_1 then
			local var_113_2 = arg_113_1._suppressiveRound or arg_113_1._shatterCannon

			var_113_1 = {
				baseDistance = var_113_2 and var_113_2.baseDistance or arg_113_1.distance or 0
			}
			arg_113_1[var_113_0] = var_113_1
		end

		__recovered_scope_0.var_0_79(arg_113_1, var_113_1.baseDistance)

		var_113_1.t = arg_113_0.debuffDuration or arg_113_0.shatterCannon and 4 or 3
		var_113_1.dur = var_113_1.t
		var_113_1.hitT = 0.34
	end
end

function __recovered_scope_0.var_0_74.updateDebuff(arg_114_0, arg_114_1)
	local var_114_0

	for iter_114_0 = 1, 2 do
		local var_114_1 = iter_114_0 == 1 and "_suppressiveRound" or "_shatterCannon"
		local var_114_2 = arg_114_0[var_114_1]

		if var_114_2 then
			var_114_0 = var_114_2.baseDistance
			var_114_2.t = math.max(0, var_114_2.t - math.max(0, arg_114_1))
			var_114_2.hitT = math.max(0, (var_114_2.hitT or 0) - math.max(0, arg_114_1))

			if var_114_2.t <= 0 then
				arg_114_0[var_114_1] = nil
			end
		end
	end

	if var_114_0 ~= nil then
		__recovered_scope_0.var_0_79(arg_114_0, var_114_0)
	end
end

 __recovered_scope_0.var_0_80 = __recovered_scope_0.var_0_74
 __recovered_scope_0.var_0_81 = nil
 __recovered_scope_0.var_0_82 = {}
 __recovered_scope_0.var_0_83 = {
	_ankleTrapT = "number",
	bindingT = "number",
	_frostSpikeFreezeT = "number",
	overloadShockT = "number",
	_spaceHunterGravityRange = "t",
	stingerPoison = "dur",
	_shatterCannon = "t",
	firebreatherBurn = "t",
	_flameEruptionBurn = "t",
	_shrinkRay = "dur",
	dragonkinBurn = "t",
	_bleed = "elapsed",
	_caveBasiliskPetrified = "petrify",
	shrinkDebuff = "dur",
	_suppressiveRound = "t",
	stunT = "number",
	_bramblePrison = "elapsed",
	doomDragonBurn = "t",
	poison = "dur",
	_gateNetT = "number"
}

function __recovered_scope_0.var_0_82.isActive(arg_115_0, arg_115_1)
	local var_115_0 = __recovered_scope_0.var_0_83[arg_115_1]
	local var_115_1 = arg_115_0 and arg_115_0[arg_115_1]

	if not var_115_0 or var_115_1 == nil then
		return false
	end

	if var_115_0 == "number" then
		return (tonumber(var_115_1) or 0) > 0
	end

	if type(var_115_1) ~= "table" then
		return false
	end

	if var_115_0 == "elapsed" or var_115_0 == "petrify" then
		local var_115_2 = var_115_0 == "petrify" and var_115_1.duration or var_115_1.dur

		return (tonumber(var_115_1.t) or 0) < (tonumber(var_115_2) or 0)
	end

	return (tonumber(var_115_1[var_115_0]) or 0) > 0
end

function __recovered_scope_0.var_0_82.has(arg_116_0)
	for iter_116_0 in pairs(__recovered_scope_0.var_0_83) do
		if __recovered_scope_0.var_0_82.isActive(arg_116_0, iter_116_0) then
			return true
		end
	end

	return false
end

 __recovered_scope_0.var_0_84 = __recovered_scope_0.var_0_82
 __recovered_scope_0.var_0_85 = nil
 __recovered_scope_0.var_0_86 = {
	callBlocked = function(arg_117_0)
		return (arg_117_0.stunT or 0) > 0 or (arg_117_0.fearT or 0) > 0 or arg_117_0._caveBasiliskPetrified or arg_117_0._oathHelmStone or arg_117_0._venomMawSwallowed or arg_117_0._wastelandPiperCharm or arg_117_0._succubusCharm or arg_117_0._cosmicPressure or arg_117_0._marshDriveAir or arg_117_0._spaceWizardExchangeMotion or arg_117_0._lizardWarlordSkillBlocked
	end,
	hasDebuff = function(arg_118_0)
		return __recovered_scope_0.var_0_84.has(arg_118_0)
	end
}

 function __recovered_scope_0.var_0_87(arg_119_0, arg_119_1, arg_119_2)
	if arg_119_0.skill.kind ~= "ConcussionBomb" and arg_119_0.skill.kind ~= "CleansingWave" and arg_119_0.skill.kind ~= "TripleTide" and arg_119_0.skill.kind ~= "CallOfThePlains" then
		return true
	end

	local var_119_0 = (tonumber(arg_119_0.distance) or 50) + 1

	return (arg_119_2 and arg_119_2(arg_119_0, arg_119_1) or ((arg_119_1.x or 0) - (arg_119_0.x or 0))^2 + ((arg_119_1.y or 0) - (arg_119_0.y or 0))^2) <= var_119_0 * var_119_0
end

 function __recovered_scope_0.var_0_88(arg_120_0, arg_120_1, arg_120_2, arg_120_3)
	local var_120_0
	local var_120_1 = -1
	local var_120_2 = math.huge

	for iter_120_0, iter_120_1 in ipairs(arg_120_0.enemies or {}) do
		if iter_120_1.alive and not iter_120_1.dying and arg_120_2(iter_120_1, arg_120_1, arg_120_0) and __recovered_scope_0.var_0_87(arg_120_1, iter_120_1, arg_120_3) then
			local var_120_3 = (arg_120_1.skill.kind == "ConcussionBomb" or arg_120_1.skill.kind == "CleansingWave" or arg_120_1.skill.kind == "TripleTide" or arg_120_1.skill.kind == "CallOfThePlains") and 0 or tonumber(iter_120_1.hp) or 0
			local var_120_4 = ((iter_120_1.x or 0) - (arg_120_1.x or 0))^2 + ((iter_120_1.y or 0) - (arg_120_1.y or 0))^2

			if var_120_1 < var_120_3 or var_120_3 == var_120_1 and var_120_4 < var_120_2 then
				var_120_0, var_120_1, var_120_2 = iter_120_1, var_120_3, var_120_4
			end
		end
	end

	return var_120_0
end

 function __recovered_scope_0.var_0_89(arg_121_0)
	local var_121_0 = arg_121_0.skill

	var_121_0.state, var_121_0.active, var_121_0.kegCast, var_121_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_121_0)
	arg_121_0._casting, arg_121_0._suppressAttack = false, false
	arg_121_0._forceAnim, arg_121_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_86.updateCast(arg_122_0, arg_122_1, arg_122_2, arg_122_3, arg_122_4, arg_122_5)
	local var_122_0 = arg_122_1.skill
	local var_122_1 = var_122_0.activeAnim or var_122_0.kind == "CleansingWave" and "attack3" or "attack2"

	if var_122_0.kind == "CallOfThePlains" and __recovered_scope_0.var_0_86.callBlocked(arg_122_1) then
		if var_122_0.state == "active" then
			__recovered_scope_0.var_0_89(arg_122_1)
		end

		return
	end

	if (var_122_0.kind == "CleansingWave" or var_122_0.kind == "TripleTide" or var_122_0.kind == "CallOfThePlains") and ((arg_122_1.stunT or 0) > 0 or (arg_122_1.fearT or 0) > 0 or arg_122_1._caveBasiliskPetrified or arg_122_1._oathHelmStone or arg_122_1._venomMawSwallowed or arg_122_1._wastelandPiperCharm or arg_122_1._succubusCharm) then
		if var_122_0.state == "active" then
			__recovered_scope_0.var_0_89(arg_122_1)
		end

		return
	end

	if var_122_0.state == "active" then
		if not arg_122_1.alive or arg_122_1.dying or not arg_122_1.anim or arg_122_1.anim.name ~= var_122_1 or not var_122_0.kegCast then
			__recovered_scope_0.var_0_89(arg_122_1)

			return
		end

		if var_122_0.kegCast.callAge then
			var_122_0.kegCast.callAge = var_122_0.kegCast.callAge + math.max(0, arg_122_2)
		end

		arg_122_1._casting, arg_122_1._suppressAttack = true, true
		arg_122_1._forceAnim, arg_122_1._forceAnimT = var_122_1, math.max(0.2, arg_122_2 + 0.1)

		return
	end

	var_122_0.cdT = (var_122_0.cdT or 0) + arg_122_2

	if var_122_0.cdT < (var_122_0.cd or 6) then
		return
	end

	var_122_0.ready = true

	local var_122_2

	if var_122_0.kind ~= "CallOfThePlains" then
		var_122_2 = __recovered_scope_0.var_0_88(arg_122_0, arg_122_1, arg_122_3, arg_122_4)
	end

	if var_122_0.kind == "TripleTide" then
		var_122_2 = require("src.game.awakening").waveAim(arg_122_0, arg_122_1, var_122_2, arg_122_3, arg_122_4)
	end

	if not var_122_2 and var_122_0.kind ~= "CallOfThePlains" or not arg_122_1.alive or arg_122_1.dying or not arg_122_1.anim then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_122_1)

	var_122_0.state, var_122_0.active, var_122_0.ready, var_122_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_122_0)
	var_122_0.kegCast = {
		target = var_122_2
	}

	require("src.game.awakening").trackSkill(arg_122_0, arg_122_1, var_122_0.kegCast)

	if var_122_0.kind == "CallOfThePlains" then
		var_122_0.kegCast.atk = arg_122_5 or arg_122_1.dmg or 5
	end

	arg_122_1.shotPending, arg_122_1.pendingTarget, arg_122_1._volleyFollowup = false
	arg_122_1._casting, arg_122_1._suppressAttack = true, true
	arg_122_1._forceAnim, arg_122_1._forceAnimT = var_122_1, math.max(0.2, arg_122_2 + 0.1)
	arg_122_1.anim.name, arg_122_1.anim.frame, arg_122_1.anim.t, arg_122_1.anim.reverse = var_122_1, 1, 0
	arg_122_1.facing = var_122_0.kind == "CallOfThePlains" and 1 or (var_122_2.x or 0) >= (arg_122_1.x or 0) and 1 or -1
	arg_122_1._attackFacing = arg_122_1.facing
end

function __recovered_scope_0.var_0_86.onAnimation(arg_123_0, arg_123_1, arg_123_2, arg_123_3, arg_123_4, arg_123_5, arg_123_6)
	local var_123_0 = arg_123_1.skill
	local var_123_1 = var_123_0.activeAnim or var_123_0.kind == "CleansingWave" and "attack3" or "attack2"
	local var_123_2 = var_123_0 and var_123_0.kegCast

	if not arg_123_1.alive or arg_123_1.dying or not var_123_2 or arg_123_1.anim.name ~= var_123_1 then
		return
	end

	if var_123_0.kind == "CallOfThePlains" and __recovered_scope_0.var_0_86.callBlocked(arg_123_1) then
		__recovered_scope_0.var_0_89(arg_123_1)

		return
	end

	if var_123_0.kind == "CallOfThePlains" and not var_123_2.callAge and arg_123_1.anim.frame >= 2 then
		arg_123_1.anim.frame, arg_123_1.anim.t = 2, 0
		var_123_2.callAge = 0
	end

	local var_123_3 = var_123_0.kind == "CallOfThePlains" and 2 or var_123_0.releaseFrame or var_123_0.kind == "CleansingWave" and 9 or 6

	if var_123_3 <= arg_123_1.anim.frame and not var_123_2.fired then
		arg_123_1.anim.frame, arg_123_1.anim.t = var_123_3, 0
		var_123_2.fired = true

		if var_123_0.kind == "CallOfThePlains" then
			require("src.game.projectiles").call_of_the_plains.launch(arg_123_0, arg_123_1, arg_123_2, arg_123_3, nil, var_123_2.atk)
		else
			require("src.game.awakening").trackSkill(arg_123_0, arg_123_1, var_123_2)

			local var_123_4 = var_123_2.target

			if (not var_123_4 or not var_123_4.awakeningPoint) and (not var_123_4 or not var_123_4.alive or var_123_4.dying or not arg_123_5(var_123_4, arg_123_1, arg_123_0) or not __recovered_scope_0.var_0_87(arg_123_1, var_123_4, arg_123_6)) then
				var_123_4 = __recovered_scope_0.var_0_88(arg_123_0, arg_123_1, arg_123_5, arg_123_6)
			end

			if var_123_4 then
				if var_123_0.kind == "TripleTide" then
					require("src.game.projectiles").cleansing_wave.launchTriple(arg_123_0, arg_123_1, arg_123_2, arg_123_3, var_123_4, arg_123_4)
				elseif var_123_0.kind == "CleansingWave" then
					require("src.game.projectiles").cleansing_wave.launch(arg_123_0, arg_123_1, arg_123_2, arg_123_3, var_123_4, arg_123_4)
				elseif var_123_0.kind == "ConcussionBomb" then
					require("src.game.projectiles").grenadier_bomb.launchConcussion(arg_123_0, arg_123_1, arg_123_2, arg_123_3, var_123_4, arg_123_4)
				else
					require("src.game.projectiles").timed_keg.launch(arg_123_0, arg_123_1, arg_123_2, arg_123_3, var_123_4, arg_123_4)
				end
			end
		end
	end

	if arg_123_1.anim.frame > (arg_123_2 and arg_123_2.animations and arg_123_2.animations[var_123_1] and arg_123_2.animations[var_123_1].frames or 9) then
		__recovered_scope_0.var_0_89(arg_123_1)
	end
end

 __recovered_scope_0.var_0_90 = __recovered_scope_0.var_0_86
 __recovered_scope_0.var_0_91 = nil
 __recovered_scope_0.var_0_92 = {}
 __recovered_scope_0.var_0_93 = {
	0.16,
	0.18,
	0.32,
	0.12,
	0.14,
	0.14,
	0.16
}

function __recovered_scope_0.var_0_92.frameDuration(arg_124_0, arg_124_1)
	if arg_124_0 and arg_124_0.skill and arg_124_0.skill.kind == "BurstThrust" and arg_124_0.skill.state == "active" and arg_124_0.anim and arg_124_0.anim.name == "attack2" then
		return __recovered_scope_0.var_0_93[arg_124_0.anim.frame or 1] or arg_124_1
	end

	return arg_124_1
end

function __recovered_scope_0.var_0_92.presentationTime(arg_125_0)
	local var_125_0 = arg_125_0.anim.frame or 1
	local var_125_1 = math.max(0, math.min(arg_125_0.anim.t or 0, __recovered_scope_0.var_0_93[var_125_0] or 0.12))

	for iter_125_0 = 1, math.min(var_125_0 - 1, #__recovered_scope_0.var_0_93) do
		var_125_1 = var_125_1 + __recovered_scope_0.var_0_93[iter_125_0]
	end

	return var_125_1
end

function __recovered_scope_0.var_0_92.windupOffset(arg_126_0, arg_126_1)
	if not arg_126_0 or not arg_126_0.alive or arg_126_0.dying or not arg_126_0.skill or arg_126_0.skill.kind ~= "BurstThrust" or arg_126_0.skill.state ~= "active" or not arg_126_0.skill.burstCast or arg_126_0.skill.burstCast.fired or not arg_126_0.anim or arg_126_0.anim.name ~= "attack2" or arg_126_0.anim.frame ~= 3 then
		return 0
	end

	local var_126_0 = math.max(0, math.min(1, (arg_126_0.anim.t or 0) / __recovered_scope_0.var_0_93[3]))

	return math.sin(var_126_0 * math.pi * 8) * math.sin(var_126_0 * math.pi) * 1.25 * (arg_126_1 or 1)
end

 function __recovered_scope_0.var_0_94(arg_127_0)
	return arg_127_0 and arg_127_0.alive and not arg_127_0.dying
end

 function __recovered_scope_0.var_0_95(arg_128_0, arg_128_1, arg_128_2, arg_128_3, arg_128_4)
	local var_128_0 = {}
	local var_128_1 = arg_128_1.skill.kind == "CollisionDrive" and (tonumber(arg_128_1.skill.range) or 35) or (tonumber(arg_128_1.distance) or 50) + 1
	local var_128_2 = arg_128_1._attackFacing or arg_128_1.facing or 1

	for iter_128_0, iter_128_1 in ipairs(arg_128_0.enemies or {}) do
		if __recovered_scope_0.var_0_94(iter_128_1) and arg_128_2(iter_128_1, arg_128_1, arg_128_0) then
			local var_128_3 = (iter_128_1.x or 0) - (arg_128_1.x or 0)
			local var_128_4 = (iter_128_1.y or 0) - (arg_128_1.y or 0)
			local var_128_5 = arg_128_3 and arg_128_3(arg_128_1, iter_128_1) or var_128_3 * var_128_3 + var_128_4 * var_128_4

			if var_128_5 <= var_128_1 * var_128_1 and (not arg_128_4 or var_128_3 * var_128_2 >= 0) then
				var_128_0[#var_128_0 + 1] = {
					unit = iter_128_1,
					distance = var_128_5,
					index = iter_128_0
				}
			end
		end
	end

	table.sort(var_128_0, function(arg_129_0, arg_129_1)
		if arg_129_0.distance == arg_129_1.distance then
			return arg_129_0.index < arg_129_1.index
		end

		return arg_129_0.distance < arg_129_1.distance
	end)

	return var_128_0
end

 function __recovered_scope_0.var_0_96(arg_130_0)
	local var_130_0 = arg_130_0.skill

	var_130_0.state, var_130_0.active, var_130_0.burstCast, var_130_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_130_0)
	arg_130_0._casting, arg_130_0._suppressAttack = false, false
	arg_130_0._forceAnim, arg_130_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_92.updateCast(arg_131_0, arg_131_1, arg_131_2, arg_131_3, arg_131_4)
	local var_131_0 = arg_131_1.skill

	if var_131_0.state == "active" then
		if not __recovered_scope_0.var_0_94(arg_131_1) or not arg_131_1.anim or arg_131_1.anim.name ~= "attack2" or not var_131_0.burstCast then
			__recovered_scope_0.var_0_96(arg_131_1)

			return
		end

		arg_131_1._casting, arg_131_1._suppressAttack = true, true
		arg_131_1._forceAnim, arg_131_1._forceAnimT = "attack2", math.max(0.2, arg_131_2 + 0.1)

		return
	end

	var_131_0.cdT = (var_131_0.cdT or 0) + arg_131_2

	if var_131_0.cdT < (var_131_0.cd or 5) then
		return
	end

	var_131_0.ready = true

	local var_131_1 = __recovered_scope_0.var_0_95(arg_131_0, arg_131_1, arg_131_3, arg_131_4, false)

	if not __recovered_scope_0.var_0_94(arg_131_1) or not arg_131_1.anim or not var_131_1[1] then
		return
	end

	local var_131_2 = var_131_1[1].unit

	require("src.game.combat").chain_casting.begin(arg_131_1)

	var_131_0.state, var_131_0.active, var_131_0.ready, var_131_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_131_0)
	var_131_0.burstCast = {
		fired = false,
		target = var_131_2
	}
	arg_131_1._pendingSpearHit = nil
	arg_131_1.shotPending, arg_131_1.pendingTarget = false
	arg_131_1._casting, arg_131_1._suppressAttack = true, true
	arg_131_1._forceAnim, arg_131_1._forceAnimT = "attack2", math.max(0.2, arg_131_2 + 0.1)
	arg_131_1.anim.name, arg_131_1.anim.frame, arg_131_1.anim.t, arg_131_1.anim.reverse = "attack2", 1, 0
	arg_131_1.anim._desynced = true
	arg_131_1.facing = (var_131_2.x or 0) >= (arg_131_1.x or 0) and 1 or -1
	arg_131_1._attackFacing = arg_131_1.facing
end

function __recovered_scope_0.var_0_92.lift(arg_132_0, arg_132_1)
	if not __recovered_scope_0.var_0_94(arg_132_0) or arg_132_0.isBoss or arg_132_0.isFinalBoss or arg_132_0.finalBoss then
		return false
	end

	arg_132_0._burstThrustAir = {
		height = 12,
		t = arg_132_1,
		dur = arg_132_1
	}
	arg_132_0.stunT = math.max(arg_132_0.stunT or 0, arg_132_1)
	arg_132_0._casting, arg_132_0._suppressAttack = false, true
	arg_132_0._forceAnim, arg_132_0._forceAnimT = nil, 0
	arg_132_0._meleeLoop, arg_132_0.shotPending, arg_132_0.pendingTarget = false, false
	arg_132_0._pendingOrcHit, arg_132_0._pendingHowlHit, arg_132_0._pendingGoblinHit = nil
	arg_132_0._summonPending, arg_132_0._summonFired = false, false
	arg_132_0._howlPending, arg_132_0._howlApplied, arg_132_0._berserkPending, arg_132_0._berserkApplied = false, false, false, false
	arg_132_0._kb = nil

	if arg_132_0.anim then
		arg_132_0.anim.name, arg_132_0.anim.frame, arg_132_0.anim.t, arg_132_0.anim.reverse = "idle", 1, 0
		arg_132_0._stunIdleApplied = true
	end

	return true
end

function __recovered_scope_0.var_0_92.updateAir(arg_133_0, arg_133_1)
	local var_133_0 = arg_133_0._burstThrustAir

	if not var_133_0 then
		return
	end

	var_133_0.t = math.max(0, var_133_0.t - math.max(0, arg_133_1))

	if not __recovered_scope_0.var_0_94(arg_133_0) or var_133_0.t <= 0 then
		arg_133_0._burstThrustAir = nil
	end
end

function __recovered_scope_0.var_0_92.airLift(arg_134_0, arg_134_1)
	local var_134_0 = arg_134_0 and arg_134_0._burstThrustAir

	if not var_134_0 or not __recovered_scope_0.var_0_94(arg_134_0) then
		return 0
	end

	local var_134_1 = math.max(0, math.min(1, 1 - var_134_0.t / var_134_0.dur))

	return 4 * var_134_1 * (1 - var_134_1) * var_134_0.height * (arg_134_1 or 1)
end

function __recovered_scope_0.var_0_92.onAnimation(arg_135_0, arg_135_1, arg_135_2, arg_135_3, arg_135_4, arg_135_5, arg_135_6)
	if arg_135_1.skill and arg_135_1.skill.kind == "CollisionDrive" then
		return require("src.game.unit_abilities").collision_drive.onAnimation(arg_135_0, arg_135_1, arg_135_2, arg_135_3, arg_135_4, arg_135_5, arg_135_6)
	end

	local var_135_0 = arg_135_1.skill
	local var_135_1 = var_135_0 and var_135_0.burstCast

	if not __recovered_scope_0.var_0_94(arg_135_1) or not var_135_1 or not arg_135_1.anim or arg_135_1.anim.name ~= "attack2" then
		return
	end

	if arg_135_1.anim.frame >= 4 and not var_135_1.fired then
		arg_135_1.anim.frame, arg_135_1.anim.t = 4, 0
		var_135_1.fired = true

		local var_135_2 = __recovered_scope_0.var_0_95(arg_135_0, arg_135_1, arg_135_4, arg_135_5, true)

		for iter_135_0 = 1, math.min(require("src.game.combat").branching_bloom.limit(arg_135_0, arg_135_1, 2), #var_135_2) do
			local var_135_3 = var_135_2[iter_135_0].unit

			if not require("src.game.combat").branching_bloom.extra(arg_135_0, arg_135_1, iter_135_0, 2, var_135_3, arg_135_3 * (var_135_0.dmgMul or 1.2), arg_135_6) then
				arg_135_6(var_135_3, arg_135_3 * (var_135_0.dmgMul or 1.2), arg_135_1, nil, {
					battleSkillDamage = true
				})
				__recovered_scope_0.var_0_92.lift(var_135_3, var_135_0.dur or 0.5)
			end
		end
	end

	if arg_135_1.anim.frame > (arg_135_2 and arg_135_2.animations and arg_135_2.animations.attack2 and arg_135_2.animations.attack2.frames or 7) then
		__recovered_scope_0.var_0_96(arg_135_1)
	end
end

__recovered_scope_0.var_0_92.finishCast = __recovered_scope_0.var_0_96

 __recovered_scope_0.var_0_97 = __recovered_scope_0.var_0_92
 __recovered_scope_0.var_0_98 = nil
 __recovered_scope_0.var_0_99 = {}
 __recovered_scope_0.var_0_100 = {
	0.16,
	0.18,
	0.2,
	0.15,
	0.12,
	0.13,
	0.16
}

 function __recovered_scope_0.var_0_101(arg_136_0)
	return arg_136_0 and arg_136_0.alive and not arg_136_0.dying
end

 function __recovered_scope_0.var_0_102(arg_137_0)
	return __recovered_scope_0.var_0_101(arg_137_0) and (arg_137_0.stunT or 0) <= 0 and not arg_137_0._venomMawSwallowed and not arg_137_0._cosmicPressure and not arg_137_0._caveBasiliskPetrified and not arg_137_0._oathHelmStone and not arg_137_0._wastelandPiperCharm and not arg_137_0._succubusCharm
end

 function __recovered_scope_0.var_0_103(arg_138_0)
	return __recovered_scope_0.var_0_102(arg_138_0) and arg_138_0.skill and arg_138_0.skill.kind == "CrushingCounter" and arg_138_0.skill.state == "active" and arg_138_0.skill.counterCast and arg_138_0.anim and arg_138_0.anim.name == "attack2"
end

 function __recovered_scope_0.var_0_104(arg_139_0)
	local var_139_0 = arg_139_0.skill

	var_139_0.counterCast, var_139_0.state, var_139_0.active, var_139_0.cdT = nil, nil, false, require("src.game.combat").chain_casting.reset(var_139_0)
	arg_139_0._casting, arg_139_0._suppressAttack = false, false
	arg_139_0._forceAnim, arg_139_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_99.frameDuration(arg_140_0, arg_140_1)
	if not __recovered_scope_0.var_0_103(arg_140_0) then
		return arg_140_1
	end

	if arg_140_0.anim.frame == 3 then
		return arg_140_0.skill.counterCast.guardDuration or __recovered_scope_0.var_0_100[3]
	end

	return __recovered_scope_0.var_0_100[arg_140_0.anim.frame or 1] or arg_140_1
end

function __recovered_scope_0.var_0_99.presentation(arg_141_0)
	if not __recovered_scope_0.var_0_103(arg_141_0) then
		return nil
	end

	local var_141_0 = arg_141_0.skill.counterCast
	local var_141_1 = arg_141_0.anim.frame or 1
	local var_141_2 = arg_141_0.anim.t or 0

	for iter_141_0 = 1, math.min(7, var_141_1 - 1) do
		var_141_2 = var_141_2 + (iter_141_0 == 3 and (var_141_0.guardDuration or __recovered_scope_0.var_0_100[3]) or __recovered_scope_0.var_0_100[iter_141_0])
	end

	return var_141_0, var_141_2
end

function __recovered_scope_0.var_0_99.releaseGuardOnHit(arg_142_0, arg_142_1)
	if (tonumber(arg_142_1) or 0) <= 0 or not __recovered_scope_0.var_0_103(arg_142_0) or arg_142_0.anim.frame ~= 3 then
		return
	end

	local var_142_0 = arg_142_0.skill.counterCast

	var_142_0.guardEntered, var_142_0.guardDuration = true, arg_142_0.anim.t or 0
	arg_142_0.anim.frame, arg_142_0.anim.t = 4, 0
end

function __recovered_scope_0.var_0_99.tryBlock(arg_143_0, arg_143_1, arg_143_2)
	if not arg_143_2 or arg_143_2.basicAttack ~= true or arg_143_2.skillDamage or arg_143_2.battleSkillDamage or arg_143_2.skillBig or arg_143_2.forceSkillBig or arg_143_2.dot or arg_143_2.isDot or arg_143_2.periodic or arg_143_2.reflected or (tonumber(arg_143_1) or 0) <= 0 or not __recovered_scope_0.var_0_103(arg_143_0) then
		return false
	end

	local var_143_0 = arg_143_0.skill.counterCast
	local var_143_1 = arg_143_0.anim.frame or 1

	if var_143_0.blocked or var_143_0.fired or var_143_1 ~= 3 then
		return false
	end

	var_143_0.blocked = true

	__recovered_scope_0.var_0_99.releaseGuardOnHit(arg_143_0, arg_143_1)

	arg_143_0.blockT = math.max(arg_143_0.blockT or 0, 0.4)
	arg_143_0.hitFlash = {
		t = 0,
		dur = 0.12,
		color = {
			0.85,
			0.9,
			1
		}
	}

	return true
end

function __recovered_scope_0.var_0_99.updateCast(arg_144_0, arg_144_1, arg_144_2, arg_144_3, arg_144_4)
	local var_144_0 = arg_144_1.skill

	if var_144_0.state == "active" then
		if not __recovered_scope_0.var_0_103(arg_144_1) then
			__recovered_scope_0.var_0_104(arg_144_1)

			return
		end

		arg_144_1._casting, arg_144_1._suppressAttack = true, true
		arg_144_1._forceAnim, arg_144_1._forceAnimT = "attack2", math.max(0.2, arg_144_2 + 0.1)
		arg_144_1.facing, arg_144_1._attackFacing = var_144_0.counterCast.facing, var_144_0.counterCast.facing

		return
	end

	var_144_0.counterCast = nil
	var_144_0.cdT = (var_144_0.cdT or 0) + arg_144_2

	if var_144_0.cdT < (var_144_0.cd or 6) then
		return
	end

	var_144_0.ready = true

	if not __recovered_scope_0.var_0_102(arg_144_1) or not arg_144_1.anim then
		return
	end

	local var_144_1 = (tonumber(arg_144_1.distance) or 50) + 1
	local var_144_2
	local var_144_3 = var_144_1 * var_144_1

	for iter_144_0, iter_144_1 in ipairs(arg_144_0.enemies or {}) do
		if __recovered_scope_0.var_0_101(iter_144_1) and arg_144_3(iter_144_1, arg_144_1, arg_144_0) then
			local var_144_4 = (iter_144_1.x or 0) - (arg_144_1.x or 0)
			local var_144_5 = (iter_144_1.y or 0) - (arg_144_1.y or 0)
			local var_144_6 = arg_144_4 and arg_144_4(arg_144_1, iter_144_1) or var_144_4 * var_144_4 + var_144_5 * var_144_5

			if var_144_6 <= var_144_3 then
				var_144_2, var_144_3 = iter_144_1, var_144_6
			end
		end
	end

	if not var_144_2 then
		return
	end

	local var_144_7 = (var_144_2.x or 0) >= (arg_144_1.x or 0) and 1 or -1

	require("src.game.combat").chain_casting.begin(arg_144_1)

	var_144_0.state, var_144_0.active, var_144_0.ready, var_144_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_144_0)
	var_144_0.counterCast = {
		fired = false,
		blocked = false,
		facing = var_144_7
	}
	arg_144_1._pendingSpearHit, arg_144_1.pendingTarget, arg_144_1.shotPending = nil, nil, false
	arg_144_1._casting, arg_144_1._suppressAttack = true, true
	arg_144_1._forceAnim, arg_144_1._forceAnimT = "attack2", math.max(0.2, arg_144_2 + 0.1)
	arg_144_1.facing, arg_144_1._attackFacing = var_144_7, var_144_7
	arg_144_1.anim.name, arg_144_1.anim.frame, arg_144_1.anim.t, arg_144_1.anim.reverse = "attack2", 1, 0
	arg_144_1.anim._desynced = true
end

function __recovered_scope_0.var_0_99.impactGroundPoint(arg_145_0, arg_145_1, arg_145_2)
	if not arg_145_2 or not arg_145_2.imageData or not arg_145_2.animations or not arg_145_2.animations.attack2 then
		return nil
	end

	local var_145_0 = arg_145_2._crushingGroundMarker
	local var_145_1 = arg_145_2.frameW or 32
	local var_145_2 = arg_145_2.frameH or 32

	if var_145_0 == nil then
		local var_145_3 = arg_145_2.animations.attack2.y or 128
		local var_145_4 = 0
		local var_145_5 = 0
		local var_145_6 = 0

		for iter_145_0 = 0, var_145_2 - 1 do
			for iter_145_1 = 0, var_145_1 - 1 do
				local var_145_7, var_145_8, var_145_9, var_145_10 = arg_145_2.imageData:getPixel(5 * var_145_1 + iter_145_1, var_145_3 + iter_145_0)

				if var_145_10 > 0 and math.floor(var_145_7 * 255 + 0.5) == 242 and math.floor(var_145_8 * 255 + 0.5) == 247 and math.floor(var_145_9 * 255 + 0.5) == 247 then
					var_145_4, var_145_5, var_145_6 = var_145_4 + iter_145_1 + 0.5, var_145_5 + iter_145_0 + 0.5, var_145_6 + 1
				end
			end
		end

		var_145_0 = var_145_6 > 0 and {
			x = var_145_4 / var_145_6,
			y = var_145_5 / var_145_6
		} or false
		arg_145_2._crushingGroundMarker = var_145_0
	end

	if not var_145_0 then
		return nil
	end

	local var_145_11 = arg_145_0.ui and arg_145_0.ui.battle and arg_145_0.ui.battle.allySize32 or 32
	local var_145_12 = var_145_11 / var_145_2
	local var_145_13 = arg_145_1._attackFacing or arg_145_1.facing or 1
	local var_145_14 = math.floor((arg_145_1.x or 0) - var_145_1 * var_145_12 * 0.5) + (var_145_13 < 0 and var_145_1 - var_145_0.x or var_145_0.x) * var_145_12
	local var_145_15 = math.floor((arg_145_1.y or 0) - var_145_11 * 0.5) + var_145_0.y * var_145_12
	local var_145_16

	if arg_145_0.entityGroundPoint then
		local var_145_17
		local var_145_18

		var_145_18, var_145_16 = arg_145_0:entityGroundPoint(arg_145_1, var_145_11)
	end

	var_145_16 = var_145_16 or arg_145_1.colY and arg_145_1.colH and arg_145_1.colY + arg_145_1.colH or (arg_145_1.y or 0) + var_145_11 * 0.5

	return var_145_14, math.max(var_145_15, var_145_16)
end

function __recovered_scope_0.var_0_99.onAnimation(arg_146_0, arg_146_1, arg_146_2, arg_146_3, arg_146_4, arg_146_5, arg_146_6)
	if not __recovered_scope_0.var_0_103(arg_146_1) then
		return
	end

	local var_146_0 = arg_146_1.skill
	local var_146_1 = arg_146_1.skill.counterCast

	if arg_146_1.anim.frame >= 3 and not var_146_1.guardEntered then
		arg_146_1.anim.frame, arg_146_1.anim.t, var_146_1.guardEntered = 3, 0, true
		var_146_1.guardDuration = __recovered_scope_0.var_0_100[3]

		local var_146_2 = (tonumber(arg_146_1.distance) or 50) + 1

		for iter_146_0, iter_146_1 in ipairs(arg_146_0.enemies or {}) do
			if __recovered_scope_0.var_0_101(iter_146_1) and arg_146_4(iter_146_1, arg_146_1, arg_146_0) then
				local var_146_3 = (iter_146_1.x or 0) - (arg_146_1.x or 0)
				local var_146_4 = (iter_146_1.y or 0) - (arg_146_1.y or 0)
				local var_146_5 = arg_146_6 and arg_146_6(arg_146_1, iter_146_1) or var_146_3 * var_146_3 + var_146_4 * var_146_4

				if var_146_3 * var_146_1.facing >= 0 and var_146_5 <= var_146_2 * var_146_2 then
					var_146_1.guardDuration = 1

					break
				end
			end
		end

		return
	end

	if arg_146_1.anim.frame >= 6 and not var_146_1.fired then
		arg_146_1.anim.frame, arg_146_1.anim.t, var_146_1.fired = 6, 0, true
		var_146_1.x, var_146_1.y = arg_146_1.x or 0, arg_146_1.y or 0

		local var_146_6 = {}
		local var_146_7 = {}

		for iter_146_2, iter_146_3 in ipairs(arg_146_0.enemies or {}) do
			if __recovered_scope_0.var_0_101(iter_146_3) and not var_146_7[iter_146_3] and arg_146_4(iter_146_3, arg_146_1, arg_146_0) then
				var_146_7[iter_146_3] = true

				local var_146_8 = ((iter_146_3.x or 0) - var_146_1.x) * var_146_1.facing
				local var_146_9 = (iter_146_3.y or 0) - var_146_1.y

				if var_146_8 >= 0 and var_146_8 <= 90 and math.abs(var_146_9) <= 22.5 then
					var_146_6[#var_146_6 + 1] = {
						unit = iter_146_3,
						d2 = var_146_8 * var_146_8 + var_146_9 * var_146_9,
						index = iter_146_2
					}
				end
			end
		end

		table.sort(var_146_6, function(arg_147_0, arg_147_1)
			if arg_147_0.d2 == arg_147_1.d2 then
				return arg_147_0.index < arg_147_1.index
			end

			return arg_147_0.d2 < arg_147_1.d2
		end)

		var_146_1.hitTargets, var_146_1.groundSpots = {}, {}
		var_146_1.groundReleased, var_146_1.groundFrame = true, 6

		local var_146_10, var_146_11 = __recovered_scope_0.var_0_99.impactGroundPoint(arg_146_0, arg_146_1, arg_146_2)

		if var_146_10 then
			var_146_1.groundSpots[1] = {
				x = var_146_10,
				y = var_146_11
			}
		end

		for iter_146_4 = 1, math.min(require("src.game.combat").branching_bloom.limit(arg_146_0, arg_146_1, 2), #var_146_6) do
			local var_146_12 = var_146_6[iter_146_4].unit

			var_146_1.hitTargets[iter_146_4] = {
				dx = ((var_146_12.x or 0) - var_146_1.x) * var_146_1.facing,
				dy = (var_146_12.y or 0) - var_146_1.y,
				unit = var_146_12
			}

			if not require("src.game.combat").branching_bloom.extra(arg_146_0, arg_146_1, iter_146_4, 2, var_146_12, arg_146_3 * (var_146_0.dmgMul or 1.5), arg_146_5) then
				arg_146_5(var_146_12, arg_146_3 * (var_146_0.dmgMul or 1.5), arg_146_1, nil, {
					battleSkillDamage = true
				})
			end
		end
	end

	if (arg_146_2 and arg_146_2.animations and arg_146_2.animations.attack2 and arg_146_2.animations.attack2.frames or 7) < arg_146_1.anim.frame then
		__recovered_scope_0.var_0_104(arg_146_1)
	end
end

function __recovered_scope_0.var_0_99.wave(arg_148_0)
	if not __recovered_scope_0.var_0_103(arg_148_0) then
		return nil
	end

	local var_148_0 = arg_148_0.skill.counterCast

	if not var_148_0.fired then
		return nil
	end

	local var_148_1 = arg_148_0.anim.t or 0

	for iter_148_0 = 6, math.min(7, (arg_148_0.anim.frame or 6) - 1) do
		var_148_1 = var_148_1 + __recovered_scope_0.var_0_100[iter_148_0]
	end

	return var_148_0, math.min(1, var_148_1 / 0.35)
end

function __recovered_scope_0.var_0_99.groundWave(arg_149_0)
	if not __recovered_scope_0.var_0_103(arg_149_0) then
		return nil
	end

	local var_149_0 = arg_149_0.skill.counterCast

	if not var_149_0.groundReleased then
		return nil
	end

	local var_149_1 = arg_149_0.anim.t or 0

	for iter_149_0 = 6, math.min(7, (arg_149_0.anim.frame or 6) - 1) do
		var_149_1 = var_149_1 + __recovered_scope_0.var_0_100[iter_149_0]
	end

	return var_149_0, math.min(1, var_149_1 / (__recovered_scope_0.var_0_100[6] + __recovered_scope_0.var_0_100[7]))
end

 __recovered_scope_0.var_0_105 = __recovered_scope_0.var_0_99
 __recovered_scope_0.var_0_106 = nil
 __recovered_scope_0.var_0_107 = {}

 function __recovered_scope_0.var_0_108(arg_150_0)
	return arg_150_0 and arg_150_0.alive and not arg_150_0.dying
end

 function __recovered_scope_0.var_0_109(arg_151_0)
	return arg_151_0.isBoss or arg_151_0.isFinalBoss or arg_151_0.finalBoss
end

 function __recovered_scope_0.var_0_110(arg_152_0)
	arg_152_0._casting, arg_152_0._suppressAttack = false, true
	arg_152_0._forceAnim, arg_152_0._forceAnimT = nil, 0
	arg_152_0.shotPending, arg_152_0.pendingTarget, arg_152_0._meleeLoop = false, nil, false
	arg_152_0._pendingOrcHit, arg_152_0._pendingHowlHit, arg_152_0._pendingGoblinHit = nil
	arg_152_0._summonPending, arg_152_0._summonFired, arg_152_0._howlPending, arg_152_0._howlApplied = false, false, false, false
	arg_152_0._berserkPending, arg_152_0._berserkApplied = false, false

	if arg_152_0.anim then
		arg_152_0.anim.name, arg_152_0.anim.frame, arg_152_0.anim.t, arg_152_0.anim.reverse = "idle", 1, 0
	end
end

__recovered_scope_0.var_0_107.interrupt = __recovered_scope_0.var_0_110

 function __recovered_scope_0.var_0_111(arg_153_0)
	local var_153_0 = arg_153_0._collisionDrive
	local var_153_1 = var_153_0 and var_153_0.contactTarget

	if var_153_1 and var_153_1._collisionDrivePassenger and var_153_1._collisionDrivePassenger.drive == var_153_0 then
		var_153_1._collisionDrivePassenger = nil

		if (var_153_1.stunT or 0) <= 0 and not var_153_1._casting then
			var_153_1._suppressAttack = false
		end
	end

	arg_153_0._collisionDrive = nil

	if (arg_153_0.stunT or 0) <= 0 and not arg_153_0._casting then
		arg_153_0._suppressAttack = false
	end
end

function __recovered_scope_0.var_0_107.impact(arg_154_0, arg_154_1, arg_154_2, arg_154_3, arg_154_4)
	arg_154_3(arg_154_1, arg_154_2 * (arg_154_0.skill.dmgMul or 1.3), arg_154_0, nil, {
		battleSkillDamage = true
	})

	if not __recovered_scope_0.var_0_108(arg_154_1) or __recovered_scope_0.var_0_109(arg_154_1) then
		return
	end

	local var_154_0 = (arg_154_1.x or 0) - (arg_154_0.x or 0)
	local var_154_1 = ((arg_154_1.y or 0) - (arg_154_0.y or 0)) * 0.5
	local var_154_2 = math.sqrt(var_154_0 * var_154_0 + var_154_1 * var_154_1)

	if var_154_2 < 0.001 then
		var_154_0, var_154_1 = arg_154_0._attackFacing or arg_154_0.facing or 1, 0
	else
		var_154_0, var_154_1 = var_154_0 / var_154_2, var_154_1 / var_154_2
	end

	if arg_154_4 and arg_154_1._collisionDrive and arg_154_1._collisionDrive.owner == arg_154_0 then
		arg_154_1._collisionDrive.atk = arg_154_2

		return
	end

	arg_154_1._collisionDrive = {
		distance = 12,
		t = 0,
		owner = arg_154_0,
		chainCast = require("src.game.combat").chain_casting.capture(arg_154_0),
		atk = arg_154_2,
		dur = arg_154_0.skill.dur or 0.5,
		nx = var_154_0,
		ny = var_154_1,
		stunDur = arg_154_0.skill.stunDur or 0.5
	}

	if arg_154_4 then
		arg_154_1._collisionDrive.phase = "windup"
	end

	arg_154_1._kb = nil

	__recovered_scope_0.var_0_110(arg_154_1)
end

 function __recovered_scope_0.var_0_112(arg_155_0)
	return arg_155_0._bodyColX or arg_155_0.colX or (arg_155_0.x or 0) - 8, arg_155_0._bodyColY or arg_155_0.colY or (arg_155_0.y or 0) - 8, arg_155_0._bodyColW or arg_155_0.colW or 16, arg_155_0._bodyColH or arg_155_0.colH or 16
end

 function __recovered_scope_0.var_0_113(arg_156_0, arg_156_1, arg_156_2, arg_156_3, arg_156_4, arg_156_5, arg_156_6)
	local var_156_0, var_156_1, var_156_2, var_156_3 = __recovered_scope_0.var_0_112(arg_156_6)
	local var_156_4 = 0
	local var_156_5 = 1

	for iter_156_0, iter_156_1 in ipairs({
		{
			arg_156_0,
			arg_156_4,
			var_156_0 - arg_156_2,
			var_156_0 + var_156_2
		},
		{
			arg_156_1,
			arg_156_5,
			var_156_1 - arg_156_3,
			var_156_1 + var_156_3
		}
	}) do
		local var_156_6 = iter_156_1[1]
		local var_156_7 = iter_156_1[2]
		local var_156_8 = iter_156_1[3]
		local var_156_9 = iter_156_1[4]

		if math.abs(var_156_7) < 1e-06 then
			if var_156_6 < var_156_8 or var_156_9 < var_156_6 then
				return
			end
		else
			local var_156_10 = (var_156_8 - var_156_6) / var_156_7
			local var_156_11 = (var_156_9 - var_156_6) / var_156_7

			if var_156_11 < var_156_10 then
				var_156_10, var_156_11 = var_156_11, var_156_10
			end

			var_156_4, var_156_5 = math.max(var_156_4, var_156_10), math.min(var_156_5, var_156_11)

			if var_156_5 < var_156_4 then
				return
			end
		end
	end

	return var_156_4
end

 __recovered_scope_0.var_0_114 = {
	0.22,
	0.24,
	0.26,
	0.28,
	0.18,
	0.2
}

function __recovered_scope_0.var_0_107.frameDuration(arg_157_0, arg_157_1)
	return __recovered_scope_0.var_0_114[arg_157_0.anim and arg_157_0.anim.frame or 1] or arg_157_1
end

 function __recovered_scope_0.var_0_115(arg_158_0, arg_158_1, arg_158_2)
	arg_158_0.x, arg_158_0.y = (arg_158_0.x or 0) + arg_158_1, (arg_158_0.y or 0) + arg_158_2

	for iter_158_0, iter_158_1 in ipairs({
		"colX",
		"_bodyColX"
	}) do
		if arg_158_0[iter_158_1] then
			arg_158_0[iter_158_1] = arg_158_0[iter_158_1] + arg_158_1
		end
	end

	for iter_158_2, iter_158_3 in ipairs({
		"colY",
		"_bodyColY"
	}) do
		if arg_158_0[iter_158_3] then
			arg_158_0[iter_158_3] = arg_158_0[iter_158_3] + arg_158_2
		end
	end
end

 function __recovered_scope_0.var_0_116(arg_159_0, arg_159_1)
	local var_159_0 = arg_159_1 and arg_159_1.target

	if var_159_0 and var_159_0._collisionDrive and var_159_0._collisionDrive.cast == arg_159_1 and var_159_0._collisionDrive.phase == "windup" then
		__recovered_scope_0.var_0_111(var_159_0)
	end
end

 function __recovered_scope_0.var_0_117(arg_160_0, arg_160_1, arg_160_2, arg_160_3)
	local var_160_0 = arg_160_2.target
	local var_160_1 = (var_160_0.x or 0) - (arg_160_1.x or 0)
	local var_160_2 = (var_160_0.y or 0) - (arg_160_1.y or 0)

	if arg_160_2.rangeGroundDy == nil then
		local var_160_3 = arg_160_3 and arg_160_3(arg_160_1, var_160_0) or var_160_1 * var_160_1 + var_160_2 * var_160_2

		arg_160_2.rangeYScale = arg_160_3 and math.max(0.1, math.min(1, tonumber(arg_160_0.ui and arg_160_0.ui.battle and arg_160_0.ui.battle.rangeEllipseYScale) or 0.5)) or 1
		arg_160_2.rangeStartY = var_160_2
		arg_160_2.rangeGroundDy = math.sqrt(math.max(0, var_160_3 - var_160_1 * var_160_1)) * (var_160_2 < 0 and -1 or 1)
	end

	local var_160_4 = arg_160_2.rangeGroundDy + (var_160_2 - arg_160_2.rangeStartY) / arg_160_2.rangeYScale

	return var_160_1 * var_160_1 + var_160_4 * var_160_4
end

function __recovered_scope_0.var_0_107.advance(arg_161_0, arg_161_1, arg_161_2, arg_161_3, arg_161_4)
	if arg_161_2.released or not __recovered_scope_0.var_0_108(arg_161_2.target) or not arg_161_3(arg_161_2.target, arg_161_1, arg_161_0) then
		return
	end

	local var_161_0 = tonumber(arg_161_1.skill.range) or 35

	if __recovered_scope_0.var_0_117(arg_161_0, arg_161_1, arg_161_2, arg_161_4) > var_161_0 * var_161_0 then
		__recovered_scope_0.var_0_116(arg_161_1, arg_161_2)

		return
	end

	local var_161_1 = arg_161_1.anim.frame or 1
	local var_161_2 = 0

	for iter_161_0 = 1, math.min(4, var_161_1 - 1) do
		var_161_2 = var_161_2 + __recovered_scope_0.var_0_114[iter_161_0]
	end

	if var_161_1 <= 4 then
		var_161_2 = var_161_2 + math.min(arg_161_1.anim.t or 0, __recovered_scope_0.var_0_114[var_161_1])
	end

	local var_161_3 = math.min(1, var_161_2)
	local var_161_4 = math.max(0, var_161_3 - (arg_161_2.walkProgress or 0)) * 16

	arg_161_2.walkProgress = var_161_3

	if var_161_4 <= 0 then
		return
	end

	local var_161_5 = arg_161_2.target
	local var_161_6 = arg_161_2.nx * var_161_4
	local var_161_7 = arg_161_2.ny * var_161_4

	if __recovered_scope_0.var_0_109(var_161_5) then
		local var_161_8 = math.sqrt(((var_161_5.x or 0) - (arg_161_1.x or 0))^2 + ((var_161_5.y or 0) - (arg_161_1.y or 0))^2)
		local var_161_9 = math.min(var_161_4, math.max(0, var_161_8 - 18))

		__recovered_scope_0.var_0_115(arg_161_1, arg_161_2.nx * var_161_9, arg_161_2.ny * var_161_9)

		return
	end

	local var_161_10 = var_161_5._collisionDrive

	if not var_161_10 or var_161_10.cast ~= arg_161_2 then
		return
	end

	local var_161_11, var_161_12, var_161_13, var_161_14 = __recovered_scope_0.var_0_112(var_161_5)
	local var_161_15 = 1
	local var_161_16

	for iter_161_1, iter_161_2 in ipairs(arg_161_0.enemies or {}) do
		if iter_161_2 ~= var_161_5 and __recovered_scope_0.var_0_108(iter_161_2) and arg_161_3(iter_161_2, arg_161_1, arg_161_0) then
			local var_161_17, var_161_18, var_161_19, var_161_20 = __recovered_scope_0.var_0_112(iter_161_2)

			if (var_161_17 + var_161_19 * 0.5 - (var_161_11 + var_161_13 * 0.5)) * arg_161_2.nx + (var_161_18 + var_161_20 * 0.5 - (var_161_12 + var_161_14 * 0.5)) * arg_161_2.ny >= 0 then
				local var_161_21 = __recovered_scope_0.var_0_113(var_161_11, var_161_12, var_161_13, var_161_14, var_161_6, var_161_7, iter_161_2)

				if var_161_21 and (var_161_21 < var_161_15 or var_161_21 == var_161_15 and iter_161_2 == var_161_10.contactTarget) then
					var_161_15, var_161_16 = var_161_21, iter_161_2
				end
			end
		end
	end

	if var_161_16 and not __recovered_scope_0.var_0_109(var_161_16) then
		local var_161_22 = var_161_10.contactTarget

		if var_161_22 and var_161_22 ~= var_161_16 and var_161_22._collisionDrivePassenger and var_161_22._collisionDrivePassenger.drive == var_161_10 then
			var_161_22._collisionDrivePassenger = nil

			if (var_161_22.stunT or 0) <= 0 and not var_161_22._casting then
				var_161_22._suppressAttack = false
			end
		end

		var_161_10.contactTarget = var_161_16
		var_161_16._collisionDrivePassenger = {
			driver = var_161_5,
			drive = var_161_10
		}

		__recovered_scope_0.var_0_110(var_161_16)
		__recovered_scope_0.var_0_115(var_161_16, var_161_6 * (1 - var_161_15), var_161_7 * (1 - var_161_15))
		__recovered_scope_0.var_0_115(var_161_5, var_161_6, var_161_7)
		__recovered_scope_0.var_0_115(arg_161_1, var_161_6, var_161_7)
	else
		__recovered_scope_0.var_0_115(var_161_5, var_161_6 * var_161_15, var_161_7 * var_161_15)
		__recovered_scope_0.var_0_115(arg_161_1, var_161_6 * var_161_15, var_161_7 * var_161_15)
	end
end

function __recovered_scope_0.var_0_107.updateCast(arg_162_0, arg_162_1, arg_162_2, arg_162_3, arg_162_4)
	local var_162_0 = arg_162_1._collisionWindup

	__recovered_scope_0.var_0_97.updateCast(arg_162_0, arg_162_1, arg_162_2, arg_162_3, arg_162_4)

	local var_162_1 = arg_162_1.skill.burstCast

	if var_162_0 and var_162_0 ~= var_162_1 then
		__recovered_scope_0.var_0_116(arg_162_1, var_162_0)
	end

	arg_162_1._collisionWindup = var_162_1

	if not var_162_1 then
		return
	end

	if not var_162_1.initialized then
		var_162_1.initialized = true

		__recovered_scope_0.var_0_117(arg_162_0, arg_162_1, var_162_1, arg_162_4)

		local var_162_2 = var_162_1.target
		local var_162_3 = (var_162_2.x or 0) - (arg_162_1.x or 0)
		local var_162_4 = ((var_162_2.y or 0) - (arg_162_1.y or 0)) * 0.5
		local var_162_5 = math.sqrt(var_162_3 * var_162_3 + var_162_4 * var_162_4)

		if var_162_5 < 0.001 then
			var_162_3, var_162_4 = arg_162_1._attackFacing or 1, 0
		else
			var_162_3, var_162_4 = var_162_3 / var_162_5, var_162_4 / var_162_5
		end

		var_162_1.nx, var_162_1.ny = var_162_3, var_162_4

		if not __recovered_scope_0.var_0_109(var_162_2) then
			var_162_2._collisionDrive = {
				distance = 12,
				t = 0,
				phase = "windup",
				owner = arg_162_1,
				chainCast = require("src.game.combat").chain_casting.capture(arg_162_1),
				cast = var_162_1,
				nx = var_162_3,
				ny = var_162_4,
				dur = arg_162_1.skill.dur or 0.5,
				stunDur = arg_162_1.skill.stunDur or 0.5
			}
			var_162_2._kb = nil

			__recovered_scope_0.var_0_110(var_162_2)
		end
	end

	if arg_162_2 > 0 then
		__recovered_scope_0.var_0_107.advance(arg_162_0, arg_162_1, var_162_1, arg_162_3, arg_162_4)
	end
end

function __recovered_scope_0.var_0_107.onAnimation(arg_163_0, arg_163_1, arg_163_2, arg_163_3, arg_163_4, arg_163_5, arg_163_6)
	local var_163_0 = arg_163_1.skill and arg_163_1.skill.burstCast

	if not __recovered_scope_0.var_0_108(arg_163_1) or not var_163_0 or not arg_163_1.anim or arg_163_1.anim.name ~= "attack2" then
		return
	end

	if arg_163_1.anim.frame >= 4 and not var_163_0.fired then
		arg_163_1.anim.frame, arg_163_1.anim.t = 4, 0

		__recovered_scope_0.var_0_107.advance(arg_163_0, arg_163_1, var_163_0, arg_163_4, arg_163_5)

		var_163_0.fired = true

		local var_163_1 = var_163_0.target
		local var_163_2 = tonumber(arg_163_1.skill.range) or 35
		local var_163_3 = var_163_1 and __recovered_scope_0.var_0_117(arg_163_0, arg_163_1, var_163_0, arg_163_5)

		if __recovered_scope_0.var_0_108(var_163_1) and arg_163_4(var_163_1, arg_163_1, arg_163_0) and var_163_3 <= var_163_2 * var_163_2 then
			__recovered_scope_0.var_0_107.impact(arg_163_1, var_163_1, arg_163_3, arg_163_6, true)

			if not __recovered_scope_0.var_0_108(var_163_1) or __recovered_scope_0.var_0_109(var_163_1) then
				require("src.game.combat").branching_bloom.nearby(arg_163_0, arg_163_1, {
					[var_163_1] = true
				}, arg_163_3 * (arg_163_1.skill.dmgMul or 1.3), arg_163_4, arg_163_6, var_163_2)
			end
		else
			__recovered_scope_0.var_0_116(arg_163_1, var_163_0)
		end
	elseif arg_163_1.anim.frame >= 5 and not var_163_0.released then
		arg_163_1.anim.frame, arg_163_1.anim.t = 5, 0

		__recovered_scope_0.var_0_107.advance(arg_163_0, arg_163_1, var_163_0, arg_163_4, arg_163_5)

		var_163_0.released = true

		local var_163_4 = var_163_0.target
		local var_163_5 = var_163_4 and var_163_4._collisionDrive

		if var_163_5 and var_163_5.cast == var_163_0 and var_163_5.atk then
			var_163_5.phase, var_163_5.checkContact = "release", true

			__recovered_scope_0.var_0_107.update(arg_163_0, var_163_4, 0, arg_163_4, arg_163_6)
		else
			__recovered_scope_0.var_0_116(arg_163_1, var_163_0)
		end
	end

	if arg_163_1.anim.frame > (arg_163_2 and arg_163_2.animations and arg_163_2.animations.attack2 and arg_163_2.animations.attack2.frames or 6) then
		__recovered_scope_0.var_0_116(arg_163_1, var_163_0)

		arg_163_1._collisionWindup = nil

		__recovered_scope_0.var_0_97.finishCast(arg_163_1)
	end
end

function __recovered_scope_0.var_0_107.updatePassenger(arg_164_0)
	local var_164_0 = arg_164_0._collisionDrivePassenger

	if var_164_0 and (not __recovered_scope_0.var_0_108(arg_164_0) or not __recovered_scope_0.var_0_108(var_164_0.driver) or var_164_0.driver._collisionDrive ~= var_164_0.drive or var_164_0.drive.contactTarget ~= arg_164_0) then
		arg_164_0._collisionDrivePassenger = nil

		if (arg_164_0.stunT or 0) <= 0 and not arg_164_0._casting then
			arg_164_0._suppressAttack = false
		end
	end
end

function __recovered_scope_0.var_0_107.update(arg_165_0, arg_165_1, arg_165_2, arg_165_3, arg_165_4)
	local var_165_0 = arg_165_1._collisionDrive

	if not var_165_0 then
		return
	end

	if not __recovered_scope_0.var_0_108(arg_165_1) or __recovered_scope_0.var_0_109(arg_165_1) then
		__recovered_scope_0.var_0_111(arg_165_1)

		return
	end

	if var_165_0.phase == "windup" then
		if not __recovered_scope_0.var_0_108(var_165_0.owner) or not var_165_0.owner.skill or var_165_0.owner.skill.burstCast ~= var_165_0.cast or not var_165_0.owner.anim or var_165_0.owner.anim.name ~= "attack2" then
			__recovered_scope_0.var_0_111(arg_165_1)
		end

		return
	end

	if arg_165_2 <= 0 and not var_165_0.checkContact then
		return
	end

	var_165_0.checkContact = nil

	local var_165_1 = math.min(1, var_165_0.t / var_165_0.dur)

	var_165_0.t = math.min(var_165_0.dur, var_165_0.t + arg_165_2)

	local var_165_2 = var_165_0.t / var_165_0.dur
	local var_165_3 = ((1 - var_165_1)^2 - (1 - var_165_2)^2) * var_165_0.distance
	local var_165_4 = var_165_0.nx * var_165_3
	local var_165_5 = var_165_0.ny * var_165_3
	local var_165_6, var_165_7, var_165_8, var_165_9 = __recovered_scope_0.var_0_112(arg_165_1)
	local var_165_10
	local var_165_11 = math.huge

	for iter_165_0, iter_165_1 in ipairs(arg_165_0.enemies or {}) do
		if iter_165_1 ~= arg_165_1 and __recovered_scope_0.var_0_108(iter_165_1) and not __recovered_scope_0.var_0_109(iter_165_1) and arg_165_3(iter_165_1, var_165_0.owner, arg_165_0) then
			local var_165_12, var_165_13, var_165_14, var_165_15 = __recovered_scope_0.var_0_112(iter_165_1)

			if (var_165_12 + var_165_14 * 0.5 - (var_165_6 + var_165_8 * 0.5)) * var_165_0.nx + (var_165_13 + var_165_15 * 0.5 - (var_165_7 + var_165_9 * 0.5)) * var_165_0.ny >= 0 then
				local var_165_16 = __recovered_scope_0.var_0_113(var_165_6, var_165_7, var_165_8, var_165_9, var_165_4, var_165_5, iter_165_1)

				if var_165_16 and (var_165_16 < var_165_11 or var_165_16 == var_165_11 and iter_165_1 == var_165_0.contactTarget) then
					var_165_10, var_165_11 = iter_165_1, var_165_16
				end
			end
		end
	end

	if var_165_10 then
		var_165_4, var_165_5 = var_165_4 * var_165_11, var_165_5 * var_165_11
	end

	arg_165_1.x, arg_165_1.y = (arg_165_1.x or 0) + var_165_4, (arg_165_1.y or 0) + var_165_5

	for iter_165_2, iter_165_3 in ipairs({
		"colX",
		"_bodyColX"
	}) do
		if arg_165_1[iter_165_3] then
			arg_165_1[iter_165_3] = arg_165_1[iter_165_3] + var_165_4
		end
	end

	for iter_165_4, iter_165_5 in ipairs({
		"colY",
		"_bodyColY"
	}) do
		if arg_165_1[iter_165_5] then
			arg_165_1[iter_165_5] = arg_165_1[iter_165_5] + var_165_5
		end
	end

	if var_165_10 then
		__recovered_scope_0.var_0_111(arg_165_1)
		require("src.game.combat").branching_bloom.nearby(arg_165_0, var_165_0.owner, {
			[arg_165_1] = true,
			[var_165_10] = true
		}, var_165_0.atk * 0.6, arg_165_3, arg_165_4, var_165_0.owner.skill.range or 35)

		for iter_165_6, iter_165_7 in ipairs({
			arg_165_1,
			var_165_10
		}) do
			if __recovered_scope_0.var_0_108(iter_165_7) then
				arg_165_4(iter_165_7, var_165_0.atk * 0.6, var_165_0.owner, nil, {
					battleSkillDamage = true
				})

				if __recovered_scope_0.var_0_108(iter_165_7) then
					iter_165_7.stunT = math.max(iter_165_7.stunT or 0, var_165_0.stunDur)
					iter_165_7._kb = nil

					__recovered_scope_0.var_0_110(iter_165_7)

					iter_165_7.hitFlash = {
						t = 0,
						dur = 0.16
					}
					iter_165_7.hitShake = {
						t = 0,
						amp = 2,
						dur = 0.18
					}
				end
			end
		end
	elseif var_165_0.t >= var_165_0.dur then
		require("src.game.combat").branching_bloom.nearby(arg_165_0, var_165_0.owner, {
			[arg_165_1] = true
		}, var_165_0.atk * (var_165_0.owner.skill.dmgMul or 1.3), arg_165_3, arg_165_4, var_165_0.owner.skill.range or 35)
		__recovered_scope_0.var_0_111(arg_165_1)
	end
end

 __recovered_scope_0.var_0_118 = __recovered_scope_0.var_0_107
 __recovered_scope_0.var_0_119 = nil
 __recovered_scope_0.var_0_120 = {}

 function __recovered_scope_0.var_0_121(arg_166_0)
	return arg_166_0 and arg_166_0.alive and not arg_166_0.dying
end

 function __recovered_scope_0.var_0_122(arg_167_0)
	return __recovered_scope_0.var_0_121(arg_167_0) and (arg_167_0.stunT or 0) <= 0 and not arg_167_0._venomMawSwallowed and not arg_167_0._cosmicPressure and not arg_167_0._caveBasiliskPetrified and not arg_167_0._oathHelmStone and not arg_167_0._wastelandPiperCharm and not arg_167_0._succubusCharm
end

 function __recovered_scope_0.var_0_123(arg_168_0)
	local var_168_0 = arg_168_0.skill

	var_168_0.state, var_168_0.active, var_168_0.cycloneCast, var_168_0.cdT, var_168_0.activeT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_168_0), 0
	arg_168_0._casting, arg_168_0._suppressAttack = false, false
	arg_168_0._forceAnim, arg_168_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_120.active(arg_169_0)
	local var_169_0 = arg_169_0 and arg_169_0.skill

	return __recovered_scope_0.var_0_122(arg_169_0) and var_169_0 and var_169_0.kind == "SpearCyclone" and var_169_0.state == "active" and var_169_0.cycloneCast and var_169_0.cycloneCast.t < (var_169_0.dur or 1) and arg_169_0.anim and arg_169_0.anim.name == "attack2"
end

function __recovered_scope_0.var_0_120.isBasicProjectile(arg_170_0)
	return arg_170_0 and arg_170_0.alive and arg_170_0.side == "enemy" and arg_170_0.basicAttack == true and not arg_170_0.battleSkillDamage and not arg_170_0.skillDamage and not arg_170_0.skillBig and not arg_170_0.caveBasiliskPetrify and not arg_170_0.gazerGaze and not arg_170_0.bloodMoonSlash and not arg_170_0.starlightTheftProjectile and not arg_170_0.starPriestessHammer and not arg_170_0.dragonkinFlameMud and not arg_170_0.visualOnly and not arg_170_0.didDamage
end

function __recovered_scope_0.var_0_120.contact(arg_171_0, arg_171_1, arg_171_2, arg_171_3, arg_171_4, arg_171_5, arg_171_6)
	local var_171_0 = arg_171_0 - arg_171_4
	local var_171_1 = arg_171_1 - arg_171_5
	local var_171_2 = var_171_0 * var_171_0 + var_171_1 * var_171_1 - arg_171_6 * arg_171_6

	if var_171_2 <= 0 then
		return 0
	end

	local var_171_3 = arg_171_2 * arg_171_2 + arg_171_3 * arg_171_3

	if var_171_3 <= 1e-06 then
		return nil
	end

	local var_171_4 = var_171_0 * arg_171_2 + var_171_1 * arg_171_3
	local var_171_5 = var_171_4 * var_171_4 - var_171_3 * var_171_2

	if var_171_5 < 0 then
		return nil
	end

	local var_171_6 = (-var_171_4 - math.sqrt(var_171_5)) / var_171_3

	if var_171_6 >= 0 and var_171_6 <= 1 then
		return var_171_6
	end
end

 function __recovered_scope_0.var_0_124(arg_172_0, arg_172_1, arg_172_2, arg_172_3, arg_172_4)
	local var_172_0 = require("src.game.projectiles").spear_cyclone_area
	local var_172_1, var_172_2 = var_172_0.worldAnchor(arg_172_0, arg_172_1)

	if not var_172_1 then
		return
	end

	local var_172_3 = var_172_0.shapes(var_172_1, var_172_2, arg_172_2.radius, arg_172_2.pulses * 0.2)
	local var_172_4 = {}

	for iter_172_0, iter_172_1 in ipairs(arg_172_0.enemies or {}) do
		if __recovered_scope_0.var_0_121(iter_172_1) and arg_172_3(iter_172_1, arg_172_1, arg_172_0) then
			local var_172_5 = (iter_172_1.x or 0) - (arg_172_1.x or 0)
			local var_172_6 = (iter_172_1.y or 0) - (arg_172_1.y or 0)

			if var_172_5 * var_172_5 + var_172_6 * var_172_6 <= arg_172_2.radius * arg_172_2.radius then
				var_172_4[iter_172_1] = var_172_0.hitsTarget(var_172_3, iter_172_1, arg_172_0.getUnitAssetForEnemy and arg_172_0:getUnitAssetForEnemy(iter_172_1))
			end
		end
	end

	if #arg_172_2.targets < require("src.game.combat").branching_bloom.limit(arg_172_0, arg_172_1, 3) then
		local var_172_7 = {}

		for iter_172_2, iter_172_3 in ipairs(arg_172_0.enemies or {}) do
			if __recovered_scope_0.var_0_121(iter_172_3) and not arg_172_2.seen[iter_172_3] and arg_172_3(iter_172_3, arg_172_1, arg_172_0) then
				local var_172_8 = (iter_172_3.x or 0) - (arg_172_1.x or 0)
				local var_172_9 = (iter_172_3.y or 0) - (arg_172_1.y or 0)

				if var_172_4[iter_172_3] then
					var_172_7[#var_172_7 + 1] = {
						unit = iter_172_3,
						d2 = var_172_8 * var_172_8 + var_172_9 * var_172_9,
						index = iter_172_2
					}
				end
			end
		end

		table.sort(var_172_7, function(arg_173_0, arg_173_1)
			if arg_173_0.d2 == arg_173_1.d2 then
				return arg_173_0.index < arg_173_1.index
			end

			return arg_173_0.d2 < arg_173_1.d2
		end)

		for iter_172_4, iter_172_5 in ipairs(var_172_7) do
			if #arg_172_2.targets >= require("src.game.combat").branching_bloom.limit(arg_172_0, arg_172_1, 3) then
				break
			end

			if not arg_172_2.seen[iter_172_5.unit] then
				arg_172_2.seen[iter_172_5.unit] = true
				arg_172_2.targets[#arg_172_2.targets + 1] = iter_172_5.unit
			end
		end
	end

	for iter_172_6, iter_172_7 in ipairs(arg_172_2.targets) do
		if not __recovered_scope_0.var_0_122(arg_172_1) then
			return
		end

		if __recovered_scope_0.var_0_121(iter_172_7) and arg_172_3(iter_172_7, arg_172_1, arg_172_0) and var_172_4[iter_172_7] and not require("src.game.combat").branching_bloom.extra(arg_172_0, arg_172_1, iter_172_6, 3, iter_172_7, arg_172_2.atk * (arg_172_1.skill.dmgMul or 0.25), arg_172_4) then
			arg_172_4(iter_172_7, arg_172_2.atk * (arg_172_1.skill.dmgMul or 0.25), arg_172_1, nil, {
				battleSkillDamage = true,
				cycloneFinal = arg_172_2.pulses == 5
			})
		end
	end
end

function __recovered_scope_0.var_0_120.updateCast(arg_174_0, arg_174_1, arg_174_2, arg_174_3, arg_174_4, arg_174_5, arg_174_6)
	local var_174_0 = arg_174_1.skill

	if var_174_0.state == "active" then
		if not __recovered_scope_0.var_0_120.active(arg_174_1) then
			__recovered_scope_0.var_0_123(arg_174_1)

			return
		end

		local var_174_1 = var_174_0.cycloneCast

		var_174_1.size = arg_174_6 or var_174_1.size
		var_174_1.t = math.min(var_174_0.dur or 1, var_174_1.t + math.max(0, arg_174_2))
		var_174_0.activeT = var_174_1.t

		while var_174_1.pulses < 5 and var_174_1.t + 1e-09 >= (var_174_1.pulses + 1) * 0.2 do
			var_174_1.pulses = var_174_1.pulses + 1

			__recovered_scope_0.var_0_124(arg_174_0, arg_174_1, var_174_1, arg_174_3, arg_174_4)

			if not __recovered_scope_0.var_0_122(arg_174_1) then
				__recovered_scope_0.var_0_123(arg_174_1)

				return
			end
		end

		if var_174_1.t >= (var_174_0.dur or 1) then
			__recovered_scope_0.var_0_123(arg_174_1)

			return
		end

		arg_174_1._casting, arg_174_1._suppressAttack = true, true
		arg_174_1._forceAnim, arg_174_1._forceAnimT = "attack2", math.max(0.2, arg_174_2 + 0.1)
		arg_174_1._attackFacing, arg_174_1.facing = var_174_1.facing, var_174_1.facing

		return
	end

	var_174_0.cdT = (var_174_0.cdT or 0) + arg_174_2

	if var_174_0.cdT < (var_174_0.cd or 6) then
		return
	end

	var_174_0.ready = true

	if not __recovered_scope_0.var_0_122(arg_174_1) or not arg_174_1.anim then
		return
	end

	local var_174_2 = var_174_0.range or 40
	local var_174_3 = {}
	local var_174_4 = {}

	for iter_174_0, iter_174_1 in ipairs(arg_174_0.enemies or {}) do
		if __recovered_scope_0.var_0_121(iter_174_1) and not var_174_4[iter_174_1] and arg_174_3(iter_174_1, arg_174_1, arg_174_0) then
			var_174_4[iter_174_1] = true

			local var_174_5 = (iter_174_1.x or 0) - (arg_174_1.x or 0)
			local var_174_6 = (iter_174_1.y or 0) - (arg_174_1.y or 0)

			if var_174_5 * var_174_5 + var_174_6 * var_174_6 <= var_174_2 * var_174_2 then
				var_174_3[#var_174_3 + 1] = {
					unit = iter_174_1,
					d2 = var_174_5 * var_174_5 + var_174_6 * var_174_6,
					index = iter_174_0
				}
			end
		end
	end

	table.sort(var_174_3, function(arg_175_0, arg_175_1)
		if arg_175_0.d2 == arg_175_1.d2 then
			return arg_175_0.index < arg_175_1.index
		end

		return arg_175_0.d2 < arg_175_1.d2
	end)

	local var_174_7 = false

	if #var_174_3 == 0 then
		for iter_174_2, iter_174_3 in ipairs(arg_174_0.projectiles or {}) do
			if __recovered_scope_0.var_0_120.isBasicProjectile(iter_174_3) and __recovered_scope_0.var_0_120.contact(iter_174_3.x or 0, iter_174_3.y or 0, (iter_174_3.vx or 0) * (iter_174_3.holdSpawnPosition and 0 or arg_174_2), (iter_174_3.vy or 0) * (iter_174_3.holdSpawnPosition and 0 or arg_174_2), arg_174_1.x or 0, arg_174_1.y or 0, var_174_2) then
				var_174_7 = true

				break
			end
		end
	end

	if #var_174_3 == 0 and not var_174_7 then
		return
	end

	local var_174_8 = var_174_3[1] and ((var_174_3[1].unit.x or 0) >= (arg_174_1.x or 0) and 1 or -1) or arg_174_1.facing or 1

	require("src.game.combat").chain_casting.begin(arg_174_1)

	var_174_0.state, var_174_0.active, var_174_0.ready, var_174_0.cdT, var_174_0.activeT = "active", true, false, require("src.game.combat").chain_casting.reset(var_174_0), 0
	var_174_0.cycloneCast = {
		removed = 0,
		t = 0,
		pulses = 0,
		radius = var_174_2,
		facing = var_174_8,
		parries = {},
		atk = arg_174_5,
		size = arg_174_6,
		targets = {},
		seen = {}
	}
	arg_174_1._pendingSpearHit, arg_174_1.shotPending, arg_174_1.pendingTarget = nil, false
	arg_174_1._casting, arg_174_1._suppressAttack = true, true
	arg_174_1._forceAnim, arg_174_1._forceAnimT = "attack2", math.max(0.2, arg_174_2 + 0.1)
	arg_174_1._attackFacing, arg_174_1.facing = var_174_8, var_174_8
	arg_174_1.anim.name, arg_174_1.anim.frame, arg_174_1.anim.t, arg_174_1.anim.reverse = "attack2", 1, 0
	arg_174_1.anim._desynced = true
end

function __recovered_scope_0.var_0_120.onAnimation(arg_176_0)
	if __recovered_scope_0.var_0_120.active(arg_176_0) and arg_176_0.anim.frame > 7 then
		arg_176_0.anim.frame, arg_176_0.anim.t = 7, 0
	end
end

function __recovered_scope_0.var_0_120.intercept(arg_177_0, arg_177_1, arg_177_2, arg_177_3)
	if arg_177_2 <= 0 or not __recovered_scope_0.var_0_120.isBasicProjectile(arg_177_1) then
		return false
	end

	local var_177_0 = arg_177_1.holdSpawnPosition and 0 or arg_177_2
	local var_177_1 = (arg_177_1.vx or 0) * var_177_0
	local var_177_2 = (arg_177_1.vy or 0) * var_177_0
	local var_177_3
	local var_177_4

	for iter_177_0, iter_177_1 in ipairs(arg_177_0.allies or {}) do
		if __recovered_scope_0.var_0_120.active(iter_177_1) and iter_177_1.skill.cycloneCast.removed < 2 + (not require("src.game.awakening").isV8(iter_177_1, arg_177_0) and require("src.game.awakening").has(iter_177_1, "S15") and 1 or 0) then
			local var_177_5, var_177_6 = require("src.game.projectiles").spear_cyclone_area.worldAnchor(arg_177_0, iter_177_1)
			local var_177_7 = iter_177_1.skill.cycloneCast
			local var_177_8 = var_177_7.radius * 1.05 * (1 + 0.06 * math.sin(var_177_7.t * 26))
			local var_177_9 = var_177_5 and __recovered_scope_0.var_0_120.contact(arg_177_1.x or 0, (arg_177_1.y or 0) / 0.58, var_177_1, var_177_2 / 0.58, var_177_5, var_177_6 / 0.58, var_177_8)

			if var_177_9 and (not var_177_4 or var_177_9 < var_177_4) then
				var_177_3, var_177_4 = iter_177_1, var_177_9
			end
		end
	end

	if not var_177_3 then
		return false
	end

	local var_177_10 = var_177_3.skill.cycloneCast

	var_177_10.removed = var_177_10.removed + 1
	var_177_10.parries[#var_177_10.parries + 1] = {
		x = (arg_177_1.x or 0) + var_177_1 * var_177_4,
		y = (arg_177_1.y or 0) + var_177_2 * var_177_4,
		t = var_177_10.t
	}
	arg_177_1.x, arg_177_1.y = (arg_177_1.x or 0) + var_177_1 * var_177_4, (arg_177_1.y or 0) + var_177_2 * var_177_4

	local var_177_11, var_177_12 = require("src.game.projectiles").spear_cyclone_area.worldAnchor(arg_177_0, var_177_3)
	local var_177_13 = arg_177_1.x - var_177_11
	local var_177_14 = (arg_177_1.y - var_177_12) / 0.3364
	local var_177_15 = math.sqrt(var_177_13 * var_177_13 + var_177_14 * var_177_14)

	if var_177_15 < 0.001 then
		var_177_13, var_177_14 = -(arg_177_1.vx or 1), -(arg_177_1.vy or 0)
		var_177_15 = math.max(0.001, math.sqrt(var_177_13 * var_177_13 + var_177_14 * var_177_14))
	end

	local var_177_16, var_177_17 = var_177_13 / var_177_15, var_177_14 / var_177_15
	local var_177_18 = math.max(130, math.min(260, math.sqrt((arg_177_1.vx or 0)^2 + (arg_177_1.vy or 0)^2) * 0.8))

	arg_177_1.vx, arg_177_1.vy = var_177_16 * var_177_18, var_177_17 * var_177_18 - 110
	arg_177_1._spearCycloneDeflect = {
		t = 0,
		dur = 0.55,
		spin = (var_177_16 >= 0 and 1 or -1) * 13,
		alpha = arg_177_1.alpha or 1,
		remaining = math.max(0, arg_177_2 - var_177_0 * var_177_4)
	}
	arg_177_1.visualOnly, arg_177_1.basicAttack, arg_177_1.didDamage = true, false, true
	arg_177_1.holdSpawnPosition, arg_177_1.anchoredLaser, arg_177_1.opaqueBottomAnchor = nil
	arg_177_1.renderAboveOwner = true
	arg_177_1._spearCycloneRemoved = true

	return true
end

function __recovered_scope_0.var_0_120.updateDeflected(arg_178_0, arg_178_1)
	local var_178_0 = arg_178_0._spearCycloneDeflect

	if not var_178_0 or arg_178_1 <= 0 then
		return
	end

	if var_178_0.remaining then
		arg_178_1 = var_178_0.remaining
		var_178_0.remaining = nil
	end

	arg_178_1 = math.max(0, math.min(arg_178_1, var_178_0.dur - var_178_0.t))
	var_178_0.t = var_178_0.t + arg_178_1
	arg_178_0.x = arg_178_0.x + arg_178_0.vx * arg_178_1
	arg_178_0.y = arg_178_0.y + arg_178_0.vy * arg_178_1 + 320 * arg_178_1 * arg_178_1
	arg_178_0.vy = arg_178_0.vy + 640 * arg_178_1
	arg_178_0.rot = (arg_178_0.rot or 0) + var_178_0.spin * arg_178_1
	arg_178_0.alpha = var_178_0.alpha * math.min(1, math.max(0, (var_178_0.dur - var_178_0.t) / 0.18))

	if var_178_0.t >= var_178_0.dur then
		arg_178_0.alive = false
	end
end

 __recovered_scope_0.var_0_125 = __recovered_scope_0.var_0_120
 __recovered_scope_0.var_0_126 = nil
 __recovered_scope_0.var_0_127 = {
	updateHorseKnockbackCooldown = function(arg_179_0, arg_179_1)
		if not arg_179_0._plainsHorseKnockbackT then
			return
		end

		local var_179_0 = arg_179_0._plainsHorseKnockbackT - math.max(0, arg_179_1)

		arg_179_0._plainsHorseKnockbackT = var_179_0 > 1e-09 and var_179_0 or nil
	end,
	updateHop = function(arg_180_0, arg_180_1)
		local var_180_0 = arg_180_0._kb

		if not var_180_0 or not var_180_0.waveHop then
			return
		end

		local var_180_1 = math.min(1, (var_180_0.t or 0) / var_180_0.dur)

		var_180_0.t = math.min(var_180_0.dur, (var_180_0.t or 0) + math.max(0, arg_180_1))

		local var_180_2 = var_180_0.t / var_180_0.dur
		local var_180_3 = var_180_0.dist * (2 * var_180_2 - var_180_2 * var_180_2 - (2 * var_180_1 - var_180_1 * var_180_1))

		arg_180_0.x = (arg_180_0.x or 0) + var_180_0.dirX * var_180_3
		arg_180_0.y = (arg_180_0.y or 0) + (var_180_0.dirY or 0) * var_180_3

		if var_180_0.t >= var_180_0.dur then
			arg_180_0._kb = nil
		end
	end,
	hopLift = function(arg_181_0, arg_181_1)
		local var_181_0 = arg_181_0 and arg_181_0._kb

		if not var_181_0 or not var_181_0.waveHop then
			return 0
		end

		local var_181_1 = math.max(0, math.min(1, (var_181_0.t or 0) / var_181_0.dur))

		return 4 * var_181_1 * (1 - var_181_1) * var_181_0.height * (arg_181_1 or 1)
	end
}
 __recovered_scope_0.var_0_128 = {
	"stingerPoison",
	"poison",
	"shrinkDebuff",
	"_flameEruptionBurn",
	"firebreatherBurn",
	"dragonkinBurn",
	"doomDragonBurn",
	"_suppressiveRound",
	"_shatterCannon",
	"_spaceHunterGravityRange",
	"_bleed"
}

function __recovered_scope_0.var_0_127.debuffKey(arg_182_0)
	for iter_182_0, iter_182_1 in ipairs(__recovered_scope_0.var_0_128) do
		if __recovered_scope_0.var_0_84.isActive(arg_182_0, iter_182_1) then
			return iter_182_1
		end
	end
end

function __recovered_scope_0.var_0_127.cleanseOne(arg_183_0, arg_183_1)
	arg_183_1 = arg_183_1 or __recovered_scope_0.var_0_127.debuffKey(arg_183_0)

	if not arg_183_1 then
		return false
	end

	local var_183_0 = arg_183_0[arg_183_1]

	if arg_183_1 == "gazerAtkDown" then
		local var_183_1 = tonumber(var_183_0.mul) or 0.8

		if var_183_1 > 0 then
			arg_183_0.dmg = math.max(0, (tonumber(arg_183_0.dmg) or 0) / var_183_1)
		end
	elseif arg_183_1 == "_suppressiveRound" or arg_183_1 == "_shatterCannon" then
		var_183_0.t = 0

		__recovered_scope_0.var_0_80.updateDebuff(arg_183_0, 0)

		if arg_183_0._spaceHunterGravityRange then
			arg_183_0.distance = math.min(arg_183_0.distance, arg_183_0._spaceHunterGravityRange.range or 55)
		end
	elseif arg_183_1 == "_spaceHunterGravityRange" then
		arg_183_0.distance = var_183_0.originalDistance or arg_183_0.distance

		if arg_183_0._suppressiveRound then
			arg_183_0.distance = math.min(arg_183_0.distance, arg_183_0._suppressiveRound.baseDistance * 0.65)
		end

		if arg_183_0._shatterCannon then
			arg_183_0.distance = math.min(arg_183_0.distance, 60)
		end
	elseif arg_183_1 == "shrinkDebuff" then
		var_183_0.dur = 0

		__recovered_scope_0.var_0_43.update(arg_183_0, 0)
	end

	if arg_183_1 == "stingerPoison" then
		if arg_183_0.poison == var_183_0 or arg_183_0.poison and arg_183_0.poison.source == "stinger_bat" then
			arg_183_0.poison = nil
		end
	elseif arg_183_1 == "poison" and arg_183_0.stingerPoison == var_183_0 then
		arg_183_0.stingerPoison = nil
	end

	arg_183_0[arg_183_1] = nil

	return true, arg_183_1
end

 __recovered_scope_0.var_0_129 = __recovered_scope_0.var_0_127
 __recovered_scope_0.var_0_130 = nil
 __recovered_scope_0.var_0_131 = {}

 function __recovered_scope_0.var_0_132(arg_184_0)
	return arg_184_0 and arg_184_0.alive and not arg_184_0.dying and (arg_184_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_131.immune(arg_185_0, arg_185_1)
	return arg_185_0 and arg_185_0.isFireSpirit and arg_185_1 and arg_185_1.burn == true
end

function __recovered_scope_0.var_0_131.applyBurn(arg_186_0, arg_186_1, arg_186_2)
	if not __recovered_scope_0.var_0_132(arg_186_0) or arg_186_0.isFireSpirit then
		return
	end

	if require("src.game.combat").status_effects.blindMiss(arg_186_1) then
		return
	end

	local var_186_0 = arg_186_0.firebreatherBurn

	if var_186_0 and var_186_0.fireSpirit and (var_186_0.t or 0) > 0 then
		var_186_0.t = 3

		return
	end

	arg_186_0.firebreatherBurn = {
		fireSpirit = true,
		t = 3,
		visualT = 0,
		tickT = 0,
		source = arg_186_1,
		sourceAtk = arg_186_2 or arg_186_1.dmg or 12,
		tickDamage = math.floor((arg_186_2 or arg_186_1.dmg or 12) * 0.3 + 0.5)
	}
end

function __recovered_scope_0.var_0_131.finish(arg_187_0)
	local var_187_0 = arg_187_0.skill

	if var_187_0.flameCast and var_187_0.flameCast.emerging and var_187_0.flameCast.emerging._fireSpiritEmerging then
		var_187_0.flameCast.emerging.alive = false
	end

	local var_187_1 = var_187_0.flameCast and var_187_0.flameCast.partner

	if var_187_1 then
		var_187_1._flameDescentPartner = nil
		var_187_1._casting, var_187_1._suppressAttack = false, false

		if __recovered_scope_0.var_0_132(var_187_1) and var_187_1.anim and var_187_1.anim.name == "attack2" then
			var_187_1.anim = {
				t = 0,
				name = "idle",
				frame = 1
			}
		end
	end

	var_187_0.state, var_187_0.active, var_187_0.flameCast, var_187_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_187_0)
	arg_187_0._casting, arg_187_0._suppressAttack = false, false
	arg_187_0._forceAnim, arg_187_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_131.updateCast(arg_188_0, arg_188_1, arg_188_2, arg_188_3, arg_188_4)
	local var_188_0 = arg_188_1.skill

	if not __recovered_scope_0.var_0_132(arg_188_1) or (arg_188_1.stunT or 0) > 0 or (arg_188_1.fearT or 0) > 0 or arg_188_1._caveBasiliskPetrified or arg_188_1._oathHelmStone or arg_188_1._venomMawSwallowed or arg_188_1._succubusCharm or arg_188_1._wastelandPiperCharm then
		if var_188_0.state then
			__recovered_scope_0.var_0_131.finish(arg_188_1)
		end

		return
	end

	if var_188_0.state == "active" then
		if not arg_188_1.anim or arg_188_1.anim.name ~= "attack2" then
			__recovered_scope_0.var_0_131.finish(arg_188_1)

			return
		end

		arg_188_1._casting, arg_188_1._suppressAttack = true, true
		arg_188_1._forceAnim, arg_188_1._forceAnimT = "attack2", math.max(0.2, arg_188_2 + 0.1)

		return
	end

	var_188_0.cdT = (var_188_0.cdT or 0) + arg_188_2

	if var_188_0.cdT < (var_188_0.cd or 8) or not arg_188_1.anim then
		return
	end

	local var_188_1

	if var_188_0.kind == "FlameDescent" and __recovered_scope_0.var_0_131.findSpirit(arg_188_0, arg_188_1) then
		var_188_1 = __recovered_scope_0.var_0_131.chooseTarget(arg_188_0, arg_188_1, arg_188_3, arg_188_4)
		var_188_1 = require("src.game.awakening").skillAim(arg_188_0, arg_188_1, var_188_1, (arg_188_1.distance or 140) + 1, 45, 3, arg_188_3, arg_188_4)

		if not var_188_1 then
			var_188_0.cdT = math.min(var_188_0.cdT, var_188_0.cd or 8)

			return
		end

		arg_188_1.facing = var_188_1.x >= arg_188_1.x and 1 or -1
	end

	require("src.game.combat").chain_casting.begin(arg_188_1)

	var_188_0.state, var_188_0.active, var_188_0.cdT = "active", true, require("src.game.combat").chain_casting.reset(var_188_0)
	var_188_0.flameCast = {
		fired = false,
		target = var_188_1
	}

	require("src.game.awakening").trackSkill(arg_188_0, arg_188_1, var_188_0.flameCast)

	arg_188_1._casting, arg_188_1._suppressAttack = true, true
	arg_188_1.shotPending, arg_188_1.pendingTarget, arg_188_1._volleyFollowup = false
	arg_188_1._forceAnim, arg_188_1._forceAnimT = "attack2", math.max(0.2, arg_188_2 + 0.1)
	arg_188_1.anim.name, arg_188_1.anim.frame, arg_188_1.anim.t, arg_188_1.anim.reverse = "attack2", 1, 0
	arg_188_1._attackFacing = arg_188_1.facing or 1
end

function __recovered_scope_0.var_0_131.chooseTarget(arg_189_0, arg_189_1, arg_189_2, arg_189_3)
	local var_189_0
	local var_189_1 = ((arg_189_1.distance or 140) + 1)^2

	for iter_189_0, iter_189_1 in ipairs(arg_189_0.enemies or {}) do
		if __recovered_scope_0.var_0_132(iter_189_1) and (not arg_189_2 or arg_189_2(iter_189_1, arg_189_1, arg_189_0)) then
			local var_189_2 = arg_189_3 and arg_189_3(arg_189_1, iter_189_1) or (iter_189_1.x - arg_189_1.x)^2 + (iter_189_1.y - arg_189_1.y)^2

			if var_189_2 <= var_189_1 then
				var_189_0, var_189_1 = iter_189_1, var_189_2
			end
		end
	end

	return var_189_0
end

function __recovered_scope_0.var_0_131.updateSummon(arg_190_0, arg_190_1)
	if not arg_190_0.isFireSpirit then
		return
	end

	arg_190_0.firebreatherBurn, arg_190_0.dragonkinBurn, arg_190_0.doomDragonBurn, arg_190_0._flameEruptionBurn = nil

	if __recovered_scope_0.var_0_132(arg_190_0) and not __recovered_scope_0.var_0_132(arg_190_0.master) then
		arg_190_0._fireSpiritEmerging = nil

		arg_190_1(arg_190_0)
	end
end

function __recovered_scope_0.var_0_131.findSpirit(arg_191_0, arg_191_1)
	for iter_191_0, iter_191_1 in ipairs(arg_191_0.allies or {}) do
		if iter_191_1.isFireSpirit and iter_191_1.master == arg_191_1 and __recovered_scope_0.var_0_132(iter_191_1) then
			return iter_191_1
		end
	end
end

function __recovered_scope_0.var_0_131.spawn(arg_192_0, arg_192_1, arg_192_2)
	local var_192_0 = (arg_192_1.x or 0) + (arg_192_1._attackFacing or arg_192_1.facing or 1) * 24
	local var_192_1 = arg_192_1.y or 0
	local var_192_2

	arg_192_0._allySpawnIndex, var_192_2 = arg_192_0._allySpawnIndex, arg_192_2("M", var_192_0, var_192_1)
	var_192_2.isSummon, var_192_2.isFireSpirit, var_192_2.master = true, true, arg_192_1

	local var_192_3 = arg_192_1.skill.kind == "FlameDescent"

	var_192_2.isFlameSpirit = var_192_3
	var_192_2.sym, var_192_2.grade, var_192_2.rank = "M", "rare", var_192_3 and 3 or 2
	var_192_2.skin, var_192_2.subclass, var_192_2.subclassName, var_192_2.subclassKey = "Fire Spirit", "불 정령", "불 정령", "불 정령"

	if var_192_3 then
		var_192_2.skin, var_192_2.subclass, var_192_2.subclassName, var_192_2.subclassKey = "Flame Spirit", "화염 정령", "화염 정령", "화염 정령"
	end

	var_192_2.displayName = var_192_2.subclassName
	var_192_2.hp, var_192_2.maxhp, var_192_2.dmg, var_192_2.distance, var_192_2.speed = 100, 100, 12, 50, 60

	if var_192_3 then
		var_192_2.hp, var_192_2.maxhp, var_192_2.dmg, var_192_2.distance, var_192_2.speed = 170, 170, 18, 55, 55
	end

	var_192_2.atkPeriod = var_192_3 and 1.25 or 1.4285714285714286
	var_192_2.atkTicks = math.max(1, math.floor(var_192_2.atkPeriod * 60 + 0.5))
	var_192_2.coolTicks = 0
	var_192_2.role, var_192_2.life = "warrior", math.huge
	var_192_2.randomOptions, var_192_2.randomOption, var_192_2.imprints, var_192_2.skill, var_192_2.spawnVFX = nil, nil, {}
	var_192_2._baseMaxHP, var_192_2._baseDmg = var_192_2.maxhp, var_192_2.dmg
	var_192_2.power, var_192_2._powerRaw, var_192_2._powerMeta = require("src.game.power").power(var_192_2.maxhp, var_192_2.dmg, 1 / var_192_2.atkPeriod)
	var_192_2._fireSpiritEmerging, var_192_2._casting, var_192_2._suppressAttack = true, true, true
	var_192_2.anim = {
		t = 0,
		name = "death",
		frame = 6,
		reverse = true
	}

	require("src.game.awakening").summon(arg_192_0, arg_192_1, var_192_2)

	arg_192_0.allies[#arg_192_0.allies + 1] = var_192_2

	return var_192_2
end

function __recovered_scope_0.var_0_131.burst(arg_193_0, arg_193_1, arg_193_2, arg_193_3, arg_193_4, arg_193_5)
	local var_193_0 = {}
	local var_193_1 = (arg_193_1.skill.burstRange or 50) * require("src.game.awakening").skillScale(arg_193_1)

	for iter_193_0, iter_193_1 in ipairs(arg_193_0.enemies or {}) do
		local var_193_2 = ((iter_193_1.x or 0) - arg_193_2.x)^2 + ((iter_193_1.y or 0) - arg_193_2.y)^2

		if __recovered_scope_0.var_0_132(iter_193_1) and arg_193_4(iter_193_1, arg_193_1, arg_193_0) and var_193_2 <= var_193_1 * var_193_1 then
			var_193_0[#var_193_0 + 1] = {
				e = iter_193_1,
				d = var_193_2
			}
		end
	end

	table.sort(var_193_0, function(arg_194_0, arg_194_1)
		return arg_194_0.d < arg_194_1.d
	end)

	for iter_193_2 = 1, math.min(2, #var_193_0) do
		local var_193_3 = var_193_0[iter_193_2].e

		arg_193_5(var_193_3, arg_193_3 * 0.7, arg_193_1, nil, {
			battleSkillDamage = true
		})
		__recovered_scope_0.var_0_131.applyBurn(var_193_3, arg_193_2)
	end

	require("src.ui.effects").fire_spirit_burst.spawn(arg_193_0, arg_193_2, var_193_1)
end

function __recovered_scope_0.var_0_131.onBasicAnimation(arg_195_0, arg_195_1, arg_195_2, arg_195_3, arg_195_4)
	local var_195_0 = arg_195_1._pendingFireSpiritHit

	if not var_195_0 then
		return
	end

	if not __recovered_scope_0.var_0_132(arg_195_1) or arg_195_1._fireSpiritEmerging or (arg_195_1.stunT or 0) > 0 or (arg_195_1.fearT or 0) > 0 or not arg_195_1.anim or arg_195_1.anim.name ~= "attack" then
		arg_195_1._pendingFireSpiritHit = nil

		return
	end

	local var_195_1 = arg_195_1.isFlameSpirit and 5 or 4

	if var_195_1 > arg_195_1.anim.frame then
		return
	end

	arg_195_1.anim.frame, arg_195_1.anim.t = var_195_1, 0
	arg_195_1._pendingFireSpiritHit = nil

	local var_195_2 = var_195_0.target

	if not __recovered_scope_0.var_0_132(var_195_2) or not arg_195_2(var_195_2, arg_195_1, arg_195_0) then
		return
	end

	if (arg_195_4 and arg_195_4(arg_195_1, var_195_2) or (var_195_2.x - arg_195_1.x)^2 + (var_195_2.y - arg_195_1.y)^2) > ((arg_195_1.distance or 50) + 1)^2 then
		return
	end

	arg_195_3(var_195_2, var_195_0.dmg, arg_195_1, nil, {
		battleSkillDamage = false,
		basicAttack = true
	})
end

function __recovered_scope_0.var_0_131.onAnimation(arg_196_0, arg_196_1, arg_196_2, arg_196_3, arg_196_4, arg_196_5, arg_196_6)
	local var_196_0 = arg_196_1.skill
	local var_196_1 = var_196_0 and var_196_0.flameCast

	if not __recovered_scope_0.var_0_132(arg_196_1) or not var_196_1 or not arg_196_1.anim or arg_196_1.anim.name ~= "attack2" then
		return
	end

	if arg_196_1.anim.frame >= 3 and not var_196_1.fired then
		arg_196_1.anim.frame, arg_196_1.anim.t = 3, 0
		var_196_1.fired = true

		local var_196_2 = __recovered_scope_0.var_0_131.findSpirit(arg_196_0, arg_196_1)

		if var_196_2 and var_196_0.kind == "FlameDescent" then
			var_196_1.partner = var_196_2
			var_196_2._flameDescentPartner = true
			var_196_2._casting, var_196_2._suppressAttack = true, true
			var_196_2._pendingFireSpiritHit = nil
			var_196_2.anim = {
				t = 0,
				name = "attack2",
				frame = 3
			}
			var_196_2.facing = arg_196_1._attackFacing or arg_196_1.facing or 1
		elseif var_196_2 then
			__recovered_scope_0.var_0_131.burst(arg_196_0, arg_196_1, var_196_2, arg_196_4, arg_196_5, arg_196_6)
		else
			var_196_1.emerging = __recovered_scope_0.var_0_131.spawn(arg_196_0, arg_196_1, arg_196_3)
		end
	end

	if var_196_1.partner and __recovered_scope_0.var_0_132(var_196_1.partner) then
		local var_196_3 = var_196_1.partner

		var_196_3.anim.name, var_196_3.anim.frame = "attack2", math.min(9, arg_196_1.anim.frame)

		if arg_196_1.anim.frame >= 5 and not var_196_1.projectileFired then
			arg_196_1.anim.frame, arg_196_1.anim.t = 5, 0
			var_196_3.anim.frame = 5
			var_196_1.projectileFired = true

			require("src.game.awakening").trackSkill(arg_196_0, arg_196_1, var_196_1)

			local var_196_4 = var_196_1.target

			if (not var_196_4 or not var_196_4.awakeningPoint) and (not __recovered_scope_0.var_0_132(var_196_4) or not arg_196_5(var_196_4, arg_196_1, arg_196_0)) then
				var_196_4 = __recovered_scope_0.var_0_131.chooseTarget(arg_196_0, arg_196_1, arg_196_5)
			end

			if var_196_4 and (var_196_3.stunT or 0) <= 0 and (var_196_3.fearT or 0) <= 0 then
				require("src.game.projectiles").flame_descent.launch(arg_196_0, arg_196_1, var_196_3, var_196_4, arg_196_4)
			end
		end
	end

	local var_196_5 = var_196_1.emerging

	if var_196_5 and __recovered_scope_0.var_0_132(var_196_5) and var_196_5._fireSpiritEmerging then
		local var_196_6 = arg_196_2 and arg_196_2.animations and arg_196_2.animations.attack2 and arg_196_2.animations.attack2.frames or 10

		if var_196_6 < 8 and var_196_6 < arg_196_1.anim.frame and not var_196_1.finalEmergenceHeld then
			var_196_1.finalEmergenceHeld = true
			arg_196_1.anim.frame, arg_196_1.anim.t = var_196_6, 0
			var_196_5.anim.name, var_196_5.anim.frame, var_196_5.anim.t, var_196_5.anim.reverse = "death", 1, 0, true

			return
		end

		if arg_196_1.anim.frame <= 8 and not var_196_1.finalEmergenceHeld then
			var_196_5.anim.name, var_196_5.anim.frame, var_196_5.anim.t, var_196_5.anim.reverse = "death", 9 - arg_196_1.anim.frame, 0, true
		else
			var_196_5._fireSpiritEmerging, var_196_5._casting, var_196_5._suppressAttack = nil, false, false
			var_196_5.anim = {
				t = 0,
				name = "idle",
				frame = 1
			}
		end
	end

	if arg_196_1.anim.frame > (arg_196_2 and arg_196_2.animations and arg_196_2.animations.attack2 and arg_196_2.animations.attack2.frames or 10) then
		__recovered_scope_0.var_0_131.finish(arg_196_1)
	end
end

 __recovered_scope_0.var_0_133 = __recovered_scope_0.var_0_131
 __recovered_scope_0.var_0_134 = nil
 __recovered_scope_0.var_0_135 = {
	LINGER = 0.6,
	STAGGER = 0.08,
	ROSTERS = {
		lich = {
			{
				sym = "언데드 거한 (Undead Brute)",
				dx = 48,
				key = "brute",
				dy = 0
			},
			{
				sym = "망자 (Undead)",
				dx = 34,
				key = "undead",
				dy = -20
			},
			{
				sym = "부패자 (Rotter)",
				dx = 34,
				key = "rotter",
				dy = 20
			}
		},
		lich_lord = {
			{
				sym = "망자 도살자 (Undead Butcher)",
				dx = 50,
				key = "butcher",
				dy = 0
			},
			{
				sym = "망자 검병 (Undead Swordman)",
				dx = 36,
				key = "sword1",
				dy = -22
			},
			{
				sym = "망자 검병 (Undead Swordman)",
				dx = 36,
				key = "sword2",
				dy = 22
			},
			{
				sym = "언데드 흉물 (Undead Abomination)",
				dx = 70,
				key = "abomination",
				dy = 12
			}
		}
	}
}

__recovered_scope_0.var_0_135.SLOTS = __recovered_scope_0.var_0_135.ROSTERS.lich

 function __recovered_scope_0.var_0_136(arg_197_0)
	return arg_197_0 and arg_197_0.alive and not arg_197_0.dying and (arg_197_0.hp or 0) > 0
end

 function __recovered_scope_0.var_0_137(arg_198_0)
	return __recovered_scope_0.var_0_136(arg_198_0) and (arg_198_0.stunT or 0) <= 0 and (arg_198_0.fearT or 0) <= 0 and not arg_198_0._caveBasiliskPetrified and not arg_198_0._oathHelmStone and not arg_198_0._venomMawSwallowed and not arg_198_0._succubusCharm and not arg_198_0._wastelandPiperCharm
end

function __recovered_scope_0.var_0_135.runtime(arg_199_0)
	return arg_199_0 and arg_199_0.primarySkillDef and arg_199_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_135.matches(arg_200_0)
	return arg_200_0 ~= nil and arg_200_0.skill ~= nil and arg_200_0.skill.kind == "CallOfTheDead"
end

function __recovered_scope_0.var_0_135.waitingForSummons(arg_201_0)
	local var_201_0 = arg_201_0 and arg_201_0._callOfTheDeadFx

	if not __recovered_scope_0.var_0_135.matches(arg_201_0) or not __recovered_scope_0.var_0_136(arg_201_0) or not var_201_0 then
		return false
	end

	for iter_201_0, iter_201_1 in ipairs(var_201_0.risers or {}) do
		if not iter_201_1.stoodAt and __recovered_scope_0.var_0_136(iter_201_1.unit) then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_135.roster(arg_202_0)
	return __recovered_scope_0.var_0_135.ROSTERS[__recovered_scope_0.var_0_135.runtime(arg_202_0).roster or "lich"] or __recovered_scope_0.var_0_135.SLOTS
end

function __recovered_scope_0.var_0_135.slots(arg_203_0)
	arg_203_0._deadSlots = arg_203_0._deadSlots or {}

	return arg_203_0._deadSlots
end

function __recovered_scope_0.var_0_135.empty(arg_204_0)
	local var_204_0 = {}
	local var_204_1 = __recovered_scope_0.var_0_135.slots(arg_204_0)

	for iter_204_0, iter_204_1 in ipairs(__recovered_scope_0.var_0_135.roster(arg_204_0)) do
		if not __recovered_scope_0.var_0_136(var_204_1[iter_204_1.key]) then
			var_204_0[#var_204_0 + 1] = iter_204_1
		end
	end

	return var_204_0
end

function __recovered_scope_0.var_0_135.prime(arg_205_0)
	local var_205_0 = arg_205_0 and arg_205_0.skill

	if not var_205_0 then
		return
	end

	var_205_0.cd = tonumber(var_205_0.cd) or 8
	var_205_0.cdT, var_205_0.state, var_205_0.active, var_205_0.deadCall, var_205_0.calledOnce = var_205_0.cd, nil, false
	var_205_0._initDelayApplied = true
	arg_205_0._deadSlots = {}
end

function __recovered_scope_0.var_0_135.finish(arg_206_0)
	local var_206_0 = arg_206_0.skill
	local var_206_1 = var_206_0 and var_206_0.deadCall and var_206_0.deadCall.fx

	if var_206_1 and not var_206_1.endAt then
		var_206_1.endAt = var_206_1.t or 0
	end

	if var_206_0 then
		var_206_0.state, var_206_0.active, var_206_0.deadCall, var_206_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_206_0)
	end

	arg_206_0._casting, arg_206_0._suppressAttack = false, false
	arg_206_0._forceAnim, arg_206_0._forceAnimT = nil, 0
end

 function __recovered_scope_0.var_0_138(arg_207_0, arg_207_1)
	arg_207_0._casting, arg_207_0._suppressAttack = true, true
	arg_207_0._forceAnim, arg_207_0._forceAnimT = "attack2", math.max(0.2, (arg_207_1 or 0) + 0.1)
end

function __recovered_scope_0.var_0_135.begin(arg_208_0, arg_208_1, arg_208_2)
	local var_208_0 = arg_208_1.skill
	local var_208_1 = __recovered_scope_0.var_0_135.runtime(arg_208_1)

	var_208_0.state, var_208_0.active, var_208_0.ready = "active", true, false
	var_208_0.calledOnce = true

	local var_208_2 = {
		t = 0,
		kind = "call_of_the_dead",
		owner = arg_208_1,
		dur = math.huge,
		style = var_208_1.style,
		risers = {},
		pixel = math.max(1, require("src.game.projectiles").spellblade_vortex.drawSize(arg_208_0) / 32),
		asset = arg_208_0.getUnitAssetForAlly and arg_208_0:getUnitAssetForAlly(arg_208_1),
		charge = ((tonumber(var_208_1.releaseFrame) or 5) - 1) * (tonumber(var_208_1.animationSpeed) or 0.12)
	}

	var_208_2.gx, var_208_2.gy = arg_208_1.x or 0, (arg_208_1.y or 0) + 15 * var_208_2.pixel

	if arg_208_0.entityGroundPoint then
		var_208_2.gx, var_208_2.gy = arg_208_0:entityGroundPoint(arg_208_1)
	end

	arg_208_0.vfx = arg_208_0.vfx or {}
	arg_208_0.vfx[#arg_208_0.vfx + 1] = var_208_2
	arg_208_1._callOfTheDeadFx = var_208_2
	var_208_0.deadCall = {
		released = false,
		fill = arg_208_2,
		fx = var_208_2
	}
	arg_208_1.shotPending, arg_208_1.pendingTarget, arg_208_1._volleyFollowup = false
	arg_208_1.anim = arg_208_1.anim or {}
	arg_208_1.anim.name, arg_208_1.anim.frame, arg_208_1.anim.t, arg_208_1.anim.reverse = "attack2", 1, 0
	arg_208_1.anim._desynced = true
	arg_208_1._attackFacing = arg_208_1.facing or 1

	return var_208_2
end

function __recovered_scope_0.var_0_135.updateCast(arg_209_0, arg_209_1, arg_209_2, arg_209_3)
	local var_209_0 = arg_209_1.skill

	if not __recovered_scope_0.var_0_137(arg_209_1) then
		if var_209_0.state then
			__recovered_scope_0.var_0_135.finish(arg_209_1)
		end

		return
	end

	if var_209_0.state == "active" then
		if not arg_209_1.anim or arg_209_1.anim.name ~= "attack2" then
			__recovered_scope_0.var_0_135.finish(arg_209_1)

			return
		end

		__recovered_scope_0.var_0_138(arg_209_1, arg_209_2)

		return
	end

	var_209_0.cdT = math.min(var_209_0.cd or 8, (var_209_0.cdT or 0) + (arg_209_2 or 0))

	if var_209_0.cdT < (var_209_0.cd or 8) then
		return
	end

	var_209_0.ready = true

	local var_209_1 = __recovered_scope_0.var_0_135.empty(arg_209_1)

	if #var_209_1 == 0 or not arg_209_1.anim then
		return
	end

	local var_209_2 = __recovered_scope_0.var_0_135.runtime(arg_209_1)
	local var_209_3 = var_209_0.calledOnce and (tonumber(var_209_2.refill) or 2) or tonumber(var_209_2.summons) or #__recovered_scope_0.var_0_135.roster(arg_209_1)
	local var_209_4 = {}

	for iter_209_0 = 1, math.min(var_209_3, #var_209_1) do
		var_209_4[iter_209_0] = var_209_1[iter_209_0]
	end

	require("src.game.combat").chain_casting.begin(arg_209_1)

	var_209_0.cdT = require("src.game.combat").chain_casting.reset(var_209_0)

	__recovered_scope_0.var_0_135.begin(arg_209_0, arg_209_1, var_209_4)
	__recovered_scope_0.var_0_138(arg_209_1, arg_209_2)
end

function __recovered_scope_0.var_0_135.beginBattle(arg_210_0)
	for iter_210_0, iter_210_1 in ipairs(arg_210_0.allies or {}) do
		if __recovered_scope_0.var_0_135.matches(iter_210_1) then
			__recovered_scope_0.var_0_135.updateCast(arg_210_0, iter_210_1, 0)

			if iter_210_1.skill.state == "active" then
				iter_210_1._posLerp = nil
			end
		end
	end
end

function __recovered_scope_0.var_0_135.frameDuration(arg_211_0, arg_211_1, arg_211_2)
	local var_211_0 = arg_211_0.skill

	if not var_211_0 or not var_211_0.deadCall or not arg_211_0.anim or arg_211_0.anim.name ~= "attack2" then
		return arg_211_1, arg_211_2
	end

	return var_211_0.animationSpeed or tonumber(__recovered_scope_0.var_0_135.runtime(arg_211_0).animationSpeed) or 0.12, 1
end

function __recovered_scope_0.var_0_135.ratios(arg_212_0)
	local var_212_0 = require("src.game.promotion_stats").getSubclassBaseStats({
		id = arg_212_0.subclass or arg_212_0.subclassKey,
		name = arg_212_0.subclassName or arg_212_0.subclass,
		sym = arg_212_0.sym
	})
	local var_212_1 = var_212_0 and tonumber(var_212_0.hp)
	local var_212_2 = var_212_0 and tonumber(var_212_0.atk)

	return var_212_1 and var_212_1 > 0 and math.max(1, (tonumber(arg_212_0.maxhp) or var_212_1) / var_212_1) or 1, var_212_2 and var_212_2 > 0 and math.max(1, (tonumber(arg_212_0.dmg) or var_212_2) / var_212_2) or 1
end

function __recovered_scope_0.var_0_135.place(arg_213_0, arg_213_1, arg_213_2)
	local var_213_0 = (arg_213_1._attackFacing or arg_213_1.facing or 1) < 0 and -1 or 1
	local var_213_1 = (arg_213_1.x or 0) + var_213_0 * arg_213_2.dx
	local var_213_2 = (arg_213_1.y or 0) + arg_213_2.dy
	local var_213_3 = tonumber(arg_213_0.groundTopY)
	local var_213_4 = tonumber(arg_213_0.groundBotY)

	if var_213_3 and var_213_4 and var_213_3 < var_213_4 then
		var_213_2 = math.max(var_213_3 + 4, math.min(var_213_4 - 4, var_213_2))
	end

	return var_213_1, var_213_2, var_213_0
end

function __recovered_scope_0.var_0_135.spawn(arg_214_0, arg_214_1, arg_214_2, arg_214_3)
	local var_214_0, var_214_1, var_214_2 = __recovered_scope_0.var_0_135.place(arg_214_0, arg_214_1, arg_214_2)
	local var_214_3

	arg_214_0._allySpawnIndex, var_214_3 = arg_214_0._allySpawnIndex, arg_214_3(arg_214_2.sym, var_214_0, var_214_1, true)
	var_214_3.isSummon, var_214_3.master, var_214_3.deadSlot = true, arg_214_1, arg_214_2.key
	var_214_3.life = math.huge
	var_214_3.randomOptions, var_214_3.randomOption, var_214_3.imprints, var_214_3.skill, var_214_3.spawnVFX = nil, nil, {}

	local var_214_4, var_214_5 = __recovered_scope_0.var_0_135.ratios(arg_214_1)

	var_214_3.maxhp = math.max(1, math.floor((tonumber(var_214_3.maxhp or var_214_3.hp) or 1) * var_214_4 + 0.5))
	var_214_3.hp = var_214_3.maxhp
	var_214_3.dmg = math.max(1, math.floor((tonumber(var_214_3.dmg) or 1) * var_214_5 + 0.5))
	var_214_3._baseMaxHP, var_214_3._baseDmg = var_214_3.maxhp, var_214_3.dmg
	var_214_3.power, var_214_3._powerRaw, var_214_3._powerMeta = require("src.game.power").power(var_214_3.maxhp, var_214_3.dmg, 1 / (var_214_3.atkPeriod or 1))
	var_214_3.facing = var_214_2
	var_214_3._deadRising = {
		p = 0,
		x = var_214_0,
		y = var_214_1
	}
	var_214_3._casting, var_214_3._suppressAttack = true, true
	var_214_3._forceAnim, var_214_3._forceAnimT = "spawn", 1
	var_214_3.anim = {
		t = 0,
		name = "spawn",
		frame = 1
	}

	require("src.game.awakening").summon(arg_214_0, arg_214_1, var_214_3)

	arg_214_0.allies[#arg_214_0.allies + 1] = var_214_3
	__recovered_scope_0.var_0_135.slots(arg_214_1)[arg_214_2.key] = var_214_3

	return var_214_3
end

function __recovered_scope_0.var_0_135.onAnimation(arg_215_0, arg_215_1, arg_215_2, arg_215_3)
	local var_215_0 = arg_215_1.skill
	local var_215_1 = var_215_0 and var_215_0.deadCall

	if not var_215_1 then
		return
	end

	if not __recovered_scope_0.var_0_137(arg_215_1) or not arg_215_1.anim or arg_215_1.anim.name ~= "attack2" then
		__recovered_scope_0.var_0_135.finish(arg_215_1)

		return
	end

	local var_215_2 = __recovered_scope_0.var_0_135.runtime(arg_215_1)

	if not var_215_1.released and (arg_215_1.anim.frame or 1) >= (tonumber(var_215_2.releaseFrame) or 5) then
		var_215_1.released = true

		__recovered_scope_0.var_0_135.release(arg_215_0, arg_215_1, var_215_1.fx, var_215_1.fill, arg_215_3)
	end

	local var_215_3 = arg_215_2 and arg_215_2.animations and arg_215_2.animations.attack2

	if arg_215_1.anim.frame > (var_215_3 and var_215_3.frames or 6) then
		__recovered_scope_0.var_0_135.finish(arg_215_1)
	end
end

function __recovered_scope_0.var_0_135.release(arg_216_0, arg_216_1, arg_216_2, arg_216_3, arg_216_4)
	arg_216_2.releaseAt = arg_216_2.t or 0

	for iter_216_0, iter_216_1 in ipairs(arg_216_3) do
		local var_216_0 = __recovered_scope_0.var_0_135.spawn(arg_216_0, arg_216_1, iter_216_1, arg_216_4)
		local var_216_1 = arg_216_0.getUnitAssetForAlly and arg_216_0:getUnitAssetForAlly(var_216_0)
		local var_216_2 = var_216_1 and var_216_1.animations and var_216_1.animations.spawn

		arg_216_2.risers[#arg_216_2.risers + 1] = {
			unit = var_216_0,
			slot = iter_216_1.key,
			index = iter_216_0,
			at = arg_216_2.releaseAt + (iter_216_0 - 1) * __recovered_scope_0.var_0_135.STAGGER,
			x = var_216_0.x,
			y = var_216_0.y,
			frames = var_216_2 and var_216_2.frames or 8,
			speed = var_216_2 and var_216_2.speed or 0.1
		}
	end

	return arg_216_2
end

function __recovered_scope_0.var_0_135.shadow(arg_217_0)
	local var_217_0 = math.max(0, math.min(1, tonumber(arg_217_0 and arg_217_0._deadRising and arg_217_0._deadRising.p) or 1))
	local var_217_1 = var_217_0 * var_217_0 * (3 - 2 * var_217_0)

	return 0.25 + 0.75 * var_217_1, var_217_1
end

function __recovered_scope_0.var_0_135.track(arg_218_0, arg_218_1)
	if arg_218_1.finished then
		return
	end

	local var_218_0 = arg_218_1.t or 0
	local var_218_1 = false

	for iter_218_0, iter_218_1 in ipairs(arg_218_1.risers or {}) do
		local var_218_2 = iter_218_1.unit

		if not iter_218_1.stoodAt then
			if not __recovered_scope_0.var_0_136(var_218_2) then
				iter_218_1.stoodAt = var_218_0
			else
				var_218_1 = true

				local var_218_3 = var_218_0 - iter_218_1.at
				local var_218_4 = iter_218_1.frames * iter_218_1.speed

				var_218_2.x, var_218_2.y, var_218_2._kb = iter_218_1.x, iter_218_1.y
				var_218_2._casting, var_218_2._suppressAttack = true, true
				var_218_2._forceAnim, var_218_2._forceAnimT = "spawn", 1
				var_218_2.shotPending, var_218_2.pendingTarget, var_218_2._pendingSummonHit = false
				var_218_2.anim = var_218_2.anim or {}

				if var_218_2._deadRising then
					var_218_2._deadRising.p = math.max(0, math.min(1, var_218_3 / var_218_4))
				end

				if var_218_3 < 0 then
					var_218_2.anim.name, var_218_2.anim.frame, var_218_2.anim.t = "spawn", 1, 0
				else
					local var_218_5 = math.floor(var_218_3 / iter_218_1.speed) + 1

					if var_218_5 <= iter_218_1.frames then
						var_218_2.anim.name, var_218_2.anim.frame, var_218_2.anim.t = "spawn", var_218_5, var_218_3 - (var_218_5 - 1) * iter_218_1.speed
					else
						iter_218_1.stoodAt = var_218_0
						var_218_2._deadRising = nil
						var_218_2._casting, var_218_2._suppressAttack = false, false
						var_218_2._forceAnim, var_218_2._forceAnimT = nil, 0
						var_218_2.anim.name, var_218_2.anim.frame, var_218_2.anim.t = "idle", 1, 0
					end
				end
			end
		end
	end

	local var_218_6 = arg_218_1.owner

	if not arg_218_1.endAt and (not var_218_6 or not var_218_6.skill or not var_218_6.skill.deadCall or var_218_6.skill.deadCall.fx ~= arg_218_1) then
		arg_218_1.endAt = var_218_0
	end

	if not var_218_1 and arg_218_1.endAt then
		local var_218_7 = arg_218_1.endAt

		for iter_218_2, iter_218_3 in ipairs(arg_218_1.risers or {}) do
			var_218_7 = math.max(var_218_7, iter_218_3.stoodAt or 0)
		end

		if var_218_0 - var_218_7 > __recovered_scope_0.var_0_135.LINGER then
			arg_218_1.finished = true

			if var_218_6 and var_218_6._callOfTheDeadFx == arg_218_1 then
				var_218_6._callOfTheDeadFx = nil
			end
		end
	end
end

 __recovered_scope_0.var_0_139 = __recovered_scope_0.var_0_135
 __recovered_scope_0.var_0_140 = nil
 __recovered_scope_0.var_0_141 = {}
 __recovered_scope_0.var_0_142 = {
	Undead = 2,
	["언데드 거한 (Undead Brute)"] = 4,
	["언데드 거한"] = 4,
	부패자 = 2,
	망자 = 2,
	["망자 도살자 (Undead Butcher)"] = 4,
	["망자 검병 (Undead Swordman)"] = 3,
	["언데드 흉물 (Undead Abomination)"] = 4,
	["Undead Swordman"] = 3,
	["망자 검병"] = 3,
	["Undead Butcher"] = 4,
	["망자 도살자"] = 4,
	["Undead Abomination"] = 4,
	["언데드 흉물"] = 4,
	["Undead Brute"] = 4,
	["부패자 (Rotter)"] = 2,
	Rotter = 2,
	["망자 (Undead)"] = 2
}

function __recovered_scope_0.var_0_141.hitFrame(arg_219_0)
	if not arg_219_0 then
		return
	end

	for iter_219_0, iter_219_1 in ipairs({
		"sym",
		"skin",
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		local var_219_0 = __recovered_scope_0.var_0_142[arg_219_0[iter_219_1]]

		if var_219_0 then
			return var_219_0
		end
	end
end

function __recovered_scope_0.var_0_141.holdAttackFrame(arg_220_0)
	local var_220_0 = __recovered_scope_0.var_0_141.hitFrame(arg_220_0)

	if var_220_0 and arg_220_0._pendingSummonHit and arg_220_0.anim and arg_220_0.anim.name == "attack" and var_220_0 < arg_220_0.anim.frame then
		arg_220_0.anim.frame, arg_220_0.anim.t = var_220_0, 0
	end
end

function __recovered_scope_0.var_0_141.onAnimation(arg_221_0, arg_221_1, arg_221_2, arg_221_3)
	local var_221_0 = arg_221_1 and arg_221_1._pendingSummonHit

	if not var_221_0 then
		return
	end

	if not arg_221_1.alive or arg_221_1.dying or not arg_221_1.anim or arg_221_1.anim.name ~= "attack" then
		arg_221_1._pendingSummonHit = nil

		return
	end

	local var_221_1 = __recovered_scope_0.var_0_141.hitFrame(arg_221_1)

	if not var_221_1 or var_221_1 > (arg_221_1.anim.frame or 1) then
		return
	end

	arg_221_1._pendingSummonHit = nil

	local var_221_2 = var_221_0.target

	if var_221_2 and arg_221_2(var_221_2, arg_221_1, arg_221_0) and require("src.game.awakening").basicContact(arg_221_0, arg_221_1, var_221_2) then
		arg_221_3(var_221_2, var_221_0.dmg or arg_221_1.dmg or 5, arg_221_1, nil, {
			battleSkillDamage = var_221_0.skillDamage == true,
			awakeningAction = var_221_0.awakeningAction,
			crossfireAttack = var_221_0.crossfireAttack,
			basicAttack = var_221_0.basicAttack == true
		})
	end
end

 __recovered_scope_0.var_0_143 = __recovered_scope_0.var_0_141
 __recovered_scope_0.var_0_144 = nil
 __recovered_scope_0.var_0_145 = {
	STYLE = "grave_wave",
	LIFE = 1,
	WAVE = 0.4,
	FIST = 9,
	GAP = 12,
	CLOSE = 0.6,
	HOP = 7,
	HIT = 4,
	SPLASH_MAX = 2,
	SPLASH = 35,
	SPLASH_MUL = 0.6,
	MUL = 1.5,
	CD = 6,
	STEPS = {
		0.14,
		0.14,
		0.12,
		0.1,
		0.08,
		0.08,
		0.08,
		0.08
	}
}

__recovered_scope_0.var_0_145.FRAMES = #__recovered_scope_0.var_0_145.STEPS
__recovered_scope_0.var_0_145.AIR, __recovered_scope_0.var_0_145.TOTAL = 0, 0

for iter_0_0, iter_0_1 in ipairs(__recovered_scope_0.var_0_145.STEPS) do
	if iter_0_0 < __recovered_scope_0.var_0_145.HIT then
		__recovered_scope_0.var_0_145.AIR = __recovered_scope_0.var_0_145.AIR + iter_0_1
	end

	__recovered_scope_0.var_0_145.TOTAL = __recovered_scope_0.var_0_145.TOTAL + iter_0_1
end

 __recovered_scope_0.var_0_146 = {
	["언데드 흉물 (Undead Abomination)"] = true,
	["Undead Abomination"] = true,
	["언데드 흉물"] = true
}

function __recovered_scope_0.var_0_145.matches(arg_222_0)
	if not arg_222_0 then
		return false
	end

	for iter_222_0, iter_222_1 in ipairs({
		"sym",
		"skin",
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		if __recovered_scope_0.var_0_146[arg_222_0[iter_222_1]] then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_147(arg_223_0)
	return arg_223_0 and arg_223_0.alive and not arg_223_0.dying and (arg_223_0.hp or 0) > 0 and not arg_223_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_148(arg_224_0)
	return __recovered_scope_0.var_0_147(arg_224_0) and (arg_224_0.stunT or 0) <= 0 and (arg_224_0.fearT or 0) <= 0
end

 function __recovered_scope_0.var_0_149(arg_225_0)
	return math.max(1, require("src.game.projectiles").spellblade_vortex.drawSize(arg_225_0) / 32)
end

 function __recovered_scope_0.var_0_150(arg_226_0)
	return math.max(0, math.min(1, arg_226_0))
end

 function __recovered_scope_0.var_0_151(arg_227_0)
	arg_227_0 = __recovered_scope_0.var_0_150(arg_227_0)

	return arg_227_0 * arg_227_0 * (3 - 2 * arg_227_0)
end

function __recovered_scope_0.var_0_145.frameAt(arg_228_0)
	local var_228_0 = 0

	for iter_228_0, iter_228_1 in ipairs(__recovered_scope_0.var_0_145.STEPS) do
		if arg_228_0 < var_228_0 + iter_228_1 or iter_228_0 == __recovered_scope_0.var_0_145.FRAMES then
			return iter_228_0, math.max(0, arg_228_0 - var_228_0)
		end

		var_228_0 = var_228_0 + iter_228_1
	end
end

function __recovered_scope_0.var_0_145.ripples(arg_229_0, arg_229_1)
	local var_229_0 = __recovered_scope_0.var_0_150(arg_229_0 / __recovered_scope_0.var_0_145.WAVE)
	local var_229_1 = 2 + (arg_229_1 - 2) * (1 - (1 - var_229_0)^2)
	local var_229_2 = math.max(1, math.floor(4 - 2 * var_229_0 + 0.5))
	local var_229_3 = __recovered_scope_0.var_0_151(arg_229_0 / 0.08) * (1 - __recovered_scope_0.var_0_151((var_229_0 - 0.45) / 0.55))

	return var_229_1, var_229_2, 4.5 - 2 * var_229_0, var_229_3
end

function __recovered_scope_0.var_0_145.crest(arg_230_0, arg_230_1, arg_230_2)
	return math.floor((1 - (arg_230_0 / (arg_230_1 + 1))^2) * arg_230_2 + 0.5)
end

function __recovered_scope_0.var_0_145.touches(arg_231_0, arg_231_1, arg_231_2, arg_231_3, arg_231_4, arg_231_5)
	local var_231_0 = require("src.game.projectiles")
	local var_231_1 = var_231_0.spellblade_vortex.targetCover(arg_231_0, arg_231_1)

	if var_231_1 then
		return var_231_0.hollow_arrow.coverOverlaps(var_231_1, arg_231_2, arg_231_3, arg_231_4, arg_231_5)
	end

	local var_231_2 = arg_231_1.x or 0
	local var_231_3 = arg_231_1.y or 0

	return arg_231_4 > var_231_2 - 12 and arg_231_2 < var_231_2 + 12 and arg_231_5 > var_231_3 - 16 and arg_231_3 < var_231_3 + 30
end

function __recovered_scope_0.var_0_145.entry(arg_232_0, arg_232_1)
	local var_232_0 = arg_232_1._corpseSlamFx

	if var_232_0 and not var_232_0.finished then
		return var_232_0
	end

	local var_232_1 = {
		readyAt = 0,
		kind = "corpse_slam",
		t = 0,
		owner = arg_232_1,
		dur = math.huge,
		style = __recovered_scope_0.var_0_145.STYLE,
		pixel = __recovered_scope_0.var_0_149(arg_232_0),
		hits = {}
	}

	arg_232_0.vfx = arg_232_0.vfx or {}
	arg_232_0.vfx[#arg_232_0.vfx + 1] = var_232_1
	arg_232_1._corpseSlamFx = var_232_1

	return var_232_1
end

function __recovered_scope_0.var_0_145.ready(arg_233_0, arg_233_1)
	if not __recovered_scope_0.var_0_145.matches(arg_233_1) then
		return false
	end

	local var_233_0 = arg_233_1._corpseSlamFx

	return not var_233_0 or not not var_233_0.finished or not var_233_0.state and not ((var_233_0.t or 0) < (var_233_0.readyAt or 0))
end

function __recovered_scope_0.var_0_145.roll(arg_234_0, arg_234_1, arg_234_2)
	if not arg_234_2 or not arg_234_2.basicAttack or arg_234_2.skillDamage or not __recovered_scope_0.var_0_145.ready(arg_234_0, arg_234_1) or not __recovered_scope_0.var_0_148(arg_234_1) then
		return false
	end

	local var_234_0 = arg_234_2.target

	if not __recovered_scope_0.var_0_147(var_234_0) then
		return false
	end

	local var_234_1 = __recovered_scope_0.var_0_145.entry(arg_234_0, arg_234_1)

	arg_234_1._pendingSummonHit = nil
	var_234_1.state, var_234_1.startAt, var_234_1.readyAt, var_234_1.impactAt, var_234_1.waveDone = "hop", var_234_1.t, var_234_1.t + __recovered_scope_0.var_0_145.CD
	var_234_1.target, var_234_1.dmg, var_234_1.hits, var_234_1.struck, var_234_1.splashCount = var_234_0, tonumber(arg_234_2.dmg) or arg_234_1.dmg or 5, {}, {}, 0
	var_234_1.pixel = __recovered_scope_0.var_0_149(arg_234_0)

	local var_234_2 = (var_234_0.x or 0) - (arg_234_1.x or 0)
	local var_234_3 = (var_234_0.y or 0) - (arg_234_1.y or 0)

	var_234_1.face = var_234_2 >= 0 and 1 or -1
	var_234_1.sx, var_234_1.sy = arg_234_1.x or 0, arg_234_1.y or 0
	var_234_1.lx, var_234_1.ly = var_234_1.sx + var_234_2 * __recovered_scope_0.var_0_145.CLOSE, var_234_1.sy + var_234_3 * __recovered_scope_0.var_0_145.CLOSE

	if math.abs((var_234_0.x or 0) - var_234_1.lx) < __recovered_scope_0.var_0_145.GAP then
		var_234_1.lx = (var_234_0.x or 0) - var_234_1.face * __recovered_scope_0.var_0_145.GAP
	end

	arg_234_1.facing = var_234_1.face
	arg_234_1._casting, arg_234_1._suppressAttack = true, true
	arg_234_1._forceAnim, arg_234_1._forceAnimT = "attack2", 0.2
	arg_234_1.anim = arg_234_1.anim or {}
	arg_234_1.anim.name, arg_234_1.anim.frame, arg_234_1.anim.t, arg_234_1.anim.reverse = "attack2", 1, 0
	arg_234_1.anim._desynced = true
	arg_234_1.shotPending, arg_234_1.pendingTarget, arg_234_1._meleeLoop = false, nil, false

	return true
end

function __recovered_scope_0.var_0_145.stop(arg_235_0, arg_235_1)
	arg_235_1.state = nil
	arg_235_0._jumpYOffset = nil
	arg_235_0._casting, arg_235_0._suppressAttack = false, false
	arg_235_0._forceAnim, arg_235_0._forceAnimT = nil, 0

	if arg_235_0.anim and arg_235_0.anim.name == "attack2" then
		arg_235_0.anim.name, arg_235_0.anim.frame, arg_235_0.anim.t = "idle", 1, 0
	end
end

function __recovered_scope_0.var_0_145.impact(arg_236_0, arg_236_1, arg_236_2)
	local var_236_0 = arg_236_1.owner

	arg_236_1.impactAt = arg_236_1.t
	var_236_0._jumpYOffset = nil
	var_236_0.x, var_236_0.y = arg_236_1.lx, arg_236_1.ly

	local var_236_1 = var_236_0.x
	local var_236_2 = (var_236_0.y or 0) + 15 * arg_236_1.pixel

	if arg_236_0.entityGroundPoint then
		var_236_1, var_236_2 = arg_236_0:entityGroundPoint(var_236_0)
	end

	arg_236_1.ix, arg_236_1.iy = var_236_1 + arg_236_1.face * __recovered_scope_0.var_0_145.FIST * arg_236_1.pixel, var_236_2

	if not __recovered_scope_0.var_0_147(arg_236_1.target) or arg_236_2 and not arg_236_2(arg_236_1.target, var_236_0, arg_236_0) then
		local var_236_3
		local var_236_4

		for iter_236_0, iter_236_1 in ipairs(arg_236_0.enemies or {}) do
			if __recovered_scope_0.var_0_147(iter_236_1) and (not arg_236_2 or arg_236_2(iter_236_1, var_236_0, arg_236_0)) then
				local var_236_5 = ((iter_236_1.x or 0) - arg_236_1.ix)^2 + ((iter_236_1.y or 0) - arg_236_1.iy)^2

				if not var_236_4 or var_236_5 < var_236_4 then
					var_236_3, var_236_4 = iter_236_1, var_236_5
				end
			end
		end

		arg_236_1.target = var_236_3
	end
end

function __recovered_scope_0.var_0_145.wave(arg_237_0, arg_237_1, arg_237_2, arg_237_3)
	local var_237_0 = arg_237_1.owner
	local var_237_1 = (arg_237_1.t or 0) - arg_237_1.impactAt

	if var_237_1 > __recovered_scope_0.var_0_145.WAVE or not __recovered_scope_0.var_0_147(var_237_0) then
		arg_237_1.waveDone = true

		return
	end

	local var_237_2 = arg_237_1.pixel or 2
	local var_237_3, var_237_4, var_237_5 = __recovered_scope_0.var_0_145.ripples(var_237_1, __recovered_scope_0.var_0_145.SPLASH / var_237_2)
	local var_237_6 = __recovered_scope_0.var_0_145.crest(0, var_237_4, var_237_5) + 1
	local var_237_7 = {}

	for iter_237_0 = -1, 1, 2 do
		local var_237_8 = math.floor(iter_237_0 * var_237_3 + 0.5)
		local var_237_9 = arg_237_1.ix + (var_237_8 - var_237_4 - 0.5) * var_237_2
		local var_237_10 = arg_237_1.ix + (var_237_8 + var_237_4 + 0.5) * var_237_2
		local var_237_11 = arg_237_1.iy + (-var_237_6 - 0.5) * var_237_2
		local var_237_12 = arg_237_1.iy + 0.5 * var_237_2

		for iter_237_1, iter_237_2 in ipairs(arg_237_0.enemies or {}) do
			if not arg_237_1.struck[iter_237_2] and not var_237_7[iter_237_2] and __recovered_scope_0.var_0_147(iter_237_2) and (not arg_237_2 or arg_237_2(iter_237_2, var_237_0, arg_237_0)) and __recovered_scope_0.var_0_145.touches(arg_237_0, iter_237_2, var_237_9, var_237_11, var_237_10, var_237_12) then
				var_237_7[iter_237_2] = true
				var_237_7[#var_237_7 + 1] = {
					e = iter_237_2,
					d2 = ((iter_237_2.x or 0) - arg_237_1.ix)^2 + ((iter_237_2.y or 0) - arg_237_1.iy)^2
				}
			end
		end
	end

	table.sort(var_237_7, function(arg_238_0, arg_238_1)
		return arg_238_0.d2 < arg_238_1.d2
	end)

	for iter_237_3, iter_237_4 in ipairs(var_237_7) do
		local var_237_13 = iter_237_4.e
		local var_237_14 = var_237_13 == arg_237_1.target

		if var_237_14 or arg_237_1.splashCount < __recovered_scope_0.var_0_145.SPLASH_MAX then
			arg_237_1.struck[var_237_13] = true

			if not var_237_14 then
				arg_237_1.splashCount = arg_237_1.splashCount + 1
			end

			arg_237_1.hits[#arg_237_1.hits + 1] = {
				target = var_237_13,
				at = arg_237_1.t,
				main = var_237_14
			}

			arg_237_3(var_237_13, arg_237_1.dmg * (var_237_14 and __recovered_scope_0.var_0_145.MUL or __recovered_scope_0.var_0_145.SPLASH_MUL), var_237_0, nil, {
				corpseSlam = true,
				basicAttack = false
			})
		end
	end
end

function __recovered_scope_0.var_0_145.track(arg_239_0, arg_239_1, arg_239_2, arg_239_3)
	local var_239_0 = arg_239_1.owner

	if arg_239_1.finished then
		return
	end

	if arg_239_1.impactAt and not arg_239_1.waveDone then
		__recovered_scope_0.var_0_145.wave(arg_239_0, arg_239_1, arg_239_2, arg_239_3)
	end

	if not __recovered_scope_0.var_0_147(var_239_0) then
		if arg_239_1.state then
			__recovered_scope_0.var_0_145.stop(var_239_0, arg_239_1)
		end

		if not arg_239_1.impactAt or (arg_239_1.t or 0) - arg_239_1.impactAt > __recovered_scope_0.var_0_145.LIFE then
			arg_239_1.finished = true
		end

		return
	end

	if arg_239_1.state ~= "hop" then
		return
	end

	if not __recovered_scope_0.var_0_148(var_239_0) then
		__recovered_scope_0.var_0_145.stop(var_239_0, arg_239_1)

		return
	end

	local var_239_1 = (arg_239_1.t or 0) - (arg_239_1.startAt or 0)
	local var_239_2, var_239_3 = __recovered_scope_0.var_0_145.frameAt(var_239_1)

	var_239_0.anim = var_239_0.anim or {}
	var_239_0.anim.name, var_239_0.anim.frame, var_239_0.anim.t = "attack2", var_239_2, var_239_3
	var_239_0._casting, var_239_0._suppressAttack = true, true
	var_239_0._forceAnim, var_239_0._forceAnimT = "attack2", 0.2
	var_239_0.facing = arg_239_1.face
	var_239_0._kb = nil

	if var_239_1 < __recovered_scope_0.var_0_145.AIR then
		local var_239_4 = var_239_1 / __recovered_scope_0.var_0_145.AIR
		local var_239_5 = var_239_4 * var_239_4 * (3 - 2 * var_239_4)

		var_239_0.x, var_239_0.y = arg_239_1.sx + (arg_239_1.lx - arg_239_1.sx) * var_239_5, arg_239_1.sy + (arg_239_1.ly - arg_239_1.sy) * var_239_5
		var_239_0._jumpYOffset = __recovered_scope_0.var_0_145.HOP * arg_239_1.pixel * math.sin(var_239_4^0.8 * math.pi)
	else
		if not arg_239_1.impactAt then
			__recovered_scope_0.var_0_145.impact(arg_239_0, arg_239_1, arg_239_2)
			__recovered_scope_0.var_0_145.wave(arg_239_0, arg_239_1, arg_239_2, arg_239_3)
		end

		var_239_0.x, var_239_0.y = arg_239_1.lx, arg_239_1.ly

		if var_239_1 >= __recovered_scope_0.var_0_145.TOTAL then
			__recovered_scope_0.var_0_145.stop(var_239_0, arg_239_1)
		end
	end
end

 __recovered_scope_0.var_0_152 = __recovered_scope_0.var_0_145
 __recovered_scope_0.var_0_153 = nil
 __recovered_scope_0.var_0_154 = {}
 __recovered_scope_0.var_0_155 = {
	["팬텀 (Phantom)"] = 4,
	Phantom = 4,
	팬텀 = 4,
	["백기사 (White Knight)"] = 3,
	["White Knight"] = 3,
	백기사 = 3,
	["듀라한 (Dullahan)"] = 4,
	Dullahan = 4,
	듀라한 = 4,
	["슬레이어 (Slayer)"] = 4,
	Slayer = 4,
	슬레이어 = 4,
	["성배기사 (Grail Knight)"] = 3,
	["Grail Knight"] = 3,
	성배기사 = 3
}

function __recovered_scope_0.var_0_154.hitFrame(arg_240_0)
	if arg_240_0 and arg_240_0.sym == "W" then
		return __recovered_scope_0.var_0_155[arg_240_0.subclass] or __recovered_scope_0.var_0_155[arg_240_0.subclassName] or __recovered_scope_0.var_0_155[arg_240_0.subclassKey]
	end
end

function __recovered_scope_0.var_0_154.holdAttackFrame(arg_241_0)
	local var_241_0 = arg_241_0 and arg_241_0._pendingWarriorHit
	local var_241_1 = __recovered_scope_0.var_0_154.hitFrame(arg_241_0)

	if var_241_1 and var_241_0 and var_241_0.basicAttack == true and not var_241_0.skillDamage and arg_241_0.anim and arg_241_0.anim.name == "attack" and var_241_1 < arg_241_0.anim.frame then
		arg_241_0.anim.frame, arg_241_0.anim.t = var_241_1, 0
	end
end

 __recovered_scope_0.var_0_156 = __recovered_scope_0.var_0_154
 __recovered_scope_0.var_0_157 = nil
 __recovered_scope_0.var_0_158 = {}
 __recovered_scope_0.var_0_159 = {
	["Fallen Angel"] = 3,
	타락천사 = 3,
	["도미니온 (Dominion)"] = 3,
	Dominion = 3,
	도미니온 = 3,
	["대천사 (Archangel)"] = 3,
	Archangel = 3,
	대천사 = 3,
	["천사 (Angel)"] = 3,
	Angel = 3,
	천사 = 3,
	["소울리퍼 (Soul Reaper)"] = 4,
	["Soul Reaper"] = 4,
	소울리퍼 = 4,
	["리퍼 (Reaper)"] = 4,
	Reaper = 4,
	리퍼 = 4,
	["레버넌트 (Revenant)"] = 5,
	Revenant = 5,
	레버넌트 = 5,
	CrownRevenant = 5,
	["스펙터 (Specter)"] = 5,
	Specter = 5,
	스펙터 = 5,
	LegendarySpecter = 5,
	["셰이드 (Shade)"] = 4,
	Shade = 4,
	셰이드 = 4,
	["파멸의 천사 (Angel of Ruin)"] = 3,
	["Angel of Ruin"] = 3,
	["파멸의 천사"] = 3,
	["타락천사 (Fallen Angel)"] = 3
}
 __recovered_scope_0.var_0_160 = {
	리퍼 = true,
	["소울리퍼 (Soul Reaper)"] = true,
	["Soul Reaper"] = true,
	소울리퍼 = true,
	["리퍼 (Reaper)"] = true,
	Reaper = true
}

function __recovered_scope_0.var_0_158.isAlternating(arg_242_0)
	return arg_242_0 ~= nil and arg_242_0.sym == "D" and (__recovered_scope_0.var_0_160[arg_242_0.subclass] or __recovered_scope_0.var_0_160[arg_242_0.subclassName] or __recovered_scope_0.var_0_160[arg_242_0.subclassKey]) == true
end

function __recovered_scope_0.var_0_158.isBasicAttackAnimation(arg_243_0)
	local var_243_0 = arg_243_0 and arg_243_0._pendingDuelistHit

	return var_243_0 ~= nil and var_243_0.basicAttack == true and not var_243_0.skillDamage and arg_243_0.anim ~= nil and (arg_243_0.anim.name == "attack" or __recovered_scope_0.var_0_158.isAlternating(arg_243_0) and arg_243_0.anim.name == "attack2")
end

function __recovered_scope_0.var_0_158.chooseBasicAnimation(arg_244_0, arg_244_1)
	local var_244_0 = arg_244_0 and arg_244_0._pendingDuelistHit

	if not __recovered_scope_0.var_0_158.isAlternating(arg_244_0) or not var_244_0 or var_244_0.basicAttack ~= true or var_244_0.skillDamage then
		return arg_244_1
	end

	local var_244_1 = arg_244_0._lastReaperBasicAnimation == "attack" and "attack2" or "attack"

	arg_244_0._lastReaperBasicAnimation = var_244_1
	var_244_0.anim = var_244_1

	return var_244_1
end

function __recovered_scope_0.var_0_158.hitFrame(arg_245_0)
	if arg_245_0 and arg_245_0.sym == "D" then
		return __recovered_scope_0.var_0_159[arg_245_0.subclass] or __recovered_scope_0.var_0_159[arg_245_0.subclassName] or __recovered_scope_0.var_0_159[arg_245_0.subclassKey]
	end
end

function __recovered_scope_0.var_0_158.holdAttackFrame(arg_246_0)
	local var_246_0 = __recovered_scope_0.var_0_158.hitFrame(arg_246_0)

	if var_246_0 and __recovered_scope_0.var_0_158.isBasicAttackAnimation(arg_246_0) and var_246_0 < arg_246_0.anim.frame then
		arg_246_0.anim.frame, arg_246_0.anim.t = var_246_0, 0
	end
end

 __recovered_scope_0.var_0_161 = __recovered_scope_0.var_0_158
 __recovered_scope_0.var_0_162 = nil
 __recovered_scope_0.var_0_163 = {}
 __recovered_scope_0.var_0_164 = {
	월광사제 = true,
	["초승달 여왕 (Crescent Queen)"] = true,
	["Crescent Queen"] = true,
	["초승달 여왕"] = true,
	["월광사제 (Moon Priestess)"] = true,
	["Moon Priestess"] = true
}

function __recovered_scope_0.var_0_163.isRanged(arg_247_0)
	return arg_247_0 ~= nil and arg_247_0.sym == "H" and (__recovered_scope_0.var_0_164[arg_247_0.subclass] or __recovered_scope_0.var_0_164[arg_247_0.subclassName] or __recovered_scope_0.var_0_164[arg_247_0.subclassKey]) == true
end

function __recovered_scope_0.var_0_163.configureRanged(arg_248_0)
	if __recovered_scope_0.var_0_163.isRanged(arg_248_0) then
		arg_248_0.role = "archer"
		arg_248_0.subclass = arg_248_0.subclass or arg_248_0.subclassName or arg_248_0.subclassKey
	end
end

 __recovered_scope_0.var_0_165 = {
	["Dread Cavalry"] = true,
	사령기병 = true,
	["사령기병 (Dread Cavalry)"] = true
}

function __recovered_scope_0.var_0_163.isDreadCharge(arg_249_0)
	return arg_249_0 and arg_249_0.sym == "H" and (tonumber(arg_249_0.rank) or 1) == 1 and (__recovered_scope_0.var_0_165[arg_249_0.subclass] or __recovered_scope_0.var_0_165[arg_249_0.subclassName] or __recovered_scope_0.var_0_165[arg_249_0.subclassKey]) == true
end

function __recovered_scope_0.var_0_163.recordDreadAdvance(arg_250_0, arg_250_1, arg_250_2, arg_250_3)
	if not __recovered_scope_0.var_0_163.isDreadCharge(arg_250_0) then
		arg_250_0._dreadMoveT = nil

		return
	end

	if not arg_250_0.alive or arg_250_0.dying or (arg_250_0.hp or 0) <= 0 or (arg_250_1 or 0) <= 0 or (arg_250_0.stunT or 0) > 0 or (arg_250_0.fearT or 0) > 0 or arg_250_0._kb or arg_250_0._marshDriveAir or (arg_250_2 or 0)^2 + (arg_250_3 or 0)^2 <= 1e-10 then
		return
	end

	arg_250_0._dreadMoveT = math.min(2, (arg_250_0._dreadMoveT or 0) + arg_250_1)
end

function __recovered_scope_0.var_0_163.beginDreadAdvance(arg_251_0, arg_251_1)
	if __recovered_scope_0.var_0_163.isDreadCharge(arg_251_0) then
		arg_251_0._dreadAdvance = {
			x = arg_251_0.x,
			y = arg_251_0.y,
			dt = arg_251_1
		}
	end
end

function __recovered_scope_0.var_0_163.finishDreadAdvance(arg_252_0)
	local var_252_0 = arg_252_0._dreadAdvance

	arg_252_0._dreadAdvance = nil

	if var_252_0 then
		__recovered_scope_0.var_0_163.recordDreadAdvance(arg_252_0, var_252_0.dt, (arg_252_0.x or 0) - (var_252_0.x or 0), (arg_252_0.y or 0) - (var_252_0.y or 0))
	end
end

function __recovered_scope_0.var_0_163.consumeDreadCharge(arg_253_0, arg_253_1)
	if not __recovered_scope_0.var_0_163.isDreadCharge(arg_253_0) then
		arg_253_0._dreadMoveT = nil

		return 1
	end

	if not arg_253_1 then
		return 1
	end

	local var_253_0 = (arg_253_0._dreadMoveT or 0) >= 1.99999999

	arg_253_0._dreadMoveT = nil

	return var_253_0 and 1.8 or 1
end

 __recovered_scope_0.var_0_166 = {
	["초원 기병 (Steppe Cavalry)"] = 2,
	["Steppe Cavalry"] = 2,
	["초원 기병"] = 2,
	["켄타로우스 (Centaur)"] = 3,
	["켄타우로스 (Centaur)"] = 3,
	Centaur = 3,
	켄타로우스 = 3,
	켄타우로스 = 3
}

function __recovered_scope_0.var_0_163.applyHit(arg_254_0, arg_254_1, arg_254_2, arg_254_3, arg_254_4, arg_254_5, arg_254_6)
	local var_254_0 = __recovered_scope_0.var_0_166[arg_254_1.subclass] or __recovered_scope_0.var_0_166[arg_254_1.subclassName] or __recovered_scope_0.var_0_166[arg_254_1.subclassKey] or 1
	local var_254_1 = arg_254_3.dmg or arg_254_1.dmg or 5

	if var_254_0 == 1 or arg_254_3.skillDamage or arg_254_3.basicAttack ~= true then
		arg_254_4(arg_254_2, var_254_1, arg_254_1, nil, {
			battleSkillDamage = arg_254_3.skillDamage == true,
			basicAttack = arg_254_3.basicAttack == true,
			imprintDamage = arg_254_3.imprintDamage == true
		})

		return
	end

	local var_254_2 = {}
	local var_254_3 = {}
	local var_254_4 = arg_254_1._attackFacing or arg_254_1.facing or 1
	local var_254_5 = (arg_254_1.distance or 55) + 1

	local function var_254_6(arg_255_0)
		if not arg_255_0 or var_254_3[arg_255_0] or not arg_255_0.alive or arg_255_0.dying or (arg_255_0.hp or 0) <= 0 then
			return
		end

		var_254_3[arg_255_0] = true

		if arg_254_5 and not arg_254_5(arg_255_0, arg_254_1, arg_254_0) then
			return
		end

		if _G.__slotStage6RiftTargetAllowed and not _G.__slotStage6RiftTargetAllowed(arg_254_0, arg_254_1, arg_255_0) then
			return
		end

		local var_255_0 = (arg_255_0.x or 0) - (arg_254_1.x or 0)
		local var_255_1 = (arg_255_0.y or 0) - (arg_254_1.y or 0)

		if var_255_0 * var_254_4 < 0 then
			return
		end

		local var_255_2 = arg_254_6 and arg_254_6(arg_254_1, arg_255_0) or var_255_0 * var_255_0 + var_255_1 * var_255_1

		if var_255_2 <= var_254_5 * var_254_5 then
			var_254_2[#var_254_2 + 1] = {
				unit = arg_255_0,
				d2 = var_255_2,
				order = #var_254_2 + 1
			}
		end
	end

	var_254_6(arg_254_2)

	for iter_254_0, iter_254_1 in ipairs(arg_254_0.enemies or {}) do
		var_254_6(iter_254_1)
	end

	table.sort(var_254_2, function(arg_256_0, arg_256_1)
		if arg_256_0.unit == arg_254_2 then
			return arg_256_1.unit ~= arg_254_2
		end

		if arg_256_1.unit == arg_254_2 then
			return false
		end

		if arg_256_0.d2 == arg_256_1.d2 then
			return arg_256_0.order < arg_256_1.order
		end

		return arg_256_0.d2 < arg_256_1.d2
	end)

	for iter_254_2 = 1, math.min(var_254_0, #var_254_2) do
		arg_254_4(var_254_2[iter_254_2].unit, var_254_1, arg_254_1, nil, {
			battleSkillDamage = false,
			areaDamage = true,
			basicAttack = true,
			imprintDamage = arg_254_3.imprintDamage == true
		})
	end
end

 __recovered_scope_0.var_0_167 = {
	["초원 기병"] = true,
	후사르 = true,
	Hussar = true,
	["켄타로우스 (Centaur)"] = true,
	["윙드 후사르 (Winged Hussar)"] = true,
	["Winged Hussar"] = true,
	["윙드 후사르"] = true,
	["후사르 (Hussar)"] = true,
	["초원 기병 (Steppe Cavalry)"] = true,
	["Steppe Cavalry"] = true,
	["경기병 (Light Cavalry)"] = true,
	["Light Cavalry"] = true,
	경기병 = true,
	["환수기병 (Beast Cavalry)"] = true,
	["Beast Cavalry"] = true,
	환수기병 = true,
	["실반 (Sylvan)"] = true,
	Sylvan = true,
	실반 = true,
	["숲의 심장 (Wildheart)"] = true,
	Wildheart = true,
	["숲의 심장"] = true,
	["페이즈 (Phase)"] = true,
	Phase = true,
	페이즈 = true,
	["크로노워커 (Chrono Walker)"] = true,
	["Chrono Walker"] = true,
	크로노워커 = true,
	켄타로우스 = true,
	Centaur = true,
	["켄타우로스 (Centaur)"] = true,
	켄타우로스 = true
}
 __recovered_scope_0.var_0_168 = {
	["나이트메어 (Nightmare)"] = true,
	Nightmare = true,
	나이트메어 = true,
	["사령기병 (Dread Cavalry)"] = true,
	["Dread Cavalry"] = true,
	사령기병 = true
}

function __recovered_scope_0.var_0_163.hitFrame(arg_257_0)
	if arg_257_0.sym == "H" and (__recovered_scope_0.var_0_168[arg_257_0.subclass] or __recovered_scope_0.var_0_168[arg_257_0.subclassName] or __recovered_scope_0.var_0_168[arg_257_0.subclassKey]) then
		return 5
	end

	local var_257_0 = require("src.game.projectiles").moon_bolt

	if var_257_0.matches(arg_257_0) then
		return var_257_0.FRAME
	end

	if __recovered_scope_0.var_0_167[arg_257_0.subclass] or __recovered_scope_0.var_0_167[arg_257_0.subclassName] or __recovered_scope_0.var_0_167[arg_257_0.subclassKey] then
		return 4
	end
end

function __recovered_scope_0.var_0_163.holdAttackFrame(arg_258_0)
	local var_258_0 = __recovered_scope_0.var_0_163.hitFrame(arg_258_0)

	if var_258_0 and arg_258_0._pendingCavalryHit and arg_258_0.anim and arg_258_0.anim.name == "attack" and var_258_0 < arg_258_0.anim.frame then
		arg_258_0.anim.frame, arg_258_0.anim.t = var_258_0, 0
	end
end

 __recovered_scope_0.var_0_169 = __recovered_scope_0.var_0_163
 __recovered_scope_0.var_0_170 = nil
 __recovered_scope_0.var_0_171 = {
	save = function(arg_259_0)
		local var_259_0 = arg_259_0 and arg_259_0.skill

		if not var_259_0 or var_259_0.kind ~= "VictorySignal" then
			return
		end

		local var_259_1 = {
			charge = var_259_0.victoryCharge or 0,
			bossHits = var_259_0.victoryBossHits or 0,
			awaitEngagement = var_259_0.victoryAwaitEngagement == true
		}

		arg_259_0._victorySignalReserve = var_259_1

		local var_259_2 = arg_259_0._victorySignalRoster

		if var_259_2 then
			var_259_2._victorySignalReserve = var_259_1

			if var_259_2.skill and var_259_2.skill.kind == "VictorySignal" then
				var_259_2.skill.victoryCharge = var_259_1.charge
				var_259_2.skill.victoryBossHits = var_259_1.bossHits
				var_259_2.skill.victoryAwaitEngagement = var_259_1.awaitEngagement
			end
		end
	end
}

function __recovered_scope_0.var_0_171.restore(arg_260_0, arg_260_1)
	if not arg_260_0 or not arg_260_0.skill or arg_260_0.skill.kind ~= "VictorySignal" then
		return
	end

	if arg_260_1 then
		arg_260_0._victorySignalRoster = arg_260_1
	end

	local var_260_0 = arg_260_1 and arg_260_1._victorySignalReserve or arg_260_0._victorySignalReserve

	if not var_260_0 and arg_260_1 and arg_260_1.skill and arg_260_1.skill.kind == "VictorySignal" then
		__recovered_scope_0.var_0_171.save(arg_260_1)

		var_260_0 = arg_260_1._victorySignalReserve
	end

	if var_260_0 then
		arg_260_0.skill.victoryCharge = var_260_0.charge
		arg_260_0.skill.victoryBossHits = var_260_0.bossHits
		arg_260_0.skill.victoryAwaitEngagement = var_260_0.awaitEngagement
	end
end

function __recovered_scope_0.var_0_171.clearBuff(arg_261_0)
	arg_261_0._victorySignalBuffs = nil
	arg_261_0._victorySignalT, arg_261_0._victorySignalASPD, arg_261_0._victorySignalSPD = nil
	arg_261_0._victorySignalTrace, arg_261_0._victorySignalFX, arg_261_0._victorySignalFlash = nil
end

function __recovered_scope_0.var_0_171.onDeath(arg_262_0)
	if arg_262_0.skill and arg_262_0.skill.kind == "VictorySignal" then
		if arg_262_0.skill.victoryCast then
			__recovered_scope_0.var_0_171.finish(arg_262_0)
		end

		arg_262_0.skill.victoryCharge, arg_262_0.skill.victoryBossHits = 0, 0
		arg_262_0.skill.victoryAwaitEngagement = nil
		arg_262_0.skill.victoryForced = nil

		__recovered_scope_0.var_0_171.save(arg_262_0)
	end

	__recovered_scope_0.var_0_171.clearBuff(arg_262_0)
end

function __recovered_scope_0.var_0_171.beginBattle(arg_263_0)
	for iter_263_0, iter_263_1 in ipairs(arg_263_0.allies or {}) do
		__recovered_scope_0.var_0_171.clearBuff(iter_263_1)
		__recovered_scope_0.var_0_171.restore(iter_263_1, arg_263_0.rosterUnits and arg_263_0.rosterUnits[iter_263_1.rosterIndex])
	end
end

function __recovered_scope_0.var_0_171.endBattle(arg_264_0)
	for iter_264_0, iter_264_1 in ipairs(arg_264_0.rosterUnits or {}) do
		local var_264_0 = iter_264_1.allyRef

		if var_264_0 then
			if var_264_0.alive == false or var_264_0.dying or (var_264_0.hp or 0) <= 0 then
				__recovered_scope_0.var_0_171.onDeath(var_264_0)
			elseif var_264_0.skill and var_264_0.skill.kind == "VictorySignal" then
				if var_264_0.skill.victoryCast then
					__recovered_scope_0.var_0_171.finish(var_264_0)
				end

				var_264_0.skill.victoryAwaitEngagement = (var_264_0.skill.victoryCharge or 0) >= 4

				__recovered_scope_0.var_0_171.save(var_264_0)
			end

			__recovered_scope_0.var_0_171.clearBuff(var_264_0)
		end

		__recovered_scope_0.var_0_171.clearBuff(iter_264_1)
	end

	for iter_264_2, iter_264_3 in ipairs(arg_264_0.allies or {}) do
		__recovered_scope_0.var_0_171.clearBuff(iter_264_3)
	end
end

 function __recovered_scope_0.var_0_172(arg_265_0)
	local var_265_0 = 0
	local var_265_1 = 0
	local var_265_2 = 0

	for iter_265_0, iter_265_1 in pairs(arg_265_0._victorySignalBuffs or {}) do
		var_265_0, var_265_1 = var_265_0 + iter_265_1.aspd, var_265_1 + iter_265_1.spd
		var_265_2 = math.max(var_265_2, iter_265_1.t)
	end

	if var_265_2 > 0 then
		arg_265_0._victorySignalASPD, arg_265_0._victorySignalSPD, arg_265_0._victorySignalT = var_265_0, var_265_1, var_265_2
	else
		__recovered_scope_0.var_0_171.clearBuff(arg_265_0)
	end
end

function __recovered_scope_0.var_0_171.barState(arg_266_0)
	local var_266_0 = (arg_266_0._victorySignalFlash or 0) > 0 and 1 or math.max(0, math.min(4, math.floor(arg_266_0.skill.victoryCharge or 0))) / 4

	return true, true, var_266_0
end

 function __recovered_scope_0.var_0_173(arg_267_0)
	return arg_267_0 and arg_267_0.alive and not arg_267_0.dying and (arg_267_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_171.finish(arg_268_0)
	local var_268_0 = arg_268_0.skill

	if var_268_0.victoryCast and var_268_0.victoryCast.applied then
		var_268_0.victoryCharge = math.max(0, (var_268_0.victoryCharge or 4) - 4)
	end

	var_268_0.victoryCast, var_268_0.state, var_268_0.active = nil, nil, false
	arg_268_0._casting, arg_268_0._suppressAttack = false, false
	arg_268_0._forceAnim, arg_268_0._forceAnimT = nil, 0

	__recovered_scope_0.var_0_171.save(arg_268_0)
end

function __recovered_scope_0.var_0_171.updateCast(arg_269_0, arg_269_1, arg_269_2, arg_269_3)
	local var_269_0 = arg_269_1.skill

	if not __recovered_scope_0.var_0_173(arg_269_1) or __recovered_scope_0.var_0_90.callBlocked(arg_269_1) then
		if var_269_0.victoryCast then
			__recovered_scope_0.var_0_171.finish(arg_269_1)
		end

		return
	end

	if var_269_0.victoryCast then
		if not arg_269_1.anim or arg_269_1.anim.name ~= "skill" then
			__recovered_scope_0.var_0_171.finish(arg_269_1)

			return
		end

		arg_269_1._casting, arg_269_1._suppressAttack = true, true
		arg_269_1._forceAnim, arg_269_1._forceAnimT = "skill", math.max(0.2, arg_269_2 + 0.1)

		return
	end

	if (var_269_0.victoryCharge or 0) < 4 or not arg_269_1.anim then
		return
	end

	if not var_269_0.victoryForced then
		local var_269_1 = false
		local var_269_2 = false

		for iter_269_0, iter_269_1 in ipairs(arg_269_0.enemies or {}) do
			if __recovered_scope_0.var_0_173(iter_269_1) then
				var_269_1 = true

				if var_269_0.victoryAwaitEngagement then
					for iter_269_2, iter_269_3 in ipairs(arg_269_0.allies or {}) do
						if __recovered_scope_0.var_0_173(iter_269_3) and iter_269_3.x and iter_269_1.x then
							local var_269_3 = iter_269_3.x - iter_269_1.x
							local var_269_4 = (iter_269_3.y or 0) - (iter_269_1.y or 0)
							local var_269_5 = math.max(iter_269_3.distance or 0, iter_269_1.distance or 0)
							local var_269_6 = arg_269_3 and arg_269_3(iter_269_3, iter_269_1) or var_269_3 * var_269_3 + var_269_4 * var_269_4

							if (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_269_0, iter_269_3, iter_269_1)) and var_269_6 <= var_269_5 * var_269_5 then
								var_269_2 = true

								break
							end
						end
					end
				end
			end
		end

		if not var_269_1 then
			var_269_0.victoryAwaitEngagement = true

			__recovered_scope_0.var_0_171.save(arg_269_1)

			return
		end

		if var_269_0.victoryAwaitEngagement and not var_269_2 then
			return
		end
	end

	var_269_0.victoryForced, var_269_0.victoryAwaitEngagement = nil
	var_269_0.victoryCast = {
		applied = false
	}

	require("src.game.combat").chain_casting.begin(arg_269_1)

	var_269_0.state, var_269_0.active = "active", true
	var_269_0.activeAnim = "skill"
	arg_269_1._pendingCavalryHit, arg_269_1.shotPending, arg_269_1.pendingTarget = nil, false
	arg_269_1._casting, arg_269_1._suppressAttack = true, true
	arg_269_1._forceAnim, arg_269_1._forceAnimT = "skill", math.max(0.2, arg_269_2 + 0.1)
	arg_269_1.anim = {
		t = 0,
		name = "skill",
		frame = 1
	}
end

function __recovered_scope_0.var_0_171.forceCharge(arg_270_0)
	if arg_270_0.skill.victoryCast then
		__recovered_scope_0.var_0_171.finish(arg_270_0)
	end

	arg_270_0.skill.victoryCharge = 4
	arg_270_0.skill.victoryBossHits = 0
	arg_270_0.skill.victoryForced = true
	arg_270_0._victorySignalFlash = nil

	__recovered_scope_0.var_0_171.save(arg_270_0)
end

function __recovered_scope_0.var_0_171.frameDuration(arg_271_0, arg_271_1)
	if arg_271_0.skill and arg_271_0.skill.victoryCast and arg_271_0.anim.name == "skill" then
		return arg_271_0.anim.frame == 3 and 0.4 or 0.2
	end

	return arg_271_1
end

function __recovered_scope_0.var_0_171.offset(arg_272_0, arg_272_1)
	if not arg_272_0.skill or not arg_272_0.skill.victoryCast or not arg_272_0.anim or arg_272_0.anim.name ~= "skill" or arg_272_0.anim.frame ~= 3 then
		return 0
	end

	local var_272_0 = arg_272_0.anim.t or 0

	return math.sin(var_272_0 * 85) * 0.7 * (arg_272_1 or 1) * math.max(0, 1 - var_272_0 / 0.4)
end

function __recovered_scope_0.var_0_171.onAnimation(arg_273_0, arg_273_1, arg_273_2)
	local var_273_0 = arg_273_1.skill
	local var_273_1 = var_273_0 and var_273_0.victoryCast

	if not var_273_1 then
		return
	end

	if not __recovered_scope_0.var_0_173(arg_273_1) or __recovered_scope_0.var_0_90.callBlocked(arg_273_1) or arg_273_1.anim.name ~= "skill" then
		__recovered_scope_0.var_0_171.finish(arg_273_1)

		return
	end

	if arg_273_1.anim.frame >= 3 and not var_273_1.applied then
		arg_273_1.anim.frame, arg_273_1.anim.t = 3, 0
		var_273_1.applied = true

		__recovered_scope_0.var_0_171.activate(arg_273_0, arg_273_1)
	end

	if arg_273_1.anim.frame > (arg_273_2 and arg_273_2.animations and arg_273_2.animations.skill and arg_273_2.animations.skill.frames or 6) then
		__recovered_scope_0.var_0_171.finish(arg_273_1)
	end
end

function __recovered_scope_0.var_0_171.activate(arg_274_0, arg_274_1)
	local var_274_0 = arg_274_1.skill

	arg_274_1._victorySignalFlash = 0.45

	for iter_274_0, iter_274_1 in ipairs(arg_274_0.allies or {}) do
		if __recovered_scope_0.var_0_173(iter_274_1) then
			iter_274_1._victorySignalBuffs = iter_274_1._victorySignalBuffs or {}
			iter_274_1._victorySignalBuffs[arg_274_1] = {
				t = (var_274_0.dur or 4) + (require("src.game.awakening").isV8(arg_274_1, arg_274_0) and 0 or require("src.game.awakening").value(arg_274_1, "H12")),
				aspd = var_274_0.aspdBonus or 0.15,
				spd = var_274_0.moveBonus or 0
			}

			__recovered_scope_0.var_0_172(iter_274_1)

			iter_274_1._victorySignalTrace = nil

			local var_274_1 = iter_274_1._victorySignalFX

			if iter_274_1 == arg_274_1 or not var_274_1 or not var_274_1.large or not (var_274_1.t < var_274_1.dur) then
				local var_274_2 = var_274_0._skillDataId == "wings_of_victory"

				iter_274_1._victorySignalFX = {
					t = 0,
					dur = var_274_2 and 1.45 or 1.25,
					large = iter_274_1 == arg_274_1,
					winged = var_274_2
				}
			end
		end
	end
end

function __recovered_scope_0.var_0_171.onKill(arg_275_0, arg_275_1, arg_275_2)
	local var_275_0 = arg_275_1 and arg_275_1.skill

	if not __recovered_scope_0.var_0_173(arg_275_1) or not var_275_0 or var_275_0.kind ~= "VictorySignal" or not arg_275_2 or not ((arg_275_1.rank or 2) >= (var_275_0.minRank or 2)) then
		return
	end

	if (arg_275_2.hp or 0) <= 0 and not arg_275_2.dying and not arg_275_2._victorySignalKillCredited then
		arg_275_2._victorySignalKillCredited = true
		var_275_0.victoryCharge = math.min(4, (var_275_0.victoryCharge or 0) + 1)

		__recovered_scope_0.var_0_171.save(arg_275_1)
	end
end

function __recovered_scope_0.var_0_171.onDamage(arg_276_0, arg_276_1, arg_276_2, arg_276_3, arg_276_4)
	local var_276_0 = arg_276_1 and arg_276_1.skill

	if not __recovered_scope_0.var_0_173(arg_276_1) or not var_276_0 or var_276_0.kind ~= "VictorySignal" or not ((arg_276_1.rank or 2) >= (var_276_0.minRank or 2)) or not arg_276_2 or not arg_276_3 or not (arg_276_3 > 0) then
		return
	end

	if (var_276_0.victoryCharge or 0) >= 4 then
		return
	end

	__recovered_scope_0.var_0_171.onKill(arg_276_0, arg_276_1, arg_276_2)

	local var_276_1 = require("src.game.awakening").victoryHit(arg_276_0, arg_276_1, arg_276_2, arg_276_4, arg_276_2._victorySignalKillCredited == true)

	if (arg_276_2.isBoss or arg_276_2.isFinalBoss or arg_276_2.finalBoss) and arg_276_4 and arg_276_4.basicAttack == true and not arg_276_4.battleSkillDamage and not arg_276_4.dot and not arg_276_4.imprintDamage and not arg_276_4.additionalHit and not arg_276_4.extraHit and not arg_276_4.secondaryDamage and not arg_276_1._inChainProcess and not arg_276_1._inTransferProcess and not arg_276_1._inAnnihilationProcess then
		var_276_0.victoryBossHits = (var_276_0.victoryBossHits or 0) + 1

		if var_276_0.victoryBossHits >= 6 then
			var_276_0.victoryBossHits = var_276_0.victoryBossHits - 6
			var_276_1 = var_276_1 + 1
		end
	end

	var_276_0.victoryCharge = math.min(4, (var_276_0.victoryCharge or 0) + var_276_1)

	__recovered_scope_0.var_0_171.save(arg_276_1)
end

function __recovered_scope_0.var_0_171.update(arg_277_0, arg_277_1)
	arg_277_1 = math.max(0, arg_277_1)

	if not __recovered_scope_0.var_0_173(arg_277_0) then
		__recovered_scope_0.var_0_171.onDeath(arg_277_0)

		return
	end

	if arg_277_0._victorySignalFX then
		local var_277_0 = arg_277_0._victorySignalFX

		var_277_0.t = var_277_0.t + arg_277_1

		if var_277_0.t >= var_277_0.dur or not __recovered_scope_0.var_0_173(arg_277_0) then
			arg_277_0._victorySignalFX = nil
		end
	end

	if arg_277_0._victorySignalBuffs then
		for iter_277_0, iter_277_1 in pairs(arg_277_0._victorySignalBuffs) do
			iter_277_1.t = iter_277_1.t - arg_277_1

			if iter_277_1.t <= 1e-09 then
				arg_277_0._victorySignalBuffs[iter_277_0] = nil
			end
		end

		__recovered_scope_0.var_0_172(arg_277_0)
	elseif arg_277_0._victorySignalT then
		arg_277_0._victorySignalT = math.max(0, arg_277_0._victorySignalT - arg_277_1)

		if arg_277_0._victorySignalT <= 1e-09 or not __recovered_scope_0.var_0_173(arg_277_0) then
			arg_277_0._victorySignalT, arg_277_0._victorySignalASPD, arg_277_0._victorySignalSPD = nil
			arg_277_0._victorySignalTrace = nil
		end
	end

	if arg_277_0._victorySignalFlash then
		arg_277_0._victorySignalFlash = math.max(0, arg_277_0._victorySignalFlash - arg_277_1)

		if arg_277_0._victorySignalFlash <= 0 then
			arg_277_0._victorySignalFlash = nil
		end
	end
end

 __recovered_scope_0.var_0_174 = __recovered_scope_0.var_0_171
 __recovered_scope_0.var_0_175 = nil
 __recovered_scope_0.var_0_176 = {}

 function __recovered_scope_0.var_0_177(arg_278_0)
	return arg_278_0 and arg_278_0.alive and not arg_278_0.dying and (arg_278_0.hp or 1) > 0 and not arg_278_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_178(arg_279_0)
	return __recovered_scope_0.var_0_177(arg_279_0) and (arg_279_0.stunT or 0) <= 0 and (arg_279_0.fearT or 0) <= 0 and not arg_279_0._caveBasiliskPetrified and not arg_279_0._oathHelmStone and not arg_279_0._cosmicPressure and not arg_279_0._succubusCharm and not arg_279_0._wastelandPiperCharm and not arg_279_0._lizardWarlordSkillBlocked
end

function __recovered_scope_0.var_0_176.targetable(arg_280_0, arg_280_1, arg_280_2, arg_280_3)
	return __recovered_scope_0.var_0_177(arg_280_2) and (not arg_280_3 or arg_280_3(arg_280_2, arg_280_1, arg_280_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_280_0, arg_280_1, arg_280_2))
end

 function __recovered_scope_0.var_0_179(arg_281_0, arg_281_1, arg_281_2)
	return arg_281_2 and arg_281_2(arg_281_0, arg_281_1) or ((arg_281_0.x or 0) - (arg_281_1.x or 0))^2 + ((arg_281_0.y or 0) - (arg_281_1.y or 0))^2
end

function __recovered_scope_0.var_0_176.farthest(arg_282_0, arg_282_1, arg_282_2, arg_282_3)
	local var_282_0
	local var_282_1 = -1

	for iter_282_0, iter_282_1 in ipairs(arg_282_0.enemies or {}) do
		if __recovered_scope_0.var_0_176.targetable(arg_282_0, arg_282_1, iter_282_1, arg_282_2) then
			local var_282_2 = __recovered_scope_0.var_0_179(arg_282_1, iter_282_1, arg_282_3)

			if var_282_1 < var_282_2 then
				var_282_0, var_282_1 = iter_282_1, var_282_2
			end
		end
	end

	return var_282_0
end

function __recovered_scope_0.var_0_176.finish(arg_283_0)
	local var_283_0 = arg_283_0.skill

	var_283_0.state, var_283_0.active, var_283_0.vortexCast, var_283_0.targetRef, var_283_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_283_0)
	arg_283_0._casting, arg_283_0._suppressAttack = false, false
	arg_283_0._forceAnim, arg_283_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_176.updateCast(arg_284_0, arg_284_1, arg_284_2, arg_284_3, arg_284_4)
	local var_284_0 = arg_284_1.skill

	if not __recovered_scope_0.var_0_178(arg_284_1) then
		if var_284_0.state == "active" then
			__recovered_scope_0.var_0_176.finish(arg_284_1)
		end

		return
	end

	if var_284_0.state == "active" then
		if not var_284_0.vortexCast or not arg_284_1.anim or arg_284_1.anim.name ~= (var_284_0.activeAnim or "attack2") then
			__recovered_scope_0.var_0_176.finish(arg_284_1)

			return
		end

		arg_284_1._casting, arg_284_1._suppressAttack = true, true
		arg_284_1._forceAnim, arg_284_1._forceAnimT = var_284_0.activeAnim or "attack2", math.max(0.2, arg_284_2 + 0.1)

		return
	end

	var_284_0.cdT = math.min(var_284_0.cd or 6, (var_284_0.cdT or 0) + arg_284_2)

	if var_284_0.cdT < (var_284_0.cd or 6) then
		return
	end

	var_284_0.ready = true

	if not arg_284_1.anim then
		return
	end

	local var_284_1 = __recovered_scope_0.var_0_176.farthest(arg_284_0, arg_284_1, arg_284_3, arg_284_4)

	if not var_284_1 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_284_1)

	var_284_0.state, var_284_0.active, var_284_0.ready, var_284_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_284_0)
	var_284_0.vortexCast = {
		fired = false,
		target = var_284_1
	}
	var_284_0.targetRef = var_284_1
	arg_284_1._pendingWarriorHit, arg_284_1.shotPending, arg_284_1.pendingTarget = nil, false
	arg_284_1._casting, arg_284_1._suppressAttack = true, true
	arg_284_1._forceAnim, arg_284_1._forceAnimT = var_284_0.activeAnim or "attack2", math.max(0.2, arg_284_2 + 0.1)
	arg_284_1.anim.name, arg_284_1.anim.frame, arg_284_1.anim.t, arg_284_1.anim.reverse = arg_284_1._forceAnim, 1, 0
	arg_284_1.anim._desynced = true
	arg_284_1.facing = (var_284_1.x or 0) >= (arg_284_1.x or 0) and 1 or -1
	arg_284_1._attackFacing = arg_284_1.facing
end

function __recovered_scope_0.var_0_176.onAnimation(arg_285_0, arg_285_1, arg_285_2, arg_285_3, arg_285_4, arg_285_5, arg_285_6)
	local var_285_0 = arg_285_1.skill
	local var_285_1 = var_285_0 and var_285_0.vortexCast

	if not var_285_1 then
		return
	end

	if not __recovered_scope_0.var_0_178(arg_285_1) or not arg_285_1.anim or arg_285_1.anim.name ~= (var_285_0.activeAnim or "attack2") then
		__recovered_scope_0.var_0_176.finish(arg_285_1)

		return
	end

	if not var_285_1.fired and (arg_285_1.anim.frame or 1) >= (var_285_0.releaseFrame or 3) then
		arg_285_1.anim.frame, arg_285_1.anim.t = var_285_0.releaseFrame or 3, 0
		var_285_1.fired = true

		local var_285_2 = var_285_1.target

		if not __recovered_scope_0.var_0_176.targetable(arg_285_0, arg_285_1, var_285_2, arg_285_4) then
			var_285_2 = __recovered_scope_0.var_0_176.farthest(arg_285_0, arg_285_1, arg_285_4, arg_285_5)
		end

		if var_285_2 then
			(arg_285_6 or require("src.game.projectiles").spellblade_vortex.launch)(arg_285_0, arg_285_1, var_285_2, arg_285_3, arg_285_5, arg_285_2)
		end
	end

	local var_285_3 = arg_285_2 and arg_285_2.animations and arg_285_2.animations[var_285_0.activeAnim or "attack2"]

	if arg_285_1.anim.frame > (var_285_3 and var_285_3.frames or 8) then
		__recovered_scope_0.var_0_176.finish(arg_285_1)
	end
end

function __recovered_scope_0.var_0_176.impact(arg_286_0, arg_286_1, arg_286_2, arg_286_3)
	if arg_286_1.applied then
		return
	end

	arg_286_1.applied = true

	local var_286_0 = arg_286_1.target

	if not __recovered_scope_0.var_0_176.targetable(arg_286_0, arg_286_1.owner, var_286_0, arg_286_2) then
		arg_286_1.finished = true

		return
	end

	local var_286_1 = {}
	local var_286_2 = {
		[var_286_0] = true
	}

	for iter_286_0, iter_286_1 in ipairs(arg_286_0.enemies or {}) do
		if not var_286_2[iter_286_1] and __recovered_scope_0.var_0_176.targetable(arg_286_0, arg_286_1.owner, iter_286_1, arg_286_2) then
			var_286_2[iter_286_1] = true
			var_286_1[#var_286_1 + 1] = {
				target = iter_286_1,
				d = __recovered_scope_0.var_0_179(var_286_0, iter_286_1, arg_286_1.metric),
				index = iter_286_0
			}
		end
	end

	table.sort(var_286_1, function(arg_287_0, arg_287_1)
		if arg_287_0.d == arg_287_1.d then
			return arg_287_0.index < arg_287_1.index
		end

		return arg_287_0.d < arg_287_1.d
	end)

	local var_286_3 = {
		var_286_0
	}
	local var_286_4 = require("src.game.combat").branching_bloom

	for iter_286_2 = 1, math.min(#var_286_1, var_286_4.limit(arg_286_0, arg_286_1.owner, 2) - 1) do
		var_286_3[#var_286_3 + 1] = var_286_1[iter_286_2].target
	end

	arg_286_1.victims = var_286_3

	local var_286_5 = var_286_3[2]

	if var_286_5 and not var_286_5.isBoss and not var_286_5.isFinalBoss and not var_286_5.finalBoss then
		local var_286_6 = (var_286_0.x or 0) - (var_286_5.x or 0)
		local var_286_7 = (var_286_0.y or 0) - (var_286_5.y or 0)
		local var_286_8 = math.sqrt(var_286_6 * var_286_6 + var_286_7 * var_286_7)

		if var_286_8 > 1e-06 then
			local var_286_9 = math.min(arg_286_1.pullDistance or 50, var_286_8)

			arg_286_1.pull = {
				progress = 0,
				target = var_286_5,
				dx = var_286_6 / var_286_8 * var_286_9,
				dy = var_286_7 / var_286_8 * var_286_9
			}
		end
	end

	require("src.game.awakening").skillTargets(arg_286_0, arg_286_1.owner, var_286_3, 2, function(arg_288_0)
		return __recovered_scope_0.var_0_176.targetable(arg_286_0, arg_286_1.owner, arg_288_0, arg_286_2)
	end)

	for iter_286_3, iter_286_4 in ipairs(var_286_3) do
		local var_286_10 = (arg_286_1.atk or 0) * (iter_286_3 == 1 and (arg_286_1.dmgMul or 1.4) or arg_286_1.splashDmgMul or 0.8)

		if not var_286_4.extra(arg_286_0, arg_286_1.owner, iter_286_3, 2, iter_286_4, var_286_10, arg_286_3) then
			arg_286_3(iter_286_4, var_286_10, arg_286_1.owner, nil, {
				battleSkillDamage = true,
				basicAttack = false,
				chainCast = arg_286_1.chainCast or false,
				awakeningCast = arg_286_1.awakeningCast
			})
		end
	end
end

function __recovered_scope_0.var_0_176.advancePull(arg_289_0, arg_289_1, arg_289_2, arg_289_3)
	local var_289_0 = arg_289_1.pull

	if not var_289_0 then
		return
	end

	local var_289_1 = var_289_0.target

	if not __recovered_scope_0.var_0_176.targetable(arg_289_0, arg_289_1.owner, var_289_1, arg_289_3) or var_289_1.isBoss or var_289_1.isFinalBoss or var_289_1.finalBoss then
		arg_289_1.pull = nil

		return
	end

	local var_289_2 = math.max(var_289_0.progress, math.min(1, arg_289_2))
	local var_289_3 = var_289_0.progress * var_289_0.progress * (3 - 2 * var_289_0.progress)
	local var_289_4 = var_289_2 * var_289_2 * (3 - 2 * var_289_2)

	var_289_1.x, var_289_1.y = (var_289_1.x or 0) + var_289_0.dx * (var_289_4 - var_289_3), (var_289_1.y or 0) + var_289_0.dy * (var_289_4 - var_289_3)
	var_289_0.progress = var_289_2
end

 __recovered_scope_0.var_0_180 = __recovered_scope_0.var_0_176
 __recovered_scope_0.var_0_181 = nil
 __recovered_scope_0.var_0_182 = {}
 __recovered_scope_0.var_0_183 = __recovered_scope_0.var_0_180

__recovered_scope_0.var_0_182.targetable, __recovered_scope_0.var_0_182.farthest, __recovered_scope_0.var_0_182.finish, __recovered_scope_0.var_0_182.updateCast = __recovered_scope_0.var_0_183.targetable, __recovered_scope_0.var_0_183.farthest, __recovered_scope_0.var_0_183.finish, __recovered_scope_0.var_0_183.updateCast

function __recovered_scope_0.var_0_182.onAnimation(arg_290_0, arg_290_1, arg_290_2, arg_290_3, arg_290_4, arg_290_5)
	return __recovered_scope_0.var_0_183.onAnimation(arg_290_0, arg_290_1, arg_290_2, arg_290_3, arg_290_4, arg_290_5, require("src.game.projectiles").arcane_collapse.launch)
end

 function __recovered_scope_0.var_0_184(arg_291_0, arg_291_1, arg_291_2)
	return arg_291_2 and arg_291_2(arg_291_0, arg_291_1) or ((arg_291_0.x or 0) - (arg_291_1.x or 0))^2 + ((arg_291_0.y or 0) - (arg_291_1.y or 0))^2
end

 function __recovered_scope_0.var_0_185(arg_292_0)
	return arg_292_0.isBoss or arg_292_0.isFinalBoss or arg_292_0.finalBoss
end

function __recovered_scope_0.var_0_182.gather(arg_293_0, arg_293_1, arg_293_2)
	if arg_293_1.gathered then
		return
	end

	arg_293_1.gathered = true

	local var_293_0 = arg_293_1.target

	arg_293_1.victims, arg_293_1.pulls = {}, {}

	if not __recovered_scope_0.var_0_182.targetable(arg_293_0, arg_293_1.owner, var_293_0, arg_293_2) then
		return
	end

	local var_293_1 = arg_293_1.radius or 90
	local var_293_2 = {}
	local var_293_3 = {
		[var_293_0] = true
	}

	for iter_293_0, iter_293_1 in ipairs(arg_293_0.enemies or {}) do
		if not var_293_3[iter_293_1] and __recovered_scope_0.var_0_182.targetable(arg_293_0, arg_293_1.owner, iter_293_1, arg_293_2) then
			var_293_3[iter_293_1] = true

			local var_293_4 = __recovered_scope_0.var_0_184(var_293_0, iter_293_1, arg_293_1.metric)

			if var_293_4 <= var_293_1 * var_293_1 then
				var_293_2[#var_293_2 + 1] = {
					target = iter_293_1,
					d = var_293_4,
					index = iter_293_0
				}
			end
		end
	end

	table.sort(var_293_2, function(arg_294_0, arg_294_1)
		if arg_294_0.d == arg_294_1.d then
			return arg_294_0.index < arg_294_1.index
		end

		return arg_294_0.d < arg_294_1.d
	end)

	local var_293_5 = arg_293_1.maxTargets or 3
	local var_293_6 = {
		var_293_0
	}

	for iter_293_2 = 1, math.min(#var_293_2, require("src.game.combat").branching_bloom.limit(arg_293_0, arg_293_1.owner, var_293_5) - 1) do
		var_293_6[#var_293_6 + 1] = var_293_2[iter_293_2].target
	end

	arg_293_1.victims = var_293_6

	for iter_293_3 = 2, math.min(#var_293_6, var_293_5) do
		local var_293_7 = var_293_6[iter_293_3]
		local var_293_8 = (var_293_0.x or 0) - (var_293_7.x or 0)
		local var_293_9 = (var_293_0.y or 0) - (var_293_7.y or 0)
		local var_293_10 = math.sqrt(var_293_8 * var_293_8 + var_293_9 * var_293_9)
		local var_293_11 = math.min(arg_293_1.pullDistance or 50, var_293_10)

		if not __recovered_scope_0.var_0_185(var_293_7) and var_293_11 > 1e-06 then
			arg_293_1.pulls[#arg_293_1.pulls + 1] = {
				progress = 0,
				target = var_293_7,
				dx = var_293_8 / var_293_10 * var_293_11,
				dy = var_293_9 / var_293_10 * var_293_11
			}
		end
	end

	require("src.game.awakening").skillTargets(arg_293_0, arg_293_1.owner, var_293_6, var_293_5, function(arg_295_0)
		return __recovered_scope_0.var_0_182.targetable(arg_293_0, arg_293_1.owner, arg_295_0, arg_293_2)
	end)
end

function __recovered_scope_0.var_0_182.advancePull(arg_296_0, arg_296_1, arg_296_2, arg_296_3)
	for iter_296_0 = #(arg_296_1.pulls or {}), 1, -1 do
		local var_296_0 = arg_296_1.pulls[iter_296_0]
		local var_296_1 = var_296_0.target

		if not __recovered_scope_0.var_0_182.targetable(arg_296_0, arg_296_1.owner, var_296_1, arg_296_3) or __recovered_scope_0.var_0_185(var_296_1) then
			table.remove(arg_296_1.pulls, iter_296_0)
		else
			local var_296_2 = math.max(var_296_0.progress, math.min(1, arg_296_2))
			local var_296_3 = var_296_0.progress * var_296_0.progress * (3 - 2 * var_296_0.progress)
			local var_296_4 = var_296_2 * var_296_2 * (3 - 2 * var_296_2)

			var_296_1.x, var_296_1.y = (var_296_1.x or 0) + var_296_0.dx * (var_296_4 - var_296_3), (var_296_1.y or 0) + var_296_0.dy * (var_296_4 - var_296_3)
			var_296_0.progress = var_296_2
		end
	end
end

__recovered_scope_0.var_0_182.BURST_RADIUS = 36

function __recovered_scope_0.var_0_182.explode(arg_297_0, arg_297_1, arg_297_2, arg_297_3)
	if arg_297_1.exploded then
		return
	end

	arg_297_1.exploded = true

	local var_297_0 = arg_297_1.target
	local var_297_1 = (arg_297_1.burstRadius or __recovered_scope_0.var_0_182.BURST_RADIUS)^2
	local var_297_2 = {}
	local var_297_3 = {}

	for iter_297_0, iter_297_1 in ipairs(arg_297_1.victims or {}) do
		if not var_297_3[iter_297_1] then
			var_297_3[iter_297_1] = true
			var_297_2[#var_297_2 + 1] = iter_297_1
		end
	end

	local var_297_4 = {}

	for iter_297_2, iter_297_3 in ipairs(arg_297_0.enemies or {}) do
		if not var_297_3[iter_297_3] then
			var_297_4[#var_297_4 + 1] = {
				target = iter_297_3,
				d = __recovered_scope_0.var_0_184(var_297_0, iter_297_3, arg_297_1.metric),
				index = iter_297_2
			}
		end
	end

	table.sort(var_297_4, function(arg_298_0, arg_298_1)
		if arg_298_0.d == arg_298_1.d then
			return arg_298_0.index < arg_298_1.index
		end

		return arg_298_0.d < arg_298_1.d
	end)

	for iter_297_4, iter_297_5 in ipairs(var_297_4) do
		var_297_2[#var_297_2 + 1] = iter_297_5.target
	end

	local var_297_5 = require("src.game.combat").branching_bloom
	local var_297_6 = arg_297_1.maxTargets or 3
	local var_297_7 = var_297_5.limit(arg_297_0, arg_297_1.owner, var_297_6)
	local var_297_8 = 0

	arg_297_1.struck = {}

	for iter_297_6, iter_297_7 in ipairs(var_297_2) do
		if var_297_7 <= var_297_8 then
			break
		end

		if __recovered_scope_0.var_0_182.targetable(arg_297_0, arg_297_1.owner, iter_297_7, arg_297_2) and (iter_297_7 == var_297_0 or var_297_1 >= __recovered_scope_0.var_0_184(var_297_0, iter_297_7, arg_297_1.metric)) then
			var_297_8 = var_297_8 + 1
			arg_297_1.struck[var_297_8] = iter_297_7

			local var_297_9 = (arg_297_1.atk or 0) * (arg_297_1.dmgMul or 0.9)

			if not var_297_5.extra(arg_297_0, arg_297_1.owner, var_297_8, var_297_6, iter_297_7, var_297_9, arg_297_3) then
				arg_297_3(iter_297_7, var_297_9, arg_297_1.owner, nil, {
					battleSkillDamage = true,
					basicAttack = false,
					chainCast = arg_297_1.chainCast or false,
					awakeningCast = arg_297_1.awakeningCast
				})
			end
		end
	end
end

 __recovered_scope_0.var_0_186 = __recovered_scope_0.var_0_182
 __recovered_scope_0.var_0_187 = nil
 __recovered_scope_0.var_0_188 = {}

__recovered_scope_0.var_0_188.RADIUS = 64
__recovered_scope_0.var_0_188.KILL_PAUSE, __recovered_scope_0.var_0_188.CALM, __recovered_scope_0.var_0_188.GIVE_UP = 0.45, 0.2, 1.5

 function __recovered_scope_0.var_0_189(arg_299_0)
	return arg_299_0 and arg_299_0.alive and not arg_299_0.dying and (arg_299_0.hp or 1) > 0 and not arg_299_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_190(arg_300_0)
	return __recovered_scope_0.var_0_189(arg_300_0) and (arg_300_0.stunT or 0) <= 0 and (arg_300_0.fearT or 0) <= 0 and not arg_300_0._caveBasiliskPetrified and not arg_300_0._oathHelmStone and not arg_300_0._cosmicPressure and not arg_300_0._succubusCharm and not arg_300_0._wastelandPiperCharm and not arg_300_0._lizardWarlordSkillBlocked
end

 function __recovered_scope_0.var_0_191(arg_301_0, arg_301_1, arg_301_2)
	return arg_301_2 and arg_301_2(arg_301_0, arg_301_1) or ((arg_301_0.x or 0) - (arg_301_1.x or 0))^2 + ((arg_301_0.y or 0) - (arg_301_1.y or 0))^2
end

function __recovered_scope_0.var_0_188.matches(arg_302_0)
	return arg_302_0 ~= nil and arg_302_0.skill ~= nil and arg_302_0.skill.kind == "RuinTremor"
end

function __recovered_scope_0.var_0_188.barFill(arg_303_0)
	if not __recovered_scope_0.var_0_188.matches(arg_303_0) then
		return 1
	end

	local var_303_0 = arg_303_0.skill

	if var_303_0.state == "active" then
		return 1
	end

	return math.max(0, math.min(1, (var_303_0.cdT or 0) / math.max(0.001, var_303_0.cd or 5)))
end

function __recovered_scope_0.var_0_188.targetable(arg_304_0, arg_304_1, arg_304_2, arg_304_3)
	return __recovered_scope_0.var_0_189(arg_304_2) and (not arg_304_3 or arg_304_3(arg_304_2, arg_304_1, arg_304_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_304_0, arg_304_1, arg_304_2))
end

function __recovered_scope_0.var_0_188.beginBattle(arg_305_0)
	for iter_305_0, iter_305_1 in ipairs(arg_305_0 and arg_305_0.allies or {}) do
		if __recovered_scope_0.var_0_188.matches(iter_305_1) then
			local var_305_0 = iter_305_1.skill

			var_305_0.cdT, var_305_0.tremorQueued, var_305_0.tremorCalm, var_305_0.tremorCast, var_305_0.state, var_305_0.active = var_305_0.cd or 5, nil, nil, nil, nil, false
		end
	end
end

function __recovered_scope_0.var_0_188.onKill(arg_306_0, arg_306_1, arg_306_2, arg_306_3)
	if not arg_306_0 or arg_306_0.mode ~= "battle" or not __recovered_scope_0.var_0_188.matches(arg_306_1) or not __recovered_scope_0.var_0_189(arg_306_1) then
		return
	end

	if arg_306_3 and arg_306_3.ruinTremor then
		return
	end

	local var_306_0 = arg_306_1.skill

	if (arg_306_1.rank or 1) < (tonumber(var_306_0.minRank) or 3) or var_306_0.state == "active" or (var_306_0.cdT or 0) < (var_306_0.cd or 5) then
		return
	end

	if not var_306_0.tremorQueued then
		var_306_0.tremorQueued, var_306_0.tremorCalm = 0, 0
	end
end

function __recovered_scope_0.var_0_188.finish(arg_307_0)
	local var_307_0 = arg_307_0.skill

	var_307_0.state, var_307_0.active, var_307_0.tremorCast = nil, false
	arg_307_0._casting, arg_307_0._suppressAttack, arg_307_0._tremorHold = false, false
	arg_307_0._forceAnim, arg_307_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_188.updateCast(arg_308_0, arg_308_1, arg_308_2, arg_308_3, arg_308_4)
	local var_308_0 = arg_308_1.skill

	var_308_0.cdT = math.min(var_308_0.cd or 5, (var_308_0.cdT or 0) + arg_308_2)

	if var_308_0.state == "active" then
		if not __recovered_scope_0.var_0_190(arg_308_1) or not arg_308_1.anim or arg_308_1.anim.name ~= (var_308_0.activeAnim or "attack3") then
			__recovered_scope_0.var_0_188.finish(arg_308_1)

			return
		end

		arg_308_1._casting, arg_308_1._suppressAttack = true, true
		arg_308_1._forceAnim, arg_308_1._forceAnimT = var_308_0.activeAnim or "attack3", math.max(0.2, arg_308_2 + 0.1)

		return
	end

	if not var_308_0.tremorQueued then
		return
	end

	var_308_0.tremorQueued = var_308_0.tremorQueued + arg_308_2

	local var_308_1 = __recovered_scope_0.var_0_190(arg_308_1) and arg_308_1.anim ~= nil

	if var_308_0.tremorQueued > __recovered_scope_0.var_0_188.GIVE_UP or not var_308_1 then
		if arg_308_1._tremorHold then
			arg_308_1._casting, arg_308_1._tremorHold = false
		end

		if var_308_0.tremorQueued > __recovered_scope_0.var_0_188.GIVE_UP then
			var_308_0.tremorQueued, var_308_0.tremorCalm = nil
		end

		return
	end

	if tostring(arg_308_1.anim.name):sub(1, 6) == "attack" then
		var_308_0.tremorCalm = 0

		return
	end

	var_308_0.tremorCalm = (var_308_0.tremorCalm or 0) + arg_308_2
	arg_308_1._casting, arg_308_1._tremorHold = true, true

	if var_308_0.tremorQueued < __recovered_scope_0.var_0_188.KILL_PAUSE or var_308_0.tremorCalm < __recovered_scope_0.var_0_188.CALM then
		return
	end

	var_308_0.tremorQueued, var_308_0.tremorCalm, arg_308_1._tremorHold = nil
	var_308_0.state, var_308_0.active, var_308_0.cdT = "active", true, 0
	var_308_0.tremorCast = {
		fired = false
	}
	arg_308_1._pendingWarriorHit, arg_308_1.shotPending, arg_308_1.pendingTarget = nil, false
	arg_308_1._casting, arg_308_1._suppressAttack = true, true
	arg_308_1._forceAnim, arg_308_1._forceAnimT = var_308_0.activeAnim or "attack3", math.max(0.2, arg_308_2 + 0.1)
	arg_308_1.anim.name, arg_308_1.anim.frame, arg_308_1.anim.t, arg_308_1.anim.reverse = arg_308_1._forceAnim, 1, 0
	arg_308_1.anim._desynced = true
end

 function __recovered_scope_0.var_0_192(arg_309_0, arg_309_1)
	local var_309_0 = arg_309_1.skill
	local var_309_1 = arg_309_1.primarySkillDef
	local var_309_2 = tonumber(var_309_1 and var_309_1.effects and var_309_1.effects.shieldMaxHpRatio) or 0.15
	local var_309_3 = math.floor((tonumber(arg_309_1.maxhp) or 0) * var_309_2 + 0.5)

	if var_309_3 <= 0 then
		return
	end

	local var_309_4 = tonumber(var_309_0.dur) or 3
	local var_309_5 = arg_309_1._holyBarrierShield
	local var_309_6 = not var_309_5 or var_309_5.origin == "RuinTremor" or var_309_3 >= (var_309_5.hp or 0)

	if var_309_5 and var_309_6 then
		var_309_5.hp, var_309_5.max, var_309_5.t, var_309_5.lastHP, var_309_5.origin = var_309_3, var_309_3, var_309_4, arg_309_1.hp, "RuinTremor"
	elseif var_309_5 then
		var_309_5.t = math.max(var_309_5.t or 0, var_309_4)
	else
		local var_309_7 = {
			fresh = true,
			hp = var_309_3,
			max = var_309_3,
			t = var_309_4,
			lastHP = arg_309_1.hp
		}

		arg_309_1._holyBarrierShield = var_309_7

		require("src.game.combat").shield_break.register(arg_309_0, var_309_7, "RuinTremor")
	end

	arg_309_1.hpbarShowT = math.max(arg_309_1.hpbarShowT or 0, var_309_4)
	arg_309_1._factionShieldHitT = 0.35

	if var_309_6 then
		require("src.ui.effects").holy_barrier.receive(arg_309_1)

		arg_309_1._holyWardFx.ramp = "shadow"
	end
end

function __recovered_scope_0.var_0_188.stomp(arg_310_0, arg_310_1, arg_310_2, arg_310_3, arg_310_4, arg_310_5)
	local var_310_0 = arg_310_1.skill
	local var_310_1 = tonumber(var_310_0.radius) or __recovered_scope_0.var_0_188.RADIUS
	local var_310_2 = {}

	for iter_310_0, iter_310_1 in ipairs(arg_310_0.enemies or {}) do
		if __recovered_scope_0.var_0_188.targetable(arg_310_0, arg_310_1, iter_310_1, arg_310_3) then
			local var_310_3 = __recovered_scope_0.var_0_191(arg_310_1, iter_310_1, arg_310_4)

			if var_310_3 <= var_310_1 * var_310_1 then
				var_310_2[#var_310_2 + 1] = {
					target = iter_310_1,
					d = var_310_3,
					index = iter_310_0
				}
			end
		end
	end

	table.sort(var_310_2, function(arg_311_0, arg_311_1)
		if arg_311_0.d == arg_311_1.d then
			return arg_311_0.index < arg_311_1.index
		end

		return arg_311_0.d < arg_311_1.d
	end)

	local var_310_4 = tonumber(var_310_0.maxTargets) or 3
	local var_310_5 = {}

	for iter_310_2 = 1, math.min(#var_310_2, var_310_4) do
		var_310_5[iter_310_2] = var_310_2[iter_310_2].target
	end

	require("src.game.awakening").skillTargets(arg_310_0, arg_310_1, var_310_5, var_310_4, function(arg_312_0)
		return __recovered_scope_0.var_0_188.targetable(arg_310_0, arg_310_1, arg_312_0, arg_310_3)
	end)

	for iter_310_3, iter_310_4 in ipairs(var_310_5) do
		arg_310_5(iter_310_4, (arg_310_2 or 0) * (var_310_0.dmgMul or 0.7), arg_310_1, nil, {
			battleSkillDamage = true,
			ruinTremor = true,
			basicAttack = false,
			awakeningCast = arg_310_1._awakening and arg_310_1._awakening.cast
		})
	end

	__recovered_scope_0.var_0_192(arg_310_0, arg_310_1)

	var_310_0.tremorHits = var_310_5

	local var_310_6 = require("src.ui.effects").ruin_tremor
	local var_310_7 = __recovered_scope_0.var_0_55.footPoint
	local var_310_8, var_310_9 = var_310_7(arg_310_0, arg_310_1, false)
	local var_310_10 = {}

	for iter_310_5, iter_310_6 in ipairs(var_310_5) do
		local var_310_11, var_310_12 = var_310_7(arg_310_0, iter_310_6, true)

		var_310_10[iter_310_5] = {
			x = var_310_11,
			footY = var_310_12,
			target = iter_310_6
		}
	end

	local var_310_13 = require("src.game.projectiles").spellblade_vortex.drawSize(arg_310_0)
	local var_310_14 = {
		t = 0,
		kind = "ruin_tremor",
		dur = var_310_6.duration,
		owner = arg_310_1,
		x = var_310_8,
		footY = var_310_9,
		radius = var_310_1,
		hits = var_310_10,
		groundScale = math.max(0.1, math.min(1, tonumber(arg_310_0.ui and arg_310_0.ui.battle and arg_310_0.ui.battle.rangeEllipseYScale) or 0.5)),
		pixel = math.max(1, math.floor(var_310_13 / 32 + 0.5))
	}

	arg_310_0.vfxList = arg_310_0.vfxList or {}
	arg_310_0.vfxList[#arg_310_0.vfxList + 1] = var_310_14
	arg_310_0.cameraShake = {
		t = 0,
		dur = var_310_6.SHAKE_DUR,
		ampY = var_310_6.SHAKE_AMP
	}

	return var_310_5
end

function __recovered_scope_0.var_0_188.onAnimation(arg_313_0, arg_313_1, arg_313_2, arg_313_3, arg_313_4, arg_313_5, arg_313_6)
	local var_313_0 = arg_313_1.skill
	local var_313_1 = var_313_0 and var_313_0.tremorCast

	if not var_313_1 then
		return
	end

	if not __recovered_scope_0.var_0_190(arg_313_1) or not arg_313_1.anim or arg_313_1.anim.name ~= (var_313_0.activeAnim or "attack3") then
		__recovered_scope_0.var_0_188.finish(arg_313_1)

		return
	end

	if not var_313_1.fired and (arg_313_1.anim.frame or 1) >= (var_313_0.releaseFrame or 3) then
		arg_313_1.anim.frame, arg_313_1.anim.t = var_313_0.releaseFrame or 3, 0
		var_313_1.fired = true

		__recovered_scope_0.var_0_188.stomp(arg_313_0, arg_313_1, arg_313_3, arg_313_4, arg_313_5, arg_313_6)
	end

	local var_313_2 = arg_313_2 and arg_313_2.animations and arg_313_2.animations[var_313_0.activeAnim or "attack3"]

	if arg_313_1.anim.frame > (var_313_2 and var_313_2.frames or 9) then
		__recovered_scope_0.var_0_188.finish(arg_313_1)
	end
end

 __recovered_scope_0.var_0_193 = __recovered_scope_0.var_0_188
 __recovered_scope_0.var_0_194 = nil
 __recovered_scope_0.var_0_195 = {}

__recovered_scope_0.var_0_195.KNOCKBACK, __recovered_scope_0.var_0_195.KNOCK_DUR, __recovered_scope_0.var_0_195.KNOCK_HOP = 32, 0.3, 3

 __recovered_scope_0.var_0_196 = __recovered_scope_0.var_0_180

 function __recovered_scope_0.var_0_197(arg_314_0)
	return arg_314_0 and arg_314_0.alive and not arg_314_0.dying and (arg_314_0.hp or 1) > 0 and not arg_314_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_198(arg_315_0)
	return __recovered_scope_0.var_0_197(arg_315_0) and (arg_315_0.stunT or 0) <= 0 and (arg_315_0.fearT or 0) <= 0 and not arg_315_0._caveBasiliskPetrified and not arg_315_0._oathHelmStone and not arg_315_0._cosmicPressure and not arg_315_0._succubusCharm and not arg_315_0._wastelandPiperCharm and not arg_315_0._lizardWarlordSkillBlocked
end

 function __recovered_scope_0.var_0_199(arg_316_0, arg_316_1, arg_316_2)
	return arg_316_2 and arg_316_2(arg_316_0, arg_316_1) or ((arg_316_0.x or 0) - (arg_316_1.x or 0))^2 + ((arg_316_0.y or 0) - (arg_316_1.y or 0))^2
end

__recovered_scope_0.var_0_195.targetable = __recovered_scope_0.var_0_196.targetable

function __recovered_scope_0.var_0_195.inRange(arg_317_0, arg_317_1, arg_317_2, arg_317_3, arg_317_4)
	if not __recovered_scope_0.var_0_196.targetable(arg_317_0, arg_317_1, arg_317_2, arg_317_3) then
		return false
	end

	local var_317_0 = require("src.game.combat").anchored_stance.range(arg_317_1) + 1

	return require("src.game.awakening").skillMetric(arg_317_1, arg_317_2, __recovered_scope_0.var_0_199(arg_317_1, arg_317_2, arg_317_4)) <= var_317_0 * var_317_0
end

function __recovered_scope_0.var_0_195.candidates(arg_318_0, arg_318_1, arg_318_2, arg_318_3)
	local var_318_0 = {}

	for iter_318_0, iter_318_1 in ipairs(arg_318_0.enemies or {}) do
		if __recovered_scope_0.var_0_195.inRange(arg_318_0, arg_318_1, iter_318_1, arg_318_2, arg_318_3) then
			var_318_0[#var_318_0 + 1] = {
				target = iter_318_1,
				d = __recovered_scope_0.var_0_199(arg_318_1, iter_318_1, arg_318_3),
				index = iter_318_0
			}
		end
	end

	table.sort(var_318_0, function(arg_319_0, arg_319_1)
		if arg_319_0.d == arg_319_1.d then
			return arg_319_0.index < arg_319_1.index
		end

		return arg_319_0.d < arg_319_1.d
	end)

	return var_318_0
end

function __recovered_scope_0.var_0_195.finish(arg_320_0)
	local var_320_0 = arg_320_0.skill

	var_320_0.state, var_320_0.active, var_320_0.rainCast, var_320_0.targetRef, var_320_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_320_0)
	arg_320_0._casting, arg_320_0._suppressAttack = false, false
	arg_320_0._forceAnim, arg_320_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_195.updateCast(arg_321_0, arg_321_1, arg_321_2, arg_321_3, arg_321_4)
	local var_321_0 = arg_321_1.skill

	if not __recovered_scope_0.var_0_198(arg_321_1) then
		if var_321_0.state == "active" then
			__recovered_scope_0.var_0_195.finish(arg_321_1)
		end

		return
	end

	if var_321_0.state == "active" then
		if not var_321_0.rainCast or not arg_321_1.anim or arg_321_1.anim.name ~= (var_321_0.activeAnim or "attack3") then
			__recovered_scope_0.var_0_195.finish(arg_321_1)

			return
		end

		arg_321_1._casting, arg_321_1._suppressAttack = true, true
		arg_321_1._forceAnim, arg_321_1._forceAnimT = var_321_0.activeAnim or "attack3", math.max(0.2, arg_321_2 + 0.1)

		return
	end

	var_321_0.cdT = math.min(var_321_0.cd or 7, (var_321_0.cdT or 0) + arg_321_2)

	if var_321_0.cdT < (var_321_0.cd or 7) then
		return
	end

	var_321_0.ready = true

	if not arg_321_1.anim then
		return
	end

	local var_321_1 = __recovered_scope_0.var_0_195.candidates(arg_321_0, arg_321_1, arg_321_3, arg_321_4)[1]

	if not var_321_1 then
		return
	end

	local var_321_2 = var_321_1.target

	require("src.game.combat").chain_casting.begin(arg_321_1)

	var_321_0.state, var_321_0.active, var_321_0.ready, var_321_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_321_0)
	var_321_0.rainCast = {
		fired = false
	}
	var_321_0.targetRef = var_321_2
	arg_321_1._pendingWarriorHit, arg_321_1.shotPending, arg_321_1.pendingTarget = nil, false
	arg_321_1._casting, arg_321_1._suppressAttack = true, true
	arg_321_1._forceAnim, arg_321_1._forceAnimT = var_321_0.activeAnim or "attack3", math.max(0.2, arg_321_2 + 0.1)
	arg_321_1.anim.name, arg_321_1.anim.frame, arg_321_1.anim.t, arg_321_1.anim.reverse = arg_321_1._forceAnim, 1, 0
	arg_321_1.anim._desynced = true
	arg_321_1.facing = (var_321_2.x or 0) >= (arg_321_1.x or 0) and 1 or -1
	arg_321_1._attackFacing = arg_321_1.facing
end

function __recovered_scope_0.var_0_195.release(arg_322_0, arg_322_1, arg_322_2, arg_322_3, arg_322_4)
	local var_322_0 = arg_322_1.skill
	local var_322_1 = arg_322_1.primarySkillDef and arg_322_1.primarySkillDef.runtime or {}
	local var_322_2 = tonumber(var_322_0.maxTargets) or 3
	local var_322_3 = __recovered_scope_0.var_0_195.candidates(arg_322_0, arg_322_1, arg_322_3, arg_322_4)
	local var_322_4 = {}

	for iter_322_0 = 1, math.min(#var_322_3, var_322_2) do
		var_322_4[iter_322_0] = var_322_3[iter_322_0].target
	end

	if #var_322_4 == 0 then
		return nil
	end

	require("src.game.awakening").skillTargets(arg_322_0, arg_322_1, var_322_4, var_322_2, function(arg_323_0)
		return __recovered_scope_0.var_0_195.inRange(arg_322_0, arg_322_1, arg_323_0, arg_322_3, arg_322_4)
	end)

	local var_322_5 = {}

	for iter_322_1 = 1, tonumber(var_322_1.arrows) or 3 do
		var_322_5[iter_322_1] = {
			target = var_322_4[(iter_322_1 - 1) % #var_322_4 + 1]
		}
	end

	if var_322_2 < require("src.game.combat").branching_bloom.limit(arg_322_0, arg_322_1, var_322_2) and var_322_3[var_322_2 + 1] then
		var_322_5[#var_322_5 + 1] = {
			bloom = true,
			target = var_322_3[var_322_2 + 1].target
		}
	end

	return require("src.game.projectiles").arrow_rain.launch(arg_322_0, arg_322_1, var_322_5, arg_322_2, arg_322_4, var_322_2, {
		gap = tonumber(var_322_1.gap),
		style = var_322_1.style,
		height = tonumber(var_322_1.height),
		fall = tonumber(var_322_1.fall)
	})
end

function __recovered_scope_0.var_0_195.onAnimation(arg_324_0, arg_324_1, arg_324_2, arg_324_3, arg_324_4, arg_324_5)
	local var_324_0 = arg_324_1.skill
	local var_324_1 = var_324_0 and var_324_0.rainCast

	if not var_324_1 then
		return
	end

	if not __recovered_scope_0.var_0_198(arg_324_1) or not arg_324_1.anim or arg_324_1.anim.name ~= (var_324_0.activeAnim or "attack3") then
		__recovered_scope_0.var_0_195.finish(arg_324_1)

		return
	end

	if not var_324_1.fired and (arg_324_1.anim.frame or 1) >= (var_324_0.releaseFrame or 12) then
		arg_324_1.anim.frame, arg_324_1.anim.t = var_324_0.releaseFrame or 12, 0
		var_324_1.fired = true

		__recovered_scope_0.var_0_195.release(arg_324_0, arg_324_1, arg_324_3, arg_324_4, arg_324_5)
	end

	local var_324_2 = arg_324_2 and arg_324_2.animations and arg_324_2.animations[var_324_0.activeAnim or "attack3"]

	if arg_324_1.anim.frame > (var_324_2 and var_324_2.frames or 14) then
		__recovered_scope_0.var_0_195.finish(arg_324_1)
	end
end

function __recovered_scope_0.var_0_195.pushable(arg_325_0)
	return not arg_325_0.isBoss and not arg_325_0.isFinalBoss and not arg_325_0.finalBoss and not arg_325_0.knockbackImmune and not arg_325_0.ccImmune and not arg_325_0.controlImmune
end

__recovered_scope_0.var_0_195.CATCH_RADIUS = 22

function __recovered_scope_0.var_0_195.catch(arg_326_0, arg_326_1, arg_326_2, arg_326_3)
	local var_326_0 = arg_326_2.x - (arg_326_2.offX or 0)
	local var_326_1 = arg_326_2.footY - (arg_326_2.offY or 0)
	local var_326_2 = 1 / math.max(0.1, math.min(1, tonumber(arg_326_0.ui and arg_326_0.ui.battle and arg_326_0.ui.battle.rangeEllipseYScale) or 0.5))

	local function var_326_3(arg_327_0)
		return ((arg_327_0.x or 0) - var_326_0)^2 + (((arg_327_0.y or 0) - var_326_1) * var_326_2)^2
	end

	local var_326_4 = __recovered_scope_0.var_0_195.CATCH_RADIUS^2
	local var_326_5 = arg_326_2.target

	if __recovered_scope_0.var_0_196.targetable(arg_326_0, arg_326_1.owner, var_326_5, arg_326_3) and var_326_4 >= var_326_3(var_326_5) then
		return var_326_5
	end

	if arg_326_2.bloom then
		return nil
	end

	local var_326_6
	local var_326_7

	for iter_326_0, iter_326_1 in ipairs(arg_326_0.enemies or {}) do
		if __recovered_scope_0.var_0_196.targetable(arg_326_0, arg_326_1.owner, iter_326_1, arg_326_3) then
			local var_326_8 = var_326_3(iter_326_1)

			if var_326_8 <= var_326_4 and (not var_326_7 or var_326_8 < var_326_7) then
				var_326_6, var_326_7 = iter_326_1, var_326_8
			end
		end
	end

	return var_326_6
end

function __recovered_scope_0.var_0_195.retarget(arg_328_0, arg_328_1, arg_328_2, arg_328_3)
	local var_328_0
	local var_328_1

	for iter_328_0, iter_328_1 in ipairs(arg_328_0.enemies or {}) do
		if __recovered_scope_0.var_0_195.inRange(arg_328_0, arg_328_1.owner, iter_328_1, arg_328_3, arg_328_1.metric) then
			local var_328_2 = ((iter_328_1.x or 0) - (arg_328_2.target.x or 0))^2 + ((iter_328_1.y or 0) - (arg_328_2.target.y or 0))^2

			if not var_328_1 or var_328_2 < var_328_1 then
				var_328_0, var_328_1 = iter_328_1, var_328_2
			end
		end
	end

	return var_328_0
end

function __recovered_scope_0.var_0_195.hit(arg_329_0, arg_329_1, arg_329_2, arg_329_3, arg_329_4)
	local var_329_0 = arg_329_2.target

	if not __recovered_scope_0.var_0_196.targetable(arg_329_0, arg_329_1.owner, var_329_0, arg_329_3) then
		return false
	end

	local var_329_1 = (arg_329_1.atk or 0) * (arg_329_1.dmgMul or 0.7)

	if arg_329_2.bloom then
		require("src.game.combat").branching_bloom.extra(arg_329_0, arg_329_1.owner, (arg_329_1.base or 3) + 1, arg_329_1.base or 3, var_329_0, var_329_1, arg_329_4)

		return true
	end

	if not arg_329_1.knocked[var_329_0] then
		arg_329_1.knocked[var_329_0] = true

		if __recovered_scope_0.var_0_195.pushable(var_329_0) then
			var_329_0._kb = {
				dirY = 0,
				t = 0,
				waveHop = true,
				dur = __recovered_scope_0.var_0_195.KNOCK_DUR,
				dist = __recovered_scope_0.var_0_195.KNOCKBACK,
				dirX = (var_329_0.x or 0) >= (arg_329_1.owner.x or 0) and 1 or -1,
				height = __recovered_scope_0.var_0_195.KNOCK_HOP
			}
			arg_329_1.pushed[#arg_329_1.pushed + 1] = var_329_0
		end
	end

	arg_329_4(var_329_0, var_329_1, arg_329_1.owner, nil, {
		battleSkillDamage = true,
		arrowRain = true,
		basicAttack = false,
		chainCast = arg_329_1.chainCast or false,
		awakeningCast = arg_329_1.awakeningCast
	})

	return true
end

function __recovered_scope_0.var_0_195.carryFallen(arg_330_0, arg_330_1)
	for iter_330_0, iter_330_1 in ipairs(arg_330_0.pushed or {}) do
		local var_330_0 = iter_330_1._kb

		if var_330_0 and var_330_0.waveHop and (iter_330_1.dying or not iter_330_1.alive or (iter_330_1.hp or 1) <= 0) then
			__recovered_scope_0.var_0_129.updateHop(iter_330_1, arg_330_1)
		end
	end
end

 __recovered_scope_0.var_0_200 = __recovered_scope_0.var_0_195
 __recovered_scope_0.var_0_201 = nil
 __recovered_scope_0.var_0_202 = {
	CHARGE_FRAMES = {
		nil,
		nil,
		nil,
		nil,
		0.22,
		0.26,
		0.3
	}
}
 __recovered_scope_0.var_0_203 = __recovered_scope_0.var_0_180

function __recovered_scope_0.var_0_202.frameDuration(arg_331_0, arg_331_1)
	local var_331_0 = arg_331_0 and arg_331_0.skill

	if var_331_0 and var_331_0.kind == "HollowArrow" and var_331_0.state == "active" and var_331_0.hollowCast and not var_331_0.hollowCast.fired and arg_331_0.anim and arg_331_0.anim.name == (var_331_0.activeAnim or "attack2") then
		return __recovered_scope_0.var_0_202.CHARGE_FRAMES[arg_331_0.anim.frame] or arg_331_1
	end

	return arg_331_1
end

 function __recovered_scope_0.var_0_204(arg_332_0)
	return arg_332_0 and arg_332_0.alive and not arg_332_0.dying and (arg_332_0.hp or 1) > 0 and not arg_332_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_205(arg_333_0)
	return __recovered_scope_0.var_0_204(arg_333_0) and (arg_333_0.stunT or 0) <= 0 and (arg_333_0.fearT or 0) <= 0 and not arg_333_0._caveBasiliskPetrified and not arg_333_0._oathHelmStone and not arg_333_0._cosmicPressure and not arg_333_0._succubusCharm and not arg_333_0._wastelandPiperCharm and not arg_333_0._lizardWarlordSkillBlocked
end

__recovered_scope_0.var_0_202.targetable = __recovered_scope_0.var_0_203.targetable

function __recovered_scope_0.var_0_202.nearest(arg_334_0, arg_334_1, arg_334_2, arg_334_3)
	local var_334_0 = __recovered_scope_0.var_0_200.candidates(arg_334_0, arg_334_1, arg_334_2, arg_334_3)[1]

	return var_334_0 and var_334_0.target
end

function __recovered_scope_0.var_0_202.nearestAny(arg_335_0, arg_335_1, arg_335_2, arg_335_3)
	local var_335_0
	local var_335_1

	for iter_335_0, iter_335_1 in ipairs(arg_335_0.enemies or {}) do
		if __recovered_scope_0.var_0_203.targetable(arg_335_0, arg_335_1, iter_335_1, arg_335_2) then
			local var_335_2 = arg_335_3 and arg_335_3(arg_335_1, iter_335_1) or ((iter_335_1.x or 0) - (arg_335_1.x or 0))^2 + ((iter_335_1.y or 0) - (arg_335_1.y or 0))^2

			if not var_335_1 or var_335_2 < var_335_1 then
				var_335_0, var_335_1 = iter_335_1, var_335_2
			end
		end
	end

	return var_335_0
end

function __recovered_scope_0.var_0_202.finish(arg_336_0)
	local var_336_0 = arg_336_0.skill

	var_336_0.state, var_336_0.active, var_336_0.hollowCast, var_336_0.targetRef, var_336_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_336_0)
	arg_336_0._casting, arg_336_0._suppressAttack = false, false
	arg_336_0._forceAnim, arg_336_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_202.updateCast(arg_337_0, arg_337_1, arg_337_2, arg_337_3, arg_337_4)
	local var_337_0 = arg_337_1.skill

	if not __recovered_scope_0.var_0_205(arg_337_1) then
		if var_337_0.state == "active" then
			__recovered_scope_0.var_0_202.finish(arg_337_1)
		end

		return
	end

	if var_337_0.state == "active" then
		if not var_337_0.hollowCast or not arg_337_1.anim or arg_337_1.anim.name ~= (var_337_0.activeAnim or "attack2") then
			__recovered_scope_0.var_0_202.finish(arg_337_1)

			return
		end

		arg_337_1._casting, arg_337_1._suppressAttack = true, true
		arg_337_1._forceAnim, arg_337_1._forceAnimT = var_337_0.activeAnim or "attack2", math.max(0.2, arg_337_2 + 0.1)

		return
	end

	var_337_0.cdT = math.min(var_337_0.cd or 7, (var_337_0.cdT or 0) + arg_337_2)

	if var_337_0.cdT < (var_337_0.cd or 7) then
		return
	end

	var_337_0.ready = true

	if not arg_337_1.anim then
		return
	end

	local var_337_1 = __recovered_scope_0.var_0_202.nearest(arg_337_0, arg_337_1, arg_337_3, arg_337_4)

	if not var_337_1 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_337_1)

	var_337_0.state, var_337_0.active, var_337_0.ready, var_337_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_337_0)
	var_337_0.hollowCast = {
		fired = false,
		target = var_337_1
	}
	var_337_0.targetRef = var_337_1
	arg_337_1._pendingWarriorHit, arg_337_1.shotPending, arg_337_1.pendingTarget = nil, false
	arg_337_1._casting, arg_337_1._suppressAttack = true, true
	arg_337_1._forceAnim, arg_337_1._forceAnimT = var_337_0.activeAnim or "attack2", math.max(0.2, arg_337_2 + 0.1)
	arg_337_1.anim.name, arg_337_1.anim.frame, arg_337_1.anim.t, arg_337_1.anim.reverse = arg_337_1._forceAnim, 1, 0
	arg_337_1.anim._desynced = true
	arg_337_1.facing = (var_337_1.x or 0) >= (arg_337_1.x or 0) and 1 or -1
	arg_337_1._attackFacing = arg_337_1.facing
end

function __recovered_scope_0.var_0_202.onAnimation(arg_338_0, arg_338_1, arg_338_2, arg_338_3, arg_338_4, arg_338_5)
	local var_338_0 = arg_338_1.skill
	local var_338_1 = var_338_0 and var_338_0.hollowCast

	if not var_338_1 then
		return
	end

	if not __recovered_scope_0.var_0_205(arg_338_1) or not arg_338_1.anim or arg_338_1.anim.name ~= (var_338_0.activeAnim or "attack2") then
		__recovered_scope_0.var_0_202.finish(arg_338_1)

		return
	end

	if not var_338_1.fired and (arg_338_1.anim.frame or 1) >= (var_338_0.releaseFrame or 8) then
		arg_338_1.anim.frame, arg_338_1.anim.t = var_338_0.releaseFrame or 8, 0
		var_338_1.fired = true

		local var_338_2 = var_338_1.target

		if not __recovered_scope_0.var_0_202.targetable(arg_338_0, arg_338_1, var_338_2, arg_338_4) then
			var_338_2 = __recovered_scope_0.var_0_202.nearest(arg_338_0, arg_338_1, arg_338_4, arg_338_5) or __recovered_scope_0.var_0_202.nearestAny(arg_338_0, arg_338_1, arg_338_4, arg_338_5)
		end

		if var_338_2 then
			arg_338_1.facing = (var_338_2.x or 0) >= (arg_338_1.x or 0) and 1 or -1
			arg_338_1._attackFacing = arg_338_1.facing
		end

		var_338_1.arrow = require("src.game.projectiles").hollow_arrow.launch(arg_338_0, arg_338_1, var_338_2, arg_338_3, arg_338_2)
	end

	local var_338_3 = arg_338_2 and arg_338_2.animations and arg_338_2.animations[var_338_0.activeAnim or "attack2"]

	if arg_338_1.anim.frame > (var_338_3 and var_338_3.frames or 10) then
		__recovered_scope_0.var_0_202.finish(arg_338_1)
	end
end

function __recovered_scope_0.var_0_202.swallowable(arg_339_0)
	return __recovered_scope_0.var_0_125.isBasicProjectile(arg_339_0) and not arg_339_0.anchoredLaser and not arg_339_0._spearCycloneDeflect and not arg_339_0._hollowArrowSwallowed and (arg_339_0.spawnDelay or 0) <= 0 and arg_339_0.state ~= "dying" and arg_339_0.state ~= "post_hit_travel"
end

function __recovered_scope_0.var_0_202.multiplier(arg_340_0)
	local var_340_0 = math.min(arg_340_0.maxSwallow or 2, #(arg_340_0.swallows or {}))

	return (arg_340_0.dmgMul or 1.7) + (arg_340_0.swallowDmgMul or 0.3) * var_340_0
end

function __recovered_scope_0.var_0_202.strike(arg_341_0, arg_341_1, arg_341_2, arg_341_3, arg_341_4)
	if not __recovered_scope_0.var_0_203.targetable(arg_341_0, arg_341_1.owner, arg_341_2, arg_341_3) then
		return false
	end

	arg_341_4(arg_341_2, (arg_341_1.atk or 0) * __recovered_scope_0.var_0_202.multiplier(arg_341_1), arg_341_1.owner, nil, {
		battleSkillDamage = true,
		hollowArrow = true,
		basicAttack = false,
		chainCast = arg_341_1.chainCast or false,
		awakeningCast = arg_341_1.awakeningCast
	})

	return true
end

 __recovered_scope_0.var_0_206 = __recovered_scope_0.var_0_202
 __recovered_scope_0.var_0_207 = nil
 __recovered_scope_0.var_0_208 = {
	LIFT = 3,
	PULL_TO = 55,
	RANGE = 180
}
 __recovered_scope_0.var_0_209 = __recovered_scope_0.var_0_180

 function __recovered_scope_0.var_0_210(arg_342_0)
	return arg_342_0 and arg_342_0.alive and not arg_342_0.dying and (arg_342_0.hp or 1) > 0 and not arg_342_0._venomMawSwallowed
end

function __recovered_scope_0.var_0_208.canAct(arg_343_0)
	return __recovered_scope_0.var_0_210(arg_343_0) and (arg_343_0.stunT or 0) <= 0 and (arg_343_0.fearT or 0) <= 0 and not arg_343_0._caveBasiliskPetrified and not arg_343_0._oathHelmStone and not arg_343_0._cosmicPressure and not arg_343_0._succubusCharm and not arg_343_0._wastelandPiperCharm and not arg_343_0._lizardWarlordSkillBlocked
end

__recovered_scope_0.var_0_208.targetable = __recovered_scope_0.var_0_209.targetable

 function __recovered_scope_0.var_0_211(arg_344_0, arg_344_1, arg_344_2)
	return arg_344_2 and arg_344_2(arg_344_0, arg_344_1) or ((arg_344_1.x or 0) - (arg_344_0.x or 0))^2 + ((arg_344_1.y or 0) - (arg_344_0.y or 0))^2
end

function __recovered_scope_0.var_0_208.range(arg_345_0)
	return tonumber(arg_345_0.skill and arg_345_0.skill.range) or __recovered_scope_0.var_0_208.RANGE
end

function __recovered_scope_0.var_0_208.inRange(arg_346_0, arg_346_1, arg_346_2, arg_346_3, arg_346_4)
	if not __recovered_scope_0.var_0_209.targetable(arg_346_0, arg_346_1, arg_346_2, arg_346_3) then
		return false
	end

	local var_346_0 = __recovered_scope_0.var_0_208.range(arg_346_1)

	return require("src.game.awakening").skillMetric(arg_346_1, arg_346_2, __recovered_scope_0.var_0_211(arg_346_1, arg_346_2, arg_346_4)) <= var_346_0 * var_346_0
end

function __recovered_scope_0.var_0_208.farthest(arg_347_0, arg_347_1, arg_347_2, arg_347_3)
	local var_347_0
	local var_347_1

	for iter_347_0, iter_347_1 in ipairs(arg_347_0.enemies or {}) do
		if __recovered_scope_0.var_0_208.inRange(arg_347_0, arg_347_1, iter_347_1, arg_347_2, arg_347_3) then
			local var_347_2 = __recovered_scope_0.var_0_211(arg_347_1, iter_347_1, arg_347_3)

			if not var_347_1 or var_347_1 < var_347_2 then
				var_347_0, var_347_1 = iter_347_1, var_347_2
			end
		end
	end

	return var_347_0
end

function __recovered_scope_0.var_0_208.finish(arg_348_0)
	local var_348_0 = arg_348_0.skill

	var_348_0.state, var_348_0.active, var_348_0.spearCast, var_348_0.targetRef, var_348_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_348_0)
	arg_348_0._casting, arg_348_0._suppressAttack = false, false
	arg_348_0._forceAnim, arg_348_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_208.updateCast(arg_349_0, arg_349_1, arg_349_2, arg_349_3, arg_349_4)
	local var_349_0 = arg_349_1.skill

	if not __recovered_scope_0.var_0_208.canCast(arg_349_1) then
		if var_349_0.state == "active" then
			__recovered_scope_0.var_0_208.finish(arg_349_1)
		end

		return
	end

	if var_349_0.state == "active" then
		if not var_349_0.spearCast or not arg_349_1.anim or arg_349_1.anim.name ~= (var_349_0.activeAnim or "attack2") then
			__recovered_scope_0.var_0_208.finish(arg_349_1)

			return
		end

		arg_349_1._casting, arg_349_1._suppressAttack = true, true
		arg_349_1._forceAnim, arg_349_1._forceAnimT = var_349_0.activeAnim or "attack2", math.max(0.2, arg_349_2 + 0.1)

		return
	end

	var_349_0.cdT = math.min(var_349_0.cd or 7, (var_349_0.cdT or 0) + arg_349_2)

	if var_349_0.cdT < (var_349_0.cd or 7) then
		return
	end

	var_349_0.ready = true

	if not arg_349_1.anim then
		return
	end

	local var_349_1 = __recovered_scope_0.var_0_208.farthest(arg_349_0, arg_349_1, arg_349_3, arg_349_4)

	if not var_349_1 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_349_1)

	var_349_0.state, var_349_0.active, var_349_0.ready, var_349_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_349_0)
	var_349_0.spearCast = {
		fired = false,
		target = var_349_1
	}
	var_349_0.targetRef = var_349_1
	arg_349_1._pendingSpearHit, arg_349_1.shotPending, arg_349_1.pendingTarget = nil, false
	arg_349_1._casting, arg_349_1._suppressAttack = true, true
	arg_349_1._forceAnim, arg_349_1._forceAnimT = var_349_0.activeAnim or "attack2", math.max(0.2, arg_349_2 + 0.1)
	arg_349_1.anim.name, arg_349_1.anim.frame, arg_349_1.anim.t, arg_349_1.anim.reverse = arg_349_1._forceAnim, 1, 0
	arg_349_1.anim._desynced = true
	arg_349_1.facing = (var_349_1.x or 0) >= (arg_349_1.x or 0) and 1 or -1
	arg_349_1._attackFacing = arg_349_1.facing
end

__recovered_scope_0.var_0_208.canCast = __recovered_scope_0.var_0_208.canAct

function __recovered_scope_0.var_0_208.onAnimation(arg_350_0, arg_350_1, arg_350_2, arg_350_3, arg_350_4, arg_350_5)
	local var_350_0 = arg_350_1.skill
	local var_350_1 = var_350_0 and var_350_0.spearCast

	if not var_350_1 then
		return
	end

	if not __recovered_scope_0.var_0_208.canCast(arg_350_1) or not arg_350_1.anim or arg_350_1.anim.name ~= (var_350_0.activeAnim or "attack2") then
		__recovered_scope_0.var_0_208.finish(arg_350_1)

		return
	end

	local var_350_2 = var_350_0.releaseFrame or 3

	if not var_350_1.fired and var_350_2 <= (arg_350_1.anim.frame or 1) then
		arg_350_1.anim.frame, arg_350_1.anim.t = var_350_2, 0
		var_350_1.fired = true

		local var_350_3 = var_350_1.target

		if not __recovered_scope_0.var_0_208.targetable(arg_350_0, arg_350_1, var_350_3, arg_350_4) then
			var_350_3 = __recovered_scope_0.var_0_208.farthest(arg_350_0, arg_350_1, arg_350_4, arg_350_5) or __recovered_scope_0.var_0_206.nearestAny(arg_350_0, arg_350_1, arg_350_4, arg_350_5)
		end

		if var_350_3 then
			arg_350_1.facing = (var_350_3.x or 0) >= (arg_350_1.x or 0) and 1 or -1
			arg_350_1._attackFacing = arg_350_1.facing
		end

		var_350_1.spear = require("src.game.projectiles").chain_spear.launch(arg_350_0, arg_350_1, var_350_3, arg_350_3, arg_350_2)
	end

	if var_350_1.fired and var_350_1.spear and not var_350_1.spear.finished then
		arg_350_1.anim.frame, arg_350_1.anim.t = var_350_2, 0
	end

	local var_350_4 = arg_350_2 and arg_350_2.animations and arg_350_2.animations[var_350_0.activeAnim or "attack2"]

	if arg_350_1.anim.frame > (var_350_4 and var_350_4.frames or 6) then
		__recovered_scope_0.var_0_208.finish(arg_350_1)
	end
end

function __recovered_scope_0.var_0_208.bite(arg_351_0, arg_351_1, arg_351_2, arg_351_3)
	local var_351_0 = arg_351_1.target

	if not __recovered_scope_0.var_0_209.targetable(arg_351_0, arg_351_1.owner, var_351_0, arg_351_2) then
		return false
	end

	arg_351_3(var_351_0, (arg_351_1.atk or 0) * (arg_351_1.dmgMul or 1.5), arg_351_1.owner, nil, {
		battleSkillDamage = true,
		chainSpear = true,
		basicAttack = false,
		chainCast = arg_351_1.chainCast or false,
		awakeningCast = arg_351_1.awakeningCast
	})

	if arg_351_1.bleed and __recovered_scope_0.var_0_210(var_351_0) then
		__recovered_scope_0.var_0_208.bleed(arg_351_1, var_351_0)
	end

	return true
end

function __recovered_scope_0.var_0_208.bleed(arg_352_0, arg_352_1)
	local var_352_0 = arg_352_0.bleed
	local var_352_1 = math.max(1, math.floor((arg_352_0.atk or 0) * var_352_0.mul + 0.5))
	local var_352_2 = arg_352_1._bleed

	if var_352_2 and (var_352_2.t or 0) < (var_352_2.dur or 3) then
		var_352_2.t, var_352_2.dur = 0, var_352_0.dur

		if var_352_1 > (var_352_2.dmg or 0) then
			var_352_2.dmg, var_352_2.source, var_352_2.chainCast, var_352_2.awakeningCompressed = var_352_1, arg_352_0.owner, arg_352_0.chainCast or false
		end

		return var_352_2
	end

	arg_352_1._bleed = {
		t = 0,
		dmg = var_352_1,
		dur = var_352_0.dur,
		tickInterval = var_352_0.interval,
		nextTick = var_352_0.interval,
		source = arg_352_0.owner,
		chainCast = arg_352_0.chainCast or false
	}

	return arg_352_1._bleed
end

function __recovered_scope_0.var_0_208.dragGoal(arg_353_0, arg_353_1, arg_353_2)
	local var_353_0 = arg_353_1.target
	local var_353_1 = arg_353_1.owner

	if not __recovered_scope_0.var_0_209.targetable(arg_353_0, var_353_1, var_353_0, arg_353_2) or not __recovered_scope_0.var_0_200.pushable(var_353_0) then
		return nil
	end

	local var_353_2 = (var_353_0.x or 0) - (var_353_1.x or 0)
	local var_353_3 = (var_353_0.y or 0) - (var_353_1.y or 0)
	local var_353_4 = math.sqrt(var_353_2 * var_353_2 + var_353_3 * var_353_3)
	local var_353_5 = arg_353_1.pullTo or __recovered_scope_0.var_0_208.PULL_TO

	if var_353_4 <= var_353_5 + 1 then
		return nil
	end

	return (var_353_1.x or 0) + var_353_2 / var_353_4 * var_353_5, (var_353_1.y or 0) + var_353_3 / var_353_4 * var_353_5
end

function __recovered_scope_0.var_0_208.seize(arg_354_0, arg_354_1, arg_354_2)
	arg_354_0._chainSpearDrag = {
		t = 0,
		age = 0,
		spear = arg_354_1,
		dur = arg_354_2
	}
	arg_354_0._kb = nil

	__recovered_scope_0.var_0_118.interrupt(arg_354_0)
end

function __recovered_scope_0.var_0_208.release(arg_355_0, arg_355_1)
	local var_355_0 = arg_355_0 and arg_355_0._chainSpearDrag

	if var_355_0 and (not arg_355_1 or var_355_0.spear == arg_355_1) then
		arg_355_0._chainSpearDrag = nil

		if (arg_355_0.stunT or 0) <= 0 and not arg_355_0._casting then
			arg_355_0._suppressAttack = false
		end
	end
end

function __recovered_scope_0.var_0_208.tick(arg_356_0, arg_356_1)
	local var_356_0 = arg_356_0._chainSpearDrag

	if not var_356_0 then
		return
	end

	var_356_0.age = var_356_0.age + math.max(0, arg_356_1 or 0)

	if var_356_0.spear.finished or var_356_0.age > var_356_0.dur + 0.5 or not __recovered_scope_0.var_0_210(arg_356_0) then
		__recovered_scope_0.var_0_208.release(arg_356_0)
	end
end

function __recovered_scope_0.var_0_208.dragLift(arg_357_0, arg_357_1)
	local var_357_0 = arg_357_0 and arg_357_0._chainSpearDrag

	if not var_357_0 then
		return 0
	end

	local var_357_1 = math.max(0, math.min(1, var_357_0.t / math.max(0.001, var_357_0.dur)))

	return 4 * var_357_1 * (1 - var_357_1) * __recovered_scope_0.var_0_208.LIFT * (arg_357_1 or 1)
end

 __recovered_scope_0.var_0_212 = __recovered_scope_0.var_0_208
 __recovered_scope_0.var_0_213 = nil
 __recovered_scope_0.var_0_214 = {}
 __recovered_scope_0.var_0_215 = __recovered_scope_0.var_0_180

 function __recovered_scope_0.var_0_216(arg_358_0)
	return arg_358_0 and arg_358_0.alive and not arg_358_0.dying and (arg_358_0.hp or 1) > 0 and not arg_358_0._venomMawSwallowed
end

__recovered_scope_0.var_0_214.canCast = __recovered_scope_0.var_0_212.canAct
__recovered_scope_0.var_0_214.targetable = __recovered_scope_0.var_0_215.targetable

function __recovered_scope_0.var_0_214.runtime(arg_359_0)
	return arg_359_0 and arg_359_0.primarySkillDef and arg_359_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_214.maxShots(arg_360_0)
	local var_360_0 = __recovered_scope_0.var_0_214.runtime(arg_360_0)

	return tonumber(var_360_0.maxTargets) or var_360_0.shotMuls and #var_360_0.shotMuls or 2
end

 function __recovered_scope_0.var_0_217(arg_361_0, arg_361_1, arg_361_2)
	return arg_361_2 and arg_361_2(arg_361_0, arg_361_1) or ((arg_361_1.x or 0) - (arg_361_0.x or 0))^2 + ((arg_361_1.y or 0) - (arg_361_0.y or 0))^2
end

function __recovered_scope_0.var_0_214.engaged(arg_362_0, arg_362_1, arg_362_2, arg_362_3)
	local var_362_0 = tonumber(arg_362_1.distance) or 200

	for iter_362_0, iter_362_1 in ipairs(arg_362_0.enemies or {}) do
		if __recovered_scope_0.var_0_215.targetable(arg_362_0, arg_362_1, iter_362_1, arg_362_2) and require("src.game.awakening").skillMetric(arg_362_1, iter_362_1, __recovered_scope_0.var_0_217(arg_362_1, iter_362_1, arg_362_3)) <= var_362_0 * var_362_0 then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_214.weakest(arg_363_0, arg_363_1, arg_363_2, arg_363_3, arg_363_4)
	local var_363_0
	local var_363_1
	local var_363_2

	for iter_363_0, iter_363_1 in ipairs(arg_363_0.enemies or {}) do
		if __recovered_scope_0.var_0_215.targetable(arg_363_0, arg_363_1, iter_363_1, arg_363_2) and (not arg_363_4 or not arg_363_4[iter_363_1]) then
			local var_363_3 = tonumber(iter_363_1.hp) or 0
			local var_363_4 = __recovered_scope_0.var_0_217(arg_363_1, iter_363_1, arg_363_3)

			if not var_363_0 or var_363_3 < var_363_1 or var_363_3 == var_363_1 and var_363_4 < var_363_2 then
				var_363_0, var_363_1, var_363_2 = iter_363_1, var_363_3, var_363_4
			end
		end
	end

	return var_363_0
end

 function __recovered_scope_0.var_0_218(arg_364_0, arg_364_1)
	if not arg_364_1 then
		return
	end

	arg_364_0.facing = (arg_364_1.x or 0) >= (arg_364_0.x or 0) and 1 or -1
	arg_364_0._attackFacing = arg_364_0.facing
end

 function __recovered_scope_0.var_0_219(arg_365_0, arg_365_1, arg_365_2)
	arg_365_0._casting, arg_365_0._suppressAttack = true, true
	arg_365_0._forceAnim, arg_365_0._forceAnimT = arg_365_1.activeAnim or "attack2", math.max(0.2, (arg_365_2 or 0) + 0.1)
end

function __recovered_scope_0.var_0_214.finish(arg_366_0)
	local var_366_0 = arg_366_0.skill
	local var_366_1 = var_366_0 and var_366_0.snipeCast

	if var_366_1 and var_366_1.fx then
		var_366_1.fx.finished = true
	end

	var_366_0.state, var_366_0.active, var_366_0.snipeCast, var_366_0.targetRef, var_366_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_366_0)
	arg_366_0._casting, arg_366_0._suppressAttack = false, false
	arg_366_0._forceAnim, arg_366_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_214.mark(arg_367_0, arg_367_1, arg_367_2)
	local var_367_0 = arg_367_2.fx

	if not var_367_0 then
		return
	end

	var_367_0.mx, var_367_0.my = require("src.game.projectiles").chain_snipe.muzzle(arg_367_0, arg_367_1)

	local var_367_1 = arg_367_2.target

	if var_367_1 and __recovered_scope_0.var_0_216(var_367_1) then
		local var_367_2 = require("src.game.projectiles").spellblade_vortex

		var_367_0.tx, var_367_0.ty = var_367_2.targetPoint(arg_367_0, var_367_1)

		local var_367_3 = var_367_2.targetCover(arg_367_0, var_367_1, var_367_0.cover)

		var_367_0.cover = var_367_3
		var_367_0.th = var_367_3 and var_367_3.half or 12
	end

	var_367_0.shot, var_367_0.phase, var_367_0.fired, var_367_0.aimAt, var_367_0.from = arg_367_2.shot, arg_367_2.phase, arg_367_2.fired, arg_367_2.aimAt, arg_367_2.from
	var_367_0.bullet = arg_367_2.bullet
end

 function __recovered_scope_0.var_0_220(arg_368_0, arg_368_1, arg_368_2, arg_368_3)
	arg_368_2.target, arg_368_2.fired, arg_368_2.bullet, arg_368_2.phase = arg_368_3, false, nil, "aim"
	arg_368_2.aimAt = arg_368_2.fx and arg_368_2.fx.t or 0
	arg_368_1.skill.targetRef = arg_368_3
	arg_368_1.anim.frame, arg_368_1.anim.t, arg_368_1.anim.reverse = 1, 0

	__recovered_scope_0.var_0_218(arg_368_1, arg_368_3)

	local var_368_0 = __recovered_scope_0.var_0_214.runtime(arg_368_1).chargeSound

	if var_368_0 and arg_368_0 then
		local var_368_1, var_368_2 = require("src.audio.procedural_audio").playSkillSound(arg_368_0.assets, arg_368_0.ui, var_368_0)

		arg_368_2.chargeVoice = var_368_2
	end
end

function __recovered_scope_0.var_0_214.updateCast(arg_369_0, arg_369_1, arg_369_2, arg_369_3, arg_369_4)
	local var_369_0 = arg_369_1.skill

	if not __recovered_scope_0.var_0_214.canCast(arg_369_1) then
		if var_369_0.state == "active" then
			__recovered_scope_0.var_0_214.finish(arg_369_1)
		end

		return
	end

	local var_369_1 = var_369_0.activeAnim or "attack2"

	if var_369_0.state == "active" then
		local var_369_2 = var_369_0.snipeCast

		if not var_369_2 or not arg_369_1.anim or arg_369_1.anim.name ~= var_369_1 then
			__recovered_scope_0.var_0_214.finish(arg_369_1)

			return
		end

		__recovered_scope_0.var_0_219(arg_369_1, var_369_0, arg_369_2)
		__recovered_scope_0.var_0_214.mark(arg_369_0, arg_369_1, var_369_2)

		if var_369_2.phase ~= "wait" then
			return
		end

		local var_369_3 = var_369_2.bullet

		if var_369_3 and not var_369_3.finished and var_369_3.state == "flight" then
			return
		end

		if var_369_3 and var_369_3.killed and var_369_2.shot < __recovered_scope_0.var_0_214.maxShots(arg_369_1) then
			local var_369_4 = __recovered_scope_0.var_0_214.weakest(arg_369_0, arg_369_1, arg_369_3, arg_369_4, var_369_2.hit)

			if var_369_4 then
				var_369_2.shot, var_369_2.from = var_369_2.shot + 1, {
					x = var_369_3.hitX or var_369_3.x,
					y = var_369_3.hitY or var_369_3.y
				}

				__recovered_scope_0.var_0_220(arg_369_0, arg_369_1, var_369_2, var_369_4)

				return
			end
		end

		__recovered_scope_0.var_0_214.finish(arg_369_1)

		return
	end

	var_369_0.cdT = math.min(var_369_0.cd or 7, (var_369_0.cdT or 0) + arg_369_2)

	if var_369_0.cdT < (var_369_0.cd or 7) then
		return
	end

	var_369_0.ready = true

	if not arg_369_1.anim or not __recovered_scope_0.var_0_214.engaged(arg_369_0, arg_369_1, arg_369_3, arg_369_4) then
		return
	end

	local var_369_5 = __recovered_scope_0.var_0_214.weakest(arg_369_0, arg_369_1, arg_369_3, arg_369_4)

	if not var_369_5 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_369_1)

	var_369_0.state, var_369_0.active, var_369_0.ready, var_369_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_369_0)

	local var_369_6 = {
		shot = 1,
		hit = {}
	}

	var_369_0.snipeCast = var_369_6
	var_369_6.fx = {
		kind = "chain_snipe_cast",
		t = 0,
		dur = math.huge,
		owner = arg_369_1,
		cast = var_369_6,
		style = __recovered_scope_0.var_0_214.runtime(arg_369_1).style,
		pixel = math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_369_0) / 32 + 0.5))
	}
	arg_369_0.vfx = arg_369_0.vfx or {}
	arg_369_0.vfx[#arg_369_0.vfx + 1] = var_369_6.fx
	arg_369_1._pendingWarriorHit, arg_369_1.shotPending, arg_369_1.pendingTarget = nil, false

	__recovered_scope_0.var_0_219(arg_369_1, var_369_0, arg_369_2)

	arg_369_1.anim.name = var_369_1
	arg_369_1.anim._desynced = true

	__recovered_scope_0.var_0_220(arg_369_0, arg_369_1, var_369_6, var_369_5)
	__recovered_scope_0.var_0_214.mark(arg_369_0, arg_369_1, var_369_6)
end

function __recovered_scope_0.var_0_214.onAnimation(arg_370_0, arg_370_1, arg_370_2, arg_370_3, arg_370_4, arg_370_5)
	local var_370_0 = arg_370_1.skill
	local var_370_1 = var_370_0 and var_370_0.snipeCast

	if not var_370_1 then
		return
	end

	local var_370_2 = var_370_0.activeAnim or "attack2"

	if not __recovered_scope_0.var_0_214.canCast(arg_370_1) or not arg_370_1.anim or arg_370_1.anim.name ~= var_370_2 then
		__recovered_scope_0.var_0_214.finish(arg_370_1)

		return
	end

	local var_370_3 = var_370_0.releaseFrame or 5

	if not var_370_1.fired and var_370_3 <= (arg_370_1.anim.frame or 1) then
		arg_370_1.anim.frame, arg_370_1.anim.t = var_370_3, 0
		var_370_1.fired = true

		local var_370_4 = var_370_1.target

		if not __recovered_scope_0.var_0_214.targetable(arg_370_0, arg_370_1, var_370_4, arg_370_4) or var_370_1.hit[var_370_4] then
			var_370_4 = __recovered_scope_0.var_0_214.weakest(arg_370_0, arg_370_1, arg_370_4, arg_370_5, var_370_1.hit)
		end

		__recovered_scope_0.var_0_218(arg_370_1, var_370_4)

		var_370_1.target = var_370_4

		if var_370_4 then
			var_370_1.hit[var_370_4] = true
		end

		var_370_1.bullet = require("src.game.projectiles").chain_snipe.launch(arg_370_0, arg_370_1, var_370_4, arg_370_3, arg_370_2, var_370_1.shot)

		local var_370_5 = require("src.audio.procedural_audio")

		var_370_5.stopSkillSound(var_370_1.chargeVoice)

		var_370_1.chargeVoice = nil

		var_370_5.playSkillSound(arg_370_0.assets, arg_370_0.ui, __recovered_scope_0.var_0_214.runtime(arg_370_1).shotSound)

		local var_370_6 = var_370_1.fx

		if var_370_1.bullet and var_370_6 and var_370_6.ty and var_370_6.th then
			var_370_1.bullet.aimTop = var_370_6.ty - math.max(10, var_370_6.th)
		end
	end

	local var_370_7 = arg_370_2 and arg_370_2.animations and arg_370_2.animations[var_370_2]
	local var_370_8 = var_370_7 and var_370_7.frames or 8

	if var_370_1.fired and var_370_8 < arg_370_1.anim.frame then
		arg_370_1.anim.frame, arg_370_1.anim.t = var_370_8, 0
		var_370_1.phase = "wait"
	end
end

function __recovered_scope_0.var_0_214.strike(arg_371_0, arg_371_1, arg_371_2, arg_371_3)
	local var_371_0 = arg_371_1.target

	if not __recovered_scope_0.var_0_215.targetable(arg_371_0, arg_371_1.owner, var_371_0, arg_371_2) then
		return false
	end

	arg_371_3(var_371_0, (arg_371_1.atk or 0) * (arg_371_1.dmgMul or 2.4), arg_371_1.owner, nil, {
		battleSkillDamage = true,
		chainSnipe = true,
		basicAttack = false,
		chainCast = arg_371_1.chainCast or false,
		awakeningCast = arg_371_1.awakeningCast
	})

	arg_371_1.killed = not __recovered_scope_0.var_0_216(var_371_0)

	return true
end

 __recovered_scope_0.var_0_221 = __recovered_scope_0.var_0_214
 __recovered_scope_0.var_0_222 = nil
 __recovered_scope_0.var_0_223 = {
	RIFT_Y = -30,
	RIFT_CLOSE = 0.2,
	RANGE = 170,
	GAP = 0.12,
	SINK = 0.2,
	HOLD = 0.06,
	TURN = 0.18,
	CLOSE_FRAME = 0.05,
	EMERGE = 0.28,
	SPEAR_FRAME = 0.07,
	RIFT_OPEN = 0.24,
	RIFT_FRAME = 0.06,
	SPEAR_BOTTOM = 28
}
 __recovered_scope_0.var_0_224 = __recovered_scope_0.var_0_180

 function __recovered_scope_0.var_0_225(arg_372_0)
	return arg_372_0 and arg_372_0.alive and not arg_372_0.dying and (arg_372_0.hp or 1) > 0 and not arg_372_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_226()
	return require("src.game.projectiles").spellblade_vortex
end

__recovered_scope_0.var_0_223.canCast = __recovered_scope_0.var_0_212.canAct
__recovered_scope_0.var_0_223.targetable = __recovered_scope_0.var_0_224.targetable
__recovered_scope_0.var_0_223.open = setmetatable({}, {
	__mode = "k"
})

function __recovered_scope_0.var_0_223.runtime(arg_374_0)
	return arg_374_0 and arg_374_0.primarySkillDef and arg_374_0.primarySkillDef.runtime or {}
end

 function __recovered_scope_0.var_0_227(arg_375_0, arg_375_1, arg_375_2)
	return arg_375_2 and arg_375_2(arg_375_0, arg_375_1) or ((arg_375_1.x or 0) - (arg_375_0.x or 0))^2 + ((arg_375_1.y or 0) - (arg_375_0.y or 0))^2
end

function __recovered_scope_0.var_0_223.range(arg_376_0)
	return tonumber(arg_376_0.skill and arg_376_0.skill.range) or __recovered_scope_0.var_0_223.RANGE
end

function __recovered_scope_0.var_0_223.inRange(arg_377_0, arg_377_1, arg_377_2, arg_377_3, arg_377_4)
	if not __recovered_scope_0.var_0_224.targetable(arg_377_0, arg_377_1, arg_377_2, arg_377_3) then
		return false
	end

	local var_377_0 = __recovered_scope_0.var_0_223.range(arg_377_1)

	return require("src.game.awakening").skillMetric(arg_377_1, arg_377_2, __recovered_scope_0.var_0_227(arg_377_1, arg_377_2, arg_377_4)) <= var_377_0 * var_377_0
end

function __recovered_scope_0.var_0_223.nearest(arg_378_0, arg_378_1, arg_378_2, arg_378_3)
	local var_378_0
	local var_378_1

	for iter_378_0, iter_378_1 in ipairs(arg_378_0.enemies or {}) do
		if __recovered_scope_0.var_0_223.inRange(arg_378_0, arg_378_1, iter_378_1, arg_378_2, arg_378_3) then
			local var_378_2 = __recovered_scope_0.var_0_227(arg_378_1, iter_378_1, arg_378_3)

			if not var_378_1 or var_378_2 < var_378_1 then
				var_378_0, var_378_1 = iter_378_1, var_378_2
			end
		end
	end

	return var_378_0
end

function __recovered_scope_0.var_0_223.isOpen(arg_379_0, arg_379_1)
	if not arg_379_1 or arg_379_1.finished then
		return false
	end

	for iter_379_0, iter_379_1 in ipairs(arg_379_0.vfx or {}) do
		if iter_379_1 == arg_379_1 then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_228(arg_380_0, arg_380_1, arg_380_2)
	arg_380_0._casting, arg_380_0._suppressAttack = true, true
	arg_380_0._forceAnim, arg_380_0._forceAnimT = arg_380_1.activeAnim or "attack2", math.max(0.2, (arg_380_2 or 0) + 0.1)
end

__recovered_scope_0.var_0_223.CHARGE_AFTER = 0.7

 function __recovered_scope_0.var_0_229(arg_381_0, arg_381_1, arg_381_2)
	local var_381_0 = arg_381_0.quads and arg_381_0.quads[arg_381_1]
	local var_381_1 = var_381_0 and var_381_0[math.max(1, math.min(#var_381_0, arg_381_2 or 1))]

	if not var_381_1 or not arg_381_0.imageData then
		return nil
	end

	local var_381_2, var_381_3, var_381_4, var_381_5 = var_381_1:getViewport()
	local var_381_6 = var_381_2 .. ":" .. var_381_3

	arg_381_0._riftTips = arg_381_0._riftTips or {}

	if arg_381_0._riftTips[var_381_6] == nil then
		arg_381_0._riftTips[var_381_6] = false

		for iter_381_0 = 0, var_381_5 - 1 do
			local var_381_7
			local var_381_8

			for iter_381_1 = 0, var_381_4 - 1 do
				local var_381_9, var_381_10, var_381_11, var_381_12 = arg_381_0.imageData:getPixel(var_381_2 + iter_381_1, var_381_3 + iter_381_0)

				if var_381_12 > 0 then
					var_381_7 = var_381_7 or iter_381_1
					var_381_8 = iter_381_1
				end
			end

			if var_381_7 then
				arg_381_0._riftTips[var_381_6] = {
					(var_381_7 + var_381_8 + 1) * 0.5,
					iter_381_0 + 0.5
				}

				break
			end
		end
	end

	return arg_381_0._riftTips[var_381_6] or nil
end

function __recovered_scope_0.var_0_223.chargeTip(arg_382_0, arg_382_1, arg_382_2)
	if not arg_382_2 or not arg_382_1.anim then
		return
	end

	local var_382_0 = arg_382_0.getUnitAssetForAlly and arg_382_0:getUnitAssetForAlly(arg_382_1)
	local var_382_1 = var_382_0 and __recovered_scope_0.var_0_229(var_382_0, arg_382_1.anim.name, arg_382_1.anim.frame)

	if not var_382_1 then
		return
	end

	arg_382_2.tipX, arg_382_2.tipY = __recovered_scope_0.var_0_226().spritePoint(arg_382_0, arg_382_1, var_382_0, var_382_1[1], var_382_1[2], false, true)
	arg_382_2.texel = math.max(1, math.abs(__recovered_scope_0.var_0_226().spritePoint(arg_382_0, arg_382_1, var_382_0, var_382_1[1] + 1, var_382_1[2], false, true) - arg_382_2.tipX))
	arg_382_2.frame = arg_382_1.anim.frame
end

function __recovered_scope_0.var_0_223.finish(arg_383_0)
	local var_383_0 = arg_383_0.skill
	local var_383_1 = var_383_0.riftCast and var_383_0.riftCast.fx

	if var_383_1 and not var_383_1.openAt then
		var_383_1.finished = true
	end

	var_383_0.state, var_383_0.active, var_383_0.riftCast, var_383_0.targetRef, var_383_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_383_0)
	arg_383_0._casting, arg_383_0._suppressAttack = false, false
	arg_383_0._forceAnim, arg_383_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_223.updateCast(arg_384_0, arg_384_1, arg_384_2, arg_384_3, arg_384_4)
	local var_384_0 = arg_384_1.skill

	if not __recovered_scope_0.var_0_223.canCast(arg_384_1) then
		if var_384_0.state == "active" then
			__recovered_scope_0.var_0_223.finish(arg_384_1)
		end

		return
	end

	local var_384_1 = var_384_0.activeAnim or "attack2"

	if var_384_0.state == "active" then
		if not var_384_0.riftCast or not arg_384_1.anim or arg_384_1.anim.name ~= var_384_1 then
			__recovered_scope_0.var_0_223.finish(arg_384_1)

			return
		end

		__recovered_scope_0.var_0_228(arg_384_1, var_384_0, arg_384_2)

		if not var_384_0.riftCast.opened then
			__recovered_scope_0.var_0_223.chargeTip(arg_384_0, arg_384_1, var_384_0.riftCast.fx)
		end

		return
	end

	var_384_0.cdT = math.min(var_384_0.cd or 7, (var_384_0.cdT or 0) + arg_384_2)

	if var_384_0.cdT < (var_384_0.cd or 7) then
		return
	end

	var_384_0.ready = true

	if __recovered_scope_0.var_0_223.isOpen(arg_384_0, var_384_0.rift) then
		return
	end

	var_384_0.rift = nil

	if not arg_384_1.anim then
		return
	end

	local var_384_2 = __recovered_scope_0.var_0_223.nearest(arg_384_0, arg_384_1, arg_384_3, arg_384_4)

	if not var_384_2 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_384_1)

	var_384_0.state, var_384_0.active, var_384_0.ready, var_384_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_384_0)

	local var_384_3 = __recovered_scope_0.var_0_223.runtime(arg_384_1)
	local var_384_4 = {
		kind = "rift_arsenal_charge",
		t = 0,
		dur = math.huge,
		owner = arg_384_1,
		style = var_384_3.style,
		sheet = var_384_3.sheet,
		riftSheet = var_384_3.riftSheet
	}

	arg_384_0.vfx = arg_384_0.vfx or {}
	arg_384_0.vfx[#arg_384_0.vfx + 1] = var_384_4
	var_384_0.riftCast = {
		target = var_384_2,
		fx = var_384_4
	}
	var_384_0.targetRef = var_384_2
	arg_384_1._pendingSpearHit, arg_384_1._pendingWarriorHit, arg_384_1.shotPending, arg_384_1.pendingTarget = nil, nil, false

	__recovered_scope_0.var_0_228(arg_384_1, var_384_0, arg_384_2)

	arg_384_1.anim.name, arg_384_1.anim.frame, arg_384_1.anim.t, arg_384_1.anim.reverse = var_384_1, 1, 0
	arg_384_1.anim._desynced = true
	arg_384_1.facing = (var_384_2.x or 0) >= (arg_384_1.x or 0) and 1 or -1
	arg_384_1._attackFacing = arg_384_1.facing

	__recovered_scope_0.var_0_223.chargeTip(arg_384_0, arg_384_1, var_384_4)
end

function __recovered_scope_0.var_0_223.place(arg_385_0, arg_385_1)
	local var_385_0 = arg_385_1.owner

	if not __recovered_scope_0.var_0_225(var_385_0) then
		return
	end

	local var_385_1 = arg_385_0.getUnitAssetForAlly and arg_385_0:getUnitAssetForAlly(var_385_0) or arg_385_1.asset

	if not var_385_1 then
		return
	end

	arg_385_1.asset = var_385_1

	local var_385_2 = var_385_1.bounds and var_385_1.bounds.idle and var_385_1.bounds.idle[1]
	local var_385_3 = var_385_2 and var_385_2.x + var_385_2.w * 0.5 or (var_385_1.frameW or 32) * 0.5
	local var_385_4 = (var_385_2 and var_385_2.y or 0) + __recovered_scope_0.var_0_223.RIFT_Y + 16 - (__recovered_scope_0.var_0_223.spearBottom(arg_385_1.sheet) - __recovered_scope_0.var_0_223.SPEAR_BOTTOM)
	local var_385_5, var_385_6 = __recovered_scope_0.var_0_226().spritePoint(arg_385_0, var_385_0, var_385_1, var_385_3, var_385_4, false, true)
	local var_385_7 = __recovered_scope_0.var_0_226().spritePoint(arg_385_0, var_385_0, var_385_1, var_385_3 + 1, var_385_4, false, true)

	arg_385_1.x, arg_385_1.y, arg_385_1.texel = var_385_5, var_385_6, math.max(1, math.abs(var_385_7 - var_385_5))
end

function __recovered_scope_0.var_0_223.spearBottom(arg_386_0)
	local var_386_0 = require("src.game.projectiles").rift_spear.geometry(arg_386_0)

	return var_386_0 and var_386_0.boxes[var_386_0.frames].y1 or __recovered_scope_0.var_0_223.SPEAR_BOTTOM
end

function __recovered_scope_0.var_0_223.timing(arg_387_0)
	if arg_387_0.openT then
		return arg_387_0
	end

	local var_387_0 = require("src.game.projectiles").rift_spear
	local var_387_1 = var_387_0.geometry(arg_387_0.riftSheet)
	local var_387_2 = var_387_0.geometry(arg_387_0.sheet)

	arg_387_0.riftFrames, arg_387_0.spearFrames = var_387_1 and var_387_1.frames or 4, var_387_2 and var_387_2.frames or 4
	arg_387_0.openT, arg_387_0.emergeT = arg_387_0.riftFrames * __recovered_scope_0.var_0_223.RIFT_FRAME, arg_387_0.spearFrames * __recovered_scope_0.var_0_223.SPEAR_FRAME
	arg_387_0.closeT = arg_387_0.riftFrames * __recovered_scope_0.var_0_223.CLOSE_FRAME

	return arg_387_0
end

function __recovered_scope_0.var_0_223.pivot(arg_388_0)
	local var_388_0 = arg_388_0.texel or 2
	local var_388_1 = require("src.game.projectiles").rift_spear.geometry(arg_388_0.sheet)

	return (arg_388_0.x or 0) + ((var_388_1 and var_388_1.pivotX or 16.5) - 16) * var_388_0, (arg_388_0.y or 0) + ((var_388_1 and var_388_1.pivotY or 16.5) - 16) * var_388_0
end

function __recovered_scope_0.var_0_223.openRift(arg_389_0, arg_389_1, arg_389_2, arg_389_3, arg_389_4)
	local var_389_0 = __recovered_scope_0.var_0_223.runtime(arg_389_1)
	local var_389_1 = {
		drawn = 0,
		t = 0,
		state = "open",
		extra = 0,
		kind = "rift_arsenal",
		nextAt = 0,
		dur = math.huge,
		owner = arg_389_1,
		bf = arg_389_0,
		window = tonumber(var_389_0.duration) or 4,
		queue = {
			tonumber(var_389_0.dmgMul) or 1.8
		},
		maxExtra = tonumber(var_389_0.maxExtra) or 2,
		extraMul = tonumber(var_389_0.extraDmgMul) or 1,
		throws = {},
		pulses = {},
		atk = arg_389_3,
		metric = arg_389_4,
		asset = arg_389_2,
		style = var_389_0.style,
		impact = tonumber(var_389_0.impactTime),
		sheet = var_389_0.sheet or require("src.game.projectiles").rift_spear.SHEET,
		riftSheet = var_389_0.riftSheet,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_226().drawSize(arg_389_0) / 32 + 0.5)),
		chainCast = require("src.game.combat").chain_casting.capture(arg_389_1),
		awakeningCast = arg_389_1._awakening and arg_389_1._awakening.cast
	}

	__recovered_scope_0.var_0_223.timing(var_389_1)
	__recovered_scope_0.var_0_223.place(arg_389_0, var_389_1)

	arg_389_0.vfx = arg_389_0.vfx or {}
	arg_389_0.vfx[#arg_389_0.vfx + 1] = var_389_1
	__recovered_scope_0.var_0_223.open[var_389_1] = true

	return var_389_1
end

function __recovered_scope_0.var_0_223.onAnimation(arg_390_0, arg_390_1, arg_390_2, arg_390_3, arg_390_4, arg_390_5)
	local var_390_0 = arg_390_1.skill
	local var_390_1 = var_390_0 and var_390_0.riftCast

	if not var_390_1 then
		return
	end

	local var_390_2 = var_390_0.activeAnim or "attack2"

	if not __recovered_scope_0.var_0_223.canCast(arg_390_1) or not arg_390_1.anim or arg_390_1.anim.name ~= var_390_2 then
		__recovered_scope_0.var_0_223.finish(arg_390_1)

		return
	end

	if not var_390_1.opened and (arg_390_1.anim.frame or 1) >= (var_390_0.releaseFrame or 6) then
		var_390_1.opened = true

		__recovered_scope_0.var_0_223.chargeTip(arg_390_0, arg_390_1, var_390_1.fx)

		var_390_0.rift = __recovered_scope_0.var_0_223.openRift(arg_390_0, arg_390_1, arg_390_2, arg_390_3, arg_390_5)

		local var_390_3 = var_390_1.fx

		if var_390_3 then
			var_390_3.openAt, var_390_3.dur = var_390_3.t or 0, (var_390_3.t or 0) + __recovered_scope_0.var_0_223.CHARGE_AFTER
			var_390_3.riftX, var_390_3.riftY, var_390_3.texel = var_390_0.rift.x, var_390_0.rift.y, var_390_0.rift.texel
		end
	end

	local var_390_4 = arg_390_2 and arg_390_2.animations and arg_390_2.animations[var_390_2]

	if arg_390_1.anim.frame > (var_390_4 and var_390_4.frames or 8) then
		__recovered_scope_0.var_0_223.finish(arg_390_1)
	end
end

 function __recovered_scope_0.var_0_230(arg_391_0)
	return arg_391_0.isSummon or arg_391_0.isClone or arg_391_0.isShadowMinion or arg_391_0.isFireSpirit or arg_391_0.isFlameSpirit or arg_391_0.isHusk or arg_391_0.isUndyingSoul or arg_391_0._itemOwner
end

function __recovered_scope_0.var_0_223.allyCast(arg_392_0)
	if not arg_392_0 or arg_392_0.side ~= "ally" or __recovered_scope_0.var_0_230(arg_392_0) then
		return
	end

	local var_392_0 = arg_392_0.skill

	if not var_392_0 or var_392_0.state == "active" or var_392_0.state == "casting" or var_392_0.state == "precast" then
		return
	end

	local var_392_1 = arg_392_0.primarySkillDef

	if not var_392_1 or var_392_1.activationType ~= "active" then
		return
	end

	for iter_392_0 in pairs(__recovered_scope_0.var_0_223.open) do
		if iter_392_0.finished or iter_392_0.state ~= "open" then
			__recovered_scope_0.var_0_223.open[iter_392_0] = nil
		elseif iter_392_0.owner ~= arg_392_0 and (iter_392_0.t or 0) < iter_392_0.window and iter_392_0.extra < iter_392_0.maxExtra then
			local var_392_2 = false

			for iter_392_1, iter_392_2 in ipairs(iter_392_0.bf and iter_392_0.bf.allies or {}) do
				if iter_392_2 == arg_392_0 then
					var_392_2 = true

					break
				end
			end

			if var_392_2 then
				iter_392_0.extra = iter_392_0.extra + 1
				iter_392_0.queue[#iter_392_0.queue + 1] = iter_392_0.extraMul
				iter_392_0.pulses[#iter_392_0.pulses + 1] = iter_392_0.t or 0
			end
		end
	end
end

 function __recovered_scope_0.var_0_231(arg_393_0)
	return (arg_393_0 + math.pi) % (2 * math.pi) - math.pi
end

 function __recovered_scope_0.var_0_232(arg_394_0)
	arg_394_0 = math.max(0, math.min(1, arg_394_0))

	return arg_394_0 * arg_394_0 * (3 - 2 * arg_394_0)
end

 function __recovered_scope_0.var_0_233(arg_395_0, arg_395_1, arg_395_2)
	local var_395_0, var_395_1 = __recovered_scope_0.var_0_223.pivot(arg_395_1)
	local var_395_2, var_395_3 = __recovered_scope_0.var_0_226().targetPoint(arg_395_0, arg_395_2)

	return math.atan2(var_395_3 - var_395_1, var_395_2 - var_395_0)
end

 function __recovered_scope_0.var_0_234(arg_396_0, arg_396_1, arg_396_2, arg_396_3, arg_396_4)
	arg_396_2.target, arg_396_2.phase, arg_396_2.from, arg_396_2.turnAt = arg_396_3, "turn", arg_396_2.angle, arg_396_4
end

 function __recovered_scope_0.var_0_235(arg_397_0, arg_397_1, arg_397_2, arg_397_3, arg_397_4)
	local var_397_0 = arg_397_1.owner
	local var_397_1 = arg_397_2.target

	if not __recovered_scope_0.var_0_223.targetable(arg_397_0, var_397_0, var_397_1, arg_397_4) then
		var_397_1 = __recovered_scope_0.var_0_223.nearest(arg_397_0, var_397_0, arg_397_4, arg_397_1.metric)

		if not var_397_1 then
			arg_397_2.phase, arg_397_2.target = "wait"

			return
		end

		__recovered_scope_0.var_0_234(arg_397_0, arg_397_1, arg_397_2, var_397_1, arg_397_3)

		return
	end

	arg_397_2.angle = __recovered_scope_0.var_0_233(arg_397_0, arg_397_1, var_397_1)

	local var_397_2, var_397_3 = __recovered_scope_0.var_0_223.pivot(arg_397_1)
	local var_397_4 = math.cos(arg_397_2.angle)
	local var_397_5 = math.sin(arg_397_2.angle)

	require("src.game.projectiles").rift_spear.spawn(arg_397_0, var_397_0, var_397_1, arg_397_1.atk, var_397_2, var_397_3, var_397_4, var_397_5, arg_397_2.mul, arg_397_2.shot, arg_397_1)

	local var_397_6, var_397_7 = __recovered_scope_0.var_0_226().targetPoint(arg_397_0, var_397_1)

	arg_397_1.throws[#arg_397_1.throws + 1] = {
		at = arg_397_3,
		x = var_397_2,
		y = var_397_3,
		dx = var_397_4,
		dy = var_397_5,
		tx = var_397_6,
		ty = var_397_7,
		shot = arg_397_2.shot
	}
	arg_397_1.spear, arg_397_1.nextAt = nil, arg_397_3 + __recovered_scope_0.var_0_223.GAP
end

 function __recovered_scope_0.var_0_236(arg_398_0, arg_398_1, arg_398_2, arg_398_3, arg_398_4)
	local var_398_0 = arg_398_1.owner

	if arg_398_2.phase == "emerge" then
		if arg_398_3 - arg_398_2.at < (arg_398_1.emergeT or __recovered_scope_0.var_0_223.EMERGE) then
			return
		end

		arg_398_2.phase = "wait"
	end

	if arg_398_2.phase == "wait" then
		local var_398_1 = __recovered_scope_0.var_0_223.nearest(arg_398_0, var_398_0, arg_398_4, arg_398_1.metric)

		if var_398_1 then
			__recovered_scope_0.var_0_234(arg_398_0, arg_398_1, arg_398_2, var_398_1, arg_398_3)
		end

		return
	end

	if arg_398_2.phase == "turn" or arg_398_2.phase == "hold" then
		local var_398_2 = arg_398_2.target

		if not __recovered_scope_0.var_0_223.targetable(arg_398_0, var_398_0, var_398_2, arg_398_4) then
			var_398_2 = __recovered_scope_0.var_0_223.nearest(arg_398_0, var_398_0, arg_398_4, arg_398_1.metric)

			if not var_398_2 then
				arg_398_2.phase, arg_398_2.target = "wait"

				return
			end

			__recovered_scope_0.var_0_234(arg_398_0, arg_398_1, arg_398_2, var_398_2, arg_398_3)
		end

		local var_398_3 = __recovered_scope_0.var_0_233(arg_398_0, arg_398_1, var_398_2)

		if arg_398_2.phase == "turn" then
			local var_398_4 = (arg_398_3 - arg_398_2.turnAt) / __recovered_scope_0.var_0_223.TURN

			arg_398_2.angle = arg_398_2.from + __recovered_scope_0.var_0_231(var_398_3 - arg_398_2.from) * __recovered_scope_0.var_0_232(var_398_4)

			if var_398_4 >= 1 then
				arg_398_2.angle, arg_398_2.phase, arg_398_2.holdAt = var_398_3, "hold", arg_398_3
			end
		else
			arg_398_2.angle = var_398_3

			if arg_398_3 - arg_398_2.holdAt >= __recovered_scope_0.var_0_223.HOLD then
				__recovered_scope_0.var_0_235(arg_398_0, arg_398_1, arg_398_2, arg_398_3, arg_398_4)
			end
		end
	end
end

function __recovered_scope_0.var_0_223.close(arg_399_0, arg_399_1)
	if arg_399_0.state == "closing" then
		return
	end

	arg_399_1 = arg_399_1 or arg_399_0.t or 0

	local var_399_0 = arg_399_0.spear

	arg_399_0.state, arg_399_0.closeAt = "closing", arg_399_1
	arg_399_0.closeFrom = var_399_0 and var_399_0.phase == "sink" and var_399_0.at + __recovered_scope_0.var_0_223.SINK or arg_399_1
	arg_399_0.queue = {}
	__recovered_scope_0.var_0_223.open[arg_399_0] = nil
end

function __recovered_scope_0.var_0_223.updateRift(arg_400_0, arg_400_1, arg_400_2, arg_400_3)
	if arg_400_1.finished then
		return
	end

	arg_400_1.bf = arg_400_0

	local var_400_0 = arg_400_1.t or 0
	local var_400_1 = arg_400_1.owner

	__recovered_scope_0.var_0_223.place(arg_400_0, arg_400_1)

	if arg_400_1.state == "open" then
		if not __recovered_scope_0.var_0_225(var_400_1) then
			if arg_400_1.spear then
				arg_400_1.spear.phase, arg_400_1.spear.at = "sink", var_400_0
			end

			__recovered_scope_0.var_0_223.close(arg_400_1, var_400_0)
		else
			local var_400_2 = arg_400_1.spear

			if not var_400_2 and #arg_400_1.queue > 0 and var_400_0 >= (arg_400_1.openT or __recovered_scope_0.var_0_223.RIFT_OPEN) and var_400_0 >= arg_400_1.nextAt then
				arg_400_1.drawn = arg_400_1.drawn + 1
				var_400_2 = {
					phase = "emerge",
					at = var_400_0,
					mul = table.remove(arg_400_1.queue, 1),
					shot = arg_400_1.drawn,
					angle = math.pi / 2
				}
				arg_400_1.spear = var_400_2
			end

			if var_400_2 then
				__recovered_scope_0.var_0_236(arg_400_0, arg_400_1, var_400_2, var_400_0, arg_400_2)
			end

			if var_400_0 >= arg_400_1.window then
				local var_400_3 = arg_400_1.spear

				if var_400_3 and var_400_3.phase == "wait" then
					var_400_3.phase, var_400_3.at = "sink", var_400_0

					__recovered_scope_0.var_0_223.close(arg_400_1, var_400_0)
				elseif not var_400_3 and #arg_400_1.queue == 0 then
					__recovered_scope_0.var_0_223.close(arg_400_1, var_400_0)
				end
			end
		end
	end

	local var_400_4 = arg_400_1.spear

	if var_400_4 and var_400_4.phase == "sink" and var_400_0 - var_400_4.at >= __recovered_scope_0.var_0_223.SINK then
		arg_400_1.spear = nil
	end

	if arg_400_1.state == "closing" and not arg_400_1.spear and var_400_0 >= (arg_400_1.closeFrom or var_400_0) + (arg_400_1.closeT or __recovered_scope_0.var_0_223.RIFT_CLOSE) then
		arg_400_1.finished = true
	end
end

function __recovered_scope_0.var_0_223.strike(arg_401_0, arg_401_1, arg_401_2, arg_401_3)
	local var_401_0 = arg_401_1.target

	if not __recovered_scope_0.var_0_224.targetable(arg_401_0, arg_401_1.owner, var_401_0, arg_401_2) then
		return false
	end

	arg_401_3(var_401_0, (arg_401_1.atk or 0) * (arg_401_1.mul or 1.8), arg_401_1.owner, nil, {
		riftArsenal = true,
		battleSkillDamage = true,
		basicAttack = false,
		chainCast = arg_401_1.chainCast or false,
		awakeningCast = arg_401_1.awakeningCast
	})

	arg_401_1.killed = not __recovered_scope_0.var_0_225(var_401_0)

	return true
end

 __recovered_scope_0.var_0_237 = __recovered_scope_0.var_0_223
 __recovered_scope_0.var_0_238 = nil
 __recovered_scope_0.var_0_239 = {
	PUSH_HOP = 2,
	PATH_HALF = 16,
	RANGE = 150,
	PUSH_DUR = 0.25,
	PUSH = 18,
	HUSK_IDLE = 0.24
}
 __recovered_scope_0.var_0_240 = __recovered_scope_0.var_0_180

__recovered_scope_0.var_0_239.canAct = __recovered_scope_0.var_0_212.canAct
__recovered_scope_0.var_0_239.targetable = __recovered_scope_0.var_0_240.targetable

 function __recovered_scope_0.var_0_241(arg_402_0, arg_402_1, arg_402_2)
	return arg_402_2 and arg_402_2(arg_402_0, arg_402_1) or ((arg_402_1.x or 0) - (arg_402_0.x or 0))^2 + ((arg_402_1.y or 0) - (arg_402_0.y or 0))^2
end

function __recovered_scope_0.var_0_239.range(arg_403_0)
	return tonumber(arg_403_0.skill and arg_403_0.skill.range) or __recovered_scope_0.var_0_239.RANGE
end

function __recovered_scope_0.var_0_239.inRange(arg_404_0, arg_404_1, arg_404_2, arg_404_3, arg_404_4)
	if not __recovered_scope_0.var_0_240.targetable(arg_404_0, arg_404_1, arg_404_2, arg_404_3) then
		return false
	end

	local var_404_0 = __recovered_scope_0.var_0_239.range(arg_404_1)

	return require("src.game.awakening").skillMetric(arg_404_1, arg_404_2, __recovered_scope_0.var_0_241(arg_404_1, arg_404_2, arg_404_4)) <= var_404_0 * var_404_0
end

function __recovered_scope_0.var_0_239.lineCount(arg_405_0, arg_405_1, arg_405_2, arg_405_3)
	local var_405_0 = arg_405_1.x or 0
	local var_405_1 = arg_405_1.y or 0
	local var_405_2 = (arg_405_2.x or 0) - var_405_0
	local var_405_3 = (arg_405_2.y or 0) - var_405_1
	local var_405_4 = math.sqrt(var_405_2 * var_405_2 + var_405_3 * var_405_3)

	if var_405_4 < 1e-06 then
		return 1
	end

	local var_405_5, var_405_6 = var_405_2 / var_405_4, var_405_3 / var_405_4
	local var_405_7 = require("src.game.projectiles").spectral_rush.REACH
	local var_405_8 = 0

	for iter_405_0, iter_405_1 in ipairs(arg_405_0.enemies or {}) do
		if __recovered_scope_0.var_0_240.targetable(arg_405_0, arg_405_1, iter_405_1, arg_405_3) then
			local var_405_9 = (iter_405_1.x or 0) - var_405_0
			local var_405_10 = (iter_405_1.y or 0) - var_405_1
			local var_405_11 = var_405_9 * var_405_5 + var_405_10 * var_405_6

			if var_405_11 >= 0 and var_405_11 <= var_405_7 and math.abs(var_405_9 * var_405_6 - var_405_10 * var_405_5) <= __recovered_scope_0.var_0_239.PATH_HALF then
				var_405_8 = var_405_8 + 1
			end
		end
	end

	return var_405_8
end

function __recovered_scope_0.var_0_239.aim(arg_406_0, arg_406_1, arg_406_2, arg_406_3)
	local var_406_0
	local var_406_1
	local var_406_2

	for iter_406_0, iter_406_1 in ipairs(arg_406_0.enemies or {}) do
		if __recovered_scope_0.var_0_239.inRange(arg_406_0, arg_406_1, iter_406_1, arg_406_2, arg_406_3) then
			local var_406_3 = __recovered_scope_0.var_0_239.lineCount(arg_406_0, arg_406_1, iter_406_1, arg_406_2)
			local var_406_4 = __recovered_scope_0.var_0_241(arg_406_1, iter_406_1, arg_406_3)

			if not var_406_0 or var_406_1 < var_406_3 or var_406_3 == var_406_1 and var_406_4 < var_406_2 then
				var_406_0, var_406_1, var_406_2 = iter_406_1, var_406_3, var_406_4
			end
		end
	end

	return var_406_0
end

function __recovered_scope_0.var_0_239.finish(arg_407_0)
	local var_407_0 = arg_407_0.skill

	var_407_0.state, var_407_0.active, var_407_0.wraithCast, var_407_0.targetRef, var_407_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_407_0)
	arg_407_0._casting, arg_407_0._suppressAttack = false, false
	arg_407_0._forceAnim, arg_407_0._forceAnimT = nil, 0

	if arg_407_0.anim and arg_407_0.anim.reverse then
		arg_407_0.anim.reverse = nil
	end
end

function __recovered_scope_0.var_0_239.merge(arg_408_0, arg_408_1)
	local var_408_0 = arg_408_0.skill
	local var_408_1 = var_408_0.wraithCast

	var_408_1.phase, var_408_1.mergeT, var_408_1.mergeDur = "merge", 0, arg_408_1 * (var_408_0.animationSpeed or 0.1)
	arg_408_0.anim.name, arg_408_0.anim.frame, arg_408_0.anim.t, arg_408_0.anim.reverse = var_408_0.activeAnim or "attack2", arg_408_1, 0, true
end

function __recovered_scope_0.var_0_239.updateCast(arg_409_0, arg_409_1, arg_409_2, arg_409_3, arg_409_4)
	local var_409_0 = arg_409_1.skill

	if not __recovered_scope_0.var_0_239.canAct(arg_409_1) then
		if var_409_0.state == "active" then
			__recovered_scope_0.var_0_239.finish(arg_409_1)
		end

		return
	end

	if var_409_0.state == "active" then
		local var_409_1 = var_409_0.wraithCast
		local var_409_2 = var_409_0.activeAnim or "attack2"

		if not var_409_1 or not arg_409_1.anim then
			__recovered_scope_0.var_0_239.finish(arg_409_1)

			return
		end

		arg_409_1._casting, arg_409_1._suppressAttack = true, true
		arg_409_1.facing = var_409_1.facing

		if var_409_1.phase == "emerge" then
			if arg_409_1.anim.name ~= var_409_2 then
				__recovered_scope_0.var_0_239.finish(arg_409_1)

				return
			end

			var_409_1.chargeT = (var_409_1.chargeT or 0) + arg_409_2
		elseif var_409_1.phase == "hollow" then
			local var_409_3 = var_409_1.wraith

			if arg_409_1.anim.name ~= "idle" then
				arg_409_1.anim.name, arg_409_1.anim.frame, arg_409_1.anim.t, arg_409_1.anim.reverse = "idle", 1, 0
			end

			if not var_409_3 or var_409_3.merged or var_409_3.finished then
				__recovered_scope_0.var_0_239.merge(arg_409_1, 3)
			elseif var_409_3.arriveT and var_409_3.arriveT - (var_409_3.t or 0) <= (var_409_0.animationSpeed or 0.1) + 1e-09 then
				__recovered_scope_0.var_0_239.merge(arg_409_1, 4)
			end
		elseif var_409_1.phase == "merge" then
			if arg_409_1.anim.name ~= var_409_2 then
				arg_409_1.anim.name, arg_409_1.anim.frame, arg_409_1.anim.t = var_409_2, 1, 0
			end

			arg_409_1.anim.reverse = true
			var_409_1.mergeT = var_409_1.mergeT + arg_409_2

			if var_409_1.mergeT >= var_409_1.mergeDur - 1e-09 then
				__recovered_scope_0.var_0_239.finish(arg_409_1)

				arg_409_1.anim.name, arg_409_1.anim.frame, arg_409_1.anim.t = "idle", 1, 0

				return
			end
		end

		arg_409_1._forceAnim, arg_409_1._forceAnimT = arg_409_1.anim.name, math.max(0.2, arg_409_2 + 0.1)

		return
	end

	var_409_0.cdT = math.min(var_409_0.cd or 7, (var_409_0.cdT or 0) + arg_409_2)

	if var_409_0.cdT < (var_409_0.cd or 7) then
		return
	end

	var_409_0.ready = true

	if not arg_409_1.anim then
		return
	end

	local var_409_4 = __recovered_scope_0.var_0_239.aim(arg_409_0, arg_409_1, arg_409_3, arg_409_4)

	if not var_409_4 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_409_1)

	var_409_0.state, var_409_0.active, var_409_0.ready, var_409_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_409_0)

	local var_409_5 = (var_409_4.x or 0) >= (arg_409_1.x or 0) and 1 or -1
	local var_409_6 = arg_409_1.primarySkillDef and arg_409_1.primarySkillDef.runtime or {}

	var_409_0.wraithCast = {
		chargeT = 0,
		phase = "emerge",
		fired = false,
		target = var_409_4,
		facing = var_409_5,
		style = var_409_6.style
	}
	var_409_0.targetRef = var_409_4
	var_409_0.wraithCast.mx, var_409_0.wraithCast.my = require("src.game.projectiles").spectral_rush.marker(arg_409_0, arg_409_1)
	arg_409_1._spectralRushRim = nil
	arg_409_1._pendingSpearHit, arg_409_1.shotPending, arg_409_1.pendingTarget = nil, false
	arg_409_1._casting, arg_409_1._suppressAttack = true, true
	arg_409_1._forceAnim, arg_409_1._forceAnimT = var_409_0.activeAnim or "attack2", math.max(0.2, arg_409_2 + 0.1)
	arg_409_1.anim.name, arg_409_1.anim.frame, arg_409_1.anim.t, arg_409_1.anim.reverse = arg_409_1._forceAnim, 1, 0
	arg_409_1.anim._desynced = true
	arg_409_1.facing, arg_409_1._attackFacing = var_409_5, var_409_5
end

function __recovered_scope_0.var_0_239.onAnimation(arg_410_0, arg_410_1, arg_410_2, arg_410_3, arg_410_4, arg_410_5)
	local var_410_0 = arg_410_1.skill
	local var_410_1 = var_410_0 and var_410_0.wraithCast

	if not var_410_1 or var_410_1.phase ~= "emerge" then
		return
	end

	if not __recovered_scope_0.var_0_239.canAct(arg_410_1) or not arg_410_1.anim or arg_410_1.anim.name ~= (var_410_0.activeAnim or "attack2") then
		__recovered_scope_0.var_0_239.finish(arg_410_1)

		return
	end

	local var_410_2 = var_410_0.releaseFrame or 4

	if not var_410_1.fired and var_410_2 <= (arg_410_1.anim.frame or 1) then
		arg_410_1.anim.frame, arg_410_1.anim.t = var_410_2, 0
		var_410_1.fired = true

		local var_410_3 = var_410_1.target

		if not __recovered_scope_0.var_0_239.targetable(arg_410_0, arg_410_1, var_410_3, arg_410_4) then
			var_410_3 = __recovered_scope_0.var_0_239.aim(arg_410_0, arg_410_1, arg_410_4, arg_410_5) or __recovered_scope_0.var_0_206.nearestAny(arg_410_0, arg_410_1, arg_410_4, arg_410_5)
		end

		if var_410_3 then
			var_410_1.facing = (var_410_3.x or 0) >= (arg_410_1.x or 0) and 1 or -1
			arg_410_1.facing, arg_410_1._attackFacing = var_410_1.facing, var_410_1.facing
		end

		var_410_1.wraith = require("src.game.projectiles").spectral_rush.launch(arg_410_0, arg_410_1, var_410_3, arg_410_3, arg_410_2)

		if not var_410_1.wraith then
			__recovered_scope_0.var_0_239.finish(arg_410_1)
		end

		return
	end

	local var_410_4 = arg_410_2 and arg_410_2.animations and arg_410_2.animations[var_410_0.activeAnim or "attack2"]

	if var_410_1.fired and arg_410_1.anim.frame > (var_410_4 and var_410_4.frames or 4) then
		var_410_1.phase = "hollow"
		arg_410_1.anim.name, arg_410_1.anim.frame, arg_410_1.anim.t, arg_410_1.anim.reverse = "idle", 1, 0
	end
end

function __recovered_scope_0.var_0_239.frameDuration(arg_411_0, arg_411_1, arg_411_2)
	local var_411_0 = arg_411_0.skill
	local var_411_1 = var_411_0 and var_411_0.state == "active" and var_411_0.wraithCast

	if not var_411_1 or not arg_411_0.anim then
		return arg_411_1, arg_411_2
	end

	if arg_411_0.anim.name == (var_411_0.activeAnim or "attack2") then
		return var_411_0.animationSpeed or 0.1, 1
	end

	if arg_411_0.anim.name == "idle" and var_411_1.phase == "hollow" then
		return __recovered_scope_0.var_0_239.HUSK_IDLE, 1
	end

	return arg_411_1, arg_411_2
end

function __recovered_scope_0.var_0_239.wraith(arg_412_0)
	local var_412_0 = arg_412_0 and arg_412_0._spectralRushWraith

	if var_412_0 and not var_412_0.merged and not var_412_0.finished and var_412_0.state ~= "fade" then
		return var_412_0
	end

	return nil
end

function __recovered_scope_0.var_0_239.release(arg_413_0, arg_413_1)
	if arg_413_0 and arg_413_0._spectralRushWraith == arg_413_1 then
		arg_413_0._spectralRushWraith = nil
	end
end

function __recovered_scope_0.var_0_239.merged(arg_414_0, arg_414_1)
	__recovered_scope_0.var_0_239.release(arg_414_0, arg_414_1)

	if arg_414_0 then
		arg_414_0._spectralRushRim = arg_414_1
	end
end

function __recovered_scope_0.var_0_239.endBattle(arg_415_0)
	for iter_415_0, iter_415_1 in ipairs(arg_415_0 and arg_415_0.allies or {}) do
		iter_415_1._spectralRushWraith, iter_415_1._spectralRushRim = nil
	end

	for iter_415_2, iter_415_3 in ipairs(arg_415_0 and arg_415_0.vfx or {}) do
		if iter_415_3.kind == "spectral_rush" then
			iter_415_3.finished = true
		end
	end
end

function __recovered_scope_0.var_0_239.strike(arg_416_0, arg_416_1, arg_416_2, arg_416_3, arg_416_4, arg_416_5)
	if not __recovered_scope_0.var_0_240.targetable(arg_416_0, arg_416_1.owner, arg_416_2, arg_416_4) then
		return false
	end

	local var_416_0 = (arg_416_1.atk or 0) * (arg_416_1.dmgMul or 1.3)

	if arg_416_3 > (arg_416_1.base or 3) then
		require("src.game.combat").branching_bloom.extra(arg_416_0, arg_416_1.owner, arg_416_3, arg_416_1.base or 3, arg_416_2, var_416_0, arg_416_5)

		return true
	end

	if __recovered_scope_0.var_0_200.pushable(arg_416_2) then
		arg_416_2._kb = {
			dirY = 0,
			t = 0,
			waveHop = true,
			dur = __recovered_scope_0.var_0_239.PUSH_DUR,
			dist = __recovered_scope_0.var_0_239.PUSH,
			dirX = arg_416_1.face or 1,
			height = __recovered_scope_0.var_0_239.PUSH_HOP
		}
	end

	arg_416_5(arg_416_2, var_416_0, arg_416_1.owner, nil, {
		battleSkillDamage = true,
		spectralRush = true,
		basicAttack = false,
		chainCast = arg_416_1.chainCast or false,
		awakeningCast = arg_416_1.awakeningCast
	})

	return true
end

function __recovered_scope_0.var_0_239.strikeBack(arg_417_0, arg_417_1, arg_417_2, arg_417_3, arg_417_4, arg_417_5)
	if not __recovered_scope_0.var_0_240.targetable(arg_417_0, arg_417_1.owner, arg_417_2, arg_417_4) then
		return false
	end

	local var_417_0 = (arg_417_1.atk or 0) * (arg_417_1.returnDmgMul or 0.8)

	if arg_417_3 then
		local var_417_1 = arg_417_1.base or 3

		require("src.game.combat").branching_bloom.extra(arg_417_0, arg_417_1.owner, var_417_1 + 1, var_417_1, arg_417_2, var_417_0, arg_417_5)

		return true
	end

	arg_417_5(arg_417_2, var_417_0, arg_417_1.owner, nil, {
		battleSkillDamage = true,
		spectralRush = true,
		spectralReturn = true,
		basicAttack = false,
		chainCast = arg_417_1.chainCast or false,
		awakeningCast = arg_417_1.awakeningCast
	})

	return true
end

 __recovered_scope_0.var_0_242 = __recovered_scope_0.var_0_239
 __recovered_scope_0.var_0_243 = nil
 __recovered_scope_0.var_0_244 = {
	SWAY_PERIOD = 0.6,
	WINDUP = 0.4,
	SWAY_EASE = 0.25,
	SWAY = {
		0.7,
		1.2
	}
}
 __recovered_scope_0.var_0_245 = __recovered_scope_0.var_0_180

__recovered_scope_0.var_0_244.canAct = __recovered_scope_0.var_0_212.canAct
__recovered_scope_0.var_0_244.targetable = __recovered_scope_0.var_0_245.targetable

function __recovered_scope_0.var_0_244.runtime(arg_418_0)
	return arg_418_0 and arg_418_0.primarySkillDef and arg_418_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_244.nearest(arg_419_0, arg_419_1, arg_419_2, arg_419_3)
	local var_419_0 = __recovered_scope_0.var_0_200.candidates(arg_419_0, arg_419_1, arg_419_2, arg_419_3)[1]

	return var_419_0 and var_419_0.target
end

function __recovered_scope_0.var_0_244.pick(arg_420_0, arg_420_1, arg_420_2, arg_420_3, arg_420_4)
	local var_420_0
	local var_420_1
	local var_420_2

	for iter_420_0, iter_420_1 in ipairs(arg_420_0.enemies or {}) do
		if __recovered_scope_0.var_0_244.targetable(arg_420_0, arg_420_1, iter_420_1, arg_420_2) then
			local var_420_3 = arg_420_4 and arg_420_4[iter_420_1] or 0
			local var_420_4 = arg_420_3 and arg_420_3(arg_420_1, iter_420_1) or ((iter_420_1.x or 0) - (arg_420_1.x or 0))^2 + ((iter_420_1.y or 0) - (arg_420_1.y or 0))^2

			if not var_420_0 or var_420_3 < var_420_1 or var_420_3 == var_420_1 and var_420_4 < var_420_2 then
				var_420_0, var_420_1, var_420_2 = iter_420_1, var_420_3, var_420_4
			end
		end
	end

	return var_420_0
end

function __recovered_scope_0.var_0_244.retarget(arg_421_0, arg_421_1, arg_421_2, arg_421_3)
	return __recovered_scope_0.var_0_244.pick(arg_421_0, arg_421_1, arg_421_2, arg_421_3)
end

function __recovered_scope_0.var_0_244.targets(arg_422_0, arg_422_1, arg_422_2, arg_422_3, arg_422_4, arg_422_5)
	local var_422_0 = {}
	local var_422_1 = {}

	for iter_422_0 = 1, arg_422_4 do
		local var_422_2 = iter_422_0 == 1 and arg_422_5 and __recovered_scope_0.var_0_244.targetable(arg_422_0, arg_422_1, arg_422_5, arg_422_2) and arg_422_5 or __recovered_scope_0.var_0_244.pick(arg_422_0, arg_422_1, arg_422_2, arg_422_3, var_422_0)

		var_422_1[iter_422_0] = var_422_2

		if var_422_2 then
			var_422_0[var_422_2] = (var_422_0[var_422_2] or 0) + 1
		end
	end

	return var_422_1
end

function __recovered_scope_0.var_0_244.face(arg_423_0, arg_423_1)
	local var_423_0 = (arg_423_1.x or 0) >= (arg_423_0.x or 0) and 1 or -1

	arg_423_0.facing, arg_423_0._attackFacing = var_423_0, var_423_0

	local var_423_1 = arg_423_0.skill and arg_423_0.skill.rayCast

	if var_423_1 then
		var_423_1.facing = var_423_0
	end
end

function __recovered_scope_0.var_0_244.holding(arg_424_0, arg_424_1)
	local var_424_0 = arg_424_0 and arg_424_0.skill
	local var_424_1 = var_424_0 and var_424_0.state == "active" and var_424_0.rayCast

	return var_424_1 and var_424_1.ray == arg_424_1 and (var_424_1.phase == "windup" or var_424_1.phase == "beam") and __recovered_scope_0.var_0_244.canAct(arg_424_0) or false
end

function __recovered_scope_0.var_0_244.finish(arg_425_0)
	local var_425_0 = arg_425_0.skill
	local var_425_1 = var_425_0.rayCast

	if var_425_1 and var_425_1.ray then
		require("src.game.projectiles").abyssal_ray.stop(var_425_1.ray)
	end

	var_425_0.state, var_425_0.active, var_425_0.rayCast, var_425_0.targetRef, var_425_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_425_0)
	arg_425_0._casting, arg_425_0._suppressAttack = false, false
	arg_425_0._forceAnim, arg_425_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_244.updateCast(arg_426_0, arg_426_1, arg_426_2, arg_426_3, arg_426_4)
	local var_426_0 = arg_426_1.skill

	if not __recovered_scope_0.var_0_244.canAct(arg_426_1) then
		if var_426_0.state == "active" then
			__recovered_scope_0.var_0_244.finish(arg_426_1)
		end

		return
	end

	local var_426_1 = var_426_0.activeAnim or "attack2"

	if var_426_0.state == "active" then
		local var_426_2 = var_426_0.rayCast

		if not var_426_2 or not arg_426_1.anim or arg_426_1.anim.name ~= var_426_1 then
			__recovered_scope_0.var_0_244.finish(arg_426_1)

			return
		end

		arg_426_1._casting, arg_426_1._suppressAttack = true, true
		arg_426_1.facing = var_426_2.facing

		if var_426_2.phase == "beam" then
			local var_426_3 = var_426_0.releaseFrame or 4

			arg_426_1.anim.frame, arg_426_1.anim.t = var_426_3, 0
			var_426_2.beamT = var_426_2.beamT + arg_426_2

			if not var_426_2.ray or var_426_2.ray.state ~= "beam" then
				var_426_2.phase = "recover"
			end
		end

		arg_426_1._forceAnim, arg_426_1._forceAnimT = var_426_1, math.max(0.2, arg_426_2 + 0.1)

		return
	end

	var_426_0.cdT = math.min(var_426_0.cd or 6, (var_426_0.cdT or 0) + arg_426_2)

	if var_426_0.cdT < (var_426_0.cd or 6) then
		return
	end

	var_426_0.ready = true

	if not arg_426_1.anim then
		return
	end

	local var_426_4 = __recovered_scope_0.var_0_244.nearest(arg_426_0, arg_426_1, arg_426_3, arg_426_4)

	if not var_426_4 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_426_1)

	var_426_0.state, var_426_0.active, var_426_0.ready, var_426_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_426_0)

	local var_426_5 = __recovered_scope_0.var_0_244.runtime(arg_426_1)

	var_426_0.rayCast = {
		beamT = 0,
		phase = "windup",
		target = var_426_4,
		beam = tonumber(var_426_5.beam) or 3
	}
	var_426_0.targetRef = var_426_4
	arg_426_1._pendingWarriorHit, arg_426_1.shotPending, arg_426_1.pendingTarget = nil, false
	arg_426_1._casting, arg_426_1._suppressAttack = true, true
	arg_426_1._forceAnim, arg_426_1._forceAnimT = var_426_1, math.max(0.2, arg_426_2 + 0.1)
	arg_426_1.anim.name, arg_426_1.anim.frame, arg_426_1.anim.t, arg_426_1.anim.reverse = var_426_1, 1, 0
	arg_426_1.anim._desynced = true

	__recovered_scope_0.var_0_244.face(arg_426_1, var_426_4)

	var_426_0.rayCast.ray = require("src.game.projectiles").abyssal_ray.spawn(arg_426_0, arg_426_1, var_426_4, arg_426_4)
end

function __recovered_scope_0.var_0_244.onAnimation(arg_427_0, arg_427_1, arg_427_2, arg_427_3, arg_427_4, arg_427_5)
	local var_427_0 = arg_427_1.skill
	local var_427_1 = var_427_0 and var_427_0.rayCast

	if not var_427_1 then
		return
	end

	if not __recovered_scope_0.var_0_244.canAct(arg_427_1) or not arg_427_1.anim or arg_427_1.anim.name ~= (var_427_0.activeAnim or "attack2") then
		__recovered_scope_0.var_0_244.finish(arg_427_1)

		return
	end

	local var_427_2 = var_427_0.releaseFrame or 4

	if var_427_1.phase == "windup" and var_427_2 <= (arg_427_1.anim.frame or 1) then
		arg_427_1.anim.frame, arg_427_1.anim.t = var_427_2, 0

		local var_427_3 = __recovered_scope_0.var_0_244.targets(arg_427_0, arg_427_1, arg_427_4, arg_427_5, var_427_1.ray and var_427_1.ray.beams or 1, var_427_1.target)

		if var_427_3[1] then
			__recovered_scope_0.var_0_244.face(arg_427_1, var_427_3[1])
		end

		var_427_1.phase, var_427_1.beamT = "beam", 0

		if not var_427_1.ray or not require("src.game.projectiles").abyssal_ray.release(arg_427_0, var_427_1.ray, var_427_3, arg_427_3) then
			__recovered_scope_0.var_0_244.finish(arg_427_1)
		end

		return
	end

	if var_427_1.phase == "beam" then
		arg_427_1.anim.frame, arg_427_1.anim.t = var_427_2, 0

		return
	end

	local var_427_4 = arg_427_2 and arg_427_2.animations and arg_427_2.animations[var_427_0.activeAnim or "attack2"]

	if arg_427_1.anim.frame > (var_427_4 and var_427_4.frames or 10) then
		__recovered_scope_0.var_0_244.finish(arg_427_1)
	end
end

function __recovered_scope_0.var_0_244.frameDuration(arg_428_0, arg_428_1, arg_428_2)
	local var_428_0 = arg_428_0.skill
	local var_428_1 = var_428_0 and var_428_0.state == "active" and var_428_0.rayCast

	if not var_428_1 or not arg_428_0.anim or arg_428_0.anim.name ~= (var_428_0.activeAnim or "attack2") then
		return arg_428_1, arg_428_2
	end

	local var_428_2 = var_428_0.releaseFrame or 4

	if var_428_1.phase ~= "recover" and var_428_2 <= (arg_428_0.anim.frame or 1) then
		return math.huge, 1
	end

	if var_428_1.phase == "windup" then
		return (tonumber(__recovered_scope_0.var_0_244.runtime(arg_428_0).windup) or __recovered_scope_0.var_0_244.WINDUP) / math.max(1, var_428_2 - 1), 1
	end

	return var_428_0.animationSpeed or 0.08, 1
end

function __recovered_scope_0.var_0_244.sway(arg_429_0, arg_429_1, arg_429_2)
	local var_429_0 = arg_429_0 and arg_429_0.skill
	local var_429_1 = var_429_0 and var_429_0.kind == "AbyssalRay" and var_429_0.state == "active" and var_429_0.rayCast

	if not var_429_1 or var_429_1.phase ~= "beam" or not arg_429_0.anim or arg_429_0.anim.frame ~= (var_429_0.releaseFrame or 4) then
		return 0
	end

	local var_429_2 = var_429_1.beamT or 0
	local var_429_3 = var_429_1.beam or 3

	arg_429_2 = arg_429_2 or __recovered_scope_0.var_0_244.runtime(arg_429_0)

	local var_429_4 = arg_429_2.swayPeriod or __recovered_scope_0.var_0_244.SWAY_PERIOD
	local var_429_5 = arg_429_2.sway or __recovered_scope_0.var_0_244.SWAY
	local var_429_6 = math.max(0, math.min(1, var_429_2 / __recovered_scope_0.var_0_244.SWAY_EASE, (var_429_3 - var_429_2) / __recovered_scope_0.var_0_244.SWAY_EASE))
	local var_429_7 = var_429_5[1] + (var_429_5[2] - var_429_5[1]) * math.max(0, math.min(1, var_429_2 / var_429_3))

	return math.floor(math.sin(2 * math.pi * var_429_2 / var_429_4) * var_429_7 * var_429_6 * math.abs(arg_429_1 or 2) + 0.5)
end

function __recovered_scope_0.var_0_244.strike(arg_430_0, arg_430_1, arg_430_2, arg_430_3, arg_430_4, arg_430_5)
	if not __recovered_scope_0.var_0_245.targetable(arg_430_0, arg_430_1.owner, arg_430_2, arg_430_4) then
		return false
	end

	arg_430_5(arg_430_2, (arg_430_1.atk or 0) * arg_430_3, arg_430_1.owner, nil, {
		battleSkillDamage = true,
		abyssalRay = true,
		basicAttack = false,
		chainCast = arg_430_1.chainCast or false,
		awakeningCast = arg_430_1.awakeningCast
	})

	return true
end

function __recovered_scope_0.var_0_244.endBattle(arg_431_0)
	for iter_431_0, iter_431_1 in ipairs(arg_431_0 and arg_431_0.allies or {}) do
		if iter_431_1.skill and iter_431_1.skill.kind == "AbyssalRay" and iter_431_1.skill.rayCast then
			__recovered_scope_0.var_0_244.finish(iter_431_1)
		end
	end

	for iter_431_2, iter_431_3 in ipairs(arg_431_0 and arg_431_0.vfx or {}) do
		if iter_431_3.kind == "abyssal_ray" then
			iter_431_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_246 = __recovered_scope_0.var_0_244
 __recovered_scope_0.var_0_247 = nil
 __recovered_scope_0.var_0_248 = {}
 __recovered_scope_0.var_0_249 = __recovered_scope_0.var_0_180

__recovered_scope_0.var_0_248.canAct = __recovered_scope_0.var_0_212.canAct
__recovered_scope_0.var_0_248.targetable = __recovered_scope_0.var_0_249.targetable

function __recovered_scope_0.var_0_248.runtime(arg_432_0)
	return arg_432_0 and arg_432_0.primarySkillDef and arg_432_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_248.candidates(arg_433_0, arg_433_1, arg_433_2, arg_433_3)
	local var_433_0 = tonumber(__recovered_scope_0.var_0_248.runtime(arg_433_1).range)

	if not var_433_0 then
		return __recovered_scope_0.var_0_200.candidates(arg_433_0, arg_433_1, arg_433_2, arg_433_3)
	end

	local var_433_1 = {}

	for iter_433_0, iter_433_1 in ipairs(arg_433_0.enemies or {}) do
		if __recovered_scope_0.var_0_249.targetable(arg_433_0, arg_433_1, iter_433_1, arg_433_2) then
			local var_433_2 = arg_433_3 and arg_433_3(arg_433_1, iter_433_1) or ((iter_433_1.x or 0) - (arg_433_1.x or 0))^2 + ((iter_433_1.y or 0) - (arg_433_1.y or 0))^2

			if require("src.game.awakening").skillMetric(arg_433_1, iter_433_1, var_433_2) <= var_433_0 * var_433_0 then
				var_433_1[#var_433_1 + 1] = {
					target = iter_433_1,
					d = var_433_2,
					index = iter_433_0
				}
			end
		end
	end

	table.sort(var_433_1, function(arg_434_0, arg_434_1)
		if arg_434_0.d == arg_434_1.d then
			return arg_434_0.index < arg_434_1.index
		end

		return arg_434_0.d < arg_434_1.d
	end)

	return var_433_1
end

function __recovered_scope_0.var_0_248.healthiest(arg_435_0, arg_435_1, arg_435_2, arg_435_3)
	local var_435_0

	for iter_435_0, iter_435_1 in ipairs(__recovered_scope_0.var_0_248.candidates(arg_435_0, arg_435_1, arg_435_2, arg_435_3)) do
		if not var_435_0 or (iter_435_1.target.hp or 0) > (var_435_0.hp or 0) then
			var_435_0 = iter_435_1.target
		end
	end

	return var_435_0
end

function __recovered_scope_0.var_0_248.targets(arg_436_0, arg_436_1, arg_436_2, arg_436_3, arg_436_4, arg_436_5)
	local var_436_0 = {}

	for iter_436_0, iter_436_1 in ipairs(__recovered_scope_0.var_0_248.candidates(arg_436_0, arg_436_1, arg_436_2, arg_436_3)) do
		var_436_0[#var_436_0 + 1] = iter_436_1
	end

	table.sort(var_436_0, function(arg_437_0, arg_437_1)
		local var_437_0 = arg_437_0.target.hp or 0
		local var_437_1 = arg_437_1.target.hp or 0

		if var_437_0 ~= var_437_1 then
			return var_437_1 < var_437_0
		end

		if arg_437_0.d ~= arg_437_1.d then
			return arg_437_0.d < arg_437_1.d
		end

		return arg_437_0.index < arg_437_1.index
	end)

	local var_436_1 = {}
	local var_436_2 = {}

	if arg_436_5 and __recovered_scope_0.var_0_248.targetable(arg_436_0, arg_436_1, arg_436_5, arg_436_2) then
		var_436_1[1], var_436_2[arg_436_5] = arg_436_5, true
	end

	for iter_436_2, iter_436_3 in ipairs(var_436_0) do
		if arg_436_4 <= #var_436_1 then
			break
		end

		if not var_436_2[iter_436_3.target] then
			var_436_1[#var_436_1 + 1], var_436_2[iter_436_3.target] = iter_436_3.target, true
		end
	end

	return var_436_1
end

function __recovered_scope_0.var_0_248.finish(arg_438_0)
	local var_438_0 = arg_438_0.skill
	local var_438_1 = var_438_0.siphonCast

	if var_438_1 and var_438_1.bolt and var_438_1.bolt.state == "charge" then
		var_438_1.bolt.finished = true
	end

	var_438_0.state, var_438_0.active, var_438_0.siphonCast, var_438_0.targetRef, var_438_0.cdT = nil, false, nil, nil, require("src.game.combat").chain_casting.reset(var_438_0)
	arg_438_0._casting, arg_438_0._suppressAttack = false, false
	arg_438_0._forceAnim, arg_438_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_248.updateCast(arg_439_0, arg_439_1, arg_439_2, arg_439_3, arg_439_4)
	local var_439_0 = arg_439_1.skill

	if not __recovered_scope_0.var_0_248.canAct(arg_439_1) then
		if var_439_0.state == "active" then
			__recovered_scope_0.var_0_248.finish(arg_439_1)
		end

		return
	end

	local var_439_1 = var_439_0.activeAnim or "attack"

	if var_439_0.state == "active" then
		if not var_439_0.siphonCast or not arg_439_1.anim or arg_439_1.anim.name ~= var_439_1 then
			__recovered_scope_0.var_0_248.finish(arg_439_1)

			return
		end

		arg_439_1._casting, arg_439_1._suppressAttack = true, true
		arg_439_1._forceAnim, arg_439_1._forceAnimT = var_439_1, math.max(0.2, arg_439_2 + 0.1)

		return
	end

	arg_439_1._footingHold = nil
	var_439_0.cdT = math.min(var_439_0.cd or 6, (var_439_0.cdT or 0) + arg_439_2)

	if var_439_0.cdT < (var_439_0.cd or 6) then
		return
	end

	var_439_0.ready = true

	if not arg_439_1.anim then
		return
	end

	local var_439_2 = __recovered_scope_0.var_0_248.healthiest(arg_439_0, arg_439_1, arg_439_3, arg_439_4)

	if not var_439_2 then
		return
	end

	local var_439_3 = require("src.game.combat").ranged_footing

	if var_439_3.applies(arg_439_1) and not var_439_3.canAttack(arg_439_1) then
		arg_439_1._footingHold = true

		return
	end

	require("src.game.combat").chain_casting.begin(arg_439_1)

	var_439_0.state, var_439_0.active, var_439_0.ready, var_439_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_439_0)
	var_439_0.siphonCast = {
		fired = false,
		target = var_439_2,
		count = math.max(1, tonumber(__recovered_scope_0.var_0_248.runtime(arg_439_1).maxTargets) or 1)
	}
	var_439_0.targetRef = var_439_2
	arg_439_1._pendingWarriorHit, arg_439_1.shotPending, arg_439_1.pendingTarget = nil, false
	arg_439_1._casting, arg_439_1._suppressAttack = true, true
	arg_439_1._forceAnim, arg_439_1._forceAnimT = var_439_1, math.max(0.2, arg_439_2 + 0.1)
	arg_439_1.anim.name, arg_439_1.anim.frame, arg_439_1.anim.t, arg_439_1.anim.reverse = var_439_1, 1, 0
	arg_439_1.anim._desynced = true
	arg_439_1.facing = (var_439_2.x or 0) >= (arg_439_1.x or 0) and 1 or -1
	arg_439_1._attackFacing = arg_439_1.facing
	var_439_0.siphonCast.bolt = require("src.game.projectiles").life_siphon.spawn(arg_439_0, arg_439_1, var_439_2)
end

function __recovered_scope_0.var_0_248.onAnimation(arg_440_0, arg_440_1, arg_440_2, arg_440_3, arg_440_4, arg_440_5)
	local var_440_0 = arg_440_1.skill
	local var_440_1 = var_440_0 and var_440_0.siphonCast

	if not var_440_1 then
		return
	end

	if not __recovered_scope_0.var_0_248.canAct(arg_440_1) or not arg_440_1.anim or arg_440_1.anim.name ~= (var_440_0.activeAnim or "attack") then
		__recovered_scope_0.var_0_248.finish(arg_440_1)

		return
	end

	local var_440_2 = var_440_0.releaseFrame or 5

	if not var_440_1.fired and var_440_2 <= (arg_440_1.anim.frame or 1) then
		arg_440_1.anim.frame, arg_440_1.anim.t = var_440_2, 0
		var_440_1.fired = true

		local var_440_3 = __recovered_scope_0.var_0_248.targets(arg_440_0, arg_440_1, arg_440_4, arg_440_5, var_440_1.count or 1, var_440_1.target)

		if not var_440_3[1] then
			var_440_3[1] = __recovered_scope_0.var_0_206.nearestAny(arg_440_0, arg_440_1, arg_440_4, arg_440_5)
		end

		if var_440_3[1] then
			arg_440_1.facing = (var_440_3[1].x or 0) >= (arg_440_1.x or 0) and 1 or -1
			arg_440_1._attackFacing = arg_440_1.facing
		end

		var_440_1.bolts = __recovered_scope_0.var_0_248.volley(arg_440_0, arg_440_1, var_440_3, arg_440_3, arg_440_2, var_440_1.bolt)
		var_440_1.bolt = var_440_1.bolts[1]

		return
	end

	local var_440_4 = arg_440_2 and arg_440_2.animations and arg_440_2.animations[var_440_0.activeAnim or "attack"]

	if arg_440_1.anim.frame > (var_440_4 and var_440_4.frames or 7) then
		__recovered_scope_0.var_0_248.finish(arg_440_1)
	end
end

function __recovered_scope_0.var_0_248.volley(arg_441_0, arg_441_1, arg_441_2, arg_441_3, arg_441_4, arg_441_5)
	local var_441_0 = {}

	for iter_441_0 = 1, #arg_441_2 do
		var_441_0[iter_441_0] = iter_441_0
	end

	table.sort(var_441_0, function(arg_442_0, arg_442_1)
		return (arg_441_2[arg_442_0].y or 0) < (arg_441_2[arg_442_1].y or 0)
	end)

	local var_441_1 = tonumber(__recovered_scope_0.var_0_248.runtime(arg_441_1).bend) or 0
	local var_441_2 = {}

	for iter_441_1, iter_441_2 in ipairs(var_441_0) do
		var_441_2[iter_441_2] = #arg_441_2 > 1 and var_441_1 * ((iter_441_1 - 1) / (#arg_441_2 - 1) * 2 - 1) or 0
	end

	local var_441_3 = require("src.game.projectiles").life_siphon

	if not arg_441_5 or not var_441_3.release(arg_441_0, arg_441_5, arg_441_2[1], arg_441_3, var_441_2[1] or 0) then
		arg_441_5 = var_441_3.launch(arg_441_0, arg_441_1, arg_441_2[1], arg_441_3, arg_441_4, var_441_2[1] or 0)
	end

	local var_441_4 = {
		arg_441_5
	}

	for iter_441_3 = 2, #arg_441_2 do
		var_441_4[iter_441_3] = var_441_3.launch(arg_441_0, arg_441_1, arg_441_2[iter_441_3], arg_441_3, arg_441_4, var_441_2[iter_441_3])
	end

	return var_441_4
end

function __recovered_scope_0.var_0_248.strike(arg_443_0, arg_443_1, arg_443_2, arg_443_3, arg_443_4)
	if not __recovered_scope_0.var_0_249.targetable(arg_443_0, arg_443_1.owner, arg_443_2, arg_443_3) then
		return 0
	end

	local var_443_0 = math.max(0, tonumber(arg_443_2.hp) or 0)

	arg_443_4(arg_443_2, (arg_443_1.atk or 0) * (arg_443_1.dmgMul or 1.6), arg_443_1.owner, nil, {
		battleSkillDamage = true,
		lifeSiphon = true,
		basicAttack = false,
		chainCast = arg_443_1.chainCast or false,
		awakeningCast = arg_443_1.awakeningCast
	})

	return math.max(0, var_443_0 - math.max(0, tonumber(arg_443_2.hp) or 0))
end

 function __recovered_scope_0.var_0_250(arg_444_0)
	return arg_444_0 and arg_444_0.alive and not arg_444_0.dying and (arg_444_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_248.standing(arg_445_0)
	return __recovered_scope_0.var_0_250(arg_445_0) and true or false
end

 function __recovered_scope_0.var_0_251(arg_446_0, arg_446_1)
	return ((arg_446_0.hp or 0) + (arg_446_1 and arg_446_1[arg_446_0] or 0)) / math.max(1e-09, tonumber(arg_446_0.maxhp) or 0)
end

function __recovered_scope_0.var_0_248.wounded(arg_447_0, arg_447_1, arg_447_2, arg_447_3)
	local var_447_0
	local var_447_1

	for iter_447_0, iter_447_1 in ipairs(arg_447_0 and arg_447_0.allies or {}) do
		local var_447_2 = tonumber(iter_447_1.maxhp) or 0

		if __recovered_scope_0.var_0_250(iter_447_1) and var_447_2 > 0 and not iter_447_1.isDecoyDummy and not iter_447_1.isGuardianGolem and (not arg_447_3 or not require("src.game.unit_abilities").dimensional_duel.separated(arg_447_0, arg_447_3, iter_447_1)) then
			local var_447_3 = __recovered_scope_0.var_0_251(iter_447_1, arg_447_2)

			if var_447_3 <= (arg_447_1 or 0.7) + 1e-09 and (not var_447_1 or var_447_3 < var_447_1) then
				var_447_0, var_447_1 = iter_447_1, var_447_3
			end
		end
	end

	return var_447_0
end

function __recovered_scope_0.var_0_248.woundedEnough(arg_448_0, arg_448_1, arg_448_2)
	return __recovered_scope_0.var_0_251(arg_448_0, arg_448_2) <= (arg_448_1 or 0.7) + 1e-09
end

function __recovered_scope_0.var_0_248.healable(arg_449_0)
	return __recovered_scope_0.var_0_250(arg_449_0) and not arg_449_0.isDecoyDummy and not arg_449_0.isGuardianGolem
end

function __recovered_scope_0.var_0_248.heal(arg_450_0, arg_450_1, arg_450_2)
	local var_450_0 = require("src.game.awakening").nativeHeal(arg_450_0, arg_450_1.owner, arg_450_2, math.max(0, arg_450_1.amount or 0), {})

	if var_450_0 > 0 then
		require("src.ui.effects").healing_feedback.apply(arg_450_2, var_450_0)
		require("src.ui.effects").healing_feedback.healerPlus(arg_450_0, arg_450_2)
	end

	return var_450_0
end

function __recovered_scope_0.var_0_248.endBattle(arg_451_0)
	for iter_451_0, iter_451_1 in ipairs(arg_451_0 and arg_451_0.allies or {}) do
		if iter_451_1.skill and iter_451_1.skill.kind == "LifeSiphon" and iter_451_1.skill.siphonCast then
			__recovered_scope_0.var_0_248.finish(iter_451_1)
		end

		iter_451_1._lifeOrb, iter_451_1._lifeOrbs = nil
	end

	for iter_451_2, iter_451_3 in ipairs(arg_451_0 and arg_451_0.vfx or {}) do
		if iter_451_3.kind == "life_siphon" or iter_451_3.kind == "life_orb" then
			iter_451_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_252 = __recovered_scope_0.var_0_248
 __recovered_scope_0.var_0_253 = nil
 __recovered_scope_0.var_0_254 = {
	RELEASE = 0.45,
	LINGER = 0.5,
	FADE = 0.45,
	canAct = __recovered_scope_0.var_0_212.canAct,
	runtime = function(arg_452_0)
		return arg_452_0 and arg_452_0.primarySkillDef and arg_452_0.primarySkillDef.runtime or {}
	end
}

 function __recovered_scope_0.var_0_255(arg_453_0)
	return arg_453_0 and arg_453_0.alive and not arg_453_0.dying and (arg_453_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_254.finishCast(arg_454_0)
	local var_454_0 = arg_454_0.skill
	local var_454_1 = var_454_0.memoryCast

	if var_454_1 and var_454_1.memory and var_454_1.memory.state == "charge" then
		var_454_1.memory.finished = true
	end

	var_454_0.state, var_454_0.active, var_454_0.memoryCast, var_454_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_454_0)
	arg_454_0._casting, arg_454_0._suppressAttack = false, false
	arg_454_0._forceAnim, arg_454_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_254.updateCast(arg_455_0, arg_455_1, arg_455_2, arg_455_3, arg_455_4)
	local var_455_0 = arg_455_1.skill

	if not __recovered_scope_0.var_0_254.canAct(arg_455_1) then
		if var_455_0.memoryCast then
			__recovered_scope_0.var_0_254.finishCast(arg_455_1)
		end

		return
	end

	local var_455_1 = var_455_0.activeAnim or "attack3"

	if var_455_0.memoryCast then
		if not arg_455_1.anim or arg_455_1.anim.name ~= var_455_1 then
			__recovered_scope_0.var_0_254.finishCast(arg_455_1)

			return
		end

		arg_455_1._casting, arg_455_1._suppressAttack = true, true
		arg_455_1._forceAnim, arg_455_1._forceAnimT = var_455_1, math.max(0.2, arg_455_2 + 0.1)

		return
	end

	var_455_0.cdT = math.min(var_455_0.cd or 8, (var_455_0.cdT or 0) + arg_455_2)

	if var_455_0.cdT < (var_455_0.cd or 8) then
		return
	end

	var_455_0.ready = true

	if not arg_455_1.anim or not __recovered_scope_0.var_0_200.candidates(arg_455_0, arg_455_1, arg_455_3, arg_455_4)[1] then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_455_1)

	var_455_0.state, var_455_0.active, var_455_0.ready, var_455_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_455_0)
	var_455_0.memoryCast = {
		released = false
	}
	arg_455_1._pendingCavalryHit, arg_455_1._pendingWarriorHit, arg_455_1.shotPending, arg_455_1.pendingTarget = nil, nil, false
	arg_455_1._casting, arg_455_1._suppressAttack = true, true
	arg_455_1._forceAnim, arg_455_1._forceAnimT = var_455_1, math.max(0.2, arg_455_2 + 0.1)
	arg_455_1.anim.name, arg_455_1.anim.frame, arg_455_1.anim.t, arg_455_1.anim.reverse = var_455_1, 1, 0
	arg_455_1.anim._desynced = true
	var_455_0.memoryCast.memory = __recovered_scope_0.var_0_254.charge(arg_455_0, arg_455_1)
end

function __recovered_scope_0.var_0_254.marker(arg_456_0, arg_456_1)
	local var_456_0 = arg_456_1 and arg_456_1.skill or {}
	local var_456_1 = __recovered_scope_0.var_0_254.runtime(arg_456_1).marker or {
		247,
		247,
		247
	}

	return require("src.game.projectiles").space_hunter_projectile.findAttackMarker(arg_456_0, {
		exactPixel = true,
		cacheKey = "_moonlitMemoryMarker",
		animation = var_456_0.activeAnim or "attack3",
		frame = var_456_0.releaseFrame or 4,
		r = var_456_1[1],
		g = var_456_1[2],
		b = var_456_1[3]
	})
end

function __recovered_scope_0.var_0_254.source(arg_457_0, arg_457_1)
	local var_457_0 = arg_457_0 and arg_457_0.getUnitAssetForAlly and arg_457_0:getUnitAssetForAlly(arg_457_1)
	local var_457_1
	local var_457_2

	if var_457_0 then
		var_457_1, var_457_2 = __recovered_scope_0.var_0_254.marker(var_457_0, arg_457_1)
	end

	if not var_457_1 then
		return nil
	end

	return require("src.game.projectiles").spellblade_vortex.spritePoint(arg_457_0, arg_457_1, var_457_0, var_457_1, var_457_2, false)
end

function __recovered_scope_0.var_0_254.charge(arg_458_0, arg_458_1)
	local var_458_0 = {
		state = "charge",
		t = 0,
		cap = 0,
		kind = "moonlit_memory",
		stored = 0,
		dur = math.huge,
		owner = arg_458_1,
		style = __recovered_scope_0.var_0_254.runtime(arg_458_1).style,
		hover = tonumber(__recovered_scope_0.var_0_254.runtime(arg_458_1).hover),
		x = arg_458_1.x,
		y = arg_458_1.y,
		motes = {},
		heals = {},
		pixel = math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_458_0) / 32 + 0.5))
	}

	var_458_0.sx, var_458_0.sy = __recovered_scope_0.var_0_254.source(arg_458_0, arg_458_1)

	if not var_458_0.sx then
		var_458_0.sx, var_458_0.sy = (arg_458_1.x or 0) - 9 * var_458_0.pixel / 2, (arg_458_1.y or 0) - 11 * var_458_0.pixel / 2
	end

	arg_458_0.vfx = arg_458_0.vfx or {}
	arg_458_0.vfx[#arg_458_0.vfx + 1] = var_458_0

	return var_458_0
end

function __recovered_scope_0.var_0_254.frameDuration(arg_459_0, arg_459_1, arg_459_2)
	local var_459_0 = arg_459_0.skill

	if not var_459_0 or not var_459_0.memoryCast or not arg_459_0.anim or arg_459_0.anim.name ~= (var_459_0.activeAnim or "attack3") then
		return arg_459_1, arg_459_2
	end

	return var_459_0.animationSpeed or 0.1, 1
end

function __recovered_scope_0.var_0_254.onAnimation(arg_460_0, arg_460_1, arg_460_2, arg_460_3, arg_460_4, arg_460_5)
	local var_460_0 = arg_460_1.skill
	local var_460_1 = var_460_0 and var_460_0.memoryCast

	if not var_460_1 then
		return
	end

	if not __recovered_scope_0.var_0_254.canAct(arg_460_1) or not arg_460_1.anim or arg_460_1.anim.name ~= (var_460_0.activeAnim or "attack3") then
		__recovered_scope_0.var_0_254.finishCast(arg_460_1)

		return
	end

	local var_460_2 = var_460_0.releaseFrame or 4

	if not var_460_1.released and var_460_2 <= (arg_460_1.anim.frame or 1) then
		arg_460_1.anim.frame, arg_460_1.anim.t = var_460_2, 0
		var_460_1.released = true
		var_460_1.memory = __recovered_scope_0.var_0_254.begin(arg_460_0, arg_460_1, arg_460_3, var_460_1.memory)

		return
	end

	local var_460_3 = arg_460_2 and arg_460_2.animations and arg_460_2.animations[var_460_0.activeAnim or "attack3"]

	if arg_460_1.anim.frame > (var_460_3 and var_460_3.frames or 7) then
		__recovered_scope_0.var_0_254.finishCast(arg_460_1)
	end
end

function __recovered_scope_0.var_0_254.begin(arg_461_0, arg_461_1, arg_461_2, arg_461_3)
	local var_461_0 = __recovered_scope_0.var_0_254.runtime(arg_461_1)
	local var_461_1 = (tonumber(var_461_0.capMul) or 3) * math.min(math.max(0, tonumber(arg_461_2) or 0), tonumber(var_461_0.atkCap) or math.huge)
	local var_461_2 = {}

	for iter_461_0, iter_461_1 in ipairs(arg_461_0.allies or {}) do
		if __recovered_scope_0.var_0_255(iter_461_1) and not iter_461_1.isDecoyDummy then
			var_461_2[#var_461_2 + 1] = iter_461_1
		end
	end

	if not arg_461_3 or not not arg_461_3.finished then
		arg_461_3 = __recovered_scope_0.var_0_254.charge(arg_461_0, arg_461_1)
	end

	arg_461_3.chargeT = arg_461_3.t
	arg_461_3.t, arg_461_3.state, arg_461_3.span, arg_461_3.ratio, arg_461_3.cap, arg_461_3.stored = 0, "memory", tonumber(var_461_0.duration) or 4, tonumber(var_461_0.ratio) or 0.3, var_461_1, 0
	arg_461_3.maxTargets, arg_461_3.allies, arg_461_3.motes, arg_461_3.heals, arg_461_3.x, arg_461_3.y = tonumber(var_461_0.maxTargets) or 2, var_461_2, {}, {}, arg_461_1.x, arg_461_1.y
	arg_461_3.split, arg_461_3.strikeRatio, arg_461_3.strikeRange, arg_461_3.strikeDelay = var_461_0.split == true, tonumber(var_461_0.strikeRatio), tonumber(var_461_0.strikeRange), tonumber(var_461_0.strikeDelay)

	local var_461_3, var_461_4 = __recovered_scope_0.var_0_254.source(arg_461_0, arg_461_1)

	if var_461_3 then
		arg_461_3.sx, arg_461_3.sy = var_461_3, var_461_4
	end

	arg_461_0._moonlitMemories = arg_461_0._moonlitMemories or {}

	table.insert(arg_461_0._moonlitMemories, arg_461_3)

	return arg_461_3
end

 function __recovered_scope_0.var_0_256(arg_462_0, arg_462_1)
	local var_462_0 = arg_462_0 and arg_462_0._moonlitMemories

	for iter_462_0 = #(var_462_0 or {}), 1, -1 do
		if var_462_0[iter_462_0] == arg_462_1 then
			table.remove(var_462_0, iter_462_0)
		end
	end
end

function __recovered_scope_0.var_0_254.direct(arg_463_0, arg_463_1, arg_463_2)
	if not arg_463_0 or arg_463_0.side ~= "ally" or not arg_463_1 or arg_463_1.side ~= "enemy" or arg_463_1 == arg_463_0 then
		return false
	end

	if arg_463_1._tricksterCharm or arg_463_1.isFirebreatherBurn or arg_463_1.isPoison or arg_463_1.isDamageOverTime then
		return false
	end

	arg_463_2 = arg_463_2 or {}

	return not arg_463_2.dot and not arg_463_2.burn and not arg_463_2.poison and not arg_463_2.bleed and not arg_463_2.damageOverTime and not arg_463_2.hpCost and not arg_463_2.hpLoss and not arg_463_2.selfDamage and not arg_463_2.indirect and not arg_463_2.reflected and arg_463_2.directDamage ~= false
end

function __recovered_scope_0.var_0_254.record(arg_464_0, arg_464_1, arg_464_2, arg_464_3, arg_464_4, arg_464_5)
	local var_464_0 = arg_464_0 and arg_464_0._moonlitMemories

	if not var_464_0 or not var_464_0[1] or (tonumber(arg_464_3) or 0) <= 0 or not __recovered_scope_0.var_0_254.direct(arg_464_1, arg_464_2, arg_464_5) then
		return
	end

	local var_464_1 = math.min(arg_464_3, math.max(0, tonumber(arg_464_4) or 0))

	if var_464_1 <= 0 then
		return
	end

	for iter_464_0, iter_464_1 in ipairs(var_464_0) do
		if iter_464_1.state == "memory" and not iter_464_1.finished and not require("src.game.unit_abilities").dimensional_duel.separated(arg_464_0, iter_464_1.owner, arg_464_1) then
			local var_464_2 = math.min(var_464_1 * iter_464_1.ratio, math.max(0, iter_464_1.cap - iter_464_1.stored))

			if var_464_2 > 0 then
				iter_464_1.stored = iter_464_1.stored + var_464_2
				iter_464_1.motes[#iter_464_1.motes + 1] = {
					t = iter_464_1.t or 0,
					ally = arg_464_1,
					x = arg_464_1.x,
					y = arg_464_1.y,
					amount = var_464_2
				}
			end
		end
	end
end

function __recovered_scope_0.var_0_254.plan(arg_465_0, arg_465_1, arg_465_2, arg_465_3, arg_465_4)
	local var_465_0 = {}

	for iter_465_0, iter_465_1 in ipairs(arg_465_0 and arg_465_0.allies or {}) do
		local var_465_1 = tonumber(iter_465_1.maxhp) or 0

		if __recovered_scope_0.var_0_255(iter_465_1) and var_465_1 > 0 and not iter_465_1.isDecoyDummy and not iter_465_1.isGuardianGolem and var_465_1 > (iter_465_1.hp or 0) and (not arg_465_4 or not require("src.game.unit_abilities").dimensional_duel.separated(arg_465_0, arg_465_4, iter_465_1)) then
			var_465_0[#var_465_0 + 1] = {
				ally = iter_465_1,
				share = (iter_465_1.hp or 0) / var_465_1,
				index = iter_465_0
			}
		end
	end

	table.sort(var_465_0, function(arg_466_0, arg_466_1)
		if arg_466_0.share ~= arg_466_1.share then
			return arg_466_0.share < arg_466_1.share
		end

		return arg_466_0.index < arg_466_1.index
	end)

	local var_465_2 = {}

	if (arg_465_1 or 0) <= 0 then
		return var_465_2
	end

	for iter_465_2 = 1, math.min(arg_465_2 or 2, #var_465_0) do
		local var_465_3 = var_465_0[iter_465_2].ally

		var_465_2[#var_465_2 + 1] = {
			ally = var_465_3,
			need = (var_465_3.maxhp or 0) - (var_465_3.hp or 0),
			amount = math.min(arg_465_1, (var_465_3.maxhp or 0) - (var_465_3.hp or 0))
		}
	end

	if arg_465_3 then
		local var_465_4 = arg_465_1
		local var_465_5 = {}

		for iter_465_3, iter_465_4 in ipairs(var_465_2) do
			iter_465_4.amount = 0
			var_465_5[#var_465_5 + 1] = iter_465_4
		end

		while var_465_4 > 1e-09 and var_465_5[1] do
			local var_465_6 = var_465_4 / #var_465_5
			local var_465_7 = {}

			for iter_465_5, iter_465_6 in ipairs(var_465_5) do
				local var_465_8 = math.min(var_465_6, iter_465_6.need - iter_465_6.amount)

				iter_465_6.amount, var_465_4 = iter_465_6.amount + var_465_8, var_465_4 - var_465_8

				if iter_465_6.need - iter_465_6.amount > 1e-09 then
					var_465_7[#var_465_7 + 1] = iter_465_6
				end
			end

			if #var_465_7 == #var_465_5 then
				break
			end

			var_465_5 = var_465_7
		end
	end

	return var_465_2
end

function __recovered_scope_0.var_0_254.strongest(arg_467_0, arg_467_1, arg_467_2, arg_467_3)
	local var_467_0
	local var_467_1

	for iter_467_0, iter_467_1 in ipairs(arg_467_0 and arg_467_0.enemies or {}) do
		if __recovered_scope_0.var_0_255(iter_467_1) and (not arg_467_2 or arg_467_2(iter_467_1, arg_467_1, arg_467_0)) then
			local var_467_2 = ((iter_467_1.x or 0) - (arg_467_1.x or 0))^2 + ((iter_467_1.y or 0) - (arg_467_1.y or 0))^2

			if (not arg_467_3 or var_467_2 <= arg_467_3 * arg_467_3) and (not var_467_0 or (iter_467_1.hp or 0) > (var_467_0.hp or 0) or (iter_467_1.hp or 0) == (var_467_0.hp or 0) and var_467_2 < var_467_1) then
				var_467_0, var_467_1 = iter_467_1, var_467_2
			end
		end
	end

	return var_467_0
end

function __recovered_scope_0.var_0_254.heal(arg_468_0, arg_468_1)
	arg_468_1.healed = true

	for iter_468_0, iter_468_1 in ipairs(arg_468_1.heals) do
		local var_468_0 = iter_468_1.ally
		local var_468_1 = arg_468_1.split and (iter_468_1.amount or 0) or arg_468_1.stored or 0

		if __recovered_scope_0.var_0_255(var_468_0) and var_468_1 > 0 then
			iter_468_1.healed = require("src.game.awakening").nativeHeal(arg_468_0, arg_468_1.owner, var_468_0, var_468_1, {})

			if iter_468_1.healed > 0 then
				require("src.ui.effects").healing_feedback.apply(var_468_0, iter_468_1.healed)
				require("src.ui.effects").healing_feedback.healerPlus(arg_468_0, var_468_0)
			end
		end
	end
end

function __recovered_scope_0.var_0_254.strikeNow(arg_469_0, arg_469_1, arg_469_2, arg_469_3)
	local var_469_0 = arg_469_1.strike

	var_469_0.done = true

	if not var_469_0.target or not __recovered_scope_0.var_0_255(var_469_0.target) or arg_469_2 and not arg_469_2(var_469_0.target, arg_469_1.owner, arg_469_0) then
		var_469_0.target = __recovered_scope_0.var_0_254.strongest(arg_469_0, arg_469_1.owner, arg_469_2, arg_469_1.strikeRange)
	end

	if not var_469_0.target or not arg_469_3 then
		return
	end

	var_469_0.x, var_469_0.y = var_469_0.target.x, var_469_0.target.y

	local var_469_1 = math.max(0, tonumber(var_469_0.target.hp) or 0)

	arg_469_3(var_469_0.target, var_469_0.amount, arg_469_1.owner, nil, {
		battleSkillDamage = true,
		moonlitMemory = true,
		basicAttack = false
	})

	var_469_0.dealt = var_469_1 - math.max(0, tonumber(var_469_0.target.hp) or 0)
end

function __recovered_scope_0.var_0_254.track(arg_470_0, arg_470_1, arg_470_2, arg_470_3)
	if arg_470_1.finished then
		return
	end

	local var_470_0 = arg_470_1.t or 0

	if __recovered_scope_0.var_0_255(arg_470_1.owner) then
		arg_470_1.x, arg_470_1.y = arg_470_1.owner.x, arg_470_1.owner.y
	end

	if arg_470_1.state == "charge" then
		if not __recovered_scope_0.var_0_255(arg_470_1.owner) then
			arg_470_1.finished = true
		end

		return
	end

	if arg_470_1.state == "memory" then
		if not __recovered_scope_0.var_0_255(arg_470_1.owner) then
			arg_470_1.state, arg_470_1.endT = "fade", var_470_0

			__recovered_scope_0.var_0_256(arg_470_0, arg_470_1)

			return
		end

		if var_470_0 < arg_470_1.span then
			return
		end

		__recovered_scope_0.var_0_256(arg_470_0, arg_470_1)

		arg_470_1.endT = arg_470_1.span
		arg_470_1.heals = __recovered_scope_0.var_0_254.plan(arg_470_0, arg_470_1.stored, arg_470_1.maxTargets, arg_470_1.split, arg_470_1.owner)

		if (arg_470_1.strikeRatio or 0) > 0 and (arg_470_1.stored or 0) > 0 then
			local var_470_1 = __recovered_scope_0.var_0_254.strongest(arg_470_0, arg_470_1.owner, arg_470_2, arg_470_1.strikeRange)

			if var_470_1 then
				arg_470_1.strike = {
					target = var_470_1,
					amount = arg_470_1.stored * arg_470_1.strikeRatio,
					x = var_470_1.x,
					y = var_470_1.y
				}
			end
		end

		arg_470_1.state = (arg_470_1.heals[1] or arg_470_1.strike) and "release" or "fade"
	elseif arg_470_1.state == "release" then
		if not arg_470_1.healed and var_470_0 >= arg_470_1.endT + __recovered_scope_0.var_0_254.RELEASE then
			__recovered_scope_0.var_0_254.heal(arg_470_0, arg_470_1)
		end

		local var_470_2 = arg_470_1.strike

		if var_470_2 and not var_470_2.done then
			if var_470_2.target and __recovered_scope_0.var_0_255(var_470_2.target) then
				var_470_2.x, var_470_2.y = var_470_2.target.x, var_470_2.target.y
			end

			if var_470_0 >= arg_470_1.endT + (arg_470_1.strikeDelay or __recovered_scope_0.var_0_254.RELEASE) then
				__recovered_scope_0.var_0_254.strikeNow(arg_470_0, arg_470_1, arg_470_2, arg_470_3)
			end
		end

		if var_470_0 >= arg_470_1.endT + math.max(__recovered_scope_0.var_0_254.RELEASE, var_470_2 and arg_470_1.strikeDelay or 0) + __recovered_scope_0.var_0_254.LINGER then
			arg_470_1.finished = true
		end
	elseif var_470_0 >= (arg_470_1.endT or 0) + __recovered_scope_0.var_0_254.FADE then
		arg_470_1.finished = true
	end
end

function __recovered_scope_0.var_0_254.endBattle(arg_471_0)
	for iter_471_0, iter_471_1 in ipairs(arg_471_0 and arg_471_0.allies or {}) do
		if iter_471_1.skill and iter_471_1.skill.kind == "MoonlitMemory" and iter_471_1.skill.memoryCast then
			__recovered_scope_0.var_0_254.finishCast(iter_471_1)
		end
	end

	for iter_471_2, iter_471_3 in ipairs(arg_471_0 and arg_471_0.vfx or {}) do
		if iter_471_3.kind == "moonlit_memory" then
			iter_471_3.finished = true
		end
	end

	if arg_471_0 then
		arg_471_0._moonlitMemories = nil
	end
end

 __recovered_scope_0.var_0_257 = __recovered_scope_0.var_0_254
 __recovered_scope_0.var_0_258 = nil
 __recovered_scope_0.var_0_259 = {
	ECHO_MIN = 0.5,
	ARM_WAIT = 3,
	ARM_DELAY = 0.25,
	RATIO = 0.5,
	WINDOW = 5,
	FLY = 0.3,
	ORB_Y = 15,
	FIRST = 2,
	FADE = 0.5,
	BREAK = 0.55,
	ECHO_MAX = 6,
	ECHO_IDLE = 0.7,
	CORE = {
		[14258687] = true,
		[13195722] = true,
		[15451135] = true
	},
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_260()
	return require("src.game.projectiles").spellblade_vortex
end

function __recovered_scope_0.var_0_259.runtime(arg_473_0)
	return arg_473_0 and arg_473_0.primarySkillDef and arg_473_0.primarySkillDef.runtime or {}
end

 function __recovered_scope_0.var_0_261(arg_474_0)
	return arg_474_0 and arg_474_0.alive and not arg_474_0.dying and (arg_474_0.hp or 0) > 0 and not arg_474_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_262(arg_475_0)
	return arg_475_0.isSummon or arg_475_0.isClone or arg_475_0.isShadowMinion or arg_475_0.isFireSpirit or arg_475_0.isFlameSpirit or arg_475_0.isHusk or arg_475_0.isUndyingSoul or arg_475_0._itemOwner or arg_475_0.isDecoyDummy or arg_475_0.isGuardianGolem
end

function __recovered_scope_0.var_0_259.orbOf(arg_476_0)
	local var_476_0 = arg_476_0 and arg_476_0._spellEchoOrb

	if var_476_0 and not var_476_0.finished then
		return var_476_0
	end

	return nil
end

function __recovered_scope_0.var_0_259.echoable(arg_477_0, arg_477_1)
	local var_477_0 = arg_477_0 and arg_477_0.primarySkillDef

	if not var_477_0 or var_477_0.activationType ~= "active" or not var_477_0.runtime or not arg_477_0.skill then
		return false
	end

	if (tonumber(var_477_0.runtime.cooldown or var_477_0.cooldown) or 0) <= 0 then
		return false
	end

	if require("src.data.skill").isTimedAttackSkill(var_477_0) then
		return true
	end

	return not arg_477_1 and (var_477_0.category or ""):find("heal", 1, true) ~= nil
end

function __recovered_scope_0.var_0_259.pick(arg_478_0, arg_478_1)
	local var_478_0
	local var_478_1
	local var_478_2 = __recovered_scope_0.var_0_259.runtime(arg_478_1).attackOnly

	for iter_478_0, iter_478_1 in ipairs(arg_478_0 and arg_478_0.allies or {}) do
		if iter_478_1 ~= arg_478_1 and __recovered_scope_0.var_0_261(iter_478_1) and not __recovered_scope_0.var_0_262(iter_478_1) and not __recovered_scope_0.var_0_259.orbOf(iter_478_1) and __recovered_scope_0.var_0_259.echoable(iter_478_1, var_478_2) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_478_0, arg_478_1, iter_478_1) then
			local var_478_3 = ((iter_478_1.x or 0) - (arg_478_1.x or 0))^2 + ((iter_478_1.y or 0) - (arg_478_1.y or 0))^2

			if not var_478_1 or var_478_3 < var_478_1 then
				var_478_0, var_478_1 = iter_478_1, var_478_3
			end
		end
	end

	return var_478_0
end

 function __recovered_scope_0.var_0_263(arg_479_0, arg_479_1, arg_479_2)
	for iter_479_0, iter_479_1 in ipairs(arg_479_0 and arg_479_0.enemies or {}) do
		if __recovered_scope_0.var_0_180.targetable(arg_479_0, arg_479_1, iter_479_1, arg_479_2) then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_264(arg_480_0, arg_480_1, arg_480_2)
	arg_480_0._casting, arg_480_0._suppressAttack = true, true
	arg_480_0._forceAnim, arg_480_0._forceAnimT = arg_480_1.activeAnim or "attack2", math.max(0.2, (arg_480_2 or 0) + 0.1)
end

 function __recovered_scope_0.var_0_265(arg_481_0)
	arg_481_0.orbs = arg_481_0.orbs or {
		arg_481_0.orb
	}

	return arg_481_0.orbs
end

function __recovered_scope_0.var_0_259.finishCast(arg_482_0)
	local var_482_0 = arg_482_0.skill
	local var_482_1 = var_482_0 and var_482_0.echoCast

	for iter_482_0, iter_482_1 in ipairs(var_482_1 and __recovered_scope_0.var_0_265(var_482_1) or {}) do
		if iter_482_1.state == "cast" then
			iter_482_1.finished = true

			if iter_482_1.ally and iter_482_1.ally._spellEchoOrb == iter_482_1 then
				iter_482_1.ally._spellEchoOrb = nil
			end
		end
	end

	if var_482_0 then
		var_482_0.state, var_482_0.active, var_482_0.echoCast, var_482_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_482_0)
	end

	arg_482_0._casting, arg_482_0._suppressAttack = false, false
	arg_482_0._forceAnim, arg_482_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_259.prime(arg_483_0)
	local var_483_0 = arg_483_0 and arg_483_0.skill

	if not var_483_0 then
		return
	end

	local var_483_1 = tonumber(__recovered_scope_0.var_0_259.runtime(arg_483_0).firstReady) or __recovered_scope_0.var_0_259.FIRST

	var_483_0.cdT = math.max(tonumber(var_483_0.cdT) or 0, (var_483_0.cd or 8) - var_483_1)
end

function __recovered_scope_0.var_0_259.updateCast(arg_484_0, arg_484_1, arg_484_2, arg_484_3)
	local var_484_0 = arg_484_1.skill

	if not __recovered_scope_0.var_0_259.canAct(arg_484_1) then
		if var_484_0.echoCast then
			__recovered_scope_0.var_0_259.finishCast(arg_484_1)
		end

		return
	end

	local var_484_1 = var_484_0.activeAnim or "attack2"

	if var_484_0.echoCast then
		if not arg_484_1.anim or arg_484_1.anim.name ~= var_484_1 then
			__recovered_scope_0.var_0_259.finishCast(arg_484_1)

			return
		end

		__recovered_scope_0.var_0_264(arg_484_1, var_484_0, arg_484_2)

		return
	end

	var_484_0.cdT = math.min(var_484_0.cd or 8, (var_484_0.cdT or 0) + arg_484_2)

	if var_484_0.cdT < (var_484_0.cd or 8) then
		return
	end

	var_484_0.ready = true

	if not arg_484_1.anim or not __recovered_scope_0.var_0_263(arg_484_0, arg_484_1, arg_484_3) then
		return
	end

	local var_484_2 = __recovered_scope_0.var_0_259.pick(arg_484_0, arg_484_1)

	if not var_484_2 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_484_1)

	var_484_0.state, var_484_0.active, var_484_0.ready, var_484_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_484_0)
	var_484_0.echoCast = {
		released = false,
		ally = var_484_2,
		orbs = {}
	}
	arg_484_1._pendingSpearHit, arg_484_1._pendingWarriorHit, arg_484_1.shotPending, arg_484_1.pendingTarget = nil, nil, false

	__recovered_scope_0.var_0_264(arg_484_1, var_484_0, arg_484_2)

	arg_484_1.anim.name, arg_484_1.anim.frame, arg_484_1.anim.t, arg_484_1.anim.reverse = var_484_1, 1, 0
	arg_484_1.anim._desynced = true

	if math.abs((var_484_2.x or 0) - (arg_484_1.x or 0)) > 1 then
		arg_484_1.facing = (var_484_2.x or 0) >= (arg_484_1.x or 0) and 1 or -1
	end

	__recovered_scope_0.var_0_259.chargeAll(arg_484_0, arg_484_1, var_484_0.echoCast)
end

function __recovered_scope_0.var_0_259.chargeAll(arg_485_0, arg_485_1, arg_485_2)
	local var_485_0 = math.max(1, math.floor(tonumber(__recovered_scope_0.var_0_259.runtime(arg_485_1).maxTargets) or 1))
	local var_485_1 = __recovered_scope_0.var_0_265(arg_485_2)
	local var_485_2 = arg_485_2.ally

	for iter_485_0 = #var_485_1 + 1, var_485_0 do
		var_485_2 = var_485_2 or __recovered_scope_0.var_0_259.pick(arg_485_0, arg_485_1)

		if not var_485_2 then
			break
		end

		var_485_1[iter_485_0] = __recovered_scope_0.var_0_259.charge(arg_485_0, arg_485_1, var_485_2, iter_485_0)
		var_485_2 = nil
	end

	for iter_485_1, iter_485_2 in ipairs(var_485_1) do
		iter_485_2.count = #var_485_1
	end

	arg_485_2.orb = var_485_1[1]

	return arg_485_2.orb
end

function __recovered_scope_0.var_0_259.frameDuration(arg_486_0, arg_486_1, arg_486_2)
	local var_486_0 = arg_486_0.skill

	if not var_486_0 or not var_486_0.echoCast or not arg_486_0.anim or arg_486_0.anim.name ~= (var_486_0.activeAnim or "attack2") then
		return arg_486_1, arg_486_2
	end

	return var_486_0.animationSpeed or 0.075, 1
end

 __recovered_scope_0.var_0_266 = {}

function __recovered_scope_0.var_0_259.coreOf(arg_487_0)
	local var_487_0 = __recovered_scope_0.var_0_259.runtime(arg_487_0).core

	if type(var_487_0) ~= "table" then
		return __recovered_scope_0.var_0_259.CORE
	end

	local var_487_1 = __recovered_scope_0.var_0_266[var_487_0]

	if not var_487_1 then
		var_487_1 = {}

		for iter_487_0, iter_487_1 in ipairs(var_487_0) do
			var_487_1[iter_487_1] = true
		end

		__recovered_scope_0.var_0_266[var_487_0] = var_487_1
	end

	return var_487_1
end

function __recovered_scope_0.var_0_259.orbPixel(arg_488_0, arg_488_1, arg_488_2, arg_488_3)
	arg_488_3 = arg_488_3 or __recovered_scope_0.var_0_259.CORE

	local var_488_0 = arg_488_0 and arg_488_0.quads and arg_488_0.quads[arg_488_1]
	local var_488_1 = var_488_0 and var_488_0[math.max(1, math.min(#var_488_0, arg_488_2 or 1))]

	if not var_488_1 or not arg_488_0.imageData then
		return nil
	end

	local var_488_2, var_488_3, var_488_4, var_488_5 = var_488_1:getViewport()
	local var_488_6 = var_488_2 .. ":" .. var_488_3 .. (arg_488_3 == __recovered_scope_0.var_0_259.CORE and "" or ":c")

	arg_488_0._spellEchoOrbs = arg_488_0._spellEchoOrbs or {}

	local var_488_7 = arg_488_0._spellEchoOrbs[var_488_6]

	if var_488_7 == nil then
		local var_488_8 = 0
		local var_488_9 = 0
		local var_488_10 = 0

		for iter_488_0 = 0, math.min(var_488_5, 16) - 1 do
			for iter_488_1 = 0, var_488_4 - 1 do
				local var_488_11, var_488_12, var_488_13, var_488_14 = arg_488_0.imageData:getPixel(var_488_2 + iter_488_1, var_488_3 + iter_488_0)

				if var_488_14 > 0 and arg_488_3[math.floor(var_488_11 * 255 + 0.5) * 65536 + math.floor(var_488_12 * 255 + 0.5) * 256 + math.floor(var_488_13 * 255 + 0.5)] then
					var_488_8, var_488_9, var_488_10 = var_488_8 + iter_488_1 + 0.5, var_488_9 + iter_488_0 + 0.5, var_488_10 + 1
				end
			end
		end

		var_488_7 = var_488_10 > 0 and {
			var_488_8 / var_488_10,
			var_488_9 / var_488_10
		} or false
		arg_488_0._spellEchoOrbs[var_488_6] = var_488_7
	end

	return var_488_7 and var_488_7[1], var_488_7 and var_488_7[2]
end

function __recovered_scope_0.var_0_259.source(arg_489_0, arg_489_1, arg_489_2)
	arg_489_2 = arg_489_2 or arg_489_0.getUnitAssetForAlly and arg_489_0:getUnitAssetForAlly(arg_489_1)

	if not arg_489_2 or not arg_489_1.anim then
		return nil
	end

	local var_489_0, var_489_1 = __recovered_scope_0.var_0_259.orbPixel(arg_489_2, arg_489_1.anim.name, arg_489_1.anim.frame, __recovered_scope_0.var_0_259.coreOf(arg_489_1))

	if not var_489_0 then
		return nil
	end

	return __recovered_scope_0.var_0_260().spritePoint(arg_489_0, arg_489_1, arg_489_2, var_489_0, var_489_1, false, true)
end

function __recovered_scope_0.var_0_259.atkOf(arg_490_0)
	return (tonumber(arg_490_0 and arg_490_0.dmg) or 5) * (tonumber(arg_490_0 and arg_490_0._forestDmgMul) or 1)
end

function __recovered_scope_0.var_0_259.charge(arg_491_0, arg_491_1, arg_491_2, arg_491_3)
	local var_491_0 = __recovered_scope_0.var_0_259.runtime(arg_491_1)
	local var_491_1 = {
		state = "cast",
		t = 0,
		count = 1,
		kind = "spell_echo",
		dur = math.huge,
		owner = arg_491_1,
		ally = arg_491_2,
		bf = arg_491_0,
		style = var_491_0.style,
		window = tonumber(var_491_0.duration) or __recovered_scope_0.var_0_259.WINDOW,
		ratio = tonumber(var_491_0.ratio) or __recovered_scope_0.var_0_259.RATIO,
		hits = {},
		ownAtk = var_491_0.ownAtk and true or nil,
		ownerAtk = __recovered_scope_0.var_0_259.atkOf(arg_491_1),
		attackOnly = var_491_0.attackOnly and true or nil,
		index = arg_491_3 or 1,
		orbY = tonumber(var_491_0.orbY),
		fly = tonumber(var_491_0.flyTime) or __recovered_scope_0.var_0_259.FLY,
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_260().drawSize(arg_491_0) / 32 + 0.5)),
		casterAsset = arg_491_0.getUnitAssetForAlly and arg_491_0:getUnitAssetForAlly(arg_491_1)
	}

	var_491_1.sx, var_491_1.sy = __recovered_scope_0.var_0_259.source(arg_491_0, arg_491_1, var_491_1.casterAsset)

	if not var_491_1.sx then
		var_491_1.sx, var_491_1.sy = arg_491_1.x or 0, (arg_491_1.y or 0) - 12 * var_491_1.pixel
	end

	arg_491_2._spellEchoOrb = var_491_1

	__recovered_scope_0.var_0_259.place(arg_491_0, var_491_1)

	arg_491_0.vfx = arg_491_0.vfx or {}
	arg_491_0.vfx[#arg_491_0.vfx + 1] = var_491_1

	return var_491_1
end

function __recovered_scope_0.var_0_259.place(arg_492_0, arg_492_1)
	local var_492_0 = arg_492_1.ally

	if not __recovered_scope_0.var_0_261(var_492_0) then
		return
	end

	local var_492_1 = arg_492_0.getUnitAssetForAlly and arg_492_0:getUnitAssetForAlly(var_492_0) or arg_492_1.asset

	if not var_492_1 then
		return
	end

	arg_492_1.asset = var_492_1

	local var_492_2 = var_492_1.bounds and var_492_1.bounds.idle and var_492_1.bounds.idle[1]
	local var_492_3 = require("src.ui.widgets").sprite_anchor.idleFootX(var_492_1) or var_492_2 and var_492_2.x + var_492_2.w * 0.5 or (var_492_1.frameW or 32) * 0.5
	local var_492_4 = (var_492_2 and var_492_2.y or 0) - (arg_492_1.orbY or __recovered_scope_0.var_0_259.ORB_Y)
	local var_492_5, var_492_6 = __recovered_scope_0.var_0_260().spritePoint(arg_492_0, var_492_0, var_492_1, var_492_3, var_492_4, false, true)
	local var_492_7 = __recovered_scope_0.var_0_260().spritePoint(arg_492_0, var_492_0, var_492_1, var_492_3 + 1, var_492_4, false, true)

	arg_492_1.x, arg_492_1.y, arg_492_1.texel = var_492_5, var_492_6, math.max(1, math.abs(var_492_7 - var_492_5))
end

function __recovered_scope_0.var_0_259.onAnimation(arg_493_0, arg_493_1, arg_493_2)
	local var_493_0 = arg_493_1.skill
	local var_493_1 = var_493_0 and var_493_0.echoCast

	if not var_493_1 then
		return
	end

	local var_493_2 = var_493_0.activeAnim or "attack2"

	if not __recovered_scope_0.var_0_259.canAct(arg_493_1) or not arg_493_1.anim or arg_493_1.anim.name ~= var_493_2 then
		__recovered_scope_0.var_0_259.finishCast(arg_493_1)

		return
	end

	local var_493_3 = __recovered_scope_0.var_0_265(var_493_1)
	local var_493_4, var_493_5 = __recovered_scope_0.var_0_259.source(arg_493_0, arg_493_1, arg_493_2)

	for iter_493_0, iter_493_1 in ipairs(var_493_3) do
		if var_493_4 and iter_493_1.state == "cast" then
			iter_493_1.sx, iter_493_1.sy = var_493_4, var_493_5
		end
	end

	if not var_493_1.released and (arg_493_1.anim.frame or 1) >= (var_493_0.releaseFrame or 5) then
		var_493_1.released = true

		for iter_493_2, iter_493_3 in ipairs(var_493_3) do
			if iter_493_3.state == "cast" then
				if not __recovered_scope_0.var_0_261(iter_493_3.ally) then
					iter_493_3.finished = true

					if iter_493_3.ally and iter_493_3.ally._spellEchoOrb == iter_493_3 then
						iter_493_3.ally._spellEchoOrb = nil
					end

					local var_493_6 = __recovered_scope_0.var_0_259.pick(arg_493_0, arg_493_1)

					if var_493_6 then
						local var_493_7 = __recovered_scope_0.var_0_259.charge(arg_493_0, arg_493_1, var_493_6, iter_493_2)

						var_493_7.count, var_493_7.sx, var_493_7.sy = iter_493_3.count, iter_493_3.sx, iter_493_3.sy
						var_493_3[iter_493_2], iter_493_3 = var_493_7, var_493_7
					end
				end

				if not iter_493_3.finished then
					__recovered_scope_0.var_0_259.release(arg_493_0, iter_493_3)
				end
			end
		end

		var_493_1.orb = var_493_3[1]
		var_493_1.ally = var_493_1.orb and var_493_1.orb.ally
	end

	local var_493_8 = arg_493_2 and arg_493_2.animations and arg_493_2.animations[var_493_2]

	if arg_493_1.anim.frame > (var_493_8 and var_493_8.frames or 8) then
		__recovered_scope_0.var_0_259.finishCast(arg_493_1)
	end
end

function __recovered_scope_0.var_0_259.release(arg_494_0, arg_494_1)
	arg_494_1.state, arg_494_1.flyAt = arg_494_1.state == "cast" and "fly" or arg_494_1.state, arg_494_1.t or 0
	arg_494_1.fromX, arg_494_1.fromY = arg_494_1.sx, arg_494_1.sy
end

 function __recovered_scope_0.var_0_267(arg_495_0, arg_495_1)
	return __recovered_scope_0.var_0_261(arg_495_0) and arg_495_1 and (arg_495_1.state == "active" or arg_495_1.state == "casting" or arg_495_1.state == "precast")
end

function __recovered_scope_0.var_0_259.allyCast(arg_496_0)
	local var_496_0 = __recovered_scope_0.var_0_259.orbOf(arg_496_0)

	if not var_496_0 or var_496_0.ally ~= arg_496_0 then
		return
	end

	local var_496_1 = arg_496_0.skill

	if not var_496_1 or __recovered_scope_0.var_0_267(arg_496_0, var_496_1) or not __recovered_scope_0.var_0_259.echoable(arg_496_0, var_496_0.attackOnly) then
		return
	end

	local var_496_2 = var_496_0.t or 0

	if var_496_0.state == "watch" then
		var_496_0.state, var_496_0.captureAt, var_496_0.lastAt, var_496_0.skill = "capture", var_496_2, var_496_2, var_496_1
	elseif var_496_0.state == "arm" then
		var_496_0.state, var_496_0.echoAt, var_496_0.lastAt = "echo", var_496_2, var_496_2
		arg_496_0._spellEchoActive = var_496_0
	end
end

 function __recovered_scope_0.var_0_268(arg_497_0)
	local var_497_0 = arg_497_0 and arg_497_0._spellEchoActive

	if var_497_0 and not var_497_0.finished and var_497_0.state == "echo" and var_497_0.ally == arg_497_0 then
		return var_497_0
	end

	return nil
end

function __recovered_scope_0.var_0_259.factor(arg_498_0)
	local var_498_0 = arg_498_0.ratio or __recovered_scope_0.var_0_259.RATIO

	if arg_498_0.ownAtk then
		local var_498_1 = __recovered_scope_0.var_0_261(arg_498_0.owner) and __recovered_scope_0.var_0_259.atkOf(arg_498_0.owner) or arg_498_0.ownerAtk
		local var_498_2 = __recovered_scope_0.var_0_259.atkOf(arg_498_0.ally)

		if var_498_1 and var_498_2 > 0 then
			var_498_0 = var_498_0 * var_498_1 / var_498_2
		end
	end

	return var_498_0
end

function __recovered_scope_0.var_0_259.scale(arg_499_0, arg_499_1, arg_499_2, arg_499_3, arg_499_4, arg_499_5)
	local var_499_0 = __recovered_scope_0.var_0_268(arg_499_3)

	if not var_499_0 or not arg_499_5 or not arg_499_1 or arg_499_1.side ~= "enemy" or (tonumber(arg_499_2) or 0) <= 0 then
		return arg_499_2
	end

	arg_499_4 = arg_499_4 or {}

	if arg_499_4.basicAttack or arg_499_4.itemDamage or arg_499_4.fromItem or arg_499_4.imprintDamage or arg_499_4.reflected or arg_499_4.reflection then
		return arg_499_2
	end

	var_499_0.lastAt = var_499_0.t or 0
	var_499_0.hits[#var_499_0.hits + 1] = {
		at = var_499_0.t or 0,
		target = arg_499_1,
		x = arg_499_1.x,
		y = arg_499_1.y
	}

	return arg_499_2 * __recovered_scope_0.var_0_259.factor(var_499_0)
end

function __recovered_scope_0.var_0_259.scaleHeal(arg_500_0, arg_500_1, arg_500_2, arg_500_3, arg_500_4)
	local var_500_0 = __recovered_scope_0.var_0_268(arg_500_1)

	if not var_500_0 or (tonumber(arg_500_3) or 0) <= 0 or not arg_500_2 then
		return arg_500_3
	end

	var_500_0.lastAt = var_500_0.t or 0
	var_500_0.hits[#var_500_0.hits + 1] = {
		heal = true,
		at = var_500_0.t or 0,
		target = arg_500_2,
		x = arg_500_2.x,
		y = arg_500_2.y
	}

	return arg_500_3 * __recovered_scope_0.var_0_259.factor(var_500_0)
end

function __recovered_scope_0.var_0_259.fade(arg_501_0, arg_501_1)
	arg_501_0.state, arg_501_0.endAt = "fade", arg_501_1 or arg_501_0.t or 0
end

 function __recovered_scope_0.var_0_269(arg_502_0, arg_502_1)
	return arg_502_0.owner == arg_502_1 or arg_502_0.caster == arg_502_1 or arg_502_0.source == arg_502_1
end

 function __recovered_scope_0.var_0_270(arg_503_0, arg_503_1, arg_503_2, arg_503_3)
	for iter_503_0, iter_503_1 in ipairs({
		arg_503_0.vfx or {},
		arg_503_0.projectiles or {}
	}) do
		for iter_503_2, iter_503_3 in ipairs(iter_503_1) do
			if iter_503_3 ~= arg_503_1 and __recovered_scope_0.var_0_269(iter_503_3, arg_503_1.ally) and iter_503_3._spellEchoSeen == nil and (arg_503_2 ~= "_spellEcho" or not iter_503_3.basicAttack) then
				iter_503_3._spellEchoSeen = true
				iter_503_3[arg_503_2] = arg_503_3
			end
		end
	end
end

function __recovered_scope_0.var_0_259.arm(arg_504_0, arg_504_1, arg_504_2)
	local var_504_0 = arg_504_1.skill

	arg_504_1.state, arg_504_1.armAt = "arm", arg_504_2 or arg_504_1.t or 0

	__recovered_scope_0.var_0_270(arg_504_0, arg_504_1, "_spellEchoBefore", true)

	if var_504_0 then
		arg_504_1.cdBefore = var_504_0.cdT
		var_504_0.cdT = math.max(tonumber(var_504_0.cdT) or 0, tonumber(var_504_0.cd) or 0)
		var_504_0.ready = true
	end
end

function __recovered_scope_0.var_0_259.endEcho(arg_505_0, arg_505_1)
	local var_505_0 = arg_505_0.ally

	if var_505_0 and var_505_0._spellEchoActive == arg_505_0 then
		var_505_0._spellEchoActive = nil
	end

	local var_505_1 = arg_505_0.skill

	if var_505_1 and var_505_1.cd and arg_505_0.echoAt and arg_505_0.captureAt then
		var_505_1.cdT = math.min(var_505_1.cd, (tonumber(var_505_1.cdT) or 0) + (arg_505_0.echoAt - arg_505_0.captureAt))
	end

	arg_505_0.state, arg_505_0.endAt = "break", arg_505_1
end

function __recovered_scope_0.var_0_259.track(arg_506_0, arg_506_1, arg_506_2, arg_506_3)
	if arg_506_1.finished then
		return
	end

	arg_506_1.bf = arg_506_0

	local var_506_0 = arg_506_1.t or 0
	local var_506_1 = arg_506_1.ally

	__recovered_scope_0.var_0_259.place(arg_506_0, arg_506_1)

	if arg_506_1.state == "cast" then
		if not __recovered_scope_0.var_0_261(arg_506_1.owner) or not __recovered_scope_0.var_0_261(var_506_1) then
			arg_506_1.finished = true

			if var_506_1 and var_506_1._spellEchoOrb == arg_506_1 then
				var_506_1._spellEchoOrb = nil
			end
		end

		return
	end

	if arg_506_1.state == "fly" then
		if not __recovered_scope_0.var_0_261(var_506_1) then
			__recovered_scope_0.var_0_259.fade(arg_506_1, var_506_0)

			return
		end

		if var_506_0 - arg_506_1.flyAt >= (arg_506_1.fly or __recovered_scope_0.var_0_259.FLY) then
			arg_506_1.state, arg_506_1.watchAt = "watch", var_506_0
		end

		return
	end

	if arg_506_1.state == "watch" then
		if not __recovered_scope_0.var_0_261(var_506_1) or var_506_0 - arg_506_1.watchAt >= arg_506_1.window then
			__recovered_scope_0.var_0_259.fade(arg_506_1, var_506_0)
		end

		return
	end

	if arg_506_1.state == "capture" then
		if not __recovered_scope_0.var_0_261(var_506_1) then
			__recovered_scope_0.var_0_259.fade(arg_506_1, var_506_0)

			return
		end

		if __recovered_scope_0.var_0_267(var_506_1, arg_506_1.skill) then
			arg_506_1.lastAt = var_506_0
		elseif var_506_0 - arg_506_1.lastAt >= __recovered_scope_0.var_0_259.ARM_DELAY then
			__recovered_scope_0.var_0_259.arm(arg_506_0, arg_506_1, var_506_0)
		end

		return
	end

	if arg_506_1.state == "arm" then
		__recovered_scope_0.var_0_270(arg_506_0, arg_506_1, "_spellEchoBefore", true)

		if __recovered_scope_0.var_0_261(var_506_1) and __recovered_scope_0.var_0_267(var_506_1, arg_506_1.skill) then
			arg_506_1.state, arg_506_1.echoAt, arg_506_1.lastAt = "echo", var_506_0, var_506_0
			var_506_1._spellEchoActive = arg_506_1

			return
		end

		if not __recovered_scope_0.var_0_261(var_506_1) or var_506_0 - arg_506_1.armAt >= __recovered_scope_0.var_0_259.ARM_WAIT then
			local var_506_2 = arg_506_1.skill

			if var_506_2 and arg_506_1.cdBefore and not __recovered_scope_0.var_0_267(var_506_1, var_506_2) then
				var_506_2.cdT, var_506_2.ready = arg_506_1.cdBefore, (arg_506_1.cdBefore or 0) >= (var_506_2.cd or 0)
			end

			__recovered_scope_0.var_0_259.fade(arg_506_1, var_506_0)
		end

		return
	end

	if arg_506_1.state == "echo" then
		__recovered_scope_0.var_0_270(arg_506_0, arg_506_1, "_spellEcho", arg_506_1)

		if __recovered_scope_0.var_0_267(var_506_1, arg_506_1.skill) then
			arg_506_1.lastAt = var_506_0
		end

		local var_506_3 = var_506_0 - arg_506_1.echoAt

		if var_506_3 >= __recovered_scope_0.var_0_259.ECHO_MAX or not __recovered_scope_0.var_0_261(var_506_1) or var_506_3 >= __recovered_scope_0.var_0_259.ECHO_MIN and var_506_0 - (arg_506_1.lastAt or var_506_0) >= __recovered_scope_0.var_0_259.ECHO_IDLE then
			__recovered_scope_0.var_0_259.endEcho(arg_506_1, var_506_0)
		end

		return
	end

	if var_506_0 - (arg_506_1.endAt or var_506_0) >= (arg_506_1.state == "break" and __recovered_scope_0.var_0_259.BREAK or __recovered_scope_0.var_0_259.FADE) then
		arg_506_1.finished = true

		if var_506_1 and var_506_1._spellEchoOrb == arg_506_1 then
			var_506_1._spellEchoOrb = nil
		end
	end
end

function __recovered_scope_0.var_0_259.endBattle(arg_507_0)
	for iter_507_0, iter_507_1 in ipairs(arg_507_0 and arg_507_0.allies or {}) do
		if iter_507_1.skill and iter_507_1.skill.kind == "SpellEcho" and iter_507_1.skill.echoCast then
			__recovered_scope_0.var_0_259.finishCast(iter_507_1)
		end

		iter_507_1._spellEchoOrb, iter_507_1._spellEchoActive = nil
	end

	for iter_507_2, iter_507_3 in ipairs(arg_507_0 and arg_507_0.vfx or {}) do
		if iter_507_3.kind == "spell_echo" then
			iter_507_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_271 = __recovered_scope_0.var_0_259
 __recovered_scope_0.var_0_272 = nil
 __recovered_scope_0.var_0_273 = {}
 __recovered_scope_0.var_0_274 = __recovered_scope_0.var_0_180

 function __recovered_scope_0.var_0_275()
	return require("src.game.projectiles").spellblade_vortex
end

__recovered_scope_0.var_0_273.canAct = __recovered_scope_0.var_0_212.canAct
__recovered_scope_0.var_0_273.targetable = __recovered_scope_0.var_0_274.targetable

function __recovered_scope_0.var_0_273.script(arg_509_0)
	local var_509_0 = {
		{
			d = 0.1,
			f = 1
		},
		{
			d = 0.1,
			f = 2
		},
		{
			d = 0.16,
			f = 3
		}
	}

	for iter_509_0 = 1, arg_509_0 do
		var_509_0[#var_509_0 + 1] = {
			f = 4,
			d = iter_509_0 == arg_509_0 and 0.22 or 0.14,
			stab = iter_509_0
		}

		if iter_509_0 < arg_509_0 then
			var_509_0[#var_509_0 + 1] = {
				f = 3,
				d = iter_509_0 == arg_509_0 - 1 and 0.12 or 0.08
			}
		end
	end

	for iter_509_1 = 5, 9 do
		var_509_0[#var_509_0 + 1] = {
			d = 0.1,
			f = iter_509_1
		}
	end

	return var_509_0
end

__recovered_scope_0.var_0_273.SCRIPT = __recovered_scope_0.var_0_273.script(3)

function __recovered_scope_0.var_0_273.after(arg_510_0)
	for iter_510_0 = #arg_510_0, 1, -1 do
		if arg_510_0[iter_510_0].stab then
			return iter_510_0 + 1
		end
	end

	return 1
end

__recovered_scope_0.var_0_273.AFTER = __recovered_scope_0.var_0_273.after(__recovered_scope_0.var_0_273.SCRIPT)

 __recovered_scope_0.var_0_276 = {}

function __recovered_scope_0.var_0_273.scriptOf(arg_511_0)
	local var_511_0 = math.max(1, math.floor(tonumber(__recovered_scope_0.var_0_273.runtime(arg_511_0).jabs) or 3))

	__recovered_scope_0.var_0_276[var_511_0] = __recovered_scope_0.var_0_276[var_511_0] or __recovered_scope_0.var_0_273.script(var_511_0)

	return __recovered_scope_0.var_0_276[var_511_0]
end

function __recovered_scope_0.var_0_273.anim(arg_512_0)
	return arg_512_0 and arg_512_0.skill and arg_512_0.skill.activeAnim or __recovered_scope_0.var_0_273.runtime(arg_512_0).activeAnim or "attack3"
end

__recovered_scope_0.var_0_273.LINGER, __recovered_scope_0.var_0_273.REACH = 0.6, 40
__recovered_scope_0.var_0_273.STEPS = {
	0.4,
	0.4,
	1.2
}

function __recovered_scope_0.var_0_273.random()
	return (love and love.math and love.math.random or math.random)()
end

function __recovered_scope_0.var_0_273.runtime(arg_514_0)
	return arg_514_0 and arg_514_0.primarySkillDef and arg_514_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_273.matches(arg_515_0)
	return arg_515_0 ~= nil and arg_515_0.skill ~= nil and arg_515_0.skill.kind == "NightmareFlurry"
end

 function __recovered_scope_0.var_0_277(arg_516_0)
	return arg_516_0 and arg_516_0.alive and not arg_516_0.dying and (arg_516_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_273.stabTime(arg_517_0, arg_517_1)
	local var_517_0 = 0

	for iter_517_0, iter_517_1 in ipairs(arg_517_1 or __recovered_scope_0.var_0_273.SCRIPT) do
		if iter_517_1.stab == arg_517_0 then
			return var_517_0
		end

		var_517_0 = var_517_0 + iter_517_1.d
	end
end

function __recovered_scope_0.var_0_273.duration(arg_518_0)
	local var_518_0 = 0

	for iter_518_0, iter_518_1 in ipairs(arg_518_0 or __recovered_scope_0.var_0_273.SCRIPT) do
		var_518_0 = var_518_0 + iter_518_1.d
	end

	return var_518_0
end

function __recovered_scope_0.var_0_273.barFill(arg_519_0)
	local var_519_0 = arg_519_0.skill
	local var_519_1 = tonumber(__recovered_scope_0.var_0_273.runtime(arg_519_0).internalCooldown) or 2

	return 1 - math.max(0, math.min(1, (var_519_0.flurryCooldown or 0) / math.max(0.001, var_519_1)))
end

function __recovered_scope_0.var_0_273.roll(arg_520_0, arg_520_1, arg_520_2)
	local var_520_0 = arg_520_1 and arg_520_1.skill

	if not __recovered_scope_0.var_0_273.matches(arg_520_1) or not arg_520_2 or arg_520_2.basicAttack ~= true or not __recovered_scope_0.var_0_277(arg_520_1) then
		return false
	end

	local var_520_1 = __recovered_scope_0.var_0_273.runtime(arg_520_1)

	if var_520_0.state == "active" or (arg_520_1.rank or 1) < (tonumber(var_520_1.minRank) or 2) then
		return false
	end

	if arg_520_2.crossfireAttack or arg_520_2.overdriveChop or arg_520_1._isBraceAttack or not __recovered_scope_0.var_0_273.canAct(arg_520_1) then
		return false
	end

	if _G.__slotIsAllySkillBlockedByLizardWarlord and _G.__slotIsAllySkillBlockedByLizardWarlord(arg_520_0, arg_520_1) then
		return false
	end

	if not var_520_0.flurryForced then
		if (var_520_0.flurryCooldown or 0) > 0 then
			return false
		end

		if __recovered_scope_0.var_0_273.random() >= (tonumber(var_520_1.chance) or 0.2) then
			return false
		end
	end

	var_520_0.flurryForced = nil

	__recovered_scope_0.var_0_273.begin(arg_520_0, arg_520_1, arg_520_2.target)

	return true
end

function __recovered_scope_0.var_0_273.begin(arg_521_0, arg_521_1, arg_521_2)
	local var_521_0 = arg_521_1.skill
	local var_521_1 = __recovered_scope_0.var_0_273.runtime(arg_521_1)

	var_521_0.flurryCooldown = tonumber(var_521_1.internalCooldown) or 2
	var_521_0.state, var_521_0.active, var_521_0.targetRef = "active", true, arg_521_2
	arg_521_1._pendingCavalryHit = nil
	arg_521_1._casting, arg_521_1._suppressAttack = true, true

	local var_521_2 = __recovered_scope_0.var_0_273.anim(arg_521_1)
	local var_521_3 = __recovered_scope_0.var_0_273.scriptOf(arg_521_1)

	arg_521_1._forceAnim, arg_521_1._forceAnimT = var_521_2, 0.2
	arg_521_1.anim = arg_521_1.anim or {}
	arg_521_1.anim.name, arg_521_1.anim.frame, arg_521_1.anim.t, arg_521_1.anim.reverse = var_521_2, 1, 0
	arg_521_1.anim._desynced = true

	local var_521_4 = {
		t = 0,
		kind = "nightmare_flurry",
		owner = arg_521_1,
		target = arg_521_2,
		dur = math.huge,
		stabs = {},
		pixel = math.max(1, math.floor(__recovered_scope_0.var_0_275().drawSize(arg_521_0) / 32 + 0.5)),
		style = var_521_1.style,
		firstAt = __recovered_scope_0.var_0_273.stabTime(1, var_521_3),
		jabs = #(var_521_1.steps or __recovered_scope_0.var_0_273.STEPS),
		asset = arg_521_0.getUnitAssetForAlly and arg_521_0:getUnitAssetForAlly(arg_521_1)
	}

	arg_521_1._nightmareFlurryFx = var_521_4
	var_521_0.flurryCast = {
		shown = 1,
		hits = 0,
		step = 1,
		target = arg_521_2,
		fx = var_521_4,
		anim = var_521_2,
		script = var_521_3
	}
	arg_521_0.vfx = arg_521_0.vfx or {}
	arg_521_0.vfx[#arg_521_0.vfx + 1] = var_521_4

	__recovered_scope_0.var_0_273.track(arg_521_0, var_521_4)

	return var_521_0.flurryCast
end

function __recovered_scope_0.var_0_273.finish(arg_522_0)
	local var_522_0 = arg_522_0.skill
	local var_522_1 = var_522_0 and var_522_0.flurryCast

	if var_522_1 and var_522_1.fx and not var_522_1.fx.endT then
		var_522_1.fx.endT = var_522_1.fx.t or 0
	end

	if var_522_0 then
		var_522_0.state, var_522_0.active, var_522_0.flurryCast, var_522_0.targetRef = nil, false
	end

	arg_522_0._casting, arg_522_0._suppressAttack = false, false
	arg_522_0._forceAnim, arg_522_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_273.updateCast(arg_523_0, arg_523_1, arg_523_2, arg_523_3, arg_523_4, arg_523_5)
	local var_523_0 = arg_523_1.skill

	if arg_523_5 then
		var_523_0.flurryForced = true
	end

	if (var_523_0.flurryCooldown or 0) > 0 then
		var_523_0.flurryCooldown = math.max(0, var_523_0.flurryCooldown - math.max(0, arg_523_2 or 0))
	end

	if var_523_0.state ~= "active" then
		return
	end

	local var_523_1 = var_523_0.flurryCast

	if not __recovered_scope_0.var_0_273.canAct(arg_523_1) or not var_523_1 or not arg_523_1.anim or arg_523_1.anim.name ~= var_523_1.anim then
		__recovered_scope_0.var_0_273.finish(arg_523_1)

		return
	end

	arg_523_1._casting, arg_523_1._suppressAttack = true, true
	arg_523_1._forceAnim, arg_523_1._forceAnimT = var_523_1.anim, math.max(0.2, (arg_523_2 or 0) + 0.1)
end

function __recovered_scope_0.var_0_273.frameDuration(arg_524_0, arg_524_1, arg_524_2)
	local var_524_0 = arg_524_0.skill
	local var_524_1 = var_524_0 and var_524_0.flurryCast

	if not var_524_1 or not arg_524_0.anim or arg_524_0.anim.name ~= var_524_1.anim then
		return arg_524_1, arg_524_2
	end

	local var_524_2 = var_524_1.script[var_524_1.step]

	return var_524_2 and var_524_2.d or arg_524_1, 1
end

function __recovered_scope_0.var_0_273.reachable(arg_525_0, arg_525_1, arg_525_2, arg_525_3)
	local var_525_0 = (arg_525_1.facing or 1) < 0 and -1 or 1
	local var_525_1 = (arg_525_1.distance or 55) + 1
	local var_525_2
	local var_525_3

	for iter_525_0, iter_525_1 in ipairs(arg_525_0.enemies or {}) do
		if __recovered_scope_0.var_0_273.targetable(arg_525_0, arg_525_1, iter_525_1, arg_525_2) and ((iter_525_1.x or 0) - (arg_525_1.x or 0)) * var_525_0 >= 0 then
			local var_525_4 = arg_525_3 and arg_525_3(arg_525_1, iter_525_1) or ((iter_525_1.x or 0) - (arg_525_1.x or 0))^2 + ((iter_525_1.y or 0) - (arg_525_1.y or 0))^2

			if var_525_4 <= var_525_1 * var_525_1 and (not var_525_3 or var_525_4 < var_525_3) then
				var_525_2, var_525_3 = iter_525_1, var_525_4
			end
		end
	end

	return var_525_2
end

function __recovered_scope_0.var_0_273.stab(arg_526_0, arg_526_1, arg_526_2, arg_526_3, arg_526_4, arg_526_5, arg_526_6, arg_526_7)
	local var_526_0 = arg_526_2.target

	if arg_526_3 == 1 and not __recovered_scope_0.var_0_273.targetable(arg_526_0, arg_526_1, var_526_0, arg_526_5) then
		var_526_0 = __recovered_scope_0.var_0_273.reachable(arg_526_0, arg_526_1, arg_526_5, arg_526_6)
		arg_526_2.target = var_526_0

		if arg_526_2.fx then
			arg_526_2.fx.target = var_526_0
		end
	end

	local var_526_1 = arg_526_2.fx

	if var_526_1 then
		__recovered_scope_0.var_0_273.track(arg_526_0, var_526_1)
	end

	local var_526_2 = __recovered_scope_0.var_0_273.runtime(arg_526_1).steps or __recovered_scope_0.var_0_273.STEPS

	if not __recovered_scope_0.var_0_273.targetable(arg_526_0, arg_526_1, var_526_0, arg_526_5) then
		arg_526_2.over = true

		if var_526_1 then
			var_526_1.stabs[#var_526_1.stabs + 1] = {
				miss = true,
				k = arg_526_3,
				at = var_526_1.t,
				big = arg_526_3 == #var_526_2
			}
		end

		return
	end

	arg_526_7(var_526_0, (arg_526_4 or 0) * (var_526_2[arg_526_3] or 0), arg_526_1, nil, {
		battleSkillDamage = true,
		basicAttack = false,
		nightmareFlurry = arg_526_3
	})

	arg_526_2.hits = arg_526_2.hits + 1

	if var_526_1 then
		var_526_1.stabs[#var_526_1.stabs + 1] = {
			k = arg_526_3,
			at = var_526_1.t,
			big = arg_526_3 == #var_526_2
		}
	end

	if not __recovered_scope_0.var_0_277(var_526_0) then
		arg_526_2.over = true
	end
end

function __recovered_scope_0.var_0_273.onAnimation(arg_527_0, arg_527_1, arg_527_2, arg_527_3, arg_527_4, arg_527_5, arg_527_6)
	local var_527_0 = arg_527_1.skill
	local var_527_1 = var_527_0 and var_527_0.flurryCast

	if not var_527_1 then
		return
	end

	if not __recovered_scope_0.var_0_273.canAct(arg_527_1) or not arg_527_1.anim or arg_527_1.anim.name ~= var_527_1.anim then
		__recovered_scope_0.var_0_273.finish(arg_527_1)

		return
	end

	local var_527_2 = (arg_527_1.anim.frame or 1) - (var_527_1.shown or 1)
	local var_527_3 = __recovered_scope_0.var_0_273.after(var_527_1.script)

	for iter_527_0 = 1, var_527_2 do
		if var_527_1.hits > 0 and not __recovered_scope_0.var_0_273.targetable(arg_527_0, arg_527_1, var_527_1.target, arg_527_4) then
			var_527_1.over = true
		end

		var_527_1.step = var_527_1.step + 1

		if var_527_1.over and var_527_3 > var_527_1.step then
			var_527_1.step = var_527_3
		end

		local var_527_4 = var_527_1.script[var_527_1.step]

		if not var_527_4 then
			__recovered_scope_0.var_0_273.finish(arg_527_1)

			return
		end

		if var_527_4.stab then
			__recovered_scope_0.var_0_273.stab(arg_527_0, arg_527_1, var_527_1, var_527_4.stab, arg_527_3, arg_527_4, arg_527_5, arg_527_6)
		end
	end

	if var_527_2 > 0 then
		arg_527_1.anim.frame = var_527_1.script[var_527_1.step].f
		var_527_1.shown = arg_527_1.anim.frame
	end
end

function __recovered_scope_0.var_0_273.track(arg_528_0, arg_528_1)
	local var_528_0 = arg_528_1.owner
	local var_528_1 = arg_528_1.target
	local var_528_2 = __recovered_scope_0.var_0_273.runtime(var_528_0)
	local var_528_3 = arg_528_0.getUnitAssetForAlly and arg_528_0:getUnitAssetForAlly(var_528_0)

	if var_528_3 and var_528_0 then
		local var_528_4 = var_528_2.tip or {
			x = 30.5,
			y = 19.5
		}
		local var_528_5 = var_528_2.charge or {
			x = 21.5,
			y = 20.5
		}

		arg_528_1.ox, arg_528_1.oy = __recovered_scope_0.var_0_275().spritePoint(arg_528_0, var_528_0, var_528_3, var_528_4.x, var_528_4.y, false)
		arg_528_1.cx, arg_528_1.cy = __recovered_scope_0.var_0_275().spritePoint(arg_528_0, var_528_0, var_528_3, var_528_5.x, var_528_5.y, false)
		arg_528_1.face = (var_528_0.facing or 1) < 0 and -1 or 1
	end

	arg_528_1.face = arg_528_1.face or 1

	if var_528_1 and __recovered_scope_0.var_0_277(var_528_1) and #arg_528_1.stabs == 0 then
		local var_528_6
		local var_528_7

		arg_528_1.hx, var_528_7 = __recovered_scope_0.var_0_275().targetPoint(arg_528_0, var_528_1, "idle", 1)

		local var_528_8 = __recovered_scope_0.var_0_275().targetCover(arg_528_0, var_528_1, nil, "idle", 1)
		local var_528_9 = math.max(0, (var_528_8 and var_528_8.half or 0) - 3 * (arg_528_1.pixel or 2))

		arg_528_1.hy = math.max(var_528_7 - var_528_9, math.min(var_528_7 + var_528_9, arg_528_1.oy or var_528_7))
	end

	if arg_528_1.ox and not arg_528_1.hx and #arg_528_1.stabs == 0 then
		arg_528_1.hx, arg_528_1.hy = arg_528_1.ox + arg_528_1.face * __recovered_scope_0.var_0_273.REACH, arg_528_1.oy
	end

	arg_528_1.hy = arg_528_1.hy or arg_528_1.oy

	if arg_528_1.endT and (arg_528_1.t or 0) >= arg_528_1.endT + __recovered_scope_0.var_0_273.LINGER then
		arg_528_1.finished = true
	end

	if arg_528_1.finished and var_528_0 and var_528_0._nightmareFlurryFx == arg_528_1 then
		var_528_0._nightmareFlurryFx = nil
	end
end

function __recovered_scope_0.var_0_273.endBattle(arg_529_0)
	for iter_529_0, iter_529_1 in ipairs(arg_529_0 and arg_529_0.allies or {}) do
		if __recovered_scope_0.var_0_273.matches(iter_529_1) then
			if iter_529_1.skill.flurryCast then
				__recovered_scope_0.var_0_273.finish(iter_529_1)
			end

			iter_529_1.skill.flurryCooldown, iter_529_1.skill.flurryForced = 0
			iter_529_1._nightmareFlurryFx = nil
		end
	end

	for iter_529_2, iter_529_3 in ipairs(arg_529_0 and arg_529_0.vfx or {}) do
		if iter_529_3.kind == "nightmare_flurry" then
			iter_529_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_278 = __recovered_scope_0.var_0_273
 __recovered_scope_0.var_0_279 = nil
 __recovered_scope_0.var_0_280 = {}

 function __recovered_scope_0.var_0_281(arg_530_0)
	return arg_530_0 and arg_530_0.alive and not arg_530_0.dying and (arg_530_0.hp or 1) > 0
end

function __recovered_scope_0.var_0_280.blocked(arg_531_0)
	return arg_531_0 and (tonumber(arg_531_0._condemningSealT) or 0) > 0 or false
end

function __recovered_scope_0.var_0_280.updateSeal(arg_532_0, arg_532_1)
	if not arg_532_0 or not arg_532_0._condemningSealT then
		return
	end

	local var_532_0 = arg_532_0._condemningSealT - math.max(0, arg_532_1)

	arg_532_0._condemningSealT = __recovered_scope_0.var_0_281(arg_532_0) and var_532_0 > 1e-09 and var_532_0 or nil

	if not arg_532_0._condemningSealT and __recovered_scope_0.var_0_281(arg_532_0) and arg_532_0._hellWitchSoulQueue and _G.__slotStartNextHellWitchSoulAbduction then
		_G.__slotStartNextHellWitchSoulAbduction(arg_532_0)
	end
end

function __recovered_scope_0.var_0_280.seal(arg_533_0, arg_533_1, arg_533_2)
	if not __recovered_scope_0.var_0_281(arg_533_0) then
		return
	end

	local var_533_0 = (arg_533_0.isBoss or arg_533_0.isFinalBoss or arg_533_0.finalBoss) and (arg_533_2 or 1) or arg_533_1 or 2

	arg_533_0._condemningSealT = math.max(arg_533_0._condemningSealT or 0, var_533_0)
end

 function __recovered_scope_0.var_0_282(arg_534_0)
	return __recovered_scope_0.var_0_281(arg_534_0) and (arg_534_0.stunT or 0) <= 0 and (arg_534_0.fearT or 0) <= 0 and not arg_534_0._venomMawSwallowed and not arg_534_0._caveBasiliskPetrified and not arg_534_0._oathHelmStone and not arg_534_0._succubusCharm and not arg_534_0._wastelandPiperCharm and not arg_534_0._cosmicPressure
end

 function __recovered_scope_0.var_0_283(arg_535_0, arg_535_1, arg_535_2, arg_535_3, arg_535_4)
	if not __recovered_scope_0.var_0_281(arg_535_2) or arg_535_3 and not arg_535_3(arg_535_2, arg_535_1, arg_535_0) then
		return false
	end

	if _G.__slotStage6RiftTargetAllowed and not _G.__slotStage6RiftTargetAllowed(arg_535_0, arg_535_1, arg_535_2) then
		return false
	end

	local var_535_0 = (arg_535_2.x or 0) - (arg_535_1.x or 0)
	local var_535_1 = (arg_535_2.y or 0) - (arg_535_1.y or 0)

	return require("src.game.awakening").skillMetric(arg_535_1, arg_535_2, arg_535_4 and arg_535_4(arg_535_1, arg_535_2) or var_535_0 * var_535_0 + var_535_1 * var_535_1) <= (arg_535_1.skill and arg_535_1.skill.range or 40)^2
end

function __recovered_scope_0.var_0_280.needsApproach(arg_536_0, arg_536_1, arg_536_2, arg_536_3, arg_536_4)
	local var_536_0 = arg_536_1 and arg_536_1.skill

	if not var_536_0 or var_536_0.kind ~= "CondemningStrike" and var_536_0.kind ~= "JudgmentsRadiance" and var_536_0.kind ~= "FrostSpike" and var_536_0.kind ~= "GlacialShatter" or not __recovered_scope_0.var_0_282(arg_536_1) or var_536_0.state == "active" or (var_536_0.cdT or 0) < (var_536_0.cd or 6) or arg_536_1._lizardWarlordSkillBlocked or arg_536_1._pendingDuelistHit or arg_536_1._dimensionalPocket or not __recovered_scope_0.var_0_281(arg_536_2) or arg_536_3 and not arg_536_3(arg_536_2, arg_536_1, arg_536_0) then
		return false
	end

	if _G.__slotStage6RiftTargetAllowed and not _G.__slotStage6RiftTargetAllowed(arg_536_0, arg_536_1, arg_536_2) then
		return false
	end

	return not __recovered_scope_0.var_0_283(arg_536_0, arg_536_1, arg_536_2, arg_536_3, arg_536_4)
end

function __recovered_scope_0.var_0_280.approach(arg_537_0, arg_537_1, arg_537_2, arg_537_3, arg_537_4, arg_537_5)
	local var_537_0 = (arg_537_2.x or 0) - (arg_537_1.x or 0)
	local var_537_1 = (arg_537_2.y or 0) - (arg_537_1.y or 0)

	if arg_537_0.entityGroundPoint then
		local var_537_2, var_537_3 = arg_537_0:entityGroundPoint(arg_537_1, arg_537_4)
		local var_537_4, var_537_5 = arg_537_0:entityGroundPoint(arg_537_2, arg_537_5)

		var_537_1 = var_537_5 - var_537_3
	end

	local var_537_6 = math.sqrt(var_537_0 * var_537_0 + var_537_1 * var_537_1)

	if var_537_6 <= 1e-09 then
		return
	end

	local var_537_7 = math.min(math.max(0, arg_537_3), var_537_6)

	arg_537_1.x, arg_537_1.y = arg_537_1.x + var_537_0 / var_537_6 * var_537_7, arg_537_1.y + var_537_1 / var_537_6 * var_537_7
end

function __recovered_scope_0.var_0_280.finish(arg_538_0)
	local var_538_0 = arg_538_0.skill

	if not var_538_0 then
		return
	end

	if var_538_0.kind == "JudgmentsRadiance" and var_538_0.condemningCast and var_538_0.condemningCast.impactT then
		arg_538_0._judgmentAfterglow = var_538_0.condemningCast
	end

	var_538_0.state, var_538_0.active, var_538_0.condemningCast, var_538_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_538_0)
	arg_538_0._casting, arg_538_0._suppressAttack = false, false
	arg_538_0._forceAnim, arg_538_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_280.updateAfterglow(arg_539_0, arg_539_1)
	local var_539_0 = arg_539_0._judgmentAfterglow

	if not var_539_0 then
		return
	end

	var_539_0.impactT = var_539_0.impactT + math.max(0, arg_539_1)

	if not __recovered_scope_0.var_0_281(arg_539_0) or var_539_0.impactT >= 2.2 then
		arg_539_0._judgmentAfterglow = nil
	end
end

function __recovered_scope_0.var_0_280.updateCast(arg_540_0, arg_540_1, arg_540_2, arg_540_3, arg_540_4)
	local var_540_0 = arg_540_1.skill

	if not __recovered_scope_0.var_0_282(arg_540_1) then
		if var_540_0.state == "active" then
			__recovered_scope_0.var_0_280.finish(arg_540_1)
		end

		return
	end

	if var_540_0.state == "active" then
		if var_540_0.condemningCast and var_540_0.condemningCast.impactT then
			var_540_0.condemningCast.impactT = var_540_0.condemningCast.impactT + math.max(0, arg_540_2)
		end

		if not arg_540_1.anim or arg_540_1.anim.name ~= (var_540_0.activeAnim or "attack3") then
			__recovered_scope_0.var_0_280.finish(arg_540_1)

			return
		end

		arg_540_1._casting, arg_540_1._suppressAttack = true, true
		arg_540_1._forceAnim, arg_540_1._forceAnimT = var_540_0.activeAnim or "attack3", math.max(0.2, arg_540_2 + 0.1)

		return
	end

	var_540_0.cdT = math.min(var_540_0.cd or 6, (var_540_0.cdT or 0) + arg_540_2)

	if var_540_0.cdT < (var_540_0.cd or 6) then
		return
	end

	var_540_0.ready = true

	if not arg_540_1.anim or arg_540_1._pendingDuelistHit then
		return
	end

	local var_540_1
	local var_540_2 = math.huge

	for iter_540_0, iter_540_1 in ipairs(arg_540_0.enemies or {}) do
		if __recovered_scope_0.var_0_283(arg_540_0, arg_540_1, iter_540_1, arg_540_3, arg_540_4) then
			local var_540_3 = arg_540_4 and arg_540_4(arg_540_1, iter_540_1) or ((iter_540_1.x or 0) - (arg_540_1.x or 0))^2 + ((iter_540_1.y or 0) - (arg_540_1.y or 0))^2

			if var_540_3 < var_540_2 then
				var_540_1, var_540_2 = iter_540_1, var_540_3
			end
		end
	end

	if not var_540_1 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_540_1)

	var_540_0.state, var_540_0.active, var_540_0.ready, var_540_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_540_0)
	var_540_0.condemningCast = {
		fired = false,
		target = var_540_1
	}
	arg_540_1.shotPending, arg_540_1.pendingTarget, arg_540_1._volleyFollowup = false
	arg_540_1._casting, arg_540_1._suppressAttack = true, true
	arg_540_1._forceAnim, arg_540_1._forceAnimT = var_540_0.activeAnim or "attack3", math.max(0.2, arg_540_2 + 0.1)
	arg_540_1.anim.name, arg_540_1.anim.frame, arg_540_1.anim.t, arg_540_1.anim.reverse = arg_540_1._forceAnim, 1, 0
	arg_540_1.anim._desynced = true
	arg_540_1.facing = (var_540_1.x or 0) >= (arg_540_1.x or 0) and 1 or -1
	arg_540_1._attackFacing = arg_540_1.facing
end

function __recovered_scope_0.var_0_280.onAnimation(arg_541_0, arg_541_1, arg_541_2, arg_541_3, arg_541_4, arg_541_5, arg_541_6)
	local var_541_0 = arg_541_1.skill
	local var_541_1 = var_541_0 and var_541_0.condemningCast

	if not var_541_1 then
		return
	end

	if not __recovered_scope_0.var_0_282(arg_541_1) or not arg_541_1.anim or arg_541_1.anim.name ~= (var_541_0.activeAnim or "attack3") then
		__recovered_scope_0.var_0_280.finish(arg_541_1)

		return
	end

	if not var_541_1.fired and arg_541_1.anim.frame >= (var_541_0.releaseFrame or 5) then
		arg_541_1.anim.frame, arg_541_1.anim.t = var_541_0.releaseFrame or 5, 0
		var_541_1.fired = true

		local var_541_2 = {}

		if var_541_0.kind == "FrostSpike" or var_541_0.kind == "GlacialShatter" then
			require("src.game.unit_abilities").frost_spike.release(arg_541_0, arg_541_1, arg_541_3, arg_541_4, arg_541_5)
		elseif var_541_0.kind == "JudgmentsRadiance" then
			local var_541_3 = {}

			for iter_541_0, iter_541_1 in ipairs(arg_541_0.enemies or {}) do
				if __recovered_scope_0.var_0_283(arg_541_0, arg_541_1, iter_541_1, arg_541_4, arg_541_5) then
					local var_541_4 = arg_541_5 and arg_541_5(arg_541_1, iter_541_1) or ((iter_541_1.x or 0) - (arg_541_1.x or 0))^2 + ((iter_541_1.y or 0) - (arg_541_1.y or 0))^2

					var_541_3[#var_541_3 + 1] = {
						target = iter_541_1,
						d = var_541_4,
						index = iter_541_0
					}
				end
			end

			table.sort(var_541_3, function(arg_542_0, arg_542_1)
				if arg_542_0.d == arg_542_1.d then
					return arg_542_0.index < arg_542_1.index
				end

				return arg_542_0.d < arg_542_1.d
			end)

			local var_541_5 = {}

			for iter_541_2, iter_541_3 in ipairs(var_541_3) do
				if not var_541_5[iter_541_3.target] then
					var_541_2[#var_541_2 + 1] = iter_541_3.target
					var_541_5[iter_541_3.target] = true

					if #var_541_2 >= require("src.game.combat").branching_bloom.limit(arg_541_0, arg_541_1, math.max(1, var_541_0.maxTargets or 2)) then
						break
					end
				end
			end
		elseif __recovered_scope_0.var_0_283(arg_541_0, arg_541_1, var_541_1.target, arg_541_4, arg_541_5) then
			var_541_2[1] = var_541_1.target
		end

		for iter_541_4, iter_541_5 in ipairs(var_541_2) do
			if not require("src.game.combat").branching_bloom.extra(arg_541_0, arg_541_1, iter_541_4, var_541_0.maxTargets or 2, iter_541_5, arg_541_3 * (var_541_0.dmgMul or 1.8), arg_541_6) then
				arg_541_6(iter_541_5, arg_541_3 * (var_541_0.dmgMul or 1.8), arg_541_1, nil, {
					battleSkillDamage = true,
					basicAttack = false,
					hitFlashColor = {
						1,
						1,
						0.75
					}
				})
				__recovered_scope_0.var_0_280.seal(iter_541_5, var_541_0.dur or 2, var_541_0.bossDuration or 1)
				require("src.game.awakening").sealApplied(arg_541_0, iter_541_5, arg_541_1)
			end

			if iter_541_5.isBoss or iter_541_5.isFinalBoss or iter_541_5.finalBoss then
				var_541_1.effectTarget = iter_541_5
			end
		end

		if #var_541_2 > 0 then
			var_541_1.impactT = 0
			arg_541_0.hitStopT = math.max(arg_541_0.hitStopT or 0, var_541_0.kind == "JudgmentsRadiance" and 0.1 or 0.065)

			if var_541_0.kind == "JudgmentsRadiance" then
				local var_541_6 = arg_541_0.cameraShake
				local var_541_7 = var_541_6 and math.max(0, 1 - (var_541_6.t or 0) / math.max(0.001, var_541_6.dur or 0.16)) or 0

				if (var_541_6 and var_541_6.ampY or 0) * var_541_7 < 3 then
					arg_541_0.cameraShake = {
						t = 0,
						ampY = 3,
						dur = 0.16
					}
				end
			end
		end
	end

	local var_541_8 = arg_541_2 and arg_541_2.animations and arg_541_2.animations[var_541_0.activeAnim or "attack3"]

	if arg_541_1.anim.frame > (var_541_8 and var_541_8.frames or 10) then
		__recovered_scope_0.var_0_280.finish(arg_541_1)
	end
end

 __recovered_scope_0.var_0_284 = __recovered_scope_0.var_0_280
 __recovered_scope_0.var_0_285 = nil
 __recovered_scope_0.var_0_286 = {}

 function __recovered_scope_0.var_0_287(arg_543_0)
	return arg_543_0 and arg_543_0.alive and not arg_543_0.dying and (arg_543_0.hp or 1) > 0
end

function __recovered_scope_0.var_0_286.freeze(arg_544_0, arg_544_1)
	if not __recovered_scope_0.var_0_287(arg_544_0) or arg_544_0.isBoss or arg_544_0.isFinalBoss or arg_544_0.finalBoss then
		return
	end

	if arg_544_0.anim and not arg_544_0._frostSpikePose then
		arg_544_0._frostSpikePose = {
			name = arg_544_0.anim.name,
			frame = arg_544_0.anim.frame,
			t = arg_544_0.anim.t,
			facing = arg_544_0.facing
		}
	end

	arg_544_0._frostSpikeFreezeT = math.max(arg_544_0._frostSpikeFreezeT or 0, arg_544_1 or 1)
	arg_544_0.stunT = math.max(arg_544_0.stunT or 0, arg_544_1 or 1)

	__recovered_scope_0.var_0_284.seal(arg_544_0, arg_544_1 or 1)
end

function __recovered_scope_0.var_0_286.updateFreeze(arg_545_0, arg_545_1)
	if not arg_545_0._frostSpikeFreezeT then
		return
	end

	local var_545_0 = arg_545_0._frostSpikeFreezeT - math.max(0, arg_545_1)

	arg_545_0._frostSpikeFreezeT = __recovered_scope_0.var_0_287(arg_545_0) and var_545_0 > 1e-09 and var_545_0 or nil

	if not arg_545_0._frostSpikeFreezeT then
		arg_545_0._frostSpikePose = nil
	end
end

function __recovered_scope_0.var_0_286.holdPose(arg_546_0)
	local var_546_0 = arg_546_0._frostSpikePose

	if var_546_0 and arg_546_0.anim and __recovered_scope_0.var_0_287(arg_546_0) and (arg_546_0._frostSpikeFreezeT or 0) > 0 then
		arg_546_0.anim.name, arg_546_0.anim.frame, arg_546_0.anim.t = var_546_0.name, var_546_0.frame, var_546_0.t
		arg_546_0.facing = var_546_0.facing
	end
end

function __recovered_scope_0.var_0_286.release(arg_547_0, arg_547_1, arg_547_2, arg_547_3, arg_547_4)
	local var_547_0 = arg_547_1.skill
	local var_547_1 = var_547_0.kind == "GlacialShatter"
	local var_547_2 = arg_547_1._attackFacing or arg_547_1.facing or 1
	local var_547_3 = {}
	local var_547_4 = {}

	for iter_547_0, iter_547_1 in ipairs(arg_547_0.enemies or {}) do
		local var_547_5 = (iter_547_1.x or 0) - (arg_547_1.x or 0)
		local var_547_6 = (iter_547_1.y or 0) - (arg_547_1.y or 0)
		local var_547_7 = arg_547_4 and arg_547_4(arg_547_1, iter_547_1) or var_547_5 * var_547_5 + var_547_6 * var_547_6

		if __recovered_scope_0.var_0_287(iter_547_1) and not var_547_4[iter_547_1] and (not arg_547_3 or arg_547_3(iter_547_1, arg_547_1, arg_547_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_547_0, arg_547_1, iter_547_1)) and var_547_5 * var_547_2 >= 0 and require("src.game.awakening").skillMetric(arg_547_1, iter_547_1, var_547_7, true) <= (var_547_0.range or 130)^2 then
			var_547_3[#var_547_3 + 1] = {
				target = iter_547_1,
				d = var_547_7,
				index = iter_547_0
			}
			var_547_4[iter_547_1] = true
		end
	end

	table.sort(var_547_3, function(arg_548_0, arg_548_1)
		if arg_548_0.d == arg_548_1.d then
			return arg_548_0.index < arg_548_1.index
		end

		return arg_548_0.d < arg_548_1.d
	end)

	local var_547_8 = arg_547_0.ui and arg_547_0.ui.battle and arg_547_0.ui.battle.allySize32 or 32
	local var_547_9 = math.max(1, math.floor(var_547_8 / 32 + 0.5))

	arg_547_0.vfx = arg_547_0.vfx or {}

	for iter_547_2 = 1, math.min(#var_547_3, 1) do
		local var_547_10 = var_547_3[iter_547_2].target
		local var_547_11 = var_547_10.x
		local var_547_12 = var_547_10.y

		if arg_547_0.entityGroundPoint then
			var_547_11, var_547_12 = arg_547_0:entityGroundPoint(var_547_10, var_547_8)
		end

		arg_547_0.vfx[#arg_547_0.vfx + 1] = {
			sortAgainstUnitY = true,
			kind = "frost_spike_ground",
			opaqueBottomAnchor = true,
			sprite = var_547_1 and "GlacialShatter" or "FrostSpike",
			x = var_547_11,
			y = var_547_12,
			depthY = var_547_10.y,
			scale = var_547_9,
			facing = var_547_2,
			anim = {
				speed = 0.14,
				frames = 12,
				t = 0,
				frame = 1,
				loop = false
			},
			_damageSource = arg_547_1,
			awakeningCast = arg_547_1._awakening and arg_547_1._awakening.cast,
			awakeningForward = require("src.game.awakening").value(arg_547_1, "D14"),
			chainCast = require("src.game.combat").chain_casting.capture(arg_547_1),
			_damageTarget = var_547_10,
			_hitDmg = arg_547_2 * (var_547_0.dmgMul or 1.1),
			_shatterDmg = var_547_1 and arg_547_2 * 0.7 or nil,
			_maxTargets = var_547_1 and 3 or 2,
			freezeDuration = var_547_0.dur or 1
		}
	end
end

function __recovered_scope_0.var_0_286.updateEffect(arg_549_0, arg_549_1, arg_549_2, arg_549_3, arg_549_4)
	if not arg_549_0.anim then
		return
	end

	local var_549_0 = arg_549_0.sprite == "GlacialShatter"
	local var_549_1 = var_549_0 and 4 or 3

	if not arg_549_0._damageDealt and var_549_1 <= arg_549_0.anim.frame then
		arg_549_0._damageDealt = true

		if var_549_1 < arg_549_0.anim.frame then
			arg_549_0.anim.frame, arg_549_0.anim.t = var_549_1, 0
		end

		if var_549_0 then
			arg_549_0.anim.speed = (arg_549_0.freezeDuration or 1.5) / 6
		end

		local var_549_2 = {}
		local var_549_3 = arg_549_3 and arg_549_3.assets and arg_549_3.assets.projectiles and arg_549_3.assets.projectiles[arg_549_0.sprite]
		local var_549_4 = {}
		local var_549_5 = {}

		for iter_549_0, iter_549_1 in ipairs(arg_549_3 and arg_549_3.enemies or {}) do
			if __recovered_scope_0.var_0_287(iter_549_1) and not var_549_5[iter_549_1] and (not arg_549_1 or arg_549_1(iter_549_1, arg_549_0._damageSource, arg_549_3)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_549_3, arg_549_0._damageSource, iter_549_1)) then
				var_549_5[iter_549_1] = true

				local var_549_6 = arg_549_4 and arg_549_4(iter_549_1) or arg_549_3.assets and arg_549_3.assets.units and arg_549_3.assets.units[iter_549_1.skin or iter_549_1.kind]

				if require("src.game.awakening").extendedGroundContact(arg_549_0, iter_549_1, function(arg_550_0, arg_550_1)
					return require("src.game.projectiles").ground_sprite_mask.hitsTarget(arg_550_0, var_549_3, var_549_1, arg_550_1, var_549_6)
				end) then
					local var_549_7 = (iter_549_1.x or 0) - (arg_549_0.x or 0)
					local var_549_8 = (iter_549_1.y or 0) - (arg_549_0.y or 0)

					var_549_4[#var_549_4 + 1] = {
						target = iter_549_1,
						d = var_549_7 * var_549_7 + var_549_8 * var_549_8,
						index = iter_549_0
					}
				end
			end
		end

		table.sort(var_549_4, function(arg_551_0, arg_551_1)
			if arg_551_0.d == arg_551_1.d then
				return arg_551_0.index < arg_551_1.index
			end

			return arg_551_0.d < arg_551_1.d
		end)

		for iter_549_2 = 1, math.min(#var_549_4, require("src.game.combat").branching_bloom.limit(arg_549_3, arg_549_0._damageSource, arg_549_0._maxTargets or var_549_0 and 3 or 2)) do
			var_549_2[#var_549_2 + 1] = var_549_4[iter_549_2].target
		end

		arg_549_0._hitTargets = var_549_2
		arg_549_0._initialHit = #var_549_2 > 0

		for iter_549_3, iter_549_4 in ipairs(var_549_2) do
			if not require("src.game.combat").branching_bloom.extra(arg_549_3, arg_549_0._damageSource, iter_549_3, arg_549_0._maxTargets, iter_549_4, arg_549_0._hitDmg, arg_549_2) then
				arg_549_2(iter_549_4, arg_549_0._hitDmg, arg_549_0._damageSource, nil, {
					battleSkillDamage = true,
					basicAttack = false,
					awakeningCast = arg_549_0.awakeningCast,
					chainCast = arg_549_0.chainCast or false,
					hitFlashColor = {
						0.65,
						0.9,
						1
					}
				})
				__recovered_scope_0.var_0_286.freeze(iter_549_4, arg_549_0.freezeDuration)
				require("src.game.awakening").sealApplied(arg_549_3, iter_549_4, arg_549_0._damageSource)
			end
		end
	end

	if var_549_0 and arg_549_0._damageDealt and not arg_549_0._shatterDealt and arg_549_0.anim.frame >= 10 then
		arg_549_0._shatterDealt = true
		arg_549_0.anim.frame, arg_549_0.anim.t, arg_549_0.anim.speed = 10, 0, 0.14

		for iter_549_5, iter_549_6 in ipairs(arg_549_0._hitTargets or {}) do
			if __recovered_scope_0.var_0_287(iter_549_6) and (not arg_549_1 or arg_549_1(iter_549_6, arg_549_0._damageSource, arg_549_3)) and not require("src.game.combat").branching_bloom.extra(arg_549_3, arg_549_0._damageSource, iter_549_5, arg_549_0._maxTargets, iter_549_6, arg_549_0._shatterDmg, arg_549_2) then
				arg_549_2(iter_549_6, arg_549_0._shatterDmg, arg_549_0._damageSource, nil, {
					battleSkillDamage = true,
					basicAttack = false,
					awakeningCast = arg_549_0.awakeningCast,
					chainCast = arg_549_0.chainCast or false,
					hitFlashColor = {
						0.8,
						0.95,
						1
					}
				})
			end
		end
	end
end

 __recovered_scope_0.var_0_288 = __recovered_scope_0.var_0_286
 __recovered_scope_0.var_0_289 = nil
 __recovered_scope_0.var_0_290 = {}
 __recovered_scope_0.var_0_291 = require("src.data.randomoption")

function __recovered_scope_0.var_0_290.onNudgeComplete(arg_552_0, arg_552_1)
	if not arg_552_0 or type(arg_552_1) ~= "table" or arg_552_1.kind ~= "nudge" or arg_552_1.resolved ~= true or arg_552_1._calculatedLuckProcessed then
		return 0
	end

	arg_552_1._calculatedLuckProcessed = true

	if type(arg_552_1.newRewardWinningLines) ~= "table" or #arg_552_1.newRewardWinningLines == 0 then
		return 0
	end

	local var_552_0 = 0
	local var_552_1 = {}

	for iter_552_0, iter_552_1 in ipairs(arg_552_0.rosterUnits or {}) do
		if not iter_552_1.isSummon then
			local var_552_2 = iter_552_1.randomOptions or iter_552_1.randomOption and {
				iter_552_1.randomOption
			} or {}

			for iter_552_2, iter_552_3 in ipairs(var_552_2) do
				if iter_552_3 and tostring(iter_552_3.id) == "23" and not var_552_1[iter_552_3] then
					var_552_1[iter_552_3] = true
					iter_552_3.calculatedLuckStacks = __recovered_scope_0.var_0_291.getCalculatedLuckStacks(iter_552_3) + 1
					var_552_0 = var_552_0 + 1
					iter_552_1.randomOptions = var_552_2
					iter_552_1.randomOption = var_552_2[1]

					local var_552_3 = arg_552_0.rosterSpawnMeta and arg_552_0.rosterSpawnMeta[iter_552_0]

					if var_552_3 then
						var_552_3.randomOptions, var_552_3.randomOption = var_552_2, var_552_2[1]
					end
				end
			end
		end
	end

	return var_552_0
end

 __recovered_scope_0.var_0_292 = __recovered_scope_0.var_0_290
 __recovered_scope_0.var_0_293 = nil
 __recovered_scope_0.var_0_294 = {}
 __recovered_scope_0.var_0_295 = setmetatable({}, {
	__mode = "k"
})

function __recovered_scope_0.var_0_294.matches(arg_553_0)
	return arg_553_0 and (arg_553_0.subclass == "마그누스" or arg_553_0.subclassName == "마그누스" or arg_553_0.subclassKey == "마그누스")
end

 function __recovered_scope_0.var_0_296(arg_554_0, arg_554_1)
	local var_554_0 = __recovered_scope_0.var_0_295[arg_554_0]

	if not var_554_0 then
		var_554_0 = {}
		__recovered_scope_0.var_0_295[arg_554_0] = var_554_0
	end

	if var_554_0[arg_554_1] then
		return var_554_0[arg_554_1]
	end

	local var_554_1 = arg_554_0.quads and arg_554_0.quads.attack and arg_554_0.quads.attack[arg_554_1]
	local var_554_2 = arg_554_0.bounds and arg_554_0.bounds.attack and arg_554_0.bounds.attack[arg_554_1]

	if not var_554_1 or not var_554_2 or not arg_554_0.imageData then
		return nil
	end

	local var_554_3, var_554_4 = var_554_1:getViewport()
	local var_554_5 = {}

	for iter_554_0 = var_554_2.y, var_554_2.y + var_554_2.h - 1 do
		for iter_554_1 = var_554_2.x, var_554_2.x + var_554_2.w - 1 do
			local var_554_6, var_554_7, var_554_8, var_554_9 = arg_554_0.imageData:getPixel(var_554_3 + iter_554_1, var_554_4 + iter_554_0)

			if var_554_9 and var_554_9 > 0.05 then
				var_554_5[#var_554_5 + 1] = {
					iter_554_1,
					iter_554_0
				}
			end
		end
	end

	var_554_0[arg_554_1] = var_554_5

	return var_554_5
end

 function __recovered_scope_0.var_0_297(arg_555_0, arg_555_1, arg_555_2, arg_555_3)
	local var_555_0 = arg_555_3 / (arg_555_2.frameH or 32)
	local var_555_1 = arg_555_2.bounds and arg_555_2.bounds.idle and arg_555_2.bounds.idle[1]

	if not var_555_1 then
		return nil
	end

	local var_555_2 = math.floor((arg_555_1.x or 0) - arg_555_3 / 2)
	local var_555_3 = math.floor((arg_555_1.y or 0) - arg_555_3 / 2)
	local var_555_4 = (arg_555_2.frameW or 32) * var_555_0
	local var_555_5 = math.floor((arg_555_3 - var_555_4) / 2 + 0.5)
	local var_555_6 = (var_555_1.x + var_555_1.w * 0.5 - (arg_555_2.frameW or 32) * 0.5) * var_555_0
	local var_555_7 = (var_555_1.y + var_555_1.h) * var_555_0
	local var_555_8 = arg_555_0.ui and arg_555_0.ui.battle and arg_555_0.ui.battle.magnusSpriteOffset
	local var_555_9 = var_555_2 + var_555_5 - var_555_6 + math.floor((var_555_8 and var_555_8.x or -3) * var_555_0 + 0.5)
	local var_555_10 = math.floor(var_555_3 + arg_555_3 - var_555_7 + 0.5) + math.floor((var_555_8 and var_555_8.y or -1) * var_555_0 + 0.5)

	return var_555_9 + require("src.game.projectiles").imp_explosion.getVisualOffsetX(arg_555_1), var_555_10, var_555_0
end

 function __recovered_scope_0.var_0_298(arg_556_0, arg_556_1, arg_556_2, arg_556_3, arg_556_4, arg_556_5, arg_556_6)
	local var_556_0 = arg_556_0.getUnitAssetForEnemy and arg_556_0:getUnitAssetForEnemy(arg_556_2)

	if not var_556_0 or not var_556_0.imageData or not arg_556_2.colX or not arg_556_2.colY or not arg_556_2.colW or not arg_556_2.colH or not (arg_556_2.colW > 0) or not (arg_556_2.colH > 0) then
		return false
	end

	local var_556_1 = arg_556_2.anim and arg_556_2.anim.name or "idle"

	if not var_556_0.quads or not var_556_0.quads[var_556_1] then
		var_556_1 = "idle"
	end

	local var_556_2 = var_556_0.animations and var_556_0.animations[var_556_1] and var_556_0.animations[var_556_1].frames or 1
	local var_556_3 = math.max(1, math.min(arg_556_2.anim and arg_556_2.anim.frame or 1, var_556_2))
	local var_556_4 = var_556_0.quads and var_556_0.quads[var_556_1] and var_556_0.quads[var_556_1][var_556_3]
	local var_556_5 = var_556_0.bounds and var_556_0.bounds[var_556_1] and var_556_0.bounds[var_556_1][var_556_3]
	local var_556_6 = arg_556_3.bounds and arg_556_3.bounds.attack and arg_556_3.bounds.attack[arg_556_5]
	local var_556_7 = __recovered_scope_0.var_0_296(arg_556_3, arg_556_5)
	local var_556_8, var_556_9, var_556_10 = __recovered_scope_0.var_0_297(arg_556_0, arg_556_1, arg_556_3, arg_556_4)

	if not var_556_4 or not var_556_5 or not var_556_6 or not var_556_7 or not var_556_8 or not (var_556_5.w > 0) or not (var_556_5.h > 0) then
		return false
	end

	local var_556_11 = (arg_556_1.facing or 1) < 0 and -1 or 1
	local var_556_12, var_556_13, var_556_14 = require("src.game.awakening").basicVisual(arg_556_1, var_556_8, var_556_9, var_556_10, var_556_10)
	local var_556_15 = var_556_14
	local var_556_16 = var_556_13
	local var_556_17 = var_556_12 + (arg_556_6 or 0) * var_556_11
	local var_556_18 = var_556_17 + (var_556_11 < 0 and arg_556_3.frameW - var_556_6.x - var_556_6.w or var_556_6.x) * var_556_15
	local var_556_19 = var_556_16 + var_556_6.y * var_556_15
	local var_556_20 = arg_556_2.colX + require("src.game.projectiles").imp_explosion.getVisualOffsetX(arg_556_2)
	local var_556_21 = arg_556_2.colY

	if var_556_20 >= var_556_18 + var_556_6.w * var_556_15 or var_556_18 >= var_556_20 + arg_556_2.colW or var_556_21 >= var_556_19 + var_556_6.h * var_556_15 or var_556_19 >= var_556_21 + arg_556_2.colH then
		return false
	end

	local var_556_22, var_556_23 = var_556_4:getViewport()
	local var_556_24 = arg_556_2.colW / var_556_5.w
	local var_556_25 = arg_556_2.colH / var_556_5.h

	for iter_556_0, iter_556_1 in ipairs(var_556_7) do
		local var_556_26 = var_556_17 + (var_556_11 < 0 and arg_556_3.frameW - iter_556_1[1] - 1 or iter_556_1[1]) * var_556_15
		local var_556_27 = var_556_16 + iter_556_1[2] * var_556_15
		local var_556_28 = math.max(var_556_26, var_556_20)
		local var_556_29 = math.min(var_556_26 + var_556_15, var_556_20 + arg_556_2.colW)
		local var_556_30 = math.max(var_556_27, var_556_21)
		local var_556_31 = math.min(var_556_27 + var_556_15, var_556_21 + arg_556_2.colH)

		if var_556_28 < var_556_29 and var_556_30 < var_556_31 then
			local var_556_32 = math.max(0, math.floor((var_556_28 - var_556_20) / var_556_24))
			local var_556_33 = math.min(var_556_5.w - 1, math.ceil((var_556_29 - var_556_20) / var_556_24) - 1)
			local var_556_34 = math.max(0, math.floor((var_556_30 - var_556_21) / var_556_25))
			local var_556_35 = math.min(var_556_5.h - 1, math.ceil((var_556_31 - var_556_21) / var_556_25) - 1)

			for iter_556_2 = var_556_34, var_556_35 do
				for iter_556_3 = var_556_32, var_556_33 do
					local var_556_36 = (arg_556_2.facing or 1) < 0 and var_556_5.w - 1 - iter_556_3 or iter_556_3
					local var_556_37, var_556_38, var_556_39, var_556_40 = var_556_0.imageData:getPixel(var_556_22 + var_556_5.x + var_556_36, var_556_23 + var_556_5.y + iter_556_2)

					if var_556_40 and var_556_40 > 0.05 then
						return true
					end
				end
			end
		end
	end

	return false
end

function __recovered_scope_0.var_0_294.update(arg_557_0, arg_557_1, arg_557_2, arg_557_3, arg_557_4, arg_557_5)
	if not arg_557_1 or not arg_557_1.anim or arg_557_1.anim.name ~= "attack" then
		return true
	end

	local var_557_0 = arg_557_0.getUnitAssetForAlly and arg_557_0:getUnitAssetForAlly(arg_557_1)

	if not var_557_0 or not var_557_0.imageData or not var_557_0.quads or not var_557_0.bounds then
		return true
	end

	local var_557_1 = var_557_0 and var_557_0.animations and var_557_0.animations.attack and var_557_0.animations.attack.frames or 10
	local var_557_2 = math.min(arg_557_1.anim.frame or 1, var_557_1)

	if var_557_2 < 3 then
		return false
	end

	if require("src.game.awakening").isV8(arg_557_1, arg_557_0) and not arg_557_2.awakeningTargets then
		local var_557_3 = {}

		local function var_557_4(arg_558_0)
			if not arg_558_0.alive or arg_558_0.dying or arg_557_5 and not arg_557_5(arg_558_0, arg_557_1, arg_557_0) then
				return false
			end

			for iter_558_0 = 3, var_557_1 do
				if __recovered_scope_0.var_0_298(arg_557_0, arg_557_1, arg_558_0, var_557_0, arg_557_3, iter_558_0) then
					return true
				end
			end

			return false
		end

		for iter_557_0, iter_557_1 in ipairs(arg_557_0.enemies or {}) do
			if var_557_4(iter_557_1) then
				var_557_3[#var_557_3 + 1] = iter_557_1
			end
		end

		table.sort(var_557_3, function(arg_559_0, arg_559_1)
			if arg_559_0 == arg_557_2.target then
				return arg_559_1 ~= arg_557_2.target
			end

			if arg_559_1 == arg_557_2.target then
				return false
			end

			return (arg_559_0.x - arg_557_1.x)^2 + (arg_559_0.y - arg_557_1.y)^2 < (arg_559_1.x - arg_557_1.x)^2 + (arg_559_1.y - arg_557_1.y)^2
		end)

		local var_557_5 = {}

		for iter_557_2 = 1, math.min(3, #var_557_3) do
			var_557_5[iter_557_2] = var_557_3[iter_557_2]
		end

		arg_557_2.awakeningTargets = true

		require("src.game.awakening").basicTargets(arg_557_0, arg_557_1, var_557_5, 3, var_557_4)
	end

	arg_557_2.targets = arg_557_2.targets or {}
	arg_557_2.count = arg_557_2.count or 0

	for iter_557_3 = math.max(3, math.min(var_557_2, (arg_557_2.lastFrame or 2) + 1)), var_557_2 do
		local var_557_6 = {}

		for iter_557_4, iter_557_5 in ipairs(arg_557_0.enemies or {}) do
			if not arg_557_2.targets[iter_557_5] and (not arg_557_5 or arg_557_5(iter_557_5, arg_557_1, arg_557_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_557_0, arg_557_1, iter_557_5)) and (__recovered_scope_0.var_0_298(arg_557_0, arg_557_1, iter_557_5, var_557_0, arg_557_3, iter_557_3) or not require("src.game.awakening").isModern(arg_557_1) and iter_557_5 == arg_557_2.target and require("src.game.awakening").value(arg_557_1, "W15") > 0 and __recovered_scope_0.var_0_298(arg_557_0, arg_557_1, iter_557_5, var_557_0, arg_557_3, iter_557_3, require("src.game.awakening").value(arg_557_1, "W15"))) then
				local var_557_7 = (iter_557_5.x or 0) - (arg_557_1.x or 0)
				local var_557_8 = (iter_557_5.y or 0) - (arg_557_1.y or 0)

				var_557_6[#var_557_6 + 1] = {
					enemy = iter_557_5,
					distance = var_557_7 * var_557_7 + var_557_8 * var_557_8,
					index = iter_557_4
				}
			end
		end

		table.sort(var_557_6, function(arg_560_0, arg_560_1)
			if arg_560_0.enemy == arg_557_2.target or arg_560_1.enemy == arg_557_2.target then
				return arg_560_0.enemy == arg_557_2.target
			end

			if arg_560_0.distance == arg_560_1.distance then
				return arg_560_0.index < arg_560_1.index
			end

			return arg_560_0.distance < arg_560_1.distance
		end)

		for iter_557_6, iter_557_7 in ipairs(var_557_6) do
			if arg_557_2.count >= 3 then
				break
			end

			local var_557_9 = iter_557_7.enemy
			local var_557_10 = arg_557_2.count == 0 and arg_557_2.dmg or math.floor((arg_557_2.dmg or 0) * 0.6 + 0.5)

			arg_557_2.targets[var_557_9] = true
			arg_557_2.count = arg_557_2.count + 1

			arg_557_4(var_557_9, var_557_10, arg_557_1, nil, {
				areaDamage = true,
				battleSkillDamage = arg_557_2.skillDamage == true,
				imprintDamage = arg_557_2.imprintDamage == true,
				crossfireAttack = arg_557_2.crossfireAttack,
				basicAttack = arg_557_2.basicAttack == true
			})
		end

		if arg_557_2.count >= 3 then
			break
		end
	end

	arg_557_2.lastFrame = var_557_2

	return arg_557_2.count >= 3 or var_557_1 <= var_557_2
end

 __recovered_scope_0.var_0_299 = __recovered_scope_0.var_0_294
 __recovered_scope_0.var_0_300 = nil
 __recovered_scope_0.var_0_301 = {
	pullDistance = 4,
	pullDuration = 0.12,
	matches = function(arg_561_0)
		if not arg_561_0 or arg_561_0.sym ~= "S" then
			return false
		end

		for iter_561_0, iter_561_1 in ipairs({
			"subclass",
			"subclassName",
			"subclassKey"
		}) do
			local var_561_0 = arg_561_0[iter_561_1]

			if var_561_0 == "백골 창병" or var_561_0 == "Bone Spearman" or var_561_0 == "백골 창병 (Bone Spearman)" then
				return true
			end
		end

		return false
	end
}

function __recovered_scope_0.var_0_301.onHit(arg_562_0, arg_562_1, arg_562_2)
	if not __recovered_scope_0.var_0_301.matches(arg_562_0) or not arg_562_2 or not arg_562_2.basicAttack or arg_562_2.skillDamage or not arg_562_1 or not arg_562_1.alive or arg_562_1.dying or (arg_562_1.hp or 0) <= 0 or arg_562_1.isBoss or arg_562_1.isFinalBoss or arg_562_1.finalBoss then
		return
	end

	local var_562_0 = (arg_562_0.x or 0) - (arg_562_1.x or 0)
	local var_562_1 = (arg_562_0.y or 0) - (arg_562_1.y or 0)
	local var_562_2 = math.sqrt(var_562_0 * var_562_0 + var_562_1 * var_562_1)

	if var_562_2 <= 1e-06 then
		return
	end

	local var_562_3 = math.min(__recovered_scope_0.var_0_301.pullDistance, var_562_2)

	arg_562_1._boneSpearPulls = arg_562_1._boneSpearPulls or {}
	arg_562_1._boneSpearPulls[#arg_562_1._boneSpearPulls + 1] = {
		progress = 0,
		dx = var_562_0 / var_562_2 * var_562_3,
		dy = var_562_1 / var_562_2 * var_562_3
	}
end

function __recovered_scope_0.var_0_301.updatePull(arg_563_0, arg_563_1)
	arg_563_0._boneSpearPullStep = nil

	local var_563_0 = arg_563_0._boneSpearPulls

	if not var_563_0 then
		return
	end

	if not arg_563_0.alive or arg_563_0.dying or (arg_563_0.hp or 0) <= 0 or arg_563_0.isBoss or arg_563_0.isFinalBoss or arg_563_0.finalBoss then
		arg_563_0._boneSpearPulls = nil

		return
	end

	local var_563_1 = math.max(0, arg_563_1 or 0) / __recovered_scope_0.var_0_301.pullDuration

	if var_563_1 > 0 then
		arg_563_0._boneSpearPullStep = true
	end

	for iter_563_0 = #var_563_0, 1, -1 do
		local var_563_2 = var_563_0[iter_563_0]
		local var_563_3 = var_563_2.progress
		local var_563_4 = math.min(1, var_563_3 + var_563_1)
		local var_563_5 = var_563_4 * var_563_4 * (3 - 2 * var_563_4) - var_563_3 * var_563_3 * (3 - 2 * var_563_3)

		arg_563_0.x, arg_563_0.y = (arg_563_0.x or 0) + var_563_2.dx * var_563_5, (arg_563_0.y or 0) + var_563_2.dy * var_563_5
		var_563_2.progress = var_563_4

		if var_563_4 >= 1 then
			table.remove(var_563_0, iter_563_0)
		end
	end

	if #var_563_0 == 0 then
		arg_563_0._boneSpearPulls = nil
	end
end

 __recovered_scope_0.var_0_302 = __recovered_scope_0.var_0_301
 __recovered_scope_0.var_0_303 = nil
 __recovered_scope_0.var_0_304 = {
	maxAmmo = 3,
	burstGap = 0.12,
	matches = function(arg_564_0)
		return require("src.game.projectiles").gunslinger_bullet.isBoneMage(arg_564_0)
	end,
	state = function(arg_565_0)
		local var_565_0 = arg_565_0._boneMageReserve

		if not var_565_0 then
			var_565_0 = {
				followup = false,
				rewind = false,
				count = 0,
				engaged = false,
				burst = false
			}
			arg_565_0._boneMageReserve = var_565_0
		end

		return var_565_0
	end,
	blocked = function(arg_566_0)
		return not arg_566_0 or arg_566_0.alive == false or arg_566_0.dying or (arg_566_0.hp or 1) <= 0 or (arg_566_0.stunT or 0) > 0 or (arg_566_0.fearT or 0) > 0 or arg_566_0._wastelandPiperCharm or arg_566_0._succubusCharm or arg_566_0._cosmicPressure or arg_566_0._caveBasiliskPetrified or arg_566_0._oathHelmStone or arg_566_0._venomMawSwallowed or arg_566_0._marshDriveAir or arg_566_0._spaceWizardExchangeMotion or arg_566_0._hellEnforcerExecutionLock or arg_566_0._suppressAttack or arg_566_0._forceAnim or arg_566_0._casting
	end,
	target = function(arg_567_0, arg_567_1, arg_567_2, arg_567_3, arg_567_4)
		local var_567_0 = require("src.game.combat").anchored_stance.range(arg_567_1) + 1
		local var_567_1
		local var_567_2 = var_567_0 * var_567_0

		for iter_567_0, iter_567_1 in ipairs(arg_567_0.enemies or {}) do
			if arg_567_2(iter_567_1, arg_567_1, arg_567_0) and (not arg_567_4 or arg_567_4(arg_567_0, arg_567_1, iter_567_1)) then
				local var_567_3 = arg_567_3(arg_567_1, iter_567_1)

				if var_567_3 <= var_567_2 then
					var_567_1, var_567_2 = iter_567_1, var_567_3
				end
			end
		end

		return var_567_1
	end
}

function __recovered_scope_0.var_0_304.update(arg_568_0, arg_568_1, arg_568_2, arg_568_3, arg_568_4, arg_568_5, arg_568_6)
	if not __recovered_scope_0.var_0_304.matches(arg_568_1) then
		return
	end

	local var_568_0 = __recovered_scope_0.var_0_304.state(arg_568_1)

	if var_568_0.burst and not arg_568_1.shotPending then
		var_568_0.burst, var_568_0.rewind, var_568_0.followup = false, false, false
	end

	if arg_568_0.mode ~= "battle" or arg_568_6 or arg_568_2 <= 0 or __recovered_scope_0.var_0_304.blocked(arg_568_1) or not var_568_0.engaged or arg_568_1.shotPending or var_568_0.burst or var_568_0.count >= __recovered_scope_0.var_0_304.maxAmmo then
		return
	end

	if __recovered_scope_0.var_0_304.target(arg_568_0, arg_568_1, arg_568_3, arg_568_4, arg_568_5) then
		return
	end

	if (arg_568_1.coolTicks or 0) <= 0 then
		var_568_0.count = var_568_0.count + 1
		arg_568_1.coolTicks = math.max(1, var_568_0.periodTicks or arg_568_1.atkTicks or 48)
	end
end

function __recovered_scope_0.var_0_304.ready(arg_569_0)
	return __recovered_scope_0.var_0_304.matches(arg_569_0) and arg_569_0._boneMageReserve and arg_569_0._boneMageReserve.count > 0 and not arg_569_0.shotPending and not __recovered_scope_0.var_0_304.blocked(arg_569_0)
end

function __recovered_scope_0.var_0_304.begin(arg_570_0)
	if not __recovered_scope_0.var_0_304.matches(arg_570_0) then
		return
	end

	local var_570_0 = __recovered_scope_0.var_0_304.state(arg_570_0)

	var_570_0.burst = var_570_0.count > 0
	var_570_0.rewind, var_570_0.followup = false, false
	var_570_0.periodTicks = math.max(1, arg_570_0.coolTicks or arg_570_0.atkTicks or 48)
end

function __recovered_scope_0.var_0_304.released(arg_571_0, arg_571_1)
	if not __recovered_scope_0.var_0_304.matches(arg_571_0) or arg_571_1 then
		return
	end

	local var_571_0 = __recovered_scope_0.var_0_304.state(arg_571_0)

	var_571_0.engaged = true

	if not var_571_0.burst then
		return
	end

	var_571_0.count = math.max(0, var_571_0.count - 1)

	if var_571_0.count > 0 then
		var_571_0.rewind = true
	else
		var_571_0.burst, var_571_0.followup = false, false
		arg_571_0.coolTicks = var_571_0.periodTicks or arg_571_0.atkTicks or 48
	end
end

function __recovered_scope_0.var_0_304.prepare(arg_572_0, arg_572_1, arg_572_2, arg_572_3, arg_572_4, arg_572_5)
	local var_572_0 = arg_572_1._boneMageReserve

	if not var_572_0 or not var_572_0.rewind then
		return
	end

	if arg_572_5 then
		return
	end

	var_572_0.rewind = false

	if __recovered_scope_0.var_0_304.blocked(arg_572_1) or not arg_572_1.shotPending or not arg_572_1.anim or arg_572_1.anim.name ~= "attack" then
		var_572_0.burst, var_572_0.followup = false, false
		arg_572_1.shotPending = false

		return
	end

	local var_572_1 = __recovered_scope_0.var_0_304.target(arg_572_0, arg_572_1, arg_572_2, arg_572_3, arg_572_4)

	if not var_572_1 then
		var_572_0.burst, var_572_0.followup = false, false
		arg_572_1.shotPending = false
		arg_572_1.pendingTarget = nil

		return
	end

	arg_572_1.pendingTarget = var_572_1
	arg_572_1._attackFacing = (var_572_1.x or 0) >= (arg_572_1.x or 0) and 1 or -1
	arg_572_1.facing = arg_572_1._attackFacing
	arg_572_1.anim.frame, arg_572_1.anim.t = 3, 0
	var_572_0.followup = true

	require("src.game.awakening").basicStart(arg_572_0, arg_572_1, var_572_1)
end

function __recovered_scope_0.var_0_304.releaseTarget(arg_573_0, arg_573_1, arg_573_2, arg_573_3, arg_573_4, arg_573_5)
	local var_573_0 = arg_573_1._boneMageReserve

	if not var_573_0 or not var_573_0.burst or arg_573_1._isVolleyShot then
		return arg_573_2
	end

	local var_573_1 = require("src.game.combat").anchored_stance.range(arg_573_1) + 1

	if not __recovered_scope_0.var_0_304.blocked(arg_573_1) then
		if arg_573_2 and arg_573_3(arg_573_2, arg_573_1, arg_573_0) and (not arg_573_5 or arg_573_5(arg_573_0, arg_573_1, arg_573_2)) and arg_573_4(arg_573_1, arg_573_2) <= var_573_1 * var_573_1 then
			return arg_573_2
		end

		arg_573_2 = __recovered_scope_0.var_0_304.target(arg_573_0, arg_573_1, arg_573_3, arg_573_4, arg_573_5)

		if arg_573_2 then
			arg_573_1._attackFacing = (arg_573_2.x or 0) >= (arg_573_1.x or 0) and 1 or -1
			arg_573_1.facing = arg_573_1._attackFacing

			return arg_573_2
		end
	end

	var_573_0.burst, var_573_0.rewind, var_573_0.followup = false, false, false
	arg_573_1.pendingTarget = nil

	return nil
end

function __recovered_scope_0.var_0_304.animation(arg_574_0, arg_574_1, arg_574_2)
	local var_574_0 = arg_574_0._boneMageReserve

	if var_574_0 and var_574_0.followup and arg_574_0.anim and arg_574_0.anim.name == "attack" and arg_574_0.anim.frame == 3 then
		return __recovered_scope_0.var_0_304.burstGap, 1
	end

	return arg_574_1, arg_574_2
end

function __recovered_scope_0.var_0_304.pending(arg_575_0)
	local var_575_0 = arg_575_0._boneMageReserve

	return var_575_0 and var_575_0.rewind or false
end

 __recovered_scope_0.var_0_305 = __recovered_scope_0.var_0_304
 __recovered_scope_0.var_0_306 = nil
 __recovered_scope_0.var_0_307 = {
	GAP = 3,
	FX = 1.2,
	IN = 0.5,
	OUT = 0.4,
	COOLDOWN = 3,
	MAX = 130,
	REACH_MAX = 150,
	REACH_MIN = 60
}
 __recovered_scope_0.var_0_308 = {
	["셰이드 (Shade)"] = true,
	Shade = true,
	셰이드 = true
}

 function __recovered_scope_0.var_0_309(arg_576_0)
	return arg_576_0 and arg_576_0.alive and not arg_576_0.dying and (arg_576_0.hp or 1) > 0
end

function __recovered_scope_0.var_0_307.matches(arg_577_0)
	return arg_577_0 ~= nil and arg_577_0.sym == "D" and (tonumber(arg_577_0.rank or arg_577_0.star) or 1) <= 1 and (__recovered_scope_0.var_0_308[arg_577_0.subclass] or __recovered_scope_0.var_0_308[arg_577_0.subclassName] or __recovered_scope_0.var_0_308[arg_577_0.subclassKey]) == true
end

function __recovered_scope_0.var_0_307.held(arg_578_0)
	return (arg_578_0.stunT or 0) > 0 or (arg_578_0.fearT or 0) > 0 or (arg_578_0.bindingT or 0) > 0 or (arg_578_0.rootT or 0) > 0 or (arg_578_0._ankleTrapT or 0) > 0 or (arg_578_0._gateNetT or 0) > 0 or (arg_578_0.freezeT or 0) > 0 or (arg_578_0._frostSpikeFreezeT or 0) > 0 or arg_578_0._caveBasiliskPetrified or arg_578_0._oathHelmStone or arg_578_0._cosmicPressure or arg_578_0._succubusCharm or arg_578_0._wastelandPiperCharm or arg_578_0._marshDriveAir or arg_578_0._hellEnforcerExecutionLock or arg_578_0._spaceWizardExchangeMotion or arg_578_0._escapeCloakRetreat or arg_578_0._venomMawSwallowed or arg_578_0._collisionDrivePassenger or arg_578_0._kb or arg_578_0._posLerp or arg_578_0._dimensionalPocket or rawget(arg_578_0, "_dimensionalDuel") or false
end

function __recovered_scope_0.var_0_307.ready(arg_579_0, arg_579_1)
	local var_579_0 = arg_579_0._waveTimeAcc or 0
	local var_579_1 = arg_579_1._shadowStepAt

	return var_579_1 == nil or var_579_0 < var_579_1 or var_579_0 - var_579_1 >= __recovered_scope_0.var_0_307.COOLDOWN - 1e-09
end

function __recovered_scope_0.var_0_307.busy(arg_580_0, arg_580_1)
	local var_580_0 = arg_580_1 and arg_580_1._shadowStep

	if not var_580_0 then
		return false
	end

	local var_580_1 = arg_580_0 and arg_580_0._waveTimeAcc or 0

	if not __recovered_scope_0.var_0_309(arg_580_1) or var_580_1 < var_580_0.at or var_580_1 - var_580_0.at > var_580_0.outT + var_580_0.inT + 0.5 or var_580_0.fx.finished then
		arg_580_1._shadowStep = nil

		return false
	end

	return true
end

function __recovered_scope_0.var_0_307.protected(arg_581_0, arg_581_1)
	local var_581_0 = arg_581_1 and arg_581_1._shadowStep

	if not var_581_0 or not __recovered_scope_0.var_0_309(arg_581_1) or var_581_0.fx.finished then
		return false
	end

	if arg_581_0 and not __recovered_scope_0.var_0_307.busy(arg_581_0, arg_581_1) then
		return false
	end

	return (var_581_0.fx.t or 0) < var_581_0.outT + var_581_0.inT
end

function __recovered_scope_0.var_0_307.pose(arg_582_0, arg_582_1)
	local var_582_0 = arg_582_0.getUnitAssetForAlly and arg_582_0:getUnitAssetForAlly(arg_582_1)
	local var_582_1
	local var_582_2

	if arg_582_0.entityGroundPoint then
		var_582_1, var_582_2 = arg_582_0:entityGroundPoint(arg_582_1)
	end

	local var_582_3 = {
		footX = var_582_1 or arg_582_1.x or 0,
		footY = var_582_2 or (arg_582_1.y or 0) + 16,
		w = arg_582_1._bodyColW or 24
	}

	if not var_582_0 then
		return var_582_3
	end

	local var_582_4 = require("src.game.projectiles").spellblade_vortex

	var_582_3.x0, var_582_3.y0 = var_582_4.spritePoint(arg_582_0, arg_582_1, var_582_0, 0, 0, false)

	local var_582_5, var_582_6 = var_582_4.spritePoint(arg_582_0, arg_582_1, var_582_0, 1, 1, false)

	var_582_3.dx, var_582_3.dy = var_582_5 - var_582_3.x0, var_582_6 - var_582_3.y0

	local var_582_7 = arg_582_1.anim and arg_582_1.anim.name or "idle"

	if not var_582_0.animations or not var_582_0.animations[var_582_7] then
		var_582_7 = "idle"
	end

	local var_582_8 = var_582_0.animations and var_582_0.animations[var_582_7] and var_582_0.animations[var_582_7].frames or 1
	local var_582_9 = var_582_0.quads and var_582_0.quads[var_582_7]

	var_582_3.asset, var_582_3.quad = var_582_0, var_582_9 and var_582_9[math.max(1, math.min(var_582_8, arg_582_1.anim and arg_582_1.anim.frame or 1))]

	return var_582_3
end

function __recovered_scope_0.var_0_307.destination(arg_583_0, arg_583_1, arg_583_2)
	if not arg_583_1._bodyColX or not arg_583_1._bodyColW or not arg_583_2._bodyColX or not arg_583_2._bodyColW then
		return nil
	end

	local var_583_0 = require("src.game.combat").separation.bodyDeltaX(arg_583_1, arg_583_2) >= 0 and 1 or -1
	local var_583_1 = arg_583_2._bodyColX + arg_583_2._bodyColW * 0.5 - var_583_0 * ((arg_583_2._bodyColW + arg_583_1._bodyColW) * 0.5 + __recovered_scope_0.var_0_307.GAP)
	local var_583_2 = (arg_583_1.x or 0) + var_583_1 - (arg_583_1._bodyColX + arg_583_1._bodyColW * 0.5)
	local var_583_3 = arg_583_2.y or arg_583_1.y or 0
	local var_583_4 = arg_583_0.ui and arg_583_0.ui.battle
	local var_583_5 = math.max(0.1, math.min(1, tonumber(var_583_4 and var_583_4.rangeEllipseYScale) or 0.5))
	local var_583_6 = var_583_2 - (arg_583_1.x or 0)
	local var_583_7 = var_583_3 - (arg_583_1.y or 0)

	if var_583_6 * var_583_0 < 0 or var_583_6 * var_583_6 + (var_583_7 / var_583_5)^2 > __recovered_scope_0.var_0_307.MAX * __recovered_scope_0.var_0_307.MAX then
		return nil
	end

	for iter_583_0, iter_583_1 in ipairs(arg_583_0.enemies or {}) do
		if iter_583_1 ~= arg_583_2 and iter_583_1.isCrystalGuardWall and __recovered_scope_0.var_0_309(iter_583_1) and ((iter_583_1.x or 0) - (arg_583_1.x or 0)) * ((iter_583_1.x or 0) - var_583_2) <= 0 then
			return nil
		end
	end

	local var_583_8, var_583_9 = require("src.game.combat").stage6_rift.clampDestinationToLane(arg_583_0, arg_583_1, var_583_2, var_583_3)

	if math.abs((var_583_9 or var_583_3) - var_583_3) > 0.5 then
		return nil
	end

	return var_583_2, var_583_3, var_583_0
end

 function __recovered_scope_0.var_0_310(arg_584_0, arg_584_1, arg_584_2)
	arg_584_0.x, arg_584_0.y = arg_584_0.x + arg_584_1, arg_584_0.y + arg_584_2

	for iter_584_0, iter_584_1 in ipairs({
		"colX",
		"_bodyColX"
	}) do
		if arg_584_0[iter_584_1] then
			arg_584_0[iter_584_1] = arg_584_0[iter_584_1] + arg_584_1
		end
	end

	for iter_584_2, iter_584_3 in ipairs({
		"colY",
		"_bodyColY"
	}) do
		if arg_584_0[iter_584_3] then
			arg_584_0[iter_584_3] = arg_584_0[iter_584_3] + arg_584_2
		end
	end
end

function __recovered_scope_0.var_0_307.try(arg_585_0, arg_585_1, arg_585_2, arg_585_3)
	if __recovered_scope_0.var_0_307.busy(arg_585_0, arg_585_1) then
		return true
	end

	if not __recovered_scope_0.var_0_307.matches(arg_585_1) or not __recovered_scope_0.var_0_309(arg_585_1) or not __recovered_scope_0.var_0_309(arg_585_2) or __recovered_scope_0.var_0_307.held(arg_585_1) or not __recovered_scope_0.var_0_307.ready(arg_585_0, arg_585_1) then
		return false
	end

	if not arg_585_3 or arg_585_3 <= __recovered_scope_0.var_0_307.REACH_MIN or arg_585_3 > __recovered_scope_0.var_0_307.REACH_MAX then
		return false
	end

	local var_585_0, var_585_1, var_585_2 = __recovered_scope_0.var_0_307.destination(arg_585_0, arg_585_1, arg_585_2)

	if not var_585_0 then
		return false
	end

	local var_585_3 = arg_585_1.x
	local var_585_4 = arg_585_1.y

	__recovered_scope_0.var_0_310(arg_585_1, var_585_0 - var_585_3, var_585_1 - var_585_4)

	local var_585_5 = arg_585_0._awakeningMeleeContact
	local var_585_6 = not var_585_5 or var_585_5(arg_585_1, arg_585_2)
	local var_585_7 = var_585_6 and __recovered_scope_0.var_0_307.pose(arg_585_0, arg_585_1)

	__recovered_scope_0.var_0_310(arg_585_1, var_585_3 - arg_585_1.x, var_585_4 - arg_585_1.y)

	if not var_585_6 then
		return false
	end

	arg_585_1.facing, arg_585_1._walkAnimGraceT = var_585_2

	local var_585_8 = arg_585_0._waveTimeAcc or 0
	local var_585_9 = {
		t = 0,
		kind = "shadow_step",
		dur = __recovered_scope_0.var_0_307.FX,
		owner = arg_585_1,
		face = var_585_2,
		outT = __recovered_scope_0.var_0_307.OUT,
		inT = __recovered_scope_0.var_0_307.IN,
		from = __recovered_scope_0.var_0_307.pose(arg_585_0, arg_585_1),
		landX = var_585_7.footX,
		landY = var_585_7.footY
	}

	arg_585_1._shadowStepAt = var_585_8
	arg_585_1._shadowStep = {
		at = var_585_8,
		target = arg_585_2,
		toX = var_585_0,
		toY = var_585_1,
		outT = __recovered_scope_0.var_0_307.OUT,
		inT = __recovered_scope_0.var_0_307.IN,
		fx = var_585_9
	}
	arg_585_0.vfx = arg_585_0.vfx or {}
	arg_585_0.vfx[#arg_585_0.vfx + 1] = var_585_9

	return true
end

function __recovered_scope_0.var_0_307.track(arg_586_0, arg_586_1)
	local var_586_0 = arg_586_1.owner
	local var_586_1 = var_586_0 and var_586_0._shadowStep

	if not var_586_1 or var_586_1.fx ~= arg_586_1 then
		return
	end

	if not __recovered_scope_0.var_0_309(var_586_0) then
		var_586_0._shadowStep = nil

		return
	end

	local var_586_2 = arg_586_1.t or 0

	if not var_586_1.moved and var_586_2 >= var_586_1.outT then
		var_586_1.moved = true

		local var_586_3 = var_586_1.toX
		local var_586_4 = var_586_1.toY

		if __recovered_scope_0.var_0_309(var_586_1.target) then
			local var_586_5, var_586_6 = __recovered_scope_0.var_0_307.destination(arg_586_0, var_586_0, var_586_1.target)

			if var_586_5 then
				var_586_3, var_586_4 = var_586_5, var_586_6
			end
		end

		__recovered_scope_0.var_0_310(var_586_0, var_586_3 - var_586_0.x, var_586_4 - var_586_0.y)

		arg_586_1.to = __recovered_scope_0.var_0_307.pose(arg_586_0, var_586_0)
		arg_586_1.landX, arg_586_1.landY = arg_586_1.to.footX, arg_586_1.to.footY
	end

	if var_586_1.moved then
		arg_586_1.to = __recovered_scope_0.var_0_307.pose(arg_586_0, var_586_0)
	else
		arg_586_1.from = __recovered_scope_0.var_0_307.pose(arg_586_0, var_586_0)
	end

	if var_586_2 >= var_586_1.outT + var_586_1.inT then
		var_586_0._shadowStep = nil
	end
end

 __recovered_scope_0.var_0_311 = __recovered_scope_0.var_0_307
 __recovered_scope_0.var_0_312 = nil
 __recovered_scope_0.var_0_313 = {
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_314(arg_587_0)
	return arg_587_0 and arg_587_0.alive and not arg_587_0.dying and (arg_587_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_313.runtime(arg_588_0)
	return arg_588_0 and arg_588_0.primarySkillDef and arg_588_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_313.matches(arg_589_0)
	return arg_589_0 ~= nil and arg_589_0.sym == "D" and arg_589_0.skill ~= nil and arg_589_0.skill.kind == "ShrinkRay"
end

function __recovered_scope_0.var_0_313.isBoss(arg_590_0)
	return arg_590_0 ~= nil and (arg_590_0.isBoss == true or arg_590_0.isFinalBoss == true or arg_590_0.finalBoss == true)
end

function __recovered_scope_0.var_0_313.anim(arg_591_0)
	return __recovered_scope_0.var_0_313.runtime(arg_591_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_313.cooldown(arg_592_0)
	return tonumber(__recovered_scope_0.var_0_313.runtime(arg_592_0).cooldown) or 7
end

function __recovered_scope_0.var_0_313.targetable(arg_593_0, arg_593_1, arg_593_2, arg_593_3)
	return __recovered_scope_0.var_0_314(arg_593_2) and (not arg_593_3 or arg_593_3(arg_593_2, arg_593_1, arg_593_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_593_0, arg_593_1, arg_593_2))
end

function __recovered_scope_0.var_0_313.picks(arg_594_0, arg_594_1, arg_594_2, arg_594_3, arg_594_4)
	arg_594_4 = arg_594_4 or arg_594_0._awakeningMetric

	local var_594_0 = __recovered_scope_0.var_0_313.runtime(arg_594_1)
	local var_594_1 = tonumber(var_594_0.range) or 150
	local var_594_2 = math.max(1, math.floor(tonumber(var_594_0.maxTargets) or 1))
	local var_594_3 = {}

	for iter_594_0, iter_594_1 in ipairs(arg_594_0.enemies or {}) do
		if __recovered_scope_0.var_0_313.targetable(arg_594_0, arg_594_1, iter_594_1, arg_594_3) then
			local var_594_4 = arg_594_4 and arg_594_4(arg_594_1, iter_594_1) or ((iter_594_1.x or 0) - (arg_594_1.x or 0))^2 + ((iter_594_1.y or 0) - (arg_594_1.y or 0))^2

			if var_594_4 <= var_594_1 * var_594_1 then
				var_594_3[#var_594_3 + 1] = {
					e = iter_594_1,
					d = var_594_4
				}
			end
		end
	end

	table.sort(var_594_3, function(arg_595_0, arg_595_1)
		return arg_595_0.d > arg_595_1.d
	end)

	local var_594_5 = {}

	if var_594_3[1] then
		local var_594_6 = (var_594_3[1].e.x or 0) >= (arg_594_1.x or 0) and 1 or -1

		for iter_594_2, iter_594_3 in ipairs(var_594_3) do
			if var_594_2 <= #var_594_5 then
				break
			end

			if #var_594_5 == 0 or ((iter_594_3.e.x or 0) - (arg_594_1.x or 0)) * var_594_6 >= 0 then
				var_594_5[#var_594_5 + 1] = iter_594_3.e
			end
		end
	elseif __recovered_scope_0.var_0_313.targetable(arg_594_0, arg_594_1, arg_594_2, arg_594_3) then
		var_594_5[1] = arg_594_2
	end

	return var_594_5
end

function __recovered_scope_0.var_0_313.pick(arg_596_0, arg_596_1, arg_596_2, arg_596_3, arg_596_4)
	return __recovered_scope_0.var_0_313.picks(arg_596_0, arg_596_1, arg_596_2, arg_596_3, arg_596_4)[1]
end

function __recovered_scope_0.var_0_313.barFill(arg_597_0)
	local var_597_0 = arg_597_0.skill

	if var_597_0.state == "active" then
		return 1
	end

	return math.max(0, math.min(1, (var_597_0.cdT or 0) / math.max(0.001, var_597_0.cd or __recovered_scope_0.var_0_313.cooldown(arg_597_0))))
end

function __recovered_scope_0.var_0_313.roll(arg_598_0, arg_598_1, arg_598_2)
	local var_598_0 = arg_598_1 and arg_598_1.skill

	if not __recovered_scope_0.var_0_313.matches(arg_598_1) or not arg_598_2 or arg_598_2.basicAttack ~= true or not __recovered_scope_0.var_0_314(arg_598_1) then
		return false
	end

	local var_598_1 = __recovered_scope_0.var_0_313.runtime(arg_598_1)

	if var_598_1.castOnCooldown then
		return false
	end

	if var_598_0.state == "active" or (arg_598_1.rank or 1) < (tonumber(var_598_1.minRank) or 2) then
		return false
	end

	if arg_598_2.crossfireAttack or arg_598_2.overdriveChop or arg_598_1._isBraceAttack or not __recovered_scope_0.var_0_313.canAct(arg_598_1) then
		return false
	end

	if _G.__slotIsAllySkillBlockedByLizardWarlord and _G.__slotIsAllySkillBlockedByLizardWarlord(arg_598_0, arg_598_1) then
		return false
	end

	if not var_598_0.rayForced and (var_598_0.cdT or 0) < (var_598_0.cd or __recovered_scope_0.var_0_313.cooldown(arg_598_1)) - 1e-09 then
		return false
	end

	var_598_0.rayForced = nil

	__recovered_scope_0.var_0_313.begin(arg_598_0, arg_598_1, arg_598_2.target)

	return true
end

function __recovered_scope_0.var_0_313.begin(arg_599_0, arg_599_1, arg_599_2)
	local var_599_0 = arg_599_1.skill

	var_599_0.rayForced = nil
	var_599_0.cd, var_599_0.cdT = __recovered_scope_0.var_0_313.cooldown(arg_599_1), 0
	var_599_0.state, var_599_0.active = "active", true
	arg_599_1._pendingDuelistHit = nil
	arg_599_1._casting, arg_599_1._suppressAttack = true, true

	local var_599_1 = __recovered_scope_0.var_0_313.anim(arg_599_1)

	arg_599_1._forceAnim, arg_599_1._forceAnimT = var_599_1, 0.2
	arg_599_1.anim = arg_599_1.anim or {}
	arg_599_1.anim.name, arg_599_1.anim.frame, arg_599_1.anim.t, arg_599_1.anim.reverse = var_599_1, 1, 0
	arg_599_1.anim._desynced = true

	local var_599_2 = __recovered_scope_0.var_0_313.pick(arg_599_0, arg_599_1, arg_599_2)

	var_599_0.rayCast = {
		fired = false,
		fallback = arg_599_2,
		target = var_599_2,
		anim = var_599_1
	}
	var_599_0.targetRef = var_599_2

	if var_599_2 then
		local var_599_3 = (var_599_2.x or 0) >= (arg_599_1.x or 0) and 1 or -1

		arg_599_1.facing, arg_599_1._attackFacing = var_599_3, var_599_3
	end

	return var_599_0.rayCast
end

function __recovered_scope_0.var_0_313.finish(arg_600_0)
	local var_600_0 = arg_600_0.skill

	if var_600_0 then
		var_600_0.state, var_600_0.active, var_600_0.rayCast, var_600_0.targetRef = nil, false
	end

	arg_600_0._casting, arg_600_0._suppressAttack = false, false
	arg_600_0._forceAnim, arg_600_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_313.updateCast(arg_601_0, arg_601_1, arg_601_2, arg_601_3, arg_601_4, arg_601_5)
	local var_601_0 = arg_601_1.skill

	var_601_0.cd = __recovered_scope_0.var_0_313.cooldown(arg_601_1)

	local var_601_1 = arg_601_0._waveTimeAcc or 0

	if var_601_0.rayBattle ~= arg_601_0 or var_601_1 < (var_601_0.rayClock or 0) then
		var_601_0.cdT = var_601_0.cd
	end

	var_601_0.rayBattle, var_601_0.rayClock = arg_601_0, var_601_1

	if arg_601_5 then
		var_601_0.rayForced = true
	end

	var_601_0.cdT = math.min(var_601_0.cd, (var_601_0.cdT or 0) + math.max(0, arg_601_2 or 0))

	if var_601_0.state ~= "active" then
		local var_601_2 = __recovered_scope_0.var_0_313.runtime(arg_601_1)

		if not var_601_2.castOnCooldown or (arg_601_2 or 0) <= 0 or not __recovered_scope_0.var_0_313.matches(arg_601_1) or not __recovered_scope_0.var_0_313.canAct(arg_601_1) or (arg_601_1.rank or 1) < (tonumber(var_601_2.minRank) or 2) or arg_601_1._pendingDuelistHit or arg_601_1._casting then
			return
		end

		if _G.__slotIsAllySkillBlockedByLizardWarlord and _G.__slotIsAllySkillBlockedByLizardWarlord(arg_601_0, arg_601_1) then
			return
		end

		if not var_601_0.rayForced and (var_601_0.cdT or 0) < var_601_0.cd - 1e-09 then
			return
		end

		local var_601_3 = __recovered_scope_0.var_0_313.pick(arg_601_0, arg_601_1, nil, arg_601_3, arg_601_4)

		if not var_601_3 then
			return
		end

		__recovered_scope_0.var_0_313.begin(arg_601_0, arg_601_1, var_601_3)

		return
	end

	local var_601_4 = var_601_0.rayCast

	if not __recovered_scope_0.var_0_313.canAct(arg_601_1) or not var_601_4 or not arg_601_1.anim or arg_601_1.anim.name ~= var_601_4.anim then
		__recovered_scope_0.var_0_313.finish(arg_601_1)

		return
	end

	arg_601_1._casting, arg_601_1._suppressAttack = true, true
	arg_601_1._forceAnim, arg_601_1._forceAnimT = var_601_4.anim, math.max(0.2, (arg_601_2 or 0) + 0.1)
end

function __recovered_scope_0.var_0_313.frameDuration(arg_602_0, arg_602_1, arg_602_2)
	local var_602_0 = arg_602_0.skill
	local var_602_1 = var_602_0 and var_602_0.rayCast

	if not var_602_1 or not arg_602_0.anim or arg_602_0.anim.name ~= var_602_1.anim then
		return arg_602_1, arg_602_2
	end

	return tonumber(__recovered_scope_0.var_0_313.runtime(arg_602_0).animationSpeed) or 0.08, 1
end

function __recovered_scope_0.var_0_313.onAnimation(arg_603_0, arg_603_1, arg_603_2, arg_603_3, arg_603_4, arg_603_5)
	local var_603_0 = arg_603_1.skill
	local var_603_1 = var_603_0 and var_603_0.rayCast

	if not var_603_1 then
		return
	end

	if not __recovered_scope_0.var_0_313.canAct(arg_603_1) or not arg_603_1.anim or arg_603_1.anim.name ~= var_603_1.anim then
		__recovered_scope_0.var_0_313.finish(arg_603_1)

		return
	end

	local var_603_2 = __recovered_scope_0.var_0_313.runtime(arg_603_1)
	local var_603_3 = tonumber(var_603_2.releaseFrame) or 7

	if not var_603_1.fired and var_603_3 <= (arg_603_1.anim.frame or 1) then
		arg_603_1.anim.frame, arg_603_1.anim.t = var_603_3, 0
		var_603_1.fired = true

		local var_603_4 = __recovered_scope_0.var_0_313.picks(arg_603_0, arg_603_1, var_603_1.fallback, arg_603_4, arg_603_5)

		if var_603_4[1] then
			local var_603_5 = (var_603_4[1].x or 0) >= (arg_603_1.x or 0) and 1 or -1

			arg_603_1.facing, arg_603_1._attackFacing = var_603_5, var_603_5
		end

		local var_603_6 = require("src.game.projectiles").shrink_ray
		local var_603_7, var_603_8 = var_603_6.origin(arg_603_0, arg_603_1, arg_603_2)

		var_603_1.beams = {}

		for iter_603_0 = 1, math.max(1, #var_603_4) do
			var_603_1.beams[iter_603_0] = var_603_6.launch(arg_603_0, arg_603_1, var_603_4[iter_603_0], arg_603_3, tonumber(var_603_2.dmgMul) or 1.4, var_603_2.style, var_603_7, var_603_8, iter_603_0, math.max(1, #var_603_4))
		end

		var_603_1.beam = var_603_1.beams[1]

		return
	end

	if (arg_603_2 and arg_603_2.animations and arg_603_2.animations[var_603_1.anim] and arg_603_2.animations[var_603_1.anim].frames or 12) < (arg_603_1.anim.frame or 1) then
		__recovered_scope_0.var_0_313.finish(arg_603_1)
	end
end

function __recovered_scope_0.var_0_313.strike(arg_604_0, arg_604_1, arg_604_2, arg_604_3)
	local var_604_0 = arg_604_1.owner

	if arg_604_3 then
		arg_604_3(arg_604_2, (arg_604_1.atk or 0) * (arg_604_1.dmgMul or 1.4), var_604_0, nil, {
			battleSkillDamage = true,
			shrinkRay = true,
			basicAttack = false
		})
	end

	if not __recovered_scope_0.var_0_314(arg_604_2) then
		return nil
	end

	return __recovered_scope_0.var_0_313.shrink(arg_604_2, var_604_0)
end

function __recovered_scope_0.var_0_313.shrink(arg_605_0, arg_605_1)
	local var_605_0 = __recovered_scope_0.var_0_313.runtime(arg_605_1)
	local var_605_1 = __recovered_scope_0.var_0_313.isBoss(arg_605_0)
	local var_605_2 = __recovered_scope_0.var_0_43.getVisualScale(arg_605_0) < 0.999

	arg_605_0._shrinkRay = {
		dur = tonumber(var_605_0.duration) or 3,
		cut = var_605_1 and (tonumber(var_605_0.bossCut) or 0.1) or tonumber(var_605_0.cut) or 0.3,
		scale = var_605_1 and (tonumber(var_605_0.bossScale) or 0.9) or tonumber(var_605_0.scale) or 0.75,
		source = arg_605_1,
		boss = var_605_1
	}

	if not var_605_2 then
		arg_605_0._shrinkScalePoof = {
			t = 0,
			kind = "shrink",
			dur = 0.4
		}
	end

	require("src.game.combat").antidote_fruit.onDebuff(arg_605_0)

	return arg_605_0._shrinkRay
end

function __recovered_scope_0.var_0_313.endBattle(arg_606_0)
	for iter_606_0, iter_606_1 in ipairs(arg_606_0 and arg_606_0.allies or {}) do
		if __recovered_scope_0.var_0_313.matches(iter_606_1) then
			if iter_606_1.skill.rayCast then
				__recovered_scope_0.var_0_313.finish(iter_606_1)
			end

			iter_606_1.skill.rayForced, iter_606_1.skill.rayBattle = nil
		end
	end

	for iter_606_2, iter_606_3 in ipairs(arg_606_0 and arg_606_0.enemies or {}) do
		iter_606_3._shrinkRay = nil
	end
end

 __recovered_scope_0.var_0_315 = __recovered_scope_0.var_0_313
 __recovered_scope_0.var_0_316 = nil
 __recovered_scope_0.var_0_317 = {
	LINGER = 0.9,
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_318(arg_607_0)
	return arg_607_0 and arg_607_0.alive and not arg_607_0.dying and (arg_607_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_317.runtime(arg_608_0)
	return arg_608_0 and arg_608_0.primarySkillDef and arg_608_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_317.anim(arg_609_0)
	return arg_609_0.skill and arg_609_0.skill.activeAnim or __recovered_scope_0.var_0_317.runtime(arg_609_0).activeAnim or "attack3"
end

function __recovered_scope_0.var_0_317.targetable(arg_610_0, arg_610_1, arg_610_2, arg_610_3)
	return __recovered_scope_0.var_0_318(arg_610_2) and (not arg_610_3 or arg_610_3(arg_610_2, arg_610_1, arg_610_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_610_0, arg_610_1, arg_610_2))
end

function __recovered_scope_0.var_0_317.targets(arg_611_0, arg_611_1, arg_611_2, arg_611_3)
	arg_611_3 = arg_611_3 or arg_611_0._awakeningMetric

	local var_611_0 = __recovered_scope_0.var_0_317.runtime(arg_611_1)
	local var_611_1 = tonumber(var_611_0.radius) or 70
	local var_611_2 = math.max(1, math.floor(tonumber(var_611_0.maxTargets) or 3))
	local var_611_3 = {}

	for iter_611_0, iter_611_1 in ipairs(arg_611_0.enemies or {}) do
		if __recovered_scope_0.var_0_317.targetable(arg_611_0, arg_611_1, iter_611_1, arg_611_2) then
			local var_611_4 = arg_611_3 and arg_611_3(arg_611_1, iter_611_1) or ((iter_611_1.x or 0) - (arg_611_1.x or 0))^2 + ((iter_611_1.y or 0) - (arg_611_1.y or 0))^2

			if var_611_4 <= var_611_1 * var_611_1 then
				var_611_3[#var_611_3 + 1] = {
					e = iter_611_1,
					d = var_611_4,
					index = iter_611_0
				}
			end
		end
	end

	table.sort(var_611_3, function(arg_612_0, arg_612_1)
		if arg_612_0.d == arg_612_1.d then
			return arg_612_0.index < arg_612_1.index
		end

		return arg_612_0.d < arg_612_1.d
	end)

	local var_611_5 = {}

	for iter_611_2 = 1, math.min(var_611_2, #var_611_3) do
		var_611_5[iter_611_2] = var_611_3[iter_611_2].e
	end

	return var_611_5
end

function __recovered_scope_0.var_0_317.finish(arg_613_0)
	local var_613_0 = arg_613_0.skill
	local var_613_1 = var_613_0 and var_613_0.danceCast

	if var_613_1 and var_613_1.fx and var_613_1.fx.state == "charge" then
		var_613_1.fx.finished = true
	end

	if var_613_0 then
		var_613_0.state, var_613_0.active, var_613_0.danceCast, var_613_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_613_0)
	end

	arg_613_0._casting, arg_613_0._suppressAttack = false, false
	arg_613_0._forceAnim, arg_613_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_317.pose(arg_614_0, arg_614_1, arg_614_2)
	local var_614_0 = arg_614_0.getUnitAssetForAlly and arg_614_0:getUnitAssetForAlly(arg_614_1)

	if not var_614_0 or not var_614_0.animations then
		arg_614_2.pose = nil

		return
	end

	local var_614_1 = require("src.game.projectiles").shrink_ray
	local var_614_2, var_614_3 = var_614_1.pixel(arg_614_0, arg_614_1, var_614_0, 0, 0)
	local var_614_4, var_614_5 = var_614_1.pixel(arg_614_0, arg_614_1, var_614_0, 1, 1)
	local var_614_6 = arg_614_1.anim and arg_614_1.anim.name or "idle"

	if not var_614_0.animations[var_614_6] then
		var_614_6 = var_614_0.animationAliases and var_614_0.animationAliases[var_614_6] or "idle"
	end

	if not var_614_0.animations[var_614_6] then
		var_614_6 = "idle"
	end

	local var_614_7 = var_614_0.animations[var_614_6] and var_614_0.animations[var_614_6].frames or 1
	local var_614_8 = var_614_0.quads and var_614_0.quads[var_614_6]

	arg_614_2.pose = {
		x0 = var_614_2,
		y0 = var_614_3,
		dx = var_614_4 - var_614_2,
		dy = var_614_5 - var_614_3,
		asset = var_614_0,
		quad = var_614_8 and var_614_8[math.max(1, math.min(var_614_7, arg_614_1.anim and arg_614_1.anim.frame or 1))]
	}

	local var_614_9 = var_614_0.bodyBounds or var_614_0.bounds and var_614_0.bounds.idle and var_614_0.bounds.idle[1]

	if var_614_9 then
		arg_614_2.cx, arg_614_2.cy = var_614_1.pixel(arg_614_0, arg_614_1, var_614_0, var_614_9.x + var_614_9.w * 0.5, var_614_9.y + var_614_9.h * 0.5)
	end
end

function __recovered_scope_0.var_0_317.place(arg_615_0, arg_615_1, arg_615_2)
	local var_615_0
	local var_615_1

	if arg_615_0.entityGroundPoint then
		var_615_0, var_615_1 = arg_615_0:entityGroundPoint(arg_615_1)
	end

	arg_615_2.x, arg_615_2.footY = var_615_0 or arg_615_1.x or 0, var_615_1 or (arg_615_1.y or 0) + 32
	arg_615_2.y = arg_615_2.footY - 10 * (arg_615_2.pixel or 2)
	arg_615_2.face = (arg_615_1.facing or 1) < 0 and -1 or 1

	__recovered_scope_0.var_0_317.pose(arg_615_0, arg_615_1, arg_615_2)

	arg_615_2.cx, arg_615_2.cy = arg_615_2.cx or arg_615_2.x, arg_615_2.cy or arg_615_2.y
end

function __recovered_scope_0.var_0_317.charge(arg_616_0, arg_616_1)
	local var_616_0 = __recovered_scope_0.var_0_317.runtime(arg_616_1)
	local var_616_1 = {
		state = "charge",
		t = 0,
		kind = "reapers_dance",
		dur = math.huge,
		owner = arg_616_1,
		style = var_616_0.style,
		hits = {},
		radius = tonumber(var_616_0.radius) or 70,
		linger = tonumber(var_616_0.linger),
		pixel = math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_616_0) / 32 + 0.5))
	}

	__recovered_scope_0.var_0_317.place(arg_616_0, arg_616_1, var_616_1)

	arg_616_0.vfx = arg_616_0.vfx or {}
	arg_616_0.vfx[#arg_616_0.vfx + 1] = var_616_1

	return var_616_1
end

function __recovered_scope_0.var_0_317.updateCast(arg_617_0, arg_617_1, arg_617_2, arg_617_3, arg_617_4)
	local var_617_0 = arg_617_1.skill

	if not __recovered_scope_0.var_0_317.canAct(arg_617_1) then
		if var_617_0.danceCast then
			__recovered_scope_0.var_0_317.finish(arg_617_1)
		end

		return
	end

	local var_617_1 = __recovered_scope_0.var_0_317.anim(arg_617_1)

	if var_617_0.danceCast then
		if not arg_617_1.anim or arg_617_1.anim.name ~= var_617_1 then
			__recovered_scope_0.var_0_317.finish(arg_617_1)

			return
		end

		arg_617_1._casting, arg_617_1._suppressAttack = true, true
		arg_617_1._forceAnim, arg_617_1._forceAnimT = var_617_1, math.max(0.2, arg_617_2 + 0.1)

		return
	end

	var_617_0.cdT = math.min(var_617_0.cd or 7, (var_617_0.cdT or 0) + arg_617_2)

	if var_617_0.cdT < (var_617_0.cd or 7) then
		return
	end

	var_617_0.ready = true

	if not arg_617_1.anim or not __recovered_scope_0.var_0_317.targets(arg_617_0, arg_617_1, arg_617_3, arg_617_4)[1] then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_617_1)

	var_617_0.state, var_617_0.active, var_617_0.ready, var_617_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_617_0)
	var_617_0.danceCast = {
		struck = false
	}
	arg_617_1._pendingDuelistHit, arg_617_1.shotPending, arg_617_1.pendingTarget = nil, false
	arg_617_1._casting, arg_617_1._suppressAttack = true, true
	arg_617_1._forceAnim, arg_617_1._forceAnimT = var_617_1, math.max(0.2, arg_617_2 + 0.1)
	arg_617_1.anim.name, arg_617_1.anim.frame, arg_617_1.anim.t, arg_617_1.anim.reverse = var_617_1, 1, 0
	arg_617_1.anim._desynced = true
	var_617_0.danceCast.fx = __recovered_scope_0.var_0_317.charge(arg_617_0, arg_617_1)
end

function __recovered_scope_0.var_0_317.frameDuration(arg_618_0, arg_618_1, arg_618_2)
	local var_618_0 = arg_618_0.skill

	if not var_618_0 or not var_618_0.danceCast or not arg_618_0.anim or arg_618_0.anim.name ~= __recovered_scope_0.var_0_317.anim(arg_618_0) then
		return arg_618_1, arg_618_2
	end

	return tonumber(var_618_0.animationSpeed) or tonumber(__recovered_scope_0.var_0_317.runtime(arg_618_0).animationSpeed) or 0.08, 1
end

function __recovered_scope_0.var_0_317.onAnimation(arg_619_0, arg_619_1, arg_619_2, arg_619_3, arg_619_4, arg_619_5, arg_619_6)
	local var_619_0 = arg_619_1.skill
	local var_619_1 = var_619_0 and var_619_0.danceCast

	if not var_619_1 then
		return
	end

	local var_619_2 = __recovered_scope_0.var_0_317.anim(arg_619_1)

	if not __recovered_scope_0.var_0_317.canAct(arg_619_1) or not arg_619_1.anim or arg_619_1.anim.name ~= var_619_2 then
		__recovered_scope_0.var_0_317.finish(arg_619_1)

		return
	end

	local var_619_3 = __recovered_scope_0.var_0_317.runtime(arg_619_1)
	local var_619_4 = tonumber(var_619_0.releaseFrame) or tonumber(var_619_3.releaseFrame) or 7

	if not var_619_1.struck and var_619_4 <= (arg_619_1.anim.frame or 1) then
		arg_619_1.anim.frame, arg_619_1.anim.t = var_619_4, 0
		var_619_1.struck = true

		local var_619_5 = var_619_1.fx

		if not var_619_5 or not not var_619_5.finished then
			var_619_5 = __recovered_scope_0.var_0_317.charge(arg_619_0, arg_619_1)
			var_619_1.fx = var_619_5
		end

		__recovered_scope_0.var_0_317.place(arg_619_0, arg_619_1, var_619_5)

		var_619_5.state, var_619_5.sweepT = "sweep", var_619_5.t
		var_619_5.sweepPose, var_619_5.sweepCx, var_619_5.sweepCy = var_619_5.pose, var_619_5.cx, var_619_5.cy

		local var_619_6 = require("src.game.projectiles").spellblade_vortex

		for iter_619_0, iter_619_1 in ipairs(__recovered_scope_0.var_0_317.targets(arg_619_0, arg_619_1, arg_619_4, arg_619_5)) do
			local var_619_7, var_619_8 = var_619_6.targetPoint(arg_619_0, iter_619_1)
			local var_619_9 = var_619_6.targetCover(arg_619_0, iter_619_1)

			var_619_5.hits[#var_619_5.hits + 1] = {
				target = iter_619_1,
				x = var_619_7,
				y = var_619_8,
				half = var_619_9 and var_619_9.half or 16
			}

			if arg_619_6 then
				arg_619_6(iter_619_1, (arg_619_3 or 0) * (tonumber(var_619_3.dmgMul) or 1.6), arg_619_1, nil, {
					battleSkillDamage = true,
					reapersDance = true,
					basicAttack = false
				})
			end
		end

		return
	end

	local var_619_10 = arg_619_2 and arg_619_2.animations and arg_619_2.animations[var_619_2]

	if (arg_619_1.anim.frame or 1) > (var_619_10 and var_619_10.frames or 12) then
		__recovered_scope_0.var_0_317.finish(arg_619_1)
	end
end

function __recovered_scope_0.var_0_317.track(arg_620_0, arg_620_1)
	if arg_620_1.state == "charge" then
		if __recovered_scope_0.var_0_318(arg_620_1.owner) then
			__recovered_scope_0.var_0_317.place(arg_620_0, arg_620_1.owner, arg_620_1)
		end
	elseif arg_620_1.state == "sweep" then
		if __recovered_scope_0.var_0_318(arg_620_1.owner) then
			__recovered_scope_0.var_0_317.pose(arg_620_0, arg_620_1.owner, arg_620_1)
		else
			arg_620_1.pose = nil
		end

		if (arg_620_1.t or 0) - (arg_620_1.sweepT or 0) >= (arg_620_1.linger or __recovered_scope_0.var_0_317.LINGER) then
			arg_620_1.finished = true
		end
	end
end

function __recovered_scope_0.var_0_317.endBattle(arg_621_0)
	for iter_621_0, iter_621_1 in ipairs(arg_621_0 and arg_621_0.allies or {}) do
		if iter_621_1.skill and iter_621_1.skill.kind == "ReapersDance" and iter_621_1.skill.danceCast then
			__recovered_scope_0.var_0_317.finish(iter_621_1)
		end
	end

	for iter_621_2, iter_621_3 in ipairs(arg_621_0 and arg_621_0.vfx or {}) do
		if iter_621_3.kind == "reapers_dance" then
			iter_621_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_319 = __recovered_scope_0.var_0_317
 __recovered_scope_0.var_0_320 = nil
 __recovered_scope_0.var_0_321 = {
	LINGER = 0.8,
	STRUCK = 0.55,
	GROW = 0.22,
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_322(arg_622_0)
	return arg_622_0 and arg_622_0.alive and not arg_622_0.dying and (arg_622_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_321.runtime(arg_623_0)
	return arg_623_0 and arg_623_0.primarySkillDef and arg_623_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_321.anim(arg_624_0)
	return arg_624_0.skill and arg_624_0.skill.activeAnim or __recovered_scope_0.var_0_321.runtime(arg_624_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_321.isBoss(arg_625_0)
	return arg_625_0 ~= nil and (arg_625_0.isBoss == true or arg_625_0.isFinalBoss == true or arg_625_0.finalBoss == true)
end

function __recovered_scope_0.var_0_321.now(arg_626_0)
	return arg_626_0 and arg_626_0._waveTimeAcc or 0
end

function __recovered_scope_0.var_0_321.targetable(arg_627_0, arg_627_1, arg_627_2, arg_627_3)
	return __recovered_scope_0.var_0_322(arg_627_2) and (not arg_627_3 or arg_627_3(arg_627_2, arg_627_1, arg_627_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_627_0, arg_627_1, arg_627_2))
end

function __recovered_scope_0.var_0_321.cageable(arg_628_0, arg_628_1)
	return __recovered_scope_0.var_0_322(arg_628_1) and not arg_628_1._bramblePrison and __recovered_scope_0.var_0_321.now(arg_628_0) >= (arg_628_1._brambleFreeAt or -math.huge)
end

function __recovered_scope_0.var_0_321.picks(arg_629_0, arg_629_1, arg_629_2, arg_629_3, arg_629_4)
	arg_629_3 = arg_629_3 or arg_629_0._awakeningMetric

	local var_629_0 = __recovered_scope_0.var_0_321.runtime(arg_629_1)
	local var_629_1 = tonumber(var_629_0.range) or 70
	local var_629_2 = math.max(1, math.floor(tonumber(var_629_0.maxTargets) or 1))
	local var_629_3 = {}
	local var_629_4 = {}

	local function var_629_5(arg_630_0)
		return arg_629_3 and arg_629_3(arg_629_1, arg_630_0) or ((arg_630_0.x or 0) - (arg_629_1.x or 0))^2 + ((arg_630_0.y or 0) - (arg_629_1.y or 0))^2
	end

	for iter_629_0, iter_629_1 in ipairs(arg_629_0.enemies or {}) do
		if (not arg_629_4 or not arg_629_4[iter_629_1]) and __recovered_scope_0.var_0_321.targetable(arg_629_0, arg_629_1, iter_629_1, arg_629_2) then
			local var_629_6 = var_629_5(iter_629_1)

			if var_629_6 <= var_629_1 * var_629_1 then
				local var_629_7 = __recovered_scope_0.var_0_321.cageable(arg_629_0, iter_629_1) and var_629_3 or var_629_4

				var_629_7[#var_629_7 + 1] = {
					e = iter_629_1,
					d = var_629_6,
					index = iter_629_0,
					cur = iter_629_1 == arg_629_1.target
				}
			end
		end
	end

	local function var_629_8(arg_631_0, arg_631_1)
		if arg_631_0.cur ~= arg_631_1.cur then
			return arg_631_0.cur
		end

		if arg_631_0.d == arg_631_1.d then
			return arg_631_0.index < arg_631_1.index
		end

		return arg_631_0.d < arg_631_1.d
	end

	table.sort(var_629_3, var_629_8)
	table.sort(var_629_4, function(arg_632_0, arg_632_1)
		if arg_632_0.d == arg_632_1.d then
			return arg_632_0.index < arg_632_1.index
		end

		return arg_632_0.d < arg_632_1.d
	end)

	local var_629_9 = {}

	for iter_629_2, iter_629_3 in ipairs(var_629_3) do
		if var_629_2 > #var_629_9 then
			var_629_9[#var_629_9 + 1] = iter_629_3.e
		end
	end

	for iter_629_4, iter_629_5 in ipairs(var_629_4) do
		if var_629_2 > #var_629_9 then
			var_629_9[#var_629_9 + 1] = iter_629_5.e
		end
	end

	return var_629_9
end

function __recovered_scope_0.var_0_321.pick(arg_633_0, arg_633_1, arg_633_2, arg_633_3)
	return __recovered_scope_0.var_0_321.picks(arg_633_0, arg_633_1, arg_633_2, arg_633_3)[1]
end

function __recovered_scope_0.var_0_321.finish(arg_634_0)
	local var_634_0 = arg_634_0.skill

	if var_634_0 then
		var_634_0.state, var_634_0.active, var_634_0.prisonCast, var_634_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_634_0)
	end

	arg_634_0._casting, arg_634_0._suppressAttack = false, false
	arg_634_0._forceAnim, arg_634_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_321.updateCast(arg_635_0, arg_635_1, arg_635_2, arg_635_3, arg_635_4)
	local var_635_0 = arg_635_1.skill

	if not __recovered_scope_0.var_0_321.canAct(arg_635_1) then
		if var_635_0.prisonCast then
			__recovered_scope_0.var_0_321.finish(arg_635_1)
		end

		return
	end

	local var_635_1 = __recovered_scope_0.var_0_321.anim(arg_635_1)

	if var_635_0.prisonCast then
		if not arg_635_1.anim or arg_635_1.anim.name ~= var_635_1 then
			__recovered_scope_0.var_0_321.finish(arg_635_1)

			return
		end

		arg_635_1._casting, arg_635_1._suppressAttack = true, true
		arg_635_1._forceAnim, arg_635_1._forceAnimT = var_635_1, math.max(0.2, arg_635_2 + 0.1)

		return
	end

	var_635_0.cdT = math.min(var_635_0.cd or 7, (var_635_0.cdT or 0) + arg_635_2)

	if var_635_0.cdT < (var_635_0.cd or 7) then
		return
	end

	var_635_0.ready = true

	local var_635_2 = arg_635_1.anim and __recovered_scope_0.var_0_321.picks(arg_635_0, arg_635_1, arg_635_3, arg_635_4) or {}
	local var_635_3 = var_635_2[1]

	if not var_635_3 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_635_1)

	var_635_0.state, var_635_0.active, var_635_0.ready, var_635_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_635_0)
	var_635_0.prisonCast = {
		struck = false,
		target = var_635_3,
		targets = var_635_2
	}
	arg_635_1._pendingDuelistHit, arg_635_1.shotPending, arg_635_1.pendingTarget = nil, false
	arg_635_1._casting, arg_635_1._suppressAttack = true, true
	arg_635_1._forceAnim, arg_635_1._forceAnimT = var_635_1, math.max(0.2, arg_635_2 + 0.1)
	arg_635_1.anim.name, arg_635_1.anim.frame, arg_635_1.anim.t, arg_635_1.anim.reverse = var_635_1, 1, 0
	arg_635_1.anim._desynced = true

	local var_635_4 = (var_635_3.x or 0) >= (arg_635_1.x or 0) and 1 or -1

	arg_635_1.facing, arg_635_1._attackFacing = var_635_4, var_635_4
end

function __recovered_scope_0.var_0_321.frameDuration(arg_636_0, arg_636_1, arg_636_2)
	local var_636_0 = arg_636_0.skill

	if not var_636_0 or not var_636_0.prisonCast or not arg_636_0.anim or arg_636_0.anim.name ~= __recovered_scope_0.var_0_321.anim(arg_636_0) then
		return arg_636_1, arg_636_2
	end

	local var_636_1 = __recovered_scope_0.var_0_321.runtime(arg_636_0)
	local var_636_2 = var_636_1.frameSpeeds

	if var_636_2 and var_636_2[arg_636_0.anim.frame or 1] then
		return tonumber(var_636_2[arg_636_0.anim.frame or 1]), 1
	end

	return tonumber(var_636_0.animationSpeed) or tonumber(var_636_1.animationSpeed) or 0.09, 1
end

function __recovered_scope_0.var_0_321.measure(arg_637_0, arg_637_1, arg_637_2)
	local var_637_0 = arg_637_1.x or 0
	local var_637_1 = (arg_637_1.y or 0) + 16

	if arg_637_0.entityGroundPoint then
		var_637_0, var_637_1 = arg_637_0:entityGroundPoint(arg_637_1)
	end

	arg_637_2.gx, arg_637_2.gy = var_637_0, var_637_1

	local var_637_2 = require("src.game.projectiles").spellblade_vortex.targetCover(arg_637_0, arg_637_1, nil, "idle", 1)

	if var_637_2 and var_637_2.data then
		local var_637_3
		local var_637_4
		local var_637_5
		local var_637_6

		for iter_637_0 = 0, var_637_2.qh - 1 do
			for iter_637_1 = 0, var_637_2.qw - 1 do
				local var_637_7, var_637_8, var_637_9, var_637_10 = var_637_2.data:getPixel(var_637_2.qx + iter_637_1, var_637_2.qy + iter_637_0)

				if var_637_10 > 0 then
					local var_637_11 = var_637_2.ox + var_637_2.ux * (iter_637_1 + 0.5)
					local var_637_12 = var_637_2.oy + var_637_2.uy * (iter_637_0 + 0.5)

					var_637_3, var_637_5 = math.min(var_637_3 or var_637_11, var_637_11), math.max(var_637_5 or var_637_11, var_637_11)
					var_637_4, var_637_6 = math.min(var_637_4 or var_637_12, var_637_12), math.max(var_637_6 or var_637_12, var_637_12)
				end
			end
		end

		if var_637_3 then
			arg_637_2.box = {
				x0 = var_637_3,
				x1 = var_637_5,
				y0 = var_637_4,
				y1 = var_637_6
			}
		end
	end

	if not arg_637_2.box then
		local var_637_13 = require("src.game.projectiles").spellblade_vortex.drawSize(arg_637_0)

		arg_637_2.box = {
			x0 = var_637_0 - var_637_13 * 0.3,
			x1 = var_637_0 + var_637_13 * 0.3,
			y0 = var_637_1 - var_637_13 * 0.8,
			y1 = var_637_1
		}
	end
end

function __recovered_scope_0.var_0_321.imprison(arg_638_0, arg_638_1, arg_638_2, arg_638_3)
	local var_638_0 = __recovered_scope_0.var_0_321.runtime(arg_638_1)
	local var_638_1 = __recovered_scope_0.var_0_321.isBoss(arg_638_2)
	local var_638_2 = math.max(1, math.floor((tonumber(arg_638_1.maxhp) or 100) * (tonumber(var_638_0.cageHp) or 0.15) + 0.5))
	local var_638_3 = {
		t = 0,
		hp = var_638_2,
		maxhp = var_638_2,
		dur = var_638_1 and (tonumber(var_638_0.bossDuration) or 1) or tonumber(var_638_0.duration) or 3,
		x = arg_638_2.x,
		y = arg_638_2.y,
		owner = arg_638_1,
		boss = var_638_1,
		immune = tonumber(var_638_0.immune) or 4
	}

	arg_638_2._bramblePrison = var_638_3
	arg_638_2.shotPending, arg_638_2.pendingTarget, arg_638_2._pendingGoblinHit, arg_638_2._pendingOrcHit, arg_638_2._meleeLoop = false, nil, nil, nil, false
	arg_638_2._pendingHowlHit, arg_638_2._pendingFirebreatherHit, arg_638_2._pendingLizardHunterThrow, arg_638_2._pendingJesterPrankHit = nil
	arg_638_2._kb = nil
	arg_638_3.prison, arg_638_3.state = var_638_3, "hold"

	return var_638_3
end

function __recovered_scope_0.var_0_321.onAnimation(arg_639_0, arg_639_1, arg_639_2, arg_639_3, arg_639_4, arg_639_5, arg_639_6)
	local var_639_0 = arg_639_1.skill
	local var_639_1 = var_639_0 and var_639_0.prisonCast

	if not var_639_1 then
		return
	end

	local var_639_2 = __recovered_scope_0.var_0_321.anim(arg_639_1)

	if not __recovered_scope_0.var_0_321.canAct(arg_639_1) or not arg_639_1.anim or arg_639_1.anim.name ~= var_639_2 then
		__recovered_scope_0.var_0_321.finish(arg_639_1)

		return
	end

	local var_639_3 = __recovered_scope_0.var_0_321.runtime(arg_639_1)
	local var_639_4 = tonumber(var_639_0.releaseFrame) or tonumber(var_639_3.releaseFrame) or 5

	if not var_639_1.struck and var_639_4 <= (arg_639_1.anim.frame or 1) then
		arg_639_1.anim.frame, arg_639_1.anim.t = var_639_4, 0
		var_639_1.struck = true

		local var_639_5 = math.max(1, math.floor(tonumber(var_639_3.maxTargets) or 1))
		local var_639_6 = {}
		local var_639_7 = {}

		for iter_639_0, iter_639_1 in ipairs(var_639_1.targets or {
			var_639_1.target
		}) do
			if var_639_5 > #var_639_6 and __recovered_scope_0.var_0_321.targetable(arg_639_0, arg_639_1, iter_639_1, arg_639_4) then
				var_639_6[#var_639_6 + 1] = iter_639_1
				var_639_7[iter_639_1] = true
			end
		end

		if var_639_5 > #var_639_6 then
			for iter_639_2, iter_639_3 in ipairs(__recovered_scope_0.var_0_321.picks(arg_639_0, arg_639_1, arg_639_4, arg_639_5, var_639_7)) do
				if var_639_5 > #var_639_6 then
					var_639_6[#var_639_6 + 1] = iter_639_3
				end
			end
		end

		if not var_639_6[1] then
			return
		end

		local var_639_8 = arg_639_1.x or 0
		local var_639_9 = (arg_639_1.y or 0) + 16

		if arg_639_0.entityGroundPoint then
			var_639_8, var_639_9 = arg_639_0:entityGroundPoint(arg_639_1)
		end

		local var_639_10 = math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_639_0) / 32 + 0.5))
		local var_639_11 = (var_639_6[1].x or 0) >= (arg_639_1.x or 0) and 1 or -1

		var_639_1.fxs = {}

		for iter_639_4, iter_639_5 in ipairs(var_639_6) do
			local var_639_12 = {
				state = "gone",
				how = "wither",
				t = 0,
				kind = "bramble_prison",
				dur = math.huge,
				owner = arg_639_1,
				target = iter_639_5,
				style = var_639_3.style,
				hits = {},
				seed = math.floor((iter_639_5.x or 0) * 7 + (iter_639_5.y or 0) * 3) % 97,
				k = iter_639_4,
				stomp = iter_639_4 == 1,
				stompStyle = var_639_3.stomp,
				face = (arg_639_1.x or 0) >= (iter_639_5.x or 0) and 1 or -1,
				pixel = var_639_10
			}

			__recovered_scope_0.var_0_321.measure(arg_639_0, iter_639_5, var_639_12)

			var_639_12.fromX, var_639_12.fromY = var_639_8 + var_639_11 * 8 * var_639_10, var_639_9
			arg_639_0.vfx = arg_639_0.vfx or {}
			arg_639_0.vfx[#arg_639_0.vfx + 1] = var_639_12
			var_639_1.fxs[iter_639_4] = var_639_12

			if arg_639_6 then
				arg_639_6(iter_639_5, (arg_639_3 or 0) * (tonumber(var_639_3.dmgMul) or 1.2), arg_639_1, nil, {
					battleSkillDamage = true,
					bramblePrison = true,
					basicAttack = false
				})
			end

			if __recovered_scope_0.var_0_321.cageable(arg_639_0, iter_639_5) then
				__recovered_scope_0.var_0_321.imprison(arg_639_0, arg_639_1, iter_639_5, var_639_12)
			else
				var_639_12.endT = __recovered_scope_0.var_0_321.STRUCK
			end
		end

		var_639_1.fx = var_639_1.fxs[1]

		return
	end

	local var_639_13 = arg_639_2 and arg_639_2.animations and arg_639_2.animations[var_639_2]

	if (arg_639_1.anim.frame or 1) > (var_639_13 and var_639_13.frames or 6) then
		__recovered_scope_0.var_0_321.finish(arg_639_1)
	end
end

function __recovered_scope_0.var_0_321.release(arg_640_0, arg_640_1, arg_640_2)
	local var_640_0 = arg_640_1.prison
	local var_640_1 = arg_640_1.target

	if var_640_1 and var_640_0 and var_640_1._bramblePrison == var_640_0 then
		var_640_1._bramblePrison = nil
		var_640_1._brambleFreeAt = __recovered_scope_0.var_0_321.now(arg_640_0) + (var_640_0.immune or 4)
	end

	arg_640_1.state, arg_640_1.how, arg_640_1.endT = "gone", arg_640_2, arg_640_1.t or 0
end

function __recovered_scope_0.var_0_321.swing(arg_641_0, arg_641_1, arg_641_2, arg_641_3)
	local var_641_0 = arg_641_1.anim

	if not var_641_0 then
		return
	end

	if arg_641_2.swing then
		if var_641_0.name ~= "attack" then
			arg_641_2.swing = nil

			return
		end

		if (var_641_0.frame or 1) < arg_641_2.swing then
			return
		end

		arg_641_2.swing = nil

		local var_641_1 = arg_641_1._shrinkRay and tonumber(arg_641_1._shrinkRay.cut) or 0

		arg_641_2.hp = math.max(0, arg_641_2.hp - math.max(1, (tonumber(arg_641_1.dmg) or 1) * (1 - var_641_1)))
		arg_641_3.hits[#arg_641_3.hits + 1] = {
			t = arg_641_3.t or 0,
			hp = arg_641_2.hp
		}

		return
	end

	if (arg_641_1.coolTicks or 0) > 0 or (arg_641_1.stunT or 0) > 0 or (arg_641_1.fearT or 0) > 0 then
		return
	end

	if var_641_0.name ~= "idle" and var_641_0.name ~= "walk" then
		return
	end

	if arg_641_1.noBasicAttack == true or require("src.game.combat").pursuit_wedge.isPassThrough(arg_641_1) then
		return
	end

	for iter_641_0, iter_641_1 in ipairs(arg_641_0.allies or {}) do
		if iter_641_1 and iter_641_1.alive and not iter_641_1.dying and iter_641_1._overloadDischargeAnimLock then
			return
		end
	end

	local var_641_2 = arg_641_0.getUnitAssetForEnemy and arg_641_0:getUnitAssetForEnemy(arg_641_1)
	local var_641_3 = var_641_2 and var_641_2.animations and var_641_2.animations.attack

	if not var_641_3 then
		return
	end

	local var_641_4 = require("src.game.enemy_skills").basic_attack_frames.get(arg_641_1)

	arg_641_2.swing = math.max(1, math.min(var_641_3.frames or 1, var_641_4 or math.ceil((var_641_3.frames or 4) * 0.6)))
	arg_641_1.coolTicks = arg_641_1.atkTicks or 60
	arg_641_1.facing = arg_641_3.face
	var_641_0.name, var_641_0.frame, var_641_0.t, var_641_0.reverse = "attack", 1, 0
end

function __recovered_scope_0.var_0_321.track(arg_642_0, arg_642_1)
	local var_642_0 = arg_642_1.t or 0
	local var_642_1 = math.max(0, var_642_0 - (arg_642_1.lastT or var_642_0))

	arg_642_1.lastT = var_642_0

	if arg_642_1.state == "hold" then
		local var_642_2 = arg_642_1.target
		local var_642_3 = arg_642_1.prison

		if not __recovered_scope_0.var_0_322(var_642_2) or var_642_2._bramblePrison ~= var_642_3 then
			__recovered_scope_0.var_0_321.release(arg_642_0, arg_642_1, "wither")

			return
		end

		var_642_3.t = var_642_3.t + var_642_1

		if var_642_2._bossSkillBusy or var_642_2._berserkPending or var_642_2._fireBreathReady or var_642_2._lizardBruteMarshDriveReady then
			__recovered_scope_0.var_0_321.release(arg_642_0, arg_642_1, "break")

			return
		end

		var_642_2.x, var_642_2.y, var_642_2._kb = var_642_3.x, var_642_3.y

		__recovered_scope_0.var_0_321.swing(arg_642_0, var_642_2, var_642_3, arg_642_1)

		if var_642_3.hp <= 0 then
			__recovered_scope_0.var_0_321.release(arg_642_0, arg_642_1, "break")
		elseif var_642_3.t >= var_642_3.dur then
			__recovered_scope_0.var_0_321.release(arg_642_0, arg_642_1, "wither")
		end
	elseif var_642_0 - (arg_642_1.endT or 0) > __recovered_scope_0.var_0_321.LINGER then
		arg_642_1.finished = true
	end
end

function __recovered_scope_0.var_0_321.endBattle(arg_643_0)
	for iter_643_0, iter_643_1 in ipairs(arg_643_0 and arg_643_0.allies or {}) do
		if iter_643_1.skill and iter_643_1.skill.kind == "BramblePrison" and iter_643_1.skill.prisonCast then
			__recovered_scope_0.var_0_321.finish(iter_643_1)
		end
	end

	for iter_643_2, iter_643_3 in ipairs(arg_643_0 and arg_643_0.enemies or {}) do
		iter_643_3._bramblePrison, iter_643_3._brambleFreeAt = nil
	end

	for iter_643_4, iter_643_5 in ipairs(arg_643_0 and arg_643_0.vfx or {}) do
		if iter_643_5.kind == "bramble_prison" then
			iter_643_5.finished = true
		end
	end
end

 __recovered_scope_0.var_0_323 = __recovered_scope_0.var_0_321
 __recovered_scope_0.var_0_324 = nil
 __recovered_scope_0.var_0_325 = {
	CONTACT = 3,
	LIFT = 70,
	IN = 0.28,
	OUT = 0.2,
	HALF = 60,
	LINGER = 0.7,
	TRAIL_N = 6,
	TRAIL = 0.05,
	SLASH = 0.45,
	CHARGE = 0.35,
	STEP_IN = 12,
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_326(arg_644_0)
	return arg_644_0 and arg_644_0.alive and not arg_644_0.dying and (arg_644_0.hp or 0) > 0
end

 function __recovered_scope_0.var_0_327(arg_645_0)
	if arg_645_0.isMirror then
		return true
	end

	for iter_645_0, iter_645_1 in pairs(arg_645_0.imprints or {}) do
		if iter_645_1 and iter_645_1.id == "timeless" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_325.runtime(arg_646_0)
	return arg_646_0 and arg_646_0.primarySkillDef and arg_646_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_325.anim(arg_647_0)
	return arg_647_0.skill and arg_647_0.skill.activeAnim or __recovered_scope_0.var_0_325.runtime(arg_647_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_325.matches(arg_648_0)
	return arg_648_0 ~= nil and arg_648_0.skill ~= nil and arg_648_0.skill.kind == "DimensionalDuel"
end

__recovered_scope_0.var_0_325.isBoss = __recovered_scope_0.var_0_323.isBoss

function __recovered_scope_0.var_0_325.of(arg_649_0)
	local var_649_0 = type(arg_649_0) == "table" and rawget(arg_649_0, "_dimensionalDuel") or nil

	if var_649_0 and var_649_0.over then
		arg_649_0._dimensionalDuel = nil
		var_649_0 = nil
	end

	return var_649_0 or type(arg_649_0) == "table" and rawget(arg_649_0, "_skyborne") or nil
end

function __recovered_scope_0.var_0_325.separated(arg_650_0, arg_650_1, arg_650_2)
	if arg_650_1 == arg_650_2 then
		return false
	end

	return __recovered_scope_0.var_0_325.of(arg_650_1) ~= __recovered_scope_0.var_0_325.of(arg_650_2)
end

function __recovered_scope_0.var_0_325.blocks(arg_651_0, arg_651_1, arg_651_2, arg_651_3)
	if not arg_651_1 or arg_651_1 == arg_651_2 then
		return false
	end

	if not __recovered_scope_0.var_0_325.of(arg_651_1) and not __recovered_scope_0.var_0_325.of(arg_651_2) then
		return false
	end

	if arg_651_3 and (arg_651_3.dot or arg_651_3.burn or arg_651_3.poison or arg_651_3.bleed or arg_651_3.damageOverTime or arg_651_3.directDamage == false or arg_651_3.combatExperienceReplay) then
		return false
	end

	return __recovered_scope_0.var_0_325.separated(arg_651_0, arg_651_1, arg_651_2)
end

function __recovered_scope_0.var_0_325.targetable(arg_652_0, arg_652_1, arg_652_2, arg_652_3)
	return __recovered_scope_0.var_0_326(arg_652_2) and (not arg_652_3 or arg_652_3(arg_652_2, arg_652_1, arg_652_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_652_0, arg_652_1, arg_652_2))
end

function __recovered_scope_0.var_0_325.reachedBy(arg_653_0, arg_653_1, arg_653_2)
	if not arg_653_2 then
		return true
	end

	for iter_653_0, iter_653_1 in ipairs(arg_653_2) do
		if (tonumber(iter_653_1.t) or 0) > 0 and __recovered_scope_0.var_0_326(iter_653_1.owner) and not __recovered_scope_0.var_0_325.separated(arg_653_0, iter_653_1.owner, arg_653_1) then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_325.last(arg_654_0, arg_654_1)
	local var_654_0 = require("src.game.combat").rockfall

	if var_654_0 and var_654_0.hasPending and var_654_0.hasPending(arg_654_0) then
		return false
	end

	if arg_654_0._enemySpawnQueue and not arg_654_0._enemySpawned then
		return false
	end

	for iter_654_0, iter_654_1 in ipairs(arg_654_0.enemies or {}) do
		if iter_654_1 ~= arg_654_1 and __recovered_scope_0.var_0_326(iter_654_1) and not iter_654_1.isHusk and not iter_654_1._tricksterCharm and not iter_654_1.isCrystalGuardWall and (not __recovered_scope_0.var_0_325.of(iter_654_1) or __recovered_scope_0.var_0_325.of(iter_654_1) == __recovered_scope_0.var_0_325.of(arg_654_1)) then
			return false
		end
	end

	return true
end

function __recovered_scope_0.var_0_325.pick(arg_655_0, arg_655_1, arg_655_2, arg_655_3)
	arg_655_3 = arg_655_3 or arg_655_0._awakeningMetric

	local var_655_0 = tonumber(__recovered_scope_0.var_0_325.runtime(arg_655_1).range) or 70

	local function var_655_1(arg_656_0)
		return arg_655_3 and arg_655_3(arg_655_1, arg_656_0) or ((arg_656_0.x or 0) - (arg_655_1.x or 0))^2 + ((arg_656_0.y or 0) - (arg_655_1.y or 0))^2
	end

	local var_655_2 = arg_655_1.target
	local var_655_3
	local var_655_4
	local var_655_5

	for iter_655_0, iter_655_1 in ipairs(arg_655_0.enemies or {}) do
		if __recovered_scope_0.var_0_325.targetable(arg_655_0, arg_655_1, iter_655_1, arg_655_2) then
			local var_655_6 = var_655_1(iter_655_1)

			if iter_655_1 == var_655_2 and var_655_6 <= var_655_0 * var_655_0 then
				return var_655_2
			end

			if var_655_6 <= var_655_0 * var_655_0 and (not var_655_3 or var_655_6 < var_655_4 or var_655_6 == var_655_4 and iter_655_0 < var_655_5) then
				var_655_3, var_655_4, var_655_5 = iter_655_1, var_655_6, iter_655_0
			end
		end
	end

	return var_655_3
end

function __recovered_scope_0.var_0_325.finish(arg_657_0)
	local var_657_0 = arg_657_0.skill

	if var_657_0 then
		var_657_0.state, var_657_0.active, var_657_0.duelCast, var_657_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_657_0)
	end

	arg_657_0._casting, arg_657_0._suppressAttack = false, false
	arg_657_0._forceAnim, arg_657_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_325.updateCast(arg_658_0, arg_658_1, arg_658_2, arg_658_3, arg_658_4)
	local var_658_0 = arg_658_1.skill

	if not __recovered_scope_0.var_0_325.canAct(arg_658_1) then
		if var_658_0.duelCast then
			__recovered_scope_0.var_0_325.finish(arg_658_1)
		end

		return
	end

	local var_658_1 = __recovered_scope_0.var_0_325.anim(arg_658_1)

	if var_658_0.duelCast then
		if not arg_658_1.anim or arg_658_1.anim.name ~= var_658_1 then
			__recovered_scope_0.var_0_325.finish(arg_658_1)

			return
		end

		arg_658_1._casting, arg_658_1._suppressAttack = true, true
		arg_658_1._forceAnim, arg_658_1._forceAnimT = var_658_1, math.max(0.2, arg_658_2 + 0.1)

		return
	end

	var_658_0.cdT = math.min(var_658_0.cd or 8, (var_658_0.cdT or 0) + arg_658_2)

	if var_658_0.cdT < (var_658_0.cd or 8) then
		return
	end

	var_658_0.ready = true

	local var_658_2 = arg_658_1.anim and __recovered_scope_0.var_0_325.pick(arg_658_0, arg_658_1, arg_658_3, arg_658_4)

	if not var_658_2 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_658_1)

	var_658_0.state, var_658_0.active, var_658_0.ready, var_658_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_658_0)
	var_658_0.duelCast = {
		struck = false,
		target = var_658_2
	}
	arg_658_1._pendingDuelistHit, arg_658_1.shotPending, arg_658_1.pendingTarget = nil, false
	arg_658_1._casting, arg_658_1._suppressAttack = true, true
	arg_658_1._forceAnim, arg_658_1._forceAnimT = var_658_1, math.max(0.2, arg_658_2 + 0.1)
	arg_658_1.anim.name, arg_658_1.anim.frame, arg_658_1.anim.t, arg_658_1.anim.reverse = var_658_1, 1, 0
	arg_658_1.anim._desynced = true

	local var_658_3 = (var_658_2.x or 0) >= (arg_658_1.x or 0) and 1 or -1

	arg_658_1.facing, arg_658_1._attackFacing = var_658_3, var_658_3

	if __recovered_scope_0.var_0_325.runtime(arg_658_1).charge then
		var_658_0.duelCast.charge = __recovered_scope_0.var_0_325.chargeEntry(arg_658_0, arg_658_1)
	end
end

function __recovered_scope_0.var_0_325.frameDuration(arg_659_0, arg_659_1, arg_659_2)
	local var_659_0 = arg_659_0.skill
	local var_659_1 = arg_659_0.anim and arg_659_0.anim.name

	if var_659_0 and var_659_0.duelCast and var_659_1 == __recovered_scope_0.var_0_325.anim(arg_659_0) then
		return tonumber(var_659_0.animationSpeed) or tonumber(__recovered_scope_0.var_0_325.runtime(arg_659_0).animationSpeed) or 0.08, 1
	end

	if var_659_1 == "attack" and (arg_659_0._aspdBuffT or 0) > 0 then
		return arg_659_1, arg_659_2 * (1 + math.max(0, tonumber(arg_659_0._aspdBuff) or 0))
	end

	return arg_659_1, arg_659_2
end

function __recovered_scope_0.var_0_325.pose(arg_660_0, arg_660_1, arg_660_2)
	local var_660_0

	if arg_660_2 then
		var_660_0 = arg_660_0.getUnitAssetForEnemy and arg_660_0:getUnitAssetForEnemy(arg_660_1)
	else
		var_660_0 = arg_660_0.getUnitAssetForAlly and arg_660_0:getUnitAssetForAlly(arg_660_1)
	end

	local var_660_1
	local var_660_2

	if arg_660_0.entityGroundPoint then
		var_660_1, var_660_2 = arg_660_0:entityGroundPoint(arg_660_1)
	end

	local var_660_3 = {
		footX = var_660_1 or arg_660_1.x or 0,
		footY = var_660_2 or (arg_660_1.y or 0) + 16
	}

	if not var_660_0 or not var_660_0.quads or not var_660_0.imageData then
		return var_660_3
	end

	local var_660_4 = require("src.game.projectiles").spellblade_vortex

	var_660_3.x0, var_660_3.y0 = var_660_4.spritePoint(arg_660_0, arg_660_1, var_660_0, 0, 0, arg_660_2 == true)

	local var_660_5, var_660_6 = var_660_4.spritePoint(arg_660_0, arg_660_1, var_660_0, 1, 1, arg_660_2 == true)

	var_660_3.dx, var_660_3.dy = var_660_5 - var_660_3.x0, var_660_6 - var_660_3.y0

	local var_660_7 = arg_660_1.anim and arg_660_1.anim.name or "idle"

	if not var_660_0.animations or not var_660_0.animations[var_660_7] then
		var_660_7 = var_660_0.animations and var_660_0.animations.walk and "walk" or "idle"
	end

	local var_660_8 = var_660_0.quads[var_660_7]

	var_660_3.asset, var_660_3.quad = var_660_0, var_660_8 and var_660_8[math.max(1, math.min(#var_660_8, arg_660_1.anim and arg_660_1.anim.frame or 1))]

	return var_660_3
end

 function __recovered_scope_0.var_0_328(arg_661_0, arg_661_1, arg_661_2, arg_661_3)
	if not arg_661_3.quad or arg_661_2 - (arg_661_0[arg_661_1 .. "T"] or -1) < __recovered_scope_0.var_0_325.TRAIL then
		return
	end

	arg_661_0[arg_661_1 .. "T"] = arg_661_2

	local var_661_0 = arg_661_0[arg_661_1] or {}

	arg_661_0[arg_661_1] = var_661_0
	var_661_0[#var_661_0 + 1] = {
		t = arg_661_2,
		pose = arg_661_3
	}

	if #var_661_0 > __recovered_scope_0.var_0_325.TRAIL_N then
		table.remove(var_661_0, 1)
	end
end

function __recovered_scope_0.var_0_325.place(arg_662_0, arg_662_1)
	local var_662_0 = arg_662_1.t or 0
	local var_662_1 = arg_662_1.owner

	if __recovered_scope_0.var_0_326(var_662_1) then
		local var_662_2 = __recovered_scope_0.var_0_325.pose(arg_662_0, var_662_1, false)

		arg_662_1.a = {
			x = var_662_2.footX,
			y = var_662_2.footY,
			pose = var_662_2.quad and var_662_2 or nil
		}

		if var_662_2.quad and var_662_0 - (arg_662_1.trailT or -1) >= __recovered_scope_0.var_0_325.TRAIL then
			arg_662_1.trailT = var_662_0
			arg_662_1.trail = arg_662_1.trail or {}
			arg_662_1.trail[#arg_662_1.trail + 1] = {
				t = var_662_0,
				pose = var_662_2
			}

			if #arg_662_1.trail > __recovered_scope_0.var_0_325.TRAIL_N then
				table.remove(arg_662_1.trail, 1)
			end
		end
	elseif arg_662_1.a then
		arg_662_1.a.gone = true
	end

	local var_662_3 = __recovered_scope_0.var_0_325.runtime(var_662_1).charge
	local var_662_4 = arg_662_1.duel and arg_662_1.duel.enemy or arg_662_1.target

	if var_662_4 and __recovered_scope_0.var_0_326(var_662_4) then
		local var_662_5 = __recovered_scope_0.var_0_325.pose(arg_662_0, var_662_4, true)

		arg_662_1.b = {
			x = var_662_5.footX,
			y = var_662_5.footY,
			pose = var_662_5.quad and var_662_5 or nil
		}

		if var_662_3 then
			__recovered_scope_0.var_0_328(arg_662_1, "trailB", var_662_0, var_662_5)
		end
	elseif arg_662_1.b then
		arg_662_1.b.gone = true
	end

	local var_662_6 = arg_662_1.duel and arg_662_1.duel.ally or arg_662_1.ally

	if var_662_6 and __recovered_scope_0.var_0_326(var_662_6) and (not arg_662_1.allyHomeT or not (var_662_0 >= arg_662_1.allyHomeT)) then
		local var_662_7 = __recovered_scope_0.var_0_325.pose(arg_662_0, var_662_6, false)

		arg_662_1.c = {
			x = var_662_7.footX,
			y = var_662_7.footY,
			pose = var_662_7.quad and var_662_7 or nil
		}

		if var_662_3 then
			__recovered_scope_0.var_0_328(arg_662_1, "trailC", var_662_0, var_662_7)
		end
	elseif arg_662_1.c then
		arg_662_1.c.gone = true
	end
end

function __recovered_scope_0.var_0_325.entry(arg_663_0, arg_663_1)
	for iter_663_0, iter_663_1 in ipairs(arg_663_0.vfx or {}) do
		if iter_663_1.kind == "dimensional_duel" and iter_663_1.part == "duel" and iter_663_1.owner == arg_663_1 and not iter_663_1.finished and not iter_663_1.endT then
			return iter_663_1
		end
	end

	for iter_663_2, iter_663_3 in ipairs(arg_663_0.vfx or {}) do
		if iter_663_3.kind == "dimensional_duel" and iter_663_3.part == "duel" and iter_663_3.owner == arg_663_1 and not iter_663_3.finished then
			iter_663_3.hasteEnd = math.min(iter_663_3.hasteEnd or 0, iter_663_3.t or 0)
		end
	end

	local var_663_0 = __recovered_scope_0.var_0_325.runtime(arg_663_1)
	local var_663_1 = {
		_spellEchoSeen = false,
		t = 0,
		part = "duel",
		kind = "dimensional_duel",
		dur = math.huge,
		owner = arg_663_1,
		style = var_663_0.style,
		seed = math.floor((arg_663_1.x or 0) * 3 + (arg_663_1.y or 0) * 7) % 89,
		pixel = math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_663_0) / 32 + 0.5))
	}

	arg_663_0.vfx = arg_663_0.vfx or {}
	arg_663_0.vfx[#arg_663_0.vfx + 1] = var_663_1

	__recovered_scope_0.var_0_325.place(arg_663_0, var_663_1)

	return var_663_1
end

function __recovered_scope_0.var_0_325.chargeEntry(arg_664_0, arg_664_1)
	local var_664_0 = __recovered_scope_0.var_0_325.runtime(arg_664_1)
	local var_664_1 = {
		_spellEchoSeen = false,
		t = 0,
		part = "charge",
		kind = "dimensional_duel",
		dur = math.huge,
		owner = arg_664_1,
		style = var_664_0.style,
		seed = math.floor((arg_664_1.x or 0) * 3 + (arg_664_1.y or 0) * 7) % 89,
		pixel = math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_664_0) / 32 + 0.5))
	}
	local var_664_2 = __recovered_scope_0.var_0_325.pose(arg_664_0, arg_664_1, false)

	var_664_1.a = {
		x = var_664_2.footX,
		y = var_664_2.footY,
		pose = var_664_2.quad and var_664_2 or nil
	}
	arg_664_0.vfx = arg_664_0.vfx or {}
	arg_664_0.vfx[#arg_664_0.vfx + 1] = var_664_1

	return var_664_1
end

 __recovered_scope_0.var_0_329 = {
	"shotPending",
	"pendingTarget",
	"_pendingGoblinHit",
	"_pendingOrcHit",
	"_meleeLoop",
	"_pendingHowlHit",
	"_pendingFirebreatherHit",
	"_pendingLizardHunterThrow",
	"_pendingJesterPrankHit"
}

 function __recovered_scope_0.var_0_330(arg_665_0)
	for iter_665_0, iter_665_1 in ipairs(__recovered_scope_0.var_0_329) do
		if iter_665_1 ~= "shotPending" and iter_665_1 == "_meleeLoop" then
			-- block empty
		end

		arg_665_0[iter_665_1] = nil
	end
end

function __recovered_scope_0.var_0_325.sever(arg_666_0, arg_666_1)
	local var_666_0 = arg_666_1.ally

	local function var_666_1(arg_667_0)
		return arg_667_0 ~= nil and (arg_667_0 == arg_666_1.owner or arg_667_0 == var_666_0)
	end

	for iter_666_0, iter_666_1 in ipairs(arg_666_0.enemies or {}) do
		if iter_666_1 ~= arg_666_1.enemy and (var_666_1(iter_666_1.target) or var_666_1(iter_666_1.pendingTarget)) then
			__recovered_scope_0.var_0_330(iter_666_1)

			iter_666_1.target = nil
		end
	end

	local var_666_2 = arg_666_1.enemy

	if not var_666_1(var_666_2.target) then
		__recovered_scope_0.var_0_330(var_666_2)

		var_666_2.target = nil
	end

	if var_666_2.pendingTarget and not var_666_1(var_666_2.pendingTarget) then
		__recovered_scope_0.var_0_330(var_666_2)
	end

	for iter_666_2, iter_666_3 in ipairs(arg_666_0.allies or {}) do
		if not var_666_1(iter_666_3) and iter_666_3.target == arg_666_1.enemy then
			iter_666_3.target = nil
		end
	end

	if var_666_0 and (var_666_0.target ~= var_666_2 or var_666_0.pendingTarget and var_666_0.pendingTarget ~= var_666_2) then
		var_666_0.target, var_666_0.shotPending, var_666_0.pendingTarget = nil, false
	end

	for iter_666_4, iter_666_5 in ipairs(arg_666_0.projectiles or {}) do
		if iter_666_5.owner == arg_666_1.enemy or iter_666_5.owner == arg_666_1.owner then
			iter_666_5.alive = false
		end
	end

	if var_666_2._bramblePrison then
		for iter_666_6, iter_666_7 in ipairs(arg_666_0.vfx or {}) do
			if iter_666_7.kind == "bramble_prison" and iter_666_7.prison == var_666_2._bramblePrison then
				__recovered_scope_0.var_0_323.release(arg_666_0, iter_666_7, "break")
			end
		end
	end

	if var_666_2._batSummonCasting then
		var_666_2._batSummonCasting, var_666_2._batSummonFired, var_666_2._batSummonT, var_666_2._batSkillManualAdvanced = false, false, nil, false

		if var_666_2.anim and var_666_2.anim.name == "skill" then
			var_666_2.anim.name, var_666_2.anim.frame, var_666_2.anim.t = "idle", 1, 0
		end
	end

	if var_666_2._summonPending then
		var_666_2._summonPending, var_666_2._summonFired = false, false

		if var_666_2.anim and var_666_2.anim.name == "attack2" then
			var_666_2.anim.name, var_666_2.anim.frame, var_666_2.anim.t = "idle", 1, 0
		end
	end

	if var_666_2._succubusCharmedTarget then
		require("src.game.enemy_skills").succubus.releaseCharm(var_666_2._succubusCharmedTarget)
	end
end

function __recovered_scope_0.var_0_325.settle(arg_668_0)
	if not arg_668_0 then
		return
	end

	if arg_668_0._marshDriveAir then
		arg_668_0._marshDriveAir.landed = true
	end

	local var_668_0 = require("src.game.enemy_skills")
	local var_668_1 = arg_668_0._clawedDemonLeap or arg_668_0._highDemonDrive or arg_668_0._spaceKnightBashCast or arg_668_0._spaceCavalryGravityJump or arg_668_0._crystalGuardBarrierState or arg_668_0._greatswordRiderMarshLeap or arg_668_0._hellEnforcerExecution

	if arg_668_0._hellEnforcerExecution then
		var_668_0.hell_enforcer.cancel(arg_668_0)
	end

	if arg_668_0._clawedDemonLeap then
		var_668_0.clawed_demon.releaseOnDeath(arg_668_0)
	end

	if arg_668_0._highDemonDrive then
		var_668_0.high_demon.releaseOnDeath(arg_668_0)
	end

	if arg_668_0._spaceKnightBashCast then
		var_668_0.space_knight.releaseOnDeath(arg_668_0)
	end

	if arg_668_0._spaceCavalryGravityJump then
		var_668_0.space_cavalry.releaseOnDeath(arg_668_0)
	end

	if arg_668_0._crystalGuardBarrierState then
		var_668_0.crystal_guard.releaseOnDeath(arg_668_0)
	end

	if arg_668_0._greatswordRiderMarshLeap then
		arg_668_0._greatswordRiderMarshLeap, arg_668_0._greatswordRiderMarshLeapGroundX, arg_668_0._greatswordRiderMarshLeapGroundY = nil
	end

	if type(arg_668_0._pendingGoblinHit) == "table" and arg_668_0._pendingGoblinHit.marshDrivePuddle then
		arg_668_0._pendingGoblinHit = nil
	end

	if var_668_1 and __recovered_scope_0.var_0_326(arg_668_0) and arg_668_0.anim then
		arg_668_0.anim.name, arg_668_0.anim.frame, arg_668_0.anim.t, arg_668_0.anim.reverse, arg_668_0.anim._desynced = "idle", 1, 0, nil, true
	end
end

 function __recovered_scope_0.var_0_331(arg_669_0, arg_669_1, arg_669_2)
	local var_669_0 = arg_669_1 - (arg_669_0.x or 0)
	local var_669_1 = arg_669_2 - (arg_669_0.y or 0)

	arg_669_0.x, arg_669_0.y = arg_669_1, arg_669_2

	for iter_669_0, iter_669_1 in ipairs({
		"colX",
		"_bodyColX"
	}) do
		if arg_669_0[iter_669_1] then
			arg_669_0[iter_669_1] = arg_669_0[iter_669_1] + var_669_0
		end
	end

	for iter_669_2, iter_669_3 in ipairs({
		"colY",
		"_bodyColY"
	}) do
		if arg_669_0[iter_669_3] then
			arg_669_0[iter_669_3] = arg_669_0[iter_669_3] + var_669_1
		end
	end

	arg_669_0._posLerp, arg_669_0._kb, arg_669_0._lizardBruteAttackLock, arg_669_0._hellEnforcerExecutionLock = nil
	arg_669_0._stage6RiftSafeX, arg_669_0._stage6RiftSafeY = arg_669_1, arg_669_2

	if arg_669_0._stage6RiftPlacementSafeX ~= nil then
		arg_669_0._stage6RiftPlacementSafeX, arg_669_0._stage6RiftPlacementSafeY = arg_669_1, arg_669_2
	end
end

__recovered_scope_0.var_0_325.moveTo = __recovered_scope_0.var_0_331

 function __recovered_scope_0.var_0_332(arg_670_0, arg_670_1)
	if arg_670_0.entityGroundPoint then
		local var_670_0, var_670_1 = arg_670_0:entityGroundPoint(arg_670_1)

		if var_670_1 then
			return var_670_1 - (arg_670_1.y or 0)
		end
	end

	return 30
end

 function __recovered_scope_0.var_0_333(arg_671_0)
	local var_671_0 = math.min(arg_671_0.a.x, arg_671_0.b.x)
	local var_671_1 = math.max(arg_671_0.a.x, arg_671_0.b.x)

	if arg_671_0.c then
		var_671_0, var_671_1 = math.min(var_671_0, arg_671_0.c.x), math.max(var_671_1, arg_671_0.c.x)
	end

	return (var_671_0 + var_671_1) * 0.5
end

function __recovered_scope_0.var_0_325.slots(arg_672_0, arg_672_1, arg_672_2, arg_672_3)
	local var_672_0 = (arg_672_2.x or 0) >= (arg_672_1.x or 0) and 1 or -1
	local var_672_1 = ((arg_672_1.x or 0) + (arg_672_2.x or 0)) * 0.5
	local var_672_2 = arg_672_0.area
	local var_672_3 = -math.huge
	local var_672_4 = math.huge

	if var_672_2 and var_672_2.w then
		var_672_3, var_672_4 = var_672_2.x + var_672_2.w * 0.16 + __recovered_scope_0.var_0_325.HALF, var_672_2.x + var_672_2.w * 0.85 - __recovered_scope_0.var_0_325.HALF
	end

	local var_672_5 = math.max(var_672_3, math.min(var_672_4, var_672_1))
	local var_672_6 = {}

	for iter_672_0, iter_672_1 in ipairs(arg_672_0.vfx or {}) do
		local var_672_7 = iter_672_1.kind == "dimensional_duel" and iter_672_1.part == "duel" and iter_672_1.duel

		if var_672_7 and not var_672_7.over and var_672_7.slots and var_672_7.owner ~= arg_672_1 then
			var_672_6[#var_672_6 + 1] = __recovered_scope_0.var_0_333(var_672_7.slots)
		end
	end

	if #var_672_6 > 0 then
		local var_672_8 = __recovered_scope_0.var_0_325.HALF * 2 + 8
		local var_672_9 = var_672_5
		local var_672_10
		local var_672_11 = {
			var_672_5,
			var_672_3,
			var_672_4
		}

		for iter_672_2, iter_672_3 in ipairs(var_672_6) do
			var_672_11[#var_672_11 + 1] = iter_672_3 - var_672_8
			var_672_11[#var_672_11 + 1] = iter_672_3 + var_672_8
		end

		for iter_672_4, iter_672_5 in ipairs(var_672_11) do
			iter_672_5 = math.max(var_672_3, math.min(var_672_4, iter_672_5))

			local var_672_12 = math.huge

			for iter_672_6, iter_672_7 in ipairs(var_672_6) do
				var_672_12 = math.min(var_672_12, math.abs(iter_672_5 - iter_672_7))
			end

			local var_672_13 = var_672_8 <= var_672_12 and -math.abs(iter_672_5 - var_672_5) or var_672_12 - 1000000000

			if iter_672_5 > -math.huge and iter_672_5 < math.huge and (not var_672_10 or var_672_10 < var_672_13) then
				var_672_9, var_672_10 = iter_672_5, var_672_13
			end
		end

		var_672_5 = var_672_9
	end

	local var_672_14 = tonumber(arg_672_0.groundTopY)
	local var_672_15 = var_672_14 and var_672_14 - 4 - __recovered_scope_0.var_0_332(arg_672_0, arg_672_1) or math.min(arg_672_1.y or 0, arg_672_2.y or 0) - __recovered_scope_0.var_0_325.LIFT

	local function var_672_16(arg_673_0)
		local var_673_0 = arg_673_0._bodyColW or 24

		return var_673_0, (arg_673_0._bodyColX and arg_673_0._bodyColX + var_673_0 * 0.5 or arg_673_0.x or 0) - (arg_673_0.x or 0)
	end

	local var_672_17, var_672_18 = var_672_16(arg_672_1)
	local var_672_19, var_672_20 = var_672_16(arg_672_2)
	local var_672_21 = (var_672_17 + var_672_19) * 0.5 - __recovered_scope_0.var_0_325.CONTACT

	if not arg_672_3 then
		return {
			x = var_672_5 - var_672_0 * var_672_21 * 0.5 - var_672_18,
			y = var_672_15,
			face = var_672_0
		}, {
			x = var_672_5 + var_672_0 * var_672_21 * 0.5 - var_672_20,
			y = var_672_15,
			face = -var_672_0
		}
	end

	local var_672_22, var_672_23 = var_672_16(arg_672_3)
	local var_672_24 = (var_672_19 + var_672_22) * 0.5 - __recovered_scope_0.var_0_325.CONTACT
	local var_672_25 = var_672_5 + var_672_0 * (var_672_21 - var_672_24) * 0.5

	return {
		x = var_672_25 - var_672_0 * var_672_21 - var_672_18,
		y = var_672_15,
		face = var_672_0
	}, {
		x = var_672_25 - var_672_20,
		y = var_672_15,
		face = -var_672_0
	}, {
		x = var_672_25 + var_672_0 * var_672_24 - var_672_23,
		y = var_672_15,
		face = -var_672_0
	}
end

function __recovered_scope_0.var_0_325.hold(arg_674_0, arg_674_1)
	local var_674_0 = arg_674_1.stage == "away" or arg_674_1.stage == "leave"

	for iter_674_0, iter_674_1 in ipairs({
		"a",
		"b",
		"c"
	}) do
		local var_674_1 = iter_674_1 == "a" and arg_674_1.owner or iter_674_1 == "b" and arg_674_1.enemy or arg_674_1.ally
		local var_674_2 = (var_674_0 and arg_674_1.slots or arg_674_1.homes)[iter_674_1]

		if var_674_1 and var_674_1.alive and var_674_2 then
			__recovered_scope_0.var_0_331(var_674_1, var_674_2.x, var_674_2.y)

			if var_674_0 then
				var_674_1.facing = var_674_2.face

				if iter_674_1 == "b" and arg_674_1.ally and var_674_1.target == arg_674_1.ally then
					var_674_1.facing = -var_674_2.face
				end
			end
		end
	end
end

function __recovered_scope_0.var_0_325.go(arg_675_0, arg_675_1)
	local var_675_0 = arg_675_1.fx
	local var_675_1 = arg_675_1.fx.t or 0
	local var_675_2 = arg_675_1.owner
	local var_675_3 = arg_675_1.enemy
	local var_675_4 = arg_675_1.ally

	arg_675_1.slots = {}
	arg_675_1.slots.a, arg_675_1.slots.b, arg_675_1.slots.c = __recovered_scope_0.var_0_325.slots(arg_675_0, var_675_2, var_675_3, var_675_4)

	local var_675_5 = var_675_2.x or 0
	local var_675_6 = (var_675_2.y or 0) + __recovered_scope_0.var_0_332(arg_675_0, var_675_2)
	local var_675_7 = var_675_3.x or 0
	local var_675_8 = (var_675_3.y or 0) + __recovered_scope_0.var_0_332(arg_675_0, var_675_3)

	if arg_675_0.entityGroundPoint then
		var_675_5, var_675_6 = arg_675_0:entityGroundPoint(var_675_2)
		var_675_7, var_675_8 = arg_675_0:entityGroundPoint(var_675_3)
	end

	var_675_0.homeA, var_675_0.homeB = {
		x = var_675_5,
		y = var_675_6
	}, {
		x = var_675_7,
		y = var_675_8
	}
	arg_675_1.stage = "away"
	var_675_2._dimensionalPocket, var_675_3._dimensionalPocket = arg_675_1, arg_675_1

	__recovered_scope_0.var_0_325.settle(var_675_2)
	__recovered_scope_0.var_0_325.settle(var_675_3)

	local function var_675_9(arg_676_0)
		if arg_675_0.entityGroundPoint then
			return arg_675_0:entityGroundPoint(arg_676_0)
		end

		return arg_676_0.x or 0, (arg_676_0.y or 0) + __recovered_scope_0.var_0_332(arg_675_0, arg_676_0)
	end

	if var_675_4 then
		local var_675_10, var_675_11 = var_675_9(var_675_4)

		var_675_0.homeC = {
			x = var_675_10,
			y = var_675_11
		}
		var_675_4._dimensionalPocket = arg_675_1

		__recovered_scope_0.var_0_325.settle(var_675_4)

		if var_675_4._shadowStep then
			var_675_4._shadowStep.fx.finished = true
			var_675_4._shadowStep = nil
		end
	end

	__recovered_scope_0.var_0_325.hold(arg_675_0, arg_675_1)

	var_675_2.target, var_675_3.target = var_675_3, var_675_2

	if var_675_4 then
		var_675_4.target = var_675_3

		__recovered_scope_0.var_0_325.stepIn(arg_675_0, arg_675_1)
	end

	local var_675_12, var_675_13 = var_675_9(var_675_2)
	local var_675_14, var_675_15 = var_675_9(var_675_3)

	var_675_0.awayA, var_675_0.awayB = {
		x = var_675_12,
		y = var_675_13
	}, {
		x = var_675_14,
		y = var_675_15
	}

	if var_675_4 then
		local var_675_16, var_675_17 = var_675_9(var_675_4)

		var_675_0.awayC = {
			x = var_675_16,
			y = var_675_17
		}
	end

	var_675_0.openT, var_675_0._pocket, var_675_0.trail, var_675_0.trailT = var_675_1, nil, {}
	var_675_0.trailB, var_675_0.trailBT, var_675_0.trailC, var_675_0.trailCT = nil
end

function __recovered_scope_0.var_0_325.leave(arg_677_0, arg_677_1)
	local var_677_0 = arg_677_1.fx
	local var_677_1 = arg_677_1.fx.t or 0

	arg_677_1.stage = "leave"

	local var_677_2 = var_677_0.goT and math.max(0, math.min(1, (var_677_1 - var_677_0.goT) / __recovered_scope_0.var_0_325.IN)) or 1

	var_677_0.leaveT, var_677_0.endT = var_677_1 - __recovered_scope_0.var_0_325.OUT * (1 - var_677_2), var_677_1
	var_677_0.homeT = var_677_0.leaveT + __recovered_scope_0.var_0_325.OUT
end

function __recovered_scope_0.var_0_325.back(arg_678_0, arg_678_1)
	local var_678_0 = arg_678_1.fx

	if arg_678_1.stage == "away" or arg_678_1.stage == "leave" then
		for iter_678_0, iter_678_1 in ipairs({
			"a",
			"b",
			"c"
		}) do
			local var_678_1 = iter_678_1 == "a" and arg_678_1.owner or iter_678_1 == "b" and arg_678_1.enemy or arg_678_1.ally
			local var_678_2 = arg_678_1.homes[iter_678_1]

			if var_678_1 and var_678_1.alive and var_678_2 then
				__recovered_scope_0.var_0_325.settle(var_678_1)
				__recovered_scope_0.var_0_331(var_678_1, var_678_2.x, var_678_2.y)

				var_678_1.facing = var_678_2.face
			end
		end

		var_678_0.homeT, var_678_0.trail, var_678_0.trailT = var_678_0.t or 0, {}
		var_678_0.trailB, var_678_0.trailBT, var_678_0.trailC, var_678_0.trailCT = nil
	end

	arg_678_1.owner._dimensionalPocket, arg_678_1.enemy._dimensionalPocket = nil
	arg_678_1.over = true

	if rawget(arg_678_1.owner, "_dimensionalDuel") == arg_678_1 then
		arg_678_1.owner._dimensionalDuel = nil
	end

	if rawget(arg_678_1.enemy, "_dimensionalDuel") == arg_678_1 then
		arg_678_1.enemy._dimensionalDuel = nil
	end

	local var_678_3 = arg_678_1.ally

	if var_678_3 then
		if rawget(var_678_3, "_dimensionalPocket") == arg_678_1 then
			var_678_3._dimensionalPocket = nil
		end

		if rawget(var_678_3, "_dimensionalDuel") == arg_678_1 then
			var_678_3._dimensionalDuel = nil
		end
	end

	if var_678_0.openT and not var_678_0.endT then
		var_678_0.endT = var_678_0.t or 0
	end
end

 __recovered_scope_0.var_0_334 = {
	"isSummon",
	"isClone",
	"isShadowMinion",
	"isFireSpirit",
	"isFlameSpirit",
	"isHusk",
	"isUndyingSoul",
	"isDecoyDummy",
	"isGuardianGolem",
	"isWildBeast",
	"isWoodenWatchtower",
	"isItemEffect",
	"_itemOwner",
	"isMirror",
	"isTower"
}

function __recovered_scope_0.var_0_325.companionOk(arg_679_0, arg_679_1, arg_679_2)
	if not arg_679_2 or arg_679_2 == arg_679_1 or arg_679_2.side and arg_679_2.side ~= "ally" or not __recovered_scope_0.var_0_326(arg_679_2) then
		return false
	end

	for iter_679_0, iter_679_1 in ipairs(__recovered_scope_0.var_0_334) do
		if arg_679_2[iter_679_1] then
			return false
		end
	end

	if arg_679_2._venomMawSwallowed or arg_679_2._succubusCharm or arg_679_2._wastelandPiperCharm or arg_679_2._tricksterCharm or arg_679_2._caveBasiliskPetrified or arg_679_2._oathHelmStone or arg_679_2._hellEnforcerExecutionLock or arg_679_2._spaceWizardExchangeMotion or arg_679_2._marshDriveAir or arg_679_2._spaceKnightLaunch or arg_679_2._cosmicPressure or arg_679_2._starJudgeScaleAirborne or arg_679_2._escapeCloakRetreat or arg_679_2._collisionDrivePassenger then
		return false
	end

	if require("src.game.combat").wooden_watchtower.mounted(arg_679_2) then
		return false
	end

	local var_679_0 = arg_679_2.skill

	if arg_679_2._casting or arg_679_2._forceAnim or arg_679_2._collisionWindup or __recovered_scope_0.var_0_311.busy(arg_679_0, arg_679_2) or var_679_0 and (var_679_0.flashCast or var_679_0.burstCast or var_679_0.state == "casting" or var_679_0.state == "precast") then
		return false
	end

	return not __recovered_scope_0.var_0_325.of(arg_679_2) and not rawget(arg_679_2, "_dimensionalPocket") and not rawget(arg_679_2, "_dimensionalSlit")
end

function __recovered_scope_0.var_0_325.companion(arg_680_0, arg_680_1, arg_680_2)
	local var_680_0 = tonumber(__recovered_scope_0.var_0_325.runtime(arg_680_1).allyRange)

	if not var_680_0 or var_680_0 <= 0 then
		return nil
	end

	arg_680_2 = arg_680_2 or arg_680_0._awakeningMetric

	local var_680_1 = tonumber(arg_680_0.stage or arg_680_0.currentStage or 1) == 6
	local var_680_2 = require("src.game.combat").stage6_rift

	local function var_680_3(arg_681_0)
		local var_681_0 = var_680_2.entityLane(arg_680_0, arg_681_0)

		if var_681_0 == nil then
			var_681_0 = arg_681_0._stage6WaveLane == "upper" and -1 or arg_681_0._stage6WaveLane == "lower" and 1 or nil
		end

		return var_681_0
	end

	local var_680_4 = var_680_1 and var_680_3(arg_680_1)
	local var_680_5
	local var_680_6

	for iter_680_0, iter_680_1 in ipairs(arg_680_0.allies or {}) do
		if __recovered_scope_0.var_0_325.companionOk(arg_680_0, arg_680_1, iter_680_1) and (not var_680_1 or var_680_4 ~= nil and var_680_3(iter_680_1) == var_680_4) then
			local var_680_7 = arg_680_2 and arg_680_2(arg_680_1, iter_680_1) or ((iter_680_1.x or 0) - (arg_680_1.x or 0))^2 + ((iter_680_1.y or 0) - (arg_680_1.y or 0))^2

			if var_680_7 <= var_680_0 * var_680_0 and (not var_680_6 or var_680_7 < var_680_6) then
				var_680_5, var_680_6 = iter_680_1, var_680_7
			end
		end
	end

	return var_680_5
end

function __recovered_scope_0.var_0_325.stepIn(arg_682_0, arg_682_1)
	local var_682_0 = arg_682_1.ally
	local var_682_1 = arg_682_1.enemy
	local var_682_2 = arg_682_1.slots and arg_682_1.slots.c

	if not var_682_0 or not var_682_2 or not var_682_0.alive then
		return
	end

	local var_682_3 = require("src.game.unit_abilities")

	local function var_682_4()
		if var_682_3.prism_spear_basic.limit(var_682_0) then
			return var_682_3.prism_spear_basic.touches(arg_682_0, var_682_0, var_682_1)
		end

		if var_682_3.angel_basic.matches(var_682_0) then
			return var_682_3.angel_basic.canStart(arg_682_0, var_682_0, var_682_1)
		end

		return true
	end

	if var_682_4() then
		return
	end

	local var_682_5 = var_682_2.x

	for iter_682_0 = 1, __recovered_scope_0.var_0_325.STEP_IN do
		__recovered_scope_0.var_0_331(var_682_0, var_682_5 + var_682_2.face * iter_682_0, var_682_2.y)

		if var_682_4() then
			var_682_2.x = var_682_0.x

			return
		end
	end

	__recovered_scope_0.var_0_331(var_682_0, var_682_5, var_682_2.y)
end

function __recovered_scope_0.var_0_325.part(arg_684_0, arg_684_1)
	local var_684_0 = arg_684_1.fx
	local var_684_1 = arg_684_1.fx.t or 0

	if arg_684_1.stage == "out" then
		local var_684_2 = math.max(0, math.min(1, (var_684_1 - (var_684_0.cutT or 0)) / __recovered_scope_0.var_0_325.OUT))

		var_684_0.allyHomeT = var_684_1 - __recovered_scope_0.var_0_325.IN * (1 - var_684_2)

		__recovered_scope_0.var_0_325.unhook(arg_684_0, arg_684_1)
	elseif arg_684_1.stage == "away" then
		local var_684_3 = var_684_0.goT and math.max(0, math.min(1, (var_684_1 - var_684_0.goT) / __recovered_scope_0.var_0_325.IN)) or 1

		var_684_0.allyLeaveT = var_684_1 - __recovered_scope_0.var_0_325.OUT * (1 - var_684_3)
		var_684_0.allyHomeT = var_684_0.allyLeaveT + __recovered_scope_0.var_0_325.OUT
		arg_684_1.allyLeaving = true
	end
end

function __recovered_scope_0.var_0_325.unhook(arg_685_0, arg_685_1)
	local var_685_0 = arg_685_1.ally

	if arg_685_1.stage ~= "out" and var_685_0.alive and arg_685_1.homes.c then
		__recovered_scope_0.var_0_325.settle(var_685_0)
		__recovered_scope_0.var_0_331(var_685_0, arg_685_1.homes.c.x, arg_685_1.homes.c.y)

		var_685_0.facing = arg_685_1.homes.c.face
		arg_685_1.fx.trailC, arg_685_1.fx.trailCT = nil
	end

	if rawget(var_685_0, "_dimensionalPocket") == arg_685_1 then
		var_685_0._dimensionalPocket = nil
	end

	if rawget(var_685_0, "_dimensionalDuel") == arg_685_1 then
		var_685_0._dimensionalDuel = nil
	end

	arg_685_1.ally, arg_685_1.allyLeaving = nil

	if arg_685_1.slots then
		arg_685_1.slots.c = nil
	end
end

function __recovered_scope_0.var_0_325.begin(arg_686_0, arg_686_1, arg_686_2, arg_686_3, arg_686_4, arg_686_5)
	local var_686_0 = __recovered_scope_0.var_0_325.of(arg_686_1)

	if var_686_0 then
		if var_686_0.owner ~= arg_686_1 or var_686_0.enemy ~= arg_686_2 or var_686_0.stage == "leave" then
			return nil
		end

		var_686_0.t, var_686_0.dur = 0, arg_686_4
		arg_686_3.duelDur = arg_686_4

		return var_686_0
	end

	if __recovered_scope_0.var_0_325.of(arg_686_2) then
		return nil
	end

	local var_686_1 = __recovered_scope_0.var_0_325.companion(arg_686_0, arg_686_1, arg_686_5)
	local var_686_2 = arg_686_3.t or 0
	local var_686_3 = {
		stage = "out",
		t = 0,
		owner = arg_686_1,
		enemy = arg_686_2,
		ally = var_686_1,
		dur = arg_686_4,
		fx = arg_686_3,
		homes = {
			a = {
				x = arg_686_1.x or 0,
				y = arg_686_1.y or 0,
				face = (arg_686_1.facing or 1) < 0 and -1 or 1
			},
			b = {
				x = arg_686_2.x or 0,
				y = arg_686_2.y or 0,
				face = (arg_686_2.facing or -1) < 0 and -1 or 1
			},
			c = var_686_1 and {
				x = var_686_1.x or 0,
				y = var_686_1.y or 0,
				face = (var_686_1.facing or 1) < 0 and -1 or 1
			} or nil
		}
	}

	arg_686_1._dimensionalDuel, arg_686_2._dimensionalDuel = var_686_3, var_686_3
	arg_686_1._dimensionalSlit, arg_686_2._dimensionalSlit = arg_686_3, arg_686_3

	if arg_686_3.ally and arg_686_3.ally ~= var_686_1 and rawget(arg_686_3.ally, "_dimensionalSlit") == arg_686_3 then
		arg_686_3.ally._dimensionalSlit = nil
	end

	if var_686_1 then
		var_686_1._dimensionalDuel, var_686_1._dimensionalSlit = var_686_3, arg_686_3
	end

	arg_686_3.duel, arg_686_3.target, arg_686_3.ally, arg_686_3.duelDur = var_686_3, arg_686_2, var_686_1, arg_686_4
	arg_686_3.cutT, arg_686_3.goT, arg_686_3.openT, arg_686_3.endT, arg_686_3.leaveT, arg_686_3.homeT, arg_686_3.homeA, arg_686_3.homeB = var_686_2, var_686_2 + __recovered_scope_0.var_0_325.OUT
	arg_686_3.awayA, arg_686_3.awayB, arg_686_3._pocket = nil
	arg_686_3.c, arg_686_3.homeC, arg_686_3.awayC, arg_686_3.allyLeaveT, arg_686_3.allyHomeT = nil
	arg_686_3.trailB, arg_686_3.trailBT, arg_686_3.trailC, arg_686_3.trailCT = nil

	__recovered_scope_0.var_0_325.sever(arg_686_0, var_686_3)

	return var_686_3
end

function __recovered_scope_0.var_0_325.close(arg_687_0, arg_687_1)
	if arg_687_1.over then
		return
	end

	if arg_687_1.stage == "away" then
		__recovered_scope_0.var_0_325.leave(arg_687_0, arg_687_1)
	elseif arg_687_1.stage == "out" then
		local var_687_0 = math.max(0, math.min(1, ((arg_687_1.fx.t or 0) - (arg_687_1.fx.cutT or 0)) / __recovered_scope_0.var_0_325.OUT))

		arg_687_1.fx.homeT = (arg_687_1.fx.t or 0) - __recovered_scope_0.var_0_325.IN * (1 - var_687_0)

		__recovered_scope_0.var_0_325.back(arg_687_0, arg_687_1)
	end
end

function __recovered_scope_0.var_0_325.onAnimation(arg_688_0, arg_688_1, arg_688_2, arg_688_3, arg_688_4, arg_688_5, arg_688_6)
	local var_688_0 = arg_688_1.skill
	local var_688_1 = var_688_0 and var_688_0.duelCast

	if not var_688_1 then
		return
	end

	local var_688_2 = __recovered_scope_0.var_0_325.anim(arg_688_1)

	if not __recovered_scope_0.var_0_325.canAct(arg_688_1) or not arg_688_1.anim or arg_688_1.anim.name ~= var_688_2 then
		__recovered_scope_0.var_0_325.finish(arg_688_1)

		return
	end

	local var_688_3 = __recovered_scope_0.var_0_325.runtime(arg_688_1)
	local var_688_4 = tonumber(var_688_0.releaseFrame) or tonumber(var_688_3.releaseFrame) or 6

	if not var_688_1.struck and var_688_4 <= (arg_688_1.anim.frame or 1) then
		arg_688_1.anim.frame, arg_688_1.anim.t = var_688_4, 0
		var_688_1.struck = true

		if var_688_1.charge and not var_688_1.charge.releaseT then
			var_688_1.charge.releaseT = var_688_1.charge.t or 0
		end

		local var_688_5 = var_688_1.target

		if not __recovered_scope_0.var_0_325.targetable(arg_688_0, arg_688_1, var_688_5, arg_688_4) then
			var_688_5 = __recovered_scope_0.var_0_325.pick(arg_688_0, arg_688_1, arg_688_4, arg_688_5)
		end

		if not var_688_5 then
			return
		end

		local var_688_6 = require("src.game.projectiles").spellblade_vortex
		local var_688_7, var_688_8 = var_688_6.targetPoint(arg_688_0, var_688_5)
		local var_688_9 = var_688_6.targetCover(arg_688_0, var_688_5)
		local var_688_10 = (var_688_5.x or 0) >= (arg_688_1.x or 0) and 1 or -1
		local var_688_11 = math.max(1, math.floor(var_688_6.drawSize(arg_688_0) / 32 + 0.5))

		arg_688_0.vfx = arg_688_0.vfx or {}
		arg_688_0.vfx[#arg_688_0.vfx + 1] = {
			t = 0,
			part = "slash",
			kind = "dimensional_duel",
			dur = math.huge,
			owner = arg_688_1,
			target = var_688_5,
			style = var_688_3.style,
			pixel = var_688_11,
			face = var_688_10,
			hit = {
				x = var_688_7,
				y = var_688_8,
				half = var_688_9 and var_688_9.half or 20
			},
			life = tonumber(var_688_3.slashLife)
		}

		if arg_688_6 then
			arg_688_6(var_688_5, (arg_688_3 or 0) * (tonumber(var_688_3.dmgMul) or 2), arg_688_1, nil, {
				battleSkillDamage = true,
				dimensionalDuel = true,
				basicAttack = false
			})
		end

		local var_688_12 = tonumber(var_688_3.duration) or 2.5

		arg_688_1._aspdBuff, arg_688_1._aspdBuffT, arg_688_1._aspdBuffDur = tonumber(var_688_3.aspdBonus) or 0.5, var_688_12, var_688_12

		local var_688_13 = __recovered_scope_0.var_0_325.entry(arg_688_0, arg_688_1)

		var_688_13.hasteEnd = (var_688_13.t or 0) + var_688_12
		var_688_13.hit = var_688_13.hit or {
			x = var_688_7,
			y = var_688_8,
			half = var_688_9 and var_688_9.half or 20
		}

		if __recovered_scope_0.var_0_326(var_688_5) and not __recovered_scope_0.var_0_325.isBoss(var_688_5) and not var_688_5.isCrystalGuardWall and not __recovered_scope_0.var_0_325.last(arg_688_0, var_688_5) and __recovered_scope_0.var_0_325.begin(arg_688_0, arg_688_1, var_688_5, var_688_13, var_688_12, arg_688_5) then
			var_688_13.hit = {
				x = var_688_7,
				y = var_688_8,
				half = var_688_9 and var_688_9.half or 20
			}
		end

		return
	end

	local var_688_14 = arg_688_2 and arg_688_2.animations and arg_688_2.animations[var_688_2]

	if (arg_688_1.anim.frame or 1) > (var_688_14 and var_688_14.frames or 9) then
		__recovered_scope_0.var_0_325.finish(arg_688_1)
	end
end

function __recovered_scope_0.var_0_325.trackCharge(arg_689_0, arg_689_1)
	local var_689_0 = arg_689_1.t or 0
	local var_689_1 = math.max(0, var_689_0 - (arg_689_1.lastT or var_689_0))

	arg_689_1.lastT = var_689_0

	local var_689_2 = arg_689_1.owner

	if not __recovered_scope_0.var_0_326(var_689_2) then
		arg_689_1.finished = true

		return
	end

	if arg_689_1.releaseT and (arg_689_0.timeStopT or 0) > 0 and not __recovered_scope_0.var_0_327(var_689_2) then
		arg_689_1.releaseT = arg_689_1.releaseT + var_689_1
	end

	local var_689_3 = var_689_2.skill and var_689_2.skill.duelCast

	if not arg_689_1.releaseT and (not var_689_3 or var_689_3.charge ~= arg_689_1) then
		arg_689_1.releaseT = var_689_0
	end

	local var_689_4 = __recovered_scope_0.var_0_325.pose(arg_689_0, var_689_2, false)

	arg_689_1.a = {
		x = var_689_4.footX,
		y = var_689_4.footY,
		pose = var_689_4.quad and var_689_4 or nil
	}

	if arg_689_1.releaseT and var_689_0 - arg_689_1.releaseT >= __recovered_scope_0.var_0_325.CHARGE then
		arg_689_1.finished = true
	end
end

function __recovered_scope_0.var_0_325.track(arg_690_0, arg_690_1)
	local var_690_0 = arg_690_1.t or 0

	if arg_690_1.part == "slash" then
		if var_690_0 > (arg_690_1.life or __recovered_scope_0.var_0_325.SLASH) then
			arg_690_1.finished = true
		end

		return
	end

	if arg_690_1.part == "charge" then
		__recovered_scope_0.var_0_325.trackCharge(arg_690_0, arg_690_1)

		return
	end

	local var_690_1 = math.max(0, var_690_0 - (arg_690_1.lastT or var_690_0))

	arg_690_1.lastT = var_690_0

	if (arg_690_0.timeStopT or 0) > 0 and (not arg_690_1.owner or not __recovered_scope_0.var_0_327(arg_690_1.owner)) then
		for iter_690_0, iter_690_1 in ipairs({
			"hasteEnd",
			"goT",
			"homeT",
			"leaveT",
			"endT",
			"openT",
			"cutT",
			"allyLeaveT",
			"allyHomeT"
		}) do
			if arg_690_1[iter_690_1] then
				arg_690_1[iter_690_1] = arg_690_1[iter_690_1] + var_690_1
			end
		end

		var_690_1 = 0
	end

	local var_690_2 = arg_690_1.duel

	if var_690_2 and not var_690_2.over then
		var_690_2.t = var_690_2.t + var_690_1

		local var_690_3 = var_690_2.enemy
		local var_690_4 = var_690_2.ally

		if var_690_4 and not var_690_2.allyLeaving and (not __recovered_scope_0.var_0_326(var_690_4) or var_690_4._succubusCharm or var_690_4._wastelandPiperCharm) then
			__recovered_scope_0.var_0_325.part(arg_690_0, var_690_2)
		end

		if var_690_2.ally and var_690_2.allyLeaving and var_690_0 >= (arg_690_1.allyHomeT or 0) then
			__recovered_scope_0.var_0_325.unhook(arg_690_0, var_690_2)
		end

		local var_690_5 = not __recovered_scope_0.var_0_326(var_690_2.owner) or not __recovered_scope_0.var_0_326(var_690_3) or var_690_3._tricksterCharm or var_690_3._succubusCharm or __recovered_scope_0.var_0_325.isBoss(var_690_3) or __recovered_scope_0.var_0_325.last(arg_690_0, var_690_3)

		if var_690_2.stage == "out" then
			if var_690_5 then
				__recovered_scope_0.var_0_325.close(arg_690_0, var_690_2)
			elseif var_690_0 >= (arg_690_1.goT or 0) then
				__recovered_scope_0.var_0_325.go(arg_690_0, var_690_2)
			end
		elseif var_690_2.stage == "away" and (var_690_5 or var_690_2.t >= var_690_2.dur - __recovered_scope_0.var_0_325.OUT) then
			__recovered_scope_0.var_0_325.leave(arg_690_0, var_690_2)
		end

		if not var_690_2.over and var_690_2.stage == "leave" and var_690_0 >= (arg_690_1.homeT or 0) then
			__recovered_scope_0.var_0_325.back(arg_690_0, var_690_2)
		end

		if not var_690_2.over then
			__recovered_scope_0.var_0_325.hold(arg_690_0, var_690_2)
		end
	end

	if arg_690_1.homeT and var_690_0 > arg_690_1.homeT + __recovered_scope_0.var_0_325.IN then
		for iter_690_2, iter_690_3 in ipairs({
			arg_690_1.owner,
			arg_690_1.target
		}) do
			if iter_690_3 and rawget(iter_690_3, "_dimensionalSlit") == arg_690_1 then
				iter_690_3._dimensionalSlit = nil
			end
		end
	end

	local var_690_6 = arg_690_1.ally

	if var_690_6 and rawget(var_690_6, "_dimensionalSlit") == arg_690_1 and (arg_690_1.allyHomeT and var_690_0 > arg_690_1.allyHomeT + __recovered_scope_0.var_0_325.IN or arg_690_1.homeT and var_690_0 > arg_690_1.homeT + __recovered_scope_0.var_0_325.IN) then
		var_690_6._dimensionalSlit = nil
	end

	if not __recovered_scope_0.var_0_326(arg_690_1.owner) then
		arg_690_1.hasteEnd = math.min(arg_690_1.hasteEnd or var_690_0, var_690_0)
	end

	__recovered_scope_0.var_0_325.place(arg_690_0, arg_690_1)

	if not (var_690_2 and not var_690_2.over) and var_690_0 - math.max(arg_690_1.hasteEnd or 0, arg_690_1.endT or 0, (arg_690_1.homeT or 0) + __recovered_scope_0.var_0_325.IN) > __recovered_scope_0.var_0_325.LINGER then
		arg_690_1.finished = true

		for iter_690_4, iter_690_5 in ipairs({
			arg_690_1.owner,
			arg_690_1.target
		}) do
			if iter_690_5 and rawget(iter_690_5, "_dimensionalSlit") == arg_690_1 then
				iter_690_5._dimensionalSlit = nil
			end
		end

		if var_690_6 and rawget(var_690_6, "_dimensionalSlit") == arg_690_1 then
			var_690_6._dimensionalSlit = nil
		end
	end
end

function __recovered_scope_0.var_0_325.endBattle(arg_691_0)
	for iter_691_0, iter_691_1 in ipairs(arg_691_0 and arg_691_0.vfx or {}) do
		local var_691_0 = iter_691_1.kind == "dimensional_duel" and iter_691_1.duel

		if var_691_0 and not var_691_0.over then
			var_691_0.stage = var_691_0.stage == "out" and "out" or "leave"

			__recovered_scope_0.var_0_325.back(arg_691_0, var_691_0)
		end
	end

	for iter_691_2, iter_691_3 in ipairs(arg_691_0 and arg_691_0.allies or {}) do
		if __recovered_scope_0.var_0_325.matches(iter_691_3) and iter_691_3.skill.duelCast then
			__recovered_scope_0.var_0_325.finish(iter_691_3)
		end

		iter_691_3._dimensionalDuel, iter_691_3._dimensionalPocket, iter_691_3._dimensionalSlit = nil
	end

	for iter_691_4, iter_691_5 in ipairs(arg_691_0 and arg_691_0.enemies or {}) do
		iter_691_5._dimensionalDuel, iter_691_5._dimensionalPocket, iter_691_5._dimensionalSlit = nil
	end

	for iter_691_6, iter_691_7 in ipairs(arg_691_0 and arg_691_0.vfx or {}) do
		if iter_691_7.kind == "dimensional_duel" then
			iter_691_7.finished = true
		end
	end
end

 __recovered_scope_0.var_0_335 = __recovered_scope_0.var_0_325
 __recovered_scope_0.var_0_336 = nil
 __recovered_scope_0.var_0_337 = {
	MARGIN = 14,
	VANISH = 6,
	GAP = 4,
	LINGER = 0.5,
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_338(arg_692_0)
	return arg_692_0 and arg_692_0.alive and not arg_692_0.dying and (arg_692_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_337.runtime(arg_693_0)
	return arg_693_0 and arg_693_0.primarySkillDef and arg_693_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_337.matches(arg_694_0)
	return arg_694_0 ~= nil and arg_694_0.skill ~= nil and arg_694_0.skill.kind == "FlashSlash"
end

function __recovered_scope_0.var_0_337.charges(arg_695_0)
	return math.max(1, math.floor(tonumber(__recovered_scope_0.var_0_337.runtime(arg_695_0).charges) or 7))
end

function __recovered_scope_0.var_0_337.maxTargets(arg_696_0)
	return math.max(1, math.floor(tonumber(__recovered_scope_0.var_0_337.runtime(arg_696_0).maxTargets) or 1))
end

function __recovered_scope_0.var_0_337.onBasic(arg_697_0)
	if not __recovered_scope_0.var_0_337.matches(arg_697_0) or arg_697_0.skill.flashCast then
		return
	end

	local var_697_0 = arg_697_0.skill

	var_697_0.flashCharge = math.min(__recovered_scope_0.var_0_337.charges(arg_697_0), (var_697_0.flashCharge or 0) + 1)
end

function __recovered_scope_0.var_0_337.barFill(arg_698_0)
	local var_698_0 = arg_698_0 and arg_698_0.skill

	if not var_698_0 or var_698_0.flashCast then
		return 0
	end

	return (var_698_0.flashCharge or 0) / __recovered_scope_0.var_0_337.charges(arg_698_0)
end

function __recovered_scope_0.var_0_337.targetable(arg_699_0, arg_699_1, arg_699_2, arg_699_3)
	if not __recovered_scope_0.var_0_338(arg_699_2) or arg_699_3 and not arg_699_3(arg_699_2, arg_699_1, arg_699_0) then
		return false
	end

	if _G.__slotStage6RiftTargetAllowed and not _G.__slotStage6RiftTargetAllowed(arg_699_0, arg_699_1, arg_699_2) then
		return false
	end

	local var_699_0 = arg_699_0.area

	return arg_699_2._enteredBattlefield == true or not var_699_0 or not var_699_0.w or (arg_699_2.x or 0) <= var_699_0.x + var_699_0.w - __recovered_scope_0.var_0_337.MARGIN and (arg_699_2.x or 0) >= var_699_0.x + __recovered_scope_0.var_0_337.MARGIN
end

function __recovered_scope_0.var_0_337.farthest(arg_700_0, arg_700_1, arg_700_2, arg_700_3)
	local var_700_0
	local var_700_1

	for iter_700_0, iter_700_1 in ipairs(arg_700_0.enemies or {}) do
		if __recovered_scope_0.var_0_337.targetable(arg_700_0, arg_700_1, iter_700_1, arg_700_2) then
			local var_700_2 = arg_700_3 and arg_700_3(arg_700_1, iter_700_1) or ((iter_700_1.x or 0) - (arg_700_1.x or 0))^2 + ((iter_700_1.y or 0) - (arg_700_1.y or 0))^2

			if not var_700_1 or var_700_2 > var_700_1 + 1e-09 then
				var_700_0, var_700_1 = iter_700_1, var_700_2
			end
		end
	end

	return var_700_0
end

function __recovered_scope_0.var_0_337.nextTarget(arg_701_0, arg_701_1, arg_701_2, arg_701_3)
	local var_701_0 = arg_701_0.ui and arg_701_0.ui.battle
	local var_701_1 = math.max(0.1, math.min(1, tonumber(var_701_0 and var_701_0.rangeEllipseYScale) or 0.5))
	local var_701_2
	local var_701_3

	for iter_701_0, iter_701_1 in ipairs(arg_701_0.enemies or {}) do
		if not arg_701_2.struck[iter_701_1] and __recovered_scope_0.var_0_337.targetable(arg_701_0, arg_701_1, iter_701_1, arg_701_3) then
			local var_701_4 = ((iter_701_1.x or 0) - arg_701_2.homeX)^2 + (((iter_701_1.y or 0) - arg_701_2.homeY) / var_701_1)^2

			if not var_701_3 or var_701_4 > var_701_3 + 1e-09 then
				var_701_2, var_701_3 = iter_701_1, var_701_4
			end
		end
	end

	return var_701_2
end

 function __recovered_scope_0.var_0_339(arg_702_0)
	return arg_702_0._bodyColX and arg_702_0._bodyColW and arg_702_0._bodyColX + arg_702_0._bodyColW * 0.5 or arg_702_0.x or 0, arg_702_0._bodyColW or 24
end

function __recovered_scope_0.var_0_337.behind(arg_703_0, arg_703_1, arg_703_2, arg_703_3)
	local var_703_0, var_703_1 = __recovered_scope_0.var_0_339(arg_703_1)
	local var_703_2, var_703_3 = __recovered_scope_0.var_0_339(arg_703_2)
	local var_703_4 = var_703_2 + (var_703_2 >= (arg_703_3 or var_703_0) and 1 or -1) * ((var_703_3 + var_703_1) * 0.5 + __recovered_scope_0.var_0_337.GAP)
	local var_703_5 = (arg_703_1.x or 0) + var_703_4 - var_703_0
	local var_703_6 = arg_703_2.y or arg_703_1.y or 0
	local var_703_7 = arg_703_0.area

	if var_703_7 and var_703_7.w then
		local var_703_8 = (arg_703_1.x or 0) - var_703_0

		var_703_5 = math.max(var_703_7.x + __recovered_scope_0.var_0_337.MARGIN + var_703_1 * 0.5 + var_703_8, math.min(var_703_7.x + var_703_7.w - __recovered_scope_0.var_0_337.MARGIN - var_703_1 * 0.5 + var_703_8, var_703_5))
	end

	local var_703_9, var_703_10 = require("src.game.combat").stage6_rift.clampDestinationToLane(arg_703_0, arg_703_1, var_703_5, var_703_6)

	var_703_6 = var_703_10 or var_703_6

	local var_703_11 = var_703_5 <= (arg_703_2.x or 0) and 1 or -1

	return var_703_5, var_703_6, var_703_11
end

 function __recovered_scope_0.var_0_340(arg_704_0, arg_704_1, arg_704_2)
	arg_704_0.x, arg_704_0.y = (arg_704_0.x or 0) + arg_704_1, (arg_704_0.y or 0) + arg_704_2

	for iter_704_0, iter_704_1 in ipairs({
		"colX",
		"_bodyColX"
	}) do
		if arg_704_0[iter_704_1] then
			arg_704_0[iter_704_1] = arg_704_0[iter_704_1] + arg_704_1
		end
	end

	for iter_704_2, iter_704_3 in ipairs({
		"colY",
		"_bodyColY"
	}) do
		if arg_704_0[iter_704_3] then
			arg_704_0[iter_704_3] = arg_704_0[iter_704_3] + arg_704_2
		end
	end

	arg_704_0._posLerp = nil
end

 function __recovered_scope_0.var_0_341(arg_705_0, arg_705_1, arg_705_2)
	local var_705_0 = __recovered_scope_0.var_0_311.pose(arg_705_0, arg_705_1)
	local var_705_1 = {
		x = var_705_0.footX,
		y = var_705_0.footY,
		face = (arg_705_1.facing or 1) < 0 and -1 or 1
	}
	local var_705_2 = var_705_0.asset
	local var_705_3 = var_705_2 and (var_705_2.bodyBounds or var_705_2.bounds and var_705_2.bounds.idle and var_705_2.bounds.idle[1])

	if var_705_3 and var_705_0.x0 then
		var_705_1.cx = var_705_0.x0 + (var_705_3.x + var_705_3.w * 0.5) * (var_705_0.dx or 2)
		var_705_1.cy = var_705_0.y0 + (var_705_3.y + var_705_3.h * 0.5) * (var_705_0.dy or 2)
	else
		var_705_1.cx, var_705_1.cy = var_705_1.x, var_705_1.y - 22
	end

	if arg_705_2 then
		arg_705_2.pose, arg_705_2.cx, arg_705_2.cy = var_705_0, var_705_1.cx, var_705_1.cy
	end

	return var_705_1
end

__recovered_scope_0.var_0_337.spot = __recovered_scope_0.var_0_341

function __recovered_scope_0.var_0_337.finish(arg_706_0)
	local var_706_0 = arg_706_0.skill
	local var_706_1 = var_706_0 and var_706_0.flashCast

	if var_706_1 and var_706_1.fx and var_706_1.fx.phase ~= "done" then
		var_706_1.fx.phase, var_706_1.fx.at.done = "done", var_706_1.fx.t or 0
	end

	if var_706_0 then
		var_706_0.state, var_706_0.active, var_706_0.flashCast, var_706_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_706_0)
	end

	arg_706_0._casting, arg_706_0._suppressAttack = false, false
	arg_706_0._forceAnim, arg_706_0._forceAnimT = nil, 0
end

 function __recovered_scope_0.var_0_342(arg_707_0, arg_707_1, arg_707_2)
	arg_707_0.anim.name, arg_707_0.anim.frame, arg_707_0.anim.t, arg_707_0.anim.reverse = arg_707_1, arg_707_2 or 1, 0
	arg_707_0.anim._desynced = true
	arg_707_0._forceAnim = arg_707_1
end

 function __recovered_scope_0.var_0_343(arg_708_0, arg_708_1)
	arg_708_0.phase = arg_708_1

	local var_708_0 = arg_708_0.fx

	if var_708_0 then
		var_708_0.phase = arg_708_1
		var_708_0.at[arg_708_1] = var_708_0.t or 0

		if arg_708_1 == "hop" or arg_708_1 == "back" then
			var_708_0.slashPose = var_708_0.pose

			local var_708_1 = var_708_0.legs[#var_708_0.legs] and var_708_0.legs[#var_708_0.legs].to

			var_708_0.legs[#var_708_0.legs + 1] = {
				from = var_708_1,
				pose = var_708_0.pose,
				vanishT = var_708_0.t or 0
			}
		end
	end
end

function __recovered_scope_0.var_0_337.teleportAnim(arg_709_0)
	return __recovered_scope_0.var_0_337.runtime(arg_709_0).teleportAnim or "attack3"
end

function __recovered_scope_0.var_0_337.slashAnim(arg_710_0)
	return __recovered_scope_0.var_0_337.runtime(arg_710_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_337.animOf(arg_711_0, arg_711_1)
	return arg_711_1.phase == "slash" and __recovered_scope_0.var_0_337.slashAnim(arg_711_0) or __recovered_scope_0.var_0_337.teleportAnim(arg_711_0)
end

function __recovered_scope_0.var_0_337.updateCast(arg_712_0, arg_712_1, arg_712_2, arg_712_3, arg_712_4)
	local var_712_0 = arg_712_1.skill

	if not __recovered_scope_0.var_0_337.canAct(arg_712_1) then
		if var_712_0.flashCast then
			__recovered_scope_0.var_0_337.finish(arg_712_1)
		end

		return
	end

	local var_712_1 = var_712_0.flashCast

	if var_712_1 then
		if not arg_712_1.anim or arg_712_1.anim.name ~= __recovered_scope_0.var_0_337.animOf(arg_712_1, var_712_1) then
			__recovered_scope_0.var_0_337.finish(arg_712_1)

			return
		end

		arg_712_1._casting, arg_712_1._suppressAttack = true, true
		arg_712_1._forceAnim, arg_712_1._forceAnimT = arg_712_1.anim.name, math.max(0.2, arg_712_2 + 0.1)
		arg_712_1.facing = var_712_1.face

		return
	end

	if (var_712_0.flashCharge or 0) < __recovered_scope_0.var_0_337.charges(arg_712_1) or arg_712_1._pendingWarriorHit or not arg_712_1.anim or __recovered_scope_0.var_0_335.of(arg_712_1) then
		return
	end

	local var_712_2 = __recovered_scope_0.var_0_337.farthest(arg_712_0, arg_712_1, arg_712_3, arg_712_4)

	if not var_712_2 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_712_1)

	var_712_0.state, var_712_0.active, var_712_0.flashCharge = "active", true, 0
	arg_712_1._pendingWarriorHit, arg_712_1.shotPending, arg_712_1.pendingTarget = nil, false
	arg_712_1._casting, arg_712_1._suppressAttack = true, true
	arg_712_1._forceAnimT = math.max(0.2, arg_712_2 + 0.1)

	__recovered_scope_0.var_0_342(arg_712_1, __recovered_scope_0.var_0_337.teleportAnim(arg_712_1), 1)

	local var_712_3 = (arg_712_1.facing or 1) < 0 and -1 or 1
	local var_712_4 = {
		count = 0,
		phase = "out",
		target = var_712_2,
		homeX = arg_712_1.x,
		homeY = arg_712_1.y,
		homeBodyX = __recovered_scope_0.var_0_339(arg_712_1),
		homeFace = var_712_3,
		face = var_712_3,
		struck = {}
	}

	var_712_0.flashCast = var_712_4

	local var_712_5 = __recovered_scope_0.var_0_337.runtime(arg_712_1)
	local var_712_6 = {
		t = 0,
		phase = "out",
		kind = "flash_slash",
		dur = math.huge,
		at = {
			out = 0
		},
		owner = arg_712_1,
		target = var_712_2,
		style = var_712_5.style,
		legs = {},
		strikes = {},
		pixel = math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_712_0) / 32 + 0.5))
	}

	var_712_6.home = __recovered_scope_0.var_0_341(arg_712_0, arg_712_1, var_712_6)
	var_712_6.homePose = var_712_6.pose
	var_712_6.legs[1] = {
		vanishT = 0,
		from = var_712_6.home,
		pose = var_712_6.pose
	}
	var_712_6.animFrame, var_712_6.animName, var_712_6.face = 1, arg_712_1.anim.name, var_712_3
	var_712_4.fx = var_712_6
	arg_712_0.vfx = arg_712_0.vfx or {}
	arg_712_0.vfx[#arg_712_0.vfx + 1] = var_712_6
end

function __recovered_scope_0.var_0_337.frameDuration(arg_713_0, arg_713_1, arg_713_2)
	local var_713_0 = arg_713_0.skill

	if not var_713_0 or not var_713_0.flashCast then
		return arg_713_1, arg_713_2
	end

	return tonumber(var_713_0.animationSpeed) or tonumber(__recovered_scope_0.var_0_337.runtime(arg_713_0).animationSpeed) or 0.08, 1
end

 function __recovered_scope_0.var_0_344(arg_714_0, arg_714_1, arg_714_2)
	local var_714_0 = arg_714_2.fx

	if not var_714_0 then
		return
	end

	local var_714_1 = __recovered_scope_0.var_0_341(arg_714_0, arg_714_1, var_714_0)
	local var_714_2 = var_714_0.legs[#var_714_0.legs]

	if var_714_2 then
		var_714_2.to, var_714_2.appearT = var_714_1, var_714_0.t or 0
	end

	if arg_714_2.phase == "in" then
		if arg_714_2.count == 0 then
			var_714_0.dest = var_714_1
		end
	else
		var_714_0.back = var_714_1
	end
end

function __recovered_scope_0.var_0_337.onAnimation(arg_715_0, arg_715_1, arg_715_2, arg_715_3, arg_715_4, arg_715_5, arg_715_6)
	local var_715_0 = arg_715_1.skill
	local var_715_1 = var_715_0 and var_715_0.flashCast

	if not var_715_1 then
		return
	end

	if not __recovered_scope_0.var_0_337.canAct(arg_715_1) or not arg_715_1.anim or arg_715_1.anim.name ~= __recovered_scope_0.var_0_337.animOf(arg_715_1, var_715_1) then
		__recovered_scope_0.var_0_337.finish(arg_715_1)

		return
	end

	local var_715_2 = arg_715_1.anim.frame or 1
	local var_715_3 = var_715_1.fx

	if var_715_1.phase == "out" or var_715_1.phase == "hop" or var_715_1.phase == "back" then
		if var_715_2 <= __recovered_scope_0.var_0_337.VANISH then
			return
		end

		local var_715_4

		if var_715_1.phase ~= "back" then
			var_715_4 = var_715_1.target

			if var_715_1.count > 0 or not __recovered_scope_0.var_0_337.targetable(arg_715_0, arg_715_1, var_715_4, arg_715_4) then
				var_715_4 = var_715_1.count == 0 and __recovered_scope_0.var_0_337.farthest(arg_715_0, arg_715_1, arg_715_4, arg_715_5) or __recovered_scope_0.var_0_337.nextTarget(arg_715_0, arg_715_1, var_715_1, arg_715_4)
			end
		end

		if var_715_4 then
			var_715_1.target = var_715_4

			local var_715_5, var_715_6, var_715_7 = __recovered_scope_0.var_0_337.behind(arg_715_0, arg_715_1, var_715_4, var_715_1.homeBodyX)

			__recovered_scope_0.var_0_340(arg_715_1, var_715_5 - arg_715_1.x, var_715_6 - arg_715_1.y)

			var_715_1.face = var_715_7

			__recovered_scope_0.var_0_343(var_715_1, "in")

			if var_715_3 then
				var_715_3.target = var_715_4
			end
		else
			__recovered_scope_0.var_0_340(arg_715_1, var_715_1.homeX - arg_715_1.x, var_715_1.homeY - arg_715_1.y)

			var_715_1.face = var_715_1.homeFace

			__recovered_scope_0.var_0_343(var_715_1, "home")
		end

		arg_715_1.facing = var_715_1.face
		arg_715_1.anim.frame, arg_715_1.anim.t = __recovered_scope_0.var_0_337.VANISH + 1, 0

		__recovered_scope_0.var_0_344(arg_715_0, arg_715_1, var_715_1)

		return
	end

	local var_715_8 = arg_715_2 and arg_715_2.animations and arg_715_2.animations[arg_715_1.anim.name] and arg_715_2.animations[arg_715_1.anim.name].frames or 10

	if var_715_1.phase == "in" then
		if var_715_8 < var_715_2 then
			__recovered_scope_0.var_0_343(var_715_1, "slash")
			__recovered_scope_0.var_0_342(arg_715_1, __recovered_scope_0.var_0_337.slashAnim(arg_715_1), 1)

			var_715_1.hit = false

			if var_715_3 then
				var_715_3.strikes[#var_715_3.strikes + 1] = {
					target = var_715_1.target,
					k = var_715_1.count + 1,
					gatherT = var_715_3.t or 0,
					face = var_715_1.face
				}
			end
		end

		return
	end

	if var_715_1.phase == "slash" then
		local var_715_9 = __recovered_scope_0.var_0_337.runtime(arg_715_1)
		local var_715_10 = tonumber(var_715_0.releaseFrame) or tonumber(var_715_9.releaseFrame) or 6

		if not var_715_1.hit and var_715_10 <= var_715_2 then
			arg_715_1.anim.frame, arg_715_1.anim.t = var_715_10, 0
			var_715_1.hit = true
			var_715_1.count = var_715_1.count + 1

			local var_715_11 = var_715_1.target

			var_715_1.struck[var_715_11] = true

			local var_715_12 = var_715_3 and var_715_3.strikes[#var_715_3.strikes]

			if var_715_3 then
				var_715_3.at.hit = var_715_3.t or 0
			end

			if var_715_12 then
				var_715_12.hitT = var_715_3.t or 0
			end

			if __recovered_scope_0.var_0_337.targetable(arg_715_0, arg_715_1, var_715_11, arg_715_4) then
				local var_715_13 = require("src.game.projectiles").spellblade_vortex
				local var_715_14, var_715_15 = var_715_13.targetPoint(arg_715_0, var_715_11)
				local var_715_16 = var_715_13.targetCover(arg_715_0, var_715_11)
				local var_715_17 = {
					x = var_715_14,
					y = var_715_15,
					half = var_715_16 and var_715_16.half or 16,
					target = var_715_11
				}

				if var_715_12 then
					var_715_12.hit = var_715_17
				end

				if var_715_3 and var_715_1.count == 1 then
					var_715_3.hit = var_715_17
				end

				local var_715_18 = var_715_1.count == 1 and (tonumber(var_715_9.dmgMul) or 1.5) or tonumber(var_715_9.extraDmgMul) or tonumber(var_715_9.dmgMul) or 1.5

				if arg_715_6 then
					arg_715_6(var_715_11, (arg_715_3 or 0) * var_715_18, arg_715_1, nil, {
						battleSkillDamage = true,
						flashSlash = true,
						basicAttack = false
					})
				end
			end

			return
		end

		if var_715_8 < var_715_2 then
			local var_715_19 = var_715_1.count < __recovered_scope_0.var_0_337.maxTargets(arg_715_1) and __recovered_scope_0.var_0_337.nextTarget(arg_715_0, arg_715_1, var_715_1, arg_715_4)

			__recovered_scope_0.var_0_343(var_715_1, var_715_19 and "hop" or "back")
			__recovered_scope_0.var_0_342(arg_715_1, __recovered_scope_0.var_0_337.teleportAnim(arg_715_1), 1)
		end

		return
	end

	if var_715_1.phase == "home" and var_715_8 < var_715_2 then
		if var_715_3 then
			var_715_3.at.done = var_715_3.t or 0
			var_715_3.phase = "done"
		end

		__recovered_scope_0.var_0_337.finish(arg_715_1)

		arg_715_1.anim.name, arg_715_1.anim.frame, arg_715_1.anim.t = "idle", 1, 0
	end
end

function __recovered_scope_0.var_0_337.track(arg_716_0, arg_716_1)
	local var_716_0 = arg_716_1.owner

	if arg_716_1.phase ~= "done" and __recovered_scope_0.var_0_338(var_716_0) then
		__recovered_scope_0.var_0_341(arg_716_0, var_716_0, arg_716_1)

		arg_716_1.animFrame, arg_716_1.animName, arg_716_1.face = var_716_0.anim and var_716_0.anim.frame or 1, var_716_0.anim and var_716_0.anim.name, (var_716_0.facing or 1) < 0 and -1 or 1
	elseif arg_716_1.phase ~= "done" then
		arg_716_1.phase, arg_716_1.at.done = "done", arg_716_1.t or 0
	end

	if arg_716_1.phase == "done" and (arg_716_1.t or 0) - (arg_716_1.at.done or 0) >= __recovered_scope_0.var_0_337.LINGER then
		arg_716_1.finished = true
	end
end

function __recovered_scope_0.var_0_337.endBattle(arg_717_0)
	for iter_717_0, iter_717_1 in ipairs(arg_717_0 and arg_717_0.allies or {}) do
		if __recovered_scope_0.var_0_337.matches(iter_717_1) then
			if iter_717_1.skill.flashCast then
				__recovered_scope_0.var_0_337.finish(iter_717_1)
			end

			iter_717_1.skill.flashCharge = 0
		end
	end

	for iter_717_2, iter_717_3 in ipairs(arg_717_0 and arg_717_0.vfx or {}) do
		if iter_717_3.kind == "flash_slash" then
			iter_717_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_345 = __recovered_scope_0.var_0_337
 __recovered_scope_0.var_0_346 = nil
 __recovered_scope_0.var_0_347 = {
	FADE = 0.45,
	INSET = 4,
	NEAR = 14,
	OFF = 26,
	FAR = 76,
	LINGER = 0.6,
	STAGGER = 0.1,
	FALL = 0.34,
	APPEAR = 0.14,
	SKY_MARGIN = 12,
	FALL_H = 150,
	BREAK = 0.7,
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_348(arg_718_0)
	return arg_718_0 and arg_718_0.alive and not arg_718_0.dying and (arg_718_0.hp or 0) > 0
end

 function __recovered_scope_0.var_0_349()
	return require("src.game.projectiles").guardian_sword
end

function __recovered_scope_0.var_0_347.runtime(arg_720_0)
	return arg_720_0 and arg_720_0.primarySkillDef and arg_720_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_347.anim(arg_721_0)
	return arg_721_0.skill and arg_721_0.skill.activeAnim or __recovered_scope_0.var_0_347.runtime(arg_721_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_347.landAt()
	return __recovered_scope_0.var_0_347.APPEAR + __recovered_scope_0.var_0_347.FALL
end

function __recovered_scope_0.var_0_347.guard(arg_723_0, arg_723_1)
	for iter_723_0, iter_723_1 in ipairs(arg_723_0 and arg_723_0._guardianSwords or {}) do
		if iter_723_1.ally == arg_723_1 and iter_723_1.state == "guard" and not iter_723_1.finished then
			return iter_723_1
		end
	end
end

function __recovered_scope_0.var_0_347.wards(arg_724_0, arg_724_1, arg_724_2, arg_724_3)
	local var_724_0 = __recovered_scope_0.var_0_347.runtime(arg_724_1)
	local var_724_1 = tonumber(var_724_0.threat) or 90
	local var_724_2 = {}

	for iter_724_0, iter_724_1 in ipairs(arg_724_0.allies or {}) do
		if __recovered_scope_0.var_0_348(iter_724_1) and not iter_724_1.isDecoyDummy and not iter_724_1._venomMawSwallowed and not __recovered_scope_0.var_0_335.separated(arg_724_0, arg_724_1, iter_724_1) then
			local var_724_3
			local var_724_4

			for iter_724_2, iter_724_3 in ipairs(arg_724_0.enemies or {}) do
				if __recovered_scope_0.var_0_345.targetable(arg_724_0, iter_724_1, iter_724_3, arg_724_2) then
					local var_724_5 = arg_724_3 and arg_724_3(iter_724_1, iter_724_3) or ((iter_724_3.x or 0) - (iter_724_1.x or 0))^2 + ((iter_724_3.y or 0) - (iter_724_1.y or 0))^2

					if var_724_5 <= var_724_1 * var_724_1 and (not var_724_4 or var_724_5 < var_724_4) then
						var_724_3, var_724_4 = iter_724_3, var_724_5
					end
				end
			end

			if var_724_3 then
				var_724_2[#var_724_2 + 1] = {
					ally = iter_724_1,
					enemy = var_724_3,
					d = var_724_4,
					index = iter_724_0,
					guarded = __recovered_scope_0.var_0_347.guard(arg_724_0, iter_724_1) ~= nil
				}
			end
		end
	end

	table.sort(var_724_2, function(arg_725_0, arg_725_1)
		if arg_725_0.guarded ~= arg_725_1.guarded then
			return not arg_725_0.guarded
		end

		if arg_725_0.d ~= arg_725_1.d then
			return arg_725_0.d < arg_725_1.d
		end

		return arg_725_0.index < arg_725_1.index
	end)

	local var_724_6 = {}

	for iter_724_4 = 1, math.min(math.max(1, math.floor(tonumber(var_724_0.maxTargets) or 2)), #var_724_2) do
		var_724_6[iter_724_4] = var_724_2[iter_724_4]
	end

	return var_724_6
end

function __recovered_scope_0.var_0_347.spot(arg_726_0, arg_726_1, arg_726_2, arg_726_3)
	local var_726_0
	local var_726_1

	if arg_726_0.entityGroundPoint then
		var_726_0, var_726_1 = arg_726_0:entityGroundPoint(arg_726_1)
	end

	local var_726_2

	var_726_2, var_726_1 = var_726_0 or arg_726_1.x or 0, var_726_1 or (arg_726_1.y or 0) + 32

	local var_726_3 = (arg_726_1.facing or 1) < 0 and -1 or 1

	if not arg_726_2 then
		return var_726_2 + var_726_3 * __recovered_scope_0.var_0_347.OFF, var_726_1, var_726_3
	end

	if var_726_2 < (arg_726_2.x or 0) then
		var_726_3 = 1
	elseif var_726_2 > (arg_726_2.x or 0) then
		var_726_3 = -1
	end

	local var_726_4 = (__recovered_scope_0.var_0_349().nearEdge(arg_726_0, arg_726_2, var_726_3) - var_726_2) * var_726_3 + __recovered_scope_0.var_0_347.INSET * (arg_726_3 or 2)

	if var_726_4 > __recovered_scope_0.var_0_347.FAR then
		var_726_4 = __recovered_scope_0.var_0_347.OFF
	elseif var_726_4 < __recovered_scope_0.var_0_347.NEAR then
		var_726_4 = __recovered_scope_0.var_0_347.NEAR
	end

	return var_726_2 + var_726_3 * var_726_4, var_726_1, var_726_3
end

function __recovered_scope_0.var_0_347.place(arg_727_0, arg_727_1, arg_727_2)
	local var_727_0 = __recovered_scope_0.var_0_311.pose(arg_727_0, arg_727_1)

	arg_727_2.pose, arg_727_2.x, arg_727_2.footY, arg_727_2.face = var_727_0, var_727_0.footX, var_727_0.footY, (arg_727_1.facing or 1) < 0 and -1 or 1
end

 function __recovered_scope_0.var_0_350(arg_728_0)
	return math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_728_0) / 32 + 0.5))
end

function __recovered_scope_0.var_0_347.charge(arg_729_0, arg_729_1)
	local var_729_0 = {
		state = "charge",
		kind = "guardian_swordfall",
		t = 0,
		dur = math.huge,
		owner = arg_729_1,
		style = __recovered_scope_0.var_0_347.runtime(arg_729_1).style,
		pixel = __recovered_scope_0.var_0_350(arg_729_0),
		swords = {}
	}

	__recovered_scope_0.var_0_347.place(arg_729_0, arg_729_1, var_729_0)

	arg_729_0.vfx = arg_729_0.vfx or {}
	arg_729_0.vfx[#arg_729_0.vfx + 1] = var_729_0

	return var_729_0
end

function __recovered_scope_0.var_0_347.finish(arg_730_0)
	local var_730_0 = arg_730_0.skill
	local var_730_1 = var_730_0 and var_730_0.swordCast

	if var_730_1 and var_730_1.fx and var_730_1.fx.state == "charge" then
		var_730_1.fx.finished = true
	end

	if var_730_0 then
		var_730_0.state, var_730_0.active, var_730_0.swordCast, var_730_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_730_0)
	end

	arg_730_0._casting, arg_730_0._suppressAttack = false, false
	arg_730_0._forceAnim, arg_730_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_347.updateCast(arg_731_0, arg_731_1, arg_731_2, arg_731_3, arg_731_4)
	local var_731_0 = arg_731_1.skill

	if not __recovered_scope_0.var_0_347.canAct(arg_731_1) then
		if var_731_0.swordCast then
			__recovered_scope_0.var_0_347.finish(arg_731_1)
		end

		return
	end

	local var_731_1 = __recovered_scope_0.var_0_347.anim(arg_731_1)

	if var_731_0.swordCast then
		if not arg_731_1.anim or arg_731_1.anim.name ~= var_731_1 then
			__recovered_scope_0.var_0_347.finish(arg_731_1)

			return
		end

		arg_731_1._casting, arg_731_1._suppressAttack = true, true
		arg_731_1._forceAnim, arg_731_1._forceAnimT = var_731_1, math.max(0.2, arg_731_2 + 0.1)

		return
	end

	var_731_0.cdT = math.min(var_731_0.cd or 7, (var_731_0.cdT or 0) + arg_731_2)

	if var_731_0.cdT < (var_731_0.cd or 7) then
		return
	end

	var_731_0.ready = true

	if not arg_731_1.anim or not __recovered_scope_0.var_0_347.wards(arg_731_0, arg_731_1, arg_731_3, arg_731_4)[1] then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_731_1)

	var_731_0.state, var_731_0.active, var_731_0.ready, var_731_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_731_0)
	var_731_0.swordCast = {
		released = false
	}
	arg_731_1._pendingWarriorHit, arg_731_1.shotPending, arg_731_1.pendingTarget = nil, false
	arg_731_1._casting, arg_731_1._suppressAttack = true, true
	arg_731_1._forceAnim, arg_731_1._forceAnimT = var_731_1, math.max(0.2, arg_731_2 + 0.1)
	arg_731_1.anim.name, arg_731_1.anim.frame, arg_731_1.anim.t, arg_731_1.anim.reverse = var_731_1, 1, 0
	arg_731_1.anim._desynced = true
	var_731_0.swordCast.fx = __recovered_scope_0.var_0_347.charge(arg_731_0, arg_731_1)
end

function __recovered_scope_0.var_0_347.frameDuration(arg_732_0, arg_732_1, arg_732_2)
	local var_732_0 = arg_732_0.skill

	if not var_732_0 or not var_732_0.swordCast or not arg_732_0.anim or arg_732_0.anim.name ~= __recovered_scope_0.var_0_347.anim(arg_732_0) then
		return arg_732_1, arg_732_2
	end

	return tonumber(var_732_0.animationSpeed) or tonumber(__recovered_scope_0.var_0_347.runtime(arg_732_0).animationSpeed) or 0.08, 1
end

function __recovered_scope_0.var_0_347.release(arg_733_0, arg_733_1, arg_733_2, arg_733_3, arg_733_4, arg_733_5)
	local var_733_0 = __recovered_scope_0.var_0_347.runtime(arg_733_1)
	local var_733_1 = arg_733_5.fx

	if not var_733_1 or not not var_733_1.finished then
		var_733_1 = __recovered_scope_0.var_0_347.charge(arg_733_0, arg_733_1)
		arg_733_5.fx = var_733_1
	end

	__recovered_scope_0.var_0_347.place(arg_733_0, arg_733_1, var_733_1)

	var_733_1.state, var_733_1.releaseT = "release", var_733_1.t or 0
	var_733_1.skyY = arg_733_0.area and arg_733_0.area.y and arg_733_0.area.y + 2 or nil

	local var_733_2 = __recovered_scope_0.var_0_347.wards(arg_733_0, arg_733_1, arg_733_3, arg_733_4)

	if not var_733_2[1] then
		var_733_2[1] = {
			ally = arg_733_1
		}
	end

	local var_733_3 = {
		fall = {},
		broke = {}
	}

	for iter_733_0, iter_733_1 in ipairs(var_733_2) do
		local var_733_4, var_733_5, var_733_6 = __recovered_scope_0.var_0_347.spot(arg_733_0, iter_733_1.ally, iter_733_1.enemy, var_733_1.pixel)
		local var_733_7 = {
			state = "fall",
			kind = "guardian_sword",
			t = -(iter_733_0 - 1) * (tonumber(var_733_0.stagger) or __recovered_scope_0.var_0_347.STAGGER),
			dur = math.huge,
			k = iter_733_0,
			owner = arg_733_1,
			ally = iter_733_1.ally,
			group = var_733_3,
			style = var_733_1.style,
			pixel = var_733_1.pixel,
			sheet = var_733_0.sheet,
			x = var_733_4,
			footY = var_733_5,
			side = var_733_6,
			hits = {},
			breakHits = {},
			atk = arg_733_2 or 0,
			dmgMul = tonumber(var_733_0.dmgMul) or 0.6,
			breakDmgMul = tonumber(var_733_0.breakDmgMul) or 0.4,
			maxHits = math.max(1, math.floor(tonumber(var_733_0.maxHits) or 2)),
			span = tonumber(var_733_0.duration) or 5,
			skyY = var_733_1.skyY
		}
		local var_733_8, var_733_9 = __recovered_scope_0.var_0_349().frame(var_733_7, var_733_4, var_733_5, 0)

		var_733_7.sky = var_733_1.skyY and math.max(24, math.min(__recovered_scope_0.var_0_347.FALL_H, var_733_9 - var_733_1.skyY - __recovered_scope_0.var_0_347.SKY_MARGIN)) or __recovered_scope_0.var_0_347.FALL_H
		arg_733_0.vfx[#arg_733_0.vfx + 1] = var_733_7
		var_733_1.swords[iter_733_0] = var_733_7
	end
end

function __recovered_scope_0.var_0_347.onAnimation(arg_734_0, arg_734_1, arg_734_2, arg_734_3, arg_734_4, arg_734_5)
	local var_734_0 = arg_734_1.skill
	local var_734_1 = var_734_0 and var_734_0.swordCast

	if not var_734_1 then
		return
	end

	local var_734_2 = __recovered_scope_0.var_0_347.anim(arg_734_1)

	if not __recovered_scope_0.var_0_347.canAct(arg_734_1) or not arg_734_1.anim or arg_734_1.anim.name ~= var_734_2 then
		__recovered_scope_0.var_0_347.finish(arg_734_1)

		return
	end

	local var_734_3 = tonumber(var_734_0.releaseFrame) or tonumber(__recovered_scope_0.var_0_347.runtime(arg_734_1).releaseFrame) or 6

	if not var_734_1.released and var_734_3 <= (arg_734_1.anim.frame or 1) then
		arg_734_1.anim.frame, arg_734_1.anim.t = var_734_3, 0
		var_734_1.released = true

		__recovered_scope_0.var_0_347.release(arg_734_0, arg_734_1, arg_734_3, arg_734_4, arg_734_5, var_734_1)

		return
	end

	local var_734_4 = arg_734_2 and arg_734_2.animations and arg_734_2.animations[var_734_2]

	if (arg_734_1.anim.frame or 1) > (var_734_4 and var_734_4.frames or 7) then
		__recovered_scope_0.var_0_347.finish(arg_734_1)
	end
end

 function __recovered_scope_0.var_0_351(arg_735_0, arg_735_1)
	local var_735_0 = arg_735_0 and arg_735_0._guardianSwords

	for iter_735_0 = #(var_735_0 or {}), 1, -1 do
		if var_735_0[iter_735_0] == arg_735_1 then
			table.remove(var_735_0, iter_735_0)
		end
	end
end

function __recovered_scope_0.var_0_347.fade(arg_736_0, arg_736_1)
	if arg_736_1.state ~= "fall" and arg_736_1.state ~= "guard" then
		return
	end

	arg_736_1.state, arg_736_1.endT = "fade", arg_736_1.t or 0

	__recovered_scope_0.var_0_351(arg_736_0, arg_736_1)
end

 function __recovered_scope_0.var_0_352(arg_737_0, arg_737_1, arg_737_2, arg_737_3, arg_737_4, arg_737_5, arg_737_6)
	for iter_737_0, iter_737_1 in ipairs(__recovered_scope_0.var_0_349().touching(arg_737_0, arg_737_1, arg_737_2, arg_737_4, arg_737_1.maxHits)) do
		arg_737_4[iter_737_1.target] = true
		arg_737_6[#arg_737_6 + 1] = iter_737_1

		if arg_737_3 then
			arg_737_3(iter_737_1.target, arg_737_1.atk * arg_737_5, arg_737_1.owner, nil, {
				battleSkillDamage = true,
				guardianSwordfall = true,
				basicAttack = false
			})
		end
	end
end

function __recovered_scope_0.var_0_347.land(arg_738_0, arg_738_1, arg_738_2, arg_738_3)
	arg_738_1.state, arg_738_1.landT = "guard", __recovered_scope_0.var_0_347.landAt()

	for iter_738_0, iter_738_1 in ipairs(arg_738_0._guardianSwords or {}) do
		if iter_738_1.ally == arg_738_1.ally then
			__recovered_scope_0.var_0_347.fade(arg_738_0, iter_738_1)
		end
	end

	arg_738_0._guardianSwords = arg_738_0._guardianSwords or {}

	table.insert(arg_738_0._guardianSwords, arg_738_1)
	__recovered_scope_0.var_0_352(arg_738_0, arg_738_1, arg_738_2, arg_738_3, arg_738_1.group.fall, arg_738_1.dmgMul, arg_738_1.hits)
end

function __recovered_scope_0.var_0_347.tryBlock(arg_739_0, arg_739_1, arg_739_2, arg_739_3, arg_739_4, arg_739_5)
	local var_739_0 = arg_739_0 and arg_739_0._guardianSwords

	if not var_739_0 or not var_739_0[1] or (tonumber(arg_739_2) or 0) <= 0 or not __recovered_scope_0.var_0_257.direct(arg_739_1, arg_739_3, arg_739_4) then
		return false
	end

	local var_739_1 = __recovered_scope_0.var_0_347.guard(arg_739_0, arg_739_1)

	if not var_739_1 then
		return false
	end

	var_739_1.state, var_739_1.endT = "break", var_739_1.t or 0

	__recovered_scope_0.var_0_351(arg_739_0, var_739_1)
	__recovered_scope_0.var_0_352(arg_739_0, var_739_1, nil, arg_739_5, var_739_1.group.broke, var_739_1.breakDmgMul, var_739_1.breakHits)

	arg_739_1.blockT = math.max(arg_739_1.blockT or 0, 0.4)
	arg_739_1.hpbarShowT = math.max(arg_739_1.hpbarShowT or 0, 0.6)
	arg_739_1.hitFlash = {
		t = 0,
		dur = 0.12,
		color = {
			0.85,
			0.95,
			1
		}
	}

	return true
end

function __recovered_scope_0.var_0_347.track(arg_740_0, arg_740_1, arg_740_2, arg_740_3)
	if arg_740_1.finished then
		return
	end

	local var_740_0 = arg_740_1.t or 0

	if arg_740_1.state == "fall" then
		if var_740_0 >= __recovered_scope_0.var_0_347.landAt() - 1e-09 then
			__recovered_scope_0.var_0_347.land(arg_740_0, arg_740_1, arg_740_2, arg_740_3)
		end

		return
	end

	if arg_740_1.state == "guard" then
		if not __recovered_scope_0.var_0_348(arg_740_1.ally) or var_740_0 - (arg_740_1.landT or 0) >= arg_740_1.span - 1e-09 then
			__recovered_scope_0.var_0_347.fade(arg_740_0, arg_740_1)
		end

		return
	end

	if var_740_0 - (arg_740_1.endT or 0) >= (arg_740_1.state == "break" and __recovered_scope_0.var_0_347.BREAK or __recovered_scope_0.var_0_347.FADE) then
		arg_740_1.finished = true
	end
end

function __recovered_scope_0.var_0_347.trackCast(arg_741_0, arg_741_1)
	if __recovered_scope_0.var_0_348(arg_741_1.owner) then
		__recovered_scope_0.var_0_347.place(arg_741_0, arg_741_1.owner, arg_741_1)
	end

	if arg_741_1.state == "release" and (arg_741_1.t or 0) - (arg_741_1.releaseT or 0) >= __recovered_scope_0.var_0_347.LINGER then
		arg_741_1.finished = true
	end
end

function __recovered_scope_0.var_0_347.endBattle(arg_742_0)
	for iter_742_0, iter_742_1 in ipairs(arg_742_0 and arg_742_0.allies or {}) do
		if iter_742_1.skill and iter_742_1.skill.kind == "GuardianSwordfall" and iter_742_1.skill.swordCast then
			__recovered_scope_0.var_0_347.finish(iter_742_1)
		end
	end

	for iter_742_2, iter_742_3 in ipairs(arg_742_0 and arg_742_0.vfx or {}) do
		if iter_742_3.kind == "guardian_swordfall" or iter_742_3.kind == "guardian_sword" then
			iter_742_3.finished = true
		end
	end

	if arg_742_0 then
		arg_742_0._guardianSwords = nil
	end
end

 __recovered_scope_0.var_0_353 = __recovered_scope_0.var_0_347
 __recovered_scope_0.var_0_354 = nil
 __recovered_scope_0.var_0_355 = {
	STAND = 0.15,
	FORM = 0.16,
	UP = 0.2,
	OUT = 0.08,
	FADE = 0.3,
	FALL = 0.42,
	FLASHES = {
		0,
		0.15,
		0.3,
		0.44
	},
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_356(arg_743_0)
	return arg_743_0 and arg_743_0.alive and not arg_743_0.dying and (arg_743_0.hp or 0) > 0
end

 function __recovered_scope_0.var_0_357(arg_744_0)
	return arg_744_0 < 0 and 0 or arg_744_0 > 1 and 1 or arg_744_0
end

function __recovered_scope_0.var_0_355.runtime(arg_745_0)
	return arg_745_0 and arg_745_0.primarySkillDef and arg_745_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_355.anim(arg_746_0)
	return arg_746_0.skill and arg_746_0.skill.activeAnim or __recovered_scope_0.var_0_355.runtime(arg_746_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_355.callAt()
	return __recovered_scope_0.var_0_355.OUT + __recovered_scope_0.var_0_355.UP
end

function __recovered_scope_0.var_0_355.fallAt()
	return __recovered_scope_0.var_0_355.callAt() + __recovered_scope_0.var_0_355.FORM
end

function __recovered_scope_0.var_0_355.landAt()
	return __recovered_scope_0.var_0_355.fallAt() + __recovered_scope_0.var_0_355.FALL
end

function __recovered_scope_0.var_0_355.endAt(arg_750_0)
	return __recovered_scope_0.var_0_355.landAt() + (arg_750_0 and arg_750_0.stand or __recovered_scope_0.var_0_355.STAND) + (arg_750_0 and arg_750_0.fade or __recovered_scope_0.var_0_355.FADE)
end

 __recovered_scope_0.var_0_358 = {
	"isSummon",
	"isShadowMinion",
	"isGuardianGolem",
	"isDecoyDummy",
	"isClone",
	"isFireSpirit",
	"isUndyingSoul",
	"isHusk"
}

function __recovered_scope_0.var_0_355.eligible(arg_751_0)
	if not arg_751_0 or arg_751_0.side ~= "ally" or arg_751_0._salvationRevived or not not arg_751_0._salvation then
		return false
	end

	for iter_751_0, iter_751_1 in ipairs(__recovered_scope_0.var_0_358) do
		if arg_751_0[iter_751_1] then
			return false
		end
	end

	for iter_751_2, iter_751_3 in pairs(arg_751_0.imprints or {}) do
		if iter_751_3 and iter_751_3.id == "self_destruct" then
			return false
		end
	end

	return true
end

function __recovered_scope_0.var_0_355.saver(arg_752_0, arg_752_1)
	for iter_752_0, iter_752_1 in ipairs(arg_752_0 and arg_752_0.allies or {}) do
		if iter_752_1 ~= arg_752_1 and __recovered_scope_0.var_0_356(iter_752_1) and iter_752_1.skill and iter_752_1.skill.kind == "SalvationArrow" and not iter_752_1._salvationUsed and (not __recovered_scope_0.var_0_335.of(iter_752_1) or not __recovered_scope_0.var_0_335.separated(arg_752_0, iter_752_1, arg_752_1)) then
			return iter_752_1
		end
	end
end

function __recovered_scope_0.var_0_355.intercept(arg_753_0, arg_753_1, arg_753_2)
	if not __recovered_scope_0.var_0_355.eligible(arg_753_1) then
		return false
	end

	local var_753_0 = __recovered_scope_0.var_0_355.saver(arg_753_0, arg_753_1)

	if not var_753_0 then
		return false
	end

	var_753_0._salvationUsed, arg_753_1._salvationRevived = true, true

	local var_753_1 = __recovered_scope_0.var_0_355.runtime(var_753_0)

	arg_753_1._salvation = {
		state = "down",
		owner = var_753_0,
		hpFrac = tonumber(var_753_1.hpFrac) or 0.4,
		refresh = var_753_1.refreshSkill == true
	}
	arg_753_1.dying, arg_753_1.hp, arg_753_1.invuln, arg_753_1.coolTicks, arg_753_1.deathT = true, 0, true, 999999

	if arg_753_2 then
		arg_753_2(arg_753_1)
	end

	arg_753_1.fearT, arg_753_1.poison, arg_753_1._poisonVisualT = nil
	arg_753_1.firebreatherBurn, arg_753_1.doomDragonBurn, arg_753_1.dragonkinBurn, arg_753_1._dragonkinBoilingTouched = nil

	if arg_753_1.anim then
		arg_753_1.anim.name, arg_753_1.anim.t, arg_753_1.anim.frame, arg_753_1.anim.reverse = "death", 0, 1
	end

	var_753_0.skill.salvation = {
		target = arg_753_1
	}

	return true
end

 function __recovered_scope_0.var_0_359(arg_754_0)
	return math.max(1, math.floor(require("src.game.projectiles").spellblade_vortex.drawSize(arg_754_0) / 32 + 0.5))
end

function __recovered_scope_0.var_0_355.arrowPoint(arg_755_0, arg_755_1)
	local var_755_0 = __recovered_scope_0.var_0_355.runtime(arg_755_1)
	local var_755_1 = tonumber(var_755_0.arrowX) or 14
	local var_755_2 = tonumber(var_755_0.arrowY) or 0
	local var_755_3 = __recovered_scope_0.var_0_311.pose(arg_755_0, arg_755_1)

	if var_755_3.x0 and var_755_3.dx and var_755_3.dx ~= 0 then
		return var_755_3.x0 + var_755_3.dx * var_755_1, var_755_3.y0 + var_755_3.dy * var_755_2, math.abs(var_755_3.dx), var_755_3.dx < 0 and -1 or 1
	end

	local var_755_4 = __recovered_scope_0.var_0_359(arg_755_0)
	local var_755_5 = (arg_755_1.facing or 1) < 0 and -1 or 1

	return (arg_755_1.x or 0) + (var_755_1 - 16) * var_755_4 * var_755_5, (arg_755_1.y or 0) + (var_755_2 - 16) * var_755_4, var_755_4, var_755_5
end

function __recovered_scope_0.var_0_355.place(arg_756_0, arg_756_1)
	local var_756_0 = arg_756_1.owner

	if var_756_0 and var_756_0.alive and (arg_756_1.state == "charge" or (arg_756_1.t or 0) < __recovered_scope_0.var_0_355.OUT) then
		arg_756_1.ax, arg_756_1.ay, arg_756_1.s, arg_756_1.face = __recovered_scope_0.var_0_355.arrowPoint(arg_756_0, var_756_0)
	end

	local var_756_1 = arg_756_1.ally

	if var_756_1 then
		local var_756_2 = var_756_1.x or 0
		local var_756_3

		if arg_756_0.entityGroundPoint then
			var_756_3 = select(2, arg_756_0:entityGroundPoint(var_756_1))
		end

		local var_756_4 = arg_756_0.getUnitAssetForAlly and arg_756_0:getUnitAssetForAlly(var_756_1)
		local var_756_5 = require("src.ui.widgets").sprite_anchor
		local var_756_6 = var_756_5.idleFootX(var_756_4)
		local var_756_7

		if var_756_6 then
			local var_756_8 = require("src.game.projectiles").spellblade_vortex.drawSize(arg_756_0)
			local var_756_9, var_756_10, var_756_11 = var_756_5.allyTransform(var_756_1, var_756_4, var_756_8, arg_756_0.ui and arg_756_0.ui.battle)

			if (var_756_1.facing or 1) < 0 then
				var_756_6 = (var_756_4.frameW or 32) - var_756_6
			end

			var_756_2 = var_756_9 + var_756_6 * var_756_11

			local var_756_12 = var_756_4.bounds and var_756_4.bounds.idle and var_756_4.bounds.idle[1]

			if var_756_12 then
				var_756_7 = var_756_10 + var_756_12.y * var_756_11
			end
		end

		arg_756_1.x, arg_756_1.footY = var_756_2, var_756_3 or (var_756_1.y or 0) + 32
		arg_756_1.arrowX = var_756_2
		arg_756_1.topY = var_756_7 or arg_756_1.footY - 52
	end

	arg_756_1.skyY = arg_756_0.area and arg_756_0.area.y and arg_756_0.area.y + 2 or (arg_756_1.footY or 0) - 200
end

 function __recovered_scope_0.var_0_360(arg_757_0, arg_757_1, arg_757_2, arg_757_3)
	local var_757_0 = arg_757_2.arrowQuad
	local var_757_1 = var_757_0 and arg_757_0.getUnitAssetForAlly and arg_757_0:getUnitAssetForAlly(arg_757_1)
	local var_757_2 = var_757_1 and var_757_1.animations and var_757_1.animations[__recovered_scope_0.var_0_355.anim(arg_757_1)]

	if not var_757_2 or not var_757_2.y then
		return nil
	end

	local var_757_3 = var_757_1.frameW or 32

	return {
		(arg_757_3 - 1) * var_757_3 + var_757_0[1],
		var_757_2.y + var_757_0[2],
		var_757_0[3],
		var_757_0[4],
		(tonumber(arg_757_2.arrowX) or var_757_0[1]) - var_757_0[1]
	}
end

function __recovered_scope_0.var_0_355.charge(arg_758_0, arg_758_1, arg_758_2)
	local var_758_0 = __recovered_scope_0.var_0_355.runtime(arg_758_1)
	local var_758_1 = tonumber(var_758_0.releaseFrame) or 8
	local var_758_2 = {
		state = "charge",
		t = 0,
		kind = "salvation_arrow",
		dur = math.huge,
		owner = arg_758_1,
		ally = arg_758_2,
		style = var_758_0.style,
		pixel = __recovered_scope_0.var_0_359(arg_758_0),
		sheet = var_758_0.sheet,
		body = var_758_0.bodySheet,
		releaseFrame = var_758_1,
		bodyQuad = __recovered_scope_0.var_0_360(arg_758_0, arg_758_1, var_758_0, var_758_1),
		stand = tonumber(var_758_0.stand),
		fade = tonumber(var_758_0.fade),
		skyMargin = tonumber(var_758_0.skyMargin)
	}

	__recovered_scope_0.var_0_355.place(arg_758_0, var_758_2)

	arg_758_0.vfx = arg_758_0.vfx or {}
	arg_758_0.vfx[#arg_758_0.vfx + 1] = var_758_2

	return var_758_2
end

 function __recovered_scope_0.var_0_361(arg_759_0)
	arg_759_0._casting, arg_759_0._suppressAttack = false, false
	arg_759_0._forceAnim, arg_759_0._forceAnimT = nil, 0
end

function __recovered_scope_0.var_0_355.stop(arg_760_0)
	local var_760_0 = arg_760_0.skill and arg_760_0.skill.salvation

	if var_760_0 then
		var_760_0.started = nil

		if var_760_0.fx then
			var_760_0.fx.finished = true
			var_760_0.fx = nil
		end
	end

	if arg_760_0.skill then
		arg_760_0.skill.state, arg_760_0.skill.active = nil, false
	end

	__recovered_scope_0.var_0_361(arg_760_0)
end

function __recovered_scope_0.var_0_355.finish(arg_761_0)
	local var_761_0 = arg_761_0.skill
	local var_761_1 = var_761_0 and var_761_0.salvation

	if var_761_1 and var_761_1.fx and var_761_1.fx.state == "charge" then
		var_761_1.fx.finished = true
	end

	if var_761_0 then
		var_761_0.salvation, var_761_0.state, var_761_0.active = nil, nil, false
	end

	__recovered_scope_0.var_0_361(arg_761_0)
end

function __recovered_scope_0.var_0_355.updateCast(arg_762_0, arg_762_1, arg_762_2)
	local var_762_0 = arg_762_1.skill
	local var_762_1 = var_762_0 and var_762_0.salvation

	if not var_762_1 then
		return
	end

	local var_762_2 = __recovered_scope_0.var_0_355.anim(arg_762_1)

	if var_762_1.released then
		if arg_762_1.anim and arg_762_1.anim.name == var_762_2 and __recovered_scope_0.var_0_355.canAct(arg_762_1) then
			arg_762_1._casting, arg_762_1._suppressAttack = true, true
			arg_762_1._forceAnim, arg_762_1._forceAnimT = var_762_2, math.max(0.2, arg_762_2 + 0.1)
		else
			__recovered_scope_0.var_0_355.finish(arg_762_1)
		end

		return
	end

	local var_762_3 = var_762_1.target
	local var_762_4 = var_762_3 and var_762_3._salvation

	if not var_762_3 or not var_762_3.alive or not var_762_4 or var_762_4.owner ~= arg_762_1 then
		__recovered_scope_0.var_0_355.finish(arg_762_1)

		return
	end

	if not __recovered_scope_0.var_0_355.canAct(arg_762_1) or not arg_762_1.anim then
		if var_762_1.started then
			__recovered_scope_0.var_0_355.stop(arg_762_1)
		end

		return
	end

	if var_762_1.started and arg_762_1.anim.name ~= var_762_2 then
		__recovered_scope_0.var_0_355.stop(arg_762_1)
	end

	if not var_762_1.started then
		var_762_1.started = true
		var_762_0.state, var_762_0.active = "active", true
		arg_762_1._pendingWarriorHit, arg_762_1.shotPending, arg_762_1.pendingTarget = nil, false
		arg_762_1.anim.name, arg_762_1.anim.frame, arg_762_1.anim.t, arg_762_1.anim.reverse = var_762_2, 1, 0
		arg_762_1.anim._desynced = true
		var_762_1.fx = __recovered_scope_0.var_0_355.charge(arg_762_0, arg_762_1, var_762_3)
	end

	arg_762_1._casting, arg_762_1._suppressAttack = true, true
	arg_762_1._forceAnim, arg_762_1._forceAnimT = var_762_2, math.max(0.2, arg_762_2 + 0.1)
end

function __recovered_scope_0.var_0_355.frameDuration(arg_763_0, arg_763_1, arg_763_2)
	local var_763_0 = arg_763_0.skill
	local var_763_1 = var_763_0 and var_763_0.salvation

	if not var_763_1 or not var_763_1.started and not var_763_1.released or not arg_763_0.anim or arg_763_0.anim.name ~= __recovered_scope_0.var_0_355.anim(arg_763_0) then
		return arg_763_1, arg_763_2
	end

	return tonumber(var_763_0.animationSpeed) or tonumber(__recovered_scope_0.var_0_355.runtime(arg_763_0).animationSpeed) or 0.08, 1
end

function __recovered_scope_0.var_0_355.release(arg_764_0, arg_764_1, arg_764_2)
	local var_764_0 = arg_764_2.fx

	if not var_764_0 or not not var_764_0.finished then
		var_764_0 = __recovered_scope_0.var_0_355.charge(arg_764_0, arg_764_1, arg_764_2.target)
		arg_764_2.fx = var_764_0
	end

	var_764_0.state, var_764_0.t = "release", 0

	__recovered_scope_0.var_0_355.place(arg_764_0, var_764_0)

	local var_764_1 = arg_764_2.target

	if var_764_1 and var_764_1._salvation then
		var_764_1._salvation.fx = var_764_0
	end

	if var_764_1 then
		var_764_1._salvationFx = var_764_0
	end
end

function __recovered_scope_0.var_0_355.onAnimation(arg_765_0, arg_765_1, arg_765_2)
	local var_765_0 = arg_765_1.skill
	local var_765_1 = var_765_0 and var_765_0.salvation

	if not var_765_1 or not var_765_1.started and not var_765_1.released then
		return
	end

	local var_765_2 = __recovered_scope_0.var_0_355.anim(arg_765_1)

	if not arg_765_1.anim or arg_765_1.anim.name ~= var_765_2 then
		return
	end

	local var_765_3 = tonumber(var_765_0.releaseFrame) or tonumber(__recovered_scope_0.var_0_355.runtime(arg_765_1).releaseFrame) or 8

	if not var_765_1.released and var_765_3 <= (arg_765_1.anim.frame or 1) then
		arg_765_1.anim.frame, arg_765_1.anim.t = var_765_3, 0
		var_765_1.released = true

		__recovered_scope_0.var_0_355.release(arg_765_0, arg_765_1, var_765_1)

		return
	end

	local var_765_4 = arg_765_2 and arg_765_2.animations and arg_765_2.animations[var_765_2]

	if var_765_1.released and (arg_765_1.anim.frame or 1) > (var_765_4 and var_765_4.frames or 11) then
		__recovered_scope_0.var_0_355.finish(arg_765_1)
	end
end

function __recovered_scope_0.var_0_355.revive(arg_766_0, arg_766_1)
	local var_766_0 = arg_766_1 and arg_766_1._salvation

	if not var_766_0 then
		return false
	end

	arg_766_1._salvation = nil

	if not arg_766_1.alive then
		return false
	end

	arg_766_1.dying, arg_766_1.deathT = false
	arg_766_1.hp = math.max(1, math.floor((arg_766_1.maxhp or 1) * (var_766_0.hpFrac or 0.4) + 0.5))
	arg_766_1.coolTicks, arg_766_1.shotPending, arg_766_1._forceAnim, arg_766_1._forceAnimT = 0, false
	arg_766_1.target, arg_766_1.pendingTarget = nil

	if arg_766_1.anim then
		arg_766_1.anim.name, arg_766_1.anim.t, arg_766_1.anim.frame, arg_766_1.anim.reverse = "idle", 0, 1
	end

	arg_766_1._invulnT, arg_766_1.invuln = 0.5, true
	arg_766_1.hpbarShowT = math.max(arg_766_1.hpbarShowT or 0, 1.2)

	if var_766_0.refresh and __recovered_scope_0.var_0_355.refreshSkill(arg_766_1) and var_766_0.fx then
		var_766_0.fx.refreshed = true
	end

	return true
end

function __recovered_scope_0.var_0_355.refreshSkill(arg_767_0)
	local var_767_0 = arg_767_0 and arg_767_0.skill
	local var_767_1 = arg_767_0 and arg_767_0.primarySkillDef
	local var_767_2 = tonumber(var_767_0 and var_767_0.cd) or 0

	if not var_767_0 or not (var_767_2 > 0) or var_767_0.kind == "VictorySignal" or not var_767_1 or var_767_1.activationType ~= "active" then
		return false
	end

	local var_767_3 = tonumber(var_767_0.cdT) or 0

	var_767_0._initDelayApplied = true

	if var_767_0.state then
		var_767_0.state, var_767_0.active, var_767_0.activeT = nil, false, 0
	end

	var_767_0.cdT, var_767_0.ready = var_767_2, true

	if var_767_3 < var_767_2 then
		require("src.game.awakening").externalCooldown(arg_767_0, var_767_2 - var_767_3)
	end

	return true
end

function __recovered_scope_0.var_0_355.barFill(arg_768_0)
	return arg_768_0 and arg_768_0._salvationUsed and 0 or 1
end

function __recovered_scope_0.var_0_355.giveUp(arg_769_0)
	arg_769_0._salvation, arg_769_0._salvationFx = nil
	arg_769_0.invuln, arg_769_0.deathT = nil, 0

	if arg_769_0.anim and arg_769_0.anim.name == "death" then
		arg_769_0.anim.reverse = nil
	end
end

function __recovered_scope_0.var_0_355.updateAlly(arg_770_0, arg_770_1)
	local var_770_0 = arg_770_1._salvation

	if not var_770_0 or var_770_0.fx then
		return
	end

	local var_770_1 = var_770_0.owner
	local var_770_2 = var_770_1 and var_770_1.skill and var_770_1.skill.salvation

	if not __recovered_scope_0.var_0_356(var_770_1) or not var_770_2 or var_770_2.target ~= arg_770_1 then
		__recovered_scope_0.var_0_355.giveUp(arg_770_1)
	end
end

__recovered_scope_0.var_0_355.FLASH = {
	heaven = {
		1,
		0.95,
		0.62
	},
	prism = {
		0.9,
		0.96,
		1
	},
	heart = {
		1,
		0.72,
		0.86
	},
	wings = {
		1,
		1,
		0.9
	},
	seraph_gate = {
		1,
		0.96,
		0.6
	},
	seraph_wings = {
		1,
		1,
		0.88
	},
	seraph_aurora = {
		0.92,
		0.96,
		1
	},
	seraph_seal = {
		1,
		0.92,
		0.55
	}
}

function __recovered_scope_0.var_0_355.track(arg_771_0, arg_771_1)
	if arg_771_1.finished then
		return
	end

	if arg_771_1.state == "charge" then
		local var_771_0 = arg_771_1.owner
		local var_771_1 = var_771_0 and var_771_0.skill and var_771_0.skill.salvation

		if not var_771_1 or var_771_1.fx ~= arg_771_1 then
			arg_771_1.finished = true

			return
		end

		__recovered_scope_0.var_0_355.place(arg_771_0, arg_771_1)

		return
	end

	local var_771_2 = arg_771_1.t or 0

	__recovered_scope_0.var_0_355.place(arg_771_0, arg_771_1)

	local var_771_3 = arg_771_1.ally
	local var_771_4 = var_771_3 and var_771_3._salvation

	if var_771_4 and var_771_4.fx == arg_771_1 then
		if var_771_2 >= __recovered_scope_0.var_0_355.callAt() and var_771_4.state == "down" then
			var_771_4.state, var_771_4.from, var_771_4.flashed = "rising", var_771_3.anim and var_771_3.anim.frame or 4, {}
		end

		if var_771_4.state == "rising" and var_771_3.anim then
			local var_771_5 = __recovered_scope_0.var_0_357((var_771_2 - __recovered_scope_0.var_0_355.callAt()) / (__recovered_scope_0.var_0_355.landAt() - __recovered_scope_0.var_0_355.callAt()))

			var_771_3.anim.name, var_771_3.anim.reverse = "death", true
			var_771_3.anim.frame = math.max(1, var_771_4.from - math.floor(var_771_5 * var_771_4.from + 1e-09))

			for iter_771_0, iter_771_1 in ipairs(__recovered_scope_0.var_0_355.FLASHES) do
				if not var_771_4.flashed[iter_771_0] and var_771_2 - __recovered_scope_0.var_0_355.callAt() >= iter_771_1 - 1e-09 then
					var_771_4.flashed[iter_771_0] = true
					var_771_3.hitFlash = {
						t = 0,
						dur = 0.12,
						color = __recovered_scope_0.var_0_355.FLASH[arg_771_1.style] or __recovered_scope_0.var_0_355.FLASH.heaven
					}
				end
			end
		end

		if var_771_2 >= __recovered_scope_0.var_0_355.landAt() - 1e-09 then
			__recovered_scope_0.var_0_355.revive(arg_771_0, var_771_3)
		end
	end

	if var_771_2 >= __recovered_scope_0.var_0_355.endAt(arg_771_1) then
		arg_771_1.finished = true

		if var_771_3 and var_771_3._salvationFx == arg_771_1 then
			var_771_3._salvationFx = nil
		end
	end
end

function __recovered_scope_0.var_0_355.endBattle(arg_772_0)
	for iter_772_0, iter_772_1 in ipairs(arg_772_0 and arg_772_0.allies or {}) do
		if iter_772_1.skill and iter_772_1.skill.kind == "SalvationArrow" and iter_772_1.skill.salvation then
			__recovered_scope_0.var_0_355.finish(iter_772_1)
		end

		local var_772_0 = iter_772_1._salvation

		if var_772_0 then
			if var_772_0.fx then
				__recovered_scope_0.var_0_355.revive(arg_772_0, iter_772_1)
			else
				__recovered_scope_0.var_0_355.giveUp(iter_772_1)
			end
		end

		iter_772_1._salvationFx = nil
	end

	for iter_772_2, iter_772_3 in ipairs(arg_772_0 and arg_772_0.vfx or {}) do
		if iter_772_3.kind == "salvation_arrow" then
			iter_772_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_362 = __recovered_scope_0.var_0_355
 __recovered_scope_0.var_0_363 = nil
 __recovered_scope_0.var_0_364 = {
	SLACK = 4,
	SPARE = 0.3,
	STEP = 0.08,
	HOLD = 1000000000,
	THRUST = 0.6,
	HAND = 22,
	WAIT = 0.5,
	DEPTH = 10
}

 function __recovered_scope_0.var_0_365(arg_773_0)
	return arg_773_0 and arg_773_0.alive and not arg_773_0.dying and (arg_773_0.hp or 1) > 0 and not arg_773_0._venomMawSwallowed
end

__recovered_scope_0.var_0_364.canAct = __recovered_scope_0.var_0_212.canAct

function __recovered_scope_0.var_0_364.runtime(arg_774_0)
	return arg_774_0 and arg_774_0.primarySkillDef and arg_774_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_364.extended(arg_775_0)
	local var_775_0 = arg_775_0 and arg_775_0.skill

	return var_775_0 and var_775_0.kind == "LanceExtension" and var_775_0.lancePhase == "extended" or false
end

 __recovered_scope_0.var_0_366 = {}

function __recovered_scope_0.var_0_364.useSheet(arg_776_0, arg_776_1)
	__recovered_scope_0.var_0_366[arg_776_0] = arg_776_1
end

function __recovered_scope_0.var_0_364.sheet(arg_777_0)
	if not arg_777_0 then
		return nil
	end

	if __recovered_scope_0.var_0_366[arg_777_0] == nil then
		local var_777_0, var_777_1 = pcall(function()
			return love.image.newImageData(arg_777_0)
		end)

		__recovered_scope_0.var_0_366[arg_777_0] = var_777_0 and var_777_1 or false
	end

	return __recovered_scope_0.var_0_366[arg_777_0] or nil
end

 function __recovered_scope_0.var_0_367(arg_779_0, arg_779_1, arg_779_2, arg_779_3)
	local var_779_0
	local var_779_1

	for iter_779_0 = 0, arg_779_3 - 1 do
		local var_779_2, var_779_3, var_779_4, var_779_5 = arg_779_0:getPixel(arg_779_1, arg_779_2 + iter_779_0)

		if var_779_5 > 0 then
			if var_779_1 and var_779_1 < iter_779_0 - 1 then
				return nil
			end

			var_779_0, var_779_1 = var_779_0 or iter_779_0, iter_779_0
		end
	end

	return var_779_0, var_779_1
end

function __recovered_scope_0.var_0_364.composite(arg_780_0, arg_780_1)
	if not arg_780_0 or not arg_780_0.imageData or not arg_780_0.quads or not arg_780_1 or not arg_780_1.riseSheet or not arg_780_1.skillSheet then
		return nil
	end

	local var_780_0 = __recovered_scope_0.var_0_364.sheet(arg_780_1.riseSheet)
	local var_780_1 = __recovered_scope_0.var_0_364.sheet(arg_780_1.skillSheet)

	if not var_780_0 or not var_780_1 then
		return nil
	end

	local var_780_2 = arg_780_0._lanceComposite

	if var_780_2 and var_780_2.riseData == var_780_0 and var_780_2.skillData == var_780_1 then
		return var_780_2
	end

	local var_780_3 = arg_780_0.quads[arg_780_1.activeAnim or "attack2"]
	local var_780_4 = arg_780_0.quads[arg_780_1.swingAnim or "attack3"]

	if not var_780_3 or not var_780_4 or not var_780_3[1] or not var_780_4[1] then
		return nil
	end

	local var_780_5 = arg_780_0.frameH or 32
	local var_780_6 = arg_780_0.frameW or 32
	local var_780_7 = tonumber(arg_780_1.joinW) or var_780_0:getHeight()
	local var_780_8 = tonumber(arg_780_1.joinX) or 30
	local var_780_9 = math.max(0, var_780_8 + var_780_7 - var_780_6)
	local var_780_10 = 2 * var_780_9 + var_780_6
	local var_780_11 = tonumber(arg_780_1.riseFrom) or 5
	local var_780_12 = {
		riseData = var_780_0,
		skillData = var_780_1,
		w = var_780_10,
		h = var_780_5,
		pad = var_780_9,
		join = var_780_8,
		steps = var_780_11 - 1 + math.floor(var_780_0:getWidth() / var_780_7),
		rise = {},
		skill = {},
		swing = {},
		hit = {},
		lift = {}
	}
	local var_780_13 = {}

	for iter_780_0 = var_780_11, var_780_12.steps do
		var_780_13[#var_780_13 + 1] = {
			var_780_3[math.min(iter_780_0, #var_780_3)],
			var_780_0,
			iter_780_0 - var_780_11 + 1
		}
		var_780_12.rise[iter_780_0] = #var_780_13
	end

	for iter_780_1, iter_780_2 in ipairs(arg_780_1.swingSkill or {}) do
		var_780_13[#var_780_13 + 1] = {
			var_780_4[iter_780_2],
			var_780_1,
			iter_780_1
		}
		var_780_12.skill[iter_780_1] = #var_780_13

		local var_780_14 = var_780_12.swing[iter_780_2] or {
			iter_780_1,
			iter_780_1
		}

		var_780_14[1], var_780_14[2] = math.min(var_780_14[1], iter_780_1), math.max(var_780_14[2], iter_780_1)
		var_780_12.swing[iter_780_2] = var_780_14
	end

	local var_780_15 = love.image.newImageData(var_780_10 * #var_780_13, var_780_5)

	for iter_780_3, iter_780_4 in ipairs(var_780_13) do
		local var_780_16 = iter_780_4[1]
		local var_780_17 = iter_780_4[2]
		local var_780_18 = iter_780_4[3]
		local var_780_19 = (iter_780_3 - 1) * var_780_10
		local var_780_20
		local var_780_21
		local var_780_22
		local var_780_23

		if var_780_16 then
			var_780_20, var_780_21, var_780_22, var_780_23 = var_780_16:getViewport()

			for iter_780_5 = 0, math.min(var_780_23, var_780_5) - 1 do
				for iter_780_6 = 0, var_780_22 - 1 do
					local var_780_24, var_780_25, var_780_26, var_780_27 = arg_780_0.imageData:getPixel(var_780_20 + iter_780_6, var_780_21 + iter_780_5)

					if var_780_27 > 0 then
						var_780_15:setPixel(var_780_19 + var_780_9 + iter_780_6, iter_780_5, var_780_24, var_780_25, var_780_26, var_780_27)
					end
				end
			end
		end

		local var_780_28 = (var_780_18 - 1) * var_780_7
		local var_780_29 = math.min(var_780_17:getHeight(), var_780_5)
		local var_780_30 = 0

		if arg_780_1.alignSeam and var_780_16 and var_780_8 < var_780_22 then
			local var_780_31

			for iter_780_7 = 0, var_780_7 - 1 do
				if __recovered_scope_0.var_0_367(var_780_17, var_780_28 + iter_780_7, 0, var_780_29) then
					var_780_31 = iter_780_7

					break
				end
			end

			local var_780_32, var_780_33 = __recovered_scope_0.var_0_367(arg_780_0.imageData, var_780_20 + var_780_8, var_780_21, math.min(var_780_23, var_780_5))
			local var_780_34
			local var_780_35

			if var_780_31 then
				var_780_34, var_780_35 = __recovered_scope_0.var_0_367(var_780_17, var_780_28 + var_780_31, 0, var_780_29)
			end

			if var_780_32 and var_780_34 and var_780_33 - var_780_32 == var_780_35 - var_780_34 then
				var_780_30 = var_780_32 - var_780_34
			end
		end

		var_780_12.lift[iter_780_3] = var_780_30

		for iter_780_8 = 0, var_780_29 - 1 do
			for iter_780_9 = 0, math.min(var_780_7, var_780_10 - var_780_9 - var_780_8) - 1 do
				local var_780_36, var_780_37, var_780_38, var_780_39 = var_780_17:getPixel(var_780_28 + iter_780_9, iter_780_8)

				if var_780_39 > 0 and iter_780_8 + var_780_30 >= 0 and var_780_5 > iter_780_8 + var_780_30 then
					var_780_15:setPixel(var_780_19 + var_780_9 + var_780_8 + iter_780_9, iter_780_8 + var_780_30, var_780_36, var_780_37, var_780_38, var_780_39)
				end
			end
		end
	end

	local var_780_40 = {}

	for iter_780_10, iter_780_11 in ipairs(arg_780_1.swingSkill or {}) do
		if iter_780_11 == (tonumber(arg_780_1.hitFrame) or 4) then
			local var_780_41 = (var_780_12.skill[iter_780_10] - 1) * var_780_10

			for iter_780_12 = 0, var_780_5 - 1 do
				for iter_780_13 = 0, var_780_10 - 1 do
					local var_780_42, var_780_43, var_780_44, var_780_45 = var_780_15:getPixel(var_780_41 + iter_780_13, iter_780_12)

					if var_780_45 > 0 and not var_780_40[iter_780_12 * var_780_10 + iter_780_13] then
						var_780_40[iter_780_12 * var_780_10 + iter_780_13] = true
						var_780_12.hit[#var_780_12.hit + 1] = {
							iter_780_13 - var_780_9,
							iter_780_12
						}
					end
				end
			end
		end
	end

	var_780_12.line = {}

	local var_780_46 = tonumber(arg_780_1.handX) or __recovered_scope_0.var_0_364.HAND

	for iter_780_14 = 1, #var_780_13 do
		local var_780_47 = (iter_780_14 - 1) * var_780_10
		local var_780_48 = -1
		local var_780_49 = 0
		local var_780_50 = 0

		for iter_780_15 = var_780_10 - 1, 0, -1 do
			for iter_780_16 = 0, var_780_5 - 1 do
				local var_780_51, var_780_52, var_780_53, var_780_54 = var_780_15:getPixel(var_780_47 + iter_780_15, iter_780_16)

				if var_780_54 > 0 then
					var_780_49, var_780_50 = var_780_49 + iter_780_16, var_780_50 + 1
				end
			end

			if var_780_50 > 0 then
				var_780_48 = iter_780_15

				break
			end
		end

		local var_780_55
		local var_780_56 = var_780_46 + var_780_9

		for iter_780_17 = var_780_5 - 1, 0, -1 do
			local var_780_57, var_780_58, var_780_59, var_780_60 = var_780_15:getPixel(var_780_47 + var_780_56, iter_780_17)

			if var_780_60 > 0 then
				local var_780_61 = iter_780_17

				while var_780_61 > 0 and select(4, var_780_15:getPixel(var_780_47 + var_780_56, var_780_61 - 1)) > 0 do
					var_780_61 = var_780_61 - 1
				end

				var_780_55 = (var_780_61 + iter_780_17) * 0.5

				break
			end
		end

		var_780_12.line[iter_780_14] = {
			x0 = var_780_46,
			y0 = var_780_55 or var_780_50 > 0 and var_780_49 / var_780_50 or var_780_5 * 0.8,
			x1 = var_780_48 - var_780_9,
			y1 = var_780_50 > 0 and var_780_49 / var_780_50 or var_780_5 * 0.8
		}
	end

	var_780_12.data = var_780_15
	arg_780_0._lanceComposite = var_780_12

	return var_780_12
end

function __recovered_scope_0.var_0_364.reaches(arg_781_0, arg_781_1, arg_781_2, arg_781_3, arg_781_4)
	if not __recovered_scope_0.var_0_365(arg_781_2) or arg_781_2.side == arg_781_1.side then
		return false
	end

	if arg_781_3 and not arg_781_3(arg_781_2, arg_781_1, arg_781_0) then
		return false
	end

	if arg_781_0._meleeLaneAligned and not arg_781_0._meleeLaneAligned(arg_781_1, arg_781_2) then
		return false
	end

	local var_781_0 = require("src.game.projectiles").spellblade_vortex.drawSize(arg_781_0) / 32

	return require("src.game.unit_abilities").prism_spear_basic.touches(arg_781_0, arg_781_1, arg_781_2, "lance", (arg_781_4 or 0) * var_781_0)
end

 function __recovered_scope_0.var_0_368(arg_782_0, arg_782_1)
	return tonumber(arg_782_0.animationSpeed or arg_782_1.animationSpeed) or __recovered_scope_0.var_0_364.STEP
end

 function __recovered_scope_0.var_0_369(arg_783_0, arg_783_1)
	arg_783_0._casting, arg_783_0._suppressAttack = true, true
	arg_783_0._forceAnim, arg_783_0._forceAnimT = "attack2", math.max(0.2, (arg_783_1 or 0) + 0.1)
end

 function __recovered_scope_0.var_0_370(arg_784_0)
	arg_784_0._casting, arg_784_0._suppressAttack = false, false

	if arg_784_0._forceAnim == "attack2" then
		arg_784_0._forceAnim, arg_784_0._forceAnimT = nil, 0
	end
end

 function __recovered_scope_0.var_0_371(arg_785_0, arg_785_1, arg_785_2, arg_785_3)
	local var_785_0 = arg_785_0.anim

	var_785_0.name, var_785_0.frame, var_785_0.reverse, var_785_0._desynced = arg_785_1, arg_785_2, nil, true

	if not arg_785_3 then
		var_785_0.t = 0
	end
end

 function __recovered_scope_0.var_0_372(arg_786_0, arg_786_1, arg_786_2, arg_786_3, arg_786_4)
	local var_786_0 = arg_786_1.quads[arg_786_2.activeAnim or "attack2"]

	arg_786_0.skill.lanceStep = arg_786_3

	__recovered_scope_0.var_0_371(arg_786_0, arg_786_2.activeAnim or "attack2", math.max(1, math.min(arg_786_3, #var_786_0)), arg_786_4)
end

function __recovered_scope_0.var_0_364.drop(arg_787_0, arg_787_1)
	local var_787_0 = arg_787_0.skill
	local var_787_1 = var_787_0.lancePhase

	var_787_0.lancePhase, var_787_0.lanceStep, var_787_0.lanceSwing = nil

	if var_787_0.state == "active" then
		var_787_0.state = nil
	end

	if var_787_1 == "extend" or var_787_1 == "retract" then
		__recovered_scope_0.var_0_370(arg_787_0)
	end

	local var_787_2 = arg_787_0.anim

	if var_787_2 and not arg_787_1 and (var_787_2.name == "attack2" or var_787_2.name == "attack3") then
		__recovered_scope_0.var_0_371(arg_787_0, "idle", 1)
	end
end

function __recovered_scope_0.var_0_364.cast(arg_788_0, arg_788_1, arg_788_2)
	require("src.game.combat").chain_casting.begin(arg_788_0)

	arg_788_1.cdT, arg_788_1.ready = require("src.game.combat").chain_casting.reset(arg_788_1), false
	arg_788_1.lanceLeft = tonumber(arg_788_2.duration or arg_788_1.dur) or 3

	if not arg_788_1.lancePhase then
		arg_788_1.state, arg_788_1.lanceFresh = "active", true
	end
end

function __recovered_scope_0.var_0_364.retract(arg_789_0, arg_789_1, arg_789_2, arg_789_3)
	local var_789_0 = arg_789_0.skill

	var_789_0.lancePhase, var_789_0.lanceSwing = "retract"

	__recovered_scope_0.var_0_369(arg_789_0)
	__recovered_scope_0.var_0_372(arg_789_0, arg_789_1, arg_789_2, arg_789_3.steps)
end

 function __recovered_scope_0.var_0_373(arg_790_0, arg_790_1, arg_790_2, arg_790_3)
	local var_790_0 = arg_790_1.skill
	local var_790_1 = __recovered_scope_0.var_0_364.runtime(arg_790_1)

	var_790_0.cdT = math.min(var_790_0.cd or 7, (var_790_0.cdT or 0) + arg_790_2)

	if var_790_0.cdT >= (var_790_0.cd or 7) then
		var_790_0.ready = true
	end

	if (var_790_0.lanceLeft or 0) > 0 and not var_790_0.lanceFresh then
		var_790_0.lanceLeft = math.max(0, var_790_0.lanceLeft - arg_790_2)
	end

	local var_790_2 = arg_790_0.getUnitAssetForAlly and arg_790_0:getUnitAssetForAlly(arg_790_1)
	local var_790_3 = var_790_2 and __recovered_scope_0.var_0_364.composite(var_790_2, var_790_1)
	local var_790_4 = arg_790_1.anim

	if not __recovered_scope_0.var_0_365(arg_790_1) or not var_790_4 or not var_790_3 then
		if var_790_0.lancePhase then
			__recovered_scope_0.var_0_364.drop(arg_790_1)
		end

		var_790_0.lanceLeft, var_790_0.lanceFresh, var_790_0.active = nil

		return
	end

	local var_790_5 = var_790_0.lancePhase

	if var_790_5 == "extended" and var_790_4.name == "walk" then
		__recovered_scope_0.var_0_364.drop(arg_790_1, true)

		var_790_5 = nil
	end

	if not __recovered_scope_0.var_0_364.canAct(arg_790_1) then
		if var_790_5 == "extend" or var_790_5 == "retract" then
			__recovered_scope_0.var_0_364.drop(arg_790_1)
		end

		var_790_0.lanceFresh = nil
		var_790_0.active = var_790_0.lancePhase ~= nil or (var_790_0.lanceLeft or 0) > 0 or nil

		return
	end

	local var_790_6 = __recovered_scope_0.var_0_368(var_790_0, var_790_1)

	if var_790_5 == "extend" or var_790_5 == "retract" then
		if var_790_4.name ~= (var_790_1.activeAnim or "attack2") then
			__recovered_scope_0.var_0_364.drop(arg_790_1, true)

			var_790_0.active = (var_790_0.lanceLeft or 0) > 0 or nil

			return
		end

		__recovered_scope_0.var_0_369(arg_790_1, arg_790_2)

		local var_790_7 = math.floor((var_790_4.t or 0) / var_790_6 + 1e-09)

		if var_790_7 < var_790_3.steps then
			__recovered_scope_0.var_0_372(arg_790_1, var_790_2, var_790_1, var_790_5 == "extend" and var_790_7 + 1 or var_790_3.steps - var_790_7, true)
		else
			__recovered_scope_0.var_0_370(arg_790_1)

			var_790_0.lanceStep = nil

			if var_790_5 == "extend" then
				var_790_0.lancePhase, var_790_0.lanceFresh, var_790_0.lanceWait = "extended", nil, 0
				var_790_0.lanceFullAt = var_790_0.lanceAge or 0

				if var_790_0.state == "active" then
					var_790_0.state = nil
				end

				__recovered_scope_0.var_0_371(arg_790_1, var_790_1.swingAnim or "attack3", 1)
			else
				var_790_0.lancePhase = nil

				__recovered_scope_0.var_0_371(arg_790_1, "idle", 1)
			end
		end

		var_790_0.active = true

		return
	end

	if var_790_5 == "extended" then
		if var_790_0.lanceSwing and var_790_4.name ~= (var_790_1.swingAnim or "attack3") then
			var_790_0.lanceSwing = nil
		end

		local var_790_8 = __recovered_scope_0.var_0_364.reaches(arg_790_0, arg_790_1, arg_790_1.target, arg_790_3, 0)
		local var_790_9 = var_790_8 or __recovered_scope_0.var_0_364.reaches(arg_790_0, arg_790_1, arg_790_1.target, arg_790_3, __recovered_scope_0.var_0_364.SLACK)

		var_790_0.lanceWait = (var_790_8 or var_790_0.lanceSwing) and 0 or (var_790_0.lanceWait or 0) + arg_790_2

		if var_790_0.ready and var_790_9 then
			__recovered_scope_0.var_0_364.cast(arg_790_1, var_790_0, var_790_1)
		end

		if not var_790_0.lanceSwing then
			__recovered_scope_0.var_0_371(arg_790_1, var_790_1.swingAnim or "attack3", 1)

			if (var_790_0.lanceLeft or 0) <= 0 or not var_790_9 or var_790_0.lanceWait > __recovered_scope_0.var_0_364.WAIT then
				__recovered_scope_0.var_0_364.retract(arg_790_1, var_790_2, var_790_1, var_790_3)
			end
		end

		var_790_0.active = true

		return
	end

	local var_790_10 = (var_790_0.lanceLeft or 0) > var_790_3.steps * var_790_6 + __recovered_scope_0.var_0_364.SPARE

	if (var_790_0.ready or var_790_10) and var_790_4.name ~= "attack" and var_790_4.name ~= "attack2" and var_790_4.name ~= "attack3" and not arg_790_1._pendingSpearHit and __recovered_scope_0.var_0_364.reaches(arg_790_0, arg_790_1, arg_790_1.target, arg_790_3, -__recovered_scope_0.var_0_364.SLACK - __recovered_scope_0.var_0_364.DEPTH) then
		if var_790_0.ready then
			__recovered_scope_0.var_0_364.cast(arg_790_1, var_790_0, var_790_1)
		end

		var_790_0.lancePhase, var_790_0.lanceSwing = "extend"

		__recovered_scope_0.var_0_369(arg_790_1, arg_790_2)
		__recovered_scope_0.var_0_372(arg_790_1, var_790_2, var_790_1, 1)
	end

	var_790_0.active = var_790_0.lancePhase ~= nil or (var_790_0.lanceLeft or 0) > 0 or nil
end

function __recovered_scope_0.var_0_364.updateCast(arg_791_0, arg_791_1, arg_791_2, arg_791_3)
	__recovered_scope_0.var_0_373(arg_791_0, arg_791_1, arg_791_2, arg_791_3)

	local var_791_0 = arg_791_1.skill

	if var_791_0.lancePhase ~= var_791_0.lanceSeen then
		var_791_0.lanceSeen, var_791_0.lanceT = var_791_0.lancePhase, 0
	else
		var_791_0.lanceT = (var_791_0.lanceT or 0) + arg_791_2
	end

	var_791_0.lanceAge = (var_791_0.lanceAge or 0) + arg_791_2
end

function __recovered_scope_0.var_0_364.thrust(arg_792_0, arg_792_1, arg_792_2)
	local var_792_0 = __recovered_scope_0.var_0_364.runtime(arg_792_1)
	local var_792_1 = arg_792_0.getUnitAssetForAlly and arg_792_0:getUnitAssetForAlly(arg_792_1)
	local var_792_2 = var_792_1 and __recovered_scope_0.var_0_364.composite(var_792_1, var_792_0)

	if not var_792_2 then
		return
	end

	local var_792_3

	for iter_792_0, iter_792_1 in ipairs(var_792_0.swingSkill or {}) do
		if iter_792_1 == (tonumber(var_792_0.hitFrame) or 4) then
			var_792_3 = var_792_2.skill[iter_792_0]

			break
		end
	end

	local var_792_4 = var_792_3 and var_792_2.line[var_792_3]

	if not var_792_4 then
		return
	end

	local var_792_5 = require("src.game.projectiles").spellblade_vortex
	local var_792_6, var_792_7 = var_792_5.spritePoint(arg_792_0, arg_792_1, var_792_1, 0, 0, false)
	local var_792_8 = var_792_5.spritePoint(arg_792_0, arg_792_1, var_792_1, 1, 0, false)
	local var_792_9, var_792_10 = var_792_5.spritePoint(arg_792_0, arg_792_1, var_792_1, var_792_4.x1 + 0.5, var_792_4.y1 + 0.5, false)
	local var_792_11, var_792_12 = var_792_5.spritePoint(arg_792_0, arg_792_1, var_792_1, var_792_4.x0 + 0.5, var_792_4.y0 + 0.5, false)
	local var_792_13 = {
		t = 0,
		kind = "lance_thrust",
		dur = __recovered_scope_0.var_0_364.THRUST,
		style = var_792_0.style,
		owner = arg_792_1,
		asset = var_792_1,
		index = var_792_3,
		x = var_792_9,
		y = var_792_10,
		hx = var_792_11,
		hy = var_792_12,
		bx = var_792_6,
		by = var_792_7,
		dir = var_792_6 <= var_792_8 and 1 or -1,
		texel = math.max(1, math.abs(var_792_8 - var_792_6)),
		hits = {}
	}
	local var_792_14 = arg_792_1.skill
	local var_792_15 = var_792_14 and var_792_14.lanceAge or 0

	var_792_13.gap = var_792_15 - (var_792_14 and math.max(var_792_14.lanceThrustAt or -9, var_792_14.lanceFullAt or -9) or -9)

	if var_792_14 then
		var_792_14.lanceThrustAt = var_792_15
	end

	for iter_792_2, iter_792_3 in ipairs(arg_792_2 or {}) do
		local var_792_16, var_792_17 = var_792_5.targetPoint(arg_792_0, iter_792_3)

		var_792_13.hits[iter_792_2] = {
			x = var_792_16,
			y = var_792_17,
			first = iter_792_2 == 1
		}
	end

	arg_792_0.vfx = arg_792_0.vfx or {}
	arg_792_0.vfx[#arg_792_0.vfx + 1] = var_792_13

	return var_792_13
end

function __recovered_scope_0.var_0_364.basicAnimation(arg_793_0, arg_793_1)
	local var_793_0 = arg_793_0.skill
	local var_793_1 = arg_793_0._pendingSpearHit

	if not __recovered_scope_0.var_0_364.extended(arg_793_0) or not var_793_1 or not var_793_1.basicAttack or not not var_793_1.skillDamage then
		return arg_793_1
	end

	local var_793_2 = __recovered_scope_0.var_0_364.runtime(arg_793_0)

	var_793_1.lance, var_793_1.frameGate = true, tonumber(var_793_2.hitFrame) or 4
	var_793_0.lanceSwing = true

	return var_793_2.swingAnim or "attack3"
end

function __recovered_scope_0.var_0_364.frameDuration(arg_794_0, arg_794_1, arg_794_2)
	local var_794_0 = arg_794_0.skill
	local var_794_1 = var_794_0 and var_794_0.lancePhase

	if var_794_1 == "extend" or var_794_1 == "retract" or var_794_1 == "extended" and not var_794_0.lanceSwing then
		return __recovered_scope_0.var_0_364.HOLD, 1
	end

	return arg_794_1, arg_794_2
end

function __recovered_scope_0.var_0_364.onAnimation(arg_795_0, arg_795_1, arg_795_2)
	local var_795_0 = arg_795_1.skill
	local var_795_1 = arg_795_1.anim
	local var_795_2 = __recovered_scope_0.var_0_364.runtime(arg_795_1).swingAnim or "attack3"

	if not __recovered_scope_0.var_0_364.extended(arg_795_1) or not var_795_1 or var_795_1.name ~= var_795_2 then
		return
	end

	local var_795_3 = arg_795_2 and arg_795_2.animations and arg_795_2.animations[var_795_2]

	if (var_795_1.frame or 1) > (var_795_3 and var_795_3.frames or 5) then
		var_795_1.frame, var_795_1.t = 1, 0
		var_795_0.lanceSwing = nil
	end
end

function __recovered_scope_0.var_0_364.guideRange(arg_796_0, arg_796_1)
	return __recovered_scope_0.var_0_364.extended(arg_796_0) and tonumber(__recovered_scope_0.var_0_364.runtime(arg_796_0).range) or arg_796_1
end

function __recovered_scope_0.var_0_364.share(arg_797_0, arg_797_1)
	local var_797_0 = __recovered_scope_0.var_0_364.runtime(arg_797_0)

	if arg_797_1 <= 1 then
		return tonumber(var_797_0.dmgMul) or 1.3
	end

	return tonumber(var_797_0.pierceDmgMul) or 0.6
end

function __recovered_scope_0.var_0_364.mute(arg_798_0, arg_798_1)
	if arg_798_1 <= 1 then
		return nil
	end

	local var_798_0 = {
		arg_798_0.imprints
	}

	arg_798_0.imprints = {}

	return var_798_0
end

function __recovered_scope_0.var_0_364.unmute(arg_799_0, arg_799_1)
	if arg_799_1 then
		arg_799_0.imprints = arg_799_1[1]
	end
end

 __recovered_scope_0.var_0_374 = __recovered_scope_0.var_0_364
 __recovered_scope_0.var_0_375 = nil
 __recovered_scope_0.var_0_376 = {}
 __recovered_scope_0.var_0_377 = setmetatable({}, {
	__mode = "k"
})

 function __recovered_scope_0.var_0_378(arg_800_0, arg_800_1, arg_800_2)
	local var_800_0 = arg_800_0.getUnitAssetForAlly and arg_800_0:getUnitAssetForAlly(arg_800_1)
	local var_800_1 = var_800_0 and var_800_0.quads and var_800_0.quads.attack
	local var_800_2 = var_800_1 and var_800_1[arg_800_2]

	if not var_800_2 or not var_800_0.imageData then
		return nil
	end

	local var_800_3 = __recovered_scope_0.var_0_377[var_800_0]

	if not var_800_3 then
		var_800_3 = {}
		__recovered_scope_0.var_0_377[var_800_0] = var_800_3
	end

	local var_800_4 = var_800_3[var_800_2]

	if not var_800_4 then
		local var_800_5, var_800_6, var_800_7, var_800_8 = var_800_2:getViewport()

		var_800_4 = {}

		for iter_800_0 = 0, var_800_8 - 1 do
			for iter_800_1 = 0, var_800_7 - 1 do
				local var_800_9, var_800_10, var_800_11, var_800_12 = var_800_0.imageData:getPixel(var_800_5 + iter_800_1, var_800_6 + iter_800_0)

				if var_800_12 > 0 then
					var_800_4[#var_800_4 + 1] = {
						iter_800_1,
						iter_800_0
					}
				end
			end
		end

		var_800_3[var_800_2] = var_800_4
	end

	return var_800_0, var_800_4
end

function __recovered_scope_0.var_0_376.touches(arg_801_0, arg_801_1, arg_801_2, arg_801_3, arg_801_4, arg_801_5, arg_801_6, arg_801_7, arg_801_8, arg_801_9)
	if not arg_801_5 then
		arg_801_5, arg_801_6 = __recovered_scope_0.var_0_378(arg_801_0, arg_801_1, arg_801_3)
	end

	if not arg_801_5 then
		return false
	end

	local var_801_0 = require("src.game.projectiles").spellblade_vortex
	local var_801_1 = var_801_0.targetCover(arg_801_0, arg_801_2)

	if not var_801_1 or var_801_1.ux == 0 or var_801_1.uy == 0 then
		return false
	end

	if arg_801_7 then
		local var_801_2 = arg_801_0:getUnitAssetForEnemy(arg_801_2)
		local var_801_3 = var_801_2 and var_801_2.quads and var_801_2.quads[arg_801_7]
		local var_801_4 = var_801_3 and var_801_3[arg_801_8 or 1]

		if not var_801_4 then
			return false
		end

		var_801_1.qx, var_801_1.qy, var_801_1.qw, var_801_1.qh = var_801_4:getViewport()
	end

	if arg_801_9 then
		local var_801_5 = arg_801_0:getUnitAssetForEnemy(arg_801_2)

		var_801_1.ox, var_801_1.oy = var_801_0.spritePoint(arg_801_0, arg_801_2, var_801_5, 0, 0, true, true)

		local var_801_6, var_801_7 = var_801_0.spritePoint(arg_801_0, arg_801_2, var_801_5, 1, 1, true, true)

		var_801_1.ux, var_801_1.uy = var_801_6 - var_801_1.ox, var_801_7 - var_801_1.oy
	end

	local var_801_8, var_801_9 = var_801_0.spritePoint(arg_801_0, arg_801_1, arg_801_5, 0, 0, false, arg_801_9)
	local var_801_10, var_801_11 = var_801_0.spritePoint(arg_801_0, arg_801_1, arg_801_5, 1, 1, false, arg_801_9)
	local var_801_12 = var_801_10 - var_801_8
	local var_801_13 = var_801_11 - var_801_9

	if var_801_12 == 0 or var_801_13 == 0 then
		return false
	end

	local var_801_14 = var_801_8 + (arg_801_4 or 0) * (var_801_12 < 0 and -1 or 1)

	for iter_801_0, iter_801_1 in ipairs(arg_801_6) do
		local var_801_15 = var_801_14 + iter_801_1[1] * var_801_12
		local var_801_16 = var_801_14 + (iter_801_1[1] + 1) * var_801_12
		local var_801_17 = var_801_9 + iter_801_1[2] * var_801_13
		local var_801_18 = var_801_9 + (iter_801_1[2] + 1) * var_801_13
		local var_801_19, var_801_20 = (var_801_15 - var_801_1.ox) / var_801_1.ux, (var_801_16 - var_801_1.ox) / var_801_1.ux
		local var_801_21, var_801_22 = (var_801_17 - var_801_1.oy) / var_801_1.uy, (var_801_18 - var_801_1.oy) / var_801_1.uy
		local var_801_23 = math.max(0, math.floor(math.min(var_801_19, var_801_20) + 1e-09))
		local var_801_24 = math.min(var_801_1.qw - 1, math.ceil(math.max(var_801_19, var_801_20) - 1e-09) - 1)
		local var_801_25 = math.max(0, math.floor(math.min(var_801_21, var_801_22) + 1e-09))
		local var_801_26 = math.min(var_801_1.qh - 1, math.ceil(math.max(var_801_21, var_801_22) - 1e-09) - 1)

		for iter_801_2 = var_801_25, var_801_26 do
			for iter_801_3 = var_801_23, var_801_24 do
				local var_801_27, var_801_28, var_801_29, var_801_30 = var_801_1.data:getPixel(var_801_1.qx + iter_801_3, var_801_1.qy + iter_801_2)

				if var_801_30 > 0 then
					return true
				end
			end
		end
	end

	return false
end

 __recovered_scope_0.var_0_379 = __recovered_scope_0.var_0_376
 __recovered_scope_0.var_0_380 = nil
 __recovered_scope_0.var_0_381 = {
	frame = 4,
	limit = function(arg_802_0)
		if not arg_802_0 or arg_802_0.sym ~= "S" then
			return nil
		end

		for iter_802_0, iter_802_1 in ipairs({
			"subclass",
			"subclassName",
			"subclassKey"
		}) do
			local var_802_0 = arg_802_0[iter_802_1]

			if (arg_802_0.rank or 1) == 2 and (var_802_0 == "창술사" or var_802_0 == "Spear Adept" or var_802_0 == "창술사 (Spear Adept)") then
				return 2
			end

			if (arg_802_0.rank or 1) == 3 and (var_802_0 == "랜스마스터" or var_802_0 == "Lance Master" or var_802_0 == "랜스마스터 (Lance Master)") then
				return 3
			end
		end
	end
}

function __recovered_scope_0.var_0_381.touches(arg_803_0, arg_803_1, arg_803_2, arg_803_3, arg_803_4)
	if arg_803_3 == "lance" or arg_803_3 == nil and __recovered_scope_0.var_0_374.extended(arg_803_1) then
		local var_803_0 = arg_803_0.getUnitAssetForAlly and arg_803_0:getUnitAssetForAlly(arg_803_1)
		local var_803_1 = __recovered_scope_0.var_0_374.composite(var_803_0, __recovered_scope_0.var_0_374.runtime(arg_803_1))

		if var_803_1 and var_803_1.hit[1] then
			return __recovered_scope_0.var_0_379.touches(arg_803_0, arg_803_1, arg_803_2, __recovered_scope_0.var_0_381.frame, arg_803_4, var_803_0, var_803_1.hit)
		end

		if arg_803_3 == "lance" then
			return false
		end
	end

	return __recovered_scope_0.var_0_379.touches(arg_803_0, arg_803_1, arg_803_2, __recovered_scope_0.var_0_381.frame, arg_803_4)
end

function __recovered_scope_0.var_0_381.targets(arg_804_0, arg_804_1, arg_804_2, arg_804_3, arg_804_4, arg_804_5)
	local var_804_0 = __recovered_scope_0.var_0_381.limit(arg_804_1)

	if not var_804_0 then
		return {}
	end

	var_804_0 = arg_804_5 == "lance" and tonumber(__recovered_scope_0.var_0_374.runtime(arg_804_1).maxTargets) or var_804_0

	local var_804_1 = {}
	local var_804_2 = {}
	local var_804_3 = (arg_804_1.facing or 1) < 0 and -1 or 1

	for iter_804_0, iter_804_1 in ipairs(arg_804_0.enemies or {}) do
		if not var_804_2[iter_804_1] and iter_804_1.alive and (not arg_804_3 or arg_804_3(iter_804_1, arg_804_1, arg_804_0)) and ((iter_804_1.x or 0) - (arg_804_1.x or 0)) * var_804_3 >= 0 and (not arg_804_4 or arg_804_4(arg_804_1, iter_804_1)) and require("src.game.combat").stage6_rift.targetAllowed(arg_804_0, arg_804_1, iter_804_1) and __recovered_scope_0.var_0_381.touches(arg_804_0, arg_804_1, iter_804_1, arg_804_5) then
			var_804_2[iter_804_1] = true
			var_804_1[#var_804_1 + 1] = {
				target = iter_804_1,
				distance = math.abs((iter_804_1.x or 0) - (arg_804_1.x or 0)),
				order = iter_804_0
			}
		end
	end

	table.sort(var_804_1, function(arg_805_0, arg_805_1)
		if arg_805_0.target == arg_804_2 ~= (arg_805_1.target == arg_804_2) then
			return arg_805_0.target == arg_804_2
		end

		if arg_805_0.distance ~= arg_805_1.distance then
			return arg_805_0.distance < arg_805_1.distance
		end

		return arg_805_0.order < arg_805_1.order
	end)

	local var_804_4 = {}

	for iter_804_2 = 1, math.min(var_804_0, #var_804_1) do
		var_804_4[iter_804_2] = var_804_1[iter_804_2].target
	end

	return var_804_4
end

 __recovered_scope_0.var_0_382 = __recovered_scope_0.var_0_381
 __recovered_scope_0.var_0_383 = nil
 __recovered_scope_0.var_0_384 = {
	minimumGap = 5,
	frame = 3,
	gap = 8,
	contactSlack = 5
}
 __recovered_scope_0.var_0_385 = {
	["Fallen Angel"] = 2,
	타락천사 = 2,
	["파멸의 천사 (Angel of Ruin)"] = 3,
	["Angel of Ruin"] = 3,
	["파멸의 천사"] = 3,
	["타락천사 (Fallen Angel)"] = 2
}

function __recovered_scope_0.var_0_384.limit(arg_806_0)
	if arg_806_0 and arg_806_0.sym == "D" then
		return __recovered_scope_0.var_0_385[arg_806_0.subclass] or __recovered_scope_0.var_0_385[arg_806_0.subclassName] or __recovered_scope_0.var_0_385[arg_806_0.subclassKey]
	end
end

 __recovered_scope_0.var_0_386 = {
	["도미니온 (Dominion)"] = true,
	Dominion = true,
	도미니온 = true,
	["대천사 (Archangel)"] = true,
	Archangel = true,
	대천사 = true,
	["천사 (Angel)"] = true,
	Angel = true,
	천사 = true
}

function __recovered_scope_0.var_0_384.matches(arg_807_0)
	return arg_807_0 and arg_807_0.sym == "D" and (__recovered_scope_0.var_0_384.limit(arg_807_0) ~= nil or __recovered_scope_0.var_0_386[arg_807_0.subclass] or __recovered_scope_0.var_0_386[arg_807_0.subclassName] or __recovered_scope_0.var_0_386[arg_807_0.subclassKey]) or false
end

 function __recovered_scope_0.var_0_387(arg_808_0, arg_808_1, arg_808_2)
	local var_808_0

	if arg_808_2 then
		var_808_0 = arg_808_0:getUnitAssetForEnemy(arg_808_1)
	else
		var_808_0 = arg_808_0:getUnitAssetForAlly(arg_808_1)
	end

	local var_808_1 = var_808_0 and (var_808_0.bodyBounds or var_808_0.bounds and var_808_0.bounds.idle and var_808_0.bounds.idle[1])

	if var_808_1 then
		local var_808_2 = require("src.game.projectiles").spellblade_vortex
		local var_808_3, var_808_4 = var_808_2.spritePoint(arg_808_0, arg_808_1, var_808_0, var_808_1.x, var_808_1.y, arg_808_2, true)
		local var_808_5, var_808_6 = var_808_2.spritePoint(arg_808_0, arg_808_1, var_808_0, var_808_1.x + var_808_1.w, var_808_1.y + var_808_1.h, arg_808_2, true)

		return math.min(var_808_3, var_808_5), math.min(var_808_4, var_808_6), math.max(var_808_3, var_808_5), math.max(var_808_4, var_808_6)
	end

	local var_808_7 = arg_808_1._bodyColX or arg_808_1.colX
	local var_808_8 = arg_808_1._bodyColY or arg_808_1.colY
	local var_808_9 = arg_808_1._bodyColW or arg_808_1.colW
	local var_808_10 = arg_808_1._bodyColH or arg_808_1.colH

	if var_808_7 and var_808_8 and var_808_9 and var_808_10 then
		return var_808_7, var_808_8, var_808_7 + var_808_9, var_808_8 + var_808_10
	end
end

function __recovered_scope_0.var_0_384.closeEnough(arg_809_0, arg_809_1, arg_809_2)
	if not arg_809_1 or not arg_809_2 then
		return false
	end

	local var_809_0, var_809_1, var_809_2, var_809_3 = __recovered_scope_0.var_0_387(arg_809_0, arg_809_1, false)
	local var_809_4, var_809_5, var_809_6, var_809_7 = __recovered_scope_0.var_0_387(arg_809_0, arg_809_2, true)

	return var_809_0 ~= nil and var_809_4 ~= nil and math.min(var_809_2, var_809_6) + __recovered_scope_0.var_0_384.gap >= math.max(var_809_0, var_809_4) and math.min(var_809_3, var_809_7) >= math.max(var_809_1, var_809_5)
end

function __recovered_scope_0.var_0_384.approachStep(arg_810_0, arg_810_1, arg_810_2, arg_810_3, arg_810_4)
	if not __recovered_scope_0.var_0_384.matches(arg_810_1) then
		return arg_810_3, arg_810_4
	end

	local var_810_0, var_810_1, var_810_2 = __recovered_scope_0.var_0_387(arg_810_0, arg_810_1, false)
	local var_810_3, var_810_4, var_810_5 = __recovered_scope_0.var_0_387(arg_810_0, arg_810_2, true)

	if not var_810_0 or not var_810_3 then
		return arg_810_3, arg_810_4
	end

	local var_810_6 = math.max(0, math.max(var_810_0, var_810_3) - math.min(var_810_2, var_810_5) - __recovered_scope_0.var_0_384.minimumGap)

	return math.max(-var_810_6, math.min(var_810_6, arg_810_3)), arg_810_4
end

function __recovered_scope_0.var_0_384.slack(arg_811_0, arg_811_1)
	local var_811_0 = arg_811_0:getUnitAssetForAlly(arg_811_1)

	if not var_811_0 then
		return __recovered_scope_0.var_0_384.contactSlack
	end

	local var_811_1 = require("src.game.projectiles").spellblade_vortex
	local var_811_2 = var_811_1.spritePoint(arg_811_0, arg_811_1, var_811_0, 0, 0, false)
	local var_811_3 = var_811_1.spritePoint(arg_811_0, arg_811_1, var_811_0, 1, 0, false)

	return __recovered_scope_0.var_0_384.contactSlack * math.abs(var_811_3 - var_811_2)
end

function __recovered_scope_0.var_0_384.touches(arg_812_0, arg_812_1, arg_812_2, arg_812_3, arg_812_4, arg_812_5)
	local var_812_0 = (arg_812_1._attackFacing or arg_812_1.facing or 1) < 0 and -1 or 1

	if ((arg_812_2.x or 0) - (arg_812_1.x or 0)) * var_812_0 < 0 then
		return false
	end

	local var_812_1 = arg_812_0:getUnitAssetForEnemy(arg_812_2)

	if not var_812_1 or not var_812_1.imageData then
		return not __recovered_scope_0.var_0_384.limit(arg_812_1) and __recovered_scope_0.var_0_384.closeEnough(arg_812_0, arg_812_1, arg_812_2)
	end

	return __recovered_scope_0.var_0_379.touches(arg_812_0, arg_812_1, arg_812_2, __recovered_scope_0.var_0_384.frame, nil, nil, nil, arg_812_3, arg_812_4, arg_812_5) or __recovered_scope_0.var_0_379.touches(arg_812_0, arg_812_1, arg_812_2, __recovered_scope_0.var_0_384.frame, __recovered_scope_0.var_0_384.slack(arg_812_0, arg_812_1), nil, nil, arg_812_3, arg_812_4, arg_812_5)
end

function __recovered_scope_0.var_0_384.canStart(arg_813_0, arg_813_1, arg_813_2)
	if not __recovered_scope_0.var_0_384.closeEnough(arg_813_0, arg_813_1, arg_813_2) then
		return false
	end

	local var_813_0 = arg_813_0:getUnitAssetForEnemy(arg_813_2)

	if not var_813_0 or not var_813_0.imageData then
		return not __recovered_scope_0.var_0_384.limit(arg_813_1)
	end

	if not __recovered_scope_0.var_0_384.touches(arg_813_0, arg_813_1, arg_813_2, nil, nil, true) then
		return false
	end

	for iter_813_0 in ipairs(var_813_0.quads and var_813_0.quads.idle or {}) do
		if not __recovered_scope_0.var_0_384.touches(arg_813_0, arg_813_1, arg_813_2, "idle", iter_813_0, true) then
			return false
		end
	end

	return true
end

function __recovered_scope_0.var_0_384.targets(arg_814_0, arg_814_1, arg_814_2, arg_814_3)
	local var_814_0 = __recovered_scope_0.var_0_384.limit(arg_814_1) or __recovered_scope_0.var_0_384.matches(arg_814_1) and 1

	if not var_814_0 then
		return {}
	end

	local var_814_1 = {}
	local var_814_2 = {}

	for iter_814_0, iter_814_1 in ipairs(arg_814_0.enemies or {}) do
		if not var_814_2[iter_814_1] and iter_814_1.alive and not iter_814_1.dying and (iter_814_1.hp or 0) > 0 and (not arg_814_3 or arg_814_3(iter_814_1, arg_814_1, arg_814_0)) and require("src.game.combat").stage6_rift.targetAllowed(arg_814_0, arg_814_1, iter_814_1) and __recovered_scope_0.var_0_384.touches(arg_814_0, arg_814_1, iter_814_1) then
			var_814_2[iter_814_1] = true
			var_814_1[#var_814_1 + 1] = {
				target = iter_814_1,
				distance = math.abs((iter_814_1.x or 0) - (arg_814_1.x or 0)),
				order = iter_814_0
			}
		end
	end

	table.sort(var_814_1, function(arg_815_0, arg_815_1)
		if arg_815_0.target == arg_814_2 ~= (arg_815_1.target == arg_814_2) then
			return arg_815_0.target == arg_814_2
		end

		if arg_815_0.distance ~= arg_815_1.distance then
			return arg_815_0.distance < arg_815_1.distance
		end

		return arg_815_0.order < arg_815_1.order
	end)

	local var_814_3 = {}

	for iter_814_2 = 1, math.min(var_814_0, #var_814_1) do
		var_814_3[iter_814_2] = var_814_1[iter_814_2].target
	end

	return var_814_3
end

 __recovered_scope_0.var_0_388 = __recovered_scope_0.var_0_384
 __recovered_scope_0.var_0_389 = nil
 __recovered_scope_0.var_0_390 = {
	ASPD = 0.4,
	IN = 0.7,
	OUT = 0.6,
	HALF = 0.5,
	BURST = 0.9
}
 __recovered_scope_0.var_0_391 = {
	["천사 (Angel)"] = true,
	Angel = true,
	천사 = true
}

function __recovered_scope_0.var_0_390.matches(arg_816_0)
	return type(arg_816_0) == "table" and arg_816_0.side ~= "enemy" and (tonumber(arg_816_0.rank or arg_816_0.star) or 1) == 1 and (__recovered_scope_0.var_0_391[arg_816_0.subclass] or __recovered_scope_0.var_0_391[arg_816_0.subclassKey] or __recovered_scope_0.var_0_391[arg_816_0.subclassName]) == true
end

function __recovered_scope_0.var_0_390.update(arg_817_0, arg_817_1, arg_817_2)
	if not __recovered_scope_0.var_0_390.matches(arg_817_1) then
		if rawget(arg_817_1, "_fallenWings") or rawget(arg_817_1, "_fallenWingsASPD") then
			arg_817_1._fallenWings, arg_817_1._fallenWingsASPD = nil
		end

		return
	end

	local var_817_0 = tonumber(arg_817_1.maxhp) or 0
	local var_817_1 = var_817_0 > 0 and (tonumber(arg_817_1.hp) or 0) <= var_817_0 * __recovered_scope_0.var_0_390.HALF
	local var_817_2 = arg_817_1._fallenWings

	if not var_817_2 then
		var_817_2 = {
			k = 0
		}
		arg_817_1._fallenWings = var_817_2
	end

	if var_817_1 and not var_817_2.on then
		var_817_2.burstT = 0
	end

	var_817_2.on = var_817_1
	arg_817_1._fallenWingsASPD = var_817_1 and __recovered_scope_0.var_0_390.ASPD or nil
	var_817_2.k = math.max(0, math.min(1, var_817_2.k + (var_817_1 and arg_817_2 / __recovered_scope_0.var_0_390.IN or -arg_817_2 / __recovered_scope_0.var_0_390.OUT)))

	if var_817_2.burstT then
		var_817_2.burstT = var_817_2.burstT + arg_817_2

		if var_817_2.burstT > __recovered_scope_0.var_0_390.BURST then
			var_817_2.burstT = nil
		end
	end
end

 __recovered_scope_0.var_0_392 = __recovered_scope_0.var_0_390
 __recovered_scope_0.var_0_393 = nil
 __recovered_scope_0.var_0_394 = {
	LINGER = 2,
	canAct = __recovered_scope_0.var_0_212.canAct
}

 function __recovered_scope_0.var_0_395(arg_818_0)
	return arg_818_0 and arg_818_0.alive and not arg_818_0.dying and (arg_818_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_394.runtime(arg_819_0)
	return arg_819_0 and arg_819_0.primarySkillDef and arg_819_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_394.anim(arg_820_0)
	return arg_820_0.skill and arg_820_0.skill.activeAnim or __recovered_scope_0.var_0_394.runtime(arg_820_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_394.matches(arg_821_0)
	return arg_821_0 ~= nil and arg_821_0.skill ~= nil and arg_821_0.skill.kind == "HeavensJudgment"
end

function __recovered_scope_0.var_0_394.state(arg_822_0)
	local var_822_0 = rawget(arg_822_0, "_heavensJudgment")

	if not var_822_0 then
		var_822_0 = {
			stage = 0
		}
		arg_822_0._heavensJudgment = var_822_0
	end

	return var_822_0
end

function __recovered_scope_0.var_0_394.stageFor(arg_823_0, arg_823_1)
	local var_823_0 = __recovered_scope_0.var_0_394.state(arg_823_0)
	local var_823_1 = #(__recovered_scope_0.var_0_394.runtime(arg_823_0).dmgMul or {
		4,
		5.5,
		7
	})

	if var_823_0.last == arg_823_1 and __recovered_scope_0.var_0_395(arg_823_1) then
		return math.min(var_823_1, (var_823_0.stage or 0) + 1)
	end

	return 1
end

function __recovered_scope_0.var_0_394.pick(arg_824_0, arg_824_1, arg_824_2, arg_824_3)
	arg_824_3 = arg_824_3 or arg_824_0._awakeningMetric

	local var_824_0 = tonumber(__recovered_scope_0.var_0_394.runtime(arg_824_1).range) or 150

	local function var_824_1(arg_825_0)
		return arg_824_3 and arg_824_3(arg_824_1, arg_825_0) or ((arg_825_0.x or 0) - (arg_824_1.x or 0))^2 + ((arg_825_0.y or 0) - (arg_824_1.y or 0))^2
	end

	local function var_824_2(arg_826_0)
		return __recovered_scope_0.var_0_395(arg_826_0) and (not arg_824_2 or arg_824_2(arg_826_0, arg_824_1, arg_824_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_824_0, arg_824_1, arg_826_0))
	end

	local var_824_3 = __recovered_scope_0.var_0_394.state(arg_824_1).last

	if var_824_3 and var_824_2(var_824_3) and var_824_1(var_824_3) <= var_824_0 * var_824_0 then
		return var_824_3
	end

	local var_824_4
	local var_824_5

	for iter_824_0, iter_824_1 in ipairs(arg_824_0.enemies or {}) do
		if var_824_2(iter_824_1) then
			local var_824_6 = var_824_1(iter_824_1)

			if var_824_6 <= var_824_0 * var_824_0 and (not var_824_4 or var_824_6 < var_824_5) then
				var_824_4, var_824_5 = iter_824_1, var_824_6
			end
		end
	end

	return var_824_4
end

function __recovered_scope_0.var_0_394.finish(arg_827_0)
	local var_827_0 = arg_827_0.skill

	if var_827_0 then
		var_827_0.state, var_827_0.active, var_827_0.judgeCast, var_827_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_827_0)
	end

	arg_827_0._casting, arg_827_0._suppressAttack = false, false
	arg_827_0._forceAnim, arg_827_0._forceAnimT = nil, 0
end

 function __recovered_scope_0.var_0_396(arg_828_0, arg_828_1, arg_828_2)
	local var_828_0 = __recovered_scope_0.var_0_394.runtime(arg_828_1)
	local var_828_1 = {
		_spellEchoSeen = false,
		t = 0,
		kind = "heavens_judgment",
		dur = math.huge,
		owner = arg_828_1,
		target = arg_828_2,
		style = var_828_0.style,
		stage = __recovered_scope_0.var_0_394.stageFor(arg_828_1, arg_828_2),
		seed = math.floor((arg_828_1.x or 0) * 3 + (arg_828_1.y or 0) * 7) % 89
	}

	arg_828_0.vfx = arg_828_0.vfx or {}
	arg_828_0.vfx[#arg_828_0.vfx + 1] = var_828_1

	__recovered_scope_0.var_0_394.place(arg_828_0, var_828_1)

	return var_828_1
end

function __recovered_scope_0.var_0_394.updateCast(arg_829_0, arg_829_1, arg_829_2, arg_829_3, arg_829_4)
	local var_829_0 = arg_829_1.skill

	if not __recovered_scope_0.var_0_394.canAct(arg_829_1) then
		if var_829_0.judgeCast then
			__recovered_scope_0.var_0_394.finish(arg_829_1)
		end

		return
	end

	local var_829_1 = __recovered_scope_0.var_0_394.anim(arg_829_1)

	if var_829_0.judgeCast then
		if not arg_829_1.anim or arg_829_1.anim.name ~= var_829_1 then
			__recovered_scope_0.var_0_394.finish(arg_829_1)

			return
		end

		arg_829_1._casting, arg_829_1._suppressAttack = true, true
		arg_829_1._forceAnim, arg_829_1._forceAnimT = var_829_1, math.max(0.2, arg_829_2 + 0.1)

		return
	end

	var_829_0.cdT = math.min(var_829_0.cd or 8, (var_829_0.cdT or 0) + arg_829_2)

	if var_829_0.cdT < (var_829_0.cd or 8) then
		return
	end

	var_829_0.ready = true

	local var_829_2 = arg_829_1.anim and __recovered_scope_0.var_0_394.pick(arg_829_0, arg_829_1, arg_829_3, arg_829_4)

	if not var_829_2 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_829_1)

	var_829_0.state, var_829_0.active, var_829_0.ready, var_829_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_829_0)
	var_829_0.judgeCast = {
		struck = false,
		target = var_829_2
	}
	arg_829_1._pendingDuelistHit, arg_829_1.shotPending, arg_829_1.pendingTarget = nil, false
	arg_829_1._casting, arg_829_1._suppressAttack = true, true
	arg_829_1._forceAnim, arg_829_1._forceAnimT = var_829_1, math.max(0.2, arg_829_2 + 0.1)
	arg_829_1.anim.name, arg_829_1.anim.frame, arg_829_1.anim.t, arg_829_1.anim.reverse = var_829_1, 1, 0
	arg_829_1.anim._desynced = true

	local var_829_3 = (var_829_2.x or 0) >= (arg_829_1.x or 0) and 1 or -1

	arg_829_1.facing, arg_829_1._attackFacing = var_829_3, var_829_3
	var_829_0.judgeCast.fx = __recovered_scope_0.var_0_396(arg_829_0, arg_829_1, var_829_2)
end

function __recovered_scope_0.var_0_394.frameDuration(arg_830_0, arg_830_1, arg_830_2)
	local var_830_0 = arg_830_0.skill

	if var_830_0 and var_830_0.judgeCast and arg_830_0.anim and arg_830_0.anim.name == __recovered_scope_0.var_0_394.anim(arg_830_0) then
		return tonumber(var_830_0.animationSpeed) or tonumber(__recovered_scope_0.var_0_394.runtime(arg_830_0).animationSpeed) or 0.09, 1
	end

	return arg_830_1, arg_830_2
end

function __recovered_scope_0.var_0_394.onAnimation(arg_831_0, arg_831_1, arg_831_2, arg_831_3, arg_831_4, arg_831_5, arg_831_6)
	local var_831_0 = arg_831_1.skill
	local var_831_1 = var_831_0 and var_831_0.judgeCast

	if not var_831_1 then
		return
	end

	local var_831_2 = __recovered_scope_0.var_0_394.anim(arg_831_1)

	if not __recovered_scope_0.var_0_394.canAct(arg_831_1) or not arg_831_1.anim or arg_831_1.anim.name ~= var_831_2 then
		__recovered_scope_0.var_0_394.finish(arg_831_1)

		return
	end

	local var_831_3 = __recovered_scope_0.var_0_394.runtime(arg_831_1)
	local var_831_4 = tonumber(var_831_3.releaseFrame) or 6

	if not var_831_1.struck and var_831_4 <= (arg_831_1.anim.frame or 1) then
		arg_831_1.anim.frame, arg_831_1.anim.t = var_831_4, 0
		var_831_1.struck = true

		local var_831_5 = var_831_1.target
		local var_831_6 = var_831_1.fx

		if not __recovered_scope_0.var_0_395(var_831_5) or arg_831_4 and not arg_831_4(var_831_5, arg_831_1, arg_831_0) then
			var_831_5 = __recovered_scope_0.var_0_394.pick(arg_831_0, arg_831_1, arg_831_4, arg_831_5)

			if var_831_6 then
				var_831_6.target = var_831_5

				if var_831_5 then
					var_831_6.stage = __recovered_scope_0.var_0_394.stageFor(arg_831_1, var_831_5)
				end
			end
		end

		if not var_831_5 then
			if var_831_6 then
				var_831_6.releaseT = var_831_6.t or 0
				var_831_6.missed = true
			end

			return
		end

		local var_831_7 = __recovered_scope_0.var_0_394.state(arg_831_1)
		local var_831_8 = __recovered_scope_0.var_0_394.stageFor(arg_831_1, var_831_5)

		var_831_7.last, var_831_7.stage = var_831_5, var_831_8

		local var_831_9 = (var_831_3.dmgMul or {
			4,
			5.5,
			7
		})[var_831_8] or 4

		if var_831_6 then
			var_831_6.stage, var_831_6.releaseT, var_831_6.target = var_831_8, var_831_6.t or 0, var_831_5

			__recovered_scope_0.var_0_394.place(arg_831_0, var_831_6)
		end

		if arg_831_6 then
			arg_831_6(var_831_5, (arg_831_3 or 0) * var_831_9, arg_831_1, nil, {
				battleSkillDamage = true,
				basicAttack = false,
				heavensJudgment = var_831_8
			})
		end

		return
	end

	local var_831_10 = arg_831_2 and arg_831_2.animations and arg_831_2.animations[var_831_2]

	if (arg_831_1.anim.frame or 1) > (var_831_10 and var_831_10.frames or 9) then
		__recovered_scope_0.var_0_394.finish(arg_831_1)
	end
end

function __recovered_scope_0.var_0_394.place(arg_832_0, arg_832_1)
	local var_832_0 = arg_832_1.owner

	if __recovered_scope_0.var_0_395(var_832_0) then
		local var_832_1 = require("src.game.unit_abilities").dimensional_duel.pose(arg_832_0, var_832_0, false)

		arg_832_1.a = {
			x = var_832_1.footX,
			y = var_832_1.footY,
			pose = var_832_1.quad and var_832_1 or nil,
			frame = var_832_0.anim and var_832_0.anim.name == __recovered_scope_0.var_0_394.anim(var_832_0) and var_832_0.anim.frame or nil
		}

		local var_832_2 = require("src.ui.widgets").sprite_anchor.idleMark
		local var_832_3, var_832_4 = var_832_2(arg_832_0, var_832_0, 1)
		local var_832_5, var_832_6 = var_832_2(arg_832_0, var_832_0, 0)

		if var_832_3 then
			arg_832_1.a.mx, arg_832_1.a.feet, arg_832_1.a.top = require("src.game.unit_abilities").rupturing_descent.bodyX(arg_832_0, var_832_0) or var_832_3, var_832_4, var_832_6
		end
	elseif arg_832_1.a then
		arg_832_1.a.gone = true
	end

	local var_832_7 = arg_832_1.target

	if var_832_7 and (var_832_7.alive or not arg_832_1.b) then
		local var_832_8 = var_832_7.x or 0
		local var_832_9 = (var_832_7.y or 0) + 16

		if arg_832_0.entityGroundPoint then
			var_832_8, var_832_9 = arg_832_0:entityGroundPoint(var_832_7)
		end

		local var_832_10 = 20
		local var_832_11 = require("src.game.projectiles").spellblade_vortex
		local var_832_12 = var_832_11.targetCover and var_832_11.targetCover(arg_832_0, var_832_7)

		if var_832_12 and var_832_12.half then
			var_832_10 = var_832_12.half
		end

		local var_832_13 = var_832_8
		local var_832_14 = var_832_9 - var_832_10

		if var_832_11.targetPoint then
			var_832_13, var_832_14 = var_832_11.targetPoint(arg_832_0, var_832_7)
		end

		arg_832_1.b = {
			x = var_832_8,
			y = var_832_9,
			cx = var_832_13,
			cy = var_832_14,
			half = var_832_10
		}

		local var_832_15 = require("src.ui.widgets").sprite_anchor.idleMark
		local var_832_16, var_832_17 = var_832_15(arg_832_0, var_832_7, 1)
		local var_832_18, var_832_19 = var_832_15(arg_832_0, var_832_7, 0.5)

		if var_832_16 then
			arg_832_1.b.x, arg_832_1.b.cx, arg_832_1.b.y, arg_832_1.b.cy = var_832_16, var_832_16, var_832_17, var_832_19
		end
	end
end

function __recovered_scope_0.var_0_394.track(arg_833_0, arg_833_1)
	local var_833_0 = arg_833_1.t or 0
	local var_833_1 = arg_833_1.owner and arg_833_1.owner.skill

	if not arg_833_1.releaseT and (not var_833_1 or not var_833_1.judgeCast or var_833_1.judgeCast.fx ~= arg_833_1) then
		arg_833_1.releaseT, arg_833_1.missed = var_833_0, true
	end

	if not arg_833_1.releaseT or var_833_0 - arg_833_1.releaseT < 0.5 then
		__recovered_scope_0.var_0_394.place(arg_833_0, arg_833_1)
	end

	if arg_833_1.releaseT and var_833_0 - arg_833_1.releaseT > __recovered_scope_0.var_0_394.LINGER then
		arg_833_1.finished = true
	end
end

function __recovered_scope_0.var_0_394.endBattle(arg_834_0)
	for iter_834_0, iter_834_1 in ipairs(arg_834_0 and arg_834_0.allies or {}) do
		if __recovered_scope_0.var_0_394.matches(iter_834_1) and iter_834_1.skill.judgeCast then
			__recovered_scope_0.var_0_394.finish(iter_834_1)
		end

		iter_834_1._heavensJudgment = nil
	end

	for iter_834_2, iter_834_3 in ipairs(arg_834_0 and arg_834_0.vfx or {}) do
		if iter_834_3.kind == "heavens_judgment" then
			iter_834_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_397 = __recovered_scope_0.var_0_394
 __recovered_scope_0.var_0_398 = nil
 __recovered_scope_0.var_0_399 = {
	ECHO_DELAY = 0.14,
	ECHO_T = 0.42,
	ECHO_R = 30,
	BAND = 9,
	SWEEP = 0.22,
	FLAT = 0.42,
	GAP = 4,
	HEIGHT = 58,
	REACH = 30,
	LINGER = 1.9,
	STEPS = {
		0.13,
		0.52,
		0.26,
		0.18,
		0.18,
		0.18,
		0.18,
		0.09,
		0.09,
		0.39,
		0.16,
		0.16
	},
	T = {}
}
 __recovered_scope_0.var_0_400 = 0

for iter_0_2, iter_0_3 in ipairs(__recovered_scope_0.var_0_399.STEPS) do
	if iter_0_2 == 3 then
		__recovered_scope_0.var_0_399.T.rise = __recovered_scope_0.var_0_400
	end

	if iter_0_2 == 4 then
		__recovered_scope_0.var_0_399.T.air = __recovered_scope_0.var_0_400
	end

	if iter_0_2 == 8 then
		__recovered_scope_0.var_0_399.T.fall = __recovered_scope_0.var_0_400
	end

	if iter_0_2 == 10 then
		__recovered_scope_0.var_0_399.T.slam = __recovered_scope_0.var_0_400
	end

	__recovered_scope_0.var_0_400 = __recovered_scope_0.var_0_400 + iter_0_3
end

__recovered_scope_0.var_0_399.T.total = __recovered_scope_0.var_0_400
__recovered_scope_0.var_0_399.canAct = __recovered_scope_0.var_0_212.canAct

 function __recovered_scope_0.var_0_401(arg_835_0)
	return arg_835_0 and arg_835_0.alive and not arg_835_0.dying and (arg_835_0.hp or 0) > 0 and not arg_835_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_402(arg_836_0)
	arg_836_0 = math.max(0, math.min(1, arg_836_0))

	return arg_836_0 * arg_836_0 * (3 - 2 * arg_836_0)
end

 function __recovered_scope_0.var_0_403(arg_837_0)
	return math.max(1, require("src.game.projectiles").spellblade_vortex.drawSize(arg_837_0) / 32)
end

function __recovered_scope_0.var_0_399.runtime(arg_838_0)
	return arg_838_0 and arg_838_0.primarySkillDef and arg_838_0.primarySkillDef.runtime or {}
end

function __recovered_scope_0.var_0_399.anim(arg_839_0)
	return arg_839_0.skill and arg_839_0.skill.activeAnim or __recovered_scope_0.var_0_399.runtime(arg_839_0).activeAnim or "attack2"
end

function __recovered_scope_0.var_0_399.matches(arg_840_0)
	return arg_840_0 ~= nil and arg_840_0.skill ~= nil and arg_840_0.skill.kind == "RupturingDescent"
end

function __recovered_scope_0.var_0_399.frameAt(arg_841_0)
	local var_841_0 = 0

	for iter_841_0, iter_841_1 in ipairs(__recovered_scope_0.var_0_399.STEPS) do
		if arg_841_0 < var_841_0 + iter_841_1 or iter_841_0 == #__recovered_scope_0.var_0_399.STEPS then
			return iter_841_0, math.max(0, arg_841_0 - var_841_0)
		end

		var_841_0 = var_841_0 + iter_841_1
	end
end

 function __recovered_scope_0.var_0_404(arg_842_0, arg_842_1)
	if arg_842_0.entityGroundPoint then
		return arg_842_0:entityGroundPoint(arg_842_1)
	end

	return arg_842_1.x or 0, (arg_842_1.y or 0) + 16
end

function __recovered_scope_0.var_0_399.landing(arg_843_0, arg_843_1, arg_843_2)
	if not arg_843_1._bodyColX or not arg_843_1._bodyColW or not arg_843_2._bodyColX or not arg_843_2._bodyColW then
		return arg_843_1.x or 0, arg_843_1.y or 0, (arg_843_2.x or 0) >= (arg_843_1.x or 0) and 1 or -1
	end

	local var_843_0 = require("src.game.combat").separation.bodyDeltaX(arg_843_1, arg_843_2) >= 0 and 1 or -1
	local var_843_1 = arg_843_2._bodyColX + arg_843_2._bodyColW * 0.5 - var_843_0 * ((arg_843_2._bodyColW + arg_843_1._bodyColW) * 0.5 + __recovered_scope_0.var_0_399.GAP)
	local var_843_2 = (arg_843_1.x or 0) + var_843_1 - (arg_843_1._bodyColX + arg_843_1._bodyColW * 0.5)
	local var_843_3 = arg_843_2.y or arg_843_1.y or 0

	if (var_843_2 - (arg_843_1.x or 0)) * var_843_0 < 0 then
		var_843_2 = arg_843_1.x or 0
	end

	for iter_843_0, iter_843_1 in ipairs(arg_843_0.enemies or {}) do
		if iter_843_1 ~= arg_843_2 and iter_843_1.isCrystalGuardWall and __recovered_scope_0.var_0_401(iter_843_1) and ((iter_843_1.x or 0) - (arg_843_1.x or 0)) * ((iter_843_1.x or 0) - var_843_2) <= 0 then
			return nil
		end
	end

	local var_843_4, var_843_5 = require("src.game.combat").stage6_rift.clampDestinationToLane(arg_843_0, arg_843_1, var_843_2, var_843_3)

	if math.abs((var_843_5 or var_843_3) - var_843_3) > 0.5 then
		return nil
	end

	return var_843_2, var_843_3, var_843_0
end

function __recovered_scope_0.var_0_399.reaches(arg_844_0, arg_844_1, arg_844_2, arg_844_3, arg_844_4, arg_844_5)
	local var_844_0, var_844_1 = __recovered_scope_0.var_0_404(arg_844_0, arg_844_1)
	local var_844_2 = arg_844_4 * __recovered_scope_0.var_0_399.FLAT
	local var_844_3 = var_844_1 - arg_844_3

	if var_844_2 <= 0 or var_844_2 < math.abs(var_844_3) then
		return false
	end

	local var_844_4 = arg_844_4 * math.sqrt(1 - (var_844_3 / var_844_2)^2)

	return __recovered_scope_0.var_0_152.touches(arg_844_0, arg_844_1, arg_844_2 - var_844_4, var_844_1 - __recovered_scope_0.var_0_399.BAND * arg_844_5, arg_844_2 + var_844_4, var_844_1 + arg_844_5)
end

function __recovered_scope_0.var_0_399.pick(arg_845_0, arg_845_1, arg_845_2, arg_845_3)
	arg_845_3 = arg_845_3 or arg_845_0._awakeningMetric

	local var_845_0 = tonumber(__recovered_scope_0.var_0_399.runtime(arg_845_1).range) or 110
	local var_845_1 = __recovered_scope_0.var_0_403(arg_845_0)
	local var_845_2, var_845_3 = __recovered_scope_0.var_0_404(arg_845_0, arg_845_1)
	local var_845_4 = var_845_2 - (arg_845_1.x or 0)
	local var_845_5 = var_845_3 - (arg_845_1.y or 0)
	local var_845_6 = (tonumber(__recovered_scope_0.var_0_399.runtime(arg_845_1).reach) or __recovered_scope_0.var_0_399.REACH) * var_845_1

	local function var_845_7(arg_846_0)
		return arg_845_3 and arg_845_3(arg_845_1, arg_846_0) or ((arg_846_0.x or 0) - (arg_845_1.x or 0))^2 + ((arg_846_0.y or 0) - (arg_845_1.y or 0))^2
	end

	local function var_845_8(arg_847_0)
		return __recovered_scope_0.var_0_401(arg_847_0) and (not arg_845_2 or arg_845_2(arg_847_0, arg_845_1, arg_845_0)) and (not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(arg_845_0, arg_845_1, arg_847_0))
	end

	local var_845_9

	for iter_845_0, iter_845_1 in ipairs(arg_845_0.enemies or {}) do
		if var_845_8(iter_845_1) then
			local var_845_10 = var_845_7(iter_845_1)

			if var_845_10 <= var_845_0 * var_845_0 then
				local var_845_11, var_845_12, var_845_13 = __recovered_scope_0.var_0_399.landing(arg_845_0, arg_845_1, iter_845_1)

				if not var_845_11 then
					var_845_11, var_845_12, var_845_13 = arg_845_1.x or 0, arg_845_1.y or 0, (iter_845_1.x or 0) >= (arg_845_1.x or 0) and 1 or -1
				end

				local var_845_14 = var_845_11 + var_845_4
				local var_845_15 = var_845_12 + var_845_5
				local var_845_16 = 0

				for iter_845_2, iter_845_3 in ipairs(arg_845_0.enemies or {}) do
					if var_845_8(iter_845_3) then
						local var_845_17, var_845_18 = __recovered_scope_0.var_0_404(arg_845_0, iter_845_3)

						if ((var_845_17 - var_845_14) / (var_845_6 + 10))^2 + ((var_845_18 - var_845_15) / (var_845_6 * __recovered_scope_0.var_0_399.FLAT + 4))^2 <= 1 then
							var_845_16 = var_845_16 + 1
						end
					end
				end

				if not var_845_9 or var_845_16 > var_845_9.n or var_845_16 == var_845_9.n and var_845_10 < var_845_9.d then
					var_845_9 = {
						e = iter_845_1,
						d = var_845_10,
						n = var_845_16,
						x = var_845_11,
						y = var_845_12,
						side = var_845_13
					}
				end
			end
		end
	end

	if var_845_9 then
		return var_845_9.e, var_845_9.x, var_845_9.y, var_845_9.side
	end
end

function __recovered_scope_0.var_0_399.bodyX(arg_848_0, arg_848_1)
	local var_848_0 = arg_848_0.getUnitAssetForAlly and arg_848_0:getUnitAssetForAlly(arg_848_1)
	local var_848_1 = var_848_0 and var_848_0.bodyBounds

	if not var_848_1 then
		return nil
	end

	local var_848_2 = arg_848_0.ui and arg_848_0.ui.battle
	local var_848_3 = tonumber(var_848_2 and var_848_2.allySize32) or 64

	if var_848_3 <= 0 then
		var_848_3 = 64
	end

	local var_848_4, var_848_5, var_848_6 = require("src.ui.widgets").sprite_anchor.allyTransform(arg_848_1, var_848_0, var_848_3, var_848_2)
	local var_848_7 = var_848_1.x + var_848_1.w * 0.5

	if (tonumber(arg_848_1.facing) or 1) < 0 then
		var_848_7 = (var_848_0.frameW or 32) - var_848_7
	end

	return var_848_4 + var_848_7 * var_848_6
end

 function __recovered_scope_0.var_0_405(arg_849_0, arg_849_1, arg_849_2)
	local var_849_0 = arg_849_1 - (arg_849_0.x or 0)
	local var_849_1 = arg_849_2 - (arg_849_0.y or 0)

	if var_849_0 == 0 and var_849_1 == 0 then
		return
	end

	arg_849_0.x, arg_849_0.y = arg_849_1, arg_849_2

	for iter_849_0, iter_849_1 in ipairs({
		"colX",
		"_bodyColX"
	}) do
		if arg_849_0[iter_849_1] then
			arg_849_0[iter_849_1] = arg_849_0[iter_849_1] + var_849_0
		end
	end

	for iter_849_2, iter_849_3 in ipairs({
		"colY",
		"_bodyColY"
	}) do
		if arg_849_0[iter_849_3] then
			arg_849_0[iter_849_3] = arg_849_0[iter_849_3] + var_849_1
		end
	end
end

function __recovered_scope_0.var_0_399.liftOff(arg_850_0, arg_850_1)
	if rawget(arg_850_1, "_skyborne") then
		return
	end

	arg_850_1._skyborne = {
		skyborne = true
	}

	for iter_850_0, iter_850_1 in ipairs(arg_850_0.enemies or {}) do
		if iter_850_1.target == arg_850_1 or iter_850_1.pendingTarget == arg_850_1 then
			for iter_850_2, iter_850_3 in ipairs({
				"shotPending",
				"pendingTarget",
				"_pendingGoblinHit",
				"_pendingOrcHit",
				"_meleeLoop",
				"_pendingHowlHit",
				"_pendingFirebreatherHit",
				"_pendingLizardHunterThrow",
				"_pendingJesterPrankHit"
			}) do
				if iter_850_3 ~= "shotPending" and iter_850_3 == "_meleeLoop" then
					-- block empty
				end

				iter_850_1[iter_850_3] = nil
			end

			iter_850_1.target = nil
		end
	end

	for iter_850_4, iter_850_5 in ipairs(arg_850_0.projectiles or {}) do
		if iter_850_5.target == arg_850_1 and iter_850_5.owner and iter_850_5.owner.side == "enemy" then
			iter_850_5.alive = false
		end
	end
end

function __recovered_scope_0.var_0_399.land(arg_851_0)
	arg_851_0._skyborne = nil
end

function __recovered_scope_0.var_0_399.awaited(arg_852_0)
	for iter_852_0, iter_852_1 in ipairs(arg_852_0 and arg_852_0.allies or {}) do
		if rawget(iter_852_1, "_skyborne") and __recovered_scope_0.var_0_401(iter_852_1) then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_399.finish(arg_853_0)
	arg_853_0._skyborne = nil

	local var_853_0 = arg_853_0.skill

	if var_853_0 then
		var_853_0.state, var_853_0.active, var_853_0.descent, var_853_0.cdT = nil, false, nil, require("src.game.combat").chain_casting.reset(var_853_0)
	end

	arg_853_0._casting, arg_853_0._suppressAttack = false, false
	arg_853_0._forceAnim, arg_853_0._forceAnimT = nil, 0
	arg_853_0._jumpYOffset, arg_853_0._shakeX = nil

	if arg_853_0.anim and arg_853_0.anim.name == __recovered_scope_0.var_0_399.anim(arg_853_0) then
		arg_853_0.anim.name, arg_853_0.anim.frame, arg_853_0.anim.t = "idle", 1, 0
	end
end

function __recovered_scope_0.var_0_399.place(arg_854_0, arg_854_1)
	local var_854_0 = arg_854_1.owner

	if not __recovered_scope_0.var_0_401(var_854_0) then
		if arg_854_1.a then
			arg_854_1.a.gone = true
		end

		return
	end

	local var_854_1 = require("src.ui.widgets").sprite_anchor.idleMark
	local var_854_2, var_854_3 = var_854_1(arg_854_0, var_854_0, 1)
	local var_854_4, var_854_5 = var_854_1(arg_854_0, var_854_0, 0)
	local var_854_6, var_854_7 = var_854_1(arg_854_0, var_854_0, 0.5)

	if not var_854_2 then
		var_854_2, var_854_3 = __recovered_scope_0.var_0_404(arg_854_0, var_854_0)
		var_854_5, var_854_7 = var_854_3 - 34, var_854_3 - 17
	end

	var_854_2 = __recovered_scope_0.var_0_399.bodyX(arg_854_0, var_854_0) or var_854_2

	local var_854_8 = var_854_0.skill and var_854_0.skill.descent

	arg_854_1.a = {
		mx = var_854_2,
		feet = var_854_3,
		top = var_854_5,
		mid = var_854_7,
		lift = var_854_0._jumpYOffset or 0,
		face = var_854_0.facing or 1,
		frame = var_854_8 and var_854_8.fx == arg_854_1 and var_854_0.anim and var_854_0.anim.frame or nil,
		ft = var_854_8 and var_854_8.fx == arg_854_1 and var_854_8.ft or nil,
		shake = var_854_0._shakeX
	}

	local var_854_9 = require("src.game.unit_abilities").dimensional_duel.pose(arg_854_0, var_854_0)

	if var_854_9.quad then
		arg_854_1.a.pose = var_854_9
	end

	if var_854_8 and var_854_8.fx == arg_854_1 then
		arg_854_1.cast = var_854_8.t
	end
end

function __recovered_scope_0.var_0_399.enemyPose(arg_855_0, arg_855_1)
	local var_855_0 = require("src.game.projectiles").spellblade_vortex.targetCover(arg_855_0, arg_855_1)
	local var_855_1 = arg_855_0.getUnitAssetForEnemy and arg_855_0:getUnitAssetForEnemy(arg_855_1) or arg_855_0.assets and arg_855_0.assets.units and arg_855_0.assets.units[arg_855_1.skin or arg_855_1.kind]

	if not var_855_0 or not var_855_1 or not var_855_1.quads or not var_855_1.animations then
		return nil
	end

	local var_855_2 = arg_855_1.anim and arg_855_1.anim.name or "idle"

	if not var_855_1.animations[var_855_2] then
		var_855_2 = var_855_1.animations.walk and "walk" or "idle"
	end

	local var_855_3 = var_855_1.quads[var_855_2]
	local var_855_4 = var_855_3 and var_855_3[math.max(1, math.min(#var_855_3, arg_855_1.anim and arg_855_1.anim.frame or 1))]

	if not var_855_4 then
		return nil
	end

	return {
		asset = var_855_1,
		quad = var_855_4,
		x0 = var_855_0.ox,
		y0 = var_855_0.oy,
		dx = var_855_0.ux,
		dy = var_855_0.uy
	}
end

 function __recovered_scope_0.var_0_406(arg_856_0, arg_856_1, arg_856_2)
	local var_856_0 = {
		t = 0,
		_spellEchoSeen = false,
		kind = "rupturing_descent",
		dur = math.huge,
		owner = arg_856_1,
		target = arg_856_2.target,
		style = __recovered_scope_0.var_0_399.runtime(arg_856_1).style,
		pixel = __recovered_scope_0.var_0_403(arg_856_0),
		hits = {},
		echoes = {},
		echoHits = {},
		got = {},
		struck = {},
		seed = math.floor((arg_856_1.x or 0) * 3 + (arg_856_1.y or 0) * 7) % 89
	}
	local var_856_1 = var_856_0.pixel
	local var_856_2, var_856_3 = __recovered_scope_0.var_0_404(arg_856_0, arg_856_1)

	var_856_0.lx, var_856_0.ly = var_856_2 + (arg_856_2.lx - (arg_856_1.x or 0)), var_856_3 + (arg_856_2.ly - (arg_856_1.y or 0))

	local var_856_4 = __recovered_scope_0.var_0_399.runtime(arg_856_1)

	var_856_0.reach, var_856_0.echoR = tonumber(var_856_4.reach) or __recovered_scope_0.var_0_399.REACH, tonumber(var_856_4.echoReach) or __recovered_scope_0.var_0_399.ECHO_R
	var_856_0.heightCells, var_856_0.swordCell = tonumber(var_856_4.height) or __recovered_scope_0.var_0_399.HEIGHT, var_856_4.swordCell
	var_856_0.height = var_856_0.heightCells * var_856_1
	arg_856_0.vfx = arg_856_0.vfx or {}
	arg_856_0.vfx[#arg_856_0.vfx + 1] = var_856_0
	arg_856_2.fx = var_856_0

	__recovered_scope_0.var_0_399.place(arg_856_0, var_856_0)

	return var_856_0
end

function __recovered_scope_0.var_0_399.updateCast(arg_857_0, arg_857_1, arg_857_2, arg_857_3, arg_857_4)
	local var_857_0 = arg_857_1.skill

	if not __recovered_scope_0.var_0_399.canAct(arg_857_1) then
		if var_857_0.descent then
			__recovered_scope_0.var_0_399.finish(arg_857_1)
		end

		return
	end

	if var_857_0.descent then
		return __recovered_scope_0.var_0_399.advance(arg_857_0, arg_857_1, var_857_0.descent, arg_857_2)
	end

	var_857_0.cdT = math.min(var_857_0.cd or 8, (var_857_0.cdT or 0) + arg_857_2)

	if var_857_0.cdT < (var_857_0.cd or 8) then
		return
	end

	var_857_0.ready = true

	if not arg_857_1.anim then
		return
	end

	local var_857_1, var_857_2, var_857_3, var_857_4 = __recovered_scope_0.var_0_399.pick(arg_857_0, arg_857_1, arg_857_3, arg_857_4)

	if not var_857_1 then
		return
	end

	require("src.game.combat").chain_casting.begin(arg_857_1)

	var_857_0.state, var_857_0.active, var_857_0.ready, var_857_0.cdT = "active", true, false, require("src.game.combat").chain_casting.reset(var_857_0)

	local var_857_5 = {
		ft = 0,
		t = 0,
		target = var_857_1,
		sx = arg_857_1.x or 0,
		sy = arg_857_1.y or 0,
		lx = var_857_2,
		ly = var_857_3,
		face = var_857_4
	}

	var_857_0.descent = var_857_5
	arg_857_1._pendingDuelistHit, arg_857_1.shotPending, arg_857_1.pendingTarget = nil, false

	__recovered_scope_0.var_0_406(arg_857_0, arg_857_1, var_857_5)
	__recovered_scope_0.var_0_399.advance(arg_857_0, arg_857_1, var_857_5, 0)
end

function __recovered_scope_0.var_0_399.advance(arg_858_0, arg_858_1, arg_858_2, arg_858_3)
	arg_858_2.t = arg_858_2.t + arg_858_3

	local var_858_0 = __recovered_scope_0.var_0_399.anim(arg_858_1)
	local var_858_1, var_858_2 = __recovered_scope_0.var_0_399.frameAt(arg_858_2.t)

	arg_858_2.ft = var_858_2
	arg_858_1.anim.name, arg_858_1.anim.frame, arg_858_1.anim.t, arg_858_1.anim.reverse = var_858_0, var_858_1, 0
	arg_858_1.anim._desynced = true
	arg_858_1._casting, arg_858_1._suppressAttack = true, true
	arg_858_1._forceAnim, arg_858_1._forceAnimT = var_858_0, math.max(0.2, arg_858_3 + 0.1)
	arg_858_1.facing, arg_858_1._attackFacing = arg_858_2.face, arg_858_2.face
	arg_858_1._kb, arg_858_1._pendingDuelistHit, arg_858_1.shotPending, arg_858_1.pendingTarget = nil, nil, false

	local var_858_3 = __recovered_scope_0.var_0_403(arg_858_0)
	local var_858_4 = __recovered_scope_0.var_0_399.T
	local var_858_5 = arg_858_2.sx
	local var_858_6 = arg_858_2.sy
	local var_858_7 = 0
	local var_858_8
	local var_858_9 = tonumber(__recovered_scope_0.var_0_399.runtime(arg_858_1).height) or __recovered_scope_0.var_0_399.HEIGHT

	if arg_858_2.t < var_858_4.rise then
		if var_858_1 == 2 then
			var_858_8 = (math.floor(var_858_2 * 22) % 2 == 0 and 1 or -1) * 0.5 * var_858_3 * __recovered_scope_0.var_0_402(var_858_2 / 0.12)
		end
	elseif arg_858_2.t < var_858_4.air then
		local var_858_10 = (arg_858_2.t - var_858_4.rise) / (var_858_4.air - var_858_4.rise)
		local var_858_11 = __recovered_scope_0.var_0_402(var_858_10)

		var_858_5, var_858_6 = arg_858_2.sx + (arg_858_2.lx - arg_858_2.sx) * var_858_11, arg_858_2.sy + (arg_858_2.ly - arg_858_2.sy) * var_858_11
		var_858_7 = var_858_9 * var_858_3 * (1 - (1 - var_858_10) * (1 - var_858_10))
	elseif arg_858_2.t < var_858_4.fall then
		var_858_5, var_858_6 = arg_858_2.lx, arg_858_2.ly
		var_858_7 = var_858_9 * var_858_3 + math.sin((arg_858_2.t - var_858_4.air) / (var_858_4.fall - var_858_4.air) * math.pi) * var_858_3
	elseif arg_858_2.t < var_858_4.slam then
		local var_858_12 = (arg_858_2.t - var_858_4.fall) / (var_858_4.slam - var_858_4.fall)

		var_858_5, var_858_6 = arg_858_2.lx, arg_858_2.ly
		var_858_7 = var_858_9 * var_858_3 * (1 - var_858_12 * var_858_12)
	else
		var_858_5, var_858_6 = arg_858_2.lx, arg_858_2.ly

		if not arg_858_2.slammed then
			__recovered_scope_0.var_0_399.slam(arg_858_0, arg_858_1, arg_858_2)
		end
	end

	__recovered_scope_0.var_0_405(arg_858_1, var_858_5, var_858_6)

	if arg_858_2.t >= var_858_4.rise and arg_858_2.t < var_858_4.slam then
		__recovered_scope_0.var_0_399.liftOff(arg_858_0, arg_858_1)
	else
		__recovered_scope_0.var_0_399.land(arg_858_1)
	end

	arg_858_1._jumpYOffset = var_858_7 > 0 and var_858_7 or nil
	arg_858_1._shakeX = var_858_8

	if arg_858_2.fx then
		__recovered_scope_0.var_0_399.place(arg_858_0, arg_858_2.fx)
	end

	if arg_858_2.t >= var_858_4.total then
		__recovered_scope_0.var_0_399.finish(arg_858_1)
	end
end

function __recovered_scope_0.var_0_399.slam(arg_859_0, arg_859_1, arg_859_2)
	arg_859_2.slammed = true

	__recovered_scope_0.var_0_399.land(arg_859_1)

	local var_859_0 = arg_859_2.fx

	if not var_859_0 then
		return
	end

	arg_859_1._jumpYOffset = nil

	__recovered_scope_0.var_0_399.place(arg_859_0, var_859_0)

	var_859_0.impactAt, var_859_0.ix, var_859_0.iy = var_859_0.t or 0, var_859_0.a.mx, var_859_0.a.feet
	var_859_0.atk = arg_859_2.atk or arg_859_1.dmg or 5
end

function __recovered_scope_0.var_0_399.frameDuration(arg_860_0, arg_860_1, arg_860_2)
	local var_860_0 = arg_860_0.skill

	if var_860_0 and var_860_0.descent and arg_860_0.anim and arg_860_0.anim.name == __recovered_scope_0.var_0_399.anim(arg_860_0) then
		return 99, 1
	end

	return arg_860_1, arg_860_2
end

function __recovered_scope_0.var_0_399.onAnimation(arg_861_0, arg_861_1, arg_861_2, arg_861_3)
	local var_861_0 = arg_861_1.skill and arg_861_1.skill.descent

	if var_861_0 then
		var_861_0.atk = arg_861_3
	end
end

 function __recovered_scope_0.var_0_407(arg_862_0, arg_862_1, arg_862_2, arg_862_3, arg_862_4, arg_862_5)
	if arg_862_4 then
		arg_862_4(arg_862_2, (arg_862_1.atk or 5) * arg_862_3, arg_862_1.owner, nil, arg_862_5)
	end
end

function __recovered_scope_0.var_0_399.sweep(arg_863_0, arg_863_1, arg_863_2, arg_863_3)
	local var_863_0 = (arg_863_1.t or 0) - arg_863_1.impactAt
	local var_863_1 = __recovered_scope_0.var_0_399.runtime(arg_863_1.owner)
	local var_863_2 = tonumber(var_863_1.maxTargets) or 3

	if var_863_0 > __recovered_scope_0.var_0_399.SWEEP or var_863_2 <= #arg_863_1.hits then
		return
	end

	local var_863_3 = arg_863_1.pixel or 2
	local var_863_4 = (arg_863_1.reach or __recovered_scope_0.var_0_399.REACH) * var_863_3 * (1 - (1 - math.min(1, var_863_0 / __recovered_scope_0.var_0_399.SWEEP))^2)
	local var_863_5 = {}

	for iter_863_0, iter_863_1 in ipairs(arg_863_0.enemies or {}) do
		if not arg_863_1.struck[iter_863_1] and __recovered_scope_0.var_0_401(iter_863_1) and (not arg_863_2 or arg_863_2(iter_863_1, arg_863_1.owner, arg_863_0)) and __recovered_scope_0.var_0_399.reaches(arg_863_0, iter_863_1, arg_863_1.ix, arg_863_1.iy, var_863_4, var_863_3) then
			local var_863_6, var_863_7 = __recovered_scope_0.var_0_404(arg_863_0, iter_863_1)

			var_863_5[#var_863_5 + 1] = {
				e = iter_863_1,
				d = (var_863_6 - arg_863_1.ix)^2 + ((var_863_7 - arg_863_1.iy) / __recovered_scope_0.var_0_399.FLAT)^2
			}
		end
	end

	table.sort(var_863_5, function(arg_864_0, arg_864_1)
		return arg_864_0.d < arg_864_1.d
	end)

	for iter_863_2, iter_863_3 in ipairs(var_863_5) do
		if var_863_2 <= #arg_863_1.hits then
			break
		end

		local var_863_8 = iter_863_3.e
		local var_863_9, var_863_10 = __recovered_scope_0.var_0_404(arg_863_0, var_863_8)
		local var_863_11 = require("src.ui.widgets").sprite_anchor.idleMark
		local var_863_12, var_863_13 = var_863_11(arg_863_0, var_863_8, 1)
		local var_863_14, var_863_15 = var_863_11(arg_863_0, var_863_8, 0.5)

		arg_863_1.struck[var_863_8] = true

		local var_863_16 = {
			target = var_863_8,
			at = arg_863_1.t,
			x = var_863_12 or var_863_9,
			y = var_863_13 or var_863_10,
			cy = var_863_15 or var_863_10 - 16,
			pose = __recovered_scope_0.var_0_399.enemyPose(arg_863_0, var_863_8)
		}

		arg_863_1.hits[#arg_863_1.hits + 1] = var_863_16
		arg_863_1.echoes[#arg_863_1.echoes + 1] = {
			src = var_863_8,
			at = arg_863_1.t + __recovered_scope_0.var_0_399.ECHO_DELAY,
			x = var_863_16.x,
			y = var_863_16.y,
			cy = var_863_16.cy,
			got = {}
		}

		__recovered_scope_0.var_0_407(arg_863_0, arg_863_1, var_863_8, tonumber(var_863_1.dmgMul) or 1.8, arg_863_3, {
			battleSkillDamage = true,
			rupturingDescent = true,
			basicAttack = false
		})
	end
end

function __recovered_scope_0.var_0_399.echo(arg_865_0, arg_865_1, arg_865_2, arg_865_3)
	local var_865_0 = __recovered_scope_0.var_0_399.runtime(arg_865_1.owner)
	local var_865_1 = tonumber(var_865_0.echoMax) or 2
	local var_865_2 = arg_865_1.pixel or 2

	for iter_865_0, iter_865_1 in ipairs(arg_865_1.echoes) do
		local var_865_3 = (arg_865_1.t or 0) - iter_865_1.at

		if var_865_3 >= 0 and var_865_3 <= __recovered_scope_0.var_0_399.ECHO_T then
			local var_865_4 = (arg_865_1.echoR or __recovered_scope_0.var_0_399.ECHO_R) * var_865_2 * (1 - (1 - var_865_3 / __recovered_scope_0.var_0_399.ECHO_T)^2)

			for iter_865_2, iter_865_3 in ipairs(arg_865_1.hits) do
				local var_865_5 = iter_865_3.target

				if var_865_5 ~= iter_865_1.src and not iter_865_1.got[var_865_5] and var_865_1 > (arg_865_1.got[var_865_5] or 0) and __recovered_scope_0.var_0_401(var_865_5) and (not arg_865_2 or arg_865_2(var_865_5, arg_865_1.owner, arg_865_0)) and __recovered_scope_0.var_0_399.reaches(arg_865_0, var_865_5, iter_865_1.x, iter_865_1.y, var_865_4, var_865_2) then
					iter_865_1.got[var_865_5] = true
					arg_865_1.got[var_865_5] = (arg_865_1.got[var_865_5] or 0) + 1
					arg_865_1.echoHits[#arg_865_1.echoHits + 1] = {
						target = var_865_5,
						at = arg_865_1.t,
						from = iter_865_1.src
					}

					__recovered_scope_0.var_0_407(arg_865_0, arg_865_1, var_865_5, tonumber(var_865_0.echoMul) or 0.6, arg_865_3, {
						battleSkillDamage = true,
						rupturingEcho = true,
						basicAttack = false
					})
				end
			end
		end
	end
end

function __recovered_scope_0.var_0_399.track(arg_866_0, arg_866_1, arg_866_2, arg_866_3)
	local var_866_0 = arg_866_1.t or 0
	local var_866_1 = arg_866_1.owner and arg_866_1.owner.skill
	local var_866_2 = var_866_1 and var_866_1.descent and var_866_1.descent.fx == arg_866_1

	if not arg_866_1.impactAt and not var_866_2 then
		arg_866_1.cutAt = arg_866_1.cutAt or var_866_0

		if arg_866_1.a then
			arg_866_1.a.lift = 0
		end

		if var_866_0 - arg_866_1.cutAt > 0.6 then
			arg_866_1.finished = true
		end

		return
	end

	if not var_866_2 and (not arg_866_1.impactAt or var_866_0 - arg_866_1.impactAt < 0.6) then
		__recovered_scope_0.var_0_399.place(arg_866_0, arg_866_1)
	end

	if arg_866_1.impactAt then
		if var_866_0 - arg_866_1.impactAt < 1.4 then
			for iter_866_0, iter_866_1 in ipairs(arg_866_1.hits) do
				if __recovered_scope_0.var_0_401(iter_866_1.target) then
					iter_866_1.pose = __recovered_scope_0.var_0_399.enemyPose(arg_866_0, iter_866_1.target) or iter_866_1.pose
				end
			end
		end

		__recovered_scope_0.var_0_399.sweep(arg_866_0, arg_866_1, arg_866_2, arg_866_3)
		__recovered_scope_0.var_0_399.echo(arg_866_0, arg_866_1, arg_866_2, arg_866_3)

		if var_866_0 - arg_866_1.impactAt > __recovered_scope_0.var_0_399.LINGER then
			arg_866_1.finished = true
		end
	end
end

function __recovered_scope_0.var_0_399.endBattle(arg_867_0)
	for iter_867_0, iter_867_1 in ipairs(arg_867_0 and arg_867_0.allies or {}) do
		if __recovered_scope_0.var_0_399.matches(iter_867_1) and iter_867_1.skill.descent then
			__recovered_scope_0.var_0_399.finish(iter_867_1)
		end
	end

	for iter_867_2, iter_867_3 in ipairs(arg_867_0 and arg_867_0.vfx or {}) do
		if iter_867_3.kind == "rupturing_descent" then
			iter_867_3.finished = true
		end
	end
end

 __recovered_scope_0.var_0_408 = __recovered_scope_0.var_0_399

return {
	angel_basic = __recovered_scope_0.var_0_388,
	rupturing_descent = __recovered_scope_0.var_0_408,
	fallen_wings = __recovered_scope_0.var_0_392,
	heavens_judgment = __recovered_scope_0.var_0_397,
	prism_spear_basic = __recovered_scope_0.var_0_382,
	lance_extension = __recovered_scope_0.var_0_374,
	guardian_swordfall = __recovered_scope_0.var_0_353,
	salvation_arrow = __recovered_scope_0.var_0_362,
	flash_slash = __recovered_scope_0.var_0_345,
	reapers_dance = __recovered_scope_0.var_0_319,
	bramble_prison = __recovered_scope_0.var_0_323,
	dimensional_duel = __recovered_scope_0.var_0_335,
	shrink_ray = __recovered_scope_0.var_0_315,
	shadow_step = __recovered_scope_0.var_0_311,
	bone_mage_reserve = __recovered_scope_0.var_0_305,
	bone_spearman_basic = __recovered_scope_0.var_0_302,
	spellblade_vortex = __recovered_scope_0.var_0_180,
	arcane_collapse = __recovered_scope_0.var_0_186,
	ruin_tremor = __recovered_scope_0.var_0_193,
	arrow_rain = __recovered_scope_0.var_0_200,
	hollow_arrow = __recovered_scope_0.var_0_206,
	chain_spear = __recovered_scope_0.var_0_212,
	chain_snipe = __recovered_scope_0.var_0_221,
	rift_arsenal = __recovered_scope_0.var_0_237,
	spectral_rush = __recovered_scope_0.var_0_242,
	abyssal_ray = __recovered_scope_0.var_0_246,
	life_siphon = __recovered_scope_0.var_0_252,
	moonlit_memory = __recovered_scope_0.var_0_257,
	spell_echo = __recovered_scope_0.var_0_271,
	nightmare_flurry = __recovered_scope_0.var_0_278,
	passive_bar = function(arg_868_0)
		local var_868_0 = arg_868_0 and arg_868_0.skill and arg_868_0.skill.kind

		if var_868_0 == "VictorySignal" then
			return __recovered_scope_0.var_0_174.barState(arg_868_0)
		end

		if var_868_0 == "NightmareFlurry" then
			return true, true, __recovered_scope_0.var_0_278.barFill(arg_868_0)
		end

		if var_868_0 == "FlashSlash" then
			return true, true, __recovered_scope_0.var_0_345.barFill(arg_868_0)
		end

		if var_868_0 == "ShrinkRay" then
			return false, true, __recovered_scope_0.var_0_315.barFill(arg_868_0)
		end

		if var_868_0 == "SalvationArrow" then
			return true, true, __recovered_scope_0.var_0_362.barFill(arg_868_0)
		end

		if var_868_0 == "HolyWardAura" or var_868_0 == "ShadowHarvest" or var_868_0 == "RuinTremor" then
			return true, true, __recovered_scope_0.var_0_193.barFill(arg_868_0)
		end
	end,
	magnus_basic = __recovered_scope_0.var_0_299,
	debuffs = __recovered_scope_0.var_0_84,
	calculated_luck = __recovered_scope_0.var_0_292,
	frost_spike = __recovered_scope_0.var_0_288,
	condemning_strike = __recovered_scope_0.var_0_284,
	cavalry_attack = __recovered_scope_0.var_0_169,
	warrior_attack = __recovered_scope_0.var_0_156,
	summon_attack = __recovered_scope_0.var_0_143,
	corpse_slam = __recovered_scope_0.var_0_152,
	call_of_the_dead = __recovered_scope_0.var_0_139,
	duelist_attack = __recovered_scope_0.var_0_161,
	victory_signal = __recovered_scope_0.var_0_174,
	flame_call = __recovered_scope_0.var_0_133,
	cleansing_wave = __recovered_scope_0.var_0_129,
	spear_cyclone = __recovered_scope_0.var_0_125,
	crushing_counter = __recovered_scope_0.var_0_105,
	collision_drive = __recovered_scope_0.var_0_118,
	burst_thrust = __recovered_scope_0.var_0_97,
	timed_keg = __recovered_scope_0.var_0_90,
	suppressive_round = __recovered_scope_0.var_0_80,
	combustion_blast = __recovered_scope_0.var_0_72,
	guardian_oath = __recovered_scope_0.var_0_65,
	flame_eruption = __recovered_scope_0.var_0_60,
	holy_barrier = __recovered_scope_0.var_0_50,
	shadow_harvest = __recovered_scope_0.var_0_55,
	razorscale_elder = __recovered_scope_0.var_0_11,
	ferret_courier = __recovered_scope_0.var_0_23,
	trickster_charm = __recovered_scope_0.var_0_32,
	shrink_imprint = __recovered_scope_0.var_0_43,
	duelist_skill_targeting = __recovered_scope_0.var_0_46
}
