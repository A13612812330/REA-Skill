-- Recovered source: generated locals lifted into per-invocation tables.
local __recovered_scope_0 = {}
 __recovered_scope_0.var_0_0 = nil
 __recovered_scope_0.var_0_1 = {}
 __recovered_scope_0.var_0_2 = require("src.game.power")
 __recovered_scope_0.var_0_3 = 7
 __recovered_scope_0.var_0_4 = 1.2
 __recovered_scope_0.var_0_5 = 1
 __recovered_scope_0.var_0_6 = 6
 __recovered_scope_0.var_0_7 = 5
 __recovered_scope_0.var_0_8 = 0.12
 __recovered_scope_0.var_0_9 = __recovered_scope_0.var_0_6 * __recovered_scope_0.var_0_8

 function __recovered_scope_0.var_0_10(arg_1_0)
	return arg_1_0 and arg_1_0.alive and not arg_1_0.dying and (tonumber(arg_1_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_11(arg_2_0)
	for iter_2_0, iter_2_1 in pairs(arg_2_0 and arg_2_0.imprints or {}) do
		if iter_2_1 and iter_2_1.id == "timeless" then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_12(arg_3_0, arg_3_1)
	return arg_3_0 and (tonumber(arg_3_0.timeStopT) or 0) > 0 and not __recovered_scope_0.var_0_11(arg_3_1)
end

 function __recovered_scope_0.var_0_13(arg_4_0, arg_4_1, arg_4_2)
	if not arg_4_0 or not arg_4_0.anim then
		return
	end

	if arg_4_0.anim.name ~= arg_4_1 then
		arg_4_0.anim.name = arg_4_1
		arg_4_0.anim.frame = 1
		arg_4_0.anim.t = 0
	end

	if arg_4_2 ~= nil then
		arg_4_0.anim.frame = math.max(1, math.floor(tonumber(arg_4_2) or 1))
		arg_4_0.anim.t = 0
	end
end

 function __recovered_scope_0.var_0_14(arg_5_0, arg_5_1)
	if not arg_5_0 or not arg_5_1 then
		return
	end

	local var_5_0 = (tonumber(arg_5_1.x) or 0) - (tonumber(arg_5_0.x) or 0)

	if math.abs(var_5_0) > 0.05 then
		arg_5_0.facing = var_5_0 >= 0 and 1 or -1
	end
end

 function __recovered_scope_0.var_0_15(arg_6_0)
	return arg_6_0 and ((tonumber(arg_6_0.stunT) or 0) > 0 or (tonumber(arg_6_0.fearT) or 0) > 0 or (tonumber(arg_6_0.bindingT) or 0) > 0 or arg_6_0._kb ~= nil)
end

 function __recovered_scope_0.var_0_16(arg_7_0)
	if not arg_7_0 then
		return
	end

	local var_7_0 = {}

	for iter_7_0, iter_7_1 in pairs(arg_7_0) do
		if type(iter_7_0) == "string" and string.sub(iter_7_0, 1, 8) == "_pending" then
			var_7_0[#var_7_0 + 1] = iter_7_0
		end
	end

	for iter_7_2, iter_7_3 in ipairs(var_7_0) do
		arg_7_0[iter_7_3] = nil
	end

	arg_7_0.target = nil
	arg_7_0.pendingTarget = nil
	arg_7_0.shotPending = false
	arg_7_0._meleeLoop = false
	arg_7_0._casting = false
end

 function __recovered_scope_0.var_0_17(arg_8_0)
	return math.max(1, tonumber(arg_8_0 and (arg_8_0._bodyColW or arg_8_0._visWidth)) or 16)
end

 function __recovered_scope_0.var_0_18(arg_9_0, arg_9_1, arg_9_2)
	local var_9_0 = tonumber(arg_9_0 and arg_9_0.x) or 0
	local var_9_1 = tonumber(arg_9_0 and arg_9_0.y) or 0
	local var_9_2 = tonumber(arg_9_1 and arg_9_1.x) or 0
	local var_9_3 = tonumber(arg_9_2 and arg_9_2.approachSide)

	if var_9_3 ~= -1 and var_9_3 ~= 1 then
		var_9_3 = var_9_0 <= var_9_2 and 1 or -1

		if arg_9_2 then
			arg_9_2.approachSide = var_9_3
		end
	end

	local var_9_4 = math.max(0, tonumber(arg_9_0 and arg_9_0.succubusCharmFrontGap) or __recovered_scope_0.var_0_5)

	return var_9_0 + var_9_3 * ((__recovered_scope_0.var_0_17(arg_9_0) + __recovered_scope_0.var_0_17(arg_9_1)) * 0.5 + var_9_4), var_9_1, var_9_3
end

function __recovered_scope_0.var_0_1.matches(arg_10_0)
	if not arg_10_0 then
		return false
	end

	local var_10_0 = tostring(arg_10_0.kind or "")
	local var_10_1 = tostring(arg_10_0.skin or "")

	return var_10_0 == "Succubus" or var_10_0 == "서큐버스" or var_10_0 == "서큐버스 (Succubus)" or var_10_1 == "Succubus" or var_10_1 == "서큐버스 (Succubus)"
end

function __recovered_scope_0.var_0_1.currentPower(arg_11_0)
	if not arg_11_0 then
		return 0
	end

	if __recovered_scope_0.var_0_2 and __recovered_scope_0.var_0_2.combatPower then
		local var_11_0 = __recovered_scope_0.var_0_2.combatPower(arg_11_0)

		if tonumber(var_11_0) then
			return math.max(0, tonumber(var_11_0))
		end
	end

	return math.max(0, tonumber(arg_11_0.power or arg_11_0._powerRaw or arg_11_0.fixedPower) or 0)
end

function __recovered_scope_0.var_0_1.canCharm(arg_12_0, arg_12_1)
	return __recovered_scope_0.var_0_10(arg_12_0) and not arg_12_0.isUndyingSoul and not arg_12_0._venomMawSwallowed and not arg_12_0._caveBasiliskPetrified and not arg_12_0._oathHelmStone and not arg_12_0._wastelandPiperCharm and not arg_12_0._succubusCharm and (not arg_12_1 or not require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_12_1, arg_12_0))
end

function __recovered_scope_0.var_0_1.createWhipHit(arg_13_0, arg_13_1)
	if not __recovered_scope_0.var_0_1.matches(arg_13_0) or not arg_13_1 then
		return nil
	end

	return {
		anim = "attack",
		succubusWhip = true,
		triggerFrame = 5,
		target = arg_13_1,
		dmg = math.max(0, tonumber(arg_13_0.dmg) or 0)
	}
end

function __recovered_scope_0.var_0_1.applyWhipKnockback(arg_14_0, arg_14_1)
	if not __recovered_scope_0.var_0_1.matches(arg_14_0) or not __recovered_scope_0.var_0_10(arg_14_1) then
		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_14_0, arg_14_1) then
		return false
	end

	local var_14_0 = (tonumber(arg_14_1.x) or 0) - (tonumber(arg_14_0.x) or 0)
	local var_14_1

	if math.abs(var_14_0) > 0.05 then
		var_14_1 = var_14_0 >= 0 and 1 or -1
	else
		var_14_1 = (tonumber(arg_14_0.facing) or -1) >= 0 and 1 or -1
	end

	local var_14_2 = math.max(0, tonumber(arg_14_0.succubusWhipKnockbackSpeed) or 36)
	local var_14_3 = math.max(0.01, tonumber(arg_14_0.succubusWhipKnockbackDur) or 0.14)
	local var_14_4 = arg_14_1._kb

	arg_14_1._kb = {
		t = 0,
		vx = (tonumber(var_14_4 and var_14_4.vx) or 0) + var_14_1 * var_14_2,
		vy = tonumber(var_14_4 and var_14_4.vy) or 0,
		dur = math.max(var_14_3, tonumber(var_14_4 and var_14_4.dur) or 0)
	}

	return true
end

function __recovered_scope_0.var_0_1.findHighestPowerAlly(arg_15_0, arg_15_1)
	local var_15_0
	local var_15_1
	local var_15_2
	local var_15_3

	for iter_15_0, iter_15_1 in ipairs(arg_15_1 or {}) do
		if __recovered_scope_0.var_0_1.canCharm(iter_15_1, arg_15_0) then
			local var_15_4 = __recovered_scope_0.var_0_1.currentPower(iter_15_1)
			local var_15_5 = (tonumber(iter_15_1.x) or 0) - (tonumber(arg_15_0 and arg_15_0.x) or 0)
			local var_15_6 = (tonumber(iter_15_1.y) or 0) - (tonumber(arg_15_0 and arg_15_0.y) or 0)
			local var_15_7 = var_15_5 * var_15_5 + var_15_6 * var_15_6

			if not var_15_0 or var_15_1 < var_15_4 or var_15_4 == var_15_1 and var_15_7 < var_15_2 or var_15_4 == var_15_1 and var_15_7 == var_15_2 and iter_15_0 < var_15_3 then
				var_15_0 = iter_15_1
				var_15_1 = var_15_4
				var_15_2 = var_15_7
				var_15_3 = iter_15_0
			end
		end
	end

	return var_15_0, var_15_1 or 0
end

function __recovered_scope_0.var_0_1.releaseCharm(arg_16_0)
	local var_16_0 = arg_16_0 and arg_16_0._succubusCharm

	if not var_16_0 then
		return false
	end

	local var_16_1 = var_16_0.owner

	arg_16_0._succubusCharm = nil

	__recovered_scope_0.var_0_16(arg_16_0)

	arg_16_0._forceRetarget = true

	if not arg_16_0._wastelandPiperCharm and not arg_16_0._caveBasiliskPetrified and not arg_16_0._oathHelmStone and not arg_16_0._marshDriveAir then
		arg_16_0._suppressAttack = nil
	end

	if var_16_1 and var_16_1._succubusCharmedTarget == arg_16_0 then
		var_16_1._succubusCharmedTarget = nil
	end

	if __recovered_scope_0.var_0_10(arg_16_0) then
		__recovered_scope_0.var_0_13(arg_16_0, "idle")
	end

	return true
end

function __recovered_scope_0.var_0_1.applyCharm(arg_17_0, arg_17_1, arg_17_2)
	if not __recovered_scope_0.var_0_1.matches(arg_17_0) or not __recovered_scope_0.var_0_1.canCharm(arg_17_1, arg_17_0) then
		return false
	end

	if arg_17_0._succubusCharmedTarget then
		__recovered_scope_0.var_0_1.releaseCharm(arg_17_0._succubusCharmedTarget)
	end

	__recovered_scope_0.var_0_16(arg_17_1)

	arg_17_1._succubusCharm = {
		t = 0,
		owner = arg_17_0,
		duration = math.max(0.1, tonumber(arg_17_2) or __recovered_scope_0.var_0_4),
		approachSide = (tonumber(arg_17_1.x) or 0) >= (tonumber(arg_17_0.x) or 0) and 1 or -1
	}
	arg_17_1._suppressAttack = true
	arg_17_1.hpbarShowT = math.max(tonumber(arg_17_1.hpbarShowT) or 0, math.max(0.1, tonumber(arg_17_2) or __recovered_scope_0.var_0_4))
	arg_17_0._succubusCharmedTarget = arg_17_1

	require("src.game.combat").spitecap.onDebuff(arg_17_1, nil, "_succubusCharm")
	__recovered_scope_0.var_0_13(arg_17_1, "walk")

	return true
end

 function __recovered_scope_0.var_0_19(arg_18_0, arg_18_1)
	if not __recovered_scope_0.var_0_1.matches(arg_18_0) or not __recovered_scope_0.var_0_1.canCharm(arg_18_1, arg_18_0) then
		return false
	end

	__recovered_scope_0.var_0_16(arg_18_0)

	arg_18_0._succubusCharmState = {
		applied = false,
		t = 0,
		target = arg_18_1
	}
	arg_18_0._bossSkillBusy = true
	arg_18_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_14(arg_18_0, arg_18_1)
	__recovered_scope_0.var_0_13(arg_18_0, "attack2", 1)

	return true
end

 function __recovered_scope_0.var_0_20(arg_19_0)
	if not arg_19_0 then
		return
	end

	arg_19_0._succubusCharmState = nil
	arg_19_0._succubusCharmRecovery = nil
	arg_19_0._bossSkillBusy = nil
	arg_19_0._bossSkillManualAnim = nil

	__recovered_scope_0.var_0_16(arg_19_0)

	if __recovered_scope_0.var_0_10(arg_19_0) then
		__recovered_scope_0.var_0_13(arg_19_0, "idle", 1)
	end
end

function __recovered_scope_0.var_0_1.update(arg_20_0, arg_20_1, arg_20_2, arg_20_3, arg_20_4, arg_20_5)
	if not __recovered_scope_0.var_0_1.matches(arg_20_1) or not __recovered_scope_0.var_0_10(arg_20_1) then
		return false
	end

	local var_20_0 = math.max(0, tonumber(arg_20_2) or 0)
	local var_20_1 = math.max(0.1, tonumber(arg_20_1.succubusCharmCd) or __recovered_scope_0.var_0_3)

	arg_20_1._succubusCharmClock = tonumber(arg_20_1._succubusCharmClock) or 0
	arg_20_1._succubusCharmNext = tonumber(arg_20_1._succubusCharmNext) or math.max(0.1, tonumber(arg_20_1.succubusCharmFirstDelay) or var_20_1)

	if arg_20_5 then
		arg_20_1._succubusCharmClock = arg_20_1._succubusCharmClock + var_20_0
	end

	if arg_20_1._succubusCharmRecovery then
		arg_20_1._succubusCharmRecovery = nil
		arg_20_1._bossSkillBusy = nil
		arg_20_1._bossSkillManualAnim = nil

		return false
	end

	local var_20_2 = arg_20_1._succubusCharmState

	if var_20_2 then
		arg_20_1._bossSkillBusy = true
		arg_20_1._bossSkillManualAnim = true

		__recovered_scope_0.var_0_16(arg_20_1)

		if __recovered_scope_0.var_0_15(arg_20_1) then
			__recovered_scope_0.var_0_20(arg_20_1)

			return false
		end

		if arg_20_5 then
			var_20_2.t = (tonumber(var_20_2.t) or 0) + var_20_0

			local var_20_3 = math.min(__recovered_scope_0.var_0_6, math.max(1, math.floor(var_20_2.t / __recovered_scope_0.var_0_8 + 1e-06) + 1))
			local var_20_4 = var_20_2.target

			if __recovered_scope_0.var_0_1.canCharm(var_20_4, arg_20_1) then
				__recovered_scope_0.var_0_14(arg_20_1, var_20_4)
			end

			__recovered_scope_0.var_0_13(arg_20_1, "attack2", var_20_3)

			if not var_20_2.applied and var_20_3 >= __recovered_scope_0.var_0_7 then
				if not __recovered_scope_0.var_0_1.canCharm(var_20_4, arg_20_1) then
					var_20_4 = __recovered_scope_0.var_0_1.findHighestPowerAlly(arg_20_1, arg_20_0 and arg_20_0.allies)
					var_20_2.target = var_20_4
				end

				var_20_2.applied = true

				if var_20_4 then
					__recovered_scope_0.var_0_14(arg_20_1, var_20_4)
					__recovered_scope_0.var_0_1.applyCharm(arg_20_1, var_20_4, tonumber(arg_20_1.succubusCharmDur) or __recovered_scope_0.var_0_4)
				end
			end

			if var_20_2.t >= __recovered_scope_0.var_0_9 then
				arg_20_1._succubusCharmState = nil
				arg_20_1._succubusCharmRecovery = true
				arg_20_1._bossSkillBusy = true
				arg_20_1._bossSkillManualAnim = nil

				__recovered_scope_0.var_0_13(arg_20_1, "idle", 1)
			end
		end

		return true
	end

	arg_20_1._bossSkillBusy = nil
	arg_20_1._bossSkillManualAnim = nil

	if arg_20_5 and arg_20_1._succubusCharmClock >= arg_20_1._succubusCharmNext then
		local var_20_5 = __recovered_scope_0.var_0_1.findHighestPowerAlly(arg_20_1, arg_20_0 and arg_20_0.allies)

		if var_20_5 and __recovered_scope_0.var_0_19(arg_20_1, var_20_5) then
			arg_20_1._succubusCharmNext = arg_20_1._succubusCharmClock + var_20_1

			return true
		end

		arg_20_1._succubusCharmNext = arg_20_1._succubusCharmClock + var_20_1
	end

	return false
end

function __recovered_scope_0.var_0_1.updateWorld(arg_21_0, arg_21_1)
	if not arg_21_0 then
		return
	end

	local var_21_0 = math.max(0, tonumber(arg_21_1) or 0)

	for iter_21_0, iter_21_1 in ipairs(arg_21_0.allies or {}) do
		local var_21_1 = iter_21_1._succubusCharm

		if var_21_1 then
			local var_21_2 = var_21_1.owner

			if not __recovered_scope_0.var_0_10(iter_21_1) or not __recovered_scope_0.var_0_10(var_21_2) or not __recovered_scope_0.var_0_1.matches(var_21_2) or iter_21_1._venomMawSwallowed then
				__recovered_scope_0.var_0_1.releaseCharm(iter_21_1)
			elseif not __recovered_scope_0.var_0_12(arg_21_0, iter_21_1) then
				var_21_1.t = (tonumber(var_21_1.t) or 0) + var_21_0

				__recovered_scope_0.var_0_16(iter_21_1)

				iter_21_1._suppressAttack = true

				if var_21_1.t >= (tonumber(var_21_1.duration) or __recovered_scope_0.var_0_4) then
					__recovered_scope_0.var_0_1.releaseCharm(iter_21_1)
				else
					local var_21_3, var_21_4, var_21_5 = __recovered_scope_0.var_0_18(var_21_2, iter_21_1, var_21_1)
					local var_21_6 = var_21_3 - (tonumber(iter_21_1.x) or 0)
					local var_21_7 = var_21_4 - (tonumber(iter_21_1.y) or 0)
					local var_21_8 = math.sqrt(var_21_6 * var_21_6 + var_21_7 * var_21_7)

					if var_21_8 > 0.001 then
						local var_21_9 = math.max(0, tonumber(iter_21_1.speed) or 30)
						local var_21_10 = math.min(var_21_8, var_21_9 * var_21_0)

						iter_21_1.x = (tonumber(iter_21_1.x) or 0) + var_21_6 / var_21_8 * var_21_10
						iter_21_1.y = (tonumber(iter_21_1.y) or 0) + var_21_7 / var_21_8 * var_21_10
						iter_21_1.facing = var_21_5 < 0 and 1 or -1

						if var_21_8 <= var_21_10 + 0.001 then
							iter_21_1.x = var_21_3
							iter_21_1.y = var_21_4

							__recovered_scope_0.var_0_13(iter_21_1, "idle")
						else
							__recovered_scope_0.var_0_13(iter_21_1, "walk")
						end
					else
						iter_21_1.x = var_21_3
						iter_21_1.y = var_21_4
						iter_21_1.facing = var_21_5 < 0 and 1 or -1

						__recovered_scope_0.var_0_13(iter_21_1, "idle")
					end
				end
			end
		end
	end
end

function __recovered_scope_0.var_0_1.releaseOnDeath(arg_22_0)
	if not arg_22_0 then
		return
	end

	arg_22_0._succubusCharmState = nil
	arg_22_0._succubusCharmRecovery = nil
	arg_22_0._bossSkillBusy = nil
	arg_22_0._bossSkillManualAnim = nil

	if arg_22_0._succubusCharmedTarget then
		__recovered_scope_0.var_0_1.releaseCharm(arg_22_0._succubusCharmedTarget)
	end
end

__recovered_scope_0.var_0_1.constants = {
	INTERVAL = __recovered_scope_0.var_0_3,
	DURATION = __recovered_scope_0.var_0_4,
	FRONT_GAP = __recovered_scope_0.var_0_5,
	CHARM_ANIM_FRAMES = __recovered_scope_0.var_0_6,
	CHARM_TRIGGER_FRAME = __recovered_scope_0.var_0_7,
	CHARM_FRAME_DURATION = __recovered_scope_0.var_0_8
}

 __recovered_scope_0.var_0_21 = __recovered_scope_0.var_0_1
 __recovered_scope_0.var_0_22 = nil
 __recovered_scope_0.var_0_23 = {}
 __recovered_scope_0.var_0_24 = 6
 __recovered_scope_0.var_0_25 = 80
 __recovered_scope_0.var_0_26 = 1.5
 __recovered_scope_0.var_0_27 = 0.08
 __recovered_scope_0.var_0_28 = 0.85
 __recovered_scope_0.var_0_29 = 42
 __recovered_scope_0.var_0_30 = 0.08
 __recovered_scope_0.var_0_31 = 5

 function __recovered_scope_0.var_0_32(arg_23_0)
	return arg_23_0 and arg_23_0.alive and not arg_23_0.dying and (tonumber(arg_23_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_33(arg_24_0, arg_24_1)
	return __recovered_scope_0.var_0_32(arg_24_0) and not arg_24_0.isUndyingSoul and not arg_24_0._venomMawSwallowed and (not arg_24_1 or not require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_24_1, arg_24_0))
end

 function __recovered_scope_0.var_0_34(arg_25_0, arg_25_1)
	if not arg_25_0 or not arg_25_0.anim then
		return
	end

	arg_25_0.anim.name = "attack2"
	arg_25_0.anim.frame = math.max(1, math.floor(tonumber(arg_25_1) or 1))
	arg_25_0.anim.t = 0
end

 function __recovered_scope_0.var_0_35(arg_26_0)
	if not arg_26_0 then
		return
	end

	arg_26_0._pendingGoblinHit = nil
	arg_26_0._pendingOrcHit = nil
	arg_26_0._pendingHowlHit = nil
	arg_26_0._pendingJesterPrankHit = nil
	arg_26_0.shotPending = false
	arg_26_0.pendingTarget = nil
	arg_26_0.target = nil
	arg_26_0._meleeLoop = false
	arg_26_0._kb = nil
end

function __recovered_scope_0.var_0_23.matches(arg_27_0)
	if not arg_27_0 then
		return false
	end

	local var_27_0 = tostring(arg_27_0.kind or "")
	local var_27_1 = tostring(arg_27_0.skin or "")

	return var_27_0 == "Clawed Demon" or var_27_0 == "발톱 악마" or var_27_0 == "발톱 악마 (Clawed Demon)" or var_27_1 == "Clawed Demon" or var_27_1 == "발톱 악마" or var_27_1 == "발톱 악마 (Clawed Demon)"
end

 function __recovered_scope_0.var_0_36(arg_28_0, arg_28_1, arg_28_2)
	local var_28_0
	local var_28_1
	local var_28_2 = arg_28_2 * arg_28_2
	local var_28_3 = tonumber(arg_28_0 and arg_28_0.x) or 0
	local var_28_4 = tonumber(arg_28_0 and arg_28_0.y) or 0

	for iter_28_0, iter_28_1 in ipairs(arg_28_1 or {}) do
		if __recovered_scope_0.var_0_33(iter_28_1, arg_28_0) then
			local var_28_5 = (tonumber(iter_28_1.x) or 0) - var_28_3
			local var_28_6 = (tonumber(iter_28_1.y) or 0) - var_28_4
			local var_28_7 = var_28_5 * var_28_5 + var_28_6 * var_28_6

			if var_28_7 <= var_28_2 and (not var_28_1 or var_28_7 < var_28_1) then
				var_28_0 = iter_28_1
				var_28_1 = var_28_7
			end
		end
	end

	return var_28_0
end

 function __recovered_scope_0.var_0_37(arg_29_0, arg_29_1, arg_29_2)
	local var_29_0 = arg_29_0 and arg_29_0.area

	if not var_29_0 then
		return arg_29_1, arg_29_2
	end

	local var_29_1 = 16

	if tonumber(var_29_0.x) and tonumber(var_29_0.w) then
		arg_29_1 = math.max(var_29_0.x + var_29_1, math.min(var_29_0.x + var_29_0.w - var_29_1, arg_29_1))
	end

	if tonumber(var_29_0.y) and tonumber(var_29_0.h) then
		arg_29_2 = math.max(var_29_0.y + var_29_1, math.min(var_29_0.y + var_29_0.h - var_29_1, arg_29_2))
	end

	return arg_29_1, arg_29_2
end

 function __recovered_scope_0.var_0_38(arg_30_0, arg_30_1, arg_30_2)
	if not __recovered_scope_0.var_0_23.matches(arg_30_1) or not __recovered_scope_0.var_0_33(arg_30_2, arg_30_1) then
		return false
	end

	local var_30_0 = tonumber(arg_30_1.x) or 0
	local var_30_1 = tonumber(arg_30_1.y) or 0
	local var_30_2 = tonumber(arg_30_2.x) or var_30_0
	local var_30_3 = tonumber(arg_30_2.y) or var_30_1
	local var_30_4 = var_30_2 - var_30_0
	local var_30_5 = var_30_3 - var_30_1
	local var_30_6 = math.sqrt(var_30_4 * var_30_4 + var_30_5 * var_30_5)
	local var_30_7 = math.max(1, tonumber(arg_30_1.clawedLeapMaxDistance) or __recovered_scope_0.var_0_25)

	if var_30_7 < var_30_6 and var_30_6 > 0.001 then
		var_30_2 = var_30_0 + var_30_4 / var_30_6 * var_30_7
		var_30_3 = var_30_1 + var_30_5 / var_30_6 * var_30_7
	end

	local var_30_8, var_30_9 = __recovered_scope_0.var_0_37(arg_30_0, var_30_2, var_30_3)

	arg_30_1._clawedDemonLeap = {
		damaged = false,
		dustSpawned = false,
		t = 0,
		phase = "windup",
		target = arg_30_2,
		startX = var_30_0,
		startY = var_30_1,
		landingX = var_30_8,
		landingY = var_30_9
	}
	arg_30_1._clawedDemonLeapGroundX = var_30_0
	arg_30_1._clawedDemonLeapGroundY = var_30_1
	arg_30_1._bossSkillBusy = true
	arg_30_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_35(arg_30_1)

	if math.abs(var_30_8 - var_30_0) > 0.05 then
		arg_30_1.facing = var_30_0 <= var_30_8 and 1 or -1
	end

	__recovered_scope_0.var_0_34(arg_30_1, 1)

	return true
end

 function __recovered_scope_0.var_0_39(arg_31_0, arg_31_1, arg_31_2, arg_31_3)
	arg_31_1.x = tonumber(arg_31_2.landingX) or tonumber(arg_31_1.x) or 0
	arg_31_1.y = tonumber(arg_31_2.landingY) or tonumber(arg_31_1.y) or 0
	arg_31_1._clawedDemonLeapGroundX = arg_31_1.x
	arg_31_1._clawedDemonLeapGroundY = arg_31_1.y

	__recovered_scope_0.var_0_34(arg_31_1, 3)

	if not arg_31_2.dustSpawned then
		local var_31_0 = rawget(_G, "__slotSpawnBossLandingDust")

		if type(var_31_0) == "function" then
			var_31_0(arg_31_0, arg_31_1, arg_31_2.startX)
		end

		arg_31_2.dustSpawned = true
	end

	if not arg_31_2.damaged and type(arg_31_3) == "function" then
		local var_31_1 = arg_31_2.target

		if not __recovered_scope_0.var_0_33(var_31_1, arg_31_1) then
			var_31_1 = __recovered_scope_0.var_0_36(arg_31_1, arg_31_0 and arg_31_0.allies, math.max(1, tonumber(arg_31_1.clawedLeapMaxDistance) or __recovered_scope_0.var_0_25))
			arg_31_2.target = var_31_1
		end

		if __recovered_scope_0.var_0_33(var_31_1, arg_31_1) then
			local var_31_2 = math.max(0, tonumber(arg_31_1.clawedLeapDmgMul) or __recovered_scope_0.var_0_26)
			local var_31_3 = math.max(0, math.floor((tonumber(arg_31_1.dmg) or 0) * var_31_2 + 0.5))

			if var_31_3 > 0 then
				arg_31_3(var_31_1, var_31_3, arg_31_1, {
					skillBig = true
				})
			end
		end

		arg_31_2.damaged = true
	end
end

 function __recovered_scope_0.var_0_40(arg_32_0)
	arg_32_0._clawedDemonLeap = nil
	arg_32_0._clawedDemonLeapGroundX = nil
	arg_32_0._clawedDemonLeapGroundY = nil
	arg_32_0._bossSkillBusy = nil
	arg_32_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_32(arg_32_0) and arg_32_0.anim then
		arg_32_0.anim.name = "idle"
		arg_32_0.anim.frame = 1
		arg_32_0.anim.t = 0
	end
end

function __recovered_scope_0.var_0_23.update(arg_33_0, arg_33_1, arg_33_2, arg_33_3, arg_33_4, arg_33_5)
	if not __recovered_scope_0.var_0_23.matches(arg_33_1) or not __recovered_scope_0.var_0_32(arg_33_1) then
		return false
	end

	local var_33_0 = math.max(0, tonumber(arg_33_2) or 0)
	local var_33_1 = math.max(0.1, tonumber(arg_33_1.clawedLeapCd) or __recovered_scope_0.var_0_24)

	arg_33_1._clawedLeapClock = tonumber(arg_33_1._clawedLeapClock) or 0
	arg_33_1._clawedLeapNext = tonumber(arg_33_1._clawedLeapNext) or math.max(0.1, tonumber(arg_33_1.clawedLeapFirstDelay) or var_33_1)

	if arg_33_5 then
		arg_33_1._clawedLeapClock = arg_33_1._clawedLeapClock + var_33_0
	end

	local var_33_2 = arg_33_1._clawedDemonLeap

	if var_33_2 then
		arg_33_1._bossSkillBusy = true
		arg_33_1._bossSkillManualAnim = true

		__recovered_scope_0.var_0_35(arg_33_1)

		if not arg_33_5 then
			return true
		end

		if var_33_2.phase == "windup" then
			var_33_2.t = (tonumber(var_33_2.t) or 0) + var_33_0
			arg_33_1.x = tonumber(var_33_2.startX) or arg_33_1.x
			arg_33_1.y = tonumber(var_33_2.startY) or arg_33_1.y
			arg_33_1._clawedDemonLeapGroundX = arg_33_1.x
			arg_33_1._clawedDemonLeapGroundY = arg_33_1.y

			__recovered_scope_0.var_0_34(arg_33_1, 1)

			if math.max(0.01, tonumber(arg_33_1.clawedLeapWindupDur) or __recovered_scope_0.var_0_27) <= var_33_2.t then
				var_33_2.phase = "flight"
				var_33_2.t = 0

				__recovered_scope_0.var_0_34(arg_33_1, 2)
			end

			return true
		end

		if var_33_2.phase == "flight" then
			var_33_2.t = (tonumber(var_33_2.t) or 0) + var_33_0

			local var_33_3 = math.max(0.05, tonumber(arg_33_1.clawedLeapFlightDur) or __recovered_scope_0.var_0_28)
			local var_33_4 = math.max(0, tonumber(arg_33_1.clawedLeapHeight) or __recovered_scope_0.var_0_29)
			local var_33_5 = tonumber(var_33_2.startX) or tonumber(arg_33_1.x) or 0
			local var_33_6 = tonumber(var_33_2.startY) or tonumber(arg_33_1.y) or 0
			local var_33_7 = tonumber(var_33_2.landingX) or var_33_5
			local var_33_8 = tonumber(var_33_2.landingY) or var_33_6
			local var_33_9 = math.max(0, math.min(1, var_33_2.t / var_33_3))

			arg_33_1._clawedDemonLeapGroundX = var_33_5 + (var_33_7 - var_33_5) * var_33_9
			arg_33_1._clawedDemonLeapGroundY = var_33_6 + (var_33_8 - var_33_6) * var_33_9

			local var_33_10 = rawget(_G, "__slotBossFixedLandingFlightPosition")

			if type(var_33_10) == "function" then
				arg_33_1.x, arg_33_1.y = var_33_10(var_33_5, var_33_6, var_33_7, var_33_8, var_33_2.t, var_33_3, var_33_4)
			else
				arg_33_1.x = var_33_5 + (var_33_7 - var_33_5) * var_33_9
				arg_33_1.y = var_33_6 + (var_33_8 - var_33_6) * var_33_9 - math.sin(var_33_9 * math.pi) * var_33_4
			end

			__recovered_scope_0.var_0_34(arg_33_1, 2)

			if var_33_9 >= 1 then
				__recovered_scope_0.var_0_39(arg_33_0, arg_33_1, var_33_2, arg_33_3)

				var_33_2.phase = "recovery"
				var_33_2.t = 0
			end

			return true
		end

		var_33_2.t = (tonumber(var_33_2.t) or 0) + var_33_0

		local var_33_11 = math.max(0.01, tonumber(arg_33_1.clawedLeapFrameDur) or __recovered_scope_0.var_0_30)
		local var_33_12 = math.min(__recovered_scope_0.var_0_31, 3 + math.floor(var_33_2.t / var_33_11))

		__recovered_scope_0.var_0_34(arg_33_1, var_33_12)

		if var_33_2.t >= var_33_11 * 3 then
			__recovered_scope_0.var_0_40(arg_33_1)
		end

		return true
	end

	arg_33_1._bossSkillBusy = nil
	arg_33_1._bossSkillManualAnim = nil

	if arg_33_5 and arg_33_1._clawedLeapClock >= arg_33_1._clawedLeapNext then
		local var_33_13 = math.max(1, tonumber(arg_33_1.clawedLeapMaxDistance) or __recovered_scope_0.var_0_25)
		local var_33_14 = __recovered_scope_0.var_0_36(arg_33_1, arg_33_0 and arg_33_0.allies, var_33_13)

		if var_33_14 and __recovered_scope_0.var_0_38(arg_33_0, arg_33_1, var_33_14) then
			arg_33_1._clawedLeapNext = arg_33_1._clawedLeapClock + var_33_1

			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_23.releaseOnDeath(arg_34_0)
	if not arg_34_0 then
		return
	end

	local var_34_0 = arg_34_0._clawedDemonLeap

	if var_34_0 then
		arg_34_0.x = tonumber(arg_34_0._clawedDemonLeapGroundX) or tonumber(var_34_0.landingX) or arg_34_0.x
		arg_34_0.y = tonumber(arg_34_0._clawedDemonLeapGroundY) or tonumber(var_34_0.landingY) or arg_34_0.y
	end

	arg_34_0._clawedDemonLeap = nil
	arg_34_0._clawedDemonLeapGroundX = nil
	arg_34_0._clawedDemonLeapGroundY = nil
	arg_34_0._bossSkillBusy = nil
	arg_34_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_23.constants = {
	COOLDOWN = __recovered_scope_0.var_0_24,
	MAX_DISTANCE = __recovered_scope_0.var_0_25,
	DAMAGE_MULTIPLIER = __recovered_scope_0.var_0_26,
	WINDUP_DURATION = __recovered_scope_0.var_0_27,
	FLIGHT_DURATION = __recovered_scope_0.var_0_28,
	FLIGHT_HEIGHT = __recovered_scope_0.var_0_29,
	FRAME_DURATION = __recovered_scope_0.var_0_30
}

 __recovered_scope_0.var_0_41 = __recovered_scope_0.var_0_23
 __recovered_scope_0.var_0_42 = nil
 __recovered_scope_0.var_0_43 = {}
 __recovered_scope_0.var_0_44 = 5
 __recovered_scope_0.var_0_45 = 35
 __recovered_scope_0.var_0_46 = 2
 __recovered_scope_0.var_0_47 = 38
 __recovered_scope_0.var_0_48 = 0.35
 __recovered_scope_0.var_0_49 = 0.08
 __recovered_scope_0.var_0_50 = 14
 __recovered_scope_0.var_0_51 = 7
 __recovered_scope_0.var_0_52 = 2
 __recovered_scope_0.var_0_53 = 4
 __recovered_scope_0.var_0_54 = {
	["악동 임프"] = true,
	["Rascal Imp"] = true,
	["불씨 임프 (Ember Imp)"] = true,
	["불씨 임프"] = true,
	["Ember Imp"] = true,
	["임프 (Imp)"] = true,
	임프 = true,
	Imp = true,
	Succubus = true,
	["서큐버스 (Succubus)"] = true,
	["Demon Lord"] = true,
	마왕 = true,
	["마왕 (Demon Lord)"] = true,
	["발톱 악마 (Clawed Demon)"] = true,
	["발톱 악마"] = true,
	["Clawed Demon"] = true,
	서큐버스 = true,
	["지옥 집행관 (Hell Enforcer)"] = true,
	["지옥 집행관"] = true,
	["Hell Enforcer"] = true,
	["지옥 마녀 (Hell Witch)"] = true,
	["지옥 마녀"] = true,
	["Hell Witch"] = true,
	["지옥 파수꾼 (Hell Warden)"] = true,
	["지옥 파수꾼"] = true,
	["Hell Warden"] = true,
	["상급 악마 (High Demon)"] = true,
	["상급 악마"] = true,
	["High Demon"] = true,
	["악동 임프 (Rascal Imp)"] = true
}

 function __recovered_scope_0.var_0_55(arg_35_0)
	return arg_35_0 and arg_35_0.alive and not arg_35_0.dying and (tonumber(arg_35_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_56(arg_36_0, arg_36_1)
	if not arg_36_0 then
		return false
	end

	return arg_36_1[tostring(arg_36_0.kind or "")] or arg_36_1[tostring(arg_36_0.skin or "")]
end

 function __recovered_scope_0.var_0_57(arg_37_0)
	return __recovered_scope_0.var_0_55(arg_37_0) and __recovered_scope_0.var_0_56(arg_37_0, __recovered_scope_0.var_0_54) and not arg_37_0._tricksterCharm
end

 function __recovered_scope_0.var_0_58(arg_38_0, arg_38_1)
	if not arg_38_0 or not arg_38_0.anim then
		return
	end

	arg_38_0.anim.name = "attack"
	arg_38_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_51, math.floor(tonumber(arg_38_1) or 1)))
	arg_38_0.anim.t = 0
end

 function __recovered_scope_0.var_0_59(arg_39_0)
	if not arg_39_0 then
		return
	end

	arg_39_0._pendingGoblinHit = nil
	arg_39_0._pendingOrcHit = nil
	arg_39_0._pendingHowlHit = nil
	arg_39_0._pendingJesterPrankHit = nil
	arg_39_0.shotPending = false
	arg_39_0.pendingTarget = nil
	arg_39_0.target = nil
	arg_39_0._meleeLoop = false
	arg_39_0._kb = nil
end

 function __recovered_scope_0.var_0_60(arg_40_0, arg_40_1, arg_40_2)
	local var_40_0 = {}
	local var_40_1 = tonumber(arg_40_1 and arg_40_1.x) or 0
	local var_40_2 = tonumber(arg_40_1 and arg_40_1.y) or 0
	local var_40_3 = arg_40_2 * arg_40_2

	for iter_40_0, iter_40_1 in ipairs(arg_40_0 and arg_40_0.enemies or {}) do
		if iter_40_1 ~= arg_40_1 and __recovered_scope_0.var_0_57(iter_40_1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_40_0, arg_40_1, iter_40_1) then
			local var_40_4 = (tonumber(iter_40_1.x) or 0) - var_40_1
			local var_40_5 = (tonumber(iter_40_1.y) or 0) - var_40_2
			local var_40_6 = var_40_4 * var_40_4 + var_40_5 * var_40_5

			if var_40_6 <= var_40_3 then
				var_40_0[#var_40_0 + 1] = {
					unit = iter_40_1,
					distanceSq = var_40_6
				}
			end
		end
	end

	table.sort(var_40_0, function(arg_41_0, arg_41_1)
		return arg_41_0.distanceSq < arg_41_1.distanceSq
	end)

	return var_40_0
end

 function __recovered_scope_0.var_0_61(arg_42_0, arg_42_1)
	local var_42_0 = math.max(1, tonumber(arg_42_1.highDemonDriveRadius) or __recovered_scope_0.var_0_45)
	local var_42_1 = math.max(0, math.floor(tonumber(arg_42_1.highDemonDriveMaxTargets) or __recovered_scope_0.var_0_46))
	local var_42_2 = math.max(0, tonumber(arg_42_1.highDemonDriveDistance) or __recovered_scope_0.var_0_47)
	local var_42_3 = math.max(0.05, tonumber(arg_42_1.highDemonDrivePushDur) or __recovered_scope_0.var_0_48)
	local var_42_4 = 6
	local var_42_5 = (1 - math.exp(-var_42_4 * var_42_3)) / var_42_4
	local var_42_6 = var_42_5 > 0 and var_42_2 / var_42_5 or 0
	local var_42_7 = __recovered_scope_0.var_0_60(arg_42_0, arg_42_1, var_42_0)
	local var_42_8 = 0

	for iter_42_0 = 1, math.min(var_42_1, #var_42_7) do
		local var_42_9 = var_42_7[iter_42_0].unit
		local var_42_10 = (tonumber(var_42_9.facing) or -1) >= 0 and 1 or -1

		var_42_9._kb = {
			t = 0,
			vy = 0,
			vx = var_42_10 * var_42_6,
			dur = var_42_3
		}
		var_42_8 = var_42_8 + 1
	end

	return var_42_8
end

 function __recovered_scope_0.var_0_62(arg_43_0)
	local var_43_0 = tonumber(arg_43_0.x) or 0
	local var_43_1 = tonumber(arg_43_0.y) or 0

	arg_43_0._highDemonDrive = {
		landed = false,
		airborne = false,
		dustSpawned = false,
		t = 0,
		groundX = var_43_0,
		groundY = var_43_1
	}
	arg_43_0._highDemonDriveGroundX = var_43_0
	arg_43_0._highDemonDriveGroundY = var_43_1
	arg_43_0._bossSkillBusy = true
	arg_43_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_59(arg_43_0)
	__recovered_scope_0.var_0_58(arg_43_0, 1)
end

 function __recovered_scope_0.var_0_63(arg_44_0, arg_44_1, arg_44_2)
	arg_44_1.x = tonumber(arg_44_2.groundX) or arg_44_1.x
	arg_44_1.y = tonumber(arg_44_2.groundY) or arg_44_1.y
	arg_44_1._highDemonDriveGroundX = arg_44_1.x
	arg_44_1._highDemonDriveGroundY = arg_44_1.y
	arg_44_2.airborne = false

	if arg_44_2.landed then
		return
	end

	arg_44_2.landed = true
	arg_44_2.landingT = tonumber(arg_44_2.t) or 0
	arg_44_2.pushed = __recovered_scope_0.var_0_61(arg_44_0, arg_44_1)

	if not arg_44_2.dustSpawned then
		local var_44_0 = rawget(_G, "__slotSpawnBossLandingDust")

		if type(var_44_0) == "function" then
			var_44_0(arg_44_0, arg_44_1, arg_44_2.groundX)
		end

		arg_44_2.dustSpawned = true
	end

	if arg_44_0 then
		arg_44_0.hitStopT = math.max(tonumber(arg_44_0.hitStopT) or 0, 0.05)
		arg_44_0.cameraShake = {
			dur = 0.13,
			ampY = 1.6,
			t = 0
		}
	end
end

 function __recovered_scope_0.var_0_64(arg_45_0)
	local var_45_0 = arg_45_0 and arg_45_0._highDemonDrive

	if var_45_0 then
		arg_45_0.x = tonumber(var_45_0.groundX) or arg_45_0.x
		arg_45_0.y = tonumber(var_45_0.groundY) or arg_45_0.y
	end

	arg_45_0._highDemonDrive = nil
	arg_45_0._highDemonDriveGroundX = nil
	arg_45_0._highDemonDriveGroundY = nil
	arg_45_0._bossSkillBusy = nil
	arg_45_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_55(arg_45_0) and arg_45_0.anim then
		arg_45_0.anim.name = "idle"
		arg_45_0.anim.frame = 1
		arg_45_0.anim.t = 0
	end
end

function __recovered_scope_0.var_0_43.matches(arg_46_0)
	if not arg_46_0 then
		return false
	end

	local var_46_0 = tostring(arg_46_0.kind or "")
	local var_46_1 = tostring(arg_46_0.skin or "")

	return var_46_0 == "High Demon" or var_46_0 == "상급 악마" or var_46_0 == "상급 악마 (High Demon)" or var_46_1 == "High Demon" or var_46_1 == "상급 악마" or var_46_1 == "상급 악마 (High Demon)"
end

function __recovered_scope_0.var_0_43.update(arg_47_0, arg_47_1, arg_47_2, arg_47_3, arg_47_4, arg_47_5)
	if not __recovered_scope_0.var_0_43.matches(arg_47_1) or not __recovered_scope_0.var_0_55(arg_47_1) then
		return false
	end

	local var_47_0 = math.max(0, tonumber(arg_47_2) or 0)
	local var_47_1 = math.max(0.1, tonumber(arg_47_1.highDemonDriveCd) or __recovered_scope_0.var_0_44)

	arg_47_1._highDemonDriveClock = tonumber(arg_47_1._highDemonDriveClock) or 0
	arg_47_1._highDemonDriveNext = tonumber(arg_47_1._highDemonDriveNext) or math.max(0.1, tonumber(arg_47_1.highDemonDriveFirstDelay) or var_47_1)

	if arg_47_5 then
		arg_47_1._highDemonDriveClock = arg_47_1._highDemonDriveClock + var_47_0
	end

	local var_47_2 = arg_47_1._highDemonDrive

	if not var_47_2 then
		arg_47_1._bossSkillBusy = nil
		arg_47_1._bossSkillManualAnim = nil

		if arg_47_5 and arg_47_1._highDemonDriveClock >= arg_47_1._highDemonDriveNext then
			__recovered_scope_0.var_0_62(arg_47_1)

			arg_47_1._highDemonDriveNext = arg_47_1._highDemonDriveClock + var_47_1

			return true
		end

		return false
	end

	arg_47_1._bossSkillBusy = true
	arg_47_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_59(arg_47_1)

	if not arg_47_5 then
		return true
	end

	var_47_2.t = (tonumber(var_47_2.t) or 0) + var_47_0

	local var_47_3 = math.max(0.01, tonumber(arg_47_1.highDemonDriveFrameDur) or __recovered_scope_0.var_0_49)
	local var_47_4 = math.min(__recovered_scope_0.var_0_51, 1 + math.floor(var_47_2.t / var_47_3 + 1e-06))
	local var_47_5 = var_47_3 * (__recovered_scope_0.var_0_52 - 1)
	local var_47_6 = var_47_3 * (__recovered_scope_0.var_0_53 - 1)

	if var_47_5 <= var_47_2.t and var_47_6 > var_47_2.t then
		local var_47_7 = math.max(0, math.min(1, (var_47_2.t - var_47_5) / math.max(0.01, var_47_6 - var_47_5)))
		local var_47_8 = math.max(0, tonumber(arg_47_1.highDemonDriveJumpHeight) or __recovered_scope_0.var_0_50)

		var_47_2.airborne = true
		arg_47_1.x = tonumber(var_47_2.groundX) or arg_47_1.x
		arg_47_1.y = (tonumber(var_47_2.groundY) or arg_47_1.y) - math.sin(var_47_7 * math.pi) * var_47_8
	elseif var_47_6 <= var_47_2.t then
		__recovered_scope_0.var_0_63(arg_47_0, arg_47_1, var_47_2)
	else
		arg_47_1.x = tonumber(var_47_2.groundX) or arg_47_1.x
		arg_47_1.y = tonumber(var_47_2.groundY) or arg_47_1.y
	end

	__recovered_scope_0.var_0_58(arg_47_1, var_47_4)

	if var_47_2.t >= var_47_3 * __recovered_scope_0.var_0_51 then
		__recovered_scope_0.var_0_64(arg_47_1)
	end

	return true
end

function __recovered_scope_0.var_0_43.releaseOnDeath(arg_48_0)
	if not arg_48_0 then
		return
	end

	__recovered_scope_0.var_0_64(arg_48_0)
end

function __recovered_scope_0.var_0_43.drawAbove(arg_49_0)
	if not arg_49_0 or not love or not love.graphics then
		return
	end

	local var_49_0 = love.graphics
	local var_49_1, var_49_2, var_49_3, var_49_4 = var_49_0.getColor()
	local var_49_5, var_49_6 = var_49_0.getBlendMode()

	var_49_0.setBlendMode("add", "alphamultiply")

	for iter_49_0, iter_49_1 in ipairs(arg_49_0.enemies or {}) do
		local var_49_7 = iter_49_1._highDemonDrive

		if var_49_7 and __recovered_scope_0.var_0_55(iter_49_1) then
			local var_49_8 = tonumber(var_49_7.t) or 0
			local var_49_9 = 0.55 + 0.35 * math.sin(var_49_8 * 28)^2
			local var_49_10 = math.floor((tonumber(iter_49_1.x) or 0) + 0.5)
			local var_49_11 = math.floor((tonumber(iter_49_1.y) or 0) - 10 + 0.5)

			var_49_0.setColor(0.5647058823529412, 0.06274509803921569, 0, var_49_9)

			for iter_49_2 = 1, 4 do
				local var_49_12 = var_49_8 * 5 + iter_49_2 * math.pi * 0.5
				local var_49_13 = 10 + 3 * math.sin(var_49_8 * 7 + iter_49_2)
				local var_49_14 = math.floor(var_49_10 + math.cos(var_49_12) * var_49_13 + 0.5)
				local var_49_15 = math.floor(var_49_11 + math.sin(var_49_12) * var_49_13 * 0.65 + 0.5)

				var_49_0.rectangle("fill", var_49_14 - 3, var_49_15, 7, 1)
				var_49_0.rectangle("fill", var_49_14, var_49_15 - 3, 1, 7)
				var_49_0.setColor(1, 0.28, 0.12, var_49_9)
				var_49_0.points(var_49_14, var_49_15)
				var_49_0.setColor(0.5647058823529412, 0.06274509803921569, 0, var_49_9)
			end

			if var_49_7.landed and var_49_7.landingT then
				local var_49_16 = var_49_8 - var_49_7.landingT

				if var_49_16 >= 0 and var_49_16 <= 0.24 then
					local var_49_17 = 7 + var_49_16 * 70
					local var_49_18 = 1 - var_49_16 / 0.24
					local var_49_19 = tonumber(var_49_7.groundY) or tonumber(iter_49_1.y) or 0

					var_49_0.setColor(0.5647058823529412, 0.06274509803921569, 0, var_49_18 * 0.75)
					var_49_0.rectangle("fill", var_49_10 - var_49_17, var_49_19 + 15, var_49_17 * 0.7, 1)
					var_49_0.rectangle("fill", var_49_10 + var_49_17 * 0.3, var_49_19 + 15, var_49_17 * 0.7, 1)
				end
			end
		end
	end

	var_49_0.setBlendMode(var_49_5, var_49_6)
	var_49_0.setColor(var_49_1, var_49_2, var_49_3, var_49_4)
end

__recovered_scope_0.var_0_43.constants = {
	COOLDOWN = __recovered_scope_0.var_0_44,
	RADIUS = __recovered_scope_0.var_0_45,
	MAX_TARGETS = __recovered_scope_0.var_0_46,
	PUSH_DISTANCE = __recovered_scope_0.var_0_47,
	PUSH_DURATION = __recovered_scope_0.var_0_48,
	FRAME_DURATION = __recovered_scope_0.var_0_49,
	JUMP_HEIGHT = __recovered_scope_0.var_0_50,
	TAKEOFF_FRAME = __recovered_scope_0.var_0_52,
	LANDING_FRAME = __recovered_scope_0.var_0_53
}

 __recovered_scope_0.var_0_65 = __recovered_scope_0.var_0_43
 __recovered_scope_0.var_0_66 = nil
 __recovered_scope_0.var_0_67 = {}
 __recovered_scope_0.var_0_68 = 3
 __recovered_scope_0.var_0_69 = 6
 __recovered_scope_0.var_0_70 = 0.8
 __recovered_scope_0.var_0_71 = 0.08
 __recovered_scope_0.var_0_72 = 0.18
 __recovered_scope_0.var_0_73 = 0.3
 __recovered_scope_0.var_0_74 = "attack2"
 __recovered_scope_0.var_0_75 = 5
 __recovered_scope_0.var_0_76 = 7

 function __recovered_scope_0.var_0_77(arg_50_0)
	return arg_50_0 and arg_50_0.alive and not arg_50_0.dying and (tonumber(arg_50_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_78(arg_51_0, arg_51_1)
	if not arg_51_0 or not arg_51_0.anim then
		return
	end

	arg_51_0.anim.name = __recovered_scope_0.var_0_74
	arg_51_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_76, math.floor(tonumber(arg_51_1) or 1)))
	arg_51_0.anim.t = 0
end

 function __recovered_scope_0.var_0_79(arg_52_0)
	if not arg_52_0 then
		return
	end

	arg_52_0._pendingGoblinHit = nil
	arg_52_0._pendingOrcHit = nil
	arg_52_0._pendingHowlHit = nil
	arg_52_0._pendingJesterPrankHit = nil
	arg_52_0.shotPending = false
	arg_52_0.pendingTarget = nil
	arg_52_0.target = nil
	arg_52_0._meleeLoop = false
end

 function __recovered_scope_0.var_0_80(arg_53_0, arg_53_1)
	local var_53_0 = require("src.game.unit_abilities").dimensional_duel

	for iter_53_0, iter_53_1 in ipairs(arg_53_0._hellWardenBlackouts or {}) do
		if __recovered_scope_0.var_0_77(iter_53_1.owner) and (tonumber(iter_53_1.t) or 0) > 0 and not var_53_0.separated(arg_53_0, iter_53_1.owner, arg_53_1) then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_81(arg_54_0)
	if not arg_54_0 then
		return
	end

	local var_54_0 = (tonumber(arg_54_0._hellWardenBlackoutT) or 0) > 0

	for iter_54_0, iter_54_1 in ipairs(arg_54_0.allies or {}) do
		local var_54_1 = var_54_0 and __recovered_scope_0.var_0_80(arg_54_0, iter_54_1)

		if var_54_1 and not iter_54_1._hellWardenBlackoutBlocked then
			require("src.game.combat").spitecap.onDebuff(iter_54_1, arg_54_0, "_hellWardenBlackoutBlocked")
		end

		iter_54_1._hellWardenBlackoutBlocked = var_54_1 or nil
	end
end

 function __recovered_scope_0.var_0_82(arg_55_0)
	if not arg_55_0 then
		return
	end

	local var_55_0 = 0

	for iter_55_0, iter_55_1 in ipairs(arg_55_0._hellWardenBlackouts or {}) do
		if __recovered_scope_0.var_0_77(iter_55_1.owner) then
			var_55_0 = math.max(var_55_0, tonumber(iter_55_1.t) or 0)
		end
	end

	arg_55_0._hellWardenBlackoutT = var_55_0 > 0 and var_55_0 or nil

	__recovered_scope_0.var_0_81(arg_55_0)
end

 function __recovered_scope_0.var_0_83(arg_56_0, arg_56_1)
	if not arg_56_0 or not __recovered_scope_0.var_0_77(arg_56_1) then
		return false
	end

	local var_56_0 = math.max(0.05, tonumber(arg_56_1.hellWardenBlackoutDur) or __recovered_scope_0.var_0_70)

	arg_56_0._hellWardenBlackouts = arg_56_0._hellWardenBlackouts or {}

	for iter_56_0 = #arg_56_0._hellWardenBlackouts, 1, -1 do
		if arg_56_0._hellWardenBlackouts[iter_56_0].owner == arg_56_1 then
			table.remove(arg_56_0._hellWardenBlackouts, iter_56_0)
		end
	end

	arg_56_0._hellWardenBlackouts[#arg_56_0._hellWardenBlackouts + 1] = {
		fresh = true,
		owner = arg_56_1,
		t = var_56_0
	}
	arg_56_0._hellWardenBlackoutT = math.max(tonumber(arg_56_0._hellWardenBlackoutT) or 0, var_56_0)
	arg_56_1._hellWardenBlackoutBattlefield = arg_56_0

	__recovered_scope_0.var_0_81(arg_56_0)

	return true
end

 function __recovered_scope_0.var_0_84(arg_57_0, arg_57_1)
	arg_57_1._hellWardenBlackoutCast = {
		blackoutApplied = false,
		t = 0
	}
	arg_57_1._bossSkillBusy = true
	arg_57_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_79(arg_57_1)
	__recovered_scope_0.var_0_78(arg_57_1, 1)
end

 function __recovered_scope_0.var_0_85(arg_58_0)
	arg_58_0._hellWardenBlackoutCast = nil
	arg_58_0._bossSkillBusy = nil
	arg_58_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_77(arg_58_0) and arg_58_0.anim then
		arg_58_0.anim.name = "walk"
		arg_58_0.anim.frame = 1
		arg_58_0.anim.t = 0
	end
end

function __recovered_scope_0.var_0_67.matches(arg_59_0)
	if not arg_59_0 then
		return false
	end

	local var_59_0 = tostring(arg_59_0.kind or "")
	local var_59_1 = tostring(arg_59_0.skin or "")

	return var_59_0 == "Hell Warden" or var_59_0 == "지옥 파수꾼" or var_59_0 == "지옥 파수꾼 (Hell Warden)" or var_59_1 == "Hell Warden" or var_59_1 == "지옥 파수꾼" or var_59_1 == "지옥 파수꾼 (Hell Warden)"
end

function __recovered_scope_0.var_0_67.update(arg_60_0, arg_60_1, arg_60_2, arg_60_3, arg_60_4, arg_60_5)
	if not __recovered_scope_0.var_0_67.matches(arg_60_1) or not __recovered_scope_0.var_0_77(arg_60_1) then
		return false
	end

	local var_60_0 = math.max(0, tonumber(arg_60_2) or 0)
	local var_60_1 = math.max(0.1, tonumber(arg_60_1.hellWardenBlackoutCd) or __recovered_scope_0.var_0_69)

	arg_60_1._hellWardenBlackoutClock = tonumber(arg_60_1._hellWardenBlackoutClock) or 0
	arg_60_1._hellWardenBlackoutNext = tonumber(arg_60_1._hellWardenBlackoutNext) or math.max(0.1, tonumber(arg_60_1.hellWardenBlackoutFirstDelay) or __recovered_scope_0.var_0_68)

	if arg_60_5 then
		arg_60_1._hellWardenBlackoutClock = arg_60_1._hellWardenBlackoutClock + var_60_0
	end

	local var_60_2 = arg_60_1._hellWardenBlackoutCast

	if not var_60_2 then
		arg_60_1._bossSkillBusy = nil
		arg_60_1._bossSkillManualAnim = nil

		if arg_60_5 and arg_60_1._hellWardenBlackoutClock >= arg_60_1._hellWardenBlackoutNext then
			__recovered_scope_0.var_0_84(arg_60_0, arg_60_1)

			arg_60_1._hellWardenBlackoutNext = arg_60_1._hellWardenBlackoutClock + var_60_1

			return true
		end

		return false
	end

	arg_60_1._bossSkillBusy = true
	arg_60_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_79(arg_60_1)

	if not arg_60_5 then
		return true
	end

	var_60_2.t = (tonumber(var_60_2.t) or 0) + var_60_0

	local var_60_3 = math.max(0.01, tonumber(arg_60_1.hellWardenBlackoutFrameDur) or __recovered_scope_0.var_0_71)
	local var_60_4 = math.min(__recovered_scope_0.var_0_76, 1 + math.floor(var_60_2.t / var_60_3 + 1e-06))

	__recovered_scope_0.var_0_78(arg_60_1, var_60_4)

	if var_60_4 >= __recovered_scope_0.var_0_75 and not var_60_2.blackoutApplied then
		var_60_2.blackoutApplied = __recovered_scope_0.var_0_83(arg_60_0, arg_60_1)
	end

	if var_60_2.t >= var_60_3 * __recovered_scope_0.var_0_76 then
		__recovered_scope_0.var_0_85(arg_60_1)
	end

	return true
end

function __recovered_scope_0.var_0_67.updateWorld(arg_61_0, arg_61_1)
	if not arg_61_0 then
		return
	end

	local var_61_0 = math.max(0, tonumber(arg_61_1) or 0)
	local var_61_1 = arg_61_0._hellWardenBlackouts or {}
	local var_61_2 = {}

	for iter_61_0, iter_61_1 in ipairs(var_61_1) do
		if __recovered_scope_0.var_0_77(iter_61_1.owner) and (tonumber(iter_61_1.t) or 0) > 0 then
			if iter_61_1.fresh then
				iter_61_1.fresh = nil
			else
				iter_61_1.t = math.max(0, (tonumber(iter_61_1.t) or 0) - var_61_0)
			end

			if iter_61_1.t > 0 then
				var_61_2[#var_61_2 + 1] = iter_61_1
			end
		end
	end

	arg_61_0._hellWardenBlackouts = var_61_2

	__recovered_scope_0.var_0_82(arg_61_0)

	local var_61_3 = (tonumber(arg_61_0._hellWardenBlackoutT) or 0) > 0 and 1 or 0
	local var_61_4 = math.max(0, math.min(1, tonumber(arg_61_0._hellWardenBlackoutBlend) or 0))

	if var_61_4 < var_61_3 then
		var_61_4 = math.min(var_61_3, var_61_4 + var_61_0 / __recovered_scope_0.var_0_72)
	elseif var_61_3 < var_61_4 then
		var_61_4 = math.max(var_61_3, var_61_4 - var_61_0 / __recovered_scope_0.var_0_73)
	end

	arg_61_0._hellWardenBlackoutBlend = var_61_4 > 0 and var_61_4 or nil
end

function __recovered_scope_0.var_0_67.releaseOnDeath(arg_62_0)
	if not arg_62_0 then
		return
	end

	__recovered_scope_0.var_0_85(arg_62_0)

	local var_62_0 = arg_62_0._hellWardenBlackoutBattlefield

	if var_62_0 then
		local var_62_1 = {}

		for iter_62_0, iter_62_1 in ipairs(var_62_0._hellWardenBlackouts or {}) do
			if iter_62_1.owner ~= arg_62_0 and __recovered_scope_0.var_0_77(iter_62_1.owner) and (tonumber(iter_62_1.t) or 0) > 0 then
				var_62_1[#var_62_1 + 1] = iter_62_1
			end
		end

		var_62_0._hellWardenBlackouts = var_62_1

		__recovered_scope_0.var_0_82(var_62_0)
	end

	arg_62_0._hellWardenBlackoutBattlefield = nil
end

__recovered_scope_0.var_0_67.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_68,
	COOLDOWN = __recovered_scope_0.var_0_69,
	BLACKOUT_DURATION = __recovered_scope_0.var_0_70,
	FRAME_DURATION = __recovered_scope_0.var_0_71,
	FADE_IN_DURATION = __recovered_scope_0.var_0_72,
	FADE_OUT_DURATION = __recovered_scope_0.var_0_73,
	CAST_ANIMATION = __recovered_scope_0.var_0_74,
	CAST_TRIGGER_FRAME = __recovered_scope_0.var_0_75,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_76
}

 __recovered_scope_0.var_0_86 = __recovered_scope_0.var_0_67
 __recovered_scope_0.var_0_87 = nil
 __recovered_scope_0.var_0_88 = {}
 __recovered_scope_0.var_0_89 = 6
 __recovered_scope_0.var_0_90 = 100
 __recovered_scope_0.var_0_91 = 0.6
 __recovered_scope_0.var_0_92 = 0.24
 __recovered_scope_0.var_0_93 = 0.9
 __recovered_scope_0.var_0_94 = 6
 __recovered_scope_0.var_0_95 = 0.4
 __recovered_scope_0.var_0_96 = 12

 function __recovered_scope_0.var_0_97(arg_63_0, arg_63_1, arg_63_2)
	local var_63_0 = arg_63_0 and tonumber(arg_63_0[arg_63_1])

	if var_63_0 == nil then
		return arg_63_2
	end

	return var_63_0
end

function __recovered_scope_0.var_0_88.matches(arg_64_0)
	if not arg_64_0 then
		return false
	end

	local var_64_0 = tostring(arg_64_0.kind or "")
	local var_64_1 = tostring(arg_64_0.skin or "")

	return var_64_0 == "Hell Enforcer" or var_64_0 == "지옥 집행관" or var_64_0 == "지옥 집행관 (Hell Enforcer)" or var_64_1 == "Hell Enforcer" or var_64_1 == "지옥 집행관" or var_64_1 == "지옥 집행관 (Hell Enforcer)"
end

 function __recovered_scope_0.var_0_98(arg_65_0, arg_65_1)
	return arg_65_0 and arg_65_0.side == "ally" and arg_65_0.alive and not arg_65_0.dying and not arg_65_0._venomMawSwallowed and (tonumber(arg_65_0.hp) == nil or (tonumber(arg_65_0.hp) or 0) > 0) and (not arg_65_1 or not require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_65_1, arg_65_0))
end

 function __recovered_scope_0.var_0_99(arg_66_0, arg_66_1, arg_66_2)
	if not arg_66_0.anim then
		return
	end

	if arg_66_0.anim.name ~= arg_66_1 then
		arg_66_0.anim.name = arg_66_1
		arg_66_0.anim.t = 0
		arg_66_0.anim.reverse = nil
	end

	arg_66_0.anim.frame = math.max(1, math.floor(tonumber(arg_66_2) or 1))
	arg_66_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_100(arg_67_0, arg_67_1)
	local var_67_0 = arg_67_1 and arg_67_1.target
	local var_67_1 = var_67_0 and var_67_0._hellEnforcerExecutionLock

	if var_67_1 and var_67_1.source == arg_67_0 and var_67_1.state == arg_67_1 then
		var_67_0._hellEnforcerExecutionLock = nil
	end
end

 function __recovered_scope_0.var_0_101(arg_68_0, arg_68_1)
	__recovered_scope_0.var_0_100(arg_68_0, arg_68_1)

	arg_68_0._hellEnforcerExecution = nil
	arg_68_0._hellEnforcerExecutionManualAnim = nil
	arg_68_0.target = nil
	arg_68_0.pendingTarget = nil
	arg_68_0.shotPending = false
	arg_68_0._meleeLoop = false
	arg_68_0._pendingGoblinHit = nil
	arg_68_0._pendingOrcHit = nil
	arg_68_0._pendingHowlHit = nil
	arg_68_0.coolTicks = 0

	__recovered_scope_0.var_0_99(arg_68_0, "idle", 1)

	return false
end

function __recovered_scope_0.var_0_88.cancel(arg_69_0)
	if not arg_69_0 then
		return false
	end

	local var_69_0 = arg_69_0._hellEnforcerExecution

	if var_69_0 then
		__recovered_scope_0.var_0_101(arg_69_0, var_69_0)
	end

	return var_69_0 ~= nil
end

function __recovered_scope_0.var_0_88.validateTargetLock(arg_70_0)
	local var_70_0 = arg_70_0 and arg_70_0._hellEnforcerExecutionLock

	if not var_70_0 then
		return false
	end

	local var_70_1 = var_70_0.source

	if not var_70_1 or not var_70_1.alive or var_70_1.dying or var_70_1._hellEnforcerExecution ~= var_70_0.state or require("src.game.unit_abilities").dimensional_duel.separated(nil, var_70_1, arg_70_0) then
		arg_70_0._hellEnforcerExecutionLock = nil

		return false
	end

	return true
end

 function __recovered_scope_0.var_0_102(arg_71_0, arg_71_1)
	local var_71_0 = arg_71_1.target

	if not __recovered_scope_0.var_0_98(var_71_0, arg_71_0) then
		return false
	end

	local var_71_1 = var_71_0._hellEnforcerExecutionLock

	if not var_71_1 or var_71_1.source ~= arg_71_0 or var_71_1.state ~= arg_71_1 then
		var_71_1 = {
			source = arg_71_0,
			state = arg_71_1,
			x = tonumber(var_71_0.x) or 0,
			y = tonumber(var_71_0.y) or 0
		}
		var_71_0._hellEnforcerExecutionLock = var_71_1

		require("src.game.combat").spitecap.onDebuff(var_71_0, nil, "_hellEnforcerExecutionLock")
	end

	var_71_0.x = var_71_1.x
	var_71_0.y = var_71_1.y
	var_71_0._kb = nil
	var_71_0._posLerp = nil

	return true
end

 function __recovered_scope_0.var_0_103(arg_72_0, arg_72_1, arg_72_2)
	arg_72_1 = require("src.game.combat").wooden_watchtower.targets(arg_72_0, arg_72_1)

	local var_72_0
	local var_72_1
	local var_72_2 = arg_72_2 * arg_72_2

	for iter_72_0, iter_72_1 in ipairs(arg_72_1 or {}) do
		if __recovered_scope_0.var_0_98(iter_72_1, arg_72_0) and not iter_72_1._hellEnforcerExecutionLock then
			local var_72_3 = (tonumber(iter_72_1.x) or 0) - (tonumber(arg_72_0.x) or 0)
			local var_72_4 = (tonumber(iter_72_1.y) or 0) - (tonumber(arg_72_0.y) or 0)
			local var_72_5 = var_72_3 * var_72_3 + var_72_4 * var_72_4

			if var_72_5 <= var_72_2 and (var_72_1 == nil or var_72_1 < var_72_5) then
				var_72_0 = iter_72_1
				var_72_1 = var_72_5
			end
		end
	end

	return var_72_0
end

 function __recovered_scope_0.var_0_104(arg_73_0, arg_73_1)
	local var_73_0 = {
		t = 0,
		phase = "leap",
		hits = 0,
		target = arg_73_1,
		fromX = tonumber(arg_73_0.x) or 0,
		fromY = tonumber(arg_73_0.y) or 0
	}

	arg_73_0._hellEnforcerExecution = var_73_0
	arg_73_0._hellEnforcerExecutionManualAnim = true
	arg_73_0._hellEnforcerExecutionCdT = 0
	arg_73_0.target = arg_73_1
	arg_73_0.pendingTarget = nil
	arg_73_0.shotPending = false
	arg_73_0._meleeLoop = false
	arg_73_0._pendingGoblinHit = nil
	arg_73_0._pendingOrcHit = nil
	arg_73_0._pendingHowlHit = nil
	arg_73_0._kb = nil
	arg_73_0.facing = (tonumber(arg_73_1.x) or 0) >= (tonumber(arg_73_0.x) or 0) and 1 or -1

	__recovered_scope_0.var_0_99(arg_73_0, "jump", 1)

	return var_73_0
end

 function __recovered_scope_0.var_0_105(arg_74_0, arg_74_1, arg_74_2)
	local var_74_0 = arg_74_1.target
	local var_74_1 = math.max(0.05, __recovered_scope_0.var_0_97(arg_74_0, "hellEnforcerExecutionLeapDur", __recovered_scope_0.var_0_91))

	arg_74_1.t = arg_74_1.t + arg_74_2

	local var_74_2 = math.min(1, arg_74_1.t / var_74_1)
	local var_74_3 = var_74_2 * var_74_2 * (3 - 2 * var_74_2)
	local var_74_4 = (tonumber(var_74_0.x) or 0) >= (tonumber(arg_74_0.x) or 0) and 1 or -1

	arg_74_0.facing = var_74_4

	local var_74_5 = (tonumber(var_74_0.x) or 0) - var_74_4 * __recovered_scope_0.var_0_97(arg_74_0, "hellEnforcerExecutionGrabOffset", __recovered_scope_0.var_0_96)
	local var_74_6 = tonumber(var_74_0.y) or 0

	arg_74_0.x = arg_74_1.fromX + (var_74_5 - arg_74_1.fromX) * var_74_3
	arg_74_0.y = arg_74_1.fromY + (var_74_6 - arg_74_1.fromY) * var_74_3

	__recovered_scope_0.var_0_99(arg_74_0, "jump", math.min(3, math.floor(var_74_2 * 3) + 1))

	if var_74_2 < 1 then
		return true
	end

	arg_74_1.phase = "grab"
	arg_74_1.t = 0

	if not __recovered_scope_0.var_0_102(arg_74_0, arg_74_1) then
		return false
	end

	__recovered_scope_0.var_0_99(arg_74_0, "attack3", 1)

	return true
end

 function __recovered_scope_0.var_0_106(arg_75_0, arg_75_1, arg_75_2)
	if not __recovered_scope_0.var_0_102(arg_75_0, arg_75_1) then
		return false
	end

	local var_75_0 = arg_75_1.target
	local var_75_1 = math.max(0.05, __recovered_scope_0.var_0_97(arg_75_0, "hellEnforcerExecutionGrabDur", __recovered_scope_0.var_0_92))

	arg_75_1.t = arg_75_1.t + arg_75_2

	local var_75_2 = math.min(1, arg_75_1.t / var_75_1)

	arg_75_0.facing = (tonumber(var_75_0.x) or 0) >= (tonumber(arg_75_0.x) or 0) and 1 or -1
	arg_75_0.x = var_75_0._hellEnforcerExecutionLock.x - arg_75_0.facing * __recovered_scope_0.var_0_97(arg_75_0, "hellEnforcerExecutionGrabOffset", __recovered_scope_0.var_0_96)
	arg_75_0.y = var_75_0._hellEnforcerExecutionLock.y

	__recovered_scope_0.var_0_99(arg_75_0, "attack3", math.min(3, math.floor(var_75_2 * 3) + 1))

	if var_75_2 < 1 then
		return true
	end

	arg_75_1.phase = "barrage"
	arg_75_1.t = 0
	arg_75_1.hits = 0

	__recovered_scope_0.var_0_99(arg_75_0, "attack", 1)

	return true
end

 function __recovered_scope_0.var_0_107(arg_76_0, arg_76_1, arg_76_2, arg_76_3)
	if not __recovered_scope_0.var_0_102(arg_76_0, arg_76_1) then
		return false
	end

	local var_76_0 = arg_76_1.target
	local var_76_1 = math.max(0.1, __recovered_scope_0.var_0_97(arg_76_0, "hellEnforcerExecutionBarrageDur", __recovered_scope_0.var_0_93))
	local var_76_2 = math.max(1, math.floor(__recovered_scope_0.var_0_97(arg_76_0, "hellEnforcerExecutionHitCount", __recovered_scope_0.var_0_94)))
	local var_76_3 = 6
	local var_76_4 = var_76_1 / var_76_2
	local var_76_5 = var_76_4 / var_76_3

	arg_76_1.t = arg_76_1.t + arg_76_2

	while var_76_2 > arg_76_1.hits and arg_76_1.t >= arg_76_1.hits * var_76_4 + var_76_5 * 2 do
		arg_76_1.hits = arg_76_1.hits + 1

		arg_76_3(var_76_0, (tonumber(arg_76_0.dmg) or 0) * __recovered_scope_0.var_0_97(arg_76_0, "hellEnforcerExecutionHitMul", __recovered_scope_0.var_0_95), arg_76_0, require("src.game.awakening").isV8(arg_76_0) and {
			skillBig = true,
			melee = true,
			skillDamage = true,
			nativeActionHitCount = var_76_2,
			awakeningCast = arg_76_0._awakening and arg_76_0._awakening.cast
		} or nil)

		if not __recovered_scope_0.var_0_98(var_76_0, arg_76_0) then
			return false
		end
	end

	local var_76_6 = math.min(arg_76_1.t, math.max(0, var_76_1 - 1e-06))
	local var_76_7 = var_76_6 - math.min(var_76_2 - 1, math.floor(var_76_6 / var_76_4)) * var_76_4
	local var_76_8 = math.min(var_76_3, math.floor(var_76_7 / var_76_5) + 1)

	__recovered_scope_0.var_0_99(arg_76_0, "attack", var_76_8)

	arg_76_0.facing = (tonumber(var_76_0.x) or 0) >= (tonumber(arg_76_0.x) or 0) and 1 or -1
	arg_76_0.x = var_76_0._hellEnforcerExecutionLock.x - arg_76_0.facing * __recovered_scope_0.var_0_97(arg_76_0, "hellEnforcerExecutionGrabOffset", __recovered_scope_0.var_0_96)
	arg_76_0.y = var_76_0._hellEnforcerExecutionLock.y

	if var_76_1 <= arg_76_1.t then
		return false
	end

	return true
end

function __recovered_scope_0.var_0_88.update(arg_77_0, arg_77_1, arg_77_2, arg_77_3, arg_77_4)
	if not arg_77_0 or not __recovered_scope_0.var_0_88.matches(arg_77_1) or not arg_77_1.alive or not not arg_77_1.dying then
		return false
	end

	local var_77_0 = math.max(0, tonumber(arg_77_2) or 0)
	local var_77_1 = arg_77_1._hellEnforcerExecution

	if var_77_1 then
		if not __recovered_scope_0.var_0_98(var_77_1.target, arg_77_1) then
			return __recovered_scope_0.var_0_101(arg_77_1, var_77_1)
		end

		if not arg_77_4 then
			return true
		end

		local var_77_2

		if var_77_1.phase == "leap" then
			var_77_2 = __recovered_scope_0.var_0_105(arg_77_1, var_77_1, var_77_0)
		elseif var_77_1.phase == "grab" then
			var_77_2 = __recovered_scope_0.var_0_106(arg_77_1, var_77_1, var_77_0)
		else
			var_77_2 = __recovered_scope_0.var_0_107(arg_77_1, var_77_1, var_77_0, arg_77_3)
		end

		if not var_77_2 then
			return __recovered_scope_0.var_0_101(arg_77_1, var_77_1)
		end

		return true
	end

	local var_77_3 = math.max(0.1, __recovered_scope_0.var_0_97(arg_77_1, "hellEnforcerExecutionCd", __recovered_scope_0.var_0_89))

	arg_77_1._hellEnforcerExecutionCdT = math.min(var_77_3, (tonumber(arg_77_1._hellEnforcerExecutionCdT) or 0) + var_77_0)

	if var_77_3 > arg_77_1._hellEnforcerExecutionCdT or not arg_77_4 then
		return false
	end

	local var_77_4 = math.max(1, __recovered_scope_0.var_0_97(arg_77_1, "hellEnforcerExecutionRadius", __recovered_scope_0.var_0_90))
	local var_77_5 = __recovered_scope_0.var_0_103(arg_77_1, arg_77_0.allies, var_77_4)

	if not var_77_5 then
		return false
	end

	__recovered_scope_0.var_0_104(arg_77_1, var_77_5)

	return true
end

 __recovered_scope_0.var_0_108 = __recovered_scope_0.var_0_88
 __recovered_scope_0.var_0_109 = nil
 __recovered_scope_0.var_0_110 = {}
 __recovered_scope_0.var_0_111 = 5
 __recovered_scope_0.var_0_112 = 0.08
 __recovered_scope_0.var_0_113 = 0.07
 __recovered_scope_0.var_0_114 = 0.05
 __recovered_scope_0.var_0_115 = 35
 __recovered_scope_0.var_0_116 = 2
 __recovered_scope_0.var_0_117 = {
	["악동 임프"] = true,
	["Rascal Imp"] = true,
	["불씨 임프 (Ember Imp)"] = true,
	["불씨 임프"] = true,
	["Ember Imp"] = true,
	["임프 (Imp)"] = true,
	임프 = true,
	Imp = true,
	Succubus = true,
	["서큐버스 (Succubus)"] = true,
	["Demon Lord"] = true,
	마왕 = true,
	["마왕 (Demon Lord)"] = true,
	["발톱 악마 (Clawed Demon)"] = true,
	["발톱 악마"] = true,
	["Clawed Demon"] = true,
	서큐버스 = true,
	["지옥 집행관 (Hell Enforcer)"] = true,
	["지옥 집행관"] = true,
	["Hell Enforcer"] = true,
	["지옥 마녀 (Hell Witch)"] = true,
	["지옥 마녀"] = true,
	["Hell Witch"] = true,
	["지옥 파수꾼 (Hell Warden)"] = true,
	["지옥 파수꾼"] = true,
	["Hell Warden"] = true,
	["상급 악마 (High Demon)"] = true,
	["상급 악마"] = true,
	["High Demon"] = true,
	["악동 임프 (Rascal Imp)"] = true
}

 function __recovered_scope_0.var_0_118(arg_78_0, arg_78_1, arg_78_2)
	local var_78_0 = arg_78_0 and tonumber(arg_78_0[arg_78_1]) or nil

	if not var_78_0 or var_78_0 ~= var_78_0 or var_78_0 == math.huge or var_78_0 == -math.huge then
		return arg_78_2
	end

	return var_78_0
end

 function __recovered_scope_0.var_0_119(arg_79_0)
	return arg_79_0 and arg_79_0.alive and not arg_79_0.dying and (tonumber(arg_79_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_120(arg_80_0)
	if not arg_80_0 then
		return false
	end

	return __recovered_scope_0.var_0_117[arg_80_0.kind] == true or __recovered_scope_0.var_0_117[arg_80_0.skin] == true
end

 function __recovered_scope_0.var_0_121(arg_81_0)
	if not arg_81_0 then
		return
	end

	arg_81_0.target = nil
	arg_81_0.pendingTarget = nil
	arg_81_0.shotPending = false
	arg_81_0._meleeLoop = false
	arg_81_0._pendingGoblinHit = nil
	arg_81_0._pendingOrcHit = nil
	arg_81_0._pendingHowlHit = nil
	arg_81_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_122(arg_82_0, arg_82_1)
	if not arg_82_0 or not arg_82_0.anim then
		return
	end

	arg_82_0.anim.name = arg_82_1
	arg_82_0.anim.frame = 1
	arg_82_0.anim.t = 0
	arg_82_0.anim.reverse = nil
	arg_82_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_123(arg_83_0)
	return math.max(1, math.floor(__recovered_scope_0.var_0_118(arg_83_0, "demonLordDominionMaxStacks", __recovered_scope_0.var_0_111)))
end

 function __recovered_scope_0.var_0_124(arg_84_0)
	local var_84_0 = math.max(0, math.floor(tonumber(arg_84_0._demonLordDominionStacks) or 0))

	if var_84_0 >= __recovered_scope_0.var_0_123(arg_84_0) then
		return false
	end

	if not arg_84_0._demonLordDominionBaseDmg then
		arg_84_0._demonLordDominionBaseDmg = math.max(0, tonumber(arg_84_0._baseDmg or arg_84_0.dmg) or 0)
	end

	if not arg_84_0._demonLordDominionBaseMaxHP then
		arg_84_0._demonLordDominionBaseMaxHP = math.max(1, tonumber(arg_84_0._baseMaxHP or arg_84_0.maxhp or arg_84_0.hp) or 1)
	end

	local var_84_1 = var_84_0 + 1
	local var_84_2 = math.max(0, tonumber(arg_84_0._baseDmg or arg_84_0.dmg) or 0)
	local var_84_3 = var_84_2 > 0 and math.max(0, (tonumber(arg_84_0.dmg) or 0) / var_84_2) or 1
	local var_84_4 = math.max(0, math.floor(arg_84_0._demonLordDominionBaseDmg * (1 + __recovered_scope_0.var_0_118(arg_84_0, "demonLordDominionAtkPerStack", __recovered_scope_0.var_0_113) * var_84_1) + 0.5))

	arg_84_0._baseDmg = var_84_4
	arg_84_0.dmg = math.max(0, math.floor(var_84_4 * var_84_3 + 0.5))

	local var_84_5 = math.max(1, tonumber(arg_84_0._baseMaxHP or arg_84_0.maxhp or arg_84_0.hp) or 1)
	local var_84_6 = math.max(1, tonumber(arg_84_0.maxhp or arg_84_0.hp) or 1)
	local var_84_7 = var_84_6 / var_84_5
	local var_84_8 = math.max(1, math.floor(arg_84_0._demonLordDominionBaseMaxHP * (1 + __recovered_scope_0.var_0_118(arg_84_0, "demonLordDominionHpPerStack", __recovered_scope_0.var_0_114) * var_84_1) + 0.5))
	local var_84_9 = math.max(1, math.floor(var_84_8 * var_84_7 + 0.5))

	arg_84_0._baseMaxHP = var_84_8
	arg_84_0.maxhp = var_84_9
	arg_84_0.hp = math.min(var_84_9, math.max(0, tonumber(arg_84_0.hp) or 0) + math.max(0, var_84_9 - var_84_6))
	arg_84_0._demonLordDominionStacks = var_84_1
	arg_84_0.demonLordDominionScale = 1 + __recovered_scope_0.var_0_118(arg_84_0, "demonLordDominionSizePerStack", __recovered_scope_0.var_0_112) * var_84_1
	arg_84_0._shrinkScalePoof = {
		dur = 0.4,
		kind = "grow",
		t = 0
	}
	arg_84_0._demonLordDominionCastSerial = (tonumber(arg_84_0._demonLordDominionCastSerial) or 0) + 1

	return true
end

 function __recovered_scope_0.var_0_125(arg_85_0)
	local var_85_0 = math.max(0, math.floor(tonumber(arg_85_0._demonLordDominionQueue) or 0))

	if var_85_0 <= 0 or not __recovered_scope_0.var_0_124(arg_85_0) then
		arg_85_0._demonLordDominionQueue = 0

		return false
	end

	arg_85_0._demonLordDominionQueue = var_85_0 - 1
	arg_85_0._demonLordDominionAnimating = true
	arg_85_0._bossSkillBusy = true

	__recovered_scope_0.var_0_121(arg_85_0)
	__recovered_scope_0.var_0_122(arg_85_0, "attack3")

	return true
end

function __recovered_scope_0.var_0_110.matches(arg_86_0)
	if not arg_86_0 then
		return false
	end

	local var_86_0 = tostring(arg_86_0.kind or "")
	local var_86_1 = tostring(arg_86_0.skin or "")

	return var_86_0 == "Demon Lord" or var_86_0 == "마왕" or var_86_0 == "마왕 (Demon Lord)" or var_86_1 == "Demon Lord" or var_86_1 == "마왕" or var_86_1 == "마왕 (Demon Lord)"
end

function __recovered_scope_0.var_0_110.onEnemyDeath(arg_87_0, arg_87_1)
	if not arg_87_0 or not arg_87_1 or arg_87_1.side ~= "enemy" or arg_87_1._tricksterCharm or not __recovered_scope_0.var_0_120(arg_87_1) then
		return false
	end

	local var_87_0 = false

	for iter_87_0, iter_87_1 in ipairs(arg_87_0.enemies or {}) do
		if iter_87_1 ~= arg_87_1 and iter_87_1.side == "enemy" and __recovered_scope_0.var_0_110.matches(iter_87_1) and __recovered_scope_0.var_0_119(iter_87_1) and not iter_87_1._tricksterCharm then
			local var_87_1 = math.max(0, math.floor(tonumber(iter_87_1._demonLordDominionStacks) or 0))
			local var_87_2 = math.max(0, math.floor(tonumber(iter_87_1._demonLordDominionQueue) or 0))

			if var_87_1 + var_87_2 < __recovered_scope_0.var_0_123(iter_87_1) then
				iter_87_1._demonLordDominionQueue = var_87_2 + 1
				var_87_0 = true
			end
		end
	end

	return var_87_0
end

function __recovered_scope_0.var_0_110.update(arg_88_0, arg_88_1, arg_88_2, arg_88_3, arg_88_4, arg_88_5)
	if not arg_88_0 or not __recovered_scope_0.var_0_110.matches(arg_88_1) or not __recovered_scope_0.var_0_119(arg_88_1) then
		return false
	end

	if arg_88_1._demonLordDominionAnimating then
		if arg_88_1.anim and arg_88_1.anim.name == "attack3" then
			arg_88_1._bossSkillBusy = true

			return true
		end

		arg_88_1._demonLordDominionAnimating = nil
		arg_88_1._bossSkillBusy = nil
	end

	if arg_88_5 and (tonumber(arg_88_1._demonLordDominionQueue) or 0) > 0 then
		return __recovered_scope_0.var_0_125(arg_88_1)
	end

	return false
end

function __recovered_scope_0.var_0_110.afterBasicAttackHit(arg_89_0, arg_89_1, arg_89_2, arg_89_3)
	local var_89_0 = math.max(0, math.floor(tonumber(arg_89_1 and arg_89_1._demonLordDominionStacks) or 0))

	if var_89_0 < 3 or not arg_89_0 or not arg_89_2 or type(arg_89_3) ~= "function" then
		return false
	end

	local var_89_1 = var_89_0 >= 5 and 0.6 or var_89_0 >= 4 and 0.5 or 0.4
	local var_89_2 = math.max(1, __recovered_scope_0.var_0_118(arg_89_1, "demonLordDominionSplashRadius", __recovered_scope_0.var_0_115))
	local var_89_3 = var_89_2 * var_89_2
	local var_89_4 = tonumber(arg_89_2.x) or 0
	local var_89_5 = tonumber(arg_89_2.y) or 0
	local var_89_6 = {}
	local var_89_7 = require("src.game.unit_abilities").dimensional_duel

	for iter_89_0, iter_89_1 in ipairs(arg_89_0.allies or {}) do
		if iter_89_1 ~= arg_89_2 and iter_89_1.side == "ally" and iter_89_1.alive and not iter_89_1.dying and (tonumber(iter_89_1.hp) or 0) > 0 and not iter_89_1.isUndyingSoul and not iter_89_1._venomMawSwallowed and not var_89_7.separated(arg_89_0, arg_89_1, iter_89_1) then
			local var_89_8 = (tonumber(iter_89_1.x) or 0) - var_89_4
			local var_89_9 = (tonumber(iter_89_1.y) or 0) - var_89_5
			local var_89_10 = var_89_8 * var_89_8 + var_89_9 * var_89_9

			if var_89_10 <= var_89_3 then
				var_89_6[#var_89_6 + 1] = {
					target = iter_89_1,
					distanceSq = var_89_10,
					index = iter_89_0
				}
			end
		end
	end

	table.sort(var_89_6, function(arg_90_0, arg_90_1)
		if arg_90_0.distanceSq == arg_90_1.distanceSq then
			return arg_90_0.index < arg_90_1.index
		end

		return arg_90_0.distanceSq < arg_90_1.distanceSq
	end)

	local var_89_11 = math.max(0, math.floor((tonumber(arg_89_1.dmg) or 0) * var_89_1 + 0.5))
	local var_89_12 = math.max(0, math.floor(__recovered_scope_0.var_0_118(arg_89_1, "demonLordDominionSplashMaxTargets", __recovered_scope_0.var_0_116)))
	local var_89_13 = math.min(var_89_12, #var_89_6)

	for iter_89_2 = 1, var_89_13 do
		arg_89_3(var_89_6[iter_89_2].target, var_89_11, arg_89_1, {
			area_damage = true,
			basicAttack = true
		})
	end

	return var_89_13 > 0
end

function __recovered_scope_0.var_0_110.releaseOnDeath(arg_91_0)
	if not arg_91_0 then
		return
	end

	arg_91_0._demonLordDominionQueue = 0
	arg_91_0._demonLordDominionAnimating = nil
	arg_91_0._bossSkillBusy = nil
end

__recovered_scope_0.var_0_110.constants = {
	MAX_STACKS = __recovered_scope_0.var_0_111,
	SIZE_PER_STACK = __recovered_scope_0.var_0_112,
	ATK_PER_STACK = __recovered_scope_0.var_0_113,
	HP_PER_STACK = __recovered_scope_0.var_0_114,
	SPLASH_RADIUS = __recovered_scope_0.var_0_115,
	SPLASH_MAX_TARGETS = __recovered_scope_0.var_0_116
}

 __recovered_scope_0.var_0_126 = __recovered_scope_0.var_0_110
 __recovered_scope_0.var_0_127 = nil
 __recovered_scope_0.var_0_128 = {}
 __recovered_scope_0.var_0_129 = 3
 __recovered_scope_0.var_0_130 = 6
 __recovered_scope_0.var_0_131 = 1.2
 __recovered_scope_0.var_0_132 = 0.5
 __recovered_scope_0.var_0_133 = 55
 __recovered_scope_0.var_0_134 = 2
 __recovered_scope_0.var_0_135 = 2.5
 __recovered_scope_0.var_0_136 = 0.6
 __recovered_scope_0.var_0_137 = 0.25
 __recovered_scope_0.var_0_138 = "attack2"
 __recovered_scope_0.var_0_139 = 14
 __recovered_scope_0.var_0_140 = 0.08
 __recovered_scope_0.var_0_141 = 3
 __recovered_scope_0.var_0_142 = "SkeletonDragonSkill"
 __recovered_scope_0.var_0_143 = 9
 __recovered_scope_0.var_0_144 = 0.12
 __recovered_scope_0.var_0_145 = 3
 __recovered_scope_0.var_0_146 = 37
 __recovered_scope_0.var_0_147 = 35
 __recovered_scope_0.var_0_148 = 34
 __recovered_scope_0.var_0_149 = 55.5
 __recovered_scope_0.var_0_150 = 19.5
 __recovered_scope_0.var_0_151 = 9.5
 __recovered_scope_0.var_0_152 = 19.5

 function __recovered_scope_0.var_0_153(arg_92_0)
	return arg_92_0 and arg_92_0.alive and not arg_92_0.dying and not arg_92_0._venomMawSwallowed and not arg_92_0.isUndyingSoul and (tonumber(arg_92_0.hp) == nil or (tonumber(arg_92_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_154(arg_93_0)
	arg_93_0.pendingTarget = nil
	arg_93_0.shotPending = false
	arg_93_0._meleeLoop = nil
	arg_93_0._pendingGoblinHit = nil
	arg_93_0._pendingEnemyBasicHit = nil
	arg_93_0._pendingOrcHit = nil
	arg_93_0._pendingHowlHit = nil
	arg_93_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_155(arg_94_0, arg_94_1)
	if not arg_94_0 or not arg_94_0.anim then
		return
	end

	arg_94_0.anim.name = __recovered_scope_0.var_0_138
	arg_94_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_139, math.floor(tonumber(arg_94_1) or 1)))
	arg_94_0.anim.t = 0
	arg_94_0.anim.reverse = nil
	arg_94_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_156(arg_95_0)
	local var_95_0 = tonumber(arg_95_0 and arg_95_0.ui and arg_95_0.ui.battle and arg_95_0.ui.battle.allySize32) or 32

	return math.max(1, math.floor(var_95_0 / 32 + 0.5))
end

 function __recovered_scope_0.var_0_157(arg_96_0, arg_96_1, arg_96_2)
	local var_96_0 = tonumber(arg_96_0 and arg_96_0.ui and arg_96_0.ui.battle and arg_96_0.ui.battle.rangeEllipseYScale) or 0.5
	local var_96_1 = math.max(0.1, math.min(1, var_96_0))
	local var_96_2 = (tonumber(arg_96_2 and arg_96_2.x) or 0) - (tonumber(arg_96_1 and arg_96_1.x) or 0)
	local var_96_3 = ((tonumber(arg_96_2 and arg_96_2.y) or 0) - (tonumber(arg_96_1 and arg_96_1.y) or 0)) / var_96_1

	return var_96_2 * var_96_2 + var_96_3 * var_96_3
end

function __recovered_scope_0.var_0_128.matches(arg_97_0)
	if not arg_97_0 then
		return false
	end

	local var_97_0 = tostring(arg_97_0.kind or "")
	local var_97_1 = tostring(arg_97_0.skin or "")

	return var_97_0 == "Skeleton Dragon" or var_97_0 == "해골 드래곤" or var_97_0 == "해골 드래곤 (Skeleton Dragon)" or var_97_1 == "Skeleton Dragon" or var_97_1 == "해골 드래곤" or var_97_1 == "해골 드래곤 (Skeleton Dragon)"
end

function __recovered_scope_0.var_0_128.findTarget(arg_98_0, arg_98_1, arg_98_2, arg_98_3)
	arg_98_2 = require("src.game.combat").wooden_watchtower.targets(arg_98_1, arg_98_2, nil, arg_98_0)

	if not arg_98_0 or not __recovered_scope_0.var_0_153(arg_98_1) then
		return nil
	end

	local var_98_0 = math.max(1, tonumber(arg_98_3) or tonumber(arg_98_1.distance) or 60)
	local var_98_1 = var_98_0 * var_98_0
	local var_98_2
	local var_98_3
	local var_98_4

	for iter_98_0, iter_98_1 in ipairs(arg_98_2 or {}) do
		if iter_98_1.side == "ally" and __recovered_scope_0.var_0_153(iter_98_1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_98_0, arg_98_1, iter_98_1) then
			local var_98_5 = __recovered_scope_0.var_0_157(arg_98_0, arg_98_1, iter_98_1)

			if var_98_5 <= var_98_1 then
				local var_98_6 = math.max(0, tonumber(iter_98_1.dmg) or 0)

				if var_98_2 == nil or var_98_3 < var_98_6 or var_98_6 == var_98_3 and var_98_5 < var_98_4 then
					var_98_2 = iter_98_1
					var_98_3 = var_98_6
					var_98_4 = var_98_5
				end
			end
		end
	end

	return var_98_2
end

 function __recovered_scope_0.var_0_158(arg_99_0, arg_99_1)
	local var_99_0 = arg_99_0 and arg_99_0.assets and arg_99_0.assets.units
	local var_99_1 = var_99_0 and (var_99_0[arg_99_1.skin] or var_99_0[arg_99_1.kind] or var_99_0["Skeleton Dragon"])
	local var_99_2 = var_99_1 and var_99_1._skeletonDragonSoulBackflowMarker

	if not var_99_2 then
		local var_99_3 = 0
		local var_99_4 = 0
		local var_99_5 = 0
		local var_99_6 = var_99_1 and var_99_1.quads and var_99_1.quads.attack2 and var_99_1.quads.attack2[__recovered_scope_0.var_0_141]
		local var_99_7 = var_99_1 and var_99_1.imageData

		if var_99_6 and var_99_7 then
			local var_99_8, var_99_9, var_99_10, var_99_11 = var_99_6:getViewport()

			for iter_99_0 = 0, var_99_11 - 1 do
				for iter_99_1 = 0, var_99_10 - 1 do
					local var_99_12, var_99_13, var_99_14, var_99_15 = var_99_7:getPixel(var_99_8 + iter_99_1, var_99_9 + iter_99_0)

					if var_99_15 and var_99_15 > 0.05 and math.floor((var_99_12 or 0) * 255 + 0.5) == __recovered_scope_0.var_0_146 and math.floor((var_99_13 or 0) * 255 + 0.5) == __recovered_scope_0.var_0_147 and math.floor((var_99_14 or 0) * 255 + 0.5) == __recovered_scope_0.var_0_148 then
						var_99_3, var_99_4, var_99_5 = var_99_3 + iter_99_1, var_99_4 + iter_99_0, var_99_5 + 1
					end
				end
			end
		end

		var_99_2 = {
			x = var_99_5 > 0 and var_99_3 / var_99_5 + 0.5 or __recovered_scope_0.var_0_149,
			y = var_99_5 > 0 and var_99_4 / var_99_5 + 0.5 or __recovered_scope_0.var_0_150
		}

		if var_99_1 then
			var_99_1._skeletonDragonSoulBackflowMarker = var_99_2
		end
	end

	local var_99_16 = tonumber(var_99_1 and var_99_1.frameW) or 96
	local var_99_17 = tonumber(var_99_1 and var_99_1.frameH) or 32
	local var_99_18 = var_99_2.x
	local var_99_19 = (tonumber(arg_99_1.facing) or -1) < 0 and -1 or 1

	if var_99_19 < 0 then
		var_99_18 = var_99_16 - var_99_18
	end

	local var_99_20 = __recovered_scope_0.var_0_156(arg_99_0)

	return (tonumber(arg_99_1.x) or 0) + (var_99_18 - var_99_16 * 0.5) * var_99_20, (tonumber(arg_99_1.y) or 0) + (var_99_2.y - var_99_17 * 0.5) * var_99_20, var_99_20, var_99_19
end

 function __recovered_scope_0.var_0_159(arg_100_0, arg_100_1, arg_100_2)
	if not arg_100_0 or not arg_100_1 or not arg_100_2 then
		return nil
	end

	local var_100_0, var_100_1, var_100_2, var_100_3 = __recovered_scope_0.var_0_158(arg_100_0, arg_100_1)
	local var_100_4 = {
		kind = "skeleton_dragon_soul_backflow",
		t = 0,
		_damagePending = true,
		sprite = __recovered_scope_0.var_0_142,
		x = var_100_0,
		y = var_100_1,
		scale = var_100_2,
		facing = var_100_3,
		originX = __recovered_scope_0.var_0_151,
		originY = __recovered_scope_0.var_0_152,
		owner = arg_100_1,
		target = arg_100_2,
		_damageFrame = __recovered_scope_0.var_0_145,
		anim = {
			frame = 1,
			name = "soul_backflow",
			t = 0,
			loop = false,
			frames = __recovered_scope_0.var_0_143,
			speed = __recovered_scope_0.var_0_144
		}
	}

	arg_100_0.vfx = arg_100_0.vfx or {}
	arg_100_0.vfx[#arg_100_0.vfx + 1] = var_100_4

	return var_100_4
end

 function __recovered_scope_0.var_0_160(arg_101_0, arg_101_1, arg_101_2)
	arg_101_0._skeletonDragonSoulBackflowCast = {
		fired = false,
		t = 0,
		target = arg_101_1
	}
	arg_101_0._skeletonDragonSoulBackflowNext = arg_101_0._skeletonDragonSoulBackflowClock + arg_101_2
	arg_101_0._bossSkillBusy = true
	arg_101_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_154(arg_101_0)

	arg_101_0.facing = (tonumber(arg_101_1.x) or 0) >= (tonumber(arg_101_0.x) or 0) and 1 or -1

	__recovered_scope_0.var_0_155(arg_101_0, 1)
end

 function __recovered_scope_0.var_0_161(arg_102_0)
	arg_102_0._skeletonDragonSoulBackflowCast = nil
	arg_102_0._bossSkillBusy = nil
	arg_102_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_153(arg_102_0) and arg_102_0.anim then
		arg_102_0.anim.name = "idle"
		arg_102_0.anim.frame = 1
		arg_102_0.anim.t = 0
		arg_102_0.anim.reverse = nil
		arg_102_0.anim._desynced = true
	end
end

 function __recovered_scope_0.var_0_162(arg_103_0, arg_103_1)
	if not __recovered_scope_0.var_0_153(arg_103_0) or not __recovered_scope_0.var_0_153(arg_103_1) then
		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_103_1, arg_103_0) then
		return false
	end

	local var_103_0 = arg_103_1._skeletonDragonSoulBackflowTarget

	if var_103_0 and var_103_0 ~= arg_103_0 and var_103_0._skeletonDragonSoulBackflow and var_103_0._skeletonDragonSoulBackflow.owner == arg_103_1 then
		var_103_0._skeletonDragonSoulBackflow = nil
	end

	local var_103_1 = math.max(1, tonumber(arg_103_1.maxhp or arg_103_1.hp) or 1)

	arg_103_0._skeletonDragonSoulBackflow = {
		visualT = 0,
		owner = arg_103_1,
		t = math.max(0.1, tonumber(arg_103_1.soulBackflowDuration) or __recovered_scope_0.var_0_135),
		healRemaining = var_103_1 * math.max(0, tonumber(arg_103_1.soulBackflowHealMaxHpFrac) or __recovered_scope_0.var_0_137)
	}
	arg_103_1._skeletonDragonSoulBackflowTarget = arg_103_0

	require("src.game.combat").spitecap.onDebuff(arg_103_0, nil, "_skeletonDragonSoulBackflow")

	return true
end

 function __recovered_scope_0.var_0_163(arg_104_0, arg_104_1, arg_104_2)
	arg_104_1._damagePending = false

	local var_104_0 = arg_104_1.owner
	local var_104_1 = arg_104_1.target

	if not __recovered_scope_0.var_0_153(var_104_0) or not __recovered_scope_0.var_0_153(var_104_1) or type(arg_104_2) ~= "function" then
		return false
	end

	local var_104_2 = math.max(0, math.floor((tonumber(var_104_0.dmg) or 0) * math.max(0, tonumber(var_104_0.soulBackflowPrimaryDamageMul) or __recovered_scope_0.var_0_131) + 0.5))

	arg_104_1._soulImpactAt = tonumber(arg_104_1.t) or 0
	arg_104_1._soulImpactTargets = {
		var_104_1
	}

	arg_104_2(var_104_1, var_104_2, var_104_0, {
		area_damage = true,
		skillBig = true,
		skillDamage = true,
		hitFlashColor = {
			0.6470588235294118,
			0.9725490196078431,
			0.8549019607843137
		}
	})

	if __recovered_scope_0.var_0_153(var_104_1) then
		__recovered_scope_0.var_0_162(var_104_1, var_104_0)
	end

	local var_104_3 = math.max(0, tonumber(var_104_0.soulBackflowSplashRadius) or __recovered_scope_0.var_0_133)
	local var_104_4 = {}

	for iter_104_0, iter_104_1 in ipairs(arg_104_0 and arg_104_0.allies or {}) do
		if iter_104_1 ~= var_104_1 and iter_104_1.side == "ally" and __recovered_scope_0.var_0_153(iter_104_1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_104_0, var_104_0, iter_104_1) then
			local var_104_5 = (tonumber(iter_104_1.x) or 0) - (tonumber(var_104_1.x) or 0)
			local var_104_6 = (tonumber(iter_104_1.y) or 0) - (tonumber(var_104_1.y) or 0)
			local var_104_7 = var_104_5 * var_104_5 + var_104_6 * var_104_6

			if var_104_7 <= var_104_3 * var_104_3 then
				var_104_4[#var_104_4 + 1] = {
					target = iter_104_1,
					distanceSquared = var_104_7,
					index = iter_104_0
				}
			end
		end
	end

	table.sort(var_104_4, function(arg_105_0, arg_105_1)
		if arg_105_0.distanceSquared == arg_105_1.distanceSquared then
			return arg_105_0.index < arg_105_1.index
		end

		return arg_105_0.distanceSquared < arg_105_1.distanceSquared
	end)

	local var_104_8 = math.max(0, math.floor((tonumber(var_104_0.dmg) or 0) * math.max(0, tonumber(var_104_0.soulBackflowSplashDamageMul) or __recovered_scope_0.var_0_132) + 0.5))
	local var_104_9 = math.max(0, math.floor(tonumber(var_104_0.soulBackflowSplashMaxTargets) or __recovered_scope_0.var_0_134))

	for iter_104_2 = 1, math.min(var_104_9, #var_104_4) do
		local var_104_10 = var_104_4[iter_104_2].target

		arg_104_1._soulImpactTargets[#arg_104_1._soulImpactTargets + 1] = var_104_10

		arg_104_2(var_104_10, var_104_8, var_104_0, {
			area_damage = true,
			skillDamage = true,
			hitFlashColor = {
				0.2235294117647059,
				0.9372549019607843,
				0.6784313725490196
			}
		})
	end

	arg_104_0.hitStopT = math.max(tonumber(arg_104_0.hitStopT) or 0, 0.045)

	local var_104_11 = arg_104_0.cameraShake
	local var_104_12 = var_104_11 and math.max(0, 1 - (tonumber(var_104_11.t) or 0) / math.max(0.001, tonumber(var_104_11.dur) or 0.12)) or 0

	if (tonumber(var_104_11 and var_104_11.ampY) or 0) * var_104_12 < 1.5 then
		arg_104_0.cameraShake = {
			dur = 0.12,
			ampY = 1.5,
			t = 0
		}
	end

	return true
end

function __recovered_scope_0.var_0_128.update(arg_106_0, arg_106_1, arg_106_2, arg_106_3, arg_106_4, arg_106_5)
	if not arg_106_0 or not __recovered_scope_0.var_0_128.matches(arg_106_1) or not __recovered_scope_0.var_0_153(arg_106_1) then
		return false
	end

	local var_106_0 = math.max(0, tonumber(arg_106_2) or 0)
	local var_106_1 = math.max(0.1, tonumber(arg_106_1.soulBackflowCd) or __recovered_scope_0.var_0_130)
	local var_106_2 = math.max(1, tonumber(arg_106_1.soulBackflowRange) or tonumber(arg_106_1.distance) or 60)

	arg_106_1._skeletonDragonSoulBackflowClock = tonumber(arg_106_1._skeletonDragonSoulBackflowClock) or 0
	arg_106_1._skeletonDragonSoulBackflowNext = tonumber(arg_106_1._skeletonDragonSoulBackflowNext) or math.max(0.1, tonumber(arg_106_1.soulBackflowFirstDelay) or __recovered_scope_0.var_0_129)

	if arg_106_5 then
		arg_106_1._skeletonDragonSoulBackflowClock = arg_106_1._skeletonDragonSoulBackflowClock + var_106_0
	end

	local var_106_3 = arg_106_1._skeletonDragonSoulBackflowCast

	if not var_106_3 then
		arg_106_1._bossSkillBusy = nil
		arg_106_1._bossSkillManualAnim = nil

		if arg_106_5 and arg_106_1._skeletonDragonSoulBackflowClock >= arg_106_1._skeletonDragonSoulBackflowNext then
			local var_106_4 = __recovered_scope_0.var_0_128.findTarget(arg_106_0, arg_106_1, arg_106_0.allies, var_106_2)

			if var_106_4 then
				__recovered_scope_0.var_0_160(arg_106_1, var_106_4, var_106_1)

				return true
			end
		end

		return false
	end

	arg_106_1._bossSkillBusy = true
	arg_106_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_154(arg_106_1)

	if not arg_106_5 then
		return true
	end

	var_106_3.t = (tonumber(var_106_3.t) or 0) + var_106_0

	local var_106_5 = math.min(__recovered_scope_0.var_0_139, 1 + math.floor(var_106_3.t / __recovered_scope_0.var_0_140 + 1e-06))

	__recovered_scope_0.var_0_155(arg_106_1, var_106_5)

	if var_106_5 >= __recovered_scope_0.var_0_141 and not var_106_3.fired then
		__recovered_scope_0.var_0_159(arg_106_0, arg_106_1, var_106_3.target)

		var_106_3.fired = true
	end

	if var_106_3.t >= __recovered_scope_0.var_0_139 * __recovered_scope_0.var_0_140 then
		__recovered_scope_0.var_0_161(arg_106_1)
	end

	return true
end

function __recovered_scope_0.var_0_128.updateWorld(arg_107_0, arg_107_1, arg_107_2)
	if not arg_107_0 then
		return
	end

	local var_107_0 = math.max(0, tonumber(arg_107_1) or 0)

	for iter_107_0, iter_107_1 in ipairs(arg_107_0.allies or {}) do
		local var_107_1 = iter_107_1._skeletonDragonSoulBackflow

		if var_107_1 then
			var_107_1.visualT = (tonumber(var_107_1.visualT) or 0) + math.min(var_107_0, math.max(0, tonumber(var_107_1.t) or 0))
			var_107_1.t = math.max(0, (tonumber(var_107_1.t) or 0) - var_107_0)

			if var_107_1.t <= 0 or not __recovered_scope_0.var_0_153(iter_107_1) or not __recovered_scope_0.var_0_153(var_107_1.owner) then
				if var_107_1.owner and var_107_1.owner._skeletonDragonSoulBackflowTarget == iter_107_1 then
					var_107_1.owner._skeletonDragonSoulBackflowTarget = nil
				end

				iter_107_1._skeletonDragonSoulBackflow = nil
			end
		end
	end
end

function __recovered_scope_0.var_0_128.consumeEffectDamage(arg_108_0, arg_108_1, arg_108_2)
	if not arg_108_1 or arg_108_1.kind ~= "skeleton_dragon_soul_backflow" or not arg_108_1._damagePending or not arg_108_1.anim or not ((tonumber(arg_108_1.anim.frame) or 1) >= (tonumber(arg_108_1._damageFrame) or __recovered_scope_0.var_0_145)) then
		return false
	end

	return __recovered_scope_0.var_0_163(arg_108_0, arg_108_1, arg_108_2)
end

function __recovered_scope_0.var_0_128.drawAbove(arg_109_0)
	if not arg_109_0 then
		return
	end

	local var_109_0 = require("src.ui.effects").soul_backflow_impact

	for iter_109_0, iter_109_1 in ipairs(arg_109_0.enemies or {}) do
		local var_109_1 = iter_109_1._skeletonDragonSoulBackflowCast

		if var_109_1 and not var_109_1.fired and __recovered_scope_0.var_0_153(iter_109_1) then
			local var_109_2, var_109_3, var_109_4, var_109_5 = __recovered_scope_0.var_0_158(arg_109_0, iter_109_1)

			var_109_0.drawCharge(var_109_2, var_109_3, var_109_4, var_109_5, (tonumber(var_109_1.t) or 0) / ((__recovered_scope_0.var_0_141 - 1) * __recovered_scope_0.var_0_140))
		end
	end

	for iter_109_2, iter_109_3 in ipairs(arg_109_0.vfx or {}) do
		if iter_109_3.kind == "skeleton_dragon_soul_backflow" then
			var_109_0.drawEffect(iter_109_3, arg_109_0)
		end
	end
end

function __recovered_scope_0.var_0_128.consumeAllyBasicAttack(arg_110_0, arg_110_1)
	local var_110_0 = arg_110_0 and arg_110_0._skeletonDragonSoulBackflow
	local var_110_1 = var_110_0 and var_110_0.owner

	if not var_110_0 or not ((tonumber(var_110_0.t) or 0) > 0) or not __recovered_scope_0.var_0_153(arg_110_0) or not __recovered_scope_0.var_0_153(var_110_1) then
		if arg_110_0 and var_110_0 then
			arg_110_0._skeletonDragonSoulBackflow = nil
		end

		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_110_0, var_110_1) then
		return false
	end

	local var_110_2 = math.max(0, tonumber(var_110_0.healRemaining) or 0)
	local var_110_3 = math.max(0, (tonumber(var_110_1.maxhp) or tonumber(var_110_1.hp) or 0) - (tonumber(var_110_1.hp) or 0))
	local var_110_4 = math.max(0, math.floor((tonumber(arg_110_1) or 0) * math.max(0, tonumber(var_110_1.soulBackflowHealDamageMul) or __recovered_scope_0.var_0_136) + 0.5))
	local var_110_5 = math.min(var_110_4, var_110_2, var_110_3)

	if var_110_5 > 0 then
		var_110_1.hp = math.min(tonumber(var_110_1.maxhp) or var_110_1.hp, (tonumber(var_110_1.hp) or 0) + var_110_5)
		var_110_0.healRemaining = var_110_2 - var_110_5
		var_110_1.hpbarShowT = math.max(tonumber(var_110_1.hpbarShowT) or 0, 1.2)
		var_110_1.healPlus = {
			spriteTint = true,
			spriteAlpha = 0.9,
			dur = 0.72,
			t = 0,
			amount = var_110_5,
			spriteColor = {
				0.22,
				0.9,
				0.48
			}
		}
		var_110_1.damagePopups = var_110_1.damagePopups or {}
		var_110_1.damagePopups[#var_110_1.damagePopups + 1] = {
			dur = 0.8,
			kind = "heal",
			t = 0,
			amt = var_110_5,
			stackIdx = math.min(1, #var_110_1.damagePopups)
		}

		if #var_110_1.damagePopups > 2 then
			table.remove(var_110_1.damagePopups, 1)
		end
	end

	return true
end

function __recovered_scope_0.var_0_128.releaseOnDeath(arg_111_0)
	if not arg_111_0 then
		return
	end

	local var_111_0 = arg_111_0._skeletonDragonSoulBackflowTarget

	if var_111_0 and var_111_0._skeletonDragonSoulBackflow and var_111_0._skeletonDragonSoulBackflow.owner == arg_111_0 then
		var_111_0._skeletonDragonSoulBackflow = nil
	end

	arg_111_0._skeletonDragonSoulBackflowTarget = nil
	arg_111_0._skeletonDragonSoulBackflowCast = nil
	arg_111_0._bossSkillBusy = nil
	arg_111_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_128.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_129,
	COOLDOWN = __recovered_scope_0.var_0_130,
	PRIMARY_DAMAGE_MUL = __recovered_scope_0.var_0_131,
	SPLASH_DAMAGE_MUL = __recovered_scope_0.var_0_132,
	SPLASH_RADIUS = __recovered_scope_0.var_0_133,
	SPLASH_MAX_TARGETS = __recovered_scope_0.var_0_134,
	BACKFLOW_DURATION = __recovered_scope_0.var_0_135,
	HEAL_DAMAGE_MUL = __recovered_scope_0.var_0_136,
	HEAL_MAX_HP_FRAC = __recovered_scope_0.var_0_137,
	CAST_ANIMATION = __recovered_scope_0.var_0_138,
	CAST_FRAMES = __recovered_scope_0.var_0_139,
	RELEASE_FRAME = __recovered_scope_0.var_0_141,
	EFFECT_FRAMES = __recovered_scope_0.var_0_143,
	EFFECT_DAMAGE_FRAME = __recovered_scope_0.var_0_145
}

 __recovered_scope_0.var_0_164 = __recovered_scope_0.var_0_128
 __recovered_scope_0.var_0_165 = nil
 __recovered_scope_0.var_0_166 = {}
 __recovered_scope_0.var_0_167 = require("src.game.combat").stage6_rift
 __recovered_scope_0.var_0_168 = require("src.game.projectiles").space_assassin_shuriken
 __recovered_scope_0.var_0_169 = 5
 __recovered_scope_0.var_0_170 = 5
 __recovered_scope_0.var_0_171 = 140
 __recovered_scope_0.var_0_172 = 0.11
 __recovered_scope_0.var_0_173 = 6
 __recovered_scope_0.var_0_174 = "attack2"
 __recovered_scope_0.var_0_175 = 11

 function __recovered_scope_0.var_0_176(arg_112_0)
	return arg_112_0 and arg_112_0.alive and not arg_112_0.dying and not arg_112_0._venomMawSwallowed and not arg_112_0.isUndyingSoul and (tonumber(arg_112_0.hp) == nil or (tonumber(arg_112_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_177(arg_113_0)
	arg_113_0.target = nil
	arg_113_0.pendingTarget = nil
	arg_113_0.shotPending = false
	arg_113_0._meleeLoop = false
	arg_113_0._pendingGoblinHit = nil
	arg_113_0._pendingOrcHit = nil
	arg_113_0._pendingHowlHit = nil
	arg_113_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_178(arg_114_0, arg_114_1)
	if not arg_114_0 or not arg_114_0.anim then
		return
	end

	arg_114_0.anim.name = __recovered_scope_0.var_0_174
	arg_114_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_175, math.floor(tonumber(arg_114_1) or 1)))
	arg_114_0.anim.t = 0
	arg_114_0.anim.reverse = nil
	arg_114_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_179(arg_115_0, arg_115_1)
	local var_115_0 = tonumber(arg_115_0 and arg_115_0.ui and arg_115_0.ui.battle and arg_115_0.ui.battle.allySize32) or 32

	if arg_115_0 and type(arg_115_0.entityGroundPoint) == "function" then
		local var_115_1, var_115_2 = arg_115_0:entityGroundPoint(arg_115_1, var_115_0)

		if var_115_1 and var_115_2 then
			return var_115_1, var_115_2
		end
	end

	return tonumber(arg_115_1 and arg_115_1.x) or 0, tonumber(arg_115_1 and arg_115_1.y) or 0
end

 function __recovered_scope_0.var_0_180(arg_116_0, arg_116_1, arg_116_2)
	local var_116_0, var_116_1 = __recovered_scope_0.var_0_179(arg_116_0, arg_116_1)
	local var_116_2, var_116_3 = __recovered_scope_0.var_0_179(arg_116_0, arg_116_2)
	local var_116_4 = tonumber(arg_116_0 and arg_116_0.ui and arg_116_0.ui.battle and arg_116_0.ui.battle.rangeEllipseYScale) or 0.5
	local var_116_5 = math.max(0.1, math.min(1, var_116_4))
	local var_116_6 = var_116_2 - var_116_0
	local var_116_7 = (var_116_3 - var_116_1) / var_116_5

	return var_116_6 * var_116_6 + var_116_7 * var_116_7
end

function __recovered_scope_0.var_0_166.matches(arg_117_0)
	if not arg_117_0 then
		return false
	end

	local var_117_0 = tostring(arg_117_0.kind or "")
	local var_117_1 = tostring(arg_117_0.skin or "")

	return var_117_0 == "Space Assassin" or var_117_0 == "우주 암살자" or var_117_0 == "우주 암살자 (Space Assassin)" or var_117_1 == "Space Assassin" or var_117_1 == "우주 암살자" or var_117_1 == "우주 암살자 (Space Assassin)"
end

function __recovered_scope_0.var_0_166.findTarget(arg_118_0, arg_118_1, arg_118_2, arg_118_3)
	arg_118_2 = require("src.game.combat").wooden_watchtower.targets(arg_118_1, arg_118_2, nil, arg_118_0)

	if not arg_118_0 or not __recovered_scope_0.var_0_176(arg_118_1) then
		return nil
	end

	local var_118_0 = __recovered_scope_0.var_0_167.entityLane(arg_118_0, arg_118_1)

	if var_118_0 == nil then
		return nil
	end

	local var_118_1 = math.max(1, tonumber(arg_118_3) or __recovered_scope_0.var_0_171)
	local var_118_2 = var_118_1 * var_118_1
	local var_118_3
	local var_118_4

	for iter_118_0, iter_118_1 in ipairs(arg_118_2 or {}) do
		if iter_118_1.side == "ally" and __recovered_scope_0.var_0_176(iter_118_1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_118_0, arg_118_1, iter_118_1) then
			local var_118_5 = __recovered_scope_0.var_0_167.entityLane(arg_118_0, iter_118_1)

			if var_118_5 ~= nil and var_118_5 ~= var_118_0 then
				local var_118_6 = __recovered_scope_0.var_0_180(arg_118_0, arg_118_1, iter_118_1)

				if var_118_6 <= var_118_2 and (var_118_4 == nil or var_118_6 < var_118_4) then
					var_118_3 = iter_118_1
					var_118_4 = var_118_6
				end
			end
		end
	end

	return var_118_3, var_118_4
end

 function __recovered_scope_0.var_0_181(arg_119_0, arg_119_1)
	arg_119_0._spaceAssassinShurikenCast = {
		fired = false,
		t = 0,
		target = arg_119_1
	}
	arg_119_0._bossSkillBusy = true
	arg_119_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_177(arg_119_0)

	arg_119_0.facing = (tonumber(arg_119_1.x) or 0) >= (tonumber(arg_119_0.x) or 0) and 1 or -1

	__recovered_scope_0.var_0_178(arg_119_0, 1)
end

 function __recovered_scope_0.var_0_182(arg_120_0)
	arg_120_0._spaceAssassinShurikenCast = nil
	arg_120_0._bossSkillBusy = nil
	arg_120_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_176(arg_120_0) and arg_120_0.anim then
		arg_120_0.anim.name = "idle"
		arg_120_0.anim.frame = 1
		arg_120_0.anim.t = 0
		arg_120_0.anim.reverse = nil
		arg_120_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_166.update(arg_121_0, arg_121_1, arg_121_2, arg_121_3, arg_121_4, arg_121_5)
	if not arg_121_0 or not __recovered_scope_0.var_0_166.matches(arg_121_1) or not __recovered_scope_0.var_0_176(arg_121_1) then
		return false
	end

	local var_121_0 = math.max(0, tonumber(arg_121_2) or 0)
	local var_121_1 = math.max(0.1, tonumber(arg_121_1.spaceAssassinShurikenCd) or __recovered_scope_0.var_0_170)
	local var_121_2 = math.max(1, tonumber(arg_121_1.spaceAssassinShurikenRange) or __recovered_scope_0.var_0_171)

	arg_121_1._spaceAssassinShurikenClock = tonumber(arg_121_1._spaceAssassinShurikenClock) or 0
	arg_121_1._spaceAssassinShurikenNext = tonumber(arg_121_1._spaceAssassinShurikenNext) or math.max(0.1, tonumber(arg_121_1.spaceAssassinShurikenFirstDelay) or __recovered_scope_0.var_0_169)

	if arg_121_5 then
		arg_121_1._spaceAssassinShurikenClock = arg_121_1._spaceAssassinShurikenClock + var_121_0
	end

	local var_121_3 = arg_121_1._spaceAssassinShurikenCast

	if not var_121_3 then
		arg_121_1._bossSkillBusy = nil
		arg_121_1._bossSkillManualAnim = nil

		if arg_121_5 and arg_121_1._spaceAssassinShurikenClock >= arg_121_1._spaceAssassinShurikenNext then
			local var_121_4 = __recovered_scope_0.var_0_166.findTarget(arg_121_0, arg_121_1, arg_121_0.allies, var_121_2)

			if var_121_4 then
				__recovered_scope_0.var_0_181(arg_121_1, var_121_4)

				return true
			end
		end

		return false
	end

	arg_121_1._bossSkillBusy = true
	arg_121_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_177(arg_121_1)

	if not arg_121_5 then
		return true
	end

	var_121_3.t = (tonumber(var_121_3.t) or 0) + var_121_0

	local var_121_5 = math.max(0.01, tonumber(arg_121_1.spaceAssassinShurikenFrameDur) or __recovered_scope_0.var_0_172)
	local var_121_6 = math.max(1, math.min(__recovered_scope_0.var_0_175, math.floor(tonumber(arg_121_1.spaceAssassinShurikenReleaseFrame) or __recovered_scope_0.var_0_173)))
	local var_121_7 = math.min(__recovered_scope_0.var_0_175, 1 + math.floor(var_121_3.t / var_121_5 + 1e-06))

	__recovered_scope_0.var_0_178(arg_121_1, var_121_7)

	if var_121_6 <= var_121_7 and not var_121_3.fired then
		local var_121_8 = __recovered_scope_0.var_0_166.findTarget(arg_121_0, arg_121_1, arg_121_0.allies, var_121_2)

		if var_121_8 then
			arg_121_1.facing = (tonumber(var_121_8.x) or 0) >= (tonumber(arg_121_1.x) or 0) and 1 or -1

			if __recovered_scope_0.var_0_168.spawn(arg_121_0, arg_121_1, var_121_8) then
				arg_121_1._spaceAssassinShurikenNext = arg_121_1._spaceAssassinShurikenClock + var_121_1
			end
		end

		var_121_3.fired = true
	end

	if var_121_3.t >= var_121_5 * __recovered_scope_0.var_0_175 then
		__recovered_scope_0.var_0_182(arg_121_1)
	end

	return true
end

function __recovered_scope_0.var_0_166.releaseOnDeath(arg_122_0)
	if not arg_122_0 then
		return
	end

	arg_122_0._spaceAssassinShurikenCast = nil
	arg_122_0._bossSkillBusy = nil
	arg_122_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_166.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_169,
	COOLDOWN = __recovered_scope_0.var_0_170,
	RANGE = __recovered_scope_0.var_0_171,
	FRAME_DURATION = __recovered_scope_0.var_0_172,
	RELEASE_FRAME = __recovered_scope_0.var_0_173,
	CAST_ANIMATION = __recovered_scope_0.var_0_174,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_175
}

 __recovered_scope_0.var_0_183 = __recovered_scope_0.var_0_166
 __recovered_scope_0.var_0_184 = nil
 __recovered_scope_0.var_0_185 = {}
 __recovered_scope_0.var_0_186 = require("src.game.combat").stage6_rift
 __recovered_scope_0.var_0_187 = 3
 __recovered_scope_0.var_0_188 = 6
 __recovered_scope_0.var_0_189 = 2.5
 __recovered_scope_0.var_0_190 = 0
 __recovered_scope_0.var_0_191 = 0.14
 __recovered_scope_0.var_0_192 = "attack2"
 __recovered_scope_0.var_0_193 = 12
 __recovered_scope_0.var_0_194 = 7

 function __recovered_scope_0.var_0_195(arg_123_0)
	return arg_123_0 and arg_123_0.alive and not arg_123_0.dying and not arg_123_0._venomMawSwallowed and not arg_123_0.isUndyingSoul and (tonumber(arg_123_0.hp) == nil or (tonumber(arg_123_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_196(arg_124_0)
	arg_124_0.pendingTarget = nil
	arg_124_0.shotPending = false
	arg_124_0._meleeLoop = nil
	arg_124_0._pendingGoblinHit = nil
	arg_124_0._pendingOrcHit = nil
	arg_124_0._pendingHowlHit = nil
	arg_124_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_197(arg_125_0, arg_125_1, arg_125_2)
	if not arg_125_0 or not arg_125_0.anim then
		return
	end

	arg_125_0.anim.name = arg_125_1
	arg_125_0.anim.frame = math.max(1, math.floor(tonumber(arg_125_2) or 1))
	arg_125_0.anim.t = 0
	arg_125_0.anim.reverse = nil
	arg_125_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_198(arg_126_0, arg_126_1)
	local var_126_0 = type(arg_126_1) == "table" and arg_126_1 or nil

	if var_126_0 and (var_126_0.singleProjectile == true or var_126_0.projectileAttack == true or var_126_0.rangedAttack == true) then
		return true
	end

	if not arg_126_0 then
		return false
	end

	if arg_126_0.ranged == true or arg_126_0.isRanged == true or arg_126_0.attackType == "ranged" then
		return true
	end

	local var_126_1 = tostring(arg_126_0.role or "")

	if var_126_1 == "archer" or var_126_1 == "mage" then
		return true
	end

	return (tonumber(arg_126_0.distance) or 0) >= 70
end

function __recovered_scope_0.var_0_185.matches(arg_127_0)
	if not arg_127_0 then
		return false
	end

	local var_127_0 = tostring(arg_127_0.kind or "")
	local var_127_1 = tostring(arg_127_0.skin or "")

	return var_127_0 == "Space Guardian" or var_127_0 == "우주 수호자" or var_127_0 == "우주 수호자 (Space Guardian)" or var_127_1 == "Space Guardian" or var_127_1 == "우주 수호자" or var_127_1 == "우주 수호자 (Space Guardian)"
end

 function __recovered_scope_0.var_0_199(arg_128_0, arg_128_1)
	arg_128_0._spaceGuardianGuardCast = {
		shieldActivated = false,
		t = 0
	}
	arg_128_0._spaceGuardianGuardNext = arg_128_0._spaceGuardianGuardClock + arg_128_1
	arg_128_0._bossSkillBusy = true
	arg_128_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_196(arg_128_0)
	__recovered_scope_0.var_0_197(arg_128_0, __recovered_scope_0.var_0_192, 1)
end

 function __recovered_scope_0.var_0_200(arg_129_0)
	local var_129_0 = math.max(0.1, tonumber(arg_129_0.spaceGuardianShieldDur) or __recovered_scope_0.var_0_189)

	arg_129_0._spaceGuardianShieldT = var_129_0
	arg_129_0._spaceGuardianShieldMaxDur = var_129_0
	arg_129_0._spaceGuardianShieldActive = true
	arg_129_0._spaceGuardianShieldSpawnBurst = {
		dur = 0.35,
		t = 0
	}

	local var_129_1 = {}

	for iter_129_0 = 1, 12 do
		local var_129_2 = iter_129_0 / 12 * math.pi * 2 + iter_129_0 * 0.35
		local var_129_3 = 40 + iter_129_0 * 7 % 5 * 10

		table.insert(var_129_1, {
			x = 0,
			y = 0,
			vx = math.cos(var_129_2) * var_129_3,
			vy = math.sin(var_129_2) * var_129_3 * 0.7,
			life = 0.3 + iter_129_0 * 3 % 4 * 0.03,
			maxLife = 0.3 + iter_129_0 * 3 % 4 * 0.03,
			isLarge = iter_129_0 % 3 == 0
		})
	end

	arg_129_0._spaceGuardianSparks = var_129_1
end

 function __recovered_scope_0.var_0_201(arg_130_0)
	arg_130_0._spaceGuardianGuardCast = nil
	arg_130_0._bossSkillBusy = nil
	arg_130_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_195(arg_130_0) then
		__recovered_scope_0.var_0_197(arg_130_0, "idle", 1)
	end
end

function __recovered_scope_0.var_0_185.update(arg_131_0, arg_131_1, arg_131_2, arg_131_3, arg_131_4, arg_131_5)
	if not arg_131_0 or not __recovered_scope_0.var_0_185.matches(arg_131_1) or not __recovered_scope_0.var_0_195(arg_131_1) then
		return false
	end

	local var_131_0 = math.max(0, tonumber(arg_131_2) or 0)
	local var_131_1 = math.max(0.1, tonumber(arg_131_1.spaceGuardianShieldCd) or __recovered_scope_0.var_0_188)

	arg_131_1._spaceGuardianGuardClock = tonumber(arg_131_1._spaceGuardianGuardClock) or 0
	arg_131_1._spaceGuardianGuardNext = tonumber(arg_131_1._spaceGuardianGuardNext) or math.max(0.1, tonumber(arg_131_1.spaceGuardianShieldFirstDelay) or __recovered_scope_0.var_0_187)

	if arg_131_5 then
		arg_131_1._spaceGuardianGuardClock = arg_131_1._spaceGuardianGuardClock + var_131_0
	end

	arg_131_1._spaceGuardianShieldHitT = math.max(0, (tonumber(arg_131_1._spaceGuardianShieldHitT) or 0) - var_131_0)

	local var_131_2 = math.max(0, tonumber(arg_131_1._spaceGuardianShieldT) or 0)

	if var_131_2 > 0 then
		if arg_131_5 then
			var_131_2 = math.max(0, var_131_2 - var_131_0)
		end

		arg_131_1._spaceGuardianShieldT = var_131_2
		arg_131_1._spaceGuardianShieldActive = var_131_2 > 0 or nil
	else
		arg_131_1._spaceGuardianShieldT = nil
		arg_131_1._spaceGuardianShieldActive = nil
	end

	local var_131_3 = arg_131_1._spaceGuardianShieldSpawnBurst

	if var_131_3 then
		var_131_3.t = var_131_3.t + var_131_0

		if var_131_3.t >= var_131_3.dur then
			arg_131_1._spaceGuardianShieldSpawnBurst = nil
		end
	end

	local var_131_4 = arg_131_1._spaceGuardianSparks

	if var_131_4 then
		local var_131_5 = 0

		for iter_131_0, iter_131_1 in ipairs(var_131_4) do
			iter_131_1.life = iter_131_1.life - var_131_0

			if iter_131_1.life > 0 then
				var_131_5 = var_131_5 + 1
				iter_131_1.x = iter_131_1.x + iter_131_1.vx * var_131_0
				iter_131_1.y = iter_131_1.y + iter_131_1.vy * var_131_0
				iter_131_1.vx = iter_131_1.vx * math.max(0, 1 - var_131_0 * 4.5)
				iter_131_1.vy = iter_131_1.vy * math.max(0, 1 - var_131_0 * 4.5)
			end
		end

		if var_131_5 == 0 and not var_131_3 then
			arg_131_1._spaceGuardianSparks = nil
		end
	end

	local var_131_6 = arg_131_1._spaceGuardianGuardCast

	if var_131_6 then
		arg_131_1._bossSkillBusy = true
		arg_131_1._bossSkillManualAnim = true

		__recovered_scope_0.var_0_196(arg_131_1)

		if not arg_131_5 then
			return true
		end

		var_131_6.t = (tonumber(var_131_6.t) or 0) + var_131_0

		local var_131_7 = math.max(0.01, tonumber(arg_131_1.spaceGuardianShieldFrameDur) or __recovered_scope_0.var_0_191)
		local var_131_8 = math.min(__recovered_scope_0.var_0_193, 1 + math.floor(var_131_6.t / var_131_7 + 1e-06))

		if not var_131_6.shieldActivated and var_131_8 >= __recovered_scope_0.var_0_194 then
			var_131_8 = __recovered_scope_0.var_0_194
		end

		__recovered_scope_0.var_0_197(arg_131_1, __recovered_scope_0.var_0_192, var_131_8)

		if var_131_8 == __recovered_scope_0.var_0_194 and not var_131_6.shieldActivated then
			var_131_6.shieldActivated = true

			__recovered_scope_0.var_0_200(arg_131_1)
		end

		if var_131_6.t >= var_131_7 * __recovered_scope_0.var_0_193 then
			__recovered_scope_0.var_0_201(arg_131_1)
		end

		return true
	end

	arg_131_1._bossSkillBusy = nil
	arg_131_1._bossSkillManualAnim = nil

	if arg_131_1._spaceGuardianShieldActive then
		return false
	end

	if arg_131_5 and arg_131_1._spaceGuardianGuardClock >= arg_131_1._spaceGuardianGuardNext then
		__recovered_scope_0.var_0_199(arg_131_1, var_131_1)

		return true
	end

	return false
end

function __recovered_scope_0.var_0_185.blocksDamageToEnemy(arg_132_0, arg_132_1, arg_132_2, arg_132_3)
	if not arg_132_0 or not __recovered_scope_0.var_0_185.matches(arg_132_1) or not __recovered_scope_0.var_0_195(arg_132_1) or not arg_132_1._spaceGuardianShieldActive or not ((tonumber(arg_132_1._spaceGuardianShieldT) or 0) > 0) or not __recovered_scope_0.var_0_198(arg_132_2, arg_132_3) then
		return false
	end

	local var_132_0 = __recovered_scope_0.var_0_186.entityLane(arg_132_0, arg_132_1)
	local var_132_1 = __recovered_scope_0.var_0_186.entityLane(arg_132_0, arg_132_2)

	if var_132_0 == nil or var_132_1 == nil or var_132_0 == var_132_1 then
		return false
	end

	arg_132_1._spaceGuardianShieldHitT = 0.18

	return true
end

function __recovered_scope_0.var_0_185.retainsAllyTarget(arg_133_0, arg_133_1, arg_133_2)
	return __recovered_scope_0.var_0_185.matches(arg_133_1) and __recovered_scope_0.var_0_195(arg_133_1) and (arg_133_1._spaceGuardianGuardCast ~= nil or arg_133_1._spaceGuardianShieldActive and (tonumber(arg_133_1._spaceGuardianShieldT) or 0) > 0) and __recovered_scope_0.var_0_186.targetAllowed(arg_133_0, arg_133_2, arg_133_1)
end

function __recovered_scope_0.var_0_185.modifyDamageToEnemy(arg_134_0, arg_134_1, arg_134_2)
	local var_134_0 = math.max(0, tonumber(arg_134_1) or 0)

	if not __recovered_scope_0.var_0_185.matches(arg_134_0) or not __recovered_scope_0.var_0_195(arg_134_0) or not arg_134_0._spaceGuardianShieldActive or not ((tonumber(arg_134_0._spaceGuardianShieldT) or 0) > 0) then
		return var_134_0
	end

	return var_134_0 * (1 - math.max(0, math.min(1, tonumber(arg_134_0.spaceGuardianShieldDamageReduction) or __recovered_scope_0.var_0_190)))
end

function __recovered_scope_0.var_0_185.drawAbove(arg_135_0)
	if not arg_135_0 or not love or not love.graphics then
		return
	end

	local var_135_0 = love.timer and love.timer.getTime and love.timer.getTime() or 0
	local var_135_1 = tonumber(arg_135_0.ui and arg_135_0.ui.battle and arg_135_0.ui.battle.allySize32) or 32

	love.graphics.push("all")

	for iter_135_0, iter_135_1 in ipairs(arg_135_0.enemies or {}) do
		if __recovered_scope_0.var_0_185.matches(iter_135_1) and __recovered_scope_0.var_0_195(iter_135_1) and (iter_135_1._spaceGuardianShieldActive or iter_135_1._spaceGuardianShieldSpawnBurst) then
			local var_135_2
			local var_135_3
			local var_135_4
			local var_135_5

			if type(arg_135_0.entitySpriteBoundsWorld) == "function" then
				var_135_2, var_135_3, var_135_4, var_135_5 = arg_135_0:entitySpriteBoundsWorld(iter_135_1, var_135_1, true)
			end

			local var_135_6, var_135_7

			var_135_6, var_135_7 = tonumber(var_135_4) or var_135_1, tonumber(var_135_5) or var_135_1

			local var_135_8 = math.floor((tonumber(var_135_2) and var_135_2 + var_135_6 * 0.5 or tonumber(iter_135_1.x) or 0) + 0.5)
			local var_135_9 = math.floor((tonumber(var_135_3) and var_135_3 + var_135_7 * 0.5 or (tonumber(iter_135_1.y) or 0) - var_135_1 * 0.28) + 0.5)
			local var_135_10 = math.max(0, tonumber(iter_135_1._spaceGuardianShieldT) or 0)
			local var_135_11 = math.max(0, math.min(1, var_135_10 / 0.22))
			local var_135_12 = iter_135_1._spaceGuardianShieldSpawnBurst
			local var_135_13 = var_135_12 and math.min(1, (tonumber(var_135_12.t) or 0) / math.max(0.01, tonumber(var_135_12.dur) or 0.35)) or 1
			local var_135_14 = math.max(0, math.min(1, (tonumber(iter_135_1._spaceGuardianShieldHitT) or 0) / 0.18))

			love.graphics.setBlendMode("add", "alphamultiply")

			if var_135_12 and var_135_13 < 1 then
				local var_135_15 = (1 - var_135_13) * (iter_135_1._spaceGuardianShieldActive and var_135_11 or 1)
				local var_135_16 = math.floor(4 + var_135_13 * 16)
				local var_135_17 = var_135_9 + math.floor(var_135_7 * 0.44)

				love.graphics.setColor(1, 0.92, 0.55, 0.95 * var_135_15)
				love.graphics.rectangle("fill", var_135_8 - var_135_16, var_135_17, var_135_16 * 2 + 1, 1)
				love.graphics.setColor(1, 1, 1, 1 * var_135_15)
				love.graphics.rectangle("fill", var_135_8 - 1, var_135_9 - 1, 3, 3)

				if iter_135_1._spaceGuardianSparks then
					for iter_135_2, iter_135_3 in ipairs(iter_135_1._spaceGuardianSparks) do
						if iter_135_3.life > 0 then
							local var_135_18 = iter_135_3.life / iter_135_3.maxLife * var_135_15
							local var_135_19 = math.floor(var_135_8 + iter_135_3.x + 0.5)
							local var_135_20 = math.floor(var_135_9 + iter_135_3.y + 0.5)

							if iter_135_3.isLarge then
								love.graphics.setColor(1, 0.92, 0.5, 1 * var_135_18)
								love.graphics.rectangle("fill", var_135_19 - 1, var_135_20 - 1, 2, 2)
							else
								love.graphics.setColor(0.35, 0.9, 1, 0.95 * var_135_18)
								love.graphics.rectangle("fill", var_135_19, var_135_20, 1, 1)
							end
						end
					end
				end
			end

			if iter_135_1._spaceGuardianShieldActive and var_135_11 > 0.001 then
				local var_135_21 = math.floor(var_135_6 * 0.46 + 4)
				local var_135_22 = math.floor(var_135_7 * 0.44 + 4)
				local var_135_23 = 4

				for iter_135_4 = 1, var_135_23 do
					local var_135_24 = var_135_0 * 1.6 + iter_135_4 * (math.pi * 2 / var_135_23)
					local var_135_25 = math.floor(var_135_8 + math.cos(var_135_24) * var_135_21 + 0.5)
					local var_135_26 = math.floor(var_135_9 + math.sin(var_135_24) * var_135_22 + 0.5)
					local var_135_27 = (0.55 + 0.45 * ((math.sin(var_135_24) + 1) * 0.5)) * var_135_11
					local var_135_28 = var_135_24 - 0.16
					local var_135_29 = math.floor(var_135_8 + math.cos(var_135_28) * var_135_21 + 0.5)
					local var_135_30 = math.floor(var_135_9 + math.sin(var_135_28) * var_135_22 + 0.5)

					love.graphics.setColor(0.3, 0.85, 1, 0.55 * var_135_27)
					love.graphics.rectangle("fill", var_135_29, var_135_30, 1, 1)
					love.graphics.setColor(0.4, 0.92, 1, 0.95 * var_135_27)
					love.graphics.rectangle("fill", var_135_25 - 1, var_135_26, 3, 1)
					love.graphics.rectangle("fill", var_135_25, var_135_26 - 1, 1, 3)
					love.graphics.setColor(1, 1, 1, 1 * var_135_27)
					love.graphics.rectangle("fill", var_135_25, var_135_26, 1, 1)
				end

				if var_135_14 > 0 then
					local var_135_31 = (iter_135_1.facing == 1 or iter_135_1.facing == -1) and iter_135_1.facing or -1

					love.graphics.setColor(1, 1, 1, var_135_14 * 1 * var_135_11)

					for iter_135_5 = 1, 4 do
						local var_135_32 = math.floor(var_135_8 + var_135_31 * (var_135_6 * 0.4 + iter_135_5 * 3) + 0.5)
						local var_135_33 = math.floor(var_135_9 + (iter_135_5 - 2.5) * 5 + 0.5)

						love.graphics.rectangle("fill", var_135_32, var_135_33, 1, 1)
					end
				end
			end
		end
	end

	love.graphics.pop()
end

function __recovered_scope_0.var_0_185.releaseOnDeath(arg_136_0)
	if not arg_136_0 then
		return
	end

	arg_136_0._spaceGuardianGuardCast = nil
	arg_136_0._spaceGuardianShieldT = nil
	arg_136_0._spaceGuardianShieldActive = nil
	arg_136_0._spaceGuardianShieldHitT = nil
	arg_136_0._spaceGuardianShieldSpawnBurst = nil
	arg_136_0._spaceGuardianSparks = nil
	arg_136_0._bossSkillBusy = nil
	arg_136_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_185.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_187,
	COOLDOWN = __recovered_scope_0.var_0_188,
	SHIELD_DURATION = __recovered_scope_0.var_0_189,
	DAMAGE_REDUCTION = __recovered_scope_0.var_0_190,
	FRAME_DURATION = __recovered_scope_0.var_0_191,
	CAST_ANIMATION = __recovered_scope_0.var_0_192,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_193,
	SHIELD_TRIGGER_FRAME = __recovered_scope_0.var_0_194
}

 __recovered_scope_0.var_0_202 = __recovered_scope_0.var_0_185
 __recovered_scope_0.var_0_203 = nil
 __recovered_scope_0.var_0_204 = {}
 __recovered_scope_0.var_0_205 = require("src.game.projectiles").space_hunter_gravity_arrow
 __recovered_scope_0.var_0_206 = 4
 __recovered_scope_0.var_0_207 = 7
 __recovered_scope_0.var_0_208 = 3
 __recovered_scope_0.var_0_209 = 55
 __recovered_scope_0.var_0_210 = 0.12
 __recovered_scope_0.var_0_211 = 6
 __recovered_scope_0.var_0_212 = 0.34
 __recovered_scope_0.var_0_213 = "attack2"
 __recovered_scope_0.var_0_214 = 17

 function __recovered_scope_0.var_0_215(arg_137_0)
	return arg_137_0 and arg_137_0.alive and not arg_137_0.dying and not arg_137_0._venomMawSwallowed and not arg_137_0.isUndyingSoul and (tonumber(arg_137_0.hp) == nil or (tonumber(arg_137_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_216(arg_138_0)
	arg_138_0.target = nil
	arg_138_0.pendingTarget = nil
	arg_138_0.shotPending = false
	arg_138_0._meleeLoop = nil
	arg_138_0._pendingGoblinHit = nil
	arg_138_0._pendingOrcHit = nil
	arg_138_0._pendingHowlHit = nil
	arg_138_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_217(arg_139_0, arg_139_1)
	if not arg_139_0 or not arg_139_0.anim then
		return
	end

	arg_139_0.anim.name = __recovered_scope_0.var_0_213
	arg_139_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_214, math.floor(tonumber(arg_139_1) or 1)))
	arg_139_0.anim.t = 0
	arg_139_0.anim.reverse = nil
	arg_139_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_218(arg_140_0, arg_140_1)
	local var_140_0 = tonumber(arg_140_0 and arg_140_0.ui and arg_140_0.ui.battle and arg_140_0.ui.battle.allySize32) or 32

	if arg_140_0 and type(arg_140_0.entityGroundPoint) == "function" then
		local var_140_1, var_140_2 = arg_140_0:entityGroundPoint(arg_140_1, var_140_0)

		if var_140_1 and var_140_2 then
			return var_140_1, var_140_2
		end
	end

	return tonumber(arg_140_1 and arg_140_1.x) or 0, tonumber(arg_140_1 and arg_140_1.y) or 0
end

 function __recovered_scope_0.var_0_219(arg_141_0, arg_141_1, arg_141_2)
	local var_141_0, var_141_1 = __recovered_scope_0.var_0_218(arg_141_0, arg_141_1)
	local var_141_2, var_141_3 = __recovered_scope_0.var_0_218(arg_141_0, arg_141_2)
	local var_141_4 = tonumber(arg_141_0 and arg_141_0.ui and arg_141_0.ui.battle and arg_141_0.ui.battle.rangeEllipseYScale) or 0.5
	local var_141_5 = math.max(0.1, math.min(1, var_141_4))
	local var_141_6 = var_141_2 - var_141_0
	local var_141_7 = (var_141_3 - var_141_1) / var_141_5

	return var_141_6 * var_141_6 + var_141_7 * var_141_7
end

 function __recovered_scope_0.var_0_220(arg_142_0)
	if not arg_142_0 then
		return false
	end

	local var_142_0 = tostring(arg_142_0.role or "")

	if var_142_0 == "archer" or var_142_0 == "mage" or var_142_0 == "ranged" then
		return true
	end

	if arg_142_0.ranged == true or arg_142_0.isRanged == true or arg_142_0.attackType == "ranged" then
		return true
	end

	local var_142_1 = tonumber(arg_142_0.distance) or 0
	local var_142_2 = arg_142_0._spaceHunterGravityRange

	var_142_1 = var_142_2 and var_142_2.originalDistance ~= nil and tonumber(var_142_2.originalDistance) or var_142_1

	return var_142_1 >= 70
end

function __recovered_scope_0.var_0_204.matches(arg_143_0)
	if not arg_143_0 then
		return false
	end

	local var_143_0 = tostring(arg_143_0.kind or "")
	local var_143_1 = tostring(arg_143_0.skin or "")

	return var_143_0 == "Space Hunter" or var_143_0 == "우주 사냥꾼" or var_143_0 == "우주 사냥꾼 (Space Hunter)" or var_143_1 == "Space Hunter" or var_143_1 == "우주 사냥꾼" or var_143_1 == "우주 사냥꾼 (Space Hunter)"
end

function __recovered_scope_0.var_0_204.findTarget(arg_144_0, arg_144_1, arg_144_2)
	arg_144_2 = require("src.game.combat").wooden_watchtower.targets(arg_144_1, arg_144_2, nil, arg_144_0)

	if not arg_144_0 or not __recovered_scope_0.var_0_215(arg_144_1) then
		return nil
	end

	local var_144_0
	local var_144_1

	for iter_144_0, iter_144_1 in ipairs(arg_144_2 or {}) do
		if iter_144_1.side == "ally" and __recovered_scope_0.var_0_215(iter_144_1) and __recovered_scope_0.var_0_220(iter_144_1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_144_0, arg_144_1, iter_144_1) then
			local var_144_2 = __recovered_scope_0.var_0_219(arg_144_0, arg_144_1, iter_144_1)

			if var_144_1 == nil or var_144_1 < var_144_2 then
				var_144_0 = iter_144_1
				var_144_1 = var_144_2
			end
		end
	end

	return var_144_0, var_144_1
end

 function __recovered_scope_0.var_0_221(arg_145_0, arg_145_1, arg_145_2)
	arg_145_0._spaceHunterGravityCast = {
		fired = false,
		t = 0,
		target = arg_145_1
	}
	arg_145_0._spaceHunterGravityNext = arg_145_0._spaceHunterGravityClock + arg_145_2
	arg_145_0._bossSkillBusy = true
	arg_145_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_216(arg_145_0)

	arg_145_0.facing = (tonumber(arg_145_1.x) or 0) >= (tonumber(arg_145_0.x) or 0) and 1 or -1

	__recovered_scope_0.var_0_217(arg_145_0, 1)
end

 function __recovered_scope_0.var_0_222(arg_146_0)
	arg_146_0._spaceHunterGravityCast = nil
	arg_146_0._bossSkillBusy = nil
	arg_146_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_215(arg_146_0) and arg_146_0.anim then
		arg_146_0.anim.name = "idle"
		arg_146_0.anim.frame = 1
		arg_146_0.anim.t = 0
		arg_146_0.anim.reverse = nil
		arg_146_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_204.update(arg_147_0, arg_147_1, arg_147_2, arg_147_3, arg_147_4, arg_147_5)
	if not arg_147_0 or not __recovered_scope_0.var_0_204.matches(arg_147_1) or not __recovered_scope_0.var_0_215(arg_147_1) then
		return false
	end

	local var_147_0 = math.max(0, tonumber(arg_147_2) or 0)
	local var_147_1 = math.max(0.1, tonumber(arg_147_1.spaceHunterGravityArrowCd) or __recovered_scope_0.var_0_207)

	arg_147_1._spaceHunterGravityClock = tonumber(arg_147_1._spaceHunterGravityClock) or 0
	arg_147_1._spaceHunterGravityNext = tonumber(arg_147_1._spaceHunterGravityNext) or math.max(0.1, tonumber(arg_147_1.spaceHunterGravityArrowFirstDelay) or __recovered_scope_0.var_0_206)

	if arg_147_5 then
		arg_147_1._spaceHunterGravityClock = arg_147_1._spaceHunterGravityClock + var_147_0
	end

	local var_147_2 = arg_147_1._spaceHunterGravityCast

	if not var_147_2 then
		arg_147_1._bossSkillBusy = nil
		arg_147_1._bossSkillManualAnim = nil

		if arg_147_5 and arg_147_1._spaceHunterGravityClock >= arg_147_1._spaceHunterGravityNext then
			local var_147_3 = __recovered_scope_0.var_0_204.findTarget(arg_147_0, arg_147_1, arg_147_0.allies)

			if var_147_3 then
				__recovered_scope_0.var_0_221(arg_147_1, var_147_3, var_147_1)

				return true
			end
		end

		return false
	end

	arg_147_1._bossSkillBusy = true
	arg_147_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_216(arg_147_1)

	if not arg_147_5 then
		return true
	end

	var_147_2.t = (tonumber(var_147_2.t) or 0) + var_147_0

	local var_147_4 = math.max(0.01, tonumber(arg_147_1.spaceHunterGravityArrowFrameDur) or __recovered_scope_0.var_0_210)
	local var_147_5 = math.max(1, math.min(__recovered_scope_0.var_0_214, math.floor(tonumber(arg_147_1.spaceHunterGravityArrowReleaseFrame) or __recovered_scope_0.var_0_211)))
	local var_147_6 = math.min(__recovered_scope_0.var_0_214, 1 + math.floor(var_147_2.t / var_147_4 + 1e-06))

	if not var_147_2.fired and var_147_5 <= var_147_6 then
		var_147_6 = var_147_5
	end

	__recovered_scope_0.var_0_217(arg_147_1, var_147_6)

	if var_147_6 == var_147_5 and not var_147_2.fired then
		local var_147_7 = __recovered_scope_0.var_0_204.findTarget(arg_147_0, arg_147_1, arg_147_0.allies)

		if var_147_7 then
			arg_147_1.facing = (tonumber(var_147_7.x) or 0) >= (tonumber(arg_147_1.x) or 0) and 1 or -1

			__recovered_scope_0.var_0_205.spawn(arg_147_0, arg_147_1, var_147_7)
		end

		var_147_2.fired = true
	end

	if var_147_2.t >= var_147_4 * __recovered_scope_0.var_0_214 then
		__recovered_scope_0.var_0_222(arg_147_1)
	end

	return true
end

function __recovered_scope_0.var_0_204.onProjectileHit(arg_148_0, arg_148_1, arg_148_2)
	if not arg_148_1 or not arg_148_1.spaceHunterGravityArrow or not arg_148_2 or not __recovered_scope_0.var_0_215(arg_148_2) then
		return false
	end

	if require("src.game.combat").wooden_watchtower.mounted(arg_148_2) then
		return false
	end

	if arg_148_0 and require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_148_0, arg_148_2) then
		return false
	end

	local var_148_0 = arg_148_2._spaceHunterGravityRange

	if not var_148_0 then
		var_148_0 = {
			originalDistance = tonumber(arg_148_2.distance)
		}
		arg_148_2._spaceHunterGravityRange = var_148_0
	end

	var_148_0.owner = arg_148_0
	var_148_0.t = math.max(0.1, tonumber(arg_148_0 and arg_148_0.spaceHunterGravityArrowRangeDur) or __recovered_scope_0.var_0_208)
	var_148_0.range = math.max(1, tonumber(arg_148_0 and arg_148_0.spaceHunterGravityArrowReducedRange) or __recovered_scope_0.var_0_209)
	var_148_0.dur = var_148_0.t
	var_148_0.hitT = __recovered_scope_0.var_0_212
	arg_148_2.distance = var_148_0.range

	require("src.game.combat").spitecap.onDebuff(arg_148_2, nil, "_spaceHunterGravityRange")

	return true
end

function __recovered_scope_0.var_0_204.updateWorld(arg_149_0, arg_149_1)
	if not arg_149_0 then
		return
	end

	local var_149_0 = math.max(0, tonumber(arg_149_1) or 0)

	for iter_149_0, iter_149_1 in ipairs(arg_149_0.allies or {}) do
		local var_149_1 = iter_149_1._spaceHunterGravityRange

		if var_149_1 then
			if __recovered_scope_0.var_0_215(iter_149_1) and (tonumber(var_149_1.t) or 0) > 0 then
				var_149_1.t = math.max(0, (tonumber(var_149_1.t) or 0) - var_149_0)

				if (tonumber(var_149_1.hitT) or 0) > 0 then
					var_149_1.hitT = math.max(0, (tonumber(var_149_1.hitT) or 0) - var_149_0)
				end

				if var_149_1.t > 0 then
					iter_149_1.distance = math.max(1, tonumber(var_149_1.range) or __recovered_scope_0.var_0_209)
				else
					if var_149_1.originalDistance ~= nil then
						iter_149_1.distance = var_149_1.originalDistance
					end

					iter_149_1._spaceHunterGravityRange = nil
				end
			else
				if __recovered_scope_0.var_0_215(iter_149_1) and var_149_1.originalDistance ~= nil then
					iter_149_1.distance = var_149_1.originalDistance
				end

				iter_149_1._spaceHunterGravityRange = nil
			end
		end
	end
end

function __recovered_scope_0.var_0_204.releaseOnDeath(arg_150_0)
	if not arg_150_0 then
		return
	end

	arg_150_0._spaceHunterGravityCast = nil
	arg_150_0._bossSkillBusy = nil
	arg_150_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_204.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_206,
	COOLDOWN = __recovered_scope_0.var_0_207,
	RANGE_DURATION = __recovered_scope_0.var_0_208,
	REDUCED_RANGE = __recovered_scope_0.var_0_209,
	FRAME_DURATION = __recovered_scope_0.var_0_210,
	RELEASE_FRAME = __recovered_scope_0.var_0_211,
	IMPACT_FLASH_DURATION = __recovered_scope_0.var_0_212,
	CAST_ANIMATION = __recovered_scope_0.var_0_213,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_214
}

 __recovered_scope_0.var_0_223 = __recovered_scope_0.var_0_204
 __recovered_scope_0.var_0_224 = nil
 __recovered_scope_0.var_0_225 = {}
 __recovered_scope_0.var_0_226 = 7
 __recovered_scope_0.var_0_227 = 7
 __recovered_scope_0.var_0_228 = 0.44
 __recovered_scope_0.var_0_229 = 14
 __recovered_scope_0.var_0_230 = "walk"
 __recovered_scope_0.var_0_231 = 6
 __recovered_scope_0.var_0_232 = 0.13
 __recovered_scope_0.var_0_233 = 4
 __recovered_scope_0.var_0_234 = "attack2"
 __recovered_scope_0.var_0_235 = 8
 __recovered_scope_0.var_0_236 = 1.15
 __recovered_scope_0.var_0_237 = 26
 __recovered_scope_0.var_0_238 = 1
 __recovered_scope_0.var_0_239 = 0.55
 __recovered_scope_0.var_0_240 = 0.45
 __recovered_scope_0.var_0_241 = 0.52

 function __recovered_scope_0.var_0_242(arg_151_0)
	return arg_151_0 and arg_151_0.alive and not arg_151_0.dying and not arg_151_0._venomMawSwallowed and not arg_151_0.isUndyingSoul and (tonumber(arg_151_0.hp) == nil or (tonumber(arg_151_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_243(arg_152_0)
	arg_152_0.target = nil
	arg_152_0.pendingTarget = nil
	arg_152_0.shotPending = false
	arg_152_0._meleeLoop = nil
	arg_152_0._pendingGoblinHit = nil
	arg_152_0._pendingOrcHit = nil
	arg_152_0._pendingHowlHit = nil
	arg_152_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_244(arg_153_0, arg_153_1, arg_153_2)
	if not arg_153_0 or not arg_153_0.anim then
		return
	end

	arg_153_0.anim.name = arg_153_1
	arg_153_0.anim.frame = math.max(1, math.floor(tonumber(arg_153_2) or 1))
	arg_153_0.anim.t = 0
	arg_153_0.anim.reverse = nil
	arg_153_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_245(arg_154_0)
	arg_154_0 = math.max(0, math.min(1, tonumber(arg_154_0) or 0))

	return arg_154_0 * arg_154_0 * (3 - 2 * arg_154_0)
end

function __recovered_scope_0.var_0_225.matches(arg_155_0)
	if not arg_155_0 then
		return false
	end

	local var_155_0 = tostring(arg_155_0.kind or "")
	local var_155_1 = tostring(arg_155_0.skin or "")

	return var_155_0 == "Space Knight" or var_155_0 == "우주 기사" or var_155_0 == "우주 기사 (Space Knight)" or var_155_1 == "Space Knight" or var_155_1 == "우주 기사" or var_155_1 == "우주 기사 (Space Knight)"
end

 function __recovered_scope_0.var_0_246(arg_156_0, arg_156_1, arg_156_2)
	local var_156_0 = arg_156_0._spaceKnightBurn

	if not var_156_0 then
		var_156_0 = {
			flash = 0,
			u = 0,
			tail = 0,
			dir = arg_156_2 or -1
		}
		arg_156_0._spaceKnightBurn = var_156_0
	end

	var_156_0.u = math.max(0, math.min(1, tonumber(arg_156_1) or 0))
	var_156_0.dir = arg_156_2 or var_156_0.dir
	var_156_0.tail = 0

	return var_156_0
end

 function __recovered_scope_0.var_0_247(arg_157_0, arg_157_1, arg_157_2)
	local var_157_0 = arg_157_0._spaceKnightBurn

	if not var_157_0 then
		return
	end

	var_157_0.flash = math.max(0, (tonumber(var_157_0.flash) or 0) - arg_157_1 / 0.2)

	if arg_157_2 then
		return
	end

	var_157_0.tail = (tonumber(var_157_0.tail) or 0) + arg_157_1
	var_157_0.u = (tonumber(var_157_0.u) or 0) * math.max(0, 1 - arg_157_1 / __recovered_scope_0.var_0_239)

	if var_157_0.tail >= __recovered_scope_0.var_0_239 or var_157_0.u <= 0.01 then
		arg_157_0._spaceKnightBurn = nil
	end
end

 function __recovered_scope_0.var_0_248(arg_158_0, arg_158_1, arg_158_2)
	local var_158_0 = tonumber(arg_158_0 and arg_158_0.ui and arg_158_0.ui.battle and arg_158_0.ui.battle.rangeEllipseYScale) or 0.5
	local var_158_1 = math.max(0.1, math.min(1, var_158_0))
	local var_158_2 = (tonumber(arg_158_2.x) or 0) - (tonumber(arg_158_1.x) or 0)
	local var_158_3 = ((tonumber(arg_158_2.y) or 0) - (tonumber(arg_158_1.y) or 0)) / var_158_1

	return math.sqrt(var_158_2 * var_158_2 + var_158_3 * var_158_3)
end

 function __recovered_scope_0.var_0_249(arg_159_0, arg_159_1)
	local var_159_0 = arg_159_1.target

	if not __recovered_scope_0.var_0_242(var_159_0) or var_159_0.side ~= "ally" then
		return nil
	end

	if var_159_0._marshDriveAir then
		return nil
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(arg_159_0, arg_159_1, var_159_0) then
		return nil
	end

	local var_159_1 = math.max(1, tonumber(arg_159_1.distance) or 55)

	if __recovered_scope_0.var_0_248(arg_159_0, arg_159_1, var_159_0) > var_159_1 * 1.15 then
		return nil
	end

	return var_159_0
end

 function __recovered_scope_0.var_0_250(arg_160_0, arg_160_1)
	local var_160_0 = tonumber(arg_160_0 and arg_160_0.allyBattleMinX)

	if var_160_0 then
		return var_160_0
	end

	local var_160_1 = arg_160_0 and arg_160_0.area

	if var_160_1 and tonumber(var_160_1.x) then
		return (tonumber(var_160_1.x) or 0) + 10
	end

	return tonumber(arg_160_1 and arg_160_1.x) or 0
end

 function __recovered_scope_0.var_0_251(arg_161_0, arg_161_1, arg_161_2)
	local var_161_0 = math.max(8, (tonumber(arg_161_0.distance) or 55) * 0.45)

	return (tonumber(arg_161_1.x) or 0) - arg_161_2 * var_161_0
end

 function __recovered_scope_0.var_0_252(arg_162_0, arg_162_1, arg_162_2)
	local var_162_0 = (tonumber(arg_162_1.x) or 0) - (tonumber(arg_162_0.x) or 0) >= 0 and 1 or -1

	arg_162_0._spaceKnightBashCast = {
		impacted = false,
		phase = "windup",
		t = 0,
		target = arg_162_1,
		dir = var_162_0,
		targetFacing = var_162_0,
		retreatDir = -var_162_0,
		braceX = tonumber(arg_162_0.x) or 0
	}
	arg_162_0._spaceKnightBashNext = arg_162_0._spaceKnightBashClock + arg_162_2
	arg_162_0._bossSkillBusy = true
	arg_162_0._bossSkillManualAnim = true
	arg_162_0.facing = var_162_0
	arg_162_0._spaceKnightWindupFacing = var_162_0

	__recovered_scope_0.var_0_243(arg_162_0)
	__recovered_scope_0.var_0_244(arg_162_0, __recovered_scope_0.var_0_230, __recovered_scope_0.var_0_231)
end

 function __recovered_scope_0.var_0_253(arg_163_0)
	arg_163_0._spaceKnightBashCast = nil
	arg_163_0._spaceKnightWindupFacing = nil
	arg_163_0._bossSkillBusy = nil
	arg_163_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_242(arg_163_0) then
		__recovered_scope_0.var_0_244(arg_163_0, "idle", 1)
	end
end

 function __recovered_scope_0.var_0_254(arg_164_0, arg_164_1, arg_164_2, arg_164_3)
	local var_164_0 = arg_164_2.target

	__recovered_scope_0.var_0_246(arg_164_1, 1, arg_164_2.dir).flash = 1

	if not __recovered_scope_0.var_0_242(var_164_0) then
		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(arg_164_0, arg_164_1, var_164_0) then
		return false
	end

	local var_164_1 = tonumber(var_164_0.x) or 0
	local var_164_2 = tonumber(var_164_0.y) or 0
	local var_164_3 = __recovered_scope_0.var_0_250(arg_164_0, var_164_0)
	local var_164_4 = math.max(0.05, tonumber(arg_164_1.spaceKnightBashFlightDur) or __recovered_scope_0.var_0_236)
	local var_164_5 = math.max(0, tonumber(arg_164_1.spaceKnightBashFlightHeight) or __recovered_scope_0.var_0_237)
	local var_164_6 = rawget(_G, "__slotBeginMarshDriveAirborne")

	if type(var_164_6) == "function" then
		var_164_6(var_164_0, var_164_4, var_164_5, var_164_3, var_164_2)

		var_164_0._spaceKnightLaunch = {
			startX = var_164_1
		}
	else
		var_164_0.x = var_164_3
		var_164_0._spaceKnightLaunch = nil
	end

	local var_164_7 = math.max(0, tonumber(arg_164_1.spaceKnightBashDmgMul) or __recovered_scope_0.var_0_238)

	if var_164_7 > 0 and type(arg_164_3) == "function" then
		arg_164_3(var_164_0, math.max(0, (tonumber(arg_164_1.dmg) or 0) * var_164_7), arg_164_1, {
			skillBig = true
		})
	end

	var_164_0.hitShake = {
		dur = 0.35,
		amp = 6,
		t = 0
	}
	var_164_0.hitFlash = {
		dur = 0.25,
		t = 0
	}
	arg_164_1.hitShake = {
		dur = 0.12,
		amp = 3,
		t = 0
	}
	arg_164_1._spaceKnightBashImpact = {
		t = 0,
		dur = __recovered_scope_0.var_0_241,
		x = var_164_1,
		y = var_164_2,
		dir = arg_164_2.dir
	}

	return true
end

function __recovered_scope_0.var_0_225.update(arg_165_0, arg_165_1, arg_165_2, arg_165_3, arg_165_4, arg_165_5)
	if not arg_165_0 or not __recovered_scope_0.var_0_225.matches(arg_165_1) or not __recovered_scope_0.var_0_242(arg_165_1) then
		return false
	end

	local var_165_0 = math.max(0, tonumber(arg_165_2) or 0)
	local var_165_1 = math.max(0.1, tonumber(arg_165_1.spaceKnightBashCd) or __recovered_scope_0.var_0_227)

	arg_165_1._spaceKnightBashClock = tonumber(arg_165_1._spaceKnightBashClock) or 0
	arg_165_1._spaceKnightBashNext = tonumber(arg_165_1._spaceKnightBashNext) or math.max(0.1, tonumber(arg_165_1.spaceKnightBashFirstDelay) or __recovered_scope_0.var_0_226)

	if arg_165_5 then
		arg_165_1._spaceKnightBashClock = arg_165_1._spaceKnightBashClock + var_165_0
	end

	local var_165_2 = arg_165_1._spaceKnightBashImpact

	if var_165_2 then
		var_165_2.t = (tonumber(var_165_2.t) or 0) + var_165_0

		if var_165_2.t >= (tonumber(var_165_2.dur) or __recovered_scope_0.var_0_241) then
			arg_165_1._spaceKnightBashImpact = nil
		end
	end

	local var_165_3 = arg_165_1._spaceKnightBashCast

	__recovered_scope_0.var_0_247(arg_165_1, var_165_0, var_165_3 ~= nil)

	if var_165_3 then
		arg_165_1._bossSkillBusy = true
		arg_165_1._bossSkillManualAnim = true

		__recovered_scope_0.var_0_243(arg_165_1)

		if not arg_165_5 then
			return true
		end

		var_165_3.t = (tonumber(var_165_3.t) or 0) + var_165_0

		if var_165_3.phase == "windup" then
			local var_165_4 = var_165_3.targetFacing or var_165_3.dir

			arg_165_1.facing = var_165_4
			arg_165_1._spaceKnightWindupFacing = var_165_4

			local var_165_5 = math.max(0.05, tonumber(arg_165_1.spaceKnightBashWindupDur) or __recovered_scope_0.var_0_228)
			local var_165_6 = math.max(0, tonumber(arg_165_1.spaceKnightBashWindupBack) or __recovered_scope_0.var_0_229)
			local var_165_7 = math.min(1, var_165_3.t / var_165_5)

			arg_165_1.x = var_165_3.braceX + (var_165_3.retreatDir or -var_165_3.dir) * var_165_6 * __recovered_scope_0.var_0_245(var_165_7)

			__recovered_scope_0.var_0_244(arg_165_1, __recovered_scope_0.var_0_230, math.max(1, __recovered_scope_0.var_0_231 - math.floor(var_165_7 * (__recovered_scope_0.var_0_231 - 1) + 1e-06)))

			local var_165_8 = 0.2 * (var_165_7 * var_165_7)

			__recovered_scope_0.var_0_246(arg_165_1, var_165_8, var_165_3.dir)

			if var_165_5 <= var_165_3.t then
				var_165_3.phase = "charge"
				var_165_3.t = 0
				var_165_3.chargeX = tonumber(arg_165_1.x) or 0
				arg_165_1._spaceKnightWindupFacing = nil
				arg_165_1.facing = var_165_3.dir

				__recovered_scope_0.var_0_244(arg_165_1, __recovered_scope_0.var_0_234, 1)
			end

			return true
		end

		arg_165_1._spaceKnightWindupFacing = nil
		arg_165_1.facing = var_165_3.dir

		local var_165_9 = math.max(0.01, tonumber(arg_165_1.spaceKnightBashFrameDur) or __recovered_scope_0.var_0_232)
		local var_165_10 = math.max(1, math.min(__recovered_scope_0.var_0_235, math.floor(tonumber(arg_165_1.spaceKnightBashImpactFrame) or __recovered_scope_0.var_0_233)))
		local var_165_11 = math.min(__recovered_scope_0.var_0_235, 1 + math.floor(var_165_3.t / var_165_9 + 1e-06))

		if not var_165_3.impacted and var_165_10 < var_165_11 then
			var_165_11 = var_165_10
		end

		__recovered_scope_0.var_0_244(arg_165_1, __recovered_scope_0.var_0_234, var_165_11)

		if not var_165_3.impacted then
			local var_165_12 = math.max(0.01, var_165_9 * (var_165_10 - 1))
			local var_165_13 = math.max(0, math.min(1, var_165_3.t / var_165_12))^1.5
			local var_165_14 = var_165_3.target

			if __recovered_scope_0.var_0_242(var_165_14) then
				local var_165_15 = tonumber(var_165_3.chargeX) or tonumber(arg_165_1.x) or 0

				arg_165_1.x = var_165_15 + (__recovered_scope_0.var_0_251(arg_165_1, var_165_14, var_165_3.dir) - var_165_15) * var_165_13
			end

			local var_165_16 = 0.2 + 0.8 * var_165_13^1.3

			__recovered_scope_0.var_0_246(arg_165_1, var_165_16, var_165_3.dir)

			if var_165_10 <= var_165_11 then
				var_165_3.impacted = true
				var_165_3.impactT = var_165_3.t

				__recovered_scope_0.var_0_254(arg_165_0, arg_165_1, var_165_3, arg_165_3)
			end
		else
			local var_165_17 = var_165_3.t - (tonumber(var_165_3.impactT) or var_165_3.t)

			__recovered_scope_0.var_0_246(arg_165_1, math.max(0, 1 - var_165_17 / __recovered_scope_0.var_0_240), var_165_3.dir)
		end

		if var_165_3.t >= var_165_9 * __recovered_scope_0.var_0_235 then
			__recovered_scope_0.var_0_253(arg_165_1)
		end

		return true
	end

	arg_165_1._spaceKnightWindupFacing = nil
	arg_165_1._bossSkillBusy = nil
	arg_165_1._bossSkillManualAnim = nil

	if not arg_165_5 then
		return false
	end

	if arg_165_1._spaceKnightBashClock < arg_165_1._spaceKnightBashNext then
		return false
	end

	local var_165_18 = __recovered_scope_0.var_0_249(arg_165_0, arg_165_1)

	if not var_165_18 then
		return false
	end

	__recovered_scope_0.var_0_252(arg_165_1, var_165_18, var_165_1)

	return true
end

function __recovered_scope_0.var_0_225.updateWorld(arg_166_0, arg_166_1)
	if not arg_166_0 then
		return
	end

	for iter_166_0, iter_166_1 in ipairs(arg_166_0.allies or {}) do
		local var_166_0 = iter_166_1 and iter_166_1._spaceKnightLaunch

		if var_166_0 then
			local var_166_1 = iter_166_1._marshDriveAir

			if not var_166_1 then
				iter_166_1._spaceKnightLaunch = nil
			elseif var_166_1.landed == true then
				if __recovered_scope_0.var_0_242(iter_166_1) then
					local var_166_2 = rawget(_G, "__slotSpawnBossLandingDust")

					if type(var_166_2) == "function" then
						var_166_2(arg_166_0, iter_166_1, var_166_0.startX)
					end
				end

				iter_166_1._spaceKnightLaunch = nil
			end
		end
	end
end

function __recovered_scope_0.var_0_225.releaseOnDeath(arg_167_0)
	if not arg_167_0 then
		return
	end

	arg_167_0._spaceKnightBashCast = nil
	arg_167_0._spaceKnightWindupFacing = nil
	arg_167_0._spaceKnightBashImpact = nil
	arg_167_0._spaceKnightBurn = nil
	arg_167_0._bossSkillBusy = nil
	arg_167_0._bossSkillManualAnim = nil
end

function __recovered_scope_0.var_0_225.drawAbove(arg_168_0)
	if not arg_168_0 or not love or not love.graphics then
		return
	end

	local var_168_0 = false

	for iter_168_0, iter_168_1 in ipairs(arg_168_0.enemies or {}) do
		if __recovered_scope_0.var_0_225.matches(iter_168_1) and iter_168_1._spaceKnightBashImpact then
			var_168_0 = true

			break
		end
	end

	if not var_168_0 then
		return
	end

	love.graphics.push("all")
	love.graphics.setBlendMode("add", "alphamultiply")

	for iter_168_2, iter_168_3 in ipairs(arg_168_0.enemies or {}) do
		local var_168_1 = __recovered_scope_0.var_0_225.matches(iter_168_3) and iter_168_3._spaceKnightBashImpact or nil

		if var_168_1 then
			local var_168_2 = math.max(0.01, tonumber(var_168_1.dur) or __recovered_scope_0.var_0_241)
			local var_168_3 = math.max(0, math.min(1, (tonumber(var_168_1.t) or 0) / var_168_2))
			local var_168_4 = math.floor(tonumber(var_168_1.x) or 0)
			local var_168_5 = math.floor(tonumber(var_168_1.y) or 0)
			local var_168_6 = (tonumber(var_168_1.dir) or -1) >= 0 and 1 or -1
			local var_168_7 = (1 - var_168_3) * (1 - var_168_3)
			local var_168_8 = var_168_5 - 10

			if var_168_3 < 0.4 then
				local var_168_9 = var_168_3 / 0.4
				local var_168_10 = (1 - var_168_9) * (1 - var_168_9)
				local var_168_11 = math.floor(18 + var_168_9 * 32)
				local var_168_12 = math.floor(12 + var_168_9 * 22)

				love.graphics.setColor(1, 1, 1, var_168_10 * 0.98)
				love.graphics.rectangle("fill", var_168_4 - 4, var_168_8 - 4, 9, 9)
				love.graphics.setColor(1, 0.95, 0.6, var_168_10 * 0.95)
				love.graphics.rectangle("fill", var_168_4 - var_168_11, var_168_8 - 1, var_168_11 * 2 + 1, 3)
				love.graphics.rectangle("fill", var_168_4 - 1, var_168_8 - var_168_11, 3, var_168_11 * 2 + 1)
				love.graphics.setColor(1, 1, 1, var_168_10)
				love.graphics.rectangle("fill", var_168_4 - math.floor(var_168_11 * 0.6), var_168_8, math.floor(var_168_11 * 0.6) * 2 + 1, 1)
				love.graphics.rectangle("fill", var_168_4, var_168_8 - math.floor(var_168_11 * 0.6), 1, math.floor(var_168_11 * 0.6) * 2 + 1)
				love.graphics.setColor(0.35, 0.85, 1, var_168_10 * 0.9)

				for iter_168_4 = -var_168_12, var_168_12, 2 do
					love.graphics.rectangle("fill", var_168_4 + iter_168_4, var_168_8 + iter_168_4, 2, 2)
					love.graphics.rectangle("fill", var_168_4 + iter_168_4, var_168_8 - iter_168_4, 2, 2)
				end
			end

			for iter_168_5 = 1, 18 do
				local var_168_13 = math.sin(iter_168_5 * 37.19 + 17.23) * 43758.5453
				local var_168_14 = var_168_13 - math.floor(var_168_13)
				local var_168_15 = math.cos(iter_168_5 * 53.83 + 29.41) * 31415.9265
				local var_168_16 = var_168_15 - math.floor(var_168_15)
				local var_168_17 = iter_168_5 / 18 * 6.283 + (var_168_14 * 0.4 - 0.2)
				local var_168_18 = 55 + var_168_16 * 110
				local var_168_19 = var_168_4 + math.cos(var_168_17) * var_168_18 * var_168_3 + var_168_6 * (20 * var_168_3)
				local var_168_20 = var_168_8 + math.sin(var_168_17) * var_168_18 * var_168_3 * 0.7 + 26 * var_168_3 * var_168_3
				local var_168_21 = var_168_7 * (0.8 + 0.2 * var_168_14)
				local var_168_22 = iter_168_5 % 3 == 0 and 3 or 2

				if iter_168_5 % 2 == 0 then
					love.graphics.setColor(1, 0.92, 0.4, var_168_21 * 0.95)
				else
					love.graphics.setColor(0.3, 0.85, 1, var_168_21 * 0.95)
				end

				love.graphics.rectangle("fill", math.floor(var_168_19), math.floor(var_168_20), var_168_22, var_168_22)
				love.graphics.setColor(1, 1, 1, var_168_21)
				love.graphics.rectangle("fill", math.floor(var_168_19), math.floor(var_168_20), 1, 1)
			end

			if var_168_3 < 0.65 then
				local var_168_23 = var_168_3 / 0.65
				local var_168_24 = (1 - var_168_23) * (1 - var_168_23)
				local var_168_25 = math.floor(10 + var_168_23 * 42)

				love.graphics.setColor(0.35, 0.85, 1, var_168_24 * 0.75)
				love.graphics.rectangle("fill", var_168_4 - var_168_25, var_168_5 - 1, var_168_25 * 2 + 1, 3)
				love.graphics.setColor(1, 1, 1, var_168_24 * 0.95)
				love.graphics.rectangle("fill", var_168_4 - math.floor(var_168_25 * 0.5), var_168_5, math.floor(var_168_25 * 0.5) * 2 + 1, 1)
			end
		end
	end

	love.graphics.pop()
end

__recovered_scope_0.var_0_225.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_226,
	COOLDOWN = __recovered_scope_0.var_0_227,
	WINDUP_DURATION = __recovered_scope_0.var_0_228,
	WINDUP_BACK = __recovered_scope_0.var_0_229,
	FRAME_DURATION = __recovered_scope_0.var_0_232,
	IMPACT_FRAME = __recovered_scope_0.var_0_233,
	FLIGHT_DURATION = __recovered_scope_0.var_0_236,
	FLIGHT_HEIGHT = __recovered_scope_0.var_0_237,
	DAMAGE_MUL = __recovered_scope_0.var_0_238,
	EMBER_TAIL = __recovered_scope_0.var_0_239,
	CAST_ANIMATION = __recovered_scope_0.var_0_234,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_235,
	WINDUP_ANIMATION = __recovered_scope_0.var_0_230
}

 __recovered_scope_0.var_0_255 = __recovered_scope_0.var_0_225
 __recovered_scope_0.var_0_256 = nil
 __recovered_scope_0.var_0_257 = {}
 __recovered_scope_0.var_0_258 = require("src.game.combat").stage6_rift
 __recovered_scope_0.var_0_259 = 0.35
 __recovered_scope_0.var_0_260 = 18
 __recovered_scope_0.var_0_261 = "jump"
 __recovered_scope_0.var_0_262 = 3

 function __recovered_scope_0.var_0_263(arg_169_0)
	return arg_169_0 and arg_169_0.alive and not arg_169_0.dying and not arg_169_0._venomMawSwallowed and not arg_169_0.isUndyingSoul and (tonumber(arg_169_0.hp) == nil or (tonumber(arg_169_0.hp) or 0) > 0)
end

function __recovered_scope_0.var_0_257.matches(arg_170_0)
	if not arg_170_0 then
		return false
	end

	local var_170_0 = tostring(arg_170_0.kind or "")
	local var_170_1 = tostring(arg_170_0.skin or "")

	return var_170_0 == "Space Cavalry" or var_170_0 == "우주 기병" or var_170_0 == "우주 기병 (Space Cavalry)" or var_170_1 == "Space Cavalry" or var_170_1 == "우주 기병" or var_170_1 == "우주 기병 (Space Cavalry)"
end

 function __recovered_scope_0.var_0_264(arg_171_0)
	arg_171_0.target = nil
	arg_171_0.pendingTarget = nil
	arg_171_0.shotPending = false
	arg_171_0._meleeLoop = nil
	arg_171_0._pendingGoblinHit = nil
	arg_171_0._pendingOrcHit = nil
	arg_171_0._pendingHowlHit = nil
	arg_171_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_265(arg_172_0, arg_172_1)
	if not arg_172_0 or not arg_172_0.anim then
		return
	end

	arg_172_0.anim.name = __recovered_scope_0.var_0_261
	arg_172_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_262, math.floor(tonumber(arg_172_1) or 1)))
	arg_172_0.anim.t = 0
	arg_172_0.anim.reverse = nil
	arg_172_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_266(arg_173_0, arg_173_1, arg_173_2)
	return math.max(arg_173_1, math.min(arg_173_2, tonumber(arg_173_0) or arg_173_1))
end

 function __recovered_scope_0.var_0_267(arg_174_0)
	arg_174_0 = __recovered_scope_0.var_0_266(arg_174_0, 0, 1)

	if arg_174_0 < 0.5 then
		local var_174_0 = arg_174_0 * 2

		return 0.5 * (1 - (1 - var_174_0) * (1 - var_174_0))
	end

	local var_174_1 = (arg_174_0 - 0.5) * 2

	return 0.5 + 0.5 * var_174_1 * var_174_1
end

function __recovered_scope_0.var_0_257.oppositeLanePosition(arg_175_0, arg_175_1)
	local var_175_0 = tonumber(arg_175_1 and arg_175_1.x) or 0
	local var_175_1 = tonumber(arg_175_1 and arg_175_1.y) or 0
	local var_175_2 = __recovered_scope_0.var_0_258.blockedRect(arg_175_0)

	if not var_175_2 then
		return var_175_0, var_175_1, nil
	end

	local var_175_3 = tonumber(arg_175_0 and arg_175_0.ui and arg_175_0.ui.battle and arg_175_0.ui.battle.allySize32) or 32
	local var_175_4 = math.max(1, var_175_3 * 0.5)
	local var_175_5 = tonumber(arg_175_0 and arg_175_0.groundTopY) or tonumber(arg_175_0 and arg_175_0.area and arg_175_0.area.y) or 0
	local var_175_6 = tonumber(arg_175_0 and arg_175_0.groundBotY) or (tonumber(arg_175_0 and arg_175_0.area and arg_175_0.area.y) or 0) + (tonumber(arg_175_0 and arg_175_0.area and arg_175_0.area.h) or 0)
	local var_175_7 = var_175_5 + var_175_4
	local var_175_8 = (tonumber(var_175_2.y) or var_175_1) - var_175_4
	local var_175_9 = (tonumber(var_175_2.y) or var_175_1) + (tonumber(var_175_2.h) or 0) + var_175_4
	local var_175_10 = var_175_6 - var_175_4
	local var_175_11 = __recovered_scope_0.var_0_258.entityLane(arg_175_0, arg_175_1, var_175_3)

	if var_175_11 == -1 then
		local var_175_12 = math.max(0.001, var_175_8 - var_175_7)
		local var_175_13 = __recovered_scope_0.var_0_266((var_175_8 - var_175_1) / var_175_12, 0, 1)

		return var_175_0, var_175_9 + (var_175_10 - var_175_9) * var_175_13, 1
	elseif var_175_11 == 1 then
		local var_175_14 = math.max(0.001, var_175_10 - var_175_9)
		local var_175_15 = __recovered_scope_0.var_0_266((var_175_1 - var_175_9) / var_175_14, 0, 1)

		return var_175_0, var_175_8 - (var_175_8 - var_175_7) * var_175_15, -1
	end

	local var_175_16 = (tonumber(var_175_2.y) or var_175_1) + (tonumber(var_175_2.h) or 0) * 0.5

	return var_175_0, var_175_16 * 2 - var_175_1, var_175_1 <= var_175_16 and 1 or -1
end

function __recovered_scope_0.var_0_257.countLivingAlliesByLane(arg_176_0)
	local var_176_0 = {
		[-1] = 0,
		[1] = 0
	}

	for iter_176_0, iter_176_1 in ipairs(arg_176_0 and arg_176_0.allies or {}) do
		if iter_176_1.side == "ally" and __recovered_scope_0.var_0_263(iter_176_1) then
			local var_176_1 = __recovered_scope_0.var_0_258.entityLane(arg_176_0, iter_176_1)

			if var_176_1 == -1 or var_176_1 == 1 then
				var_176_0[var_176_1] = var_176_0[var_176_1] + 1
			end
		end
	end

	return var_176_0
end

 function __recovered_scope_0.var_0_268(arg_177_0, arg_177_1, arg_177_2)
	local var_177_0, var_177_1, var_177_2 = __recovered_scope_0.var_0_257.oppositeLanePosition(arg_177_0, arg_177_1)

	if var_177_2 == nil or var_177_2 == arg_177_2 then
		return false
	end

	arg_177_1._spaceCavalryGravityJump = {
		t = 0,
		startX = tonumber(arg_177_1.x) or 0,
		startY = tonumber(arg_177_1.y) or 0,
		endX = var_177_0,
		endY = var_177_1,
		fromLane = arg_177_2,
		toLane = var_177_2,
		height = math.max(0, tonumber(arg_177_1.spaceCavalryGravityJumpHeight) or __recovered_scope_0.var_0_260)
	}
	arg_177_1._bossSkillBusy = true
	arg_177_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_264(arg_177_1)
	__recovered_scope_0.var_0_265(arg_177_1, 1)

	return true
end

 function __recovered_scope_0.var_0_269(arg_178_0, arg_178_1)
	local var_178_0 = arg_178_1 and arg_178_1._spaceCavalryGravityJump

	if var_178_0 then
		arg_178_1.x = tonumber(var_178_0.endX) or arg_178_1.x
		arg_178_1.y = tonumber(var_178_0.endY) or arg_178_1.y

		if not var_178_0.dustSpawned then
			local var_178_1 = rawget(_G, "__slotSpawnBossLandingDust")

			if type(var_178_1) == "function" then
				var_178_1(arg_178_0, arg_178_1, var_178_0.startX)
			end

			var_178_0.dustSpawned = true
		end
	end

	arg_178_1._spaceCavalryGravityJump = nil
	arg_178_1._bossSkillBusy = nil
	arg_178_1._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_263(arg_178_1) and arg_178_1.anim then
		arg_178_1.anim.name = "idle"
		arg_178_1.anim.frame = 1
		arg_178_1.anim.t = 0
		arg_178_1.anim.reverse = nil
	end
end

function __recovered_scope_0.var_0_257.update(arg_179_0, arg_179_1, arg_179_2, arg_179_3, arg_179_4, arg_179_5)
	if not arg_179_0 or not __recovered_scope_0.var_0_257.matches(arg_179_1) or not __recovered_scope_0.var_0_263(arg_179_1) then
		return false
	end

	local var_179_0 = arg_179_1._spaceCavalryGravityJump

	if not var_179_0 then
		arg_179_1._bossSkillBusy = nil
		arg_179_1._bossSkillManualAnim = nil

		return false
	end

	arg_179_1._bossSkillBusy = true
	arg_179_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_264(arg_179_1)

	local var_179_1 = math.max(0.02, tonumber(arg_179_1.spaceCavalryGravityJumpFrameDur) or __recovered_scope_0.var_0_259)
	local var_179_2 = var_179_1 * __recovered_scope_0.var_0_262

	if arg_179_5 then
		var_179_0.t = (tonumber(var_179_0.t) or 0) + math.max(0, tonumber(arg_179_2) or 0)
	end

	local var_179_3 = math.min(1, (tonumber(var_179_0.t) or 0) / var_179_2)
	local var_179_4 = __recovered_scope_0.var_0_267(var_179_3)

	arg_179_1.x = var_179_0.startX + (var_179_0.endX - var_179_0.startX) * var_179_4
	arg_179_1.y = var_179_0.startY + (var_179_0.endY - var_179_0.startY) * var_179_4

	__recovered_scope_0.var_0_265(arg_179_1, math.min(__recovered_scope_0.var_0_262, 1 + math.floor((tonumber(var_179_0.t) or 0) / var_179_1 + 1e-06)))

	if var_179_3 >= 1 then
		__recovered_scope_0.var_0_269(arg_179_0, arg_179_1)
	end

	return true
end

function __recovered_scope_0.var_0_257.afterBasicAttackHit(arg_180_0, arg_180_1)
	if not arg_180_0 or not __recovered_scope_0.var_0_257.matches(arg_180_1) or not __recovered_scope_0.var_0_263(arg_180_1) or not not arg_180_1._spaceCavalryGravityJumpChecked then
		return false
	end

	arg_180_1._spaceCavalryGravityJumpChecked = true

	local var_180_0 = __recovered_scope_0.var_0_258.entityLane(arg_180_0, arg_180_1)

	if var_180_0 ~= -1 and var_180_0 ~= 1 then
		return false
	end

	local var_180_1 = __recovered_scope_0.var_0_257.countLivingAlliesByLane(arg_180_0)

	if var_180_1[-var_180_0] >= var_180_1[var_180_0] then
		return false
	end

	return __recovered_scope_0.var_0_268(arg_180_0, arg_180_1, var_180_0)
end

function __recovered_scope_0.var_0_257.releaseOnDeath(arg_181_0)
	if not arg_181_0 then
		return
	end

	arg_181_0._spaceCavalryGravityJump = nil
	arg_181_0._bossSkillBusy = nil
	arg_181_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_257.constants = {
	FRAME_DURATION = __recovered_scope_0.var_0_259,
	JUMP_HEIGHT = __recovered_scope_0.var_0_260,
	JUMP_ANIMATION = __recovered_scope_0.var_0_261,
	JUMP_FRAMES = __recovered_scope_0.var_0_262
}

 __recovered_scope_0.var_0_270 = __recovered_scope_0.var_0_257
 __recovered_scope_0.var_0_271 = nil
 __recovered_scope_0.var_0_272 = {}
 __recovered_scope_0.var_0_273 = require("src.game.combat").stage6_rift
 __recovered_scope_0.var_0_274 = 5
 __recovered_scope_0.var_0_275 = 8
 __recovered_scope_0.var_0_276 = 0.11
 __recovered_scope_0.var_0_277 = 7
 __recovered_scope_0.var_0_278 = 0.45
 __recovered_scope_0.var_0_279 = 0.9
 __recovered_scope_0.var_0_280 = 0.45
 __recovered_scope_0.var_0_281 = 18
 __recovered_scope_0.var_0_282 = 6
 __recovered_scope_0.var_0_283 = "attack2"
 __recovered_scope_0.var_0_284 = 11

 function __recovered_scope_0.var_0_285(arg_182_0)
	return arg_182_0 and arg_182_0.side == "ally" and arg_182_0.alive and not arg_182_0.dying and not arg_182_0._venomMawSwallowed and not arg_182_0.isUndyingSoul and (tonumber(arg_182_0.hp) == nil or (tonumber(arg_182_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_286(arg_183_0)
	arg_183_0.target = nil
	arg_183_0.pendingTarget = nil
	arg_183_0.shotPending = false
	arg_183_0._meleeLoop = nil
	arg_183_0._pendingGoblinHit = nil
	arg_183_0._pendingOrcHit = nil
	arg_183_0._pendingHowlHit = nil
	arg_183_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_287(arg_184_0, arg_184_1)
	if not arg_184_0 or not arg_184_0.anim then
		return
	end

	arg_184_0.anim.name = __recovered_scope_0.var_0_283
	arg_184_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_284, math.floor(tonumber(arg_184_1) or 1)))
	arg_184_0.anim.t = 0
	arg_184_0.anim.reverse = nil
	arg_184_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_288(arg_185_0)
	if not arg_185_0 or #arg_185_0 == 0 then
		return nil
	end

	return arg_185_0[(love and love.math and love.math.random or math.random)(1, #arg_185_0)]
end

function __recovered_scope_0.var_0_272.matches(arg_186_0)
	if not arg_186_0 then
		return false
	end

	local var_186_0 = tostring(arg_186_0.kind or "")
	local var_186_1 = tostring(arg_186_0.skin or "")

	return var_186_0 == "Space Wizard" or var_186_0 == "우주 마법사" or var_186_0 == "우주 마법사 (Space Wizard)" or var_186_1 == "Space Wizard" or var_186_1 == "우주 마법사" or var_186_1 == "우주 마법사 (Space Wizard)"
end

 function __recovered_scope_0.var_0_289(arg_187_0, arg_187_1, arg_187_2)
	local var_187_0 = require("src.game.unit_abilities").dimensional_duel

	return not var_187_0.of(arg_187_1) and (not arg_187_2 or not var_187_0.separated(arg_187_0, arg_187_2, arg_187_1))
end

function __recovered_scope_0.var_0_272.pickTargets(arg_188_0, arg_188_1)
	local var_188_0 = {}
	local var_188_1 = {}

	for iter_188_0, iter_188_1 in ipairs(arg_188_0 and arg_188_0.allies or {}) do
		if __recovered_scope_0.var_0_285(iter_188_1) and not iter_188_1._spaceWizardExchangeMotion and __recovered_scope_0.var_0_289(arg_188_0, iter_188_1, arg_188_1) then
			local var_188_2 = __recovered_scope_0.var_0_273.entityLane(arg_188_0, iter_188_1)

			if var_188_2 == -1 then
				var_188_0[#var_188_0 + 1] = iter_188_1
			elseif var_188_2 == 1 then
				var_188_1[#var_188_1 + 1] = iter_188_1
			end
		end
	end

	if #var_188_0 == 0 or #var_188_1 == 0 then
		return nil, nil
	end

	return __recovered_scope_0.var_0_288(var_188_0), __recovered_scope_0.var_0_288(var_188_1)
end

 function __recovered_scope_0.var_0_290(arg_189_0, arg_189_1, arg_189_2, arg_189_3)
	arg_189_0._spaceWizardExchangeCast = {
		exchanged = false,
		t = 0,
		upper = arg_189_1,
		lower = arg_189_2
	}
	arg_189_0._spaceWizardExchangeNext = arg_189_0._spaceWizardExchangeClock + arg_189_3
	arg_189_0._bossSkillBusy = true
	arg_189_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_286(arg_189_0)
	__recovered_scope_0.var_0_287(arg_189_0, 1)
end

 function __recovered_scope_0.var_0_291(arg_190_0, arg_190_1, arg_190_2, arg_190_3)
	return __recovered_scope_0.var_0_285(arg_190_1) and not arg_190_1._spaceWizardExchangeMotion and __recovered_scope_0.var_0_289(arg_190_0, arg_190_1, arg_190_3) and __recovered_scope_0.var_0_273.entityLane(arg_190_0, arg_190_1) == arg_190_2
end

 function __recovered_scope_0.var_0_292(arg_191_0)
	local var_191_0 = math.max(0, math.min(1, tonumber(arg_191_0) or 0))

	return var_191_0 * var_191_0 * (3 - 2 * var_191_0)
end

 function __recovered_scope_0.var_0_293(arg_192_0)
	if not arg_192_0 then
		return
	end

	if arg_192_0.baseX ~= nil then
		arg_192_0.baseX = arg_192_0.x
	end

	if arg_192_0.baseY ~= nil then
		arg_192_0.baseY = arg_192_0.y
	end

	arg_192_0._stage6RiftSafeX, arg_192_0._stage6RiftSafeY = arg_192_0.x, arg_192_0.y
	arg_192_0._stage6RiftPlacementSafeX = arg_192_0.x
	arg_192_0._stage6RiftPlacementSafeY = arg_192_0.y
end

 function __recovered_scope_0.var_0_294(arg_193_0, arg_193_1)
	if not arg_193_0 or not arg_193_1 then
		return
	end

	arg_193_1.previousSuppressAttack = arg_193_0._suppressAttack
	arg_193_0._spaceWizardExchangeMotion = arg_193_1
	arg_193_0.target = nil
	arg_193_0.pendingTarget = nil
	arg_193_0.shotPending = false
	arg_193_0._casting = false
	arg_193_0._meleeLoop = false
	arg_193_0._kb = nil
	arg_193_0._posLerp = nil
	arg_193_0._suppressAttack = true
	arg_193_0._forceRetarget = true

	if arg_193_0.anim then
		arg_193_0.anim.name = "idle"
		arg_193_0.anim.frame = 1
		arg_193_0.anim.t = 0
		arg_193_0.anim.reverse = nil
	end
end

 function __recovered_scope_0.var_0_295(arg_194_0, arg_194_1, arg_194_2)
	if not arg_194_0 then
		return
	end

	local var_194_0 = arg_194_0._spaceWizardExchangeMotion

	if tonumber(arg_194_1) then
		arg_194_0.x = arg_194_1
	end

	if tonumber(arg_194_2) then
		arg_194_0.y = arg_194_2
	end

	arg_194_0._spaceWizardExchangeMotion = nil
	arg_194_0._suppressAttack = var_194_0 and var_194_0.previousSuppressAttack or nil
	arg_194_0._forceRetarget = true

	__recovered_scope_0.var_0_293(arg_194_0)

	if __recovered_scope_0.var_0_285(arg_194_0) and arg_194_0.anim then
		arg_194_0.anim.name = "idle"
		arg_194_0.anim.frame = 1
		arg_194_0.anim.t = 0
		arg_194_0.anim.reverse = nil
	end
end

 function __recovered_scope_0.var_0_296(arg_195_0, arg_195_1, arg_195_2, arg_195_3)
	if not arg_195_1 or arg_195_1.done then
		return
	end

	arg_195_1.done = true

	local var_195_0 = arg_195_2 and arg_195_1.lowerX or arg_195_1.upperX
	local var_195_1 = arg_195_2 and arg_195_1.lowerY or arg_195_1.upperY
	local var_195_2 = arg_195_2 and arg_195_1.upperX or arg_195_1.lowerX
	local var_195_3 = arg_195_2 and arg_195_1.upperY or arg_195_1.lowerY

	__recovered_scope_0.var_0_295(arg_195_1.upper, var_195_0, var_195_1)
	__recovered_scope_0.var_0_295(arg_195_1.lower, var_195_2, var_195_3)

	if arg_195_3 and arg_195_0 then
		local var_195_4 = rawget(_G, "__slotSpawnBossLandingDust")

		if type(var_195_4) == "function" then
			if __recovered_scope_0.var_0_285(arg_195_1.upper) then
				var_195_4(arg_195_0, arg_195_1.upper, arg_195_1.upperX)
			end

			if __recovered_scope_0.var_0_285(arg_195_1.lower) then
				var_195_4(arg_195_0, arg_195_1.lower, arg_195_1.lowerX)
			end
		end
	end
end

function __recovered_scope_0.var_0_272.exchangeTargets(arg_196_0, arg_196_1, arg_196_2, arg_196_3)
	if not __recovered_scope_0.var_0_291(arg_196_0, arg_196_1, -1, arg_196_3) or not __recovered_scope_0.var_0_291(arg_196_0, arg_196_2, 1, arg_196_3) then
		return nil
	end

	local var_196_0 = tonumber(arg_196_1.x) or 0
	local var_196_1 = tonumber(arg_196_1.y) or 0
	local var_196_2 = tonumber(arg_196_2.x) or 0
	local var_196_3 = tonumber(arg_196_2.y) or 0
	local var_196_4 = {
		t = 0,
		upper = arg_196_1,
		lower = arg_196_2,
		upperX = var_196_0,
		upperY = var_196_1,
		lowerX = var_196_2,
		lowerY = var_196_3,
		liftDuration = math.max(0.05, tonumber(arg_196_3 and arg_196_3.spaceWizardExchangeLiftDur) or __recovered_scope_0.var_0_278),
		crossDuration = math.max(0.05, tonumber(arg_196_3 and arg_196_3.spaceWizardExchangeCrossDur) or __recovered_scope_0.var_0_279),
		lowerDuration = math.max(0.05, tonumber(arg_196_3 and arg_196_3.spaceWizardExchangeLowerDur) or __recovered_scope_0.var_0_280),
		height = math.max(0, tonumber(arg_196_3 and arg_196_3.spaceWizardExchangeLiftHeight) or __recovered_scope_0.var_0_281),
		sway = math.max(0, tonumber(arg_196_3 and arg_196_3.spaceWizardExchangeCrossSway) or __recovered_scope_0.var_0_282)
	}

	__recovered_scope_0.var_0_294(arg_196_1, {
		lift = 0,
		phase = "lift",
		exchangeRole = "upper",
		t = 0
	})
	__recovered_scope_0.var_0_294(arg_196_2, {
		lift = 0,
		phase = "lift",
		exchangeRole = "lower",
		t = 0
	})

	return var_196_4
end

function __recovered_scope_0.var_0_272.updateExchangeTargets(arg_197_0, arg_197_1, arg_197_2)
	if not arg_197_1 or arg_197_1.done then
		return true
	end

	if not __recovered_scope_0.var_0_285(arg_197_1.upper) or not __recovered_scope_0.var_0_285(arg_197_1.lower) then
		__recovered_scope_0.var_0_296(arg_197_0, arg_197_1, false, false)

		return true
	end

	arg_197_1.t = (tonumber(arg_197_1.t) or 0) + math.max(0, tonumber(arg_197_2) or 0)

	local var_197_0 = arg_197_1.liftDuration
	local var_197_1 = arg_197_1.crossDuration
	local var_197_2 = arg_197_1.lowerDuration
	local var_197_3 = var_197_0
	local var_197_4 = var_197_0 + var_197_1
	local var_197_5 = var_197_4 + var_197_2
	local var_197_6 = arg_197_1.upper._spaceWizardExchangeMotion
	local var_197_7 = arg_197_1.lower._spaceWizardExchangeMotion

	if not var_197_6 or not var_197_7 then
		__recovered_scope_0.var_0_296(arg_197_0, arg_197_1, false, false)

		return true
	end

	var_197_6.t, var_197_7.t = arg_197_1.t, arg_197_1.t

	if var_197_3 > arg_197_1.t then
		local var_197_8 = __recovered_scope_0.var_0_292(arg_197_1.t / var_197_0)

		var_197_6.phase, var_197_7.phase = "lift", "lift"
		var_197_6.lift, var_197_7.lift = arg_197_1.height * var_197_8, arg_197_1.height * var_197_8
		arg_197_1.upper.x, arg_197_1.upper.y = arg_197_1.upperX, arg_197_1.upperY
		arg_197_1.lower.x, arg_197_1.lower.y = arg_197_1.lowerX, arg_197_1.lowerY
	elseif var_197_4 > arg_197_1.t then
		local var_197_9 = (arg_197_1.t - var_197_3) / var_197_1
		local var_197_10 = __recovered_scope_0.var_0_292(var_197_9)
		local var_197_11 = math.sin(math.pi * math.max(0, math.min(1, var_197_9))) * arg_197_1.sway

		var_197_6.phase, var_197_7.phase = "cross", "cross"
		var_197_6.lift = arg_197_1.height + math.sin(math.pi * var_197_9) * 2
		var_197_7.lift = var_197_6.lift
		arg_197_1.upper.x = arg_197_1.upperX + (arg_197_1.lowerX - arg_197_1.upperX) * var_197_10 + var_197_11
		arg_197_1.upper.y = arg_197_1.upperY + (arg_197_1.lowerY - arg_197_1.upperY) * var_197_10
		arg_197_1.lower.x = arg_197_1.lowerX + (arg_197_1.upperX - arg_197_1.lowerX) * var_197_10 - var_197_11
		arg_197_1.lower.y = arg_197_1.lowerY + (arg_197_1.upperY - arg_197_1.lowerY) * var_197_10
	else
		local var_197_12 = __recovered_scope_0.var_0_292((arg_197_1.t - var_197_4) / var_197_2)

		var_197_6.phase, var_197_7.phase = "lower", "lower"
		var_197_6.lift, var_197_7.lift = arg_197_1.height * (1 - var_197_12), arg_197_1.height * (1 - var_197_12)
		arg_197_1.upper.x, arg_197_1.upper.y = arg_197_1.lowerX, arg_197_1.lowerY
		arg_197_1.lower.x, arg_197_1.lower.y = arg_197_1.upperX, arg_197_1.upperY
	end

	arg_197_1.upper._kb, arg_197_1.upper._posLerp = nil
	arg_197_1.lower._kb, arg_197_1.lower._posLerp = nil

	if var_197_5 <= arg_197_1.t then
		__recovered_scope_0.var_0_296(arg_197_0, arg_197_1, true, true)

		return true
	end

	return false
end

 function __recovered_scope_0.var_0_297(arg_198_0)
	arg_198_0._spaceWizardExchangeCast = nil
	arg_198_0._bossSkillBusy = nil
	arg_198_0._bossSkillManualAnim = nil

	if arg_198_0 and arg_198_0.alive and not arg_198_0.dying and arg_198_0.anim then
		arg_198_0.anim.name = "idle"
		arg_198_0.anim.frame = 1
		arg_198_0.anim.t = 0
		arg_198_0.anim.reverse = nil
		arg_198_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_272.update(arg_199_0, arg_199_1, arg_199_2, arg_199_3, arg_199_4, arg_199_5)
	if not arg_199_0 or not __recovered_scope_0.var_0_272.matches(arg_199_1) or not arg_199_1.alive or not not arg_199_1.dying then
		return false
	end

	local var_199_0 = math.max(0, tonumber(arg_199_2) or 0)
	local var_199_1 = math.max(0.1, tonumber(arg_199_1.spaceWizardExchangeCd) or __recovered_scope_0.var_0_275)

	arg_199_1._spaceWizardExchangeClock = tonumber(arg_199_1._spaceWizardExchangeClock) or 0
	arg_199_1._spaceWizardExchangeNext = tonumber(arg_199_1._spaceWizardExchangeNext) or math.max(0.1, tonumber(arg_199_1.spaceWizardExchangeFirstDelay) or __recovered_scope_0.var_0_274)

	if arg_199_5 then
		arg_199_1._spaceWizardExchangeClock = arg_199_1._spaceWizardExchangeClock + var_199_0
	end

	local var_199_2 = arg_199_1._spaceWizardExchangeCast

	if not var_199_2 then
		arg_199_1._bossSkillBusy = nil
		arg_199_1._bossSkillManualAnim = nil

		if arg_199_5 and arg_199_1._spaceWizardExchangeClock >= arg_199_1._spaceWizardExchangeNext then
			local var_199_3, var_199_4 = __recovered_scope_0.var_0_272.pickTargets(arg_199_0, arg_199_1)

			if var_199_3 and var_199_4 then
				__recovered_scope_0.var_0_290(arg_199_1, var_199_3, var_199_4, var_199_1)

				return true
			end
		end

		return false
	end

	arg_199_1._bossSkillBusy = true
	arg_199_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_286(arg_199_1)

	if not arg_199_5 then
		return true
	end

	var_199_2.t = (tonumber(var_199_2.t) or 0) + var_199_0

	local var_199_5 = math.max(0.01, tonumber(arg_199_1.spaceWizardExchangeFrameDur) or __recovered_scope_0.var_0_276)
	local var_199_6 = math.max(1, math.min(__recovered_scope_0.var_0_284, math.floor(tonumber(arg_199_1.spaceWizardExchangeTriggerFrame) or __recovered_scope_0.var_0_277)))
	local var_199_7 = math.min(__recovered_scope_0.var_0_284, 1 + math.floor(var_199_2.t / var_199_5 + 1e-06))

	if not var_199_2.exchanged and var_199_6 <= var_199_7 then
		var_199_7 = var_199_6
	end

	__recovered_scope_0.var_0_287(arg_199_1, var_199_7)

	if var_199_7 == var_199_6 and not var_199_2.exchanged then
		local var_199_8 = var_199_2.upper
		local var_199_9 = var_199_2.lower

		if not __recovered_scope_0.var_0_291(arg_199_0, var_199_8, -1, arg_199_1) or not __recovered_scope_0.var_0_291(arg_199_0, var_199_9, 1, arg_199_1) then
			var_199_8, var_199_9 = __recovered_scope_0.var_0_272.pickTargets(arg_199_0, arg_199_1)
		end

		if var_199_8 and var_199_9 then
			var_199_2.exchange = __recovered_scope_0.var_0_272.exchangeTargets(arg_199_0, var_199_8, var_199_9, arg_199_1)
		end

		var_199_2.exchanged = true
		var_199_2.motionDone = var_199_2.exchange == nil
	end

	if var_199_2.exchange then
		var_199_2.motionDone = __recovered_scope_0.var_0_272.updateExchangeTargets(arg_199_0, var_199_2.exchange, var_199_0)

		if var_199_2.motionDone then
			var_199_2.exchange = nil
		end
	end

	if var_199_2.t >= var_199_5 * __recovered_scope_0.var_0_284 and var_199_2.motionDone ~= false then
		__recovered_scope_0.var_0_297(arg_199_1)
	end

	return true
end

function __recovered_scope_0.var_0_272.releaseOnDeath(arg_200_0)
	if not arg_200_0 then
		return
	end

	local var_200_0 = arg_200_0._spaceWizardExchangeCast

	if var_200_0 and var_200_0.exchange then
		__recovered_scope_0.var_0_296(nil, var_200_0.exchange, false, false)
	end

	arg_200_0._spaceWizardExchangeCast = nil
	arg_200_0._bossSkillBusy = nil
	arg_200_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_272.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_274,
	COOLDOWN = __recovered_scope_0.var_0_275,
	FRAME_DURATION = __recovered_scope_0.var_0_276,
	TRIGGER_FRAME = __recovered_scope_0.var_0_277,
	LIFT_DURATION = __recovered_scope_0.var_0_278,
	CROSS_DURATION = __recovered_scope_0.var_0_279,
	LOWER_DURATION = __recovered_scope_0.var_0_280,
	LIFT_HEIGHT = __recovered_scope_0.var_0_281,
	CROSS_SWAY = __recovered_scope_0.var_0_282,
	CAST_ANIMATION = __recovered_scope_0.var_0_283,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_284
}

 __recovered_scope_0.var_0_298 = __recovered_scope_0.var_0_272
 __recovered_scope_0.var_0_299 = nil
 __recovered_scope_0.var_0_300 = {}
 __recovered_scope_0.var_0_301 = require("src.game.combat").stage6_rift
 __recovered_scope_0.var_0_302 = 4
 __recovered_scope_0.var_0_303 = 8
 __recovered_scope_0.var_0_304 = 2
 __recovered_scope_0.var_0_305 = 0.08
 __recovered_scope_0.var_0_306 = 0.4
 __recovered_scope_0.var_0_307 = 2
 __recovered_scope_0.var_0_308 = 5
 __recovered_scope_0.var_0_309 = 6
 __recovered_scope_0.var_0_310 = 10
 __recovered_scope_0.var_0_311 = {
	"_pendingCavalryHit",
	"_pendingDuelistHit",
	"_pendingWarriorHit",
	"_pendingSpearHit",
	"_pendingBoarHit",
	"_pendingPantherHit",
	"_pendingColossusHit",
	"_pendingHowlHit",
	"_pendingBerserkHit",
	"_pendingOrcHit",
	"_pendingGoblinHit",
	"_pendingJesterPrankHit",
	"_pendingFirebreatherHit"
}

 function __recovered_scope_0.var_0_312(arg_201_0)
	return arg_201_0 and arg_201_0.alive and not arg_201_0.dying and not arg_201_0._venomMawSwallowed and not arg_201_0.isUndyingSoul and (tonumber(arg_201_0.hp) == nil or (tonumber(arg_201_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_313(arg_202_0, arg_202_1)
	if not arg_202_0 or not arg_202_0.anim then
		return
	end

	arg_202_0.anim.name = "attack3"
	arg_202_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_310, math.floor(tonumber(arg_202_1) or 1)))
	arg_202_0.anim.t = 0
	arg_202_0.anim.reverse = nil
	arg_202_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_314(arg_203_0)
	if not arg_203_0 then
		return
	end

	arg_203_0.target, arg_203_0.pendingTarget, arg_203_0.shotPending = nil, nil, false
	arg_203_0._meleeLoop = false
	arg_203_0._pendingGoblinHit, arg_203_0._pendingOrcHit = nil
	arg_203_0._pendingHowlHit, arg_203_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_315(arg_204_0, arg_204_1)
	if math.atan2 then
		return math.atan2(arg_204_1, arg_204_0)
	end

	if arg_204_0 == 0 then
		return arg_204_1 >= 0 and math.pi * 0.5 or -math.pi * 0.5
	end

	local var_204_0 = math.atan(arg_204_1 / arg_204_0)

	if arg_204_0 < 0 then
		var_204_0 = var_204_0 + math.pi
	end

	return var_204_0
end

 function __recovered_scope_0.var_0_316(arg_205_0)
	if arg_205_0 and arg_205_0.colX and arg_205_0.colY and arg_205_0.colW and arg_205_0.colH then
		return arg_205_0.colX + arg_205_0.colW * 0.5, arg_205_0.colY + arg_205_0.colH * 0.5
	end

	return tonumber(arg_205_0 and arg_205_0.x) or 0, tonumber(arg_205_0 and arg_205_0.y) or 0
end

 function __recovered_scope_0.var_0_317(arg_206_0, arg_206_1)
	local var_206_0 = __recovered_scope_0.var_0_301.entityLane(arg_206_0, arg_206_1)

	if var_206_0 ~= -1 and var_206_0 ~= 1 then
		return nil
	end

	local var_206_1 = {}

	for iter_206_0, iter_206_1 in ipairs(arg_206_0 and arg_206_0.allies or {}) do
		if iter_206_1.side == "ally" and __recovered_scope_0.var_0_312(iter_206_1) and __recovered_scope_0.var_0_301.entityLane(arg_206_0, iter_206_1) == -var_206_0 and not require("src.game.unit_abilities").dimensional_duel.separated(arg_206_0, arg_206_1, iter_206_1) then
			var_206_1[#var_206_1 + 1] = iter_206_1
		end
	end

	if #var_206_1 == 0 then
		return nil
	end

	return var_206_1[(love and love.math and love.math.random or math.random)(1, #var_206_1)]
end

 function __recovered_scope_0.var_0_318(arg_207_0, arg_207_1)
	if type(arg_207_0) ~= "table" or arg_207_0.skillDamage == true or arg_207_0.battleSkillDamage == true or arg_207_0.basicAttack == false then
		return false
	end

	if arg_207_0.target == arg_207_1 then
		return true
	end

	for iter_207_0, iter_207_1 in ipairs(arg_207_0.targets or {}) do
		if iter_207_1 == arg_207_1 then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_319(arg_208_0, arg_208_1)
	if not arg_208_0 or not arg_208_0.alive or arg_208_0.side == "enemy" or arg_208_0.basicAttack ~= true then
		return false
	end

	if arg_208_0.targetOnly then
		return arg_208_0.targetOnly == arg_208_1
	end

	local var_208_0, var_208_1 = __recovered_scope_0.var_0_316(arg_208_1)
	local var_208_2 = var_208_0 - (tonumber(arg_208_0.x) or 0)
	local var_208_3 = var_208_1 - (tonumber(arg_208_0.y) or 0)
	local var_208_4 = tonumber(arg_208_0.vx) or 0
	local var_208_5 = tonumber(arg_208_0.vy) or 0
	local var_208_6 = var_208_4 * var_208_4 + var_208_5 * var_208_5
	local var_208_7 = var_208_2 * var_208_4 + var_208_3 * var_208_5

	if var_208_6 <= 0.0001 or var_208_7 <= 0 then
		return false
	end

	local var_208_8 = math.max(0, var_208_2 * var_208_2 + var_208_3 * var_208_3 - var_208_7 * var_208_7 / var_208_6)
	local var_208_9 = math.max(10, (tonumber(arg_208_1.colW) or 20) * 0.5, (tonumber(arg_208_1.colH) or 20) * 0.5)

	return var_208_8 <= var_208_9 * var_208_9
end

 function __recovered_scope_0.var_0_320(arg_209_0, arg_209_1)
	for iter_209_0, iter_209_1 in ipairs(arg_209_0 and arg_209_0.allies or {}) do
		if iter_209_1.side == "ally" and __recovered_scope_0.var_0_312(iter_209_1) then
			if iter_209_1.shotPending and iter_209_1.pendingTarget == arg_209_1 then
				return true
			end

			for iter_209_2, iter_209_3 in ipairs(__recovered_scope_0.var_0_311) do
				if __recovered_scope_0.var_0_318(iter_209_1[iter_209_3], arg_209_1) then
					return true
				end
			end

			if iter_209_1.target == arg_209_1 then
				local var_209_0, var_209_1 = __recovered_scope_0.var_0_316(iter_209_1)
				local var_209_2, var_209_3 = __recovered_scope_0.var_0_316(arg_209_1)
				local var_209_4 = var_209_2 - var_209_0
				local var_209_5 = var_209_3 - var_209_1
				local var_209_6 = math.max(1, tonumber(iter_209_1.distance) or 50) + 6

				if var_209_4 * var_209_4 + var_209_5 * var_209_5 <= var_209_6 * var_209_6 then
					return true
				end
			end
		end
	end

	for iter_209_4, iter_209_5 in ipairs(arg_209_0 and arg_209_0.projectiles or {}) do
		if __recovered_scope_0.var_0_319(iter_209_5, arg_209_1) then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_321(arg_210_0, arg_210_1)
	if not arg_210_0 then
		return
	end

	arg_210_0.vfx = arg_210_0.vfx or {}

	local var_210_0 = tonumber(arg_210_1.x) or 0
	local var_210_1 = tonumber(arg_210_1.y) or 0
	local var_210_2 = __recovered_scope_0.var_0_315(tonumber(arg_210_1.vx) or 1, tonumber(arg_210_1.vy) or 0)

	arg_210_0.vfx[#arg_210_0.vfx + 1] = {
		kind = "crescent_deflect",
		isProjectile = true,
		dur = 0.26,
		t = 0,
		x = var_210_0,
		y = var_210_1,
		ang = var_210_2
	}
end

 function __recovered_scope_0.var_0_322(arg_211_0, arg_211_1, arg_211_2)
	if not arg_211_0 then
		return
	end

	arg_211_0.vfx = arg_211_0.vfx or {}

	local var_211_0, var_211_1 = __recovered_scope_0.var_0_316(arg_211_1)
	local var_211_2
	local var_211_3

	if arg_211_2 then
		var_211_2, var_211_3 = __recovered_scope_0.var_0_316(arg_211_2)
	else
		var_211_2, var_211_3 = var_211_0 - 20, var_211_1
	end

	local var_211_4 = __recovered_scope_0.var_0_315(var_211_2 - var_211_0, var_211_3 - var_211_1)
	local var_211_5 = var_211_0 + math.cos(var_211_4) * 12
	local var_211_6 = var_211_1 + math.sin(var_211_4) * 12

	arg_211_0.vfx[#arg_211_0.vfx + 1] = {
		kind = "crescent_deflect",
		dur = 0.22,
		isMelee = true,
		t = 0,
		x = var_211_5,
		y = var_211_6,
		ang = var_211_4
	}
end

function __recovered_scope_0.var_0_300.matches(arg_212_0)
	if not arg_212_0 then
		return false
	end

	local var_212_0 = tostring(arg_212_0.kind or "")
	local var_212_1 = tostring(arg_212_0.skin or "")

	return var_212_0 == "Crescent Raider" or var_212_0 == "초승달 약탈자" or var_212_0 == "초승달 약탈자 (Crescent Raider)" or var_212_1 == "Crescent Raider" or var_212_1 == "초승달 약탈자" or var_212_1 == "초승달 약탈자 (Crescent Raider)"
end

function __recovered_scope_0.var_0_300.isActive(arg_213_0)
	return __recovered_scope_0.var_0_300.matches(arg_213_0) and arg_213_0._crescentRaiderFlurryActive == true
end

 function __recovered_scope_0.var_0_323(arg_214_0, arg_214_1)
	__recovered_scope_0.var_0_314(arg_214_0)

	arg_214_0._crescentRaiderFlurryState = {
		t = 0,
		phase = "startup"
	}
	arg_214_0._crescentRaiderFlurryNext = arg_214_0._crescentRaiderFlurryClock + arg_214_1
	arg_214_0._crescentRaiderFlurryActive = nil
	arg_214_0._bossSkillBusy, arg_214_0._bossSkillManualAnim = true, true

	__recovered_scope_0.var_0_313(arg_214_0, 1)
end

 function __recovered_scope_0.var_0_324(arg_215_0)
	arg_215_0._crescentRaiderFlurryState = nil
	arg_215_0._crescentRaiderFlurryActive = nil
	arg_215_0._bossSkillBusy, arg_215_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_312(arg_215_0) and arg_215_0.anim then
		arg_215_0.anim.name, arg_215_0.anim.frame, arg_215_0.anim.t = "idle", 1, 0
		arg_215_0.anim.reverse = nil
		arg_215_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_300.update(arg_216_0, arg_216_1, arg_216_2, arg_216_3, arg_216_4, arg_216_5)
	if not arg_216_0 or not __recovered_scope_0.var_0_300.matches(arg_216_1) or not __recovered_scope_0.var_0_312(arg_216_1) then
		return false
	end

	local var_216_0 = math.max(0, tonumber(arg_216_2) or 0)
	local var_216_1 = math.max(0.1, tonumber(arg_216_1.crescentRaiderFlurryCd) or __recovered_scope_0.var_0_303)
	local var_216_2 = math.max(0.1, tonumber(arg_216_1.crescentRaiderFlurryDur) or __recovered_scope_0.var_0_304)
	local var_216_3 = math.max(0.02, tonumber(arg_216_1.crescentRaiderFlurryFrameDur) or __recovered_scope_0.var_0_305)

	arg_216_1._crescentRaiderFlurryClock = tonumber(arg_216_1._crescentRaiderFlurryClock) or 0
	arg_216_1._crescentRaiderFlurryNext = tonumber(arg_216_1._crescentRaiderFlurryNext) or math.max(0.1, tonumber(arg_216_1.crescentRaiderFlurryFirstDelay) or __recovered_scope_0.var_0_302)

	if arg_216_5 then
		arg_216_1._crescentRaiderFlurryClock = arg_216_1._crescentRaiderFlurryClock + var_216_0
	end

	local var_216_4 = arg_216_1._crescentRaiderFlurryState

	if not var_216_4 then
		arg_216_1._crescentRaiderFlurryActive = nil
		arg_216_1._bossSkillBusy, arg_216_1._bossSkillManualAnim = nil

		if arg_216_5 and arg_216_1._crescentRaiderFlurryClock >= arg_216_1._crescentRaiderFlurryNext then
			__recovered_scope_0.var_0_323(arg_216_1, var_216_1)

			return true
		end

		return false
	end

	arg_216_1._bossSkillBusy, arg_216_1._bossSkillManualAnim = true, true

	__recovered_scope_0.var_0_314(arg_216_1)

	if not arg_216_5 then
		return true
	end

	var_216_4.t = (tonumber(var_216_4.t) or 0) + var_216_0

	if var_216_4.phase == "startup" then
		__recovered_scope_0.var_0_313(arg_216_1, 1)

		if var_216_3 <= var_216_4.t then
			var_216_4.phase, var_216_4.t = "spin", var_216_4.t - var_216_3
			arg_216_1._crescentRaiderFlurryActive = true
		end
	end

	if var_216_4.phase == "spin" then
		if var_216_2 <= var_216_4.t then
			var_216_4.phase, var_216_4.t = "recovery", var_216_4.t - var_216_2
			arg_216_1._crescentRaiderFlurryActive = nil
		else
			__recovered_scope_0.var_0_313(arg_216_1, __recovered_scope_0.var_0_307 + math.floor(var_216_4.t / var_216_3) % (__recovered_scope_0.var_0_308 - __recovered_scope_0.var_0_307 + 1))

			return true
		end
	end

	if var_216_4.phase == "recovery" then
		local var_216_5 = __recovered_scope_0.var_0_310 - __recovered_scope_0.var_0_309 + 1

		if var_216_4.t >= var_216_3 * var_216_5 then
			__recovered_scope_0.var_0_324(arg_216_1)

			return false
		end

		__recovered_scope_0.var_0_313(arg_216_1, __recovered_scope_0.var_0_309 + math.min(var_216_5 - 1, math.floor(var_216_4.t / var_216_3)))
	end

	return true
end

function __recovered_scope_0.var_0_300.blocksDamageToEnemy(arg_217_0, arg_217_1, arg_217_2, arg_217_3)
	if not arg_217_0 or not __recovered_scope_0.var_0_300.isActive(arg_217_1) then
		return false
	end

	local var_217_0 = type(arg_217_3) == "table" and arg_217_3 or {}

	if var_217_0.battleSkillDamage == true or var_217_0.skillDamage == true or var_217_0.skillAttack == true or var_217_0.skillBig == true or var_217_0.forceSkillBig == true or var_217_0.basicAttack ~= true then
		return false
	end

	arg_217_1.hitFlash = {
		dur = 0.12,
		t = 0,
		color = {
			0.2,
			0.88,
			1
		}
	}

	__recovered_scope_0.var_0_322(arg_217_0, arg_217_1, arg_217_2)

	return true
end

function __recovered_scope_0.var_0_300.tryDeflectProjectile(arg_218_0, arg_218_1, arg_218_2)
	if not arg_218_0 or not arg_218_1 or not arg_218_1.alive or not __recovered_scope_0.var_0_300.isActive(arg_218_2) or arg_218_1.side == "enemy" or arg_218_1.basicAttack ~= true or arg_218_1.battleSkillDamage == true or arg_218_1.crescentRaiderDeflected or not not arg_218_1.visualOnly then
		return false
	end

	local var_218_0 = __recovered_scope_0.var_0_317(arg_218_0, arg_218_2)

	__recovered_scope_0.var_0_321(arg_218_0, arg_218_1)

	arg_218_2.hitFlash = {
		dur = 0.12,
		t = 0,
		color = {
			0.38,
			0.82,
			1
		}
	}

	if not var_218_0 then
		arg_218_1.alive = false

		return true
	end

	local var_218_1 = tonumber(arg_218_1.vx) or 0
	local var_218_2 = tonumber(arg_218_1.vy) or 0
	local var_218_3 = math.sqrt(var_218_1 * var_218_1 + var_218_2 * var_218_2)
	local var_218_4 = math.max(200, math.min(360, var_218_3 > 1 and var_218_3 or 260))
	local var_218_5, var_218_6 = __recovered_scope_0.var_0_316(var_218_0)
	local var_218_7 = var_218_5 - (tonumber(arg_218_1.x) or 0)
	local var_218_8 = var_218_6 - (tonumber(arg_218_1.y) or 0)
	local var_218_9 = math.sqrt(var_218_7 * var_218_7 + var_218_8 * var_218_8)

	if var_218_9 > 0.0001 then
		var_218_7, var_218_8 = var_218_7 / var_218_9, var_218_8 / var_218_9
	else
		var_218_7 = var_218_3 > 1 and -var_218_1 / var_218_3 or -1
		var_218_8 = var_218_3 > 1 and -var_218_2 / var_218_3 or 0
	end

	arg_218_1.crescentRaiderDeflected = true
	arg_218_1.crescentRaiderDeflectTarget = var_218_0
	arg_218_1.side, arg_218_1.owner = "enemy", arg_218_2
	arg_218_1.targetOnly = var_218_0
	arg_218_1.dmg = math.max(1, math.floor((tonumber(arg_218_1.dmg) or 0) * math.max(0, tonumber(arg_218_2.crescentRaiderFlurryReflectFrac) or __recovered_scope_0.var_0_306) + 0.5))
	arg_218_1.hitTargets, arg_218_1.pierce, arg_218_1.knockback = {}
	arg_218_1.basicAttack, arg_218_1.battleSkillDamage = nil
	arg_218_1.basicAttackCounted, arg_218_1.maxTargets = true, 1
	arg_218_1.overdriveChop, arg_218_1.isBrace = nil
	arg_218_1.shackleSlowFrac, arg_218_1.bindingDur = nil
	arg_218_1.galeBowSlowFrac, arg_218_1.deadlyBulletDamageTakenFrac = nil
	arg_218_1.stingerPoison, arg_218_1.dragonkinFlameMud = nil
	arg_218_1.caveBasiliskPetrify, arg_218_1.gazerGaze = nil
	arg_218_1.eyeWarlockDarkOrb, arg_218_1.spaceHunterGravityArrow = nil
	arg_218_1.bloodMoonSlash = nil
	arg_218_1.state, arg_218_1.phase, arg_218_1.targetsRef = "flight"
	arg_218_1.didDamage, arg_218_1.maxTravel = false
	arg_218_1.startX, arg_218_1.startY = arg_218_1.x, arg_218_1.y
	arg_218_1.minHitTravel = 8
	arg_218_1.life = math.max(tonumber(arg_218_1.life) or 0, 2.5)
	arg_218_1.x = (tonumber(arg_218_1.x) or 0) + var_218_7 * 4
	arg_218_1.y = (tonumber(arg_218_1.y) or 0) + var_218_8 * 4
	arg_218_1.vx, arg_218_1.vy = var_218_7 * var_218_4, var_218_8 * var_218_4
	arg_218_1.dirX, arg_218_1.dirY = var_218_7, var_218_8
	arg_218_1.rot = __recovered_scope_0.var_0_315(var_218_7, var_218_8)

	return true
end

function __recovered_scope_0.var_0_300.updateDeflectedProjectile(arg_219_0, arg_219_1)
	if not arg_219_0 or not arg_219_1 or not arg_219_1.crescentRaiderDeflected then
		return false
	end

	return __recovered_scope_0.var_0_312(arg_219_1.crescentRaiderDeflectTarget)
end

function __recovered_scope_0.var_0_300.releaseOnDeath(arg_220_0)
	if not arg_220_0 then
		return
	end

	arg_220_0._crescentRaiderFlurryState = nil
	arg_220_0._crescentRaiderFlurryActive = nil
	arg_220_0._bossSkillBusy, arg_220_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_300.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_302,
	COOLDOWN = __recovered_scope_0.var_0_303,
	DURATION = __recovered_scope_0.var_0_304,
	FRAME_DURATION = __recovered_scope_0.var_0_305,
	REFLECT_DAMAGE_FRAC = __recovered_scope_0.var_0_306
}

 __recovered_scope_0.var_0_325 = __recovered_scope_0.var_0_300
 __recovered_scope_0.var_0_326 = nil
 __recovered_scope_0.var_0_327 = {}
 __recovered_scope_0.var_0_328 = require("src.game.combat").stage6_rift
 __recovered_scope_0.var_0_329 = 8
 __recovered_scope_0.var_0_330 = 8
 __recovered_scope_0.var_0_331 = 0.11
 __recovered_scope_0.var_0_332 = 4
 __recovered_scope_0.var_0_333 = 8
 __recovered_scope_0.var_0_334 = 1100
 __recovered_scope_0.var_0_335 = 6
 __recovered_scope_0.var_0_336 = 34
 __recovered_scope_0.var_0_337 = 0.48
 __recovered_scope_0.var_0_338 = 35
 __recovered_scope_0.var_0_339 = 0.6
 __recovered_scope_0.var_0_340 = 0.3

 function __recovered_scope_0.var_0_341(arg_221_0)
	return arg_221_0 and arg_221_0.alive == true and arg_221_0.dying ~= true and (tonumber(arg_221_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_342(arg_222_0)
	return __recovered_scope_0.var_0_341(arg_222_0) and arg_222_0.isCrystalGuardWall == true
end

 function __recovered_scope_0.var_0_343(arg_223_0)
	if arg_223_0 and arg_223_0.colX and arg_223_0.colY and arg_223_0.colW and arg_223_0.colH then
		return arg_223_0.colX + arg_223_0.colW * 0.5, arg_223_0.colY + arg_223_0.colH * 0.5
	end

	return tonumber(arg_223_0 and arg_223_0.x) or 0, tonumber(arg_223_0 and arg_223_0.y) or 0
end

 function __recovered_scope_0.var_0_344(arg_224_0)
	arg_224_0.target, arg_224_0.pendingTarget = nil
	arg_224_0.shotPending, arg_224_0._meleeLoop = false, false
	arg_224_0._pendingGoblinHit, arg_224_0._pendingOrcHit = nil
	arg_224_0._pendingHowlHit, arg_224_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_345(arg_225_0, arg_225_1)
	arg_225_0.anim = arg_225_0.anim or {}
	arg_225_0.anim.name = "attack2"
	arg_225_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_333, arg_225_1))
	arg_225_0.anim.t = 0
	arg_225_0.anim.reverse = nil
	arg_225_0.anim._desynced = true
end

function __recovered_scope_0.var_0_327.matches(arg_226_0)
	if not arg_226_0 or arg_226_0.isCrystalGuardWall then
		return false
	end

	local var_226_0 = tostring(arg_226_0.kind or "")
	local var_226_1 = tostring(arg_226_0.skin or "")

	return var_226_0 == "Crystal Guard" or var_226_1 == "Crystal Guard" or var_226_0 == "수정 근위병" or var_226_1 == "수정 근위병" or var_226_0 == "수정 근위병 (Crystal Guard)" or var_226_1 == "수정 근위병 (Crystal Guard)"
end

function __recovered_scope_0.var_0_327.hasCombatOpponentInLane(arg_227_0, arg_227_1)
	if require("src.game.unit_abilities").dimensional_duel.of(arg_227_1) then
		return false
	end

	local var_227_0 = __recovered_scope_0.var_0_328.entityLane(arg_227_0, arg_227_1)

	if var_227_0 == nil then
		return false
	end

	for iter_227_0, iter_227_1 in ipairs(arg_227_0 and arg_227_0.allies or {}) do
		if iter_227_1.side == "ally" and __recovered_scope_0.var_0_341(iter_227_1) and not iter_227_1.isUndyingSoul and not iter_227_1._venomMawSwallowed and not iter_227_1._wastelandPiperCharm and not iter_227_1._greatswordDismountLocked and __recovered_scope_0.var_0_328.entityLane(arg_227_0, iter_227_1) == var_227_0 then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_327.hasLivingTeammate(arg_228_0, arg_228_1)
	for iter_228_0, iter_228_1 in ipairs(arg_228_0.enemies or {}) do
		if iter_228_1 ~= arg_228_1 and __recovered_scope_0.var_0_341(iter_228_1) and not iter_228_1.isCrystalGuardWall and not iter_228_1.isHusk and not iter_228_1._tricksterCharm and iter_228_1.side ~= "ally" then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_346(arg_229_0)
	for iter_229_0, iter_229_1 in ipairs(arg_229_0 and arg_229_0.enemies or {}) do
		iter_229_1._crystalGuardBarrierProtectedBy = nil
	end

	for iter_229_2, iter_229_3 in ipairs(arg_229_0 and arg_229_0.enemies or {}) do
		if iter_229_3.side == "enemy" and not iter_229_3.isCrystalGuardWall and __recovered_scope_0.var_0_341(iter_229_3) then
			iter_229_3._crystalGuardBarrierProtectedBy = __recovered_scope_0.var_0_328.findProtectingCrystalWall(arg_229_0, iter_229_3)
		end
	end
end

 function __recovered_scope_0.var_0_347(arg_230_0, arg_230_1)
	if not arg_230_0 or not __recovered_scope_0.var_0_341(arg_230_1) then
		return nil
	end

	local var_230_0 = (tonumber(arg_230_1.facing) or -1) >= 0 and 1 or -1
	local var_230_1 = math.max(1, math.floor(tonumber(arg_230_1.crystalGuardWallHp) or __recovered_scope_0.var_0_334))
	local var_230_2 = {
		_baseDmg = 0,
		kind = "Crystal Wall",
		hpbarShowT = 0,
		dying = false,
		alive = true,
		spawnT = 1,
		power = 0,
		isCrystalGuardWall = true,
		distance = 0,
		_crystalGuardWallT = 0,
		sym = "C",
		speed = 0,
		dmg = 0,
		coolTicks = 999999,
		fixedPower = 0,
		_crystalGuardWallRiseT = 0,
		spawnRamp = 0.01,
		atkTicks = 999999,
		atkPeriod = 999999,
		displayName = "수정 장벽",
		nameKo = "수정 장벽",
		side = "enemy",
		_bossSkillBusy = true,
		hp = var_230_1,
		maxhp = var_230_1,
		facing = var_230_0,
		x = (tonumber(arg_230_1.x) or 0) + var_230_0 * (tonumber(arg_230_1.crystalGuardWallOffset) or __recovered_scope_0.var_0_336),
		y = tonumber(arg_230_1.y) or 0,
		anim = {
			frame = 1,
			name = "idle",
			t = 0
		},
		_baseMaxHP = var_230_1,
		_crystalGuardOwner = arg_230_1,
		_crystalGuardFrontDirection = var_230_0,
		_crystalGuardWallRiseDur = math.max(0.1, tonumber(arg_230_1.crystalGuardWallRiseDur) or __recovered_scope_0.var_0_337),
		_crystalGuardWallDur = math.max(0.1, tonumber(arg_230_1.crystalGuardWallDuration) or __recovered_scope_0.var_0_335),
		_crystalGuardShardRange = math.max(1, tonumber(arg_230_1.crystalGuardShardRange) or __recovered_scope_0.var_0_338)
	}

	__recovered_scope_0.var_0_328.resolveSpawn(arg_230_0, var_230_2)

	var_230_2._crystalGuardWallAnchorX = var_230_2.x
	var_230_2._crystalGuardWallAnchorY = var_230_2.y
	arg_230_0.enemies[#arg_230_0.enemies + 1] = var_230_2
	arg_230_1._crystalGuardWall = var_230_2

	__recovered_scope_0.var_0_346(arg_230_0)

	return var_230_2
end

 function __recovered_scope_0.var_0_348(arg_231_0, arg_231_1)
	__recovered_scope_0.var_0_344(arg_231_0)

	arg_231_0._crystalGuardBarrierState = {
		t = 0,
		created = false,
		phase = "startup"
	}
	arg_231_0._crystalGuardBarrierNext = arg_231_0._crystalGuardBarrierClock + arg_231_1
	arg_231_0._bossSkillBusy, arg_231_0._bossSkillManualAnim = true, true

	__recovered_scope_0.var_0_345(arg_231_0, 1)
end

 function __recovered_scope_0.var_0_349(arg_232_0)
	arg_232_0._crystalGuardBarrierState = nil
	arg_232_0._crystalGuardBarrierHoldX = nil
	arg_232_0._crystalGuardBarrierHoldY = nil
	arg_232_0._bossSkillBusy, arg_232_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_341(arg_232_0) and arg_232_0.anim then
		arg_232_0.anim.name, arg_232_0.anim.frame, arg_232_0.anim.t = "idle", 1, 0
		arg_232_0.anim.reverse = nil
		arg_232_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_327.update(arg_233_0, arg_233_1, arg_233_2, arg_233_3, arg_233_4, arg_233_5)
	if not arg_233_0 or not __recovered_scope_0.var_0_327.matches(arg_233_1) or not __recovered_scope_0.var_0_341(arg_233_1) then
		return false
	end

	local var_233_0 = math.max(0, tonumber(arg_233_2) or 0)
	local var_233_1 = math.max(0.1, tonumber(arg_233_1.crystalGuardBarrierCd) or __recovered_scope_0.var_0_330)
	local var_233_2 = math.max(0.03, tonumber(arg_233_1.crystalGuardBarrierFrameDur) or __recovered_scope_0.var_0_331)

	arg_233_1._crystalGuardBarrierClock = tonumber(arg_233_1._crystalGuardBarrierClock) or 0
	arg_233_1._crystalGuardBarrierNext = tonumber(arg_233_1._crystalGuardBarrierNext) or math.max(0.1, tonumber(arg_233_1.crystalGuardBarrierFirstDelay) or __recovered_scope_0.var_0_329)

	if arg_233_5 then
		arg_233_1._crystalGuardBarrierClock = arg_233_1._crystalGuardBarrierClock + var_233_0
	end

	local var_233_3 = arg_233_1._crystalGuardBarrierState

	if not __recovered_scope_0.var_0_327.hasLivingTeammate(arg_233_0, arg_233_1) then
		if var_233_3 then
			__recovered_scope_0.var_0_349(arg_233_1)
		end

		return false
	end

	if not var_233_3 then
		arg_233_1._bossSkillBusy, arg_233_1._bossSkillManualAnim = nil

		if arg_233_5 and arg_233_1._crystalGuardBarrierClock >= arg_233_1._crystalGuardBarrierNext and not __recovered_scope_0.var_0_342(arg_233_1._crystalGuardWall) and __recovered_scope_0.var_0_327.hasCombatOpponentInLane(arg_233_0, arg_233_1) then
			__recovered_scope_0.var_0_348(arg_233_1, var_233_1)

			return true
		end

		return false
	end

	arg_233_1._bossSkillBusy, arg_233_1._bossSkillManualAnim = true, true

	__recovered_scope_0.var_0_344(arg_233_1)

	if var_233_3.phase == "hold" then
		arg_233_1.x = tonumber(arg_233_1._crystalGuardBarrierHoldX) or arg_233_1.x
		arg_233_1.y = tonumber(arg_233_1._crystalGuardBarrierHoldY) or arg_233_1.y
		arg_233_1._kb = nil

		__recovered_scope_0.var_0_345(arg_233_1, __recovered_scope_0.var_0_332)

		if __recovered_scope_0.var_0_342(arg_233_1._crystalGuardWall) then
			return true
		end

		var_233_3.phase, var_233_3.t = "recovery", 0
	end

	if not arg_233_5 then
		return true
	end

	var_233_3.t = (tonumber(var_233_3.t) or 0) + var_233_0

	if var_233_3.phase == "startup" then
		local var_233_4 = math.min(__recovered_scope_0.var_0_332, math.floor(var_233_3.t / var_233_2) + 1)

		__recovered_scope_0.var_0_345(arg_233_1, var_233_4)

		if not var_233_3.created and var_233_4 >= __recovered_scope_0.var_0_332 then
			var_233_3.created = true

			if __recovered_scope_0.var_0_347(arg_233_0, arg_233_1) then
				var_233_3.phase, var_233_3.t = "hold", 0
				arg_233_1._crystalGuardBarrierHoldX = arg_233_1.x
				arg_233_1._crystalGuardBarrierHoldY = arg_233_1.y

				__recovered_scope_0.var_0_345(arg_233_1, __recovered_scope_0.var_0_332)

				return true
			end

			var_233_3.phase, var_233_3.t = "recovery", 0
		end
	end

	if var_233_3.phase == "recovery" then
		local var_233_5 = __recovered_scope_0.var_0_333 - __recovered_scope_0.var_0_332

		if var_233_3.t >= var_233_2 * var_233_5 then
			__recovered_scope_0.var_0_349(arg_233_1)

			return false
		end

		__recovered_scope_0.var_0_345(arg_233_1, __recovered_scope_0.var_0_332 + 1 + math.min(var_233_5 - 1, math.floor(var_233_3.t / var_233_2)))
	end

	return true
end

 function __recovered_scope_0.var_0_350(arg_234_0, arg_234_1)
	local var_234_0, var_234_1 = __recovered_scope_0.var_0_343(arg_234_1)
	local var_234_2 = math.max(1, tonumber(arg_234_1._crystalGuardShardRange) or __recovered_scope_0.var_0_338)
	local var_234_3 = {}
	local var_234_4 = arg_234_1
	local var_234_5 = require("src.game.unit_abilities").dimensional_duel

	for iter_234_0, iter_234_1 in ipairs(arg_234_0 and arg_234_0.allies or {}) do
		if iter_234_1.side == "ally" and __recovered_scope_0.var_0_341(iter_234_1) and not iter_234_1._venomMawSwallowed and not var_234_5.separated(arg_234_0, var_234_4, iter_234_1) then
			local var_234_6, var_234_7 = __recovered_scope_0.var_0_343(iter_234_1)
			local var_234_8 = var_234_6 - var_234_0
			local var_234_9 = (var_234_7 - var_234_1) / 0.5
			local var_234_10 = var_234_8 * var_234_8 + var_234_9 * var_234_9

			if var_234_10 <= var_234_2 * var_234_2 then
				var_234_3[#var_234_3 + 1] = {
					entity = iter_234_1,
					distanceSq = var_234_10,
					x = var_234_6,
					y = var_234_7
				}
			end
		end
	end

	table.sort(var_234_3, function(arg_235_0, arg_235_1)
		return arg_235_0.distanceSq < arg_235_1.distanceSq
	end)

	while #var_234_3 > 2 do
		table.remove(var_234_3)
	end

	return var_234_3, var_234_0, var_234_1
end

 function __recovered_scope_0.var_0_351(arg_236_0, arg_236_1)
	local var_236_0, var_236_1, var_236_2 = __recovered_scope_0.var_0_350(arg_236_0, arg_236_1)

	arg_236_0._crystalGuardShards = arg_236_0._crystalGuardShards or {}

	local var_236_3 = arg_236_1._crystalGuardOwner
	local var_236_4 = var_236_3

	if not var_236_3 or require("src.game.unit_abilities").dimensional_duel.separated(arg_236_0, var_236_3, arg_236_1) then
		var_236_4 = arg_236_1
	end

	local var_236_5 = tonumber(var_236_3 and var_236_3.dmg) or 0
	local var_236_6 = math.max(1, math.floor(var_236_5 * math.max(0, tonumber(var_236_3 and var_236_3.crystalGuardShardDamageFrac) or __recovered_scope_0.var_0_339) + 0.5))

	for iter_236_0 = 1, 2 do
		local var_236_7 = var_236_0[iter_236_0]
		local var_236_8 = var_236_1 + (tonumber(arg_236_1._crystalGuardFrontDirection) or -1) * __recovered_scope_0.var_0_338 * (0.65 + iter_236_0 * 0.12)
		local var_236_9 = var_236_2 + (iter_236_0 == 1 and -12 or 12)

		arg_236_0._crystalGuardShards[#arg_236_0._crystalGuardShards + 1] = {
			t = 0,
			dur = __recovered_scope_0.var_0_340 + (iter_236_0 - 1) * 0.04,
			startX = var_236_1 + (iter_236_0 == 1 and -3 or 3),
			startY = var_236_2 - 8,
			x = var_236_1,
			y = var_236_2 - 8,
			endX = var_236_7 and var_236_7.x or var_236_8,
			endY = var_236_7 and var_236_7.y or var_236_9,
			target = var_236_7 and var_236_7.entity or nil,
			source = var_236_4,
			damage = var_236_6,
			spin = iter_236_0 == 1 and -1 or 1
		}
	end
end

function __recovered_scope_0.var_0_327.onEnemyDeath(arg_237_0, arg_237_1)
	if not arg_237_0 or not arg_237_1 or not arg_237_1.isCrystalGuardWall or arg_237_1._crystalGuardShattered then
		return false
	end

	arg_237_1._crystalGuardShattered = true

	local var_237_0 = arg_237_1._crystalGuardOwner

	if var_237_0 and var_237_0._crystalGuardWall == arg_237_1 then
		var_237_0._crystalGuardWall = nil

		local var_237_1 = var_237_0._crystalGuardBarrierState

		if var_237_1 and var_237_1.phase == "hold" then
			var_237_1.phase, var_237_1.t = "recovery", 0
		end
	end

	__recovered_scope_0.var_0_351(arg_237_0, arg_237_1)
	__recovered_scope_0.var_0_346(arg_237_0)

	return true
end

function __recovered_scope_0.var_0_327.blocksDamageToEnemyGlobal(arg_238_0, arg_238_1, arg_238_2)
	if not arg_238_2 or arg_238_2.side ~= "ally" then
		return false
	end

	local var_238_0 = __recovered_scope_0.var_0_328.findProtectingCrystalWall(arg_238_0, arg_238_1)

	if not var_238_0 then
		return false
	end

	var_238_0._crystalGuardBlockPulseT = 0.18
	var_238_0.hitFlash = {
		dur = 0.14,
		t = 0,
		color = {
			0.42,
			0.94,
			1
		}
	}
	var_238_0.hpbarShowT = math.max(tonumber(var_238_0.hpbarShowT) or 0, 0.55)

	return true
end

function __recovered_scope_0.var_0_327.modifyDamageToEnemyGlobal(arg_239_0, arg_239_1, arg_239_2)
	local var_239_0 = arg_239_0 and arg_239_0._crystalGuardBarrierProtectedBy

	if arg_239_2 and arg_239_2.side == "ally" and __recovered_scope_0.var_0_342(var_239_0) then
		return 0
	end

	return tonumber(arg_239_1) or 0
end

function __recovered_scope_0.var_0_327.updateWorld(arg_240_0, arg_240_1, arg_240_2, arg_240_3, arg_240_4)
	if not arg_240_0 then
		return
	end

	local var_240_0 = math.max(0, tonumber(arg_240_1) or 0)
	local var_240_1 = (tonumber(arg_240_0.timeStopT) or 0) > 0 and 0 or var_240_0

	for iter_240_0, iter_240_1 in ipairs(arg_240_0.enemies or {}) do
		if iter_240_1.isCrystalGuardWall then
			iter_240_1._bossSkillBusy = true
			iter_240_1.x = tonumber(iter_240_1._crystalGuardWallAnchorX) or iter_240_1.x
			iter_240_1.y = tonumber(iter_240_1._crystalGuardWallAnchorY) or iter_240_1.y
			iter_240_1._kb = nil
			iter_240_1._crystalGuardWallT = (tonumber(iter_240_1._crystalGuardWallT) or 0) + var_240_1

			if iter_240_1._crystalGuardWallT >= (tonumber(iter_240_1._crystalGuardWallDur) or __recovered_scope_0.var_0_335) then
				iter_240_1.hp = 0

				if not iter_240_1.dying and type(arg_240_4) == "function" then
					arg_240_4(iter_240_1)
				end
			end

			iter_240_1._crystalGuardWallRiseT = math.min(tonumber(iter_240_1._crystalGuardWallRiseDur) or __recovered_scope_0.var_0_337, (tonumber(iter_240_1._crystalGuardWallRiseT) or 0) + var_240_1)

			if (tonumber(iter_240_1._crystalGuardBlockPulseT) or 0) > 0 then
				iter_240_1._crystalGuardBlockPulseT = math.max(0, iter_240_1._crystalGuardBlockPulseT - var_240_1)
			end

			require("src.game.combat").crystal_barrier.updateCollider(arg_240_0, iter_240_1)
		elseif __recovered_scope_0.var_0_327.matches(iter_240_1) then
			local var_240_2 = iter_240_1._crystalGuardBarrierState

			if var_240_2 and var_240_2.phase == "hold" and __recovered_scope_0.var_0_342(iter_240_1._crystalGuardWall) then
				iter_240_1.x = tonumber(iter_240_1._crystalGuardBarrierHoldX) or iter_240_1.x
				iter_240_1.y = tonumber(iter_240_1._crystalGuardBarrierHoldY) or iter_240_1.y
				iter_240_1._kb = nil
				iter_240_1._bossSkillBusy, iter_240_1._bossSkillManualAnim = true, true

				__recovered_scope_0.var_0_345(iter_240_1, __recovered_scope_0.var_0_332)
			end
		end
	end

	__recovered_scope_0.var_0_346(arg_240_0)

	local var_240_3 = {}

	for iter_240_2, iter_240_3 in ipairs(arg_240_0._crystalGuardShards or {}) do
		iter_240_3.t = (tonumber(iter_240_3.t) or 0) + var_240_1

		local var_240_4 = math.max(0.05, tonumber(iter_240_3.dur) or __recovered_scope_0.var_0_340)
		local var_240_5 = math.max(0, math.min(1, iter_240_3.t / var_240_4))
		local var_240_6 = iter_240_3.target

		if __recovered_scope_0.var_0_341(var_240_6) then
			iter_240_3.endX, iter_240_3.endY = __recovered_scope_0.var_0_343(var_240_6)
		end

		local var_240_7 = var_240_5 * var_240_5 * (3 - 2 * var_240_5)

		iter_240_3.x = iter_240_3.startX + (iter_240_3.endX - iter_240_3.startX) * var_240_7
		iter_240_3.y = iter_240_3.startY + (iter_240_3.endY - iter_240_3.startY) * var_240_7 - math.sin(var_240_5 * math.pi) * 7
		iter_240_3.angle = math.atan2 and math.atan2(iter_240_3.endY - iter_240_3.startY, iter_240_3.endX - iter_240_3.startX) or 0

		if var_240_5 >= 1 then
			if __recovered_scope_0.var_0_341(var_240_6) and type(arg_240_2) == "function" then
				arg_240_2(var_240_6, iter_240_3.damage, iter_240_3.source, {
					skillBig = true,
					skillDamage = true
				})
			end
		else
			var_240_3[#var_240_3 + 1] = iter_240_3
		end
	end

	arg_240_0._crystalGuardShards = var_240_3
end

function __recovered_scope_0.var_0_327.releaseOnDeath(arg_241_0)
	if not arg_241_0 then
		return
	end

	arg_241_0._crystalGuardBarrierState = nil
	arg_241_0._crystalGuardBarrierHoldX = nil
	arg_241_0._crystalGuardBarrierHoldY = nil
	arg_241_0._bossSkillBusy, arg_241_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_327.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_329,
	COOLDOWN = __recovered_scope_0.var_0_330,
	FRAME_DURATION = __recovered_scope_0.var_0_331,
	CREATE_FRAME = __recovered_scope_0.var_0_332,
	WALL_HP = __recovered_scope_0.var_0_334,
	WALL_DURATION = __recovered_scope_0.var_0_335,
	SHARD_RANGE = __recovered_scope_0.var_0_338,
	SHARD_DAMAGE_FRAC = __recovered_scope_0.var_0_339
}

 __recovered_scope_0.var_0_352 = __recovered_scope_0.var_0_327
 __recovered_scope_0.var_0_353 = nil
 __recovered_scope_0.var_0_354 = {}
 __recovered_scope_0.var_0_355 = require("src.data.constants")
 __recovered_scope_0.var_0_356 = require("src.game.power")
 __recovered_scope_0.var_0_357 = require("src.game.promotion_stats")
 __recovered_scope_0.var_0_358 = require("src.data.faction")
 __recovered_scope_0.var_0_359 = require("src.game.projectiles").starlight_paladin_projectile
 __recovered_scope_0.var_0_360 = 5
 __recovered_scope_0.var_0_361 = 10
 __recovered_scope_0.var_0_362 = 4
 __recovered_scope_0.var_0_363 = 0.08
 __recovered_scope_0.var_0_364 = 6
 __recovered_scope_0.var_0_365 = "attack3"
 __recovered_scope_0.var_0_366 = 13
 __recovered_scope_0.var_0_367 = 0.4
 __recovered_scope_0.var_0_368 = 0.25
 __recovered_scope_0.var_0_369 = 2.5
 __recovered_scope_0.var_0_370 = 350
 __recovered_scope_0.var_0_371 = 0.3
 __recovered_scope_0.var_0_372 = {
	W = {
		aspd = 1.5,
		distance = 50,
		atk = 9,
		hp = 70
	},
	A = {
		aspd = 1.3,
		distance = 150,
		atk = 8,
		hp = 40
	},
	S = {
		aspd = 1.25,
		distance = 55,
		atk = 12,
		hp = 65
	},
	M = {
		aspd = 1.135,
		distance = 140,
		atk = 17,
		hp = 55
	},
	H = {
		aspd = 1.135,
		distance = 55,
		atk = 17,
		hp = 90
	},
	D = {
		aspd = 1.2,
		distance = 60,
		atk = 23,
		hp = 120
	},
	Joker = {
		aspd = 1,
		distance = 140,
		atk = 32,
		hp = 90
	},
	J = {
		aspd = 1,
		distance = 140,
		atk = 32,
		hp = 90
	}
}

 function __recovered_scope_0.var_0_373(arg_242_0, arg_242_1, arg_242_2)
	return {
		id = arg_242_0,
		name = arg_242_1 or arg_242_0,
		key = arg_242_2 or arg_242_0
	}
end

 __recovered_scope_0.var_0_374 = __recovered_scope_0.var_0_373("MiniSwordMan02", "병사", "MiniSwordMan02")
 __recovered_scope_0.var_0_375 = __recovered_scope_0.var_0_373("MiniSwordMan03", "기사", "MiniSwordMan03")
 __recovered_scope_0.var_0_376 = __recovered_scope_0.var_0_373("MiniArcherMan02", "석궁수", "MiniArcherMan02")
 __recovered_scope_0.var_0_377 = __recovered_scope_0.var_0_373("MiniArcherMan03", "장궁병", "MiniArcherMan03")
 __recovered_scope_0.var_0_378 = __recovered_scope_0.var_0_373("MiniSpearMan02", "창위병", "MiniSpearMan02")
 __recovered_scope_0.var_0_379 = __recovered_scope_0.var_0_373("MiniSpearMan03", "근위병", "MiniSpearMan03")
 __recovered_scope_0.var_0_380 = __recovered_scope_0.var_0_373("MiniHorseMan03", "중기병", "MiniHorseMan03")
 __recovered_scope_0.var_0_381 = {
	[3] = {
		W = {
			MiniSwordMan03 = __recovered_scope_0.var_0_374,
			기사 = __recovered_scope_0.var_0_374,
			암기사 = __recovered_scope_0.var_0_374,
			성기사 = __recovered_scope_0.var_0_374,
			해적왕 = __recovered_scope_0.var_0_373("해적"),
			엘프기사 = __recovered_scope_0.var_0_373("엘프병사"),
			바그 = __recovered_scope_0.var_0_373("사수 병사"),
			템플러 = __recovered_scope_0.var_0_373("성기사"),
			플레어 = __recovered_scope_0.var_0_373("염투사"),
			게이즈 = __recovered_scope_0.var_0_373("마검사"),
			마그누스 = __recovered_scope_0.var_0_373("암검사")
		},
		A = {
			MiniArcherMan03 = __recovered_scope_0.var_0_376,
			장궁병 = __recovered_scope_0.var_0_376,
			명사수 = __recovered_scope_0.var_0_373("순찰자"),
			["하이 엘프"] = __recovered_scope_0.var_0_373("엘프 궁수"),
			데드아이 = __recovered_scope_0.var_0_373("레인저")
		},
		S = {
			MiniSpearMan03 = __recovered_scope_0.var_0_378,
			근위병 = __recovered_scope_0.var_0_378,
			허스칼 = __recovered_scope_0.var_0_378,
			무법자 = __recovered_scope_0.var_0_373("약탈자"),
			["하이 엘프 보병"] = __recovered_scope_0.var_0_373("엘프 보병"),
			바바리안 = __recovered_scope_0.var_0_373("바이킹"),
			["엘프 근위병"] = __recovered_scope_0.var_0_373("엘프창병"),
			["해골 근위병"] = __recovered_scope_0.var_0_373("엘프창병")
		},
		M = {
			대주술사 = __recovered_scope_0.var_0_373("주술사"),
			대사제 = __recovered_scope_0.var_0_373("치유술사"),
			["엘프 현자"] = __recovered_scope_0.var_0_373("엘프법사"),
			원시법사 = __recovered_scope_0.var_0_373("야생법사"),
			["해골 마도사"] = __recovered_scope_0.var_0_373("엘프 주술사"),
			["현자 엘프"] = __recovered_scope_0.var_0_373("주술사"),
			암흑술사 = __recovered_scope_0.var_0_373("주술사"),
			본메이지 = __recovered_scope_0.var_0_373("주술사")
		},
		H = {
			MiniHorseMan03 = __recovered_scope_0.var_0_373("돌격병"),
			중기병 = __recovered_scope_0.var_0_373("돌격병"),
			워베어 = __recovered_scope_0.var_0_373("돌격병"),
			["무법 기병"] = __recovered_scope_0.var_0_373("도끼 기병"),
			["하이 엘프 기병"] = __recovered_scope_0.var_0_373("엘프 기병"),
			["광폭 기병"] = __recovered_scope_0.var_0_373("야만 기병")
		},
		D = {
			검황 = __recovered_scope_0.var_0_373("황제"),
			장군 = __recovered_scope_0.var_0_373("베테랑"),
			엔트로드 = __recovered_scope_0.var_0_373("엔트"),
			프랑켄슈타인 = __recovered_scope_0.var_0_373("빅터"),
			바그 = __recovered_scope_0.var_0_373("드루이드"),
			망령 = __recovered_scope_0.var_0_373("해적왕"),
			암흑장군 = __recovered_scope_0.var_0_373("황제"),
			우드워든 = __recovered_scope_0.var_0_373("베테랑")
		},
		Joker = {
			Illusionist = __recovered_scope_0.var_0_373("Trickster", "트릭스터", "Trickster"),
			Ringmaster = __recovered_scope_0.var_0_373("FerretTamer", "페럿 조련사", "FerretTamer")
		},
		J = {
			Illusionist = __recovered_scope_0.var_0_373("Trickster", "트릭스터", "Trickster"),
			Ringmaster = __recovered_scope_0.var_0_373("FerretTamer", "페럿 조련사", "FerretTamer")
		}
	},
	[4] = {
		W = {
			플레어 = __recovered_scope_0.var_0_375,
			팔라딘 = __recovered_scope_0.var_0_373("성기사"),
			레버넌트 = __recovered_scope_0.var_0_373("성기사"),
			드루이드 = __recovered_scope_0.var_0_373("엘프기사"),
			마검사 = __recovered_scope_0.var_0_373("해골 투사"),
			암검사 = __recovered_scope_0.var_0_373("해골 투사")
		},
		A = {
			["로빈 후드"] = __recovered_scope_0.var_0_377,
			바이올 = __recovered_scope_0.var_0_373("엘프 사수")
		},
		S = {
			크러셔 = __recovered_scope_0.var_0_379,
			["소울 리퍼"] = __recovered_scope_0.var_0_373("엘프 근위병")
		},
		M = {
			["루나 현자"] = __recovered_scope_0.var_0_373("대주술사")
		},
		H = {
			그리즐 = __recovered_scope_0.var_0_380,
			["데스 나이트"] = __recovered_scope_0.var_0_373("해골 중기병")
		},
		D = {
			글로리 = __recovered_scope_0.var_0_373("성황"),
			글룸 = __recovered_scope_0.var_0_373("검황")
		}
	},
	[5] = {
		W = {
			마그누스 = __recovered_scope_0.var_0_373("드루이드")
		},
		A = {
			["그린 섀도우"] = __recovered_scope_0.var_0_373("로빈 후드"),
			["바이올렛 둠"] = __recovered_scope_0.var_0_373("바이올")
		},
		S = {
			글로리 = __recovered_scope_0.var_0_373("크러셔")
		},
		M = {
			안틀러 = __recovered_scope_0.var_0_373("루나 현자")
		},
		H = {
			우르간 = __recovered_scope_0.var_0_373("그리즐"),
			["데스 로드"] = __recovered_scope_0.var_0_373("데스 나이트")
		},
		D = {
			루시엘 = __recovered_scope_0.var_0_373("글로리"),
			카오스 = __recovered_scope_0.var_0_373("글룸")
		}
	}
}
 __recovered_scope_0.var_0_382 = {
	[2] = {
		W = __recovered_scope_0.var_0_374,
		A = __recovered_scope_0.var_0_376,
		S = __recovered_scope_0.var_0_378,
		M = __recovered_scope_0.var_0_373("주술사"),
		H = __recovered_scope_0.var_0_373("돌격병"),
		D = __recovered_scope_0.var_0_373("황제"),
		Joker = __recovered_scope_0.var_0_373("Trickster", "트릭스터", "Trickster"),
		J = __recovered_scope_0.var_0_373("Trickster", "트릭스터", "Trickster")
	},
	[3] = {
		W = __recovered_scope_0.var_0_375,
		A = __recovered_scope_0.var_0_377,
		S = __recovered_scope_0.var_0_379,
		M = __recovered_scope_0.var_0_373("현자 엘프"),
		H = __recovered_scope_0.var_0_380,
		D = __recovered_scope_0.var_0_373("검황"),
		Joker = __recovered_scope_0.var_0_373("Illusionist", "환술사", "Illusionist"),
		J = __recovered_scope_0.var_0_373("Illusionist", "환술사", "Illusionist")
	}
}

 function __recovered_scope_0.var_0_383(arg_243_0)
	return arg_243_0 and arg_243_0.alive and not arg_243_0.dying and not arg_243_0._venomMawSwallowed and not arg_243_0.isUndyingSoul and (tonumber(arg_243_0.hp) == nil or (tonumber(arg_243_0.hp) or 0) > 0)
end

 function __recovered_scope_0.var_0_384(arg_244_0)
	return math.max(1, math.floor(tonumber(arg_244_0 and (arg_244_0.rank or arg_244_0.star)) or 1))
end

 function __recovered_scope_0.var_0_385(arg_245_0)
	if arg_245_0 and arg_245_0.jackpot5th == true then
		return "prism"
	end

	local var_245_0 = tostring(arg_245_0 and arg_245_0.grade or "normal"):lower()

	if var_245_0 == "legend" or var_245_0 == "l" then
		return "legendary"
	end

	if var_245_0 == "r" then
		return "rare"
	end

	return var_245_0
end

 function __recovered_scope_0.var_0_386(arg_246_0)
	local var_246_0 = arg_246_0 and arg_246_0.sym
	local var_246_1 = __recovered_scope_0.var_0_385(arg_246_0)

	if var_246_0 == "W" then
		if var_246_1 == "legendary" then
			return __recovered_scope_0.var_0_373("해골 투사")
		end

		if var_246_1 == "rare" then
			return __recovered_scope_0.var_0_373("투사")
		end

		if var_246_1 == "advanced" then
			return __recovered_scope_0.var_0_373("철퇴병")
		end
	elseif var_246_0 == "A" and var_246_1 == "advanced" then
		return __recovered_scope_0.var_0_373("정찰병")
	elseif var_246_0 == "S" and var_246_1 == "advanced" then
		return __recovered_scope_0.var_0_373("보병")
	elseif var_246_0 == "M" and var_246_1 == "advanced" then
		return __recovered_scope_0.var_0_373("마도사")
	elseif var_246_0 == "H" and var_246_1 == "advanced" then
		return __recovered_scope_0.var_0_373("철기병")
	elseif var_246_0 == "D" and var_246_1 == "advanced" then
		return __recovered_scope_0.var_0_373("드루이드")
	end

	return nil
end

 function __recovered_scope_0.var_0_387(arg_247_0, arg_247_1)
	if arg_247_1 <= 2 then
		return __recovered_scope_0.var_0_386(arg_247_0)
	end

	local var_247_0 = __recovered_scope_0.var_0_381[arg_247_1]
	local var_247_1 = var_247_0 and var_247_0[arg_247_0 and arg_247_0.sym]

	if var_247_1 then
		local var_247_2 = {
			arg_247_0.subclassKey,
			arg_247_0.subclass,
			arg_247_0.subclassName
		}

		for iter_247_0, iter_247_1 in ipairs(var_247_2) do
			if iter_247_1 and var_247_1[iter_247_1] then
				return var_247_1[iter_247_1]
			end
		end
	end

	local var_247_3 = math.max(1, arg_247_1 - 1)
	local var_247_4 = __recovered_scope_0.var_0_382[var_247_3]

	return var_247_4 and var_247_4[arg_247_0 and arg_247_0.sym] or nil
end

 function __recovered_scope_0.var_0_388(arg_248_0, arg_248_1, arg_248_2, arg_248_3)
	local var_248_0
	local var_248_1

	if arg_248_1 then
		var_248_0 = arg_248_1.key or arg_248_1.id
		var_248_1 = arg_248_1.name or arg_248_1.id
	elseif arg_248_3 then
		var_248_0 = arg_248_0 and (arg_248_0.subclassKey or arg_248_0.subclass)
		var_248_1 = arg_248_0 and (arg_248_0.subclassName or arg_248_0.subclass)
	end

	if var_248_0 or var_248_1 then
		local var_248_2 = __recovered_scope_0.var_0_357.getSubclassBaseStats({
			id = var_248_0 or "",
			name = var_248_1 or ""
		})

		if var_248_2 then
			return var_248_2
		end
	end

	if (tonumber(arg_248_2) or 1) <= 1 then
		return __recovered_scope_0.var_0_372[arg_248_0 and arg_248_0.sym]
	end

	return nil
end

 function __recovered_scope_0.var_0_389(arg_249_0, arg_249_1)
	if arg_249_1 then
		arg_249_0.subclass = arg_249_1.id
		arg_249_0.subclassName = arg_249_1.name
		arg_249_0.subclassKey = arg_249_1.key
	else
		arg_249_0.subclass = nil
		arg_249_0.subclassName = nil
		arg_249_0.subclassKey = nil
	end

	__recovered_scope_0.var_0_358.apply(arg_249_0)
end

 function __recovered_scope_0.var_0_390(arg_250_0, arg_250_1)
	if (tonumber(arg_250_1) or 0) >= 70 then
		return "archer"
	end

	if arg_250_0 and arg_250_0.sym == "S" then
		return "spear"
	end

	return "warrior"
end

 function __recovered_scope_0.var_0_391(arg_251_0)
	if not arg_251_0 then
		return
	end

	arg_251_0.target = nil
	arg_251_0.pendingTarget = nil
	arg_251_0.shotPending = false
	arg_251_0._meleeLoop = nil
	arg_251_0._pendingSpearHit = nil

	if arg_251_0.anim then
		arg_251_0.anim.name = "idle"
		arg_251_0.anim.frame = 1
		arg_251_0.anim.t = 0
		arg_251_0.anim.reverse = nil
		arg_251_0.anim._desynced = true
	end
end

 function __recovered_scope_0.var_0_392(arg_252_0, arg_252_1)
	if not arg_252_0 then
		return
	end

	arg_252_0._shrinkScalePoof = {
		starlightTheft = true,
		t = 0,
		dur = __recovered_scope_0.var_0_367,
		kind = arg_252_1
	}
end

 function __recovered_scope_0.var_0_393(arg_253_0)
	arg_253_0.target = nil
	arg_253_0.pendingTarget = nil
	arg_253_0.shotPending = false
	arg_253_0._meleeLoop = nil
	arg_253_0._pendingGoblinHit = nil
	arg_253_0._pendingOrcHit = nil
	arg_253_0._pendingHowlHit = nil
	arg_253_0._pendingJesterPrankHit = nil
end

 function __recovered_scope_0.var_0_394(arg_254_0, arg_254_1)
	if not arg_254_0 or not arg_254_0.anim then
		return
	end

	arg_254_0.anim.name = __recovered_scope_0.var_0_365
	arg_254_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_366, math.floor(tonumber(arg_254_1) or 1)))
	arg_254_0.anim.t = 0
	arg_254_0.anim.reverse = nil
	arg_254_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_395(arg_255_0, arg_255_1)
	local var_255_0 = tonumber(arg_255_0 and arg_255_0.ui and arg_255_0.ui.battle and arg_255_0.ui.battle.allySize32) or 32

	if arg_255_0 and type(arg_255_0.entityGroundPoint) == "function" then
		local var_255_1, var_255_2 = arg_255_0:entityGroundPoint(arg_255_1, var_255_0)

		if var_255_1 and var_255_2 then
			return var_255_1, var_255_2
		end
	end

	return tonumber(arg_255_1 and arg_255_1.x) or 0, tonumber(arg_255_1 and arg_255_1.y) or 0
end

 function __recovered_scope_0.var_0_396(arg_256_0, arg_256_1, arg_256_2)
	local var_256_0, var_256_1 = __recovered_scope_0.var_0_395(arg_256_0, arg_256_1)
	local var_256_2, var_256_3 = __recovered_scope_0.var_0_395(arg_256_0, arg_256_2)
	local var_256_4 = tonumber(arg_256_0 and arg_256_0.ui and arg_256_0.ui.battle and arg_256_0.ui.battle.rangeEllipseYScale) or 0.5
	local var_256_5 = math.max(0.1, math.min(1, var_256_4))
	local var_256_6 = var_256_2 - var_256_0
	local var_256_7 = (var_256_3 - var_256_1) / var_256_5

	return var_256_6 * var_256_6 + var_256_7 * var_256_7
end

 function __recovered_scope_0.var_0_397(arg_257_0)
	if arg_257_0 <= 1 then
		return 1
	end

	if love and love.math and love.math.random then
		return love.math.random(arg_257_0)
	end

	return math.random(arg_257_0)
end

 function __recovered_scope_0.var_0_398(arg_258_0, arg_258_1)
	local var_258_0 = (__recovered_scope_0.var_0_355 and __recovered_scope_0.var_0_355.evolution or {}).rankMultipliers or {}
	local var_258_1 = var_258_0[arg_258_0 and arg_258_0.grade or "normal"] or var_258_0.normal or {}
	local var_258_2 = tonumber(var_258_1[arg_258_1])
	local var_258_3 = tonumber(var_258_1[arg_258_1 - 1])

	if var_258_2 and var_258_2 > 0 and var_258_3 and var_258_3 > 0 then
		return math.max(0.05, math.min(0.95, var_258_3 / var_258_2))
	end

	return 0.5
end

 function __recovered_scope_0.var_0_399(arg_259_0, arg_259_1)
	local var_259_0 = math.max(0, tonumber(arg_259_0 and (arg_259_0.maxhp or arg_259_0.hp)) or 0)
	local var_259_1 = math.max(0, tonumber(arg_259_0 and arg_259_0.dmg) or 0)
	local var_259_2 = tonumber(arg_259_0 and arg_259_0.atkPeriod)
	local var_259_3 = var_259_2 and var_259_2 > 0 and 1 / var_259_2 or 0
	local var_259_4 = __recovered_scope_0.var_0_356.power(var_259_0, var_259_1, var_259_3)
	local var_259_5 = var_259_4 * math.max(0.05, math.min(0.95, arg_259_1))

	if var_259_4 <= 0 or var_259_0 <= 0 or var_259_1 <= 0 or var_259_3 <= 0 then
		return math.max(0.05, math.min(0.95, arg_259_1^0.425531914893617))
	end

	local var_259_6 = 0.05
	local var_259_7 = 1

	for iter_259_0 = 1, 24 do
		local var_259_8 = (var_259_6 + var_259_7) * 0.5

		if var_259_5 > __recovered_scope_0.var_0_356.power(var_259_0 * var_259_8, var_259_1 * var_259_8, var_259_3 * var_259_8) then
			var_259_6 = var_259_8
		else
			var_259_7 = var_259_8
		end
	end

	return (var_259_6 + var_259_7) * 0.5
end

 function __recovered_scope_0.var_0_400(arg_260_0)
	local var_260_0 = tonumber(arg_260_0 and arg_260_0.atkPeriod)
	local var_260_1 = var_260_0 and var_260_0 > 0 and 1 / var_260_0 or 0
	local var_260_2, var_260_3, var_260_4 = __recovered_scope_0.var_0_356.power(tonumber(arg_260_0 and (arg_260_0.maxhp or arg_260_0.hp)) or 0, tonumber(arg_260_0 and arg_260_0.dmg) or 0, var_260_1)

	arg_260_0.power = var_260_2
	arg_260_0._powerRaw = var_260_3
	arg_260_0._powerMeta = var_260_4
end

function __recovered_scope_0.var_0_354.cleanseCombatStats(arg_261_0)
	local var_261_0 = arg_261_0 and arg_261_0._starlightTheft

	if not var_261_0 or (var_261_0.t or 0) <= 0 then
		return false
	end

	local var_261_1 = math.max(0.0001, tonumber(var_261_0.damageScale) or 1)
	local var_261_2 = math.max(0.0001, tonumber(var_261_0.aspdScale) or 1)
	local var_261_3 = false

	if var_261_1 < 1 then
		arg_261_0.dmg = math.max(0, (arg_261_0.dmg or 0) / var_261_1)
		var_261_0.damageScale = 1
		var_261_3 = true
	end

	if var_261_2 < 1 then
		if arg_261_0.atkPeriod and arg_261_0.atkPeriod > 0 then
			arg_261_0.atkPeriod = arg_261_0.atkPeriod * var_261_2
			arg_261_0.atkTicks = math.max(1, math.floor(arg_261_0.atkPeriod * 60 + 0.5))
			arg_261_0.coolTicks = math.max(0, math.floor((arg_261_0.coolTicks or 0) * var_261_2 + 0.5))
		end

		var_261_0.aspdScale = 1
		var_261_3 = true
	end

	if var_261_3 then
		__recovered_scope_0.var_0_400(arg_261_0)
	end

	return var_261_3
end

 function __recovered_scope_0.var_0_401(arg_262_0, arg_262_1)
	if require("src.game.combat").wooden_watchtower.mounted(arg_262_1) then
		return false
	end

	if not __recovered_scope_0.var_0_383(arg_262_1) or __recovered_scope_0.var_0_384(arg_262_1) < 2 or arg_262_1._starlightTheft then
		return false
	end

	local var_262_0 = __recovered_scope_0.var_0_384(arg_262_1)
	local var_262_1 = math.max(0.1, tonumber(arg_262_0 and arg_262_0.starlightTheftDuration) or __recovered_scope_0.var_0_362)
	local var_262_2 = __recovered_scope_0.var_0_387(arg_262_1, var_262_0)
	local var_262_3 = __recovered_scope_0.var_0_388(arg_262_1, nil, var_262_0, true)
	local var_262_4 = __recovered_scope_0.var_0_388(arg_262_1, var_262_2, var_262_0 - 1, false)
	local var_262_5 = __recovered_scope_0.var_0_399(arg_262_1, __recovered_scope_0.var_0_398(arg_262_1, var_262_0))
	local var_262_6 = var_262_5
	local var_262_7 = var_262_5
	local var_262_8 = var_262_5

	if var_262_3 and var_262_4 and (tonumber(var_262_3.hp) or 0) > 0 and (tonumber(var_262_3.atk) or 0) > 0 and (tonumber(var_262_3.aspd) or 0) > 0 then
		var_262_6 = math.max(0.05, (tonumber(var_262_4.hp) or 0) / var_262_3.hp)
		var_262_7 = math.max(0.05, (tonumber(var_262_4.atk) or 0) / var_262_3.atk)
		var_262_8 = math.max(0.05, (tonumber(var_262_4.aspd) or 0) / var_262_3.aspd)
	end

	local var_262_9 = {
		owner = arg_262_0,
		t = var_262_1,
		dur = var_262_1,
		hpScale = var_262_6,
		damageScale = var_262_7,
		aspdScale = var_262_8,
		hadRank = arg_262_1.rank ~= nil,
		originalRank = arg_262_1.rank,
		hadStar = arg_262_1.star ~= nil,
		originalStar = arg_262_1.star,
		originalSubclass = arg_262_1.subclass,
		originalSubclassName = arg_262_1.subclassName,
		originalSubclassKey = arg_262_1.subclassKey,
		originalDistance = arg_262_1.distance,
		originalRole = arg_262_1.role,
		originalFaction = arg_262_1.faction
	}

	arg_262_1._starlightTheft = var_262_9

	require("src.game.combat").spitecap.onDebuff(arg_262_1, nil, "_starlightTheft")

	arg_262_1.rank = var_262_0 - 1

	if var_262_9.hadStar then
		arg_262_1.star = var_262_0 - 1
	end

	__recovered_scope_0.var_0_389(arg_262_1, var_262_2)

	local var_262_10 = math.max(1, tonumber(arg_262_1.maxhp or arg_262_1.hp) or 1)
	local var_262_11 = math.max(0, math.min(1, (tonumber(arg_262_1.hp) or var_262_10) / var_262_10))

	arg_262_1.maxhp = math.max(1, var_262_10 * var_262_6)
	arg_262_1.hp = math.max(0, math.min(arg_262_1.maxhp, arg_262_1.maxhp * var_262_11))
	arg_262_1.dmg = math.max(0, (tonumber(arg_262_1.dmg) or 0) * var_262_7)

	local var_262_12 = tonumber(arg_262_1.atkPeriod)

	if var_262_12 and var_262_12 > 0 then
		arg_262_1.atkPeriod = var_262_12 / var_262_8
		arg_262_1.atkTicks = math.max(1, math.floor(arg_262_1.atkPeriod * 60 + 0.5))
		arg_262_1.coolTicks = math.max(0, math.floor((tonumber(arg_262_1.coolTicks) or 0) / var_262_8 + 0.5))
	end

	if var_262_4 and var_262_4.distance ~= nil then
		arg_262_1.distance = var_262_4.distance
		arg_262_1.role = __recovered_scope_0.var_0_390(arg_262_1, arg_262_1.distance)
	end

	arg_262_1.hpbarShowT = math.max(tonumber(arg_262_1.hpbarShowT) or 0, var_262_1)

	__recovered_scope_0.var_0_391(arg_262_1)
	__recovered_scope_0.var_0_392(arg_262_1, "shrink")
	__recovered_scope_0.var_0_400(arg_262_1)
	require("src.game.combat").antidote_fruit.onDebuff(arg_262_1)

	return true
end

 function __recovered_scope_0.var_0_402(arg_263_0, arg_263_1)
	if not arg_263_0 or not arg_263_1 then
		return
	end

	local var_263_0 = math.max(0.0001, tonumber(arg_263_1.hpScale) or 1)
	local var_263_1 = math.max(0.0001, tonumber(arg_263_1.damageScale) or 1)
	local var_263_2 = math.max(0.0001, tonumber(arg_263_1.aspdScale) or 1)
	local var_263_3 = math.max(1, tonumber(arg_263_0.maxhp or arg_263_0.hp) or 1)
	local var_263_4 = math.max(0, math.min(1, (tonumber(arg_263_0.hp) or var_263_3) / var_263_3))

	arg_263_0.maxhp = math.max(1, var_263_3 / var_263_0)
	arg_263_0.hp = math.max(0, math.min(arg_263_0.maxhp, arg_263_0.maxhp * var_263_4))
	arg_263_0.dmg = math.max(0, (tonumber(arg_263_0.dmg) or 0) / var_263_1)

	local var_263_5 = tonumber(arg_263_0.atkPeriod)

	if var_263_5 and var_263_5 > 0 then
		arg_263_0.atkPeriod = var_263_5 * var_263_2
		arg_263_0.atkTicks = math.max(1, math.floor(arg_263_0.atkPeriod * 60 + 0.5))
		arg_263_0.coolTicks = math.max(0, math.floor((tonumber(arg_263_0.coolTicks) or 0) * var_263_2 + 0.5))
	end

	if arg_263_1.hadRank then
		arg_263_0.rank = arg_263_1.originalRank
	else
		arg_263_0.rank = nil
	end

	if arg_263_1.hadStar then
		arg_263_0.star = arg_263_1.originalStar
	else
		arg_263_0.star = nil
	end

	arg_263_0.subclass = arg_263_1.originalSubclass
	arg_263_0.subclassName = arg_263_1.originalSubclassName
	arg_263_0.subclassKey = arg_263_1.originalSubclassKey
	arg_263_0.distance = arg_263_1.originalDistance
	arg_263_0.role = arg_263_1.originalRole
	arg_263_0.faction = arg_263_1.originalFaction
	arg_263_0._starlightTheft = nil

	__recovered_scope_0.var_0_391(arg_263_0)
	__recovered_scope_0.var_0_392(arg_263_0, "grow")
	__recovered_scope_0.var_0_400(arg_263_0)
end

function __recovered_scope_0.var_0_354.matches(arg_264_0)
	if not arg_264_0 then
		return false
	end

	local var_264_0 = tostring(arg_264_0.kind or "")
	local var_264_1 = tostring(arg_264_0.skin or "")

	return var_264_0 == "Starlight Paladin" or var_264_0 == "별빛 성기사" or var_264_0 == "별빛 성기사 (Starlight Paladin)" or var_264_1 == "Starlight Paladin" or var_264_1 == "별빛 성기사" or var_264_1 == "별빛 성기사 (Starlight Paladin)"
end

function __recovered_scope_0.var_0_354.findTarget(arg_265_0, arg_265_1, arg_265_2)
	arg_265_2 = require("src.game.combat").wooden_watchtower.targets(arg_265_1, arg_265_2, nil, arg_265_0)

	if not arg_265_0 or not __recovered_scope_0.var_0_383(arg_265_1) then
		return nil
	end

	local var_265_0 = 1
	local var_265_1 = {}

	for iter_265_0, iter_265_1 in ipairs(arg_265_2 or {}) do
		local var_265_2 = __recovered_scope_0.var_0_384(iter_265_1)

		if iter_265_1.side == "ally" and __recovered_scope_0.var_0_383(iter_265_1) and var_265_2 >= 2 and not iter_265_1._starlightTheft and not require("src.game.unit_abilities").dimensional_duel.separated(arg_265_0, arg_265_1, iter_265_1) then
			if var_265_0 < var_265_2 then
				var_265_0 = var_265_2
				var_265_1 = {
					iter_265_1
				}
			elseif var_265_2 == var_265_0 then
				var_265_1[#var_265_1 + 1] = iter_265_1
			end
		end
	end

	if #var_265_1 <= 0 then
		return nil
	end

	return var_265_1[__recovered_scope_0.var_0_397(#var_265_1)]
end

 function __recovered_scope_0.var_0_403(arg_266_0, arg_266_1, arg_266_2)
	arg_266_0._starlightTheftCast = {
		fired = false,
		t = 0,
		target = arg_266_1
	}
	arg_266_0._starlightTheftNext = arg_266_0._starlightTheftClock + arg_266_2
	arg_266_0._bossSkillBusy = true
	arg_266_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_393(arg_266_0)

	arg_266_0.facing = (tonumber(arg_266_1.x) or 0) >= (tonumber(arg_266_0.x) or 0) and 1 or -1

	__recovered_scope_0.var_0_394(arg_266_0, 1)
end

 function __recovered_scope_0.var_0_404(arg_267_0)
	arg_267_0._starlightTheftCast = nil
	arg_267_0._bossSkillBusy = nil
	arg_267_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_383(arg_267_0) and arg_267_0.anim then
		arg_267_0.anim.name = "idle"
		arg_267_0.anim.frame = 1
		arg_267_0.anim.t = 0
		arg_267_0.anim.reverse = nil
		arg_267_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_354.update(arg_268_0, arg_268_1, arg_268_2, arg_268_3, arg_268_4, arg_268_5)
	if not arg_268_0 or not __recovered_scope_0.var_0_354.matches(arg_268_1) or not __recovered_scope_0.var_0_383(arg_268_1) then
		return false
	end

	local var_268_0 = math.max(0, tonumber(arg_268_2) or 0)
	local var_268_1 = math.max(0, (tonumber(arg_268_1._starlightBasicKnockbackIcdT) or 0) - var_268_0)

	arg_268_1._starlightBasicKnockbackIcdT = var_268_1 > 0 and var_268_1 or nil

	local var_268_2 = math.max(0.1, tonumber(arg_268_1.starlightTheftCd) or __recovered_scope_0.var_0_361)

	arg_268_1._starlightTheftClock = tonumber(arg_268_1._starlightTheftClock) or 0
	arg_268_1._starlightTheftNext = tonumber(arg_268_1._starlightTheftNext) or math.max(0.1, tonumber(arg_268_1.starlightTheftFirstDelay) or __recovered_scope_0.var_0_360)

	if arg_268_5 then
		arg_268_1._starlightTheftClock = arg_268_1._starlightTheftClock + var_268_0
	end

	local var_268_3 = arg_268_1._starlightTheftCast

	if not var_268_3 then
		arg_268_1._bossSkillBusy = nil
		arg_268_1._bossSkillManualAnim = nil

		if arg_268_5 and arg_268_1._starlightTheftClock >= arg_268_1._starlightTheftNext then
			local var_268_4 = __recovered_scope_0.var_0_354.findTarget(arg_268_0, arg_268_1, arg_268_0.allies)

			if var_268_4 then
				__recovered_scope_0.var_0_403(arg_268_1, var_268_4, var_268_2)

				return true
			end
		end

		return false
	end

	arg_268_1._bossSkillBusy = true
	arg_268_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_393(arg_268_1)

	if not arg_268_5 then
		return true
	end

	var_268_3.t = (tonumber(var_268_3.t) or 0) + var_268_0

	local var_268_5 = math.max(0.01, tonumber(arg_268_1.starlightTheftFrameDur) or __recovered_scope_0.var_0_363)
	local var_268_6 = math.max(1, math.min(__recovered_scope_0.var_0_366, math.floor(tonumber(arg_268_1.starlightTheftReleaseFrame) or __recovered_scope_0.var_0_364)))
	local var_268_7 = math.min(__recovered_scope_0.var_0_366, 1 + math.floor(var_268_3.t / var_268_5 + 1e-06))

	if not var_268_3.fired and var_268_6 <= var_268_7 then
		var_268_7 = var_268_6
	end

	__recovered_scope_0.var_0_394(arg_268_1, var_268_7)

	if var_268_7 == var_268_6 and not var_268_3.fired then
		local var_268_8 = __recovered_scope_0.var_0_354.findTarget(arg_268_0, arg_268_1, arg_268_0.allies)

		if var_268_8 then
			arg_268_1.facing = (tonumber(var_268_8.x) or 0) >= (tonumber(arg_268_1.x) or 0) and 1 or -1

			__recovered_scope_0.var_0_359.spawn(arg_268_0, arg_268_1, var_268_8)
		end

		var_268_3.fired = true
	end

	if var_268_3.t >= var_268_5 * __recovered_scope_0.var_0_366 then
		__recovered_scope_0.var_0_404(arg_268_1)
	end

	return true
end

function __recovered_scope_0.var_0_354.onProjectileHit(arg_269_0, arg_269_1, arg_269_2)
	if not arg_269_1 or not arg_269_1.starlightTheftProjectile or not arg_269_2 or not __recovered_scope_0.var_0_383(arg_269_2) or not (__recovered_scope_0.var_0_384(arg_269_2) >= 2) then
		return false
	end

	if arg_269_0 and require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_269_0, arg_269_2) then
		return false
	end

	return __recovered_scope_0.var_0_401(arg_269_0, arg_269_2)
end

function __recovered_scope_0.var_0_354.afterBasicAttackHit(arg_270_0, arg_270_1, arg_270_2)
	if not arg_270_0 or not __recovered_scope_0.var_0_354.matches(arg_270_1) or not __recovered_scope_0.var_0_383(arg_270_1) or not __recovered_scope_0.var_0_383(arg_270_2) then
		return false
	end

	if (tonumber(arg_270_1._starlightBasicKnockbackIcdT) or 0) > 0 then
		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(arg_270_0, arg_270_1, arg_270_2) then
		return false
	end

	local var_270_0 = math.max(0, math.min(1, tonumber(arg_270_1.starlightBasicKnockbackChance) or __recovered_scope_0.var_0_368))
	local var_270_1

	if love and love.math and love.math.random then
		var_270_1 = love.math.random()
	else
		var_270_1 = math.random()
	end

	if var_270_0 <= var_270_1 then
		return false
	end

	local var_270_2 = (tonumber(arg_270_2.x) or 0) - (tonumber(arg_270_1.x) or 0)
	local var_270_3 = (tonumber(arg_270_2.y) or 0) - (tonumber(arg_270_1.y) or 0)
	local var_270_4 = math.sqrt(var_270_2 * var_270_2 + var_270_3 * var_270_3)
	local var_270_5
	local var_270_6

	if var_270_4 > 0.001 then
		var_270_5, var_270_6 = var_270_2 / var_270_4, var_270_3 / var_270_4
	else
		var_270_5 = (tonumber(arg_270_1.facing) or -1) >= 0 and 1 or -1
		var_270_6 = 0
	end

	local var_270_7 = math.max(0, tonumber(arg_270_1.starlightBasicKnockbackForce) or __recovered_scope_0.var_0_370)
	local var_270_8 = math.max(0.01, tonumber(arg_270_1.starlightBasicKnockbackDuration) or __recovered_scope_0.var_0_371)

	arg_270_2._kb = arg_270_2._kb or {}
	arg_270_2._kb.vx = (tonumber(arg_270_2._kb.vx) or 0) + var_270_5 * var_270_7
	arg_270_2._kb.vy = (tonumber(arg_270_2._kb.vy) or 0) + var_270_6 * var_270_7 * 0.5
	arg_270_2._kb.t = 0
	arg_270_2._kb.dur = math.max(var_270_8, tonumber(arg_270_2._kb.dur) or 0)
	arg_270_1._starlightBasicKnockbackIcdT = math.max(0.01, tonumber(arg_270_1.starlightBasicKnockbackIcd) or __recovered_scope_0.var_0_369)

	return true
end

function __recovered_scope_0.var_0_354.updateWorld(arg_271_0, arg_271_1)
	if not arg_271_0 then
		return
	end

	local var_271_0 = math.max(0, tonumber(arg_271_1) or 0)

	for iter_271_0, iter_271_1 in ipairs(arg_271_0.allies or {}) do
		local var_271_1 = iter_271_1._shrinkScalePoof

		if var_271_1 and var_271_1.starlightTheft then
			var_271_1.t = (tonumber(var_271_1.t) or 0) + var_271_0

			if var_271_1.t >= (tonumber(var_271_1.dur) or __recovered_scope_0.var_0_367) then
				iter_271_1._shrinkScalePoof = nil
			end
		end

		local var_271_2 = iter_271_1._starlightTheft

		if var_271_2 then
			var_271_2.t = math.max(0, (tonumber(var_271_2.t) or 0) - var_271_0)

			if var_271_2.t <= 0 then
				__recovered_scope_0.var_0_402(iter_271_1, var_271_2)
			end
		end
	end
end

function __recovered_scope_0.var_0_354.releaseOnDeath(arg_272_0)
	if not arg_272_0 then
		return
	end

	arg_272_0._starlightTheftCast = nil
	arg_272_0._starlightBasicKnockbackIcdT = nil
	arg_272_0._bossSkillBusy = nil
	arg_272_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_354.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_360,
	COOLDOWN = __recovered_scope_0.var_0_361,
	DURATION = __recovered_scope_0.var_0_362,
	FRAME_DURATION = __recovered_scope_0.var_0_363,
	RELEASE_FRAME = __recovered_scope_0.var_0_364,
	CAST_ANIMATION = __recovered_scope_0.var_0_365,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_366,
	BASIC_KNOCKBACK_CHANCE = __recovered_scope_0.var_0_368,
	BASIC_KNOCKBACK_ICD = __recovered_scope_0.var_0_369,
	BASIC_KNOCKBACK_FORCE = __recovered_scope_0.var_0_370,
	BASIC_KNOCKBACK_DURATION = __recovered_scope_0.var_0_371
}

 __recovered_scope_0.var_0_405 = __recovered_scope_0.var_0_354
 __recovered_scope_0.var_0_406 = nil
 __recovered_scope_0.var_0_407 = {}
 __recovered_scope_0.var_0_408 = require("src.game.projectiles").star_priestess_hammer
 __recovered_scope_0.var_0_409 = 3
 __recovered_scope_0.var_0_410 = 5
 __recovered_scope_0.var_0_411 = 8
 __recovered_scope_0.var_0_412 = 0.375
 __recovered_scope_0.var_0_413 = 3
 __recovered_scope_0.var_0_414 = "attack2"
 __recovered_scope_0.var_0_415 = 8
 __recovered_scope_0.var_0_416 = 0.1

 function __recovered_scope_0.var_0_417(arg_273_0)
	return arg_273_0 and arg_273_0.alive and not arg_273_0.dying and (tonumber(arg_273_0.hp) or 1) > 0
end

 function __recovered_scope_0.var_0_418(arg_274_0)
	arg_274_0.shotPending = false
	arg_274_0.pendingTarget = nil
	arg_274_0._pendingGoblinHit = nil
	arg_274_0._pendingEnemyBasicHit = nil
end

 function __recovered_scope_0.var_0_419(arg_275_0, arg_275_1)
	if not arg_275_0.anim then
		return
	end

	arg_275_0.anim.name = __recovered_scope_0.var_0_414
	arg_275_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_415, math.floor(tonumber(arg_275_1) or 1)))
	arg_275_0.anim.t = 0
	arg_275_0.anim.reverse = nil
	arg_275_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_420(arg_276_0, arg_276_1)
	local var_276_0 = love and love.math and love.math.random or math.random

	arg_276_0._hammerRainCast = {
		nextHammer = 1,
		t = 0,
		regionOffset = var_276_0(0, 1)
	}
	arg_276_0._hammerRainNext = arg_276_0._hammerRainClock + arg_276_1
	arg_276_0._bossSkillBusy = true
	arg_276_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_418(arg_276_0)
	__recovered_scope_0.var_0_419(arg_276_0, 1)
end

 function __recovered_scope_0.var_0_421(arg_277_0)
	arg_277_0._hammerRainCast = nil
	arg_277_0._bossSkillBusy = nil
	arg_277_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_417(arg_277_0) and arg_277_0.anim then
		arg_277_0.anim.name = "idle"
		arg_277_0.anim.frame = 1
		arg_277_0.anim.t = 0
		arg_277_0.anim.reverse = nil
		arg_277_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_407.matches(arg_278_0)
	if not arg_278_0 then
		return false
	end

	local var_278_0 = tostring(arg_278_0.kind or "")
	local var_278_1 = tostring(arg_278_0.skin or "")

	return var_278_0 == "Star Priestess" or var_278_0 == "별의 여사제" or var_278_0 == "별의 여사제 (Star Priestess)" or var_278_1 == "Star Priestess" or var_278_1 == "별의 여사제" or var_278_1 == "별의 여사제 (Star Priestess)"
end

function __recovered_scope_0.var_0_407.update(arg_279_0, arg_279_1, arg_279_2, arg_279_3, arg_279_4, arg_279_5)
	if not arg_279_0 or not __recovered_scope_0.var_0_407.matches(arg_279_1) or not __recovered_scope_0.var_0_417(arg_279_1) then
		return false
	end

	local var_279_0 = false

	for iter_279_0, iter_279_1 in ipairs(arg_279_0.allies or {}) do
		if __recovered_scope_0.var_0_417(iter_279_1) and not iter_279_1.isUndyingSoul and not iter_279_1._venomMawSwallowed and not iter_279_1._wastelandPiperCharm and not iter_279_1._succubusCharm then
			var_279_0 = true

			break
		end
	end

	if not var_279_0 then
		if arg_279_1._hammerRainCast then
			__recovered_scope_0.var_0_421(arg_279_1)
		end

		return false
	end

	local var_279_1 = math.max(0, tonumber(arg_279_2) or 0)
	local var_279_2 = math.max(0.1, tonumber(arg_279_1.hammerRainCd) or __recovered_scope_0.var_0_410)
	local var_279_3 = math.max(1, math.floor(tonumber(arg_279_1.hammerRainCount) or __recovered_scope_0.var_0_411))
	local var_279_4 = math.max(0, tonumber(arg_279_1.hammerRainSequenceDuration) or __recovered_scope_0.var_0_413)

	arg_279_1._hammerRainClock = tonumber(arg_279_1._hammerRainClock) or 0
	arg_279_1._hammerRainNext = tonumber(arg_279_1._hammerRainNext) or math.max(0.1, tonumber(arg_279_1.hammerRainFirstDelay) or __recovered_scope_0.var_0_409)

	if arg_279_5 then
		arg_279_1._hammerRainClock = arg_279_1._hammerRainClock + var_279_1
	end

	local var_279_5 = arg_279_1._hammerRainCast

	if not var_279_5 then
		arg_279_1._bossSkillBusy = nil
		arg_279_1._bossSkillManualAnim = nil

		if arg_279_5 and arg_279_1._hammerRainClock >= arg_279_1._hammerRainNext then
			__recovered_scope_0.var_0_420(arg_279_1, var_279_2)

			return true
		end

		return false
	end

	arg_279_1._bossSkillBusy = true
	arg_279_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_418(arg_279_1)

	if not arg_279_5 then
		return true
	end

	var_279_5.t = (tonumber(var_279_5.t) or 0) + var_279_1

	local var_279_6 = math.min(__recovered_scope_0.var_0_415, 1 + math.floor(var_279_5.t / __recovered_scope_0.var_0_416 + 1e-06))

	__recovered_scope_0.var_0_419(arg_279_1, var_279_6)

	local var_279_7 = math.max(0.01, tonumber(arg_279_1.hammerRainInterval) or __recovered_scope_0.var_0_412)

	while var_279_3 >= var_279_5.nextHammer and var_279_5.t + 1e-06 >= var_279_5.nextHammer * var_279_7 do
		__recovered_scope_0.var_0_408.spawn(arg_279_0, arg_279_1, nil, var_279_5.nextHammer + (tonumber(var_279_5.regionOffset) or 0))

		var_279_5.nextHammer = var_279_5.nextHammer + 1
	end

	if math.max(var_279_4, var_279_3 * var_279_7, __recovered_scope_0.var_0_415 * __recovered_scope_0.var_0_416) <= var_279_5.t then
		__recovered_scope_0.var_0_421(arg_279_1)
	end

	return true
end

function __recovered_scope_0.var_0_407.releaseOnDeath(arg_280_0)
	if not arg_280_0 then
		return
	end

	arg_280_0._hammerRainCast = nil
	arg_280_0._bossSkillBusy = nil
	arg_280_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_407.constants = {
	DAMAGE_MUL = 0.9,
	FIRST_DELAY = __recovered_scope_0.var_0_409,
	COOLDOWN = __recovered_scope_0.var_0_410,
	HAMMER_COUNT = __recovered_scope_0.var_0_411,
	HAMMER_INTERVAL = __recovered_scope_0.var_0_412,
	SEQUENCE_DURATION = __recovered_scope_0.var_0_413
}

 __recovered_scope_0.var_0_422 = __recovered_scope_0.var_0_407
 __recovered_scope_0.var_0_423 = nil
 __recovered_scope_0.var_0_424 = {}
 __recovered_scope_0.var_0_425 = require("src.game.combat").placement_area
 __recovered_scope_0.var_0_426 = 4
 __recovered_scope_0.var_0_427 = 6
 __recovered_scope_0.var_0_428 = 0.8
 __recovered_scope_0.var_0_429 = 1.8
 __recovered_scope_0.var_0_430 = 0.08
 __recovered_scope_0.var_0_431 = 2.2
 __recovered_scope_0.var_0_432 = 48
 __recovered_scope_0.var_0_433 = "attack2"
 __recovered_scope_0.var_0_434 = 15
 __recovered_scope_0.var_0_435 = 20
 __recovered_scope_0.var_0_436 = {
	void = {
		0.14,
		0.035,
		0.26
	},
	shadow = {
		0.43,
		0.24,
		0.92
	},
	violet = {
		0.66,
		0.19,
		1
	},
	mist = {
		0.89,
		0.38,
		1
	},
	core = {
		0.94,
		0.76,
		1
	}
}

 function __recovered_scope_0.var_0_437(arg_281_0)
	return math.max(0, math.min(1, tonumber(arg_281_0) or 0))
end

 function __recovered_scope_0.var_0_438(arg_282_0, arg_282_1)
	local var_282_0 = math.max(1, tonumber(arg_282_1) or 1)

	return math.floor((tonumber(arg_282_0) or 0) / var_282_0 + 0.5) * var_282_0
end

 function __recovered_scope_0.var_0_439(arg_283_0, arg_283_1, arg_283_2)
	arg_283_0.setColor(arg_283_1[1], arg_283_1[2], arg_283_1[3], __recovered_scope_0.var_0_437(arg_283_2))
end

 function __recovered_scope_0.var_0_440(arg_284_0, arg_284_1)
	local var_284_0 = arg_284_0.maxY - arg_284_0.minY

	return math.max(arg_284_1 * 18, var_284_0 * 0.18)
end

 function __recovered_scope_0.var_0_441(arg_285_0, arg_285_1, arg_285_2, arg_285_3, arg_285_4, arg_285_5)
	local var_285_0 = __recovered_scope_0.var_0_440(arg_285_0, arg_285_5)
	local var_285_1 = math.min(arg_285_2 - arg_285_0.minY, arg_285_0.maxY - arg_285_4)
	local var_285_2 = __recovered_scope_0.var_0_437(var_285_1 / var_285_0)

	return var_285_2 * var_285_2 * (3 - 2 * var_285_2)
end

 function __recovered_scope_0.var_0_442(arg_286_0, arg_286_1, arg_286_2, arg_286_3, arg_286_4, arg_286_5)
	if arg_286_4 <= 0.003 then
		return
	end

	local var_286_0 = arg_286_1[2]
	local var_286_1 = arg_286_1[2]

	for iter_286_0 = 4, #arg_286_1, 2 do
		var_286_0 = math.min(var_286_0, arg_286_1[iter_286_0])
		var_286_1 = math.max(var_286_1, arg_286_1[iter_286_0])
	end

	for iter_286_1 = __recovered_scope_0.var_0_438(var_286_0, arg_286_2), __recovered_scope_0.var_0_438(var_286_1, arg_286_2) - arg_286_2, arg_286_2 do
		local var_286_2 = iter_286_1 + arg_286_2 * 0.5
		local var_286_3 = math.huge
		local var_286_4 = -math.huge
		local var_286_5 = #arg_286_1 - 1

		for iter_286_2 = 1, #arg_286_1, 2 do
			local var_286_6 = arg_286_1[var_286_5]
			local var_286_7 = arg_286_1[var_286_5 + 1]
			local var_286_8 = arg_286_1[iter_286_2]
			local var_286_9 = arg_286_1[iter_286_2 + 1]

			if var_286_7 <= var_286_2 and var_286_2 < var_286_9 or var_286_9 <= var_286_2 and var_286_2 < var_286_7 then
				local var_286_10 = var_286_6 + (var_286_8 - var_286_6) * (var_286_2 - var_286_7) / (var_286_9 - var_286_7)

				var_286_3, var_286_4 = math.min(var_286_3, var_286_10), math.max(var_286_4, var_286_10)
			end

			var_286_5 = iter_286_2
		end

		if var_286_3 < var_286_4 then
			local var_286_11, var_286_12 = __recovered_scope_0.var_0_438(var_286_3, arg_286_2), __recovered_scope_0.var_0_438(var_286_4, arg_286_2)

			if var_286_11 < var_286_12 then
				__recovered_scope_0.var_0_439(arg_286_0, arg_286_3, arg_286_4)
				arg_286_0.rectangle("fill", var_286_11, iter_286_1, var_286_12 - var_286_11, arg_286_2)

				if arg_286_5 and arg_286_5 > 0 and var_286_12 - var_286_11 >= arg_286_2 * 3 and math.floor(iter_286_1 / arg_286_2) % 3 ~= 0 then
					local var_286_13 = math.max(arg_286_2, __recovered_scope_0.var_0_438((var_286_12 - var_286_11) * 0.28, arg_286_2))
					local var_286_14 = __recovered_scope_0.var_0_438((var_286_11 + var_286_12 - var_286_13) * 0.5, arg_286_2)

					__recovered_scope_0.var_0_439(arg_286_0, __recovered_scope_0.var_0_436.core, arg_286_4 * arg_286_5)
					arg_286_0.rectangle("fill", var_286_14, iter_286_1, var_286_13, arg_286_2)
				end
			end
		end
	end
end

 function __recovered_scope_0.var_0_443(arg_287_0)
	return arg_287_0 and arg_287_0.alive and not arg_287_0.dying and (tonumber(arg_287_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_444(arg_288_0)
	if not arg_288_0 then
		return
	end

	arg_288_0._pendingGoblinHit = nil
	arg_288_0._pendingOrcHit = nil
	arg_288_0._pendingHowlHit = nil
	arg_288_0._pendingJesterPrankHit = nil
	arg_288_0._pendingEnemyBasicHit = nil
	arg_288_0.shotPending = false
	arg_288_0.pendingTarget = nil
	arg_288_0.target = nil
	arg_288_0._meleeLoop = false
end

 function __recovered_scope_0.var_0_445(arg_289_0, arg_289_1)
	if not arg_289_0 or not arg_289_0.anim then
		return
	end

	arg_289_0.anim.name = __recovered_scope_0.var_0_433
	arg_289_0.anim.frame = math.max(1, math.min(__recovered_scope_0.var_0_435, math.floor(tonumber(arg_289_1) or 1)))
	arg_289_0.anim.t = 0
	arg_289_0.anim.reverse = nil
	arg_289_0.anim._desynced = true
end

 function __recovered_scope_0.var_0_446(arg_290_0, arg_290_1)
	local var_290_0 = tonumber(arg_290_0 and arg_290_0.ui and arg_290_0.ui.battle and arg_290_0.ui.battle.allySize32) or 32

	if arg_290_0 and type(arg_290_0.entityGroundPoint) == "function" then
		local var_290_1, var_290_2 = arg_290_0:entityGroundPoint(arg_290_1, var_290_0)

		if var_290_1 and var_290_2 then
			return var_290_1, var_290_2
		end
	end

	return tonumber(arg_290_1 and arg_290_1.x) or 0, tonumber(arg_290_1 and arg_290_1.y) or 0
end

 function __recovered_scope_0.var_0_447(arg_291_0)
	local var_291_0 = tonumber(arg_291_0 and arg_291_0.ui and arg_291_0.ui.battle and arg_291_0.ui.battle.allySize32) or 32

	return math.max(1, math.floor(var_291_0 / 32 + 0.5))
end

function __recovered_scope_0.var_0_424.getGroundRegions(arg_292_0)
	local var_292_0 = {}

	for iter_292_0, iter_292_1 in ipairs(__recovered_scope_0.var_0_425.regions(arg_292_0, 0, __recovered_scope_0.var_0_432)) do
		var_292_0[#var_292_0 + 1] = {
			minX = tonumber(iter_292_1.minX) or 0,
			maxX = tonumber(iter_292_1.maxX) or 0,
			minY = tonumber(iter_292_1.minY) or 0,
			maxY = tonumber(iter_292_1.maxY) or 0
		}
	end

	return var_292_0
end

function __recovered_scope_0.var_0_424.getGroundFadeInset(arg_293_0, arg_293_1)
	return __recovered_scope_0.var_0_440(arg_293_1, __recovered_scope_0.var_0_447(arg_293_0))
end

 function __recovered_scope_0.var_0_448(arg_294_0, arg_294_1, arg_294_2, arg_294_3, arg_294_4, arg_294_5, arg_294_6, arg_294_7, arg_294_8, arg_294_9, arg_294_10, arg_294_11)
	local var_294_0 = 72
	local var_294_1 = math.max(arg_294_8, arg_294_4 - arg_294_6)
	local var_294_2 = math.max(arg_294_8, arg_294_5 - arg_294_7)
	local var_294_3 = (arg_294_9 == 1 or arg_294_9 == 5) and __recovered_scope_0.var_0_436.mist or (arg_294_9 == 2 or arg_294_9 == 4) and __recovered_scope_0.var_0_436.violet or __recovered_scope_0.var_0_436.shadow

	arg_294_0.setBlendMode("add", "alphamultiply")

	for iter_294_0 = 0, var_294_0 - 1 do
		if (iter_294_0 + arg_294_9 * 3) % 12 ~= 0 then
			local var_294_4 = iter_294_0 / var_294_0 * math.pi * 2
			local var_294_5 = (iter_294_0 + 0.92) / var_294_0 * math.pi * 2
			local var_294_6 = ((iter_294_0 * 3 + arg_294_9 * 3) % 5 - 2) * arg_294_8
			local var_294_7 = (((iter_294_0 + 1) * 3 + arg_294_9 * 3) % 5 - 2) * arg_294_8
			local var_294_8 = __recovered_scope_0.var_0_438(arg_294_2 + math.cos(var_294_4) * (arg_294_4 + var_294_6), arg_294_8)
			local var_294_9 = __recovered_scope_0.var_0_438(arg_294_3 + math.sin(var_294_4) * (arg_294_5 + var_294_6 * 0.28), arg_294_8)
			local var_294_10 = __recovered_scope_0.var_0_438(arg_294_2 + math.cos(var_294_5) * (arg_294_4 + var_294_7), arg_294_8)
			local var_294_11 = __recovered_scope_0.var_0_438(arg_294_3 + math.sin(var_294_5) * (arg_294_5 + var_294_7 * 0.28), arg_294_8)
			local var_294_12 = __recovered_scope_0.var_0_438(arg_294_2 + math.cos(var_294_5) * var_294_1, arg_294_8)
			local var_294_13 = __recovered_scope_0.var_0_438(arg_294_3 + math.sin(var_294_5) * var_294_2, arg_294_8)
			local var_294_14 = __recovered_scope_0.var_0_438(arg_294_2 + math.cos(var_294_4) * var_294_1, arg_294_8)
			local var_294_15 = __recovered_scope_0.var_0_438(arg_294_3 + math.sin(var_294_4) * var_294_2, arg_294_8)

			if arg_294_8 <= math.abs(var_294_10 - var_294_8) + math.abs(var_294_11 - var_294_9) then
				local var_294_16 = __recovered_scope_0.var_0_441(arg_294_1, math.min(var_294_8, var_294_10, var_294_14, var_294_12), math.min(var_294_9, var_294_11, var_294_15, var_294_13), math.max(var_294_8, var_294_10, var_294_14, var_294_12), math.max(var_294_9, var_294_11, var_294_15, var_294_13), arg_294_8)

				if var_294_16 > 0.001 then
					local var_294_17 = 0.78 + 0.22 * (math.sin(var_294_4) + 1) * 0.5
					local var_294_18 = 0.86 + 0.14 * math.sin(arg_294_11 * 4 + iter_294_0 * 0.7)
					local var_294_19 = (iter_294_0 + arg_294_9) % 4 == 0 and 0.6 or nil

					__recovered_scope_0.var_0_442(arg_294_0, {
						var_294_8,
						var_294_9,
						var_294_10,
						var_294_11,
						var_294_12,
						var_294_13,
						var_294_14,
						var_294_15
					}, arg_294_8, var_294_3, arg_294_10 * var_294_16 * var_294_17 * var_294_18, var_294_19)
				end
			end
		end
	end
end

 function __recovered_scope_0.var_0_449(arg_295_0, arg_295_1, arg_295_2, arg_295_3, arg_295_4, arg_295_5)
	local var_295_0 = 1 - __recovered_scope_0.var_0_437(arg_295_5 / 1.45)

	if var_295_0 <= 0.001 then
		return
	end

	local var_295_1 = 0.55 + 0.45 * __recovered_scope_0.var_0_437(arg_295_5 / 0.24)
	local var_295_2 = arg_295_4 * 18
	local var_295_3 = math.max(arg_295_4 * 2, math.min(arg_295_4 * 6, arg_295_3 - arg_295_1.minY - arg_295_4 * 2, arg_295_1.maxY - arg_295_3 - arg_295_4 * 2))
	local var_295_4 = {}
	local var_295_5 = 14

	for iter_295_0 = 0, var_295_5 - 1 do
		local var_295_6 = iter_295_0 / var_295_5 * math.pi * 2
		local var_295_7 = 0.78 + iter_295_0 * 7 % 5 * 0.055
		local var_295_8 = var_295_2 * var_295_1 * var_295_7
		local var_295_9 = var_295_3 * var_295_1 * var_295_7

		var_295_4[#var_295_4 + 1] = __recovered_scope_0.var_0_438(arg_295_2 + math.cos(var_295_6) * var_295_8, arg_295_4)
		var_295_4[#var_295_4 + 1] = __recovered_scope_0.var_0_438(arg_295_3 + math.sin(var_295_6) * var_295_9, arg_295_4)
	end

	local var_295_10 = __recovered_scope_0.var_0_441(arg_295_1, arg_295_2 - var_295_2, arg_295_3 - var_295_3, arg_295_2 + var_295_2, arg_295_3 + var_295_3, arg_295_4)

	arg_295_0.setBlendMode("alpha", "alphamultiply")
	__recovered_scope_0.var_0_442(arg_295_0, var_295_4, arg_295_4, __recovered_scope_0.var_0_436.void, 0.3 * var_295_0 * var_295_10)

	for iter_295_1 = 1, #var_295_4, 2 do
		var_295_4[iter_295_1] = __recovered_scope_0.var_0_438(arg_295_2 + (var_295_4[iter_295_1] - arg_295_2) * 0.52, arg_295_4)
		var_295_4[iter_295_1 + 1] = __recovered_scope_0.var_0_438(arg_295_3 + (var_295_4[iter_295_1 + 1] - arg_295_3) * 0.62, arg_295_4)
	end

	arg_295_0.setBlendMode("add", "alphamultiply")
	__recovered_scope_0.var_0_442(arg_295_0, var_295_4, arg_295_4, __recovered_scope_0.var_0_436.violet, 0.48 * var_295_0 * var_295_10, 0.35)
end

 function __recovered_scope_0.var_0_450(arg_296_0, arg_296_1, arg_296_2, arg_296_3, arg_296_4, arg_296_5)
	if arg_296_5 >= 1.9 then
		return
	end

	arg_296_0.setBlendMode("add", "alphamultiply")

	for iter_296_0 = 1, 24 do
		local var_296_0 = arg_296_5 - iter_296_0 % 4 * 0.12
		local var_296_1 = __recovered_scope_0.var_0_437(var_296_0 / 0.92)
		local var_296_2 = 1 - (1 - var_296_1) * (1 - var_296_1)
		local var_296_3 = __recovered_scope_0.var_0_437(var_296_0 / 0.12) * (1 - __recovered_scope_0.var_0_437((var_296_0 - 0.62) / 0.88))
		local var_296_4 = iter_296_0 * 2.399963 + iter_296_0 % 4 * 0.11
		local var_296_5 = (12 + iter_296_0 % 7 * 10) * arg_296_4 * var_296_2
		local var_296_6 = __recovered_scope_0.var_0_438(arg_296_2 + math.cos(var_296_4) * var_296_5, arg_296_4)
		local var_296_7 = __recovered_scope_0.var_0_438(arg_296_3 + math.sin(var_296_4) * var_296_5 * 0.24, arg_296_4)
		local var_296_8 = __recovered_scope_0.var_0_437((math.sin(var_296_4) + 1) * 0.5)
		local var_296_9 = arg_296_4 * (2 + math.floor(var_296_8 * 2))
		local var_296_10 = arg_296_4 * (1 + math.floor(var_296_8 * 1.5))
		local var_296_11 = __recovered_scope_0.var_0_441(arg_296_1, var_296_6 - var_296_9, var_296_7 - var_296_10, var_296_6 + var_296_9, var_296_7 + var_296_10, arg_296_4)
		local var_296_12 = 0.82 + 0.18 * math.sin(var_296_0 * 5 + iter_296_0 * 1.3)
		local var_296_13 = var_296_3 * var_296_11 * var_296_12 * (iter_296_0 % 4 == 0 and 0.8 or 0.58)

		if var_296_13 > 0.001 then
			__recovered_scope_0.var_0_442(arg_296_0, {
				var_296_6,
				var_296_7 - var_296_10,
				var_296_6 + var_296_9,
				var_296_7,
				var_296_6,
				var_296_7 + var_296_10,
				var_296_6 - var_296_9,
				var_296_7
			}, arg_296_4, iter_296_0 % 4 == 0 and __recovered_scope_0.var_0_436.mist or __recovered_scope_0.var_0_436.shadow, var_296_13, 0.85)
		end
	end
end

 function __recovered_scope_0.var_0_451(arg_297_0, arg_297_1, arg_297_2, arg_297_3, arg_297_4, arg_297_5)
	local var_297_0 = math.max(math.abs(arg_297_2 - arg_297_1.minX), math.abs(arg_297_2 - arg_297_1.maxX))
	local var_297_1 = math.max(math.abs(arg_297_3 - arg_297_1.minY), math.abs(arg_297_3 - arg_297_1.maxY))
	local var_297_2 = math.max(arg_297_4 * 8, math.sqrt(var_297_0 * var_297_0 + (var_297_1 / 0.22)^2) * 1.05)
	local var_297_3 = math.max(arg_297_4 * 4, var_297_2 * 0.22)
	local var_297_4 = {
		0,
		0.15,
		0.3,
		0.45,
		0.6
	}

	__recovered_scope_0.var_0_449(arg_297_0, arg_297_1, arg_297_2, arg_297_3, arg_297_4, arg_297_5)

	for iter_297_0 = 1, #var_297_4 do
		local var_297_5 = arg_297_5 - var_297_4[iter_297_0]

		if var_297_5 >= 0 and var_297_5 < 1.55 then
			local var_297_6 = __recovered_scope_0.var_0_437(var_297_5 / 1.12)
			local var_297_7 = var_297_6 * var_297_6 * (3 - 2 * var_297_6)
			local var_297_8 = var_297_5 <= 0.64 and 1 or 1 - __recovered_scope_0.var_0_437((var_297_5 - 0.64) / 0.91)
			local var_297_9 = __recovered_scope_0.var_0_437(var_297_5 / 0.1)
			local var_297_10 = arg_297_4 * 7 + (var_297_2 - arg_297_4 * 7) * var_297_7
			local var_297_11 = arg_297_4 * 3 + (var_297_3 - arg_297_4 * 3) * var_297_7

			__recovered_scope_0.var_0_448(arg_297_0, arg_297_1, arg_297_2, arg_297_3, var_297_10, var_297_11, arg_297_4 * (10 - iter_297_0 * 0.65), arg_297_4 * (2.8 - iter_297_0 * 0.18), arg_297_4, iter_297_0, var_297_9 * var_297_8 * (0.72 - iter_297_0 * 0.045), arg_297_5)
		end
	end

	__recovered_scope_0.var_0_450(arg_297_0, arg_297_1, arg_297_2, arg_297_3, arg_297_4, arg_297_5)
end

 function __recovered_scope_0.var_0_452(arg_298_0, arg_298_1)
	if not arg_298_0 then
		return
	end

	local var_298_0 = __recovered_scope_0.var_0_424.getGroundRegions(arg_298_0)

	if #var_298_0 <= 0 then
		return
	end

	local var_298_1 = __recovered_scope_0.var_0_447(arg_298_0)
	local var_298_2, var_298_3 = __recovered_scope_0.var_0_446(arg_298_0, arg_298_1)
	local var_298_4 = (tonumber(arg_298_1 and arg_298_1.facing) or -1) >= 0 and 1 or -1

	arg_298_0._darkLordFearStrikeWaves = arg_298_0._darkLordFearStrikeWaves or {}
	arg_298_0._darkLordFearStrikeWaves[#arg_298_0._darkLordFearStrikeWaves + 1] = {
		fresh = true,
		t = 0,
		dur = __recovered_scope_0.var_0_431,
		x = __recovered_scope_0.var_0_438(var_298_2 + var_298_4 * 14 * var_298_1, var_298_1),
		y = __recovered_scope_0.var_0_438(var_298_3 + 2 * var_298_1, var_298_1),
		regions = var_298_0
	}
end

 function __recovered_scope_0.var_0_453(arg_299_0, arg_299_1, arg_299_2)
	if not arg_299_0 or not __recovered_scope_0.var_0_443(arg_299_1) then
		return false
	end

	local var_299_0 = math.max(0, tonumber(arg_299_1.darkLordFearStrikeDmgMul) or __recovered_scope_0.var_0_428)
	local var_299_1 = math.max(0, (tonumber(arg_299_1.dmg) or 0) * var_299_0)
	local var_299_2 = math.max(0, tonumber(arg_299_1.darkLordFearStrikeFearDur) or __recovered_scope_0.var_0_429)

	if var_299_1 > 0 and type(arg_299_2) == "function" then
		local var_299_3 = require("src.game.unit_abilities").dimensional_duel

		for iter_299_0, iter_299_1 in ipairs(arg_299_0.allies or {}) do
			if __recovered_scope_0.var_0_443(iter_299_1) and not var_299_3.separated(arg_299_0, arg_299_1, iter_299_1) then
				local var_299_4 = tonumber(iter_299_1.hp) or 0

				arg_299_2(iter_299_1, var_299_1, arg_299_1, {
					area_damage = true,
					skillBig = true,
					hitFlashColor = {
						0.76,
						0.43,
						0.91,
						1
					}
				})

				local var_299_5 = tonumber(iter_299_1.hp) or 0
				local var_299_6 = math.max(1, tonumber(iter_299_1.maxhp) or tonumber(iter_299_1.hp) or 1)

				if var_299_2 > 0 and __recovered_scope_0.var_0_443(iter_299_1) and var_299_5 < var_299_4 and var_299_5 / var_299_6 <= 0.5 then
					iter_299_1.fearT = math.max(tonumber(iter_299_1.fearT) or 0, var_299_2)

					require("src.game.combat").spitecap.onDebuff(iter_299_1, nil, "fearT")
				end
			end
		end
	end

	__recovered_scope_0.var_0_452(arg_299_0, arg_299_1)

	arg_299_0.hitStopT = math.max(tonumber(arg_299_0.hitStopT) or 0, 0.06)
	arg_299_0.cameraShake = {
		dur = 0.12,
		ampY = 2,
		t = 0
	}

	return true
end

 function __recovered_scope_0.var_0_454(arg_300_0, arg_300_1)
	arg_300_0._darkLordFearStrikeCast = {
		impactApplied = false,
		t = 0
	}
	arg_300_0._darkLordFearStrikeNext = arg_300_0._darkLordFearStrikeClock + arg_300_1
	arg_300_0._bossSkillBusy = true
	arg_300_0._bossSkillManualAnim = true

	__recovered_scope_0.var_0_444(arg_300_0)
	__recovered_scope_0.var_0_445(arg_300_0, 1)
end

 function __recovered_scope_0.var_0_455(arg_301_0)
	arg_301_0._darkLordFearStrikeCast = nil
	arg_301_0._bossSkillBusy = nil
	arg_301_0._bossSkillManualAnim = nil

	if __recovered_scope_0.var_0_443(arg_301_0) and arg_301_0.anim then
		arg_301_0.anim.name = "idle"
		arg_301_0.anim.frame = 1
		arg_301_0.anim.t = 0
		arg_301_0.anim.reverse = nil
		arg_301_0.anim._desynced = true
	end
end

function __recovered_scope_0.var_0_424.matches(arg_302_0)
	if not arg_302_0 then
		return false
	end

	local var_302_0 = tostring(arg_302_0.kind or "")
	local var_302_1 = tostring(arg_302_0.skin or "")

	return var_302_0 == "Dark Lord" or var_302_0 == "암흑 군주" or var_302_0 == "암흑 군주 (Dark Lord)" or var_302_1 == "Dark Lord" or var_302_1 == "암흑 군주" or var_302_1 == "암흑 군주 (Dark Lord)"
end

function __recovered_scope_0.var_0_424.update(arg_303_0, arg_303_1, arg_303_2, arg_303_3, arg_303_4, arg_303_5)
	if not arg_303_0 or not __recovered_scope_0.var_0_424.matches(arg_303_1) or not __recovered_scope_0.var_0_443(arg_303_1) then
		return false
	end

	local var_303_0 = math.max(0, tonumber(arg_303_2) or 0)
	local var_303_1 = math.max(0.1, tonumber(arg_303_1.darkLordFearStrikeCd) or __recovered_scope_0.var_0_427)

	arg_303_1._darkLordFearStrikeClock = tonumber(arg_303_1._darkLordFearStrikeClock) or 0
	arg_303_1._darkLordFearStrikeNext = tonumber(arg_303_1._darkLordFearStrikeNext) or math.max(0.1, tonumber(arg_303_1.darkLordFearStrikeFirstDelay) or __recovered_scope_0.var_0_426)

	if arg_303_5 then
		arg_303_1._darkLordFearStrikeClock = arg_303_1._darkLordFearStrikeClock + var_303_0
	end

	local var_303_2 = arg_303_1._darkLordFearStrikeCast

	if not var_303_2 then
		arg_303_1._bossSkillBusy = nil
		arg_303_1._bossSkillManualAnim = nil

		if arg_303_5 and arg_303_1._darkLordFearStrikeClock >= arg_303_1._darkLordFearStrikeNext then
			__recovered_scope_0.var_0_454(arg_303_1, var_303_1)

			return true
		end

		return false
	end

	arg_303_1._bossSkillBusy = true
	arg_303_1._bossSkillManualAnim = true

	__recovered_scope_0.var_0_444(arg_303_1)

	if not arg_303_5 then
		return true
	end

	var_303_2.t = (tonumber(var_303_2.t) or 0) + var_303_0

	local var_303_3 = math.max(0.01, tonumber(arg_303_1.darkLordFearStrikeFrameDur) or __recovered_scope_0.var_0_430)
	local var_303_4 = math.min(__recovered_scope_0.var_0_435, 1 + math.floor(var_303_2.t / var_303_3 + 1e-06))

	if var_303_4 >= __recovered_scope_0.var_0_434 and not var_303_2.impactApplied then
		var_303_4 = __recovered_scope_0.var_0_434
	end

	__recovered_scope_0.var_0_445(arg_303_1, var_303_4)

	if var_303_4 >= __recovered_scope_0.var_0_434 and not var_303_2.impactApplied then
		var_303_2.impactApplied = true

		__recovered_scope_0.var_0_453(arg_303_0, arg_303_1, arg_303_3)
	end

	if var_303_2.t >= var_303_3 * __recovered_scope_0.var_0_435 then
		__recovered_scope_0.var_0_455(arg_303_1)
	end

	return true
end

function __recovered_scope_0.var_0_424.updateWorld(arg_304_0, arg_304_1)
	if not arg_304_0 then
		return
	end

	local var_304_0 = math.max(0, tonumber(arg_304_1) or 0)
	local var_304_1 = {}

	for iter_304_0, iter_304_1 in ipairs(arg_304_0._darkLordFearStrikeWaves or {}) do
		local var_304_2 = math.max(0.01, tonumber(iter_304_1.dur) or __recovered_scope_0.var_0_431)

		if iter_304_1.fresh then
			iter_304_1.fresh = nil
		else
			iter_304_1.t = (tonumber(iter_304_1.t) or 0) + var_304_0
		end

		if var_304_2 > (tonumber(iter_304_1.t) or 0) then
			var_304_1[#var_304_1 + 1] = iter_304_1
		end
	end

	arg_304_0._darkLordFearStrikeWaves = var_304_1
end

function __recovered_scope_0.var_0_424.drawBehind(arg_305_0)
	if not arg_305_0 or not love or not love.graphics then
		return
	end

	local var_305_0 = love.graphics
	local var_305_1 = arg_305_0._darkLordFearStrikeWaves or {}

	if #var_305_1 <= 0 then
		return
	end

	local var_305_2 = __recovered_scope_0.var_0_447(arg_305_0)

	var_305_0.push("all")
	var_305_0.setShader()
	var_305_0.setBlendMode("alpha", "alphamultiply")

	for iter_305_0, iter_305_1 in ipairs(var_305_1) do
		local var_305_3 = math.max(0.01, tonumber(iter_305_1.dur) or __recovered_scope_0.var_0_431)
		local var_305_4 = math.min(var_305_3, math.max(0, tonumber(iter_305_1.t) or 0))
		local var_305_5 = tonumber(iter_305_1.x) or 0
		local var_305_6 = tonumber(iter_305_1.y) or 0

		for iter_305_2, iter_305_3 in ipairs(iter_305_1.regions or {}) do
			local var_305_7 = math.floor((tonumber(iter_305_3.minX) or 0) + 0.5)
			local var_305_8 = math.floor((tonumber(iter_305_3.minY) or 0) + 0.5)
			local var_305_9 = math.max(0, math.ceil((tonumber(iter_305_3.maxX) or var_305_7) - var_305_7))
			local var_305_10 = math.max(0, math.ceil((tonumber(iter_305_3.maxY) or var_305_8) - var_305_8))

			if var_305_9 > 0 and var_305_10 > 0 then
				local var_305_11, var_305_12 = var_305_0.transformPoint(var_305_7, var_305_8)
				local var_305_13, var_305_14 = var_305_0.transformPoint(var_305_7, var_305_8 + var_305_10)
				local var_305_15 = var_305_0.getCanvas()
				local var_305_16 = var_305_15 and var_305_15:getWidth() or var_305_0.getWidth()

				var_305_0.push("all")
				var_305_0.intersectScissor(0, var_305_12, var_305_16, math.max(0, var_305_14 - var_305_12))
				__recovered_scope_0.var_0_451(var_305_0, iter_305_3, var_305_5, var_305_6, var_305_2, var_305_4)
				var_305_0.pop()
			end
		end
	end

	var_305_0.pop()
end

function __recovered_scope_0.var_0_424.releaseOnDeath(arg_306_0)
	if not arg_306_0 then
		return
	end

	arg_306_0._darkLordFearStrikeCast = nil
	arg_306_0._bossSkillBusy = nil
	arg_306_0._bossSkillManualAnim = nil
end

__recovered_scope_0.var_0_424.constants = {
	FIRST_DELAY = __recovered_scope_0.var_0_426,
	COOLDOWN = __recovered_scope_0.var_0_427,
	DAMAGE_MULTIPLIER = __recovered_scope_0.var_0_428,
	FEAR_DURATION = __recovered_scope_0.var_0_429,
	FRAME_DURATION = __recovered_scope_0.var_0_430,
	CAST_ANIMATION = __recovered_scope_0.var_0_433,
	CAST_TRIGGER_FRAME = __recovered_scope_0.var_0_434,
	CAST_FINAL_FRAME = __recovered_scope_0.var_0_435,
	IMPACT_VFX_DURATION = __recovered_scope_0.var_0_431,
	GROUND_TOP_INSET = __recovered_scope_0.var_0_432
}

 __recovered_scope_0.var_0_456 = __recovered_scope_0.var_0_424
 __recovered_scope_0.var_0_457 = nil
 __recovered_scope_0.var_0_458 = {}
 __recovered_scope_0.var_0_459 = {
	["파멸 드래곤 (Doom Dragon)"] = true,
	["파멸 드래곤"] = true,
	["Doom Dragon"] = true
}
 __recovered_scope_0.var_0_460 = 4
 __recovered_scope_0.var_0_461 = 16
 __recovered_scope_0.var_0_462 = 0.08
 __recovered_scope_0.var_0_463 = 9
 __recovered_scope_0.var_0_464 = 0.12
 __recovered_scope_0.var_0_465 = 3
 __recovered_scope_0.var_0_466 = {
	"_pendingTwinBolt",
	"_pendingTripleShot",
	"_pendingPrecisionShot",
	"_pendingHeadshot"
}
 __recovered_scope_0.var_0_467 = {
	Headshot = true,
	PrecisionShot = true,
	TripleShot = true,
	TwinBolt = true
}

 function __recovered_scope_0.var_0_468(arg_307_0)
	return arg_307_0 and arg_307_0.alive and not arg_307_0.dying and not arg_307_0._venomMawSwallowed and not arg_307_0.isUndyingSoul and (tonumber(arg_307_0.hp) or 0) > 0
end

function __recovered_scope_0.var_0_458.matches(arg_308_0)
	return arg_308_0 ~= nil and (__recovered_scope_0.var_0_459[arg_308_0.kind] == true or __recovered_scope_0.var_0_459[arg_308_0.skin] == true)
end

 function __recovered_scope_0.var_0_469(arg_309_0)
	return arg_309_0 and (arg_309_0.state == "casting" or arg_309_0.state == "precast" or arg_309_0.state == "active" or arg_309_0.active == true) or false
end

 function __recovered_scope_0.var_0_470(arg_310_0, arg_310_1)
	local var_310_0 = arg_310_0.skill or {}

	arg_310_1.skill = arg_310_0.skill
	arg_310_1.inProgress = __recovered_scope_0.var_0_469(var_310_0)
	arg_310_1.ready = var_310_0.ready == true
	arg_310_1.cdT = tonumber(var_310_0.cdT) or 0
	arg_310_1.initialized = var_310_0._initDelayApplied == true
	arg_310_1.pending = arg_310_1.pending or {}

	for iter_310_0, iter_310_1 in ipairs(__recovered_scope_0.var_0_466) do
		arg_310_1.pending[iter_310_1] = arg_310_0[iter_310_1]
	end
end

function __recovered_scope_0.var_0_458.observeSkillUse(arg_311_0)
	local var_311_0 = arg_311_0 and arg_311_0.doomDragonBurn

	if not var_311_0 then
		return false
	end

	local var_311_1 = arg_311_0.skill or {}
	local var_311_2 = false

	if var_311_0.skill == arg_311_0.skill then
		var_311_2 = not var_311_0.inProgress and __recovered_scope_0.var_0_469(var_311_1) or not var_311_0.inProgress and var_311_0.ready and var_311_1.ready == false

		if not var_311_0.inProgress and var_311_0.initialized and not __recovered_scope_0.var_0_467[var_311_1.kind] and (tonumber(var_311_1.cdT) or 0) >= 0 and (tonumber(var_311_1.cdT) or 0) < var_311_0.cdT - 1e-06 then
			var_311_2 = true
		end

		for iter_311_0, iter_311_1 in ipairs(__recovered_scope_0.var_0_466) do
			if arg_311_0[iter_311_1] and arg_311_0[iter_311_1] ~= var_311_0.pending[iter_311_1] then
				var_311_2 = true
			end
		end
	end

	if var_311_2 then
		arg_311_0.doomDragonBurn = nil

		return true
	end

	__recovered_scope_0.var_0_470(arg_311_0, var_311_0)

	return false
end

function __recovered_scope_0.var_0_458.applyBurn(arg_312_0, arg_312_1)
	if require("src.game.combat").status_effects.blindMiss(arg_312_1) then
		return
	end

	if not __recovered_scope_0.var_0_468(arg_312_0) then
		return
	end

	local var_312_0 = {
		tickT = 0,
		visualT = 0,
		t = 4,
		source = arg_312_1,
		tickDamage = math.max(0, math.floor((tonumber(arg_312_1.dmg) or 0) * 0.25 + 0.5))
	}

	__recovered_scope_0.var_0_470(arg_312_0, var_312_0)

	arg_312_0.doomDragonBurn = var_312_0

	require("src.game.combat").spitecap.onDebuff(arg_312_0, nil, "doomDragonBurn")
end

function __recovered_scope_0.var_0_458.findTarget(arg_313_0, arg_313_1)
	local var_313_0 = arg_313_1 and arg_313_1.target

	if not __recovered_scope_0.var_0_468(arg_313_1) or not __recovered_scope_0.var_0_468(var_313_0) or var_313_0.side ~= "ally" then
		return
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(arg_313_0, arg_313_1, var_313_0) then
		return
	end

	local var_313_1 = false

	for iter_313_0, iter_313_1 in ipairs(arg_313_0.allies or {}) do
		if iter_313_1 == var_313_0 then
			var_313_1 = true

			break
		end
	end

	if not var_313_1 then
		return
	end

	local var_313_2 = math.max(0.1, math.min(1, tonumber(arg_313_0.ui and arg_313_0.ui.battle and arg_313_0.ui.battle.rangeEllipseYScale) or 0.5))
	local var_313_3 = (var_313_0.x or 0) - (arg_313_1.x or 0)
	local var_313_4 = ((var_313_0.y or 0) - (arg_313_1.y or 0)) / var_313_2

	if var_313_3 * var_313_3 + var_313_4 * var_313_4 <= math.max(1, tonumber(arg_313_1.distance) or 60)^2 then
		return var_313_0
	end
end

function __recovered_scope_0.var_0_458.markerPoint(arg_314_0, arg_314_1)
	local var_314_0 = arg_314_0.assets and arg_314_0.assets.units
	local var_314_1 = var_314_0 and (var_314_0[arg_314_1.skin] or var_314_0[arg_314_1.kind] or var_314_0["Doom Dragon"])

	if not var_314_1 then
		return
	end

	local var_314_2 = var_314_1._doomDragonMouthMarker

	if not var_314_2 then
		local var_314_3 = var_314_1.quads and var_314_1.quads.attack2 and var_314_1.quads.attack2[__recovered_scope_0.var_0_460]

		if not var_314_3 or not var_314_1.imageData then
			return
		end

		local var_314_4, var_314_5, var_314_6, var_314_7 = var_314_3:getViewport()

		for iter_314_0 = 0, var_314_7 - 1 do
			for iter_314_1 = 0, var_314_6 - 1 do
				local var_314_8, var_314_9, var_314_10, var_314_11 = var_314_1.imageData:getPixel(var_314_4 + iter_314_1, var_314_5 + iter_314_0)

				if var_314_11 > 0 and math.floor(var_314_8 * 255 + 0.5) == 37 and math.floor(var_314_9 * 255 + 0.5) == 35 and math.floor(var_314_10 * 255 + 0.5) == 34 then
					var_314_2 = {
						x = iter_314_1 + 0.5,
						y = iter_314_0 + 0.5
					}

					break
				end
			end

			if var_314_2 then
				break
			end
		end

		if not var_314_2 then
			return
		end

		var_314_1._doomDragonMouthMarker = var_314_2
	end

	local var_314_12 = tonumber(arg_314_0.ui and arg_314_0.ui.battle and arg_314_0.ui.battle.allySize32) or 32
	local var_314_13 = math.max(1, math.floor(var_314_12 / 32 + 0.5)) * (tonumber(arg_314_1.enlargeScale) or 1)

	if _G.Render2 and _G.Render2.getUnitVisualScale then
		var_314_13 = var_314_13 * _G.Render2.getUnitVisualScale(arg_314_1, var_314_12)
	end

	local var_314_14 = (tonumber(arg_314_1.facing) or -1) < 0 and -1 or 1

	return (arg_314_1.x or 0) + (var_314_2.x - var_314_1.frameW / 2) * var_314_13 * var_314_14, (arg_314_1.y or 0) + (var_314_2.y - var_314_1.frameH / 2) * var_314_13, var_314_13, var_314_14
end

 function __recovered_scope_0.var_0_471(arg_315_0)
	arg_315_0.pendingTarget, arg_315_0.shotPending, arg_315_0._meleeLoop = nil, false
	arg_315_0._pendingGoblinHit, arg_315_0._pendingEnemyBasicHit = nil
	arg_315_0._pendingOrcHit, arg_315_0._pendingHowlHit = nil
end

 function __recovered_scope_0.var_0_472(arg_316_0, arg_316_1, arg_316_2)
	arg_316_0.anim = arg_316_0.anim or {}
	arg_316_0.anim.name, arg_316_0.anim.frame, arg_316_0.anim.t = arg_316_1, arg_316_2, 0
	arg_316_0.anim.reverse, arg_316_0.anim._desynced = nil, true
end

function __recovered_scope_0.var_0_458.releaseOnDeath(arg_317_0)
	arg_317_0._doomDragonCast = nil
	arg_317_0._bossSkillBusy, arg_317_0._bossSkillManualAnim = nil
end

function __recovered_scope_0.var_0_458.update(arg_318_0, arg_318_1, arg_318_2, arg_318_3, arg_318_4, arg_318_5)
	if not __recovered_scope_0.var_0_458.matches(arg_318_1) or not __recovered_scope_0.var_0_468(arg_318_1) then
		return false
	end

	local var_318_0 = math.max(0, tonumber(arg_318_2) or 0)

	arg_318_1._doomDragonClock = tonumber(arg_318_1._doomDragonClock) or 0
	arg_318_1._doomDragonNext = tonumber(arg_318_1._doomDragonNext) or 4

	if arg_318_5 then
		arg_318_1._doomDragonClock = arg_318_1._doomDragonClock + var_318_0
	end

	local var_318_1 = arg_318_1._doomDragonCast

	if not var_318_1 then
		if not arg_318_5 or arg_318_1._doomDragonClock + 1e-06 < arg_318_1._doomDragonNext then
			return false
		end

		local var_318_2 = __recovered_scope_0.var_0_458.findTarget(arg_318_0, arg_318_1)

		if not var_318_2 or not __recovered_scope_0.var_0_458.markerPoint(arg_318_0, arg_318_1) then
			return false
		end

		var_318_1 = {
			t = 0,
			target = var_318_2
		}
		arg_318_1._doomDragonCast = var_318_1
		arg_318_1._doomDragonNext = arg_318_1._doomDragonClock + 7
		arg_318_1.facing = (var_318_2.x or 0) >= (arg_318_1.x or 0) and 1 or -1
		arg_318_1._bossSkillBusy, arg_318_1._bossSkillManualAnim = true, true

		__recovered_scope_0.var_0_471(arg_318_1)
		__recovered_scope_0.var_0_472(arg_318_1, "attack2", 1)

		return true
	end

	arg_318_1._bossSkillBusy, arg_318_1._bossSkillManualAnim = true, true

	__recovered_scope_0.var_0_471(arg_318_1)

	if not arg_318_5 then
		return true
	end

	var_318_1.t = var_318_1.t + var_318_0

	local var_318_3 = math.min(__recovered_scope_0.var_0_461, 1 + math.floor(var_318_1.t / __recovered_scope_0.var_0_462 + 1e-06))

	__recovered_scope_0.var_0_472(arg_318_1, "attack2", var_318_3)

	if var_318_3 >= __recovered_scope_0.var_0_460 and not var_318_1.fired then
		local var_318_4, var_318_5, var_318_6, var_318_7 = __recovered_scope_0.var_0_458.markerPoint(arg_318_0, arg_318_1)

		if var_318_4 then
			arg_318_0.vfx = arg_318_0.vfx or {}
			arg_318_0.vfx[#arg_318_0.vfx + 1] = {
				kind = "doom_dragon_burn",
				originY = 19.5,
				originX = 11.5,
				sprite = "DoomDragonSkill",
				t = 0,
				_damagePending = true,
				x = var_318_4,
				y = var_318_5,
				scale = var_318_6,
				facing = var_318_7,
				owner = arg_318_1,
				target = var_318_1.target,
				attack = tonumber(arg_318_1.dmg) or 0,
				anim = {
					frame = 1,
					name = "doom_burn",
					t = 0,
					loop = false,
					frames = __recovered_scope_0.var_0_463,
					speed = __recovered_scope_0.var_0_464
				}
			}
		end

		var_318_1.fired = true
	end

	if var_318_1.t + 1e-06 >= __recovered_scope_0.var_0_461 * __recovered_scope_0.var_0_462 then
		__recovered_scope_0.var_0_458.releaseOnDeath(arg_318_1)
		__recovered_scope_0.var_0_472(arg_318_1, "idle", 1)
	end

	return true
end

function __recovered_scope_0.var_0_458.consumeEffectDamage(arg_319_0, arg_319_1, arg_319_2)
	if not arg_319_1 or arg_319_1.kind ~= "doom_dragon_burn" or not arg_319_1._damagePending or not arg_319_1.anim or not (arg_319_1.anim.frame >= __recovered_scope_0.var_0_465) then
		return false
	end

	arg_319_1._damagePending = false

	local var_319_0 = arg_319_1.target
	local var_319_1 = arg_319_1.owner

	if not __recovered_scope_0.var_0_468(var_319_1) or not var_319_0 or type(arg_319_2) ~= "function" then
		return false
	end

	local var_319_2 = {}
	local var_319_3 = math.max(0, tonumber(var_319_1.doomBurnSplashRadius) or 55)
	local var_319_4 = require("src.game.unit_abilities").dimensional_duel

	for iter_319_0, iter_319_1 in ipairs(arg_319_0.allies or {}) do
		if iter_319_1 ~= var_319_0 and iter_319_1.side == "ally" and __recovered_scope_0.var_0_468(iter_319_1) and not var_319_4.separated(arg_319_0, var_319_1, iter_319_1) then
			local var_319_5 = ((iter_319_1.x or 0) - (var_319_0.x or 0))^2 + ((iter_319_1.y or 0) - (var_319_0.y or 0))^2

			if var_319_5 <= var_319_3 * var_319_3 then
				var_319_2[#var_319_2 + 1] = {
					target = iter_319_1,
					d2 = var_319_5,
					index = iter_319_0
				}
			end
		end
	end

	table.sort(var_319_2, function(arg_320_0, arg_320_1)
		if arg_320_0.d2 == arg_320_1.d2 then
			return arg_320_0.index < arg_320_1.index
		end

		return arg_320_0.d2 < arg_320_1.d2
	end)

	local function var_319_6(arg_321_0, arg_321_1, arg_321_2)
		if not __recovered_scope_0.var_0_468(arg_321_0) then
			return
		end

		local var_321_0 = math.max(0, math.floor(arg_319_1.attack * arg_321_1 + 0.5))
		local var_321_1 = arg_319_2(arg_321_0, var_321_0, var_319_1, {
			area_damage = true,
			skillDamage = true,
			skillBig = arg_321_2,
			hitFlashColor = {
				1,
				0.47,
				0.12
			}
		})

		if (tonumber(var_321_1) or 0) > 0 then
			__recovered_scope_0.var_0_458.applyBurn(arg_321_0, var_319_1)

			arg_319_1._doomImpactAt = arg_319_1._doomImpactAt or arg_319_1.t or 0
			arg_319_1._doomImpactTargets = arg_319_1._doomImpactTargets or {}
			arg_319_1._doomImpactTargets[#arg_319_1._doomImpactTargets + 1] = {
				x = arg_321_0.colX and arg_321_0.colX + (arg_321_0.colW or 0) * 0.5 or arg_321_0.x or 0,
				y = arg_321_0.colY and arg_321_0.colY + (arg_321_0.colH or 0) * 0.5 or arg_321_0.y or 0,
				width = arg_321_0.colW or 24 * (arg_319_1.scale or 1),
				height = arg_321_0.colH or 28 * (arg_319_1.scale or 1)
			}
		end
	end

	var_319_6(var_319_0, 1.4, true)

	for iter_319_2 = 1, math.min(3, #var_319_2) do
		var_319_6(var_319_2[iter_319_2].target, 0.7, false)
	end

	if arg_319_1._doomImpactAt then
		arg_319_0.hitStopT = math.max(tonumber(arg_319_0.hitStopT) or 0, 0.055)

		local var_319_7 = arg_319_0.cameraShake
		local var_319_8 = var_319_7 and math.max(0, 1 - (var_319_7.t or 0) / math.max(0.001, var_319_7.dur or 0.2)) or 0

		if (tonumber(var_319_7 and var_319_7.ampY) or 0) * var_319_8 < 3 then
			arg_319_0.cameraShake = {
				dur = 0.2,
				ampY = 3,
				t = 0
			}
		end
	end

	return true
end

function __recovered_scope_0.var_0_458.updateBurns(arg_322_0, arg_322_1, arg_322_2)
	local var_322_0 = math.max(0, tonumber(arg_322_1) or 0)

	for iter_322_0, iter_322_1 in ipairs(arg_322_0.allies or {}) do
		__recovered_scope_0.var_0_458.observeSkillUse(iter_322_1)

		local var_322_1 = iter_322_1.doomDragonBurn

		if var_322_1 then
			if not __recovered_scope_0.var_0_468(iter_322_1) then
				iter_322_1.doomDragonBurn = nil
			else
				local var_322_2 = math.min(var_322_0, math.max(0, var_322_1.t))

				var_322_1.t = math.max(0, var_322_1.t - var_322_0)
				var_322_1.visualT = var_322_1.visualT + var_322_2
				var_322_1.tickT = var_322_1.tickT + var_322_2

				while var_322_1.tickT + 1e-06 >= 1 and __recovered_scope_0.var_0_468(iter_322_1) do
					var_322_1.tickT = math.max(0, var_322_1.tickT - 1)

					arg_322_2(iter_322_1, var_322_1.tickDamage, var_322_1.source, {
						noHitShake = true,
						dot = true,
						burn = true,
						hitFlashColor = {
							1,
							0.47,
							0.12
						}
					})
				end

				if var_322_1.t <= 0 then
					iter_322_1.doomDragonBurn = nil
				end
			end
		end
	end
end

function __recovered_scope_0.var_0_458.drawAbove(arg_323_0)
	local var_323_0 = require("src.ui.effects").doom_dragon_fx

	for iter_323_0, iter_323_1 in ipairs(arg_323_0.enemies or {}) do
		local var_323_1 = iter_323_1._doomDragonCast

		if var_323_1 and not var_323_1.fired and __recovered_scope_0.var_0_468(iter_323_1) then
			local var_323_2, var_323_3, var_323_4, var_323_5 = __recovered_scope_0.var_0_458.markerPoint(arg_323_0, iter_323_1)

			if var_323_2 then
				local var_323_6 = ({
					{
						-9,
						-7
					},
					{
						-7,
						-6
					},
					{
						-3,
						-2
					}
				})[math.max(1, math.min(3, iter_323_1.anim and iter_323_1.anim.frame or 1))]

				var_323_0.drawCharge(var_323_2 + var_323_6[1] * var_323_4 * var_323_5, var_323_3 + var_323_6[2] * var_323_4, var_323_4, var_323_5, var_323_1.t / ((__recovered_scope_0.var_0_460 - 1) * __recovered_scope_0.var_0_462))
			end
		end
	end

	for iter_323_2, iter_323_3 in ipairs(arg_323_0.vfx or {}) do
		if iter_323_3.kind == "doom_dragon_burn" then
			var_323_0.drawEffect(iter_323_3, arg_323_0)
		end
	end
end

 __recovered_scope_0.var_0_473 = __recovered_scope_0.var_0_458
 __recovered_scope_0.var_0_474 = nil
 __recovered_scope_0.var_0_475 = {}
 __recovered_scope_0.var_0_476 = {
	["Space Knight"] = 5,
	["파멸 드래곤"] = 5,
	["우주 수호자 (Space Guardian)"] = 5,
	["우주 수호자"] = 5,
	["Space Guardian"] = 5,
	["수정 근위병 (Crystal Guard)"] = 4,
	["수정 근위병"] = 4,
	["Crystal Guard"] = 4,
	["Skeleton Dragon"] = 4,
	["Doom Dragon"] = 5,
	["Space Cavalry"] = 5,
	["Dark Lord"] = 6,
	["우주 기병"] = 5,
	["우주 기병 (Space Cavalry)"] = 5,
	["쌍성 군주 (Twin Star Lords)"] = 3,
	["Twin Star Lords 2"] = 3,
	["해골 드래곤 (Skeleton Dragon)"] = 4,
	["해골 드래곤"] = 4,
	["우주 기사 (Space Knight)"] = 5,
	["우주 기사"] = 5,
	["파멸 드래곤 (Doom Dragon)"] = 5,
	["쌍성 군주"] = 3,
	["Twin Star Lords"] = 3,
	["우주 암살자 (Space Assassin)"] = 5,
	["우주 암살자"] = 5,
	["Space Assassin"] = 5,
	["암흑 군주 (Dark Lord)"] = 6,
	["암흑 군주"] = 6,
	["마왕 (Demon Lord)"] = 4,
	마왕 = 4,
	["Demon Lord"] = 4,
	["별빛 성기사 (Starlight Paladin)"] = 5,
	["별빛 성기사"] = 5,
	["Starlight Paladin"] = 5
}
 __recovered_scope_0.var_0_477 = {
	["Crescent Raider"] = {
		attack = 3,
		attack2 = 4
	},
	["초승달 약탈자"] = {
		attack = 3,
		attack2 = 4
	},
	["초승달 약탈자 (Crescent Raider)"] = {
		attack = 3,
		attack2 = 4
	}
}

 function __recovered_scope_0.var_0_478(arg_324_0)
	if not arg_324_0 then
		return nil
	end

	return __recovered_scope_0.var_0_477[arg_324_0.kind] or __recovered_scope_0.var_0_477[arg_324_0.skin]
end

function __recovered_scope_0.var_0_475.get(arg_325_0)
	if not arg_325_0 then
		return nil
	end

	return __recovered_scope_0.var_0_476[arg_325_0.kind] or __recovered_scope_0.var_0_476[arg_325_0.skin]
end

function __recovered_scope_0.var_0_475.hasAlternating(arg_326_0)
	return __recovered_scope_0.var_0_478(arg_326_0) ~= nil
end

function __recovered_scope_0.var_0_475.takeAlternating(arg_327_0)
	local var_327_0 = __recovered_scope_0.var_0_478(arg_327_0)

	if not var_327_0 then
		return nil
	end

	local var_327_1 = arg_327_0._enemyBasicLastAttackAnim == "attack" and "attack2" or "attack"

	arg_327_0._enemyBasicLastAttackAnim = var_327_1

	return var_327_0[var_327_1], var_327_1
end

 __recovered_scope_0.var_0_479 = __recovered_scope_0.var_0_475
 __recovered_scope_0.var_0_480 = nil
 __recovered_scope_0.var_0_481 = {}
 __recovered_scope_0.var_0_482 = 6
 __recovered_scope_0.var_0_483 = 3
 __recovered_scope_0.var_0_484 = 0.35
 __recovered_scope_0.var_0_485 = 0.18
 __recovered_scope_0.var_0_486 = __recovered_scope_0.var_0_485 * 2

function __recovered_scope_0.var_0_481.matches(arg_328_0)
	if not arg_328_0 then
		return false
	end

	local var_328_0 = arg_328_0.kind
	local var_328_1 = arg_328_0.skin

	return arg_328_0._twinStarHealth ~= nil or var_328_0 == "Twin Star Lords" or var_328_0 == "쌍성 군주" or var_328_0 == "쌍성 군주 (Twin Star Lords)" or var_328_1 == "Twin Star Lords 2" or var_328_1 == "쌍성 군주 (Twin Star Lords)"
end

 function __recovered_scope_0.var_0_487(arg_329_0)
	arg_329_0._twinStarBarrierActive = nil
	arg_329_0._twinStarBarrierPosing = nil
	arg_329_0._twinStarBarrierFacing = nil
	arg_329_0._twinStarBarrierHitT = nil
	arg_329_0._twinStarBarrierHitFresh = nil
	arg_329_0._bossSkillBusy = nil
	arg_329_0._bossSkillManualAnim = nil

	if arg_329_0.anim and arg_329_0.anim.name == "shield" and not arg_329_0.dying then
		arg_329_0.anim.name, arg_329_0.anim.frame, arg_329_0.anim.t = "idle", 1, 0
	end
end

 function __recovered_scope_0.var_0_488(arg_330_0, arg_330_1)
	local var_330_0 = require("src.game.combat").stage6_rift

	local function var_330_1(arg_331_0)
		return arg_331_0 and arg_331_0.alive and not arg_331_0.dying and (tonumber(arg_331_0.hp) or 0) > 0 and not arg_331_0._venomMawSwallowed and arg_331_0.side ~= "enemy" and var_330_0.targetAllowed(arg_330_0, arg_330_1, arg_331_0)
	end

	local var_330_2 = var_330_1(arg_330_1.target) and arg_330_1.target or nil

	if not var_330_2 then
		local var_330_3 = math.huge

		for iter_330_0, iter_330_1 in ipairs(arg_330_0.allies or {}) do
			if var_330_1(iter_330_1) then
				local var_330_4 = (iter_330_1.x or 0) - (arg_330_1.x or 0)
				local var_330_5 = (iter_330_1.y or 0) - (arg_330_1.y or 0)
				local var_330_6 = var_330_4 * var_330_4 + var_330_5 * var_330_5

				if var_330_6 < var_330_3 then
					var_330_2, var_330_3 = iter_330_1, var_330_6
				end
			end
		end
	end

	local var_330_7 = (tonumber(arg_330_1.facing) or -1) < 0 and -1 or 1

	if var_330_2 then
		local var_330_8 = (var_330_2.x or 0) - (arg_330_1.x or 0)

		if math.abs(var_330_8) > 0.05 then
			var_330_7 = var_330_8 < 0 and -1 or 1
		end
	end

	arg_330_1._twinStarBarrierFacing = var_330_7
	arg_330_1.facing = var_330_7
end

 function __recovered_scope_0.var_0_489(arg_332_0, arg_332_1, arg_332_2)
	arg_332_0.facing = arg_332_0._twinStarBarrierFacing or arg_332_0.facing or -1
	arg_332_0._twinStarBarrierActive = arg_332_2 or nil
	arg_332_0._twinStarBarrierPosing = true
	arg_332_0._bossSkillBusy = true
	arg_332_0._bossSkillManualAnim = true
	arg_332_0._pendingGoblinHit = nil
	arg_332_0._pendingOrcHit = nil
	arg_332_0._pendingHowlHit = nil
	arg_332_0._meleeLoop = false
	arg_332_0.shotPending = false
	arg_332_0.pendingTarget = nil

	if arg_332_0.anim then
		arg_332_0.anim.name = "shield"
		arg_332_0.anim.frame = arg_332_1
		arg_332_0.anim.t = 0
		arg_332_0.anim.reverse = nil
	end
end

function __recovered_scope_0.var_0_481.notifyEnemyDamaged(arg_333_0, arg_333_1, arg_333_2)
	if not arg_333_0 or not arg_333_0._twinStarBarrierActive or (tonumber(arg_333_2) or 0) <= 0 then
		return false
	end

	arg_333_0._twinStarBarrierHitT = __recovered_scope_0.var_0_485
	arg_333_0._twinStarBarrierHitFresh = true
	arg_333_0.hitFlash = nil
	arg_333_0.poisonHitFlash = nil
	arg_333_0.bleedHitFlash = nil

	__recovered_scope_0.var_0_489(arg_333_0, 6, true)
	require("src.ui.effects").twin_star_barrier.emit(arg_333_0)

	return true
end

function __recovered_scope_0.var_0_481.modifyDamageToEnemy(arg_334_0, arg_334_1, arg_334_2, arg_334_3)
	if arg_334_3 and arg_334_3.twinStarDamageAlreadyReduced then
		return arg_334_1
	end

	if arg_334_0 and arg_334_0._twinStarBarrierActive then
		return (tonumber(arg_334_1) or 0) * __recovered_scope_0.var_0_484
	end

	return tonumber(arg_334_1) or 0
end

function __recovered_scope_0.var_0_481.updateWorld(arg_335_0, arg_335_1)
	if not arg_335_0 then
		return
	end

	local var_335_0 = math.max(0, tonumber(arg_335_1) or 0)

	if (tonumber(arg_335_0.timeStopT) or 0) > 0 or arg_335_0._judgementIntroLockActive then
		var_335_0 = 0
	end

	local var_335_1 = {}

	for iter_335_0, iter_335_1 in ipairs(arg_335_0.enemies or {}) do
		require("src.ui.effects").twin_star_barrier.update(iter_335_1, var_335_0)

		local var_335_2 = iter_335_1._twinStarHealth

		if var_335_2 and not var_335_1[var_335_2] and not var_335_2.dead then
			var_335_1[var_335_2] = true
			var_335_2.barrierClock = (var_335_2.barrierClock or 0) + var_335_0

			local var_335_3 = math.floor((var_335_2.barrierClock + 1e-06) / __recovered_scope_0.var_0_482)
			local var_335_4 = var_335_2.barrierClock - var_335_3 * __recovered_scope_0.var_0_482
			local var_335_5 = var_335_3 > 0 and var_335_4 < __recovered_scope_0.var_0_486 + __recovered_scope_0.var_0_483 + __recovered_scope_0.var_0_485 - 1e-06 and (var_335_3 - 1) % #var_335_2.members + 1 or nil

			for iter_335_2, iter_335_3 in ipairs(var_335_2.members) do
				if iter_335_2 == var_335_5 and iter_335_3.alive and not iter_335_3.dying and (tonumber(iter_335_3.hp) or 0) > 0 then
					if not iter_335_3._twinStarBarrierPosing then
						__recovered_scope_0.var_0_488(arg_335_0, iter_335_3)
					end

					if var_335_4 < __recovered_scope_0.var_0_486 - 1e-06 then
						__recovered_scope_0.var_0_489(iter_335_3, math.min(2, 1 + math.floor(math.max(0, var_335_4) / __recovered_scope_0.var_0_485 + 1e-06)), false)
					elseif var_335_4 < __recovered_scope_0.var_0_486 + __recovered_scope_0.var_0_483 - 1e-06 then
						if iter_335_3._twinStarBarrierHitFresh then
							iter_335_3._twinStarBarrierHitFresh = nil
						else
							iter_335_3._twinStarBarrierHitT = math.max(0, (iter_335_3._twinStarBarrierHitT or 0) - var_335_0)
						end

						iter_335_3.hitFlash = nil
						iter_335_3.poisonHitFlash = nil
						iter_335_3.bleedHitFlash = nil

						__recovered_scope_0.var_0_489(iter_335_3, (iter_335_3._twinStarBarrierHitT or 0) > 0 and 6 or 3, true)
					else
						iter_335_3._twinStarBarrierHitT = nil
						iter_335_3._twinStarBarrierHitFresh = nil
						iter_335_3.hitFlash = nil
						iter_335_3.poisonHitFlash = nil
						iter_335_3.bleedHitFlash = nil

						__recovered_scope_0.var_0_489(iter_335_3, 7, false)
					end
				elseif iter_335_3._twinStarBarrierPosing then
					__recovered_scope_0.var_0_487(iter_335_3)
				end
			end
		end
	end
end

function __recovered_scope_0.var_0_481.releaseOnDeath(arg_336_0)
	__recovered_scope_0.var_0_487(arg_336_0)

	arg_336_0._twinStarBarrierSparks = nil
end

function __recovered_scope_0.var_0_481.drawAbove(arg_337_0)
	require("src.ui.effects").twin_star_barrier.drawAbove(arg_337_0)
end

 __recovered_scope_0.var_0_490 = {
	__index = function(arg_338_0, arg_338_1)
		if arg_338_1 == "hp" or arg_338_1 == "maxhp" then
			return arg_338_0._twinStarHealth[arg_338_1]
		end
	end,
	__newindex = function(arg_339_0, arg_339_1, arg_339_2)
		if arg_339_1 == "hp" or arg_339_1 == "maxhp" then
			local var_339_0 = arg_339_0._twinStarHealth

			if arg_339_1 == "hp" and var_339_0.dead then
				arg_339_2 = 0
			end

			var_339_0[arg_339_1] = arg_339_2
		else
			rawset(arg_339_0, arg_339_1, arg_339_2)
		end
	end
}

function __recovered_scope_0.var_0_481.linkPair(arg_340_0, arg_340_1)
	if not arg_340_0 or not arg_340_1 or arg_340_0 == arg_340_1 then
		return nil
	end

	if arg_340_0._twinStarHealth or arg_340_1._twinStarHealth then
		return nil
	end

	assert(getmetatable(arg_340_0) == nil and getmetatable(arg_340_1) == nil, "Twin Star Lords must be plain runtime entities before linking")

	local var_340_0 = {
		barrierClock = 0,
		hp = arg_340_0.hp,
		maxhp = arg_340_0.maxhp,
		members = {
			arg_340_0,
			arg_340_1
		}
	}

	for iter_340_0, iter_340_1 in ipairs(var_340_0.members) do
		iter_340_1._twinStarHealth = var_340_0

		rawset(iter_340_1, "hp", nil)
		rawset(iter_340_1, "maxhp", nil)
		setmetatable(iter_340_1, __recovered_scope_0.var_0_490)
	end

	return var_340_0
end

function __recovered_scope_0.var_0_481.linkWave(arg_341_0)
	local var_341_0

	for iter_341_0, iter_341_1 in ipairs(arg_341_0.enemies or {}) do
		if iter_341_1.kind == "Twin Star Lords" and iter_341_1._waveSpawnEnemy and iter_341_1.alive and not iter_341_1.dying and not iter_341_1._twinStarHealth then
			if var_341_0 then
				return __recovered_scope_0.var_0_481.linkPair(var_341_0, iter_341_1)
			end

			var_341_0 = iter_341_1
		end
	end
end

function __recovered_scope_0.var_0_481.finishDeath(arg_342_0, arg_342_1)
	local var_342_0 = arg_342_0 and arg_342_0._twinStarHealth

	if not var_342_0 or var_342_0.dead then
		return
	end

	var_342_0.dead = true
	var_342_0.hp = 0

	for iter_342_0, iter_342_1 in ipairs(var_342_0.members) do
		if iter_342_1 ~= arg_342_0 and iter_342_1.alive and not iter_342_1.dying then
			arg_342_1(iter_342_1)
		end
	end
end

 __recovered_scope_0.var_0_491 = __recovered_scope_0.var_0_481
 __recovered_scope_0.var_0_492 = nil
 __recovered_scope_0.var_0_493 = {}
 __recovered_scope_0.var_0_494 = 0.6
 __recovered_scope_0.var_0_495 = 0.22
 __recovered_scope_0.var_0_496 = 0.5
 __recovered_scope_0.var_0_497 = 14
 __recovered_scope_0.var_0_498 = 44

 function __recovered_scope_0.var_0_499(arg_343_0)
	return arg_343_0 and arg_343_0.alive and not arg_343_0.dying and (tonumber(arg_343_0.hp) or 0) > 0 and not arg_343_0.isUndyingSoul and not arg_343_0._venomMawSwallowed
end

 function __recovered_scope_0.var_0_500(arg_344_0, arg_344_1, arg_344_2)
	arg_344_0.anim = arg_344_0.anim or {}
	arg_344_0.anim.name, arg_344_0.anim.frame, arg_344_0.anim.t = arg_344_1, arg_344_2, 0
	arg_344_0.anim.reverse, arg_344_0.anim._desynced = nil, true
	arg_344_0.facing = arg_344_0._starJudgeScaleFacing or arg_344_0.facing or -1
end

 function __recovered_scope_0.var_0_501(arg_345_0)
	arg_345_0.shotPending, arg_345_0.pendingTarget = false
	arg_345_0._meleeLoop, arg_345_0._pendingEnemyBasicHit = false
	arg_345_0._pendingGoblinHit = nil
end

 function __recovered_scope_0.var_0_502(arg_346_0)
	arg_346_0._starJudgeScaleState, arg_346_0._starJudgeScaleLift = nil
	arg_346_0._starJudgeScaleAirborne, arg_346_0._starJudgeScaleFacing = nil
	arg_346_0._bossSkillBusy, arg_346_0._bossSkillManualAnim = nil

	__recovered_scope_0.var_0_501(arg_346_0)

	if __recovered_scope_0.var_0_499(arg_346_0) then
		__recovered_scope_0.var_0_500(arg_346_0, "idle", 1)
	end
end

function __recovered_scope_0.var_0_493.weighLanes(arg_347_0, arg_347_1)
	local var_347_0 = require("src.game.combat").stage6_rift
	local var_347_1 = {
		[-1] = {},
		{}
	}
	local var_347_2 = require("src.game.unit_abilities").dimensional_duel

	for iter_347_0, iter_347_1 in ipairs(arg_347_0.allies or {}) do
		if __recovered_scope_0.var_0_499(iter_347_1) and not var_347_2.separated(arg_347_0, arg_347_1, iter_347_1) then
			local var_347_3 = var_347_0.entityLane(arg_347_0, iter_347_1)

			if var_347_1[var_347_3] then
				var_347_1[var_347_3][#var_347_1[var_347_3] + 1] = {
					unit = iter_347_1,
					order = iter_347_0
				}
			end
		end
	end

	local var_347_4 = #var_347_1[-1]
	local var_347_5 = #var_347_1[1]
	local var_347_6 = var_347_5 < var_347_4 and -1 or var_347_4 < var_347_5 and 1 or nil
	local var_347_7 = {}

	if var_347_6 then
		table.sort(var_347_1[var_347_6], function(arg_348_0, arg_348_1)
			local var_348_0 = ((arg_348_0.unit.x or 0) - (arg_347_1.x or 0))^2 + ((arg_348_0.unit.y or 0) - (arg_347_1.y or 0))^2
			local var_348_1 = ((arg_348_1.unit.x or 0) - (arg_347_1.x or 0))^2 + ((arg_348_1.unit.y or 0) - (arg_347_1.y or 0))^2

			return var_348_0 == var_348_1 and arg_348_0.order < arg_348_1.order or var_348_0 < var_348_1
		end)

		for iter_347_2 = 1, math.min(3, #var_347_1[var_347_6]) do
			var_347_7[iter_347_2] = var_347_1[var_347_6][iter_347_2].unit
		end
	end

	return var_347_6, var_347_7, var_347_4, var_347_5
end

function __recovered_scope_0.var_0_493.canBeTargeted(arg_349_0, arg_349_1)
	if not arg_349_0 or not arg_349_0._starJudgeScaleAirborne or not arg_349_1 or arg_349_1.side ~= "ally" and not arg_349_1._tricksterCharm then
		return true
	end

	return require("src.game.combat").stage6_rift.isRangedCombatant(arg_349_1)
end

function __recovered_scope_0.var_0_493.blocksDamageToEnemy(arg_350_0, arg_350_1, arg_350_2, arg_350_3)
	if arg_350_3 and arg_350_3.dot then
		return false
	end

	return not __recovered_scope_0.var_0_493.canBeTargeted(arg_350_1, arg_350_2)
end

function __recovered_scope_0.var_0_493.modifyDamageToEnemy(arg_351_0, arg_351_1)
	local var_351_0 = arg_351_0 and arg_351_0._starJudgeVulnerable

	return (tonumber(arg_351_1) or 0) * (var_351_0 and var_351_0.t < var_351_0.dur and 1.2 or 1)
end

 function __recovered_scope_0.var_0_503(arg_352_0, arg_352_1, arg_352_2, arg_352_3)
	arg_352_2.released = true

	local var_352_0 = require("src.ui.effects").star_judge_scales
	local var_352_1 = 0

	if not arg_352_2.lane then
		arg_352_1._starJudgeVulnerable = {
			dur = 3,
			fresh = true,
			t = 0
		}

		var_352_0.emitVerdict(arg_352_0, arg_352_1, true)
	else
		local var_352_2 = require("src.game.combat").stage6_rift
		local var_352_3 = math.max(0, math.floor((tonumber(arg_352_1.dmg) or 48) * 1.2 + 0.5))

		for iter_352_0, iter_352_1 in ipairs(arg_352_2.targets) do
			if __recovered_scope_0.var_0_499(iter_352_1) and var_352_2.entityLane(arg_352_0, iter_352_1) == arg_352_2.lane and not require("src.game.unit_abilities").dimensional_duel.separated(arg_352_0, arg_352_1, iter_352_1) then
				var_352_0.emitVerdict(arg_352_0, iter_352_1, false)
				arg_352_3(iter_352_1, var_352_3, arg_352_1, {
					skillBig = true,
					skillDamage = true,
					hitFlashColor = {
						1,
						0.96,
						0.72
					}
				})

				var_352_1 = var_352_1 + 1
			end
		end
	end

	if arg_352_2.lane and var_352_1 == 0 then
		return
	end

	local var_352_4 = 0.055
	local var_352_5 = 2
	local var_352_6 = 0.16

	if var_352_1 > 0 then
		var_352_4, var_352_5, var_352_6 = 0.09, 3.5, 0.2
	end

	arg_352_0.hitStopT = math.max(tonumber(arg_352_0.hitStopT) or 0, var_352_4)

	local var_352_7 = arg_352_0.cameraShake
	local var_352_8 = var_352_7 and math.max(0, 1 - (var_352_7.t or 0) / math.max(0.001, var_352_7.dur or 0.16)) or 0

	if var_352_5 > (var_352_7 and var_352_7.ampY or 0) * var_352_8 then
		arg_352_0.cameraShake = {
			t = 0,
			dur = var_352_6,
			ampY = var_352_5
		}
	end
end

function __recovered_scope_0.var_0_493.update(arg_353_0, arg_353_1, arg_353_2, arg_353_3, arg_353_4, arg_353_5)
	if not arg_353_0 or not __recovered_scope_0.var_0_493.matches(arg_353_1) or not __recovered_scope_0.var_0_499(arg_353_1) then
		return false
	end

	local var_353_0 = math.max(0, math.min(0.2, tonumber(arg_353_2) or 0))

	arg_353_1._starJudgeScaleClock = tonumber(arg_353_1._starJudgeScaleClock) or 0
	arg_353_1._starJudgeScaleNext = tonumber(arg_353_1._starJudgeScaleNext) or 7

	if arg_353_5 then
		arg_353_1._starJudgeScaleClock = arg_353_1._starJudgeScaleClock + var_353_0
	end

	local var_353_1 = arg_353_1._starJudgeScaleState

	if not var_353_1 then
		if not arg_353_5 or arg_353_1._starJudgeScaleClock + 1e-06 < arg_353_1._starJudgeScaleNext then
			return false
		end

		local var_353_2, var_353_3, var_353_4, var_353_5 = __recovered_scope_0.var_0_493.weighLanes(arg_353_0, arg_353_1)

		var_353_1 = {
			t = 0,
			lane = var_353_2,
			targets = var_353_3,
			upper = var_353_4,
			lower = var_353_5
		}
		arg_353_1._starJudgeScaleState = var_353_1
		arg_353_1._starJudgeScaleNext = arg_353_1._starJudgeScaleClock + 7
		arg_353_1._starJudgeScaleFacing = arg_353_1.facing or -1
		arg_353_1._bossSkillBusy, arg_353_1._bossSkillManualAnim = true, true
		arg_353_1._starJudgeScaleLift = 0

		__recovered_scope_0.var_0_501(arg_353_1)
		__recovered_scope_0.var_0_500(arg_353_1, "idle", 1)

		return true
	end

	arg_353_1._bossSkillBusy, arg_353_1._bossSkillManualAnim = true, true

	__recovered_scope_0.var_0_501(arg_353_1)

	if not arg_353_5 then
		return true
	end

	var_353_1.t = var_353_1.t + var_353_0

	if var_353_1.t < __recovered_scope_0.var_0_494 then
		local var_353_6 = var_353_1.t / __recovered_scope_0.var_0_494

		arg_353_1._starJudgeScaleLift = __recovered_scope_0.var_0_497 * var_353_6 * var_353_6 * (3 - 2 * var_353_6)

		__recovered_scope_0.var_0_500(arg_353_1, "idle", 1 + math.floor(var_353_1.t / 0.18) % 4)
	elseif var_353_1.t < __recovered_scope_0.var_0_494 + 7 * __recovered_scope_0.var_0_495 then
		arg_353_1._starJudgeScaleLift = __recovered_scope_0.var_0_497

		local var_353_7 = math.min(7, 1 + math.floor((var_353_1.t - __recovered_scope_0.var_0_494) / __recovered_scope_0.var_0_495 + 1e-06))

		__recovered_scope_0.var_0_500(arg_353_1, "attack2", var_353_7)

		if var_353_7 >= 6 and not var_353_1.released then
			__recovered_scope_0.var_0_503(arg_353_0, arg_353_1, var_353_1, arg_353_3)
		end
	else
		local var_353_8 = math.min(1, (var_353_1.t - __recovered_scope_0.var_0_494 - 7 * __recovered_scope_0.var_0_495) / __recovered_scope_0.var_0_496)

		arg_353_1._starJudgeScaleLift = __recovered_scope_0.var_0_497 * (1 - var_353_8 * var_353_8 * (3 - 2 * var_353_8))

		__recovered_scope_0.var_0_500(arg_353_1, "idle", 1 + math.floor((var_353_1.t - __recovered_scope_0.var_0_494 - 7 * __recovered_scope_0.var_0_495) / 0.18) % 4)

		if var_353_8 >= 1 then
			__recovered_scope_0.var_0_502(arg_353_1)

			return false
		end
	end

	arg_353_1._starJudgeScaleAirborne = arg_353_1._starJudgeScaleLift > 0.001 or nil

	return true
end

function __recovered_scope_0.var_0_493.releaseOnDeath(arg_354_0)
	if not arg_354_0 then
		return
	end

	__recovered_scope_0.var_0_502(arg_354_0)

	arg_354_0._starJudgeVulnerable = nil
end

function __recovered_scope_0.var_0_493.matches(arg_355_0)
	return arg_355_0 and arg_355_0.starJudgeProjectile == true or false
end

function __recovered_scope_0.var_0_493.updateWorld(arg_356_0, arg_356_1)
	local var_356_0 = math.max(0, tonumber(arg_356_1) or 0)

	if (tonumber(arg_356_0 and arg_356_0.timeStopT) or 0) > 0 or arg_356_0 and arg_356_0._judgementIntroLockActive then
		var_356_0 = 0
	end

	require("src.ui.effects").star_judge_impact.update(arg_356_0, var_356_0)
	require("src.ui.effects").star_judge_scales.update(arg_356_0, var_356_0)

	for iter_356_0, iter_356_1 in ipairs(arg_356_0 and arg_356_0.enemies or {}) do
		if __recovered_scope_0.var_0_493.matches(iter_356_1) and iter_356_1.alive and not iter_356_1.dying then
			if iter_356_1._tricksterCharm and iter_356_1._starJudgeScaleState then
				__recovered_scope_0.var_0_502(iter_356_1)
			end

			local var_356_1 = iter_356_1._starJudgeVulnerable

			if var_356_1 then
				if var_356_1.fresh then
					var_356_1.fresh = nil
				else
					var_356_1.t = var_356_1.t + var_356_0
				end

				if var_356_1.t >= var_356_1.dur then
					iter_356_1._starJudgeVulnerable = nil
				end
			end

			require("src.game.combat").stage6_rift.enforceCenterLane(arg_356_0, iter_356_1)
		end
	end
end

function __recovered_scope_0.var_0_493.drawAbove(arg_357_0)
	require("src.ui.effects").star_judge_impact.draw(arg_357_0)
	require("src.ui.effects").star_judge_scales.draw(arg_357_0)
end

function __recovered_scope_0.var_0_493.finishVisualImpact(arg_358_0, arg_358_1)
	if not arg_358_1 or not arg_358_1._starJudgePendingBurst then
		return false
	end

	arg_358_1._starJudgePendingBurst = nil

	require("src.ui.effects").star_judge_impact.emit(arg_358_0, arg_358_1.x or 0, arg_358_1.y or 0, __recovered_scope_0.var_0_498, arg_358_1._starJudgeKnockbackProc)

	return true
end

function __recovered_scope_0.var_0_493.impact(arg_359_0, arg_359_1, arg_359_2, arg_359_3)
	if not arg_359_0 or not arg_359_1 or not arg_359_2 or not arg_359_3 or arg_359_1._starJudgeImpactDone then
		return 0
	end

	arg_359_1._starJudgeImpactDone = true

	local var_359_0 = tonumber(arg_359_1._starJudgeImpactX) or tonumber(arg_359_1.x) or arg_359_2.x or 0
	local var_359_1 = tonumber(arg_359_1._starJudgeImpactY) or tonumber(arg_359_1.y) or arg_359_2.y or 0
	local var_359_2 = __recovered_scope_0.var_0_498
	local var_359_3 = (love and love.math and love.math.random or math.random)() < 0.3

	arg_359_1._starJudgeKnockbackProc = var_359_3
	arg_359_1._starJudgePendingBurst = true

	require("src.ui.effects").star_judge_impact.emitHit(arg_359_0, arg_359_2, var_359_0, var_359_1, arg_359_1.vx, arg_359_1.vy, var_359_3)

	arg_359_0.hitStopT = math.max(tonumber(arg_359_0.hitStopT) or 0, var_359_3 and 0.04 or 0.028)

	local var_359_4 = arg_359_0.cameraShake
	local var_359_5 = var_359_4 and math.max(0, 1 - (tonumber(var_359_4.t) or 0) / math.max(0.001, tonumber(var_359_4.dur) or 0.1)) or 0
	local var_359_6 = var_359_3 and 1.8 or 1.2

	if var_359_6 > (tonumber(var_359_4 and var_359_4.ampY) or 0) * var_359_5 then
		arg_359_0.cameraShake = {
			dur = 0.1,
			t = 0,
			ampY = var_359_6
		}
	end

	if arg_359_2.hitFlash then
		arg_359_2.hitFlash.color = {
			1,
			0.94,
			0.72
		}
		arg_359_2.hitFlash.dur = math.max(tonumber(arg_359_2.hitFlash.dur) or 0, 0.18)
	end

	if arg_359_2.hitShake then
		arg_359_2.hitShake.amp = math.max(tonumber(arg_359_2.hitShake.amp) or 0, 5)
		arg_359_2.hitShake.dur = math.max(tonumber(arg_359_2.hitShake.dur) or 0, 0.2)
	end

	if not var_359_3 then
		return 0
	end

	local var_359_7 = 0
	local var_359_8 = arg_359_1.owner
	local var_359_9 = require("src.game.unit_abilities").dimensional_duel

	for iter_359_0, iter_359_1 in ipairs(arg_359_0.allies or {}) do
		if iter_359_1.alive and not iter_359_1.dying and (tonumber(iter_359_1.hp) or 0) > 0 and not iter_359_1._venomMawSwallowed and not iter_359_1._caveBasiliskPetrified and not iter_359_1._oathHelmStone and (not var_359_8 or not var_359_9.separated(arg_359_0, var_359_8, iter_359_1)) then
			local var_359_10 = iter_359_1.colX and iter_359_1.colX + (iter_359_1.colW or 0) * 0.5 or iter_359_1.x or 0
			local var_359_11 = iter_359_1.colY and iter_359_1.colY + (iter_359_1.colH or 0) * 0.5 or iter_359_1.y or 0
			local var_359_12 = var_359_10 - var_359_0
			local var_359_13 = var_359_11 - var_359_1
			local var_359_14 = math.sqrt(var_359_12 * var_359_12 + var_359_13 * var_359_13)
			local var_359_15 = iter_359_1.colX and math.max(iter_359_1.colX, math.min(var_359_0, iter_359_1.colX + (iter_359_1.colW or 0))) or var_359_10
			local var_359_16 = iter_359_1.colY and math.max(iter_359_1.colY, math.min(var_359_1, iter_359_1.colY + (iter_359_1.colH or 0))) or var_359_11

			if iter_359_1 == arg_359_2 or (var_359_15 - var_359_0)^2 + (var_359_16 - var_359_1)^2 <= var_359_2^2 then
				local var_359_17 = 18 - 4 * math.min(1, var_359_14 / var_359_2)

				if var_359_14 < 0.001 then
					var_359_12, var_359_13 = tonumber(arg_359_1.vx) or -1, tonumber(arg_359_1.vy) or 0
					var_359_14 = math.sqrt(var_359_12 * var_359_12 + var_359_13 * var_359_13)

					if var_359_14 < 0.001 then
						var_359_12, var_359_13, var_359_14 = -1, 0, 1
					end
				end

				if not iter_359_1._marshDriveAir then
					local var_359_18, var_359_19 = require("src.game.combat").stage6_rift.clampDestinationToLane(arg_359_0, iter_359_1, (iter_359_1.x or 0) + var_359_12 / var_359_14 * var_359_17, (iter_359_1.y or 0) + var_359_13 / var_359_14 * var_359_17)

					arg_359_3(iter_359_1, 0.46, 12, var_359_18, var_359_19)

					var_359_7 = var_359_7 + 1
				end
			end
		end
	end

	return var_359_7
end

 __recovered_scope_0.var_0_504 = __recovered_scope_0.var_0_493
 __recovered_scope_0.var_0_505 = nil
 __recovered_scope_0.var_0_506 = {
	matches = function(arg_360_0)
		return arg_360_0 and arg_360_0.cosmicSovereignProjectile == true or false
	end,
	releaseOnDeath = function(arg_361_0)
		arg_361_0._cosmicPressureState = nil
	end,
	pressureImpact = function(arg_362_0)
		arg_362_0.hitStopT = math.max(tonumber(arg_362_0.hitStopT) or 0, 0.04)

		local var_362_0 = arg_362_0.cameraShake
		local var_362_1 = var_362_0 and math.max(0, 1 - (var_362_0.t or 0) / math.max(0.001, var_362_0.dur or 0.2)) or 0

		if (var_362_0 and var_362_0.ampY or 0) * var_362_1 < 1.8 then
			arg_362_0.cameraShake = {
				dur = 0.2,
				ampY = 1.8,
				t = 0
			}
		end

		local var_362_2 = arg_362_0.assets and arg_362_0.assets.audio and arg_362_0.assets.audio.cosmicPressure
		local var_362_3 = math.max(0, math.min(1, tonumber(arg_362_0.ui and arg_362_0.ui.menuSettings and arg_362_0.ui.menuSettings.sfxVolume) or 1))

		if var_362_2 and var_362_3 > 0 then
			var_362_2:stop()
			var_362_2:setVolume(var_362_3 * 0.55)
			var_362_2:play()
		end
	end
}

 function __recovered_scope_0.var_0_507(arg_363_0, arg_363_1, arg_363_2)
	local var_363_0 = require("src.game.unit_abilities").dimensional_duel

	for iter_363_0, iter_363_1 in ipairs(arg_363_1) do
		if not var_363_0.separated(arg_363_0, iter_363_1, arg_363_2) then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_506.updatePressure(arg_364_0, arg_364_1)
	local var_364_0 = math.max(0, tonumber(arg_364_1) or 0)

	if (arg_364_0.timeStopT or 0) > 0 or arg_364_0._judgementIntroLockActive then
		var_364_0 = 0
	end

	local var_364_1 = false
	local var_364_2 = {}

	for iter_364_0, iter_364_1 in ipairs(arg_364_0.enemies or {}) do
		if __recovered_scope_0.var_0_506.matches(iter_364_1) then
			if not iter_364_1.alive or iter_364_1.dying or (iter_364_1.hp or 0) <= 0 or iter_364_1._tricksterCharm then
				__recovered_scope_0.var_0_506.releaseOnDeath(iter_364_1)
			else
				local var_364_3 = iter_364_1._cosmicPressureState

				if var_364_3 then
					var_364_3.t = var_364_3.t + var_364_0

					if var_364_0 > 0 and var_364_3.t >= 1.2857142857142858 and var_364_3.t < 3 and not var_364_3.impact then
						var_364_3.impact = true

						__recovered_scope_0.var_0_506.pressureImpact(arg_364_0)
					end

					if var_364_3.t + 1e-06 >= 3 then
						iter_364_1._cosmicPressureState = nil
					end
				end

				iter_364_1._cosmicPressureClock = (iter_364_1._cosmicPressureClock or 0) + var_364_0

				local var_364_4 = iter_364_1._cosmicPressureNext or 6

				if var_364_0 > 0 and var_364_4 <= iter_364_1._cosmicPressureClock + 1e-06 and (iter_364_1.stunT or 0) <= 0 and (iter_364_1.bindingT or 0) <= 0 and (iter_364_1.fearT or 0) <= 0 then
					iter_364_1._cosmicPressureState = {
						t = 0
					}
					iter_364_1._cosmicPressureNext = iter_364_1._cosmicPressureClock + 10
				end

				if iter_364_1._cosmicPressureState then
					var_364_1 = true
					var_364_2[#var_364_2 + 1] = iter_364_1
				end
			end
		end
	end

	local var_364_5
	local var_364_6 = {}

	for iter_364_2, iter_364_3 in ipairs(arg_364_0.allies or {}) do
		if var_364_1 and iter_364_3.alive and not iter_364_3.dying and (iter_364_3.hp or 0) > 0 and not iter_364_3._venomMawSwallowed and not iter_364_3.isUndyingSoul and __recovered_scope_0.var_0_507(arg_364_0, var_364_2, iter_364_3) then
			var_364_6[iter_364_3] = true

			if not var_364_5 or (iter_364_3.x or 0) > (var_364_5.x or 0) then
				var_364_5 = iter_364_3
			end
		end
	end

	for iter_364_4, iter_364_5 in ipairs(arg_364_0.allies or {}) do
		if var_364_6[iter_364_5] and iter_364_5 ~= var_364_5 and not iter_364_5._cosmicPressure then
			require("src.game.combat").spitecap.onDebuff(iter_364_5, arg_364_0, "_cosmicPressure")
		end

		iter_364_5._cosmicPressure = var_364_6[iter_364_5] and iter_364_5 ~= var_364_5 or nil
	end

	require("src.ui.effects").cosmic_pressure.update(arg_364_0, var_364_0)
end

function __recovered_scope_0.var_0_506.beginBasicAttack(arg_365_0, arg_365_1)
	local var_365_0 = arg_365_0._cosmicLastBasicAnim == "attack" and "attack2" or "attack"

	arg_365_0._cosmicLastBasicAnim, arg_365_0._cosmicBasicAnim = var_365_0, var_365_0
	arg_365_0.shotPending, arg_365_0.pendingTarget = true, arg_365_1
	arg_365_0.anim = arg_365_0.anim or {}
	arg_365_0.anim.name, arg_365_0.anim.frame, arg_365_0.anim.t = var_365_0, 1, 0
	arg_365_0.anim.reverse, arg_365_0.anim._desynced = nil, true

	if arg_365_1 then
		arg_365_0.facing = arg_365_1.x >= arg_365_0.x and 1 or -1
	end
end

function __recovered_scope_0.var_0_506.releaseBasicShot(arg_366_0, arg_366_1, arg_366_2, arg_366_3, arg_366_4)
	if not arg_366_1.cosmicSovereignProjectile or not arg_366_1.shotPending then
		return false
	end

	local var_366_0 = arg_366_1._cosmicBasicAnim

	if not arg_366_1.anim or arg_366_1.anim.name ~= var_366_0 then
		arg_366_1.shotPending, arg_366_1.pendingTarget, arg_366_1._cosmicBasicAnim = false

		return false
	end

	if (arg_366_1.anim.frame or 1) < 4 then
		return false
	end

	local var_366_1 = arg_366_1.pendingTarget
	local var_366_2 = require("src.game.unit_abilities").dimensional_duel

	if not var_366_1 or not var_366_1.alive or not not var_366_1.dying or var_366_2.separated(arg_366_0, arg_366_1, var_366_1) then
		var_366_1 = arg_366_4 and arg_366_4(arg_366_1, arg_366_0.allies)
	end

	arg_366_1.shotPending, arg_366_1.pendingTarget, arg_366_1._cosmicBasicAnim = false

	local var_366_3 = arg_366_0.assets and arg_366_0.assets.projectiles and arg_366_0.assets.projectiles.CosmicSovereignProjectile

	if not var_366_3 or not var_366_1 or not var_366_1.alive or not not var_366_1.dying or var_366_2.separated(arg_366_0, arg_366_1, var_366_1) then
		return false
	end

	local var_366_4, var_366_5 = arg_366_0:computePreciseMarkAnchor(var_366_1)
	local var_366_6, var_366_7, var_366_8, var_366_9, var_366_10 = require("src.game.projectiles").cosmic_sovereign_projectile.getProjectileLaunch(arg_366_1, arg_366_0:getUnitAssetForEnemy(arg_366_1), arg_366_2, {
		x = var_366_4,
		y = var_366_5
	}, var_366_3, var_366_0)

	if not var_366_6 then
		return false
	end

	arg_366_3(var_366_6, var_366_7, var_366_4, var_366_5, arg_366_1.dmg or 60, var_366_10, "CosmicSovereignProjectile", {
		basicAttack = true,
		side = "enemy",
		state = "flight",
		owner = arg_366_1,
		flipX = var_366_0 == "attack"
	})

	return true
end

 __recovered_scope_0.var_0_508 = __recovered_scope_0.var_0_506
 __recovered_scope_0.var_0_509 = nil
 __recovered_scope_0.var_0_510 = {
	ringHitsUnit = function(arg_367_0, arg_367_1, arg_367_2, arg_367_3, arg_367_4)
		if not arg_367_0 or not arg_367_1 or not arg_367_2 or not arg_367_2.imageData or not arg_367_2.quads or not arg_367_2.bounds or not arg_367_1.colX or not arg_367_1.colY or not arg_367_1.colW or not arg_367_1.colH then
			return false
		end

		local var_367_0 = arg_367_1.anim and arg_367_1.anim.name or "idle"

		if not arg_367_2.quads[var_367_0] or not arg_367_2.bounds[var_367_0] then
			var_367_0 = "idle"
		end

		local var_367_1 = arg_367_2.animations and arg_367_2.animations[var_367_0] and arg_367_2.animations[var_367_0].frames or 1
		local var_367_2 = math.max(1, math.min(arg_367_1.anim and arg_367_1.anim.frame or 1, var_367_1))
		local var_367_3 = arg_367_2.quads[var_367_0] and arg_367_2.quads[var_367_0][var_367_2]
		local var_367_4 = arg_367_2.bounds[var_367_0] and arg_367_2.bounds[var_367_0][var_367_2]

		if not var_367_3 or not var_367_4 or not var_367_4.w or not var_367_4.h or not (var_367_4.w > 0) or not (var_367_4.h > 0) then
			return false
		end

		local var_367_5 = arg_367_1.colW / var_367_4.w
		local var_367_6 = arg_367_1.colH / var_367_4.h

		if var_367_5 <= 0 or var_367_6 <= 0 then
			return false
		end

		local var_367_7, var_367_8 = var_367_3:getViewport()
		local var_367_9 = arg_367_0.x or 0
		local var_367_10 = arg_367_0.y or 0
		local var_367_11 = arg_367_3 * arg_367_3
		local var_367_12 = arg_367_4 * arg_367_4
		local var_367_13 = math.max(math.floor(arg_367_1.colX), math.floor(var_367_9 - arg_367_4))
		local var_367_14 = math.max(math.floor(arg_367_1.colY), math.floor(var_367_10 - arg_367_4))
		local var_367_15 = math.min(math.ceil(arg_367_1.colX + arg_367_1.colW) - 1, math.ceil(var_367_9 + arg_367_4) - 1)
		local var_367_16 = math.min(math.ceil(arg_367_1.colY + arg_367_1.colH) - 1, math.ceil(var_367_10 + arg_367_4) - 1)

		for iter_367_0 = var_367_14, var_367_16 do
			local var_367_17 = iter_367_0 + 0.5

			for iter_367_1 = var_367_13, var_367_15 do
				local var_367_18 = iter_367_1 + 0.5
				local var_367_19 = var_367_18 - var_367_9
				local var_367_20 = var_367_17 - var_367_10
				local var_367_21 = var_367_19 * var_367_19 + var_367_20 * var_367_20

				if var_367_11 <= var_367_21 and var_367_21 <= var_367_12 then
					local var_367_22 = (var_367_18 - arg_367_1.colX) / var_367_5
					local var_367_23 = (var_367_17 - arg_367_1.colY) / var_367_6

					if var_367_22 >= 0 and var_367_22 < var_367_4.w and var_367_23 >= 0 and var_367_23 < var_367_4.h then
						if (arg_367_1.facing or 1) < 0 then
							var_367_22 = var_367_4.w - 1 - var_367_22
						end

						local var_367_24, var_367_25, var_367_26, var_367_27 = arg_367_2.imageData:getPixel(math.floor(var_367_7 + var_367_4.x + var_367_22), math.floor(var_367_8 + var_367_4.y + var_367_23))

						if var_367_27 and var_367_27 > 0 then
							return true
						end
					end
				end
			end
		end

		return false
	end
}

function __recovered_scope_0.var_0_510.updateSplash(arg_368_0, arg_368_1, arg_368_2, arg_368_3, arg_368_4, arg_368_5, arg_368_6, arg_368_7)
	local var_368_0 = arg_368_1._hitCount or 0
	local var_368_1 = arg_368_1.maxTargets or 2

	if var_368_1 <= var_368_0 then
		return
	end

	local var_368_2 = math.max(0, math.min(arg_368_6, arg_368_7) - 1.5)
	local var_368_3 = math.max(arg_368_6, arg_368_7) + 1.5
	local var_368_4 = {}

	for iter_368_0, iter_368_1 in ipairs(arg_368_2 or {}) do
		if iter_368_1 ~= arg_368_1.directTarget and (not arg_368_1.hitTargets or not arg_368_1.hitTargets[iter_368_1]) and arg_368_4(iter_368_1, arg_368_1.owner, arg_368_0) and __recovered_scope_0.var_0_510.ringHitsUnit(arg_368_1, iter_368_1, arg_368_3(iter_368_1), var_368_2, var_368_3) then
			local var_368_5 = (iter_368_1.colX or iter_368_1.x or 0) + (iter_368_1.colW or 0) * 0.5 - (arg_368_1.x or 0)
			local var_368_6 = (iter_368_1.colY or iter_368_1.y or 0) + (iter_368_1.colH or 0) * 0.5 - (arg_368_1.y or 0)

			var_368_4[#var_368_4 + 1] = {
				ally = iter_368_1,
				d2 = var_368_5 * var_368_5 + var_368_6 * var_368_6
			}
		end
	end

	table.sort(var_368_4, function(arg_369_0, arg_369_1)
		return arg_369_0.d2 < arg_369_1.d2
	end)

	arg_368_1.hitTargets = arg_368_1.hitTargets or {}

	for iter_368_2, iter_368_3 in ipairs(var_368_4) do
		if var_368_1 <= var_368_0 then
			break
		end

		local var_368_7 = iter_368_3.ally

		if not arg_368_1.hitTargets[var_368_7] and arg_368_4(var_368_7, arg_368_1.owner, arg_368_0) then
			arg_368_5(var_368_7, arg_368_1.dmg or 1, arg_368_1.owner, {
				area_damage = true,
				basicAttack = true
			})

			arg_368_1.hitTargets[var_368_7] = true
			var_368_0 = var_368_0 + 1
		end
	end

	arg_368_1._hitCount = var_368_0
end

 __recovered_scope_0.var_0_511 = __recovered_scope_0.var_0_510

return {
	orc_arch_shaman = __recovered_scope_0.var_0_511,
	cosmic_sovereign = __recovered_scope_0.var_0_508,
	star_judge = __recovered_scope_0.var_0_504,
	twin_star_lords = __recovered_scope_0.var_0_491,
	succubus = __recovered_scope_0.var_0_21,
	clawed_demon = __recovered_scope_0.var_0_41,
	high_demon = __recovered_scope_0.var_0_65,
	hell_warden = __recovered_scope_0.var_0_86,
	hell_enforcer = __recovered_scope_0.var_0_108,
	demon_lord = __recovered_scope_0.var_0_126,
	skeleton_dragon = __recovered_scope_0.var_0_164,
	doom_dragon = __recovered_scope_0.var_0_473,
	dark_lord = __recovered_scope_0.var_0_456,
	space_assassin = __recovered_scope_0.var_0_183,
	space_guardian = __recovered_scope_0.var_0_202,
	space_hunter = __recovered_scope_0.var_0_223,
	space_knight = __recovered_scope_0.var_0_255,
	space_cavalry = __recovered_scope_0.var_0_270,
	space_wizard = __recovered_scope_0.var_0_298,
	crescent_raider = __recovered_scope_0.var_0_325,
	crystal_guard = __recovered_scope_0.var_0_352,
	starlight_paladin = __recovered_scope_0.var_0_405,
	star_priestess = __recovered_scope_0.var_0_422,
	basic_attack_frames = __recovered_scope_0.var_0_479
}
