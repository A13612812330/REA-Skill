local var_0_0
local var_0_1 = {
	PAD_BUTTONS = {
		"a",
		"b",
		"x",
		"y",
		"leftshoulder",
		"rightshoulder",
		"triggerleft",
		"triggerright",
		"back",
		"start",
		"leftstick",
		"rightstick"
	}
}
local var_0_2 = {}

for iter_0_0, iter_0_1 in ipairs(var_0_1.PAD_BUTTONS) do
	var_0_2[iter_0_1] = true
end

var_0_1.PAD_BINDABLE = var_0_2
var_0_1.ACTIONS = {
	{
		id = "confirm",
		label = "controls_action_confirm",
		pad = "a"
	},
	{
		id = "back",
		label = "controls_action_back",
		pad = "b"
	},
	{
		id = "inspect",
		label = "controls_action_inspect",
		pad = "y"
	},
	{
		id = "spin",
		label = "controls_action_spin",
		pad = "x",
		keys = {
			"space",
			"s"
		}
	},
	{
		id = "absorb",
		label = "controls_action_absorb",
		pad = "leftshoulder",
		keys = {
			"a"
		}
	},
	{
		id = "battle",
		label = "controls_action_battle",
		pad = "rightshoulder",
		keys = {
			"return"
		}
	},
	{
		id = "shop",
		label = "controls_action_shop",
		pad = "triggerleft",
		keys = {
			"tab"
		}
	},
	{
		id = "fastforward",
		label = "controls_action_fastforward",
		pad = "triggerright",
		keys = {
			"f"
		}
	},
	{
		id = "synergy",
		label = "controls_action_synergy",
		pad = "back",
		keys = {
			"e"
		}
	},
	{
		id = "dps",
		label = "controls_action_dps",
		pad = "rightstick",
		keys = {
			"d"
		}
	},
	{
		keyFixed = true,
		label = "controls_action_pause",
		pad = "start",
		id = "pause",
		keys = {
			"escape"
		}
	}
}

local var_0_3 = {}

for iter_0_2, iter_0_3 in ipairs(var_0_1.ACTIONS) do
	var_0_3[iter_0_3.id] = iter_0_3
end

var_0_1.BY_ID = var_0_3

local var_0_4 = {
	pause = true,
	scrolllock = true,
	numlock = true,
	application = true,
	menu = true,
	printscreen = true,
	rgui = true,
	lgui = true,
	unknown = true,
	escape = true
}

for iter_0_4 = 1, 24 do
	var_0_4["f" .. iter_0_4] = true
end

local var_0_5 = {}
local var_0_6 = {}

local function var_0_7(arg_1_0)
	local var_1_0 = {}

	for iter_1_0, iter_1_1 in ipairs(arg_1_0 or {}) do
		var_1_0[iter_1_0] = iter_1_1
	end

	return var_1_0
end

function var_0_1.resetPad()
	for iter_2_0, iter_2_1 in ipairs(var_0_1.ACTIONS) do
		var_0_5[iter_2_1.id] = iter_2_1.pad
	end
end

function var_0_1.resetKeys()
	for iter_3_0, iter_3_1 in ipairs(var_0_1.ACTIONS) do
		if iter_3_1.keys then
			var_0_6[iter_3_1.id] = var_0_7(iter_3_1.keys)
		end
	end
end

function var_0_1.reset()
	var_0_1.resetPad()
	var_0_1.resetKeys()
end

function var_0_1.isKeyReserved(arg_5_0)
	if type(arg_5_0) ~= "string" or arg_5_0 == "" then
		return true
	end

	return var_0_4[arg_5_0] == true
end

function var_0_1.padButton(arg_6_0)
	return var_0_5[arg_6_0]
end

function var_0_1.keyList(arg_7_0)
	return var_0_6[arg_7_0]
end

function var_0_1.actionForPad(arg_8_0)
	for iter_8_0, iter_8_1 in ipairs(var_0_1.ACTIONS) do
		if var_0_5[iter_8_1.id] == arg_8_0 then
			return iter_8_1.id
		end
	end

	return nil
end

function var_0_1.actionForKey(arg_9_0)
	if arg_9_0 == nil then
		return nil
	end

	for iter_9_0, iter_9_1 in ipairs(var_0_1.ACTIONS) do
		local var_9_0 = var_0_6[iter_9_1.id]

		if var_9_0 then
			for iter_9_2, iter_9_3 in ipairs(var_9_0) do
				if iter_9_3 == arg_9_0 then
					return iter_9_1.id
				end
			end
		end
	end

	return nil
end

function var_0_1.setPad(arg_10_0, arg_10_1)
	if not var_0_3[arg_10_0] or not var_0_2[arg_10_1] then
		return false
	end

	local var_10_0 = var_0_5[arg_10_0]

	if var_10_0 == arg_10_1 then
		return true, nil
	end

	local var_10_1 = var_0_1.actionForPad(arg_10_1)

	var_0_5[arg_10_0] = arg_10_1

	if var_10_1 and var_10_1 ~= arg_10_0 then
		var_0_5[var_10_1] = var_10_0
	end

	return true, var_10_1
end

