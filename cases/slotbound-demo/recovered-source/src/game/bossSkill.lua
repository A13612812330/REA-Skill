local var_0_0 = {}
local var_0_1 = require("src.game.power")
local var_0_2 = 3
local var_0_3 = 6
local var_0_4 = 0.6
local var_0_5 = 130
local var_0_6 = 0.8
local var_0_7 = 28
local var_0_8 = 27
local var_0_9 = 20
local var_0_10 = 2
local var_0_11 = 14
local var_0_12 = 4
local var_0_13 = 42
local var_0_14 = 0.4
local var_0_15 = 1
local var_0_16 = 0.2
local var_0_17 = 3
local var_0_18 = 24
local var_0_19 = 7
local var_0_20 = 11
local var_0_21 = 2
local var_0_22 = 0.6
local var_0_23 = 2
local var_0_24 = 0.8
local var_0_25 = 0.5
local var_0_26 = 55
local var_0_27 = 2
local var_0_28 = 1
local var_0_29 = 0.24
local var_0_30 = 0.1
local var_0_31 = 0.28
local var_0_32 = 0.35
local var_0_33 = 0.55
local var_0_34 = 0.95
local var_0_35 = 34
local var_0_36 = 72
local var_0_37 = 260
local var_0_38 = 0.07
local var_0_39 = 10
local var_0_40 = {
	{
		0.7254901960784313,
		0.7450980392156863,
		0.7686274509803922,
		0.58
	},
	{
		0.8666666666666667,
		0.8784313725490196,
		0.8901960784313725,
		0.76
	},
	{
		0.9725490196078431,
		0.9764705882352941,
		0.9803921568627451,
		0.94
	}
}
local var_0_41 = {
	{
		{
			-4,
			-1,
			8,
			1,
			1
		},
		{
			-3,
			-3,
			6,
			2,
			2
		},
		{
			-1,
			-4,
			3,
			2,
			3
		}
	},
	{
		{
			-8,
			-1,
			16,
			1,
			1
		},
		{
			-7,
			-4,
			6,
			3,
			2
		},
		{
			1,
			-5,
			7,
			4,
			2
		},
		{
			-5,
			-6,
			4,
			3,
			3
		},
		{
			3,
			-7,
			4,
			3,
			3
		},
		{
			-1,
			-4,
			4,
			3,
			3
		}
	},
	{
		{
			-12,
			-1,
			9,
			1,
			1
		},
		{
			-1,
			-1,
			4,
			1,
			1
		},
		{
			5,
			-1,
			8,
			1,
			1
		},
		{
			-11,
			-5,
			7,
			4,
			2
		},
		{
			5,
			-6,
			7,
			5,
			2
		},
		{
			-9,
			-8,
			4,
			4,
			3
		},
		{
			8,
			-9,
			4,
			4,
			3
		},
		{
			-5,
			-6,
			5,
			4,
			3
		},
		{
			1,
			-7,
			5,
			5,
			2
		},
		{
			-14,
			-4,
			3,
			2,
			1
		}
	},
	{
		{
			-15,
			-1,
			7,
			1,
			1
		},
		{
			-5,
			-1,
			4,
			1,
			1
		},
		{
			4,
			-1,
			5,
			1,
			1
		},
		{
			12,
			-1,
			4,
			1,
			1
		},
		{
			-15,
			-5,
			7,
			4,
			1
		},
		{
			9,
			-6,
			7,
			5,
			1
		},
		{
			-12,
			-8,
			6,
			5,
			2
		},
		{
			11,
			-10,
			6,
			5,
			2
		},
		{
			-8,
			-10,
			5,
			5,
			3
		},
		{
			5,
			-9,
			6,
			5,
			3
		},
		{
			-17,
			-7,
			3,
			3,
			2
		},
		{
			17,
			-6,
			2,
			2,
			2
		}
	},
	{
		{
			-14,
			-1,
			5,
			1,
			1
		},
		{
			-4,
			-1,
			3,
			1,
			1
		},
		{
			6,
			-1,
			5,
			1,
			1
		},
		{
			-16,
			-5,
			6,
			4,
			1
		},
		{
			10,
			-5,
			6,
			4,
			1
		},
		{
			-12,
			-8,
			5,
			5,
			2
		},
		{
			12,
			-9,
			5,
			5,
			2
		},
		{
			-8,
			-7,
			4,
			4,
			3
		},
		{
			6,
			-8,
			5,
			4,
			3
		},
		{
			-18,
			-4,
			2,
			2,
			2
		}
	},
	{
		{
			-12,
			-1,
			4,
			1,
			1
		},
		{
			-2,
			-1,
			3,
			1,
			1
		},
		{
			8,
			-1,
			4,
			1,
			1
		},
		{
			-14,
			-5,
			5,
			4,
			1
		},
		{
			11,
			-5,
			5,
			4,
			1
		},
		{
			-9,
			-7,
			4,
			4,
			2
		},
		{
			8,
			-8,
			4,
			4,
			2
		},
		{
			-5,
			-5,
			3,
			3,
			2
		}
	}
}

local function var_0_42(arg_1_0, arg_1_1)
	local var_1_0 = math.max(1, tonumber(arg_1_0 and arg_1_0.frameW or 32) or 32)
	local var_1_1 = math.max(1, tonumber(arg_1_0 and arg_1_0.frameH or 32) or 32)

	if arg_1_0 and arg_1_0.imageData then
		local var_1_2 = arg_1_0.imageData
		local var_1_3 = var_1_2:getWidth()
		local var_1_4 = var_1_2:getHeight()
		local var_1_5 = 0
		local var_1_6 = 0

		if arg_1_0.quads then
			local var_1_7 = arg_1_0.quads.idle or arg_1_0.quads.std or arg_1_0.quads.move

			if not var_1_7 then
				for iter_1_0, iter_1_1 in pairs(arg_1_0.quads) do
					if type(iter_1_1) == "table" and #iter_1_1 > 0 then
						var_1_7 = iter_1_1

						break
					end
				end
			end

			if var_1_7 and var_1_7[1] then
				var_1_5, var_1_6 = var_1_7[1]:getViewport()
			end
		end

		if var_1_5 >= 0 and var_1_6 >= 0 and var_1_3 >= var_1_5 + var_1_0 and var_1_4 >= var_1_6 + var_1_1 then
			local var_1_8 = -1

			for iter_1_2 = var_1_1 - 1, 0, -1 do
				for iter_1_3 = 0, var_1_0 - 1 do
					local var_1_9, var_1_10, var_1_11, var_1_12 = var_1_2:getPixel(var_1_5 + iter_1_3, var_1_6 + iter_1_2)

					if var_1_12 and var_1_12 > 0.05 then
						var_1_8 = iter_1_2

						break
					end
				end

				if var_1_8 >= 0 then
					break
				end
			end

			if var_1_8 >= 0 then
				local var_1_13 = math.max(0, var_1_8 - math.max(3, math.floor(var_1_1 * 0.25)))
				local var_1_14 = var_1_0
				local var_1_15 = -1

				for iter_1_4 = var_1_8, var_1_13, -1 do
					for iter_1_5 = 0, var_1_0 - 1 do
						local var_1_16, var_1_17, var_1_18, var_1_19 = var_1_2:getPixel(var_1_5 + iter_1_5, var_1_6 + iter_1_4)

						if var_1_19 and var_1_19 > 0.05 then
							if iter_1_5 < var_1_14 then
								var_1_14 = iter_1_5
							end

							if var_1_15 < iter_1_5 then
								var_1_15 = iter_1_5
							end
						end
					end
				end

				if var_1_14 <= var_1_15 then
					local var_1_20 = var_1_15 - var_1_14 + 1
					local var_1_21 = (var_1_14 + var_1_15) / 2 - var_1_0 / 2

					return var_1_20, var_1_21, var_1_0, var_1_1
				end
			end
		end
	end

	if arg_1_0 and arg_1_0.bounds then
		local var_1_22 = arg_1_0.bounds.idle and arg_1_0.bounds.idle[1]

		if not var_1_22 then
			for iter_1_6, iter_1_7 in pairs(arg_1_0.bounds) do
				if type(iter_1_7) == "table" and iter_1_7[1] then
					var_1_22 = iter_1_7[1]

					break
				end
			end
		end

		if var_1_22 then
			local var_1_23 = math.max(4, var_1_22.w or 16)
			local var_1_24 = var_1_22.x + var_1_23 / 2 - var_1_0 / 2

			return var_1_23, var_1_24, var_1_0, var_1_1
		end
	end

	return math.floor(var_1_0 * 0.5), 0, var_1_0, var_1_1
end

local var_0_43 = 4
local var_0_44 = 8
local var_0_45 = 1.08
local var_0_46 = 0.14
local var_0_47 = 140
local var_0_48 = 7
local var_0_49 = 300
local var_0_50 = 3.8
local var_0_51 = 40
local var_0_52 = 2
local var_0_53 = 35
local var_0_54 = 33
local var_0_55 = 32
local var_0_56 = 32.5
local var_0_57 = 24
local var_0_58 = {
	0.4627450980392157,
	0.3176470588235294,
	0.5137254901960784,
	1
}
local var_0_59 = {
	0.3176470588235294,
	0.20392156862745098,
	0.3568627450980392,
	1
}
local var_0_60 = 10
local var_0_61 = 10
local var_0_62 = 3
local var_0_63 = 1
local var_0_64 = 1.2
local var_0_65 = 0.2
local var_0_66 = 3
local var_0_67 = 55
local var_0_68 = 2
local var_0_69 = 180
local var_0_70 = 0.3
local var_0_71 = 0.6
local var_0_72 = 5
local var_0_73 = 280
local var_0_74 = 0.35
local var_0_75 = 5
local var_0_76 = 12
local var_0_77 = 1
local var_0_78 = 3
local var_0_79 = 1.22

local function var_0_80(arg_2_0)
	return arg_2_0 and arg_2_0.alive and not arg_2_0.dying and (arg_2_0.hp or 0) > 0 and not arg_2_0.isUndyingSoul and not arg_2_0._venomMawSwallowed
end

local function var_0_81(arg_3_0, arg_3_1, arg_3_2)
	if not arg_3_0 or not arg_3_0.anim then
		return
	end

	if arg_3_0.anim.name ~= arg_3_1 then
		arg_3_0.anim.name = arg_3_1
		arg_3_0.anim.t = 0
		arg_3_0.anim.frame = 1
	end

	arg_3_0.anim.frame = arg_3_2 or arg_3_0.anim.frame or 1
	arg_3_0.anim.t = 0
end

local function var_0_82(arg_4_0, arg_4_1)
	if arg_4_0 and arg_4_0.anim and arg_4_0.anim.name ~= arg_4_1 then
		arg_4_0.anim.name = arg_4_1
		arg_4_0.anim.frame = 1
		arg_4_0.anim.t = 0
	end
end

local function var_0_83(arg_5_0, arg_5_1)
	if not arg_5_0 or not arg_5_1 then
		return
	end

	local var_5_0 = (arg_5_1.x or 0) - (arg_5_0.x or 0)

	if math.abs(var_5_0) > 0.05 then
		arg_5_0.facing = var_5_0 >= 0 and 1 or -1
	end
end

local function var_0_84(arg_6_0)
	if not arg_6_0 then
		return
	end

	arg_6_0.target = nil
	arg_6_0.pendingTarget = nil
	arg_6_0.shotPending = false
	arg_6_0._casting = false
	arg_6_0._meleeLoop = false
	arg_6_0._pendingOrcHit = nil
	arg_6_0._pendingGoblinHit = nil
	arg_6_0._pendingHowlHit = nil
	arg_6_0._pendingBerserkHit = nil
	arg_6_0._pendingCavalryHit = nil
	arg_6_0._pendingDuelistHit = nil
	arg_6_0._pendingWarriorHit = nil
	arg_6_0._pendingSpearHit = nil
	arg_6_0._pendingBoarHit = nil
	arg_6_0._pendingPantherHit = nil
	arg_6_0._pendingColossusHit = nil
	arg_6_0._pendingGuardThrust = nil
	arg_6_0._pendingHeavyKick = nil
	arg_6_0._pendingBeastKick = nil
	arg_6_0._pendingPrecisionShot = nil
	arg_6_0._pendingHeadshot = nil
	arg_6_0._pendingGaleBow = nil
	arg_6_0._pendingBloodSurge = nil
	arg_6_0._pendingArcaneCore = nil
	arg_6_0._pendingArcaneOrb = nil
	arg_6_0._pendingAssaultGuard = nil
	arg_6_0._pendingAssaultStrike = nil
	arg_6_0._pendingBerserkAxe = nil
	arg_6_0._pendingBindingBolt = nil
	arg_6_0._pendingBladeWave = nil
	arg_6_0._pendingBleedingStrike = nil
	arg_6_0._pendingBloodPrice = nil
	arg_6_0._pendingCavalryAbyss = nil
	arg_6_0._pendingCavalryDH = nil
	arg_6_0._pendingCleaveBurst = nil
	arg_6_0._pendingCrushingSlam = nil
	arg_6_0._pendingDarkOrbCrash = nil
	arg_6_0._pendingDeadlyBullet = nil
	arg_6_0._pendingDownStrike = nil
	arg_6_0._pendingEarthCrush = nil
	arg_6_0._pendingEmperorsRoar = nil
	arg_6_0._pendingGroundSlam = nil
	arg_6_0._pendingGuardblade = nil
	arg_6_0._pendingImpactStrike = nil
	arg_6_0._pendingPiercingBullet = nil
	arg_6_0._pendingPiercingThrust = nil
	arg_6_0._pendingSavageSlash = nil
	arg_6_0._pendingShackleArrow = nil
	arg_6_0._pendingStormBlade = nil
	arg_6_0._pendingTripleShot = nil
	arg_6_0._pendingTwinBolt = nil
end

local function var_0_85(arg_7_0, arg_7_1, arg_7_2)
	arg_7_1 = require("src.game.combat").wooden_watchtower.targets(arg_7_0, arg_7_1)

	local var_7_0
	local var_7_1
	local var_7_2 = require("src.game.unit_abilities").dimensional_duel

	for iter_7_0, iter_7_1 in ipairs(arg_7_1 or {}) do
		if var_0_80(iter_7_1) and iter_7_1 ~= arg_7_2 and not var_7_2.separated(nil, arg_7_0, iter_7_1) then
			local var_7_3 = (iter_7_1.x or 0) - (arg_7_0.x or 0)
			local var_7_4 = (iter_7_1.y or 0) - (arg_7_0.y or 0)
			local var_7_5 = var_7_3 * var_7_3 + var_7_4 * var_7_4

			if not var_7_1 or var_7_5 < var_7_1 then
				var_7_0, var_7_1 = iter_7_1, var_7_5
			end
		end
	end

	return var_7_0
end

local function var_0_86(arg_8_0, arg_8_1, arg_8_2)
	if not arg_8_0 or not arg_8_1 then
		return math.huge
	end

	local var_8_0 = (arg_8_1.x or 0) - (arg_8_0.x or 0)
	local var_8_1 = arg_8_0.y or 0
	local var_8_2 = arg_8_1.y or 0

	if arg_8_2 and arg_8_2.entityGroundPoint then
		local var_8_3, var_8_4 = arg_8_2:entityGroundPoint(arg_8_0)
		local var_8_5, var_8_6 = arg_8_2:entityGroundPoint(arg_8_1)

		var_8_1 = var_8_4 or var_8_1
		var_8_2 = var_8_6 or var_8_2
	end

	local var_8_7 = tonumber(arg_8_2 and arg_8_2.ui and arg_8_2.ui.battle and arg_8_2.ui.battle.rangeEllipseYScale) or 0.5
	local var_8_8 = math.max(0.1, math.min(1, var_8_7))
	local var_8_9 = (var_8_2 - var_8_1) / var_8_8

	return var_8_0 * var_8_0 + var_8_9 * var_8_9
end

local function var_0_87(arg_9_0, arg_9_1, arg_9_2)
	arg_9_1 = require("src.game.combat").wooden_watchtower.targets(arg_9_0, arg_9_1)

	local var_9_0 = var_0_5 * var_0_5
	local var_9_1
	local var_9_2
	local var_9_3 = require("src.game.unit_abilities").dimensional_duel

	for iter_9_0, iter_9_1 in ipairs(arg_9_1 or {}) do
		if var_0_80(iter_9_1) and not var_9_3.separated(arg_9_2, arg_9_0, iter_9_1) then
			local var_9_4 = var_0_86(arg_9_0, iter_9_1, arg_9_2)

			if var_9_4 <= var_9_0 and (not var_9_2 or var_9_2 < var_9_4) then
				var_9_1, var_9_2 = iter_9_1, var_9_4
			end
		end
	end

	return var_9_1
end

local function var_0_88(arg_10_0)
	return math.max(1, tonumber(arg_10_0 and arg_10_0.distance or 55) or 55)
end

local function var_0_89(arg_11_0, arg_11_1, arg_11_2)
	local var_11_0 = var_0_88(arg_11_0)

	return var_0_80(arg_11_1) and var_0_86(arg_11_0, arg_11_1, arg_11_2) <= var_11_0 * var_11_0 and not require("src.game.unit_abilities").dimensional_duel.separated(arg_11_2, arg_11_0, arg_11_1)
