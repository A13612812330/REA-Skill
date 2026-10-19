local var_0_0 = {
	isEnabled = function()
		local var_1_0 = package.loaded["src.ui.upgrade"]

		return type(var_1_0) == "table" and type(var_1_0.getFactionSynergyUnlocked) == "function" and var_1_0.getFactionSynergyUnlocked() == true
	end
}
local var_0_1 = {
	holy = true,
	undead = true,
	arcane = true,
	celestial = true,
	abyss = true,
	tribe = true,
	forest = true,
	outlaw = true,
	empire = true,
	engineer = true
}

var_0_0.ids = {
	"empire",
	"outlaw",
	"forest",
	"tribe",
	"abyss",
	"celestial",
	"arcane",
	"undead",
	"holy",
	"engineer"
}

local var_0_2 = {
	empire = {
		valueFormatKey = "synergy.empire.value_fmt",
		conditionKey = "synergy.empire.condition",
		effectNameKey = "synergy.empire.effect_name",
		thresholds = {
			2,
			4,
			6
		},
		values = {
			10,
			16,
			22
		}
	},
	outlaw = {
		valueFormatKey = "synergy.outlaw.value_fmt",
		conditionKey = "synergy.outlaw.condition",
		effectNameKey = "synergy.outlaw.effect_name",
		thresholds = {
			2,
			4,
			6
		},
		values = {
			15,
			25,
			40
		}
	},
	forest = {
		valueFormatKey = "synergy.forest.value_fmt",
		conditionKey = "synergy.forest.condition",
		effectNameKey = "synergy.forest.effect_name",
		footerKey = "synergy.once_per_battle",
		thresholds = {
			2,
			4,
			6
		},
		values = {
			10,
			16,
			22
		}
	},
	tribe = {
		valueFormatKey = "synergy.tribe.value_fmt",
		conditionKey = "synergy.tribe.condition",
		effectNameKey = "synergy.tribe.effect_name",
		thresholds = {
			2,
			4,
			6
		},
		values = {
			8,
			14,
			20
		}
	},
	abyss = {
		valueFormatKey = "synergy.abyss.value_fmt",
		conditionKey = "synergy.abyss.condition",
		effectNameKey = "synergy.abyss.effect_name",
		thresholds = {
			2,
			3,
			4
		},
		values = {
			15,
			22,
			30
		}
	},
	celestial = {
		valueFormatKey = "synergy.celestial.value_fmt",
		conditionKey = "synergy.celestial.condition",
		effectNameKey = "synergy.celestial.effect_name",
		footerKey = "synergy.once_per_battle",
		thresholds = {
			2,
			3
		},
		values = {
			20,
			40
		}
	},
	arcane = {
		valueFormatKey = "synergy.arcane.value_fmt",
		conditionKey = "synergy.arcane.condition",
		effectNameKey = "synergy.arcane.effect_name",
		thresholds = {
			2,
			3,
			4
		},
		values = {
			12,
			20,
			30
		}
	},
	undead = {
		valueFormatKey = "synergy.undead.value_fmt",
		maxStacks = 10,
		conditionKey = "synergy.undead.condition",
		effectNameKey = "synergy.undead.effect_name",
		thresholds = {
			2,
			3,
			4
		},
		values = {
			3,
			4,
			5
		}
	},
	holy = {
		valueFormatKey = "synergy.holy.value_fmt",
		conditionKey = "synergy.holy.condition",
		effectNameKey = "synergy.holy.effect_name",
		thresholds = {
			2,
			3
		},
		values = {
			20,
			35
		}
	},
	engineer = {
		trainingFromTier = 2,
		conditionKey = "synergy.engineer.condition",
		effectNameKey = "synergy.engineer.effect_name",
		thresholds = {
			2,
			3
		},
		tierTextKeys = {
			"synergy.engineer.tier1",
			"synergy.engineer.tier2"
		},
		values = {
			1,
			1
		}
	}
}

function var_0_0.normalizeId(arg_2_0)
	local var_2_0 = type(arg_2_0) == "string" and arg_2_0:lower() or nil

	if var_2_0 and var_0_1[var_2_0] then
		return var_2_0
	end

	return nil
end

