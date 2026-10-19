local var_0_0 = {
	data = require("src.data.awakening")
}
local var_0_1 = require("src.data.constants")
local var_0_2 = {
	MiniSwordMan03 = "W01",
	MiniSpearMan03 = "S01",
	Ringmaster = "J02",
	Illusionist = "J01",
	MiniArcherMan03 = "A01",
	엘프기사 = "W03"
}

for iter_0_0, iter_0_1 in pairs(var_0_0.data.units) do
	var_0_2[iter_0_1.name] = iter_0_0
	var_0_2[iter_0_1.english] = iter_0_0
	var_0_2[iter_0_1.name .. " (" .. iter_0_1.english .. ")"] = iter_0_0
end

local function var_0_3(arg_1_0)
	return arg_1_0 and arg_1_0.alive ~= false and not arg_1_0.dying and (arg_1_0.hp == nil or arg_1_0.hp > 0)
end

local function var_0_4(arg_2_0, arg_2_1)
	arg_2_0 = tonumber(arg_2_0)

	return arg_2_0 and arg_2_0 == arg_2_0 and arg_2_0 ~= math.huge and arg_2_0 ~= -math.huge and arg_2_0 or arg_2_1
end

local function var_0_5(arg_3_0)
	return arg_3_0 and (arg_3_0.sym == "Joker" and "J" or arg_3_0.sym)
end

function var_0_0.identity(arg_4_0)
	if not arg_4_0 then
		return
	end

	local var_4_0 = var_0_2[arg_4_0.subclassKey] or var_0_2[arg_4_0.subclass] or var_0_2[arg_4_0.subclassName] or var_0_2[arg_4_0.skin] or var_0_2[arg_4_0.name]

	var_4_0 = var_4_0 or arg_4_0.awakening and arg_4_0.awakening.unitId

	if var_4_0 and var_0_0.data.units[var_4_0] and var_0_0.data.units[var_4_0].sym == var_0_5(arg_4_0) then
		return var_4_0
	end
end

function var_0_0.maxRank(arg_5_0)
	local var_5_0 = var_0_1.evolution or {}

	return var_0_4(arg_5_0 and arg_5_0.maxRank, var_0_4(var_5_0.maxRank, var_0_4((var_5_0.maxRankByGrade or {})[arg_5_0 and arg_5_0.grade or "normal"], 3)))
end

function var_0_0.capacity(arg_6_0)
	local var_6_0 = 0

	for iter_6_0, iter_6_1 in ipairs(var_0_0.data.milestones) do
		if iter_6_1.rank <= var_0_0.maxRank(arg_6_0) then
			var_6_0 = var_6_0 + 1
		end
	end

	return var_6_0
end

function var_0_0.catalog(arg_7_0)
	local var_7_0 = arg_7_0 and (arg_7_0.awakening and arg_7_0.awakening.version or arg_7_0.awakeningVersion)

	return var_0_0.data.catalogs[var_7_0 or 8] or var_0_0.data
end

function var_0_0.isV7(arg_8_0, arg_8_1)
	local var_8_0 = arg_8_0 and (arg_8_0.awakening and arg_8_0.awakening.version or arg_8_0.awakeningVersion)

	arg_8_1 = arg_8_1 or arg_8_0 and arg_8_0._awakeningBattle

	return (var_8_0 or arg_8_1 and arg_8_1.awakeningVersion or 8) == 7
end

function var_0_0.isV8(arg_9_0, arg_9_1)
	local var_9_0 = arg_9_0 and (arg_9_0.awakening and arg_9_0.awakening.version or arg_9_0.awakeningVersion)

	arg_9_1 = arg_9_1 or arg_9_0 and arg_9_0._awakeningBattle

	return (var_9_0 or arg_9_1 and arg_9_1.awakeningVersion or 8) == 8
end

function var_0_0.isModern(arg_10_0, arg_10_1)
	return var_0_0.isV7(arg_10_0, arg_10_1) or var_0_0.isV8(arg_10_0, arg_10_1)
end

function var_0_0.bindRun(arg_11_0, arg_11_1)
	arg_11_0.awakeningVersion = arg_11_1 or arg_11_0.awakeningVersion or 8

	for iter_11_0, iter_11_1 in ipairs(arg_11_0.rosterUnits or {}) do
		iter_11_1.awakeningVersion = arg_11_0.awakeningVersion
	end
end

