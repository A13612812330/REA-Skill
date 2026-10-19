local var_0_0 = {}
local var_0_1 = require("src.data.skill")
local var_0_2 = require("src.data.faction")

var_0_0.waveMessages = {
	"균형이 흔들린다",
	"흐름이 변하고 있다",
	"새로운 회로가 열렸다",
	"기운이 응축된다",
	"형태가 바뀌기 시작한다",
	"기운이 응축된다",
	"조용한 진동이 퍼진다",
	"빛의 결이 달라졌다",
	"다른 층위가 감지된다",
	"정지된 파동이 깨어난다",
	"계산되지 않은 변화가 다가온다",
	"고요 속에 진동이 남는다",
	"공기가 흔들린다",
	"새로운 패턴이 떠오른다"
}

function var_0_0.getWaveMessage(arg_1_0, arg_1_1)
	if not var_0_0.waveMessages or not var_0_0.waveMessages[arg_1_0] then
		return nil
	end

	return require("src.data.language").getText("core_wave_message." .. arg_1_0, arg_1_1 or _G.currentGameLang or "ko")
end

function var_0_0.getRandomWaveMessage(arg_2_0, arg_2_1)
	local var_2_0 = var_0_0.waveMessages or {}

	if not var_2_0 or #var_2_0 == 0 then
		return nil
	end

	local var_2_1 = love.math.random(1, #var_2_0)

	return var_0_0.getWaveMessage(var_2_1, arg_2_1), var_2_1
end

function var_0_0.resolveDominantAxis(arg_3_0)
	if not arg_3_0 then
		return "hp"
	end

	local var_3_0 = arg_3_0.HP_count or 0
	local var_3_1 = arg_3_0.ATK_count or 0
	local var_3_2 = arg_3_0.ASPD_count or 0
	local var_3_3 = 2
	local var_3_4 = {}

	if var_3_3 <= var_3_0 or var_3_1 <= var_3_0 and var_3_2 <= var_3_0 then
		table.insert(var_3_4, "hp")
	end

	if var_3_3 <= var_3_1 or var_3_0 <= var_3_1 and var_3_2 <= var_3_1 then
		table.insert(var_3_4, "atk")
	end

	if var_3_3 <= var_3_2 or var_3_0 <= var_3_2 and var_3_1 <= var_3_2 then
		table.insert(var_3_4, "aspd")
	end

	local var_3_5 = {}
	local var_3_6 = {}

	for iter_3_0, iter_3_1 in ipairs(var_3_4) do
		if not var_3_5[iter_3_1] then
			var_3_5[iter_3_1] = true

			table.insert(var_3_6, iter_3_1)
		end
	end

	local var_3_7 = var_3_6

	if #var_3_7 == 1 then
		return var_3_7[1]
	end

	local function var_3_8(arg_4_0)
		if arg_4_0 == "W" then
			return "hp"
		elseif arg_4_0 == "S" then
			return "atk"
		elseif arg_4_0 == "A" then
			return "aspd"
		end

		return nil
	end

	local var_3_9 = var_3_8(arg_3_0.lastAbsorbType)

	if var_3_9 then
		for iter_3_2, iter_3_3 in ipairs(var_3_7) do
			if iter_3_3 == var_3_9 then
				return iter_3_3
			end
		end
	end

	local var_3_10 = var_3_8(arg_3_0.sym)

	if var_3_10 then
		for iter_3_4, iter_3_5 in ipairs(var_3_7) do
			if iter_3_5 == var_3_10 then
				return iter_3_5
			end
		end
	end

	return var_3_7[love.math.random(1, #var_3_7)]
end

function var_0_0.buildKnightOptionsForAxis(arg_5_0)
	local var_5_0 = {
		hp = {
			id = "MiniSwordMan03",
			name = "기사"
		},
		atk = {
			id = "공허기사",
			name = "공허기사"
		},
		aspd = {
			id = "엘프기사",
			name = "엘프기사"
		}
	}
	local var_5_1 = {
		hp = {
			{
				id = "암기사",
				name = "암기사"
			},
			{
				id = "성기사",
				name = "성기사"
			}
		},
		atk = {
			{
				id = "화염기사",
				name = "화염기사"
			},
			{
				id = "사신기사",
				name = "사신기사"
			}
		},
		aspd = {
			{
				id = "해골 투사",
				name = "해골 투사"
			},
			{
				id = "야수기사",
				name = "야수기사"
			}
		}
	}
	local var_5_2 = {
		{
			id = "MiniSwordMan03",
			name = "기사"
		},
		{
			id = "암기사",
			name = "암기사"
		},
		{
			id = "성기사",
			name = "성기사"
		},
		{
			id = "공허기사",
			name = "공허기사"
		},
		{
			id = "화염기사",
			name = "화염기사"
		},
		{
			id = "사신기사",
			name = "사신기사"
		},
		{
			id = "엘프기사",
			name = "엘프기사"
		},
		{
			id = "해골 투사",
			name = "해골 투사"
		},
		{
			id = "야수기사",
			name = "야수기사"
		}
	}
	local var_5_3, var_5_4 = var_5_0[arg_5_0] or var_5_0.hp, var_5_1[arg_5_0] or var_5_1.hp
	local var_5_5 = var_5_4[love.math.random(1, #var_5_4)]
	local var_5_6 = {}

	local function var_5_7(arg_6_0)
		return arg_6_0.id ~= var_5_3.id and arg_6_0.id ~= var_5_5.id
	end

	for iter_5_0, iter_5_1 in ipairs(var_5_2) do
		if var_5_7(iter_5_1) then
			table.insert(var_5_6, iter_5_1)
		end
	end

	local var_5_8 = var_5_6[love.math.random(1, #var_5_6)]

	return {
		var_5_3,
		var_5_5,
		var_5_8
	}
end

function var_0_0.getPromotionOptions(arg_7_0, arg_7_1)
	if not arg_7_0 then
		return nil
	end

	local function var_7_0(arg_8_0)
		if not arg_8_0 then
			return arg_8_0
		end

		if arg_8_0.skillIcon and arg_8_0.skillIcon ~= "" then
			return arg_8_0
		end

		local var_8_0 = var_0_1.getSkillsForUnit({
			subclass = arg_8_0.id,
			subclassKey = arg_8_0.asset or arg_8_0.id,
			subclassName = arg_8_0.name,
			id = arg_8_0.id,
			name = arg_8_0.name
		})

		if var_8_0 and var_8_0[1] and var_8_0[1].icon then
			arg_8_0.skillIcon = var_8_0[1].icon
		end

		return arg_8_0
	end

	local function var_7_1(arg_9_0)
		for iter_9_0, iter_9_1 in ipairs(arg_9_0) do
			var_7_0(iter_9_1)

			iter_9_1.faction = var_0_2.getForChoice(iter_9_1, arg_7_1)
		end

		return arg_9_0
	end

	if (arg_7_0.sym == "Joker" or arg_7_0.sym == "J") and arg_7_1 == 3 then
		local var_7_2 = arg_7_0.subclass == "Trickster" or arg_7_0.subclassName == "트릭스터" or arg_7_0.subclassKey == "Trickster"
		local var_7_3 = arg_7_0.subclass == "FerretTamer" or arg_7_0.subclassName == "페럿 조련사" or arg_7_0.subclassKey == "FerretTamer"

		if var_7_2 then
			return var_7_1({
				{
					classType = "지원형",
					asset = "Illusionist",
					id = "Illusionist",
					name = "환술사",
					statArrows = {
						atk = 3,
						distance = 1,
						hp = 3,
						aspd = 0
					}
				}
			})
		elseif var_7_3 then
			return var_7_1({
				{
					classType = "소환형",
					asset = "Ringmaster",
					id = "Ringmaster",
					name = "서커스 단장",
					statArrows = {
						atk = 2,
						distance = 0,
						hp = 3,
						aspd = 0
					}
				}
			})
		end

		return nil
	end

	if (arg_7_0.sym == "Joker" or arg_7_0.sym == "J") and arg_7_1 == 2 then
		return var_7_1({
			{
				classType = "지원형",
				asset = "Trickster",
				id = "Trickster",
				name = "트릭스터",
				statArrows = {
					atk = 2,
					distance = 1,
					hp = 2,
					aspd = -1
				}
			},
			{
				classType = "소환형",
				asset = "FerretTamer",
				id = "FerretTamer",
				name = "페럿 조련사",
				statArrows = {
					atk = 1,
					distance = 0,
					hp = 3,
					aspd = 0
				}
			}
		})
	end

	if arg_7_0.sym == "W" then
		if arg_7_1 == 5 then
			local var_7_4 = arg_7_0.subclass == "드루이드" or arg_7_0.subclassName == "드루이드" or arg_7_0.subclassKey == "드루이드"
			local var_7_5 = arg_7_0.subclass == "암검사" or arg_7_0.subclassName == "암검사" or arg_7_0.subclassKey == "암검사"
			local var_7_6 = arg_7_0.subclass == "마검사" or arg_7_0.subclassName == "마검사" or arg_7_0.subclassKey == "마검사"

			if var_7_4 or var_7_5 or var_7_6 then
				return var_7_1({
					{
						name = "마그누스",
						asset = "마그누스",
						id = "마그누스"
					}
				})
			end
		end

		if arg_7_1 == 4 then
			local var_7_7 = arg_7_0.subclass == "MiniSwordMan03" or arg_7_0.subclassName == "기사" or arg_7_0.subclassKey == "MiniSwordMan03"
			local var_7_8 = arg_7_0.subclass == "성기사" or arg_7_0.subclassName == "성기사" or arg_7_0.subclassKey == "성기사"
			local var_7_9 = arg_7_0.subclass == "엘프기사" or arg_7_0.subclassName == "엘프기사" or arg_7_0.subclassKey == "엘프기사"
			local var_7_10 = arg_7_0.subclass == "해골 투사" or arg_7_0.subclassName == "해골 투사" or arg_7_0.subclassKey == "해골 투사" or arg_7_0.subclass == "해골기사" or arg_7_0.subclassName == "해골기사" or arg_7_0.subclassKey == "해골기사"

			if var_7_7 then
				return var_7_1({
					{
						name = "플레어",
						asset = "플레어",
						id = "플레어"
					}
				})
			elseif var_7_8 then
				return var_7_1({
					{
						name = "팔라딘",
						skillDesc = "3초마다 모든 아군에게 2초간 받는 피해 20% 감소 보호막 부여",
						id = "팔라딘",
						skillName = "천상의 보호",
						asset = "팔라딘"
					},
					{
						name = "레버넌트",
						skillDesc = "공격 시 20% 확률로 준 피해의 50%만큼 광역 피해",
						id = "레버넌트",
						skillName = "심연의 복수",
						asset = "레버넌트"
					}
				})
			elseif var_7_9 then
				return var_7_1({
					{
						name = "드루이드",
						skillDesc = "공격 시 25% 확률로 대상을 관통하는 검기 발사",
						id = "드루이드",
						skillName = "바람의 상처",
						asset = "드루이드"
					}
				})
			elseif var_7_10 then
				return var_7_1({
					{
						classType = "균형형",
						skillDesc = "3초마다 주변 적들에게 ATK 60% 피해를 입히고 1초간 둔화시킵니다",
						id = "마검사",
						skillName = "공포의 시선",
						name = "마검사",
						asset = "마검사",
						statArrows = {
							atk = 3,
							distance = 0,
							hp = 3,
							aspd = 1
						}
					},
					{
						classType = "치명형",
						skillDesc = "공격 시 15% 확률로 대상을 1.5초간 침묵 상태로 만듭니다",
						id = "암검사",
						skillName = "어둠의 침묵",
						name = "암검사",
						asset = "암검사",
						statArrows = {
							atk = 5,
							distance = 0,
							hp = 2,
							aspd = -2
						}
					}
				})
			end
		end

		if arg_7_1 == 2 then
			local var_7_11 = false

			for iter_7_0, iter_7_1 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_12 = arg_7_0[iter_7_1]

				if var_7_12 == "슬레이어" or var_7_12 == "Slayer" or var_7_12 == "슬레이어 (Slayer)" then
					var_7_11 = true

					break
				end
			end

			if var_7_11 or (arg_7_0.grade == "prism" or arg_7_0.jackpot5th == true) and not arg_7_0.subclass and not arg_7_0.subclassName and not arg_7_0.subclassKey then
				return var_7_1({
					{
						classType = "공속형",
						asset = "듀라한",
						id = "듀라한",
						name = "듀라한",
						keepStatArrows = true,
						statArrows = {
							atk = 2,
							distance = 0,
							hp = 2,
							aspd = 4
						}
					},
					{
						classType = "방어형",
						asset = "백기사",
						id = "백기사",
						name = "백기사",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 0,
							hp = 4,
							aspd = -1
						}
					}
				})
			end

			local var_7_13 = arg_7_0.subclass == "철퇴병" or arg_7_0.subclassName == "철퇴병" or arg_7_0.subclassKey == "철퇴병"
			local var_7_14 = arg_7_0.subclass == "투사" or arg_7_0.subclassName == "투사" or arg_7_0.subclassKey == "투사"
			local var_7_15 = arg_7_0.subclass == "해골 투사" or arg_7_0.subclassName == "해골 투사" or arg_7_0.subclassKey == "해골 투사" or arg_7_0.subclass == "해골기사" or arg_7_0.subclassName == "해골기사" or arg_7_0.subclassKey == "해골기사"

			return var_7_1({
				{
					skillName = "승급 특성",
					id = var_7_13 and "엘프병사" or var_7_14 and "성기사" or var_7_15 and "마검사" or "MiniSwordMan02",
					name = var_7_13 and "엘프병사" or var_7_14 and "성기사" or var_7_15 and "마검사" or "병사",
					asset = var_7_13 and "엘프병사" or var_7_14 and "성기사" or var_7_15 and "마검사" or "MiniSwordMan02",
					classType = var_7_15 and "균형형" or nil,
					statArrows = var_7_15 and {
						atk = 3,
						distance = 0,
						hp = 3,
						aspd = 1
					} or nil,
					skillDesc = var_7_13 and "민첩 특화 승급" or var_7_14 and "성역 수호 특화 승급" or var_7_15 and "공포 시선 특화 승급" or "기본 전사 상위 승급"
				},
				{
					id = var_7_13 and "사수 병사" or var_7_14 and "염투사" or var_7_15 and "암검사" or "해적",
					name = var_7_13 and "사수 병사" or var_7_14 and "염투사" or var_7_15 and "암검사" or "해적",
					asset = var_7_13 and "사수 병사" or var_7_14 and "염투사" or var_7_15 and "암검사" or "해적",
					classType = var_7_15 and "치명형" or nil,
					statArrows = var_7_15 and {
						atk = 5,
						distance = 0,
						hp = 2,
						aspd = -2
					} or nil,
					skillName = var_7_13 and "승급 특성" or var_7_14 and "승급 특성" or var_7_15 and "승급 특성" or "칼날 파동",
					skillDesc = var_7_13 and "자연 특화 승급" or var_7_14 and "화염 수호 특화 승급" or var_7_15 and "침묵 오라 특화 승급" or "4초마다 공격력 100%를 최대 2명에게 파동 타격"
				}
			})
		end

		if arg_7_1 == 3 then
			for iter_7_2, iter_7_3 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_16 = arg_7_0[iter_7_3]

				if var_7_16 == "듀라한" or var_7_16 == "Dullahan" or var_7_16 == "듀라한 (Dullahan)" then
					return var_7_1({
						{
							classType = "공속형",
							asset = "팬텀",
							id = "팬텀",
							name = "팬텀",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 1,
								aspd = 5
							}
						}
					})
				elseif var_7_16 == "백기사" or var_7_16 == "White Knight" or var_7_16 == "백기사 (White Knight)" then
					return var_7_1({
						{
							classType = "방어형",
							asset = "성배기사",
							id = "성배기사",
							name = "성배기사",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 5,
								aspd = -2
							}
						}
					})
				end
			end
		end

		if arg_7_0.subclass == "MiniSwordMan02" or arg_7_0.subclassName == "병사" or arg_7_0.subclassKey == "MiniSwordMan02" then
			return var_7_1({
				{
					name = "기사",
					skillDesc = "4초마다 1.5초간 모든 피해를 막고 공격한 적에게 피해 반사",
					id = "MiniSwordMan03",
					skillName = "반격 태세",
					asset = "MiniSwordMan03"
				}
			})
		end

		if arg_7_0.subclass == "해적" or arg_7_0.subclassName == "해적" or arg_7_0.subclassKey == "해적" then
			return var_7_1({
				{
					name = "해적왕",
					skillDesc = "전방으로 ATK 130% 폭풍의 칼날을 날려 최대 3명 피해",
					id = "해적왕",
					skillName = "폭풍의 칼날",
					asset = "해적왕"
				}
			})
		end

		if arg_7_0.subclass == "엘프병사" or arg_7_0.subclassName == "엘프병사" or arg_7_0.subclassKey == "엘프병사" then
			return var_7_1({
				{
					name = "엘프기사",
					skillDesc = "1.5초마다 ATK 110% 연속 베기",
					id = "엘프기사",
					skillName = "질풍 연격",
					asset = "엘프기사"
				}
			})
		end

		if arg_7_0.subclass == "사수 병사" or arg_7_0.subclassName == "사수 병사" or arg_7_0.subclassKey == "사수 병사" then
			return var_7_1({
				{
					name = "바그",
					skillDesc = "자연의 힘으로 각성한 상위 승급",
					id = "바그",
					skillName = "자연의 맹세",
					asset = "바그"
				}
			})
		end

		if arg_7_0.subclass == "성기사" or arg_7_0.subclassName == "성기사" or arg_7_0.subclassKey == "성기사" then
			return var_7_1({
				{
					name = "템플러",
					skillDesc = "신격에 각성한 단일 상위 승급",
					id = "템플러",
					skillName = "신성 강림",
					asset = "템플러"
				}
			})
		end

		if arg_7_0.subclass == "염투사" or arg_7_0.subclassName == "염투사" or arg_7_0.subclassKey == "염투사" then
			return var_7_1({
				{
					name = "플레어",
					skillDesc = "화염의 힘으로 각성한 단일 상위 승급",
					id = "플레어",
					skillName = "화염 각성",
					asset = "플레어"
				}
			})
		end

		if arg_7_0.subclass == "마검사" or arg_7_0.subclassName == "마검사" or arg_7_0.subclassKey == "마검사" then
			return var_7_1({
				{
					classType = "증폭형",
					skillDesc = "심연의 눈을 뜬 단일 상위 승급",
					id = "게이즈",
					skillName = "심연의 응시",
					name = "게이즈",
					asset = "게이즈",
					statArrows = {
						atk = 4,
						distance = 0,
						hp = 3,
						aspd = 1
					}
				}
			})
		end

		if arg_7_0.subclass == "암검사" or arg_7_0.subclassName == "암검사" or arg_7_0.subclassKey == "암검사" then
			return var_7_1({
				{
					classType = "범위형",
					skillDesc = "어둠의 힘을 완성한 단일 상위 승급",
					id = "마그누스",
					skillName = "심연의 군주",
					name = "마그누스",
					asset = "마그누스",
					statArrows = {
						atk = 4,
						distance = 1,
						hp = 5,
						aspd = -4
					}
				}
			})
		end

		local var_7_17 = {
			name = "기사",
			skillDesc = "4초마다 1.5초간 모든 피해를 막고 공격한 적에게 피해 반사",
			id = "MiniSwordMan03",
			skillName = "반격 태세",
			asset = "MiniSwordMan03"
		}
		local var_7_18 = {
			{
				name = "암기사",
				skillDesc = "다음 공격 피해의 25% 회복 (재사용 2초)",
				id = "암기사",
				skillName = "암영 흡혈",
				asset = "암기사"
			},
			{
				name = "성기사",
				skillDesc = "1초마다 최저 체력 아군 HP 2% 회복",
				id = "성기사",
				skillName = "성스러운 회복",
				asset = "성기사"
			}
		}
		local var_7_19 = love.math.random(1, #var_7_18)
		local var_7_20 = var_7_18[var_7_19]
		local var_7_21 = var_7_18[var_7_19 == 1 and 2 or 1]

		return var_7_1({
			var_7_17,
			var_7_20,
			var_7_21
		})
	elseif arg_7_0.sym == "A" then
		if arg_7_1 == 2 then
			if require("src.game.projectiles").gunslinger_bullet.isSharpshooter(arg_7_0) or (arg_7_0.grade == "prism" or arg_7_0.jackpot5th == true) and not arg_7_0.subclass and not arg_7_0.subclassName and not arg_7_0.subclassKey then
				return var_7_1({
					{
						classType = "지원형",
						asset = "큐피드",
						id = "큐피드",
						name = "큐피드",
						keepStatArrows = true,
						statArrows = {
							atk = 2,
							distance = 0,
							hp = 2,
							aspd = 2
						}
					},
					{
						classType = "공격형",
						asset = "은빛사수",
						id = "은빛사수",
						name = "은빛사수",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 3,
							hp = 1,
							aspd = -3
						}
					}
				})
			end

			for iter_7_4, iter_7_5 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_22 = arg_7_0[iter_7_5]

				if var_7_22 == "해골궁수" or var_7_22 == "Skeleton Archer" or var_7_22 == "해골궁수 (Skeleton Archer)" then
					return var_7_1({
						{
							classType = "공속형",
							asset = "암흑사수",
							id = "암흑사수",
							name = "암흑사수",
							statArrows = {
								atk = 2,
								distance = 0,
								hp = 2,
								aspd = 3
							}
						},
						{
							classType = "공격형",
							asset = "환영사수",
							id = "환영사수",
							name = "환영사수",
							statArrows = {
								atk = 4,
								distance = 1,
								hp = 1,
								aspd = -3
							}
						}
					})
				end
			end

			if arg_7_0.subclass == "총포수" or arg_7_0.subclassName == "총포수" or arg_7_0.subclassKey == "총포수" then
				return var_7_1({
					{
						name = "화포수",
						asset = "화포수",
						id = "화포수"
					},
					{
						name = "척탄병",
						asset = "척탄병",
						id = "척탄병"
					}
				})
			end

			if arg_7_0.subclass == "정찰병" or arg_7_0.subclassName == "정찰병" or arg_7_0.subclassKey == "정찰병" then
				return var_7_1({
					{
						name = "엘프 궁수",
						skillDesc = "자연의 기운을 깃든 정찰병 상위 승급",
						id = "엘프 궁수",
						skillName = "승급 특성",
						asset = "엘프 궁수"
					},
					{
						name = "레인저",
						skillDesc = "빠른 연사력을 지닌 정찰병 상위 승급",
						id = "레인저",
						skillName = "승급 특성",
						asset = "레인저"
					}
				})
			end

			return var_7_1({
				{
					name = "석궁수",
					skillDesc = "2개의 화살로 최대 2명에게 각 80% 피해",
					id = "MiniArcherMan02",
					skillName = "멀티샷",
					asset = "MiniArcherMan02"
				},
				{
					name = "순찰자",
					skillDesc = "적의 약점을 노려 ATK 180% 피해",
					id = "순찰자",
					skillName = "정밀 사격",
					asset = "순찰자"
				}
			})
		end

		if arg_7_1 == 3 then
			if require("src.game.projectiles").gunslinger_bullet.isSilverSniper(arg_7_0) then
				return var_7_1({
					{
						classType = "공격형",
						asset = "이클립스",
						id = "이클립스",
						name = "이클립스",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 4,
							hp = 2,
							aspd = 0
						}
					}
				})
			end

			if require("src.game.projectiles").gunslinger_bullet.isCupid(arg_7_0) then
				return var_7_1({
					{
						classType = "지원형",
						asset = "세라프",
						id = "세라프",
						name = "세라프",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 0,
							hp = 3,
							aspd = 1
						}
					}
				})
			end

			local var_7_23 = arg_7_0.subclass == "MiniArcherMan02" or arg_7_0.subclassName == "석궁수" or arg_7_0.subclassKey == "MiniArcherMan02"

			for iter_7_6, iter_7_7 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_24 = arg_7_0[iter_7_7]

				if var_7_24 == "암흑사수" or var_7_24 == "Dark Archer" or var_7_24 == "암흑사수 (Dark Archer)" then
					return var_7_1({
						{
							classType = "공속형",
							asset = "레이븐",
							id = "레이븐",
							name = "레이븐",
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 3,
								aspd = 3
							}
						}
					})
				elseif var_7_24 == "환영사수" or var_7_24 == "Illusion Archer" or var_7_24 == "환영사수 (Illusion Archer)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "미라지",
							id = "미라지",
							name = "미라지",
							statArrows = {
								atk = 4,
								distance = 0,
								hp = 3,
								aspd = 0
							}
						}
					})
				end
			end

			if arg_7_0.subclass == "화포수" or arg_7_0.subclassName == "화포수" or arg_7_0.subclassKey == "화포수" then
				return var_7_1({
					{
						name = "캐노니어",
						asset = "캐노니어",
						id = "캐노니어"
					}
				})
			end

			if arg_7_0.subclass == "척탄병" or arg_7_0.subclassName == "척탄병" or arg_7_0.subclassKey == "척탄병" then
				return var_7_1({
					{
						name = "폭파대장",
						asset = "폭파대장",
						id = "폭파대장"
					}
				})
			end

			local var_7_25 = arg_7_0.subclass == "순찰자" or arg_7_0.subclassName == "순찰자" or arg_7_0.subclassKey == "순찰자"
			local var_7_26 = arg_7_0.subclass == "엘프궁수" or arg_7_0.subclassName == "엘프궁수" or arg_7_0.subclassKey == "엘프궁수" or arg_7_0.subclass == "엘프 궁수" or arg_7_0.subclassName == "엘프 궁수" or arg_7_0.subclassKey == "엘프 궁수"
			local var_7_27 = arg_7_0.subclass == "레인저" or arg_7_0.subclassName == "레인저" or arg_7_0.subclassKey == "레인저"

			if var_7_23 then
				return var_7_1({
					{
						name = "장궁병",
						skillDesc = "3개의 화살로 최대 3명에게 각 100% 피해",
						id = "MiniArcherMan03",
						skillName = "트리플샷",
						asset = "MiniArcherMan03"
					}
				})
			end

			if var_7_25 then
				return var_7_1({
					{
						name = "명사수",
						skillDesc = "적의 약점을 노려 공격력의 180% 피해",
						id = "명사수",
						skillName = "정밀 사격",
						asset = "명사수"
					}
				})
			end

			if var_7_26 then
				return var_7_1({
					{
						name = "하이 엘프",
						asset = "하이 엘프",
						id = "하이 엘프"
					}
				})
			end

			if var_7_27 then
				return var_7_1({
					{
						name = "데드아이",
						asset = "데드아이",
						id = "데드아이"
					}
				})
			end
		end

		if arg_7_1 == 4 then
			local var_7_28 = arg_7_0.subclass == "MiniArcherMan03" or arg_7_0.subclassName == "장궁병" or arg_7_0.subclassKey == "MiniArcherMan03"
			local var_7_29 = arg_7_0.subclass == "순찰자" or arg_7_0.subclassName == "순찰자" or arg_7_0.subclassKey == "순찰자"
			local var_7_30 = arg_7_0.subclass == "엘프 사수" or arg_7_0.subclassName == "엘프 사수" or arg_7_0.subclassKey == "엘프 사수"
			local var_7_31 = arg_7_0.subclass == "해골 사수" or arg_7_0.subclassName == "해골 사수" or arg_7_0.subclassKey == "해골 사수"

			if var_7_28 or var_7_29 then
				return var_7_1({
					{
						name = "로빈 후드",
						asset = "로빈 후드",
						id = "로빈 후드"
					}
				})
			elseif var_7_30 or var_7_31 then
				return var_7_1({
					{
						name = "바이올",
						asset = "바이올",
						id = "바이올"
					}
				})
			end
		end

		if arg_7_1 == 5 then
			local var_7_32 = arg_7_0.subclass == "로빈 후드" or arg_7_0.subclassName == "로빈 후드" or arg_7_0.subclassKey == "로빈 후드"
			local var_7_33 = arg_7_0.subclass == "바이올" or arg_7_0.subclassName == "바이올" or arg_7_0.subclassKey == "바이올"

			if var_7_32 then
				return var_7_1({
					{
						name = "그린 섀도우",
						asset = "그린 섀도우",
						id = "그린 섀도우"
					}
				})
			end

			if var_7_33 then
				return var_7_1({
					{
						name = "바이올렛 둠",
						asset = "바이올렛 둠",
						id = "바이올렛 둠"
					}
				})
			end
		end

		local function var_7_34(arg_10_0)
			local var_10_0 = {
				name = "장궁병",
				asset = "MiniArcherMan03",
				id = "MiniArcherMan03"
			}
			local var_10_1 = {
				name = "명사수",
				skillDesc = "약해진 적을 노려 강한 한 발을 발사",
				id = "명사수",
				skillName = "헤드샷",
				asset = "명사수"
			}

			return {
				var_10_0,
				var_10_1
			}
		end

		local var_7_35 = var_0_0.resolveDominantAxis(arg_7_0)

		return var_7_1(var_7_34(var_7_35))
	elseif arg_7_0.sym == "D" then
		if arg_7_1 == 2 then
			local var_7_36 = false

			for iter_7_8, iter_7_9 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_37 = arg_7_0[iter_7_9]

				if var_7_37 == "천사" or var_7_37 == "Angel" or var_7_37 == "천사 (Angel)" then
					var_7_36 = true
				end
			end

			if var_7_36 or (arg_7_0.grade == "prism" or arg_7_0.jackpot5th == true) and not arg_7_0.subclass and not arg_7_0.subclassName and not arg_7_0.subclassKey then
				return var_7_1({
					{
						classType = "균형형",
						asset = "대천사",
						id = "대천사",
						name = "대천사",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 0,
							hp = 3,
							aspd = -1
						}
					},
					{
						classType = "범위형",
						asset = "타락천사",
						id = "타락천사",
						name = "타락천사",
						keepStatArrows = true,
						statArrows = {
							atk = 1,
							distance = 0,
							hp = 1,
							aspd = -3
						}
					}
				})
			end

			for iter_7_10, iter_7_11 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_38 = arg_7_0[iter_7_11]

				if var_7_38 == "셰이드" or var_7_38 == "Shade" or var_7_38 == "셰이드 (Shade)" then
					return var_7_1({
						{
							classType = "방어형",
							asset = "LegendarySpecter",
							id = "LegendarySpecter",
							name = "스펙터",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 4,
								aspd = -3
							}
						},
						{
							classType = "치명형",
							asset = "리퍼",
							id = "리퍼",
							name = "리퍼",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = 0,
								hp = 2,
								aspd = -2
							}
						}
					})
				end

				if var_7_38 == "수호자" or var_7_38 == "Guardian" or var_7_38 == "수호자 (Guardian)" then
					return var_7_1({
						{
							classType = "균형형",
							asset = "RarePaladin",
							id = "RarePaladin",
							name = "팔라딘",
							statArrows = {
								atk = 2,
								distance = 0,
								hp = 3,
								aspd = -2
							}
						},
						{
							classType = "공격형",
							asset = "서리칼날",
							id = "서리칼날",
							name = "서리칼날",
							statArrows = {
								atk = 1,
								distance = 0,
								hp = 1,
								aspd = 1
							}
						}
					})
				end
			end

			local var_7_39 = arg_7_0.grade

			if type(var_7_39) == "string" then
				var_7_39 = var_7_39:lower()
			end

			if (arg_7_0.subclass == "드루이드" or arg_7_0.subclassName == "드루이드" or arg_7_0.subclassKey == "드루이드") and var_7_39 == "advanced" then
				return var_7_1({
					{
						name = "엔트",
						skillDesc = "고대 수목의 힘으로 결투사의 형태를 완성합니다.",
						id = "엔트",
						skillName = "숲의 각성",
						asset = "엔트"
					},
					{
						name = "빅터",
						skillDesc = "칼 끝에서 피가 타오르는 결투사로 각성합니다.",
						id = "빅터",
						skillName = "피의 각성",
						asset = "빅터"
					}
				})
			end

			return var_7_1({
				{
					name = "황제",
					skillDesc = "기본 결투사 상위 승급",
					id = "황제",
					skillName = "승급 특성",
					asset = "황제"
				},
				{
					name = "베테랑",
					skillDesc = "기본 결투사 분기 승급",
					id = "베테랑",
					skillName = "승급 특성",
					asset = "베테랑"
				}
			})
		end

		if arg_7_1 == 3 then
			local var_7_40 = false

			for iter_7_12, iter_7_13 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_41 = arg_7_0[iter_7_13]

				if var_7_41 == "대천사" or var_7_41 == "Archangel" or var_7_41 == "대천사 (Archangel)" then
					var_7_40 = true
				end
			end

			if var_7_40 or (arg_7_0.grade == "prism" or arg_7_0.jackpot5th == true) and not arg_7_0.subclass and not arg_7_0.subclassName and not arg_7_0.subclassKey then
				return var_7_1({
					{
						classType = "균형형",
						asset = "도미니온",
						id = "도미니온",
						name = "도미니온",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 1,
							hp = 4,
							aspd = 0
						}
					}
				})
			end

			local var_7_42 = false

			for iter_7_14, iter_7_15 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_43 = arg_7_0[iter_7_15]

				if var_7_43 == "타락천사" or var_7_43 == "Fallen Angel" or var_7_43 == "타락천사 (Fallen Angel)" then
					var_7_42 = true
				end
			end

			if var_7_42 then
				return var_7_1({
					{
						classType = "범위형",
						asset = "파멸의 천사",
						id = "파멸의 천사",
						name = "파멸의 천사",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 1,
							hp = 2,
							aspd = -1
						}
					}
				})
			end

			for iter_7_16, iter_7_17 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_44 = arg_7_0[iter_7_17]

				if var_7_44 == "LegendarySpecter" or var_7_44 == "스펙터" or var_7_44 == "Specter" or var_7_44 == "스펙터 (Specter)" then
					return var_7_1({
						{
							classType = "방어형",
							asset = "CrownRevenant",
							id = "CrownRevenant",
							name = "레버넌트",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 4,
								aspd = -1
							}
						}
					})
				end

				if var_7_44 == "리퍼" or var_7_44 == "Reaper" or var_7_44 == "리퍼 (Reaper)" then
					return var_7_1({
						{
							classType = "치명형",
							asset = "소울리퍼",
							id = "소울리퍼",
							name = "소울리퍼",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 3,
								aspd = 0
							}
						}
					})
				end
			end
		end

		if arg_7_1 == 3 and (tostring(arg_7_0.grade):lower() == "rare" or tostring(arg_7_0.grade):lower() == "r") then
			for iter_7_18, iter_7_19 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_45 = arg_7_0[iter_7_19]

				if var_7_45 == "서리칼날" or var_7_45 == "Frostblade" or var_7_45 == "서리칼날 (Frostblade)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "빙결여제",
							id = "빙결여제",
							name = "빙결여제",
							statArrows = {
								atk = 2,
								distance = 0,
								hp = 2,
								aspd = 0
							}
						}
					})
				end

				if var_7_45 == "RarePaladin" or var_7_45 == "Paladin" or var_7_45 == "팔라딘" or var_7_45 == "팔라딘 (Paladin)" then
					return var_7_1({
						{
							classType = "균형형",
							asset = "심판관",
							id = "심판관",
							name = "심판관",
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 3,
								aspd = 0
							}
						}
					})
				end
			end
		end

		if arg_7_1 == 3 then
			if arg_7_0.subclass == "황제" or arg_7_0.subclassName == "황제" or arg_7_0.subclassKey == "황제" then
				return var_7_1({
					{
						name = "검황",
						asset = "검황",
						id = "검황"
					}
				})
			end

			if arg_7_0.subclass == "베테랑" or arg_7_0.subclassName == "베테랑" or arg_7_0.subclassKey == "베테랑" then
				return var_7_1({
					{
						name = "장군",
						asset = "장군",
						id = "장군"
					}
				})
			end

			if arg_7_0.subclass == "엔트" or arg_7_0.subclassName == "엔트" or arg_7_0.subclassKey == "엔트" then
				return var_7_1({
					{
						name = "엔트로드",
						skillDesc = "고대 수목의 정수를 이어받은 최종 분기입니다.",
						id = "엔트로드",
						skillName = "숲주의 계승",
						asset = "엔트로드"
					}
				})
			end

			if arg_7_0.subclass == "빅터" or arg_7_0.subclassName == "빅터" or arg_7_0.subclassKey == "빅터" then
				return var_7_1({
					{
						name = "프랑켄슈타인",
						skillDesc = "금단의 힘으로 완성된 괴물 보디입니다.",
						id = "프랑켄슈타인",
						skillName = "인조 각성",
						asset = "프랑켄슈타인"
					}
				})
			end

			if arg_7_0.subclass == "드루이드" or arg_7_0.subclassName == "드루이드" or arg_7_0.subclassKey == "드루이드" then
				return var_7_1({
					{
						name = "바그",
						skillDesc = "자연의 힘으로 각성한 상위 승급",
						id = "바그",
						skillName = "자연의 맹세",
						asset = "바그"
					}
				})
			end

			if arg_7_0.subclass == "해적왕" or arg_7_0.subclassName == "해적왕" or arg_7_0.subclassKey == "해적왕" then
				return var_7_1({
					{
						name = "검황",
						asset = "검황",
						id = "검황"
					},
					{
						name = "망령",
						asset = "망령",
						id = "망령"
					}
				})
			end
		end

		if arg_7_1 == 5 then
			local var_7_46 = arg_7_0.subclass == "글로리" or arg_7_0.subclassName == "글로리" or arg_7_0.subclassKey == "글로리"
			local var_7_47 = arg_7_0.subclass == "글룸" or arg_7_0.subclassName == "글룸" or arg_7_0.subclassKey == "글룸"

			if var_7_46 then
				return var_7_1({
					{
						name = "루시엘",
						asset = "루시엘",
						id = "루시엘"
					}
				})
			end

			if var_7_47 then
				return var_7_1({
					{
						name = "카오스",
						asset = "카오스",
						id = "카오스"
					}
				})
			end
		end

		if arg_7_1 == 4 then
			local var_7_48 = arg_7_0.subclass == "성황" or arg_7_0.subclassName == "성황" or arg_7_0.subclassKey == "성황"
			local var_7_49 = arg_7_0.subclass == "검성제" or arg_7_0.subclassName == "검성제" or arg_7_0.subclassKey == "검성제"
			local var_7_50 = arg_7_0.subclass == "검황" or arg_7_0.subclassName == "검황" or arg_7_0.subclassKey == "검황"
			local var_7_51 = arg_7_0.subclass == "망령" or arg_7_0.subclassName == "망령" or arg_7_0.subclassKey == "망령"

			if var_7_48 or var_7_49 then
				return var_7_1({
					{
						name = "글로리",
						asset = "글로리",
						id = "글로리"
					}
				})
			end

			if var_7_50 or var_7_51 then
				return var_7_1({
					{
						name = "글룸",
						asset = "글룸",
						id = "글룸"
					}
				})
			end
		end

		local var_7_52 = var_0_0.resolveDominantAxis(arg_7_0)
		local var_7_53 = {
			name = "검황",
			asset = "검황",
			id = "검황"
		}
		local var_7_54 = {
			name = "암흑장군",
			skillDesc = "4초마다, 구체로 적 최대 3명에게 ATK 120% 피해를 주고 1초간 스턴.",
			id = "암흑장군",
			skillName = "어둠의 구체",
			asset = "암흑장군"
		}
		local var_7_55 = {
			name = "우드워든",
			skillDesc = "4초마다, 지면에서 뿌리가 튀어나와 적 최대 3명에게 ATK 140% 피해.",
			id = "우드워든",
			skillName = "뿌리 일격",
			asset = "우드워든"
		}
		local var_7_56 = {
			var_7_53,
			var_7_54,
			var_7_55
		}
		local var_7_57 = var_7_56[love.math.random(1, #var_7_56)]

		return var_7_1({
			var_7_53,
			var_7_54,
			var_7_55
		})
	elseif arg_7_0.sym == "S" then
		if arg_7_1 == 5 and (arg_7_0.subclass == "크러셔" or arg_7_0.subclassName == "크러셔" or arg_7_0.subclassKey == "크러셔") then
			return var_7_1({
				{
					name = "젠",
					asset = "젠",
					id = "젠"
				}
			})
		end

		if arg_7_1 == 2 then
			for iter_7_20, iter_7_21 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_58 = arg_7_0[iter_7_21]

				if var_7_58 == "랜서" or var_7_58 == "Lancer" or var_7_58 == "랜서 (Lancer)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "천공병",
							id = "천공병",
							name = "천공병",
							keepStatArrows = true,
							statArrows = {
								atk = 2,
								distance = 1,
								hp = 3,
								aspd = 0
							}
						},
						{
							classType = "범위형",
							asset = "창술사",
							id = "창술사",
							name = "창술사",
							keepStatArrows = true,
							statArrows = {
								atk = 2,
								distance = 2,
								hp = 2,
								aspd = -2
							}
						}
					})
				end

				if var_7_58 == "백골 창병" or var_7_58 == "Bone Spearman" or var_7_58 == "백골 창병 (Bone Spearman)" then
					return var_7_1({
						{
							classType = "방어형",
							asset = "흑위병",
							id = "흑위병",
							name = "흑위병",
							keepStatArrows = true,
							statArrows = {
								atk = 2,
								distance = 1,
								hp = 4,
								aspd = -1
							}
						},
						{
							classType = "공격형",
							asset = "망령병",
							id = "망령병",
							name = "망령병",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = -1,
								hp = 2,
								aspd = 2
							}
						}
					})
				end
			end

			if (arg_7_0.grade == "prism" or arg_7_0.jackpot5th == true) and not arg_7_0.subclass and not arg_7_0.subclassName and not arg_7_0.subclassKey then
				return var_7_1({
					{
						classType = "공격형",
						asset = "천공병",
						id = "천공병",
						name = "천공병",
						keepStatArrows = true,
						statArrows = {
							atk = 2,
							distance = 1,
							hp = 3,
							aspd = 0
						}
					},
					{
						classType = "범위형",
						asset = "창술사",
						id = "창술사",
						name = "창술사",
						keepStatArrows = true,
						statArrows = {
							atk = 2,
							distance = 2,
							hp = 2,
							aspd = -2
						}
					}
				})
			end

			if arg_7_0.subclass == "창투사" or arg_7_0.subclassName == "창투사" or arg_7_0.subclassKey == "창투사" then
				return var_7_1({
					{
						name = "고대 창병",
						asset = "고대 창병",
						id = "고대 창병",
						classType = "균형형"
					},
					{
						name = "투기 창병",
						asset = "투기 창병",
						id = "투기 창병",
						classType = "공격형"
					}
				})
			end

			if arg_7_0.subclass == "보병" or arg_7_0.subclassName == "보병" or arg_7_0.subclassKey == "보병" then
				return var_7_1({
					{
						name = "엘프 보병",
						skillDesc = "정예 엘프 보병으로 승급",
						id = "엘프 보병",
						skillName = "승급 특성",
						asset = "엘프 보병"
					},
					{
						name = "바이킹",
						skillDesc = "강인한 전사로 승급",
						id = "바이킹",
						skillName = "승급 특성",
						asset = "바이킹"
					}
				})
			end

			return var_7_1({
				{
					name = "창위병",
					skillDesc = "기본 창병 상위 승급",
					id = "MiniSpearMan02",
					skillName = "승급 특성",
					asset = "MiniSpearMan02"
				},
				{
					name = "약탈자",
					skillDesc = "약탈 특화 승급",
					id = "약탈자",
					skillName = "승급 특성",
					asset = "약탈자"
				}
			})
		end

		if arg_7_1 == 4 then
			local var_7_59 = arg_7_0.subclass == "MiniSpearMan03" or arg_7_0.subclassName == "근위병" or arg_7_0.subclassKey == "MiniSpearMan03"
			local var_7_60 = arg_7_0.subclass == "허스칼" or arg_7_0.subclassName == "허스칼" or arg_7_0.subclassKey == "허스칼"
			local var_7_61 = arg_7_0.subclass == "엘프 근위병" or arg_7_0.subclassName == "엘프 근위병" or arg_7_0.subclassKey == "엘프 근위병"
			local var_7_62 = arg_7_0.subclass == "해골 근위병" or arg_7_0.subclassName == "해골 근위병" or arg_7_0.subclassKey == "해골 근위병"

			if var_7_59 or var_7_60 then
				return var_7_1({
					{
						name = "크러셔",
						asset = "크러셔",
						id = "크러셔"
					}
				})
			elseif var_7_61 or var_7_62 then
				return var_7_1({
					{
						name = "소울 리퍼",
						asset = "소울 리퍼",
						id = "소울 리퍼"
					}
				})
			end
		end

		if arg_7_1 == 3 then
			for iter_7_22, iter_7_23 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_63 = arg_7_0[iter_7_23]

				if var_7_63 == "천공병" or var_7_63 == "Sky Spearman" or var_7_63 == "천공병 (Sky Spearman)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "발키리",
							id = "발키리",
							name = "발키리",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 1,
								hp = 3,
								aspd = 1
							}
						}
					})
				end

				if var_7_63 == "창술사" or var_7_63 == "Spear Adept" or var_7_63 == "창술사 (Spear Adept)" then
					return var_7_1({
						{
							classType = "범위형",
							asset = "랜스마스터",
							id = "랜스마스터",
							name = "랜스마스터",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 1,
								hp = 2,
								aspd = 0
							}
						}
					})
				end

				if var_7_63 == "흑위병" or var_7_63 == "Black Guard" or var_7_63 == "흑위병 (Black Guard)" then
					return var_7_1({
						{
							classType = "방어형",
							asset = "처형자",
							id = "처형자",
							name = "처형자",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = 2,
								hp = 5,
								aspd = 0
							}
						}
					})
				elseif var_7_63 == "망령병" or var_7_63 == "Wraith Spearman" or var_7_63 == "망령병 (Wraith Spearman)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "SpearRevenant",
							id = "SpearRevenant",
							name = "레버넌트",
							keepStatArrows = true,
							statArrows = {
								atk = 5,
								distance = -1,
								hp = 3,
								aspd = 3
							}
						}
					})
				end
			end

			if arg_7_0.subclass == "투기 창병" or arg_7_0.subclassName == "투기 창병" or arg_7_0.subclassKey == "투기 창병" then
				return var_7_1({
					{
						name = "글래디에이터",
						asset = "글래디에이터",
						id = "글래디에이터",
						classType = "공격형"
					}
				})
			end

			if arg_7_0.subclass == "고대 창병" or arg_7_0.subclassName == "고대 창병" or arg_7_0.subclassKey == "고대 창병" then
				return var_7_1({
					{
						name = "스파르타",
						asset = "스파르타",
						id = "스파르타",
						classType = "균형형"
					}
				})
			end

			local var_7_64 = arg_7_0.subclass == "MiniSpearMan02" or arg_7_0.subclassName == "창위병" or arg_7_0.subclassKey == "MiniSpearMan02"
			local var_7_65 = arg_7_0.subclass == "약탈자" or arg_7_0.subclassName == "약탈자" or arg_7_0.subclassKey == "약탈자"
			local var_7_66 = arg_7_0.subclass == "엘프 보병" or arg_7_0.subclassName == "엘프 보병" or arg_7_0.subclassKey == "엘프 보병"
			local var_7_67 = arg_7_0.subclass == "바이킹" or arg_7_0.subclassName == "바이킹" or arg_7_0.subclassKey == "바이킹"
			local var_7_68 = arg_7_0.subclass == "엘프창병" or arg_7_0.subclassName == "엘프창병" or arg_7_0.subclassKey == "엘프창병"

			if var_7_66 then
				return var_7_1({
					{
						name = "하이 엘프 보병",
						skillDesc = "하이 엘프 보병으로 승급",
						id = "하이 엘프 보병",
						skillName = "승급 특성",
						asset = "하이 엘프 보병"
					}
				})
			end

			if var_7_67 then
				return var_7_1({
					{
						name = "바바리안",
						skillDesc = "바바리안으로 승급",
						id = "바바리안",
						skillName = "승급 특성",
						asset = "바바리안"
					}
				})
			end

			if var_7_64 then
				return var_7_1({
					{
						name = "근위병",
						skillDesc = "2초마다 1초간 받는 피해 -40%. 해당 시간 피격 시 즉시 반격 (ATK 50%)",
						id = "MiniSpearMan03",
						skillName = "결벽의 방진",
						asset = "MiniSpearMan03"
					}
				})
			end

			if var_7_65 then
				return var_7_1({
					{
						name = "무법자",
						skillDesc = "무법자 특화 승급",
						id = "무법자",
						skillName = "승급 특성",
						asset = "무법자"
					}
				})
			end

			if var_7_68 then
				return var_7_1({
					{
						name = "엘프 근위병",
						asset = "엘프 근위병",
						id = "엘프 근위병"
					},
					{
						name = "해골 근위병",
						asset = "해골 근위병",
						id = "해골 근위병"
					}
				})
			end
		end

		local var_7_69 = {
			name = "근위병",
			skillDesc = "2초마다 1초간 받는 피해 -40%. 해당 시간 피격 시 즉시 반격 (ATK 50%)",
			id = "MiniSpearMan03",
			skillName = "결벽의 방진",
			asset = "MiniSpearMan03"
		}
		local var_7_70 = {
			name = "허스칼",
			skillDesc = "상위 창병 승급",
			id = "허스칼",
			skillName = "승급 특성",
			asset = "허스칼"
		}

		return var_7_1({
			var_7_69,
			var_7_70
		})
	elseif arg_7_0.sym == "M" then
		if arg_7_1 == 2 then
			if require("src.game.projectiles").gunslinger_bullet.isForbiddenMage(arg_7_0) then
				return var_7_1({
					{
						classType = "지원형",
						asset = "예지술사",
						id = "예지술사",
						name = "예지술사",
						keepStatArrows = true,
						statArrows = {
							atk = 2,
							distance = 1,
							hp = 2,
							aspd = 0
						}
					},
					{
						classType = "소환형",
						asset = "리치",
						id = "리치",
						name = "리치",
						keepStatArrows = true,
						statArrows = {
							atk = 1,
							distance = 1,
							hp = 2,
							aspd = -1
						}
					}
				})
			end

			for iter_7_24, iter_7_25 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_71 = arg_7_0[iter_7_25]

				if var_7_71 == "해골술사" or var_7_71 == "Bone Mage" or var_7_71 == "해골술사 (Bone Mage)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "심연술사",
							id = "심연술사",
							name = "심연술사",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = 0,
								hp = 2,
								aspd = -3
							}
						},
						{
							classType = "지원형",
							asset = "흑마법사",
							id = "흑마법사",
							name = "흑마법사",
							keepStatArrows = true,
							statArrows = {
								atk = 1,
								distance = 0,
								hp = 3,
								aspd = 0
							}
						}
					})
				elseif var_7_71 == "비술사" or var_7_71 == "Arcanist" or var_7_71 == "비술사 (Arcanist)" then
					return var_7_1({
						{
							classType = "지원형",
							asset = "수정술사",
							id = "수정술사",
							name = "수정술사",
							statArrows = {
								atk = 2,
								distance = 0,
								hp = 2,
								aspd = 0
							}
						},
						{
							classType = "소환형",
							asset = "화령술사",
							id = "화령술사",
							name = "화령술사",
							statArrows = {
								atk = 1,
								distance = 0,
								hp = 1,
								aspd = -1
							}
						}
					})
				end
			end

			if arg_7_0.subclass == "마도사" or arg_7_0.subclassName == "마도사" or arg_7_0.subclassKey == "마도사" then
				return var_7_1({
					{
						name = "엘프법사",
						skillDesc = "엘프 마법사 상위 승급",
						id = "엘프법사",
						skillName = "승급 특성",
						asset = "엘프법사"
					},
					{
						name = "야생법사",
						skillDesc = "4초마다 마력 구체를 발사해 최대 3명의 적에게 ATK 110% 피해",
						id = "야생법사",
						skillName = "마력 구체",
						asset = "야생법사"
					}
				})
			end

			return var_7_1({
				{
					name = "주술사",
					skillDesc = "4초마다 마력 구체를 발사해 최대 3명의 적에게 ATK 110% 피해",
					id = "주술사",
					skillName = "마력 구체",
					asset = "주술사"
				},
				{
					name = "치유술사",
					skillDesc = "치유의 장을 생성해, 3초 동안 범위 내 체력이 가장 낮은 아군 2명의 체력을 5%씩 회복",
					id = "치유술사",
					skillName = "치유의 장",
					asset = "치유술사"
				}
			})
		end

		if arg_7_1 == 3 then
			if require("src.game.projectiles").gunslinger_bullet.isLich(arg_7_0) then
				return var_7_1({
					{
						classType = "소환형",
						asset = "리치로드",
						id = "리치로드",
						name = "리치로드",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 1,
							hp = 2,
							aspd = 0
						}
					}
				})
			end

			if require("src.game.projectiles").gunslinger_bullet.isDiviner(arg_7_0) then
				return var_7_1({
					{
						classType = "지원형",
						asset = "예언자",
						id = "예언자",
						name = "예언자",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 1,
							hp = 3,
							aspd = 0
						}
					}
				})
			end

			for iter_7_26, iter_7_27 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_72 = arg_7_0[iter_7_27]

				if var_7_72 == "심연술사" or var_7_72 == "Abyss Mage" or var_7_72 == "심연술사 (Abyss Mage)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "아크메이지",
							id = "아크메이지",
							name = "아크메이지",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = 0,
								hp = 3,
								aspd = 1
							}
						}
					})
				elseif var_7_72 == "흑마법사" or var_7_72 == "Dark Mage" or var_7_72 == "흑마법사 (Dark Mage)" then
					return var_7_1({
						{
							classType = "지원형",
							asset = "워록",
							id = "워록",
							name = "워록",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = 0,
								hp = 3,
								aspd = 0
							}
						}
					})
				elseif var_7_72 == "수정술사" or var_7_72 == "Crystal Mage" or var_7_72 == "수정술사 (Crystal Mage)" then
					return var_7_1({
						{
							classType = "지원형",
							asset = "운디네",
							id = "운디네",
							name = "운디네",
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 3,
								aspd = 1
							}
						}
					})
				elseif var_7_72 == "화령술사" or var_7_72 == "Flamecaller" or var_7_72 == "화령술사 (Flamecaller)" then
					return var_7_1({
						{
							classType = "소환형",
							asset = "샐러맨더",
							id = "샐러맨더",
							name = "샐러맨더",
							statArrows = {
								atk = 2,
								distance = 0,
								hp = 2,
								aspd = 0
							}
						}
					})
				end
			end

			if arg_7_0.subclass == "주술사" or arg_7_0.subclassName == "주술사" or arg_7_0.subclassKey == "주술사" then
				return var_7_1({
					{
						name = "대주술사",
						skillDesc = "대주술사 승급",
						id = "대주술사",
						skillName = "승급 특성",
						asset = "대주술사"
					}
				})
			end

			if arg_7_0.subclass == "치유술사" or arg_7_0.subclassName == "치유술사" or arg_7_0.subclassKey == "치유술사" then
				return var_7_1({
					{
						name = "대사제",
						skillDesc = "치유 성역을 생성해, 3초 동안 범위 내 체력이 가장 낮은 아군 3명의 체력을 7%씩 회복",
						id = "대사제",
						skillName = "치유 성역",
						asset = "대사제"
					}
				})
			end

			if arg_7_0.subclass == "야생법사" or arg_7_0.subclassName == "야생법사" or arg_7_0.subclassKey == "야생법사" then
				return var_7_1({
					{
						name = "원시법사",
						skillDesc = "원시법사 승급",
						id = "원시법사",
						skillName = "승급 특성",
						asset = "원시법사"
					}
				})
			end

			if arg_7_0.subclass == "엘프법사" or arg_7_0.subclassName == "엘프법사" or arg_7_0.subclassKey == "엘프법사" then
				return var_7_1({
					{
						name = "엘프 현자",
						skillDesc = "엘프 현자 승급",
						id = "엘프 현자",
						skillName = "승급 특성",
						asset = "엘프 현자"
					}
				})
			end

			if arg_7_0.subclass == "엘프 주술사" or arg_7_0.subclassName == "엘프 주술사" or arg_7_0.subclassKey == "엘프 주술사" then
				return var_7_1({
					{
						name = "엘프 현자",
						skillDesc = "엘프 현자 승급",
						id = "엘프 현자",
						skillName = "승급 특성",
						asset = "엘프 현자"
					},
					{
						name = "해골 마도사",
						skillDesc = "해골 마도사 승급",
						id = "해골 마도사",
						skillName = "승급 특성",
						asset = "해골 마도사"
					}
				})
			end
		end

		if arg_7_1 == 4 then
			local var_7_73 = arg_7_0.subclass == "대주술사" or arg_7_0.subclassName == "대주술사" or arg_7_0.subclassKey == "대주술사"
			local var_7_74 = arg_7_0.subclass == "치유술사" or arg_7_0.subclassName == "치유술사" or arg_7_0.subclassKey == "치유술사"
			local var_7_75

			var_7_75 = arg_7_0.subclass == "엘프 현자" or arg_7_0.subclassName == "엘프 현자" or arg_7_0.subclassKey == "엘프 현자"

			local var_7_76

			var_7_76 = arg_7_0.subclass == "해골 마도사" or arg_7_0.subclassName == "해골 마도사" or arg_7_0.subclassKey == "해골 마도사"

			local var_7_77

			var_7_77 = arg_7_0.subclass == "원시법사" or arg_7_0.subclassName == "원시법사" or arg_7_0.subclassKey == "원시법사"

			if var_7_73 or var_7_74 then
				return var_7_1({
					{
						name = "루나 현자",
						skillDesc = "루나 현자 승급",
						id = "루나 현자",
						skillName = "승급 특성",
						asset = "루나 현자"
					}
				})
			end
		end

		if arg_7_1 == 5 and (arg_7_0.subclass == "루나 현자" or arg_7_0.subclassName == "루나 현자" or arg_7_0.subclassKey == "루나 현자") then
			return var_7_1({
				{
					name = "안틀러",
					skillDesc = "안틀러 승급",
					id = "안틀러",
					skillName = "승급 특성",
					asset = "안틀러"
				}
			})
		end

		if var_0_0.resolveDominantAxis(arg_7_0) == "hp" then
			local var_7_78 = {
				name = "현자 엘프",
				skillDesc = "4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%",
				id = "현자 엘프",
				skillName = "정령의 축복",
				asset = "현자 엘프"
			}
			local var_7_79 = {
				{
					name = "암흑술사",
					skillDesc = "3초마다 ATK 170% 강화된 어둠의 탄환 발사",
					id = "암흑술사",
					skillName = "어둠의 탄환",
					asset = "암흑술사"
				},
				{
					name = "본메이지",
					skillDesc = "4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%)",
					id = "본메이지",
					skillName = "부패의 저주",
					asset = "본메이지"
				}
			}
			local var_7_80 = {
				{
					name = "현자 엘프",
					skillDesc = "4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%",
					id = "현자 엘프",
					skillName = "정령의 축복",
					asset = "현자 엘프"
				},
				{
					name = "암흑술사",
					skillDesc = "3초마다 ATK 170% 강화된 어둠의 탄환 발사",
					id = "암흑술사",
					skillName = "어둠의 탄환",
					asset = "암흑술사"
				},
				{
					name = "본메이지",
					skillDesc = "4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%)",
					id = "본메이지",
					skillName = "부패의 저주",
					asset = "본메이지"
				}
			}
			local var_7_81 = var_7_79[love.math.random(1, #var_7_79)]
			local var_7_82 = {}

			local function var_7_83(arg_11_0)
				return arg_11_0.id ~= var_7_78.id and arg_11_0.id ~= var_7_81.id
			end

			for iter_7_28, iter_7_29 in ipairs(var_7_80) do
				if var_7_83(iter_7_29) then
					table.insert(var_7_82, iter_7_29)
				end
			end

			local var_7_84 = var_7_82[love.math.random(1, #var_7_82)]

			return var_7_1({
				var_7_78,
				var_7_81,
				var_7_84
			})
		else
			local var_7_85 = {
				name = "현자 엘프",
				skillDesc = "4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%",
				id = "현자 엘프",
				skillName = "정령의 축복",
				asset = "현자 엘프"
			}
			local var_7_86 = {
				{
					name = "암흑술사",
					skillDesc = "3초마다 ATK 170% 강화된 어둠의 탄환 발사",
					id = "암흑술사",
					skillName = "어둠의 탄환",
					asset = "암흑술사"
				},
				{
					name = "본메이지",
					skillDesc = "4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%)",
					id = "본메이지",
					skillName = "부패의 저주",
					asset = "본메이지"
				}
			}
			local var_7_87 = love.math.random(1, #var_7_86)
			local var_7_88 = var_7_86[var_7_87]
			local var_7_89 = {}

			for iter_7_30, iter_7_31 in ipairs(var_7_86) do
				if iter_7_30 ~= var_7_87 then
					table.insert(var_7_89, iter_7_31)
				end
			end

			local var_7_90 = var_7_89[love.math.random(1, #var_7_89)]

			return var_7_1({
				var_7_85,
				var_7_88,
				var_7_90
			})
		end
	elseif arg_7_0.sym == "H" then
		if arg_7_1 == 2 then
			local var_7_91 = false

			for iter_7_32, iter_7_33 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_92 = arg_7_0[iter_7_33]

				if var_7_92 == "환수기병" or var_7_92 == "Beast Cavalry" or var_7_92 == "환수기병 (Beast Cavalry)" then
					var_7_91 = true

					break
				end
			end

			if var_7_91 or (arg_7_0.grade == "prism" or arg_7_0.jackpot5th == true) and not arg_7_0.subclass and not arg_7_0.subclassName and not arg_7_0.subclassKey then
				return var_7_1({
					{
						classType = "방어형",
						asset = "실반",
						id = "실반",
						name = "실반",
						keepStatArrows = true,
						statArrows = {
							atk = 2,
							distance = 0,
							hp = 3,
							aspd = -1
						}
					},
					{
						classType = "공격형",
						asset = "페이즈",
						id = "페이즈",
						name = "페이즈",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 0,
							hp = 1,
							aspd = 1
						}
					}
				})
			end

			for iter_7_34, iter_7_35 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_93 = arg_7_0[iter_7_35]

				if var_7_93 == "사령기병" or var_7_93 == "Dread Cavalry" or var_7_93 == "사령기병 (Dread Cavalry)" then
					return var_7_1({
						{
							classType = "치명형",
							asset = "나이트메어",
							id = "나이트메어",
							name = "나이트메어",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = 0,
								hp = 3,
								aspd = -1
							}
						},
						{
							classType = "지원형",
							asset = "월광사제",
							id = "월광사제",
							name = "월광사제",
							keepStatArrows = true,
							statArrows = {
								atk = 1,
								distance = 5,
								hp = 1,
								aspd = 0
							}
						}
					})
				elseif var_7_93 == "경기병" or var_7_93 == "Light Cavalry" or var_7_93 == "경기병 (Light Cavalry)" then
					return var_7_1({
						{
							classType = "범위형",
							asset = "초원 기병",
							id = "초원 기병",
							name = "초원 기병",
							statArrows = {
								atk = 3,
								distance = 0,
								hp = 1,
								aspd = -3
							}
						},
						{
							classType = "지원형",
							asset = "후사르",
							id = "후사르",
							name = "후사르",
							statArrows = {
								atk = 1,
								distance = 0,
								hp = 3,
								aspd = 1
							}
						}
					})
				end
			end

			if arg_7_0.subclass == "철기병" or arg_7_0.subclassName == "철기병" or arg_7_0.subclassKey == "철기병" or tostring(arg_7_0.grade or "") == "advanced" then
				return var_7_1({
					{
						name = "엘프 기병",
						skillDesc = "엘프 기병으로 승급",
						id = "엘프 기병",
						skillName = "승급 특성",
						asset = "엘프 기병"
					},
					{
						name = "야만 기병",
						skillDesc = "야만 기병으로 승급",
						id = "야만 기병",
						skillName = "승급 특성",
						asset = "야만 기병"
					}
				})
			end

			return var_7_1({
				{
					name = "돌격병",
					skillDesc = "기본 기병 상위 승급",
					id = "돌격병",
					skillName = "승급 특성",
					asset = "돌격병"
				},
				{
					name = "도끼 기병",
					skillDesc = "도끼 기병으로 승급",
					id = "도끼 기병",
					skillName = "승급 특성",
					asset = "도끼 기병"
				}
			})
		end

		if arg_7_1 == 3 then
			for iter_7_36, iter_7_37 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_94 = arg_7_0[iter_7_37]

				if var_7_94 == "페이즈" or var_7_94 == "Phase" or var_7_94 == "페이즈 (Phase)" then
					return var_7_1({
						{
							classType = "공격형",
							asset = "크로노워커",
							id = "크로노워커",
							name = "크로노워커",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 1,
								hp = 2,
								aspd = 0
							}
						}
					})
				end
			end

			local var_7_95 = false

			for iter_7_38, iter_7_39 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_96 = arg_7_0[iter_7_39]

				if var_7_96 == "실반" or var_7_96 == "Sylvan" or var_7_96 == "실반 (Sylvan)" then
					var_7_95 = true

					break
				end
			end

			if var_7_95 or (arg_7_0.grade == "prism" or arg_7_0.jackpot5th == true) and not arg_7_0.subclass and not arg_7_0.subclassName and not arg_7_0.subclassKey then
				return var_7_1({
					{
						classType = "방어형",
						asset = "숲의 심장",
						id = "숲의 심장",
						name = "숲의 심장",
						keepStatArrows = true,
						statArrows = {
							atk = 3,
							distance = 1,
							hp = 4,
							aspd = 0
						}
					}
				})
			end

			for iter_7_40, iter_7_41 in ipairs({
				"subclass",
				"subclassName",
				"subclassKey"
			}) do
				local var_7_97 = arg_7_0[iter_7_41]

				if var_7_97 == "월광사제" or var_7_97 == "Moon Priestess" or var_7_97 == "월광사제 (Moon Priestess)" then
					return var_7_1({
						{
							classType = "지원형",
							asset = "초승달 여왕",
							id = "초승달 여왕",
							name = "초승달 여왕",
							keepStatArrows = true,
							statArrows = {
								atk = 3,
								distance = 1,
								hp = 3,
								aspd = 1
							}
						}
					})
				elseif var_7_97 == "나이트메어" or var_7_97 == "Nightmare" or var_7_97 == "나이트메어 (Nightmare)" then
					return var_7_1({
						{
							classType = "치명형",
							asset = "아포칼립스",
							id = "아포칼립스",
							name = "아포칼립스",
							keepStatArrows = true,
							statArrows = {
								atk = 4,
								distance = 0,
								hp = 4,
								aspd = 0
							}
						}
					})
				elseif var_7_97 == "초원 기병" or var_7_97 == "Steppe Cavalry" or var_7_97 == "초원 기병 (Steppe Cavalry)" then
					return var_7_1({
						{
							classType = "범위형",
							asset = "켄타로우스",
							id = "켄타로우스",
							name = "켄타우로스",
							statArrows = {
								atk = 3,
								distance = 1,
								hp = 3,
								aspd = 1
							}
						}
					})
				elseif var_7_97 == "후사르" or var_7_97 == "Hussar" or var_7_97 == "후사르 (Hussar)" then
					return var_7_1({
						{
							classType = "지원형",
							asset = "윙드 후사르",
							id = "윙드 후사르",
							name = "윙드 후사르",
							statArrows = {
								atk = 2,
								distance = 0,
								hp = 4,
								aspd = 0
							}
						}
					})
				end
			end

			local var_7_98 = arg_7_0.subclass == "돌격병" or arg_7_0.subclassName == "돌격병" or arg_7_0.subclassKey == "돌격병"
			local var_7_99 = arg_7_0.subclass == "엘프 기병" or arg_7_0.subclassName == "엘프 기병" or arg_7_0.subclassKey == "엘프 기병"
			local var_7_100 = arg_7_0.subclass == "야만 기병" or arg_7_0.subclassName == "야만 기병" or arg_7_0.subclassKey == "야만 기병"
			local var_7_101 = arg_7_0.subclass == "도끼 기병" or arg_7_0.subclassName == "도끼 기병" or arg_7_0.subclassKey == "도끼 기병"

			if var_7_98 then
				return var_7_1({
					{
						name = "중기병",
						asset = "MiniHorseMan03",
						id = "MiniHorseMan03"
					}
				})
			end

			if var_7_101 then
				return var_7_1({
					{
						name = "무법 기병",
						skillDesc = "무법 기병으로 승급",
						id = "무법 기병",
						skillName = "승급 특성",
						asset = "무법 기병"
					}
				})
			end

			if var_7_100 then
				return var_7_1({
					{
						name = "광폭 기병",
						skillDesc = "광폭 기병으로 승급",
						id = "광폭 기병",
						skillName = "승급 특성",
						asset = "광폭 기병"
					}
				})
			end

			if var_7_99 then
				return var_7_1({
					{
						name = "하이 엘프 기병",
						skillDesc = "하이 엘프 기병으로 승급",
						id = "하이 엘프 기병",
						skillName = "승급 특성",
						asset = "하이 엘프 기병"
					}
				})
			end
		end

		if arg_7_1 == 4 then
			local var_7_102 = arg_7_0.subclass == "하이 엘프 기병" or arg_7_0.subclassName == "하이 엘프 기병" or arg_7_0.subclassKey == "하이 엘프 기병"
			local var_7_103 = arg_7_0.subclass == "광폭 기병" or arg_7_0.subclassName == "광폭 기병" or arg_7_0.subclassKey == "광폭 기병"

			if var_7_102 or var_7_103 then
				return var_7_1({
					{
						name = "그리즐",
						asset = "그리즐",
						id = "그리즐"
					}
				})
			end

			local var_7_104 = arg_7_0.subclass == "MiniHorseMan03" or arg_7_0.subclassName == "중기병" or arg_7_0.subclassKey == "MiniHorseMan03" or arg_7_0.subclassKey == "중기병"
			local var_7_105 = arg_7_0.subclass == "워베어" or arg_7_0.subclassName == "워베어" or arg_7_0.subclassKey == "워베어"

			if var_7_104 or var_7_105 then
				return var_7_1({
					{
						name = "그리즐",
						asset = "그리즐",
						id = "그리즐"
					}
				})
			end

			local var_7_106 = arg_7_0.subclass == "해골 중기병" or arg_7_0.subclassName == "해골 중기병" or arg_7_0.subclassKey == "해골 중기병"
			local var_7_107 = arg_7_0.subclass == "엘프 중기병" or arg_7_0.subclassName == "엘프 중기병" or arg_7_0.subclassKey == "엘프 중기병"

			if var_7_106 or var_7_107 then
				return var_7_1({
					{
						name = "데스 나이트",
						asset = "데스 나이트",
						id = "데스 나이트"
					}
				})
			end
		end

		if arg_7_1 == 5 then
			local var_7_108 = arg_7_0.subclass == "데스 나이트" or arg_7_0.subclassName == "데스 나이트" or arg_7_0.subclassKey == "데스 나이트" or arg_7_0.subclass == "Death Knight"

			if arg_7_0.subclass == "그리즐" or arg_7_0.subclassName == "그리즐" or arg_7_0.subclassKey == "그리즐" or arg_7_0.subclass == "Grizzle" then
				return var_7_1({
					{
						name = "우르간",
						asset = "우르간",
						id = "우르간"
					}
				})
			end

			if var_7_108 then
				return var_7_1({
					{
						name = "데스 로드",
						asset = "데스 로드",
						id = "데스 로드"
					}
				})
			end
		end

		local var_7_109 = {
			name = "중기병",
			asset = "MiniHorseMan03",
			id = "MiniHorseMan03"
		}
		local var_7_110 = {
			name = "워베어",
			asset = "워베어",
			id = "워베어"
		}

		return var_7_1({
			var_7_109,
			var_7_110
		})
	end

	return var_7_1({
		{
			id = "C1",
			name = "클래스 A"
		},
		{
			id = "C2",
			name = "클래스 B"
		},
		{
			id = "C3",
			name = "클래스 C"
		}
	})
end

function var_0_0.expandTraitChoices(arg_12_0, arg_12_1, arg_12_2, arg_12_3)
	if not arg_12_2 or arg_12_1 ~= 3 or type(arg_12_0) ~= "table" or #arg_12_0 == 0 or #arg_12_0 >= 3 then
		return arg_12_0
	end

	arg_12_3 = arg_12_3 or function(arg_13_0)
		return love.math.random(arg_13_0)
	end

	local var_12_0 = {}

	for iter_12_0, iter_12_1 in ipairs(arg_12_0) do
		var_12_0[#var_12_0 + 1] = iter_12_1
	end

	while #var_12_0 < 3 do
		local var_12_1 = arg_12_0[arg_12_3(#arg_12_0)]
		local var_12_2 = {}

		for iter_12_2, iter_12_3 in pairs(var_12_1) do
			var_12_2[iter_12_2] = iter_12_3
		end

		var_12_0[#var_12_0 + 1] = var_12_2
	end

	return var_12_0
end

return var_0_0