end

local function var_0_90(arg_12_0)
	return math.max(0, tonumber(arg_12_0 and (arg_12_0.power or arg_12_0._powerRaw or arg_12_0.fixedPower)) or 0)
end

local function var_0_91(arg_13_0, arg_13_1, arg_13_2)
	arg_13_1 = require("src.game.combat").wooden_watchtower.targets(arg_13_0, arg_13_1)

	local var_13_0 = var_0_88(arg_13_0)
	local var_13_1 = var_13_0 * var_13_0
	local var_13_2 = {}
	local var_13_3
	local var_13_4 = require("src.game.unit_abilities").dimensional_duel

	for iter_13_0, iter_13_1 in ipairs(arg_13_1 or {}) do
		if var_0_80(iter_13_1) and not var_13_4.separated(arg_13_2, arg_13_0, iter_13_1) then
			local var_13_5 = var_0_86(arg_13_0, iter_13_1, arg_13_2)

			if var_13_5 <= var_13_1 then
				local var_13_6 = math.sqrt(var_13_5)

				var_13_2[#var_13_2 + 1] = {
					unit = iter_13_1,
					distance = var_13_6,
					power = var_0_90(iter_13_1)
				}

				if not var_13_3 or var_13_6 < var_13_3 then
					var_13_3 = var_13_6
				end
			end
		end
	end

	if not var_13_3 then
		return nil
	end

	local var_13_7 = var_13_3 + var_0_39
	local var_13_8

	for iter_13_2, iter_13_3 in ipairs(var_13_2) do
		if var_13_7 >= iter_13_3.distance and (not var_13_8 or iter_13_3.power > var_13_8.power or iter_13_3.power == var_13_8.power and iter_13_3.distance < var_13_8.distance) then
			var_13_8 = iter_13_3
		end
	end

	return var_13_8 and var_13_8.unit or nil
end

local function var_0_92(arg_14_0, arg_14_1, arg_14_2)
	local var_14_0 = {}
	local var_14_1 = require("src.game.unit_abilities").dimensional_duel

	for iter_14_0, iter_14_1 in ipairs(arg_14_2 or {}) do
		if var_0_80(iter_14_1) and iter_14_1 ~= arg_14_1 and not var_14_1.separated(nil, arg_14_0, iter_14_1) then
			var_14_0[#var_14_0 + 1] = iter_14_1
		end
	end

	if #var_14_0 == 0 then
		return arg_14_1._venomMawOriginalX or arg_14_1.x or arg_14_0.x or 0, arg_14_1._venomMawOriginalY or arg_14_1.y or arg_14_0.y or 0
	end

	local var_14_2 = var_0_26 * var_0_26
	local var_14_3
	local var_14_4
	local var_14_5

	for iter_14_2, iter_14_3 in ipairs(var_14_0) do
		local var_14_6 = 0

		for iter_14_4, iter_14_5 in ipairs(var_14_0) do
			local var_14_7 = (iter_14_5.x or 0) - (iter_14_3.x or 0)
			local var_14_8 = (iter_14_5.y or 0) - (iter_14_3.y or 0)

			if var_14_2 >= var_14_7 * var_14_7 + var_14_8 * var_14_8 then
				var_14_6 = var_14_6 + 1
			end
		end

		local var_14_9 = (iter_14_3.x or 0) - (arg_14_0.x or 0)
		local var_14_10 = (iter_14_3.y or 0) - (arg_14_0.y or 0)
		local var_14_11 = var_14_9 * var_14_9 + var_14_10 * var_14_10

		if not var_14_3 or var_14_4 < var_14_6 or var_14_6 == var_14_4 and var_14_11 < var_14_5 then
			var_14_3, var_14_4, var_14_5 = iter_14_3, var_14_6, var_14_11
		end
	end

	local var_14_12 = 0
	local var_14_13 = 0
	local var_14_14 = 0

	for iter_14_6, iter_14_7 in ipairs(var_14_0) do
		local var_14_15 = (iter_14_7.x or 0) - (var_14_3.x or 0)
		local var_14_16 = (iter_14_7.y or 0) - (var_14_3.y or 0)

		if var_14_2 >= var_14_15 * var_14_15 + var_14_16 * var_14_16 then
			var_14_12 = var_14_12 + (iter_14_7.x or 0)
			var_14_13 = var_14_13 + (iter_14_7.y or 0)
			var_14_14 = var_14_14 + 1
		end
	end

	if var_14_14 > 0 then
		return var_14_12 / var_14_14, var_14_13 / var_14_14
	end

	return var_14_3.x or 0, var_14_3.y or 0
end

local function var_0_93(arg_15_0, arg_15_1, arg_15_2, arg_15_3, arg_15_4)
	arg_15_0._venomMawImpacts = arg_15_0._venomMawImpacts or {}
	arg_15_0._venomMawImpacts[#arg_15_0._venomMawImpacts + 1] = {
		t = 0,
		kind = arg_15_1,
		x = arg_15_2,
		y = arg_15_3,
		radius = arg_15_4,
		dur = arg_15_1 == "spit" and 0.45 or 0.38
	}
end

local function var_0_94(arg_16_0)
	local var_16_0 = math.max(0, math.min(1, arg_16_0 or 0))

	return var_16_0 * var_16_0 * (3 - 2 * var_16_0)
end

function var_0_0.fixedLandingFlightPosition(arg_17_0, arg_17_1, arg_17_2, arg_17_3, arg_17_4, arg_17_5, arg_17_6)
	local var_17_0 = tonumber(arg_17_0) or 0
	local var_17_1 = tonumber(arg_17_1) or 0
	local var_17_2 = tonumber(arg_17_2) or var_17_0
	local var_17_3 = tonumber(arg_17_3) or var_17_1
	local var_17_4 = math.max(0.01, tonumber(arg_17_5) or var_0_33)
	local var_17_5 = math.max(0, math.min(1, (tonumber(arg_17_4) or 0) / var_17_4))
	local var_17_6 = math.max(0, tonumber(arg_17_6) or var_0_35)

	return var_17_0 + (var_17_2 - var_17_0) * var_17_5, var_17_1 + (var_17_3 - var_17_1) * var_17_5 - math.sin(var_17_5 * math.pi) * var_17_6, var_17_5
end

local function var_0_95(arg_18_0)
	local var_18_0 = (arg_18_0 and arg_18_0.facing or -1) < 0 and -1 or 1

	return (arg_18_0 and arg_18_0.x or 0) + var_18_0 * 9, (arg_18_0 and arg_18_0.y or 0) - 5
end

local function var_0_96(arg_19_0, arg_19_1, arg_19_2)
	if not arg_19_1 then
		return
	end

	local var_19_0 = arg_19_1._venomMawOriginalX or arg_19_1.x
	local var_19_1 = arg_19_1._venomMawOriginalY or arg_19_1.y

	arg_19_1._venomMawSwallowed = nil
	arg_19_1._venomMawSwallowedBy = nil
	arg_19_1._venomMawTransition = nil
	arg_19_1._suppressAttack = nil
	arg_19_1.x = var_19_0
	arg_19_1.y = var_19_1
	arg_19_1._venomMawOriginalX = nil
	arg_19_1._venomMawOriginalY = nil

	if arg_19_1.anim and arg_19_1.alive and not arg_19_1.dying then
		arg_19_1.anim.name = "idle"
		arg_19_1.anim.frame = 1
		arg_19_1.anim.t = 0
	end

	if arg_19_2 then
		arg_19_1.hitFlash = nil
		arg_19_1.hitShake = nil
	end

	if arg_19_0 then
		arg_19_0._venomMawVictim = nil
	end
end

local function var_0_97(arg_20_0)
	if not arg_20_0 then
		return false
	end

	local var_20_0 = tostring(arg_20_0.kind or "")
	local var_20_1 = tostring(arg_20_0.skin or "")

	return var_20_0 == "Venom Maw" or var_20_0 == "맹독아귀" or var_20_0 == "맹독아귀 (Venom Maw)" or var_20_1 == "Venom Maw"
end

local function var_0_98(arg_21_0)
	if not arg_21_0 then
		return false
	end

	local var_21_0 = tostring(arg_21_0.kind or "")
	local var_21_1 = tostring(arg_21_0.skin or "")

	return var_21_0 == "Cave Basilisk" or var_21_0 == "암굴 바실리스크" or var_21_0 == "암굴 바실리스크 (Cave Basilisk)" or var_21_1 == "Cave Basilisk"
end

local function var_0_99(arg_22_0)
	if not arg_22_0 then
		return false
	end

	local var_22_0 = tostring(arg_22_0.kind or "")
	local var_22_1 = tostring(arg_22_0.skin or "")

	return var_22_0 == "Wasteland Piper" or var_22_0 == "황야의 피리꾼" or var_22_0 == "황야의 피리꾼 (Wasteland Piper)" or var_22_1 == "Wasteland Piper" or var_22_1 == "황야의 피리꾼 (Wasteland Piper)"
end

local function var_0_100(arg_23_0)
	local var_23_0 = arg_23_0 and arg_23_0._caveBasiliskPetrified

	if not var_23_0 then
		return nil
	end

	if type(var_23_0) ~= "table" then
		arg_23_0._caveBasiliskPetrified = nil
		arg_23_0._caveBasiliskPetrifyIdleApplied = nil

		return nil
	end

	return var_23_0
end

var_0_0.cancelStoneActions = var_0_84

function var_0_0.holdStonePose(arg_24_0, arg_24_1)
	if not arg_24_1 or not var_0_80(arg_24_0) or not arg_24_0.anim then
		return false
	end

	if not arg_24_1.frozenAnim then
		arg_24_1.frozenAnim = {}

		for iter_24_0, iter_24_1 in pairs(arg_24_0.anim) do
			arg_24_1.frozenAnim[iter_24_0] = iter_24_1
		end

		arg_24_1.frozenFacing = arg_24_0.facing
	end

	for iter_24_2 in pairs(arg_24_0.anim) do
		arg_24_0.anim[iter_24_2] = nil
	end

	for iter_24_3, iter_24_4 in pairs(arg_24_1.frozenAnim) do
		arg_24_0.anim[iter_24_3] = iter_24_4
	end

	arg_24_0.facing = arg_24_1.frozenFacing

	return true
end

function var_0_0.holdCaveBasiliskPose(arg_25_0)
	if arg_25_0 and arg_25_0._oathHelmStone then
		return require("src.game.combat").oath_helm.holdPose(arg_25_0)
	end

	return var_0_0.holdStonePose(arg_25_0, var_0_100(arg_25_0))
end

local function var_0_101(arg_26_0, arg_26_1)
	if not arg_26_0 then
		return false
	end

	local var_26_0 = var_0_100(arg_26_0)

	if not var_26_0 then
		return false
	end

	local var_26_1 = var_26_0.owner

	arg_26_0._caveBasiliskPetrified = nil

	if var_26_1 and var_26_1._caveBasiliskPetrifiedTargets then
		for iter_26_0 = #var_26_1._caveBasiliskPetrifiedTargets, 1, -1 do
			if var_26_1._caveBasiliskPetrifiedTargets[iter_26_0] == arg_26_0 then
				table.remove(var_26_1._caveBasiliskPetrifiedTargets, iter_26_0)
			end
		end

		if #var_26_1._caveBasiliskPetrifiedTargets == 0 then
			var_26_1._caveBasiliskPetrifiedTargets = nil
		end
	end

	arg_26_0._caveBasiliskPetrifyIdleApplied = nil

	if var_26_0.frozenAnim and var_0_80(arg_26_0) and arg_26_0.anim then
		arg_26_0.anim.name, arg_26_0.anim.frame, arg_26_0.anim.t = "idle", 1, 0
		arg_26_0.anim.reverse = nil
		arg_26_0.anim._desynced = true
	end

	if not arg_26_0._casting and (arg_26_0.stunT or 0) <= 0 then
		arg_26_0._suppressAttack = nil
	end

	if arg_26_1 then
		arg_26_0._caveBasiliskPetrifyImmuneT = math.max(arg_26_0._caveBasiliskPetrifyImmuneT or 0, var_0_62)
	end

	return true
end

var_0_0.releaseCaveBasiliskPetrify = var_0_101

local function var_0_102(arg_27_0, arg_27_1)
	return var_0_80(arg_27_0) and not arg_27_0._oathHelmStone and not var_0_100(arg_27_0) and (arg_27_0._caveBasiliskPetrifyImmuneT or 0) <= 0 and (not arg_27_1 or not require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_27_1, arg_27_0))
end

local function var_0_103(arg_28_0, arg_28_1, arg_28_2)
	local var_28_0
	local var_28_1
	local var_28_2 = math.max(0, tonumber(arg_28_2) or var_0_47)^2

	for iter_28_0, iter_28_1 in ipairs(arg_28_1 or {}) do
		if var_0_102(iter_28_1, arg_28_0) then
			local var_28_3 = (iter_28_1.x or 0) - (arg_28_0.x or 0)
			local var_28_4 = (iter_28_1.y or 0) - (arg_28_0.y or 0)
			local var_28_5 = var_28_3 * var_28_3 + var_28_4 * var_28_4

			if var_28_5 <= var_28_2 and (not var_28_1 or var_28_5 < var_28_1) then
				var_28_0, var_28_1 = iter_28_1, var_28_5
			end
		end
	end

	return var_28_0
end

