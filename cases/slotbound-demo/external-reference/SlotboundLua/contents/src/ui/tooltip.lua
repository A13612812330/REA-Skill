local var_0_0 = {}
local var_0_1 = require("src.game.power")
local var_0_2 = require("src.data.constants")
local var_0_3 = require("src.ui.imprint")
local var_0_4 = require("src.data.language")

local function var_0_5(arg_1_0)
	if not arg_1_0 then
		return "normal"
	end

	arg_1_0 = arg_1_0:lower()

	if arg_1_0 == "rare" or arg_1_0 == "r" then
		return "rare"
	end

	if arg_1_0 == "advanced" or arg_1_0 == "a" then
		return "advanced"
	end

	if arg_1_0 == "legendary" or arg_1_0 == "legend" or arg_1_0 == "l" then
		return "legendary"
	end

	if arg_1_0 == "prism" or arg_1_0 == "p" then
		return "prism"
	end

	return "normal"
end

local function var_0_6(arg_2_0)
	if not arg_2_0 then
		return nil
	end

	if arg_2_0.sym ~= "W" and arg_2_0.sym ~= "S" and arg_2_0.sym ~= "A" and arg_2_0.sym ~= "M" and arg_2_0.sym ~= "H" and arg_2_0.sym ~= "D" and (type(arg_2_0.sym) ~= "string" or not arg_2_0.sym:find("ENEMY_")) then
		return nil
	end

	local var_2_0, var_2_1 = pcall(require, "src.data.constants")

	if not var_2_0 or not var_2_1 then
		return nil
	end

	local var_2_2 = var_2_1.imprint and var_2_1.imprint.definitions

	if not var_2_2 then
		return nil
	end

	local var_2_3 = var_0_5(arg_2_0.grade)
	local var_2_4

	if arg_2_0.sym == "W" then
		if var_2_3 == "prism" then
			var_2_4 = var_2_2.majesty
		elseif var_2_3 == "legendary" then
			var_2_4 = var_2_2.earthquake
		elseif var_2_3 == "rare" then
			var_2_4 = var_2_2.self_destruct
		elseif var_2_3 == "advanced" then
			var_2_4 = var_2_2.bash
		else
			var_2_4 = var_2_2.brace
		end
	elseif arg_2_0.sym == "S" then
		if var_2_3 == "prism" then
			var_2_4 = var_2_2.undying_soul
		elseif var_2_3 == "legendary" then
			var_2_4 = var_2_2.panther_fury
		elseif var_2_3 == "rare" then
			var_2_4 = var_2_2.fear
		elseif var_2_3 == "advanced" then
			var_2_4 = var_2_2.knockback
		else
			var_2_4 = var_2_2.pierce
		end
	elseif arg_2_0.sym == "A" then
		if var_2_3 == "prism" then
			var_2_4 = var_2_2.timeless
		elseif var_2_3 == "legendary" then
			var_2_4 = var_2_2.annihilation
		elseif var_2_3 == "rare" then
			var_2_4 = var_2_2.chain
		elseif var_2_3 == "advanced" then
			var_2_4 = var_2_2.blind
		else
			var_2_4 = var_2_2.volley
		end
	elseif arg_2_0.sym == "M" then
		if var_2_3 == "prism" then
			var_2_4 = var_2_2.colossus_descent
		elseif var_2_3 == "legendary" then
			var_2_4 = var_2_2.meteor
		elseif var_2_3 == "rare" then
			var_2_4 = var_2_2.chill
		elseif var_2_3 == "advanced" then
			var_2_4 = var_2_2.poison
		else
			var_2_4 = var_2_2.transfer
		end
	elseif arg_2_0.sym == "H" then
		if var_2_3 == "legendary" then
			var_2_4 = var_2_2.revival
		elseif var_2_3 == "prism" then
			var_2_4 = var_2_2.ruin
		elseif var_2_3 == "rare" then
			var_2_4 = var_2_2.enlarge
		elseif var_2_3 == "advanced" then
			var_2_4 = var_2_2.block
		else
			var_2_4 = var_2_2.overdrive
		end
	elseif arg_2_0.sym == "D" then
		if var_2_3 == "prism" then
			var_2_4 = var_2_2.overlord
		elseif var_2_3 == "legendary" then
			var_2_4 = var_2_2.shadow_clone
		elseif var_2_3 == "rare" then
			var_2_4 = var_2_2.execute
		elseif var_2_3 == "advanced" then
			var_2_4 = var_2_2.lifesteal
		else
			var_2_4 = var_2_2.relentless
		end
	elseif type(arg_2_0.sym) == "string" and arg_2_0.sym:find("ENEMY_") then
		var_2_4 = var_2_2.overlord
	end

	if not var_2_4 then
		return nil
	end

	local var_2_5 = arg_2_0.grade or "normal"

	if arg_2_0.jackpot5th == true then
		var_2_5 = "prism"
	end

	local var_2_6 = {
		level = 1,
		id = var_2_4.id,
		name = var_2_4.name,
		desc = var_2_4.desc,
		shortDesc = var_2_4.shortDesc,
		icon = var_2_4.icon,
		rarity = var_2_5,
		maxLevel = var_2_4.maxLevel or 5
	}

	if var_2_4.levels and var_2_4.levels[1] then
		local var_2_7 = var_2_4.levels[1]

		if not var_2_6.desc then
			var_2_6.desc = var_2_7.desc
		end

		if not var_2_6.shortDesc then
			var_2_6.shortDesc = var_2_7.shortDesc
		end
	end

	return var_2_6
end

local function var_0_7(arg_3_0, arg_3_1)
	if not arg_3_0 or not arg_3_1 or not arg_3_0.imprints then
		return false
	end

	for iter_3_0, iter_3_1 in pairs(arg_3_0.imprints) do
		if iter_3_1 and iter_3_1.id == arg_3_1.id then
			return true
		end
	end

	return false
end

local var_0_8

local function var_0_9(arg_4_0)
	local var_4_0 = tonumber(arg_4_0 or 1) or 1

	if var_4_0 == 2 then
		return {
			0.6,
			1,
			0.6,
			1
		}
	end

	if var_4_0 == 3 then
		return {
			0.6,
			0.75,
			1,
			1
		}
	end

	if var_4_0 == 4 then
		return {
			1,
			0.75,
			0.3,
			1
		}
	end

	if var_4_0 >= 5 then
		return "prism"
	end

	return nil
end

local var_0_10

local function var_0_11()
	if var_0_10 then
		return var_0_10
	end

	local var_5_0, var_5_1 = pcall(love.graphics.newShader, "    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){\n      vec4 t = Texel(texture, texture_coords);\n      return vec4(color.rgb, t.a * color.a);\n    }\n  ")

	if var_5_0 then
		var_0_10 = var_5_1
	end

	return var_0_10
end

local var_0_12

local function var_0_13()
	if var_0_12 then
		return var_0_12
	end

	local var_6_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color; // includes source alpha\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      // Apply saturation boost and color gain (icon-sized legibility)\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      return vec4(outRGB, alpha);\n    }\n  "

	var_0_12 = love.graphics.newShader(var_6_0)

	return var_0_12
end

local var_0_14

local function var_0_15()
	if var_0_14 then
		return var_0_14
	end

	local var_7_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      // IMPORTANT: treat input as an ALPHA MASK (text canvas). Only alpha matters.\n      float maskA = Texel(tex, tc).a;\n      if (maskA <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * maskA;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      // Premultiply to guarantee no color outside the mask.\n      return vec4(outRGB * alpha, alpha);\n    }\n  "

	var_0_14 = love.graphics.newShader(var_7_0)

	return var_0_14
end

local function var_0_16(arg_8_0)
	return math.floor(arg_8_0 or 0)
end

local function var_0_17(arg_9_0)
	return ({
		"I",
		"II",
		"III",
		"IV",
		"V"
	})[tonumber(arg_9_0) or 1] or tostring(arg_9_0)
end

local function var_0_18(arg_10_0, arg_10_1, arg_10_2)
	if not arg_10_0 then
		return 0
	end

	return arg_10_0:getWidth(arg_10_1 or "") * (arg_10_2 or 1)
end

local function var_0_19(arg_11_0, arg_11_1)
	if not arg_11_0 then
		return 0
	end

	return arg_11_0:getHeight() * (arg_11_1 or 1)
end

local function var_0_20(arg_12_0, arg_12_1, arg_12_2, arg_12_3)
	if not arg_12_0 or not arg_12_1 or not love or not love.graphics or not love.graphics.newCanvas then
		return nil
	end

	arg_12_2 = tostring(arg_12_2 or "")

	if arg_12_2 == "" then
		return nil
	end

	arg_12_3 = arg_12_3 or 1

	local var_12_0 = math.max(1, math.floor(arg_12_1:getWidth(arg_12_2) * arg_12_3 + 0.5))
	local var_12_1 = math.max(1, math.floor(arg_12_1:getHeight() * arg_12_3 + 0.5))
	local var_12_2 = arg_12_0._titleMaskCache

	if not var_12_2 then
		var_12_2 = {}
		arg_12_0._titleMaskCache = var_12_2
	end

	local var_12_3 = arg_12_0._titleMaskCanvas

	if not var_12_3 or var_12_2.w ~= var_12_0 or var_12_2.h ~= var_12_1 or var_12_2.text ~= arg_12_2 or var_12_2.scale ~= arg_12_3 or var_12_2.font ~= arg_12_1 then
		if not var_12_3 or var_12_2.w ~= var_12_0 or var_12_2.h ~= var_12_1 then
			if var_12_3 then
				var_12_3:release()
			end

			var_12_3 = love.graphics.newCanvas(var_12_0, var_12_1)
			arg_12_0._titleMaskCanvas = var_12_3
		end

		var_12_2.w, var_12_2.h, var_12_2.text, var_12_2.scale, var_12_2.font = var_12_0, var_12_1, arg_12_2, arg_12_3, arg_12_1

		love.graphics.push("all")
		love.graphics.setCanvas(var_12_3)
		love.graphics.clear(0, 0, 0, 0)
		love.graphics.setFont(arg_12_1)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.print(arg_12_2, 0, 0, 0, arg_12_3, arg_12_3)
		love.graphics.pop()
	end

	return var_12_3
end

local function var_0_21(arg_13_0)
	arg_13_0 = arg_13_0:gsub("#", "")

	local var_13_0 = tonumber(arg_13_0:sub(1, 2), 16) / 255
	local var_13_1 = tonumber(arg_13_0:sub(3, 4), 16) / 255
	local var_13_2 = tonumber(arg_13_0:sub(5, 6), 16) / 255

	return var_13_0, var_13_1, var_13_2, 1
end

local var_0_22 = (function()
	local var_14_0, var_14_1, var_14_2 = var_0_21("#EDE6F3")

	return {
		var_14_0,
		var_14_1,
		var_14_2,
		1
	}
end)()
local var_0_23 = {
	normal = {
		atk = 1,
		hp = 1,
		aspd = 1
	},
	advanced = {
		atk = 1.5,
		hp = 1.5,
		aspd = 1.08
	},
	rare = {
		atk = 2,
		hp = 2,
		aspd = 1.15
	},
	legendary = {
		atk = 3,
		hp = 3,
		aspd = 1.3
	},
	prism = {
		atk = 4,
		hp = 4,
		aspd = 1.3
	}
}

local function var_0_24(arg_15_0)
	if arg_15_0 < 0 then
		return 0
	end

	if arg_15_0 > 1 then
		return 1
	end

	return arg_15_0
end

local function var_0_25(arg_16_0, arg_16_1, arg_16_2)
	arg_16_2 = var_0_24(arg_16_2 or 0)

	return {
		var_0_24((arg_16_0[1] or 1) * (1 - arg_16_2) + (arg_16_1[1] or 1) * arg_16_2),
		var_0_24((arg_16_0[2] or 1) * (1 - arg_16_2) + (arg_16_1[2] or 1) * arg_16_2),
		var_0_24((arg_16_0[3] or 1) * (1 - arg_16_2) + (arg_16_1[3] or 1) * arg_16_2),
		arg_16_0[4] ~= nil and arg_16_0[4] or 1
	}
end

local var_0_26 = setmetatable({}, {
	__mode = "k"
})

local function var_0_27(arg_17_0)
	if not arg_17_0 or not arg_17_0.getData then
		return nil
	end

	local var_17_0, var_17_1 = pcall(arg_17_0.getData, arg_17_0)

	if var_17_0 then
		return var_17_1
	end

	return nil
end

local function var_0_28(arg_18_0, arg_18_1, arg_18_2, arg_18_3, arg_18_4)
	if not arg_18_0 then
		return nil
	end

	arg_18_1, arg_18_2 = math.floor(arg_18_1 or 0), math.floor(arg_18_2 or 0)
	arg_18_3, arg_18_4 = math.floor(arg_18_3 or 0), math.floor(arg_18_4 or 0)

	if arg_18_3 <= 0 or arg_18_4 <= 0 then
		return nil
	end

	local var_18_0 = var_0_26[arg_18_0]

	if not var_18_0 then
		var_18_0 = {}
		var_0_26[arg_18_0] = var_18_0
	end

	local var_18_1 = table.concat({
		arg_18_1,
		arg_18_2,
		arg_18_3,
		arg_18_4
	}, ":")

	if var_18_0[var_18_1] ~= nil then
		return var_18_0[var_18_1]
	end

	local var_18_2, var_18_3 = arg_18_0:getDimensions()
	local var_18_4 = arg_18_3
	local var_18_5 = arg_18_4
	local var_18_6 = -1
	local var_18_7 = -1

	for iter_18_0 = 0, arg_18_4 - 1 do
		for iter_18_1 = 0, arg_18_3 - 1 do
			local var_18_8 = arg_18_1 + iter_18_1
			local var_18_9 = arg_18_2 + iter_18_0

			if var_18_8 >= 0 and var_18_9 >= 0 and var_18_8 < var_18_2 and var_18_9 < var_18_3 then
				local var_18_10, var_18_11, var_18_12, var_18_13 = arg_18_0:getPixel(var_18_8, var_18_9)

				if var_18_13 and var_18_13 > 0.05 then
					if iter_18_1 < var_18_4 then
						var_18_4 = iter_18_1
					end

					if iter_18_0 < var_18_5 then
						var_18_5 = iter_18_0
					end

					if var_18_6 < iter_18_1 then
						var_18_6 = iter_18_1
					end

					if var_18_7 < iter_18_0 then
						var_18_7 = iter_18_0
					end
				end
			end
		end
	end

	local var_18_14

	if var_18_4 <= var_18_6 and var_18_5 <= var_18_7 then
		var_18_14 = {
			x = var_18_4,
			y = var_18_5,
			w = var_18_6 - var_18_4 + 1,
			h = var_18_7 - var_18_5 + 1
		}
	end

	var_18_0[var_18_1] = var_18_14 or false

	return var_18_14
end

local function var_0_29(arg_19_0, arg_19_1)
	if not arg_19_0 or not arg_19_0.locked or not arg_19_1 then
		return false
	end

	local var_19_0 = arg_19_1

	if var_19_0 and var_19_0.ref then
		var_19_0 = var_19_0.ref
	end

	local var_19_1 = arg_19_0.lockedTarget or arg_19_0.target

	if var_19_1 and var_19_1.ref then
		var_19_1 = var_19_1.ref
	end

	return var_19_1 ~= nil and var_19_0 ~= nil and var_19_1 == var_19_0
end

local function var_0_30(arg_20_0, arg_20_1)
	if not arg_20_1 then
		return var_0_22
	end

	local var_20_0 = arg_20_1.grade

	if arg_20_1.jackpot5th == true or var_20_0 == "prism" then
		return {
			1,
			1,
			1,
			1,
			prism = true
		}
	end

	if var_20_0 == "advanced" then
		local var_20_1 = {
			0.45,
			1,
			0.55,
			selected and pulse or 1
		}

		if selected then
			var_20_1 = var_0_25(var_20_1, {
				1,
				1,
				1,
				var_20_1[4]
			}, 0.25)
		end

		return var_20_1
	elseif var_20_0 == "rare" then
		local var_20_2 = {
			0.35,
			0.75,
			1,
			selected and pulse or 1
		}

		if selected then
			var_20_2 = var_0_25(var_20_2, {
				1,
				1,
				1,
				var_20_2[4]
			}, 0.25)
		end

		return var_20_2
	elseif var_20_0 == "legendary" then
		local var_20_3 = {
			0.99,
			0.8,
			0.22,
			selected and pulse or 1
		}

		if selected then
			var_20_3 = var_0_25(var_20_3, {
				1,
				1,
				1,
				var_20_3[4]
			}, 0.2)
		end

		return var_20_3
	end

	if selected then
		return {
			var_0_22[1] or 1,
			var_0_22[2] or 1,
			var_0_22[3] or 1,
			pulse
		}
	end

	return var_0_22
end

local var_0_31 = {
	boxFill = {
		0,
		0,
		0,
		0.8
	},
	boxBorder = (function()
		local var_21_0, var_21_1, var_21_2 = var_0_21("#333333")

		return {
			var_21_0,
			var_21_1,
			var_21_2,
			1
		}
	end)(),
	label = (function()
		local var_22_0, var_22_1, var_22_2 = var_0_21("#999999")

		return {
			var_22_0,
			var_22_1,
			var_22_2,
			1
		}
	end)(),
	value = {
		1,
		1,
		1,
		1
	},
	gaugeBg = (function()
		local var_23_0, var_23_1, var_23_2 = var_0_21("#2A2A2A")

		return {
			var_23_0,
			var_23_1,
			var_23_2,
			1
		}
	end)(),
	gaugeFill = (function()
		local var_24_0, var_24_1, var_24_2 = var_0_21("#4FC3F7")

		return {
			var_24_0,
			var_24_1,
			var_24_2,
			1
		}
	end)(),
	hint = var_0_22
}
local var_0_32 = 3
local var_0_33 = 8
local var_0_34 = 4
local var_0_35 = 24
local var_0_36 = 0.12
local var_0_37 = 0.25
local var_0_38 = 0.15
local var_0_39 = 0.08
local var_0_40 = 0.15

local function var_0_41(arg_25_0)
	local var_25_0 = _G.currentGameLang or "ko"

	if arg_25_0 == "W" then
		return {
			dur = 0,
			cd = 3,
			name = var_0_4.getText("pseudo_skill_crush_name", var_25_0),
			trigger = var_0_4.getText("pseudo_skill_on_approach", var_25_0),
			effect = var_0_4.getText("pseudo_skill_crush_effect", var_25_0)
		}
	elseif arg_25_0 == "A" then
		return {
			dur = 0,
			cd = 2.5,
			name = var_0_4.getText("pseudo_skill_snipe_name", var_25_0),
			trigger = var_0_4.getText("pseudo_skill_ranged_shot", var_25_0),
			effect = var_0_4.getText("pseudo_skill_snipe_effect", var_25_0)
		}
	elseif arg_25_0 == "S" then
		return {
			dur = 0,
			cd = 0.8,
			name = var_0_4.getText("pseudo_skill_charge_name", var_25_0),
			trigger = var_0_4.getText("pseudo_skill_on_approach", var_25_0),
			effect = var_0_4.getText("pseudo_skill_charge_effect", var_25_0)
		}
	else
		return {
			dur = 0,
			effect = "-",
			trigger = "-",
			cd = 0,
			name = var_0_4.getText("pseudo_skill_basic_name", var_25_0)
		}
	end
end

local function var_0_42(arg_26_0, arg_26_1, arg_26_2)
	local var_26_0 = var_0_5(arg_26_2)
	local var_26_1 = tonumber(arg_26_1 or 1) or 1

	if arg_26_0 == "W" and var_26_1 == 1 and var_26_0 == "prism" then
		return "크루세이더"
	end

	if arg_26_0 == "W" and var_26_1 == 1 and var_26_0 == "legendary" then
		return "해골 투사"
	end

	if arg_26_0 == "W" and var_26_1 == 1 and var_26_0 == "rare" then
		return "투사"
	end

	if arg_26_0 == "W" and var_26_1 == 1 and var_26_0 == "advanced" then
		return "철퇴병"
	end

	if arg_26_0 == "H" and var_26_1 == 1 and var_26_0 == "advanced" then
		return "철기병"
	end

	return classNameBy(arg_26_0, arg_26_1, arg_26_2)
end

local function var_0_43(arg_27_0)
	if not arg_27_0 then
		return nil
	end

	local var_27_0 = "⚔"

	if arg_27_0.role == "archer" then
		var_27_0 = "🏹"
	elseif arg_27_0.role == "spear" then
		var_27_0 = "🔱"
	end

	local var_27_1 = arg_27_0.sym or arg_27_0.role == "archer" and "A" or arg_27_0.role == "spear" and "S" or "W"
	local var_27_2 = var_0_42(var_27_1, arg_27_0.rank or arg_27_0.star or 1, arg_27_0.grade)

	if arg_27_0.isShadowMinion then
		var_27_2 = var_0_4.getEnemyName(arg_27_0.kind, arg_27_0.displayName, _G.currentGameLang or "ko")
	elseif arg_27_0.subclassName then
		var_27_2 = arg_27_0.subclassName
	end

	local var_27_3 = _G.currentGameLang or "ko"
	local var_27_4 = arg_27_0.subclassName and not arg_27_0.isShadowMinion and var_0_4.translateUnitName(tostring(arg_27_0.subclassName), var_27_3) or arg_27_0.isShadowMinion and var_0_4.translateUnitName(var_0_4.normalizeUnitName(var_27_2), var_27_3) or arg_27_0.name and var_0_4.translateUnitName(tostring(arg_27_0.name), var_27_3) or var_0_4.translateUnitName(var_0_4.normalizeUnitName(var_27_2), var_27_3)
	local var_27_5

	if arg_27_0.atkPeriod and arg_27_0.atkPeriod > 0 then
		var_27_5 = 1 / arg_27_0.atkPeriod
	elseif arg_27_0.atkTicks and arg_27_0.atkTicks > 0 then
		var_27_5 = 60 / arg_27_0.atkTicks
	else
		var_27_5 = 0
	end

	if arg_27_0._aspdBuff and arg_27_0._aspdBuff > 0 then
		var_27_5 = var_27_5 * (1 + arg_27_0._aspdBuff)
	end

	if arg_27_0._randomOptionKillHasteASPD and arg_27_0._randomOptionKillHasteASPD > 0 then
		var_27_5 = var_27_5 * (1 + arg_27_0._randomOptionKillHasteASPD)
	end

	if arg_27_0._relentlessASPD and arg_27_0._relentlessASPD > 0 then
		var_27_5 = var_27_5 * (1 + arg_27_0._relentlessASPD)
	end

	local var_27_6 = arg_27_0.observerSlow and (arg_27_0.observerSlow.dur or 0) > 0

	if var_27_6 then
		local var_27_7 = math.max(0, math.min(0.95, arg_27_0.observerSlow.slowFrac or 0.2))

		var_27_5 = var_27_5 * math.max(0.05, 1 - var_27_7)
	end

	local var_27_8 = var_0_41(arg_27_0.sym or "W")
	local var_27_9 = {
		name = arg_27_0.isShadowMinion and var_27_4 or var_27_4 .. "(" .. var_27_0 .. ")",
		class = var_27_4,
		sym = var_27_1,
		star = arg_27_0.star or 1,
		rank = arg_27_0.rank or arg_27_0.star or 1,
		hp = arg_27_0.hp or arg_27_0.maxhp or 0,
		hpMax = arg_27_0.maxhp or arg_27_0.hp or 0,
		atk = arg_27_0.dmg or 0,
		aspd = var_27_5,
		isShadowMinion = arg_27_0.isShadowMinion,
		aspdBuffActive = (arg_27_0._aspdBuff and arg_27_0._aspdBuff > 0 or arg_27_0._randomOptionKillHasteASPD and arg_27_0._randomOptionKillHasteASPD > 0 or arg_27_0._relentlessASPD and arg_27_0._relentlessASPD > 0) and true or false,
		aspdDebuffActive = var_27_6 and true or false,
		distance = arg_27_0.distance or arg_27_0.range or 0,
		pseudoSkills = {
			var_27_8
		},
		absorbLV = arg_27_0.absorbLV or 1,
		shadowBaseStats = arg_27_0.shadowBaseStats,
		grade = arg_27_0.grade,
		jackpot5th = arg_27_0.jackpot5th == true
	}
	local var_27_10 = arg_27_0.power

	if var_27_6 or not var_27_10 then
		local var_27_11 = var_0_1.power(var_27_9.hpMax or var_27_9.hp or 0, var_27_9.atk or 0, var_27_9.aspd or 0)

		var_27_10 = var_27_11 and var_27_11 or 0
	end

	var_27_9.power = var_27_10

	return var_27_9
end

local function var_0_44(arg_28_0)
	if not arg_28_0 then
		return nil
	end

	local var_28_0

	if arg_28_0.atkPeriod and arg_28_0.atkPeriod > 0 then
		var_28_0 = 1 / arg_28_0.atkPeriod
	elseif arg_28_0.atkTicks and arg_28_0.atkTicks > 0 then
		var_28_0 = 60 / arg_28_0.atkTicks
	else
		var_28_0 = 0
	end

	if arg_28_0.guardThrustSlow and (arg_28_0.guardThrustSlow.dur or 0) > 0 then
		var_28_0 = var_28_0 * (1 - math.max(0, math.min(0.95, arg_28_0.guardThrustSlow.slowFrac or 0.15)))
	end

	local var_28_1 = rawget(_G, "enemyPresets") or {}
	local var_28_2 = arg_28_0.kind and var_28_1[arg_28_0.kind] or nil
	local var_28_3 = var_0_4.getEnemyName(arg_28_0.kind, arg_28_0.displayName or var_28_2 and var_28_2.nameKo or arg_28_0.kind, _G.currentGameLang or "ko")
	local var_28_4 = {
		name = var_28_3,
		class = var_28_3,
		sym = "ENEMY_" .. (arg_28_0.kind or "Goblin"),
		hp = arg_28_0.hp or arg_28_0.maxhp or 0,
		hpMax = arg_28_0.maxhp or arg_28_0.hp or 0,
		atk = arg_28_0.dmg or 0,
		aspd = var_28_0,
		distance = arg_28_0.distance or 40,
		rank = arg_28_0.rank or 1,
		grade = arg_28_0.grade or "normal",
		isShadowMinion = arg_28_0.isShadowMinion
	}
	local var_28_5 = var_0_1.power(var_28_4.hpMax or var_28_4.hp or 0, var_28_4.atk or 0, var_28_0)

	var_28_4.power = type(var_28_5) == "table" and (var_28_5[1] or 0) or var_28_5 or 0

	return var_28_4
end

local var_0_45 = {
	W = {
		key = "WarriorTraining",
		id = "31",
		hp = {
			0.06,
			0.12,
			0.18
		}
	},
	A = {
		key = "ArcherTraining",
		id = "32",
		aspd = {
			0.05,
			0.1,
			0.15
		}
	},
	S = {
		key = "SpearmanTraining",
		id = "33",
		atk = {
			0.06,
			0.12,
			0.18
		}
	},
	M = {
		key = "MageTraining",
		id = "34",
		atk = {
			0.05,
			0.1,
			0.15
		},
		aspd = {
			0.04,
			0.08,
			0.12
		}
	},
	H = {
		key = "CavalryTraining",
		id = "35",
		hp = {
			0.04,
			0.08,
			0.12
		},
		atk = {
			0.04,
			0.08,
			0.12
		}
	},
	D = {
		key = "DuelistTraining",
		id = "36",
		atk = {
			0.06,
			0.12,
			0.18
		}
	}
}

local function var_0_46(arg_29_0, arg_29_1, arg_29_2)
	if not arg_29_0 then
		return
	end

	local var_29_0 = var_0_45[arg_29_0.sym]
	local var_29_1 = arg_29_2 or arg_29_1 and arg_29_1.ui or rawget(_G, "ui")
	local var_29_2 = var_29_1 and var_29_1._itemPurchased

	if not var_29_0 or type(var_29_2) ~= "table" then
		return
	end

	local var_29_3

	for iter_29_0, iter_29_1 in ipairs(var_29_2) do
		if iter_29_1 and (iter_29_1.key == var_29_0.key or tostring(iter_29_1.id or "") == var_29_0.id) then
			var_29_3 = iter_29_1

			break
		end
	end

	if not var_29_3 then
		return
	end

	local var_29_4 = math.max(1, math.min(3, math.floor(tonumber(var_29_3.level or 1) or 1)))
	local var_29_5 = var_29_0.hp and var_29_0.hp[var_29_4] or 0
	local var_29_6 = var_29_0.atk and var_29_0.atk[var_29_4] or 0
	local var_29_7 = var_29_0.aspd and var_29_0.aspd[var_29_4] or 0

	if var_29_5 > 0 then
		local var_29_8 = math.max(1, tonumber(arg_29_0.hpMax or arg_29_0.hp or 1) or 1)

		arg_29_0.hpMax = var_29_8 + math.max(1, math.floor(var_29_8 * var_29_5 + 0.5))
		arg_29_0.hp = arg_29_0.hpMax
		arg_29_0.trainingHpBuffActive = true
	end

	if var_29_6 > 0 then
		arg_29_0.atk = math.max(0, (tonumber(arg_29_0.atk) or 0) * (1 + var_29_6))
		arg_29_0.trainingAtkBuffActive = true
	end

	if var_29_7 > 0 then
		arg_29_0.aspd = math.max(0.05, (tonumber(arg_29_0.aspd) or 0.05) * (1 + var_29_7))
		arg_29_0.trainingAspdBuffActive = true
	end
end

local function var_0_47(arg_30_0, arg_30_1, arg_30_2)
	if not arg_30_0 then
		return nil
	end

	local var_30_0 = arg_30_0.sym == "A" and "🏹" or arg_30_0.sym == "S" and "🔱" or arg_30_0.sym == "M" and "✨" or arg_30_0.sym == "H" and "🐎" or arg_30_0.sym == "D" and "🗡" or "⚔"
	local var_30_1 = var_0_42(arg_30_0.sym, arg_30_0.rank or arg_30_0.star or 1, arg_30_0.grade)

	if arg_30_0.isShadowMinion then
		var_30_1 = var_0_4.getEnemyName(arg_30_0.kind, arg_30_0.displayName, _G.currentGameLang or "ko")
	elseif arg_30_0.subclassName then
		var_30_1 = arg_30_0.subclassName
	end

	local var_30_2 = _G.currentGameLang or "ko"
	local var_30_3 = arg_30_0.subclassName and not arg_30_0.isShadowMinion and var_0_4.translateUnitName(tostring(arg_30_0.subclassName), var_30_2) or var_0_4.translateUnitName(var_0_4.normalizeUnitName(var_30_1), var_30_2)
	local var_30_4 = 0
	local var_30_5 = 0
	local var_30_6 = 0
	local var_30_7 = 0

	if arg_30_0.stats then
		var_30_4 = arg_30_0.stats.hp or 0
		var_30_5 = arg_30_0.stats.atk or 0
		var_30_6 = arg_30_0.stats.aspd or 0
		var_30_7 = arg_30_0.stats.distance or 0
	else
		local var_30_8 = infoFromSymbol(arg_30_0.sym)

		var_30_4 = var_30_8.hp or 0
		var_30_5 = var_30_8.atk or 0
		var_30_6 = var_30_8.aspd or 0
		var_30_7 = var_30_8.distance or 0
	end

	local var_30_9 = {
		name = arg_30_0.isShadowMinion and var_30_3 or var_30_3 .. "(" .. var_30_0 .. ")",
		class = var_30_3,
		sym = arg_30_0.sym,
		star = arg_30_0.star or 1,
		rank = arg_30_0.rank or arg_30_0.star or 1,
		isShadowMinion = arg_30_0.isShadowMinion,
		hp = var_30_4,
		hpMax = var_30_4,
		atk = var_30_5,
		aspd = var_30_6,
		distance = var_30_7,
		absorbLV = arg_30_0.absorbLV or 1,
		shadowBaseStats = arg_30_0.shadowBaseStats,
		grade = arg_30_0.grade,
		jackpot5th = arg_30_0.jackpot5th == true
	}

	if arg_30_1 and arg_30_1.computeRandomOptionAtkMul and arg_30_1.computeRandomOptionHpMul and arg_30_1.computeRandomOptionAspdMul and arg_30_1.computeRandomOptionRangeMul and arg_30_0 and arg_30_0.stats then
		local var_30_10 = arg_30_1.ui and arg_30_1.ui.jungsuBalance or 0
		local var_30_11 = true

		if arg_30_1.rosterUnits then
			for iter_30_0, iter_30_1 in ipairs(arg_30_1.rosterUnits) do
				if iter_30_1 and iter_30_1 ~= arg_30_0 and iter_30_1.sym == arg_30_0.sym then
					var_30_11 = false

					break
				end
			end
		end

		local var_30_12 = {
			isBattleMode = false,
			isBossWave = false,
			isJudgementWave = false,
			deadAllyCount = 0,
			maxHp = 1,
			currentHp = 1,
			enemyCount = 0,
			uniqueFamily = var_30_11
		}
		local var_30_13 = {
			randomOptions = arg_30_0.randomOptions,
			sym = arg_30_0.sym,
			firstHitUsed = arg_30_0.firstHitUsed
		}
		local var_30_14 = tonumber(arg_30_1.computeRandomOptionAtkMul(var_30_13, var_30_12)) or 1
		local var_30_15 = tonumber(arg_30_1.computeRandomOptionHpMul(var_30_13)) or 1
		local var_30_16 = tonumber(arg_30_1.computeRandomOptionAspdMul(var_30_13, var_30_10)) or 1
		local var_30_17 = tonumber(arg_30_1.computeRandomOptionRangeMul(var_30_13, arg_30_0.sym)) or 1

		if var_30_14 <= 0 then
			var_30_14 = 1
		end

		if var_30_15 <= 0 then
			var_30_15 = 1
		end

		if var_30_16 <= 0 then
			var_30_16 = 1
		end

		if var_30_17 <= 0 then
			var_30_17 = 1
		end

		local var_30_18 = (tonumber(arg_30_0.stats.atk) or 0) / var_30_14
		local var_30_19 = (tonumber(arg_30_0.stats.hp) or 0) / var_30_15
		local var_30_20 = (tonumber(arg_30_0.stats.aspd) or 0.05) / var_30_16
		local var_30_21 = (tonumber(arg_30_0.stats.distance) or 0) / var_30_17
		local var_30_22 = {
			isBattleMode = true,
			isBossWave = false,
			isJudgementWave = false,
			deadAllyCount = 0,
			enemyCount = 1,
			currentHp = var_30_19,
			maxHp = var_30_19,
			uniqueFamily = var_30_11
		}
		local var_30_23 = {
			randomOptions = arg_30_0.randomOptions,
			sym = arg_30_0.sym,
			firstHitUsed = arg_30_0.firstHitUsed
		}
		local var_30_24 = tonumber(arg_30_1.computeRandomOptionAtkMul(var_30_23, var_30_22)) or 1
		local var_30_25 = tonumber(arg_30_1.computeRandomOptionHpMul(var_30_23)) or 1
		local var_30_26 = tonumber(arg_30_1.computeRandomOptionAspdMul(var_30_23, var_30_10)) or 1
		local var_30_27 = tonumber(arg_30_1.computeRandomOptionRangeMul(var_30_23, arg_30_0.sym)) or 1

		if var_30_24 <= 0 then
			var_30_24 = 1
		end

		if var_30_25 <= 0 then
			var_30_25 = 1
		end

		if var_30_26 <= 0 then
			var_30_26 = 1
		end

		if var_30_27 <= 0 then
			var_30_27 = 1
		end

		var_30_9.atk = math.max(0, var_30_18 * var_30_24)
		var_30_9.hpMax = math.max(0, math.floor(var_30_19 * var_30_25 + 0.5))
		var_30_9.hp = var_30_9.hpMax
		var_30_9.aspd = math.max(0, var_30_20 * var_30_26)
		var_30_9.distance = math.max(0, var_30_21 * var_30_27)
	end

	var_0_46(var_30_9, arg_30_1, arg_30_2)

	local var_30_28 = var_0_1.power(var_30_9.hpMax or var_30_9.hp or 0, var_30_9.atk or 0, var_30_9.aspd or var_30_6)

	var_30_9.power = type(var_30_28) == "table" and (var_30_28[1] or 0) or var_30_28 or 0

	return var_30_9
end

