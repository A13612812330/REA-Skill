local var_0_0 = {
	catalog = {
		{
			rarity = "common",
			id = "01",
			icon = "src/sprites/icons/randomoption/01attackup.png",
			source = "Spawn",
			effect = "{atk.png} +6~10%",
			name = "전투 본능",
			variants = {
				{
					chance = 0.4,
					value = "+6%"
				},
				{
					chance = 0.25,
					value = "+7%"
				},
				{
					chance = 0.18,
					value = "+8%"
				},
				{
					chance = 0.12,
					value = "+9%"
				},
				{
					chance = 0.05,
					value = "+10%"
				}
			}
		},
		{
			rarity = "common",
			id = "02",
			icon = "src/sprites/icons/randomoption/02hpup.png",
			source = "Spawn",
			effect = "{hp.png} +8~12%",
			name = "생존 본능",
			variants = {
				{
					chance = 0.4,
					value = "+8%"
				},
				{
					chance = 0.25,
					value = "+9%"
				},
				{
					chance = 0.18,
					value = "+10%"
				},
				{
					chance = 0.12,
					value = "+11%"
				},
				{
					chance = 0.05,
					value = "+12%"
				}
			}
		},
		{
			rarity = "common",
			id = "03",
			icon = "src/sprites/icons/randomoption/03aspdup.png",
			source = "Spawn",
			effect = "{aspd.png} +4~8%",
			name = "반사 신경",
			variants = {
				{
					chance = 0.4,
					value = "+4%"
				},
				{
					chance = 0.25,
					value = "+5%"
				},
				{
					chance = 0.18,
					value = "+6%"
				},
				{
					chance = 0.12,
					value = "+7%"
				},
				{
					chance = 0.05,
					value = "+8%"
				}
			}
		},
		{
			rarity = "common",
			id = "04",
			icon = "src/sprites/icons/randomoption/04firsthit.png",
			source = "Both",
			effect = "첫 공격 피해 {atk.png} +60~120%",
			name = "개시 일격",
			variants = {
				{
					chance = 0.4,
					value = "+60%"
				},
				{
					chance = 0.25,
					value = "+75%"
				},
				{
					chance = 0.18,
					value = "+90%"
				},
				{
					chance = 0.12,
					value = "+105%"
				},
				{
					chance = 0.05,
					value = "+120%"
				}
			}
		},
		{
			rarity = "common",
			id = "05",
			icon = "src/sprites/icons/randomoption/05lasthit.png",
			source = "Both",
			effect = "마지막 적 피해 {atk.png} +12~24%",
			name = "마무리 일격",
			variants = {
				{
					chance = 0.4,
					value = "+12%"
				},
				{
					chance = 0.25,
					value = "+15%"
				},
				{
					chance = 0.18,
					value = "+18%"
				},
				{
					chance = 0.12,
					value = "+21%"
				},
				{
					chance = 0.05,
					value = "+24%"
				}
			}
		},
		{
			rarity = "rare",
			id = "06",
			icon = "src/sprites/icons/randomoption/06killhaste.png",
			source = "Both",
			effect = "적 처치 시 5초간 {aspd.png} +15~35%",
			name = "처치 가속",
			variants = {
				{
					chance = 0.4,
					value = "+15%"
				},
				{
					chance = 0.25,
					value = "+20%"
				},
				{
					chance = 0.18,
					value = "+25%"
				},
				{
					chance = 0.12,
					value = "+30%"
				},
				{
					chance = 0.05,
					value = "+35%"
				}
			}
		},
		{
			rarity = "common",
			id = "07",
			icon = "src/sprites/icons/randomoption/07survive.png",
			source = "Both",
			effect = "사망시 {hp.png} 1로 한번 1초간 생존",
			name = "불굴",
			variants = {
				{
					chance = 1,
					value = "1회"
				}
			}
		},
		{
			rarity = "rare",
			id = "08",
			icon = "src/sprites/icons/randomoption/08berserk.png",
			source = "Both",
			effect = "{atk.png} +18~32% / 받는 피해 +10~18%",
			name = "광기",
			variants = {
				{
					chance = 0.4,
					dmgTaken = "+10%",
					value = "+18%"
				},
				{
					chance = 0.25,
					dmgTaken = "+12%",
					value = "+22%"
				},
				{
					chance = 0.18,
					dmgTaken = "+14%",
					value = "+26%"
				},
				{
					chance = 0.12,
					dmgTaken = "+16%",
					value = "+29%"
				},
				{
					chance = 0.05,
					dmgTaken = "+18%",
					value = "+32%"
				}
			}
		},
		{
			rarity = "rare",
			id = "09",
			icon = "src/sprites/icons/randomoption/09bloodrage.png",
			source = "Both",
			effect = "잃은 HP 비례 {atk.png} 최대 +25~45%",
			name = "피의 사투",
			variants = {
				{
					chance = 0.4,
					value = "+25%"
				},
				{
					chance = 0.25,
					value = "+30%"
				},
				{
					chance = 0.18,
					value = "+35%"
				},
				{
					chance = 0.12,
					value = "+40%"
				},
				{
					chance = 0.05,
					value = "+45%"
				}
			}
		},
		{
			rarity = "rare",
			id = "10",
			icon = "src/sprites/icons/randomoption/10battlefervor.png",
			source = "Both",
			effect = "첫 교전 후 2초마다 {atk.png} +3~7% (최대 5중첩)",
			name = "전투 고조",
			variants = {
				{
					chance = 0.4,
					value = "+3%"
				},
				{
					chance = 0.25,
					value = "+4%"
				},
				{
					chance = 0.18,
					value = "+5%"
				},
				{
					chance = 0.12,
					value = "+6%"
				},
				{
					chance = 0.05,
					value = "+7%"
				}
			}
		},
		{
			rarity = "rare",
			id = "11",
			icon = "src/sprites/icons/randomoption/11allydeath.png",
			source = "Both",
			effect = "쓰러진 아군 1명당 {atk.png} +4~8%",
			name = "혈전",
			variants = {
				{
					chance = 0.4,
					value = "+4%"
				},
				{
					chance = 0.25,
					value = "+5%"
				},
				{
					chance = 0.18,
					value = "+6%"
				},
				{
					chance = 0.12,
					value = "+7%"
				},
				{
					chance = 0.05,
					value = "+8%"
				}
			}
		},
		{
			id = "12",
			rarity = "common",
			icon = "src/sprites/icons/randomoption/12concentrate.png",
			source = "Spawn",
			effect = "흡수될 시 흡수 LV +1~5",
			name = "도시락",
			permittedGrades = {
				normal = true,
				rare = true,
				advanced = true
			},
			variants = {
				{
					chance = 0.4,
					value = "+1"
				},
				{
					chance = 0.25,
					value = "+2"
				},
				{
					chance = 0.18,
					value = "+3"
				},
				{
					chance = 0.12,
					value = "+4"
				},
				{
					chance = 0.05,
					value = "+5"
				}
			}
		},
		{
			id = "13",
			rarity = "common",
			icon = "src/sprites/icons/randomoption/13jungsu.png",
			source = "Spawn",
			effect = "흡수될 시 {essence.png} +1~5",
			name = "황금알",
			permittedGrades = {
				normal = true,
				rare = true,
				advanced = true
			},
			variants = {
				{
					chance = 0.4,
					value = "+1"
				},
				{
					chance = 0.25,
					value = "+2"
				},
				{
					chance = 0.18,
					value = "+3"
				},
				{
					chance = 0.12,
					value = "+4"
				},
				{
					chance = 0.05,
					value = "+5"
				}
			}
		},
		{
			rarity = "legend",
			id = "14",
			icon = "src/sprites/icons/randomoption/14slotsplus.png",
			source = "Promotion",
			effect = "최대 유닛수에 해당 유닛 미적용",
			name = "통솔력",
			variants = {
				{
					chance = 1,
					value = "적용"
				}
			}
		},
		{
			rarity = "legend",
			id = "15",
			icon = "src/sprites/icons/randomoption/15combatshift.png",
			source = "Promotion",
			effect = "HP 50% 초과: {atk.png} +20%, HP 50% 이하: 받는 피해 -20%",
			name = "공수 전환",
			variants = {
				{
					chance = 1,
					damageReduction = "-20%",
					value = "+20%"
				}
			}
		},
		{
			rarity = "rare",
			id = "16",
			icon = "src/sprites/icons/randomoption/16victoryfeast.png",
			source = "Both",
			effect = "적 처치 시 최대 {hp.png}의 4~8% 회복. 전투당 최대 3회",
			name = "처치 회복",
			variants = {
				{
					chance = 0.4,
					value = "4%"
				},
				{
					chance = 0.25,
					value = "5%"
				},
				{
					chance = 0.18,
					value = "6%"
				},
				{
					chance = 0.12,
					value = "7%"
				},
				{
					chance = 0.05,
					value = "8%"
				}
			}
		},
		{
			rarity = "rare",
			id = "17",
			icon = "src/sprites/icons/randomoption/17lonewolf.png",
			source = "Promotion",
			effect = "같은 계열의 다른 아군이 없으면 {atk.png} +8~16%, 받는 피해 -3~7%",
			name = "독보적",
			variants = {
				{
					chance = 0.4,
					damageReduction = "-3%",
					value = "+8%"
				},
				{
					chance = 0.25,
					damageReduction = "-4%",
					value = "+10%"
				},
				{
					chance = 0.18,
					damageReduction = "-5%",
					value = "+12%"
				},
				{
					chance = 0.12,
					damageReduction = "-6%",
					value = "+14%"
				},
				{
					chance = 0.05,
					damageReduction = "-7%",
					value = "+16%"
				}
			}
		},
		{
			id = "18",
			rarity = "common",
			icon = "src/sprites/icons/randomoption/18gold.png",
			source = "Spawn",
			effect = "흡수될 시 {gold.png} +50~250",
			name = "비상금",
			permittedGrades = {
				normal = true,
				rare = true,
				advanced = true
			},
			variants = {
				{
					chance = 0.4,
					value = "+50"
				},
				{
					chance = 0.25,
					value = "+75"
				},
				{
					chance = 0.18,
					value = "+100"
				},
				{
					chance = 0.12,
					value = "+150"
				},
				{
					chance = 0.05,
					value = "+250"
				}
			}
		},
		{
			rarity = "rare",
			id = "19",
			icon = "src/sprites/icons/randomoption/19baseguardian.png",
			source = "Promotion",
			effect = "기지 근처의 적을 우선 공격하고, 해당 적에게 주는 피해 {atk.png} +15~35%",
			name = "기지 수호자",
			variants = {
				{
					chance = 0.4,
					value = "+15%"
				},
				{
					chance = 0.25,
					value = "+20%"
				},
				{
					chance = 0.18,
					value = "+25%"
				},
				{
					chance = 0.12,
					value = "+30%"
				},
				{
					chance = 0.05,
					value = "+35%"
				}
			}
		},
		{
			rarity = "legend",
			id = "20",
			icon = "src/sprites/icons/randomoption/20judgementprep.png",
			source = "Both",
			effect = "심판 웨이브 전투시 {atk.png} +30~50%",
			name = "결전의 날",
			variants = {
				{
					chance = 0.4,
					value = "+30%"
				},
				{
					chance = 0.25,
					value = "+35%"
				},
				{
					chance = 0.18,
					value = "+40%"
				},
				{
					chance = 0.12,
					value = "+45%"
				},
				{
					chance = 0.05,
					value = "+50%"
				}
			}
		},
		{
			rarity = "legend",
			id = "21",
			icon = "src/sprites/icons/randomoption/21bossprep.png",
			source = "Both",
			effect = "보스 웨이브 전투시 {atk.png} +30~50%",
			name = "보스 슬레이어",
			variants = {
				{
					chance = 0.4,
					value = "+30%"
				},
				{
					chance = 0.25,
					value = "+35%"
				},
				{
					chance = 0.18,
					value = "+40%"
				},
				{
					chance = 0.12,
					value = "+45%"
				},
				{
					chance = 0.05,
					value = "+50%"
				}
			}
		},
		{
			requiresActiveSkill = true,
			id = "22",
			rarity = "rare",
			icon = "src/sprites/icons/randomoption/22skillmastery.png",
			source = "Promotion",
			effect = "액티브 스킬 쿨타임 -8~16%",
			name = "기술 가속",
			variants = {
				{
					chance = 0.4,
					value = "-8%"
				},
				{
					chance = 0.25,
					value = "-10%"
				},
				{
					chance = 0.18,
					value = "-12%"
				},
				{
					chance = 0.12,
					value = "-14%"
				},
				{
					chance = 0.05,
					value = "-16%"
				}
			}
		}
	}
}

