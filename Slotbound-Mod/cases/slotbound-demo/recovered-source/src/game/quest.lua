local var_0_0 = {}

local function var_0_1(arg_1_0)
	return {
		completed = false,
		current = 0,
		number = arg_1_0.number,
		id = arg_1_0.id,
		name = arg_1_0.name,
		description = arg_1_0.description,
		difficulty = arg_1_0.difficulty,
		objectiveType = arg_1_0.objectiveType,
		target = arg_1_0.target,
		appearanceCondition = arg_1_0.appearanceCondition,
		getProgressText = function(arg_2_0)
			return string.format("%d/%d", arg_2_0.current, arg_2_0.target)
		end,
		isAvailable = function(arg_3_0, arg_3_1)
			if not arg_3_0.appearanceCondition then
				return true
			end

			return arg_3_0.appearanceCondition(arg_3_1)
		end,
		resetRoundProgress = function(arg_4_0)
			arg_4_0.current = 0
			arg_4_0.completed = false
		end,
		addProgress = function(arg_5_0, arg_5_1)
			if arg_5_0.completed then
				return
			end

			local var_5_0 = arg_5_1 or 1

			arg_5_0.current = math.min(arg_5_0.target, arg_5_0.current + var_5_0)
			arg_5_0.completed = arg_5_0.current >= arg_5_0.target
		end,
		setProgress = function(arg_6_0, arg_6_1)
			if arg_6_0.completed then
				return
			end

			arg_6_0.current = math.min(arg_6_0.target, arg_6_1)
			arg_6_0.completed = arg_6_0.current >= arg_6_0.target
		end
	}
end