local function var_0_48(arg_31_0)
	local var_31_0 = "⚔"
	local var_31_1 = 9
	local var_31_2 = 70
	local var_31_3 = 1.5
	local var_31_4 = 50

	if arg_31_0 == "A" then
		var_31_0 = "🏹"
		var_31_1 = 8
		var_31_2 = 40
		var_31_3 = 1.3
		var_31_4 = 150
	elseif arg_31_0 == "S" then
		var_31_0 = "🔱"
		var_31_1 = 12
		var_31_2 = 65
		var_31_3 = 1.25
		var_31_4 = 55
	elseif arg_31_0 == "M" then
		var_31_0 = "✨"
		var_31_1 = 17
		var_31_2 = 55
		var_31_3 = 1.135
		var_31_4 = 140
	elseif arg_31_0 == "H" then
		var_31_0 = "🐎"
		var_31_1 = 17
		var_31_2 = 90
		var_31_3 = 1.135
		var_31_4 = 55
	elseif arg_31_0 == "D" then
		var_31_0 = "🗡"
		var_31_1 = 23
		var_31_2 = 120
		var_31_3 = 1.2
		var_31_4 = 60
	elseif type(arg_31_0) == "string" and arg_31_0:find("ENEMY_") then
		var_31_0 = "🌘"
		var_31_1 = 10
		var_31_2 = 50
		var_31_3 = 1
		var_31_4 = 40
	end

	local var_31_5 = classNameBy(arg_31_0, 1)
	local var_31_6 = var_0_41(arg_31_0)
	local var_31_7 = {
		rank = 1,
		absorbLV = 1,
		star = 1,
		name = var_31_5 .. "(" .. var_31_0 .. ")",
		class = var_31_5,
		sym = arg_31_0,
		hp = var_31_2,
		hpMax = var_31_2,
		atk = var_31_1,
		aspd = var_31_3,
		distance = var_31_4,
		pseudoSkills = {
			var_31_6
		}
	}

	var_31_7.jackpot5th = false
	var_31_7.power = var_0_1.power(var_31_7.hpMax or var_31_7.hp or 0, var_31_7.atk or 0, var_31_3) or 0

	return var_31_7
end

local function var_0_49(arg_32_0, arg_32_1, arg_32_2, arg_32_3)
	arg_32_3 = arg_32_3 or 1

	if arg_32_2 >= var_0_18(arg_32_0, arg_32_1, arg_32_3) then
		return arg_32_1
	end

	local var_32_0 = "..."
	local var_32_1 = var_0_18(arg_32_0, var_32_0, arg_32_3)
	local var_32_2 = rawget(_G, "utf8")

	if not var_32_2 then
		local var_32_3, var_32_4 = pcall(require, "utf8")

		if var_32_3 then
			var_32_2 = var_32_4
		end
	end

	if not var_32_2 or not var_32_2.len or not var_32_2.offset then
		local var_32_5 = 0
		local var_32_6 = #arg_32_1

		while var_32_5 < var_32_6 do
			local var_32_7 = math.floor((var_32_5 + var_32_6 + 1) / 2)
			local var_32_8 = arg_32_1:sub(1, var_32_7)

			if arg_32_2 >= var_0_18(arg_32_0, var_32_8, arg_32_3) + var_32_1 then
				var_32_5 = var_32_7
			else
				var_32_6 = var_32_7 - 1
			end
		end

		return arg_32_1:sub(1, var_32_5) .. var_32_0
	end

	local var_32_9 = var_32_2.len(arg_32_1)

	if not var_32_9 then
		return arg_32_1
	end

	local function var_32_10(arg_33_0, arg_33_1)
		if arg_33_1 <= 0 then
			return ""
		end

		local var_33_0 = var_32_2.offset(arg_33_0, arg_33_1 + 1)

		if var_33_0 then
			return arg_33_0:sub(1, var_33_0 - 1)
		else
			return arg_33_0
		end
	end

	local var_32_11 = 0
	local var_32_12 = var_32_9

	while var_32_11 < var_32_12 do
		local var_32_13 = math.floor((var_32_11 + var_32_12 + 1) / 2)
		local var_32_14 = var_32_10(arg_32_1, var_32_13)

		if arg_32_2 >= var_0_18(arg_32_0, var_32_14, arg_32_3) + var_32_1 then
			var_32_11 = var_32_13
		else
			var_32_12 = var_32_13 - 1
		end
	end

	return var_32_10(arg_32_1, var_32_11) .. var_32_0
end

local function var_0_50(arg_34_0, arg_34_1)
	local var_34_0 = arg_34_0

	if arg_34_0 and arg_34_0.battlefield then
		var_34_0 = arg_34_0.battlefield
	end

	if not var_34_0 then
		return 1
	end

	local var_34_1 = 1
	local var_34_2 = var_34_0.itemBuffs and var_34_0.itemBuffs.global

	if var_34_2 then
		local var_34_3 = var_34_2.primeStrength

		if var_34_3 and var_34_3.active and love.timer.getTime() - (var_34_3.t0 or 0) < (var_34_3.dur or 0) then
			var_34_1 = var_34_1 * (var_34_3.atkMul or 1)
		end

		local var_34_4 = var_34_2.forestFragment

		if var_34_4 and var_34_4.active and arg_34_1 and love.timer.getTime() - (var_34_4.t0 or 0) < (var_34_4.dur or 0) then
			local var_34_5 = arg_34_1.role
			local var_34_6 = arg_34_1.distance or 0

			if var_34_5 == "archer" or var_34_5 == "mage" or var_34_6 >= 100 then
				var_34_1 = var_34_1 * (var_34_4.atkMul or 1.15)
			end
		end
	end

	local var_34_7 = 0

	for iter_34_0, iter_34_1 in ipairs(var_34_0.allies or {}) do
		if iter_34_1 and iter_34_1.alive and not iter_34_1.dying and (tonumber(iter_34_1.hp) or 0) > 0 then
			var_34_7 = var_34_7 + 1
		end
	end

	local var_34_8 = var_34_0.ui and var_34_0.ui._itemPurchased or var_34_0._itemPurchased or arg_34_0 and arg_34_0._itemPurchased

	if type(var_34_8) == "table" then
		for iter_34_2, iter_34_3 in ipairs(var_34_8) do
			if iter_34_3 and iter_34_3.key == "BattleCryItem" and var_34_7 >= (tonumber(iter_34_3.requiredAllies) or 5) then
				local var_34_9 = iter_34_3.atkBonus
				local var_34_10 = math.max(1, math.floor(tonumber(iter_34_3.level or 1) or 1))

				var_34_1 = var_34_1 * (1 + (type(var_34_9) == "table" and tonumber(var_34_9[math.min(var_34_10, #var_34_9)] or var_34_9[#var_34_9]) or 0 or 0))
			elseif iter_34_3 and iter_34_3.key == "SolitaryOath" and var_34_7 <= (tonumber(iter_34_3.maxAllies) or 3) then
				local var_34_11 = iter_34_3.atkBonus
				local var_34_12 = math.max(1, math.floor(tonumber(iter_34_3.level or 1) or 1))

				var_34_1 = var_34_1 * (1 + (type(var_34_11) == "table" and tonumber(var_34_11[math.min(var_34_12, #var_34_11)] or var_34_11[#var_34_11]) or 0 or 0))
			end
		end
	end

	return var_34_1
end

local function var_0_51(arg_35_0)
	local var_35_0 = arg_35_0

	if arg_35_0 and arg_35_0.battlefield then
		var_35_0 = arg_35_0.battlefield
	end

	if not var_35_0 or not var_35_0.itemBuffs or not var_35_0.itemBuffs.global then
		return false
	end

	local var_35_1 = var_35_0.itemBuffs.global.brickShield

	if var_35_1 and var_35_1.active and love.timer.getTime() - (var_35_1.t0 or 0) < (var_35_1.dur or 0) then
		return true
	end

	return false
end

local var_0_52 = {
	DIST = "dist",
	ASPD = "aspd",
	ATK = "atk",
	HP = "hp",
	PWR = "pwr"
}
local var_0_53 = {
	atk = "stat_tooltip_atk",
	hp = "stat_tooltip_hp",
	dist = "stat_tooltip_dist",
	pwr = "stat_tooltip_pwr",
	aspd = "stat_tooltip_aspd"
}

local function var_0_54(arg_36_0)
	if not arg_36_0 then
		return nil
	end

	if var_0_52[arg_36_0] then
		return var_0_52[arg_36_0]
	end

	local var_36_0 = string.upper(tostring(arg_36_0))

	return var_0_52[var_36_0]
end

local function var_0_55(arg_37_0, arg_37_1)
	if not arg_37_0 or not arg_37_1 then
		return nil
	end

	return arg_37_0.tooltipStatIcons and arg_37_0.tooltipStatIcons[arg_37_1] or nil
end

local function var_0_56(arg_38_0, arg_38_1, arg_38_2, arg_38_3)
	local var_38_0 = arg_38_1.labelIcon or var_0_54(arg_38_1.label)
	local var_38_1 = var_0_55(arg_38_0, var_38_0)

	if var_38_1 then
		return math.floor(var_38_1:getWidth() * (arg_38_3 or 1) + 4 + 0.5)
	end

	if arg_38_1.label then
		return var_0_18(arg_38_2, arg_38_1.label .. ": ", arg_38_3)
	end

	return 0
end

local function var_0_57(arg_39_0, arg_39_1, arg_39_2, arg_39_3, arg_39_4, arg_39_5, arg_39_6, arg_39_7, arg_39_8, arg_39_9)
	local var_39_0 = arg_39_2.labelIcon or var_0_54(arg_39_2.label)
	local var_39_1 = var_0_55(arg_39_1, var_39_0)

	if var_39_1 then
		local var_39_2 = var_0_19(arg_39_6, arg_39_5)
		local var_39_3 = var_39_1:getHeight() * arg_39_5
		local var_39_4 = math.floor(arg_39_4 + (var_39_2 - var_39_3) * 0.5 + 0.5) + 1

		if type(arg_39_9) == "table" and arg_39_9[1] ~= nil then
			love.graphics.setColor(arg_39_9[1], arg_39_9[2], arg_39_9[3], (arg_39_9[4] or 1) * (arg_39_7 or 1) * (arg_39_8 or 1))
		else
			love.graphics.setColor(1, 1, 1, (arg_39_7 or 1) * (arg_39_8 or 1))
		end

		love.graphics.draw(var_39_1, arg_39_3, var_39_4, 0, arg_39_5, arg_39_5)

		local var_39_5 = arg_39_0 and arg_39_0.mouseX
		local var_39_6 = arg_39_0 and arg_39_0.mouseY
		local var_39_7 = var_39_1:getWidth() * arg_39_5
		local var_39_8 = var_39_1:getHeight() * arg_39_5

		if var_0_53[var_39_0] and var_39_5 and var_39_6 and (arg_39_7 or 1) * (arg_39_8 or 1) > 0.05 and arg_39_3 <= var_39_5 and var_39_5 <= arg_39_3 + var_39_7 and var_39_4 <= var_39_6 and var_39_6 <= var_39_4 + var_39_8 then
			arg_39_0._statIconHover = {
				key = var_39_0,
				x = arg_39_3,
				y = var_39_4,
				w = var_39_7,
				h = var_39_8
			}
		end

		return arg_39_3 + var_39_1:getWidth() * arg_39_5 + 4
	end

	if arg_39_2.label then
		local var_39_9 = arg_39_2.labelColor or var_0_31.label

		if var_39_9 == "prism" then
			local var_39_10 = (arg_39_0.ui and arg_39_0.ui.tooltipCfg and arg_39_0.ui.tooltipCfg.iconFoil or arg_39_0.ui and arg_39_0.ui.tooltip and arg_39_0.ui.tooltip.iconFoil or arg_39_0.ui and arg_39_0.ui.battle and (arg_39_0.ui.battle.jackpotFoil or arg_39_0.ui.battle.jackpotRainbow) or {}).cycleSec or 4
			local var_39_11 = love.timer.getTime() / var_39_10 * 2 * math.pi
			local var_39_12 = 0.6 + 0.4 * math.sin(var_39_11 + 0)
			local var_39_13 = 0.45 + 0.3 * math.sin(var_39_11 + 2.1)
			local var_39_14 = 0.8 + 0.2 * math.sin(var_39_11 + 4.2)

			love.graphics.setColor(var_39_12, var_39_13, var_39_14, (arg_39_7 or 1) * (arg_39_8 or 1))
		else
			love.graphics.setColor(var_39_9[1], var_39_9[2], var_39_9[3], (var_39_9[4] or 1) * (arg_39_7 or 1) * (arg_39_8 or 1))
		end

		love.graphics.print(arg_39_2.label .. ": ", arg_39_3, arg_39_4, 0, arg_39_5, arg_39_5)

		return arg_39_3 + var_0_18(arg_39_6, arg_39_2.label .. ": ", arg_39_5)
	end

	return arg_39_3
end

local function var_0_58(arg_40_0)
	local var_40_0 = 1

	if not arg_40_0 then
		return var_40_0
	end

	local var_40_1 = 0
	local var_40_2 = arg_40_0.imprints

	if type(var_40_2) == "table" then
		for iter_40_0, iter_40_1 in pairs(var_40_2) do
			if iter_40_1 then
				local var_40_3 = iter_40_1.rarity or "normal"
				local var_40_4 = 1

				if var_40_3 == "advanced" then
					var_40_4 = 2
				elseif var_40_3 == "rare" then
					var_40_4 = 3
				elseif var_40_3 == "legendary" or var_40_3 == "legend" then
					var_40_4 = 4
				elseif var_40_3 == "prism" then
					var_40_4 = 5
				end

				local var_40_5 = math.max(1, tonumber(iter_40_1.level) or 1)

				var_40_1 = var_40_1 + var_40_4 + (var_40_5 - 1)
			end
		end
	end

	local var_40_6 = math.floor((tonumber(arg_40_0.absorbLV or 0) or 0) / 10)

	return var_40_0 + var_40_1 + var_40_6
end

local function var_0_59(arg_41_0, arg_41_1, arg_41_2, arg_41_3, arg_41_4, arg_41_5, arg_41_6, arg_41_7)
	local var_41_0 = arg_41_0.font
	local var_41_1 = 1
	local var_41_2 = 1
	local var_41_3 = 5
	local var_41_4 = 4
	local var_41_5 = 0
	local var_41_6 = 0
	local var_41_7 = arg_41_1 and arg_41_1.sym
	local var_41_8

	if arg_41_3 and arg_41_3.iconsSmall and var_41_7 and arg_41_3.iconsSmall[var_41_7] then
		var_41_8 = arg_41_3.iconsSmall[var_41_7]
	elseif arg_41_3 and arg_41_3.icons and var_41_7 and arg_41_3.icons[var_41_7] then
		var_41_8 = arg_41_3.icons[var_41_7]
	end

	if var_41_8 then
		var_41_6 = var_41_8:getWidth() + 2
	else
		var_41_6 = 12
	end

	local var_41_9 = {}
	local var_41_10 = arg_41_7 and arg_41_7.sandboxMode == true
	local var_41_11 = {
		0.6,
		1,
		0.6,
		1
	}

	if arg_41_1 and arg_41_1.prediction then
		table.insert(var_41_9, {
			predNote = true,
			isTitle = true,
			value = var_0_4.getText("absorb_prediction", _G.currentGameLang or "ko"),
			scale = var_41_1
		})
	else
		local var_41_12 = arg_41_1 and arg_41_1.grade or arg_41_4 and arg_41_4.grade
		local var_41_13 = {
			1,
			1,
			1,
			1
		}

		if var_41_12 == "advanced" then
			var_41_13 = {
				0.6,
				1,
				0.6,
				1
			}
		elseif var_41_12 == "rare" then
			var_41_13 = {
				0.6,
				0.75,
				1,
				1
			}
		elseif var_41_12 == "legendary" then
			var_41_13 = {
				0.99,
				0.8,
				0.22,
				1
			}
		end

		local var_41_14 = {
			isTitle = true,
			value = tostring(arg_41_1.class or ""),
			scale = var_41_1,
			icon = arg_41_1.sym,
			titleColor = var_41_13,
			iconColor = var_41_13
		}

		if arg_41_1 and arg_41_1.jackpot5th or arg_41_4 and arg_41_4.jackpot5th then
			var_41_14.iconFoil = true
		end

		table.insert(var_41_9, var_41_14)
	end

	table.insert(var_41_9, {
		kind = "thinSep",
		padAfter = 1,
		padBefore = 1
	})

	if arg_41_1 and arg_41_1.prediction and arg_41_1.pred then
		local function var_41_15(arg_42_0)
			arg_42_0 = math.floor((arg_42_0 or 0) + 0.5)

			local var_42_0 = tostring(arg_42_0)
			local var_42_1

			repeat
				local var_42_2

				var_42_0, var_42_2 = var_42_0:gsub("^(%-?%d+)(%d%d%d)", "%1,%2")
			until var_42_2 == 0

			return var_42_0
		end

		local function var_41_16(arg_43_0)
			local var_43_0 = (arg_43_0 or 0) * 100
			local var_43_1 = math.max(0, math.min(100, math.floor(var_43_0 + 0.5)))

			return tostring(var_43_1) .. "%"
		end

		local function var_41_17(arg_44_0, arg_44_1)
			if not arg_44_1 or arg_44_1 <= 0 then
				return var_41_15(arg_44_0)
			end

			local var_44_0 = math.max(0, math.floor(arg_44_1 + 0.5))
			local var_44_1 = 10^var_44_0
			local var_44_2 = math.floor((arg_44_0 or 0) * var_44_1 + 0.5) / var_44_1

			return string.format("%." .. tostring(var_44_0) .. "f", var_44_2)
		end

		local function var_41_18(arg_45_0, arg_45_1, arg_45_2, arg_45_3)
			arg_45_3 = arg_45_3 or {}

			local var_45_0 = (arg_45_2 or 0) - (arg_45_1 or 0)
			local var_45_1 = var_45_0 > 0 and "▲" or var_45_0 < 0 and "▼" or "—"
			local var_45_2 = var_45_0 > 0 and {
				0.6,
				1,
				0.6,
				1
			} or var_45_0 < 0 and {
				1,
				0.55,
				0.55,
				1
			} or {
				0.7,
				0.7,
				0.7,
				1
			}
			local var_45_3 = arg_45_3.isPercent and var_41_16(arg_45_1) or var_41_17(arg_45_1, arg_45_3.precision)
			local var_45_4 = arg_45_3.isPercent and var_41_16(arg_45_2) or var_41_17(arg_45_2, arg_45_3.precision)
			local var_45_5

			if arg_45_3.isPercent then
				local var_45_6 = math.max(0, math.min(100, math.floor((arg_45_1 or 0) * 100 + 0.5)))
				local var_45_7 = math.max(0, math.min(100, math.floor((arg_45_2 or 0) * 100 + 0.5))) - var_45_6

				var_45_5 = string.format("(%s%d%%) %s", var_45_7 > 0 and "+" or var_45_7 < 0 and "-" or "", math.abs(var_45_7), var_45_1)
			else
				local var_45_8 = arg_45_3.precision and arg_45_3.precision > 0 and var_41_17(math.abs(var_45_0), arg_45_3.precision) or var_41_15(math.abs(var_45_0))

				var_45_5 = string.format("(%s%s) %s", var_45_0 > 0 and "+" or var_45_0 < 0 and "-" or "", var_45_8, var_45_1)
			end

			return {
				labelIcon = var_0_54(arg_45_0),
				value = string.format("%s → %s  %s", var_45_3, var_45_4, var_45_5),
				scale = var_41_2,
				valueColor = var_45_2,
				parts = {
					cur = var_45_3,
					nxt = var_45_4,
					delta = var_45_5,
					nxtColor = var_45_2,
					deltaColor = var_45_2,
					curColor = arg_45_3.curColor
				}
			}
		end

		local var_41_19 = arg_41_1.pred or {}

		local function var_41_20(arg_46_0, arg_46_1)
			return (var_0_2 and var_0_2.maxRankByGrade or {
				prism = 3,
				advanced = 3,
				rare = 3,
				legendary = 3,
				normal = 3
			})[arg_46_1 or "normal"] or 1
		end

		local function var_41_21(arg_47_0, arg_47_1, arg_47_2)
			return (tonumber(arg_47_1 or 1) or 1) >= var_41_20(arg_47_0 or "W", arg_47_2)
		end

		local var_41_22 = arg_41_1.hpMax or arg_41_1.hp or 0
		local var_41_23 = var_0_50(arg_41_7 or arg_41_0)
		local var_41_24 = (arg_41_1.atk or 0) * var_41_23
		local var_41_25 = arg_41_1.aspd or 0
		local var_41_26 = arg_41_1.distance or 0
		local var_41_27 = var_0_1 and var_0_1.power and (function()
			local var_48_0 = var_0_1.power(var_41_22, var_41_24, var_41_25)

			if type(var_48_0) == "table" then
				return var_48_0[1] or 0
			else
				return var_48_0
			end
		end)() or 0
		local var_41_28 = var_41_19.hp and var_41_19.hp.nxt or var_41_22
		local var_41_29 = var_41_19.atk and var_41_19.atk.nxt or var_41_24
		local var_41_30 = var_41_19.aspd and var_41_19.aspd.nxt or var_41_25
		local var_41_31 = 1
		local var_41_32 = var_0_2 and var_0_2.ui and var_0_2.ui.aspd or nil
		local var_41_33 = var_41_32 and var_41_32.displayScale or 1

		if var_41_33 <= 0 then
			var_41_33 = 1
		end

		local var_41_34 = math.floor(var_41_25 * var_41_33 + 0.5)
		local var_41_35 = arg_41_1 and arg_41_1.sym and var_0_48(arg_41_1.sym) or nil
		local var_41_36 = var_0_23[arg_41_1.grade or "normal"] or var_0_23.normal
		local var_41_37 = var_41_35 and math.floor((var_41_35.hpMax or var_41_35.hp or 0) * var_41_36.hp + 0.5) or 0
		local var_41_38 = var_41_35 and math.floor((var_41_35.atk or 0) * var_41_36.atk + 0.5) or 0
		local var_41_39 = var_41_35 and math.floor((var_41_35.aspd or 0) * var_41_36.aspd * var_41_33 + 0.5) or 0
		local var_41_40 = var_41_35 and math.floor(var_41_35.distance or 0) or 0
		local var_41_41 = math.floor((var_41_22 or 0) + 0.5)
		local var_41_42 = math.floor((var_41_24 or 0) + 0.5)
		local var_41_43 = math.floor((var_41_26 or 0) + 0.5)
		local var_41_44 = var_41_37 < var_41_41
		local var_41_45 = var_41_38 < var_41_42
		local var_41_46

		var_41_46 = var_41_39 < var_41_34

		local var_41_47 = var_41_40 < var_41_43
		local var_41_48 = var_41_39 < var_41_34
		local var_41_49 = false
		local var_41_50 = arg_41_1.rank or 1
		local var_41_51 = var_41_50 + 1
		local var_41_52 = var_0_58(arg_41_5)
		local var_41_53 = (var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[arg_41_1.grade or "normal"] or {})[var_41_50] or 999
		local var_41_54 = arg_41_1.absorbLV or 0
		local var_41_55 = not var_41_21(arg_41_1.sym, var_41_50, arg_41_1.grade) and var_41_53 <= var_41_54 + var_41_52
		local var_41_56 = var_41_28
		local var_41_57 = var_41_29
		local var_41_58 = var_41_30
		local var_41_59 = var_41_28 - var_41_22
		local var_41_60 = var_41_29 - var_41_24
		local var_41_61 = var_41_30 - var_41_25
		local var_41_62 = 0
		local var_41_63 = 0
		local var_41_64 = 0

		local function var_41_65(arg_49_0)
			return 0.4, 0.5, 0.1
		end

		local function var_41_66(arg_50_0, arg_50_1, arg_50_2)
			local var_50_0 = var_0_1 and var_0_1.power and var_0_1.power(arg_50_0 or 0, arg_50_1 or 0, arg_50_2 or 0) or 0

			return type(var_50_0) == "table" and (var_50_0[1] or 0) or var_50_0 or 0
		end

		local var_41_67, var_41_68, var_41_69 = var_41_65(arg_41_1 and arg_41_1.grade)
		local var_41_70 = arg_41_1.rank or 1
		local var_41_71 = arg_41_1.absorbLV or 0
		local var_41_72 = (var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[arg_41_1.grade or "normal"] or {})[var_41_70] or 999
		local var_41_73 = not var_41_21(arg_41_1.sym, var_41_70, arg_41_1.grade) and var_41_72 <= var_41_71 + var_41_52
		local var_41_74 = false

		if var_41_73 and var_41_70 == 2 and not (arg_41_4 and (arg_41_4.subclassName or arg_41_4.subclass) and true or false) then
			local var_41_75 = true
		end

		if var_41_21(arg_41_1.sym, var_41_70, arg_41_1.grade) then
			local var_41_76 = var_0_2 and var_0_2.evolution or {}
			local var_41_77 = var_41_76 and var_41_76.baseDeltaPWR or {}
			local var_41_78 = var_41_76 and var_41_76.maxTierBonus or 1.25
			local var_41_79 = arg_41_6 or var_41_19 and var_41_19.atk and "S" or var_41_19 and var_41_19.hp and "W" or var_41_19 and var_41_19.aspd and "A" or nil
			local var_41_80 = var_41_22
			local var_41_81 = var_41_24
			local var_41_82 = var_41_25
			local var_41_83 = var_41_19 and var_41_19.vTier or 1
			local var_41_84 = 0
			local var_41_85 = 0
			local var_41_86 = 0

			if arg_41_5 and arg_41_5.stats then
				var_41_84 = arg_41_5.stats.hp or 0
				var_41_85 = arg_41_5.stats.atk or 0
				var_41_86 = arg_41_5.stats.aspd or 0
			else
				local var_41_87 = var_0_48(var_41_79 or "W")

				var_41_84 = var_41_87.hp or 0
				var_41_85 = var_41_87.atk or 0
				var_41_86 = var_41_87.aspd or 0
			end

			local var_41_88 = var_41_66(var_41_84, var_41_85, var_41_86)
			local var_41_89 = math.max(1, var_41_66(var_41_80, var_41_81, var_41_82))
			local var_41_90 = var_41_83 >= 5 and 2.2 or var_41_83 >= 4 and 1.8 or var_41_83 >= 3 and 1.5 or var_41_83 >= 2 and 1.2 or 1
			local var_41_91 = var_41_88 / math.max(1, var_41_89)
			local var_41_92 = math.max(0.2, var_41_91)
			local var_41_93 = math.pow(var_41_92, 0.6)
			local var_41_94 = ((var_41_77.base or 58) + var_41_89 * (var_41_77.scaleByAbsorber or 0)) * var_41_90 * var_41_93 * (var_41_78 or 1)

			if var_41_79 == "W" then
				local var_41_95 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_41_80, var_41_81, var_41_82, var_41_94) or 0

				var_41_28 = math.max(1, var_41_80 + math.floor(var_41_95 + 0.5))
				var_41_59 = var_41_28 - var_41_22

				if not var_41_19 or not var_41_19.hp then
					var_41_19.hp = {
						cur = var_41_22,
						nxt = var_41_28
					}
				end
			elseif var_41_79 == "S" then
				local var_41_96 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_41_80, var_41_81, var_41_82, var_41_94) or 0

				var_41_29 = math.max(0, var_41_81 + math.floor(var_41_96 + 0.5))
				var_41_60 = var_41_29 - var_41_24

				if not var_41_19 or not var_41_19.atk then
					var_41_19.atk = {
						cur = var_41_24,
						nxt = var_41_29
					}
				end
			elseif var_41_79 == "A" then
				local var_41_97 = (var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_41_80, var_41_81, var_41_82, var_41_94) or 0) * ((var_41_76 and var_41_76.aspdGrowth or {}).internalScale or 1)

				var_41_30 = math.max(0.05, var_41_82 + var_41_97)

				local var_41_98 = var_41_30 - var_41_25

				if not var_41_19 or not var_41_19.aspd then
					var_41_19.aspd = {
						cur = var_41_25,
						nxt = var_41_30
					}
				end
			elseif var_41_79 == "M" then
				local var_41_99 = var_41_94 * 0.5
				local var_41_100 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_41_80, var_41_81, var_41_82, var_41_99) or 0
				local var_41_101 = (var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_41_80, var_41_81, var_41_82, var_41_99) or 0) * ((var_41_76 and var_41_76.aspdGrowth or {}).internalScale or 1)

				var_41_29 = math.max(0, var_41_81 + math.floor(var_41_100 + 0.5))
				var_41_30 = math.max(0.05, var_41_82 + var_41_101)
				var_41_60 = var_41_29 - var_41_24

				local var_41_102 = var_41_30 - var_41_25

				if not var_41_19 or not var_41_19.atk then
					var_41_19.atk = {
						cur = var_41_24,
						nxt = var_41_29
					}
				end

				if not var_41_19 or not var_41_19.aspd then
					var_41_19.aspd = {
						cur = var_41_25,
						nxt = var_41_30
					}
				end
			elseif var_41_79 == "H" then
				local var_41_103 = var_41_94 * 0.5
				local var_41_104 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_41_80, var_41_81, var_41_82, var_41_103) or 0
				local var_41_105 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_41_80, var_41_81, var_41_82, var_41_103) or 0

				var_41_28 = math.max(1, var_41_80 + math.floor(var_41_104 + 0.5))
				var_41_29 = math.max(0, var_41_81 + math.floor(var_41_105 + 0.5))
				var_41_59 = var_41_28 - var_41_22
				var_41_60 = var_41_29 - var_41_24

				if not var_41_19 or not var_41_19.hp then
					var_41_19.hp = {
						cur = var_41_22,
						nxt = var_41_28
					}
				end

				if not var_41_19 or not var_41_19.atk then
					var_41_19.atk = {
						cur = var_41_24,
						nxt = var_41_29
					}
				end
			elseif var_41_79 == "D" then
				local var_41_106 = var_41_94 / 3
				local var_41_107 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_41_80, var_41_81, var_41_82, var_41_106) or 0
				local var_41_108 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_41_80, var_41_81, var_41_82, var_41_106) or 0
				local var_41_109 = (var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_41_80, var_41_81, var_41_82, var_41_106) or 0) * ((var_41_76 and var_41_76.aspdGrowth or {}).internalScale or 1)

				var_41_28 = math.max(1, var_41_80 + math.floor(var_41_107 + 0.5))
				var_41_29 = math.max(0, var_41_81 + math.floor(var_41_108 + 0.5))
				var_41_30 = math.max(0.05, var_41_82 + var_41_109)
				var_41_59 = var_41_28 - var_41_22
				var_41_60 = var_41_29 - var_41_24

				local var_41_110 = var_41_30 - var_41_25

				if not var_41_19 or not var_41_19.hp then
					var_41_19.hp = {
						cur = var_41_22,
						nxt = var_41_28
					}
				end

				if not var_41_19 or not var_41_19.atk then
					var_41_19.atk = {
						cur = var_41_24,
						nxt = var_41_29
					}
				end

				if not var_41_19 or not var_41_19.aspd then
					var_41_19.aspd = {
						cur = var_41_25,
						nxt = var_41_30
					}
				end
			end

			var_41_56, var_41_57, var_41_58 = var_41_28, var_41_29, var_41_30

			if var_41_19 and var_41_19.gauge then
				var_41_19.gauge.nxt = var_41_19.gauge.cur
			end

			var_41_73 = false
		end

		if var_41_73 then
			local var_41_111 = var_0_2 and var_0_2.evolution or {}
			local var_41_112 = var_41_111 and var_41_111.rankMultipliers and var_41_111.rankMultipliers[arg_41_1.grade or "normal"] or {}
			local var_41_113 = tonumber(var_41_112[var_41_70] or 1) or 1
			local var_41_114 = tonumber(var_41_112[var_41_70 + 1] or var_41_113) or var_41_113
			local var_41_115 = var_41_111.getAbsorbLvMultipliers(nxtLv)
			local var_41_116 = var_41_66(var_41_28 / var_41_115.hp, var_41_29 / var_41_115.atk, var_41_30 / var_41_115.aspd) / var_41_113 * var_41_114
			local var_41_117 = var_41_116 - var_41_66(var_41_28, var_41_29, var_41_30)

			if var_41_117 > 0.01 then
				local var_41_118 = var_41_117 * var_41_67
				local var_41_119 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_41_28, var_41_29, var_41_30, var_41_118) or 0
				local var_41_120 = math.max(0, math.floor(var_41_119 + 0.5))

				var_41_56 = math.max(1, var_41_28 + var_41_120)

				local var_41_121 = var_41_116 - var_41_66(var_41_56, var_41_29, var_41_30)

				if var_41_121 > 0.01 then
					local var_41_122 = var_41_68 + var_41_69

					if var_41_122 <= 1e-09 then
						var_41_122 = 1
					end

					local var_41_123 = var_41_121 * (var_41_68 / var_41_122)
					local var_41_124 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_41_56, var_41_29, var_41_30, var_41_123) or 0
					local var_41_125 = math.max(0, math.floor(var_41_124 + 0.5))

					var_41_57 = math.max(0, var_41_29 + var_41_125)
					var_41_121 = var_41_116 - var_41_66(var_41_56, var_41_57, var_41_30)
				else
					var_41_57 = var_41_29
				end

				if var_41_121 > 0.01 then
					local var_41_126 = var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_41_56, var_41_57, var_41_30, var_41_121) or 0
					local var_41_127 = var_0_2 and var_0_2.evolution or {}
					local var_41_128 = var_41_126 * ((var_41_127 and var_41_127.aspdGrowth or {}).internalScale or 1)

					var_41_58 = math.max(0.05, var_41_30 + math.max(0, var_41_128))
				else
					var_41_58 = var_41_30
				end
			else
				var_41_56, var_41_57, var_41_58 = var_41_28, var_41_29, var_41_30
			end

			var_41_62 = var_41_56 - var_41_28
			var_41_63 = var_41_57 - var_41_29

			local var_41_129 = var_41_58 - var_41_30
			local var_41_130 = 0
			local var_41_131 = false

			if var_41_70 == 2 then
				local var_41_132 = arg_41_4 and (arg_41_4.subclassName or arg_41_4.subclass) or nil
				local var_41_133 = arg_41_4 and arg_41_4.subclassKey or nil
				local var_41_134 = 1
				local var_41_135 = 1
				local var_41_136 = 1
				local var_41_137 = 1

				if var_41_132 then
					local var_41_138, var_41_139, var_41_140, var_41_141, var_41_142 = PromotionStats.getPromotionMultipliers({
						id = var_41_132,
						name = var_41_132,
						asset = var_41_133,
						sym = arg_41_4.sym,
						rank = var_41_70 + 1
					})

					if var_41_138 then
						var_41_134 = var_41_138
					end

					if var_41_139 then
						var_41_135 = var_41_139
					end

					if var_41_140 then
						var_41_136 = var_41_140
					end

					if var_41_141 then
						var_41_137 = var_41_141
					end
				end

				if var_41_132 and (var_41_134 ~= 1 or var_41_135 ~= 1 or var_41_136 ~= 1 or var_41_137 ~= 1) then
					local var_41_143 = math.max(1, math.floor(var_41_28 * var_41_134 + 0.5))
					local var_41_144 = math.max(0, math.floor(var_41_29 * var_41_135 + 0.5))
					local var_41_145 = math.max(0.05, var_41_30 * var_41_136)

					if var_41_130 > 0 then
						local var_41_146 = var_41_130 * (var_41_137 or 1)
						local var_41_147 = var_41_146 * var_41_67
						local var_41_148 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_41_28, var_41_29, var_41_30, var_41_147) or 0

						var_41_56 = var_41_143 + math.max(0, math.floor(var_41_148 + 0.5))

						local var_41_149 = var_41_146 - (var_41_66(var_41_56, var_41_29, var_41_30) - baseP)

						if var_41_149 > 0.01 then
							local var_41_150 = var_41_68 + var_41_69

							if var_41_150 <= 1e-09 then
								var_41_150 = 1
							end

							local var_41_151 = var_41_149 * (var_41_68 / var_41_150)
							local var_41_152 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_41_56, var_41_29, var_41_30, var_41_151) or 0

							var_41_57 = var_41_144 + math.max(0, math.floor(var_41_152 + 0.5))
							var_41_149 = var_41_146 - (var_41_66(var_41_56, var_41_57, var_41_30) - baseP)
						else
							var_41_57 = var_41_144
						end

						if var_41_149 > 0.01 then
							local var_41_153 = var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_41_56, var_41_57, var_41_30, var_41_149) or 0
							local var_41_154 = var_0_2 and var_0_2.evolution or {}

							var_41_58 = var_41_145 + var_41_153 * ((var_41_154 and var_41_154.aspdGrowth or {}).internalScale or 1)
						else
							var_41_58 = var_41_145
						end

						var_41_62 = var_41_56 - var_41_28
						var_41_63 = var_41_57 - var_41_29

						local var_41_155 = var_41_58 - var_41_30
					else
						var_41_56, var_41_57, var_41_58 = var_41_143, var_41_144, var_41_145
					end

					local var_41_156 = true
				else
					local var_41_157 = true

					var_41_56, var_41_57, var_41_58 = var_41_28, var_41_29, var_41_30
				end
			end
		else
			var_41_55 = false
		end

		local var_41_158 = math.floor(var_41_30 * var_41_33 + 0.5)
		local var_41_159 = math.floor(var_41_58 * var_41_33 + 0.5)
		local var_41_160 = var_41_57 * var_41_23
		local var_41_161 = var_0_1 and var_0_1.power and (function()
			local var_51_0 = var_0_1.power(var_41_56, var_41_160, var_41_58)

			if type(var_51_0) == "table" then
				return var_51_0[1] or 0
			else
				return var_51_0
			end
		end)() or var_41_27

		local function var_41_162(arg_52_0, arg_52_1, arg_52_2, arg_52_3, arg_52_4, arg_52_5)
			arg_52_5 = arg_52_5 or {}

			local var_52_0 = arg_52_1 < arg_52_2 and "▲" or arg_52_2 < arg_52_1 and "▼" or "—"
			local var_52_1 = arg_52_1 < arg_52_2 and {
				0.6,
				1,
				0.6,
				1
			} or arg_52_2 < arg_52_1 and {
				1,
				0.55,
				0.55,
				1
			} or {
				0.7,
				0.7,
				0.7,
				1
			}

			local function var_52_2(arg_53_0)
				if arg_52_5.precision and arg_52_5.precision > 0 then
					return var_41_17(arg_53_0, arg_52_5.precision)
				else
					return var_41_15(arg_53_0)
				end
			end

			local var_52_3 = var_52_2(arg_52_1)
			local var_52_4 = var_52_2(arg_52_2)
			local var_52_5 = var_52_2(math.abs(arg_52_3))
			local var_52_6 = var_52_2(math.abs(arg_52_4))
			local var_52_7 = ""

			if math.abs(arg_52_4) > 0 then
				local var_52_8 = {}

				if math.abs(arg_52_3) > 0 then
					table.insert(var_52_8, string.format(var_0_4.getText("absorb_grade_delta_fmt", _G.currentGameLang or "ko"), var_52_5))
				end

				if math.abs(arg_52_4) > 0 then
					table.insert(var_52_8, string.format(var_0_4.getText("absorb_promotion_delta_fmt", _G.currentGameLang or "ko"), var_52_6))
				end

				var_52_7 = string.format("(%s)", table.concat(var_52_8, ", "))
			else
				local var_52_9 = arg_52_2 - arg_52_1
				local var_52_10 = var_52_2(math.abs(var_52_9))

				var_52_7 = string.format("(%s%s) %s", var_52_9 > 0 and "+" or var_52_9 < 0 and "-" or "", var_52_10, var_52_0)
			end

			return {
				labelIcon = var_0_54(arg_52_0),
				value = string.format("%s → %s  %s", var_52_3, var_52_4, var_52_7),
				scale = var_41_2,
				valueColor = var_52_1,
				parts = {
					cur = var_52_3,
					nxt = var_52_4,
					delta = var_52_7,
					nxtColor = var_52_1,
					deltaColor = var_52_1,
					curColor = arg_52_5.curColor
				}
			}
		end

		if (function()
			local var_54_0 = arg_41_1.rank or 1

			if var_54_0 ~= 2 then
				return false
			end

			local var_54_1 = ((var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[arg_41_1.grade or "normal"] or {})[var_54_0] or 999) <= (arg_41_1.absorbLV or 0) + 1
			local var_54_2 = arg_41_4 and (arg_41_4.subclassName or arg_41_4.subclass) and true or false

			return var_54_1 and not var_54_2
		end)() then
			table.insert(var_41_9, {
				isTitle = true,
				value = var_0_4.getText("class_promotion", _G.currentGameLang or "ko"),
				scale = var_41_2,
				titleColor = {
					0.6,
					0.75,
					1,
					1
				}
			})
		else
			local var_41_163
			local var_41_164
			local var_41_165
			local var_41_166

			if var_41_19.hp or var_41_55 or math.abs(var_41_59) > 0 or math.abs(var_41_62) > 0 then
				var_41_163 = var_41_162("HP", var_41_22, var_41_56, var_41_59, var_41_62, {
					curColor = var_41_44 and var_41_11 or nil
				})
			else
				local var_41_167 = (var_0_51(arg_41_7 or arg_41_0) or var_41_44) and var_41_11 or nil

				var_41_163 = {
					labelIcon = "hp",
					value = tostring(var_41_15(var_41_22)),
					scale = var_41_2,
					valueColor = var_41_167
				}
			end

			if var_41_19.atk or var_41_55 or math.abs(var_41_60) > 0 or math.abs(var_41_63) > 0 then
				var_41_164 = var_41_162("ATK", var_41_24, var_41_160, var_41_60, var_41_63, {
					curColor = var_41_45 and var_41_11 or nil
				})
			else
				local var_41_168 = (var_41_23 and var_41_23 > 1 or var_41_45) and var_41_11 or nil

				var_41_164 = {
					labelIcon = "atk",
					value = tostring(var_41_15(var_41_24)),
					scale = var_41_2,
					valueColor = var_41_168
				}
			end

			if var_41_19.aspd or var_41_55 or var_41_159 ~= var_41_34 then
				local var_41_169 = var_41_158 - var_41_34
				local var_41_170 = var_41_159 - var_41_158

				var_41_165 = var_41_162("ASPD", var_41_34, var_41_159, var_41_169, var_41_170, {
					curColor = var_41_48 and var_41_11 or nil
				})
			else
				local var_41_171 = var_41_48 and var_41_11 or nil

				var_41_165 = {
					labelIcon = "aspd",
					value = tostring(var_41_15(var_41_34)),
					scale = var_41_2,
					valueColor = var_41_171
				}
			end

			local var_41_172 = var_41_47 and var_41_11 or nil
			local var_41_173 = {
				labelIcon = "dist",
				value = tostring(var_41_15(var_41_26)),
				scale = var_41_2,
				valueColor = var_41_172
			}

			table.insert(var_41_9, var_41_163)
			table.insert(var_41_9, var_41_164)
			table.insert(var_41_9, var_41_165)
			table.insert(var_41_9, var_41_173)

			if var_41_10 then
				if var_41_161 ~= var_41_27 then
					table.insert(var_41_9, var_41_18("PWR", var_41_27, var_41_161))
				else
					table.insert(var_41_9, {
						labelIcon = "pwr",
						value = tostring(var_41_15(var_41_27)),
						scale = var_41_2
					})
				end
			end
		end
	else
		local var_41_174

		if arg_41_1 and arg_41_1.sym then
			var_41_174 = var_0_48(arg_41_1.sym)
		end

		local var_41_175 = var_0_23[arg_41_1.grade or "normal"] or var_0_23.normal
		local var_41_176 = math.floor((arg_41_1.hp or 0) + 0.5)
		local var_41_177 = math.floor((arg_41_1.hpMax or arg_41_1.hp or 0) + 0.5)
		local var_41_178 = var_0_50(arg_41_7 or arg_41_0, arg_41_1)
		local var_41_179 = (arg_41_1.atk or 0) * var_41_178
		local var_41_180 = math.floor(var_41_179 + 0.5)
		local var_41_181 = var_41_174 and math.floor((var_41_174.hp or var_41_174.hpMax or 0) * var_41_175.hp + 0.5) or 0
		local var_41_182 = var_41_174 and math.floor((var_41_174.atk or 0) * var_41_175.atk + 0.5) or 0
		local var_41_183 = var_0_51(arg_41_7 or arg_41_0) and var_41_11 or var_41_181 < var_41_176 and var_41_11 or var_0_31.value
		local var_41_184 = var_41_178 and var_41_178 > 1 and var_41_11 or var_41_182 < var_41_180 and var_41_11 or var_0_31.value

		if arg_41_1.isShadowMinion then
			if arg_41_1.shadowBaseStats then
				local var_41_185 = math.floor((arg_41_1.shadowBaseStats.hp or 0) + 0.5)
				local var_41_186 = math.floor((arg_41_1.shadowBaseStats.atk or 0) + 0.5)

				var_41_183 = var_41_185 < var_41_176 and var_41_11 or var_0_31.value
				var_41_184 = var_41_186 < var_41_180 and var_41_11 or var_0_31.value
			else
				var_41_183 = var_0_31.value
				var_41_184 = var_0_31.value
			end
		end

		local var_41_187 = tostring(var_41_176)

		if arg_41_7 and arg_41_7.mode == "battle" and var_41_177 > 0 then
			var_41_187 = string.format("%d/%d", var_41_176, var_41_177)
		end

		local var_41_188 = {
			labelIcon = "hp",
			value = var_41_187,
			scale = var_41_2,
			valueColor = var_41_183
		}
		local var_41_189 = {
			labelIcon = "atk",
			value = tostring(var_41_180),
			scale = var_41_2,
			valueColor = var_41_184
		}
		local var_41_190
		local var_41_191 = var_0_2 and var_0_2.ui and var_0_2.ui.aspd or nil
		local var_41_192 = var_41_191 and var_41_191.displayScale or 10

		if var_41_192 <= 0 then
			var_41_192 = 10
		end

		local var_41_193 = arg_41_1.aspd or 0
		local var_41_194 = var_41_174 and (var_41_174.aspd or 0) or 0
		local var_41_195 = math.floor(var_41_193 * var_41_192 + 0.5)
		local var_41_196 = math.floor(var_41_194 * var_41_175.aspd * var_41_192 + 0.5)
		local var_41_197 = {
			1,
			0.35,
			0.25,
			1
		}
		local var_41_198 = var_41_196 < var_41_195 and var_41_11 or var_0_31.value

		if arg_41_1.aspdBuffActive then
			var_41_198 = var_41_11
		end

		if arg_41_1.isShadowMinion then
			if arg_41_1.shadowBaseStats then
				local var_41_199 = arg_41_1.shadowBaseStats.aspd or 0

				var_41_198 = var_41_195 > math.floor(var_41_199 * var_41_192 + 0.5) and var_41_11 or var_0_31.value
			else
				var_41_198 = var_0_31.value
			end
		end

		if arg_41_1.aspdDebuffActive then
			var_41_198 = var_41_197
		end

		local var_41_200 = {
			labelIcon = "aspd",
			value = tostring(var_41_195),
			scale = var_41_2,
			valueColor = var_41_198
		}
		local var_41_201 = math.floor(arg_41_1.distance or 0)
		local var_41_202 = var_41_201 > (var_41_174 and math.floor(var_41_174.distance or 0) or 0) and var_41_11 or var_0_31.value
		local var_41_203 = {
			labelIcon = "dist",
			value = tostring(var_41_201),
			scale = var_41_2,
			valueColor = var_41_202
		}

		table.insert(var_41_9, var_41_188)
		table.insert(var_41_9, var_41_189)
		table.insert(var_41_9, var_41_200)
		table.insert(var_41_9, var_41_203)

		if var_41_10 then
			local var_41_204 = var_0_1 and var_0_1.power and (function()
				local var_55_0 = var_0_1.power(arg_41_1.hpMax or arg_41_1.hp or 0, var_41_179, arg_41_1.aspd or 0)

				if type(var_55_0) == "table" then
					return var_55_0[1] or 0
				else
					return var_55_0
				end
			end)() or arg_41_1.power or 0
			local var_41_205 = tostring(math.floor((var_41_204 or 0) + 0.5))

			table.insert(var_41_9, {
				labelIcon = "pwr",
				value = var_41_205,
				scale = var_41_2
			})
		end

		if arg_41_1.skillDesc and arg_41_1.skillDesc ~= "" then
			table.insert(var_41_9, {
				label = var_0_4.getText("skill_label", _G.currentGameLang or "ko"),
				value = tostring(arg_41_1.skillDesc),
				scale = var_41_2
			})
		end
	end

	local var_41_206 = 0
	local var_41_207 = math.max(0, math.floor(var_0_33 * 0.75 + 0.5) - 1)
	local var_41_208 = var_41_207

	for iter_41_0, iter_41_1 in ipairs(var_41_9) do
		local var_41_209 = 0
		local var_41_210 = iter_41_1.scale or var_41_2

		if iter_41_1.kind == "thinSep" then
			var_41_209 = 0
		else
			if iter_41_1.icon then
				var_41_209 = var_41_209 + var_41_6
			end

			if iter_41_1.label or iter_41_1.labelIcon then
				var_41_209 = var_41_209 + var_0_56(arg_41_3, iter_41_1, var_41_0, var_41_210)
			end

			if iter_41_1.parts then
				var_41_209 = var_41_209 + var_0_18(var_41_0, iter_41_1.parts.cur or "", var_41_210)
				var_41_209 = var_41_209 + var_0_18(var_41_0, " → ", var_41_210)
				var_41_209 = var_41_209 + var_0_18(var_41_0, iter_41_1.parts.nxt or "", var_41_210)
				var_41_209 = var_41_209 + var_0_18(var_41_0, "  ", var_41_210)
				var_41_209 = var_41_209 + var_0_18(var_41_0, iter_41_1.parts.delta or "", var_41_210)
			else
				var_41_209 = var_41_209 + var_0_18(var_41_0, iter_41_1.value or "", var_41_210)
			end
		end

		if var_41_206 < var_41_209 then
			var_41_206 = var_41_209
		end

		local var_41_211 = iter_41_1.isTitle and var_41_4 or var_41_3

		if iter_41_1.kind == "thinSep" then
			local var_41_212 = iter_41_1.padBefore or 1
			local var_41_213 = iter_41_1.padAfter or 2
			local var_41_214 = iter_41_1.sepTailSpacing ~= nil and iter_41_1.sepTailSpacing or 1

			var_41_208 = var_41_208 + var_41_212 + 1 + var_41_213 + var_41_214
		else
			var_41_208 = var_41_208 + var_0_19(var_41_0, var_41_210) + var_41_211
		end
	end

	if not arg_41_1 or not arg_41_1.isShadowMinion then
		local var_41_215 = 1
		local var_41_216 = 3
		local var_41_217 = 7

		var_41_208 = var_41_208 + var_41_216 + var_41_217 * var_41_215
	end

	local var_41_218 = var_41_208 + var_41_207
	local var_41_219 = 1
	local var_41_220 = var_41_218 + var_41_219
	local var_41_221 = 40

	if var_41_206 < var_41_221 then
		var_41_206 = var_41_221
	end

	local var_41_222 = var_41_206 + var_41_207 * 2

	return {
		lines = var_41_9,
		width = var_0_16(var_41_222),
		height = var_0_16(var_41_220),
		starsScale = starsScale,
		starsGapY = starsGapY,
		starPx = starPx,
		bottomExtra = var_41_219,
		lineSpacing = var_41_3,
		scaledPad = var_41_207,
		titleScale = var_41_1,
		statScale = var_41_2,
		iconAdvance = var_41_6,
		titleLeftNudge = var_41_5,
		titleSpacing = var_41_4
	}