local function var_0_1(arg_1_0)
	if arg_1_0 then
		return arg_1_0
	end

	if love and love.math and love.math.random then
		return love.math.random
	end

	return math.random
end

local function var_0_2(arg_2_0, arg_2_1)
	if not arg_2_0 or #arg_2_0 == 0 then
		return nil
	end

	local var_2_0 = 0

	for iter_2_0, iter_2_1 in ipairs(arg_2_0) do
		local var_2_1 = tonumber(iter_2_1.chance or iter_2_1.weight) or 1

		if var_2_1 > 0 then
			var_2_0 = var_2_0 + var_2_1
		end
	end

	if var_2_0 <= 0 then
		return arg_2_0[1]
	end

	local var_2_2 = var_0_1(arg_2_1)() * var_2_0

	for iter_2_2, iter_2_3 in ipairs(arg_2_0) do
		local var_2_3 = tonumber(iter_2_3.chance or iter_2_3.weight) or 1

		if var_2_3 > 0 then
			var_2_2 = var_2_2 - var_2_3

			if var_2_2 <= 0 then
				return iter_2_3
			end
		end
	end

	return arg_2_0[1]
end

local function var_0_3(arg_3_0, arg_3_1, arg_3_2)
	if not arg_3_0 or #arg_3_0 == 0 then
		return nil
	end

	local var_3_0 = {
		common = 70,
		legend = 5,
		rare = 25
	}

	if arg_3_2 == 2 then
		var_3_0 = {
			common = 60,
			legend = 2,
			rare = 38
		}
	elseif arg_3_2 == 3 then
		var_3_0 = {
			common = 40,
			legend = 10,
			rare = 50
		}
	elseif arg_3_2 == 4 then
		var_3_0 = {
			common = 20,
			legend = 20,
			rare = 60
		}
	elseif arg_3_2 == 5 then
		var_3_0 = {
			common = 10,
			legend = 30,
			rare = 60
		}
	end

	local var_3_1 = {}
	local var_3_2 = {}
	local var_3_3 = 0

	for iter_3_0, iter_3_1 in ipairs(arg_3_0) do
		local var_3_4 = (iter_3_1.rarity or "common"):lower()

		if not var_3_1[var_3_4] then
			var_3_1[var_3_4] = {}
		end

		table.insert(var_3_1[var_3_4], iter_3_1)
	end

	for iter_3_2, iter_3_3 in pairs(var_3_1) do
		if #iter_3_3 > 0 and var_3_0[iter_3_2] then
			table.insert(var_3_2, iter_3_2)

			var_3_3 = var_3_3 + var_3_0[iter_3_2]
		end
	end

	if var_3_3 <= 0 then
		return arg_3_0[math.floor(var_0_1(arg_3_1)() * #arg_3_0) + 1]
	end

	local var_3_5 = var_0_1(arg_3_1)() * var_3_3
	local var_3_6 = var_3_2[1]

	for iter_3_4, iter_3_5 in ipairs(var_3_2) do
		local var_3_7 = var_3_0[iter_3_5]

		if var_3_5 <= var_3_7 then
			var_3_6 = iter_3_5

			break
		else
			var_3_5 = var_3_5 - var_3_7
		end
	end

	local var_3_8 = var_3_1[var_3_6]

	return var_3_8[math.floor(var_0_1(arg_3_1)() * #var_3_8) + 1]
end

function var_0_0.rollForSpawn(arg_4_0, arg_4_1, arg_4_2, arg_4_3)
	local var_4_0 = arg_4_0
	local var_4_1 = arg_4_1

	if type(var_4_0) == "string" and var_4_1 == nil then
		var_4_1 = var_4_0
		var_4_0 = nil
	end

	local var_4_2 = rawget(_G, "Tutorial")
	local var_4_3 = var_4_2 and var_4_2.isRunning and var_4_2.isRunning() == true
	local var_4_4 = {}

	for iter_4_0, iter_4_1 in ipairs(var_0_0.catalog) do
		local var_4_5 = not var_4_3 or tostring(iter_4_1.id) ~= "12" and tostring(iter_4_1.id) ~= "13"
		local var_4_6 = not iter_4_1.permittedGrades or var_4_1 and iter_4_1.permittedGrades[var_4_1]
		local var_4_7 = not iter_4_1.requiresActiveSkill or arg_4_3 == true
		local var_4_8 = true

		if arg_4_2 then
			var_4_8 = iter_4_1.source == "Promotion" or iter_4_1.source == "Both"
		else
			var_4_8 = iter_4_1.source ~= "Promotion"
		end

		if var_4_5 and var_4_6 and var_4_8 and var_4_7 then
			table.insert(var_4_4, iter_4_1)
		end
	end

	if #var_4_4 == 0 then
		for iter_4_2, iter_4_3 in ipairs(var_0_0.catalog) do
			if (not iter_4_3.requiresActiveSkill or arg_4_3 == true) and (not var_4_3 or tostring(iter_4_3.id) ~= "12" and tostring(iter_4_3.id) ~= "13") then
				table.insert(var_4_4, iter_4_3)
			end
		end
	end

	local var_4_9 = var_0_3(var_4_4, var_4_0, arg_4_2)

	if not var_4_9 then
		return nil
	end

	local var_4_10 = var_0_2(var_4_9.variants, var_4_0)

	if not var_4_10 then
		return nil
	end

	local var_4_11 = {
		id = var_4_9.id,
		name = var_4_9.name,
		rarity = var_4_9.rarity,
		effect = var_4_9.effect,
		source = var_4_9.source,
		icon = var_4_9.icon,
		variant = {}
	}

	for iter_4_4, iter_4_5 in pairs(var_4_10) do
		if iter_4_4 ~= "chance" and iter_4_4 ~= "weight" then
			var_4_11.variant[iter_4_4] = iter_4_5
		end
	end

	return var_4_11
end

function var_0_0.rollForId(arg_5_0, arg_5_1)
	local var_5_0

	for iter_5_0, iter_5_1 in ipairs(var_0_0.catalog) do
		if iter_5_1.id == arg_5_0 then
			var_5_0 = iter_5_1

			break
		end
	end

	if not var_5_0 then
		return nil
	end

	local var_5_1 = var_0_2(var_5_0.variants, arg_5_1)

	if not var_5_1 then
		return nil
	end

	local var_5_2 = {
		id = var_5_0.id,
		name = var_5_0.name,
		rarity = var_5_0.rarity,
		effect = var_5_0.effect,
		source = var_5_0.source,
		icon = var_5_0.icon,
		variant = {}
	}

	for iter_5_2, iter_5_3 in pairs(var_5_1) do
		if iter_5_2 ~= "chance" and iter_5_2 ~= "weight" then
			var_5_2.variant[iter_5_2] = iter_5_3
		end
	end

	return var_5_2
end

local function var_0_4(arg_6_0)
	if type(arg_6_0) ~= "table" then
		return {}
	end

	local var_6_0 = {}

	if #arg_6_0 > 0 then
		for iter_6_0, iter_6_1 in ipairs(arg_6_0) do
			if iter_6_1 ~= nil then
				var_6_0[tostring(iter_6_1)] = true
			end
		end
	else
		for iter_6_2, iter_6_3 in pairs(arg_6_0) do
			if iter_6_3 then
				var_6_0[tostring(iter_6_2)] = true
			end
		end
	end

	return var_6_0
end

function var_0_0.rollForSpawnExcluding(arg_7_0, arg_7_1, arg_7_2, arg_7_3, arg_7_4)
	local var_7_0 = arg_7_1
	local var_7_1 = arg_7_2

	if type(var_7_0) == "string" and var_7_1 == nil then
		var_7_1 = var_7_0
		var_7_0 = nil
	end

	local var_7_2 = var_0_4(arg_7_0)
	local var_7_3 = rawget(_G, "Tutorial")

	if var_7_3 and var_7_3.isRunning and var_7_3.isRunning() == true then
		var_7_2["12"] = true
		var_7_2["13"] = true
	end

	local var_7_4 = {}

	for iter_7_0, iter_7_1 in ipairs(var_0_0.catalog or {}) do
		local var_7_5 = iter_7_1 and iter_7_1.id and not var_7_2[tostring(iter_7_1.id)]
		local var_7_6 = not iter_7_1.permittedGrades or var_7_1 and iter_7_1.permittedGrades[var_7_1]
		local var_7_7 = not iter_7_1.requiresActiveSkill or arg_7_4 == true
		local var_7_8 = true

		if arg_7_3 then
			var_7_8 = iter_7_1.source == "Promotion" or iter_7_1.source == "Both"
		else
			var_7_8 = iter_7_1.source ~= "Promotion"
		end

		if var_7_5 and var_7_6 and var_7_8 and var_7_7 then
			table.insert(var_7_4, iter_7_1)
		end
	end

	if #var_7_4 == 0 and #var_0_0.catalog > 0 then
		for iter_7_2, iter_7_3 in ipairs(var_0_0.catalog) do
			local var_7_9 = iter_7_3 and iter_7_3.id and not var_7_2[tostring(iter_7_3.id)]
			local var_7_10 = not iter_7_3.requiresActiveSkill or arg_7_4 == true
			local var_7_11 = true

			if arg_7_3 then
				var_7_11 = iter_7_3.source == "Promotion" or iter_7_3.source == "Both"
			else
				var_7_11 = iter_7_3.source ~= "Promotion"
			end

			if var_7_9 and var_7_11 and var_7_10 then
				table.insert(var_7_4, iter_7_3)
			end
		end
	end

	local var_7_12 = var_0_3(var_7_4, var_7_0, arg_7_3)

	if not var_7_12 then
		return nil
	end

	local var_7_13 = var_0_2(var_7_12.variants, var_7_0)

	if not var_7_13 then
		return nil
	end

	local var_7_14 = {
		id = var_7_12.id,
		name = var_7_12.name,
		rarity = var_7_12.rarity,
		effect = var_7_12.effect,
		source = var_7_12.source,
		icon = var_7_12.icon,
		variant = {}
	}

	for iter_7_4, iter_7_5 in pairs(var_7_13) do
		if iter_7_4 ~= "chance" and iter_7_4 ~= "weight" then
			var_7_14.variant[iter_7_4] = iter_7_5
		end
	end

	return var_7_14
end

function var_0_0.rollList(arg_8_0, arg_8_1, arg_8_2)
	local var_8_0 = math.max(0, math.min(5, math.floor(tonumber(arg_8_0) or 0)))
	local var_8_1 = {}

	for iter_8_0 = 1, var_8_0 do
		var_8_1[iter_8_0] = var_0_0.rollForSpawn(arg_8_1, arg_8_2)
	end

	return var_8_1
end

function var_0_0.normalizeOption(arg_9_0)
	if not arg_9_0 then
		return arg_9_0
	end

	local var_9_0 = tostring(arg_9_0.id or "")

	if var_9_0 ~= "10" and var_9_0 ~= "15" and var_9_0 ~= "16" and var_9_0 ~= "17" and var_9_0 ~= "19" and var_9_0 ~= "22" then
		return arg_9_0
	end

	local var_9_1

	for iter_9_0, iter_9_1 in ipairs(var_0_0.catalog or {}) do
		if tostring(iter_9_1.id or "") == var_9_0 then
			var_9_1 = iter_9_1

			break
		end
	end

	if var_9_1 then
		arg_9_0.name = var_9_1.name
		arg_9_0.rarity = var_9_1.rarity
		arg_9_0.effect = var_9_1.effect
		arg_9_0.source = var_9_1.source
		arg_9_0.icon = var_9_1.icon
	end

	if var_9_0 == "10" and arg_9_0.variant and arg_9_0.variant.value then
		local var_9_2 = tonumber(tostring(arg_9_0.variant.value):match("[-+]?%d+%.?%d*"))

		if var_9_2 and var_9_2 >= 0.4 and var_9_2 <= 0.8 then
			local var_9_3 = math.max(0, math.min(4, math.floor((var_9_2 - 0.4) * 10 + 0.5)))

			arg_9_0.variant.value = ("+%d%%"):format(3 + var_9_3)
		end
	elseif var_9_0 == "15" then
		arg_9_0.variant = arg_9_0.variant or {}
		arg_9_0.variant.value = "+20%"
		arg_9_0.variant.damageReduction = "-20%"
	elseif var_9_0 == "16" then
		arg_9_0.variant = arg_9_0.variant or {}

		local var_9_4 = tostring(arg_9_0.variant.value or "")

		if not tonumber(var_9_4:match("%d+%.?%d*")) then
			arg_9_0.variant.value = "4%"
		end
	elseif var_9_0 == "17" then
		arg_9_0.variant = arg_9_0.variant or {}

		local var_9_5 = tonumber(tostring(arg_9_0.variant.value or ""):match("[-+]?%d+%.?%d*"))
		local var_9_6 = {
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			"-3%",
			nil,
			"-4%",
			nil,
			"-5%",
			nil,
			"-6%",
			nil,
			"-7%"
		}

		if not var_9_6[var_9_5] then
			var_9_5 = 8
			arg_9_0.variant.value = "+8%"
		end

		arg_9_0.variant.damageReduction = var_9_6[var_9_5]
	elseif var_9_0 == "19" then
		arg_9_0.variant = arg_9_0.variant or {}

		local var_9_7 = tonumber(tostring(arg_9_0.variant.value or ""):match("[-+]?%d+%.?%d*"))

		if not ({
			[15] = true,
			[25] = true,
			[20] = true,
			[30] = true,
			[35] = true
		})[var_9_7] then
			arg_9_0.variant.value = "+15%"
		end
	elseif var_9_0 == "22" then
		arg_9_0.variant = arg_9_0.variant or {}

		local var_9_8 = math.abs(tonumber(tostring(arg_9_0.variant.value or ""):match("[-+]?%d+%.?%d*")) or 0)

		if not ({
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			nil,
			true,
			nil,
			true,
			nil,
			true,
			nil,
			true,
			nil,
			true
		})[var_9_8] then
			var_9_8 = 8
		end

		arg_9_0.variant.value = ("-%d%%"):format(var_9_8)
	end

	return arg_9_0
end

function var_0_0.getIconPath(arg_10_0)
	arg_10_0 = var_0_0.normalizeOption(arg_10_0)

	return arg_10_0 and arg_10_0.icon or nil
end

return var_0_0
