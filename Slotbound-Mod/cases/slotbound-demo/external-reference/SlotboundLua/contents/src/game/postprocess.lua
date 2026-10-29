local var_0_0 = {}
local var_0_1 = love.graphics.newShader("    extern vec2 screenSize;\n    \n    // Config\n    const float aberrationStrength = 1.5; // Pixels of shift\n    const float vignetteStrength = 0.35;\n    const float vignetteSize = 0.65;\n    const float contrast = 1.05;\n    const float saturation = 1.1;\n    const float brightness = 1.0;\n    \n    vec3 adjustContrast(vec3 color, float value) {\n        return 0.5 + (color - 0.5) * value;\n    }\n    \n    vec3 adjustSaturation(vec3 color, float value) {\n        float gray = dot(color, vec3(0.299, 0.587, 0.114));\n        return mix(vec3(gray), color, value);\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        // 1. Chromatic Aberration\n        // Shift Red and Blue channels slightly in opposite directions from center\n        vec2 distFromCenter = tc - 0.5;\n        \n        // Calculate shift amount based on distance from center (more at edges)\n        vec2 shift = distFromCenter * (aberrationStrength / screenSize);\n        \n        float r = Texel(tex, tc - shift).r;\n        float g = Texel(tex, tc).g;\n        float b = Texel(tex, tc + shift).b;\n        float a = Texel(tex, tc).a;\n        \n        vec3 col = vec3(r, g, b);\n        \n        // 2. Color Grading\n        col = col * brightness;\n        col = adjustContrast(col, contrast);\n        col = adjustSaturation(col, saturation);\n        \n        // 3. Vignette\n        float len = length(distFromCenter);\n        float vig = smoothstep(vignetteSize, vignetteSize - vignetteStrength, len);\n        col *= vig;\n        \n        // 4. Subtle Scanlines (Optional, very faint)\n        // float scanline = sin(sc.y * 0.5) * 0.04;\n        // col -= scanline;\n\n        return vec4(col, a) * color;\n    }\n")

function var_0_0.draw(arg_1_0)
	local var_1_0, var_1_1 = love.graphics.getDimensions()

	love.graphics.setShader(var_0_1)
	var_0_1:send("screenSize", {
		var_1_0,
		var_1_1
	})
	love.graphics.setColor(1, 1, 1, 1)
	love.graphics.draw(arg_1_0, 0, 0)
	love.graphics.setShader()
end

return var_0_0