end

local function var_0_60(arg_56_0)
	local var_56_0 = tonumber(arg_56_0 or 1) or 1

	if var_56_0 >= 3 then
		return 3
	elseif var_56_0 >= 2 then
		return 2
	else
		return 1
	end
end

function _G.classNameBy(arg_57_0, arg_57_1, arg_57_2)
	local var_57_0 = arg_57_0

	if var_57_0 == "archer" or var_57_0 == "MiniArcherMan" then
		var_57_0 = "A"
	elseif var_57_0 == "spear" or var_57_0 == "MiniSpearMan" then
		var_57_0 = "S"
	elseif var_57_0 == "warrior" or var_57_0 == "MiniSwordMan" then
		var_57_0 = "W"
	elseif var_57_0 == "mage" or var_57_0 == "MiniMage" then
		var_57_0 = "M"
	elseif var_57_0 == "cavalry" or var_57_0 == "MiniHorseMan" then
		var_57_0 = "H"
	elseif var_57_0 == "duelist" or var_57_0 == "MiniPrinceMan" then
		var_57_0 = "D"
	end

	if type(var_57_0) == "string" and var_57_0:find("ENEMY_") then
		local var_57_1 = var_57_0:sub(7)
		local var_57_2 = "그림자 " .. var_57_1

		return var_0_4.translateUnitName(var_57_2, _G.currentGameLang or "ko")
	end

	if var_57_0 ~= "A" and var_57_0 ~= "S" and var_57_0 ~= "M" and var_57_0 ~= "H" and var_57_0 ~= "D" then
		var_57_0 = "W"
	end

	local var_57_3 = var_0_60(arg_57_1)
	local var_57_4 = var_0_5(arg_57_2)
	local var_57_5
	local var_57_6

	if var_57_0 == "A" then
		if var_57_3 == 1 then
			var_57_6 = "궁수"
		elseif var_57_3 == 2 then
			var_57_6 = "석궁수"
		else
			var_57_6 = "명궁"
		end
	elseif var_57_0 == "S" then
		if var_57_3 == 1 then
			var_57_6 = "창병"
		elseif var_57_3 == 2 then
			var_57_6 = "창위병"
		else
			var_57_6 = "근위병"
		end
	elseif var_57_0 == "D" then
		local var_57_7 = tonumber(arg_57_1 or 1) or 1

		if var_57_7 >= 3 then
			var_57_6 = "현자 엘프"
		elseif var_57_7 >= 2 then
			var_57_6 = "황제"
		elseif var_57_3 == 1 and var_57_4 == "advanced" then
			var_57_6 = "드루이드"
		else
			var_57_6 = "결투사"
		end
	elseif var_57_0 == "H" then
		local var_57_8 = tonumber(arg_57_1 or 1) or 1

		if var_57_8 >= 3 then
			var_57_6 = "중기병"
		elseif var_57_8 >= 2 then
			var_57_6 = "돌격병"
		elseif var_57_3 == 1 and var_57_4 == "advanced" then
			var_57_6 = "철기병"
		else
			var_57_6 = "기병"
		end
	elseif var_57_0 == "M" then
		local var_57_9 = tonumber(arg_57_1 or 1) or 1

		if var_57_9 >= 3 then
			var_57_6 = "대마법사"
		elseif var_57_9 >= 2 then
			var_57_6 = "주술사"
		elseif var_57_3 == 1 and var_57_4 == "advanced" then
			var_57_6 = "마도사"
		else
			var_57_6 = "마법사"
		end
	else
		var_57_6 = var_57_3 == 1 and var_57_4 == "legendary" and "해골 투사" or var_57_3 == 1 and var_57_4 == "rare" and "투사" or var_57_3 == 1 and var_57_4 == "advanced" and "철퇴병" or var_57_3 == 1 and "전사" or var_57_3 == 2 and "병사" or "기사"
	end

	return var_0_4.translateUnitName(var_57_6, _G.currentGameLang or "ko")
end

