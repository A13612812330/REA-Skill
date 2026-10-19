local var_0_0 = {
	defs = {
		{
			desc = "유닛 스폰 확률이 변경됩니다: 일반 60%, 고급 30%, 희귀 8.5%, 전설 1%, 프리즘 0.5%",
			id = "01",
			name = "근원 스톤 (Origin Stone)",
			icon = "src/sprites/icons/stoneicon/01Origin Stone.png",
			key = "OriginStone",
			questRequirements = {
				difficulty = "하",
				questNumbers = {
					1,
					2,
					6,
					11
				}
			},
			glowColor = {
				0.35,
				0.75,
				1,
				1
			},
			effect = {
				type = "unit_spawn_probability",
				probabilities = {
					normal = 0.6,
					rare = 0.085,
					prism = 0.005,
					legendary = 0.01,
					advanced = 0.3
				}
			}
		},
		{
			desc = "유닛 스폰 확률이 변경됩니다: 일반 50%, 고급 35%, 희귀 13.5%, 전설 1%, 프리즘 0.5%",
			id = "08",
			name = "마일 스톤 (MileStone)",
			icon = "src/sprites/icons/stoneicon/08Milestone.png",
			key = "MileStone",
			questRequirements = {
				difficulty = "중",
				questNumbers = {
					13,
					14,
					15,
					16,
					17,
					18,
					19,
					20,
					21,
					22,
					23
				}
			},
			glowColor = {
				0.8,
				0.8,
				0.8,
				1
			},
			effect = {
				type = "unit_spawn_probability",
				probabilities = {
					normal = 0.5,
					rare = 0.135,
					prism = 0.005,
					legendary = 0.01,
					advanced = 0.35
				}
			}
		},
		{
			desc = "유닛 스폰 확률이 변경됩니다: 일반 40%, 고급 40%, 희귀 16.5%, 전설 3%, 프리즘 0.5%",
			id = "14",
			name = "축복 스톤 (Blessing Stone)",
			icon = "src/sprites/icons/stoneicon/14Blessing Stone.png",
			key = "BlessingStone",
			questRequirements = {
				difficulty = "상",
				questNumbers = {
					24,
					25,
					26,
					27,
					28
				}
			},
			glowColor = {
				1,
				0.84,
				0,
				1
			},
			effect = {
				type = "unit_spawn_probability",
				probabilities = {
					normal = 0.4,
					rare = 0.165,
					prism = 0.005,
					legendary = 0.03,
					advanced = 0.4
				}
			}
		}
	}
}

function var_0_0.getAll()
	return var_0_0.defs
end

function var_0_0.get(arg_2_0)
	for iter_2_0, iter_2_1 in ipairs(var_0_0.defs) do
		if iter_2_1.id == arg_2_0 or iter_2_1.key == arg_2_0 then
			return iter_2_1
		end
	end

	return nil
end

function var_0_0.getRandomQuestNumber(arg_3_0, arg_3_1)
	local var_3_0 = var_0_0.get(arg_3_0)

	if var_3_0 and var_3_0.questRequirements then
		local var_3_1 = var_3_0.questRequirements.questNumbers

		if var_3_1 and #var_3_1 > 0 then
			if arg_3_1 then
				local var_3_2 = require("src.game.quest")
				local var_3_3 = var_3_0.questRequirements.difficulty
				local var_3_4 = var_3_2.byDifficulty[var_3_3]

				if var_3_4 then
					local var_3_5 = {}

					for iter_3_0, iter_3_1 in ipairs(var_3_1) do
						for iter_3_2, iter_3_3 in ipairs(var_3_4) do
							if iter_3_3.number == iter_3_1 then
								if not iter_3_3.appearanceCondition or iter_3_3.appearanceCondition(arg_3_1) then
									var_3_5[#var_3_5 + 1] = iter_3_1
								end

								break
							end
						end
					end

					if #var_3_5 > 0 then
						return var_3_5[love.math.random(#var_3_5)]
					end
				end
			end

			return var_3_1[love.math.random(#var_3_1)]
		end
	end

	return nil
end

function var_0_0.getQuestDef(arg_4_0, arg_4_1)
	local var_4_0 = var_0_0.get(arg_4_0)

	if not var_4_0 or not var_4_0.questRequirements then
		return nil
	end

	local var_4_1 = require("src.game.quest")
	local var_4_2 = var_4_0.questRequirements.difficulty
	local var_4_3 = var_4_1.byDifficulty[var_4_2]

	if not var_4_3 then
		return nil
	end

	for iter_4_0, iter_4_1 in ipairs(var_4_3) do
		if iter_4_1.number == arg_4_1 then
			return iter_4_1
		end
	end

	return nil
end

function var_0_0.applySpawnEffect(arg_5_0, arg_5_1)
	local var_5_0 = var_0_0.get(arg_5_0)

	if var_5_0 and var_5_0.effect and var_5_0.effect.type == "unit_spawn_probability" then
		return var_5_0.effect.probabilities
	end

	return arg_5_1
end

return var_0_0