var_0_0.byDifficulty = {
	하 = {
		var_0_1({
			description = "한 라운드에서 슬롯머신 스핀을 6번 할시",
			objectiveType = "round_spin_count",
			id = "spin_6_in_one_round",
			number = 1,
			target = 6,
			name = "한 라운드에 스핀 6회 사용",
			difficulty = "하"
		}),
		var_0_1({
			description = "슬롯머신의 스핀을 총 20번 할시",
			objectiveType = "total_spin_count",
			id = "spin_20_total",
			number = 2,
			target = 20,
			name = "슬롯머신 총 20회 스핀",
			difficulty = "하",
			appearanceCondition = function(arg_7_0)
				if arg_7_0 and arg_7_0.activeQuests then
					for iter_7_0, iter_7_1 in pairs(arg_7_0.activeQuests) do
						if iter_7_1 == 13 or iter_7_1 == 24 then
							return false
						end
					end
				end

				return true
			end
		}),
		var_0_1({
			description = "보유 정수가 15개 이상을 달성할 경우",
			objectiveType = "essence_count",
			id = "essence_15_total",
			number = 3,
			target = 15,
			name = "정수 15 이상 달성",
			difficulty = "하",
			appearanceCondition = function(arg_8_0)
				return (arg_8_0.essence or 0) <= 5
			end
		}),
		var_0_1({
			description = "똑같은 종류의 심볼의 유닛이 4명이나 그 이상을 보유시",
			objectiveType = "same_unit_count",
			id = "same_unit_4",
			number = 4,
			target = 4,
			name = "동일 유닛 4명 소유",
			difficulty = "하",
			appearanceCondition = function(arg_9_0)
				return (arg_9_0.maxSameCount or 0) <= 3
			end
		}),
		var_0_1({
			description = "다른 종류 심볼의 유닛이 4명이나 그 이상을 보유시",
			objectiveType = "unique_unit_count",
			id = "unique_unit_4",
			number = 5,
			target = 4,
			name = "서로 다른 4종 유닛 소유",
			difficulty = "하",
			appearanceCondition = function(arg_10_0)
				return (arg_10_0.uniqueCount or 0) <= 3
			end
		}),
		var_0_1({
			description = "흡수를 5회나 그 이상 달성시",
			objectiveType = "total_absorb_count",
			id = "absorb_5",
			number = 6,
			target = 5,
			name = "흡수 5회 달성",
			difficulty = "하",
			appearanceCondition = function(arg_11_0)
				return (arg_11_0.wave or 1) >= 1 and (arg_11_0.wave or 1) <= 10
			end
		}),
		var_0_1({
			description = "3명의 유닛에 각각 흡수를 1회 혹은 그 이상을 할시",
			objectiveType = "units_with_absorb_count",
			id = "3_units_absorbed_once",
			number = 7,
			target = 3,
			name = "3명의 유닛에 각각 흡수 1회 이상",
			difficulty = "하"
		}),
		var_0_1({
			description = "각인을 3개 이상 장착한 유닛을 보유시",
			objectiveType = "max_imprint_count",
			id = "unit_with_3_imprints",
			number = 8,
			target = 1,
			name = "각인 3개 이상 장착 유닛 보유",
			difficulty = "하",
			appearanceCondition = function(arg_12_0)
				return (arg_12_0.maxImprintCount or 0) < 2
			end
		}),
		var_0_1({
			description = "2성으로 승급된 유닛 보유시",
			objectiveType = "max_rank_count",
			id = "rank_up_to_2",
			number = 9,
			target = 1,
			name = "1성 유닛을 2성까지 성장",
			difficulty = "하",
			appearanceCondition = function(arg_13_0)
				return (arg_13_0.wave or 1) >= 1 and (arg_13_0.wave or 1) <= 10
			end
		}),
		var_0_1({
			description = "전투시 1명 이하로 사망 했을 경우",
			objectiveType = "wave_deaths_le_1",
			id = "wave_death_limit_1",
			number = 10,
			target = 1,
			name = "한 웨이브간 전투에서 1명 이하 사망",
			difficulty = "하",
			appearanceCondition = function(arg_14_0)
				return (arg_14_0.wave or 1) > 10
			end
		}),
		var_0_1({
			description = "전투시 1명만 남은채로 승리시",
			objectiveType = "win_with_one_survivor",
			id = "win_with_last_unit",
			number = 11,
			target = 1,
			name = "마지막 유닛 1명 남은채로 승리",
			difficulty = "하",
			appearanceCondition = function(arg_15_0)
				return (arg_15_0.wave or 1) >= 3
			end
		}),
		var_0_1({
			description = "종류가 다른 심볼의 3명의 유닛들 1명의 유닛에게 흡수시",
			objectiveType = "absorber_unique_symbols_3",
			id = "absorb_3_unique_symbols",
			number = 12,
			target = 1,
			name = "서로 다른 3종의 유닛을 1명의 유닛에게 흡수",
			difficulty = "하"
		})
	},
	중 = {
		var_0_1({
			description = "슬롯머신의 스핀을 총 35번 할시",
			objectiveType = "total_spin_count",
			id = "spin_35_total",
			number = 13,
			target = 35,
			name = "슬롯머신 35회 스핀",
			difficulty = "중",
			appearanceCondition = function(arg_16_0)
				if arg_16_0 and arg_16_0.activeQuests then
					for iter_16_0, iter_16_1 in pairs(arg_16_0.activeQuests) do
						if iter_16_1 == 2 or iter_16_1 == 24 then
							return false
						end
					end
				end

				return true
			end
		}),
		var_0_1({
			description = "5웨이브 동안 일반 유닛만 사용 할 시",
			objectiveType = "normal_units_only_waves",
			id = "normal_units_only_5_waves",
			number = 14,
			target = 5,
			name = "5 웨이브 동안 일반 유닛만 사용",
			difficulty = "중",
			appearanceCondition = function(arg_17_0)
				return arg_17_0 and (arg_17_0.wave or 1) == 1
			end
		}),
		var_0_1({
			description = "5 웨이브 동안 흡수를 안할시",
			objectiveType = "no_absorb_waves",
			id = "no_absorb_5_waves",
			number = 15,
			target = 5,
			name = "흡수 없이 5 웨이브 생존",
			difficulty = "중"
		}),
		var_0_1({
			description = "5 웨이브 동안 넛지를 안 사용할시",
			objectiveType = "no_nudge_waves",
			id = "no_nudge_5_waves",
			number = 16,
			target = 5,
			name = "5 웨이브 동안 넛지 미사용",
			difficulty = "중",
			appearanceCondition = function(arg_18_0)
				local var_18_0 = require("src.ui.upgrade")

				if var_18_0.getNudgeEnabled then
					return var_18_0.getNudgeEnabled()
				end

				return false
			end
		}),
		var_0_1({
			description = "고급 이상 유닛만 흡수하여 승급시",
			objectiveType = "advanced_promotion",
			id = "advanced_promotion",
			number = 17,
			target = 1,
			name = "고급 이상 유닛만 흡수하여 유닛 승급",
			difficulty = "중"
		}),
		var_0_1({
			description = "5 웨이브 동안 상점 미사용시",
			objectiveType = "no_shop_waves",
			id = "no_shop_5_waves",
			number = 18,
			target = 5,
			name = "5 웨이브 동안 상점 미사용",
			difficulty = "중",
			appearanceCondition = function(arg_19_0)
				return (arg_19_0.wave or 1) > 3
			end
		}),
		var_0_1({
			description = "5 웨이브 동안 아이템 미사용시",
			objectiveType = "no_item_waves",
			id = "no_item_5_waves",
			number = 19,
			target = 5,
			name = "5 웨이브 동안 아이템 미사용",
			difficulty = "중",
			appearanceCondition = function(arg_20_0)
				local var_20_0 = arg_20_0.ui

				if var_20_0 and var_20_0._legacyPurchased then
					for iter_20_0, iter_20_1 in ipairs(var_20_0._legacyPurchased) do
						if iter_20_1.cooldownSec and iter_20_1.cooldownSec > 0 then
							return true
						end
					end
				end

				return false
			end
		}),
		var_0_1({
			description = "전장에 원거리 유닛만 있을 경우",
			objectiveType = "ranged_units_only",
			id = "ranged_units_only",
			number = 20,
			target = 1,
			name = "원거리 유닛만 유지",
			difficulty = "중",
			appearanceCondition = function(arg_21_0)
				local var_21_0 = arg_21_0.battlefield

				if var_21_0 and var_21_0.rosterUnits then
					for iter_21_0, iter_21_1 in ipairs(var_21_0.rosterUnits) do
						local var_21_1 = iter_21_1.role or iter_21_1.base and iter_21_1.base.role
						local var_21_2 = iter_21_1.distance or iter_21_1.base and iter_21_1.base.distance or 0

						if not (var_21_1 == "archer" or var_21_1 == "mage" or var_21_2 >= 100) then
							return true
						end
					end
				end

				return false
			end
		}),
		var_0_1({
			description = "유닛 5명 이하로 승리시",
			objectiveType = "win_with_5_or_fewer_units",
			id = "win_with_5_or_fewer_units",
			number = 21,
			target = 1,
			name = "유닛 5명 이하로 승리",
			difficulty = "중",
			appearanceCondition = function(arg_22_0)
				return (arg_22_0.wave or 1) > 5
			end
		}),
		var_0_1({
			description = "웨이브 카운터 전투 시작 2초전에 슬롯머신 스핀 돌렸는데 당첨될시",
			objectiveType = "clutch_win",
			id = "clutch_win",
			number = 22,
			target = 1,
			name = "전투 시작 직전 스핀으로 당첨 만들기",
			difficulty = "중"
		}),
		var_0_1({
			description = "3성 유닛 없이 10 웨이브 도달시",
			objectiveType = "reach_wave_10_no_3_star",
			id = "reach_wave_10_no_3_star",
			number = 23,
			target = 10,
			name = "3성 유닛 없이 10 웨이브 도달",
			difficulty = "중",
			appearanceCondition = function(arg_23_0)
				return arg_23_0 and (arg_23_0.wave or 1) == 1
			end
		})
	},
	상 = {
		var_0_1({
			description = "슬롯머신의 스핀을 총 60번 할시",
			objectiveType = "total_spin_count",
			id = "spin_60_total",
			number = 24,
			target = 60,
			name = "슬롯머신 60회 스핀",
			difficulty = "상",
			appearanceCondition = function(arg_24_0)
				if arg_24_0 and arg_24_0.activeQuests then
					for iter_24_0, iter_24_1 in pairs(arg_24_0.activeQuests) do
						if iter_24_1 == 2 or iter_24_1 == 13 then
							return false
						end
					end
				end

				return true
			end
		}),
		var_0_1({
			description = "체력이 1인 상태로 웨이브를 승리하거나 체력을 1만 남기고 웨이브 승리시",
			objectiveType = "win_with_1_hp",
			id = "win_with_1_hp",
			number = 25,
			target = 1,
			name = "체력 1 로 웨이브 승리",
			difficulty = "상"
		}),
		var_0_1({
			description = "일반 희귀도 유닛만으로 심판 웨이브 클리어시",
			objectiveType = "normal_units_only_judgement",
			id = "normal_units_only_judgement",
			number = 26,
			target = 1,
			name = "일반 유닛만으로 심판 웨이브 클리어",
			difficulty = "상",
			appearanceCondition = function(arg_25_0)
				return arg_25_0 and (arg_25_0.wave or 1) == 1
			end
		}),
		var_0_1({
			description = "전장에 4성 이상 유닛 1명만으로 웨이브 승리시",
			objectiveType = "win_with_one_4_star",
			id = "win_with_one_4_star",
			number = 27,
			target = 1,
			name = "4성 이상 유닛 1명만으로 웨이브 승리",
			difficulty = "상",
			appearanceCondition = function(arg_26_0)
				if not arg_26_0 or (arg_26_0.wave or 1) > 15 then
					return false
				end

				local var_26_0 = arg_26_0.battlefield

				if var_26_0 and var_26_0.rosterUnits then
					for iter_26_0, iter_26_1 in ipairs(var_26_0.rosterUnits) do
						if (iter_26_1.rank or 1) >= 4 then
							return true
						end
					end
				end

				return false
			end
		}),
		var_0_1({
			description = "유닛 3명 이하로 승리시",
			objectiveType = "win_with_3_or_fewer_units",
			id = "win_with_3_or_fewer_units",
			number = 28,
			target = 1,
			name = "유닛 3명 이하로 승리",
			difficulty = "상",
			appearanceCondition = function(arg_27_0)
				return (arg_27_0.wave or 1) > 5
			end
		})
	}
}
var_0_0.roundSpinQuest = var_0_0.byDifficulty.하[1]