function var_0_0.new(arg_58_0)
	local var_58_0 = {
		mouseY = 0,
		_outlineDrawnThisFrame = false,
		crossT = 0,
		time = 0,
		fade = 0,
		locked = false,
		hideT = 0,
		hoverT = 0,
		state = "IDLE",
		mouseX = 0,
		ui = arg_58_0,
		releaseResources = function(arg_59_0)
			if arg_59_0._titleMaskCanvas then
				pcall(arg_59_0._titleMaskCanvas.release, arg_59_0._titleMaskCanvas)
			end

			if arg_59_0._outlineShader then
				pcall(arg_59_0._outlineShader.release, arg_59_0._outlineShader)
			end

			if arg_59_0._innerOutlineShader then
				pcall(arg_59_0._innerOutlineShader.release, arg_59_0._innerOutlineShader)
			end

			arg_59_0._titleMaskCanvas = nil
			arg_59_0._titleMaskCache = nil
			arg_59_0._outlineShader = nil
			arg_59_0._innerOutlineShader = nil
			arg_59_0.cache = nil
			arg_59_0.crossPrevLayout = nil
			arg_59_0.crossPrevInfo = nil
		end,
		mousepressed = function(arg_60_0, arg_60_1, arg_60_2, arg_60_3)
			local var_60_0 = arg_60_0.ui or _G.ui

			if var_60_0 and var_60_0.pauseOverlayState and var_60_0.pauseOverlayState.active then
				return false
			end

			local var_60_1 = arg_60_0.battlefield

			if not var_60_1 then
				return false
			end

			if arg_60_3 == 2 then
				if var_60_1.imprintModal and var_60_1.imprintModal.active then
					return true
				end

				local var_60_2 = arg_60_0.candidate

				if var_60_1.absorbMode then
					if var_60_2 and var_60_2.ref then
						local var_60_3 = var_0_6(var_60_2.ref)

						if var_60_3 then
							var_0_3.showBattlefieldPreview(var_60_3)
						else
							var_0_3.hideBattlefieldPreview()
						end
					else
						var_0_3.hideBattlefieldPreview()
					end
				end

				if arg_60_0.locked and arg_60_0.target and var_60_2 and var_60_2.ref == arg_60_0.target.ref then
					return true
				end

				if var_60_2 and var_60_2.ref then
					arg_60_0.locked = true
					arg_60_0.target = var_60_2
					arg_60_0.lockedTarget = var_60_2
					arg_60_0.state = "VISIBLE"
					arg_60_0.fade = 1
					arg_60_0.pinSide = nil

					return true
				end

				if arg_60_0.locked then
					arg_60_0:toggleLock()

					arg_60_0.lockedTarget = nil

					if var_60_1.absorbMode then
						var_0_3.hideBattlefieldPreview()
					end

					return true
				end

				return false
			end

			if arg_60_3 ~= 1 then
				return false
			end

			if var_0_3 and var_0_3.isHoldActive and var_0_3.isHoldActive() and (not var_60_1.imprintModal or not var_60_1.imprintModal.active) and var_0_3.cancelHold then
				var_0_3.cancelHold()
			end

			if arg_60_0.locked and arg_60_0.target and (not var_60_1.imprintModal or not var_60_1.imprintModal.active) then
				local var_60_4 = arg_60_0.candidate
				local var_60_5 = var_60_4 and var_60_4.ref and arg_60_0.target.ref and var_60_4.ref == arg_60_0.target.ref
				local var_60_6 = false

				if not var_60_5 and var_0_3 then
					if var_0_3.hitTest and var_0_3.hitTest(arg_60_1, arg_60_2) then
						var_60_6 = true
					elseif var_0_3.absorbLvHitTest and var_0_3.absorbLvHitTest(arg_60_1, arg_60_2) then
						var_60_6 = true
					end
				end

				if not var_60_5 and not var_60_6 then
					arg_60_0:toggleLock()
				end
			end

			if var_60_1.imprintModal and var_60_1.imprintModal.active then
				if var_60_0 and var_60_0.pauseOverlayState and var_60_0.pauseOverlayState.active then
					return false
				end

				if var_0_3 and var_0_3.hudHitTest then
					local var_60_7 = var_0_3.hudHitTest(arg_60_1, arg_60_2)

					if var_60_7 and var_60_7.kind == "cancel" then
						local var_60_8 = rawget(_G, "Tutorial")

						if var_60_8 and var_60_8.requiresAbsorbConfirmOnly and var_60_8.requiresAbsorbConfirmOnly() then
							return true
						end

						if var_0_3.triggerCancel then
							var_0_3.triggerCancel()
						else
							var_60_1._imprintModalResolve = nil
							var_60_1.imprintModal = nil
						end

						return true
					end
				end

				if var_0_3 and var_0_3.modalHitTest then
					local var_60_9 = var_0_3.modalHitTest(arg_60_1, arg_60_2)

					if var_60_9 then
						local var_60_10 = rawget(_G, "Tutorial")

						if var_60_10 and var_60_10.requiresAbsorbConfirmOnly and var_60_10.requiresAbsorbConfirmOnly() and var_60_9.kind ~= "confirm" and var_60_9.kind ~= "insert" then
							return true
						end

						local var_60_11 = var_60_1.imprintModal
						local var_60_12 = var_60_11 and var_60_11.absorber
						local var_60_13 = var_60_11 and var_60_11.victim
						local var_60_14 = tonumber(var_60_11 and var_60_11.maxSlots) or 1

						if var_60_9.kind == "confirm" then
							var_60_1._imprintModalResolve = {
								action = "confirm",
								absorber = var_60_12,
								victim = var_60_13
							}
							var_60_1.imprintModal = nil

							if var_60_13 and var_60_1.dropRoster then
								var_60_1:dropRoster(var_60_13)
							end

							return true
						elseif var_60_9.kind == "upgrade" then
							if var_0_3 and var_0_3.triggerUpgrade then
								var_0_3.triggerUpgrade(var_60_9.slot)
							else
								local var_60_15 = tonumber(var_60_9.slot) or 1

								var_60_1._imprintModalResolve = {
									action = "confirm",
									absorber = var_60_12,
									victim = var_60_13,
									slot = var_60_15
								}
								var_60_1.imprintModal = nil

								if var_60_13 and var_60_1.dropRoster then
									var_60_1:dropRoster(var_60_13)
								end
							end

							return true
						elseif var_60_9.kind == "convert" then
							if var_0_3 and var_0_3.triggerConvert then
								var_0_3.triggerConvert()
							else
								var_60_1._imprintModalResolve = {
									action = "convert",
									absorber = var_60_12,
									victim = var_60_13
								}
								var_60_1.imprintModal = nil

								if var_60_13 and var_60_1.dropRoster then
									var_60_1:dropRoster(var_60_13)
								end
							end

							return true
						elseif var_60_9.kind == "replace" or var_60_9.kind == "insert" then
							if var_0_3 and var_0_3.triggerConfirm and var_60_9.kind == "insert" then
								var_0_3.triggerConfirm(var_60_9.slot, var_60_9.kind)
							elseif var_0_3 and var_0_3.triggerChange and var_60_9.kind == "replace" then
								var_0_3.triggerChange(var_60_9.slot)
							else
								local var_60_16 = tonumber(var_60_9.slot) or 1

								if var_60_16 < 1 then
									var_60_16 = 1
								end

								if var_60_14 < var_60_16 then
									var_60_16 = var_60_14
								end

								var_60_1._imprintModalResolve = {
									absorber = var_60_12,
									victim = var_60_13,
									action = var_60_9.kind,
									slot = var_60_16
								}
								var_60_1.imprintModal = nil

								if var_60_13 and var_60_1.dropRoster then
									var_60_1:dropRoster(var_60_13)
								end
							end

							return true
						end
					end
				end

				return true
			end

			return false
		end
	}

	local function var_58_1(arg_61_0, arg_61_1)
		if not arg_61_0 or not arg_61_1 then
			return false
		end

		if arg_61_0.gameOver and arg_61_1.kind == "ally" and arg_61_1.ref then
			return arg_61_1.ref.alive ~= false
		end

		if arg_61_0.mode == "battle" then
			if arg_61_1.kind == "enemy" and arg_61_1.ref and arg_61_0.sandboxMode == true then
				for iter_61_0, iter_61_1 in ipairs(arg_61_0.enemies or {}) do
					if iter_61_1 == arg_61_1.ref and iter_61_1.alive and not iter_61_1.dying then
						return true
					end
				end

				return false
			end

			if arg_61_1.kind ~= "ally" or not arg_61_1.ref then
				return false
			end

			for iter_61_2, iter_61_3 in ipairs(arg_61_0.allies or {}) do
				if iter_61_3 == arg_61_1.ref and iter_61_3.alive then
					return true
				end
			end

			return false
		else
			if arg_61_1.kind ~= "roster" or not arg_61_1.ref then
				return false
			end

			for iter_61_4, iter_61_5 in ipairs(arg_61_0.rosterUnits or {}) do
				if iter_61_5 == arg_61_1.ref then
					return true
				end
			end

			return false
		end
	end

	function var_58_0.toggleLock(arg_62_0)
		arg_62_0.locked = not arg_62_0.locked

		if arg_62_0.locked and arg_62_0.candidate then
			if arg_62_0.target == nil then
				arg_62_0.target = arg_62_0.candidate
			end

			arg_62_0.lockedTarget = arg_62_0.target
			arg_62_0.state = "VISIBLE"
			arg_62_0.fade = 1
			arg_62_0.pinSide = nil
		elseif not arg_62_0.locked then
			arg_62_0.lockedTarget = nil
			arg_62_0.state = "IDLE"
			arg_62_0.fade = 0
			arg_62_0.target = nil
			arg_62_0.pinSide = nil
		end
	end

	local function var_58_2(arg_63_0, arg_63_1, arg_63_2, arg_63_3)
		local function var_63_0(arg_64_0, arg_64_1, arg_64_2)
			if arg_64_0 and (arg_64_0.subclass == "마그누스" or arg_64_0.subclassName == "마그누스" or arg_64_0.subclassKey == "마그누스") then
				return true
			end

			if arg_64_2 and arg_64_2.units and arg_64_2.units.마그누스 and arg_64_1 == arg_64_2.units.마그누스 then
				return true
			end

			return false
		end

		local function var_63_1(arg_65_0, arg_65_1, arg_65_2)
			if arg_65_0 and (arg_65_0.subclass == "카오스" or arg_65_0.subclassName == "카오스" or arg_65_0.subclassKey == "카오스") then
				return true
			end

			if arg_65_2 and arg_65_2.units and arg_65_2.units.카오스 and arg_65_1 == arg_65_2.units.카오스 then
				return true
			end

			return false
		end

		local function var_63_2(arg_66_0, arg_66_1, arg_66_2)
			if arg_66_0 and (arg_66_0.subclass == "크러셔" or arg_66_0.subclassName == "크러셔" or arg_66_0.subclassKey == "크러셔") then
				return true
			end

			if arg_66_2 and arg_66_2.units and arg_66_2.units.크러셔 and arg_66_1 == arg_66_2.units.크러셔 then
				return true
			end

			return false
		end

		local function var_63_3(arg_67_0, arg_67_1, arg_67_2, arg_67_3)
			if not arg_67_0 or not arg_67_0.bounds then
				return 0
			end

			local var_67_0 = arg_67_0.bounds[arg_67_1] and arg_67_0.bounds[arg_67_1][arg_67_2]

			var_67_0 = var_67_0 or arg_67_0.bounds.idle and arg_67_0.bounds.idle[1]

			if not var_67_0 then
				return 0
			end

			local var_67_1 = arg_67_0.frameW or 0

			return (var_67_0.x + var_67_0.w * 0.5 - var_67_1 * 0.5) * (arg_67_3 or 1)
		end

		local function var_63_4(arg_68_0, arg_68_1)
			if not arg_68_0 or not arg_68_0.bounds or not arg_68_0.bounds.idle or not arg_68_0.bounds.idle[1] then
				return 0
			end

			local var_68_0 = arg_68_0.bounds.idle[1]
			local var_68_1 = arg_68_0.frameW or 0

			return (var_68_0.x + var_68_0.w * 0.5 - var_68_1 * 0.5) * (arg_68_1 or 1)
		end

		local function var_63_5(arg_69_0, arg_69_1)
			if not arg_69_0 or not arg_69_0.bounds or not arg_69_0.bounds.idle or not arg_69_0.bounds.idle[1] then
				return nil
			end

			local var_69_0 = arg_69_0.bounds.idle[1]

			return (var_69_0.y + var_69_0.h or 0) * (arg_69_1 or 1)
		end

		local function var_63_6(arg_70_0, arg_70_1)
			local var_70_0 = var_58_0.ui and var_58_0.ui.battle and var_58_0.ui.battle.magnusSpriteOffset
			local var_70_1 = var_70_0 and var_70_0.x or -3
			local var_70_2 = var_70_0 and var_70_0.y or -1
			local var_70_3 = arg_70_1 or 1

			return math.floor(var_70_1 * var_70_3 + 0.5), math.floor(var_70_2 * var_70_3 + 0.5)
		end

		local var_63_7
		local var_63_8
		local var_63_9

		local function var_63_10(arg_71_0, arg_71_1, arg_71_2, arg_71_3, arg_71_4)
			if arg_71_0 and arg_71_0.isUndyingSoul then
				return
			end

			local var_71_0 = arg_71_3
			local var_71_1 = arg_71_4

			if arg_71_0 and arg_71_0.hitShake and arg_71_0.hitShake.t and arg_71_0.hitShake.dur then
				local var_71_2 = math.max(0, math.min(1, (arg_71_0.hitShake.t or 0) / (arg_71_0.hitShake.dur or 0.11)))
				local var_71_3 = math.floor((arg_71_0.hitShake.amp or 2) * (1 - var_71_2) + 0.5)

				if var_71_3 > 0 then
					var_71_0 = var_71_0 + var_71_3 * (math.floor((arg_71_0.hitShake.t or 0) * 60) % 2 == 0 and -1 or 1)
				end
			end

			local var_71_4 = arg_63_1 - var_71_0
			local var_71_5 = arg_63_2 - var_71_1
			local var_71_6 = var_71_4 * var_71_4 + var_71_5 * var_71_5
			local var_71_7 = var_0_35

			if var_63_0(arg_71_0, nil, arg_63_0.assets) or var_63_1(arg_71_0, nil, arg_63_0.assets) or var_63_2(arg_71_0, nil, arg_63_0.assets) then
				var_71_7 = var_71_7 * 2.5
			elseif arg_71_0 and (arg_71_0.sym == "M" or arg_71_0.sym == "D") then
				var_71_7 = var_71_7 * 2
			end

			if arg_63_3 and arg_63_3.ref == arg_71_0 then
				var_71_7 = var_71_7 * 1.8
			end

			local var_71_8 = false

			if arg_71_1 == "enemy" and arg_63_0.sandboxMode == true and arg_71_0 and arg_71_0.colX and arg_71_0.colY and arg_71_0.colW and arg_71_0.colH then
				local var_71_9 = 0

				var_71_8 = arg_63_1 >= arg_71_0.colX - var_71_9 and arg_63_1 <= arg_71_0.colX + arg_71_0.colW + var_71_9 and arg_63_2 >= arg_71_0.colY - var_71_9 and arg_63_2 <= arg_71_0.colY + arg_71_0.colH + var_71_9
			end

			if var_71_8 or var_71_6 <= var_71_7 * var_71_7 then
				local var_71_10 = arg_63_0.assets
				local var_71_11
				local var_71_12
				local var_71_13
				local var_71_14
				local var_71_15

				if arg_63_0.mode == "battle" and arg_71_1 == "ally" and arg_71_0 then
					if arg_71_0.sym == "W" then
						if var_71_10 and var_71_10.units then
							if arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							else
								local var_71_16 = arg_71_0.rank or arg_71_0.star or 1

								if var_71_16 >= 3 and var_71_10.units.MiniSwordMan03 then
									var_71_11 = var_71_10.units.MiniSwordMan03
								elseif var_71_16 >= 2 and var_71_10.units.MiniSwordMan02 then
									var_71_11 = var_71_10.units.MiniSwordMan02
								else
									var_71_11 = var_71_10.units.MiniSwordMan
								end
							end
						end
					elseif arg_71_0.sym == "A" then
						if var_71_10 and var_71_10.units then
							if arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							else
								local var_71_17 = arg_71_0.rank or arg_71_0.star or 1

								if var_71_17 >= 3 and var_71_10.units.MiniArcherMan03 then
									var_71_11 = var_71_10.units.MiniArcherMan03
								elseif var_71_17 >= 2 and var_71_10.units.MiniArcherMan02 then
									var_71_11 = var_71_10.units.MiniArcherMan02
								else
									var_71_11 = var_71_10.units.MiniArcherMan
								end
							end
						end
					elseif arg_71_0.sym == "S" then
						if var_71_10 and var_71_10.units then
							if arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_18 = arg_71_0.rank or arg_71_0.star or 1

								if var_71_18 >= 3 and var_71_10.units.MiniSpearMan03 then
									var_71_11 = var_71_10.units.MiniSpearMan03
								elseif var_71_18 >= 2 and var_71_10.units.MiniSpearMan02 then
									var_71_11 = var_71_10.units.MiniSpearMan02
								else
									var_71_11 = var_71_10.units.MiniSpearMan
								end
							end
						end
					elseif arg_71_0.sym == "M" then
						if var_71_10 and var_71_10.units then
							if arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_19 = arg_71_0.rank or arg_71_0.star or 1
								local var_71_20 = arg_71_0 and var_0_5(arg_71_0.grade) or "normal"

								if var_71_19 >= 3 and var_71_10.units["현자 엘프"] then
									var_71_11 = var_71_10.units["현자 엘프"]
								elseif var_71_19 >= 2 and var_71_10.units.주술사 then
									var_71_11 = var_71_10.units.주술사
								elseif var_71_19 <= 1 and var_71_20 == "advanced" and var_71_10.units.마도사 then
									var_71_11 = var_71_10.units.마도사
								else
									var_71_11 = var_71_10.units.MiniMage
								end
							end
						end
					elseif arg_71_0.sym == "H" then
						if var_71_10 and var_71_10.units then
							if arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_21 = arg_71_0.rank or arg_71_0.star or 1
								local var_71_22 = var_0_5(arg_71_0.grade)

								if var_71_21 <= 1 and var_71_22 == "advanced" and var_71_10.units.철기병 then
									var_71_11 = var_71_10.units.철기병
								elseif var_71_21 >= 3 and var_71_10.units.MiniHorseMan03 then
									var_71_11 = var_71_10.units.MiniHorseMan03
								elseif var_71_21 >= 2 and var_71_10.units.돌격병 then
									var_71_11 = var_71_10.units.돌격병
								else
									var_71_11 = var_71_10.units.기병
								end
							end
						end
					elseif arg_71_0.sym == "D" then
						if var_71_10 and var_71_10.units then
							if arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_23 = arg_71_0.rank or arg_71_0.star or 1
								local var_71_24 = var_0_5(arg_71_0.grade)

								if var_71_23 <= 1 and var_71_24 == "advanced" and var_71_10.units.드루이드 then
									var_71_11 = var_71_10.units.드루이드
								elseif var_71_23 >= 3 and var_71_10.units["현자 엘프"] then
									var_71_11 = var_71_10.units["현자 엘프"]
								elseif var_71_23 >= 2 and var_71_10.units.황제 then
									var_71_11 = var_71_10.units.황제
								else
									var_71_11 = var_71_10.units.결투사
								end
							end
						end
					elseif type(arg_71_0.sym) == "string" and arg_71_0.sym:find("ENEMY_") then
						local var_71_25 = arg_71_0.sym:sub(7)

						if var_71_10 and var_71_10.units then
							if var_71_10.units[var_71_25] then
								var_71_11 = var_71_10.units[var_71_25]
							elseif arg_71_0.skin and var_71_10.units[arg_71_0.skin] then
								var_71_11 = var_71_10.units[arg_71_0.skin]
							elseif var_71_10.units["Mini" .. var_71_25] then
								var_71_11 = var_71_10.units["Mini" .. var_71_25]
							end
						end
					end

					var_71_12 = arg_71_0.anim and arg_71_0.anim.name or "idle"
					var_71_13 = arg_71_0.anim and arg_71_0.anim.frame or 1
				else
					if arg_71_2 == "W" then
						if var_71_10 and var_71_10.units then
							if arg_71_0 and arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0 and arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							else
								local var_71_26 = arg_71_0 and (arg_71_0.rank or arg_71_0.star) or 1

								if var_71_26 >= 3 and var_71_10.units.MiniSwordMan03 then
									var_71_11 = var_71_10.units.MiniSwordMan03
								elseif var_71_26 >= 2 and var_71_10.units.MiniSwordMan02 then
									var_71_11 = var_71_10.units.MiniSwordMan02
								else
									var_71_11 = var_71_10.units.MiniSwordMan
								end
							end
						end
					elseif arg_71_2 == "A" then
						if var_71_10 and var_71_10.units then
							if arg_71_0 and arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0 and arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							else
								local var_71_27 = arg_71_0 and (arg_71_0.rank or arg_71_0.star) or 1

								if var_71_27 >= 3 and var_71_10.units.MiniArcherMan03 then
									var_71_11 = var_71_10.units.MiniArcherMan03
								elseif var_71_27 >= 2 and var_71_10.units.MiniArcherMan02 then
									var_71_11 = var_71_10.units.MiniArcherMan02
								else
									var_71_11 = var_71_10.units.MiniArcherMan
								end
							end
						end
					elseif arg_71_2 == "S" then
						if var_71_10 and var_71_10.units then
							if arg_71_0 and arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0 and arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0 and arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_28 = arg_71_0 and (arg_71_0.rank or arg_71_0.star) or 1

								if var_71_28 >= 3 and var_71_10.units.MiniSpearMan03 then
									var_71_11 = var_71_10.units.MiniSpearMan03
								elseif var_71_28 >= 2 and var_71_10.units.MiniSpearMan02 then
									var_71_11 = var_71_10.units.MiniSpearMan02
								else
									var_71_11 = var_71_10.units.MiniSpearMan
								end
							end
						end
					elseif arg_71_2 == "M" then
						if var_71_10 and var_71_10.units then
							if arg_71_0 and arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0 and arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0 and arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_29 = arg_71_0 and (arg_71_0.rank or arg_71_0.star) or 1
								local var_71_30 = arg_71_0 and var_0_5(arg_71_0.grade) or "normal"

								if var_71_29 >= 3 and var_71_10.units["현자 엘프"] then
									var_71_11 = var_71_10.units["현자 엘프"]
								elseif var_71_29 >= 2 and var_71_10.units.주술사 then
									var_71_11 = var_71_10.units.주술사
								elseif var_71_29 <= 1 and var_71_30 == "advanced" and var_71_10.units.마도사 then
									var_71_11 = var_71_10.units.마도사
								else
									var_71_11 = var_71_10.units.MiniMage
								end
							end
						end
					elseif arg_71_2 == "H" then
						if var_71_10 and var_71_10.units then
							if arg_71_0 and arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0 and arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0 and arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_31 = arg_71_0 and (arg_71_0.rank or arg_71_0.star) or 1
								local var_71_32 = arg_71_0 and var_0_5(arg_71_0.grade) or "normal"

								if var_71_31 <= 1 and var_71_32 == "advanced" and var_71_10.units.철기병 then
									var_71_11 = var_71_10.units.철기병
								elseif var_71_31 >= 3 and var_71_10.units.MiniHorseMan03 then
									var_71_11 = var_71_10.units.MiniHorseMan03
								elseif var_71_31 >= 2 and var_71_10.units.돌격병 then
									var_71_11 = var_71_10.units.돌격병
								else
									var_71_11 = var_71_10.units.기병
								end
							end
						end
					elseif arg_71_2 == "D" then
						if var_71_10 and var_71_10.units then
							if arg_71_0 and arg_71_0.subclassKey and var_71_10.units[arg_71_0.subclassKey] then
								var_71_11 = var_71_10.units[arg_71_0.subclassKey]
							elseif arg_71_0 and arg_71_0.subclassName and var_71_10.units[arg_71_0.subclassName] then
								var_71_11 = var_71_10.units[arg_71_0.subclassName]
							elseif arg_71_0 and arg_71_0.subclass and var_71_10.units[arg_71_0.subclass] then
								var_71_11 = var_71_10.units[arg_71_0.subclass]
							else
								local var_71_33 = arg_71_0 and (arg_71_0.rank or arg_71_0.star) or 1
								local var_71_34 = var_0_5(arg_71_0 and arg_71_0.grade)

								if var_71_33 <= 1 and var_71_34 == "advanced" and var_71_10.units.드루이드 then
									var_71_11 = var_71_10.units.드루이드
								elseif var_71_33 >= 3 and var_71_10.units["현자 엘프"] then
									var_71_11 = var_71_10.units["현자 엘프"]
								elseif var_71_33 >= 2 and var_71_10.units.황제 then
									var_71_11 = var_71_10.units.황제
								else
									var_71_11 = var_71_10.units.결투사
								end
							end
						end
					elseif type(arg_71_2) == "string" and arg_71_2:find("ENEMY_") then
						local var_71_35 = arg_71_2:sub(7)

						if var_71_10 and var_71_10.units then
							if var_71_10.units[var_71_35] then
								var_71_11 = var_71_10.units[var_71_35]
							elseif arg_71_0 and arg_71_0.skin and var_71_10.units[arg_71_0.skin] then
								var_71_11 = var_71_10.units[arg_71_0.skin]
							elseif var_71_10.units["Mini" .. var_71_35] then
								var_71_11 = var_71_10.units["Mini" .. var_71_35]
							end
						end
					end

					var_71_12 = arg_71_0 and arg_71_0.anim and arg_71_0.anim.name or "idle"
					var_71_13 = arg_71_0 and arg_71_0.anim and arg_71_0.anim.frame or 1
				end

				local var_71_36 = false

				if var_71_11 and var_71_11.imageData and var_71_11.quads and var_71_11.quads[var_71_12] and var_71_11.quads[var_71_12][var_71_13] then
					local var_71_37, var_71_38 = var_71_11.frameW, var_71_11.frameH
					local var_71_39 = arg_63_0.area
					local var_71_40 = math.floor(12 * var_58_0.ui.scale)
					local var_71_41 = var_71_39.x + var_71_40
					local var_71_42 = var_71_39.y + var_71_40 + math.floor(28 * var_58_0.ui.scale)
					local var_71_43 = var_71_39.w - var_71_40 * 2
					local var_71_44 = var_71_39.h - var_71_40 * 2 - math.floor(28 * var_58_0.ui.scale)
					local var_71_45 = 32
					local var_71_46

					if arg_63_0.mode == "battle" then
						if var_58_0.ui.battle and var_58_0.ui.battle.allySize32 and var_58_0.ui.battle.allySize32 > 0 then
							var_71_46 = math.max(var_71_45, math.floor(var_58_0.ui.battle.allySize32 / var_71_45) * var_71_45)
						else
							local var_71_47 = math.floor(math.min(var_71_43, var_71_44) * 0.12 * (var_58_0.ui.battle and var_58_0.ui.battle.unitScale or 1))

							var_71_46 = var_71_45 * math.max(1, math.ceil(var_71_47 / var_71_45))
						end
					elseif var_58_0.ui.battle and var_58_0.ui.battle.allySize32 and var_58_0.ui.battle.allySize32 > 0 then
						var_71_46 = math.max(var_71_45, math.floor(var_58_0.ui.battle.allySize32 / var_71_45) * var_71_45)
					else
						local var_71_48 = math.floor(math.min(var_71_43, var_71_44) * 0.12 * (var_58_0.ui.battle and var_58_0.ui.battle.rosterScale or 1))

						var_71_46 = var_71_45 * math.max(1, math.ceil(var_71_48 / var_71_45))
					end

					local var_71_49 = var_71_46 / math.max(1, var_71_38 or 32)
					local var_71_50
					local var_71_51

					if var_71_37 and var_71_37 >= 40 or var_71_38 and var_71_38 >= 40 then
						var_71_49 = var_71_46 / math.max(1, var_71_38 or 32)

						local var_71_52 = var_71_37 * var_71_49
						local var_71_53 = var_71_38 * var_71_49

						if var_63_0(arg_71_0, var_71_11, var_71_10) then
							local var_71_54 = var_71_46
							local var_71_55 = math.floor(arg_71_3 - var_71_54 / 2)
							local var_71_56 = math.floor(arg_71_4 - var_71_54 / 2)
							local var_71_57 = math.floor((var_71_54 - var_71_52) / 2 + 0.5)
							local var_71_58 = var_63_4(var_71_11, var_71_49)

							var_71_50 = var_71_55 + var_71_57 - var_71_58

							local var_71_59 = var_71_56 + var_71_54
							local var_71_60 = var_63_5(var_71_11, var_71_49)

							if var_71_60 then
								var_71_51 = math.floor(var_71_59 - var_71_60 + 0.5)
							else
								var_71_51 = var_71_56
							end

							local var_71_61, var_71_62 = var_63_6(var_58_0.ui, math.abs(var_71_49))

							var_71_50 = var_71_50 + var_71_61
							var_71_51 = var_71_51 + var_71_62
						elseif var_63_2(arg_71_0, var_71_11, var_71_10) then
							if arg_63_0.mode == "battle" and arg_71_1 == "ally" then
								var_71_50 = math.floor(arg_71_3 - var_71_52 * 0.5)
								var_71_51 = math.floor(arg_71_4 - var_71_46 / 2)
							else
								local var_71_63 = var_71_46
								local var_71_64 = math.floor(arg_71_3 - var_71_63 / 2)

								var_71_51, var_71_50 = math.floor(arg_71_4 - var_71_63 / 2), var_71_64 + math.floor((var_71_63 - var_71_52) / 2 + 0.5)
							end
						elseif var_63_1(arg_71_0, var_71_11, var_71_10) then
							local var_71_65 = var_71_46 / math.max(1, var_71_37 or 32)
							local var_71_66

							if var_71_37 and var_71_37 >= 48 or var_71_38 and var_71_38 >= 48 then
								var_71_66 = math.max(1, math.ceil(var_71_65 - 1e-06))
							else
								var_71_66 = math.max(1, math.floor(var_71_65 + 0.5))
							end

							var_71_49 = var_71_66
							var_71_52 = var_71_37 * var_71_49
							var_71_53 = var_71_38 * var_71_49

							if arg_63_0.mode == "battle" and arg_71_1 == "ally" then
								var_71_50 = math.floor(arg_71_3 - var_71_52 / 2)
								var_71_51 = math.floor(arg_71_4 - var_71_46 / 2) + var_71_46 - var_71_53
							else
								local var_71_67 = var_71_46
								local var_71_68 = math.floor(arg_71_3 - var_71_67 / 2)
								local var_71_69 = math.floor(arg_71_4 - var_71_67 / 2)
								local var_71_70 = math.floor((var_71_67 - var_71_52) / 2 + 0.5)
								local var_71_71 = var_71_67 - var_71_53

								var_71_50 = var_71_68 + var_71_70
								var_71_51 = var_71_69 + var_71_71
							end
						else
							var_71_50 = math.floor(arg_71_3 - var_71_52 / 2 + 0.5)
							var_71_51 = math.floor(arg_71_4 + var_71_46 / 2 - var_71_53 + 0.5)
						end
					else
						local var_71_72 = (var_71_37 or 32) * var_71_49
						local var_71_73 = var_63_0(arg_71_0, var_71_11, var_71_10) and var_63_3(var_71_11, var_71_12, var_71_13, var_71_49) or 0

						var_71_50 = var_0_16(arg_71_3 - var_71_72 / 2 - var_71_73)
						var_71_51 = var_0_16(arg_71_4 - var_71_46 / 2)
					end

					if arg_71_0 and arg_71_0.hitShake and arg_71_0.hitShake.t and arg_71_0.hitShake.dur then
						local var_71_74 = math.max(0, math.min(1, (arg_71_0.hitShake.t or 0) / (arg_71_0.hitShake.dur or 0.11)))
						local var_71_75 = math.floor((arg_71_0.hitShake.amp or 2) * (1 - var_71_74) + 0.5)

						if var_71_75 > 0 then
							var_71_50 = var_71_50 + var_71_75 * (math.floor((arg_71_0.hitShake.t or 0) * 60) % 2 == 0 and -1 or 1)
						end
					end

					if arg_71_1 == "enemy" then
						var_71_49 = math.max(1, math.floor(var_71_46 / 32 + 0.5))

						local var_71_76 = (var_71_37 or 32) * var_71_49
						local var_71_77 = (var_71_38 or 32) * var_71_49

						var_71_50 = math.floor(arg_71_3 + 0.5) - math.floor(var_71_76 / 2)
						var_71_51 = math.floor(arg_71_4 + 0.5) - math.floor(var_71_77 / 2)

						if arg_71_0 and arg_71_0.hitShake and arg_71_0.hitShake.t and arg_71_0.hitShake.dur then
							local var_71_78 = math.max(0, math.min(1, (arg_71_0.hitShake.t or 0) / (arg_71_0.hitShake.dur or 0.11)))
							local var_71_79 = math.floor((arg_71_0.hitShake.amp or 2) * (1 - var_71_78) + 0.5)

							if var_71_79 > 0 then
								local var_71_80 = math.floor((arg_71_0.hitShake.t or 0) * 60) % 2 == 0 and -1 or 1

								var_71_50 = math.floor(arg_71_3 + 0.5) + var_71_79 * var_71_80 - math.floor(var_71_76 / 2)
							end
						end
					end

					local var_71_81 = var_71_49
					local var_71_82 = var_71_49
					local var_71_83 = (arg_63_1 - var_71_50) / var_71_81

					if arg_71_1 == "ally" and arg_71_0 and arg_71_0.facing == -1 then
						var_71_83 = var_71_37 - 1 - var_71_83
					elseif arg_71_1 == "enemy" and arg_71_0 and (arg_71_0.facing or -1) < 0 then
						var_71_83 = var_71_37 - 1 - var_71_83
					end

					local var_71_84 = var_71_83
					local var_71_85 = (arg_63_2 - var_71_51) / var_71_82

					if var_71_84 < 0 or var_71_85 < 0 or var_71_37 <= var_71_84 or var_71_38 <= var_71_85 then
						var_71_36 = false
					else
						local var_71_86, var_71_87 = var_71_11.image:getDimensions()
						local var_71_88, var_71_89, var_71_90, var_71_91 = var_71_11.quads[var_71_12][var_71_13]:getViewport()
						local var_71_92 = math.floor(var_71_88 + var_71_84)
						local var_71_93 = math.floor(var_71_89 + var_71_85)

						if var_71_92 < 0 or var_71_93 < 0 or var_71_86 <= var_71_92 or var_71_87 <= var_71_93 then
							var_71_36 = false
						else
							local var_71_94, var_71_95, var_71_96, var_71_97 = var_71_11.imageData:getPixel(var_71_92, var_71_93)

							var_71_36 = (var_71_97 or 0) > 0.01
						end
					end

					if not var_71_36 and arg_71_1 == "enemy" and arg_63_0.sandboxMode == true and arg_71_0 and arg_71_0.colX and arg_71_0.colY and arg_71_0.colW and arg_71_0.colH and not (var_71_11 and var_71_11.imageData and var_71_11.quads and var_71_11.quads[var_71_12] and var_71_11.quads[var_71_12][var_71_13]) then
						local var_71_98 = 0

						var_71_36 = arg_63_1 >= arg_71_0.colX - var_71_98 and arg_63_1 <= arg_71_0.colX + arg_71_0.colW + var_71_98 and arg_63_2 >= arg_71_0.colY - var_71_98 and arg_63_2 <= arg_71_0.colY + arg_71_0.colH + var_71_98
					end

					if not var_71_36 and var_71_8 and not (var_71_11 and var_71_11.imageData and var_71_11.quads and var_71_11.quads[var_71_12] and var_71_11.quads[var_71_12][var_71_13]) then
						var_71_36 = true
					end
				end

				if var_71_36 and (not var_63_8 or var_71_6 < var_63_8 or var_71_6 == var_63_8 and arg_71_4 > (var_63_9 or -1000000000) or var_71_6 == var_63_8 and arg_71_4 == var_63_9 and arg_71_0 == var_58_0.lastSelectedRef) then
					var_63_7 = {
						ref = arg_71_0,
						kind = arg_71_1,
						sym = arg_71_2,
						x = arg_71_3,
						y = arg_71_4
					}
					var_63_8 = var_71_6
					var_63_9 = arg_71_4
				end
			end
		end

		if arg_63_0.mode ~= "battle" then
			local var_63_11
			local var_63_12

			if arg_63_0.rosterUnits and arg_63_0.rosterSymbols then
				for iter_63_0, iter_63_1 in ipairs(arg_63_0.rosterUnits) do
					if iter_63_1 and iter_63_1._held then
						var_63_11 = iter_63_1
						var_63_12 = arg_63_0.rosterSymbols[iter_63_0]

						break
					end
				end
			end

			if var_63_11 and var_63_11.x and var_63_11.y then
				var_63_10(var_63_11, "roster", var_63_12 or "W", var_63_11.x, var_63_11.y)

				return var_63_7
			end
		end

		if arg_63_0.mode == "battle" then
			for iter_63_2, iter_63_3 in ipairs(arg_63_0.allies or {}) do
				if iter_63_3.alive then
					var_63_10(iter_63_3, "ally", iter_63_3.sym, iter_63_3.x, iter_63_3.y)
				end
			end

			if arg_63_0.sandboxMode == true then
				for iter_63_4, iter_63_5 in ipairs(arg_63_0.enemies or {}) do
					if iter_63_5.alive and not iter_63_5.dying then
						var_63_10(iter_63_5, "enemy", iter_63_5.sym or "ENEMY_" .. tostring(iter_63_5.kind or "Goblin"), iter_63_5.x, iter_63_5.y)
					end
				end
			end
		else
			for iter_63_6, iter_63_7 in ipairs(arg_63_0.rosterSymbols or {}) do
				local var_63_13 = arg_63_0.rosterUnits and arg_63_0.rosterUnits[iter_63_6]

				if var_63_13 then
					var_63_10(var_63_13, "roster", iter_63_7, var_63_13.x, var_63_13.y)
				end
			end

			if arg_63_0.sandboxMode == true then
				for iter_63_8, iter_63_9 in ipairs(arg_63_0.enemies or {}) do
					if iter_63_9.alive and not iter_63_9.dying then
						var_63_10(iter_63_9, "enemy", iter_63_9.sym or "ENEMY_" .. tostring(iter_63_9.kind or "Goblin"), iter_63_9.x, iter_63_9.y)
					end
				end
			end
		end

		return var_63_7
	end

	local function var_58_3(arg_72_0, arg_72_1)
		return arg_72_0 and arg_72_1 and arg_72_0.ref == arg_72_1.ref
	end

	local function var_58_4(arg_73_0)
		if not arg_73_0.target then
			arg_73_0.cache = nil

			return
		end

		local var_73_0

		if arg_73_0.target.kind == "ally" then
			var_73_0 = var_0_43(arg_73_0.target.ref)
		elseif arg_73_0.target.kind == "enemy" then
			var_73_0 = var_0_44(arg_73_0.target.ref)
		elseif arg_73_0.target.ref and arg_73_0.target.ref.stats then
			var_73_0 = var_0_47(arg_73_0.target.ref, bf, arg_73_0.ui)
		else
			var_73_0 = var_0_48(arg_73_0.target.sym)
		end

		if arg_73_0._predActive and arg_73_0._predSrcSym and var_73_0 and not (arg_73_0._heldRef and arg_73_0.target and arg_73_0.target.ref == arg_73_0._heldRef) then
			local var_73_1 = arg_73_0._predSrcSym
			local var_73_2 = {}

			if not var_73_0.hpMax and not var_73_0.hp then
				local var_73_3 = 0
			end

			if not var_73_0.atk then
				local var_73_4 = 0
			end

			if not var_73_0.aspd then
				local var_73_5 = 0
			end

			local var_73_6 = 0
			local var_73_7 = 0
			local var_73_8 = 0
			local var_73_9 = 1

			if arg_73_0._heldRef and arg_73_0._heldRef.stats then
				local var_73_10

				var_73_10 = arg_73_0._heldRef.stats.hp or 0

				local var_73_11

				var_73_11 = arg_73_0._heldRef.stats.atk or 0

				local var_73_12

				var_73_12 = arg_73_0._heldRef.stats.aspd or 0

				local var_73_13

				var_73_13 = arg_73_0._heldRef.rank or arg_73_0._heldRef.star or 1
			else
				local var_73_14 = var_0_48(var_73_1)
				local var_73_15

				var_73_15 = var_73_14.hp or 0

				local var_73_16

				var_73_16 = var_73_14.atk or 0

				local var_73_17

				var_73_17 = var_73_14.aspd or 0

				local var_73_18 = 1
			end

			local function var_73_19(arg_74_0, arg_74_1)
				if arg_74_1 == "advanced" then
					return 2
				end

				if arg_74_1 == "rare" then
					return 3
				end

				if arg_74_1 == "legendary" then
					return 4
				end

				if arg_74_1 == "prism" then
					return 5
				end

				local var_74_0 = (var_0_2 and var_0_2.evolution or {}).maxRankBySym or {}

				return var_74_0[arg_74_0] or var_74_0.default or 5
			end

			local var_73_20 = (var_73_0.rank or 1) >= var_73_19(var_73_0.sym, var_73_0.grade) or var_73_0.grade == "normal"
			local var_73_21 = 1

			if arg_73_0._heldRef and arg_73_0._heldRef.stats then
				local var_73_22

				var_73_22 = arg_73_0._heldRef.rank or arg_73_0._heldRef.star or 1
			else
				local var_73_23 = 1
			end

			local var_73_24 = 1
			local var_73_25 = var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[var_73_0.grade or "normal"] or {}
			local var_73_26 = var_73_0.rank or 1

			if var_73_26 < 1 then
				var_73_26 = 1
			elseif var_73_26 > 5 then
				var_73_26 = 5
			end

			local var_73_27 = var_73_25[var_73_26] or 999
			local var_73_28 = var_73_0.absorbLV or 0
			local var_73_29 = var_73_28 / math.max(1e-09, var_73_27)
			local var_73_30 = var_0_58(arg_73_0._heldRef)

			if not var_73_20 and var_73_27 <= var_73_28 + var_73_30 then
				local var_73_31 = (var_73_28 + var_73_30) / math.max(1e-09, var_73_27)
				local var_73_32 = math.floor(var_73_30 / var_73_27 * 100 + 0.5)

				var_73_2.gauge = {
					cur = var_73_29,
					nxt = var_73_31,
					gainDisp = var_73_32
				}
				var_73_2.vTier = var_73_24
			else
				var_73_2 = nil
			end

			if var_73_2 then
				var_73_0.prediction = true
				var_73_0.pred = var_73_2
			else
				var_73_0.prediction = nil
				var_73_0.pred = nil
			end
		end

		if not arg_73_0.cache or not arg_73_0.cache.info then
			arg_73_0.cache = {
				info = var_73_0
			}
		else
			arg_73_0.cache.info = var_73_0
		end

		local var_73_33

		if arg_73_0._predActive and arg_73_0._predTarget then
			var_73_33 = arg_73_0._predTarget
		elseif arg_73_0.target and arg_73_0.target.kind == "roster" then
			var_73_33 = arg_73_0.target.ref
		end

		arg_73_0.cache.layout = var_0_59(arg_73_0.ui, var_73_0, 120, arg_73_0.battlefield and arg_73_0.battlefield.assets, var_73_33, arg_73_0._heldRef, arg_73_0._predSrcSym, arg_73_0.battlefield)
	end

	function var_58_0.update(arg_75_0, arg_75_1, arg_75_2, arg_75_3, arg_75_4)
		arg_75_0.time = arg_75_0.time + arg_75_1
		arg_75_0.mouseX, arg_75_0.mouseY = var_0_16(arg_75_2), var_0_16(arg_75_3)
		arg_75_0.battlefield = arg_75_4

		local var_75_0
		local var_75_1

		if arg_75_4 and arg_75_4.rosterUnits and arg_75_4.rosterSymbols then
			for iter_75_0, iter_75_1 in ipairs(arg_75_4.rosterUnits) do
				if iter_75_1 and iter_75_1._held then
					var_75_0 = iter_75_1
					var_75_1 = arg_75_4.rosterSymbols[iter_75_0]

					break
				end
			end
		end

		arg_75_0._heldRef = var_75_0
		arg_75_0._heldSym = var_75_1

		if arg_75_4 and arg_75_4.imprintModal and arg_75_4.imprintModal.active then
			if var_0_3 and var_0_3._cancelTriggered then
				var_0_3._cancelTriggered = false
				arg_75_4._imprintModalResolve = nil
				arg_75_4.imprintModal = nil
			end

			if var_0_3 and var_0_3._convertTriggered then
				local var_75_2 = arg_75_4.imprintModal
				local var_75_3 = var_75_2 and var_75_2.absorber
				local var_75_4 = var_75_2 and var_75_2.victim

				var_0_3._convertTriggered = false
				arg_75_4._imprintModalResolve = {
					action = "convert",
					absorber = var_75_3,
					victim = var_75_4
				}
				arg_75_4.imprintModal = nil

				if var_75_4 and arg_75_4.dropRoster then
					arg_75_4:dropRoster(var_75_4)
				end
			end

			if var_0_3 and var_0_3._upgradeTriggered then
				local var_75_5 = var_0_3._upgradeSlot or 1
				local var_75_6 = arg_75_4.imprintModal
				local var_75_7 = var_75_6 and var_75_6.absorber
				local var_75_8 = var_75_6 and var_75_6.victim

				var_0_3._upgradeTriggered = false
				var_0_3._upgradeSlot = nil
				arg_75_4._imprintModalResolve = {
					action = "confirm",
					absorber = var_75_7,
					victim = var_75_8,
					slot = var_75_5
				}
				arg_75_4.imprintModal = nil

				if var_75_8 and arg_75_4.dropRoster then
					arg_75_4:dropRoster(var_75_8)
				end
			end

			if var_0_3 and var_0_3._confirmTriggered then
				local var_75_9 = var_0_3._confirmSlot or 1
				local var_75_10 = var_0_3._confirmAction or "insert"
				local var_75_11 = arg_75_4.imprintModal
				local var_75_12 = var_75_11 and var_75_11.absorber
				local var_75_13 = var_75_11 and var_75_11.victim

				var_0_3._confirmTriggered = false
				var_0_3._confirmSlot = nil
				var_0_3._confirmAction = nil
				arg_75_4._imprintModalResolve = {
					absorber = var_75_12,
					victim = var_75_13,
					action = var_75_10,
					slot = var_75_9
				}
				arg_75_4.imprintModal = nil

				if var_75_13 and arg_75_4.dropRoster then
					arg_75_4:dropRoster(var_75_13)
				end
			end

			if var_0_3 and var_0_3._changeTriggered then
				local var_75_14 = var_0_3._changeSlot or 1
				local var_75_15 = arg_75_4.imprintModal
				local var_75_16 = var_75_15 and var_75_15.absorber
				local var_75_17 = var_75_15 and var_75_15.victim

				var_0_3._changeTriggered = false
				var_0_3._changeSlot = nil
				arg_75_4._imprintModalResolve = {
					action = "replace",
					absorber = var_75_16,
					victim = var_75_17,
					slot = var_75_14
				}
				arg_75_4.imprintModal = nil

				if var_75_17 and arg_75_4.dropRoster then
					arg_75_4:dropRoster(var_75_17)
				end
			end
		end

		local var_75_18 = arg_75_4 and arg_75_4.mode or nil

		if arg_75_0._lastMode ~= var_75_18 then
			local var_75_19 = arg_75_0._lastMode

			arg_75_0._lastMode = var_75_18

			local var_75_20 = false

			if arg_75_0.locked and arg_75_0.target and arg_75_0.target.ref then
				if var_75_19 ~= "battle" and var_75_18 == "battle" then
					if arg_75_0.target.kind == "roster" then
						local var_75_21 = arg_75_0.target.ref.allyRef

						if not var_75_21 and arg_75_4.allies then
							local var_75_22

							if arg_75_4.rosterUnits then
								for iter_75_2, iter_75_3 in ipairs(arg_75_4.rosterUnits) do
									if iter_75_3 == arg_75_0.target.ref then
										var_75_22 = iter_75_2

										break
									end
								end
							end

							if var_75_22 then
								for iter_75_4, iter_75_5 in ipairs(arg_75_4.allies) do
									if iter_75_5.rosterIndex == var_75_22 then
										var_75_21 = iter_75_5

										break
									end
								end
							end
						end

						if var_75_21 then
							arg_75_0.target = {
								kind = "ally",
								ref = var_75_21,
								sym = arg_75_0.target.sym,
								x = var_75_21.x,
								y = var_75_21.y
							}
							arg_75_0.lockedTarget = arg_75_0.target
							var_75_20 = true
						end
					end
				elseif var_75_19 == "battle" and var_75_18 ~= "battle" then
					var_75_20 = false
				end
			end

			if not var_75_20 then
				arg_75_0.locked = false
				arg_75_0.target = nil
				arg_75_0.lockedTarget = nil
				arg_75_0.state = "IDLE"
				arg_75_0.fade = 0
			end

			arg_75_0.candidate = nil
			arg_75_0._predActive = false
			arg_75_0._predTarget = nil
			arg_75_0._predTargetSym = nil
			arg_75_0._heldRef = nil
			arg_75_0._heldSym = nil
			arg_75_0.crossPrevLayout = nil
			arg_75_0.crossPrevInfo = nil
			arg_75_0.crossT = 0
		end

		if arg_75_0.crossT and arg_75_0.crossPrevLayout then
			arg_75_0.crossT = arg_75_0.crossT + arg_75_1

			if arg_75_0.crossT >= var_0_39 then
				arg_75_0.crossPrevLayout = nil
				arg_75_0.crossPrevInfo = nil
				arg_75_0.crossT = 0
			end
		end

		if arg_75_4 and (arg_75_4.gameOver or arg_75_4.victoryPending and arg_75_4.victoryPending.active or arg_75_4.imprintModal and arg_75_4.imprintModal.active) or arg_58_0 and arg_58_0.pauseOverlayState and arg_58_0.pauseOverlayState.active then
			if arg_75_4 and arg_75_4.gameOver and arg_58_0 and arg_58_0._gameOverBestUnitRect then
				local var_75_23 = arg_58_0._gameOverBestUnitRect
				local var_75_24 = arg_75_0.mouseX
				local var_75_25 = arg_75_0.mouseY

				if var_75_23.unit and var_75_24 >= var_75_23.x and var_75_24 <= var_75_23.x + var_75_23.w and var_75_25 >= var_75_23.y and var_75_25 <= var_75_23.y + var_75_23.h then
					local var_75_26 = true

					if var_75_23.imageData and var_75_23.quad and var_75_23.sx and var_75_23.sy then
						local var_75_27 = math.floor((var_75_24 - var_75_23.x) / var_75_23.sx)
						local var_75_28 = math.floor((var_75_25 - var_75_23.y) / var_75_23.sy)
						local var_75_29, var_75_30, var_75_31, var_75_32 = var_75_23.quad:getViewport()
						local var_75_33 = var_75_29 + var_75_27
						local var_75_34 = var_75_30 + var_75_28

						if var_75_33 >= 0 and var_75_34 >= 0 and var_75_33 < var_75_29 + var_75_31 and var_75_34 < var_75_30 + var_75_32 then
							local var_75_35, var_75_36, var_75_37, var_75_38, var_75_39 = pcall(function()
								return var_75_23.imageData:getPixel(var_75_33, var_75_34)
							end)

							if var_75_35 then
								var_75_26 = (var_75_39 or 0) > 0.05
							end
						else
							var_75_26 = false
						end
					end

					if not var_75_26 then
						arg_75_0.locked = false
						arg_75_0.state = "IDLE"
						arg_75_0.fade = 0
						arg_75_0.target = nil
						arg_75_0.candidate = nil
					else
						local var_75_40 = var_75_23.unit
						local var_75_41 = {
							kind = "roster",
							ref = var_75_40,
							sym = var_75_40.sym,
							x = var_75_23.x + var_75_23.w * 0.5,
							y = var_75_23.y + var_75_23.h * 0.5
						}

						if not arg_75_0.target or arg_75_0.target.ref ~= var_75_40 then
							arg_75_0.target = var_75_41
							arg_75_0.pinSide = nil

							var_58_4(arg_75_0)
						end

						arg_75_0.state = "VISIBLE"
						arg_75_0.fade = 1

						return
					end
				end
			end

			arg_75_0.locked = false
			arg_75_0.state = "IDLE"
			arg_75_0.fade = 0
			arg_75_0.hoverT = 0
			arg_75_0.hideT = 0
			arg_75_0.pinSide = nil
			arg_75_0.target = nil
			arg_75_0.candidate = nil
			arg_75_0._predActive = false
			arg_75_0._predSrcSym = nil
			arg_75_0._predTarget = nil
			arg_75_0._predTargetSym = nil
			arg_75_0._heldRef = nil
			arg_75_0._heldSym = nil
			arg_75_0.crossPrevLayout = nil
			arg_75_0.crossPrevInfo = nil
			arg_75_0.crossT = 0
		elseif arg_75_0.locked then
			if arg_75_0.target and (arg_75_0.target.kind == "ally" or arg_75_0.target.kind == "enemy") and arg_75_0.target.ref then
				local var_75_42 = arg_75_0.target.ref

				if var_75_42.alive == false or var_75_42.dying == true then
					arg_75_0.locked = false
					arg_75_0.target = nil

					if arg_75_0.state ~= "IDLE" then
						arg_75_0.state = "PENDING_HIDE"
						arg_75_0.hideT = 0
					end
				end
			end

			if arg_75_0.locked and arg_75_0.target then
				var_58_4(arg_75_0)

				if arg_75_0.target.ref and arg_75_0.target.ref.x and arg_75_0.target.ref.y then
					arg_75_0.target.x = arg_75_0.target.ref.x
					arg_75_0.target.y = arg_75_0.target.ref.y
				end
			end

			if arg_75_4 and arg_75_4.classSelect and not arg_75_4.classSelect.resolving then
				arg_75_0.candidate = nil
				arg_75_0.hoverT = 0
				arg_75_0._predActive = false
				arg_75_0._predSrcSym = nil
				arg_75_0._predTarget = nil
				arg_75_0._predTargetSym = nil
			else
				arg_75_0.candidate = var_58_2(arg_75_4, arg_75_0.mouseX, arg_75_0.mouseY, arg_75_0.target)
			end
		elseif arg_75_4 and arg_75_4.classSelect and not arg_75_4.classSelect.resolving then
			arg_75_0.locked = false
			arg_75_0.state = "IDLE"
			arg_75_0.fade = 0
			arg_75_0.hoverT = 0
			arg_75_0.hideT = 0
			arg_75_0.pinSide = nil
			arg_75_0.target = nil
			arg_75_0.candidate = nil
			arg_75_0._predActive = false
			arg_75_0._predSrcSym = nil
			arg_75_0._predTarget = nil
			arg_75_0._predTargetSym = nil
			arg_75_0._heldRef = nil
			arg_75_0._heldSym = nil
			arg_75_0.crossPrevLayout = nil
			arg_75_0.crossPrevInfo = nil
			arg_75_0.crossT = 0
		elseif arg_75_0.ui and (arg_75_0.ui._shopMode or arg_75_0.ui._stoneMode) then
			arg_75_0.locked = false
			arg_75_0.state = "IDLE"
			arg_75_0.fade = 0
			arg_75_0.hoverT = 0
			arg_75_0.hideT = 0
			arg_75_0.pinSide = nil
			arg_75_0.target = nil
			arg_75_0.candidate = nil
			arg_75_0._predActive = false
			arg_75_0._predSrcSym = nil
			arg_75_0._predTarget = nil
			arg_75_0._predTargetSym = nil
			arg_75_0._heldRef = nil
			arg_75_0._heldSym = nil
			arg_75_0.crossPrevLayout = nil
			arg_75_0.crossPrevInfo = nil
			arg_75_0.crossT = 0
		else
			arg_75_0.candidate = var_58_2(arg_75_4, arg_75_0.mouseX, arg_75_0.mouseY, arg_75_0.target)
		end

		if not arg_75_0.locked and arg_75_0.ui and arg_75_0.ui._dpsHoverTarget then
			local var_75_43 = arg_75_0.ui._dpsHoverTarget

			if var_75_43 and var_75_43.ref then
				arg_75_0.candidate = {
					kind = var_75_43.kind or "roster",
					ref = var_75_43.ref,
					sym = var_75_43.sym or var_75_43.ref.sym,
					x = var_75_43.ref.x or var_75_43.x or arg_75_0.mouseX,
					y = var_75_43.ref.y or var_75_43.y or arg_75_0.mouseY
				}
			end
		end

		if arg_75_4 and arg_75_4.mode ~= "battle" then
			if arg_75_4.absorbMode == false then
				arg_75_0._predActive = false
				arg_75_0._predSrcSym = nil
				arg_75_0._predTarget = nil
				arg_75_0._predTargetSym = nil
			else
				local var_75_44
				local var_75_45

				if arg_75_0._heldRef and arg_75_0._showConfirm then
					arg_75_0._showConfirm = false
					arg_75_0._confirmT = 0
					arg_75_0.state = "IDLE"
					arg_75_0.target = nil
					arg_75_0.fade = 0
				end

				if arg_75_0._heldRef and not arg_75_0._heldRef.isShadowMinion then
					local var_75_46 = {}

					if arg_75_4.areRosterSpritesTouching then
						for iter_75_6, iter_75_7 in ipairs(arg_75_4.rosterUnits) do
							if iter_75_7 and iter_75_7 ~= arg_75_0._heldRef and not iter_75_7.isShadowMinion then
								local var_75_47 = arg_75_4.rosterSymbols[iter_75_6]

								if arg_75_4:areRosterSpritesTouching(arg_75_0._heldRef, arg_75_0._heldSym, iter_75_7, var_75_47) then
									local var_75_48 = (iter_75_7.y or 0) - (arg_75_0._heldRef.y or 0)
									local var_75_49 = (iter_75_7.x or 0) - (arg_75_0._heldRef.x or 0)

									table.insert(var_75_46, {
										ref = iter_75_7,
										sym = var_75_47,
										dy = var_75_48,
										dx = var_75_49,
										i = iter_75_6
									})
								end
							end
						end
					end

					if #var_75_46 > 0 then
						table.sort(var_75_46, function(arg_77_0, arg_77_1)
							local var_77_0 = arg_77_0.dy >= 0 and 1 or 0
							local var_77_1 = arg_77_1.dy >= 0 and 1 or 0

							if var_77_0 ~= var_77_1 then
								return var_77_1 < var_77_0
							end

							local var_77_2 = math.abs(arg_77_0.dy)
							local var_77_3 = math.abs(arg_77_1.dy)

							if var_77_2 ~= var_77_3 then
								return var_77_2 < var_77_3
							end

							local var_77_4 = math.abs(arg_77_0.dx)
							local var_77_5 = math.abs(arg_77_1.dx)

							if var_77_4 ~= var_77_5 then
								return var_77_4 < var_77_5
							end

							return arg_77_0.i < arg_77_1.i
						end)

						var_75_44 = var_75_46[1].ref
						var_75_45 = var_75_46[1].sym
					end
				end

				local var_75_50 = rawget(_G, "Tutorial")

				if var_75_50 and var_75_50.isAllowedAbsorbPair and (var_75_50.isAbsorbDragStep and var_75_50.isAbsorbDragStep() or var_75_50.isFreeAbsorbStep and var_75_50.isFreeAbsorbStep()) and var_75_44 and arg_75_0._heldRef and not var_75_50.isAllowedAbsorbPair(arg_75_0._heldRef, var_75_44) then
					var_75_44 = nil
					var_75_45 = nil
				end

				local var_75_51 = arg_75_0._heldRef
				local var_75_52 = arg_75_0._heldSym

				arg_75_0._predOver = arg_75_0._predOver or 0
				arg_75_0._predOut = arg_75_0._predOut or 0
				arg_75_0._predActive = arg_75_0._predActive or false

				if var_75_44 and var_75_51 then
					if not arg_75_0._predTarget or arg_75_0._predTarget ~= var_75_44 then
						arg_75_0._predOver = 0
					end

					arg_75_0._predTarget = var_75_44
					arg_75_0._predTargetSym = var_75_45
					arg_75_0._predOver = arg_75_0._predOver + arg_75_1
					arg_75_0._predOut = 0

					if not arg_75_0._predActive and arg_75_0._predOver >= 0.2 then
						arg_75_0._predActive = true
						arg_75_0._predSrcSym = var_75_52
						arg_75_0.crossPrevLayout = arg_75_0.cache and arg_75_0.cache.layout or nil
						arg_75_0.crossPrevInfo = arg_75_0.cache and arg_75_0.cache.info or nil
						arg_75_0.crossT = 0
						arg_75_0.target = {
							kind = "roster",
							ref = var_75_44,
							sym = var_75_45,
							x = var_75_44.x,
							y = var_75_44.y
						}

						var_58_4(arg_75_0)
					end
				else
					if arg_75_0._predActive then
						local var_75_53 = arg_75_0._heldRef and {
							kind = "roster",
							ref = arg_75_0._heldRef,
							sym = arg_75_0._heldSym,
							x = arg_75_0._heldRef.x,
							y = arg_75_0._heldRef.y
						} or arg_75_0.locked and arg_75_0.lockedTarget

						if var_75_53 and arg_75_0.target and arg_75_0.target.ref ~= var_75_53.ref then
							arg_75_0.crossPrevLayout = arg_75_0.cache and arg_75_0.cache.layout or nil
							arg_75_0.crossPrevInfo = arg_75_0.cache and arg_75_0.cache.info or nil
							arg_75_0.crossT = 0
							arg_75_0.target = var_75_53

							var_58_4(arg_75_0)
						end

						arg_75_0._predOut = arg_75_0._predOut + arg_75_1

						if arg_75_0._predOut >= 0.1 then
							arg_75_0._predActive = false
							arg_75_0._predSrcSym = nil

							local var_75_54 = arg_75_0._heldRef and {
								kind = "roster",
								ref = arg_75_0._heldRef,
								sym = arg_75_0._heldSym,
								x = arg_75_0._heldRef.x,
								y = arg_75_0._heldRef.y
							} or arg_75_0.locked and arg_75_0.lockedTarget

							if var_75_54 and (not arg_75_0.target or arg_75_0.target.ref ~= var_75_54.ref) then
								arg_75_0.crossPrevLayout = nil
								arg_75_0.crossPrevInfo = nil
								arg_75_0.crossT = 0
								arg_75_0.target = var_75_54

								var_58_4(arg_75_0)
							end
						end
					end

					arg_75_0._predOver = 0
					arg_75_0._predTarget = nil
					arg_75_0._predTargetSym = nil
				end

				if arg_75_0._predActive and arg_75_0._predTarget then
					arg_75_0.candidate = {
						kind = "roster",
						ref = arg_75_0._predTarget,
						sym = arg_75_0._predTargetSym,
						x = arg_75_0._predTarget.x,
						y = arg_75_0._predTarget.y
					}
				end

				if arg_75_0._predActive and (not arg_75_0._heldRef or not arg_75_0._heldRef._held) then
					arg_75_0._predActive = false
					arg_75_0._predSrcSym = nil

					if arg_75_0.locked and arg_75_0.lockedTarget then
						arg_75_0.target = arg_75_0.lockedTarget
						arg_75_0.state = "VISIBLE"
						arg_75_0.fade = 1

						var_58_4(arg_75_0)
					else
						arg_75_0.state = "IDLE"
						arg_75_0.target = nil
						arg_75_0.fade = 0
					end
				end
			end
		else
			arg_75_0._predActive = false
			arg_75_0._showConfirm = false
			arg_75_0._predSrcSym = nil
			arg_75_0._predTarget = nil
			arg_75_0._predTargetSym = nil
		end

		if arg_75_0.candidate then
			arg_75_0.lastSelectedRef = arg_75_0.candidate.ref
		end

		local var_75_55 = arg_75_0.candidate
		local var_75_56 = arg_75_0._lastHoverRef
		local var_75_57 = arg_75_0._lastHoverKind

		if not (arg_75_0._heldRef and arg_75_0._heldRef._held or arg_75_0._heldRef ~= nil) and var_75_55 and var_75_55.ref and (var_75_55.ref ~= var_75_56 or var_75_55.kind ~= var_75_57) then
			local var_75_58 = arg_75_4 and arg_75_4.assets and arg_75_4.assets.audio and arg_75_4.assets.audio.unitHover

			if var_75_58 then
				local var_75_59 = arg_75_0.ui and arg_75_0.ui.menuSettings and arg_75_0.ui.menuSettings.sfxVolume or 1
				local var_75_60 = arg_75_4.assets and arg_75_4.assets.audioBaseGain and arg_75_4.assets.audioBaseGain.unitHover or 1

				if var_75_58.setVolume then
					var_75_58:setVolume(var_75_59 * var_75_60)
				end

				if var_75_58.isPlaying and var_75_58:isPlaying() then
					var_75_58:stop()
				end

				var_75_58:play()
			end
		end

		if var_75_55 and var_75_55.ref then
			arg_75_0._lastHoverRef = var_75_55.ref
			arg_75_0._lastHoverKind = var_75_55.kind
		else
			arg_75_0._lastHoverRef = nil
			arg_75_0._lastHoverKind = nil
		end

		if arg_75_0.target and arg_75_0.target.ref then
			local var_75_61 = arg_75_4 and arg_75_4.mode == "battle"
			local var_75_62 = arg_75_4 and arg_75_4.gameOver and arg_75_0.target.kind == "ally"
			local var_75_63 = arg_75_4 and arg_75_4.sandboxMode == true and arg_75_0.target.kind == "enemy"

			if var_75_61 and arg_75_0.target.kind == "roster" or not var_75_61 and not var_75_62 and (arg_75_0.target.kind == "ally" or arg_75_0.target.kind == "enemy" and not var_75_63) then
				arg_75_0.locked = false
				arg_75_0.target = nil
				arg_75_0.lockedTarget = nil
				arg_75_0.state = "IDLE"
				arg_75_0.fade = 0
			end
		end

		if arg_75_0.locked then
			if arg_75_0.state == "IDLE" then
				arg_75_0.state = "VISIBLE"
				arg_75_0.fade = 1
			end

			if arg_75_0.fade < 1 then
				arg_75_0.fade = math.min(1, arg_75_0.fade + arg_75_1 / var_0_38)
			end

			if not arg_75_0._predActive then
				if arg_75_0.lockedTarget and (not arg_75_0.target or arg_75_0.target.ref ~= arg_75_0.lockedTarget.ref) then
					arg_75_0.target = arg_75_0.lockedTarget
					arg_75_0.pinSide = nil

					var_58_4(arg_75_0)
				end

				if arg_75_0.target and arg_75_0.target.ref then
					arg_75_0.target.x = arg_75_0.target.ref.x
					arg_75_0.target.y = arg_75_0.target.ref.y
				end
			end

			var_58_4(arg_75_0)
		elseif arg_75_0.state == "IDLE" then
			arg_75_0.state = "HOVERING"
			arg_75_0.hoverT = 0
		elseif arg_75_0.state == "HOVERING" then
			if not arg_75_0.candidate then
				arg_75_0.state = "IDLE"
				arg_75_0.hoverT = 0
			elseif not arg_75_0.target or not var_58_3(arg_75_0.candidate, arg_75_0.target) then
				arg_75_0.hoverT = arg_75_0.hoverT + arg_75_1

				if arg_75_0.hoverT >= var_0_36 then
					arg_75_0.target = arg_75_0.candidate
					arg_75_0.state = "VISIBLE"
					arg_75_0.fade = 0
					arg_75_0.pinSide = nil

					var_58_4(arg_75_0)
				end
			end
		elseif arg_75_0.state == "VISIBLE" then
			if arg_75_0.fade < 1 then
				arg_75_0.fade = math.min(1, arg_75_0.fade + arg_75_1 / var_0_38)
			end

			if not arg_75_0.candidate then
				arg_75_0.state = "PENDING_HIDE"
				arg_75_0.hideT = 0
			elseif not var_58_3(arg_75_0.candidate, arg_75_0.target) then
				arg_75_0.crossPrevLayout = arg_75_0.cache and arg_75_0.cache.layout or nil
				arg_75_0.crossPrevInfo = arg_75_0.cache and arg_75_0.cache.info or nil
				arg_75_0.crossT = 0
				arg_75_0.target = arg_75_0.candidate
				arg_75_0.pinSide = nil

				var_58_4(arg_75_0)
			else
				var_58_4(arg_75_0)
			end
		elseif arg_75_0.state == "PENDING_HIDE" then
			arg_75_0.hideT = arg_75_0.hideT + arg_75_1

			if arg_75_0.candidate and var_58_3(arg_75_0.candidate, arg_75_0.target) then
				arg_75_0.state = "VISIBLE"
				arg_75_0.fade = 1
			elseif arg_75_0.candidate and not var_58_3(arg_75_0.candidate, arg_75_0.target) then
				arg_75_0.crossPrevLayout = arg_75_0.cache and arg_75_0.cache.layout or nil
				arg_75_0.crossPrevInfo = arg_75_0.cache and arg_75_0.cache.info or nil
				arg_75_0.crossT = 0
				arg_75_0.target = arg_75_0.candidate
				arg_75_0.state = "VISIBLE"
				arg_75_0.pinSide = nil

				var_58_4(arg_75_0)
			elseif arg_75_0.hideT >= var_0_37 then
				if arg_75_0.fade > 0 then
					arg_75_0.fade = math.max(0, arg_75_0.fade - arg_75_1 / var_0_38)

					if arg_75_0.fade <= 0 then
						arg_75_0.state = "IDLE"
						arg_75_0.target = nil
						arg_75_0.pinSide = nil
					end
				else
					arg_75_0.state = "IDLE"
					arg_75_0.target = nil
					arg_75_0.pinSide = nil
				end
			else
				arg_75_0.fade = 1
			end
		end
	end

	function var_58_0.beginFrame(arg_78_0)
		arg_78_0._outlineDrawnThisFrame = false
		arg_78_0._selectedOutlineDrawnThisFrame = false
		arg_78_0._statIconHover = nil
	end

	function var_58_0.isHighlighted(arg_79_0, arg_79_1, arg_79_2)
		local var_79_0 = arg_79_0.battlefield

		if var_79_0 and var_79_0.imprintModal and var_79_0.imprintModal.active then
			return false
		end

		if arg_79_0.ui and arg_79_0.ui.pauseOverlayState and arg_79_0.ui.pauseOverlayState.active then
			return false
		end

		local var_79_1 = arg_79_0.target and arg_79_0.target.kind == arg_79_1 and arg_79_0.target.ref == arg_79_2
		local var_79_2 = arg_79_0.candidate and arg_79_0.candidate.kind == arg_79_1 and arg_79_0.candidate.ref == arg_79_2
		local var_79_3 = arg_79_1 == "roster" and arg_79_0._heldRef == arg_79_2
		local var_79_4 = arg_79_1 == "roster" and arg_79_0._predTarget == arg_79_2

		return var_79_1 or var_79_2 or var_79_3 or var_79_4
	end

	local function var_58_5(arg_80_0)
		local var_80_0 = love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_80_1 = 0.5 + 0.5 * math.sin(var_80_0 * 8)

		return 0.68 + 0.32 * (var_80_1 * var_80_1)
	end

	local function var_58_6(arg_81_0)
		local var_81_0 = love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_81_1 = 0.5 + 0.5 * math.sin(var_81_0 * 8)

		return var_81_1 * var_81_1
	end

	local function var_58_7(arg_82_0, arg_82_1)
		if not arg_82_1 then
			return
		end

		local var_82_0 = arg_82_0.area

		if not var_82_0 then
			return
		end

		local var_82_1 = math.floor(12 * var_58_0.ui.scale)
		local var_82_2 = var_82_0.x + var_82_1
		local var_82_3 = var_82_0.y + var_82_1 + math.floor(28 * var_58_0.ui.scale)
		local var_82_4 = var_82_0.w - var_82_1 * 2
		local var_82_5 = var_82_0.h - var_82_1 * 2 - math.floor(28 * var_58_0.ui.scale)
		local var_82_6 = 32
		local var_82_7

		if arg_82_0.mode == "battle" then
			if var_58_0.ui.battle and var_58_0.ui.battle.allySize32 and var_58_0.ui.battle.allySize32 > 0 then
				var_82_7 = math.max(var_82_6, math.floor(var_58_0.ui.battle.allySize32 / var_82_6) * var_82_6)
			else
				local var_82_8 = math.floor(math.min(var_82_4, var_82_5) * 0.12 * (var_58_0.ui.battle and var_58_0.ui.battle.unitScale or 1))

				var_82_7 = var_82_6 * math.max(1, math.ceil(var_82_8 / var_82_6))
			end
		elseif var_58_0.ui.battle and var_58_0.ui.battle.allySize32 and var_58_0.ui.battle.allySize32 > 0 then
			var_82_7 = math.max(var_82_6, math.floor(var_58_0.ui.battle.allySize32 / var_82_6) * var_82_6)
		else
			local var_82_9 = math.floor(math.min(var_82_4, var_82_5) * 0.12 * (var_58_0.ui.battle and var_58_0.ui.battle.rosterScale or 1))

			var_82_7 = var_82_6 * math.max(1, math.ceil(var_82_9 / var_82_6))
		end

		local var_82_10 = arg_82_0.assets
		local var_82_11
		local var_82_12 = "idle"
		local var_82_13 = 1

		if (arg_82_0.mode == "battle" or arg_82_0.gameOver) and arg_82_1.kind == "ally" and arg_82_1.ref then
			if arg_82_1.ref.sym == "W" then
				if var_82_10 and var_82_10.units then
					if arg_82_1.ref.subclassKey and var_82_10.units[arg_82_1.ref.subclassKey] then
						var_82_11 = var_82_10.units[arg_82_1.ref.subclassKey]
					elseif arg_82_1.ref.subclassName and var_82_10.units[arg_82_1.ref.subclassName] then
						var_82_11 = var_82_10.units[arg_82_1.ref.subclassName]
					else
						local var_82_14 = arg_82_1.ref.rank or arg_82_1.ref.star or 1

						if var_82_14 >= 3 and var_82_10.units.MiniSwordMan03 then
							var_82_11 = var_82_10.units.MiniSwordMan03
						elseif var_82_14 >= 2 and var_82_10.units.MiniSwordMan02 then
							var_82_11 = var_82_10.units.MiniSwordMan02
						else
							var_82_11 = var_82_10.units.MiniSwordMan
						end
					end
				end
			elseif arg_82_1.ref.sym == "A" then
				if var_82_10 and var_82_10.units then
					local var_82_15 = arg_82_1.ref.rank or arg_82_1.ref.star or 1

					if var_82_15 >= 3 and var_82_10.units.MiniArcherMan03 then
						var_82_11 = var_82_10.units.MiniArcherMan03
					elseif var_82_15 >= 2 and var_82_10.units.MiniArcherMan02 then
						var_82_11 = var_82_10.units.MiniArcherMan02
					else
						var_82_11 = var_82_10.units.MiniArcherMan
					end
				end
			elseif arg_82_1.ref.sym == "S" then
				if var_82_10 and var_82_10.units then
					local var_82_16 = arg_82_1.ref.rank or arg_82_1.ref.star or 1

					if var_82_16 >= 3 and var_82_10.units.MiniSpearMan03 then
						var_82_11 = var_82_10.units.MiniSpearMan03
					elseif var_82_16 >= 2 and var_82_10.units.MiniSpearMan02 then
						var_82_11 = var_82_10.units.MiniSpearMan02
					else
						var_82_11 = var_82_10.units.MiniSpearMan
					end
				end
			elseif arg_82_1.ref.sym == "H" and var_82_10 and var_82_10.units then
				if arg_82_1.ref.subclassKey and var_82_10.units[arg_82_1.ref.subclassKey] then
					var_82_11 = var_82_10.units[arg_82_1.ref.subclassKey]
				elseif arg_82_1.ref.subclassName and var_82_10.units[arg_82_1.ref.subclassName] then
					var_82_11 = var_82_10.units[arg_82_1.ref.subclassName]
				elseif arg_82_1.ref.subclass and var_82_10.units[arg_82_1.ref.subclass] then
					var_82_11 = var_82_10.units[arg_82_1.ref.subclass]
				else
					local var_82_17 = arg_82_1.ref.rank or arg_82_1.ref.star or 1
					local var_82_18 = var_0_5(arg_82_1.ref.grade)

					if var_82_17 <= 1 and var_82_18 == "advanced" and var_82_10.units.철기병 then
						var_82_11 = var_82_10.units.철기병
					elseif var_82_17 >= 3 and var_82_10.units.MiniHorseMan03 then
						var_82_11 = var_82_10.units.MiniHorseMan03
					elseif var_82_17 >= 2 and var_82_10.units.돌격병 then
						var_82_11 = var_82_10.units.돌격병
					else
						var_82_11 = var_82_10.units.기병
					end
				end
			end

			if arg_82_1.ref.anim then
				var_82_12 = arg_82_1.ref.anim.name or "idle"
				var_82_13 = arg_82_1.ref.anim.frame or 1
			end
		elseif arg_82_0.mode == "battle" and arg_82_1.kind == "enemy" and arg_82_1.ref then
			local var_82_19 = arg_82_1.ref

			if var_82_10 and var_82_10.units then
				local var_82_20 = tostring(var_82_19.kind or "")

				var_82_11 = var_82_19.skin and var_82_10.units[var_82_19.skin] or var_82_20 ~= "" and var_82_10.units[var_82_20] or var_82_20 ~= "" and var_82_10.units["Mini" .. var_82_20] or nil
			end

			if var_82_19.anim then
				var_82_12 = var_82_19.anim.name or "idle"
				var_82_13 = var_82_19.anim.frame or 1
			end
		else
			local var_82_21 = arg_82_1.sym

			if var_82_21 == "W" then
				if var_82_10 and var_82_10.units then
					if arg_82_1.ref and arg_82_1.ref.subclassKey and var_82_10.units[arg_82_1.ref.subclassKey] then
						var_82_11 = var_82_10.units[arg_82_1.ref.subclassKey]
					elseif arg_82_1.ref and arg_82_1.ref.subclassName and var_82_10.units[arg_82_1.ref.subclassName] then
						var_82_11 = var_82_10.units[arg_82_1.ref.subclassName]
					else
						local var_82_22 = arg_82_1.ref and (arg_82_1.ref.rank or arg_82_1.ref.star) or 1

						if var_82_22 >= 3 and var_82_10.units.MiniSwordMan03 then
							var_82_11 = var_82_10.units.MiniSwordMan03
						elseif var_82_22 >= 2 and var_82_10.units.MiniSwordMan02 then
							var_82_11 = var_82_10.units.MiniSwordMan02
						else
							var_82_11 = var_82_10.units.MiniSwordMan
						end
					end
				end
			elseif var_82_21 == "A" then
				if var_82_10 and var_82_10.units then
					local var_82_23 = arg_82_1.ref and (arg_82_1.ref.rank or arg_82_1.ref.star) or 1

					if var_82_23 >= 3 and var_82_10.units.MiniArcherMan03 then
						var_82_11 = var_82_10.units.MiniArcherMan03
					elseif var_82_23 >= 2 and var_82_10.units.MiniArcherMan02 then
						var_82_11 = var_82_10.units.MiniArcherMan02
					else
						var_82_11 = var_82_10.units.MiniArcherMan
					end
				end
			elseif var_82_21 == "S" then
				if var_82_10 and var_82_10.units then
					local var_82_24 = arg_82_1.ref and (arg_82_1.ref.rank or arg_82_1.ref.star) or 1

					if var_82_24 >= 3 and var_82_10.units.MiniSpearMan03 then
						var_82_11 = var_82_10.units.MiniSpearMan03
					elseif var_82_24 >= 2 and var_82_10.units.MiniSpearMan02 then
						var_82_11 = var_82_10.units.MiniSpearMan02
					else
						var_82_11 = var_82_10.units.MiniSpearMan
					end
				end
			elseif var_82_21 == "H" then
				if var_82_10 and var_82_10.units then
					if arg_82_1.ref and arg_82_1.ref.subclassKey and var_82_10.units[arg_82_1.ref.subclassKey] then
						var_82_11 = var_82_10.units[arg_82_1.ref.subclassKey]
					elseif arg_82_1.ref and arg_82_1.ref.subclassName and var_82_10.units[arg_82_1.ref.subclassName] then
						var_82_11 = var_82_10.units[arg_82_1.ref.subclassName]
					elseif arg_82_1.ref and arg_82_1.ref.subclass and var_82_10.units[arg_82_1.ref.subclass] then
						var_82_11 = var_82_10.units[arg_82_1.ref.subclass]
					else
						local var_82_25 = arg_82_1.ref and (arg_82_1.ref.rank or arg_82_1.ref.star) or 1
						local var_82_26 = arg_82_1.ref and var_0_5(arg_82_1.ref.grade) or "normal"

						if var_82_25 <= 1 and var_82_26 == "advanced" and var_82_10.units.철기병 then
							var_82_11 = var_82_10.units.철기병
						elseif var_82_25 >= 3 and var_82_10.units.MiniHorseMan03 then
							var_82_11 = var_82_10.units.MiniHorseMan03
						elseif var_82_25 >= 2 and var_82_10.units.돌격병 then
							var_82_11 = var_82_10.units.돌격병
						else
							var_82_11 = var_82_10.units.기병
						end
					end
				end
			elseif var_82_21 == "M" then
				if var_82_10 and var_82_10.units then
					local var_82_27 = arg_82_1.ref and (arg_82_1.ref.rank or arg_82_1.ref.star) or 1
					local var_82_28 = arg_82_1.ref and var_0_5(arg_82_1.ref.grade) or "normal"

					if var_82_27 >= 3 then
						var_82_11 = var_82_10.units.MiniMage03 or var_82_10.units["현자 엘프"] or var_82_10.units.MiniMage
					elseif var_82_27 >= 2 then
						var_82_11 = var_82_10.units.MiniMage02 or var_82_10.units.암흑술사 or var_82_10.units.MiniMage
					elseif var_82_27 <= 1 and var_82_28 == "advanced" and var_82_10.units.마도사 then
						var_82_11 = var_82_10.units.마도사
					else
						var_82_11 = var_82_10.units.MiniMage or var_82_10.units.마법사
					end
				end
			elseif var_82_21 == "D" and var_82_10 and var_82_10.units then
				local var_82_29 = arg_82_1.ref and (arg_82_1.ref.rank or arg_82_1.ref.star) or 1
				local var_82_30 = arg_82_1.ref and var_0_5(arg_82_1.ref.grade) or "normal"

				if var_82_29 >= 3 then
					var_82_11 = var_82_10.units.MiniPrinceMan03 or var_82_10.units.검황 or var_82_10.units.MiniPrinceMan
				elseif var_82_29 >= 2 then
					var_82_11 = var_82_10.units.MiniPrinceMan02 or var_82_10.units.황제 or var_82_10.units.MiniPrinceMan
				elseif var_82_29 <= 1 and var_82_30 == "advanced" and var_82_10.units.드루이드 then
					var_82_11 = var_82_10.units.드루이드
				else
					var_82_11 = var_82_10.units.MiniPrinceMan or var_82_10.units.결투사
				end
			end

			if arg_82_1.ref and arg_82_1.ref.anim then
				var_82_12 = arg_82_1.ref.anim.name or "idle"
				var_82_13 = arg_82_1.ref.anim.frame or 1
			end
		end

		local var_82_31 = false

		if var_82_11 and var_82_11.image and var_82_11.quads and var_82_11.quads[var_82_12] then
			local var_82_32 = var_82_11.animations and var_82_11.animations[var_82_12] or var_82_11.animations and var_82_11.animations.idle or {
				frames = 1
			}
			local var_82_33 = math.max(1, math.min(var_82_13, var_82_32.frames or var_82_13))

			if var_82_11.quads[var_82_12][var_82_33] and arg_82_1 and arg_82_1.x and arg_82_1.y then
				local var_82_34 = var_0_16(arg_82_1.x - var_82_7 / 2)
				local var_82_35 = var_0_16(arg_82_1.y - var_82_7 / 2)
				local var_82_36 = var_82_7 / var_82_11.frameW
				local var_82_37 = var_82_7 / var_82_11.frameH

				var_58_0:drawOutlineSprite(var_82_11, var_82_12, var_82_33, var_82_34, var_82_35, var_82_36, var_82_37, nil, nil, arg_82_1.ref)

				var_82_31 = true
			end
		end

		if not var_82_31 then
			love.graphics.setColor(var_0_31.hint)
			love.graphics.setLineWidth(1)
			love.graphics.setLineStyle("rough")

			local var_82_38 = var_0_16(arg_82_1.x - var_82_7 / 2)
			local var_82_39 = var_0_16(arg_82_1.y - var_82_7 / 2)

			love.graphics.rectangle("line", var_82_38, var_82_39, var_82_7, var_82_7)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local function var_58_8(arg_83_0)
		if arg_83_0._outlineShader then
			return arg_83_0._outlineShader
		end

		arg_83_0._outlineShader = love.graphics.newShader(" \n      extern vec2 texelSize;\n      extern vec4 outlineColor;\n      extern float threshold;\n      extern number u_usePrism; \n      extern number u_time;     \n      // UV rect for atlas clamping: x, y, width, height (0..1)\n      extern vec4 u_frameUV;     \n      // Radial mask (optional)\n      extern number u_useRadMask; \n      extern vec2 u_center;       \n      extern float u_innerRadius; \n      // Outer-only gating (optional)\n      extern number u_useOuterOnly; \n      extern float u_step;          \n      // Ring exclusion mask in SCREEN space\n      extern number u_useRingMask;  \n      extern vec2   u_ringCenter;   \n      extern float  u_ringInner;    \n      extern float  u_ringOuter;    \n      extern number u_selectedSweep;\n      extern vec2 u_sweepCenter;\n\n      vec4 safeTexel(Image tex, vec2 tc) {\n        // Use a small epsilon to avoid floating point precision issues at bounds\n        float eps = 0.00001;\n        vec4 color = Texel(tex, clamp(tc, u_frameUV.xy, u_frameUV.xy + u_frameUV.zw));\n        vec2 mask = step(u_frameUV.xy - eps, tc) * step(tc, u_frameUV.xy + u_frameUV.zw + eps);\n        return color * (mask.x * mask.y);\n      }\n\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        float a0 = safeTexel(tex, tc).a;\n        if (a0 <= threshold) {\n          float a1 = safeTexel(tex, tc + vec2(texelSize.x, 0.0)).a;\n          float a2 = safeTexel(tex, tc + vec2(-texelSize.x, 0.0)).a;\n          float a3 = safeTexel(tex, tc + vec2(0.0, texelSize.y)).a;\n          float a4 = safeTexel(tex, tc + vec2(0.0, -texelSize.y)).a;\n          float a5 = safeTexel(tex, tc + vec2(texelSize.x, texelSize.y)).a;\n          float a6 = safeTexel(tex, tc + vec2(-texelSize.x, texelSize.y)).a;\n          float a7 = safeTexel(tex, tc + vec2(texelSize.x, -texelSize.y)).a;\n          float a8 = safeTexel(tex, tc + vec2(-texelSize.x, -texelSize.y)).a;\n          float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n          if (neighbor > threshold) {\n            if (u_useRadMask > 0.5) {\n              float r = length(tc - u_center);\n              if (r < u_innerRadius) return vec4(0.0);\n            }\n            if (u_useOuterOnly > 0.5) {\n              vec2 dir = tc - u_center;\n              float len = length(dir);\n              if (len > 0.0001) {\n                vec2 stepv = dir * (u_step / len);\n                float aOut = safeTexel(tex, tc + stepv).a;\n                if (aOut > threshold) return vec4(0.0);\n              }\n            }\n            if (u_useRingMask > 0.5) {\n              float d = length(sc - u_ringCenter);\n              if (d >= u_ringInner && d <= u_ringOuter) return vec4(0.0);\n            }\n            if (u_usePrism > 0.5) {\n              float p = (sc.x * 0.06 + sc.y * 0.04) + u_time * 1.5;\n              float pr = 0.70 + 0.30 * sin(p + 0.0);\n              float pg = 0.65 + 0.35 * sin(p + 2.1);\n              float pb = 0.75 + 0.25 * sin(p + 4.2);\n              vec3 rgb = clamp(vec3(pr, pg, pb), 0.0, 1.0);\n              if (u_selectedSweep > 0.5) {\n                vec2 d = tc - u_sweepCenter;\n                float angle = atan(d.y, d.x) / 6.2831853 + 0.5;\n                float sweepPos = fract(angle - u_time * 0.55);\n                float sweep = 1.0 - smoothstep(0.0, 0.16, abs(sweepPos - 0.5));\n                rgb = mix(rgb, vec3(1.0, 0.95, 0.72), sweep * 0.75);\n              }\n              return vec4(rgb, outlineColor.a);\n            }\n            if (u_selectedSweep > 0.5) {\n              vec2 d = tc - u_sweepCenter;\n              float angle = atan(d.y, d.x) / 6.2831853 + 0.5;\n              float sweepPos = fract(angle - u_time * 0.55);\n              float sweep = 1.0 - smoothstep(0.0, 0.16, abs(sweepPos - 0.5));\n              vec3 rgb = mix(outlineColor.rgb, vec3(1.0, 0.92, 0.58), sweep * 0.85);\n              float alpha = min(1.0, outlineColor.a + sweep * 0.25);\n              return vec4(rgb, alpha);\n            }\n            return outlineColor;\n          }\n        }\n        return vec4(0.0,0.0,0.0,0.0);\n      }\n    ")

		return arg_83_0._outlineShader
	end

	local function var_58_9(arg_84_0)
		if arg_84_0._innerOutlineShader then
			return arg_84_0._innerOutlineShader
		end

		arg_84_0._innerOutlineShader = love.graphics.newShader(" \n      extern vec2 texelSize;\n      extern vec4 outlineColor;\n      extern float threshold;\n      // Optional radial mask to suppress inner-hole edges\n      extern number u_useRadMask; // 0 or 1\n      extern vec2 u_center;       // texture coords 0..1\n      extern float u_innerRadius; // texture coord units\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        float a0 = Texel(tex, tc).a;\n        if (a0 > threshold) {\n          float a1 = Texel(tex, tc + vec2(texelSize.x, 0.0)).a;\n          float a2 = Texel(tex, tc + vec2(-texelSize.x, 0.0)).a;\n          float a3 = Texel(tex, tc + vec2(0.0, texelSize.y)).a;\n          float a4 = Texel(tex, tc + vec2(0.0, -texelSize.y)).a;\n          float a5 = Texel(tex, tc + vec2(texelSize.x, texelSize.y)).a;\n          float a6 = Texel(tex, tc + vec2(-texelSize.x, texelSize.y)).a;\n          float a7 = Texel(tex, tc + vec2(texelSize.x, -texelSize.y)).a;\n          float a8 = Texel(tex, tc + vec2(-texelSize.x, -texelSize.y)).a;\n          float neighborMin = min(min(min(a1,a2),min(a3,a4)), min(min(a5,a6),min(a7,a8)));\n          if (neighborMin <= threshold) {\n            if (u_useRadMask > 0.5) {\n              float r = length(tc - u_center);\n              if (r < u_innerRadius) return vec4(0.0);\n            }\n            return outlineColor;\n          }\n        }\n        return vec4(0.0,0.0,0.0,0.0);\n      }\n    ")

		return arg_84_0._innerOutlineShader
	end

	function var_58_0.drawOutlineSprite(arg_85_0, arg_85_1, arg_85_2, arg_85_3, arg_85_4, arg_85_5, arg_85_6, arg_85_7, arg_85_8, arg_85_9, arg_85_10)
		if not arg_85_1 or not arg_85_1.image or not arg_85_1.quads or not arg_85_1.quads[arg_85_2] then
			return
		end

		local var_85_0 = arg_85_0.battlefield

		if var_85_0 and var_85_0.imprintModal and var_85_0.imprintModal.active then
			return
		end

		if arg_85_0.ui and arg_85_0.ui.pauseOverlayState and arg_85_0.ui.pauseOverlayState.active then
			return
		end

		local var_85_1 = arg_85_1.quads[arg_85_2][arg_85_3]

		if not var_85_1 then
			return
		end

		local var_85_2 = arg_85_4
		local var_85_3 = arg_85_5
		local var_85_4 = arg_85_6
		local var_85_5 = arg_85_7

		if arg_85_10 and arg_85_10.facing == -1 then
			local var_85_6, var_85_7, var_85_8, var_85_9 = var_85_1:getViewport()

			var_85_4 = -arg_85_6
			var_85_2 = arg_85_4 + var_85_8 * math.abs(arg_85_6)
		end

		arg_85_0._outlineShader = var_58_8(arg_85_0)

		local var_85_10 = arg_85_1.image:getWidth()
		local var_85_11 = arg_85_1.image:getHeight()
		local var_85_12 = arg_85_9 ~= nil and arg_85_9 or 1
		local var_85_13 = var_0_29(arg_85_0, arg_85_10 or arg_85_1)
		local var_85_14 = arg_85_8 or var_0_30(arg_85_0, arg_85_10 or arg_85_1)
		local var_85_15 = 0

		if var_85_13 and var_85_14 then
			local var_85_16 = var_85_14.prism
			local var_85_17 = var_58_5(arg_85_0)
			local var_85_18 = var_58_6(arg_85_0)
			local var_85_19 = love.timer and love.timer.getTime and love.timer.getTime() or 0

			var_85_15 = 0.5 + 0.5 * math.sin(var_85_19 * 7)
			var_85_15 = var_85_15 * var_85_15

			local var_85_20 = 0.22 + 0.26 * var_85_18
			local var_85_21 = var_85_14[1] or 1
			local var_85_22 = var_85_14[2] or 1
			local var_85_23 = var_85_14[3] or 1

			var_85_14 = {
				math.min(1, var_85_21 * (1 - var_85_20) + 1 * var_85_20),
				math.min(1, var_85_22 * (1 - var_85_20) + 0.84 * var_85_20),
				math.min(1, var_85_23 * (1 - var_85_20) + 0.42 * var_85_20),
				math.min(1, (var_85_14[4] or 1) * var_85_17)
			}
			var_85_14.prism = var_85_16
		end

		arg_85_0._outlineShader:send("threshold", 0.01)
		arg_85_0._outlineShader:send("u_useRadMask", 0)
		arg_85_0._outlineShader:send("u_innerRadius", 0)

		local var_85_24, var_85_25, var_85_26, var_85_27 = var_85_1:getViewport()

		arg_85_0._outlineShader:send("u_frameUV", {
			var_85_24 / var_85_10,
			var_85_25 / var_85_11,
			var_85_26 / var_85_10,
			var_85_27 / var_85_11
		})

		local var_85_28 = (var_85_24 + var_85_26 / 2) / math.max(1, var_85_10)
		local var_85_29 = (var_85_25 + var_85_27 / 2) / math.max(1, var_85_11)

		arg_85_0._outlineShader:send("u_center", {
			var_85_28,
			var_85_29
		})

		local var_85_30 = var_85_28
		local var_85_31 = var_85_29
		local var_85_32 = arg_85_1.bounds and arg_85_1.bounds[arg_85_2] and arg_85_1.bounds[arg_85_2][arg_85_3]

		var_85_32 = var_85_32 or var_0_28(arg_85_1.imageData, var_85_24, var_85_25, var_85_26, var_85_27)

		if var_85_32 and var_85_32.w and var_85_32.h and var_85_32.w > 0 and var_85_32.h > 0 then
			var_85_30 = (var_85_24 + (var_85_32.x or 0) + var_85_32.w * 0.5) / math.max(1, var_85_10)
			var_85_31 = (var_85_25 + (var_85_32.y or 0) + var_85_32.h * 0.5) / math.max(1, var_85_11)
		end

		arg_85_0._outlineShader:send("u_sweepCenter", {
			var_85_30,
			var_85_31
		})
		arg_85_0._outlineShader:send("u_useOuterOnly", 0)
		arg_85_0._outlineShader:send("u_step", math.max(1 / var_85_10, 1 / var_85_11) * 1.5)
		arg_85_0._outlineShader:send("u_useRingMask", 0)
		arg_85_0._outlineShader:send("u_ringCenter", {
			0,
			0
		})
		arg_85_0._outlineShader:send("u_ringInner", 0)
		arg_85_0._outlineShader:send("u_ringOuter", 0)
		arg_85_0._outlineShader:send("u_selectedSweep", 0)
		arg_85_0._outlineShader:send("u_usePrism", var_85_14 and var_85_14.prism and 1 or 0)
		arg_85_0._outlineShader:send("u_time", love.timer.getTime() % 10000)
		arg_85_0._outlineShader:send("texelSize", {
			var_85_12 / var_85_10,
			var_85_12 / var_85_11
		})
		love.graphics.setShader(arg_85_0._outlineShader)
		love.graphics.setColor(1, 1, 1, 1)

		if var_85_13 then
			arg_85_0._outlineShader:send("u_selectedSweep", 0)
			arg_85_0._outlineShader:send("outlineColor", {
				0,
				0,
				0,
				0.8
			})
			arg_85_0._outlineShader:send("u_usePrism", 0)
			love.graphics.draw(arg_85_1.image, var_85_1, var_0_16(var_85_2), var_0_16(var_85_3), 0, var_85_4, var_85_5)
		end

		arg_85_0._outlineShader:send("u_selectedSweep", var_85_13 and 1 or 0)
		arg_85_0._outlineShader:send("outlineColor", {
			var_85_14[1] or 1,
			var_85_14[2] or 1,
			var_85_14[3] or 1,
			var_85_14[4] or 1
		})
		arg_85_0._outlineShader:send("u_usePrism", var_85_14 and var_85_14.prism and 1 or 0)
		arg_85_0._outlineShader:send("u_time", love.timer.getTime() % 10000)
		love.graphics.draw(arg_85_1.image, var_85_1, var_0_16(var_85_2), var_0_16(var_85_3), 0, var_85_4, var_85_5)

		if var_85_13 and var_85_14 then
			local var_85_33, var_85_34 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add")
			arg_85_0._outlineShader:send("u_selectedSweep", 1)
			arg_85_0._outlineShader:send("outlineColor", {
				var_85_14[1] or 1,
				var_85_14[2] or 1,
				var_85_14[3] or 1,
				(var_85_14[4] or 1) * 0.24
			})
			love.graphics.draw(arg_85_1.image, var_85_1, var_0_16(var_85_2), var_0_16(var_85_3), 0, var_85_4, var_85_5)

			local var_85_35 = var_0_11()

			if var_85_35 then
				love.graphics.setShader(var_85_35)
				love.graphics.setColor(1, 1, 1, 0.4 * var_85_15)
				love.graphics.draw(arg_85_1.image, var_85_1, var_0_16(var_85_2), var_0_16(var_85_3), 0, var_85_4, var_85_5)
			end

			love.graphics.setBlendMode(var_85_33, var_85_34)
		end

		love.graphics.setShader()

		arg_85_0._outlineDrawnThisFrame = true

		if var_85_13 then
			arg_85_0._selectedOutlineDrawnThisFrame = true
		end
	end

	function var_58_0.drawInnerOutlineSprite(arg_86_0, arg_86_1, arg_86_2, arg_86_3, arg_86_4, arg_86_5, arg_86_6, arg_86_7, arg_86_8, arg_86_9, arg_86_10)
		if not arg_86_1 or not arg_86_1.image or not arg_86_1.quads or not arg_86_1.quads[arg_86_2] then
			return
		end

		local var_86_0 = arg_86_1.quads[arg_86_2][arg_86_3]

		if not var_86_0 then
			return
		end

		arg_86_0._innerOutlineShader = var_58_9(arg_86_0)

		local var_86_1 = arg_86_1.image:getWidth()
		local var_86_2 = arg_86_1.image:getHeight()
		local var_86_3 = arg_86_9 ~= nil and arg_86_9 or 1

		arg_86_0._innerOutlineShader:send("texelSize", {
			var_86_3 / var_86_1,
			var_86_3 / var_86_2
		})

		local var_86_4 = arg_86_8 or {
			0,
			0,
			0,
			1
		}

		arg_86_0._innerOutlineShader:send("outlineColor", {
			var_86_4[1] or 0,
			var_86_4[2] or 0,
			var_86_4[3] or 0,
			var_86_4[4] or 1
		})
		arg_86_0._innerOutlineShader:send("threshold", 0.01)

		if arg_86_10 and arg_86_10 > 0 then
			arg_86_0._innerOutlineShader:send("u_useRadMask", 1)
			arg_86_0._innerOutlineShader:send("u_center", {
				0.5,
				0.5
			})
			arg_86_0._innerOutlineShader:send("u_innerRadius", arg_86_10)
		else
			arg_86_0._innerOutlineShader:send("u_useRadMask", 0)
			arg_86_0._innerOutlineShader:send("u_center", {
				0.5,
				0.5
			})
			arg_86_0._innerOutlineShader:send("u_innerRadius", 0)
		end

		love.graphics.setShader(arg_86_0._innerOutlineShader)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_86_1.image, var_86_0, var_0_16(arg_86_4), var_0_16(arg_86_5), 0, arg_86_6, arg_86_7)
		love.graphics.setShader()

		arg_86_0._outlineDrawnThisFrame = true
	end

	function var_58_0.drawOutlineImage(arg_87_0, arg_87_1, arg_87_2, arg_87_3, arg_87_4, arg_87_5, arg_87_6, arg_87_7, arg_87_8, arg_87_9, arg_87_10, arg_87_11, arg_87_12, arg_87_13, arg_87_14, arg_87_15, arg_87_16, arg_87_17)
		if not arg_87_1 then
			return
		end

		local var_87_0 = var_0_29(arg_87_0, arg_87_16)
		local var_87_1 = arg_87_8 or var_0_22
		local var_87_2 = 0

		if var_87_0 and var_87_1 then
			local var_87_3 = var_87_1.prism
			local var_87_4 = var_58_5(arg_87_0)
			local var_87_5 = var_58_6(arg_87_0)
			local var_87_6 = love.timer and love.timer.getTime and love.timer.getTime() or 0

			var_87_2 = 0.5 + 0.5 * math.sin(var_87_6 * 7)
			var_87_2 = var_87_2 * var_87_2

			local var_87_7 = 0.22 + 0.26 * var_87_5
			local var_87_8 = var_87_1[1] or 1
			local var_87_9 = var_87_1[2] or 1
			local var_87_10 = var_87_1[3] or 1

			var_87_1 = {
				math.min(1, var_87_8 * (1 - var_87_7) + 1 * var_87_7),
				math.min(1, var_87_9 * (1 - var_87_7) + 0.84 * var_87_7),
				math.min(1, var_87_10 * (1 - var_87_7) + 0.42 * var_87_7),
				math.min(1, (var_87_1[4] or 1) * var_87_4)
			}
			var_87_1.prism = var_87_3
		end

		arg_87_0._outlineShader = var_58_8(arg_87_0)

		local var_87_11 = arg_87_1:getWidth()
		local var_87_12 = arg_87_1:getHeight()
		local var_87_13 = arg_87_14 ~= nil and arg_87_14 or 1

		arg_87_0._outlineShader:send("texelSize", {
			var_87_13 / var_87_11,
			var_87_13 / var_87_12
		})
		arg_87_0._outlineShader:send("u_usePrism", var_87_1 and var_87_1.prism and 1 or 0)
		arg_87_0._outlineShader:send("u_time", love.timer.getTime() % 10000)
		arg_87_0._outlineShader:send("threshold", 0.01)

		local var_87_14 = arg_87_9 and 1 or 0

		arg_87_0._outlineShader:send("u_useOuterOnly", var_87_14)

		if arg_87_15 then
			local var_87_15, var_87_16, var_87_17, var_87_18 = arg_87_15:getViewport()

			arg_87_0._outlineShader:send("u_frameUV", {
				var_87_15 / var_87_11,
				var_87_16 / var_87_12,
				var_87_17 / var_87_11,
				var_87_18 / var_87_12
			})
		else
			arg_87_0._outlineShader:send("u_frameUV", {
				0,
				0,
				1,
				1
			})
		end

		local var_87_19 = (arg_87_6 or 0) / math.max(1, var_87_11)
		local var_87_20 = (arg_87_7 or 0) / math.max(1, var_87_12)

		if arg_87_15 then
			local var_87_21, var_87_22 = arg_87_15:getViewport()

			var_87_19 = (var_87_21 + (arg_87_6 or 0)) / math.max(1, var_87_11)
			var_87_20 = (var_87_22 + (arg_87_7 or 0)) / math.max(1, var_87_12)
		end

		arg_87_0._outlineShader:send("u_center", {
			var_87_19,
			var_87_20
		})

		local var_87_23 = 0.5
		local var_87_24 = 0.5

		if arg_87_15 then
			local var_87_25, var_87_26, var_87_27, var_87_28 = arg_87_15:getViewport()
			local var_87_29

			if arg_87_17 and arg_87_17.bounds and arg_87_17.quads then
				for iter_87_0, iter_87_1 in pairs(arg_87_17.quads) do
					for iter_87_2, iter_87_3 in ipairs(iter_87_1) do
						if iter_87_3 == arg_87_15 then
							var_87_29 = arg_87_17.bounds[iter_87_0] and arg_87_17.bounds[iter_87_0][iter_87_2]

							break
						end
					end

					if var_87_29 then
						break
					end
				end
			end

			if not var_87_29 then
				local var_87_30 = arg_87_17 and arg_87_17.imageData or var_0_27(arg_87_1)

				var_87_29 = var_0_28(var_87_30, var_87_25, var_87_26, var_87_27, var_87_28)
			end

			if var_87_29 and var_87_29.w and var_87_29.h and var_87_29.w > 0 and var_87_29.h > 0 then
				var_87_23 = (var_87_25 + (var_87_29.x or 0) + var_87_29.w * 0.5) / math.max(1, var_87_11)
				var_87_24 = (var_87_26 + (var_87_29.y or 0) + var_87_29.h * 0.5) / math.max(1, var_87_12)
			else
				var_87_23 = (var_87_25 + var_87_27 * 0.5) / math.max(1, var_87_11)
				var_87_24 = (var_87_26 + var_87_28 * 0.5) / math.max(1, var_87_12)
			end
		else
			local var_87_31 = var_0_27(arg_87_1)
			local var_87_32 = var_0_28(var_87_31, 0, 0, var_87_11, var_87_12)

			if var_87_32 and var_87_32.w and var_87_32.h and var_87_32.w > 0 and var_87_32.h > 0 then
				var_87_23 = ((var_87_32.x or 0) + var_87_32.w * 0.5) / math.max(1, var_87_11)
				var_87_24 = ((var_87_32.y or 0) + var_87_32.h * 0.5) / math.max(1, var_87_12)
			end
		end

		arg_87_0._outlineShader:send("u_sweepCenter", {
			var_87_23,
			var_87_24
		})
		arg_87_0._outlineShader:send("u_step", math.max(1 / var_87_11, 1 / var_87_12) * 1.5)
		arg_87_0._outlineShader:send("u_selectedSweep", 0)
		arg_87_0._outlineShader:send("u_useRadMask", 0)
		arg_87_0._outlineShader:send("u_innerRadius", 0)

		if arg_87_10 and arg_87_11 and arg_87_12 and arg_87_13 then
			arg_87_0._outlineShader:send("u_useRingMask", 1)
			arg_87_0._outlineShader:send("u_ringCenter", {
				arg_87_10,
				arg_87_11
			})
			arg_87_0._outlineShader:send("u_ringInner", arg_87_12)
			arg_87_0._outlineShader:send("u_ringOuter", arg_87_13)
		else
			arg_87_0._outlineShader:send("u_useRingMask", 0)
		end

		love.graphics.setShader(arg_87_0._outlineShader)
		love.graphics.setColor(1, 1, 1, 1)

		if var_87_0 then
			arg_87_0._outlineShader:send("u_selectedSweep", 0)
			arg_87_0._outlineShader:send("outlineColor", {
				0,
				0,
				0,
				0.8
			})
			arg_87_0._outlineShader:send("u_usePrism", 0)

			if arg_87_15 then
				love.graphics.draw(arg_87_1, arg_87_15, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
			else
				love.graphics.draw(arg_87_1, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
			end
		end

		arg_87_0._outlineShader:send("u_selectedSweep", var_87_0 and 1 or 0)
		arg_87_0._outlineShader:send("outlineColor", {
			var_87_1[1] or 1,
			var_87_1[2] or 1,
			var_87_1[3] or 1,
			var_87_1[4] or 1
		})
		arg_87_0._outlineShader:send("u_usePrism", var_87_1 and var_87_1.prism and 1 or 0)
		arg_87_0._outlineShader:send("u_time", love.timer.getTime() % 10000)

		if arg_87_15 then
			love.graphics.draw(arg_87_1, arg_87_15, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
		else
			love.graphics.draw(arg_87_1, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
		end

		if var_87_0 then
			local var_87_33, var_87_34 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add")
			arg_87_0._outlineShader:send("u_selectedSweep", 1)
			arg_87_0._outlineShader:send("outlineColor", {
				var_87_1[1] or 1,
				var_87_1[2] or 1,
				var_87_1[3] or 1,
				(var_87_1[4] or 1) * 0.24
			})

			if arg_87_15 then
				love.graphics.draw(arg_87_1, arg_87_15, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
			else
				love.graphics.draw(arg_87_1, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
			end

			local var_87_35 = var_0_11()

			if var_87_35 then
				love.graphics.setShader(var_87_35)
				love.graphics.setColor(1, 1, 1, 0.4 * var_87_2)

				if arg_87_15 then
					love.graphics.draw(arg_87_1, arg_87_15, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
				else
					love.graphics.draw(arg_87_1, var_0_16(arg_87_2), var_0_16(arg_87_3), 0, arg_87_4 or 1, arg_87_5 or 1, arg_87_6 or 0, arg_87_7 or 0)
				end
			end

			love.graphics.setBlendMode(var_87_33, var_87_34)
		end

		love.graphics.setShader()

		arg_87_0._outlineDrawnThisFrame = true

		if var_87_0 then
			arg_87_0._selectedOutlineDrawnThisFrame = true
		end
	end

	function var_58_0.hitTestImageAlpha(arg_88_0, arg_88_1, arg_88_2, arg_88_3, arg_88_4, arg_88_5, arg_88_6, arg_88_7, arg_88_8, arg_88_9, arg_88_10)
		if not arg_88_1 then
			return false
		end

		arg_88_4 = arg_88_4 or 1
		arg_88_5 = arg_88_5 or 1
		arg_88_6 = arg_88_6 or 0
		arg_88_7 = arg_88_7 or 0

		local var_88_0 = arg_88_2 - arg_88_6 * arg_88_4
		local var_88_1 = arg_88_3 - arg_88_7 * arg_88_5
		local var_88_2 = (arg_88_8 - var_88_0) / math.max(1e-09, arg_88_4)
		local var_88_3 = (arg_88_9 - var_88_1) / math.max(1e-09, arg_88_5)
		local var_88_4, var_88_5 = arg_88_1:getDimensions()

		if var_88_2 < 0 or var_88_3 < 0 or var_88_4 <= var_88_2 or var_88_5 <= var_88_3 then
			return false
		end

		local var_88_6 = math.floor(var_88_2)
		local var_88_7 = math.floor(var_88_3)

		if var_88_6 < 0 or var_88_7 < 0 or var_88_4 <= var_88_6 or var_88_5 <= var_88_7 then
			return false
		end

		local var_88_8, var_88_9, var_88_10, var_88_11 = arg_88_1:getPixel(var_88_6, var_88_7)

		return (arg_88_10 ~= nil and arg_88_10 or 0.05) < (var_88_11 or 0)
	end

	local function var_58_10(arg_89_0)
		local var_89_0 = arg_89_0.ui
		local var_89_1 = arg_89_0.battlefield
		local var_89_2 = var_89_1 and var_89_1.area

		if not var_89_0 or not var_89_2 or not var_89_1 or not var_89_1.assets or not var_89_1.assets.units then
			return 1
		end

		local var_89_3 = 32
		local var_89_4 = math.floor(10 * var_89_0.scale)
		local var_89_5 = var_89_2.w - var_89_4 * 2
		local var_89_6 = var_89_2.h - var_89_4 * 2 - math.floor(22 * var_89_0.scale)
		local var_89_7

		if var_89_0.battle and var_89_0.battle.allySize32 and var_89_0.battle.allySize32 > 0 then
			var_89_7 = math.max(var_89_3, math.floor(var_89_0.battle.allySize32 / var_89_3) * var_89_3)
		else
			local var_89_8 = math.floor(math.min(var_89_5, var_89_6) * 0.12 * (var_89_0.battle and var_89_0.battle.unitScale or 1))

			var_89_7 = var_89_3 * math.max(1, math.ceil(var_89_8 / var_89_3))
		end

		local var_89_9 = var_89_1.assets.units.MiniSwordMan or var_89_1.assets.units.MiniArcherMan or var_89_1.assets.units.MiniSpearMan
		local var_89_10 = var_89_9 and var_89_9.frameW or var_89_3
		local var_89_11 = var_89_7 / math.max(1, var_89_10)

		return (math.max(1, math.floor(var_89_11 + 0.5)))
	end

	local function var_58_11(arg_90_0, arg_90_1, arg_90_2, arg_90_3, arg_90_4, arg_90_5, arg_90_6)
		local var_90_0 = var_58_10(arg_90_0)
		local var_90_1 = math.max(1, math.floor((var_0_32 or 3) / var_90_0 + 0.5))
		local var_90_2 = math.min(math.floor(arg_90_3 / (2 * var_90_0)), math.floor(arg_90_4 / (2 * var_90_0)))

		if var_90_2 < 1 then
			var_90_2 = 1
		end

		if var_90_2 < var_90_1 then
			var_90_1 = var_90_2
		end

		local var_90_3 = var_90_1 * var_90_0

		if arg_90_5 then
			love.graphics.setColor(arg_90_5[1], arg_90_5[2], arg_90_5[3], arg_90_5[4] or 1)
		end

		if arg_90_4 - 2 * var_90_3 > 0 then
			love.graphics.rectangle("fill", var_0_16(arg_90_1 + var_90_3), var_0_16(arg_90_2 + var_90_3), var_0_16(arg_90_3 - 2 * var_90_3), var_0_16(arg_90_4 - 2 * var_90_3))
		end

		if arg_90_4 - 2 * var_90_3 > 0 then
			love.graphics.rectangle("fill", var_0_16(arg_90_1), var_0_16(arg_90_2 + var_90_3), var_0_16(var_90_3), var_0_16(arg_90_4 - 2 * var_90_3))
			love.graphics.rectangle("fill", var_0_16(arg_90_1 + arg_90_3 - var_90_3), var_0_16(arg_90_2 + var_90_3), var_0_16(var_90_3), var_0_16(arg_90_4 - 2 * var_90_3))
		end

		for iter_90_0 = 0, var_90_1 - 1 do
			local var_90_4 = var_90_3 - (iter_90_0 + 1) * var_90_0

			if var_90_4 < 0 then
				var_90_4 = 0
			end

			local var_90_5 = arg_90_3 - 2 * var_90_4

			if var_90_5 > 0 then
				love.graphics.rectangle("fill", var_0_16(arg_90_1 + var_90_4), var_0_16(arg_90_2 + iter_90_0 * var_90_0), var_0_16(var_90_5), var_0_16(var_90_0))
				love.graphics.rectangle("fill", var_0_16(arg_90_1 + var_90_4), var_0_16(arg_90_2 + arg_90_4 - (iter_90_0 + 1) * var_90_0), var_0_16(var_90_5), var_0_16(var_90_0))
			end
		end

		if arg_90_6 then
			love.graphics.setColor(arg_90_6[1], arg_90_6[2], arg_90_6[3], arg_90_6[4] or 1)

			local var_90_6 = var_90_0

			for iter_90_1 = 0, var_90_1 - 1 do
				local var_90_7 = var_90_3 - (iter_90_1 + 1) * var_90_0

				if var_90_7 < 0 then
					var_90_7 = 0
				end

				local var_90_8 = arg_90_3 - 2 * var_90_7

				if var_90_8 > 0 then
					love.graphics.rectangle("fill", var_0_16(arg_90_1 + var_90_7), var_0_16(arg_90_2 + iter_90_1 * var_90_0), var_0_16(var_90_8), var_0_16(var_90_6))
					love.graphics.rectangle("fill", var_0_16(arg_90_1 + var_90_7), var_0_16(arg_90_2 + arg_90_4 - (iter_90_1 + 1) * var_90_0), var_0_16(var_90_8), var_0_16(var_90_6))
				end
			end

			local var_90_9 = arg_90_4 - 2 * var_90_3

			if var_90_9 > 0 then
				love.graphics.rectangle("fill", var_0_16(arg_90_1), var_0_16(arg_90_2 + var_90_3), var_0_16(var_90_6), var_0_16(var_90_9))
				love.graphics.rectangle("fill", var_0_16(arg_90_1 + arg_90_3 - var_90_6), var_0_16(arg_90_2 + var_90_3), var_0_16(var_90_6), var_0_16(var_90_9))
			end
		end
	end

	local function var_58_12(arg_91_0)
		local var_91_0 = arg_91_0 and arg_91_0._statIconHover
		local var_91_1 = var_91_0 and var_0_53[var_91_0.key]
		local var_91_2 = arg_91_0 and arg_91_0.ui
		local var_91_3 = var_91_2 and var_91_2.font

		if not var_91_1 or not var_91_2 or not var_91_2.virtual or not var_91_3 then
			return
		end

		local var_91_4 = var_0_4.getText(var_91_1, _G.currentGameLang or "ko")
		local var_91_5 = 4
		local var_91_6 = 4
		local var_91_7 = math.floor(var_91_3:getWidth(var_91_4) + var_91_5 * 2 + 0.5)
		local var_91_8 = math.floor(var_91_3:getHeight() + var_91_5 * 2 + 0.5)
		local var_91_9 = math.floor(var_91_0.x + var_91_0.w + var_91_6 + 0.5)

		if var_91_9 + var_91_7 > var_91_2.virtual.W then
			var_91_9 = math.floor(var_91_0.x - var_91_7 - var_91_6 + 0.5)
		end

		local var_91_10 = math.floor(var_91_0.y + (var_91_0.h - var_91_8) * 0.5 + 0.5)
		local var_91_11 = math.max(0, math.min(var_91_9, var_91_2.virtual.W - var_91_7))
		local var_91_12 = math.max(0, math.min(var_91_10, var_91_2.virtual.H - var_91_8))

		var_58_11(arg_91_0, var_91_11, var_91_12, var_91_7, var_91_8, {
			0,
			0,
			0,
			0.95
		}, nil)
		love.graphics.setFont(var_91_3)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.print(var_91_4, var_91_11 + var_91_5, var_91_12 + var_91_5 - 1)
	end

	local function var_58_13(arg_92_0)
		return arg_92_0 and (arg_92_0.subclass == "마그누스" or arg_92_0.subclassName == "마그누스" or arg_92_0.subclassKey == "마그누스")
	end

	local function var_58_14(arg_93_0)
		return arg_93_0 and (arg_93_0.subclass == "크러셔" or arg_93_0.subclassName == "크러셔" or arg_93_0.subclassKey == "크러셔")
	end

	local function var_58_15(arg_94_0, arg_94_1, arg_94_2)
		if not arg_94_0.target or not arg_94_0.cache or not arg_94_0.cache.layout then
			return
		end

		local var_94_0 = arg_94_0.cache.layout
		local var_94_1 = var_94_0.width
		local var_94_2 = var_94_0.height
		local var_94_3 = arg_94_0.ui.virtual.W
		local var_94_4 = arg_94_0.ui.virtual.H
		local var_94_5 = arg_94_1 or arg_94_0.mouseX
		local var_94_6 = arg_94_2 or arg_94_0.mouseY
		local var_94_7 = 10

		if not arg_94_0.pinSide then
			local var_94_8 = var_94_3 >= var_94_5 + var_94_1 + var_94_7
			local var_94_9 = var_94_6 - var_94_2 - var_94_7 >= 0

			arg_94_0.pinSide = {
				right = var_94_8,
				above = var_94_9
			}
		end

		local var_94_10 = arg_94_0.pinSide.right
		local var_94_11 = arg_94_0.pinSide.above
		local var_94_12 = var_94_10 and var_94_5 + var_94_7 or var_94_5 - var_94_7 - var_94_1
		local var_94_13 = var_94_11 and var_94_6 - var_94_7 - var_94_2 or var_94_6 + var_94_7

		if var_94_12 < 0 then
			var_94_12 = 0
		end

		if var_94_3 < var_94_12 + var_94_1 then
			var_94_12 = var_94_3 - var_94_1
		end

		if var_94_13 < 0 then
			var_94_13 = 0
		end

		if var_94_4 < var_94_13 + var_94_2 then
			var_94_13 = var_94_4 - var_94_2
		end

		local var_94_14, var_94_15 = var_0_16(var_94_12), var_0_16(var_94_13)
		local var_94_16 = arg_94_0.locked and 1 or arg_94_0.fade
		local var_94_17 = 1

		if arg_94_0.crossPrevLayout then
			var_94_17 = math.min(1, (arg_94_0.crossT or 0) / var_0_39)
		end

		local function var_94_18(arg_95_0, arg_95_1, arg_95_2)
			if not arg_95_0 then
				return
			end

			local var_95_0 = arg_95_0.width
			local var_95_1 = arg_95_0.height
			local var_95_2 = {
				var_0_31.boxFill[1],
				var_0_31.boxFill[2],
				var_0_31.boxFill[3],
				(var_0_31.boxFill[4] or 0.75) * var_94_16 * arg_95_2
			}

			var_58_11(arg_94_0, var_94_14, var_94_15, var_95_0, var_95_1, var_95_2, nil)

			local var_95_3 = arg_94_0.ui.font

			love.graphics.setFont(var_95_3)

			local var_95_4 = arg_95_0.scaledPad or var_0_33 * 0.5
			local var_95_5 = arg_95_0.lineSpacing or 3
			local var_95_6 = arg_95_0.titleSpacing or 8
			local var_95_7 = arg_95_0.titleLeftNudge or 0
			local var_95_8 = arg_95_0.iconAdvance or 12
			local var_95_9 = var_0_16(var_94_15 + var_95_4)
			local var_95_10 = arg_94_0.battlefield and arg_94_0.battlefield.assets

			for iter_95_0, iter_95_1 in ipairs(arg_95_0.lines) do
				local var_95_11 = iter_95_1.scale or arg_95_0.statScale or 1
				local var_95_12 = var_95_9
				local var_95_13 = var_0_16(var_94_14 + var_95_4 - (iter_95_1.isTitle and var_95_7 or 0))

				if iter_95_1.kind == "thinSep" then
					local var_95_14 = iter_95_1.padBefore or 1
					local var_95_15 = iter_95_1.padAfter or 2
					local var_95_16 = iter_95_1.sepTailSpacing ~= nil and iter_95_1.sepTailSpacing or 2

					var_95_9 = var_95_9 + var_95_14

					love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_94_16 * arg_95_2)
					love.graphics.rectangle("fill", var_94_14 + var_95_4, var_95_9, var_95_0 - var_95_4 * 2, 1)
					love.graphics.setColor(1, 1, 1, 1)

					var_95_9 = var_95_9 + 1 + var_95_15 + var_95_16
					var_95_9 = var_0_16(var_95_9)
				else
					if iter_95_1.icon and var_95_10 then
						local var_95_17 = var_95_10.iconsSmall and var_95_10.iconsSmall[iter_95_1.icon] or var_95_10.icons and var_95_10.icons[iter_95_1.icon]

						if var_95_17 then
							local var_95_18 = var_0_16(var_95_12)

							if iter_95_1.iconFoil or arg_95_1 and arg_95_1.jackpot5th then
								local var_95_19 = var_0_11()

								if var_95_19 then
									love.graphics.setShader(var_95_19)
								end

								local var_95_20 = iter_95_1.iconColor or {
									1,
									1,
									1,
									1
								}

								love.graphics.setColor(var_95_20[1] or 1, var_95_20[2] or 1, var_95_20[3] or 1, (var_95_20[4] or 1) * var_94_16 * arg_95_2)
								love.graphics.draw(var_95_17, var_95_13, var_95_18)

								if var_95_19 then
									love.graphics.setShader()
								end

								local var_95_21 = arg_94_0.ui and arg_94_0.ui.tooltipCfg and arg_94_0.ui.tooltipCfg.iconFoil or arg_94_0.ui and arg_94_0.ui.tooltip and arg_94_0.ui.tooltip.iconFoil or arg_94_0.ui and arg_94_0.ui.battle and (arg_94_0.ui.battle.jackpotFoil or arg_94_0.ui.battle.jackpotRainbow) or {}
								local var_95_22 = var_95_21.alpha ~= nil and var_95_21.alpha or 0.32

								if var_95_22 > 0 then
									local var_95_23 = var_0_13()

									love.graphics.setShader(var_95_23)

									local var_95_24 = (var_95_21.angleDeg or 20) * math.pi / 180
									local var_95_25 = math.cos(var_95_24)
									local var_95_26 = math.sin(var_95_24)

									var_95_23:send("u_time", love.timer.getTime() % 10000)
									var_95_23:send("u_alpha", var_95_22 * (var_94_16 * arg_95_2))
									var_95_23:send("u_dir", {
										var_95_25,
										var_95_26
									})
									var_95_23:send("u_cycle", var_95_21.cycleSec or 4)
									var_95_23:send("u_scale", var_95_21.scale or 2.5)

									local var_95_27 = var_95_21.grain or {}
									local var_95_28 = var_95_21.film or {}

									var_95_23:send("u_grainScale", var_95_27.scale or 3)
									var_95_23:send("u_grainAmp", var_95_27.amp or 0.2)
									var_95_23:send("u_filmFreq", var_95_28.freq or 2)
									var_95_23:send("u_filmAmp", var_95_28.amp or 0.25)
									var_95_23:send("u_specular", var_95_21.specular or 0.35)
									var_95_23:send("u_fresnelPow", var_95_21.fresnelPow or 2.5)
									var_95_23:send("u_frameUV", {
										0,
										0,
										1,
										1
									})
									var_95_23:send("u_colorGain", var_95_21.colorGain or 1.85)
									var_95_23:send("u_saturation", var_95_21.saturation or 1.5)
									var_95_23:send("u_mixBP", var_95_21.mixBP or 0.32)
									love.graphics.setColor(1, 1, 1, 1)

									local var_95_29 = love.graphics.getBlendMode()

									love.graphics.setBlendMode("alpha", "alphamultiply")
									love.graphics.draw(var_95_17, var_95_13, var_95_18)
									love.graphics.setBlendMode(var_95_29)
									love.graphics.setShader()
								end
							else
								local var_95_30 = var_0_11()

								if var_95_30 then
									love.graphics.setShader(var_95_30)
								end

								local var_95_31 = iter_95_1.iconColor or {
									1,
									1,
									1,
									1
								}

								love.graphics.setColor(var_95_31[1] or 1, var_95_31[2] or 1, var_95_31[3] or 1, (var_95_31[4] or 1) * var_94_16 * arg_95_2)
								love.graphics.draw(var_95_17, var_95_13, var_95_18)

								if var_95_30 then
									love.graphics.setShader()
								end
							end

							var_95_13 = var_95_13 + var_95_8
						end
					end

					if iter_95_1.label or iter_95_1.labelIcon then
						local var_95_32 = var_0_57(arg_94_0, var_95_10, iter_95_1, var_95_13, var_95_12, var_95_11, var_95_3, var_94_16, arg_95_2)

						if iter_95_1.parts then
							local var_95_33 = iter_95_1.parts.cur or ""
							local var_95_34 = iter_95_1.parts.nxt or ""
							local var_95_35 = iter_95_1.parts.delta or ""
							local var_95_36 = iter_95_1.parts.nxtColor or var_0_31.value
							local var_95_37 = iter_95_1.parts.deltaColor or var_95_36
							local var_95_38 = iter_95_1.parts.curColor or var_0_31.value

							love.graphics.setColor(var_95_38[1], var_95_38[2], var_95_38[3], (var_95_38[4] or 1) * var_94_16 * arg_95_2)
							love.graphics.print(var_95_33, var_0_16(var_95_32), var_95_12, 0, var_95_11, var_95_11)

							local var_95_39 = var_95_32 + var_0_18(var_95_3, var_95_33, var_95_11)
							local var_95_40 = " → "

							love.graphics.print(var_95_40, var_0_16(var_95_39), var_95_12, 0, var_95_11, var_95_11)

							local var_95_41 = var_95_39 + var_0_18(var_95_3, var_95_40, var_95_11)

							love.graphics.setColor(var_95_36[1], var_95_36[2], var_95_36[3], (var_95_36[4] or 1) * var_94_16 * arg_95_2)
							love.graphics.print(var_95_34, var_0_16(var_95_41), var_95_12, 0, var_95_11, var_95_11)

							local var_95_42 = var_95_41 + var_0_18(var_95_3, var_95_34, var_95_11)
							local var_95_43 = "  "

							love.graphics.setColor(var_0_31.value[1], var_0_31.value[2], var_0_31.value[3], (var_0_31.value[4] or 1) * var_94_16 * arg_95_2)
							love.graphics.print(var_95_43, var_0_16(var_95_42), var_95_12, 0, var_95_11, var_95_11)

							local var_95_44 = var_95_42 + var_0_18(var_95_3, var_95_43, var_95_11)

							love.graphics.setColor(var_95_37[1], var_95_37[2], var_95_37[3], (var_95_37[4] or 1) * var_94_16 * arg_95_2)
							love.graphics.print(var_95_35, var_0_16(var_95_44), var_95_12, 0, var_95_11, var_95_11)
						else
							local var_95_45 = iter_95_1.valueColor or var_0_31.value

							love.graphics.setColor(var_95_45[1], var_95_45[2], var_95_45[3], (var_95_45[4] or 1) * var_94_16 * arg_95_2)
							love.graphics.print(iter_95_1.value, var_0_16(var_95_32), var_95_12, 0, var_95_11, var_95_11)
						end
					else
						if iter_95_1 and iter_95_1.isTitle and (iter_95_1.iconFoil or arg_95_1 and arg_95_1.jackpot5th) and iter_95_1.value and iter_95_1.value ~= "" then
							local var_95_46 = (arg_94_0.ui and arg_94_0.ui.tooltipCfg and arg_94_0.ui.tooltipCfg.iconFoil or arg_94_0.ui and arg_94_0.ui.tooltip and arg_94_0.ui.tooltip.iconFoil or arg_94_0.ui and arg_94_0.ui.battle and (arg_94_0.ui.battle.jackpotFoil or arg_94_0.ui.battle.jackpotRainbow) or {}).cycleSec or 4
							local var_95_47 = love.timer.getTime() / var_95_46 * 2 * math.pi
							local var_95_48 = 0.6 + 0.4 * math.sin(var_95_47 + 0)
							local var_95_49 = 0.45 + 0.3 * math.sin(var_95_47 + 2.1)
							local var_95_50 = 0.8 + 0.2 * math.sin(var_95_47 + 4.2)

							love.graphics.setColor(var_95_48, var_95_49, var_95_50, var_94_16 * arg_95_2)
							love.graphics.print(iter_95_1.value, var_95_13, var_95_12, 0, var_95_11, var_95_11)
						else
							local var_95_51 = iter_95_1.isTitle and iter_95_1.titleColor or iter_95_1.isTitle and var_0_31.value or var_0_31.label

							love.graphics.setColor(var_95_51[1], var_95_51[2], var_95_51[3], (var_95_51[4] or 1) * var_94_16 * arg_95_2)
							love.graphics.print(iter_95_1.value, var_95_13, var_95_12, 0, var_95_11, var_95_11)
						end

						if iter_95_1.predNote then
							local var_95_52 = var_95_13 + var_0_18(var_95_3, iter_95_1.value, var_95_11) + 6
							local var_95_53 = var_95_12 + math.floor(var_0_19(var_95_3, var_95_11) / 2)
							local var_95_54 = 3
							local var_95_55 = {}

							for iter_95_2 = 0, 5 do
								local var_95_56 = math.rad(60 * iter_95_2)

								table.insert(var_95_55, var_95_52 + var_95_54 * math.cos(var_95_56))
								table.insert(var_95_55, var_95_53 + var_95_54 * math.sin(var_95_56))
							end

							love.graphics.setColor(0.7, 0.4, 1, var_94_16 * arg_95_2)
							love.graphics.polygon("fill", var_95_55)
							love.graphics.setColor(1, 1, 1, 1)
						end
					end

					local var_95_57 = iter_95_1.isTitle and var_95_6 or var_95_5

					var_95_9 = var_95_9 + var_0_19(var_95_3, var_95_11) + var_95_57
					var_95_9 = var_0_16(var_95_9)
				end
			end

			if not arg_95_1 or not arg_95_1.isShadowMinion then
				local var_95_58 = 3

				if arg_95_1 and arg_95_1.grade == "normal" then
					var_95_58 = 3
				elseif arg_95_1 and arg_95_1.grade == "advanced" then
					var_95_58 = 3
				elseif arg_95_1 and arg_95_1.grade == "rare" then
					var_95_58 = 3
				elseif arg_95_1 and arg_95_1.grade == "legendary" then
					var_95_58 = 3
				elseif arg_95_1 and arg_95_1.grade == "prism" then
					var_95_58 = 3
				elseif arg_95_1 then
					var_95_58 = ((var_0_2 and var_0_2.evolution or {}).maxRankByGrade or {})[arg_95_1.grade or "normal"] or 3
				end

				local var_95_59 = tonumber(arg_95_1 and arg_95_1.rank or 1) or 1

				if var_95_59 < 1 then
					var_95_59 = 1
				elseif var_95_58 < var_95_59 then
					var_95_59 = var_95_58
				end

				local var_95_60 = {
					{
						0,
						0,
						0,
						1,
						0,
						0,
						0
					},
					{
						0,
						0,
						1,
						1,
						1,
						0,
						0
					},
					{
						1,
						1,
						1,
						1,
						1,
						1,
						1
					},
					{
						0,
						1,
						1,
						1,
						1,
						1,
						0
					},
					{
						0,
						0,
						1,
						1,
						1,
						0,
						0
					},
					{
						0,
						1,
						1,
						0,
						1,
						1,
						0
					},
					{
						0,
						1,
						0,
						0,
						0,
						1,
						0
					}
				}
				local var_95_61 = arg_95_0.starPx or 7
				local var_95_62 = math.max(1, math.floor((arg_95_0.starsScale or 1) + 0.5))
				local var_95_63 = 2 * var_95_62
				local var_95_64 = var_95_61 * var_95_62
				local var_95_65 = var_95_58 * var_95_64 + (var_95_58 - 1) * var_95_63
				local var_95_66 = math.floor(var_94_14 + (var_95_0 - var_95_65) / 2 + 0.5)
				local var_95_67 = math.floor(var_95_9 + (arg_95_0.starsGapY or 3) + 0.5)

				local function var_95_68(arg_96_0, arg_96_1, arg_96_2, arg_96_3)
					local var_96_0 = arg_96_2 and arg_96_3 or arg_96_3 * 0.22

					love.graphics.setColor(1, 1, 1, var_96_0)

					for iter_96_0 = 1, 7 do
						local var_96_1 = var_95_60[iter_96_0]

						for iter_96_1 = 1, 7 do
							if var_96_1[iter_96_1] == 1 then
								local var_96_2 = arg_96_0 + (iter_96_1 - 1) * var_95_62
								local var_96_3 = arg_96_1 + (iter_96_0 - 1) * var_95_62

								love.graphics.rectangle("fill", var_96_2, var_96_3, var_95_62, var_95_62)
							end
						end
					end
				end

				local var_95_69 = var_94_16 * arg_95_2

				for iter_95_3 = 1, var_95_58 do
					local var_95_70 = var_95_66 + (iter_95_3 - 1) * (var_95_64 + var_95_63)

					var_95_68(var_95_70, var_95_67, iter_95_3 <= var_95_59, var_95_69)
				end

				love.graphics.setColor(1, 1, 1, 1)
			end

			love.graphics.setColor(1, 1, 1, 1)
		end

		if arg_94_0.crossPrevLayout then
			var_94_18(arg_94_0.crossPrevLayout, arg_94_0.crossPrevInfo, 1 - var_94_17)
			var_94_18(var_94_0, arg_94_0.cache and arg_94_0.cache.info, var_94_17)
		else
			var_94_18(var_94_0, arg_94_0.cache and arg_94_0.cache.info, 1)
		end
	end

	local function var_58_16(arg_97_0, arg_97_1, arg_97_2)
		if not arg_97_1 then
			return
		end

		local var_97_0 = arg_97_0.ui.font

		if var_97_0 then
			love.graphics.setFont(var_97_0)
		end

		local function var_97_1(arg_98_0)
			if arg_98_0 == math.floor(arg_98_0) then
				return string.format("+%d%%", arg_98_0)
			else
				return string.format("+%.1f%%", arg_98_0)
			end
		end

		local var_97_2 = {
			{
				labelIcon = "hp",
				value = var_97_1(arg_97_1.hp)
			},
			{
				labelIcon = "atk",
				value = var_97_1(arg_97_1.atk)
			},
			{
				labelIcon = "aspd",
				value = var_97_1(arg_97_1.aspd)
			}
		}
		local var_97_3 = arg_97_0.battlefield and arg_97_0.battlefield.assets
		local var_97_4 = 6
		local var_97_5 = 4
		local var_97_6 = type(rawget(_G, "getChineseLatinFallbackFont")) == "function" and _G.getChineseLatinFallbackFont(var_97_0) or var_97_0
		local var_97_7 = var_97_6 and var_97_6:getHeight() or var_97_0 and var_97_0:getHeight() or 12
		local var_97_8 = 1
		local var_97_9 = 0
		local var_97_10 = 0
		local var_97_11 = 8

		for iter_97_0, iter_97_1 in ipairs(var_97_2) do
			local var_97_12 = var_0_56(var_97_3, iter_97_1, var_97_0, var_97_8)
			local var_97_13 = var_97_0 and var_97_0:getWidth(iter_97_1.value) or 0

			if var_97_9 < var_97_12 then
				var_97_9 = var_97_12
			end

			if var_97_10 < var_97_13 then
				var_97_10 = var_97_13
			end
		end

		local var_97_14 = var_97_9 + var_97_11 + var_97_10
		local var_97_15 = #var_97_2 * var_97_7 + (#var_97_2 - 1) * var_97_5
		local var_97_16 = var_97_14 + var_97_4 * 2
		local var_97_17 = var_97_15 + var_97_4 * 2
		local var_97_18 = 6
		local var_97_19 = arg_97_2.x
		local var_97_20 = arg_97_2.y - var_97_17 - var_97_18
		local var_97_21 = arg_97_0.ui.virtual.W
		local var_97_22 = arg_97_0.ui.virtual.H

		if var_97_21 < var_97_19 + var_97_16 then
			var_97_19 = var_97_21 - var_97_16
		end

		if var_97_19 < 0 then
			var_97_19 = 0
		end

		if var_97_20 < 0 then
			var_97_20 = arg_97_2.y + arg_97_2.h + var_97_18
		end

		if var_97_22 < var_97_20 + var_97_17 then
			var_97_20 = var_97_22 - var_97_17
		end

		local var_97_23, var_97_24 = math.floor(var_97_19), math.floor(var_97_20)
		local var_97_25 = {
			var_0_31.boxFill[1],
			var_0_31.boxFill[2],
			var_0_31.boxFill[3],
			0.95
		}

		var_58_11(arg_97_0, var_97_23, var_97_24, var_97_16, var_97_17, var_97_25, nil)

		local var_97_26 = var_97_24 + var_97_4 - 1

		for iter_97_2, iter_97_3 in ipairs(var_97_2) do
			local var_97_27 = var_0_57(arg_97_0, var_97_3, iter_97_3, var_97_23 + var_97_4, var_97_26, var_97_8, var_97_0, 1, 1)

			love.graphics.setColor(0.6, 1, 0.6, 1)
			love.graphics.print(iter_97_3.value, var_97_27, var_97_26)

			var_97_26 = var_97_26 + var_97_7 + var_97_5
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	local function var_58_17(arg_99_0, arg_99_1, arg_99_2)
		if not arg_99_1 then
			return
		end

		local var_99_0 = arg_99_0.ui.font
		local var_99_1 = arg_99_0.battlefield and arg_99_0.battlefield.assets

		if var_99_0 then
			love.graphics.setFont(var_99_0)
		end

		local function var_99_2()
			if love and love.timer and love.timer.getTime then
				return love.timer.getTime()
			end

			return os.clock()
		end

		local function var_99_3(arg_101_0)
			if arg_101_0 < 0 then
				return 0
			end

			if arg_101_0 > 1 then
				return 1
			end

			return arg_101_0
		end

		local function var_99_4(arg_102_0)
			arg_102_0 = var_99_3(arg_102_0)

			local var_102_0 = 1 - arg_102_0

			return 1 - var_102_0 * var_102_0 * var_102_0
		end

		local var_99_5 = tostring(arg_99_2 and arg_99_2.index or "") .. "|" .. tostring(arg_99_1.id or arg_99_1.name or "")
		local var_99_6 = var_99_2()

		arg_99_0._imprintSlotTipAnim = arg_99_0._imprintSlotTipAnim or {}

		local var_99_7 = arg_99_0._imprintSlotTipAnim.lastDraw
		local var_99_8 = not var_99_7 or var_99_6 - var_99_7 > 0.08

		if arg_99_0._imprintSlotTipAnim.key ~= var_99_5 or var_99_8 then
			arg_99_0._imprintSlotTipAnim.key = var_99_5
			arg_99_0._imprintSlotTipAnim.t0 = var_99_6
		end

		arg_99_0._imprintSlotTipAnim.lastDraw = var_99_6

		local var_99_9 = 0.14
		local var_99_10 = (var_99_6 - (arg_99_0._imprintSlotTipAnim.t0 or var_99_6)) / var_99_9
		local var_99_11 = var_99_4(var_99_10)
		local var_99_12 = arg_99_1.desc or ""
		local var_99_13 = arg_99_1.level or 1

		if not arg_99_1.name then
			local var_99_14 = ""
		end

		if arg_99_2.previewUpgrade then
			local var_99_15 = var_99_13 + 1
			local var_99_16 = var_0_2 and var_0_2.imprint and var_0_2.imprint.definitions and var_0_2.imprint.definitions[arg_99_1.id]

			if var_99_16 and var_99_16.levels and var_99_16.levels[var_99_15] then
				var_99_12 = var_99_16.levels[var_99_15].desc or var_99_16.desc or var_99_12
				var_99_13 = var_99_15
			end
		end

		local var_99_17 = var_0_4.getImprintDesc(arg_99_1.id, var_99_13, var_99_12, _G.currentGameLang or "ko")
		local var_99_18 = 5
		local var_99_19 = var_99_18
		local var_99_20 = var_99_18 + 1
		local var_99_21 = type(rawget(_G, "getChineseLatinFallbackFont")) == "function" and _G.getChineseLatinFallbackFont(var_99_0) or var_99_0
		local var_99_22 = var_99_21 and var_99_21:getHeight() or var_99_0 and var_99_0:getHeight() or 12
		local var_99_23 = 5
		local var_99_24 = tostring(arg_99_1.id or "")
		local var_99_25 = var_99_24:sub(1, 13) == "randomOption_"
		local var_99_26 = var_99_24:sub(1, 11) == "classSkill_"
		local var_99_27 = math.floor(arg_99_2.w) - 2
		local var_99_28 = var_99_27

		local function var_99_29(arg_103_0)
			arg_103_0 = tostring(arg_103_0 or "")

			if arg_103_0 == "" then
				return ""
			end

			local var_103_0 = {}
			local var_103_1 = 1
			local var_103_2 = #arg_103_0

			while var_103_1 <= var_103_2 do
				local var_103_3 = arg_103_0:byte(var_103_1)

				if not var_103_3 then
					break
				end

				if var_103_3 < 128 then
					var_103_0[#var_103_0 + 1] = string.char(var_103_3)
					var_103_1 = var_103_1 + 1
				elseif var_103_3 >= 194 and var_103_3 <= 223 then
					local var_103_4 = arg_103_0:byte(var_103_1 + 1)

					if var_103_4 and var_103_4 >= 128 and var_103_4 <= 191 then
						var_103_0[#var_103_0 + 1] = arg_103_0:sub(var_103_1, var_103_1 + 1)
						var_103_1 = var_103_1 + 2
					else
						var_103_0[#var_103_0 + 1] = "?"
						var_103_1 = var_103_1 + 1
					end
				elseif var_103_3 >= 224 and var_103_3 <= 239 then
					local var_103_5 = arg_103_0:byte(var_103_1 + 1)
					local var_103_6 = arg_103_0:byte(var_103_1 + 2)
					local var_103_7 = var_103_5 and var_103_6 and var_103_5 >= 128 and var_103_5 <= 191 and var_103_6 >= 128 and var_103_6 <= 191

					if var_103_7 then
						if var_103_3 == 224 and var_103_5 < 160 then
							var_103_7 = false
						end

						if var_103_3 == 237 and var_103_5 > 159 then
							var_103_7 = false
						end
					end

					if var_103_7 then
						var_103_0[#var_103_0 + 1] = arg_103_0:sub(var_103_1, var_103_1 + 2)
						var_103_1 = var_103_1 + 3
					else
						var_103_0[#var_103_0 + 1] = "?"
						var_103_1 = var_103_1 + 1
					end
				elseif var_103_3 >= 240 and var_103_3 <= 244 then
					local var_103_8 = arg_103_0:byte(var_103_1 + 1)
					local var_103_9 = arg_103_0:byte(var_103_1 + 2)
					local var_103_10 = arg_103_0:byte(var_103_1 + 3)
					local var_103_11 = var_103_8 and var_103_9 and var_103_10 and var_103_8 >= 128 and var_103_8 <= 191 and var_103_9 >= 128 and var_103_9 <= 191 and var_103_10 >= 128 and var_103_10 <= 191

					if var_103_11 then
						if var_103_3 == 240 and var_103_8 < 144 then
							var_103_11 = false
						end

						if var_103_3 == 244 and var_103_8 > 143 then
							var_103_11 = false
						end
					end

					if var_103_11 then
						var_103_0[#var_103_0 + 1] = arg_103_0:sub(var_103_1, var_103_1 + 3)
						var_103_1 = var_103_1 + 4
					else
						var_103_0[#var_103_0 + 1] = "?"
						var_103_1 = var_103_1 + 1
					end
				else
					var_103_0[#var_103_0 + 1] = "?"
					var_103_1 = var_103_1 + 1
				end
			end

			return table.concat(var_103_0)
		end

		local function var_99_30(arg_104_0, arg_104_1)
			local var_104_0 = rawget(_G, "measureChineseMixedTextWidth")

			if type(var_104_0) == "function" then
				local var_104_1, var_104_2 = pcall(var_104_0, arg_104_1, arg_104_0)

				if var_104_1 and type(var_104_2) == "number" then
					return var_104_2
				end
			end

			local var_104_3, var_104_4 = pcall(arg_104_0.getWidth, arg_104_0, arg_104_1)

			if var_104_3 and type(var_104_4) == "number" then
				return var_104_4
			end

			local var_104_5 = var_99_29(arg_104_1)
			local var_104_6, var_104_7 = pcall(arg_104_0.getWidth, arg_104_0, var_104_5)

			if var_104_6 and type(var_104_7) == "number" then
				return var_104_7
			end

			return 0
		end

		local function var_99_31(arg_105_0)
			return tostring(arg_105_0 or ""):match("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*")
		end

		local function var_99_32(arg_106_0)
			local var_106_0

			for iter_106_0 in tostring(arg_106_0 or ""):gmatch("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*") do
				var_106_0 = iter_106_0
			end

			return var_106_0
		end

		local function var_99_33(arg_107_0)
			if type(arg_107_0) ~= "string" or arg_107_0 == "" then
				return nil
			end

			if #arg_107_0 ~= 1 or arg_107_0:byte() > 127 then
				return "nonAscii"
			end

			if arg_107_0:match("%s") then
				return "space"
			end

			if arg_107_0:match("%a") then
				return "letter"
			end

			if arg_107_0:match("%d") or arg_107_0 == "+" or arg_107_0 == "-" or arg_107_0 == "%" then
				return "number"
			end

			return "punct"
		end

		local function var_99_34(arg_108_0, arg_108_1, arg_108_2)
			if (_G.currentGameLang or "ko") ~= "zh" then
				return 0
			end

			if not arg_108_0 or not arg_108_1 or arg_108_1 == "space" then
				return 0
			end

			if arg_108_0 ~= "nonAscii" ~= (arg_108_1 ~= "nonAscii") then
				return 2
			end

			if arg_108_2 == "%" then
				return 2
			end

			return 0
		end

		local var_99_35 = {
			hp = {
				l = 1,
				r = 1
			},
			atk = {
				l = 1,
				r = 1
			},
			aspd = {
				l = 2,
				r = 1
			},
			dist = {
				l = 1,
				r = 1
			},
			spd = {
				l = 1,
				r = 0
			},
			essence = {
				l = 2,
				r = 2
			},
			gold = {
				l = 1,
				r = 1
			}
		}

		local function var_99_36(arg_109_0)
			local var_109_0 = tostring(arg_109_0 or ""):match("^%{([%w_]+)%.png%}$")

			if not var_109_0 then
				return nil
			end

			return var_0_55(var_99_1, var_109_0), var_109_0
		end

		local function var_99_37(arg_110_0, arg_110_1)
			if not arg_110_0 then
				return 0
			end

			local var_110_0 = var_99_35[arg_110_1] or {
				l = 0,
				r = 0
			}

			return math.max(1, arg_110_0:getWidth() - (var_110_0.l or 0) - (var_110_0.r or 0)) + 1
		end

		local function var_99_38(arg_111_0, arg_111_1)
			local var_111_0 = tostring(arg_111_1 or "")
			local var_111_1 = 0
			local var_111_2 = 1

			for iter_111_0, iter_111_1, iter_111_2 in var_111_0:gmatch("()(%{[%w_]+%.png%})()") do
				if var_111_2 < iter_111_0 then
					var_111_1 = var_111_1 + var_99_30(arg_111_0, var_111_0:sub(var_111_2, iter_111_0 - 1))
				end

				local var_111_3, var_111_4 = var_99_36(iter_111_1)

				var_111_1 = var_111_1 + (var_111_3 and var_99_37(var_111_3, var_111_4) or var_99_30(arg_111_0, iter_111_1))
				var_111_2 = iter_111_2
			end

			if var_111_2 <= #var_111_0 then
				var_111_1 = var_111_1 + var_99_30(arg_111_0, var_111_0:sub(var_111_2))
			end

			return var_111_1
		end

		local var_99_39 = {
			」 = true,
			］ = true,
			["?"] = true,
			… = true,
			、 = true,
			。 = true,
			； = true,
			： = true,
			？ = true,
			！ = true,
			． = true,
			， = true,
			〛 = true,
			〙 = true,
			〗 = true,
			〕 = true,
			』 = true,
			[")"] = true,
			》 = true,
			〉 = true,
			】 = true,
			｝ = true,
			[":"] = true,
			） = true,
			[";"] = true,
			["!"] = true,
			["."] = true,
			[","] = true,
			["}"] = true,
			["]"] = true
		}

		local function var_99_40(arg_112_0, arg_112_1, arg_112_2, arg_112_3)
			local var_112_0 = ""
			local var_112_1 = rawget(_G, "utf8")

			if type(var_112_1) ~= "table" or not var_112_1.codes or not var_112_1.char then
				local var_112_2, var_112_3 = pcall(require, "utf8")

				if var_112_2 and type(var_112_3) == "table" then
					var_112_1 = var_112_3
				end
			end

			local var_112_4 = type(var_112_1) == "table" and var_112_1.codes and var_112_1.char

			local function var_112_5(arg_113_0)
				local var_113_0 = arg_113_0:match("^%s+$") ~= nil

				if var_112_0 == "" and var_113_0 then
					return
				end

				local var_113_1 = var_112_0 .. arg_113_0

				if var_99_38(arg_112_0, var_113_1) <= arg_112_2 then
					var_112_0 = var_113_1
				elseif var_112_0 ~= "" then
					if var_99_39[arg_113_0] then
						var_112_0 = var_112_0 .. arg_113_0
					else
						arg_112_3(var_112_0)

						var_112_0 = var_113_0 and "" or arg_113_0
					end
				else
					arg_112_3(arg_113_0)

					var_112_0 = ""
				end
			end

			local function var_112_6(arg_114_0)
				if arg_114_0 == "" then
					return
				end

				if var_112_4 then
					for iter_114_0, iter_114_1 in var_112_1.codes(arg_114_0) do
						var_112_5(var_112_1.char(iter_114_1))
					end
				else
					for iter_114_2 = 1, #arg_114_0 do
						var_112_5(arg_114_0:sub(iter_114_2, iter_114_2))
					end
				end
			end

			local var_112_7 = 1

			while var_112_7 <= #arg_112_1 do
				local var_112_8, var_112_9 = arg_112_1:find("%{[%w_]+%.png%}", var_112_7)

				if var_112_8 == var_112_7 then
					var_112_5(arg_112_1:sub(var_112_8, var_112_9))

					var_112_7 = var_112_9 + 1
				else
					local var_112_10 = var_112_8 and var_112_8 - 1 or #arg_112_1

					var_112_6(arg_112_1:sub(var_112_7, var_112_10))

					var_112_7 = var_112_10 + 1
				end
			end

			if var_112_0 ~= "" then
				arg_112_3(var_112_0)
			end
		end

		local function var_99_41(arg_115_0, arg_115_1, arg_115_2)
			local var_115_0 = {}

			if not arg_115_0 or arg_115_2 <= 0 then
				table.insert(var_115_0, tostring(arg_115_1 or ""))

				return var_115_0
			end

			local var_115_1 = var_99_29(arg_115_1)

			if var_115_1 == "" then
				table.insert(var_115_0, "")

				return var_115_0
			end

			local var_115_2 = {}

			for iter_115_0 in (var_115_1 .. "\n"):gmatch("(.-)\n") do
				table.insert(var_115_2, iter_115_0)
			end

			if #var_115_2 == 0 then
				var_115_2 = {
					var_115_1
				}
			end

			local function var_115_3(arg_116_0)
				arg_116_0 = (arg_116_0 or ""):gsub("%s+$", "")

				table.insert(var_115_0, arg_116_0)
			end

			for iter_115_1 = 1, #var_115_2 do
				local var_115_4 = var_99_29(var_115_2[iter_115_1] or "")

				if var_115_4 == "" then
					var_115_3("")
				elseif arg_115_2 >= var_99_38(arg_115_0, var_115_4) then
					var_115_3(var_115_4)
				elseif var_115_4:find("%s") then
					local var_115_5 = ""
					local var_115_6 = {}

					for iter_115_2 in var_115_4:gmatch("%S+") do
						table.insert(var_115_6, iter_115_2)
					end

					local function var_115_7(arg_117_0)
						return tostring(arg_117_0 or ""):match("^%{[%w_]+%.png%}$") ~= nil
					end

					local function var_115_8(arg_118_0)
						local var_118_0 = tostring(arg_118_0 or "")

						return var_118_0:match("^[%+%-]?%d") ~= nil or var_118_0:match("^%d+%+$") ~= nil
					end

					local function var_115_9(arg_119_0, arg_119_1, arg_119_2)
						if not arg_119_0 or not arg_119_1 or not arg_119_2 or not var_115_8(arg_119_2) then
							return false
						end

						local var_119_0 = tostring(arg_119_0) .. " " .. tostring(arg_119_1)

						return var_119_0 == "받는 피해" or var_119_0 == "Damage Taken" or var_119_0 == "First attack" or var_119_0 == "Last enemy" or var_119_0 == "per fallen" or var_119_0 == "wave end"
					end

					local var_115_10 = 1

					while var_115_10 <= #var_115_6 do
						local var_115_11 = var_115_6[var_115_10]
						local var_115_12 = var_115_6[var_115_10 + 1]
						local var_115_13 = var_115_6[var_115_10 + 2]

						if var_115_9(var_115_11, var_115_12, var_115_13) then
							var_115_11 = var_115_11 .. " " .. var_115_12 .. " " .. var_115_13
							var_115_10 = var_115_10 + 2
						elseif var_115_12 and (var_115_7(var_115_11) and var_115_8(var_115_12) or var_115_8(var_115_11) and var_115_7(var_115_12)) then
							var_115_11 = var_115_11 .. " " .. var_115_12
							var_115_10 = var_115_10 + 1
						end

						if var_115_5 == "" then
							if arg_115_2 >= var_99_38(arg_115_0, var_115_11) then
								var_115_5 = var_115_11
							else
								var_99_40(arg_115_0, var_115_11, arg_115_2, var_115_3)

								var_115_5 = ""
							end
						else
							local var_115_14 = var_115_5 .. " " .. var_115_11

							if arg_115_2 >= var_99_38(arg_115_0, var_115_14) then
								var_115_5 = var_115_14
							else
								var_115_3(var_115_5)

								if arg_115_2 >= var_99_38(arg_115_0, var_115_11) then
									var_115_5 = var_115_11
								else
									var_99_40(arg_115_0, var_115_11, arg_115_2, var_115_3)

									var_115_5 = ""
								end
							end
						end

						var_115_10 = var_115_10 + 1
					end

					if var_115_5 ~= "" then
						var_115_3(var_115_5)
					end
				else
					var_99_40(arg_115_0, var_115_4, arg_115_2, var_115_3)
				end
			end

			local var_115_15 = 2

			while var_115_15 <= #var_115_0 do
				local var_115_16 = var_115_0[var_115_15] or ""
				local var_115_17 = var_99_31(var_115_16)

				while var_115_17 and var_99_39[var_115_17] do
					var_115_0[var_115_15 - 1] = (var_115_0[var_115_15 - 1] or "") .. var_115_17
					var_115_16 = var_115_16:sub(#var_115_17 + 1)
					var_115_17 = var_99_31(var_115_16)
				end

				if var_115_16 == "" then
					table.remove(var_115_0, var_115_15)
				else
					var_115_0[var_115_15] = var_115_16
					var_115_15 = var_115_15 + 1
				end
			end

			local var_115_18 = 1

			while var_115_18 < #var_115_0 do
				local var_115_19 = var_115_0[var_115_18] or ""
				local var_115_20 = var_115_0[var_115_18 + 1] or ""
				local var_115_21 = var_115_19:match("(%{[%w_]+%.png%})%s*$")

				if var_115_21 and var_115_20:match("^[%+%-]?%d") then
					local var_115_22 = var_115_19:gsub("%s*%{[%w_]+%.png%}%s*$", "")
					local var_115_23 = var_115_21 .. " " .. var_115_20:gsub("^%s+", "")

					if var_115_22 == "" then
						var_115_0[var_115_18 + 1] = var_115_23

						table.remove(var_115_0, var_115_18)
					else
						var_115_0[var_115_18] = var_115_22
						var_115_0[var_115_18 + 1] = var_115_23
						var_115_18 = var_115_18 + 1
					end
				else
					var_115_18 = var_115_18 + 1
				end
			end

			while #var_115_0 > 1 and var_115_0[#var_115_0] == "" do
				table.remove(var_115_0)
			end

			if #var_115_0 == 0 then
				table.insert(var_115_0, "")
			end

			return var_115_0
		end

		local var_99_42 = var_99_29(var_99_17)

		if var_99_25 or var_99_26 then
			local var_99_43

			if var_99_26 then
				var_99_43 = tonumber(arg_99_0.ui and arg_99_0.ui.classCard and arg_99_0.ui.classCard.classSkillTooltipWidth) or 160
			else
				var_99_43 = tonumber(arg_99_0.ui and arg_99_0.ui.classCard and arg_99_0.ui.classCard.randomOptionTooltipWidth) or 120

				if (_G.currentGameLang or "ko") == "ja" then
					var_99_43 = var_99_43 + 10
				end
			end

			local var_99_44 = math.max(40, math.floor(var_99_43))
			local var_99_45 = 0

			for iter_99_0 in (var_99_42 .. "\n"):gmatch("(.-)\n") do
				local var_99_46 = var_99_38(var_99_0, iter_99_0)

				if var_99_45 < var_99_46 then
					var_99_45 = var_99_46
				end
			end

			local var_99_47 = math.ceil(var_99_45 + var_99_18 * 2 + 2)

			if var_99_47 < 40 then
				var_99_47 = 40
			end

			if var_99_44 < var_99_47 then
				var_99_47 = var_99_44
			end

			var_99_27 = var_99_47
			var_99_28 = var_99_27
		end

		local var_99_48 = var_99_41(var_99_0, var_99_42, var_99_28 - var_99_18 * 2)
		local var_99_49 = #var_99_48 * var_99_22 + math.max(0, #var_99_48 - 1) * var_99_23
		local var_99_50 = arg_99_1.cooldown and tonumber(arg_99_1.cooldown)
		local var_99_51 = var_99_50 and 2 * var_99_23 + 1 + var_99_22 or 0
		local var_99_52 = (var_99_26 or var_99_25) and #var_99_48 >= 2
		local var_99_53 = var_99_52 and var_99_23 + 1 or 0
		local var_99_54 = math.ceil(var_99_49 + var_99_19 + var_99_20 + 2 + var_99_51 + var_99_53)
		local var_99_55 = 4
		local var_99_56 = 8
		local var_99_57 = arg_99_2.x + (arg_99_2.previewUpgrade and 1 or 2)
		local var_99_58 = arg_99_2.y + arg_99_2.h + var_99_55
		local var_99_59 = 0

		if var_99_25 or var_99_26 then
			var_99_57 = arg_99_2.x + arg_99_2.w / 2 - var_99_27 / 2

			if var_99_25 and arg_99_2 and arg_99_2.source == "imprint" then
				var_99_59 = tonumber(arg_99_0.ui and arg_99_0.ui.imprintPanel and arg_99_0.ui.imprintPanel.randomOption and arg_99_0.ui.imprintPanel.randomOption.tooltipOffsetY) or 0
			elseif var_99_25 then
				var_99_59 = tonumber(arg_99_0.ui and arg_99_0.ui.classCard and arg_99_0.ui.classCard.randomOptionTooltipOffsetY) or 0
			elseif arg_99_2 and arg_99_2.source == "imprintSkill" then
				var_99_59 = tonumber(arg_99_0.ui and arg_99_0.ui.imprintPanel and arg_99_0.ui.imprintPanel.skillFrame and arg_99_0.ui.imprintPanel.skillFrame.tooltipOffsetY) or 0
			else
				var_99_59 = tonumber(arg_99_0.ui and arg_99_0.ui.classCard and arg_99_0.ui.classCard.classSkillTooltipOffsetY) or 0
			end
		end

		local var_99_60 = arg_99_0.ui.virtual.W
		local var_99_61 = arg_99_0.ui.virtual.H

		if var_99_60 < var_99_57 + var_99_27 then
			var_99_57 = var_99_60 - var_99_27
		end

		if var_99_57 < 0 then
			var_99_57 = 0
		end

		if var_99_61 < var_99_58 + var_99_54 then
			var_99_58 = arg_99_2.y - var_99_54 - var_99_55
		end

		local var_99_62 = var_99_58 - var_99_56

		if (var_99_25 or var_99_26) and var_99_59 ~= 0 then
			var_99_62 = var_99_62 + var_99_59
		end

		if var_99_61 < var_99_62 + var_99_54 then
			var_99_62 = var_99_61 - var_99_54
		end

		if var_99_62 < 0 then
			var_99_62 = 0
		end

		local var_99_63, var_99_64 = math.floor(var_99_57), math.floor(var_99_62)
		local var_99_65 = var_99_64 + math.floor(6 * (1 - var_99_11) + 0.5)
		local var_99_66 = {
			var_0_31.boxFill[1],
			var_0_31.boxFill[2],
			var_0_31.boxFill[3],
			1
		}

		var_58_11(arg_99_0, var_99_63, var_99_65, var_99_27, var_99_54, var_99_66, var_99_66)

		local var_99_67 = {
			0.6,
			1,
			0.6,
			1 * var_99_11
		}
		local var_99_68 = {
			0.9,
			0.9,
			0.9,
			1 * var_99_11
		}

		local function var_99_69(arg_120_0, arg_120_1, arg_120_2)
			local var_120_0 = tostring(arg_120_0 or "")

			if pcall(love.graphics.print, var_120_0, arg_120_1, arg_120_2) then
				return true
			end

			local var_120_1 = var_99_29(var_120_0)

			return pcall(love.graphics.print, var_120_1, arg_120_1, arg_120_2)
		end

		local var_99_70 = tostring(arg_99_1.id or ""):sub(1, 13) == "randomOption_"

		for iter_99_1, iter_99_2 in ipairs(var_99_48) do
			local var_99_71 = var_99_63 + var_99_18
			local var_99_72 = var_99_52 and iter_99_1 >= 2 and var_99_53 or 0
			local var_99_73 = var_99_65 + var_99_19 + (iter_99_1 - 1) * (var_99_22 + var_99_23) + var_99_72
			local var_99_74 = var_99_68

			if (var_99_70 or var_99_26) and iter_99_1 == 1 then
				var_99_74 = {
					1,
					0.9,
					0.5,
					1 * var_99_11
				}
			end

			local function var_99_75(arg_121_0)
				local var_121_0
				local var_121_1

				local function var_121_2(arg_122_0, arg_122_1)
					arg_122_0 = tostring(arg_122_0 or "")

					if arg_122_0 == "" then
						return
					end

					var_99_71 = var_99_71 + var_99_34(var_121_0, var_99_33(var_99_31(arg_122_0)), var_121_1)

					love.graphics.setColor(arg_122_1)
					var_99_69(arg_122_0, var_99_71, var_99_73)

					var_99_71 = var_99_71 + var_99_30(var_99_0, arg_122_0)
					var_121_1 = var_99_32(arg_122_0) or var_121_1
					var_121_0 = var_99_33(var_121_1) or var_121_0
				end

				local var_121_3 = 1

				for iter_121_0, iter_121_1 in arg_121_0:gmatch("()[%d%.%%]+()") do
					if var_121_3 < iter_121_0 then
						local var_121_4 = arg_121_0:sub(var_121_3, iter_121_0 - 1)

						var_121_2(var_121_4, var_99_74)
					end

					local var_121_5 = arg_121_0:sub(iter_121_0, iter_121_1 - 1)

					var_121_2(var_121_5, var_99_67)

					var_121_3 = iter_121_1
				end

				if var_121_3 <= #arg_121_0 then
					local var_121_6 = arg_121_0:sub(var_121_3)

					var_121_2(var_121_6, var_99_74)
				end
			end

			local var_99_76 = 1

			for iter_99_3, iter_99_4, iter_99_5 in iter_99_2:gmatch("()(%{[%w_]+%.png%})()") do
				if var_99_76 < iter_99_3 then
					var_99_75(iter_99_2:sub(var_99_76, iter_99_3 - 1))
				end

				local var_99_77, var_99_78 = var_99_36(iter_99_4)

				if var_99_77 then
					local var_99_79 = var_99_35[var_99_78] or {
						l = 0,
						r = 0
					}
					local var_99_80 = math.floor(var_99_73 + (var_99_22 - var_99_77:getHeight()) * 0.5 + 0.5) + 1

					love.graphics.setColor(1, 1, 1, var_99_11)
					love.graphics.draw(var_99_77, var_99_71 - (var_99_79.l or 0), var_99_80)

					var_99_71 = var_99_71 + var_99_37(var_99_77, var_99_78)
				else
					var_99_75(iter_99_4)
				end

				var_99_76 = iter_99_5
			end

			if var_99_76 <= #iter_99_2 then
				var_99_75(iter_99_2:sub(var_99_76))
			end
		end

		love.graphics.setColor(1, 1, 1, 1)

		if var_99_52 then
			local var_99_81 = var_99_65 + var_99_19 + var_99_22 + var_99_23 + 1

			love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_99_11)
			love.graphics.rectangle("fill", var_99_63 + var_99_18, var_99_81, var_99_27 - var_99_18 * 2, 1)
		end

		if var_99_50 then
			local var_99_82 = var_99_65 + var_99_19 + var_99_49 + var_99_53 + var_99_23 + 1
			local var_99_83 = var_99_82 + var_99_23

			love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_99_11)
			love.graphics.rectangle("fill", var_99_63 + var_99_18, var_99_82, var_99_27 - var_99_18 * 2, 1)

			local var_99_84 = _G.currentGameLang or "ko"
			local var_99_85 = var_0_4.getText("cooldown_fmt", var_99_84)

			if type(var_99_85) ~= "string" or var_99_85 == "" or var_99_85 == "cooldown_fmt" then
				var_99_85 = "쿨타임 %d초"
			end

			local var_99_86 = tostring(var_99_50)
			local var_99_87, var_99_88 = var_99_85:match("^(.-)%%d(.*)$")

			if not var_99_87 then
				var_99_87, var_99_88 = "", var_99_85
			end

			local var_99_89 = var_99_63 + var_99_18

			love.graphics.setColor(0.55, 0.55, 0.55, 1 * var_99_11)
			var_99_69(var_99_87, var_99_89, var_99_83)

			local var_99_90 = var_99_89 + var_99_30(var_99_0, var_99_87)

			love.graphics.setColor(0.35, 0.85, 1, 1 * var_99_11)
			var_99_69(var_99_86, var_99_90, var_99_83)

			local var_99_91 = var_99_90 + var_99_30(var_99_0, var_99_86)

			love.graphics.setColor(0.55, 0.55, 0.55, 1 * var_99_11)
			var_99_69(var_99_88, var_99_91, var_99_83)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local function var_58_18(arg_123_0, arg_123_1, arg_123_2, arg_123_3)
		if not arg_123_1 or not arg_123_2 then
			return
		end

		local var_123_0 = _G.currentGameLang or "ko"
		local var_123_1 = var_0_4.getRandomOptionEffect(arg_123_1.id, arg_123_1.effect or arg_123_1.desc or "", var_123_0)

		if arg_123_1.variant then
			local function var_123_2(arg_124_0, arg_124_1)
				if not arg_124_1 then
					return arg_124_0
				end

				local var_124_0 = tostring(arg_124_1)

				if not var_124_0:find("%%") and arg_124_0:find("%%") then
					var_124_0 = var_124_0 .. "%"
				end

				if arg_124_0 == "" then
					return var_124_0
				end

				local var_124_1 = arg_124_0:gsub("([%+%-]?%d*%.?%d+)%s*~%s*%d*%.?%d+%%?", function()
					return var_124_0
				end, 1)

				if var_124_1 == arg_124_0 then
					var_124_1 = arg_124_0:gsub("%d*%.?%d+%s*~%s*%d*%.?%d+%%?", function()
						return var_124_0
					end, 1)
				end

				return var_124_1
			end

			var_123_1 = var_123_2(var_123_1, arg_123_1.variant.value)

			local var_123_3 = arg_123_1.variant.damageReduction or arg_123_1.variant.dmgTaken

			if var_123_3 then
				var_123_1 = var_123_2(var_123_1, var_123_3)
			end
		end

		local var_123_4 = var_0_4.getImprintName(arg_123_1.id, arg_123_1.name or "Random Option", var_123_0)

		if var_123_1 == "" then
			var_123_1 = var_123_4
		else
			var_123_1 = var_123_4 .. "\n" .. var_123_1
		end

		local var_123_5 = {
			level = 1,
			id = "randomOption_" .. tostring(arg_123_1.id or arg_123_1.name or ""),
			name = var_123_4,
			desc = var_123_1
		}
		local var_123_6 = {
			previewUpgrade = false,
			x = arg_123_2.x,
			y = arg_123_2.y,
			w = arg_123_2.w,
			h = arg_123_2.h,
			index = arg_123_2.index,
			source = arg_123_2.source
		}

		var_58_17(arg_123_0, var_123_5, var_123_6)
	end

	local function var_58_19(arg_127_0, arg_127_1, arg_127_2)
		if not arg_127_1 or not arg_127_2 then
			return
		end

		local var_127_0 = _G.currentGameLang or "ko"
		local var_127_1 = tostring(var_0_4.getSkillName(arg_127_1.id, arg_127_1.name, var_127_0) or "")
		local var_127_2 = tostring(var_0_4.getSkillDesc(arg_127_1.id, arg_127_1.desc, var_127_0) or "")

		if var_127_1 == "" and var_127_2 == "" then
			return
		end

		if var_127_1 == "" then
			var_127_1 = var_0_4.getText("skill_label", var_127_0)
		end

		local var_127_3 = arg_127_1.cooldown and tonumber(arg_127_1.cooldown)
		local var_127_4 = {
			level = 1,
			id = "classSkill_" .. var_127_1,
			name = var_127_1,
			desc = var_127_2 == "" and var_127_1 or var_127_1 .. "\n" .. var_127_2,
			cooldown = var_127_3
		}
		local var_127_5 = {
			previewUpgrade = false,
			x = arg_127_2.x,
			y = arg_127_2.y,
			w = arg_127_2.w,
			h = arg_127_2.h,
			index = arg_127_2.index,
			source = arg_127_2.source or "classSkill"
		}

		var_58_17(arg_127_0, var_127_4, var_127_5)
	end

	function var_58_0.draw(arg_128_0, arg_128_1)
		local var_128_0 = arg_128_0.mouseX
		local var_128_1 = arg_128_0.mouseY
		local var_128_2 = arg_128_0.ui or arg_128_1 and arg_128_1.ui or _G.ui

		if var_128_2 and var_128_2.pauseOverlayState and var_128_2.pauseOverlayState.active then
			var_128_0, var_128_1 = -9999, -9999
		end

		if arg_128_1 and arg_128_1.gameOver then
			local var_128_3 = arg_128_0.ui or arg_128_1 and arg_128_1.ui or _G.ui

			if var_128_3 then
				local var_128_4
				local var_128_5 = -1

				for iter_128_0, iter_128_1 in ipairs(arg_128_1.rosterUnits or {}) do
					local var_128_6 = iter_128_1.stats or {}
					local var_128_7 = var_128_6.hp or 0
					local var_128_8 = var_128_6.atk or 0
					local var_128_9 = var_128_6.aspd or 0
					local var_128_10 = var_0_1 and var_0_1.powerSimple and var_0_1.powerSimple(var_128_7, var_128_8, var_128_9) or var_128_7 * var_128_8 * var_128_9

					if var_128_5 < var_128_10 then
						var_128_5 = var_128_10
						var_128_4 = iter_128_1
					end
				end

				if var_128_4 and var_0_3 and var_0_3.draw then
					var_0_3.draw(var_128_3, var_128_4, {
						active = true,
						mx = var_128_0,
						my = var_128_1
					})

					local var_128_11 = var_0_3.getHoveredSlot and var_0_3.getHoveredSlot()

					if var_128_11 and var_128_11.imprint then
						var_58_17(arg_128_0, var_128_11.imprint, var_128_11)
					elseif var_0_3 and var_0_3._hoveredRandomOption then
						local var_128_12 = var_0_3._hoveredRandomOption

						var_58_18(arg_128_0, var_128_12.option, var_128_12.anchor, var_128_12.sym)
					elseif var_0_3 and var_0_3._hoveredSkill then
						local var_128_13 = var_0_3._hoveredSkill

						var_58_19(arg_128_0, var_128_13.skill, var_128_13.anchor)
					end

					if var_0_3 and var_0_3._hoveredAbsorbIcon then
						local var_128_14 = var_0_3._hoveredAbsorbIcon

						var_58_16(arg_128_0, var_128_14.stats, var_128_14.anchor)
					end
				end
			end

			if arg_128_0.target and arg_128_0.cache and arg_128_0.cache.layout and arg_128_0.state == "VISIBLE" and arg_128_0.fade > 0 then
				var_58_15(arg_128_0)
			end

			var_58_12(arg_128_0)

			return
		end

		if arg_128_1 and arg_128_1.imprintModal and arg_128_1.imprintModal.active then
			local var_128_15 = arg_128_0.ui or arg_128_1 and arg_128_1.ui or _G.ui

			if var_128_15 and var_128_15.virtual then
				local var_128_16 = var_128_15.virtual.W
				local var_128_17 = var_128_15.virtual.H
				local var_128_18 = var_128_15.pauseOverlayState and var_128_15.pauseOverlayState.active

				love.graphics.setColor(0, 0, 0, var_128_18 and 0.45 or 0.65)
				love.graphics.rectangle("fill", 0, 0, var_128_16, var_128_17)

				local var_128_19 = arg_128_1.imprintModal
				local var_128_20 = var_128_19 and (var_128_19.pending or var_128_19.victim and var_0_6(var_128_19.victim))

				if var_128_20 and var_0_3 and var_0_3.showBattlefieldPreview then
					var_0_3.showBattlefieldPreview(var_128_20)
				end

				local var_128_21 = var_128_19 and var_128_19.absorber

				if var_128_21 and var_0_3 and var_0_3.draw then
					var_0_3.draw(var_128_15, var_128_21, {
						active = true,
						modal = var_128_19,
						mx = var_128_0,
						my = var_128_1
					})
				end

				if var_0_3 and var_0_3._hoveredAbsorbIcon then
					local var_128_22 = var_0_3._hoveredAbsorbIcon

					var_58_16(arg_128_0, var_128_22.stats, var_128_22.anchor)
				end

				if var_0_3 and var_0_3.drawBattlefieldPreview then
					local var_128_23 = math.max(0.001, love.timer.getDelta())

					var_0_3.drawBattlefieldPreview(var_128_15, var_128_23, true, var_128_0, var_128_1)
				end

				local var_128_24 = var_0_3.getHoveredSlot and var_0_3.getHoveredSlot()

				if var_128_24 and var_128_24.imprint then
					var_58_17(arg_128_0, var_128_24.imprint, var_128_24)
				elseif var_0_3 and var_0_3._hoveredRandomOption then
					local var_128_25 = var_0_3._hoveredRandomOption

					var_58_18(arg_128_0, var_128_25.option, var_128_25.anchor, var_128_25.sym)
				end
			end

			var_58_12(arg_128_0)

			return
		end

		if not arg_128_0._outlineDrawnThisFrame then
			local var_128_26 = arg_128_0.locked and arg_128_0.target or arg_128_0.candidate or arg_128_0.target

			if var_58_1(arg_128_1, var_128_26) then
				var_58_7(arg_128_1, var_128_26)

				if arg_128_0.locked and arg_128_0.target and var_128_26 and var_128_26.ref and var_128_26.ref == arg_128_0.target.ref then
					arg_128_0._selectedOutlineDrawnThisFrame = true
				end
			end
		end

		if arg_128_0.locked and arg_128_0.target and not arg_128_0._selectedOutlineDrawnThisFrame and var_58_1(arg_128_1, arg_128_0.target) then
			var_58_7(arg_128_1, arg_128_0.target)

			arg_128_0._selectedOutlineDrawnThisFrame = true
		end

		local var_128_27 = arg_128_0.ui or arg_128_1 and arg_128_1.ui

		if var_128_27 then
			local var_128_28 = arg_128_1 and arg_128_1.mode == "battle"
			local var_128_29

			if var_128_28 then
				var_128_29 = (arg_128_0.locked and arg_128_0.target) ~= nil or arg_128_0.state == "VISIBLE" or arg_128_0.state == "PENDING_HIDE"
			else
				var_128_29 = (arg_128_0.locked and arg_128_0.target) ~= nil or arg_128_0.candidate ~= nil
			end

			local var_128_30 = arg_128_0.locked and arg_128_0.target or arg_128_0.candidate or arg_128_0.target
			local var_128_31 = var_128_30 and var_58_1(arg_128_1, var_128_30) and (var_128_30.ref or var_128_30) or nil

			if not var_128_31 and arg_128_1 and arg_128_1.classSelect and arg_128_1.classSelect.ru then
				var_128_31 = arg_128_1.classSelect.ru
				var_128_29 = true
			end

			if var_128_31 then
				local var_128_32 = var_128_29

				if var_128_31.isShadowMinion then
					var_128_32 = false
				end

				local var_128_33 = _G.slot

				if var_128_33 and var_128_33.spin and var_128_33.spin.active then
					var_128_32 = false
				end

				var_0_3.draw(var_128_27, var_128_31, {
					active = var_128_32,
					mx = var_128_0,
					my = var_128_1
				})

				local var_128_34

				if arg_128_1 and arg_128_1.absorbMode then
					if arg_128_0._heldRef then
						var_128_34 = arg_128_0._heldRef
					elseif arg_128_0.locked and arg_128_0.target then
						var_128_34 = arg_128_0.target.ref or arg_128_0.target
					end
				end

				if var_128_34 and not var_128_34.isShadowMinion then
					local var_128_35 = var_0_6(var_128_34)

					if var_128_35 then
						var_0_3.showBattlefieldPreview(var_128_35)
					else
						var_0_3.hideBattlefieldPreview()
					end
				elseif not arg_128_1 or not arg_128_1.imprintModal or not arg_128_1.imprintModal.active then
					var_0_3.hideBattlefieldPreview()
				end

				if var_0_3 and var_0_3._hoveredAbsorbIcon then
					local var_128_36 = var_0_3._hoveredAbsorbIcon

					var_58_16(arg_128_0, var_128_36.stats, var_128_36.anchor)
				end
			else
				var_0_3.draw(var_128_27, nil, {
					active = false,
					mx = var_128_0,
					my = var_128_1
				})

				local var_128_37

				if arg_128_1 and arg_128_1.absorbMode and arg_128_0._heldRef then
					var_128_37 = arg_128_0._heldRef
				end

				if var_128_37 and not var_128_37.isShadowMinion then
					local var_128_38 = var_0_6(var_128_37)

					if var_128_38 then
						var_0_3.showBattlefieldPreview(var_128_38)
					else
						var_0_3.hideBattlefieldPreview()
					end
				elseif not arg_128_1 or not arg_128_1.imprintModal or not arg_128_1.imprintModal.active then
					var_0_3.hideBattlefieldPreview()
				end
			end
		end

		if arg_128_0.locked and arg_128_0.target or arg_128_0.state == "VISIBLE" or arg_128_0.state == "PENDING_HIDE" then
			local var_128_39 = arg_128_0.locked and arg_128_0.target or arg_128_0.candidate or arg_128_0.target
			local var_128_40
			local var_128_41

			if var_128_39 then
				if var_128_39.ref and var_128_39.ref.x and var_128_39.ref.y then
					var_128_40, var_128_41 = var_0_16(var_128_39.ref.x), var_0_16(var_128_39.ref.y)
				elseif var_128_39.x and var_128_39.y then
					var_128_40, var_128_41 = var_0_16(var_128_39.x), var_0_16(var_128_39.y)
				end
			end

			if var_128_39 and var_58_13(var_128_39.ref) then
				local var_128_42 = arg_128_0.ui and arg_128_0.ui.tooltipCfg and arg_128_0.ui.tooltipCfg.magnusOffsetY or arg_128_0.ui and arg_128_0.ui.battle and arg_128_0.ui.battle.magnusTooltipOffsetY
				local var_128_43 = var_128_42 ~= nil and var_128_42 or -10

				var_128_41 = (var_128_41 or 0) + math.floor(var_128_43 + 0.5)
			end

			if var_128_39 and var_128_39.ref and (var_128_39.ref.subclass == "우르간" or var_128_39.ref.subclassName == "우르간" or var_128_39.ref.subclassKey == "우르간" or var_128_39.ref.subclass == "Urgan" or var_128_39.ref.subclassName == "Urgan" or var_128_39.ref.subclassKey == "Urgan") then
				local var_128_44 = arg_128_0.ui and arg_128_0.ui.tooltipCfg and arg_128_0.ui.tooltipCfg.urganOffsetY or arg_128_0.ui and arg_128_0.ui.battle and arg_128_0.ui.battle.urganTooltipOffsetY
				local var_128_45 = var_128_44 ~= nil and var_128_44 or -14

				var_128_41 = (var_128_41 or 0) + math.floor(var_128_45 + 0.5)
			end

			if var_128_39 and (var_58_14(var_128_39.ref) or var_128_39.ref and (var_128_39.ref.subclass == "젠" or var_128_39.ref.subclassName == "젠" or var_128_39.ref.subclassKey == "젠")) then
				var_128_41 = (var_128_41 or 0) - 6
			end

			if var_128_39 and var_128_39.ref and (var_128_39.ref.subclass == "안틀러" or var_128_39.ref.subclassName == "안틀러" or var_128_39.ref.subclassKey == "안틀러") then
				var_128_41 = (var_128_41 or 0) - 10
			end

			if var_128_39 and var_128_39.ref and (var_128_39.ref.subclass == "네크로 로드" or var_128_39.ref.subclassName == "네크로 로드" or var_128_39.ref.subclassKey == "네크로 로드") then
				var_128_41 = (var_128_41 or 0) - 6
			end

			if var_128_39 and var_128_39.ref and (var_128_39.ref.subclass == "데스 로드" or var_128_39.ref.subclassName == "데스 로드" or var_128_39.ref.subclassKey == "데스 로드" or var_128_39.ref.subclass == "Death Lord" or var_128_39.ref.subclassKey == "Death Lord") then
				var_128_41 = (var_128_41 or 0) - 14
			end

			if var_128_39 and var_128_39.ref and var_128_39.ref.sym == "D" then
				var_128_41 = (var_128_41 or 0) - 16
			end

			var_58_15(arg_128_0, var_128_40, var_128_41)
		end

		local var_128_46 = arg_128_0.ui or arg_128_1 and arg_128_1.ui

		if var_128_46 and var_0_3 and var_0_3.drawBattlefieldPreview then
			local var_128_47 = love.timer.getDelta()
			local var_128_48 = arg_128_1 and arg_128_1.imprintModal and arg_128_1.imprintModal.active

			var_0_3.drawBattlefieldPreview(var_128_46, var_128_47, var_128_48, var_128_0, var_128_1)
		end

		if var_0_3 and var_0_3.getHoveredSlot then
			local var_128_49 = var_0_3.getHoveredSlot()

			if var_128_49 and var_128_49.imprint then
				var_58_17(arg_128_0, var_128_49.imprint, var_128_49)
			elseif var_0_3 and var_0_3._hoveredRandomOption then
				local var_128_50 = var_0_3._hoveredRandomOption

				var_58_18(arg_128_0, var_128_50.option, var_128_50.anchor, var_128_50.sym)
			elseif var_0_3 and var_0_3._hoveredSkill then
				local var_128_51 = var_0_3._hoveredSkill

				var_58_19(arg_128_0, var_128_51.skill, var_128_51.anchor)
			elseif arg_128_1 and arg_128_1.classSelect and arg_128_1.classSelect._hoveredSkill then
				local var_128_52 = arg_128_1.classSelect._hoveredSkill

				var_58_19(arg_128_0, var_128_52.skill, var_128_52.anchor)
			elseif arg_128_1 and arg_128_1.classSelect and arg_128_1.classSelect._hoveredRandomOption then
				local var_128_53 = arg_128_1.classSelect._hoveredRandomOption

				var_58_18(arg_128_0, var_128_53.option, var_128_53.anchor, var_128_53.sym)
			end
		elseif arg_128_1 and arg_128_1.classSelect and arg_128_1.classSelect._hoveredSkill then
			local var_128_54 = arg_128_1.classSelect._hoveredSkill

			var_58_19(arg_128_0, var_128_54.skill, var_128_54.anchor)
		elseif arg_128_1 and arg_128_1.classSelect and arg_128_1.classSelect._hoveredRandomOption then
			local var_128_55 = arg_128_1.classSelect._hoveredRandomOption

			var_58_18(arg_128_0, var_128_55.option, var_128_55.anchor, var_128_55.sym)
		end

		var_58_12(arg_128_0)
	end

	function var_58_0.drawClassSelectRandomOptionOverlay(arg_129_0, arg_129_1)
		if not arg_129_1 or not arg_129_1.classSelect or not arg_129_1.classSelect._hoveredRandomOption then
			return
		end

		local var_129_0 = arg_129_1.classSelect._hoveredRandomOption

		var_58_18(arg_129_0, var_129_0.option, var_129_0.anchor, var_129_0.sym)
	end

	function var_58_0.drawPixelRoundedRect(arg_130_0, arg_130_1, arg_130_2, arg_130_3, arg_130_4, arg_130_5, arg_130_6)
		return var_58_11(arg_130_0, arg_130_1, arg_130_2, arg_130_3, arg_130_4, arg_130_5, arg_130_6)
	end

	function var_58_0.drawCustom(arg_131_0, arg_131_1, arg_131_2, arg_131_3, arg_131_4, arg_131_5, arg_131_6)
		if not arg_131_0.ui then
			return
		end

		local var_131_0 = arg_131_6 and arg_131_6.assets or arg_131_0.battlefield and arg_131_0.battlefield.assets
		local var_131_1 = arg_131_6 and arg_131_6.statIconTint
		local var_131_2 = arg_131_0.ui.font
		local var_131_3 = 1
		local var_131_4 = 1
		local var_131_5 = 5
		local var_131_6 = 8
		local var_131_7 = math.floor(var_0_33 * 0.75 + 0.5)
		local var_131_8 = 0
		local var_131_9

		if var_131_0 and var_131_0.iconsSmall and arg_131_2 and var_131_0.iconsSmall[arg_131_2] then
			var_131_9 = var_131_0.iconsSmall[arg_131_2]
		elseif var_131_0 and var_131_0.icons and arg_131_2 and var_131_0.icons[arg_131_2] then
			var_131_9 = var_131_0.icons[arg_131_2]
		end

		if var_131_9 then
			var_131_8 = var_131_9:getWidth() + 2
		else
			var_131_8 = 12
		end

		local var_131_10 = {}

		table.insert(var_131_10, {
			isTitle = true,
			value = tostring(arg_131_1 or ""),
			icon = arg_131_2,
			scale = var_131_3,
			titleColor = var_0_31.value
		})

		local function var_131_11(arg_132_0, arg_132_1)
			if not arg_132_1 or arg_132_1 <= 0 then
				return tostring(math.floor((arg_132_0 or 0) + 0.5))
			end

			local var_132_0 = math.max(0, math.floor(arg_132_1 + 0.5))
			local var_132_1 = 10^var_132_0
			local var_132_2 = math.floor((arg_132_0 or 0) * var_132_1 + 0.5) / var_132_1

			return string.format("%." .. tostring(var_132_0) .. "f", var_132_2)
		end

		for iter_131_0, iter_131_1 in ipairs(arg_131_3 or {}) do
			local var_131_12 = var_131_11(iter_131_1.cur, iter_131_1.precision)
			local var_131_13 = var_131_11(iter_131_1.nxt, iter_131_1.precision)
			local var_131_14 = (iter_131_1.nxt or 0) - (iter_131_1.cur or 0)
			local var_131_15 = var_131_14 > 0 and "▲" or var_131_14 < 0 and "▼" or "—"
			local var_131_16 = var_131_11(math.abs(var_131_14), iter_131_1.precision)
			local var_131_17 = var_131_14 == 0 and " -" or string.format("(%s%s) %s", var_131_14 > 0 and "+" or var_131_14 < 0 and "-" or "", var_131_16, var_131_15)
			local var_131_18 = var_131_14 > 0 and {
				0.6,
				1,
				0.6,
				1
			} or var_131_14 < 0 and {
				1,
				0.55,
				0.55,
				1
			} or {
				0.7,
				0.7,
				0.7,
				1
			}

			table.insert(var_131_10, {
				labelIcon = var_0_54(iter_131_1.label),
				label = iter_131_1.label,
				parts = {
					cur = var_131_12,
					nxt = var_131_13,
					delta = var_131_17,
					nxtColor = var_131_18,
					deltaColor = var_131_18
				},
				scale = var_131_4
			})
		end

		local var_131_19 = 0
		local var_131_20 = var_131_7

		for iter_131_2, iter_131_3 in ipairs(var_131_10) do
			local var_131_21 = iter_131_3.scale or var_131_4
			local var_131_22 = 0

			if iter_131_3.isTitle and iter_131_3.icon then
				var_131_22 = var_131_22 + var_131_8
			end

			if iter_131_3.label or iter_131_3.labelIcon then
				var_131_22 = var_131_22 + var_0_56(var_131_0, iter_131_3, var_131_2, var_131_21)
			end

			if iter_131_3.parts then
				var_131_22 = var_131_22 + var_0_18(var_131_2, iter_131_3.parts.cur or "", var_131_21)
				var_131_22 = var_131_22 + var_0_18(var_131_2, " → ", var_131_21)
				var_131_22 = var_131_22 + var_0_18(var_131_2, iter_131_3.parts.nxt or "", var_131_21)
				var_131_22 = var_131_22 + var_0_18(var_131_2, "  ", var_131_21)
				var_131_22 = var_131_22 + var_0_18(var_131_2, iter_131_3.parts.delta or "", var_131_21)
			else
				var_131_22 = var_131_22 + var_0_18(var_131_2, iter_131_3.value or "", var_131_21)
			end

			if var_131_19 < var_131_22 then
				var_131_19 = var_131_22
			end

			var_131_20 = var_131_20 + var_0_19(var_131_2, var_131_21) + (iter_131_3.isTitle and var_131_6 or var_131_5)
		end

		local var_131_23 = var_131_20 + math.floor(2.5) + var_131_7
		local var_131_24 = var_131_19 + var_131_7 * 2
		local var_131_25 = arg_131_0.ui.virtual.W
		local var_131_26 = arg_131_0.ui.virtual.H
		local var_131_27 = arg_131_4 or arg_131_0.mouseX
		local var_131_28 = arg_131_5 or arg_131_0.mouseY
		local var_131_29 = arg_131_0.ui and arg_131_0.ui.classCard and arg_131_0.ui.classCard.tooltip and arg_131_0.ui.classCard.tooltip.gap or nil
		local var_131_30 = arg_131_6 and arg_131_6.gap or var_131_29 or 10
		local var_131_31 = arg_131_0.ui and arg_131_0.ui.cursor and arg_131_0.ui.cursor.spriteW or 16
		local var_131_32 = arg_131_0.ui and arg_131_0.ui.cursor and arg_131_0.ui.cursor.spriteH or 16
		local var_131_33 = arg_131_0.ui and arg_131_0.ui.cursor and arg_131_0.ui.cursor.hotspotX
		local var_131_34 = arg_131_0.ui and arg_131_0.ui.cursor and arg_131_0.ui.cursor.hotspotY

		if var_131_33 == nil then
			var_131_33 = (arg_131_0.ui and arg_131_0.ui.cursor and arg_131_0.ui.cursor.autoCenter) == true and math.floor(var_131_31 / 2) or 0
		end

		if var_131_34 == nil then
			var_131_34 = (arg_131_0.ui and arg_131_0.ui.cursor and arg_131_0.ui.cursor.autoCenter) == true and math.floor(var_131_32 / 2) or 0
		end

		local var_131_35 = var_131_27 - var_131_33
		local var_131_36 = var_131_28 - var_131_34
		local var_131_37 = var_131_35 + var_131_31
		local var_131_38 = var_131_36 + var_131_32
		local var_131_39 = var_131_25 >= var_131_37 + var_131_30 + var_131_24
		local var_131_40 = var_131_36 - var_131_30 - var_131_23 >= 0
		local var_131_41 = var_131_39 and var_131_37 + var_131_30 or var_131_35 - var_131_30 - var_131_24
		local var_131_42 = var_131_40 and var_131_36 - var_131_30 - var_131_23 or var_131_38 + var_131_30

		if var_131_41 < 0 then
			var_131_41 = 0
		end

		if var_131_25 < var_131_41 + var_131_24 then
			var_131_41 = var_131_25 - var_131_24
		end

		if var_131_42 < 0 then
			var_131_42 = 0
		end

		if var_131_26 < var_131_42 + var_131_23 then
			var_131_42 = var_131_26 - var_131_23
		end

		local var_131_43, var_131_44 = var_0_16(var_131_41), var_0_16(var_131_42)
		local var_131_45 = {
			var_0_31.boxFill[1],
			var_0_31.boxFill[2],
			var_0_31.boxFill[3],
			var_0_31.boxFill[4] or 0.8
		}

		var_58_11(arg_131_0, var_131_43, var_131_44, var_131_24, var_131_23, var_131_45, nil)
		love.graphics.setFont(var_131_2)

		local var_131_46 = var_0_16(var_131_44 + var_131_7)
		local var_131_47

		for iter_131_4, iter_131_5 in ipairs(var_131_10) do
			local var_131_48 = iter_131_5.scale or var_131_4
			local var_131_49 = var_0_16(var_131_43 + var_131_7)

			if iter_131_5.isTitle then
				if iter_131_5.icon and var_131_0 then
					local var_131_50 = var_131_0.iconsSmall and var_131_0.iconsSmall[iter_131_5.icon] or var_131_0.icons and var_131_0.icons[iter_131_5.icon]

					if var_131_50 then
						if arg_131_0 and arg_131_0.target and arg_131_0.target.ref and arg_131_0.target.ref.jackpot5th or arg_131_0 and arg_131_0.candidate and arg_131_0.candidate.ref and arg_131_0.candidate.ref.jackpot5th or false then
							local var_131_51 = var_0_11()

							if var_131_51 then
								love.graphics.setShader(var_131_51)
							end

							love.graphics.setColor(1, 1, 1, 1)
							love.graphics.draw(var_131_50, var_131_49, var_131_46)

							if var_131_51 then
								love.graphics.setShader()
							end

							local var_131_52 = arg_131_0.ui and arg_131_0.ui.tooltipCfg and arg_131_0.ui.tooltipCfg.iconFoil or arg_131_0.ui and arg_131_0.ui.tooltip and arg_131_0.ui.tooltip.iconFoil or arg_131_0.ui and arg_131_0.ui.battle and (arg_131_0.ui.battle.jackpotFoil or arg_131_0.ui.battle.jackpotRainbow) or {}
							local var_131_53 = var_131_52.alpha ~= nil and var_131_52.alpha or 0.32

							if var_131_53 > 0 then
								local var_131_54 = var_0_13()

								love.graphics.setShader(var_131_54)

								local var_131_55 = (var_131_52.angleDeg or 20) * math.pi / 180
								local var_131_56 = math.cos(var_131_55)
								local var_131_57 = math.sin(var_131_55)

								var_131_54:send("u_time", love.timer.getTime() % 10000)
								var_131_54:send("u_alpha", var_131_53)
								var_131_54:send("u_dir", {
									var_131_56,
									var_131_57
								})
								var_131_54:send("u_cycle", var_131_52.cycleSec or 4)
								var_131_54:send("u_scale", var_131_52.scale or 2.5)

								local var_131_58 = var_131_52.grain or {}
								local var_131_59 = var_131_52.film or {}

								var_131_54:send("u_grainScale", var_131_58.scale or 3)
								var_131_54:send("u_grainAmp", var_131_58.amp or 0.2)
								var_131_54:send("u_filmFreq", var_131_59.freq or 2)
								var_131_54:send("u_filmAmp", var_131_59.amp or 0.25)
								var_131_54:send("u_specular", var_131_52.specular or 0.35)
								var_131_54:send("u_fresnelPow", var_131_52.fresnelPow or 2.5)
								var_131_54:send("u_frameUV", {
									0,
									0,
									1,
									1
								})
								var_131_54:send("u_colorGain", var_131_52.colorGain or 1.85)
								var_131_54:send("u_saturation", var_131_52.saturation or 1.5)
								var_131_54:send("u_mixBP", var_131_52.mixBP or 0.32)
								love.graphics.setColor(1, 1, 1, 1)

								local var_131_60 = love.graphics.getBlendMode()

								love.graphics.setBlendMode("alpha", "alphamultiply")
								love.graphics.draw(var_131_50, var_131_49, var_131_46)
								love.graphics.setBlendMode(var_131_60)
								love.graphics.setShader()
							end
						else
							local var_131_61 = var_0_11()

							if var_131_61 then
								love.graphics.setShader(var_131_61)
							end

							love.graphics.setColor(1, 1, 1, 1)
							love.graphics.draw(var_131_50, var_131_49, var_131_46)

							if var_131_61 then
								love.graphics.setShader()
							end
						end

						var_131_49 = var_131_49 + var_131_8
					end
				end

				local var_131_62 = iter_131_5.titleColor or var_0_31.value

				love.graphics.setColor(var_131_62[1], var_131_62[2], var_131_62[3], var_131_62[4] or 1)
				love.graphics.print(iter_131_5.value or "", var_131_49, var_131_46, 0, var_131_48, var_131_48)
			else
				local var_131_63 = var_0_57(arg_131_0, var_131_0, iter_131_5, var_131_49, var_131_46, var_131_48, var_131_2, 1, 1, var_131_1)

				if iter_131_5.parts then
					local var_131_64 = iter_131_5.parts.cur or ""
					local var_131_65 = iter_131_5.parts.nxt or ""
					local var_131_66 = iter_131_5.parts.delta or ""
					local var_131_67 = iter_131_5.parts.nxtColor or var_0_31.value
					local var_131_68 = iter_131_5.parts.deltaColor or var_131_67

					love.graphics.setColor(var_0_31.value[1], var_0_31.value[2], var_0_31.value[3], var_0_31.value[4] or 1)
					love.graphics.print(var_131_64, var_0_16(var_131_63), var_131_46, 0, var_131_48, var_131_48)

					local var_131_69 = var_131_63 + var_0_18(var_131_2, var_131_64, var_131_48)
					local var_131_70 = " → "

					love.graphics.print(var_131_70, var_0_16(var_131_69), var_131_46, 0, var_131_48, var_131_48)

					local var_131_71 = var_131_69 + var_0_18(var_131_2, var_131_70, var_131_48)

					love.graphics.setColor(var_131_67[1], var_131_67[2], var_131_67[3], var_131_67[4] or 1)
					love.graphics.print(var_131_65, var_0_16(var_131_71), var_131_46, 0, var_131_48, var_131_48)

					local var_131_72 = var_131_71 + var_0_18(var_131_2, var_131_65, var_131_48)
					local var_131_73 = "  "

					love.graphics.setColor(var_0_31.value[1], var_0_31.value[2], var_0_31.value[3], var_0_31.value[4] or 1)
					love.graphics.print(var_131_73, var_0_16(var_131_72), var_131_46, 0, var_131_48, var_131_48)

					local var_131_74 = var_131_72 + var_0_18(var_131_2, var_131_73, var_131_48)

					love.graphics.setColor(var_131_68[1], var_131_68[2], var_131_68[3], var_131_68[4] or 1)
					love.graphics.print(var_131_66, var_0_16(var_131_74), var_131_46, 0, var_131_48, var_131_48)
				end
			end

			local var_131_75 = iter_131_5.isTitle and var_131_6 or var_131_5

			var_131_46 = var_0_16(var_131_46 + var_0_19(var_131_2, var_131_48) + var_131_75)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	return var_58_0
end

return var_0_0