function var_0_1.setKey(arg_11_0, arg_11_1)
	local var_11_0 = var_0_3[arg_11_0]

	if not var_11_0 or not var_11_0.keys or var_11_0.keyFixed or var_0_1.isKeyReserved(arg_11_1) then
		return false
	end

	local var_11_1 = var_0_6[arg_11_0] or {}
	local var_11_2 = var_0_1.actionForKey(arg_11_1)

	var_0_6[arg_11_0] = {
		arg_11_1
	}

	if var_11_2 and var_11_2 ~= arg_11_0 then
		local var_11_3 = var_0_3[var_11_2]

		if var_11_3 and var_11_3.keyFixed then
			var_0_6[arg_11_0] = var_11_1

			return false
		end

		local var_11_4 = {}

		for iter_11_0, iter_11_1 in ipairs(var_0_6[var_11_2] or {}) do
			if iter_11_1 ~= arg_11_1 then
				var_11_4[#var_11_4 + 1] = iter_11_1
			end
		end

		if #var_11_4 == 0 and var_11_1[1] and var_11_1[1] ~= arg_11_1 then
			var_11_4[1] = var_11_1[1]
		end

		var_0_6[var_11_2] = var_11_4
	end

	return true, var_11_2
end

function var_0_1.serialize()
	local var_12_0 = {}
	local var_12_1 = {}

	for iter_12_0, iter_12_1 in ipairs(var_0_1.ACTIONS) do
		var_12_0[iter_12_1.id] = var_0_5[iter_12_1.id]

		if iter_12_1.keys and not iter_12_1.keyFixed then
			var_12_1[iter_12_1.id] = var_0_7(var_0_6[iter_12_1.id])
		end
	end

	return var_12_0, var_12_1
end

function var_0_1.load(arg_13_0, arg_13_1)
	var_0_1.reset()

	if type(arg_13_0) == "table" then
		local var_13_0 = {}
		local var_13_1 = true
		local var_13_2 = {}
		local var_13_3 = {}

		for iter_13_0, iter_13_1 in ipairs(var_0_1.ACTIONS) do
			local var_13_4 = arg_13_0[iter_13_1.id]

			if var_13_4 == nil then
				var_13_3[#var_13_3 + 1] = iter_13_1
			elseif type(var_13_4) ~= "string" or not var_0_2[var_13_4] or var_13_0[var_13_4] then
				var_13_1 = false

				break
			else
				var_13_0[var_13_4] = true
				var_13_2[iter_13_1.id] = var_13_4
			end
		end

		if var_13_1 then
			for iter_13_2, iter_13_3 in ipairs(var_13_3) do
				local var_13_5 = iter_13_3.pad

				if var_13_0[var_13_5] then
					var_13_5 = nil

					for iter_13_4, iter_13_5 in ipairs(var_0_1.PAD_BUTTONS) do
						if not var_13_0[iter_13_5] then
							var_13_5 = iter_13_5

							break
						end
					end
				end

				if not var_13_5 then
					var_13_1 = false

					break
				end

				var_13_0[var_13_5] = true
				var_13_2[iter_13_3.id] = var_13_5
			end
		end

		if var_13_1 then
			for iter_13_6, iter_13_7 in pairs(var_13_2) do
				var_0_5[iter_13_6] = iter_13_7
			end
		end
	end

	if type(arg_13_1) == "table" then
		local var_13_6 = {}
		local var_13_7 = true
		local var_13_8 = {}
		local var_13_9 = {}

		for iter_13_8, iter_13_9 in ipairs(var_0_1.ACTIONS) do
			if iter_13_9.keys then
				local var_13_10 = iter_13_9.keyFixed and iter_13_9.keys or arg_13_1[iter_13_9.id]

				if var_13_10 == nil then
					var_13_9[#var_13_9 + 1] = iter_13_9
				elseif type(var_13_10) ~= "table" then
					var_13_7 = false

					break
				else
					local var_13_11 = {}

					for iter_13_10, iter_13_11 in ipairs(var_13_10) do
						if type(iter_13_11) ~= "string" or var_13_6[iter_13_11] or not iter_13_9.keyFixed and var_0_1.isKeyReserved(iter_13_11) then
							var_13_7 = false

							break
						end

						var_13_6[iter_13_11] = true
						var_13_11[#var_13_11 + 1] = iter_13_11
					end

					if not var_13_7 then
						break
					end

					var_13_8[iter_13_9.id] = var_13_11
				end
			end
		end

		if var_13_7 then
			for iter_13_12, iter_13_13 in ipairs(var_13_9) do
				local var_13_12 = {}

				for iter_13_14, iter_13_15 in ipairs(iter_13_13.keys) do
					if not var_13_6[iter_13_15] then
						var_13_6[iter_13_15] = true
						var_13_12[#var_13_12 + 1] = iter_13_15
					end
				end

				var_13_8[iter_13_13.id] = var_13_12
			end

			for iter_13_16, iter_13_17 in pairs(var_13_8) do
				var_0_6[iter_13_16] = iter_13_17
			end
		end
	end
end

var_0_1.reset()

local var_0_8 = var_0_1
local var_0_9
local var_0_10 = {}

local function var_0_11(arg_14_0, arg_14_1)
	local var_14_0 = tonumber(arg_14_0:sub(1, 2), 16) / 255
	local var_14_1 = tonumber(arg_14_0:sub(3, 4), 16) / 255
	local var_14_2 = tonumber(arg_14_0:sub(5, 6), 16) / 255

	return {
		var_14_0,
		var_14_1,
		var_14_2,
		arg_14_1 or 1
	}
end

local var_0_12 = var_0_11("1c141f")
local var_0_13 = {
	fill = var_0_11("4b3f57"),
	hi = var_0_11("67597a"),
	lo = var_0_11("33293c"),
	out = var_0_12
}
local var_0_14 = {
	a = {
		fill = var_0_11("5b9e4f"),
		hi = var_0_11("80bf6c"),
		lo = var_0_11("3e7537"),
		out = var_0_12,
		side = var_0_11("2c5428")
	},
	b = {
		fill = var_0_11("bf4f49"),
		hi = var_0_11("dc7569"),
		lo = var_0_11("8b3536"),
		out = var_0_12,
		side = var_0_11("652628")
	},
	x = {
		fill = var_0_11("4a73bf"),
		hi = var_0_11("7097dc"),
		lo = var_0_11("33518d"),
		out = var_0_12,
		side = var_0_11("253b67")
	},
	y = {
		fill = var_0_11("cda13a"),
		hi = var_0_11("e8c562"),
		lo = var_0_11("967427"),
		out = var_0_12,
		side = var_0_11("6d541c")
	}
}
local var_0_15 = {
	fill = var_0_11("eee9c3"),
	hi = var_0_11("fbf7e2"),
	lo = var_0_11("bbb799"),
	out = var_0_11("3e3546")
}
local var_0_16 = var_0_11("f7f1e0")
local var_0_17 = var_0_11("ede6d0")
local var_0_18 = var_0_11("2e222f")
local var_0_19 = {
	a = var_0_11("9cc3f5"),
	b = var_0_11("f09a95"),
	x = var_0_11("e7a9e6"),
	y = var_0_11("79d3b6")
}

var_0_10.SKINS = {
	"classic",
	"raised",
	"paper",
	"ink"
}

local var_0_20 = {}

for iter_0_5, iter_0_6 in ipairs(var_0_10.SKINS) do
	var_0_20[iter_0_6] = true
end

local var_0_21 = "classic"
local var_0_22 = {
	a = var_0_11("3d7a33"),
	b = var_0_11("a53a35"),
	x = var_0_11("34599f"),
	y = var_0_11("94701c")
}
local var_0_23 = {
	a = var_0_11("3f74b8"),
	b = var_0_11("bb4b45"),
	x = var_0_11("a2509f"),
	y = var_0_11("2f8e70")
}
local var_0_24 = {
	fill = var_0_11("2b2131"),
	hi = var_0_11("2b2131"),
	lo = var_0_11("2b2131"),
	out = var_0_12
}
local var_0_25 = var_0_11("8e819b")

local function var_0_26(arg_15_0, arg_15_1)
	return {
		depth = 2,
		fill = arg_15_0.fill,
		hi = arg_15_0.hi,
		lo = arg_15_0.lo,
		out = arg_15_0.out,
		side = arg_15_1
	}
end

local function var_0_27(arg_16_0, arg_16_1)
	return {
		fill = arg_16_0.fill,
		hi = arg_16_0.hi,
		lo = arg_16_0.lo,
		out = arg_16_0.out,
		edge = arg_16_1
	}
end

local function var_0_28(arg_17_0)
	if arg_17_0 == "raised" then
		return var_0_26(var_0_13, var_0_11("2a2131")), var_0_17, var_0_13.lo
	end

	if arg_17_0 == "paper" then
		return var_0_15, var_0_18, nil
	end

	if arg_17_0 == "ink" then
		return var_0_27(var_0_24, var_0_25), var_0_17, nil
	end

	return var_0_13, var_0_17, var_0_13.lo
end

local function var_0_29(arg_18_0)
	if arg_18_0 == "raised" then
		return var_0_26(var_0_15, var_0_11("8f8a6f")), var_0_18
	end

	if arg_18_0 == "ink" then
		return var_0_27(var_0_24, var_0_25), var_0_17
	end

	return var_0_15, var_0_18
end

local var_0_30 = {
	"...#####...",
	"..#######..",
	".#########.",
	"###########",
	"###########",
	"###########",
	"###########",
	"###########",
	".#########.",
	"..#######..",
	"...#####..."
}
local var_0_31 = {
	"....#####....",
	"..#########..",
	".###########.",
	".###########.",
	"#############",
	"#############",
	"#############",
	"#############",
	"#############",
	".###########.",
	".###########.",
	"..#########..",
	"....#####...."
}
local var_0_32 = {
	"..###########..",
	".#############.",
	"###############",
	"###############",
	"###############",
	"###############",
	"###############",
	".#############.",
	"..###########.."
}
local var_0_33 = {
	"...#########...",
	".#############.",
	"###############",
	"###############",
	"###############",
	"###############",
	"###############",
	"###############",
	"###############",
	".#############."
}
local var_0_34 = {
	"....###....",
	"....###....",
	"....###....",
	"....###....",
	"###########",
	"###########",
	"###########",
	"....###....",
	"....###....",
	"....###....",
	"....###...."
}
local var_0_35 = {
	A = {
		".###.",
		"#...#",
		"#####",
		"#...#",
		"#...#"
	},
	B = {
		"####.",
		"#...#",
		"####.",
		"#...#",
		"####."
	},
	X = {
		"#...#",
		".#.#.",
		"..#..",
		".#.#.",
		"#...#"
	},
	Y = {
		"#...#",
		".#.#.",
		"..#..",
		"..#..",
		"..#.."
	}
}
local var_0_36 = {
	a = {
		"#...#",
		".#.#.",
		"..#..",
		".#.#.",
		"#...#"
	},
	b = {
		".###.",
		"#...#",
		"#...#",
		"#...#",
		".###."
	},
	x = {
		"#####",
		"#...#",
		"#...#",
		"#...#",
		"#####"
	},
	y = {
		".....",
		"..#..",
		".#.#.",
		"#...#",
		"#####"
	}
}
local var_0_37 = {
	menu = {
		"#####",
		".....",
		"#####",
		".....",
		"#####"
	},
	view = {
		"#####..",
		"#...###",
		"#####.#",
		"..#...#",
		"..#####"
	},
	plus = {
		"..#..",
		"..#..",
		"#####",
		"..#..",
		"..#.."
	},
	minus = {
		".....",
		".....",
		"#####",
		".....",
		"....."
	},
	share = {
		"..#..",
		".###.",
		"#.#.#",
		"..#..",
		"..#.."
	},
	up = {
		"..#..",
		".###.",
		"#####",
		"..#..",
		"..#.."
	},
	down = {
		"..#..",
		"..#..",
		"#####",
		".###.",
		"..#.."
	},
	left = {
		"..#..",
		".##..",
		"#####",
		".##..",
		"..#.."
	},
	right = {
		"..#..",
		"..##.",
		"#####",
		"..##.",
		"..#.."
	}
}
local var_0_38 = {
	".#####.",
	"#.....#",
	"#.....#",
	"#.....#",
	"#.....#",
	"#.....#",
	".#####."
}
local var_0_39 = {
	A = {
		".#.",
		"#.#",
		"###",
		"#.#",
		"#.#"
	},
	B = {
		"##.",
		"#.#",
		"##.",
		"#.#",
		"##."
	},
	C = {
		".##",
		"#..",
		"#..",
		"#..",
		".##"
	},
	D = {
		"##.",
		"#.#",
		"#.#",
		"#.#",
		"##."
	},
	E = {
		"###",
		"#..",
		"##.",
		"#..",
		"###"
	},
	F = {
		"###",
		"#..",
		"##.",
		"#..",
		"#.."
	},
	G = {
		".##",
		"#..",
		"#.#",
		"#.#",
		".##"
	},
	H = {
		"#.#",
		"#.#",
		"###",
		"#.#",
		"#.#"
	},
	I = {
		"###",
		".#.",
		".#.",
		".#.",
		"###"
	},
	J = {
		"..#",
		"..#",
		"..#",
		"#.#",
		".#."
	},
	K = {
		"#.#",
		"#.#",
		"##.",
		"#.#",
		"#.#"
	},
	L = {
		"#..",
		"#..",
		"#..",
		"#..",
		"###"
	},
	M = {
		"#.#",
		"###",
		"###",
		"#.#",
		"#.#"
	},
	N = {
		"##.",
		"#.#",
		"#.#",
		"#.#",
		"#.#"
	},
	O = {
		".#.",
		"#.#",
		"#.#",
		"#.#",
		".#."
	},
	P = {
		"##.",
		"#.#",
		"##.",
		"#..",
		"#.."
	},
	Q = {
		".#.",
		"#.#",
		"#.#",
		"##.",
		".##"
	},
	R = {
		"##.",
		"#.#",
		"##.",
		"#.#",
		"#.#"
	},
	S = {
		".##",
		"#..",
		".#.",
		"..#",
		"##."
	},
	T = {
		"###",
		".#.",
		".#.",
		".#.",
		".#."
	},
	U = {
		"#.#",
		"#.#",
		"#.#",
		"#.#",
		"###"
	},
	V = {
		"#.#",
		"#.#",
		"#.#",
		"#.#",
		".#."
	},
	W = {
		"#.#",
		"#.#",
		"###",
		"###",
		"#.#"
	},
	X = {
		"#.#",
		"#.#",
		".#.",
		"#.#",
		"#.#"
	},
	Y = {
		"#.#",
		"#.#",
		".#.",
		".#.",
		".#."
	},
	Z = {
		"###",
		"..#",
		".#.",
		"#..",
		"###"
	},
	["0"] = {
		"###",
		"#.#",
		"#.#",
		"#.#",
		"###"
	},
	["1"] = {
		".#.",
		"##.",
		".#.",
		".#.",
		"###"
	},
	["2"] = {
		"##.",
		"..#",
		".#.",
		"#..",
		"###"
	},
	["3"] = {
		"##.",
		"..#",
		".#.",
		"..#",
		"##."
	},
	["4"] = {
		"#.#",
		"#.#",
		"###",
		"..#",
		"..#"
	},
	["5"] = {
		"###",
		"#..",
		"##.",
		"..#",
		"##."
	},
	["6"] = {
		".##",
		"#..",
		"###",
		"#.#",
		"###"
	},
	["7"] = {
		"###",
		"..#",
		".#.",
		".#.",
		".#."
	},
	["8"] = {
		"###",
		"#.#",
		"###",
		"#.#",
		"###"
	},
	["9"] = {
		"###",
		"#.#",
		"###",
		"..#",
		"##."
	},
	["-"] = {
		"...",
		"...",
		"###",
		"...",
		"..."
	},
	["+"] = {
		"...",
		".#.",
		"###",
		".#.",
		"..."
	},
	["."] = {
		"...",
		"...",
		"...",
		"...",
		".#."
	},
	[","] = {
		"...",
		"...",
		"...",
		".#.",
		"#.."
	},
	["/"] = {
		"..#",
		"..#",
		".#.",
		"#..",
		"#.."
	},
	["="] = {
		"...",
		"###",
		"...",
		"###",
		"..."
	},
	["["] = {
		"##.",
		"#..",
		"#..",
		"#..",
		"##."
	},
	["]"] = {
		".##",
		"..#",
		"..#",
		"..#",
		".##"
	},
	[";"] = {
		"...",
		".#.",
		"...",
		".#.",
		"#.."
	},
	["'"] = {
		".#.",
		".#.",
		"...",
		"...",
		"..."
	},
	["`"] = {
		"#..",
		".#.",
		"...",
		"...",
		"..."
	},
	["\\"] = {
		"#..",
		"#..",
		".#.",
		"..#",
		"..#"
	}
}

local function var_0_40(arg_19_0)
	local var_19_0 = #arg_19_0

	if var_19_0 == 0 then
		return 0
	end

	return var_19_0 * 4 - 1
end

var_0_10.textWidth = var_0_40

local function var_0_41(arg_20_0, arg_20_1, arg_20_2)
	local var_20_0 = #arg_20_0
	local var_20_1 = #arg_20_0[1]
	local var_20_2 = arg_20_1.depth or 0
	local var_20_3 = var_20_1 + 2
	local var_20_4 = var_20_0 + 2 + var_20_2
	local var_20_5 = love.image.newImageData(var_20_3, var_20_4)

	local function var_20_6(arg_21_0, arg_21_1)
		if arg_21_1 < 1 or arg_21_1 > var_20_0 or arg_21_0 < 1 or arg_21_0 > var_20_1 then
			return false
		end

		return arg_20_0[arg_21_1]:sub(arg_21_0, arg_21_0) == "#"
	end

	local function var_20_7(arg_22_0, arg_22_1)
		if var_20_2 <= 0 or var_20_6(arg_22_0, arg_22_1) then
			return false
		end

		for iter_22_0 = 1, var_20_2 do
			if var_20_6(arg_22_0, arg_22_1 - iter_22_0) then
				return true
			end
		end

		return false
	end

	local function var_20_8(arg_23_0, arg_23_1)
		return var_20_6(arg_23_0, arg_23_1) or var_20_7(arg_23_0, arg_23_1)
	end

	local function var_20_9(arg_24_0, arg_24_1, arg_24_2)
		if arg_24_0 >= 0 and arg_24_1 >= 0 and arg_24_0 < var_20_3 and arg_24_1 < var_20_4 then
			var_20_5:setPixel(arg_24_0, arg_24_1, arg_24_2[1], arg_24_2[2], arg_24_2[3], arg_24_2[4] or 1)
		end
	end

	for iter_20_0 = 0, var_20_4 - 1 do
		for iter_20_1 = 0, var_20_3 - 1 do
			if var_20_6(iter_20_1, iter_20_0) then
				local var_20_10 = arg_20_1.fill
				local var_20_11 = not var_20_6(iter_20_1 - 1, iter_20_0) or not var_20_6(iter_20_1 + 1, iter_20_0) or not var_20_6(iter_20_1, iter_20_0 - 1) or not var_20_6(iter_20_1, iter_20_0 + 1)

				if arg_20_1.edge and var_20_11 then
					var_20_10 = arg_20_1.edge
				elseif not var_20_6(iter_20_1, iter_20_0 - 1) then
					var_20_10 = arg_20_1.hi
				elseif not var_20_6(iter_20_1, iter_20_0 + 1) then
					var_20_10 = arg_20_1.lo
				end

				var_20_9(iter_20_1, iter_20_0, var_20_10)
			elseif var_20_7(iter_20_1, iter_20_0) then
				var_20_9(iter_20_1, iter_20_0, arg_20_1.side)
			elseif var_20_8(iter_20_1 - 1, iter_20_0) or var_20_8(iter_20_1 + 1, iter_20_0) or var_20_8(iter_20_1, iter_20_0 - 1) or var_20_8(iter_20_1, iter_20_0 + 1) then
				var_20_9(iter_20_1, iter_20_0, arg_20_1.out)
			end
		end
	end

	for iter_20_2, iter_20_3 in ipairs(arg_20_2 or {}) do
		local var_20_12 = iter_20_3.rows
		local var_20_13 = iter_20_3.color
		local var_20_14 = iter_20_3.x or 1
		local var_20_15 = iter_20_3.y or 1

		if iter_20_3.shadow then
			for iter_20_4, iter_20_5 in ipairs(var_20_12) do
				for iter_20_6 = 1, #iter_20_5 do
					if iter_20_5:sub(iter_20_6, iter_20_6) == "#" then
						local var_20_16 = var_20_12[iter_20_4 + 1]
						local var_20_17 = var_20_16 and var_20_16:sub(iter_20_6, iter_20_6) == "#"
						local var_20_18 = var_20_14 + iter_20_6 - 1
						local var_20_19 = var_20_15 + iter_20_4

						if not var_20_17 and var_20_6(var_20_18, var_20_19) then
							var_20_9(var_20_18, var_20_19, iter_20_3.shadow)
						end
					end
				end
			end
		end

		for iter_20_7, iter_20_8 in ipairs(var_20_12) do
			for iter_20_9 = 1, #iter_20_8 do
				if iter_20_8:sub(iter_20_9, iter_20_9) == "#" then
					var_20_9(var_20_14 + iter_20_9 - 1, var_20_15 + iter_20_7 - 1, var_20_13)
				end
			end
		end
	end

	return var_20_5
end

local function var_0_42(arg_25_0)
	local var_25_0 = {
		"",
		"",
		"",
		"",
		""
	}

	for iter_25_0 = 1, #arg_25_0 do
		local var_25_1 = arg_25_0:sub(iter_25_0, iter_25_0)
		local var_25_2 = var_0_39[var_25_1] or var_0_39["-"]

		for iter_25_1 = 1, 5 do
			var_25_0[iter_25_1] = var_25_0[iter_25_1] .. var_25_2[iter_25_1] .. (iter_25_0 < #arg_25_0 and "." or "")
		end
	end

	return var_25_0
end

local function var_0_43(arg_26_0)
	local var_26_0 = math.max(15, arg_26_0)
	local var_26_1 = {}

	for iter_26_0, iter_26_1 in ipairs(var_0_32) do
		local var_26_2 = iter_26_1:find("#") - 1

		var_26_1[iter_26_0] = string.rep(".", var_26_2) .. string.rep("#", var_26_0 - var_26_2 * 2) .. string.rep(".", var_26_2)
	end

	return var_26_1
end

local function var_0_44(arg_27_0, arg_27_1, arg_27_2, arg_27_3)
	return math.floor((arg_27_0 - arg_27_2) / 2) + 1, math.floor((arg_27_1 - arg_27_3) / 2) + 1
end

local var_0_45 = {
	xbox = {
		rightstick = "RS",
		leftstick = "LS",
		triggerright = "RT",
		triggerleft = "LT",
		rightshoulder = "RB",
		leftshoulder = "LB"
	},
	playstation = {
		rightstick = "R3",
		leftstick = "L3",
		triggerright = "R2",
		triggerleft = "L2",
		rightshoulder = "R1",
		leftshoulder = "L1"
	},
	nintendo = {
		rightstick = "RS",
		leftstick = "LS",
		triggerright = "ZR",
		triggerleft = "ZL",
		rightshoulder = "R",
		leftshoulder = "L"
	}
}

local function var_0_46(arg_28_0, arg_28_1, arg_28_2)
	local var_28_0 = var_0_35[arg_28_1:upper()]

	if arg_28_0 == "playstation" then
		local var_28_1 = var_0_36[arg_28_1]

		if arg_28_2 == "paper" then
			return var_0_41(var_0_30, var_0_15, {
				{
					x = 4,
					y = 4,
					rows = var_28_1,
					color = var_0_23[arg_28_1]
				}
			})
		elseif arg_28_2 == "ink" then
			return var_0_41(var_0_30, var_0_27(var_0_24, var_0_19[arg_28_1]), {
				{
					x = 4,
					y = 4,
					rows = var_28_1,
					color = var_0_19[arg_28_1]
				}
			})
		end

		return var_0_41(var_0_30, var_0_28(arg_28_2), {
			{
				x = 4,
				y = 4,
				rows = var_28_1,
				color = var_0_19[arg_28_1]
			}
		})
	elseif arg_28_0 == "nintendo" then
		local var_28_2, var_28_3, var_28_4 = var_0_28(arg_28_2)

		return var_0_41(var_0_30, var_28_2, {
			{
				y = 4,
				x = 4,
				rows = var_28_0,
				color = var_28_3,
				shadow = var_28_4
			}
		})
	end

	local var_28_5 = var_0_14[arg_28_1]

	if arg_28_2 == "raised" then
		return var_0_41(var_0_30, var_0_26(var_28_5, var_28_5.side), {
			{
				y = 4,
				x = 4,
				rows = var_28_0,
				color = var_0_16,
				shadow = var_28_5.lo
			}
		})
	elseif arg_28_2 == "paper" then
		return var_0_41(var_0_30, var_0_15, {
			{
				x = 4,
				y = 4,
				rows = var_28_0,
				color = var_0_22[arg_28_1]
			}
		})
	elseif arg_28_2 == "ink" then
		return var_0_41(var_0_30, var_0_27(var_0_24, var_28_5.fill), {
			{
				x = 4,
				y = 4,
				rows = var_28_0,
				color = var_28_5.hi
			}
		})
	end

	return var_0_41(var_0_30, var_28_5, {
		{
			y = 4,
			x = 4,
			rows = var_28_0,
			color = var_0_16,
			shadow = var_28_5.lo
		}
	})
end

local function var_0_47(arg_29_0, arg_29_1, arg_29_2)
	if arg_29_1 == "a" or arg_29_1 == "b" or arg_29_1 == "x" or arg_29_1 == "y" then
		return var_0_46(arg_29_0, arg_29_1, arg_29_2)
	end

	local var_29_0, var_29_1, var_29_2 = var_0_28(arg_29_2)
	local var_29_3 = var_0_45[arg_29_0] or var_0_45.xbox

	if arg_29_1 == "leftshoulder" or arg_29_1 == "rightshoulder" then
		local var_29_4 = var_0_42(var_29_3[arg_29_1])
		local var_29_5 = var_0_43(var_0_40(var_29_3[arg_29_1]) + 8)
		local var_29_6, var_29_7 = var_0_44(#var_29_5[1], #var_29_5, #var_29_4[1], 5)

		return var_0_41(var_29_5, var_29_0, {
			{
				rows = var_29_4,
				color = var_29_1,
				x = var_29_6,
				y = var_29_7,
				shadow = var_29_2
			}
		})
	end

	if arg_29_1 == "triggerleft" or arg_29_1 == "triggerright" then
		local var_29_8 = var_0_42(var_29_3[arg_29_1])
		local var_29_9 = var_0_44(#var_0_33[1], #var_0_33, #var_29_8[1], 5)

		return var_0_41(var_0_33, var_29_0, {
			{
				y = 4,
				rows = var_29_8,
				color = var_29_1,
				x = var_29_9,
				shadow = var_29_2
			}
		})
	end

	if arg_29_1 == "start" or arg_29_1 == "back" then
		if arg_29_0 == "playstation" then
			local var_29_10 = arg_29_1 == "start" and var_0_37.menu or var_0_37.share

			return var_0_41(var_0_32, var_29_0, {
				{
					y = 3,
					x = 6,
					rows = var_29_10,
					color = var_29_1,
					shadow = var_29_2
				}
			})
		elseif arg_29_0 == "nintendo" then
			local var_29_11 = arg_29_1 == "start" and var_0_37.plus or var_0_37.minus

			return var_0_41(var_0_30, var_29_0, {
				{
					y = 4,
					x = 4,
					rows = var_29_11,
					color = var_29_1,
					shadow = var_29_2
				}
			})
		end

		if arg_29_1 == "back" then
			return var_0_41(var_0_30, var_29_0, {
				{
					y = 4,
					x = 3,
					rows = var_0_37.view,
					color = var_29_1,
					shadow = var_29_2
				}
			})
		end

		return var_0_41(var_0_30, var_29_0, {
			{
				y = 4,
				x = 4,
				rows = var_0_37.menu,
				color = var_29_1,
				shadow = var_29_2
			}
		})
	end

	if arg_29_1 == "leftstick" or arg_29_1 == "rightstick" then
		local var_29_12 = var_0_42(var_29_3[arg_29_1])
		local var_29_13, var_29_14 = var_0_44(#var_0_31[1], #var_0_31, #var_29_12[1], 5)

		return var_0_41(var_0_31, var_29_0, {
			{
				rows = var_29_12,
				color = var_29_1,
				x = var_29_13,
				y = var_29_14,
				shadow = var_29_2
			}
		})
	end

	if arg_29_1 == "lstick" or arg_29_1 == "rstick" then
		local var_29_15 = arg_29_1 == "lstick" and "L" or "R"
		local var_29_16 = arg_29_2 == "paper" and var_0_15.lo or arg_29_2 == "ink" and var_0_25 or var_0_13.hi

		return var_0_41(var_0_30, var_29_0, {
			{
				x = 3,
				y = 3,
				rows = var_0_38,
				color = var_29_16
			},
			{
				y = 4,
				x = 5,
				rows = var_0_39[var_29_15],
				color = var_29_1,
				shadow = var_29_2
			}
		})
	end

	if arg_29_1 == "pad" then
		return var_0_41({
			"...#########...",
			".#############.",
			"###############",
			"###############",
			"###############",
			"#####.....#####",
			"####.......####",
			".##.........##."
		}, var_29_0, {
			{
				x = 3,
				y = 2,
				rows = {
					".#.",
					"###",
					".#."
				},
				color = var_29_1
			},
			{
				x = 11,
				y = 2,
				rows = {
					".#.",
					"#.#"
				},
				color = var_29_1
			}
		})
	end

	if arg_29_1:sub(1, 4) == "dpad" or arg_29_1:sub(1, 2) == "dp" then
		local var_29_17 = {}

		if arg_29_1 == "dpad" then
			var_29_17 = {}
		elseif arg_29_1 == "dpad_ud" then
			var_29_17 = {
				down = true,
				up = true
			}
		elseif arg_29_1 == "dpad_lr" then
			var_29_17 = {
				right = true,
				left = true
			}
		else
			var_29_17[arg_29_1:sub(3)] = true
		end

		local function var_29_18(arg_30_0)
			local var_30_0 = {}

			for iter_30_0 = 1, 11 do
				var_30_0[iter_30_0] = string.rep(".", 11)
			end

			local function var_30_1(arg_31_0, arg_31_1, arg_31_2, arg_31_3)
				for iter_31_0 = arg_31_1, arg_31_3 do
					local var_31_0 = var_30_0[iter_31_0]

					var_30_0[iter_31_0] = var_31_0:sub(1, arg_31_0 - 1) .. string.rep("#", arg_31_2 - arg_31_0 + 1) .. var_31_0:sub(arg_31_2 + 1)
				end
			end

			if arg_30_0 == "up" then
				var_30_1(5, 1, 7, 3)
			elseif arg_30_0 == "down" then
				var_30_1(5, 9, 7, 11)
			elseif arg_30_0 == "left" then
				var_30_1(1, 5, 3, 7)
			elseif arg_30_0 == "right" then
				var_30_1(9, 5, 11, 7)
			end

			return var_30_0
		end

		local var_29_19 = {}

		for iter_29_0 in pairs(var_29_17) do
			var_29_19[#var_29_19 + 1] = {
				x = 1,
				y = 1,
				rows = var_29_18(iter_29_0),
				color = var_29_1
			}
		end

		return var_0_41(var_0_34, var_29_0, var_29_19)
	end

	return var_0_41(var_0_30, var_29_0, {
		{
			x = 5,
			y = 4,
			rows = var_0_39["-"] or {
				"###"
			},
			color = var_29_1
		}
	})
end

local var_0_48 = {
	insert = "INS",
	lalt = "ALT",
	space = "SPACE",
	pageup = "PGUP",
	pagedown = "PGDN",
	["return"] = "ENTER",
	tab = "TAB",
	home = "HOME",
	delete = "DEL",
	rshift = "SHIFT",
	lshift = "SHIFT",
	capslock = "CAPS",
	ralt = "ALT",
	["end"] = "END",
	rctrl = "CTRL",
	lctrl = "CTRL",
	backspace = "BKSP",
	kpenter = "ENTER",
	escape = "ESC"
}

local function var_0_49(arg_32_0)
	arg_32_0 = tostring(arg_32_0 or "")

	if var_0_48[arg_32_0] then
		return var_0_48[arg_32_0]
	end

	local var_32_0 = arg_32_0:match("^kp(.)$")

	if var_32_0 then
		return "N" .. var_32_0:upper()
	end

	local var_32_1 = arg_32_0:upper()
	local var_32_2 = ""

	for iter_32_0 = 1, #var_32_1 do
		local var_32_3 = var_32_1:sub(iter_32_0, iter_32_0)

		if var_0_39[var_32_3] then
			var_32_2 = var_32_2 .. var_32_3
		end

		if #var_32_2 >= 5 then
			break
		end
	end

	if var_32_2 == "" then
		var_32_2 = "?"
	end

	return var_32_2
end

var_0_10.keyLabel = var_0_49

local function var_0_50(arg_33_0, arg_33_1)
	local var_33_0, var_33_1 = var_0_29(arg_33_1)
	local var_33_2 = var_0_37[arg_33_0]

	if arg_33_0 == "up" or arg_33_0 == "down" or arg_33_0 == "left" or arg_33_0 == "right" then
		local var_33_3 = var_0_43(13)

		for iter_33_0 = 1, #var_33_3 do
			var_33_3[iter_33_0] = var_33_3[iter_33_0]:gsub("^%.%.", ".#"):gsub("%.%.$", "#.")
		end

		return var_0_41(var_33_3, var_33_0, {
			{
				x = 5,
				y = 3,
				rows = var_33_2,
				color = var_33_1
			}
		})
	end

	local var_33_4 = var_0_49(arg_33_0)
	local var_33_5 = var_0_42(var_33_4)
	local var_33_6 = math.max(9, var_0_40(var_33_4) + 6)
	local var_33_7 = {}

	for iter_33_1 = 1, 9 do
		if iter_33_1 == 1 or iter_33_1 == 9 then
			var_33_7[iter_33_1] = "." .. string.rep("#", var_33_6 - 2) .. "."
		else
			var_33_7[iter_33_1] = string.rep("#", var_33_6)
		end
	end

	local var_33_8 = var_0_44(var_33_6, 9, #var_33_5[1], 5)

	return var_0_41(var_33_7, var_33_0, {
		{
			y = 3,
			rows = var_33_5,
			color = var_33_1,
			x = var_33_8
		}
	})
end

local var_0_51 = {}

function var_0_10.skin()
	return var_0_21
end

function var_0_10.setSkin(arg_35_0)
	if not var_0_20[arg_35_0] or arg_35_0 == var_0_21 then
		return false
	end

	var_0_21 = arg_35_0

	var_0_10.clearCache()

	return true
end

function var_0_10.imageData(arg_36_0, arg_36_1, arg_36_2)
	local var_36_0, var_36_1 = pcall(var_0_47, arg_36_0 or "xbox", tostring(arg_36_1 or ""), arg_36_2 or var_0_21)

	return var_36_0 and var_36_1 or nil
end

function var_0_10.keyImageData(arg_37_0, arg_37_1)
	local var_37_0, var_37_1 = pcall(var_0_50, tostring(arg_37_0 or ""), arg_37_1 or var_0_21)

	return var_37_0 and var_37_1 or nil
end

local function var_0_52(arg_38_0)
	if not arg_38_0 or not love.graphics or not love.graphics.newImage then
		return false
	end

	local var_38_0, var_38_1 = pcall(love.graphics.newImage, arg_38_0)

	if not var_38_0 or not var_38_1 then
		return false
	end

	var_38_1:setFilter("nearest", "nearest")

	return var_38_1
end

function var_0_10.image(arg_39_0, arg_39_1)
	local var_39_0 = "pad:" .. var_0_21 .. ":" .. tostring(arg_39_0) .. ":" .. tostring(arg_39_1)
	local var_39_1 = var_0_51[var_39_0]

	if var_39_1 == nil then
		var_39_1 = var_0_52(var_0_10.imageData(arg_39_0, arg_39_1))
		var_0_51[var_39_0] = var_39_1
	end

	return var_39_1 or nil
end

function var_0_10.keyImage(arg_40_0)
	local var_40_0 = "key:" .. var_0_21 .. ":" .. tostring(arg_40_0)
	local var_40_1 = var_0_51[var_40_0]

	if var_40_1 == nil then
		var_40_1 = var_0_52(var_0_10.keyImageData(arg_40_0))
		var_0_51[var_40_0] = var_40_1
	end

	return var_40_1 or nil
end

function var_0_10.size(arg_41_0, arg_41_1)
	local var_41_0 = var_0_10.image(arg_41_0, arg_41_1)

	if not var_41_0 then
		return 0, 0
	end

	return var_41_0:getWidth(), var_41_0:getHeight()
end

function var_0_10.draw(arg_42_0, arg_42_1, arg_42_2, arg_42_3, arg_42_4)
	local var_42_0 = var_0_10.image(arg_42_0, arg_42_1)

	if not var_42_0 then
		return 0, 0
	end

	love.graphics.setColor(1, 1, 1, arg_42_4 or 1)
	love.graphics.draw(var_42_0, math.floor(arg_42_2 + 0.5), math.floor(arg_42_3 + 0.5))

	return var_42_0:getWidth(), var_42_0:getHeight()
end

function var_0_10.keySize(arg_43_0)
	local var_43_0 = var_0_10.keyImage(arg_43_0)

	if not var_43_0 then
		return 0, 0
	end

	return var_43_0:getWidth(), var_43_0:getHeight()
end

function var_0_10.drawKey(arg_44_0, arg_44_1, arg_44_2, arg_44_3)
	local var_44_0 = var_0_10.keyImage(arg_44_0)

	if not var_44_0 then
		return 0, 0
	end

	love.graphics.setColor(1, 1, 1, arg_44_3 or 1)
	love.graphics.draw(var_44_0, math.floor(arg_44_1 + 0.5), math.floor(arg_44_2 + 0.5))

	return var_44_0:getWidth(), var_44_0:getHeight()
end

function var_0_10.keysWidth(arg_45_0)
	local var_45_0 = 0

	for iter_45_0, iter_45_1 in ipairs(arg_45_0 or {}) do
		var_45_0 = var_45_0 + var_0_10.keySize(iter_45_1) + (iter_45_0 > 1 and 3 or 0)
	end

	return var_45_0
end

function var_0_10.drawKeys(arg_46_0, arg_46_1, arg_46_2, arg_46_3)
	local var_46_0 = arg_46_1

	for iter_46_0, iter_46_1 in ipairs(arg_46_0 or {}) do
		if iter_46_0 > 1 then
			var_46_0 = var_46_0 + 3
		end

		var_46_0 = var_46_0 + var_0_10.drawKey(iter_46_1, var_46_0, arg_46_2, arg_46_3)
	end

	return var_46_0 - arg_46_1
end

function var_0_10.clearCache()
	for iter_47_0, iter_47_1 in pairs(var_0_51) do
		if iter_47_1 and iter_47_1.release then
			pcall(iter_47_1.release, iter_47_1)
		end

		var_0_51[iter_47_0] = nil
	end
end

local var_0_53 = var_0_10
local var_0_54
local var_0_55 = {}
local var_0_56 = {}
local var_0_57

var_0_55.styleSetting = "auto"
var_0_55.vibration = true

local var_0_58 = {
	[1118] = "xbox",
	[1406] = "nintendo",
	[1356] = "playstation"
}

local function var_0_59(arg_48_0)
	if not arg_48_0 then
		return false
	end

	local var_48_0, var_48_1 = pcall(arg_48_0.isGamepad, arg_48_0)

	return var_48_0 and var_48_1 == true
end

function var_0_55.detectStyle(arg_49_0)
	if not arg_49_0 then
		return "xbox"
	end

	if arg_49_0.getDeviceInfo then
		local var_49_0, var_49_1 = pcall(arg_49_0.getDeviceInfo, arg_49_0)

		if var_49_0 and var_49_1 and var_0_58[var_49_1] then
			return var_0_58[var_49_1]
		end
	end

	local var_49_2, var_49_3 = pcall(arg_49_0.getName, arg_49_0)
	local var_49_4

	var_49_4 = var_49_2 and tostring(var_49_3 or ""):lower() or ""

	if var_49_4:find("dualsense") or var_49_4:find("dualshock") or var_49_4:find("playstation") or var_49_4:find("ps4") or var_49_4:find("ps5") or var_49_4:find("ps3") then
		return "playstation"
	end

	if var_49_4:find("nintendo") or var_49_4:find("switch") or var_49_4:find("joy%-con") or var_49_4:find("pro controller") then
		return "nintendo"
	end

	return "xbox"
end

function var_0_55.added(arg_50_0)
	if not var_0_59(arg_50_0) then
		return false
	end

	for iter_50_0, iter_50_1 in ipairs(var_0_56) do
		if iter_50_1 == arg_50_0 then
			return false
		end
	end

	var_0_56[#var_0_56 + 1] = arg_50_0

	if not var_0_57 then
		var_0_57 = arg_50_0
	end

	return true
end

function var_0_55.removed(arg_51_0)
	for iter_51_0 = #var_0_56, 1, -1 do
		if var_0_56[iter_51_0] == arg_51_0 then
			table.remove(var_0_56, iter_51_0)
		end
	end

	if var_0_57 == arg_51_0 then
		var_0_57 = var_0_56[1]
	end
end

function var_0_55.touch(arg_52_0)
	if arg_52_0 and var_0_59(arg_52_0) then
		if var_0_57 ~= arg_52_0 then
			var_0_55.added(arg_52_0)
		end

		var_0_57 = arg_52_0
	end
end

function var_0_55.active()
	return var_0_57
end

function var_0_55.count()
	return #var_0_56
end

function var_0_55.scan()
	if not love.joystick or not love.joystick.getJoysticks then
		return
	end

	local var_55_0, var_55_1 = pcall(love.joystick.getJoysticks)

	if not var_55_0 or type(var_55_1) ~= "table" then
		return
	end

	for iter_55_0, iter_55_1 in ipairs(var_55_1) do
		var_0_55.added(iter_55_1)
	end
end

function var_0_55.name()
	if not var_0_57 then
		return nil
	end

	local var_56_0, var_56_1 = pcall(var_0_57.getName, var_0_57)

	return var_56_0 and var_56_1 or nil
end

function var_0_55.style()
	local var_57_0 = var_0_55.styleSetting

	if var_57_0 == "xbox" or var_57_0 == "playstation" or var_57_0 == "nintendo" then
		return var_57_0
	end

	return var_0_55.detectStyle(var_0_57)
end

function var_0_55.vibrate(arg_58_0, arg_58_1, arg_58_2)
	if not var_0_55.vibration or not var_0_57 then
		return false
	end

	if var_0_57.isVibrationSupported then
		local var_58_0, var_58_1 = pcall(var_0_57.isVibrationSupported, var_0_57)

		if var_58_0 and not var_58_1 then
			return false
		end
	end

	return (pcall(var_0_57.setVibration, var_0_57, arg_58_0 or 0, arg_58_1 or 0, arg_58_2 or 0.1))
end

function var_0_55.stopVibration()
	for iter_59_0, iter_59_1 in ipairs(var_0_56) do
		pcall(iter_59_1.setVibration, iter_59_1)
	end
end

local var_0_60 = var_0_55
local var_0_61
local var_0_62 = {}
local var_0_63 = 320
local var_0_64 = 180
local var_0_65
local var_0_66 = 0
local var_0_67
local var_0_68
local var_0_69 = {}

var_0_62.speed = 0.5

local function var_0_70()
	local var_60_0 = rawget(_G, "ui")
	local var_60_1 = var_60_0 and var_60_0.virtual

	return var_60_1 and var_60_1.W or 640, var_60_1 and var_60_1.H or 360
end

local function var_0_71()
	local var_61_0 = rawget(_G, "screenScale") or 1

	return rawget(_G, "screenScaleX") or var_61_0, rawget(_G, "screenScaleY") or var_61_0
end

function var_0_62.toScreen(arg_62_0, arg_62_1)
	local var_62_0, var_62_1 = var_0_71()

	return arg_62_0 * var_62_0 + (rawget(_G, "screenOffsetX") or 0), arg_62_1 * var_62_1 + (rawget(_G, "screenOffsetY") or 0)
end

function var_0_62.toVirtual(arg_63_0, arg_63_1)
	local var_63_0, var_63_1 = var_0_71()

	return (arg_63_0 - (rawget(_G, "screenOffsetX") or 0)) / math.max(0.0001, var_63_0), (arg_63_1 - (rawget(_G, "screenOffsetY") or 0)) / math.max(0.0001, var_63_1)
end

var_0_62.stamp = 0

local function var_0_72()
	local var_64_0, var_64_1 = var_0_70()

	if var_0_63 < 0 then
		var_0_63 = 0
	elseif var_0_63 > var_64_0 - 1 then
		var_0_63 = var_64_0 - 1
	end

	if var_0_64 < 0 then
		var_0_64 = 0
	elseif var_0_64 > var_64_1 - 1 then
		var_0_64 = var_64_1 - 1
	end

	var_0_62.stamp = var_0_62.stamp + 1
end

function var_0_62.get()
	return var_0_63, var_0_64
end

function var_0_62.screen()
	local var_66_0, var_66_1 = var_0_62.toScreen(var_0_63, var_0_64)

	return math.floor(var_66_0 + 0.5), math.floor(var_66_1 + 0.5)
end

function var_0_62.syncFrom(arg_67_0, arg_67_1)
	var_0_63, var_0_64 = var_0_62.toVirtual(arg_67_0, arg_67_1)

	var_0_72()

	var_0_65 = nil
end

function var_0_62.warp(arg_68_0)
	if not arg_68_0 then
		return
	end

	if love.window and love.window.hasFocus and not love.window.hasFocus() then
		return
	end

	local var_68_0, var_68_1 = var_0_62.screen()

	if var_68_0 == var_0_67 and var_68_1 == var_0_68 then
		return
	end

	var_0_67, var_0_68 = var_68_0, var_68_1
	var_0_69[#var_0_69 + 1] = {
		var_68_0,
		var_68_1,
		love.timer.getTime()
	}

	if #var_0_69 > 16 then
		table.remove(var_0_69, 1)
	end

	pcall(arg_68_0, var_68_0, var_68_1)
end

function var_0_62.isWarpEcho(arg_69_0, arg_69_1)
	local var_69_0 = love.timer.getTime()

	for iter_69_0 = #var_0_69, 1, -1 do
		local var_69_1 = var_0_69[iter_69_0]

		if var_69_0 - var_69_1[3] > 0.5 then
			break
		end

		if math.abs(arg_69_0 - var_69_1[1]) <= 2 and math.abs(arg_69_1 - var_69_1[2]) <= 2 then
			return true
		end
	end

	return false
end

function var_0_62.set(arg_70_0, arg_70_1)
	var_0_63, var_0_64 = arg_70_0, arg_70_1

	var_0_72()

	var_0_65 = nil
end

function var_0_62.glideTo(arg_71_0, arg_71_1, arg_71_2)
	local var_71_0, var_71_1 = var_0_70()

	arg_71_0 = math.max(0, math.min(var_71_0 - 1, arg_71_0))
	arg_71_1 = math.max(0, math.min(var_71_1 - 1, arg_71_1))
	var_0_65 = {
		t = 0,
		fx = var_0_63,
		fy = var_0_64,
		tx = arg_71_0,
		ty = arg_71_1,
		dur = arg_71_2 or 0.085
	}
end

function var_0_62.isGliding()
	return var_0_65 ~= nil
end

function var_0_62.finishGlide()
	if var_0_65 then
		var_0_63, var_0_64 = var_0_65.tx, var_0_65.ty
		var_0_65 = nil

		var_0_72()
	end
end

function var_0_62.follow(arg_74_0, arg_74_1)
	if var_0_65 then
		var_0_65.tx, var_0_65.ty = arg_74_0, arg_74_1
	else
		var_0_63, var_0_64 = arg_74_0, arg_74_1

		var_0_72()
	end
end

function var_0_62.glideTarget()
	if var_0_65 then
		return var_0_65.tx, var_0_65.ty
	end

	return var_0_63, var_0_64
end

function var_0_62.speedMultiplier()
	local var_76_0 = tonumber(var_0_62.speed) or 0.5

	if var_76_0 < 0 then
		var_76_0 = 0
	elseif var_76_0 > 1 then
		var_76_0 = 1
	end

	return 0.55 + var_76_0 * 1.2
end

function var_0_62.update(arg_77_0, arg_77_1, arg_77_2, arg_77_3)
	local var_77_0 = false
	local var_77_1 = math.sqrt(arg_77_1 * arg_77_1 + arg_77_2 * arg_77_2)
	local var_77_2 = 0.2

	if var_0_65 then
		if var_77_1 > 0.45 then
			var_0_65 = nil
		else
			var_0_65.t = var_0_65.t + arg_77_0

			local var_77_3 = math.min(1, var_0_65.t / math.max(0.001, var_0_65.dur))
			local var_77_4 = 1 - (1 - var_77_3) * (1 - var_77_3) * (1 - var_77_3)

			var_0_63 = var_0_65.fx + (var_0_65.tx - var_0_65.fx) * var_77_4
			var_0_64 = var_0_65.fy + (var_0_65.ty - var_0_65.fy) * var_77_4

			if var_77_3 >= 1 then
				var_0_65 = nil
			end

			var_77_0 = true
		end
	end

	if not var_0_65 and var_77_2 < var_77_1 then
		local var_77_5 = math.min(1, (var_77_1 - var_77_2) / (1 - var_77_2))
		local var_77_6 = var_77_5 * var_77_5 * (0.35 + 0.65 * var_77_5)

		if var_77_5 > 0.92 then
			var_0_66 = var_0_66 + arg_77_0
		else
			var_0_66 = 0
		end

		local var_77_7 = 1 + math.min(0.55, math.max(0, var_0_66 - 0.25) * 1.1)
		local var_77_8 = var_77_6 < 0.7 and (arg_77_3 or 1) or 1
		local var_77_9 = 400 * var_0_62.speedMultiplier() * var_77_6 * var_77_7 * var_77_8

		var_0_63 = var_0_63 + arg_77_1 / var_77_1 * var_77_9 * arg_77_0
		var_0_64 = var_0_64 + arg_77_2 / var_77_1 * var_77_9 * arg_77_0
		var_77_0 = true
	elseif var_77_1 <= var_77_2 then
		var_0_66 = 0
	end

	if var_77_0 then
		var_0_72()
	end

	return var_77_0
end

local var_0_73 = var_0_62
local var_0_74
local var_0_75 = {}
local var_0_76 = {}
local var_0_77 = {}

function var_0_75.beginFrame()
	var_0_77 = var_0_76
	var_0_76 = {}
end

function var_0_75.add(arg_79_0, arg_79_1, arg_79_2, arg_79_3, arg_79_4, arg_79_5, arg_79_6)
	if not arg_79_2 or not arg_79_3 or not arg_79_4 or not arg_79_5 or arg_79_4 <= 0 or arg_79_5 <= 0 then
		return
	end

	local var_79_0 = {
		group = arg_79_0,
		id = arg_79_1,
		x = arg_79_2,
		y = arg_79_3,
		w = arg_79_4,
		h = arg_79_5
	}

	if arg_79_6 then
		for iter_79_0, iter_79_1 in pairs(arg_79_6) do
			var_79_0[iter_79_0] = iter_79_1
		end
	end

	var_0_76[#var_0_76 + 1] = var_79_0
end

function var_0_75.list()
	if #var_0_76 > 0 then
		return var_0_76
	end

	return var_0_77
end

function var_0_75.group(arg_81_0, arg_81_1)
	arg_81_1 = arg_81_1 or {}

	for iter_81_0, iter_81_1 in ipairs(var_0_75.list()) do
		if iter_81_1.group == arg_81_0 then
			arg_81_1[#arg_81_1 + 1] = iter_81_1
		end
	end

	return arg_81_1
end

function var_0_75.find(arg_82_0)
	for iter_82_0, iter_82_1 in ipairs(var_0_75.list()) do
		if iter_82_1.id == arg_82_0 then
			return iter_82_1
		end
	end

	return nil
end

local var_0_78 = var_0_75
local var_0_79
local var_0_80 = {}

var_0_80.active = nil

local var_0_81 = 5

function var_0_80.start(arg_83_0, arg_83_1)
	var_0_80.active = {
		t = 0,
		waitRelease = true,
		armed = false,
		action = arg_83_0,
		device = arg_83_1
	}
end

function var_0_80.cancel()
	var_0_80.active = nil
end

function var_0_80.remaining()
	if not var_0_80.active then
		return 0
	end

	return math.max(0, var_0_81 - var_0_80.active.t)
end

function var_0_80.update(arg_86_0, arg_86_1)
	local var_86_0 = var_0_80.active

	if not var_86_0 then
		return
	end

	var_86_0.t = var_86_0.t + arg_86_0

	if var_86_0.waitRelease and not arg_86_1 and var_86_0.t > 0.08 then
		var_86_0.waitRelease = false
	end

	if var_86_0.t > 0.18 and not var_86_0.waitRelease then
		var_86_0.armed = true
	end

	if var_86_0.t >= var_0_81 then
		var_0_80.active = nil
	end
end

local var_0_82 = var_0_80
local var_0_83 = {
	bindings = var_0_8,
	glyphs = var_0_53,
	device = var_0_60,
	cursor = var_0_73,
	marks = var_0_78,
	capture = var_0_82,
	ACTIONS = var_0_8.ACTIONS
}

var_0_83.mode = "mouse"
var_0_83.hintAlpha = 0
var_0_83.dirty = false

local var_0_84 = {
	repeatT = 0,
	mouseTravel = 0,
	lastPadInputT = -1,
	dirtyT = 0,
	scrollT = 0,
	down = {},
	virtualDown = {},
	pressedAction = {},
	ctxCursor = {}
}
local var_0_85 = {}

local function var_0_86()
	return love.timer and love.timer.getTime and love.timer.getTime() or 0
end

local function var_0_87(arg_88_0)
	return rawget(_G, arg_88_0)
end

local function var_0_88()
	return package.loaded["src.data.language"] or require("src.data.language")
end

local function var_0_89(arg_90_0)
	local var_90_0 = var_0_87("currentGameLang") or "ko"
	local var_90_1 = var_0_87("ui")

	if var_90_1 and var_90_1.menuSettings and var_90_1.menuSettings.language then
		var_90_0 = var_90_1.menuSettings.language
	end

	return var_0_88().getText(arg_90_0, var_90_0)
end

var_0_83.text = var_0_89

local function var_0_90()
	local var_91_0 = var_0_87("playButtonClickSound")

	if var_91_0 then
		pcall(var_91_0)
	end
end

local function var_0_91()
	local var_92_0 = var_0_87("playButtonHoverSound")

	if var_92_0 then
		pcall(var_92_0)
	end
end

function var_0_83.isPad()
	return var_0_83.mode == "pad"
end

function var_0_83.muteHover()
	if var_0_83.mode ~= "pad" then
		return false
	end

	if var_0_84.pendingFocus then
		return true
	end

	local var_94_0 = var_0_84.swallowHoverUntil

	if var_94_0 then
		var_0_84.swallowHoverUntil = nil

		if var_94_0 > var_0_86() then
			return true
		end
	end

	return false
end

function var_0_83.padStyle()
	return var_0_60.style()
end

function var_0_83.actionGlyphImage(arg_96_0)
	local var_96_0 = var_0_8.padButton(arg_96_0)

	if not var_96_0 then
		return nil
	end

	return var_0_53.image(var_0_60.style(), var_96_0)
end

local function var_0_92(arg_97_0)
	if type(arg_97_0) == "string" and arg_97_0:sub(1, 1) == "@" then
		return var_0_8.padButton(arg_97_0:sub(2))
	end

	return arg_97_0
end

function var_0_83.glyphRowSize(arg_98_0)
	local var_98_0 = var_0_60.style()
	local var_98_1 = 0
	local var_98_2 = 0

	for iter_98_0, iter_98_1 in ipairs(arg_98_0 or {}) do
		local var_98_3, var_98_4 = var_0_53.size(var_98_0, var_0_92(iter_98_1))

		var_98_1 = var_98_1 + var_98_3 + (iter_98_0 > 1 and 1 or 0)

		if var_98_2 < var_98_4 then
			var_98_2 = var_98_4
		end
	end

	return var_98_1, var_98_2
end

function var_0_83.drawGlyphRow(arg_99_0, arg_99_1, arg_99_2, arg_99_3)
	local var_99_0 = var_0_60.style()
	local var_99_1 = arg_99_1

	for iter_99_0, iter_99_1 in ipairs(arg_99_0 or {}) do
		if iter_99_0 > 1 then
			var_99_1 = var_99_1 + 1
		end

		var_99_1 = var_99_1 + var_0_53.draw(var_99_0, var_0_92(iter_99_1), var_99_1, arg_99_2, arg_99_3 or 1)
	end

	return var_99_1 - arg_99_1
end

local function var_0_93()
	if var_0_85.installed or not love.mouse then
		return
	end

	var_0_85.installed = true
	var_0_85.getPosition = love.mouse.getPosition
	var_0_85.getX = love.mouse.getX
	var_0_85.getY = love.mouse.getY
	var_0_85.setPosition = love.mouse.setPosition
	var_0_85.isDown = love.mouse.isDown

	local var_100_0 = -100000

	function love.mouse.getPosition()
		if var_0_83.mode == "pad" then
			if var_0_84.parked then
				return var_100_0, var_100_0
			end

			return var_0_73.screen()
		end

		return var_0_85.getPosition()
	end

	function love.mouse.getX()
		if var_0_83.mode == "pad" then
			if var_0_84.parked then
				return var_100_0
			end

			return (var_0_73.screen())
		end

		return var_0_85.getX()
	end

	function love.mouse.getY()
		if var_0_83.mode == "pad" then
			if var_0_84.parked then
				return var_100_0
			end

			local var_103_0, var_103_1 = var_0_73.screen()

			return var_103_1
		end

		return var_0_85.getY()
	end

	function love.mouse.setPosition(arg_104_0, arg_104_1)
		var_0_73.syncFrom(arg_104_0, arg_104_1)

		return var_0_85.setPosition(arg_104_0, arg_104_1)
	end

	function love.mouse.isDown(...)
		for iter_105_0 = 1, select("#", ...) do
			if var_0_84.virtualDown[select(iter_105_0, ...)] then
				return true
			end
		end

		return var_0_85.isDown(...)
	end
end

function var_0_83.realMousePosition()
	if var_0_85.getPosition then
		return var_0_85.getPosition()
	end

	return love.mouse.getPosition()
end

local function var_0_94(arg_107_0)
	if var_0_83.mode == arg_107_0 then
		return
	end

	if arg_107_0 == "pad" then
		local var_107_0, var_107_1 = var_0_83.realMousePosition()

		var_0_73.syncFrom(var_107_0, var_107_1)

		var_0_84.realX, var_0_84.realY = var_107_0, var_107_1
		var_0_84.mouseTravel = 0
		var_0_84.padWoke = true
		var_0_84.settingsFocus = nil
	else
		var_0_84.parked = false

		for iter_107_0 in pairs(var_0_84.virtualDown) do
			var_0_84.virtualDown[iter_107_0] = nil
		end
	end

	var_0_83.mode = arg_107_0
end

var_0_83.setMode = var_0_94

function var_0_83.serialize()
	local var_108_0, var_108_1 = var_0_8.serialize()

	return {
		pad = var_108_0,
		keys = var_108_1,
		vibration = var_0_60.vibration ~= false,
		cursorSpeed = var_0_73.speed,
		glyphs = var_0_60.styleSetting
	}
end

function var_0_83.load(arg_109_0)
	var_0_83.resetToDefaults()

	if type(arg_109_0) ~= "table" then
		return
	end

	var_0_8.load(arg_109_0.pad, arg_109_0.keys)

	var_0_60.vibration = arg_109_0.vibration ~= false

	local var_109_0 = tonumber(arg_109_0.cursorSpeed)

	if var_109_0 and var_109_0 == var_109_0 then
		var_0_73.speed = math.max(0, math.min(1, var_109_0))
	end

	local var_109_1 = arg_109_0.glyphs

	if var_109_1 == "auto" or var_109_1 == "xbox" or var_109_1 == "playstation" or var_109_1 == "nintendo" then
		var_0_60.styleSetting = var_109_1
	end
end

function var_0_83.resetToDefaults()
	var_0_8.reset()

	var_0_60.vibration = true
	var_0_73.speed = 0.5
	var_0_60.styleSetting = "auto"
end

local function var_0_95()
	var_0_83.dirty = true
	var_0_84.dirtyT = 0
end

var_0_83.markDirty = var_0_95

local var_0_96 = {
	spin = {
		0.16,
		0.08,
		0.07
	},
	win = {
		0.22,
		0.32,
		0.14
	},
	jackpot = {
		0.5,
		0.6,
		0.32
	},
	damage = {
		0.45,
		0.28,
		0.2
	},
	victory = {
		0.3,
		0.42,
		0.42
	},
	defeat = {
		0.65,
		0.5,
		0.55
	},
	drop = {
		0.1,
		0,
		0.05
	},
	absorb = {
		0.28,
		0.3,
		0.16
	},
	nudge = {
		0.12,
		0.12,
		0.06
	},
	deny = {
		0.1,
		0.16,
		0.07
	},
	test = {
		0.35,
		0.35,
		0.2
	}
}

function var_0_83.rumble(arg_112_0)
	if var_0_83.mode ~= "pad" then
		return false
	end

	local var_112_0 = var_0_96[arg_112_0]

	if not var_112_0 then
		return false
	end

	return var_0_60.vibrate(var_112_0[1], var_112_0[2], var_112_0[3])
end

local var_0_97 = {}

local function var_0_98()
	local var_113_0 = var_0_97
	local var_113_1 = var_0_87("slot")
	local var_113_2 = var_0_87("battlefield")
	local var_113_3 = var_0_87("drag")
	local var_113_4 = var_113_1 and var_113_1.spin and var_113_1.spin.active == true or false
	local var_113_5 = var_113_1 and var_113_1.result and var_113_1.result.winSeq and var_113_1.result.winSeq.active == true or false
	local var_113_6 = false

	for iter_113_0, iter_113_1 in ipairs(var_113_1 and var_113_1.reels or {}) do
		if iter_113_1 and iter_113_1.nudge and iter_113_1.nudge.active then
			var_113_6 = true
		end
	end

	local var_113_7 = var_113_3 and var_113_3.active == true or false
	local var_113_8 = var_113_2 and tonumber(var_113_2.baseHP) or nil
	local var_113_9 = var_113_2 and var_113_2.gameOver == true or false
	local var_113_10 = var_0_87("ui")
	local var_113_11 = var_113_10 and var_113_10._shopFundsDeny and var_113_10._shopFundsDeny.t0 or nil

	if var_113_0.init and var_0_83.mode == "pad" then
		if var_113_11 and var_113_11 ~= var_113_0.denyT then
			var_0_83.rumble("deny")
		end

		if var_113_4 and not var_113_0.spinning then
			var_0_83.rumble("spin")
		end

		if var_113_5 and not var_113_0.winning then
			var_0_83.rumble("win")
		end

		if var_113_6 and not var_113_0.nudging then
			var_0_83.rumble("nudge")
		end

		if var_113_0.dragging and not var_113_7 then
			var_0_83.rumble("drop")
		end

		if var_113_8 and var_113_0.hp and var_113_8 < var_113_0.hp and var_113_2 == var_113_0.bf then
			var_0_83.rumble("damage")
		end

		if var_113_9 and not var_113_0.over and var_113_2 == var_113_0.bf then
			var_0_83.rumble(var_113_2.gameClear and "victory" or "defeat")
		end
	end

	var_113_0.init = true
	var_113_0.spinning, var_113_0.winning, var_113_0.nudging, var_113_0.dragging = var_113_4, var_113_5, var_113_6, var_113_7
	var_113_0.hp, var_113_0.over, var_113_0.bf = var_113_8, var_113_9, var_113_2
	var_113_0.denyT = var_113_11
end

local function var_0_99(arg_114_0, ...)
	var_0_84.synth = (var_0_84.synth or 0) + 1

	local var_114_0, var_114_1 = pcall(arg_114_0, ...)

	var_0_84.synth = var_0_84.synth - 1

	if not var_114_0 then
		error(var_114_1, 0)
	end
end

function var_0_83.isSynthesizing()
	return (var_0_84.synth or 0) > 0
end

local function var_0_100(arg_116_0)
	var_0_73.finishGlide()
	var_0_73.warp(var_0_85.setPosition)

	local var_116_0, var_116_1 = var_0_73.screen()

	var_0_84.virtualDown[arg_116_0] = true

	if love.mousepressed then
		var_0_99(love.mousepressed, var_116_0, var_116_1, arg_116_0, false, 1)
	end
end

local function var_0_101(arg_117_0)
	if not var_0_84.virtualDown[arg_117_0] then
		return
	end

	local var_117_0, var_117_1 = var_0_73.screen()

	var_0_84.virtualDown[arg_117_0] = nil

	if love.mousereleased then
		var_0_99(love.mousereleased, var_117_0, var_117_1, arg_117_0, false, 1)
	end
end

var_0_84.frame = 0
var_0_84.mouseQueue = {}

local function var_0_102(arg_118_0, arg_118_1)
	var_0_84.mouseQueue[#var_0_84.mouseQueue + 1] = {
		kind = arg_118_0,
		button = arg_118_1,
		frame = var_0_84.frame
	}
end

local function var_0_103(arg_119_0)
	if var_0_73.isGliding() or var_0_73.stamp ~= var_0_84.seenStamp then
		var_0_73.finishGlide()
		var_0_73.warp(var_0_85.setPosition)
		var_0_102("press", arg_119_0)
	elseif #var_0_84.mouseQueue > 0 then
		var_0_102("press", arg_119_0)
	else
		var_0_100(arg_119_0)
	end
end

local function var_0_104(arg_120_0)
	if #var_0_84.mouseQueue > 0 then
		var_0_102("release", arg_120_0)
	else
		var_0_101(arg_120_0)
	end
end

local function var_0_105()
	while #var_0_84.mouseQueue > 0 do
		local var_121_0 = var_0_84.mouseQueue[1]

		if var_0_84.frame < var_121_0.frame + 2 then
			return
		end

		table.remove(var_0_84.mouseQueue, 1)

		if var_121_0.kind == "press" then
			var_0_100(var_121_0.button)
		else
			var_0_101(var_121_0.button)
		end
	end
end

local function var_0_106(arg_122_0, arg_122_1)
	local var_122_0, var_122_1 = var_0_73.toScreen(arg_122_0, arg_122_1)
	local var_122_2, var_122_3 = math.floor(var_122_0 + 0.5), math.floor(var_122_1 + 0.5)
	local var_122_4 = var_0_87("tooltip")

	if var_122_4 then
		var_122_4.candidate = nil
	end

	if love.mousepressed then
		var_0_99(love.mousepressed, var_122_2, var_122_3, 1, false, 1)
	end

	if love.mousereleased then
		var_0_99(love.mousereleased, var_122_2, var_122_3, 1, false, 1)
	end
end

var_0_83.clickAt = var_0_106

local function var_0_107(arg_123_0)
	return arg_123_0.x + arg_123_0.w * 0.5, arg_123_0.y + arg_123_0.h * 0.5
end

local function var_0_108(arg_124_0, arg_124_1, arg_124_2)
	return arg_124_0 and arg_124_1 >= arg_124_0.x and arg_124_1 <= arg_124_0.x + arg_124_0.w and arg_124_2 >= arg_124_0.y and arg_124_2 <= arg_124_0.y + arg_124_0.h
end

local var_0_109 = {}

var_0_83.bridge = var_0_109

local function var_0_110()
	return package.loaded["src.ui.mainmenu"]
end

local function var_0_111()
	return package.loaded["src.ui.upgrade"]
end

local function var_0_112()
	local var_127_0 = var_0_87("ui")

	if not var_127_0 then
		return nil
	end

	if var_0_87("phase") == "menu" then
		local var_127_1 = var_127_0.menuSettingsOverlayState

		if var_127_1 and var_127_1.open == true then
			return var_127_1, "menu"
		end

		return nil
	end

	local var_127_2 = var_127_0.pauseOverlayState

	if var_127_2 and var_127_2.active == true and var_127_2.settingsMode == true then
		return var_127_2, "pause"
	end

	return nil
end

var_0_109.settingsState = var_0_112

function var_0_109.detect()
	local var_128_0 = var_0_87("ui")
	local var_128_1 = var_0_87("phase")
	local var_128_2 = var_0_87("StartupSplash")

	if var_128_2 and var_128_2.isActive and var_128_2.isActive() then
		return "splash"
	end

	if not var_128_0 then
		return "none"
	end

	if var_128_1 == "menu" then
		local var_128_3 = var_0_110()

		if var_128_3 and var_128_3.exitConfirm and var_128_3.exitConfirm.active then
			return "confirm"
		end

		if var_0_112() then
			return "settings"
		end

		if var_128_3 and var_128_3.stageSelect and var_128_3.stageSelect.active then
			return "stage"
		end

		return "menu"
	elseif var_128_1 == "upgrade" then
		return "upgrade"
	end

	local var_128_4 = var_128_0._restartConfirm

	if var_128_4 and var_128_4.active then
		return "confirm"
	end

	if var_0_112() then
		return "settings"
	end

	local var_128_5 = var_128_0.pauseOverlayState

	if var_128_5 and var_128_5.active then
		return "pause"
	end

	local var_128_6 = var_0_87("battlefield")

	if var_128_6 and var_128_6.gameOver then
		return "gameover"
	end

	local var_128_7 = var_0_87("Tutorial")

	if var_128_7 and var_128_7.isActive and var_128_7.isActive() then
		return "tutorial"
	end

	if var_128_0._coreSelect and var_128_0._coreSelect.active then
		return "core"
	end

	if var_128_6 and (var_128_6.classSelect or var_128_6.awakeningModal) then
		return "modal"
	end

	return "game"
end

local var_0_113 = {
	pause = true,
	core = true,
	stage = true,
	tutorial = true,
	settings = true,
	gameover = true,
	menu = true,
	confirm = true
}
local var_0_114 = {
	modal = true
}

local function var_0_115(arg_129_0, arg_129_1, arg_129_2, arg_129_3)
	if arg_129_1 and arg_129_1.x and arg_129_1.y and arg_129_1.w and arg_129_1.h and arg_129_1.w > 0 and arg_129_1.h > 0 then
		local var_129_0 = {
			x = arg_129_1.x,
			y = arg_129_1.y,
			w = arg_129_1.w,
			h = arg_129_1.h,
			id = arg_129_2
		}

		if arg_129_3 then
			for iter_129_0, iter_129_1 in pairs(arg_129_3) do
				var_129_0[iter_129_0] = iter_129_1
			end
		end

		arg_129_0[#arg_129_0 + 1] = var_129_0
	end
end

local function var_0_116(arg_130_0, arg_130_1)
	for iter_130_0, iter_130_1 in ipairs(var_0_78.list()) do
		if iter_130_1.group == arg_130_1 then
			arg_130_0[#arg_130_0 + 1] = iter_130_1
		end
	end
end

local function var_0_117(arg_131_0)
	local var_131_0 = var_0_110()
	local var_131_1 = var_131_0 and var_131_0.stageSelect

	if not var_131_1 then
		return
	end

	if var_131_1.diffActive then
		for iter_131_0, iter_131_1 in ipairs(var_131_1.diffRects or {}) do
			var_0_115(arg_131_0, iter_131_1, "diff" .. iter_131_0, {
				order = iter_131_0
			})
		end

		if var_131_0.getRunSave and var_131_0.getRunSave(var_131_1.selectedStage) then
			var_0_115(arg_131_0, var_131_1.saveSlotRect, "save")
		end
	else
		for iter_131_2, iter_131_3 in ipairs(var_131_1.stageRects or {}) do
			var_0_115(arg_131_0, iter_131_3, "stage" .. iter_131_2, {
				order = iter_131_2
			})
		end
	end

	if var_131_1.back then
		var_0_115(arg_131_0, var_131_1.back.rect, "back")
	end
end

local function var_0_118()
	local var_132_0 = var_0_87("__slotPadSettingsView") and var_0_87("__slotPadSettingsView")()

	if not var_132_0 then
		return nil
	end

	local var_132_1 = {}
	local var_132_2 = var_132_0.rowH or 26

	for iter_132_0, iter_132_1 in ipairs(var_132_0.items or {}) do
		local var_132_3 = var_132_0.cy + (iter_132_0 - 1) * var_132_2 - (var_132_0.scrollY or 0)
		local var_132_4 = var_132_0.cx + var_132_0.cw * 0.5
		local var_132_5 = var_132_3 + var_132_2 * 0.5
		local var_132_6 = var_0_87("__slotSettingsRowAnchor")

		if var_132_6 then
			local var_132_7, var_132_8 = var_132_6(iter_132_1, var_132_0.cx, var_132_0.cw, var_132_3, var_132_0.hasScrollbar, var_132_0.items)

			if var_132_7 then
				var_132_4, var_132_5 = var_132_7, var_132_8
			end
		end

		var_132_1[iter_132_0] = {
			item = iter_132_1,
			index = iter_132_0,
			x = var_132_0.cx,
			y = var_132_3,
			w = var_132_0.cw,
			h = var_132_2,
			fx = var_132_4,
			fy = var_132_5
		}
	end

	var_132_0.rows = var_132_1

	return var_132_0
end

var_0_109.settingsRows = var_0_118

function var_0_109.targets(arg_133_0)
	local var_133_0 = {}
	local var_133_1 = var_0_87("ui")

	if arg_133_0 == "menu" then
		local var_133_2 = var_0_110()

		if var_133_2 then
			for iter_133_0, iter_133_1 in ipairs(var_133_2.buttons or {}) do
				var_0_115(var_133_0, iter_133_1.rect, "menu" .. iter_133_0, {
					order = iter_133_0
				})
			end

			var_0_115(var_133_0, var_133_2.upgradeRect, "upgrade", {
				order = 10
			})
			var_0_115(var_133_0, var_133_2.collectionRect, "collection", {
				order = 11
			})
			var_0_115(var_133_0, var_133_2.achievementRect, "achievement", {
				order = 12
			})
			var_0_115(var_133_0, var_133_2.discordRect, "discord", {
				order = 13
			})
		end
	elseif arg_133_0 == "stage" then
		var_0_117(var_133_0)
	elseif arg_133_0 == "confirm" then
		local var_133_3 = var_0_110()
		local var_133_4 = var_0_87("phase") == "menu" and var_133_3 and var_133_3.exitConfirm or var_133_1 and var_133_1._restartConfirm

		if var_133_4 then
			var_0_115(var_133_0, var_133_4.rectYes, "yes", {
				order = 1
			})
			var_0_115(var_133_0, var_133_4.rectNo, "no", {
				order = 2,
				default = true
			})
		end
	elseif arg_133_0 == "pause" then
		var_0_116(var_133_0, "pause")
	elseif arg_133_0 == "gameover" then
		local var_133_5 = var_133_1 and var_133_1.gameOverButtons

		if var_133_5 then
			var_0_115(var_133_0, var_133_5.replay, "replay", {
				order = 1
			})
			var_0_115(var_133_0, var_133_5.upgrade, "upgrade", {
				order = 2
			})
			var_0_115(var_133_0, var_133_5.main, "main", {
				order = 3
			})
		end
	elseif arg_133_0 == "tutorial" then
		local var_133_6 = var_0_87("Tutorial")

		if var_133_6 and var_133_6.padTargets then
			for iter_133_2, iter_133_3 in ipairs(var_133_6.padTargets(var_133_1)) do
				var_133_0[#var_133_0 + 1] = iter_133_3
			end
		end
	elseif arg_133_0 == "modal" or arg_133_0 == "core" then
		var_0_116(var_133_0, "modal")

		local var_133_7 = var_0_87("__slotPadModalTargets")

		if var_133_7 then
			var_133_7(var_133_0)
		end
	elseif arg_133_0 == "upgrade" then
		local var_133_8 = var_0_111()

		if var_133_8 and var_133_8.getPadTargets then
			for iter_133_4, iter_133_5 in ipairs(var_133_8.getPadTargets() or {}) do
				var_133_0[#var_133_0 + 1] = iter_133_5
			end
		end
	elseif arg_133_0 == "game" then
		var_0_116(var_133_0, "hud")

		local var_133_9 = var_0_87("__slotPadGameTargets")

		if var_133_9 then
			var_133_9(var_133_0)
		end
	end

	return var_133_0
end

local function var_0_119(arg_134_0)
	if arg_134_0.fx and arg_134_0.fy then
		return arg_134_0.fx, arg_134_0.fy
	end

	return var_0_107(arg_134_0)
end

function var_0_109.pick(arg_135_0, arg_135_1, arg_135_2, arg_135_3, arg_135_4, arg_135_5)
	local var_135_0
	local var_135_1 = math.huge
	local var_135_2 = var_0_87("ui")
	local var_135_3 = var_135_2 and var_135_2.virtual and var_135_2.virtual.W or 640
	local var_135_4 = var_135_2 and var_135_2.virtual and var_135_2.virtual.H or 360

	for iter_135_0, iter_135_1 in ipairs(arg_135_0) do
		local var_135_5, var_135_6 = var_0_119(iter_135_1)

		if iter_135_1 ~= arg_135_5 and var_135_5 >= 0 and var_135_6 >= 0 and var_135_5 < var_135_3 and var_135_6 < var_135_4 then
			local var_135_7 = math.max(iter_135_1.x, math.min(arg_135_1, iter_135_1.x + iter_135_1.w))
			local var_135_8 = math.max(iter_135_1.y, math.min(arg_135_2, iter_135_1.y + iter_135_1.h))
			local var_135_9 = var_135_5 - arg_135_1
			local var_135_10 = var_135_6 - arg_135_2
			local var_135_11 = var_135_9 * arg_135_3 + var_135_10 * arg_135_4

			if var_135_11 > 3 then
				local var_135_12 = (var_135_7 - arg_135_1) * arg_135_3 + (var_135_8 - arg_135_2) * arg_135_4
				local var_135_13 = math.max(var_135_12, var_135_11 * 0.35)
				local var_135_14 = math.abs(var_135_9 * arg_135_4 - var_135_10 * arg_135_3)
				local var_135_15

				if arg_135_3 ~= 0 then
					var_135_15 = arg_135_2 >= iter_135_1.y and arg_135_2 <= iter_135_1.y + iter_135_1.h
				else
					var_135_15 = arg_135_1 >= iter_135_1.x and arg_135_1 <= iter_135_1.x + iter_135_1.w
				end

				local var_135_16 = var_135_13 + var_135_14 * (var_135_15 and 0.6 or 2)

				if var_135_14 > var_135_11 * 3 then
					var_135_16 = var_135_16 + 1000
				end

				if var_135_16 < var_135_1 then
					var_135_0, var_135_1 = iter_135_1, var_135_16
				end
			end
		end
	end

	return var_135_0
end

function var_0_109.at(arg_136_0, arg_136_1, arg_136_2)
	for iter_136_0 = #arg_136_0, 1, -1 do
		local var_136_0 = arg_136_0[iter_136_0]

		if var_0_108(var_136_0, arg_136_1, arg_136_2) then
			return var_136_0
		end
	end

	return nil
end

local function var_0_120(arg_137_0)
	local var_137_0

	for iter_137_0, iter_137_1 in ipairs(arg_137_0) do
		if iter_137_1.default then
			return iter_137_1
		end

		if not var_137_0 or (iter_137_1.order or 99) < (var_137_0.order or 99) then
			var_137_0 = iter_137_1
		end
	end

	return var_137_0
end

var_0_109.defaultTarget = var_0_120

local function var_0_121(arg_138_0)
	if var_0_83.mode ~= "pad" then
		return
	end

	var_0_84.parked = true
	var_0_84.parkHoldUntil = math.max(var_0_84.parkHoldUntil or 0, var_0_86() + (arg_138_0 or 1.2))
end

local var_0_122 = {}

for iter_0_7 = -16, 16, 2 do
	for iter_0_8 = -14, 14, 2 do
		var_0_122[#var_0_122 + 1] = {
			iter_0_8,
			iter_0_7,
			iter_0_8 * iter_0_8 + iter_0_7 * iter_0_7
		}
	end
end

table.sort(var_0_122, function(arg_139_0, arg_139_1)
	return arg_139_0[3] < arg_139_1[3]
end)

local function var_0_123(arg_140_0, arg_140_1, arg_140_2)
	local var_140_0 = var_0_87("tooltip")
	local var_140_1 = var_0_87("battlefield")

	if not var_140_0 or not var_140_0.probeUnit or not var_140_1 then
		return nil
	end

	local var_140_2 = var_140_0:probeUnit(var_140_1, arg_140_1, arg_140_2)

	return var_140_2 ~= nil and var_140_2.ref == arg_140_0
end

local function var_0_124(arg_141_0)
	local var_141_0, var_141_1 = var_0_119(arg_141_0)

	if var_0_123(arg_141_0.id, var_141_0, var_141_1) == nil then
		return var_141_0, var_141_1
	end

	local var_141_2 = arg_141_0.id
	local var_141_3

	for iter_141_0, iter_141_1 in ipairs(var_0_122) do
		local var_141_4 = var_141_0 + iter_141_1[1]
		local var_141_5 = var_141_1 + iter_141_1[2]

		if var_0_123(var_141_2, var_141_4, var_141_5) then
			var_141_3 = var_141_3 or {
				var_141_4,
				var_141_5
			}

			if var_0_123(var_141_2, var_141_4 - 3, var_141_5) and var_0_123(var_141_2, var_141_4 + 3, var_141_5) and var_0_123(var_141_2, var_141_4, var_141_5 - 3) and var_0_123(var_141_2, var_141_4, var_141_5 + 3) then
				return var_141_4, var_141_5
			end
		end
	end

	if var_141_3 then
		return var_141_3[1], var_141_3[2]
	end

	return var_141_0, var_141_1
end

local function var_0_125(arg_142_0, arg_142_1)
	if not arg_142_0 then
		return false
	end

	var_0_84.parkHoldUntil = nil

	local var_142_0, var_142_1 = var_0_119(arg_142_0)

	var_0_84.focusUnit = nil

	if arg_142_0.group == "unit" then
		var_142_0, var_142_1 = var_0_124(arg_142_0)

		local var_142_2, var_142_3 = var_0_119(arg_142_0)

		var_0_84.focusUnit = arg_142_0.id
		var_0_84.focusUnitOffset = {
			var_142_0 - var_142_2,
			var_142_1 - var_142_3
		}
	end

	var_0_84.focusAnchor = {
		var_142_0,
		var_142_1
	}

	var_0_73.set(var_142_0, var_142_1)

	var_0_84.parked = false
	var_0_84.focusId = arg_142_0.id

	return true
end

local function var_0_126(arg_143_0)
	if not var_0_84.focusId or arg_143_0 == "settings" or not var_0_113[arg_143_0] then
		return
	end

	for iter_143_0, iter_143_1 in ipairs(var_0_109.targets(arg_143_0)) do
		if iter_143_1.id == var_0_84.focusId then
			local var_143_0, var_143_1 = var_0_119(iter_143_1)
			local var_143_2 = var_0_84.focusAnchor

			if not var_143_2 then
				var_143_2 = {
					var_143_0,
					var_143_1
				}
				var_0_84.focusAnchor = var_143_2
			end

			if math.abs(var_143_0 - var_143_2[1]) + math.abs(var_143_1 - var_143_2[2]) > 20 then
				var_0_121(0.25)
			end

			local var_143_3, var_143_4 = var_0_73.glideTarget()

			if math.abs(var_143_0 - var_143_3) + math.abs(var_143_1 - var_143_4) > 0.75 then
				var_0_73.set(var_143_0, var_143_1)
			end

			return
		end
	end

	if var_0_83.mode == "pad" then
		var_0_121(0.25)
	end
end

local function var_0_127(arg_144_0)
	local var_144_0 = var_0_84.focusUnit

	if not var_144_0 then
		return
	end

	if arg_144_0 ~= "game" or var_144_0.alive == false or var_144_0.dying then
		var_0_84.focusUnit = nil

		return
	end

	local var_144_1 = var_0_87("drag")

	if var_144_1 and var_144_1.active then
		return
	end

	local var_144_2

	for iter_144_0, iter_144_1 in ipairs(var_0_109.targets("game")) do
		if iter_144_1.id == var_144_0 then
			var_144_2 = iter_144_1

			break
		end
	end

	if not var_144_2 then
		var_0_84.focusUnit = nil

		return
	end

	local var_144_3, var_144_4 = var_0_119(var_144_2)
	local var_144_5 = var_0_84.focusUnitOffset or {
		0,
		0
	}
	local var_144_6 = var_144_3 + var_144_5[1]
	local var_144_7 = var_144_4 + var_144_5[2]
	local var_144_8, var_144_9 = var_0_73.get()

	if math.abs(var_144_6 - var_144_8) + math.abs(var_144_7 - var_144_9) > 0.5 then
		var_0_73.set(var_144_6, var_144_7)
	end

	if var_0_123(var_144_0, var_144_6, var_144_7) == false then
		local var_144_10, var_144_11 = var_0_124(var_144_2)

		var_0_84.focusUnitOffset = {
			var_144_10 - var_144_3,
			var_144_11 - var_144_4
		}

		var_0_73.set(var_144_10, var_144_11)
	end
end

local function var_0_128(arg_145_0)
	if var_0_83.mode == "pad" and var_0_84.settingsFocus then
		for iter_145_0, iter_145_1 in ipairs(arg_145_0.rows) do
			if iter_145_1.item.key == var_0_84.settingsFocus then
				return iter_145_1.index
			end
		end
	end

	local var_145_0, var_145_1 = var_0_73.glideTarget()

	for iter_145_2, iter_145_3 in ipairs(arg_145_0.rows) do
		if var_145_1 >= iter_145_3.y and var_145_1 < iter_145_3.y + iter_145_3.h and var_145_0 >= iter_145_3.x - 24 and var_145_0 <= iter_145_3.x + iter_145_3.w + 24 then
			return iter_145_3.index
		end
	end

	return nil
end

local function var_0_129(arg_146_0, arg_146_1)
	local var_146_0 = arg_146_0.st

	if not var_146_0 then
		return 0
	end

	local var_146_1 = arg_146_0.rowH or 26
	local var_146_2 = (arg_146_1 - 1) * var_146_1
	local var_146_3 = var_146_0.settingsScrollY or 0
	local var_146_4 = var_146_0.settingsScrollMax or 0
	local var_146_5 = var_146_3

	if var_146_2 < var_146_3 then
		var_146_5 = var_146_2
	elseif var_146_2 + var_146_1 > var_146_3 + arg_146_0.ch then
		var_146_5 = var_146_2 + var_146_1 - arg_146_0.ch
	end

	local var_146_6 = math.max(0, math.min(var_146_4, var_146_5))

	var_146_0.settingsScrollY = var_146_6

	return var_146_6 - var_146_3
end

local function var_0_130(arg_147_0, arg_147_1)
	local var_147_0 = arg_147_0.rows[arg_147_1]

	if not var_147_0 then
		return false
	end

	local var_147_1 = var_0_129(arg_147_0, arg_147_1)

	var_0_84.settingsFocus = var_147_0.item.key

	var_0_73.set(var_147_0.fx, var_147_0.fy - var_147_1)

	return true
end

local function var_0_131(arg_148_0)
	return arg_148_0 and arg_148_0.st and arg_148_0.st.langDropdownOpen == true
end

local function var_0_132()
	if not var_0_84.settingsFocus or var_0_82.active then
		return
	end

	local var_149_0 = var_0_118()

	if not var_149_0 or #var_149_0.rows == 0 or var_0_131(var_149_0) then
		return
	end

	local var_149_1 = var_0_128(var_149_0)

	if not var_149_1 then
		return
	end

	local var_149_2 = var_149_0.cy
	local var_149_3 = var_149_0.cy + var_149_0.ch
	local var_149_4 = var_149_0.rows[var_149_1]

	if var_149_2 > var_149_4.y + var_149_4.h * 0.5 or var_149_3 < var_149_4.y + var_149_4.h * 0.5 then
		local var_149_5
		local var_149_6 = math.huge

		for iter_149_0, iter_149_1 in ipairs(var_149_0.rows) do
			local var_149_7 = iter_149_1.y + iter_149_1.h * 0.5

			if var_149_2 <= var_149_7 and var_149_7 <= var_149_3 then
				local var_149_8 = math.abs(iter_149_1.index - var_149_1)

				if var_149_8 < var_149_6 then
					var_149_5, var_149_6 = iter_149_1, var_149_8
				end
			end
		end

		if not var_149_5 then
			return
		end

		var_149_4 = var_149_5
		var_0_84.settingsFocus = var_149_4.item.key
	end

	local var_149_9, var_149_10 = var_0_73.glideTarget()

	if math.abs(var_149_9 - var_149_4.fx) + math.abs(var_149_10 - var_149_4.fy) > 0.5 then
		var_0_73.set(var_149_4.fx, var_149_4.fy)
	end
end

local function var_0_133(arg_150_0, arg_150_1)
	local var_150_0 = arg_150_0.rowH or 26
	local var_150_1 = #(arg_150_1.item.options or {})
	local var_150_2 = var_0_87("__slotSettingsDropdownGeometry")

	if var_150_2 then
		local var_150_3 = arg_150_0.hasScrollbar and math.max(1, arg_150_0.cw - 20) or arg_150_0.cw
		local var_150_4 = var_150_2(arg_150_0.cx, var_150_3, arg_150_1.y, var_150_1, arg_150_0.st)

		return var_150_4.listTop, var_150_4.optH, var_150_4.first, var_150_4.visible
	end

	return arg_150_1.y + 4 + (var_150_0 - 8), var_150_0, 0, var_150_1
end

local function var_0_134(arg_151_0, arg_151_1, arg_151_2, arg_151_3)
	local var_151_0, var_151_1, var_151_2, var_151_3 = var_0_133(arg_151_0, arg_151_1)

	if arg_151_2 < var_151_2 + 1 then
		var_151_2 = arg_151_2 - 1
	elseif arg_151_2 > var_151_2 + var_151_3 then
		var_151_2 = arg_151_2 - var_151_3
	end

	if arg_151_0.st then
		arg_151_0.st.langDropdownScroll = var_151_2
	end

	local var_151_4, var_151_5, var_151_6 = var_0_133(arg_151_0, arg_151_1)
	local var_151_7 = var_151_6
	local var_151_8 = var_151_5
	local var_151_9 = var_151_4 + (arg_151_2 - var_151_7 - 0.5) * var_151_8

	var_0_73.set(arg_151_1.fx, var_151_9)
end

local function var_0_135(arg_152_0, arg_152_1)
	if not arg_152_0 then
		return false
	end

	if arg_152_0.disabled then
		return false
	end

	if arg_152_0.kind == "radio" and arg_152_0.options and arg_152_0.set then
		local var_152_0 = arg_152_0.get and arg_152_0.get()
		local var_152_1 = 1

		for iter_152_0, iter_152_1 in ipairs(arg_152_0.options) do
			if iter_152_1.value == var_152_0 then
				var_152_1 = iter_152_0
			end
		end

		local var_152_2 = #arg_152_0.options
		local var_152_3 = (var_152_1 - 1 + arg_152_1) % var_152_2 + 1

		arg_152_0.set(arg_152_0.options[var_152_3].value)
		var_0_90()

		return true
	elseif arg_152_0.kind == "dropdown" and arg_152_0.options and arg_152_0.set then
		local var_152_4 = arg_152_0.get and arg_152_0.get()
		local var_152_5 = 1

		for iter_152_2, iter_152_3 in ipairs(arg_152_0.options) do
			if iter_152_3.value == var_152_4 then
				var_152_5 = iter_152_2
			end
		end

		local var_152_6 = #arg_152_0.options
		local var_152_7 = (var_152_5 - 1 + arg_152_1) % var_152_6 + 1

		arg_152_0.set(arg_152_0.options[var_152_7].value)
		var_0_90()

		return true
	elseif arg_152_0.kind == "slider" and arg_152_0.set and arg_152_0.get then
		local var_152_8 = tonumber(arg_152_0.get()) or 0
		local var_152_9 = arg_152_0.padStep or 0.05
		local var_152_10 = math.max(arg_152_0.min or 0, math.min(arg_152_0.max or 1, var_152_8 + arg_152_1 * var_152_9))
		local var_152_11 = math.floor(var_152_10 / var_152_9 + 0.5) * var_152_9

		arg_152_0.set(var_152_11)

		if arg_152_0.onPadAdjust then
			arg_152_0.onPadAdjust(var_152_11)
		end

		var_0_91()

		return true
	elseif arg_152_0.kind == "checkbox" and arg_152_0.set then
		local var_152_12 = arg_152_0.get and arg_152_0.get() == true

		if arg_152_1 > 0 ~= var_152_12 then
			arg_152_0.set(not var_152_12)
			var_0_90()
		end

		return true
	end

	return false
end

local function var_0_136(arg_153_0)
	local var_153_0 = var_0_118()

	if not var_153_0 or #var_153_0.rows == 0 then
		return false
	end

	if var_0_131(var_153_0) then
		local var_153_1

		for iter_153_0, iter_153_1 in ipairs(var_153_0.rows) do
			if iter_153_1.item.kind == "dropdown" then
				var_153_1 = iter_153_1
			end
		end

		if not var_153_1 then
			return true
		end

		local var_153_2 = var_153_1.item.options or {}
		local var_153_3, var_153_4 = var_0_73.glideTarget()
		local var_153_5, var_153_6, var_153_7, var_153_8 = var_0_133(var_153_0, var_153_1)
		local var_153_9 = math.floor((var_153_4 - var_153_5) / var_153_6) + 1
		local var_153_10 = var_153_9 >= 1 and var_153_9 <= var_153_8 and var_153_7 + var_153_9 or 0

		if arg_153_0 == "down" then
			var_153_10 = math.min(#var_153_2, var_153_10 + 1)
		elseif arg_153_0 == "up" then
			var_153_10 = math.max(1, var_153_10 - 1)
		else
			return true
		end

		var_0_134(var_153_0, var_153_1, var_153_10)

		return true
	end

	local var_153_11 = var_0_128(var_153_0)

	if arg_153_0 == "left" or arg_153_0 == "right" then
		if not var_153_11 then
			return var_0_130(var_153_0, 1)
		end

		local var_153_12 = var_153_0.rows[var_153_11].item

		if var_0_135(var_153_12, arg_153_0 == "right" and 1 or -1) and var_153_12.kind == "slider" then
			local var_153_13 = var_0_118()

			if var_153_13 and var_153_13.rows[var_153_11] then
				var_0_130(var_153_13, var_153_11)
			end
		end

		return true
	end

	if not var_153_11 then
		return var_0_130(var_153_0, 1)
	end

	local var_153_14 = var_153_11 + (arg_153_0 == "down" and 1 or -1)

	if var_153_14 < 1 or var_153_14 > #var_153_0.rows then
		return true
	end

	return var_0_130(var_153_0, var_153_14)
end

local function var_0_137()
	local var_154_0 = var_0_87("tooltip")

	if var_154_0 and var_154_0.locked then
		var_154_0.locked = false
		var_154_0.target = nil
		var_154_0.state = "PENDING_HIDE"
		var_154_0.hideT = 0

		return true
	end

	return false
end

function var_0_109.back(arg_155_0)
	local var_155_0 = var_0_87("ui")

	if arg_155_0 == "settings" then
		local var_155_1, var_155_2 = var_0_112()

		if var_155_1 and var_155_1.langDropdownOpen then
			var_155_1.langDropdownOpen = false

			var_0_90()

			return true
		end

		if var_155_1 and var_155_1.page == "controls" then
			local var_155_3 = var_0_87("__slotSettingsLeaveControlsPage")

			if var_155_3 then
				var_155_3(var_155_1)
			end

			return true
		end

		if var_155_2 == "menu" then
			local var_155_4 = var_0_87("closeMenuSettingsOverlay")

			if var_155_4 then
				var_155_4()
			end

			return true
		end

		if var_155_1 then
			var_0_90()

			var_155_1.settingsMode = false
			var_155_1._settingsPending = false
			var_155_1._settingsT = 0
			var_155_1.langDropdownOpen = false

			return true
		end

		return false
	elseif arg_155_0 == "confirm" then
		local var_155_5 = var_0_110()

		if var_0_87("phase") == "menu" and var_155_5 and var_155_5.exitConfirm and var_155_5.exitConfirm.active then
			var_155_5.exitConfirm.leaving = true

			var_0_90()

			return true
		end

		local var_155_6 = var_155_0 and var_155_0._restartConfirm

		if var_155_6 and var_155_6.rectNo then
			local var_155_7, var_155_8 = var_0_107(var_155_6.rectNo)

			var_0_106(var_155_7, var_155_8)

			return true
		end

		return false
	elseif arg_155_0 == "stage" then
		local var_155_9 = var_0_110()
		local var_155_10 = var_155_9 and var_155_9.stageSelect

		if var_155_10 and var_155_10.back and var_155_10.back.rect then
			local var_155_11, var_155_12 = var_0_107(var_155_10.back.rect)

			var_0_106(var_155_11, var_155_12)

			return true
		end

		return false
	elseif arg_155_0 == "pause" then
		if love.keypressed then
			love.keypressed("escape", "escape", false)
		end

		return true
	elseif arg_155_0 == "core" then
		for iter_155_0, iter_155_1 in ipairs(var_0_109.targets("core")) do
			if iter_155_1.id == "core_back" then
				local var_155_13, var_155_14 = var_0_107(iter_155_1)

				var_0_106(var_155_13, var_155_14)

				return true
			end
		end

		return false
	elseif arg_155_0 == "upgrade" then
		if love.keypressed then
			love.keypressed("escape", "escape", false)
		end

		return true
	elseif arg_155_0 == "game" then
		if var_155_0 and var_155_0._manualCoreTargetingKey then
			var_155_0._manualCoreTargetingKey = nil

			var_0_90()

			return true
		end

		if var_0_137() then
			return true
		end

		local var_155_15 = var_0_87("battlefield")

		if var_155_15 and var_155_15.absorbMode and var_155_15.mode ~= "battle" then
			var_0_83.runAction("absorb")

			return true
		end

		if var_155_0 and var_155_0._shopMode then
			var_0_83.runAction("shop")

			return true
		end

		return false
	end

	return false
end

function var_0_83.runAction(arg_156_0)
	if not love.keypressed then
		return
	end

	if arg_156_0 == "pause" then
		love.keypressed("escape", "escape", false)
	else
		love.keypressed("pad:" .. arg_156_0, "pad:" .. arg_156_0, false)
	end
end

function var_0_83.keyAction(arg_157_0)
	if type(arg_157_0) ~= "string" then
		return nil
	end

	local var_157_0 = arg_157_0:match("^pad:(.+)$")

	if var_157_0 then
		return var_157_0
	end

	if arg_157_0 == "escape" then
		return "pause"
	end

	return var_0_8.actionForKey(arg_157_0)
end

local function var_0_138(arg_158_0)
	local var_158_0 = var_0_87("ui")

	if arg_158_0 == "settings" then
		local var_158_1, var_158_2 = var_0_112()

		return "settings:" .. tostring(var_158_2) .. ":" .. tostring(var_158_1 and var_158_1.page or "main")
	elseif arg_158_0 == "stage" then
		local var_158_3 = var_0_110()
		local var_158_4 = var_158_3 and var_158_3.stageSelect

		return "stage:" .. tostring(var_158_4 and var_158_4.diffActive and "diff" or "list")
	elseif arg_158_0 == "modal" then
		local var_158_5 = var_0_87("battlefield")

		if var_158_5 and var_158_5.classSelect then
			return "modal:class"
		end

		return "modal:other"
	elseif arg_158_0 == "confirm" then
		return "confirm:" .. tostring(var_0_87("phase"))
	end

	return arg_158_0
end

local var_0_139 = {
	pause = true,
	core = true,
	settings = true,
	confirm = true,
	modal = true
}

local function var_0_140(arg_159_0, arg_159_1, arg_159_2, arg_159_3)
	var_0_84.focusId = nil
	var_0_84.focusUnit = nil
	var_0_84.focusAnchor = nil

	if arg_159_3 == "settings" then
		var_0_84.settingsReturn = {
			key = arg_159_0,
			focus = var_0_84.settingsFocus
		}
	end

	var_0_84.settingsFocus = nil

	local var_159_0, var_159_1 = var_0_73.get()

	if arg_159_0 and arg_159_3 == "game" then
		var_0_84.ctxCursor[arg_159_0] = {
			var_159_0,
			var_159_1
		}
	end

	var_0_84.parked = false
	var_0_84.parkHoldUntil = nil

	if var_0_83.mode ~= "pad" then
		return
	end

	if arg_159_2 == "game" and not var_0_139[arg_159_3 or ""] then
		return
	end

	var_0_84.pendingFocus = {
		t = 0,
		key = arg_159_1,
		ctx = arg_159_2
	}
	var_0_84.parked = var_0_113[arg_159_2] == true and arg_159_2 ~= "settings"
	var_0_84.parkHoldUntil = nil

	local var_159_2 = var_0_84.settingsReturn

	if arg_159_2 == "settings" and arg_159_3 == "confirm" and var_159_2 and var_159_2.key == arg_159_1 then
		var_0_84.pendingFocus.wantKey = var_159_2.focus
	end
end

local function var_0_141(arg_160_0)
	local var_160_0 = var_0_84.pendingFocus

	if not var_160_0 then
		return
	end

	var_160_0.t = var_160_0.t + arg_160_0

	local var_160_1 = var_160_0.ctx

	if var_160_0.t > 1.5 then
		var_0_84.pendingFocus = nil

		if var_0_84.parked then
			local var_160_2 = var_0_113[var_160_1] and var_160_1 ~= "settings" and var_0_109.targets(var_160_1) or {}

			if #var_160_2 > 0 then
				var_0_125(var_0_120(var_160_2))

				var_0_84.swallowHoverUntil = var_0_86() + 0.3
			else
				var_0_84.parked = false
			end
		end

		return
	end

	if var_160_1 == "game" then
		local var_160_3 = var_0_84.ctxCursor[var_160_0.key]

		if var_160_3 then
			var_0_73.glideTo(var_160_3[1], var_160_3[2], 0.12)
		end

		var_0_84.pendingFocus = nil

		return
	end

	if var_160_1 == "settings" then
		local var_160_4 = var_0_118()

		if var_160_4 and #var_160_4.rows > 0 then
			local var_160_5 = 1
			local var_160_6 = var_160_0.wantKey or var_160_4.st and var_160_4.st._padFocusKey

			if var_160_4.st then
				var_160_4.st._padFocusKey = nil
			end

			if var_160_6 then
				for iter_160_0, iter_160_1 in ipairs(var_160_4.rows) do
					if iter_160_1.item.key == var_160_6 then
						var_160_5 = iter_160_0
					end
				end
			end

			var_0_130(var_160_4, var_160_5)

			var_0_84.pendingFocus = nil
		end

		return
	end

	if not var_0_113[var_160_1] and not var_0_114[var_160_1] then
		var_0_84.pendingFocus = nil
		var_0_84.parked = false

		return
	end

	local var_160_7 = var_0_109.targets(var_160_1)

	if #var_160_7 == 0 then
		return
	end

	if var_160_1 == "core" and var_160_0.t < 1.2 then
		local var_160_8 = false

		for iter_160_2, iter_160_3 in ipairs(var_160_7) do
			if iter_160_3.default then
				var_160_8 = true
			end
		end

		if not var_160_8 then
			return
		end
	end

	local var_160_9, var_160_10 = var_0_73.get()

	if var_160_0.keepIfOnTarget and var_0_109.at(var_160_7, var_160_9, var_160_10) then
		var_0_84.pendingFocus = nil
		var_0_84.parked = false

		return
	end

	local var_160_11 = var_0_120(var_160_7)

	if var_160_11 and (var_160_11.id == "back" or var_160_11.id == "core_back") and var_160_0.t < 1.2 then
		return
	end

	local var_160_12, var_160_13 = var_0_119(var_160_11)

	if not var_160_0.lastX or math.abs(var_160_12 - var_160_0.lastX) + math.abs(var_160_13 - var_160_0.lastY) > 0.5 then
		var_160_0.lastX, var_160_0.lastY = var_160_12, var_160_13

		return
	end

	var_0_125(var_160_11)

	var_0_84.pendingFocus = nil
	var_0_84.swallowHoverUntil = var_0_86() + 0.3
end

local function var_0_142(arg_161_0, arg_161_1, arg_161_2)
	local var_161_0 = var_0_110()
	local var_161_1 = var_161_0 and var_161_0.stageSelect

	if not var_161_1 or not var_161_0.padStagePage or var_161_1.diffActive then
		return false
	end

	local var_161_2 = {}

	for iter_161_0, iter_161_1 in ipairs(var_0_109.targets("stage")) do
		local var_161_3 = type(iter_161_1.id) == "string" and tonumber(iter_161_1.id:match("^stage(%d+)$"))

		if var_161_3 then
			var_161_2[var_161_3] = iter_161_1
		end
	end

	local var_161_4 = #var_161_2

	if var_161_4 == 0 then
		return false
	end

	local var_161_5 = arg_161_1 and type(arg_161_1.id) == "string" and tonumber(arg_161_1.id:match("^stage(%d+)$"))

	if not arg_161_2 then
		if not var_161_5 then
			return false
		end

		if arg_161_0 > 0 and var_161_5 < var_161_4 or arg_161_0 < 0 and var_161_5 > 1 then
			return false
		end
	end

	if not var_161_0.padStagePage(arg_161_0) then
		return false
	end

	local var_161_6 = arg_161_2 and var_161_5 or arg_161_0 > 0 and 1 or var_161_4

	if var_161_6 and var_161_2[var_161_6] then
		local var_161_7, var_161_8 = var_0_119(var_161_2[var_161_6])

		var_0_73.set(var_161_7, var_161_8)

		var_0_84.focusId = "stage" .. var_161_6
		var_0_84.focusAnchor = {
			var_161_7,
			var_161_8
		}
	end

	var_0_84.swallowHoverUntil = var_0_86() + 1.6

	return true
end

local var_0_143 = {
	up = {
		0,
		-1
	},
	down = {
		0,
		1
	},
	left = {
		-1,
		0
	},
	right = {
		1,
		0
	}
}

function var_0_109.navigate(arg_162_0, arg_162_1)
	if arg_162_0 == "settings" then
		return var_0_136(arg_162_1)
	end

	local var_162_0 = var_0_109.targets(arg_162_0)

	if #var_162_0 == 0 then
		local var_162_1 = var_0_143[arg_162_1]
		local var_162_2, var_162_3 = var_0_73.get()

		var_0_73.glideTo(var_162_2 + var_162_1[1] * 24, var_162_3 + var_162_1[2] * 24, 0.06)

		return true
	end

	local var_162_4, var_162_5 = var_0_73.glideTarget()
	local var_162_6 = var_0_109.at(var_162_0, var_162_4, var_162_5)

	if (not var_162_6 or var_0_84.parked) and var_0_113[arg_162_0] then
		var_0_84.pendingFocus = nil

		return var_0_125(var_0_120(var_162_0))
	end

	if arg_162_0 == "stage" and (arg_162_1 == "left" or arg_162_1 == "right") and var_0_142(arg_162_1 == "right" and 1 or -1, var_162_6) then
		return true
	end

	local var_162_7 = var_0_143[arg_162_1]
	local var_162_8 = var_0_109.pick(var_162_0, var_162_4, var_162_5, var_162_7[1], var_162_7[2], var_162_6)

	if var_162_8 then
		return var_0_125(var_162_8)
	end

	return false
end

local function var_0_144(arg_163_0, arg_163_1)
	local var_163_0 = var_0_84.ctx or var_0_109.detect()
	local var_163_1 = var_0_8.actionForPad(arg_163_0)

	if arg_163_1 then
		if var_0_82.active then
			if var_0_82.active.device == "keyboard" and var_163_1 == "back" then
				var_0_82.cancel()
				var_0_90()
			elseif var_0_82.active.device == "pad" and var_0_82.active.armed and var_0_8.PAD_BINDABLE[arg_163_0] then
				local var_163_2 = var_0_8.setPad(var_0_82.active.action, arg_163_0)

				var_0_82.cancel()

				if var_163_2 then
					var_0_90()
					var_0_95()
				end
			end

			return
		end

		local var_163_3 = arg_163_0:match("^dp(.+)$")

		if var_163_3 and var_0_143[var_163_3] then
			var_0_84.repeatDir, var_0_84.repeatT, var_0_84.repeatSource = var_163_3, 0, "dpad"

			var_0_109.navigate(var_163_0, var_163_3)

			return
		end

		if var_163_0 == "stage" and (arg_163_0 == "leftshoulder" or arg_163_0 == "rightshoulder") and var_163_1 ~= "confirm" and var_163_1 ~= "back" then
			local var_163_4, var_163_5 = var_0_73.glideTarget()

			var_0_142(arg_163_0 == "rightshoulder" and 1 or -1, var_0_109.at(var_0_109.targets("stage"), var_163_4, var_163_5), true)

			return
		end

		if var_163_0 == "upgrade" and (arg_163_0 == "leftshoulder" or arg_163_0 == "rightshoulder") then
			local var_163_6 = var_0_111()

			if var_163_6 and var_163_6.wheelmoved then
				local var_163_7, var_163_8 = var_0_73.get()

				var_163_6.wheelmoved(0, arg_163_0 == "rightshoulder" and 1 or -1, var_163_7, var_163_8)
			end

			return
		end

		if not var_163_1 then
			return
		end

		if var_163_1 == "confirm" and var_0_113[var_163_0] then
			local var_163_9, var_163_10 = var_0_73.glideTarget()

			if var_163_0 == "settings" then
				local var_163_11 = var_0_118()

				if var_163_11 and #var_163_11.rows > 0 and not var_0_128(var_163_11) and not var_0_131(var_163_11) then
					var_0_130(var_163_11, 1)

					var_0_84.pendingFocus = nil

					return
				end
			else
				local var_163_12 = var_0_109.targets(var_163_0)

				if #var_163_12 > 0 and (var_0_84.parked or not var_0_109.at(var_163_12, var_163_9, var_163_10)) then
					var_0_125(var_0_120(var_163_12), true)

					var_0_84.pendingFocus = nil

					return
				end
			end
		end

		var_0_84.pressedAction[arg_163_0] = var_163_1

		if var_163_1 == "confirm" then
			var_0_103(1)
		elseif var_163_1 == "inspect" then
			var_0_103(2)
		elseif var_163_1 == "back" then
			local var_163_13 = var_0_113[var_163_0] and var_163_0 ~= "settings"

			if var_163_13 then
				var_0_121(1.2)
			end

			if not var_0_109.back(var_163_0) and var_163_13 then
				var_0_84.parked = false
				var_0_84.parkHoldUntil = nil
			end
		elseif var_163_1 == "pause" then
			if var_163_0 == "menu" then
				local var_163_14 = var_0_87("openMenuSettingsOverlay")

				if var_163_14 then
					var_163_14()
				end
			elseif var_163_0 == "settings" or var_163_0 == "stage" then
				var_0_109.back(var_163_0)
			elseif var_163_0 ~= "splash" then
				var_0_83.runAction("pause")
			end
		elseif var_163_0 == "game" or var_163_0 == "tutorial" then
			var_0_83.runAction(var_163_1)
		end
	else
		local var_163_15 = arg_163_0:match("^dp(.+)$")

		if var_163_15 and var_0_84.repeatSource == "dpad" and var_0_84.repeatDir == var_163_15 then
			var_0_84.repeatDir = nil
			var_0_84.repeatSource = nil
		end

		local var_163_16 = var_0_84.pressedAction[arg_163_0]

		var_0_84.pressedAction[arg_163_0] = nil

		if var_163_16 == "confirm" then
			var_0_104(1)
		elseif var_163_16 == "inspect" then
			var_0_104(2)
		end
	end
end

local function var_0_145()
	if love.window and love.window.hasFocus and not love.window.hasFocus() then
		return false
	end

	return true
end

function var_0_83.gamepadpressed(arg_165_0, arg_165_1)
	if not var_0_145() then
		return
	end

	var_0_60.touch(arg_165_0)
	var_0_94("pad")

	var_0_84.lastPadInputT = var_0_86()
	var_0_84.down[arg_165_1] = true

	var_0_144(arg_165_1, true)
end

function var_0_83.gamepadreleased(arg_166_0, arg_166_1)
	var_0_84.down[arg_166_1] = nil

	var_0_144(arg_166_1, false)
end

function var_0_83.gamepadaxis(arg_167_0, arg_167_1, arg_167_2)
	if arg_167_1 == "triggerleft" or arg_167_1 == "triggerright" then
		local var_167_0 = var_0_84.down[arg_167_1] == true

		if not var_167_0 and arg_167_2 > 0.55 then
			if not var_0_145() then
				return
			end

			var_0_60.touch(arg_167_0)
			var_0_94("pad")

			var_0_84.lastPadInputT = var_0_86()
			var_0_84.down[arg_167_1] = true

			var_0_144(arg_167_1, true)
		elseif var_167_0 and arg_167_2 < 0.35 then
			var_0_84.down[arg_167_1] = nil

			var_0_144(arg_167_1, false)
		end

		return
	end

	if math.abs(arg_167_2) > 0.35 and var_0_145() then
		var_0_60.touch(arg_167_0)
		var_0_94("pad")

		var_0_84.lastPadInputT = var_0_86()
	end
end

function var_0_83.joystickadded(arg_168_0)
	if var_0_60.added(arg_168_0) then
		var_0_84.notice = {
			key = "controls_connected",
			t0 = var_0_86()
		}
	end
end

function var_0_83.joystickremoved(arg_169_0)
	local var_169_0 = var_0_83.mode == "pad" and var_0_60.active() == arg_169_0

	var_0_60.removed(arg_169_0)

	if var_169_0 then
		var_0_84.notice = {
			key = "controls_disconnected",
			t0 = var_0_86()
		}

		if (var_0_84.ctx or var_0_109.detect()) == "game" then
			var_0_83.runAction("pause")
		end
	end

	for iter_169_0 in pairs(var_0_84.down) do
		var_0_84.down[iter_169_0] = nil
	end

	for iter_169_1 in pairs(var_0_84.pressedAction) do
		local var_169_1 = var_0_84.pressedAction[iter_169_1]

		var_0_84.pressedAction[iter_169_1] = nil

		if var_169_1 == "confirm" then
			var_0_104(1)
		elseif var_169_1 == "inspect" then
			var_0_104(2)
		end
	end

	if var_0_60.count() == 0 and var_0_83.mode == "pad" then
		var_0_94("mouse")
	end
end

function var_0_83.keypressed(arg_170_0)
	local var_170_0 = var_0_82.active

	if var_170_0 then
		if var_170_0.device == "keyboard" then
			if arg_170_0 == "escape" then
				var_0_82.cancel()
				var_0_90()
			elseif not var_0_8.isKeyReserved(arg_170_0) then
				local var_170_1 = var_0_8.setKey(var_170_0.action, arg_170_0)

				var_0_82.cancel()

				if var_170_1 then
					var_0_90()
					var_0_95()
				end
			end
		end

		return true
	end

	return false
end

function var_0_83.mousemoved(arg_171_0, arg_171_1)
	if var_0_83.mode ~= "pad" or var_0_73.isWarpEcho(arg_171_0, arg_171_1) then
		var_0_84.realX, var_0_84.realY = arg_171_0, arg_171_1

		return
	end

	local var_171_0 = var_0_84.realX
	local var_171_1 = var_0_84.realY

	var_0_84.realX, var_0_84.realY = arg_171_0, arg_171_1

	if not var_171_0 then
		return
	end

	local var_171_2 = math.abs(arg_171_0 - var_171_0) + math.abs(arg_171_1 - var_171_1)

	if var_171_2 <= 0 then
		return
	end

	local var_171_3 = var_0_86()

	if var_171_3 - (var_0_84.mouseTravelT or -1) > 0.25 then
		var_0_84.mouseTravel = 0
	end

	var_0_84.mouseTravelT = var_171_3
	var_0_84.mouseTravel = var_0_84.mouseTravel + var_171_2

	if var_0_84.mouseTravel > 8 then
		var_0_84.mouseTravel = 0

		var_0_94("mouse")
	end
end

function var_0_83.mousepressed(arg_172_0, arg_172_1, arg_172_2, arg_172_3, arg_172_4, arg_172_5)
	if var_0_82.active then
		var_0_82.cancel()

		return true
	end

	return false
end

function var_0_83.realMouseUsed()
	if var_0_83.mode == "pad" then
		var_0_84.mouseTravel = 0

		var_0_94("mouse")
	end
end

local function var_0_146(arg_174_0, arg_174_1, arg_174_2)
	if not arg_174_0 then
		return 0, 0
	end

	local var_174_0, var_174_1 = pcall(arg_174_0.getGamepadAxis, arg_174_0, arg_174_1)
	local var_174_2, var_174_3 = pcall(arg_174_0.getGamepadAxis, arg_174_0, arg_174_2)

	return var_174_0 and var_174_1 or 0, var_174_2 and var_174_3 or 0
end

local function var_0_147(arg_175_0, arg_175_1)
	local var_175_0, var_175_1 = var_0_73.get()

	if arg_175_1 and var_0_109.at(arg_175_1, var_175_0, var_175_1) then
		return 0.55
	end

	local var_175_2 = var_0_87("tooltip")

	if arg_175_0 == "game" and var_175_2 and var_175_2.candidate then
		return 0.6
	end

	return 1
end

local function var_0_148(arg_176_0, arg_176_1)
	if math.sqrt(arg_176_0 * arg_176_0 + arg_176_1 * arg_176_1) < 0.55 then
		return nil
	end

	if math.abs(arg_176_0) > math.abs(arg_176_1) then
		return arg_176_0 > 0 and "right" or "left"
	end

	return arg_176_1 > 0 and "down" or "up"
end

local function var_0_149(arg_177_0, arg_177_1)
	if arg_177_0 == 0 and arg_177_1 == 0 and not var_0_84.panning then
		return
	end

	local var_177_0 = var_0_111()

	if var_177_0 and var_177_0.setPadPan then
		var_177_0.setPadPan(arg_177_0, arg_177_1)
	end

	var_0_84.panning = arg_177_0 ~= 0 or arg_177_1 ~= 0
end

local var_0_150

function var_0_83.update(arg_178_0)
	var_0_84.frame = var_0_84.frame + 1

	var_0_105()
	var_0_150(arg_178_0)

	var_0_84.seenStamp = var_0_73.stamp
end

function var_0_150(arg_179_0)
	arg_179_0 = math.min(arg_179_0 or 0, 0.1)

	var_0_93()
	var_0_98()

	local var_179_0 = var_0_109.detect()
	local var_179_1 = var_0_84.ctx

	var_0_84.ctx = var_179_0

	local var_179_2 = var_0_138(var_179_0)

	if var_179_2 ~= var_0_84.ctxKey then
		var_0_140(var_0_84.ctxKey, var_179_2, var_179_0, var_179_1)

		var_0_84.ctxKey = var_179_2
	end

	if var_0_84.padWoke then
		var_0_84.padWoke = false

		if var_0_113[var_179_0] and not var_0_84.pendingFocus then
			local var_179_3, var_179_4 = var_0_73.get()
			local var_179_5

			if var_179_0 == "settings" then
				local var_179_6 = var_0_118()
				local var_179_7 = var_179_6 and var_0_128(var_179_6)

				if var_179_7 then
					var_0_84.settingsFocus = var_179_6.rows[var_179_7].item.key
				end

				var_179_5 = var_179_7 ~= nil
			else
				var_179_5 = var_0_109.at(var_0_109.targets(var_179_0), var_179_3, var_179_4) ~= nil
			end

			if not var_179_5 then
				var_0_84.pendingFocus = {
					t = 0,
					keepIfOnTarget = true,
					key = var_179_2,
					ctx = var_179_0
				}
				var_0_84.parked = var_179_0 ~= "settings"
			end
		end
	end

	if var_179_0 ~= "upgrade" then
		var_0_149(0, 0)
	end

	local var_179_8 = var_179_0 == "settings" and var_0_83.mode == "pad" and var_0_118() or nil
	local var_179_9 = var_0_131(var_179_8)

	if var_179_8 and var_179_9 ~= (var_0_84.dropdownWasOpen == true) then
		for iter_179_0, iter_179_1 in ipairs(var_179_8.rows) do
			if iter_179_1.item.kind == "dropdown" then
				if var_179_9 then
					local var_179_10 = iter_179_1.item.get and iter_179_1.item.get()
					local var_179_11 = 1

					for iter_179_2, iter_179_3 in ipairs(iter_179_1.item.options or {}) do
						if iter_179_3.value == var_179_10 then
							var_179_11 = iter_179_2
						end
					end

					var_0_134(var_179_8, iter_179_1, var_179_11)
				else
					var_0_130(var_179_8, iter_179_0)
				end
			end
		end
	end

	var_0_84.dropdownWasOpen = var_179_9

	local var_179_12 = false

	for iter_179_4 in pairs(var_0_84.down) do
		var_179_12 = true

		break
	end

	var_0_82.update(arg_179_0, var_179_12)

	if var_0_83.dirty then
		var_0_84.dirtyT = var_0_84.dirtyT + arg_179_0

		if var_0_84.dirtyT > 1 then
			var_0_83.dirty = false

			local var_179_13 = var_0_87("saveCurrentProgressNow")

			if var_179_13 then
				pcall(var_179_13, {
					captureRun = false
				})
			end
		end
	end

	if var_0_84.parked then
		local var_179_14 = var_0_84.parkHoldUntil ~= nil and var_0_86() < var_0_84.parkHoldUntil

		if var_0_83.mode ~= "pad" or not var_0_113[var_179_0] or var_179_0 == "settings" or not var_0_84.pendingFocus and not var_179_14 then
			var_0_84.parked = false
			var_0_84.parkHoldUntil = nil
		end
	end

	local var_179_15 = var_0_83.mode == "pad" and 1 or 0

	var_0_83.hintAlpha = var_0_83.hintAlpha + (var_179_15 - var_0_83.hintAlpha) * math.min(1, arg_179_0 * 10)

	if var_0_83.hintAlpha < 0.01 then
		var_0_83.hintAlpha = 0
	end

	var_0_83.hideCursor = var_0_83.mode == "pad" and var_0_113[var_179_0] == true and (var_179_0 == "settings" or #var_0_109.targets(var_179_0) > 0)

	local var_179_16 = var_0_60.active()

	if var_0_83.mode ~= "pad" or not var_179_16 or not var_0_145() then
		var_0_84.repeatDir = nil

		var_0_149(0, 0)

		return
	end

	var_0_141(arg_179_0)
	var_0_126(var_179_0)
	var_0_127(var_179_0)

	if var_179_0 == "settings" then
		var_0_132()
	end

	if var_0_82.active then
		return
	end

	local var_179_17, var_179_18 = var_0_146(var_179_16, "leftx", "lefty")
	local var_179_19, var_179_20 = var_0_146(var_179_16, "rightx", "righty")

	if var_0_113[var_179_0] and (var_179_0 == "settings" or #var_0_109.targets(var_179_0) > 0) then
		local var_179_21 = var_0_148(var_179_17, var_179_18)

		if var_179_21 then
			if var_0_84.repeatSource ~= "dpad" and (var_0_84.repeatDir ~= var_179_21 or var_0_84.repeatSource ~= "stick") then
				var_0_84.repeatDir, var_0_84.repeatT, var_0_84.repeatSource = var_179_21, 0, "stick"

				var_0_109.navigate(var_179_0, var_179_21)
			end
		elseif var_0_84.repeatSource == "stick" then
			var_0_84.repeatDir, var_0_84.repeatSource = nil
		end

		var_179_17, var_179_18 = 0, 0
	end

	if var_0_84.repeatDir then
		var_0_84.repeatT = var_0_84.repeatT + arg_179_0

		local var_179_22 = var_0_84.repeatSource == "stick" and 0.32 or 0.36

		if var_179_22 < var_0_84.repeatT then
			var_0_84.repeatT = var_179_22 - 0.095

			var_0_109.navigate(var_179_0, var_0_84.repeatDir)
		end
	end

	if var_179_17 * var_179_17 + var_179_18 * var_179_18 > 0.04 then
		var_0_84.focusUnit = nil
	end

	local var_179_23 = (var_179_0 == "game" or var_179_0 == "upgrade" or var_179_0 == "modal") and var_0_109.targets(var_179_0) or nil

	if var_0_73.update(arg_179_0, var_179_17, var_179_18, var_0_147(var_179_0, var_179_23)) then
		var_0_73.warp(var_0_85.setPosition)
	end

	if var_179_0 == "upgrade" then
		local var_179_24 = 0
		local var_179_25 = 0

		if math.sqrt(var_179_19 * var_179_19 + var_179_20 * var_179_20) > 0.2 then
			var_179_24, var_179_25 = -var_179_19, -var_179_20
		else
			local var_179_26, var_179_27 = var_0_73.get()
			local var_179_28 = var_0_87("ui")
			local var_179_29 = var_179_28 and var_179_28.virtual and var_179_28.virtual.W or 640
			local var_179_30 = var_179_28 and var_179_28.virtual and var_179_28.virtual.H or 360

			if var_179_26 <= 1 and var_179_17 < -0.3 or var_179_26 >= var_179_29 - 2 and var_179_17 > 0.3 then
				var_179_24 = -var_179_17
			end

			if var_179_27 <= 1 and var_179_18 < -0.3 or var_179_27 >= var_179_30 - 2 and var_179_18 > 0.3 then
				var_179_25 = -var_179_18
			end
		end

		var_0_149(var_179_24, var_179_25)
	else
		local var_179_31 = math.abs(var_179_20) > 0.3 and var_179_20 or 0

		if var_179_31 ~= 0 then
			var_0_84.scrollT = var_0_84.scrollT - arg_179_0

			if var_0_84.scrollT <= 0 then
				local var_179_32 = (math.abs(var_179_31) - 0.3) / 0.7

				var_0_84.scrollT = 0.22 - 0.16 * var_179_32

				if love.wheelmoved then
					love.wheelmoved(0, var_179_31 > 0 and -1 or 1)
				end
			end
		else
			var_0_84.scrollT = 0
		end
	end
end

local var_0_151 = {
	menu = {
		{
			"confirm",
			"pad_hint_select"
		}
	},
	stage = {
		{
			"shoulders",
			"pad_hint_page"
		},
		{
			"confirm",
			"pad_hint_select"
		},
		{
			"back",
			"pad_hint_back"
		}
	},
	core = {
		{
			"confirm",
			"pad_hint_select"
		},
		{
			"back",
			"pad_hint_back"
		}
	},
	confirm = {
		{
			"confirm",
			"pad_hint_select"
		},
		{
			"back",
			"pad_hint_cancel"
		}
	},
	pause = {
		{
			"confirm",
			"pad_hint_select"
		},
		{
			"back",
			"pad_hint_resume"
		}
	},
	settings = {
		{
			"dpad_lr",
			"pad_hint_change"
		},
		{
			"confirm",
			"pad_hint_select"
		},
		{
			"back",
			"pad_hint_back"
		}
	},
	gameover = {
		{
			"confirm",
			"pad_hint_select"
		}
	},
	tutorial = {
		{
			"confirm",
			"pad_hint_select"
		}
	},
	modal = {
		{
			"confirm",
			"pad_hint_select"
		},
		{
			"inspect",
			"pad_hint_inspect"
		}
	}
}

local function var_0_152(arg_180_0)
	local var_180_0 = var_0_60.style()

	if arg_180_0 == "dpad_lr" or arg_180_0 == "dpad_ud" or arg_180_0 == "dpad" or arg_180_0 == "rstick" or arg_180_0 == "lstick" then
		return {
			arg_180_0
		}
	elseif arg_180_0 == "shoulders" then
		return {
			"leftshoulder",
			"rightshoulder"
		}
	end

	local var_180_1 = var_0_8.padButton(arg_180_0)

	return var_180_1 and {
		var_180_1
	} or {}
end

local function var_0_153(arg_181_0)
	local var_181_0 = var_0_151[arg_181_0]

	if arg_181_0 == "stage" then
		local var_181_1 = var_0_110()
		local var_181_2 = var_181_1 and var_181_1.stageSelect

		if var_181_2 and var_181_2.diffActive then
			return {
				var_181_0[2],
				var_181_0[3]
			}
		end
	end

	if arg_181_0 == "settings" then
		local var_181_3 = var_0_118()
		local var_181_4 = var_181_3 and var_181_3.st

		if var_0_82.active then
			return {}
		end

		if var_181_3 and var_181_4 and var_181_4.langDropdownOpen then
			return {
				{
					"dpad_ud",
					"pad_hint_move"
				},
				{
					"confirm",
					"pad_hint_select"
				},
				{
					"back",
					"pad_hint_back"
				}
			}
		end

		if var_181_3 and (var_181_3.settled == false or var_0_84.pendingFocus) then
			return var_181_0
		end

		if var_181_3 then
			local var_181_5 = var_0_128(var_181_3)
			local var_181_6 = var_181_5 and var_181_3.rows[var_181_5] and var_181_3.rows[var_181_5].item

			if var_181_6 and var_181_6.kind == "binding" then
				return {
					{
						"confirm",
						"pad_hint_rebind"
					},
					{
						"back",
						"pad_hint_back"
					}
				}
			end

			if var_181_6 and (var_181_6.kind == "button" or var_181_6.kind == "checkbox" or var_181_6.kind == "link") then
				return {
					{
						"confirm",
						"pad_hint_select"
					},
					{
						"back",
						"pad_hint_back"
					}
				}
			end
		end
	end

	return var_181_0
end

local function var_0_154(arg_182_0)
	local var_182_0 = var_0_153(arg_182_0) or {}
	local var_182_1 = {
		arg_182_0
	}

	for iter_182_0, iter_182_1 in ipairs(var_182_0) do
		var_182_1[#var_182_1 + 1] = iter_182_1[1] .. "=" .. iter_182_1[2]
	end

	local var_182_2 = table.concat(var_182_1, ";")
	local var_182_3 = var_0_86()

	if var_0_84.hintCtx ~= arg_182_0 or not var_0_84.hintShown then
		var_0_84.hintCtx, var_0_84.hintKey, var_0_84.hintShown = arg_182_0, var_182_2, var_182_0
		var_0_84.hintNextKey = nil
	elseif var_182_2 ~= var_0_84.hintKey then
		if var_0_84.hintNextKey ~= var_182_2 then
			var_0_84.hintNextKey, var_0_84.hintNextT = var_182_2, var_182_3
		elseif var_182_3 - var_0_84.hintNextT >= 0.2 then
			var_0_84.hintKey, var_0_84.hintShown, var_0_84.hintNextKey = var_182_2, var_182_0
		end
	else
		var_0_84.hintNextKey = nil
	end

	return var_0_84.hintShown
end

local function var_0_155(arg_183_0, arg_183_1, arg_183_2, arg_183_3, arg_183_4)
	local var_183_0 = love.graphics

	var_183_0.setColor(0.1803921568627451, 0.13333333333333333, 0.1843137254901961, 0.9 * arg_183_4)
	var_183_0.rectangle("fill", arg_183_0 + 1, arg_183_1, arg_183_2 - 2, arg_183_3)
	var_183_0.rectangle("fill", arg_183_0, arg_183_1 + 1, arg_183_2, arg_183_3 - 2)
	var_183_0.setColor(0.3843137254901961, 0.3333333333333333, 0.396078431372549, arg_183_4)
	var_183_0.rectangle("fill", arg_183_0 + 1, arg_183_1, arg_183_2 - 2, 1)
	var_183_0.rectangle("fill", arg_183_0 + 1, arg_183_1 + arg_183_3 - 1, arg_183_2 - 2, 1)
	var_183_0.rectangle("fill", arg_183_0, arg_183_1 + 1, 1, arg_183_3 - 2)
	var_183_0.rectangle("fill", arg_183_0 + arg_183_2 - 1, arg_183_1 + 1, 1, arg_183_3 - 2)
end

function var_0_83.drawHintStrip(arg_184_0, arg_184_1)
	local var_184_0 = var_0_154(arg_184_0)

	if not var_184_0 or #var_184_0 == 0 then
		return
	end

	local var_184_1 = var_0_87("ui")
	local var_184_2 = var_184_1 and var_184_1.font or love.graphics.getFont()
	local var_184_3 = var_0_60.style()
	local var_184_4 = {}
	local var_184_5 = 0

	for iter_184_0, iter_184_1 in ipairs(var_184_0) do
		local var_184_6 = var_0_152(iter_184_1[1])

		if #var_184_6 > 0 then
			local var_184_7 = var_0_89(iter_184_1[2])
			local var_184_8 = 0

			for iter_184_2, iter_184_3 in ipairs(var_184_6) do
				var_184_8 = var_184_8 + var_0_53.size(var_184_3, iter_184_3) + (iter_184_2 > 1 and 1 or 0)
			end

			local var_184_9 = var_184_2:getWidth(var_184_7)

			var_184_4[#var_184_4 + 1] = {
				glyphs = var_184_6,
				text = var_184_7,
				gw = var_184_8,
				tw = var_184_9
			}
			var_184_5 = var_184_5 + var_184_8 + 3 + var_184_9
		end
	end

	if #var_184_4 == 0 then
		return
	end

	local var_184_10 = var_184_5 + (#var_184_4 - 1) * 9
	local var_184_11 = var_184_1 and var_184_1.virtual and var_184_1.virtual.W or 640
	local var_184_12 = var_184_1 and var_184_1.virtual and var_184_1.virtual.H or 360
	local var_184_13 = 17
	local var_184_14 = var_184_10 + 10
	local var_184_15 = var_184_11 - var_184_14 - 6
	local var_184_16 = var_184_12 - var_184_13 - 6
	local var_184_17 = love.graphics
	local var_184_18 = var_184_17.getFont()

	var_184_17.setFont(var_184_2)
	var_0_155(var_184_15, var_184_16, var_184_14, var_184_13, arg_184_1)

	local var_184_19 = var_184_15 + 5
	local var_184_20 = var_184_2:getHeight()

	for iter_184_4, iter_184_5 in ipairs(var_184_4) do
		local var_184_21 = var_184_19

		for iter_184_6, iter_184_7 in ipairs(iter_184_5.glyphs) do
			local var_184_22, var_184_23 = var_0_53.size(var_184_3, iter_184_7)

			var_0_53.draw(var_184_3, iter_184_7, var_184_21, var_184_16 + math.floor((var_184_13 - var_184_23) / 2), arg_184_1)

			var_184_21 = var_184_21 + var_184_22 + 1
		end

		var_184_19 = var_184_19 + iter_184_5.gw + 3

		var_184_17.setColor(0.9294117647058824, 0.9019607843137255, 0.8156862745098039, arg_184_1)
		var_184_17.print(iter_184_5.text, var_184_19, var_184_16 + math.floor((var_184_13 - var_184_20) / 2 + 0.5) - 2)

		var_184_19 = var_184_19 + iter_184_5.tw + (iter_184_4 < #var_184_4 and 9 or 0)
	end

	var_184_17.setFont(var_184_18)
	var_184_17.setColor(1, 1, 1, 1)
end

local var_0_156 = setmetatable({}, {
	__mode = "k"
})

local function var_0_157(arg_185_0, arg_185_1)
	local var_185_0 = var_0_156[arg_185_0]

	if not var_185_0 then
		var_185_0 = {}
		var_0_156[arg_185_0] = var_185_0
	end

	local var_185_1 = 0
	local var_185_2 = 0
	local var_185_3 = arg_185_0:getWidth()
	local var_185_4 = arg_185_0:getHeight()

	if arg_185_1 then
		var_185_1, var_185_2, var_185_3, var_185_4 = arg_185_1:getViewport()
	end

	local var_185_5 = arg_185_1 and var_185_1 .. "," .. var_185_2 .. "," .. var_185_3 .. "," .. var_185_4 or "all"
	local var_185_6 = var_185_0[var_185_5]

	if var_185_6 then
		return var_185_6
	end

	local var_185_7 = {
		0,
		0,
		var_185_3,
		var_185_4
	}

	var_185_0[var_185_5] = var_185_7

	local var_185_8 = love.graphics
	local var_185_9, var_185_10 = pcall(var_185_8.newCanvas, math.max(1, math.ceil(var_185_3)), math.max(1, math.ceil(var_185_4)))

	if not var_185_9 or not var_185_10 then
		return var_185_7
	end

	var_185_8.push("all")

	local var_185_11 = pcall(function()
		var_185_8.setCanvas(var_185_10)
		var_185_8.origin()
		var_185_8.setShader()
		var_185_8.setScissor()
		var_185_8.setStencilTest()
		var_185_8.clear(0, 0, 0, 0)
		var_185_8.setBlendMode("replace")
		var_185_8.setColor(1, 1, 1, 1)

		if arg_185_1 then
			var_185_8.draw(arg_185_0, arg_185_1, 0, 0)
		else
			var_185_8.draw(arg_185_0, 0, 0)
		end
	end)

	var_185_8.pop()

	if var_185_11 then
		local var_185_12, var_185_13 = pcall(var_185_10.newImageData, var_185_10)

		if var_185_12 and var_185_13 then
			local var_185_14 = math.huge
			local var_185_15 = math.huge
			local var_185_16 = -1
			local var_185_17 = -1

			for iter_185_0 = 0, var_185_13:getHeight() - 1 do
				for iter_185_1 = 0, var_185_13:getWidth() - 1 do
					local var_185_18, var_185_19, var_185_20, var_185_21 = var_185_13:getPixel(iter_185_1, iter_185_0)

					if var_185_21 > 0.3 then
						if iter_185_1 < var_185_14 then
							var_185_14 = iter_185_1
						end

						if var_185_16 < iter_185_1 then
							var_185_16 = iter_185_1
						end

						if iter_185_0 < var_185_15 then
							var_185_15 = iter_185_0
						end

						if var_185_17 < iter_185_0 then
							var_185_17 = iter_185_0
						end
					end
				end
			end

			if var_185_16 >= 0 then
				var_185_7[1], var_185_7[2], var_185_7[3], var_185_7[4] = var_185_14, var_185_15, var_185_16 + 1, var_185_17 + 1
			end

			var_185_13:release()
		end
	end

	var_185_10:release()

	return var_185_7
end

var_0_83._opaqueBox = var_0_157

function var_0_83.badge(arg_187_0, arg_187_1, arg_187_2, arg_187_3, arg_187_4, arg_187_5, arg_187_6)
	local var_187_0 = var_0_83.hintAlpha or 0

	if var_187_0 <= 0 or not arg_187_1 or not arg_187_0 then
		return
	end

	if (var_0_84.ctx or "none") ~= "game" then
		return
	end

	local var_187_1 = var_0_87("__slotTutorialAllowsAction")

	if var_187_1 and not var_187_1(arg_187_0) then
		return
	end

	local var_187_2 = var_0_8.padButton(arg_187_0)

	if not var_187_2 then
		return
	end

	arg_187_6 = arg_187_6 or {}
	arg_187_4 = arg_187_4 or 1
	arg_187_5 = arg_187_5 or arg_187_4

	local var_187_3 = var_0_157(arg_187_1, arg_187_6.quad)
	local var_187_4 = arg_187_6.corner or "tr"
	local var_187_5 = var_187_4:sub(2, 2) == "l"
	local var_187_6 = var_187_4:sub(1, 1) == "t"
	local var_187_7 = arg_187_6.inset or 3
	local var_187_8 = arg_187_2 + ((var_187_5 and var_187_3[1] or var_187_3[3]) - (arg_187_6.ox or 0)) * arg_187_4 + (var_187_5 and var_187_7 or -var_187_7)
	local var_187_9 = arg_187_3 + ((var_187_6 and var_187_3[2] or var_187_3[4]) - (arg_187_6.oy or 0)) * arg_187_5 + (var_187_6 and var_187_7 or -var_187_7)
	local var_187_10 = var_0_60.style()
	local var_187_11, var_187_12 = var_0_53.size(var_187_10, var_187_2)
	local var_187_13 = math.floor(var_187_8 - var_187_11 / 2 + 0.5) + (arg_187_6.dx or 0)
	local var_187_14 = math.floor(var_187_9 - var_187_12 / 2 + 0.5) + (arg_187_6.dy or 0)
	local var_187_15 = var_0_87("ui")
	local var_187_16 = var_187_15 and var_187_15.virtual and var_187_15.virtual.W or 640
	local var_187_17 = var_187_15 and var_187_15.virtual and var_187_15.virtual.H or 360
	local var_187_18 = math.max(1, math.min(var_187_16 - var_187_11 - 1, var_187_13))
	local var_187_19 = math.max(1, math.min(var_187_17 - var_187_12 - 1, var_187_14))
	local var_187_20 = love.graphics

	var_187_20.push("all")
	var_187_20.setShader()
	var_187_20.setScissor()
	var_187_20.setStencilTest()
	var_187_20.setBlendMode("alpha")
	var_0_53.draw(var_187_10, var_187_2, var_187_18, var_187_19, var_187_0 * (arg_187_6.alpha or 1))
	var_187_20.pop()
end

local function var_0_158()
	local var_188_0 = var_0_84.notice

	if not var_188_0 then
		return
	end

	local var_188_1 = var_0_86() - var_188_0.t0

	if var_188_1 > 2.6 then
		var_0_84.notice = nil

		return
	end

	local var_188_2 = math.min(1, var_188_1 / 0.18) * math.min(1, (2.6 - var_188_1) / 0.45)
	local var_188_3 = var_0_87("ui")
	local var_188_4 = var_188_3 and var_188_3.font or love.graphics.getFont()
	local var_188_5 = var_0_89(var_188_0.key)
	local var_188_6, var_188_7 = var_0_53.size("xbox", "pad")
	local var_188_8 = var_188_4:getWidth(var_188_5)
	local var_188_9 = var_188_6 + 4 + var_188_8 + 12
	local var_188_10 = 17
	local var_188_11 = var_188_3 and var_188_3.virtual and var_188_3.virtual.W or 640
	local var_188_12 = math.floor((var_188_11 - var_188_9) / 2)
	local var_188_13 = 6 + math.floor((1 - math.min(1, var_188_1 / 0.18)) * -4)
	local var_188_14 = love.graphics
	local var_188_15 = var_188_14.getFont()

	var_188_14.setFont(var_188_4)
	var_0_155(var_188_12, var_188_13, var_188_9, var_188_10, var_188_2)
	var_0_53.draw("xbox", "pad", var_188_12 + 6, var_188_13 + math.floor((var_188_10 - var_188_7) / 2), var_188_2)
	var_188_14.setColor(0.9294117647058824, 0.9019607843137255, 0.8156862745098039, var_188_2)
	var_188_14.print(var_188_5, var_188_12 + 6 + var_188_6 + 4, var_188_13 + math.floor((var_188_10 - var_188_4:getHeight()) / 2 + 0.5) - 2)
	var_188_14.setFont(var_188_15)
	var_188_14.setColor(1, 1, 1, 1)
end

function var_0_83.drawOverlay()
	var_0_158()

	local var_189_0 = var_0_83.hintAlpha or 0

	if var_189_0 <= 0 then
		return
	end

	local var_189_1 = var_0_84.ctx or var_0_109.detect()

	if var_189_1 ~= "game" and var_189_1 ~= "splash" and var_189_1 ~= "none" then
		var_0_83.drawHintStrip(var_189_1, var_189_0)
	end
end

function var_0_83.drawGameOverlay()
	if (var_0_83.hintAlpha or 0) <= 0 and not var_0_84.notice then
		return
	end

	local var_190_0 = love.graphics

	var_190_0.push()
	var_190_0.origin()
	var_190_0.translate(var_0_87("screenOffsetX") or 0, var_0_87("screenOffsetY") or 0)

	local var_190_1 = var_0_87("screenScale") or 1

	var_190_0.scale(var_0_87("screenScaleX") or var_190_1, var_0_87("screenScaleY") or var_190_1)
	var_190_0.setShader()
	var_0_83.drawOverlay()
	var_190_0.pop()
end

function var_0_83.beginDraw()
	var_0_78.beginFrame()
end

function var_0_83.mark(arg_192_0, arg_192_1, arg_192_2, arg_192_3, arg_192_4, arg_192_5, arg_192_6)
	var_0_78.add(arg_192_0, arg_192_1, arg_192_2, arg_192_3, arg_192_4, arg_192_5, arg_192_6)
end

local function var_0_159()
	if var_0_60.count() > 0 then
		return "pad"
	end

	return "keyboard"
end

local var_0_160

function var_0_83.settingsDevice()
	return var_0_160 or var_0_159()
end

function var_0_83.drawSettingsRowFocus(arg_195_0, arg_195_1, arg_195_2, arg_195_3, arg_195_4, arg_195_5, arg_195_6)
	local var_195_0 = var_0_82.active
	local var_195_1 = var_195_0 and arg_195_0 and arg_195_0.kind == "binding" and var_195_0.action == arg_195_0.action and var_195_0.device == arg_195_0.device

	if var_0_83.mode ~= "pad" and not var_195_1 then
		return
	end

	local var_195_2 = var_0_112()

	if var_195_2 and var_195_2.langDropdownOpen == true and not var_195_1 then
		return
	end

	local var_195_3

	if var_0_84.settingsFocus then
		var_195_3 = arg_195_0 ~= nil and arg_195_0.key == var_0_84.settingsFocus
	else
		local var_195_4, var_195_5 = var_0_73.glideTarget()

		var_195_3 = arg_195_2 <= var_195_5 and var_195_5 < arg_195_2 + arg_195_4 and var_195_4 >= arg_195_1 - 24 and var_195_4 <= arg_195_1 + arg_195_3 + 24
	end

	if not var_195_3 and not var_195_1 then
		return
	end

	local var_195_6 = var_195_1 and 0.16 or 0.09

	if not var_195_1 then
		var_195_6 = var_195_6 * (var_0_83.hintAlpha or 1)
	end

	local var_195_7 = arg_195_2 + 2
	local var_195_8 = arg_195_2 + arg_195_4 - 2

	if arg_195_5 then
		var_195_7 = math.max(var_195_7, arg_195_5)
		var_195_8 = math.min(var_195_8, arg_195_5 + (arg_195_6 or arg_195_4))
	end

	if var_195_8 - var_195_7 < 3 then
		return
	end

	local var_195_9 = love.graphics
	local var_195_10, var_195_11 = var_195_9.getStencilTest()

	var_195_9.setStencilTest()

	local var_195_12 = arg_195_1 - 5
	local var_195_13 = arg_195_3 + 8

	var_195_9.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, var_195_6)
	var_195_9.rectangle("fill", var_195_12 + 1, var_195_7, var_195_13 - 2, var_195_8 - var_195_7)
	var_195_9.rectangle("fill", var_195_12, var_195_7 + 1, var_195_13, var_195_8 - var_195_7 - 2)

	if var_195_10 and var_195_10 ~= "always" then
		var_195_9.setStencilTest(var_195_10, var_195_11)
	end

	var_195_9.setColor(1, 1, 1, 1)
end

function var_0_83.drawSettingsOptionFocus(arg_196_0, arg_196_1, arg_196_2, arg_196_3)
	if var_0_83.mode ~= "pad" then
		return
	end

	local var_196_0, var_196_1 = var_0_73.glideTarget()

	if var_196_0 < arg_196_0 or var_196_0 > arg_196_0 + arg_196_2 or var_196_1 < arg_196_1 or var_196_1 >= arg_196_1 + arg_196_3 then
		return
	end

	local var_196_2 = love.graphics

	var_196_2.setColor(0.24313725490196078, 0.20784313725490197, 0.27450980392156865, 0.14 * (var_0_83.hintAlpha or 1))
	var_196_2.rectangle("fill", arg_196_0 + 2, arg_196_1 + 2, arg_196_2 - 4, arg_196_3 - 4)
	var_196_2.setColor(1, 1, 1, 1)
end

local function var_0_161(arg_197_0, arg_197_1, arg_197_2, arg_197_3, arg_197_4)
	local var_197_0 = var_0_82.active
	local var_197_1 = love.graphics

	local function var_197_2(arg_198_0)
		if arg_197_4 and arg_197_1 - arg_198_0 / 2 < arg_197_4 + 10 then
			return arg_197_4 + 10 + arg_198_0 / 2
		end

		return arg_197_1
	end

	if var_197_0 and var_197_0.action == arg_197_0.action and var_197_0.device == arg_197_0.device then
		local var_197_3 = math.ceil(var_0_82.remaining())
		local var_197_4 = var_0_89(arg_197_0.device == "pad" and "controls_press_button" or "controls_press_key") .. " " .. tostring(var_197_3)
		local var_197_5 = 0.55 + 0.45 * (0.5 + 0.5 * math.sin(var_0_86() * 6))

		var_197_1.setColor(0.6392156862745098, 0.22745098039215686, 0.22745098039215686, var_197_5)

		local var_197_6 = arg_197_3:getWidth(var_197_4)

		var_197_1.print(var_197_4, math.floor(var_197_2(var_197_6) - var_197_6 / 2 + 0.5), math.floor(arg_197_2 - arg_197_3:getHeight() / 2 + 0.5))
		var_197_1.setColor(1, 1, 1, 1)

		return
	end

	if arg_197_0.device == "pad" then
		local var_197_7 = var_0_8.padButton(arg_197_0.action)
		local var_197_8 = var_0_60.style()

		if var_197_7 then
			local var_197_9, var_197_10 = var_0_53.size(var_197_8, var_197_7)
			local var_197_11 = var_197_2(var_197_9)

			var_0_53.draw(var_197_8, var_197_7, math.floor(var_197_11 - var_197_9 / 2 + 0.5), math.floor(arg_197_2 - var_197_10 / 2 + 0.5), 1)
		end
	else
		local var_197_12 = var_0_8.keyList(arg_197_0.action) or {}
		local var_197_13 = var_0_53.keysWidth(var_197_12)
		local var_197_14, var_197_15 = var_0_53.keySize(var_197_12[1] or "a")

		if #var_197_12 == 0 then
			var_197_1.setColor(0, 0, 0, 0.5)

			local var_197_16 = var_0_89("controls_unbound")

			var_197_1.print(var_197_16, math.floor(arg_197_1 - arg_197_3:getWidth(var_197_16) / 2 + 0.5), math.floor(arg_197_2 - arg_197_3:getHeight() / 2 + 0.5))
		else
			local var_197_17 = var_197_2(var_197_13)

			var_0_53.drawKeys(var_197_12, math.floor(var_197_17 - var_197_13 / 2 + 0.5), math.floor(arg_197_2 - var_197_15 / 2 + 0.5), arg_197_0.fixed and 0.6 or 1)
		end
	end

	var_197_1.setColor(1, 1, 1, 1)
end

var_0_83.drawBindingValue = var_0_161

function var_0_83.settingsItems()
	local var_199_0 = {}
	local var_199_1 = var_0_83.settingsDevice()

	var_199_0[#var_199_0 + 1] = {
		key = "ctl_device",
		kind = "radio",
		label = var_0_89("controls_device"),
		options = {
			{
				value = "pad",
				label = var_0_89("controls_device_pad")
			},
			{
				value = "keyboard",
				label = var_0_89("controls_device_keyboard")
			}
		},
		get = function()
			return var_0_83.settingsDevice()
		end,
		set = function(arg_201_0)
			if arg_201_0 == "pad" or arg_201_0 == "keyboard" then
				var_0_160 = arg_201_0
			end

			var_0_82.cancel()
		end
	}

	for iter_199_0, iter_199_1 in ipairs(var_0_8.ACTIONS) do
		if var_199_1 == "pad" or iter_199_1.keys then
			var_199_0[#var_199_0 + 1] = {
				kind = "binding",
				key = "ctl_" .. var_199_1 .. "_" .. iter_199_1.id,
				label = var_0_89(iter_199_1.label),
				action = iter_199_1.id,
				device = var_199_1,
				fixed = var_199_1 == "keyboard" and iter_199_1.keyFixed or nil,
				activate = function()
					if var_199_1 == "keyboard" and iter_199_1.keyFixed then
						return false
					end

					if var_0_82.active and var_0_82.active.action == iter_199_1.id then
						var_0_82.cancel()

						return true
					end

					var_0_82.start(iter_199_1.id, var_199_1)

					return true
				end
			}
		end
	end

	if var_199_1 == "pad" then
		var_199_0[#var_199_0 + 1] = {
			key = "ctl_vibration",
			kind = "checkbox",
			label = var_0_89("controls_vibration"),
			get = function()
				return var_0_60.vibration ~= false
			end,
			set = function(arg_204_0)
				var_0_60.vibration = arg_204_0 == true

				var_0_95()

				if var_0_60.vibration then
					local var_204_0 = var_0_96.test

					var_0_60.vibrate(var_204_0[1], var_204_0[2], var_204_0[3])
				end
			end
		}
		var_199_0[#var_199_0 + 1] = {
			key = "ctl_cursor_speed",
			kind = "slider",
			max = 1,
			min = 0,
			step = 0.01,
			hidePercent = true,
			padStep = 0.1,
			label = var_0_89("controls_cursor_speed"),
			get = function()
				return var_0_73.speed
			end,
			set = function(arg_206_0)
				var_0_73.speed = math.max(0, math.min(1, tonumber(arg_206_0) or 0.5))

				var_0_95()
			end
		}
		var_199_0[#var_199_0 + 1] = {
			key = "ctl_glyphs",
			kind = "radio",
			label = var_0_89("controls_glyphs"),
			options = {
				{
					value = "auto",
					label = var_0_89("controls_glyphs_auto")
				},
				{
					label = "Xbox",
					value = "xbox"
				},
				{
					label = "PlayStation",
					value = "playstation"
				},
				{
					label = "Nintendo",
					value = "nintendo"
				}
			},
			get = function()
				return var_0_60.styleSetting
			end,
			set = function(arg_208_0)
				var_0_60.styleSetting = arg_208_0

				var_0_95()
			end
		}
	end

	var_199_0[#var_199_0 + 1] = {
		tone = "normal",
		key = "ctl_reset",
		kind = "button",
		label = var_0_89("controls_reset"),
		set = function()
			var_0_82.cancel()

			if var_0_83.settingsDevice() == "pad" then
				var_0_8.resetPad()

				var_0_60.vibration = true
				var_0_73.speed = 0.5
				var_0_60.styleSetting = "auto"
			else
				var_0_8.resetKeys()
			end

			var_0_95()
		end
	}

	return var_199_0
end

function var_0_83.leaveSettingsPage()
	var_0_82.cancel()

	var_0_160 = nil
end

function var_0_83.isCapturing()
	return var_0_82.active ~= nil
end

function var_0_83.init(arg_212_0)
	var_0_83.load(arg_212_0)
	var_0_60.scan()
	var_0_93()
end

function var_0_83.shutdown()
	var_0_60.stopVibration()
end

var_0_83._state = var_0_84

function var_0_83._focusTarget(arg_214_0)
	return var_0_125(arg_214_0)
end

var_0_83._handleButton = var_0_144

return var_0_83
