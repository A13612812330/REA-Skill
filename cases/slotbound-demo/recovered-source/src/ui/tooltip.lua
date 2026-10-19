local var_0_0 = {}
local var_0_1 = require("src.game.power")
local var_0_2 = require("src.data.constants")
local var_0_3 = require("src.ui.imprint")
local var_0_4 = require("src.data.language")
local var_0_5 = require("src.data.faction")

local function var_0_6(arg_1_0)
	if not arg_1_0 then
		return "normal"
	end

	arg_1_0 = arg_1_0:lower()

	if arg_1_0 == "special" then
		return "special"
	end

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

local function var_0_7(arg_2_0)
	if not var_0_3 or not var_0_3.getImprintFromUnit then
		return nil
	end

	return var_0_3.getImprintFromUnit(arg_2_0)
end

var_0_0.getImprintDefFromUnit = var_0_7

local function var_0_8(arg_3_0, arg_3_1)
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

local var_0_9

local function var_0_10(arg_4_0)
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

local var_0_11

local function var_0_12()
	if var_0_11 ~= nil then
		return var_0_11 or nil
	end

	local var_5_0, var_5_1 = pcall(love.graphics.newShader, "    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){\n      vec4 t = Texel(texture, texture_coords);\n      return vec4(color.rgb, t.a * color.a);\n    }\n  ")

	var_0_11 = var_5_0 and var_5_1 and var_5_1 or false

	return var_0_11 or nil
end

local var_0_13

local function var_0_14()
	if var_0_13 then
		return var_0_13
	end

	local var_6_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      vec4 base = Texel(tex, tc) * color; // includes source alpha\n      if (base.a <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * base.a;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      // Apply saturation boost and color gain (icon-sized legibility)\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      return vec4(outRGB, alpha);\n    }\n  "

	var_0_13 = love.graphics.newShader(var_6_0)

	return var_0_13
end

local var_0_15

local function var_0_16()
	if var_0_15 then
		return var_0_15
	end

	local var_7_0 = "    extern number u_time;     // seconds\n    extern number u_alpha;    // overlay opacity (0..1), masked by sprite alpha\n    extern vec2   u_dir;      // normalized drift direction in UV space\n    extern number u_cycle;    // seconds per full color cycle (3..5)\n    extern number u_scale;    // spatial scale of pattern\n    extern number u_grainScale; // grain density (screen-space)\n    extern number u_grainAmp; // grain strength (0..1)\n    extern number u_filmFreq; // thin-film interference frequency\n    extern number u_filmAmp;  // thin-film amplitude\n    extern number u_specular; // metallic/specular band strength\n    extern number u_fresnelPow; // fresnel shaping power (>=1)\n    extern vec4   u_frameUV;  // {minU, minV, sizeU, sizeV}; for full images use {0,0,1,1}\n    extern number u_colorGain; // overall color gain (1.0 = neutral)\n    extern number u_saturation; // color saturation multiplier (1.0 = neutral)\n    extern number u_mixBP;    // mix factor between wide and blue-purple palette (0..1)\n\n    vec3 palette(float x, vec3 a, vec3 b, vec3 c, vec3 d){\n      return a + b * cos(6.28318 * (c * x + d));\n    }\n    float hash(vec2 p){\n      return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453);\n    }\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n      // IMPORTANT: treat input as an ALPHA MASK (text canvas). Only alpha matters.\n      float maskA = Texel(tex, tc).a;\n      if (maskA <= 0.001) return vec4(0.0);\n      float alpha = clamp(u_alpha, 0.0, 1.0) * maskA;\n      if (alpha <= 0.0) return vec4(0.0);\n\n      vec2 dir = u_dir;\n      if (length(dir) < 0.001) dir = vec2(0.94, 0.34);\n      else dir = normalize(dir);\n      vec2 ortho = vec2(-dir.y, dir.x);\n      vec2 tcL = tc;\n      if (u_frameUV.z > 0.0 && u_frameUV.w > 0.0){\n        tcL = (tc - u_frameUV.xy) / u_frameUV.zw;\n        tcL = clamp(tcL, 0.0, 1.0);\n      }\n      float u = dot(tcL, dir) * u_scale + (u_time / max(u_cycle, 0.001));\n      float v = dot(tcL, ortho) * u_scale;\n      float grainLine = abs(sin(dot(tcL, ortho) * u_grainScale));\n      float grainNoise = hash(tcL * 97.0 + vec2(13.3,7.7));\n      float grain = mix(grainLine, grainNoise, 0.25);\n      float film = u_filmAmp * (0.5 + 0.5 * sin(6.28318 * (u * u_filmFreq + grainNoise * 0.15)));\n      float x = u + film;\n      vec3 colBP = palette(x,\n        vec3(0.55, 0.50, 0.58),\n        vec3(0.25, 0.20, 0.28),\n        vec3(1.00, 1.00, 1.00),\n        vec3(0.10, 0.43, 0.78)\n      );\n      vec3 colWide = palette(u, vec3(0.52), vec3(0.12), vec3(1.0), vec3(0.00, 0.33, 0.66));\n      vec3 foil = mix(colWide, colBP, clamp(u_mixBP, 0.0, 1.0));\n      float band = 0.5 + 0.5 * sin(6.28318 * (u * 0.05 + v * 0.03));\n      float fres = pow(0.5 + 0.5 * sin(6.28318 * v * 0.10), max(1.0, u_fresnelPow));\n      float spec = u_specular * band * (0.2 + 0.8 * fres) * 0.15;\n      float grainMul = 1.0 + u_grainAmp * (grain * 0.15 - 0.03);\n      vec3 outRGB = foil * grainMul + spec;\n      float Y = dot(outRGB, vec3(0.2126, 0.7152, 0.0722));\n      outRGB = mix(vec3(Y), outRGB, max(0.0, u_saturation));\n      outRGB *= max(0.0, u_colorGain);\n      // Premultiply to guarantee no color outside the mask.\n      return vec4(outRGB * alpha, alpha);\n    }\n  "

	var_0_15 = love.graphics.newShader(var_7_0)

	return var_0_15
end

local function var_0_17(arg_8_0)
	return math.floor(arg_8_0 or 0)
end

local function var_0_18(arg_9_0)
	return ({
		"I",
		"II",
		"III",
		"IV",
		"V"
	})[tonumber(arg_9_0) or 1] or tostring(arg_9_0)
end

local function var_0_19(arg_10_0, arg_10_1, arg_10_2)
	if not arg_10_0 then
		return 0
	end

	return arg_10_0:getWidth(arg_10_1 or "") * (arg_10_2 or 1)
end

local var_0_20 = {
	{
		text = "[장난]",
		color = {
			1,
			0.45,
			0.24,
			1
		}
	},
	{
		text = "[PRANK]",
		color = {
			1,
			0.45,
			0.24,
			1
		}
	},
	{
		text = "[いたずら]",
		color = {
			1,
			0.45,
			0.24,
			1
		}
	},
	{
		text = "[恶作剧]",
		color = {
			1,
			0.45,
			0.24,
			1
		}
	},
	{
		text = "[응원]",
		color = {
			0.35,
			1,
			0.58,
			1
		}
	},
	{
		text = "[CHEER]",
		color = {
			0.35,
			1,
			0.58,
			1
		}
	},
	{
		text = "[応援]",
		color = {
			0.35,
			1,
			0.58,
			1
		}
	},
	{
		text = "[助威]",
		color = {
			0.35,
			1,
			0.58,
			1
		}
	}
}

local function var_0_21(arg_11_0, arg_11_1, arg_11_2, arg_11_3, arg_11_4, arg_11_5)
	arg_11_0 = tostring(arg_11_0 or "")

	local var_11_0 = 1

	while var_11_0 <= #arg_11_0 do
		local var_11_1
		local var_11_2
		local var_11_3

		for iter_11_0, iter_11_1 in ipairs(var_0_20) do
			local var_11_4, var_11_5 = arg_11_0:find(iter_11_1.text, var_11_0, true)

			if var_11_4 and (not var_11_1 or var_11_4 < var_11_1) then
				var_11_1, var_11_2, var_11_3 = var_11_4, var_11_5, iter_11_1.color
			end
		end

		if not var_11_1 then
			local var_11_6 = arg_11_0:sub(var_11_0)

			if var_11_6 ~= "" then
				arg_11_5(var_11_6, arg_11_2, arg_11_1, arg_11_3)

				arg_11_1 = arg_11_1 + arg_11_4(var_11_6)
			end

			break
		end

		if var_11_0 < var_11_1 then
			local var_11_7 = arg_11_0:sub(var_11_0, var_11_1 - 1)

			arg_11_5(var_11_7, arg_11_2, arg_11_1, arg_11_3)

			arg_11_1 = arg_11_1 + arg_11_4(var_11_7)
		end

		local var_11_8 = arg_11_0:sub(var_11_1, var_11_2)

		arg_11_5(var_11_8, var_11_3, arg_11_1, arg_11_3)

		arg_11_1 = arg_11_1 + arg_11_4(var_11_8)
		var_11_0 = var_11_2 + 1
	end

	return arg_11_1
end

local function var_0_22(arg_12_0, arg_12_1)
	if not arg_12_0 then
		return 0
	end

	return arg_12_0:getHeight() * (arg_12_1 or 1)
end

local function var_0_23(arg_13_0, arg_13_1, arg_13_2, arg_13_3)
	if not arg_13_0 or not arg_13_1 or not love or not love.graphics or not love.graphics.newCanvas then
		return nil
	end

	arg_13_2 = tostring(arg_13_2 or "")

	if arg_13_2 == "" then
		return nil
	end

	arg_13_3 = arg_13_3 or 1

	local var_13_0 = math.max(1, math.floor(arg_13_1:getWidth(arg_13_2) * arg_13_3 + 0.5))
	local var_13_1 = math.max(1, math.floor(arg_13_1:getHeight() * arg_13_3 + 0.5))
	local var_13_2 = arg_13_0._titleMaskCache

	if not var_13_2 then
		var_13_2 = {}
		arg_13_0._titleMaskCache = var_13_2
	end

	local var_13_3 = arg_13_0._titleMaskCanvas

	if not var_13_3 or var_13_2.w ~= var_13_0 or var_13_2.h ~= var_13_1 or var_13_2.text ~= arg_13_2 or var_13_2.scale ~= arg_13_3 or var_13_2.font ~= arg_13_1 then
		if not var_13_3 or var_13_2.w ~= var_13_0 or var_13_2.h ~= var_13_1 then
			if var_13_3 then
				var_13_3:release()
			end

			var_13_3 = love.graphics.newCanvas(var_13_0, var_13_1)
			arg_13_0._titleMaskCanvas = var_13_3
		end

		var_13_2.w, var_13_2.h, var_13_2.text, var_13_2.scale, var_13_2.font = var_13_0, var_13_1, arg_13_2, arg_13_3, arg_13_1

		love.graphics.push("all")
		love.graphics.setCanvas(var_13_3)
		love.graphics.clear(0, 0, 0, 0)
		love.graphics.setFont(arg_13_1)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.print(arg_13_2, 0, 0, 0, arg_13_3, arg_13_3)
		love.graphics.pop()
	end

	return var_13_3
end

local function var_0_24(arg_14_0)
	arg_14_0 = arg_14_0:gsub("#", "")

	local var_14_0 = tonumber(arg_14_0:sub(1, 2), 16) / 255
	local var_14_1 = tonumber(arg_14_0:sub(3, 4), 16) / 255
	local var_14_2 = tonumber(arg_14_0:sub(5, 6), 16) / 255

	return var_14_0, var_14_1, var_14_2, 1
end

local var_0_25 = (function()
	local var_15_0, var_15_1, var_15_2 = var_0_24("#EDE6F3")

	return {
		var_15_0,
		var_15_1,
		var_15_2,
		1
	}
end)()
local var_0_26 = {
	normal = {
		hp = 1,
		aspd = 1,
		atk = 1
	},
	advanced = {
		hp = 1.5,
		aspd = 1.08,
		atk = 1.5
	},
	rare = {
		hp = 2,
		aspd = 1.15,
		atk = 2
	},
	legendary = {
		hp = 3,
		aspd = 1.3,
		atk = 3
	},
	prism = {
		hp = 4,
		aspd = 1.3,
		atk = 4
	}
}

local function var_0_27(arg_16_0)
	if arg_16_0 < 0 then
		return 0
	end

	if arg_16_0 > 1 then
		return 1
	end

	return arg_16_0
end

local function var_0_28(arg_17_0, arg_17_1, arg_17_2)
	arg_17_2 = var_0_27(arg_17_2 or 0)

	return {
		var_0_27((arg_17_0[1] or 1) * (1 - arg_17_2) + (arg_17_1[1] or 1) * arg_17_2),
		var_0_27((arg_17_0[2] or 1) * (1 - arg_17_2) + (arg_17_1[2] or 1) * arg_17_2),
		var_0_27((arg_17_0[3] or 1) * (1 - arg_17_2) + (arg_17_1[3] or 1) * arg_17_2),
		arg_17_0[4] ~= nil and arg_17_0[4] or 1
	}
end

local var_0_29 = setmetatable({}, {
	__mode = "k"
})

local function var_0_30(arg_18_0)
	if not arg_18_0 or not arg_18_0.getData then
		return nil
	end

	local var_18_0, var_18_1 = pcall(arg_18_0.getData, arg_18_0)

	if var_18_0 then
		return var_18_1
	end

	return nil
end

local function var_0_31(arg_19_0, arg_19_1, arg_19_2, arg_19_3, arg_19_4)
	if not arg_19_0 then
		return nil
	end

	arg_19_1, arg_19_2 = math.floor(arg_19_1 or 0), math.floor(arg_19_2 or 0)
	arg_19_3, arg_19_4 = math.floor(arg_19_3 or 0), math.floor(arg_19_4 or 0)

	if arg_19_3 <= 0 or arg_19_4 <= 0 then
		return nil
	end

	local var_19_0 = var_0_29[arg_19_0]

	if not var_19_0 then
		var_19_0 = {}
		var_0_29[arg_19_0] = var_19_0
	end

	local var_19_1 = table.concat({
		arg_19_1,
		arg_19_2,
		arg_19_3,
		arg_19_4
	}, ":")

	if var_19_0[var_19_1] ~= nil then
		return var_19_0[var_19_1]
	end

	local var_19_2, var_19_3 = arg_19_0:getDimensions()
	local var_19_4 = arg_19_3
	local var_19_5 = arg_19_4
	local var_19_6 = -1
	local var_19_7 = -1

	for iter_19_0 = 0, arg_19_4 - 1 do
		for iter_19_1 = 0, arg_19_3 - 1 do
			local var_19_8 = arg_19_1 + iter_19_1
			local var_19_9 = arg_19_2 + iter_19_0

			if var_19_8 >= 0 and var_19_9 >= 0 and var_19_8 < var_19_2 and var_19_9 < var_19_3 then
				local var_19_10, var_19_11, var_19_12, var_19_13 = arg_19_0:getPixel(var_19_8, var_19_9)

				if var_19_13 and var_19_13 > 0.05 then
					if iter_19_1 < var_19_4 then
						var_19_4 = iter_19_1
					end

					if iter_19_0 < var_19_5 then
						var_19_5 = iter_19_0
					end

					if var_19_6 < iter_19_1 then
						var_19_6 = iter_19_1
					end

					if var_19_7 < iter_19_0 then
						var_19_7 = iter_19_0
					end
				end
			end
		end
	end

	local var_19_14

	if var_19_4 <= var_19_6 and var_19_5 <= var_19_7 then
		var_19_14 = {
			x = var_19_4,
			y = var_19_5,
			w = var_19_6 - var_19_4 + 1,
			h = var_19_7 - var_19_5 + 1
		}
	end

	var_19_0[var_19_1] = var_19_14 or false

	return var_19_14
end

local function var_0_32(arg_20_0, arg_20_1)
	if not arg_20_0 or not arg_20_0.locked or not arg_20_1 then
		return false
	end

	local var_20_0 = arg_20_1

	if var_20_0 and var_20_0.ref then
		var_20_0 = var_20_0.ref
	end

	local var_20_1 = arg_20_0.lockedTarget or arg_20_0.target

	if var_20_1 and var_20_1.ref then
		var_20_1 = var_20_1.ref
	end

	return var_20_1 ~= nil and var_20_0 ~= nil and var_20_1 == var_20_0
end

local function var_0_33(arg_21_0, arg_21_1)
	if not arg_21_1 then
		return var_0_25
	end

	if arg_21_1._held and arg_21_0.battlefield and require("src.game.combat").wooden_watchtower.overlaps(arg_21_0.battlefield, arg_21_1) then
		return {
			0.7,
			0.4,
			1,
			1
		}
	end

	local var_21_0 = var_0_6(arg_21_1.grade)
	local var_21_1 = arg_21_1.sym or arg_21_1.ref and arg_21_1.ref.sym

	if var_21_1 == "Joker" or var_21_1 == "J" then
		var_21_0 = "special"
	end

	if arg_21_1.jackpot5th == true or var_21_0 == "prism" then
		return {
			1,
			1,
			1,
			1,
			prism = true
		}
	end

	if var_21_0 == "special" then
		local var_21_2 = {
			0.9411764705882353,
			0.30980392156862746,
			0.8470588235294118,
			selected and pulse or 1
		}

		if selected then
			var_21_2 = var_0_28(var_21_2, {
				1,
				1,
				1,
				var_21_2[4]
			}, 0.2)
		end

		return var_21_2
	elseif var_21_0 == "advanced" then
		local var_21_3 = {
			0.45,
			1,
			0.55,
			selected and pulse or 1
		}

		if selected then
			var_21_3 = var_0_28(var_21_3, {
				1,
				1,
				1,
				var_21_3[4]
			}, 0.25)
		end

		return var_21_3
	elseif var_21_0 == "rare" then
		local var_21_4 = {
			0.35,
			0.75,
			1,
			selected and pulse or 1
		}

		if selected then
			var_21_4 = var_0_28(var_21_4, {
				1,
				1,
				1,
				var_21_4[4]
			}, 0.25)
		end

		return var_21_4
	elseif var_21_0 == "legendary" then
		local var_21_5 = {
			0.9215686274509803,
			0.5725490196078431,
			0.16862745098039217,
			selected and pulse or 1
		}

		if selected then
			var_21_5 = var_0_28(var_21_5, {
				1,
				1,
				1,
				var_21_5[4]
			}, 0.2)
		end

		return var_21_5
	end

	if selected then
		return {
			var_0_25[1] or 1,
			var_0_25[2] or 1,
			var_0_25[3] or 1,
			pulse
		}
	end

	return var_0_25
end

local var_0_34 = {
	boxFill = {
		0,
		0,
		0,
		0.8
	},
	boxBorder = (function()
		local var_22_0, var_22_1, var_22_2 = var_0_24("#333333")

		return {
			var_22_0,
			var_22_1,
			var_22_2,
			1
		}
	end)(),
	label = (function()
		local var_23_0, var_23_1, var_23_2 = var_0_24("#999999")

		return {
			var_23_0,
			var_23_1,
			var_23_2,
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
		local var_24_0, var_24_1, var_24_2 = var_0_24("#2A2A2A")

		return {
			var_24_0,
			var_24_1,
			var_24_2,
			1
		}
	end)(),
	gaugeFill = (function()
		local var_25_0, var_25_1, var_25_2 = var_0_24("#4FC3F7")

		return {
			var_25_0,
			var_25_1,
			var_25_2,
			1
		}
	end)(),
	hint = var_0_25
}
local var_0_35 = 3
local var_0_36 = 8
local var_0_37 = 4
local var_0_38 = 24
local var_0_39 = 0.12
local var_0_40 = 0.25
local var_0_41 = 0.15
local var_0_42 = 0.08
local var_0_43 = 0.15

local function var_0_44(arg_26_0)
	local var_26_0 = _G.currentGameLang or "ko"

	if arg_26_0 == "W" then
		return {
			dur = 0,
			cd = 3,
			name = var_0_4.getText("pseudo_skill_crush_name", var_26_0),
			trigger = var_0_4.getText("pseudo_skill_on_approach", var_26_0),
			effect = var_0_4.getText("pseudo_skill_crush_effect", var_26_0)
		}
	elseif arg_26_0 == "A" then
		return {
			dur = 0,
			cd = 2.5,
			name = var_0_4.getText("pseudo_skill_snipe_name", var_26_0),
			trigger = var_0_4.getText("pseudo_skill_ranged_shot", var_26_0),
			effect = var_0_4.getText("pseudo_skill_snipe_effect", var_26_0)
		}
	elseif arg_26_0 == "S" then
		return {
			dur = 0,
			cd = 0.8,
			name = var_0_4.getText("pseudo_skill_charge_name", var_26_0),
			trigger = var_0_4.getText("pseudo_skill_on_approach", var_26_0),
			effect = var_0_4.getText("pseudo_skill_charge_effect", var_26_0)
		}
	else
		return {
			dur = 0,
			cd = 0,
			effect = "-",
			trigger = "-",
			name = var_0_4.getText("pseudo_skill_basic_name", var_26_0)
		}
	end
end

local function var_0_45(arg_27_0, arg_27_1, arg_27_2)
	local var_27_0 = var_0_6(arg_27_2)
	local var_27_1 = tonumber(arg_27_1 or 1) or 1

	if arg_27_0 == "W" and var_27_1 == 1 and var_27_0 == "prism" then
		return "슬레이어"
	end

	if arg_27_0 == "W" and var_27_1 == 1 and var_27_0 == "legendary" then
		return "해골 투사"
	end

	if arg_27_0 == "W" and var_27_1 == 1 and var_27_0 == "rare" then
		return "투사"
	end

	if arg_27_0 == "W" and var_27_1 == 1 and var_27_0 == "advanced" then
		return "철퇴병"
	end

	if arg_27_0 == "A" and var_27_1 == 1 and var_27_0 == "prism" then
		return "명궁"
	end

	if arg_27_0 == "A" and var_27_1 == 1 and var_27_0 == "legendary" then
		return "해골궁수"
	end

	if arg_27_0 == "S" and var_27_1 == 1 and var_27_0 == "prism" then
		return "랜서"
	end

	if arg_27_0 == "S" and var_27_1 == 1 and var_27_0 == "legendary" then
		return "백골 창병"
	end

	if arg_27_0 == "M" and var_27_1 == 1 and var_27_0 == "legendary" then
		return "해골술사"
	end

	if arg_27_0 == "M" and var_27_1 == 1 and var_27_0 == "prism" then
		return "금단술사"
	end

	if arg_27_0 == "H" and var_27_1 == 1 and var_27_0 == "prism" then
		return "환수기병"
	end

	if arg_27_0 == "H" and var_27_1 == 1 and var_27_0 == "legendary" then
		return "사령기병"
	end

	if arg_27_0 == "D" and var_27_1 == 1 and var_27_0 == "prism" then
		return "천사"
	end

	if arg_27_0 == "D" and var_27_1 == 1 and var_27_0 == "legendary" then
		return "셰이드"
	end

	if arg_27_0 == "H" and var_27_1 == 1 and var_27_0 == "advanced" then
		return "철기병"
	end

	return classNameBy(arg_27_0, arg_27_1, arg_27_2)
end

local function var_0_46(arg_28_0, arg_28_1, arg_28_2)
	if not arg_28_0 then
		return nil
	end

	local var_28_0 = "⚔"

	if arg_28_0.role == "archer" then
		var_28_0 = "🏹"
	elseif arg_28_0.role == "spear" then
		var_28_0 = "🔱"
	end

	local var_28_1 = arg_28_0.sym or arg_28_0.role == "archer" and "A" or arg_28_0.role == "spear" and "S" or "W"
	local var_28_2 = var_0_45(var_28_1, arg_28_0.rank or arg_28_0.star or 1, arg_28_0.grade)

	if arg_28_0.isShadowMinion then
		var_28_2 = var_0_4.getEnemyName(arg_28_0.kind, arg_28_0.displayName, _G.currentGameLang or "ko")
	elseif arg_28_0.subclassName then
		var_28_2 = arg_28_0.subclassName
	end

	local var_28_3 = _G.currentGameLang or "ko"
	local var_28_4 = arg_28_0.subclassName and not arg_28_0.isShadowMinion and var_0_4.translateUnitName(tostring(arg_28_0.subclassName), var_28_3) or arg_28_0.isShadowMinion and var_0_4.translateUnitName(var_0_4.normalizeUnitName(var_28_2), var_28_3) or arg_28_0.name and var_0_4.translateUnitName(tostring(arg_28_0.name), var_28_3) or var_0_4.translateUnitName(var_0_4.normalizeUnitName(var_28_2), var_28_3)
	local var_28_5

	if arg_28_0.atkPeriod and arg_28_0.atkPeriod > 0 then
		var_28_5 = 1 / arg_28_0.atkPeriod
	elseif arg_28_0.atkTicks and arg_28_0.atkTicks > 0 then
		var_28_5 = 60 / arg_28_0.atkTicks
	else
		var_28_5 = 0
	end

	if arg_28_0._aspdBuff and arg_28_0._aspdBuff > 0 then
		var_28_5 = var_28_5 * (1 + arg_28_0._aspdBuff)
	end

	if arg_28_0._randomOptionKillHasteASPD and arg_28_0._randomOptionKillHasteASPD > 0 then
		var_28_5 = var_28_5 * (1 + arg_28_0._randomOptionKillHasteASPD)
	end

	if (arg_28_0._victorySignalASPD or 0) > 0 then
		var_28_5 = var_28_5 * (1 + arg_28_0._victorySignalASPD)
	end

	if arg_28_0._relentlessASPD and arg_28_0._relentlessASPD > 0 then
		var_28_5 = var_28_5 * (1 + arg_28_0._relentlessASPD)
	end

	local var_28_6 = require("src.game.combat").slow_effects.attackMultiplier(arg_28_0)
	local var_28_7 = var_28_5 * var_28_6
	local var_28_8 = var_0_44(arg_28_0.sym or "W")
	local var_28_9 = {
		name = (arg_28_0.isGuardianGolem or arg_28_0.isShadowMinion or var_28_1 == "Joker" or var_28_1 == "J") and var_28_4 or var_28_4 .. "(" .. var_28_0 .. ")",
		class = var_28_4,
		sym = var_28_1,
		star = arg_28_0.star or 1,
		rank = arg_28_0.rank or arg_28_0.star or 1,
		hp = arg_28_0.hp or arg_28_0.maxhp or 0,
		hpMax = arg_28_0.maxhp or arg_28_0.hp or 0,
		atk = arg_28_0.dmg or 0,
		aspd = var_28_7,
		isShadowMinion = arg_28_0.isShadowMinion,
		isGuardianGolem = arg_28_0.isGuardianGolem,
		aspdBuffActive = (arg_28_0._aspdBuff and arg_28_0._aspdBuff > 0 or arg_28_0._randomOptionKillHasteASPD and arg_28_0._randomOptionKillHasteASPD > 0 or arg_28_0._victorySignalASPD and arg_28_0._victorySignalASPD > 0 or arg_28_0._relentlessASPD and arg_28_0._relentlessASPD > 0) and true or false,
		aspdDebuffActive = var_28_6 < 1,
		distance = arg_28_0.distance or arg_28_0.range or 0,
		pseudoSkills = {
			var_28_8
		},
		absorbLV = arg_28_0.absorbLV or 1
	}
	local var_28_10 = arg_28_1 and arg_28_1.rosterUnits and arg_28_0.rosterIndex and arg_28_1.rosterUnits[arg_28_0.rosterIndex]
	local var_28_11 = var_28_10 and var_28_10.stats and tonumber(var_28_10.stats.atk)

	if var_28_11 ~= nil then
		local var_28_12 = tonumber(var_28_10._randomOptionAtkMul) or 1

		var_28_9.baseAtk = var_28_11 / (var_28_12 > 0 and var_28_12 or 1)
	end

	var_28_9.atkBuffActive = arg_28_1 and arg_28_1.mode == "battle" and var_28_11 ~= nil and math.floor((var_28_9.atk or 0) + 0.5) > math.floor(var_28_11 + 0.5) or false

	require("src.game.combat").anchored_stance.applyStatPreview(var_28_9, arg_28_0)
	require("src.game.combat").tense_string.applyStatPreview(var_28_9, arg_28_0, arg_28_1, arg_28_2)
	require("src.game.combat").pursuit_wedge.applyStatPreview(var_28_9, arg_28_0, arg_28_1)
	require("src.game.combat").rapid_fire_manual.applyStatPreview(var_28_9, arg_28_0, arg_28_1)

	if arg_28_0.isGuardianGolem then
		var_28_9.absorbLV = nil
		var_28_9.pseudoSkills = {}
	end

	var_28_9.shadowBaseStats = arg_28_0.shadowBaseStats
	var_28_9.grade = arg_28_0.grade
	var_28_9.jackpot5th = arg_28_0.jackpot5th == true

	local var_28_13 = arg_28_0.power

	if var_28_6 < 1 or var_28_9.tenseStringActive or var_28_9.pursuitWedgeActive or not var_28_13 then
		local var_28_14 = var_0_1.power(var_28_9.hpMax or var_28_9.hp or 0, var_28_9.atk or 0, var_28_9.aspd or 0)

		var_28_13 = var_28_14 and var_28_14 or 0
	end

	var_28_9.power = var_28_13

	return var_28_9
end

local function var_0_47(arg_29_0)
	if not arg_29_0 then
		return nil
	end

	local var_29_0

	if arg_29_0.atkPeriod and arg_29_0.atkPeriod > 0 then
		var_29_0 = 1 / arg_29_0.atkPeriod
	elseif arg_29_0.atkTicks and arg_29_0.atkTicks > 0 then
		var_29_0 = 60 / arg_29_0.atkTicks
	else
		var_29_0 = 0
	end

	local var_29_1 = var_29_0 * require("src.game.combat").slow_effects.attackMultiplier(arg_29_0)
	local var_29_2 = rawget(_G, "enemyPresets") or {}
	local var_29_3 = arg_29_0.kind and var_29_2[arg_29_0.kind] or nil
	local var_29_4 = var_0_4.getEnemyName(arg_29_0.kind, arg_29_0.displayName or var_29_3 and var_29_3.nameKo or arg_29_0.kind, _G.currentGameLang or "ko")
	local var_29_5 = {
		isEnemy = true,
		name = var_29_4,
		class = var_29_4,
		sym = "ENEMY_" .. (arg_29_0.kind or "Goblin"),
		hp = arg_29_0.hp or arg_29_0.maxhp or 0,
		hpMax = arg_29_0.maxhp or arg_29_0.hp or 0,
		atk = arg_29_0.dmg or 0,
		aspd = var_29_1,
		distance = arg_29_0.distance or 40,
		rank = arg_29_0.rank or 1,
		grade = arg_29_0.grade or "normal",
		isShadowMinion = arg_29_0.isShadowMinion,
		noBasicAttack = arg_29_0.noBasicAttack == true
	}
	local var_29_6

	if var_0_1 and var_0_1.combatPower then
		var_29_6 = select(1, var_0_1.combatPower(arg_29_0, {
			hp = var_29_5.hpMax or var_29_5.hp or 0,
			atk = var_29_5.atk or 0,
			aspd = var_29_1
		}))
	else
		var_29_6 = var_0_1.power(var_29_5.hpMax or var_29_5.hp or 0, var_29_5.atk or 0, var_29_1)
	end

	var_29_5.power = type(var_29_6) == "table" and (var_29_6[1] or 0) or var_29_6 or 0

	return var_29_5
end

local function var_0_48(arg_30_0, arg_30_1, arg_30_2, arg_30_3)
	if arg_30_0 and arg_30_0.isEnemy == true and tonumber(arg_30_0.power) ~= nil then
		return tonumber(arg_30_0.power)
	end

	local var_30_0 = var_0_1 and var_0_1.power and var_0_1.power(arg_30_1 or 0, arg_30_2 or 0, arg_30_3 or 0) or 0

	return type(var_30_0) == "table" and (var_30_0[1] or 0) or var_30_0 or 0
end

var_0_0.getDisplayPower = var_0_48

local function var_0_49(arg_31_0, arg_31_1, arg_31_2, arg_31_3)
	if not arg_31_0 then
		return
	end

	local var_31_0 = arg_31_2 or arg_31_1 and arg_31_1.ui or rawget(_G, "ui")
	local var_31_1 = var_31_0 and var_31_0._itemPurchased

	for iter_31_0, iter_31_1 in ipairs(require("src.game.item").getBasicTrainingBonuses(arg_31_3 or arg_31_0, var_31_1)) do
		local var_31_2 = iter_31_1.hp
		local var_31_3 = iter_31_1.atk
		local var_31_4 = iter_31_1.aspd

		if var_31_2 > 0 then
			local var_31_5 = math.max(1, tonumber(arg_31_0.hpMax or arg_31_0.hp or 1) or 1)

			arg_31_0.hpMax = var_31_5 + math.max(1, math.floor(var_31_5 * var_31_2 + 0.5))
			arg_31_0.hp = arg_31_0.hpMax
			arg_31_0.trainingHpBuffActive = true
		end

		if var_31_3 > 0 then
			arg_31_0.atk = math.max(0, (tonumber(arg_31_0.atk) or 0) * (1 + var_31_3))
			arg_31_0.trainingAtkBuffActive = true
		end

		if var_31_4 > 0 then
			arg_31_0.aspd = math.max(0.05, (tonumber(arg_31_0.aspd) or 0.05) * (1 + var_31_4))
			arg_31_0.trainingAspdBuffActive = true
		end
	end
end

local function var_0_50(arg_32_0, arg_32_1, arg_32_2)
	if not arg_32_0 then
		return nil
	end

	if arg_32_0.isGuardianGolem then
		return var_0_46(arg_32_0, arg_32_1, arg_32_2)
	end

	local var_32_0 = arg_32_0.sym == "A" and "🏹" or arg_32_0.sym == "S" and "🔱" or arg_32_0.sym == "M" and "✨" or arg_32_0.sym == "H" and "🐎" or arg_32_0.sym == "D" and "🗡" or "⚔"
	local var_32_1 = var_0_45(arg_32_0.sym, arg_32_0.rank or arg_32_0.star or 1, arg_32_0.grade)

	if arg_32_0.isShadowMinion then
		var_32_1 = var_0_4.getEnemyName(arg_32_0.kind, arg_32_0.displayName, _G.currentGameLang or "ko")
	elseif arg_32_0.subclassName then
		var_32_1 = arg_32_0.subclassName
	end

	local var_32_2 = _G.currentGameLang or "ko"
	local var_32_3 = arg_32_0.subclassName and not arg_32_0.isShadowMinion and var_0_4.translateUnitName(tostring(arg_32_0.subclassName), var_32_2) or var_0_4.translateUnitName(var_0_4.normalizeUnitName(var_32_1), var_32_2)
	local var_32_4 = 0
	local var_32_5 = 0
	local var_32_6 = 0
	local var_32_7 = 0

	if arg_32_0.stats then
		var_32_4 = arg_32_0.stats.hp or 0
		var_32_5 = arg_32_0.stats.atk or 0
		var_32_6 = arg_32_0.stats.aspd or 0
		var_32_7 = arg_32_0.stats.distance or 0
	else
		local var_32_8 = infoFromSymbol(arg_32_0.sym)

		var_32_4 = var_32_8.hp or 0
		var_32_5 = var_32_8.atk or 0
		var_32_6 = var_32_8.aspd or 0
		var_32_7 = var_32_8.distance or 0
	end

	local var_32_9 = {
		name = (arg_32_0.isShadowMinion or arg_32_0.sym == "Joker" or arg_32_0.sym == "J") and var_32_3 or var_32_3 .. "(" .. var_32_0 .. ")",
		class = var_32_3,
		sym = arg_32_0.sym,
		star = arg_32_0.star or 1,
		rank = arg_32_0.rank or arg_32_0.star or 1,
		isShadowMinion = arg_32_0.isShadowMinion,
		hp = var_32_4,
		hpMax = var_32_4,
		atk = var_32_5,
		baseAtk = var_32_5,
		aspd = var_32_6,
		distance = var_32_7,
		absorbLV = arg_32_0.absorbLV or 1,
		shadowBaseStats = arg_32_0.shadowBaseStats,
		grade = arg_32_0.grade,
		jackpot5th = arg_32_0.jackpot5th == true
	}

	if arg_32_1 and arg_32_1.computeRandomOptionAtkMul and arg_32_1.computeRandomOptionHpMul and arg_32_1.computeRandomOptionAspdMul and arg_32_1.computeRandomOptionRangeMul and arg_32_0 and arg_32_0.stats then
		local var_32_10 = arg_32_1.ui and arg_32_1.ui.jungsuBalance or 0
		local var_32_11 = true

		if arg_32_1.rosterUnits then
			for iter_32_0, iter_32_1 in ipairs(arg_32_1.rosterUnits) do
				if iter_32_1 and iter_32_1 ~= arg_32_0 and iter_32_1.sym == arg_32_0.sym then
					var_32_11 = false

					break
				end
			end
		end

		local var_32_12 = {
			isBattleMode = false,
			isBossWave = false,
			isJudgementWave = false,
			deadAllyCount = 0,
			maxHp = 1,
			currentHp = 1,
			enemyCount = 0,
			uniqueFamily = var_32_11
		}
		local var_32_13 = {
			randomOptions = arg_32_0.randomOptions,
			sym = arg_32_0.sym,
			firstHitUsed = arg_32_0.firstHitUsed
		}
		local var_32_14 = tonumber(arg_32_1.computeRandomOptionAtkMul(var_32_13, var_32_12)) or 1
		local var_32_15 = tonumber(arg_32_1.computeRandomOptionHpMul(var_32_13)) or 1
		local var_32_16 = tonumber(arg_32_1.computeRandomOptionAspdMul(var_32_13, var_32_10)) or 1
		local var_32_17 = tonumber(arg_32_1.computeRandomOptionRangeMul(var_32_13, arg_32_0.sym)) or 1

		if var_32_14 <= 0 then
			var_32_14 = 1
		end

		if var_32_15 <= 0 then
			var_32_15 = 1
		end

		if var_32_16 <= 0 then
			var_32_16 = 1
		end

		if var_32_17 <= 0 then
			var_32_17 = 1
		end

		local var_32_18 = (tonumber(arg_32_0.stats.atk) or 0) / var_32_14
		local var_32_19 = (tonumber(arg_32_0.stats.hp) or 0) / var_32_15
		local var_32_20 = (tonumber(arg_32_0.stats.aspd) or 0.05) / var_32_16
		local var_32_21 = (tonumber(arg_32_0.stats.distance) or 0) / var_32_17
		local var_32_22 = {
			isBattleMode = true,
			isBossWave = false,
			isJudgementWave = false,
			deadAllyCount = 0,
			enemyCount = 1,
			currentHp = var_32_19,
			maxHp = var_32_19,
			uniqueFamily = var_32_11
		}
		local var_32_23 = {
			randomOptions = arg_32_0.randomOptions,
			sym = arg_32_0.sym,
			firstHitUsed = arg_32_1.mode ~= "battle" or arg_32_0.firstHitUsed
		}
		local var_32_24 = tonumber(arg_32_1.computeRandomOptionAtkMul(var_32_23, var_32_22)) or 1
		local var_32_25 = tonumber(arg_32_1.computeRandomOptionHpMul(var_32_23)) or 1
		local var_32_26 = tonumber(arg_32_1.computeRandomOptionAspdMul(var_32_23, var_32_10)) or 1
		local var_32_27 = tonumber(arg_32_1.computeRandomOptionRangeMul(var_32_23, arg_32_0.sym)) or 1

		if var_32_24 <= 0 then
			var_32_24 = 1
		end

		if var_32_25 <= 0 then
			var_32_25 = 1
		end

		if var_32_26 <= 0 then
			var_32_26 = 1
		end

		if var_32_27 <= 0 then
			var_32_27 = 1
		end

		var_32_9.atk = math.max(0, var_32_18 * var_32_24)
		var_32_9.baseAtk = var_32_18
		var_32_9.hpMax = math.max(0, math.floor(var_32_19 * var_32_25 + 0.5))
		var_32_9.hp = var_32_9.hpMax
		var_32_9.aspd = math.max(0, var_32_20 * var_32_26)
		var_32_9.distance = math.max(0, var_32_21 * var_32_27)
	end

	var_0_49(var_32_9, arg_32_1, arg_32_2, arg_32_0)
	require("src.game.combat").tense_string.applyStatPreview(var_32_9, arg_32_0, arg_32_1, arg_32_2)
	require("src.game.combat").wooden_watchtower.applyStatPreview(var_32_9, arg_32_0, arg_32_1)
	require("src.game.combat").anchored_stance.applyStatPreview(var_32_9, arg_32_0)

	local var_32_28 = var_0_1.power(var_32_9.hpMax or var_32_9.hp or 0, var_32_9.atk or 0, var_32_9.aspd or var_32_6)

	var_32_9.power = type(var_32_28) == "table" and (var_32_28[1] or 0) or var_32_28 or 0

	return var_32_9
end

local function var_0_51(arg_33_0)
	local var_33_0 = "⚔"
	local var_33_1 = 9
	local var_33_2 = 70
	local var_33_3 = 1.5
	local var_33_4 = 50

	if arg_33_0 == "A" then
		var_33_0 = "🏹"
		var_33_1 = 8
		var_33_2 = 40
		var_33_3 = 1.3
		var_33_4 = 150
	elseif arg_33_0 == "S" then
		var_33_0 = "🔱"
		var_33_1 = 12
		var_33_2 = 65
		var_33_3 = 1.25
		var_33_4 = 55
	elseif arg_33_0 == "M" then
		var_33_0 = "✨"
		var_33_1 = 17
		var_33_2 = 55
		var_33_3 = 1.135
		var_33_4 = 140
	elseif arg_33_0 == "H" then
		var_33_0 = "🐎"
		var_33_1 = 17
		var_33_2 = 90
		var_33_3 = 1.135
		var_33_4 = 55
	elseif arg_33_0 == "D" then
		var_33_0 = "🗡"
		var_33_1 = 23
		var_33_2 = 120
		var_33_3 = 1.2
		var_33_4 = 60
	elseif arg_33_0 == "Joker" or arg_33_0 == "J" then
		var_33_1 = 32
		var_33_2 = 90
		var_33_3 = 1
		var_33_4 = 140
	elseif type(arg_33_0) == "string" and arg_33_0:find("ENEMY_") then
		var_33_0 = "🌘"
		var_33_1 = 10
		var_33_2 = 50
		var_33_3 = 1
		var_33_4 = 40
	end

	local var_33_5 = classNameBy(arg_33_0, 1)
	local var_33_6 = var_0_44(arg_33_0)
	local var_33_7 = {
		star = 1,
		absorbLV = 1,
		rank = 1,
		name = (arg_33_0 == "Joker" or arg_33_0 == "J") and var_33_5 or var_33_5 .. "(" .. var_33_0 .. ")",
		class = var_33_5,
		sym = arg_33_0,
		hp = var_33_2,
		hpMax = var_33_2,
		atk = var_33_1,
		aspd = var_33_3,
		distance = var_33_4,
		pseudoSkills = {
			var_33_6
		}
	}

	var_33_7.jackpot5th = false
	var_33_7.power = var_0_1.power(var_33_7.hpMax or var_33_7.hp or 0, var_33_7.atk or 0, var_33_3) or 0

	return var_33_7
end

local function var_0_52(arg_34_0, arg_34_1, arg_34_2, arg_34_3)
	arg_34_3 = arg_34_3 or 1

	if arg_34_2 >= var_0_19(arg_34_0, arg_34_1, arg_34_3) then
		return arg_34_1
	end

	local var_34_0 = "..."
	local var_34_1 = var_0_19(arg_34_0, var_34_0, arg_34_3)
	local var_34_2 = rawget(_G, "utf8")

	if not var_34_2 then
		local var_34_3, var_34_4 = pcall(require, "utf8")

		if var_34_3 then
			var_34_2 = var_34_4
		end
	end

	if not var_34_2 or not var_34_2.len or not var_34_2.offset then
		local var_34_5 = 0
		local var_34_6 = #arg_34_1

		while var_34_5 < var_34_6 do
			local var_34_7 = math.floor((var_34_5 + var_34_6 + 1) / 2)
			local var_34_8 = arg_34_1:sub(1, var_34_7)

			if arg_34_2 >= var_0_19(arg_34_0, var_34_8, arg_34_3) + var_34_1 then
				var_34_5 = var_34_7
			else
				var_34_6 = var_34_7 - 1
			end
		end

		return arg_34_1:sub(1, var_34_5) .. var_34_0
	end

	local var_34_9 = var_34_2.len(arg_34_1)

	if not var_34_9 then
		return arg_34_1
	end

	local function var_34_10(arg_35_0, arg_35_1)
		if arg_35_1 <= 0 then
			return ""
		end

		local var_35_0 = var_34_2.offset(arg_35_0, arg_35_1 + 1)

		if var_35_0 then
			return arg_35_0:sub(1, var_35_0 - 1)
		else
			return arg_35_0
		end
	end

	local var_34_11 = 0
	local var_34_12 = var_34_9

	while var_34_11 < var_34_12 do
		local var_34_13 = math.floor((var_34_11 + var_34_12 + 1) / 2)
		local var_34_14 = var_34_10(arg_34_1, var_34_13)

		if arg_34_2 >= var_0_19(arg_34_0, var_34_14, arg_34_3) + var_34_1 then
			var_34_11 = var_34_13
		else
			var_34_12 = var_34_13 - 1
		end
	end

	return var_34_10(arg_34_1, var_34_11) .. var_34_0
end

local function var_0_53(arg_36_0, arg_36_1)
	local var_36_0 = arg_36_0

	if arg_36_0 and arg_36_0.battlefield then
		var_36_0 = arg_36_0.battlefield
	end

	if not var_36_0 then
		return 1
	end

	local var_36_1 = 1
	local var_36_2 = var_36_0.itemBuffs and var_36_0.itemBuffs.global

	if var_36_2 then
		local var_36_3 = var_36_2.primeStrength

		if var_36_3 and var_36_3.active and love.timer.getTime() - (var_36_3.t0 or 0) < (var_36_3.dur or 0) then
			var_36_1 = var_36_1 * (var_36_3.atkMul or 1)
		end

		local var_36_4 = var_36_2.forestFragment

		if var_36_4 and var_36_4.active and arg_36_1 and love.timer.getTime() - (var_36_4.t0 or 0) < (var_36_4.dur or 0) then
			local var_36_5 = arg_36_1.role
			local var_36_6 = arg_36_1.distance or 0

			if var_36_5 == "archer" or var_36_5 == "mage" or var_36_6 >= 100 then
				var_36_1 = var_36_1 * (var_36_4.atkMul or 1.15)
			end
		end
	end

	local var_36_7 = 0

	for iter_36_0, iter_36_1 in ipairs(var_36_0.allies or {}) do
		if iter_36_1 and iter_36_1.alive and not iter_36_1.dying and (tonumber(iter_36_1.hp) or 0) > 0 then
			var_36_7 = var_36_7 + 1
		end
	end

	local var_36_8 = var_36_0.ui and var_36_0.ui._itemPurchased or var_36_0._itemPurchased or arg_36_0 and arg_36_0._itemPurchased

	if type(var_36_8) == "table" then
		for iter_36_2, iter_36_3 in ipairs(var_36_8) do
			if iter_36_3 and iter_36_3.key == "BattleCryItem" and var_36_7 >= (tonumber(iter_36_3.requiredAllies) or 5) then
				local var_36_9 = iter_36_3.atkBonus
				local var_36_10 = math.max(1, math.floor(tonumber(iter_36_3.level or 1) or 1))

				var_36_1 = var_36_1 * (1 + (type(var_36_9) == "table" and tonumber(var_36_9[math.min(var_36_10, #var_36_9)] or var_36_9[#var_36_9]) or 0 or 0))
			elseif iter_36_3 and iter_36_3.key == "SolitaryOath" and var_36_7 <= (tonumber(iter_36_3.maxAllies) or 3) then
				local var_36_11 = iter_36_3.atkBonus
				local var_36_12 = math.max(1, math.floor(tonumber(iter_36_3.level or 1) or 1))

				var_36_1 = var_36_1 * (1 + (type(var_36_11) == "table" and tonumber(var_36_11[math.min(var_36_12, #var_36_11)] or var_36_11[#var_36_11]) or 0 or 0))
			end
		end
	end

	return var_36_1
end

local function var_0_54(arg_37_0)
	local var_37_0 = arg_37_0

	if arg_37_0 and arg_37_0.battlefield then
		var_37_0 = arg_37_0.battlefield
	end

	if not var_37_0 or not var_37_0.itemBuffs or not var_37_0.itemBuffs.global then
		return false
	end

	local var_37_1 = var_37_0.itemBuffs.global.brickShield

	if var_37_1 and var_37_1.active and love.timer.getTime() - (var_37_1.t0 or 0) < (var_37_1.dur or 0) then
		return true
	end

	return false
end

local var_0_55 = {
	ATK = "atk",
	HP = "hp",
	PWR = "pwr",
	DIST = "dist",
	ASPD = "aspd"
}
local var_0_56 = {
	aspd = "stat_tooltip_aspd",
	atk = "stat_tooltip_atk",
	hp = "stat_tooltip_hp",
	dist = "stat_tooltip_dist",
	pwr = "stat_tooltip_pwr"
}

local function var_0_57(arg_38_0)
	if not arg_38_0 then
		return nil
	end

	if var_0_55[arg_38_0] then
		return var_0_55[arg_38_0]
	end

	local var_38_0 = string.upper(tostring(arg_38_0))

	return var_0_55[var_38_0]
end

local function var_0_58(arg_39_0, arg_39_1)
	if not arg_39_1 then
		return nil
	end

	return require("src.data.assets").getTooltipStatIcon(arg_39_0, arg_39_1)
end

local function var_0_59(arg_40_0, arg_40_1, arg_40_2, arg_40_3)
	local var_40_0 = arg_40_1.labelIcon or var_0_57(arg_40_1.label)
	local var_40_1 = var_0_58(arg_40_0, var_40_0)

	if var_40_1 then
		return math.floor(var_40_1:getWidth() * (arg_40_3 or 1) + 4 + 0.5)
	end

	if arg_40_1.label then
		return var_0_19(arg_40_2, arg_40_1.label .. ": ", arg_40_3)
	end

	return 0
end

local function var_0_60(arg_41_0, arg_41_1, arg_41_2, arg_41_3, arg_41_4)
	local var_41_0 = 0

	for iter_41_0, iter_41_1 in ipairs(arg_41_1 or {}) do
		if iter_41_1.labelIcon or arg_41_4 and iter_41_1.label then
			var_41_0 = math.max(var_41_0, var_0_59(arg_41_0, iter_41_1, arg_41_2, iter_41_1.scale or arg_41_3 or 1))
		end
	end

	return math.ceil(var_41_0)
end

local function var_0_61(arg_42_0, arg_42_1, arg_42_2, arg_42_3, arg_42_4, arg_42_5, arg_42_6, arg_42_7, arg_42_8, arg_42_9)
	local var_42_0 = arg_42_2.labelIcon or var_0_57(arg_42_2.label)
	local var_42_1 = var_0_58(arg_42_1, var_42_0)

	if var_42_1 then
		local var_42_2 = var_0_22(arg_42_6, arg_42_5)
		local var_42_3 = var_42_1:getHeight() * arg_42_5
		local var_42_4 = math.floor(arg_42_4 + (var_42_2 - var_42_3) * 0.5 + 0.5) + 1

		if type(arg_42_9) == "table" and arg_42_9[1] ~= nil then
			love.graphics.setColor(arg_42_9[1], arg_42_9[2], arg_42_9[3], (arg_42_9[4] or 1) * (arg_42_7 or 1) * (arg_42_8 or 1))
		else
			love.graphics.setColor(1, 1, 1, (arg_42_7 or 1) * (arg_42_8 or 1))
		end

		love.graphics.draw(var_42_1, arg_42_3, var_42_4, 0, arg_42_5, arg_42_5)

		local var_42_5 = arg_42_0 and arg_42_0.mouseX
		local var_42_6 = arg_42_0 and arg_42_0.mouseY
		local var_42_7 = var_42_1:getWidth() * arg_42_5
		local var_42_8 = var_42_1:getHeight() * arg_42_5

		if var_0_56[var_42_0] and var_42_5 and var_42_6 and (arg_42_7 or 1) * (arg_42_8 or 1) > 0.05 and arg_42_3 <= var_42_5 and var_42_5 <= arg_42_3 + var_42_7 and var_42_4 <= var_42_6 and var_42_6 <= var_42_4 + var_42_8 then
			arg_42_0._statIconHover = {
				key = var_42_0,
				x = arg_42_3,
				y = var_42_4,
				w = var_42_7,
				h = var_42_8
			}
		end

		return arg_42_3 + var_42_1:getWidth() * arg_42_5 + 4
	end

	if arg_42_2.label then
		local var_42_9 = arg_42_2.labelColor or var_0_34.label

		if var_42_9 == "prism" then
			local var_42_10 = (arg_42_0.ui and arg_42_0.ui.tooltipCfg and arg_42_0.ui.tooltipCfg.iconFoil or arg_42_0.ui and arg_42_0.ui.tooltip and arg_42_0.ui.tooltip.iconFoil or arg_42_0.ui and arg_42_0.ui.battle and (arg_42_0.ui.battle.jackpotFoil or arg_42_0.ui.battle.jackpotRainbow) or {}).cycleSec or 4
			local var_42_11 = love.timer.getTime() / var_42_10 * 2 * math.pi
			local var_42_12 = 0.6 + 0.4 * math.sin(var_42_11 + 0)
			local var_42_13 = 0.45 + 0.3 * math.sin(var_42_11 + 2.1)
			local var_42_14 = 0.8 + 0.2 * math.sin(var_42_11 + 4.2)

			love.graphics.setColor(var_42_12, var_42_13, var_42_14, (arg_42_7 or 1) * (arg_42_8 or 1))
		else
			love.graphics.setColor(var_42_9[1], var_42_9[2], var_42_9[3], (var_42_9[4] or 1) * (arg_42_7 or 1) * (arg_42_8 or 1))
		end

		love.graphics.print(arg_42_2.label .. ": ", arg_42_3, arg_42_4, 0, arg_42_5, arg_42_5)

		return arg_42_3 + var_0_19(arg_42_6, arg_42_2.label .. ": ", arg_42_5)
	end

	return arg_42_3
end

local function var_0_62(arg_43_0)
	local var_43_0 = 1

	if not arg_43_0 then
		return var_43_0
	end

	local var_43_1 = 0
	local var_43_2 = arg_43_0.imprints

	if type(var_43_2) == "table" then
		for iter_43_0, iter_43_1 in pairs(var_43_2) do
			if iter_43_1 then
				local var_43_3 = iter_43_1.rarity or "normal"
				local var_43_4 = 1

				if var_43_3 == "advanced" then
					var_43_4 = 2
				elseif var_43_3 == "rare" then
					var_43_4 = 3
				elseif var_43_3 == "legendary" or var_43_3 == "legend" then
					var_43_4 = 4
				elseif var_43_3 == "prism" then
					var_43_4 = 5
				end

				local var_43_5 = math.max(1, tonumber(iter_43_1.level) or 1)

				var_43_1 = var_43_1 + var_43_4 + (var_43_5 - 1)
			end
		end
	end

	local var_43_6 = math.floor((tonumber(arg_43_0.absorbLV or 0) or 0) / 3)

	return var_43_0 + var_43_1 + var_43_6
end

local function var_0_63(arg_44_0, arg_44_1, arg_44_2, arg_44_3, arg_44_4, arg_44_5, arg_44_6, arg_44_7)
	local var_44_0 = arg_44_0.font
	local var_44_1 = 1
	local var_44_2 = 1
	local var_44_3 = 5
	local var_44_4 = 4
	local var_44_5 = 0
	local var_44_6 = 0
	local var_44_7 = arg_44_1 and arg_44_1.sym
	local var_44_8

	if arg_44_3 and arg_44_3.iconsSmall and var_44_7 and arg_44_3.iconsSmall[var_44_7] then
		var_44_8 = arg_44_3.iconsSmall[var_44_7]
	elseif arg_44_3 and arg_44_3.icons and var_44_7 and arg_44_3.icons[var_44_7] then
		var_44_8 = arg_44_3.icons[var_44_7]
	end

	if var_44_8 then
		var_44_6 = var_44_8:getWidth() + 2
	else
		var_44_6 = 12
	end

	local var_44_9 = {}
	local var_44_10 = arg_44_7 and arg_44_7.sandboxMode == true
	local var_44_11 = {
		0.6,
		1,
		0.6,
		1
	}

	if arg_44_1 and arg_44_1.prediction then
		table.insert(var_44_9, {
			predNote = true,
			isTitle = true,
			value = var_0_4.getText("absorb_prediction", _G.currentGameLang or "ko"),
			scale = var_44_1
		})
	else
		local var_44_12 = arg_44_1 and arg_44_1.grade or arg_44_4 and arg_44_4.grade
		local var_44_13 = {
			1,
			1,
			1,
			1
		}

		if var_44_12 == "special" then
			var_44_13 = {
				0.9411764705882353,
				0.30980392156862746,
				0.8470588235294118,
				1
			}
		elseif var_44_12 == "advanced" then
			var_44_13 = {
				0.6,
				1,
				0.6,
				1
			}
		elseif var_44_12 == "rare" then
			var_44_13 = {
				0.6,
				0.75,
				1,
				1
			}
		elseif var_44_12 == "legendary" then
			var_44_13 = {
				0.9215686274509803,
				0.5725490196078431,
				0.16862745098039217,
				1
			}
		end

		local var_44_14 = arg_44_1.sym == "Joker" or arg_44_1.sym == "J"
		local var_44_15 = {
			isTitle = true,
			value = tostring(arg_44_1.class or ""),
			scale = var_44_1,
			icon = var_44_14 and "Joker" or arg_44_1.sym,
			titleColor = var_44_13,
			iconColor = var_44_13,
			nameSweepGrade = (var_44_12 == "legendary" or var_44_12 == "prism") and var_44_12 or nil,
			iconOriginalColor = var_44_14
		}

		if arg_44_1 and arg_44_1.jackpot5th or arg_44_4 and arg_44_4.jackpot5th then
			var_44_15.iconFoil = true
			var_44_15.nameSweepGrade = "prism"
		end

		table.insert(var_44_9, var_44_15)
	end

	table.insert(var_44_9, {
		kind = "thinSep",
		padAfter = 1,
		padBefore = 1
	})

	if arg_44_1 and arg_44_1.prediction and arg_44_1.pred then
		local function var_44_16(arg_45_0)
			arg_45_0 = math.floor((arg_45_0 or 0) + 0.5)

			local var_45_0 = tostring(arg_45_0)
			local var_45_1

			repeat
				local var_45_2

				var_45_0, var_45_2 = var_45_0:gsub("^(%-?%d+)(%d%d%d)", "%1,%2")
			until var_45_2 == 0

			return var_45_0
		end

		local function var_44_17(arg_46_0)
			local var_46_0 = (arg_46_0 or 0) * 100
			local var_46_1 = math.max(0, math.min(100, math.floor(var_46_0 + 0.5)))

			return tostring(var_46_1) .. "%"
		end

		local function var_44_18(arg_47_0, arg_47_1)
			if not arg_47_1 or arg_47_1 <= 0 then
				return var_44_16(arg_47_0)
			end

			local var_47_0 = math.max(0, math.floor(arg_47_1 + 0.5))
			local var_47_1 = 10^var_47_0
			local var_47_2 = math.floor((arg_47_0 or 0) * var_47_1 + 0.5) / var_47_1

			return string.format("%." .. tostring(var_47_0) .. "f", var_47_2)
		end

		local function var_44_19(arg_48_0, arg_48_1, arg_48_2, arg_48_3)
			arg_48_3 = arg_48_3 or {}

			local var_48_0 = (arg_48_2 or 0) - (arg_48_1 or 0)
			local var_48_1 = var_48_0 > 0 and "▲" or var_48_0 < 0 and "▼" or "—"
			local var_48_2 = var_48_0 > 0 and {
				0.6,
				1,
				0.6,
				1
			} or var_48_0 < 0 and {
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
			local var_48_3 = arg_48_3.isPercent and var_44_17(arg_48_1) or var_44_18(arg_48_1, arg_48_3.precision)
			local var_48_4 = arg_48_3.isPercent and var_44_17(arg_48_2) or var_44_18(arg_48_2, arg_48_3.precision)
			local var_48_5

			if arg_48_3.isPercent then
				local var_48_6 = math.max(0, math.min(100, math.floor((arg_48_1 or 0) * 100 + 0.5)))
				local var_48_7 = math.max(0, math.min(100, math.floor((arg_48_2 or 0) * 100 + 0.5))) - var_48_6

				var_48_5 = string.format("(%s%d%%) %s", var_48_7 > 0 and "+" or var_48_7 < 0 and "-" or "", math.abs(var_48_7), var_48_1)
			else
				local var_48_8 = arg_48_3.precision and arg_48_3.precision > 0 and var_44_18(math.abs(var_48_0), arg_48_3.precision) or var_44_16(math.abs(var_48_0))

				var_48_5 = string.format("(%s%s) %s", var_48_0 > 0 and "+" or var_48_0 < 0 and "-" or "", var_48_8, var_48_1)
			end

			return {
				labelIcon = var_0_57(arg_48_0),
				value = string.format("%s → %s  %s", var_48_3, var_48_4, var_48_5),
				scale = var_44_2,
				valueColor = var_48_2,
				parts = {
					cur = var_48_3,
					nxt = var_48_4,
					delta = var_48_5,
					nxtColor = var_48_2,
					deltaColor = var_48_2,
					curColor = arg_48_3.curColor
				}
			}
		end

		local var_44_20 = arg_44_1.pred or {}

		local function var_44_21(arg_49_0, arg_49_1)
			return (var_0_2 and var_0_2.maxRankByGrade or {
				prism = 3,
				normal = 3,
				legendary = 3,
				advanced = 3,
				rare = 3
			})[arg_49_1 or "normal"] or 1
		end

		local function var_44_22(arg_50_0, arg_50_1, arg_50_2)
			return (tonumber(arg_50_1 or 1) or 1) >= var_44_21(arg_50_0 or "W", arg_50_2)
		end

		local var_44_23 = arg_44_1.hpMax or arg_44_1.hp or 0
		local var_44_24 = var_0_53(arg_44_7 or arg_44_0)
		local var_44_25 = (arg_44_1.atk or 0) * var_44_24
		local var_44_26 = arg_44_1.aspd or 0
		local var_44_27 = arg_44_1.distance or 0
		local var_44_28 = var_0_48(arg_44_1, var_44_23, var_44_25, var_44_26)
		local var_44_29 = var_44_20.hp and var_44_20.hp.nxt or var_44_23
		local var_44_30 = var_44_20.atk and var_44_20.atk.nxt or var_44_25
		local var_44_31 = var_44_20.aspd and var_44_20.aspd.nxt or var_44_26
		local var_44_32 = 1
		local var_44_33 = var_0_2 and var_0_2.ui and var_0_2.ui.aspd or nil
		local var_44_34 = var_44_33 and var_44_33.displayScale or 1

		if var_44_34 <= 0 then
			var_44_34 = 1
		end

		local var_44_35 = math.floor(var_44_26 * var_44_34 + 0.5)
		local var_44_36 = arg_44_1 and arg_44_1.sym and var_0_51(arg_44_1.sym) or nil
		local var_44_37 = var_0_26[arg_44_1.grade or "normal"] or var_0_26.normal
		local var_44_38 = var_44_36 and math.floor((var_44_36.hpMax or var_44_36.hp or 0) * var_44_37.hp + 0.5) or 0
		local var_44_39 = arg_44_1.baseAtk ~= nil and math.floor(arg_44_1.baseAtk + 0.5) or var_44_36 and math.floor((var_44_36.atk or 0) * var_44_37.atk + 0.5) or 0
		local var_44_40 = var_44_36 and math.floor((var_44_36.aspd or 0) * var_44_37.aspd * var_44_34 + 0.5) or 0
		local var_44_41 = var_44_36 and math.floor(var_44_36.distance or 0) or 0
		local var_44_42 = math.floor((var_44_23 or 0) + 0.5)
		local var_44_43 = math.floor((var_44_25 or 0) + 0.5)
		local var_44_44 = math.floor((var_44_27 or 0) + 0.5)
		local var_44_45 = var_44_38 < var_44_42
		local var_44_46 = arg_44_1.atkBuffActive or var_44_39 < var_44_43
		local var_44_47

		var_44_47 = var_44_40 < var_44_35

		local var_44_48 = var_44_41 < var_44_44
		local var_44_49 = var_44_40 < var_44_35
		local var_44_50 = false
		local var_44_51 = arg_44_1.rank or 1
		local var_44_52 = var_44_51 + 1
		local var_44_53 = var_0_62(arg_44_5)
		local var_44_54 = (var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[arg_44_1.grade or "normal"] or {})[var_44_51] or 999
		local var_44_55 = arg_44_1.absorbLV or 0
		local var_44_56 = not var_44_22(arg_44_1.sym, var_44_51, arg_44_1.grade) and var_44_54 <= var_44_55 + var_44_53
		local var_44_57 = var_44_29
		local var_44_58 = var_44_30
		local var_44_59 = var_44_31
		local var_44_60 = var_44_29 - var_44_23
		local var_44_61 = var_44_30 - var_44_25
		local var_44_62 = var_44_31 - var_44_26
		local var_44_63 = 0
		local var_44_64 = 0
		local var_44_65 = 0

		local function var_44_66(arg_51_0)
			return 0.4, 0.5, 0.1
		end

		local function var_44_67(arg_52_0, arg_52_1, arg_52_2)
			local var_52_0 = var_0_1 and var_0_1.power and var_0_1.power(arg_52_0 or 0, arg_52_1 or 0, arg_52_2 or 0) or 0

			return type(var_52_0) == "table" and (var_52_0[1] or 0) or var_52_0 or 0
		end

		local var_44_68, var_44_69, var_44_70 = var_44_66(arg_44_1 and arg_44_1.grade)
		local var_44_71 = arg_44_1.rank or 1
		local var_44_72 = arg_44_1.absorbLV or 0
		local var_44_73 = (var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[arg_44_1.grade or "normal"] or {})[var_44_71] or 999
		local var_44_74 = not var_44_22(arg_44_1.sym, var_44_71, arg_44_1.grade) and var_44_73 <= var_44_72 + var_44_53
		local var_44_75 = false

		if var_44_74 and var_44_71 == 2 and not (arg_44_4 and (arg_44_4.subclassName or arg_44_4.subclass) and true or false) then
			local var_44_76 = true
		end

		if var_44_22(arg_44_1.sym, var_44_71, arg_44_1.grade) then
			local var_44_77 = var_0_2 and var_0_2.evolution or {}
			local var_44_78 = var_44_77 and var_44_77.baseDeltaPWR or {}
			local var_44_79 = var_44_77 and var_44_77.maxTierBonus or 1.25
			local var_44_80 = arg_44_6 or var_44_20 and var_44_20.atk and "S" or var_44_20 and var_44_20.hp and "W" or var_44_20 and var_44_20.aspd and "A" or nil
			local var_44_81 = var_44_23
			local var_44_82 = var_44_25
			local var_44_83 = var_44_26
			local var_44_84 = var_44_20 and var_44_20.vTier or 1
			local var_44_85 = 0
			local var_44_86 = 0
			local var_44_87 = 0

			if arg_44_5 and arg_44_5.stats then
				var_44_85 = arg_44_5.stats.hp or 0
				var_44_86 = arg_44_5.stats.atk or 0
				var_44_87 = arg_44_5.stats.aspd or 0
			else
				local var_44_88 = var_0_51(var_44_80 or "W")

				var_44_85 = var_44_88.hp or 0
				var_44_86 = var_44_88.atk or 0
				var_44_87 = var_44_88.aspd or 0
			end

			local var_44_89 = var_44_67(var_44_85, var_44_86, var_44_87)
			local var_44_90 = math.max(1, var_44_67(var_44_81, var_44_82, var_44_83))
			local var_44_91 = var_44_84 >= 5 and 2.2 or var_44_84 >= 4 and 1.8 or var_44_84 >= 3 and 1.5 or var_44_84 >= 2 and 1.2 or 1
			local var_44_92 = var_44_89 / math.max(1, var_44_90)
			local var_44_93 = math.max(0.2, var_44_92)
			local var_44_94 = math.pow(var_44_93, 0.6)
			local var_44_95 = ((var_44_78.base or 58) + var_44_90 * (var_44_78.scaleByAbsorber or 0)) * var_44_91 * var_44_94 * (var_44_79 or 1)

			if var_44_80 == "W" then
				local var_44_96 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_44_81, var_44_82, var_44_83, var_44_95) or 0

				var_44_29 = math.max(1, var_44_81 + math.floor(var_44_96 + 0.5))
				var_44_60 = var_44_29 - var_44_23

				if not var_44_20 or not var_44_20.hp then
					var_44_20.hp = {
						cur = var_44_23,
						nxt = var_44_29
					}
				end
			elseif var_44_80 == "S" then
				local var_44_97 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_44_81, var_44_82, var_44_83, var_44_95) or 0

				var_44_30 = math.max(0, var_44_82 + math.floor(var_44_97 + 0.5))
				var_44_61 = var_44_30 - var_44_25

				if not var_44_20 or not var_44_20.atk then
					var_44_20.atk = {
						cur = var_44_25,
						nxt = var_44_30
					}
				end
			elseif var_44_80 == "A" then
				local var_44_98 = (var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_44_81, var_44_82, var_44_83, var_44_95) or 0) * ((var_44_77 and var_44_77.aspdGrowth or {}).internalScale or 1)

				var_44_31 = math.max(0.05, var_44_83 + var_44_98)

				local var_44_99 = var_44_31 - var_44_26

				if not var_44_20 or not var_44_20.aspd then
					var_44_20.aspd = {
						cur = var_44_26,
						nxt = var_44_31
					}
				end
			elseif var_44_80 == "M" then
				local var_44_100 = var_44_95 * 0.5
				local var_44_101 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_44_81, var_44_82, var_44_83, var_44_100) or 0
				local var_44_102 = (var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_44_81, var_44_82, var_44_83, var_44_100) or 0) * ((var_44_77 and var_44_77.aspdGrowth or {}).internalScale or 1)

				var_44_30 = math.max(0, var_44_82 + math.floor(var_44_101 + 0.5))
				var_44_31 = math.max(0.05, var_44_83 + var_44_102)
				var_44_61 = var_44_30 - var_44_25

				local var_44_103 = var_44_31 - var_44_26

				if not var_44_20 or not var_44_20.atk then
					var_44_20.atk = {
						cur = var_44_25,
						nxt = var_44_30
					}
				end

				if not var_44_20 or not var_44_20.aspd then
					var_44_20.aspd = {
						cur = var_44_26,
						nxt = var_44_31
					}
				end
			elseif var_44_80 == "H" then
				local var_44_104 = var_44_95 * 0.5
				local var_44_105 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_44_81, var_44_82, var_44_83, var_44_104) or 0
				local var_44_106 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_44_81, var_44_82, var_44_83, var_44_104) or 0

				var_44_29 = math.max(1, var_44_81 + math.floor(var_44_105 + 0.5))
				var_44_30 = math.max(0, var_44_82 + math.floor(var_44_106 + 0.5))
				var_44_60 = var_44_29 - var_44_23
				var_44_61 = var_44_30 - var_44_25

				if not var_44_20 or not var_44_20.hp then
					var_44_20.hp = {
						cur = var_44_23,
						nxt = var_44_29
					}
				end

				if not var_44_20 or not var_44_20.atk then
					var_44_20.atk = {
						cur = var_44_25,
						nxt = var_44_30
					}
				end
			elseif var_44_80 == "D" then
				local var_44_107 = var_44_95 / 3
				local var_44_108 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_44_81, var_44_82, var_44_83, var_44_107) or 0
				local var_44_109 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_44_81, var_44_82, var_44_83, var_44_107) or 0
				local var_44_110 = (var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_44_81, var_44_82, var_44_83, var_44_107) or 0) * ((var_44_77 and var_44_77.aspdGrowth or {}).internalScale or 1)

				var_44_29 = math.max(1, var_44_81 + math.floor(var_44_108 + 0.5))
				var_44_30 = math.max(0, var_44_82 + math.floor(var_44_109 + 0.5))
				var_44_31 = math.max(0.05, var_44_83 + var_44_110)
				var_44_60 = var_44_29 - var_44_23
				var_44_61 = var_44_30 - var_44_25

				local var_44_111 = var_44_31 - var_44_26

				if not var_44_20 or not var_44_20.hp then
					var_44_20.hp = {
						cur = var_44_23,
						nxt = var_44_29
					}
				end

				if not var_44_20 or not var_44_20.atk then
					var_44_20.atk = {
						cur = var_44_25,
						nxt = var_44_30
					}
				end

				if not var_44_20 or not var_44_20.aspd then
					var_44_20.aspd = {
						cur = var_44_26,
						nxt = var_44_31
					}
				end
			end

			var_44_57, var_44_58, var_44_59 = var_44_29, var_44_30, var_44_31

			if var_44_20 and var_44_20.gauge then
				var_44_20.gauge.nxt = var_44_20.gauge.cur
			end

			var_44_74 = false
		end

		if var_44_74 then
			local var_44_112 = var_0_2 and var_0_2.evolution or {}
			local var_44_113 = var_44_112 and var_44_112.rankMultipliers and var_44_112.rankMultipliers[arg_44_1.grade or "normal"] or {}
			local var_44_114 = tonumber(var_44_113[var_44_71] or 1) or 1
			local var_44_115 = tonumber(var_44_113[var_44_71 + 1] or var_44_114) or var_44_114
			local var_44_116 = var_44_112.getAbsorbLvMultipliers(nxtLv, arg_44_1.grade)
			local var_44_117 = var_44_67(var_44_29 / var_44_116.hp, var_44_30 / var_44_116.atk, var_44_31 / var_44_116.aspd) / var_44_114 * var_44_115
			local var_44_118 = var_44_117 - var_44_67(var_44_29, var_44_30, var_44_31)

			if var_44_118 > 0.01 then
				local var_44_119 = var_44_118 * var_44_68
				local var_44_120 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_44_29, var_44_30, var_44_31, var_44_119) or 0
				local var_44_121 = math.max(0, math.floor(var_44_120 + 0.5))

				var_44_57 = math.max(1, var_44_29 + var_44_121)

				local var_44_122 = var_44_117 - var_44_67(var_44_57, var_44_30, var_44_31)

				if var_44_122 > 0.01 then
					local var_44_123 = var_44_69 + var_44_70

					if var_44_123 <= 1e-09 then
						var_44_123 = 1
					end

					local var_44_124 = var_44_122 * (var_44_69 / var_44_123)
					local var_44_125 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_44_57, var_44_30, var_44_31, var_44_124) or 0
					local var_44_126 = math.max(0, math.floor(var_44_125 + 0.5))

					var_44_58 = math.max(0, var_44_30 + var_44_126)
					var_44_122 = var_44_117 - var_44_67(var_44_57, var_44_58, var_44_31)
				else
					var_44_58 = var_44_30
				end

				if var_44_122 > 0.01 then
					local var_44_127 = var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_44_57, var_44_58, var_44_31, var_44_122) or 0
					local var_44_128 = var_0_2 and var_0_2.evolution or {}
					local var_44_129 = var_44_127 * ((var_44_128 and var_44_128.aspdGrowth or {}).internalScale or 1)

					var_44_59 = math.max(0.05, var_44_31 + math.max(0, var_44_129))
				else
					var_44_59 = var_44_31
				end
			else
				var_44_57, var_44_58, var_44_59 = var_44_29, var_44_30, var_44_31
			end

			var_44_63 = var_44_57 - var_44_29
			var_44_64 = var_44_58 - var_44_30

			local var_44_130 = var_44_59 - var_44_31
			local var_44_131 = 0
			local var_44_132 = false

			if var_44_71 == 2 then
				local var_44_133 = arg_44_4 and (arg_44_4.subclassName or arg_44_4.subclass) or nil
				local var_44_134 = arg_44_4 and arg_44_4.subclassKey or nil
				local var_44_135 = 1
				local var_44_136 = 1
				local var_44_137 = 1
				local var_44_138 = 1

				if var_44_133 then
					local var_44_139, var_44_140, var_44_141, var_44_142, var_44_143 = PromotionStats.getPromotionMultipliers({
						id = var_44_133,
						name = var_44_133,
						asset = var_44_134,
						sym = arg_44_4.sym,
						rank = var_44_71 + 1
					})

					if var_44_139 then
						var_44_135 = var_44_139
					end

					if var_44_140 then
						var_44_136 = var_44_140
					end

					if var_44_141 then
						var_44_137 = var_44_141
					end

					if var_44_142 then
						var_44_138 = var_44_142
					end
				end

				if var_44_133 and (var_44_135 ~= 1 or var_44_136 ~= 1 or var_44_137 ~= 1 or var_44_138 ~= 1) then
					local var_44_144 = math.max(1, math.floor(var_44_29 * var_44_135 + 0.5))
					local var_44_145 = math.max(0, math.floor(var_44_30 * var_44_136 + 0.5))
					local var_44_146 = math.max(0.05, var_44_31 * var_44_137)

					if var_44_131 > 0 then
						local var_44_147 = var_44_131 * (var_44_138 or 1)
						local var_44_148 = var_44_147 * var_44_68
						local var_44_149 = var_0_1.solveDeltaHP and var_0_1.solveDeltaHP(var_44_29, var_44_30, var_44_31, var_44_148) or 0

						var_44_57 = var_44_144 + math.max(0, math.floor(var_44_149 + 0.5))

						local var_44_150 = var_44_147 - (var_44_67(var_44_57, var_44_30, var_44_31) - baseP)

						if var_44_150 > 0.01 then
							local var_44_151 = var_44_69 + var_44_70

							if var_44_151 <= 1e-09 then
								var_44_151 = 1
							end

							local var_44_152 = var_44_150 * (var_44_69 / var_44_151)
							local var_44_153 = var_0_1.solveDeltaATK and var_0_1.solveDeltaATK(var_44_57, var_44_30, var_44_31, var_44_152) or 0

							var_44_58 = var_44_145 + math.max(0, math.floor(var_44_153 + 0.5))
							var_44_150 = var_44_147 - (var_44_67(var_44_57, var_44_58, var_44_31) - baseP)
						else
							var_44_58 = var_44_145
						end

						if var_44_150 > 0.01 then
							local var_44_154 = var_0_1.solveDeltaASPD and var_0_1.solveDeltaASPD(var_44_57, var_44_58, var_44_31, var_44_150) or 0
							local var_44_155 = var_0_2 and var_0_2.evolution or {}

							var_44_59 = var_44_146 + var_44_154 * ((var_44_155 and var_44_155.aspdGrowth or {}).internalScale or 1)
						else
							var_44_59 = var_44_146
						end

						var_44_63 = var_44_57 - var_44_29
						var_44_64 = var_44_58 - var_44_30

						local var_44_156 = var_44_59 - var_44_31
					else
						var_44_57, var_44_58, var_44_59 = var_44_144, var_44_145, var_44_146
					end

					local var_44_157 = true
				else
					local var_44_158 = true

					var_44_57, var_44_58, var_44_59 = var_44_29, var_44_30, var_44_31
				end
			end
		else
			var_44_56 = false
		end

		local var_44_159 = math.floor(var_44_31 * var_44_34 + 0.5)
		local var_44_160 = math.floor(var_44_59 * var_44_34 + 0.5)
		local var_44_161 = var_44_58 * var_44_24
		local var_44_162 = var_0_1 and var_0_1.power and (function()
			local var_53_0 = var_0_1.power(var_44_57, var_44_161, var_44_59)

			if type(var_53_0) == "table" then
				return var_53_0[1] or 0
			else
				return var_53_0
			end
		end)() or var_44_28

		local function var_44_163(arg_54_0, arg_54_1, arg_54_2, arg_54_3, arg_54_4, arg_54_5)
			arg_54_5 = arg_54_5 or {}

			local var_54_0 = arg_54_1 < arg_54_2 and "▲" or arg_54_2 < arg_54_1 and "▼" or "—"
			local var_54_1 = arg_54_1 < arg_54_2 and {
				0.6,
				1,
				0.6,
				1
			} or arg_54_2 < arg_54_1 and {
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

			local function var_54_2(arg_55_0)
				if arg_54_5.precision and arg_54_5.precision > 0 then
					return var_44_18(arg_55_0, arg_54_5.precision)
				else
					return var_44_16(arg_55_0)
				end
			end

			local var_54_3 = var_54_2(arg_54_1)
			local var_54_4 = var_54_2(arg_54_2)
			local var_54_5 = var_54_2(math.abs(arg_54_3))
			local var_54_6 = var_54_2(math.abs(arg_54_4))
			local var_54_7 = ""

			if math.abs(arg_54_4) > 0 then
				local var_54_8 = {}

				if math.abs(arg_54_3) > 0 then
					table.insert(var_54_8, string.format(var_0_4.getText("absorb_grade_delta_fmt", _G.currentGameLang or "ko"), var_54_5))
				end

				if math.abs(arg_54_4) > 0 then
					table.insert(var_54_8, string.format(var_0_4.getText("absorb_promotion_delta_fmt", _G.currentGameLang or "ko"), var_54_6))
				end

				var_54_7 = string.format("(%s)", table.concat(var_54_8, ", "))
			else
				local var_54_9 = arg_54_2 - arg_54_1
				local var_54_10 = var_54_2(math.abs(var_54_9))

				var_54_7 = string.format("(%s%s) %s", var_54_9 > 0 and "+" or var_54_9 < 0 and "-" or "", var_54_10, var_54_0)
			end

			return {
				labelIcon = var_0_57(arg_54_0),
				value = string.format("%s → %s  %s", var_54_3, var_54_4, var_54_7),
				scale = var_44_2,
				valueColor = var_54_1,
				parts = {
					cur = var_54_3,
					nxt = var_54_4,
					delta = var_54_7,
					nxtColor = var_54_1,
					deltaColor = var_54_1,
					curColor = arg_54_5.curColor
				}
			}
		end

		if (function()
			local var_56_0 = arg_44_1.rank or 1

			if var_56_0 ~= 2 then
				return false
			end

			local var_56_1 = ((var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[arg_44_1.grade or "normal"] or {})[var_56_0] or 999) <= (arg_44_1.absorbLV or 0) + 1
			local var_56_2 = arg_44_4 and (arg_44_4.subclassName or arg_44_4.subclass) and true or false

			return var_56_1 and not var_56_2
		end)() then
			table.insert(var_44_9, {
				isTitle = true,
				value = var_0_4.getText("class_promotion", _G.currentGameLang or "ko"),
				scale = var_44_2,
				titleColor = {
					0.6,
					0.75,
					1,
					1
				}
			})
		else
			local var_44_164
			local var_44_165
			local var_44_166
			local var_44_167

			if var_44_20.hp or var_44_56 or math.abs(var_44_60) > 0 or math.abs(var_44_63) > 0 then
				var_44_164 = var_44_163("HP", var_44_23, var_44_57, var_44_60, var_44_63, {
					curColor = var_44_45 and var_44_11 or nil
				})
			else
				local var_44_168 = (var_0_54(arg_44_7 or arg_44_0) or var_44_45) and var_44_11 or nil

				var_44_164 = {
					labelIcon = "hp",
					value = tostring(var_44_16(var_44_23)),
					scale = var_44_2,
					valueColor = var_44_168
				}
			end

			if var_44_20.atk or var_44_56 or math.abs(var_44_61) > 0 or math.abs(var_44_64) > 0 then
				var_44_165 = var_44_163("ATK", var_44_25, var_44_161, var_44_61, var_44_64, {
					curColor = var_44_46 and var_44_11 or nil
				})
			else
				local var_44_169 = (var_44_24 and var_44_24 > 1 or var_44_46) and var_44_11 or nil

				var_44_165 = {
					labelIcon = "atk",
					value = tostring(var_44_16(var_44_25)),
					scale = var_44_2,
					valueColor = var_44_169
				}
			end

			if arg_44_1.noBasicAttack then
				var_44_166 = {
					value = "-",
					labelIcon = "aspd",
					scale = var_44_2
				}
			elseif var_44_20.aspd or var_44_56 or var_44_160 ~= var_44_35 then
				local var_44_170 = var_44_159 - var_44_35
				local var_44_171 = var_44_160 - var_44_159

				var_44_166 = var_44_163("ASPD", var_44_35, var_44_160, var_44_170, var_44_171, {
					curColor = var_44_49 and var_44_11 or nil
				})
			else
				local var_44_172 = var_44_49 and var_44_11 or nil

				var_44_166 = {
					labelIcon = "aspd",
					value = tostring(var_44_16(var_44_35)),
					scale = var_44_2,
					valueColor = var_44_172
				}
			end

			local var_44_173 = var_44_48 and var_44_11 or nil
			local var_44_174 = {
				labelIcon = "dist",
				value = tostring(var_44_16(var_44_27)),
				scale = var_44_2,
				valueColor = var_44_173
			}

			table.insert(var_44_9, var_44_164)
			table.insert(var_44_9, var_44_165)
			table.insert(var_44_9, var_44_166)
			table.insert(var_44_9, var_44_174)

			if var_44_10 then
				if var_44_162 ~= var_44_28 then
					table.insert(var_44_9, var_44_19("PWR", var_44_28, var_44_162))
				else
					table.insert(var_44_9, {
						labelIcon = "pwr",
						value = tostring(var_44_16(var_44_28)),
						scale = var_44_2
					})
				end
			end
		end
	else
		local var_44_175

		if arg_44_1 and arg_44_1.sym then
			var_44_175 = var_0_51(arg_44_1.sym)
		end

		local var_44_176 = var_0_26[arg_44_1.grade or "normal"] or var_0_26.normal
		local var_44_177 = math.floor((arg_44_1.hp or 0) + 0.5)
		local var_44_178 = math.floor((arg_44_1.hpMax or arg_44_1.hp or 0) + 0.5)
		local var_44_179 = var_0_53(arg_44_7 or arg_44_0, arg_44_1)
		local var_44_180 = (arg_44_1.atk or 0) * var_44_179
		local var_44_181 = math.floor(var_44_180 + 0.5)
		local var_44_182 = var_44_175 and math.floor((var_44_175.hp or var_44_175.hpMax or 0) * var_44_176.hp + 0.5) or 0
		local var_44_183 = arg_44_1.baseAtk ~= nil and math.floor(arg_44_1.baseAtk + 0.5) or var_44_175 and math.floor((var_44_175.atk or 0) * var_44_176.atk + 0.5) or 0
		local var_44_184 = var_0_54(arg_44_7 or arg_44_0) and var_44_11 or var_44_182 < var_44_177 and var_44_11 or var_0_34.value
		local var_44_185 = (arg_44_1.atkBuffActive or arg_44_1.tenseStringActive or var_44_179 and var_44_179 > 1) and var_44_11 or var_44_183 < var_44_181 and var_44_11 or var_0_34.value

		if arg_44_1.isShadowMinion then
			if arg_44_1.shadowBaseStats then
				local var_44_186 = math.floor((arg_44_1.shadowBaseStats.hp or 0) + 0.5)
				local var_44_187 = math.floor((arg_44_1.shadowBaseStats.atk or 0) + 0.5)

				var_44_184 = var_44_186 < var_44_177 and var_44_11 or var_0_34.value
				var_44_185 = (arg_44_1.atkBuffActive or var_44_187 < var_44_181) and var_44_11 or var_0_34.value
			else
				var_44_184 = var_0_34.value
				var_44_185 = arg_44_1.atkBuffActive and var_44_11 or var_0_34.value
			end
		end

		local var_44_188 = tostring(var_44_177)

		if arg_44_7 and arg_44_7.mode == "battle" and var_44_178 > 0 then
			var_44_188 = string.format("%d/%d", var_44_177, var_44_178)
		end

		local var_44_189 = {
			labelIcon = "hp",
			value = var_44_188,
			scale = var_44_2,
			valueColor = var_44_184
		}
		local var_44_190 = {
			labelIcon = "atk",
			value = tostring(var_44_181),
			scale = var_44_2,
			valueColor = var_44_185
		}
		local var_44_191
		local var_44_192 = var_0_2 and var_0_2.ui and var_0_2.ui.aspd or nil
		local var_44_193 = var_44_192 and var_44_192.displayScale or 10

		if var_44_193 <= 0 then
			var_44_193 = 10
		end

		local var_44_194 = arg_44_1.aspd or 0
		local var_44_195 = var_44_175 and (var_44_175.aspd or 0) or 0
		local var_44_196 = math.floor(var_44_194 * var_44_193 + 0.5)
		local var_44_197 = math.floor(var_44_195 * var_44_176.aspd * var_44_193 + 0.5)
		local var_44_198 = {
			1,
			0.35,
			0.25,
			1
		}
		local var_44_199 = var_44_197 < var_44_196 and var_44_11 or var_0_34.value

		if arg_44_1.aspdBuffActive then
			var_44_199 = var_44_11
		end

		if arg_44_1.isShadowMinion then
			if arg_44_1.shadowBaseStats then
				local var_44_200 = arg_44_1.shadowBaseStats.aspd or 0

				var_44_199 = var_44_196 > math.floor(var_44_200 * var_44_193 + 0.5) and var_44_11 or var_0_34.value
			else
				var_44_199 = var_0_34.value
			end
		end

		if arg_44_1.aspdDebuffActive then
			var_44_199 = var_44_198
		end

		local var_44_201 = {
			labelIcon = "aspd",
			value = tostring(var_44_196),
			scale = var_44_2,
			valueColor = var_44_199
		}
		local var_44_202 = math.floor(arg_44_1.distance or 0)
		local var_44_203 = var_44_202 > (var_44_175 and math.floor(var_44_175.distance or 0) or 0) and var_44_11 or var_0_34.value
		local var_44_204 = {
			labelIcon = "dist",
			value = tostring(var_44_202),
			scale = var_44_2,
			valueColor = var_44_203
		}

		table.insert(var_44_9, var_44_189)
		table.insert(var_44_9, var_44_190)
		table.insert(var_44_9, var_44_201)
		table.insert(var_44_9, var_44_204)

		if var_44_10 then
			local var_44_205 = var_0_48(arg_44_1, arg_44_1.hpMax or arg_44_1.hp or 0, var_44_180, arg_44_1.aspd or 0)
			local var_44_206 = tostring(math.floor((var_44_205 or 0) + 0.5))

			table.insert(var_44_9, {
				labelIcon = "pwr",
				value = var_44_206,
				scale = var_44_2
			})
		end

		if arg_44_1.skillDesc and arg_44_1.skillDesc ~= "" then
			table.insert(var_44_9, {
				label = var_0_4.getText("skill_label", _G.currentGameLang or "ko"),
				value = tostring(arg_44_1.skillDesc),
				scale = var_44_2
			})
		end
	end

	local var_44_207 = var_0_60(arg_44_3, var_44_9, var_44_0, var_44_2, false)
	local var_44_208 = 0
	local var_44_209 = math.max(0, math.floor(var_0_36 * 0.75 + 0.5) - 1)
	local var_44_210 = var_44_209

	for iter_44_0, iter_44_1 in ipairs(var_44_9) do
		local var_44_211 = 0
		local var_44_212 = iter_44_1.scale or var_44_2

		if iter_44_1.kind == "thinSep" then
			var_44_211 = 0
		else
			if iter_44_1.icon then
				var_44_211 = var_44_211 + var_44_6
			end

			if iter_44_1.labelIcon then
				var_44_211 = var_44_211 + var_44_207
			elseif iter_44_1.label then
				var_44_211 = var_44_211 + var_0_59(arg_44_3, iter_44_1, var_44_0, var_44_212)
			end

			if iter_44_1.parts then
				var_44_211 = var_44_211 + var_0_19(var_44_0, iter_44_1.parts.cur or "", var_44_212)
				var_44_211 = var_44_211 + var_0_19(var_44_0, " → ", var_44_212)
				var_44_211 = var_44_211 + var_0_19(var_44_0, iter_44_1.parts.nxt or "", var_44_212)
				var_44_211 = var_44_211 + var_0_19(var_44_0, "  ", var_44_212)
				var_44_211 = var_44_211 + var_0_19(var_44_0, iter_44_1.parts.delta or "", var_44_212)
			else
				var_44_211 = var_44_211 + var_0_19(var_44_0, iter_44_1.value or "", var_44_212)
			end
		end

		if var_44_208 < var_44_211 then
			var_44_208 = var_44_211
		end

		local var_44_213 = iter_44_1.isTitle and var_44_4 or var_44_3

		if iter_44_1.kind == "thinSep" then
			local var_44_214 = iter_44_1.padBefore or 1
			local var_44_215 = iter_44_1.padAfter or 2
			local var_44_216 = iter_44_1.sepTailSpacing ~= nil and iter_44_1.sepTailSpacing or 1

			var_44_210 = var_44_210 + var_44_214 + 1 + var_44_215 + var_44_216
		else
			var_44_210 = var_44_210 + var_0_22(var_44_0, var_44_212) + var_44_213
		end
	end

	if not arg_44_1 or not arg_44_1.isShadowMinion and not arg_44_1.isGuardianGolem then
		local var_44_217 = 1
		local var_44_218 = 3
		local var_44_219 = 7

		var_44_210 = var_44_210 + var_44_218 + var_44_219 * var_44_217
	end

	local var_44_220 = var_44_210 + var_44_209
	local var_44_221 = 1
	local var_44_222 = var_44_220 + var_44_221
	local var_44_223 = 40

	if var_44_208 < var_44_223 then
		var_44_208 = var_44_223
	end

	local var_44_224 = var_44_208 + var_44_209 * 2

	return {
		lines = var_44_9,
		width = var_0_17(var_44_224),
		height = var_0_17(var_44_222),
		starsScale = starsScale,
		starsGapY = starsGapY,
		starPx = starPx,
		bottomExtra = var_44_221,
		lineSpacing = var_44_3,
		scaledPad = var_44_209,
		titleScale = var_44_1,
		statScale = var_44_2,
		iconAdvance = var_44_6,
		statIconColumnW = var_44_207,
		titleLeftNudge = var_44_5,
		titleSpacing = var_44_4
	}
end

local function var_0_64(arg_57_0)
	local var_57_0 = tonumber(arg_57_0 or 1) or 1

	if var_57_0 >= 3 then
		return 3
	elseif var_57_0 >= 2 then
		return 2
	else
		return 1
	end
end

function _G.classNameBy(arg_58_0, arg_58_1, arg_58_2)
	local var_58_0 = arg_58_0

	if var_58_0 == "archer" or var_58_0 == "MiniArcherMan" then
		var_58_0 = "A"
	elseif var_58_0 == "spear" or var_58_0 == "MiniSpearMan" then
		var_58_0 = "S"
	elseif var_58_0 == "warrior" or var_58_0 == "MiniSwordMan" then
		var_58_0 = "W"
	elseif var_58_0 == "mage" or var_58_0 == "MiniMage" then
		var_58_0 = "M"
	elseif var_58_0 == "cavalry" or var_58_0 == "MiniHorseMan" then
		var_58_0 = "H"
	elseif var_58_0 == "duelist" or var_58_0 == "MiniPrinceMan" then
		var_58_0 = "D"
	elseif var_58_0 == "jester" or var_58_0 == "Jester" or var_58_0 == "J" then
		var_58_0 = "Joker"
	end

	if type(var_58_0) == "string" and var_58_0:find("ENEMY_") then
		local var_58_1 = var_58_0:sub(7)
		local var_58_2 = "그림자 " .. var_58_1

		return var_0_4.translateUnitName(var_58_2, _G.currentGameLang or "ko")
	end

	if var_58_0 ~= "A" and var_58_0 ~= "S" and var_58_0 ~= "M" and var_58_0 ~= "H" and var_58_0 ~= "D" and var_58_0 ~= "Joker" then
		var_58_0 = "W"
	end

	local var_58_3 = var_0_64(arg_58_1)
	local var_58_4 = var_0_6(arg_58_2)
	local var_58_5
	local var_58_7

	if var_58_0 == "Joker" then
		local var_58_6 = tonumber(arg_58_1 or 1) or 1

		if var_58_6 >= 3 then
			var_58_7 = "환술사"
		elseif var_58_6 >= 2 then
			var_58_7 = "트릭스터"
		else
			var_58_7 = "광대"
		end
	elseif var_58_0 == "A" then
		if var_58_3 == 1 and var_58_4 == "prism" then
			var_58_7 = "명궁"
		elseif var_58_3 == 1 and var_58_4 == "legendary" then
			var_58_7 = "해골궁수"
		elseif var_58_3 == 1 then
			var_58_7 = "궁수"
		elseif var_58_3 == 2 then
			var_58_7 = "석궁수"
		else
			var_58_7 = "명궁"
		end
	elseif var_58_0 == "S" then
		if var_58_3 == 1 and var_58_4 == "prism" then
			var_58_7 = "랜서"
		elseif var_58_3 == 1 and var_58_4 == "legendary" then
			var_58_7 = "백골 창병"
		elseif var_58_3 == 1 then
			var_58_7 = "창병"
		elseif var_58_3 == 2 then
			var_58_7 = "창위병"
		else
			var_58_7 = "근위병"
		end
	elseif var_58_0 == "D" then
		local var_58_8 = tonumber(arg_58_1 or 1) or 1

		if var_58_8 >= 3 then
			var_58_7 = "현자 엘프"
		elseif var_58_8 >= 2 then
			var_58_7 = "황제"
		elseif var_58_3 == 1 and var_58_4 == "prism" then
			var_58_7 = "천사"
		elseif var_58_3 == 1 and var_58_4 == "legendary" then
			var_58_7 = "셰이드"
		elseif var_58_3 == 1 and var_58_4 == "rare" then
			var_58_7 = "수호자"
		elseif var_58_3 == 1 and var_58_4 == "advanced" then
			var_58_7 = "드루이드"
		else
			var_58_7 = "결투사"
		end
	elseif var_58_0 == "H" then
		local var_58_9 = tonumber(arg_58_1 or 1) or 1

		if var_58_9 == 3 and var_58_4 == "prism" then
			var_58_7 = "숲의 심장"
		elseif var_58_9 >= 3 then
			var_58_7 = "중기병"
		elseif var_58_9 == 2 and var_58_4 == "prism" then
			var_58_7 = "실반"
		elseif var_58_9 >= 2 then
			var_58_7 = "돌격병"
		elseif var_58_3 == 1 and var_58_4 == "prism" then
			var_58_7 = "환수기병"
		elseif var_58_3 == 1 and var_58_4 == "legendary" then
			var_58_7 = "사령기병"
		elseif var_58_3 == 1 and var_58_4 == "advanced" then
			var_58_7 = "철기병"
		else
			var_58_7 = "기병"
		end
	elseif var_58_0 == "M" then
		local var_58_10 = tonumber(arg_58_1 or 1) or 1

		if var_58_10 == 3 and var_58_4 == "prism" then
			var_58_7 = "예언자"
		elseif var_58_10 == 2 and var_58_4 == "prism" then
			var_58_7 = "예지술사"
		elseif var_58_10 >= 3 then
			var_58_7 = "대마법사"
		elseif var_58_10 >= 2 then
			var_58_7 = "주술사"
		elseif var_58_3 == 1 and var_58_4 == "prism" then
			var_58_7 = "금단술사"
		elseif var_58_3 == 1 and var_58_4 == "legendary" then
			var_58_7 = "해골술사"
		elseif var_58_3 == 1 and var_58_4 == "advanced" then
			var_58_7 = "마도사"
		else
			var_58_7 = "마법사"
		end
	else
		var_58_7 = var_58_3 == 1 and var_58_4 == "prism" and "슬레이어" or var_58_3 == 1 and var_58_4 == "legendary" and "해골 투사" or var_58_3 == 1 and var_58_4 == "rare" and "투사" or var_58_3 == 1 and var_58_4 == "advanced" and "철퇴병" or var_58_3 == 1 and "전사" or var_58_3 == 2 and "병사" or "기사"
	end

	return var_0_4.translateUnitName(var_58_7, _G.currentGameLang or "ko")
end

function var_0_0.new(arg_59_0)
	local var_59_0 = {
		crossT = 0,
		mouseY = 0,
		locked = false,
		_outlineDrawnThisFrame = false,
		time = 0,
		fade = 0,
		hideT = 0,
		hoverT = 0,
		mouseX = 0,
		state = "IDLE",
		ui = arg_59_0,
		releaseResources = function(arg_60_0)
			if arg_60_0._titleMaskCanvas then
				pcall(arg_60_0._titleMaskCanvas.release, arg_60_0._titleMaskCanvas)
			end

			if arg_60_0._outlineShader then
				pcall(arg_60_0._outlineShader.release, arg_60_0._outlineShader)
			end

			if arg_60_0._innerOutlineShader then
				pcall(arg_60_0._innerOutlineShader.release, arg_60_0._innerOutlineShader)
			end

			arg_60_0._titleMaskCanvas = nil
			arg_60_0._titleMaskCache = nil
			arg_60_0._outlineShader = nil
			arg_60_0._innerOutlineShader = nil
			arg_60_0.cache = nil
			arg_60_0.crossPrevLayout = nil
			arg_60_0.crossPrevInfo = nil
		end,
		factionMousepressed = function(arg_61_0, arg_61_1, arg_61_2, arg_61_3, arg_61_4)
			local var_61_0 = arg_61_0.ui or _G.ui

			arg_61_4 = arg_61_4 or arg_61_0.battlefield

			if arg_61_3 ~= 2 or not arg_61_4 or not var_0_5.isEnabled() or var_61_0 and var_61_0.pauseOverlayState and var_61_0.pauseOverlayState.active then
				return false
			end

			local var_61_1 = arg_61_4.classSelect
			local var_61_2

			if var_61_1 then
				var_61_2 = var_61_1._hoveredFaction
			elseif var_0_3 then
				var_61_2 = var_0_3._hoveredFaction
			end

			local var_61_3 = var_61_2 and var_61_2.anchor

			if not var_61_3 or arg_61_1 < var_61_3.x or arg_61_1 > var_61_3.x + var_61_3.w or arg_61_2 < var_61_3.y or arg_61_2 > var_61_3.y + var_61_3.h then
				return false
			end

			arg_61_0._expandedFactionTooltip = {
				factionId = var_61_2.factionId,
				anchor = var_61_3,
				battlefield = arg_61_4,
				selection = var_61_1
			}

			return true
		end,
		mousepressed = function(arg_62_0, arg_62_1, arg_62_2, arg_62_3)
			local var_62_0 = arg_62_0.ui or _G.ui

			if var_62_0 and var_62_0.pauseOverlayState and var_62_0.pauseOverlayState.active then
				return false
			end

			local var_62_1 = arg_62_0.battlefield

			if not var_62_1 then
				return false
			end

			if arg_62_0:factionMousepressed(arg_62_1, arg_62_2, arg_62_3, var_62_1) then
				return true
			end

			if arg_62_3 == 2 then
				if var_62_1.imprintModal and var_62_1.imprintModal.active then
					return true
				end

				if var_0_3 and var_0_3.isPanelHovered and var_0_3.isPanelHovered(arg_62_1, arg_62_2) then
					return true
				end

				local var_62_2 = arg_62_0.candidate

				if var_62_1.absorbMode and var_62_2 and var_62_2.ref then
					local var_62_3 = var_0_7(var_62_2.ref)

					if var_62_3 then
						var_0_3.showBattlefieldPreview(var_62_3)
					else
						var_0_3.hideBattlefieldPreview()
					end
				end

				if arg_62_0.locked and arg_62_0.target and var_62_2 and var_62_2.ref == arg_62_0.target.ref then
					return true
				end

				if var_62_2 and var_62_2.ref then
					arg_62_0.locked = true
					arg_62_0.target = var_62_2
					arg_62_0.lockedTarget = var_62_2
					arg_62_0.state = "VISIBLE"
					arg_62_0.fade = 1
					arg_62_0.pinSide = nil

					return true
				end

				return arg_62_0.locked == true
			end

			if arg_62_3 ~= 1 then
				return false
			end

			if (not var_62_1.imprintModal or not var_62_1.imprintModal.active) and var_0_3 and var_0_3.absorbLockHitTest then
				local var_62_4 = var_0_3.absorbLockHitTest(arg_62_1, arg_62_2)

				if var_62_4 then
					var_62_4.absorbLocked = var_62_4.absorbLocked ~= true

					local var_62_5 = var_0_3._absorbLockDisplayUnit

					if var_62_5 and var_62_5 ~= var_62_4 then
						var_62_5.absorbLocked = var_62_4.absorbLocked
					end

					return true
				end
			end

			if var_0_3 and var_0_3.isHoldActive and var_0_3.isHoldActive() and (not var_62_1.imprintModal or not var_62_1.imprintModal.active) and var_0_3.cancelHold then
				var_0_3.cancelHold()
			end

			if arg_62_0.locked and arg_62_0.target and (not var_62_1.imprintModal or not var_62_1.imprintModal.active) then
				local var_62_6 = arg_62_0.candidate
				local var_62_7 = var_62_6 and var_62_6.ref and arg_62_0.target.ref and var_62_6.ref == arg_62_0.target.ref
				local var_62_8 = false

				if not var_62_7 and var_0_3 then
					if var_0_3.hitTest and var_0_3.hitTest(arg_62_1, arg_62_2) then
						var_62_8 = true
					elseif var_0_3.absorbLvHitTest and var_0_3.absorbLvHitTest(arg_62_1, arg_62_2) then
						var_62_8 = true
					elseif var_0_3.absorbLockHitTest and var_0_3.absorbLockHitTest(arg_62_1, arg_62_2) then
						var_62_8 = true
					end
				end

				if not var_62_7 and not var_62_8 then
					arg_62_0:toggleLock()
				end
			end

			if var_62_1.imprintModal and var_62_1.imprintModal.active then
				if var_62_0 and var_62_0.pauseOverlayState and var_62_0.pauseOverlayState.active then
					return false
				end

				if var_0_3 and var_0_3.hudHitTest then
					local var_62_9 = var_0_3.hudHitTest(arg_62_1, arg_62_2)

					if var_62_9 and var_62_9.kind == "cancel" then
						local var_62_10 = rawget(_G, "Tutorial")

						if var_62_10 and var_62_10.requiresAbsorbConfirmOnly and var_62_10.requiresAbsorbConfirmOnly() then
							return true
						end

						if var_0_3.triggerCancel then
							var_0_3.triggerCancel()
						else
							var_62_1._imprintModalResolve = nil
							var_62_1.imprintModal = nil
						end

						return true
					end
				end

				if var_0_3 and var_0_3.modalHitTest then
					local var_62_11 = var_0_3.modalHitTest(arg_62_1, arg_62_2)

					if var_62_11 then
						local var_62_12 = rawget(_G, "Tutorial")

						if var_62_12 and var_62_12.requiresAbsorbConfirmOnly and var_62_12.requiresAbsorbConfirmOnly() and var_62_11.kind ~= "confirm" and var_62_11.kind ~= "insert" then
							return true
						end

						local var_62_13 = var_62_1.imprintModal
						local var_62_14 = var_62_13 and var_62_13.absorber
						local var_62_15 = var_62_13 and var_62_13.victim
						local var_62_16 = tonumber(var_62_13 and var_62_13.maxSlots) or 1

						if var_62_11.kind == "confirm" then
							var_62_1._imprintModalResolve = {
								action = "confirm",
								absorber = var_62_14,
								victim = var_62_15
							}
							var_62_1.imprintModal = nil

							if var_62_15 and var_62_1.dropRoster then
								var_62_1:dropRoster(var_62_15)
							end

							return true
						elseif var_62_11.kind == "upgrade" then
							if var_0_3 and var_0_3.triggerUpgrade then
								var_0_3.triggerUpgrade(var_62_11.slot)
							else
								local var_62_17 = tonumber(var_62_11.slot) or 1

								var_62_1._imprintModalResolve = {
									action = "confirm",
									absorber = var_62_14,
									victim = var_62_15,
									slot = var_62_17
								}
								var_62_1.imprintModal = nil

								if var_62_15 and var_62_1.dropRoster then
									var_62_1:dropRoster(var_62_15)
								end
							end

							return true
						elseif var_62_11.kind == "convert" then
							if var_0_3 and var_0_3.triggerConvert then
								var_0_3.triggerConvert()
							else
								var_62_1._imprintModalResolve = {
									action = "convert",
									absorber = var_62_14,
									victim = var_62_15
								}
								var_62_1.imprintModal = nil

								if var_62_15 and var_62_1.dropRoster then
									var_62_1:dropRoster(var_62_15)
								end
							end

							return true
						elseif var_62_11.kind == "replace" or var_62_11.kind == "insert" then
							if var_0_3 and var_0_3.triggerConfirm and var_62_11.kind == "insert" then
								var_0_3.triggerConfirm(var_62_11.slot, var_62_11.kind)
							elseif var_0_3 and var_0_3.triggerChange and var_62_11.kind == "replace" then
								var_0_3.triggerChange(var_62_11.slot)
							else
								local var_62_18 = tonumber(var_62_11.slot) or 1

								if var_62_18 < 1 then
									var_62_18 = 1
								end

								if var_62_16 < var_62_18 then
									var_62_18 = var_62_16
								end

								var_62_1._imprintModalResolve = {
									absorber = var_62_14,
									victim = var_62_15,
									action = var_62_11.kind,
									slot = var_62_18
								}
								var_62_1.imprintModal = nil

								if var_62_15 and var_62_1.dropRoster then
									var_62_1:dropRoster(var_62_15)
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

	local function var_59_1(arg_63_0, arg_63_1)
		if not arg_63_0 or not arg_63_1 then
			return false
		end

		if arg_63_1.ref and arg_63_1.ref.spawnHold then
			return false
		end

		if arg_63_0.gameOver and arg_63_1.kind == "ally" and arg_63_1.ref then
			return arg_63_1.ref.alive ~= false
		end

		if arg_63_0.mode == "battle" then
			if arg_63_1.kind == "enemy" and arg_63_1.ref and arg_63_0.sandboxMode == true then
				for iter_63_0, iter_63_1 in ipairs(arg_63_0.enemies or {}) do
					if iter_63_1 == arg_63_1.ref and iter_63_1.alive and not iter_63_1.dying then
						return true
					end
				end

				return false
			end

			if arg_63_1.kind ~= "ally" or not arg_63_1.ref then
				return false
			end

			for iter_63_2, iter_63_3 in ipairs(arg_63_0.allies or {}) do
				if iter_63_3 == arg_63_1.ref and iter_63_3.alive then
					return true
				end
			end

			return false
		else
			if arg_63_1.kind ~= "roster" or not arg_63_1.ref then
				return false
			end

			if arg_63_1.ref.isGuardianGolem then
				return require("src.game.combat").guardian_golem.owned(arg_63_0) and arg_63_1.ref == arg_63_0._guardianGolemPreview
			end

			for iter_63_4, iter_63_5 in ipairs(arg_63_0.rosterUnits or {}) do
				if iter_63_5 == arg_63_1.ref then
					return true
				end
			end

			return false
		end
	end

	function var_59_0.toggleLock(arg_64_0)
		arg_64_0.locked = not arg_64_0.locked

		if arg_64_0.locked and arg_64_0.candidate then
			if arg_64_0.target == nil then
				arg_64_0.target = arg_64_0.candidate
			end

			arg_64_0.lockedTarget = arg_64_0.target
			arg_64_0.state = "VISIBLE"
			arg_64_0.fade = 1
			arg_64_0.pinSide = nil
		elseif not arg_64_0.locked then
			arg_64_0.lockedTarget = nil
			arg_64_0.state = "IDLE"
			arg_64_0.fade = 0
			arg_64_0.target = nil
			arg_64_0.pinSide = nil
		end
	end

	local function var_59_2(arg_65_0, arg_65_1, arg_65_2, arg_65_3)
		if not arg_65_0 or type(arg_65_0.area) ~= "table" or type(arg_65_0.area.x) ~= "number" or type(arg_65_0.area.y) ~= "number" or type(arg_65_0.area.w) ~= "number" or type(arg_65_0.area.h) ~= "number" then
			return nil
		end

		local function var_65_0(arg_66_0, arg_66_1, arg_66_2)
			if arg_66_0 and (arg_66_0.subclass == "마그누스" or arg_66_0.subclassName == "마그누스" or arg_66_0.subclassKey == "마그누스") then
				return true
			end

			if arg_66_2 and arg_66_2.units and arg_66_2.units.마그누스 and arg_66_1 == arg_66_2.units.마그누스 then
				return true
			end

			return false
		end

		local function var_65_1(arg_67_0, arg_67_1, arg_67_2)
			if arg_67_0 and (arg_67_0.subclass == "카오스" or arg_67_0.subclassName == "카오스" or arg_67_0.subclassKey == "카오스") then
				return true
			end

			if arg_67_2 and arg_67_2.units and arg_67_2.units.카오스 and arg_67_1 == arg_67_2.units.카오스 then
				return true
			end

			return false
		end

		local function var_65_2(arg_68_0, arg_68_1, arg_68_2)
			if arg_68_0 and (arg_68_0.subclass == "크러셔" or arg_68_0.subclassName == "크러셔" or arg_68_0.subclassKey == "크러셔") then
				return true
			end

			if arg_68_2 and arg_68_2.units and arg_68_2.units.크러셔 and arg_68_1 == arg_68_2.units.크러셔 then
				return true
			end

			return false
		end

		local function var_65_3(arg_69_0, arg_69_1, arg_69_2, arg_69_3)
			if not arg_69_0 or not arg_69_0.bounds then
				return 0
			end

			local var_69_0 = arg_69_0.bounds[arg_69_1] and arg_69_0.bounds[arg_69_1][arg_69_2]

			var_69_0 = var_69_0 or arg_69_0.bounds.idle and arg_69_0.bounds.idle[1]

			if not var_69_0 then
				return 0
			end

			local var_69_1 = arg_69_0.frameW or 0

			return (var_69_0.x + var_69_0.w * 0.5 - var_69_1 * 0.5) * (arg_69_3 or 1)
		end

		local function var_65_4(arg_70_0, arg_70_1)
			if not arg_70_0 or not arg_70_0.bounds or not arg_70_0.bounds.idle or not arg_70_0.bounds.idle[1] then
				return 0
			end

			local var_70_0 = arg_70_0.bounds.idle[1]
			local var_70_1 = arg_70_0.frameW or 0

			return (var_70_0.x + var_70_0.w * 0.5 - var_70_1 * 0.5) * (arg_70_1 or 1)
		end

		local function var_65_5(arg_71_0, arg_71_1)
			if not arg_71_0 or not arg_71_0.bounds or not arg_71_0.bounds.idle or not arg_71_0.bounds.idle[1] then
				return nil
			end

			local var_71_0 = arg_71_0.bounds.idle[1]

			return (var_71_0.y + var_71_0.h or 0) * (arg_71_1 or 1)
		end

		local function var_65_6(arg_72_0, arg_72_1)
			local var_72_0 = var_59_0.ui and var_59_0.ui.battle and var_59_0.ui.battle.magnusSpriteOffset
			local var_72_1 = var_72_0 and var_72_0.x or -3
			local var_72_2 = var_72_0 and var_72_0.y or -1
			local var_72_3 = arg_72_1 or 1

			return math.floor(var_72_1 * var_72_3 + 0.5), math.floor(var_72_2 * var_72_3 + 0.5)
		end

		local var_65_7
		local var_65_8
		local var_65_9

		local function var_65_10(arg_73_0, arg_73_1, arg_73_2, arg_73_3, arg_73_4)
			if arg_73_0 and (arg_73_0.isUndyingSoul or arg_73_0.spawnHold) then
				return
			end

			arg_73_4 = require("src.game.combat").wooden_watchtower.visualY(arg_73_0, arg_73_4)

			local var_73_0 = arg_73_3
			local var_73_1 = arg_73_4

			if arg_73_0 and arg_73_0.hitShake and arg_73_0.hitShake.t and arg_73_0.hitShake.dur then
				local var_73_2 = math.max(0, math.min(1, (arg_73_0.hitShake.t or 0) / (arg_73_0.hitShake.dur or 0.11)))
				local var_73_3 = math.floor((arg_73_0.hitShake.amp or 2) * (1 - var_73_2) + 0.5)

				if var_73_3 > 0 then
					var_73_0 = var_73_0 + var_73_3 * (math.floor((arg_73_0.hitShake.t or 0) * 60) % 2 == 0 and -1 or 1)
				end
			end

			local var_73_4 = arg_65_1 - var_73_0
			local var_73_5 = arg_65_2 - var_73_1
			local var_73_6 = var_73_4 * var_73_4 + var_73_5 * var_73_5
			local var_73_7 = var_0_38

			if var_65_0(arg_73_0, nil, arg_65_0.assets) or var_65_1(arg_73_0, nil, arg_65_0.assets) or var_65_2(arg_73_0, nil, arg_65_0.assets) then
				var_73_7 = var_73_7 * 2.5
			elseif arg_73_0 and (arg_73_0.sym == "M" or arg_73_0.sym == "D") then
				var_73_7 = var_73_7 * 2
			end

			local var_73_8 = arg_65_0.assets and arg_65_0.assets.units
			local var_73_9 = arg_73_0 and var_73_8 and var_73_8[arg_73_0.subclassKey or arg_73_0.subclassName or arg_73_0.subclass]

			if var_73_9 and var_73_9.pixelScaleBase then
				local var_73_10 = require("src.ui.widgets").sprite_anchor.uniformScale(var_73_9, var_59_0.ui.battle and var_59_0.ui.battle.allySize32 or 64)

				var_73_7 = math.max(var_73_7, math.max(var_73_9.frameW, var_73_9.frameH) * var_73_10)
			end

			if arg_65_3 and arg_65_3.ref == arg_73_0 then
				var_73_7 = var_73_7 * 1.8
			end

			local var_73_11 = false

			if arg_73_1 == "enemy" and arg_65_0.sandboxMode == true and arg_73_0 and arg_73_0.colX and arg_73_0.colY and arg_73_0.colW and arg_73_0.colH then
				local var_73_12 = 0

				var_73_11 = arg_65_1 >= arg_73_0.colX - var_73_12 and arg_65_1 <= arg_73_0.colX + arg_73_0.colW + var_73_12 and arg_65_2 >= arg_73_0.colY - var_73_12 and arg_65_2 <= arg_73_0.colY + arg_73_0.colH + var_73_12
			end

			if var_73_11 or var_73_6 <= var_73_7 * var_73_7 then
				local var_73_13 = arg_65_0.assets
				local var_73_14
				local var_73_15
				local var_73_16
				local var_73_17
				local var_73_18

				if arg_65_0.mode == "battle" and arg_73_1 == "ally" and arg_73_0 then
					if arg_73_0.sym == "Joker" or arg_73_0.sym == "J" then
						local var_73_19 = tonumber(arg_73_0.rank or arg_73_0.star or 1) or 1

						var_73_14 = var_73_13 and var_73_13.units and (arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] or arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] or arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] or var_73_19 >= 3 and var_73_13.units.Illusionist or var_73_19 >= 2 and var_73_13.units.Trickster or var_73_13.units.Jester or var_73_13.units.Joker or var_73_13.units.J)
					elseif arg_73_0.sym == "W" then
						if var_73_13 and var_73_13.units then
							if arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							else
								local var_73_20 = arg_73_0.rank or arg_73_0.star or 1

								if var_73_20 >= 3 and var_73_13.units.MiniSwordMan03 then
									var_73_14 = var_73_13.units.MiniSwordMan03
								elseif var_73_20 >= 2 and var_73_13.units.MiniSwordMan02 then
									var_73_14 = var_73_13.units.MiniSwordMan02
								else
									var_73_14 = var_73_13.units.MiniSwordMan
								end
							end
						end
					elseif arg_73_0.sym == "A" then
						if var_73_13 and var_73_13.units then
							if arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							else
								local var_73_21 = arg_73_0.rank or arg_73_0.star or 1

								if var_73_21 >= 3 and var_73_13.units.MiniArcherMan03 then
									var_73_14 = var_73_13.units.MiniArcherMan03
								elseif var_73_21 >= 2 and var_73_13.units.MiniArcherMan02 then
									var_73_14 = var_73_13.units.MiniArcherMan02
								else
									var_73_14 = var_73_13.units.MiniArcherMan
								end
							end
						end
					elseif arg_73_0.sym == "S" then
						if var_73_13 and var_73_13.units then
							if arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_22 = arg_73_0.rank or arg_73_0.star or 1

								if var_73_22 >= 3 and var_73_13.units.MiniSpearMan03 then
									var_73_14 = var_73_13.units.MiniSpearMan03
								elseif var_73_22 >= 2 and var_73_13.units.MiniSpearMan02 then
									var_73_14 = var_73_13.units.MiniSpearMan02
								else
									var_73_14 = var_73_13.units.MiniSpearMan
								end
							end
						end
					elseif arg_73_0.sym == "M" then
						if var_73_13 and var_73_13.units then
							if arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_23 = arg_73_0.rank or arg_73_0.star or 1
								local var_73_24 = arg_73_0 and var_0_6(arg_73_0.grade) or "normal"

								if var_73_23 >= 3 and var_73_13.units["현자 엘프"] then
									var_73_14 = var_73_13.units["현자 엘프"]
								elseif var_73_23 >= 2 and var_73_13.units.주술사 then
									var_73_14 = var_73_13.units.주술사
								elseif var_73_23 <= 1 and var_73_24 == "advanced" and var_73_13.units.마도사 then
									var_73_14 = var_73_13.units.마도사
								else
									var_73_14 = var_73_13.units.MiniMage
								end
							end
						end
					elseif arg_73_0.sym == "H" then
						if var_73_13 and var_73_13.units then
							if arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_25 = arg_73_0.rank or arg_73_0.star or 1
								local var_73_26 = var_0_6(arg_73_0.grade)

								if var_73_25 == 3 and (var_73_26 == "prism" or arg_73_0 and arg_73_0.jackpot5th == true) and var_73_13.units["숲의 심장"] then
									var_73_14 = var_73_13.units["숲의 심장"]
								elseif var_73_25 == 2 and (var_73_26 == "prism" or arg_73_0 and arg_73_0.jackpot5th == true) and var_73_13.units.실반 then
									var_73_14 = var_73_13.units.실반
								elseif var_73_25 <= 1 and (var_73_26 == "prism" or arg_73_0 and arg_73_0.jackpot5th == true) and var_73_13.units.환수기병 then
									var_73_14 = var_73_13.units.환수기병
								elseif var_73_25 <= 1 and var_73_26 == "advanced" and var_73_13.units.철기병 then
									var_73_14 = var_73_13.units.철기병
								elseif var_73_25 >= 3 and var_73_13.units.MiniHorseMan03 then
									var_73_14 = var_73_13.units.MiniHorseMan03
								elseif var_73_25 >= 2 and var_73_13.units.돌격병 then
									var_73_14 = var_73_13.units.돌격병
								else
									var_73_14 = var_73_13.units.기병
								end
							end
						end
					elseif arg_73_0.sym == "D" then
						if var_73_13 and var_73_13.units then
							if arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_27 = arg_73_0.rank or arg_73_0.star or 1
								local var_73_28 = var_0_6(arg_73_0.grade)

								if var_73_27 <= 1 and var_73_28 == "prism" and var_73_13.units.천사 then
									var_73_14 = var_73_13.units.천사
								elseif var_73_27 <= 1 and var_73_28 == "legendary" and var_73_13.units.셰이드 then
									var_73_14 = var_73_13.units.셰이드
								elseif var_73_27 <= 1 and var_73_28 == "rare" and var_73_13.units.수호자 then
									var_73_14 = var_73_13.units.수호자
								elseif var_73_27 <= 1 and var_73_28 == "advanced" and var_73_13.units.드루이드 then
									var_73_14 = var_73_13.units.드루이드
								elseif var_73_27 >= 3 and var_73_13.units["현자 엘프"] then
									var_73_14 = var_73_13.units["현자 엘프"]
								elseif var_73_27 >= 2 and var_73_13.units.황제 then
									var_73_14 = var_73_13.units.황제
								else
									var_73_14 = var_73_13.units.결투사
								end
							end
						end
					elseif type(arg_73_0.sym) == "string" and arg_73_0.sym:find("ENEMY_") then
						local var_73_29 = arg_73_0.sym:sub(7)

						if var_73_13 and var_73_13.units then
							if var_73_13.units[var_73_29] then
								var_73_14 = var_73_13.units[var_73_29]
							elseif arg_73_0.skin and var_73_13.units[arg_73_0.skin] then
								var_73_14 = var_73_13.units[arg_73_0.skin]
							elseif var_73_13.units["Mini" .. var_73_29] then
								var_73_14 = var_73_13.units["Mini" .. var_73_29]
							end
						end
					end

					var_73_15 = arg_73_0.anim and arg_73_0.anim.name or "idle"
					var_73_16 = arg_73_0.anim and arg_73_0.anim.frame or 1
				else
					if arg_73_2 == "Joker" or arg_73_2 == "J" then
						local var_73_30 = tonumber(arg_73_0 and (arg_73_0.rank or arg_73_0.star) or 1) or 1

						var_73_14 = var_73_13 and var_73_13.units and (arg_73_0 and arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] or arg_73_0 and arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] or arg_73_0 and arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] or var_73_30 >= 3 and var_73_13.units.Illusionist or var_73_30 >= 2 and var_73_13.units.Trickster or var_73_13.units.Jester or var_73_13.units.Joker or var_73_13.units.J)
					elseif arg_73_2 == "W" then
						if var_73_13 and var_73_13.units then
							if arg_73_0 and arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0 and arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							else
								local var_73_31 = arg_73_0 and (arg_73_0.rank or arg_73_0.star) or 1

								if var_73_31 >= 3 and var_73_13.units.MiniSwordMan03 then
									var_73_14 = var_73_13.units.MiniSwordMan03
								elseif var_73_31 >= 2 and var_73_13.units.MiniSwordMan02 then
									var_73_14 = var_73_13.units.MiniSwordMan02
								else
									var_73_14 = var_73_13.units.MiniSwordMan
								end
							end
						end
					elseif arg_73_2 == "A" then
						if var_73_13 and var_73_13.units then
							if arg_73_0 and arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0 and arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							else
								local var_73_32 = arg_73_0 and (arg_73_0.rank or arg_73_0.star) or 1

								if var_73_32 >= 3 and var_73_13.units.MiniArcherMan03 then
									var_73_14 = var_73_13.units.MiniArcherMan03
								elseif var_73_32 >= 2 and var_73_13.units.MiniArcherMan02 then
									var_73_14 = var_73_13.units.MiniArcherMan02
								else
									var_73_14 = var_73_13.units.MiniArcherMan
								end
							end
						end
					elseif arg_73_2 == "S" then
						if var_73_13 and var_73_13.units then
							if arg_73_0 and arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0 and arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0 and arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_33 = arg_73_0 and (arg_73_0.rank or arg_73_0.star) or 1

								if var_73_33 >= 3 and var_73_13.units.MiniSpearMan03 then
									var_73_14 = var_73_13.units.MiniSpearMan03
								elseif var_73_33 >= 2 and var_73_13.units.MiniSpearMan02 then
									var_73_14 = var_73_13.units.MiniSpearMan02
								else
									var_73_14 = var_73_13.units.MiniSpearMan
								end
							end
						end
					elseif arg_73_2 == "M" then
						if var_73_13 and var_73_13.units then
							if arg_73_0 and arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0 and arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0 and arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_34 = arg_73_0 and (arg_73_0.rank or arg_73_0.star) or 1
								local var_73_35 = arg_73_0 and var_0_6(arg_73_0.grade) or "normal"

								if var_73_34 >= 3 and var_73_13.units["현자 엘프"] then
									var_73_14 = var_73_13.units["현자 엘프"]
								elseif var_73_34 >= 2 and var_73_13.units.주술사 then
									var_73_14 = var_73_13.units.주술사
								elseif var_73_34 <= 1 and var_73_35 == "advanced" and var_73_13.units.마도사 then
									var_73_14 = var_73_13.units.마도사
								else
									var_73_14 = var_73_13.units.MiniMage
								end
							end
						end
					elseif arg_73_2 == "H" then
						if var_73_13 and var_73_13.units then
							if arg_73_0 and arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0 and arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0 and arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_36 = arg_73_0 and (arg_73_0.rank or arg_73_0.star) or 1
								local var_73_37 = arg_73_0 and var_0_6(arg_73_0.grade) or "normal"

								if var_73_36 == 3 and (var_73_37 == "prism" or arg_73_0 and arg_73_0.jackpot5th == true) and var_73_13.units["숲의 심장"] then
									var_73_14 = var_73_13.units["숲의 심장"]
								elseif var_73_36 == 2 and (var_73_37 == "prism" or arg_73_0 and arg_73_0.jackpot5th == true) and var_73_13.units.실반 then
									var_73_14 = var_73_13.units.실반
								elseif var_73_36 <= 1 and (var_73_37 == "prism" or arg_73_0 and arg_73_0.jackpot5th == true) and var_73_13.units.환수기병 then
									var_73_14 = var_73_13.units.환수기병
								elseif var_73_36 <= 1 and var_73_37 == "advanced" and var_73_13.units.철기병 then
									var_73_14 = var_73_13.units.철기병
								elseif var_73_36 >= 3 and var_73_13.units.MiniHorseMan03 then
									var_73_14 = var_73_13.units.MiniHorseMan03
								elseif var_73_36 >= 2 and var_73_13.units.돌격병 then
									var_73_14 = var_73_13.units.돌격병
								else
									var_73_14 = var_73_13.units.기병
								end
							end
						end
					elseif arg_73_2 == "D" then
						if var_73_13 and var_73_13.units then
							if arg_73_0 and arg_73_0.subclassKey and var_73_13.units[arg_73_0.subclassKey] then
								var_73_14 = var_73_13.units[arg_73_0.subclassKey]
							elseif arg_73_0 and arg_73_0.subclassName and var_73_13.units[arg_73_0.subclassName] then
								var_73_14 = var_73_13.units[arg_73_0.subclassName]
							elseif arg_73_0 and arg_73_0.subclass and var_73_13.units[arg_73_0.subclass] then
								var_73_14 = var_73_13.units[arg_73_0.subclass]
							else
								local var_73_38 = arg_73_0 and (arg_73_0.rank or arg_73_0.star) or 1
								local var_73_39 = var_0_6(arg_73_0 and arg_73_0.grade)

								if var_73_38 <= 1 and var_73_39 == "prism" and var_73_13.units.천사 then
									var_73_14 = var_73_13.units.천사
								elseif var_73_38 <= 1 and var_73_39 == "legendary" and var_73_13.units.셰이드 then
									var_73_14 = var_73_13.units.셰이드
								elseif var_73_38 <= 1 and var_73_39 == "rare" and var_73_13.units.수호자 then
									var_73_14 = var_73_13.units.수호자
								elseif var_73_38 <= 1 and var_73_39 == "advanced" and var_73_13.units.드루이드 then
									var_73_14 = var_73_13.units.드루이드
								elseif var_73_38 >= 3 and var_73_13.units["현자 엘프"] then
									var_73_14 = var_73_13.units["현자 엘프"]
								elseif var_73_38 >= 2 and var_73_13.units.황제 then
									var_73_14 = var_73_13.units.황제
								else
									var_73_14 = var_73_13.units.결투사
								end
							end
						end
					elseif type(arg_73_2) == "string" and arg_73_2:find("ENEMY_") then
						local var_73_40 = arg_73_2:sub(7)

						if var_73_13 and var_73_13.units then
							if var_73_13.units[var_73_40] then
								var_73_14 = var_73_13.units[var_73_40]
							elseif arg_73_0 and arg_73_0.skin and var_73_13.units[arg_73_0.skin] then
								var_73_14 = var_73_13.units[arg_73_0.skin]
							elseif var_73_13.units["Mini" .. var_73_40] then
								var_73_14 = var_73_13.units["Mini" .. var_73_40]
							end
						end
					end

					var_73_15 = arg_73_0 and arg_73_0.anim and arg_73_0.anim.name or "idle"
					var_73_16 = arg_73_0 and arg_73_0.anim and arg_73_0.anim.frame or 1
				end

				local var_73_41 = false

				if arg_73_0 and arg_73_0.isGuardianGolem then
					var_73_14 = var_73_13 and var_73_13.units and var_73_13.units.GuardianGolem
					var_73_15 = arg_73_0.anim and arg_73_0.anim.name or "idle"
					var_73_16 = arg_73_0.anim and arg_73_0.anim.frame or 1

					local var_73_42 = 32, 32
				end

				if var_73_14 and var_73_14.imageData and var_73_14.quads and var_73_14.quads[var_73_15] and var_73_14.quads[var_73_15][var_73_16] then
					local var_73_43, var_73_44 = var_73_14.frameW, var_73_14.frameH
					local var_73_45 = arg_65_0.area
					local var_73_46 = math.floor(12 * var_59_0.ui.scale)
					local var_73_47 = var_73_45.x + var_73_46
					local var_73_48 = var_73_45.y + var_73_46 + math.floor(28 * var_59_0.ui.scale)
					local var_73_49 = var_73_45.w - var_73_46 * 2
					local var_73_50 = var_73_45.h - var_73_46 * 2 - math.floor(28 * var_59_0.ui.scale)
					local var_73_51 = 32
					local var_73_52

					if arg_65_0.mode == "battle" then
						if var_59_0.ui.battle and var_59_0.ui.battle.allySize32 and var_59_0.ui.battle.allySize32 > 0 then
							var_73_52 = math.max(var_73_51, math.floor(var_59_0.ui.battle.allySize32 / var_73_51) * var_73_51)
						else
							local var_73_53 = math.floor(math.min(var_73_49, var_73_50) * 0.12 * (var_59_0.ui.battle and var_59_0.ui.battle.unitScale or 1))

							var_73_52 = var_73_51 * math.max(1, math.ceil(var_73_53 / var_73_51))
						end
					elseif var_59_0.ui.battle and var_59_0.ui.battle.allySize32 and var_59_0.ui.battle.allySize32 > 0 then
						var_73_52 = math.max(var_73_51, math.floor(var_59_0.ui.battle.allySize32 / var_73_51) * var_73_51)
					else
						local var_73_54 = math.floor(math.min(var_73_49, var_73_50) * 0.12 * (var_59_0.ui.battle and var_59_0.ui.battle.rosterScale or 1))

						var_73_52 = var_73_51 * math.max(1, math.ceil(var_73_54 / var_73_51))
					end

					local var_73_55 = var_73_52 / math.max(1, var_73_44 or 32)
					local var_73_56
					local var_73_57

					if var_73_14.pixelScaleBase and arg_73_1 ~= "enemy" then
						var_73_56, var_73_57, var_73_55 = require("src.ui.widgets").sprite_anchor.allyTransform({
							x = arg_73_3,
							y = arg_73_4,
							sym = arg_73_0 and arg_73_0.sym
						}, var_73_14, var_73_52, var_59_0.ui.battle)
					elseif var_73_43 and var_73_43 >= 40 or var_73_44 and var_73_44 >= 40 then
						var_73_55 = var_73_52 / math.max(1, var_73_44 or 32)

						local var_73_58 = var_73_43 * var_73_55
						local var_73_59 = var_73_44 * var_73_55

						if var_65_0(arg_73_0, var_73_14, var_73_13) then
							local var_73_60 = var_73_52
							local var_73_61 = math.floor(arg_73_3 - var_73_60 / 2)
							local var_73_62 = math.floor(arg_73_4 - var_73_60 / 2)
							local var_73_63 = math.floor((var_73_60 - var_73_58) / 2 + 0.5)
							local var_73_64 = var_65_4(var_73_14, var_73_55)

							var_73_56 = var_73_61 + var_73_63 - var_73_64

							local var_73_65 = var_73_62 + var_73_60
							local var_73_66 = var_65_5(var_73_14, var_73_55)

							if var_73_66 then
								var_73_57 = math.floor(var_73_65 - var_73_66 + 0.5)
							else
								var_73_57 = var_73_62
							end

							local var_73_67, var_73_68 = var_65_6(var_59_0.ui, math.abs(var_73_55))

							var_73_56 = var_73_56 + var_73_67
							var_73_57 = var_73_57 + var_73_68
						elseif var_65_2(arg_73_0, var_73_14, var_73_13) then
							if arg_65_0.mode == "battle" and arg_73_1 == "ally" then
								var_73_56 = math.floor(arg_73_3 - var_73_58 * 0.5)
								var_73_57 = math.floor(arg_73_4 - var_73_52 / 2)
							else
								local var_73_69 = var_73_52
								local var_73_70 = math.floor(arg_73_3 - var_73_69 / 2)

								var_73_57, var_73_56 = math.floor(arg_73_4 - var_73_69 / 2), var_73_70 + math.floor((var_73_69 - var_73_58) / 2 + 0.5)
							end
						elseif var_65_1(arg_73_0, var_73_14, var_73_13) then
							local var_73_71 = var_73_52 / math.max(1, var_73_43 or 32)
							local var_73_72

							if var_73_43 and var_73_43 >= 48 or var_73_44 and var_73_44 >= 48 then
								var_73_72 = math.max(1, math.ceil(var_73_71 - 1e-06))
							else
								var_73_72 = math.max(1, math.floor(var_73_71 + 0.5))
							end

							var_73_55 = var_73_72
							var_73_58 = var_73_43 * var_73_55
							var_73_59 = var_73_44 * var_73_55

							if arg_65_0.mode == "battle" and arg_73_1 == "ally" then
								var_73_56 = math.floor(arg_73_3 - var_73_58 / 2)
								var_73_57 = math.floor(arg_73_4 - var_73_52 / 2) + var_73_52 - var_73_59
							else
								local var_73_73 = var_73_52
								local var_73_74 = math.floor(arg_73_3 - var_73_73 / 2)
								local var_73_75 = math.floor(arg_73_4 - var_73_73 / 2)
								local var_73_76 = math.floor((var_73_73 - var_73_58) / 2 + 0.5)
								local var_73_77 = var_73_73 - var_73_59

								var_73_56 = var_73_74 + var_73_76
								var_73_57 = var_73_75 + var_73_77
							end
						else
							var_73_56 = math.floor(arg_73_3 - var_73_58 / 2 + 0.5)
							var_73_57 = math.floor(arg_73_4 + var_73_52 / 2 - var_73_59 + 0.5)
						end
					else
						local var_73_78 = (var_73_43 or 32) * var_73_55
						local var_73_79 = var_65_0(arg_73_0, var_73_14, var_73_13) and var_65_3(var_73_14, var_73_15, var_73_16, var_73_55) or 0

						var_73_56 = var_0_17(arg_73_3 - var_73_78 / 2 - var_73_79)
						var_73_57 = var_0_17(arg_73_4 - var_73_52 / 2)
					end

					if arg_73_0 and arg_73_0.hitShake and arg_73_0.hitShake.t and arg_73_0.hitShake.dur then
						local var_73_80 = math.max(0, math.min(1, (arg_73_0.hitShake.t or 0) / (arg_73_0.hitShake.dur or 0.11)))
						local var_73_81 = math.floor((arg_73_0.hitShake.amp or 2) * (1 - var_73_80) + 0.5)

						if var_73_81 > 0 then
							var_73_56 = var_73_56 + var_73_81 * (math.floor((arg_73_0.hitShake.t or 0) * 60) % 2 == 0 and -1 or 1)
						end
					end

					if arg_73_1 == "enemy" then
						var_73_55 = math.max(1, math.floor(var_73_52 / 32 + 0.5))

						local var_73_82 = (var_73_43 or 32) * var_73_55
						local var_73_83 = (var_73_44 or 32) * var_73_55

						var_73_56 = math.floor(arg_73_3 + 0.5) - math.floor(var_73_82 / 2)
						var_73_57 = math.floor(arg_73_4 + 0.5) - math.floor(var_73_83 / 2)

						if arg_73_0 and arg_73_0.hitShake and arg_73_0.hitShake.t and arg_73_0.hitShake.dur then
							local var_73_84 = math.max(0, math.min(1, (arg_73_0.hitShake.t or 0) / (arg_73_0.hitShake.dur or 0.11)))
							local var_73_85 = math.floor((arg_73_0.hitShake.amp or 2) * (1 - var_73_84) + 0.5)

							if var_73_85 > 0 then
								local var_73_86 = math.floor((arg_73_0.hitShake.t or 0) * 60) % 2 == 0 and -1 or 1

								var_73_56 = math.floor(arg_73_3 + 0.5) + var_73_85 * var_73_86 - math.floor(var_73_82 / 2)
							end
						end
					end

					local var_73_87 = var_73_55
					local var_73_88 = var_73_55
					local var_73_89 = (arg_65_1 - var_73_56) / var_73_87

					if arg_73_1 == "ally" and arg_73_0 and arg_73_0.facing == -1 then
						var_73_89 = var_73_43 - 1 - var_73_89
					elseif arg_73_1 == "enemy" and arg_73_0 and (arg_73_0.facing or -1) < 0 then
						var_73_89 = var_73_43 - 1 - var_73_89
					end

					local var_73_90 = var_73_89
					local var_73_91 = (arg_65_2 - var_73_57) / var_73_88

					if var_73_90 < 0 or var_73_91 < 0 or var_73_43 <= var_73_90 or var_73_44 <= var_73_91 then
						var_73_41 = false
					else
						local var_73_92, var_73_93 = var_73_14.image:getDimensions()
						local var_73_94, var_73_95, var_73_96, var_73_97 = var_73_14.quads[var_73_15][var_73_16]:getViewport()
						local var_73_98 = math.floor(var_73_94 + var_73_90)
						local var_73_99 = math.floor(var_73_95 + var_73_91)

						if var_73_98 < 0 or var_73_99 < 0 or var_73_92 <= var_73_98 or var_73_93 <= var_73_99 then
							var_73_41 = false
						else
							local var_73_100, var_73_101, var_73_102, var_73_103 = var_73_14.imageData:getPixel(var_73_98, var_73_99)

							var_73_41 = (var_73_103 or 0) > 0.01
						end
					end

					if not var_73_41 and arg_73_1 == "enemy" and arg_65_0.sandboxMode == true and arg_73_0 and arg_73_0.colX and arg_73_0.colY and arg_73_0.colW and arg_73_0.colH and not (var_73_14 and var_73_14.imageData and var_73_14.quads and var_73_14.quads[var_73_15] and var_73_14.quads[var_73_15][var_73_16]) then
						local var_73_104 = 0

						var_73_41 = arg_65_1 >= arg_73_0.colX - var_73_104 and arg_65_1 <= arg_73_0.colX + arg_73_0.colW + var_73_104 and arg_65_2 >= arg_73_0.colY - var_73_104 and arg_65_2 <= arg_73_0.colY + arg_73_0.colH + var_73_104
					end

					if not var_73_41 and var_73_11 and not (var_73_14 and var_73_14.imageData and var_73_14.quads and var_73_14.quads[var_73_15] and var_73_14.quads[var_73_15][var_73_16]) then
						var_73_41 = true
					end
				end

				if var_73_41 and (not var_65_8 or var_73_6 < var_65_8 or var_73_6 == var_65_8 and arg_73_4 > (var_65_9 or -1000000000) or var_73_6 == var_65_8 and arg_73_4 == var_65_9 and arg_73_0 == var_59_0.lastSelectedRef) then
					var_65_7 = {
						ref = arg_73_0,
						kind = arg_73_1,
						sym = arg_73_2,
						x = arg_73_3,
						y = arg_73_4
					}
					var_65_8 = var_73_6
					var_65_9 = arg_73_4
				end
			end
		end

		if arg_65_0.mode ~= "battle" then
			local var_65_11
			local var_65_12

			if arg_65_0.rosterUnits and arg_65_0.rosterSymbols then
				for iter_65_0, iter_65_1 in ipairs(arg_65_0.rosterUnits) do
					if iter_65_1 and iter_65_1._held then
						var_65_11 = iter_65_1
						var_65_12 = arg_65_0.rosterSymbols[iter_65_0]

						break
					end
				end
			end

			if arg_65_0._guardianGolemPreview and arg_65_0._guardianGolemPreview._held then
				var_65_11 = arg_65_0._guardianGolemPreview
				var_65_12 = var_65_11.sym
			end

			if var_65_11 and var_65_11.x and var_65_11.y then
				var_65_10(var_65_11, "roster", var_65_12 or "W", var_65_11.x, var_65_11.y)

				return var_65_7
			end
		end

		if arg_65_0.mode == "battle" then
			for iter_65_2, iter_65_3 in ipairs(arg_65_0.allies or {}) do
				if iter_65_3.alive then
					var_65_10(iter_65_3, "ally", iter_65_3.sym, iter_65_3.x, iter_65_3.y)
				end
			end

			if arg_65_0.sandboxMode == true then
				for iter_65_4, iter_65_5 in ipairs(arg_65_0.enemies or {}) do
					if iter_65_5.alive and not iter_65_5.dying then
						var_65_10(iter_65_5, "enemy", iter_65_5.sym or "ENEMY_" .. tostring(iter_65_5.kind or "Goblin"), iter_65_5.x, iter_65_5.y)
					end
				end
			end
		else
			local var_65_13 = require("src.game.combat").guardian_golem.preparation(arg_65_0, 0, arg_65_0.area)

			if var_65_13 then
				var_65_10(var_65_13, "roster", var_65_13.sym, var_65_13.x, var_65_13.y)
			end

			for iter_65_6, iter_65_7 in ipairs(arg_65_0.rosterSymbols or {}) do
				local var_65_14 = arg_65_0.rosterUnits and arg_65_0.rosterUnits[iter_65_6]

				if var_65_14 then
					var_65_10(var_65_14, "roster", iter_65_7, var_65_14.x, var_65_14.y)
				end
			end

			if arg_65_0.sandboxMode == true then
				for iter_65_8, iter_65_9 in ipairs(arg_65_0.enemies or {}) do
					if iter_65_9.alive and not iter_65_9.dying then
						var_65_10(iter_65_9, "enemy", iter_65_9.sym or "ENEMY_" .. tostring(iter_65_9.kind or "Goblin"), iter_65_9.x, iter_65_9.y)
					end
				end
			end
		end

		return var_65_7
	end

	local function var_59_3(arg_74_0, arg_74_1)
		return arg_74_0 and arg_74_1 and arg_74_0.ref == arg_74_1.ref
	end

	local function var_59_4(arg_75_0)
		if not arg_75_0.target then
			arg_75_0.cache = nil

			return
		end

		local var_75_0 = arg_75_0.battlefield
		local var_75_1

		if arg_75_0.target.kind == "ally" then
			var_75_1 = var_0_46(arg_75_0.target.ref, var_75_0, arg_75_0.ui)
		elseif arg_75_0.target.kind == "enemy" then
			var_75_1 = var_0_47(arg_75_0.target.ref)
		elseif arg_75_0.target.ref and arg_75_0.target.ref.stats then
			var_75_1 = var_0_50(arg_75_0.target.ref, var_75_0, arg_75_0.ui)
		else
			var_75_1 = var_0_51(arg_75_0.target.sym)

			require("src.game.combat").tense_string.applyStatPreview(var_75_1, arg_75_0.target.ref or {
				sym = arg_75_0.target.sym
			}, var_75_0, arg_75_0.ui)
		end

		if var_75_1 and arg_75_0.target.kind ~= "enemy" and arg_75_0.target.ref then
			local var_75_2 = arg_75_0.target.ref
			local var_75_3 = require("src.game.awakening")

			var_75_3.applyStatPreview(var_75_1, var_75_2, var_75_0)

			var_75_1.awakeningStage = var_75_3.stage(var_75_2)
			var_75_1.awakeningMaxRank = var_75_3.maxRank(var_75_2)

			if arg_75_0.target.kind ~= "ally" and not var_75_2.stats then
				var_75_1.rank = var_75_2.rank or var_75_2.star or var_75_1.rank
			end
		end

		if arg_75_0._predActive and arg_75_0._predSrcSym and var_75_1 and not var_75_1.isGuardianGolem and (not arg_75_0._heldRef or not arg_75_0._heldRef.isGuardianGolem) and not (arg_75_0._heldRef and arg_75_0.target and arg_75_0.target.ref == arg_75_0._heldRef) then
			local var_75_4 = arg_75_0._predSrcSym
			local var_75_5 = {}

			if not var_75_1.hpMax and not var_75_1.hp then
				local var_75_6 = 0
			end

			if not var_75_1.atk then
				local var_75_7 = 0
			end

			if not var_75_1.aspd then
				local var_75_8 = 0
			end

			local var_75_9 = 0
			local var_75_10 = 0
			local var_75_11 = 0
			local var_75_12 = 1

			if arg_75_0._heldRef and arg_75_0._heldRef.stats then
				local var_75_13

				var_75_13 = arg_75_0._heldRef.stats.hp or 0

				local var_75_14

				var_75_14 = arg_75_0._heldRef.stats.atk or 0

				local var_75_15

				var_75_15 = arg_75_0._heldRef.stats.aspd or 0

				local var_75_16

				var_75_16 = arg_75_0._heldRef.rank or arg_75_0._heldRef.star or 1
			else
				local var_75_17 = var_0_51(var_75_4)
				local var_75_18

				var_75_18 = var_75_17.hp or 0

				local var_75_19

				var_75_19 = var_75_17.atk or 0

				local var_75_20

				var_75_20 = var_75_17.aspd or 0

				local var_75_21 = 1
			end

			local function var_75_22(arg_76_0, arg_76_1)
				if arg_76_1 == "advanced" then
					return 2
				end

				if arg_76_1 == "rare" then
					return 3
				end

				if arg_76_1 == "legendary" then
					return 4
				end

				if arg_76_1 == "prism" then
					return 5
				end

				local var_76_0 = (var_0_2 and var_0_2.evolution or {}).maxRankBySym or {}

				return var_76_0[arg_76_0] or var_76_0.default or 5
			end

			local var_75_23 = (var_75_1.rank or 1) >= var_75_22(var_75_1.sym, var_75_1.grade) or var_75_1.grade == "normal"
			local var_75_24 = 1

			if arg_75_0._heldRef and arg_75_0._heldRef.stats then
				local var_75_25

				var_75_25 = arg_75_0._heldRef.rank or arg_75_0._heldRef.star or 1
			else
				local var_75_26 = 1
			end

			local var_75_27 = 1
			local var_75_28 = var_0_2 and var_0_2.rankThresholds and var_0_2.rankThresholds[var_75_1.grade or "normal"] or {}
			local var_75_29 = var_75_1.rank or 1

			if var_75_29 < 1 then
				var_75_29 = 1
			elseif var_75_29 > 5 then
				var_75_29 = 5
			end

			local var_75_30 = var_75_28[var_75_29] or 999
			local var_75_31 = var_75_1.absorbLV or 0
			local var_75_32 = var_75_31 / math.max(1e-09, var_75_30)
			local var_75_33 = var_0_62(arg_75_0._heldRef)

			if not var_75_23 and var_75_30 <= var_75_31 + var_75_33 then
				local var_75_34 = (var_75_31 + var_75_33) / math.max(1e-09, var_75_30)
				local var_75_35 = math.floor(var_75_33 / var_75_30 * 100 + 0.5)

				var_75_5.gauge = {
					cur = var_75_32,
					nxt = var_75_34,
					gainDisp = var_75_35
				}
				var_75_5.vTier = var_75_27
			else
				var_75_5 = nil
			end

			if var_75_5 then
				var_75_1.prediction = true
				var_75_1.pred = var_75_5
			else
				var_75_1.prediction = nil
				var_75_1.pred = nil
			end
		end

		if not arg_75_0.cache or not arg_75_0.cache.info then
			arg_75_0.cache = {
				info = var_75_1
			}
		else
			arg_75_0.cache.info = var_75_1
		end

		local var_75_36

		if arg_75_0._predActive and arg_75_0._predTarget then
			var_75_36 = arg_75_0._predTarget
		elseif arg_75_0.target and arg_75_0.target.kind == "roster" then
			var_75_36 = arg_75_0.target.ref
		end

		arg_75_0.cache.layout = var_0_63(arg_75_0.ui, var_75_1, 120, arg_75_0.battlefield and arg_75_0.battlefield.assets, var_75_36, arg_75_0._heldRef, arg_75_0._predSrcSym, arg_75_0.battlefield)
	end

	function var_59_0.probeUnit(arg_77_0, arg_77_1, arg_77_2, arg_77_3)
		return var_59_2(arg_77_1, arg_77_2, arg_77_3, nil)
	end

	function var_59_0.update(arg_78_0, arg_78_1, arg_78_2, arg_78_3, arg_78_4)
		arg_78_0.time = arg_78_0.time + arg_78_1
		arg_78_0.mouseX, arg_78_0.mouseY = var_0_17(arg_78_2), var_0_17(arg_78_3)
		arg_78_0.battlefield = arg_78_4

		if arg_78_4 and arg_78_4.awakeningModal then
			arg_78_0.locked = false
			arg_78_0.state = "IDLE"
			arg_78_0.fade = 0
			arg_78_0.hoverT = 0
			arg_78_0.hideT = 0
			arg_78_0.target = nil
			arg_78_0.lockedTarget = nil
			arg_78_0.candidate = nil
			arg_78_0.cache = nil
			arg_78_0._predActive = false
			arg_78_0._predSrcSym = nil
			arg_78_0._predTarget = nil
			arg_78_0._predTargetSym = nil
			arg_78_0._heldRef = nil
			arg_78_0._heldSym = nil
			arg_78_0.crossPrevLayout = nil
			arg_78_0.crossPrevInfo = nil
			arg_78_0.crossT = 0
			arg_78_0._expandedFactionTooltip = nil

			return
		end

		if arg_78_0._expandedFactionTooltip then
			local var_78_0 = arg_78_0._expandedFactionTooltip
			local var_78_1 = var_78_0.anchor
			local var_78_2

			if arg_78_4 and arg_78_4.classSelect then
				var_78_2 = arg_78_4.classSelect._hoveredFaction
			elseif var_0_3 then
				var_78_2 = var_0_3._hoveredFaction
			end

			if arg_78_4 ~= var_78_0.battlefield or (arg_78_4 and arg_78_4.classSelect) ~= var_78_0.selection or not var_78_2 or var_78_2.factionId ~= var_78_0.factionId or arg_78_2 < var_78_1.x or arg_78_2 > var_78_1.x + var_78_1.w or arg_78_3 < var_78_1.y or arg_78_3 > var_78_1.y + var_78_1.h then
				arg_78_0._expandedFactionTooltip = nil
			end
		end

		local var_78_3
		local var_78_4

		if arg_78_4 and arg_78_4.rosterUnits and arg_78_4.rosterSymbols then
			for iter_78_0, iter_78_1 in ipairs(arg_78_4.rosterUnits) do
				if iter_78_1 and iter_78_1._held then
					var_78_3 = iter_78_1
					var_78_4 = arg_78_4.rosterSymbols[iter_78_0]

					break
				end
			end
		end

		if arg_78_4 and arg_78_4._guardianGolemPreview and arg_78_4._guardianGolemPreview._held then
			var_78_3 = arg_78_4._guardianGolemPreview
			var_78_4 = var_78_3.sym
		end

		arg_78_0._heldRef = var_78_3
		arg_78_0._heldSym = var_78_4

		if arg_78_4 and arg_78_4.imprintModal and arg_78_4.imprintModal.active then
			if var_0_3 and var_0_3._cancelTriggered then
				var_0_3._cancelTriggered = false
				arg_78_4._imprintModalResolve = nil
				arg_78_4.imprintModal = nil
			end

			if var_0_3 and var_0_3._convertTriggered then
				local var_78_5 = arg_78_4.imprintModal
				local var_78_6 = var_78_5 and var_78_5.absorber
				local var_78_7 = var_78_5 and var_78_5.victim

				var_0_3._convertTriggered = false
				arg_78_4._imprintModalResolve = {
					action = "convert",
					absorber = var_78_6,
					victim = var_78_7
				}
				arg_78_4.imprintModal = nil

				if var_78_7 and arg_78_4.dropRoster then
					arg_78_4:dropRoster(var_78_7)
				end
			end

			if var_0_3 and var_0_3._upgradeTriggered then
				local var_78_8 = var_0_3._upgradeSlot or 1
				local var_78_9 = arg_78_4.imprintModal
				local var_78_10 = var_78_9 and var_78_9.absorber
				local var_78_11 = var_78_9 and var_78_9.victim

				var_0_3._upgradeTriggered = false
				var_0_3._upgradeSlot = nil
				arg_78_4._imprintModalResolve = {
					action = "confirm",
					absorber = var_78_10,
					victim = var_78_11,
					slot = var_78_8
				}
				arg_78_4.imprintModal = nil

				if var_78_11 and arg_78_4.dropRoster then
					arg_78_4:dropRoster(var_78_11)
				end
			end

			if var_0_3 and var_0_3._confirmTriggered then
				local var_78_12 = var_0_3._confirmSlot or 1
				local var_78_13 = var_0_3._confirmAction or "insert"
				local var_78_14 = arg_78_4.imprintModal
				local var_78_15 = var_78_14 and var_78_14.absorber
				local var_78_16 = var_78_14 and var_78_14.victim

				var_0_3._confirmTriggered = false
				var_0_3._confirmSlot = nil
				var_0_3._confirmAction = nil
				arg_78_4._imprintModalResolve = {
					absorber = var_78_15,
					victim = var_78_16,
					action = var_78_13,
					slot = var_78_12
				}
				arg_78_4.imprintModal = nil

				if var_78_16 and arg_78_4.dropRoster then
					arg_78_4:dropRoster(var_78_16)
				end
			end

			if var_0_3 and var_0_3._changeTriggered then
				local var_78_17 = var_0_3._changeSlot or 1
				local var_78_18 = arg_78_4.imprintModal
				local var_78_19 = var_78_18 and var_78_18.absorber
				local var_78_20 = var_78_18 and var_78_18.victim

				var_0_3._changeTriggered = false
				var_0_3._changeSlot = nil
				arg_78_4._imprintModalResolve = {
					action = "replace",
					absorber = var_78_19,
					victim = var_78_20,
					slot = var_78_17
				}
				arg_78_4.imprintModal = nil

				if var_78_20 and arg_78_4.dropRoster then
					arg_78_4:dropRoster(var_78_20)
				end
			end
		end

		local var_78_21 = arg_78_4 and arg_78_4.mode or nil

		if arg_78_0._lastMode ~= var_78_21 then
			local var_78_22 = arg_78_0._lastMode

			arg_78_0._lastMode = var_78_21

			local var_78_23 = false

			if arg_78_0.locked and arg_78_0.target and arg_78_0.target.ref then
				if var_78_22 ~= "battle" and var_78_21 == "battle" then
					if arg_78_0.target.kind == "roster" then
						local var_78_24 = arg_78_0.target.ref.allyRef

						if not var_78_24 and arg_78_4.allies then
							local var_78_25

							if arg_78_4.rosterUnits then
								for iter_78_2, iter_78_3 in ipairs(arg_78_4.rosterUnits) do
									if iter_78_3 == arg_78_0.target.ref then
										var_78_25 = iter_78_2

										break
									end
								end
							end

							if var_78_25 then
								for iter_78_4, iter_78_5 in ipairs(arg_78_4.allies) do
									if iter_78_5.rosterIndex == var_78_25 then
										var_78_24 = iter_78_5

										break
									end
								end
							end
						end

						if var_78_24 then
							arg_78_0.target = {
								kind = "ally",
								ref = var_78_24,
								sym = arg_78_0.target.sym,
								x = var_78_24.x,
								y = var_78_24.y
							}
							arg_78_0.lockedTarget = arg_78_0.target
							var_78_23 = true
						end
					end
				elseif var_78_22 == "battle" and var_78_21 ~= "battle" then
					var_78_23 = false
				end
			end

			if not var_78_23 then
				arg_78_0.locked = false
				arg_78_0.target = nil
				arg_78_0.lockedTarget = nil
				arg_78_0.state = "IDLE"
				arg_78_0.fade = 0
			end

			arg_78_0.candidate = nil
			arg_78_0._predActive = false
			arg_78_0._predTarget = nil
			arg_78_0._predTargetSym = nil
			arg_78_0._heldRef = nil
			arg_78_0._heldSym = nil
			arg_78_0.crossPrevLayout = nil
			arg_78_0.crossPrevInfo = nil
			arg_78_0.crossT = 0
		end

		if arg_78_0.crossT and arg_78_0.crossPrevLayout then
			arg_78_0.crossT = arg_78_0.crossT + arg_78_1

			if arg_78_0.crossT >= var_0_42 then
				arg_78_0.crossPrevLayout = nil
				arg_78_0.crossPrevInfo = nil
				arg_78_0.crossT = 0
			end
		end

		if arg_78_4 and (arg_78_4.gameOver or arg_78_4.victoryPending and arg_78_4.victoryPending.active or arg_78_4.imprintModal and arg_78_4.imprintModal.active) or arg_59_0 and arg_59_0.pauseOverlayState and arg_59_0.pauseOverlayState.active then
			local var_78_26 = arg_78_4 and arg_78_4.gameOver and arg_59_0 and arg_59_0._dpsHoverTarget

			if var_78_26 and require("src.game.combat").battle_results.isRosterUnit(var_78_26.ref) then
				local var_78_27 = var_78_26.ref
				local var_78_28 = {
					kind = var_78_26.kind or "roster",
					ref = var_78_27,
					sym = var_78_26.sym or var_78_27.sym,
					x = var_78_26.x or arg_78_0.mouseX,
					y = var_78_26.y or arg_78_0.mouseY
				}

				if not arg_78_0.target or arg_78_0.target.ref ~= var_78_27 or arg_78_0.target.kind ~= var_78_28.kind then
					arg_78_0.target = var_78_28
					arg_78_0.pinSide = nil
				else
					arg_78_0.target.x = var_78_28.x
					arg_78_0.target.y = var_78_28.y
					arg_78_0.target.sym = var_78_28.sym
				end

				arg_78_0.locked = false
				arg_78_0.candidate = var_78_28
				arg_78_0.state = "VISIBLE"
				arg_78_0.fade = 1
				arg_78_0.hoverT = 0
				arg_78_0.hideT = 0

				var_59_4(arg_78_0)

				return
			end

			if arg_78_4 and arg_78_4.gameOver and arg_59_0 and arg_59_0._gameOverBestUnitRect then
				local var_78_29 = arg_59_0._gameOverBestUnitRect
				local var_78_30 = arg_78_0.mouseX
				local var_78_31 = arg_78_0.mouseY

				if require("src.game.combat").battle_results.isRosterUnit(var_78_29.unit) and var_78_30 >= var_78_29.x and var_78_30 <= var_78_29.x + var_78_29.w and var_78_31 >= var_78_29.y and var_78_31 <= var_78_29.y + var_78_29.h then
					local var_78_32 = true

					if var_78_29.imageData and var_78_29.quad and var_78_29.sx and var_78_29.sy then
						local var_78_33 = math.floor((var_78_30 - var_78_29.x) / var_78_29.sx)
						local var_78_34 = math.floor((var_78_31 - var_78_29.y) / var_78_29.sy)
						local var_78_35, var_78_36, var_78_37, var_78_38 = var_78_29.quad:getViewport()
						local var_78_39 = var_78_35 + var_78_33
						local var_78_40 = var_78_36 + var_78_34

						if var_78_39 >= 0 and var_78_40 >= 0 and var_78_39 < var_78_35 + var_78_37 and var_78_40 < var_78_36 + var_78_38 then
							local var_78_41, var_78_42, var_78_43, var_78_44, var_78_45 = pcall(function()
								return var_78_29.imageData:getPixel(var_78_39, var_78_40)
							end)

							if var_78_41 then
								var_78_32 = (var_78_45 or 0) > 0.05
							end
						else
							var_78_32 = false
						end
					end

					if not var_78_32 then
						arg_78_0.locked = false
						arg_78_0.state = "IDLE"
						arg_78_0.fade = 0
						arg_78_0.target = nil
						arg_78_0.candidate = nil
					else
						local var_78_46 = var_78_29.unit
						local var_78_47 = {
							kind = "roster",
							ref = var_78_46,
							sym = var_78_46.sym,
							x = var_78_29.x + var_78_29.w * 0.5,
							y = var_78_29.y + var_78_29.h * 0.5
						}

						if not arg_78_0.target or arg_78_0.target.ref ~= var_78_46 then
							arg_78_0.target = var_78_47
							arg_78_0.pinSide = nil

							var_59_4(arg_78_0)
						end

						arg_78_0.state = "VISIBLE"
						arg_78_0.fade = 1

						return
					end
				end
			end

			arg_78_0.locked = false
			arg_78_0.state = "IDLE"
			arg_78_0.fade = 0
			arg_78_0.hoverT = 0
			arg_78_0.hideT = 0
			arg_78_0.pinSide = nil
			arg_78_0.target = nil
			arg_78_0.candidate = nil
			arg_78_0._predActive = false
			arg_78_0._predSrcSym = nil
			arg_78_0._predTarget = nil
			arg_78_0._predTargetSym = nil
			arg_78_0._heldRef = nil
			arg_78_0._heldSym = nil
			arg_78_0.crossPrevLayout = nil
			arg_78_0.crossPrevInfo = nil
			arg_78_0.crossT = 0
		elseif arg_78_0.locked then
			if arg_78_0.target and (arg_78_0.target.kind == "ally" or arg_78_0.target.kind == "enemy") and arg_78_0.target.ref then
				local var_78_48 = arg_78_0.target.ref

				if var_78_48.alive == false or var_78_48.dying == true then
					arg_78_0.locked = false
					arg_78_0.target = nil

					if arg_78_0.state ~= "IDLE" then
						arg_78_0.state = "PENDING_HIDE"
						arg_78_0.hideT = 0
					end
				end
			end

			if arg_78_0.locked and arg_78_0.target then
				var_59_4(arg_78_0)

				if arg_78_0.target.ref and arg_78_0.target.ref.x and arg_78_0.target.ref.y then
					arg_78_0.target.x = arg_78_0.target.ref.x
					arg_78_0.target.y = require("src.game.combat").wooden_watchtower.visualY(arg_78_0.target.ref)
				end
			end

			if arg_78_4 and arg_78_4.classSelect and not arg_78_4.classSelect.resolving then
				arg_78_0.candidate = nil
				arg_78_0.hoverT = 0
				arg_78_0._predActive = false
				arg_78_0._predSrcSym = nil
				arg_78_0._predTarget = nil
				arg_78_0._predTargetSym = nil
			else
				arg_78_0.candidate = var_59_2(arg_78_4, arg_78_0.mouseX, arg_78_0.mouseY, arg_78_0.target)
			end
		elseif arg_78_4 and arg_78_4.classSelect and not arg_78_4.classSelect.resolving then
			arg_78_0.locked = false
			arg_78_0.state = "IDLE"
			arg_78_0.fade = 0
			arg_78_0.hoverT = 0
			arg_78_0.hideT = 0
			arg_78_0.pinSide = nil
			arg_78_0.target = nil
			arg_78_0.candidate = nil
			arg_78_0._predActive = false
			arg_78_0._predSrcSym = nil
			arg_78_0._predTarget = nil
			arg_78_0._predTargetSym = nil
			arg_78_0._heldRef = nil
			arg_78_0._heldSym = nil
			arg_78_0.crossPrevLayout = nil
			arg_78_0.crossPrevInfo = nil
			arg_78_0.crossT = 0
		elseif arg_78_0.ui and (arg_78_0.ui._shopMode or arg_78_0.ui._stoneMode) then
			arg_78_0.locked = false
			arg_78_0.state = "IDLE"
			arg_78_0.fade = 0
			arg_78_0.hoverT = 0
			arg_78_0.hideT = 0
			arg_78_0.pinSide = nil
			arg_78_0.target = nil
			arg_78_0.candidate = nil
			arg_78_0._predActive = false
			arg_78_0._predSrcSym = nil
			arg_78_0._predTarget = nil
			arg_78_0._predTargetSym = nil
			arg_78_0._heldRef = nil
			arg_78_0._heldSym = nil
			arg_78_0.crossPrevLayout = nil
			arg_78_0.crossPrevInfo = nil
			arg_78_0.crossT = 0
		else
			arg_78_0.candidate = var_59_2(arg_78_4, arg_78_0.mouseX, arg_78_0.mouseY, arg_78_0.target)
		end

		if not arg_78_0.locked and arg_78_0.ui and arg_78_0.ui._dpsHoverTarget then
			local var_78_49 = arg_78_0.ui._dpsHoverTarget

			if var_78_49 and var_78_49.ref then
				arg_78_0.candidate = {
					kind = var_78_49.kind or "roster",
					ref = var_78_49.ref,
					sym = var_78_49.sym or var_78_49.ref.sym,
					x = var_78_49.ref.x or var_78_49.x or arg_78_0.mouseX,
					y = var_78_49.ref.y or var_78_49.y or arg_78_0.mouseY
				}
			end
		end

		if arg_78_4 and arg_78_4.mode ~= "battle" then
			if arg_78_4.absorbMode == false then
				arg_78_0._predActive = false
				arg_78_0._predSrcSym = nil
				arg_78_0._predTarget = nil
				arg_78_0._predTargetSym = nil
			else
				local var_78_50
				local var_78_51

				if arg_78_0._heldRef and arg_78_0._showConfirm then
					arg_78_0._showConfirm = false
					arg_78_0._confirmT = 0
					arg_78_0.state = "IDLE"
					arg_78_0.target = nil
					arg_78_0.fade = 0
				end

				if arg_78_0._heldRef and not arg_78_0._heldRef.isGuardianGolem and not arg_78_0._heldRef.isShadowMinion and arg_78_0._heldRef.absorbLocked ~= true then
					local var_78_52 = {}

					if arg_78_4.areRosterSpritesTouching then
						for iter_78_6, iter_78_7 in ipairs(arg_78_4.rosterUnits) do
							if iter_78_7 and iter_78_7 ~= arg_78_0._heldRef and not iter_78_7.isShadowMinion then
								local var_78_53 = arg_78_4.rosterSymbols[iter_78_6]

								if arg_78_4:areRosterSpritesTouching(arg_78_0._heldRef, arg_78_0._heldSym, iter_78_7, var_78_53) then
									local var_78_54 = (iter_78_7.y or 0) - (arg_78_0._heldRef.y or 0)
									local var_78_55 = (iter_78_7.x or 0) - (arg_78_0._heldRef.x or 0)

									table.insert(var_78_52, {
										ref = iter_78_7,
										sym = var_78_53,
										dy = var_78_54,
										dx = var_78_55,
										i = iter_78_6
									})
								end
							end
						end
					end

					if #var_78_52 > 0 then
						table.sort(var_78_52, function(arg_80_0, arg_80_1)
							local var_80_0 = arg_80_0.dy >= 0 and 1 or 0
							local var_80_1 = arg_80_1.dy >= 0 and 1 or 0

							if var_80_0 ~= var_80_1 then
								return var_80_1 < var_80_0
							end

							local var_80_2 = math.abs(arg_80_0.dy)
							local var_80_3 = math.abs(arg_80_1.dy)

							if var_80_2 ~= var_80_3 then
								return var_80_2 < var_80_3
							end

							local var_80_4 = math.abs(arg_80_0.dx)
							local var_80_5 = math.abs(arg_80_1.dx)

							if var_80_4 ~= var_80_5 then
								return var_80_4 < var_80_5
							end

							return arg_80_0.i < arg_80_1.i
						end)

						var_78_50 = var_78_52[1].ref
						var_78_51 = var_78_52[1].sym
					end
				end

				local var_78_56 = rawget(_G, "Tutorial")

				if var_78_56 and var_78_56.isAllowedAbsorbPair and (var_78_56.isAbsorbDragStep and var_78_56.isAbsorbDragStep() or var_78_56.isFreeAbsorbStep and var_78_56.isFreeAbsorbStep()) and var_78_50 and arg_78_0._heldRef and not var_78_56.isAllowedAbsorbPair(arg_78_0._heldRef, var_78_50) then
					var_78_50 = nil
					var_78_51 = nil
				end

				local var_78_57 = arg_78_0._heldRef
				local var_78_58 = arg_78_0._heldSym

				arg_78_0._predOver = arg_78_0._predOver or 0
				arg_78_0._predOut = arg_78_0._predOut or 0
				arg_78_0._predActive = arg_78_0._predActive or false

				if var_78_50 and var_78_57 then
					if not arg_78_0._predTarget or arg_78_0._predTarget ~= var_78_50 then
						arg_78_0._predOver = 0
					end

					arg_78_0._predTarget = var_78_50
					arg_78_0._predTargetSym = var_78_51
					arg_78_0._predOver = arg_78_0._predOver + arg_78_1
					arg_78_0._predOut = 0

					if not arg_78_0._predActive and arg_78_0._predOver >= 0.2 then
						arg_78_0._predActive = true
						arg_78_0._predSrcSym = var_78_58
						arg_78_0.crossPrevLayout = arg_78_0.cache and arg_78_0.cache.layout or nil
						arg_78_0.crossPrevInfo = arg_78_0.cache and arg_78_0.cache.info or nil
						arg_78_0.crossT = 0
						arg_78_0.target = {
							kind = "roster",
							ref = var_78_50,
							sym = var_78_51,
							x = var_78_50.x,
							y = var_78_50.y
						}

						var_59_4(arg_78_0)
					end
				else
					if arg_78_0._predActive then
						local var_78_59 = arg_78_0._heldRef and {
							kind = "roster",
							ref = arg_78_0._heldRef,
							sym = arg_78_0._heldSym,
							x = arg_78_0._heldRef.x,
							y = arg_78_0._heldRef.y
						} or arg_78_0.locked and arg_78_0.lockedTarget

						if var_78_59 and arg_78_0.target and arg_78_0.target.ref ~= var_78_59.ref then
							arg_78_0.crossPrevLayout = arg_78_0.cache and arg_78_0.cache.layout or nil
							arg_78_0.crossPrevInfo = arg_78_0.cache and arg_78_0.cache.info or nil
							arg_78_0.crossT = 0
							arg_78_0.target = var_78_59

							var_59_4(arg_78_0)
						end

						arg_78_0._predOut = arg_78_0._predOut + arg_78_1

						if arg_78_0._predOut >= 0.1 then
							arg_78_0._predActive = false
							arg_78_0._predSrcSym = nil

							local var_78_60 = arg_78_0._heldRef and {
								kind = "roster",
								ref = arg_78_0._heldRef,
								sym = arg_78_0._heldSym,
								x = arg_78_0._heldRef.x,
								y = arg_78_0._heldRef.y
							} or arg_78_0.locked and arg_78_0.lockedTarget

							if var_78_60 and (not arg_78_0.target or arg_78_0.target.ref ~= var_78_60.ref) then
								arg_78_0.crossPrevLayout = nil
								arg_78_0.crossPrevInfo = nil
								arg_78_0.crossT = 0
								arg_78_0.target = var_78_60

								var_59_4(arg_78_0)
							end
						end
					end

					arg_78_0._predOver = 0
					arg_78_0._predTarget = nil
					arg_78_0._predTargetSym = nil
				end

				if arg_78_0._predActive and arg_78_0._predTarget then
					arg_78_0.candidate = {
						kind = "roster",
						ref = arg_78_0._predTarget,
						sym = arg_78_0._predTargetSym,
						x = arg_78_0._predTarget.x,
						y = arg_78_0._predTarget.y
					}
				end

				if arg_78_0._predActive and (not arg_78_0._heldRef or not arg_78_0._heldRef._held) then
					arg_78_0._predActive = false
					arg_78_0._predSrcSym = nil

					if arg_78_0.locked and arg_78_0.lockedTarget then
						arg_78_0.target = arg_78_0.lockedTarget
						arg_78_0.state = "VISIBLE"
						arg_78_0.fade = 1

						var_59_4(arg_78_0)
					else
						arg_78_0.state = "IDLE"
						arg_78_0.target = nil
						arg_78_0.fade = 0
					end
				end
			end
		else
			arg_78_0._predActive = false
			arg_78_0._showConfirm = false
			arg_78_0._predSrcSym = nil
			arg_78_0._predTarget = nil
			arg_78_0._predTargetSym = nil
		end

		if arg_78_0.candidate then
			arg_78_0.lastSelectedRef = arg_78_0.candidate.ref
		end

		local var_78_61 = arg_78_0.candidate
		local var_78_62 = arg_78_0._lastHoverRef
		local var_78_63 = arg_78_0._lastHoverKind

		if not (arg_78_0._heldRef and arg_78_0._heldRef._held or arg_78_0._heldRef ~= nil) and var_78_61 and var_78_61.ref and (var_78_61.ref ~= var_78_62 or var_78_61.kind ~= var_78_63) then
			local var_78_64 = arg_78_4 and arg_78_4.assets and arg_78_4.assets.audio and arg_78_4.assets.audio.unitHover

			if var_78_64 then
				local var_78_65 = arg_78_0.ui and arg_78_0.ui.menuSettings and arg_78_0.ui.menuSettings.sfxVolume or 1
				local var_78_66 = arg_78_4.assets and arg_78_4.assets.audioBaseGain and arg_78_4.assets.audioBaseGain.unitHover or 1

				if var_78_64.setVolume then
					var_78_64:setVolume(var_78_65 * var_78_66)
				end

				if var_78_64.isPlaying and var_78_64:isPlaying() then
					var_78_64:stop()
				end

				var_78_64:play()
			end
		end

		if var_78_61 and var_78_61.ref then
			arg_78_0._lastHoverRef = var_78_61.ref
			arg_78_0._lastHoverKind = var_78_61.kind
		else
			arg_78_0._lastHoverRef = nil
			arg_78_0._lastHoverKind = nil
		end

		if arg_78_0.target and arg_78_0.target.ref then
			local var_78_67 = arg_78_4 and arg_78_4.mode == "battle"
			local var_78_68 = arg_78_4 and arg_78_4.gameOver and arg_78_0.target.kind == "ally"
			local var_78_69 = arg_78_4 and arg_78_4.sandboxMode == true and arg_78_0.target.kind == "enemy"

			if var_78_67 and arg_78_0.target.kind == "roster" or not var_78_67 and not var_78_68 and (arg_78_0.target.kind == "ally" or arg_78_0.target.kind == "enemy" and not var_78_69) then
				arg_78_0.locked = false
				arg_78_0.target = nil
				arg_78_0.lockedTarget = nil
				arg_78_0.state = "IDLE"
				arg_78_0.fade = 0
			end
		end

		if arg_78_0.locked then
			if arg_78_0.state == "IDLE" then
				arg_78_0.state = "VISIBLE"
				arg_78_0.fade = 1
			end

			if arg_78_0.fade < 1 then
				arg_78_0.fade = math.min(1, arg_78_0.fade + arg_78_1 / var_0_41)
			end

			if not arg_78_0._predActive then
				if arg_78_0.lockedTarget and (not arg_78_0.target or arg_78_0.target.ref ~= arg_78_0.lockedTarget.ref) then
					arg_78_0.target = arg_78_0.lockedTarget
					arg_78_0.pinSide = nil

					var_59_4(arg_78_0)
				end

				if arg_78_0.target and arg_78_0.target.ref then
					arg_78_0.target.x = arg_78_0.target.ref.x
					arg_78_0.target.y = require("src.game.combat").wooden_watchtower.visualY(arg_78_0.target.ref)
				end
			end

			var_59_4(arg_78_0)
		elseif arg_78_0.state == "IDLE" then
			arg_78_0.state = "HOVERING"
			arg_78_0.hoverT = 0
		elseif arg_78_0.state == "HOVERING" then
			if not arg_78_0.candidate then
				arg_78_0.state = "IDLE"
				arg_78_0.hoverT = 0
			elseif not arg_78_0.target or not var_59_3(arg_78_0.candidate, arg_78_0.target) then
				arg_78_0.hoverT = arg_78_0.hoverT + arg_78_1

				if arg_78_0.hoverT >= var_0_39 then
					arg_78_0.target = arg_78_0.candidate
					arg_78_0.state = "VISIBLE"
					arg_78_0.fade = 0
					arg_78_0.pinSide = nil

					var_59_4(arg_78_0)
				end
			end
		elseif arg_78_0.state == "VISIBLE" then
			if arg_78_0.fade < 1 then
				arg_78_0.fade = math.min(1, arg_78_0.fade + arg_78_1 / var_0_41)
			end

			if not arg_78_0.candidate then
				arg_78_0.state = "PENDING_HIDE"
				arg_78_0.hideT = 0
			elseif not var_59_3(arg_78_0.candidate, arg_78_0.target) then
				arg_78_0.crossPrevLayout = arg_78_0.cache and arg_78_0.cache.layout or nil
				arg_78_0.crossPrevInfo = arg_78_0.cache and arg_78_0.cache.info or nil
				arg_78_0.crossT = 0
				arg_78_0.target = arg_78_0.candidate
				arg_78_0.pinSide = nil

				var_59_4(arg_78_0)
			else
				var_59_4(arg_78_0)
			end
		elseif arg_78_0.state == "PENDING_HIDE" then
			arg_78_0.hideT = arg_78_0.hideT + arg_78_1

			if arg_78_0.candidate and var_59_3(arg_78_0.candidate, arg_78_0.target) then
				arg_78_0.state = "VISIBLE"
				arg_78_0.fade = 1
			elseif arg_78_0.candidate and not var_59_3(arg_78_0.candidate, arg_78_0.target) then
				arg_78_0.crossPrevLayout = arg_78_0.cache and arg_78_0.cache.layout or nil
				arg_78_0.crossPrevInfo = arg_78_0.cache and arg_78_0.cache.info or nil
				arg_78_0.crossT = 0
				arg_78_0.target = arg_78_0.candidate
				arg_78_0.state = "VISIBLE"
				arg_78_0.pinSide = nil

				var_59_4(arg_78_0)
			elseif arg_78_0.hideT >= var_0_40 then
				if arg_78_0.fade > 0 then
					arg_78_0.fade = math.max(0, arg_78_0.fade - arg_78_1 / var_0_41)

					if arg_78_0.fade <= 0 then
						arg_78_0.state = "IDLE"
						arg_78_0.target = nil
						arg_78_0.pinSide = nil
					end
				else
					arg_78_0.state = "IDLE"
					arg_78_0.target = nil
					arg_78_0.pinSide = nil
				end
			else
				arg_78_0.fade = 1
			end
		end
	end

	function var_59_0.beginFrame(arg_81_0)
		arg_81_0._iconTooltipFrame = (arg_81_0._iconTooltipFrame or 0) + 1
		arg_81_0._outlineDrawnThisFrame = false
		arg_81_0._selectedOutlineDrawnThisFrame = false
		arg_81_0._statIconHover = nil
	end

	function var_59_0.iconTooltipReveal(arg_82_0, arg_82_1, arg_82_2, arg_82_3)
		local var_82_0 = arg_82_0.ui and arg_82_0.ui.synergyWindow and arg_82_0.ui.synergyWindow.tooltip or {}
		local var_82_1 = love.timer and love.timer.getTime and love.timer.getTime() or os.clock()
		local var_82_2 = arg_82_0._iconTooltipFrame or 0
		local var_82_3 = arg_82_0.battlefield and arg_82_0.battlefield.classSelect or arg_82_0.target and arg_82_0.target.ref

		arg_82_0._iconTooltipAnim = arg_82_0._iconTooltipAnim or {}

		local var_82_4 = arg_82_0._iconTooltipAnim[arg_82_1]

		if not var_82_4 or var_82_4.key ~= arg_82_2 or var_82_4.owner ~= var_82_3 or var_82_4.frame < var_82_2 - 1 then
			var_82_4 = {
				key = arg_82_2,
				owner = var_82_3,
				t0 = var_82_1
			}
			arg_82_0._iconTooltipAnim[arg_82_1] = var_82_4
		end

		var_82_4.frame = var_82_2

		local var_82_5 = math.max(0.001, tonumber(var_82_0.fadeTime) or var_0_41)
		local var_82_6 = 1 - (1 - math.max(0, math.min(1, (var_82_1 - var_82_4.t0 - (arg_82_3 or 0)) / var_82_5)))^3

		return var_82_6, (1 - var_82_6) * (tonumber(var_82_0.risePx) or 2)
	end

	function var_59_0.isHighlighted(arg_83_0, arg_83_1, arg_83_2)
		if arg_83_2 and arg_83_2.spawnHold then
			return false
		end

		local var_83_0 = arg_83_0.battlefield

		if var_83_0 and var_83_0.imprintModal and var_83_0.imprintModal.active then
			return false
		end

		if arg_83_0.ui and arg_83_0.ui.pauseOverlayState and arg_83_0.ui.pauseOverlayState.active then
			return false
		end

		local var_83_1 = arg_83_0.target and arg_83_0.target.kind == arg_83_1 and arg_83_0.target.ref == arg_83_2
		local var_83_2 = arg_83_0.candidate and arg_83_0.candidate.kind == arg_83_1 and arg_83_0.candidate.ref == arg_83_2
		local var_83_3 = arg_83_1 == "roster" and arg_83_0._heldRef == arg_83_2
		local var_83_4 = arg_83_1 == "roster" and arg_83_0._predTarget == arg_83_2

		return var_83_1 or var_83_2 or var_83_3 or var_83_4
	end

	local function var_59_5(arg_84_0)
		local var_84_0 = love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_84_1 = 0.5 + 0.5 * math.sin(var_84_0 * 8)

		return 0.68 + 0.32 * (var_84_1 * var_84_1)
	end

	local function var_59_6(arg_85_0)
		local var_85_0 = love.timer and love.timer.getTime and love.timer.getTime() or 0
		local var_85_1 = 0.5 + 0.5 * math.sin(var_85_0 * 8)

		return var_85_1 * var_85_1
	end

	local function var_59_7(arg_86_0, arg_86_1)
		if not arg_86_1 then
			return
		end

		local var_86_0 = arg_86_0.area

		if not var_86_0 then
			return
		end

		local var_86_1 = math.floor(12 * var_59_0.ui.scale)
		local var_86_2 = var_86_0.x + var_86_1
		local var_86_3 = var_86_0.y + var_86_1 + math.floor(28 * var_59_0.ui.scale)
		local var_86_4 = var_86_0.w - var_86_1 * 2
		local var_86_5 = var_86_0.h - var_86_1 * 2 - math.floor(28 * var_59_0.ui.scale)
		local var_86_6 = 32
		local var_86_7

		if arg_86_0.mode == "battle" then
			if var_59_0.ui.battle and var_59_0.ui.battle.allySize32 and var_59_0.ui.battle.allySize32 > 0 then
				var_86_7 = math.max(var_86_6, math.floor(var_59_0.ui.battle.allySize32 / var_86_6) * var_86_6)
			else
				local var_86_8 = math.floor(math.min(var_86_4, var_86_5) * 0.12 * (var_59_0.ui.battle and var_59_0.ui.battle.unitScale or 1))

				var_86_7 = var_86_6 * math.max(1, math.ceil(var_86_8 / var_86_6))
			end
		elseif var_59_0.ui.battle and var_59_0.ui.battle.allySize32 and var_59_0.ui.battle.allySize32 > 0 then
			var_86_7 = math.max(var_86_6, math.floor(var_59_0.ui.battle.allySize32 / var_86_6) * var_86_6)
		else
			local var_86_9 = math.floor(math.min(var_86_4, var_86_5) * 0.12 * (var_59_0.ui.battle and var_59_0.ui.battle.rosterScale or 1))

			var_86_7 = var_86_6 * math.max(1, math.ceil(var_86_9 / var_86_6))
		end

		local var_86_10 = arg_86_0.assets
		local var_86_11
		local var_86_12 = "idle"
		local var_86_13 = 1

		if (arg_86_0.mode == "battle" or arg_86_0.gameOver) and arg_86_1.kind == "ally" and arg_86_1.ref then
			if arg_86_1.ref.sym == "Joker" or arg_86_1.ref.sym == "J" then
				local var_86_14 = tonumber(arg_86_1.ref.rank or arg_86_1.ref.star or 1) or 1

				var_86_11 = var_86_10 and var_86_10.units and (arg_86_1.ref.subclassKey and var_86_10.units[arg_86_1.ref.subclassKey] or arg_86_1.ref.subclassName and var_86_10.units[arg_86_1.ref.subclassName] or arg_86_1.ref.subclass and var_86_10.units[arg_86_1.ref.subclass] or var_86_14 >= 3 and var_86_10.units.Illusionist or var_86_14 >= 2 and var_86_10.units.Trickster or var_86_10.units.Jester or var_86_10.units.Joker or var_86_10.units.J)
			elseif arg_86_1.ref.sym == "W" then
				if var_86_10 and var_86_10.units then
					if arg_86_1.ref.subclassKey and var_86_10.units[arg_86_1.ref.subclassKey] then
						var_86_11 = var_86_10.units[arg_86_1.ref.subclassKey]
					elseif arg_86_1.ref.subclassName and var_86_10.units[arg_86_1.ref.subclassName] then
						var_86_11 = var_86_10.units[arg_86_1.ref.subclassName]
					else
						local var_86_15 = arg_86_1.ref.rank or arg_86_1.ref.star or 1

						if var_86_15 >= 3 and var_86_10.units.MiniSwordMan03 then
							var_86_11 = var_86_10.units.MiniSwordMan03
						elseif var_86_15 >= 2 and var_86_10.units.MiniSwordMan02 then
							var_86_11 = var_86_10.units.MiniSwordMan02
						else
							var_86_11 = var_86_10.units.MiniSwordMan
						end
					end
				end
			elseif arg_86_1.ref.sym == "A" then
				if var_86_10 and var_86_10.units then
					local var_86_16 = arg_86_1.ref.rank or arg_86_1.ref.star or 1

					if var_86_16 >= 3 and var_86_10.units.MiniArcherMan03 then
						var_86_11 = var_86_10.units.MiniArcherMan03
					elseif var_86_16 >= 2 and var_86_10.units.MiniArcherMan02 then
						var_86_11 = var_86_10.units.MiniArcherMan02
					else
						var_86_11 = var_86_10.units.MiniArcherMan
					end
				end
			elseif arg_86_1.ref.sym == "S" then
				if var_86_10 and var_86_10.units then
					local var_86_17 = arg_86_1.ref.rank or arg_86_1.ref.star or 1

					if var_86_17 >= 3 and var_86_10.units.MiniSpearMan03 then
						var_86_11 = var_86_10.units.MiniSpearMan03
					elseif var_86_17 >= 2 and var_86_10.units.MiniSpearMan02 then
						var_86_11 = var_86_10.units.MiniSpearMan02
					else
						var_86_11 = var_86_10.units.MiniSpearMan
					end
				end
			elseif arg_86_1.ref.sym == "H" and var_86_10 and var_86_10.units then
				if arg_86_1.ref.subclassKey and var_86_10.units[arg_86_1.ref.subclassKey] then
					var_86_11 = var_86_10.units[arg_86_1.ref.subclassKey]
				elseif arg_86_1.ref.subclassName and var_86_10.units[arg_86_1.ref.subclassName] then
					var_86_11 = var_86_10.units[arg_86_1.ref.subclassName]
				elseif arg_86_1.ref.subclass and var_86_10.units[arg_86_1.ref.subclass] then
					var_86_11 = var_86_10.units[arg_86_1.ref.subclass]
				else
					local var_86_18 = arg_86_1.ref.rank or arg_86_1.ref.star or 1
					local var_86_19 = var_0_6(arg_86_1.ref.grade)

					if var_86_18 <= 1 and var_86_19 == "advanced" and var_86_10.units.철기병 then
						var_86_11 = var_86_10.units.철기병
					elseif var_86_18 >= 3 and var_86_10.units.MiniHorseMan03 then
						var_86_11 = var_86_10.units.MiniHorseMan03
					elseif var_86_18 >= 2 and var_86_10.units.돌격병 then
						var_86_11 = var_86_10.units.돌격병
					else
						var_86_11 = var_86_10.units.기병
					end
				end
			end

			if arg_86_1.ref.anim then
				var_86_12 = arg_86_1.ref.anim.name or "idle"
				var_86_13 = arg_86_1.ref.anim.frame or 1
			end
		elseif arg_86_0.mode == "battle" and arg_86_1.kind == "enemy" and arg_86_1.ref then
			local var_86_20 = arg_86_1.ref

			if var_86_10 and var_86_10.units then
				local var_86_21 = tostring(var_86_20.kind or "")

				var_86_11 = var_86_20.skin and var_86_10.units[var_86_20.skin] or var_86_21 ~= "" and var_86_10.units[var_86_21] or var_86_21 ~= "" and var_86_10.units["Mini" .. var_86_21] or nil
			end

			if var_86_20.anim then
				var_86_12 = var_86_20.anim.name or "idle"
				var_86_13 = var_86_20.anim.frame or 1
			end
		else
			local var_86_22 = arg_86_1.sym

			if var_86_22 == "Joker" or var_86_22 == "J" then
				local var_86_23 = tonumber(arg_86_1.ref and (arg_86_1.ref.rank or arg_86_1.ref.star) or 1) or 1

				var_86_11 = var_86_10 and var_86_10.units and (arg_86_1.ref and arg_86_1.ref.subclassKey and var_86_10.units[arg_86_1.ref.subclassKey] or arg_86_1.ref and arg_86_1.ref.subclassName and var_86_10.units[arg_86_1.ref.subclassName] or arg_86_1.ref and arg_86_1.ref.subclass and var_86_10.units[arg_86_1.ref.subclass] or var_86_23 >= 3 and var_86_10.units.Illusionist or var_86_23 >= 2 and var_86_10.units.Trickster or var_86_10.units.Jester or var_86_10.units.Joker or var_86_10.units.J)
			elseif var_86_22 == "W" then
				if var_86_10 and var_86_10.units then
					if arg_86_1.ref and arg_86_1.ref.subclassKey and var_86_10.units[arg_86_1.ref.subclassKey] then
						var_86_11 = var_86_10.units[arg_86_1.ref.subclassKey]
					elseif arg_86_1.ref and arg_86_1.ref.subclassName and var_86_10.units[arg_86_1.ref.subclassName] then
						var_86_11 = var_86_10.units[arg_86_1.ref.subclassName]
					else
						local var_86_24 = arg_86_1.ref and (arg_86_1.ref.rank or arg_86_1.ref.star) or 1

						if var_86_24 >= 3 and var_86_10.units.MiniSwordMan03 then
							var_86_11 = var_86_10.units.MiniSwordMan03
						elseif var_86_24 >= 2 and var_86_10.units.MiniSwordMan02 then
							var_86_11 = var_86_10.units.MiniSwordMan02
						else
							var_86_11 = var_86_10.units.MiniSwordMan
						end
					end
				end
			elseif var_86_22 == "A" then
				if var_86_10 and var_86_10.units then
					local var_86_25 = arg_86_1.ref and (arg_86_1.ref.rank or arg_86_1.ref.star) or 1

					if var_86_25 >= 3 and var_86_10.units.MiniArcherMan03 then
						var_86_11 = var_86_10.units.MiniArcherMan03
					elseif var_86_25 >= 2 and var_86_10.units.MiniArcherMan02 then
						var_86_11 = var_86_10.units.MiniArcherMan02
					else
						var_86_11 = var_86_10.units.MiniArcherMan
					end
				end
			elseif var_86_22 == "S" then
				if var_86_10 and var_86_10.units then
					local var_86_26 = arg_86_1.ref and (arg_86_1.ref.rank or arg_86_1.ref.star) or 1

					if var_86_26 >= 3 and var_86_10.units.MiniSpearMan03 then
						var_86_11 = var_86_10.units.MiniSpearMan03
					elseif var_86_26 >= 2 and var_86_10.units.MiniSpearMan02 then
						var_86_11 = var_86_10.units.MiniSpearMan02
					else
						var_86_11 = var_86_10.units.MiniSpearMan
					end
				end
			elseif var_86_22 == "H" then
				if var_86_10 and var_86_10.units then
					if arg_86_1.ref and arg_86_1.ref.subclassKey and var_86_10.units[arg_86_1.ref.subclassKey] then
						var_86_11 = var_86_10.units[arg_86_1.ref.subclassKey]
					elseif arg_86_1.ref and arg_86_1.ref.subclassName and var_86_10.units[arg_86_1.ref.subclassName] then
						var_86_11 = var_86_10.units[arg_86_1.ref.subclassName]
					elseif arg_86_1.ref and arg_86_1.ref.subclass and var_86_10.units[arg_86_1.ref.subclass] then
						var_86_11 = var_86_10.units[arg_86_1.ref.subclass]
					else
						local var_86_27 = arg_86_1.ref and (arg_86_1.ref.rank or arg_86_1.ref.star) or 1
						local var_86_28 = arg_86_1.ref and var_0_6(arg_86_1.ref.grade) or "normal"

						if var_86_27 <= 1 and var_86_28 == "advanced" and var_86_10.units.철기병 then
							var_86_11 = var_86_10.units.철기병
						elseif var_86_27 >= 3 and var_86_10.units.MiniHorseMan03 then
							var_86_11 = var_86_10.units.MiniHorseMan03
						elseif var_86_27 >= 2 and var_86_10.units.돌격병 then
							var_86_11 = var_86_10.units.돌격병
						else
							var_86_11 = var_86_10.units.기병
						end
					end
				end
			elseif var_86_22 == "M" then
				if var_86_10 and var_86_10.units then
					local var_86_29 = arg_86_1.ref and (arg_86_1.ref.rank or arg_86_1.ref.star) or 1
					local var_86_30 = arg_86_1.ref and var_0_6(arg_86_1.ref.grade) or "normal"

					if var_86_29 >= 3 then
						var_86_11 = var_86_10.units.MiniMage03 or var_86_10.units["현자 엘프"] or var_86_10.units.MiniMage
					elseif var_86_29 >= 2 then
						var_86_11 = var_86_10.units.MiniMage02 or var_86_10.units.암흑술사 or var_86_10.units.MiniMage
					elseif var_86_29 <= 1 and var_86_30 == "advanced" and var_86_10.units.마도사 then
						var_86_11 = var_86_10.units.마도사
					else
						var_86_11 = var_86_10.units.MiniMage or var_86_10.units.마법사
					end
				end
			elseif var_86_22 == "D" and var_86_10 and var_86_10.units then
				local var_86_31 = arg_86_1.ref and (arg_86_1.ref.rank or arg_86_1.ref.star) or 1
				local var_86_32 = arg_86_1.ref and var_0_6(arg_86_1.ref.grade) or "normal"

				if var_86_31 >= 3 then
					var_86_11 = var_86_10.units.MiniPrinceMan03 or var_86_10.units.검황 or var_86_10.units.MiniPrinceMan
				elseif var_86_31 >= 2 then
					var_86_11 = var_86_10.units.MiniPrinceMan02 or var_86_10.units.황제 or var_86_10.units.MiniPrinceMan
				elseif var_86_31 <= 1 and var_86_32 == "prism" and var_86_10.units.천사 then
					var_86_11 = var_86_10.units.천사
				elseif var_86_31 <= 1 and var_86_32 == "legendary" and var_86_10.units.셰이드 then
					var_86_11 = var_86_10.units.셰이드
				elseif var_86_31 <= 1 and var_86_32 == "rare" and var_86_10.units.수호자 then
					var_86_11 = var_86_10.units.수호자
				elseif var_86_31 <= 1 and var_86_32 == "advanced" and var_86_10.units.드루이드 then
					var_86_11 = var_86_10.units.드루이드
				else
					var_86_11 = var_86_10.units.MiniPrinceMan or var_86_10.units.결투사
				end
			end

			if arg_86_1.ref and arg_86_1.ref.anim then
				var_86_12 = arg_86_1.ref.anim.name or "idle"
				var_86_13 = arg_86_1.ref.anim.frame or 1
			end
		end

		if arg_86_1.ref and arg_86_1.ref.isGuardianGolem then
			var_86_11 = var_86_10 and var_86_10.units and var_86_10.units.GuardianGolem
			var_86_12 = arg_86_1.ref.anim and arg_86_1.ref.anim.name or "idle"
			var_86_13 = arg_86_1.ref.anim and arg_86_1.ref.anim.frame or 1
		end

		local var_86_33 = false

		if var_86_11 and var_86_11.image and var_86_11.quads and var_86_11.quads[var_86_12] then
			local var_86_34 = var_86_11.animations and var_86_11.animations[var_86_12] or var_86_11.animations and var_86_11.animations.idle or {
				frames = 1
			}
			local var_86_35 = math.max(1, math.min(var_86_13, var_86_34.frames or var_86_13))

			if var_86_11.quads[var_86_12][var_86_35] and arg_86_1 and arg_86_1.x and arg_86_1.y then
				local var_86_36 = var_0_17(arg_86_1.x - var_86_7 / 2)
				local var_86_37 = var_0_17(arg_86_1.y - var_86_7 / 2)
				local var_86_38 = var_86_7 / var_86_11.frameW
				local var_86_39 = var_86_7 / var_86_11.frameH

				if var_86_11.pixelScaleBase then
					var_86_36, var_86_37, var_86_38, var_86_39 = require("src.ui.widgets").sprite_anchor.allyTransform({
						x = arg_86_1.x,
						y = arg_86_1.y,
						sym = arg_86_1.ref and arg_86_1.ref.sym
					}, var_86_11, var_86_7, var_59_0.ui.battle)
				end

				local var_86_40 = arg_86_1.ref and arg_86_1.ref.sym or arg_86_1.sym
				local var_86_41

				if var_86_40 == "Joker" or var_86_40 == "J" then
					var_86_41 = {
						0.9411764705882353,
						0.30980392156862746,
						0.8470588235294118,
						1
					}
				end

				var_59_0:drawOutlineSprite(var_86_11, var_86_12, var_86_35, var_86_36, var_86_37, var_86_38, var_86_39, var_86_41, nil, arg_86_1.ref)

				var_86_33 = true
			end
		end

		if not var_86_33 then
			local var_86_42 = arg_86_1.ref and arg_86_1.ref.sym or arg_86_1.sym

			if var_86_42 == "Joker" or var_86_42 == "J" then
				love.graphics.setColor(0.9411764705882353, 0.30980392156862746, 0.8470588235294118, 1)
			else
				love.graphics.setColor(var_0_34.hint)
			end

			love.graphics.setLineWidth(1)
			love.graphics.setLineStyle("rough")

			local var_86_43 = var_0_17(arg_86_1.x - var_86_7 / 2)
			local var_86_44 = var_0_17(arg_86_1.y - var_86_7 / 2)

			love.graphics.rectangle("line", var_86_43, var_86_44, var_86_7, var_86_7)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local function var_59_8(arg_87_0)
		if arg_87_0._outlineShader then
			return arg_87_0._outlineShader
		end

		arg_87_0._outlineShader = love.graphics.newShader(" \n      extern vec2 texelSize;\n      extern vec4 outlineColor;\n      extern float threshold;\n      extern number u_usePrism; \n      extern number u_time;     \n      extern number u_targetDpi;\n      // UV rect for atlas clamping: x, y, width, height (0..1)\n      extern vec4 u_frameUV;     \n      // Radial mask (optional)\n      extern number u_useRadMask; \n      extern vec2 u_center;       \n      extern float u_innerRadius; \n      // Outer-only gating (optional)\n      extern number u_useOuterOnly; \n      extern float u_step;          \n      // Ring exclusion mask in SCREEN space\n      extern number u_useRingMask;  \n      extern vec2   u_ringCenter;   \n      extern float  u_ringInner;    \n      extern float  u_ringOuter;    \n      extern number u_selectedSweep;\n      extern vec2 u_sweepCenter;\n\n      vec4 safeTexel(Image tex, vec2 tc) {\n        // Use a small epsilon to avoid floating point precision issues at bounds\n        float eps = 0.00001;\n        vec4 color = Texel(tex, clamp(tc, u_frameUV.xy, u_frameUV.xy + u_frameUV.zw));\n        vec2 mask = step(u_frameUV.xy - eps, tc) * step(tc, u_frameUV.xy + u_frameUV.zw + eps);\n        return color * (mask.x * mask.y);\n      }\n\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        vec2 logicalSc = sc / max(1.0, u_targetDpi);\n        float a0 = safeTexel(tex, tc).a;\n        if (a0 <= threshold) {\n          float a1 = safeTexel(tex, tc + vec2(texelSize.x, 0.0)).a;\n          float a2 = safeTexel(tex, tc + vec2(-texelSize.x, 0.0)).a;\n          float a3 = safeTexel(tex, tc + vec2(0.0, texelSize.y)).a;\n          float a4 = safeTexel(tex, tc + vec2(0.0, -texelSize.y)).a;\n          float a5 = safeTexel(tex, tc + vec2(texelSize.x, texelSize.y)).a;\n          float a6 = safeTexel(tex, tc + vec2(-texelSize.x, texelSize.y)).a;\n          float a7 = safeTexel(tex, tc + vec2(texelSize.x, -texelSize.y)).a;\n          float a8 = safeTexel(tex, tc + vec2(-texelSize.x, -texelSize.y)).a;\n          float neighbor = max(max(max(a1,a2),max(a3,a4)), max(max(a5,a6),max(a7,a8)));\n          if (neighbor > threshold) {\n            if (u_useRadMask > 0.5) {\n              float r = length(tc - u_center);\n              if (r < u_innerRadius) return vec4(0.0);\n            }\n            if (u_useOuterOnly > 0.5) {\n              vec2 dir = tc - u_center;\n              float len = length(dir);\n              if (len > 0.0001) {\n                vec2 stepv = dir * (u_step / len);\n                float aOut = safeTexel(tex, tc + stepv).a;\n                if (aOut > threshold) return vec4(0.0);\n              }\n            }\n            if (u_useRingMask > 0.5) {\n              float d = length(logicalSc - u_ringCenter);\n              if (d >= u_ringInner && d <= u_ringOuter) return vec4(0.0);\n            }\n            if (u_usePrism > 0.5) {\n              float p = (logicalSc.x * 0.06 + logicalSc.y * 0.04) + u_time * 1.5;\n              float pr = 0.70 + 0.30 * sin(p + 0.0);\n              float pg = 0.65 + 0.35 * sin(p + 2.1);\n              float pb = 0.75 + 0.25 * sin(p + 4.2);\n              vec3 rgb = clamp(vec3(pr, pg, pb), 0.0, 1.0);\n              if (u_selectedSweep > 0.5) {\n                vec2 d = tc - u_sweepCenter;\n                float angle = atan(d.y, d.x) / 6.2831853 + 0.5;\n                float sweepPos = fract(angle - u_time * 0.55);\n                float sweep = 1.0 - smoothstep(0.0, 0.16, abs(sweepPos - 0.5));\n                rgb = mix(rgb, vec3(1.0, 0.95, 0.72), sweep * 0.75);\n              }\n              return vec4(rgb, outlineColor.a);\n            }\n            if (u_selectedSweep > 0.5) {\n              vec2 d = tc - u_sweepCenter;\n              float angle = atan(d.y, d.x) / 6.2831853 + 0.5;\n              float sweepPos = fract(angle - u_time * 0.55);\n              float sweep = 1.0 - smoothstep(0.0, 0.16, abs(sweepPos - 0.5));\n              vec3 rgb = mix(outlineColor.rgb, vec3(1.0, 0.92, 0.58), sweep * 0.85);\n              float alpha = min(1.0, outlineColor.a + sweep * 0.25);\n              return vec4(rgb, alpha);\n            }\n            return outlineColor;\n          }\n        }\n        return vec4(0.0,0.0,0.0,0.0);\n      }\n    ")

		return arg_87_0._outlineShader
	end

	local function var_59_9(arg_88_0)
		if arg_88_0._innerOutlineShader then
			return arg_88_0._innerOutlineShader
		end

		arg_88_0._innerOutlineShader = love.graphics.newShader(" \n      extern vec2 texelSize;\n      extern vec4 outlineColor;\n      extern float threshold;\n      // Optional radial mask to suppress inner-hole edges\n      extern number u_useRadMask; // 0 or 1\n      extern vec2 u_center;       // texture coords 0..1\n      extern float u_innerRadius; // texture coord units\n      vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc){\n        float a0 = Texel(tex, tc).a;\n        if (a0 > threshold) {\n          float a1 = Texel(tex, tc + vec2(texelSize.x, 0.0)).a;\n          float a2 = Texel(tex, tc + vec2(-texelSize.x, 0.0)).a;\n          float a3 = Texel(tex, tc + vec2(0.0, texelSize.y)).a;\n          float a4 = Texel(tex, tc + vec2(0.0, -texelSize.y)).a;\n          float a5 = Texel(tex, tc + vec2(texelSize.x, texelSize.y)).a;\n          float a6 = Texel(tex, tc + vec2(-texelSize.x, texelSize.y)).a;\n          float a7 = Texel(tex, tc + vec2(texelSize.x, -texelSize.y)).a;\n          float a8 = Texel(tex, tc + vec2(-texelSize.x, -texelSize.y)).a;\n          float neighborMin = min(min(min(a1,a2),min(a3,a4)), min(min(a5,a6),min(a7,a8)));\n          if (neighborMin <= threshold) {\n            if (u_useRadMask > 0.5) {\n              float r = length(tc - u_center);\n              if (r < u_innerRadius) return vec4(0.0);\n            }\n            return outlineColor;\n          }\n        }\n        return vec4(0.0,0.0,0.0,0.0);\n      }\n    ")

		return arg_88_0._innerOutlineShader
	end

	function var_59_0.drawOutlineSprite(arg_89_0, arg_89_1, arg_89_2, arg_89_3, arg_89_4, arg_89_5, arg_89_6, arg_89_7, arg_89_8, arg_89_9, arg_89_10)
		if arg_89_10 and arg_89_10.spawnHold then
			return
		end

		if not arg_89_1 or not arg_89_1.image or not arg_89_1.quads or not arg_89_1.quads[arg_89_2] then
			return
		end

		local var_89_0 = arg_89_0.battlefield

		if var_89_0 and var_89_0.imprintModal and var_89_0.imprintModal.active then
			return
		end

		if arg_89_0.ui and arg_89_0.ui.pauseOverlayState and arg_89_0.ui.pauseOverlayState.active then
			return
		end

		local var_89_1 = arg_89_1.quads[arg_89_2][arg_89_3]

		if not var_89_1 then
			return
		end

		local var_89_2 = arg_89_4
		local var_89_3 = arg_89_5
		local var_89_4 = arg_89_6
		local var_89_5 = arg_89_7

		if arg_89_10 and arg_89_10.facing == -1 then
			local var_89_6, var_89_7, var_89_8, var_89_9 = var_89_1:getViewport()

			var_89_4 = -arg_89_6
			var_89_2 = arg_89_4 + var_89_8 * math.abs(arg_89_6)
		end

		arg_89_0._outlineShader = var_59_8(arg_89_0)

		local var_89_10 = arg_89_1.image:getWidth()
		local var_89_11 = arg_89_1.image:getHeight()
		local var_89_12 = arg_89_9 ~= nil and arg_89_9 or 1
		local var_89_13 = var_0_32(arg_89_0, arg_89_10 or arg_89_1)
		local var_89_14 = arg_89_8 or var_0_33(arg_89_0, arg_89_10 or arg_89_1)
		local var_89_15 = 0

		if var_89_13 and var_89_14 then
			local var_89_16 = var_89_14.prism
			local var_89_17 = var_59_5(arg_89_0)
			local var_89_18 = var_59_6(arg_89_0)
			local var_89_19 = love.timer and love.timer.getTime and love.timer.getTime() or 0

			var_89_15 = 0.5 + 0.5 * math.sin(var_89_19 * 7)
			var_89_15 = var_89_15 * var_89_15

			local var_89_20 = arg_89_10 or arg_89_1
			local var_89_21 = var_0_6(var_89_20 and var_89_20.grade)
			local var_89_22 = var_89_20 and var_89_20.sym
			local var_89_23 = var_89_21 == "special" or var_89_22 == "Joker" or var_89_22 == "J"
			local var_89_24 = var_89_23 and 0.08 + 0.1 * var_89_18 or 0.22 + 0.26 * var_89_18
			local var_89_25 = var_89_14[1] or 1
			local var_89_26 = var_89_14[2] or 1
			local var_89_27 = var_89_14[3] or 1

			if var_89_23 then
				var_89_14 = {
					math.min(1, var_89_25 * (1 - var_89_24) + var_89_24),
					math.min(1, var_89_26 * (1 - var_89_24) + var_89_24),
					math.min(1, var_89_27 * (1 - var_89_24) + var_89_24),
					math.min(1, (var_89_14[4] or 1) * var_89_17)
				}
			else
				var_89_14 = {
					math.min(1, var_89_25 * (1 - var_89_24) + 1 * var_89_24),
					math.min(1, var_89_26 * (1 - var_89_24) + 0.84 * var_89_24),
					math.min(1, var_89_27 * (1 - var_89_24) + 0.42 * var_89_24),
					math.min(1, (var_89_14[4] or 1) * var_89_17)
				}
			end

			var_89_14.prism = var_89_16
		end

		arg_89_0._outlineShader:send("threshold", 0.01)
		arg_89_0._outlineShader:send("u_useRadMask", 0)
		arg_89_0._outlineShader:send("u_innerRadius", 0)

		local var_89_28, var_89_29, var_89_30, var_89_31 = var_89_1:getViewport()

		arg_89_0._outlineShader:send("u_frameUV", {
			var_89_28 / var_89_10,
			var_89_29 / var_89_11,
			var_89_30 / var_89_10,
			var_89_31 / var_89_11
		})

		local var_89_32 = (var_89_28 + var_89_30 / 2) / math.max(1, var_89_10)
		local var_89_33 = (var_89_29 + var_89_31 / 2) / math.max(1, var_89_11)

		arg_89_0._outlineShader:send("u_center", {
			var_89_32,
			var_89_33
		})

		local var_89_34 = var_89_32
		local var_89_35 = var_89_33
		local var_89_36 = arg_89_1.bounds and arg_89_1.bounds[arg_89_2] and arg_89_1.bounds[arg_89_2][arg_89_3]

		var_89_36 = var_89_36 or var_0_31(arg_89_1.imageData, var_89_28, var_89_29, var_89_30, var_89_31)

		if var_89_36 and var_89_36.w and var_89_36.h and var_89_36.w > 0 and var_89_36.h > 0 then
			var_89_34 = (var_89_28 + (var_89_36.x or 0) + var_89_36.w * 0.5) / math.max(1, var_89_10)
			var_89_35 = (var_89_29 + (var_89_36.y or 0) + var_89_36.h * 0.5) / math.max(1, var_89_11)
		end

		arg_89_0._outlineShader:send("u_sweepCenter", {
			var_89_34,
			var_89_35
		})
		arg_89_0._outlineShader:send("u_useOuterOnly", 0)
		arg_89_0._outlineShader:send("u_step", math.max(1 / var_89_10, 1 / var_89_11) * 1.5)
		arg_89_0._outlineShader:send("u_useRingMask", 0)
		arg_89_0._outlineShader:send("u_ringCenter", {
			0,
			0
		})
		arg_89_0._outlineShader:send("u_ringInner", 0)
		arg_89_0._outlineShader:send("u_ringOuter", 0)
		arg_89_0._outlineShader:send("u_selectedSweep", 0)
		arg_89_0._outlineShader:send("u_usePrism", var_89_14 and var_89_14.prism and 1 or 0)
		arg_89_0._outlineShader:send("u_time", love.timer.getTime() % 10000)
		arg_89_0._outlineShader:send("u_targetDpi", _G.Render2 and _G.Render2.getCurrentTargetDPIScale and _G.Render2.getCurrentTargetDPIScale() or 1)
		arg_89_0._outlineShader:send("texelSize", {
			var_89_12 / var_89_10,
			var_89_12 / var_89_11
		})
		love.graphics.setShader(arg_89_0._outlineShader)
		love.graphics.setColor(1, 1, 1, 1)

		if var_89_13 then
			arg_89_0._outlineShader:send("u_selectedSweep", 0)
			arg_89_0._outlineShader:send("outlineColor", {
				0,
				0,
				0,
				0.8
			})
			arg_89_0._outlineShader:send("u_usePrism", 0)
			love.graphics.draw(arg_89_1.image, var_89_1, var_0_17(var_89_2), var_0_17(var_89_3), 0, var_89_4, var_89_5)
		end

		arg_89_0._outlineShader:send("u_selectedSweep", var_89_13 and 1 or 0)
		arg_89_0._outlineShader:send("outlineColor", {
			var_89_14[1] or 1,
			var_89_14[2] or 1,
			var_89_14[3] or 1,
			var_89_14[4] or 1
		})
		arg_89_0._outlineShader:send("u_usePrism", var_89_14 and var_89_14.prism and 1 or 0)
		arg_89_0._outlineShader:send("u_time", love.timer.getTime() % 10000)
		love.graphics.draw(arg_89_1.image, var_89_1, var_0_17(var_89_2), var_0_17(var_89_3), 0, var_89_4, var_89_5)

		if var_89_13 and var_89_14 then
			local var_89_37, var_89_38 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add")
			arg_89_0._outlineShader:send("u_selectedSweep", 1)
			arg_89_0._outlineShader:send("outlineColor", {
				var_89_14[1] or 1,
				var_89_14[2] or 1,
				var_89_14[3] or 1,
				(var_89_14[4] or 1) * 0.24
			})
			love.graphics.draw(arg_89_1.image, var_89_1, var_0_17(var_89_2), var_0_17(var_89_3), 0, var_89_4, var_89_5)

			local var_89_39 = var_0_12()

			if var_89_39 then
				love.graphics.setShader(var_89_39)

				local var_89_40 = arg_89_10 and arg_89_10.isGuardianGolem and 0.12 or 0.4

				love.graphics.setColor(1, 1, 1, var_89_40 * var_89_15)
				love.graphics.draw(arg_89_1.image, var_89_1, var_0_17(var_89_2), var_0_17(var_89_3), 0, var_89_4, var_89_5)
			end

			love.graphics.setBlendMode(var_89_37, var_89_38)
		end

		love.graphics.setShader()

		arg_89_0._outlineDrawnThisFrame = true

		if var_89_13 then
			arg_89_0._selectedOutlineDrawnThisFrame = true
		end
	end

	function var_59_0.drawInnerOutlineSprite(arg_90_0, arg_90_1, arg_90_2, arg_90_3, arg_90_4, arg_90_5, arg_90_6, arg_90_7, arg_90_8, arg_90_9, arg_90_10)
		if not arg_90_1 or not arg_90_1.image or not arg_90_1.quads or not arg_90_1.quads[arg_90_2] then
			return
		end

		local var_90_0 = arg_90_1.quads[arg_90_2][arg_90_3]

		if not var_90_0 then
			return
		end

		arg_90_0._innerOutlineShader = var_59_9(arg_90_0)

		local var_90_1 = arg_90_1.image:getWidth()
		local var_90_2 = arg_90_1.image:getHeight()
		local var_90_3 = arg_90_9 ~= nil and arg_90_9 or 1

		arg_90_0._innerOutlineShader:send("texelSize", {
			var_90_3 / var_90_1,
			var_90_3 / var_90_2
		})

		local var_90_4 = arg_90_8 or {
			0,
			0,
			0,
			1
		}

		arg_90_0._innerOutlineShader:send("outlineColor", {
			var_90_4[1] or 0,
			var_90_4[2] or 0,
			var_90_4[3] or 0,
			var_90_4[4] or 1
		})
		arg_90_0._innerOutlineShader:send("threshold", 0.01)

		if arg_90_10 and arg_90_10 > 0 then
			arg_90_0._innerOutlineShader:send("u_useRadMask", 1)
			arg_90_0._innerOutlineShader:send("u_center", {
				0.5,
				0.5
			})
			arg_90_0._innerOutlineShader:send("u_innerRadius", arg_90_10)
		else
			arg_90_0._innerOutlineShader:send("u_useRadMask", 0)
			arg_90_0._innerOutlineShader:send("u_center", {
				0.5,
				0.5
			})
			arg_90_0._innerOutlineShader:send("u_innerRadius", 0)
		end

		love.graphics.setShader(arg_90_0._innerOutlineShader)
		love.graphics.setColor(1, 1, 1, 1)
		love.graphics.draw(arg_90_1.image, var_90_0, var_0_17(arg_90_4), var_0_17(arg_90_5), 0, arg_90_6, arg_90_7)
		love.graphics.setShader()

		arg_90_0._outlineDrawnThisFrame = true
	end

	function var_59_0.drawOutlineImage(arg_91_0, arg_91_1, arg_91_2, arg_91_3, arg_91_4, arg_91_5, arg_91_6, arg_91_7, arg_91_8, arg_91_9, arg_91_10, arg_91_11, arg_91_12, arg_91_13, arg_91_14, arg_91_15, arg_91_16, arg_91_17)
		if not arg_91_1 then
			return
		end

		local var_91_0 = var_0_32(arg_91_0, arg_91_16)
		local var_91_1 = arg_91_8 or var_0_25
		local var_91_2 = 0

		if var_91_0 and var_91_1 then
			local var_91_3 = var_91_1.prism
			local var_91_4 = var_59_5(arg_91_0)
			local var_91_5 = var_59_6(arg_91_0)
			local var_91_6 = love.timer and love.timer.getTime and love.timer.getTime() or 0

			var_91_2 = 0.5 + 0.5 * math.sin(var_91_6 * 7)
			var_91_2 = var_91_2 * var_91_2

			local var_91_7 = 0.22 + 0.26 * var_91_5
			local var_91_8 = var_91_1[1] or 1
			local var_91_9 = var_91_1[2] or 1
			local var_91_10 = var_91_1[3] or 1

			var_91_1 = {
				math.min(1, var_91_8 * (1 - var_91_7) + 1 * var_91_7),
				math.min(1, var_91_9 * (1 - var_91_7) + 0.84 * var_91_7),
				math.min(1, var_91_10 * (1 - var_91_7) + 0.42 * var_91_7),
				math.min(1, (var_91_1[4] or 1) * var_91_4)
			}
			var_91_1.prism = var_91_3
		end

		arg_91_0._outlineShader = var_59_8(arg_91_0)

		local var_91_11 = arg_91_1:getWidth()
		local var_91_12 = arg_91_1:getHeight()
		local var_91_13 = arg_91_14 ~= nil and arg_91_14 or 1

		arg_91_0._outlineShader:send("texelSize", {
			var_91_13 / var_91_11,
			var_91_13 / var_91_12
		})
		arg_91_0._outlineShader:send("u_usePrism", var_91_1 and var_91_1.prism and 1 or 0)
		arg_91_0._outlineShader:send("u_time", love.timer.getTime() % 10000)
		arg_91_0._outlineShader:send("u_targetDpi", _G.Render2 and _G.Render2.getCurrentTargetDPIScale and _G.Render2.getCurrentTargetDPIScale() or 1)
		arg_91_0._outlineShader:send("threshold", 0.01)

		local var_91_14 = arg_91_9 and 1 or 0

		arg_91_0._outlineShader:send("u_useOuterOnly", var_91_14)

		if arg_91_15 then
			local var_91_15, var_91_16, var_91_17, var_91_18 = arg_91_15:getViewport()

			arg_91_0._outlineShader:send("u_frameUV", {
				var_91_15 / var_91_11,
				var_91_16 / var_91_12,
				var_91_17 / var_91_11,
				var_91_18 / var_91_12
			})
		else
			arg_91_0._outlineShader:send("u_frameUV", {
				0,
				0,
				1,
				1
			})
		end

		local var_91_19 = (arg_91_6 or 0) / math.max(1, var_91_11)
		local var_91_20 = (arg_91_7 or 0) / math.max(1, var_91_12)

		if arg_91_15 then
			local var_91_21, var_91_22 = arg_91_15:getViewport()

			var_91_19 = (var_91_21 + (arg_91_6 or 0)) / math.max(1, var_91_11)
			var_91_20 = (var_91_22 + (arg_91_7 or 0)) / math.max(1, var_91_12)
		end

		arg_91_0._outlineShader:send("u_center", {
			var_91_19,
			var_91_20
		})

		local var_91_23 = 0.5
		local var_91_24 = 0.5

		if arg_91_15 then
			local var_91_25, var_91_26, var_91_27, var_91_28 = arg_91_15:getViewport()
			local var_91_29

			if arg_91_17 and arg_91_17.bounds and arg_91_17.quads then
				for iter_91_0, iter_91_1 in pairs(arg_91_17.quads) do
					for iter_91_2, iter_91_3 in ipairs(iter_91_1) do
						if iter_91_3 == arg_91_15 then
							var_91_29 = arg_91_17.bounds[iter_91_0] and arg_91_17.bounds[iter_91_0][iter_91_2]

							break
						end
					end

					if var_91_29 then
						break
					end
				end
			end

			if not var_91_29 then
				local var_91_30 = arg_91_17 and arg_91_17.imageData or var_0_30(arg_91_1)

				var_91_29 = var_0_31(var_91_30, var_91_25, var_91_26, var_91_27, var_91_28)
			end

			if var_91_29 and var_91_29.w and var_91_29.h and var_91_29.w > 0 and var_91_29.h > 0 then
				var_91_23 = (var_91_25 + (var_91_29.x or 0) + var_91_29.w * 0.5) / math.max(1, var_91_11)
				var_91_24 = (var_91_26 + (var_91_29.y or 0) + var_91_29.h * 0.5) / math.max(1, var_91_12)
			else
				var_91_23 = (var_91_25 + var_91_27 * 0.5) / math.max(1, var_91_11)
				var_91_24 = (var_91_26 + var_91_28 * 0.5) / math.max(1, var_91_12)
			end
		else
			local var_91_31 = var_0_30(arg_91_1)
			local var_91_32 = var_0_31(var_91_31, 0, 0, var_91_11, var_91_12)

			if var_91_32 and var_91_32.w and var_91_32.h and var_91_32.w > 0 and var_91_32.h > 0 then
				var_91_23 = ((var_91_32.x or 0) + var_91_32.w * 0.5) / math.max(1, var_91_11)
				var_91_24 = ((var_91_32.y or 0) + var_91_32.h * 0.5) / math.max(1, var_91_12)
			end
		end

		arg_91_0._outlineShader:send("u_sweepCenter", {
			var_91_23,
			var_91_24
		})
		arg_91_0._outlineShader:send("u_step", math.max(1 / var_91_11, 1 / var_91_12) * 1.5)
		arg_91_0._outlineShader:send("u_selectedSweep", 0)
		arg_91_0._outlineShader:send("u_useRadMask", 0)
		arg_91_0._outlineShader:send("u_innerRadius", 0)

		if arg_91_10 and arg_91_11 and arg_91_12 and arg_91_13 then
			arg_91_0._outlineShader:send("u_useRingMask", 1)
			arg_91_0._outlineShader:send("u_ringCenter", {
				arg_91_10,
				arg_91_11
			})
			arg_91_0._outlineShader:send("u_ringInner", arg_91_12)
			arg_91_0._outlineShader:send("u_ringOuter", arg_91_13)
		else
			arg_91_0._outlineShader:send("u_useRingMask", 0)
		end

		love.graphics.setShader(arg_91_0._outlineShader)
		love.graphics.setColor(1, 1, 1, 1)

		if var_91_0 then
			arg_91_0._outlineShader:send("u_selectedSweep", 0)
			arg_91_0._outlineShader:send("outlineColor", {
				0,
				0,
				0,
				0.8
			})
			arg_91_0._outlineShader:send("u_usePrism", 0)

			if arg_91_15 then
				love.graphics.draw(arg_91_1, arg_91_15, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
			else
				love.graphics.draw(arg_91_1, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
			end
		end

		arg_91_0._outlineShader:send("u_selectedSweep", var_91_0 and 1 or 0)
		arg_91_0._outlineShader:send("outlineColor", {
			var_91_1[1] or 1,
			var_91_1[2] or 1,
			var_91_1[3] or 1,
			var_91_1[4] or 1
		})
		arg_91_0._outlineShader:send("u_usePrism", var_91_1 and var_91_1.prism and 1 or 0)
		arg_91_0._outlineShader:send("u_time", love.timer.getTime() % 10000)

		if arg_91_15 then
			love.graphics.draw(arg_91_1, arg_91_15, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
		else
			love.graphics.draw(arg_91_1, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
		end

		if var_91_0 then
			local var_91_33, var_91_34 = love.graphics.getBlendMode()

			love.graphics.setBlendMode("add")
			arg_91_0._outlineShader:send("u_selectedSweep", 1)
			arg_91_0._outlineShader:send("outlineColor", {
				var_91_1[1] or 1,
				var_91_1[2] or 1,
				var_91_1[3] or 1,
				(var_91_1[4] or 1) * 0.24
			})

			if arg_91_15 then
				love.graphics.draw(arg_91_1, arg_91_15, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
			else
				love.graphics.draw(arg_91_1, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
			end

			local var_91_35 = var_0_12()

			if var_91_35 then
				love.graphics.setShader(var_91_35)
				love.graphics.setColor(1, 1, 1, 0.4 * var_91_2)

				if arg_91_15 then
					love.graphics.draw(arg_91_1, arg_91_15, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
				else
					love.graphics.draw(arg_91_1, var_0_17(arg_91_2), var_0_17(arg_91_3), 0, arg_91_4 or 1, arg_91_5 or 1, arg_91_6 or 0, arg_91_7 or 0)
				end
			end

			love.graphics.setBlendMode(var_91_33, var_91_34)
		end

		love.graphics.setShader()

		arg_91_0._outlineDrawnThisFrame = true

		if var_91_0 then
			arg_91_0._selectedOutlineDrawnThisFrame = true
		end
	end

	function var_59_0.hitTestImageAlpha(arg_92_0, arg_92_1, arg_92_2, arg_92_3, arg_92_4, arg_92_5, arg_92_6, arg_92_7, arg_92_8, arg_92_9, arg_92_10)
		if not arg_92_1 then
			return false
		end

		arg_92_4 = arg_92_4 or 1
		arg_92_5 = arg_92_5 or 1
		arg_92_6 = arg_92_6 or 0
		arg_92_7 = arg_92_7 or 0

		local var_92_0 = arg_92_2 - arg_92_6 * arg_92_4
		local var_92_1 = arg_92_3 - arg_92_7 * arg_92_5
		local var_92_2 = (arg_92_8 - var_92_0) / math.max(1e-09, arg_92_4)
		local var_92_3 = (arg_92_9 - var_92_1) / math.max(1e-09, arg_92_5)
		local var_92_4, var_92_5 = arg_92_1:getDimensions()

		if var_92_2 < 0 or var_92_3 < 0 or var_92_4 <= var_92_2 or var_92_5 <= var_92_3 then
			return false
		end

		local var_92_6 = math.floor(var_92_2)
		local var_92_7 = math.floor(var_92_3)

		if var_92_6 < 0 or var_92_7 < 0 or var_92_4 <= var_92_6 or var_92_5 <= var_92_7 then
			return false
		end

		local var_92_8, var_92_9, var_92_10, var_92_11 = arg_92_1:getPixel(var_92_6, var_92_7)

		return (arg_92_10 ~= nil and arg_92_10 or 0.05) < (var_92_11 or 0)
	end

	local function var_59_10(arg_93_0)
		local var_93_0 = arg_93_0.ui
		local var_93_1 = arg_93_0.battlefield
		local var_93_2 = var_93_1 and var_93_1.area

		if not var_93_0 or not var_93_2 or not var_93_1 or not var_93_1.assets or not var_93_1.assets.units then
			return 1
		end

		local var_93_3 = 32
		local var_93_4 = math.floor(10 * var_93_0.scale)
		local var_93_5 = var_93_2.w - var_93_4 * 2
		local var_93_6 = var_93_2.h - var_93_4 * 2 - math.floor(22 * var_93_0.scale)
		local var_93_7

		if var_93_0.battle and var_93_0.battle.allySize32 and var_93_0.battle.allySize32 > 0 then
			var_93_7 = math.max(var_93_3, math.floor(var_93_0.battle.allySize32 / var_93_3) * var_93_3)
		else
			local var_93_8 = math.floor(math.min(var_93_5, var_93_6) * 0.12 * (var_93_0.battle and var_93_0.battle.unitScale or 1))

			var_93_7 = var_93_3 * math.max(1, math.ceil(var_93_8 / var_93_3))
		end

		local var_93_9 = var_93_1.assets.units.MiniSwordMan or var_93_1.assets.units.MiniArcherMan or var_93_1.assets.units.MiniSpearMan
		local var_93_10 = var_93_9 and var_93_9.frameW or var_93_3
		local var_93_11 = var_93_7 / math.max(1, var_93_10)

		return (math.max(1, math.floor(var_93_11 + 0.5)))
	end

	local function var_59_11(arg_94_0, arg_94_1, arg_94_2, arg_94_3, arg_94_4, arg_94_5, arg_94_6)
		local var_94_0 = var_59_10(arg_94_0)
		local var_94_1 = math.max(1, math.floor((var_0_35 or 3) / var_94_0 + 0.5))
		local var_94_2 = math.min(math.floor(arg_94_3 / (2 * var_94_0)), math.floor(arg_94_4 / (2 * var_94_0)))

		if var_94_2 < 1 then
			var_94_2 = 1
		end

		if var_94_2 < var_94_1 then
			var_94_1 = var_94_2
		end

		local var_94_3 = var_94_1 * var_94_0

		if arg_94_5 then
			love.graphics.setColor(arg_94_5[1], arg_94_5[2], arg_94_5[3], arg_94_5[4] or 1)
		end

		if arg_94_4 - 2 * var_94_3 > 0 then
			love.graphics.rectangle("fill", var_0_17(arg_94_1 + var_94_3), var_0_17(arg_94_2 + var_94_3), var_0_17(arg_94_3 - 2 * var_94_3), var_0_17(arg_94_4 - 2 * var_94_3))
		end

		if arg_94_4 - 2 * var_94_3 > 0 then
			love.graphics.rectangle("fill", var_0_17(arg_94_1), var_0_17(arg_94_2 + var_94_3), var_0_17(var_94_3), var_0_17(arg_94_4 - 2 * var_94_3))
			love.graphics.rectangle("fill", var_0_17(arg_94_1 + arg_94_3 - var_94_3), var_0_17(arg_94_2 + var_94_3), var_0_17(var_94_3), var_0_17(arg_94_4 - 2 * var_94_3))
		end

		for iter_94_0 = 0, var_94_1 - 1 do
			local var_94_4 = var_94_3 - (iter_94_0 + 1) * var_94_0

			if var_94_4 < 0 then
				var_94_4 = 0
			end

			local var_94_5 = arg_94_3 - 2 * var_94_4

			if var_94_5 > 0 then
				love.graphics.rectangle("fill", var_0_17(arg_94_1 + var_94_4), var_0_17(arg_94_2 + iter_94_0 * var_94_0), var_0_17(var_94_5), var_0_17(var_94_0))
				love.graphics.rectangle("fill", var_0_17(arg_94_1 + var_94_4), var_0_17(arg_94_2 + arg_94_4 - (iter_94_0 + 1) * var_94_0), var_0_17(var_94_5), var_0_17(var_94_0))
			end
		end

		if arg_94_6 then
			love.graphics.setColor(arg_94_6[1], arg_94_6[2], arg_94_6[3], arg_94_6[4] or 1)

			local var_94_6 = var_94_0

			for iter_94_1 = 0, var_94_1 - 1 do
				local var_94_7 = var_94_3 - (iter_94_1 + 1) * var_94_0

				if var_94_7 < 0 then
					var_94_7 = 0
				end

				local var_94_8 = arg_94_3 - 2 * var_94_7

				if var_94_8 > 0 then
					love.graphics.rectangle("fill", var_0_17(arg_94_1 + var_94_7), var_0_17(arg_94_2 + iter_94_1 * var_94_0), var_0_17(var_94_8), var_0_17(var_94_6))
					love.graphics.rectangle("fill", var_0_17(arg_94_1 + var_94_7), var_0_17(arg_94_2 + arg_94_4 - (iter_94_1 + 1) * var_94_0), var_0_17(var_94_8), var_0_17(var_94_6))
				end
			end

			local var_94_9 = arg_94_4 - 2 * var_94_3

			if var_94_9 > 0 then
				love.graphics.rectangle("fill", var_0_17(arg_94_1), var_0_17(arg_94_2 + var_94_3), var_0_17(var_94_6), var_0_17(var_94_9))
				love.graphics.rectangle("fill", var_0_17(arg_94_1 + arg_94_3 - var_94_6), var_0_17(arg_94_2 + var_94_3), var_0_17(var_94_6), var_0_17(var_94_9))
			end
		end
	end

	function var_59_0.drawSkillStyleBox(arg_95_0, arg_95_1, arg_95_2, arg_95_3, arg_95_4)
		local var_95_0 = {
			var_0_34.boxFill[1],
			var_0_34.boxFill[2],
			var_0_34.boxFill[3],
			1
		}

		var_59_11(arg_95_0, arg_95_1, arg_95_2, arg_95_3, arg_95_4, var_95_0, var_95_0)
	end

	local function var_59_12(arg_96_0)
		local var_96_0 = arg_96_0 and arg_96_0._statIconHover
		local var_96_1 = var_96_0 and var_0_56[var_96_0.key]
		local var_96_2 = arg_96_0 and arg_96_0.ui
		local var_96_3 = var_96_2 and var_96_2.font

		if not var_96_1 or not var_96_2 or not var_96_2.virtual or not var_96_3 then
			return
		end

		local var_96_4, var_96_5 = arg_96_0:iconTooltipReveal("stat", var_96_0.key)

		if var_96_4 <= 0 then
			return
		end

		local var_96_6 = var_0_4.getText(var_96_1, _G.currentGameLang or "ko")
		local var_96_7 = 4
		local var_96_8 = 4
		local var_96_9 = math.floor(var_96_3:getWidth(var_96_6) + var_96_7 * 2 + 0.5)
		local var_96_10 = math.floor(var_96_3:getHeight() + var_96_7 * 2 + 0.5)
		local var_96_11 = math.floor(var_96_0.x + var_96_0.w + var_96_8 + 0.5)

		if var_96_11 + var_96_9 > var_96_2.virtual.W then
			var_96_11 = math.floor(var_96_0.x - var_96_9 - var_96_8 + 0.5)
		end

		local var_96_12 = math.floor(var_96_0.y + (var_96_0.h - var_96_10) * 0.5 + var_96_5 + 0.5)
		local var_96_13 = math.max(0, math.min(var_96_11, var_96_2.virtual.W - var_96_9))
		local var_96_14 = math.max(0, math.min(var_96_12, var_96_2.virtual.H - var_96_10))

		var_59_11(arg_96_0, var_96_13, var_96_14, var_96_9, var_96_10, {
			0,
			0,
			0,
			0.95 * var_96_4
		}, nil)
		love.graphics.setFont(var_96_3)
		love.graphics.setColor(1, 1, 1, var_96_4)
		love.graphics.print(var_96_6, var_96_13 + var_96_7, var_96_14 + var_96_7 - 1)
		love.graphics.setColor(1, 1, 1, 1)
	end

	local function var_59_13(arg_97_0)
		return arg_97_0 and (arg_97_0.subclass == "마그누스" or arg_97_0.subclassName == "마그누스" or arg_97_0.subclassKey == "마그누스")
	end

	local function var_59_14(arg_98_0)
		return arg_98_0 and (arg_98_0.subclass == "크러셔" or arg_98_0.subclassName == "크러셔" or arg_98_0.subclassKey == "크러셔")
	end

	local function var_59_15(arg_99_0, arg_99_1, arg_99_2)
		if not arg_99_0.target or not arg_99_0.cache or not arg_99_0.cache.layout then
			return
		end

		local var_99_0 = arg_99_0.cache.layout
		local var_99_1 = var_99_0.width
		local var_99_2 = var_99_0.height
		local var_99_3 = arg_99_0.ui.virtual.W
		local var_99_4 = arg_99_0.ui.virtual.H
		local var_99_5 = arg_99_1 or arg_99_0.mouseX
		local var_99_6 = arg_99_2 or arg_99_0.mouseY
		local var_99_7 = 10

		if not arg_99_0.pinSide then
			local var_99_8 = var_99_3 >= var_99_5 + var_99_1 + var_99_7
			local var_99_9 = var_99_6 - var_99_2 - var_99_7 >= 0

			arg_99_0.pinSide = {
				right = var_99_8,
				above = var_99_9
			}
		end

		local var_99_10 = arg_99_0.pinSide.right
		local var_99_11 = arg_99_0.pinSide.above
		local var_99_12 = var_99_10 and var_99_5 + var_99_7 or var_99_5 - var_99_7 - var_99_1
		local var_99_13 = var_99_11 and var_99_6 - var_99_7 - var_99_2 or var_99_6 + var_99_7

		if var_99_12 < 0 then
			var_99_12 = 0
		end

		if var_99_3 < var_99_12 + var_99_1 then
			var_99_12 = var_99_3 - var_99_1
		end

		if var_99_13 < 0 then
			var_99_13 = 0
		end

		if var_99_4 < var_99_13 + var_99_2 then
			var_99_13 = var_99_4 - var_99_2
		end

		local var_99_14, var_99_15 = var_0_17(var_99_12), var_0_17(var_99_13)
		local var_99_16 = arg_99_0.locked and 1 or arg_99_0.fade
		local var_99_17 = 1

		if arg_99_0.crossPrevLayout then
			var_99_17 = math.min(1, (arg_99_0.crossT or 0) / var_0_42)
		end

		local function var_99_18(arg_100_0, arg_100_1, arg_100_2)
			if not arg_100_0 then
				return
			end

			local var_100_0 = arg_100_0.width
			local var_100_1 = arg_100_0.height
			local var_100_2 = {
				var_0_34.boxFill[1],
				var_0_34.boxFill[2],
				var_0_34.boxFill[3],
				(var_0_34.boxFill[4] or 0.75) * var_99_16 * arg_100_2
			}

			var_59_11(arg_99_0, var_99_14, var_99_15, var_100_0, var_100_1, var_100_2, nil)

			local var_100_3 = arg_99_0.ui.font

			love.graphics.setFont(var_100_3)

			local var_100_4 = arg_100_0.scaledPad or var_0_36 * 0.5
			local var_100_5 = arg_100_0.lineSpacing or 3
			local var_100_6 = arg_100_0.titleSpacing or 8
			local var_100_7 = arg_100_0.titleLeftNudge or 0
			local var_100_8 = arg_100_0.iconAdvance or 12
			local var_100_9 = var_0_17(var_99_15 + var_100_4)
			local var_100_10 = arg_99_0.battlefield and arg_99_0.battlefield.assets

			for iter_100_0, iter_100_1 in ipairs(arg_100_0.lines) do
				local var_100_11 = iter_100_1.scale or arg_100_0.statScale or 1
				local var_100_12 = var_100_9
				local var_100_13 = var_0_17(var_99_14 + var_100_4 - (iter_100_1.isTitle and var_100_7 or 0))

				if iter_100_1.kind == "thinSep" then
					local var_100_14 = iter_100_1.padBefore or 1
					local var_100_15 = iter_100_1.padAfter or 2
					local var_100_16 = iter_100_1.sepTailSpacing ~= nil and iter_100_1.sepTailSpacing or 2

					var_100_9 = var_100_9 + var_100_14

					love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_99_16 * arg_100_2)
					love.graphics.rectangle("fill", var_99_14 + var_100_4, var_100_9, var_100_0 - var_100_4 * 2, 1)
					love.graphics.setColor(1, 1, 1, 1)

					var_100_9 = var_100_9 + 1 + var_100_15 + var_100_16
					var_100_9 = var_0_17(var_100_9)
				else
					if iter_100_1.icon and var_100_10 then
						local var_100_17 = var_100_10.iconsSmall and var_100_10.iconsSmall[iter_100_1.icon] or var_100_10.icons and var_100_10.icons[iter_100_1.icon]

						if var_100_17 then
							local var_100_18 = var_0_17(var_100_12)
							local var_100_19 = iter_100_1.iconFoil or arg_100_1 and arg_100_1.jackpot5th

							if iter_100_1.iconOriginalColor then
								love.graphics.setShader()
								love.graphics.setColor(1, 1, 1, var_99_16 * arg_100_2)
								love.graphics.draw(var_100_17, var_100_13, var_100_18)
							elseif var_100_19 then
								local var_100_20 = var_0_12()

								if var_100_20 then
									love.graphics.setShader(var_100_20)
								end

								local var_100_21 = iter_100_1.iconColor or {
									1,
									1,
									1,
									1
								}

								love.graphics.setColor(var_100_21[1] or 1, var_100_21[2] or 1, var_100_21[3] or 1, (var_100_21[4] or 1) * var_99_16 * arg_100_2)
								love.graphics.draw(var_100_17, var_100_13, var_100_18)

								if var_100_20 then
									love.graphics.setShader()
								end

								local var_100_22 = arg_99_0.ui and arg_99_0.ui.tooltipCfg and arg_99_0.ui.tooltipCfg.iconFoil or arg_99_0.ui and arg_99_0.ui.tooltip and arg_99_0.ui.tooltip.iconFoil or arg_99_0.ui and arg_99_0.ui.battle and (arg_99_0.ui.battle.jackpotFoil or arg_99_0.ui.battle.jackpotRainbow) or {}
								local var_100_23 = var_100_22.alpha ~= nil and var_100_22.alpha or 0.32

								if var_100_23 > 0 then
									local var_100_24 = var_0_14()

									love.graphics.setShader(var_100_24)

									local var_100_25 = (var_100_22.angleDeg or 20) * math.pi / 180
									local var_100_26 = math.cos(var_100_25)
									local var_100_27 = math.sin(var_100_25)

									var_100_24:send("u_time", love.timer.getTime() % 10000)
									var_100_24:send("u_alpha", var_100_23 * (var_99_16 * arg_100_2))
									var_100_24:send("u_dir", {
										var_100_26,
										var_100_27
									})
									var_100_24:send("u_cycle", var_100_22.cycleSec or 4)
									var_100_24:send("u_scale", var_100_22.scale or 2.5)

									local var_100_28 = var_100_22.grain or {}
									local var_100_29 = var_100_22.film or {}

									var_100_24:send("u_grainScale", var_100_28.scale or 3)
									var_100_24:send("u_grainAmp", var_100_28.amp or 0.2)
									var_100_24:send("u_filmFreq", var_100_29.freq or 2)
									var_100_24:send("u_filmAmp", var_100_29.amp or 0.25)
									var_100_24:send("u_specular", var_100_22.specular or 0.35)
									var_100_24:send("u_fresnelPow", var_100_22.fresnelPow or 2.5)
									var_100_24:send("u_frameUV", {
										0,
										0,
										1,
										1
									})
									var_100_24:send("u_colorGain", var_100_22.colorGain or 1.85)
									var_100_24:send("u_saturation", var_100_22.saturation or 1.5)
									var_100_24:send("u_mixBP", var_100_22.mixBP or 0.32)
									love.graphics.setColor(1, 1, 1, 1)

									local var_100_30 = love.graphics.getBlendMode()

									love.graphics.setBlendMode("alpha", "alphamultiply")
									love.graphics.draw(var_100_17, var_100_13, var_100_18)
									love.graphics.setBlendMode(var_100_30)
									love.graphics.setShader()
								end
							else
								local var_100_31 = var_0_12()

								if var_100_31 then
									love.graphics.setShader(var_100_31)
								end

								local var_100_32 = iter_100_1.iconColor or {
									1,
									1,
									1,
									1
								}

								love.graphics.setColor(var_100_32[1] or 1, var_100_32[2] or 1, var_100_32[3] or 1, (var_100_32[4] or 1) * var_99_16 * arg_100_2)
								love.graphics.draw(var_100_17, var_100_13, var_100_18)

								if var_100_31 then
									love.graphics.setShader()
								end
							end

							var_100_13 = var_100_13 + var_100_8
						end
					end

					if iter_100_1.label or iter_100_1.labelIcon then
						local var_100_33 = var_0_61(arg_99_0, var_100_10, iter_100_1, var_100_13, var_100_12, var_100_11, var_100_3, var_99_16, arg_100_2)
						local var_100_34 = iter_100_1.labelIcon and var_100_13 + (arg_100_0.statIconColumnW or var_100_33 - var_100_13) or var_100_33

						if iter_100_1.parts then
							local var_100_35 = iter_100_1.parts.cur or ""
							local var_100_36 = iter_100_1.parts.nxt or ""
							local var_100_37 = iter_100_1.parts.delta or ""
							local var_100_38 = iter_100_1.parts.nxtColor or var_0_34.value
							local var_100_39 = iter_100_1.parts.deltaColor or var_100_38
							local var_100_40 = iter_100_1.parts.curColor or var_0_34.value

							love.graphics.setColor(var_100_40[1], var_100_40[2], var_100_40[3], (var_100_40[4] or 1) * var_99_16 * arg_100_2)
							love.graphics.print(var_100_35, var_0_17(var_100_34), var_100_12, 0, var_100_11, var_100_11)

							local var_100_41 = var_100_34 + var_0_19(var_100_3, var_100_35, var_100_11)
							local var_100_42 = " → "

							love.graphics.print(var_100_42, var_0_17(var_100_41), var_100_12, 0, var_100_11, var_100_11)

							local var_100_43 = var_100_41 + var_0_19(var_100_3, var_100_42, var_100_11)

							love.graphics.setColor(var_100_38[1], var_100_38[2], var_100_38[3], (var_100_38[4] or 1) * var_99_16 * arg_100_2)
							love.graphics.print(var_100_36, var_0_17(var_100_43), var_100_12, 0, var_100_11, var_100_11)

							local var_100_44 = var_100_43 + var_0_19(var_100_3, var_100_36, var_100_11)
							local var_100_45 = "  "

							love.graphics.setColor(var_0_34.value[1], var_0_34.value[2], var_0_34.value[3], (var_0_34.value[4] or 1) * var_99_16 * arg_100_2)
							love.graphics.print(var_100_45, var_0_17(var_100_44), var_100_12, 0, var_100_11, var_100_11)

							local var_100_46 = var_100_44 + var_0_19(var_100_3, var_100_45, var_100_11)

							love.graphics.setColor(var_100_39[1], var_100_39[2], var_100_39[3], (var_100_39[4] or 1) * var_99_16 * arg_100_2)
							love.graphics.print(var_100_37, var_0_17(var_100_46), var_100_12, 0, var_100_11, var_100_11)
						else
							local var_100_47 = iter_100_1.valueColor or var_0_34.value

							var_0_21(iter_100_1.value, var_0_17(var_100_34), var_100_47, var_99_16 * arg_100_2, function(arg_101_0)
								return var_0_19(var_100_3, arg_101_0, var_100_11)
							end, function(arg_102_0, arg_102_1, arg_102_2, arg_102_3)
								love.graphics.setColor(arg_102_1[1], arg_102_1[2], arg_102_1[3], (arg_102_1[4] or 1) * arg_102_3)
								love.graphics.print(arg_102_0, var_0_17(arg_102_2), var_100_12, 0, var_100_11, var_100_11)
							end)
						end
					else
						if iter_100_1 and iter_100_1.isTitle and (iter_100_1.iconFoil or arg_100_1 and arg_100_1.jackpot5th) and iter_100_1.value and iter_100_1.value ~= "" then
							local var_100_48 = (arg_99_0.ui and arg_99_0.ui.tooltipCfg and arg_99_0.ui.tooltipCfg.iconFoil or arg_99_0.ui and arg_99_0.ui.tooltip and arg_99_0.ui.tooltip.iconFoil or arg_99_0.ui and arg_99_0.ui.battle and (arg_99_0.ui.battle.jackpotFoil or arg_99_0.ui.battle.jackpotRainbow) or {}).cycleSec or 4
							local var_100_49 = love.timer.getTime() / var_100_48 * 2 * math.pi
							local var_100_50 = 0.6 + 0.4 * math.sin(var_100_49 + 0)
							local var_100_51 = 0.45 + 0.3 * math.sin(var_100_49 + 2.1)
							local var_100_52 = 0.8 + 0.2 * math.sin(var_100_49 + 4.2)

							love.graphics.setColor(var_100_50, var_100_51, var_100_52, var_99_16 * arg_100_2)
							love.graphics.print(iter_100_1.value, var_100_13, var_100_12, 0, var_100_11, var_100_11)
						else
							local var_100_53 = iter_100_1.isTitle and iter_100_1.titleColor or iter_100_1.isTitle and var_0_34.value or var_0_34.label

							love.graphics.setColor(var_100_53[1], var_100_53[2], var_100_53[3], (var_100_53[4] or 1) * var_99_16 * arg_100_2)
							love.graphics.print(iter_100_1.value, var_100_13, var_100_12, 0, var_100_11, var_100_11)
						end

						if iter_100_1.nameSweepGrade then
							require("src.ui.widgets").unit_name_sweep.draw(iter_100_1.value, var_100_13, var_100_12, var_100_11, var_100_11, iter_100_1.nameSweepGrade, var_99_16 * arg_100_2, var_100_3)
						end

						if iter_100_1.predNote then
							local var_100_54 = var_100_13 + var_0_19(var_100_3, iter_100_1.value, var_100_11) + 6
							local var_100_55 = var_100_12 + math.floor(var_0_22(var_100_3, var_100_11) / 2)
							local var_100_56 = 3
							local var_100_57 = {}

							for iter_100_2 = 0, 5 do
								local var_100_58 = math.rad(60 * iter_100_2)

								table.insert(var_100_57, var_100_54 + var_100_56 * math.cos(var_100_58))
								table.insert(var_100_57, var_100_55 + var_100_56 * math.sin(var_100_58))
							end

							love.graphics.setColor(0.7, 0.4, 1, var_99_16 * arg_100_2)
							love.graphics.polygon("fill", var_100_57)
							love.graphics.setColor(1, 1, 1, 1)
						end
					end

					local var_100_59 = iter_100_1.isTitle and var_100_6 or var_100_5

					var_100_9 = var_100_9 + var_0_22(var_100_3, var_100_11) + var_100_59
					var_100_9 = var_0_17(var_100_9)
				end
			end

			if not arg_100_1 or not arg_100_1.isShadowMinion and not arg_100_1.isGuardianGolem then
				local var_100_60 = 3

				if arg_100_1 and arg_100_1.grade == "normal" then
					var_100_60 = 3
				elseif arg_100_1 and arg_100_1.grade == "advanced" then
					var_100_60 = 3
				elseif arg_100_1 and arg_100_1.grade == "rare" then
					var_100_60 = 3
				elseif arg_100_1 and arg_100_1.grade == "legendary" then
					var_100_60 = 3
				elseif arg_100_1 and arg_100_1.grade == "prism" then
					var_100_60 = 3
				elseif arg_100_1 then
					var_100_60 = ((var_0_2 and var_0_2.evolution or {}).maxRankByGrade or {})[arg_100_1.grade or "normal"] or 3
				end

				if arg_100_1 and arg_100_1.awakeningMaxRank then
					var_100_60 = arg_100_1.awakeningMaxRank
				end

				local var_100_61 = tonumber(arg_100_1 and arg_100_1.rank or 1) or 1

				if var_100_61 < 1 then
					var_100_61 = 1
				elseif var_100_60 < var_100_61 then
					var_100_61 = var_100_60
				end

				local var_100_62 = arg_100_0.starPx or 7
				local var_100_63 = math.max(1, math.floor((arg_100_0.starsScale or 1) + 0.5))
				local var_100_64 = 2 * var_100_63
				local var_100_65 = var_100_62 * var_100_63
				local var_100_66 = var_100_60 * var_100_65 + (var_100_60 - 1) * var_100_64
				local var_100_67 = math.floor(var_99_14 + (var_100_0 - var_100_66) / 2 + 0.5)
				local var_100_68 = math.floor(var_100_9 + (arg_100_0.starsGapY or 3) + 0.5)
				local var_100_69 = var_99_16 * arg_100_2

				for iter_100_3 = 1, var_100_60 do
					local var_100_70 = var_100_67 + (iter_100_3 - 1) * (var_100_65 + var_100_64)

					require("src.ui.widgets").awakening_star.draw(var_100_70, var_100_68, var_100_63, iter_100_3 <= var_100_61, iter_100_3 <= (arg_100_1 and arg_100_1.awakeningStage or 0), var_100_69)
				end

				love.graphics.setColor(1, 1, 1, 1)
			end

			love.graphics.setColor(1, 1, 1, 1)
		end

		if arg_99_0.crossPrevLayout then
			var_99_18(arg_99_0.crossPrevLayout, arg_99_0.crossPrevInfo, 1 - var_99_17)
			var_99_18(var_99_0, arg_99_0.cache and arg_99_0.cache.info, var_99_17)
		else
			var_99_18(var_99_0, arg_99_0.cache and arg_99_0.cache.info, 1)
		end
	end

	local function var_59_16(arg_103_0, arg_103_1, arg_103_2)
		if not arg_103_1 then
			return
		end

		local var_103_0 = arg_103_0.ui.font

		if var_103_0 then
			love.graphics.setFont(var_103_0)
		end

		local function var_103_1(arg_104_0)
			if arg_104_0 == math.floor(arg_104_0) then
				return string.format("+%d%%", arg_104_0)
			else
				return string.format("+%.1f%%", arg_104_0)
			end
		end

		local var_103_2 = {
			{
				labelIcon = "hp",
				value = var_103_1(arg_103_1.hp)
			},
			{
				labelIcon = "atk",
				value = var_103_1(arg_103_1.atk)
			},
			{
				labelIcon = "aspd",
				value = var_103_1(arg_103_1.aspd)
			}
		}
		local var_103_3 = arg_103_0.battlefield and arg_103_0.battlefield.assets
		local var_103_4 = 6
		local var_103_5 = 4
		local var_103_6 = type(rawget(_G, "getChineseLatinFallbackFont")) == "function" and _G.getChineseLatinFallbackFont(var_103_0) or var_103_0
		local var_103_7 = var_103_6 and var_103_6:getHeight() or var_103_0 and var_103_0:getHeight() or 12
		local var_103_8 = 1
		local var_103_9 = var_0_60(var_103_3, var_103_2, var_103_0, var_103_8, true)
		local var_103_10 = 0
		local var_103_11 = 8

		for iter_103_0, iter_103_1 in ipairs(var_103_2) do
			local var_103_12 = var_103_6 and var_103_6:getWidth(iter_103_1.value) or 0

			if var_103_10 < var_103_12 then
				var_103_10 = var_103_12
			end
		end

		local var_103_13 = var_103_9 + var_103_11 + var_103_10
		local var_103_14 = #var_103_2 * var_103_7 + (#var_103_2 - 1) * var_103_5
		local var_103_15 = var_103_13 + var_103_4 * 2
		local var_103_16 = var_103_14 + var_103_4 * 2
		local var_103_17 = 6
		local var_103_18 = arg_103_2.x
		local var_103_19 = arg_103_2.y - var_103_16 - var_103_17
		local var_103_20 = arg_103_0.ui.virtual.W
		local var_103_21 = arg_103_0.ui.virtual.H

		if var_103_20 < var_103_18 + var_103_15 then
			var_103_18 = var_103_20 - var_103_15
		end

		if var_103_18 < 0 then
			var_103_18 = 0
		end

		if var_103_19 < 0 then
			var_103_19 = arg_103_2.y + arg_103_2.h + var_103_17
		end

		if var_103_21 < var_103_19 + var_103_16 then
			var_103_19 = var_103_21 - var_103_16
		end

		local var_103_22, var_103_23 = math.floor(var_103_18), math.floor(var_103_19)
		local var_103_24 = {
			var_0_34.boxFill[1],
			var_0_34.boxFill[2],
			var_0_34.boxFill[3],
			0.95
		}

		var_59_11(arg_103_0, var_103_22, var_103_23, var_103_15, var_103_16, var_103_24, nil)

		local var_103_25 = var_103_23 + var_103_4 - 1

		for iter_103_2, iter_103_3 in ipairs(var_103_2) do
			var_0_61(arg_103_0, var_103_3, iter_103_3, var_103_22 + var_103_4, var_103_25, var_103_8, var_103_0, 1, 1)

			local var_103_26 = var_103_22 + var_103_4 + var_103_9 + var_103_11

			love.graphics.setColor(0.6, 1, 0.6, 1)
			love.graphics.print(iter_103_3.value, var_103_26, var_103_25)

			var_103_25 = var_103_25 + var_103_7 + var_103_5
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	local function var_59_17(arg_105_0, arg_105_1, arg_105_2)
		if not arg_105_1 then
			return
		end

		local var_105_0 = arg_105_0.ui.font
		local var_105_1 = arg_105_0.battlefield and arg_105_0.battlefield.assets

		if var_105_0 then
			love.graphics.setFont(var_105_0)
		end

		local function var_105_2()
			if love and love.timer and love.timer.getTime then
				return love.timer.getTime()
			end

			return os.clock()
		end

		local function var_105_3(arg_107_0)
			if arg_107_0 < 0 then
				return 0
			end

			if arg_107_0 > 1 then
				return 1
			end

			return arg_107_0
		end

		local function var_105_4(arg_108_0)
			arg_108_0 = var_105_3(arg_108_0)

			local var_108_0 = 1 - arg_108_0

			return 1 - var_108_0 * var_108_0 * var_108_0
		end

		local var_105_5 = tostring(arg_105_2 and arg_105_2.index or "") .. "|" .. tostring(arg_105_1.id or arg_105_1.name or "")
		local var_105_6 = var_105_2()

		arg_105_0._imprintSlotTipAnim = arg_105_0._imprintSlotTipAnim or {}

		local var_105_7, var_105_8 = require("src.ui.widgets").panel_hover_motion.appear(arg_105_0._imprintSlotTipAnim, var_105_5, var_105_6)
		local var_105_9 = arg_105_1.desc or ""
		local var_105_10 = arg_105_1.level or 1

		if not arg_105_1.name then
			local var_105_11 = ""
		end

		if arg_105_2.previewUpgrade then
			local var_105_12 = var_105_10 + 1

			require("src.game.combat").soul_split.migrate(arg_105_1)

			local var_105_13 = var_0_2 and var_0_2.imprint and var_0_2.imprint.definitions and var_0_2.imprint.definitions[arg_105_1.id]

			if var_105_13 and var_105_13.levels and var_105_13.levels[var_105_12] then
				var_105_9 = var_105_13.levels[var_105_12].desc or var_105_13.desc or var_105_9
				var_105_10 = var_105_12
			end
		end

		local var_105_14 = var_0_4.getImprintDesc(arg_105_1.id, var_105_10, var_105_9, _G.currentGameLang or "ko")
		local var_105_15 = 5
		local var_105_16 = var_105_15
		local var_105_17 = var_105_15 + 1
		local var_105_18 = type(rawget(_G, "getChineseLatinFallbackFont")) == "function" and _G.getChineseLatinFallbackFont(var_105_0) or var_105_0
		local var_105_19 = var_105_18 and var_105_18:getHeight() or var_105_0 and var_105_0:getHeight() or 12
		local var_105_20 = 5
		local var_105_21 = tostring(arg_105_1.id or "")
		local var_105_22 = var_105_21:sub(1, 13) == "randomOption_"
		local var_105_23 = var_105_21:sub(1, 11) == "classSkill_"
		local var_105_24 = math.floor(arg_105_2.w) - 2
		local var_105_25 = var_105_24

		local function var_105_26(arg_109_0)
			arg_109_0 = tostring(arg_109_0 or "")

			if arg_109_0 == "" then
				return ""
			end

			local var_109_0 = {}
			local var_109_1 = 1
			local var_109_2 = #arg_109_0

			while var_109_1 <= var_109_2 do
				local var_109_3 = arg_109_0:byte(var_109_1)

				if not var_109_3 then
					break
				end

				if var_109_3 < 128 then
					var_109_0[#var_109_0 + 1] = string.char(var_109_3)
					var_109_1 = var_109_1 + 1
				elseif var_109_3 >= 194 and var_109_3 <= 223 then
					local var_109_4 = arg_109_0:byte(var_109_1 + 1)

					if var_109_4 and var_109_4 >= 128 and var_109_4 <= 191 then
						var_109_0[#var_109_0 + 1] = arg_109_0:sub(var_109_1, var_109_1 + 1)
						var_109_1 = var_109_1 + 2
					else
						var_109_0[#var_109_0 + 1] = "?"
						var_109_1 = var_109_1 + 1
					end
				elseif var_109_3 >= 224 and var_109_3 <= 239 then
					local var_109_5 = arg_109_0:byte(var_109_1 + 1)
					local var_109_6 = arg_109_0:byte(var_109_1 + 2)
					local var_109_7 = var_109_5 and var_109_6 and var_109_5 >= 128 and var_109_5 <= 191 and var_109_6 >= 128 and var_109_6 <= 191

					if var_109_7 then
						if var_109_3 == 224 and var_109_5 < 160 then
							var_109_7 = false
						end

						if var_109_3 == 237 and var_109_5 > 159 then
							var_109_7 = false
						end
					end

					if var_109_7 then
						var_109_0[#var_109_0 + 1] = arg_109_0:sub(var_109_1, var_109_1 + 2)
						var_109_1 = var_109_1 + 3
					else
						var_109_0[#var_109_0 + 1] = "?"
						var_109_1 = var_109_1 + 1
					end
				elseif var_109_3 >= 240 and var_109_3 <= 244 then
					local var_109_8 = arg_109_0:byte(var_109_1 + 1)
					local var_109_9 = arg_109_0:byte(var_109_1 + 2)
					local var_109_10 = arg_109_0:byte(var_109_1 + 3)
					local var_109_11 = var_109_8 and var_109_9 and var_109_10 and var_109_8 >= 128 and var_109_8 <= 191 and var_109_9 >= 128 and var_109_9 <= 191 and var_109_10 >= 128 and var_109_10 <= 191

					if var_109_11 then
						if var_109_3 == 240 and var_109_8 < 144 then
							var_109_11 = false
						end

						if var_109_3 == 244 and var_109_8 > 143 then
							var_109_11 = false
						end
					end

					if var_109_11 then
						var_109_0[#var_109_0 + 1] = arg_109_0:sub(var_109_1, var_109_1 + 3)
						var_109_1 = var_109_1 + 4
					else
						var_109_0[#var_109_0 + 1] = "?"
						var_109_1 = var_109_1 + 1
					end
				else
					var_109_0[#var_109_0 + 1] = "?"
					var_109_1 = var_109_1 + 1
				end
			end

			return table.concat(var_109_0)
		end

		local function var_105_27(arg_110_0, arg_110_1)
			local var_110_0 = rawget(_G, "measureChineseMixedTextWidth")

			if type(var_110_0) == "function" then
				local var_110_1, var_110_2 = pcall(var_110_0, arg_110_1, arg_110_0)

				if var_110_1 and type(var_110_2) == "number" then
					return var_110_2
				end
			end

			local var_110_3, var_110_4 = pcall(arg_110_0.getWidth, arg_110_0, arg_110_1)

			if var_110_3 and type(var_110_4) == "number" then
				return var_110_4
			end

			local var_110_5 = var_105_26(arg_110_1)
			local var_110_6, var_110_7 = pcall(arg_110_0.getWidth, arg_110_0, var_110_5)

			if var_110_6 and type(var_110_7) == "number" then
				return var_110_7
			end

			return 0
		end

		local function var_105_28(arg_111_0)
			return tostring(arg_111_0 or ""):match("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*")
		end

		local function var_105_29(arg_112_0)
			local var_112_0

			for iter_112_0 in tostring(arg_112_0 or ""):gmatch("[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*") do
				var_112_0 = iter_112_0
			end

			return var_112_0
		end

		local function var_105_30(arg_113_0)
			if type(arg_113_0) ~= "string" or arg_113_0 == "" then
				return nil
			end

			if #arg_113_0 ~= 1 or arg_113_0:byte() > 127 then
				return "nonAscii"
			end

			if arg_113_0:match("%s") then
				return "space"
			end

			if arg_113_0:match("%a") then
				return "letter"
			end

			if arg_113_0:match("%d") or arg_113_0 == "+" or arg_113_0 == "-" or arg_113_0 == "%" then
				return "number"
			end

			return "punct"
		end

		local function var_105_31(arg_114_0, arg_114_1, arg_114_2)
			if (_G.currentGameLang or "ko") ~= "zh" then
				return 0
			end

			if not arg_114_0 or not arg_114_1 or arg_114_1 == "space" then
				return 0
			end

			if arg_114_0 ~= "nonAscii" ~= (arg_114_1 ~= "nonAscii") then
				return 2
			end

			if arg_114_2 == "%" then
				return 2
			end

			return 0
		end

		local var_105_32 = {
			hp = {
				r = 1,
				l = 1
			},
			atk = {
				r = 1,
				l = 1
			},
			aspd = {
				r = 1,
				l = 2
			},
			dist = {
				r = 1,
				l = 1
			},
			spd = {
				r = 0,
				l = 1
			},
			essence = {
				r = 2,
				l = 2
			},
			gold = {
				r = 1,
				l = 1
			}
		}
		local var_105_33 = 4

		local function var_105_34(arg_115_0)
			local var_115_0 = tostring(arg_115_0 or ""):match("^%{([%w_]+)%.png%}$")

			if not var_115_0 then
				return nil
			end

			return var_0_58(var_105_1, var_115_0), var_115_0
		end

		local function var_105_35(arg_116_0, arg_116_1)
			if not arg_116_0 then
				return 0
			end

			local var_116_0 = var_105_32[arg_116_1] or {
				r = 0,
				l = 0
			}

			return math.max(1, arg_116_0:getWidth() - (var_116_0.l or 0) - (var_116_0.r or 0)) + (arg_116_1 == "fire" and 2 or var_105_33)
		end

		local function var_105_36(arg_117_0, arg_117_1)
			local var_117_0 = tostring(arg_117_1 or "")
			local var_117_1 = 0
			local var_117_2 = 1

			for iter_117_0, iter_117_1, iter_117_2 in var_117_0:gmatch("()(%{[%w_]+%.png%})()") do
				if var_117_2 < iter_117_0 then
					var_117_1 = var_117_1 + var_105_27(arg_117_0, var_117_0:sub(var_117_2, iter_117_0 - 1))
				end

				local var_117_3, var_117_4 = var_105_34(iter_117_1)

				var_117_1 = var_117_1 + (var_117_3 and var_105_35(var_117_3, var_117_4) or var_105_27(arg_117_0, iter_117_1))
				var_117_2 = iter_117_2
			end

			if var_117_2 <= #var_117_0 then
				var_117_1 = var_117_1 + var_105_27(arg_117_0, var_117_0:sub(var_117_2))
			end

			return var_117_1
		end

		local var_105_37 = {
			： = true,
			？ = true,
			！ = true,
			． = true,
			， = true,
			〛 = true,
			["?"] = true,
			〗 = true,
			〕 = true,
			』 = true,
			」 = true,
			》 = true,
			〉 = true,
			[")"] = true,
			｝ = true,
			］ = true,
			） = true,
			[";"] = true,
			["!"] = true,
			["."] = true,
			[","] = true,
			["}"] = true,
			["]"] = true,
			[":"] = true,
			〙 = true,
			】 = true,
			… = true,
			、 = true,
			。 = true,
			； = true
		}

		local function var_105_38(arg_118_0, arg_118_1, arg_118_2, arg_118_3)
			local var_118_0 = ""
			local var_118_1 = rawget(_G, "utf8")

			if type(var_118_1) ~= "table" or not var_118_1.codes or not var_118_1.char then
				local var_118_2, var_118_3 = pcall(require, "utf8")

				if var_118_2 and type(var_118_3) == "table" then
					var_118_1 = var_118_3
				end
			end

			local var_118_4 = type(var_118_1) == "table" and var_118_1.codes and var_118_1.char

			local function var_118_5(arg_119_0)
				local var_119_0 = arg_119_0:match("^%s+$") ~= nil

				if var_118_0 == "" and var_119_0 then
					return
				end

				local var_119_1 = var_118_0 .. arg_119_0

				if var_105_36(arg_118_0, var_119_1) <= arg_118_2 then
					var_118_0 = var_119_1
				elseif var_118_0 ~= "" then
					if var_105_37[arg_119_0] then
						var_118_0 = var_118_0 .. arg_119_0
					else
						arg_118_3(var_118_0)

						var_118_0 = var_119_0 and "" or arg_119_0
					end
				else
					arg_118_3(arg_119_0)

					var_118_0 = ""
				end
			end

			local function var_118_6(arg_120_0)
				if arg_120_0 == "" then
					return
				end

				if var_118_4 then
					for iter_120_0, iter_120_1 in var_118_1.codes(arg_120_0) do
						var_118_5(var_118_1.char(iter_120_1))
					end
				else
					for iter_120_2 = 1, #arg_120_0 do
						var_118_5(arg_120_0:sub(iter_120_2, iter_120_2))
					end
				end
			end

			local var_118_7 = 1

			while var_118_7 <= #arg_118_1 do
				local var_118_8, var_118_9 = arg_118_1:find("%{[%w_]+%.png%}", var_118_7)

				if var_118_8 == var_118_7 then
					local var_118_10 = arg_118_1:sub(var_118_9 + 1)
					local var_118_11, var_118_12 = var_118_10:find("^%s*[%+%-]?%d[%d,%.]*")

					if var_118_12 then
						var_118_5(arg_118_1:sub(var_118_8, var_118_9) .. var_118_10:sub(1, var_118_12))

						var_118_7 = var_118_9 + var_118_12 + 1
					else
						var_118_5(arg_118_1:sub(var_118_8, var_118_9))

						var_118_7 = var_118_9 + 1
					end
				else
					local var_118_13 = var_118_8 and var_118_8 - 1 or #arg_118_1

					var_118_6(arg_118_1:sub(var_118_7, var_118_13))

					var_118_7 = var_118_13 + 1
				end
			end

			if var_118_0 ~= "" then
				arg_118_3(var_118_0)
			end
		end

		local function var_105_39(arg_121_0, arg_121_1, arg_121_2)
			local var_121_0 = {}

			if not arg_121_0 or arg_121_2 <= 0 then
				table.insert(var_121_0, tostring(arg_121_1 or ""))

				return var_121_0
			end

			local var_121_1 = var_105_26(arg_121_1)

			if var_121_1 == "" then
				table.insert(var_121_0, "")

				return var_121_0
			end

			local var_121_2 = {}

			for iter_121_0 in (var_121_1 .. "\n"):gmatch("(.-)\n") do
				table.insert(var_121_2, iter_121_0)
			end

			if #var_121_2 == 0 then
				var_121_2 = {
					var_121_1
				}
			end

			local function var_121_3(arg_122_0)
				arg_122_0 = (arg_122_0 or ""):gsub("%s+$", "")

				table.insert(var_121_0, arg_122_0)
			end

			for iter_121_1 = 1, #var_121_2 do
				local var_121_4 = var_105_26(var_121_2[iter_121_1] or "")

				if var_121_4 == "" then
					var_121_3("")
				elseif arg_121_2 >= var_105_36(arg_121_0, var_121_4) then
					var_121_3(var_121_4)
				elseif var_121_4:find("%s") then
					local var_121_5 = ""
					local var_121_6 = {}

					for iter_121_2 in var_121_4:gmatch("%S+") do
						table.insert(var_121_6, iter_121_2)
					end

					local function var_121_7(arg_123_0)
						return tostring(arg_123_0 or ""):match("^%{[%w_]+%.png%}$") ~= nil
					end

					local function var_121_8(arg_124_0)
						return tostring(arg_124_0 or ""):match("%{[%w_]+%.png%}$") ~= nil
					end

					local function var_121_9(arg_125_0)
						local var_125_0 = tostring(arg_125_0 or "")

						return var_125_0:match("^[%+%-]?%d") ~= nil or var_125_0:match("^%d+%+$") ~= nil
					end

					local function var_121_10(arg_126_0, arg_126_1, arg_126_2)
						if not arg_126_0 or not arg_126_1 or not arg_126_2 or not var_121_9(arg_126_2) then
							return false
						end

						local var_126_0 = tostring(arg_126_0) .. " " .. tostring(arg_126_1)

						return var_126_0 == "받는 피해" or var_126_0 == "Damage Taken" or var_126_0 == "First attack" or var_126_0 == "Last enemy" or var_126_0 == "per fallen" or var_126_0 == "wave end"
					end

					local var_121_11 = 1

					while var_121_11 <= #var_121_6 do
						local var_121_12 = var_121_6[var_121_11]
						local var_121_13 = var_121_6[var_121_11 + 1]
						local var_121_14 = var_121_6[var_121_11 + 2]

						if var_121_10(var_121_12, var_121_13, var_121_14) then
							var_121_12 = var_121_12 .. " " .. var_121_13 .. " " .. var_121_14
							var_121_11 = var_121_11 + 2
						elseif var_121_13 and (var_121_8(var_121_12) and var_121_9(var_121_13) or var_121_9(var_121_12) and var_121_7(var_121_13)) then
							var_121_12 = var_121_12 .. " " .. var_121_13
							var_121_11 = var_121_11 + 1
						end

						if var_121_5 == "" then
							if arg_121_2 >= var_105_36(arg_121_0, var_121_12) then
								var_121_5 = var_121_12
							else
								var_105_38(arg_121_0, var_121_12, arg_121_2, var_121_3)

								var_121_5 = ""
							end
						else
							local var_121_15 = var_121_5 .. " " .. var_121_12

							if arg_121_2 >= var_105_36(arg_121_0, var_121_15) then
								var_121_5 = var_121_15
							else
								var_121_3(var_121_5)

								if arg_121_2 >= var_105_36(arg_121_0, var_121_12) then
									var_121_5 = var_121_12
								else
									var_105_38(arg_121_0, var_121_12, arg_121_2, var_121_3)

									var_121_5 = ""
								end
							end
						end

						var_121_11 = var_121_11 + 1
					end

					if var_121_5 ~= "" then
						var_121_3(var_121_5)
					end
				else
					var_105_38(arg_121_0, var_121_4, arg_121_2, var_121_3)
				end
			end

			local var_121_16 = 2

			while var_121_16 <= #var_121_0 do
				local var_121_17 = var_121_0[var_121_16] or ""
				local var_121_18 = var_105_28(var_121_17)

				while var_121_18 and var_105_37[var_121_18] do
					var_121_0[var_121_16 - 1] = (var_121_0[var_121_16 - 1] or "") .. var_121_18
					var_121_17 = var_121_17:sub(#var_121_18 + 1)
					var_121_18 = var_105_28(var_121_17)
				end

				if var_121_17 == "" then
					table.remove(var_121_0, var_121_16)
				else
					var_121_0[var_121_16] = var_121_17
					var_121_16 = var_121_16 + 1
				end
			end

			local var_121_19 = 1

			while var_121_19 < #var_121_0 do
				local var_121_20 = var_121_0[var_121_19] or ""
				local var_121_21 = var_121_0[var_121_19 + 1] or ""
				local var_121_22 = var_121_20:match("(%{[%w_]+%.png%})%s*$")

				if var_121_22 and var_121_21:match("^[%+%-]?%d") then
					local var_121_23 = var_121_20:gsub("%s*%{[%w_]+%.png%}%s*$", "")
					local var_121_24 = var_121_22 .. " " .. var_121_21:gsub("^%s+", "")

					if var_121_23 == "" then
						var_121_0[var_121_19 + 1] = var_121_24

						table.remove(var_121_0, var_121_19)
					else
						var_121_0[var_121_19] = var_121_23
						var_121_0[var_121_19 + 1] = var_121_24
						var_121_19 = var_121_19 + 1
					end
				else
					var_121_19 = var_121_19 + 1
				end
			end

			while #var_121_0 > 1 and var_121_0[#var_121_0] == "" do
				table.remove(var_121_0)
			end

			if #var_121_0 == 0 then
				table.insert(var_121_0, "")
			end

			return var_121_0
		end

		local var_105_40 = tostring(var_105_14 or ""):gsub("(%{[%w_]+%.png%})%s+([%+%-]?%d)", "%1%2")
		local var_105_41 = var_105_26(var_105_40)

		if var_105_22 or var_105_23 then
			local var_105_42

			if var_105_23 then
				var_105_42 = tonumber(arg_105_0.ui and arg_105_0.ui.classCard and arg_105_0.ui.classCard.classSkillTooltipWidth) or 160
			else
				var_105_42 = tonumber(arg_105_0.ui and arg_105_0.ui.classCard and arg_105_0.ui.classCard.randomOptionTooltipWidth) or 120

				if (_G.currentGameLang or "ko") == "ja" then
					var_105_42 = var_105_42 + 10
				end
			end

			local var_105_43 = math.max(40, math.floor(var_105_42))
			local var_105_44 = 0

			for iter_105_0 in (var_105_41 .. "\n"):gmatch("(.-)\n") do
				local var_105_45 = var_105_36(var_105_0, iter_105_0)

				if var_105_44 < var_105_45 then
					var_105_44 = var_105_45
				end
			end

			local var_105_46 = math.ceil(var_105_44 + var_105_15 * 2 + 2)

			if var_105_46 < 40 then
				var_105_46 = 40
			end

			if var_105_43 < var_105_46 then
				var_105_46 = var_105_43
			end

			var_105_24 = var_105_46
			var_105_25 = var_105_24
		end

		local var_105_47 = var_105_39(var_105_0, var_105_41, var_105_25 - var_105_15 * 2)
		local var_105_48 = {}
		local var_105_49

		if arg_105_1.paragraphStyles then
			var_105_47 = {}

			local var_105_50 = 0

			for iter_105_1 in (var_105_41 .. "\n"):gmatch("(.-)\n") do
				var_105_50 = var_105_50 + 1

				if arg_105_1.paragraphStyles[var_105_50] and arg_105_1.paragraphStyles[var_105_50].separator then
					var_105_49 = #var_105_47 + 1
				end

				for iter_105_2, iter_105_3 in ipairs(var_105_39(var_105_0, iter_105_1, var_105_25 - var_105_15 * 2)) do
					var_105_47[#var_105_47 + 1] = iter_105_3
					var_105_48[#var_105_47] = arg_105_1.paragraphStyles[var_105_50]
				end
			end
		end

		local var_105_51 = #var_105_47 * var_105_19 + math.max(0, #var_105_47 - 1) * var_105_20
		local var_105_52 = arg_105_1.cooldown and tonumber(arg_105_1.cooldown)
		local var_105_53 = not var_105_52 and arg_105_1.cooldownLabel or nil
		local var_105_54 = (var_105_52 or var_105_53) and 2 * var_105_20 + 1 + var_105_19 or 0
		local var_105_55 = (var_105_23 or var_105_22) and #var_105_47 >= 2
		local var_105_56 = var_105_55 and var_105_20 + 1 or 0
		local var_105_57 = 7
		local var_105_58 = 4
		local var_105_59 = var_105_49 and var_105_57 + 1 + var_105_58 - var_105_20 or 0
		local var_105_60 = math.ceil(var_105_51 + var_105_16 + var_105_17 + 2 + var_105_54 + var_105_56 + var_105_59)
		local var_105_61 = 4
		local var_105_62 = 8
		local var_105_63 = arg_105_2.x + (arg_105_2.previewUpgrade and 1 or 2)
		local var_105_64 = arg_105_2.y + arg_105_2.h + var_105_61
		local var_105_65 = 0

		if var_105_22 or var_105_23 then
			var_105_63 = arg_105_2.x + arg_105_2.w / 2 - var_105_24 / 2

			if var_105_22 and arg_105_2 and arg_105_2.source == "imprint" then
				var_105_65 = tonumber(arg_105_0.ui and arg_105_0.ui.imprintPanel and arg_105_0.ui.imprintPanel.randomOption and arg_105_0.ui.imprintPanel.randomOption.tooltipOffsetY) or 0
			elseif var_105_22 then
				var_105_65 = tonumber(arg_105_0.ui and arg_105_0.ui.classCard and arg_105_0.ui.classCard.randomOptionTooltipOffsetY) or 0
			elseif arg_105_2 and arg_105_2.source == "imprintSkill" then
				var_105_65 = tonumber(arg_105_0.ui and arg_105_0.ui.imprintPanel and arg_105_0.ui.imprintPanel.skillFrame and arg_105_0.ui.imprintPanel.skillFrame.tooltipOffsetY) or 0
			else
				var_105_65 = tonumber(arg_105_0.ui and arg_105_0.ui.classCard and arg_105_0.ui.classCard.classSkillTooltipOffsetY) or 0
			end
		end

		local var_105_66 = arg_105_0.ui.virtual.W
		local var_105_67 = arg_105_0.ui.virtual.H

		if var_105_66 < var_105_63 + var_105_24 then
			var_105_63 = var_105_66 - var_105_24
		end

		if var_105_63 < 0 then
			var_105_63 = 0
		end

		if var_105_67 < var_105_64 + var_105_60 then
			var_105_64 = arg_105_2.y - var_105_60 - var_105_61
		end

		local var_105_68 = var_105_64 - var_105_62

		if (var_105_22 or var_105_23) and var_105_65 ~= 0 then
			var_105_68 = var_105_68 + var_105_65
		end

		if var_105_67 < var_105_68 + var_105_60 then
			var_105_68 = var_105_67 - var_105_60
		end

		if var_105_68 < 0 then
			var_105_68 = 0
		end

		local var_105_69, var_105_70 = math.floor(var_105_63), math.floor(var_105_68)
		local var_105_71 = var_105_70 + var_105_8
		local var_105_72 = {
			var_0_34.boxFill[1],
			var_0_34.boxFill[2],
			var_0_34.boxFill[3],
			1
		}

		var_59_11(arg_105_0, var_105_69, var_105_71, var_105_24, var_105_60, var_105_72, var_105_72)

		local var_105_73 = {
			0.6,
			1,
			0.6,
			1 * var_105_7
		}
		local var_105_74 = {
			0.9,
			0.9,
			0.9,
			1 * var_105_7
		}

		local function var_105_75(arg_127_0, arg_127_1, arg_127_2)
			local var_127_0 = tostring(arg_127_0 or "")

			if pcall(love.graphics.print, var_127_0, arg_127_1, arg_127_2) then
				return true
			end

			local var_127_1 = var_105_26(var_127_0)

			return pcall(love.graphics.print, var_127_1, arg_127_1, arg_127_2)
		end

		local var_105_76 = tostring(arg_105_1.id or ""):sub(1, 13) == "randomOption_"

		for iter_105_4, iter_105_5 in ipairs(var_105_47) do
			local var_105_77 = var_105_69 + var_105_15
			local var_105_78 = var_105_55 and iter_105_4 >= 2 and var_105_56 or 0

			if var_105_49 and var_105_49 <= iter_105_4 then
				var_105_78 = var_105_78 + var_105_59
			end

			local var_105_79 = var_105_71 + var_105_16 + (iter_105_4 - 1) * (var_105_19 + var_105_20) + var_105_78

			if iter_105_4 == var_105_49 then
				local var_105_80 = var_105_79 - var_105_58 - 1

				love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_105_7)
				love.graphics.rectangle("fill", var_105_69 + var_105_15, var_105_80, var_105_24 - var_105_15 * 2, 1)
			end

			local var_105_81 = var_105_74
			local var_105_82 = var_105_48[iter_105_4]

			if var_105_82 then
				var_105_81 = {
					var_105_82.text[1],
					var_105_82.text[2],
					var_105_82.text[3],
					var_105_7
				}
			end

			if (var_105_76 or var_105_23) and iter_105_4 == 1 then
				var_105_81 = {
					1,
					0.9,
					0.5,
					1 * var_105_7
				}
			end

			local function var_105_83(arg_128_0)
				local var_128_0
				local var_128_1

				local function var_128_2(arg_129_0, arg_129_1)
					arg_129_0 = tostring(arg_129_0 or "")

					if arg_129_0 == "" then
						return
					end

					var_105_77 = var_105_77 + var_105_31(var_128_0, var_105_30(var_105_28(arg_129_0)), var_128_1)
					var_105_77 = var_0_21(arg_129_0, var_105_77, arg_129_1, 1, function(arg_130_0)
						return var_105_27(var_105_0, arg_130_0)
					end, function(arg_131_0, arg_131_1, arg_131_2, arg_131_3)
						love.graphics.setColor(arg_131_1[1], arg_131_1[2], arg_131_1[3], (arg_131_1[4] or 1) * arg_131_3)
						var_105_75(arg_131_0, arg_131_2, var_105_79)
					end)
					var_128_1 = var_105_29(arg_129_0) or var_128_1
					var_128_0 = var_105_30(var_128_1) or var_128_0
				end

				local var_128_3 = 1

				for iter_128_0, iter_128_1 in arg_128_0:gmatch("()[%d%.%%]+()") do
					if var_128_3 < iter_128_0 then
						local var_128_4 = arg_128_0:sub(var_128_3, iter_128_0 - 1)

						var_128_2(var_128_4, var_105_81)
					end

					local var_128_5 = arg_128_0:sub(iter_128_0, iter_128_1 - 1)

					var_128_2(var_128_5, var_105_73)

					var_128_3 = iter_128_1
				end

				if var_128_3 <= #arg_128_0 then
					local var_128_6 = arg_128_0:sub(var_128_3)

					var_128_2(var_128_6, var_105_81)
				end
			end

			local var_105_84 = 1

			for iter_105_6, iter_105_7, iter_105_8 in iter_105_5:gmatch("()(%{[%w_]+%.png%})()") do
				if var_105_84 < iter_105_6 then
					var_105_83(iter_105_5:sub(var_105_84, iter_105_6 - 1))
				end

				local var_105_85, var_105_86 = var_105_34(iter_105_7)

				if var_105_85 then
					local var_105_87 = var_105_32[var_105_86] or {
						r = 0,
						l = 0
					}
					local var_105_88 = math.floor(var_105_79 + (var_105_19 - var_105_85:getHeight()) * 0.5 + 0.5) + 1

					love.graphics.setColor(1, 1, 1, var_105_7)
					love.graphics.draw(var_105_85, var_105_77 - (var_105_87.l or 0), var_105_88)

					var_105_77 = var_105_77 + var_105_35(var_105_85, var_105_86)
				else
					var_105_83(iter_105_7)
				end

				var_105_84 = iter_105_8
			end

			if var_105_84 <= #iter_105_5 then
				var_105_83(iter_105_5:sub(var_105_84))
			end
		end

		love.graphics.setColor(1, 1, 1, 1)

		if var_105_55 then
			local var_105_89 = var_105_71 + var_105_16 + var_105_19 + var_105_20 + 1

			love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_105_7)
			love.graphics.rectangle("fill", var_105_69 + var_105_15, var_105_89, var_105_24 - var_105_15 * 2, 1)
		end

		if var_105_53 then
			local var_105_90 = var_105_71 + var_105_16 + var_105_51 + var_105_56 + var_105_59 + var_105_20 + 1

			love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_105_7)
			love.graphics.rectangle("fill", var_105_69 + var_105_15, var_105_90, var_105_24 - var_105_15 * 2, 1)
			love.graphics.setColor(0.89, 0.776, 0.353, 1 * var_105_7)
			var_105_75(var_105_53, var_105_69 + var_105_15, var_105_90 + var_105_20)
			love.graphics.setColor(1, 1, 1, 1)
		elseif var_105_52 then
			local var_105_91 = var_105_71 + var_105_16 + var_105_51 + var_105_56 + var_105_59 + var_105_20 + 1
			local var_105_92 = var_105_91 + var_105_20

			love.graphics.setColor(0.35, 0.35, 0.35, 0.8 * var_105_7)
			love.graphics.rectangle("fill", var_105_69 + var_105_15, var_105_91, var_105_24 - var_105_15 * 2, 1)

			local var_105_93 = _G.currentGameLang or "ko"
			local var_105_94 = var_0_4.getText("cooldown_fmt", var_105_93)

			if type(var_105_94) ~= "string" or var_105_94 == "" or var_105_94 == "cooldown_fmt" then
				var_105_94 = "쿨타임 %d초"
			end

			local var_105_95 = tostring(var_105_52)
			local var_105_96, var_105_97 = var_105_94:match("^(.-)%%d(.*)$")

			if not var_105_96 then
				var_105_96, var_105_97 = "", var_105_94
			end

			local var_105_98 = var_105_69 + var_105_15

			love.graphics.setColor(0.55, 0.55, 0.55, 1 * var_105_7)
			var_105_75(var_105_96, var_105_98, var_105_92)

			local var_105_99 = var_105_98 + var_105_27(var_105_0, var_105_96)

			love.graphics.setColor(0.35, 0.85, 1, 1 * var_105_7)
			var_105_75(var_105_95, var_105_99, var_105_92)

			local var_105_100 = var_105_99 + var_105_27(var_105_0, var_105_95)

			love.graphics.setColor(0.55, 0.55, 0.55, 1 * var_105_7)
			var_105_75(var_105_97, var_105_100, var_105_92)
			love.graphics.setColor(1, 1, 1, 1)
		end
	end

	local function var_59_18(arg_132_0, arg_132_1, arg_132_2, arg_132_3, arg_132_4)
		if not var_0_5.isEnabled() then
			return
		end

		if not arg_132_0 or not arg_132_0.ui or not arg_132_1 or not arg_132_2 then
			return
		end

		local var_132_0 = _G.currentGameLang or "ko"
		local var_132_1 = var_0_5.getName(arg_132_1, var_132_0)

		if not var_132_1 or var_132_1 == "" then
			return
		end

		local var_132_2 = arg_132_0.ui.synergyWindow and arg_132_0.ui.synergyWindow.tooltip or {}
		local var_132_3 = arg_132_4 and 0 or math.max(0, tonumber(var_132_2.hoverDelay) or var_0_39)
		local var_132_4, var_132_5 = arg_132_0:iconTooltipReveal("faction", tostring(arg_132_2.source) .. "|" .. tostring(arg_132_1) .. "|effects", var_132_3)

		if var_132_4 <= 0 then
			return
		end

		local var_132_6 = var_0_5.getSynergyTooltip(arg_132_1, var_132_0)
		local var_132_7 = var_0_5.getThresholds(arg_132_1) or {
			2,
			4,
			6
		}
		local var_132_8 = var_132_7[#var_132_7]
		local var_132_9 = math.max(0, math.min(var_132_8, math.floor(tonumber(arg_132_3) or 0)))
		local var_132_10
		local var_132_11

		for iter_132_0, iter_132_1 in ipairs(var_132_7) do
			if iter_132_1 <= var_132_9 then
				var_132_10 = iter_132_1
			else
				var_132_11 = var_132_11 or iter_132_1
			end
		end

		local var_132_12 = var_132_11 or var_132_8

		local function var_132_13(arg_133_0, ...)
			local var_133_0 = var_0_4.getText(arg_133_0, var_132_0)
			local var_133_1, var_133_2 = pcall(string.format, var_133_0, ...)

			return var_133_1 and var_133_2 or tostring(var_133_0)
		end

		local var_132_14 = var_132_13("synergy.tooltip.count_fmt", string.format("%d/%d", var_132_9, var_132_12))
		local var_132_15 = love.graphics.getFont()
		local var_132_16 = arg_132_0.ui.font or var_132_15
		local var_132_17 = type(rawget(_G, "getChineseLatinFallbackFont")) == "function" and _G.getChineseLatinFallbackFont(var_132_16) or nil

		if var_132_16 then
			love.graphics.setFont(var_132_16)
		end

		local var_132_18 = math.max(var_132_16 and var_132_16:getHeight() or 12, var_132_17 and var_132_17:getHeight() or 0)
		local var_132_19 = 7
		local var_132_20 = 6
		local var_132_21 = math.max(0, tonumber(var_132_2.descriptionLineGap) or 3)
		local var_132_22 = math.max(0, tonumber(var_132_2.effectDescriptionGap) or 6)
		local var_132_23 = (var_132_2.factionTextColors or {})[arg_132_1] or {
			1,
			0.86,
			0.42,
			1
		}
		local var_132_24 = {
			{
				text = var_132_1,
				color = {
					1,
					0.9,
					0.5,
					1
				}
			},
			{
				separator = true,
				gap = math.max(0, tonumber(var_132_2.headerSeparatorGap) or 5)
			},
			{
				gap = 4,
				text = var_132_14,
				color = {
					1,
					1,
					1,
					1
				}
			}
		}

		if var_132_6 then
			var_132_24[#var_132_24 + 1] = {
				gap = 8,
				text = var_132_6.effectName,
				color = {
					1,
					0.94,
					0.78,
					1
				}
			}
			var_132_24[#var_132_24 + 1] = {
				text = var_132_6.condition,
				color = {
					0.76,
					0.76,
					0.76,
					1
				},
				highlightText = var_132_1,
				highlightColor = var_132_23,
				gap = var_132_22
			}

			for iter_132_2, iter_132_3 in ipairs(var_132_6.tiers or {}) do
				local var_132_25 = {
					0.43,
					0.43,
					0.43,
					1
				}

				if iter_132_3.required == var_132_10 then
					var_132_25 = {
						1,
						0.82,
						0.3,
						1
					}
				elseif iter_132_3.required == var_132_11 then
					var_132_25 = {
						1,
						1,
						1,
						1
					}
				end

				var_132_24[#var_132_24 + 1] = {
					columnLabel = var_132_13("synergy.tooltip.count_fmt", tostring(iter_132_3.required)),
					columnValue = iter_132_3.value,
					color = var_132_25,
					gap = iter_132_2 == 1 and 8 or 3
				}
			end

			if var_132_6.footer and var_132_6.footer ~= "" then
				var_132_24[#var_132_24 + 1] = {
					gap = 7,
					text = var_132_6.footer,
					color = {
						0.65,
						0.65,
						0.65,
						1
					}
				}
			end
		end

		local var_132_26 = arg_132_0.battlefield and arg_132_0.battlefield.assets
		local var_132_27 = 4
		local var_132_28 = {
			hp = {
				r = 1,
				l = 1
			},
			atk = {
				r = 1,
				l = 1
			},
			aspd = {
				r = 1,
				l = 2
			},
			dist = {
				r = 1,
				l = 1
			},
			spd = {
				r = 0,
				l = 1
			},
			essence = {
				r = 2,
				l = 2
			},
			gold = {
				r = 1,
				l = 1
			}
		}

		local function var_132_29(arg_134_0)
			arg_134_0 = tostring(arg_134_0 or "")

			local var_134_0 = rawget(_G, "measureChineseMixedTextWidth")

			if type(var_134_0) == "function" then
				local var_134_1, var_134_2 = pcall(var_134_0, arg_134_0, var_132_16)

				if var_134_1 and type(var_134_2) == "number" then
					return var_134_2
				end
			end

			if not var_132_16 then
				return 0
			end

			local var_134_3, var_134_4 = pcall(var_132_16.getWidth, var_132_16, arg_134_0)

			return var_134_3 and tonumber(var_134_4) or 0
		end

		local function var_132_30(arg_135_0)
			local var_135_0 = tostring(arg_135_0 or ""):match("^%{([%w_]+)%.png%}$")

			if not var_135_0 then
				return nil
			end

			return var_0_58(var_132_26, var_135_0), var_135_0
		end

		local function var_132_31(arg_136_0, arg_136_1)
			if not arg_136_0 then
				return 0
			end

			local var_136_0 = var_132_28[arg_136_1] or {
				r = 0,
				l = 0
			}

			return math.max(1, arg_136_0:getWidth() - (var_136_0.l or 0) - (var_136_0.r or 0)) + (arg_136_1 == "fire" and 2 or var_132_27)
		end

		local function var_132_32(arg_137_0)
			arg_137_0 = tostring(arg_137_0 or "")

			local var_137_0 = {}

			for iter_137_0 in (arg_137_0 .. "\n"):gmatch("(.-)\n") do
				var_137_0[#var_137_0 + 1] = iter_137_0
			end

			if #var_137_0 == 0 then
				var_137_0[1] = ""
			end

			return var_137_0
		end

		local function var_132_33(arg_138_0)
			arg_138_0 = tostring(arg_138_0 or "")

			local var_138_0 = 0
			local var_138_1 = 1

			for iter_138_0, iter_138_1, iter_138_2 in arg_138_0:gmatch("()(%{[%w_]+%.png%})()") do
				if var_138_1 < iter_138_0 then
					var_138_0 = var_138_0 + var_132_29(arg_138_0:sub(var_138_1, iter_138_0 - 1))
				end

				local var_138_2, var_138_3 = var_132_30(iter_138_1)

				var_138_0 = var_138_0 + (var_138_2 and var_132_31(var_138_2, var_138_3) or var_132_29(iter_138_1))
				var_138_1 = iter_138_2
			end

			if var_138_1 <= #arg_138_0 then
				var_138_0 = var_138_0 + var_132_29(arg_138_0:sub(var_138_1))
			end

			return var_138_0
		end

		local function var_132_34(arg_139_0)
			local var_139_0 = 0

			for iter_139_0, iter_139_1 in ipairs(var_132_32(arg_139_0)) do
				var_139_0 = math.max(var_139_0, var_132_33(iter_139_1))
			end

			return var_139_0
		end

		local function var_132_35(arg_140_0, arg_140_1, arg_140_2, arg_140_3, arg_140_4, arg_140_5)
			arg_140_0 = tostring(arg_140_0 or "")
			arg_140_3 = arg_140_3 or {
				1,
				1,
				1,
				1
			}

			local var_140_0 = arg_140_1
			local var_140_1 = 1

			local function var_140_2(arg_141_0, arg_141_1)
				if arg_141_0 == "" then
					return
				end

				arg_141_1 = arg_141_1 or arg_140_3

				love.graphics.setColor(arg_141_1[1], arg_141_1[2], arg_141_1[3], arg_141_1[4] or 1)
				love.graphics.print(arg_141_0, var_140_0, arg_140_2)

				var_140_0 = var_140_0 + var_132_29(arg_141_0)
			end

			local function var_140_3(arg_142_0)
				if arg_142_0 == "" then
					return
				end

				if not arg_140_4 or arg_140_4 == "" or not arg_140_5 then
					var_140_2(arg_142_0, arg_140_3)

					return
				end

				local var_142_0 = 1

				while var_142_0 <= #arg_142_0 do
					local var_142_1, var_142_2 = arg_142_0:find(arg_140_4, var_142_0, true)

					if not var_142_1 then
						var_140_2(arg_142_0:sub(var_142_0), arg_140_3)

						break
					end

					if var_142_0 < var_142_1 then
						var_140_2(arg_142_0:sub(var_142_0, var_142_1 - 1), arg_140_3)
					end

					var_140_2(arg_142_0:sub(var_142_1, var_142_2), arg_140_5)

					var_142_0 = var_142_2 + 1
				end
			end

			for iter_140_0, iter_140_1, iter_140_2 in arg_140_0:gmatch("()(%{[%w_]+%.png%})()") do
				if var_140_1 < iter_140_0 then
					var_140_3(arg_140_0:sub(var_140_1, iter_140_0 - 1))
				end

				local var_140_4, var_140_5 = var_132_30(iter_140_1)

				if var_140_4 then
					local var_140_6 = var_132_28[var_140_5] or {
						r = 0,
						l = 0
					}
					local var_140_7 = math.floor(arg_140_2 + (var_132_18 - var_140_4:getHeight()) * 0.5 + 0.5) + 1

					love.graphics.setColor(1, 1, 1, arg_140_3[4] or 1)
					love.graphics.draw(var_140_4, var_140_0 - (var_140_6.l or 0), var_140_7)

					var_140_0 = var_140_0 + var_132_31(var_140_4, var_140_5)
				else
					var_140_3(iter_140_1)
				end

				var_140_1 = iter_140_2
			end

			if var_140_1 <= #arg_140_0 then
				var_140_3(arg_140_0:sub(var_140_1))
			end
		end

		local var_132_36 = 0
		local var_132_37 = 0
		local var_132_38 = 8

		for iter_132_4, iter_132_5 in ipairs(var_132_24) do
			if iter_132_5.columnLabel then
				var_132_37 = math.max(var_132_37, var_132_34(iter_132_5.columnLabel))
			end
		end

		local var_132_39 = var_132_20

		for iter_132_6, iter_132_7 in ipairs(var_132_24) do
			var_132_39 = var_132_39 + (iter_132_7.gap or 0)
			iter_132_7.drawY = var_132_39

			if iter_132_7.separator then
				var_132_39 = var_132_39 + 1
			elseif iter_132_7.columnLabel then
				var_132_36 = math.max(var_132_36, var_132_37 + var_132_38 + var_132_34(iter_132_7.columnValue))
				var_132_39 = var_132_39 + var_132_18
			else
				iter_132_7.textLines = var_132_32(iter_132_7.text)
				var_132_36 = math.max(var_132_36, var_132_34(iter_132_7.text))
				var_132_39 = var_132_39 + #iter_132_7.textLines * var_132_18 + math.max(0, #iter_132_7.textLines - 1) * var_132_21
			end
		end

		local var_132_40 = math.ceil(var_132_36 + var_132_19 * 2)
		local var_132_41 = math.ceil(var_132_39 + var_132_20)
		local var_132_42 = 4
		local var_132_43 = arg_132_0.ui.virtual.W
		local var_132_44 = arg_132_0.ui.virtual.H
		local var_132_45 = arg_132_2.x - var_132_40 - var_132_42

		if var_132_45 < 0 then
			var_132_45 = arg_132_2.x + arg_132_2.w + var_132_42
		end

		local var_132_46 = arg_132_2.y + arg_132_2.h * 0.5 - var_132_41 * 0.5 + var_132_5
		local var_132_47 = math.max(0, math.min(var_132_45, var_132_43 - var_132_40))
		local var_132_48 = math.max(0, math.min(var_132_46, var_132_44 - var_132_41))
		local var_132_49, var_132_50 = math.floor(var_132_47), math.floor(var_132_48)
		local var_132_51 = {
			var_0_34.boxFill[1],
			var_0_34.boxFill[2],
			var_0_34.boxFill[3],
			0.98 * var_132_4
		}

		var_59_11(arg_132_0, var_132_49, var_132_50, var_132_40, var_132_41, var_132_51, nil)

		for iter_132_8, iter_132_9 in ipairs(var_132_24) do
			if iter_132_9.separator then
				love.graphics.setColor(0.35, 0.35, 0.35, 0.9 * var_132_4)
				love.graphics.rectangle("fill", var_132_49 + var_132_19, var_132_50 + iter_132_9.drawY, var_132_40 - var_132_19 * 2, 1)
			else
				local var_132_52 = iter_132_9.color or {
					1,
					1,
					1,
					1
				}
				local var_132_53 = {
					var_132_52[1],
					var_132_52[2],
					var_132_52[3],
					(var_132_52[4] or 1) * var_132_4
				}

				if iter_132_9.columnLabel then
					local var_132_54 = var_132_34(iter_132_9.columnLabel)

					var_132_35(iter_132_9.columnLabel, var_132_49 + var_132_19 + var_132_37 - var_132_54, var_132_50 + iter_132_9.drawY - 1, var_132_53)
					var_132_35(iter_132_9.columnValue, var_132_49 + var_132_19 + var_132_37 + var_132_38, var_132_50 + iter_132_9.drawY - 1, var_132_53)
				else
					local var_132_55 = iter_132_9.highlightColor and {
						iter_132_9.highlightColor[1],
						iter_132_9.highlightColor[2],
						iter_132_9.highlightColor[3],
						(iter_132_9.highlightColor[4] or 1) * var_132_4
					} or nil

					for iter_132_10, iter_132_11 in ipairs(iter_132_9.textLines or {
						iter_132_9.text
					}) do
						var_132_35(iter_132_11, var_132_49 + var_132_19, var_132_50 + iter_132_9.drawY - 1 + (iter_132_10 - 1) * (var_132_18 + var_132_21), var_132_53, iter_132_9.highlightText, var_132_55)
					end
				end
			end
		end

		if var_132_15 then
			love.graphics.setFont(var_132_15)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	local function var_59_19(arg_143_0, arg_143_1, arg_143_2, arg_143_3)
		if not var_0_5.isEnabled() then
			return
		end

		if not arg_143_0 or not arg_143_0.ui or not arg_143_1 or not arg_143_2 then
			return
		end

		if arg_143_2.source == "synergyFaction" then
			return var_59_18(arg_143_0, arg_143_1, arg_143_2, arg_143_3)
		end

		local var_143_0 = arg_143_0._expandedFactionTooltip

		if var_143_0 and var_143_0.factionId == arg_143_1 and var_143_0.anchor.source == arg_143_2.source then
			var_143_0.anchor = arg_143_2

			local var_143_1 = var_0_5.countUniqueTypes(var_143_0.battlefield and var_143_0.battlefield.rosterUnits or {})

			return var_59_18(arg_143_0, arg_143_1, arg_143_2, var_143_1[arg_143_1], true)
		end

		local var_143_2 = _G.currentGameLang or "ko"
		local var_143_3 = "faction." .. tostring(arg_143_1)
		local var_143_4 = var_0_4.getText(var_143_3, var_143_2)

		if not var_143_4 or var_143_4 == var_143_3 or var_143_4 == "" then
			return
		end

		local var_143_5, var_143_6 = arg_143_0:iconTooltipReveal("faction", tostring(arg_143_2.source) .. "|" .. tostring(arg_143_1) .. "|name")

		if var_143_5 <= 0 then
			return
		end

		local var_143_7 = love.graphics.getFont()
		local var_143_8 = arg_143_0.ui.font or var_143_7
		local var_143_9 = type(rawget(_G, "getChineseLatinFallbackFont")) == "function" and _G.getChineseLatinFallbackFont(var_143_8) or nil

		if var_143_8 then
			love.graphics.setFont(var_143_8)
		end

		local var_143_10 = 0
		local var_143_11 = rawget(_G, "measureChineseMixedTextWidth")

		if type(var_143_11) == "function" then
			local var_143_12, var_143_13 = pcall(var_143_11, var_143_4, var_143_8)

			if var_143_12 and type(var_143_13) == "number" then
				var_143_10 = var_143_13
			end
		end

		if var_143_10 == 0 and var_143_8 then
			local var_143_14, var_143_15 = pcall(var_143_8.getWidth, var_143_8, var_143_4)

			if var_143_14 and type(var_143_15) == "number" then
				var_143_10 = var_143_15
			end
		end

		local var_143_16 = math.max(var_143_8 and var_143_8:getHeight() or 12, var_143_9 and var_143_9:getHeight() or 0)
		local var_143_17 = 6
		local var_143_18 = 4
		local var_143_19 = math.ceil(var_143_10 + var_143_17 * 2)
		local var_143_20 = math.ceil(var_143_16 + var_143_18 * 2)
		local var_143_21 = 0
		local var_143_22 = arg_143_2.x + arg_143_2.w * 0.5 - var_143_19 * 0.5
		local var_143_23 = arg_143_2.y - var_143_20 - var_143_21
		local var_143_24 = arg_143_0.ui.virtual.W
		local var_143_25 = arg_143_0.ui.virtual.H

		if var_143_24 < var_143_22 + var_143_19 then
			var_143_22 = var_143_24 - var_143_19
		end

		if var_143_22 < 0 then
			var_143_22 = 0
		end

		if var_143_23 < 0 then
			var_143_23 = arg_143_2.y + arg_143_2.h + var_143_21
		end

		local var_143_26 = var_143_23 + var_143_6

		if var_143_25 < var_143_26 + var_143_20 then
			var_143_26 = var_143_25 - var_143_20
		end

		local var_143_27, var_143_28 = math.floor(var_143_22), math.floor(var_143_26)
		local var_143_29 = {
			var_0_34.boxFill[1],
			var_0_34.boxFill[2],
			var_0_34.boxFill[3],
			0.98 * var_143_5
		}

		var_59_11(arg_143_0, var_143_27, var_143_28, var_143_19, var_143_20, var_143_29, nil)
		love.graphics.setColor(1, 0.9, 0.5, var_143_5)
		love.graphics.print(var_143_4, var_143_27 + var_143_17, var_143_28 + var_143_18 - 1)

		if var_143_7 then
			love.graphics.setFont(var_143_7)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	local function var_59_20(arg_144_0, arg_144_1, arg_144_2, arg_144_3)
		if not arg_144_1 or not arg_144_2 then
			return
		end

		local var_144_0 = _G.currentGameLang or "ko"
		local var_144_1 = var_0_4.getRandomOptionEffect(arg_144_1.id, arg_144_1.effect or arg_144_1.desc or "", var_144_0, arg_144_1)

		if arg_144_1.variant then
			var_144_1 = var_0_4.applyRandomOptionVariant(var_144_1, arg_144_1.variant)
		end

		local var_144_2 = var_0_4.getImprintName(arg_144_1.id, arg_144_1.name or "Random Option", var_144_0)

		if var_144_1 == "" then
			var_144_1 = var_144_2
		else
			var_144_1 = var_144_2 .. "\n" .. var_144_1
		end

		local var_144_3 = {
			level = 1,
			id = "randomOption_" .. tostring(arg_144_1.id or arg_144_1.name or ""),
			name = var_144_2,
			desc = var_144_1,
			paragraphStyles = tostring(arg_144_1.id) == "24" and {
				[3] = {
					separator = true,
					text = {
						0.72,
						0.84,
						0.65
					}
				},
				[4] = {
					text = {
						0.62,
						0.7,
						0.78
					}
				}
			} or nil
		}
		local var_144_4 = {
			previewUpgrade = false,
			x = arg_144_2.x,
			y = arg_144_2.y,
			w = arg_144_2.w,
			h = arg_144_2.h,
			index = arg_144_2.index,
			source = arg_144_2.source
		}

		var_59_17(arg_144_0, var_144_3, var_144_4)
	end

	local function var_59_21(arg_145_0, arg_145_1, arg_145_2)
		if not arg_145_1 or not arg_145_2 then
			return
		end

		local var_145_0 = _G.currentGameLang or "ko"
		local var_145_1 = tostring(var_0_4.getSkillName(arg_145_1.id, arg_145_1.name, var_145_0) or "")
		local var_145_2 = tostring(var_0_4.getSkillDesc(arg_145_1.id, arg_145_1.desc, var_145_0) or "")

		if var_145_1 == "" and var_145_2 == "" then
			return
		end

		if var_145_1 == "" then
			var_145_1 = var_0_4.getText("skill_label", var_145_0)
		end

		local var_145_3 = arg_145_1.cooldown and tonumber(arg_145_1.cooldown)

		if var_145_3 and var_145_3 <= 0 then
			var_145_3 = nil
		end

		local var_145_4 = arg_145_1.cooldown == "passive" and var_0_4.getText("passive_label", var_145_0) or nil
		local var_145_5 = {
			level = 1,
			id = "classSkill_" .. var_145_1,
			name = var_145_1,
			desc = var_145_2 == "" and var_145_1 or var_145_1 .. "\n" .. var_145_2,
			cooldown = var_145_3,
			cooldownLabel = var_145_4
		}
		local var_145_6 = {
			previewUpgrade = false,
			x = arg_145_2.x,
			y = arg_145_2.y,
			w = arg_145_2.w,
			h = arg_145_2.h,
			index = arg_145_2.index,
			source = arg_145_2.source or "classSkill"
		}

		var_59_17(arg_145_0, var_145_5, var_145_6)
	end

	function var_59_0.draw(arg_146_0, arg_146_1)
		local var_146_0 = arg_146_0.mouseX
		local var_146_1 = arg_146_0.mouseY
		local var_146_2 = arg_146_0.ui or arg_146_1 and arg_146_1.ui or _G.ui

		if var_146_2 and var_146_2.pauseOverlayState and var_146_2.pauseOverlayState.active then
			var_146_0, var_146_1 = -9999, -9999
		end

		if arg_146_1 and arg_146_1.classSelect and arg_146_1.classSelect.mode == "merc_contract" then
			if var_0_3 and var_0_3.hidePanelImmediately then
				var_0_3.hidePanelImmediately()
			else
				if var_0_3 and var_0_3.cancelHold then
					var_0_3.cancelHold()
				end

				if var_0_3 and var_0_3.hideBattlefieldPreview then
					var_0_3.hideBattlefieldPreview()
				end
			end

			local var_146_3 = arg_146_1.classSelect._hoveredRandomOption

			if var_146_3 then
				var_59_20(arg_146_0, var_146_3.option, var_146_3.anchor, var_146_3.sym)
			end

			var_59_12(arg_146_0)

			return
		end

		if arg_146_1 and arg_146_1.gameOver then
			local var_146_4 = arg_146_0.ui or arg_146_1 and arg_146_1.ui or _G.ui

			if var_146_4 then
				local var_146_5 = require("src.game.combat").battle_results.bestUnit(arg_146_1)
				local var_146_6 = var_146_4._dpsHoverTarget and var_146_4._dpsHoverTarget.ref
				local var_146_7 = require("src.game.combat").battle_results.isRosterUnit(var_146_6) and var_146_6 or var_146_5

				if var_146_7 and var_0_3 and var_0_3.draw then
					var_0_3.draw(var_146_4, var_146_7, {
						active = true,
						mx = var_146_0,
						my = var_146_1
					})

					local var_146_8 = var_0_3.getHoveredSlot and var_0_3.getHoveredSlot()

					if var_146_8 and var_146_8.imprint then
						var_59_17(arg_146_0, var_146_8.imprint, var_146_8)
					elseif var_0_3 and var_0_3._hoveredRandomOption then
						local var_146_9 = var_0_3._hoveredRandomOption

						var_59_20(arg_146_0, var_146_9.option, var_146_9.anchor, var_146_9.sym)
					elseif var_0_3 and var_0_3._hoveredSkill then
						local var_146_10 = var_0_3._hoveredSkill

						var_59_21(arg_146_0, var_146_10.skill, var_146_10.anchor)
					end

					if var_0_3 and var_0_3._hoveredAbsorbIcon then
						local var_146_11 = var_0_3._hoveredAbsorbIcon

						var_59_16(arg_146_0, var_146_11.stats, var_146_11.anchor)
					end

					if var_0_3 and var_0_3._hoveredFaction then
						local var_146_12 = var_0_3._hoveredFaction

						var_59_19(arg_146_0, var_146_12.factionId, var_146_12.anchor)
					end
				elseif var_0_3 and var_0_3.hidePanelImmediately then
					var_0_3.hidePanelImmediately()
				end
			end

			if arg_146_0.target and arg_146_0.cache and arg_146_0.cache.layout and arg_146_0.state == "VISIBLE" and arg_146_0.fade > 0 then
				var_59_15(arg_146_0)
			end

			var_59_12(arg_146_0)

			return
		end

		if arg_146_1 and arg_146_1.imprintModal and arg_146_1.imprintModal.active then
			local var_146_13 = arg_146_0.ui or arg_146_1 and arg_146_1.ui or _G.ui

			if var_146_13 and var_146_13.virtual then
				local var_146_14 = var_146_13.virtual.W
				local var_146_15 = var_146_13.virtual.H
				local var_146_16 = var_146_13.pauseOverlayState and var_146_13.pauseOverlayState.active

				love.graphics.setColor(0, 0, 0, var_146_16 and 0.45 or 0.65)
				love.graphics.rectangle("fill", 0, 0, var_146_14, var_146_15)

				local var_146_17 = arg_146_1.imprintModal
				local var_146_18 = var_146_17 and (var_146_17.pending or var_146_17.victim and var_0_7(var_146_17.victim))

				if var_146_18 and var_0_3 and var_0_3.showBattlefieldPreview then
					var_0_3.showBattlefieldPreview(var_146_18)
				end

				local var_146_19 = var_146_17 and var_146_17.absorber

				if var_146_19 and var_0_3 and var_0_3.draw then
					var_0_3.draw(var_146_13, var_146_19, {
						active = true,
						modal = var_146_17,
						mx = var_146_0,
						my = var_146_1
					})
				end

				if var_0_3 and var_0_3._hoveredAbsorbIcon then
					local var_146_20 = var_0_3._hoveredAbsorbIcon

					var_59_16(arg_146_0, var_146_20.stats, var_146_20.anchor)
				end

				if var_0_3 and var_0_3.drawBattlefieldPreview then
					local var_146_21 = math.max(0.001, love.timer.getDelta())

					var_0_3.drawBattlefieldPreview(var_146_13, var_146_21, true, var_146_0, var_146_1)
				end

				local var_146_22 = var_0_3.getHoveredSlot and var_0_3.getHoveredSlot()

				if var_146_22 and var_146_22.imprint then
					var_59_17(arg_146_0, var_146_22.imprint, var_146_22)
				elseif var_0_3 and var_0_3._hoveredRandomOption then
					local var_146_23 = var_0_3._hoveredRandomOption

					var_59_20(arg_146_0, var_146_23.option, var_146_23.anchor, var_146_23.sym)
				end

				if var_0_3 and var_0_3._hoveredFaction then
					local var_146_24 = var_0_3._hoveredFaction

					var_59_19(arg_146_0, var_146_24.factionId, var_146_24.anchor)
				end
			end

			var_59_12(arg_146_0)

			return
		end

		if not arg_146_0._outlineDrawnThisFrame then
			local var_146_25 = arg_146_0.locked and arg_146_0.target or arg_146_0.candidate or arg_146_0.target

			if var_59_1(arg_146_1, var_146_25) then
				var_59_7(arg_146_1, var_146_25)

				if arg_146_0.locked and arg_146_0.target and var_146_25 and var_146_25.ref and var_146_25.ref == arg_146_0.target.ref then
					arg_146_0._selectedOutlineDrawnThisFrame = true
				end
			end
		end

		if arg_146_0.locked and arg_146_0.target and not arg_146_0._selectedOutlineDrawnThisFrame and var_59_1(arg_146_1, arg_146_0.target) then
			var_59_7(arg_146_1, arg_146_0.target)

			arg_146_0._selectedOutlineDrawnThisFrame = true
		end

		local var_146_26 = arg_146_0.ui or arg_146_1 and arg_146_1.ui

		if var_146_26 then
			local var_146_27 = arg_146_1 and arg_146_1.mode == "battle"
			local var_146_28

			if var_146_27 then
				var_146_28 = (arg_146_0.locked and arg_146_0.target) ~= nil or arg_146_0.state == "VISIBLE" or arg_146_0.state == "PENDING_HIDE"
			else
				var_146_28 = (arg_146_0.locked and arg_146_0.target) ~= nil or arg_146_0.candidate ~= nil
			end

			local var_146_29 = arg_146_0.locked and arg_146_0.target or arg_146_0.candidate or arg_146_0.target
			local var_146_30 = var_146_29 and var_59_1(arg_146_1, var_146_29) and (var_146_29.ref or var_146_29) or nil

			if arg_146_1 and arg_146_1.awakeningModal then
				var_146_30 = arg_146_1.awakeningModal.unit
				var_146_28 = true
			elseif not var_146_30 and arg_146_1 and arg_146_1.classSelect and arg_146_1.classSelect.ru then
				var_146_30 = arg_146_1.classSelect.ru
				var_146_28 = true
			end

			if var_146_30 then
				local var_146_31 = var_146_28

				if var_146_30.isShadowMinion or var_146_30.isGuardianGolem then
					var_146_31 = false
				end

				local var_146_32 = _G.slot

				if var_146_32 and var_146_32.spin and var_146_32.spin.active then
					var_146_31 = false
				end

				local var_146_33 = var_146_30

				if arg_146_1 and arg_146_1.mode == "battle" and var_146_30.rosterIndex and arg_146_1.rosterUnits then
					var_146_33 = arg_146_1.rosterUnits[var_146_30.rosterIndex] or var_146_30
				end

				var_0_3.draw(var_146_26, var_146_30, {
					active = var_146_31,
					mx = var_146_0,
					my = var_146_1,
					absorbLockUnit = var_146_33,
					battlefield = arg_146_1
				})

				local var_146_34

				if arg_146_1 and arg_146_1.absorbMode then
					if arg_146_0._heldRef then
						var_146_34 = arg_146_0._heldRef
					elseif arg_146_0.locked and arg_146_0.target then
						var_146_34 = arg_146_0.target.ref or arg_146_0.target
					end
				end

				if var_146_34 and not var_146_34.isShadowMinion then
					local var_146_35 = var_0_7(var_146_34)

					if var_146_35 then
						var_0_3.showBattlefieldPreview(var_146_35)
					else
						var_0_3.hideBattlefieldPreview()
					end
				elseif not arg_146_1 or not arg_146_1.imprintModal or not arg_146_1.imprintModal.active then
					var_0_3.hideBattlefieldPreview()
				end

				if var_0_3 and var_0_3._hoveredAbsorbIcon then
					local var_146_36 = var_0_3._hoveredAbsorbIcon

					var_59_16(arg_146_0, var_146_36.stats, var_146_36.anchor)
				end
			else
				var_0_3.draw(var_146_26, nil, {
					active = false,
					mx = var_146_0,
					my = var_146_1
				})

				local var_146_37

				if arg_146_1 and arg_146_1.absorbMode and arg_146_0._heldRef then
					var_146_37 = arg_146_0._heldRef
				end

				if var_146_37 and not var_146_37.isShadowMinion then
					local var_146_38 = var_0_7(var_146_37)

					if var_146_38 then
						var_0_3.showBattlefieldPreview(var_146_38)
					else
						var_0_3.hideBattlefieldPreview()
					end
				elseif not arg_146_1 or not arg_146_1.imprintModal or not arg_146_1.imprintModal.active then
					var_0_3.hideBattlefieldPreview()
				end
			end
		end

		if arg_146_0.locked and arg_146_0.target or arg_146_0.state == "VISIBLE" or arg_146_0.state == "PENDING_HIDE" then
			local var_146_39 = arg_146_0.locked and arg_146_0.target or arg_146_0.candidate or arg_146_0.target
			local var_146_40
			local var_146_41

			if var_146_39 then
				if var_146_39.ref and var_146_39.ref.x and var_146_39.ref.y then
					var_146_40, var_146_41 = var_0_17(var_146_39.ref.x), var_0_17(var_146_39.ref.y)
				elseif var_146_39.x and var_146_39.y then
					var_146_40, var_146_41 = var_0_17(var_146_39.x), var_0_17(var_146_39.y)
				end
			end

			if var_146_39 and var_59_13(var_146_39.ref) then
				local var_146_42 = arg_146_0.ui and arg_146_0.ui.tooltipCfg and arg_146_0.ui.tooltipCfg.magnusOffsetY or arg_146_0.ui and arg_146_0.ui.battle and arg_146_0.ui.battle.magnusTooltipOffsetY
				local var_146_43 = var_146_42 ~= nil and var_146_42 or -10

				var_146_41 = (var_146_41 or 0) + math.floor(var_146_43 + 0.5)
			end

			if var_146_39 and var_146_39.ref and (var_146_39.ref.subclass == "우르간" or var_146_39.ref.subclassName == "우르간" or var_146_39.ref.subclassKey == "우르간" or var_146_39.ref.subclass == "Urgan" or var_146_39.ref.subclassName == "Urgan" or var_146_39.ref.subclassKey == "Urgan") then
				local var_146_44 = arg_146_0.ui and arg_146_0.ui.tooltipCfg and arg_146_0.ui.tooltipCfg.urganOffsetY or arg_146_0.ui and arg_146_0.ui.battle and arg_146_0.ui.battle.urganTooltipOffsetY
				local var_146_45 = var_146_44 ~= nil and var_146_44 or -14

				var_146_41 = (var_146_41 or 0) + math.floor(var_146_45 + 0.5)
			end

			if var_146_39 and (var_59_14(var_146_39.ref) or var_146_39.ref and (var_146_39.ref.subclass == "젠" or var_146_39.ref.subclassName == "젠" or var_146_39.ref.subclassKey == "젠")) then
				var_146_41 = (var_146_41 or 0) - 6
			end

			if var_146_39 and var_146_39.ref and (var_146_39.ref.subclass == "안틀러" or var_146_39.ref.subclassName == "안틀러" or var_146_39.ref.subclassKey == "안틀러") then
				var_146_41 = (var_146_41 or 0) - 10
			end

			if var_146_39 and var_146_39.ref and (var_146_39.ref.subclass == "데스 로드" or var_146_39.ref.subclassName == "데스 로드" or var_146_39.ref.subclassKey == "데스 로드" or var_146_39.ref.subclass == "Death Lord" or var_146_39.ref.subclassKey == "Death Lord") then
				var_146_41 = (var_146_41 or 0) - 14
			end

			if var_146_39 and var_146_39.ref and var_146_39.ref.sym == "D" then
				var_146_41 = (var_146_41 or 0) - 16
			end

			var_59_15(arg_146_0, var_146_40, var_146_41)
		end

		local var_146_46 = arg_146_0.ui or arg_146_1 and arg_146_1.ui

		if var_146_46 and var_0_3 and var_0_3.drawBattlefieldPreview then
			local var_146_47 = love.timer.getDelta()
			local var_146_48 = arg_146_1 and arg_146_1.imprintModal and arg_146_1.imprintModal.active

			var_0_3.drawBattlefieldPreview(var_146_46, var_146_47, var_146_48, var_146_0, var_146_1)
		end

		if var_0_3 and var_0_3.getHoveredSlot then
			local var_146_49 = var_0_3.getHoveredSlot()

			if var_146_49 and var_146_49.imprint then
				var_59_17(arg_146_0, var_146_49.imprint, var_146_49)
			elseif var_0_3 and var_0_3._hoveredRandomOption then
				local var_146_50 = var_0_3._hoveredRandomOption

				var_59_20(arg_146_0, var_146_50.option, var_146_50.anchor, var_146_50.sym)
			elseif var_0_3 and var_0_3._hoveredSkill then
				local var_146_51 = var_0_3._hoveredSkill

				var_59_21(arg_146_0, var_146_51.skill, var_146_51.anchor)
			elseif arg_146_1 and arg_146_1.classSelect and arg_146_1.classSelect._hoveredSkill then
				local var_146_52 = arg_146_1.classSelect._hoveredSkill

				var_59_21(arg_146_0, var_146_52.skill, var_146_52.anchor)
			elseif arg_146_1 and arg_146_1.classSelect and arg_146_1.classSelect._hoveredRandomOption then
				local var_146_53 = arg_146_1.classSelect._hoveredRandomOption

				var_59_20(arg_146_0, var_146_53.option, var_146_53.anchor, var_146_53.sym)
			end
		elseif arg_146_1 and arg_146_1.classSelect and arg_146_1.classSelect._hoveredSkill then
			local var_146_54 = arg_146_1.classSelect._hoveredSkill

			var_59_21(arg_146_0, var_146_54.skill, var_146_54.anchor)
		elseif arg_146_1 and arg_146_1.classSelect and arg_146_1.classSelect._hoveredRandomOption then
			local var_146_55 = arg_146_1.classSelect._hoveredRandomOption

			var_59_20(arg_146_0, var_146_55.option, var_146_55.anchor, var_146_55.sym)
		end

		local var_146_56 = arg_146_1 and arg_146_1.classSelect and arg_146_1.classSelect._hoveredFaction or var_0_3 and var_0_3._hoveredFaction or arg_146_0.ui and arg_146_0.ui._synergyHoveredFaction

		if var_146_56 then
			local var_146_57 = var_146_56

			var_59_19(arg_146_0, var_146_57.factionId, var_146_57.anchor, var_146_57.unitCount)
		end

		var_59_12(arg_146_0)

		if arg_146_1 then
			require("src.ui.flow").awakening.drawInfo(arg_146_0.ui, arg_146_1, arg_146_0)
		end
	end

	function var_59_0.drawClassSelectRandomOptionOverlay(arg_147_0, arg_147_1)
		local var_147_0 = arg_147_1 and arg_147_1.classSelect and arg_147_1.classSelect._hoveredFaction

		if var_147_0 then
			var_59_19(arg_147_0, var_147_0.factionId, var_147_0.anchor)

			return
		end

		if not arg_147_1 or not arg_147_1.classSelect or not arg_147_1.classSelect._hoveredRandomOption then
			return
		end

		local var_147_1 = arg_147_1.classSelect._hoveredRandomOption

		var_59_20(arg_147_0, var_147_1.option, var_147_1.anchor, var_147_1.sym)
	end

	function var_59_0.drawPixelRoundedRect(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4, arg_148_5, arg_148_6)
		return var_59_11(arg_148_0, arg_148_1, arg_148_2, arg_148_3, arg_148_4, arg_148_5, arg_148_6)
	end

	function var_59_0.drawCustom(arg_149_0, arg_149_1, arg_149_2, arg_149_3, arg_149_4, arg_149_5, arg_149_6)
		if not arg_149_0.ui then
			return
		end

		local var_149_0 = arg_149_6 and arg_149_6.assets or arg_149_0.battlefield and arg_149_0.battlefield.assets
		local var_149_1 = arg_149_6 and arg_149_6.statIconTint
		local var_149_2 = arg_149_0.ui.font
		local var_149_3 = 1
		local var_149_4 = 1
		local var_149_5 = 5
		local var_149_6 = 8
		local var_149_7 = math.floor(var_0_36 * 0.75 + 0.5)
		local var_149_8 = 0
		local var_149_9

		if var_149_0 and var_149_0.iconsSmall and arg_149_2 and var_149_0.iconsSmall[arg_149_2] then
			var_149_9 = var_149_0.iconsSmall[arg_149_2]
		elseif var_149_0 and var_149_0.icons and arg_149_2 and var_149_0.icons[arg_149_2] then
			var_149_9 = var_149_0.icons[arg_149_2]
		end

		if var_149_9 then
			var_149_8 = var_149_9:getWidth() + 2
		else
			var_149_8 = 12
		end

		local var_149_10 = {}

		table.insert(var_149_10, {
			isTitle = true,
			value = tostring(arg_149_1 or ""),
			icon = arg_149_2,
			scale = var_149_3,
			titleColor = var_0_34.value
		})

		local function var_149_11(arg_150_0, arg_150_1)
			if not arg_150_1 or arg_150_1 <= 0 then
				return tostring(math.floor((arg_150_0 or 0) + 0.5))
			end

			local var_150_0 = math.max(0, math.floor(arg_150_1 + 0.5))
			local var_150_1 = 10^var_150_0
			local var_150_2 = math.floor((arg_150_0 or 0) * var_150_1 + 0.5) / var_150_1

			return string.format("%." .. tostring(var_150_0) .. "f", var_150_2)
		end

		for iter_149_0, iter_149_1 in ipairs(arg_149_3 or {}) do
			local var_149_12 = var_149_11(iter_149_1.cur, iter_149_1.precision)
			local var_149_13 = var_149_11(iter_149_1.nxt, iter_149_1.precision)
			local var_149_14 = (iter_149_1.nxt or 0) - (iter_149_1.cur or 0)
			local var_149_15 = var_149_14 > 0 and "▲" or var_149_14 < 0 and "▼" or "—"
			local var_149_16 = var_149_11(math.abs(var_149_14), iter_149_1.precision)
			local var_149_17 = var_149_14 == 0 and " -" or string.format("(%s%s) %s", var_149_14 > 0 and "+" or var_149_14 < 0 and "-" or "", var_149_16, var_149_15)
			local var_149_18 = var_149_14 > 0 and {
				0.6,
				1,
				0.6,
				1
			} or var_149_14 < 0 and {
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

			table.insert(var_149_10, {
				labelIcon = var_0_57(iter_149_1.label),
				label = iter_149_1.label,
				parts = {
					cur = var_149_12,
					nxt = var_149_13,
					delta = var_149_17,
					nxtColor = var_149_18,
					deltaColor = var_149_18
				},
				scale = var_149_4
			})
		end

		local var_149_19 = var_0_60(var_149_0, var_149_10, var_149_2, var_149_4, true)
		local var_149_20 = 0
		local var_149_21 = var_149_7

		for iter_149_2, iter_149_3 in ipairs(var_149_10) do
			local var_149_22 = iter_149_3.scale or var_149_4
			local var_149_23 = 0

			if iter_149_3.isTitle and iter_149_3.icon then
				var_149_23 = var_149_23 + var_149_8
			end

			if iter_149_3.label or iter_149_3.labelIcon then
				var_149_23 = var_149_23 + var_149_19
			end

			if iter_149_3.parts then
				var_149_23 = var_149_23 + var_0_19(var_149_2, iter_149_3.parts.cur or "", var_149_22)
				var_149_23 = var_149_23 + var_0_19(var_149_2, " → ", var_149_22)
				var_149_23 = var_149_23 + var_0_19(var_149_2, iter_149_3.parts.nxt or "", var_149_22)
				var_149_23 = var_149_23 + var_0_19(var_149_2, "  ", var_149_22)
				var_149_23 = var_149_23 + var_0_19(var_149_2, iter_149_3.parts.delta or "", var_149_22)
			else
				var_149_23 = var_149_23 + var_0_19(var_149_2, iter_149_3.value or "", var_149_22)
			end

			if var_149_20 < var_149_23 then
				var_149_20 = var_149_23
			end

			var_149_21 = var_149_21 + var_0_22(var_149_2, var_149_22) + (iter_149_3.isTitle and var_149_6 or var_149_5)
		end

		local var_149_24 = var_149_21 + math.floor(2.5) + var_149_7
		local var_149_25 = var_149_20 + var_149_7 * 2
		local var_149_26 = arg_149_0.ui.virtual.W
		local var_149_27 = arg_149_0.ui.virtual.H
		local var_149_28 = arg_149_4 or arg_149_0.mouseX
		local var_149_29 = arg_149_5 or arg_149_0.mouseY
		local var_149_30 = arg_149_0.ui and arg_149_0.ui.classCard and arg_149_0.ui.classCard.tooltip and arg_149_0.ui.classCard.tooltip.gap or nil
		local var_149_31 = arg_149_6 and arg_149_6.gap or var_149_30 or 10
		local var_149_32 = arg_149_0.ui and arg_149_0.ui.cursor and arg_149_0.ui.cursor.spriteW or 16
		local var_149_33 = arg_149_0.ui and arg_149_0.ui.cursor and arg_149_0.ui.cursor.spriteH or 16
		local var_149_34 = arg_149_0.ui and arg_149_0.ui.cursor and arg_149_0.ui.cursor.hotspotX
		local var_149_35 = arg_149_0.ui and arg_149_0.ui.cursor and arg_149_0.ui.cursor.hotspotY

		if var_149_34 == nil then
			var_149_34 = (arg_149_0.ui and arg_149_0.ui.cursor and arg_149_0.ui.cursor.autoCenter) == true and math.floor(var_149_32 / 2) or 0
		end

		if var_149_35 == nil then
			var_149_35 = (arg_149_0.ui and arg_149_0.ui.cursor and arg_149_0.ui.cursor.autoCenter) == true and math.floor(var_149_33 / 2) or 0
		end

		local var_149_36 = var_149_28 - var_149_34
		local var_149_37 = var_149_29 - var_149_35
		local var_149_38 = var_149_36 + var_149_32
		local var_149_39 = var_149_37 + var_149_33
		local var_149_40 = var_149_26 >= var_149_38 + var_149_31 + var_149_25
		local var_149_41 = var_149_37 - var_149_31 - var_149_24 >= 0
		local var_149_42 = var_149_40 and var_149_38 + var_149_31 or var_149_36 - var_149_31 - var_149_25
		local var_149_43 = var_149_41 and var_149_37 - var_149_31 - var_149_24 or var_149_39 + var_149_31

		if var_149_42 < 0 then
			var_149_42 = 0
		end

		if var_149_26 < var_149_42 + var_149_25 then
			var_149_42 = var_149_26 - var_149_25
		end

		if var_149_43 < 0 then
			var_149_43 = 0
		end

		if var_149_27 < var_149_43 + var_149_24 then
			var_149_43 = var_149_27 - var_149_24
		end

		local var_149_44, var_149_45 = var_0_17(var_149_42), var_0_17(var_149_43)
		local var_149_46 = {
			var_0_34.boxFill[1],
			var_0_34.boxFill[2],
			var_0_34.boxFill[3],
			var_0_34.boxFill[4] or 0.8
		}

		var_59_11(arg_149_0, var_149_44, var_149_45, var_149_25, var_149_24, var_149_46, nil)
		love.graphics.setFont(var_149_2)

		local var_149_47 = var_0_17(var_149_45 + var_149_7)
		local var_149_48

		for iter_149_4, iter_149_5 in ipairs(var_149_10) do
			local var_149_49 = iter_149_5.scale or var_149_4
			local var_149_50 = var_0_17(var_149_44 + var_149_7)

			if iter_149_5.isTitle then
				if iter_149_5.icon and var_149_0 then
					local var_149_51 = var_149_0.iconsSmall and var_149_0.iconsSmall[iter_149_5.icon] or var_149_0.icons and var_149_0.icons[iter_149_5.icon]

					if var_149_51 then
						if arg_149_0 and arg_149_0.target and arg_149_0.target.ref and arg_149_0.target.ref.jackpot5th or arg_149_0 and arg_149_0.candidate and arg_149_0.candidate.ref and arg_149_0.candidate.ref.jackpot5th or false then
							local var_149_52 = var_0_12()

							if var_149_52 then
								love.graphics.setShader(var_149_52)
							end

							love.graphics.setColor(1, 1, 1, 1)
							love.graphics.draw(var_149_51, var_149_50, var_149_47)

							if var_149_52 then
								love.graphics.setShader()
							end

							local var_149_53 = arg_149_0.ui and arg_149_0.ui.tooltipCfg and arg_149_0.ui.tooltipCfg.iconFoil or arg_149_0.ui and arg_149_0.ui.tooltip and arg_149_0.ui.tooltip.iconFoil or arg_149_0.ui and arg_149_0.ui.battle and (arg_149_0.ui.battle.jackpotFoil or arg_149_0.ui.battle.jackpotRainbow) or {}
							local var_149_54 = var_149_53.alpha ~= nil and var_149_53.alpha or 0.32

							if var_149_54 > 0 then
								local var_149_55 = var_0_14()

								love.graphics.setShader(var_149_55)

								local var_149_56 = (var_149_53.angleDeg or 20) * math.pi / 180
								local var_149_57 = math.cos(var_149_56)
								local var_149_58 = math.sin(var_149_56)

								var_149_55:send("u_time", love.timer.getTime() % 10000)
								var_149_55:send("u_alpha", var_149_54)
								var_149_55:send("u_dir", {
									var_149_57,
									var_149_58
								})
								var_149_55:send("u_cycle", var_149_53.cycleSec or 4)
								var_149_55:send("u_scale", var_149_53.scale or 2.5)

								local var_149_59 = var_149_53.grain or {}
								local var_149_60 = var_149_53.film or {}

								var_149_55:send("u_grainScale", var_149_59.scale or 3)
								var_149_55:send("u_grainAmp", var_149_59.amp or 0.2)
								var_149_55:send("u_filmFreq", var_149_60.freq or 2)
								var_149_55:send("u_filmAmp", var_149_60.amp or 0.25)
								var_149_55:send("u_specular", var_149_53.specular or 0.35)
								var_149_55:send("u_fresnelPow", var_149_53.fresnelPow or 2.5)
								var_149_55:send("u_frameUV", {
									0,
									0,
									1,
									1
								})
								var_149_55:send("u_colorGain", var_149_53.colorGain or 1.85)
								var_149_55:send("u_saturation", var_149_53.saturation or 1.5)
								var_149_55:send("u_mixBP", var_149_53.mixBP or 0.32)
								love.graphics.setColor(1, 1, 1, 1)

								local var_149_61 = love.graphics.getBlendMode()

								love.graphics.setBlendMode("alpha", "alphamultiply")
								love.graphics.draw(var_149_51, var_149_50, var_149_47)
								love.graphics.setBlendMode(var_149_61)
								love.graphics.setShader()
							end
						else
							local var_149_62 = var_0_12()

							if var_149_62 then
								love.graphics.setShader(var_149_62)
							end

							love.graphics.setColor(1, 1, 1, 1)
							love.graphics.draw(var_149_51, var_149_50, var_149_47)

							if var_149_62 then
								love.graphics.setShader()
							end
						end

						var_149_50 = var_149_50 + var_149_8
					end
				end

				local var_149_63 = iter_149_5.titleColor or var_0_34.value

				love.graphics.setColor(var_149_63[1], var_149_63[2], var_149_63[3], var_149_63[4] or 1)
				love.graphics.print(iter_149_5.value or "", var_149_50, var_149_47, 0, var_149_49, var_149_49)
			else
				var_0_61(arg_149_0, var_149_0, iter_149_5, var_149_50, var_149_47, var_149_49, var_149_2, 1, 1, var_149_1)

				local var_149_64 = var_149_50 + var_149_19

				if iter_149_5.parts then
					local var_149_65 = iter_149_5.parts.cur or ""
					local var_149_66 = iter_149_5.parts.nxt or ""
					local var_149_67 = iter_149_5.parts.delta or ""
					local var_149_68 = iter_149_5.parts.nxtColor or var_0_34.value
					local var_149_69 = iter_149_5.parts.deltaColor or var_149_68

					love.graphics.setColor(var_0_34.value[1], var_0_34.value[2], var_0_34.value[3], var_0_34.value[4] or 1)
					love.graphics.print(var_149_65, var_0_17(var_149_64), var_149_47, 0, var_149_49, var_149_49)

					local var_149_70 = var_149_64 + var_0_19(var_149_2, var_149_65, var_149_49)
					local var_149_71 = " → "

					love.graphics.print(var_149_71, var_0_17(var_149_70), var_149_47, 0, var_149_49, var_149_49)

					local var_149_72 = var_149_70 + var_0_19(var_149_2, var_149_71, var_149_49)

					love.graphics.setColor(var_149_68[1], var_149_68[2], var_149_68[3], var_149_68[4] or 1)
					love.graphics.print(var_149_66, var_0_17(var_149_72), var_149_47, 0, var_149_49, var_149_49)

					local var_149_73 = var_149_72 + var_0_19(var_149_2, var_149_66, var_149_49)
					local var_149_74 = "  "

					love.graphics.setColor(var_0_34.value[1], var_0_34.value[2], var_0_34.value[3], var_0_34.value[4] or 1)
					love.graphics.print(var_149_74, var_0_17(var_149_73), var_149_47, 0, var_149_49, var_149_49)

					local var_149_75 = var_149_73 + var_0_19(var_149_2, var_149_74, var_149_49)

					love.graphics.setColor(var_149_69[1], var_149_69[2], var_149_69[3], var_149_69[4] or 1)
					love.graphics.print(var_149_67, var_0_17(var_149_75), var_149_47, 0, var_149_49, var_149_49)
				end
			end

			local var_149_76 = iter_149_5.isTitle and var_149_6 or var_149_5

			var_149_47 = var_0_17(var_149_47 + var_0_22(var_149_2, var_149_49) + var_149_76)
		end

		love.graphics.setColor(1, 1, 1, 1)
	end

	return var_59_0
end

function var_0_0.drawInlineText(arg_151_0, arg_151_1, arg_151_2, arg_151_3, arg_151_4, arg_151_5, arg_151_6, arg_151_7, arg_151_8)
	arg_151_5 = arg_151_5 or 1
	arg_151_8 = arg_151_8 or {}

	local var_151_0 = love.graphics.getFont()
	local var_151_1 = math.floor(var_151_0:getHeight() * arg_151_5 + (arg_151_8.lineGapPx or 3) + 0.5)
	local var_151_2 = {
		font = var_151_0,
		scale = arg_151_5,
		assets = arg_151_0,
		bodyColor = arg_151_6 or {
			1,
			1,
			1,
			1
		},
		numberColor = arg_151_8.numberColor or arg_151_6 or {
			1,
			1,
			1,
			1
		},
		outline = arg_151_8.outline or false,
		numberFilter = arg_151_8.numberFilter
	}

	if _G.__slotWrapRichTextWithStatIcons and _G.__slotDrawRichTextWithStatIcons then
		local var_151_3 = __slotWrapRichTextWithStatIcons(tostring(arg_151_1 or ""), arg_151_4, var_151_2)

		if not arg_151_7 then
			for iter_151_0, iter_151_1 in ipairs(var_151_3) do
				__slotDrawRichTextWithStatIcons(iter_151_1, arg_151_2, arg_151_3 + (iter_151_0 - 1) * var_151_1, var_151_2)
			end
		end

		return #var_151_3 * var_151_1
	end

	local function var_151_4(arg_152_0, arg_152_1, arg_152_2, arg_152_3)
		local var_152_0 = arg_152_1
		local var_152_1 = 1

		while var_152_1 <= #arg_152_0 do
			local var_152_2, var_152_3, var_152_4 = arg_152_0:find("%{([%w_]+)%.png%}", var_152_1)
			local var_152_5 = arg_152_0:sub(var_152_1, var_152_2 and var_152_2 - 1 or #arg_152_0)

			if arg_152_3 then
				love.graphics.print(var_152_5, math.floor(var_152_0), math.floor(arg_152_2), 0, arg_151_5, arg_151_5)
			end

			var_152_0 = var_152_0 + var_151_0:getWidth(var_152_5) * arg_151_5

			if not var_152_2 then
				break
			end

			local var_152_6 = var_0_58(arg_151_0, var_152_4)

			if var_152_6 then
				if arg_152_3 then
					love.graphics.draw(var_152_6, math.floor(var_152_0), math.floor(arg_152_2), 0, arg_151_5, arg_151_5)
				end

				var_152_0 = var_152_0 + (var_152_6:getWidth() + 2) * arg_151_5
			else
				local var_152_7 = arg_152_0:sub(var_152_2, var_152_3)

				if arg_152_3 then
					love.graphics.print(var_152_7, var_152_0, arg_152_2, 0, arg_151_5, arg_151_5)
				end

				var_152_0 = var_152_0 + var_151_0:getWidth(var_152_7) * arg_151_5
			end

			var_152_1 = var_152_3 + 1

			if var_152_6 then
				while arg_152_0:sub(var_152_1, var_152_1):match("%s") do
					var_152_1 = var_152_1 + 1
				end
			end
		end

		return var_152_0 - arg_152_1
	end

	local var_151_5 = require("src.ui.widgets").text_wrap.wrap(tostring(arg_151_1 or ""), arg_151_4, function(arg_153_0)
		return var_151_4(arg_153_0, 0, 0, false)
	end, true)

	if not arg_151_7 then
		love.graphics.setColor(unpack(arg_151_6 or {
			1,
			1,
			1,
			1
		}))

		for iter_151_2, iter_151_3 in ipairs(var_151_5) do
			var_151_4(iter_151_3, arg_151_2, arg_151_3 + (iter_151_2 - 1) * var_151_1, true)
		end
	end

	return #var_151_5 * var_151_1
end

return var_0_0