function var_0_0.getSynergyDef(arg_3_0)
	local var_3_0 = var_0_0.normalizeId(arg_3_0)

	return var_3_0 and var_0_2[var_3_0] or nil
end

function var_0_0.getThresholds(arg_4_0)
	local var_4_0 = var_0_0.getSynergyDef(arg_4_0)

	return var_4_0 and var_4_0.thresholds or nil
end

function var_0_0.getMaxThreshold(arg_5_0)
	local var_5_0 = var_0_0.getThresholds(arg_5_0)

	return var_5_0 and var_5_0[#var_5_0] or 0
end

function var_0_0.getNextThreshold(arg_6_0, arg_6_1)
	local var_6_0 = var_0_0.getThresholds(arg_6_0)

	if not var_6_0 then
		return nil
	end

	local var_6_1 = math.max(0, math.floor(tonumber(arg_6_1) or 0))

	for iter_6_0, iter_6_1 in ipairs(var_6_0) do
		if var_6_1 < iter_6_1 then
			return iter_6_1
		end
	end

	return var_6_0[#var_6_0]
end

function var_0_0.getTierProgress(arg_7_0, arg_7_1)
	local var_7_0 = var_0_0.getThresholds(arg_7_0)

	if not var_7_0 or #var_7_0 == 0 then
		return 0, 0, 1
	end

	local var_7_1 = math.max(0, math.floor(tonumber(arg_7_1) or 0))
	local var_7_2 = #var_7_0
	local var_7_3 = 0
	local var_7_4 = 0

	for iter_7_0, iter_7_1 in ipairs(var_7_0) do
		if iter_7_1 <= var_7_1 then
			var_7_3, var_7_4 = iter_7_0, iter_7_1
		else
			local var_7_5 = (var_7_1 - var_7_4) / math.max(1, iter_7_1 - var_7_4)

			return (var_7_3 + math.max(0, math.min(1, var_7_5))) / var_7_2, var_7_3, var_7_2
		end
	end

	return 1, var_7_2, var_7_2
end

function var_0_0.getSynergyTooltip(arg_8_0, arg_8_1)
	if not var_0_0.isEnabled() then
		return nil
	end

	local var_8_0 = var_0_0.normalizeId(arg_8_0)
	local var_8_1 = var_8_0 and var_0_2[var_8_0] or nil

	if not var_8_1 then
		return nil
	end

	local var_8_2 = require("src.data.language")
	local var_8_3 = arg_8_1 or _G.currentGameLang or "ko"
	local var_8_4 = var_8_1.valueFormatKey and var_8_2.getText(var_8_1.valueFormatKey, var_8_3)
	local var_8_5 = {}

	for iter_8_0, iter_8_1 in ipairs(var_8_1.thresholds) do
		local var_8_6

		if var_8_1.tierTextKeys then
			var_8_6 = var_8_2.getText(var_8_1.tierTextKeys[iter_8_0], var_8_3)
		else
			local var_8_7, var_8_8 = pcall(string.format, var_8_4, var_8_1.values[iter_8_0])

			var_8_6 = var_8_7 and var_8_8 or tostring(var_8_1.values[iter_8_0])
		end

		var_8_5[iter_8_0] = {
			required = iter_8_1,
			value = var_8_6
		}
	end

	return {
		effectName = var_8_2.getText(var_8_1.effectNameKey, var_8_3),
		condition = var_8_2.getText(var_8_1.conditionKey, var_8_3),
		footer = var_8_1.footerKey and var_8_2.getText(var_8_1.footerKey, var_8_3) or nil,
		tiers = var_8_5
	}
end

local var_0_3 = {
	empire = {
		"MiniSwordMan02",
		"병사",
		"MiniSwordMan03",
		"기사",
		"MiniArcherMan02",
		"석궁수",
		"MiniArcherMan03",
		"장궁병",
		"MiniSpearMan02",
		"창위병",
		"MiniSpearMan03",
		"근위병",
		"돌격병",
		"MiniHorseMan03",
		"중기병",
		"황제",
		"검황",
		"고대 창병",
		"스파르타",
		"후사르",
		"윙드 후사르",
		"창술사",
		"랜스마스터"
	},
	outlaw = {
		"해적",
		"해적대장",
		"해적왕",
		"약탈자",
		"무법자",
		"도끼 기병",
		"무법 기병",
		"베테랑",
		"장군",
		"레인저",
		"데드아이",
		"화포수",
		"캐노니어",
		"투기 창병",
		"글래디에이터"
	},
	forest = {
		"엘프병사",
		"엘프 병사",
		"엘프기사",
		"엘프 기사",
		"엘프궁수",
		"엘프 궁수",
		"하이 엘프",
		"엘프 보병",
		"하이 엘프 보병",
		"엘프법사",
		"엘프 법사",
		"엘프 현자",
		"엘프 기병",
		"하이 엘프 기병",
		"엔트",
		"엔트로드",
		"수정술사",
		"운디네",
		"실반",
		"숲의 심장"
	},
	tribe = {
		"순찰자",
		"명사수",
		"주술사",
		"대주술사",
		"사수 병사",
		"바그",
		"바이킹",
		"바바리안",
		"야생법사",
		"원시법사",
		"야만 기병",
		"광폭 기병",
		"초원 기병",
		"켄타로우스",
		"켄타우로스"
	},
	abyss = {
		"마검사",
		"게이즈",
		"암검사",
		"마그누스",
		"암흑사수",
		"레이븐",
		"흑위병",
		"처형자",
		"심연술사",
		"아크메이지",
		"리퍼",
		"소울리퍼",
		"타락천사",
		"파멸의 천사"
	},
	celestial = {
		"월광사제",
		"초승달 여왕",
		"큐피드",
		"세라프",
		"천공병",
		"발키리",
		"대천사",
		"도미니온"
	},
	arcane = {
		"염투사",
		"플레어",
		"화령술사",
		"샐러맨더",
		"서리칼날",
		"빙결여제",
		"예지술사",
		"예언자",
		"페이즈",
		"크로노워커"
	},
	undead = {
		"환영사수",
		"미라지",
		"망령병",
		"SpearRevenant",
		"흑마법사",
		"워록",
		"나이트메어",
		"아포칼립스",
		"LegendarySpecter",
		"스펙터",
		"CrownRevenant",
		"레버넌트",
		"듀라한",
		"팬텀",
		"리치",
		"리치로드"
	},
	holy = {
		"치유술사",
		"대사제",
		"성기사",
		"템플러",
		"RarePaladin",
		"팔라딘",
		"심판관",
		"백기사",
		"성배기사"
	},
	engineer = {
		"빅터",
		"프랑켄슈타인",
		"척탄병",
		"폭파대장",
		"은빛사수",
		"이클립스"
	}
}
local var_0_4 = {}

for iter_0_0, iter_0_1 in ipairs(var_0_0.ids) do
	for iter_0_2, iter_0_3 in ipairs(var_0_3[iter_0_1]) do
		assert(var_0_4[iter_0_3] == nil, "class listed in two factions: " .. iter_0_3)

		var_0_4[iter_0_3] = iter_0_1
	end
end

local var_0_5, var_0_6 = pcall(require, "src.data.asset2")

for iter_0_4, iter_0_5 in ipairs(var_0_5 and type(var_0_6) == "table" and var_0_6.unitSprites or {}) do
	local var_0_7

	for iter_0_6, iter_0_7 in ipairs(iter_0_5.names or {}) do
		var_0_7 = var_0_7 or var_0_4[iter_0_7]
	end

	if var_0_7 then
		for iter_0_8, iter_0_9 in ipairs(iter_0_5.names) do
			if var_0_4[iter_0_9] == nil then
				var_0_4[iter_0_9] = var_0_7
			end
		end
	end
end

var_0_0.byClass = var_0_4

function var_0_0.getSynergyValue(arg_9_0, arg_9_1)
	if not var_0_0.isEnabled() then
		return nil, nil, nil
	end

	local var_9_0 = var_0_0.getSynergyDef(arg_9_0)

	if not var_9_0 then
		return nil, nil, nil
	end

	local var_9_1 = math.max(0, math.floor(tonumber(arg_9_1) or 0))
	local var_9_2

	for iter_9_0, iter_9_1 in ipairs(var_9_0.thresholds) do
		if iter_9_1 <= var_9_1 then
			var_9_2 = iter_9_0
		else
			break
		end
	end

	if not var_9_2 then
		return nil, nil, nil
	end

	return var_9_0.values[var_9_2], var_9_0.thresholds[var_9_2], var_9_2
end

function var_0_0.getForClass(arg_10_0)
	if not var_0_0.isEnabled() then
		return nil
	end

	if type(arg_10_0) ~= "string" or arg_10_0 == "" then
		return nil
	end

	return var_0_4[arg_10_0]
end

function var_0_0.getForChoice(arg_11_0, arg_11_1)
	if not var_0_0.isEnabled() then
		return nil
	end

	local var_11_0 = math.floor(tonumber(arg_11_1 or arg_11_0 and (arg_11_0.rank or arg_11_0.star)) or 0)

	if var_11_0 ~= 2 and var_11_0 ~= 3 then
		return nil
	end

	if type(arg_11_0) ~= "table" then
		return nil
	end

	return var_0_0.getForClass(arg_11_0.id) or var_0_0.getForClass(arg_11_0.name) or var_0_0.getForClass(arg_11_0.asset) or var_0_0.normalizeId(arg_11_0.faction)
end

function var_0_0.getForUnit(arg_12_0)
	if not var_0_0.isEnabled() then
		return nil
	end

	if type(arg_12_0) ~= "table" then
		return nil
	end

	local var_12_0 = math.floor(tonumber(arg_12_0.rank or arg_12_0.star or arg_12_0.rankOverride) or 1)

	if var_12_0 ~= 2 and var_12_0 ~= 3 then
		return nil
	end

	return var_0_0.getForClass(arg_12_0.subclass) or var_0_0.getForClass(arg_12_0.subclassName) or var_0_0.getForClass(arg_12_0.subclassKey) or var_0_0.getForClass(arg_12_0.id) or var_0_0.getForClass(arg_12_0.name) or var_0_0.normalizeId(arg_12_0.faction)
end

function var_0_0.getUnitTypeKey(arg_13_0)
	if type(arg_13_0) ~= "table" then
		return nil
	end

	local var_13_0 = {
		"subclassKey",
		"subclass",
		"subclassName",
		"classKey",
		"id",
		"name"
	}

	for iter_13_0, iter_13_1 in ipairs(var_13_0) do
		local var_13_1 = arg_13_0[iter_13_1]

		if type(var_13_1) == "string" and var_13_1 ~= "" then
			return var_13_1
		end
	end

	return nil
end

function var_0_0.countUniqueTypes(arg_14_0)
	local var_14_0 = {}
	local var_14_1 = {}

	for iter_14_0, iter_14_1 in ipairs(var_0_0.ids) do
		var_14_0[iter_14_1] = 0
		var_14_1[iter_14_1] = {}
	end

	if not var_0_0.isEnabled() then
		return var_14_0
	end

	for iter_14_2, iter_14_3 in ipairs(arg_14_0 or {}) do
		local var_14_2 = var_0_0.getForUnit(iter_14_3)
		local var_14_3 = var_0_0.getUnitTypeKey(iter_14_3)

		if var_14_2 and var_14_3 and var_14_0[var_14_2] ~= nil and not var_14_1[var_14_2][var_14_3] then
			var_14_1[var_14_2][var_14_3] = true
			var_14_0[var_14_2] = var_14_0[var_14_2] + 1
		end
	end

	return var_14_0
end

function var_0_0.apply(arg_15_0)
	if type(arg_15_0) ~= "table" then
		return nil
	end

	if not var_0_0.isEnabled() then
		arg_15_0.faction = nil

		return nil
	end

	arg_15_0.faction = var_0_0.getForUnit(arg_15_0)

	return arg_15_0.faction
end

function var_0_0.getName(arg_16_0, arg_16_1)
	if not var_0_0.isEnabled() then
		return nil
	end

	local var_16_0 = var_0_0.normalizeId(arg_16_0)

	if not var_16_0 then
		return nil
	end

	return require("src.data.language").getText("faction." .. var_16_0, arg_16_1 or _G.currentGameLang or "ko")
end

function var_0_0.getIconPath(arg_17_0)
	if not var_0_0.isEnabled() then
		return nil
	end

	local var_17_0 = var_0_0.normalizeId(arg_17_0)

	if not var_17_0 then
		return nil
	end

	return "src/sprites/icons/sloticons/" .. var_17_0 .. ".png"
end

return var_0_0