local function var_0_104(arg_29_0, arg_29_1)
	if not var_0_98(arg_29_0) or not var_0_102(arg_29_1, arg_29_0) then
		return false
	end

	var_0_84(arg_29_1)

	arg_29_1._caveBasiliskPetrified = {
		t = 0,
		owner = arg_29_0,
		duration = var_0_60,
		riseDuration = var_0_63,
		ownerHitsAtApply = arg_29_0._caveBasiliskDamageHits or 0,
		hitLimit = var_0_61
	}
	arg_29_0._caveBasiliskPetrifiedTargets = arg_29_0._caveBasiliskPetrifiedTargets or {}

	require("src.game.combat").spitecap.onDebuff(arg_29_1, nil, "_caveBasiliskPetrified")

	arg_29_0._caveBasiliskPetrifiedTargets[#arg_29_0._caveBasiliskPetrifiedTargets + 1] = arg_29_1
	arg_29_1._suppressAttack = true

	var_0_0.holdCaveBasiliskPose(arg_29_1)

	return true
end

local function var_0_105(arg_30_0, arg_30_1)
	local var_30_0 = var_0_51
	local var_30_1 = var_0_51
	local var_30_2 = var_0_56
	local var_30_3 = var_0_57
	local var_30_4 = arg_30_1 and arg_30_1.assets
	local var_30_5 = var_30_4 and var_30_4.units
	local var_30_6 = var_30_5 and (var_30_5[arg_30_0.skin or ""] or var_30_5[arg_30_0.kind or ""] or var_30_5["Cave Basilisk"])
	local var_30_7 = var_30_6 and var_30_6.quads and var_30_6.quads.attack2 and var_30_6.quads.attack2[var_0_48]

	if var_30_6 and var_30_6.imageData and var_30_7 then
		var_30_0 = var_30_6.frameW or var_30_0
		var_30_1 = var_30_6.frameH or var_30_1

		local var_30_8, var_30_9 = var_30_7:getViewport()
		local var_30_10 = 0
		local var_30_11 = 0
		local var_30_12 = 0

		for iter_30_0 = 0, var_30_1 - 1 do
			for iter_30_1 = 0, var_30_0 - 1 do
				local var_30_13, var_30_14, var_30_15, var_30_16 = var_30_6.imageData:getPixel(var_30_8 + iter_30_1, var_30_9 + iter_30_0)

				if var_30_16 and var_30_16 > 0.01 and math.floor((var_30_13 or 0) * 255 + 0.5) == var_0_53 and math.floor((var_30_14 or 0) * 255 + 0.5) == var_0_54 and math.floor((var_30_15 or 0) * 255 + 0.5) == var_0_55 then
					var_30_10 = var_30_10 + iter_30_1
					var_30_11 = var_30_11 + iter_30_0
					var_30_12 = var_30_12 + 1
				end
			end
		end

		if var_30_12 > 0 then
			var_30_2 = var_30_10 / var_30_12 + 0.5
			var_30_3 = var_30_11 / var_30_12 + 0.5
		end
	end

	if ((arg_30_0.facing or -1) < 0 and -1 or 1) < 0 then
		var_30_2 = var_30_0 - var_30_2
	end

	local var_30_17 = var_0_52
	local var_30_18 = (arg_30_0.x or 0) - var_30_0 * var_30_17 * 0.5
	local var_30_19 = (arg_30_0.y or 0) - var_30_1 * var_30_17 * 0.5

	return var_30_18 + var_30_2 * var_30_17, var_30_19 + var_30_3 * var_30_17
end

local function var_0_106(arg_31_0)
	if arg_31_0 and arg_31_0.colX and arg_31_0.colY and arg_31_0.colW and arg_31_0.colH then
		return arg_31_0.colX + arg_31_0.colW * 0.5, arg_31_0.colY + arg_31_0.colH * 0.5
	end

	return arg_31_0 and arg_31_0.x or 0, arg_31_0 and arg_31_0.y or 0
end

local function var_0_107(arg_32_0, arg_32_1, arg_32_2)
	if not arg_32_0 or not arg_32_1 or not arg_32_2 then
		return false
	end

	local var_32_0, var_32_1 = var_0_105(arg_32_0, arg_32_2)
	local var_32_2, var_32_3 = var_0_106(arg_32_1)
	local var_32_4 = var_32_2 - var_32_0
	local var_32_5 = var_32_3 - var_32_1
	local var_32_6 = math.sqrt(var_32_4 * var_32_4 + var_32_5 * var_32_5)
	local var_32_7 = -1
	local var_32_8 = 0

	if var_32_6 > 0.0001 then
		var_32_7, var_32_8 = var_32_4 / var_32_6, var_32_5 / var_32_6
	end

	local var_32_9

	if math.atan2 then
		var_32_9 = math.atan2(var_32_8, var_32_7)
	elseif var_32_7 == 0 then
		var_32_9 = var_32_8 >= 0 and math.pi * 0.5 or -math.pi * 0.5
	else
		var_32_9 = math.atan(var_32_8 / var_32_7)

		if var_32_7 < 0 then
			var_32_9 = var_32_9 + math.pi
		end
	end

	arg_32_2.projectiles = arg_32_2.projectiles or {}
	arg_32_2.projectiles[#arg_32_2.projectiles + 1] = {
		anchoredLaser = true,
		minHitTravel = 0,
		frame = 1,
		animT = 0,
		dmg = 0,
		kind = "arrow",
		noObserverSlow = true,
		caveBasiliskPetrify = true,
		side = "enemy",
		life = 1.2,
		asset = "ObserverLaser",
		alive = true,
		renderAboveOwner = true,
		laserStyle = "beholder",
		owner = arg_32_0,
		targetOnly = arg_32_1,
		x = var_32_0,
		y = var_32_1,
		startX = var_32_0,
		startY = var_32_1,
		vx = var_32_7 * var_0_49,
		vy = var_32_8 * var_0_49,
		dirX = var_32_7,
		dirY = var_32_8,
		rot = var_32_9,
		maxTravel = math.max(20, var_32_6 + 24),
		scale = var_0_52,
		laserThickness = var_0_50,
		laserColor = var_0_58,
		laserOuterColor = var_0_59,
		laserCoreColor = var_0_58,
		hitTargets = {}
	}

	return true
end

local var_0_108

local function var_0_109(arg_33_0)
	return arg_33_0 and ((arg_33_0.stunT or 0) > 0 or (arg_33_0.fearT or 0) > 0 or arg_33_0._kb ~= nil)
end

local function var_0_110(arg_34_0, arg_34_1)
	if not arg_34_1 then
		return false
	end

	arg_34_1._caveBasiliskState = nil
	arg_34_1._bossSkillBusy = nil
	arg_34_1._bossSkillManualAnim = nil

	var_0_84(arg_34_1)

	for iter_34_0, iter_34_1 in ipairs(arg_34_0 and arg_34_0.projectiles or {}) do
		if iter_34_1 and iter_34_1.alive ~= false and iter_34_1.owner == arg_34_1 and iter_34_1.caveBasiliskPetrify then
			iter_34_1.alive = false
		end
	end

	var_0_81(arg_34_1, "idle", 1)

	return true
end

local function var_0_111(arg_35_0, arg_35_1)
	local var_35_0 = var_0_103(arg_35_0, arg_35_1 and arg_35_1.allies, var_0_47)

	if not var_35_0 then
		return false
	end

	var_0_84(arg_35_0)

	local var_35_1 = (var_35_0.x or 0) - (arg_35_0.x or 0)
	local var_35_2 = (var_35_0.y or 0) - (arg_35_0.y or 0)
	local var_35_3 = math.max(0, tonumber(arg_35_0.distance) or 60)
	local var_35_4 = var_35_1 * var_35_1 + var_35_2 * var_35_2 <= var_35_3 * var_35_3

	arg_35_0._caveBasiliskState = {
		t = 0,
		hit = false,
		kind = var_35_4 and "pre_gaze_attack" or "gaze",
		target = var_35_0
	}
	arg_35_0._bossSkillBusy = true
	arg_35_0._bossSkillManualAnim = true

	var_0_83(arg_35_0, var_35_0)
	var_0_81(arg_35_0, var_35_4 and "attack" or "attack2", 1)

	return true
end

local function var_0_112(arg_36_0, arg_36_1, arg_36_2, arg_36_3, arg_36_4, arg_36_5)
	if not var_0_98(arg_36_1) or not arg_36_1.alive or arg_36_1.dying then
		return false
	end

	arg_36_2 = math.max(0, tonumber(arg_36_2) or 0)
	arg_36_1._caveBasiliskSweepIcdT = math.max(0, (arg_36_1._caveBasiliskSweepIcdT or 0) - arg_36_2)
	arg_36_1._caveBasiliskClock = arg_36_1._caveBasiliskClock or 0
	arg_36_1._caveBasiliskNextGaze = arg_36_1._caveBasiliskNextGaze or var_0_43

	local var_36_0 = arg_36_1._caveBasiliskState

	if arg_36_5 then
		arg_36_1._caveBasiliskClock = arg_36_1._caveBasiliskClock + arg_36_2
	end

	if var_36_0 then
		if var_0_109(arg_36_1) then
			var_0_110(arg_36_0, arg_36_1)

			return false
		end

		arg_36_1._bossSkillBusy = true
		arg_36_1._bossSkillManualAnim = true

		var_0_84(arg_36_1)

		local var_36_1 = var_36_0.target

		if var_36_0.kind == "pre_gaze_attack" then
			if not var_0_80(var_36_1) or require("src.game.unit_abilities").dimensional_duel.separated(arg_36_0, arg_36_1, var_36_1) then
				var_36_1 = var_0_103(arg_36_1, arg_36_0 and arg_36_0.allies, var_0_47)
				var_36_0.target = var_36_1

				if not var_36_1 then
					arg_36_1._caveBasiliskState = nil
					arg_36_1._bossSkillBusy = nil
					arg_36_1._bossSkillManualAnim = nil

					var_0_81(arg_36_1, "idle", 1)

					return false
				end

				var_36_0.kind = "gaze"
				var_36_0.t = 0
				var_36_0.fired = false

				var_0_83(arg_36_1, var_36_1)
				var_0_81(arg_36_1, "attack2", 1)

				return true
			end

			var_0_83(arg_36_1, var_36_1)

			if arg_36_5 then
				var_36_0.t = var_36_0.t + arg_36_2

				local var_36_2 = math.min(6, math.max(1, math.floor(var_36_0.t / var_0_71 * 6) + 1))

				var_0_81(arg_36_1, "attack", var_36_2)

				if not var_36_0.hit and var_36_2 >= var_0_72 then
					var_36_0.hit = true

					if type(arg_36_3) == "function" then
						arg_36_3(var_36_1, tonumber(arg_36_1.dmg) or 0, arg_36_1)
					end

					if var_0_80(var_36_1) and var_0_108 then
						arg_36_1._caveBasiliskSweepIcdT = var_0_66

						var_0_108(arg_36_0, arg_36_1, var_36_1, var_0_73, var_0_74)
					end
				end
			end

			if var_36_0.t >= var_0_71 then
				local var_36_3 = var_0_102(var_36_1, arg_36_1) and var_36_1 or var_0_103(arg_36_1, arg_36_0 and arg_36_0.allies, var_0_47)

				if not var_36_3 then
					arg_36_1._caveBasiliskState = nil
					arg_36_1._bossSkillBusy = nil
					arg_36_1._bossSkillManualAnim = nil

					var_0_81(arg_36_1, "idle", 1)

					return false
				end

				var_36_0.kind = "gaze"
				var_36_0.t = 0
				var_36_0.target = var_36_3
				var_36_0.fired = false

				var_0_83(arg_36_1, var_36_3)
				var_0_81(arg_36_1, "attack2", 1)
			end

			return true
		end

		if not var_36_0.fired and not var_0_102(var_36_1, arg_36_1) then
			arg_36_1._caveBasiliskState = nil
			arg_36_1._bossSkillBusy = nil
			arg_36_1._bossSkillManualAnim = nil

			var_0_81(arg_36_1, "idle", 1)

			return false
		end

		if var_36_1 then
			var_0_83(arg_36_1, var_36_1)
		end

		if arg_36_5 then
			var_36_0.t = var_36_0.t + arg_36_2

			local var_36_4 = math.min(9, math.max(1, math.floor(var_36_0.t / var_0_45 * 9) + 1))

			var_0_81(arg_36_1, "attack2", var_36_4)

			if not var_36_0.fired and var_36_4 >= var_0_48 then
				var_36_0.fired = var_0_107(arg_36_1, var_36_1, arg_36_0)
			end
		end

		if var_36_0.fired and var_36_0.t >= var_0_45 + var_0_46 then
			arg_36_1._caveBasiliskState = nil
			arg_36_1._bossSkillBusy = nil
			arg_36_1._bossSkillManualAnim = nil

			var_0_81(arg_36_1, "idle", 1)
		end

		return true
	end

	arg_36_1._bossSkillBusy = nil
	arg_36_1._bossSkillManualAnim = nil

	if arg_36_5 and arg_36_1._caveBasiliskClock >= arg_36_1._caveBasiliskNextGaze and var_0_111(arg_36_1, arg_36_0) then
		arg_36_1._caveBasiliskNextGaze = arg_36_1._caveBasiliskClock + var_0_44

		return true
	end

	return false
end

local function var_0_113(arg_37_0, arg_37_1)
	if not arg_37_0 then
		return
	end

	arg_37_1 = math.max(0, tonumber(arg_37_1) or 0)

	for iter_37_0, iter_37_1 in ipairs({
		arg_37_0.allies or {},
		arg_37_0.enemies or {}
	}) do
		for iter_37_2, iter_37_3 in ipairs(iter_37_1) do
			if (iter_37_3._caveBasiliskPetrifyImmuneT or 0) > 0 then
				iter_37_3._caveBasiliskPetrifyImmuneT = math.max(0, iter_37_3._caveBasiliskPetrifyImmuneT - arg_37_1)

				if iter_37_3._caveBasiliskPetrifyImmuneT <= 0 then
					iter_37_3._caveBasiliskPetrifyImmuneT = nil
				end
			end

			local var_37_0 = var_0_100(iter_37_3)

			if var_37_0 then
				if not var_0_80(iter_37_3) then
					var_0_101(iter_37_3, false)
				else
					var_37_0.t = (var_37_0.t or 0) + arg_37_1
					iter_37_3._suppressAttack = true

					local var_37_1 = var_37_0.owner
					local var_37_2 = (var_37_1 and (var_37_1._caveBasiliskDamageHits or 0) or 0) - (var_37_0.ownerHitsAtApply or 0)

					if var_37_0.t >= (var_37_0.duration or var_0_60) or var_37_2 >= (var_37_0.hitLimit or var_0_61) then
						var_0_101(iter_37_3, true)
					end
				end
			end
		end
	end
end

local function var_0_114(arg_38_0, arg_38_1, arg_38_2, arg_38_3)
	if not var_0_80(arg_38_1) then
		return
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_38_0, arg_38_1) then
		return
	end

	local var_38_0 = (arg_38_1.x or 0) - (arg_38_0.x or 0)
	local var_38_1 = (arg_38_1.y or 0) - (arg_38_0.y or 0)
	local var_38_2 = math.sqrt(var_38_0 * var_38_0 + var_38_1 * var_38_1)
	local var_38_3
	local var_38_4

	if var_38_2 > 0.001 then
		var_38_3, var_38_4 = var_38_0 / var_38_2, var_38_1 / var_38_2
	else
		var_38_3, var_38_4 = (arg_38_0.facing or -1) < 0 and -1 or 1, 0
	end

	arg_38_1._kb = arg_38_1._kb or {}
	arg_38_2 = math.max(0, tonumber(arg_38_2) or var_0_69)
	arg_38_3 = math.max(0.01, tonumber(arg_38_3) or var_0_70)
	arg_38_1._kb.vx = (arg_38_1._kb.vx or 0) + var_38_3 * arg_38_2
	arg_38_1._kb.vy = (arg_38_1._kb.vy or 0) + var_38_4 * arg_38_2 * 0.35
	arg_38_1._kb.t = 0
	arg_38_1._kb.dur = arg_38_3

	if _G.Render2 and _G.Render2.addKnockbackEffect then
		_G.Render2.addKnockbackEffect(arg_38_1.x or 0, arg_38_1.y or 0)
	end
end

