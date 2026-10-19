-- Recovered source: generated locals lifted into per-invocation tables.
local __recovered_scope_0 = {}
 __recovered_scope_0.var_0_0 = nil
 __recovered_scope_0.var_0_1 = {
	bodyDeltaX = function(arg_1_0, arg_1_1)
		local var_1_0 = arg_1_0 and arg_1_0._bodyColX and arg_1_0._bodyColW and arg_1_0._bodyColX + arg_1_0._bodyColW * 0.5 or arg_1_0 and arg_1_0.x or 0

		return (arg_1_1 and arg_1_1._bodyColX and arg_1_1._bodyColW and arg_1_1._bodyColX + arg_1_1._bodyColW * 0.5 or arg_1_1 and arg_1_1.x or 0) - var_1_0
	end,
	setPlacementSummon = function(arg_2_0, arg_2_1, arg_2_2)
		arg_2_0._placementSummons = arg_2_0._placementSummons or {}
		arg_2_0._placementSummons[arg_2_1] = arg_2_2
	end,
	placementUnits = function(arg_3_0)
		local var_3_0 = arg_3_0.rosterUnits or {}

		if arg_3_0.mode == "battle" or not next(arg_3_0._placementSummons or {}) then
			return var_3_0
		end

		local var_3_1 = {}
		local var_3_2 = {}

		for iter_3_0, iter_3_1 in ipairs(var_3_0) do
			var_3_1[#var_3_1 + 1] = iter_3_1
			var_3_2[iter_3_1] = true
		end

		local var_3_3 = {}

		for iter_3_2 in pairs(arg_3_0._placementSummons) do
			var_3_3[#var_3_3 + 1] = iter_3_2
		end

		table.sort(var_3_3)

		for iter_3_3, iter_3_4 in ipairs(var_3_3) do
			local var_3_4 = arg_3_0._placementSummons[iter_3_4]

			if var_3_4 and not var_3_2[var_3_4] and var_3_4.alive ~= false and not var_3_4.dying then
				var_3_1[#var_3_1 + 1] = var_3_4
				var_3_2[var_3_4] = true
			end
		end

		return var_3_1
	end
}
 __recovered_scope_0.var_0_2 = 5
 __recovered_scope_0.var_0_3 = 5
 __recovered_scope_0.var_0_4 = 0.6
 __recovered_scope_0.var_0_5 = 0.05
 __recovered_scope_0.var_0_6 = 2

 function __recovered_scope_0.var_0_7(arg_4_0)
	return arg_4_0 and (arg_4_0.isBoss == true or arg_4_0.isFinalBoss == true or arg_4_0.finalBoss == true)
end

 function __recovered_scope_0.var_0_8(arg_5_0)
	if not arg_5_0 or arg_5_0.alive == false or arg_5_0.dying or arg_5_0.isHusk or arg_5_0.isSoulSplit or arg_5_0._venomMawSwallowed or arg_5_0._marshDriveAir or arg_5_0._greatswordRiderMarshLeap or arg_5_0._starJudgeScaleAirborne or arg_5_0._collisionWindup or arg_5_0._collisionDrive or arg_5_0._collisionDrivePassenger or arg_5_0._spaceWizardExchangeMotion or arg_5_0._escapeCloakRetreat then
		return false
	end

	if arg_5_0._lizardGuardMarshSeeking == true and arg_5_0._stage4MarshActive ~= true then
		return false
	end

	local var_5_0 = arg_5_0._highDemonDrive

	if var_5_0 and var_5_0.airborne then
		return false
	end

	local var_5_1 = arg_5_0._clawedDemonLeap

	if var_5_1 and var_5_1.phase == "flight" then
		return false
	end

	local var_5_2 = arg_5_0._hellEnforcerExecution

	if var_5_2 and var_5_2.phase == "leap" then
		return false
	end

	return arg_5_0.hp == nil or (tonumber(arg_5_0.hp) or 0) > 0
end

 function __recovered_scope_0.var_0_9(arg_6_0)
	if not arg_6_0 then
		return nil
	end

	local var_6_0 = tonumber(arg_6_0.x) or 0
	local var_6_1 = tonumber(arg_6_0.y) or 0
	local var_6_2 = tonumber(arg_6_0._bodyColX or arg_6_0.colX)
	local var_6_3 = tonumber(arg_6_0._bodyColY or arg_6_0.colY)
	local var_6_4 = tonumber(arg_6_0._bodyColW or arg_6_0.colW)
	local var_6_5 = tonumber(arg_6_0._bodyColH or arg_6_0.colH)

	if not var_6_2 or not var_6_3 or not var_6_4 or not var_6_5 or var_6_4 <= 0 or var_6_5 <= 0 then
		return nil
	end

	return {
		offsetX = var_6_2 - var_6_0,
		offsetY = var_6_3 - var_6_1,
		width = var_6_4,
		height = var_6_5
	}
end

 function __recovered_scope_0.var_0_10(arg_7_0, arg_7_1)
	local var_7_0 = (tonumber(arg_7_0.x) or 0) + arg_7_1.offsetX
	local var_7_1 = (tonumber(arg_7_0.y) or 0) + arg_7_1.offsetY

	return var_7_0, var_7_1, var_7_0 + arg_7_1.width, var_7_1 + arg_7_1.height
end

 function __recovered_scope_0.var_0_11(arg_8_0, arg_8_1, arg_8_2)
	if tonumber(arg_8_1) then
		arg_8_0 = math.max(arg_8_1, arg_8_0)
	end

	if tonumber(arg_8_2) then
		arg_8_0 = math.min(arg_8_2, arg_8_0)
	end

	return arg_8_0
end

function __recovered_scope_0.var_0_1.isPassiveAnchored(arg_9_0, arg_9_1, arg_9_2)
	if not arg_9_0 then
		return false
	end

	if arg_9_0.isDecoyDummy or arg_9_0._anchoredStanceActive then
		return true
	end

	local var_9_0 = arg_9_0.anim and arg_9_0.anim.name or ""

	return not not arg_9_0._posLerp or arg_9_0._boneSpearPulls ~= nil or arg_9_0._boneSpearPullStep == true or (arg_9_0._ankleTrapT or 0) > 0 or (arg_9_0._gateNetT or 0) > 0 or arg_9_0._oathHelmStone ~= nil or arg_9_0.shotPending == true or arg_9_0._casting == true or arg_9_0._bossSkillBusy == true or arg_9_0._hellWitchSoulCasting or arg_9_0._hellEnforcerExecution or arg_9_0._hellEnforcerExecutionLock or (tonumber(arg_9_0._frostSpikeFreezeT) or 0) > 0 or var_9_0:match("^attack") ~= nil or var_9_0 == "throw" or var_9_0 == "shield" or arg_9_1 ~= nil and __recovered_scope_0.var_0_1.isCombatResting(arg_9_0) and arg_9_1 <= (arg_9_2 or 0)
end

function __recovered_scope_0.var_0_1.isCombatResting(arg_10_0)
	if not arg_10_0 or not arg_10_0.anim or arg_10_0.anim.name ~= "idle" then
		return false
	end

	local var_10_0 = arg_10_0.target

	return arg_10_0._meleeLoop == true or (tonumber(arg_10_0.coolTicks) or 0) > 0 or var_10_0 and var_10_0.alive and not var_10_0.dying
end

function __recovered_scope_0.var_0_1.passiveStep(arg_11_0, arg_11_1, arg_11_2, arg_11_3, arg_11_4, arg_11_5)
	if __recovered_scope_0.var_0_1.isPassiveAnchored(arg_11_0, arg_11_2, arg_11_3) then
		return 0
	end

	if not __recovered_scope_0.var_0_1.isCombatResting(arg_11_0) then
		return arg_11_1
	end

	local var_11_0 = arg_11_5[arg_11_0] or 0
	local var_11_1 = math.min(arg_11_1, math.max(0, arg_11_2 - arg_11_3), math.max(0, 2 * math.max(0, math.min(arg_11_4, 0.03333333333333333)) - var_11_0))

	arg_11_5[arg_11_0] = var_11_0 + var_11_1

	return var_11_1
end

 function __recovered_scope_0.var_0_12(arg_12_0, arg_12_1, arg_12_2, arg_12_3, arg_12_4)
	if not arg_12_0 or __recovered_scope_0.var_0_1.isPassiveAnchored(arg_12_0) or arg_12_2 <= 0 then
		return 0
	end

	local var_12_0 = tonumber(arg_12_0.x) or 0

	arg_12_0.x = __recovered_scope_0.var_0_11(var_12_0 + arg_12_1 * arg_12_2, arg_12_3, arg_12_4)

	return math.abs((tonumber(arg_12_0.x) or var_12_0) - var_12_0)
end

 function __recovered_scope_0.var_0_13(arg_13_0, arg_13_1, arg_13_2, arg_13_3, arg_13_4, arg_13_5, arg_13_6, arg_13_7, arg_13_8, arg_13_9, arg_13_10)
	arg_13_2 = __recovered_scope_0.var_0_1.passiveStep(arg_13_0, arg_13_2, arg_13_8, arg_13_9, arg_13_7, arg_13_10)

	if __recovered_scope_0.var_0_7(arg_13_0) then
		local var_13_0 = tonumber(arg_13_5[arg_13_0]) or 0

		arg_13_2 = math.min(arg_13_2, math.max(0, arg_13_6 - var_13_0))
	end

	local var_13_1 = __recovered_scope_0.var_0_12(arg_13_0, arg_13_1, arg_13_2, arg_13_3, arg_13_4)

	if __recovered_scope_0.var_0_7(arg_13_0) and var_13_1 > 0 then
		arg_13_5[arg_13_0] = (tonumber(arg_13_5[arg_13_0]) or 0) + var_13_1
	end

	return var_13_1
end

 function __recovered_scope_0.var_0_14(arg_14_0, arg_14_1, arg_14_2, arg_14_3, arg_14_4, arg_14_5, arg_14_6, arg_14_7, arg_14_8, arg_14_9, arg_14_10, arg_14_11, arg_14_12, arg_14_13, arg_14_14)
	if arg_14_5 < math.abs((tonumber(arg_14_0.y) or 0) - (tonumber(arg_14_1.y) or 0)) then
		return false
	end

	local var_14_0, var_14_1, var_14_2, var_14_3 = __recovered_scope_0.var_0_10(arg_14_0, arg_14_2)
	local var_14_4, var_14_5, var_14_6, var_14_7 = __recovered_scope_0.var_0_10(arg_14_1, arg_14_3)

	if math.min(var_14_3, var_14_7) - math.max(var_14_1, var_14_5) <= 0 then
		return false
	end

	local var_14_8 = math.min(var_14_2, var_14_6) - math.max(var_14_0, var_14_4) - arg_14_8

	if var_14_8 <= 0 then
		return false
	end

	local var_14_9 = math.max(0, math.min(arg_14_2.width, arg_14_3.width) * 0.5 - arg_14_8)
	local var_14_10 = __recovered_scope_0.var_0_1.isPassiveAnchored(arg_14_0, var_14_8, var_14_9)
	local var_14_11 = __recovered_scope_0.var_0_1.isPassiveAnchored(arg_14_1, var_14_8, var_14_9)

	if var_14_10 and var_14_11 then
		return false
	end

	local var_14_12 = (tonumber(arg_14_0.x) or 0) <= (tonumber(arg_14_1.x) or 0) and -1 or 1
	local var_14_13 = (arg_14_9 + var_14_8 * arg_14_10) * arg_14_4
	local var_14_14 = math.min(var_14_8, math.max(0, var_14_13))

	if var_14_14 <= 0 then
		return false
	end

	local var_14_15 = var_14_14 * 0.5
	local var_14_16 = var_14_14 * 0.5
	local var_14_17 = __recovered_scope_0.var_0_7(arg_14_0)

	if var_14_17 ~= __recovered_scope_0.var_0_7(arg_14_1) then
		if var_14_17 then
			var_14_15, var_14_16 = var_14_14 * arg_14_11, var_14_14 * (1 - arg_14_11)
		else
			var_14_15, var_14_16 = var_14_14 * (1 - arg_14_11), var_14_14 * arg_14_11
		end
	end

	if var_14_10 then
		var_14_15, var_14_16 = 0, var_14_14
	elseif var_14_11 then
		var_14_15, var_14_16 = var_14_14, 0
	end

	local var_14_18 = __recovered_scope_0.var_0_13(arg_14_0, var_14_12, var_14_15, arg_14_6, arg_14_7, arg_14_12, arg_14_13, arg_14_4, var_14_8, var_14_9, arg_14_14)
	local var_14_19 = __recovered_scope_0.var_0_13(arg_14_1, -var_14_12, var_14_16, arg_14_6, arg_14_7, arg_14_12, arg_14_13, arg_14_4, var_14_8, var_14_9, arg_14_14)
	local var_14_20 = var_14_14 - var_14_18 - var_14_19

	if var_14_20 > 0.0001 then
		local var_14_21 = var_14_14 - (var_14_18 + __recovered_scope_0.var_0_13(arg_14_0, var_14_12, var_14_20, arg_14_6, arg_14_7, arg_14_12, arg_14_13, arg_14_4, var_14_8, var_14_9, arg_14_14)) - var_14_19

		if var_14_21 > 0.0001 then
			__recovered_scope_0.var_0_13(arg_14_1, -var_14_12, var_14_21, arg_14_6, arg_14_7, arg_14_12, arg_14_13, arg_14_4, var_14_8, var_14_9, arg_14_14)
		end
	end

	return true
end

function __recovered_scope_0.var_0_1.apply(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4, arg_15_5)
	if not arg_15_0 then
		return 0
	end

	local var_15_0 = arg_15_0.allies or {}
	local var_15_1 = arg_15_0.enemies or {}

	if #var_15_0 == 0 or #var_15_1 == 0 then
		return 0
	end

	local var_15_2 = arg_15_0.ui and arg_15_0.ui.battle and arg_15_0.ui.battle.combatSeparation or {}

	if var_15_2.enabled == false then
		return 0
	end

	local var_15_3 = math.max(0, tonumber(var_15_2.allowedOverlap) or __recovered_scope_0.var_0_2)
	local var_15_4 = math.max(0, tonumber(var_15_2.baseSpeed) or __recovered_scope_0.var_0_3)
	local var_15_5 = math.max(0, tonumber(var_15_2.penetrationGain) or __recovered_scope_0.var_0_4)
	local var_15_6 = math.max(0, math.min(0.5, tonumber(var_15_2.bossShare) or __recovered_scope_0.var_0_5))
	local var_15_7 = math.max(0, tonumber(var_15_2.bossMaxSpeed) or __recovered_scope_0.var_0_6)
	local var_15_8 = math.max(0, math.min(tonumber(arg_15_1) or 0, 0.03333333333333333))
	local var_15_9 = math.max(1, tonumber(arg_15_2) or 22)

	if var_15_8 <= 0 then
		return 0
	end

	local var_15_10 = {}
	local var_15_11 = {}

	for iter_15_0, iter_15_1 in ipairs(var_15_0) do
		if __recovered_scope_0.var_0_8(iter_15_1) then
			var_15_10[iter_15_0] = __recovered_scope_0.var_0_9(iter_15_1)
		end
	end

	for iter_15_2, iter_15_3 in ipairs(var_15_1) do
		if __recovered_scope_0.var_0_8(iter_15_3) then
			var_15_11[iter_15_2] = __recovered_scope_0.var_0_9(iter_15_3)
		end
	end

	local var_15_12 = 0

	arg_15_5 = arg_15_5 or {}

	local var_15_13 = {}
	local var_15_14 = var_15_7 * var_15_8

	for iter_15_4, iter_15_5 in ipairs(var_15_0) do
		if __recovered_scope_0.var_0_8(iter_15_5) then
			local var_15_15 = var_15_10[iter_15_4]

			if var_15_15 then
				for iter_15_6, iter_15_7 in ipairs(var_15_1) do
					if __recovered_scope_0.var_0_8(iter_15_7) then
						local var_15_16 = var_15_11[iter_15_6]

						if var_15_16 and __recovered_scope_0.var_0_14(iter_15_5, iter_15_7, var_15_15, var_15_16, var_15_8, var_15_9, arg_15_3, arg_15_4, var_15_3, var_15_4, var_15_5, var_15_6, var_15_13, var_15_14, arg_15_5) then
							var_15_12 = var_15_12 + 1
						end
					end
				end
			end
		end
	end

	return var_15_12
end

__recovered_scope_0.var_0_1.constants = {
	ALLOWED_OVERLAP = __recovered_scope_0.var_0_2,
	BASE_SPEED = __recovered_scope_0.var_0_3,
	PENETRATION_GAIN = __recovered_scope_0.var_0_4,
	BOSS_SHARE = __recovered_scope_0.var_0_5,
	BOSS_MAX_SPEED = __recovered_scope_0.var_0_6
}

 __recovered_scope_0.var_0_15 = __recovered_scope_0.var_0_1
 __recovered_scope_0.var_0_16 = nil
 __recovered_scope_0.var_0_17 = {}
 __recovered_scope_0.var_0_18 = 191
 __recovered_scope_0.var_0_19 = 130
 __recovered_scope_0.var_0_20 = 101
 __recovered_scope_0.var_0_21 = 108
 __recovered_scope_0.var_0_22 = nil
 __recovered_scope_0.var_0_23 = {
	["Lizard Shaman"] = true,
	["Cackle Shaman"] = true,
	["Rascal Imp"] = true,
	["Ember Imp"] = true,
	["Gnoll Archer"] = true,
	Gazer = true,
	Observer = true,
	["Cave Basilisk"] = true,
	Firebreather = true,
	["Lizard Hunter"] = true,
	["Orc Berserker"] = true,
	["Orc Axe Raider"] = true,
	["Venom Maw"] = true,
	["Hell Witch"] = true,
	Succubus = true,
	["Orc Arch Shaman"] = true,
	["Eye Warlock"] = true,
	Beholder = true,
	["Razorscale Elder"] = true,
	["Dragonkin Shaman"] = true
}

 function __recovered_scope_0.var_0_24(arg_16_0)
	return math.max(1, math.floor(tonumber(arg_16_0 and (arg_16_0.stage or arg_16_0.currentStage or arg_16_0.selectedStage) or 1) or 1))
end

 function __recovered_scope_0.var_0_25(arg_17_0)
	if not arg_17_0 then
		return false
	end

	if arg_17_0.flying == true or arg_17_0.isFlying == true or arg_17_0.airborne == true or arg_17_0._airborne == true then
		return true
	end

	if arg_17_0._marshDriveAir or arg_17_0._greatswordRiderMarshLeap or arg_17_0._spaceCavalryGravityJump or arg_17_0._spaceWizardExchangeMotion then
		return true
	end

	local var_17_0 = arg_17_0._highDemonDrive

	if var_17_0 and var_17_0.airborne then
		return true
	end

	local var_17_1 = arg_17_0._clawedDemonLeap

	if var_17_1 and var_17_1.phase == "flight" then
		return true
	end

	local var_17_2 = arg_17_0._hellEnforcerExecution

	return var_17_2 and var_17_2.phase == "leap" or false
end

 function __recovered_scope_0.var_0_26()
	if __recovered_scope_0.var_0_22 then
		return __recovered_scope_0.var_0_22
	end

	local var_18_0 = __recovered_scope_0.var_0_18
	local var_18_1 = __recovered_scope_0.var_0_19
	local var_18_2 = {}
	local var_18_3 = {}
	local var_18_4 = {}

	for iter_18_0 = __recovered_scope_0.var_0_20, __recovered_scope_0.var_0_21 - 1 do
		for iter_18_1 = 0, var_18_0 - 1 do
			var_18_2[iter_18_0 * var_18_0 + iter_18_1 + 1] = true
		end
	end

	for iter_18_2 = 1, var_18_0 do
		var_18_3[iter_18_2] = __recovered_scope_0.var_0_20
		var_18_4[iter_18_2] = __recovered_scope_0.var_0_21 - 1
	end

	__recovered_scope_0.var_0_22 = {
		width = var_18_0,
		height = var_18_1,
		opaque = var_18_2,
		columnMin = var_18_3,
		columnMax = var_18_4
	}

	return __recovered_scope_0.var_0_22
end

 function __recovered_scope_0.var_0_27(arg_19_0, arg_19_1, arg_19_2, arg_19_3)
	if not arg_19_0 or not arg_19_1 or not tonumber(arg_19_1.w) or not tonumber(arg_19_1.h) or arg_19_1.w <= 0 or arg_19_1.h <= 0 then
		return nil, nil
	end

	return ((tonumber(arg_19_2) or 0) - (tonumber(arg_19_1.x) or 0)) * arg_19_0.width / arg_19_1.w, ((tonumber(arg_19_3) or 0) - (tonumber(arg_19_1.y) or 0)) * arg_19_0.height / arg_19_1.h
end

 function __recovered_scope_0.var_0_28(arg_20_0, arg_20_1, arg_20_2)
	local var_20_0 = math.floor(tonumber(arg_20_1) or -1)
	local var_20_1 = math.floor(tonumber(arg_20_2) or -1)

	if var_20_0 < 0 or var_20_1 < 0 or var_20_0 >= arg_20_0.width or var_20_1 >= arg_20_0.height then
		return false
	end

	return arg_20_0.opaque[var_20_1 * arg_20_0.width + var_20_0 + 1] == true
end

 function __recovered_scope_0.var_0_29(arg_21_0, arg_21_1, arg_21_2, arg_21_3)
	local var_21_0, var_21_1 = __recovered_scope_0.var_0_27(arg_21_0, arg_21_1, arg_21_2, arg_21_3)

	if not var_21_0 then
		return false
	end

	return __recovered_scope_0.var_0_28(arg_21_0, var_21_0, var_21_1)
end

 function __recovered_scope_0.var_0_30(arg_22_0, arg_22_1, arg_22_2, arg_22_3, arg_22_4, arg_22_5)
	local var_22_0, var_22_1 = __recovered_scope_0.var_0_27(arg_22_0, arg_22_1, arg_22_2, arg_22_3)
	local var_22_2, var_22_3 = __recovered_scope_0.var_0_27(arg_22_0, arg_22_1, arg_22_4, arg_22_5)

	if not var_22_0 or not var_22_2 then
		return false, 1
	end

	local var_22_4 = math.max(math.abs(var_22_2 - var_22_0), math.abs(var_22_3 - var_22_1))
	local var_22_5 = math.max(1, math.ceil(var_22_4 * 2))
	local var_22_6 = 0

	for iter_22_0 = 1, var_22_5 do
		local var_22_7 = iter_22_0 / var_22_5
		local var_22_8 = arg_22_2 + (arg_22_4 - arg_22_2) * var_22_7
		local var_22_9 = arg_22_3 + (arg_22_5 - arg_22_3) * var_22_7

		if __recovered_scope_0.var_0_29(arg_22_0, arg_22_1, var_22_8, var_22_9) then
			return true, var_22_6
		end

		var_22_6 = var_22_7
	end

	return false, 1
end

 function __recovered_scope_0.var_0_31(arg_23_0)
	arg_23_0._stage6RiftSafeX = nil
	arg_23_0._stage6RiftSafeY = nil
	arg_23_0._stage6RiftSlideSign = nil
end

 function __recovered_scope_0.var_0_32(arg_24_0, arg_24_1, arg_24_2)
	local var_24_0 = tonumber(arg_24_1.x) or 0
	local var_24_1 = tonumber(arg_24_1.y) or 0
	local var_24_2 = arg_24_0.entityMarshFootPoint or arg_24_0.entityFootPoint

	if type(var_24_2) ~= "function" then
		return 0, 0
	end

	local var_24_3, var_24_4 = var_24_2(arg_24_0, arg_24_1, arg_24_2)

	return (tonumber(var_24_3) or var_24_0) - var_24_0, (tonumber(var_24_4) or var_24_1) - var_24_1
end

 function __recovered_scope_0.var_0_33(arg_25_0, arg_25_1, arg_25_2)
	local var_25_0 = math.max(0, math.min(arg_25_0.width - 1, math.floor(tonumber(arg_25_1) or 0)))
	local var_25_1 = math.max(0, math.min(arg_25_0.height - 1, math.floor(tonumber(arg_25_2) or 0)))
	local var_25_2
	local var_25_3
	local var_25_4

	for iter_25_0 = 0, arg_25_0.height - 1 do
		for iter_25_1 = 0, arg_25_0.width - 1 do
			if not __recovered_scope_0.var_0_28(arg_25_0, iter_25_1, iter_25_0) then
				local var_25_5 = iter_25_1 - var_25_0
				local var_25_6 = iter_25_0 - var_25_1
				local var_25_7 = var_25_5 * var_25_5 + var_25_6 * var_25_6

				if var_25_4 == nil or var_25_7 < var_25_4 then
					var_25_2, var_25_3, var_25_4 = iter_25_1, iter_25_0, var_25_7
				end
			end
		end
	end

	return var_25_2, var_25_3
end

 function __recovered_scope_0.var_0_34(arg_26_0, arg_26_1, arg_26_2, arg_26_3, arg_26_4, arg_26_5, arg_26_6)
	arg_26_0.x = (tonumber(arg_26_2.x) or 0) + (arg_26_3 + 0.5) * arg_26_2.w / arg_26_1.width - arg_26_5
	arg_26_0.y = (tonumber(arg_26_2.y) or 0) + (arg_26_4 + 0.5) * arg_26_2.h / arg_26_1.height - arg_26_6
end

function __recovered_scope_0.var_0_17.blocksWorldPoint(arg_27_0, arg_27_1, arg_27_2)
	if __recovered_scope_0.var_0_24(arg_27_0) ~= 6 then
		return false
	end

	local var_27_0 = __recovered_scope_0.var_0_26(arg_27_0)
	local var_27_1 = arg_27_0 and arg_27_0.area

	return var_27_0 and var_27_1 and __recovered_scope_0.var_0_29(var_27_0, var_27_1, arg_27_1, arg_27_2) or false
end

function __recovered_scope_0.var_0_17.blockedRect(arg_28_0, arg_28_1)
	if __recovered_scope_0.var_0_24(arg_28_0) ~= 6 then
		return nil
	end

	local var_28_0 = arg_28_1 or arg_28_0 and arg_28_0.area

	if not var_28_0 or not tonumber(var_28_0.w) or not tonumber(var_28_0.h) or not (var_28_0.w > 0) or not (var_28_0.h > 0) then
		return nil
	end

	return {
		x = tonumber(var_28_0.x) or 0,
		y = (tonumber(var_28_0.y) or 0) + var_28_0.h * __recovered_scope_0.var_0_20 / __recovered_scope_0.var_0_19,
		w = var_28_0.w,
		h = var_28_0.h * (__recovered_scope_0.var_0_21 - __recovered_scope_0.var_0_20) / __recovered_scope_0.var_0_19
	}
end

 function __recovered_scope_0.var_0_35(arg_29_0, arg_29_1, arg_29_2, arg_29_3)
	local var_29_0, var_29_1 = __recovered_scope_0.var_0_27(arg_29_0, arg_29_1, arg_29_2, arg_29_3)

	if not var_29_0 then
		return nil
	end

	local var_29_2 = math.max(0, math.min(arg_29_0.width - 1, math.floor(var_29_0)))
	local var_29_3 = arg_29_0.columnMin[var_29_2 + 1]
	local var_29_4 = arg_29_0.columnMax[var_29_2 + 1]

	if var_29_3 == nil then
		for iter_29_0 = 1, arg_29_0.width - 1 do
			local var_29_5 = var_29_2 - iter_29_0
			local var_29_6 = var_29_2 + iter_29_0

			if var_29_5 >= 0 and arg_29_0.columnMin[var_29_5 + 1] ~= nil then
				var_29_3, var_29_4 = arg_29_0.columnMin[var_29_5 + 1], arg_29_0.columnMax[var_29_5 + 1]

				break
			end

			if var_29_6 < arg_29_0.width and arg_29_0.columnMin[var_29_6 + 1] ~= nil then
				var_29_3, var_29_4 = arg_29_0.columnMin[var_29_6 + 1], arg_29_0.columnMax[var_29_6 + 1]

				break
			end
		end
	end

	if var_29_3 == nil then
		return nil
	end

	return var_29_1 <= (var_29_3 + var_29_4 + 1) * 0.5 and -1 or 1
end

 function __recovered_scope_0.var_0_36(arg_30_0)
	if not arg_30_0 then
		return false
	end

	if arg_30_0.ranged == true or arg_30_0.isRanged == true or arg_30_0.attackType == "ranged" then
		return true
	end

	local var_30_0 = tostring(arg_30_0.role or "")

	if var_30_0 == "archer" or var_30_0 == "mage" then
		return true
	end

	if __recovered_scope_0.var_0_23[tostring(arg_30_0.kind or "")] or __recovered_scope_0.var_0_23[tostring(arg_30_0.skin or "")] then
		return true
	end

	return (tonumber(arg_30_0.distance) or 0) >= 70
end

function __recovered_scope_0.var_0_17.entityLane(arg_31_0, arg_31_1, arg_31_2)
	if __recovered_scope_0.var_0_24(arg_31_0) ~= 6 or not arg_31_1 then
		return nil
	end

	local var_31_0 = __recovered_scope_0.var_0_26(arg_31_0)
	local var_31_1 = arg_31_0 and arg_31_0.area

	if not var_31_0 or not var_31_1 then
		return nil
	end

	local var_31_2, var_31_3 = __recovered_scope_0.var_0_32(arg_31_0, arg_31_1, arg_31_2)

	return __recovered_scope_0.var_0_35(var_31_0, var_31_1, (tonumber(arg_31_1.x) or 0) + var_31_2, (tonumber(arg_31_1.y) or 0) + var_31_3)
end

 function __recovered_scope_0.var_0_37(arg_32_0, arg_32_1, arg_32_2, arg_32_3)
	for iter_32_0, iter_32_1 in ipairs(arg_32_2 or {}) do
		local var_32_0 = iter_32_1 and iter_32_1[1]
		local var_32_1 = math.max(0, math.floor(tonumber(iter_32_1 and iter_32_1[2]) or 0))

		for iter_32_2 = 1, var_32_1 do
			arg_32_0[#arg_32_0 + 1] = var_32_0
			arg_32_1[#arg_32_1 + 1] = arg_32_3
		end
	end
end

function __recovered_scope_0.var_0_17.makeWaveLayout(arg_33_0, arg_33_1, arg_33_2)
	local var_33_0 = {}
	local var_33_1 = {}
	local var_33_2 = arg_33_2 and "lower" or "upper"
	local var_33_3 = arg_33_2 and "upper" or "lower"

	__recovered_scope_0.var_0_37(var_33_0, var_33_1, arg_33_0, var_33_2)
	__recovered_scope_0.var_0_37(var_33_0, var_33_1, arg_33_1, var_33_3)

	var_33_0._stage6Lanes = var_33_1
	var_33_0._stage6Mirrored = arg_33_2 == true

	return var_33_0
end

function __recovered_scope_0.var_0_17.forceWaveLayoutLane(arg_34_0, arg_34_1)
	if type(arg_34_0) ~= "table" or arg_34_1 ~= "upper" and arg_34_1 ~= "lower" then
		return arg_34_0
	end

	arg_34_0._stage6Lanes = arg_34_0._stage6Lanes or {}

	for iter_34_0 = 1, #arg_34_0 do
		arg_34_0._stage6Lanes[iter_34_0] = arg_34_1
	end

	return arg_34_0
end

function __recovered_scope_0.var_0_17.majorityPlayerLane(arg_35_0)
	if __recovered_scope_0.var_0_24(arg_35_0) ~= 6 then
		return nil, 0, 0, 0
	end

	local var_35_0 = arg_35_0 and arg_35_0.allies or nil
	local var_35_1 = var_35_0 and #var_35_0 > 0 and var_35_0 or arg_35_0 and arg_35_0.rosterUnits or {}
	local var_35_2 = 0
	local var_35_3 = 0

	for iter_35_0, iter_35_1 in ipairs(var_35_1) do
		local var_35_4 = iter_35_1 and iter_35_1.sym
		local var_35_5 = iter_35_1 and (iter_35_1.isShadowMinion == true or type(var_35_4) == "string" and var_35_4:find("ENEMY_", 1, true) == 1)

		if iter_35_1 and iter_35_1.dying ~= true and iter_35_1.alive ~= false and (tonumber(iter_35_1.hp) or 1) > 0 and not var_35_5 then
			local var_35_6 = __recovered_scope_0.var_0_17.entityLane(arg_35_0, iter_35_1)

			if var_35_6 == -1 then
				var_35_2 = var_35_2 + 1
			elseif var_35_6 == 1 then
				var_35_3 = var_35_3 + 1
			end
		end
	end

	local var_35_7 = var_35_2 + var_35_3

	if var_35_3 < var_35_2 then
		return "upper", var_35_7, var_35_2, var_35_3
	elseif var_35_2 < var_35_3 then
		return "lower", var_35_7, var_35_2, var_35_3
	end

	return nil, var_35_7, var_35_2, var_35_3
end

function __recovered_scope_0.var_0_17.placeEntityInLane(arg_36_0, arg_36_1, arg_36_2, arg_36_3, arg_36_4, arg_36_5)
	if __recovered_scope_0.var_0_24(arg_36_0) ~= 6 or not arg_36_1 then
		return false
	end

	if arg_36_2 ~= "upper" and arg_36_2 ~= "lower" and arg_36_2 ~= "center" then
		return false
	end

	local var_36_0 = __recovered_scope_0.var_0_26(arg_36_0)
	local var_36_1 = arg_36_0 and arg_36_0.area

	if not var_36_0 or not var_36_1 then
		return false
	end

	local var_36_2, var_36_3 = __recovered_scope_0.var_0_32(arg_36_0, arg_36_1, arg_36_3)
	local var_36_4 = (tonumber(var_36_1.y) or 0) + var_36_1.h * __recovered_scope_0.var_0_20 / var_36_0.height
	local var_36_5 = (tonumber(var_36_1.y) or 0) + var_36_1.h * __recovered_scope_0.var_0_21 / var_36_0.height
	local var_36_6 = tonumber(arg_36_4) or tonumber(var_36_1.y) or 0
	local var_36_7 = tonumber(arg_36_5) or (tonumber(var_36_1.y) or 0) + var_36_1.h

	if arg_36_2 == "center" then
		local var_36_8 = (var_36_4 + var_36_5) * 0.5

		if arg_36_1.starJudgeProjectile or arg_36_1.riftCenterLane then
			var_36_8 = math.min(var_36_8 + 2, var_36_5)
		end

		arg_36_1.y = var_36_8 - var_36_3
		arg_36_1._stage6CrossLane = true
	else
		local var_36_9 = var_36_6
		local var_36_10 = var_36_7

		if arg_36_2 == "upper" then
			var_36_10 = math.min(var_36_10, var_36_4 - var_36_3 - 1)
		else
			var_36_9 = math.max(var_36_9, var_36_5 - var_36_3 + 1)
		end

		if var_36_10 < var_36_9 then
			arg_36_1.y = math.max(var_36_6, math.min(var_36_7, (var_36_9 + var_36_10) * 0.5))
		else
			local var_36_11 = 0.2 + ((love and love.math and love.math.random or math.random)() or 0.5) * 0.6

			arg_36_1.y = var_36_9 + (var_36_10 - var_36_9) * var_36_11
		end

		arg_36_1._stage6CrossLane = nil
	end

	arg_36_1._stage6WaveLane = arg_36_2

	if arg_36_1.baseY ~= nil then
		arg_36_1.baseY = arg_36_1.y
	end

	return true
end

function __recovered_scope_0.var_0_17.hoverLift(arg_37_0, arg_37_1)
	local var_37_0 = tonumber(arg_37_0 and arg_37_0.hoverHeight) or 0

	if var_37_0 <= 0 then
		return 0
	end

	local var_37_1 = math.max(0, math.min(var_37_0, tonumber(arg_37_0.hoverBobAmplitude) or 0))
	local var_37_2 = math.max(0, tonumber(arg_37_0.hoverBobSpeed) or 2.4)
	local var_37_3 = var_37_0 + var_37_1 * math.sin((tonumber(arg_37_0.spawnT) or 0) * var_37_2)

	if arg_37_1 then
		return math.floor(var_37_3 * arg_37_1 + 0.5)
	end

	return var_37_3
end

function __recovered_scope_0.var_0_17.enforceCenterLane(arg_38_0, arg_38_1, arg_38_2)
	if not arg_38_0 or not arg_38_1 or not arg_38_1.starJudgeProjectile and not arg_38_1.riftCenterLane or __recovered_scope_0.var_0_24(arg_38_0) ~= 6 then
		return false
	end

	if not __recovered_scope_0.var_0_17.placeEntityInLane(arg_38_0, arg_38_1, "center", arg_38_2) then
		return false
	end

	if arg_38_1._kb then
		arg_38_1._kb.vy = 0
	end

	return true
end

 function __recovered_scope_0.var_0_38(arg_39_0)
	return arg_39_0 and arg_39_0.isCrystalGuardWall == true and arg_39_0.alive == true and arg_39_0.dying ~= true and (tonumber(arg_39_0.hp) or 0) > 0
end

function __recovered_scope_0.var_0_17.findProtectingCrystalWall(arg_40_0, arg_40_1)
	if __recovered_scope_0.var_0_24(arg_40_0) ~= 6 or not arg_40_1 or arg_40_1.side ~= "enemy" or arg_40_1.isCrystalGuardWall == true then
		return nil
	end

	local var_40_0 = __recovered_scope_0.var_0_17.entityLane(arg_40_0, arg_40_1)

	if var_40_0 == nil then
		return nil
	end

	local var_40_1
	local var_40_2

	for iter_40_0, iter_40_1 in ipairs(arg_40_0 and arg_40_0.enemies or {}) do
		if __recovered_scope_0.var_0_38(iter_40_1) and __recovered_scope_0.var_0_17.entityLane(arg_40_0, iter_40_1) == var_40_0 and not require("src.game.unit_abilities").dimensional_duel.separated(arg_40_0, iter_40_1, arg_40_1) then
			local var_40_3 = (tonumber(iter_40_1._crystalGuardFrontDirection) or -1) >= 0 and 1 or -1

			if arg_40_1 == iter_40_1._crystalGuardOwner or ((tonumber(arg_40_1.x) or 0) - (tonumber(iter_40_1.x) or 0)) * var_40_3 <= -2 then
				local var_40_4 = math.abs((tonumber(arg_40_1.x) or 0) - (tonumber(iter_40_1.x) or 0))

				if var_40_2 == nil or var_40_4 < var_40_2 then
					var_40_1, var_40_2 = iter_40_1, var_40_4
				end
			end
		end
	end

	return var_40_1
end

function __recovered_scope_0.var_0_17.targetAllowed(arg_41_0, arg_41_1, arg_41_2)
	if not require("src.game.combat").enemy_entry.canBeTargeted(arg_41_0, arg_41_2) then
		return false
	end

	if arg_41_2 and arg_41_2._starJudgeScaleAirborne and not require("src.game.enemy_skills").star_judge.canBeTargeted(arg_41_2, arg_41_1) then
		return false
	end

	if arg_41_1 and arg_41_2 and (arg_41_1._dimensionalDuel or arg_41_2._dimensionalDuel or arg_41_1._skyborne or arg_41_2._skyborne) and require("src.game.unit_abilities").dimensional_duel.separated(arg_41_0, arg_41_1, arg_41_2) then
		return false
	end

	if __recovered_scope_0.var_0_24(arg_41_0) ~= 6 or not arg_41_1 or not arg_41_2 then
		return true
	end

	if arg_41_1.side == "ally" and arg_41_2.side == "enemy" and __recovered_scope_0.var_0_17.findProtectingCrystalWall(arg_41_0, arg_41_2) then
		return false
	end

	if arg_41_1._stage6CrossLane == true or arg_41_2._stage6CrossLane == true then
		return true
	end

	if arg_41_1.side == "enemy" and arg_41_2.side == "ally" then
		local var_41_0 = __recovered_scope_0.var_0_17.entityLane(arg_41_0, arg_41_1)
		local var_41_1 = __recovered_scope_0.var_0_17.entityLane(arg_41_0, arg_41_2)

		return var_41_0 == nil or var_41_1 == nil or var_41_0 == var_41_1
	end

	if __recovered_scope_0.var_0_25(arg_41_1) or __recovered_scope_0.var_0_36(arg_41_1) then
		return true
	end

	local var_41_2 = __recovered_scope_0.var_0_17.entityLane(arg_41_0, arg_41_1)
	local var_41_3 = __recovered_scope_0.var_0_17.entityLane(arg_41_0, arg_41_2)

	return var_41_2 == nil or var_41_3 == nil or var_41_2 == var_41_3
end

function __recovered_scope_0.var_0_17.clampGroundPointToLane(arg_42_0, arg_42_1, arg_42_2, arg_42_3)
	local var_42_0 = arg_42_0 and arg_42_0.area

	if __recovered_scope_0.var_0_24(arg_42_0) ~= 6 or not arg_42_1 or not var_42_0 or not tonumber(var_42_0.h) or not (var_42_0.h > 0) then
		return arg_42_2, arg_42_3
	end

	local var_42_1 = arg_42_1 < 0 and __recovered_scope_0.var_0_20 - 0.5 or __recovered_scope_0.var_0_21 + 0.5
	local var_42_2 = (tonumber(var_42_0.y) or 0) + var_42_1 * var_42_0.h / __recovered_scope_0.var_0_19

	return arg_42_2, arg_42_1 < 0 and math.min(arg_42_3, var_42_2) or math.max(arg_42_3, var_42_2)
end

function __recovered_scope_0.var_0_17.clampDestinationToLane(arg_43_0, arg_43_1, arg_43_2, arg_43_3, arg_43_4)
	if __recovered_scope_0.var_0_24(arg_43_0) ~= 6 or not arg_43_1 or arg_43_1._stage6CrossLane == true then
		return arg_43_2, arg_43_3
	end

	local var_43_0 = __recovered_scope_0.var_0_17.entityLane(arg_43_0, arg_43_1, arg_43_4)
	local var_43_1 = arg_43_0 and arg_43_0.area

	if not var_43_0 or not var_43_1 or not tonumber(var_43_1.h) or not (var_43_1.h > 0) then
		return arg_43_2, arg_43_3
	end

	local var_43_2, var_43_3 = __recovered_scope_0.var_0_32(arg_43_0, arg_43_1, arg_43_4)
	local var_43_4 = var_43_0 < 0 and __recovered_scope_0.var_0_20 - 0.5 or __recovered_scope_0.var_0_21 + 0.5
	local var_43_5 = (tonumber(var_43_1.y) or 0) + var_43_4 * var_43_1.h / __recovered_scope_0.var_0_19 - var_43_3

	return arg_43_2, var_43_0 < 0 and math.min(arg_43_3, var_43_5) or math.max(arg_43_3, var_43_5)
end

function __recovered_scope_0.var_0_17.adjustRangedChaseVector(arg_44_0, arg_44_1, arg_44_2, arg_44_3, arg_44_4, arg_44_5)
	local var_44_0 = tonumber(arg_44_3) or 0
	local var_44_1 = tonumber(arg_44_4) or 0

	if arg_44_1 and (arg_44_1.starJudgeProjectile or arg_44_1.riftCenterLane) and __recovered_scope_0.var_0_24(arg_44_0) == 6 then
		return var_44_0, 0
	end

	if arg_44_5 ~= true or __recovered_scope_0.var_0_24(arg_44_0) ~= 6 or not arg_44_1 or not arg_44_2 or __recovered_scope_0.var_0_25(arg_44_1) or arg_44_1._stage6CrossLane == true then
		return var_44_0, var_44_1
	end

	local var_44_2 = __recovered_scope_0.var_0_17.entityLane(arg_44_0, arg_44_1)
	local var_44_3 = __recovered_scope_0.var_0_17.entityLane(arg_44_0, arg_44_2)

	if var_44_2 ~= nil and var_44_3 ~= nil and (var_44_2 ~= var_44_3 or arg_44_2._stage6CrossLane == true) then
		local var_44_4 = arg_44_0 and arg_44_0.area
		local var_44_5 = __recovered_scope_0.var_0_26(arg_44_0)

		if var_44_4 and var_44_5 and tonumber(var_44_4.h) and var_44_4.h > 0 then
			local var_44_6, var_44_7 = __recovered_scope_0.var_0_32(arg_44_0, arg_44_1)
			local var_44_8 = var_44_2 < 0 and __recovered_scope_0.var_0_20 - 0.5 or __recovered_scope_0.var_0_21 + 0.5
			local var_44_9 = (tonumber(var_44_4.y) or 0) + var_44_8 * var_44_4.h / var_44_5.height - var_44_7

			return var_44_0, var_44_9 - (tonumber(arg_44_1.y) or 0)
		end
	end

	return var_44_0, var_44_1
end

function __recovered_scope_0.var_0_17.entityStandingOnRift(arg_45_0, arg_45_1, arg_45_2)
	if __recovered_scope_0.var_0_24(arg_45_0) ~= 6 or not arg_45_1 or __recovered_scope_0.var_0_25(arg_45_1) or arg_45_1._stage6CrossLane == true then
		return false
	end

	local var_45_0 = __recovered_scope_0.var_0_26(arg_45_0)
	local var_45_1 = arg_45_0 and arg_45_0.area

	if not var_45_0 or not var_45_1 then
		return false
	end

	local var_45_2, var_45_3 = __recovered_scope_0.var_0_32(arg_45_0, arg_45_1, arg_45_2)

	return __recovered_scope_0.var_0_29(var_45_0, var_45_1, (tonumber(arg_45_1.x) or 0) + var_45_2, (tonumber(arg_45_1.y) or 0) + var_45_3)
end

function __recovered_scope_0.var_0_17.resolvePlacement(arg_46_0, arg_46_1, arg_46_2)
	if not __recovered_scope_0.var_0_17.entityStandingOnRift(arg_46_0, arg_46_1, arg_46_2) then
		return false
	end

	local var_46_0 = __recovered_scope_0.var_0_26(arg_46_0)
	local var_46_1 = arg_46_0.area
	local var_46_2, var_46_3 = __recovered_scope_0.var_0_32(arg_46_0, arg_46_1, arg_46_2)
	local var_46_4 = tonumber(arg_46_1._stage6RiftPlacementSafeX)
	local var_46_5 = tonumber(arg_46_1._stage6RiftPlacementSafeY)

	if var_46_4 and var_46_5 and not __recovered_scope_0.var_0_29(var_46_0, var_46_1, var_46_4 + var_46_2, var_46_5 + var_46_3) then
		arg_46_1.x, arg_46_1.y = var_46_4, var_46_5
	else
		local var_46_6, var_46_7 = __recovered_scope_0.var_0_27(var_46_0, var_46_1, (tonumber(arg_46_1.x) or 0) + var_46_2, (tonumber(arg_46_1.y) or 0) + var_46_3)
		local var_46_8, var_46_9 = __recovered_scope_0.var_0_33(var_46_0, var_46_6, var_46_7)

		if var_46_8 then
			__recovered_scope_0.var_0_34(arg_46_1, var_46_0, var_46_1, var_46_8, var_46_9, var_46_2, var_46_3)
		end
	end

	return true
end

function __recovered_scope_0.var_0_17.resolveSpawn(arg_47_0, arg_47_1, arg_47_2)
	if __recovered_scope_0.var_0_17.enforceCenterLane(arg_47_0, arg_47_1, arg_47_2) then
		return true
	end

	if __recovered_scope_0.var_0_24(arg_47_0) ~= 6 or not arg_47_1 or __recovered_scope_0.var_0_25(arg_47_1) then
		return false
	end

	local var_47_0 = __recovered_scope_0.var_0_17.resolvePlacement(arg_47_0, arg_47_1, arg_47_2)
	local var_47_1 = tonumber(arg_47_1.x) or 0
	local var_47_2 = tonumber(arg_47_1.y) or 0

	arg_47_1._stage6RiftSafeX = var_47_1
	arg_47_1._stage6RiftSafeY = var_47_2
	arg_47_1._stage6RiftPlacementSafeX = var_47_1
	arg_47_1._stage6RiftPlacementSafeY = var_47_2

	if arg_47_1.baseX ~= nil then
		arg_47_1.baseX = var_47_1
	end

	if arg_47_1.baseY ~= nil then
		arg_47_1.baseY = var_47_2
	end

	return var_47_0
end

function __recovered_scope_0.var_0_17.resolveEntity(arg_48_0, arg_48_1, arg_48_2)
	if not arg_48_0 or not arg_48_1 then
		return false
	end

	if __recovered_scope_0.var_0_17.enforceCenterLane(arg_48_0, arg_48_1, arg_48_2) then
		return true
	end

	if __recovered_scope_0.var_0_24(arg_48_0) ~= 6 or __recovered_scope_0.var_0_25(arg_48_1) then
		__recovered_scope_0.var_0_31(arg_48_1)

		return false
	end

	if arg_48_1._stage6CrossLane == true then
		arg_48_1._stage6RiftSafeX = tonumber(arg_48_1.x) or 0
		arg_48_1._stage6RiftSafeY = tonumber(arg_48_1.y) or 0

		return false
	end

	local var_48_0 = __recovered_scope_0.var_0_26(arg_48_0)
	local var_48_1 = arg_48_0.area

	if not var_48_0 or not var_48_1 or not var_48_1.w or not var_48_1.h or not (var_48_1.w > 0) or not (var_48_1.h > 0) then
		__recovered_scope_0.var_0_31(arg_48_1)

		return false
	end

	local var_48_2 = tonumber(arg_48_1.x) or 0
	local var_48_3 = tonumber(arg_48_1.y) or 0
	local var_48_4 = tonumber(arg_48_1._stage6RiftSafeX) or var_48_2
	local var_48_5 = tonumber(arg_48_1._stage6RiftSafeY) or var_48_3
	local var_48_6, var_48_7 = __recovered_scope_0.var_0_32(arg_48_0, arg_48_1, arg_48_2)
	local var_48_8 = var_48_4 + var_48_6
	local var_48_9 = var_48_5 + var_48_7
	local var_48_10 = var_48_2 + var_48_6
	local var_48_11 = var_48_3 + var_48_7
	local var_48_12 = false

	if __recovered_scope_0.var_0_29(var_48_0, var_48_1, var_48_8, var_48_9) then
		local var_48_13, var_48_14 = __recovered_scope_0.var_0_27(var_48_0, var_48_1, var_48_10, var_48_11)
		local var_48_15, var_48_16 = __recovered_scope_0.var_0_33(var_48_0, var_48_13, var_48_14)

		if var_48_15 then
			__recovered_scope_0.var_0_34(arg_48_1, var_48_0, var_48_1, var_48_15, var_48_16, var_48_6, var_48_7)

			var_48_12 = true
		end
	else
		local var_48_17, var_48_18 = __recovered_scope_0.var_0_30(var_48_0, var_48_1, var_48_8, var_48_9, var_48_10, var_48_11)

		if var_48_17 then
			var_48_12 = true

			local var_48_19 = var_48_2 - var_48_4
			local var_48_20 = var_48_3 - var_48_5
			local var_48_21
			local var_48_22
			local var_48_23

			if not __recovered_scope_0.var_0_30(var_48_0, var_48_1, var_48_8, var_48_9, var_48_2 + var_48_6, var_48_9) and math.abs(var_48_19) > 0.0001 then
				var_48_21, var_48_22 = var_48_2, var_48_5
				var_48_23 = var_48_19 * var_48_19
			end

			local var_48_24 = __recovered_scope_0.var_0_30(var_48_0, var_48_1, var_48_8, var_48_9, var_48_8, var_48_3 + var_48_7)
			local var_48_25 = var_48_20 * var_48_20

			if not var_48_24 and math.abs(var_48_20) > 0.0001 and (var_48_23 == nil or var_48_23 < var_48_25) then
				var_48_21, var_48_22 = var_48_4, var_48_3
				var_48_23 = var_48_25
			end

			if var_48_23 == nil then
				local var_48_26 = math.sqrt(var_48_19 * var_48_19 + var_48_20 * var_48_20)

				if var_48_26 > 0.0001 then
					local var_48_27 = tonumber(arg_48_1._stage6RiftSlideSign)

					if var_48_27 ~= -1 and var_48_27 ~= 1 then
						var_48_27 = math.floor((var_48_4 + var_48_5) * 10) % 2 == 0 and -1 or 1
					end

					local var_48_28 = -var_48_20 / var_48_26
					local var_48_29 = var_48_19 / var_48_26

					for iter_48_0 = 1, 2 do
						local var_48_30 = iter_48_0 == 1 and var_48_27 or -var_48_27
						local var_48_31 = var_48_4 + var_48_28 * var_48_26 * var_48_30
						local var_48_32 = var_48_5 + var_48_29 * var_48_26 * var_48_30

						if not __recovered_scope_0.var_0_30(var_48_0, var_48_1, var_48_8, var_48_9, var_48_31 + var_48_6, var_48_32 + var_48_7) then
							var_48_21, var_48_22 = var_48_31, var_48_32
							arg_48_1._stage6RiftSlideSign = var_48_30

							break
						end
					end
				end
			end

			if var_48_21 then
				arg_48_1.x, arg_48_1.y = var_48_21, var_48_22
			else
				arg_48_1.x = var_48_4 + var_48_19 * var_48_18
				arg_48_1.y = var_48_5 + var_48_20 * var_48_18
			end
		else
			arg_48_1._stage6RiftSlideSign = nil
		end
	end

	if var_48_12 then
		arg_48_1._kb = nil
		arg_48_1._posLerp = nil
	end

	arg_48_1._stage6RiftSafeX = tonumber(arg_48_1.x) or var_48_2
	arg_48_1._stage6RiftSafeY = tonumber(arg_48_1.y) or var_48_3

	return var_48_12
end

function __recovered_scope_0.var_0_17.resolveAll(arg_49_0, arg_49_1, arg_49_2)
	if not arg_49_0 then
		return 0
	end

	if __recovered_scope_0.var_0_24(arg_49_0) ~= 6 then
		for iter_49_0, iter_49_1 in ipairs(arg_49_0.allies or {}) do
			__recovered_scope_0.var_0_31(iter_49_1)
		end

		for iter_49_2, iter_49_3 in ipairs(arg_49_0.enemies or {}) do
			__recovered_scope_0.var_0_31(iter_49_3)
		end

		return 0
	end

	local var_49_0 = 0

	for iter_49_4, iter_49_5 in ipairs(arg_49_0.allies or {}) do
		if iter_49_5 and iter_49_5.alive ~= false and not iter_49_5.dying and __recovered_scope_0.var_0_17.resolveEntity(arg_49_0, iter_49_5, arg_49_1) then
			var_49_0 = var_49_0 + 1
		end
	end

	for iter_49_6, iter_49_7 in ipairs(arg_49_0.enemies or {}) do
		if iter_49_7 and iter_49_7.alive ~= false and not iter_49_7.dying and __recovered_scope_0.var_0_17.resolveEntity(arg_49_0, iter_49_7, arg_49_2) then
			var_49_0 = var_49_0 + 1
		end
	end

	return var_49_0
end

function __recovered_scope_0.var_0_17.resolveRosterAll(arg_50_0)
	if not arg_50_0 then
		return 0
	end

	local var_50_0 = 0

	for iter_50_0, iter_50_1 in ipairs(arg_50_0.rosterUnits or {}) do
		if iter_50_1 and not iter_50_1._held then
			if __recovered_scope_0.var_0_17.resolveEntity(arg_50_0, iter_50_1) then
				var_50_0 = var_50_0 + 1
			end

			iter_50_1._stage6RiftPlacementSafeX = tonumber(iter_50_1.x)
			iter_50_1._stage6RiftPlacementSafeY = tonumber(iter_50_1.y)
		end
	end

	return var_50_0
end

__recovered_scope_0.var_0_17.isFlying = __recovered_scope_0.var_0_25
__recovered_scope_0.var_0_17.isRangedCombatant = __recovered_scope_0.var_0_36

 __recovered_scope_0.var_0_39 = __recovered_scope_0.var_0_17
 __recovered_scope_0.var_0_40 = nil
 __recovered_scope_0.var_0_41 = {}

 function __recovered_scope_0.var_0_42()
	if love and love.math and love.math.random then
		return love.math.random()
	end

	return math.random()
end

function __recovered_scope_0.var_0_41.regions(arg_52_0, arg_52_1, arg_52_2)
	if not arg_52_0 or type(arg_52_0.getRosterClamp) ~= "function" then
		return {}
	end

	local var_52_0, var_52_1, var_52_2, var_52_3 = arg_52_0:getRosterClamp()
	local var_52_4 = tonumber(var_52_0) or 0
	local var_52_5 = tonumber(var_52_1) or 0
	local var_52_6 = tonumber(arg_52_0.groundTopY)
	local var_52_7 = tonumber(arg_52_0.groundBotY)

	if var_52_6 == nil or var_52_7 == nil then
		local var_52_8 = tonumber(arg_52_0.ui and arg_52_0.ui.battle and arg_52_0.ui.battle.allySize32) or 32
		local var_52_9 = math.max(16, math.floor(math.max(32, var_52_8) / 32) * 16)

		var_52_6 = (tonumber(var_52_2) or 0) - var_52_9
		var_52_7 = (tonumber(var_52_3) or 0) + var_52_9
	end

	local var_52_10 = arg_52_0.area
	local var_52_11 = arg_52_0.ui

	if var_52_10 and var_52_11 then
		local var_52_12 = math.max(0, math.floor(12 * (tonumber(var_52_11.scale) or 1)))

		var_52_4 = (tonumber(var_52_10.x) or 0) + var_52_12
		var_52_5 = (tonumber(var_52_10.x) or 0) + (tonumber(var_52_10.w) or 0) - var_52_12
	end

	local var_52_13 = tonumber(var_52_6) or 0
	local var_52_14

	var_52_14 = tonumber(var_52_7) or 0

	local var_52_15 = var_52_13 + math.max(0, tonumber(arg_52_2) or 0)

	if var_52_5 < var_52_4 or var_52_14 < var_52_15 then
		return {}
	end

	local var_52_16 = __recovered_scope_0.var_0_39 and __recovered_scope_0.var_0_39.blockedRect and __recovered_scope_0.var_0_39.blockedRect(arg_52_0, arg_52_0.area)

	if not var_52_16 then
		return {
			{
				minX = var_52_4,
				maxX = var_52_5,
				minY = var_52_15,
				maxY = var_52_14
			}
		}
	end

	local var_52_17 = math.max(0, tonumber(arg_52_1) or 0)
	local var_52_18 = math.min(var_52_14, (tonumber(var_52_16.y) or var_52_15) - var_52_17)
	local var_52_19 = math.max(var_52_15, (tonumber(var_52_16.y) or var_52_15) + (tonumber(var_52_16.h) or 0) + var_52_17)
	local var_52_20 = {}

	if var_52_15 <= var_52_18 then
		var_52_20[#var_52_20 + 1] = {
			minX = var_52_4,
			maxX = var_52_5,
			minY = var_52_15,
			maxY = var_52_18
		}
	end

	if var_52_19 <= var_52_14 then
		var_52_20[#var_52_20 + 1] = {
			minX = var_52_4,
			maxX = var_52_5,
			minY = var_52_19,
			maxY = var_52_14
		}
	end

	return var_52_20
end

function __recovered_scope_0.var_0_41.randomPoint(arg_53_0, arg_53_1, arg_53_2)
	local var_53_0 = __recovered_scope_0.var_0_41.regions(arg_53_0, arg_53_1, arg_53_2)

	if #var_53_0 <= 0 then
		return nil, nil
	end

	local var_53_1 = 0

	for iter_53_0, iter_53_1 in ipairs(var_53_0) do
		local var_53_2 = math.max(0, iter_53_1.maxX - iter_53_1.minX)
		local var_53_3 = math.max(0, iter_53_1.maxY - iter_53_1.minY)

		iter_53_1._sampleArea = math.max(1, var_53_2 * var_53_3)
		var_53_1 = var_53_1 + iter_53_1._sampleArea
	end

	local var_53_4 = __recovered_scope_0.var_0_42() * var_53_1
	local var_53_5 = var_53_0[#var_53_0]

	for iter_53_2, iter_53_3 in ipairs(var_53_0) do
		var_53_4 = var_53_4 - iter_53_3._sampleArea

		if var_53_4 <= 0 then
			var_53_5 = iter_53_3

			break
		end
	end

	return var_53_5.minX + (var_53_5.maxX - var_53_5.minX) * __recovered_scope_0.var_0_42(), var_53_5.minY + (var_53_5.maxY - var_53_5.minY) * __recovered_scope_0.var_0_42()
end

function __recovered_scope_0.var_0_41.clampPoint(arg_54_0, arg_54_1, arg_54_2, arg_54_3, arg_54_4)
	local var_54_0 = __recovered_scope_0.var_0_41.regions(arg_54_0, arg_54_3, arg_54_4)

	if #var_54_0 <= 0 then
		return arg_54_1, arg_54_2
	end

	local var_54_1 = tonumber(arg_54_1) or 0
	local var_54_2 = tonumber(arg_54_2) or 0
	local var_54_3
	local var_54_4
	local var_54_5

	for iter_54_0, iter_54_1 in ipairs(var_54_0) do
		local var_54_6 = math.max(iter_54_1.minX, math.min(iter_54_1.maxX, var_54_1))
		local var_54_7 = math.max(iter_54_1.minY, math.min(iter_54_1.maxY, var_54_2))
		local var_54_8 = var_54_6 - var_54_1
		local var_54_9 = var_54_7 - var_54_2
		local var_54_10 = var_54_8 * var_54_8 + var_54_9 * var_54_9

		if var_54_5 == nil or var_54_10 < var_54_5 then
			var_54_3, var_54_4, var_54_5 = var_54_6, var_54_7, var_54_10
		end
	end

	return var_54_3, var_54_4
end

 __recovered_scope_0.var_0_43 = __recovered_scope_0.var_0_41
 __recovered_scope_0.var_0_44 = nil
 __recovered_scope_0.var_0_45 = require("src.data.faction")
 __recovered_scope_0.var_0_46 = {}

 function __recovered_scope_0.var_0_47(arg_55_0)
	if not __recovered_scope_0.var_0_45.isEnabled() then
		return nil
	end

	if type(arg_55_0) ~= "table" then
		return nil
	end

	return __recovered_scope_0.var_0_45.normalizeId(arg_55_0.faction) or __recovered_scope_0.var_0_45.getForUnit(arg_55_0)
end

 function __recovered_scope_0.var_0_48(arg_56_0, arg_56_1)
	if not __recovered_scope_0.var_0_45.isEnabled() then
		return nil
	end

	local var_56_0 = arg_56_0 and arg_56_0.factionSynergy
	local var_56_1 = var_56_0 and var_56_0[arg_56_1]

	return var_56_1 and var_56_1.value or nil
end

 __recovered_scope_0.var_0_49 = {
	"isSummon",
	"isShadowMinion",
	"isGuardianGolem",
	"isDecoyDummy",
	"isClone",
	"isFireSpirit",
	"isUndyingSoul",
	"isHusk"
}

 function __recovered_scope_0.var_0_50(arg_57_0)
	if not arg_57_0 or arg_57_0.side ~= "ally" then
		return false
	end

	for iter_57_0, iter_57_1 in ipairs(__recovered_scope_0.var_0_49) do
		if arg_57_0[iter_57_1] then
			return false
		end
	end

	return true
end

 function __recovered_scope_0.var_0_51(arg_58_0)
	for iter_58_0, iter_58_1 in pairs(arg_58_0 and arg_58_0.imprints or {}) do
		if iter_58_1 and iter_58_1.id == "self_destruct" then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_52(arg_59_0, arg_59_1)
	if type(arg_59_0) ~= "table" then
		return
	end

	local var_59_0 = math.max(0, tonumber(arg_59_0._factionAspdBonus) or 0)

	if arg_59_1 ~= false and var_59_0 > 0 and (tonumber(arg_59_0.coolTicks) or 0) > 0 and arg_59_0.coolTicks < 999999 then
		arg_59_0.coolTicks = math.max(1, math.ceil(arg_59_0.coolTicks * (1 + var_59_0)))
	end

	arg_59_0._factionForestRecoveryUsed = nil
	arg_59_0._factionForestLastHP = nil
	arg_59_0._factionForestRecoveryT = nil
	arg_59_0._factionShieldHP = nil
	arg_59_0._factionShieldMax = nil
	arg_59_0._factionShieldHitT = nil
	arg_59_0._factionShieldLastHP = nil
	arg_59_0._factionAspdBonus = nil
	arg_59_0._factionOutlawProcT = nil
	arg_59_0._factionTribeMomentumLost = nil
	arg_59_0._miracleDown = nil
end

function __recovered_scope_0.var_0_46.disable(arg_60_0, arg_60_1)
	if not arg_60_0 then
		return false
	end

	arg_60_0.factionSynergy = nil

	require("src.game.item").setGearBonus(0, 0)

	for iter_60_0, iter_60_1 in ipairs(arg_60_0.allies or {}) do
		__recovered_scope_0.var_0_52(iter_60_1, arg_60_1)
	end

	return true
end

 function __recovered_scope_0.var_0_53(arg_61_0, arg_61_1)
	local var_61_0 = math.floor(math.max(0, tonumber(arg_61_0) or 0) * math.max(0, tonumber(arg_61_1) or 0) * 0.01 + 0.5)

	return math.max(1, var_61_0)
end

 function __recovered_scope_0.var_0_54(arg_62_0, arg_62_1)
	arg_62_0.damagePopups = arg_62_0.damagePopups or {}

	local var_62_0 = math.min(1, #arg_62_0.damagePopups)

	table.insert(arg_62_0.damagePopups, {
		kind = "heal",
		t = 0,
		dur = 0.8,
		amt = arg_62_1,
		stackIdx = var_62_0
	})

	if #arg_62_0.damagePopups > 2 then
		table.remove(arg_62_0.damagePopups, 1)
	end
end

 function __recovered_scope_0.var_0_55(arg_63_0, arg_63_1, arg_63_2)
	arg_63_1.hpbarShowT = math.max(arg_63_1.hpbarShowT or 0, 1.2)
	arg_63_1.healPlus = {
		t = 0,
		dur = 0.72,
		spriteAlpha = 0.9,
		spriteTint = true,
		amount = arg_63_2,
		spriteColor = {
			0.32,
			0.95,
			0.42
		}
	}

	__recovered_scope_0.var_0_54(arg_63_1, arg_63_2)

	if arg_63_0 then
		arg_63_0.vfxList = arg_63_0.vfxList or {}

		table.insert(arg_63_0.vfxList, {
			kind = "healing_aura_pop",
			scale = 3.2,
			t = 0,
			dur = 0.8,
			drift = 18,
			target = arg_63_1,
			color = {
				0.2,
				0.9,
				0.4
			}
		})
		table.insert(arg_63_0.vfxList, {
			scale = 2.4,
			t = -0.15,
			dur = 0.7,
			kind = "healing_aura_pop",
			drift = 12,
			offsetY = 4,
			offsetX = 8,
			target = arg_63_1,
			color = {
				0.3,
				0.95,
				0.5
			}
		})
	end
end

function __recovered_scope_0.var_0_46.prepareGear(arg_64_0)
	local var_64_0 = __recovered_scope_0.var_0_45.countUniqueTypes(arg_64_0 and arg_64_0.rosterUnits or {})
	local var_64_1, var_64_2, var_64_3 = __recovered_scope_0.var_0_45.getSynergyValue("engineer", var_64_0.engineer or 0)
	local var_64_4 = __recovered_scope_0.var_0_45.getSynergyDef("engineer")
	local var_64_5 = var_64_1 and var_64_3 >= (var_64_4.trainingFromTier or 2) and var_64_1 or 0

	require("src.game.item").setGearBonus(var_64_1 or 0, var_64_5)

	return var_64_1
end

function __recovered_scope_0.var_0_46.beginBattle(arg_65_0)
	if not arg_65_0 then
		return nil
	end

	__recovered_scope_0.var_0_46.disable(arg_65_0, false)

	if not __recovered_scope_0.var_0_45.isEnabled() then
		return nil
	end

	local var_65_0 = __recovered_scope_0.var_0_45.countUniqueTypes(arg_65_0.rosterUnits or {})
	local var_65_1 = {
		miracleUsed = false,
		tribeActive = false,
		deaths = 0,
		counts = var_65_0
	}

	for iter_65_0, iter_65_1 in ipairs(__recovered_scope_0.var_0_45.ids) do
		local var_65_2, var_65_3, var_65_4 = __recovered_scope_0.var_0_45.getSynergyValue(iter_65_1, var_65_0[iter_65_1] or 0)

		var_65_1[iter_65_1] = {
			count = var_65_0[iter_65_1] or 0,
			value = var_65_2,
			required = var_65_3,
			tierIndex = var_65_4
		}
	end

	var_65_1.tribeActive = var_65_1.tribe.value ~= nil
	arg_65_0.factionSynergy = var_65_1

	__recovered_scope_0.var_0_46.prepareGear(arg_65_0)

	for iter_65_2, iter_65_3 in ipairs(arg_65_0.allies or {}) do
		iter_65_3._factionForestRecoveryUsed = nil
		iter_65_3._factionForestLastHP = tonumber(iter_65_3.hp)
		iter_65_3._factionShieldHP = nil
		iter_65_3._factionShieldMax = nil
		iter_65_3._factionShieldHitT = nil
		iter_65_3._factionShieldLastHP = tonumber(iter_65_3.hp)
		iter_65_3._factionAspdBonus = nil
		iter_65_3._miracleDown = nil

		local var_65_5 = __recovered_scope_0.var_0_47(iter_65_3)

		if var_65_5 == "empire" and var_65_1.empire.value then
			local var_65_6 = __recovered_scope_0.var_0_53(iter_65_3.maxhp or iter_65_3.hp or 1, var_65_1.empire.value)

			iter_65_3._factionShieldHP = var_65_6
			iter_65_3._factionShieldMax = var_65_6
			iter_65_3._factionShieldHitT = 0.45
			iter_65_3.hpbarShowT = math.max(iter_65_3.hpbarShowT or 0, 1)
		elseif var_65_5 == "tribe" and var_65_1.tribeActive then
			iter_65_3._factionAspdBonus = var_65_1.tribe.value * 0.01
		end
	end

	return var_65_1
end

function __recovered_scope_0.var_0_46.modifyOutlawDamage(arg_66_0, arg_66_1, arg_66_2, arg_66_3)
	arg_66_2 = math.max(0, tonumber(arg_66_2) or 0)

	if not arg_66_1 or not arg_66_3 or arg_66_3.side ~= "ally" then
		return arg_66_2
	end

	local var_66_0 = __recovered_scope_0.var_0_47(arg_66_3)

	if var_66_0 == "outlaw" then
		local var_66_1 = __recovered_scope_0.var_0_48(arg_66_0, "outlaw")

		if not var_66_1 then
			return arg_66_2
		end

		local var_66_2 = math.max(1, tonumber(arg_66_1.maxhp or arg_66_1.hp or 1) or 1)

		if math.max(0, tonumber(arg_66_1.hp) or 0) / var_66_2 > 0.4 then
			return arg_66_2
		end

		arg_66_3._factionOutlawProcT = 0.18

		return arg_66_2 * (1 + var_66_1 * 0.01)
	elseif var_66_0 == "undead" then
		local var_66_3 = __recovered_scope_0.var_0_48(arg_66_0, "undead")
		local var_66_4 = arg_66_0.factionSynergy.deaths or 0

		if not var_66_3 or var_66_4 <= 0 then
			return arg_66_2
		end

		return arg_66_2 * (1 + var_66_3 * var_66_4 * 0.01)
	end

	return arg_66_2
end

function __recovered_scope_0.var_0_46.scaleSkillDamage(arg_67_0, arg_67_1, arg_67_2, arg_67_3)
	if not arg_67_3 or __recovered_scope_0.var_0_47(arg_67_1) ~= "arcane" then
		return arg_67_2
	end

	local var_67_0 = __recovered_scope_0.var_0_48(arg_67_0, "arcane")

	if not var_67_0 then
		return arg_67_2
	end

	return arg_67_2 * (1 + var_67_0 * 0.01)
end

function __recovered_scope_0.var_0_46.healMultiplier(arg_68_0, arg_68_1)
	local var_68_0 = __recovered_scope_0.var_0_48(arg_68_0, "holy")

	if not var_68_0 or not arg_68_1 or arg_68_1.side == "enemy" or arg_68_1.isGuardianGolem then
		return 1
	end

	return 1 + var_68_0 * 0.01
end

 function __recovered_scope_0.var_0_56(arg_69_0)
	local var_69_0 = arg_69_0 and arg_69_0.factionSynergy

	if not var_69_0 or not var_69_0.undead or not var_69_0.undead.value then
		return
	end

	local var_69_1 = __recovered_scope_0.var_0_45.getSynergyDef("undead").maxStacks or 10

	var_69_0.deaths = math.min(var_69_1, (var_69_0.deaths or 0) + 1)
end

function __recovered_scope_0.var_0_46.onEnemyDeath(arg_70_0, arg_70_1)
	if not __recovered_scope_0.var_0_45.isEnabled() or not arg_70_1 then
		return false
	end

	__recovered_scope_0.var_0_56(arg_70_0)

	return true
end

 function __recovered_scope_0.var_0_57(arg_71_0, arg_71_1)
	if not arg_71_0 or arg_71_0.side ~= "enemy" then
		return false
	end

	if arg_71_0.isFirebreatherBurn or arg_71_0.isPoison or arg_71_0.isDamageOverTime then
		return false
	end

	local var_71_0 = arg_71_1 or {}

	return not var_71_0.factionAbyssShared and not var_71_0.dot and not var_71_0.poison and not var_71_0.burn and not var_71_0.indirect and not var_71_0.damageOverTime and var_71_0.directDamage ~= false
end

function __recovered_scope_0.var_0_46.splitAbyssDirectDamage(arg_72_0, arg_72_1, arg_72_2, arg_72_3, arg_72_4)
	local var_72_0 = __recovered_scope_0.var_0_48(arg_72_0, "abyss")
	local var_72_1 = math.max(0, math.floor(tonumber(arg_72_2) or 0))

	if not var_72_0 or var_72_1 <= 0 or __recovered_scope_0.var_0_47(arg_72_1) ~= "abyss" or not __recovered_scope_0.var_0_57(arg_72_3, arg_72_4) then
		return var_72_1, nil
	end

	local var_72_2 = {}

	for iter_72_0, iter_72_1 in ipairs(arg_72_0 and arg_72_0.allies or {}) do
		if iter_72_1 ~= arg_72_1 and iter_72_1.alive and not iter_72_1.dying and not iter_72_1._venomMawSwallowed and (tonumber(iter_72_1.hp) or 0) > 0 and __recovered_scope_0.var_0_47(iter_72_1) == "abyss" and not require("src.game.unit_abilities").dimensional_duel.separated(arg_72_0, arg_72_1, iter_72_1) then
			var_72_2[#var_72_2 + 1] = iter_72_1
		end
	end

	if #var_72_2 == 0 then
		return var_72_1, nil
	end

	local var_72_3 = math.min(var_72_1, math.max(0, math.floor(var_72_1 * var_72_0 * 0.01 + 0.5)))

	if var_72_3 <= 0 then
		return var_72_1, nil
	end

	local var_72_4 = math.floor(var_72_3 / #var_72_2)
	local var_72_5 = var_72_3 - var_72_4 * #var_72_2
	local var_72_6 = {}

	for iter_72_2, iter_72_3 in ipairs(var_72_2) do
		local var_72_7 = var_72_4 + (iter_72_2 <= var_72_5 and 1 or 0)

		if var_72_7 > 0 then
			var_72_6[#var_72_6 + 1] = {
				target = iter_72_3,
				amount = var_72_7
			}
		end
	end

	if #var_72_6 == 0 then
		return var_72_1, nil
	end

	return var_72_1 - var_72_3, var_72_6
end

function __recovered_scope_0.var_0_46.absorbEmpireShield(arg_73_0, arg_73_1, arg_73_2)
	local var_73_0 = math.max(0, math.floor(tonumber(arg_73_1) or 0))

	if not __recovered_scope_0.var_0_45.isEnabled() then
		return var_73_0, 0
	end

	local var_73_1 = math.max(0, math.floor(tonumber(arg_73_0 and arg_73_0._factionShieldHP) or 0))

	if var_73_0 <= 0 or var_73_1 <= 0 then
		return var_73_0, 0
	end

	local var_73_2 = math.min(var_73_0, var_73_1)

	arg_73_0._factionShieldHP = var_73_1 - var_73_2
	arg_73_0._factionShieldHitT = 0.35
	arg_73_0.hpbarShowT = math.max(arg_73_0.hpbarShowT or 0, 1)

	return var_73_0 - var_73_2, var_73_2
end

function __recovered_scope_0.var_0_46.pollEmpireShield(arg_74_0, arg_74_1)
	if not __recovered_scope_0.var_0_45.isEnabled() then
		return 0
	end

	if not arg_74_1 then
		return 0
	end

	local var_74_0 = tonumber(arg_74_1.hp) or 0
	local var_74_1 = tonumber(arg_74_1._factionShieldLastHP) or var_74_0
	local var_74_2 = math.max(0, var_74_1 - var_74_0)
	local var_74_3 = math.max(0, tonumber(arg_74_1._factionShieldHP) or 0)

	if var_74_2 <= 0 or var_74_3 <= 0 then
		arg_74_1._factionShieldLastHP = var_74_0

		return 0
	end

	local var_74_4, var_74_5 = __recovered_scope_0.var_0_46.absorbEmpireShield(arg_74_1, var_74_2, arg_74_0)
	local var_74_6 = math.max(1, tonumber(arg_74_1.maxhp or var_74_1 or 1) or 1)

	arg_74_1.hp = math.min(var_74_6, var_74_0 + var_74_5)
	arg_74_1._factionShieldLastHP = arg_74_1.hp

	return var_74_5
end

function __recovered_scope_0.var_0_46.tryForestRecovery(arg_75_0, arg_75_1, arg_75_2)
	if not __recovered_scope_0.var_0_45.isEnabled() then
		return 0
	end

	local var_75_0 = __recovered_scope_0.var_0_48(arg_75_0, "forest")

	if not var_75_0 or not arg_75_1 or __recovered_scope_0.var_0_47(arg_75_1) ~= "forest" or arg_75_1._factionForestRecoveryUsed then
		return 0
	end

	local var_75_1 = math.max(1, tonumber(arg_75_1.maxhp or arg_75_1.hp or 1) or 1)
	local var_75_2 = tonumber(arg_75_2) or tonumber(arg_75_1._factionForestLastHP) or var_75_1
	local var_75_3 = tonumber(arg_75_1.hp) or 0

	if var_75_2 <= var_75_1 * 0.5 or var_75_3 > var_75_1 * 0.5 then
		arg_75_1._factionForestLastHP = var_75_3

		return 0
	end

	arg_75_1._factionForestRecoveryUsed = true

	local var_75_4 = __recovered_scope_0.var_0_53(var_75_1, var_75_0 * __recovered_scope_0.var_0_46.healMultiplier(arg_75_0, arg_75_1))
	local var_75_5 = math.max(0, var_75_3)

	arg_75_1.hp = math.min(var_75_1, var_75_5 + var_75_4)

	local var_75_6 = math.max(0, arg_75_1.hp - var_75_5)

	arg_75_1._factionForestLastHP = arg_75_1.hp

	if var_75_6 > 0 then
		require("src.game.combat").guardian_golem.share(arg_75_0, arg_75_1, var_75_6)
		__recovered_scope_0.var_0_55(arg_75_0, arg_75_1, var_75_6)

		arg_75_1._factionForestRecoveryT = 0.72
	end

	return var_75_6
end

function __recovered_scope_0.var_0_46.pollForestRecovery(arg_76_0, arg_76_1)
	if not arg_76_1 then
		return 0
	end

	return __recovered_scope_0.var_0_46.tryForestRecovery(arg_76_0, arg_76_1, arg_76_1._factionForestLastHP)
end

 function __recovered_scope_0.var_0_58(arg_77_0)
	local var_77_0 = arg_77_0 and arg_77_0.factionSynergy

	return var_77_0 and var_77_0.celestial and var_77_0.celestial.value and not var_77_0.miracleUsed and arg_77_0.mode == "battle" and var_77_0 or nil
end

function __recovered_scope_0.var_0_46.onAllyDeath(arg_78_0, arg_78_1)
	if not __recovered_scope_0.var_0_45.isEnabled() then
		return false
	end

	local var_78_0 = arg_78_0 and arg_78_0.factionSynergy

	if not var_78_0 then
		return false
	end

	__recovered_scope_0.var_0_56(arg_78_0)

	arg_78_1._miracleDown = __recovered_scope_0.var_0_58(arg_78_0) and __recovered_scope_0.var_0_50(arg_78_1) and not __recovered_scope_0.var_0_51(arg_78_1) or nil

	if not var_78_0.tribeActive or __recovered_scope_0.var_0_47(arg_78_1) ~= "tribe" then
		return false
	end

	var_78_0.tribeActive = false

	for iter_78_0, iter_78_1 in ipairs(arg_78_0.allies or {}) do
		local var_78_1 = math.max(0, tonumber(iter_78_1._factionAspdBonus) or 0)

		if var_78_1 > 0 then
			if (tonumber(iter_78_1.coolTicks) or 0) > 0 and iter_78_1.coolTicks < 999999 then
				iter_78_1.coolTicks = math.max(1, math.ceil(iter_78_1.coolTicks * (1 + var_78_1)))
			end

			iter_78_1._factionAspdBonus = nil
			iter_78_1._factionTribeMomentumLost = true
		end
	end

	return true
end

function __recovered_scope_0.var_0_46.updateMiracle(arg_79_0)
	local var_79_0 = __recovered_scope_0.var_0_58(arg_79_0)

	if not var_79_0 then
		return false
	end

	local var_79_1 = 0
	local var_79_2 = {}

	for iter_79_0, iter_79_1 in ipairs(arg_79_0.allies or {}) do
		if iter_79_1.alive and __recovered_scope_0.var_0_50(iter_79_1) then
			if not iter_79_1.dying then
				var_79_1 = var_79_1 + 1
			elseif iter_79_1._miracleDown and not iter_79_1.reviving and not iter_79_1.undyingSoulRising and not iter_79_1.selfDestructing and not iter_79_1._salvation then
				var_79_2[#var_79_2 + 1] = iter_79_1
			end
		end
	end

	if #var_79_2 == 0 or var_79_1 > 1 then
		return false
	end

	var_79_0.miracleUsed = true

	for iter_79_2, iter_79_3 in ipairs(arg_79_0.allies or {}) do
		iter_79_3._miracleDown = nil
	end

	for iter_79_4, iter_79_5 in ipairs(var_79_2) do
		iter_79_5.reviving = true
		iter_79_5.reviveT = 0
		iter_79_5.deathT = nil
		iter_79_5.invuln = true
		iter_79_5._reviveHpFrac = var_79_0.celestial.value * 0.01
		iter_79_5._reviveAtkBoost = 0
		iter_79_5._reviveBuffDur = 0
		iter_79_5._factionShieldLastHP, iter_79_5._factionForestLastHP = nil

		if iter_79_5.anim and iter_79_5.anim.name ~= "death" then
			iter_79_5.anim.name, iter_79_5.anim.t, iter_79_5.anim.frame, iter_79_5.anim.reverse = "death", 0, 1
		end
	end

	return true
end

function __recovered_scope_0.var_0_46.endBattle(arg_80_0)
	require("src.game.item").setGearBonus(0, 0)

	for iter_80_0, iter_80_1 in ipairs(arg_80_0 and arg_80_0.allies or {}) do
		if iter_80_1._miracleDown then
			iter_80_1._miracleDown = nil

			if iter_80_1.alive and iter_80_1.dying and not iter_80_1.reviving then
				iter_80_1.alive = false
			end
		end
	end
end

function __recovered_scope_0.var_0_46.getFaction(arg_81_0)
	return __recovered_scope_0.var_0_47(arg_81_0)
end

 __recovered_scope_0.var_0_59 = __recovered_scope_0.var_0_46
 __recovered_scope_0.var_0_60 = nil
 __recovered_scope_0.var_0_61 = {
	canPrepare = function(arg_82_0)
		if not arg_82_0 or arg_82_0.gameOver or arg_82_0.mode == "battle" or arg_82_0.wave and arg_82_0.wave.active then
			return false
		end

		if arg_82_0.classSelect or arg_82_0.imprintModal or arg_82_0._imprintModalResolve then
			return false
		end

		for iter_82_0, iter_82_1 in pairs(arg_82_0.rosterUnits or {}) do
			if iter_82_1 and iter_82_1.needsClassSelect == true then
				return false
			end
		end

		for iter_82_2, iter_82_3 in pairs(arg_82_0.rosterSpawnMeta or {}) do
			if iter_82_3 and iter_82_3.needsClassSelect == true then
				return false
			end
		end

		return true
	end
}

function __recovered_scope_0.var_0_61.canStart(arg_83_0)
	return __recovered_scope_0.var_0_61.canPrepare(arg_83_0) and not require("src.ui.flow").core_select.hasPending(arg_83_0.ui)
end

function __recovered_scope_0.var_0_61.claim(arg_84_0)
	return __recovered_scope_0.var_0_61.canStart(arg_84_0)
end

 __recovered_scope_0.var_0_62 = __recovered_scope_0.var_0_61
 __recovered_scope_0.var_0_63 = nil
 __recovered_scope_0.var_0_64 = {
	rects = function(arg_85_0, arg_85_1, arg_85_2)
		arg_85_2 = arg_85_2 or arg_85_0.ui and arg_85_0.ui.battle and arg_85_0.ui.battle.allySize32 or 32

		local var_85_0 = table.concat({
			arg_85_1.x or 0,
			arg_85_1.y or 0,
			arg_85_2,
			arg_85_1._crystalGuardWallRiseT or 0,
			arg_85_1._crystalGuardWallRiseDur or 0.48,
			arg_85_1._crystalGuardWallT or 0,
			arg_85_1.hitShake and arg_85_1.hitShake.t or -1,
			arg_85_1.hitShake and arg_85_1.hitShake.amp or 0
		}, ":")

		if arg_85_1._crystalSolidKey ~= var_85_0 then
			arg_85_1._crystalSolidRects = require("src.ui.effects").crystal_guard_barrier.solidRects(arg_85_1, arg_85_2)
			arg_85_1._crystalSolidKey = var_85_0
		end

		return arg_85_1._crystalSolidRects
	end
}

function __recovered_scope_0.var_0_64.updateCollider(arg_86_0, arg_86_1, arg_86_2)
	local var_86_0 = math.huge
	local var_86_1 = math.huge
	local var_86_2 = -math.huge
	local var_86_3 = -math.huge

	for iter_86_0, iter_86_1 in ipairs(__recovered_scope_0.var_0_64.rects(arg_86_0, arg_86_1, arg_86_2)) do
		var_86_0, var_86_1 = math.min(var_86_0, iter_86_1.x), math.min(var_86_1, iter_86_1.y)
		var_86_2, var_86_3 = math.max(var_86_2, iter_86_1.x + iter_86_1.w), math.max(var_86_3, iter_86_1.y + iter_86_1.h)
	end

	arg_86_1.colX, arg_86_1.colY, arg_86_1.colW, arg_86_1.colH = var_86_0, var_86_1, var_86_2 - var_86_0, var_86_3 - var_86_1
	arg_86_1._bodyColX, arg_86_1._bodyColY, arg_86_1._bodyColW, arg_86_1._bodyColH = var_86_0, var_86_1, var_86_2 - var_86_0, var_86_3 - var_86_1
	arg_86_1._visCenterXOff, arg_86_1._visCenterYOff = (var_86_0 + var_86_2) / 2 - arg_86_1.x, (var_86_1 + var_86_3) / 2 - arg_86_1.y
	arg_86_1._visWidth = var_86_2 - var_86_0
end

function __recovered_scope_0.var_0_64.overlaps(arg_87_0, arg_87_1, arg_87_2, arg_87_3)
	if not arg_87_1.alive or arg_87_1.dying or not ((arg_87_1.hp or 0) > 0) or not arg_87_2 or not arg_87_2.colX or not arg_87_2.colY or not arg_87_2.colW or not arg_87_2.colH then
		return false
	end

	local var_87_0 = arg_87_3
	local var_87_1
	local var_87_2

	if var_87_0 then
		var_87_1 = var_87_0.quads and var_87_0.quads[arg_87_2.frame or 1]
		var_87_2 = var_87_0.bounds and var_87_0.bounds[arg_87_2.frame or 1]
	else
		local var_87_3 = arg_87_2.side == "ally" and arg_87_0.getUnitAssetForAlly or arg_87_0.getUnitAssetForEnemy

		var_87_0 = var_87_3 and var_87_3(arg_87_0, arg_87_2)

		if var_87_0 then
			local var_87_4 = arg_87_2.anim and arg_87_2.anim.name or "idle"

			if not var_87_0.animations or not var_87_0.animations[var_87_4] then
				var_87_4 = "idle"
			end

			local var_87_5 = var_87_0.animations and var_87_0.animations[var_87_4] and var_87_0.animations[var_87_4].frames or 1
			local var_87_6 = math.max(1, math.min(var_87_5, arg_87_2.anim and arg_87_2.anim.frame or 1))

			var_87_1 = var_87_0.quads and var_87_0.quads[var_87_4] and var_87_0.quads[var_87_4][var_87_6]
			var_87_2 = var_87_0.bounds and var_87_0.bounds[var_87_4] and var_87_0.bounds[var_87_4][var_87_6]
		end
	end

	local var_87_7 = var_87_0 and var_87_0.imageData and var_87_1 and var_87_2
	local var_87_8 = 0
	local var_87_9 = 0

	if var_87_7 then
		var_87_8, var_87_9 = var_87_1:getViewport()
	end

	for iter_87_0, iter_87_1 in ipairs(__recovered_scope_0.var_0_64.rects(arg_87_0, arg_87_1)) do
		local var_87_10 = math.max(iter_87_1.x, arg_87_2.colX)
		local var_87_11 = math.max(iter_87_1.y, arg_87_2.colY)
		local var_87_12 = math.min(iter_87_1.x + iter_87_1.w, arg_87_2.colX + arg_87_2.colW)
		local var_87_13 = math.min(iter_87_1.y + iter_87_1.h, arg_87_2.colY + arg_87_2.colH)

		if var_87_10 < var_87_12 and var_87_11 < var_87_13 then
			if not var_87_7 then
				return not arg_87_3
			end

			for iter_87_2 = math.floor(var_87_11), math.ceil(var_87_13) - 1 do
				for iter_87_3 = math.floor(var_87_10), math.ceil(var_87_12) - 1 do
					local var_87_14 = iter_87_3 + 0.5
					local var_87_15 = iter_87_2 + 0.5

					if var_87_10 <= var_87_14 and var_87_14 < var_87_12 and var_87_11 <= var_87_15 and var_87_15 < var_87_13 then
						local var_87_16
						local var_87_17

						if arg_87_3 then
							local var_87_18 = arg_87_2.rot or 0
							local var_87_19 = var_87_14 - math.floor((arg_87_2.x or 0) + 0.5)
							local var_87_20 = var_87_15 - math.floor((arg_87_2.y or 0) + 0.5)
							local var_87_21 = math.max(1e-09, arg_87_2.scale or 1)
							local var_87_22 = var_87_2.x + var_87_2.w / 2
							local var_87_23 = var_87_2.y + var_87_2.h / 2

							var_87_16 = var_87_22 + (math.cos(var_87_18) * var_87_19 + math.sin(var_87_18) * var_87_20) / var_87_21
							var_87_17 = var_87_23 + (-math.sin(var_87_18) * var_87_19 + math.cos(var_87_18) * var_87_20) / var_87_21

							if arg_87_2.flipX then
								var_87_16 = 2 * var_87_22 - var_87_16
							end

							if arg_87_2.flipY then
								var_87_17 = 2 * var_87_23 - var_87_17
							end
						else
							var_87_16 = (var_87_14 - arg_87_2.colX) / arg_87_2.colW * var_87_2.w

							if (arg_87_2.facing or 1) < 0 then
								var_87_16 = var_87_2.w - var_87_16
							end

							var_87_16 = var_87_16 + var_87_2.x
							var_87_17 = var_87_2.y + (var_87_15 - arg_87_2.colY) / arg_87_2.colH * var_87_2.h
						end

						if var_87_16 >= var_87_2.x and var_87_17 >= var_87_2.y and var_87_16 < var_87_2.x + var_87_2.w and var_87_17 < var_87_2.y + var_87_2.h then
							local var_87_24, var_87_25, var_87_26, var_87_27 = var_87_0.imageData:getPixel(var_87_8 + math.floor(var_87_16), var_87_9 + math.floor(var_87_17))

							if var_87_27 > 0 then
								return true, var_87_14, var_87_15
							end
						end
					end
				end
			end
		end
	end

	return false
end

 __recovered_scope_0.var_0_65 = __recovered_scope_0.var_0_64
 __recovered_scope_0.var_0_66 = nil
 __recovered_scope_0.var_0_67 = {}

 function __recovered_scope_0.var_0_68(arg_88_0)
	return arg_88_0 and arg_88_0.side == "ally" and arg_88_0.alive and not arg_88_0.dying and (arg_88_0.hp or 0) > 0 and not arg_88_0.isSummon and not arg_88_0.isShadowMinion and not arg_88_0.isFireSpirit and not arg_88_0.isUndyingSoul and not arg_88_0.isTower and (not arg_88_0.sym or not arg_88_0.sym:find("ENEMY_", 1, true))
end

function __recovered_scope_0.var_0_67.hasShield(arg_89_0)
	return arg_89_0 and arg_89_0._solitaryOathShield ~= nil and arg_89_0._solitaryOathShield.hp > 0
end

function __recovered_scope_0.var_0_67.grant(arg_90_0, arg_90_1, arg_90_2)
	if not arg_90_1 or arg_90_1.isDecoyDummy then
		return
	end

	local var_90_0 = __recovered_scope_0.var_0_67.hasShield(arg_90_1) and arg_90_1._solitaryOathShield

	if var_90_0 and arg_90_2 <= var_90_0.hp then
		return var_90_0
	end

	if arg_90_2 <= 0 then
		return
	end

	local var_90_1 = {
		t = 1,
		hp = arg_90_2,
		max = arg_90_2
	}

	require("src.game.combat").shield_break.register(arg_90_0, var_90_1, "SolitaryOath")

	arg_90_1._solitaryOathShield = var_90_1
	arg_90_1._solitaryOathFx = require("src.ui.effects").holy_barrier.newSturdyShieldFX()

	return var_90_1
end

function __recovered_scope_0.var_0_67.clear(arg_91_0)
	arg_91_0._solitaryOathActive = nil

	for iter_91_0, iter_91_1 in ipairs(arg_91_0.allies or {}) do
		iter_91_1._solitaryOathShield, iter_91_1._solitaryOathFx = nil
	end
end

function __recovered_scope_0.var_0_67.beginBattle(arg_92_0)
	__recovered_scope_0.var_0_67.clear(arg_92_0)

	local var_92_0 = 0

	for iter_92_0, iter_92_1 in ipairs(arg_92_0.ui and arg_92_0.ui._itemPurchased or {}) do
		if iter_92_1.key == "SolitaryOath" then
			var_92_0 = math.max(var_92_0, require("src.game.item").levelValue(iter_92_1, "shieldMaxHpRatio", iter_92_1.shieldMaxHpRatio or {
				0.2,
				0.3
			}))
		end
	end

	local var_92_1 = {}

	for iter_92_2, iter_92_3 in ipairs(arg_92_0.allies or {}) do
		if __recovered_scope_0.var_0_68(iter_92_3) then
			var_92_1[#var_92_1 + 1] = iter_92_3
		end
	end

	arg_92_0._solitaryOathActive = var_92_0 > 0 and #var_92_1 > 0 and #var_92_1 <= 3

	if not arg_92_0._solitaryOathActive then
		return
	end

	for iter_92_4, iter_92_5 in ipairs(var_92_1) do
		__recovered_scope_0.var_0_67.grant(arg_92_0, iter_92_5, (iter_92_5.maxhp or 0) * var_92_0)
	end

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_92_0, "SolitaryOath", false)
	end
end

function __recovered_scope_0.var_0_67.absorb(arg_93_0, arg_93_1, arg_93_2, arg_93_3, arg_93_4)
	local var_93_0 = math.max(0, tonumber(arg_93_1) or 0)

	if not __recovered_scope_0.var_0_67.hasShield(arg_93_0) or arg_93_2 and (arg_93_2.hpCost or arg_93_2.hpLoss or arg_93_2.selfDamage) then
		return var_93_0
	end

	local var_93_1 = arg_93_0._solitaryOathShield
	local var_93_2 = math.min(var_93_0, var_93_1.hp)

	var_93_1.hp = var_93_1.hp - var_93_2

	if var_93_2 > 0 then
		arg_93_0._factionShieldHitT = 0.35

		require("src.ui.effects").holy_barrier.hit(arg_93_0, false, "_solitaryOathFx")
	end

	if var_93_1.hp <= 0 then
		arg_93_0._solitaryOathShield = nil

		require("src.game.combat").shield_break.depleted(arg_93_3, arg_93_0, var_93_1, "SolitaryOath", var_93_2, arg_93_4, arg_93_2)
	end

	return var_93_0 - var_93_2
end

function __recovered_scope_0.var_0_67.update(arg_94_0)
	for iter_94_0, iter_94_1 in ipairs(arg_94_0.allies or {}) do
		if arg_94_0.mode ~= "battle" or not iter_94_1.alive or iter_94_1.dying then
			iter_94_1._solitaryOathShield, iter_94_1._solitaryOathFx = nil
		end
	end
end

 __recovered_scope_0.var_0_69 = __recovered_scope_0.var_0_67
 __recovered_scope_0.var_0_70 = nil
 __recovered_scope_0.var_0_71 = {
	removeLegacyBonus = function(arg_95_0)
		for iter_95_0, iter_95_1 in ipairs(arg_95_0 and arg_95_0.allies or {}) do
			local var_95_0 = math.max(0, tonumber(iter_95_1._sturdyShieldHpBonus) or 0)

			if var_95_0 > 0 then
				iter_95_1.maxhp = math.max(1, (iter_95_1.maxhp or iter_95_1.hp or 1) - var_95_0)
				iter_95_1.hp = math.min(iter_95_1.maxhp, math.max((iter_95_1.hp or 0) > 0 and 1 or 0, (iter_95_1.hp or 0) - var_95_0))
			end

			iter_95_1._sturdyShieldHpBonus, iter_95_1._sturdyShieldBaseMaxHp = nil
		end
	end
}

function __recovered_scope_0.var_0_71.beginBattle(arg_96_0)
	__recovered_scope_0.var_0_71.removeLegacyBonus(arg_96_0)

	local var_96_0

	for iter_96_0, iter_96_1 in ipairs(arg_96_0.ui and arg_96_0.ui._itemPurchased or {}) do
		if iter_96_1.key == "SturdyShield" then
			var_96_0 = iter_96_1

			break
		end
	end

	for iter_96_2, iter_96_3 in ipairs(arg_96_0.allies or {}) do
		iter_96_3._sturdyShield, iter_96_3._sturdyShieldReady, iter_96_3._sturdyShieldFx = nil

		if var_96_0 and iter_96_3.side == "ally" and iter_96_3.alive and not iter_96_3.dying and (iter_96_3.hp or 0) > 0 then
			local var_96_1 = require("src.game.item").levelValue(var_96_0, "shieldMaxHpRatio", var_96_0.shieldMaxHpRatio or {
				0.12,
				0.18,
				0.24
			})
			local var_96_2 = math.max(0, (tonumber(iter_96_3.maxhp) or 0) * var_96_1)

			if var_96_2 > 0 then
				iter_96_3._sturdyShield = {
					started = false,
					hp = var_96_2,
					max = var_96_2,
					t = var_96_0.shieldDuration or 5
				}

				require("src.game.combat").shield_break.register(arg_96_0, iter_96_3._sturdyShield, "SturdyShield")
				require("src.ui.effects").holy_barrier.receiveSturdyShield(iter_96_3)
			end
		end
	end
end

function __recovered_scope_0.var_0_71.hasShield(arg_97_0)
	local var_97_0 = arg_97_0 and arg_97_0._sturdyShield

	return var_97_0 ~= nil and var_97_0.t > 0 and var_97_0.hp > 0
end

function __recovered_scope_0.var_0_71.absorb(arg_98_0, arg_98_1, arg_98_2, arg_98_3, arg_98_4)
	local var_98_0 = math.max(0, tonumber(arg_98_1) or 0)

	if not __recovered_scope_0.var_0_71.hasShield(arg_98_0) or arg_98_2 and (arg_98_2.hpCost or arg_98_2.hpLoss or arg_98_2.selfDamage) then
		return var_98_0
	end

	local var_98_1 = arg_98_0._sturdyShield
	local var_98_2 = math.min(var_98_0, var_98_1.hp)

	var_98_1.hp = var_98_1.hp - var_98_2

	if var_98_2 > 0 then
		var_98_1.started = true
		arg_98_0._factionShieldHitT = 0.35

		require("src.ui.effects").holy_barrier.hit(arg_98_0, false, true)
	end

	if var_98_1.hp <= 0 then
		arg_98_0._sturdyShield = nil

		require("src.game.combat").shield_break.depleted(arg_98_3, arg_98_0, var_98_1, "SturdyShield", var_98_2, arg_98_4, arg_98_2)
	end

	return var_98_0 - var_98_2
end

function __recovered_scope_0.var_0_71.update(arg_99_0, arg_99_1)
	__recovered_scope_0.var_0_71.removeLegacyBonus(arg_99_0)

	for iter_99_0, iter_99_1 in ipairs(arg_99_0.allies or {}) do
		if arg_99_0.mode ~= "battle" or not iter_99_1.alive or iter_99_1.dying then
			iter_99_1._sturdyShield, iter_99_1._sturdyShieldReady, iter_99_1._sturdyShieldFx = nil
		elseif iter_99_1._sturdyShield then
			if iter_99_1._sturdyShield.started then
				iter_99_1._sturdyShield.t = iter_99_1._sturdyShield.t - math.max(0, tonumber(arg_99_1) or 0)
			end

			if not __recovered_scope_0.var_0_71.hasShield(iter_99_1) then
				iter_99_1._sturdyShield = nil
			end
		end
	end
end

 __recovered_scope_0.var_0_72 = __recovered_scope_0.var_0_71
 __recovered_scope_0.var_0_73 = nil
 __recovered_scope_0.var_0_74 = {
	register = function(arg_100_0, arg_100_1, arg_100_2)
		if not arg_100_0 or not arg_100_1 then
			return arg_100_1
		end

		if not arg_100_1.pool_id then
			arg_100_0._shieldPoolNextId = (arg_100_0._shieldPoolNextId or 0) + 1
			arg_100_1.pool_id = arg_100_0._shieldPoolNextId
		else
			arg_100_0._shieldPoolNextId = math.max(arg_100_0._shieldPoolNextId or 0, tonumber(arg_100_1.pool_id) or 0)
		end

		arg_100_1.origin = arg_100_2

		return arg_100_1
	end
}

function __recovered_scope_0.var_0_74.depleted(arg_101_0, arg_101_1, arg_101_2, arg_101_3, arg_101_4, arg_101_5, arg_101_6)
	if not arg_101_0 or arg_101_0.mode ~= "battle" or not arg_101_1 or arg_101_1.side ~= "ally" or not arg_101_2 or arg_101_2._breakReported or not (arg_101_2.hp <= 0) or not ((arg_101_4 or 0) > 0) or not ((arg_101_2.t or 0) > 0) or not arg_101_5 or arg_101_5.side ~= "enemy" or not not arg_101_5._tricksterCharm then
		return
	end

	arg_101_6 = arg_101_6 or {}

	if arg_101_3 == "Faction" or arg_101_5.isFirebreatherBurn or arg_101_5.isPoison or arg_101_5.isDamageOverTime or arg_101_6.dot or arg_101_6.burn or arg_101_6.poison or arg_101_6.bleed or arg_101_6.damageOverTime or arg_101_6.hpCost or arg_101_6.hpLoss or arg_101_6.selfDamage or arg_101_6.indirect or arg_101_6.directDamage == false then
		return
	end

	__recovered_scope_0.var_0_74.register(arg_101_0, arg_101_2, arg_101_3)

	arg_101_2._breakReported = true

	local var_101_0 = {
		unit = arg_101_1,
		pool_id = arg_101_2.pool_id,
		origin = arg_101_3,
		source = arg_101_5,
		absorbed = arg_101_4
	}

	require("src.game.combat").broken_shield.onBreak(arg_101_0, var_101_0)

	if type(arg_101_0.onShieldBroken) == "function" then
		arg_101_0:onShieldBroken(var_101_0)
	end

	return var_101_0
end

 __recovered_scope_0.var_0_75 = __recovered_scope_0.var_0_74
 __recovered_scope_0.var_0_76 = nil
 __recovered_scope_0.var_0_77 = {}

 function __recovered_scope_0.var_0_78(arg_102_0)
	return arg_102_0 and arg_102_0.side == "ally" and arg_102_0.alive and not arg_102_0.dying and (arg_102_0.hp or 0) > 0 and not arg_102_0.isSummon and not arg_102_0.isShadowMinion and not arg_102_0.isUndyingSoul and not arg_102_0._venomMawSwallowed and not arg_102_0._succubusCharm and not arg_102_0._wastelandPiperCharm
end

 function __recovered_scope_0.var_0_79(arg_103_0, arg_103_1, arg_103_2)
	if require("src.game.unit_abilities").dimensional_duel.separated(arg_103_0, arg_103_1, arg_103_2) then
		return false
	end

	if tonumber(arg_103_0.stage or arg_103_0.currentStage or 1) ~= 6 then
		return true
	end

	local var_103_0 = require("src.game.combat").stage6_rift
	local var_103_1 = var_103_0.entityLane(arg_103_0, arg_103_1)
	local var_103_2 = var_103_0.entityLane(arg_103_0, arg_103_2)

	local function var_103_3(arg_104_0)
		return arg_104_0._stage6WaveLane == "upper" and -1 or arg_104_0._stage6WaveLane == "lower" and 1 or nil
	end

	local var_103_4

	var_103_4, var_103_2 = var_103_1 or var_103_3(arg_103_1), var_103_2 or var_103_3(arg_103_2)

	return var_103_4 ~= nil and var_103_2 ~= nil and var_103_4 == var_103_2
end

function __recovered_scope_0.var_0_77.beginBattle(arg_105_0)
	arg_105_0._brokenShieldCooldown = 0
	arg_105_0._brokenShieldUsed = nil

	for iter_105_0, iter_105_1 in ipairs(arg_105_0.allies or {}) do
		iter_105_1._brokenShield, iter_105_1._brokenShieldFx, iter_105_1._brokenShieldDR = nil
	end
end

function __recovered_scope_0.var_0_77.hasShield(arg_106_0)
	local var_106_0 = arg_106_0 and arg_106_0._brokenShield

	return var_106_0 ~= nil and var_106_0.hp > 0 and var_106_0.t > 0
end

function __recovered_scope_0.var_0_77.onBreak(arg_107_0, arg_107_1)
	if not arg_107_0 or arg_107_0.mode ~= "battle" or not arg_107_1 or not arg_107_1.unit or arg_107_1.origin == "BrokenShield" or arg_107_1.origin == "Faction" or (arg_107_0._brokenShieldCooldown or 0) > 1e-09 then
		return
	end

	local var_107_0

	for iter_107_0, iter_107_1 in ipairs(arg_107_0.ui and arg_107_0.ui._itemPurchased or {}) do
		if iter_107_1.key == "BrokenShield" then
			var_107_0 = iter_107_1

			break
		end
	end

	if not var_107_0 then
		return
	end

	local var_107_1
	local var_107_2

	for iter_107_2, iter_107_3 in ipairs(arg_107_0.allies or {}) do
		if iter_107_3 ~= arg_107_1.unit and __recovered_scope_0.var_0_78(iter_107_3) and __recovered_scope_0.var_0_79(arg_107_0, arg_107_1.unit, iter_107_3) then
			local var_107_3 = iter_107_3.hp / math.max(1, iter_107_3.maxhp or 1)

			if not var_107_2 or var_107_3 < var_107_2 then
				var_107_1, var_107_2 = iter_107_3, var_107_3
			end
		end
	end

	if not var_107_1 then
		return
	end

	local var_107_4 = (var_107_1.maxhp or 1) * require("src.game.item").levelValue(var_107_0, "shieldMaxHpRatio", var_107_0.shieldMaxHpRatio or {
		0.06,
		0.09,
		0.12
	})
	local var_107_5 = __recovered_scope_0.var_0_77.hasShield(var_107_1) and var_107_1._brokenShield or nil
	local var_107_6 = math.max(var_107_4, var_107_5 and var_107_5.hp or 0)
	local var_107_7 = {
		hp = var_107_6,
		max = var_107_6,
		t = var_107_0.shieldDuration or 4
	}

	require("src.game.combat").shield_break.register(arg_107_0, var_107_7, "BrokenShield")

	var_107_1._brokenShield = var_107_7
	var_107_1._brokenShieldFx = require("src.ui.effects").holy_barrier.newSturdyShieldFX()
	var_107_1.hpbarShowT = math.max(var_107_1.hpbarShowT or 0, var_107_7.t)
	arg_107_0._brokenShieldCooldown = var_107_0.triggerCooldown or 3

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_107_0, "BrokenShield", false)
	end

	return var_107_1, var_107_7
end

function __recovered_scope_0.var_0_77.absorb(arg_108_0, arg_108_1, arg_108_2, arg_108_3, arg_108_4)
	local var_108_0 = math.max(0, tonumber(arg_108_1) or 0)

	if not __recovered_scope_0.var_0_77.hasShield(arg_108_0) or arg_108_4 and (arg_108_4.hpCost or arg_108_4.hpLoss or arg_108_4.selfDamage) then
		return var_108_0
	end

	local var_108_1 = arg_108_0._brokenShield
	local var_108_2 = math.min(var_108_0, var_108_1.hp)

	var_108_1.hp = var_108_1.hp - var_108_2

	if var_108_2 > 0 then
		arg_108_0._factionShieldHitT = 0.35

		require("src.ui.effects").holy_barrier.hit(arg_108_0, false, "_brokenShieldFx")
	end

	if var_108_1.hp <= 0 then
		arg_108_0._brokenShield = nil

		require("src.game.combat").shield_break.depleted(arg_108_2, arg_108_0, var_108_1, "BrokenShield", var_108_2, arg_108_3, arg_108_4)
	end

	return var_108_0 - var_108_2
end

function __recovered_scope_0.var_0_77.update(arg_109_0, arg_109_1)
	local var_109_0 = math.max(0, tonumber(arg_109_1) or 0)

	arg_109_0._brokenShieldCooldown = math.max(0, (arg_109_0._brokenShieldCooldown or 0) - var_109_0)

	for iter_109_0, iter_109_1 in ipairs(arg_109_0.allies or {}) do
		iter_109_1._brokenShieldDR = nil

		if arg_109_0.mode ~= "battle" or not iter_109_1.alive or iter_109_1.dying then
			iter_109_1._brokenShield, iter_109_1._brokenShieldFx = nil
		elseif iter_109_1._brokenShield then
			iter_109_1._brokenShield.t = iter_109_1._brokenShield.t - var_109_0

			if not __recovered_scope_0.var_0_77.hasShield(iter_109_1) then
				iter_109_1._brokenShield = nil
			end
		end
	end
end

 __recovered_scope_0.var_0_80 = __recovered_scope_0.var_0_77
 __recovered_scope_0.var_0_81 = nil
 __recovered_scope_0.var_0_82 = {}

 function __recovered_scope_0.var_0_83(arg_110_0)
	for iter_110_0, iter_110_1 in ipairs(arg_110_0 and arg_110_0.ui and arg_110_0.ui._itemPurchased or {}) do
		if iter_110_1.key == "FrontlineArmor" or iter_110_1.id == "06" then
			return iter_110_1
		end
	end
end

 function __recovered_scope_0.var_0_84(arg_111_0)
	return arg_111_0 and not arg_111_0.isSummon and not arg_111_0.isShadowMinion and not arg_111_0.isFireSpirit and not arg_111_0.isUndyingSoul and (not arg_111_0.sym or not arg_111_0.sym:find("ENEMY_", 1, true))
end

 function __recovered_scope_0.var_0_85(arg_112_0)
	local var_112_0
	local var_112_1
	local var_112_2
	local var_112_3

	for iter_112_0, iter_112_1 in ipairs(arg_112_0.rosterUnits or {}) do
		if __recovered_scope_0.var_0_84(iter_112_1) then
			local var_112_4 = tonumber(iter_112_1.x) or 0
			local var_112_5 = tonumber(iter_112_1.y) or 0

			if not var_112_0 or var_112_2 < var_112_4 or var_112_4 == var_112_2 and var_112_3 < var_112_5 then
				var_112_0, var_112_1, var_112_2, var_112_3 = iter_112_1, iter_112_0, var_112_4, var_112_5
			end
		end
	end

	return var_112_0, var_112_1
end

function __recovered_scope_0.var_0_82.target(arg_113_0)
	if not arg_113_0 then
		return nil
	end

	if arg_113_0.mode == "battle" then
		return arg_113_0._frontlineArmorTarget
	end

	if __recovered_scope_0.var_0_83(arg_113_0) then
		return __recovered_scope_0.var_0_85(arg_113_0)
	end
end

function __recovered_scope_0.var_0_82.beginBattle(arg_114_0)
	arg_114_0._frontlineArmorTarget, arg_114_0._frontlineArmorReduction = nil

	local var_114_0 = __recovered_scope_0.var_0_83(arg_114_0)

	if not var_114_0 then
		return
	end

	local var_114_1, var_114_2 = __recovered_scope_0.var_0_85(arg_114_0)
	local var_114_3

	if var_114_1 then
		for iter_114_0, iter_114_1 in ipairs(arg_114_0.allies or {}) do
			if iter_114_1.rosterIndex == var_114_2 and __recovered_scope_0.var_0_84(iter_114_1) then
				var_114_3 = iter_114_1

				break
			end
		end
	else
		local var_114_4
		local var_114_5

		for iter_114_2, iter_114_3 in ipairs(arg_114_0.allies or {}) do
			if __recovered_scope_0.var_0_84(iter_114_3) and iter_114_3.alive and not iter_114_3.dying and (iter_114_3.hp or 0) > 0 then
				local var_114_6 = tonumber(iter_114_3.x) or 0
				local var_114_7 = tonumber(iter_114_3.y) or 0

				if not var_114_3 or var_114_4 < var_114_6 or var_114_6 == var_114_4 and var_114_5 < var_114_7 then
					var_114_3, var_114_4, var_114_5 = iter_114_3, var_114_6, var_114_7
				end
			end
		end
	end

	if not var_114_3 then
		return
	end

	local var_114_8 = require("src.game.item").levelValue(var_114_0, "damageReduction", var_114_0.damageReduction or {
		0.1,
		0.15,
		0.2
	})

	arg_114_0._frontlineArmorTarget = var_114_3
	arg_114_0._frontlineArmorReduction = math.max(0, math.min(1, var_114_8 or 0))
end

function __recovered_scope_0.var_0_82.reduction(arg_115_0, arg_115_1, arg_115_2, arg_115_3)
	if not arg_115_0 or arg_115_0.mode ~= "battle" or not arg_115_1 or arg_115_1 ~= arg_115_0._frontlineArmorTarget or not arg_115_1.alive or arg_115_1.dying or not ((arg_115_1.hp or 0) > 0) or not arg_115_2 then
		return 0
	end

	arg_115_3 = arg_115_3 or {}

	if arg_115_2.isPoison or arg_115_2.isFirebreatherBurn or arg_115_2.isDragonkinBurn or arg_115_2.isDamageOverTime or arg_115_2.isReflection or arg_115_2.reflected or arg_115_3.dot or arg_115_3.poison or arg_115_3.bleed or arg_115_3.burn or arg_115_3.damageOverTime or arg_115_3.indirect or arg_115_3.directDamage == false or arg_115_3.reflected or arg_115_3.reflection or arg_115_3.hpCost or arg_115_3.hpLoss or arg_115_3.selfDamage or arg_115_3.healthCost or arg_115_3.factionAbyssShared or arg_115_3.sharedDamage or arg_115_3.damageShared then
		return 0
	end

	return arg_115_0._frontlineArmorReduction or 0
end

 __recovered_scope_0.var_0_86 = __recovered_scope_0.var_0_82
 __recovered_scope_0.var_0_87 = nil
 __recovered_scope_0.var_0_88 = {
	beginBattle = function(arg_116_0)
		local var_116_0 = 0
		local var_116_1 = 1
		local var_116_2 = 1

		for iter_116_0, iter_116_1 in ipairs(arg_116_0.ui and arg_116_0.ui._itemPurchased or {}) do
			if iter_116_1.key == "TenseString" then
				var_116_0 = math.max(var_116_0, require("src.game.item").levelValue(iter_116_1, "basicAttackDamageBonus", iter_116_1.basicAttackDamageBonus or {
					0.45,
					0.65
				}))
				var_116_1, var_116_2 = iter_116_1.attackIntervalMul or 1.3, iter_116_1.projectileVisualScale or 1.15
			end
		end

		for iter_116_2, iter_116_3 in ipairs(arg_116_0.allies or {}) do
			iter_116_3._tenseStringBonus, iter_116_3._tenseStringInterval, iter_116_3._tenseStringVisualScale = nil

			if var_116_0 > 0 and iter_116_3.side == "ally" and iter_116_3.alive and not iter_116_3.dying and (iter_116_3.hp or 0) > 0 and not iter_116_3.isSummon and not iter_116_3.isShadowMinion and not iter_116_3.isUndyingSoul and not iter_116_3.isFireSpirit and not iter_116_3.isTower and (iter_116_3.role == "archer" or iter_116_3.role == "mage" or (iter_116_3.distance or 0) >= 70) then
				iter_116_3._tenseStringBonus, iter_116_3._tenseStringInterval, iter_116_3._tenseStringVisualScale = var_116_0, var_116_1, var_116_2
			end
		end
	end,
	applyStatPreview = function(arg_117_0, arg_117_1, arg_117_2, arg_117_3)
		if not arg_117_0 or not arg_117_1 then
			return
		end

		local var_117_0 = arg_117_1._tenseStringBonus or 0
		local var_117_1 = arg_117_1._tenseStringInterval or 1

		if arg_117_2 or arg_117_3 then
			var_117_0, var_117_1 = 0, 1

			if not arg_117_1.isSummon and not arg_117_1.isShadowMinion and not arg_117_1.isUndyingSoul and not arg_117_1.isFireSpirit and not arg_117_1.isTower and (arg_117_1.role == "archer" or arg_117_1.role == "mage" or arg_117_1.sym == "A" or arg_117_1.sym == "M" or (arg_117_0.distance or 0) >= 70) then
				for iter_117_0, iter_117_1 in ipairs(arg_117_2 and arg_117_2.ui and arg_117_2.ui._itemPurchased or arg_117_3 and arg_117_3._itemPurchased or {}) do
					if iter_117_1.key == "TenseString" then
						var_117_0 = math.max(var_117_0, require("src.game.item").levelValue(iter_117_1, "basicAttackDamageBonus", iter_117_1.basicAttackDamageBonus or {
							0.45,
							0.65
						}))
						var_117_1 = iter_117_1.attackIntervalMul or 1.3
					end
				end
			end
		end

		if var_117_0 <= 0 then
			return
		end

		arg_117_0.atk = (arg_117_0.atk or 0) * (1 + var_117_0)
		arg_117_0.aspd = (arg_117_0.aspd or 0) / math.max(0.01, var_117_1)
		arg_117_0.tenseStringActive = true
		arg_117_0.aspdDebuffActive = true
	end
}
 __recovered_scope_0.var_0_89 = nil
 __recovered_scope_0.var_0_90 = {}

__recovered_scope_0.var_0_90.key = "WoodenWatchtower"
__recovered_scope_0.var_0_90.seatMarker = {
	y = 48,
	x = 24.5
}

 __recovered_scope_0.var_0_91 = nil

 function __recovered_scope_0.var_0_92(arg_118_0)
	return arg_118_0 and arg_118_0.alive ~= false and not arg_118_0.dying and (tonumber(arg_118_0.hp) or 1) > 0
end

function __recovered_scope_0.var_0_90.item(arg_119_0)
	for iter_119_0, iter_119_1 in ipairs(arg_119_0 and arg_119_0.ui and arg_119_0.ui._itemPurchased or {}) do
		if iter_119_1.key == __recovered_scope_0.var_0_90.key then
			return iter_119_1
		end
	end
end

function __recovered_scope_0.var_0_90.eligible(arg_120_0)
	if not arg_120_0 or arg_120_0.isSummon or arg_120_0.isClone or arg_120_0.isShadowMinion or arg_120_0.isFireSpirit or arg_120_0.isUndyingSoul or arg_120_0.isTower then
		return false
	end

	local var_120_0 = arg_120_0.role or arg_120_0.stats and arg_120_0.stats.role or arg_120_0.base and arg_120_0.base.role

	return var_120_0 == "archer" or var_120_0 == "mage" or var_120_0 == "ranged" or arg_120_0.sym == "A" or arg_120_0.sym == "M" or (tonumber(arg_120_0.distance or arg_120_0.stats and arg_120_0.stats.distance) or 0) >= 70
end

function __recovered_scope_0.var_0_90.mounted(arg_121_0)
	local var_121_0 = arg_121_0 and arg_121_0._watchtower

	return var_121_0 and var_121_0.owner == arg_121_0 and not var_121_0.destroyed and (var_121_0.hp or 0) > 0 or false
end

function __recovered_scope_0.var_0_90.rect(arg_122_0, arg_122_1)
	local var_122_0 = __recovered_scope_0.var_0_90.item(arg_122_0)

	arg_122_1 = arg_122_1 or arg_122_0 and arg_122_0.area

	if not var_122_0 or not arg_122_1 then
		return
	end

	local var_122_1 = math.max(1, math.floor((tonumber(arg_122_0.ui and arg_122_0.ui.battle and arg_122_0.ui.battle.allySize32) or 64) / 32))
	local var_122_2
	local var_122_3
	local var_122_4
	local var_122_5

	if arg_122_0.getRosterClamp then
		var_122_2, var_122_3, var_122_4, var_122_5 = arg_122_0:getRosterClamp(arg_122_1)
	end

	local var_122_6 = math.max(arg_122_1.x + 26 * var_122_1, var_122_2 or arg_122_1.x)
	local var_122_7 = math.max(var_122_6, math.min(arg_122_1.x + arg_122_1.w - 26 * var_122_1, var_122_3 or arg_122_1.x + arg_122_1.w))
	local var_122_8

	var_122_8, var_122_5 = var_122_4 or arg_122_1.y + arg_122_1.h * 0.5, var_122_5 or arg_122_1.y + arg_122_1.h * 0.85

	local var_122_9 = math.floor(math.max(var_122_6, math.min(var_122_7, arg_122_1.x + arg_122_1.w * 0.2)) + 0.5)
	local var_122_10 = var_122_8
	local var_122_11 = math.floor(var_122_10 + 12 * var_122_1 + 0.5)

	if __recovered_scope_0.var_0_39.blocksWorldPoint(arg_122_0, var_122_9, var_122_11) then
		var_122_9, var_122_11 = __recovered_scope_0.var_0_43.clampPoint(arg_122_0, var_122_9, var_122_11, 0, 0)
		var_122_10 = var_122_11 - 12 * var_122_1
	end

	return {
		x = var_122_9 - 25 * var_122_1,
		y = var_122_11 - 70 * var_122_1,
		w = 50 * var_122_1,
		h = 70 * var_122_1,
		cx = var_122_9,
		footY = var_122_11,
		centerY = var_122_10,
		scale = var_122_1,
		minX = var_122_6,
		maxX = var_122_7,
		minY = var_122_8,
		maxY = var_122_5
	}
end

function __recovered_scope_0.var_0_90.contains(arg_123_0, arg_123_1, arg_123_2, arg_123_3)
	local var_123_0 = __recovered_scope_0.var_0_90.rect(arg_123_0, arg_123_3)

	return var_123_0 and arg_123_1 >= var_123_0.x and arg_123_1 <= var_123_0.x + var_123_0.w and arg_123_2 >= var_123_0.y + 10 * var_123_0.scale and arg_123_2 < var_123_0.y + var_123_0.h * 0.6 or false
end

function __recovered_scope_0.var_0_90.visualY(arg_124_0, arg_124_1)
	return (arg_124_1 or arg_124_0 and arg_124_0.y or 0) - (arg_124_0 and arg_124_0._watchtowerSeatLift or 0) - (arg_124_0 and arg_124_0._held and arg_124_0.lift and math.floor((arg_124_0.lift.offset or 0) + 0.5) or 0)
end

function __recovered_scope_0.var_0_90.canBoard(arg_125_0, arg_125_1)
	if not arg_125_0 or arg_125_0.mode == "battle" or not __recovered_scope_0.var_0_90.item(arg_125_0) or not __recovered_scope_0.var_0_90.eligible(arg_125_1) then
		return false
	end

	local var_125_0 = false

	for iter_125_0, iter_125_1 in ipairs(arg_125_0.rosterUnits or {}) do
		if iter_125_1 == arg_125_1 then
			var_125_0 = true
		end

		if iter_125_1 ~= arg_125_1 and iter_125_1._watchtowerSeated then
			return false
		end
	end

	return var_125_0
end

function __recovered_scope_0.var_0_90.dragRegion(arg_126_0, arg_126_1, arg_126_2, arg_126_3, arg_126_4)
	if not __recovered_scope_0.var_0_90.canBoard(arg_126_0, arg_126_1) then
		return false
	end

	local var_126_0 = __recovered_scope_0.var_0_90.rect(arg_126_0, arg_126_4)

	if not var_126_0 then
		return false
	end

	local var_126_1 = 16 * var_126_0.scale
	local var_126_2 = arg_126_0.getUnitAssetForAlly and arg_126_0:getUnitAssetForAlly(arg_126_1)
	local var_126_3 = var_126_2 and var_126_1 * (var_126_2.frameW or 32) / math.max(1, var_126_2.frameH or 32) or var_126_1

	arg_126_3 = __recovered_scope_0.var_0_90.visualY(arg_126_1, arg_126_3)

	return arg_126_2 + var_126_3 >= var_126_0.x and arg_126_2 - var_126_3 <= var_126_0.x + var_126_0.w and arg_126_3 + var_126_1 >= var_126_0.y and arg_126_3 - var_126_1 <= var_126_0.footY
end

function __recovered_scope_0.var_0_90.overlaps(arg_127_0, arg_127_1, arg_127_2, arg_127_3, arg_127_4)
	if not arg_127_1 then
		return false
	end

	arg_127_2, arg_127_3 = arg_127_2 or arg_127_1.x or 0, arg_127_3 or arg_127_1.y or 0

	if not __recovered_scope_0.var_0_90.dragRegion(arg_127_0, arg_127_1, arg_127_2, arg_127_3, arg_127_4) then
		return false
	end

	local var_127_0 = __recovered_scope_0.var_0_90.rect(arg_127_0, arg_127_4)
	local var_127_1 = arg_127_0.getUnitAssetForAlly and arg_127_0:getUnitAssetForAlly(arg_127_1)
	local var_127_2 = arg_127_1.anim and arg_127_1.anim.name or "idle"
	local var_127_3 = arg_127_1.anim and arg_127_1.anim.frame or 1
	local var_127_4 = var_127_1 and var_127_1.quads and var_127_1.quads[var_127_2] and var_127_1.quads[var_127_2][var_127_3]

	if not var_127_4 and var_127_1 and var_127_1.quads and var_127_1.quads.idle then
		var_127_4 = var_127_1.quads.idle[1]
	end

	if not var_127_4 or not var_127_1.imageData then
		return __recovered_scope_0.var_0_90.contains(arg_127_0, arg_127_2, __recovered_scope_0.var_0_90.visualY(arg_127_1, arg_127_3), arg_127_4)
	end

	if not __recovered_scope_0.var_0_91 then
		__recovered_scope_0.var_0_91 = love.image.newImageData("src/sprites/background/mainbackground/Watchtower.png")
	end

	local var_127_5, var_127_6, var_127_7, var_127_8 = var_127_4:getViewport()
	local var_127_9 = 32 * var_127_0.scale / math.max(1, var_127_1.frameH or var_127_8)
	local var_127_10 = math.floor(arg_127_2 - var_127_7 * var_127_9 * 0.5)
	local var_127_11 = math.floor(__recovered_scope_0.var_0_90.visualY(arg_127_1, arg_127_3) - 16 * var_127_0.scale)
	local var_127_12 = math.max(var_127_10, var_127_0.x)
	local var_127_13 = math.min(var_127_10 + var_127_7 * var_127_9, var_127_0.x + var_127_0.w)
	local var_127_14 = math.max(var_127_11, var_127_0.y)
	local var_127_15 = math.min(var_127_11 + var_127_8 * var_127_9, var_127_0.y + var_127_0.h * 0.6)

	for iter_127_0 = var_127_14, var_127_15 - 1 do
		for iter_127_1 = var_127_12, var_127_13 - 1 do
			local var_127_16 = math.floor((iter_127_1 - var_127_0.x) / var_127_0.scale)
			local var_127_17 = math.floor((iter_127_0 - var_127_0.y) / var_127_0.scale)
			local var_127_18, var_127_19, var_127_20, var_127_21 = __recovered_scope_0.var_0_91:getPixel(var_127_16, var_127_17)

			if var_127_21 > 0.01 then
				local var_127_22 = math.floor((iter_127_1 - var_127_10) / var_127_9)
				local var_127_23 = math.floor((iter_127_0 - var_127_11) / var_127_9)

				if (arg_127_1.facing or 1) < 0 then
					var_127_22 = var_127_7 - 1 - var_127_22
				end

				local var_127_24, var_127_25, var_127_26, var_127_27 = var_127_1.imageData:getPixel(var_127_5 + var_127_22, var_127_6 + var_127_23)

				if var_127_27 > 0.01 then
					return true
				end
			end
		end
	end

	return false
end

function __recovered_scope_0.var_0_90.unboard(arg_128_0, arg_128_1)
	if not arg_128_0 or arg_128_0.mode == "battle" or not arg_128_1 then
		return false
	end

	arg_128_1._watchtowerSeated, arg_128_1._watchtowerSeatLift = nil

	return true
end

function __recovered_scope_0.var_0_90.board(arg_129_0, arg_129_1, arg_129_2, arg_129_3, arg_129_4)
	if not __recovered_scope_0.var_0_90.canBoard(arg_129_0, arg_129_1) then
		return false
	end

	local var_129_0 = arg_129_0.getUnitAssetForAlly and arg_129_0:getUnitAssetForAlly(arg_129_1)

	if var_129_0 and var_129_0.imageData then
		if not __recovered_scope_0.var_0_90.overlaps(arg_129_0, arg_129_1, nil, nil, arg_129_4) then
			return false
		end
	elseif not __recovered_scope_0.var_0_90.contains(arg_129_0, arg_129_2, arg_129_3, arg_129_4) then
		return false
	end

	arg_129_1._watchtowerSeated = true
	arg_129_1._held, arg_129_1.lift = false

	__recovered_scope_0.var_0_90.update(arg_129_0, 0, arg_129_4)

	return true
end

function __recovered_scope_0.var_0_90.anchor(arg_130_0, arg_130_1, arg_130_2)
	if not arg_130_1 or not arg_130_2 then
		return
	end

	local var_130_0 = arg_130_2.scale * 32
	local var_130_1 = 0
	local var_130_2 = var_130_0 * 0.375

	if arg_130_0.entitySpriteBoundsWorld then
		local var_130_3, var_130_4, var_130_5, var_130_6 = arg_130_0:entitySpriteBoundsWorld(arg_130_1, var_130_0, true)

		if var_130_3 and var_130_4 and var_130_5 and var_130_6 then
			var_130_1, var_130_2 = var_130_3 + var_130_5 * 0.5 - (arg_130_1.x or 0), var_130_4 + var_130_6 - (arg_130_1.y or 0)
		end
	end

	local var_130_7 = arg_130_0.getUnitAssetForAlly and arg_130_0:getUnitAssetForAlly(arg_130_1)

	if var_130_7 then
		local var_130_8, var_130_9 = require("src.ui.effects").frontline_armor.geometry(arg_130_1, var_130_0, var_130_7)

		if var_130_8 and var_130_9 then
			var_130_1, var_130_2 = var_130_8 - (arg_130_1.x or 0), var_130_9 - (arg_130_1.y or 0)
		end
	end

	arg_130_1.x, arg_130_1.y = arg_130_2.x + __recovered_scope_0.var_0_90.seatMarker.x * arg_130_2.scale - var_130_1, arg_130_2.footY - var_130_2
	arg_130_1._watchtowerSeatLift = arg_130_2.footY - (arg_130_2.y + __recovered_scope_0.var_0_90.seatMarker.y * arg_130_2.scale)

	if __recovered_scope_0.var_0_90.mounted(arg_130_1) then
		arg_130_1._watchtower.rect = arg_130_2
	end

	arg_130_1._kb, arg_130_1._posLerp, arg_130_1._stage6RiftPlacementSafeX, arg_130_1._stage6RiftPlacementSafeY = nil

	if arg_130_1.promoteVis then
		arg_130_1.promoteVis.prevX, arg_130_1.promoteVis.prevY = arg_130_1.x, arg_130_1.y
	end
end

function __recovered_scope_0.var_0_90.attackPoint(arg_131_0)
	local var_131_0 = __recovered_scope_0.var_0_90.mounted(arg_131_0) and arg_131_0._watchtower.rect

	if not var_131_0 then
		return
	end

	if not __recovered_scope_0.var_0_91 then
		__recovered_scope_0.var_0_91 = love.image.newImageData("src/sprites/background/mainbackground/Watchtower.png")
	end

	local var_131_1
	local var_131_2
	local var_131_3

	for iter_131_0 = 0, math.floor(__recovered_scope_0.var_0_91:getHeight() * 0.9) - 1 do
		for iter_131_1 = 0, __recovered_scope_0.var_0_91:getWidth() - 1 do
			local var_131_4, var_131_5, var_131_6, var_131_7 = __recovered_scope_0.var_0_91:getPixel(iter_131_1, iter_131_0)

			if var_131_7 > 0.05 then
				local var_131_8 = (iter_131_1 + 0.5 - __recovered_scope_0.var_0_90.seatMarker.x)^2 + (iter_131_0 + 0.5 - __recovered_scope_0.var_0_90.seatMarker.y)^2

				if not var_131_3 or var_131_8 < var_131_3 then
					var_131_1, var_131_2, var_131_3 = iter_131_1, iter_131_0, var_131_8
				end
			end
		end
	end

	if var_131_1 then
		return var_131_0.x + (var_131_1 + 0.5) * var_131_0.scale, var_131_0.y + (var_131_2 + 0.5) * var_131_0.scale
	end
end

function __recovered_scope_0.var_0_90.updateCollider(arg_132_0, arg_132_1, arg_132_2)
	local var_132_0 = __recovered_scope_0.var_0_90.rect(arg_132_0)

	if not var_132_0 then
		return
	end

	arg_132_1.colX, arg_132_1.colY, arg_132_1.colW, arg_132_1.colH = var_132_0.x + 3 * var_132_0.scale, var_132_0.y + 10 * var_132_0.scale, 44 * var_132_0.scale, 53 * var_132_0.scale
	arg_132_1._bodyColX, arg_132_1._bodyColY = var_132_0.x + 3 * var_132_0.scale, var_132_0.y + 40 * var_132_0.scale
	arg_132_1._bodyColW, arg_132_1._bodyColH = 44 * var_132_0.scale, 23 * var_132_0.scale
	arg_132_1._visWidth = arg_132_1._bodyColW
	arg_132_1._visCenterXOff, arg_132_1._visCenterYOff = var_132_0.cx - arg_132_1.x, var_132_0.footY - 20 * var_132_0.scale - arg_132_1.y
end

function __recovered_scope_0.var_0_90.projectileHit(arg_133_0, arg_133_1, arg_133_2)
	local var_133_0 = arg_133_2 and arg_133_2._watchtower and arg_133_2._watchtower.rect

	if not var_133_0 then
		return false
	end

	if not __recovered_scope_0.var_0_91 then
		__recovered_scope_0.var_0_91 = love.image.newImageData("src/sprites/background/mainbackground/Watchtower.png")
	end

	local var_133_1 = arg_133_1 and arg_133_1.quads and arg_133_1.quads[arg_133_0.frame or 1]

	if not arg_133_1 or not arg_133_1.imageData or not var_133_1 then
		local var_133_2 = math.floor(((arg_133_0.x or 0) - var_133_0.x) / var_133_0.scale)
		local var_133_3 = math.floor(((arg_133_0.y or 0) - var_133_0.y) / var_133_0.scale)

		if var_133_2 < 0 or var_133_3 < 0 or var_133_2 >= __recovered_scope_0.var_0_91:getWidth() or var_133_3 >= math.floor(__recovered_scope_0.var_0_91:getHeight() * 0.9) then
			return false
		end

		local var_133_4, var_133_5, var_133_6, var_133_7 = __recovered_scope_0.var_0_91:getPixel(var_133_2, var_133_3)

		return var_133_7 > 0.05
	end

	local var_133_8, var_133_9, var_133_10, var_133_11 = var_133_1:getViewport()
	local var_133_12 = tonumber(arg_133_0.scale) or 2
	local var_133_13 = math.cos(arg_133_0.rot or 0)
	local var_133_14 = math.sin(arg_133_0.rot or 0)

	for iter_133_0 = 0, var_133_11 - 1 do
		for iter_133_1 = 0, var_133_10 - 1 do
			local var_133_15, var_133_16, var_133_17, var_133_18 = arg_133_1.imageData:getPixel(var_133_8 + iter_133_1, var_133_9 + iter_133_0)

			if var_133_18 > 0.05 then
				local var_133_19 = (iter_133_1 + 0.5 - var_133_10 * 0.5) * var_133_12
				local var_133_20 = (iter_133_0 + 0.5 - var_133_11 * 0.5) * var_133_12
				local var_133_21 = (arg_133_0.x or 0) + var_133_19 * var_133_13 - var_133_20 * var_133_14
				local var_133_22 = (arg_133_0.y or 0) + var_133_19 * var_133_14 + var_133_20 * var_133_13
				local var_133_23 = math.floor((var_133_21 - var_133_0.x) / var_133_0.scale)
				local var_133_24 = math.floor((var_133_22 - var_133_0.y) / var_133_0.scale)

				if var_133_23 >= 0 and var_133_24 >= 0 and var_133_23 < __recovered_scope_0.var_0_91:getWidth() and var_133_24 < math.floor(__recovered_scope_0.var_0_91:getHeight() * 0.9) then
					local var_133_25, var_133_26, var_133_27, var_133_28 = __recovered_scope_0.var_0_91:getPixel(var_133_23, var_133_24)

					if var_133_28 > 0.05 then
						return true, var_133_21, var_133_22
					end
				end
			end
		end
	end

	return false
end

function __recovered_scope_0.var_0_90.laserHit(arg_134_0, arg_134_1)
	local var_134_0 = arg_134_1 and arg_134_1._watchtower and arg_134_1._watchtower.rect

	if not var_134_0 then
		return
	end

	if not __recovered_scope_0.var_0_91 then
		__recovered_scope_0.var_0_91 = love.image.newImageData("src/sprites/background/mainbackground/Watchtower.png")
	end

	local var_134_1 = arg_134_0.startX or arg_134_0.x or 0
	local var_134_2 = arg_134_0.startY or arg_134_0.y or 0
	local var_134_3 = (arg_134_0.x or var_134_1) - var_134_1
	local var_134_4 = (arg_134_0.y or var_134_2) - var_134_2
	local var_134_5 = math.sqrt(var_134_3 * var_134_3 + var_134_4 * var_134_4)

	if var_134_5 < 0.001 then
		return
	end

	for iter_134_0 = math.max(0, arg_134_0.minHitTravel or 0), var_134_5 do
		local var_134_6 = var_134_1 + var_134_3 * iter_134_0 / var_134_5
		local var_134_7 = var_134_2 + var_134_4 * iter_134_0 / var_134_5
		local var_134_8 = math.floor((var_134_6 - var_134_0.x) / var_134_0.scale)
		local var_134_9 = math.floor((var_134_7 - var_134_0.y) / var_134_0.scale)

		if var_134_8 >= 0 and var_134_9 >= 0 and var_134_8 < __recovered_scope_0.var_0_91:getWidth() and var_134_9 < math.floor(__recovered_scope_0.var_0_91:getHeight() * 0.9) then
			local var_134_10, var_134_11, var_134_12, var_134_13 = __recovered_scope_0.var_0_91:getPixel(var_134_8, var_134_9)

			if var_134_13 > 0.05 then
				return var_134_6, var_134_7
			end
		end
	end
end

function __recovered_scope_0.var_0_90.beginBattle(arg_135_0)
	arg_135_0._woodenWatchtower = nil

	if not __recovered_scope_0.var_0_90.item(arg_135_0) then
		return
	end

	local var_135_0 = {
		hp = 0,
		maxhp = 0,
		destroyed = false,
		ui = arg_135_0.ui
	}

	arg_135_0._woodenWatchtower = var_135_0

	for iter_135_0, iter_135_1 in ipairs(arg_135_0.allies or {}) do
		local var_135_1 = arg_135_0.rosterUnits and arg_135_0.rosterUnits[iter_135_1.rosterIndex]

		if var_135_1 and var_135_1._watchtowerSeated and __recovered_scope_0.var_0_90.eligible(iter_135_1) and __recovered_scope_0.var_0_92(iter_135_1) then
			var_135_0.owner = iter_135_1
			var_135_0.hp = math.max(1, (tonumber(iter_135_1.maxhp) or 1) * 0.6)
			var_135_0.maxhp = var_135_0.hp
			var_135_0.range = require("src.game.item").levelValue(__recovered_scope_0.var_0_90.item(arg_135_0), "rangeBonus", __recovered_scope_0.var_0_90.item(arg_135_0).rangeBonus or 70)
			iter_135_1._watchtower = var_135_0
			iter_135_1.distance = (tonumber(iter_135_1.distance) or 50) + var_135_0.range

			__recovered_scope_0.var_0_90.anchor(arg_135_0, iter_135_1, __recovered_scope_0.var_0_90.rect(arg_135_0))

			break
		end
	end
end

function __recovered_scope_0.var_0_90.destroy(arg_136_0, arg_136_1)
	if not __recovered_scope_0.var_0_90.mounted(arg_136_0) then
		return false
	end

	local var_136_0 = arg_136_0._watchtower

	var_136_0.destroyed, var_136_0.hp, var_136_0.breakT = true, 0, 0.4

	if not arg_136_1 then
		require("src.audio.procedural_audio").playWatchtowerCollapse(var_136_0.ui)
	end

	local var_136_1 = var_136_0.range or 70

	arg_136_0.distance = math.max(0, (tonumber(arg_136_0.distance) or var_136_1) - var_136_1)
	arg_136_0._watchtowerSeatLift, arg_136_0._watchtower = nil

	return true
end

function __recovered_scope_0.var_0_90.absorb(arg_137_0, arg_137_1, arg_137_2, arg_137_3)
	local var_137_0 = math.max(0, tonumber(arg_137_1) or 0)

	if not __recovered_scope_0.var_0_90.mounted(arg_137_0) or arg_137_2 == arg_137_0 or arg_137_3 and (arg_137_3.hpCost or arg_137_3.hpLoss or arg_137_3.healthCost or arg_137_3.selfDamage or arg_137_3.battlefieldLock) then
		return var_137_0, 0
	end

	local var_137_1 = arg_137_0._watchtower
	local var_137_2 = math.min(var_137_0, var_137_1.hp)

	if var_137_2 > 0 then
		var_137_1.hitT = 0.18
	end

	if var_137_2 >= var_137_1.hp then
		__recovered_scope_0.var_0_90.destroy(arg_137_0)
	else
		var_137_1.hp = var_137_1.hp - var_137_2
	end

	return var_137_0 - var_137_2, var_137_2
end

function __recovered_scope_0.var_0_90.specialTarget(arg_138_0, arg_138_1)
	if not __recovered_scope_0.var_0_90.mounted(arg_138_0) then
		return false
	end

	arg_138_0._watchtower.lastCause = arg_138_1

	return __recovered_scope_0.var_0_90.destroy(arg_138_0)
end

function __recovered_scope_0.var_0_90.targets(arg_139_0, arg_139_1, arg_139_2, arg_139_3)
	if not arg_139_0 or arg_139_0.side ~= "enemy" then
		return arg_139_1
	end

	if not require("src.game.combat").decoy_dummy.canTarget(arg_139_0) then
		local var_139_0

		for iter_139_0, iter_139_1 in ipairs(arg_139_1 or {}) do
			if iter_139_1.isDecoyDummy then
				if not var_139_0 then
					var_139_0 = {}

					for iter_139_2 = 1, iter_139_0 - 1 do
						var_139_0[#var_139_0 + 1] = arg_139_1[iter_139_2]
					end
				end
			elseif var_139_0 then
				var_139_0[#var_139_0 + 1] = iter_139_1
			end
		end

		arg_139_1 = var_139_0 or arg_139_1
	end

	local var_139_1 = require("src.game.combat").decoy_dummy.target(arg_139_3, arg_139_0)

	if var_139_1 and (not arg_139_2 or arg_139_2(var_139_1)) then
		return {
			var_139_1
		}
	end

	local var_139_2 = false

	for iter_139_3, iter_139_4 in ipairs(arg_139_1 or {}) do
		if __recovered_scope_0.var_0_90.mounted(iter_139_4) then
			var_139_2 = true

			break
		end
	end

	if not var_139_2 then
		return arg_139_1
	end

	local var_139_3 = {}
	local var_139_4 = {}

	for iter_139_5, iter_139_6 in ipairs(arg_139_1 or {}) do
		if __recovered_scope_0.var_0_92(iter_139_6) and not iter_139_6.isUndyingSoul and not iter_139_6._venomMawSwallowed and not iter_139_6._wastelandPiperCharm and (not arg_139_2 or arg_139_2(iter_139_6)) then
			local var_139_5 = __recovered_scope_0.var_0_90.mounted(iter_139_6) and var_139_4 or var_139_3

			var_139_5[#var_139_5 + 1] = iter_139_6
		end
	end

	for iter_139_7, iter_139_8 in ipairs(arg_139_3 and arg_139_3.allies or arg_139_1 or {}) do
		if __recovered_scope_0.var_0_92(iter_139_8) and not __recovered_scope_0.var_0_90.mounted(iter_139_8) and not iter_139_8.isUndyingSoul and not iter_139_8._venomMawSwallowed and not iter_139_8._wastelandPiperCharm and (not iter_139_8.isDecoyDummy or require("src.game.combat").decoy_dummy.canTarget(arg_139_0)) then
			return var_139_3
		end
	end

	return var_139_4
end

function __recovered_scope_0.var_0_90.update(arg_140_0, arg_140_1, arg_140_2)
	if not arg_140_0 then
		return
	end

	local var_140_0 = __recovered_scope_0.var_0_90.rect(arg_140_0, arg_140_2)

	if arg_140_0.mode == "battle" then
		local var_140_1 = arg_140_0._woodenWatchtower

		if not var_140_1 then
			return
		end

		var_140_1.hitT = math.max(0, (var_140_1.hitT or 0) - arg_140_1)
		var_140_1.breakT = math.max(0, (var_140_1.breakT or 0) - arg_140_1)

		if var_140_1.owner and __recovered_scope_0.var_0_90.mounted(var_140_1.owner) then
			for iter_140_0, iter_140_1 in ipairs(arg_140_0.enemies or {}) do
				if iter_140_1.pendingTarget == var_140_1.owner and #__recovered_scope_0.var_0_90.targets(iter_140_1, {
					var_140_1.owner
				}, nil, arg_140_0) == 0 then
					iter_140_1.pendingTarget, iter_140_1.shotPending = nil, false
				end
			end

			if not __recovered_scope_0.var_0_92(var_140_1.owner) then
				__recovered_scope_0.var_0_90.destroy(var_140_1.owner)
			elseif var_140_0 then
				__recovered_scope_0.var_0_90.anchor(arg_140_0, var_140_1.owner, var_140_0)
			end
		end
	else
		for iter_140_2, iter_140_3 in ipairs(arg_140_0.rosterUnits or {}) do
			if iter_140_3._watchtowerSeated then
				if var_140_0 and __recovered_scope_0.var_0_90.eligible(iter_140_3) and not iter_140_3._held then
					__recovered_scope_0.var_0_90.anchor(arg_140_0, iter_140_3, var_140_0)
				elseif not var_140_0 or not __recovered_scope_0.var_0_90.eligible(iter_140_3) then
					__recovered_scope_0.var_0_90.unboard(arg_140_0, iter_140_3)
				end
			else
				iter_140_3._watchtowerSeatLift = nil
			end
		end
	end
end

function __recovered_scope_0.var_0_90.endBattle(arg_141_0)
	local var_141_0 = arg_141_0._woodenWatchtower

	if var_141_0 and var_141_0.owner then
		__recovered_scope_0.var_0_90.destroy(var_141_0.owner, true)
	end

	arg_141_0._woodenWatchtower = nil
end

function __recovered_scope_0.var_0_90.applyStatPreview(arg_142_0, arg_142_1, arg_142_2)
	if arg_142_0 and arg_142_1 and arg_142_1._watchtowerSeated and __recovered_scope_0.var_0_90.item(arg_142_2) and arg_142_2.mode ~= "battle" then
		arg_142_0.distance = (arg_142_0.distance or 0) + require("src.game.item").levelValue(__recovered_scope_0.var_0_90.item(arg_142_2), "rangeBonus", __recovered_scope_0.var_0_90.item(arg_142_2).rangeBonus or 70)
	end
end

 __recovered_scope_0.var_0_93 = __recovered_scope_0.var_0_90
 __recovered_scope_0.var_0_94 = nil
 __recovered_scope_0.var_0_95 = {
	attackTiming = {
		duration = 0.6,
		returnStart = 0.28,
		cutEnd = 0.22,
		hitTime = 0.18,
		cutStart = 0.14
	}
}

 function __recovered_scope_0.var_0_96(arg_143_0)
	return arg_143_0 and arg_143_0.alive and not arg_143_0.dying and (arg_143_0.hp or 0) > 0
end

function __recovered_scope_0.var_0_95.beginBattle(arg_144_0)
	arg_144_0._crownOfBlades = nil

	local var_144_0

	for iter_144_0, iter_144_1 in ipairs(arg_144_0.ui and arg_144_0.ui._itemPurchased or {}) do
		if iter_144_1.key == "CrownOfBlades" then
			var_144_0 = iter_144_1

			break
		end
	end

	if not var_144_0 then
		return
	end

	local var_144_1
	local var_144_2

	for iter_144_2, iter_144_3 in ipairs(arg_144_0.allies or {}) do
		if __recovered_scope_0.var_0_96(iter_144_3) and iter_144_3.side == "ally" and not iter_144_3.isSummon and not iter_144_3.isShadowMinion and not iter_144_3.isFireSpirit and not iter_144_3.isUndyingSoul and not iter_144_3.isTower and not iter_144_3.isClone then
			local var_144_3 = arg_144_0.rosterUnits and arg_144_0.rosterUnits[iter_144_3.rosterIndex]
			local var_144_4 = tonumber(iter_144_3.absorbLV or var_144_3 and var_144_3.absorbLV) or 1

			if not var_144_1 or var_144_2 < var_144_4 then
				var_144_1, var_144_2 = iter_144_3, var_144_4
			end
		end
	end

	if var_144_1 then
		arg_144_0._crownOfBlades = {
			time = 0,
			spawnTime = 0,
			owner = var_144_1,
			bladeDamage = require("src.game.item").levelValue(var_144_0, "bladeDamage", var_144_0.bladeDamage or 0.3),
			blades = {
				{
					cooldown = 1.5
				},
				{
					cooldown = 1.65
				}
			},
			source = {
				itemKey = "CrownOfBlades",
				isItemEffect = true,
				side = "ally",
				_itemOwner = var_144_1
			}
		}

		if _G.__slotTriggerItemPanelEffect then
			__slotTriggerItemPanelEffect(arg_144_0, "CrownOfBlades", true)
		end
	end
end

function __recovered_scope_0.var_0_95.canAct(arg_145_0, arg_145_1)
	return __recovered_scope_0.var_0_96(arg_145_1) and arg_145_0.mode == "battle" and not arg_145_0.gameOver and not arg_145_0._judgementIntroLockActive and (arg_145_0.timeStopT or 0) <= 0 and not arg_145_1._suppressAttack and not arg_145_1._oathHelmStone and not arg_145_1._caveBasiliskPetrified and not arg_145_1._venomMawSwallowed and not arg_145_1._venomMawTransition and not arg_145_1._succubusCharm and not arg_145_1._wastelandPiperCharm and (arg_145_1.stunT or 0) <= 0 and (arg_145_1.fearT or 0) <= 0 and (arg_145_1._frostSpikeFreezeT or 0) <= 0 and not arg_145_1._starJudgeScaleAirborne
end

function __recovered_scope_0.var_0_95.update(arg_146_0, arg_146_1, arg_146_2, arg_146_3, arg_146_4, arg_146_5)
	local var_146_0 = arg_146_0._crownOfBlades

	if not var_146_0 or arg_146_0.mode ~= "battle" or arg_146_0.gameOver then
		return
	end

	if not __recovered_scope_0.var_0_96(var_146_0.owner) then
		arg_146_0._crownOfBlades = nil

		return
	end

	if (arg_146_0.timeStopT or 0) <= 0 then
		var_146_0.spawnTime = math.min(0.9, (var_146_0.spawnTime or 0) + math.max(0, arg_146_1 or 0))
	end

	if not __recovered_scope_0.var_0_95.canAct(arg_146_0, var_146_0.owner) then
		return
	end

	arg_146_1 = math.max(0, arg_146_1 or 0)

	if arg_146_1 <= 0 then
		return
	end

	var_146_0.time = var_146_0.time + arg_146_1

	local var_146_1 = var_146_0.owner

	local function var_146_2(arg_147_0)
		return arg_147_0 and arg_147_0.side == "enemy" and arg_146_2(arg_147_0, var_146_1, arg_146_0) and arg_146_3(var_146_1, arg_147_0) and arg_146_4(var_146_1, arg_147_0) <= 4225
	end

	local function var_146_3(arg_148_0)
		local var_148_0
		local var_148_1
		local var_148_2

		for iter_148_0, iter_148_1 in ipairs(arg_146_0.enemies or {}) do
			if var_146_2(iter_148_1) then
				var_148_2 = var_148_2 or iter_148_1

				local var_148_3 = arg_146_4(var_146_1, iter_148_1)

				if iter_148_1 ~= arg_148_0 and (not var_148_0 or var_148_3 < var_148_1) then
					var_148_0, var_148_1 = iter_148_1, var_148_3
				end
			end
		end

		return var_148_0 or var_148_2
	end

	for iter_146_0, iter_146_1 in ipairs(var_146_0.blades) do
		iter_146_1.cooldown = math.max(0, iter_146_1.cooldown - arg_146_1)

		if iter_146_1.attack then
			local var_146_4 = iter_146_1.attack

			var_146_4.t = var_146_4.t + arg_146_1

			if not var_146_4.hit and var_146_2(var_146_4.target) then
				var_146_4.x, var_146_4.y = var_146_4.target.x, var_146_4.target.y
			end

			if not var_146_4.hit and var_146_4.t >= __recovered_scope_0.var_0_95.attackTiming.hitTime then
				var_146_4.hit = true

				if var_146_2(var_146_4.target) then
					var_146_0.source.x, var_146_0.source.y = var_146_1.x, var_146_1.y

					local var_146_5 = math.max(0, (var_146_1.dmg or 0) * (var_146_1._dmgBuffMul or 1) * (var_146_1._forestDmgMul or 1))

					arg_146_5(var_146_4.target, var_146_5 * (var_146_0.bladeDamage or 0.3), var_146_0.source, nil, {
						battleSkillDamage = false,
						basicAttack = false,
						itemDamage = true
					})
				end
			end

			if var_146_4.t >= __recovered_scope_0.var_0_95.attackTiming.duration then
				iter_146_1.attack = nil
			end
		end

		if not iter_146_1.attack and iter_146_1.cooldown <= 0 then
			local var_146_6 = var_146_0.blades[3 - iter_146_0]
			local var_146_7 = var_146_3(var_146_6.attack and var_146_6.attack.target or var_146_6.lastTarget)

			if var_146_7 then
				iter_146_1.attack = {
					t = 0,
					target = var_146_7,
					x = var_146_7.x,
					y = var_146_7.y
				}
				iter_146_1.lastTarget, iter_146_1.cooldown = var_146_7, 1.5
			end
		end
	end
end

 __recovered_scope_0.var_0_97 = __recovered_scope_0.var_0_95
 __recovered_scope_0.var_0_98 = nil
 __recovered_scope_0.var_0_99 = {}

 function __recovered_scope_0.var_0_100(arg_149_0)
	return arg_149_0 and arg_149_0.side == "ally" and arg_149_0.alive and not arg_149_0.dying and (arg_149_0.hp or 0) > 0 and not arg_149_0.isSummon and not arg_149_0.isShadowMinion and not arg_149_0.isFireSpirit and not arg_149_0.isUndyingSoul and not arg_149_0.isTower and not arg_149_0.isClone and not arg_149_0._succubusCharm and not arg_149_0._wastelandPiperCharm
end

function __recovered_scope_0.var_0_99.beginBattle(arg_150_0)
	arg_150_0._crossfireFlare, arg_150_0._crossfireDamageContext = nil

	for iter_150_0, iter_150_1 in ipairs(arg_150_0.allies or {}) do
		iter_150_1._crossfireAttackMotion = nil
	end

	for iter_150_2, iter_150_3 in ipairs(arg_150_0.enemies or {}) do
		iter_150_3._crossfireKillCounted, iter_150_3._crossfireDeferred, iter_150_3._crossfireDirectCredit = nil
	end

	local var_150_0

	for iter_150_4, iter_150_5 in ipairs(arg_150_0.ui and arg_150_0.ui._itemPurchased or {}) do
		if iter_150_5.key == "CrossfireFlare" then
			var_150_0 = math.min(var_150_0 or math.huge, require("src.game.item").levelValue(iter_150_5, "triggerInterval", iter_150_5.triggerInterval or {
				4,
				3
			}))
		end
	end

	if not var_150_0 then
		return
	end

	local var_150_1 = {
		readyAt = 0,
		interval = var_150_0,
		members = {}
	}

	arg_150_0._crossfireFlare = var_150_1

	for iter_150_6, iter_150_7 in ipairs(arg_150_0.allies or {}) do
		if __recovered_scope_0.var_0_100(iter_150_7) then
			var_150_1.members[iter_150_7] = {
				ranged = iter_150_7.role == "archer" or iter_150_7.role == "mage" or (iter_150_7.distance or 0) >= 70,
				atk = tonumber(iter_150_7.dmg) or 0,
				canBasic = not iter_150_7.skill or iter_150_7.skill.kind ~= "SavageTusk" and iter_150_7.skill.kind ~= "MountainRoar"
			}
		end
	end
end

 function __recovered_scope_0.var_0_101(arg_151_0, arg_151_1)
	local var_151_0
	local var_151_1

	for iter_151_0, iter_151_1 in ipairs(arg_151_0.allies or {}) do
		local var_151_2 = arg_151_0._crossfireFlare.members[iter_151_1]

		if var_151_2 and var_151_2.canBasic and var_151_2.ranged == arg_151_1 and __recovered_scope_0.var_0_100(iter_151_1) and (not var_151_0 or var_151_1 < var_151_2.atk) then
			var_151_0, var_151_1 = iter_151_1, var_151_2.atk
		end
	end

	return var_151_0
end

function __recovered_scope_0.var_0_99.onDeath(arg_152_0, arg_152_1)
	local var_152_0 = arg_152_0._crossfireFlare
	local var_152_1 = arg_152_1 and arg_152_1._crossfireDirectCredit or arg_152_0._crossfireDamageContext

	if not var_152_0 or arg_152_0.mode ~= "battle" or arg_152_0.gameOver or not var_152_1 or var_152_1.blocked or not arg_152_1 or arg_152_1.side ~= "enemy" or (arg_152_1.hp or 1) > 0 or arg_152_1._crossfireKillCounted then
		return
	end

	arg_152_1._crossfireKillCounted = true

	local var_152_2 = var_152_0.members[var_152_1.source]

	if not var_152_2 or var_152_1.source._succubusCharm or var_152_1.source._wastelandPiperCharm or var_152_0.pending or (arg_152_0._waveTimeAcc or 0) + 1e-09 < var_152_0.readyAt then
		return
	end

	local var_152_3 = __recovered_scope_0.var_0_101(arg_152_0, not var_152_2.ranged)

	if var_152_3 then
		var_152_0.pending = {
			unit = var_152_3,
			ranged = not var_152_2.ranged
		}
	end
end

function __recovered_scope_0.var_0_99.wrapDamage(arg_153_0, arg_153_1)
	return function(arg_154_0, arg_154_1, arg_154_2, arg_154_3, arg_154_4)
		if not arg_153_0._crossfireFlare then
			return arg_153_1(arg_154_0, arg_154_1, arg_154_2, arg_154_3, arg_154_4)
		end

		local var_154_0 = arg_153_0._crossfireDamageContext
		local var_154_1 = {
			source = arg_154_2,
			blocked = var_154_0 and var_154_0.blocked or not arg_153_0._crossfireFlare.members[arg_154_2] or arg_154_4 and (arg_154_4.crossfireAttack or arg_154_4.itemDamage or arg_154_4.fromItem) or false
		}

		if arg_154_4 and arg_154_4.crossfireDeferred then
			var_154_1 = arg_154_4.crossfireDeferred
		end

		arg_153_0._crossfireDamageContext = var_154_1

		local var_154_2 = arg_153_1(arg_154_0, arg_154_1, arg_154_2, arg_154_3, arg_154_4)

		if arg_154_0 and (arg_153_0.timeStopT or 0) > 0 and not arg_154_0._crossfireDeferred and (arg_154_0._storedDamage or 0) > 0 and (arg_154_0.hp or 0) <= arg_154_0._storedDamage then
			arg_154_0._crossfireDeferred = var_154_1
		end

		arg_153_0._crossfireDamageContext = var_154_0

		return var_154_2
	end
end

function __recovered_scope_0.var_0_99.creditDirectDamage(arg_155_0, arg_155_1, arg_155_2)
	if not arg_155_0._crossfireFlare or not arg_155_2 then
		return
	end

	if (arg_155_0.timeStopT or 0) > 0 then
		if not arg_155_1._crossfireDeferred and (arg_155_1._storedDamage or 0) >= (arg_155_1.hp or 0) then
			arg_155_1._crossfireDeferred = arg_155_2
		end
	elseif (arg_155_1.hp or 0) <= 0 then
		arg_155_1._crossfireDirectCredit = arg_155_2
	end
end

function __recovered_scope_0.var_0_99.hasPending(arg_156_0, arg_156_1)
	local var_156_0 = arg_156_0._crossfireFlare

	if not var_156_0 or not var_156_0.pending then
		return false
	end

	if not __recovered_scope_0.var_0_100(var_156_0.pending.unit) then
		var_156_0.pending.unit = __recovered_scope_0.var_0_101(arg_156_0, var_156_0.pending.ranged)
	end

	return var_156_0.pending.unit == arg_156_1
end

function __recovered_scope_0.var_0_99.select(arg_157_0, arg_157_1, arg_157_2, arg_157_3)
	if arg_157_0.mode ~= "battle" or arg_157_0.gameOver or not __recovered_scope_0.var_0_99.hasPending(arg_157_0, arg_157_1) then
		return nil
	end

	if arg_157_1._casting or arg_157_1._forceAnim or arg_157_1.shotPending or arg_157_1._volleyFollowup or arg_157_1._suppressAttack or arg_157_1._oathHelmStone or arg_157_1._caveBasiliskPetrified or (arg_157_1.stunT or 0) > 0 or arg_157_1.skill and arg_157_1.skill.state == "active" then
		return nil
	end

	local var_157_0 = arg_157_1.anim and arg_157_1.anim.name

	if var_157_0 and var_157_0 ~= "idle" and var_157_0 ~= "walk" then
		return nil
	end

	if arg_157_2 and arg_157_3(arg_157_2) then
		return arg_157_2
	end

	for iter_157_0, iter_157_1 in ipairs(arg_157_0.enemies or {}) do
		if arg_157_3(iter_157_1) then
			return iter_157_1
		end
	end
end

function __recovered_scope_0.var_0_99.commit(arg_158_0, arg_158_1)
	if not __recovered_scope_0.var_0_99.hasPending(arg_158_0, arg_158_1) then
		return false
	end

	local var_158_0 = arg_158_0._crossfireFlare

	var_158_0.pending, var_158_0.readyAt = nil, (arg_158_0._waveTimeAcc or 0) + var_158_0.interval

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_158_0, "CrossfireFlare", true)
	end

	return true
end

 __recovered_scope_0.var_0_102 = __recovered_scope_0.var_0_99
 __recovered_scope_0.var_0_103 = nil
 __recovered_scope_0.var_0_104 = {}

 function __recovered_scope_0.var_0_105(arg_159_0)
	return arg_159_0 and arg_159_0.side == "enemy" and arg_159_0.alive and not arg_159_0.dying and (arg_159_0.hp or 0) > 0 and not arg_159_0.isUndyingSoul and not arg_159_0._venomMawSwallowed and not arg_159_0._tricksterCharm
end

function __recovered_scope_0.var_0_104.beginBattle(arg_160_0)
	arg_160_0._commandBanner = nil

	local var_160_0 = 0

	for iter_160_0, iter_160_1 in ipairs(arg_160_0.ui and arg_160_0.ui._itemPurchased or {}) do
		if iter_160_1.key == "CommandBanner" then
			var_160_0 = math.max(var_160_0, require("src.game.item").levelValue(iter_160_1, "focusDuration", iter_160_1.focusDuration or {
				2,
				3
			}))
		end
	end

	for iter_160_2, iter_160_3 in ipairs(arg_160_0.allies or {}) do
		iter_160_3._commandBannerParticipant = var_160_0 > 0 and iter_160_3.side == "ally" and iter_160_3.alive and not iter_160_3.dying and (iter_160_3.hp or 0) > 0 and not iter_160_3.isSummon and not iter_160_3.isShadowMinion and not iter_160_3.isUndyingSoul and not iter_160_3.isFireSpirit and not iter_160_3.isTower
	end

	if var_160_0 > 0 then
		local var_160_1 = 6

		arg_160_0._commandBanner = {
			readyAt = var_160_1,
			duration = var_160_0,
			interval = var_160_1
		}
	end
end

function __recovered_scope_0.var_0_104.update(arg_161_0)
	local var_161_0 = arg_161_0._commandBanner

	if not var_161_0 or arg_161_0.mode ~= "battle" or arg_161_0.gameOver or arg_161_0._judgementIntroLockActive then
		return
	end

	local var_161_1 = arg_161_0._waveTimeAcc or 0

	if var_161_1 + 1e-09 < var_161_0.readyAt then
		return
	end

	local var_161_2 = 0

	for iter_161_0, iter_161_1 in ipairs(arg_161_0.enemies or {}) do
		if __recovered_scope_0.var_0_105(iter_161_1) then
			var_161_2 = var_161_2 + 1
		end
	end

	if var_161_2 < 2 then
		return
	end

	var_161_0.untilTime, var_161_0.readyAt = var_161_1 + var_161_0.duration, var_161_1 + var_161_0.interval

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_161_0, "CommandBanner", false)
	end
end

function __recovered_scope_0.var_0_104.select(arg_162_0, arg_162_1, arg_162_2, arg_162_3)
	local var_162_0 = arg_162_0 and arg_162_0._commandBanner

	if not var_162_0 or arg_162_0.mode ~= "battle" or arg_162_0.gameOver or not var_162_0.untilTime or (arg_162_0._waveTimeAcc or 0) >= var_162_0.untilTime or not arg_162_1 or not arg_162_1._commandBannerParticipant or not arg_162_1.alive or arg_162_1.dying or (arg_162_1.hp or 0) <= 0 or arg_162_1._suppressAttack or arg_162_1._succubusCharm or arg_162_1._wastelandPiperCharm then
		return arg_162_2
	end

	local var_162_1

	for iter_162_0, iter_162_1 in ipairs(arg_162_0.enemies or {}) do
		if __recovered_scope_0.var_0_105(iter_162_1) and (not var_162_1 or (iter_162_1.x or 0) < (var_162_1.x or 0)) then
			var_162_1 = iter_162_1
		end
	end

	if var_162_1 and arg_162_3(var_162_1) then
		return var_162_1
	end

	return arg_162_2
end

 __recovered_scope_0.var_0_106 = __recovered_scope_0.var_0_104
 __recovered_scope_0.var_0_107 = nil
 __recovered_scope_0.var_0_108 = {
	has = function(arg_163_0, arg_163_1)
		for iter_163_0, iter_163_1 in ipairs(arg_163_0 and (arg_163_0.randomOptions or arg_163_0.randomOption and {
			arg_163_0.randomOption
		}) or {}) do
			if tostring(iter_163_1.id) == arg_163_1 then
				return true
			end
		end

		return false
	end,
	isRosterUnit = function(arg_164_0)
		local var_164_0 = arg_164_0 and arg_164_0.sym

		return arg_164_0 ~= nil and not arg_164_0.isShadowMinion and not arg_164_0.isSummon and not arg_164_0.isClone and not arg_164_0.isFireSpirit and not arg_164_0.isTower and not arg_164_0.isDecoyDummy and not arg_164_0.isGuardianGolem and not arg_164_0.isItemEffect and (type(var_164_0) ~= "string" or var_164_0:find("ENEMY_") ~= 1)
	end
}

function __recovered_scope_0.var_0_108.slotCost(arg_165_0)
	if not __recovered_scope_0.var_0_108.isRosterUnit(arg_165_0) then
		return 0
	end

	if __recovered_scope_0.var_0_108.has(arg_165_0, "32") then
		return 2
	end

	if __recovered_scope_0.var_0_108.has(arg_165_0, "14") then
		return 0
	end

	return 1
end

function __recovered_scope_0.var_0_108.count(arg_166_0, arg_166_1)
	local var_166_0 = 0

	for iter_166_0, iter_166_1 in ipairs(arg_166_0 or {}) do
		var_166_0 = var_166_0 + (arg_166_1 and (__recovered_scope_0.var_0_108.isRosterUnit(iter_166_1) and 1 or 0) or __recovered_scope_0.var_0_108.slotCost(iter_166_1))
	end

	return var_166_0
end

function __recovered_scope_0.var_0_108.canAcquire(arg_167_0, arg_167_1)
	if not arg_167_0 or not __recovered_scope_0.var_0_108.isRosterUnit(arg_167_1) or __recovered_scope_0.var_0_108.has(arg_167_1, "14") or __recovered_scope_0.var_0_108.has(arg_167_1, "32") then
		return false
	end

	local var_167_0 = false

	for iter_167_0, iter_167_1 in ipairs(arg_167_0.rosterUnits or {}) do
		if iter_167_1 == arg_167_1 then
			var_167_0 = true

			break
		end
	end

	if not var_167_0 then
		return false
	end

	local var_167_1 = require("src.ui.upgrade")

	return 5 + (var_167_1.getMaxUnitBonus and var_167_1.getMaxUnitBonus() or 0) >= __recovered_scope_0.var_0_108.count(arg_167_0.rosterUnits) + 2 - __recovered_scope_0.var_0_108.slotCost(arg_167_1)
end

function __recovered_scope_0.var_0_108.choiceAllowed(arg_168_0, arg_168_1, arg_168_2)
	local var_168_0 = arg_168_2 and arg_168_2.randomOption

	if not var_168_0 then
		return true
	end

	if tostring(var_168_0.id) == "32" then
		return __recovered_scope_0.var_0_108.canAcquire(arg_168_0, arg_168_1)
	end

	if tostring(var_168_0.id) == "14" then
		return not __recovered_scope_0.var_0_108.has(arg_168_1, "32")
	end

	return true
end

 __recovered_scope_0.var_0_109 = __recovered_scope_0.var_0_108
 __recovered_scope_0.var_0_110 = nil
 __recovered_scope_0.var_0_111 = {
	source = function(arg_169_0, arg_169_1, arg_169_2)
		if arg_169_2 and arg_169_2.bountySource ~= nil then
			arg_169_1 = arg_169_2.bountySource
		end

		if arg_169_2 and (arg_169_2.itemDamage or arg_169_2.fromItem) or arg_169_0 and arg_169_0._combatExperienceContext and arg_169_0._combatExperienceContext.bountySource == false then
			return nil
		end

		local var_169_0 = {}

		while type(arg_169_1) == "table" and not var_169_0[arg_169_1] do
			var_169_0[arg_169_1] = true

			if arg_169_1.side ~= "ally" or arg_169_1.isItemEffect or arg_169_1.isGuardianGolem or arg_169_1.isTower or arg_169_1.isDecoyDummy or arg_169_1.isStructure then
				return nil
			end

			if arg_169_1.isSummon or arg_169_1.isClone or arg_169_1.isFireSpirit or arg_169_1.isShadowMinion then
				arg_169_1 = arg_169_1.master or arg_169_1.summonOwner or arg_169_1.cloneOwner
			else
				return arg_169_1
			end
		end
	end
}

function __recovered_scope_0.var_0_111.recordDamage(arg_170_0, arg_170_1, arg_170_2, arg_170_3, arg_170_4)
	if not arg_170_1 or arg_170_1.side ~= "enemy" or arg_170_1.dying or (arg_170_2 or 0) <= 0 or arg_170_4 and arg_170_4.combatExperienceReplay or arg_170_1._bountyKiller ~= nil then
		return
	end

	local var_170_0 = (arg_170_1.hp or 0) - ((arg_170_0.timeStopT or 0) > 0 and (arg_170_1._storedDamage or 0) or 0)

	if var_170_0 > 0 and var_170_0 <= arg_170_2 then
		arg_170_1._bountyKiller = __recovered_scope_0.var_0_111.source(arg_170_0, arg_170_3, arg_170_4) or false

		if arg_170_1._twinStarHealth and arg_170_1._twinStarHealth._bountyKiller == nil then
			arg_170_1._twinStarHealth._bountyKiller = arg_170_1._bountyKiller
		end
	end
end

function __recovered_scope_0.var_0_111.onDeath(arg_171_0, arg_171_1)
	if not arg_171_1 or arg_171_1.side ~= "enemy" or (arg_171_1.hp or 0) > 0 then
		return
	end

	local var_171_0 = arg_171_1._bountyIdentity or arg_171_1._greatswordDismountParent or arg_171_1

	if var_171_0._bountyDeathCounted then
		return
	end

	var_171_0._bountyDeathCounted = true

	if not var_171_0._waveSpawnEnemy or arg_171_1.isSummon or arg_171_1.isClone or arg_171_1.isHusk or arg_171_1.isStructure or arg_171_1.isTower or arg_171_1.isCrystalGuardWall or arg_171_1._batMatronSummon then
		return
	end

	local var_171_1 = arg_171_1._bountyKiller

	if var_171_1 == nil and arg_171_1._twinStarHealth then
		var_171_1 = arg_171_1._twinStarHealth._bountyKiller
	end

	if not var_171_1 then
		return
	end

	for iter_171_0, iter_171_1 in ipairs(var_171_1.randomOptions or var_171_1.randomOption and {
		var_171_1.randomOption
	} or {}) do
		if tostring(iter_171_1.id) == "31" then
			local var_171_2 = tonumber(tostring(iter_171_1.variant and iter_171_1.variant.value or "+5"):match("%d+")) or 5
			local var_171_3 = math.max(5, math.min(9, var_171_2))

			if type(arg_171_0.onCoinEvent) == "function" then
				arg_171_0.onCoinEvent({
					kind = "bounty",
					amount = var_171_3,
					x = arg_171_1.x,
					y = arg_171_1.y,
					source = var_171_1
				})
			end

			return var_171_3
		end
	end
end

 __recovered_scope_0.var_0_112 = __recovered_scope_0.var_0_111
 __recovered_scope_0.var_0_113 = nil
 __recovered_scope_0.var_0_114 = {}
 __recovered_scope_0.var_0_115 = require("src.data.randomoption")

 function __recovered_scope_0.var_0_116(arg_172_0)
	for iter_172_0, iter_172_1 in ipairs(arg_172_0 and (arg_172_0.randomOptions or arg_172_0.randomOption and {
		arg_172_0.randomOption
	}) or {}) do
		if tostring(iter_172_1.id) == "24" then
			return iter_172_1
		end
	end
end

function __recovered_scope_0.var_0_114.directSource(arg_173_0, arg_173_1, arg_173_2)
	if arg_173_0 and arg_173_0._combatExperienceContext and arg_173_0._combatExperienceContext.excluded then
		return nil
	end

	if arg_173_2 and arg_173_2.combatExperienceSource ~= nil then
		arg_173_1 = arg_173_2.combatExperienceSource
	end

	if not arg_173_1 or arg_173_1.side ~= "ally" or arg_173_1.isItemEffect or arg_173_1.isSummon or arg_173_1.isClone or arg_173_1.isShadowMinion or arg_173_1.isUndyingSoul or arg_173_1.isFireSpirit or arg_173_1.isTower or arg_173_1.isDecoyDummy or arg_173_1.isGuardianGolem or arg_173_2 and (arg_173_2.itemDamage or arg_173_2.fromItem) then
		return nil
	end

	return arg_173_1
end

function __recovered_scope_0.var_0_114.basicDamage(arg_174_0, arg_174_1, arg_174_2, arg_174_3)
	if not arg_174_3 or arg_174_3.basicAttack ~= true or arg_174_3.battleSkillDamage or arg_174_3.skillDamage or arg_174_3.skillAttack or arg_174_3.skillBig or arg_174_3.dot or arg_174_3.combatExperienceReplay then
		return arg_174_2
	end

	local var_174_0 = __recovered_scope_0.var_0_116(__recovered_scope_0.var_0_114.directSource(arg_174_0, arg_174_1, arg_174_3))

	if not var_174_0 then
		return arg_174_2
	end

	return arg_174_2 * (1 + __recovered_scope_0.var_0_115.getCombatExperienceProgress(var_174_0) * 0.01)
end

function __recovered_scope_0.var_0_114.recordDamage(arg_175_0, arg_175_1, arg_175_2, arg_175_3, arg_175_4)
	__recovered_scope_0.var_0_112.recordDamage(arg_175_0, arg_175_1, arg_175_2, arg_175_3, arg_175_4)

	if not arg_175_1 or arg_175_1.side ~= "enemy" or arg_175_1.dying or (arg_175_2 or 0) <= 0 or arg_175_4 and arg_175_4.combatExperienceReplay or arg_175_1._combatExperienceKiller ~= nil then
		return
	end

	local var_175_0 = (arg_175_1.hp or 0) - ((arg_175_0.timeStopT or 0) > 0 and (arg_175_1._storedDamage or 0) or 0)

	if var_175_0 > 0 and var_175_0 <= arg_175_2 then
		arg_175_1._combatExperienceKiller = __recovered_scope_0.var_0_114.directSource(arg_175_0, arg_175_3, arg_175_4) or false
	end
end

function __recovered_scope_0.var_0_114.onDeath(arg_176_0, arg_176_1)
	__recovered_scope_0.var_0_112.onDeath(arg_176_0, arg_176_1)

	if not arg_176_1 or arg_176_1.side ~= "enemy" then
		return
	end

	local var_176_0 = arg_176_1._greatswordDismountParent or arg_176_1

	if var_176_0._combatExperienceDeathCounted then
		return
	end

	var_176_0._combatExperienceDeathCounted = true

	if not var_176_0._waveSpawnEnemy or arg_176_1.isSummon or arg_176_1.isClone or arg_176_1.isHusk or arg_176_1.isStructure or arg_176_1.isTower or arg_176_1.isCrystalGuardWall or arg_176_1._batMatronSummon then
		return
	end

	local var_176_1 = arg_176_1._combatExperienceKiller
	local var_176_2 = __recovered_scope_0.var_0_116(var_176_1 or nil)

	if not var_176_2 then
		return
	end

	local var_176_3, var_176_4, var_176_5 = __recovered_scope_0.var_0_115.getCombatExperienceProgress(var_176_2)

	var_176_2.combatExperienceKills = var_176_5 + 1

	local var_176_6 = var_176_1.rosterIndex
	local var_176_7 = var_176_6 and arg_176_0.rosterUnits and arg_176_0.rosterUnits[var_176_6]
	local var_176_8 = __recovered_scope_0.var_0_116(var_176_7)

	if var_176_8 then
		var_176_8.combatExperienceKills = var_176_2.combatExperienceKills
	end

	local var_176_9 = var_176_6 and arg_176_0.rosterSpawnMeta and arg_176_0.rosterSpawnMeta[var_176_6]
	local var_176_10 = __recovered_scope_0.var_0_116(var_176_9)

	if var_176_10 then
		var_176_10.combatExperienceKills = var_176_2.combatExperienceKills
	end
end

function __recovered_scope_0.var_0_114.wrapDamage(arg_177_0, arg_177_1)
	return function(arg_178_0, arg_178_1, arg_178_2, arg_178_3, arg_178_4)
		local var_178_0 = arg_177_0._combatExperienceContext
		local var_178_1 = __recovered_scope_0.var_0_114.directSource(arg_177_0, arg_178_2, arg_178_4)

		arg_177_0._combatExperienceContext = {
			source = arg_178_2,
			excluded = not var_178_1,
			bountySource = __recovered_scope_0.var_0_112.source(arg_177_0, arg_178_2, arg_178_4) or false
		}

		local var_178_2 = arg_177_1(arg_178_0, arg_178_1, arg_178_2, arg_178_3, arg_178_4)

		arg_177_0._combatExperienceContext = var_178_0

		return var_178_2
	end
end

 __recovered_scope_0.var_0_117 = __recovered_scope_0.var_0_114
 __recovered_scope_0.var_0_118 = nil
 __recovered_scope_0.var_0_119 = {
	has = function(arg_179_0)
		if not arg_179_0 or arg_179_0.side and arg_179_0.side ~= "ally" or arg_179_0.isItemEffect or arg_179_0.isGuardianGolem or arg_179_0.isHusk or not require("src.data.randomoption").canBasicAttack(arg_179_0) then
			return false
		end

		for iter_179_0, iter_179_1 in ipairs(arg_179_0.randomOptions or arg_179_0.randomOption and {
			arg_179_0.randomOption
		} or {}) do
			if tostring(iter_179_1.id) == "29" then
				return true
			end
		end

		return false
	end
}

function __recovered_scope_0.var_0_119.bonus(arg_180_0)
	return __recovered_scope_0.var_0_119.has(arg_180_0) and 40 or 0
end

function __recovered_scope_0.var_0_119.range(arg_181_0)
	local var_181_0 = (tonumber(arg_181_0 and (arg_181_0.distance or arg_181_0.stats and arg_181_0.stats.distance)) or 50) + __recovered_scope_0.var_0_119.bonus(arg_181_0)

	if arg_181_0 and arg_181_0._awakeningBattle then
		return require("src.game.awakening").basicRange(arg_181_0._awakeningBattle, arg_181_0, arg_181_0.pendingTarget or arg_181_0._awakening and arg_181_0._awakening.target, var_181_0, false)
	end

	return var_181_0
end

function __recovered_scope_0.var_0_119.active(arg_182_0, arg_182_1)
	return arg_182_0 and arg_182_0.mode == "battle" and __recovered_scope_0.var_0_119.has(arg_182_1)
end

function __recovered_scope_0.var_0_119.applyStatPreview(arg_183_0, arg_183_1)
	if arg_183_0 then
		arg_183_0.distance = (arg_183_0.distance or 0) + __recovered_scope_0.var_0_119.bonus(arg_183_1)
	end
end

function __recovered_scope_0.var_0_119.skillTargetAllowed(arg_184_0, arg_184_1, arg_184_2, arg_184_3)
	if not __recovered_scope_0.var_0_119.has(arg_184_0) then
		return true
	end

	if not arg_184_1 then
		return false
	end

	arg_184_3 = arg_184_3 or arg_184_0.skill and arg_184_0.skill.range or arg_184_0.distance or 50

	return arg_184_2(arg_184_0, arg_184_1) <= (arg_184_3 + 1)^2
end

function __recovered_scope_0.var_0_119.hasSkillTarget(arg_185_0, arg_185_1, arg_185_2, arg_185_3, arg_185_4)
	if not __recovered_scope_0.var_0_119.has(arg_185_1) then
		return true
	end

	for iter_185_0, iter_185_1 in ipairs(arg_185_0.enemies or {}) do
		if arg_185_2(iter_185_1, arg_185_1, arg_185_0) and __recovered_scope_0.var_0_119.skillTargetAllowed(arg_185_1, iter_185_1, arg_185_3, arg_185_4) then
			return true
		end
	end

	return false
end

 __recovered_scope_0.var_0_120 = __recovered_scope_0.var_0_119
 __recovered_scope_0.var_0_121 = nil
 __recovered_scope_0.var_0_122 = {
	MARGIN = 6,
	applies = function(arg_186_0)
		return require("src.game.projectiles").gunslinger_bullet.isWarlock(arg_186_0)
	end
}

function __recovered_scope_0.var_0_122.canAttack(arg_187_0)
	if not __recovered_scope_0.var_0_122.applies(arg_187_0) then
		return true
	end

	return not arg_187_0.anim or arg_187_0.anim.name ~= "walk"
end

function __recovered_scope_0.var_0_122.reach(arg_188_0, arg_188_1)
	if not __recovered_scope_0.var_0_122.applies(arg_188_0) then
		return arg_188_1
	end

	if arg_188_0._footingHold then
		return math.huge
	end

	if arg_188_0.anim and arg_188_0.anim.name == "walk" then
		return math.max(1, arg_188_1 - __recovered_scope_0.var_0_122.MARGIN)
	end

	return arg_188_1
end

 __recovered_scope_0.var_0_123 = __recovered_scope_0.var_0_122
 __recovered_scope_0.var_0_124 = nil
 __recovered_scope_0.var_0_125 = {}
 __recovered_scope_0.var_0_126 = require("src.data.skill")

 function __recovered_scope_0.var_0_127(arg_189_0)
	for iter_189_0, iter_189_1 in ipairs(arg_189_0 and (arg_189_0.randomOptions or arg_189_0.randomOption and {
		arg_189_0.randomOption
	}) or {}) do
		if tostring(iter_189_1.id) == "30" then
			return math.max(0, math.min(0.35, math.abs(tonumber(tostring(iter_189_1.variant and iter_189_1.variant.value or ""):match("[-+]?%d+%.?%d*")) or 15) / 100))
		end
	end
end

function __recovered_scope_0.var_0_125.begin(arg_190_0)
	require("src.game.awakening").skillBegin(arg_190_0)
	require("src.game.unit_abilities").rift_arsenal.allyCast(arg_190_0)
	require("src.game.unit_abilities").spell_echo.allyCast(arg_190_0)

	local var_190_0 = arg_190_0 and arg_190_0.skill

	if not var_190_0 or not __recovered_scope_0.var_0_127(arg_190_0) or not __recovered_scope_0.var_0_117.directSource(nil, arg_190_0) or not __recovered_scope_0.var_0_126.isAttackSkillKind(var_190_0.kind) then
		return
	end

	if var_190_0._chainCast and (var_190_0.state == "active" or var_190_0.state == "casting" or var_190_0.state == "precast") then
		return var_190_0._chainCast
	end

	var_190_0._chainCast = {
		used = false,
		owner = arg_190_0,
		skill = var_190_0
	}
	var_190_0._chainResetCredit = nil
	var_190_0.cdT = 0

	return var_190_0._chainCast
end

function __recovered_scope_0.var_0_125.capture(arg_191_0)
	return arg_191_0 and arg_191_0.skill and arg_191_0.skill._chainCast or false
end

function __recovered_scope_0.var_0_125.reset(arg_192_0)
	return arg_192_0 and arg_192_0._chainResetCredit or 0
end

function __recovered_scope_0.var_0_125.recordDamage(arg_193_0, arg_193_1, arg_193_2, arg_193_3, arg_193_4, arg_193_5)
	if not arg_193_1 or arg_193_1.side ~= "enemy" or arg_193_1.dying or (arg_193_2 or 0) <= 0 or arg_193_1._chainCastingLethal ~= nil or arg_193_4 and arg_193_4.combatExperienceReplay then
		return
	end

	local var_193_0 = (arg_193_1.hp or 0) - ((arg_193_0.timeStopT or 0) > 0 and (arg_193_1._storedDamage or 0) or 0)

	if var_193_0 <= 0 or arg_193_2 < var_193_0 then
		return
	end

	arg_193_1._chainCastingLethal = false

	if arg_193_5 or not arg_193_4 or not arg_193_4.battleSkillDamage and not arg_193_4.skillDamage and not arg_193_4.skillAttack or arg_193_4.basicAttack or arg_193_4.itemDamage or arg_193_4.fromItem or arg_193_4.imprintDamage or arg_193_4.indirect or arg_193_4.reflected or arg_193_4.reflection then
		return
	end

	arg_193_3 = __recovered_scope_0.var_0_117.directSource(arg_193_0, arg_193_3, arg_193_4)

	if not arg_193_3 or arg_193_3._inChainProcess or arg_193_3._inTransferProcess then
		return
	end

	local var_193_1 = arg_193_4.chainCast

	if var_193_1 == nil and not arg_193_4.dot and not arg_193_4.burn and not arg_193_4.bleed and not arg_193_4.poison then
		var_193_1 = __recovered_scope_0.var_0_125.capture(arg_193_3)
	end

	if var_193_1 and var_193_1.owner == arg_193_3 then
		arg_193_1._chainCastingLethal = var_193_1
	end
end

function __recovered_scope_0.var_0_125.onDeath(arg_194_0)
	if not arg_194_0 or arg_194_0.side ~= "enemy" or arg_194_0._chainCastingDeathHandled then
		return
	end

	arg_194_0._chainCastingDeathHandled = true

	local var_194_0 = arg_194_0._chainCastingLethal

	if not var_194_0 or var_194_0.used then
		return
	end

	local var_194_1 = var_194_0.owner
	local var_194_2 = var_194_0.skill

	if not var_194_1 or var_194_1.skill ~= var_194_2 then
		return
	end

	local var_194_3 = __recovered_scope_0.var_0_127(var_194_1)

	if not var_194_3 then
		return
	end

	var_194_0.used = true

	local var_194_4 = math.max(0, tonumber(var_194_2.cd) or 0)
	local var_194_5 = tonumber(var_194_2.cdT) or 0
	local var_194_6 = math.max(0, var_194_4 - var_194_5)

	if var_194_6 <= 0 then
		return
	end

	local var_194_7 = var_194_6 * var_194_3

	var_194_2.cdT = var_194_5 + var_194_7

	require("src.game.awakening").externalCooldown(var_194_1, var_194_7)

	var_194_2._chainResetCredit = (var_194_2._chainResetCredit or 0) + var_194_7
end

 __recovered_scope_0.var_0_128 = __recovered_scope_0.var_0_125
 __recovered_scope_0.var_0_129 = nil
 __recovered_scope_0.var_0_130 = {
	hasDebuff = function(arg_195_0, arg_195_1)
		return require("src.game.unit_abilities").debuffs.has(arg_195_1)
	end
}

function __recovered_scope_0.var_0_130.basicDamage(arg_196_0, arg_196_1, arg_196_2, arg_196_3, arg_196_4)
	if not arg_196_1 or arg_196_1.side ~= "enemy" or not arg_196_4 or arg_196_4.basicAttack ~= true or arg_196_4.battleSkillDamage or arg_196_4.skillDamage or arg_196_4.skillAttack or arg_196_4.skillBig or arg_196_4.dot or arg_196_4.poison or arg_196_4.burn or arg_196_4.bleed or arg_196_4.damageOverTime or arg_196_4.indirect or arg_196_4.imprintDamage or arg_196_4.reflected or arg_196_4.reflection or arg_196_4.combatExperienceReplay then
		return arg_196_2
	end

	arg_196_3 = __recovered_scope_0.var_0_117.directSource(arg_196_0, arg_196_3, arg_196_4)

	if not arg_196_3 or arg_196_3._itemOwner or arg_196_3.isFlameSpirit or arg_196_3.isHusk or not require("src.data.randomoption").canBasicAttack(arg_196_3) then
		return arg_196_2
	end

	for iter_196_0, iter_196_1 in ipairs(arg_196_3.randomOptions or arg_196_3.randomOption and {
		arg_196_3.randomOption
	} or {}) do
		if tostring(iter_196_1.id) == "27" then
			local var_196_0 = tonumber(tostring(iter_196_1.variant and iter_196_1.variant.value or ""):match("([%d%.]+)"))

			if var_196_0 and __recovered_scope_0.var_0_130.hasDebuff(arg_196_0, arg_196_1) then
				return arg_196_2 * (1 + var_196_0 / 100)
			end

			break
		end
	end

	return arg_196_2
end

 __recovered_scope_0.var_0_131 = __recovered_scope_0.var_0_130
 __recovered_scope_0.var_0_132 = nil
 __recovered_scope_0.var_0_133 = {
	has = function(arg_197_0)
		if not require("src.data.randomoption").canBasicAttack(arg_197_0) or arg_197_0.side ~= "ally" then
			return false
		end

		for iter_197_0, iter_197_1 in ipairs(arg_197_0.randomOptions or arg_197_0.randomOption and {
			arg_197_0.randomOption
		} or {}) do
			if tostring(iter_197_1.id) == "25" then
				return true
			end
		end

		return false
	end,
	choose = function(arg_198_0, arg_198_1, arg_198_2, arg_198_3)
		local function var_198_0(arg_199_0, arg_199_1)
			local var_199_0
			local var_199_1
			local var_199_2

			for iter_199_0, iter_199_1 in ipairs(arg_198_1) do
				if (arg_199_1 or not arg_198_2 or iter_199_1 ~= arg_198_2.last) and (arg_199_0 or not arg_198_2 or not arg_198_2.visited[iter_199_1]) then
					local var_199_3 = tonumber(iter_199_1.hp) or math.huge
					local var_199_4 = arg_198_3 and arg_198_3(arg_198_0, iter_199_1) or ((iter_199_1.x or 0) - (arg_198_0.x or 0))^2 + ((iter_199_1.y or 0) - (arg_198_0.y or 0))^2

					if not var_199_0 or var_199_3 < var_199_1 or var_199_3 == var_199_1 and var_199_4 < var_199_2 then
						var_199_0, var_199_1, var_199_2 = iter_199_1, var_199_3, var_199_4
					end
				end
			end

			return var_199_0
		end

		return var_198_0(false, false) or var_198_0(true, false) or var_198_0(true, true)
	end
}

function __recovered_scope_0.var_0_133.select(arg_200_0, arg_200_1, arg_200_2, arg_200_3, arg_200_4)
	if not __recovered_scope_0.var_0_133.has(arg_200_1) then
		return nil
	end

	if arg_200_3 then
		return arg_200_2(arg_200_3) and arg_200_3 or nil
	end

	local var_200_0 = {}

	for iter_200_0, iter_200_1 in ipairs(arg_200_0.enemies or {}) do
		if arg_200_2(iter_200_1) then
			var_200_0[#var_200_0 + 1] = iter_200_1
		end
	end

	return __recovered_scope_0.var_0_133.choose(arg_200_1, var_200_0, arg_200_1.role == "archer" and arg_200_1._scatterScope or nil, arg_200_4)
end

 __recovered_scope_0.var_0_134 = __recovered_scope_0.var_0_133
 __recovered_scope_0.var_0_135 = nil
 __recovered_scope_0.var_0_136 = {
	beginBattle = function(arg_201_0)
		for iter_201_0, iter_201_1 in ipairs(arg_201_0.allies or {}) do
			iter_201_1._scatterScope = nil
		end
	end,
	select = function(arg_202_0, arg_202_1, arg_202_2, arg_202_3, arg_202_4, arg_202_5)
		local var_202_0

		for iter_202_0, iter_202_1 in ipairs(arg_202_0.ui and arg_202_0.ui._itemPurchased or {}) do
			if iter_202_1.key == "ScatterScope" then
				var_202_0 = iter_202_1

				break
			end
		end

		if not var_202_0 or arg_202_0.mode ~= "battle" then
			return arg_202_4 or arg_202_2, 0
		end

		local var_202_1 = {}

		for iter_202_2, iter_202_3 in ipairs(arg_202_0.enemies or {}) do
			if arg_202_3(iter_202_3) then
				var_202_1[#var_202_1 + 1] = iter_202_3
			end
		end

		if #var_202_1 == 0 then
			return arg_202_2, 0
		end

		local var_202_2 = arg_202_1._scatterScope or {
			visited = {}
		}

		arg_202_1._scatterScope = var_202_2

		local var_202_3 = {}

		for iter_202_4, iter_202_5 in ipairs(var_202_1) do
			var_202_3[iter_202_5] = var_202_2.visited[iter_202_5]
		end

		var_202_2.visited = var_202_3

		local var_202_4

		for iter_202_6, iter_202_7 in ipairs(var_202_1) do
			if not var_202_3[iter_202_7] and iter_202_7 ~= var_202_2.last then
				var_202_4 = var_202_4 or iter_202_7

				if iter_202_7 == arg_202_2 then
					var_202_4 = iter_202_7

					break
				end
			end
		end

		if not var_202_4 then
			var_202_2.visited = {}

			for iter_202_8, iter_202_9 in ipairs(var_202_1) do
				if iter_202_9 ~= var_202_2.last then
					var_202_4 = iter_202_9

					break
				end
			end
		end

		var_202_4 = var_202_4 or var_202_1[1]
		var_202_4 = __recovered_scope_0.var_0_134.has(arg_202_1) and __recovered_scope_0.var_0_134.choose(arg_202_1, var_202_1, var_202_2, arg_202_5) or var_202_4

		if arg_202_4 and arg_202_3(arg_202_4) then
			var_202_4 = arg_202_4
		end

		local var_202_5 = #var_202_1 > 1 and var_202_2.last ~= nil and var_202_4 ~= var_202_2.last

		var_202_2.last, var_202_2.visited[var_202_4] = var_202_4, true

		local var_202_6 = var_202_5 and require("src.game.item").levelValue(var_202_0, "damageBonus", var_202_0.damageBonus or {
			0.15,
			0.25
		}) or 0

		if var_202_6 > 0 and _G.__slotTriggerItemPanelEffect then
			__slotTriggerItemPanelEffect(arg_202_0, "ScatterScope", false)
		end

		return var_202_4, var_202_6
	end
}
 __recovered_scope_0.var_0_137 = nil
 __recovered_scope_0.var_0_138 = {}

 function __recovered_scope_0.var_0_139(arg_203_0)
	return arg_203_0 and arg_203_0.side == "ally" and arg_203_0.alive and not arg_203_0.dying and (arg_203_0.hp or 0) > 0 and not arg_203_0.isSummon and not arg_203_0.isShadowMinion and not arg_203_0.isFireSpirit and not arg_203_0.isUndyingSoul and (not arg_203_0.sym or not arg_203_0.sym:find("ENEMY_", 1, true))
end

function __recovered_scope_0.var_0_138.beginBattle(arg_204_0)
	arg_204_0._vanguardDrumUsed = nil

	for iter_204_0, iter_204_1 in ipairs(arg_204_0.allies or {}) do
		iter_204_1._vanguardDrumCharge, iter_204_1._vanguardDrumFX = nil
	end
end

function __recovered_scope_0.var_0_138.onDeath(arg_205_0, arg_205_1)
	if not arg_205_0 or arg_205_0.mode ~= "battle" or arg_205_0._vanguardDrumUsed or not arg_205_1 or arg_205_1.side ~= "enemy" or not ((arg_205_1.hp or 1) <= 0) or not arg_205_1._waveSpawnEnemy or arg_205_1.isSummon or not not arg_205_1.noBaseDamage then
		return false
	end

	local var_205_0

	for iter_205_0, iter_205_1 in ipairs(arg_205_0.ui and arg_205_0.ui._itemPurchased or {}) do
		if iter_205_1.key == "VanguardDrum" then
			var_205_0 = iter_205_1

			break
		end
	end

	if not var_205_0 then
		return false
	end

	local var_205_1 = require("src.game.item").levelValue(var_205_0, "basicAttackBonus", var_205_0.basicAttackBonus or {
		0.25,
		0.4,
		0.55
	})
	local var_205_2 = (arg_205_0._waveTimeAcc or 0) + (var_205_0.buffDuration or 5)

	arg_205_0._vanguardDrumUsed = true

	for iter_205_2, iter_205_3 in ipairs(arg_205_0.allies or {}) do
		if __recovered_scope_0.var_0_139(iter_205_3) then
			iter_205_3._vanguardDrumCharge = {
				bonus = var_205_1,
				expires = var_205_2
			}

			require("src.ui.effects").vanguard_drum.spawn(arg_205_0, iter_205_3, iter_205_2)
		end
	end

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_205_0, "VanguardDrum", true)
	end

	require("src.audio.procedural_audio").playVanguardDrum(arg_205_0.ui)

	return true
end

function __recovered_scope_0.var_0_138.consume(arg_206_0, arg_206_1, arg_206_2)
	if not arg_206_0 or arg_206_0.mode ~= "battle" or not __recovered_scope_0.var_0_139(arg_206_1) then
		return 0
	end

	local var_206_0 = arg_206_1._vanguardDrumCharge

	if not var_206_0 then
		return 0
	end

	arg_206_1._vanguardDrumCharge = nil

	if (arg_206_0._waveTimeAcc or 0) >= var_206_0.expires then
		return 0
	end

	return math.max(0, tonumber(arg_206_2) or 0) * var_206_0.bonus
end

 __recovered_scope_0.var_0_140 = __recovered_scope_0.var_0_138
 __recovered_scope_0.var_0_141 = nil
 __recovered_scope_0.var_0_142 = {
	beginBattle = function(arg_207_0)
		for iter_207_0, iter_207_1 in ipairs(arg_207_0.enemies or {}) do
			iter_207_1._ankleTrapUsed, iter_207_1._ankleTrapT, iter_207_1._ankleTrapMoving = nil
			iter_207_1._ankleTrapStepX, iter_207_1._ankleTrapStepY = nil
		end
	end,
	isMoving = function(arg_208_0, arg_208_1)
		if not arg_208_0 or arg_208_0.mode ~= "battle" or not arg_208_1 or arg_208_1.side ~= "enemy" or not arg_208_1.alive or arg_208_1.dying or not ((arg_208_1.hp or 0) > 0) then
			return false
		end

		if (arg_208_1._ankleTrapT or 0) > 0 or (arg_208_1._gateNetT or 0) > 0 or (arg_208_1.bindingT or 0) > 0 or (arg_208_1.stunT or 0) > 0 or arg_208_1._collisionDrive or arg_208_1._collisionDrivePassenger or arg_208_1._kb then
			return false
		end

		if (arg_208_0.timeStopT or 0) > 0 and not arg_208_1.isMirror then
			local var_208_0 = false

			for iter_208_0, iter_208_1 in pairs(arg_208_1.imprints or {}) do
				if iter_208_1 and iter_208_1.id == "timeless" then
					var_208_0 = true

					break
				end
			end

			if not var_208_0 then
				return false
			end
		end

		if arg_208_1._ankleTrapMoving ~= nil then
			return arg_208_1._ankleTrapMoving
		end

		return arg_208_1.anim and arg_208_1.anim.name == "walk" or false
	end
}

function __recovered_scope_0.var_0_142.onHit(arg_209_0, arg_209_1, arg_209_2, arg_209_3, arg_209_4)
	if not arg_209_2 or arg_209_2.side ~= "ally" or not arg_209_4 or arg_209_4.basicAttack ~= true or arg_209_4.dot or arg_209_4.battleSkillDamage or not ((arg_209_3 or 0) > 0) or not __recovered_scope_0.var_0_142.isMoving(arg_209_0, arg_209_1) or not not arg_209_1._ankleTrapUsed then
		return false
	end

	local var_209_0

	for iter_209_0, iter_209_1 in ipairs(arg_209_0.ui and arg_209_0.ui._itemPurchased or {}) do
		if iter_209_1.key == "AnkleTrap" then
			var_209_0 = iter_209_1

			break
		end
	end

	if not var_209_0 then
		return false
	end

	local var_209_1 = arg_209_1.isBoss or arg_209_1.isFinalBoss or arg_209_1.finalBoss

	arg_209_1._ankleTrapT = require("src.game.item").levelValue(var_209_0, "bindDuration", var_209_0.bindDuration or {
		0.8,
		1.2,
		1.6
	}) * (var_209_1 and 0.5 or 1)
	arg_209_1._ankleTrapUsed, arg_209_1._ankleTrapMoving = true, false

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_209_0, "AnkleTrap", false)
	end

	return true
end

function __recovered_scope_0.var_0_142.beginStep(arg_210_0)
	arg_210_0._ankleTrapStepX, arg_210_0._ankleTrapStepY = arg_210_0.x, arg_210_0.y
end

function __recovered_scope_0.var_0_142.finishStep(arg_211_0, arg_211_1)
	local var_211_0 = arg_211_0._ankleTrapStepX
	local var_211_1 = arg_211_0._ankleTrapStepY

	if var_211_0 == nil or var_211_1 == nil then
		return
	end

	if (arg_211_0._ankleTrapT or 0) > 0 or (arg_211_0._gateNetT or 0) > 0 then
		arg_211_0.x, arg_211_0.y = var_211_0, var_211_1

		if arg_211_0._ankleTrapT then
			arg_211_0._ankleTrapT = math.max(0, arg_211_0._ankleTrapT - arg_211_1)
		end

		if arg_211_0._gateNetT then
			arg_211_0._gateNetT = math.max(0, arg_211_0._gateNetT - arg_211_1)
		end

		arg_211_0._ankleTrapMoving, arg_211_0._walkAnimGraceT = false

		if arg_211_0.anim and arg_211_0.anim.name == "walk" then
			arg_211_0.anim.name = "idle"
		end
	else
		arg_211_0._ankleTrapMoving = math.abs((arg_211_0.x or var_211_0) - var_211_0) > 0.001 or math.abs((arg_211_0.y or var_211_1) - var_211_1) > 0.001
	end

	arg_211_0._ankleTrapStepX, arg_211_0._ankleTrapStepY = nil
end

 __recovered_scope_0.var_0_143 = __recovered_scope_0.var_0_142
 __recovered_scope_0.var_0_144 = nil
 __recovered_scope_0.var_0_145 = {
	clear = function(arg_212_0)
		arg_212_0._gateNet = nil

		for iter_212_0, iter_212_1 in ipairs(arg_212_0.enemies or {}) do
			iter_212_1._gateNetT = nil
		end
	end
}

function __recovered_scope_0.var_0_145.beginBattle(arg_213_0)
	__recovered_scope_0.var_0_145.clear(arg_213_0)

	for iter_213_0, iter_213_1 in ipairs(arg_213_0.ui and arg_213_0.ui._itemPurchased or {}) do
		if iter_213_1.key == "GateNet" then
			local var_213_0 = require("src.game.item").getById("GateNet")

			arg_213_0._gateNet = {
				cooldown = 0,
				used = 0,
				targets = require("src.game.item").levelValue(iter_213_1, "bindTargets", var_213_0.bindTargets),
				duration = var_213_0.bindDuration,
				bossDuration = var_213_0.bossBindDuration,
				maxActivations = var_213_0.maxActivations,
				interval = var_213_0.triggerCooldown,
				range = var_213_0.triggerDistanceFraction
			}

			return
		end
	end
end

function __recovered_scope_0.var_0_145.update(arg_214_0, arg_214_1)
	local var_214_0 = arg_214_0._gateNet

	if arg_214_0.mode ~= "battle" or not arg_214_0.area or not var_214_0 or arg_214_1 <= 0 then
		return
	end

	var_214_0.cooldown = math.max(0, var_214_0.cooldown - arg_214_1)

	if var_214_0.used >= var_214_0.maxActivations or var_214_0.cooldown > 1e-07 then
		return
	end

	local var_214_1 = arg_214_0.area.x or 0
	local var_214_2 = var_214_1 + (arg_214_0.area.w or 0) * var_214_0.range
	local var_214_3 = {}

	for iter_214_0, iter_214_1 in ipairs(arg_214_0.enemies or {}) do
		if iter_214_1.alive and not iter_214_1.dying and (iter_214_1.hp or 0) - math.max(0, iter_214_1._storedDamage or 0) > 0 and not iter_214_1._tricksterCharm and iter_214_1.x and var_214_1 <= iter_214_1.x and var_214_2 >= iter_214_1.x then
			var_214_3[#var_214_3 + 1] = {
				unit = iter_214_1,
				index = iter_214_0
			}
		end
	end

	table.sort(var_214_3, function(arg_215_0, arg_215_1)
		if arg_215_0.unit.x == arg_215_1.unit.x then
			return arg_215_0.index < arg_215_1.index
		end

		return arg_215_0.unit.x < arg_215_1.unit.x
	end)

	if #var_214_3 == 0 then
		return
	end

	for iter_214_2 = 1, math.min(var_214_0.targets, #var_214_3) do
		local var_214_4 = var_214_3[iter_214_2].unit
		local var_214_5 = (var_214_4.isBoss or var_214_4.isFinalBoss or var_214_4.finalBoss) and var_214_0.bossDuration or var_214_0.duration

		var_214_4._gateNetT = math.max(var_214_4._gateNetT or 0, var_214_5)
	end

	var_214_0.used = var_214_0.used + 1
	var_214_0.cooldown = var_214_0.interval

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_214_0, "GateNet", false)
	end
end

 __recovered_scope_0.var_0_146 = __recovered_scope_0.var_0_145
 __recovered_scope_0.var_0_147 = nil
 __recovered_scope_0.var_0_148 = {
	active = function(arg_216_0)
		return arg_216_0 and arg_216_0._oathHelmStone ~= nil
	end
}

function __recovered_scope_0.var_0_148.protect(arg_217_0)
	if not __recovered_scope_0.var_0_148.active(arg_217_0) or not arg_217_0.alive or not not arg_217_0.dying then
		return false
	end

	arg_217_0.hp, arg_217_0.invuln = 1, true
	arg_217_0._factionShieldLastHP, arg_217_0._factionForestLastHP = 1, 1

	require("src.game.unit_abilities").guardian_oath.recordHP(arg_217_0)

	return true
end

function __recovered_scope_0.var_0_148.holdPose(arg_218_0)
	if not __recovered_scope_0.var_0_148.protect(arg_218_0) then
		return false
	end

	local var_218_0 = arg_218_0._oathHelmStone

	arg_218_0.x, arg_218_0.y = var_218_0.x, var_218_0.y
	arg_218_0._suppressAttack = true
	arg_218_0.hitFlash, arg_218_0.hitShake = nil

	require("src.game.bossSkill").holdStonePose(arg_218_0, var_218_0)

	return true
end

function __recovered_scope_0.var_0_148.beginBattle(arg_219_0)
	arg_219_0._oathHelmUsed = false

	for iter_219_0, iter_219_1 in ipairs(arg_219_0.allies or {}) do
		if iter_219_1._oathHelmStone then
			iter_219_1.invuln = iter_219_1._oathHelmStone.wasInvuln
		end

		iter_219_1._oathHelmStone, iter_219_1._oathHelmT = nil
	end
end

function __recovered_scope_0.var_0_148.tryTrigger(arg_220_0, arg_220_1)
	if __recovered_scope_0.var_0_148.protect(arg_220_1) then
		return true
	end

	if not arg_220_0 or arg_220_0.mode ~= "battle" or arg_220_0._oathHelmUsed or not arg_220_1 or arg_220_1.side ~= "ally" or not arg_220_1.alive or arg_220_1.dying or not ((arg_220_1.hp or 1) <= 0) then
		return false
	end

	local var_220_0

	for iter_220_0, iter_220_1 in ipairs(arg_220_0.ui and arg_220_0.ui._itemPurchased or {}) do
		if iter_220_1.key == "OathHelm" then
			var_220_0 = iter_220_1

			break
		end
	end

	if not var_220_0 then
		return false
	end

	arg_220_1._oathHelmStone = {
		t = 0,
		riseDuration = 0.18,
		duration = require("src.game.item").levelValue(var_220_0, "survivalDuration", var_220_0.survivalDuration or {
			1.5,
			2
		}),
		healPct = require("src.game.item").levelValue(var_220_0, "healPct", var_220_0.healPct or {
			0.15,
			0.22
		}),
		x = arg_220_1.x,
		y = arg_220_1.y,
		wasInvuln = arg_220_1.invuln == true and (arg_220_1._invulnT or 0) <= 0
	}
	arg_220_1._oathHelmT = arg_220_1._oathHelmStone.duration
	arg_220_0._oathHelmUsed = true

	require("src.game.bossSkill").cancelStoneActions(arg_220_1)

	arg_220_1._kb, arg_220_1._posLerp = nil

	__recovered_scope_0.var_0_148.holdPose(arg_220_1)

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_220_0, "OathHelm", true)
	end

	return true
end

function __recovered_scope_0.var_0_148.update(arg_221_0, arg_221_1)
	if not arg_221_0 or arg_221_0.mode ~= "battle" then
		return
	end

	for iter_221_0, iter_221_1 in ipairs(arg_221_0.allies or {}) do
		local var_221_0 = iter_221_1._oathHelmStone

		if var_221_0 then
			if not iter_221_1.alive or iter_221_1.dying then
				iter_221_1._oathHelmStone, iter_221_1._oathHelmT = nil
			else
				__recovered_scope_0.var_0_148.holdPose(iter_221_1)

				var_221_0.t = var_221_0.t + math.max(0, arg_221_1 or 0)
				iter_221_1._oathHelmT = math.max(0, var_221_0.duration - var_221_0.t)

				if var_221_0.t >= var_221_0.duration then
					iter_221_1._oathHelmStone, iter_221_1._oathHelmT = nil
					iter_221_1.invuln = (iter_221_1._invulnT or 0) > 0 or var_221_0.wasInvuln or false
					iter_221_1._suppressAttack = iter_221_1._caveBasiliskPetrified and true or nil

					if iter_221_1.anim and not iter_221_1._caveBasiliskPetrified then
						iter_221_1.anim.name, iter_221_1.anim.frame, iter_221_1.anim.t = "idle", 1, 0
						iter_221_1.anim.reverse = nil
						iter_221_1.anim._desynced = true
					end

					local var_221_1 = math.max(1, iter_221_1.maxhp or 1)
					local var_221_2 = var_221_0.healPct * require("src.game.combat").faction.healMultiplier(arg_221_0, iter_221_1)
					local var_221_3 = math.min(var_221_1 - 1, math.max(1, math.floor(var_221_1 * var_221_2 + 0.5)))

					iter_221_1.hp = 1 + var_221_3

					require("src.game.combat").guardian_golem.share(arg_221_0, iter_221_1, var_221_3)

					iter_221_1._factionShieldLastHP, iter_221_1._factionForestLastHP = iter_221_1.hp, iter_221_1.hp

					require("src.game.unit_abilities").guardian_oath.recordHP(iter_221_1)
					require("src.ui.effects").healing_feedback.apply(iter_221_1, var_221_3)
					require("src.ui.effects").healing_feedback.healerPlus(arg_221_0, iter_221_1)
				end
			end
		end
	end
end

 __recovered_scope_0.var_0_149 = __recovered_scope_0.var_0_148
 __recovered_scope_0.var_0_150 = nil
 __recovered_scope_0.var_0_151 = {}
 __recovered_scope_0.var_0_152 = {
	W = true,
	S = true,
	D = true,
	H = true,
	M = true,
	A = true
}

function __recovered_scope_0.var_0_151.engaged(arg_222_0, arg_222_1, arg_222_2)
	if not arg_222_1 or not __recovered_scope_0.var_0_152[arg_222_1.sym] or arg_222_1.side ~= "ally" or not arg_222_1.alive or arg_222_1.dying or not ((arg_222_1.hp or 0) > 0) then
		return false
	end

	if arg_222_1.isSummon or arg_222_1.isClone or arg_222_1.isShadowMinion or arg_222_1.isFireSpirit or arg_222_1.isFlameSpirit or arg_222_1.isHusk or arg_222_1.isUndyingSoul or arg_222_1.isTower or arg_222_1.summonOwner or arg_222_1.cloneOwner or arg_222_1._suppressAttack or arg_222_1._succubusCharm or arg_222_1._wastelandPiperCharm or arg_222_1._oathHelmStone or arg_222_1._caveBasiliskPetrified or arg_222_1._venomMawSwallowed or arg_222_1._venomMawTransition or arg_222_1._cosmicPressure or arg_222_1._starJudgeScaleAirborne or (arg_222_1.stunT or 0) > 0 or (arg_222_1.fearT or 0) > 0 or (arg_222_1._frostSpikeFreezeT or 0) > 0 then
		return false
	end

	if (arg_222_1.pendingTarget or arg_222_1.target) ~= arg_222_2 then
		return false
	end

	if not __recovered_scope_0.var_0_39.targetAllowed(arg_222_0, arg_222_1, arg_222_2) then
		return false
	end

	if arg_222_1._bodyColX and arg_222_2._bodyColX and arg_222_1._bodyColX <= arg_222_2._bodyColX + (arg_222_2._bodyColW or 0) and arg_222_2._bodyColX <= arg_222_1._bodyColX + (arg_222_1._bodyColW or 0) and arg_222_1._bodyColY <= arg_222_2._bodyColY + (arg_222_2._bodyColH or 0) and arg_222_2._bodyColY <= arg_222_1._bodyColY + (arg_222_1._bodyColH or 0) then
		return true
	end

	local var_222_0 = arg_222_1.x or 0
	local var_222_1 = arg_222_1.y or 0
	local var_222_2 = arg_222_2.x or 0
	local var_222_3 = arg_222_2.y or 0

	if arg_222_0.entityGroundPoint then
		var_222_0, var_222_1 = arg_222_0:entityGroundPoint(arg_222_1)
		var_222_2, var_222_3 = arg_222_0:entityGroundPoint(arg_222_2)
	end

	local var_222_4 = math.max(0.1, math.min(1, tonumber(arg_222_0.ui and arg_222_0.ui.battle and arg_222_0.ui.battle.rangeEllipseYScale) or 0.5))
	local var_222_5 = var_222_2 - var_222_0
	local var_222_6 = (var_222_3 - var_222_1) / var_222_4
	local var_222_7 = math.max(0, tonumber(arg_222_1.distance) or 0)

	return var_222_5 * var_222_5 + var_222_6 * var_222_6 <= var_222_7 * var_222_7
end

function __recovered_scope_0.var_0_151.bonus(arg_223_0, arg_223_1)
	if not arg_223_0 or arg_223_0.mode ~= "battle" or arg_223_0.gameOver or not arg_223_1 or not arg_223_1.alive or arg_223_1.dying or not ((arg_223_1.hp or 0) > 0) then
		return 0, 0
	end

	local var_223_0

	for iter_223_0, iter_223_1 in ipairs(arg_223_0.ui and arg_223_0.ui._itemPurchased or {}) do
		if iter_223_1.key == "NecklaceOfUnity" then
			var_223_0 = iter_223_1

			break
		end
	end

	if not var_223_0 then
		return 0, 0
	end

	local var_223_1 = {}
	local var_223_2 = 0

	for iter_223_2, iter_223_3 in ipairs(arg_223_0.allies or {}) do
		if not var_223_1[iter_223_3.sym] and __recovered_scope_0.var_0_151.engaged(arg_223_0, iter_223_3, arg_223_1) then
			var_223_1[iter_223_3.sym], var_223_2 = true, var_223_2 + 1
		end
	end

	return math.max(0, math.min(3, var_223_2 - 1)) * require("src.game.item").levelValue(var_223_0, "damagePerType", var_223_0.damagePerType or 0.08), var_223_2
end

function __recovered_scope_0.var_0_151.modifyDamage(arg_224_0, arg_224_1, arg_224_2)
	local var_224_0 = __recovered_scope_0.var_0_151.bonus(arg_224_0, arg_224_1)

	return (tonumber(arg_224_2) or 0) * (1 + var_224_0)
end

 __recovered_scope_0.var_0_153 = __recovered_scope_0.var_0_151
 __recovered_scope_0.var_0_154 = nil
 __recovered_scope_0.var_0_155 = {
	beginBattle = function(arg_225_0)
		arg_225_0._rockfall = nil

		for iter_225_0, iter_225_1 in ipairs(arg_225_0.ui and arg_225_0.ui._itemPurchased or {}) do
			if iter_225_1.key == "Rockfall" then
				local var_225_0 = require("src.game.item").getById("49")

				arg_225_0._rockfall = {
					applied = false,
					count = require("src.game.item").levelValue(iter_225_1, "delayedEnemyCount", var_225_0.delayedEnemyCount),
					duration = var_225_0.spawnDelaySec,
					minimum = var_225_0.minimumEnemyCount
				}

				break
			end
		end
	end,
	applyOpening = function(arg_226_0)
		local var_226_0 = arg_226_0._rockfall

		if not var_226_0 or var_226_0.applied or arg_226_0.mode ~= "battle" then
			return
		end

		var_226_0.applied = true

		local var_226_1 = 0
		local var_226_2 = {}

		for iter_226_0, iter_226_1 in ipairs(arg_226_0.enemies or {}) do
			if iter_226_1._waveSpawnEnemy and iter_226_1.alive and not iter_226_1.dying and not iter_226_1.isSummon and not iter_226_1.isHusk then
				var_226_1 = var_226_1 + 1

				if not iter_226_1.isBoss and not iter_226_1.isFinalBoss and not iter_226_1.finalBoss then
					var_226_2[#var_226_2 + 1] = {
						enemy = iter_226_1,
						index = iter_226_0
					}
				end
			end
		end

		if var_226_1 < var_226_0.minimum or #var_226_2 == 0 then
			return
		end

		table.sort(var_226_2, function(arg_227_0, arg_227_1)
			local var_227_0 = arg_227_0.enemy.x or 0
			local var_227_1 = arg_227_1.enemy.x or 0

			if var_227_0 == var_227_1 then
				return arg_227_0.index < arg_227_1.index
			end

			return var_227_1 < var_227_0
		end)

		local var_226_3 = {}

		for iter_226_2 = 1, math.min(var_226_0.count, #var_226_2) do
			var_226_3[var_226_2[iter_226_2].enemy] = true
		end

		var_226_0.pending, var_226_0.remaining = {}, var_226_0.duration

		for iter_226_3, iter_226_4 in ipairs(arg_226_0.enemies) do
			if var_226_3[iter_226_4] then
				var_226_0.pending[#var_226_0.pending + 1] = {
					enemy = iter_226_4,
					x = iter_226_4.x,
					y = iter_226_4.y
				}
			end
		end

		for iter_226_5 = #arg_226_0.enemies, 1, -1 do
			if var_226_3[arg_226_0.enemies[iter_226_5]] then
				table.remove(arg_226_0.enemies, iter_226_5)
			end
		end

		if _G.__slotTriggerItemPanelEffect then
			__slotTriggerItemPanelEffect(arg_226_0, "Rockfall", true)
		end
	end,
	hasPending = function(arg_228_0)
		local var_228_0 = arg_228_0._rockfall

		return var_228_0 ~= nil and var_228_0.pending ~= nil and #var_228_0.pending > 0
	end
}

function __recovered_scope_0.var_0_155.update(arg_229_0, arg_229_1)
	if not __recovered_scope_0.var_0_155.hasPending(arg_229_0) or arg_229_0.mode ~= "battle" or arg_229_0.gameOver or arg_229_0._judgementIntroLockActive then
		return
	end

	local var_229_0 = arg_229_0._rockfall

	var_229_0.remaining = var_229_0.remaining - math.max(0, tonumber(arg_229_1) or 0)

	if var_229_0.remaining > 1e-09 then
		return
	end

	for iter_229_0, iter_229_1 in ipairs(var_229_0.pending) do
		iter_229_1.enemy.x, iter_229_1.enemy.y = iter_229_1.x, iter_229_1.y
		arg_229_0.enemies[#arg_229_0.enemies + 1] = iter_229_1.enemy
	end

	var_229_0.pending = nil
end

 __recovered_scope_0.var_0_156 = __recovered_scope_0.var_0_155
 __recovered_scope_0.var_0_157 = nil
 __recovered_scope_0.var_0_158 = {
	clear = function(arg_230_0)
		arg_230_0._escapeCloak = nil

		for iter_230_0, iter_230_1 in ipairs(arg_230_0.allies or {}) do
			iter_230_1._escapeCloakUsed, iter_230_1._escapeCloakLastHP = nil
			iter_230_1._escapeCloakShield, iter_230_1._escapeCloakFx, iter_230_1._escapeCloakRetreat = nil
		end
	end
}

function __recovered_scope_0.var_0_158.beginBattle(arg_231_0)
	__recovered_scope_0.var_0_158.clear(arg_231_0)

	for iter_231_0, iter_231_1 in ipairs(arg_231_0.ui and arg_231_0.ui._itemPurchased or {}) do
		if iter_231_1.key == "EscapeCloak" then
			local var_231_0 = require("src.game.item").getById("50")

			arg_231_0._escapeCloak = {
				ratio = require("src.game.item").levelValue(iter_231_1, "shieldMaxHpRatio", var_231_0.shieldMaxHpRatio),
				threshold = var_231_0.hpThreshold,
				distance = var_231_0.retreatDistance,
				duration = var_231_0.retreatDuration
			}

			break
		end
	end

	for iter_231_2, iter_231_3 in ipairs(arg_231_0.allies or {}) do
		iter_231_3._escapeCloakLastHP = iter_231_3.hp
	end
end

function __recovered_scope_0.var_0_158.hasShield(arg_232_0)
	return arg_232_0 and arg_232_0._escapeCloakShield ~= nil and arg_232_0._escapeCloakShield.hp > 0
end

function __recovered_scope_0.var_0_158.tryTrigger(arg_233_0, arg_233_1, arg_233_2, arg_233_3)
	if not arg_233_1 or arg_233_1.isDecoyDummy then
		return false
	end

	local var_233_0 = tonumber(arg_233_1.hp) or 0
	local var_233_1 = tonumber(arg_233_1.maxhp) or 0

	arg_233_1._escapeCloakLastHP = var_233_0

	local var_233_2 = arg_233_0 and arg_233_0._escapeCloak

	if not var_233_2 or arg_233_0.mode ~= "battle" or arg_233_0.gameOver or arg_233_1.side ~= "ally" or not arg_233_1.alive or arg_233_1.dying or arg_233_1._escapeCloakUsed or arg_233_1._oathHelmStone or arg_233_1.isTower or var_233_0 <= 0 or var_233_1 <= 0 or var_233_0 > var_233_1 * var_233_2.threshold or var_233_0 >= (tonumber(arg_233_2) or var_233_0) or arg_233_3 and (arg_233_3.hpCost or arg_233_3.hpLoss or arg_233_3.selfDamage) then
		return false
	end

	arg_233_1._escapeCloakUsed = true

	local var_233_3 = var_233_1 * var_233_2.ratio

	arg_233_1._escapeCloakShield = {
		t = 1,
		hp = var_233_3,
		max = var_233_3
	}

	require("src.game.combat").shield_break.register(arg_233_0, arg_233_1._escapeCloakShield, "EscapeCloak")

	arg_233_1._escapeCloakFx = require("src.ui.effects").holy_barrier.newSturdyShieldFX()
	arg_233_1.hpbarShowT = math.max(arg_233_1.hpbarShowT or 0, 2)

	if not arg_233_1._dimensionalPocket then
		arg_233_1._escapeCloakRetreat = {
			t = 0,
			distance = var_233_2.distance,
			duration = var_233_2.duration,
			facing = arg_233_1.facing or 1
		}
	end

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_233_0, "EscapeCloak", false)
	end

	return true
end

function __recovered_scope_0.var_0_158.absorb(arg_234_0, arg_234_1, arg_234_2, arg_234_3, arg_234_4)
	local var_234_0 = math.max(0, tonumber(arg_234_1) or 0)

	if not __recovered_scope_0.var_0_158.hasShield(arg_234_0) or arg_234_2 and (arg_234_2.hpCost or arg_234_2.hpLoss or arg_234_2.selfDamage) then
		return var_234_0
	end

	local var_234_1 = arg_234_0._escapeCloakShield
	local var_234_2 = math.min(var_234_0, var_234_1.hp)

	var_234_1.hp = var_234_1.hp - var_234_2

	if var_234_2 > 0 then
		arg_234_0._factionShieldHitT = 0.35

		require("src.ui.effects").holy_barrier.hit(arg_234_0, false, "_escapeCloakFx")
	end

	if var_234_1.hp <= 0 then
		arg_234_0._escapeCloakShield = nil

		require("src.game.combat").shield_break.depleted(arg_234_3, arg_234_0, var_234_1, "EscapeCloak", var_234_2, arg_234_4, arg_234_2)
	end

	return var_234_0 - var_234_2
end

function __recovered_scope_0.var_0_158.observe(arg_235_0, arg_235_1)
	return __recovered_scope_0.var_0_158.tryTrigger(arg_235_0, arg_235_1, arg_235_1._escapeCloakLastHP)
end

function __recovered_scope_0.var_0_158.update(arg_236_0)
	for iter_236_0, iter_236_1 in ipairs(arg_236_0.allies or {}) do
		if arg_236_0.mode ~= "battle" or not iter_236_1.alive or iter_236_1.dying then
			iter_236_1._escapeCloakShield, iter_236_1._escapeCloakFx, iter_236_1._escapeCloakRetreat = nil
		end
	end
end

function __recovered_scope_0.var_0_158.retreat(arg_237_0, arg_237_1, arg_237_2, arg_237_3)
	local var_237_0 = arg_237_1._escapeCloakRetreat

	if not var_237_0 or arg_237_0._judgementIntroLockActive or (arg_237_2 or 0) <= 0 then
		return
	end

	if arg_237_1._spaceWizardExchangeMotion or arg_237_1._marshDriveAir or arg_237_1._cosmicPressure or arg_237_1._caveBasiliskPetrified or arg_237_1._oathHelmStone or arg_237_1._hellEnforcerExecutionLock or arg_237_1._collisionDrive or arg_237_1._collisionDrivePassenger or arg_237_1._collisionWindup or arg_237_1._starJudgeScaleAirborne or arg_237_1._venomMawSwallowed then
		return
	end

	if not var_237_0.fromX then
		var_237_0.fromX, var_237_0.y = arg_237_1.x or 0, arg_237_1.y or 0
		var_237_0.toX = math.min(var_237_0.fromX, math.max(tonumber(arg_237_3) or var_237_0.fromX, var_237_0.fromX - var_237_0.distance))

		require("src.game.bossSkill").cancelStoneActions(arg_237_1)

		arg_237_1._forceAnim, arg_237_1._forceAnimT = nil

		if arg_237_1.anim then
			arg_237_1.anim.name, arg_237_1.anim.frame, arg_237_1.anim.t = "walk", 1, 0
		end
	end

	arg_237_1._kb, arg_237_1._posLerp = nil
	arg_237_1.target, arg_237_1.pendingTarget, arg_237_1.shotPending = nil, nil, false
	arg_237_1._suppressAttack = true
	var_237_0.t = math.min(var_237_0.duration, var_237_0.t + math.max(0, arg_237_2 or 0))

	local var_237_1 = var_237_0.t / var_237_0.duration

	arg_237_1.x = var_237_0.fromX + (var_237_0.toX - var_237_0.fromX) * (var_237_1 * var_237_1 * (3 - 2 * var_237_1))
	arg_237_1.y, arg_237_1.facing = var_237_0.y, var_237_0.facing

	if var_237_0.t >= var_237_0.duration then
		arg_237_1._escapeCloakRetreat = nil
		arg_237_1._suppressAttack = nil
	end
end

 __recovered_scope_0.var_0_159 = __recovered_scope_0.var_0_158
 __recovered_scope_0.var_0_160 = nil
 __recovered_scope_0.var_0_161 = {}
 __recovered_scope_0.var_0_162 = {
	__index = function(arg_238_0, arg_238_1)
		if arg_238_1 == "hp" then
			return arg_238_0._decoyHP
		end

		if arg_238_1 == "maxhp" then
			return arg_238_0._decoyMaxHP
		end

		if arg_238_1 == "alive" then
			return arg_238_0._decoyHP > 0
		end
	end,
	__newindex = function(arg_239_0, arg_239_1, arg_239_2)
		if arg_239_1 == "hp" then
			rawset(arg_239_0, "_decoyHP", math.max(0, math.min(arg_239_0._decoyHP, tonumber(arg_239_2) or 0)))
		elseif arg_239_1 == "alive" then
			if arg_239_2 == false then
				rawset(arg_239_0, "_decoyHP", 0)
			end
		elseif arg_239_1 ~= "maxhp" then
			rawset(arg_239_0, arg_239_1, arg_239_2)
		end
	end
}

function __recovered_scope_0.var_0_161.clear(arg_240_0)
	local var_240_0 = arg_240_0._decoyDummy

	if var_240_0 then
		var_240_0.hp = 0

		__recovered_scope_0.var_0_161.destroy(arg_240_0, var_240_0)
	end

	for iter_240_0 = #(arg_240_0.allies or {}), 1, -1 do
		if arg_240_0.allies[iter_240_0].isDecoyDummy then
			table.remove(arg_240_0.allies, iter_240_0)
		end
	end

	arg_240_0._decoyDummy = nil
end

function __recovered_scope_0.var_0_161.beginBattle(arg_241_0)
	__recovered_scope_0.var_0_161.clear(arg_241_0)

	local var_241_0

	for iter_241_0, iter_241_1 in ipairs(arg_241_0.ui and arg_241_0.ui._itemPurchased or {}) do
		if iter_241_1.key == "DecoyDummy" then
			var_241_0 = iter_241_1

			break
		end
	end

	if not var_241_0 then
		return
	end

	local var_241_1 = 0

	for iter_241_2, iter_241_3 in ipairs(arg_241_0.allies or {}) do
		if iter_241_3.alive and not iter_241_3.dying and not iter_241_3.isSummon and not iter_241_3.isClone and not iter_241_3.isUndyingSoul then
			var_241_1 = math.max(var_241_1, iter_241_3.maxhp or iter_241_3.hp or 0)
		end
	end

	if var_241_1 <= 0 then
		return
	end

	local var_241_2 = require("src.game.item").levelValue(var_241_0, "hpRatio", require("src.game.item").getById("51").hpRatio)
	local var_241_3 = math.max(1, math.floor(var_241_1 * var_241_2 + 0.5))
	local var_241_4 = arg_241_0.ui and arg_241_0.ui.battle and arg_241_0.ui.battle.allySize32 or 64
	local var_241_5 = arg_241_0.area or {
		h = 520,
		x = 0,
		y = 0,
		w = 760
	}
	local var_241_6 = var_241_5.x + math.floor(var_241_5.w * 0.46 + 0.5)
	local var_241_7 = var_241_5.y + var_241_4 * 0.5
	local var_241_8 = var_241_5.y + var_241_5.h - var_241_4 * 0.5

	if arg_241_0.getRosterClamp then
		local var_241_9, var_241_10, var_241_11, var_241_12 = arg_241_0:getRosterClamp(var_241_5)

		var_241_6 = var_241_10 or var_241_6
		var_241_7, var_241_8 = var_241_11 or var_241_7, var_241_12 or var_241_8
	end

	local var_241_13 = math.min(var_241_6 + var_241_4 * 1.375, var_241_5.x + var_241_5.w - var_241_4 * 0.5)
	local var_241_14 = var_241_7 + (love and love.math and love.math.random or math.random)() * math.max(0, var_241_8 - var_241_7)
	local var_241_15 = setmetatable({
		sym = "DECOY",
		facing = 1,
		_decoySpawnT = 0,
		distance = 0,
		speed = 0,
		star = 1,
		rank = 1,
		isDecoyDummy = true,
		isSummon = true,
		_suppressAttack = true,
		kind = "DecoyDummy",
		side = "ally",
		atkTicks = 999999,
		hpbarShowT = 999999,
		coolTicks = 999999,
		skin = "DecoyDummy",
		dmg = 0,
		_decoyHP = var_241_3,
		_decoyMaxHP = var_241_3,
		x = var_241_13,
		y = var_241_14,
		_decoyX = var_241_13,
		_decoyY = var_241_14,
		anim = {
			frame = 1,
			name = "idle",
			t = 0
		},
		spawnVFX = {
			phase = 1,
			t = 0,
			dur = {
				0.2,
				0.35,
				0.25
			},
			tint = {
				0.75,
				0.55,
				0.32
			}
		}
	}, __recovered_scope_0.var_0_162)

	arg_241_0._decoyDummy = var_241_15
	arg_241_0.allies[#arg_241_0.allies + 1] = var_241_15

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_241_0, "DecoyDummy", false)
	end
end

function __recovered_scope_0.var_0_161.canTarget(arg_242_0)
	return not arg_242_0 or arg_242_0.side ~= "enemy" or not arg_242_0._decoyEntryBlocked
end

function __recovered_scope_0.var_0_161.target(arg_243_0, arg_243_1)
	local var_243_0 = arg_243_0 and arg_243_0._decoyDummy

	if not var_243_0 or not var_243_0.alive or var_243_0.dying or not arg_243_1 or arg_243_1.side ~= "enemy" or arg_243_1._tricksterCharm then
		return
	end

	if not __recovered_scope_0.var_0_161.canTarget(arg_243_1) then
		return
	end

	if _G.__slotStage6RiftTargetAllowed and not __slotStage6RiftTargetAllowed(arg_243_0, arg_243_1, var_243_0) then
		return
	end

	return var_243_0
end

function __recovered_scope_0.var_0_161.destroy(arg_244_0, arg_244_1)
	if not arg_244_1 or not arg_244_1.isDecoyDummy then
		return false
	end

	if not arg_244_1._decoyDestroyed then
		arg_244_1._decoyDestroyed = true
		arg_244_1._decoyVanishT = 0
		arg_244_1.spawnVFX = {
			phase = 3,
			t = 0.25,
			dur = {
				0.2,
				0.35,
				0.25
			},
			tint = {
				0.75,
				0.55,
				0.32
			}
		}
	end

	arg_244_1.hp = 0
	arg_244_1.dying = false

	for iter_244_0, iter_244_1 in ipairs(arg_244_0.enemies or {}) do
		if iter_244_1.target == arg_244_1 then
			iter_244_1.target = nil
		end

		if iter_244_1.pendingTarget == arg_244_1 then
			iter_244_1.pendingTarget = nil
			iter_244_1.shotPending = false
		end
	end

	return true
end

function __recovered_scope_0.var_0_161.damage(arg_245_0, arg_245_1, arg_245_2, arg_245_3, arg_245_4)
	if not arg_245_1 or not arg_245_1.isDecoyDummy then
		return false
	end

	if not arg_245_1.alive then
		return true
	end

	local var_245_0 = math.min(arg_245_1.hp, math.max(0, tonumber(arg_245_2) or 0))

	arg_245_1.hp = arg_245_1.hp - var_245_0

	if var_245_0 > 0 then
		arg_245_0.allyDetectUnlocked = true

		if arg_245_4 and arg_245_4.side == "enemy" and arg_245_4.alive and not arg_245_4.dying and not arg_245_4._wastelandPiperCharm and not arg_245_4._tricksterCharm then
			arg_245_0.globalAggroTarget = arg_245_4
		end

		local var_245_1 = arg_245_0.ui and arg_245_0.ui.battle or {}
		local var_245_2 = var_245_1.hitShake or {}

		arg_245_1.hitFlash = {
			t = 0,
			dur = var_245_1.hitFlashDur or 0.16
		}
		arg_245_1.hitShake = {
			t = 0,
			dur = var_245_2.dur or 0.18,
			amp = var_245_2.ampPx or 4
		}

		if arg_245_3 then
			arg_245_3()
		end

		arg_245_1.damagePopups = arg_245_1.damagePopups or {}
		arg_245_1.damagePopups[#arg_245_1.damagePopups + 1] = {
			stackIdx = 0,
			t = 0,
			dur = 0.7,
			amt = var_245_0
		}

		if #arg_245_1.damagePopups > 2 then
			table.remove(arg_245_1.damagePopups, 1)
		end
	end

	if arg_245_1.hp <= 0 then
		__recovered_scope_0.var_0_161.destroy(arg_245_0, arg_245_1)
	end

	return true
end

function __recovered_scope_0.var_0_161.update(arg_246_0, arg_246_1)
	local var_246_0 = arg_246_0._decoyDummy

	if not var_246_0 then
		return
	end

	if arg_246_0.mode ~= "battle" then
		__recovered_scope_0.var_0_161.clear(arg_246_0)

		return
	end

	arg_246_1 = math.max(0, arg_246_1 or 0)

	for iter_246_0, iter_246_1 in ipairs({
		"hitFlash",
		"hitShake"
	}) do
		local var_246_1 = var_246_0[iter_246_1]

		if var_246_1 then
			var_246_1.t = var_246_1.t + arg_246_1

			if var_246_1.t >= var_246_1.dur then
				var_246_0[iter_246_1] = nil
			end
		end
	end

	if not var_246_0.alive then
		__recovered_scope_0.var_0_161.destroy(arg_246_0, var_246_0)
	end

	local var_246_2

	if var_246_0._decoyVanishT then
		var_246_0._decoyVanishT = var_246_0._decoyVanishT + arg_246_1
		var_246_2 = 0.8 - var_246_0._decoyVanishT

		if var_246_2 <= 0 then
			var_246_0._decoyVanishT = nil
			var_246_0.spawnVFX = nil

			return
		end
	elseif var_246_0._decoyDestroyed then
		return
	else
		var_246_0._decoySpawnT = math.min(0.8, (var_246_0._decoySpawnT or 0) + arg_246_1)
		var_246_2 = var_246_0._decoySpawnT
	end

	if var_246_2 < 0.8 then
		local var_246_3 = var_246_0.spawnVFX or {
			dur = {
				0.2,
				0.35,
				0.25
			},
			tint = {
				0.75,
				0.55,
				0.32
			}
		}

		if var_246_2 < 0.2 then
			var_246_3.phase, var_246_3.t = 1, var_246_2
		elseif var_246_2 < 0.55 then
			var_246_3.phase, var_246_3.t = 2, var_246_2 - 0.2
		else
			var_246_3.phase, var_246_3.t = 3, var_246_2 - 0.55
		end

		var_246_0.spawnVFX = var_246_3
	elseif var_246_0.alive then
		var_246_0.spawnVFX = nil
	end

	var_246_0.x, var_246_0.y = var_246_0._decoyX, var_246_0._decoyY
	var_246_0.target, var_246_0.pendingTarget, var_246_0.shotPending, var_246_0._kb = nil, nil, false
	var_246_0._suppressAttack = true
	var_246_0.anim.name = "idle"
	var_246_0.anim.t = (var_246_0.anim.t or 0) + math.max(0, arg_246_1 or 0)

	while var_246_0.anim.t >= 0.15 do
		var_246_0.anim.t = var_246_0.anim.t - 0.15
		var_246_0.anim.frame = var_246_0.anim.frame % 4 + 1
	end
end

 __recovered_scope_0.var_0_163 = __recovered_scope_0.var_0_161
 __recovered_scope_0.var_0_164 = nil
 __recovered_scope_0.var_0_165 = {
	clear = function(arg_247_0)
		arg_247_0._cursedMushroomClock = 0
		arg_247_0._cursedMushroomActive = {}
	end,
	ratio = function(arg_248_0)
		for iter_248_0, iter_248_1 in ipairs(arg_248_0.ui and arg_248_0.ui._itemPurchased or {}) do
			if iter_248_1.key == "CursedMushroom" or tostring(iter_248_1.id or "") == "08" then
				local var_248_0 = require("src.game.item").getById("08")

				return require("src.game.item").levelValue(iter_248_1, "transferRatio", var_248_0.transferRatio or {
					0.6,
					0.8,
					1
				}), var_248_0.transferRadius or 70
			end
		end
	end
}

 function __recovered_scope_0.var_0_166(arg_249_0, arg_249_1, arg_249_2)
	if type(arg_249_1) ~= "table" then
		return
	end

	local var_249_0 = arg_249_0._cursedMushroomClock or 0
	local var_249_1
	local var_249_2
	local var_249_3
	local var_249_4

	if arg_249_2 == "poison" then
		var_249_1 = tonumber(arg_249_1.dur) or 0
		var_249_3 = 0.5
		var_249_2 = var_249_3 - (tonumber(arg_249_1.timer) or 0)
		var_249_4 = math.max(3, math.floor((tonumber(arg_249_0._cursedMushroomDeadMaxHP) or 0) * (tonumber(arg_249_1.maxHPFrac) or 0.012) + 0.5))

		if arg_249_0._cursedMushroomDeadBoss and _G.__slotModifyBossDamageToEnemy then
			var_249_4 = math.floor(__slotModifyBossDamageToEnemy(arg_249_0._cursedMushroomDeadBoss, nil, var_249_4, nil, arg_249_0) + 0.5)
		end
	elseif arg_249_2 == "bleed" then
		var_249_1 = (tonumber(arg_249_1.dur) or 0) - (tonumber(arg_249_1.t) or 0)
		var_249_3 = math.max(0.01, tonumber(arg_249_1.tickInterval) or 0.5)
		var_249_2 = tonumber(arg_249_1.nextTick) or var_249_3
		var_249_4 = tonumber(arg_249_1.dmg) or 0
	else
		var_249_1 = tonumber(arg_249_1.t) or 0
		var_249_3 = 1
		var_249_2 = var_249_3 - (tonumber(arg_249_1.tickT) or 0)
		var_249_4 = tonumber(arg_249_1.damage or arg_249_1.tickDamage) or 0
	end

	if var_249_1 <= 0 or var_249_4 <= 0 then
		return
	end

	local var_249_5 = math.max(0, var_249_2)
	local var_249_6 = {}

	for iter_249_0 = 1, 1000 do
		local var_249_7 = var_249_0 + var_249_5 + (iter_249_0 - 1) * var_249_3

		if var_249_7 > var_249_0 + var_249_1 + 1e-07 then
			break
		end

		var_249_6[#var_249_6 + 1] = {
			at = var_249_7,
			damage = var_249_4
		}
	end

	if #var_249_6 == 0 then
		return
	end

	return {
		next = 1,
		origin = arg_249_1,
		kind = arg_249_2,
		ticks = var_249_6,
		expiresAt = var_249_0 + var_249_1
	}
end

 function __recovered_scope_0.var_0_167(arg_250_0, arg_250_1, arg_250_2)
	local var_250_0 = {}
	local var_250_1 = 0
	local var_250_2 = 0

	for iter_250_0 = arg_250_0.next, #arg_250_0.ticks do
		local var_250_3 = arg_250_0.ticks[iter_250_0]

		if var_250_3.at >= arg_250_2 - 1e-07 and var_250_3.at <= arg_250_0.expiresAt + 1e-07 then
			var_250_1 = var_250_1 + var_250_3.damage

			local var_250_4 = math.floor(var_250_1 * arg_250_1 + 0.5)

			var_250_0[#var_250_0 + 1] = {
				at = var_250_3.at,
				damage = var_250_4 - var_250_2
			}
			var_250_2 = var_250_4
		end
	end

	if var_250_2 <= 0 then
		return
	end

	return {
		next = 1,
		origin = arg_250_0.origin,
		kind = arg_250_0.kind,
		ticks = var_250_0,
		expiresAt = arg_250_0.expiresAt
	}
end

function __recovered_scope_0.var_0_165.onDeath(arg_251_0, arg_251_1)
	if not arg_251_0 or not arg_251_1 or arg_251_1.side ~= "enemy" then
		return
	end

	local var_251_0, var_251_1 = __recovered_scope_0.var_0_165.ratio(arg_251_0)

	if not var_251_0 then
		return
	end

	local var_251_2 = arg_251_0._cursedMushroomClock or 0
	local var_251_3
	local var_251_4

	for iter_251_0, iter_251_1 in ipairs(arg_251_0.enemies or {}) do
		if iter_251_1 ~= arg_251_1 and iter_251_1.alive and not iter_251_1.dying and (iter_251_1.hp or 0) > 0 and not iter_251_1.isHusk then
			local var_251_5 = (iter_251_1.x or 0) - (arg_251_1.x or 0)
			local var_251_6 = (iter_251_1.y or 0) - (arg_251_1.y or 0)
			local var_251_7 = var_251_5 * var_251_5 + var_251_6 * var_251_6

			if var_251_7 <= var_251_1 * var_251_1 and (not var_251_4 or var_251_7 < var_251_4) then
				var_251_3, var_251_4 = iter_251_1, var_251_7
			end
		end
	end

	local var_251_8 = arg_251_0._cursedMushroomActive or {}

	arg_251_0._cursedMushroomActive = var_251_8

	local var_251_9 = {}

	arg_251_0._cursedMushroomDeadMaxHP = arg_251_1.maxhp
	arg_251_0._cursedMushroomDeadBoss = arg_251_1.isBoss and arg_251_1 or nil

	for iter_251_2, iter_251_3 in ipairs({
		{
			arg_251_1.poison,
			"poison"
		},
		{
			arg_251_1._bleed,
			"bleed"
		},
		{
			arg_251_1._flameEruptionBurn,
			"burn"
		},
		{
			arg_251_1.firebreatherBurn,
			"burn"
		}
	}) do
		local var_251_10 = __recovered_scope_0.var_0_166(arg_251_0, iter_251_3[1], iter_251_3[2])

		if var_251_10 then
			var_251_9[#var_251_9 + 1] = var_251_10
		end
	end

	arg_251_0._cursedMushroomDeadMaxHP, arg_251_0._cursedMushroomDeadBoss = nil

	for iter_251_4, iter_251_5 in ipairs(arg_251_1._cursedMushroomDots or {}) do
		if var_251_8[iter_251_5.origin] == arg_251_1 then
			var_251_8[iter_251_5.origin] = nil
			var_251_9[#var_251_9 + 1] = iter_251_5
		end
	end

	arg_251_1._cursedMushroomDots = nil

	if not var_251_3 then
		return
	end

	local var_251_11 = false

	for iter_251_6, iter_251_7 in ipairs(var_251_9) do
		if not var_251_8[iter_251_7.origin] then
			local var_251_12 = __recovered_scope_0.var_0_167(iter_251_7, var_251_0, var_251_2)

			if var_251_12 then
				var_251_3._cursedMushroomDots = var_251_3._cursedMushroomDots or {}
				var_251_3._cursedMushroomDots[#var_251_3._cursedMushroomDots + 1] = var_251_12
				var_251_8[var_251_12.origin] = var_251_3
				var_251_11 = true
			end
		end
	end

	if var_251_11 and _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_251_0, "CursedMushroom", false)
	end
end

function __recovered_scope_0.var_0_165.update(arg_252_0, arg_252_1, arg_252_2)
	local var_252_0 = (arg_252_0._cursedMushroomClock or 0) + math.max(0, tonumber(arg_252_1) or 0)

	arg_252_0._cursedMushroomClock = var_252_0

	local var_252_1 = arg_252_0._cursedMushroomActive or {}

	for iter_252_0, iter_252_1 in ipairs(arg_252_0.enemies or {}) do
		local var_252_2 = iter_252_1._cursedMushroomDots

		if var_252_2 then
			for iter_252_2 = #var_252_2, 1, -1 do
				local var_252_3 = var_252_2[iter_252_2]

				while iter_252_1.alive and not iter_252_1.dying and var_252_1[var_252_3.origin] == iter_252_1 and var_252_3.next <= #var_252_3.ticks and var_252_3.ticks[var_252_3.next].at <= var_252_0 + 1e-07 do
					local var_252_4 = var_252_3.ticks[var_252_3.next]

					var_252_3.next = var_252_3.next + 1

					if var_252_4.damage > 0 then
						arg_252_2(iter_252_1, var_252_4.damage, nil, nil, {
							dot = true,
							battleSkillDamage = true,
							[var_252_3.kind] = true
						})

						if var_252_3.kind == "poison" then
							iter_252_1.poisonHitFlash = {
								t = 0,
								dur = 0.32
							}
						elseif var_252_3.kind == "bleed" then
							iter_252_1.bleedHitFlash = {
								t = 0,
								dur = 0.32
							}
						end
					end
				end

				if var_252_1[var_252_3.origin] == iter_252_1 and (var_252_3.next > #var_252_3.ticks or var_252_0 >= var_252_3.expiresAt - 1e-07) then
					var_252_1[var_252_3.origin] = nil

					table.remove(var_252_2, iter_252_2)
				end
			end

			if #var_252_2 == 0 then
				iter_252_1._cursedMushroomDots = nil
			end
		end
	end
end

 __recovered_scope_0.var_0_168 = __recovered_scope_0.var_0_165
 __recovered_scope_0.var_0_169 = nil
 __recovered_scope_0.var_0_170 = {
	ratio = function(arg_253_0, arg_253_1, arg_253_2)
		if not arg_253_0 or arg_253_0.mode ~= "battle" or not arg_253_1 or arg_253_1.side ~= "ally" or arg_253_1.isSummon or arg_253_1.isClone or arg_253_1.isShadowMinion or arg_253_1.isFireSpirit or arg_253_1.isFlameSpirit or arg_253_1.isHusk or arg_253_1.isUndyingSoul or arg_253_1._itemOwner then
			return 0
		end

		local var_253_0 = arg_253_2 and require("src.data.skill").definitions[arg_253_2] or arg_253_1.primarySkillDef or arg_253_1.skill and require("src.data.skill").definitions[arg_253_1.skill._skillDataId]

		if not var_253_0 then
			return 0
		end

		local var_253_1 = var_253_0.category or ""
		local var_253_2 = var_253_0.runtime or {}
		local var_253_3 = var_253_0.effects or {}

		if (tonumber(var_253_0.maxTargets or var_253_2.maxTargets) or 0) < 2 or not (var_253_0.target or ""):find("enemy", 1, true) or not var_253_1:find("attack", 1, true) and not var_253_1:find("aoe", 1, true) or var_253_1:find("summon", 1, true) or var_253_1:find("heal", 1, true) or var_253_3.shieldMaxHpRatio or var_253_3.shieldDuration or var_253_2.shieldMaxHpRatio then
			return 0
		end

		for iter_253_0, iter_253_1 in ipairs(arg_253_0.ui and arg_253_0.ui._itemPurchased or {}) do
			if iter_253_1.key == "BranchingBloom" then
				return require("src.game.item").levelValue(iter_253_1, "extraTargetDamageRatio", require("src.game.item").getById("52").extraTargetDamageRatio)
			end
		end

		return 0
	end
}

function __recovered_scope_0.var_0_170.limit(arg_254_0, arg_254_1, arg_254_2, arg_254_3)
	return arg_254_2 + (__recovered_scope_0.var_0_170.ratio(arg_254_0, arg_254_1, arg_254_3) > 0 and 1 or 0)
end

function __recovered_scope_0.var_0_170.extra(arg_255_0, arg_255_1, arg_255_2, arg_255_3, arg_255_4, arg_255_5, arg_255_6, arg_255_7)
	arg_255_3 = arg_255_3 or 1

	if arg_255_2 <= arg_255_3 then
		return false
	end

	local var_255_0 = __recovered_scope_0.var_0_170.ratio(arg_255_0, arg_255_1, arg_255_7)

	if var_255_0 > 0 and arg_255_2 == arg_255_3 + 1 and arg_255_4 and arg_255_4.alive and not arg_255_4.dying then
		local var_255_1 = {
			side = "ally",
			alive = arg_255_1.alive,
			x = arg_255_1.x,
			y = arg_255_1.y,
			dmg = arg_255_1.dmg,
			_itemOwner = arg_255_1,
			stage6Lane = arg_255_1.stage6Lane
		}

		arg_255_6(arg_255_4, math.max(0, (tonumber(arg_255_5) or 0) * var_255_0), var_255_1, nil, {
			battleSkillDamage = true,
			branchingBloom = true,
			itemDamage = true,
			basicAttack = false
		})

		if _G.__slotTriggerItemPanelEffect then
			__slotTriggerItemPanelEffect(arg_255_0, "BranchingBloom", false)
		end
	end

	return true
end

function __recovered_scope_0.var_0_170.prepareProjectile(arg_256_0, arg_256_1)
	if arg_256_1._bloomPrepared then
		return
	end

	arg_256_1._bloomPrepared = true

	if not arg_256_1.battleSkillDamage or arg_256_1.basicAttack or __recovered_scope_0.var_0_170.ratio(arg_256_0, arg_256_1.owner) <= 0 then
		return
	end

	if arg_256_1.pierce then
		arg_256_1._bloomBase = (arg_256_1.pierce.additionalHits or 0) + 1
		arg_256_1.pierce.additionalHits = (arg_256_1.pierce.additionalHits or 0) + 1
	elseif arg_256_1.asset == "PiercingThrustProjectile" then
		arg_256_1._bloomBase = 2
		arg_256_1.pierce = {
			additionalHits = 1
		}
	elseif arg_256_1.asset == "ElfKnightSword" or arg_256_1.asset == "BladeWave" or arg_256_1.asset == "StormBlade" then
		arg_256_1._bloomBase = arg_256_1.maxTargets or 2
		arg_256_1.maxTargets = arg_256_1._bloomBase + 1
	end

	if arg_256_1._bloomBase then
		arg_256_1.hitTargets = arg_256_1.hitTargets or {}
	end
end

function __recovered_scope_0.var_0_170.projectileExtra(arg_257_0, arg_257_1, arg_257_2, arg_257_3, arg_257_4)
	arg_257_1._branchingBloomHit = false

	if arg_257_1._bloomVolleyBonus then
		arg_257_1._branchingBloomHit = true

		if not arg_257_1._bloomVolleySpent and arg_257_2 == arg_257_1.targetOnly then
			arg_257_1._bloomVolleySpent = true

			__recovered_scope_0.var_0_170.extra(arg_257_0, arg_257_1.owner, 2, 1, arg_257_2, arg_257_3, arg_257_4)
		end

		return true
	end

	if not arg_257_1._bloomBase then
		return false
	end

	local var_257_0 = 1

	for iter_257_0 in pairs(arg_257_1.hitTargets or {}) do
		if iter_257_0 ~= arg_257_2 then
			var_257_0 = var_257_0 + 1
		end
	end

	arg_257_1._branchingBloomHit = __recovered_scope_0.var_0_170.extra(arg_257_0, arg_257_1.owner, var_257_0, arg_257_1._bloomBase, arg_257_2, arg_257_3, arg_257_4)

	return arg_257_1._branchingBloomHit
end

function __recovered_scope_0.var_0_170.volley(arg_258_0, arg_258_1, arg_258_2, arg_258_3, arg_258_4)
	if __recovered_scope_0.var_0_170.ratio(arg_258_0, arg_258_1) <= 0 then
		return
	end

	local var_258_0 = arg_258_0.projectiles[arg_258_2]

	if not var_258_0 then
		return
	end

	local var_258_1 = {}
	local var_258_2 = arg_258_1._attackFacing or arg_258_1.facing or 1

	for iter_258_0, iter_258_1 in ipairs(arg_258_0.enemies or {}) do
		if iter_258_1.alive and not iter_258_1.dying and (not arg_258_4 or arg_258_4(iter_258_1, arg_258_1, arg_258_0)) then
			local var_258_3 = (iter_258_1.x or 0) - (arg_258_1.x or 0)
			local var_258_4 = (iter_258_1.y or 0) - (arg_258_1.y or 0)
			local var_258_5 = var_258_3 * var_258_3 + var_258_4 * var_258_4

			if var_258_5 <= 22500 and var_258_3 * var_258_2 >= 0 and (var_258_5 < 0.001 or var_258_3 * var_258_2 / math.sqrt(var_258_5) >= math.cos(math.pi * 0.3)) then
				var_258_1[#var_258_1 + 1] = {
					enemy = iter_258_1,
					d2 = var_258_5,
					index = iter_258_0
				}
			end
		end
	end

	table.sort(var_258_1, function(arg_259_0, arg_259_1)
		if arg_259_0.d2 == arg_259_1.d2 then
			return arg_259_0.index < arg_259_1.index
		end

		return arg_259_0.d2 < arg_259_1.d2
	end)

	local var_258_6 = var_258_1[arg_258_3 - arg_258_2 + 2]
	local var_258_7 = var_258_6 and var_258_6.enemy
	local var_258_8 = math.sqrt((var_258_0.vx or 0)^2 + (var_258_0.vy or 0)^2)
	local var_258_9 = var_258_0.rot or 0

	for iter_258_2 = arg_258_2, arg_258_3 do
		local var_258_10 = arg_258_0.projectiles[iter_258_2]

		var_258_10._bloomReservedTarget = var_258_7

		if math.sin(var_258_10.rot or 0) < math.sin(var_258_9) then
			var_258_9 = var_258_10.rot or 0
		end
	end

	local var_258_11 = var_258_9 - var_258_2 * math.pi / 12
	local var_258_12 = {
		animT = 0,
		maxTargets = 1,
		_bloomVolleyBonus = true,
		alive = true,
		frame = 1,
		side = "ally",
		_bloomPrepared = true,
		battleSkillDamage = true,
		basicAttack = false,
		kind = var_258_0.kind,
		asset = var_258_0.asset,
		x = var_258_0.x,
		y = var_258_0.y,
		vx = math.cos(var_258_11) * var_258_8,
		vy = math.sin(var_258_11) * var_258_8,
		rot = var_258_11,
		scale = var_258_0.scale,
		owner = arg_258_1,
		dmg = var_258_0.dmg,
		hitTargets = {},
		life = var_258_0.life or 2,
		targetOnly = var_258_7,
		visualOnly = not var_258_7
	}

	if var_258_7 then
		local var_258_13 = var_258_7.colX and var_258_7.colX + (var_258_7.colW or 0) * 0.5 or var_258_7.x
		local var_258_14 = var_258_7.colY and var_258_7.colY + (var_258_7.colH or 0) * 0.5 or var_258_7.y
		local var_258_15 = math.sqrt((var_258_13 - var_258_0.x)^2 + (var_258_14 - var_258_0.y)^2)

		var_258_12._bloomFlight = {
			t = 0,
			x = var_258_0.x,
			y = var_258_0.y,
			dur = math.max(0.12, var_258_15 / math.max(1, var_258_8)),
			face = var_258_2
		}
	end

	arg_258_0.projectiles[#arg_258_0.projectiles + 1] = var_258_12

	return var_258_12
end

function __recovered_scope_0.var_0_170.updateVolleyProjectile(arg_260_0, arg_260_1, arg_260_2, arg_260_3)
	local var_260_0 = arg_260_1._bloomFlight

	if not var_260_0 or not arg_260_1.alive or arg_260_2 <= 0 then
		return
	end

	local var_260_1 = arg_260_1.targetOnly

	if not var_260_1 or not var_260_1.alive or var_260_1.dying or not arg_260_3(var_260_1, arg_260_1.owner, arg_260_0) then
		arg_260_1._bloomFlight = nil
		arg_260_1.visualOnly = true

		return
	end

	var_260_0.t = math.min(var_260_0.dur, var_260_0.t + arg_260_2)

	local var_260_2 = var_260_0.t / var_260_0.dur
	local var_260_3 = var_260_1.colX and var_260_1.colX + (var_260_1.colW or 0) * 0.5 or var_260_1.x
	local var_260_4 = var_260_1.colY and var_260_1.colY + (var_260_1.colH or 0) * 0.5 or var_260_1.y
	local var_260_5 = var_260_0.x + (var_260_3 - var_260_0.x) * var_260_2
	local var_260_6 = var_260_0.y + (var_260_4 - var_260_0.y) * var_260_2 - math.sin(math.pi * var_260_2) * 16

	arg_260_1.vx, arg_260_1.vy = (var_260_5 - arg_260_1.x) / arg_260_2, (var_260_6 - arg_260_1.y) / arg_260_2

	if math.abs(arg_260_1.vx) + math.abs(arg_260_1.vy) > 0.001 then
		arg_260_1.rot = math.atan2(arg_260_1.vy, arg_260_1.vx)
	end
end

function __recovered_scope_0.var_0_170.nearby(arg_261_0, arg_261_1, arg_261_2, arg_261_3, arg_261_4, arg_261_5, arg_261_6)
	if __recovered_scope_0.var_0_170.ratio(arg_261_0, arg_261_1) <= 0 then
		return
	end

	local var_261_0
	local var_261_1 = math.huge

	for iter_261_0, iter_261_1 in ipairs(arg_261_0.enemies or {}) do
		if not arg_261_2[iter_261_1] and arg_261_4(iter_261_1, arg_261_1, arg_261_0) then
			local var_261_2 = (iter_261_1.x or 0) - (arg_261_1.x or 0)
			local var_261_3 = (iter_261_1.y or 0) - (arg_261_1.y or 0)
			local var_261_4 = var_261_2 * var_261_2 + var_261_3 * var_261_3

			if var_261_4 <= arg_261_6 * arg_261_6 and var_261_4 < var_261_1 then
				var_261_0, var_261_1 = iter_261_1, var_261_4
			end
		end
	end

	if var_261_0 then
		__recovered_scope_0.var_0_170.extra(arg_261_0, arg_261_1, 2, 1, var_261_0, arg_261_3, arg_261_5)
	end
end

 __recovered_scope_0.var_0_171 = __recovered_scope_0.var_0_170
 __recovered_scope_0.var_0_172 = nil
 __recovered_scope_0.var_0_173 = {}

__recovered_scope_0.var_0_173.name = "수호 골렘"

function __recovered_scope_0.var_0_173.owned(arg_262_0)
	for iter_262_0, iter_262_1 in ipairs(arg_262_0.ui and arg_262_0.ui._itemPurchased or {}) do
		if iter_262_1.key == "GuardianGolem" then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_173.stats(arg_263_0, arg_263_1)
	local var_263_0 = {}
	local var_263_1 = {}

	for iter_263_0, iter_263_1 in ipairs(arg_263_0 or {}) do
		if (arg_263_1 or iter_263_1.alive and not iter_263_1.dying and iter_263_1.side == "ally") and not iter_263_1.isSummon and not iter_263_1.isClone and not iter_263_1.isUndyingSoul and not iter_263_1.isShadowMinion and not iter_263_1.isGuardianGolem then
			local var_263_2 = arg_263_1 and iter_263_1.stats or nil

			var_263_0[#var_263_0 + 1] = var_263_2 and var_263_2.hp or iter_263_1.maxhp or iter_263_1.hp or 0
			var_263_1[#var_263_1 + 1] = var_263_2 and var_263_2.atk or iter_263_1.dmg or 0
		end
	end

	if #var_263_0 == 0 then
		return 1, 1
	end

	table.sort(var_263_0, function(arg_264_0, arg_264_1)
		return arg_264_1 < arg_264_0
	end)
	table.sort(var_263_1, function(arg_265_0, arg_265_1)
		return arg_265_1 < arg_265_0
	end)

	local var_263_3 = math.min(3, #var_263_0)
	local var_263_4 = 0
	local var_263_5 = 0

	for iter_263_2 = 1, var_263_3 do
		var_263_4 = var_263_4 + var_263_0[iter_263_2]
		var_263_5 = var_263_5 + var_263_1[iter_263_2]
	end

	return math.max(1, math.floor(var_263_4 / var_263_3 * 0.9 + 0.5)), math.max(1, math.floor(var_263_5 / var_263_3 * 0.4 + 0.5))
end

function __recovered_scope_0.var_0_173.preparation(arg_266_0, arg_266_1, arg_266_2)
	if not __recovered_scope_0.var_0_173.owned(arg_266_0) then
		arg_266_0._guardianGolemPreview = nil

		__recovered_scope_0.var_0_15.setPlacementSummon(arg_266_0, "GuardianGolem", nil)

		return
	end

	if arg_266_0.mode == "battle" then
		return
	end

	arg_266_2 = arg_266_2 or arg_266_0.area

	if not arg_266_2 or not arg_266_0.getRosterClamp then
		return
	end

	local var_266_0, var_266_1, var_266_2, var_266_3 = arg_266_0:getRosterClamp(arg_266_2)
	local var_266_4 = arg_266_0._guardianGolemPreview

	if not var_266_4 then
		var_266_4 = {
			facing = 1,
			distance = 50,
			speed = 25,
			star = 1,
			rank = 1,
			isGuardianGolem = true,
			isSummon = true,
			kind = "GuardianGolem",
			atkTicks = 72,
			alive = true,
			side = "ally",
			skin = "GuardianGolem",
			_spawnTime = 0,
			atkPeriod = 1.2,
			role = "warrior",
			sym = __recovered_scope_0.var_0_173.name,
			name = __recovered_scope_0.var_0_173.name,
			nameKo = __recovered_scope_0.var_0_173.name,
			anim = {
				frame = 1,
				name = "idle",
				t = 0
			},
			_groundFraction = (love and love.math and love.math.random or math.random)()
		}
		arg_266_0._guardianGolemPreview = var_266_4
	end

	__recovered_scope_0.var_0_15.setPlacementSummon(arg_266_0, "GuardianGolem", var_266_4)

	var_266_4.x = math.max(var_266_0, math.min(var_266_1, var_266_4.x or var_266_1))
	var_266_4.y = math.max(var_266_2, math.min(var_266_3, var_266_4.y or var_266_2 + (var_266_3 - var_266_2) * var_266_4._groundFraction))

	local var_266_5, var_266_6 = __recovered_scope_0.var_0_173.stats(arg_266_0.rosterUnits, true)

	var_266_4.hp, var_266_4.maxhp, var_266_4.dmg = var_266_5 or 1, var_266_5 or 1, var_266_6 or 1
	var_266_4.stats = {
		hp = var_266_4.maxhp,
		atk = var_266_4.dmg,
		aspd = 1 / var_266_4.atkPeriod,
		distance = var_266_4.distance
	}
	arg_266_1 = math.max(0, arg_266_1 or 0)

	if var_266_4.lift then
		local var_266_7 = var_266_4.lift

		var_266_7.t = (var_266_7.t or 0) + arg_266_1

		if var_266_4._held then
			if var_266_7.state == "rising" then
				local var_266_8 = math.min(1, var_266_7.t / 0.2)

				var_266_7.offset = 5 * (1 - (1 - var_266_8)^2)

				if var_266_8 >= 1 then
					var_266_7.state = "held"
					var_266_7.t = 0
				end
			else
				var_266_7.offset = 5 + 1.5 * math.sin(var_266_7.t * math.pi * 4)
			end
		else
			if var_266_7.state ~= "dropping" then
				var_266_7.state = "dropping"
				var_266_7.t = 0
				var_266_7.startOffset = var_266_7.offset
			end

			local var_266_9 = math.min(1, var_266_7.t / 0.08)

			var_266_7.offset = (var_266_7.startOffset or 5) * (1 - var_266_9)

			if var_266_9 >= 1 then
				var_266_4.lift = nil
			end
		end

		local var_266_10 = math.max(0, math.min(1, (var_266_7.offset or 0) / 5))

		var_266_7.shadowScaleMul = 1 - 0.1 * var_266_10
		var_266_7.shadowAlphaMul = 1 - 0.2 * var_266_10
	end

	var_266_4.anim.t = var_266_4.anim.t + arg_266_1

	while var_266_4.anim.t >= 0.15 do
		var_266_4.anim.t = var_266_4.anim.t - 0.15
		var_266_4.anim.frame = var_266_4.anim.frame % 4 + 1
	end

	var_266_4._spawnTime = math.min(0.8, var_266_4._spawnTime + arg_266_1)

	if var_266_4._spawnTime < 0.8 then
		local var_266_11 = var_266_4.spawnVFX or {
			dur = {
				0.2,
				0.35,
				0.25
			},
			tint = {
				0.55,
				0.75,
				0.45
			}
		}

		if var_266_4._spawnTime < 0.2 then
			var_266_11.phase, var_266_11.t = 1, var_266_4._spawnTime
		elseif var_266_4._spawnTime < 0.55 then
			var_266_11.phase, var_266_11.t = 2, var_266_4._spawnTime - 0.2
		else
			var_266_11.phase, var_266_11.t = 3, var_266_4._spawnTime - 0.55
		end

		var_266_4.spawnVFX = var_266_11
	else
		var_266_4.spawnVFX = nil
	end

	return var_266_4
end

function __recovered_scope_0.var_0_173.clear(arg_267_0)
	for iter_267_0 = #(arg_267_0.allies or {}), 1, -1 do
		if arg_267_0.allies[iter_267_0].isGuardianGolem then
			table.remove(arg_267_0.allies, iter_267_0)
		end
	end

	arg_267_0._guardianGolem = nil
end

function __recovered_scope_0.var_0_173.beginBattle(arg_268_0)
	__recovered_scope_0.var_0_173.clear(arg_268_0)

	if not __recovered_scope_0.var_0_173.owned(arg_268_0) then
		return
	end

	local var_268_0, var_268_1 = __recovered_scope_0.var_0_173.stats(arg_268_0.allies, false)
	local var_268_2 = arg_268_0.area or {
		h = 520,
		x = 0,
		y = 0,
		w = 760
	}
	local var_268_3, var_268_4, var_268_5, var_268_6 = arg_268_0:getRosterClamp(var_268_2)
	local var_268_7 = var_268_5 + (love and love.math and love.math.random or math.random)() * (var_268_6 - var_268_5)
	local var_268_8 = arg_268_0._guardianGolemPreview

	if var_268_8 then
		var_268_4 = math.max(var_268_3, math.min(var_268_4, var_268_8.x))
		var_268_7 = math.max(var_268_5, math.min(var_268_6, var_268_8.y))
		var_268_8._held = false
		var_268_8.lift = nil
	end

	local var_268_9 = {
		side = "ally",
		hpbarShowT = 0,
		alive = true,
		speed = 25,
		distance = 50,
		isSummon = true,
		dying = false,
		spawnRamp = 0.15,
		spawnGrace = 0.25,
		spawnT = 0,
		coolTicks = 0,
		skin = "GuardianGolem",
		atkPeriod = 1.2,
		facing = 1,
		atkTicks = 72,
		star = 1,
		rank = 1,
		isGuardianGolem = true,
		kind = "GuardianGolem",
		role = "warrior",
		sym = __recovered_scope_0.var_0_173.name,
		name = __recovered_scope_0.var_0_173.name,
		nameKo = __recovered_scope_0.var_0_173.name,
		x = var_268_4,
		y = var_268_7,
		baseX = var_268_4,
		baseY = var_268_7,
		hp = var_268_0,
		maxhp = var_268_0,
		dmg = var_268_1,
		anim = {
			frame = 1,
			name = "idle",
			t = 0,
			_desynced = true
		},
		imprints = {},
		spawnVFX = {
			phase = 1,
			t = 0,
			dur = {
				0.2,
				0.35,
				0.25
			},
			tint = {
				0.55,
				0.75,
				0.45
			}
		}
	}

	if var_268_8 then
		var_268_9.spawnVFX = nil
		var_268_9.anim.frame, var_268_9.anim.t = var_268_8.anim.frame, var_268_8.anim.t
	end

	arg_268_0._guardianGolem = var_268_9
	arg_268_0.allies[#arg_268_0.allies + 1] = var_268_9
end

function __recovered_scope_0.var_0_173.share(arg_269_0, arg_269_1, arg_269_2)
	local var_269_0 = arg_269_0 and arg_269_0._guardianGolem

	if not arg_269_0 or arg_269_0.mode ~= "battle" or not var_269_0 or not var_269_0.alive or var_269_0.dying or not (var_269_0.hp > 0) or not arg_269_1 or arg_269_1.side ~= "ally" or arg_269_1 == var_269_0 or not not arg_269_1.isDecoyDummy then
		return
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(arg_269_0, arg_269_1, var_269_0) then
		return
	end

	local var_269_1 = 0.3

	for iter_269_0, iter_269_1 in ipairs(arg_269_0.ui and arg_269_0.ui._itemPurchased or {}) do
		if iter_269_1.key == "GuardianGolem" then
			var_269_1 = require("src.game.item").levelValue(iter_269_1, "healShare", iter_269_1.healShare or 0.3)

			break
		end
	end

	local var_269_2 = math.min(var_269_0.maxhp - var_269_0.hp, math.max(0, arg_269_2 or 0) * var_269_1)

	if var_269_2 <= 0 then
		return
	end

	var_269_0.hp = var_269_0.hp + var_269_2

	require("src.ui.effects").healing_feedback.apply(var_269_0, var_269_2)
	require("src.ui.effects").healing_feedback.healerPlus(arg_269_0, var_269_0)
end

function __recovered_scope_0.var_0_173.heal(arg_270_0, arg_270_1, arg_270_2, arg_270_3)
	if not arg_270_1 or arg_270_1.isGuardianGolem then
		return 0
	end

	if arg_270_3 and require("src.game.unit_abilities").dimensional_duel.separated(arg_270_0, arg_270_3, arg_270_1) then
		return 0
	end

	local var_270_0 = arg_270_1.hp or 0

	arg_270_2 = math.max(0, arg_270_2 or 0) * require("src.game.combat").faction.healMultiplier(arg_270_0, arg_270_1)
	arg_270_1.hp = math.min(arg_270_1.maxhp or var_270_0, var_270_0 + arg_270_2)

	local var_270_1 = math.max(0, arg_270_1.hp - var_270_0)

	__recovered_scope_0.var_0_173.share(arg_270_0, arg_270_1, var_270_1)

	return var_270_1
end

function __recovered_scope_0.var_0_173.beginDeath(arg_271_0, arg_271_1)
	if not arg_271_1 or not arg_271_1.isGuardianGolem then
		return false
	end

	if not arg_271_1.dying then
		arg_271_1.hp = 0
		arg_271_1.dying = true
		arg_271_1.deathT = 0
		arg_271_1.coolTicks = 999999
		arg_271_1.target = nil
		arg_271_1.pendingTarget = nil
		arg_271_1.shotPending = false
		arg_271_1._guardianHit = nil
		arg_271_1._forceAnim = nil
		arg_271_1._meleeLoop = false
		arg_271_1.reviving = nil
		arg_271_1._kb = nil
		arg_271_1.anim = {
			frame = 1,
			name = "death",
			t = 0,
			_desynced = true
		}
	end

	return true
end

function __recovered_scope_0.var_0_173.onAnimation(arg_272_0, arg_272_1, arg_272_2, arg_272_3)
	local var_272_0 = arg_272_1._guardianHit

	if not var_272_0 then
		return
	end

	if arg_272_1.dying or not arg_272_1.alive or not arg_272_1.anim or arg_272_1.anim.name ~= "attack" then
		arg_272_1._guardianHit = nil

		return
	end

	if arg_272_1.anim.frame >= 3 then
		arg_272_1._guardianHit = nil

		if arg_272_2(var_272_0.target, arg_272_1, arg_272_0) then
			arg_272_3(var_272_0.target, var_272_0.dmg, arg_272_1, nil, {
				basicAttack = true
			})
		end
	end
end

 __recovered_scope_0.var_0_174 = __recovered_scope_0.var_0_173
 __recovered_scope_0.var_0_175 = nil
 __recovered_scope_0.var_0_176 = {
	beginBattle = function(arg_273_0)
		arg_273_0._huntingMask = nil

		local var_273_0

		for iter_273_0, iter_273_1 in ipairs(arg_273_0.ui and arg_273_0.ui._itemPurchased or {}) do
			if iter_273_1.key == "HuntingMask" then
				var_273_0 = iter_273_1

				break
			end
		end

		if not var_273_0 then
			return
		end

		local var_273_1

		for iter_273_2, iter_273_3 in ipairs(arg_273_0.allies or {}) do
			if iter_273_3.alive and not iter_273_3.dying and iter_273_3.side == "ally" and not iter_273_3.isSummon and not iter_273_3.isClone and not iter_273_3.isUndyingSoul and not iter_273_3.isShadowMinion and not iter_273_3.isFireSpirit and not iter_273_3.isTower and not iter_273_3.isDecoyDummy and (not var_273_1 or (iter_273_3.dmg or 0) > (var_273_1.dmg or 0)) then
				var_273_1 = iter_273_3
			end
		end

		if var_273_1 then
			arg_273_0._huntingMask = {
				owner = var_273_1,
				bonus = require("src.game.item").levelValue(var_273_0, "damageBonus", require("src.game.item").getById("53").damageBonus)
			}

			if _G.__slotTriggerItemPanelEffect then
				__slotTriggerItemPanelEffect(arg_273_0, "HuntingMask", false)
			end
		end
	end,
	select = function(arg_274_0, arg_274_1, arg_274_2, arg_274_3, arg_274_4, arg_274_5)
		local var_274_0 = arg_274_0._huntingMask

		if not var_274_0 or var_274_0.owner ~= arg_274_1 then
			return
		end

		local var_274_1
		local var_274_2

		if arg_274_1.alive and not arg_274_1.dying then
			local var_274_3 = math.max(0, arg_274_1.distance or 50)

			for iter_274_0, iter_274_1 in ipairs(arg_274_2 or {}) do
				if arg_274_3(iter_274_1, arg_274_1, arg_274_0) then
					local var_274_4 = arg_274_4(arg_274_1, iter_274_1)
					local var_274_5

					if arg_274_5 then
						var_274_5 = arg_274_5(iter_274_1, var_274_4)
					else
						var_274_5 = var_274_4 <= var_274_3 * var_274_3
					end

					if var_274_5 and (not var_274_1 or (iter_274_1.maxhp or 0) > (var_274_1.maxhp or 0) or (iter_274_1.maxhp or 0) == (var_274_1.maxhp or 0) and var_274_4 < var_274_2) then
						var_274_1, var_274_2 = iter_274_1, var_274_4
					end
				end
			end
		end

		var_274_0.target = var_274_1

		return var_274_1, var_274_2 and math.sqrt(var_274_2) or math.huge
	end,
	damage = function(arg_275_0, arg_275_1, arg_275_2, arg_275_3, arg_275_4)
		local var_275_0 = arg_275_0._huntingMask

		if arg_275_0.mode ~= "battle" or not var_275_0 or arg_275_3 ~= var_275_0.owner or arg_275_1 ~= var_275_0.target or arg_275_4 and (arg_275_4.itemDamage or arg_275_4.fromItem) or arg_275_3 and arg_275_3.isItemEffect then
			return arg_275_2
		end

		return arg_275_2 * (1 + (var_275_0.bonus or require("src.game.item").getById("53").damageBonus))
	end
}
 __recovered_scope_0.var_0_177 = nil
 __recovered_scope_0.var_0_178 = {
	isPassThrough = function(arg_276_0)
		return arg_276_0 and (arg_276_0.passThrough == true or arg_276_0.kind == "Eye Bat" or arg_276_0.kind == "눈알박쥐" or arg_276_0.kind == "눈알박쥐 (Eye Bat)" or arg_276_0.skin == "Eye Bat") or false
	end
}

function __recovered_scope_0.var_0_178.eligible(arg_277_0, arg_277_1)
	if not arg_277_0 or arg_277_0.mode ~= "battle" or not arg_277_1 or arg_277_1.side ~= "enemy" or not arg_277_1.alive or arg_277_1.dying or not ((arg_277_1.hp or 0) - math.max(0, arg_277_1._storedDamage or 0) > 0) or not __recovered_scope_0.var_0_178.isPassThrough(arg_277_1) then
		return false
	end

	if arg_277_1.target and arg_277_1.target.alive and not arg_277_1.target.dying then
		return false
	end

	if arg_277_1._tricksterCharm or arg_277_1._kb or arg_277_1._posLerp or (arg_277_1.speed or 0) <= 0 or (arg_277_1.stunT or 0) > 0 or (arg_277_1.bindingT or 0) > 0 or (arg_277_1.fearT or 0) > 0 or (arg_277_1._ankleTrapT or 0) > 0 or (arg_277_1._gateNetT or 0) > 0 then
		return false
	end

	return not __recovered_scope_0.var_0_163.target(arg_277_0, arg_277_1)
end

function __recovered_scope_0.var_0_178.bonus(arg_278_0, arg_278_1)
	if not arg_278_1 or not arg_278_1.alive or arg_278_1.dying or arg_278_1.side ~= "ally" or arg_278_1.target ~= arg_278_1._pursuitWedgeSelection or not __recovered_scope_0.var_0_178.eligible(arg_278_0, arg_278_1._pursuitWedgeTarget) then
		return 0
	end

	for iter_278_0, iter_278_1 in ipairs(arg_278_0.ui and arg_278_0.ui._itemPurchased or {}) do
		if iter_278_1.key == "PursuitWedge" then
			return require("src.game.item").levelValue(iter_278_1, "attackSpeedBonus", require("src.game.item").getById("55").attackSpeedBonus)
		end
	end

	return 0
end

function __recovered_scope_0.var_0_178.reset(arg_279_0)
	arg_279_0._pursuitWedgeTarget, arg_279_0._pursuitWedgeSelection = nil
end

function __recovered_scope_0.var_0_178.advance(arg_280_0, arg_280_1, arg_280_2, arg_280_3)
	arg_280_1._pursuitWedgeTarget, arg_280_1._pursuitWedgeSelection = arg_280_2, arg_280_1.target

	local var_280_0 = __recovered_scope_0.var_0_178.bonus(arg_280_0, arg_280_1)

	if var_280_0 > 0 and arg_280_3 > 0 then
		arg_280_1.coolTicks = math.max(0, (arg_280_1.coolTicks or 0) - arg_280_3 * var_280_0)
	end
end

function __recovered_scope_0.var_0_178.applyStatPreview(arg_281_0, arg_281_1, arg_281_2)
	local var_281_0 = __recovered_scope_0.var_0_178.bonus(arg_281_2, arg_281_1)

	if var_281_0 > 0 then
		arg_281_0.aspd = (arg_281_0.aspd or 0) * (1 + var_281_0)
		arg_281_0.aspdBuffActive = true
		arg_281_0.pursuitWedgeActive = true
	end
end

 __recovered_scope_0.var_0_179 = __recovered_scope_0.var_0_178
 __recovered_scope_0.var_0_180 = nil
 __recovered_scope_0.var_0_181 = {}
 __recovered_scope_0.var_0_182 = setmetatable({}, {
	__mode = "k"
})

 function __recovered_scope_0.var_0_183(arg_282_0)
	return arg_282_0 and arg_282_0.side == "ally" and arg_282_0.alive and not arg_282_0.dying and (arg_282_0.hp or 0) > 0 and not arg_282_0.isDecoyDummy and not arg_282_0.isItemEffect and not arg_282_0._itemOwner
end

 function __recovered_scope_0.var_0_184(arg_283_0)
	for iter_283_0, iter_283_1 in ipairs(arg_283_0.ui and arg_283_0.ui._itemPurchased or {}) do
		if iter_283_1.key == "Spitecap" then
			return iter_283_1
		end
	end
end

function __recovered_scope_0.var_0_181.clear(arg_284_0)
	for iter_284_0, iter_284_1 in pairs(__recovered_scope_0.var_0_182) do
		if iter_284_1.bf == arg_284_0 then
			__recovered_scope_0.var_0_182[iter_284_0] = nil
		end
	end
end

function __recovered_scope_0.var_0_181.bind(arg_285_0)
	for iter_285_0, iter_285_1 in ipairs(arg_285_0.allies or {}) do
		if __recovered_scope_0.var_0_183(iter_285_1) then
			if not __recovered_scope_0.var_0_182[iter_285_1] or __recovered_scope_0.var_0_182[iter_285_1].bf ~= arg_285_0 then
				__recovered_scope_0.var_0_182[iter_285_1] = {
					bf = arg_285_0
				}
			end
		else
			__recovered_scope_0.var_0_182[iter_285_1] = nil
		end
	end
end

function __recovered_scope_0.var_0_181.beginBattle(arg_286_0)
	__recovered_scope_0.var_0_181.clear(arg_286_0)
	__recovered_scope_0.var_0_181.bind(arg_286_0)
end

function __recovered_scope_0.var_0_181.onDebuff(arg_287_0, arg_287_1, arg_287_2)
	if not __recovered_scope_0.var_0_183(arg_287_0) or not require("src.game.unit_abilities").debuffs.isActive(arg_287_0, arg_287_2) then
		return false
	end

	local var_287_0 = __recovered_scope_0.var_0_182[arg_287_0]

	arg_287_1 = arg_287_1 or var_287_0 and var_287_0.bf

	if not arg_287_1 or arg_287_1.mode ~= "battle" then
		return false
	end

	if not var_287_0 or var_287_0.bf ~= arg_287_1 then
		var_287_0 = {
			bf = arg_287_1
		}
		__recovered_scope_0.var_0_182[arg_287_0] = var_287_0
	end

	local var_287_1 = __recovered_scope_0.var_0_184(arg_287_1)

	if not var_287_1 then
		var_287_0.bonus = nil

		return false
	end

	local var_287_2 = arg_287_1._waveTimeAcc or 0

	if var_287_2 + 1e-09 < (var_287_0.readyAt or 0) then
		return false
	end

	local var_287_3 = require("src.game.item").getById("56")

	var_287_0.bonus = require("src.game.item").levelValue(var_287_1, "basicAttackBonus", var_287_3.basicAttackBonus)
	var_287_0.readyAt = var_287_2 + var_287_3.triggerCooldown

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_287_1, "Spitecap", false)
	end

	return true
end

function __recovered_scope_0.var_0_181.consume(arg_288_0, arg_288_1, arg_288_2)
	local var_288_0 = __recovered_scope_0.var_0_182[arg_288_1]

	if not var_288_0 or var_288_0.bf ~= arg_288_0 or arg_288_0.mode ~= "battle" or not __recovered_scope_0.var_0_183(arg_288_1) then
		return 0
	end

	local var_288_1 = var_288_0.bonus

	var_288_0.bonus = nil

	if not var_288_1 or not __recovered_scope_0.var_0_184(arg_288_0) then
		return 0
	end

	return math.max(0, tonumber(arg_288_2) or 0) * var_288_1
end

 __recovered_scope_0.var_0_185 = __recovered_scope_0.var_0_181
 __recovered_scope_0.var_0_186 = nil
 __recovered_scope_0.var_0_187 = {}
 __recovered_scope_0.var_0_188 = setmetatable({}, {
	__mode = "k"
})
 __recovered_scope_0.var_0_189 = {
	"stingerPoison",
	"poison",
	"gazerAtkDown",
	"battleCryAtkDown",
	"chill",
	"observerSlow",
	"guardThrustSlow",
	"heavyKickSlow",
	"shackleArrowSlow",
	"galeBowSlow",
	"shrinkDebuff"
}

 function __recovered_scope_0.var_0_190(arg_289_0)
	return arg_289_0 and arg_289_0.side == "ally" and arg_289_0.alive and not arg_289_0.dying and (arg_289_0.hp or 0) > 0 and not arg_289_0.isDecoyDummy and not arg_289_0.isItemEffect and not arg_289_0._itemOwner
end

function __recovered_scope_0.var_0_187.clear(arg_290_0)
	for iter_290_0, iter_290_1 in pairs(__recovered_scope_0.var_0_188) do
		if iter_290_1.bf == arg_290_0 then
			__recovered_scope_0.var_0_188[iter_290_0] = nil
		end
	end
end

function __recovered_scope_0.var_0_187.bind(arg_291_0)
	for iter_291_0, iter_291_1 in ipairs(arg_291_0.allies or {}) do
		if __recovered_scope_0.var_0_190(iter_291_1) then
			if not __recovered_scope_0.var_0_188[iter_291_1] or __recovered_scope_0.var_0_188[iter_291_1].bf ~= arg_291_0 then
				__recovered_scope_0.var_0_188[iter_291_1] = {
					bf = arg_291_0
				}
			end
		else
			__recovered_scope_0.var_0_188[iter_291_1] = nil
		end
	end
end

function __recovered_scope_0.var_0_187.beginBattle(arg_292_0)
	__recovered_scope_0.var_0_187.clear(arg_292_0)
	__recovered_scope_0.var_0_187.bind(arg_292_0)
end

function __recovered_scope_0.var_0_187.onDebuff(arg_293_0, arg_293_1)
	if not __recovered_scope_0.var_0_190(arg_293_0) then
		return false
	end

	local var_293_0 = __recovered_scope_0.var_0_188[arg_293_0]

	arg_293_1 = arg_293_1 or var_293_0 and var_293_0.bf

	if not arg_293_1 or arg_293_1.mode ~= "battle" then
		return false
	end

	local var_293_1

	for iter_293_0, iter_293_1 in ipairs(arg_293_1.ui and arg_293_1.ui._itemPurchased or {}) do
		if iter_293_1.key == "AntidoteFruit" then
			var_293_1 = iter_293_1

			break
		end
	end

	if not var_293_1 then
		return false
	end

	if not var_293_0 or var_293_0.bf ~= arg_293_1 then
		var_293_0 = {
			bf = arg_293_1
		}
		__recovered_scope_0.var_0_188[arg_293_0] = var_293_0
	end

	local var_293_2 = arg_293_1._waveTimeAcc or 0

	if var_293_2 + 1e-09 < (var_293_0.readyAt or 0) then
		return false
	end

	local var_293_3 = false

	for iter_293_2, iter_293_3 in ipairs(__recovered_scope_0.var_0_189) do
		local var_293_4 = arg_293_0[iter_293_3]

		if type(var_293_4) == "table" and (tonumber(var_293_4.dur) or 0) > 0 then
			require("src.game.unit_abilities").cleansing_wave.cleanseOne(arg_293_0, iter_293_3)

			var_293_3 = true
		end
	end

	if require("src.game.enemy_skills").starlight_paladin.cleanseCombatStats(arg_293_0) then
		var_293_3 = true
	end

	if not var_293_3 then
		return false
	end

	var_293_0.readyAt = var_293_2 + require("src.game.item").levelValue(var_293_1, "triggerCooldown", require("src.game.item").getById("59").triggerCooldown)
	arg_293_0.poisonHitFlash = nil

	require("src.ui.effects").healing_feedback.cleanse(arg_293_0)

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_293_1, "AntidoteFruit", false)
	end

	return true
end

 __recovered_scope_0.var_0_191 = __recovered_scope_0.var_0_187
 __recovered_scope_0.var_0_192 = nil
 __recovered_scope_0.var_0_193 = {}

 function __recovered_scope_0.var_0_194(arg_294_0)
	return arg_294_0 and arg_294_0.sym == "A" and arg_294_0.side == "ally" and arg_294_0.alive and not arg_294_0.dying and (arg_294_0.hp or 0) > 0 and not arg_294_0.isSummon and not arg_294_0.isClone and not arg_294_0.isShadowMinion and not arg_294_0.isUndyingSoul and not arg_294_0.isItemEffect and not arg_294_0.summonOwner and not arg_294_0.cloneOwner
end

 function __recovered_scope_0.var_0_195(arg_295_0)
	return arg_295_0._twinBoltReady or arg_295_0._tripleShotReady or arg_295_0._precisionShotReady or arg_295_0._headshotReady or arg_295_0.skill and arg_295_0.skill.ready
end

function __recovered_scope_0.var_0_193.clear(arg_296_0)
	arg_296_0._rapidFireManual = nil
end

function __recovered_scope_0.var_0_193.beginBattle(arg_297_0)
	__recovered_scope_0.var_0_193.clear(arg_297_0)

	for iter_297_0, iter_297_1 in ipairs(arg_297_0.ui and arg_297_0.ui._itemPurchased or {}) do
		if iter_297_1.key == "RapidFireManual" then
			local var_297_0 = require("src.game.item").getById("38")
			local var_297_1 = {
				members = {},
				bonus = require("src.game.item").levelValue(iter_297_1, "attackSpeedBonus", var_297_0.attackSpeedBonus),
				burst = var_297_0.burstDuration,
				reload = var_297_0.reloadDuration
			}

			arg_297_0._rapidFireManual = var_297_1

			for iter_297_2, iter_297_3 in ipairs(arg_297_0.allies or {}) do
				if __recovered_scope_0.var_0_194(iter_297_3) then
					var_297_1.members[iter_297_3] = {}
				end
			end

			return
		end
	end
end

function __recovered_scope_0.var_0_193.state(arg_298_0, arg_298_1)
	local var_298_0 = arg_298_0 and arg_298_0.mode == "battle" and arg_298_0._rapidFireManual
	local var_298_1 = var_298_0 and var_298_0.members[arg_298_1]

	if not var_298_1 or not __recovered_scope_0.var_0_194(arg_298_1) then
		return
	end

	if var_298_1.startedAt == nil then
		return var_298_1, "ready", var_298_0.burst
	end

	local var_298_2 = (math.max(0, (arg_298_0._waveTimeAcc or 0) - var_298_1.startedAt) + 1e-08) % (var_298_0.burst + var_298_0.reload)

	if var_298_2 < var_298_0.burst then
		return var_298_1, "burst", var_298_0.burst - var_298_2
	end

	return var_298_1, "reload", var_298_0.burst + var_298_0.reload - var_298_2
end

function __recovered_scope_0.var_0_193.canStart(arg_299_0, arg_299_1)
	local var_299_0, var_299_1 = __recovered_scope_0.var_0_193.state(arg_299_0, arg_299_1)

	return var_299_1 ~= "reload" or not not __recovered_scope_0.var_0_195(arg_299_1)
end

function __recovered_scope_0.var_0_193.startAttack(arg_300_0, arg_300_1)
	local var_300_0 = __recovered_scope_0.var_0_193.state(arg_300_0, arg_300_1)

	if not var_300_0 then
		return
	end

	var_300_0.basicMotion = not __recovered_scope_0.var_0_195(arg_300_1)

	if not var_300_0.basicMotion then
		return
	end

	var_300_0.lastBasicAttackAt = arg_300_0._waveTimeAcc or 0

	if var_300_0.startedAt == nil then
		var_300_0.startedAt = var_300_0.lastBasicAttackAt

		if _G.__slotTriggerItemPanelEffect then
			__slotTriggerItemPanelEffect(arg_300_0, "RapidFireManual", true)
		end
	end
end

function __recovered_scope_0.var_0_193.bonus(arg_301_0, arg_301_1)
	local var_301_0, var_301_1 = __recovered_scope_0.var_0_193.state(arg_301_0, arg_301_1)

	return var_301_1 == "burst" and arg_301_0._rapidFireManual.bonus or 0
end

function __recovered_scope_0.var_0_193.attackBonus(arg_302_0, arg_302_1)
	local var_302_0 = __recovered_scope_0.var_0_193.state(arg_302_0, arg_302_1)

	if not var_302_0 or not var_302_0.basicMotion or __recovered_scope_0.var_0_195(arg_302_1) or arg_302_1._casting or arg_302_1._forceAnim or arg_302_1.skill and (arg_302_1.skill.state == "active" or arg_302_1.skill.state == "casting" or arg_302_1.skill.state == "precast") then
		return 0
	end

	return __recovered_scope_0.var_0_193.bonus(arg_302_0, arg_302_1)
end

function __recovered_scope_0.var_0_193.animationMultiplier(arg_303_0, arg_303_1)
	local var_303_0 = arg_303_1.anim and arg_303_1.anim.name

	if var_303_0 ~= "attack" and var_303_0 ~= "attack2" and var_303_0 ~= "throw" and var_303_0 ~= "reload" then
		return 1
	end

	return 1 + __recovered_scope_0.var_0_193.attackBonus(arg_303_0, arg_303_1)
end

function __recovered_scope_0.var_0_193.applyStatPreview(arg_304_0, arg_304_1, arg_304_2)
	local var_304_0 = __recovered_scope_0.var_0_193.bonus(arg_304_2, arg_304_1)

	if var_304_0 > 0 then
		arg_304_0.aspd = (arg_304_0.aspd or 0) * (1 + var_304_0)
		arg_304_0.aspdBuffActive = true
	end
end

 __recovered_scope_0.var_0_196 = __recovered_scope_0.var_0_193
 __recovered_scope_0.var_0_197 = nil
 __recovered_scope_0.var_0_198 = {}
 __recovered_scope_0.var_0_199 = {
	"_bossSkillBusy",
	"_venomMawBusy",
	"_hellEnforcerExecution",
	"_caveDevourCasting",
	"_crescentRaiderFlurryState",
	"_doomDragonCast",
	"_cosmicPressureState",
	"_greatswordRiderMarshLeap",
	"_archRageCasting",
	"_eyeWarlockOrbPending",
	"_archRunePending",
	"_gazerGazeCasting",
	"_beholderGazePending",
	"_curseDollCasting",
	"_huntingCommandCasting",
	"_bloodMoonSlashCasting",
	"_bloodtailStingCasting",
	"_spineCarapaceCasting",
	"_lizardShamanSeedCasting",
	"_dragonkinBoilingCasting",
	"_lizardWarlordRoarCasting",
	"_batSummonCasting",
	"_summonPending",
	"_howlPending",
	"_berserkPending",
	"_berserkAuraPending",
	"_hellWitchSoulCasting"
}
 __recovered_scope_0.var_0_200 = {
	"_twinBoltReady",
	"_tripleShotReady",
	"_precisionShotReady",
	"_headshotReady"
}

 function __recovered_scope_0.var_0_201(arg_305_0)
	return arg_305_0 and arg_305_0.alive and not arg_305_0.dying and (arg_305_0.hp or 0) > 0
end

 function __recovered_scope_0.var_0_202(arg_306_0)
	if not __recovered_scope_0.var_0_201(arg_306_0) or arg_306_0.side ~= "ally" or not arg_306_0.skill then
		return false
	end

	local var_306_0 = require("src.data.skill").get(arg_306_0.skill._skillDataId) or arg_306_0.primarySkillDef

	return var_306_0 and var_306_0.activationType == "active" and var_306_0.runtime and (tonumber(arg_306_0.skill.cd) or 0) > 0 and (arg_306_0.rank or 1) >= (tonumber(arg_306_0.skill.minRank) or 3)
end

 function __recovered_scope_0.var_0_203(arg_307_0)
	return arg_307_0 and (arg_307_0.active or arg_307_0.state == "active" or arg_307_0.state == "casting" or arg_307_0.state == "precast" or arg_307_0.state == "pre")
end

 function __recovered_scope_0.var_0_204(arg_308_0)
	for iter_308_0, iter_308_1 in ipairs(__recovered_scope_0.var_0_200) do
		if arg_308_0[iter_308_1] then
			return true
		end
	end

	return false
end

 function __recovered_scope_0.var_0_205(arg_309_0)
	local var_309_0 = arg_309_0.anim and arg_309_0.anim.name

	return arg_309_0._casting or arg_309_0._forceAnim or arg_309_0.shotPending or arg_309_0._volleyFollowup or arg_309_0._suppressAttack or __recovered_scope_0.var_0_203(arg_309_0.skill) or var_309_0 and var_309_0 ~= "idle" and var_309_0 ~= "walk"
end

 function __recovered_scope_0.var_0_206(arg_310_0)
	return (arg_310_0.stunT or 0) > 0 or (arg_310_0.fearT or 0) > 0 or arg_310_0._venomMawSwallowed or arg_310_0._caveBasiliskPetrified or arg_310_0._oathHelmStone or arg_310_0._cosmicPressure or arg_310_0._wastelandPiperCharm or arg_310_0._succubusCharm or arg_310_0._marshDriveAir or arg_310_0._spaceWizardExchangeMotion or arg_310_0._escapeCloakRetreat or arg_310_0._hellEnforcerExecutionLock or arg_310_0._lizardWarlordSkillBlocked
end

function __recovered_scope_0.var_0_198.clear(arg_311_0)
	local var_311_0 = arg_311_0._retaliationSigil

	for iter_311_0, iter_311_1 in pairs(var_311_0 and var_311_0.members or {}) do
		if iter_311_1.cast and iter_311_0.skill == iter_311_1.cast.extra then
			iter_311_0.skill = iter_311_1.cast.original
		end
	end

	arg_311_0._retaliationSigil = nil
end

function __recovered_scope_0.var_0_198.bind(arg_312_0)
	local var_312_0 = arg_312_0._retaliationSigil

	if not var_312_0 then
		return
	end

	for iter_312_0, iter_312_1 in ipairs(arg_312_0.allies or {}) do
		if __recovered_scope_0.var_0_201(iter_312_1) and not var_312_0.members[iter_312_1] then
			var_312_0.members[iter_312_1] = {
				pending = 0,
				atk = tonumber(iter_312_1.dmg) or 0
			}
		end
	end
end

function __recovered_scope_0.var_0_198.beginBattle(arg_313_0)
	__recovered_scope_0.var_0_198.clear(arg_313_0)

	for iter_313_0, iter_313_1 in ipairs(arg_313_0.ui and arg_313_0.ui._itemPurchased or {}) do
		if iter_313_1.key == "RetaliationSigil" then
			arg_313_0._retaliationSigil = {
				readyAt = 0,
				members = {},
				enemies = setmetatable({}, {
					__mode = "k"
				}),
				item = iter_313_1
			}

			__recovered_scope_0.var_0_198.bind(arg_313_0)

			return
		end
	end
end

function __recovered_scope_0.var_0_198.onEnemySkill(arg_314_0, arg_314_1)
	require("src.game.awakening").enemySkillBegin(arg_314_0, arg_314_1)

	local var_314_0 = arg_314_0._retaliationSigil

	if not var_314_0 or arg_314_0.mode ~= "battle" or not __recovered_scope_0.var_0_201(arg_314_1) or arg_314_1.side ~= "enemy" or arg_314_1._tricksterCharm or arg_314_1.isCrystalGuardWall then
		return false
	end

	local var_314_1 = arg_314_0._waveTimeAcc or 0

	if var_314_1 + 1e-09 < var_314_0.readyAt then
		return false
	end

	__recovered_scope_0.var_0_198.bind(arg_314_0)

	local var_314_2
	local var_314_3

	for iter_314_0, iter_314_1 in ipairs(arg_314_0.allies or {}) do
		local var_314_4 = var_314_0.members[iter_314_1]

		if __recovered_scope_0.var_0_202(iter_314_1) and var_314_4 and (not var_314_3 or var_314_4.atk > var_314_3.atk) then
			var_314_2, var_314_3 = iter_314_1, var_314_4
		end
	end

	if not var_314_2 then
		return false
	end

	var_314_3.pending = var_314_3.pending + 1
	var_314_0.readyAt = var_314_1 + require("src.game.item").levelValue(var_314_0.item, "triggerCooldown", require("src.game.item").getById("60").triggerCooldown)

	if _G.__slotTriggerItemPanelEffect then
		__slotTriggerItemPanelEffect(arg_314_0, "RetaliationSigil", true)
	end

	return true
end

function __recovered_scope_0.var_0_198.observeEnemy(arg_315_0, arg_315_1)
	local var_315_0 = arg_315_0._retaliationSigil

	if not var_315_0 and not arg_315_0._awakening then
		return
	end

	local var_315_1 = var_315_0 and var_315_0.enemies[arg_315_1] or arg_315_1._awakeningCastStates or {}

	if var_315_0 then
		var_315_0.enemies[arg_315_1] = var_315_1
	else
		arg_315_1._awakeningCastStates = var_315_1
	end

	local var_315_2 = false

	for iter_315_0, iter_315_1 in ipairs(__recovered_scope_0.var_0_199) do
		local var_315_3 = not not arg_315_1[iter_315_1]

		if var_315_3 and not var_315_1[iter_315_1] then
			var_315_2 = true
		end

		var_315_1[iter_315_1] = var_315_3
	end

	local var_315_4 = (arg_315_1._wastelandBiteWindupT or 0) > 0

	if var_315_4 and not var_315_1.biting then
		var_315_2 = true
	end

	var_315_1.biting = var_315_4

	if var_315_2 then
		__recovered_scope_0.var_0_198.onEnemySkill(arg_315_0, arg_315_1)
	end
end

function __recovered_scope_0.var_0_198.enemyCasting(arg_316_0)
	for iter_316_0, iter_316_1 in ipairs(__recovered_scope_0.var_0_199) do
		if arg_316_0[iter_316_1] then
			return true
		end
	end

	return (arg_316_0._wastelandBiteWindupT or 0) > 0
end

function __recovered_scope_0.var_0_198.hasPending(arg_317_0, arg_317_1)
	local var_317_0 = arg_317_0._retaliationSigil
	local var_317_1 = var_317_0 and var_317_0.members[arg_317_1]

	return var_317_1 and var_317_1.pending > 0 or false
end

function __recovered_scope_0.var_0_198.originalSkill(arg_318_0, arg_318_1)
	local var_318_0 = arg_318_0 and arg_318_0._retaliationSigil
	local var_318_1 = var_318_0 and var_318_0.members[arg_318_1]

	return var_318_1 and var_318_1.cast and var_318_1.cast.original
end

function __recovered_scope_0.var_0_198.barFill(arg_319_0, arg_319_1, arg_319_2)
	local var_319_0 = __recovered_scope_0.var_0_198.originalSkill(arg_319_0, arg_319_1)

	if not var_319_0 then
		return arg_319_2
	end

	return var_319_0.ready and 1 or math.max(0, math.min(1, (var_319_0.cdT or 0) / math.max(0.001, var_319_0.cd or 4)))
end

function __recovered_scope_0.var_0_198.blocksBasic(arg_320_0, arg_320_1)
	local var_320_0 = arg_320_0._retaliationSigil
	local var_320_1 = var_320_0 and var_320_0.members[arg_320_1]

	return var_320_1 and (var_320_1.pending > 0 or var_320_1.cast and var_320_1.cast.started) and not __recovered_scope_0.var_0_203(arg_320_1.skill) and (not arg_320_1.skill or not arg_320_1.skill.ready) and not __recovered_scope_0.var_0_204(arg_320_1)
end

function __recovered_scope_0.var_0_198.beforeSkill(arg_321_0, arg_321_1, arg_321_2)
	local var_321_0 = arg_321_0._retaliationSigil
	local var_321_1 = var_321_0 and var_321_0.members[arg_321_1]

	if not var_321_1 or arg_321_2 <= 0 then
		return arg_321_1.skill
	end

	if not var_321_1.cast and var_321_1.pending > 0 and __recovered_scope_0.var_0_202(arg_321_1) and not __recovered_scope_0.var_0_205(arg_321_1) and not __recovered_scope_0.var_0_206(arg_321_1) and not __recovered_scope_0.var_0_204(arg_321_1) then
		local var_321_2 = arg_321_1.skill
		local var_321_3 = {}

		for iter_321_0, iter_321_1 in pairs(var_321_2) do
			var_321_3[iter_321_0] = iter_321_1
		end

		var_321_3.state = nil
		var_321_3.active = false
		var_321_3.ready = false
		var_321_3.activeT = 0
		var_321_3.castT = 0
		var_321_3.preT = 0
		var_321_3.summoned = nil
		var_321_3._forceFireOnce = nil
		var_321_3._initDelayApplied = true
		var_321_3.cdT = var_321_3.cd
		var_321_1.cast = {
			original = var_321_2,
			extra = var_321_3
		}
		var_321_1.pending = var_321_1.pending - 1
		arg_321_1.skill = var_321_3
		arg_321_1.coolTicks = 0
	end

	local var_321_4 = var_321_1.cast

	if var_321_4 and arg_321_1.skill == var_321_4.extra then
		local var_321_5 = var_321_4.original

		var_321_5.cdT = math.min(var_321_5.cd, (var_321_5.cdT or 0) + arg_321_2)

		if var_321_4.started then
			var_321_4.extra.cdT = -1000000
		end
	end

	return arg_321_1.skill
end

function __recovered_scope_0.var_0_198.finishFrame(arg_322_0)
	local var_322_0 = arg_322_0._retaliationSigil

	if not var_322_0 or arg_322_0.mode ~= "battle" then
		return
	end

	for iter_322_0, iter_322_1 in ipairs(arg_322_0.enemies or {}) do
		__recovered_scope_0.var_0_198.observeEnemy(arg_322_0, iter_322_1)
	end

	for iter_322_2, iter_322_3 in pairs(var_322_0.members) do
		local var_322_1 = iter_322_3.cast

		if var_322_1 then
			local var_322_2 = var_322_1.extra

			if iter_322_2.skill ~= var_322_2 then
				iter_322_3.cast = nil
			else
				var_322_1.started = var_322_1.started or (var_322_2.cdT or 0) < var_322_2.cd or __recovered_scope_0.var_0_203(var_322_2) or var_322_2.ready or __recovered_scope_0.var_0_204(iter_322_2)

				if not __recovered_scope_0.var_0_201(iter_322_2) or var_322_1.started and not __recovered_scope_0.var_0_205(iter_322_2) and not var_322_2.ready and not __recovered_scope_0.var_0_204(iter_322_2) then
					iter_322_2.skill = var_322_1.original
					iter_322_3.cast = nil
				end
			end
		end

		if not __recovered_scope_0.var_0_201(iter_322_2) then
			iter_322_3.pending = 0
		end
	end
end

 __recovered_scope_0.var_0_207 = __recovered_scope_0.var_0_198
 __recovered_scope_0.var_0_208 = nil
 __recovered_scope_0.var_0_209 = {
	canBeTargeted = function(arg_323_0, arg_323_1)
		if not arg_323_1 or arg_323_1.side == "ally" or arg_323_1.awakeningPoint then
			return true
		end

		if arg_323_1._enteredBattlefield then
			return true
		end

		if arg_323_1.side ~= "enemy" and not arg_323_1.kind and arg_323_1._entryAttackBlocked == nil then
			return true
		end

		local var_323_0 = arg_323_0 and arg_323_0.area

		if not var_323_0 or not var_323_0.w or not (var_323_0.w > 0) then
			return not arg_323_1._entryAttackBlocked
		end

		local var_323_1 = arg_323_0.ui or {}
		local var_323_2 = (var_323_0.x or 0) + var_323_0.w - math.floor(12 * (var_323_1.scale or 1))
		local var_323_3 = arg_323_0._enemyEntrySize or var_323_1.battle and var_323_1.battle.allySize32 or 32
		local var_323_4 = math.max(32, math.floor(math.max(32, var_323_3) / 32) * 32)
		local var_323_5 = (arg_323_1.x or 0) + var_323_4 * 0.5

		if arg_323_0.entitySpriteBoundsWorld then
			local var_323_6, var_323_7, var_323_8 = arg_323_0:entitySpriteBoundsWorld(arg_323_1, var_323_4)

			if var_323_6 and var_323_8 and var_323_8 > 0 then
				var_323_5 = var_323_6 + var_323_8
			end
		end

		if var_323_5 <= var_323_2 then
			arg_323_1._enteredBattlefield, arg_323_1._entryAttackBlocked = true, false

			return true
		end

		arg_323_1._entryAttackBlocked = true

		return false
	end,
	walk = function(arg_324_0, arg_324_1, arg_324_2, arg_324_3, arg_324_4, arg_324_5)
		arg_324_1.target = nil
		arg_324_1.shotPending = false
		arg_324_1.pendingTarget = nil
		arg_324_1._meleeLoop = false
		arg_324_1._pendingGoblinHit = nil
		arg_324_1._pendingOrcHit = nil
		arg_324_1._pendingHowlHit = nil
		arg_324_1._eyeWarlockOrbPending = nil
		arg_324_1._eyeWarlockOrbTarget = nil

		local var_324_0 = (arg_324_1.speed or 30) * (arg_324_3 or 1)

		if _G.__slotStage4MarshMoveSpeed then
			var_324_0 = __slotStage4MarshMoveSpeed(arg_324_1, var_324_0)
		end

		local var_324_1 = var_324_0 * require("src.game.awakening").speed(arg_324_0, arg_324_1) * require("src.game.combat").slow_effects.movementMultiplier(arg_324_1)
		local var_324_2 = not (arg_324_4 or arg_324_5 or (arg_324_1.bindingT or 0) > 0 or arg_324_1._kb or (arg_324_1._ankleTrapT or 0) > 0 or (arg_324_1._gateNetT or 0) > 0 or (arg_324_1._frostSpikeFreezeT or 0) > 0) and math.max(0, var_324_1 * (arg_324_2 or 0)) or 0

		arg_324_1.x = (arg_324_1.x or 0) - var_324_2
		arg_324_1.facing = -1

		if arg_324_1.anim and not arg_324_1.dying then
			local var_324_3 = var_324_2 > 0 and "walk" or "idle"

			if arg_324_1.anim.name ~= var_324_3 then
				arg_324_1.anim.name = var_324_3
				arg_324_1.anim.frame = 1
				arg_324_1.anim.t = 0
				arg_324_1.anim.reverse = nil
			end
		end
	end,
	animate = function(arg_325_0, arg_325_1, arg_325_2)
		if not arg_325_0.anim or not arg_325_1 or not arg_325_1.animations or arg_325_0.dying or (arg_325_0._frostSpikeFreezeT or 0) > 0 then
			return
		end

		local var_325_0 = arg_325_0.anim.name == "walk" and "walk" or "idle"

		if not arg_325_1.animations[var_325_0] then
			var_325_0 = arg_325_1.animations.walk and "walk" or "idle"
		end

		local var_325_1 = arg_325_1.animations[var_325_0]

		if not var_325_1 then
			return
		end

		if arg_325_0.anim.name ~= var_325_0 then
			arg_325_0.anim.name = var_325_0
			arg_325_0.anim.frame = 1
			arg_325_0.anim.t = 0
			arg_325_0.anim.reverse = nil
		end

		local var_325_2 = math.max(0.001, var_325_1.speed or 0.12)

		if not arg_325_0.anim._desynced then
			arg_325_0.anim.frame = love.math.random(1, math.max(1, var_325_1.frames or 1))
			arg_325_0.anim.t = love.math.random() * var_325_2 * 0.9
			arg_325_0.anim._desynced = true
		end

		arg_325_0.anim.t = (arg_325_0.anim.t or 0) + math.max(0, arg_325_2 or 0)

		local var_325_3 = math.floor(arg_325_0.anim.t / var_325_2)

		arg_325_0.anim.t = arg_325_0.anim.t - var_325_3 * var_325_2
		arg_325_0.anim.frame = ((arg_325_0.anim.frame or 1) - 1 + var_325_3) % math.max(1, var_325_1.frames or 1) + 1
	end
}
 __recovered_scope_0.var_0_210 = nil
 __recovered_scope_0.var_0_211 = {}
 __recovered_scope_0.var_0_212 = {
	["환수기병 (Beast Cavalry)"] = true,
	["Beast Cavalry"] = true,
	환수기병 = true
}

function __recovered_scope_0.var_0_211.matches(arg_326_0)
	if not arg_326_0 or arg_326_0.side ~= "ally" or arg_326_0.sym ~= "H" or tonumber(arg_326_0.rank or arg_326_0.star or 1) ~= 1 or arg_326_0.isSummon or arg_326_0.isShadowMinion or arg_326_0.isUndyingSoul then
		return false
	end

	for iter_326_0, iter_326_1 in ipairs({
		"subclass",
		"subclassName",
		"subclassKey"
	}) do
		if __recovered_scope_0.var_0_212[arg_326_0[iter_326_1]] then
			return true
		end
	end

	return false
end

function __recovered_scope_0.var_0_211.direct(arg_327_0, arg_327_1, arg_327_2)
	arg_327_2 = arg_327_2 or {}

	if arg_327_1 == arg_327_0 or arg_327_1 and (arg_327_1.isPoison or arg_327_1.isFirebreatherBurn or arg_327_1.isDragonkinBurn or arg_327_1.isDamageOverTime or arg_327_1.isReflection or arg_327_1.reflected) then
		return false
	end

	return not arg_327_2.dot and not arg_327_2.poison and not arg_327_2.burn and not arg_327_2.bleed and not arg_327_2.damageOverTime and not arg_327_2.selfDamage and not arg_327_2.hpCost and not arg_327_2.hpLoss and not arg_327_2.healthCost and not arg_327_2.indirect and arg_327_2.directDamage ~= false and not arg_327_2.reflected and not arg_327_2.reflection and not arg_327_2.resolvedDamage and not arg_327_2.combatExperienceReplay and not arg_327_2.factionAbyssShared and not arg_327_2.sharedDamage and not arg_327_2.damageShared
end

function __recovered_scope_0.var_0_211.split(arg_328_0, arg_328_1, arg_328_2, arg_328_3, arg_328_4)
	if not arg_328_0 or arg_328_0.mode ~= "battle" or not __recovered_scope_0.var_0_211.matches(arg_328_1) or not arg_328_1.alive or arg_328_1.dying or not ((arg_328_1.hp or 0) > 0) or not ((arg_328_2 or 0) > 0) or not __recovered_scope_0.var_0_211.direct(arg_328_1, arg_328_3, arg_328_4) then
		return arg_328_2
	end

	local var_328_0 = arg_328_2 * 0.5

	arg_328_0._dreamboundFlesh = arg_328_0._dreamboundFlesh or {}

	table.insert(arg_328_0._dreamboundFlesh, {
		unit = arg_328_1,
		amount = var_328_0,
		due = (arg_328_0._dreamboundFleshTime or 0) + 2
	})

	return var_328_0
end

function __recovered_scope_0.var_0_211.clear(arg_329_0)
	if arg_329_0 then
		arg_329_0._dreamboundFlesh, arg_329_0._dreamboundFleshTime = nil
	end
end

function __recovered_scope_0.var_0_211.update(arg_330_0, arg_330_1, arg_330_2)
	if not arg_330_0 then
		return
	end

	if arg_330_0.mode ~= "battle" then
		__recovered_scope_0.var_0_211.clear(arg_330_0)

		return
	end

	local var_330_0 = (arg_330_0._dreamboundFleshTime or 0) + math.max(0, tonumber(arg_330_1) or 0)

	arg_330_0._dreamboundFleshTime = var_330_0

	local var_330_1 = arg_330_0._dreamboundFlesh

	if not var_330_1 then
		return
	end

	local var_330_2 = 1

	while var_330_2 <= #var_330_1 do
		local var_330_3 = var_330_1[var_330_2]
		local var_330_4 = var_330_3.unit

		if not var_330_4 or not var_330_4.alive or var_330_4.dying or (var_330_4.hp or 0) <= 0 then
			table.remove(var_330_1, var_330_2)
		elseif var_330_0 + 1e-09 >= var_330_3.due then
			table.remove(var_330_1, var_330_2)

			var_330_4.hp = (var_330_4.hp or 0) - var_330_3.amount
			var_330_4._factionShieldLastHP, var_330_4._factionForestLastHP = var_330_4.hp, var_330_4.hp

			if var_330_4._escapeCloakLastHP ~= nil then
				var_330_4._escapeCloakLastHP = var_330_4.hp
			end

			if var_330_4._holyGuardLastHP ~= nil then
				var_330_4._holyGuardLastHP = var_330_4.hp
			end

			if var_330_4._holyBarrierShield then
				var_330_4._holyBarrierShield.lastHP = var_330_4.hp
			end

			require("src.game.unit_abilities").guardian_oath.recordHP(var_330_4)

			if var_330_4.hp <= 0 and arg_330_2 then
				arg_330_2(var_330_4)
			end
		else
			var_330_2 = var_330_2 + 1
		end
	end

	if #var_330_1 == 0 then
		arg_330_0._dreamboundFlesh = nil
	end
end

 __recovered_scope_0.var_0_213 = __recovered_scope_0.var_0_211
 __recovered_scope_0.var_0_214 = nil
 __recovered_scope_0.var_0_215 = {
	blindMiss = function(arg_331_0, arg_331_1)
		if not arg_331_0 or (arg_331_0.blindT or 0) <= 0 then
			return false
		end

		arg_331_1 = arg_331_1 or {}

		return not arg_331_1.dot and not arg_331_1.burn and not arg_331_1.poison and not arg_331_1.bleed and not arg_331_1.damageOverTime and arg_331_1.directDamage ~= false and not arg_331_1.resolvedDamage and not arg_331_1.combatExperienceReplay and not arg_331_1.selfDamage and not arg_331_1.hpCost and not arg_331_1.hpLoss
	end
}
 __recovered_scope_0.var_0_216 = nil
 __recovered_scope_0.var_0_217 = {
	matches = function(arg_332_0)
		if not arg_332_0 or arg_332_0.sym ~= "S" or tonumber(arg_332_0.rank) ~= 1 then
			return false
		end

		for iter_332_0, iter_332_1 in ipairs({
			"subclass",
			"subclassName",
			"subclassKey"
		}) do
			local var_332_0 = arg_332_0[iter_332_1]

			if var_332_0 == "랜서" or var_332_0 == "Lancer" or var_332_0 == "랜서 (Lancer)" then
				return true
			end
		end

		return false
	end
}

 function __recovered_scope_0.var_0_218(arg_333_0, arg_333_1, arg_333_2, arg_333_3, arg_333_4)
	if not arg_333_2 or not arg_333_3(arg_333_2, arg_333_1, arg_333_0) or not arg_333_4(arg_333_1, arg_333_2) or not __recovered_scope_0.var_0_39.targetAllowed(arg_333_0, arg_333_1, arg_333_2) then
		return false
	end

	if tonumber(arg_333_0 and (arg_333_0.stage or arg_333_0.currentStage)) == 6 then
		local var_333_0 = __recovered_scope_0.var_0_39.entityLane(arg_333_0, arg_333_1)
		local var_333_1 = __recovered_scope_0.var_0_39.entityLane(arg_333_0, arg_333_2)

		if var_333_0 == nil or var_333_0 ~= var_333_1 then
			return false
		end
	end

	return true
end

 function __recovered_scope_0.var_0_219(arg_334_0, arg_334_1, arg_334_2, arg_334_3, arg_334_4, arg_334_5)
	local var_334_0 = (arg_334_2.x or 0) - (arg_334_1.x or 0) >= 0 and 1 or -1
	local var_334_1
	local var_334_2
	local var_334_3

	for iter_334_0, iter_334_1 in ipairs(arg_334_0.enemies or {}) do
		if iter_334_1 ~= arg_334_2 and __recovered_scope_0.var_0_218(arg_334_0, arg_334_1, iter_334_1, arg_334_3, arg_334_5) then
			local var_334_4 = ((iter_334_1.x or 0) - (arg_334_2.x or 0)) * var_334_0
			local var_334_5 = arg_334_4(arg_334_1, iter_334_1)

			if var_334_4 >= 2 and var_334_5 <= 25600 and (not var_334_1 or var_334_4 < var_334_2 or var_334_4 == var_334_2 and var_334_5 < var_334_3) then
				var_334_1, var_334_2, var_334_3 = iter_334_1, var_334_4, var_334_5
			end
		end
	end

	return var_334_1
end

function __recovered_scope_0.var_0_217.select(arg_335_0, arg_335_1, arg_335_2, arg_335_3, arg_335_4, arg_335_5)
	if not __recovered_scope_0.var_0_217.matches(arg_335_1) or not arg_335_0 or not arg_335_0.enemies then
		if arg_335_1 then
			arg_335_1._backlineThrustFront, arg_335_1._backlineThrustTarget = nil
		end

		return nil, nil
	end

	local var_335_0 = arg_335_1._backlineThrustTarget

	if var_335_0 and __recovered_scope_0.var_0_218(arg_335_0, arg_335_1, var_335_0, arg_335_2, arg_335_5) and arg_335_3(arg_335_1, var_335_0) <= 25600 then
		return arg_335_1._backlineThrustFront, var_335_0
	end

	arg_335_1._backlineThrustFront, arg_335_1._backlineThrustTarget = nil

	local var_335_1
	local var_335_2

	for iter_335_0, iter_335_1 in ipairs(arg_335_0.enemies) do
		if __recovered_scope_0.var_0_218(arg_335_0, arg_335_1, iter_335_1, arg_335_2, arg_335_5) and arg_335_4(arg_335_1, iter_335_1) then
			local var_335_3 = arg_335_3(arg_335_1, iter_335_1)

			if var_335_3 <= 3600 and (not var_335_1 or var_335_3 < var_335_2) then
				var_335_1, var_335_2 = iter_335_1, var_335_3
			end
		end
	end

	if not var_335_1 then
		return nil, nil
	end

	local var_335_4 = __recovered_scope_0.var_0_219(arg_335_0, arg_335_1, var_335_1, arg_335_2, arg_335_3, arg_335_5)

	if var_335_4 then
		arg_335_1._backlineThrustFront, arg_335_1._backlineThrustTarget = var_335_1, var_335_4
	end

	return var_335_1, var_335_4
end

 __recovered_scope_0.var_0_220 = __recovered_scope_0.var_0_217
 __recovered_scope_0.var_0_221 = nil
 __recovered_scope_0.var_0_222 = {
	rate = function(arg_336_0)
		local var_336_0 = arg_336_0 and arg_336_0.stats

		if arg_336_0 and arg_336_0.level then
			local var_336_1 = require("src.data.constants").imprint.definitions.lifesteal
			local var_336_2 = math.max(1, math.min(#var_336_1.levels, math.floor(tonumber(arg_336_0.level) or 1)))

			var_336_0 = var_336_1.levels[var_336_2].stats
		end

		return math.max(0, tonumber(var_336_0 and var_336_0.stealFrac) or 0)
	end
}

function __recovered_scope_0.var_0_222.healAmount(arg_337_0, arg_337_1, arg_337_2, arg_337_3, arg_337_4, arg_337_5)
	arg_337_3 = arg_337_3 or {}

	local var_337_0 = arg_337_3.projectile
	local var_337_1 = arg_337_4 or arg_337_5 or arg_337_3.basicAttack ~= true or arg_337_3.imprintDamage or arg_337_3.area_damage or arg_337_3.areaDamage or arg_337_3.aoe or arg_337_3.explosion or arg_337_0 and (arg_337_0._inChainProcess or arg_337_0._inTransferProcess or arg_337_0._inAnnihilationProcess) or var_337_0 and var_337_0.pierce and var_337_0.pierce._primaryHitDone
	local var_337_2 = math.max(0, tonumber(arg_337_2) or 0) / math.max(1, tonumber(arg_337_0 and arg_337_0._randomOptionBattleFervorMul) or 1)

	return math.floor(var_337_2 * __recovered_scope_0.var_0_222.rate(arg_337_1) * (var_337_1 and 0.3333333333333333 or 1) + 0.5)
end

 __recovered_scope_0.var_0_223 = __recovered_scope_0.var_0_222
 __recovered_scope_0.var_0_224 = nil
 __recovered_scope_0.var_0_225 = {
	damage = function(arg_338_0)
		if not arg_338_0 or arg_338_0.isClone then
			return 0
		end

		local var_338_0 = 0.25

		for iter_338_0, iter_338_1 in pairs(arg_338_0.imprints or {}) do
			if iter_338_1 and iter_338_1.id == "self_destruct" then
				local var_338_1 = iter_338_1.stats

				if iter_338_1.level then
					local var_338_2 = require("src.data.constants").imprint.definitions.self_destruct.levels

					var_338_1 = var_338_2[math.max(1, math.min(#var_338_2, math.floor(tonumber(iter_338_1.level) or 1)))].stats
				end

				var_338_0 = tonumber(var_338_1 and var_338_1.hpDamageFrac) or var_338_0

				break
			end
		end

		return math.max(0, tonumber(arg_338_0.maxhp) or 0) * math.max(0, var_338_0)
	end
}
 __recovered_scope_0.var_0_226 = nil
 __recovered_scope_0.var_0_227 = {}
 __recovered_scope_0.var_0_228 = {
	{
		"chill",
		0.25
	},
	{
		"heavyKickSlow",
		0.3
	},
	{
		"shackleArrowSlow",
		0.35
	},
	{
		"galeBowSlow",
		0.25
	}
}
 __recovered_scope_0.var_0_229 = {
	{
		"chill",
		0.25
	},
	{
		"guardThrustSlow",
		0.15
	},
	{
		"observerSlow",
		0.2
	}
}

 function __recovered_scope_0.var_0_230(arg_339_0, arg_339_1)
	local var_339_0 = 0

	for iter_339_0, iter_339_1 in ipairs(arg_339_1) do
		local var_339_1 = arg_339_0 and arg_339_0[iter_339_1[1]]

		if var_339_1 and (tonumber(var_339_1.dur) or 0) > 0 then
			var_339_0 = math.max(var_339_0, math.max(0, math.min(0.95, tonumber(var_339_1.slowFrac) or iter_339_1[2])))
		end
	end

	return 1 - var_339_0
end

function __recovered_scope_0.var_0_227.movementMultiplier(arg_340_0)
	return __recovered_scope_0.var_0_230(arg_340_0, __recovered_scope_0.var_0_228)
end

function __recovered_scope_0.var_0_227.attackMultiplier(arg_341_0)
	local var_341_0 = __recovered_scope_0.var_0_230(arg_341_0, __recovered_scope_0.var_0_229)

	if arg_341_0 and arg_341_0.shrinkDebuff and (tonumber(arg_341_0.shrinkDebuff.dur) or 0) > 0 then
		var_341_0 = math.min(var_341_0, require("src.game.unit_abilities").shrink_imprint.getAttackSpeedMultiplier(arg_341_0))
	end

	return var_341_0
end

function __recovered_scope_0.var_0_227.apply(arg_342_0, arg_342_1, arg_342_2, arg_342_3)
	local var_342_0 = arg_342_0[arg_342_1]
	local var_342_1 = var_342_0 and (tonumber(var_342_0.dur) or 0) > 0 and (tonumber(var_342_0.slowFrac) or 0) or 0

	arg_342_0[arg_342_1] = {
		slowFrac = math.max(var_342_1, math.max(0, math.min(0.95, tonumber(arg_342_2) or 0))),
		dur = math.max(0, tonumber(arg_342_3) or 0)
	}

	return arg_342_0[arg_342_1]
end

 __recovered_scope_0.var_0_231 = __recovered_scope_0.var_0_227
 __recovered_scope_0.var_0_232 = nil
 __recovered_scope_0.var_0_233 = {
	params = function(arg_343_0, arg_343_1)
		if not arg_343_0 or arg_343_0.isUndyingSoul then
			return
		end

		local var_343_0

		for iter_343_0, iter_343_1 in pairs(arg_343_0.imprints or {}) do
			if iter_343_1 and iter_343_1.id == "chill" then
				local var_343_1 = iter_343_1.stats

				if iter_343_1.level then
					local var_343_2 = require("src.data.constants").imprint.definitions.chill.levels

					var_343_1 = var_343_2[math.max(1, math.min(#var_343_2, math.floor(tonumber(iter_343_1.level) or 1)))].stats
				end

				local var_343_3 = tonumber(var_343_1 and var_343_1.slowFrac) or 0.25

				if arg_343_1 and arg_343_1.isBoss then
					var_343_3 = tonumber(var_343_1 and var_343_1.bossSlowFrac) or var_343_3 * 0.5
				end

				var_343_0 = math.max(var_343_0 or 0, var_343_3)
			end
		end

		return var_343_0, 2
	end
}

function __recovered_scope_0.var_0_233.apply(arg_344_0, arg_344_1)
	if not arg_344_1 or not arg_344_1.alive or arg_344_1.dying or not ((tonumber(arg_344_1.hp) or 0) > 0) then
		return false
	end

	local var_344_0, var_344_1 = __recovered_scope_0.var_0_233.params(arg_344_0, arg_344_1)

	if not var_344_0 then
		return false
	end

	__recovered_scope_0.var_0_231.apply(arg_344_1, "chill", var_344_0, var_344_1)

	return true
end

 __recovered_scope_0.var_0_234 = __recovered_scope_0.var_0_233
 __recovered_scope_0.var_0_235 = nil
 __recovered_scope_0.var_0_236 = {
	params = function(arg_345_0)
		if not arg_345_0 or arg_345_0.isUndyingSoul then
			return
		end

		for iter_345_0, iter_345_1 in pairs(arg_345_0.imprints or {}) do
			if iter_345_1 and iter_345_1.id == "fear" then
				local var_345_0 = iter_345_1.stats

				if iter_345_1.level then
					local var_345_1 = require("src.data.constants").imprint.definitions.fear.levels

					var_345_0 = var_345_1[math.max(1, math.min(#var_345_1, math.floor(tonumber(iter_345_1.level) or 1)))].stats
				end

				var_345_0 = var_345_0 or {}

				return tonumber(var_345_0.chance) or 0.15, tonumber(var_345_0.duration) or 0.8, tonumber(var_345_0.icd) or 3
			end
		end
	end
}

function __recovered_scope_0.var_0_236.onHit(arg_346_0, arg_346_1, arg_346_2, arg_346_3, arg_346_4, arg_346_5, arg_346_6)
	arg_346_4 = arg_346_4 or {}

	if not arg_346_0 or not arg_346_1 or not arg_346_2 or not arg_346_2.alive or arg_346_2.dying or not ((tonumber(arg_346_2.hp) or 0) > 0) or not ((tonumber(arg_346_3) or 0) > 0) or arg_346_4.basicAttack ~= true or arg_346_5 or arg_346_6 or arg_346_4.battleSkillDamage or arg_346_4.skillDamage or arg_346_4.skillAttack or arg_346_4.imprintDamage or arg_346_4.area_damage or arg_346_4.areaDamage or arg_346_4.aoe or arg_346_4.explosion or arg_346_4.indirect or arg_346_4.dot or arg_346_4.damageOverTime or arg_346_4.burn or arg_346_4.poison or arg_346_4.bleed or arg_346_4.itemDamage or arg_346_4.fromItem or arg_346_4.reflected or arg_346_4.reflection or arg_346_4.combatExperienceReplay or arg_346_1._inChainProcess or arg_346_1._inTransferProcess or arg_346_1._inAnnihilationProcess then
		return false
	end

	local var_346_0 = arg_346_4.projectile

	if var_346_0 and var_346_0.pierce and var_346_0.pierce._primaryHitDone then
		return false
	end

	if arg_346_2.isBoss and require("src.game.bossSkill").isCasting(arg_346_2) then
		return false
	end

	local var_346_1, var_346_2, var_346_3 = __recovered_scope_0.var_0_236.params(arg_346_1)

	if not var_346_1 then
		return false
	end

	local var_346_4 = tonumber(arg_346_0._waveTimeAcc) or 0
	local var_346_5 = arg_346_0._fearWave or arg_346_0

	if arg_346_1._fearWave == var_346_5 and var_346_4 + 1e-09 < (arg_346_1._fearReadyAt or 0) then
		return false
	end

	if var_346_1 <= love.math.random() then
		return false
	end

	arg_346_2.fearT = math.max(tonumber(arg_346_2.fearT) or 0, var_346_2 * (arg_346_2.isBoss and 0.5 or 1))
	arg_346_1._fearWave, arg_346_1._fearReadyAt = var_346_5, var_346_4 + var_346_3

	return true
end

 __recovered_scope_0.var_0_237 = __recovered_scope_0.var_0_236
 __recovered_scope_0.var_0_238 = nil
 __recovered_scope_0.var_0_239 = {
	stats = function(arg_347_0)
		local var_347_0 = require("src.data.constants").imprint.definitions.enlarge.levels

		if arg_347_0 and arg_347_0.level then
			return var_347_0[math.max(1, math.min(#var_347_0, math.floor(tonumber(arg_347_0.level) or 1)))].stats
		end

		return arg_347_0 and arg_347_0.stats or var_347_0[1].stats
	end
}
 __recovered_scope_0.var_0_240 = nil
 __recovered_scope_0.var_0_241 = {
	params = function(arg_348_0)
		if not arg_348_0 or arg_348_0.isUndyingSoul then
			return
		end

		for iter_348_0, iter_348_1 in pairs(arg_348_0.imprints or {}) do
			if iter_348_1 and iter_348_1.id == "execute" then
				local var_348_0 = iter_348_1.stats

				if iter_348_1.level then
					local var_348_1 = require("src.data.constants").imprint.definitions.execute.levels

					var_348_0 = var_348_1[math.max(1, math.min(#var_348_1, math.floor(tonumber(iter_348_1.level) or 1)))].stats
				end

				return tonumber(var_348_0 and var_348_0.threshold) or 0.1, tonumber(var_348_0 and var_348_0.icd) or 1.5
			end
		end
	end
}

function __recovered_scope_0.var_0_241.damage(arg_349_0, arg_349_1, arg_349_2, arg_349_3, arg_349_4, arg_349_5, arg_349_6)
	arg_349_4 = arg_349_4 or {}

	if not arg_349_0 or not arg_349_1 or not arg_349_2 or not arg_349_2.alive or arg_349_2.dying or arg_349_2.isBoss or not ((tonumber(arg_349_2.hp) or 0) > 0) or not ((tonumber(arg_349_2.maxhp) or 0) > 0) or not ((tonumber(arg_349_3) or 0) > 0) or arg_349_4.basicAttack ~= true or arg_349_5 or arg_349_6 or arg_349_4.battleSkillDamage or arg_349_4.skillDamage or arg_349_4.skillAttack or arg_349_4.imprintDamage or arg_349_4.area_damage or arg_349_4.areaDamage or arg_349_4.aoe or arg_349_4.explosion or arg_349_4.indirect or arg_349_4.dot or arg_349_4.damageOverTime or arg_349_4.burn or arg_349_4.poison or arg_349_4.bleed or arg_349_4.itemDamage or arg_349_4.fromItem or arg_349_4.reflected or arg_349_4.reflection or arg_349_4.combatExperienceReplay or arg_349_1._inChainProcess or arg_349_1._inTransferProcess or arg_349_1._inAnnihilationProcess then
		return 0
	end

	local var_349_0 = arg_349_4.projectile

	if var_349_0 and var_349_0.pierce and var_349_0.pierce._primaryHitDone then
		return 0
	end

	local var_349_1 = __recovered_scope_0.var_0_241.params(arg_349_1)

	if not var_349_1 then
		return 0
	end

	local var_349_2 = tonumber(arg_349_0._waveTimeAcc) or 0
	local var_349_3 = arg_349_0._executeWave or arg_349_0

	if arg_349_1._executeWave == var_349_3 and var_349_2 + 1e-09 < (arg_349_1._executeReadyAt or 0) then
		return 0
	end

	if var_349_1 < arg_349_2.hp / arg_349_2.maxhp then
		return 0
	end

	return arg_349_2.hp
end

function __recovered_scope_0.var_0_241.onSuccess(arg_350_0, arg_350_1)
	local var_350_0, var_350_1 = __recovered_scope_0.var_0_241.params(arg_350_1)

	arg_350_1._executeWave = arg_350_0._executeWave or arg_350_0
	arg_350_1._executeReadyAt = (tonumber(arg_350_0._waveTimeAcc) or 0) + (var_350_1 or 1.5)
end

 __recovered_scope_0.var_0_242 = __recovered_scope_0.var_0_241
 __recovered_scope_0.var_0_243 = nil
 __recovered_scope_0.var_0_244 = {
	params = function(arg_351_0)
		if not arg_351_0 or arg_351_0.isUndyingSoul then
			return
		end

		for iter_351_0, iter_351_1 in pairs(arg_351_0.imprints or {}) do
			if iter_351_1 and iter_351_1.id == "earthquake" then
				local var_351_0 = iter_351_1.stats

				if iter_351_1.level then
					local var_351_1 = require("src.data.constants").imprint.definitions.earthquake.levels

					var_351_0 = var_351_1[math.max(1, math.min(#var_351_1, math.floor(tonumber(iter_351_1.level) or 1)))].stats
				end

				var_351_0 = var_351_0 or {}

				return tonumber(var_351_0.damageMult) or 1.5, 0.12, tonumber(var_351_0.icd) or 7, tonumber(var_351_0.stunDur) or 0.8
			end
		end
	end
}

function __recovered_scope_0.var_0_244.onHit(arg_352_0, arg_352_1, arg_352_2, arg_352_3, arg_352_4, arg_352_5, arg_352_6)
	arg_352_4 = arg_352_4 or {}

	if not arg_352_0 or not arg_352_1 or not arg_352_1.alive or arg_352_1.dying or not arg_352_2 or not arg_352_2.alive or arg_352_2.dying or not ((tonumber(arg_352_2.hp) or 0) > 0) or not ((tonumber(arg_352_3) or 0) > 0) or arg_352_4.basicAttack ~= true or arg_352_5 or arg_352_6 or arg_352_4.battleSkillDamage or arg_352_4.skillDamage or arg_352_4.skillAttack or arg_352_4.imprintDamage or arg_352_4.area_damage or arg_352_4.areaDamage or arg_352_4.aoe or arg_352_4.explosion or arg_352_4.indirect or arg_352_4.dot or arg_352_4.damageOverTime or arg_352_4.burn or arg_352_4.poison or arg_352_4.bleed or arg_352_4.itemDamage or arg_352_4.fromItem or arg_352_4.reflected or arg_352_4.reflection or arg_352_4.combatExperienceReplay or arg_352_1._inChainProcess or arg_352_1._inTransferProcess or arg_352_1._inAnnihilationProcess then
		return
	end

	local var_352_0 = arg_352_4.projectile

	if var_352_0 and var_352_0.pierce and var_352_0.pierce._primaryHitDone then
		return
	end

	local var_352_1, var_352_2, var_352_3, var_352_4 = __recovered_scope_0.var_0_244.params(arg_352_1)

	if not var_352_1 then
		return
	end

	local var_352_5 = tonumber(arg_352_0._waveTimeAcc) or 0
	local var_352_6 = arg_352_0._earthquakeWave or arg_352_0

	if arg_352_1._earthquakeWave == var_352_6 and var_352_5 + 1e-09 < (arg_352_1._earthquakeReadyAt or 0) then
		return
	end

	if var_352_2 <= love.math.random() then
		return
	end

	arg_352_1._earthquakeWave, arg_352_1._earthquakeReadyAt = var_352_6, var_352_5 + var_352_3

	return var_352_1, var_352_4
end

function __recovered_scope_0.var_0_244.stunDuration(arg_353_0, arg_353_1, arg_353_2)
	return ((tonumber(arg_353_1) or 0) + (tonumber(arg_353_2) or 0)) * (arg_353_0 and arg_353_0.isBoss and 0.5 or 1)
end

 __recovered_scope_0.var_0_245 = __recovered_scope_0.var_0_244
 __recovered_scope_0.var_0_246 = nil
 __recovered_scope_0.var_0_247 = {
	LANDING_Y_OFFSET = 12,
	FALL_DURATION = 1.3,
	BASE_RADIUS = 75,
	params = function(arg_354_0)
		if not arg_354_0 or arg_354_0.isUndyingSoul then
			return
		end

		for iter_354_0, iter_354_1 in pairs(arg_354_0.imprints or {}) do
			if iter_354_1 and iter_354_1.id == "meteor" then
				local var_354_0 = require("src.data.constants").imprint.definitions.meteor.levels

				return var_354_0[math.max(1, math.min(#var_354_0, math.floor(tonumber(iter_354_1.level) or 1)))].stats.damageMult, 0.1, 8
			end
		end
	end
}

function __recovered_scope_0.var_0_247.size(arg_355_0)
	arg_355_0 = math.max(0, tonumber(arg_355_0) or 0)

	if arg_355_0 < 500 then
		return 50, 2, "small"
	end

	if arg_355_0 < 1000 then
		return __recovered_scope_0.var_0_247.BASE_RADIUS, 3, "medium"
	end

	return 100, 4, "large"
end

function __recovered_scope_0.var_0_247.beginAttack(arg_356_0, arg_356_1)
	if __recovered_scope_0.var_0_247.params(arg_356_1) then
		arg_356_1._meteorAttack = {
			wave = arg_356_0._meteorWave or arg_356_0
		}
	end
end

function __recovered_scope_0.var_0_247.onHit(arg_357_0, arg_357_1, arg_357_2, arg_357_3, arg_357_4, arg_357_5, arg_357_6, arg_357_7)
	arg_357_4 = arg_357_4 or {}

	if not arg_357_0 or not arg_357_1 or arg_357_1.side ~= "ally" or not arg_357_1.alive or arg_357_1.dying or not __recovered_scope_0.var_0_109.isRosterUnit(arg_357_1) or arg_357_1.isUndyingSoul or arg_357_1.isFlameSpirit or arg_357_1.isHusk or arg_357_1.isWildBeast or arg_357_1.isMirror or arg_357_1.isWoodenWatchtower or arg_357_1.isSoulSplit or arg_357_1.summonOwner or arg_357_1.cloneOwner or arg_357_1._itemOwner or not arg_357_2 or not arg_357_2.alive or arg_357_2.dying or not ((tonumber(arg_357_3) or 0) > 0) or arg_357_4.basicAttack ~= true or arg_357_4.noProcs or arg_357_5 or arg_357_6 or arg_357_4.battleSkillDamage or arg_357_4.skillDamage or arg_357_4.skillAttack or arg_357_4.imprintDamage or arg_357_4.areaDamage or arg_357_4.area_damage or arg_357_4.aoe or arg_357_4.explosion or arg_357_4.indirect or arg_357_4.dot or arg_357_4.damageOverTime or arg_357_4.burn or arg_357_4.poison or arg_357_4.bleed or arg_357_4.itemDamage or arg_357_4.fromItem or arg_357_4.reflected or arg_357_4.reflection or arg_357_4.combatExperienceReplay or arg_357_4.extraHit or arg_357_4.additionalHit or arg_357_1._inChainProcess or arg_357_1._inTransferProcess or arg_357_1._inAnnihilationProcess then
		return
	end

	local var_357_0 = arg_357_4.projectile

	if var_357_0 and (var_357_0._branchingBloomHit or var_357_0.pierce and var_357_0.pierce._primaryHitDone) then
		return
	end

	local var_357_1, var_357_2, var_357_3 = __recovered_scope_0.var_0_247.params(arg_357_1)

	if not var_357_1 then
		return
	end

	local var_357_4 = arg_357_0._meteorWave or arg_357_0
	local var_357_5 = arg_357_4.meteorAttack or var_357_0 and var_357_0.meteorAttack or arg_357_1._meteorAttack

	var_357_5 = var_357_5 or var_357_0 or arg_357_4

	if var_357_5.wave and var_357_5.wave ~= var_357_4 or var_357_5._meteorRolled then
		return
	end

	var_357_5._meteorRolled = true

	local var_357_6 = tonumber(arg_357_0._waveTimeAcc) or 0

	if arg_357_1._meteorWave == var_357_4 and var_357_6 + 1e-09 < (arg_357_1._meteorReadyAt or 0) then
		return
	end

	if var_357_2 <= love.math.random() then
		return
	end

	arg_357_1._meteorWave, arg_357_1._meteorReadyAt = var_357_4, var_357_6 + var_357_3

	local var_357_7 = math.max(0, tonumber(arg_357_1.maxhp) or 0)
	local var_357_8, var_357_9, var_357_10 = __recovered_scope_0.var_0_247.size(var_357_7)
	local var_357_11 = math.max(0, tonumber(arg_357_7) or tonumber(arg_357_1.dmg) or 0)
	local var_357_12 = {
		t = 0,
		x = arg_357_2.x,
		y = arg_357_2.y + __recovered_scope_0.var_0_247.LANDING_Y_OFFSET,
		fallDur = __recovered_scope_0.var_0_247.FALL_DURATION,
		dmg = math.floor(var_357_11 * var_357_1 + 0.5),
		atk = var_357_11,
		maxhp = var_357_7,
		radius = var_357_8,
		maxTargets = var_357_9,
		size = var_357_10,
		source = arg_357_1,
		side = arg_357_1.side,
		crossfireAttack = arg_357_4.crossfireAttack == true
	}

	arg_357_0.meteors = arg_357_0.meteors or {}
	arg_357_0.meteors[#arg_357_0.meteors + 1] = var_357_12

	local var_357_13 = rawget(_G, "Render2") or package.loaded["src.ui.render2"]

	if var_357_13 and var_357_13.addMeteorEffect then
		var_357_13.addMeteorEffect(var_357_12.x, var_357_12.y, var_357_8)
	end

	return var_357_12
end

function __recovered_scope_0.var_0_247.impact(arg_358_0, arg_358_1, arg_358_2, arg_358_3)
	local var_358_0 = {}
	local var_358_1 = tonumber(arg_358_1.radius) or __recovered_scope_0.var_0_247.BASE_RADIUS
	local var_358_2 = arg_358_1.side == "ally" and arg_358_0.enemies or arg_358_0.allies

	for iter_358_0, iter_358_1 in ipairs(var_358_2 or {}) do
		if iter_358_1.alive and not iter_358_1.dying and require("src.game.combat").enemy_entry.canBeTargeted(arg_358_0, iter_358_1) and not require("src.game.unit_abilities").dimensional_duel.separated(arg_358_0, arg_358_1.source, iter_358_1) then
			local var_358_3 = (iter_358_1.x or 0) - arg_358_1.x
			local var_358_4 = (iter_358_1.y or 0) - arg_358_1.y
			local var_358_5 = var_358_3 * var_358_3 + var_358_4 * var_358_4

			if var_358_5 <= var_358_1 * var_358_1 then
				var_358_0[#var_358_0 + 1] = {
					unit = iter_358_1,
					distance = var_358_5,
					index = iter_358_0
				}
			end
		end
	end

	table.sort(var_358_0, function(arg_359_0, arg_359_1)
		if arg_359_0.distance == arg_359_1.distance then
			return arg_359_0.index < arg_359_1.index
		end

		return arg_359_0.distance < arg_359_1.distance
	end)

	for iter_358_2 = 1, math.min(#var_358_0, arg_358_1.maxTargets or 3) do
		local var_358_6 = {
			explosion = true,
			skillDamage = false,
			noProcs = true,
			noHitShake = true,
			meteorDamage = true,
			indirect = true,
			imprintDamage = true,
			areaDamage = true,
			battleSkillDamage = false,
			basicAttack = false,
			crossfireAttack = arg_358_1.crossfireAttack
		}

		if arg_358_1.side == "ally" then
			arg_358_2(var_358_0[iter_358_2].unit, arg_358_1.dmg, arg_358_1.source, nil, var_358_6)
		else
			arg_358_3(var_358_0[iter_358_2].unit, arg_358_1.dmg, arg_358_1.source, var_358_6)
		end
	end
end

function __recovered_scope_0.var_0_247.update(arg_360_0, arg_360_1, arg_360_2, arg_360_3, arg_360_4, arg_360_5)
	local var_360_0 = {}

	for iter_360_0, iter_360_1 in ipairs(arg_360_0.meteors or {}) do
		local var_360_1 = arg_360_4 and (not iter_360_1.source or not arg_360_5(iter_360_1.source))

		iter_360_1.t = (iter_360_1.t or 0) + (var_360_1 and 0 or arg_360_1)

		if iter_360_1.t + 1e-09 >= (iter_360_1.fallDur or __recovered_scope_0.var_0_247.FALL_DURATION) then
			__recovered_scope_0.var_0_247.impact(arg_360_0, iter_360_1, arg_360_2, arg_360_3)
		else
			var_360_0[#var_360_0 + 1] = iter_360_1
		end
	end

	arg_360_0.meteors = var_360_0
end

 __recovered_scope_0.var_0_248 = __recovered_scope_0.var_0_247
 __recovered_scope_0.var_0_249 = nil
 __recovered_scope_0.var_0_250 = {
	migrate = function(arg_361_0)
		if not arg_361_0 or arg_361_0.id ~= "panther_fury" then
			return arg_361_0
		end

		local var_361_0 = require("src.data.constants").imprint.definitions.soul_split

		arg_361_0.id = var_361_0.id
		arg_361_0.level = math.max(1, math.min(5, math.floor(tonumber(arg_361_0.level) or 1)))

		for iter_361_0, iter_361_1 in ipairs({
			"name",
			"tag",
			"condition",
			"shortDesc",
			"icon"
		}) do
			arg_361_0[iter_361_1] = var_361_0[iter_361_1]
		end

		arg_361_0.shortIcon = var_361_0.shortIcon
		arg_361_0.maxLevel = 5
		arg_361_0.stats = var_361_0.levels[arg_361_0.level].stats
		arg_361_0.desc = var_361_0.levels[arg_361_0.level].desc

		return arg_361_0
	end
}

function __recovered_scope_0.var_0_250.migrateUnit(arg_362_0)
	for iter_362_0, iter_362_1 in pairs(arg_362_0 and arg_362_0.imprints or {}) do
		__recovered_scope_0.var_0_250.migrate(iter_362_1)
	end
end

function __recovered_scope_0.var_0_250.struck(arg_363_0)
	local var_363_0 = arg_363_0._soulBody
	local var_363_1 = var_363_0 and rawget(var_363_0, "hitFlash")
	local var_363_2 = var_363_0 and rawget(var_363_0, "hitShake")

	rawset(arg_363_0, "_soulFlash", {
		t = 0,
		dur = var_363_1 and var_363_1.dur or 0.16,
		color = var_363_1 and var_363_1.color
	})
	rawset(arg_363_0, "_soulShake", {
		t = 0,
		dur = var_363_2 and var_363_2.dur or 0.18,
		amp = var_363_2 and var_363_2.amp or 4
	})
	rawset(arg_363_0, "_soulHitAt", arg_363_0._soulAge)
	rawset(arg_363_0, "_soulHits", (rawget(arg_363_0, "_soulHits") or 0) + 1)
end

function __recovered_scope_0.var_0_250.living(arg_364_0)
	local var_364_0 = arg_364_0 and arg_364_0._soulBody

	return var_364_0 and arg_364_0._soulActive and (arg_364_0._soulRemaining or 0) > 0 and var_364_0.alive and not var_364_0.dying and (var_364_0.hp or 0) > 0
end

 __recovered_scope_0.var_0_251 = {
	damageReduction = true,
	invuln = true,
	preciseMark = true,
	focusFireMult = true,
	armor = true,
	defense = true,
	curseOfRot = true,
	isBoss = true,
	deadlyBulletVulnerability = true,
	shieldBlockDR = true,
	_invulnT = true,
	maxhp = true,
	shieldBlockCharges = true
}
 __recovered_scope_0.var_0_252 = {
	__index = function(arg_365_0, arg_365_1)
		if arg_365_1 == "hp" then
			return arg_365_0._soulBody.hp
		end

		if arg_365_1 == "alive" then
			return __recovered_scope_0.var_0_250.living(arg_365_0) == true
		end

		if arg_365_1 == "dying" then
			return not __recovered_scope_0.var_0_250.living(arg_365_0)
		end

		if arg_365_1 == "x" then
			return arg_365_0._soulX
		end

		if arg_365_1 == "y" then
			return arg_365_0._soulY
		end

		if arg_365_1 == "side" then
			return "enemy"
		end

		if arg_365_1 == "_storedDamage" then
			return arg_365_0._soulBody._soulSplitStoredDamage or 0
		end

		if __recovered_scope_0.var_0_251[arg_365_1] then
			return arg_365_0._soulBody[arg_365_1]
		end
	end,
	__newindex = function(arg_366_0, arg_366_1, arg_366_2)
		if arg_366_1 == "hp" then
			local var_366_0 = arg_366_0._soulBody

			if __recovered_scope_0.var_0_250.living(arg_366_0) and not var_366_0.invuln and (var_366_0._invulnT or 0) <= 0 then
				if (tonumber(arg_366_2) or var_366_0.hp) < var_366_0.hp then
					__recovered_scope_0.var_0_250.struck(arg_366_0)
				end

				var_366_0.hp = math.min(var_366_0.hp, tonumber(arg_366_2) or var_366_0.hp)

				local var_366_1 = arg_366_0._soulWorld

				if var_366_0.hp <= 0 and var_366_1 and var_366_1._awakeningDeath then
					var_366_1._awakeningDeath(var_366_0)
				end
			end
		elseif arg_366_1 == "_storedDamage" then
			arg_366_0._soulBody._soulSplitStoredDamage = math.max(0, tonumber(arg_366_2) or 0)
			arg_366_0._soulBody._soulSplitStoredSource = arg_366_0._soulBody._soulSplitStoredSource or arg_366_0._soulWorld and arg_366_0._soulWorld.timeStopSource
		elseif arg_366_1 == "alive" then
			if arg_366_2 == false then
				rawset(arg_366_0, "_soulActive", false)
			end
		elseif arg_366_1 == "x" or arg_366_1 == "y" or arg_366_1 == "side" or arg_366_1 == "dying" or arg_366_1 == "maxhp" then
			-- block empty
		elseif __recovered_scope_0.var_0_251[arg_366_1] then
			arg_366_0._soulBody[arg_366_1] = arg_366_2
		else
			rawset(arg_366_0, arg_366_1, arg_366_2)
		end
	end
}

function __recovered_scope_0.var_0_250.onHit(arg_367_0, arg_367_1, arg_367_2, arg_367_3, arg_367_4, arg_367_5, arg_367_6)
	arg_367_4 = arg_367_4 or {}

	if not arg_367_1 or arg_367_1.side ~= "ally" or arg_367_1.isUndyingSoul or not arg_367_1.alive or arg_367_1.dying or not arg_367_2 or arg_367_2.side ~= "enemy" or arg_367_2.isSoulSplit or not arg_367_2.alive or arg_367_2.dying or (arg_367_2.hp or 0) <= 0 or (tonumber(arg_367_3) or 0) <= 0 or arg_367_4.basicAttack ~= true or arg_367_4.noProcs or arg_367_4.soulSplitDamage or arg_367_5 or arg_367_6 or arg_367_4.skillDamage or arg_367_4.battleSkillDamage or arg_367_4.skillAttack or arg_367_4.imprintDamage or arg_367_4.indirect or arg_367_4.areaDamage or arg_367_4.area_damage or arg_367_4.aoe or arg_367_4.explosion or arg_367_4.dot or arg_367_4.damageOverTime or arg_367_4.reflected or arg_367_4.reflection or arg_367_4.itemDamage or arg_367_4.fromItem or arg_367_4.combatExperienceReplay or arg_367_1._inChainProcess or arg_367_1._inTransferProcess or arg_367_1._inAnnihilationProcess then
		return
	end

	if arg_367_4.projectile and arg_367_4.projectile.pierce and arg_367_4.projectile.pierce._primaryHitDone then
		return
	end

	if arg_367_2._splitSoul and __recovered_scope_0.var_0_250.living(arg_367_2._splitSoul) then
		return
	end

	__recovered_scope_0.var_0_250.migrateUnit(arg_367_1)

	local var_367_0

	for iter_367_0, iter_367_1 in pairs(arg_367_1.imprints or {}) do
		if iter_367_1.id == "soul_split" then
			local var_367_1 = math.max(1, math.min(5, math.floor(tonumber(iter_367_1.level) or 1)))

			var_367_0 = require("src.data.constants").imprint.definitions.soul_split.levels[var_367_1].stats

			break
		end
	end

	if not var_367_0 then
		return
	end

	local var_367_2 = tonumber(arg_367_0._waveTimeAcc) or 0
	local var_367_3 = arg_367_0._soulSplitWave or arg_367_0

	if arg_367_1._soulSplitWave == var_367_3 and var_367_2 + 1e-09 < (arg_367_1._soulSplitReadyAt or 0) then
		return
	end

	local var_367_4 = arg_367_2._bodyColW or arg_367_2.colW or 20
	local var_367_5 = (tonumber(arg_367_2.facing) or (arg_367_1.x or 0) < (arg_367_2.x or 0) and -1 or 1) < 0 and -1 or 1
	local var_367_6 = (arg_367_2.x or 0) - var_367_5 * (var_367_4 + 8)
	local var_367_7 = arg_367_2.y or 0
	local var_367_8 = arg_367_0.area

	if var_367_8 then
		var_367_6 = math.max((var_367_8.x or 0) + var_367_4 / 2 + 4, math.min((var_367_8.x or 0) + (var_367_8.w or 640) - var_367_4 / 2 - 4, var_367_6))
	end

	local var_367_9 = "__soul_split_" .. tostring(arg_367_2.skin or arg_367_2.kind or "")

	if arg_367_0.assets and arg_367_0.assets.units then
		arg_367_0.assets.units[var_367_9] = arg_367_0.assets.units[arg_367_2.skin]
	end

	local var_367_10 = setmetatable({
		isSoulSplit = true,
		speed = 0,
		kind = "Soul Split",
		_entryAttackBlocked = false,
		isSummon = true,
		_enteredBattlefield = true,
		spawnT = 1,
		spawnRamp = 0.2,
		coolTicks = 999999,
		_soulActive = true,
		_soulAge = 0,
		dmg = 0,
		_soulBody = arg_367_2,
		_soulWorld = arg_367_0,
		_soulRemaining = var_367_0.duration,
		_soulDuration = var_367_0.duration,
		_soulX = var_367_6,
		_soulY = var_367_7,
		skin = var_367_9,
		facing = var_367_5,
		anim = {
			frame = 1,
			name = "idle",
			t = 0
		},
		imprints = {},
		scale = arg_367_2.scale,
		size = arg_367_2.size
	}, __recovered_scope_0.var_0_252)

	for iter_367_2, iter_367_3 in ipairs({
		"col",
		"_bodyCol"
	}) do
		var_367_10[iter_367_3 .. "X"] = (arg_367_2[iter_367_3 .. "X"] or (arg_367_2.x or 0) - var_367_4 / 2) + var_367_6 - (arg_367_2.x or 0)
		var_367_10[iter_367_3 .. "Y"] = arg_367_2[iter_367_3 .. "Y"] or var_367_7 - 16
		var_367_10[iter_367_3 .. "W"] = arg_367_2[iter_367_3 .. "W"] or var_367_4
		var_367_10[iter_367_3 .. "H"] = arg_367_2[iter_367_3 .. "H"] or 24
	end

	arg_367_2._splitSoul = var_367_10
	arg_367_0.enemies[#arg_367_0.enemies + 1] = var_367_10
	arg_367_1._soulSplitWave, arg_367_1._soulSplitReadyAt = var_367_3, var_367_2 + var_367_0.icd

	return var_367_10
end

function __recovered_scope_0.var_0_250.update(arg_368_0, arg_368_1)
	for iter_368_0 = #(arg_368_0.enemies or {}), 1, -1 do
		local var_368_0 = arg_368_0.enemies[iter_368_0]

		if var_368_0.isSoulSplit then
			var_368_0._soulAge = var_368_0._soulAge + arg_368_1
			var_368_0._soulRemaining = var_368_0._soulRemaining - arg_368_1

			for iter_368_1, iter_368_2 in ipairs({
				"_soulFlash",
				"_soulShake"
			}) do
				local var_368_1 = rawget(var_368_0, iter_368_2)

				if var_368_1 then
					var_368_1.t = var_368_1.t + arg_368_1

					if var_368_1.t >= var_368_1.dur then
						rawset(var_368_0, iter_368_2, nil)
					end
				end
			end

			if not __recovered_scope_0.var_0_250.living(var_368_0) then
				var_368_0._soulActive = false

				if var_368_0._soulBody._splitSoul == var_368_0 then
					var_368_0._soulBody._splitSoul = nil
				end

				table.remove(arg_368_0.enemies, iter_368_0)
			end
		end
	end
end

function __recovered_scope_0.var_0_250.wrapDamage(arg_369_0, arg_369_1)
	return function(arg_370_0, arg_370_1, arg_370_2, arg_370_3, arg_370_4)
		if not arg_370_0 or not arg_370_0.isSoulSplit then
			return arg_369_1(arg_370_0, arg_370_1, arg_370_2, arg_370_3, arg_370_4)
		end

		if not __recovered_scope_0.var_0_250.living(arg_370_0) then
			return 0
		end

		local var_370_0 = {}

		for iter_370_0, iter_370_1 in pairs(arg_370_4 or {}) do
			var_370_0[iter_370_0] = iter_370_1
		end

		var_370_0.noProcs, var_370_0.soulSplitDamage = true, true

		local var_370_1 = arg_369_1(arg_370_0._soulBody, arg_370_1, arg_370_2, nil, var_370_0)

		if (tonumber(var_370_1) or 0) > 0 then
			__recovered_scope_0.var_0_250.struck(arg_370_0)
		end

		return var_370_1
	end
end

 __recovered_scope_0.var_0_253 = __recovered_scope_0.var_0_250
 __recovered_scope_0.var_0_254 = nil
 __recovered_scope_0.var_0_255 = {}
 __recovered_scope_0.var_0_256 = require("src.game.power")

function __recovered_scope_0.var_0_255.isRosterUnit(arg_371_0)
	return __recovered_scope_0.var_0_109.isRosterUnit(arg_371_0) and not arg_371_0.isUndyingSoul and not arg_371_0.isFlameSpirit and not arg_371_0.isHusk and not arg_371_0.isWildBeast and not arg_371_0.isMirror and not arg_371_0.isWoodenWatchtower and not arg_371_0.isSoulSplit and not arg_371_0.summonOwner and not arg_371_0.cloneOwner and not arg_371_0._itemOwner and not arg_371_0._waveSpawnEnemy and not arg_371_0._tricksterCharm and not arg_371_0._tricksterCharmControlled and arg_371_0.side ~= "enemy"
end

function __recovered_scope_0.var_0_255.bestUnit(arg_372_0)
	local var_372_0
	local var_372_1 = -1

	for iter_372_0, iter_372_1 in ipairs(arg_372_0 and arg_372_0.rosterUnits or {}) do
		if __recovered_scope_0.var_0_255.isRosterUnit(iter_372_1) then
			local var_372_2 = iter_372_1.stats or {}
			local var_372_3 = __recovered_scope_0.var_0_256.powerSimple(var_372_2.hp or 0, var_372_2.atk or 0, var_372_2.aspd or 0)

			if var_372_1 < var_372_3 then
				var_372_0, var_372_1 = iter_372_1, var_372_3
			end
		end
	end

	return var_372_0
end

 __recovered_scope_0.var_0_257 = __recovered_scope_0.var_0_255
 __recovered_scope_0.var_0_258 = nil
 __recovered_scope_0.var_0_259 = {
	MAX_T = 1.1,
	MIN_T = 0.5,
	SPEED = 90,
	STEP = 60,
	WINDOW = 3,
	restoreOf = function(arg_373_0)
		for iter_373_0, iter_373_1 in pairs(arg_373_0 and arg_373_0.imprints or {}) do
			if type(iter_373_1) == "table" and iter_373_1.id == "rewind" then
				local var_373_0 = require("src.data.constants").imprint.definitions.rewind.levels
				local var_373_1 = var_373_0[math.max(1, math.min(#var_373_0, math.floor(tonumber(iter_373_1.level) or 1)))].stats

				return tonumber(var_373_1 and var_373_1.restore) or 0.6
			end
		end
	end
}

 function __recovered_scope_0.var_0_260(arg_374_0, arg_374_1, arg_374_2)
	return arg_374_1 == arg_374_0 or type(arg_374_1) == "table" and arg_374_1.side == "ally" or type(arg_374_2) == "table" and (arg_374_2.selfDamage or arg_374_2.selfHarm) or false
end

function __recovered_scope_0.var_0_259.record(arg_375_0, arg_375_1, arg_375_2, arg_375_3, arg_375_4, arg_375_5)
	arg_375_3 = tonumber(arg_375_3) or 0

	if arg_375_3 <= 0 or not arg_375_1 or arg_375_1.side ~= "ally" or __recovered_scope_0.var_0_260(arg_375_1, arg_375_2, arg_375_5) then
		return
	end

	local var_375_0 = arg_375_1._rewind

	if var_375_0 then
		if var_375_0.state == "window" then
			var_375_0.lost = var_375_0.lost + arg_375_3
		end

		return
	end

	if arg_375_1.isClone or arg_375_1.isShadowMinion or arg_375_1.isUndyingSoul then
		return
	end

	local var_375_1 = __recovered_scope_0.var_0_259.restoreOf(arg_375_1)

	if not var_375_1 then
		return
	end

	local var_375_2 = arg_375_0 and arg_375_0._rewindWave or arg_375_0

	if arg_375_1._rewindWave == var_375_2 then
		return
	end

	arg_375_1._rewindWave = var_375_2

	local var_375_3 = arg_375_0 and arg_375_0.getUnitAssetForAlly and arg_375_0:getUnitAssetForAlly(arg_375_1)
	local var_375_4 = var_375_3 and var_375_3.bounds and var_375_3.bounds.idle and var_375_3.bounds.idle[1]

	arg_375_1._rewind = {
		state = "window",
		t = 0,
		after = 0,
		lost = arg_375_3,
		restore = var_375_1,
		hp = tonumber(arg_375_4) or 0,
		x = arg_375_1.x or 0,
		y = arg_375_1.y or 0,
		facing = (tonumber(arg_375_1.facing) or 1) < 0 and -1 or 1,
		seed = (arg_375_0 and arg_375_0._waveTimeAcc or 0) * 7.13,
		art = var_375_4 and tonumber(var_375_4.w) and {
			x = var_375_4.x,
			y = var_375_4.y,
			w = var_375_4.w,
			h = var_375_4.h
		} or nil
	}
end

function __recovered_scope_0.var_0_259.protected(arg_376_0)
	return type(arg_376_0) == "table" and rawget(arg_376_0, "_rewinding") == true
end

 function __recovered_scope_0.var_0_261(arg_377_0, arg_377_1, arg_377_2)
	local var_377_0 = arg_377_1 - (arg_377_0.x or 0)
	local var_377_1 = arg_377_2 - (arg_377_0.y or 0)

	if var_377_0 == 0 and var_377_1 == 0 then
		return
	end

	arg_377_0.x, arg_377_0.y, arg_377_0._posLerp = arg_377_1, arg_377_2

	for iter_377_0, iter_377_1 in ipairs({
		"colX",
		"_bodyColX"
	}) do
		if arg_377_0[iter_377_1] then
			arg_377_0[iter_377_1] = arg_377_0[iter_377_1] + var_377_0
		end
	end

	for iter_377_2, iter_377_3 in ipairs({
		"colY",
		"_bodyColY"
	}) do
		if arg_377_0[iter_377_3] then
			arg_377_0[iter_377_3] = arg_377_0[iter_377_3] + var_377_1
		end
	end
end

 function __recovered_scope_0.var_0_262(arg_378_0)
	return arg_378_0._dimensionalDuel or arg_378_0._skyborne or arg_378_0._venomMawSwallowed or arg_378_0._shadowStep or arg_378_0.spawnHold
end

function __recovered_scope_0.var_0_259.destination(arg_379_0, arg_379_1, arg_379_2)
	local var_379_0 = (tonumber(arg_379_1.facing) or arg_379_2.facing or 1) < 0 and -1 or 1
	local var_379_1 = arg_379_1.x or arg_379_2.x
	local var_379_2 = arg_379_1.y or arg_379_2.y
	local var_379_3 = arg_379_2.x

	if (var_379_1 - arg_379_2.x) * var_379_0 < __recovered_scope_0.var_0_259.STEP then
		var_379_3 = var_379_1 - var_379_0 * __recovered_scope_0.var_0_259.STEP
	end

	local var_379_4 = arg_379_0 and arg_379_0.area

	if var_379_4 and var_379_4.w then
		var_379_3 = math.max(var_379_4.x + 16, math.min(var_379_4.x + var_379_4.w - 16, var_379_3))
	end

	return var_379_3, var_379_2, var_379_0
end

 __recovered_scope_0.var_0_263 = {
	"shotPending",
	"pendingTarget",
	"_meleeLoop",
	"_forceAnim",
	"_pendingSummonHit",
	"_crossfireAttackMotion"
}

function __recovered_scope_0.var_0_259.start(arg_380_0, arg_380_1, arg_380_2)
	arg_380_2.state, arg_380_2.r = "rewind", 0
	arg_380_2.fromX, arg_380_2.fromY = arg_380_1.x or arg_380_2.x, arg_380_1.y or arg_380_2.y
	arg_380_2.hp0 = tonumber(arg_380_1.hp) or 0

	local var_380_0 = math.max(1, tonumber(arg_380_1.maxhp) or arg_380_2.hp0)

	arg_380_2.final = math.max(arg_380_2.hp0, math.min(arg_380_2.hp, var_380_0, arg_380_2.hp0 + arg_380_2.lost * arg_380_2.restore))
	arg_380_2.stay = __recovered_scope_0.var_0_262(arg_380_1) and true or false

	if arg_380_2.stay then
		arg_380_2.toX, arg_380_2.toY, arg_380_2.face = arg_380_2.fromX, arg_380_2.fromY, arg_380_2.facing
	else
		arg_380_2.toX, arg_380_2.toY, arg_380_2.face = __recovered_scope_0.var_0_259.destination(arg_380_0, arg_380_1, arg_380_2)
	end

	local var_380_1 = math.sqrt((arg_380_2.toX - arg_380_2.fromX)^2 + (arg_380_2.toY - arg_380_2.fromY)^2)

	arg_380_2.dur = math.max(__recovered_scope_0.var_0_259.MIN_T, math.min(__recovered_scope_0.var_0_259.MAX_T, var_380_1 / __recovered_scope_0.var_0_259.SPEED))

	local var_380_2 = arg_380_0 and arg_380_0.getUnitAssetForAlly and arg_380_0:getUnitAssetForAlly(arg_380_1)
	local var_380_3 = var_380_2 and var_380_2.animations and var_380_2.animations.walk

	arg_380_2.walkFrames = var_380_3 and tonumber(var_380_3.frames) or 6
	arg_380_2.walkSpeed = var_380_3 and tonumber(var_380_3.speed) or 0.1

	for iter_380_0, iter_380_1 in ipairs(__recovered_scope_0.var_0_263) do
		if iter_380_1 ~= "shotPending" and iter_380_1 == "_meleeLoop" then
			-- block empty
		end

		arg_380_1[iter_380_1] = nil
	end

	arg_380_1._rewinding = true

	if not arg_380_2.stay then
		require("src.game.unit_abilities").rupturing_descent.liftOff(arg_380_0, arg_380_1)
	end

	arg_380_2.healed = arg_380_2.final - arg_380_2.hp0

	if arg_380_2.healed >= 1 then
		require("src.ui.effects").healing_feedback.apply(arg_380_1, arg_380_2.healed)
		require("src.ui.effects").healing_feedback.healerPlus(arg_380_0, arg_380_1)
	end
end

 function __recovered_scope_0.var_0_264(arg_381_0)
	arg_381_0 = math.max(0, math.min(1, arg_381_0))

	return 1 - (1 - arg_381_0) * (1 - arg_381_0)
end

 function __recovered_scope_0.var_0_265(arg_382_0, arg_382_1)
	arg_382_1.state, arg_382_1.after = "done", 0
	arg_382_0._rewinding = nil

	if not arg_382_1.stay then
		arg_382_0._skyborne = nil

		__recovered_scope_0.var_0_261(arg_382_0, arg_382_1.toX, arg_382_1.toY)
	end

	arg_382_0.hp = arg_382_1.final

	if arg_382_0.anim then
		arg_382_0.anim.name, arg_382_0.anim.frame, arg_382_0.anim.t = "idle", 1, 0
	end
end

function __recovered_scope_0.var_0_259.update(arg_383_0, arg_383_1)
	for iter_383_0, iter_383_1 in ipairs(arg_383_0 and arg_383_0.allies or {}) do
		local var_383_0 = rawget(iter_383_1, "_rewind")

		if var_383_0 and var_383_0.state == "window" then
			if not iter_383_1.alive or iter_383_1.dying or (tonumber(iter_383_1.hp) or 0) <= 0 then
				var_383_0.state, var_383_0.after = "cancelled", 0
			else
				var_383_0.t = var_383_0.t + arg_383_1

				if var_383_0.t >= __recovered_scope_0.var_0_259.WINDOW then
					__recovered_scope_0.var_0_259.start(arg_383_0, iter_383_1, var_383_0)
				end
			end
		elseif var_383_0 and var_383_0.state == "rewind" then
			var_383_0.r = math.min(var_383_0.dur, var_383_0.r + arg_383_1)

			local var_383_1 = __recovered_scope_0.var_0_264(var_383_0.r / var_383_0.dur)

			if not var_383_0.stay then
				__recovered_scope_0.var_0_261(iter_383_1, var_383_0.fromX + (var_383_0.toX - var_383_0.fromX) * var_383_1, var_383_0.fromY + (var_383_0.toY - var_383_0.fromY) * var_383_1)

				iter_383_1.facing = var_383_0.face

				if iter_383_1.anim then
					local var_383_2 = math.max(1, var_383_0.walkFrames)

					iter_383_1.anim.name, iter_383_1.anim.t = "walk", 0
					iter_383_1.anim.frame = var_383_2 - math.floor(var_383_0.r / math.max(0.04, var_383_0.walkSpeed)) % var_383_2
				end
			end

			iter_383_1.hp = var_383_0.hp0 + (var_383_0.final - var_383_0.hp0) * var_383_1

			if var_383_0.r >= var_383_0.dur then
				__recovered_scope_0.var_0_265(iter_383_1, var_383_0)
			end
		elseif var_383_0 and var_383_0.state ~= "spent" then
			var_383_0.after = (var_383_0.after or 0) + arg_383_1

			if var_383_0.after > 1.2 then
				var_383_0.state = "spent"
			end
		end
	end
end

 __recovered_scope_0.var_0_266 = __recovered_scope_0.var_0_259

return {
	meteor = __recovered_scope_0.var_0_248,
	rewind = __recovered_scope_0.var_0_266,
	battle_results = __recovered_scope_0.var_0_257,
	soul_split = __recovered_scope_0.var_0_253,
	earthquake = __recovered_scope_0.var_0_245,
	execute = __recovered_scope_0.var_0_242,
	enlarge = __recovered_scope_0.var_0_239,
	slow_effects = __recovered_scope_0.var_0_231,
	chill = __recovered_scope_0.var_0_234,
	fear = __recovered_scope_0.var_0_237,
	self_destruct = __recovered_scope_0.var_0_225,
	lifesteal = __recovered_scope_0.var_0_223,
	status_effects = __recovered_scope_0.var_0_215,
	dreambound_flesh = __recovered_scope_0.var_0_213,
	enemy_entry = __recovered_scope_0.var_0_209,
	anchored_stance = __recovered_scope_0.var_0_120,
	ranged_footing = __recovered_scope_0.var_0_123,
	chain_casting = __recovered_scope_0.var_0_128,
	opportunity_strikes = __recovered_scope_0.var_0_131,
	combat_experience = __recovered_scope_0.var_0_117,
	bounty = __recovered_scope_0.var_0_112,
	heavyweight = __recovered_scope_0.var_0_109,
	predatory_instinct = __recovered_scope_0.var_0_134,
	rapid_fire_manual = __recovered_scope_0.var_0_196,
	retaliation_sigil = __recovered_scope_0.var_0_207,
	antidote_fruit = __recovered_scope_0.var_0_191,
	spitecap = __recovered_scope_0.var_0_185,
	pursuit_wedge = __recovered_scope_0.var_0_179,
	guardian_golem = __recovered_scope_0.var_0_174,
	hunting_mask = __recovered_scope_0.var_0_176,
	decoy_dummy = __recovered_scope_0.var_0_163,
	cursed_mushroom = __recovered_scope_0.var_0_168,
	branching_bloom = __recovered_scope_0.var_0_171,
	escape_cloak = __recovered_scope_0.var_0_159,
	rockfall = __recovered_scope_0.var_0_156,
	necklace_of_unity = __recovered_scope_0.var_0_153,
	wooden_watchtower = __recovered_scope_0.var_0_93,
	crown_of_blades = __recovered_scope_0.var_0_97,
	crossfire_flare = __recovered_scope_0.var_0_102,
	oath_helm = __recovered_scope_0.var_0_149,
	tense_string = __recovered_scope_0.var_0_88,
	command_banner = __recovered_scope_0.var_0_106,
	scatter_scope = __recovered_scope_0.var_0_136,
	vanguard_drum = __recovered_scope_0.var_0_140,
	ankle_trap = __recovered_scope_0.var_0_143,
	gate_net = __recovered_scope_0.var_0_146,
	frontline_armor = __recovered_scope_0.var_0_86,
	shield_break = __recovered_scope_0.var_0_75,
	broken_shield = __recovered_scope_0.var_0_80,
	solitary_oath = __recovered_scope_0.var_0_69,
	sturdy_shield = __recovered_scope_0.var_0_72,
	crystal_barrier = __recovered_scope_0.var_0_65,
	separation = __recovered_scope_0.var_0_15,
	stage6_rift = __recovered_scope_0.var_0_39,
	backline_thrust = __recovered_scope_0.var_0_220,
	placement_area = __recovered_scope_0.var_0_43,
	faction = __recovered_scope_0.var_0_59,
	start_guard = __recovered_scope_0.var_0_62
}