function var_0_0.onRoundStart()
	for iter_28_0, iter_28_1 in pairs(var_0_0.byDifficulty) do
		for iter_28_2, iter_28_3 in ipairs(iter_28_1) do
			if iter_28_3.objectiveType == "round_spin_count" then
				iter_28_3:resetRoundProgress()
			end
		end
	end
end

function var_0_0.resetAllProgress()
	for iter_29_0, iter_29_1 in pairs(var_0_0.byDifficulty) do
		for iter_29_2, iter_29_3 in ipairs(iter_29_1) do
			iter_29_3:resetRoundProgress()
		end
	end
end

function var_0_0.exportState()
	local var_30_0 = {}

	for iter_30_0, iter_30_1 in pairs(var_0_0.byDifficulty) do
		for iter_30_2, iter_30_3 in ipairs(iter_30_1) do
			if iter_30_3.id then
				var_30_0[iter_30_3.id] = {
					current = math.max(0, tonumber(iter_30_3.current or 0) or 0),
					completed = iter_30_3.completed == true
				}
			end
		end
	end

	return var_30_0
end

function var_0_0.importState(arg_31_0)
	var_0_0.resetAllProgress()

	if type(arg_31_0) ~= "table" then
		return false
	end

	for iter_31_0, iter_31_1 in pairs(var_0_0.byDifficulty) do
		for iter_31_2, iter_31_3 in ipairs(iter_31_1) do
			local var_31_0 = iter_31_3.id and arg_31_0[iter_31_3.id] or nil

			if type(var_31_0) == "table" then
				iter_31_3.current = math.max(0, math.min(iter_31_3.target or math.huge, tonumber(var_31_0.current or 0) or 0))
				iter_31_3.completed = var_31_0.completed == true or iter_31_3.current >= (iter_31_3.target or math.huge)
			end
		end
	end

	return true
