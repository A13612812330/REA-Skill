local var_0_0 = {}
local var_0_1 = love.graphics.newShader("    extern vec2 screenSize;\n    \n    // Settings\n    const float bloomThreshold = 0.6;\n    const float bloomIntensity = 0.6;\n    const float bloomSpread = 1.5;\n    \n    vec3 getBloom(Image tex, vec2 uv, vec2 pixelSize) {\n        vec3 sum = vec3(0.0);\n        // 4-tap box blur for bloom\n        vec2 off = pixelSize * bloomSpread;\n        \n        sum += Texel(tex, uv + vec2(-off.x, -off.y)).rgb;\n        sum += Texel(tex, uv + vec2( off.x, -off.y)).rgb;\n        sum += Texel(tex, uv + vec2(-off.x,  off.y)).rgb;\n        sum += Texel(tex, uv + vec2( off.x,  off.y)).rgb;\n        \n        sum *= 0.25;\n        \n        // High-pass filter (only bright things glow)\n        float brightness = max(sum.r, max(sum.g, sum.b));\n        if (brightness < bloomThreshold) return vec3(0.0);\n        \n        return sum * bloomIntensity;\n    }\n\n    vec4 effect(vec4 color, Image tex, vec2 tc, vec2 sc) {\n        vec4 source = Texel(tex, tc);\n        vec3 rgb = source.rgb;\n        \n        // 1. Bloom (Glow)\n        // Adds a soft light to bright areas\n        vec2 pixelSize = 1.0 / screenSize;\n        rgb += getBloom(tex, tc, pixelSize);\n        \n        // 2. Cinematic Color Grading\n        // Convert to grayscale for luma\n        float luma = dot(rgb, vec3(0.299, 0.587, 0.114));\n        \n        // Shadow Tint (Deep Purple/Blue - fits the slot theme)\n        vec3 shadowTint = vec3(0.02, 0.0, 0.05);\n        // Highlight Tint (Warm Gold - fits the coin/rich theme)\n        vec3 highlightTint = vec3(0.05, 0.04, 0.0);\n        \n        // Apply tints based on luma\n        rgb += mix(shadowTint, highlightTint, luma);\n        \n        // 3. Contrast & Saturation Boost\n        // Saturation\n        rgb = mix(vec3(luma), rgb, 1.25);\n        // Contrast (S-Curve)\n        rgb = (rgb - 0.5) * 1.15 + 0.5;\n        \n        return vec4(rgb, source.a) * color;\n    }\n")

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
