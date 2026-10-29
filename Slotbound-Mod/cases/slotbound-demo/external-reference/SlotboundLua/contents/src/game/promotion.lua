local var_0_0 = {}
local var_0_1 = require("src.data.skill")

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

function var_0_0.getRandomWaveMessage(arg_1_0)
	local var_1_0 = var_0_0.waveMessages or {}

	if not var_1_0 or #var_1_0 == 0 then
		return nil
	end

	return var_1_0[love.math.random(1, #var_1_0)]
end

function var_0_0.resolveDominantAxis(arg_2_0)
	if not arg_2_0 then
		return "hp"
	end

	local var_2_0 = arg_2_0.HP_count or 0
	local var_2_1 = arg_2_0.ATK_count or 0
	local var_2_2 = arg_2_0.ASPD_count or 0
	local var_2_3 = 2
	local var_2_4 = {}

	if var_2_3 <= var_2_0 or var_2_1 <= var_2_0 and var_2_2 <= var_2_0 then
		table.insert(var_2_4, "hp")
	end

	if var_2_3 <= var_2_1 or var_2_0 <= var_2_1 and var_2_2 <= var_2_1 then
		table.insert(var_2_4, "atk")
	end

	if var_2_3 <= var_2_2 or var_2_0 <= var_2_2 and var_2_1 <= var_2_2 then
		table.insert(var_2_4, "aspd")
	end

	local var_2_5 = {}
	local var_2_6 = {}

	for iter_2_0, iter_2_1 in ipairs(var_2_4) do
		if not var_2_5[iter_2_1] then
			var_2_5[iter_2_1] = true

			table.insert(var_2_6, iter_2_1)
		end
	end

	local var_2_7 = var_2_6

	if #var_2_7 == 1 then
		return var_2_7[1]
	end

	local function var_2_8(arg_3_0)
		if arg_3_0 == "W" then
			return "hp"
		elseif arg_3_0 == "S" then
			return "atk"
		elseif arg_3_0 == "A" then
			return "aspd"
		end

		return nil
	end

	local var_2_9 = var_2_8(arg_2_0.lastAbsorbType)

	if var_2_9 then
		for iter_2_2, iter_2_3 in ipairs(var_2_7) do
			if iter_2_3 == var_2_9 then
				return iter_2_3
			end
		end
	end

	local var_2_10 = var_2_8(arg_2_0.sym)

	if var_2_10 then
		for iter_2_4, iter_2_5 in ipairs(var_2_7) do
			if iter_2_5 == var_2_10 then
				return iter_2_5
			end
		end
	end

	return var_2_7[love.math.random(1, #var_2_7)]
end

function var_0_0.buildKnightOptionsForAxis(arg_4_0)
	local var_4_0 = {
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
	local var_4_1 = {
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
	local var_4_2 = {
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
	local var_4_3, var_4_4 = var_4_0[arg_4_0] or var_4_0.hp, var_4_1[arg_4_0] or var_4_1.hp
	local var_4_5 = var_4_4[love.math.random(1, #var_4_4)]
	local var_4_6 = {}

	local function var_4_7(arg_5_0)
		return arg_5_0.id ~= var_4_3.id and arg_5_0.id ~= var_4_5.id
	end

	for iter_4_0, iter_4_1 in ipairs(var_4_2) do
		if var_4_7(iter_4_1) then
			table.insert(var_4_6, iter_4_1)
		end
	end

	local var_4_8 = var_4_6[love.math.random(1, #var_4_6)]

	return {
		var_4_3,
		var_4_5,
		var_4_8
	}
end

function var_0_0.getPromotionOptions(arg_6_0, arg_6_1)
	if not arg_6_0 then
		return nil
	end

	local function var_6_0(arg_7_0)
		if not arg_7_0 then
			return arg_7_0
		end

		if arg_7_0.skillIcon and arg_7_0.skillIcon ~= "" then
			return arg_7_0
		end

		local var_7_0 = var_0_1.getSkillsForUnit({
			subclass = arg_7_0.id,
			subclassKey = arg_7_0.asset or arg_7_0.id,
			subclassName = arg_7_0.name,
			id = arg_7_0.id,
			name = arg_7_0.name
		})

		if var_7_0 and var_7_0[1] and var_7_0[1].icon then
			arg_7_0.skillIcon = var_7_0[1].icon
		end

		return arg_7_0
	end

	local function var_6_1(arg_8_0)
		for iter_8_0, iter_8_1 in ipairs(arg_8_0) do
			var_6_0(iter_8_1)
		end

		return arg_8_0
	end

	if arg_6_0.sym == "W" then
		if arg_6_1 == 5 then
			local var_6_2 = arg_6_0.subclass == "크루세이더" or arg_6_0.subclassName == "크루세이더" or arg_6_0.subclassKey == "크루세이더"
			local var_6_3 = arg_6_0.subclass == "플레어" or arg_6_0.subclassName == "플레어" or arg_6_0.subclassKey == "플레어"
			local var_6_4 = arg_6_0.subclass == "팔라딘" or arg_6_0.subclassName == "팔라딘" or arg_6_0.subclassKey == "팔라딘"
			local var_6_5 = arg_6_0.subclass == "레버넌트" or arg_6_0.subclassName == "레버넌트" or arg_6_0.subclassKey == "레버넌트"
			local var_6_6 = arg_6_0.subclass == "드루이드" or arg_6_0.subclassName == "드루이드" or arg_6_0.subclassKey == "드루이드"
			local var_6_7 = arg_6_0.subclass == "스카우트" or arg_6_0.subclassName == "스카우트" or arg_6_0.subclassKey == "스카우트"
			local var_6_8 = arg_6_0.subclass == "암검사" or arg_6_0.subclassName == "암검사" or arg_6_0.subclassKey == "암검사"
			local var_6_9 = arg_6_0.subclass == "마검사" or arg_6_0.subclassName == "마검사" or arg_6_0.subclassKey == "마검사"

			if var_6_2 or var_6_3 or var_6_4 or var_6_5 then
				return var_6_1({
					{
						id = "베일",
						name = "베일",
						asset = "베일"
					}
				})
			elseif var_6_6 or var_6_7 or var_6_8 or var_6_9 then
				return var_6_1({
					{
						id = "마그누스",
						name = "마그누스",
						asset = "마그누스"
					}
				})
			end
		end

		if arg_6_1 == 4 then
			local var_6_10 = arg_6_0.subclass == "MiniSwordMan03" or arg_6_0.subclassName == "기사" or arg_6_0.subclassKey == "MiniSwordMan03"
			local var_6_11 = arg_6_0.subclass == "성기사" or arg_6_0.subclassName == "성기사" or arg_6_0.subclassKey == "성기사"
			local var_6_12 = arg_6_0.subclass == "엘프기사" or arg_6_0.subclassName == "엘프기사" or arg_6_0.subclassKey == "엘프기사"
			local var_6_13 = arg_6_0.subclass == "해골 투사" or arg_6_0.subclassName == "해골 투사" or arg_6_0.subclassKey == "해골 투사" or arg_6_0.subclass == "해골기사" or arg_6_0.subclassName == "해골기사" or arg_6_0.subclassKey == "해골기사"

			if var_6_10 then
				return var_6_1({
					{
						id = "크루세이더",
						name = "크루세이더",
						asset = "크루세이더"
					},
					{
						id = "플레어",
						name = "플레어",
						asset = "플레어"
					}
				})
			elseif var_6_11 then
				return var_6_1({
					{
						skillName = "천상의 보호",
						id = "팔라딘",
						skillDesc = "3초마다 모든 아군에게 2초간 받는 피해 20% 감소 보호막 부여",
						name = "팔라딘",
						asset = "팔라딘"
					},
					{
						skillName = "심연의 복수",
						id = "레버넌트",
						skillDesc = "공격 시 20% 확률로 준 피해의 50%만큼 광역 피해",
						name = "레버넌트",
						asset = "레버넌트"
					}
				})
			elseif var_6_12 then
				return var_6_1({
					{
						skillName = "바람의 상처",
						id = "드루이드",
						skillDesc = "공격 시 25% 확률로 대상을 관통하는 검기 발사",
						name = "드루이드",
						asset = "드루이드"
					},
					{
						skillName = "신속한 정찰",
						id = "스카우트",
						skillDesc = "공격 시마다 3초간 자신의 공격 속도 5% 증가 (최대 5중첩)",
						name = "스카우트",
						asset = "스카우트"
					}
				})
			elseif var_6_13 then
				return var_6_1({
					{
						skillName = "공포의 시선",
						id = "마검사",
						skillDesc = "3초마다 주변 적들에게 ATK 60% 피해를 입히고 1초간 둔화시킵니다",
						name = "마검사",
						asset = "마검사"
					},
					{
						skillName = "어둠의 침묵",
						id = "암검사",
						skillDesc = "공격 시 15% 확률로 대상을 1.5초간 침묵 상태로 만듭니다",
						name = "암검사",
						asset = "암검사"
					}
				})
			end
		end

		if arg_6_1 == 2 then
			local var_6_14 = arg_6_0.subclass == "크루세이더" or arg_6_0.subclassName == "크루세이더" or arg_6_0.subclassKey == "크루세이더"
			local var_6_15 = arg_6_0.subclass == "철퇴병" or arg_6_0.subclassName == "철퇴병" or arg_6_0.subclassKey == "철퇴병"
			local var_6_16 = arg_6_0.subclass == "투사" or arg_6_0.subclassName == "투사" or arg_6_0.subclassKey == "투사"
			local var_6_17 = arg_6_0.subclass == "해골 투사" or arg_6_0.subclassName == "해골 투사" or arg_6_0.subclassKey == "해골 투사" or arg_6_0.subclass == "해골기사" or arg_6_0.subclassName == "해골기사" or arg_6_0.subclassKey == "해골기사"

			return var_6_1({
				{
					skillName = "승급 특성",
					id = var_6_14 and "스펙터" or var_6_15 and "엘프병사" or var_6_16 and "성기사" or var_6_17 and "마검사" or "MiniSwordMan02",
					name = var_6_14 and "스펙터" or var_6_15 and "엘프병사" or var_6_16 and "성기사" or var_6_17 and "마검사" or "병사",
					asset = var_6_14 and "스펙터" or var_6_15 and "엘프병사" or var_6_16 and "성기사" or var_6_17 and "마검사" or "MiniSwordMan02",
					skillDesc = var_6_14 and "프리즘 전사 상위 승급" or var_6_15 and "민첩 특화 승급" or var_6_16 and "성역 수호 특화 승급" or var_6_17 and "공포 시선 특화 승급" or "기본 전사 상위 승급"
				},
				{
					id = var_6_14 and "스카우트" or var_6_15 and "사수 병사" or var_6_16 and "염투사" or var_6_17 and "암검사" or "해적",
					name = var_6_14 and "스카우트" or var_6_15 and "사수 병사" or var_6_16 and "염투사" or var_6_17 and "암검사" or "해적",
					asset = var_6_14 and "스카우트" or var_6_15 and "사수 병사" or var_6_16 and "염투사" or var_6_17 and "암검사" or "해적",
					skillName = var_6_14 and "승급 특성" or var_6_15 and "승급 특성" or var_6_16 and "승급 특성" or var_6_17 and "승급 특성" or "칼날 파동",
					skillDesc = var_6_14 and "정찰 특화 승급" or var_6_15 and "자연 특화 승급" or var_6_16 and "화염 수호 특화 승급" or var_6_17 and "침묵 오라 특화 승급" or "4초마다 공격력 100%를 최대 2명에게 파동 타격"
				}
			})
		end

		if arg_6_0.subclass == "MiniSwordMan02" or arg_6_0.subclassName == "병사" or arg_6_0.subclassKey == "MiniSwordMan02" then
			return var_6_1({
				{
					skillName = "반격 태세",
					id = "MiniSwordMan03",
					skillDesc = "4초마다 1.5초간 모든 피해를 막고 공격한 적에게 피해 반사",
					name = "기사",
					asset = "MiniSwordMan03"
				}
			})
		end

		if arg_6_0.subclass == "해적" or arg_6_0.subclassName == "해적" or arg_6_0.subclassKey == "해적" then
			return var_6_1({
				{
					skillName = "폭풍의 칼날",
					id = "해적왕",
					skillDesc = "전방으로 ATK 130% 폭풍의 칼날을 날려 최대 3명 피해",
					name = "해적왕",
					asset = "해적왕"
				}
			})
		end

		if arg_6_0.subclass == "엘프병사" or arg_6_0.subclassName == "엘프병사" or arg_6_0.subclassKey == "엘프병사" then
			return var_6_1({
				{
					skillName = "질풍 연격",
					id = "엘프기사",
					skillDesc = "1.5초마다 ATK 110% 연속 베기",
					name = "엘프기사",
					asset = "엘프기사"
				}
			})
		end

		if arg_6_0.subclass == "사수 병사" or arg_6_0.subclassName == "사수 병사" or arg_6_0.subclassKey == "사수 병사" then
			return var_6_1({
				{
					skillName = "자연의 맹세",
					id = "바그",
					skillDesc = "자연의 힘으로 각성한 상위 승급",
					name = "바그",
					asset = "바그"
				}
			})
		end

		if arg_6_0.subclass == "성기사" or arg_6_0.subclassName == "성기사" or arg_6_0.subclassKey == "성기사" then
			return var_6_1({
				{
					skillName = "신성 강림",
					id = "오딘",
					skillDesc = "신격에 각성한 단일 상위 승급",
					name = "오딘",
					asset = "오딘"
				}
			})
		end

		if arg_6_0.subclass == "염투사" or arg_6_0.subclassName == "염투사" or arg_6_0.subclassKey == "염투사" then
			return var_6_1({
				{
					skillName = "화염 각성",
					id = "플레어",
					skillDesc = "화염의 힘으로 각성한 단일 상위 승급",
					name = "플레어",
					asset = "플레어"
				}
			})
		end

		if arg_6_0.subclass == "마검사" or arg_6_0.subclassName == "마검사" or arg_6_0.subclassKey == "마검사" then
			return var_6_1({
				{
					skillName = "심연의 응시",
					id = "게이즈",
					skillDesc = "심연의 눈을 뜬 단일 상위 승급",
					name = "게이즈",
					asset = "게이즈"
				}
			})
		end

		if arg_6_0.subclass == "암검사" or arg_6_0.subclassName == "암검사" or arg_6_0.subclassKey == "암검사" then
			return var_6_1({
				{
					skillName = "심연의 군주",
					id = "마그누스",
					skillDesc = "어둠의 힘을 완성한 단일 상위 승급",
					name = "마그누스",
					asset = "마그누스"
				}
			})
		end

		if arg_6_0.subclass == "스펙터" or arg_6_0.subclassName == "스펙터" or arg_6_0.subclassKey == "스펙터" then
			return var_6_1({
				{
					skillName = "공허 잠행",
					id = "베일",
					skillDesc = "공허에 잠식된 단일 상위 승급",
					name = "베일",
					asset = "베일"
				}
			})
		end

		if arg_6_0.subclass == "스카우트" or arg_6_0.subclassName == "스카우트" or arg_6_0.subclassKey == "스카우트" then
			return var_6_1({
				{
					skillName = "공허 돌진",
					id = "라이스",
					skillDesc = "공허의 검격으로 각성한 단일 상위 승급",
					name = "라이스",
					asset = "라이스"
				}
			})
		end

		local var_6_18 = {
			skillName = "반격 태세",
			id = "MiniSwordMan03",
			skillDesc = "4초마다 1.5초간 모든 피해를 막고 공격한 적에게 피해 반사",
			name = "기사",
			asset = "MiniSwordMan03"
		}
		local var_6_19 = {
			{
				skillName = "암영 흡혈",
				id = "암기사",
				skillDesc = "다음 공격 피해의 25% 회복 (재사용 2초)",
				name = "암기사",
				asset = "암기사"
			},
			{
				skillName = "성스러운 회복",
				id = "성기사",
				skillDesc = "1초마다 최저 체력 아군 HP 2% 회복",
				name = "성기사",
				asset = "성기사"
			}
		}
		local var_6_20 = love.math.random(1, #var_6_19)
		local var_6_21 = var_6_19[var_6_20]
		local var_6_22 = var_6_19[var_6_20 == 1 and 2 or 1]

		return var_6_1({
			var_6_18,
			var_6_21,
			var_6_22
		})
	elseif arg_6_0.sym == "A" then
		if arg_6_1 == 2 then
			if arg_6_0.subclass == "정찰병" or arg_6_0.subclassName == "정찰병" or arg_6_0.subclassKey == "정찰병" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "엘프 궁수",
						skillDesc = "자연의 기운을 깃든 정찰병 상위 승급",
						name = "엘프 궁수",
						asset = "엘프 궁수"
					},
					{
						skillName = "승급 특성",
						id = "레인저",
						skillDesc = "빠른 연사력을 지닌 정찰병 상위 승급",
						name = "레인저",
						asset = "레인저"
					}
				})
			end

			return var_6_1({
				{
					skillName = "멀티샷",
					id = "MiniArcherMan02",
					skillDesc = "2개의 화살로 최대 2명에게 각 80% 피해",
					name = "석궁수",
					asset = "MiniArcherMan02"
				},
				{
					skillName = "정밀 사격",
					id = "순찰자",
					skillDesc = "적의 약점을 노려 ATK 180% 피해",
					name = "순찰자",
					asset = "순찰자"
				}
			})
		end

		if arg_6_1 == 3 then
			local var_6_23 = arg_6_0.subclass == "MiniArcherMan02" or arg_6_0.subclassName == "석궁수" or arg_6_0.subclassKey == "MiniArcherMan02"
			local var_6_24 = arg_6_0.subclass == "순찰자" or arg_6_0.subclassName == "순찰자" or arg_6_0.subclassKey == "순찰자"
			local var_6_25 = arg_6_0.subclass == "엘프궁수" or arg_6_0.subclassName == "엘프궁수" or arg_6_0.subclassKey == "엘프궁수" or arg_6_0.subclass == "엘프 궁수" or arg_6_0.subclassName == "엘프 궁수" or arg_6_0.subclassKey == "엘프 궁수"
			local var_6_26 = arg_6_0.subclass == "레인저" or arg_6_0.subclassName == "레인저" or arg_6_0.subclassKey == "레인저"

			if var_6_23 then
				return var_6_1({
					{
						skillName = "트리플샷",
						id = "MiniArcherMan03",
						skillDesc = "3개의 화살로 최대 3명에게 각 100% 피해",
						name = "장궁병",
						asset = "MiniArcherMan03"
					}
				})
			end

			if var_6_24 then
				return var_6_1({
					{
						skillName = "정밀 사격",
						id = "명사수",
						skillDesc = "적의 약점을 노려 공격력의 180% 피해",
						name = "명사수",
						asset = "명사수"
					}
				})
			end

			if var_6_25 then
				return var_6_1({
					{
						id = "하이 엘프",
						name = "하이 엘프",
						asset = "하이 엘프"
					}
				})
			end

			if var_6_26 then
				return var_6_1({
					{
						id = "데드아이",
						name = "데드아이",
						asset = "데드아이"
					}
				})
			end
		end

		if arg_6_1 == 4 then
			local var_6_27 = arg_6_0.subclass == "MiniArcherMan03" or arg_6_0.subclassName == "장궁병" or arg_6_0.subclassKey == "MiniArcherMan03"
			local var_6_28 = arg_6_0.subclass == "순찰자" or arg_6_0.subclassName == "순찰자" or arg_6_0.subclassKey == "순찰자"
			local var_6_29 = arg_6_0.subclass == "엘프 사수" or arg_6_0.subclassName == "엘프 사수" or arg_6_0.subclassKey == "엘프 사수"
			local var_6_30 = arg_6_0.subclass == "해골 사수" or arg_6_0.subclassName == "해골 사수" or arg_6_0.subclassKey == "해골 사수"

			if var_6_27 or var_6_28 then
				return var_6_1({
					{
						id = "로빈 후드",
						name = "로빈 후드",
						asset = "로빈 후드"
					}
				})
			elseif var_6_29 or var_6_30 then
				return var_6_1({
					{
						id = "바이올",
						name = "바이올",
						asset = "바이올"
					}
				})
			end
		end

		if arg_6_1 == 5 then
			local var_6_31 = arg_6_0.subclass == "로빈 후드" or arg_6_0.subclassName == "로빈 후드" or arg_6_0.subclassKey == "로빈 후드"
			local var_6_32 = arg_6_0.subclass == "바이올" or arg_6_0.subclassName == "바이올" or arg_6_0.subclassKey == "바이올"

			if var_6_31 then
				return var_6_1({
					{
						id = "그린 섀도우",
						name = "그린 섀도우",
						asset = "그린 섀도우"
					}
				})
			end

			if var_6_32 then
				return var_6_1({
					{
						id = "바이올렛 둠",
						name = "바이올렛 둠",
						asset = "바이올렛 둠"
					}
				})
			end
		end

		local function var_6_33(arg_9_0)
			local var_9_0 = {
				id = "MiniArcherMan03",
				name = "장궁병",
				asset = "MiniArcherMan03"
			}
			local var_9_1 = {
				skillName = "헤드샷",
				id = "명사수",
				skillDesc = "약해진 적을 노려 강한 한 발을 발사",
				name = "명사수",
				asset = "명사수"
			}

			return {
				var_9_0,
				var_9_1
			}
		end

		local var_6_34 = var_0_0.resolveDominantAxis(arg_6_0)

		return var_6_1(var_6_33(var_6_34))
	elseif arg_6_0.sym == "D" then
		if arg_6_1 == 2 then
			local var_6_35 = arg_6_0.grade

			if type(var_6_35) == "string" then
				var_6_35 = var_6_35:lower()
			end

			if (arg_6_0.subclass == "드루이드" or arg_6_0.subclassName == "드루이드" or arg_6_0.subclassKey == "드루이드") and var_6_35 == "advanced" then
				return var_6_1({
					{
						skillName = "숲의 각성",
						id = "엔트",
						skillDesc = "고대 수목의 힘으로 결투사의 형태를 완성합니다.",
						name = "엔트",
						asset = "엔트"
					},
					{
						skillName = "피의 각성",
						id = "빅터",
						skillDesc = "칼 끝에서 피가 타오르는 결투사로 각성합니다.",
						name = "빅터",
						asset = "빅터"
					}
				})
			end

			return var_6_1({
				{
					skillName = "승급 특성",
					id = "황제",
					skillDesc = "기본 결투사 상위 승급",
					name = "황제",
					asset = "황제"
				},
				{
					skillName = "승급 특성",
					id = "베테랑",
					skillDesc = "기본 결투사 분기 승급",
					name = "베테랑",
					asset = "베테랑"
				}
			})
		end

		if arg_6_1 == 3 then
			if arg_6_0.subclass == "황제" or arg_6_0.subclassName == "황제" or arg_6_0.subclassKey == "황제" then
				return var_6_1({
					{
						id = "검황",
						name = "검황",
						asset = "검황"
					}
				})
			end

			if arg_6_0.subclass == "베테랑" or arg_6_0.subclassName == "베테랑" or arg_6_0.subclassKey == "베테랑" then
				return var_6_1({
					{
						id = "장군",
						name = "장군",
						asset = "장군"
					}
				})
			end

			if arg_6_0.subclass == "엔트" or arg_6_0.subclassName == "엔트" or arg_6_0.subclassKey == "엔트" then
				return var_6_1({
					{
						skillName = "숲주의 계승",
						id = "엔트로드",
						skillDesc = "고대 수목의 정수를 이어받은 최종 분기입니다.",
						name = "엔트로드",
						asset = "엔트로드"
					}
				})
			end

			if arg_6_0.subclass == "빅터" or arg_6_0.subclassName == "빅터" or arg_6_0.subclassKey == "빅터" then
				return var_6_1({
					{
						skillName = "인조 각성",
						id = "프랑켄슈타인",
						skillDesc = "금단의 힘으로 완성된 괴물 보디입니다.",
						name = "프랑켄슈타인",
						asset = "프랑켄슈타인"
					}
				})
			end

			if arg_6_0.subclass == "드루이드" or arg_6_0.subclassName == "드루이드" or arg_6_0.subclassKey == "드루이드" then
				return var_6_1({
					{
						skillName = "자연의 맹세",
						id = "바그",
						skillDesc = "자연의 힘으로 각성한 상위 승급",
						name = "바그",
						asset = "바그"
					}
				})
			end

			if arg_6_0.subclass == "해적왕" or arg_6_0.subclassName == "해적왕" or arg_6_0.subclassKey == "해적왕" then
				return var_6_1({
					{
						id = "검황",
						name = "검황",
						asset = "검황"
					},
					{
						id = "망령",
						name = "망령",
						asset = "망령"
					}
				})
			end
		end

		if arg_6_1 == 5 then
			local var_6_36 = arg_6_0.subclass == "글로리" or arg_6_0.subclassName == "글로리" or arg_6_0.subclassKey == "글로리"
			local var_6_37 = arg_6_0.subclass == "글룸" or arg_6_0.subclassName == "글룸" or arg_6_0.subclassKey == "글룸"

			if var_6_36 then
				return var_6_1({
					{
						id = "루시엘",
						name = "루시엘",
						asset = "루시엘"
					}
				})
			end

			if var_6_37 then
				return var_6_1({
					{
						id = "카오스",
						name = "카오스",
						asset = "카오스"
					}
				})
			end
		end

		if arg_6_1 == 4 then
			local var_6_38 = arg_6_0.subclass == "성황" or arg_6_0.subclassName == "성황" or arg_6_0.subclassKey == "성황"
			local var_6_39 = arg_6_0.subclass == "검성제" or arg_6_0.subclassName == "검성제" or arg_6_0.subclassKey == "검성제"
			local var_6_40 = arg_6_0.subclass == "검황" or arg_6_0.subclassName == "검황" or arg_6_0.subclassKey == "검황"
			local var_6_41 = arg_6_0.subclass == "망령" or arg_6_0.subclassName == "망령" or arg_6_0.subclassKey == "망령"

			if var_6_38 or var_6_39 then
				return var_6_1({
					{
						id = "글로리",
						name = "글로리",
						asset = "글로리"
					}
				})
			end

			if var_6_40 or var_6_41 then
				return var_6_1({
					{
						id = "글룸",
						name = "글룸",
						asset = "글룸"
					}
				})
			end
		end

		local var_6_42 = var_0_0.resolveDominantAxis(arg_6_0)
		local var_6_43 = {
			id = "검황",
			name = "검황",
			asset = "검황"
		}
		local var_6_44 = {
			skillName = "어둠의 구체",
			id = "암흑장군",
			skillDesc = "4초마다, 구체로 적 최대 3명에게 ATK 120% 피해를 주고 1초간 스턴.",
			name = "암흑장군",
			asset = "암흑장군"
		}
		local var_6_45 = {
			skillName = "뿌리 일격",
			id = "우드워든",
			skillDesc = "4초마다, 지면에서 뿌리가 튀어나와 적 최대 3명에게 ATK 140% 피해.",
			name = "우드워든",
			asset = "우드워든"
		}
		local var_6_46 = {
			var_6_43,
			var_6_44,
			var_6_45
		}
		local var_6_47 = var_6_46[love.math.random(1, #var_6_46)]

		return var_6_1({
			var_6_43,
			var_6_44,
			var_6_45
		})
	elseif arg_6_0.sym == "S" then
		if arg_6_1 == 5 then
			local var_6_48 = arg_6_0.subclass == "크러셔" or arg_6_0.subclassName == "크러셔" or arg_6_0.subclassKey == "크러셔"
			local var_6_49 = arg_6_0.subclass == "소울 리퍼" or arg_6_0.subclassName == "소울 리퍼" or arg_6_0.subclassKey == "소울 리퍼"

			if var_6_48 then
				return var_6_1({
					{
						id = "젠",
						name = "젠",
						asset = "젠"
					}
				})
			end

			if var_6_49 then
				return var_6_1({
					{
						id = "나이트메어",
						name = "나이트메어",
						asset = "나이트메어"
					}
				})
			end
		end

		if arg_6_1 == 2 then
			if arg_6_0.subclass == "보병" or arg_6_0.subclassName == "보병" or arg_6_0.subclassKey == "보병" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "엘프 보병",
						skillDesc = "정예 엘프 보병으로 승급",
						name = "엘프 보병",
						asset = "엘프 보병"
					},
					{
						skillName = "승급 특성",
						id = "바이킹",
						skillDesc = "강인한 전사로 승급",
						name = "바이킹",
						asset = "바이킹"
					}
				})
			end

			return var_6_1({
				{
					skillName = "승급 특성",
					id = "MiniSpearMan02",
					skillDesc = "기본 창병 상위 승급",
					name = "창위병",
					asset = "MiniSpearMan02"
				},
				{
					skillName = "승급 특성",
					id = "약탈자",
					skillDesc = "약탈 특화 승급",
					name = "약탈자",
					asset = "약탈자"
				}
			})
		end

		if arg_6_1 == 4 then
			local var_6_50 = arg_6_0.subclass == "MiniSpearMan03" or arg_6_0.subclassName == "근위병" or arg_6_0.subclassKey == "MiniSpearMan03"
			local var_6_51 = arg_6_0.subclass == "허스칼" or arg_6_0.subclassName == "허스칼" or arg_6_0.subclassKey == "허스칼"
			local var_6_52 = arg_6_0.subclass == "엘프 근위병" or arg_6_0.subclassName == "엘프 근위병" or arg_6_0.subclassKey == "엘프 근위병"
			local var_6_53 = arg_6_0.subclass == "해골 근위병" or arg_6_0.subclassName == "해골 근위병" or arg_6_0.subclassKey == "해골 근위병"

			if var_6_50 or var_6_51 then
				return var_6_1({
					{
						id = "크러셔",
						name = "크러셔",
						asset = "크러셔"
					}
				})
			elseif var_6_52 or var_6_53 then
				return var_6_1({
					{
						id = "소울 리퍼",
						name = "소울 리퍼",
						asset = "소울 리퍼"
					}
				})
			end
		end

		if arg_6_1 == 3 then
			local var_6_54 = arg_6_0.subclass == "MiniSpearMan02" or arg_6_0.subclassName == "창위병" or arg_6_0.subclassKey == "MiniSpearMan02"
			local var_6_55 = arg_6_0.subclass == "약탈자" or arg_6_0.subclassName == "약탈자" or arg_6_0.subclassKey == "약탈자"
			local var_6_56 = arg_6_0.subclass == "엘프 보병" or arg_6_0.subclassName == "엘프 보병" or arg_6_0.subclassKey == "엘프 보병"
			local var_6_57 = arg_6_0.subclass == "바이킹" or arg_6_0.subclassName == "바이킹" or arg_6_0.subclassKey == "바이킹"
			local var_6_58 = arg_6_0.subclass == "엘프창병" or arg_6_0.subclassName == "엘프창병" or arg_6_0.subclassKey == "엘프창병"

			if var_6_56 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "하이 엘프 보병",
						skillDesc = "하이 엘프 보병으로 승급",
						name = "하이 엘프 보병",
						asset = "하이 엘프 보병"
					}
				})
			end

			if var_6_57 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "바바리안",
						skillDesc = "바바리안으로 승급",
						name = "바바리안",
						asset = "바바리안"
					}
				})
			end

			if var_6_54 then
				return var_6_1({
					{
						skillName = "결벽의 방진",
						id = "MiniSpearMan03",
						skillDesc = "2초마다 1초간 받는 피해 -40%. 해당 시간 피격 시 즉시 반격 (ATK 50%)",
						name = "근위병",
						asset = "MiniSpearMan03"
					}
				})
			end

			if var_6_55 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "무법자",
						skillDesc = "무법자 특화 승급",
						name = "무법자",
						asset = "무법자"
					}
				})
			end

			if var_6_58 then
				return var_6_1({
					{
						id = "엘프 근위병",
						name = "엘프 근위병",
						asset = "엘프 근위병"
					},
					{
						id = "해골 근위병",
						name = "해골 근위병",
						asset = "해골 근위병"
					}
				})
			end
		end

		local var_6_59 = {
			skillName = "결벽의 방진",
			id = "MiniSpearMan03",
			skillDesc = "2초마다 1초간 받는 피해 -40%. 해당 시간 피격 시 즉시 반격 (ATK 50%)",
			name = "근위병",
			asset = "MiniSpearMan03"
		}
		local var_6_60 = {
			skillName = "승급 특성",
			id = "허스칼",
			skillDesc = "상위 창병 승급",
			name = "허스칼",
			asset = "허스칼"
		}

		return var_6_1({
			var_6_59,
			var_6_60
		})
	elseif arg_6_0.sym == "M" then
		if arg_6_1 == 2 then
			if arg_6_0.subclass == "마도사" or arg_6_0.subclassName == "마도사" or arg_6_0.subclassKey == "마도사" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "엘프법사",
						skillDesc = "엘프 마법사 상위 승급",
						name = "엘프법사",
						asset = "엘프법사"
					},
					{
						skillName = "마력 구체",
						id = "야생법사",
						skillDesc = "4초마다 마력 구체를 발사해 최대 3명의 적에게 ATK 110% 피해",
						name = "야생법사",
						asset = "야생법사"
					}
				})
			end

			return var_6_1({
				{
					skillName = "마력 구체",
					id = "주술사",
					skillDesc = "4초마다 마력 구체를 발사해 최대 3명의 적에게 ATK 110% 피해",
					name = "주술사",
					asset = "주술사"
				},
				{
					skillName = "치유의 장",
					id = "치유술사",
					skillDesc = "치유의 장을 생성해, 3초 동안 범위 내 체력이 가장 낮은 아군 2명의 체력을 5%씩 회복",
					name = "치유술사",
					asset = "치유술사"
				}
			})
		end

		if arg_6_1 == 3 then
			if arg_6_0.subclass == "주술사" or arg_6_0.subclassName == "주술사" or arg_6_0.subclassKey == "주술사" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "대주술사",
						skillDesc = "대주술사 승급",
						name = "대주술사",
						asset = "대주술사"
					}
				})
			end

			if arg_6_0.subclass == "치유술사" or arg_6_0.subclassName == "치유술사" or arg_6_0.subclassKey == "치유술사" then
				return var_6_1({
					{
						skillName = "치유 성역",
						id = "대사제",
						skillDesc = "치유 성역을 생성해, 3초 동안 범위 내 체력이 가장 낮은 아군 3명의 체력을 7%씩 회복",
						name = "대사제",
						asset = "대사제"
					}
				})
			end

			if arg_6_0.subclass == "야생법사" or arg_6_0.subclassName == "야생법사" or arg_6_0.subclassKey == "야생법사" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "원시법사",
						skillDesc = "원시법사 승급",
						name = "원시법사",
						asset = "원시법사"
					}
				})
			end

			if arg_6_0.subclass == "엘프법사" or arg_6_0.subclassName == "엘프법사" or arg_6_0.subclassKey == "엘프법사" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "엘프 현자",
						skillDesc = "엘프 현자 승급",
						name = "엘프 현자",
						asset = "엘프 현자"
					}
				})
			end

			if arg_6_0.subclass == "엘프 주술사" or arg_6_0.subclassName == "엘프 주술사" or arg_6_0.subclassKey == "엘프 주술사" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "엘프 현자",
						skillDesc = "엘프 현자 승급",
						name = "엘프 현자",
						asset = "엘프 현자"
					},
					{
						skillName = "승급 특성",
						id = "해골 마도사",
						skillDesc = "해골 마도사 승급",
						name = "해골 마도사",
						asset = "해골 마도사"
					}
				})
			end
		end

		if arg_6_1 == 4 then
			local var_6_61 = arg_6_0.subclass == "대주술사" or arg_6_0.subclassName == "대주술사" or arg_6_0.subclassKey == "대주술사"
			local var_6_62 = arg_6_0.subclass == "치유술사" or arg_6_0.subclassName == "치유술사" or arg_6_0.subclassKey == "치유술사"
			local var_6_63 = arg_6_0.subclass == "엘프 현자" or arg_6_0.subclassName == "엘프 현자" or arg_6_0.subclassKey == "엘프 현자"
			local var_6_64 = arg_6_0.subclass == "해골 마도사" or arg_6_0.subclassName == "해골 마도사" or arg_6_0.subclassKey == "해골 마도사"
			local var_6_65 = arg_6_0.subclass == "원시법사" or arg_6_0.subclassName == "원시법사" or arg_6_0.subclassKey == "원시법사"

			if var_6_63 or var_6_64 or var_6_65 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "리치",
						skillDesc = "리치 승급",
						name = "리치",
						asset = "리치"
					}
				})
			end

			if var_6_61 or var_6_62 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "루나 현자",
						skillDesc = "루나 현자 승급",
						name = "루나 현자",
						asset = "루나 현자"
					}
				})
			end
		end

		if arg_6_1 == 5 then
			local var_6_66 = arg_6_0.subclass == "루나 현자" or arg_6_0.subclassName == "루나 현자" or arg_6_0.subclassKey == "루나 현자"
			local var_6_67 = arg_6_0.subclass == "리치" or arg_6_0.subclassName == "리치" or arg_6_0.subclassKey == "리치"

			if var_6_66 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "안틀러",
						skillDesc = "안틀러 승급",
						name = "안틀러",
						asset = "안틀러"
					}
				})
			end

			if var_6_67 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "네크로 로드",
						skillDesc = "네크로 로드 승급",
						name = "네크로 로드",
						asset = "네크로 로드"
					}
				})
			end
		end

		if var_0_0.resolveDominantAxis(arg_6_0) == "hp" then
			local var_6_68 = {
				skillName = "정령의 축복",
				id = "현자 엘프",
				skillDesc = "4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%",
				name = "현자 엘프",
				asset = "현자 엘프"
			}
			local var_6_69 = {
				{
					skillName = "어둠의 탄환",
					id = "암흑술사",
					skillDesc = "3초마다 ATK 170% 강화된 어둠의 탄환 발사",
					name = "암흑술사",
					asset = "암흑술사"
				},
				{
					skillName = "부패의 저주",
					id = "본메이지",
					skillDesc = "4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%)",
					name = "본메이지",
					asset = "본메이지"
				}
			}
			local var_6_70 = {
				{
					skillName = "정령의 축복",
					id = "현자 엘프",
					skillDesc = "4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%",
					name = "현자 엘프",
					asset = "현자 엘프"
				},
				{
					skillName = "어둠의 탄환",
					id = "암흑술사",
					skillDesc = "3초마다 ATK 170% 강화된 어둠의 탄환 발사",
					name = "암흑술사",
					asset = "암흑술사"
				},
				{
					skillName = "부패의 저주",
					id = "본메이지",
					skillDesc = "4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%)",
					name = "본메이지",
					asset = "본메이지"
				}
			}
			local var_6_71 = var_6_69[love.math.random(1, #var_6_69)]
			local var_6_72 = {}

			local function var_6_73(arg_10_0)
				return arg_10_0.id ~= var_6_68.id and arg_10_0.id ~= var_6_71.id
			end

			for iter_6_0, iter_6_1 in ipairs(var_6_70) do
				if var_6_73(iter_6_1) then
					table.insert(var_6_72, iter_6_1)
				end
			end

			local var_6_74 = var_6_72[love.math.random(1, #var_6_72)]

			return var_6_1({
				var_6_68,
				var_6_71,
				var_6_74
			})
		else
			local var_6_75 = {
				skillName = "정령의 축복",
				id = "현자 엘프",
				skillDesc = "4초마다 아군 중 ATK 가장 높은 유닛 1명에게 3초간 ATK +30%",
				name = "현자 엘프",
				asset = "현자 엘프"
			}
			local var_6_76 = {
				{
					skillName = "어둠의 탄환",
					id = "암흑술사",
					skillDesc = "3초마다 ATK 170% 강화된 어둠의 탄환 발사",
					name = "암흑술사",
					asset = "암흑술사"
				},
				{
					skillName = "부패의 저주",
					id = "본메이지",
					skillDesc = "4초마다 적 1명에게 3초간 부패의 저주 (받는 피해 +20%)",
					name = "본메이지",
					asset = "본메이지"
				}
			}
			local var_6_77 = love.math.random(1, #var_6_76)
			local var_6_78 = var_6_76[var_6_77]
			local var_6_79 = {}

			for iter_6_2, iter_6_3 in ipairs(var_6_76) do
				if iter_6_2 ~= var_6_77 then
					table.insert(var_6_79, iter_6_3)
				end
			end

			local var_6_80 = var_6_79[love.math.random(1, #var_6_79)]

			return var_6_1({
				var_6_75,
				var_6_78,
				var_6_80
			})
		end
	elseif arg_6_0.sym == "H" then
		if arg_6_1 == 2 then
			if arg_6_0.subclass == "철기병" or arg_6_0.subclassName == "철기병" or arg_6_0.subclassKey == "철기병" or tostring(arg_6_0.grade or "") == "advanced" then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "엘프 기병",
						skillDesc = "엘프 기병으로 승급",
						name = "엘프 기병",
						asset = "엘프 기병"
					},
					{
						skillName = "승급 특성",
						id = "야만 기병",
						skillDesc = "야만 기병으로 승급",
						name = "야만 기병",
						asset = "야만 기병"
					}
				})
			end

			return var_6_1({
				{
					skillName = "승급 특성",
					id = "돌격병",
					skillDesc = "기본 기병 상위 승급",
					name = "돌격병",
					asset = "돌격병"
				},
				{
					skillName = "승급 특성",
					id = "도끼 기병",
					skillDesc = "도끼 기병으로 승급",
					name = "도끼 기병",
					asset = "도끼 기병"
				}
			})
		end

		if arg_6_1 == 3 then
			local var_6_81 = arg_6_0.subclass == "돌격병" or arg_6_0.subclassName == "돌격병" or arg_6_0.subclassKey == "돌격병"
			local var_6_82 = arg_6_0.subclass == "엘프 기병" or arg_6_0.subclassName == "엘프 기병" or arg_6_0.subclassKey == "엘프 기병"
			local var_6_83 = arg_6_0.subclass == "야만 기병" or arg_6_0.subclassName == "야만 기병" or arg_6_0.subclassKey == "야만 기병"
			local var_6_84 = arg_6_0.subclass == "도끼 기병" or arg_6_0.subclassName == "도끼 기병" or arg_6_0.subclassKey == "도끼 기병"

			if var_6_81 then
				return var_6_1({
					{
						id = "MiniHorseMan03",
						name = "중기병",
						asset = "MiniHorseMan03"
					}
				})
			end

			if var_6_84 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "무법 기병",
						skillDesc = "무법 기병으로 승급",
						name = "무법 기병",
						asset = "무법 기병"
					}
				})
			end

			if var_6_83 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "광폭 기병",
						skillDesc = "광폭 기병으로 승급",
						name = "광폭 기병",
						asset = "광폭 기병"
					}
				})
			end

			if var_6_82 then
				return var_6_1({
					{
						skillName = "승급 특성",
						id = "하이 엘프 기병",
						skillDesc = "하이 엘프 기병으로 승급",
						name = "하이 엘프 기병",
						asset = "하이 엘프 기병"
					}
				})
			end
		end

		if arg_6_1 == 4 then
			local var_6_85 = arg_6_0.subclass == "하이 엘프 기병" or arg_6_0.subclassName == "하이 엘프 기병" or arg_6_0.subclassKey == "하이 엘프 기병"
			local var_6_86 = arg_6_0.subclass == "광폭 기병" or arg_6_0.subclassName == "광폭 기병" or arg_6_0.subclassKey == "광폭 기병"

			if var_6_85 or var_6_86 then
				return var_6_1({
					{
						id = "그리즐",
						name = "그리즐",
						asset = "그리즐"
					}
				})
			end

			local var_6_87 = arg_6_0.subclass == "MiniHorseMan03" or arg_6_0.subclassName == "중기병" or arg_6_0.subclassKey == "MiniHorseMan03" or arg_6_0.subclassKey == "중기병"
			local var_6_88 = arg_6_0.subclass == "워베어" or arg_6_0.subclassName == "워베어" or arg_6_0.subclassKey == "워베어"

			if var_6_87 or var_6_88 then
				return var_6_1({
					{
						id = "그리즐",
						name = "그리즐",
						asset = "그리즐"
					}
				})
			end

			local var_6_89 = arg_6_0.subclass == "해골 중기병" or arg_6_0.subclassName == "해골 중기병" or arg_6_0.subclassKey == "해골 중기병"
			local var_6_90 = arg_6_0.subclass == "엘프 중기병" or arg_6_0.subclassName == "엘프 중기병" or arg_6_0.subclassKey == "엘프 중기병"

			if var_6_89 or var_6_90 then
				return var_6_1({
					{
						id = "데스 나이트",
						name = "데스 나이트",
						asset = "데스 나이트"
					}
				})
			end
		end

		if arg_6_1 == 5 then
			local var_6_91 = arg_6_0.subclass == "데스 나이트" or arg_6_0.subclassName == "데스 나이트" or arg_6_0.subclassKey == "데스 나이트" or arg_6_0.subclass == "Death Knight"

			if arg_6_0.subclass == "그리즐" or arg_6_0.subclassName == "그리즐" or arg_6_0.subclassKey == "그리즐" or arg_6_0.subclass == "Grizzle" then
				return var_6_1({
					{
						id = "우르간",
						name = "우르간",
						asset = "우르간"
					}
				})
			end

			if var_6_91 then
				return var_6_1({
					{
						id = "데스 로드",
						name = "데스 로드",
						asset = "데스 로드"
					}
				})
			end
		end

		local var_6_92 = {
			id = "MiniHorseMan03",
			name = "중기병",
			asset = "MiniHorseMan03"
		}
		local var_6_93 = {
			id = "워베어",
			name = "워베어",
			asset = "워베어"
		}

		return var_6_1({
			var_6_92,
			var_6_93
		})
	end

	return var_6_1({
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

return var_0_0