end

function var_0_0.onSpinUsed(arg_32_0)
	local var_32_0 = arg_32_0 or 1

	for iter_32_0, iter_32_1 in pairs(var_0_0.byDifficulty) do
		for iter_32_2, iter_32_3 in ipairs(iter_32_1) do
			if iter_32_3.objectiveType == "round_spin_count" or iter_32_3.objectiveType == "total_spin_count" then
				iter_32_3:addProgress(var_32_0)
			end
		end
	end
end

function var_0_0.onEssenceChange(arg_33_0)
	for iter_33_0, iter_33_1 in pairs(var_0_0.byDifficulty) do
		for iter_33_2, iter_33_3 in ipairs(iter_33_1) do
			if iter_33_3.objectiveType == "essence_count" then
				iter_33_3:setProgress(arg_33_0)
			end
		end
	end
end

function var_0_0.onUnitsChange(arg_34_0)
	for iter_34_0, iter_34_1 in pairs(var_0_0.byDifficulty) do
		for iter_34_2, iter_34_3 in ipairs(iter_34_1) do
			if iter_34_3.objectiveType == "same_unit_count" then
				iter_34_3:setProgress(arg_34_0)
			end
		end
	end
end

function var_0_0.onUniqueUnitsChange(arg_35_0)
	for iter_35_0, iter_35_1 in pairs(var_0_0.byDifficulty) do
		for iter_35_2, iter_35_3 in ipairs(iter_35_1) do
			if iter_35_3.objectiveType == "unique_unit_count" then
				iter_35_3:setProgress(arg_35_0)
			end
		end
	end