function var_0_0.normalize(arg_12_0)
	if not arg_12_0 then
		return
	end

	local var_12_0 = arg_12_0.awakening

	if type(var_12_0) ~= "table" then
		var_12_0 = {
			stage = 0,
			version = arg_12_0.awakeningVersion or 8,
			selected = {},
			seen = {}
		}
		arg_12_0.awakening = var_12_0
	end

	var_12_0.version = var_12_0.version or arg_12_0.awakeningVersion or 4

	local var_12_1 = var_0_0.catalog(arg_12_0)

	if type(var_12_0.selected) ~= "table" then
		var_12_0.selected = {}
	end

	if type(var_12_0.seen) ~= "table" then
		var_12_0.seen = {}
	end

	var_12_0.unitId = var_0_0.identity(arg_12_0)

	local var_12_2 = {}
	local var_12_3 = {}
	local var_12_4 = {}
	local var_12_5 = type(var_12_0.levels) == "table" and var_12_0.levels or {}

	for iter_12_0, iter_12_1 in ipairs(var_12_0.selected) do
		if var_12_1.candidates[iter_12_1] and not var_12_2[iter_12_1] and #var_12_3 < 5 then
			var_12_2[iter_12_1] = true
			var_12_3[#var_12_3 + 1] = iter_12_1
			var_12_0.seen[iter_12_1] = true
			var_12_4[iter_12_1] = math.max(1, math.min(5, math.floor(var_0_4(var_12_5[iter_12_1], iter_12_0))))
		end
	end

	var_12_0.selected = var_12_3
	var_12_0.levels = var_12_4
	var_12_0.stage = #var_12_3

	if type(var_12_0.pending) == "table" then
		local var_12_6 = {}
		local var_12_7 = {}

		for iter_12_2, iter_12_3 in ipairs(var_12_0.pending) do
			if var_12_1.candidates[iter_12_3] and not var_12_2[iter_12_3] and not var_12_7[iter_12_3] then
				var_12_6[#var_12_6 + 1] = iter_12_3
				var_12_7[iter_12_3] = true
				var_12_0.seen[iter_12_3] = true
			end
		end

		var_12_0.pending = #var_12_6 > 0 and var_12_6 or nil
	else
		var_12_0.pending = nil
	end

	return var_12_0
end

function var_0_0.stage(arg_13_0)
	return arg_13_0 and arg_13_0.awakening and #(arg_13_0.awakening.selected or {}) or 0
end

function var_0_0.eligible(arg_14_0)
	if not var_0_0.identity(arg_14_0) then
		return false
	end

	local var_14_0 = var_0_0.data.milestones[var_0_0.stage(arg_14_0) + 1]

	return var_14_0 ~= nil and var_14_0.rank <= var_0_0.maxRank(arg_14_0) and var_0_4(arg_14_0.rank or arg_14_0.star, 1) >= var_14_0.rank and var_0_4(arg_14_0.absorbLV or arg_14_0.level, 1) >= var_14_0.level
end

function var_0_0.available(arg_15_0, arg_15_1)
	local var_15_0 = require("src.ui.upgrade")

	return (arg_15_0 and arg_15_0.sandboxMode or not var_15_0.getAwakeningUnlocked or var_15_0.getAwakeningUnlocked()) and var_0_0.eligible(arg_15_1) or false
end

function var_0_0.pool(arg_16_0)
	local var_16_0 = var_0_0.identity(arg_16_0)
	local var_16_1 = {}

	for iter_16_0, iter_16_1 in ipairs(var_16_0 and var_0_0.catalog(arg_16_0).units[var_16_0].candidates or {}) do
		if var_16_0 ~= "D04" or iter_16_1 ~= "D14" then
			var_16_1[#var_16_1 + 1] = iter_16_1
		end
	end

	return var_16_1
end

function var_0_0.offer(arg_17_0, arg_17_1)
	if not var_0_0.eligible(arg_17_0) then
		return
	end

	local var_17_0 = var_0_0.normalize(arg_17_0)

	if var_17_0.pending then
		return var_17_0.pending
	end

	arg_17_1 = arg_17_1 or function(arg_18_0)
		return love.math.random(arg_18_0)
	end

	local var_17_1 = {}
	local var_17_2 = {}
	local var_17_3 = {}
	local var_17_4 = {}

	for iter_17_0, iter_17_1 in ipairs(var_17_0.selected) do
		var_17_1[iter_17_1] = true
	end

	for iter_17_2, iter_17_3 in ipairs(var_0_0.pool(arg_17_0)) do
		if not var_17_1[iter_17_3] then
			var_17_4[#var_17_4 + 1] = iter_17_3

			local var_17_5 = var_17_0.seen[iter_17_3] and var_17_3 or var_17_2

			var_17_5[#var_17_5 + 1] = iter_17_3
		end
	end

	local var_17_6 = {}
	local var_17_7 = {}

	local function var_17_8(arg_19_0, arg_19_1)
		local var_19_0 = {}

		for iter_19_0, iter_19_1 in ipairs(arg_19_0) do
			if not var_17_7[iter_19_1] then
				var_19_0[#var_19_0 + 1] = iter_19_1
			end
		end

		for iter_19_2 = 1, math.min(arg_19_1, #var_19_0) do
			local var_19_1 = table.remove(var_19_0, arg_17_1(#var_19_0))

			var_17_6[#var_17_6 + 1] = var_19_1
			var_17_7[var_19_1] = true
		end
	end

	if var_17_0.stage == 0 then
		var_17_8(var_17_4, 3)
	else
		var_17_8(var_17_2, 2)
		var_17_8(var_17_3, 1)
		var_17_8(var_17_4, 3 - #var_17_6)
	end

	for iter_17_4 = #var_17_6, 2, -1 do
		local var_17_9 = arg_17_1(iter_17_4)

		var_17_6[iter_17_4], var_17_6[var_17_9] = var_17_6[var_17_9], var_17_6[iter_17_4]
	end

	for iter_17_5, iter_17_6 in ipairs(var_17_6) do
		var_17_0.seen[iter_17_6] = true
	end

	var_17_0.pending = var_17_6

	return var_17_6
end

function var_0_0.choose(arg_20_0, arg_20_1)
	if not var_0_0.eligible(arg_20_0) then
		return false
	end

	local var_20_0 = var_0_0.normalize(arg_20_0)

	for iter_20_0, iter_20_1 in ipairs(var_20_0.pending or {}) do
		if arg_20_1 == iter_20_1 then
			var_20_0.selected[#var_20_0.selected + 1] = arg_20_1
			var_20_0.stage = #var_20_0.selected
			var_20_0.levels[arg_20_1] = var_20_0.stage
			var_20_0.pending = nil

			return true
		end
	end

	return false
end

function var_0_0.summary(arg_21_0)
	local var_21_0 = var_0_0.stage(arg_21_0)
	local var_21_1 = var_0_0.data.milestones[var_21_0 + 1]
	local var_21_2 = var_21_1 and "다음 각성: Lv." .. var_21_1.level .. (var_21_1.rank > 3 and " / " .. var_21_1.rank .. "성" or "") or "모든 각성 완료"

	return "각성 " .. var_21_0 .. "/" .. var_0_0.capacity(arg_21_0), var_21_2
end

function var_0_0.has(arg_22_0, arg_22_1)
	if not var_0_0.catalog(arg_22_0).candidates[arg_22_1] then
		return false
	end

	for iter_22_0, iter_22_1 in ipairs(arg_22_0 and arg_22_0.awakening and arg_22_0.awakening.selected or {}) do
		if iter_22_1 == arg_22_1 then
			return true
		end
	end

	return false
end

function var_0_0.level(arg_23_0, arg_23_1)
	if not var_0_0.catalog(arg_23_0).candidates[arg_23_1] then
		return 0
	end

	local var_23_0 = arg_23_0 and arg_23_0.awakening

	for iter_23_0, iter_23_1 in ipairs(var_23_0 and var_23_0.selected or {}) do
		if iter_23_1 == arg_23_1 then
			local var_23_1 = type(var_23_0.levels) == "table" and var_23_0.levels[arg_23_1]

			return math.max(1, math.min(5, math.floor(var_0_4(var_23_1, iter_23_0))))
		end
	end

	return 0
end

var_0_0.values = {
	W01 = {
		12,
		10,
		8,
		7,
		6
	},
	W02 = {
		12,
		18,
		24,
		27,
		30
	},
	W03 = {
		8,
		12,
		16,
		18,
		20
	},
	W04 = {
		8,
		12,
		16,
		18,
		20
	},
	W05 = {
		6,
		9,
		12,
		14,
		16
	},
	W06 = {
		6,
		9,
		12,
		14,
		16
	},
	W07 = {
		10,
		15,
		20,
		23,
		25
	},
	W08 = {
		16,
		14,
		12,
		10,
		9
	},
	W09 = {
		35,
		50,
		65,
		75,
		85
	},
	W10 = {
		60,
		85,
		110,
		125,
		140
	},
	W11 = {
		8,
		12,
		16,
		18,
		20
	},
	W12 = {
		10,
		15,
		20,
		23,
		25
	},
	W13 = {
		10,
		14,
		18,
		20,
		22
	},
	W14 = {
		14,
		12,
		10,
		9,
		8
	},
	W15 = {
		8,
		12,
		16,
		20,
		24
	},
	W16 = {
		20,
		30,
		40,
		45,
		50
	},
	W17 = {
		10,
		16,
		22,
		25,
		28
	},
	W18 = {
		18,
		26,
		34,
		38,
		42
	},
	A01 = {
		8,
		12,
		16,
		18,
		20
	},
	A02 = {
		8,
		7,
		6,
		5.5,
		5
	},
	A03 = {
		50,
		75,
		100,
		125,
		150
	},
	A04 = {
		8,
		12,
		16,
		18,
		20
	},
	A05 = {
		6,
		9,
		12,
		14,
		16
	},
	A06 = {
		25,
		35,
		45,
		50,
		55
	},
	A07 = {
		8,
		12,
		16,
		18,
		20
	},
	A08 = {
		8,
		12,
		16,
		18,
		20
	},
	A09 = {
		15,
		22,
		30,
		34,
		38
	},
	A10 = {
		6,
		10,
		14,
		16,
		18
	},
	A11 = {
		18,
		16,
		14,
		12,
		10
	},
	A12 = {
		6,
		9,
		12,
		14,
		16
	},
	A13 = {
		8,
		12,
		16,
		20,
		24
	},
	A14 = {
		10,
		15,
		20,
		23,
		25
	},
	A15 = {
		20,
		30,
		40,
		45,
		50
	},
	S01 = {
		8,
		12,
		16,
		18,
		20
	},
	S02 = {
		16,
		14,
		12,
		10,
		9
	},
	S03 = {
		8,
		12,
		16,
		18,
		20
	},
	S04 = {
		0.3,
		0.4,
		0.5,
		0.6,
		0.7
	},
	S05 = {
		10,
		15,
		20,
		23,
		25
	},
	S06 = {
		6,
		10,
		14,
		17,
		20
	},
	S07 = {
		10,
		15,
		20,
		23,
		25
	},
	S08 = {
		5,
		8,
		10,
		12,
		14
	},
	S09 = {
		6,
		10,
		14,
		17,
		20
	},
	S10 = {
		16,
		14,
		12,
		11,
		10
	},
	S11 = {
		10,
		15,
		20,
		23,
		25
	},
	S12 = {
		25,
		38,
		50,
		58,
		65
	},
	S13 = {
		35,
		50,
		65,
		75,
		85
	},
	S14 = {
		70,
		85,
		100,
		110,
		120
	},
	S15 = {
		40,
		60,
		80,
		90,
		100
	},
	M01 = {
		10,
		15,
		20,
		23,
		25
	},
	M02 = {
		6,
		9,
		12,
		14,
		16
	},
	M03 = {
		10,
		15,
		20,
		23,
		25
	},
	M04 = {
		15,
		22,
		30,
		34,
		38
	},
	M05 = {
		10,
		15,
		20,
		23,
		25
	},
	M06 = {
		4,
		6,
		8,
		9,
		10
	},
	M07 = {
		12,
		18,
		24,
		27,
		30
	},
	M08 = {
		3,
		5,
		7,
		8,
		9
	},
	M09 = {
		6,
		9,
		12,
		14,
		16
	},
	M10 = {
		14,
		20,
		26,
		30,
		34
	},
	M11 = {
		20,
		28,
		35,
		40,
		45
	},
	M12 = {
		8,
		12,
		16,
		18,
		20
	},
	M13 = {
		40,
		55,
		70,
		80,
		90
	},
	M14 = {
		30,
		45,
		60,
		68,
		75
	},
	M15 = {
		12,
		18,
		24,
		27,
		30
	},
	M16 = {
		8,
		12,
		16,
		18,
		20
	},
	M17 = {
		6,
		9,
		12,
		14,
		16
	},
	M18 = {
		14,
		12,
		10,
		9,
		8
	},
	M19 = {
		8,
		12,
		16,
		18,
		20
	},
	M20 = {
		15,
		22,
		30,
		34,
		38
	},
	M21 = {
		6,
		9,
		12,
		14,
		16
	},
	M22 = {
		45,
		65,
		85,
		95,
		105
	},
	M23 = {
		8,
		12,
		16,
		18,
		20
	},
	M24 = {
		8,
		12,
		16,
		18,
		20
	},
	H01 = {
		15,
		22,
		30,
		34,
		38
	},
	H02 = {
		0.4,
		0.6,
		0.8,
		0.9,
		1
	},
	H03 = {
		6,
		9,
		12,
		14,
		16
	},
	H04 = {
		10,
		15,
		20,
		23,
		25
	},
	H05 = {
		25,
		38,
		50,
		58,
		65
	},
	H06 = {
		12,
		18,
		24,
		27,
		30
	},
	H07 = {
		8,
		12,
		16,
		18,
		20
	},
	H08 = {
		8,
		12,
		16,
		20,
		24
	},
	H09 = {
		20,
		30,
		40,
		45,
		50
	},
	H10 = {
		10,
		15,
		20,
		23,
		25
	},
	H11 = {
		10,
		15,
		20,
		23,
		25
	},
	H12 = {
		0.2,
		0.3,
		0.4,
		0.45,
		0.5
	},
	H13 = {
		14,
		12,
		10,
		9,
		8
	},
	H14 = {
		9,
		8,
		7,
		6,
		5
	},
	H15 = {
		6,
		9,
		12,
		14,
		16
	},
	D01 = {
		6,
		10,
		14,
		17,
		20
	},
	D02 = {
		15,
		22,
		30,
		34,
		38
	},
	D03 = {
		8,
		12,
		16,
		18,
		20
	},
	D04 = {
		6,
		10,
		14,
		16,
		20
	},
	D05 = {
		6,
		9,
		12,
		14,
		16
	},
	D06 = {
		12,
		18,
		24,
		27,
		30
	},
	D07 = {
		10,
		15,
		20,
		23,
		25
	},
	D08 = {
		4,
		7,
		10,
		12,
		14
	},
	D09 = {
		8,
		12,
		16,
		18,
		20
	},
	D10 = {
		6,
		9,
		12,
		14,
		16
	},
	D11 = {
		8,
		12,
		16,
		18,
		20
	},
	D12 = {
		16,
		14,
		12,
		11,
		10
	},
	D13 = {
		100,
		120,
		140,
		150,
		160
	},
	D14 = {
		6,
		10,
		14,
		17,
		20
	},
	D15 = {
		20,
		30,
		40,
		45,
		50
	},
	J01 = {
		8,
		12,
		16,
		18,
		20
	},
	J02 = {
		10,
		15,
		20,
		23,
		25
	},
	J03 = {
		15,
		22,
		30,
		34,
		38
	},
	J04 = {
		20,
		30,
		40,
		45,
		50
	},
	J05 = {
		10,
		15,
		20,
		23,
		25
	},
	J06 = {
		18,
		15,
		12,
		11,
		10
	},
	J07 = {
		10,
		15,
		20,
		23,
		25
	},
	J08 = {
		20,
		28,
		36,
		38,
		40
	},
	J09 = {
		15,
		22,
		30,
		34,
		38
	},
	J10 = {
		15,
		22,
		30,
		34,
		38
	},
	J11 = {
		8,
		12,
		16,
		18,
		20
	},
	J12 = {
		0.3,
		0.4,
		0.5,
		0.55,
		0.6
	},
	J13 = {
		20,
		35,
		50,
		65,
		80
	},
	J14 = {
		0.4,
		0.6,
		0.8,
		0.9,
		1
	},
	J15 = {
		6,
		9,
		12,
		14,
		16
	},
	J16 = {
		10,
		15,
		20,
		23,
		25
	}
}

function var_0_0.value(arg_24_0, arg_24_1)
	local var_24_0 = var_0_0.isV8(arg_24_0) and var_0_0.valuesV8 or var_0_0.isV7(arg_24_0) and var_0_0.valuesV7 or var_0_0.values
	local var_24_1 = var_0_0.level(arg_24_0, arg_24_1)

	return var_24_1 > 0 and var_24_0 and var_24_0[arg_24_1] and var_24_0[arg_24_1][var_24_1] or 0
end

local function var_0_6(arg_25_0)
	if not arg_25_0._awakening then
		arg_25_0._awakening = {
			time = 0,
			cd = {},
			tokens = {},
			hits = {}
		}
	end

	return arg_25_0._awakening
end

local function var_0_7(arg_26_0)
	return arg_26_0 and arg_26_0._awakening and arg_26_0._awakening.time or 0
end

local function var_0_8(arg_27_0, arg_27_1)
	local var_27_0 = arg_27_0._awakeningBattle or arg_27_1._awakeningBattle
	local var_27_1, var_27_2 = var_0_0.groundPoint(arg_27_0, var_27_0)
	local var_27_3, var_27_4 = var_0_0.groundPoint(arg_27_1, var_27_0)

	return math.sqrt((var_27_1 - var_27_3)^2 + (var_27_2 - var_27_4)^2)
end

function var_0_0.groundPoint(arg_28_0)
	return arg_28_0.x or 0, arg_28_0.groundY or arg_28_0._groundY or arg_28_0.y or 0
end

local function var_0_9(arg_29_0, arg_29_1)
	if not arg_29_0 or not arg_29_1 or arg_29_0.lane and arg_29_1.lane and arg_29_0.lane ~= arg_29_1.lane then
		return false
	end

	local var_29_0 = arg_29_0._awakeningBattle or arg_29_1._awakeningBattle

	return not var_29_0 or not _G.__slotStage6RiftTargetAllowed or _G.__slotStage6RiftTargetAllowed(var_29_0, arg_29_0, arg_29_1)
end

local function var_0_10(arg_30_0)
	return arg_30_0.side == "enemy" and -1 or 1
end

local function var_0_11(arg_31_0)
	if not arg_31_0 then
		return
	end

	return arg_31_0.pendingTarget or arg_31_0._awakening and arg_31_0._awakening.target or arg_31_0.target or arg_31_0._lastAttackTarget
end

local function var_0_12(arg_32_0)
	return var_0_3(arg_32_0) and not arg_32_0.isShadowMinion and not arg_32_0.isSummon and not arg_32_0.isFireSpirit and not arg_32_0.isWildBeast and not arg_32_0.isGuardianGolem and not arg_32_0.isWoodenWatchtower and not arg_32_0._tricksterCharm and not arg_32_0.isDecoyDummy and arg_32_0.rosterIndex ~= nil
end

local function var_0_13(arg_33_0)
	return var_0_3(arg_33_0) and (arg_33_0.stunT or 0) <= 0 and (arg_33_0.freezeT or 0) <= 0 and (arg_33_0._frostSpikeFreezeT or 0) <= 0 and not arg_33_0._venomMawSwallowed and not arg_33_0._petrified and not arg_33_0._caveBasiliskPetrified and not arg_33_0._oathHelmStone and not arg_33_0._succubusCharm and not arg_33_0._wastelandPiperCharm and (arg_33_0.fearT or 0) <= 0 and not arg_33_0._spaceWizardExchangeMotion and not arg_33_0._escapeCloakRetreat and not arg_33_0._marshDriveAir and not arg_33_0._hellEnforcerExecutionLock and not arg_33_0._cosmicPressure
end

local function var_0_14(arg_34_0)
	return arg_34_0 and arg_34_0.role ~= "archer" and (arg_34_0.distance or 0) < 100
end

local function var_0_15(arg_35_0)
	return arg_35_0 and (arg_35_0.isBoss or arg_35_0.boss or arg_35_0._bossSpec or arg_35_0.isBossUnit or arg_35_0.bossKind or arg_35_0.isFinalBoss or arg_35_0.finalBoss)
end

local function var_0_16(arg_36_0)
	if not arg_36_0 then
		return false
	end

	local var_36_0 = arg_36_0.skill

	if var_36_0 and (var_36_0.state == "active" or var_36_0.state == "casting" or var_36_0.state == "precast" or var_36_0.active == true) then
		return true
	end

	if arg_36_0._casting or arg_36_0._bossSkillBusy or arg_36_0._venomMawBusy or arg_36_0._spineCarapaceCasting then
		return true
	end

	if arg_36_0.side == "enemy" and require("src.game.combat").retaliation_sigil.enemyCasting(arg_36_0) then
		return true
	end

	for iter_36_0, iter_36_1 in pairs(arg_36_0) do
		if type(iter_36_0) == "string" and (iter_36_0:match("Casting$") or iter_36_0:match("CastingT$")) and (iter_36_1 == true or type(iter_36_1) == "number" and iter_36_1 > 0) then
			return true
		end
	end

	return false
end

local function var_0_17(arg_37_0)
	return arg_37_0 and arg_37_0.anim and arg_37_0.anim.name:find("attack", 1, true) == 1 and not var_0_16(arg_37_0) and arg_37_0._awakening and arg_37_0._awakening.action and not arg_37_0._crossfireAttackMotion
end

local function var_0_18(arg_38_0, arg_38_1, arg_38_2)
	return var_0_0.has(arg_38_1, arg_38_2) and (var_0_6(arg_38_1).cd[arg_38_2] or 0) <= var_0_7(arg_38_0)
end

local function var_0_19(arg_39_0, arg_39_1, arg_39_2, arg_39_3)
	var_0_6(arg_39_1).cd[arg_39_2] = var_0_7(arg_39_0) + arg_39_3
end

local function var_0_20(arg_40_0, arg_40_1, arg_40_2)
	local var_40_0 = var_0_6(arg_40_1).tokens[arg_40_2]

	if var_40_0 and var_40_0.expires >= var_0_7(arg_40_0) then
		return var_40_0
	end
end

local function var_0_21(arg_41_0, arg_41_1, arg_41_2, arg_41_3, arg_41_4, arg_41_5)
	local var_41_0 = var_0_20(arg_41_0, arg_41_1, arg_41_2)

	if not var_41_0 or arg_41_3 >= var_41_0.p then
		var_0_6(arg_41_1).tokens[arg_41_2] = {
			p = arg_41_3,
			expires = var_0_7(arg_41_0) + arg_41_4,
			target = arg_41_5
		}
	end
end

local function var_0_22(arg_42_0, arg_42_1, arg_42_2, arg_42_3, arg_42_4)
	local var_42_0 = {}
	local var_42_1 = {}

	for iter_42_0, iter_42_1 in ipairs(arg_42_0.allies or {}) do
		if iter_42_1 ~= arg_42_1 and var_0_12(iter_42_1) and var_0_9(arg_42_1, iter_42_1) then
			local var_42_2 = var_0_8(arg_42_1, iter_42_1)

			if var_42_2 <= arg_42_2 and (not arg_42_3 or arg_42_3(iter_42_1)) then
				var_42_0[#var_42_0 + 1] = iter_42_1
				var_42_1[iter_42_1] = var_42_2
			end
		end
	end

	table.sort(var_42_0, function(arg_43_0, arg_43_1)
		local var_43_0 = arg_42_4 and (arg_43_0.hp or 0) / math.max(1, arg_43_0.maxhp or 1) or var_42_1[arg_43_0]
		local var_43_1 = arg_42_4 and (arg_43_1.hp or 0) / math.max(1, arg_43_1.maxhp or 1) or var_42_1[arg_43_1]

		if var_43_0 ~= var_43_1 then
			return var_43_0 < var_43_1
		end

		if arg_42_4 and var_0_0.isModern(arg_42_1, arg_42_0) and var_42_1[arg_43_0] ~= var_42_1[arg_43_1] then
			return var_42_1[arg_43_0] < var_42_1[arg_43_1]
		end

		return tostring(arg_43_0.uuid or arg_43_0.rosterIndex or "") < tostring(arg_43_1.uuid or arg_43_1.rosterIndex or "")
	end)

	return var_42_0
end

local function var_0_23(arg_44_0, arg_44_1)
	return ((arg_44_1.x or 0) - (arg_44_0.x or 0)) * var_0_10(arg_44_0) > 0
end

local function var_0_24(arg_45_0, arg_45_1, arg_45_2)
	return var_0_22(arg_45_0, arg_45_1, arg_45_2, function(arg_46_0)
		return var_0_23(arg_45_1, arg_46_0)
	end)[1]
end

local function var_0_25(arg_47_0, arg_47_1, arg_47_2)
	return var_0_22(arg_47_0, arg_47_1, arg_47_2, function(arg_48_0)
		return not var_0_23(arg_47_1, arg_48_0) and (not var_0_0.isModern(arg_47_1, arg_47_0) or (arg_48_0.x or 0) ~= (arg_47_1.x or 0))
	end)[1]
end

local function var_0_26(arg_49_0, arg_49_1, arg_49_2)
	local var_49_0 = {}
	local var_49_1 = {}

	for iter_49_0, iter_49_1 in ipairs(arg_49_0.enemies or {}) do
		if var_0_3(iter_49_1) and not iter_49_1._tricksterCharm and var_0_9(arg_49_1, iter_49_1) then
			local var_49_2 = var_0_8(arg_49_1, iter_49_1)

			if var_49_2 <= arg_49_2 and (not arg_49_0._awakeningValid or arg_49_0._awakeningValid(iter_49_1, arg_49_1, arg_49_0)) then
				var_49_0[#var_49_0 + 1] = iter_49_1
				var_49_1[iter_49_1] = var_49_2
			end
		end
	end

	table.sort(var_49_0, function(arg_50_0, arg_50_1)
		local var_50_0 = var_49_1[arg_50_0]
		local var_50_1 = var_49_1[arg_50_1]

		if var_50_0 ~= var_50_1 then
			return var_50_0 < var_50_1
		end

		return tostring(arg_50_0.uuid or arg_50_0._awakeningSerial or "") < tostring(arg_50_1.uuid or arg_50_1._awakeningSerial or "")
	end)

	return var_49_0
end

local function var_0_27(arg_51_0, arg_51_1, arg_51_2, arg_51_3, arg_51_4)
	local var_51_0 = var_0_6(arg_51_1)

	if (var_51_0.cd["team:" .. arg_51_2] or 0) > var_0_7(arg_51_0) then
		return false
	end

	if arg_51_4 then
		var_51_0.cd["team:" .. arg_51_2] = var_0_7(arg_51_0) + arg_51_3
	end

	return true
end

function var_0_0.beginBattle(arg_52_0)
	if not arg_52_0.awakeningVersion then
		for iter_52_0, iter_52_1 in pairs(arg_52_0.rosterUnits or {}) do
			if iter_52_1.awakening then
				arg_52_0.awakeningVersion = iter_52_1.awakening.version

				break
			end
		end
	end

	var_0_0.bindRun(arg_52_0)

	local var_52_0 = 0

	for iter_52_2, iter_52_3 in ipairs(arg_52_0.allies or {}) do
		local var_52_1 = (arg_52_0.rosterUnits or {})[iter_52_3.rosterIndex or 0]

		iter_52_3.awakening = var_52_1 and var_0_0.normalize(var_52_1) or nil
		iter_52_3.awakeningVersion = arg_52_0.awakeningVersion
		iter_52_3._awakening = nil
		iter_52_3._awakeningBattle = arg_52_0
		var_52_0 = math.max(var_52_0, var_0_0.stage(iter_52_3))
	end

	arg_52_0._awakening = {
		time = 0,
		serial = 0,
		queue = {},
		budget = {},
		stage = var_52_0
	}

	for iter_52_4, iter_52_5 in ipairs(arg_52_0.allies or {}) do
		local var_52_2 = var_0_6(iter_52_5)

		var_52_2.startHP = iter_52_5.maxhp or iter_52_5.hp or 1
		var_52_2.h01 = var_0_24(arg_52_0, iter_52_5, math.huge) ~= nil
		var_52_2.lastBasic = 0
		var_52_2.x = iter_52_5.x
		var_52_2.y = iter_52_5.y
		var_52_2.still = 0
		var_52_2.firstBasic = false

		local var_52_3 = tostring(iter_52_5.uuid or iter_52_5.rosterIndex)

		arg_52_0._awakening.budget[var_52_3] = {
			spent = 0,
			cap = var_52_2.startHP * ({
				0,
				0.1,
				0.15,
				0.2,
				0.22,
				0.24
			})[var_52_0 + 1]
		}
		var_52_2.budgetKey = var_52_3
	end
end

function var_0_0.budget(arg_53_0, arg_53_1)
	if not arg_53_0 or not arg_53_0._awakening then
		return {
			cap = 0,
			spent = 0
		}
	end

	local var_53_0 = var_0_6(arg_53_1).budgetKey or tostring(arg_53_1.uuid or arg_53_1.rosterIndex or arg_53_1)
	local var_53_1 = arg_53_0._awakening.budget[var_53_0]

	if not var_53_1 then
		var_53_1 = {
			spent = 0,
			cap = (arg_53_1.maxhp or 0) * ({
				0,
				0.1,
				0.15,
				0.2,
				0.22,
				0.24
			})[arg_53_0._awakening.stage + 1]
		}
		arg_53_0._awakening.budget[var_53_0] = var_53_1
	end

	return var_53_1
end

function var_0_0.heal(arg_54_0, arg_54_1, arg_54_2)
	if not var_0_3(arg_54_1) then
		return 0
	end

	local var_54_0 = var_0_0.budget(arg_54_0, arg_54_1)
	local var_54_1 = math.max(0, math.min(arg_54_2 or 0, var_54_0.cap - var_54_0.spent, (arg_54_1.maxhp or 0) - (arg_54_1.hp or 0)))

	arg_54_1.hp = (arg_54_1.hp or 0) + var_54_1
	var_54_0.spent = var_54_0.spent + var_54_1

	return var_54_1
end

function var_0_0.shield(arg_55_0, arg_55_1, arg_55_2, arg_55_3, arg_55_4)
	if not var_0_3(arg_55_1) then
		return 0
	end

	local var_55_0 = var_0_6(arg_55_1)

	var_55_0.shields = var_55_0.shields or {}

	local var_55_1 = var_55_0.shields[arg_55_2]
	local var_55_2 = var_55_1 and var_55_1.expires >= var_0_7(arg_55_0) and var_55_1.amount or 0
	local var_55_3 = var_0_0.budget(arg_55_0, arg_55_1)
	local var_55_4 = math.max(0, math.min(arg_55_3 - var_55_2, var_55_3.cap - var_55_3.spent))

	if var_55_4 > 0 then
		var_55_0.shields[arg_55_2] = {
			amount = var_55_2 + var_55_4,
			expires = var_0_7(arg_55_0) + arg_55_4
		}
		var_55_3.spent = var_55_3.spent + var_55_4
	end

	return var_55_4
end

function var_0_0.absorb(arg_56_0, arg_56_1, arg_56_2)
	for iter_56_0, iter_56_1 in pairs(var_0_6(arg_56_1).shields or {}) do
		if iter_56_1.expires >= var_0_7(arg_56_0) then
			local var_56_0 = math.min(iter_56_1.amount, arg_56_2)

			iter_56_1.amount = iter_56_1.amount - var_56_0
			arg_56_2 = arg_56_2 - var_56_0
		end
	end

	return arg_56_2
end

function var_0_0.schedule(arg_57_0, arg_57_1, arg_57_2)
	if arg_57_0 and arg_57_0._awakening then
		arg_57_0._awakening.queue[#arg_57_0._awakening.queue + 1] = {
			at = var_0_7(arg_57_0) + arg_57_1,
			run = arg_57_2
		}
	end
end

function var_0_0.extra(arg_58_0, arg_58_1, arg_58_2, arg_58_3)
	if not var_0_3(arg_58_2) or arg_58_3 <= 0 or not arg_58_0._awakeningDamage then
		return
	end

	return arg_58_0._awakeningDamage(arg_58_2, arg_58_3, arg_58_1, nil, {
		awakeningDamage = true,
		noProcs = true,
		indirect = true
	})
end

function var_0_0.cooldownCredit(arg_59_0, arg_59_1, arg_59_2)
	local var_59_0 = arg_59_1 and arg_59_1.skill

	if not var_59_0 or not var_59_0.cd or var_59_0.cd <= 0 or var_59_0.kind == "VictorySignal" then
		return 0
	end

	local var_59_1 = var_0_6(arg_59_1)
	local var_59_2 = var_59_1.cast or {}
	local var_59_3 = var_0_7(arg_59_0) - (var_59_2.at or var_0_7(arg_59_0))
	local var_59_4 = math.max(var_59_2.external or 0, var_59_0._chainResetCredit or 0, 0, (var_59_0.cdT or 0) - var_59_3 - (var_59_2.credit or 0))
	local var_59_5 = math.min(var_59_0.cd, math.max(0.75, 0.6 * var_59_0.cd))
	local var_59_6 = math.max(0, math.min(arg_59_2, var_59_0.cd - (var_59_0.cdT or 0), var_59_0.cd * 0.4 - var_59_4 - (var_59_2.credit or 0), var_59_0.cd - var_59_5 - (var_59_2.credit or 0)))

	var_59_2.credit = (var_59_2.credit or 0) + var_59_6
	var_59_1.cast = var_59_2
	var_59_0.cdT = (var_59_0.cdT or 0) + var_59_6

	return var_59_6
end

function var_0_0.externalCooldown(arg_60_0, arg_60_1)
	if not arg_60_0 or not arg_60_0._awakeningBattle then
		return
	end

	local var_60_0 = var_0_6(arg_60_0)

	var_60_0.cast = var_60_0.cast or {
		at = var_0_7(arg_60_0._awakeningBattle),
		hits = {}
	}
	var_60_0.cast.external = (var_60_0.cast.external or 0) + math.max(0, arg_60_1 or 0)
end

function var_0_0.skillBegin(arg_61_0)
	local var_61_0 = arg_61_0 and arg_61_0._awakeningBattle

	if not var_61_0 then
		return
	end

	local var_61_1 = var_0_6(arg_61_0)
	local var_61_2 = arg_61_0.skill

	if var_61_1.cast and var_61_1.cast.skill == var_61_2 and var_0_16(arg_61_0) then
		return
	end

	var_61_1.cast = {
		credit = 0,
		at = var_0_7(var_61_0),
		skill = var_61_2,
		hits = {},
		target = var_61_1.nextAim or var_0_11(arg_61_0),
		id = (var_61_1.castSerial or 0) + 1
	}
	var_61_1.castSerial = var_61_1.cast.id
	var_61_1.nextAim = nil

	local var_61_3 = var_0_20(var_61_0, arg_61_0, "M12")

	if var_61_3 then
		var_61_1.cast.M12 = var_61_3.p
		var_61_1.tokens.M12 = nil
	end
end

function var_0_0.basicStart(arg_62_0, arg_62_1, arg_62_2)
	if not arg_62_0 or not arg_62_0._awakening or not arg_62_1 or arg_62_1._crossfireAttackMotion then
		return
	end

	local var_62_0 = var_0_6(arg_62_1)

	var_62_0.serial = (var_62_0.serial or 0) + 1
	var_62_0.target = arg_62_2
	var_62_0.lastBasic = var_0_7(arg_62_0)
	var_62_0.firstBasic = true
	var_62_0.action = {
		clear = true,
		bonus = 0,
		id = var_62_0.serial,
		target = arg_62_2,
		at = var_0_7(arg_62_0),
		hits = {}
	}

	if var_0_3(arg_62_2) and var_0_0.has(arg_62_1, "D04") then
		for iter_62_0, iter_62_1 in ipairs(var_0_22(arg_62_0, arg_62_1, 70, var_0_14)) do
			if var_0_11(iter_62_1) == arg_62_2 then
				var_62_0.action.paired = true

				break
			end
		end
	end

	for iter_62_2, iter_62_3 in ipairs({
		"W02",
		"W18",
		"M07"
	}) do
		local var_62_1 = var_0_20(arg_62_0, arg_62_1, iter_62_3)

		if var_62_1 then
			var_62_0.action.bonus = var_62_0.action.bonus + var_62_1.p
			var_62_0.tokens[iter_62_3] = nil
		end
	end

	for iter_62_4, iter_62_5 in ipairs({
		"D08",
		"M10"
	}) do
		local var_62_2 = var_0_20(arg_62_0, arg_62_1, iter_62_5)

		if var_62_2 and var_62_2.target == arg_62_2 then
			var_62_0.action.bonus = var_62_0.action.bonus + var_62_2.p
			var_62_0.action[iter_62_5] = true

			if iter_62_5 == "M10" then
				var_0_19(arg_62_0, arg_62_1, iter_62_5, 5)
			end
		end

		var_62_0.tokens[iter_62_5] = nil
	end

	if arg_62_1.side == "enemy" then
		if var_62_0.previousTarget and var_62_0.previousTarget ~= arg_62_2 and var_0_12(arg_62_2) then
			for iter_62_6, iter_62_7 in ipairs(arg_62_0.allies or {}) do
				if iter_62_7 == var_62_0.previousTarget and var_0_18(arg_62_0, iter_62_7, "W09") and var_0_13(iter_62_7) and var_0_8(iter_62_7, arg_62_1) <= (iter_62_7.distance or 35) and var_0_27(arg_62_0, arg_62_1, "W09", 3) then
					var_0_27(arg_62_0, arg_62_1, "W09", 3, true)
					var_0_19(arg_62_0, iter_62_7, "W09", 6)
					var_0_0.extra(arg_62_0, iter_62_7, arg_62_1, (iter_62_7.dmg or 0) * var_0_0.value(iter_62_7, "W09") / 100)
				end
			end
		end

		var_62_0.previousTarget = arg_62_2
		var_62_0.action.entry = var_62_0.approached and not var_62_0.entryAttempted and var_0_14(arg_62_1)

		if var_62_0.action.entry then
			var_62_0.entryAttempted = true
		end

		for iter_62_8, iter_62_9 in ipairs({
			"W11",
			"J02",
			"J11"
		}) do
			local var_62_3 = var_0_20(arg_62_0, arg_62_1, iter_62_9)

			if var_62_3 then
				var_62_0.action[iter_62_9] = var_62_3.p
				var_62_0.tokens[iter_62_9] = nil
			end
		end
	end
end

function var_0_0.basicRelease(arg_63_0, arg_63_1)
	if not arg_63_0._awakening or not arg_63_1 then
		return
	end

	local var_63_0 = var_0_6(arg_63_1).action

	if not var_63_0 or var_63_0.released then
		return
	end

	var_63_0.released = true

	local var_63_1 = var_63_0.target

	if var_0_3(var_63_1) then
		local var_63_2 = (var_63_1.x or 0) - (arg_63_1.x or 0)
		local var_63_3 = (var_63_1.y or 0) - (arg_63_1.y or 0)
		local var_63_4 = math.max(0.001, var_0_8(arg_63_1, var_63_1))

		for iter_63_0, iter_63_1 in ipairs(var_0_22(arg_63_0, arg_63_1, var_63_4)) do
			local var_63_5 = (iter_63_1.x or 0) - (arg_63_1.x or 0)
			local var_63_6 = (iter_63_1.y or 0) - (arg_63_1.y or 0)
			local var_63_7 = (var_63_5 * var_63_2 + var_63_6 * var_63_3) / var_63_4

			if var_63_7 > 10 and var_63_7 < var_63_4 - 10 and math.abs(var_63_5 * var_63_3 - var_63_6 * var_63_2) / var_63_4 <= 20 then
				var_63_0.clear = false
			end
		end
	end

	var_0_0.intercept(arg_63_0, arg_63_1, true)

	if var_0_18(arg_63_0, arg_63_1, "S12") then
		for iter_63_2, iter_63_3 in ipairs(var_0_26(arg_63_0, arg_63_1, arg_63_1.distance or 35)) do
			if iter_63_3 ~= var_63_1 and (var_0_6(iter_63_3).crossings or {})[arg_63_1] and var_0_7(arg_63_0) - var_0_6(iter_63_3).crossings[arg_63_1] <= 1 then
				var_0_0.extra(arg_63_0, arg_63_1, iter_63_3, (arg_63_1.dmg or 0) * var_0_0.value(arg_63_1, "S12") / 100)
				var_0_19(arg_63_0, arg_63_1, "S12", 6)

				break
			end
		end
	end

	var_0_6(arg_63_1).tokens.H06 = nil
end

function var_0_0.retarget(arg_64_0, arg_64_1, arg_64_2)
	local var_64_0 = var_0_6(arg_64_1)
	local var_64_1 = var_64_0.action

	if not arg_64_2 or not var_64_1 or var_64_1.released or var_64_1.retargeted or var_0_3(arg_64_2.target) then
		return
	end

	local var_64_2 = var_0_0.has(arg_64_1, "W07") and "W07" or var_0_0.has(arg_64_1, "A10") and "A10" or var_0_0.has(arg_64_1, "D09") and "D09"

	if not var_64_2 or not var_0_18(arg_64_0, arg_64_1, var_64_2) then
		return
	end

	local var_64_3 = var_0_26(arg_64_0, arg_64_1, var_0_0.basicRange(arg_64_0, arg_64_1, nil, arg_64_1.distance or 35, false))[1]

	if not var_64_3 then
		return
	end

	var_64_1.retargeted = true
	var_64_1.bonus = var_64_1.bonus + var_0_0.value(arg_64_1, var_64_2)
	var_64_1.target = var_64_3
	var_64_0.target = var_64_3
	arg_64_2.target = var_64_3

	if arg_64_1.shotPending then
		arg_64_1.pendingTarget = var_64_3
	end

	var_64_1.retargetId = var_64_2

	if var_64_2 ~= "D09" then
		var_0_19(arg_64_0, arg_64_1, var_64_2, 6)
	end
end

function var_0_0.basicBonus(arg_65_0, arg_65_1, arg_65_2, arg_65_3)
	if not arg_65_1 or not arg_65_2 then
		return 0
	end

	local var_65_0 = var_0_6(arg_65_1)
	local var_65_1 = arg_65_3 and arg_65_3.bonus or 0

	local function var_65_2(arg_66_0, arg_66_1)
		if arg_66_1 then
			var_65_1 = var_65_1 + var_0_0.value(arg_65_1, arg_66_0)
		end
	end

	local var_65_3 = var_0_8(arg_65_1, arg_65_2)
	local var_65_4 = (arg_65_2.hp or 0) / math.max(1, arg_65_2.maxhp or 1)

	var_65_2("W04", #var_0_26(arg_65_0, arg_65_1, 55) >= 2)

	local var_65_5 = var_0_26(arg_65_0, arg_65_1, 70)

	var_65_2("W05", #var_65_5 == 1 and var_65_5[1] == arg_65_2)
	var_65_2("W12", var_65_4 <= 0.3)

	if var_0_18(arg_65_0, arg_65_1, "W17") and var_65_0.lastHitTarget and var_65_0.lastHitTarget ~= arg_65_2 and var_0_7(arg_65_0) - (var_65_0.lastHitAt or -99) <= 4 then
		var_65_2("W17", true)

		arg_65_3.w17 = true
	end

	var_65_2("A01", var_65_3 >= 100)
	var_65_2("A05", arg_65_3 and arg_65_3.clear)
	var_65_2("A09", var_0_16(arg_65_2))
	var_65_2("D02", var_0_16(arg_65_2))

	for iter_65_0, iter_65_1 in ipairs(var_0_22(arg_65_0, arg_65_1, math.huge)) do
		if var_0_11(iter_65_1) == arg_65_2 then
			var_65_2("A04", true)

			break
		end
	end

	var_65_2("S01", var_65_3 >= 35)
	var_65_2("S03", var_0_24(arg_65_0, arg_65_1, 55))
	var_65_2("S07", var_65_4 >= 0.7)
	var_65_2("D07", var_65_4 >= 0.7)

	for iter_65_2, iter_65_3 in ipairs(var_0_26(arg_65_0, arg_65_2, 45)) do
		if iter_65_3 ~= arg_65_2 and var_0_23(arg_65_1, iter_65_3) and ((iter_65_3.x or 0) - (arg_65_2.x or 0)) * var_0_10(arg_65_1) > 0 and math.abs((iter_65_3.x or 0) - (arg_65_2.x or 0)) <= 40 and math.abs((iter_65_3.y or 0) - (arg_65_2.y or 0)) <= 20 then
			var_65_2("S11", true)

			break
		end
	end

	var_65_2("D03", #var_0_26(arg_65_0, arg_65_2, 50) == 1)
	var_65_2("D05", var_0_11(arg_65_2) == arg_65_1)
	var_65_2("H04", not var_0_14(arg_65_2))
	var_65_2("H07", var_0_22(arg_65_0, arg_65_1, 45)[1])
	var_65_2("D04", arg_65_3 and arg_65_3.paired)

	if var_0_0.has(arg_65_1, "D15") and var_0_20(arg_65_0, arg_65_2, "released") and var_0_27(arg_65_0, arg_65_2, "D15", 6) then
		var_65_1 = var_65_1 + var_0_0.value(arg_65_1, "D15")
		arg_65_3.d15 = true
	end

	local var_65_6 = 0

	for iter_65_4, iter_65_5 in ipairs(arg_65_0.allies or {}) do
		if var_0_12(iter_65_5) and var_0_0.has(iter_65_5, "M06") and var_0_22(arg_65_0, iter_65_5, 70, function(arg_67_0)
			return var_0_5(iter_65_5) ~= var_0_5(arg_67_0) and var_0_14(arg_67_0)
		end)[1] == arg_65_1 then
			var_65_6 = math.max(var_65_6, var_0_0.value(iter_65_5, "M06"))
		end
	end

	var_65_1 = var_65_1 + var_65_6

	local var_65_7 = var_65_0.summonOwner

	if var_0_3(var_65_7) and var_0_7(arg_65_0) - (var_0_6(var_65_7).lastBasic or 0) >= 2 then
		var_65_1 = var_65_1 + var_0_0.value(var_65_7, "M21")
	end

	if var_65_0.charmOwner and not var_65_0.charmHit then
		var_65_1 = var_65_1 + var_0_0.value(var_65_0.charmOwner, "J09")
	end

	return math.min(60, var_65_1) / 100
end

function var_0_0.basicRange(arg_68_0, arg_68_1, arg_68_2, arg_68_3, arg_68_4)
	if not arg_68_0._awakening or not arg_68_1 then
		return arg_68_3
	end

	local var_68_0 = var_0_6(arg_68_1)
	local var_68_1 = 0

	if arg_68_4 then
		var_68_1 = math.max(var_0_0.value(arg_68_1, "W15"), var_0_0.value(arg_68_1, "S06"))
	end

	if (var_68_0.still or 0) >= 3 then
		var_68_1 = math.max(var_68_1, var_0_0.value(arg_68_1, "A08"))
	end

	if var_0_0.value(arg_68_1, "J05") > 0 and var_0_24(arg_68_0, arg_68_1, 60) then
		var_68_1 = math.max(var_68_1, var_0_0.value(arg_68_1, "J05"))
	end

	if var_68_0.lastHitTarget == arg_68_2 and (var_68_0.sameHits or 0) >= 2 then
		var_68_1 = math.max(var_68_1, var_0_0.value(arg_68_1, "D01"))
	end

	if var_0_0.value(arg_68_1, "S09") > 0 then
		for iter_68_0, iter_68_1 in ipairs(var_0_22(arg_68_0, arg_68_1, 55, function(arg_69_0)
			return var_0_23(arg_68_1, arg_69_0)
		end)) do
			if var_0_11(iter_68_1) == arg_68_2 then
				var_68_1 = math.max(var_68_1, var_0_0.value(arg_68_1, "S09"))

				break
			end
		end
	end

	for iter_68_2, iter_68_3 in ipairs({
		"A13",
		"S05",
		"H08"
	}) do
		local var_68_2 = var_0_20(arg_68_0, arg_68_1, iter_68_3)

		if var_68_2 and var_68_2.target == arg_68_2 then
			var_68_1 = math.max(var_68_1, var_68_2.p)
		end
	end

	local var_68_3 = var_0_20(arg_68_0, arg_68_1, "A07")

	if var_68_3 then
		arg_68_3 = math.min(arg_68_3, math.max(55, (var_68_0.originalRange or arg_68_3) - var_68_3.p))
	end

	return arg_68_3 + var_68_1
end

function var_0_0.damageReduction(arg_70_0, arg_70_1, arg_70_2, arg_70_3)
	arg_70_3 = arg_70_3 or {}

	if arg_70_2 == arg_70_1 or arg_70_3.awakeningDamage or arg_70_3.selfDamage or arg_70_3.execution then
		return 1
	end

	local var_70_0 = {}

	local function var_70_1(arg_71_0, arg_71_1)
		var_70_0[arg_71_0] = math.max(var_70_0[arg_71_0] or 0, arg_71_1 or var_0_0.value(arg_70_1, arg_71_0))
	end

	local var_70_2 = arg_70_3.dot or arg_70_3.burn or arg_70_3.poison or arg_70_3.bleed

	if not arg_70_2 and not var_70_2 then
		return 1
	end

	local var_70_3 = arg_70_3.basicAttack == true
	local var_70_4 = arg_70_3.area_damage or arg_70_3.aoe or arg_70_3.areaDamage
	local var_70_5 = var_0_6(arg_70_1)

	if var_70_2 then
		if arg_70_3.burn or arg_70_3.poison or arg_70_3.bleed or arg_70_3.dotKind == "burn" or arg_70_3.dotKind == "poison" or arg_70_3.dotKind == "bleed" then
			var_70_1("J07")

			for iter_70_0, iter_70_1 in ipairs(arg_70_0.allies or {}) do
				if var_0_13(iter_70_1) and var_0_0.has(iter_70_1, "M16") and var_0_22(arg_70_0, iter_70_1, 70, function(arg_72_0)
					return (arg_72_0.hp or 0) < (arg_72_0.maxhp or 0)
				end, true)[1] == arg_70_1 then
					var_70_1("M16", var_0_0.value(iter_70_1, "M16"))
				end
			end
		end
	else
		if var_70_3 then
			if var_0_17(arg_70_1) then
				var_70_1("W06")
			end

			if not var_0_14(arg_70_2) and var_0_24(arg_70_0, arg_70_1, 60) then
				var_70_1("M02")
			end

			if var_70_5.summonOwner and var_0_3(var_70_5.summonOwner) and var_0_23(var_70_5.summonOwner, arg_70_1) and var_0_3(var_0_11(arg_70_1)) then
				var_70_1("M23", var_0_0.value(var_70_5.summonOwner, "M23"))
			end

			local var_70_6 = var_0_20(arg_70_0, arg_70_1, "M19")

			if var_70_6 then
				var_70_1("M19", var_70_6.p)
			end

			for iter_70_2, iter_70_3 in ipairs(arg_70_0.allies or {}) do
				if var_0_3(iter_70_3) and var_0_6(iter_70_3).summonOwner == arg_70_1 and var_0_8(iter_70_3, arg_70_1) <= 50 then
					var_70_1("M24")

					break
				end
			end

			local var_70_7 = arg_70_3.awakeningAction or arg_70_2._awakening and arg_70_2._awakening.action

			if var_70_7 then
				var_70_1("W11", var_70_7.W11 or 0)
				var_70_1("jesterWeak", math.max(var_70_7.J02 or 0, var_70_7.J11 or 0))
			end

			if var_0_14(arg_70_2) and var_0_11(arg_70_1) ~= arg_70_2 and var_0_11(var_0_11(arg_70_1)) == arg_70_1 and var_0_25(arg_70_0, arg_70_1, 60) then
				var_70_1("D11")
			end
		elseif not var_70_2 then
			local var_70_8 = arg_70_3.awakeningCast or var_0_6(arg_70_2).cast

			if var_70_8 and var_70_8.M12 then
				var_70_1("M12", var_70_8.M12)
			end
		end

		if var_0_25(arg_70_0, arg_70_1, 60) then
			var_70_1("H03")
		end

		if var_70_4 then
			if not var_0_22(arg_70_0, arg_70_1, 60)[1] then
				var_70_1("A12")
			end

			if var_0_3(var_0_11(arg_70_1)) and var_0_11(arg_70_1) ~= arg_70_2 then
				var_70_1("D10")
			end
		end

		for iter_70_4, iter_70_5 in ipairs({
			"W03",
			"W13",
			"D06",
			"M03"
		}) do
			local var_70_9 = var_0_20(arg_70_0, arg_70_1, iter_70_5)

			if var_70_9 and (not var_70_9.target or var_70_9.target == arg_70_2) then
				var_70_1(iter_70_5, var_70_9.p)

				if iter_70_5 == "W03" or iter_70_5 == "M03" then
					var_70_5.tokens[iter_70_5] = nil

					if iter_70_5 == "M03" then
						var_0_19(arg_70_0, arg_70_1, iter_70_5, 5)
					end
				end
			end
		end

		for iter_70_6, iter_70_7 in ipairs(arg_70_0.allies or {}) do
			if var_0_12(iter_70_7) then
				if var_70_3 and var_0_14(arg_70_2) and var_0_0.has(iter_70_7, "S08") and var_0_25(arg_70_0, iter_70_7, 60) == arg_70_1 then
					var_70_1("S08", var_0_0.value(iter_70_7, "S08"))
				end

				if var_0_0.has(iter_70_7, "J15") and not var_70_5.firstBasic and var_70_5.moving and var_0_22(arg_70_0, iter_70_7, 70, function(arg_73_0)
					return var_0_5(arg_73_0) ~= var_0_5(iter_70_7) and not var_0_6(arg_73_0).firstBasic and var_0_6(arg_73_0).moving
				end)[1] == arg_70_1 then
					var_70_1("J15", var_0_0.value(iter_70_7, "J15"))
				end

				if var_70_4 and var_0_0.has(iter_70_7, "H15") and var_0_6(iter_70_7).moving and var_70_5.moving and var_0_25(arg_70_0, iter_70_7, 60) == arg_70_1 then
					var_70_1("H15", var_0_0.value(iter_70_7, "H15"))
				end

				if var_70_4 and var_0_0.has(iter_70_7, "M17") then
					local var_70_10 = arg_70_3.basicAttack and var_0_6(arg_70_2).action or var_0_6(arg_70_2).cast
					local var_70_11 = var_70_10 and var_70_10["M17:" .. tostring(iter_70_7)]

					if not var_70_11 then
						var_70_11 = var_0_22(arg_70_0, iter_70_7, 70, function(arg_74_0)
							return (arg_74_0.hp or 0) < (arg_74_0.maxhp or 0)
						end, true)

						if var_70_10 then
							var_70_10["M17:" .. tostring(iter_70_7)] = var_70_11
						end
					end

					if #var_70_11 >= 2 and (var_70_11[1] == arg_70_1 or var_70_11[2] == arg_70_1) and var_0_8(iter_70_7, arg_70_1) <= 70 then
						var_70_1("M17", var_0_0.value(iter_70_7, "M17"))
					end
				end
			end
		end

		if var_70_3 and arg_70_3.projectile and arg_70_3.projectile.pierce and not arg_70_3.projectile.bossSpecial and not arg_70_3.projectile.battleSkillDamage then
			var_70_1("M05")
		end
	end

	local var_70_12 = 1

	for iter_70_8, iter_70_9 in pairs(var_70_0) do
		var_70_12 = var_70_12 * (1 - iter_70_9 / 100)
	end

	return math.max(0.6, var_70_12)
end

function var_0_0.stun(arg_75_0, arg_75_1, arg_75_2)
	if not var_0_3(arg_75_1) or var_0_15(arg_75_1) or arg_75_1.stunImmune or arg_75_1.ccImmune or arg_75_1.controlImmune or arg_75_1.isFinalBoss or arg_75_1.finalBoss then
		return false
	end

	arg_75_1.stunT = math.max(arg_75_1.stunT or 0, arg_75_2)

	return true
end

function var_0_0.knock(arg_76_0, arg_76_1, arg_76_2, arg_76_3)
	if not var_0_3(arg_76_2) or var_0_15(arg_76_2) or arg_76_2.knockbackImmune or arg_76_2.ccImmune or arg_76_2.controlImmune then
		return false
	end

	local var_76_0 = (arg_76_2.x or 0) - (arg_76_1.x or 0)
	local var_76_1 = (arg_76_2.y or 0) - (arg_76_1.y or 0)
	local var_76_2 = math.max(0.001, math.sqrt(var_76_0 * var_76_0 + var_76_1 * var_76_1))

	arg_76_2._kb = {
		dur = 0.4,
		awakening = true,
		t = 0,
		vx = var_76_0 / var_76_2 * arg_76_3 * 20,
		vy = var_76_1 / var_76_2 * arg_76_3 * 10,
		dx = var_76_0 / var_76_2 * arg_76_3,
		dy = var_76_1 / var_76_2 * arg_76_3
	}

	return true
end

function var_0_0.knockStep(arg_77_0, arg_77_1, arg_77_2)
	if not arg_77_1 or not arg_77_1.awakening then
		return false
	end

	local var_77_0 = arg_77_1.t or 0
	local var_77_1 = math.min(arg_77_1.dur, var_77_0 + math.max(0, arg_77_2))
	local var_77_2 = (math.exp(-6 * var_77_0) - math.exp(-6 * var_77_1)) / (1 - math.exp(-6 * arg_77_1.dur))

	arg_77_0.x = (arg_77_0.x or 0) + (arg_77_1.dx or 0) * var_77_2
	arg_77_0.y = (arg_77_0.y or 0) + (arg_77_1.dy or 0) * var_77_2
	arg_77_1.t = var_77_1

	return true
end

function var_0_0.blockKnockback(arg_78_0, arg_78_1, arg_78_2)
	if not arg_78_1 or not arg_78_2 or arg_78_2.side == arg_78_1.side or not arg_78_0._awakening then
		return false
	end

	local var_78_0 = var_0_6(arg_78_1)

	if var_0_20(arg_78_0, arg_78_1, "H02") then
		return true
	end

	if var_0_18(arg_78_0, arg_78_1, "W08") and var_0_17(arg_78_1) then
		var_0_19(arg_78_0, arg_78_1, "W08", var_0_0.value(arg_78_1, "W08"))

		return true
	end

	if var_0_18(arg_78_0, arg_78_1, "S02") and not var_78_0.moving and var_0_3(var_0_11(arg_78_1)) then
		var_0_19(arg_78_0, arg_78_1, "S02", var_0_0.value(arg_78_1, "S02"))

		return true
	end

	if var_0_0.has(arg_78_1, "H02") and not var_78_0.h02Used and var_78_0.moving and var_0_3(var_0_11(arg_78_1)) then
		var_78_0.h02Used = true

		var_0_21(arg_78_0, arg_78_1, "H02", 1, var_0_0.value(arg_78_1, "H02"))

		return true
	end

	return false
end

function var_0_0.onKnockback(arg_79_0, arg_79_1, arg_79_2)
	if not arg_79_0._awakening then
		return
	end

	for iter_79_0, iter_79_1 in ipairs(arg_79_0.allies or {}) do
		if var_0_3(iter_79_1) and var_0_18(arg_79_0, iter_79_1, "S05") and var_0_6(iter_79_1).lastHitTarget == arg_79_1 and var_0_7(arg_79_0) - (var_0_6(iter_79_1).lastHitAt or -99) <= 3 and arg_79_2 and arg_79_2.side == "ally" then
			var_0_21(arg_79_0, iter_79_1, "S05", var_0_0.value(iter_79_1, "S05"), 3, arg_79_1)
			var_0_19(arg_79_0, iter_79_1, "S05", 6)
		end
	end

	if arg_79_2 and var_0_18(arg_79_0, arg_79_1, "H13") and var_0_6(arg_79_1).lastHitTarget == arg_79_2 and var_0_7(arg_79_0) - (var_0_6(arg_79_1).lastHitAt or -99) <= 3 and var_0_8(arg_79_1, arg_79_2) <= (arg_79_2.distance or 35) + 20 and var_0_27(arg_79_0, arg_79_2, "H13", 3) and var_0_0.knock(arg_79_0, arg_79_1, arg_79_2, 15) then
		var_0_19(arg_79_0, arg_79_1, "H13", var_0_0.value(arg_79_1, "H13"))
		var_0_27(arg_79_0, arg_79_2, "H13", 3, true)
	end
end

function var_0_0.statusDuration(arg_80_0, arg_80_1, arg_80_2, arg_80_3, arg_80_4)
	if not arg_80_0 or not arg_80_0._awakening or arg_80_4 and arg_80_4.side == arg_80_1.side then
		return arg_80_3
	end

	local var_80_0 = 0

	if arg_80_2 == "stun" or arg_80_2 == "silence" then
		var_80_0 = var_0_0.value(arg_80_1, "M01")
	end

	if arg_80_2 == "slow" or arg_80_2 == "root" then
		var_80_0 = var_0_0.value(arg_80_1, "H09")
	end

	for iter_80_0, iter_80_1 in ipairs(arg_80_0.allies or {}) do
		if var_0_12(iter_80_1) and var_0_5(iter_80_1) ~= var_0_5(arg_80_1) then
			local var_80_1 = arg_80_2 == "stun" and "J16" or (arg_80_2 == "slow" or arg_80_2 == "root") and "M04"

			if var_80_1 and var_0_0.has(iter_80_1, var_80_1) and var_0_22(arg_80_0, iter_80_1, 70, function(arg_81_0)
				return var_0_5(arg_81_0) ~= var_0_5(iter_80_1)
			end)[1] == arg_80_1 then
				var_80_0 = math.max(var_80_0, var_0_0.value(iter_80_1, var_80_1))
			end
		end
	end

	return arg_80_3 * (1 - var_80_0 / 100)
end

function var_0_0.onDodge(arg_82_0, arg_82_1, arg_82_2, arg_82_3, arg_82_4)
	if not arg_82_4 or not arg_82_4.basicAttack or arg_82_4.awakeningDamage then
		return
	end

	if var_0_0.has(arg_82_1, "D08") then
		var_0_21(arg_82_0, arg_82_1, "D08", var_0_0.value(arg_82_1, "D08"), 4, arg_82_2)
	end

	if arg_82_4.projectile and var_0_18(arg_82_0, arg_82_1, "A06") then
		var_0_0.extra(arg_82_0, arg_82_1, arg_82_2, arg_82_3 * var_0_0.value(arg_82_1, "A06") / 100)
		var_0_19(arg_82_0, arg_82_1, "A06", 5)
	end
end

function var_0_0.ignoreDodge(arg_83_0, arg_83_1, arg_83_2, arg_83_3)
	local var_83_0 = arg_83_3 and arg_83_3.awakeningAction or arg_83_1 and var_0_6(arg_83_1).action

	return arg_83_3 and arg_83_3.basicAttack and var_83_0 and var_83_0.target == arg_83_2 and var_83_0.D08
end

function var_0_0.beforeDamage(arg_84_0, arg_84_1, arg_84_2, arg_84_3, arg_84_4)
	if not arg_84_0._awakening or not arg_84_1 or not arg_84_4 or arg_84_4.awakeningDamage or arg_84_4.indirect or arg_84_4.itemDamage or arg_84_4.imprintDamage or arg_84_4.crossfireAttack then
		return arg_84_3
	end

	if arg_84_4.basicAttack then
		local var_84_0 = arg_84_4.awakeningAction or var_0_6(arg_84_1).action

		var_0_0.basicRelease(arg_84_0, arg_84_1)

		if var_84_0 and var_84_0.target == arg_84_2 then
			var_84_0.bonusResolved = var_84_0.bonusResolved or var_0_0.basicBonus(arg_84_0, arg_84_1, arg_84_2, var_84_0)

			return arg_84_3 * (1 + var_84_0.bonusResolved)
		end
	elseif arg_84_4.battleSkillDamage or arg_84_4.skillDamage or arg_84_4.skillAttack then
		if arg_84_4.dot or arg_84_4.burn or arg_84_4.bleed or arg_84_4.poison then
			return arg_84_3
		end

		local var_84_1 = arg_84_4.awakeningCast or var_0_6(arg_84_1).cast
		local var_84_2 = 0

		if var_84_1 then
			if not var_84_1.target then
				var_84_1.target = arg_84_2
			end

			if var_84_1.target == arg_84_2 then
				var_84_2 = var_84_2 + var_0_0.value(arg_84_1, "M08")
			end

			if var_84_1.target and var_84_1.target ~= arg_84_2 then
				var_84_2 = var_84_2 + var_0_0.value(arg_84_1, "A14")
			end

			if var_84_1.persistent then
				var_84_2 = var_84_2 + var_0_0.value(arg_84_1, "M09")
			end
		end

		if arg_84_4.cycloneFinal then
			var_84_2 = var_84_2 + var_0_0.value(arg_84_1, "S15")
		end

		return arg_84_3 * (1 + var_84_2 / 100)
	end

	return arg_84_3
end

function var_0_0.splitDamage(arg_85_0, arg_85_1, arg_85_2, arg_85_3, arg_85_4)
	local var_85_0 = arg_85_4 and (arg_85_4.awakeningAction or arg_85_1 and var_0_6(arg_85_1).action)

	if not arg_85_4 or not arg_85_4.basicAttack or not var_85_0 or not var_85_0.paired or var_85_0.target ~= arg_85_2 or var_85_0.split then
		return arg_85_3
	end

	var_85_0.split = true

	local var_85_1 = arg_85_3 / 2
	local var_85_2 = arg_85_1.distance or 35

	var_0_0.schedule(arg_85_0, 0.15, function()
		if var_0_3(arg_85_1) and var_0_3(arg_85_2) and var_0_9(arg_85_1, arg_85_2) and var_0_8(arg_85_1, arg_85_2) <= var_0_0.basicRange(arg_85_0, arg_85_1, arg_85_2, var_85_2, true) then
			arg_85_0._awakeningDamage(arg_85_2, var_85_1, arg_85_1, nil, {
				awakeningDamage = true,
				resolvedDamage = true,
				noProcs = true,
				indirect = true
			})
		end
	end)

	return var_85_1
end

function var_0_0.afterDamage(arg_87_0, arg_87_1, arg_87_2, arg_87_3, arg_87_4)
	if not arg_87_0._awakening or not arg_87_1 or arg_87_3 <= 0 or not arg_87_4 or arg_87_4.awakeningDamage or arg_87_4.indirect or arg_87_4.itemDamage or arg_87_4.imprintDamage or arg_87_4.crossfireAttack then
		return
	end

	local var_87_0 = var_0_6(arg_87_1)

	var_0_6(arg_87_2).lastHurtSource = arg_87_1

	if arg_87_4.projectile then
		arg_87_4.projectile._awakeningHit = true
	end

	if arg_87_4.basicAttack then
		local var_87_1 = arg_87_4.awakeningAction or var_87_0.action

		if not var_87_1 or var_87_1.hits[arg_87_2] then
			return
		end

		var_87_1.hits[arg_87_2] = true

		if var_87_1.target ~= arg_87_2 then
			if var_0_0.identity(arg_87_1) == "W08" then
				var_0_0.multiHit(arg_87_0, arg_87_1, var_87_1)
			end

			return
		end

		if var_87_1.w17 then
			var_0_19(arg_87_0, arg_87_1, "W17", 4)
		end

		if var_87_1.d15 then
			var_0_27(arg_87_0, arg_87_2, "D15", 6, true)
		end

		if var_87_1.retargetId == "D09" then
			var_0_19(arg_87_0, arg_87_1, "D09", 8)
		end

		var_87_0.h01 = false
		var_87_0.charmHit = true
		var_87_0.sameHits = var_87_0.lastHitTarget == arg_87_2 and (var_87_0.sameHits or 0) + 1 or 1
		var_87_0.lastHitTarget = arg_87_2
		var_87_0.lastHitAt = var_0_7(arg_87_0)

		for iter_87_0, iter_87_1 in ipairs({
			"S05",
			"H08",
			"A13"
		}) do
			var_87_0.tokens[iter_87_1] = nil
		end

		for iter_87_2, iter_87_3 in ipairs({
			"S13",
			"J03"
		}) do
			local var_87_2 = var_0_20(arg_87_0, arg_87_1, iter_87_3)

			if var_87_2 then
				var_0_0.extra(arg_87_0, arg_87_1, arg_87_2, (arg_87_1.dmg or 0) * var_87_2.p / 100)

				var_87_0.tokens[iter_87_3] = nil
			end
		end

		if var_0_18(arg_87_0, arg_87_1, "W03") then
			local var_87_3 = var_0_25(arg_87_0, arg_87_1, 60)

			if var_87_3 then
				var_0_21(arg_87_0, var_87_3, "W03", var_0_0.value(arg_87_1, "W03"), 2)
				var_0_19(arg_87_0, arg_87_1, "W03", 4)
			end
		end

		if var_0_18(arg_87_0, arg_87_1, "W11") then
			var_0_21(arg_87_0, arg_87_2, "W11", var_0_0.value(arg_87_1, "W11"), 3)
			var_0_19(arg_87_0, arg_87_1, "W11", 6)
		end

		if var_0_18(arg_87_0, arg_87_1, "J02") then
			var_0_21(arg_87_0, arg_87_2, "J02", var_0_0.value(arg_87_1, "J02"), 3)
			var_0_19(arg_87_0, arg_87_1, "J02", 5)
		end

		if var_0_18(arg_87_0, arg_87_1, "M12") and var_0_27(arg_87_0, arg_87_2, "M12", 6) then
			var_0_21(arg_87_0, arg_87_2, "M12", var_0_0.value(arg_87_1, "M12"), 3)
			var_0_19(arg_87_0, arg_87_1, "M12", 6)
			var_0_27(arg_87_0, arg_87_2, "M12", 6, true)
		end

		if var_0_18(arg_87_0, arg_87_1, "A02") and var_0_8(arg_87_1, arg_87_2) <= 60 and var_0_27(arg_87_0, arg_87_2, "A02", 4) and var_0_0.knock(arg_87_0, arg_87_1, arg_87_2, 15) then
			var_0_19(arg_87_0, arg_87_1, "A02", var_0_0.value(arg_87_1, "A02"))
			var_0_27(arg_87_0, arg_87_2, "A02", 4, true)
		end

		if var_0_18(arg_87_0, arg_87_1, "A07") and not var_0_14(arg_87_2) and not var_0_15(arg_87_2) then
			var_0_21(arg_87_0, arg_87_2, "A07", var_0_0.value(arg_87_1, "A07"), 2)
			var_0_19(arg_87_0, arg_87_1, "A07", 6)
		end

		if var_0_0.has(arg_87_1, "J12") and var_0_12(var_0_11(arg_87_2)) and var_0_11(arg_87_2) ~= arg_87_1 and var_0_27(arg_87_0, arg_87_2, "J12", 8) and var_0_0.stun(arg_87_0, arg_87_2, var_0_0.value(arg_87_1, "J12")) then
			var_0_27(arg_87_0, arg_87_2, "J12", 8, true)
		end

		if var_0_18(arg_87_0, arg_87_1, "H05") and (var_87_0.travel or 0) >= 30 then
			for iter_87_4, iter_87_5 in ipairs(var_0_26(arg_87_0, arg_87_2, 35)) do
				if iter_87_5 ~= arg_87_2 and var_0_9(arg_87_1, iter_87_5) then
					var_0_0.extra(arg_87_0, arg_87_1, iter_87_5, (arg_87_1.dmg or 0) * var_0_0.value(arg_87_1, "H05") / 100)

					var_87_0.travel = 0

					var_0_19(arg_87_0, arg_87_1, "H05", 7)

					break
				end
			end
		end

		if var_0_12(arg_87_1) then
			for iter_87_6, iter_87_7 in ipairs(arg_87_0.allies or {}) do
				if iter_87_7 ~= arg_87_1 and var_0_12(iter_87_7) then
					if var_0_11(arg_87_2) == iter_87_7 and var_0_18(arg_87_0, iter_87_7, "M03") and not var_0_20(arg_87_0, iter_87_7, "M03") then
						var_0_21(arg_87_0, iter_87_7, "M03", var_0_0.value(iter_87_7, "M03"), 3, arg_87_2)
					end

					if var_0_5(iter_87_7) ~= var_0_5(arg_87_1) and var_0_11(iter_87_7) == arg_87_2 and var_0_18(arg_87_0, iter_87_7, "M10") and not var_0_20(arg_87_0, iter_87_7, "M10") then
						var_0_21(arg_87_0, iter_87_7, "M10", var_0_0.value(iter_87_7, "M10"), 4, arg_87_2)
					end

					if var_0_5(iter_87_7) ~= var_0_5(arg_87_1) and var_0_8(iter_87_7, arg_87_1) <= 70 and var_0_9(iter_87_7, arg_87_1) and var_0_18(arg_87_0, iter_87_7, "J04") and var_0_13(iter_87_7) and var_0_3(arg_87_2) and var_0_8(iter_87_7, arg_87_2) <= (iter_87_7.distance or 120) then
						var_0_19(arg_87_0, iter_87_7, "J04", 8)
						var_0_0.card(arg_87_0, iter_87_7, arg_87_2, (iter_87_7.dmg or 0) * var_0_0.value(iter_87_7, "J04") / 100)
					end
				end
			end
		end

		if var_0_0.identity(arg_87_1) == "W08" then
			var_0_0.multiHit(arg_87_0, arg_87_1, var_87_1)
		end
	elseif (arg_87_4.battleSkillDamage or arg_87_4.skillDamage or arg_87_4.skillAttack) and not arg_87_4.dot and not arg_87_4.burn and not arg_87_4.bleed and not arg_87_4.poison then
		local var_87_4 = arg_87_4.awakeningCast or var_87_0.cast

		if not var_87_4 then
			return
		end

		var_87_4.hits[arg_87_2] = true
		var_87_4.success = true

		if var_0_0.has(arg_87_1, "A13") then
			var_0_21(arg_87_0, arg_87_1, "A13", var_0_0.value(arg_87_1, "A13"), 3, arg_87_2)
		end

		if var_0_18(arg_87_0, arg_87_1, "A11") and not var_0_14(arg_87_2) and not var_0_15(arg_87_2) and not var_87_4.intercept then
			var_87_4.a11Hits = var_87_4.a11Hits or {}
			var_87_4.a11Hits[arg_87_2] = true

			if not var_87_4.a11Queued then
				var_87_4.a11Queued = true

				var_0_0.schedule(arg_87_0, 0, function()
					local var_88_0 = var_87_0.a11Pending and var_0_20(arg_87_0, var_87_0.a11Pending, "A11")

					if var_88_0 and var_88_0.target == arg_87_1 or not var_0_18(arg_87_0, arg_87_1, "A11") then
						return
					end

					local var_88_1

					for iter_88_0, iter_88_1 in ipairs(var_0_26(arg_87_0, arg_87_1, math.huge)) do
						if var_87_4.a11Hits[iter_88_1] and not var_0_20(arg_87_0, iter_88_1, "A11") and var_0_27(arg_87_0, iter_88_1, "A11", 6) then
							var_88_1 = iter_88_1

							break
						end
					end

					if var_88_1 then
						var_0_21(arg_87_0, var_88_1, "A11", var_0_0.value(arg_87_1, "A11"), 3, arg_87_1)

						var_87_0.a11Pending = var_88_1
						var_87_4.intercept = true
					end
				end)
			end
		end

		if var_0_18(arg_87_0, arg_87_1, "A15") and arg_87_4.explosion then
			var_87_4.radius = arg_87_4.explosionRadius or 30
			var_87_4.explosion = {
				x = arg_87_4.impactX or arg_87_2.x,
				y = arg_87_4.impactY or arg_87_2.y,
				lane = arg_87_2.lane
			}
			var_87_4.lastExplosion = var_0_7(arg_87_0)

			if not var_87_4.explosionScheduled then
				var_87_4.explosionScheduled = true

				var_0_0.schedule(arg_87_0, 0.4, function()
					var_0_0.explodeAgain(arg_87_0, arg_87_1, var_87_4)
				end)
			end
		end

		if arg_87_4.finalPulse and var_0_18(arg_87_0, arg_87_1, "M11") and not var_87_4.finalPulse then
			var_87_4.finalHits = var_87_4.finalHits or {}
			var_87_4.finalHits[arg_87_2] = true

			if not var_87_4.finalQueued then
				var_87_4.finalQueued = true

				var_0_0.schedule(arg_87_0, 0, function()
					if not var_0_18(arg_87_0, arg_87_1, "M11") then
						return
					end

					local var_90_0

					for iter_90_0, iter_90_1 in ipairs(var_0_26(arg_87_0, arg_87_1, math.huge)) do
						if var_87_4.finalHits[iter_90_1] then
							var_90_0 = iter_90_1

							break
						end
					end

					if var_90_0 then
						var_87_4.finalPulse = true

						var_0_19(arg_87_0, arg_87_1, "M11", 8)
						var_0_0.extra(arg_87_0, arg_87_1, var_90_0, (arg_87_1.dmg or 0) * var_0_0.value(arg_87_1, "M11") / 100)
					end
				end)
			end
		end

		var_0_0.multiHit(arg_87_0, arg_87_1, var_87_4)
	end
end

function var_0_0.multiHit(arg_91_0, arg_91_1, arg_91_2)
	if not var_0_18(arg_91_0, arg_91_1, "W14") or arg_91_2.interrupted then
		return
	end

	local var_91_0 = {}

	for iter_91_0 in pairs(arg_91_2.hits) do
		var_91_0[#var_91_0 + 1] = iter_91_0
	end

	if #var_91_0 < 2 then
		return
	end

	table.sort(var_91_0, function(arg_92_0, arg_92_1)
		return var_0_8(arg_91_1, arg_92_0) < var_0_8(arg_91_1, arg_92_1)
	end)

	for iter_91_1, iter_91_2 in ipairs(var_91_0) do
		local var_91_1 = var_0_6(iter_91_2).action

		if var_0_3(iter_91_2) and not var_0_15(iter_91_2) and not var_0_16(iter_91_2) and not iter_91_2.ccImmune and not iter_91_2.controlImmune and var_91_1 and not var_91_1.released and var_0_27(arg_91_0, iter_91_2, "W14", 6) then
			iter_91_2.shotPending = false
			iter_91_2.pendingTarget = nil
			iter_91_2._meleeHitDone = true
			iter_91_2._attackHitDone = true
			iter_91_2.coolTicks = iter_91_2.atkTicks or 60

			if iter_91_2.anim then
				iter_91_2.anim.name = "idle"
				iter_91_2.anim.t = 0
				iter_91_2.anim.frame = 1
			end

			for iter_91_3, iter_91_4 in pairs(iter_91_2) do
				if type(iter_91_3) == "string" and iter_91_3:sub(1, 8) == "_pending" and iter_91_3:sub(-3) == "Hit" and type(iter_91_4) == "table" and iter_91_4.awakeningAction == var_91_1 then
					iter_91_2[iter_91_3] = nil
				end
			end

			var_91_1.released = true
			arg_91_2.interrupted = true

			var_0_27(arg_91_0, iter_91_2, "W14", 6, true)
			var_0_19(arg_91_0, arg_91_1, "W14", var_0_0.value(arg_91_1, "W14"))

			break
		end
	end
end

function var_0_0.explodeAgain(arg_93_0, arg_93_1, arg_93_2)
	local var_93_0 = 0.4 - (var_0_7(arg_93_0) - (arg_93_2.lastExplosion or 0))

	if var_93_0 > 0 then
		var_0_0.schedule(arg_93_0, var_93_0, function()
			var_0_0.explodeAgain(arg_93_0, arg_93_1, arg_93_2)
		end)

		return
	end

	if not var_0_18(arg_93_0, arg_93_1, "A15") or not arg_93_2.explosion then
		return
	end

	var_0_19(arg_93_0, arg_93_1, "A15", 8)

	if var_0_0.isV7(arg_93_1, arg_93_0) and arg_93_2.explosionAsset then
		arg_93_0.projectiles = arg_93_0.projectiles or {}
		arg_93_0.projectiles[#arg_93_0.projectiles + 1] = {
			frame = 2,
			vx = 0,
			vy = 0,
			kind = "projectile",
			awakeningDamage = true,
			side = "ally",
			visualOnly = true,
			life = 0.5,
			animFrames = 6,
			animT = 0.1,
			rot = 0,
			alive = true,
			asset = arg_93_2.explosionAsset,
			owner = arg_93_1,
			x = arg_93_2.explosion.x,
			y = arg_93_2.explosion.y,
			scale = arg_93_2.explosionScale or 1,
			hitTargets = {}
		}
	end

	local var_93_1 = var_0_26(arg_93_0, arg_93_2.explosion, math.min(30, arg_93_2.radius or 30))

	for iter_93_0 = 1, math.min(2, #var_93_1) do
		var_0_0.extra(arg_93_0, arg_93_1, var_93_1[iter_93_0], (arg_93_1.dmg or 0) * var_0_0.value(arg_93_1, "A15") / 100)
	end
end

function var_0_0.onHurt(arg_95_0, arg_95_1, arg_95_2, arg_95_3, arg_95_4)
	if not arg_95_0._awakening or not arg_95_2 or arg_95_2 == arg_95_1 or arg_95_3 <= 0 then
		return
	end

	arg_95_4 = arg_95_4 or {}

	if arg_95_4.dot or arg_95_4.burn or arg_95_4.poison or arg_95_4.bleed or arg_95_4.selfDamage or arg_95_4.awakeningDamage or arg_95_4.indirect then
		return
	end

	local var_95_0 = var_0_6(arg_95_1)

	var_95_0.h01 = false
	var_95_0.lastHurtSource = arg_95_2

	if var_0_18(arg_95_0, arg_95_1, "W02") then
		var_0_21(arg_95_0, arg_95_1, "W02", var_0_0.value(arg_95_1, "W02"), 4)
		var_0_19(arg_95_0, arg_95_1, "W02", 4)
	end

	if var_0_18(arg_95_0, arg_95_1, "D06") and arg_95_3 >= (var_95_0.startHP or arg_95_1.maxhp or 1) * 0.1 then
		var_0_21(arg_95_0, arg_95_1, "D06", var_0_0.value(arg_95_1, "D06"), 2)
		var_0_19(arg_95_0, arg_95_1, "D06", 6)
	end

	if arg_95_4.basicAttack then
		if var_0_18(arg_95_0, arg_95_1, "J01") and var_0_3(arg_95_2) and not var_0_15(arg_95_2) and not arg_95_2.aspdImmune then
			var_0_21(arg_95_0, arg_95_2, "J01", var_0_0.value(arg_95_1, "J01"), 2)
			var_0_19(arg_95_0, arg_95_1, "J01", 6)
		end

		local var_95_1 = arg_95_4.awakeningAction or var_0_6(arg_95_2).action

		if var_95_1 and var_95_1.entry and not var_0_6(arg_95_2).s04Used and var_0_0.has(arg_95_1, "S04") and var_0_0.stun(arg_95_0, arg_95_2, var_0_0.value(arg_95_1, "S04")) then
			var_0_6(arg_95_2).s04Used = true
		end
	end

	if var_0_12(arg_95_1) then
		for iter_95_0, iter_95_1 in ipairs(var_0_22(arg_95_0, arg_95_1, 60)) do
			if var_0_18(arg_95_0, iter_95_1, "W18") then
				var_0_21(arg_95_0, iter_95_1, "W18", var_0_0.value(iter_95_1, "W18"), 4)
				var_0_19(arg_95_0, iter_95_1, "W18", 5)
			end
		end
	end

	local var_95_2 = var_95_0.summonOwner

	if var_0_3(var_95_2) and var_0_0.has(var_95_2, "M22") and not var_0_6(var_95_2).m22Used then
		var_0_6(var_95_2).m22Used = true

		var_0_0.shield(arg_95_0, var_95_2, "M22", (var_95_2.dmg or 0) * var_0_0.value(var_95_2, "M22") / 100, 3)
	end
end

function var_0_0.projectileContact(arg_96_0, arg_96_1)
	if arg_96_1 and var_0_0.has(arg_96_0, "M05") and arg_96_1.basicAttack and arg_96_1.projectile and arg_96_1.projectile.pierce and not arg_96_1.projectile.bossSpecial and not arg_96_1.projectile.battleSkillDamage then
		if type(arg_96_1.projectile.pierce) == "table" then
			arg_96_1.projectile.pierce.additionalHits = 0
		end

		if var_0_0.isV7(arg_96_0, arg_96_0._awakeningBattle) then
			var_0_0.deflect(arg_96_0._awakeningBattle, arg_96_1.projectile, arg_96_0)
		else
			arg_96_1.projectile.alive = false
		end

		arg_96_1.projectile._awakeningStopPierce = true
	end
end

function var_0_0.nativeBlock(arg_97_0, arg_97_1)
	if not arg_97_0 or not arg_97_0._awakening then
		return
	end

	local var_97_0 = var_0_6(arg_97_1).cast

	if var_97_0 and not var_97_0.s13 and var_0_0.has(arg_97_1, "S13") then
		var_97_0.s13 = true

		var_0_21(arg_97_0, arg_97_1, "S13", var_0_0.value(arg_97_1, "S13"), 4)
	end
end

local function var_0_28(arg_98_0)
	return arg_98_0 and arg_98_0.alive ~= false and arg_98_0.basicAttack and not arg_98_0.visualOnly and not arg_98_0._spearCycloneDeflect and not arg_98_0.battleSkillDamage and not arg_98_0.awakeningDamage and not arg_98_0.anchoredLaser and arg_98_0.kind ~= "laser" and not arg_98_0.bossSpecial and not arg_98_0.hit
end

function var_0_0.intercept(arg_99_0, arg_99_1, arg_99_2)
	if not arg_99_0._awakening or not var_0_13(arg_99_1) then
		return
	end

	local var_99_0 = {}

	for iter_99_0, iter_99_1 in ipairs(arg_99_0.projectiles or {}) do
		if iter_99_1.side == "enemy" and var_0_28(iter_99_1) then
			local var_99_1 = iter_99_1.targetOnly or iter_99_1.target or iter_99_1._awakeningTarget
			local var_99_2
			local var_99_3
			local var_99_4

			if arg_99_2 and var_0_8(arg_99_1, iter_99_1) <= 45 then
				if var_0_18(arg_99_0, arg_99_1, "W01") and (var_99_1 == arg_99_1 or var_0_12(var_99_1) and not var_0_23(arg_99_1, var_99_1)) then
					var_99_2 = "W01"
					var_99_3 = var_0_0.value(arg_99_1, var_99_2)
				end

				if var_0_18(arg_99_0, arg_99_1, "J06") and var_99_1 == arg_99_1 then
					var_99_2 = "J06"
					var_99_3 = var_0_0.value(arg_99_1, var_99_2)
				end
			end

			if var_0_18(arg_99_0, arg_99_1, "S10") and var_0_12(var_99_1) and var_99_1 ~= arg_99_1 and var_0_14(var_99_1) and var_0_9(arg_99_1, var_99_1) and var_0_8(arg_99_1, var_99_1) <= 55 and var_0_8(arg_99_1, iter_99_1) <= 45 then
				var_99_2 = "S10"
				var_99_3 = var_0_0.value(arg_99_1, var_99_2)
			end

			if var_0_18(arg_99_0, arg_99_1, "D12") and var_99_1 == arg_99_1 and var_0_11(var_0_11(arg_99_1)) == arg_99_1 and iter_99_1.owner ~= var_0_11(arg_99_1) and var_0_8(arg_99_1, iter_99_1) <= 45 then
				var_99_2 = "D12"
				var_99_3 = var_0_0.value(arg_99_1, var_99_2)
			end

			if var_0_0.has(arg_99_1, "M18") and var_0_12(var_99_1) and var_99_1 ~= arg_99_1 and var_0_9(arg_99_1, var_99_1) and var_0_8(arg_99_1, var_99_1) <= 70 and (var_99_1.hp or 0) <= 0.5 * (var_99_1.maxhp or 1) and var_0_8(var_99_1, iter_99_1) <= 35 and var_0_27(arg_99_0, var_99_1, "M18", var_0_0.value(arg_99_1, "M18")) then
				var_99_2 = "M18"
				var_99_3 = var_0_0.value(arg_99_1, var_99_2)
				var_99_4 = var_99_1
			end

			if var_99_2 then
				var_99_0[#var_99_0 + 1] = {
					p = iter_99_1,
					id = var_99_2,
					cd = var_99_3,
					beneficiary = var_99_4,
					eta = var_0_8(iter_99_1, var_99_1 or arg_99_1) / math.max(1, math.sqrt((iter_99_1.vx or 0)^2 + (iter_99_1.vy or 0)^2))
				}
			end
		end
	end

	table.sort(var_99_0, function(arg_100_0, arg_100_1)
		if arg_100_0.id == "M18" and arg_100_1.id == "M18" then
			local var_100_0 = arg_100_0.beneficiary.hp / arg_100_0.beneficiary.maxhp
			local var_100_1 = arg_100_1.beneficiary.hp / arg_100_1.beneficiary.maxhp

			if var_100_0 ~= var_100_1 then
				return var_100_0 < var_100_1
			end
		end

		return arg_100_0.eta < arg_100_1.eta
	end)

	for iter_99_2, iter_99_3 in ipairs(var_99_0) do
		if iter_99_3.p.alive ~= false and (iter_99_3.beneficiary and var_0_27(arg_99_0, iter_99_3.beneficiary, iter_99_3.id, iter_99_3.cd) or not iter_99_3.beneficiary and var_0_18(arg_99_0, arg_99_1, iter_99_3.id)) then
			iter_99_3.p.alive = false
			iter_99_3.p._awakeningRemoved = true

			if iter_99_3.beneficiary then
				var_0_27(arg_99_0, iter_99_3.beneficiary, iter_99_3.id, iter_99_3.cd, true)
			else
				var_0_19(arg_99_0, arg_99_1, iter_99_3.id, iter_99_3.cd)
			end
		end
	end
end

function var_0_0.projectile(arg_101_0, arg_101_1, arg_101_2)
	if not arg_101_0._awakening or not arg_101_1 or arg_101_1._awakeningInitialized then
		return
	end

	arg_101_1._awakeningInitialized = true
	arg_101_1._awakeningTarget = arg_101_2 or arg_101_1.targetOnly or arg_101_1.target or var_0_11(arg_101_1.owner)

	if arg_101_1.basicAttack and arg_101_1.owner then
		arg_101_1.awakeningAction = arg_101_1.awakeningAction or var_0_6(arg_101_1.owner).action

		var_0_0.basicRelease(arg_101_0, arg_101_1.owner)

		if arg_101_1.side ~= "enemy" and not arg_101_1.anchoredLaser and not arg_101_1.battleSkillDamage then
			local var_101_0 = 1 + var_0_0.value(arg_101_1.owner, "A03") / 100

			arg_101_1._awakeningSpeed = var_101_0

			if arg_101_1.flightDur then
				arg_101_1.flightDur = arg_101_1.flightDur / var_101_0
			end

			arg_101_1.vx = (arg_101_1.vx or 0) * var_101_0
			arg_101_1.vy = (arg_101_1.vy or 0) * var_101_0

			if arg_101_1.speedFinal then
				arg_101_1.speedFinal = arg_101_1.speedFinal * var_101_0
			end

			if arg_101_1.speedStart then
				arg_101_1.speedStart = arg_101_1.speedStart * var_101_0
			end

			if not arg_101_1.maxTravel then
				arg_101_1.maxTravel = math.sqrt((arg_101_1.vx or 0)^2 + (arg_101_1.vy or 0)^2) / var_101_0 * (arg_101_1.life or 2.5)
			end

			arg_101_1.startX = arg_101_1.startX or arg_101_1.x
			arg_101_1.startY = arg_101_1.startY or arg_101_1.y
		end

		local var_101_1 = var_0_20(arg_101_0, arg_101_1.owner, "A11")

		if arg_101_1.side == "enemy" and var_0_28(arg_101_1) and var_101_1 and var_0_18(arg_101_0, var_101_1.target, "A11") and var_0_27(arg_101_0, arg_101_1.owner, "A11", 6) then
			arg_101_1.alive = false
			var_0_6(arg_101_1.owner).tokens.A11 = nil

			var_0_19(arg_101_0, var_101_1.target, "A11", var_101_1.p)
			var_0_27(arg_101_0, arg_101_1.owner, "A11", 6, true)
		end
	end

	arg_101_1.awakeningCast = arg_101_1.awakeningCast or arg_101_1.owner and var_0_6(arg_101_1.owner).cast

	if arg_101_1.awakeningCast and (arg_101_1.tricksterCharmProjectile or arg_101_1.ferretCourier) then
		arg_101_1.awakeningCast.pending = (arg_101_1.awakeningCast.pending or 0) + 1
	end
end

function var_0_0.projectileLost(arg_102_0, arg_102_1)
	if not arg_102_1 or arg_102_1._awakeningLost or arg_102_1._awakeningRemoved or arg_102_1.awakeningDamage or not arg_102_1.owner then
		return
	end

	arg_102_1._awakeningLost = true

	if arg_102_1.awakeningCast and (arg_102_1.tricksterCharmProjectile or arg_102_1.ferretCourier) then
		local var_102_0 = arg_102_1.awakeningCast

		var_102_0.pending = math.max(0, (var_102_0.pending or 1) - 1)

		if var_102_0.pending == 0 and not var_102_0.success then
			var_0_0.failedSkill(arg_102_0, arg_102_1.owner, var_102_0)
		end

		return
	end

	if not arg_102_1.basicAttack then
		return
	end

	if arg_102_1._awakeningHit or next(arg_102_1.hitTargets or {}) or var_0_3(arg_102_1._awakeningTarget) then
		return
	end

	if var_0_18(arg_102_0, arg_102_1.owner, "M07") then
		var_0_21(arg_102_0, arg_102_1.owner, "M07", var_0_0.value(arg_102_1.owner, "M07"), 4)
		var_0_19(arg_102_0, arg_102_1.owner, "M07", 6)
	end

	if var_0_18(arg_102_0, arg_102_1.owner, "J03") then
		var_0_21(arg_102_0, arg_102_1.owner, "J03", var_0_0.value(arg_102_1.owner, "J03"), 4)
		var_0_19(arg_102_0, arg_102_1.owner, "J03", 6)
	end
end

function var_0_0.card(arg_103_0, arg_103_1, arg_103_2, arg_103_3)
	arg_103_0.projectiles = arg_103_0.projectiles or {}

	local var_103_0 = {
		awakeningDamage = true,
		alive = true,
		vx = 0,
		frame = 1,
		scale = 1,
		rot = 0,
		kind = "arrow",
		awakeningCard = true,
		side = "ally",
		visualOnly = true,
		life = 2.5,
		animT = 0,
		vy = 0,
		hitTargets = {},
		asset = __slotGetJesterProjectileAsset and __slotGetJesterProjectileAsset(arg_103_1, false) or "JesterCard",
		owner = arg_103_1,
		x = arg_103_1.x,
		y = arg_103_1.y,
		_awakeningTarget = arg_103_2,
		dmg = arg_103_3
	}

	arg_103_0.projectiles[#arg_103_0.projectiles + 1] = var_103_0

	return var_103_0
end

function var_0_0.updateCard(arg_104_0, arg_104_1, arg_104_2)
	local var_104_0 = arg_104_1._awakeningTarget

	if not var_0_3(var_104_0) then
		arg_104_1.alive = false

		return
	end

	local var_104_1 = var_0_8(arg_104_1, var_104_0)
	local var_104_2 = 240 * arg_104_2

	if var_104_1 <= var_104_2 + 5 then
		if arg_104_1.awakeningWeakness then
			var_0_21(arg_104_0, var_104_0, "J11", arg_104_1.awakeningWeakness, 3)
		else
			var_0_0.extra(arg_104_0, arg_104_1.owner, var_104_0, arg_104_1.dmg)
		end

		arg_104_1.alive = false
	else
		arg_104_1.x = arg_104_1.x + ((var_104_0.x or 0) - arg_104_1.x) / var_104_1 * var_104_2
		arg_104_1.y = arg_104_1.y + ((var_104_0.y or 0) - arg_104_1.y) / var_104_1 * var_104_2
	end
end

function var_0_0.speed(arg_105_0, arg_105_1, arg_105_2)
	if not arg_105_0._awakening then
		return 1
	end

	local var_105_0 = var_0_6(arg_105_1)
	local var_105_1 = 0

	if var_105_0.h01 and not var_105_0.firstHit then
		var_105_1 = var_0_0.value(arg_105_1, "H01")
	end

	local var_105_2 = var_0_20(arg_105_0, arg_105_1, "H06")

	if var_105_2 then
		var_105_1 = math.max(var_105_1, var_105_2.p)
	end

	local var_105_3 = var_0_20(arg_105_0, arg_105_1, "M20")

	if var_105_3 and not var_105_0.firstBasic then
		var_105_1 = math.max(var_105_1, var_105_3.p)
	end

	for iter_105_0, iter_105_1 in ipairs(arg_105_0.allies or {}) do
		if var_0_12(iter_105_1) and var_0_6(iter_105_1).moving and var_105_0.moving and var_0_0.has(iter_105_1, "H10") and var_0_25(arg_105_0, iter_105_1, 60) == arg_105_1 then
			var_105_1 = math.max(var_105_1, var_0_0.value(iter_105_1, "H10"))
		end
	end

	local var_105_4 = var_0_20(arg_105_0, arg_105_1, "J10")
	local var_105_5 = arg_105_2 or require("src.game.combat").slow_effects.movementMultiplier(arg_105_1)

	return (1 + var_105_1 / 100) * math.min(var_105_5, 1 - (var_105_4 and var_105_4.p or 0) / 100) / math.max(0.001, var_105_5)
end

function var_0_0.attackPeriod(arg_106_0, arg_106_1, arg_106_2)
	return arg_106_2
end

function var_0_0.attackSpeedMultiplier(arg_107_0, arg_107_1, arg_107_2)
	local var_107_0 = arg_107_0._awakening and var_0_20(arg_107_0, arg_107_1, "J01")

	return math.min(arg_107_2 or 1, 1 - (var_107_0 and var_107_0.p or 0) / 100)
end

function var_0_0.onDeath(arg_108_0, arg_108_1)
	if not arg_108_0._awakening or var_0_6(arg_108_1).deathRecorded then
		return
	end

	local var_108_0 = var_0_6(arg_108_1)

	var_108_0.deathRecorded = true

	if var_108_0.summonOwner and (arg_108_1.hp or 0) <= 0 and var_0_0.has(var_108_0.summonOwner, "M19") and not arg_108_1._summonExpired then
		var_0_6(var_108_0.summonOwner).summonDeath = {
			x = arg_108_1.x,
			y = arg_108_1.y,
			lane = arg_108_1.lane
		}
	end
end

function var_0_0.update(arg_109_0, arg_109_1)
	if not arg_109_0._awakening or arg_109_0.mode ~= "battle" or (arg_109_0.timeStopT or 0) > 0 or arg_109_0._judgementIntroLockActive then
		return
	end

	arg_109_0._awakening.time = var_0_7(arg_109_0) + arg_109_1

	local var_109_0 = arg_109_0._awakening.queue

	for iter_109_0 = #var_109_0, 1, -1 do
		if var_109_0[iter_109_0].at <= var_0_7(arg_109_0) then
			table.remove(var_109_0, iter_109_0).run()
		end
	end

	for iter_109_1, iter_109_2 in ipairs({
		arg_109_0.allies or {},
		arg_109_0.enemies or {}
	}) do
		for iter_109_3, iter_109_4 in ipairs(iter_109_2) do
			local var_109_1 = var_0_6(iter_109_4)

			iter_109_4._awakeningBattle = arg_109_0
			iter_109_4._awakeningSerial = iter_109_4._awakeningSerial or iter_109_3
			var_109_1.originalRange = var_109_1.originalRange or iter_109_4.distance

			if var_0_3(iter_109_4) then
				if iter_109_4.side == "enemy" then
					require("src.game.combat").retaliation_sigil.observeEnemy(arg_109_0, iter_109_4)
				end

				if iter_109_4.side == "enemy" then
					var_0_0.filterKnockback(arg_109_0, iter_109_4)
				end

				local var_109_2 = var_109_1.x and math.sqrt(((iter_109_4.x or 0) - var_109_1.x)^2 + ((iter_109_4.y or 0) - var_109_1.y)^2) or 0

				if var_109_1.knockOrigin and var_0_8(iter_109_4, var_109_1.knockOrigin) > 0.01 then
					var_0_0.onKnockback(arg_109_0, iter_109_4, var_109_1.knockOrigin.source)

					var_109_1.knockOrigin = nil
				end

				local var_109_3 = var_109_2 > 0.01 and not iter_109_4._kb and not iter_109_4._posLerp and var_0_13(iter_109_4) and not iter_109_4._jump and not iter_109_4.lift

				var_109_1.moving = var_109_3 and var_0_3(var_0_11(iter_109_4)) and var_0_8(iter_109_4, var_0_11(iter_109_4)) <= var_0_8({
					x = var_109_1.x,
					y = var_109_1.y
				}, var_0_11(iter_109_4)) + 0.001
				var_109_1.still = (var_109_1.still or 0) + (var_0_13(iter_109_4) and arg_109_1 or 0)
				var_109_1.stillTravel = (var_109_1.stillTravel or 0) + var_109_2

				if var_109_1.stillTravel >= 3 then
					var_109_1.still = 0
					var_109_1.stillTravel = 0
				end

				var_109_1.movement = var_109_1.movement or {}

				if var_109_1.moving then
					var_109_1.movement[#var_109_1.movement + 1] = {
						at = var_0_7(arg_109_0),
						n = var_109_2
					}
					var_109_1.approached = true
				end

				var_109_1.travel = 0

				for iter_109_5 = #var_109_1.movement, 1, -1 do
					local var_109_4 = var_109_1.movement[iter_109_5]

					if var_0_7(arg_109_0) - var_109_4.at > 2 then
						table.remove(var_109_1.movement, iter_109_5)
					else
						var_109_1.travel = var_109_1.travel + var_109_4.n
					end
				end

				if iter_109_4.side == "enemy" and var_109_3 then
					var_109_1.crossings = var_109_1.crossings or {}

					for iter_109_6, iter_109_7 in ipairs(arg_109_0.allies or {}) do
						if var_109_1.x and var_109_1.x >= (iter_109_7.x or 0) and (iter_109_4.x or 0) < (iter_109_7.x or 0) and var_0_9(iter_109_4, iter_109_7) then
							var_109_1.crossings[iter_109_7] = var_0_7(arg_109_0)
						end
					end
				end

				var_109_1.x = iter_109_4.x
				var_109_1.y = iter_109_4.y

				if var_0_0.has(iter_109_4, "W10") and not var_109_1.w10 and (iter_109_4.hp or 0) <= 0.35 * (iter_109_4.maxhp or 1) and (not var_0_0.isV7(iter_109_4, arg_109_0) or var_0_13(iter_109_4)) then
					local var_109_5 = var_0_22(arg_109_0, iter_109_4, var_0_0.isV7(iter_109_4, arg_109_0) and 40 or 70, nil, true)[1]

					if var_109_5 and (var_0_0.shield(arg_109_0, var_109_5, "W10", (iter_109_4.dmg or 0) * var_0_0.value(iter_109_4, "W10") / 100, 3) > 0 or not var_0_0.isV7(iter_109_4, arg_109_0)) then
						var_109_1.w10 = true
					end
				end

				local var_109_6 = var_0_11(iter_109_4)

				if var_109_1.previousLiveTarget and not var_0_3(var_109_1.previousLiveTarget) and var_109_6 ~= var_109_1.previousLiveTarget and var_0_3(var_109_6) then
					var_0_21(arg_109_0, iter_109_4, "H06", var_0_0.value(iter_109_4, "H06"), 3, var_109_6)
				end

				if var_0_3(var_109_6) then
					if not var_0_0.isV7(iter_109_4, arg_109_0) and var_109_1.distanceTarget == var_109_6 and var_109_1.targetPoint and var_0_8(iter_109_4, var_109_6) > var_0_8(iter_109_4, var_109_1.targetPoint) + 0.1 and not var_109_6._posLerp and var_0_18(arg_109_0, iter_109_4, "H08") then
						var_0_21(arg_109_0, iter_109_4, "H08", var_0_0.value(iter_109_4, "H08"), 3, var_109_6)
						var_0_19(arg_109_0, iter_109_4, "H08", 5)
					end

					var_109_1.previousLiveTarget = var_109_6
					var_109_1.distanceTarget = var_109_6
					var_109_1.targetPoint = {
						x = var_109_6.x,
						y = var_109_6.y
					}
				end

				if not var_0_0.isV7(iter_109_4, arg_109_0) then
					for iter_109_8, iter_109_9 in ipairs({
						"H08",
						"S05",
						"A13"
					}) do
						local var_109_7 = var_0_20(arg_109_0, iter_109_4, iter_109_9)

						if var_109_7 and (var_109_7.target ~= var_109_6 or not var_0_3(var_109_6)) then
							var_109_1.tokens[iter_109_9] = nil
						end
					end
				end

				for iter_109_10, iter_109_11 in ipairs({
					"_pendingArcaneCore",
					"_pendingArcaneOrb",
					"_pendingTwinBolt",
					"_pendingTripleShot",
					"_pendingPrecisionShot",
					"_pendingHeadshot"
				}) do
					var_0_0.trackSkill(arg_109_0, iter_109_4, iter_109_4[iter_109_11])
				end

				if iter_109_4.skill then
					var_0_0.trackSkill(arg_109_0, iter_109_4, iter_109_4.skill.kegCast)
					var_0_0.trackSkill(arg_109_0, iter_109_4, iter_109_4.skill.flameCast)
				end

				for iter_109_12, iter_109_13 in ipairs({
					"_pendingWarriorHit",
					"_pendingDuelistHit",
					"_pendingSpearHit",
					"_pendingCavalryHit",
					"_pendingMagnusHit"
				}) do
					var_0_0.retarget(arg_109_0, iter_109_4, iter_109_4[iter_109_13])
				end

				if iter_109_4.shotPending then
					local var_109_8 = {
						target = iter_109_4.pendingTarget
					}

					var_0_0.retarget(arg_109_0, iter_109_4, var_109_8)
				end

				local var_109_9 = var_0_0.ownShield(iter_109_4) or iter_109_4._ironwallChallengeBlocking or (iter_109_4.guardianChallengeDR or 0) > 0 or iter_109_4.skill and (iter_109_4.skill.kind == "ShieldWall" or iter_109_4.skill.kind == "CounterStance" or iter_109_4.skill.kind == "HolyBarrier") and var_0_16(iter_109_4)

				if var_109_1.defending and not var_109_9 and var_0_0.has(iter_109_4, "W13") then
					var_0_21(arg_109_0, iter_109_4, "W13", var_0_0.value(iter_109_4, "W13"), 2)
				end

				var_109_1.defending = var_109_9

				local var_109_10 = (iter_109_4.silenceT or 0) > 0 or (iter_109_4.freezeT or 0) > 0 or (iter_109_4._frostSpikeFreezeT or 0) > 0 or (iter_109_4._condemningSealT or 0) > 0

				if var_109_1.cc and not var_109_10 then
					if var_0_0.isV7(iter_109_4, arg_109_0) then
						var_0_0.sealReleased(arg_109_0, iter_109_4)
					else
						var_0_21(arg_109_0, iter_109_4, "released", 1, 2)
					end
				end

				var_109_1.cc = var_109_10

				if not var_0_16(iter_109_4) and var_109_1.wasCasting and var_109_1.cast then
					var_109_1.cast.finished = true
				end

				var_109_1.wasCasting = var_0_16(iter_109_4)

				if var_109_1.cast and not var_0_16(iter_109_4) and (var_109_1.cast.pending or 0) == 0 and not var_109_1.cast.success then
					var_0_0.failedSkill(arg_109_0, iter_109_4, var_109_1.cast)
				end

				var_0_0.intercept(arg_109_0, iter_109_4, false)
			else
				var_0_0.onDeath(arg_109_0, iter_109_4)
			end
		end
	end

	for iter_109_14, iter_109_15 in ipairs(arg_109_0.projectiles or {}) do
		if iter_109_15.awakeningCard then
			var_0_0.updateCard(arg_109_0, iter_109_15, arg_109_1)
		elseif iter_109_15.alive ~= false then
			var_0_0.projectile(arg_109_0, iter_109_15)
		end
	end
end

function var_0_0.incomingOptions(arg_110_0, arg_110_1, arg_110_2)
	arg_110_2 = arg_110_2 or {}

	if not arg_110_0._awakening or not arg_110_1 then
		return arg_110_2
	end

	if arg_110_1.side == "enemy" then
		require("src.game.combat").retaliation_sigil.observeEnemy(arg_110_0, arg_110_1)
	end

	local var_110_0 = arg_110_2.projectile

	if var_110_0 and (var_110_0.splashRadius or var_110_0.explosionRadius or var_110_0.eyeWarlockDarkOrb or var_110_0.asset == "ArcaneOrb") then
		arg_110_2.area_damage = true
	end

	if arg_110_2.damageOverTime or arg_110_2.directDamage == false then
		arg_110_2.dot = true
	end

	if (arg_110_1.side == "enemy" or not var_0_0.isV8(arg_110_1, arg_110_0)) and not arg_110_2.dot and not arg_110_2.burn and not arg_110_2.poison and not arg_110_2.bleed and not arg_110_2.reflected and arg_110_2.basicAttack == nil and not arg_110_2.skillBig and not arg_110_2.skillDamage and not arg_110_2.battleSkillDamage and not arg_110_2.skillAttack then
		arg_110_2.basicAttack = true
	end

	if arg_110_2.basicAttack then
		var_0_0.basicRelease(arg_110_0, arg_110_1)
	end

	arg_110_2.awakeningAction = arg_110_2.awakeningAction or var_110_0 and var_110_0.awakeningAction or var_0_6(arg_110_1).action
	arg_110_2.awakeningCast = arg_110_2.awakeningCast or var_110_0 and var_110_0.awakeningCast or var_0_6(arg_110_1).cast

	return arg_110_2
end

function var_0_0.statusApplied(arg_111_0, arg_111_1, arg_111_2)
	arg_111_1 = arg_111_1 or arg_111_0 and arg_111_0._awakeningBattle

	if not arg_111_1 or not arg_111_1._awakening or not arg_111_0 or not arg_111_2 then
		return
	end

	local var_111_0 = ({
		silenceT = "silence",
		stunT = "stun",
		bindingT = "root",
		observerSlow = "slow",
		galeBowSlow = "slow",
		shackleArrowSlow = "slow",
		heavyKickSlow = "slow",
		chill = "slow",
		rootT = "root"
	})[arg_111_2]

	if not var_111_0 then
		return
	end

	local var_111_1 = arg_111_0[arg_111_2]

	if type(var_111_1) == "number" then
		arg_111_0[arg_111_2] = var_0_0.statusDuration(arg_111_1, arg_111_0, var_111_0, var_111_1)
	elseif type(var_111_1) == "table" and var_111_1.dur then
		var_111_1.dur = var_0_0.statusDuration(arg_111_1, arg_111_0, var_111_0, var_111_1.dur)
	end
end

function var_0_0.summon(arg_112_0, arg_112_1, arg_112_2)
	if not arg_112_0._awakening or not arg_112_1 or not arg_112_2.isSummon or arg_112_2.master ~= arg_112_1 then
		return
	end

	local var_112_0 = var_0_0.identity(arg_112_1)

	if var_112_0 ~= "M04" and var_112_0 ~= "M06" then
		return
	end

	local var_112_1 = var_0_6(arg_112_2)

	var_112_1.summonOwner = arg_112_1
	var_112_1.lastBasic = var_0_7(arg_112_0)
	arg_112_2._awakeningBattle = arg_112_0
	var_112_1.budgetKey = tostring(arg_112_1.uuid or arg_112_1.rosterIndex) .. ":summon:1"

	if var_0_0.isV7(arg_112_1, arg_112_0) then
		var_112_1.startHP = arg_112_2.maxhp or arg_112_2.hp or 1

		var_0_0.budget(arg_112_0, arg_112_2)
	end

	local var_112_2 = var_0_6(arg_112_1).summonDeath

	if var_112_2 then
		if var_0_0.has(arg_112_1, "M19") then
			local var_112_3 = arg_112_0.area or {}
			local var_112_4 = var_112_3.x or -math.huge
			local var_112_5 = var_112_4 + (var_112_3.w or math.huge)
			local var_112_6 = arg_112_0.groundTopY or -math.huge
			local var_112_7 = arg_112_0.groundBotY or math.huge
			local var_112_8 = var_0_9(arg_112_1, var_112_2) and var_112_4 <= var_112_2.x and var_112_5 >= var_112_2.x and var_112_6 <= var_112_2.y and var_112_7 >= var_112_2.y

			for iter_112_0, iter_112_1 in ipairs(arg_112_0.enemies or {}) do
				if var_0_3(iter_112_1) and iter_112_1.isCrystalGuardWall and ((iter_112_1.x or 0) - arg_112_2.x) * ((iter_112_1.x or 0) - var_112_2.x) < 0 then
					var_112_8 = false
				end
			end

			if var_112_8 then
				arg_112_2.x = var_112_2.x
				arg_112_2.y = var_112_2.y
			end

			var_0_21(arg_112_0, arg_112_2, "M19", var_0_0.value(arg_112_1, "M19"), 3)
		end

		var_0_6(arg_112_1).summonDeath = nil
	end

	if var_0_0.has(arg_112_1, "M20") then
		var_0_21(arg_112_0, arg_112_2, "M20", var_0_0.value(arg_112_1, "M20"), 3)
	end
end

function var_0_0.nativeHeal(arg_113_0, arg_113_1, arg_113_2, arg_113_3, arg_113_4)
	if require("src.game.unit_abilities").dimensional_duel.separated(arg_113_0, arg_113_1, arg_113_2) then
		return 0
	end

	arg_113_3 = require("src.game.unit_abilities").spell_echo.scaleHeal(arg_113_0, arg_113_1, arg_113_2, arg_113_3, arg_113_4)
	arg_113_4 = arg_113_4 or {}

	local var_113_0 = math.max(0, arg_113_3 or 0)

	if not arg_113_0._awakening then
		return require("src.game.combat").guardian_golem.heal(arg_113_0, arg_113_2, var_113_0)
	end

	if arg_113_4.root and var_0_0.has(arg_113_1, "D13") then
		local var_113_1 = var_0_22(arg_113_0, arg_113_1, var_0_0.isV7(arg_113_1, arg_113_0) and 45 or 70, function(arg_114_0)
			return arg_114_0.hp < arg_114_0.maxhp
		end, true)[1]

		if var_113_1 then
			local var_113_2 = var_0_0.value(arg_113_1, "D13") / 100

			var_113_0 = var_113_0 - var_0_0.heal(arg_113_0, var_113_1, 0.2 * var_113_0 * var_113_2) / var_113_2
		end
	end

	local var_113_3 = arg_113_4.injured or 0

	if arg_113_4.multi and var_0_0.has(arg_113_1, "M15") then
		for iter_113_0, iter_113_1 in ipairs(arg_113_4.injured == nil and arg_113_0.allies or {}) do
			local var_113_4 = arg_113_4.contains and arg_113_4.contains(iter_113_1) or not arg_113_4.contains and iter_113_1 ~= arg_113_1 and var_0_9(arg_113_1, iter_113_1) and var_0_8(arg_113_4.origin or arg_113_1, iter_113_1) <= (arg_113_4.radius or arg_113_1.skill.range or 120)

			if var_0_3(iter_113_1) and not iter_113_1.isDecoyDummy and not iter_113_1.isGuardianGolem and var_113_4 and (iter_113_1.hp or 0) < (iter_113_1.maxhp or 0) then
				var_113_3 = var_113_3 + 1
			end
		end
	end

	local var_113_5 = require("src.game.combat").guardian_golem.heal(arg_113_0, arg_113_2, var_113_0)

	if var_113_3 == 1 then
		var_0_0.heal(arg_113_0, arg_113_2, var_113_0 * var_0_0.value(arg_113_1, "M15") / 100)
	end

	local var_113_6 = math.max(0, var_113_0 - var_113_5 - (arg_113_4.overflowUsed or 0))

	if var_113_6 > 0 and var_0_0.has(arg_113_1, "M14") then
		arg_113_4.awakeningOverflow = arg_113_4.awakeningOverflow or {}

		local var_113_7 = arg_113_4.heal_event_id and arg_113_4.awakeningOverflow[arg_113_4.heal_event_id]
		local var_113_8 = var_0_22(arg_113_0, var_0_0.isV7(arg_113_1, arg_113_0) and arg_113_1 or arg_113_2, var_0_0.isV7(arg_113_1, arg_113_0) and 45 or 60, function(arg_115_0)
			return arg_115_0 ~= arg_113_1 and arg_115_0 ~= arg_113_2 and arg_115_0.hp < arg_115_0.maxhp
		end, true)[1]

		if var_113_8 and not var_113_7 then
			var_0_0.heal(arg_113_0, var_113_8, var_113_6 * var_0_0.value(arg_113_1, "M14") / 100)

			if arg_113_4.heal_event_id then
				arg_113_4.awakeningOverflow[arg_113_4.heal_event_id] = true
			end
		end
	end

	return var_113_5
end

function var_0_0.healTransfer(arg_116_0, arg_116_1, arg_116_2, arg_116_3, arg_116_4)
	local var_116_0 = var_0_6(arg_116_1).cast

	if not var_116_0 or not var_0_0.has(arg_116_1, "M13") or var_116_0.transfer and var_116_0.transfer.ring ~= arg_116_2 then
		return 0
	end

	if not var_116_0.transfer and var_0_3(arg_116_3) and not arg_116_3._venomMawSwallowed and var_0_9(arg_116_1, arg_116_3) and var_0_8(arg_116_2, arg_116_3) <= 32 then
		return 0
	end

	if not var_116_0.transfer then
		local var_116_1 = var_0_22(arg_116_0, arg_116_2, 60, function(arg_117_0)
			return arg_117_0 ~= arg_116_1 and arg_117_0 ~= arg_116_3 and arg_117_0.hp < arg_117_0.maxhp
		end, true)[1]

		if not var_116_1 then
			return 0
		end

		var_116_0.transfer = {
			ring = arg_116_2,
			target = var_116_1
		}
		arg_116_2.awakeningTransferred = true
	end

	return var_0_0.heal(arg_116_0, var_116_0.transfer.target, arg_116_4 * var_0_0.value(arg_116_1, "M13") / 100)
end

function var_0_0.skillAim(arg_118_0, arg_118_1, arg_118_2, arg_118_3, arg_118_4, arg_118_5, arg_118_6, arg_118_7, arg_118_8)
	if not arg_118_2 or not var_0_0.has(arg_118_1, "M08") then
		return arg_118_2
	end

	local var_118_0 = arg_118_2
	local var_118_1 = -1
	local var_118_2 = math.huge

	for iter_118_0, iter_118_1 in ipairs(arg_118_0.enemies or {}) do
		if var_0_3(iter_118_1) and var_0_9(arg_118_1, iter_118_1) and (not arg_118_6 or arg_118_6(iter_118_1, arg_118_1, arg_118_0)) and (arg_118_7 and arg_118_7(arg_118_1, iter_118_1) or var_0_8(arg_118_1, iter_118_1)^2) <= arg_118_3^2 then
			local var_118_3 = 0

			for iter_118_2, iter_118_3 in ipairs(arg_118_0.enemies or {}) do
				if var_0_3(iter_118_3) and var_0_9(arg_118_1, iter_118_3) and (not arg_118_6 or arg_118_6(iter_118_3, arg_118_1, arg_118_0)) then
					local var_118_4 = arg_118_4 >= var_0_8(iter_118_1, iter_118_3)

					if type(arg_118_8) == "function" then
						var_118_4 = arg_118_8(iter_118_1, iter_118_3)
					elseif arg_118_8 == "cone" then
						local var_118_5 = (iter_118_1.x or 0) - (arg_118_1.x or 0)
						local var_118_6 = (iter_118_1.y or 0) - (arg_118_1.y or 0)
						local var_118_7 = (iter_118_3.x or 0) - (arg_118_1.x or 0)
						local var_118_8 = (iter_118_3.y or 0) - (arg_118_1.y or 0)

						var_118_4 = arg_118_4 >= var_0_8(arg_118_1, iter_118_3) and (var_118_5 * var_118_7 + var_118_6 * var_118_8) / math.max(0.001, var_0_8(arg_118_1, iter_118_1) * var_0_8(arg_118_1, iter_118_3)) >= math.cos(math.pi * 0.3)
					end

					if var_118_4 then
						var_118_3 = math.min(arg_118_5, var_118_3 + 1)
					end
				end
			end

			local var_118_9 = var_0_8(arg_118_1, iter_118_1)

			if var_118_1 < var_118_3 or var_118_3 == var_118_1 and var_118_9 < var_118_2 then
				var_118_0, var_118_1, var_118_2 = iter_118_1, var_118_3, var_118_9
			end
		end
	end

	var_0_6(arg_118_1).nextAim = var_118_0

	return var_118_0
end

function var_0_0.persistTarget(arg_119_0, arg_119_1, arg_119_2)
	if not arg_119_2 or not var_0_0.has(arg_119_1, "M09") then
		return
	end

	if var_0_3(arg_119_2.target) then
		arg_119_2._awakeningPoint = {
			x = arg_119_2.target.x,
			y = arg_119_2.target.y,
			lane = arg_119_2.target.lane
		}
	elseif arg_119_2._awakeningPoint then
		arg_119_2.target = arg_119_2._awakeningPoint
		arg_119_2.target.alive = true
		arg_119_2.target.hp = 1
		arg_119_2.target.maxhp = 1
		arg_119_2.target.awakeningPoint = true

		local var_119_0 = var_0_6(arg_119_1).cast

		if var_119_0 then
			var_119_0.persistent = true
		end
	end
end

function var_0_0.burnStart(arg_120_0, arg_120_1, arg_120_2, arg_120_3)
	if not arg_120_0 or not arg_120_0._awakening or not var_0_0.has(arg_120_1, "W16") or not var_0_27(arg_120_0, arg_120_2, "W16", 4) then
		return
	end

	var_0_27(arg_120_0, arg_120_2, "W16", 4, true)

	arg_120_3._awakeningSkipFirst = true

	var_0_0.extra(arg_120_0, arg_120_1, arg_120_2, (arg_120_3.damage or 0) * (1 + var_0_0.value(arg_120_1, "W16") / 100))
end

function var_0_0.bleedBurst(arg_121_0, arg_121_1, arg_121_2)
	local var_121_0 = var_0_6(arg_121_1).cast
	local var_121_1 = arg_121_2 and arg_121_2._bleed

	if not var_121_0 or var_121_0.bleedBurst or not var_121_1 or var_121_1.source ~= arg_121_1 or not var_0_0.has(arg_121_1, "S14") then
		return
	end

	var_121_0.bleedBurst = true

	local var_121_2 = var_121_1.tickInterval or 0.5
	local var_121_3 = math.max(0, math.floor(((var_121_1.dur or 0) - (var_121_1.t or 0) - (var_121_1.nextTick or var_121_2)) / var_121_2 + 1 + 1e-06))

	arg_121_2._bleed = nil

	var_0_0.extra(arg_121_0, arg_121_1, arg_121_2, (var_121_1.dmg or 0) * var_121_3 * var_0_0.value(arg_121_1, "S14") / 100)
end

function var_0_0.nativeCost(arg_122_0, arg_122_1)
	return arg_122_1 * (1 - var_0_0.value(arg_122_0, "H11") / 100)
end

function var_0_0.victoryHit(arg_123_0, arg_123_1, arg_123_2, arg_123_3, arg_123_4)
	if not var_0_0.has(arg_123_1, "H14") or var_0_15(arg_123_2) or not arg_123_3 or not arg_123_3.basicAttack or arg_123_3.awakeningDamage or arg_123_3.indirect then
		return 0
	end

	local var_123_0 = var_0_6(arg_123_1)
	local var_123_1 = arg_123_3.awakeningAction or var_123_0.action

	if not var_123_1 or var_123_1.victoryCounted or var_123_1.target ~= arg_123_2 then
		return 0
	end

	var_123_1.victoryCounted = true
	var_123_0.wingHits = (var_123_0.wingHits or 0) + 1

	if arg_123_4 then
		var_123_0.wingHits = 0

		return 0
	end

	if var_123_0.wingHits >= var_0_0.value(arg_123_1, "H14") then
		var_123_0.wingHits = 0

		return 1
	end

	return 0
end

function var_0_0.charm(arg_124_0, arg_124_1, arg_124_2, arg_124_3)
	if not arg_124_0 or not arg_124_0._awakening then
		return
	end

	local var_124_0 = var_0_6(arg_124_2)

	if arg_124_3 then
		var_124_0.charmOwner = arg_124_1
		var_124_0.charmHit = false
		arg_124_2._awakeningBattle = arg_124_0

		if var_0_6(arg_124_1).cast then
			var_0_6(arg_124_1).cast.success = true
		end
	else
		if var_0_3(arg_124_2) and var_124_0.charmOwner and var_0_0.has(var_124_0.charmOwner, "J10") then
			var_0_21(arg_124_0, arg_124_2, "J10", var_0_0.value(var_124_0.charmOwner, "J10"), 2)
		end

		var_124_0.charmOwner = nil
	end
end

function var_0_0.failedSkill(arg_125_0, arg_125_1, arg_125_2)
	if not arg_125_2 or not arg_125_2.targets or #arg_125_2.targets == 0 or var_0_16(arg_125_1) or (arg_125_2.pending or 0) > 0 then
		return
	end

	for iter_125_0, iter_125_1 in ipairs(arg_125_2.targets) do
		if var_0_3(iter_125_1) then
			return
		end
	end

	if not arg_125_2.refunded and not arg_125_2.success and var_0_18(arg_125_0, arg_125_1, "J08") and var_0_0.cooldownCredit(arg_125_0, arg_125_1, (arg_125_1.skill.cd or 0) * var_0_0.value(arg_125_1, "J08") / 100) > 0 then
		var_0_19(arg_125_0, arg_125_1, "J08", 8)

		arg_125_2.refunded = true
	end
end

function var_0_0.nativeTargets(arg_126_0, arg_126_1)
	local var_126_0 = arg_126_0._awakening and arg_126_0._awakening.cast

	if not var_126_0 or var_126_0.targets then
		return
	end

	var_126_0.targets = {}

	for iter_126_0, iter_126_1 in ipairs(arg_126_1 or {}) do
		var_126_0.targets[#var_126_0.targets + 1] = iter_126_1
	end
end

function var_0_0.charmFallback(arg_127_0, arg_127_1, arg_127_2, arg_127_3)
	if not var_0_0.has(arg_127_1, "J11") then
		return false
	end

	local var_127_0 = var_0_26(arg_127_0, arg_127_1, math.huge)[1]

	if not var_127_0 or arg_127_2 and not arg_127_2(var_127_0, arg_127_1, arg_127_0) then
		return false
	end

	var_0_0.card(arg_127_0, arg_127_1, var_127_0, 0).awakeningWeakness = var_0_0.value(arg_127_1, "J11")
	arg_127_1.skill.cdT = 0
	arg_127_1.skill.ready = false

	return true
end

function var_0_0.courier(arg_128_0, arg_128_1)
	local var_128_0 = arg_128_1.owner

	if not var_128_0 or not arg_128_1.ferretCourier then
		return
	end

	arg_128_1.ferretMoveSpeed = (arg_128_1.ferretMoveSpeed or 84) * (1 + var_0_0.value(var_128_0, "J13") / 100)

	if var_0_0.has(var_128_0, "J14") and not var_0_6(var_128_0).deliveryUsed then
		var_0_6(var_128_0).deliveryUsed = true

		local var_128_1 = {}

		for iter_128_0, iter_128_1 in ipairs(arg_128_1.ferretCourierTargets or {}) do
			var_128_1[iter_128_1] = true
		end

		for iter_128_2, iter_128_3 in ipairs(var_0_22(arg_128_0, var_128_0, math.huge, function(arg_129_0)
			return var_0_5(arg_129_0) ~= "J" and not var_128_1[arg_129_0] and arg_129_0.skill and (arg_129_0.skill.cd or 0) > 0 and arg_129_0.skill.kind ~= "VictorySignal" and require("src.game.unit_abilities").ferret_courier.isValidTarget(var_128_0, arg_129_0)
		end)) do
			arg_128_1._awakeningOriginalDeliveries = arg_128_1.ferretMaxDeliveries or 2
			arg_128_1.ferretCourierTargets[#arg_128_1.ferretCourierTargets + 1] = iter_128_3
			arg_128_1.ferretMaxDeliveries = arg_128_1._awakeningOriginalDeliveries + 1
			arg_128_1._awakeningDelivery = iter_128_3

			break
		end
	end
end

function var_0_0.deliver(arg_130_0, arg_130_1, arg_130_2, arg_130_3)
	local var_130_0
	local var_130_1

	if arg_130_1._awakeningDelivery == arg_130_2 then
		var_130_1 = var_0_0.cooldownCredit(arg_130_0, arg_130_2, var_0_0.value(arg_130_1.owner, "J14"))
		var_130_0 = var_130_1 > 0
	else
		var_130_0, var_130_1 = arg_130_3(arg_130_2, arg_130_1.ferretCooldownReduction or 2)
	end

	if var_130_0 and arg_130_1.awakeningCast then
		arg_130_1.awakeningCast.success = true
	end

	return var_130_0, var_130_1
end

function var_0_0.sandboxSpawn(arg_131_0, arg_131_1)
	if not arg_131_0.sandboxMode or arg_131_0.mode == "battle" then
		return false
	end

	local var_131_0 = var_0_0.data.units[arg_131_1]

	if not var_131_0 then
		return false
	end

	local var_131_1 = arg_131_1:sub(1, 1) == "J" and "special" or ({
		A01 = "normal",
		W03 = "advanced",
		M04 = "advanced",
		M03 = "advanced",
		S01 = "normal",
		W08 = "legendary",
		W01 = "normal",
		W06 = "rare",
		W05 = "rare",
		W04 = "advanced",
		W02 = "normal",
		H03 = "advanced",
		H02 = "normal",
		W91 = "prism",
		W90 = "prism",
		W07 = "legendary",
		H01 = "normal",
		S04 = "advanced",
		S03 = "advanced",
		S02 = "normal",
		M01 = "normal",
		M02 = "normal",
		H04 = "advanced",
		D04 = "advanced",
		A04 = "advanced",
		A03 = "advanced",
		A02 = "normal",
		D03 = "advanced",
		D02 = "normal",
		D01 = "normal"
	})[arg_131_1] or "rare"
	local var_131_2 = ({
		W03 = "엘프기사",
		J02 = "Ringmaster",
		J01 = "Illusionist",
		S01 = "MiniSpearMan03",
		A01 = "MiniArcherMan03"
	})[arg_131_1] or var_131_0.name

	arg_131_0:spawn(var_131_0.sym == "J" and "Joker" or var_131_0.sym, 1, {
		needsClassSelect = false,
		rankOverride = 3,
		grade = var_131_1,
		sandboxJokerRankOverride = var_131_0.sym == "J",
		subclass = var_131_2,
		subclassName = var_131_0.name,
		subclassKey = var_131_2
	})

	local var_131_3 = arg_131_0.rosterSpawnMeta and arg_131_0.rosterSpawnMeta[#arg_131_0.rosterSpawnMeta]

	if var_131_3 then
		var_131_3.awakeningSandboxLevel = arg_131_0._awakeningSandboxLevel or 30
	end

	return true
end

function var_0_0.sandboxLevel(arg_132_0, arg_132_1)
	if not arg_132_0.sandboxMode or arg_132_0.mode == "battle" then
		return
	end

	arg_132_0._awakeningSandboxLevel = arg_132_1

	for iter_132_0, iter_132_1 in ipairs(arg_132_0.rosterUnits or {}) do
		if var_0_0.identity(iter_132_1) and (iter_132_1.rank or 1) >= 3 then
			__slotSetAwakeningLevel(iter_132_1, arg_132_1)
		end
	end
end

function var_0_0.scanActions(arg_133_0)
	if not arg_133_0._awakening then
		return
	end

	for iter_133_0, iter_133_1 in ipairs({
		arg_133_0.allies or {},
		arg_133_0.enemies or {}
	}) do
		for iter_133_2, iter_133_3 in ipairs(iter_133_1) do
			if var_0_3(iter_133_3) then
				for iter_133_4, iter_133_5 in pairs(iter_133_3) do
					if type(iter_133_4) == "string" and iter_133_4:sub(1, 8) == "_pending" and iter_133_4:sub(-3) == "Hit" and type(iter_133_5) == "table" and iter_133_5.target and not iter_133_5.awakeningScanned then
						iter_133_5.awakeningScanned = true

						if not iter_133_5.skillDamage and not iter_133_5.skillBig and (iter_133_5.basicAttack or iter_133_3.side == "enemy") then
							if not var_0_6(iter_133_3).action or var_0_6(iter_133_3).action.released then
								var_0_0.basicStart(arg_133_0, iter_133_3, iter_133_5.target)
							end

							iter_133_5.awakeningAction = var_0_6(iter_133_3).action
						end
					end
				end
			end
		end
	end
end

function var_0_0.observeTarget(arg_134_0, arg_134_1, arg_134_2)
	if arg_134_0._awakening and arg_134_1 then
		var_0_6(arg_134_1).target = arg_134_2
	end
end

function var_0_0.enemySkillBegin(arg_135_0, arg_135_1)
	if not arg_135_0._awakening or not arg_135_1 then
		return
	end

	local var_135_0 = var_0_6(arg_135_1)

	if var_135_0.cast and var_135_0.cast.enemyActiveSeen and not var_135_0.cast.finished and var_0_16(arg_135_1) then
		return
	end

	var_135_0.cast = {
		at = var_0_7(arg_135_0),
		hits = {},
		target = var_0_11(arg_135_1),
		enemyActiveSeen = var_0_16(arg_135_1)
	}

	local var_135_1 = var_0_20(arg_135_0, arg_135_1, "M12")

	if var_135_1 then
		var_135_0.cast.M12 = var_135_1.p
		var_135_0.tokens.M12 = nil
	end
end

function var_0_0.filterKnockback(arg_136_0, arg_136_1)
	if not arg_136_0._awakening then
		return false
	end

	local var_136_0 = var_0_6(arg_136_1)
	local var_136_1 = arg_136_1._kb

	if not var_136_1 or var_136_0.knock == var_136_1 or var_136_1.waveHop or var_136_1.awakening then
		return false
	end

	var_136_0.knock = var_136_1

	if var_0_0.blockKnockback(arg_136_0, arg_136_1, var_136_0.lastHurtSource) then
		arg_136_1._kb = nil

		return true
	end

	var_136_0.knockOrigin = {
		x = arg_136_1.x,
		y = arg_136_1.y,
		source = var_136_1.source or var_136_0.lastHurtSource
	}

	return false
end

function var_0_0.skillMetric(arg_137_0, arg_137_1, arg_137_2, arg_137_3)
	if not var_0_0.has(arg_137_0, "D14") or not arg_137_3 and not var_0_16(arg_137_0) or not arg_137_1 then
		return arg_137_2
	end

	local var_137_0 = (arg_137_1.x or 0) - (arg_137_0.x or 0)

	if var_137_0 * (arg_137_0._attackFacing or arg_137_0.facing or 1) <= 0 then
		return arg_137_2
	end

	local var_137_1 = var_0_0.value(arg_137_0, "D14")
	local var_137_2 = math.max(0, math.abs(var_137_0) - var_137_1)

	return math.max(0, arg_137_2 - var_137_0 * var_137_0 + var_137_2 * var_137_2)
end

function var_0_0.ownShield(arg_138_0)
	for iter_138_0, iter_138_1 in ipairs(arg_138_0._guardianOathShields or {}) do
		if iter_138_1.owner == arg_138_0 and (iter_138_1.t or 0) > 0 and (iter_138_1.hp or 0) > 0 then
			return true
		end
	end

	return false
end

function var_0_0.trackSkill(arg_139_0, arg_139_1, arg_139_2)
	if not arg_139_0 or not arg_139_0._awakening or not arg_139_2 then
		return
	end

	local var_139_0 = var_0_6(arg_139_1).cast

	if var_139_0 and (arg_139_2.target or arg_139_2.target1) and not arg_139_2.awakeningCast then
		arg_139_2.awakeningCast = var_139_0
		var_139_0.target = arg_139_2.target or arg_139_2.target1
	end

	var_0_0.persistTarget(arg_139_0, arg_139_1, arg_139_2)
end

function var_0_0.healRingEvent(arg_140_0, arg_140_1, arg_140_2)
	local var_140_0 = {
		injured = 0,
		multi = true,
		contains = function(arg_141_0)
			if arg_141_0 == arg_140_1 then
				return false
			end

			for iter_141_0, iter_141_1 in ipairs(arg_140_2 or {}) do
				if not iter_141_1.awakeningTransferred and var_0_9(arg_140_1, arg_141_0) and var_0_8(iter_141_1, arg_141_0) <= 32 then
					return true
				end
			end

			return false
		end
	}

	for iter_140_0, iter_140_1 in ipairs(arg_140_0.allies or {}) do
		if var_0_3(iter_140_1) and not iter_140_1.isDecoyDummy and not iter_140_1.isGuardianGolem and iter_140_1.hp < iter_140_1.maxhp and var_140_0.contains(iter_140_1) then
			var_140_0.injured = var_140_0.injured + 1
		end
	end

	arg_140_2.awakeningHealEvent = var_140_0
end

function var_0_0.healRings(arg_142_0, arg_142_1, arg_142_2, arg_142_3, arg_142_4)
	if not arg_142_4.awakeningHealEvent then
		var_0_0.healRingEvent(arg_142_0, arg_142_1, arg_142_4)
	end

	return var_0_0.nativeHeal(arg_142_0, arg_142_1, arg_142_2, arg_142_3, arg_142_4.awakeningHealEvent)
end

function var_0_0.extendedGroundContact(arg_143_0, arg_143_1, arg_143_2)
	if arg_143_2(arg_143_0, arg_143_1) then
		return true
	end

	local var_143_0 = arg_143_0.awakeningForward or 0

	if var_143_0 <= 0 or not arg_143_0._damageSource or not var_0_23(arg_143_0._damageSource, arg_143_1) then
		return false
	end

	local var_143_1 = {}

	for iter_143_0, iter_143_1 in pairs(arg_143_0) do
		var_143_1[iter_143_0] = iter_143_1
	end

	for iter_143_2 = 1, math.ceil(var_143_0) do
		var_143_1.x = arg_143_0.x + math.min(iter_143_2, var_143_0) * (arg_143_0.facing or 1)

		if arg_143_2(var_143_1, arg_143_1) then
			return true
		end
	end

	return false
end

function var_0_0.basicContact(arg_144_0, arg_144_1, arg_144_2, arg_144_3)
	if not var_0_3(arg_144_2) or not var_0_9(arg_144_1, arg_144_2) then
		return false
	end

	if arg_144_0._awakeningValid and not arg_144_0._awakeningValid(arg_144_2, arg_144_1, arg_144_0) then
		return false
	end

	if arg_144_0._awakeningMeleeContact and var_0_14(arg_144_1) then
		return arg_144_0._awakeningMeleeContact(arg_144_1, arg_144_2, var_0_0.rangeBonus(arg_144_0, arg_144_1, arg_144_2, true))
	end

	local var_144_0 = var_0_0.basicRange(arg_144_0, arg_144_1, arg_144_2, arg_144_3 or (arg_144_1.distance or 50) + 1, true)

	return (arg_144_0._awakeningMetric and arg_144_0._awakeningMetric(arg_144_1, arg_144_2) or var_0_8(arg_144_1, arg_144_2)^2) <= var_144_0 * var_144_0
end

function var_0_0.rangeBonus(arg_145_0, arg_145_1, arg_145_2, arg_145_3)
	if var_0_0.isModern(arg_145_1, arg_145_0) and var_0_0.has(arg_145_1, "W15") and arg_145_0._awakeningMeleeContact then
		return 0
	end

	return math.max(0, var_0_0.basicRange(arg_145_0, arg_145_1, arg_145_2, arg_145_1.distance or 50, arg_145_3) - (arg_145_1.distance or 50))
end

function var_0_0.bindingAim(arg_146_0, arg_146_1, arg_146_2, arg_146_3, arg_146_4)
	local var_146_0 = math.min(24, math.max(18, math.floor((arg_146_4 or 32) * 0.46 + 0.5)))
	local var_146_1 = math.max(6, math.floor(var_146_0 * 0.34 + 0.5))

	return var_0_0.skillAim(arg_146_0, arg_146_1, arg_146_2, arg_146_1.skill.range or arg_146_1.distance or 120, var_146_0, arg_146_1.skill.maxTargets or 3, arg_146_0._awakeningValid, arg_146_3, function(arg_147_0, arg_147_1)
		local var_147_0 = arg_147_0.x
		local var_147_1 = arg_147_0.y
		local var_147_2 = arg_147_1.x
		local var_147_3 = arg_147_1.y

		if arg_146_0.entityGroundPoint then
			var_147_0, var_147_1 = arg_146_0:entityGroundPoint(arg_147_0, arg_146_4)
			var_147_2, var_147_3 = arg_146_0:entityGroundPoint(arg_147_1, arg_146_4)
		end

		return ((var_147_0 - var_147_2) / var_146_0)^2 + ((var_147_1 - var_147_3) / var_146_1)^2 <= 1
	end)
end

function var_0_0.waveAim(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4)
	local var_148_0 = (arg_148_1.distance or 140) + 1
	local var_148_1 = arg_148_0.ui and arg_148_0.ui.battle and arg_148_0.ui.battle.allySize32 or 32
	local var_148_2 = arg_148_0.assets and arg_148_0.assets.projectiles and arg_148_0.assets.projectiles.TripleTide
	local var_148_3 = 0

	for iter_148_0, iter_148_1 in pairs(var_148_2 and var_148_2.bounds or {}) do
		var_148_3 = math.max(var_148_3, (iter_148_1.h or 0) * var_148_1 / 32)
	end

	local var_148_4 = math.max(1, var_148_3 * 0.5) + 5.5 * var_148_1 / 32

	return var_0_0.skillAim(arg_148_0, arg_148_1, arg_148_2, var_148_0, var_148_0 + 32, 3, arg_148_3, arg_148_4, function(arg_149_0, arg_149_1)
		local var_149_0 = arg_149_0.x - arg_148_1.x
		local var_149_1 = arg_149_0.y - arg_148_1.y
		local var_149_2 = math.max(0.001, math.sqrt(var_149_0 * var_149_0 + var_149_1 * var_149_1))
		local var_149_3 = arg_149_1.x - arg_148_1.x
		local var_149_4 = arg_149_1.y - arg_148_1.y
		local var_149_5 = (var_149_3 * var_149_0 + var_149_4 * var_149_1) / var_149_2

		return var_149_5 >= 0 and var_149_5 <= var_148_0 + 32 and math.abs(var_149_3 * var_149_1 - var_149_4 * var_149_0) / var_149_2 <= var_148_4
	end)
end

local var_0_29 = {}

for iter_0_2, iter_0_3 in pairs(var_0_0) do
	if type(iter_0_3) == "function" then
		var_0_29[iter_0_2] = iter_0_3
	end
end

var_0_0.valuesV7 = {}

for iter_0_4 in pairs(var_0_0.data.catalogs[7].candidates) do
	var_0_0.valuesV7[iter_0_4] = var_0_0.values[iter_0_4]
end

for iter_0_5, iter_0_6 in pairs({
	W02 = {
		10,
		15,
		20,
		23,
		25
	},
	W03 = {
		4,
		6,
		8,
		9,
		10
	},
	W04 = {
		6,
		9,
		12,
		14,
		16
	},
	W06 = {
		8,
		12,
		16,
		18,
		20
	},
	W09 = {
		20,
		30,
		40,
		45,
		50
	},
	W12 = {
		8,
		12,
		16,
		18,
		20
	},
	W14 = {
		0.3,
		0.4,
		0.5,
		0.55,
		0.6
	},
	W15 = {
		10,
		15,
		20,
		23,
		25
	},
	W17 = {
		20,
		30,
		40,
		45,
		50
	},
	W18 = {
		12,
		18,
		24,
		27,
		30
	},
	A01 = {
		6,
		9,
		12,
		14,
		16
	},
	A04 = {
		6,
		9,
		12,
		14,
		16
	},
	A05 = {
		5,
		8,
		10,
		12,
		14
	},
	A09 = {
		12,
		18,
		24,
		27,
		30
	},
	A13 = {
		20,
		30,
		40,
		45,
		50
	},
	A14 = {
		6,
		9,
		12,
		14,
		16
	},
	S01 = {
		6,
		9,
		12,
		14,
		16
	},
	S03 = {
		6,
		9,
		12,
		14,
		16
	},
	S05 = {
		15,
		20,
		25,
		28,
		30
	},
	S06 = {
		10,
		15,
		20,
		23,
		25
	},
	S07 = {
		8,
		12,
		16,
		18,
		20
	},
	S11 = {
		15,
		25,
		35,
		40,
		45
	},
	S12 = {
		20,
		30,
		40,
		45,
		50
	},
	S14 = {
		50,
		65,
		80,
		90,
		100
	},
	M03 = {
		6,
		9,
		12,
		14,
		16
	},
	M05 = {
		4,
		6,
		8,
		9,
		10
	},
	M06 = {
		3,
		5,
		7,
		8,
		9
	},
	M08 = {
		3,
		4,
		5,
		6,
		7
	},
	M10 = {
		8,
		12,
		16,
		18,
		20
	},
	M11 = {
		15,
		20,
		25,
		30,
		35
	},
	M22 = {
		6,
		9,
		12,
		14,
		16
	},
	M23 = {
		6,
		9,
		12,
		14,
		16
	},
	H04 = {
		8,
		12,
		16,
		18,
		20
	},
	H07 = {
		6,
		9,
		12,
		14,
		16
	},
	H08 = {
		8,
		12,
		16,
		18,
		20
	},
	H12 = {
		0.4,
		0.6,
		0.8,
		1,
		1.2
	},
	H13 = {
		16,
		14,
		12,
		10,
		9
	},
	H15 = {
		4,
		6,
		8,
		9,
		10
	},
	D01 = {
		2,
		3,
		4,
		5,
		6
	},
	D02 = {
		12,
		18,
		24,
		27,
		30
	},
	D03 = {
		6,
		9,
		12,
		14,
		16
	},
	D04 = {
		6,
		9,
		12,
		14,
		16
	},
	D05 = {
		5,
		8,
		10,
		12,
		14
	},
	D10 = {
		5,
		7,
		10,
		12,
		14
	},
	D11 = {
		4,
		6,
		8,
		9,
		10
	},
	D12 = {
		18,
		16,
		14,
		13,
		12
	},
	D14 = {
		4,
		6,
		8,
		10,
		12
	},
	D15 = {
		8,
		12,
		16,
		18,
		20
	},
	J08 = {
		16,
		14,
		12,
		11,
		10
	},
	J09 = {
		12,
		18,
		24,
		27,
		30
	},
	J11 = {
		6,
		9,
		12,
		14,
		16
	},
	J12 = {
		0.2,
		0.3,
		0.4,
		0.45,
		0.5
	}
}) do
	var_0_0.valuesV7[iter_0_5] = iter_0_6
end

local function var_0_30(arg_150_0)
	return arg_150_0 and not arg_150_0.awakeningDamage and not arg_150_0.indirect and not arg_150_0.itemDamage and not arg_150_0.imprintDamage and not arg_150_0.crossfireAttack and not arg_150_0.dot and not arg_150_0.burn and not arg_150_0.bleed and not arg_150_0.poison and not arg_150_0.selfDamage and not arg_150_0.execution and not arg_150_0.fixedDamage
end

local function var_0_31(arg_151_0)
	return arg_151_0 and (arg_151_0.battleSkillDamage or arg_151_0.skillDamage or arg_151_0.skillAttack or arg_151_0.skillBig)
end

local function var_0_32(arg_152_0)
	if not arg_152_0 then
		return false
	end

	local var_152_0 = var_0_6(arg_152_0)

	if var_152_0.originalMelee == nil then
		var_152_0.originalMelee = arg_152_0.isRanged ~= true and arg_152_0.role ~= "archer" and not ((arg_152_0.distance or 0) >= 100)
	end

	return var_152_0.originalMelee
end

local function var_0_33(arg_153_0)
	return var_0_13(arg_153_0) and not arg_153_0.invuln and (arg_153_0._invulnT or 0) <= 0 and not arg_153_0._amplifyShieldProtected
end

local function var_0_34(arg_154_0, arg_154_1, arg_154_2, arg_154_3, arg_154_4, arg_154_5)
	if var_0_18(arg_154_0, arg_154_1, arg_154_2) and not var_0_20(arg_154_0, arg_154_1, arg_154_2) then
		var_0_21(arg_154_0, arg_154_1, arg_154_2, var_0_0.value(arg_154_1, arg_154_2), arg_154_3, arg_154_5)
		var_0_19(arg_154_0, arg_154_1, arg_154_2, arg_154_4)
	end
end

function var_0_0.groundPoint(arg_155_0, arg_155_1)
	arg_155_1 = arg_155_1 or arg_155_0._awakeningBattle

	if var_0_0.isModern(arg_155_0, arg_155_1) and arg_155_1 and arg_155_1.entityGroundPoint and arg_155_0.side and (arg_155_0.hp ~= nil or arg_155_0.rosterIndex) then
		return arg_155_1:entityGroundPoint(arg_155_0, arg_155_1.ui and arg_155_1.ui.battle and arg_155_1.ui.battle.allySize32 or 32)
	end

	return var_0_29.groundPoint(arg_155_0)
end

function var_0_0.basicStart(arg_156_0, arg_156_1, arg_156_2)
	if not var_0_0.isV7(arg_156_1, arg_156_0) then
		return var_0_29.basicStart(arg_156_0, arg_156_1, arg_156_2)
	end

	if not arg_156_0._awakening or not arg_156_1 or arg_156_1._crossfireAttackMotion then
		return
	end

	local var_156_0 = var_0_6(arg_156_1)

	var_156_0.serial = (var_156_0.serial or 0) + 1
	var_156_0.target = arg_156_2
	var_156_0.lastBasic = var_0_7(arg_156_0)
	var_156_0.firstBasic = true
	var_156_0.action = {
		bonus = 0,
		id = var_156_0.serial,
		target = arg_156_2,
		at = var_0_7(arg_156_0),
		hits = {}
	}

	local var_156_1 = var_156_0.action

	for iter_156_0, iter_156_1 in ipairs({
		"W02",
		"W18",
		"M10"
	}) do
		local var_156_2 = var_0_20(arg_156_0, arg_156_1, iter_156_1)

		if var_156_2 then
			var_156_1.bonus = var_156_1.bonus + var_156_2.p
			var_156_0.tokens[iter_156_1] = nil
		end
	end

	local var_156_3 = var_0_20(arg_156_0, arg_156_1, "D08")

	if var_156_3 and var_156_3.target == arg_156_2 then
		var_156_1.D08 = var_156_3.p
	end

	var_156_0.tokens.D08 = nil

	local var_156_4 = var_0_22(arg_156_0, arg_156_1, 45, var_0_32)[1]

	var_156_1.paired = var_156_4 and var_0_11(var_156_4) == arg_156_2

	if var_156_0.lastHitTarget and var_156_0.lastHitTarget ~= arg_156_2 then
		var_156_0.sameHits = 0
		var_156_0.lastHitTarget = nil
	end

	var_156_1.focus = var_156_0.lastHitTarget == arg_156_2 and math.min(3, var_156_0.sameHits or 0) or 0

	if var_156_0.charmOwner and not var_156_0.charmHit then
		var_156_1.charmBonus = var_0_0.value(var_156_0.charmOwner, "J09")
		var_156_0.charmHit = true
	end

	for iter_156_2, iter_156_3 in ipairs({
		"W11",
		"J02"
	}) do
		local var_156_5 = var_0_20(arg_156_0, arg_156_1, iter_156_3)

		if var_156_5 then
			var_156_1.weaken = math.max(var_156_1.weaken or 0, var_156_5.p)
			var_156_0.tokens[iter_156_3] = nil
		end
	end

	if var_156_0.confusedTarget == arg_156_2 then
		var_156_1.confused = true
		var_156_0.confusedTarget = nil
	end
end

function var_0_0.basicRelease(arg_157_0, arg_157_1)
	if not var_0_0.isV7(arg_157_1, arg_157_0) then
		return var_0_29.basicRelease(arg_157_0, arg_157_1)
	end

	if not arg_157_0._awakening or not arg_157_1 then
		return
	end

	local var_157_0 = var_0_6(arg_157_1).action

	if not var_157_0 or var_157_0.released then
		return
	end

	var_157_0.released = true
	var_157_0.alone = not var_0_22(arg_157_0, arg_157_1, 40)[1]

	var_0_0.intercept(arg_157_0, arg_157_1, true)
end

function var_0_0.basicBonus(arg_158_0, arg_158_1, arg_158_2, arg_158_3)
	if not var_0_0.isV7(arg_158_1, arg_158_0) then
		return var_0_29.basicBonus(arg_158_0, arg_158_1, arg_158_2, arg_158_3)
	end

	if not arg_158_1 or not arg_158_2 then
		return 0
	end

	arg_158_3 = arg_158_3 or {}

	local var_158_0 = (arg_158_3.bonus or 0) + (arg_158_3.charmBonus or 0)
	local var_158_1 = var_0_8(arg_158_1, arg_158_2)

	local function var_158_2(arg_159_0, arg_159_1)
		if arg_159_1 then
			var_158_0 = var_158_0 + var_0_0.value(arg_158_1, arg_159_0)
		end
	end

	local var_158_3 = var_0_26(arg_158_0, arg_158_1, 40)
	local var_158_4 = (arg_158_2.hp or 0) / math.max(1, arg_158_2.maxhp or 1)

	var_158_2("W04", #var_158_3 >= 2)
	var_158_2("W05", #var_158_3 == 1 and var_158_3[1] == arg_158_2 and arg_158_3.target == arg_158_2)
	var_158_2("W12", var_158_4 <= 0.3)
	var_158_2("A01", var_158_1 >= 100)
	var_158_2("A05", arg_158_3.alone)
	var_158_2("A09", var_0_16(arg_158_2))
	var_158_2("D02", var_0_16(arg_158_2))

	for iter_158_0, iter_158_1 in ipairs(var_0_22(arg_158_0, arg_158_1, math.huge)) do
		if var_0_11(iter_158_1) == arg_158_2 then
			var_158_2("A04", true)

			break
		end
	end

	var_158_2("S01", var_158_1 > 45)
	var_158_2("S03", var_0_24(arg_158_0, arg_158_1, 45))
	var_158_2("S07", var_158_4 >= 0.7)

	local var_158_5 = true

	for iter_158_2, iter_158_3 in ipairs(var_0_26(arg_158_0, arg_158_2, 40)) do
		if iter_158_3 ~= arg_158_2 then
			var_158_5 = false

			break
		end
	end

	var_158_2("D03", var_158_5)
	var_158_2("D05", var_0_11(arg_158_2) == arg_158_1)
	var_158_2("H04", not var_0_32(arg_158_2))
	var_158_2("H07", var_0_22(arg_158_0, arg_158_1, 40)[1])
	var_158_2("H08", var_0_6(arg_158_2).moving)

	if arg_158_3.target == arg_158_2 then
		var_158_0 = var_158_0 + (arg_158_3.focus or 0) * var_0_0.value(arg_158_1, "D01")

		if arg_158_3.D08 and not arg_158_3.d08Hit then
			var_158_0 = var_158_0 + arg_158_3.D08
		end
	end

	local var_158_6 = 0

	for iter_158_4, iter_158_5 in ipairs(arg_158_0.allies or {}) do
		if var_0_13(iter_158_5) and var_0_12(iter_158_5) and var_0_0.has(iter_158_5, "M06") and var_0_22(arg_158_0, iter_158_5, 45, function(arg_160_0)
			return var_0_5(iter_158_5) ~= var_0_5(arg_160_0) and var_0_32(arg_160_0)
		end)[1] == arg_158_1 then
			var_158_6 = math.max(var_158_6, var_0_0.value(iter_158_5, "M06"))
		end
	end

	local var_158_7 = var_0_20(arg_158_0, arg_158_1, "M22")

	if var_158_7 and var_158_7.target == arg_158_2 and var_0_3(var_0_6(arg_158_1).summonOwner) then
		var_158_0 = var_158_0 + var_158_7.p
	end

	return math.min(60, var_158_0 + var_158_6) / 100
end

function var_0_0.basicRange(arg_161_0, arg_161_1, arg_161_2, arg_161_3, arg_161_4)
	if not var_0_0.isV7(arg_161_1, arg_161_0) then
		return var_0_29.basicRange(arg_161_0, arg_161_1, arg_161_2, arg_161_3, arg_161_4)
	end

	if not arg_161_0._awakening or not arg_161_1 then
		return arg_161_3
	end

	local var_161_0 = var_0_6(arg_161_1)
	local var_161_1 = arg_161_3 * var_0_0.value(arg_161_1, "W15") / 100

	if (var_161_0.still or 0) >= 3 then
		var_161_1 = math.max(var_161_1, var_0_0.value(arg_161_1, "A08"))
	end

	if (var_0_0.value(arg_161_1, "J05") > 0 or var_0_0.value(arg_161_1, "S09") > 0) and var_0_24(arg_161_0, arg_161_1, 45) then
		var_161_1 = math.max(var_161_1, var_0_0.value(arg_161_1, "J05"), var_0_0.value(arg_161_1, "S09"))
	end

	local var_161_2 = var_0_20(arg_161_0, arg_161_1, "A07")

	if var_161_2 then
		arg_161_3 = math.min(arg_161_3, math.max(55, (var_161_0.originalRange or arg_161_3) - var_161_2.p))
	end

	return arg_161_3 + var_161_1
end

function var_0_0.beforeDamage(arg_162_0, arg_162_1, arg_162_2, arg_162_3, arg_162_4)
	if not var_0_0.isV7(arg_162_1, arg_162_0) then
		return var_0_29.beforeDamage(arg_162_0, arg_162_1, arg_162_2, arg_162_3, arg_162_4)
	end

	if not arg_162_0._awakening or not arg_162_1 or not var_0_30(arg_162_4) then
		return arg_162_3
	end

	if arg_162_4.basicAttack then
		var_0_0.basicRelease(arg_162_0, arg_162_1)

		local var_162_0 = arg_162_4.awakeningAction or var_0_6(arg_162_1).action

		if var_162_0 and var_162_0.confused then
			return arg_162_3
		end

		return arg_162_3 * (1 + var_0_0.basicBonus(arg_162_0, arg_162_1, arg_162_2, var_162_0))
	elseif var_0_31(arg_162_4) then
		local var_162_1 = var_0_0.value(arg_162_1, "M08")

		if var_0_0.has(arg_162_1, "A14") then
			var_162_1 = var_162_1 + var_0_0.value(arg_162_1, "A14")
		end

		if arg_162_4.cycloneFinal then
			var_162_1 = var_162_1 + var_0_0.value(arg_162_1, "S15")
		end

		return arg_162_3 * (1 + var_162_1 / 100)
	end

	return arg_162_3
end

function var_0_0.splitDamage(arg_163_0, arg_163_1, arg_163_2, arg_163_3, arg_163_4)
	if var_0_0.isV7(arg_163_1, arg_163_0) then
		return arg_163_3
	end

	return var_0_29.splitDamage(arg_163_0, arg_163_1, arg_163_2, arg_163_3, arg_163_4)
end

function var_0_0.damageReduction(arg_164_0, arg_164_1, arg_164_2, arg_164_3)
	if not var_0_0.isV7(arg_164_1, arg_164_0) then
		return var_0_29.damageReduction(arg_164_0, arg_164_1, arg_164_2, arg_164_3)
	end

	arg_164_3 = arg_164_3 or {}

	if arg_164_2 == arg_164_1 or arg_164_3.awakeningDamage or arg_164_3.selfDamage or arg_164_3.execution or arg_164_3.fixedDamage or arg_164_3.indirect then
		return 1
	end

	local var_164_0 = {}

	local function var_164_1(arg_165_0, arg_165_1)
		var_164_0[arg_165_0] = math.max(var_164_0[arg_165_0] or 0, arg_165_1 or var_0_0.value(arg_164_1, arg_165_0))
	end

	local var_164_2 = arg_164_3.dot or arg_164_3.burn or arg_164_3.poison or arg_164_3.bleed
	local var_164_3 = arg_164_3.area_damage or arg_164_3.aoe or arg_164_3.areaDamage or arg_164_3.explosion
	local var_164_4 = arg_164_3.basicAttack == true
	local var_164_5 = var_0_6(arg_164_1)

	if var_164_2 then
		if arg_164_3.burn or arg_164_3.poison or arg_164_3.bleed or arg_164_3.dotKind == "burn" or arg_164_3.dotKind == "poison" or arg_164_3.dotKind == "bleed" then
			var_164_1("J07")

			for iter_164_0, iter_164_1 in ipairs(arg_164_0.allies or {}) do
				if var_0_13(iter_164_1) and var_0_0.has(iter_164_1, "M16") and var_0_22(arg_164_0, iter_164_1, 40, function(arg_166_0)
					return arg_166_0.hp < arg_166_0.maxhp
				end, true)[1] == arg_164_1 then
					var_164_1("M16", var_0_0.value(iter_164_1, "M16"))
				end
			end
		end
	elseif arg_164_2 and (var_164_4 or var_0_31(arg_164_3)) then
		if var_164_4 then
			if not var_0_32(arg_164_2) and var_0_24(arg_164_0, arg_164_1, 45) then
				var_164_1("M02")
			end

			if var_0_32(arg_164_2) and var_0_25(arg_164_0, arg_164_1, 45) then
				var_164_1("D11")
			end

			local var_164_6 = var_0_20(arg_164_0, arg_164_1, "M19")

			if var_164_6 then
				var_164_1("M19", var_164_6.p)
			end

			for iter_164_2, iter_164_3 in ipairs(arg_164_0.allies or {}) do
				if var_0_3(iter_164_3) and var_0_6(iter_164_3).summonOwner == arg_164_1 and var_0_9(arg_164_1, iter_164_3) and var_0_8(iter_164_3, arg_164_1) <= 45 then
					var_164_1("M24")

					break
				end
			end

			local var_164_7 = arg_164_3.awakeningAction or var_0_6(arg_164_2).action

			if var_164_7 then
				var_164_1("nextBasic", var_164_7.weaken or 0)
			end

			local var_164_8 = arg_164_3.projectile

			if var_164_8 and not var_164_3 and not var_164_8.bossSpecial and not var_164_8.battleSkillDamage and not var_164_8.anchoredLaser and var_164_8.kind ~= "laser" then
				var_164_1("M05")
			end
		else
			local var_164_9 = arg_164_3.awakeningCast or var_0_6(arg_164_2).cast

			if var_164_9 then
				var_164_1("M12", var_164_9.M12 or 0)
			end
		end

		local var_164_10 = var_0_20(arg_164_0, arg_164_2, "J11")

		if var_164_10 and not arg_164_3.percentHPDamage then
			var_164_1("J11", var_164_10.p)
		end

		if var_0_25(arg_164_0, arg_164_1, 45) then
			var_164_1("H03")
		end

		if var_164_3 then
			if not var_0_22(arg_164_0, arg_164_1, 40)[1] then
				var_164_1("A12")
			end

			if #var_0_26(arg_164_0, arg_164_1, 40) == 1 then
				var_164_1("D10")
			end
		end

		for iter_164_4, iter_164_5 in ipairs({
			"W13",
			"D06"
		}) do
			local var_164_11 = var_0_20(arg_164_0, arg_164_1, iter_164_5)

			if var_164_11 then
				var_164_1(iter_164_5, var_164_11.p)
			end
		end

		if var_0_3(var_164_5.summonOwner) and #var_0_26(arg_164_0, arg_164_1, 40) >= 2 then
			var_164_1("M23", var_0_0.value(var_164_5.summonOwner, "M23"))
		end

		for iter_164_6, iter_164_7 in ipairs(arg_164_0.allies or {}) do
			if var_0_13(iter_164_7) and var_0_12(iter_164_7) then
				if var_0_0.has(iter_164_7, "W03") and var_0_25(arg_164_0, iter_164_7, 45) == arg_164_1 then
					var_164_1("W03", var_0_0.value(iter_164_7, "W03"))
				end

				if var_164_4 and var_0_32(arg_164_2) and var_0_0.has(iter_164_7, "S08") and var_0_25(arg_164_0, iter_164_7, 45) == arg_164_1 then
					var_164_1("S08", var_0_0.value(iter_164_7, "S08"))
				end

				if not var_164_4 and var_0_0.has(iter_164_7, "M03") and var_0_22(arg_164_0, iter_164_7, 45)[1] == arg_164_1 then
					var_164_1("M03", var_0_0.value(iter_164_7, "M03"))
				end

				if var_0_0.has(iter_164_7, "J15") and not var_164_5.firstBasic and var_164_5.moving and var_0_22(arg_164_0, iter_164_7, 45, function(arg_167_0)
					return var_0_5(arg_167_0) ~= var_0_5(iter_164_7) and not var_0_6(arg_167_0).firstBasic and var_0_6(arg_167_0).moving
				end)[1] == arg_164_1 then
					var_164_1("J15", var_0_0.value(iter_164_7, "J15"))
				end

				if var_0_0.has(iter_164_7, "H15") and not var_0_32(arg_164_2) then
					local var_164_12 = var_0_22(arg_164_0, iter_164_7, 40, var_0_32)[1]

					if var_164_12 and (iter_164_7 == arg_164_1 or var_164_12 == arg_164_1) then
						var_164_1("H15", var_0_0.value(iter_164_7, "H15"))
					end
				end

				if var_164_3 and var_0_0.has(iter_164_7, "M17") then
					local var_164_13 = var_164_4 and (arg_164_3.awakeningAction or var_0_6(arg_164_2).action) or arg_164_3.awakeningCast or var_0_6(arg_164_2).cast
					local var_164_14 = "M17:" .. tostring(iter_164_7)
					local var_164_15 = var_164_13 and var_164_13[var_164_14]

					if not var_164_15 then
						var_164_15 = var_0_22(arg_164_0, iter_164_7, 40, function(arg_168_0)
							return arg_168_0.hp < arg_168_0.maxhp
						end, true)

						if var_164_13 then
							var_164_13[var_164_14] = var_164_15
						end
					end

					if #var_164_15 >= 2 and (var_164_15[1] == arg_164_1 or var_164_15[2] == arg_164_1) and var_0_8(iter_164_7, arg_164_1) <= 40 then
						var_164_1("M17", var_0_0.value(iter_164_7, "M17"))
					end
				end
			end
		end
	end

	local var_164_16 = 1

	for iter_164_8, iter_164_9 in pairs(var_164_0) do
		var_164_16 = var_164_16 * (1 - iter_164_9 / 100)
	end

	return math.max(0.6, var_164_16)
end

function var_0_0.control(arg_169_0, arg_169_1, arg_169_2, arg_169_3, arg_169_4)
	if (arg_169_1.stunT or 0) > 0 or not var_0_27(arg_169_0, arg_169_1, "control", 6) or not var_0_27(arg_169_0, arg_169_1, arg_169_2, arg_169_4) then
		return false
	end

	if not var_0_29.stun(arg_169_0, arg_169_1, arg_169_3) then
		return false
	end

	var_0_27(arg_169_0, arg_169_1, "control", 6, true)
	var_0_27(arg_169_0, arg_169_1, arg_169_2, arg_169_4, true)

	return true
end

function var_0_0.multiHit(arg_170_0, arg_170_1, arg_170_2)
	if not var_0_0.isV7(arg_170_1, arg_170_0) then
		return var_0_29.multiHit(arg_170_0, arg_170_1, arg_170_2)
	end

	if not var_0_18(arg_170_0, arg_170_1, "W14") or arg_170_2.interrupted then
		return
	end

	local var_170_0 = {}

	for iter_170_0 in pairs(arg_170_2.hits) do
		var_170_0[#var_170_0 + 1] = iter_170_0
	end

	if #var_170_0 < 2 then
		return
	end

	table.sort(var_170_0, function(arg_171_0, arg_171_1)
		if var_0_8(arg_170_1, arg_171_0) ~= var_0_8(arg_170_1, arg_171_1) then
			return var_0_8(arg_170_1, arg_171_0) < var_0_8(arg_170_1, arg_171_1)
		end

		return tostring(arg_171_0.uuid or arg_171_0._awakeningSerial) < tostring(arg_171_1.uuid or arg_171_1._awakeningSerial)
	end)

	for iter_170_1, iter_170_2 in ipairs(var_170_0) do
		if var_0_0.control(arg_170_0, iter_170_2, "W14", var_0_0.value(arg_170_1, "W14"), 6) then
			arg_170_2.interrupted = true

			var_0_19(arg_170_0, arg_170_1, "W14", 12)

			break
		end
	end
end

function var_0_0.finishBasic(arg_172_0, arg_172_1, arg_172_2)
	if arg_172_2.finished then
		return
	end

	arg_172_2.finished = true

	if var_0_0.identity(arg_172_1) == "W08" and var_0_6(arg_172_1).action == arg_172_2 and arg_172_1._pendingMagnusHit then
		arg_172_2.finished = nil

		var_0_0.schedule(arg_172_0, 0.01, function()
			var_0_0.finishBasic(arg_172_0, arg_172_1, arg_172_2)
		end)

		return
	end

	if not var_0_3(arg_172_1) or not arg_172_2.hits[arg_172_2.target] then
		return
	end

	local var_172_0 = arg_172_2.target

	if var_0_0.has(arg_172_1, "S06") then
		for iter_172_0, iter_172_1 in ipairs(var_0_26(arg_172_0, var_172_0, math.sqrt(1450))) do
			local var_172_1 = ((iter_172_1.x or 0) - (var_172_0.x or 0)) * var_0_10(arg_172_1)

			if not arg_172_2.hits[iter_172_1] and var_172_1 > 0 and var_172_1 <= 35 and math.abs((iter_172_1.y or 0) - (var_172_0.y or 0)) <= 15 then
				arg_172_2.extra = iter_172_1

				var_0_0.extra(arg_172_0, arg_172_1, iter_172_1, (arg_172_1.dmg or 0) * var_0_0.value(arg_172_1, "S06") / 100)

				break
			end
		end
	end

	if var_0_18(arg_172_0, arg_172_1, "S12") then
		for iter_172_2, iter_172_3 in ipairs(var_0_26(arg_172_0, arg_172_1, math.huge)) do
			local var_172_2 = ((iter_172_3.x or 0) - (arg_172_1.x or 0)) * var_0_10(arg_172_1)

			if iter_172_3 ~= arg_172_2.extra and not arg_172_2.hits[iter_172_3] and var_172_2 / math.max(0.001, var_0_8(arg_172_1, iter_172_3)) < math.cos(math.pi / 6) and var_0_0.basicContact(arg_172_0, arg_172_1, iter_172_3) then
				var_0_0.extra(arg_172_0, arg_172_1, iter_172_3, (arg_172_1.dmg or 0) * var_0_0.value(arg_172_1, "S12") / 100)
				var_0_19(arg_172_0, arg_172_1, "S12", 8)

				break
			end
		end
	end
end

function var_0_0.afterDamage(arg_174_0, arg_174_1, arg_174_2, arg_174_3, arg_174_4)
	if not var_0_0.isV7(arg_174_1, arg_174_0) then
		return var_0_29.afterDamage(arg_174_0, arg_174_1, arg_174_2, arg_174_3, arg_174_4)
	end

	if not arg_174_0._awakening or not arg_174_1 or arg_174_3 <= 0 or not var_0_30(arg_174_4) then
		return
	end

	local var_174_0 = var_0_6(arg_174_1)

	var_0_6(arg_174_2).lastHurtSource = arg_174_1

	if arg_174_4.projectile then
		arg_174_4.projectile._awakeningHit = true
	end

	if arg_174_4.basicAttack then
		local var_174_1 = arg_174_4.awakeningAction or var_174_0.action

		if not var_174_1 or var_174_1.confused then
			return
		end

		local var_174_2 = not var_174_1.hits[arg_174_2]

		var_174_1.hits[arg_174_2] = true

		if var_174_2 and var_0_0.identity(arg_174_1) == "W08" then
			var_0_0.multiHit(arg_174_0, arg_174_1, var_174_1)
		end

		if not var_174_1.finishQueued then
			var_174_1.finishQueued = true

			var_0_0.schedule(arg_174_0, 0, function()
				var_0_0.finishBasic(arg_174_0, arg_174_1, var_174_1)
			end)
		end

		if var_174_2 and var_0_12(arg_174_1) then
			for iter_174_0, iter_174_1 in ipairs(var_0_22(arg_174_0, arg_174_1, 45, function(arg_176_0)
				return var_0_5(arg_176_0) ~= var_0_5(arg_174_1) and var_0_13(arg_176_0)
			end)) do
				var_0_34(arg_174_0, iter_174_1, "M10", 4, 6)

				if var_0_18(arg_174_0, iter_174_1, "J04") and var_0_0.basicContact(arg_174_0, iter_174_1, arg_174_2) then
					var_0_19(arg_174_0, iter_174_1, "J04", 8)
					var_0_0.card(arg_174_0, iter_174_1, arg_174_2, (iter_174_1.dmg or 0) * var_0_0.value(iter_174_1, "J04") / 100)
				end
			end
		end

		if not var_174_2 or var_174_1.target ~= arg_174_2 then
			return
		end

		var_174_0.h01 = false
		var_174_0.sameHits = var_174_0.lastHitTarget == arg_174_2 and math.min(3, (var_174_0.sameHits or 0) + 1) or 1
		var_174_0.lastHitTarget = arg_174_2
		var_174_0.lastHitAt = var_0_7(arg_174_0)
		var_174_1.d08Hit = true

		local var_174_3 = var_0_20(arg_174_0, arg_174_1, "S13")

		if var_174_3 then
			var_174_0.tokens.S13 = nil

			var_0_0.extra(arg_174_0, arg_174_1, arg_174_2, (arg_174_1.dmg or 0) * var_174_3.p / 100)
		end

		if var_0_0.has(arg_174_1, "D04") and var_174_1.paired then
			local var_174_4 = (arg_174_1.dmg or 0) * var_0_0.value(arg_174_1, "D04") / 100

			var_0_0.schedule(arg_174_0, 0.15, function()
				if var_0_3(arg_174_1) and var_0_0.basicContact(arg_174_0, arg_174_1, arg_174_2) then
					var_0_0.extra(arg_174_0, arg_174_1, arg_174_2, var_174_4)
				end
			end)
		end

		if var_0_18(arg_174_0, arg_174_1, "W11") then
			var_0_21(arg_174_0, arg_174_2, "W11", var_0_0.value(arg_174_1, "W11"), 3)
			var_0_19(arg_174_0, arg_174_1, "W11", 6)
		end

		if var_0_18(arg_174_0, arg_174_1, "J02") then
			var_0_21(arg_174_0, arg_174_2, "J02", var_0_0.value(arg_174_1, "J02"), 3)
			var_0_19(arg_174_0, arg_174_1, "J02", 5)
		end

		if var_0_18(arg_174_0, arg_174_1, "M12") and var_0_27(arg_174_0, arg_174_2, "M12", 6) then
			var_0_21(arg_174_0, arg_174_2, "M12", var_0_0.value(arg_174_1, "M12"), 3)
			var_0_19(arg_174_0, arg_174_1, "M12", 6)
			var_0_27(arg_174_0, arg_174_2, "M12", 6, true)
		end

		if var_0_18(arg_174_0, arg_174_1, "A02") and var_0_8(arg_174_1, arg_174_2) <= 45 and var_0_27(arg_174_0, arg_174_2, "A02", 4) and var_0_0.knock(arg_174_0, arg_174_1, arg_174_2, 15) then
			var_0_19(arg_174_0, arg_174_1, "A02", var_0_0.value(arg_174_1, "A02"))
			var_0_27(arg_174_0, arg_174_2, "A02", 4, true)
		end

		if var_0_18(arg_174_0, arg_174_1, "A07") and not var_0_32(arg_174_2) and not var_0_15(arg_174_2) then
			var_0_21(arg_174_0, arg_174_2, "A07", var_0_0.value(arg_174_1, "A07"), 2)
			var_0_19(arg_174_0, arg_174_1, "A07", 6)
		end

		if var_0_18(arg_174_0, arg_174_1, "J12") and var_0_0.control(arg_174_0, arg_174_2, "J12", var_0_0.value(arg_174_1, "J12"), 8) then
			var_0_19(arg_174_0, arg_174_1, "J12", 10)
		end

		if var_0_18(arg_174_0, arg_174_1, "J08") and var_0_3(arg_174_2) and not var_0_15(arg_174_2) and var_0_27(arg_174_0, arg_174_2, "J08", 12) and not var_0_20(arg_174_0, arg_174_2, "J08") then
			var_0_21(arg_174_0, arg_174_2, "J08", 1, 3, arg_174_1)
			var_0_19(arg_174_0, arg_174_1, "J08", var_0_0.value(arg_174_1, "J08"))
			var_0_27(arg_174_0, arg_174_2, "J08", 12, true)
		end

		if var_0_18(arg_174_0, arg_174_1, "H05") and (var_174_0.travel or 0) >= 30 then
			for iter_174_2, iter_174_3 in ipairs(var_0_26(arg_174_0, arg_174_2, 35)) do
				if iter_174_3 ~= arg_174_2 and var_0_9(arg_174_1, iter_174_3) then
					var_0_0.extra(arg_174_0, arg_174_1, iter_174_3, (arg_174_1.dmg or 0) * var_0_0.value(arg_174_1, "H05") / 100)

					var_174_0.travel = 0

					var_0_19(arg_174_0, arg_174_1, "H05", 7)

					break
				end
			end
		end
	elseif var_0_31(arg_174_4) then
		local var_174_5 = arg_174_4.awakeningCast or var_174_0.cast

		if not var_174_5 then
			return
		end

		var_174_5.hits[arg_174_2] = true
		var_174_5.success = true

		if var_0_18(arg_174_0, arg_174_1, "A13") and not var_174_5.followup and var_0_3(arg_174_2) and var_0_9(arg_174_1, arg_174_2) and not arg_174_2.invuln and (arg_174_2._invulnT or 0) <= 0 and (arg_174_0._awakeningMetric and arg_174_0._awakeningMetric(arg_174_1, arg_174_2) or var_0_8(arg_174_1, arg_174_2)^2) <= (arg_174_1.skill and arg_174_1.skill.range or arg_174_1.distance or 120)^2 then
			var_174_5.followup = true

			var_0_19(arg_174_0, arg_174_1, "A13", 8)

			local var_174_6 = var_0_0.card(arg_174_0, arg_174_1, arg_174_2, (arg_174_1.dmg or 0) * var_0_0.value(arg_174_1, "A13") / 100)

			var_174_6.asset = arg_174_4.projectile and arg_174_4.projectile.asset or arg_174_1.projectile or "Arrow"
			var_174_6.awakeningFollowup = true
		end

		if var_0_18(arg_174_0, arg_174_1, "A15") and arg_174_4.explosion then
			var_174_5.radius = arg_174_4.explosionRadius or 30
			var_174_5.explosion = {
				x = arg_174_4.impactX or arg_174_2.x,
				y = arg_174_4.impactY or arg_174_2.y,
				lane = arg_174_2.lane
			}
			var_174_5.lastExplosion = var_0_7(arg_174_0)
			var_174_5.explosionAsset = arg_174_4.projectile and arg_174_4.projectile.asset
			var_174_5.explosionScale = arg_174_4.projectile and arg_174_4.projectile.scale

			if not var_174_5.explosionScheduled then
				var_174_5.explosionScheduled = true

				var_0_0.schedule(arg_174_0, 0.4, function()
					var_0_0.explodeAgain(arg_174_0, arg_174_1, var_174_5)
				end)
			end
		end

		var_0_0.multiHit(arg_174_0, arg_174_1, var_174_5)
	end
end

function var_0_0.onHurt(arg_179_0, arg_179_1, arg_179_2, arg_179_3, arg_179_4)
	if not var_0_0.isV7(arg_179_1, arg_179_0) then
		return var_0_29.onHurt(arg_179_0, arg_179_1, arg_179_2, arg_179_3, arg_179_4)
	end

	if not arg_179_0._awakening or not arg_179_2 or arg_179_2 == arg_179_1 or arg_179_3 <= 0 or not var_0_30(arg_179_4) or arg_179_2.side == arg_179_1.side then
		return
	end

	local var_179_0 = var_0_6(arg_179_1)

	var_179_0.h01 = false
	var_179_0.lastHurtSource = arg_179_2

	if var_0_13(arg_179_1) then
		var_0_34(arg_179_0, arg_179_1, "W02", 4, 4)

		if var_0_18(arg_179_0, arg_179_1, "D06") and arg_179_3 >= (var_179_0.startHP or arg_179_1.maxhp or 1) * 0.1 then
			var_0_21(arg_179_0, arg_179_1, "D06", var_0_0.value(arg_179_1, "D06"), 2)
			var_0_19(arg_179_0, arg_179_1, "D06", 6)
		end

		if var_0_18(arg_179_0, arg_179_1, "W09") and var_0_8(arg_179_1, arg_179_2) <= 45 and var_0_0.basicContact(arg_179_0, arg_179_1, arg_179_2) and var_0_27(arg_179_0, arg_179_2, "W09", 3) then
			var_0_19(arg_179_0, arg_179_1, "W09", 6)
			var_0_27(arg_179_0, arg_179_2, "W09", 3, true)
			var_0_0.extra(arg_179_0, arg_179_1, arg_179_2, (arg_179_1.dmg or 0) * var_0_0.value(arg_179_1, "W09") / 100)
		end

		if arg_179_4.basicAttack then
			if var_0_18(arg_179_0, arg_179_1, "J01") and var_0_3(arg_179_2) and not var_0_15(arg_179_2) and not arg_179_2.aspdImmune then
				var_0_21(arg_179_0, arg_179_2, "J01", var_0_0.value(arg_179_1, "J01"), 2)
				var_0_19(arg_179_0, arg_179_1, "J01", 6)
			end

			if var_0_0.has(arg_179_1, "S04") and var_0_32(arg_179_2) and not var_0_6(arg_179_2).s04Used and var_0_0.basicContact(arg_179_0, arg_179_1, arg_179_2) and var_0_0.control(arg_179_0, arg_179_2, "S04", var_0_0.value(arg_179_1, "S04"), 6) then
				var_0_6(arg_179_2).s04Used = true
			end
		end

		if var_0_18(arg_179_0, arg_179_1, "M22") and var_0_3(arg_179_2) then
			local var_179_1 = {}

			for iter_179_0, iter_179_1 in ipairs(arg_179_0.allies or {}) do
				if var_0_3(iter_179_1) and var_0_6(iter_179_1).summonOwner == arg_179_1 and var_0_9(arg_179_1, iter_179_1) then
					var_179_1[#var_179_1 + 1] = iter_179_1
				end
			end

			table.sort(var_179_1, function(arg_180_0, arg_180_1)
				return var_0_8(arg_179_1, arg_180_0) < var_0_8(arg_179_1, arg_180_1)
			end)

			if var_179_1[1] and not var_0_20(arg_179_0, var_179_1[1], "M22") then
				var_0_21(arg_179_0, var_179_1[1], "M22", var_0_0.value(arg_179_1, "M22"), 3, arg_179_2)
				var_0_19(arg_179_0, arg_179_1, "M22", 6)
			end
		end
	end

	if arg_179_1.rosterIndex and not arg_179_1.isSummon and not arg_179_1.isShadowMinion and not arg_179_1.isDecoyDummy and not arg_179_1.isWoodenWatchtower and not arg_179_1._tricksterCharm then
		for iter_179_2, iter_179_3 in ipairs(var_0_22(arg_179_0, arg_179_1, 45, var_0_13)) do
			var_0_34(arg_179_0, iter_179_3, "W18", 4, 5)
		end
	end
end

function var_0_0.intercept(arg_181_0, arg_181_1, arg_181_2, arg_181_3)
	if not var_0_0.isV7(arg_181_1, arg_181_0) then
		return var_0_29.intercept(arg_181_0, arg_181_1, arg_181_2)
	end

	if not arg_181_0._awakening or not var_0_13(arg_181_1) then
		return
	end

	local var_181_0 = {}

	for iter_181_0, iter_181_1 in ipairs(arg_181_0.projectiles or {}) do
		if iter_181_1.side == "enemy" and var_0_28(iter_181_1) and var_0_9(arg_181_1, iter_181_1) then
			local var_181_1 = iter_181_1.targetOnly or iter_181_1.target or iter_181_1._awakeningTarget

			local function var_181_2(arg_182_0, arg_182_1, arg_182_2)
				local var_182_0 = var_0_0.value(arg_181_1, arg_182_0)

				if arg_182_1 and var_0_0.has(arg_181_1, arg_182_0) and (arg_182_2 and var_0_27(arg_181_0, arg_182_2, arg_182_0, var_182_0) or not arg_182_2 and var_0_18(arg_181_0, arg_181_1, arg_182_0)) then
					var_181_0[#var_181_0 + 1] = {
						p = iter_181_1,
						id = arg_182_0,
						cd = var_182_0,
						beneficiary = arg_182_2,
						index = iter_181_0,
						eta = var_0_8(iter_181_1, var_181_1 or arg_181_1) / math.max(1, math.sqrt((iter_181_1.vx or 0)^2 + (iter_181_1.vy or 0)^2))
					}
				end
			end

			var_181_2("W01", arg_181_2 and var_0_8(arg_181_1, iter_181_1) <= 40 and (var_181_1 == arg_181_1 or var_0_12(var_181_1) and ((var_181_1.x or 0) - (arg_181_1.x or 0)) * var_0_10(arg_181_1) < 0))
			var_181_2("J06", arg_181_2 and var_181_1 == arg_181_1 and var_0_8(arg_181_1, iter_181_1) <= 45)
			var_181_2("A11", arg_181_3 and var_0_8(arg_181_1, iter_181_1) <= 40)
			var_181_2("S10", var_0_12(var_181_1) and var_181_1 ~= arg_181_1 and var_0_32(var_181_1) and var_0_9(arg_181_1, var_181_1) and var_0_8(arg_181_1, var_181_1) <= 45 and var_0_8(arg_181_1, iter_181_1) <= 45)
			var_181_2("D12", var_181_1 == arg_181_1 and var_0_8(arg_181_1, iter_181_1) <= 35)
			var_181_2("M18", var_0_12(var_181_1) and var_181_1 ~= arg_181_1 and var_0_9(arg_181_1, var_181_1) and var_0_8(arg_181_1, var_181_1) <= 40 and var_181_1.hp <= 0.5 * var_181_1.maxhp and var_0_8(var_181_1, iter_181_1) <= 35, var_181_1)
		end
	end

	table.sort(var_181_0, function(arg_183_0, arg_183_1)
		if arg_183_0.id == "M18" and arg_183_1.id == "M18" then
			local var_183_0 = arg_183_0.beneficiary.hp / arg_183_0.beneficiary.maxhp
			local var_183_1 = arg_183_1.beneficiary.hp / arg_183_1.beneficiary.maxhp

			if var_183_0 ~= var_183_1 then
				return var_183_0 < var_183_1
			end
		end

		if arg_183_0.eta ~= arg_183_1.eta then
			return arg_183_0.eta < arg_183_1.eta
		end

		return arg_183_0.index < arg_183_1.index
	end)

	local var_181_3 = false

	for iter_181_2, iter_181_3 in ipairs(var_181_0) do
		if iter_181_3.p.alive ~= false then
			local var_181_4 = iter_181_3.id == "W01" or iter_181_3.id == "J06" or iter_181_3.id == "A11"

			if not var_181_4 or not var_181_3 then
				if var_181_4 then
					var_181_3 = true
				end

				iter_181_3.p._awakeningBlocks = iter_181_3.p._awakeningBlocks or {}

				local var_181_5 = iter_181_3.p._awakeningBlocks[arg_181_1]

				if var_181_4 or not var_181_5 or var_181_5.expires < var_0_7(arg_181_0) then
					iter_181_3.p._awakeningBlocks[arg_181_1] = {
						owner = arg_181_1,
						target = iter_181_3.p.targetOnly or iter_181_3.p.target or iter_181_3.p._awakeningTarget,
						id = iter_181_3.id,
						cd = iter_181_3.cd,
						beneficiary = iter_181_3.beneficiary,
						expires = var_0_7(arg_181_0) + (var_181_4 and 0.85 or 0.12)
					}
				end
			end
		end
	end
end

function var_0_0.deflect(arg_184_0, arg_184_1, arg_184_2)
	if not arg_184_1 or arg_184_1._awakeningDeflect then
		return false
	end

	local var_184_0 = arg_184_1.vx or 0
	local var_184_1 = arg_184_1.vy or 0
	local var_184_2 = math.sqrt(var_184_0 * var_184_0 + var_184_1 * var_184_1)
	local var_184_3 = var_184_0 ~= 0 and (var_184_0 > 0 and -1 or 1) or (arg_184_1.x or 0) >= (arg_184_2.x or 0) and 1 or -1

	arg_184_1.vx = var_184_3 * math.max(115, math.min(210, var_184_2 * 0.72))
	arg_184_1.vy = -math.max(90, math.min(155, var_184_2 * 0.4))
	arg_184_1._spearCycloneDeflect = {
		dur = 0.48,
		t = 0,
		spin = var_184_3 * 12,
		alpha = arg_184_1.alpha or 1
	}
	arg_184_1._awakeningDeflect = true
	arg_184_1._awakeningRemoved = true
	arg_184_1.visualOnly = true
	arg_184_1.basicAttack = false
	arg_184_1.didDamage = true
	arg_184_1.pierce = nil
	arg_184_1.holdSpawnPosition = nil
	arg_184_1.anchoredLaser = nil
	arg_184_1.opaqueBottomAnchor = nil
	arg_184_1.renderAboveOwner = true
	arg_184_1.life = math.max(arg_184_1.life or 0, 0.55)
	arg_184_1._awakeningBlocks = nil

	return true
end

function var_0_0.resolveInterception(arg_185_0, arg_185_1, arg_185_2)
	if not arg_185_1 or not arg_185_2 or not var_0_28(arg_185_1) or arg_185_1.side ~= "enemy" then
		return false
	end

	local var_185_0

	for iter_185_0, iter_185_1 in pairs(arg_185_1._awakeningBlocks or {}) do
		local var_185_1 = iter_185_1.owner

		if iter_185_1.target == arg_185_2 and var_0_13(var_185_1) and var_0_9(var_185_1, arg_185_2) and iter_185_1.expires >= var_0_7(arg_185_0) and (iter_185_1.beneficiary and var_0_27(arg_185_0, iter_185_1.beneficiary, iter_185_1.id, iter_185_1.cd) or not iter_185_1.beneficiary and var_0_18(arg_185_0, var_185_1, iter_185_1.id)) and (not var_185_0 or iter_185_1.expires < var_185_0.expires) then
			var_185_0 = iter_185_1
		end
	end

	if not var_185_0 then
		return false
	end

	if var_185_0.beneficiary then
		var_0_27(arg_185_0, var_185_0.beneficiary, var_185_0.id, var_185_0.cd, true)
	else
		var_0_19(arg_185_0, var_185_0.owner, var_185_0.id, var_185_0.cd)
	end

	return var_0_0.deflect(arg_185_0, arg_185_1, arg_185_2)
end

function var_0_0.projectile(arg_186_0, arg_186_1, arg_186_2)
	local var_186_0 = arg_186_1 and not arg_186_1._awakeningInitialized

	var_0_29.projectile(arg_186_0, arg_186_1, arg_186_2)

	if var_186_0 and arg_186_1 and arg_186_1.basicAttack and arg_186_1.awakeningAction and arg_186_1.awakeningAction.confused then
		arg_186_1.side = "ally"
		arg_186_1.awakeningConfused = true
		arg_186_1.targetOnly = arg_186_1.awakeningAction.target
	end

	if var_186_0 and arg_186_1.owner and var_0_0.isV7(arg_186_1.owner, arg_186_0) and arg_186_1.battleSkillDamage and var_0_0.has(arg_186_1.owner, "A11") then
		local var_186_1 = arg_186_1.awakeningCast

		if not var_186_1 or not var_186_1.a11Released then
			if var_186_1 then
				var_186_1.a11Released = true
			end

			var_0_0.intercept(arg_186_0, arg_186_1.owner, false, true)
		end
	end
end

function var_0_0.statusDuration(arg_187_0, arg_187_1, arg_187_2, arg_187_3, arg_187_4)
	if not var_0_0.isModern(arg_187_1, arg_187_0) then
		return var_0_29.statusDuration(arg_187_0, arg_187_1, arg_187_2, arg_187_3, arg_187_4)
	end

	if not arg_187_0 or not arg_187_0._awakening or arg_187_4 and arg_187_4.side == arg_187_1.side then
		return arg_187_3
	end

	local var_187_0 = (arg_187_2 == "stun" or arg_187_2 == "silence") and var_0_0.value(arg_187_1, "M01") or (arg_187_2 == "slow" or arg_187_2 == "root") and var_0_0.value(arg_187_1, "H09") or 0

	for iter_187_0, iter_187_1 in ipairs(arg_187_0.allies or {}) do
		if var_0_13(iter_187_1) and var_0_12(iter_187_1) and var_0_5(iter_187_1) ~= var_0_5(arg_187_1) then
			local var_187_1 = arg_187_2 == "stun" and "J16" or (arg_187_2 == "slow" or arg_187_2 == "root") and "M04"

			if var_187_1 and var_0_0.has(iter_187_1, var_187_1) and var_0_22(arg_187_0, iter_187_1, 45, function(arg_188_0)
				return var_0_5(arg_188_0) ~= var_0_5(iter_187_1)
			end)[1] == arg_187_1 then
				var_187_0 = math.max(var_187_0, var_0_0.value(iter_187_1, var_187_1))
			end
		end
	end

	return arg_187_3 * (1 - var_187_0 / 100)
end

function var_0_0.onDodge(arg_189_0, arg_189_1, arg_189_2, arg_189_3, arg_189_4)
	if not var_0_0.isV7(arg_189_1, arg_189_0) then
		return var_0_29.onDodge(arg_189_0, arg_189_1, arg_189_2, arg_189_3, arg_189_4)
	end

	local var_189_0 = arg_189_4 and (arg_189_4.awakeningAction or arg_189_1 and var_0_6(arg_189_1).action)

	if not var_0_30(arg_189_4) or not arg_189_4.basicAttack or not var_189_0 or var_189_0.target ~= arg_189_2 then
		return
	end

	if var_0_0.has(arg_189_1, "D08") then
		var_0_21(arg_189_0, arg_189_1, "D08", var_0_0.value(arg_189_1, "D08"), 4, arg_189_2)
	end

	if arg_189_4.projectile and var_0_18(arg_189_0, arg_189_1, "A06") then
		var_0_0.extra(arg_189_0, arg_189_1, arg_189_2, arg_189_3 * var_0_0.value(arg_189_1, "A06") / 100)
		var_0_19(arg_189_0, arg_189_1, "A06", 5)
	end
end

function var_0_0.ignoreDodge(arg_190_0, arg_190_1, arg_190_2, arg_190_3)
	if not var_0_0.isV7(arg_190_1, arg_190_0) then
		return var_0_29.ignoreDodge(arg_190_0, arg_190_1, arg_190_2, arg_190_3)
	end

	local var_190_0 = arg_190_3 and (arg_190_3.awakeningAction or arg_190_1 and var_0_6(arg_190_1).action)

	return var_0_30(arg_190_3) and arg_190_3.basicAttack and var_190_0 and var_190_0.target == arg_190_2 and var_190_0.D08 and not var_190_0.d08Hit
end

function var_0_0.speed(arg_191_0, arg_191_1, arg_191_2)
	if not var_0_0.isV7(arg_191_1, arg_191_0) then
		return var_0_29.speed(arg_191_0, arg_191_1, arg_191_2)
	end

	if not arg_191_0._awakening then
		return 1
	end

	local var_191_0 = var_0_6(arg_191_1)
	local var_191_1 = 0

	if var_191_0.h01 and var_191_0.moving then
		var_191_1 = var_0_0.value(arg_191_1, "H01")
	end

	local var_191_2 = var_0_20(arg_191_0, arg_191_1, "M20")

	if var_191_2 and not var_191_0.firstBasic then
		var_191_1 = math.max(var_191_1, var_191_2.p)
	end

	for iter_191_0, iter_191_1 in ipairs(arg_191_0.allies or {}) do
		if var_0_13(iter_191_1) and var_0_12(iter_191_1) and var_0_6(iter_191_1).moving and var_191_0.moving and var_0_0.has(iter_191_1, "H10") then
			local var_191_3 = var_0_25(arg_191_0, iter_191_1, 45)

			if var_191_3 and var_0_6(var_191_3).moving and (iter_191_1 == arg_191_1 or var_191_3 == arg_191_1) then
				var_191_1 = math.max(var_191_1, var_0_0.value(iter_191_1, "H10"))
			end
		end
	end

	local var_191_4 = 0

	for iter_191_2, iter_191_3 in ipairs({
		"J10",
		"S05"
	}) do
		local var_191_5 = var_0_20(arg_191_0, arg_191_1, iter_191_3)

		if var_191_5 then
			var_191_4 = math.max(var_191_4, var_191_5.p)
		end
	end

	local var_191_6 = arg_191_2 or require("src.game.combat").slow_effects.movementMultiplier(arg_191_1)

	return (1 + var_191_1 / 100) * math.min(var_191_6, 1 - var_191_4 / 100) / math.max(0.001, var_191_6)
end

function var_0_0.attackSpeedMultiplier(arg_192_0, arg_192_1, arg_192_2)
	if not var_0_0.isV7(arg_192_1, arg_192_0) then
		return var_0_29.attackSpeedMultiplier(arg_192_0, arg_192_1, arg_192_2)
	end

	local var_192_0 = 0

	for iter_192_0, iter_192_1 in ipairs({
		"J01",
		"D15"
	}) do
		local var_192_1 = arg_192_0._awakening and var_0_20(arg_192_0, arg_192_1, iter_192_1)

		if var_192_1 then
			var_192_0 = math.max(var_192_0, var_192_1.p)
		end
	end

	return math.min(arg_192_2 or 1, 1 - var_192_0 / 100)
end

function var_0_0.onKnockback(arg_193_0, arg_193_1, arg_193_2)
	if not var_0_0.isV7(arg_193_1, arg_193_0) then
		return var_0_29.onKnockback(arg_193_0, arg_193_1, arg_193_2)
	end

	if not arg_193_0._awakening or not arg_193_2 or arg_193_2.side == arg_193_1.side then
		return
	end

	if var_0_18(arg_193_0, arg_193_2, "S05") and var_0_13(arg_193_2) then
		local var_193_0 = var_0_6(arg_193_2)

		var_193_0.knocked = var_193_0.knocked or {}
		var_193_0.knocked[arg_193_1] = true

		if not var_193_0.knockQueued then
			var_193_0.knockQueued = true

			var_0_0.schedule(arg_193_0, 0, function()
				var_193_0.knockQueued = nil

				local var_194_0 = {}

				for iter_194_0 in pairs(var_193_0.knocked) do
					var_194_0[#var_194_0 + 1] = iter_194_0
				end

				var_193_0.knocked = {}

				table.sort(var_194_0, function(arg_195_0, arg_195_1)
					return var_0_8(arg_193_2, arg_195_0) < var_0_8(arg_193_2, arg_195_1)
				end)

				for iter_194_1, iter_194_2 in ipairs(var_194_0) do
					if var_0_3(iter_194_2) and not var_0_15(iter_194_2) and not iter_194_2.slowImmune and var_0_27(arg_193_0, iter_194_2, "S05", 6) and var_0_18(arg_193_0, arg_193_2, "S05") then
						var_0_21(arg_193_0, iter_194_2, "S05", var_0_0.value(arg_193_2, "S05"), 2)
						var_0_27(arg_193_0, iter_194_2, "S05", 6, true)
						var_0_19(arg_193_0, arg_193_2, "S05", 6)

						break
					end
				end
			end)
		end
	end

	if var_0_13(arg_193_1) and var_0_18(arg_193_0, arg_193_1, "H13") and var_0_8(arg_193_1, arg_193_2) <= 45 and var_0_0.basicContact(arg_193_0, arg_193_1, arg_193_2) and var_0_27(arg_193_0, arg_193_2, "H13", 3) and var_0_0.knock(arg_193_0, arg_193_1, arg_193_2, 15) then
		var_0_19(arg_193_0, arg_193_1, "H13", var_0_0.value(arg_193_1, "H13"))
		var_0_27(arg_193_0, arg_193_2, "H13", 3, true)
	end
end

function var_0_0.failedSkill(arg_196_0, arg_196_1, arg_196_2)
	if not var_0_0.isV7(arg_196_1, arg_196_0) then
		return var_0_29.failedSkill(arg_196_0, arg_196_1, arg_196_2)
	end
end

function var_0_0.bleedBurst(arg_197_0, arg_197_1, arg_197_2)
	if not var_0_0.isV7(arg_197_1, arg_197_0) then
		return var_0_29.bleedBurst(arg_197_0, arg_197_1, arg_197_2)
	end

	local var_197_0 = var_0_6(arg_197_1).cast
	local var_197_1 = arg_197_2 and arg_197_2._bleed

	if not var_197_0 or var_197_0.bleedBurst or not var_197_1 or var_197_1.source ~= arg_197_1 or not var_0_0.has(arg_197_1, "S14") then
		return
	end

	var_197_0.bleedBurst = true

	local var_197_2 = var_197_1.tickInterval or 0.5
	local var_197_3 = math.max(0, math.floor(((var_197_1.dur or 0) - (var_197_1.t or 0) - (var_197_1.nextTick or var_197_2)) / var_197_2 + 1 + 1e-06))
	local var_197_4 = var_0_0.value(arg_197_1, "S14") / 100
	local var_197_5 = (var_197_1.dmg or 0) * var_197_3 * var_197_4

	var_197_1.dmg = (var_197_1.dmg or 0) * (1 - var_197_4)

	var_0_0.extra(arg_197_0, arg_197_1, arg_197_2, var_197_5)
end

function var_0_0.numericShields(arg_198_0, arg_198_1)
	local var_198_0 = {}
	local var_198_1 = {}

	local function var_198_2(arg_199_0, arg_199_1)
		if arg_199_0 and not var_198_1[arg_199_0] and (arg_199_0[arg_199_1] or 0) > 0 then
			var_198_0[#var_198_0 + 1] = {
				pool = arg_199_0,
				key = arg_199_1
			}
			var_198_1[arg_199_0] = true
		end
	end

	for iter_198_0, iter_198_1 in ipairs({
		"_sturdyShield",
		"_solitaryOathShield",
		"_escapeCloakShield",
		"_holyBarrierShield",
		"_brokenShield"
	}) do
		local var_198_3 = arg_198_1[iter_198_1]

		if var_198_3 and (var_198_3.t or 0) > 0 then
			var_198_2(var_198_3, "hp")
		end
	end

	if (arg_198_1._factionShieldHP or 0) > 0 then
		var_198_2(arg_198_1, "_factionShieldHP")
	end

	for iter_198_2, iter_198_3 in ipairs(arg_198_1._guardianOathShields or {}) do
		if (iter_198_3.t or 0) > 0 then
			var_198_2(iter_198_3, "hp")
		end
	end

	for iter_198_4, iter_198_5 in pairs(var_0_6(arg_198_1).shields or {}) do
		if iter_198_5.expires >= var_0_7(arg_198_0) then
			var_198_2(iter_198_5, "amount")
		end
	end

	return var_198_0
end

function var_0_0.shieldCapacity(arg_200_0, arg_200_1)
	local var_200_0 = 0

	for iter_200_0, iter_200_1 in ipairs(var_0_0.numericShields(arg_200_0, arg_200_1)) do
		var_200_0 = var_200_0 + iter_200_1.pool[iter_200_1.key]
	end

	return var_200_0
end

function var_0_0.consumeShields(arg_201_0, arg_201_1, arg_201_2, arg_201_3)
	local var_201_0 = var_0_0.numericShields(arg_201_0, arg_201_1)
	local var_201_1 = math.min(arg_201_2, var_0_0.shieldCapacity(arg_201_0, arg_201_1))
	local var_201_2 = var_201_1 * (1 + (arg_201_3 or 0) / 100)

	for iter_201_0, iter_201_1 in ipairs(var_201_0) do
		local var_201_3 = math.min(var_201_2, iter_201_1.pool[iter_201_1.key])

		iter_201_1.pool[iter_201_1.key] = iter_201_1.pool[iter_201_1.key] - var_201_3
		var_201_2 = var_201_2 - var_201_3
	end

	if var_201_1 > 0 then
		arg_201_1._factionShieldHitT = 0.35
	end

	return arg_201_2 - var_201_1
end

function var_0_0.enemyShields(arg_202_0, arg_202_1, arg_202_2, arg_202_3, arg_202_4)
	if not var_0_0.isModern(arg_202_1, arg_202_0) then
		return arg_202_3
	end

	local var_202_0 = var_0_30(arg_202_4) and arg_202_4.basicAttack and var_0_0.value(arg_202_1, "W17") + var_0_0.value(arg_202_1, "S11") or 0

	return var_0_0.consumeShields(arg_202_0, arg_202_2, arg_202_3, var_202_0)
end

function var_0_0.transferDamage(arg_203_0, arg_203_1, arg_203_2, arg_203_3, arg_203_4)
	if not var_0_0.isModern(arg_203_1, arg_203_0) or not var_0_30(arg_203_4) or not arg_203_2 or arg_203_2.side ~= "enemy" or not arg_203_4.basicAttack and not var_0_31(arg_203_4) or arg_203_3 <= 0 then
		return arg_203_3
	end

	local var_203_0 = {}

	for iter_203_0, iter_203_1 in ipairs(arg_203_0.allies or {}) do
		if var_0_12(iter_203_1) and var_0_33(iter_203_1) and var_0_0.has(iter_203_1, "W06") and var_0_25(arg_203_0, iter_203_1, 45) == arg_203_1 then
			var_203_0[#var_203_0 + 1] = iter_203_1
		end
	end

	table.sort(var_203_0, function(arg_204_0, arg_204_1)
		if var_0_0.stage(arg_204_0) ~= var_0_0.stage(arg_204_1) then
			return var_0_0.stage(arg_204_0) > var_0_0.stage(arg_204_1)
		end

		if var_0_8(arg_203_1, arg_204_0) ~= var_0_8(arg_203_1, arg_204_1) then
			return var_0_8(arg_203_1, arg_204_0) < var_0_8(arg_203_1, arg_204_1)
		end

		return tostring(arg_204_0.uuid or arg_204_0.rosterIndex) < tostring(arg_204_1.uuid or arg_204_1.rosterIndex)
	end)

	local var_203_1 = var_203_0[1]

	if not var_203_1 then
		return arg_203_3
	end

	local var_203_2 = math.min(arg_203_3 * var_0_0.value(var_203_1, "W06") / 100, var_0_0.shieldCapacity(arg_203_0, var_203_1) + math.max(0, var_203_1.hp or 0))
	local var_203_3 = var_0_0.consumeShields(arg_203_0, var_203_1, var_203_2)

	var_203_1.hp = (var_203_1.hp or 0) - var_203_3
	var_203_1._factionShieldLastHP = var_203_1.hp

	require("src.game.unit_abilities").guardian_oath.recordHP(var_203_1)

	if var_203_3 > 0 then
		var_203_1.hpbarShowT = 2
		var_203_1.damagePopups = var_203_1.damagePopups or {}
		var_203_1.damagePopups[#var_203_1.damagePopups + 1] = {
			dur = 0.7,
			transfer = true,
			t = 0,
			amt = var_203_3
		}

		if var_203_1.hp <= 0 and arg_203_0._awakeningDeath then
			arg_203_0._awakeningDeath(var_203_1)
		end
	end

	return arg_203_3 - var_203_2
end

function var_0_0.coreExpired(arg_205_0, arg_205_1)
	local var_205_0 = arg_205_1.owner

	if not var_205_0 or not var_0_0.isV7(var_205_0, arg_205_0) or not var_0_3(var_205_0) or not var_0_18(arg_205_0, var_205_0, "M11") or arg_205_1.awakeningExpired then
		return
	end

	arg_205_1.awakeningExpired = true

	local var_205_1 = {
		x = (arg_205_1.x or 0) + 16,
		y = (arg_205_1.y or 0) + 6,
		lane = var_205_0.lane,
		_awakeningBattle = arg_205_0
	}
	local var_205_2 = var_0_26(arg_205_0, var_205_1, 35)

	if #var_205_2 == 0 then
		return
	end

	var_0_19(arg_205_0, var_205_0, "M11", 8)

	for iter_205_0 = 1, math.min(2, #var_205_2) do
		var_0_0.extra(arg_205_0, var_205_0, var_205_2[iter_205_0], (var_205_0.dmg or 0) * var_0_0.value(var_205_0, "M11") / 100)
	end
end

function var_0_0.healTransfer(arg_206_0, arg_206_1, arg_206_2, arg_206_3, arg_206_4)
	if not var_0_0.isModern(arg_206_1, arg_206_0) then
		return var_0_29.healTransfer(arg_206_0, arg_206_1, arg_206_2, arg_206_3, arg_206_4)
	end

	local var_206_0 = var_0_6(arg_206_1).cast
	local var_206_1 = var_206_0 and var_206_0.transfer

	if var_206_1 and var_206_1.ring == arg_206_2 and var_0_3(var_206_1.target) and var_0_9(arg_206_1, var_206_1.target) then
		return var_0_0.heal(arg_206_0, var_206_1.target, arg_206_4 * var_0_0.value(arg_206_1, "M13") / 100)
	end

	return 0
end

function var_0_0.healRelayTick(arg_207_0, arg_207_1, arg_207_2, arg_207_3, arg_207_4)
	if not var_0_0.isModern(arg_207_1, arg_207_0) or not var_0_0.has(arg_207_1, "M13") or not var_0_3(arg_207_3) or arg_207_3.hp < arg_207_3.maxhp then
		return
	end

	local var_207_0 = arg_207_1.skill
	local var_207_1 = var_0_6(arg_207_1).cast

	if not var_207_1 or var_207_1.transfer or not var_207_0 or (var_207_0.activeT or 0) >= (var_207_0.dur or 3) then
		return
	end

	local var_207_2 = var_0_22(arg_207_0, arg_207_1, 45, function(arg_208_0)
		if arg_208_0 == arg_207_3 or arg_208_0.hp >= arg_208_0.maxhp then
			return false
		end

		for iter_208_0, iter_208_1 in ipairs(arg_207_4 or {}) do
			if iter_208_1 ~= arg_207_2 and (iter_208_1.awakeningTarget == arg_208_0 or iter_208_1.awakeningRecipient == arg_208_0) then
				return false
			end
		end

		return true
	end, true)[1]

	if var_207_2 then
		var_207_1.transfer = {
			ring = arg_207_2,
			target = var_207_2
		}
		arg_207_2.awakeningTransferred = true
	end
end

function var_0_0.sealApplied(arg_209_0, arg_209_1, arg_209_2)
	if not arg_209_0 or not var_0_0.isV7(arg_209_1, arg_209_0) or not arg_209_2 or arg_209_2.side ~= "ally" then
		return
	end

	var_0_6(arg_209_1).alliedSeal = true
	var_0_6(arg_209_1).cc = true
end

function var_0_0.sealReleased(arg_210_0, arg_210_1)
	local var_210_0 = var_0_6(arg_210_1)

	if not var_210_0.alliedSeal then
		return
	end

	var_210_0.alliedSeal = nil

	if not var_0_3(arg_210_1) then
		return
	end

	local var_210_1 = var_0_22(arg_210_0, arg_210_1, math.huge, function(arg_211_0)
		return var_0_13(arg_211_0) and var_0_0.has(arg_211_0, "D15") and var_0_8(arg_211_0, arg_210_1) <= 45 and var_0_0.basicContact(arg_210_0, arg_211_0, arg_210_1)
	end)

	table.sort(var_210_1, function(arg_212_0, arg_212_1)
		return var_0_0.value(arg_212_0, "D15") > var_0_0.value(arg_212_1, "D15")
	end)

	if var_210_1[1] and var_0_27(arg_210_0, arg_210_1, "D15", 6) then
		var_0_21(arg_210_0, arg_210_1, "D15", var_0_0.value(var_210_1[1], "D15"), 2)
		var_0_27(arg_210_0, arg_210_1, "D15", 6, true)
	end
end

function var_0_0.guardTarget(arg_213_0, arg_213_1, arg_213_2, arg_213_3)
	if not var_0_0.isV7(arg_213_1, arg_213_0) or arg_213_3 or not var_0_13(arg_213_1) or var_0_17(arg_213_1) or arg_213_1.shotPending or var_0_16(arg_213_1) then
		return arg_213_2
	end

	local var_213_0 = var_0_20(arg_213_0, arg_213_1, "M22")
	local var_213_1 = var_0_6(arg_213_1).summonOwner

	if var_213_0 and var_0_3(var_213_1) and var_0_3(var_213_0.target) and var_0_9(arg_213_1, var_213_0.target) and (not arg_213_0._awakeningValid or arg_213_0._awakeningValid(var_213_0.target, arg_213_1, arg_213_0)) then
		return var_213_0.target
	end

	return arg_213_2
end

function var_0_0.redirectBasic(arg_214_0, arg_214_1, arg_214_2)
	if not var_0_0.isV7(arg_214_1, arg_214_0) or not var_0_13(arg_214_1) or var_0_15(arg_214_1) or not var_0_20(arg_214_0, arg_214_1, "J08") then
		return arg_214_2
	end

	var_0_6(arg_214_1).tokens.J08 = nil

	for iter_214_0, iter_214_1 in ipairs(var_0_26(arg_214_0, arg_214_1, 40)) do
		if iter_214_1 ~= arg_214_1 and var_0_0.basicContact(arg_214_0, arg_214_1, iter_214_1) and not iter_214_1.invuln and (iter_214_1._invulnT or 0) <= 0 then
			var_0_6(arg_214_1).confusedTarget = iter_214_1

			return iter_214_1
		end
	end

	return arg_214_2
end

function var_0_0.confusedDamage(arg_215_0, arg_215_1, arg_215_2)
	local var_215_0 = arg_215_2 and (arg_215_2.awakeningAction or arg_215_2.projectile and arg_215_2.projectile.awakeningAction) or arg_215_1 and var_0_6(arg_215_1).action

	return var_215_0 and var_215_0.confused and not var_0_31(arg_215_2) and (not arg_215_2 or not arg_215_2.dot and not arg_215_2.burn and not arg_215_2.poison and not arg_215_2.bleed)
end

function var_0_0.skillMetric(arg_216_0, arg_216_1, arg_216_2, arg_216_3)
	if not var_0_0.isModern(arg_216_0) then
		return var_0_29.skillMetric(arg_216_0, arg_216_1, arg_216_2, arg_216_3)
	end

	if not var_0_0.has(arg_216_0, "D14") or not arg_216_1 then
		return arg_216_2
	end

	local var_216_0 = (arg_216_1.x or 0) - (arg_216_0.x or 0)

	if var_216_0 * (arg_216_0._attackFacing or arg_216_0.facing or 1) <= 0 then
		return arg_216_2
	end

	local var_216_1 = math.max(0, math.abs(var_216_0) - var_0_0.value(arg_216_0, "D14"))

	return math.max(0, arg_216_2 - var_216_0 * var_216_0 + var_216_1 * var_216_1)
end

function var_0_0.originalBasicType(arg_217_0, arg_217_1)
	local var_217_0 = var_0_6(arg_217_0)

	if not var_217_0.originalTypeBound then
		var_217_0.originalMelee = not arg_217_1
		var_217_0.originalTypeBound = true
	end
end

function var_0_0.basicBox(arg_218_0, arg_218_1, arg_218_2, arg_218_3, arg_218_4)
	if not var_0_0.isModern(arg_218_0) or not var_0_0.has(arg_218_0, "W15") then
		return arg_218_1, arg_218_2, arg_218_3, arg_218_4
	end

	local var_218_0 = 1 + var_0_0.value(arg_218_0, "W15") / 100
	local var_218_1 = (arg_218_1 + arg_218_3) / 2
	local var_218_2 = (arg_218_2 + arg_218_4) / 2

	return var_218_1 + (arg_218_1 - var_218_1) * var_218_0, var_218_2 + (arg_218_2 - var_218_2) * var_218_0, var_218_1 + (arg_218_3 - var_218_1) * var_218_0, var_218_2 + (arg_218_4 - var_218_2) * var_218_0
end

function var_0_0.basicVisual(arg_219_0, arg_219_1, arg_219_2, arg_219_3, arg_219_4)
	if not var_0_0.isModern(arg_219_0) or not var_0_0.has(arg_219_0, "W15") or not arg_219_0.anim or arg_219_0.anim.name ~= "attack" or var_0_16(arg_219_0) then
		return arg_219_1, arg_219_2, arg_219_3, arg_219_4
	end

	local var_219_0 = 1 + var_0_0.value(arg_219_0, "W15") / 100

	return (arg_219_0.x or 0) + (arg_219_1 - (arg_219_0.x or 0)) * var_219_0, (arg_219_0.y or 0) + (arg_219_2 - (arg_219_0.y or 0)) * var_219_0, arg_219_3 * var_219_0, arg_219_4 * var_219_0
end

local var_0_35 = {}

for iter_0_7, iter_0_8 in pairs(var_0_0) do
	if type(iter_0_8) == "function" then
		var_0_35[iter_0_7] = iter_0_8
	end
end

var_0_0.valuesV8 = {
	W01 = {
		15,
		20,
		25,
		28,
		30
	},
	W02 = {
		8,
		12,
		16,
		18,
		20
	},
	W03 = {
		12,
		18,
		24,
		27,
		30
	},
	W04 = {
		10,
		15,
		20,
		23,
		25
	},
	W05 = {
		8,
		12,
		16,
		18,
		20
	},
	W06 = {
		12,
		18,
		24,
		27,
		30
	},
	W09 = {
		8,
		12,
		16,
		18,
		20
	},
	W10 = {
		8,
		10,
		12,
		14,
		16
	},
	W11 = {
		10,
		14,
		18,
		21,
		24
	},
	W12 = {
		10,
		14,
		18,
		21,
		24
	},
	W13 = {
		10,
		15,
		20,
		23,
		25
	},
	W14 = {
		15,
		20,
		25,
		28,
		30
	},
	W15 = {
		12,
		18,
		24,
		27,
		30
	},
	W16 = {
		20,
		25,
		30,
		35,
		40
	},
	W17 = {
		25,
		35,
		45,
		50,
		55
	},
	W18 = {
		10,
		14,
		18,
		20,
		22
	},
	A01 = {
		8,
		12,
		16,
		18,
		20
	},
	A02 = {
		16,
		22,
		28,
		32,
		36
	},
	A04 = {
		8,
		12,
		16,
		18,
		20
	},
	A05 = {
		10,
		15,
		20,
		23,
		25
	},
	A07 = {
		8,
		12,
		16,
		18,
		20
	},
	A08 = {
		15,
		20,
		25,
		28,
		30
	},
	A09 = {
		30,
		35,
		40,
		45,
		50
	},
	A11 = {
		30,
		40,
		50,
		55,
		60
	},
	A12 = {
		10,
		15,
		20,
		23,
		25
	},
	A13 = {
		20,
		30,
		40,
		45,
		50
	},
	A14 = {
		8,
		12,
		16,
		18,
		20
	},
	A15 = {
		15,
		20,
		25,
		30,
		35
	},
	S01 = {
		8,
		12,
		16,
		18,
		20
	},
	S03 = {
		8,
		12,
		16,
		18,
		20
	},
	S04 = {
		20,
		30,
		40,
		45,
		50
	},
	S05 = {
		10,
		15,
		20,
		23,
		25
	},
	S06 = {
		10,
		15,
		20,
		23,
		25
	},
	S07 = {
		10,
		14,
		18,
		21,
		24
	},
	S08 = {
		6,
		9,
		12,
		14,
		16
	},
	S09 = {
		8,
		12,
		16,
		18,
		20
	},
	S10 = {
		12,
		18,
		24,
		27,
		30
	},
	S11 = {
		20,
		30,
		40,
		45,
		50
	},
	S12 = {
		8,
		12,
		16,
		18,
		20
	},
	S13 = {
		25,
		35,
		45,
		50,
		55
	},
	S14 = {
		5,
		10,
		15,
		18,
		20
	},
	S15 = {
		40,
		60,
		80,
		90,
		100
	},
	M01 = {
		10,
		15,
		20,
		23,
		25
	},
	M02 = {
		8,
		12,
		16,
		18,
		20
	},
	M03 = {
		8,
		12,
		16,
		18,
		20
	},
	M04 = {
		15,
		22,
		30,
		34,
		38
	},
	M05 = {
		6,
		9,
		12,
		14,
		16
	},
	M06 = {
		5,
		8,
		11,
		13,
		15
	},
	M08 = {
		20,
		25,
		30,
		35,
		40
	},
	M10 = {
		3,
		4,
		5,
		6,
		7
	},
	M11 = {
		15,
		20,
		25,
		28,
		30
	},
	M12 = {
		6,
		9,
		12,
		14,
		16
	},
	M13 = {
		60,
		70,
		80,
		90,
		100
	},
	M14 = {
		15,
		20,
		25,
		28,
		30
	},
	M15 = {
		25,
		30,
		35,
		40,
		45
	},
	M16 = {
		12,
		18,
		24,
		27,
		30
	},
	M17 = {
		6,
		9,
		12,
		14,
		16
	},
	M18 = {
		-20,
		-17,
		-15,
		-12,
		-10
	},
	M19 = {
		8,
		12,
		16,
		18,
		20
	},
	M20 = {
		20,
		30,
		40,
		45,
		50
	},
	M22 = {
		6,
		9,
		12,
		14,
		16
	},
	M23 = {
		10,
		14,
		18,
		21,
		24
	},
	M24 = {
		8,
		12,
		16,
		18,
		20
	},
	H01 = {
		20,
		30,
		40,
		45,
		50
	},
	H02 = {
		4,
		6,
		8,
		9,
		10
	},
	H03 = {
		8,
		12,
		16,
		18,
		20
	},
	H04 = {
		10,
		15,
		20,
		23,
		25
	},
	H05 = {
		10,
		15,
		20,
		23,
		25
	},
	H07 = {
		8,
		12,
		16,
		18,
		20
	},
	H08 = {
		10,
		15,
		20,
		23,
		25
	},
	H09 = {
		20,
		30,
		40,
		45,
		50
	},
	H10 = {
		15,
		22,
		30,
		34,
		38
	},
	H11 = {
		10,
		15,
		20,
		23,
		25
	},
	H12 = {
		6,
		9,
		12,
		14,
		16
	},
	H13 = {
		15,
		22,
		30,
		34,
		38
	},
	H14 = {
		9,
		8,
		7,
		6,
		5
	},
	H15 = {
		6,
		9,
		12,
		14,
		16
	},
	D01 = {
		2,
		3,
		4,
		4.5,
		5
	},
	D02 = {
		15,
		20,
		25,
		28,
		30
	},
	D03 = {
		8,
		12,
		16,
		18,
		20
	},
	D04 = {
		8,
		12,
		16,
		18,
		20
	},
	D05 = {
		8,
		12,
		16,
		18,
		20
	},
	D06 = {
		10,
		15,
		20,
		23,
		25
	},
	D08 = {
		15,
		20,
		25,
		28,
		30
	},
	D10 = {
		8,
		12,
		16,
		18,
		20
	},
	D11 = {
		6,
		9,
		12,
		14,
		16
	},
	D12 = {
		12,
		18,
		24,
		27,
		30
	},
	D13 = {
		10,
		15,
		20,
		23,
		25
	},
	D14 = {
		10,
		14,
		18,
		22,
		25
	},
	D15 = {
		5,
		7,
		9,
		10,
		12
	},
	J01 = {
		6,
		9,
		12,
		14,
		16
	},
	J02 = {
		5,
		7,
		9,
		10,
		12
	},
	J04 = {
		5,
		7,
		10,
		12,
		15
	},
	J05 = {
		10,
		15,
		20,
		23,
		25
	},
	J06 = {
		6,
		9,
		12,
		14,
		16
	},
	J07 = {
		15,
		20,
		25,
		28,
		30
	},
	J08 = {
		60,
		70,
		80,
		90,
		100
	},
	J09 = {
		10,
		15,
		20,
		23,
		25
	},
	J10 = {
		15,
		20,
		25,
		28,
		30
	},
	J11 = {
		40,
		60,
		80,
		90,
		100
	},
	J12 = {
		30,
		45,
		60,
		70,
		80
	},
	J13 = {
		20,
		35,
		50,
		65,
		80
	},
	J14 = {
		30,
		40,
		50,
		55,
		60
	},
	J15 = {
		8,
		11,
		14,
		16,
		18
	},
	J16 = {
		10,
		15,
		20,
		23,
		25
	}
}

local function var_0_36(arg_220_0)
	return arg_220_0 and (arg_220_0.basicAttack or arg_220_0.battleSkillDamage or arg_220_0.skillDamage or arg_220_0.skillAttack or arg_220_0.skillBig) and not arg_220_0.awakeningDamage and not arg_220_0.indirect and not arg_220_0.itemDamage and not arg_220_0.imprintDamage and not arg_220_0.crossfireAttack and not arg_220_0.dot and not arg_220_0.burn and not arg_220_0.bleed and not arg_220_0.poison and not arg_220_0.selfDamage and not arg_220_0.reflected and not arg_220_0.execution and not arg_220_0.fixedDamage
end

local function var_0_37(arg_221_0)
	return arg_221_0 and (arg_221_0.battleSkillDamage or arg_221_0.skillDamage or arg_221_0.skillAttack or arg_221_0.skillBig)
end

local function var_0_38(arg_222_0)
	if not arg_222_0 then
		return false
	end

	if var_0_6(arg_222_0).originalMelee ~= nil then
		return var_0_6(arg_222_0).originalMelee
	end

	return not arg_222_0.isRanged and arg_222_0.role ~= "archer" and not ((arg_222_0.distance or 0) >= 100)
end

local function var_0_39(arg_223_0)
	local var_223_0 = arg_223_0 and arg_223_0.projectile

	return var_223_0 and not var_223_0.anchoredLaser and not var_223_0.laser and var_223_0.kind ~= "laser" and not var_223_0.beam and not var_223_0.groundEffect and not arg_223_0.groundEffect
end

local function var_0_40(arg_224_0, arg_224_1)
	return var_0_3(arg_224_0) and var_0_3(arg_224_1) and var_0_11(arg_224_0) == arg_224_1 and var_0_9(arg_224_0, arg_224_1) and (var_0_17(arg_224_0) or arg_224_0.shotPending or var_0_16(arg_224_0) or arg_224_0._awakening and not arg_224_0._awakening.moving and var_0_8(arg_224_0, arg_224_1) <= (arg_224_0.distance or 50) + 1)
end

local function var_0_41(arg_225_0)
	return var_0_0.ownShield(arg_225_0) or arg_225_0.skill and arg_225_0.skill.kind == "CrushingCounter" and arg_225_0.skill.state == "active" and arg_225_0.skill.counterCast and arg_225_0.anim and arg_225_0.anim.frame == 3 or arg_225_0._ironwallChallengeBlocking or (arg_225_0.guardianChallengeDR or 0) > 0 or arg_225_0.guardbladeDR and (arg_225_0.guardbladeDR.dur or 0) > 0 or arg_225_0.skill and (arg_225_0.skill.kind == "ShieldWall" or arg_225_0.skill.kind == "CounterStance" or arg_225_0.skill.kind == "HolyBarrier") and var_0_16(arg_225_0)
end

local function var_0_42(arg_226_0, arg_226_1)
	for iter_226_0, iter_226_1 in ipairs(var_0_26(arg_226_0, arg_226_1, 40)) do
		if iter_226_1 ~= arg_226_1 then
			return false
		end
	end

	return true
end

local function var_0_43(arg_227_0, arg_227_1, arg_227_2, arg_227_3)
	local var_227_0 = var_0_6(arg_227_0)

	var_227_0.charges = var_227_0.charges or {}

	local var_227_1 = var_227_0.charges[arg_227_1] or {
		sources = {}
	}

	var_227_0.charges[arg_227_1] = var_227_1
	var_227_1.sources[arg_227_3 or arg_227_0] = arg_227_2
end

local function var_0_44(arg_228_0, arg_228_1)
	local var_228_0 = var_0_6(arg_228_0)
	local var_228_1 = var_228_0.charges and var_228_0.charges[arg_228_1]

	if var_228_0.charges then
		var_228_0.charges[arg_228_1] = nil
	end

	local var_228_2 = 0
	local var_228_3

	for iter_228_0, iter_228_1 in pairs(var_228_1 and var_228_1.sources or {}) do
		if var_0_3(iter_228_0) and var_228_2 < iter_228_1 then
			var_228_2, var_228_3 = iter_228_1, iter_228_0
		end
	end

	return var_228_2, var_228_3
end

local function var_0_45(arg_229_0, arg_229_1)
	return arg_229_0 and (var_0_37(arg_229_1) and (arg_229_1.awakeningCast or var_0_6(arg_229_0).cast) or arg_229_1.awakeningAction or var_0_6(arg_229_0).action)
end

function var_0_0.beginBattle(arg_230_0)
	var_0_35.beginBattle(arg_230_0)

	if not var_0_0.isV8(nil, arg_230_0) then
		return
	end

	arg_230_0._awakening.budget = {}

	for iter_230_0, iter_230_1 in ipairs(arg_230_0.allies or {}) do
		if var_0_0.has(iter_230_1, "J15") then
			local var_230_0 = var_0_22(arg_230_0, iter_230_1, 45, function(arg_231_0)
				return var_0_5(arg_231_0) ~= var_0_5(iter_230_1)
			end)[1]

			if var_230_0 then
				var_0_0.shield(arg_230_0, var_230_0, "J15", var_0_6(var_230_0).startHP * var_0_0.value(iter_230_1, "J15") / 100)
			end
		end
	end
end

function var_0_0.heal(arg_232_0, arg_232_1, arg_232_2)
	if not var_0_0.isV8(arg_232_1, arg_232_0) then
		return var_0_35.heal(arg_232_0, arg_232_1, arg_232_2)
	end

	if not var_0_3(arg_232_1) then
		return 0
	end

	local var_232_0 = math.max(0, math.min(arg_232_2 or 0, (arg_232_1.maxhp or 0) - (arg_232_1.hp or 0)))

	arg_232_1.hp = arg_232_1.hp + var_232_0

	return var_232_0
end

function var_0_0.shield(arg_233_0, arg_233_1, arg_233_2, arg_233_3, arg_233_4)
	if not var_0_0.isV8(arg_233_1, arg_233_0) then
		return var_0_35.shield(arg_233_0, arg_233_1, arg_233_2, arg_233_3, arg_233_4)
	end

	if not var_0_3(arg_233_1) then
		return 0
	end

	local var_233_0 = var_0_6(arg_233_1)

	var_233_0.shields = var_233_0.shields or {}

	local var_233_1 = var_233_0.shields[arg_233_2] and var_233_0.shields[arg_233_2].amount or 0

	var_233_0.shields[arg_233_2] = {
		amount = math.max(var_233_1, arg_233_3),
		expires = math.huge
	}

	return math.max(0, arg_233_3 - var_233_1)
end

function var_0_0.skillBegin(arg_234_0)
	if not var_0_0.isV8(arg_234_0) then
		return var_0_35.skillBegin(arg_234_0)
	end

	local var_234_0 = arg_234_0 and arg_234_0._awakeningBattle

	if not var_234_0 then
		return
	end

	local var_234_1 = var_0_6(arg_234_0)

	if var_234_1.cast and var_234_1.cast.skill == arg_234_0.skill and not var_234_1.cast.finished and var_0_16(arg_234_0) then
		return
	end

	if var_234_1.action and not var_234_1.action.released then
		var_234_1.action.finished = true
		var_234_1.action.cancelled = true
	end

	if var_234_1.cast and not var_234_1.cast.effectsFinished then
		var_234_1.casts = var_234_1.casts or {}
		var_234_1.casts[#var_234_1.casts + 1] = var_234_1.cast
		var_234_1.cast.finished = true
	end

	var_234_1.castSerial = (var_234_1.castSerial or 0) + 1

	local var_234_2 = {}

	for iter_234_0, iter_234_1 in ipairs(var_0_22(var_234_0, arg_234_0, 40, function(arg_235_0)
		return var_0_5(arg_235_0) ~= var_0_5(arg_234_0)
	end)) do
		var_234_2[var_0_5(iter_234_1)] = true
	end

	local var_234_3 = 0

	for iter_234_2 in pairs(var_234_2) do
		var_234_3 = var_234_3 + 1
	end

	var_234_1.cast = {
		credit = 0,
		at = var_0_7(var_234_0),
		id = var_234_1.castSerial,
		skill = arg_234_0.skill,
		hits = {},
		target = var_0_11(arg_234_0),
		symbolBonus = math.min(3, var_234_3) * var_0_0.value(arg_234_0, "M10")
	}

	var_0_0.damageActionStart(arg_234_0, var_234_1.cast, true)
end

function var_0_0.damageActionStart(arg_236_0, arg_236_1, arg_236_2, arg_236_3)
	if not var_0_0.isV8(arg_236_0) or not arg_236_1 or arg_236_1.weaknessBound then
		return
	end

	if arg_236_3 == nil then
		arg_236_3 = not arg_236_2 or arg_236_0.side == "enemy" or require("src.data.skill").isAttackSkillKind(arg_236_0.skill and arg_236_0.skill.kind)
	end

	if not arg_236_3 then
		return
	end

	arg_236_1.weaknessBound = true
	arg_236_1.J02, arg_236_1.J02Owner = var_0_44(arg_236_0, "J02")

	if arg_236_2 then
		arg_236_1.M12, arg_236_1.M12Owner = var_0_44(arg_236_0, "M12")
	end
end

function var_0_0.enemySkillBegin(arg_237_0, arg_237_1)
	if not var_0_0.isV8(arg_237_1, arg_237_0) then
		return var_0_35.enemySkillBegin(arg_237_0, arg_237_1)
	end

	if not arg_237_0._awakening or not arg_237_1 then
		return
	end

	local var_237_0 = var_0_6(arg_237_1)

	if var_237_0.cast and var_237_0.cast.enemyActiveSeen and not var_237_0.cast.finished and var_0_16(arg_237_1) then
		return
	end

	var_237_0.cast = {
		at = var_0_7(arg_237_0),
		hits = {},
		target = var_0_11(arg_237_1),
		enemyActiveSeen = var_0_16(arg_237_1)
	}

	local var_237_1 = arg_237_1._summonPending or arg_237_1._batSummonCasting or arg_237_1._howlPending or arg_237_1._berserkPending or arg_237_1._berserkAuraPending or arg_237_1._archRageCasting or arg_237_1._huntingCommandCasting or arg_237_1._lizardWarlordRoarCasting

	var_0_0.damageActionStart(arg_237_1, var_237_0.cast, true, not var_237_1 and arg_237_1._awakeningNonDamagingCast ~= true)
end

function var_0_0.basicStart(arg_238_0, arg_238_1, arg_238_2)
	if not var_0_0.isV8(arg_238_1, arg_238_0) then
		return var_0_35.basicStart(arg_238_0, arg_238_1, arg_238_2)
	end

	if not arg_238_0 or not arg_238_0._awakening or not arg_238_1 or arg_238_1._crossfireAttackMotion then
		return
	end

	local var_238_0 = var_0_6(arg_238_1)

	if var_238_0.action and not var_238_0.action.finished then
		var_238_0.actions = var_238_0.actions or {}
		var_238_0.actions[#var_238_0.actions + 1] = var_238_0.action
	end

	var_238_0.serial = (var_238_0.serial or 0) + 1
	var_238_0.target = arg_238_2

	if var_238_0.focusTarget ~= arg_238_2 or not var_0_3(arg_238_2) then
		var_238_0.focusCount = 0
		var_238_0.focusTarget = arg_238_2
	end

	local var_238_1 = {
		bonus = 0,
		id = var_238_0.serial,
		target = arg_238_2,
		at = var_0_7(arg_238_0),
		hits = {},
		focus = math.min(5, var_238_0.focusCount or 0),
		travel = (var_238_0.travel or 0) >= 30
	}

	var_238_0.action = var_238_1
	var_238_1.h13Targets = {}

	for iter_238_0, iter_238_1 in ipairs(var_0_26(arg_238_0, arg_238_1, math.huge)) do
		if not (var_238_0.firstEnemies or {})[iter_238_1] then
			var_238_1.h13Targets[iter_238_1] = true
		end
	end

	var_238_1.h13 = var_238_1.h13Targets[arg_238_2]

	if var_238_0.redirect and var_238_0.redirect.target == arg_238_2 then
		var_238_1.confused = true
		var_238_1.confusedPercent = var_238_0.redirect.p
		var_238_0.redirect = nil
	end

	var_0_0.damageActionStart(arg_238_1, var_238_1, false)
end

function var_0_0.basicRelease(arg_239_0, arg_239_1)
	if not var_0_0.isV8(arg_239_1, arg_239_0) then
		return var_0_35.basicRelease(arg_239_0, arg_239_1)
	end

	if not arg_239_1 or not arg_239_0._awakening then
		return
	end

	local var_239_0 = var_0_6(arg_239_1).action

	if not var_239_0 or var_239_0.released then
		return
	end

	var_0_6(arg_239_1).firstBasic = true
	var_0_6(arg_239_1).h01 = false
	var_239_0.released = true
	var_239_0.bonus = var_0_44(arg_239_1, "W02")
	var_239_0.s13 = var_0_44(arg_239_1, "S13")
	var_239_0.crowded = #var_0_26(arg_239_0, arg_239_1, 40) >= 2
	var_239_0.alone = not var_0_22(arg_239_0, arg_239_1, 40)[1]
end

function var_0_0.basicTargets(arg_240_0, arg_240_1, arg_240_2, arg_240_3, arg_240_4)
	if not var_0_0.isV8(arg_240_1, arg_240_0) then
		return
	end

	local var_240_0 = var_0_6(arg_240_1).action

	if not var_240_0 then
		return
	end

	var_240_0.nativeTargets = arg_240_2
	var_240_0.capacity = arg_240_3 or 1
	var_240_0.contains = arg_240_4
	var_240_0.targetCount = #arg_240_2
end

function var_0_0.basicBonus(arg_241_0, arg_241_1, arg_241_2, arg_241_3)
	if not var_0_0.isV8(arg_241_1, arg_241_0) then
		return var_0_35.basicBonus(arg_241_0, arg_241_1, arg_241_2, arg_241_3)
	end

	if not arg_241_1 or not arg_241_2 then
		return 0
	end

	arg_241_3 = arg_241_3 or {}

	local var_241_0 = arg_241_3.bonus or 0
	local var_241_1 = var_0_8(arg_241_1, arg_241_2)
	local var_241_2 = (arg_241_2.hp or 0) / math.max(1, arg_241_2.maxhp or 1)

	local function var_241_3(arg_242_0, arg_242_1)
		if arg_242_1 then
			var_241_0 = var_241_0 + var_0_0.value(arg_241_1, arg_242_0)
		end
	end

	var_241_3("W04", arg_241_3.crowded)
	var_241_3("W05", (arg_241_3.targetCount or 1) == 1)
	var_241_3("W12", var_241_2 <= 0.3)

	if var_0_0.has(arg_241_1, "W18") then
		var_241_0 = var_241_0 - 10
	end

	var_241_3("A01", var_241_1 >= 100)
	var_241_3("A02", var_241_1 <= 45)
	var_241_3("A05", arg_241_3.alone)
	var_241_3("A09", true)

	for iter_241_0, iter_241_1 in ipairs(var_0_22(arg_241_0, arg_241_1, math.huge)) do
		if var_0_40(iter_241_1, arg_241_2) then
			var_241_3("A04", true)

			break
		end
	end

	var_241_3("S01", var_241_1 > 45)
	var_241_3("S03", var_0_24(arg_241_0, arg_241_1, 45))
	var_241_3("S07", var_241_2 >= 0.7)
	var_241_3("H04", not var_0_38(arg_241_2))
	var_241_3("H07", var_0_22(arg_241_0, arg_241_1, 40)[1])
	var_241_3("H08", var_0_6(arg_241_2).groundMoving)
	var_241_3("H13", arg_241_3.h13Targets and arg_241_3.h13Targets[arg_241_2] or not arg_241_3.h13Targets and arg_241_3.h13 and arg_241_3.target == arg_241_2)
	var_241_3("D02", var_0_16(arg_241_2))
	var_241_3("D03", var_0_42(arg_241_0, arg_241_2))
	var_241_3("D05", var_0_40(arg_241_2, arg_241_1))
	var_241_3("D08", true)

	if arg_241_3.target == arg_241_2 then
		var_241_0 = var_241_0 + (arg_241_3.focus or 0) * var_0_0.value(arg_241_1, "D01")
	end

	local var_241_4 = {
		M06 = 0,
		W18 = 0
	}

	for iter_241_2, iter_241_3 in ipairs(arg_241_0.allies or {}) do
		if var_0_12(iter_241_3) and var_0_13(iter_241_3) then
			if var_0_0.has(iter_241_3, "M06") and var_0_22(arg_241_0, iter_241_3, 45, function(arg_243_0)
				return var_0_5(arg_243_0) ~= var_0_5(iter_241_3) and var_0_38(arg_243_0)
			end)[1] == arg_241_1 then
				var_241_4.M06 = math.max(var_241_4.M06, var_0_0.value(iter_241_3, "M06"))
			end

			if var_0_0.has(iter_241_3, "W18") and var_0_25(arg_241_0, iter_241_3, 45) == arg_241_1 then
				var_241_4.W18 = math.max(var_241_4.W18, var_0_0.value(iter_241_3, "W18"))
			end
		end
	end

	var_241_0 = var_241_0 + var_241_4.M06 + var_241_4.W18

	if arg_241_1._tricksterCharm and var_0_3(var_0_6(arg_241_1).charmOwner) then
		var_241_0 = var_241_0 + var_0_0.value(var_0_6(arg_241_1).charmOwner, "J09")
	end

	local var_241_5 = var_0_6(arg_241_1).summonOwner

	if var_0_3(var_241_5) and var_0_0.guardTarget(arg_241_0, arg_241_1, nil, false) == arg_241_2 then
		var_241_0 = var_241_0 + var_0_0.value(var_241_5, "M22")
	end

	return var_241_0 / 100
end

function var_0_0.basicRange(arg_244_0, arg_244_1, arg_244_2, arg_244_3, arg_244_4)
	if not var_0_0.isV8(arg_244_1, arg_244_0) then
		return var_0_35.basicRange(arg_244_0, arg_244_1, arg_244_2, arg_244_3, arg_244_4)
	end

	if not arg_244_0 or not arg_244_1 then
		return arg_244_3
	end

	local var_244_0 = arg_244_3 * var_0_0.value(arg_244_1, "W15") / 100 + var_0_0.value(arg_244_1, "A08")

	if (var_0_0.value(arg_244_1, "S09") > 0 or var_0_0.value(arg_244_1, "J05") > 0) and var_0_24(arg_244_0, arg_244_1, 45) then
		var_244_0 = var_244_0 + var_0_0.value(arg_244_1, "S09") + var_0_0.value(arg_244_1, "J05")
	end

	local var_244_1 = 0

	if not var_0_38(arg_244_1) then
		for iter_244_0, iter_244_1 in ipairs(arg_244_0.allies or {}) do
			if var_0_12(iter_244_1) and var_0_13(iter_244_1) and var_0_0.has(iter_244_1, "A07") and var_0_40(iter_244_1, arg_244_1) then
				var_244_1 = math.max(var_244_1, var_0_0.value(iter_244_1, "A07"))
			end
		end
	end

	return (var_244_1 > 0 and math.max(55, arg_244_3 - var_244_1) or arg_244_3) + var_244_0
end

function var_0_0.beforeDamage(arg_245_0, arg_245_1, arg_245_2, arg_245_3, arg_245_4)
	if not var_0_0.isV8(arg_245_1, arg_245_0) then
		return var_0_35.beforeDamage(arg_245_0, arg_245_1, arg_245_2, arg_245_3, arg_245_4)
	end

	if not arg_245_0._awakening or not arg_245_1 or not var_0_36(arg_245_4) then
		return arg_245_3
	end

	local var_245_0 = 0

	if arg_245_4.basicAttack then
		var_0_0.basicRelease(arg_245_0, arg_245_1)

		var_245_0 = var_0_0.basicBonus(arg_245_0, arg_245_1, arg_245_2, arg_245_4.awakeningAction or var_0_6(arg_245_1).action) * 100
	elseif var_0_37(arg_245_4) then
		local var_245_1 = arg_245_4.awakeningCast or var_0_6(arg_245_1).cast

		var_245_0 = (var_245_1 and var_245_1.symbolBonus or 0) + var_0_0.value(arg_245_1, "A14")

		if var_0_0.has(arg_245_1, "M08") then
			var_245_0 = var_245_0 - 10
		end

		if var_0_0.has(arg_245_1, "D08") then
			var_245_0 = var_245_0 - 20
		end

		if arg_245_4.cycloneFinal then
			var_245_0 = var_245_0 + var_0_0.value(arg_245_1, "S15")
		end
	end

	local var_245_2 = 0

	for iter_245_0, iter_245_1 in pairs(var_0_6(arg_245_2).seals or {}) do
		if var_0_3(iter_245_0) and (iter_245_1.silence and (arg_245_2._condemningSealT or 0) > 0 or iter_245_1.freeze and (arg_245_2._frostSpikeFreezeT or 0) > 0) then
			var_245_2 = math.max(var_245_2, var_0_0.value(iter_245_0, "D15"))
		end
	end

	return arg_245_3 * math.max(0, 1 + (var_245_0 + var_245_2) / 100)
end

function var_0_0.splitDamage(arg_246_0, arg_246_1, arg_246_2, arg_246_3, arg_246_4)
	if var_0_0.isV8(arg_246_1, arg_246_0) then
		return arg_246_3
	end

	return var_0_35.splitDamage(arg_246_0, arg_246_1, arg_246_2, arg_246_3, arg_246_4)
end

function var_0_0.damageReduction(arg_247_0, arg_247_1, arg_247_2, arg_247_3)
	if not var_0_0.isV8(arg_247_1, arg_247_0) then
		return var_0_35.damageReduction(arg_247_0, arg_247_1, arg_247_2, arg_247_3)
	end

	arg_247_3 = arg_247_3 or {}

	if not arg_247_2 or arg_247_2 == arg_247_1 or arg_247_3.awakeningDamage or arg_247_3.indirect or arg_247_3.selfDamage or arg_247_3.reflected or arg_247_3.execution or arg_247_3.fixedDamage then
		return 1
	end

	local var_247_0 = {}

	local function var_247_1(arg_248_0, arg_248_1)
		var_247_0[arg_248_0] = math.max(var_247_0[arg_248_0] or 0, arg_248_1 or var_0_0.value(arg_247_1, arg_248_0))
	end

	local var_247_2 = arg_247_3.dot or arg_247_3.burn or arg_247_3.poison or arg_247_3.bleed
	local var_247_3 = arg_247_3.area_damage or arg_247_3.aoe or arg_247_3.areaDamage or arg_247_3.explosion
	local var_247_4 = var_0_39(arg_247_3)
	local var_247_5 = not var_247_4 and not arg_247_3.groundEffect and not arg_247_3.beam and var_0_38(arg_247_2)
	local var_247_6 = var_0_45(arg_247_2, arg_247_3)
	local var_247_7 = var_0_6(arg_247_1)

	if var_247_2 then
		if arg_247_3.burn or arg_247_3.poison or arg_247_3.bleed or arg_247_3.dotKind == "burn" or arg_247_3.dotKind == "poison" or arg_247_3.dotKind == "bleed" then
			var_247_1("J07")

			for iter_247_0, iter_247_1 in ipairs(arg_247_0.allies or {}) do
				if var_0_13(iter_247_1) and var_0_12(iter_247_1) and var_0_0.has(iter_247_1, "M16") and var_0_22(arg_247_0, iter_247_1, 40, nil, true)[1] == arg_247_1 then
					var_247_1("M16", var_0_0.value(iter_247_1, "M16"))
				end
			end
		end
	elseif var_0_36(arg_247_3) then
		if var_247_4 then
			if var_0_23(arg_247_1, arg_247_2) then
				var_247_1("W01")
			end

			if var_0_24(arg_247_0, arg_247_1, 45) then
				var_247_1("M02")
			end

			var_247_1("M05")
			var_247_1("D12")
		elseif var_247_5 and var_0_0.has(arg_247_1, "D12") then
			var_247_0.meleeRisk = -5
		end

		if #var_0_26(arg_247_0, arg_247_1, 40) >= 2 then
			var_247_1("W11")
		end

		if var_0_25(arg_247_0, arg_247_1, 45) then
			var_247_1("H03")

			if var_247_5 then
				var_247_1("D11")
			end
		end

		if var_247_7.moving and var_0_13(arg_247_1) then
			var_247_1("H02")
		end

		if var_0_42(arg_247_0, arg_247_2) then
			var_247_1("D10")
		end

		if var_247_3 and not var_0_22(arg_247_0, arg_247_1, 40)[1] then
			var_247_1("A12")
		end

		if var_247_5 and var_0_0.has(arg_247_1, "S04") then
			var_247_7.firstMelee = var_247_7.firstMelee or {}

			if var_247_6 then
				var_247_6.s04 = var_247_6.s04 or {}

				if var_247_6.s04[arg_247_1] == nil then
					var_247_6.s04[arg_247_1] = not var_247_7.firstMelee[arg_247_2]
				end
			end

			if var_247_6 and var_247_6.s04[arg_247_1] or not var_247_6 and not var_247_7.firstMelee[arg_247_2] then
				var_247_1("S04")
			end
		end

		if var_0_0.has(arg_247_1, "D06") then
			if var_247_6 then
				var_247_6.impactGuard = var_247_6.impactGuard or {}
			end

			local var_247_8 = var_247_6 and var_247_6.impactGuard[arg_247_1]

			if var_247_8 == nil then
				var_247_8 = (arg_247_3.nativeActionDamage or arg_247_3.awakeningPreDefenseDamage or 0) >= (var_247_7.startHP or arg_247_1.maxhp or 1) * 0.1

				if var_247_6 then
					var_247_6.impactGuard[arg_247_1] = var_247_8
				end
			end

			if var_247_8 then
				var_247_1("D06")
			end
		end

		if var_247_6 then
			if not var_247_6.J02Owner or var_0_3(var_247_6.J02Owner) then
				var_247_1("J02", var_247_6.J02 or 0)
			end

			if var_0_37(arg_247_3) and (not var_247_6.M12Owner or var_0_3(var_247_6.M12Owner)) then
				var_247_1("M12", var_247_6.M12 or 0)
			end
		end

		local var_247_9 = var_247_7.summonOwner

		if var_0_3(var_247_9) and #var_0_26(arg_247_0, arg_247_1, 40) >= 2 then
			var_247_1("M23", var_0_0.value(var_247_9, "M23"))
		end

		for iter_247_2, iter_247_3 in ipairs(arg_247_0.allies or {}) do
			if var_0_3(iter_247_3) and var_0_6(iter_247_3).summonOwner == arg_247_1 and var_0_9(arg_247_1, iter_247_3) and var_0_8(arg_247_1, iter_247_3) <= 45 then
				var_247_1("M24")

				break
			end
		end

		if arg_247_1._tricksterCharm and var_0_3(var_247_7.charmOwner) then
			var_247_1("J10", var_0_0.value(var_247_7.charmOwner, "J10"))
		end

		if var_247_3 then
			for iter_247_4, iter_247_5 in pairs(arg_247_1._victorySignalBuffs or {}) do
				if (iter_247_5.t or 0) > 0 then
					var_247_1("H12", var_0_0.value(iter_247_4, "H12"))
				end
			end
		end

		for iter_247_6, iter_247_7 in ipairs(arg_247_0.allies or {}) do
			if var_0_13(iter_247_7) and var_0_12(iter_247_7) then
				if var_247_4 and var_0_0.has(iter_247_7, "W03") and var_0_25(arg_247_0, iter_247_7, 45) == arg_247_1 then
					var_247_1("W03", var_0_0.value(iter_247_7, "W03"))
				end

				if var_0_0.has(iter_247_7, "W13") and var_0_41(iter_247_7) and var_0_25(arg_247_0, iter_247_7, 45) == arg_247_1 then
					var_247_1("W13", var_0_0.value(iter_247_7, "W13"))
				end

				if var_247_5 and var_0_0.has(iter_247_7, "S08") and var_0_25(arg_247_0, iter_247_7, 45) == arg_247_1 then
					var_247_1("S08", var_0_0.value(iter_247_7, "S08"))
				end

				if var_247_4 and var_0_0.has(iter_247_7, "S10") and var_0_22(arg_247_0, iter_247_7, 45, var_0_38)[1] == arg_247_1 then
					var_247_1("S10", var_0_0.value(iter_247_7, "S10"))
				end

				if var_0_37(arg_247_3) and var_0_0.has(iter_247_7, "M03") and var_0_22(arg_247_0, iter_247_7, 45)[1] == arg_247_1 then
					var_247_1("M03", var_0_0.value(iter_247_7, "M03"))
				end

				if var_247_4 and var_0_0.has(iter_247_7, "H15") then
					local var_247_10 = var_0_22(arg_247_0, iter_247_7, 40, var_0_38)[1]

					if var_247_10 and (iter_247_7 == arg_247_1 or var_247_10 == arg_247_1) then
						var_247_1("H15", var_0_0.value(iter_247_7, "H15"))
					end
				end

				if var_247_3 and var_0_0.has(iter_247_7, "M17") then
					local var_247_11 = var_247_6 and var_247_6.areaGuard and var_247_6.areaGuard[iter_247_7]

					if not var_247_11 then
						var_247_11 = var_0_22(arg_247_0, iter_247_7, 40)

						if var_247_6 then
							var_247_6.areaGuard = var_247_6.areaGuard or {}
							var_247_6.areaGuard[iter_247_7] = var_247_11
						end
					end

					if var_247_11[1] == arg_247_1 or var_247_11[2] == arg_247_1 then
						var_247_1("M17", var_0_0.value(iter_247_7, "M17"))
					end
				end
			end
		end
	end

	local var_247_12 = 0

	for iter_247_8, iter_247_9 in pairs(var_247_0) do
		var_247_12 = var_247_12 + iter_247_9
	end

	var_247_7.directReduction = not var_247_2 and math.min(40, var_247_12) or var_247_7.directReduction

	return math.max(0.6, 1 - var_247_12 / 100)
end

function var_0_0.impactSnapshot(arg_249_0, arg_249_1, arg_249_2, arg_249_3)
	if not var_0_0.isV8(arg_249_1, arg_249_0) or not arg_249_2 then
		return
	end

	arg_249_2.awakeningHPBefore = arg_249_1.hp or 0
	arg_249_2.awakeningShieldBefore = var_0_0.shieldCapacity(arg_249_0, arg_249_1)

	if arg_249_3 then
		arg_249_2.awakeningPreDefenseDamage = arg_249_3

		if arg_249_2.nativeActionHitCount then
			arg_249_2.nativeActionDamage = arg_249_3 * arg_249_2.nativeActionHitCount
		end
	end
end

function var_0_0.actualLoss(arg_250_0, arg_250_1, arg_250_2, arg_250_3)
	if not var_0_0.isV8(arg_250_1, arg_250_0) or not arg_250_3 or arg_250_3.awakeningHPBefore == nil then
		return arg_250_2
	end

	return math.min(math.max(0, arg_250_2), math.max(0, arg_250_3.awakeningHPBefore or 0)) + math.max(0, (arg_250_3.awakeningShieldBefore or 0) - var_0_0.shieldCapacity(arg_250_0, arg_250_1))
end

function var_0_0.onHurt(arg_251_0, arg_251_1, arg_251_2, arg_251_3, arg_251_4)
	if not var_0_0.isV8(arg_251_1, arg_251_0) then
		return var_0_35.onHurt(arg_251_0, arg_251_1, arg_251_2, arg_251_3, arg_251_4)
	end

	arg_251_3 = var_0_0.actualLoss(arg_251_0, arg_251_1, arg_251_3, arg_251_4)

	if not arg_251_0._awakening or not arg_251_2 or arg_251_2 == arg_251_1 or arg_251_2.side == arg_251_1.side or arg_251_3 <= 0 then
		return
	end

	local var_251_0 = var_0_6(arg_251_1)

	var_251_0.combatHurt = true

	if not var_0_36(arg_251_4) then
		return
	end

	var_251_0.h01 = false
	var_251_0.lastHurtSource = arg_251_2

	if not var_0_3(arg_251_1) then
		return
	end

	if var_0_0.has(arg_251_1, "W02") then
		var_0_43(arg_251_1, "W02", var_0_0.value(arg_251_1, "W02"))
	end

	if var_0_0.has(arg_251_1, "W09") then
		var_0_0.extra(arg_251_0, arg_251_1, arg_251_2, arg_251_3 * var_0_0.value(arg_251_1, "W09") / 100)
	end

	if var_0_39(arg_251_4) and var_0_0.has(arg_251_1, "J06") then
		var_0_0.extra(arg_251_0, arg_251_1, arg_251_2, arg_251_3 * var_0_0.value(arg_251_1, "J06") / 100)
	end

	if var_0_0.has(arg_251_1, "S04") and var_0_38(arg_251_2) and not var_0_39(arg_251_4) and not arg_251_4.groundEffect and not arg_251_4.beam then
		var_251_0.firstMelee = var_251_0.firstMelee or {}

		if not var_251_0.firstMelee[arg_251_2] then
			var_251_0.firstMelee[arg_251_2] = true

			var_0_0.knock(arg_251_0, arg_251_1, arg_251_2, 15)
		end
	end
end

function var_0_0.projectileContact(arg_252_0, arg_252_1)
	if not var_0_0.isV8(arg_252_0) then
		return var_0_35.projectileContact(arg_252_0, arg_252_1)
	end

	local var_252_0 = arg_252_1 and arg_252_1.projectile

	if var_0_0.has(arg_252_0, "M05") and var_0_36(arg_252_1) and var_0_39(arg_252_1) and var_252_0.pierce and not var_252_0.bossSpecial then
		if type(var_252_0.pierce) == "table" then
			var_252_0.pierce.additionalHits = 0
		end

		var_252_0._awakeningStopPierce = true
		var_252_0.alive = false
	end
end

function var_0_0.nativeBlock(arg_253_0, arg_253_1)
	if not var_0_0.isV8(arg_253_1, arg_253_0) then
		return var_0_35.nativeBlock(arg_253_0, arg_253_1)
	end
end

function var_0_0.intercept(arg_254_0, arg_254_1, arg_254_2, arg_254_3)
	if not var_0_0.isV8(arg_254_1, arg_254_0) then
		return var_0_35.intercept(arg_254_0, arg_254_1, arg_254_2, arg_254_3)
	end
end

function var_0_0.resolveInterception(arg_255_0, arg_255_1, arg_255_2)
	if var_0_0.isV8(arg_255_2, arg_255_0) then
		return false
	end

	return var_0_35.resolveInterception(arg_255_0, arg_255_1, arg_255_2)
end

function var_0_0.onDodge(arg_256_0, arg_256_1, arg_256_2, arg_256_3, arg_256_4)
	if not var_0_0.isV8(arg_256_1, arg_256_0) then
		return var_0_35.onDodge(arg_256_0, arg_256_1, arg_256_2, arg_256_3, arg_256_4)
	end
end

function var_0_0.ignoreDodge(arg_257_0, arg_257_1, arg_257_2, arg_257_3)
	if var_0_0.isV8(arg_257_1, arg_257_0) then
		return false
	end

	return var_0_35.ignoreDodge(arg_257_0, arg_257_1, arg_257_2, arg_257_3)
end

function var_0_0.onKnockback(arg_258_0, arg_258_1, arg_258_2)
	if not var_0_0.isV8(arg_258_1, arg_258_0) then
		return var_0_35.onKnockback(arg_258_0, arg_258_1, arg_258_2)
	end
end

function var_0_0.blockKnockback(arg_259_0, arg_259_1, arg_259_2)
	if not var_0_0.isV8(arg_259_1, arg_259_0) then
		return var_0_35.blockKnockback(arg_259_0, arg_259_1, arg_259_2)
	end

	return var_0_0.has(arg_259_1, "H02") and var_0_13(arg_259_1) and var_0_6(arg_259_1).moving == true
end

local function var_0_46(arg_260_0, arg_260_1, arg_260_2, arg_260_3, arg_260_4, arg_260_5)
	local var_260_0 = var_0_0.card(arg_260_0, arg_260_1, arg_260_2, arg_260_3)

	var_260_0.asset = arg_260_5 or arg_260_1.projectile or "Arrow"

	if type(var_260_0.asset) ~= "string" then
		var_260_0.asset = "Arrow"
	end

	if arg_260_4 then
		var_260_0.x, var_260_0.y = arg_260_4.x, arg_260_4.y
	end

	return var_260_0
end

local function var_0_47(arg_261_0, arg_261_1, arg_261_2, arg_261_3, arg_261_4)
	if not var_0_0.has(arg_261_1, arg_261_3) or arg_261_2[arg_261_3] or not arg_261_2.contains then
		return
	end

	for iter_261_0, iter_261_1 in ipairs(var_0_26(arg_261_0, arg_261_1, math.huge)) do
		if not arg_261_2.hits[iter_261_1] and not (arg_261_2.extras or {})[iter_261_1] and arg_261_2.contains(iter_261_1) then
			arg_261_2[arg_261_3] = true
			arg_261_2.extras = arg_261_2.extras or {}
			arg_261_2.extras[iter_261_1] = true

			local var_261_0

			for iter_261_2 in pairs(arg_261_2.projectiles or {}) do
				var_261_0 = iter_261_2.asset

				break
			end

			var_0_46(arg_261_0, arg_261_1, iter_261_1, arg_261_4, nil, var_261_0)

			return
		end
	end
end

function var_0_0.nativeProjectileArea(arg_262_0, arg_262_1, arg_262_2)
	if not arg_262_1 or not arg_262_2 or not arg_262_1.awakeningOrigin or not arg_262_0._awakeningProjectileContact then
		return false
	end

	local var_262_0 = arg_262_1.awakeningOrigin
	local var_262_1 = var_262_0.vx
	local var_262_2 = var_262_0.vy
	local var_262_3 = math.sqrt(var_262_1 * var_262_1 + var_262_2 * var_262_2)

	if var_262_3 < 0.001 then
		return false
	end

	local var_262_4 = (arg_262_2.colX or arg_262_2.x or 0) + (arg_262_2.colW or 0) * 0.5
	local var_262_5 = (arg_262_2.colY or arg_262_2.y or 0) + (arg_262_2.colH or 0) * 0.5
	local var_262_6 = ((var_262_4 - var_262_0.x) * var_262_1 + (var_262_5 - var_262_0.y) * var_262_2) / var_262_3

	if var_262_6 < 0 or var_262_6 > var_262_0.reach then
		return false
	end

	local var_262_7 = {}

	for iter_262_0, iter_262_1 in pairs(arg_262_1) do
		var_262_7[iter_262_0] = iter_262_1
	end

	var_262_7.x = var_262_0.x + var_262_1 / var_262_3 * var_262_6
	var_262_7.y = var_262_0.y + var_262_2 / var_262_3 * var_262_6
	var_262_7.colX = (arg_262_1.colX or arg_262_1.x) - (arg_262_1.x or 0) + var_262_7.x
	var_262_7.colY = (arg_262_1.colY or arg_262_1.y) - (arg_262_1.y or 0) + var_262_7.y

	return arg_262_0._awakeningProjectileContact(var_262_7, arg_262_2)
end

function var_0_0.skillCircle(arg_263_0, arg_263_1, arg_263_2, arg_263_3, arg_263_4, arg_263_5)
	var_0_0.skillTargets(arg_263_0, arg_263_1, arg_263_5 or {}, arg_263_4, function(arg_264_0)
		return var_0_9(arg_263_1, arg_264_0) and var_0_8(arg_263_2, arg_264_0) <= arg_263_3
	end)
end

function var_0_0.finishBasic(arg_265_0, arg_265_1, arg_265_2)
	if not var_0_0.isV8(arg_265_1, arg_265_0) then
		return var_0_35.finishBasic(arg_265_0, arg_265_1, arg_265_2)
	end

	if not arg_265_2 or arg_265_2.finished then
		return
	end

	arg_265_2.finished = true

	if not var_0_3(arg_265_1) then
		return
	end

	local var_265_0 = var_0_6(arg_265_1)
	local var_265_1 = arg_265_2.target

	if not arg_265_2.hits[var_265_1] then
		var_265_0.focusCount = 0

		return
	end

	var_265_0.focusCount = var_265_0.focusTarget == var_265_1 and math.min(5, (var_265_0.focusCount or 0) + 1) or 1
	var_265_0.focusTarget = var_265_1
	arg_265_2.extras = arg_265_2.extras or {}

	if arg_265_2.s13 and arg_265_2.s13 > 0 then
		var_0_0.extra(arg_265_0, arg_265_1, var_265_1, (arg_265_1.dmg or 0) * arg_265_2.s13 / 100)
	end

	if var_0_0.has(arg_265_1, "D04") then
		for iter_265_0, iter_265_1 in ipairs(var_0_22(arg_265_0, arg_265_1, 45, var_0_38)) do
			if var_0_40(iter_265_1, var_265_1) then
				var_0_0.extra(arg_265_0, arg_265_1, var_265_1, (arg_265_1.dmg or 0) * var_0_0.value(arg_265_1, "D04") / 100)

				break
			end
		end
	end

	if var_0_0.has(arg_265_1, "H05") and arg_265_2.travel then
		var_265_0.travel = 0

		for iter_265_2, iter_265_3 in ipairs(var_0_26(arg_265_0, var_265_1, 40)) do
			if iter_265_3 ~= var_265_1 and not arg_265_2.hits[iter_265_3] and var_0_9(arg_265_1, iter_265_3) then
				var_0_46(arg_265_0, arg_265_1, iter_265_3, (arg_265_1.dmg or 0) * var_0_0.value(arg_265_1, "H05") / 100)

				break
			end
		end
	end

	if var_0_0.has(arg_265_1, "S06") then
		for iter_265_4, iter_265_5 in ipairs(var_0_26(arg_265_0, var_265_1, math.sqrt(1450))) do
			local var_265_2, var_265_3 = var_0_0.groundPoint(var_265_1, arg_265_0)
			local var_265_4, var_265_5 = var_0_0.groundPoint(iter_265_5, arg_265_0)
			local var_265_6 = (var_265_4 - var_265_2) * var_0_10(arg_265_1)

			if not arg_265_2.hits[iter_265_5] and var_265_6 > 0 and var_265_6 <= 35 and math.abs(var_265_5 - var_265_3) <= 15 then
				arg_265_2.extras[iter_265_5] = true

				var_0_0.extra(arg_265_0, arg_265_1, iter_265_5, (arg_265_1.dmg or 0) * var_0_0.value(arg_265_1, "S06") / 100)

				break
			end
		end
	end

	if var_0_0.has(arg_265_1, "S12") then
		for iter_265_6, iter_265_7 in ipairs(var_0_26(arg_265_0, arg_265_1, math.huge)) do
			local var_265_7 = ((iter_265_7.x or 0) - (arg_265_1.x or 0)) * var_0_10(arg_265_1)

			if not arg_265_2.hits[iter_265_7] and not arg_265_2.extras[iter_265_7] and var_265_7 / math.max(0.001, var_0_8(arg_265_1, iter_265_7)) < math.cos(math.pi / 6) and var_0_0.basicContact(arg_265_0, arg_265_1, iter_265_7) then
				arg_265_2.extras[iter_265_7] = true

				var_0_0.extra(arg_265_0, arg_265_1, iter_265_7, (arg_265_1.dmg or 0) * var_0_0.value(arg_265_1, "S12") / 100)

				break
			end
		end
	end

	if (arg_265_2.capacity or 1) > 1 then
		var_0_47(arg_265_0, arg_265_1, arg_265_2, "W14", (arg_265_1.dmg or 0) * var_0_0.value(arg_265_1, "W14") / 100)
	end

	for iter_265_8, iter_265_9 in pairs(arg_265_2.j04 or {}) do
		if var_0_3(iter_265_9.target) and var_0_13(iter_265_8) and var_0_13(arg_265_1) and var_0_9(iter_265_8, arg_265_1) and var_0_8(iter_265_8, arg_265_1) <= 45 then
			var_0_46(arg_265_0, iter_265_8, iter_265_9.target, iter_265_9.amount, arg_265_1, "JesterCard")
		end
	end
end

function var_0_0.finishSkill(arg_266_0, arg_266_1, arg_266_2)
	if not arg_266_2 or arg_266_2.effectsFinished then
		return
	end

	arg_266_2.effectsFinished = true

	if not var_0_3(arg_266_1) then
		return
	end

	if (arg_266_2.capacity or 1) > 1 then
		var_0_47(arg_266_0, arg_266_1, arg_266_2, "W14", (arg_266_1.dmg or 0) * var_0_0.value(arg_266_1, "W14") / 100)
	end

	if arg_266_2.multiShot then
		var_0_47(arg_266_0, arg_266_1, arg_266_2, "A11", (arg_266_2.nativePerTarget or 0) * var_0_0.value(arg_266_1, "A11") / 100)
	end
end

function var_0_0.skillTargets(arg_267_0, arg_267_1, arg_267_2, arg_267_3, arg_267_4, arg_267_5)
	if not var_0_0.isV8(arg_267_1, arg_267_0) then
		return
	end

	local var_267_0 = var_0_6(arg_267_1).cast

	if not var_267_0 then
		return
	end

	var_267_0.targets = arg_267_2
	var_267_0.capacity = arg_267_3 or 1
	var_267_0.contains = arg_267_4
	var_267_0.multiShot = arg_267_5
end

function var_0_0.afterDamage(arg_268_0, arg_268_1, arg_268_2, arg_268_3, arg_268_4)
	if not var_0_0.isV8(arg_268_1, arg_268_0) then
		return var_0_35.afterDamage(arg_268_0, arg_268_1, arg_268_2, arg_268_3, arg_268_4)
	end

	arg_268_3 = var_0_0.actualLoss(arg_268_0, arg_268_2, arg_268_3, arg_268_4)

	if not arg_268_0._awakening or not arg_268_1 or arg_268_3 <= 0 or not var_0_36(arg_268_4) then
		return
	end

	var_0_6(arg_268_2).combatHurt = true
	var_0_6(arg_268_2).lastHurtSource = arg_268_1

	local var_268_0 = var_0_45(arg_268_1, arg_268_4)

	if not var_268_0 or var_268_0.confused then
		return
	end

	local var_268_1 = not var_268_0.hits[arg_268_2]

	var_268_0.hits[arg_268_2] = true
	var_268_0.success = true

	if arg_268_4.basicAttack then
		if not var_268_0.firstVictim then
			var_268_0.firstVictim = arg_268_2
		end

		if var_0_12(arg_268_1) and var_268_0.firstVictim == arg_268_2 then
			var_268_0.j04 = var_268_0.j04 or {}

			for iter_268_0, iter_268_1 in ipairs(arg_268_0.allies or {}) do
				if var_0_13(iter_268_1) and var_0_12(iter_268_1) and var_0_0.has(iter_268_1, "J04") and var_0_22(arg_268_0, iter_268_1, 45, function(arg_269_0)
					return var_0_5(arg_269_0) ~= var_0_5(iter_268_1)
				end)[1] == arg_268_1 then
					local var_268_2 = var_268_0.j04[iter_268_1] or {
						amount = 0,
						target = arg_268_2
					}

					var_268_0.j04[iter_268_1] = var_268_2
					var_268_2.amount = var_268_2.amount + arg_268_3 * var_0_0.value(iter_268_1, "J04") / 100
				end
			end
		end

		if var_268_1 then
			local var_268_3 = var_0_6(arg_268_1)

			var_268_3.firstEnemies = var_268_3.firstEnemies or {}
			var_268_3.firstEnemies[arg_268_2] = true

			if (var_268_0.h13Targets and var_268_0.h13Targets[arg_268_2] or not var_268_0.h13Targets and var_268_0.h13 and var_268_0.target == arg_268_2) and var_0_0.has(arg_268_1, "H13") then
				var_0_0.knock(arg_268_0, arg_268_1, arg_268_2, 15)
			end
		end

		if not var_268_1 or var_268_0.target ~= arg_268_2 then
			return
		end

		if var_0_0.has(arg_268_1, "M12") and var_0_3(arg_268_2) then
			var_0_43(arg_268_2, "M12", var_0_0.value(arg_268_1, "M12"), arg_268_1)
		end

		if var_0_0.has(arg_268_1, "J02") and var_0_3(arg_268_2) then
			var_0_43(arg_268_2, "J02", var_0_0.value(arg_268_1, "J02"), arg_268_1)
		end

		if var_0_0.has(arg_268_1, "J08") and var_0_3(arg_268_2) and not var_0_15(arg_268_2) and not var_0_6(arg_268_2).j08Used then
			var_0_6(arg_268_2).j08Used = true

			var_0_43(arg_268_2, "J08", var_0_0.value(arg_268_1, "J08"), arg_268_1)
		end
	elseif var_0_37(arg_268_4) then
		var_268_0.directTotals = var_268_0.directTotals or {}
		var_268_0.directTotals[arg_268_2] = (var_268_0.directTotals[arg_268_2] or 0) + arg_268_3
		var_268_0.nativePerTarget = math.max(var_268_0.nativePerTarget or 0, var_268_0.directTotals[arg_268_2])

		if var_0_0.has(arg_268_1, "A13") and not var_268_0.followup and var_0_3(arg_268_2) then
			var_268_0.followup = true

			var_0_46(arg_268_0, arg_268_1, arg_268_2, (arg_268_1.dmg or 0) * var_0_0.value(arg_268_1, "A13") / 100, nil, arg_268_4.projectile and arg_268_4.projectile.asset)
		end

		if var_0_0.has(arg_268_1, "A15") and arg_268_4.explosion and not var_268_0.explosion then
			var_268_0.explosion = {
				x = arg_268_4.impactX or arg_268_2.x,
				y = arg_268_4.impactY or arg_268_2.y,
				lane = arg_268_2.lane,
				_awakeningBattle = arg_268_0
			}
			var_268_0.radius = arg_268_4.explosionRadius or 30
			var_268_0.explosionProjectile = arg_268_4.projectile
		end
	end
end

function var_0_0.explosionStarted(arg_270_0, arg_270_1, arg_270_2)
	if not var_0_0.isV8(arg_270_1.owner, arg_270_0) or not arg_270_1.battleSkillDamage or not var_0_0.has(arg_270_1.owner, "A15") then
		return
	end

	local var_270_0 = arg_270_1.awakeningCast

	if not var_270_0 or var_270_0.explosion then
		return
	end

	local var_270_1 = arg_270_2 and arg_270_2.bounds and arg_270_2.bounds[2]

	var_270_0.explosion = {
		x = arg_270_1.x,
		y = arg_270_1.y,
		lane = arg_270_1.owner.lane,
		_awakeningBattle = arg_270_0
	}
	var_270_0.radius = math.min(var_270_1 and var_270_1.w or 60, var_270_1 and var_270_1.h or 60) * (arg_270_1.scale or 1) * 0.5
	var_270_0.explosionProjectile = arg_270_1
end

function var_0_0.explodeAgain(arg_271_0, arg_271_1, arg_271_2)
	if not var_0_0.isV8(arg_271_1, arg_271_0) then
		return var_0_35.explodeAgain(arg_271_0, arg_271_1, arg_271_2)
	end

	if not arg_271_2 or arg_271_2.a15 or not arg_271_2.explosion or not var_0_3(arg_271_1) then
		return
	end

	arg_271_2.a15 = true

	require("src.ui.effects").awakening_combat.explosion(arg_271_0, arg_271_2.explosion, arg_271_2.explosionProjectile, math.min(40, arg_271_2.radius or 40))

	local var_271_0 = var_0_26(arg_271_0, arg_271_2.explosion, math.min(40, arg_271_2.radius or 40))

	for iter_271_0 = 1, math.min(2, #var_271_0) do
		var_0_0.extra(arg_271_0, arg_271_1, var_271_0[iter_271_0], (arg_271_1.dmg or 0) * var_0_0.value(arg_271_1, "A15") / 100)
	end
end

function var_0_0.projectile(arg_272_0, arg_272_1, arg_272_2)
	if not var_0_0.isV8(arg_272_1 and arg_272_1.owner, arg_272_0) then
		return var_0_35.projectile(arg_272_0, arg_272_1, arg_272_2)
	end

	if not arg_272_0._awakening or not arg_272_1 or arg_272_1._awakeningInitialized or not arg_272_1.owner or arg_272_1.awakeningDamage then
		return
	end

	arg_272_1._awakeningInitialized = true
	arg_272_1._awakeningTarget = arg_272_2 or arg_272_1.targetOnly or arg_272_1.target or var_0_11(arg_272_1.owner)

	local var_272_0 = var_0_6(arg_272_1.owner)

	if arg_272_1.basicAttack then
		arg_272_1.awakeningAction = arg_272_1.awakeningAction or var_272_0.action

		var_0_0.basicRelease(arg_272_0, arg_272_1.owner)

		if arg_272_1.awakeningAction and arg_272_1.awakeningAction.confused then
			arg_272_1.side = "ally"
			arg_272_1.awakeningConfused = true
			arg_272_1.targetOnly = arg_272_1.awakeningAction.target
		end
	else
		arg_272_1.awakeningCast = arg_272_1.awakeningCast or var_272_0.cast
	end

	local var_272_1 = arg_272_1.basicAttack and arg_272_1.awakeningAction or arg_272_1.awakeningCast

	if var_272_1 then
		var_272_1.projectiles = var_272_1.projectiles or {}
		var_272_1.projectiles[arg_272_1] = true
		arg_272_1.awakeningOrigin = {
			x = arg_272_1.x or 0,
			y = arg_272_1.y or 0,
			vx = arg_272_1._launchVx or arg_272_1.vx or 0,
			vy = arg_272_1._launchVy or arg_272_1.vy or 0,
			reach = arg_272_1.maxTravel or math.sqrt((arg_272_1.vx or 0)^2 + (arg_272_1.vy or 0)^2) * (arg_272_1.life or 2)
		}

		if not arg_272_1.basicAttack then
			var_272_1.capacity = math.max(var_272_1.capacity or 1, arg_272_1.maxTargets or 1)

			if arg_272_1.asset == "TripleShot" or arg_272_1.asset == "TwinBolt" then
				var_272_1.multiShot = true
				var_272_1.capacity = arg_272_1.asset == "TripleShot" and 3 or 2
			end

			var_272_1.contains = var_272_1.contains or function(arg_273_0)
				for iter_273_0 in pairs(var_272_1.projectiles) do
					if var_0_0.nativeProjectileArea(arg_272_0, iter_273_0, arg_273_0) then
						return true
					end
				end

				return false
			end
		end
	end
end

function var_0_0.projectileLost(arg_274_0, arg_274_1)
	if not var_0_0.isV8(arg_274_1 and arg_274_1.owner, arg_274_0) then
		return var_0_35.projectileLost(arg_274_0, arg_274_1)
	end

	if not arg_274_1 or arg_274_1._awakeningLost then
		return
	end

	arg_274_1._awakeningLost = true

	local var_274_0 = arg_274_1.awakeningCast

	if var_274_0 and var_274_0.explosionProjectile == arg_274_1 then
		var_0_0.explodeAgain(arg_274_0, arg_274_1.owner, var_274_0)
	end
end

function var_0_0.redirectBasic(arg_275_0, arg_275_1, arg_275_2)
	if not var_0_0.isV8(arg_275_1, arg_275_0) then
		return var_0_35.redirectBasic(arg_275_0, arg_275_1, arg_275_2)
	end

	if not var_0_13(arg_275_1) or var_0_15(arg_275_1) then
		return arg_275_2
	end

	local var_275_0 = var_0_44(arg_275_1, "J08")

	if var_275_0 <= 0 then
		return arg_275_2
	end

	for iter_275_0, iter_275_1 in ipairs(var_0_26(arg_275_0, arg_275_1, math.huge)) do
		if iter_275_1 ~= arg_275_1 and var_0_0.basicContact(arg_275_0, arg_275_1, iter_275_1) then
			var_0_6(arg_275_1).redirect = {
				target = iter_275_1,
				p = var_275_0
			}

			return iter_275_1
		end
	end

	return arg_275_2
end

function var_0_0.confusedMultiplier(arg_276_0, arg_276_1)
	local var_276_0 = arg_276_0 and (arg_276_1 and arg_276_1.awakeningAction or var_0_6(arg_276_0).action)

	return var_276_0 and var_276_0.confused and (var_276_0.confusedPercent or 100) / 100 or 1
end

function var_0_0.confusedDamage(arg_277_0, arg_277_1, arg_277_2)
	if var_0_0.isV8(arg_277_1, arg_277_0) and arg_277_2 and (arg_277_2.awakeningDamage or arg_277_2.indirect or arg_277_2.noProcs) then
		return false
	end

	return var_0_35.confusedDamage(arg_277_0, arg_277_1, arg_277_2)
end

function var_0_0.attackPeriod(arg_278_0, arg_278_1, arg_278_2)
	if not var_0_0.isV8(arg_278_1, arg_278_0) then
		return var_0_35.attackPeriod(arg_278_0, arg_278_1, arg_278_2)
	end

	return arg_278_2 / ((var_0_0.has(arg_278_1, "A08") and 0.92 or 1) * (var_0_0.has(arg_278_1, "A09") and 0.8 or 1))
end

function var_0_0.basicAnimationMultiplier(arg_279_0, arg_279_1)
	if not var_0_0.isV8(arg_279_1, arg_279_0) or var_0_16(arg_279_1) or not var_0_17(arg_279_1) or not var_0_6(arg_279_1).action or var_0_6(arg_279_1).action.cancelled then
		return 1
	end

	return 1 / var_0_0.attackPeriod(arg_279_0, arg_279_1, 1)
end

function var_0_0.attackSpeedMultiplier(arg_280_0, arg_280_1, arg_280_2)
	if not var_0_0.isV8(arg_280_1, arg_280_0) then
		return var_0_35.attackSpeedMultiplier(arg_280_0, arg_280_1, arg_280_2)
	end

	local var_280_0 = 0

	if not var_0_15(arg_280_1) and not arg_280_1.aspdImmune and not arg_280_1.slowImmune and not arg_280_1.ccImmune and not arg_280_1.controlImmune then
		for iter_280_0, iter_280_1 in ipairs(arg_280_0.allies or {}) do
			if var_0_13(iter_280_1) and var_0_12(iter_280_1) and var_0_40(arg_280_1, iter_280_1) then
				var_280_0 = math.max(var_280_0, var_0_0.value(iter_280_1, "J01"))
			end
		end
	end

	return math.min(arg_280_2 or 1, 1 - var_280_0 / 100)
end

function var_0_0.speed(arg_281_0, arg_281_1, arg_281_2)
	if not var_0_0.isV8(arg_281_1, arg_281_0) then
		return var_0_35.speed(arg_281_0, arg_281_1, arg_281_2)
	end

	if not arg_281_0._awakening then
		return 1
	end

	local var_281_0 = var_0_6(arg_281_1)
	local var_281_1 = var_281_0.h01 and var_0_0.value(arg_281_1, "H01") or 0

	if var_0_3(var_281_0.summonOwner) and not var_281_0.firstBasic then
		var_281_1 = var_281_1 + var_0_0.value(var_281_0.summonOwner, "M20")
	end

	local var_281_2 = 0

	if var_281_0.moving then
		for iter_281_0, iter_281_1 in ipairs(arg_281_0.allies or {}) do
			if var_0_12(iter_281_1) and var_0_13(iter_281_1) and var_0_6(iter_281_1).moving and var_0_0.value(iter_281_1, "H10") > 0 and var_0_25(arg_281_0, iter_281_1, 45) == arg_281_1 then
				var_281_2 = math.max(var_281_2, var_0_0.value(iter_281_1, "H10"))
			end
		end
	end

	local var_281_3 = 0

	if arg_281_1.side == "enemy" and not var_0_15(arg_281_1) and not arg_281_1.slowImmune and not arg_281_1.ccImmune and not arg_281_1.controlImmune then
		for iter_281_2, iter_281_3 in ipairs(arg_281_0.allies or {}) do
			if var_0_12(iter_281_3) and var_0_13(iter_281_3) and var_0_0.value(iter_281_3, "S05") > 0 and var_0_9(iter_281_3, arg_281_1) and var_0_8(iter_281_3, arg_281_1) <= 45 then
				var_281_3 = math.max(var_281_3, var_0_0.value(iter_281_3, "S05"))
			end
		end
	end

	if arg_281_2 == nil then
		arg_281_2 = require("src.game.combat").slow_effects.movementMultiplier(arg_281_1)
	end

	local var_281_4 = arg_281_2 or 1

	return (1 + (var_281_1 + var_281_2) / 100) * math.min(var_281_4, 1 - var_281_3 / 100) / math.max(0.001, var_281_4)
end

function var_0_0.guardTarget(arg_282_0, arg_282_1, arg_282_2, arg_282_3)
	if not var_0_0.isV8(arg_282_1, arg_282_0) then
		return var_0_35.guardTarget(arg_282_0, arg_282_1, arg_282_2, arg_282_3)
	end

	local var_282_0 = var_0_6(arg_282_1).summonOwner

	if arg_282_3 or not var_0_13(arg_282_1) or not var_0_3(var_282_0) or not var_0_0.has(var_282_0, "M22") then
		return arg_282_2
	end

	local var_282_1

	for iter_282_0, iter_282_1 in ipairs(arg_282_0.allies or {}) do
		if var_0_3(iter_282_1) and var_0_6(iter_282_1).summonOwner == var_282_0 and var_0_9(var_282_0, iter_282_1) and (not var_282_1 or var_0_8(var_282_0, iter_282_1) < var_0_8(var_282_0, var_282_1)) then
			var_282_1 = iter_282_1
		end
	end

	if var_282_1 ~= arg_282_1 then
		return arg_282_2
	end

	for iter_282_2, iter_282_3 in ipairs(var_0_26(arg_282_0, var_282_0, math.huge)) do
		if var_0_40(iter_282_3, var_282_0) and var_0_9(arg_282_1, iter_282_3) then
			return iter_282_3
		end
	end

	return arg_282_2
end

function var_0_0.summon(arg_283_0, arg_283_1, arg_283_2)
	if not var_0_0.isV8(arg_283_1, arg_283_0) then
		return var_0_35.summon(arg_283_0, arg_283_1, arg_283_2)
	end

	if not arg_283_0._awakening or not arg_283_2.isSummon or arg_283_2.master ~= arg_283_1 or var_0_0.identity(arg_283_1) ~= "M04" and var_0_0.identity(arg_283_1) ~= "M06" then
		return
	end

	arg_283_2._awakeningBattle = arg_283_0
	arg_283_2.awakeningVersion = 8

	local var_283_0 = var_0_6(arg_283_2)

	var_283_0.summonOwner = arg_283_1
	var_283_0.startHP = arg_283_2.maxhp or arg_283_2.hp or 1

	local var_283_1 = var_0_6(arg_283_1).summonDeath

	var_0_6(arg_283_1).summonDeath = nil

	if var_283_1 and var_0_0.has(arg_283_1, "M19") then
		local var_283_2 = arg_283_0.area or {}
		local var_283_3 = var_0_9(arg_283_1, var_283_1) and var_283_1.x >= (var_283_2.x or -math.huge) and var_283_1.x <= (var_283_2.x or 0) + (var_283_2.w or math.huge) and var_283_1.y >= (arg_283_0.groundTopY or -math.huge) and var_283_1.y <= (arg_283_0.groundBotY or math.huge)

		for iter_283_0, iter_283_1 in ipairs(arg_283_0.enemies or {}) do
			if var_0_3(iter_283_1) and iter_283_1.isCrystalGuardWall and ((iter_283_1.x or 0) - arg_283_2.x) * ((iter_283_1.x or 0) - var_283_1.x) < 0 then
				var_283_3 = false
			end
		end

		if var_283_3 then
			arg_283_2.x, arg_283_2.y = var_283_1.x, var_283_1.y
		end

		var_0_0.shield(arg_283_0, arg_283_2, "M19", var_283_0.startHP * var_0_0.value(arg_283_1, "M19") / 100)
	end
end

function var_0_0.onDeath(arg_284_0, arg_284_1)
	if not var_0_0.isV8(arg_284_1, arg_284_0) then
		return var_0_35.onDeath(arg_284_0, arg_284_1)
	end

	if not arg_284_0._awakening or var_0_6(arg_284_1).deathRecorded then
		return
	end

	local var_284_0 = var_0_6(arg_284_1)

	var_284_0.deathRecorded = true
	var_284_0.charges = nil

	if var_284_0.summonOwner and var_284_0.combatHurt and (arg_284_1.hp or 0) <= 0 and not arg_284_1._summonExpired and var_0_3(var_284_0.summonOwner) then
		var_0_6(var_284_0.summonOwner).summonDeath = {
			x = arg_284_1.x,
			y = arg_284_1.y,
			lane = arg_284_1.lane
		}
	end
end

function var_0_0.healCapacity(arg_285_0, arg_285_1)
	if not var_0_0.isV8(arg_285_0) then
		return arg_285_1
	end

	return math.max(1, arg_285_1 + (var_0_0.has(arg_285_0, "M18") and 1 or 0) - (arg_285_1 >= 2 and var_0_0.has(arg_285_0, "M15") and 1 or 0))
end

function var_0_0.healMultiplier(arg_286_0, arg_286_1)
	return 1 + ((arg_286_1 >= 2 and var_0_0.value(arg_286_0, "M15") or 0) + var_0_0.value(arg_286_0, "M18")) / 100
end

function var_0_0.nativeHeal(arg_287_0, arg_287_1, arg_287_2, arg_287_3, arg_287_4)
	if not var_0_0.isV8(arg_287_1, arg_287_0) then
		return var_0_35.nativeHeal(arg_287_0, arg_287_1, arg_287_2, arg_287_3, arg_287_4)
	end

	if require("src.game.unit_abilities").dimensional_duel.separated(arg_287_0, arg_287_1, arg_287_2) then
		return 0
	end

	arg_287_3 = require("src.game.unit_abilities").spell_echo.scaleHeal(arg_287_0, arg_287_1, arg_287_2, arg_287_3, arg_287_4)
	arg_287_4 = arg_287_4 or {}

	local var_287_0 = math.max(0, arg_287_3 or 0)

	if arg_287_4.multi then
		var_287_0 = var_287_0 * var_0_0.healMultiplier(arg_287_1, arg_287_4.nativeMaxTargets or arg_287_1.skill and arg_287_1.skill.maxTargets or 2)
	end

	if arg_287_4.root and var_0_0.has(arg_287_1, "D13") then
		local var_287_1 = var_0_22(arg_287_0, arg_287_1, 45, function(arg_288_0)
			return arg_288_0.hp < arg_288_0.maxhp
		end, true)[1]

		if var_287_1 then
			var_287_0 = var_287_0 - var_0_0.heal(arg_287_0, var_287_1, var_287_0 * var_0_0.value(arg_287_1, "D13") / 100)
		end
	end

	local var_287_2 = require("src.game.combat").guardian_golem.heal(arg_287_0, arg_287_2, var_287_0)
	local var_287_3 = math.max(0, var_287_0 - var_287_2 - (arg_287_4.overflowUsed or 0))

	if var_287_3 > 0 and var_0_0.has(arg_287_1, "M14") then
		arg_287_4.awakeningOverflow = arg_287_4.awakeningOverflow or {}

		if not arg_287_4.heal_event_id or not arg_287_4.awakeningOverflow[arg_287_4.heal_event_id] then
			local var_287_4 = var_0_22(arg_287_0, arg_287_1, 45, function(arg_289_0)
				return arg_289_0 ~= arg_287_2 and arg_289_0.hp < arg_289_0.maxhp
			end, true)[1]

			if var_287_4 then
				var_0_0.heal(arg_287_0, var_287_4, var_287_3 * var_0_0.value(arg_287_1, "M14") / 100)
			end

			if arg_287_4.heal_event_id then
				arg_287_4.awakeningOverflow[arg_287_4.heal_event_id] = true
			end
		end
	end

	return var_287_2
end

function var_0_0.healTransfer(arg_290_0, arg_290_1, arg_290_2, arg_290_3, arg_290_4)
	if not var_0_0.isV8(arg_290_1, arg_290_0) then
		return var_0_35.healTransfer(arg_290_0, arg_290_1, arg_290_2, arg_290_3, arg_290_4)
	end

	local var_290_0 = var_0_6(arg_290_1).cast and var_0_6(arg_290_1).cast.transfer

	if var_290_0 and var_290_0.ring == arg_290_2 and var_0_3(var_290_0.target) and var_0_9(arg_290_1, var_290_0.target) then
		return var_0_0.heal(arg_290_0, var_290_0.target, arg_290_4 * var_0_0.healMultiplier(arg_290_1, arg_290_1.skill and arg_290_1.skill.maxTargets or 3) * var_0_0.value(arg_290_1, "M13") / 100)
	end

	return 0
end

function var_0_0.skillAim(arg_291_0, arg_291_1, arg_291_2, arg_291_3, arg_291_4, arg_291_5, arg_291_6, arg_291_7, arg_291_8)
	if var_0_0.isV8(arg_291_1, arg_291_0) then
		return arg_291_2
	end

	return var_0_35.skillAim(arg_291_0, arg_291_1, arg_291_2, arg_291_3, arg_291_4, arg_291_5, arg_291_6, arg_291_7, arg_291_8)
end

function var_0_0.skillScale(arg_292_0)
	return var_0_0.isV8(arg_292_0) and 1 + var_0_0.value(arg_292_0, "M08") / 100 or 1
end

function var_0_0.burnStart(arg_293_0, arg_293_1, arg_293_2, arg_293_3)
	if not var_0_0.isV8(arg_293_1, arg_293_0) then
		return var_0_35.burnStart(arg_293_0, arg_293_1, arg_293_2, arg_293_3)
	end

	if not arg_293_0 or not var_0_0.has(arg_293_1, "W16") or arg_293_3.awakeningDerived then
		return
	end

	local var_293_0 = var_0_6(arg_293_1).cast

	if not var_293_0 or var_293_0.burnSpread then
		return
	end

	var_293_0.burnOrigins = var_293_0.burnOrigins or {}
	var_293_0.burnOrigins[#var_293_0.burnOrigins + 1] = {
		target = arg_293_2,
		burn = arg_293_3
	}
end

function var_0_0.bleedBurst(arg_294_0, arg_294_1, arg_294_2)
	if not var_0_0.isV8(arg_294_1, arg_294_0) then
		return var_0_35.bleedBurst(arg_294_0, arg_294_1, arg_294_2)
	end

	local var_294_0 = arg_294_2 and arg_294_2._bleed

	if not var_294_0 or var_294_0.source ~= arg_294_1 or not var_0_0.has(arg_294_1, "S14") or var_294_0.awakeningCompressed then
		return
	end

	var_294_0.awakeningCompressed = true
	var_294_0.dmg = (var_294_0.dmg or 0) * (1 + var_0_0.value(arg_294_1, "S14") / 100)
	var_294_0.dur = (var_294_0.dur or 0) * 0.5
	var_294_0.t = (var_294_0.t or 0) * 0.5
	var_294_0.tickInterval = (var_294_0.tickInterval or 0.5) * 0.5
	var_294_0.nextTick = (var_294_0.nextTick or 0.5) * 0.5
end

function var_0_0.coreExpired(arg_295_0, arg_295_1)
	if not var_0_0.isV8(arg_295_1.owner, arg_295_0) then
		return var_0_35.coreExpired(arg_295_0, arg_295_1)
	end

	local var_295_0 = arg_295_1.owner

	if not var_0_3(var_295_0) or not var_0_0.has(var_295_0, "M11") or arg_295_1.awakeningExpired then
		return
	end

	arg_295_1.awakeningExpired = true

	local var_295_1 = {
		x = (arg_295_1.x or 0) + 16,
		y = (arg_295_1.y or 0) + 6,
		lane = var_295_0.lane,
		_awakeningBattle = arg_295_0
	}
	local var_295_2 = var_0_26(arg_295_0, var_295_1, 40)

	for iter_295_0 = 1, math.min(2, #var_295_2) do
		var_0_0.extra(arg_295_0, var_295_0, var_295_2[iter_295_0], (var_295_0.dmg or 0) * var_0_0.value(var_295_0, "M11") / 100)
	end
end

function var_0_0.sealApplied(arg_296_0, arg_296_1, arg_296_2)
	if not var_0_0.isV8(arg_296_1, arg_296_0) then
		return var_0_35.sealApplied(arg_296_0, arg_296_1, arg_296_2)
	end

	if not arg_296_2 or arg_296_2.side ~= "ally" then
		return
	end

	local var_296_0 = var_0_6(arg_296_1)

	var_296_0.seals = var_296_0.seals or {}

	local var_296_1 = arg_296_2.skill and (arg_296_2.skill.kind == "FrostSpike" or arg_296_2.skill.kind == "GlacialShatter")

	for iter_296_0, iter_296_1 in pairs(var_296_0.seals) do
		if var_296_1 then
			iter_296_1.freeze = nil
		else
			iter_296_1.silence = nil
		end
	end

	var_296_0.seals[arg_296_2] = {
		silence = not var_296_1 and (arg_296_1._condemningSealT or 0) > 0,
		freeze = var_296_1 and (arg_296_1._frostSpikeFreezeT or 0) > 0
	}
end

function var_0_0.charm(arg_297_0, arg_297_1, arg_297_2, arg_297_3, arg_297_4)
	if not var_0_0.isV8(arg_297_1, arg_297_0) then
		return var_0_35.charm(arg_297_0, arg_297_1, arg_297_2, arg_297_3)
	end

	if not arg_297_0 or not arg_297_0._awakening then
		return
	end

	local var_297_0 = var_0_6(arg_297_2)

	if arg_297_3 then
		var_297_0.charmOwner = arg_297_1
		arg_297_2._awakeningBattle = arg_297_0
	else
		local var_297_1 = var_297_0.charmOwner

		var_297_0.charmOwner = nil

		if arg_297_4 and var_297_1 == arg_297_1 and var_0_3(arg_297_1) and var_0_3(arg_297_2) then
			var_0_0.extra(arg_297_0, arg_297_1, arg_297_2, (arg_297_1.dmg or 0) * var_0_0.value(arg_297_1, "J12") / 100)
		end
	end
end

function var_0_0.charmFallbackTarget(arg_298_0, arg_298_1, arg_298_2)
	if not var_0_0.isV8(arg_298_1, arg_298_0) or not var_0_0.has(arg_298_1, "J11") then
		return nil
	end

	for iter_298_0, iter_298_1 in ipairs(var_0_26(arg_298_0, arg_298_1, math.huge)) do
		if not arg_298_2 or arg_298_2(iter_298_1, arg_298_1, arg_298_0) then
			return iter_298_1
		end
	end
end

function var_0_0.charmFallback(arg_299_0, arg_299_1, arg_299_2, arg_299_3)
	if not var_0_0.isV8(arg_299_1, arg_299_0) then
		return var_0_35.charmFallback(arg_299_0, arg_299_1, arg_299_2, arg_299_3)
	end

	if not var_0_0.has(arg_299_1, "J11") then
		return false
	end

	for iter_299_0, iter_299_1 in ipairs(var_0_26(arg_299_0, arg_299_1, math.huge)) do
		if not arg_299_2 or arg_299_2(iter_299_1, arg_299_1, arg_299_0) then
			if arg_299_0._awakeningDamage then
				arg_299_0._awakeningDamage(iter_299_1, (arg_299_1.dmg or 0) * var_0_0.value(arg_299_1, "J11") / 100, arg_299_1, nil, {
					basicAttack = false,
					battleSkillDamage = true
				})
			end

			arg_299_1.skill.cdT = 0
			arg_299_1.skill.ready = false

			return true
		end
	end

	return false
end

function var_0_0.courier(arg_300_0, arg_300_1)
	if not var_0_0.isV8(arg_300_1.owner, arg_300_0) then
		return var_0_35.courier(arg_300_0, arg_300_1)
	end

	local var_300_0 = arg_300_1.owner

	if not var_300_0 or not arg_300_1.ferretCourier or arg_300_1.awakeningCourierBound then
		return
	end

	arg_300_1.awakeningCourierBound = true
	arg_300_1.ferretMoveSpeed = (arg_300_1.ferretMoveSpeed or 84) * (1 + var_0_0.value(var_300_0, "J13") / 100)

	if var_0_0.has(var_300_0, "J14") then
		local var_300_1 = {}

		for iter_300_0, iter_300_1 in ipairs(arg_300_1.ferretCourierTargets or {}) do
			var_300_1[iter_300_1] = true
		end

		for iter_300_2, iter_300_3 in ipairs(var_0_22(arg_300_0, var_300_0, math.huge, function(arg_301_0)
			return var_0_5(arg_301_0) ~= "J" and not var_300_1[arg_301_0] and arg_301_0.skill and (arg_301_0.skill.cd or 0) > 0 and arg_301_0.skill.kind ~= "VictorySignal" and require("src.game.unit_abilities").ferret_courier.isValidTarget(var_300_0, arg_301_0)
		end)) do
			arg_300_1._awakeningOriginalDeliveries = arg_300_1.ferretMaxDeliveries or 2
			arg_300_1.ferretMaxDeliveries = arg_300_1._awakeningOriginalDeliveries + 1
			arg_300_1.ferretCourierTargets[#arg_300_1.ferretCourierTargets + 1] = iter_300_3
			arg_300_1._awakeningDelivery = iter_300_3

			break
		end
	end
end

function var_0_0.deliver(arg_302_0, arg_302_1, arg_302_2, arg_302_3)
	if not var_0_0.isV8(arg_302_1.owner, arg_302_0) then
		return var_0_35.deliver(arg_302_0, arg_302_1, arg_302_2, arg_302_3)
	end

	if arg_302_1._awakeningDelivery == arg_302_2 then
		return arg_302_3(arg_302_2, (arg_302_1.ferretCooldownReduction or 2) * var_0_0.value(arg_302_1.owner, "J14") / 100)
	end

	return arg_302_3(arg_302_2, arg_302_1.ferretCooldownReduction or 2)
end

function var_0_0.update(arg_303_0, arg_303_1)
	if not var_0_0.isV8(nil, arg_303_0) then
		return var_0_35.update(arg_303_0, arg_303_1)
	end

	if not arg_303_0._awakening or arg_303_0.mode ~= "battle" or (arg_303_0.timeStopT or 0) > 0 or arg_303_0._judgementIntroLockActive then
		return
	end

	arg_303_0._awakening.time = var_0_7(arg_303_0) + arg_303_1

	for iter_303_0, iter_303_1 in ipairs({
		arg_303_0.allies or {},
		arg_303_0.enemies or {}
	}) do
		for iter_303_2, iter_303_3 in ipairs(iter_303_1) do
			iter_303_3._awakeningBattle = arg_303_0
			iter_303_3._awakeningSerial = iter_303_3._awakeningSerial or iter_303_2

			local var_303_0 = var_0_6(iter_303_3)

			if var_0_3(iter_303_3) then
				if iter_303_3.side == "enemy" then
					require("src.game.combat").retaliation_sigil.observeEnemy(arg_303_0, iter_303_3)
				end

				local var_303_1, var_303_2 = var_0_0.groundPoint(iter_303_3, arg_303_0)
				local var_303_3 = var_303_0.groundX and math.sqrt((var_303_1 - var_303_0.groundX)^2 + (var_303_2 - var_303_0.groundY)^2) or 0

				var_303_0.groundMoving = var_303_3 > 0.01

				local var_303_4 = var_303_0.groundMoving and var_0_13(iter_303_3) and not iter_303_3._kb and not iter_303_3._posLerp and not iter_303_3._jump and not iter_303_3.lift
				local var_303_5 = var_0_11(iter_303_3)

				var_303_0.moving = var_303_4 and var_0_3(var_303_5) and var_0_8(iter_303_3, var_303_5) <= var_0_8({
					x = var_303_0.groundX,
					y = var_303_0.groundY,
					_awakeningBattle = arg_303_0
				}, var_303_5) + 0.001

				if var_303_0.moving then
					var_303_0.travel = (var_303_0.travel or 0) + var_303_3
				end

				var_303_0.groundX, var_303_0.groundY = var_303_1, var_303_2

				if var_0_0.has(iter_303_3, "W10") and not var_303_0.w10 and var_0_13(iter_303_3) then
					local var_303_6 = var_0_22(arg_303_0, iter_303_3, 40, function(arg_304_0)
						return arg_304_0.hp <= arg_304_0.maxhp * 0.35
					end, true)[1]

					if var_303_6 then
						var_303_0.w10 = true

						var_0_0.shield(arg_303_0, var_303_6, "W10", (var_0_6(var_303_6).startHP or var_303_6.maxhp) * var_0_0.value(iter_303_3, "W10") / 100)
					end
				end

				local var_303_7 = var_0_41(iter_303_3)

				if var_303_0.defending and not var_303_7 and var_0_0.has(iter_303_3, "S13") then
					var_0_43(iter_303_3, "S13", var_0_0.value(iter_303_3, "S13"))
				end

				var_303_0.defending = var_303_7

				for iter_303_4, iter_303_5 in pairs(var_303_0.seals or {}) do
					if not var_0_3(iter_303_4) or (not iter_303_5.silence or not ((iter_303_3._condemningSealT or 0) > 0)) and (not iter_303_5.freeze or not ((iter_303_3._frostSpikeFreezeT or 0) > 0)) then
						var_303_0.seals[iter_303_4] = nil
					end
				end

				local var_303_8 = var_303_0.action

				if var_303_8 and var_303_8.released and not var_303_8.finished and not var_0_17(iter_303_3) then
					local var_303_9 = false

					for iter_303_6 in pairs(var_303_8.projectiles or {}) do
						if iter_303_6.alive ~= false then
							var_303_9 = true
						end
					end

					if not var_303_9 then
						var_0_0.finishBasic(arg_303_0, iter_303_3, var_303_8)
					end
				end

				for iter_303_7 = #(var_303_0.actions or {}), 1, -1 do
					local var_303_10 = var_303_0.actions[iter_303_7]
					local var_303_11 = false

					for iter_303_8 in pairs(var_303_10.projectiles or {}) do
						if iter_303_8.alive ~= false then
							var_303_11 = true
						end
					end

					if not var_303_11 then
						var_0_0.finishBasic(arg_303_0, iter_303_3, var_303_10)
						table.remove(var_303_0.actions, iter_303_7)
					end
				end

				local var_303_12 = var_303_0.cast

				if var_303_12 then
					if var_303_12.burnOrigins and not var_303_12.burnSpread then
						for iter_303_9, iter_303_10 in ipairs(var_303_12.burnOrigins) do
							for iter_303_11, iter_303_12 in ipairs(var_0_26(arg_303_0, iter_303_10.target, 40)) do
								if iter_303_12 ~= iter_303_10.target and not iter_303_12._flameEruptionBurn then
									local var_303_13 = iter_303_10.burn

									iter_303_12._flameEruptionBurn = {
										awakeningDerived = true,
										t = var_303_13.t,
										tickT = var_303_13.tickT,
										visualT = var_303_13.visualT,
										source = iter_303_3,
										damage = var_303_13.damage * var_0_0.value(iter_303_3, "W16") / 100
									}
									var_303_12.burnSpread = true

									break
								end
							end

							if var_303_12.burnSpread then
								break
							end
						end

						var_303_12.burnOrigins = nil
					end

					if not var_0_16(iter_303_3) and var_303_0.wasCasting then
						var_303_12.finished = true
					end

					if var_303_12.finished or var_303_12.success and not var_0_16(iter_303_3) then
						local var_303_14 = false

						for iter_303_13 in pairs(var_303_12.projectiles or {}) do
							if iter_303_13.alive ~= false then
								var_303_14 = true
							end
						end

						if not var_303_14 then
							var_0_0.finishSkill(arg_303_0, iter_303_3, var_303_12)

							if var_303_12.explosion then
								var_0_0.explodeAgain(arg_303_0, iter_303_3, var_303_12)
							end
						end
					end
				end

				for iter_303_14 = #(var_303_0.casts or {}), 1, -1 do
					local var_303_15 = var_303_0.casts[iter_303_14]
					local var_303_16 = false

					for iter_303_15 in pairs(var_303_15.projectiles or {}) do
						if iter_303_15.alive ~= false then
							var_303_16 = true
						end
					end

					if not var_303_16 then
						var_0_0.finishSkill(arg_303_0, iter_303_3, var_303_15)

						if var_303_15.explosion then
							var_0_0.explodeAgain(arg_303_0, iter_303_3, var_303_15)
						end

						table.remove(var_303_0.casts, iter_303_14)
					end
				end

				var_303_0.wasCasting = var_0_16(iter_303_3)

				if var_303_0.focusTarget and not var_0_3(var_303_0.focusTarget) then
					var_303_0.focusCount = 0
					var_303_0.focusTarget = nil
				end

				var_0_0.filterKnockback(arg_303_0, iter_303_3)
			else
				var_0_0.onDeath(arg_303_0, iter_303_3)
			end
		end
	end

	for iter_303_16, iter_303_17 in ipairs(arg_303_0.projectiles or {}) do
		if iter_303_17.awakeningCard then
			var_0_0.updateCard(arg_303_0, iter_303_17, arg_303_1)
		elseif iter_303_17.alive ~= false then
			var_0_0.projectile(arg_303_0, iter_303_17)
		else
			var_0_0.projectileLost(arg_303_0, iter_303_17)
		end
	end
end

function var_0_0.applyStatPreview(arg_305_0, arg_305_1, arg_305_2)
	if not var_0_0.isV8(arg_305_1, arg_305_2) or var_0_0.stage(arg_305_1) == 0 then
		return
	end

	local var_305_0 = arg_305_2 or {
		allies = {}
	}

	if arg_305_2 and arg_305_2.mode ~= "battle" then
		var_305_0 = {
			awakeningVersion = 8,
			allies = arg_305_2.rosterUnits or {},
			enemies = {}
		}
	end

	arg_305_0.distance = var_0_0.basicRange(var_305_0, arg_305_1, nil, arg_305_0.distance or arg_305_1.distance or 0)

	local var_305_1 = 1 / var_0_0.attackPeriod(var_305_0, arg_305_1, 1)

	arg_305_0.aspd = (arg_305_0.aspd or 0) * var_305_1

	if var_305_1 < 1 then
		arg_305_0.aspdDebuffActive = true
	end

	arg_305_0.awakeningReduction = arg_305_1._awakening and arg_305_1._awakening.directReduction or 0
end

return var_0_0