function var_0_108(arg_39_0, arg_39_1, arg_39_2, arg_39_3, arg_39_4)
	if not arg_39_0 or not var_0_80(arg_39_2) then
		return false
	end

	var_0_114(arg_39_1, arg_39_2, arg_39_3, arg_39_4)

	local var_39_0 = {}
	local var_39_1 = var_0_67 * var_0_67
	local var_39_2 = require("src.game.unit_abilities").dimensional_duel

	for iter_39_0, iter_39_1 in ipairs(arg_39_0.allies or {}) do
		if iter_39_1 ~= arg_39_2 and var_0_80(iter_39_1) and not var_39_2.separated(arg_39_0, arg_39_1, iter_39_1) then
			local var_39_3 = (iter_39_1.x or 0) - (arg_39_2.x or 0)
			local var_39_4 = (iter_39_1.y or 0) - (arg_39_2.y or 0)
			local var_39_5 = var_39_3 * var_39_3 + var_39_4 * var_39_4

			if var_39_5 <= var_39_1 then
				var_39_0[#var_39_0 + 1] = {
					unit = iter_39_1,
					d2 = var_39_5
				}
			end
		end
	end

	table.sort(var_39_0, function(arg_40_0, arg_40_1)
		return arg_40_0.d2 < arg_40_1.d2
	end)

	for iter_39_2 = 1, math.min(var_0_68, #var_39_0) do
		var_0_114(arg_39_1, var_39_0[iter_39_2].unit, arg_39_3, arg_39_4)
	end

	return true
end

local function var_0_115(arg_41_0, arg_41_1, arg_41_2)
	if not var_0_98(arg_41_1) or not arg_41_0 or not arg_41_2 then
		return false
	end

	if (arg_41_1._caveBasiliskSweepIcdT or 0) > 0 then
		return false
	end

	if (love and love.math and love.math.random or math.random)() >= var_0_65 then
		return false
	end

	arg_41_1._caveBasiliskSweepIcdT = var_0_66

	return var_0_108(arg_41_0, arg_41_1, arg_41_2, var_0_69, var_0_70)
end

local function var_0_116(arg_42_0, arg_42_1, arg_42_2)
	local var_42_0 = var_0_100(arg_42_0)

	if var_42_0 and arg_42_1 and arg_42_1 == var_42_0.owner and var_0_98(arg_42_1) then
		return (tonumber(arg_42_2) or 0) * var_0_64
	end

	return tonumber(arg_42_2) or 0
end

local function var_0_117(arg_43_0, arg_43_1, arg_43_2)
	if not var_0_98(arg_43_0) or not ((tonumber(arg_43_2) or 0) > 0) then
		return false
	end

	arg_43_0._caveBasiliskDamageHits = (arg_43_0._caveBasiliskDamageHits or 0) + 1

	local var_43_0 = arg_43_0._caveBasiliskPetrifiedTargets

	for iter_43_0 = var_43_0 and #var_43_0 or 0, 1, -1 do
		local var_43_1 = var_43_0[iter_43_0]
		local var_43_2 = var_0_100(var_43_1)
		local var_43_3 = var_43_2 and arg_43_0._caveBasiliskDamageHits - (var_43_2.ownerHitsAtApply or 0) or 0

		if var_43_2 and var_43_2.owner == arg_43_0 and var_43_3 >= (var_43_2.hitLimit or var_0_61) then
			var_0_101(var_43_1, true)
		elseif not var_43_2 or var_43_2.owner ~= arg_43_0 then
			table.remove(var_43_0, iter_43_0)
		end
	end

	if var_43_0 and #var_43_0 == 0 then
		arg_43_0._caveBasiliskPetrifiedTargets = nil
	end

	return true
end

local function var_0_118(arg_44_0, arg_44_1, arg_44_2)
	if not var_0_98(arg_44_0) or not arg_44_1 or not arg_44_1.caveBasiliskPetrify then
		return false
	end

	return var_0_104(arg_44_0, arg_44_2)
end

local function var_0_119(arg_45_0)
	if not arg_45_0 then
		return
	end

	local var_45_0 = arg_45_0._caveBasiliskPetrifiedTargets

	for iter_45_0 = var_45_0 and #var_45_0 or 0, 1, -1 do
		var_0_101(var_45_0[iter_45_0], false)
	end

	arg_45_0._caveBasiliskState = nil
	arg_45_0._bossSkillBusy = nil
	arg_45_0._bossSkillManualAnim = nil
end

local function var_0_120(arg_46_0)
	if not arg_46_0 then
		return
	end

	local var_46_0 = arg_46_0._venomMawVictim

	if var_46_0 then
		var_0_96(arg_46_0, var_46_0, true)
	end

	arg_46_0._venomMawState = nil
	arg_46_0._venomMawBusy = nil
	arg_46_0._venomMawManualAnim = nil
end

local function var_0_121(arg_47_0, arg_47_1)
	local var_47_0 = math.max(0, tonumber(arg_47_1) or 0)

	if not arg_47_0 or not arg_47_0.alive or not not arg_47_0.dying then
		return var_47_0
	end

	local var_47_1 = arg_47_0._venomMawState
	local var_47_2 = var_47_1 and (var_47_1.kind == "swallowing" or var_47_1.kind == "chewing")
	local var_47_3 = arg_47_0._venomMawVictim

	if var_47_2 and var_47_3 and var_47_3._venomMawSwallowedBy == arg_47_0 then
		return var_47_0 * (1 - var_0_32)
	end

	return var_47_0
end

local function var_0_122(arg_48_0, arg_48_1)
	local var_48_0 = var_0_87(arg_48_0, arg_48_1.allies, arg_48_1)

	if not var_48_0 then
		return false
	end

	arg_48_0._venomMawState = {
		kind = "vomit_aim",
		t = 0,
		target = var_48_0
	}
	arg_48_0._venomMawBusy = true
	arg_48_0._venomMawManualAnim = true
	arg_48_0.shotPending = false
	arg_48_0.pendingTarget = nil
	arg_48_0._meleeLoop = false

	var_0_83(arg_48_0, var_48_0)
	var_0_81(arg_48_0, "attack2", 1)

	return true
end

local function var_0_123(arg_49_0, arg_49_1)
	local var_49_0 = var_0_91(arg_49_0, arg_49_1.allies, arg_49_1) or var_0_85(arg_49_0, arg_49_1.allies)

	if not var_49_0 then
		return false
	end

	local var_49_1 = var_0_89(arg_49_0, var_49_0, arg_49_1)

	arg_49_0._venomMawState = {
		t = 0,
		kind = var_49_1 and "throw_aim" or "throw_approach",
		target = var_49_0
	}
	arg_49_0._venomMawBusy = true
	arg_49_0._venomMawManualAnim = var_49_1 and true or nil
	arg_49_0.shotPending = false
	arg_49_0.pendingTarget = nil
	arg_49_0._meleeLoop = false

	var_0_83(arg_49_0, var_49_0)

	if var_49_1 then
		var_0_81(arg_49_0, "attack3", 1)
	elseif arg_49_0.anim and arg_49_0.anim.name ~= "walk" then
		arg_49_0.anim.name = "walk"
		arg_49_0.anim.frame = 1
		arg_49_0.anim.t = 0
	end

	return true
end

local function var_0_124(arg_50_0, arg_50_1, arg_50_2)
	local var_50_0 = arg_50_2.target
	local var_50_1 = var_50_0 and var_50_0.x or arg_50_2.targetX or arg_50_0.x or 0
	local var_50_2 = var_50_0 and var_50_0.y or arg_50_2.targetY or arg_50_0.y or 0

	if var_50_0 and arg_50_1 and arg_50_1.entityGroundPoint then
		var_50_1, var_50_2 = arg_50_1:entityGroundPoint(var_50_0)
	end

	local var_50_3 = (arg_50_0.facing or -1) < 0 and -1 or 1
	local var_50_4 = (var_0_7 - var_0_9) * var_0_10
	local var_50_5 = (var_0_8 - var_0_9) * var_0_10
	local var_50_6 = (arg_50_0.x or 0) + var_50_3 * var_50_4
	local var_50_7 = (arg_50_0.y or 0) + var_50_5
	local var_50_8 = var_50_1 - var_50_6
	local var_50_9 = var_50_2 - var_50_7
	local var_50_10 = math.sqrt(var_50_8 * var_50_8 + var_50_9 * var_50_9)

	arg_50_1._venomMawGlobs = arg_50_1._venomMawGlobs or {}
	arg_50_1._venomMawGlobs[#arg_50_1._venomMawGlobs + 1] = {
		t = 0,
		owner = arg_50_0,
		target = var_50_0,
		startX = var_50_6,
		startY = var_50_7,
		targetX = var_50_1,
		targetY = var_50_2,
		x = var_50_6,
		y = var_50_7,
		dur = math.max(0.28, math.min(0.68, var_50_10 / 250)),
		impactDamage = math.max(1, math.floor((arg_50_0.dmg or 0) * var_0_6 + 0.5)),
		poolDamage = math.max(1, math.floor((arg_50_0.dmg or 0) * var_0_16 + 0.5))
	}
end

local function var_0_125(arg_51_0, arg_51_1)
	if not var_0_80(arg_51_1) then
		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_51_0, arg_51_1) then
		return false
	end

	arg_51_1._venomMawOriginalX = arg_51_1.x
	arg_51_1._venomMawOriginalY = arg_51_1.y
	arg_51_1._venomMawSwallowed = true

	require("src.game.combat").spitecap.onDebuff(arg_51_1, nil, "_venomMawSwallowed")

	arg_51_1._venomMawSwallowedBy = arg_51_0
	arg_51_1._suppressAttack = true

	var_0_84(arg_51_1)

	arg_51_1._suppressAttack = true
	arg_51_1._venomMawTransition = {
		kind = "in",
		t = 0,
		dur = var_0_31,
		fromX = arg_51_1.x or 0,
		fromY = arg_51_1.y or 0
	}

	if arg_51_1.anim then
		arg_51_1.anim.name = "idle"
		arg_51_1.anim.frame = 1
		arg_51_1.anim.t = 0
	end

	arg_51_0._venomMawVictim = arg_51_1

	return true
end

local function var_0_126(arg_52_0, arg_52_1, arg_52_2)
	local var_52_0 = arg_52_0._venomMawVictim

	if not var_52_0 then
		return false
	end

	local var_52_1, var_52_2 = var_0_92(arg_52_0, var_52_0, arg_52_1.allies)
	local var_52_3 = var_52_1 - (arg_52_0.x or 0)

	if math.abs(var_52_3) > 0.05 then
		arg_52_0.facing = var_52_3 >= 0 and 1 or -1
	end

	local var_52_4, var_52_5 = var_0_95(arg_52_0)
	local var_52_6 = var_52_1 - var_52_4
	local var_52_7 = var_52_2 - var_52_5
	local var_52_8 = math.sqrt(var_52_6 * var_52_6 + var_52_7 * var_52_7)
	local var_52_9 = math.max(0, math.min(1, var_52_8 / var_0_37))
	local var_52_10 = var_0_33 + (var_0_34 - var_0_33) * var_52_9
	local var_52_11 = var_0_35 + (var_0_36 - var_0_35) * var_52_9

	arg_52_2.kind = "throwing"
	arg_52_2.t = 0
	arg_52_2.nextChewFrameT = nil
	arg_52_2.victim = var_52_0
	arg_52_2.startX = var_52_4
	arg_52_2.startY = var_52_5
	arg_52_2.landingX = var_52_1
	arg_52_2.landingY = var_52_2
	arg_52_2.flightDuration = var_52_10
	arg_52_2.flightArc = var_52_11
	arg_52_2.flightDistance = var_52_8
	var_52_0.x, var_52_0.y = var_52_4, var_52_5
	var_52_0._venomMawTransition = {
		kind = "out",
		t = 0,
		dur = var_52_10
	}

	var_0_81(arg_52_0, "attack3", 5)

	return true
end

local function var_0_127(arg_53_0, arg_53_1, arg_53_2, arg_53_3, arg_53_4, arg_53_5)
	if not arg_53_0 or not arg_53_1 then
		return false
	end

	arg_53_2 = tonumber(arg_53_2) or tonumber(arg_53_1.x) or 0
	arg_53_3 = tonumber(arg_53_3) or tonumber(arg_53_1.y) or 0

	local var_53_0 = arg_53_2
	local var_53_1 = arg_53_3

	if arg_53_0.entityGroundPoint then
		var_53_0, var_53_1 = arg_53_0:entityGroundPoint(arg_53_1)
	end

	local var_53_2

	if arg_53_1.side == "enemy" and arg_53_0.getUnitAssetForEnemy then
		var_53_2 = arg_53_0:getUnitAssetForEnemy(arg_53_1)
	elseif arg_53_0.getUnitAssetForAlly then
		var_53_2 = arg_53_0:getUnitAssetForAlly(arg_53_1)
	end

	local var_53_3 = math.max(1, tonumber(var_53_2 and var_53_2.frameH or 32) or 32)
	local var_53_4 = arg_53_0.ui and arg_53_0.ui.battle and tonumber(arg_53_1.side == "enemy" and arg_53_0.ui.battle.enemySize32 or arg_53_0.ui.battle.allySize32) or nil
	local var_53_5 = var_53_4 and var_53_4 > 0 and var_53_4 / var_53_3 or 2
	local var_53_6, var_53_7 = var_0_42(var_53_2, arg_53_1)
	local var_53_8 = math.max(12, var_53_6 * var_53_5)
	local var_53_9 = var_53_7 * var_53_5
	local var_53_10 = {}
	local var_53_11 = math.max(6, math.min(12, math.floor(var_53_6 / 2.6)))
	local var_53_12 = math.floor(arg_53_2 * 17 + arg_53_3 * 31 + (arg_53_1.rosterIndex or 1) * 101) % 100000 / 100000

	local function var_53_13()
		var_53_12 = (var_53_12 * 9301 + 49297) % 233280

		return var_53_12 / 233280
	end

	for iter_53_0 = 1, var_53_11 do
		local var_53_14 = ((iter_53_0 - 0.5) / var_53_11 - 0.5) * var_53_6 * 0.9
		local var_53_15 = math.abs(var_53_14) / math.max(1, var_53_6 * 0.5)
		local var_53_16 = var_53_14 < 0
		local var_53_17 = var_53_15 * 0.07 + var_53_13() * 0.02
		local var_53_18 = (var_53_16 and -1 or 1) * (15 + (10 + 25 * var_53_15) * var_53_13()) * var_53_5
		local var_53_19 = -(6 + 12 * (1 - var_53_15 * 0.5) * var_53_13()) * var_53_5
		local var_53_20 = math.max(1.8, 2 + 1.2 * var_53_13())
		local var_53_21 = 1.3 + 0.3 * var_53_13()
		local var_53_22 = 0.8 + 0.2 * var_53_13()
		local var_53_23 = 0.48 + 0.14 * var_53_13()
		local var_53_24 = var_53_13() * 6.28

		var_53_10[#var_53_10 + 1] = {
			offsetY = 0,
			offsetX = var_53_14 * var_53_5,
			vx = var_53_18,
			vy = var_53_19,
			baseRadiusSrc = var_53_20,
			rxFactor = var_53_21,
			ryFactor = var_53_22,
			delay = var_53_17,
			lifespan = var_53_23,
			phase = var_53_24
		}
	end

	arg_53_0.vfx = arg_53_0.vfx or {}
	arg_53_0.vfx[#arg_53_0.vfx + 1] = {
		kind = "venom_maw_landing",
		t = 0,
		dur = 0.65,
		sortAgainstUnitY = true,
		bossSkillVfx = "venom_maw",
		x = var_53_0 + var_53_9,
		y = var_53_1,
		depthY = tonumber(arg_53_5) or arg_53_3,
		pixelScale = var_53_5,
		sourceFrameH = var_53_3,
		unitWidthWorld = var_53_8,
		puffs = var_53_10,
		anim = {
			t = 0,
			frame = 1,
			loop = false,
			speed = var_0_38,
			frames = #var_0_41
		},
		facing = arg_53_2 - (tonumber(arg_53_4) or arg_53_2) >= 0 and 1 or -1
	}

	return true
end

function var_0_0.spawnLandingDust(arg_55_0, arg_55_1, arg_55_2)
	if not arg_55_0 or not arg_55_1 then
		return false
	end

	local var_55_0 = tonumber(arg_55_1.y) or 0
	local var_55_1 = arg_55_1.x or 0
	local var_55_2 = arg_55_1.y or 0

	if arg_55_0.entityGroundPoint then
		var_55_1, var_55_2 = arg_55_0:entityGroundPoint(arg_55_1)
	end

	return var_0_127(arg_55_0, arg_55_1, var_55_1, var_55_2, arg_55_2, var_55_0)
end