end

function var_0_0.onNudgeUsed()
	for iter_36_0, iter_36_1 in pairs(var_0_0.byDifficulty) do
		for iter_36_2, iter_36_3 in ipairs(iter_36_1) do
			if iter_36_3.objectiveType == "no_nudge_waves" then
				iter_36_3:setProgress(0)
			end
		end
	end
end

function var_0_0.onShopUsed()
	for iter_37_0, iter_37_1 in pairs(var_0_0.byDifficulty) do
		for iter_37_2, iter_37_3 in ipairs(iter_37_1) do
			if iter_37_3.objectiveType == "no_shop_waves" then
				iter_37_3:setProgress(0)
			end
		end
	end
end

function var_0_0.onItemUsed()
	for iter_38_0, iter_38_1 in pairs(var_0_0.byDifficulty) do
		for iter_38_2, iter_38_3 in ipairs(iter_38_1) do
			if iter_38_3.objectiveType == "no_item_waves" then
				iter_38_3:setProgress(0)
			end
		end
	end
end

function var_0_0.onClutchWin()
	for iter_39_0, iter_39_1 in pairs(var_0_0.byDifficulty) do
		for iter_39_2, iter_39_3 in ipairs(iter_39_1) do
			if iter_39_3.objectiveType == "clutch_win" then
				iter_39_3:setProgress(1)
			end
		end
	end
end

function var_0_0.onRosterCompositionChange(arg_40_0, arg_40_1)
	for iter_40_0, iter_40_1 in pairs(var_0_0.byDifficulty) do
		for iter_40_2, iter_40_3 in ipairs(iter_40_1) do
			if iter_40_3.objectiveType == "ranged_units_only" then
				if arg_40_1 and not arg_40_0 then
					iter_40_3:setProgress(1)
				else
					iter_40_3:setProgress(0)
				end
			end
		end
	end
end

function var_0_0.onAbsorb()
	for iter_41_0, iter_41_1 in pairs(var_0_0.byDifficulty) do
		for iter_41_2, iter_41_3 in ipairs(iter_41_1) do
			if iter_41_3.objectiveType == "total_absorb_count" then
				iter_41_3:addProgress(1)
			elseif iter_41_3.objectiveType == "no_absorb_waves" then
				iter_41_3:setProgress(0)
			end
		end
	end
end

function var_0_0.onAdvancedPromotion()
	for iter_42_0, iter_42_1 in pairs(var_0_0.byDifficulty) do
		for iter_42_2, iter_42_3 in ipairs(iter_42_1) do
			if iter_42_3.objectiveType == "advanced_promotion" then
				iter_42_3:addProgress(1)
			end
		end
	end
end

function var_0_0.onRosterAbsorbChange(arg_43_0)
	for iter_43_0, iter_43_1 in pairs(var_0_0.byDifficulty) do
		for iter_43_2, iter_43_3 in ipairs(iter_43_1) do
			if iter_43_3.objectiveType == "units_with_absorb_count" then
				iter_43_3:setProgress(arg_43_0)
			end
		end
	end
end

