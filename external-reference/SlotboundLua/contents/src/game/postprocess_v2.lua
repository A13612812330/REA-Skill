local var_0_0 = {}
local var_0_1 = love.graphics.newShader("    extern vec2 screenSize;\n    extern number time;\n    \n    // Config\n    const float aberrationStrength = 1.2; // Pixels of shift\n    const float contrast = 1.05;\n    const float saturation = 1.1;\n    const float brightness = 1.0;\n    const float grainStrength = 0.03;\n    \n    vec3 adjustContrast(vec3 color, float value) {\n        return 0.5 + (color - 0.5) * value;\n    }\n    \n    vec3 adjustSaturation(vec3 color, float value) {\n        float gray = dot(color, vec3(0.299, 0.587, 0.114));\n        return mix(vec3(gray), color, value);\n    }\n    \n    float hash(vec2 p) {\n        return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        // 1. Chromatic Aberration\n        // Shift Red and Blue channels slightly in opposite directions from center\n        vec2 distFromCenter = tc - 0.5;\n        \n        // Calculate shift amount based on distance from center (more at edges)\n        vec2 shift = distFromCenter * (aberrationStrength / screenSize);\n        \n        float r = Texel(tex, tc - shift).r;\n        float g = Texel(tex, tc).g;\n        float b = Texel(tex, tc + shift).b;\n        float a = Texel(tex, tc).a;\n        \n        vec3 col = vec3(r, g, b);\n        \n        // 2. Color Grading\n        col = col * brightness;\n        col = adjustContrast(col, contrast);\n        col = adjustSaturation(col, saturation);\n        \n        // 3. Subtle Film Grain\n        float noise = hash(sc + time * 10.0);\n        col += (noise - 0.5) * grainStrength;\n\n        return vec4(col, a) * color;\n    }\n")

function var_0_0.draw(arg_1_0)
	local var_1_0, var_1_1 = love.graphics.getDimensions()

	love.graphics.setShader(var_0_1)
	var_0_1:send("screenSize", {
		var_1_0,
		var_1_1
	})
	var_0_1:send("time", love.timer.getTime() % 10000)
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(arg_1_0, 0, 0)
	love.graphics.setShader()
end

return var_0_0
