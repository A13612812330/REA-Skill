local var_0_0 = {}
local var_0_1 = "    extern number time;\n    \n    // Settings\n    const float VIGNETTE_INTENSITY = 0.15;\n    const float VIGNETTE_ROUNDNESS = 0.5;\n    const float GRAIN_INTENSITY = 0.02;\n    const float CONTRAST = 1.0;\n    const float SATURATION = 1.0;\n    const float BRIGHTNESS = 1.0;\n    \n    // Interleaved gradient noise avoids a transcendental sin() for every\n    // physical screen pixel. At 4K/240 Hz that old hash alone executed almost\n    // two billion expensive shader operations per second.\n    float random(vec2 pixel, float seed) {\n        return fract(52.9829189 * fract(\n            dot(pixel, vec2(0.06711056, 0.00583715)) + seed));\n    }\n\n    // Color grading: Very subtle adjustment to unify tones\n    vec3 colorGrade(vec3 color) {\n        // Extremely subtle warm tint for a polished feel, but barely noticeable\n        vec3 tint = vec3(1.01, 1.005, 1.0);\n        return color * tint;\n    }\n\n    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {\n        // 1. Sample the texture (Clean fetch)\n        vec4 texColor = Texel(texture, texture_coords);\n        vec3 rgb = texColor.rgb;\n\n        // 2. Contrast & Brightness\n        rgb = (rgb - 0.5) * CONTRAST + 0.5;\n        rgb = rgb * BRIGHTNESS;\n\n        // 3. Saturation\n        float gray = dot(rgb, vec3(0.299, 0.587, 0.114));\n        rgb = mix(vec3(gray), rgb, SATURATION);\n\n        // 4. Color Grading (Subtle)\n        rgb = colorGrade(rgb);\n\n        // 5. Vignette (Soft edges)\n        vec2 uv = texture_coords * (1.0 - texture_coords.yx);\n        float vig = uv.x * uv.y * 15.0;\n        vig = pow(vig, VIGNETTE_ROUNDNESS);\n        rgb *= mix(1.0, vig, VIGNETTE_INTENSITY);\n\n        // 6. Film Grain (Dithering)\n        float noise = random(screen_coords, fract(time * 0.013));\n        rgb += (noise - 0.5) * GRAIN_INTENSITY;\n\n        return vec4(rgb, texColor.a) * color;\n    }\n"
local var_0_2
local var_0_3 = 0
local var_0_4 = false

function var_0_0.load()
	var_0_4 = false

	local var_1_0, var_1_1 = pcall(love.graphics.newShader, var_0_1)

	var_0_2 = var_1_0 and var_1_1 or nil

	if not var_0_2 then
		var_0_4 = true
	end

	return var_0_2 ~= nil
end

function var_0_0.update(arg_2_0)
	var_0_3 = var_0_3 + arg_2_0

	if var_0_3 > 1000 then
		var_0_3 = var_0_3 % 1000
	end
end

local function var_0_5(arg_3_0)
	love.graphics.setShader()
	love.graphics.setColor(1, 1, 1, 1)

	local var_3_0, var_3_1 = arg_3_0:getFilter()

	arg_3_0:setFilter("nearest", "nearest")
	love.graphics.draw(arg_3_0, 0, 0)
	arg_3_0:setFilter(var_3_0, var_3_1)
end

function var_0_0.draw(arg_4_0)
	if not var_0_2 and not var_0_4 then
		var_0_0.load()
	end

	if not var_0_2 then
		var_0_5(arg_4_0)

		return
	end

	if not pcall(var_0_2.send, var_0_2, "time", var_0_3) then
		var_0_2 = nil
		var_0_4 = true

		var_0_5(arg_4_0)

		return
	end

	love.graphics.setShader(var_0_2)
	love.graphics.setColor(1, 1, 1, 1)

	local var_4_0, var_4_1 = arg_4_0:getFilter()

	arg_4_0:setFilter("nearest", "nearest")
	love.graphics.draw(arg_4_0, 0, 0)
	arg_4_0:setFilter(var_4_0, var_4_1)
	love.graphics.setShader()
end

return var_0_0