function var_0_0.onWaveEnd(arg_44_0)
	local var_44_0 = arg_44_0 and arg_44_0.allyDeaths or 0
	local var_44_1 = arg_44_0 and arg_44_0.survivors or 0
	local var_44_2 = (arg_44_0 and arg_44_0.victory) == true
	local var_44_3 = (arg_44_0 and arg_44_0.usedOnlyNormalUnits) == true

	for iter_44_0, iter_44_1 in pairs(var_0_0.byDifficulty) do
		for iter_44_2, iter_44_3 in ipairs(iter_44_1) do
			if iter_44_3.objectiveType == "wave_deaths_le_1" then
				if var_44_2 and var_44_0 <= 1 then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "win_with_one_survivor" then
				if var_44_2 and var_44_1 == 1 then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "win_with_1_hp" then
				if var_44_2 and arg_44_0 and arg_44_0.basehp == 1 then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "normal_units_only_judgement" then
				if var_44_2 and arg_44_0 and arg_44_0.waveId and arg_44_0.waveId % 10 == 5 and var_44_3 then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "win_with_one_4_star" then
				if var_44_2 and arg_44_0 and arg_44_0.rosterCount == 1 and arg_44_0.maxRank and arg_44_0.maxRank >= 4 then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "win_with_3_or_fewer_units" then
				if var_44_2 and arg_44_0 and arg_44_0.rosterCount and arg_44_0.rosterCount <= 3 then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "normal_units_only_waves" then
				if var_44_2 then
					if var_44_3 then
						iter_44_3:addProgress(1)
					else
						iter_44_3:setProgress(0)
					end
				end
			elseif iter_44_3.objectiveType == "no_absorb_waves" then
				if var_44_2 then
					iter_44_3:addProgress(1)
				end
			elseif iter_44_3.objectiveType == "no_nudge_waves" then
				if var_44_2 then
					iter_44_3:addProgress(1)
				end
			elseif iter_44_3.objectiveType == "no_shop_waves" then
				if var_44_2 then
					iter_44_3:addProgress(1)
				end
			elseif iter_44_3.objectiveType == "no_item_waves" then
				if var_44_2 then
					iter_44_3:addProgress(1)
				end
			elseif iter_44_3.objectiveType == "ranged_only" then
				if var_44_2 and arg_44_0.hasRanged and not arg_44_0.hasMelee then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "win_with_5_or_fewer_units" then
				if var_44_2 and (arg_44_0.rosterCount or 0) <= 5 then
					iter_44_3:setProgress(1)
				end
			elseif iter_44_3.objectiveType == "reach_wave_10_no_3_star" and var_44_2 then
				if (arg_44_0.maxRank or 0) < 3 then
					iter_44_3:setProgress(arg_44_0.waveId or 0)
				else
					iter_44_3:setProgress(0)
				end
			end
		end
	end
end

function var_0_0.onMaxImprintsChange(arg_45_0)
	for iter_45_0, iter_45_1 in pairs(var_0_0.byDifficulty) do
		for iter_45_2, iter_45_3 in ipairs(iter_45_1) do
			if iter_45_3.objectiveType == "max_imprint_count" then
				if arg_45_0 >= 3 then
					iter_45_3:setProgress(1)
				else
					iter_45_3:setProgress(0)
				end
			end
		end
	end
end

function var_0_0.onMaxRankChange(arg_46_0)
	for iter_46_0, iter_46_1 in pairs(var_0_0.byDifficulty) do
		for iter_46_2, iter_46_3 in ipairs(iter_46_1) do
			if iter_46_3.objectiveType == "max_rank_count" then
				if arg_46_0 >= 2 then
					iter_46_3:setProgress(1)
				else
					iter_46_3:setProgress(0)
				end
			end
		end
	end
end

function var_0_0.onMaxAbsorbedUniqueSymbolsChange(arg_47_0)
	for iter_47_0, iter_47_1 in pairs(var_0_0.byDifficulty) do
		for iter_47_2, iter_47_3 in ipairs(iter_47_1) do
			if iter_47_3.objectiveType == "absorber_unique_symbols_3" then
				if arg_47_0 >= 3 then
					iter_47_3:setProgress(1)
				else
					iter_47_3:setProgress(0)
				end
			end
		end
	end
end

return var_0_0