local function var_0_128(arg_56_0, arg_56_1, arg_56_2, arg_56_3, arg_56_4)
	local var_56_0 = arg_56_2.victim or arg_56_0._venomMawVictim

	if not var_56_0 then
		return
	end

	local var_56_1 = arg_56_2.landingX or var_56_0.x or arg_56_0.x or 0
	local var_56_2 = arg_56_2.landingY or var_56_0.y or arg_56_0.y or 0
	local var_56_3 = {}
	local var_56_4 = require("src.game.unit_abilities").dimensional_duel

	for iter_56_0, iter_56_1 in ipairs(arg_56_1.allies or {}) do
		if var_0_80(iter_56_1) and iter_56_1 ~= var_56_0 and not var_56_4.separated(arg_56_1, arg_56_0, iter_56_1) then
			local var_56_5 = (iter_56_1.x or 0) - var_56_1
			local var_56_6 = (iter_56_1.y or 0) - var_56_2
			local var_56_7 = var_56_5 * var_56_5 + var_56_6 * var_56_6

			if var_56_7 <= var_0_26 * var_0_26 then
				var_56_3[#var_56_3 + 1] = {
					unit = iter_56_1,
					d2 = var_56_7
				}
			end
		end
	end

	table.sort(var_56_3, function(arg_57_0, arg_57_1)
		return arg_57_0.d2 < arg_57_1.d2
	end)
	var_0_96(arg_56_0, var_56_0, false)

	var_56_0.x, var_56_0.y = var_56_1, var_56_2

	if var_0_80(var_56_0) then
		arg_56_3(var_56_0, math.max(1, math.floor((arg_56_0.dmg or 0) * var_0_24 + 0.5)), arg_56_0, {
			skillBig = true
		})

		if var_0_80(var_56_0) then
			var_56_0.stunT = math.max(var_56_0.stunT or 0, require("src.game.awakening").statusDuration(arg_56_1, var_56_0, "stun", var_0_28, arg_56_0))

			require("src.game.combat").spitecap.onDebuff(var_56_0, nil, "stunT")
		end
	end

	local var_56_8 = math.max(1, math.floor((arg_56_0.dmg or 0) * var_0_25 + 0.5))

	for iter_56_2 = 1, math.min(var_0_27, #var_56_3) do
		local var_56_9 = var_56_3[iter_56_2].unit

		if var_0_80(var_56_9) then
			arg_56_3(var_56_9, var_56_8, arg_56_0, {
				area_damage = true,
				skillBig = true
			})
		end
	end

	var_0_127(arg_56_1, var_56_0, var_56_1, var_56_2, arg_56_2.startX)

	arg_56_0._venomMawLastThrown = var_56_0
end

local function var_0_129(arg_58_0)
	return arg_58_0 and arg_58_0.kind == "venom_maw_landing"
end

local function var_0_130(arg_59_0, arg_59_1, arg_59_2, arg_59_3)
	local var_59_0 = math.abs(arg_59_0)
	local var_59_1 = math.abs(arg_59_1)

	if arg_59_2 <= 1 and arg_59_3 <= 1 then
		return var_59_0 + var_59_1 <= 1
	end

	local var_59_2 = arg_59_0 / math.max(1, arg_59_2)
	local var_59_3 = arg_59_1 / math.max(1, arg_59_3)

	if var_59_2 * var_59_2 + var_59_3 * var_59_3 > 1.05 then
		return false
	end

	if var_59_0 == arg_59_2 and var_59_1 == arg_59_3 then
		return false
	end

	return true
end

local function var_0_131(arg_60_0, arg_60_1)
	if not love or not love.graphics or not var_0_129(arg_60_0) then
		return false
	end

	local var_60_0 = math.max(1, tonumber(arg_60_0.sourceFrameH or 32) or 32)
	local var_60_1 = tonumber(arg_60_1) and tonumber(arg_60_1) > 0 and tonumber(arg_60_1) / var_60_0 or math.max(0.5, tonumber(arg_60_0.pixelScale or 2) or 2)
	local var_60_2 = math.max(1, math.floor(var_60_1 * 0.5 + 0.5))
	local var_60_3 = math.floor((arg_60_0.x or 0) + 0.5)
	local var_60_4 = math.floor((arg_60_0.y or 0) + 0.5)
	local var_60_5 = tonumber(arg_60_0.t or 0) or 0
	local var_60_6 = arg_60_0.puffs
	local var_60_7, var_60_8 = love.graphics.getBlendMode()
	local var_60_9, var_60_10, var_60_11, var_60_12 = love.graphics.getColor()

	love.graphics.setBlendMode("alpha")

	local var_60_13 = {
		0.92,
		0.89,
		0.83
	}

	if type(var_60_6) == "table" and #var_60_6 > 0 then
		local var_60_14 = {}
		local var_60_15 = 1000000
		local var_60_16 = -1000000

		for iter_60_0, iter_60_1 in ipairs(var_60_6) do
			local var_60_17 = var_60_5 - (iter_60_1.delay or 0)

			if var_60_17 > 0 and var_60_17 < (iter_60_1.lifespan or 0.55) then
				local var_60_18 = var_60_17 / iter_60_1.lifespan
				local var_60_19 = math.sin(var_60_18 * math.pi)^1.3 * 0.82
				local var_60_20 = 1 - 0.42 * var_60_18
				local var_60_21 = iter_60_1.phase or 0
				local var_60_22 = math.sin(var_60_17 * 14 + var_60_21) * 0.8 * var_60_2
				local var_60_23 = math.cos(var_60_17 * 11 + var_60_21) * 0.6 * var_60_2
				local var_60_24 = var_60_3 + (iter_60_1.offsetX or 0) + (iter_60_1.vx or 0) * var_60_17 * var_60_20 + var_60_22
				local var_60_25 = var_60_4 + (iter_60_1.offsetY or 0) + (iter_60_1.vy or 0) * var_60_17 * var_60_20 + var_60_23
				local var_60_26 = math.floor(var_60_24 / var_60_2 + 0.5)
				local var_60_27 = math.floor(var_60_25 / var_60_2 + 0.5)
				local var_60_28 = var_60_18 < 0.25 and (var_60_18 / 0.25)^0.65 or math.max(0.08, (1 - (var_60_18 - 0.25) / 0.75)^0.8)
				local var_60_29 = 1 + math.sin(var_60_17 * 9 + var_60_21) * 0.12
				local var_60_30 = 1 + math.cos(var_60_17 * 8 + var_60_21) * 0.1
				local var_60_31 = (iter_60_1.baseRadiusSrc or 3) * (var_60_1 / var_60_2) * var_60_28
				local var_60_32 = math.max(1, math.floor(var_60_31 * (iter_60_1.rxFactor or 1.3) * var_60_29 + 0.5))
				local var_60_33 = math.max(1, math.floor(var_60_31 * (iter_60_1.ryFactor or 0.8) * var_60_30 + 0.5))
				local var_60_34 = var_60_27 - var_60_33
				local var_60_35 = var_60_27 + var_60_33

				if var_60_34 < var_60_15 then
					var_60_15 = var_60_34
				end

				if var_60_16 < var_60_35 then
					var_60_16 = var_60_35
				end

				var_60_14[#var_60_14 + 1] = {
					cx = var_60_26,
					cy = var_60_27,
					rx = var_60_32,
					ry = var_60_33,
					alpha = var_60_19
				}
			end
		end

		if #var_60_14 > 0 and var_60_15 <= var_60_16 then
			for iter_60_2 = var_60_15, var_60_16 do
				local var_60_36 = {}
				local var_60_37 = 1000000
				local var_60_38 = -1000000

				for iter_60_3, iter_60_4 in ipairs(var_60_14) do
					local var_60_39 = iter_60_2 - iter_60_4.cy

					if math.abs(var_60_39) <= iter_60_4.ry then
						local var_60_40 = iter_60_4.rx
						local var_60_41 = iter_60_4.ry

						for iter_60_5 = -var_60_40, var_60_40 do
							if var_0_130(iter_60_5, var_60_39, var_60_40, var_60_41) then
								local var_60_42 = iter_60_4.cx + iter_60_5

								if var_60_42 < var_60_37 then
									var_60_37 = var_60_42
								end

								if var_60_38 < var_60_42 then
									var_60_38 = var_60_42
								end

								if (var_60_36[var_60_42] or 0) < iter_60_4.alpha then
									var_60_36[var_60_42] = iter_60_4.alpha
								end
							end
						end
					end
				end

				if var_60_37 <= var_60_38 then
					local var_60_43
					local var_60_44 = 0

					for iter_60_6 = var_60_37, var_60_38 + 1 do
						local var_60_45 = var_60_36[iter_60_6]

						if var_60_45 then
							local var_60_46 = math.floor(var_60_45 * 20 + 0.5) / 20

							if not var_60_43 then
								var_60_43 = iter_60_6
								var_60_44 = var_60_46
							elseif math.abs(var_60_46 - var_60_44) > 0.06 then
								local var_60_47 = iter_60_6 - var_60_43

								love.graphics.setColor(var_60_13[1], var_60_13[2], var_60_13[3], var_60_44)
								love.graphics.rectangle("fill", var_60_43 * var_60_2, iter_60_2 * var_60_2, var_60_47 * var_60_2, var_60_2)

								var_60_43 = iter_60_6
								var_60_44 = var_60_46
							end
						elseif var_60_43 then
							local var_60_48 = iter_60_6 - var_60_43

							love.graphics.setColor(var_60_13[1], var_60_13[2], var_60_13[3], var_60_44)
							love.graphics.rectangle("fill", var_60_43 * var_60_2, iter_60_2 * var_60_2, var_60_48 * var_60_2, var_60_2)

							var_60_43 = nil
						end
					end
				end
			end
		end
	else
		local var_60_49 = math.max(1, math.min(#var_0_41, math.floor(tonumber(arg_60_0.anim and arg_60_0.anim.frame or 1) or 1)))
		local var_60_50 = var_0_41[var_60_49]
		local var_60_51 = (arg_60_0.facing or 1) < 0 and -1 or 1

		for iter_60_7, iter_60_8 in ipairs(var_60_50) do
			local var_60_52 = var_0_40[iter_60_8[5]] or var_0_40[2]
			local var_60_53 = iter_60_8[1]

			if var_60_51 < 0 then
				var_60_53 = -var_60_53 - iter_60_8[3]
			end

			love.graphics.setColor(var_60_52)

			local var_60_54 = var_60_3 + math.floor(var_60_53 * var_60_1 + 0.5)
			local var_60_55 = var_60_4 + math.floor(iter_60_8[2] * var_60_1 + 0.5)
			local var_60_56 = var_60_3 + math.floor((var_60_53 + iter_60_8[3]) * var_60_1 + 0.5)
			local var_60_57 = var_60_4 + math.floor((iter_60_8[2] + iter_60_8[4]) * var_60_1 + 0.5)

			love.graphics.rectangle("fill", var_60_54, var_60_55, math.max(1, var_60_56 - var_60_54), math.max(1, var_60_57 - var_60_55))
		end
	end

	love.graphics.setColor(var_60_9, var_60_10, var_60_11, var_60_12)
	love.graphics.setBlendMode(var_60_7, var_60_8)

	return true
end

local function var_0_132(arg_61_0, arg_61_1, arg_61_2, arg_61_3, arg_61_4, arg_61_5)
	if not var_0_97(arg_61_1) or not arg_61_1.alive or arg_61_1.dying then
		return false
	end

	arg_61_2 = math.max(0, tonumber(arg_61_2) or 0)

	local var_61_0 = arg_61_1._venomMawState

	arg_61_1._venomMawClock = arg_61_1._venomMawClock or 0

	if arg_61_5 or var_61_0 and var_61_0.kind == "chewing" then
		arg_61_1._venomMawClock = arg_61_1._venomMawClock + arg_61_2
	end

	arg_61_1._venomMawNextVomit = arg_61_1._venomMawNextVomit or var_0_2
	arg_61_1._venomMawNextThrow = arg_61_1._venomMawNextThrow or var_0_19
	arg_61_1._venomMawThrowUses = arg_61_1._venomMawThrowUses or 0

	if var_61_0 then
		arg_61_1._venomMawBusy = true
		arg_61_1._venomMawManualAnim = true
		arg_61_1._meleeLoop = false
		arg_61_1.shotPending = false
		arg_61_1.pendingTarget = nil

		if var_61_0.kind == "throw_approach" then
			local var_61_1 = var_0_91(arg_61_1, arg_61_0.allies, arg_61_0) or var_61_0.target

			if not var_0_80(var_61_1) or require("src.game.unit_abilities").dimensional_duel.separated(arg_61_0, arg_61_1, var_61_1) then
				var_61_1 = var_0_85(arg_61_1, arg_61_0.allies)
			end

			var_61_0.target = var_61_1

			if not var_61_1 then
				arg_61_1._venomMawState = nil
				arg_61_1._venomMawBusy = nil
				arg_61_1._venomMawManualAnim = nil

				var_0_81(arg_61_1, "idle", 1)

				return true
			end

			var_0_83(arg_61_1, var_61_1)

			if var_0_89(arg_61_1, var_61_1, arg_61_0) then
				var_61_0.kind = "throw_aim"
				var_61_0.t = 0
				arg_61_1._venomMawManualAnim = true

				var_0_81(arg_61_1, "attack3", 1)

				return true
			end

			arg_61_1._venomMawManualAnim = nil

			if arg_61_5 then
				local var_61_2 = (var_61_1.x or 0) - (arg_61_1.x or 0)
				local var_61_3 = (var_61_1.y or 0) - (arg_61_1.y or 0)
				local var_61_4 = math.sqrt(var_61_2 * var_61_2 + var_61_3 * var_61_3)

				if var_61_4 > 0.001 then
					local var_61_5 = math.max(0, tonumber(arg_61_1.speed or 18) or 18)

					if rawget(_G, "__slotStage4MarshMoveSpeed") then
						var_61_5 = __slotStage4MarshMoveSpeed(arg_61_1, var_61_5)
					end

					local var_61_6 = var_61_5 * require("src.game.combat").slow_effects.movementMultiplier(arg_61_1)
					local var_61_7 = math.min(var_61_4, var_61_6 * math.min(arg_61_2, 0.016666666666666666))

					arg_61_1.x = (arg_61_1.x or 0) + var_61_2 / var_61_4 * var_61_7
					arg_61_1.y = (arg_61_1.y or 0) + var_61_3 / var_61_4 * var_61_7
				end

				if arg_61_1.anim and arg_61_1.anim.name ~= "walk" then
					arg_61_1.anim.name = "walk"
					arg_61_1.anim.frame = 1
					arg_61_1.anim.t = 0
				end
			end

			return true
		end

		if var_61_0.kind == "vomit_aim" then
			if arg_61_5 then
				var_61_0.t = var_61_0.t + arg_61_2
			end

			var_0_83(arg_61_1, var_61_0.target)

			if arg_61_5 then
				var_0_81(arg_61_1, "attack2", math.min(4, math.floor(var_61_0.t / var_0_4 * 4) + 1))
			else
				arg_61_1._venomMawManualAnim = nil
			end

			if var_61_0.t >= var_0_4 then
				var_0_124(arg_61_1, arg_61_0, var_61_0)

				arg_61_1._venomMawState = nil
				arg_61_1._venomMawBusy = nil
				arg_61_1._venomMawManualAnim = nil

				var_0_81(arg_61_1, "idle", 1)
			end

			return true
		end

		if var_61_0.kind == "throw_aim" then
			if not var_0_80(var_61_0.target) or require("src.game.unit_abilities").dimensional_duel.separated(arg_61_0, arg_61_1, var_61_0.target) then
				var_61_0.target = var_0_91(arg_61_1, arg_61_0.allies, arg_61_0) or var_0_85(arg_61_1, arg_61_0.allies)
			end

			if not var_61_0.target then
				arg_61_1._venomMawState = nil
				arg_61_1._venomMawBusy = nil
				arg_61_1._venomMawManualAnim = nil

				var_0_81(arg_61_1, "idle", 1)

				return true
			end

			if not var_0_89(arg_61_1, var_61_0.target, arg_61_0) then
				var_61_0.kind = "throw_approach"
				var_61_0.t = 0
				arg_61_1._venomMawManualAnim = nil

				if arg_61_1.anim then
					arg_61_1.anim.name = "walk"
					arg_61_1.anim.frame = 1
					arg_61_1.anim.t = 0
				end

				return true
			end

			if arg_61_5 then
				var_61_0.t = var_61_0.t + arg_61_2
			end

			var_0_83(arg_61_1, var_61_0.target)

			if arg_61_5 then
				var_0_81(arg_61_1, "attack3", math.min(4, math.floor(var_61_0.t / var_0_22 * 4) + 1))
			else
				arg_61_1._venomMawManualAnim = nil
			end

			if var_61_0.t >= var_0_22 then
				if require("src.game.combat").wooden_watchtower.specialTarget(var_61_0.target, "devour") then
					arg_61_1._venomMawThrowUses = arg_61_1._venomMawThrowUses + 1
					arg_61_1._venomMawNextThrow = arg_61_1._venomMawNextThrow + var_0_20
					arg_61_1._venomMawState, arg_61_1._venomMawBusy, arg_61_1._venomMawManualAnim = nil

					var_0_81(arg_61_1, "idle", 1)
				elseif var_0_125(arg_61_1, var_61_0.target) then
					arg_61_1._venomMawThrowUses = arg_61_1._venomMawThrowUses + 1
					arg_61_1._venomMawNextThrow = arg_61_1._venomMawNextThrow + var_0_20
					var_61_0.kind = "swallowing"
					var_61_0.t = 0

					var_0_81(arg_61_1, "attack3", 4)
				else
					arg_61_1._venomMawState = nil
					arg_61_1._venomMawBusy = nil
					arg_61_1._venomMawManualAnim = nil

					var_0_81(arg_61_1, "idle", 1)
				end
			end

			return true
		end

		if var_61_0.kind == "swallowing" then
			local var_61_8 = arg_61_1._venomMawVictim

			if not var_61_8 or not var_61_8._venomMawSwallowed then
				arg_61_1._venomMawState = nil
				arg_61_1._venomMawBusy = nil
				arg_61_1._venomMawManualAnim = nil

				var_0_81(arg_61_1, "idle", 1)

				return true
			end

			var_61_0.t = var_61_0.t + arg_61_2

			local var_61_9 = var_61_8._venomMawTransition
			local var_61_10 = var_61_9 and var_61_9.dur or var_0_31
			local var_61_11 = math.min(1, var_61_0.t / math.max(0.001, var_61_10))
			local var_61_12 = var_0_94(var_61_11)
			local var_61_13, var_61_14 = var_0_95(arg_61_1)
			local var_61_15 = var_61_9 and var_61_9.fromX or var_61_8.x or var_61_13
			local var_61_16 = var_61_9 and var_61_9.fromY or var_61_8.y or var_61_14

			var_61_8.x = var_61_15 + (var_61_13 - var_61_15) * var_61_12
			var_61_8.y = var_61_16 + (var_61_14 - var_61_16) * var_61_12 - math.sin(var_61_11 * math.pi) * 7

			if var_61_9 then
				var_61_9.t = var_61_0.t
			end

			var_0_81(arg_61_1, "attack3", 4)

			if var_61_11 >= 1 then
				var_61_8.x, var_61_8.y = var_61_13, var_61_14
				var_61_8._venomMawTransition = nil
				var_61_0.kind = "chewing"
				var_61_0.t = 0
				var_61_0.chewFrame = 4
				var_61_0.nextChewFrameT = var_0_30
			end

			return true
		end

		if var_61_0.kind == "chewing" then
			local var_61_17 = arg_61_1._venomMawVictim

			if not var_61_17 or not var_61_17._venomMawSwallowed then
				arg_61_1._venomMawState = nil
				arg_61_1._venomMawBusy = nil
				arg_61_1._venomMawManualAnim = nil

				var_0_81(arg_61_1, "idle", 1)

				return true
			end

			local var_61_18 = var_61_0.t + arg_61_2
			local var_61_19 = false
			local var_61_20 = 0

			while (var_61_0.nextChewFrameT or var_0_30) <= var_61_18 + 1e-07 and var_61_20 < 32 do
				var_61_20 = var_61_20 + 1

				local var_61_21 = var_61_0.nextChewFrameT or var_0_30

				var_61_0.chewFrame = (var_61_0.chewFrame or 4) % 5 + 1
				var_61_0.nextChewFrameT = var_61_21 + var_0_30

				if var_61_21 >= var_0_23 and var_61_0.chewFrame == 5 then
					var_61_19 = var_0_126(arg_61_1, arg_61_0, var_61_0)

					break
				end
			end

			if not var_61_19 and var_61_20 >= 32 and var_61_18 >= (var_61_0.nextChewFrameT or var_0_30) then
				var_61_0.t = var_0_23
				var_61_0.chewFrame = 4
				var_61_0.nextChewFrameT = var_0_23 + var_0_30
			end

			if not var_61_19 then
				var_61_0.t = math.max(var_61_0.t or 0, var_61_18)

				if arg_61_5 then
					var_0_81(arg_61_1, "attack3", var_61_0.chewFrame or 4)
				else
					arg_61_1._venomMawManualAnim = nil
				end
			end

			return true
		end

		if var_61_0.kind == "throwing" then
			local var_61_22 = var_61_0.victim or arg_61_1._venomMawVictim

			if not var_61_22 or not var_61_22._venomMawSwallowed then
				arg_61_1._venomMawState = nil
				arg_61_1._venomMawBusy = nil
				arg_61_1._venomMawManualAnim = nil

				var_0_81(arg_61_1, "idle", 1)

				return true
			end

			var_61_0.t = var_61_0.t + arg_61_2

			local var_61_23 = math.max(0.01, tonumber(var_61_0.flightDuration) or var_0_33)
			local var_61_24 = math.max(0, tonumber(var_61_0.flightArc) or var_0_35)
			local var_61_25, var_61_26, var_61_27 = var_0_0.fixedLandingFlightPosition(var_61_0.startX or var_61_22.x or 0, var_61_0.startY or var_61_22.y or 0, var_61_0.landingX or var_61_22.x or 0, var_61_0.landingY or var_61_22.y or 0, var_61_0.t, var_61_23, var_61_24)

			var_61_22.x, var_61_22.y = var_61_25, var_61_26

			if var_61_22._venomMawTransition then
				var_61_22._venomMawTransition.t = var_61_0.t
			end

			if var_61_0.t < var_0_29 then
				var_0_81(arg_61_1, "attack3", 5)
			else
				var_0_81(arg_61_1, "idle", 1)
			end

			if var_61_27 >= 1 then
				var_0_128(arg_61_1, arg_61_0, var_61_0, arg_61_3, arg_61_4)

				arg_61_1._venomMawState = nil
				arg_61_1._venomMawBusy = nil
				arg_61_1._venomMawManualAnim = nil

				var_0_81(arg_61_1, "idle", 1)
			end

			return true
		end
	end

	if not arg_61_5 then
		arg_61_1._venomMawBusy = nil
		arg_61_1._venomMawManualAnim = nil

		return false
	end

	if arg_61_1._venomMawThrowUses < var_0_21 and arg_61_1._venomMawClock >= arg_61_1._venomMawNextThrow and var_0_123(arg_61_1, arg_61_0) then
		return true
	end

	if arg_61_1._venomMawClock >= arg_61_1._venomMawNextVomit and var_0_122(arg_61_1, arg_61_0) then
		arg_61_1._venomMawNextVomit = arg_61_1._venomMawNextVomit + var_0_3

		return true
	end

	return false
end

local function var_0_133(arg_62_0, arg_62_1)
	local var_62_0 = {}
	local var_62_1 = var_0_13
	local var_62_2 = var_0_13 * (arg_62_0.yScale or var_0_14)
	local var_62_3 = require("src.game.unit_abilities").dimensional_duel

	for iter_62_0, iter_62_1 in ipairs(arg_62_1 and arg_62_1.allies or {}) do
		if var_0_80(iter_62_1) and (not arg_62_0.owner or not var_62_3.separated(arg_62_1, arg_62_0.owner, iter_62_1)) then
			local var_62_4 = iter_62_1.x or 0
			local var_62_5 = iter_62_1.y or 0

			if arg_62_1.entityGroundPoint then
				var_62_4, var_62_5 = arg_62_1:entityGroundPoint(iter_62_1)
			end

			local var_62_6 = (var_62_4 - (arg_62_0.x or 0)) / math.max(0.001, var_62_1)
			local var_62_7 = (var_62_5 - (arg_62_0.y or 0)) / math.max(0.001, var_62_2)
			local var_62_8 = var_62_6 * var_62_6 + var_62_7 * var_62_7

			if var_62_8 <= 1 then
				var_62_0[#var_62_0 + 1] = {
					unit = iter_62_1,
					d2 = var_62_8
				}
			end
		end
	end

	table.sort(var_62_0, function(arg_63_0, arg_63_1)
		return arg_63_0.d2 < arg_63_1.d2
	end)

	return var_62_0
end

local function var_0_134(arg_64_0, arg_64_1, arg_64_2, arg_64_3)
	if not arg_64_0 then
		return
	end

	arg_64_1 = math.max(0, tonumber(arg_64_1) or 0)

	for iter_64_0, iter_64_1 in ipairs(arg_64_0.allies or {}) do
		if (iter_64_1._poisonVisualT or 0) > 0 then
			iter_64_1._poisonVisualT = math.max(0, iter_64_1._poisonVisualT - arg_64_1)
		end
	end

	for iter_64_2, iter_64_3 in ipairs(arg_64_0.allies or {}) do
		if iter_64_3._venomMawSwallowed then
			local var_64_0 = iter_64_3._venomMawSwallowedBy

			if not var_64_0 or not var_64_0.alive or var_64_0.dying then
				var_0_96(var_64_0, iter_64_3, true)
			end
		end
	end

	local var_64_1 = arg_64_0._venomMawGlobs or {}

	for iter_64_4 = #var_64_1, 1, -1 do
		local var_64_2 = var_64_1[iter_64_4]

		var_64_2.t = (var_64_2.t or 0) + arg_64_1

		local var_64_3 = math.min(1, var_64_2.t / math.max(0.001, var_64_2.dur or 0.4))

		var_64_2.x = var_64_2.startX + (var_64_2.targetX - var_64_2.startX) * var_64_3
		var_64_2.y = var_64_2.startY + (var_64_2.targetY - var_64_2.startY) * var_64_3

		if var_64_3 >= 1 then
			local var_64_4 = require("src.game.unit_abilities").dimensional_duel

			if var_0_80(var_64_2.target) and (not var_64_2.owner or not var_64_4.separated(arg_64_0, var_64_2.owner, var_64_2.target)) then
				arg_64_2(var_64_2.target, var_64_2.impactDamage or 1, var_64_2.owner, {
					skillBig = true
				})

				if var_0_80(var_64_2.target) then
					var_64_2.target._poisonVisualT = math.max(var_64_2.target._poisonVisualT or 0, var_0_15 + 0.1)
				end
			end

			arg_64_0._venomMawPools = arg_64_0._venomMawPools or {}
			arg_64_0._venomMawPools[#arg_64_0._venomMawPools + 1] = {
				tickT = 0,
				age = 0,
				due = 0,
				justCreated = true,
				x = var_64_2.targetX,
				y = var_64_2.targetY,
				owner = var_64_2.owner,
				damage = var_64_2.poolDamage or 1,
				yScale = var_0_14
			}

			var_0_93(arg_64_0, "pool", var_64_2.targetX, var_64_2.targetY, var_0_13)
			table.remove(var_64_1, iter_64_4)
		end
	end

	local var_64_5 = arg_64_0._venomMawPools or {}
	local var_64_6 = 0

	for iter_64_5, iter_64_6 in ipairs(var_64_5) do
		local var_64_7 = arg_64_1

		if iter_64_6.justCreated then
			iter_64_6.justCreated = nil
			var_64_7 = 0
		end

		iter_64_6.age = (iter_64_6.age or 0) + var_64_7
		iter_64_6.tickT = (iter_64_6.tickT or 0) + var_64_7
		iter_64_6.due = math.floor(iter_64_6.tickT / var_0_15)

		if iter_64_6.due > 0 then
			iter_64_6.tickT = iter_64_6.tickT - iter_64_6.due * var_0_15

			if var_64_6 < iter_64_6.due then
				var_64_6 = iter_64_6.due
			end
		end
	end

	local var_64_8 = math.min(var_64_6, 8)

	for iter_64_7 = 1, var_64_8 do
		local var_64_9 = {}

		for iter_64_8, iter_64_9 in ipairs(var_64_5) do
			if iter_64_7 <= (iter_64_9.due or 0) and (iter_64_9.age or 0) <= var_0_12 + arg_64_1 then
				local var_64_10 = var_0_133(iter_64_9, arg_64_0)
				local var_64_11 = 0

				for iter_64_10, iter_64_11 in ipairs(var_64_10) do
					local var_64_12 = iter_64_11.unit

					if not var_64_9[var_64_12] then
						var_64_9[var_64_12] = true
						var_64_11 = var_64_11 + 1

						arg_64_2(var_64_12, iter_64_9.damage or 1, iter_64_9.owner, {
							dot = true,
							poison = true
						})

						if var_0_80(var_64_12) then
							var_64_12._poisonVisualT = math.max(var_64_12._poisonVisualT or 0, var_0_15 + 0.1)
							var_64_12.poisonHitFlash = {
								t = 0,
								dur = 0.32
							}

							if _G.Render2 and _G.Render2.addPoisonTickEffect then
								local var_64_13 = var_64_12.x
								local var_64_14 = var_64_12.y

								if arg_64_3 then
									var_64_13, var_64_14 = arg_64_3(var_64_12)
								end

								_G.Render2.addPoisonTickEffect(var_64_13, var_64_14)
							end
						end

						if var_64_11 >= var_0_17 then
							break
						end
					end
				end
			end
		end
	end

	for iter_64_12 = #var_64_5, 1, -1 do
		var_64_5[iter_64_12].due = 0

		if (var_64_5[iter_64_12].age or 0) >= var_0_12 then
			table.remove(var_64_5, iter_64_12)
		end
	end

	local var_64_15 = arg_64_0._venomMawImpacts or {}

	for iter_64_13 = #var_64_15, 1, -1 do
		local var_64_16 = var_64_15[iter_64_13]

		var_64_16.t = (var_64_16.t or 0) + arg_64_1

		if var_64_16.t >= (var_64_16.dur or 0.4) then
			table.remove(var_64_15, iter_64_13)
		end
	end
end

local function var_0_135(arg_65_0)
	if not love or not love.graphics or not arg_65_0 then
		return
	end

	local var_65_0 = arg_65_0._venomMawPools or {}
	local var_65_1 = arg_65_0._venomMawImpacts or {}
	local var_65_2, var_65_3 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha")

	for iter_65_0, iter_65_1 in ipairs(var_65_0) do
		local var_65_4 = iter_65_1.age or 0
		local var_65_5 = math.min(1, var_65_4 / 0.18)
		local var_65_6 = math.min(1, math.max(0, var_0_12 - var_65_4) / 0.45)
		local var_65_7 = math.min(var_65_5, var_65_6)
		local var_65_8 = 0.99 + math.sin(var_65_4 * 3.2) * 0.01
		local var_65_9 = var_0_13 * var_65_8
		local var_65_10 = var_0_13 * (iter_65_1.yScale or var_0_14) * var_65_8
		local var_65_11 = math.floor((iter_65_1.x or 0) + 0.5)
		local var_65_12 = math.floor((iter_65_1.y or 0) + 0.5)
		local var_65_13 = (math.floor(iter_65_1.x or 0) + math.floor(iter_65_1.y or 0)) % 11 * 0.07
		local var_65_14 = {}

		for iter_65_2 = 1, var_0_18 do
			local var_65_15 = (iter_65_2 - 1) / var_0_18 * math.pi * 2
			local var_65_16 = 1.07 + math.sin(var_65_15 * 3 + var_65_13) * 0.035 + math.sin(var_65_15 * 7 - var_65_13 * 1.7) * 0.025

			var_65_14[#var_65_14 + 1] = var_65_11 + math.cos(var_65_15) * var_65_9 * var_65_16
			var_65_14[#var_65_14 + 1] = var_65_12 + math.sin(var_65_15) * var_65_10 * var_65_16
		end

		love.graphics.setColor(0.5254901960784314, 0.796078431372549, 0.27058823529411763, var_65_7)
		love.graphics.polygon("fill", unpack(var_65_14))
		love.graphics.setColor(0.3215686274509804, 0.5098039215686274, 0.24705882352941178, 0.72 * var_65_7)
		love.graphics.ellipse("fill", var_65_11 - var_65_9 * 0.17, var_65_12 + var_65_10 * 0.2, var_65_9 * 0.3, var_65_10 * 0.17)
		love.graphics.setColor(0.7098039215686275, 0.9294117647058824, 0.47058823529411764, 0.86 * var_65_7)
		love.graphics.ellipse("fill", var_65_11 - var_65_9 * 0.2, var_65_12 - var_65_10 * 0.25, var_65_9 * 0.16, var_65_10 * 0.075)
		love.graphics.ellipse("fill", var_65_11 + var_65_9 * 0.13, var_65_12 - var_65_10 * 0.13, var_65_9 * 0.075, var_65_10 * 0.055)
		love.graphics.setColor(0.7098039215686275, 0.9294117647058824, 0.47058823529411764, 0.9 * var_65_7)

		for iter_65_3 = 1, 3 do
			local var_65_17 = var_65_4 * (0.38 + iter_65_3 * 0.05) + iter_65_3 * 1.91 + var_65_13
			local var_65_18 = var_65_11 + math.cos(var_65_17) * var_65_9 * (0.2 + iter_65_3 * 0.13)
			local var_65_19 = var_65_12 + math.sin(var_65_17) * var_65_10 * 0.58
			local var_65_20 = iter_65_3 == 2 and 3 or 2

			love.graphics.rectangle("fill", math.floor(var_65_18), math.floor(var_65_19), var_65_20, var_65_20)
		end
	end

	for iter_65_4, iter_65_5 in ipairs(var_65_1) do
		if iter_65_5.kind == "pool" then
			local var_65_21 = math.min(1, (iter_65_5.t or 0) / math.max(0.001, iter_65_5.dur or 0.38))
			local var_65_22 = (iter_65_5.radius or var_0_13) * (0.25 + var_65_21 * 0.75)

			love.graphics.setColor(0.5254901960784314, 0.796078431372549, 0.27058823529411763, (1 - var_65_21) * 0.72)

			for iter_65_6 = 1, 8 do
				local var_65_23 = iter_65_6 * math.pi * 0.25
				local var_65_24 = var_65_22 * (0.28 + iter_65_6 % 3 * 0.08)
				local var_65_25 = (iter_65_5.x or 0) + math.cos(var_65_23) * var_65_24
				local var_65_26 = (iter_65_5.y or 0) + math.sin(var_65_23) * var_65_24 * var_0_14
				local var_65_27 = iter_65_6 % 2 == 0 and 3 or 2

				love.graphics.rectangle("fill", math.floor(var_65_25), math.floor(var_65_26), var_65_27, var_65_27)
			end
		end
	end

	love.graphics.setBlendMode(var_65_2, var_65_3)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_136(arg_66_0)
	if not love or not love.graphics or not arg_66_0 then
		return
	end

	local var_66_0, var_66_1 = love.graphics.getBlendMode()

	love.graphics.setBlendMode("alpha")

	for iter_66_0, iter_66_1 in ipairs(arg_66_0._venomMawGlobs or {}) do
		local var_66_2 = math.min(1, (iter_66_1.t or 0) / math.max(0.001, iter_66_1.dur or 0.4))

		local function var_66_3(arg_67_0)
			local var_67_0 = math.max(0, math.min(1, arg_67_0))
			local var_67_1 = (iter_66_1.startX or 0) + ((iter_66_1.targetX or 0) - (iter_66_1.startX or 0)) * var_67_0
			local var_67_2 = (iter_66_1.startY or 0) + ((iter_66_1.targetY or 0) - (iter_66_1.startY or 0)) * var_67_0 - math.sin(var_67_0 * math.pi) * var_0_11

			return math.floor(var_67_1 + 0.5), math.floor(var_67_2 + 0.5)
		end

		for iter_66_2 = 3, 1, -1 do
			local var_66_4 = var_66_2 - iter_66_2 * 0.035

			if var_66_4 >= 0 then
				local var_66_5, var_66_6 = var_66_3(var_66_4)
				local var_66_7 = 2 + (3 - iter_66_2)
				local var_66_8 = 0.2 + (3 - iter_66_2) * 0.16

				love.graphics.setColor(0.5254901960784314, 0.796078431372549, 0.27058823529411763, var_66_8)
				love.graphics.rectangle("fill", var_66_5 - math.floor(var_66_7 / 2), var_66_6 - math.floor(var_66_7 / 2), var_66_7, var_66_7)
			end
		end

		local var_66_9, var_66_10 = var_66_3(var_66_2)

		love.graphics.setColor(0.5254901960784314, 0.796078431372549, 0.27058823529411763, 1)
		love.graphics.rectangle("fill", var_66_9 - 4, var_66_10 - 3, 9, 7)
		love.graphics.rectangle("fill", var_66_9 - 2, var_66_10 - 4, 5, 9)
		love.graphics.setColor(0.73, 0.94, 0.42, 0.92)
		love.graphics.rectangle("fill", var_66_9 - 2, var_66_10 - 3, 3, 3)
	end

	love.graphics.setBlendMode(var_66_0, var_66_1)
	love.graphics.setColor(1, 1, 1, 1)
end

local function var_0_137(arg_68_0)
	if not arg_68_0 then
		return 0
	end

	local var_68_0 = tonumber(arg_68_0.power or arg_68_0._powerRaw or arg_68_0.fixedPower)

	if var_68_0 and var_68_0 > 0 then
		return var_68_0
	end

	local var_68_1 = var_0_1 and var_0_1.combatPower and var_0_1.combatPower(arg_68_0)

	return math.max(0, tonumber(var_68_1) or 0)
end

local function var_0_138(arg_69_0, arg_69_1)
	local var_69_0
	local var_69_1
	local var_69_2
	local var_69_3 = require("src.game.unit_abilities").dimensional_duel

	for iter_69_0, iter_69_1 in ipairs(arg_69_1 or {}) do
		if var_0_80(iter_69_1) and not iter_69_1._wastelandPiperCharm and not iter_69_1._caveBasiliskPetrified and not var_69_3.separated(nil, arg_69_0, iter_69_1) then
			local var_69_4 = var_0_137(iter_69_1)
			local var_69_5 = (iter_69_1.x or 0) - (arg_69_0.x or 0)
			local var_69_6 = (iter_69_1.y or 0) - (arg_69_0.y or 0)
			local var_69_7 = var_69_5 * var_69_5 + var_69_6 * var_69_6

			if not var_69_0 or var_69_1 < var_69_4 or var_69_4 == var_69_1 and var_69_7 < var_69_2 then
				var_69_0, var_69_1, var_69_2 = iter_69_1, var_69_4, var_69_7
			end
		end
	end

	return var_69_0
end

local function var_0_139(arg_70_0)
	for iter_70_0, iter_70_1 in ipairs(arg_70_0 or {}) do
		if var_0_80(iter_70_1) and not iter_70_1._wastelandPiperCharm and not iter_70_1._caveBasiliskPetrified then
			return true
		end
	end

	return false
end

local function var_0_140(arg_71_0, arg_71_1)
	if not arg_71_0 or not ((arg_71_0.timeStopT or 0) > 0) then
		return false
	end

	for iter_71_0, iter_71_1 in pairs(arg_71_1 and arg_71_1.imprints or {}) do
		if iter_71_1 and iter_71_1.id == "timeless" then
			return false
		end
	end

	return true
end

local function var_0_141(arg_72_0, arg_72_1)
	local var_72_0 = arg_72_0 and arg_72_0.assets
	local var_72_1 = var_72_0 and var_72_0.units
	local var_72_2 = var_72_1 and (var_72_1[arg_72_1.skin or ""] or var_72_1[arg_72_1.kind or ""] or var_72_1[arg_72_1.sym or ""])
	local var_72_3 = var_72_2 and var_72_2.quads and var_72_2.quads.attack

	return math.max(1, tonumber(var_72_3 and #var_72_3) or 4)
end

local function var_0_142(arg_73_0)
	if not arg_73_0 then
		return false
	end

	local var_73_0 = arg_73_0._wastelandPiperCharm

	if not var_73_0 then
		return false
	end

	local var_73_1 = var_73_0.owner

	arg_73_0._wastelandPiperCharm = nil
	arg_73_0._wastelandPiperCharmAttack = nil
	arg_73_0.target = nil
	arg_73_0.pendingTarget = nil
	arg_73_0.shotPending = false
	arg_73_0._meleeLoop = false
	arg_73_0._casting = false
	arg_73_0._forceRetarget = true

	if not arg_73_0._caveBasiliskPetrified and not arg_73_0._marshDriveAir then
		arg_73_0._suppressAttack = nil
	end

	if var_73_1 and var_73_1._wastelandPiperCharmedTarget == arg_73_0 then
		var_73_1._wastelandPiperCharmedTarget = nil
	end

	if arg_73_0.alive and not arg_73_0.dying then
		var_0_81(arg_73_0, "idle", 1)
	end

	return true
end

local function var_0_143(arg_74_0, arg_74_1)
	if not var_0_99(arg_74_0) or not var_0_80(arg_74_1) then
		return false
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(nil, arg_74_0, arg_74_1) then
		return false
	end

	if arg_74_0._wastelandPiperCharmedTarget then
		var_0_142(arg_74_0._wastelandPiperCharmedTarget)
	end

	var_0_84(arg_74_1)

	local var_74_0 = math.max(0.1, tonumber(arg_74_0.piperCharmDur) or var_0_78)

	arg_74_1._wastelandPiperCharm = {
		cooldown = 0,
		t = 0,
		owner = arg_74_0,
		duration = var_74_0
	}
	arg_74_1._suppressAttack = true
	arg_74_0._wastelandPiperCharmedTarget = arg_74_1

	require("src.game.combat").spitecap.onDebuff(arg_74_1, nil, "_wastelandPiperCharm")
	var_0_81(arg_74_1, "idle", 1)

	return true
end

local function var_0_144(arg_75_0, arg_75_1)
	if not var_0_139(arg_75_1 and arg_75_1.allies) then
		return false
	end

	var_0_84(arg_75_0)

	arg_75_0._wastelandPiperState = {
		kind = "melody",
		t = 0
	}
	arg_75_0._bossSkillBusy = true
	arg_75_0._bossSkillManualAnim = true

	var_0_81(arg_75_0, "attack2", 1)

	return true
end

local function var_0_145(arg_76_0)
	return arg_76_0 and ((arg_76_0.stunT or 0) > 0 or (arg_76_0.fearT or 0) > 0 or (arg_76_0.bindingT or 0) > 0 or arg_76_0._kb ~= nil)
end

local function var_0_146(arg_77_0, arg_77_1, arg_77_2, arg_77_3, arg_77_4, arg_77_5)
	if not var_0_99(arg_77_1) or not arg_77_1.alive or arg_77_1.dying then
		return false
	end

	arg_77_2 = math.max(0, tonumber(arg_77_2) or 0)
	arg_77_1._wastelandPiperClock = arg_77_1._wastelandPiperClock or 0
	arg_77_1._wastelandPiperNextMelody = arg_77_1._wastelandPiperNextMelody or math.max(0.1, tonumber(arg_77_1.piperMelodyFirstDelay) or var_0_75)

	local var_77_0 = arg_77_1._wastelandPiperState

	if arg_77_5 then
		arg_77_1._wastelandPiperClock = arg_77_1._wastelandPiperClock + arg_77_2
	end

	if arg_77_1._wastelandPiperRecovery then
		arg_77_1._wastelandPiperRecovery = nil
		arg_77_1._bossSkillBusy = nil
		arg_77_1._bossSkillManualAnim = nil

		return false
	end

	if var_77_0 then
		arg_77_1._bossSkillBusy = true
		arg_77_1._bossSkillManualAnim = true

		var_0_84(arg_77_1)

		if var_0_145(arg_77_1) then
			arg_77_1._wastelandPiperState = nil
			arg_77_1._bossSkillBusy = nil
			arg_77_1._bossSkillManualAnim = nil

			var_0_81(arg_77_1, "idle", 1)

			return false
		end

		if not var_0_139(arg_77_0 and arg_77_0.allies) then
			arg_77_1._wastelandPiperState = nil
			arg_77_1._bossSkillBusy = nil
			arg_77_1._bossSkillManualAnim = nil

			var_0_81(arg_77_1, "idle", 1)

			return false
		end

		if arg_77_5 then
			var_77_0.t = (var_77_0.t or 0) + arg_77_2

			local var_77_1 = math.max(0.1, tonumber(arg_77_1.piperMelodyCastDur) or var_0_77)
			local var_77_2 = math.max(0, math.min(1, var_77_0.t / var_77_1))
			local var_77_3 = math.pow(var_77_2, var_0_79)
			local var_77_4 = math.min(6, math.max(1, math.floor(var_77_3 * 6) + 1))

			var_0_81(arg_77_1, "attack2", var_77_4)

			if var_77_1 <= var_77_0.t then
				local var_77_5 = var_0_138(arg_77_1, arg_77_0 and arg_77_0.allies)

				if var_77_5 then
					var_0_143(arg_77_1, var_77_5)
				end

				arg_77_1._wastelandPiperState = nil
				arg_77_1._wastelandPiperRecovery = true
				arg_77_1._bossSkillBusy = true
				arg_77_1._bossSkillManualAnim = nil

				var_0_81(arg_77_1, "idle", 1)
			end
		end

		return true
	end

	arg_77_1._bossSkillBusy = nil
	arg_77_1._bossSkillManualAnim = nil

	if arg_77_5 and arg_77_1._wastelandPiperClock >= arg_77_1._wastelandPiperNextMelody and var_0_144(arg_77_1, arg_77_0) then
		arg_77_1._wastelandPiperNextMelody = arg_77_1._wastelandPiperClock + math.max(0.1, tonumber(arg_77_1.piperMelodyCd) or var_0_76)

		return true
	end

	return false
end

local function var_0_147(arg_78_0, arg_78_1, arg_78_2)
	local var_78_0
	local var_78_1
	local var_78_2 = require("src.game.unit_abilities").dimensional_duel

	for iter_78_0, iter_78_1 in ipairs(arg_78_1 or {}) do
		if iter_78_1 ~= arg_78_0 and var_0_80(iter_78_1) and not var_78_2.separated(arg_78_2, arg_78_0, iter_78_1) then
			local var_78_3 = var_0_86(arg_78_0, iter_78_1, arg_78_2)

			if not var_78_1 or var_78_3 < var_78_1 then
				var_78_0, var_78_1 = iter_78_1, var_78_3
			end
		end
	end

	return var_78_0, var_78_1 and math.sqrt(var_78_1) or math.huge
end

local function var_0_148(arg_79_0, arg_79_1, arg_79_2)
	if not arg_79_0 then
		return
	end

	arg_79_1 = math.max(0, tonumber(arg_79_1) or 0)

	for iter_79_0, iter_79_1 in ipairs(arg_79_0.allies or {}) do
		local var_79_0 = iter_79_1._wastelandPiperCharm

		if var_79_0 then
			local var_79_1 = var_79_0.owner

			if not var_0_80(iter_79_1) or not var_0_99(var_79_1) or not var_79_1.alive or var_79_1.dying or iter_79_1._venomMawSwallowed then
				var_0_142(iter_79_1)
			elseif not var_0_140(arg_79_0, iter_79_1) then
				var_79_0.t = (var_79_0.t or 0) + arg_79_1
				iter_79_1._suppressAttack = true

				if var_79_0.t >= (var_79_0.duration or var_0_78) then
					var_0_142(iter_79_1)
				else
					var_79_0.cooldown = math.max(0, (var_79_0.cooldown or 0) - arg_79_1)

					local var_79_2 = var_79_0.attack

					if var_79_2 and (not var_0_80(var_79_2.target) or require("src.game.unit_abilities").dimensional_duel.separated(arg_79_0, iter_79_1, var_79_2.target)) then
						var_79_0.attack = nil
						var_79_2 = nil

						var_0_81(iter_79_1, "idle", 1)
					end

					if var_79_2 then
						var_79_2.t = (var_79_2.t or 0) + arg_79_1

						var_0_83(iter_79_1, var_79_2.target)

						local var_79_3 = var_79_2.duration or 0.45
						local var_79_4 = var_79_2.frameCount or 4
						local var_79_5 = math.min(var_79_4, math.max(1, math.floor(var_79_2.t / var_79_3 * var_79_4) + 1))

						var_0_81(iter_79_1, "attack", var_79_5)

						if not var_79_2.hit and var_79_2.t >= var_79_3 * 0.55 then
							var_79_2.hit = true

							if var_0_80(var_79_2.target) and type(arg_79_2) == "function" then
								arg_79_2(var_79_2.target, math.max(0, math.floor((tonumber(iter_79_1.dmg) or 0) + 0.5)), iter_79_1, {
									wastelandPiperCharm = true,
									basicAttack = true
								})
							end
						end

						if var_79_3 <= var_79_2.t then
							var_79_0.attack = nil

							var_0_81(iter_79_1, "idle", 1)
						end
					else
						local var_79_6, var_79_7 = var_0_147(iter_79_1, arg_79_0.allies, arg_79_0)

						if var_79_6 then
							var_0_83(iter_79_1, var_79_6)

							local var_79_8 = math.max(1, tonumber(iter_79_1.distance) or 50)

							if var_79_7 <= var_79_8 and var_79_0.cooldown <= 0 then
								local var_79_9 = tonumber(iter_79_1.atkPeriod)

								if not var_79_9 or var_79_9 <= 0 then
									var_79_9 = math.max(1, tonumber(iter_79_1.atkTicks) or 60) / 60
								end

								var_79_0.cooldown = math.max(0.1, var_79_9)
								var_79_0.attack = {
									hit = false,
									t = 0,
									target = var_79_6,
									duration = math.max(0.24, math.min(0.45, var_79_9 * 0.6)),
									frameCount = var_0_141(arg_79_0, iter_79_1)
								}

								var_0_81(iter_79_1, "attack", 1)
							elseif var_79_8 < var_79_7 then
								local var_79_10 = (var_79_6.x or 0) - (iter_79_1.x or 0)
								local var_79_11 = (var_79_6.y or 0) - (iter_79_1.y or 0)
								local var_79_12 = math.sqrt(var_79_10 * var_79_10 + var_79_11 * var_79_11)

								if var_79_12 > 0.001 then
									local var_79_13 = math.max(0, tonumber(iter_79_1.speed) or 30)
									local var_79_14 = math.min(var_79_12, var_79_13 * math.min(arg_79_1, 0.03333333333333333))

									iter_79_1.x = (iter_79_1.x or 0) + var_79_10 / var_79_12 * var_79_14
									iter_79_1.y = (iter_79_1.y or 0) + var_79_11 / var_79_12 * var_79_14
								end

								var_0_82(iter_79_1, "walk")
							else
								var_0_82(iter_79_1, "idle")
							end
						else
							var_0_82(iter_79_1, "idle")
						end
					end
				end
			end
		end
	end
end

local function var_0_149(arg_80_0)
	if not arg_80_0 then
		return
	end

	if arg_80_0._wastelandPiperCharmedTarget then
		var_0_142(arg_80_0._wastelandPiperCharmedTarget)
	end

	arg_80_0._wastelandPiperState = nil
	arg_80_0._wastelandPiperRecovery = nil
	arg_80_0._bossSkillBusy = nil
	arg_80_0._bossSkillManualAnim = nil
end

local function var_0_150(arg_81_0, arg_81_1, arg_81_2, arg_81_3, arg_81_4, arg_81_5, arg_81_6)
	love.graphics.setColor(arg_81_2, arg_81_3, arg_81_4, arg_81_5 * arg_81_6)
	love.graphics.rectangle("fill", math.floor(arg_81_0), math.floor(arg_81_1), 3, 3)
	love.graphics.rectangle("fill", math.floor(arg_81_0 + 2), math.floor(arg_81_1 - 7), 2, 9)
	love.graphics.rectangle("fill", math.floor(arg_81_0 + 4), math.floor(arg_81_1 - 7), 4, 2)
end

local function var_0_151(arg_82_0)
	if not love or not love.graphics or not arg_82_0 then
		return
	end

	local var_82_0, var_82_1, var_82_2, var_82_3 = love.graphics.getColor()
	local var_82_4 = 0.65 + 0.35 * math.sin((love.timer and love.timer.getTime and love.timer.getTime() or 0) * 8)

	for iter_82_0, iter_82_1 in ipairs(arg_82_0.enemies or {}) do
		if iter_82_1.alive and not iter_82_1.dying and iter_82_1._wastelandPiperState then
			var_0_150((iter_82_1.x or 0) - 10, (iter_82_1.y or 0) - 40, 0.93, 0.76, 0.32, 0.95, var_82_4)
			var_0_150((iter_82_1.x or 0) + 7, (iter_82_1.y or 0) - 48, 1, 0.88, 0.45, 0.82, var_82_4)
		end
	end

	for iter_82_2, iter_82_3 in ipairs(arg_82_0.allies or {}) do
		if iter_82_3.alive and not iter_82_3.dying and iter_82_3._wastelandPiperCharm then
			var_0_150((iter_82_3.x or 0) - 2, (iter_82_3.y or 0) - 30, 0.78, 0.42, 0.93, 0.92, var_82_4)
		end
	end

	love.graphics.setColor(var_82_0, var_82_1, var_82_2, var_82_3)
end

local var_0_152 = {
	VOMIT_FIRST = var_0_2,
	VOMIT_COOLDOWN = var_0_3,
	VOMIT_AIM = var_0_4,
	VOMIT_TARGET_RANGE = var_0_5,
	VOMIT_MOUTH_LOCAL_X = var_0_7,
	VOMIT_MOUTH_LOCAL_Y = var_0_8,
	VOMIT_SPRITE_SCALE = var_0_10,
	VOMIT_ARC_HEIGHT = var_0_11,
	POOL_DURATION = var_0_12,
	POOL_RADIUS = var_0_13,
	POOL_Y_SCALE = var_0_14,
	POOL_MAX_TARGETS = var_0_17,
	THROW_FIRST = var_0_19,
	THROW_COOLDOWN = var_0_20,
	THROW_MAX_USES = var_0_21,
	THROW_AIM = var_0_22,
	CHEW_DURATION = var_0_23,
	THROW_SPLASH_RADIUS = var_0_26,
	THROW_SPLASH_MAX_TARGETS = var_0_27,
	THROW_STUN_DURATION = var_0_28,
	THROW_SPIT_RECOVERY = var_0_29,
	THROW_CHEW_FRAME_TIME = var_0_30,
	THROW_SWALLOW_TRANSITION = var_0_31,
	DEVOUR_DAMAGE_REDUCTION = var_0_32,
	THROW_FLIGHT_DURATION = var_0_33,
	THROW_FLIGHT_MAX_DURATION = var_0_34,
	THROW_FLIGHT_ARC = var_0_35,
	THROW_FLIGHT_MAX_ARC = var_0_36,
	THROW_FLIGHT_DISTANCE_FOR_MAX = var_0_37,
	THROW_NEAR_DISTANCE_TOLERANCE = var_0_39
}
local var_0_153 = {
	GAZE_FIRST = var_0_43,
	GAZE_COOLDOWN = var_0_44,
	GAZE_CAST = var_0_45,
	GAZE_RECOVERY = var_0_46,
	GAZE_RANGE = var_0_47,
	GAZE_RELEASE_FRAME = var_0_48,
	GAZE_PROJECTILE_SPEED = var_0_49,
	GAZE_PROJECTILE_THICKNESS = var_0_50,
	MUZZLE_R = var_0_53,
	MUZZLE_G = var_0_54,
	MUZZLE_B = var_0_55,
	MUZZLE_FALLBACK_X = var_0_56,
	MUZZLE_FALLBACK_Y = var_0_57,
	PROJECTILE_COLOR = var_0_58,
	PROJECTILE_OUTER_COLOR = var_0_59,
	PETRIFY_DURATION = var_0_60,
	PETRIFY_HIT_LIMIT = var_0_61,
	PETRIFY_IMMUNITY = var_0_62,
	PETRIFY_RISE_DURATION = var_0_63,
	DAMAGE_TAKEN_MUL = var_0_64,
	SWEEP_CHANCE = var_0_65,
	SWEEP_COOLDOWN = var_0_66,
	SWEEP_RADIUS = var_0_67,
	SWEEP_MAX_EXTRA = var_0_68,
	SWEEP_FORCE = var_0_69,
	SWEEP_DURATION = var_0_70,
	PRE_GAZE_ATTACK_DURATION = var_0_71,
	PRE_GAZE_HIT_FRAME = var_0_72,
	PRE_GAZE_FORCE = var_0_73,
	PRE_GAZE_KB_DURATION = var_0_74
}
local var_0_154 = {
	MELODY_FIRST = var_0_75,
	MELODY_COOLDOWN = var_0_76,
	MELODY_CAST = var_0_77,
	CHARM_DURATION = var_0_78,
	MELODY_ANIM_EASE = var_0_79
}
local var_0_155 = {}
local var_0_156 = {}

function var_0_0.register(arg_83_0, arg_83_1)
	assert(type(arg_83_0) == "string" and arg_83_0 ~= "", "boss skill id is required")
	assert(type(arg_83_1) == "table" and type(arg_83_1.matches) == "function", "boss skill handler requires a matches function")

	if not var_0_155[arg_83_0] then
		var_0_156[#var_0_156 + 1] = arg_83_0
	end

	var_0_155[arg_83_0] = arg_83_1
end

function var_0_0.getHandler(arg_84_0, arg_84_1)
	if arg_84_1 then
		local var_84_0 = var_0_155[arg_84_1]

		if var_84_0 and var_84_0.matches(arg_84_0) then
			return var_84_0, arg_84_1
		end

		return nil
	end

	for iter_84_0, iter_84_1 in ipairs(var_0_156) do
		local var_84_1 = var_0_155[iter_84_1]

		if var_84_1 and var_84_1.matches(arg_84_0) then
			return var_84_1, iter_84_1
		end
	end

	return nil
end

function var_0_0.matches(arg_85_0, arg_85_1)
	return var_0_0.getHandler(arg_85_0, arg_85_1) ~= nil
end

function var_0_0.isCasting(arg_86_0)
	if not arg_86_0 then
		return false
	end

	for iter_86_0, iter_86_1 in ipairs({
		"_casting",
		"_bossSkillBusy",
		"_venomMawBusy",
		"_venomMawState",
		"_caveBasiliskState",
		"_wastelandPiperState",
		"_cosmicPressureState",
		"_starJudgeScaleState",
		"_twinStarBarrierPosing",
		"_demonLordDominionAnimating",
		"_bloodMoonSlashCasting",
		"_bloodtailStingCasting",
		"_dragonkinBoilingCasting",
		"_spineCarapaceCasting",
		"_razorscaleRainCasting",
		"_razorscaleRainActive",
		"_archRageCasting",
		"_beholderGazePending",
		"_summonPending",
		"_howlPending"
	}) do
		if arg_86_0[iter_86_1] then
			return true
		end
	end

	local var_86_0 = arg_86_0.skill

	return var_86_0 ~= nil and (var_86_0.state == "casting" or var_86_0.state == "precast" or var_86_0.state == "active" or var_86_0.active == true)
end

function var_0_0.getConstants(arg_87_0)
	local var_87_0 = var_0_155[arg_87_0]

	return var_87_0 and var_87_0.constants or nil
end

local var_0_157 = {
	matches = var_0_97,
	update = var_0_132,
	updateWorld = var_0_134,
	releaseOnDeath = var_0_120,
	isDepthVfx = var_0_129,
	drawDepthVfx = var_0_131,
	drawBehind = var_0_135,
	drawAbove = var_0_136,
	modifyDamageToEnemy = var_0_121,
	constants = var_0_152
}

var_0_0.register("venom_maw", var_0_157)

local var_0_158 = {
	matches = var_0_98,
	update = var_0_112,
	updateWorld = var_0_113,
	releaseOnDeath = var_0_119,
	onBasicAttackHit = var_0_115,
	onProjectileHit = var_0_118,
	modifyDamageToAlly = var_0_116,
	notifyEnemyDamaged = var_0_117,
	constants = var_0_153
}

var_0_0.register("cave_basilisk", var_0_158)

local var_0_159 = {
	matches = var_0_99,
	update = var_0_146,
	updateWorld = var_0_148,
	releaseOnDeath = var_0_149,
	drawAbove = var_0_151,
	constants = var_0_154
}

var_0_0.register("wasteland_piper", var_0_159)
var_0_0.register("succubus", require("src.game.enemy_skills").succubus)
var_0_0.register("clawed_demon", require("src.game.enemy_skills").clawed_demon)
var_0_0.register("high_demon", require("src.game.enemy_skills").high_demon)
var_0_0.register("hell_warden", require("src.game.enemy_skills").hell_warden)
var_0_0.register("demon_lord", require("src.game.enemy_skills").demon_lord)
var_0_0.register("skeleton_dragon", require("src.game.enemy_skills").skeleton_dragon)
var_0_0.register("doom_dragon", require("src.game.enemy_skills").doom_dragon)
var_0_0.register("dark_lord", require("src.game.enemy_skills").dark_lord)
var_0_0.register("space_assassin", require("src.game.enemy_skills").space_assassin)
var_0_0.register("space_guardian", require("src.game.enemy_skills").space_guardian)
var_0_0.register("space_hunter", require("src.game.enemy_skills").space_hunter)
var_0_0.register("space_knight", require("src.game.enemy_skills").space_knight)
var_0_0.register("space_cavalry", require("src.game.enemy_skills").space_cavalry)
var_0_0.register("space_wizard", require("src.game.enemy_skills").space_wizard)
var_0_0.register("crescent_raider", require("src.game.enemy_skills").crescent_raider)
var_0_0.register("crystal_guard", require("src.game.enemy_skills").crystal_guard)
var_0_0.register("starlight_paladin", require("src.game.enemy_skills").starlight_paladin)
var_0_0.register("star_priestess", require("src.game.enemy_skills").star_priestess)
var_0_0.register("twin_star_barrier", require("src.game.enemy_skills").twin_star_lords)
var_0_0.register("star_judge", require("src.game.enemy_skills").star_judge)
var_0_0.register("cosmic_sovereign", require("src.game.enemy_skills").cosmic_sovereign)

function var_0_0.updateBoss(arg_88_0, arg_88_1, arg_88_2, arg_88_3, arg_88_4, arg_88_5)
	if var_0_100(arg_88_1) then
		return false
	end

	arg_88_2 = tonumber(arg_88_2) or 0

	if arg_88_2 ~= arg_88_2 or arg_88_2 == math.huge or arg_88_2 == -math.huge then
		arg_88_2 = 0
	end

	arg_88_2 = math.max(0, math.min(0.2, arg_88_2))

	local var_88_0 = var_0_0.getHandler(arg_88_1)

	if not var_88_0 or not var_88_0.update then
		return false
	end

	local var_88_1 = var_88_0.update(arg_88_0, arg_88_1, arg_88_2, arg_88_3, arg_88_4, arg_88_5 and not arg_88_1._condemningSealT)

	require("src.game.combat").retaliation_sigil.observeEnemy(arg_88_0, arg_88_1)

	return var_88_1
end

function var_0_0.updateWorld(arg_89_0, arg_89_1, arg_89_2, arg_89_3, arg_89_4)
	arg_89_1 = tonumber(arg_89_1) or 0

	if arg_89_1 ~= arg_89_1 or arg_89_1 == math.huge or arg_89_1 == -math.huge then
		arg_89_1 = 0
	end

	arg_89_1 = math.max(0, math.min(0.2, arg_89_1))

	for iter_89_0, iter_89_1 in ipairs(var_0_156) do
		local var_89_0 = var_0_155[iter_89_1]

		if var_89_0.updateWorld then
			var_89_0.updateWorld(arg_89_0, arg_89_1, arg_89_2, arg_89_3, arg_89_4)
		end
	end
end

function var_0_0.releaseOnDeath(arg_90_0)
	local var_90_0 = var_0_0.getHandler(arg_90_0)

	if var_90_0 and var_90_0.releaseOnDeath then
		var_90_0.releaseOnDeath(arg_90_0)
	end
end

function var_0_0.notifyEnemyDeath(arg_91_0, arg_91_1)
	local var_91_0 = false

	for iter_91_0, iter_91_1 in ipairs(var_0_156) do
		local var_91_1 = var_0_155[iter_91_1]

		if var_91_1.onEnemyDeath and var_91_1.onEnemyDeath(arg_91_0, arg_91_1) then
			var_91_0 = true
		end
	end

	return var_91_0
end

function var_0_0.onBasicAttackHit(arg_92_0, arg_92_1, arg_92_2)
	local var_92_0 = var_0_0.getHandler(arg_92_1)

	if not var_92_0 or not var_92_0.onBasicAttackHit then
		return false
	end

	return var_92_0.onBasicAttackHit(arg_92_0, arg_92_1, arg_92_2)
end

function var_0_0.afterBasicAttackHit(arg_93_0, arg_93_1, arg_93_2, arg_93_3)
	local var_93_0 = var_0_0.getHandler(arg_93_1)

	if not var_93_0 or not var_93_0.afterBasicAttackHit then
		return false
	end

	return var_93_0.afterBasicAttackHit(arg_93_0, arg_93_1, arg_93_2, arg_93_3)
end

function var_0_0.onProjectileHit(arg_94_0, arg_94_1, arg_94_2)
	local var_94_0 = var_0_0.getHandler(arg_94_0)

	if not var_94_0 or not var_94_0.onProjectileHit then
		return false
	end

	return var_94_0.onProjectileHit(arg_94_0, arg_94_1, arg_94_2)
end

function var_0_0.modifyDamageToAlly(arg_95_0, arg_95_1, arg_95_2)
	local var_95_0 = var_0_100(arg_95_0)
	local var_95_1 = var_95_0 and var_95_0.owner
	local var_95_2 = var_95_1 and var_0_0.getHandler(var_95_1)

	if var_95_2 and var_95_2.modifyDamageToAlly then
		return var_95_2.modifyDamageToAlly(arg_95_0, arg_95_1, arg_95_2)
	end

	return tonumber(arg_95_2) or 0
end

function var_0_0.modifyDamageToEnemy(arg_96_0, arg_96_1, arg_96_2, arg_96_3)
	arg_96_0 = arg_96_0 and (arg_96_0._soulBody or arg_96_0)

	local var_96_0 = arg_96_0 and var_0_0.getHandler(arg_96_0)

	if var_96_0 and var_96_0.modifyDamageToEnemy then
		arg_96_2 = var_96_0.modifyDamageToEnemy(arg_96_0, arg_96_2, arg_96_1, arg_96_3)
	end

	arg_96_2 = tonumber(arg_96_2) or 0

	for iter_96_0, iter_96_1 in ipairs(var_0_156) do
		local var_96_1 = var_0_155[iter_96_1]

		if var_96_1.modifyDamageToEnemyGlobal then
			arg_96_2 = var_96_1.modifyDamageToEnemyGlobal(arg_96_0, arg_96_2, arg_96_1)
		end
	end

	return tonumber(arg_96_2) or 0
end

function var_0_0.consumeAllyBasicAttack(arg_97_0, arg_97_1)
	local var_97_0 = arg_97_0 and arg_97_0._skeletonDragonSoulBackflow
	local var_97_1 = var_97_0 and var_97_0.owner
	local var_97_2 = var_97_1 and var_0_0.getHandler(var_97_1)

	if not var_97_2 or not var_97_2.consumeAllyBasicAttack then
		return false
	end

	return var_97_2.consumeAllyBasicAttack(arg_97_0, arg_97_1) == true
end

function var_0_0.consumeVfxDamage(arg_98_0, arg_98_1, arg_98_2)
	local var_98_0 = arg_98_1 and arg_98_1.owner
	local var_98_1 = var_98_0 and var_0_0.getHandler(var_98_0)

	if not var_98_1 or not var_98_1.consumeEffectDamage then
		return false
	end

	return var_98_1.consumeEffectDamage(arg_98_0, arg_98_1, arg_98_2) == true
end

function var_0_0.blocksDamageToEnemy(arg_99_0, arg_99_1, arg_99_2, arg_99_3)
	arg_99_1 = arg_99_1 and (arg_99_1._soulBody or arg_99_1)

	local var_99_0 = arg_99_1 and var_0_0.getHandler(arg_99_1)

	if var_99_0 and var_99_0.blocksDamageToEnemy and var_99_0.blocksDamageToEnemy(arg_99_0, arg_99_1, arg_99_2, arg_99_3) == true then
		return true
	end

	for iter_99_0, iter_99_1 in ipairs(var_0_156) do
		local var_99_1 = var_0_155[iter_99_1]

		if var_99_1.blocksDamageToEnemyGlobal and var_99_1.blocksDamageToEnemyGlobal(arg_99_0, arg_99_1, arg_99_2, arg_99_3) == true then
			return true
		end
	end

	return false
end

function var_0_0.retainsAllyTarget(arg_100_0, arg_100_1, arg_100_2)
	local var_100_0 = arg_100_2 and var_0_0.getHandler(arg_100_2)

	if not var_100_0 or not var_100_0.retainsAllyTarget then
		return false
	end

	return var_100_0.retainsAllyTarget(arg_100_0, arg_100_2, arg_100_1) == true
end

function var_0_0.notifyEnemyDamaged(arg_101_0, arg_101_1, arg_101_2)
	arg_101_0 = arg_101_0 and (arg_101_0._soulBody or arg_101_0)

	local var_101_0 = arg_101_0 and var_0_0.getHandler(arg_101_0)

	if not var_101_0 or not var_101_0.notifyEnemyDamaged then
		return false
	end

	return var_101_0.notifyEnemyDamaged(arg_101_0, arg_101_1, arg_101_2)
end

function var_0_0.notifyAllyDamaged(arg_102_0, arg_102_1, arg_102_2)
	local var_102_0 = var_0_100(arg_102_0)
	local var_102_1 = var_102_0 and var_102_0.owner
	local var_102_2 = var_102_1 and var_0_0.getHandler(var_102_1)

	if not var_102_2 or not var_102_2.notifyAllyDamaged then
		return false
	end

	return var_102_2.notifyAllyDamaged(arg_102_0, arg_102_1, arg_102_2)
end

function var_0_0.drawBehind(arg_103_0)
	for iter_103_0, iter_103_1 in ipairs(var_0_156) do
		local var_103_0 = var_0_155[iter_103_1]

		if var_103_0.drawBehind then
			var_103_0.drawBehind(arg_103_0)
		end
	end
end

function var_0_0.drawAbove(arg_104_0)
	for iter_104_0, iter_104_1 in ipairs(var_0_156) do
		local var_104_0 = var_0_155[iter_104_1]

		if var_104_0.drawAbove then
			var_104_0.drawAbove(arg_104_0)
		end
	end
end

function var_0_0.isDepthVfx(arg_105_0)
	if not arg_105_0 then
		return false
	end

	local var_105_0 = arg_105_0.bossSkillVfx

	if var_105_0 then
		local var_105_1 = var_0_155[var_105_0]

		return var_105_1 and var_105_1.isDepthVfx and var_105_1.isDepthVfx(arg_105_0) or false
	end

	for iter_105_0, iter_105_1 in ipairs(var_0_156) do
		local var_105_2 = var_0_155[iter_105_1]

		if var_105_2.isDepthVfx and var_105_2.isDepthVfx(arg_105_0) then
			return true
		end
	end

	return false
end

function var_0_0.drawDepthVfx(arg_106_0, arg_106_1)
	if not arg_106_0 then
		return false
	end

	local var_106_0 = arg_106_0.bossSkillVfx

	if var_106_0 then
		local var_106_1 = var_0_155[var_106_0]

		if var_106_1 and var_106_1.isDepthVfx and var_106_1.isDepthVfx(arg_106_0) and var_106_1.drawDepthVfx then
			return var_106_1.drawDepthVfx(arg_106_0, arg_106_1)
		end

		return false
	end

	for iter_106_0, iter_106_1 in ipairs(var_0_156) do
		local var_106_2 = var_0_155[iter_106_1]

		if var_106_2.isDepthVfx and var_106_2.isDepthVfx(arg_106_0) and var_106_2.drawDepthVfx then
			return var_106_2.drawDepthVfx(arg_106_0, arg_106_1)
		end
	end

	return false
end

return var_0_0
